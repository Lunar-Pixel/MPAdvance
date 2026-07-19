	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .text
	.ARM
	.syntax unified

	arm_func_start sub_08000228
sub_08000228: @ 0x08000228
	push {r8, sb, sl, fp}
	mov ip, #0x4000000
	ldr fp, _08000264 @ =0x03006210
	add sl, fp, #0x28
	mov sb, #1
	mov r8, #0
	strb r8, [ip, #0x208]
	ldm sl, {r0, r1}
	stm sl!, {r1}
	stm sl!, {r0}
	ldrb r0, [fp, #5]
	strb r8, [fp, #5]
	strb sb, [ip, #0x208]
	pop {r8, sb, sl, fp}
	bx lr
	.align 2, 0
_08000264: .4byte 0x03006210

	thumb_func_start sub_08000268
sub_08000268: @ 0x08000268
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #8
	adds r6, r0, #0
	adds r5, r1, #0
	adds r4, r2, #0
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	ldr r0, _08000308 @ =0x030013F0
	mov r8, r0
	movs r0, #0
	mov r1, r8
	movs r2, #8
	str r3, [sp, #4]
	bl sub_08007EFC
	mov r1, r8
	ldrb r0, [r1]
	movs r1, #1
	orrs r0, r1
	mov r1, r8
	strb r0, [r1]
	lsls r0, r5, #0xe
	mov sb, r0
	lsls r4, r4, #5
	movs r2, #0xc0
	lsls r2, r2, #0x13
	adds r4, r4, r2
	add sb, r4
	mov r4, sb
	str r4, [r1, #4]
	ldr r0, _0800030C @ =0x030024E0
	lsls r6, r6, #1
	adds r0, #2
	adds r6, r6, r0
	lsls r5, r5, #2
	movs r0, #0xc
	ands r5, r0
	ldr r3, [sp, #4]
	lsls r0, r3, #8
	movs r4, #0xf8
	lsls r4, r4, #5
	adds r1, r4, #0
	ands r0, r1
	orrs r5, r0
	movs r1, #0
	strh r5, [r6]
	ldr r0, _08000310 @ =0x050001FE
	strh r1, [r0]
	ldr r0, _08000314 @ =0x08076AE8
	lsls r3, r3, #0xb
	adds r3, r3, r2
	movs r2, #0x80
	lsls r2, r2, #2
	adds r1, r3, #0
	bl CpuFastSet
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [sp]
	ldr r2, _08000318 @ =0x01000190
	mov r0, sp
	mov r1, sb
	bl CpuFastSet
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08000308: .4byte 0x030013F0
_0800030C: .4byte 0x030024E0
_08000310: .4byte 0x050001FE
_08000314: .4byte 0x08076AE8
_08000318: .4byte 0x01000190

	thumb_func_start sub_0800031C
sub_0800031C: @ 0x0800031C
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #8
	adds r6, r0, #0
	adds r5, r1, #0
	adds r4, r2, #0
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	ldr r0, _080003BC @ =0x030013F0
	mov r8, r0
	movs r0, #0
	mov r1, r8
	movs r2, #8
	str r3, [sp, #4]
	bl sub_08007EFC
	mov r0, r8
	ldrb r1, [r0]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	mov r1, r8
	strb r0, [r1]
	lsls r0, r5, #0xe
	mov sb, r0
	lsls r4, r4, #5
	movs r2, #0xc0
	lsls r2, r2, #0x13
	adds r4, r4, r2
	add sb, r4
	mov r4, sb
	str r4, [r1, #4]
	ldr r0, _080003C0 @ =0x030024E0
	lsls r6, r6, #1
	adds r0, #2
	adds r6, r6, r0
	lsls r5, r5, #2
	movs r0, #0xc
	ands r5, r0
	ldr r3, [sp, #4]
	lsls r0, r3, #8
	movs r4, #0xf8
	lsls r4, r4, #5
	adds r1, r4, #0
	ands r0, r1
	orrs r5, r0
	movs r4, #0
	strh r5, [r6]
	ldr r0, _080003C4 @ =0x050001FE
	strh r4, [r0]
	ldr r0, _080003C8 @ =0x08076AE8
	lsls r3, r3, #0xb
	adds r3, r3, r2
	movs r2, #0x80
	lsls r2, r2, #2
	adds r1, r3, #0
	bl CpuFastSet
	str r4, [sp]
	ldr r2, _080003CC @ =0x01000190
	mov r0, sp
	mov r1, sb
	bl CpuFastSet
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080003BC: .4byte 0x030013F0
_080003C0: .4byte 0x030024E0
_080003C4: .4byte 0x050001FE
_080003C8: .4byte 0x08076AE8
_080003CC: .4byte 0x01000190

	thumb_func_start sub_080003D0
sub_080003D0: @ 0x080003D0
	push {r4, lr}
	ldr r4, _080003E8 @ =0x030013F0
	ldrb r1, [r4]
	lsls r0, r1, #0x1d
	lsrs r0, r0, #0x1e
	cmp r0, #1
	beq _0800040C
	cmp r0, #1
	bgt _080003EC
	cmp r0, #0
	beq _080003F2
	b _08000430
	.align 2, 0
_080003E8: .4byte 0x030013F0
_080003EC:
	cmp r0, #2
	beq _0800042C
	b _08000430
_080003F2:
	ldr r0, _08000408 @ =sub_08000438
	movs r1, #0xff
	bl sub_08009460
	ldrb r1, [r4]
	movs r0, #7
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #2
	b _08000422
	.align 2, 0
_08000408: .4byte sub_08000438
_0800040C:
	lsls r0, r1, #0x1c
	cmp r0, #0
	bge _08000430
	ldr r0, _08000428 @ =sub_08000438
	bl sub_080094F4
	ldrb r1, [r4]
	movs r0, #7
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #4
_08000422:
	orrs r0, r1
	strb r0, [r4]
	b _08000430
	.align 2, 0
_08000428: .4byte sub_08000438
_0800042C:
	movs r0, #1
	b _08000432
_08000430:
	movs r0, #0
_08000432:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_08000438
sub_08000438: @ 0x08000438
	push {r4, r5, r6, lr}
	ldr r6, _08000484 @ =0x030013F0
	ldr r0, [r6]
	lsls r1, r0, #0xc
	lsrs r1, r1, #0x18
	adds r1, #1
	movs r5, #0xff
	ands r1, r5
	lsls r2, r1, #0xc
	ldr r4, _08000488 @ =0xFFF00FFF
	adds r3, r4, #0
	ands r3, r0
	orrs r3, r2
	str r3, [r6]
	cmp r1, #0
	beq _080004C8
	ands r3, r4
	str r3, [r6]
	ldrh r3, [r6]
	lsls r1, r3, #0x14
	lsrs r1, r1, #0x18
	adds r1, #1
	movs r2, #0xff
	adds r0, r1, #0
	ands r0, r2
	lsls r0, r0, #4
	ldr r2, _0800048C @ =0xFFFFF00F
	ands r2, r3
	orrs r2, r0
	strh r2, [r6]
	ands r1, r5
	cmp r1, #0x40
	bls _08000490
	ldrb r0, [r6]
	movs r1, #8
	orrs r0, r1
	strb r0, [r6]
	b _080004C8
	.align 2, 0
_08000484: .4byte 0x030013F0
_08000488: .4byte 0xFFF00FFF
_0800048C: .4byte 0xFFFFF00F
_08000490:
	lsls r0, r2, #0x14
	lsrs r4, r0, #0x18
	ldrb r0, [r6]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _080004A0
	movs r0, #0x41
	subs r4, r0, r4
_080004A0:
	movs r5, #0
	adds r2, r4, #0
	cmp r2, #0
	blt _080004C8
_080004A8:
	lsls r0, r2, #5
	ldr r1, [r6, #4]
	adds r1, r1, r0
	subs r0, r4, r2
	lsls r0, r0, #5
	ldr r2, _080004D0 @ =0x08076FE8
	adds r0, r0, r2
	movs r2, #8
	bl CpuFastSet
	adds r5, #1
	cmp r5, #0xf
	bgt _080004C8
	subs r2, r4, r5
	cmp r2, #0
	bge _080004A8
_080004C8:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080004D0: .4byte 0x08076FE8

	thumb_func_start sub_080004D4
sub_080004D4: @ 0x080004D4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	adds r7, r1, #0
	adds r6, r2, #0
	cmp r0, #0
	beq _080005A4
	ldr r1, _08000548 @ =0x030013F8
	movs r0, #0
	strb r0, [r1]
	adds r5, r1, #0
_080004EC:
	ldrb r0, [r5]
	adds r1, r0, #1
	strb r1, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	add r0, r8
	ldr r2, [r0]
	str r2, [r5, #4]
	cmp r7, #0
	beq _08000516
	movs r0, #6
	ldrsb r0, [r2, r0]
	cmp r0, #0
	blt _08000516
	ldrb r1, [r7, #0x10]
	cmp r1, r0
	beq _08000516
	ldrb r1, [r2, #6]
	adds r0, r7, #0
	bl sub_08009AFC
_08000516:
	cmp r6, #0
	beq _08000532
	ldr r2, [r5, #4]
	movs r0, #7
	ldrsb r0, [r2, r0]
	cmp r0, #0
	blt _08000532
	ldrb r1, [r6, #0x10]
	cmp r1, r0
	beq _08000532
	ldrb r1, [r2, #7]
	adds r0, r6, #0
	bl sub_08009AFC
_08000532:
	ldr r4, _08000548 @ =0x030013F8
	ldr r1, [r4, #4]
	ldrb r0, [r1, #4]
	cmp r0, #0
	blt _08000590
	cmp r0, #1
	ble _0800054C
	cmp r0, #2
	beq _08000578
	b _08000590
	.align 2, 0
_08000548: .4byte 0x030013F8
_0800054C:
	movs r0, #5
	ldrsb r0, [r1, r0]
	cmp r0, #0
	blt _0800055C
	ldrb r0, [r1, #5]
	bl sub_08006744
	b _08000560
_0800055C:
	bl sub_080067F0
_08000560:
	ldr r0, [r5, #4]
	ldr r0, [r0]
	bl sub_080062D0
	ldr r1, [r5, #4]
	ldrb r0, [r1, #4]
	cmp r0, #1
	bne _08000590
	ldrh r0, [r1, #8]
	bl ProcSleep_08002B98
	b _08000590
_08000578:
	bl sub_08005A94
	strb r0, [r4, #1]
	bl sub_08005AB0
	ldr r0, [r4, #4]
	ldr r0, [r0]
	bl sub_0800648C
	ldrb r0, [r4, #1]
	bl sub_08005A88
_08000590:
	ldrb r0, [r5]
	lsls r0, r0, #2
	add r0, r8
	ldr r0, [r0]
	cmp r0, #0
	beq _080005A4
	movs r0, #1
	bl ProcSleep_08002B98
	b _080004EC
_080005A4:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080005B0
sub_080005B0: @ 0x080005B0
	adds r2, r0, #0
	movs r1, #0
	strb r1, [r2, #0x1e]
	strb r1, [r2, #0x18]
	strb r1, [r2, #0x1d]
	adds r3, r2, #0
	adds r3, #0x4a
	movs r0, #0xf
	strb r0, [r3]
	adds r0, r2, #0
	adds r0, #0x48
	strb r1, [r0]
	strh r1, [r2, #0x16]
	ldr r0, _080005DC @ =0x04000134
	strh r1, [r0]
	ldr r2, _080005E0 @ =0x04000128
	ldr r3, _080005E4 @ =0x00002003
	adds r0, r3, #0
	strh r0, [r2]
	ldr r0, _080005E8 @ =0x0400012A
	strh r1, [r0]
	bx lr
	.align 2, 0
_080005DC: .4byte 0x04000134
_080005E0: .4byte 0x04000128
_080005E4: .4byte 0x00002003
_080005E8: .4byte 0x0400012A

	thumb_func_start sub_080005EC
sub_080005EC: @ 0x080005EC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	bl sub_08000B10
	cmp r0, #0
	beq _08000602
	b _080009CA
_08000602:
	adds r0, r7, #0
	adds r0, #0x4a
	ldrb r1, [r0]
	mov sl, r0
	cmp r1, #0xf
	bls _08000616
	subs r0, r1, #1
	mov r1, sl
	strb r0, [r1]
	b _080009CA
_08000616:
	adds r1, r7, #0
	adds r1, #0x48
	ldrb r0, [r1]
	cmp r0, #0
	beq _08000640
	movs r0, #0
	strb r0, [r1]
	ldr r0, _0800063C @ =0x04000128
	ldrh r0, [r0]
	movs r5, #0xfc
	ands r5, r0
	cmp r5, #8
	beq _08000640
	adds r0, r7, #0
	bl sub_080005B0
	movs r0, #8
	eors r0, r5
	b _080009CC
	.align 2, 0
_0800063C: .4byte 0x04000128
_08000640:
	ldrb r0, [r7, #0x18]
	cmp r0, #0xdf
	bls _08000692
	adds r0, r7, #0
	bl sub_08000B24
	adds r5, r0, #0
	cmp r5, #0
	beq _08000654
	b _080009CC
_08000654:
	adds r0, r7, #0
	adds r0, #0x4b
	ldrb r0, [r0]
	cmp r0, #1
	bne _08000670
	ldrb r0, [r7, #0x18]
	cmp r0, #0xe1
	bls _08000670
	adds r0, r7, #0
	bl sub_08000B10
	cmp r0, #0
	bne _08000670
	b _080009BA
_08000670:
	adds r0, r7, #0
	bl sub_08000B10
	cmp r0, #0
	beq _0800067C
	b _080009CA
_0800067C:
	ldrh r0, [r7, #0x16]
	cmp r0, #0
	bne _0800068C
	adds r0, r7, #0
	bl sub_080005B0
	movs r0, #0x71
	b _080009CC
_0800068C:
	subs r0, #1
	strh r0, [r7, #0x16]
	b _080009CA
_08000692:
	ldrb r0, [r7, #0x18]
	cmp r0, #2
	bne _0800069A
	b _080007D0
_0800069A:
	cmp r0, #2
	bgt _080006A8
	cmp r0, #0
	beq _080006B6
	cmp r0, #1
	beq _08000772
	b _08000908
_080006A8:
	cmp r0, #0xd0
	bne _080006AE
	b _0800081C
_080006AE:
	cmp r0, #0xd1
	bne _080006B4
	b _080008B6
_080006B4:
	b _08000908
_080006B6:
	movs r3, #0xe
	movs r5, #3
	ldr r0, _080006FC @ =0x04000120
	ldrh r0, [r0, #6]
	adds r1, r0, #0
	ldr r0, _08000700 @ =0x0000FFFF
	ldrb r2, [r7, #0x1e]
	adds r6, r2, #0
	cmp r1, r0
	bne _080006DE
	adds r4, r1, #0
	ldr r1, _08000704 @ =0x04000126
_080006CE:
	asrs r3, r3, #1
	subs r1, #2
	subs r5, #1
	cmp r5, #0
	beq _080006DE
	ldrh r0, [r1]
	cmp r0, r4
	beq _080006CE
_080006DE:
	movs r0, #0xe
	ands r3, r0
	strb r3, [r7, #0x1d]
	movs r5, #3
	ldr r0, _080006FC @ =0x04000120
	ldrh r0, [r0, #6]
	adds r4, r0, #0
	asrs r0, r2, #3
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0800070C
	ldr r0, _08000708 @ =0x00007208
	b _08000732
	.align 2, 0
_080006FC: .4byte 0x04000120
_08000700: .4byte 0x0000FFFF
_08000704: .4byte 0x04000126
_08000708: .4byte 0x00007208
_0800070C:
	subs r5, #1
	cmp r5, #0
	beq _08000738
	lsls r0, r5, #1
	ldr r1, _08000760 @ =0x04000120
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r4, r0, #0
	adds r0, r2, #0
	asrs r0, r5
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0800070C
	adds r0, r1, #0
	lsls r0, r5
	movs r1, #0xe4
	lsls r1, r1, #7
	orrs r0, r1
_08000732:
	cmp r4, r0
	beq _0800070C
	movs r3, #0
_08000738:
	adds r0, r3, #0
	ands r0, r6
	strb r0, [r7, #0x1e]
	cmp r3, #0
	bne _08000748
	movs r0, #0xf
	mov r2, sl
	strb r0, [r2]
_08000748:
	mov r1, sl
	ldrb r0, [r1]
	cmp r0, #0
	bne _08000764
	ldrb r0, [r7, #0x1d]
	ldrb r2, [r7, #0x1e]
	cmp r0, r2
	beq _0800076A
	adds r0, r7, #0
	bl sub_08000A28
	b _08000772
	.align 2, 0
_08000760: .4byte 0x04000120
_08000764:
	subs r0, #1
	mov r1, sl
	strb r0, [r1]
_0800076A:
	ldrb r1, [r7, #0x1e]
	movs r2, #0xc4
	lsls r2, r2, #7
	b _08000872
_08000772:
	adds r1, r7, #0
	adds r1, #0x49
	movs r0, #0
	strb r0, [r1]
	movs r5, #3
	mov ip, r1
	ldr r3, _080007C8 @ =0x03006000
_08000780:
	lsls r0, r5, #1
	ldr r2, _080007CC @ =0x04000120
	adds r0, r0, r2
	ldrh r0, [r0]
	adds r4, r0, #0
	asrs r0, r4, #8
	subs r2, r5, #1
	cmp r0, #0x72
	bne _080007AA
	lsls r0, r2, #1
	adds r0, r0, r3
	strh r4, [r0]
	movs r0, #0xff
	ands r4, r0
	movs r0, #1
	lsls r0, r5
	cmp r4, r0
	bne _080007AA
	ldrb r0, [r1]
	orrs r4, r0
	strb r4, [r1]
_080007AA:
	adds r5, r2, #0
	cmp r5, #0
	bne _08000780
	ldrb r0, [r7, #0x1d]
	mov r1, ip
	ldrb r1, [r1]
	cmp r0, r1
	bne _0800076A
	movs r0, #2
	strb r0, [r7, #0x18]
	mov r2, ip
	ldrb r1, [r2]
	movs r2, #0xc2
	lsls r2, r2, #7
	b _08000872
	.align 2, 0
_080007C8: .4byte 0x03006000
_080007CC: .4byte 0x04000120
_080007D0:
	movs r5, #3
	movs r0, #0x49
	adds r0, r0, r7
	mov ip, r0
	mov r4, ip
	movs r6, #1
	ldr r1, _08000814 @ =0x03006000
	mov sb, r1
	ldr r2, _08000818 @ =0x04000120
	mov r8, r2
_080007E4:
	ldrb r3, [r4]
	adds r0, r3, #0
	asrs r0, r5
	ands r0, r6
	subs r2, r5, #1
	cmp r0, #0
	beq _0800080A
	lsls r0, r5, #1
	add r0, r8
	ldrh r1, [r0]
	lsls r0, r2, #1
	add r0, sb
	ldrh r0, [r0]
	cmp r1, r0
	beq _0800080A
	adds r0, r6, #0
	lsls r0, r5
	eors r3, r0
	strb r3, [r4]
_0800080A:
	adds r5, r2, #0
	cmp r5, #0
	bne _080007E4
	b _08000970
	.align 2, 0
_08000814: .4byte 0x03006000
_08000818: .4byte 0x04000120
_0800081C:
	movs r3, #1
	movs r5, #3
	movs r0, #0x49
	adds r0, r0, r7
	mov ip, r0
	adds r6, r7, #0
	adds r6, #0x19
	ldr r1, _08000880 @ =0x03006000
	mov r8, r1
_0800082E:
	lsls r0, r5, #1
	ldr r2, _08000884 @ =0x04000120
	adds r0, r0, r2
	ldrh r0, [r0]
	adds r4, r0, #0
	subs r2, r5, #1
	adds r0, r6, r2
	strb r4, [r0]
	mov r0, ip
	ldrb r1, [r0]
	asrs r1, r5
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _08000862
	asrs r0, r4, #8
	subs r0, #0x72
	cmp r0, #1
	bls _08000856
	b _080009C0
_08000856:
	lsls r0, r2, #1
	add r0, r8
	ldrh r0, [r0]
	cmp r4, r0
	bne _08000862
	movs r3, #0
_08000862:
	adds r5, r2, #0
	cmp r5, #0
	bne _0800082E
	cmp r3, #0
	bne _08000888
	ldrb r1, [r7, #0x1c]
	movs r2, #0xc6
	lsls r2, r2, #7
_08000872:
	adds r0, r2, #0
	orrs r1, r0
	adds r0, r7, #0
	bl sub_080009DC
	b _080009CC
	.align 2, 0
_08000880: .4byte 0x03006000
_08000884: .4byte 0x04000120
_08000888:
	movs r0, #0xd1
	strb r0, [r7, #0x18]
	movs r3, #0x11
	movs r5, #3
	adds r1, r6, #2
_08000892:
	ldrb r0, [r1]
	adds r3, r3, r0
	subs r1, #1
	subs r5, #1
	cmp r5, #0
	bne _08000892
	strb r3, [r7, #0x14]
	movs r0, #0xff
	ands r3, r0
	movs r1, #0xc8
	lsls r1, r1, #7
	adds r0, r1, #0
	orrs r3, r0
	adds r0, r7, #0
	adds r1, r3, #0
	bl sub_080009DC
	b _080009CC
_080008B6:
	movs r5, #3
	movs r2, #0x49
	ldrb r1, [r2, r7]
	ldr r2, _080008F4 @ =0x04000126
	movs r3, #1
_080008C0:
	ldrh r0, [r2]
	adds r4, r0, #0
	adds r0, r1, #0
	asrs r0, r5
	ands r0, r3
	cmp r0, #0
	beq _080008D4
	asrs r0, r4, #8
	cmp r0, #0x73
	bne _080009C0
_080008D4:
	subs r2, #2
	subs r5, #1
	cmp r5, #0
	bne _080008C0
	adds r0, r7, #0
	bl MultiBoot
	adds r5, r0, #0
	cmp r5, #0
	bne _080008F8
	movs r0, #0xe0
	strb r0, [r7, #0x18]
	adds r0, #0xb0
	strh r0, [r7, #0x16]
	b _080009CA
	.align 2, 0
_080008F4: .4byte 0x04000126
_080008F8:
	adds r0, r7, #0
	bl sub_080005B0
	movs r0, #0x1e
	mov r1, sl
	strb r0, [r1]
	movs r0, #0x70
	b _080009CC
_08000908:
	movs r5, #3
	movs r2, #0x49
	adds r2, r2, r7
	mov ip, r2
	mov r8, ip
	movs r0, #1
	mov sb, r0
_08000916:
	mov r1, r8
	ldrb r6, [r1]
	adds r0, r6, #0
	asrs r0, r5
	mov r2, sb
	ands r0, r2
	cmp r0, #0
	beq _08000950
	lsls r0, r5, #1
	ldr r1, _0800096C @ =0x04000120
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r4, r0, #0
	asrs r2, r4, #8
	ldrb r0, [r7, #0x18]
	lsrs r0, r0, #1
	movs r1, #0x62
	subs r1, r1, r0
	mov r3, sb
	lsls r3, r5
	cmp r2, r1
	bne _0800094A
	movs r0, #0xff
	ands r4, r0
	cmp r4, r3
	beq _08000950
_0800094A:
	eors r6, r3
	mov r2, r8
	strb r6, [r2]
_08000950:
	subs r5, #1
	cmp r5, #0
	bne _08000916
	ldrb r0, [r7, #0x18]
	cmp r0, #0xc4
	bne _08000970
	mov r0, ip
	ldrb r1, [r0]
	movs r0, #0xe
	ands r0, r1
	strb r0, [r7, #0x1e]
	strb r5, [r7, #0x18]
	b _0800076A
	.align 2, 0
_0800096C: .4byte 0x04000120
_08000970:
	mov r1, ip
	ldrb r0, [r1]
	cmp r0, #0
	bne _08000982
	adds r0, r7, #0
	bl sub_080005B0
	movs r0, #0x50
	b _080009CC
_08000982:
	ldrb r0, [r7, #0x18]
	adds r0, #2
	strb r0, [r7, #0x18]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xc4
	bne _08000992
	b _0800076A
_08000992:
	ldrb r0, [r7, #0x18]
	ldr r1, [r7, #0x28]
	adds r0, r0, r1
	subs r1, r0, #3
	ldrb r2, [r1]
	lsls r2, r2, #8
	subs r0, #4
	ldrb r1, [r0]
	orrs r1, r2
	adds r0, r7, #0
	bl sub_080009DC
	adds r5, r0, #0
	cmp r5, #0
	bne _080009CC
	adds r0, r7, #0
	adds r0, #0x4b
	ldrb r0, [r0]
	cmp r0, #1
	bne _080009CA
_080009BA:
	bl sub_08000C28
	b _08000616
_080009C0:
	adds r0, r7, #0
	bl sub_080005B0
	movs r0, #0x60
	b _080009CC
_080009CA:
	movs r0, #0
_080009CC:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080009DC
sub_080009DC: @ 0x080009DC
	push {r4, lr}
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r3, _08000A08 @ =0x04000128
	ldrh r0, [r3]
	movs r4, #0x8c
	ands r4, r0
	cmp r4, #8
	bne _08000A14
	ldr r0, _08000A0C @ =0x0400012A
	strh r1, [r0]
	ldr r1, _08000A10 @ =0x00002083
	adds r0, r1, #0
	strh r0, [r3]
	adds r1, r2, #0
	adds r1, #0x48
	movs r0, #1
	strb r0, [r1]
	movs r0, #0
	b _08000A20
	.align 2, 0
_08000A08: .4byte 0x04000128
_08000A0C: .4byte 0x0400012A
_08000A10: .4byte 0x00002083
_08000A14:
	adds r0, r2, #0
	bl sub_080005B0
	movs r0, #8
	eors r4, r0
	adds r0, r4, #0
_08000A20:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08000A28
sub_08000A28: @ 0x08000A28
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0x18]
	cmp r0, #0
	beq _08000A3A
	adds r0, r1, #0
	bl sub_080005B0
	b _08000A46
_08000A3A:
	adds r2, r1, #0
	adds r2, #0x4a
	strb r0, [r2]
	strb r0, [r1, #0x1e]
	movs r0, #1
	strb r0, [r1, #0x18]
_08000A46:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08000A4C
sub_08000A4C: @ 0x08000A4C
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	ldr r0, [sp, #0x14]
	lsls r3, r3, #0x18
	lsrs r5, r3, #0x18
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	movs r3, #0
	ldrb r0, [r4, #0x18]
	cmp r0, #0
	bne _08000A88
	ldrb r0, [r4, #0x1e]
	cmp r0, #0
	beq _08000A88
	adds r0, r4, #0
	adds r0, #0x4a
	ldrb r0, [r0]
	cmp r0, #0
	bne _08000A88
	str r6, [r4, #0x20]
	adds r2, #0xf
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r2, r0
	subs r0, #0xf0
	adds r1, r2, r0
	ldr r0, _08000A90 @ =0x0003FF00
	cmp r1, r0
	bls _08000A94
_08000A88:
	adds r0, r4, #0
	bl sub_080005B0
	b _08000B08
	.align 2, 0
_08000A90: .4byte 0x0003FF00
_08000A94:
	adds r0, r6, r2
	str r0, [r4, #0x24]
	lsls r1, r7, #0x18
	movs r2, #0x80
	lsls r2, r2, #0x13
	adds r0, r1, r2
	asrs r0, r0, #0x18
	adds r2, r1, #0
	cmp r0, #8
	bhi _08000AF4
	lsls r0, r0, #2
	ldr r1, _08000AB4 @ =_08000AB8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08000AB4: .4byte _08000AB8
_08000AB8: @ jump table
	.4byte _08000ADC @ case 0
	.4byte _08000ADC @ case 1
	.4byte _08000ADC @ case 2
	.4byte _08000ADC @ case 3
	.4byte _08000AE6 @ case 4
	.4byte _08000AEC @ case 5
	.4byte _08000AEC @ case 6
	.4byte _08000AEC @ case 7
	.4byte _08000AEC @ case 8
_08000ADC:
	lsls r3, r5, #3
	asrs r1, r2, #0x18
	movs r0, #3
	subs r0, r0, r1
	b _08000AF2
_08000AE6:
	movs r0, #0x38
	adds r3, r5, #0
	b _08000AF2
_08000AEC:
	lsls r3, r5, #3
	asrs r0, r2, #0x18
	subs r0, #1
_08000AF2:
	orrs r3, r0
_08000AF4:
	movs r0, #0x3f
	ands r3, r0
	lsls r0, r3, #1
	movs r2, #0x7f
	rsbs r2, r2, #0
	adds r1, r2, #0
	orrs r0, r1
	strb r0, [r4, #0x1c]
	movs r0, #0xd0
	strb r0, [r4, #0x18]
_08000B08:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08000B10
sub_08000B10: @ 0x08000B10
	push {lr}
	ldrb r0, [r0, #0x18]
	cmp r0, #0xe9
	beq _08000B1C
	movs r0, #0
	b _08000B1E
_08000B1C:
	movs r0, #1
_08000B1E:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08000B24
sub_08000B24: @ 0x08000B24
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	ldrb r0, [r3, #0x18]
	cmp r0, #0xe0
	beq _08000B40
	cmp r0, #0xe0
	blt _08000B50
	cmp r0, #0xe8
	bgt _08000B50
	cmp r0, #0xe7
	blt _08000B50
	movs r4, #3
	ldrb r5, [r3, #0x1e]
	b _08000BB0
_08000B40:
	movs r1, #0
	movs r0, #0xe1
	strb r0, [r3, #0x18]
	str r1, [r3, #4]
	movs r0, #0x80
	lsls r0, r0, #0xd
	str r0, [r3]
	b _08000BA2
_08000B50:
	movs r4, #3
	ldrb r5, [r3, #0x1e]
	movs r6, #1
	ldr r1, _08000BAC @ =0x04000126
_08000B58:
	ldrh r0, [r1]
	adds r2, r0, #0
	adds r0, r5, #0
	asrs r0, r4
	ands r0, r6
	cmp r0, #0
	beq _08000B6C
	ldr r0, [r3, #4]
	cmp r2, r0
	bne _08000B40
_08000B6C:
	subs r1, #2
	subs r4, #1
	cmp r4, #0
	bne _08000B58
	ldrb r0, [r3, #0x18]
	adds r0, #1
	strb r0, [r3, #0x18]
	ldr r1, [r3]
	ldrh r0, [r3]
	str r0, [r3, #4]
	cmp r1, #0
	bne _08000B9A
	ldr r0, [r3, #0x28]
	adds r1, r0, #0
	adds r1, #0xac
	ldrb r1, [r1]
	adds r0, #0xad
	ldrb r0, [r0]
	lsls r0, r0, #8
	orrs r1, r0
	str r1, [r3, #4]
	lsls r1, r1, #5
	str r1, [r3]
_08000B9A:
	ldr r0, [r3]
	lsrs r0, r0, #5
	str r0, [r3]
_08000BA0:
	ldrh r1, [r3]
_08000BA2:
	adds r0, r3, #0
	bl sub_080009DC
	b _08000C08
	.align 2, 0
_08000BAC: .4byte 0x04000126
_08000BB0:
	lsls r0, r4, #1
	ldr r1, _08000BF8 @ =0x04000120
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r2, r0, #0
	adds r0, r5, #0
	asrs r0, r4
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08000BCC
	ldr r0, [r3, #4]
	cmp r2, r0
	bne _08000BFC
_08000BCC:
	subs r4, #1
	cmp r4, #0
	bne _08000BB0
	ldrb r0, [r3, #0x18]
	adds r0, #1
	strb r0, [r3, #0x18]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xe9
	beq _08000C06
	ldr r0, [r3, #0x28]
	adds r1, r0, #0
	adds r1, #0xae
	ldrb r1, [r1]
	adds r0, #0xaf
	ldrb r0, [r0]
	lsls r0, r0, #8
	orrs r1, r0
	str r1, [r3]
	str r1, [r3, #4]
	b _08000BA0
	.align 2, 0
_08000BF8: .4byte 0x04000120
_08000BFC:
	adds r0, r3, #0
	bl sub_080005B0
	movs r0, #0x71
	b _08000C08
_08000C06:
	movs r0, #0
_08000C08:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08000C10
sub_08000C10: @ 0x08000C10
	mov r2, pc
	lsrs r2, r2, #0x18
	movs r1, #0xc
	cmp r2, #2
	beq _08000C22
	movs r1, #0xd
	cmp r2, #8
	beq _08000C22
	movs r1, #4
_08000C22:
	subs r0, r0, r1
	bgt _08000C22
	bx lr

	thumb_func_start sub_08000C28
sub_08000C28: @ 0x08000C28
	push {r4, r5, lr}
	movs r2, #0
	ldr r3, _08000C5C @ =0x04000128
	ldrh r1, [r3]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08000C4C
	ldr r5, _08000C60 @ =0x0000795C
	movs r4, #0x80
_08000C3C:
	adds r2, #1
	cmp r2, r5
	bgt _08000C4C
	ldrh r1, [r3]
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	bne _08000C3C
_08000C4C:
	movs r0, #0x96
	lsls r0, r0, #2
	bl sub_08000C10
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08000C5C: .4byte 0x04000128
_08000C60: .4byte 0x0000795C

	thumb_func_start sub_08000C64
sub_08000C64: @ 0x08000C64
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r3, _08000CD8 @ =0x04000208
	movs r4, #0
	strh r4, [r3]
	ldr r2, _08000CDC @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _08000CE0 @ =0x0000FF3F
	ands r0, r1
	strh r0, [r2]
	movs r0, #1
	strh r0, [r3]
	ldr r0, _08000CE4 @ =0x04000134
	strh r4, [r0]
	subs r2, #0xd8
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r1, #0
	strh r0, [r2]
	ldrh r0, [r2]
	ldr r3, _08000CE8 @ =0x00004003
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	movs r0, #0
	str r0, [sp]
	ldr r4, _08000CEC @ =0x03006210
	ldr r2, _08000CF0 @ =0x0500007C
	mov r0, sp
	adds r1, r4, #0
	bl CpuSet
	ldr r0, _08000CF4 @ =sub_08000228
	ldr r1, _08000CF8 @ =0x03006400
	ldr r2, _08000CFC @ =0x04000010
	bl CpuSet
	ldr r0, _08000D00 @ =sub_080011EC
	ldr r1, _08000D04 @ =0x03006010
	ldr r2, _08000D08 @ =0x04000080
	bl CpuSet
	lsls r5, r5, #4
	ldrb r1, [r4, #2]
	movs r2, #0xf
	adds r0, r2, #0
	ands r0, r1
	orrs r0, r5
	strb r0, [r4, #2]
	ldr r0, _08000D0C @ =0x02037EB0
	ldrb r0, [r0, #5]
	cmp r0, #2
	bne _08000D10
	movs r0, #0x10
	str r0, [r4, #0x14]
	str r0, [r4, #0x18]
	b _08000D14
	.align 2, 0
_08000CD8: .4byte 0x04000208
_08000CDC: .4byte 0x04000200
_08000CE0: .4byte 0x0000FF3F
_08000CE4: .4byte 0x04000134
_08000CE8: .4byte 0x00004003
_08000CEC: .4byte 0x03006210
_08000CF0: .4byte 0x0500007C
_08000CF4: .4byte sub_08000228
_08000CF8: .4byte 0x03006400
_08000CFC: .4byte 0x04000010
_08000D00: .4byte sub_080011EC
_08000D04: .4byte 0x03006010
_08000D08: .4byte 0x04000080
_08000D0C: .4byte 0x02037EB0
_08000D10:
	str r2, [r4, #0x14]
	str r2, [r4, #0x18]
_08000D14:
	ldr r1, _08000D4C @ =0x03006210
	adds r0, r1, #0
	adds r0, #0x30
	str r0, [r1, #0x1c]
	adds r0, #0x20
	str r0, [r1, #0x20]
	adds r0, #0x20
	str r0, [r1, #0x24]
	adds r0, #0x80
	str r0, [r1, #0x28]
	movs r2, #0xb8
	lsls r2, r2, #1
	adds r0, r1, r2
	str r0, [r1, #0x2c]
	ldr r3, _08000D50 @ =0x04000208
	movs r0, #0
	strh r0, [r3]
	ldr r2, _08000D54 @ =0x04000200
	ldrh r0, [r2]
	movs r1, #0x80
	orrs r0, r1
	strh r0, [r2]
	movs r0, #1
	strh r0, [r3]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08000D4C: .4byte 0x03006210
_08000D50: .4byte 0x04000208
_08000D54: .4byte 0x04000200

	thumb_func_start sub_08000D58
sub_08000D58: @ 0x08000D58
	push {lr}
	ldr r2, _08000D70 @ =0x03006210
	ldrb r0, [r2]
	cmp r0, #0
	beq _08000D6A
	ldrb r0, [r2, #6]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2, #6]
_08000D6A:
	pop {r0}
	bx r0
	.align 2, 0
_08000D70: .4byte 0x03006210

	thumb_func_start sub_08000D74
sub_08000D74: @ 0x08000D74
	ldr r3, _08000DA8 @ =0x04000208
	movs r0, #0
	strh r0, [r3]
	ldr r2, _08000DAC @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _08000DB0 @ =0x0000FF3F
	ands r0, r1
	strh r0, [r2]

	thumb_func_start sub_08000D84
sub_08000D84: @ 0x08000D84
	movs r0, #1
	strh r0, [r3]
	ldr r1, _08000DB4 @ =0x04000128
	ldr r2, _08000DB8 @ =0x00002003
	adds r0, r2, #0
	strh r0, [r1]
	subs r1, #0x1c
	ldr r0, _08000DBC @ =0x0000BFC0
	str r0, [r1]
	adds r1, #0xf6
	movs r0, #0xc0
	strh r0, [r1]
	ldr r2, _08000DC0 @ =0x03006210
	ldrb r1, [r2, #6]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2, #6]
	bx lr
	.align 2, 0
_08000DA8: .4byte 0x04000208
_08000DAC: .4byte 0x04000200
_08000DB0: .4byte 0x0000FF3F
_08000DB4: .4byte 0x04000128
_08000DB8: .4byte 0x00002003
_08000DBC: .4byte 0x0000BFC0
_08000DC0: .4byte 0x03006210

	thumb_func_start sub_08000DC4
sub_08000DC4: @ 0x08000DC4
	push {r4, r5, r6, r7, lr}
	mov ip, r0
	ldr r6, _08000DE0 @ =0x04000128
	ldr r5, [r6]
	ldr r0, _08000DE4 @ =0x03006210
	ldrb r2, [r0, #1]
	adds r7, r0, #0
	cmp r2, #1
	beq _08000E80
	cmp r2, #1
	bgt _08000DE8
	cmp r2, #0
	beq _08000DEE
	b _08000EC6
	.align 2, 0
_08000DE0: .4byte 0x04000128
_08000DE4: .4byte 0x03006210
_08000DE8:
	cmp r2, #2
	beq _08000EC0
	b _08000EC6
_08000DEE:
	ldr r0, _08000E24 @ =0x02037EB0
	ldrb r0, [r0, #5]
	cmp r0, #2
	bne _08000E2C
	movs r1, #0x30
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	bne _08000E7C
	movs r0, #0x88
	adds r4, r5, #0
	ands r4, r0
	cmp r4, #8
	bne _08000EC6
	movs r1, #4
	adds r0, r5, #0
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _08000E7C
	ldr r0, [r7, #0x14]
	cmp r0, #0x10
	bne _08000E7C
	ldr r3, _08000E28 @ =0x04000208
	strh r1, [r3]
	b _08000E4E
	.align 2, 0
_08000E24: .4byte 0x02037EB0
_08000E28: .4byte 0x04000208
_08000E2C:
	ldr r0, [r7, #0x18]
	cmp r0, #0xf
	bne _08000E7C
	movs r0, #0x88
	adds r4, r5, #0
	ands r4, r0
	cmp r4, #8
	bne _08000EC6
	movs r1, #4
	adds r0, r5, #0
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _08000E7C
	ldr r3, _08000EA4 @ =0x04000208
	strh r0, [r3]
_08000E4E:
	ldr r2, _08000EA8 @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _08000EAC @ =0x0000FF7F
	ands r0, r1
	strh r0, [r2]
	ldrh r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strh r0, [r2]
	movs r0, #1
	strh r0, [r3]
	ldrb r1, [r6, #1]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r6, #1]
	ldr r1, _08000EB0 @ =0x0400010C
	ldr r0, _08000EB4 @ =0x0000BFC0
	str r0, [r1]
	adds r1, #0xf6
	movs r0, #0xc0
	strh r0, [r1]
	strb r4, [r7]
_08000E7C:
	movs r0, #1
	strb r0, [r7, #1]
_08000E80:
	ldr r2, _08000EB8 @ =0x03006210
	ldrb r1, [r2, #2]
	movs r0, #0xf0
	ands r0, r1
	cmp r0, #0
	beq _08000EC0
	ldrb r1, [r2, #6]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _08000EC0
	ldrb r0, [r2, #8]
	cmp r0, #7
	bhi _08000EBC
	adds r0, #1
	strb r0, [r2, #8]
	b _08000EC0
	.align 2, 0
_08000EA4: .4byte 0x04000208
_08000EA8: .4byte 0x04000200
_08000EAC: .4byte 0x0000FF7F
_08000EB0: .4byte 0x0400010C
_08000EB4: .4byte 0x0000BFC0
_08000EB8: .4byte 0x03006210
_08000EBC:
	movs r0, #2
	strb r0, [r2, #1]
_08000EC0:
	mov r0, ip
	bl sub_08000FE0
_08000EC6:
	ldr r1, _08000EFC @ =0x03006210
	ldrb r0, [r1, #0xb]
	adds r0, #1
	strb r0, [r1, #0xb]
	ldrb r3, [r1, #3]
	ldrb r2, [r1, #6]
	movs r0, #0x10
	ands r0, r2
	orrs r3, r0
	movs r0, #0x20
	ands r0, r2
	orrs r3, r0
	movs r0, #0x40
	ands r0, r2
	orrs r3, r0
	ldrb r0, [r1, #2]
	lsrs r0, r0, #4
	lsls r2, r0, #8
	ldrb r0, [r1]
	adds r7, r1, #0
	cmp r0, #8
	bne _08000F00
	movs r0, #0x80
	orrs r0, r2
	orrs r0, r3
	b _08000F04
	.align 2, 0
_08000EFC: .4byte 0x03006210
_08000F00:
	adds r0, r3, #0
	orrs r0, r2
_08000F04:
	adds r2, r0, #0
	ldrb r0, [r7, #7]
	cmp r0, #0
	beq _08000F12
	movs r0, #0x80
	lsls r0, r0, #5
	orrs r2, r0
_08000F12:
	ldrb r0, [r7, #8]
	lsrs r0, r0, #3
	lsls r1, r0, #0xf
	lsls r0, r5, #0x1a
	lsrs r0, r0, #0x1e
	cmp r0, #3
	bls _08000F2A
	movs r0, #0x80
	lsls r0, r0, #6
	orrs r0, r1
	orrs r0, r2
	b _08000F2E
_08000F2A:
	adds r0, r2, #0
	orrs r0, r1
_08000F2E:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08000F34
sub_08000F34: @ 0x08000F34
	push {r4, r5, r6, r7, lr}
	movs r7, #0
	ldr r5, _08000FD4 @ =0x03006210
	ldr r4, [r5, #0x1c]
	movs r2, #1
	ands r1, r2
	lsls r1, r1, #4
	ldrb r3, [r4, #1]
	movs r2, #0x11
	rsbs r2, r2, #0
	ands r2, r3
	orrs r2, r1
	strb r2, [r4, #1]
	ldr r6, [r5, #0x1c]
	ldr r1, _08000FD8 @ =0x03006440
	ldrb r1, [r1, #3]
	movs r3, #1
	adds r2, r3, #0
	ands r2, r1
	lsls r2, r2, #5
	ldrb r4, [r6, #1]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r1, r4
	orrs r1, r2
	strb r1, [r6, #1]
	ldr r4, [r5, #0x1c]
	ldrb r1, [r5, #6]
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x1f
	ands r3, r1
	lsls r3, r3, #6
	ldrb r2, [r4, #1]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r3
	strb r1, [r4, #1]
	ldr r2, [r5, #0x1c]
	ldrb r1, [r5, #0xb]
	strb r1, [r2]
	ldr r4, [r5, #0x1c]
	ldrb r2, [r5, #2]
	lsls r2, r2, #0x1c
	lsrs r2, r2, #0x1c
	ldrb r1, [r5, #3]
	eors r2, r1
	movs r1, #0xf
	ands r2, r1
	ldrb r3, [r4, #1]
	movs r1, #0x10
	rsbs r1, r1, #0
	ands r1, r3
	orrs r1, r2
	strb r1, [r4, #1]
	ldr r1, [r5, #0x1c]
	strh r7, [r1, #2]
	ldr r1, [r5, #0x1c]
	adds r1, #4
	ldr r2, _08000FDC @ =0x04000006
	bl CpuSet
	movs r2, #0
	ldr r1, [r5, #0x1c]
_08000FB4:
	ldrh r0, [r1]
	adds r7, r7, r0
	adds r1, #2
	adds r2, #1
	cmp r2, #0xd
	bls _08000FB4
	ldr r0, [r5, #0x1c]
	mvns r1, r7
	subs r1, #0x10
	strh r1, [r0, #2]
	movs r0, #1
	strb r0, [r5, #4]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08000FD4: .4byte 0x03006210
_08000FD8: .4byte 0x03006440
_08000FDC: .4byte 0x04000006

	thumb_func_start sub_08000FE0
sub_08000FE0: @ 0x08000FE0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov sb, r0
	ldr r0, _08001104 @ =0x03006400
	movs r1, #0
	mov r8, r1
	bl call_via_r0
	lsls r0, r0, #0x18
	ldr r3, _08001108 @ =0x03006210
	mov r2, r8
	strb r2, [r3, #3]
	ldrb r2, [r3, #6]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r1, r2
	strb r1, [r3, #6]
	cmp r0, #0
	beq _08001090
	movs r4, #3
	adds r6, r3, #0
	movs r3, #0x11
	rsbs r3, r3, #0
	mov sl, r3
_08001018:
	lsls r1, r4, #5
	ldr r0, [r6, #0x2c]
	adds r0, r0, r1
	mov r8, r0
	movs r3, #0
	movs r2, #0
	subs r7, r4, #1
	mov r1, r8
_08001028:
	ldrh r0, [r1]
	adds r3, r3, r0
	adds r1, #2
	adds r2, #1
	cmp r2, #0xd
	bls _08001028
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	mov r5, r8
	adds r5, #4
	cmp r0, sl
	bne _0800107C
	movs r0, #1
	lsls r0, r4
	ldrb r1, [r6, #3]
	orrs r0, r1
	strb r0, [r6, #3]
	ldrb r2, [r6, #6]
	lsls r1, r2, #0x1c
	lsrs r1, r1, #0x1c
	mov r3, r8
	ldrb r0, [r3, #1]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1f
	lsls r0, r4
	orrs r0, r1
	movs r1, #0xf
	ands r0, r1
	movs r3, #0x10
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r2, r1
	orrs r2, r0
	strb r2, [r6, #6]
	lsls r1, r4, #1
	adds r1, r1, r4
	lsls r1, r1, #3
	add r1, sb
	adds r0, r5, #0
	ldr r2, _0800110C @ =0x04000006
	bl CpuSet
_0800107C:
	movs r0, #0
	str r0, [sp]
	mov r0, sp
	adds r1, r5, #0
	ldr r2, _08001110 @ =0x05000006
	bl CpuSet
	adds r4, r7, #0
	cmp r4, #0
	bge _08001018
_08001090:
	ldr r3, _08001108 @ =0x03006210
	ldrb r2, [r3, #2]
	lsls r0, r2, #0x1c
	lsrs r0, r0, #0x1c
	ldrb r6, [r3, #3]
	orrs r0, r6
	movs r1, #0xf
	ands r0, r1
	movs r1, #0x10
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	lsrs r2, r1, #4
	lsls r0, r1, #0x1c
	lsrs r0, r0, #0x1c
	orrs r2, r0
	lsls r2, r2, #4
	movs r4, #0xf
	ands r4, r1
	orrs r4, r2
	strb r4, [r3, #2]
	movs r1, #1
	adds r0, r1, #0
	ands r0, r6
	adds r5, r3, #0
	cmp r0, #0
	beq _08001142
	ldrb r0, [r5]
	cmp r0, #8
	bne _08001114
	movs r0, #3
	ands r0, r6
	cmp r0, #0
	beq _080010E6
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	lsrs r1, r4, #4
	cmp r0, r1
	bne _080010E6
	ldrb r0, [r5, #6]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r5, #6]
_080010E6:
	ldrb r4, [r5, #6]
	lsls r3, r4, #0x1c
	lsrs r3, r3, #0x1c
	movs r0, #0xe
	ldrb r2, [r5, #2]
	lsrs r2, r2, #4
	adds r1, r0, #0
	ands r1, r3
	ands r0, r2
	cmp r1, r0
	bne _0800112C
	movs r0, #0x40
	orrs r0, r4
	b _0800112A
	.align 2, 0
_08001104: .4byte 0x03006400
_08001108: .4byte 0x03006210
_0800110C: .4byte 0x04000006
_08001110: .4byte 0x05000006
_08001114:
	mov r2, r8
	ldrb r0, [r2, #1]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1f
	ands r1, r0
	lsls r1, r1, #6
	ldrb r2, [r5, #6]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
_0800112A:
	strb r0, [r5, #6]
_0800112C:
	mov r3, r8
	ldrb r0, [r3, #1]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1f
	lsls r0, r0, #5
	ldrb r2, [r5, #6]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r5, #6]
_08001142:
	ldrb r0, [r5, #3]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08001154
sub_08001154: @ 0x08001154
	push {lr}
	ldr r3, _080011B0 @ =0x03006210
	ldrb r1, [r3]
	cmp r1, #0
	beq _080011C0
	ldrb r0, [r3, #4]
	cmp r0, #0
	beq _080011DE
	ldrb r0, [r3, #1]
	cmp r0, #0
	beq _080011DE
	ldrb r1, [r3, #6]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080011DE
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r3, #0x18]
	ldr r1, [r3, #0x28]
	ldr r0, [r3, #0x24]
	str r0, [r3, #0x28]
	str r1, [r3, #0x24]
	ldr r1, [r3, #0x20]
	ldr r0, [r3, #0x1c]
	str r0, [r3, #0x20]
	str r1, [r3, #0x1c]
	movs r0, #0
	strb r0, [r3, #4]
	str r0, [r3, #0x14]
	ldr r2, _080011B4 @ =0x04000128
	ldr r0, [r2]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1f
	strb r0, [r3, #7]
	ldr r0, _080011B8 @ =0x0000FEFE
	strh r0, [r2, #2]
	ldrh r0, [r2]
	movs r1, #0x80
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _080011BC @ =0x0400010E
	movs r0, #0xc0
	strh r0, [r1]
	b _080011DE
	.align 2, 0
_080011B0: .4byte 0x03006210
_080011B4: .4byte 0x04000128
_080011B8: .4byte 0x0000FEFE
_080011BC: .4byte 0x0400010E
_080011C0:
	ldrb r0, [r3, #9]
	cmp r0, #3
	bhi _080011CC
	adds r0, #1
	strb r0, [r3, #9]
	b _080011DE
_080011CC:
	ldr r3, _080011E4 @ =0x04000208
	strh r1, [r3]
	ldr r2, _080011E8 @ =0x03007FF8
	ldrh r0, [r2]
	movs r1, #0x80
	orrs r0, r1
	strh r0, [r2]
	movs r0, #1
	strh r0, [r3]
_080011DE:
	pop {r0}
	bx r0
	.align 2, 0
_080011E4: .4byte 0x04000208
_080011E8: .4byte 0x03007FF8

	thumb_func_start sub_080011EC
sub_080011EC: @ 0x080011EC
	push {r4, r5, lr}
	sub sp, #8
	ldr r0, _080012A0 @ =0x04000120
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [sp]
	str r1, [sp, #4]
	ldr r2, _080012A4 @ =0x03006210
	ldr r0, _080012A8 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1f
	movs r5, #0
	strb r0, [r2, #7]
	mov r0, sp
	ldrh r1, [r0]
	ldr r0, _080012AC @ =0x0000FEFE
	adds r4, r2, #0
	cmp r1, r0
	bne _0800124C
	ldr r0, [r4, #0x18]
	cmp r0, #0xd
	ble _0800124C
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r4, #0x18]
	ldr r1, [r4, #0x28]
	ldr r0, [r4, #0x24]
	str r0, [r4, #0x28]
	str r1, [r4, #0x24]
	ldrb r0, [r4, #4]
	cmp r0, #0
	beq _0800123A
	ldr r1, [r4, #0x20]
	ldr r0, [r4, #0x1c]
	str r0, [r4, #0x20]
	str r1, [r4, #0x1c]
	strb r5, [r4, #4]
	str r5, [r4, #0x14]
_0800123A:
	ldr r3, _080012B0 @ =0x04000208
	strh r5, [r3]
	ldr r2, _080012B4 @ =0x03007FF8
	ldrh r0, [r2]
	movs r1, #0x80
	orrs r0, r1
	strh r0, [r2]
	movs r0, #1
	strh r0, [r3]
_0800124C:
	ldr r0, [r4, #0x14]
	cmp r0, #0xd
	bgt _0800125E
	ldr r2, _080012A8 @ =0x04000128
	ldr r1, [r4, #0x20]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #2]
_0800125E:
	ldr r0, [r4, #0x14]
	cmp r0, #0xe
	bgt _08001268
	adds r0, #1
	str r0, [r4, #0x14]
_08001268:
	ldr r0, [r4, #0x18]
	ldr r5, _080012B8 @ =0x02037EB0
	cmp r0, #0
	blt _08001292
	ldr r1, [r4, #0x24]
	mov r2, sp
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r3, #3
_0800127A:
	ldrh r0, [r2]
	strh r0, [r1]
	adds r2, #2
	adds r1, #0x20
	subs r3, #1
	cmp r3, #0
	bge _0800127A

	thumb_func_start sub_08001288
sub_08001288: @ 0x08001288
	ldr r0, [r4, #0x18]
	cmp r0, #0xd
	bne _08001292
	movs r0, #1
	strb r0, [r4, #5]
_08001292:
	ldrb r0, [r5, #5]
	cmp r0, #2
	bne _080012BC
	ldr r0, [r4, #0x18]
	cmp r0, #0xe
	bgt _080012C6
	b _080012C2
	.align 2, 0
_080012A0: .4byte 0x04000120
_080012A4: .4byte 0x03006210
_080012A8: .4byte 0x04000128
_080012AC: .4byte 0x0000FEFE
_080012B0: .4byte 0x04000208
_080012B4: .4byte 0x03007FF8
_080012B8: .4byte 0x02037EB0
_080012BC:
	ldr r0, [r4, #0x18]
	cmp r0, #0xd
	bgt _080012C6
_080012C2:
	adds r0, #1
	str r0, [r4, #0x18]
_080012C6:
	ldrb r0, [r4]
	cmp r0, #0
	beq _080012D2
	ldr r1, _080012FC @ =0x0400010E
	movs r0, #0
	strh r0, [r1]
_080012D2:
	ldr r0, [r4, #0x14]
	cmp r0, #0xe
	bgt _080012EE
	ldrb r0, [r4]
	cmp r0, #0
	beq _080012EE
	ldr r2, _08001300 @ =0x04000128
	ldrh r0, [r2]
	movs r1, #0x80
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _080012FC @ =0x0400010E
	movs r0, #0xc0
	strh r0, [r1]
_080012EE:
	movs r0, #0
	strb r0, [r4, #9]
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080012FC: .4byte 0x0400010E
_08001300: .4byte 0x04000128

	thumb_func_start sub_08001304
sub_08001304: @ 0x08001304
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r5, r0, #0
	adds r7, r1, #0
	movs r6, #0
	ldr r3, _08001388 @ =0x04000208
	strh r6, [r3]
	ldr r2, _0800138C @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _08001390 @ =0x0000FF3F
	ands r0, r1
	strh r0, [r2]
	movs r0, #1
	mov r8, r0
	strh r0, [r3]
	str r6, [sp]
	ldr r4, _08001394 @ =0x03006440
	ldr r2, _08001398 @ =0x05000006
	mov r0, sp
	adds r1, r4, #0
	bl CpuSet
	ldr r0, _0800139C @ =sub_08001598
	ldr r1, _080013A0 @ =0x03006010
	ldr r2, _080013A4 @ =0x04000080
	bl CpuSet
	ldr r1, _080013A8 @ =0x04000128
	ldr r0, _080013AC @ =0x00002003
	str r0, [r1]
	str r7, [r4, #4]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r4, #8]
	cmp r5, #0
	beq _0800137C
	ldr r0, _080013B0 @ =0x0400010C
	str r6, [r0]
	mov r2, r8
	strb r2, [r4]
	adds r1, r7, #0
	movs r2, #0x80
	lsls r2, r2, #6
_0800135E:
	ldm r1!, {r0}
	adds r6, r6, r0
	subs r2, #1
	cmp r2, #0
	bne _0800135E
	mvns r0, r6
	str r0, [r4, #0xc]
	ldr r1, _080013A8 @ =0x04000128
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	adds r2, #1
	adds r0, r2, #0
	strh r0, [r1]
_0800137C:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08001388: .4byte 0x04000208
_0800138C: .4byte 0x04000200
_08001390: .4byte 0x0000FF3F
_08001394: .4byte 0x03006440
_08001398: .4byte 0x05000006
_0800139C: .4byte sub_08001598
_080013A0: .4byte 0x03006010
_080013A4: .4byte 0x04000080
_080013A8: .4byte 0x04000128
_080013AC: .4byte 0x00002003
_080013B0: .4byte 0x0400010C

	thumb_func_start sub_080013B4
sub_080013B4: @ 0x080013B4
	push {r4, r5, r6, r7, lr}
	adds r2, r0, #0
	ldr r0, _080013D0 @ =0x03006440
	ldrb r1, [r0, #1]
	adds r5, r0, #0
	cmp r1, #4
	bls _080013C4
	b _0800158A
_080013C4:
	lsls r0, r1, #2
	ldr r1, _080013D4 @ =_080013D8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080013D0: .4byte 0x03006440
_080013D4: .4byte _080013D8
_080013D8: @ jump table
	.4byte _080013EC @ case 0
	.4byte _08001404 @ case 1
	.4byte _080014A0 @ case 2
	.4byte _08001512 @ case 3
	.4byte _08001580 @ case 4
_080013EC:
	ldr r0, [r5]
	ldr r1, _08001400 @ =0x00FF00FF
	ands r0, r1
	cmp r0, #0
	bne _080013F8
	b _0800158A
_080013F8:
	movs r0, #1
	strb r0, [r5, #1]
	b _0800158A
	.align 2, 0
_08001400: .4byte 0x00FF00FF
_08001404:
	ldrb r0, [r5]
	cmp r0, #1
	bne _08001414
	ldrb r0, [r5, #2]
	cmp r0, #5
	bhi _08001412
	b _0800158A
_08001412:
	b _0800141E
_08001414:
	ldr r1, _08001454 @ =0x04000128
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
_0800141E:
	ldr r0, _08001458 @ =0x04000120
	movs r6, #0
	str r6, [r0]
	ldr r1, _0800145C @ =0x04000202
	movs r0, #0xc0
	strh r0, [r1]
	ldrb r4, [r5]
	cmp r4, #1
	bne _0800146C

	thumb_func_start sub_08001430
sub_08001430: @ 0x08001430
	ldr r2, _08001454 @ =0x04000128
	ldrh r0, [r2]
	movs r1, #0x80
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _08001460 @ =0x0400010C
	ldr r0, _08001464 @ =0x00C0F318
	str r0, [r1]
	ldr r3, _08001468 @ =0x04000208
	strh r6, [r3]
	adds r2, #0xd8
	ldrh r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strh r0, [r2]
	strh r4, [r3]
	b _0800148C
	.align 2, 0
_08001454: .4byte 0x04000128
_08001458: .4byte 0x04000120
_0800145C: .4byte 0x04000202
_08001460: .4byte 0x0400010C
_08001464: .4byte 0x00C0F318
_08001468: .4byte 0x04000208
_0800146C:
	ldr r2, _08001498 @ =0x04000128
	ldrh r0, [r2]
	movs r3, #0x81
	lsls r3, r3, #7
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r3, _0800149C @ =0x04000208
	strh r6, [r3]
	adds r2, #0xd8
	ldrh r0, [r2]
	movs r1, #0x80
	orrs r0, r1
	strh r0, [r2]
	movs r0, #1
	strh r0, [r3]
_0800148C:
	movs r0, #0
	strb r0, [r5, #2]
	movs r0, #2
	strb r0, [r5, #1]
	b _0800158A
	.align 2, 0
_08001498: .4byte 0x04000128
_0800149C: .4byte 0x04000208
_080014A0:
	ldr r6, [r5, #8]
	adds r4, r6, #0
	movs r0, #0x80
	lsls r0, r0, #6
	cmp r6, r0
	ble _080014B0
	adds r4, r0, #0
	b _080014B6
_080014B0:
	cmp r6, #0
	bge _080014B6
	movs r4, #0
_080014B6:
	cmp r2, #0
	beq _080014BC
	str r4, [r2]
_080014BC:
	ldrb r0, [r5]
	cmp r0, #1
	beq _080014FE
	ldr r0, [r5, #0x14]
	cmp r0, r4
	bge _080014E2
	adds r3, r5, #0
	ldr r7, [r5, #4]
_080014CC:
	ldr r2, [r3, #0x14]
	lsls r0, r2, #2
	adds r0, r0, r7
	ldr r1, [r3, #0x10]
	ldr r0, [r0]
	adds r1, r1, r0
	str r1, [r3, #0x10]
	adds r2, #1
	str r2, [r3, #0x14]
	cmp r2, r4
	blt _080014CC
_080014E2:
	movs r0, #0x80
	lsls r0, r0, #6
	cmp r6, r0
	ble _08001506
	ldr r0, [r5, #0xc]
	ldr r1, [r5, #0x10]
	adds r0, r0, r1
	str r0, [r5, #0xc]
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _080014FE
	movs r0, #1
	strb r0, [r5, #3]
_080014FE:
	movs r0, #0x80
	lsls r0, r0, #6
	cmp r6, r0
	bgt _0800150C
_08001506:
	ldrb r0, [r5, #2]
	cmp r0, #0x8c
	bne _0800158A
_0800150C:
	movs r0, #3
	strb r0, [r5, #1]
	b _0800158A
_08001512:
	ldr r3, _08001564 @ =0x04000208
	movs r4, #0
	strh r4, [r3]
	ldr r2, _08001568 @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _0800156C @ =0x0000FF3F
	ands r0, r1
	strh r0, [r2]
	movs r0, #1
	strh r0, [r3]
	ldr r1, _08001570 @ =0x04000128
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r1]
	adds r0, #3
	str r0, [r1]
	ldr r2, _08001574 @ =0x04000120
	movs r0, #0
	movs r1, #0
	str r0, [r2]
	str r1, [r2, #4]
	ldrb r0, [r5]
	cmp r0, #0
	beq _08001550
	ldr r1, _08001578 @ =0x0400010C
	movs r0, #0
	str r0, [r1]
_08001550:
	ldr r0, _0800157C @ =0x04000202
	movs r1, #0xc0
	strh r1, [r0]
	ldrb r0, [r5]
	cmp r0, #0
	beq _08001586
	strb r4, [r5, #2]
	movs r0, #4
	strb r0, [r5, #1]
	b _0800158A
	.align 2, 0
_08001564: .4byte 0x04000208
_08001568: .4byte 0x04000200
_0800156C: .4byte 0x0000FF3F
_08001570: .4byte 0x04000128
_08001574: .4byte 0x04000120
_08001578: .4byte 0x0400010C
_0800157C: .4byte 0x04000202
_08001580:
	ldrb r0, [r5, #2]
	cmp r0, #2
	bls _0800158A
_08001586:
	movs r0, #1
	b _08001592
_0800158A:
	ldrb r0, [r5, #2]
	adds r0, #1
	strb r0, [r5, #2]
	movs r0, #0
_08001592:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08001598
sub_08001598: @ 0x08001598
	push {r4, r5, lr}
	ldr r2, _080015BC @ =0x04000120
	ldr r3, [r2]
	ldr r5, _080015C0 @ =0x03006440
	ldrb r0, [r5]
	adds r4, r5, #0
	cmp r0, #1
	beq _080015C8
	ldr r0, _080015C4 @ =0x04000128
	ldrh r1, [r0]
	movs r2, #0x80
	orrs r1, r2
	strh r1, [r0]
	ldr r2, [r4, #8]
	cmp r2, #0
	bge _08001614
	b _08001602
	.align 2, 0
_080015BC: .4byte 0x04000120
_080015C0: .4byte 0x03006440
_080015C4: .4byte 0x04000128
_080015C8:
	ldr r1, _080015DC @ =0x0400010E
	movs r0, #0
	strh r0, [r1]
	ldr r1, [r4, #8]
	cmp r1, #0
	bge _080015E4
	ldr r0, _080015E0 @ =0xFEFEFEFE
	str r0, [r2]
	b _0800162A
	.align 2, 0
_080015DC: .4byte 0x0400010E
_080015E0: .4byte 0xFEFEFEFE
_080015E4:
	ldr r0, _080015F8 @ =0x00001FFF
	cmp r1, r0
	bgt _080015FC
	ldr r0, [r4, #4]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	str r0, [r2]
	b _0800162A
	.align 2, 0
_080015F8: .4byte 0x00001FFF
_080015FC:
	ldr r0, [r4, #0xc]
	str r0, [r2]
	b _0800162A
_08001602:
	ldr r0, _08001610 @ =0xFEFEFEFE
	cmp r3, r0
	beq _0800162A
	subs r0, r2, #1
	str r0, [r5, #8]
	b _0800162A
	.align 2, 0
_08001610: .4byte 0xFEFEFEFE
_08001614:
	ldr r0, _08001624 @ =0x00001FFF
	cmp r2, r0
	bgt _08001628
	ldr r1, [r4, #4]
	lsls r0, r2, #2
	adds r0, r0, r1
	str r3, [r0]
	b _0800162A
	.align 2, 0
_08001624: .4byte 0x00001FFF
_08001628:
	str r3, [r4, #0xc]
_0800162A:
	ldr r1, [r4, #8]
	ldr r0, _08001654 @ =0x00002002
	cmp r1, r0
	bgt _0800164C
	adds r0, r1, #1
	str r0, [r4, #8]
	ldrb r0, [r4]
	cmp r0, #1
	bne _0800164C
	ldr r2, _08001658 @ =0x04000128
	ldrh r0, [r2]
	movs r1, #0x80
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _0800165C @ =0x0400010E
	movs r0, #0xc0
	strh r0, [r1]
_0800164C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08001654: .4byte 0x00002002
_08001658: .4byte 0x04000128
_0800165C: .4byte 0x0400010E

	thumb_func_start sub_08001660
sub_08001660: @ 0x08001660
	push {r4, lr}
	ldr r3, _08001680 @ =0x02030018
	adds r4, r3, #4
	ldrh r0, [r3, #2]
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	ldrb r0, [r3, #1]
	cmp r0, #0x1a
	bls _08001674
	b _08001844
_08001674:
	lsls r0, r0, #2
	ldr r1, _08001684 @ =_08001688
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08001680: .4byte 0x02030018
_08001684: .4byte _08001688
_08001688: @ jump table
	.4byte _0800170E @ case 0
	.4byte _080016F4 @ case 1
	.4byte _080016FC @ case 2
	.4byte _08001702 @ case 3
	.4byte _08001708 @ case 4
	.4byte _0800170E @ case 5
	.4byte _08001714 @ case 6
	.4byte _0800171C @ case 7
	.4byte _08001724 @ case 8
	.4byte _0800172C @ case 9
	.4byte _08001734 @ case 10
	.4byte _08001844 @ case 11
	.4byte _0800173C @ case 12
	.4byte _08001750 @ case 13
	.4byte _08001764 @ case 14
	.4byte _0800176A @ case 15
	.4byte _0800177C @ case 16
	.4byte _08001782 @ case 17
	.4byte _08001798 @ case 18
	.4byte _080017AC @ case 19
	.4byte _080017C0 @ case 20
	.4byte _080017D4 @ case 21
	.4byte _080017EC @ case 22
	.4byte _08001804 @ case 23
	.4byte _08001804 @ case 24
	.4byte _0800181C @ case 25
	.4byte _08001834 @ case 26
_080016F4:
	ldr r0, [r4]
	bl m4aSoundMode
	b _08001844
_080016FC:
	bl m4aSoundMain
	b _08001844
_08001702:
	bl m4aSoundVSync
	b _08001844
_08001708:
	bl m4aSoundVSyncOff
	b _08001844
_0800170E:
	bl m4aSoundVSyncOn
	b _08001844
_08001714:
	ldrh r0, [r3, #2]
	bl m4aSongNumStart
	b _08001844
_0800171C:
	ldrh r0, [r3, #2]
	bl m4aSongNumStartOrChange
	b _08001844
_08001724:
	ldrh r0, [r3, #2]
	bl m4aSongNumStartOrContinue
	b _08001844
_0800172C:
	ldrh r0, [r3, #2]
	bl m4aSongNumStop
	b _08001844
_08001734:
	ldrh r0, [r3, #2]
	bl m4aSongNumContinue
	b _08001844
_0800173C:
	ldr r0, _0800174C @ =0x08077220
	lsls r1, r2, #2
	adds r1, r1, r0
	ldr r0, [r1]
	bl m4aMPlayImmInit
	b _08001844
	.align 2, 0
_0800174C: .4byte 0x08077220
_08001750:
	ldr r0, _08001760 @ =0x08077220
	lsls r1, r2, #2
	adds r1, r1, r0
	ldr r0, [r1]
	bl MPlayStop
	b _08001844
	.align 2, 0
_08001760: .4byte 0x08077220
_08001764:
	bl m4aMPlayAllStop
	b _08001844
_0800176A:
	ldr r0, _08001778 @ =0x08077220
	lsls r1, r2, #2
	adds r1, r1, r0
	ldr r0, [r1]
	bl m4aMPlayContinue
	b _08001844
	.align 2, 0
_08001778: .4byte 0x08077220
_0800177C:
	bl m4aMPlayAllContinue
	b _08001844
_08001782:
	ldr r1, _08001794 @ =0x08077220
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r1, [r4]
	bl m4aMPlayFadeOut
	b _08001844
	.align 2, 0
_08001794: .4byte 0x08077220
_08001798:
	ldr r1, _080017A8 @ =0x08077220
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r1, [r4]
	bl m4aMPlayFadeOutTemporarily
	b _08001844
	.align 2, 0
_080017A8: .4byte 0x08077220
_080017AC:
	ldr r1, _080017BC @ =0x08077220
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r1, [r4]
	bl m4aMPlayFadeIn
	b _08001844
	.align 2, 0
_080017BC: .4byte 0x08077220
_080017C0:
	ldr r1, _080017D0 @ =0x08077220
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r1, [r4]
	bl m4aMPlayTempoControl
	b _08001844
	.align 2, 0
_080017D0: .4byte 0x08077220
_080017D4:
	ldr r1, _080017E8 @ =0x08077220
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r1, [r4]
	ldrh r2, [r4, #2]
	bl m4aMPlayVolumeControl
	b _08001844
	.align 2, 0
_080017E8: .4byte 0x08077220
_080017EC:
	ldr r1, _08001800 @ =0x08077220
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r1, [r4]
	movs r3, #2
	ldrsh r2, [r4, r3]
	bl m4aMPlayPitchControl
	b _08001844
	.align 2, 0
_08001800: .4byte 0x08077220
_08001804:
	ldr r1, _08001818 @ =0x08077220
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r1, [r4]
	movs r2, #2
	ldrsb r2, [r4, r2]
	bl m4aMPlayPanpotControl
	b _08001844
	.align 2, 0
_08001818: .4byte 0x08077220
_0800181C:
	ldr r1, _08001830 @ =0x08077220
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r1, [r4]
	ldrb r2, [r4, #2]
	bl m4aMPlayModDepthSet
	b _08001844
	.align 2, 0
_08001830: .4byte 0x08077220
_08001834:
	ldr r1, _0800184C @ =0x08077220
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r1, [r4]
	ldrb r2, [r4, #2]
	bl m4aMPlayLFOSpeedSet
_08001844:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800184C: .4byte 0x08077220

	thumb_func_start sub_08001850
sub_08001850: @ 0x08001850
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _08001864 @ =0x02030018
	cmp r0, #0
	beq _0800185E
	ldr r0, _08001868 @ =sub_08001660
_0800185E:
	str r0, [r1, #8]
	pop {r0}
	bx r0
	.align 2, 0
_08001864: .4byte 0x02030018
_08001868: .4byte sub_08001660

	thumb_func_start get_cmpr_game_code_ptr_800186c
get_cmpr_game_code_ptr_800186c: @ 0x0800186C
	ldr r1, _0800187C @ =0x08077258
	ldr r0, _08001880 @ =0x03004400
	ldrb r0, [r0, #0xd]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bx lr
	.align 2, 0
_0800187C: .4byte gCmprGameGaddgetCode_08077258
_08001880: .4byte 0x03004400

	thumb_func_start load_minigame_dll_8001884
load_minigame_dll_8001884: @ 0x08001884
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r0, _08001918 @ =0x03004400
	ldrb r1, [r0, #0xd]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r2, _0800191C @ =0x08077448
	adds r7, r0, r2
	ldr r0, _08001920 @ =0x08077258
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r6, [r1]
	movs r0, #0
	str r0, [sp, #8]
	movs r4, #0x80
	lsls r4, r4, #0x12
	ldr r2, _08001924 @ =0x0500C000
	add r0, sp, #8
	adds r1, r4, #0
	bl CpuSet
	bl sub_08009330
	bl sub_08009330
	bl sub_08009330
	bl sub_08009330
	adds r0, r6, #0
	adds r1, r4, #0
	bl LZ77UnCompReadNormalWrite8bit
	bl sub_08009330
	bl sub_08009330
	bl sub_08009330
	bl sub_08009330
	ldrb r5, [r7]
	cmp r5, #1
	bne _080018FE
	ldrb r2, [r7, #2]
	subs r2, #0x44
	ldr r0, [r6]
	lsrs r0, r0, #8
	adds r0, r0, r4
	ldr r1, _08001928 @ =0x0854F2DC
	ldr r4, _0800192C @ =0x02030000
	movs r3, #0xa
	ldrsb r3, [r4, r3]
	ldrb r4, [r4, #0x12]
	lsls r4, r4, #0x18
	asrs r4, r4, #0x18
	str r4, [sp]
	str r5, [sp, #4]
	bl sub_080025D0
_080018FE:
	bl sub_08009330
	bl sub_08009330
	bl sub_08009330
	bl sub_08009330
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08001918: .4byte 0x03004400
_0800191C: .4byte 0x08077448
_08001920: .4byte gCmprGameGaddgetCode_08077258
_08001924: .4byte 0x0500C000
_08001928: .4byte 0x0854F2DC
_0800192C: .4byte 0x02030000

	thumb_func_start sub_08001930
sub_08001930: @ 0x08001930
	ldr r1, _08001938 @ =0x03004400
	strb r0, [r1, #0xb]
	bx lr
	.align 2, 0
_08001938: .4byte 0x03004400

	thumb_func_start sub_0800193C
sub_0800193C: @ 0x0800193C
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r2, #0xd4
	lsls r2, r2, #0xe
	cmp r0, #0x43
	bhi _08001952
	movs r2, #0xd0
	lsls r2, r2, #0xe
_08001952:
	orrs r1, r2
	adds r0, r1, #0
	bl sub_08006828
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08001960
sub_08001960: @ 0x08001960
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r2, #0xd4
	lsls r2, r2, #0xe
	cmp r0, #0x44
	bhi _08001976
	movs r2, #0xd0
	lsls r2, r2, #0xe
_08001976:
	orrs r1, r2
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08001980
sub_08001980: @ 0x08001980
	push {lr}
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x7b
	bhi _080019A4
	ldr r1, _080019A0 @ =0x08077448
	lsls r0, r2, #3
	subs r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r1, [r0, #4]
	adds r0, r2, #0
	bl sub_0800193C
	b _080019A6
	.align 2, 0
_080019A0: .4byte 0x08077448
_080019A4:
	movs r0, #0
_080019A6:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080019AC
sub_080019AC: @ 0x080019AC
	push {lr}
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x7b
	bhi _080019D0
	ldr r1, _080019CC @ =0x08077448
	lsls r0, r2, #3
	subs r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r1, [r0, #4]
	adds r0, r2, #0
	bl sub_08001960
	b _080019D2
	.align 2, 0
_080019CC: .4byte 0x08077448
_080019D0:
	movs r0, #0
_080019D2:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080019D8
sub_080019D8: @ 0x080019D8
	push {lr}
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x7b
	bhi _080019F8
	ldr r0, _080019F4 @ =0x08077448
	lsls r1, r2, #3
	subs r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r0
	ldrb r0, [r1, #1]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	b _080019FA
	.align 2, 0
_080019F4: .4byte 0x08077448
_080019F8:
	movs r0, #0
_080019FA:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08001A00
sub_08001A00: @ 0x08001A00
	push {lr}
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0x7b
	bhi _08001A1C
	ldr r0, _08001A18 @ =0x020318B8
	bl TestBit_0800B87C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	b _08001A1E
	.align 2, 0
_08001A18: .4byte 0x020318B8
_08001A1C:
	movs r0, #0xff
_08001A1E:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start UnlockMinigame_08001A24
UnlockMinigame_08001A24: @ 0x08001A24
	push {r4, lr}
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x7b
	bhi _08001ACC
	cmp r4, #0x43
	bls _08001AB0
	adds r0, r4, #0
	bl sub_08001A00
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08001AC4
	adds r0, r4, #0
	bl sub_080019D8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08001A7C
	cmp r0, #1
	bgt _08001A5C
	cmp r0, #0
	beq _08001A6C
	ldr r1, _08001A58 @ =0x02031050
	b _08001AA4
	.align 2, 0
_08001A58: .4byte 0x02031050
_08001A5C:
	cmp r0, #2
	beq _08001A8C
	cmp r0, #3
	beq _08001A9C
	ldr r1, _08001A68 @ =0x02031050
	b _08001AA4
	.align 2, 0
_08001A68: .4byte 0x02031050
_08001A6C:
	ldr r1, _08001A78 @ =0x02031050
	ldrb r0, [r1, #0xc]
	adds r0, #1
	strb r0, [r1, #0xc]
	b _08001AA4
	.align 2, 0
_08001A78: .4byte 0x02031050
_08001A7C:
	ldr r1, _08001A88 @ =0x02031050
	ldrb r0, [r1, #0xd]
	adds r0, #1
	strb r0, [r1, #0xd]
	b _08001AA4
	.align 2, 0
_08001A88: .4byte 0x02031050
_08001A8C:
	ldr r1, _08001A98 @ =0x02031050
	ldrb r0, [r1, #0xe]
	adds r0, #1
	strb r0, [r1, #0xe]
	b _08001AA4
	.align 2, 0
_08001A98: .4byte 0x02031050
_08001A9C:
	ldr r1, _08001AAC @ =0x02031050
	ldrb r0, [r1, #0xf]
	adds r0, #1
	strb r0, [r1, #0xf]
_08001AA4:
	ldrb r0, [r1, #0xb]
	adds r0, #1
	strb r0, [r1, #0xb]
	b _08001AC4
	.align 2, 0
_08001AAC: .4byte 0x02031050
_08001AB0:
	adds r0, r4, #0
	bl sub_08001A00
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08001AC4
	ldr r1, _08001AD4 @ =0x02031050
	ldrb r0, [r1, #0xa]
	adds r0, #1
	strb r0, [r1, #0xa]
_08001AC4:
	ldr r0, _08001AD8 @ =0x020318B8
	adds r1, r4, #0
	bl sub_0800B844
_08001ACC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08001AD4: .4byte 0x02031050
_08001AD8: .4byte 0x020318B8

	thumb_func_start sub_08001ADC
sub_08001ADC: @ 0x08001ADC
	push {lr}
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x7b
	bhi _08001AF8
	ldr r0, _08001AF4 @ =0x08077448
	lsls r1, r2, #3
	subs r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r0
	ldrb r0, [r1, #3]
	b _08001AFA
	.align 2, 0
_08001AF4: .4byte 0x08077448
_08001AF8:
	movs r0, #0
_08001AFA:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08001B00
sub_08001B00: @ 0x08001B00
	push {lr}
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x7b
	bhi _08001B20
	ldr r0, _08001B1C @ =0x08077448
	lsls r1, r2, #3
	subs r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r0
	ldrb r0, [r1, #1]
	lsrs r0, r0, #4

	thumb_func_start thunk_sub_08001b22
thunk_sub_08001b22: @ 0x08001B18
	b _08001B22
	.align 2, 0
_08001B1C: .4byte 0x08077448
_08001B20:
	movs r0, #0
_08001B22:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08001B28
sub_08001B28: @ 0x08001B28
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x7b
	bhi _08001B38
	bl sub_08007760
	b _08001B3A
_08001B38:
	movs r0, #0
_08001B3A:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08001B40
sub_08001B40: @ 0x08001B40
	ldr r2, _08001B50 @ =0x02030000
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	bx lr
	.align 2, 0
_08001B50: .4byte 0x02030000

	thumb_func_start sub_08001B54
sub_08001B54: @ 0x08001B54
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _08001B60 @ =0x02030000
	strb r0, [r1, #9]
	strb r0, [r1, #0x11]
	bx lr
	.align 2, 0
_08001B60: .4byte 0x02030000

	thumb_func_start sub_08001B64
sub_08001B64: @ 0x08001B64
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r4, _08001B9C @ =0x02030000
	ldr r2, _08001BA0 @ =0x01000092
	mov r0, sp
	adds r1, r4, #0
	bl CpuSet
	ldrb r0, [r4]
	movs r1, #1
	orrs r0, r1
	strb r0, [r4]
	bl sub_0800B818
	strb r0, [r4, #9]
	ldr r0, _08001BA4 @ =0x03004400
	strb r5, [r0, #0xd]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08001B9C: .4byte 0x02030000
_08001BA0: .4byte 0x01000092
_08001BA4: .4byte 0x03004400

	thumb_func_start sub_08001BA8
sub_08001BA8: @ 0x08001BA8
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #4
	mov r8, r0
	adds r6, r1, #0
	adds r5, r2, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r4, _08001C08 @ =0x02030000
	ldr r2, _08001C0C @ =0x01000092
	mov r0, sp
	adds r1, r4, #0
	bl CpuSet
	ldrb r0, [r4]
	movs r1, #1
	orrs r0, r1
	strb r0, [r4]
	strb r5, [r4, #1]
	mov r0, r8
	bl sub_08007760
	str r0, [r4, #4]
	bl sub_0800B818
	strb r0, [r4, #9]
	strb r6, [r4, #0xa]
	movs r0, #1
	strb r0, [r4, #0x13]
	ldr r0, _08001C10 @ =0x03004400
	mov r1, r8
	strb r1, [r0, #0xd]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08001C08: .4byte 0x02030000
_08001C0C: .4byte 0x01000092
_08001C10: .4byte 0x03004400

	thumb_func_start sub_08001C14
sub_08001C14: @ 0x08001C14
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #4
	mov sb, r0
	mov r8, r1
	adds r6, r2, #0
	adds r5, r3, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r8, r1
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r4, _08001C78 @ =0x02030000
	ldr r2, _08001C7C @ =0x01000092
	mov r0, sp
	adds r1, r4, #0
	bl CpuSet
	ldrb r0, [r4]
	movs r1, #1
	orrs r0, r1
	strb r0, [r4]
	strb r5, [r4, #1]
	strb r6, [r4, #2]
	bl sub_0800B818
	strb r0, [r4, #9]
	mov r0, r8
	strb r0, [r4, #0xa]
	ldr r0, _08001C80 @ =0x03004400
	mov r1, sb
	strb r1, [r0, #0xd]
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08001C78: .4byte 0x02030000
_08001C7C: .4byte 0x01000092
_08001C80: .4byte 0x03004400

	thumb_func_start sub_08001C84
sub_08001C84: @ 0x08001C84
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #4
	mov r8, r0
	adds r6, r1, #0
	mov sb, r2
	adds r5, r3, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r4, _08001CE0 @ =0x02030000
	ldr r2, _08001CE4 @ =0x01000092
	mov r0, sp
	adds r1, r4, #0
	bl CpuSet
	ldrb r0, [r4]
	movs r1, #1
	orrs r0, r1
	strb r0, [r4]
	strb r5, [r4, #1]
	bl sub_0800B818
	strb r0, [r4, #9]
	strb r6, [r4, #0xa]
	mov r1, sb
	str r1, [r4, #0xc]
	ldr r0, _08001CE8 @ =0x03004400
	mov r1, r8
	strb r1, [r0, #0xd]
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08001CE0: .4byte 0x02030000
_08001CE4: .4byte 0x01000092
_08001CE8: .4byte 0x03004400

	thumb_func_start sub_08001CEC
sub_08001CEC: @ 0x08001CEC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sb, r1
	mov sl, r2
	mov r8, r3
	ldr r6, [sp, #0x28]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #4]
	mov r0, sb
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	mov r1, sl
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov sl, r1
	mov r2, r8
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov r8, r2
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	bl sub_0800B818
	adds r5, r0, #0
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	mov r0, sp
	movs r7, #0
	strh r7, [r0]
	ldr r4, _08001D74 @ =0x02030000
	ldr r2, _08001D78 @ =0x01000092
	adds r1, r4, #0
	bl CpuSet
	ldrb r0, [r4]
	movs r1, #1
	orrs r0, r1
	strb r0, [r4]
	strb r6, [r4, #1]
	mov r0, r8
	strb r0, [r4, #2]
	strb r5, [r4, #9]
	mov r1, sb
	strb r1, [r4, #0xa]
	strb r7, [r4, #0xb]
	strb r5, [r4, #0x11]
	mov r2, sl
	strb r2, [r4, #0x12]
	movs r0, #1
	strb r0, [r4, #0x13]
	ldr r0, _08001D7C @ =0x03004400
	mov r1, sp
	ldrb r1, [r1, #4]
	strb r1, [r0, #0xd]
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08001D74: .4byte 0x02030000
_08001D78: .4byte 0x01000092
_08001D7C: .4byte 0x03004400

	thumb_func_start sub_08001D80
sub_08001D80: @ 0x08001D80
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov sb, r1
	mov sl, r2
	adds r6, r3, #0
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	mov r0, sb
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	mov r1, sl
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov sl, r1
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	bl sub_0800B818
	adds r5, r0, #0
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	mov r0, sp
	movs r1, #0
	mov r8, r1
	strh r1, [r0]
	ldr r4, _08001DF8 @ =0x02030000
	ldr r2, _08001DFC @ =0x01000092
	adds r1, r4, #0
	bl CpuSet
	ldrb r1, [r4]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4]
	strb r6, [r4, #1]
	strb r5, [r4, #9]
	mov r0, sb
	strb r0, [r4, #0xa]
	mov r1, r8
	strb r1, [r4, #0xb]
	strb r5, [r4, #0x11]
	mov r0, sl
	strb r0, [r4, #0x12]
	strb r1, [r4, #0x13]
	ldr r0, _08001E00 @ =0x03004400
	strb r7, [r0, #0xd]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08001DF8: .4byte 0x02030000
_08001DFC: .4byte 0x01000092
_08001E00: .4byte 0x03004400

	thumb_func_start sub_08001E04
sub_08001E04: @ 0x08001E04
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r7, _08001E3C @ =0x03004400
	ldrb r1, [r7, #8]
	movs r6, #2
	movs r0, #8
	eors r1, r0
	rsbs r0, r1, #0
	orrs r0, r1
	asrs r0, r0, #0x1f
	ands r6, r0
	adds r0, r4, #0
	bl sub_080019D8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08001E56
	cmp r0, #1
	bgt _08001E40
	cmp r0, #0
	beq _08001E4A
	b _08001EB4
	.align 2, 0
_08001E3C: .4byte 0x03004400
_08001E40:
	cmp r0, #2
	beq _08001E72
	cmp r0, #3
	beq _08001E9C
	b _08001EB4
_08001E4A:
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_08001BA8
	b _08001EB4
_08001E56:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08001EBC
	adds r2, r0, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	str r6, [sp]
	adds r0, r4, #0
	adds r1, r5, #0
	movs r3, #0
	bl sub_08001CEC
	b _08001EB4
_08001E72:
	ldrb r0, [r7, #8]
	cmp r0, #8
	bne _08001E84
	ldr r0, _08001E80 @ =0x020335D0
	ldrb r2, [r0, #7]
	b _08001E90
	.align 2, 0
_08001E80: .4byte 0x020335D0
_08001E84:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08001EBC
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
_08001E90:
	adds r0, r4, #0
	adds r1, r5, #0
	adds r3, r6, #0
	bl sub_08001C14
	b _08001EB4
_08001E9C:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08001EBC
	adds r2, r0, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r0, r4, #0
	adds r1, r5, #0
	movs r3, #0
	bl sub_08001C84
_08001EB4:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08001EBC
sub_08001EBC: @ 0x08001EBC
	push {r4, r5, lr}
	sub sp, #0xc
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r1, _08001EF0 @ =0x0807723C
	mov r0, sp
	movs r2, #0xc
	bl memcpy
	adds r0, r4, #0
	bl sub_080019D8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08001EF4
	cmp r0, #1
	ble _08001F20
	cmp r0, #2
	beq _08001F1C
	cmp r0, #3
	beq _08001F0A
	b _08001F20
	.align 2, 0
_08001EF0: .4byte 0x0807723C
_08001EF4:
	movs r0, #3
	bl sub_0800B828
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r5, #1
	adds r1, r1, r5
	adds r0, r0, r1
	add r0, sp
	ldrb r0, [r0]
	b _08001F22
_08001F0A:
	ldr r0, _08001F18 @ =0x03004400
	ldrb r0, [r0, #8]
	cmp r0, #8
	bne _08001F1C
	movs r0, #0x1e
	b _08001F22
	.align 2, 0
_08001F18: .4byte 0x03004400
_08001F1C:
	movs r0, #0x32
	b _08001F22
_08001F20:
	movs r0, #0
_08001F22:
	add sp, #0xc
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08001F2C
sub_08001F2C: @ 0x08001F2C
	ldr r0, _08001F38 @ =0x02030000
	ldrb r0, [r0, #3]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	bx lr
	.align 2, 0
_08001F38: .4byte 0x02030000

	thumb_func_start sub_08001F3C
sub_08001F3C: @ 0x08001F3C
	ldr r0, _08001F44 @ =0x02030000
	ldr r0, [r0, #4]
	bx lr
	.align 2, 0
_08001F44: .4byte 0x02030000
