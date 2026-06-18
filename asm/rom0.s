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
	bl sub_08002B98
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
	bl sub_08002B98
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
	bl sub_0806FAE4
	b _08001844
_080016FC:
	bl sub_0806F5D0
	b _08001844
_08001702:
	bl sub_0806FCC4
	b _08001844
_08001708:
	bl sub_0806FBCC
	b _08001844
_0800170E:
	bl sub_0806FC4C
	b _08001844
_08001714:
	ldrh r0, [r3, #2]
	bl sub_0806F5DC
	b _08001844
_0800171C:
	ldrh r0, [r3, #2]
	bl sub_0806F608
	b _08001844
_08001724:
	ldrh r0, [r3, #2]
	bl sub_0806F654
	b _08001844
_0800172C:
	ldrh r0, [r3, #2]
	bl sub_0806F6A8
	b _08001844
_08001734:
	ldrh r0, [r3, #2]
	bl sub_0806F6DC
	b _08001844
_0800173C:
	ldr r0, _0800174C @ =0x08077220
	lsls r1, r2, #2
	adds r1, r1, r0
	ldr r0, [r1]
	bl sub_0806F7D4
	b _08001844
	.align 2, 0
_0800174C: .4byte 0x08077220
_08001750:
	ldr r0, _08001760 @ =0x08077220
	lsls r1, r2, #2
	adds r1, r1, r0
	ldr r0, [r1]
	bl sub_0806FEA0
	b _08001844
	.align 2, 0
_08001760: .4byte 0x08077220
_08001764:
	bl sub_0806F710
	b _08001844
_0800176A:
	ldr r0, _08001778 @ =0x08077220
	lsls r1, r2, #2
	adds r1, r1, r0
	ldr r0, [r1]
	bl sub_0806F73C
	b _08001844
	.align 2, 0
_08001778: .4byte 0x08077220
_0800177C:
	bl sub_0806F748
	b _08001844
_08001782:
	ldr r1, _08001794 @ =0x08077220
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r1, [r4]
	bl sub_0806F774
	b _08001844
	.align 2, 0
_08001794: .4byte 0x08077220
_08001798:
	ldr r1, _080017A8 @ =0x08077220
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r1, [r4]
	bl sub_0806F784
	b _08001844
	.align 2, 0
_080017A8: .4byte 0x08077220
_080017AC:
	ldr r1, _080017BC @ =0x08077220
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r1, [r4]
	bl sub_0806F7A8
	b _08001844
	.align 2, 0
_080017BC: .4byte 0x08077220
_080017C0:
	ldr r1, _080017D0 @ =0x08077220
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r1, [r4]
	bl sub_08070640
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
	bl sub_08070664
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
	bl sub_080706CC
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
	bl sub_08070740
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
	bl sub_080707CC
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
	bl sub_08070840
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
	bl sub_0800B87C
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

	thumb_func_start sub_08001A24
sub_08001A24: @ 0x08001A24
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
	bl sub_08072A10
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

	thumb_func_start sub_08001F48
sub_08001F48: @ 0x08001F48
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_08007760
	ldr r1, _08001F5C @ =0x02030000
	str r0, [r1, #4]
	pop {r0}
	bx r0
	.align 2, 0
_08001F5C: .4byte 0x02030000

	thumb_func_start sub_08001F60
sub_08001F60: @ 0x08001F60
	push {r4, lr}
	sub sp, #4
	mov r0, sp
	movs r4, #0
	strh r4, [r0]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	ldr r2, _08001FA4 @ =0x011F4000
	bl CpuSet
	ldr r0, _08001FA8 @ =0x030024E0
	movs r1, #0
	movs r2, #0xc0
	lsls r2, r2, #2
	strh r2, [r0]
	movs r2, #0x80
	lsls r2, r2, #4
	strh r2, [r0, #2]
	ldr r2, _08001FAC @ =0x00000901
	strh r2, [r0, #4]
	strh r1, [r0, #6]
	strh r1, [r0, #8]
	strh r1, [r0, #0x12]
	strh r1, [r0, #0xa]
	strh r1, [r0, #0x14]
	strh r1, [r0, #0xc]
	strh r1, [r0, #0x16]
	strh r1, [r0, #0xe]
	strh r1, [r0, #0x18]
	strh r1, [r0, #0x10]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08001FA4: .4byte 0x011F4000
_08001FA8: .4byte 0x030024E0
_08001FAC: .4byte 0x00000901

	thumb_func_start sub_08001FB0
sub_08001FB0: @ 0x08001FB0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r4, [sp, #0x18]
	ldr r5, [sp, #0x1c]
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	lsls r2, r2, #0x18
	lsls r3, r3, #0x18
	lsls r4, r4, #0x18
	lsrs r7, r4, #0x18
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	lsrs r3, r3, #0x12
	lsrs r2, r2, #0x17
	ldr r0, _08002018 @ =0x06004000
	adds r2, r2, r0
	adds r3, r3, r2
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x10
	mov ip, r1
	movs r1, #0
	cmp r1, r5
	bge _0800200E
	movs r0, #0x20
	subs r0, r0, r7
	lsls r0, r0, #1
	mov r8, r0
_08001FE8:
	adds r4, r1, #1
	cmp r7, #0
	beq _08002006
	adds r2, r7, #0
_08001FF0:
	adds r1, r6, #0
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	mov r0, ip
	orrs r1, r0
	strh r1, [r3]
	adds r3, #2
	subs r2, #1
	cmp r2, #0
	bne _08001FF0
_08002006:
	add r3, r8
	adds r1, r4, #0
	cmp r1, r5
	blt _08001FE8
_0800200E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08002018: .4byte 0x06004000

	thumb_func_start sub_0800201C
sub_0800201C: @ 0x0800201C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r4, [sp, #0x18]
	ldr r5, [sp, #0x1c]
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	lsls r2, r2, #0x18
	lsls r3, r3, #0x18
	lsls r4, r4, #0x18
	lsrs r7, r4, #0x18
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	mov ip, r5
	lsrs r3, r3, #0x12
	lsrs r2, r2, #0x17
	ldr r0, _08002094 @ =0x06004000
	adds r2, r2, r0
	adds r3, r3, r2
	adds r4, r3, #0
	adds r4, #0x40
	lsls r1, r1, #0x1c
	lsrs r5, r1, #0x10
	movs r2, #0
	cmp r2, ip
	bge _08002088
	movs r0, #0x40
	subs r0, r0, r7
	lsls r0, r0, #1
	mov r8, r0
_08002058:
	adds r1, r2, #1
	cmp r7, #0
	beq _0800207C
	adds r2, r7, #0
_08002060:
	adds r0, r6, #0
	orrs r0, r5
	strh r0, [r3]
	adds r3, #2
	adds r0, r6, #1
	orrs r0, r5
	strh r0, [r4]
	adds r4, #2
	adds r0, r6, #2
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	subs r2, #1
	cmp r2, #0
	bne _08002060
_0800207C:
	add r3, r8
	adds r4, r3, #0
	adds r4, #0x40
	adds r2, r1, #0
	cmp r2, ip
	blt _08002058
_08002088:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08002094: .4byte 0x06004000

	thumb_func_start sub_08002098
sub_08002098: @ 0x08002098
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	ldr r1, _080021A4 @ =0x08077248
	add r0, sp, #8
	movs r2, #0x10
	bl sub_08072A10
	mov r1, sl
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080021A8 @ =0x08077448
	adds r0, r0, r1
	str r0, [sp, #0x18]
	ldr r0, _080021AC @ =0x0813A8AC
	movs r1, #0xa0
	lsls r1, r1, #0x13
	bl sub_08008308
	ldr r0, _080021B0 @ =0x0813AF7C
	ldr r1, _080021B4 @ =0x05000020
	bl sub_08008308
	ldr r4, _080021B8 @ =0x0807E848
	ldr r1, _080021BC @ =0x05000040
	adds r0, r4, #0
	movs r2, #0xc
	bl CpuSet
	ldr r1, _080021C0 @ =0x05000060
	adds r0, r4, #0
	movs r2, #0xc
	bl CpuSet
	ldr r0, _080021C4 @ =0x0813A984
	movs r5, #0xc0
	lsls r5, r5, #0x13
	adds r1, r5, #0
	bl sub_08008374
	ldr r0, _080021C8 @ =0x0813AFA0
	ldr r1, _080021CC @ =0x06000400
	bl sub_08008374
	ldr r0, _080021D0 @ =0x0813A8D0
	ldr r1, _080021D4 @ =0x06004800
	movs r2, #0
	movs r3, #0
	bl sub_080083CC
	ldr r2, [sp, #0x18]
	ldrh r1, [r2, #4]
	mov r0, sl
	bl sub_0800193C
	adds r4, r0, #0
	movs r1, #0
	bl sub_080045FC
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x19
	movs r0, #6
	subs r0, r0, r1
	lsls r0, r0, #0x11
	movs r1, #0xc0
	lsls r1, r1, #0xf
	adds r0, r0, r1
	lsrs r0, r0, #0xb
	adds r0, r0, r5
	movs r1, #0
	str r1, [sp]
	adds r1, r4, #0
	movs r2, #7
	movs r3, #0
	bl sub_08004D94
	movs r0, #0xc
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0x60
	movs r1, #2
	movs r2, #9
	movs r3, #0
	bl sub_0800201C
	movs r2, #0
	str r2, [sp, #0x1c]
	movs r7, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	mov r8, r0
	ldr r5, [sp, #0x18]
	movs r1, #0xf0
	lsls r1, r1, #0xf
	str r1, [sp, #0x20]
_08002168:
	ldrh r0, [r5, #8]
	cmp r0, #0
	bne _08002170
	b _0800228C
_08002170:
	ldrb r1, [r5, #0xa]
	lsrs r0, r1, #3
	movs r6, #3
	ands r0, r6
	cmp r0, #0
	bne _080021D8
	movs r4, #7
	ands r4, r1
	cmp r4, #0
	beq _08002254
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xf
	add r0, sp
	adds r0, #8
	ldrh r0, [r0]
	mov r2, r8
	lsrs r3, r2, #0x18
	str r7, [sp]
	str r7, [sp, #4]
	movs r1, #0
	movs r2, #9
	bl sub_08001FB0
	b _08002254
	.align 2, 0
_080021A4: .4byte 0x08077248
_080021A8: .4byte 0x08077448
_080021AC: .4byte 0x0813A8AC
_080021B0: .4byte 0x0813AF7C
_080021B4: .4byte 0x05000020
_080021B8: .4byte 0x0807E848
_080021BC: .4byte 0x05000040
_080021C0: .4byte 0x05000060
_080021C4: .4byte 0x0813A984
_080021C8: .4byte 0x0813AFA0
_080021CC: .4byte 0x06000400
_080021D0: .4byte 0x0813A8D0
_080021D4: .4byte 0x06004800
_080021D8:
	movs r0, #7
	mov sb, r0
	movs r4, #7
	ands r4, r1
	cmp r4, #0
	beq _08002200
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xf
	add r0, sp
	adds r0, #8
	ldrh r0, [r0]
	mov r1, r8
	lsrs r3, r1, #0x18
	str r7, [sp]
	str r7, [sp, #4]
	movs r1, #0
	movs r2, #6
	bl sub_08001FB0
_08002200:
	ldrb r0, [r5, #0xa]
	lsrs r4, r0, #3
	ands r4, r6
	cmp r4, #0
	beq _0800222C
	lsls r0, r4, #0x10
	movs r2, #0x80
	lsls r2, r2, #0xb
	adds r4, r0, r2
	lsrs r0, r4, #0xf
	add r0, sp
	adds r0, #8
	ldrh r0, [r0]
	mov r1, r8
	lsrs r3, r1, #0x18
	movs r1, #1
	str r1, [sp]
	str r7, [sp, #4]
	movs r1, #0
	movs r2, #8
	bl sub_08001FB0
_0800222C:
	ldrb r0, [r5, #0xa]
	lsrs r4, r0, #5
	mov r2, sb
	ands r4, r2
	cmp r4, #0
	beq _08002254
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xf
	add r0, sp
	adds r0, #8
	ldrh r0, [r0]
	mov r1, r8
	lsrs r3, r1, #0x18
	str r7, [sp]
	str r7, [sp, #4]
	movs r1, #0
	movs r2, #9
	bl sub_08001FB0
_08002254:
	ldr r2, [sp, #0x20]
	lsrs r4, r2, #0x10
	ldrh r1, [r5, #8]
	mov r0, sl
	bl sub_0800193C
	adds r1, r0, #0
	lsls r0, r4, #5
	movs r2, #0xc0
	lsls r2, r2, #0x13
	adds r0, r0, r2
	movs r2, #0
	str r2, [sp]
	movs r2, #1
	movs r3, #0
	bl sub_08004D94
	mov r0, r8
	lsrs r3, r0, #0x18
	movs r0, #0xc
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0xb
	bl sub_0800201C
_0800228C:
	movs r1, #0x80
	lsls r1, r1, #0x12
	add r8, r1
	adds r5, #4
	ldr r2, [sp, #0x20]
	movs r0, #0xc0
	lsls r0, r0, #0xd
	adds r2, r2, r0
	str r2, [sp, #0x20]
	ldr r1, [sp, #0x1c]
	adds r1, #1
	str r1, [sp, #0x1c]
	cmp r1, #4
	bgt _080022AA
	b _08002168
_080022AA:
	ldr r2, [sp, #0x18]
	ldrh r0, [r2, #6]
	cmp r0, #0
	beq _080022E0
	adds r1, r0, #0
	mov r0, sl
	bl sub_0800193C
	adds r1, r0, #0
	ldr r0, _080022F0 @ =0x06001E00
	movs r2, #0
	str r2, [sp]
	movs r4, #0x1a
	str r4, [sp, #4]
	movs r2, #1
	movs r3, #0
	bl sub_08004E6C
	str r4, [sp]
	movs r0, #3
	str r0, [sp, #4]
	movs r0, #0xf0
	movs r1, #2
	movs r2, #2
	movs r3, #0xc
	bl sub_0800201C
_080022E0:
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080022F0: .4byte 0x06001E00

	thumb_func_start sub_080022F4
sub_080022F4: @ 0x080022F4
	push {r4, r5, r6, lr}
	sub sp, #8
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r5, r4, #0
	movs r0, #1
	ands r0, r4
	cmp r0, #0
	beq _0800231A
	movs r0, #8
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	movs r0, #0x20
	movs r1, #1
	movs r2, #0x14
	movs r3, #0x12
	bl sub_08001FB0
_0800231A:
	movs r6, #2
	adds r0, r4, #0
	ands r0, r6
	cmp r0, #0
	beq _08002336
	movs r0, #8
	str r0, [sp]
	str r6, [sp, #4]
	movs r0, #0x30
	movs r1, #1
	movs r2, #2
	movs r3, #0x12
	bl sub_08001FB0
_08002336:
	movs r0, #4
	ands r5, r0
	cmp r5, #0
	beq _08002350
	movs r0, #0xa
	str r0, [sp]
	str r6, [sp, #4]
	movs r0, #0x40
	movs r1, #1
	movs r2, #0xa
	movs r3, #0x12
	bl sub_08001FB0
_08002350:
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08002358
sub_08002358: @ 0x08002358
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	movs r1, #0
	mov r0, sp
	strb r1, [r0]
	bl sub_080057D0
	bl sub_08001F60
	ldr r4, _08002394 @ =0x03004400
	ldrb r0, [r4, #0xd]
	bl sub_08002098
	ldrb r0, [r4, #0xa]
	cmp r0, #0x23
	bne _08002382
	bl sub_08007310
	strb r0, [r4, #0xa]
_08002382:
	ldrb r0, [r4, #0xa]
	subs r0, #3
	cmp r0, #0x26
	bhi _08002438
	lsls r0, r0, #2
	ldr r1, _08002398 @ =_0800239C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08002394: .4byte 0x03004400
_08002398: .4byte _0800239C
_0800239C: @ jump table
	.4byte _08002460 @ case 0
	.4byte _08002438 @ case 1
	.4byte _08002438 @ case 2
	.4byte _08002438 @ case 3
	.4byte _08002438 @ case 4
	.4byte _08002460 @ case 5
	.4byte _08002438 @ case 6
	.4byte _08002438 @ case 7
	.4byte _08002438 @ case 8
	.4byte _08002438 @ case 9
	.4byte _08002460 @ case 10
	.4byte _08002460 @ case 11
	.4byte _08002460 @ case 12
	.4byte _08002438 @ case 13
	.4byte _08002438 @ case 14
	.4byte _08002438 @ case 15
	.4byte _08002438 @ case 16
	.4byte _08002438 @ case 17
	.4byte _08002438 @ case 18
	.4byte _08002438 @ case 19
	.4byte _08002442 @ case 20
	.4byte _08002442 @ case 21
	.4byte _08002442 @ case 22
	.4byte _08002438 @ case 23
	.4byte _08002438 @ case 24
	.4byte _08002438 @ case 25
	.4byte _08002438 @ case 26
	.4byte _08002438 @ case 27
	.4byte _08002438 @ case 28
	.4byte _08002438 @ case 29
	.4byte _08002438 @ case 30
	.4byte _08002438 @ case 31
	.4byte _08002438 @ case 32
	.4byte _08002438 @ case 33
	.4byte _08002460 @ case 34
	.4byte _08002438 @ case 35
	.4byte _08002438 @ case 36
	.4byte _08002460 @ case 37
	.4byte _08002460 @ case 38
_08002438:
	movs r0, #3
	bl sub_080022F4
	movs r6, #2
	b _08002468
_08002442:
	bl sub_080038E8
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08002460
	movs r0, #4
	b _08002462
_08002450:
	ldr r0, _0800245C @ =0x03004400
	ldrb r1, [r0, #0xa]
	movs r4, #0
	strb r1, [r0, #0xb]
	movs r0, #0xce
	b _08002532
	.align 2, 0
_0800245C: .4byte 0x03004400
_08002460:
	movs r0, #1
_08002462:
	bl sub_080022F4
	movs r6, #0
_08002468:
	movs r0, #0x20
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl sub_08008AF4
	ldr r0, _080024B4 @ =0x030024E0
	adds r0, #0x4f
	movs r1, #1
	strb r1, [r0]
	bl sub_08008D34
	mov r5, sp
	movs r0, #1
	rsbs r0, r0, #0
	mov r8, r0
	adds r7, r0, #0
_0800248A:
	movs r0, #1
	bl sub_08002B98
	ldr r0, _080024B8 @ =0x02037EB0
	ldrb r0, [r0, #4]
	cmp r0, #0
	beq _08002500
	bl sub_080038E8
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080024EC
	ldr r0, _080024BC @ =0x030024B0
	ldrh r1, [r0]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _080024C0
	movs r0, #0xff
	strb r0, [r5]
	b _080024CC
	.align 2, 0
_080024B4: .4byte 0x030024E0
_080024B8: .4byte 0x02037EB0
_080024BC: .4byte 0x030024B0
_080024C0:
	movs r2, #1
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08002524
	strb r2, [r5]
_080024CC:
	movs r4, #9
_080024CE:
	ldr r0, _080024E8 @ =0x00001111
	mov r1, sp
	movs r2, #1
	bl sub_080038F4
	movs r0, #1
	bl sub_08002B98
	subs r4, #1
	cmp r4, #0
	bge _080024CE
	b _08002524
	.align 2, 0
_080024E8: .4byte 0x00001111
_080024EC:
	movs r0, #0
	ldr r1, _080024FC @ =0x00001111
	mov r2, sp
	movs r3, #1
	bl sub_08003938
	b _08002524
	.align 2, 0
_080024FC: .4byte 0x00001111
_08002500:
	ldr r0, _08002514 @ =0x030024B0
	ldrh r1, [r0]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _08002518
	mov r0, r8
	strb r0, [r5]
	b _08002524
	.align 2, 0
_08002514: .4byte 0x030024B0
_08002518:
	movs r2, #1
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08002524
	strb r2, [r5]
_08002524:
	movs r4, #0
	ldrsb r4, [r5, r4]
	cmp r4, r7
	beq _08002450
	cmp r4, #1
	bne _0800248A
	movs r0, #0xcc
_08002532:
	bl sub_0806F5DC
	ldr r0, _080025A8 @ =0x03001400
	strb r4, [r0]
	ldr r5, _080025AC @ =0x02037EB0
	ldrb r0, [r5, #4]
	cmp r0, #0
	beq _08002548
	ldr r0, _080025B0 @ =0x00006602
	bl sub_08003A30
_08002548:
	ldr r4, _080025A8 @ =0x03001400
	ldrb r0, [r4]
	cmp r0, #1
	bne _08002558
	movs r0, #0
	movs r1, #0x20
	bl sub_080077EC
_08002558:
	movs r0, #0x20
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl sub_080089E8
	bl sub_08008D34
	ldrb r0, [r5, #4]
	cmp r0, #0
	beq _08002572
	bl sub_080034DC
_08002572:
	ldrb r0, [r4]
	ldr r1, _080025B4 @ =0x03004400
	cmp r0, #1
	bne _08002590
	ldrb r0, [r1, #0xa]
	cmp r0, #0x14
	beq _08002584
	cmp r0, #0x16
	bne _0800258A
_08002584:
	ldrb r0, [r1, #0xd]
	bl sub_08001F48
_0800258A:
	ldr r1, _080025B4 @ =0x03004400
	movs r0, #1
	strb r0, [r1, #0xc]
_08002590:
	ldrb r0, [r1, #0xb]
	bl sub_08008790
	bl sub_08002B0C
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080025A8: .4byte 0x03001400
_080025AC: .4byte 0x02037EB0
_080025B0: .4byte 0x00006602
_080025B4: .4byte 0x03004400

	thumb_func_start sub_080025B8
sub_080025B8: @ 0x080025B8
	ldr r0, _080025C0 @ =0x03001400
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_080025C0: .4byte 0x03001400

	thumb_func_start sub_080025C4
sub_080025C4: @ 0x080025C4
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r0, r1
	bx lr
	.align 2, 0

	thumb_func_start sub_080025D0
sub_080025D0: @ 0x080025D0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	str r0, [sp, #4]
	str r1, [sp, #8]
	str r3, [sp, #0xc]
	ldr r0, _08002620 @ =0x0203A220
	lsls r2, r2, #2
	adds r2, r2, r0
	ldr r2, [r2]
	str r2, [sp, #0x18]
	movs r0, #0
	str r0, [sp, #0x10]
	mov r8, r0
	ldrh r0, [r2]
	ldr r1, _08002624 @ =0x0000FFFF
	cmp r0, r1
	beq _080026C8
	mov r7, sp
	ldr r0, _08002628 @ =0x00003FFF
	mov sl, r0
_08002600:
	ldrh r0, [r2]
	movs r1, #0xc0
	lsls r1, r1, #8
	ands r1, r0
	movs r3, #0x80
	lsls r3, r3, #8
	adds r4, r0, #0
	cmp r1, r3
	beq _0800264A
	cmp r1, r3
	bgt _0800262C
	movs r0, #0x80
	lsls r0, r0, #7
	cmp r1, r0
	beq _08002636
	b _08002684
	.align 2, 0
_08002620: .4byte 0x0203A220
_08002624: .4byte 0x0000FFFF
_08002628: .4byte 0x00003FFF
_0800262C:
	movs r0, #0xc0
	lsls r0, r0, #8
	cmp r1, r0
	beq _08002670
	b _08002684
_08002636:
	movs r3, #1
	ldr r1, [sp, #0xc]
	lsls r0, r1, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	mov r1, sl
	ands r0, r1
	strh r0, [r7]
	adds r2, #6
	b _0800268C
_0800264A:
	movs r3, #2
	ldr r1, [sp, #0xc]
	lsls r0, r1, #1
	adds r0, r0, r2
	ldrh r1, [r0]
	ldr r0, _0800266C @ =0x00003FFF
	ands r0, r1
	strh r0, [r7]
	ldr r1, [sp, #0x40]
	lsls r0, r1, #1
	adds r0, r0, r2
	ldrh r1, [r0]
	ldr r0, _0800266C @ =0x00003FFF
	ands r0, r1
	strh r0, [r7, #2]
	adds r2, #6
	b _0800268C
	.align 2, 0
_0800266C: .4byte 0x00003FFF
_08002670:
	movs r3, #1
	ldr r1, [sp, #0x44]
	lsls r0, r1, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	mov r1, sl
	ands r0, r1
	strh r0, [r7]
	adds r2, #0xc
	b _0800268C
_08002684:
	movs r3, #1
	mov r0, sl
	ands r0, r4
	strh r0, [r7]
_0800268C:
	adds r2, #2
	mov sb, r2
	cmp r3, #0
	beq _080026BE
	mov r5, sp
	adds r6, r3, #0
_08002698:
	ldrh r1, [r5]
	adds r1, #1
	ldr r0, [sp, #8]
	bl sub_080025C4
	adds r4, r0, #0
	ldrh r1, [r5]
	ldr r0, [sp, #8]
	bl sub_080025C4
	subs r4, r4, r0
	add r8, r4
	ldr r2, [sp, #0x10]
	adds r2, #1
	str r2, [sp, #0x10]
	adds r5, #2
	subs r6, #1
	cmp r6, #0
	bne _08002698
_080026BE:
	mov r2, sb
	ldrh r0, [r2]
	ldr r1, _08002708 @ =0x0000FFFF
	cmp r0, r1
	bne _08002600
_080026C8:
	ldr r2, [sp, #0x10]
	lsls r0, r2, #2
	mov r1, r8
	adds r1, r1, r0
	str r1, [sp, #0x14]
	ldr r2, [sp, #4]
	adds r7, r2, r0
	ldr r2, [sp, #0x18]
	movs r0, #0
	str r0, [sp, #0x10]
	ldrh r0, [r2]
	ldr r1, _08002708 @ =0x0000FFFF
	cmp r0, r1
	bne _080026E6
	b _080027EC
_080026E6:
	mov sl, sp
_080026E8:
	ldrh r0, [r2]
	movs r1, #0xc0
	lsls r1, r1, #8
	ands r1, r0
	movs r3, #0x80
	lsls r3, r3, #8
	adds r4, r0, #0
	cmp r1, r3
	beq _08002730
	cmp r1, r3
	bgt _0800270C
	movs r0, #0x80
	lsls r0, r0, #7
	cmp r1, r0
	beq _08002716
	b _08002778
	.align 2, 0
_08002708: .4byte 0x0000FFFF
_0800270C:
	movs r0, #0xc0
	lsls r0, r0, #8
	cmp r1, r0
	beq _0800275C
	b _08002778
_08002716:
	movs r3, #1
	ldr r1, [sp, #0xc]
	lsls r0, r1, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	ldr r1, _0800272C @ =0x00003FFF
	ands r0, r1
	mov r1, sl
	strh r0, [r1]
	adds r2, #6
	b _08002782
	.align 2, 0
_0800272C: .4byte 0x00003FFF
_08002730:
	movs r3, #2
	ldr r1, [sp, #0xc]
	lsls r0, r1, #1
	adds r0, r0, r2
	ldrh r1, [r0]
	ldr r0, _08002758 @ =0x00003FFF
	ands r0, r1
	mov r1, sl
	strh r0, [r1]
	ldr r1, [sp, #0x40]
	lsls r0, r1, #1
	adds r0, r0, r2
	ldrh r1, [r0]
	ldr r0, _08002758 @ =0x00003FFF
	ands r0, r1
	mov r1, sl
	strh r0, [r1, #2]
	adds r2, #6
	b _08002782
	.align 2, 0
_08002758: .4byte 0x00003FFF
_0800275C:
	movs r3, #1
	ldr r1, [sp, #0x44]
	lsls r0, r1, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	ldr r1, _08002774 @ =0x00003FFF
	ands r0, r1
	mov r1, sl
	strh r0, [r1]
	adds r2, #0xc
	b _08002782
	.align 2, 0
_08002774: .4byte 0x00003FFF
_08002778:
	movs r3, #1
	ldr r0, _08002800 @ =0x00003FFF
	ands r0, r4
	mov r1, sl
	strh r0, [r1]
_08002782:
	movs r6, #0
	adds r2, #2
	mov sb, r2
	cmp r6, r3
	bge _080027E0
_0800278C:
	ldr r2, [sp, #0x10]
	lsls r0, r2, #2
	ldr r1, [sp, #4]
	adds r0, r0, r1
	subs r1, r7, r1
	str r1, [r0]
	lsls r0, r6, #1
	mov r2, sp
	adds r4, r2, r0
	ldrh r1, [r4]
	ldr r0, [sp, #8]
	str r3, [sp, #0x1c]
	bl sub_080025C4
	adds r5, r0, #0
	ldrh r1, [r4]
	adds r1, #1
	ldr r0, [sp, #8]
	bl sub_080025C4
	subs r0, r0, r5
	mov r8, r0
	ldr r1, [sp, #0x10]
	adds r1, #1
	adds r2, r6, #1
	ldr r3, [sp, #0x1c]
	cmp r0, #0
	beq _080027D8
_080027C4:
	ldrb r0, [r5]
	strb r0, [r7]
	adds r5, #1
	adds r7, #1
	movs r0, #1
	rsbs r0, r0, #0
	add r8, r0
	mov r0, r8
	cmp r0, #0
	bne _080027C4
_080027D8:
	str r1, [sp, #0x10]
	adds r6, r2, #0
	cmp r6, r3
	blt _0800278C
_080027E0:
	mov r2, sb
	ldrh r0, [r2]
	ldr r1, _08002804 @ =0x0000FFFF
	cmp r0, r1
	beq _080027EC
	b _080026E8
_080027EC:
	ldr r0, [sp, #0x14]
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08002800: .4byte 0x00003FFF
_08002804: .4byte 0x0000FFFF

	thumb_func_start sub_08002808
sub_08002808: @ 0x08002808
	push {lr}
	cmp r0, #0
	beq _08002828
	ldr r1, [r0, #0x48]
	cmp r1, #0
	beq _08002828
	ldr r0, [r0, #0x24]
	cmp r1, r0
	bhs _08002822
	ldr r1, [r1]
	ldr r0, _08002824 @ =0x12345678
	cmp r1, r0
	beq _08002828
_08002822:
	b _08002822
	.align 2, 0
_08002824: .4byte 0x12345678
_08002828:
	pop {r0}
	bx r0

	thumb_func_start sub_0800282C
sub_0800282C: @ 0x0800282C
	push {r4, r5, r6, lr}
	sub sp, #8
	movs r4, #0
	str r4, [sp]
	ldr r1, _08002894 @ =0x030022E0
	ldr r2, _08002898 @ =0x0500000B
	mov r0, sp
	bl CpuSet
	add r0, sp, #4
	movs r5, #0
	strh r4, [r0]
	ldr r6, _0800289C @ =0x02030130
	ldr r2, _080028A0 @ =0x01000360
	adds r1, r6, #0
	bl CpuSet
	str r4, [r6, #0x2c]
	adds r0, r6, #0
	adds r0, #0x6c
	str r0, [r6, #0x30]
	subs r0, #0x38
	strb r5, [r0]
	adds r1, r6, #0
	adds r1, #0x35
	movs r0, #0xff
	strb r0, [r1]
	movs r2, #1
	rsbs r2, r2, #0
	str r2, [r6, #0x38]
	adds r0, r6, #0
	adds r0, #0x98
	str r6, [r0]
	adds r0, #4
	str r4, [r0]
	adds r1, #0x6b
	adds r0, r2, #0
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r0, r6, #0
	adds r0, #0xa4
	str r2, [r0]
	ldr r0, _080028A4 @ =0x020376A0
	str r4, [r0]
	ldr r1, _080028A8 @ =0x02033788
	movs r0, #2
	strb r0, [r1]
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08002894: .4byte 0x030022E0
_08002898: .4byte 0x0500000B
_0800289C: .4byte 0x02030130
_080028A0: .4byte 0x01000360
_080028A4: .4byte 0x020376A0
_080028A8: .4byte 0x02033788

	thumb_func_start sub_080028AC
sub_080028AC: @ 0x080028AC
	bx lr
	.align 2, 0

	thumb_func_start sub_080028B0
sub_080028B0: @ 0x080028B0
	push {r4, lr}
	ldr r4, _080028CC @ =0x02030130
	ldr r0, _080028D0 @ =0x02033788
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800294E
	ldr r0, _080028D4 @ =0x030022E0
	bl sub_08076AD8
	cmp r0, #0
	beq _08002944
	ldr r0, _080028D8 @ =0x020376A0
	ldr r4, [r0]
	b _08002944
	.align 2, 0
_080028CC: .4byte 0x02030130
_080028D0: .4byte 0x02033788
_080028D4: .4byte 0x030022E0
_080028D8: .4byte 0x020376A0
_080028DC:
	ldr r4, [r4, #0x30]
	ldr r0, _0800291C @ =0x020376A0
	str r4, [r0]
	adds r1, r0, #0
	cmp r4, #0
	beq _0800294A
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	beq _08002944
	adds r0, r4, #0
	adds r0, #0x34
	ldrb r0, [r0]
	cmp r0, #0
	beq _08002944
	cmp r0, #0xff
	beq _08002944
	adds r2, r4, #0
	adds r2, #0x35
	ldrb r1, [r2]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08002944
	ldrb r1, [r2]
	movs r0, #0x81
	rsbs r0, r0, #0
	ands r1, r0
	cmp r1, #1
	beq _08002920
	cmp r1, #2
	beq _08002924
	b _08002944
	.align 2, 0
_0800291C: .4byte 0x020376A0
_08002920:
	movs r0, #2
	strb r0, [r2]
_08002924:
	ldr r0, [r4, #0x38]
	cmp r0, #0
	blt _08002944
	cmp r0, #0
	beq _08002936
	subs r0, #1
	str r0, [r4, #0x38]
	cmp r0, #0
	bgt _08002944
_08002936:
	adds r0, r4, #0
	bl sub_08002808
	adds r0, r4, #0
	movs r1, #1
	bl sub_08076AE0
_08002944:
	ldr r1, _08002954 @ =0x020376A0
	cmp r4, #0
	bne _080028DC
_0800294A:
	movs r0, #0
	str r0, [r1]
_0800294E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08002954: .4byte 0x020376A0

	thumb_func_start sub_08002958
sub_08002958: @ 0x08002958
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r6, r0, #0
	adds r7, r2, #0
	mov sb, r3
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r8, r1
	cmp r6, #0
	beq _080029AC
	cmp r7, #0
	beq _080029AC
	movs r5, #0
	movs r2, #0
	ldr r0, _0800298C @ =0x02030130
	adds r1, r0, #0
	adds r1, #0x35
	ldrb r1, [r1]
	adds r3, r0, #0
	cmp r1, #0
	bne _08002990
	adds r5, r3, #0
	b _080029A8
	.align 2, 0
_0800298C: .4byte 0x02030130
_08002990:
	adds r2, #1
	cmp r2, #0xf
	bgt _080029A8
	movs r0, #0x6c
	muls r0, r2, r0
	adds r1, r0, r3
	adds r0, r1, #0
	adds r0, #0x35
	ldrb r0, [r0]
	cmp r0, #0
	bne _08002990
	adds r5, r1, #0
_080029A8:
	cmp r5, #0
	bne _080029B0
_080029AC:
	movs r0, #0
	b _08002A24
_080029B0:
	movs r4, #0
	str r4, [sp]
	ldr r2, _08002A34 @ =0x0500001B
	mov r0, sp
	adds r1, r5, #0
	bl CpuSet
	adds r1, r5, #0
	adds r1, #0x34
	mov r0, r8
	strb r0, [r1]
	adds r2, r5, #0
	adds r2, #0x35
	movs r0, #1
	strb r0, [r2]
	str r0, [r5, #0x38]
	str r6, [r5, #0x3c]
	str r4, [r5, #0x40]
	mov r0, sb
	str r0, [r5, #0x44]
	str r7, [r5, #0x48]
	ldr r2, _08002A38 @ =0x02030130
	adds r0, r2, #0
	adds r0, #0x34
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bhs _080029F4
_080029E8:
	ldr r2, [r2, #0x30]
	adds r0, r2, #0
	adds r0, #0x34
	ldrb r0, [r0]
	cmp r0, r1
	blo _080029E8
_080029F4:
	ldr r0, [r2, #0x2c]
	str r5, [r0, #0x30]
	ldr r0, [r2, #0x2c]
	str r0, [r5, #0x2c]
	str r5, [r2, #0x2c]
	str r2, [r5, #0x30]
	ldr r1, [r5, #0x48]
	ldr r0, _08002A3C @ =0x12345678
	str r0, [r1]
	adds r0, r5, #0
	bl sub_08076AD8
	ldr r0, [r5, #0x48]
	ldr r1, [r5, #0x44]
	adds r0, r0, r1
	subs r0, #4
	str r0, [r5, #0x24]
	ldr r0, [r5, #0x3c]
	str r0, [r5, #0x28]
	ldr r1, _08002A40 @ =0x02033788
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	adds r0, r5, #0
_08002A24:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08002A34: .4byte 0x0500001B
_08002A38: .4byte 0x02030130
_08002A3C: .4byte 0x12345678
_08002A40: .4byte 0x02033788

	thumb_func_start sub_08002A44
sub_08002A44: @ 0x08002A44
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r7, r0, #0
	adds r5, r2, #0
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	ldr r0, _08002A7C @ =0x000003FF
	cmp r5, r0
	bls _08002A78
	adds r0, r5, #0
	bl sub_08007CE8
	adds r4, r0, #0
	movs r0, #0
	str r0, [sp]
	lsls r2, r5, #9
	lsrs r2, r2, #0xb
	movs r0, #0xa0
	lsls r0, r0, #0x13
	orrs r2, r0
	mov r0, sp
	adds r1, r4, #0
	bl CpuSet
	cmp r4, #0
	bne _08002A80
_08002A78:
	movs r0, #0
	b _08002A9A
	.align 2, 0
_08002A7C: .4byte 0x000003FF
_08002A80:
	adds r0, r7, #0
	adds r1, r6, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_08002958
	adds r5, r0, #0
	cmp r5, #0
	bne _08002A98
	adds r0, r4, #0
	bl sub_08007CF8
_08002A98:
	adds r0, r5, #0
_08002A9A:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08002AA4
sub_08002AA4: @ 0x08002AA4
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	cmp r4, #0
	beq _08002AF6
	ldr r0, [r4, #0x40]
	cmp r0, #0
	beq _08002AB8
	bl call_via_r0
_08002AB8:
	ldr r1, [r4, #0x2c]
	ldr r0, [r4, #0x30]
	str r0, [r1, #0x30]
	ldr r1, [r4, #0x30]
	ldr r0, [r4, #0x2c]
	str r0, [r1, #0x2c]
	ldr r1, [r4, #0x48]
	cmp r1, #0
	beq _08002AE0
	ldr r0, _08002B00 @ =0x02000000
	cmp r1, r0
	blo _08002AE0
	movs r2, #0xc0
	lsls r2, r2, #0xa
	adds r0, r0, r2
	cmp r1, r0
	bhs _08002AE0
	adds r0, r1, #0
	bl sub_08007CF8
_08002AE0:
	movs r0, #0
	str r0, [sp]
	ldr r2, _08002B04 @ =0x0500001B
	mov r0, sp
	adds r1, r4, #0
	bl CpuSet
	ldr r1, _08002B08 @ =0x02033788
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
_08002AF6:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08002B00: .4byte 0x02000000
_08002B04: .4byte 0x0500001B
_08002B08: .4byte 0x02033788

	thumb_func_start sub_08002B0C
sub_08002B0C: @ 0x08002B0C
	push {lr}
	ldr r0, _08002B20 @ =0x020376A0
	ldr r0, [r0]
	bl sub_08002AA4
	bl sub_08002B6C
	pop {r0}
	bx r0
	.align 2, 0
_08002B20: .4byte 0x020376A0

	thumb_func_start sub_08002B24
sub_08002B24: @ 0x08002B24
	push {lr}
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl sub_08002958
	bl sub_08002B4C
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08002B38
sub_08002B38: @ 0x08002B38
	push {lr}
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl sub_08002A44
	bl sub_08002B4C
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08002B4C
sub_08002B4C: @ 0x08002B4C
	push {r4, lr}
	cmp r0, #0
	beq _08002B66
	adds r0, #0x35
	ldrb r1, [r0]
	adds r4, r0, #0
	cmp r1, #0
	beq _08002B66
_08002B5C:
	bl sub_08002B6C
	ldrb r0, [r4]
	cmp r0, #0
	bne _08002B5C
_08002B66:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08002B6C
sub_08002B6C: @ 0x08002B6C
	push {r4, lr}
	ldr r4, _08002B90 @ =0x020376A0
	ldr r0, [r4]
	bl sub_08002808
	ldr r0, [r4]
	bl sub_08076AD8
	cmp r0, #0
	bne _08002B88
	ldr r0, _08002B94 @ =0x030022E0
	movs r1, #1
	bl sub_08076AE0
_08002B88:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08002B90: .4byte 0x020376A0
_08002B94: .4byte 0x030022E0

	thumb_func_start sub_08002B98
sub_08002B98: @ 0x08002B98
	push {lr}
	adds r1, r0, #0
	ldr r0, _08002BB0 @ =0x020376A0
	ldr r0, [r0]
	cmp r0, #0
	beq _08002BAA
	str r1, [r0, #0x38]
	bl sub_08002B6C
_08002BAA:
	pop {r0}
	bx r0
	.align 2, 0
_08002BB0: .4byte 0x020376A0

	thumb_func_start sub_08002BB4
sub_08002BB4: @ 0x08002BB4
	push {lr}
	cmp r0, #0
	beq _08002BBC
	str r1, [r0, #0x38]
_08002BBC:
	pop {r0}
	bx r0

	thumb_func_start sub_08002BC0
sub_08002BC0: @ 0x08002BC0
	push {lr}
	adds r1, r0, #0
	cmp r1, #0
	beq _08002BD2
	ldr r0, [r1, #0x38]
	cmp r0, #0
	bgt _08002BD2
	movs r0, #1
	str r0, [r1, #0x38]
_08002BD2:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08002BD8
sub_08002BD8: @ 0x08002BD8
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r4, _08002BE4 @ =0x0203019C
	b _08002BFA
	.align 2, 0
_08002BE4: .4byte 0x0203019C
_08002BE8:
	ldrb r0, [r1]
	cmp r0, #0
	beq _08002BF8
	cmp r0, #0xff
	beq _08002BF8
	adds r0, r4, #0
	bl sub_08002AA4
_08002BF8:
	ldr r4, [r4, #0x2c]
_08002BFA:
	adds r1, r4, #0
	adds r1, #0x34
	ldrb r0, [r1]
	cmp r0, r5
	bhs _08002BE8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08002C0C
sub_08002C0C: @ 0x08002C0C
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r3, _08002C1C @ =0x0203019C
	b _08002C48
	.align 2, 0
_08002C1C: .4byte 0x0203019C
_08002C20:
	ldrb r0, [r1]
	cmp r0, #0
	beq _08002C46
	cmp r0, #0xff
	beq _08002C46
	cmp r5, #0
	beq _08002C3A
	adds r2, r3, #0
	adds r2, #0x35
	ldrb r1, [r2]
	movs r0, #0x80
	orrs r0, r1
	b _08002C44
_08002C3A:
	adds r2, r3, #0
	adds r2, #0x35
	ldrb r1, [r2]
	movs r0, #0x7f
	ands r0, r1
_08002C44:
	strb r0, [r2]
_08002C46:
	ldr r3, [r3, #0x2c]
_08002C48:
	adds r1, r3, #0
	adds r1, #0x34
	ldrb r0, [r1]
	cmp r0, r4
	bhs _08002C20
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08002C58
sub_08002C58: @ 0x08002C58
	push {lr}
	cmp r0, #0
	beq _08002C64
	cmp r1, #0
	beq _08002C64
	str r1, [r0, #0x40]
_08002C64:
	pop {r0}
	bx r0

	thumb_func_start sub_08002C68
sub_08002C68: @ 0x08002C68
	push {lr}
	cmp r0, #0
	beq _08002C72
	adds r0, #0x4c
	b _08002C74
_08002C72:
	movs r0, #0
_08002C74:
	pop {r1}
	bx r1

	thumb_func_start sub_08002C78
sub_08002C78: @ 0x08002C78
	push {lr}
	ldr r0, _08002C88 @ =0x020376A0
	ldr r0, [r0]
	cmp r0, #0
	beq _08002C8C
	adds r0, #0x4c
	b _08002C8E
	.align 2, 0
_08002C88: .4byte 0x020376A0
_08002C8C:
	movs r0, #0
_08002C8E:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08002C94
sub_08002C94: @ 0x08002C94
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x10
	movs r4, #0
	add r7, sp, #8
	add r0, sp, #0xc
	mov r8, r0
_08002CA4:
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	movs r1, #8
	bl sub_080077EC
	adds r4, #1
	cmp r4, #6
	ble _08002CA4
	movs r0, #8
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl sub_080089E8
	bl sub_08008D34
	bl sub_08005A2C
	bl sub_0800580C
	bl sub_08003FE4
	movs r4, #0
	str r4, [sp, #4]
	movs r6, #0xc0
	lsls r6, r6, #0x13
	ldr r2, _08002DD4 @ =0x01006000
	add r0, sp, #4
	adds r1, r6, #0
	bl CpuFastSet
	ldr r5, _08002DD8 @ =0x030024E0
	movs r0, #0x90
	lsls r0, r0, #4
	strh r0, [r5]
	ldr r0, _08002DDC @ =0x00001E03
	strh r0, [r5, #8]
	strh r4, [r5, #0x18]
	strh r4, [r5, #0x10]
	movs r0, #1
	bl sub_08002B98
	bl sub_08003F9C
	movs r0, #0x80
	str r0, [sp]
	movs r0, #3
	movs r1, #0x1f
	movs r2, #0xe
	movs r3, #0
	bl sub_08004028
	bl sub_080057D0
	ldr r0, _08002DE0 @ =0x08133834
	movs r1, #0xa0
	lsls r1, r1, #0x13
	bl sub_08008308
	ldr r0, _08002DE4 @ =0x081339C8
	adds r1, r6, #0
	bl sub_08008374
	ldr r0, _08002DE8 @ =0x08133910
	ldr r1, _08002DEC @ =0x0600F000
	movs r2, #0
	movs r3, #0
	bl sub_080083CC
	ldr r0, _08002DF0 @ =0x004F0008
	bl sub_08006828
	adds r4, r0, #0
	adds r1, r7, #0
	bl sub_080045FC
	add r0, sp, #8
	ldrb r1, [r0]
	lsls r1, r1, #0x10
	ldr r2, _08002DF4 @ =0xFF00FFFF
	ldr r0, [sp, #0xc]
	ands r0, r2
	orrs r0, r1
	str r0, [sp, #0xc]
	ldrb r1, [r7, #1]
	lsls r1, r1, #0x18
	ldr r2, _08002DF8 @ =0x00FFFFFF
	ands r2, r0
	orrs r2, r1
	lsls r0, r2, #8
	asrs r0, r0, #0x18
	lsls r0, r0, #0x18
	asrs r1, r0, #0x18
	lsrs r0, r0, #0x1f
	adds r1, r1, r0
	asrs r1, r1, #1
	movs r0, #0xf
	subs r0, r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _08002DFC @ =0xFFFFFF00
	ands r2, r1
	orrs r2, r0
	ldr r0, _08002E00 @ =0xFFFF00FF
	ands r2, r0
	movs r0, #0x80
	lsls r0, r0, #4
	orrs r2, r0
	str r2, [sp, #0xc]
	mov r0, r8
	movs r1, #0
	bl sub_08004300
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	movs r0, #8
	movs r1, #0
	bl sub_080044C0
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	adds r1, r4, #0
	bl sub_08004C50
	movs r0, #4
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl sub_08008AF4
	adds r5, #0x4f
	movs r0, #1
	strb r0, [r5]
	bl sub_08008D34
_08002DB2:
	ldr r0, _08002E04 @ =0x030024B0
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08002EA4
	ldr r0, _08002E08 @ =0x03004400
	ldrb r0, [r0, #8]
	subs r0, #0x11
	cmp r0, #0x1c
	bhi _08002E9C
	lsls r0, r0, #2
	ldr r1, _08002E0C @ =_08002E10
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08002DD4: .4byte 0x01006000
_08002DD8: .4byte 0x030024E0
_08002DDC: .4byte 0x00001E03
_08002DE0: .4byte 0x08133834
_08002DE4: .4byte 0x081339C8
_08002DE8: .4byte 0x08133910
_08002DEC: .4byte 0x0600F000
_08002DF0: .4byte 0x004F0008
_08002DF4: .4byte 0xFF00FFFF
_08002DF8: .4byte 0x00FFFFFF
_08002DFC: .4byte 0xFFFFFF00
_08002E00: .4byte 0xFFFF00FF
_08002E04: .4byte 0x030024B0
_08002E08: .4byte 0x03004400
_08002E0C: .4byte _08002E10
_08002E10: @ jump table
	.4byte _08002E8C @ case 0
	.4byte _08002E9C @ case 1
	.4byte _08002E9C @ case 2
	.4byte _08002E9C @ case 3
	.4byte _08002E84 @ case 4
	.4byte _08002E9C @ case 5
	.4byte _08002E8C @ case 6
	.4byte _08002E8C @ case 7
	.4byte _08002E8C @ case 8
	.4byte _08002E9C @ case 9
	.4byte _08002E84 @ case 10
	.4byte _08002E9C @ case 11
	.4byte _08002E9C @ case 12
	.4byte _08002E94 @ case 13
	.4byte _08002E9C @ case 14
	.4byte _08002E9C @ case 15
	.4byte _08002E9C @ case 16
	.4byte _08002E9C @ case 17
	.4byte _08002E9C @ case 18
	.4byte _08002E9C @ case 19
	.4byte _08002E9C @ case 20
	.4byte _08002E9C @ case 21
	.4byte _08002E9C @ case 22
	.4byte _08002E9C @ case 23
	.4byte _08002E9C @ case 24
	.4byte _08002E9C @ case 25
	.4byte _08002E9C @ case 26
	.4byte _08002E9C @ case 27
	.4byte _08002E84 @ case 28
_08002E84:
	movs r0, #0x2c
	bl sub_08008790
	b _08002EAC
_08002E8C:
	movs r0, #0x2a
	bl sub_08008790
	b _08002EAC
_08002E94:
	movs r0, #0x1e
	bl sub_08008790
	b _08002EAC
_08002E9C:
	movs r0, #0x12
	bl sub_08008790
	b _08002EAC
_08002EA4:
	movs r0, #1
	bl sub_08002B98
	b _08002DB2
_08002EAC:
	movs r0, #4
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl sub_080089E8
	bl sub_08008D34
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	bl sub_080043F0
	ldr r0, _08002EDC @ =0x03002530
	ldr r0, [r0]
	bl sub_08002AA4
	bl sub_08002B0C
	add sp, #0x10
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08002EDC: .4byte 0x03002530

	thumb_func_start sub_08002EE0
sub_08002EE0: @ 0x08002EE0
	push {r4, lr}
	ldr r4, _08002F00 @ =0x02037EB0
	ldr r0, [r4]
	cmp r0, #0
	beq _08002EF2
	movs r1, #1
	rsbs r1, r1, #0
	bl sub_08002BB4
_08002EF2:
	ldrb r0, [r4, #5]
	cmp r0, #2
	bne _08002F04
	bl sub_08003B08
	b _08002F08
	.align 2, 0
_08002F00: .4byte 0x02037EB0
_08002F04:
	bl sub_080034DC
_08002F08:
	bl sub_080056C0
	bl sub_08005918
	bl sub_08007CD4
	ldr r0, _08002F28 @ =sub_08002C94
	movs r2, #0x80
	lsls r2, r2, #3
	movs r1, #0x40
	bl sub_08002A44
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08002F28: .4byte sub_08002C94

	thumb_func_start sub_08002F2C
sub_08002F2C: @ 0x08002F2C
	push {r4, r5, r6, lr}
	sub sp, #4
	ldr r4, _08002F7C @ =0x02037ED4
	adds r0, r4, #0
	bl sub_08000DC4
	adds r5, r4, #0
	subs r5, #0x24
	str r0, [r4, #0x6c]
	bl sub_08000D58
	adds r2, r4, #0
	adds r2, #0x74
	ldrb r0, [r2]
	cmp r0, #0
	bne _08002F84
	ldr r0, [r4, #0x6c]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08002F92
	ldrb r0, [r5, #7]
	adds r1, r0, #1
	strb r1, [r5, #7]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bls _08002F92
	ldr r0, _08002F80 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	adds r1, r4, #0
	adds r1, #0x75
	strb r0, [r1]
	movs r0, #1
	strb r0, [r2]
	b _08002F92
	.align 2, 0
_08002F7C: .4byte 0x02037ED4
_08002F80: .4byte 0x04000128
_08002F84:
	ldr r0, _08002FCC @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	adds r1, r4, #0
	adds r1, #0x75
	strb r0, [r1]
_08002F92:
	ldr r1, _08002FD0 @ =0x02037EB0
	ldrb r0, [r1, #6]
	mov ip, r1
	cmp r0, #0
	beq _0800301C
	mov r3, ip
	adds r3, #0x84
	ldr r1, [r3]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0800301C
	mov r0, ip
	adds r0, #0x90
	ldr r2, [r0]
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _08002FC8
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08002FD4
_08002FC8:
	str r1, [r3]
	b _0800301C
	.align 2, 0
_08002FCC: .4byte 0x04000128
_08002FD0: .4byte 0x02037EB0
_08002FD4:
	movs r4, #0x80
	lsls r4, r4, #8
	adds r0, r2, #0
	ands r0, r4
	cmp r0, #0
	beq _08002FF0
	lsls r1, r2, #0x1c
	lsrs r1, r1, #0x1c
	lsls r0, r2, #0x14
	lsrs r0, r0, #0x1c
	cmp r1, r0
	beq _08002FF0
	str r4, [r3]
	b _0800301C
_08002FF0:
	mov r1, ip
	ldrb r0, [r1, #0xa]
	cmp r0, #0
	beq _0800301C
	mov r0, ip
	adds r0, #0x90
	ldr r1, [r0]
	lsls r0, r1, #0x1c
	lsrs r2, r0, #0x1c
	mov r3, ip
	ldrb r3, [r3, #0xa]
	cmp r2, r3
	bne _08003012
	lsls r0, r1, #0x14
	lsrs r0, r0, #0x1c
	cmp r0, r2
	beq _0800301C
_08003012:
	mov r1, ip
	adds r1, #0x84
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [r1]
_0800301C:
	movs r3, #0
	ldr r4, _080030A0 @ =0x0203A300
	ldr r6, _080030A4 @ =0x02037EBC
	adds r1, r6, #0
	movs r2, #0xb
_08003026:
	ldrh r0, [r1]
	orrs r3, r0
	adds r1, #2
	subs r2, #1
	cmp r2, #0
	bge _08003026
	cmp r3, #0
	bne _0800303C
	movs r0, #0xc8
	mov r1, ip
	strh r0, [r1, #0xc]
_0800303C:
	ldrb r0, [r4]
	cmp r0, #0
	beq _0800304A
	ldr r0, _080030A8 @ =0x02034E98
	ldrh r0, [r0, #6]
	mov r3, ip
	strh r0, [r3, #0x22]
_0800304A:
	adds r4, r6, #0
	adds r0, r4, #0
	movs r1, #0
	bl sub_08000F34
	mov r0, sp
	movs r5, #0
	strh r5, [r0]
	ldr r2, _080030AC @ =0x0100000C
	adds r1, r4, #0
	bl CpuSet
	adds r2, r4, #0
	adds r2, #0x84
	ldr r0, [r2]
	lsls r1, r0, #0x1c
	lsrs r1, r1, #0x1c
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x1c
	cmp r1, r0
	bne _0800307E
	ldrh r1, [r2]
	ldr r0, _080030B0 @ =0x00000F0F
	ands r0, r1
	cmp r0, #0
	bne _080030B4
_0800307E:
	subs r4, #0xc
	ldrb r0, [r4, #9]
	adds r0, #1
	strb r0, [r4, #9]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3c
	bls _080030BA
	movs r0, #0
	bl sub_08000C64
	bl sub_08000D58
	strb r5, [r4, #9]
	strb r5, [r4, #8]
	b _080030BA
	.align 2, 0
_080030A0: .4byte 0x0203A300
_080030A4: .4byte 0x02037EBC
_080030A8: .4byte 0x02034E98
_080030AC: .4byte 0x0100000C
_080030B0: .4byte 0x00000F0F
_080030B4:
	adds r0, r6, #0
	subs r0, #0xc
	strb r5, [r0, #9]
_080030BA:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080030C4
sub_080030C4: @ 0x080030C4
	push {r4, r5, lr}
	ldr r0, _080030DC @ =0x02037EB0
	adds r0, #0x88
	ldr r0, [r0]
	cmp r0, #5
	bls _080030D2
	b _0800328E
_080030D2:
	lsls r0, r0, #2
	ldr r1, _080030E0 @ =_080030E4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080030DC: .4byte 0x02037EB0
_080030E0: .4byte _080030E4
_080030E4: @ jump table
	.4byte _080030FC @ case 0
	.4byte _0800310A @ case 1
	.4byte _08003148 @ case 2
	.4byte _08003178 @ case 3
	.4byte _0800321C @ case 4
	.4byte _0800326C @ case 5
_080030FC:
	ldr r2, _0800313C @ =0x02037EB0
	adds r1, r2, #0
	adds r1, #0x94
	movs r0, #0
	str r0, [r1]
	movs r0, #0xc8
	strh r0, [r2, #0xc]
_0800310A:
	ldr r0, _08003140 @ =0x03006011
	movs r1, #0
	bl sub_080092F0
	ldr r4, _0800313C @ =0x02037EB0
	adds r0, r4, #0
	adds r0, #0x94
	ldr r0, [r0]
	movs r1, #0xf0
	lsls r1, r1, #4
	ands r0, r1
	lsrs r0, r0, #8
	bl sub_08000C64
	adds r1, r4, #0
	adds r1, #0xa9
	movs r0, #0
	strb r0, [r1]
	subs r1, #0x21
	ldr r0, [r1]
	cmp r0, #0
	bne _08003144
	movs r0, #3
	b _0800328C
	.align 2, 0
_0800313C: .4byte 0x02037EB0
_08003140: .4byte 0x03006011
_08003144:
	movs r0, #2
	b _0800328C
_08003148:
	ldr r2, _08003214 @ =0x02037EB0
	adds r0, r2, #0
	adds r0, #0x90
	ldr r1, [r0]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08003174
	movs r0, #0x40
	ands r1, r0
	cmp r1, #0
	beq _0800316C
	adds r0, r2, #0
	adds r0, #0xac
	ldr r1, [r0]
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_0800316C:
	adds r1, r2, #0
	adds r1, #0x88
	movs r0, #3
	str r0, [r1]
_08003174:
	bl sub_08000D58
_08003178:
	ldr r2, _08003214 @ =0x02037EB0
	adds r0, r2, #0
	adds r0, #0x90
	ldr r1, [r0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080031B2
	movs r0, #0x80
	ands r1, r0
	cmp r1, #0
	beq _080031AA
	adds r0, r2, #0
	adds r0, #0xb0
	ldrb r1, [r0]
	subs r0, #0x14
	ldr r0, [r0]
	lsrs r0, r0, #0xf
	cmp r1, r0
	blo _080031AA
	adds r0, r2, #0
	adds r0, #0xa8
	ldrb r0, [r0]
	cmp r0, #0
	beq _080031B2
_080031AA:
	adds r1, r2, #0
	adds r1, #0x88
	movs r0, #4
	str r0, [r1]
_080031B2:
	ldr r2, _08003214 @ =0x02037EB0
	adds r0, r2, #0
	adds r0, #0xb1
	ldrb r0, [r0]
	cmp r0, #0
	beq _080031D4
	adds r0, r2, #0
	adds r0, #0x90
	ldr r0, [r0]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080031D4
	adds r1, r2, #0
	adds r1, #0xa9
	movs r0, #1
	strb r0, [r1]
_080031D4:
	ldr r4, _08003218 @ =0x02037ED4
	adds r0, r4, #0
	bl sub_08000DC4
	str r0, [r4, #0x6c]
	adds r0, r4, #0
	adds r0, #0x84
	ldrb r0, [r0]
	cmp r0, #0
	beq _080031EC
	bl sub_08000D58
_080031EC:
	adds r3, r4, #0
	adds r3, #0x8c
	ldrb r2, [r4, #1]
	ldrb r0, [r3]
	cmp r0, r2
	beq _08003202
	movs r1, #0
	strb r2, [r3]
	adds r0, r4, #0
	adds r0, #0x90
	str r1, [r0]
_08003202:
	adds r2, r4, #0
	adds r2, #0x80
	ldrb r1, [r3]
	lsls r1, r1, #0xf
	ldr r0, [r4, #0x7c]
	adds r0, r0, r1
	str r0, [r2]
	b _0800328E
	.align 2, 0
_08003214: .4byte 0x02037EB0
_08003218: .4byte 0x02037ED4
_0800321C:
	bl sub_08000D74
	ldr r4, _08003240 @ =0x02037EB0
	adds r0, r4, #0
	adds r0, #0xb0
	ldrb r1, [r0]
	subs r0, #0x14
	ldr r0, [r0]
	lsrs r0, r0, #0xf
	cmp r1, r0
	bne _08003244
	adds r1, r4, #0
	adds r1, #0xaa
	movs r0, #1
	strb r0, [r1]
	subs r1, #0x22
	movs r0, #6
	b _0800328C
	.align 2, 0
_08003240: .4byte 0x02037EB0
_08003244:
	ldr r0, _08003268 @ =0x03006011
	movs r1, #0
	bl sub_080092F0
	adds r0, r4, #0
	adds r0, #0x90
	ldr r0, [r0]
	movs r1, #0x80
	ands r0, r1
	adds r1, r4, #0
	adds r1, #0xa4
	ldr r1, [r1]
	bl sub_08001304
	adds r1, r4, #0
	adds r1, #0x88
	movs r0, #5
	b _0800328C
	.align 2, 0
_08003268: .4byte 0x03006011
_0800326C:
	ldr r4, _080032C4 @ =0x02037F64
	adds r0, r4, #0
	bl sub_080013B4
	cmp r0, #0
	beq _0800328E
	adds r2, r4, #0
	subs r2, #0x20
	adds r1, r4, #0
	subs r1, #0x24
	ldr r0, [r1]
	str r0, [r2]
	movs r0, #0
	str r0, [r1]
	subs r1, #8
	movs r0, #1
_0800328C:
	str r0, [r1]
_0800328E:
	ldr r2, _080032C8 @ =0x02037EB0
	adds r5, r2, #0
	adds r5, #0x84
	ldr r1, [r5]
	movs r0, #1
	rsbs r0, r0, #0
	adds r3, r2, #0
	cmp r1, r0
	beq _080032EE
	adds r0, r3, #0
	adds r0, #0x90
	ldr r2, [r0]
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _080032BE
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _080032CC
_080032BE:
	str r1, [r5]
	b _080032EE
	.align 2, 0
_080032C4: .4byte 0x02037F64
_080032C8: .4byte 0x02037EB0
_080032CC:
	movs r4, #0x80
	lsls r4, r4, #8
	adds r0, r2, #0
	ands r0, r4
	lsls r1, r2, #0x1c
	lsrs r1, r1, #0x1c
	lsls r0, r2, #0x14
	lsrs r0, r0, #0x1c
	cmp r1, r0
	beq _080032EE
	adds r0, r3, #0
	adds r0, #0x88
	ldr r0, [r0]
	subs r0, #2
	cmp r0, #1
	bhi _080032EE
	str r4, [r5]
_080032EE:
	adds r2, r3, #0
	adds r2, #0x98
	ldrb r0, [r2]
	cmp r0, #0
	bne _08003320
	adds r0, r3, #0
	adds r0, #0x90
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0800332E
	ldr r0, _0800331C @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	adds r1, r3, #0
	adds r1, #0x99
	strb r0, [r1]
	movs r0, #1
	strb r0, [r2]
	b _0800332E
	.align 2, 0
_0800331C: .4byte 0x04000128
_08003320:
	ldr r0, _08003340 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	adds r1, r3, #0
	adds r1, #0x99
	strb r0, [r1]
_0800332E:
	ldr r0, _08003344 @ =0x02037EBC
	adds r1, r0, #0
	adds r1, #0x9d
	ldrb r1, [r1]
	bl sub_08000F34
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08003340: .4byte 0x04000128
_08003344: .4byte 0x02037EBC

	thumb_func_start sub_08003348
sub_08003348: @ 0x08003348
	push {lr}
	ldr r1, _08003360 @ =0x02037EB0
	ldrb r0, [r1, #4]
	cmp r0, #0
	beq _080033AC
	ldrb r0, [r1, #5]
	cmp r0, #1
	beq _08003364
	cmp r0, #2
	beq _0800336A
	b _0800336E
	.align 2, 0
_08003360: .4byte 0x02037EB0
_08003364:
	bl sub_08002F2C
	b _0800336E
_0800336A:
	bl sub_080030C4
_0800336E:
	ldr r0, _08003394 @ =0x02037EB0
	ldrb r1, [r0, #4]
	adds r2, r0, #0
	cmp r1, #1
	bne _08003398
	adds r0, #0x84
	ldr r0, [r0]
	cmp r0, #0
	beq _08003398
	ldrb r0, [r2, #8]
	adds r0, #1
	strb r0, [r2, #8]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1e
	bls _0800339C
_0800338E:
	bl sub_08002EE0
	b _080033AC
	.align 2, 0
_08003394: .4byte 0x02037EB0
_08003398:
	movs r0, #0
	strb r0, [r2, #8]
_0800339C:
	adds r2, #0x84
	ldr r1, [r2]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0800338E
	movs r0, #0
	str r0, [r2]
_080033AC:
	pop {r0}
	bx r0

	thumb_func_start sub_080033B0
sub_080033B0: @ 0x080033B0
	push {r4, r5, r6, lr}
	sub sp, #0xc
	bl sub_08006828
	adds r6, r0, #0
	mov r5, sp
	mov r1, sp
	bl sub_080045FC
	ldr r3, _08003448 @ =0xFFFFFF00
	ldr r0, [sp, #4]
	ands r0, r3
	movs r1, #5
	orrs r0, r1
	ldr r4, _0800344C @ =0xFFFF00FF
	ands r0, r4
	movs r1, #0xc0
	lsls r1, r1, #3
	orrs r0, r1
	ldr r1, _08003450 @ =0xFF00FFFF
	ands r0, r1
	movs r1, #0xa0
	lsls r1, r1, #0xd
	orrs r0, r1
	ldr r1, _08003454 @ =0x00FFFFFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x14
	orrs r0, r1
	str r0, [sp, #4]
	mov r0, sp
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsrs r0, r1, #0x1f
	adds r1, r1, r0
	asrs r1, r1, #1
	movs r0, #9
	subs r0, r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, [sp, #8]
	ands r2, r3
	orrs r2, r0
	str r2, [sp, #8]
	movs r1, #1
	ldrsb r1, [r5, r1]
	lsrs r0, r1, #0x1f
	adds r1, r1, r0
	asrs r1, r1, #1
	movs r0, #3
	subs r0, r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x10
	ands r2, r4
	orrs r2, r0
	str r2, [sp, #8]
	add r0, sp, #4
	movs r1, #1
	bl sub_08004300
	adds r4, r0, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	add r1, sp, #8
	adds r0, r4, #0
	bl sub_08004568
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08004C50
	adds r0, r4, #0
	add sp, #0xc
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08003448: .4byte 0xFFFFFF00
_0800344C: .4byte 0xFFFF00FF
_08003450: .4byte 0xFF00FFFF
_08003454: .4byte 0x00FFFFFF

	thumb_func_start sub_08003458
sub_08003458: @ 0x08003458
	push {lr}
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl sub_080043F0
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08003468
sub_08003468: @ 0x08003468
	push {r4, r5, lr}
	sub sp, #4
	mov r0, sp
	movs r4, #0
	strh r4, [r0]
	ldr r5, _080034CC @ =0x02037EBC
	ldr r2, _080034D0 @ =0x0100000C
	adds r1, r5, #0
	bl CpuSet
	mov r0, sp
	adds r0, #2
	strh r4, [r0]
	adds r1, r5, #0
	adds r1, #0x18
	ldr r2, _080034D4 @ =0x01000030
	bl CpuSet
	adds r2, r5, #0
	subs r2, #0xc
	movs r1, #0
	str r1, [r5, #0x78]
	movs r0, #2
	str r0, [r5, #0x7c]
	adds r0, r5, #0
	adds r0, #0x84
	str r1, [r0]
	adds r0, #8
	strb r4, [r0]
	adds r0, #1
	strb r4, [r0]
	strb r4, [r2, #4]
	movs r0, #1
	strb r0, [r2, #5]
	strb r4, [r2, #6]
	strb r4, [r2, #7]
	strb r4, [r2, #8]
	strb r4, [r2, #9]
	movs r0, #3
	strb r0, [r2, #0xa]
	ldr r0, _080034D8 @ =0x0203A300
	strb r4, [r0]
	movs r0, #0
	bl sub_08000C64
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080034CC: .4byte 0x02037EBC
_080034D0: .4byte 0x0100000C
_080034D4: .4byte 0x01000030
_080034D8: .4byte 0x0203A300

	thumb_func_start sub_080034DC
sub_080034DC: @ 0x080034DC
	push {r4, lr}
	ldr r4, _08003508 @ =0x02037EB0
	ldrb r0, [r4, #4]
	cmp r0, #0
	beq _08003500
	bl sub_08000D74
	adds r2, r4, #0
	adds r2, #0x8c
	adds r1, r4, #0
	adds r1, #0x88
	ldr r0, [r1]
	str r0, [r2]
	movs r0, #0
	str r0, [r1]
	strb r0, [r4, #4]
	ldr r1, _0800350C @ =0x0203A300
	strb r0, [r1]
_08003500:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08003508: .4byte 0x02037EB0
_0800350C: .4byte 0x0203A300

	thumb_func_start sub_08003510
sub_08003510: @ 0x08003510
	ldr r1, _08003528 @ =0x02037EB0
	ldr r0, _0800352C @ =0x020376A0
	ldr r0, [r0]
	str r0, [r1]
	adds r2, r1, #0
	adds r2, #0x88
	movs r0, #2
	str r0, [r2]
	movs r0, #1
	strb r0, [r1, #4]
	bx lr
	.align 2, 0
_08003528: .4byte 0x02037EB0
_0800352C: .4byte 0x020376A0

	thumb_func_start sub_08003530
sub_08003530: @ 0x08003530
	ldr r1, _08003538 @ =0x02037EB0
	movs r0, #2
	strb r0, [r1, #4]
	bx lr
	.align 2, 0
_08003538: .4byte 0x02037EB0

	thumb_func_start sub_0800353C
sub_0800353C: @ 0x0800353C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	mov r0, sp
	mov r1, r8
	strb r1, [r0]
	movs r7, #0
	ldr r1, _080035D4 @ =0x0203A300
	movs r0, #1
	strb r0, [r1]
	ldr r6, _080035D8 @ =0x02037EB0
_0800355A:
	movs r0, #1
	bl sub_08002B98
	adds r0, r6, #0
	adds r0, #0x98
	ldrb r0, [r0]
	cmp r0, #0
	beq _08003618
	adds r0, r6, #0
	adds r0, #0x90
	ldr r1, [r0]
	lsls r0, r1, #0x1c
	lsrs r2, r0, #0x1c
	ldrb r0, [r6, #0xa]
	cmp r2, r0
	bne _08003618
	lsls r0, r1, #0x14
	lsrs r0, r0, #0x1c
	cmp r0, r2
	bne _08003618
	ldr r5, _080035DC @ =0x00009999
	adds r0, r5, #0
	mov r1, sp
	movs r2, #1
	bl sub_080038F4
	movs r1, #0
	adds r0, r6, #0
	adds r0, #0x99
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800359C
	movs r1, #1
_0800359C:
	mov r4, sp
	adds r4, #1
	adds r0, r1, #0
	adds r1, r5, #0
	adds r2, r4, #0
	movs r3, #1
	bl sub_08003938
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r5
	bne _080035E6
	ldrb r0, [r4]
	cmp r0, r8
	bne _080035E0
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #0xa
	bls _080035E8
	movs r0, #0
	movs r1, #1
	strb r1, [r6, #6]
	ldr r1, _080035D4 @ =0x0203A300
	strb r0, [r1]
	movs r0, #1
	b _08003684
	.align 2, 0
_080035D4: .4byte 0x0203A300
_080035D8: .4byte 0x02037EB0
_080035DC: .4byte 0x00009999
_080035E0:
	bl sub_0800386C
	b _080035E8
_080035E6:
	movs r7, #0
_080035E8:
	ldr r3, _08003610 @ =0x02034E98
	ldr r2, _08003614 @ =0x02037EB0
	adds r0, r2, #0
	adds r0, #0x99
	ldrb r0, [r0]
	movs r1, #0
	cmp r0, #0
	bne _080035FA
	movs r1, #0x18
_080035FA:
	adds r0, r2, #0
	adds r0, #0x3a
	adds r0, r1, r0
	ldrh r1, [r3, #6]
	ldrh r0, [r0]
	cmp r1, r0
	beq _0800361A
	bl sub_0800386C
	b _0800361A
	.align 2, 0
_08003610: .4byte 0x02034E98
_08003614: .4byte 0x02037EB0
_08003618:
	movs r7, #0
_0800361A:
	ldr r0, _08003630 @ =0x030024B0
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08003638
	ldr r1, _08003634 @ =0x0203A300
	movs r0, #0
	strb r0, [r1]
	movs r0, #0
	b _08003684
	.align 2, 0
_08003630: .4byte 0x030024B0
_08003634: .4byte 0x0203A300
_08003638:
	ldr r2, _0800367C @ =0x02037EB0
	adds r0, r2, #0
	adds r0, #0x98
	ldrb r0, [r0]
	cmp r0, #0
	beq _08003666
	adds r0, r2, #0
	adds r0, #0x90
	ldr r3, [r0]
	lsls r1, r3, #0x1c
	lsrs r1, r1, #0x1c
	ldrb r0, [r2, #0xa]
	mvns r2, r0
	ands r1, r2
	cmp r1, #0
	bne _08003662
	lsls r0, r3, #0x14
	lsrs r0, r0, #0x1c
	ands r0, r2
	cmp r0, #0
	beq _08003666
_08003662:
	bl sub_0800386C
_08003666:
	ldr r0, _08003680 @ =0x02037F40
	ldrb r1, [r0, #1]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	bne _08003674
	b _0800355A
_08003674:
	bl sub_0800386C
	b _0800355A
	.align 2, 0
_0800367C: .4byte 0x02037EB0
_08003680: .4byte 0x02037F40
_08003684:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08003690
sub_08003690: @ 0x08003690
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #4]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #8]
	movs r0, #0
	mov sl, r0
	movs r1, #0
	str r1, [sp, #0xc]
	mov r0, sp
	ldrb r2, [r0, #4]
	strb r2, [r0]
	mov r8, r1
	ldr r1, _0800374C @ =0x0203A300
	movs r0, #1
	strb r0, [r1]
	ldr r7, _08003750 @ =0x02037EB0
	movs r0, #0x90
	adds r0, r0, r7
	mov sb, r0
_080036C6:
	movs r0, #1
	bl sub_08002B98
	adds r0, r7, #0
	adds r0, #0x98
	ldrb r0, [r0]
	cmp r0, #0
	beq _08003790
	mov r2, sb
	ldr r1, [r2]
	lsls r0, r1, #0x1c
	lsrs r2, r0, #0x1c
	ldrb r0, [r7, #0xa]
	cmp r2, r0
	bne _08003790
	lsls r0, r1, #0x14
	lsrs r0, r0, #0x1c
	cmp r0, r2
	bne _08003790
	ldr r5, _08003754 @ =0x00009999
	adds r0, r5, #0
	mov r1, sp
	movs r2, #1
	bl sub_080038F4
	movs r1, #0
	adds r6, r7, #0
	adds r6, #0x99
	ldrb r0, [r6]
	cmp r0, #0
	bne _08003706
	movs r1, #1
_08003706:
	mov r4, sp
	adds r4, #1
	adds r0, r1, #0
	adds r1, r5, #0
	adds r2, r4, #0
	movs r3, #1
	bl sub_08003938
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r5
	bne _0800375E
	ldrb r0, [r4]
	ldr r1, [sp, #4]
	cmp r0, r1
	bne _08003758
	ldrb r0, [r6]
	ldr r2, [sp, #8]
	cmp r0, r2
	bne _08003758
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	cmp r0, #0xa
	bls _08003762
	movs r0, #0
	movs r1, #1
	strb r1, [r7, #6]
	ldr r1, _0800374C @ =0x0203A300
	strb r0, [r1]
	movs r0, #1
	b _08003850
	.align 2, 0
_0800374C: .4byte 0x0203A300
_08003750: .4byte 0x02037EB0
_08003754: .4byte 0x00009999
_08003758:
	bl sub_0800386C
	b _08003762
_0800375E:
	movs r0, #0
	mov r8, r0
_08003762:
	ldr r3, _08003788 @ =0x02034E98
	ldr r2, _0800378C @ =0x02037EB0
	adds r0, r2, #0
	adds r0, #0x99
	ldrb r0, [r0]
	movs r1, #0
	cmp r0, #0
	bne _08003774
	movs r1, #0x18
_08003774:
	adds r0, r2, #0
	adds r0, #0x3a
	adds r0, r1, r0
	ldrh r1, [r3, #6]
	ldrh r0, [r0]
	cmp r1, r0
	beq _08003794
	bl sub_0800386C
	b _08003794
	.align 2, 0
_08003788: .4byte 0x02034E98
_0800378C: .4byte 0x02037EB0
_08003790:
	movs r1, #0
	mov r8, r1
_08003794:
	ldr r0, _080037BC @ =0x03004400
	ldrb r1, [r0, #8]
	adds r2, r0, #0
	cmp r1, #0x19
	bne _080037D2
	ldr r0, [sp, #0xc]
	cmp r0, #0x3c
	bls _080037C8
	ldr r0, _080037C0 @ =0x030024B0
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080037D2
	ldr r1, _080037C4 @ =0x0203A300
	movs r0, #0
	strb r0, [r1]
	movs r0, #0
	b _08003850
	.align 2, 0
_080037BC: .4byte 0x03004400
_080037C0: .4byte 0x030024B0
_080037C4: .4byte 0x0203A300
_080037C8:
	ldr r0, [sp, #0xc]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xc]
_080037D2:
	ldrb r0, [r2, #8]
	cmp r0, #0x18
	bne _0800380A
	mov r2, sb
	ldr r1, [r2]
	lsls r0, r1, #0x1c
	lsrs r2, r0, #0x1c
	ldrb r0, [r7, #0xa]
	cmp r2, r0
	bne _080037EE
	lsls r0, r1, #0x14
	lsrs r0, r0, #0x1c
	cmp r0, r2
	beq _08003806
_080037EE:
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	movs r0, #0xe1
	lsls r0, r0, #2
	cmp sl, r0
	bls _0800380A
	bl sub_0800386C
	b _0800380A
_08003806:
	movs r1, #0
	mov sl, r1
_0800380A:
	ldr r2, _0800384C @ =0x02037EB0
	adds r0, r2, #0
	adds r0, #0x98
	ldrb r0, [r0]
	cmp r0, #0
	beq _08003836
	mov r0, sb
	ldr r3, [r0]
	lsls r1, r3, #0x1c
	lsrs r1, r1, #0x1c
	ldrb r0, [r2, #0xa]
	mvns r2, r0
	ands r1, r2
	cmp r1, #0
	bne _08003832
	lsls r0, r3, #0x14
	lsrs r0, r0, #0x1c
	ands r0, r2
	cmp r0, #0
	beq _08003836
_08003832:
	bl sub_0800386C
_08003836:
	mov r2, sb
	ldrb r1, [r2, #1]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	bne _08003844
	b _080036C6
_08003844:
	bl sub_0800386C
	b _080036C6
	.align 2, 0
_0800384C: .4byte 0x02037EB0
_08003850:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08003860
sub_08003860: @ 0x08003860
	ldr r1, _08003868 @ =0x02037EB0
	strb r0, [r1, #0xa]
	bx lr
	.align 2, 0
_08003868: .4byte 0x02037EB0

	thumb_func_start sub_0800386C
sub_0800386C: @ 0x0800386C
	push {lr}
	ldr r2, _08003898 @ =0x02037EB0
	ldr r0, [r2]
	cmp r0, #0
	bne _0800387C
	ldr r0, _0800389C @ =0x020376A0
	ldr r0, [r0]
	str r0, [r2]
_0800387C:
	adds r1, r2, #0
	adds r1, #0x88
	movs r0, #6
	str r0, [r1]
	subs r1, #4
	subs r0, #7
	str r0, [r1]
	movs r0, #1
	strb r0, [r2, #4]
_0800388E:
	movs r0, #1
	bl sub_08002B98
	b _0800388E
	.align 2, 0
_08003898: .4byte 0x02037EB0
_0800389C: .4byte 0x020376A0

	thumb_func_start sub_080038A0
sub_080038A0: @ 0x080038A0
	ldr r0, _080038AC @ =0x02037F40
	ldr r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	bx lr
	.align 2, 0
_080038AC: .4byte 0x02037F40

	thumb_func_start sub_080038B0
sub_080038B0: @ 0x080038B0
	ldr r0, _080038BC @ =0x02037F40
	ldr r0, [r0]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x1c
	bx lr
	.align 2, 0
_080038BC: .4byte 0x02037F40

	thumb_func_start sub_080038C0
sub_080038C0: @ 0x080038C0
	ldr r0, _080038CC @ =0x02037F40
	ldr r0, [r0]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x1f
	bx lr
	.align 2, 0
_080038CC: .4byte 0x02037F40

	thumb_func_start sub_080038D0
sub_080038D0: @ 0x080038D0
	ldr r0, _080038D8 @ =0x02037EB0
	adds r0, #0x84
	ldr r0, [r0]
	bx lr
	.align 2, 0
_080038D8: .4byte 0x02037EB0

	thumb_func_start sub_080038DC
sub_080038DC: @ 0x080038DC
	ldr r0, _080038E4 @ =0x02037EB0
	adds r0, #0x98
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_080038E4: .4byte 0x02037EB0

	thumb_func_start sub_080038E8
sub_080038E8: @ 0x080038E8
	ldr r0, _080038F0 @ =0x02037EB0
	adds r0, #0x99
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_080038F0: .4byte 0x02037EB0

	thumb_func_start sub_080038F4
sub_080038F4: @ 0x080038F4
	push {r4, r5, lr}
	adds r4, r1, #0
	lsls r3, r0, #0x10
	lsrs r5, r3, #0x10
	ldr r1, _08003934 @ =0x02037EBC
	adds r0, r1, #0
	subs r0, #0xc
	ldrb r0, [r0, #4]
	cmp r0, #0
	beq _0800392C
	cmp r2, #0x15
	bls _0800390E
	movs r2, #0x16
_0800390E:
	strb r5, [r1]
	adds r1, #1
	lsrs r0, r3, #0x18
	strb r0, [r1]
	adds r1, #1
	movs r3, #0
	cmp r3, r2
	bhs _0800392C
_0800391E:
	ldrb r0, [r4]
	strb r0, [r1]
	adds r4, #1
	adds r1, #1
	adds r3, #1
	cmp r3, r2
	blo _0800391E
_0800392C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08003934: .4byte 0x02037EBC

	thumb_func_start sub_08003938
sub_08003938: @ 0x08003938
	push {r4, r5, r6, lr}
	adds r4, r2, #0
	adds r5, r3, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x10
	lsrs r2, r1, #0x10
	adds r6, r2, #0
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #3
	ldr r0, _08003960 @ =0x02037ED4
	adds r1, r1, r0
	subs r0, #0x24
	ldrb r0, [r0, #4]
	cmp r0, #0
	bne _08003964
	adds r0, r2, #0
	b _08003990
	.align 2, 0
_08003960: .4byte 0x02037ED4
_08003964:
	cmp r5, #0x15
	bls _0800396A
	movs r5, #0x16
_0800396A:
	ldrb r3, [r1]
	adds r1, #1
	ldrb r0, [r1]
	lsls r0, r0, #8
	orrs r3, r0
	adds r1, #1
	cmp r3, r6
	bne _0800398E
	movs r2, #0
	cmp r2, r5
	bhs _0800398E
_08003980:
	ldrb r0, [r1]
	strb r0, [r4]
	adds r1, #1
	adds r4, #1
	adds r2, #1
	cmp r2, r5
	blo _08003980
_0800398E:
	adds r0, r3, #0
_08003990:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08003998
sub_08003998: @ 0x08003998
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov r8, r1
	adds r7, r2, #0
	adds r6, r3, #0
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r0, _080039B8 @ =0x02037EB0
	ldrb r0, [r0, #4]
	cmp r0, #0
	beq _08003A1A
	b _08003A16
	.align 2, 0
_080039B8: .4byte 0x02037EB0
_080039BC:
	cmp r6, #0x15
	bhi _080039C8
	lsls r0, r6, #0x10
	lsrs r4, r0, #0x10
	movs r6, #0
	b _080039CC
_080039C8:
	movs r4, #0x16
	subs r6, #0x16
_080039CC:
	movs r0, #0x16
	add r0, r8
	mov sl, r0
	adds r1, r7, #0
	adds r1, #0x16
	str r1, [sp]
	adds r2, r5, #1
	mov sb, r2
_080039DC:
	movs r0, #1
	bl sub_08002B98
	adds r0, r5, #0
	mov r1, r8
	adds r2, r4, #0
	bl sub_080038F4
	movs r1, #0
	ldr r2, _08003A2C @ =0x02037F49
	ldrb r0, [r2]
	cmp r0, #0
	bne _080039F8
	movs r1, #1
_080039F8:
	adds r0, r1, #0
	adds r1, r5, #0
	adds r2, r7, #0
	adds r3, r4, #0
	bl sub_08003938
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r5, r0
	bne _080039DC
	mov r8, sl
	ldr r7, [sp]
	mov r1, sb
	lsls r0, r1, #0x10
	lsrs r5, r0, #0x10
_08003A16:
	cmp r6, #0
	bne _080039BC
_08003A1A:
	movs r0, #0
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08003A2C: .4byte 0x02037F49

	thumb_func_start sub_08003A30
sub_08003A30: @ 0x08003A30
	push {r4, r5, lr}
	sub sp, #4
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r1, _08003A7C @ =0x02037EB0
	ldrb r0, [r1, #4]
	cmp r0, #0
	beq _08003A74
	adds r5, r1, #0
	adds r5, #0x99
_08003A44:
	movs r0, #1
	bl sub_08002B98
	adds r0, r4, #0
	mov r1, sp
	movs r2, #1
	bl sub_080038F4
	movs r1, #0
	ldrb r0, [r5]
	cmp r0, #0
	bne _08003A5E
	movs r1, #1
_08003A5E:
	adds r0, r1, #0
	adds r1, r4, #0
	mov r2, sp
	adds r2, #1
	movs r3, #1
	bl sub_08003938
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r4, r0
	bne _08003A44
_08003A74:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08003A7C: .4byte 0x02037EB0

	thumb_func_start sub_08003A80
sub_08003A80: @ 0x08003A80
	push {r4, r5, lr}
	sub sp, #4
	mov r0, sp
	movs r4, #0
	strh r4, [r0]
	ldr r5, _08003AF8 @ =0x02037EBC
	ldr r2, _08003AFC @ =0x0100000C
	adds r1, r5, #0
	bl CpuSet
	mov r0, sp
	adds r0, #2
	strh r4, [r0]
	adds r1, r5, #0
	adds r1, #0x18
	ldr r2, _08003B00 @ =0x01000030
	bl CpuSet
	adds r3, r5, #0
	subs r3, #0xc
	movs r2, #0
	str r2, [r5, #0x78]
	str r2, [r5, #0x7c]
	adds r0, r5, #0
	adds r0, #0x90
	str r2, [r0]
	adds r0, #4
	str r2, [r0]
	adds r0, #4
	str r2, [r0]
	adds r0, #4
	strb r4, [r0]
	adds r0, #1
	strb r4, [r0]
	adds r0, #1
	strb r4, [r0]
	adds r1, r5, #0
	adds r1, #0xa0
	adds r0, r5, #1
	str r0, [r1]
	adds r0, #0xa3
	strb r4, [r0]
	adds r0, #1
	movs r1, #1
	strb r1, [r0]
	adds r0, #3
	str r2, [r0]
	strb r1, [r3, #4]
	movs r0, #2
	strb r0, [r3, #5]
	strb r4, [r3, #6]
	strb r4, [r3, #7]
	strb r4, [r3, #8]
	ldr r0, _08003B04 @ =0x0203A300
	strb r4, [r0]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08003AF8: .4byte 0x02037EBC
_08003AFC: .4byte 0x0100000C
_08003B00: .4byte 0x01000030
_08003B04: .4byte 0x0203A300

	thumb_func_start sub_08003B08
sub_08003B08: @ 0x08003B08
	ldr r3, _08003B24 @ =0x02037EB0
	adds r2, r3, #0
	adds r2, #0x8c
	adds r1, r3, #0
	adds r1, #0x88
	ldr r0, [r1]
	str r0, [r2]
	movs r0, #0
	str r0, [r1]
	strb r0, [r3, #4]
	ldr r1, _08003B28 @ =0x0203A300
	strb r0, [r1]
	bx lr
	.align 2, 0
_08003B24: .4byte 0x02037EB0
_08003B28: .4byte 0x0203A300

	thumb_func_start sub_08003B2C
sub_08003B2C: @ 0x08003B2C
	push {lr}
	adds r2, r0, #0
	adds r3, r1, #0
	cmp r2, #0
	beq _08003B42
	ldr r0, _08003B48 @ =0x02037EB0
	adds r1, r0, #0
	adds r1, #0xa0
	str r2, [r1]
	adds r0, #0x9c
	str r3, [r0]
_08003B42:
	pop {r0}
	bx r0
	.align 2, 0
_08003B48: .4byte 0x02037EB0

	thumb_func_start sub_08003B4C
sub_08003B4C: @ 0x08003B4C
	ldr r1, _08003B5C @ =0x02037EB0
	ldr r0, _08003B60 @ =0x020376A0
	ldr r0, [r0]
	str r0, [r1]
	adds r1, #0xa8
	movs r0, #1
	strb r0, [r1]
	bx lr
	.align 2, 0
_08003B5C: .4byte 0x02037EB0
_08003B60: .4byte 0x020376A0

	thumb_func_start sub_08003B64
sub_08003B64: @ 0x08003B64
	ldr r1, _08003B6C @ =0x02037EB0
	adds r1, #0xb1
	strb r0, [r1]
	bx lr
	.align 2, 0
_08003B6C: .4byte 0x02037EB0

	thumb_func_start sub_08003B70
sub_08003B70: @ 0x08003B70
	ldr r0, _08003B78 @ =0x02037EB0
	adds r0, #0xaa
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_08003B78: .4byte 0x02037EB0

	thumb_func_start sub_08003B7C
sub_08003B7C: @ 0x08003B7C
	ldr r0, _08003B84 @ =0x02037EB0
	adds r0, #0xb0
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_08003B84: .4byte 0x02037EB0

	thumb_func_start sub_08003B88
sub_08003B88: @ 0x08003B88
	ldr r0, _08003B90 @ =0x02037EB0
	adds r0, #0xb4
	ldr r0, [r0]
	bx lr
	.align 2, 0
_08003B90: .4byte 0x02037EB0

	thumb_func_start sub_08003B94
sub_08003B94: @ 0x08003B94
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	movs r0, #0
	mov r8, r0
	movs r6, #0
	movs r7, #0
	bl sub_0806F710
	bl sub_0806FBCC
	add r0, sp, #4
	movs r5, #0
	strh r7, [r0]
	ldr r4, _08003C14 @ =0x03006470
	ldr r2, _08003C18 @ =0x01000026
	adds r1, r4, #0
	bl CpuSet
	ldr r0, _08003C1C @ =0x03006458
	ldr r1, _08003C20 @ =0x082CC3CC
	str r1, [r0]
	ldr r2, _08003C24 @ =0x0300645C
	ldr r0, _08003C28 @ =0x082D26D0
	subs r0, r0, r1
	str r0, [r2]
	str r1, [r4, #0x28]
	adds r0, r4, #0
	adds r0, #0x4b
	strb r5, [r0]
	adds r0, r4, #0
	bl sub_080005B0

	thumb_func_start sub_08003BD8
sub_08003BD8: @ 0x08003BD8
	ldr r0, _08003C2C @ =0x02037EB0
	strb r5, [r0, #5]
	adds r5, r4, #0
_08003BDE:
	bl VBlankIntrWait
	ldr r0, _08003C30 @ =0x04000130
	ldrh r0, [r0]
	ldr r2, _08003C34 @ =0x000003FF
	adds r1, r2, #0
	eors r1, r0
	ldr r3, _08003C38 @ =0x03006466
	ldr r2, _08003C3C @ =0x03006464
	ldrh r0, [r2]
	adds r4, r1, #0
	bics r4, r0
	strh r4, [r3]
	strh r1, [r2]
	ldrb r0, [r5, #0x18]
	cmp r0, #0
	bne _08003C66
	ldrb r0, [r5, #0x1e]
	cmp r0, #0
	bne _08003C40
	movs r0, #2
	ands r4, r0
	cmp r4, #0
	beq _08003C40
	movs r7, #0
	b _08003D4E
	.align 2, 0
_08003C14: .4byte 0x03006470
_08003C18: .4byte 0x01000026
_08003C1C: .4byte 0x03006458
_08003C20: .4byte 0x082CC3CC
_08003C24: .4byte 0x0300645C
_08003C28: .4byte 0x082D26D0
_08003C2C: .4byte 0x02037EB0
_08003C30: .4byte 0x04000130
_08003C34: .4byte 0x000003FF
_08003C38: .4byte 0x03006466
_08003C3C: .4byte 0x03006464
_08003C40:
	ldr r3, _08003CDC @ =0x03006470
	ldrb r0, [r3, #0x18]
	cmp r0, #0
	bne _08003C66
	ldrb r0, [r3, #0x1e]
	cmp r0, #0
	beq _08003C66
	ldr r0, _08003CE0 @ =0x03006458
	ldr r1, [r0]
	adds r1, #0xc0
	ldr r0, _08003CE4 @ =0x0300645C
	ldr r2, [r0]
	subs r2, #0xc0
	movs r0, #1
	str r0, [sp]
	adds r0, r3, #0
	movs r3, #4
	bl sub_08000A4C
_08003C66:
	ldr r0, _08003CDC @ =0x03006470
	bl sub_080005EC
	adds r1, r0, #0
	ldr r0, _08003CE8 @ =0x03006460
	str r1, [r0]
	cmp r1, #4
	beq _08003CAE
	cmp r1, #8
	beq _08003CAE
	cmp r1, #0xc
	beq _08003CAE
	cmp r1, #0x40
	beq _08003CAE
	cmp r1, #0x44
	beq _08003CAE
	cmp r1, #0x48
	beq _08003CAE
	cmp r1, #0x4c
	beq _08003CAE
	cmp r1, #0x80
	beq _08003CAE
	cmp r1, #0x84
	beq _08003CAE
	cmp r1, #0x88
	beq _08003CAE
	cmp r1, #0x8c
	beq _08003CAE
	cmp r1, #0x50
	beq _08003CAE
	cmp r1, #0x60
	beq _08003CAE
	cmp r1, #0x70
	beq _08003CAE
	cmp r1, #0x71
	bne _08003CEC
_08003CAE:
	mov r1, r8
	lsls r0, r1, #0x10
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r0, r2
	lsrs r1, r0, #0x10
	mov r8, r1
	asrs r0, r0, #0x10
	cmp r0, #0xa
	ble _08003CF0
	ldr r1, _08003CDC @ =0x03006470
	ldrb r0, [r1, #0x18]
	cmp r0, #0
	bne _08003CF0
	ldrb r0, [r1, #0x1e]
	cmp r0, #0
	bne _08003CF0
	bl sub_0806FC4C
	bl sub_0800386C
	b _08003CF0
	.align 2, 0
_08003CDC: .4byte 0x03006470
_08003CE0: .4byte 0x03006458
_08003CE4: .4byte 0x0300645C
_08003CE8: .4byte 0x03006460
_08003CEC:
	movs r2, #0
	mov r8, r2
_08003CF0:
	adds r0, r5, #0
	adds r0, #0x49
	ldrb r0, [r0]
	ldrb r1, [r5, #0x1d]
	cmp r0, r1
	bne _08003D00
	cmp r0, #0
	bne _08003D1C
_08003D00:
	lsls r1, r6, #0x10
	movs r2, #0x80
	lsls r2, r2, #9
	adds r1, r1, r2
	lsrs r6, r1, #0x10
	movs r0, #0xe1
	lsls r0, r0, #0x12
	cmp r1, r0
	ble _08003D1E
	bl sub_0806FC4C
	bl sub_0800386C
	b _08003D1E
_08003D1C:
	movs r6, #0
_08003D1E:
	ldr r0, _08003D8C @ =0x03004400
	ldrb r0, [r0, #8]
	cmp r0, #0x17
	bne _08003D40
	ldr r1, _08003D90 @ =0x03006470
	ldrb r0, [r1, #0x18]
	cmp r0, #0
	bne _08003D40
	ldrb r1, [r1, #0x1e]
	movs r0, #0xc
	ands r0, r1
	cmp r0, #0
	beq _08003D40
	bl sub_0806FC4C
	bl sub_0800386C
_08003D40:
	ldr r0, _08003D90 @ =0x03006470
	bl sub_08000B10
	cmp r0, #0
	bne _08003D4C
	b _08003BDE
_08003D4C:
	movs r7, #1
_08003D4E:
	ldr r0, _08003D94 @ =0x02037EB0
	movs r1, #0
	strb r1, [r0, #5]
	ldr r3, _08003D98 @ =0x04000200
	ldrh r0, [r3]
	mov r8, r0
	ldr r5, _08003D9C @ =0x04000202
	ldr r2, _08003DA0 @ =0x04000004
	ldrh r6, [r2]
	ldr r4, _08003DA4 @ =0x04000208
	strh r1, [r4]
	strh r1, [r2]
	strh r1, [r3]
	ldr r1, _08003DA8 @ =0x0000FFFF
	adds r0, r1, #0
	strh r0, [r5]
	mov r0, r8
	strh r0, [r3]
	strh r6, [r2]
	movs r0, #1
	strh r0, [r4]
	bl sub_0806FC4C
	adds r0, r7, #0
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08003D8C: .4byte 0x03004400
_08003D90: .4byte 0x03006470
_08003D94: .4byte 0x02037EB0
_08003D98: .4byte 0x04000200
_08003D9C: .4byte 0x04000202
_08003DA0: .4byte 0x04000004
_08003DA4: .4byte 0x04000208
_08003DA8: .4byte 0x0000FFFF

	thumb_func_start sub_08003DAC
sub_08003DAC: @ 0x08003DAC
	push {r4, lr}
	ldr r4, _08003DD4 @ =0x020376A4
	ldrb r0, [r4]
	cmp r0, #0
	beq _08003DCE
	ldr r0, _08003DD8 @ =0x02030850
	ldr r1, _08003DDC @ =0x020335C0
	ldrb r1, [r1, #1]
	lsls r1, r1, #0xb
	movs r2, #0xc0
	lsls r2, r2, #0x13
	adds r1, r1, r2
	ldr r2, _08003DE0 @ =0x04000200
	bl CpuSet
	movs r0, #0
	strb r0, [r4]
_08003DCE:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08003DD4: .4byte 0x020376A4
_08003DD8: .4byte 0x02030850
_08003DDC: .4byte 0x020335C0
_08003DE0: .4byte 0x04000200

	thumb_func_start sub_08003DE4
sub_08003DE4: @ 0x08003DE4
	push {r4, lr}
	sub sp, #8
	ldr r0, _08003E1C @ =0x020376A4
	movs r1, #0
	strb r1, [r0]
	ldr r0, _08003E20 @ =0x02034E90
	strb r1, [r0]
	movs r4, #0
	str r4, [sp]
	ldr r1, _08003E24 @ =0x02030850
	ldr r2, _08003E28 @ =0x01000200
	mov r0, sp
	bl CpuFastSet
	str r4, [sp, #4]
	add r0, sp, #4
	ldr r1, _08003E2C @ =0x02033840
	ldr r2, _08003E30 @ =0x01000020
	bl CpuFastSet
	ldr r0, _08003E34 @ =sub_08003DAC
	movs r1, #0x10
	bl sub_08009460
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08003E1C: .4byte 0x020376A4
_08003E20: .4byte 0x02034E90
_08003E24: .4byte 0x02030850
_08003E28: .4byte 0x01000200
_08003E2C: .4byte 0x02033840
_08003E30: .4byte 0x01000020
_08003E34: .4byte sub_08003DAC

	thumb_func_start sub_08003E38
sub_08003E38: @ 0x08003E38
	push {r4, lr}
	sub sp, #8
	movs r4, #0
	str r4, [sp]
	ldr r1, _08003E64 @ =0x02030850
	ldr r2, _08003E68 @ =0x01000200
	mov r0, sp
	bl CpuFastSet
	str r4, [sp, #4]
	add r0, sp, #4
	ldr r1, _08003E6C @ =0x02033840
	ldr r2, _08003E70 @ =0x01000020
	bl CpuFastSet
	ldr r0, _08003E74 @ =sub_08003DAC
	bl sub_080094F4
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08003E64: .4byte 0x02030850
_08003E68: .4byte 0x01000200
_08003E6C: .4byte 0x02033840
_08003E70: .4byte 0x01000020
_08003E74: .4byte sub_08003DAC

	thumb_func_start sub_08003E78
sub_08003E78: @ 0x08003E78
	push {r4, r5, r6, r7, lr}
	adds r3, r1, #0
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r1, _08003EDC @ =0x020376A4
	movs r0, #0
	strb r0, [r1]
	movs r4, #0
	movs r0, #3
	ldrsb r0, [r3, r0]
	adds r7, r1, #0
	cmp r4, r0
	bge _08003ED0
	ldr r6, _08003EE0 @ =0x02030850
_08003E94:
	movs r0, #1
	ldrsb r0, [r3, r0]
	adds r0, r0, r4
	lsls r0, r0, #6
	movs r1, #0
	ldrsb r1, [r3, r1]
	lsls r1, r1, #1
	adds r1, r1, r6
	adds r1, r0, r1
	movs r2, #0
	movs r0, #2
	ldrsb r0, [r3, r0]
	adds r4, #1
	cmp r2, r0
	bge _08003EC4
_08003EB2:
	strh r5, [r1]
	adds r1, #2
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	movs r0, #2
	ldrsb r0, [r3, r0]
	cmp r2, r0
	blt _08003EB2
_08003EC4:
	lsls r0, r4, #0x18
	lsrs r4, r0, #0x18
	movs r0, #3
	ldrsb r0, [r3, r0]
	cmp r4, r0
	blt _08003E94
_08003ED0:
	movs r0, #1
	strb r0, [r7]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08003EDC: .4byte 0x020376A4
_08003EE0: .4byte 0x02030850

	thumb_func_start sub_08003EE4
sub_08003EE4: @ 0x08003EE4
	push {r4, lr}
	sub sp, #4
	ldr r4, _08003F08 @ =0x020376A4
	movs r0, #0
	strb r0, [r4]
	movs r0, #0
	str r0, [sp]
	ldr r1, _08003F0C @ =0x02030850
	ldr r2, _08003F10 @ =0x01000200
	mov r0, sp
	bl CpuFastSet
	movs r0, #1
	strb r0, [r4]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08003F08: .4byte 0x020376A4
_08003F0C: .4byte 0x02030850
_08003F10: .4byte 0x01000200

	thumb_func_start sub_08003F14
sub_08003F14: @ 0x08003F14
	push {r4, lr}
	sub sp, #4
	lsls r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r3, r1, #0x18
	movs r2, #0
	ldr r4, _08003F48 @ =0x02033840
	movs r1, #0xf0
	lsls r1, r1, #0x14
	ands r1, r0
	lsrs r1, r1, #0x18
	movs r0, #7
_08003F2C:
	lsls r2, r2, #4
	orrs r2, r1
	subs r0, #1
	cmp r0, #0
	bge _08003F2C
	cmp r3, #0
	bne _08003F50
	str r2, [sp]
	ldr r2, _08003F4C @ =0x01000020
	mov r0, sp
	adds r1, r4, #0
	bl CpuFastSet
	b _08003F6A
	.align 2, 0
_08003F48: .4byte 0x02033840
_08003F4C: .4byte 0x01000020
_08003F50:
	str r2, [sp]
	lsls r1, r3, #2
	adds r1, r1, r4
	movs r2, #0x20
	subs r2, r2, r3
	ldr r0, _08003F74 @ =0x001FFFFF
	ands r2, r0
	movs r0, #0xa0
	lsls r0, r0, #0x13
	orrs r2, r0
	mov r0, sp
	bl CpuSet
_08003F6A:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08003F74: .4byte 0x001FFFFF

	thumb_func_start sub_08003F78
sub_08003F78: @ 0x08003F78
	push {lr}
	lsls r1, r0, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #3
	bhi _08003F94
	asrs r1, r1, #0x10
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08003F90 @ =0x02034E40
	adds r0, r0, r1
	b _08003F96
	.align 2, 0
_08003F90: .4byte 0x02034E40
_08003F94:
	movs r0, #0
_08003F96:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08003F9C
sub_08003F9C: @ 0x08003F9C
	push {r4, lr}
	sub sp, #4
	bl sub_08003DE4
	mov r0, sp
	movs r4, #0
	strh r4, [r0]
	ldr r1, _08003FD0 @ =0x020335C0
	ldr r2, _08003FD4 @ =0x01000006
	bl CpuSet
	mov r0, sp
	adds r0, #2
	strh r4, [r0]
	ldr r1, _08003FD8 @ =0x02034E40
	ldr r2, _08003FDC @ =0x01000028
	bl CpuSet
	ldr r0, _08003FE0 @ =0x020335B4
	strb r4, [r0]
	bl sub_08004504
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08003FD0: .4byte 0x020335C0
_08003FD4: .4byte 0x01000006
_08003FD8: .4byte 0x02034E40
_08003FDC: .4byte 0x01000028
_08003FE0: .4byte 0x020335B4

	thumb_func_start sub_08003FE4
sub_08003FE4: @ 0x08003FE4
	push {r4, lr}
	sub sp, #4
	bl sub_08003E38
	mov r0, sp
	movs r4, #0
	strh r4, [r0]
	ldr r1, _08004014 @ =0x020335C0
	ldr r2, _08004018 @ =0x01000006
	bl CpuSet
	mov r0, sp
	adds r0, #2
	strh r4, [r0]
	ldr r1, _0800401C @ =0x02034E40
	ldr r2, _08004020 @ =0x01000028
	bl CpuSet
	ldr r0, _08004024 @ =0x020335B4
	strb r4, [r0]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08004014: .4byte 0x020335C0
_08004018: .4byte 0x01000006
_0800401C: .4byte 0x02034E40
_08004020: .4byte 0x01000028
_08004024: .4byte 0x020335B4

	thumb_func_start sub_08004028
sub_08004028: @ 0x08004028
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #4
	ldr r4, [sp, #0x18]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	ldr r6, _080040A4 @ =0x000003FF
	ands r4, r6
	mov r8, r4
	ldr r5, _080040A8 @ =0x020335C0
	movs r4, #3
	ands r0, r4
	movs r4, #0
	strb r0, [r5]
	movs r0, #0x1f
	ands r1, r0
	strb r1, [r5, #1]
	movs r0, #0xf
	ands r2, r0
	strb r2, [r5, #2]
	strb r4, [r5, #3]
	ands r6, r3
	adds r6, #0x13
	strh r6, [r5, #4]
	mov r0, r8
	strh r0, [r5, #6]
	strh r6, [r5, #8]
	str r4, [sp]
	ldrb r0, [r5]
	lsls r0, r0, #0xe
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r1, r0, r1
	ldrh r0, [r5, #6]
	lsls r0, r0, #5
	lsrs r2, r0, #2
	movs r0, #0x80
	lsls r0, r0, #0x11
	orrs r2, r0
	mov r0, sp
	bl CpuFastSet
	bl sub_080040AC
	movs r0, #0xff
	movs r1, #0
	bl sub_08003F14
	movs r0, #1
	bl sub_08004124
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080040A4: .4byte 0x000003FF
_080040A8: .4byte 0x020335C0

	thumb_func_start sub_080040AC
sub_080040AC: @ 0x080040AC
	push {r4, lr}
	ldr r0, _080040DC @ =0x08141BF8
	ldr r4, _080040E0 @ =0x020335C0
	ldrb r1, [r4, #2]
	lsls r1, r1, #5
	movs r2, #0xa0
	lsls r2, r2, #0x13
	adds r1, r1, r2
	bl sub_08008308
	ldr r0, _080040E4 @ =0x08141C3C
	ldrb r1, [r4]
	lsls r1, r1, #0xe
	ldr r2, _080040E8 @ =0x06000020
	adds r1, r1, r2
	bl sub_08008374
	ldrb r0, [r4, #2]
	bl sub_080040EC
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080040DC: .4byte 0x08141BF8
_080040E0: .4byte 0x020335C0
_080040E4: .4byte 0x08141C3C
_080040E8: .4byte 0x06000020

	thumb_func_start sub_080040EC
sub_080040EC: @ 0x080040EC
	push {r4, r5, r6, lr}
	adds r1, r0, #0
	lsls r1, r1, #0x18
	ldr r6, _08004120 @ =0x0807E848
	movs r0, #0x80
	lsls r0, r0, #0x11
	adds r4, r1, r0
	lsrs r4, r4, #0x18
	lsrs r1, r1, #0x13
	movs r5, #0xa0
	lsls r5, r5, #0x13
	adds r1, r1, r5
	adds r0, r6, #0
	movs r2, #0xc
	bl CpuSet
	lsls r4, r4, #5
	adds r4, r4, r5
	adds r0, r6, #0
	adds r1, r4, #0
	movs r2, #0xc
	bl CpuSet
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08004120: .4byte 0x0807E848

	thumb_func_start sub_08004124
sub_08004124: @ 0x08004124
	push {r4, lr}
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #1
	bne _08004154
	ldr r2, _0800414C @ =0x030024E0
	ldrh r1, [r2]
	movs r4, #0x80
	lsls r4, r4, #1
	adds r0, r4, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _08004150 @ =0x020335C0
	ldrb r1, [r0]
	lsls r1, r1, #2
	ldrb r0, [r0, #1]
	lsls r0, r0, #8
	orrs r1, r0
	strh r1, [r2, #2]
	b _08004164
	.align 2, 0
_0800414C: .4byte 0x030024E0
_08004150: .4byte 0x020335C0
_08004154:
	ldr r1, _08004170 @ =0x030024E0
	ldrh r2, [r1]
	ldr r0, _08004174 @ =0x0000FEFF
	ands r0, r2
	movs r3, #0
	movs r2, #0
	strh r0, [r1]
	strh r2, [r1, #2]
_08004164:
	ldr r0, _08004178 @ =0x020376A4
	strb r3, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08004170: .4byte 0x030024E0
_08004174: .4byte 0x0000FEFF
_08004178: .4byte 0x020376A4

	thumb_func_start sub_0800417C
sub_0800417C: @ 0x0800417C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r3, r0, #0
	movs r0, #0
	mov ip, r0
	movs r7, #0
	ldr r1, _080041A4 @ =0x020376A4
	strb r7, [r1]
	ldrb r0, [r3, #0xc]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1e
	mov sb, r1
	cmp r0, #1
	beq _080041A8
	cmp r0, #2
	beq _080041B8
	b _080041C2
	.align 2, 0
_080041A4: .4byte 0x020376A4
_080041A8:
	movs r1, #0
	mov ip, r1
	ldr r0, _080041B4 @ =0x020335C0
	ldrb r7, [r0, #2]
	b _080041C2
	.align 2, 0
_080041B4: .4byte 0x020335C0
_080041B8:
	movs r6, #9
	mov ip, r6
	ldr r0, _08004204 @ =0x020335C0
	ldrb r0, [r0, #2]
	adds r7, r0, #1
_080041C2:
	lsls r0, r7, #0x1c
	lsrs r7, r0, #0x10
	movs r5, #0
	movs r0, #3
	ldrsb r0, [r3, r0]
	cmp r5, r0
	bge _08004274
	ldr r0, _08004208 @ =0x02030850
	mov r8, r0
_080041D4:
	movs r0, #1
	ldrsb r0, [r3, r0]
	adds r0, r0, r5
	lsls r0, r0, #5
	movs r1, #0
	ldrsb r1, [r3, r1]
	adds r0, r0, r1
	lsls r0, r0, #1
	mov r1, r8
	adds r4, r0, r1
	movs r2, #0
	movs r0, #2
	ldrsb r0, [r3, r0]
	adds r6, r5, #1
	mov sl, r6
	cmp r2, r0
	bge _0800426A
_080041F6:
	cmp r5, #0
	bne _0800421C
	cmp r2, #0
	bne _0800420C
	movs r1, #1
	b _08004254
	.align 2, 0
_08004204: .4byte 0x020335C0
_08004208: .4byte 0x02030850
_0800420C:
	movs r0, #2
	ldrsb r0, [r3, r0]
	subs r0, #1
	movs r1, #2
	cmp r2, r0
	bne _08004254
	movs r1, #3
	b _08004254
_0800421C:
	movs r0, #3
	ldrsb r0, [r3, r0]
	subs r0, #1
	cmp r5, r0
	bne _0800423E
	cmp r2, #0
	bne _0800422E
	movs r1, #4
	b _08004254
_0800422E:
	movs r0, #2
	ldrsb r0, [r3, r0]
	subs r0, #1
	movs r1, #5
	cmp r2, r0
	bne _08004254
	movs r1, #6
	b _08004254
_0800423E:
	cmp r2, #0
	bne _08004246
	movs r1, #7
	b _08004254
_08004246:
	movs r0, #2
	ldrsb r0, [r3, r0]
	subs r0, #1
	movs r1, #0
	cmp r2, r0
	bne _08004254
	movs r1, #8
_08004254:
	mov r6, ip
	adds r0, r6, r1
	adds r0, #1
	orrs r0, r7
	strh r0, [r4]
	adds r4, #2
	adds r2, #1
	movs r0, #2
	ldrsb r0, [r3, r0]
	cmp r2, r0
	blt _080041F6
_0800426A:
	mov r5, sl
	movs r0, #3
	ldrsb r0, [r3, r0]
	cmp r5, r0
	blt _080041D4
_08004274:
	movs r0, #1
	mov r1, sb
	strb r0, [r1]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08004288
sub_08004288: @ 0x08004288
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	ldr r2, _080042F8 @ =0x020335C0
	ldrh r3, [r2, #4]
	ldr r4, _080042FC @ =0x02034E40
	movs r5, #0
	ldrb r1, [r4, #0xc]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080042C4
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	cmp r5, r0
	beq _080042C4
	ldrh r1, [r4, #0xe]
	cmp r3, r1
	bge _080042B8
	subs r0, r1, r3
	cmp r6, r0
	ble _080042EC
_080042B8:
	ldrh r0, [r4, #0x12]
	adds r3, r1, r0
	ldrh r0, [r2, #6]
	cmp r3, r0
	blt _080042C4
	ldrh r3, [r2, #4]
_080042C4:
	adds r5, #1
	adds r4, #0x14
	cmp r5, #3
	bgt _080042EC
	ldrb r1, [r4, #0xc]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080042C4
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	cmp r5, r0
	beq _080042C4
	ldrh r0, [r4, #0xe]
	adds r1, r0, #0
	cmp r3, r0
	bge _080042B8
	subs r0, r0, r3
	cmp r6, r0
	bgt _080042B8
_080042EC:
	lsls r0, r3, #0x10
	lsrs r0, r0, #0x10
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080042F8: .4byte 0x020335C0
_080042FC: .4byte 0x02034E40

	thumb_func_start sub_08004300
sub_08004300: @ 0x08004300
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	mov r8, r0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	movs r6, #0
	movs r7, #0
	ldr r1, _08004320 @ =0x02034E40
	ldrb r0, [r1, #0xc]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _08004324
	adds r6, r1, #0
	b _0800433C
	.align 2, 0
_08004320: .4byte 0x02034E40
_08004324:
	adds r7, #1
	cmp r7, #3
	bgt _0800433C
	lsls r0, r7, #2
	adds r0, r0, r7
	lsls r0, r0, #2
	adds r2, r0, r1
	ldrb r0, [r2, #0xc]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _08004324
	adds r6, r2, #0
_0800433C:
	cmp r6, #0
	bne _08004346
	movs r0, #1
	rsbs r0, r0, #0
	b _080043D6
_08004346:
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r2, _080043E4 @ =0x0100000A
	mov r0, sp
	adds r1, r6, #0
	bl CpuSet
	ldr r4, _080043E8 @ =0x04000001
	mov r0, r8
	adds r1, r6, #0
	adds r2, r4, #0
	bl CpuSet
	adds r1, r6, #4
	mov r0, r8
	adds r2, r4, #0
	bl CpuSet
	cmp r5, #0
	beq _08004388
	ldrb r0, [r6, #4]
	adds r0, #1
	strb r0, [r6, #4]
	ldrb r0, [r6, #5]
	adds r0, #1
	strb r0, [r6, #5]
	ldrb r0, [r6, #6]
	subs r0, #2
	strb r0, [r6, #6]
	ldrb r0, [r6, #7]
	subs r0, #2
	strb r0, [r6, #7]
_08004388:
	ldrb r0, [r6, #0xc]
	movs r1, #1
	orrs r0, r1
	movs r2, #3
	adds r1, r5, #0
	ands r1, r2
	lsls r1, r1, #1
	movs r2, #7
	rsbs r2, r2, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r6, #0xc]
	cmp r5, #0
	beq _080043AA
	adds r0, r6, #0
	bl sub_0800417C
_080043AA:
	movs r1, #6
	ldrsb r1, [r6, r1]
	movs r0, #7
	ldrsb r0, [r6, r0]
	adds r5, r1, #0
	muls r5, r0, r5
	lsls r4, r7, #0x10
	asrs r4, r4, #0x10
	lsls r1, r5, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_08004288
	movs r1, #0
	strh r0, [r6, #0xe]
	strh r1, [r6, #0x10]
	strh r5, [r6, #0x12]
	ldr r1, _080043EC @ =0x020335B4
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	adds r0, r4, #0
_080043D6:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080043E4: .4byte 0x0100000A
_080043E8: .4byte 0x04000001
_080043EC: .4byte 0x020335B4

	thumb_func_start sub_080043F0
sub_080043F0: @ 0x080043F0
	push {r4, lr}
	sub sp, #4
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl sub_08003F78
	adds r4, r0, #0
	cmp r4, #0
	beq _08004422
	movs r0, #0
	adds r1, r4, #0
	bl sub_08003E78
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r2, _0800442C @ =0x0100000A
	mov r0, sp
	adds r1, r4, #0
	bl CpuSet
	ldr r1, _08004430 @ =0x020335B4
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
_08004422:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800442C: .4byte 0x0100000A
_08004430: .4byte 0x020335B4

	thumb_func_start sub_08004434
sub_08004434: @ 0x08004434
	push {r4, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r4, #0
	bl sub_08003F78
	bl sub_0800417C
	adds r0, r4, #0
	bl sub_08004514
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08004454
sub_08004454: @ 0x08004454
	ldr r0, _0800445C @ =0x020335C0
	ldrb r0, [r0, #3]
	bx lr
	.align 2, 0
_0800445C: .4byte 0x020335C0

	thumb_func_start sub_08004460
sub_08004460: @ 0x08004460
	ldr r1, _08004468 @ =0x020335C0
	movs r0, #1
	strb r0, [r1, #3]
	bx lr
	.align 2, 0
_08004468: .4byte 0x020335C0

	thumb_func_start sub_0800446C
sub_0800446C: @ 0x0800446C
	ldr r1, _08004474 @ =0x020335C0
	movs r0, #0
	strb r0, [r1, #3]
	bx lr
	.align 2, 0
_08004474: .4byte 0x020335C0

	thumb_func_start sub_08004478
sub_08004478: @ 0x08004478
	push {r4, lr}
	adds r4, r1, #0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl sub_08003F78
	cmp r0, #0
	beq _08004496
	cmp r4, #0
	beq _08004496
	adds r1, r0, #4
	adds r0, r4, #0
	movs r2, #2
	bl CpuSet
_08004496:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0800449C
sub_0800449C: @ 0x0800449C
	push {r4, lr}
	adds r4, r1, #0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl sub_08003F78
	cmp r0, #0
	beq _080044BA
	cmp r4, #0
	beq _080044BA
	adds r0, #4
	adds r1, r4, #0
	movs r2, #2
	bl CpuSet
_080044BA:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080044C0
sub_080044C0: @ 0x080044C0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r3, _080044D8 @ =0x020335C0
	movs r2, #0xf
	ands r0, r2
	strb r0, [r3, #0xa]
	ands r1, r2
	strb r1, [r3, #0xb]
	bx lr
	.align 2, 0
_080044D8: .4byte 0x020335C0

	thumb_func_start sub_080044DC
sub_080044DC: @ 0x080044DC
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _080044EC @ =0x020335C0
	movs r1, #0xf
	ands r0, r1
	strb r0, [r2, #0xa]
	bx lr
	.align 2, 0
_080044EC: .4byte 0x020335C0

	thumb_func_start sub_080044F0
sub_080044F0: @ 0x080044F0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _08004500 @ =0x020335C0
	movs r1, #0xf
	ands r0, r1
	strb r0, [r2, #0xb]
	bx lr
	.align 2, 0
_08004500: .4byte 0x020335C0

	thumb_func_start sub_08004504
sub_08004504: @ 0x08004504
	ldr r0, _08004510 @ =0x020335C0
	movs r1, #1
	strb r1, [r0, #0xa]
	movs r1, #0xff
	strb r1, [r0, #0xb]
	bx lr
	.align 2, 0
_08004510: .4byte 0x020335C0

	thumb_func_start sub_08004514
sub_08004514: @ 0x08004514
	push {r4, lr}
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl sub_08003F78
	adds r4, r0, #0
	movs r2, #0
	movs r1, #0
	cmp r4, #0
	beq _0800455E
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1e
	cmp r0, #1
	beq _08004538
	cmp r0, #2
	beq _08004544
	b _0800454C
_08004538:
	movs r2, #1
	ldr r0, _08004540 @ =0x020335C0
	ldrb r1, [r0, #2]
	b _0800454C
	.align 2, 0
_08004540: .4byte 0x020335C0
_08004544:
	movs r2, #0xa
	ldr r0, _08004564 @ =0x020335C0
	ldrb r0, [r0, #2]
	adds r1, r0, #1
_0800454C:
	lsls r0, r1, #0x1c
	lsrs r0, r0, #0x10
	orrs r0, r2
	adds r1, r4, #4
	bl sub_08003E78
	movs r0, #0
	strb r0, [r4, #8]
	strb r0, [r4, #9]
_0800455E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08004564: .4byte 0x020335C0

	thumb_func_start sub_08004568
sub_08004568: @ 0x08004568
	push {r4, lr}
	adds r4, r1, #0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl sub_08003F78
	adds r1, r0, #0
	cmp r1, #0
	beq _08004586
	cmp r4, #0
	beq _08004586
	ldrb r0, [r4]
	strb r0, [r1, #8]
	ldrb r0, [r4, #1]
	strb r0, [r1, #9]
_08004586:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0800458C
sub_0800458C: @ 0x0800458C
	push {r4, r5, r6, r7, lr}
	adds r3, r0, #0
	adds r6, r1, #0
	movs r5, #0
	movs r1, #0
	movs r7, #0
	movs r0, #0
	mov ip, r0
	movs r4, #0
	b _080045D8
_080045A0:
	ldrb r2, [r3]
	cmp r5, #0
	bne _080045D0
	adds r0, r2, #0
	subs r0, #0x81
	cmp r0, #0x1e
	bls _080045CC
	subs r0, #0x5f
	cmp r0, #0xa
	bls _080045CC
	cmp r2, #0xa
	bne _080045C6
	cmp r7, r1
	bge _080045BE
	adds r7, r1, #0
_080045BE:
	movs r0, #2
	add ip, r0
	movs r1, #0
	b _080045D6
_080045C6:
	adds r4, #1
	adds r1, #1
	b _080045D6
_080045CC:
	adds r5, r2, #0
	b _080045D6
_080045D0:
	adds r4, #1
	adds r1, #1
	movs r5, #0
_080045D6:
	adds r3, #1
_080045D8:
	ldrb r0, [r3]
	cmp r0, #0
	bne _080045A0
	cmp r6, #0
	beq _080045F2
	adds r0, r7, #0
	cmp r0, r1
	bge _080045EA
	adds r0, r1, #0
_080045EA:
	strb r0, [r6]
	mov r0, ip
	adds r0, #2
	strb r0, [r6, #1]
_080045F2:
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_080045FC
sub_080045FC: @ 0x080045FC
	push {r4, r5, r6, r7, lr}
	adds r2, r0, #0
	adds r6, r1, #0
	movs r4, #0
	movs r7, #0
	movs r3, #0
	movs r5, #0
	b _080046BA
_0800460C:
	ldrb r0, [r2]
	ldrb r1, [r2, #1]
	cmp r0, #0xff
	beq _080046B8
	cmp r0, #0x2f
	bgt _080046AA
	subs r0, #0xa
	cmp r0, #0x16
	bhi _080046B8
	lsls r0, r0, #2
	ldr r1, _08004628 @ =_0800462C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08004628: .4byte _0800462C
_0800462C: @ jump table
	.4byte _08004688 @ case 0
	.4byte _080046B8 @ case 1
	.4byte _080046B8 @ case 2
	.4byte _080046B8 @ case 3
	.4byte _080046B8 @ case 4
	.4byte _080046B8 @ case 5
	.4byte _080046B4 @ case 6
	.4byte _080046B8 @ case 7
	.4byte _080046B8 @ case 8
	.4byte _080046B8 @ case 9
	.4byte _080046B8 @ case 10
	.4byte _080046B8 @ case 11
	.4byte _080046B8 @ case 12
	.4byte _080046B8 @ case 13
	.4byte _080046B8 @ case 14
	.4byte _080046B8 @ case 15
	.4byte _080046B8 @ case 16
	.4byte _080046B8 @ case 17
	.4byte _080046B8 @ case 18
	.4byte _080046B8 @ case 19
	.4byte _080046A6 @ case 20
	.4byte _080046B8 @ case 21
	.4byte _080046B4 @ case 22
_08004688:
	cmp r7, r4
	bge _0800468E
	adds r7, r4, #0
_0800468E:
	ldr r0, _0800469C @ =0x020335C0
	ldrb r0, [r0, #3]
	cmp r0, #0
	beq _080046A0
	adds r3, #1
	b _080046A2
	.align 2, 0
_0800469C: .4byte 0x020335C0
_080046A0:
	adds r3, #2
_080046A2:
	movs r4, #0
	b _080046B8
_080046A6:
	adds r2, #1
	b _080046B8
_080046AA:
	adds r0, r1, #0
	subs r0, #0x80
	cmp r0, #1
	bhi _080046B4
	adds r2, #1
_080046B4:
	adds r5, #1
	adds r4, #1
_080046B8:
	adds r2, #1
_080046BA:
	ldrb r0, [r2]
	cmp r0, #0
	bne _0800460C
	cmp r6, #0
	beq _080046E2
	ldr r0, _080046D0 @ =0x020335C0
	ldrb r0, [r0, #3]
	cmp r0, #0
	beq _080046D4
	adds r3, #1
	b _080046D6
	.align 2, 0
_080046D0: .4byte 0x020335C0
_080046D4:
	adds r3, #2
_080046D6:
	adds r0, r7, #0
	cmp r0, r4
	bge _080046DE
	adds r0, r4, #0
_080046DE:
	strb r0, [r6]
	strb r3, [r6, #1]
_080046E2:
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_080046EC
sub_080046EC: @ 0x080046EC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r5, r0, #0
	movs r6, #0
	movs r4, #0
	movs r0, #1
	bl sub_08002B98
	ldr r0, _08004714 @ =0x020376A4
	strb r6, [r0]
	ldrb r0, [r5, #0xc]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1e
	cmp r0, #1
	beq _08004718
	cmp r0, #2
	beq _08004724
	b _0800472C
	.align 2, 0
_08004714: .4byte 0x020376A4
_08004718:
	movs r6, #1
	ldr r0, _08004720 @ =0x020335C0
	ldrb r4, [r0, #2]
	b _0800472C
	.align 2, 0
_08004720: .4byte 0x020335C0
_08004724:
	movs r6, #0xa
	ldr r0, _080047BC @ =0x020335C0
	ldrb r0, [r0, #2]
	adds r4, r0, #1
_0800472C:
	lsls r0, r4, #0x1c
	lsrs r4, r0, #0x10
	movs r1, #9
	ldrsb r1, [r5, r1]
	movs r3, #7
	ldrsb r3, [r5, r3]
	subs r0, r3, #1
	cmp r1, r0
	blt _080047A8
	orrs r6, r4
	mov r8, r6
	ldr r7, _080047C0 @ =0x001FFFFF
_08004744:
	movs r2, #5
	ldrsb r2, [r5, r2]
	lsls r2, r2, #6
	movs r0, #4
	ldrsb r0, [r5, r0]
	lsls r0, r0, #1
	ldr r1, _080047C4 @ =0x02030850
	adds r0, r0, r1
	adds r1, r2, r0
	movs r6, #0
	subs r0, r3, #1
	cmp r6, r0
	bge _0800477C
_0800475E:
	movs r2, #6
	ldrsb r2, [r5, r2]
	ands r2, r7
	adds r4, r1, #0
	adds r4, #0x40
	adds r0, r4, #0
	bl CpuSet
	adds r1, r4, #0
	adds r6, #1
	movs r0, #7
	ldrsb r0, [r5, r0]
	subs r0, #1
	cmp r6, r0
	blt _0800475E
_0800477C:
	mov r0, sp
	mov r2, r8
	strh r2, [r0]
	movs r2, #6
	ldrsb r2, [r5, r2]
	ands r2, r7
	movs r0, #0x80
	lsls r0, r0, #0x11
	orrs r2, r0
	mov r0, sp
	bl CpuSet
	ldrb r0, [r5, #9]
	subs r0, #1
	strb r0, [r5, #9]
	movs r1, #9
	ldrsb r1, [r5, r1]
	movs r3, #7
	ldrsb r3, [r5, r3]
	subs r0, r3, #1
	cmp r1, r0
	bge _08004744
_080047A8:
	ldr r1, _080047C8 @ =0x020376A4
	movs r0, #1
	strb r0, [r1]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080047BC: .4byte 0x020335C0
_080047C0: .4byte 0x001FFFFF
_080047C4: .4byte 0x02030850
_080047C8: .4byte 0x020376A4

	thumb_func_start sub_080047CC
sub_080047CC: @ 0x080047CC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl sub_08003F78
	adds r4, r0, #0
	adds r0, r4, #4
	str r0, [sp]
	movs r1, #8
	adds r1, r1, r4
	mov r8, r1
	ldr r1, _08004854 @ =0x020376A4
	movs r0, #0
	strb r0, [r1]
	ldrh r0, [r4, #0x10]
	ldrh r2, [r4, #0xe]
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	ldr r5, _08004858 @ =0x020335C0
	ldrb r0, [r5, #2]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
	ldr r0, [sp]
	movs r2, #1
	ldrsb r2, [r0, r2]
	mov r1, r8
	movs r0, #1
	ldrsb r0, [r1, r0]
	adds r2, r2, r0
	lsls r2, r2, #6
	movs r0, #4
	ldrsb r0, [r4, r0]
	movs r1, #8
	ldrsb r1, [r4, r1]
	adds r0, r0, r1
	lsls r0, r0, #1
	ldr r1, _0800485C @ =0x02030850
	adds r0, r0, r1
	adds r7, r2, r0
	ldrb r2, [r5]
	lsls r2, r2, #0xe
	mov r1, sb
	lsls r0, r1, #5
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r0, r0, r1
	adds r2, r2, r0
	mov sl, r2
	cmp r6, #0xff
	bhi _08004860
	ldrb r1, [r5, #0xa]
	ldrb r2, [r5, #0xb]
	adds r0, r6, #0
	bl sub_080051CC
	movs r5, #1
	b _08004876
	.align 2, 0
_08004854: .4byte 0x020376A4
_08004858: .4byte 0x020335C0
_0800485C: .4byte 0x02030850
_08004860:
	ldrb r1, [r5, #3]
	adds r0, r6, #0
	bl sub_08005120
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrb r1, [r5, #0xa]
	ldrb r2, [r5, #0xb]
	bl sub_0800527C
	movs r5, #2
_08004876:
	ldr r0, _080048E4 @ =0x02033840
	lsls r2, r5, #3
	mov r1, sl
	bl CpuFastSet
	ldrh r0, [r4, #0x10]
	adds r0, r0, r5
	strh r0, [r4, #0x10]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r2, [r4, #0x12]
	cmp r0, r2
	blo _08004894
	movs r0, #0
	strh r0, [r4, #0x10]
_08004894:
	mov r0, sb
	ldr r1, [sp, #4]
	orrs r0, r1
	strh r0, [r7]
	cmp r5, #2
	bne _080048AA
	adds r7, #0x40
	mov r0, sb
	adds r0, #1
	orrs r0, r1
	strh r0, [r7]
_080048AA:
	mov r2, r8
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldr r2, [sp]
	movs r1, #2
	ldrsb r1, [r2, r1]
	cmp r0, r1
	ble _080048CC
	movs r0, #0
	mov r1, r8
	strb r0, [r1]
	ldrb r0, [r1, #1]
	adds r0, r5, r0
	strb r0, [r1, #1]
_080048CC:
	ldr r1, _080048E8 @ =0x020376A4
	movs r0, #1
	strb r0, [r1]
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080048E4: .4byte 0x02033840
_080048E8: .4byte 0x020376A4

	thumb_func_start sub_080048EC
sub_080048EC: @ 0x080048EC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0
	ldr r0, [sp, #0x1c]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov ip, r1
	lsls r2, r2, #0x18
	lsrs r5, r2, #0x18
	mov sb, r5
	lsls r3, r3, #0x18
	lsrs r4, r3, #0x18
	mov r8, r4
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	ldr r0, _08004924 @ =0x020335C0
	ldrb r0, [r0, #3]
	cmp r0, #0
	beq _08004928
	adds r0, r1, #0
	movs r1, #1
	bl sub_08005120
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	b _0800492E
	.align 2, 0
_08004924: .4byte 0x020335C0
_08004928:
	cmp r1, #0xff
	bhi _0800493A
	adds r0, r1, #0
_0800492E:
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_080051CC
	movs r5, #1
	b _0800495C
_0800493A:
	mov r0, ip
	movs r1, #0
	bl sub_08005120
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r1, sb
	mov r2, r8
	bl sub_0800527C
	cmp r7, #0
	beq _08004956
	cmp r7, #1
	beq _0800495A
_08004956:
	movs r5, #2
	b _0800495C
_0800495A:
	movs r5, #0x81
_0800495C:
	movs r0, #0x80
	ands r0, r5
	cmp r0, #0
	beq _08004988
	ldr r4, _08004984 @ =0x02033840
	adds r0, r4, #0
	adds r1, r6, #0
	movs r2, #8
	bl CpuFastSet
	movs r0, #0x80
	lsls r0, r0, #3
	adds r6, r6, r0
	adds r4, #0x20
	adds r0, r4, #0
	adds r1, r6, #0
	movs r2, #8
	bl CpuFastSet
	b _08004992
	.align 2, 0
_08004984: .4byte 0x02033840
_08004988:
	ldr r0, _080049A4 @ =0x02033840
	lsls r2, r5, #3
	adds r1, r6, #0
	bl CpuFastSet
_08004992:
	movs r0, #0x7f
	ands r5, r0
	adds r0, r5, #0
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080049A4: .4byte 0x02033840

	thumb_func_start sub_080049A8
sub_080049A8: @ 0x080049A8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r1, #0
	lsls r4, r0, #0x10
	asrs r0, r4, #0x10
	bl sub_08003F78
	adds r5, r0, #0
	cmp r5, #0
	beq _08004A1A
	movs r7, #0
	ldrb r0, [r6]
	cmp r0, #0
	beq _08004A1A
	mov r8, r4
_080049C8:
	ldrb r4, [r6]
	movs r1, #9
	ldrsb r1, [r5, r1]
	movs r0, #7
	ldrsb r0, [r5, r0]
	cmp r1, r0
	blt _080049DC
	adds r0, r5, #0
	bl sub_080046EC
_080049DC:
	cmp r7, #0
	bne _08004A00
	adds r0, r4, #0
	subs r0, #0x81
	cmp r0, #0x1e
	bls _080049FC
	subs r0, #0x5f
	cmp r0, #0xa
	bls _080049FC
	cmp r4, #0xa
	bne _08004A04
	strb r7, [r5, #8]
	ldrb r0, [r5, #9]
	adds r0, #2
	strb r0, [r5, #9]
	b _08004A12
_080049FC:
	adds r7, r4, #0
	b _08004A12
_08004A00:
	lsls r0, r7, #8
	orrs r4, r0
_08004A04:
	lsls r1, r4, #0x10
	lsrs r1, r1, #0x10
	mov r2, r8
	asrs r0, r2, #0x10
	bl sub_080047CC
	movs r7, #0
_08004A12:
	adds r6, #1
	ldrb r0, [r6]
	cmp r0, #0
	bne _080049C8
_08004A1A:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08004A24
sub_08004A24: @ 0x08004A24
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r0, [sp, #0x20]
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov sb, r2
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov r8, r3
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	movs r6, #0
	movs r2, #0
	b _08004A84
_08004A4A:
	ldrb r1, [r4]
	cmp r2, #0
	bne _08004A62
	adds r0, r1, #0
	subs r0, #0x81
	cmp r0, #0x1e
	bls _08004A5E
	subs r0, #0x5f
	cmp r0, #0xa
	bhi _08004A66
_08004A5E:
	adds r2, r1, #0
	b _08004A82
_08004A62:
	lsls r0, r2, #8
	orrs r1, r0
_08004A66:
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r7, [sp]
	adds r0, r5, #0
	mov r2, sb
	mov r3, r8
	bl sub_080048EC
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r0, #5
	adds r5, r5, r1
	adds r6, r6, r0
	movs r2, #0
_08004A82:
	adds r4, #1
_08004A84:
	ldrb r0, [r4]
	cmp r0, #0
	bne _08004A4A
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08004A9C
sub_08004A9C: @ 0x08004A9C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl sub_08003F78
	adds r4, r0, #0
	adds r0, r4, #4
	str r0, [sp]
	movs r1, #8
	adds r1, r1, r4
	mov r8, r1
	ldr r1, _08004B2C @ =0x020376A4
	movs r0, #0
	strb r0, [r1]
	ldrh r0, [r4, #0x10]
	ldrh r2, [r4, #0xe]
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	ldr r5, _08004B30 @ =0x020335C0
	ldrb r0, [r5, #2]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
	ldr r0, [sp]
	movs r2, #1
	ldrsb r2, [r0, r2]
	mov r1, r8
	movs r0, #1
	ldrsb r0, [r1, r0]
	adds r2, r2, r0
	lsls r2, r2, #6
	movs r0, #4
	ldrsb r0, [r4, r0]
	movs r1, #8
	ldrsb r1, [r4, r1]
	adds r0, r0, r1
	lsls r0, r0, #1
	ldr r1, _08004B34 @ =0x02030850
	adds r0, r0, r1
	adds r7, r2, r0
	ldrb r2, [r5]
	lsls r2, r2, #0xe
	mov r1, sb
	lsls r0, r1, #5
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r0, r0, r1
	adds r2, r2, r0
	mov sl, r2
	ldrb r0, [r5, #3]
	cmp r0, #0
	beq _08004B38
	adds r0, r6, #0
	bl sub_080050DC
	adds r6, r0, #0
	ldrb r1, [r5, #0xa]
	ldrb r2, [r5, #0xb]
	adds r0, r6, #0
	bl sub_080051CC
	movs r5, #1
	b _08004B44
	.align 2, 0
_08004B2C: .4byte 0x020376A4
_08004B30: .4byte 0x020335C0
_08004B34: .4byte 0x02030850
_08004B38:
	ldrb r1, [r5, #0xa]
	ldrb r2, [r5, #0xb]
	adds r0, r6, #0
	bl sub_0800527C
	movs r5, #2
_08004B44:
	ldr r0, _08004BB0 @ =0x02033840
	lsls r2, r5, #3
	mov r1, sl
	bl CpuFastSet
	ldrh r0, [r4, #0x10]
	adds r0, r0, r5
	strh r0, [r4, #0x10]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r2, [r4, #0x12]
	cmp r0, r2
	blo _08004B62
	movs r0, #0
	strh r0, [r4, #0x10]
_08004B62:
	mov r0, sb
	ldr r1, [sp, #4]
	orrs r0, r1
	strh r0, [r7]
	cmp r5, #2
	bne _08004B78
	adds r7, #0x40
	mov r0, sb
	adds r0, #1
	orrs r0, r1
	strh r0, [r7]
_08004B78:
	mov r2, r8
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldr r2, [sp]
	movs r1, #2
	ldrsb r1, [r2, r1]
	cmp r0, r1
	ble _08004B9A
	movs r0, #0
	mov r1, r8
	strb r0, [r1]
	ldrb r0, [r1, #1]
	adds r0, r5, r0
	strb r0, [r1, #1]
_08004B9A:
	ldr r1, _08004BB4 @ =0x020376A4
	movs r0, #1
	strb r0, [r1]
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08004BB0: .4byte 0x02033840
_08004BB4: .4byte 0x020376A4

	thumb_func_start sub_08004BB8
sub_08004BB8: @ 0x08004BB8
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r0, [sp, #0x14]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x18
	lsrs r5, r2, #0x18
	lsls r3, r3, #0x18
	lsrs r7, r3, #0x18
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r0, _08004BEC @ =0x020335C0
	ldrb r0, [r0, #3]
	cmp r0, #0
	beq _08004BF0
	adds r0, r1, #0
	bl sub_080050DC
	adds r1, r0, #0
	adds r0, r1, #0
	adds r1, r5, #0
	adds r2, r7, #0
	bl sub_080051CC
	movs r5, #1
	b _08004C08
	.align 2, 0
_08004BEC: .4byte 0x020335C0
_08004BF0:
	adds r0, r1, #0
	adds r1, r5, #0
	adds r2, r7, #0
	bl sub_0800527C
	cmp r4, #0
	beq _08004C02
	cmp r4, #1
	beq _08004C06
_08004C02:
	movs r5, #2
	b _08004C08
_08004C06:
	movs r5, #0x81
_08004C08:
	movs r0, #0x80
	ands r0, r5
	cmp r0, #0
	beq _08004C34
	ldr r4, _08004C30 @ =0x02033840
	adds r0, r4, #0
	adds r1, r6, #0
	movs r2, #8
	bl CpuFastSet
	movs r0, #0x80
	lsls r0, r0, #3
	adds r6, r6, r0
	adds r4, #0x20
	adds r0, r4, #0
	adds r1, r6, #0
	movs r2, #8
	bl CpuFastSet
	b _08004C3E
	.align 2, 0
_08004C30: .4byte 0x02033840
_08004C34:
	ldr r0, _08004C4C @ =0x02033840
	lsls r2, r5, #3
	adds r1, r6, #0
	bl CpuFastSet
_08004C3E:
	movs r0, #0x7f
	ands r5, r0
	adds r0, r5, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08004C4C: .4byte 0x02033840

	thumb_func_start sub_08004C50
sub_08004C50: @ 0x08004C50
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r1, #0
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	asrs r0, r0, #0x10
	bl sub_08003F78
	adds r5, r0, #0
	ldr r0, _08004C70 @ =0x020335C0
	ldrb r7, [r0, #0xa]
	ldrb r0, [r0, #0xb]
	mov r8, r0
	b _08004D74
	.align 2, 0
_08004C70: .4byte 0x020335C0
_08004C74:
	ldrb r1, [r4]
	ldrb r2, [r4, #1]
	cmp r1, #0xff
	beq _08004D72
	cmp r1, #0x2f
	bhi _08004D48
	adds r0, r1, #0
	subs r0, #0xa
	cmp r0, #0x16
	bhi _08004D40
	lsls r0, r0, #2
	ldr r1, _08004C94 @ =_08004C98
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08004C94: .4byte _08004C98
_08004C98: @ jump table
	.4byte _08004CF4 @ case 0
	.4byte _08004D14 @ case 1
	.4byte _08004D40 @ case 2
	.4byte _08004D40 @ case 3
	.4byte _08004D40 @ case 4
	.4byte _08004D40 @ case 5
	.4byte _08004D44 @ case 6
	.4byte _08004D40 @ case 7
	.4byte _08004D40 @ case 8
	.4byte _08004D40 @ case 9
	.4byte _08004D40 @ case 10
	.4byte _08004D40 @ case 11
	.4byte _08004D40 @ case 12
	.4byte _08004D40 @ case 13
	.4byte _08004D40 @ case 14
	.4byte _08004D40 @ case 15
	.4byte _08004D40 @ case 16
	.4byte _08004D40 @ case 17
	.4byte _08004D40 @ case 18
	.4byte _08004D40 @ case 19
	.4byte _08004D1E @ case 20
	.4byte _08004D32 @ case 21
	.4byte _08004D44 @ case 22
_08004CF4:
	movs r0, #0
	strb r0, [r5, #8]
	ldr r0, _08004D08 @ =0x020335C0
	ldrb r0, [r0, #3]
	cmp r0, #0
	beq _08004D0C
	ldrb r0, [r5, #9]
	adds r0, #1
	strb r0, [r5, #9]
	b _08004D72
	.align 2, 0
_08004D08: .4byte 0x020335C0
_08004D0C:
	ldrb r0, [r5, #9]
	adds r0, #2
	strb r0, [r5, #9]
	b _08004D72
_08004D14:
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	bl sub_08004514
	b _08004D72
_08004D1E:
	cmp r2, #8
	bne _08004D2A
	adds r0, r7, #0
	bl sub_080044DC
	b _08004D40
_08004D2A:
	adds r0, r2, #0
	bl sub_080044DC
	b _08004D40
_08004D32:
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	subs r1, r2, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl sub_08005DC4
_08004D40:
	adds r4, #1
	b _08004D72
_08004D44:
	movs r1, #0x10
	b _08004D6A
_08004D48:
	adds r0, r2, #0
	subs r0, #0x80
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bhi _08004D62
	adds r0, r1, #0
	adds r1, r2, #0
	bl sub_08005080
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r4, #1
_08004D62:
	adds r0, r1, #0
	subs r0, #0x30
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
_08004D6A:
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	bl sub_08004A9C
_08004D72:
	adds r4, #1
_08004D74:
	ldrb r0, [r4]
	cmp r0, #0
	beq _08004D7C
	b _08004C74
_08004D7C:
	ldr r0, _08004D90 @ =0x020335C0
	strb r7, [r0, #0xa]
	mov r1, r8
	strb r1, [r0, #0xb]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08004D90: .4byte 0x020335C0

	thumb_func_start sub_08004D94
sub_08004D94: @ 0x08004D94
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r0, [sp, #0x28]
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov sl, r2
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov sb, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r0, _08004DC4 @ =0x020335C0
	ldrb r6, [r0, #0xa]
	ldrb r0, [r0, #0xb]
	str r0, [sp, #4]
	movs r7, #0
	b _08004E44
	.align 2, 0
_08004DC4: .4byte 0x020335C0
_08004DC8:
	ldrb r1, [r4]
	ldrb r0, [r4, #1]
	adds r2, r0, #0
	cmp r1, #0xff
	beq _08004E42
	cmp r1, #0x2f
	bhi _08004E08
	cmp r1, #0x1e
	beq _08004DEE
	cmp r1, #0x1e
	bgt _08004DE4
	cmp r1, #0x10
	beq _08004E00
	b _08004E04
_08004DE4:
	cmp r1, #0x1f
	beq _08004E04
	cmp r1, #0x20
	beq _08004E00
	b _08004E04
_08004DEE:
	cmp r0, #8
	bne _08004DFA
	adds r0, r6, #0
	bl sub_080044DC
	b _08004E04
_08004DFA:
	bl sub_080044DC
	b _08004E04
_08004E00:
	movs r1, #0x10
	b _08004E2A
_08004E04:
	adds r4, #1
	b _08004E42
_08004E08:
	adds r0, r2, #0
	subs r0, #0x80
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bhi _08004E22
	adds r0, r1, #0
	adds r1, r2, #0
	bl sub_08005080
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r4, #1
_08004E22:
	adds r0, r1, #0
	subs r0, #0x30
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
_08004E2A:
	mov r0, r8
	str r0, [sp]
	adds r0, r5, #0
	mov r2, sl
	mov r3, sb
	bl sub_08004BB8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r0, #5
	adds r5, r5, r1
	adds r7, r7, r0
_08004E42:
	adds r4, #1
_08004E44:
	ldrb r0, [r4]
	cmp r0, #0
	bne _08004DC8
	ldr r0, _08004E68 @ =0x020335C0
	strb r6, [r0, #0xa]
	mov r1, sp
	ldrb r1, [r1, #4]
	strb r1, [r0, #0xb]
	lsls r0, r7, #0x18
	lsrs r0, r0, #0x18
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08004E68: .4byte 0x020335C0

	thumb_func_start sub_08004E6C
sub_08004E6C: @ 0x08004E6C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	adds r6, r0, #0
	adds r4, r1, #0
	ldr r0, [sp, #0x34]
	ldr r1, [sp, #0x38]
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	str r2, [sp, #4]
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r3, [sp, #8]
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #0xc]
	ldr r0, _08004EA8 @ =0x020335C0
	ldrb r1, [r0, #0xa]
	mov r8, r1
	ldrb r0, [r0, #0xb]
	str r0, [sp, #0x10]
	movs r5, #0
	mov sl, r5
	mov sb, r5
	b _08004FA4
	.align 2, 0
_08004EA8: .4byte 0x020335C0
_08004EAC:
	ldrb r1, [r4]
	ldrb r2, [r4, #1]
	cmp r1, #0xff
	beq _08004FA2
	cmp r1, #0x2f
	bhi _08004F66
	adds r0, r1, #0
	subs r0, #0xa
	cmp r0, #0x16
	bhi _08004FA2
	lsls r0, r0, #2
	ldr r1, _08004ECC @ =_08004ED0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08004ECC: .4byte _08004ED0
_08004ED0: @ jump table
	.4byte _08004F2C @ case 0
	.4byte _08004FA2 @ case 1
	.4byte _08004FA2 @ case 2
	.4byte _08004FA2 @ case 3
	.4byte _08004FA2 @ case 4
	.4byte _08004FA2 @ case 5
	.4byte _08004F62 @ case 6
	.4byte _08004FA2 @ case 7
	.4byte _08004FA2 @ case 8
	.4byte _08004FA2 @ case 9
	.4byte _08004FA2 @ case 10
	.4byte _08004FA2 @ case 11
	.4byte _08004FA2 @ case 12
	.4byte _08004FA2 @ case 13
	.4byte _08004FA2 @ case 14
	.4byte _08004FA2 @ case 15
	.4byte _08004FA2 @ case 16
	.4byte _08004FA2 @ case 17
	.4byte _08004FA2 @ case 18
	.4byte _08004FA2 @ case 19
	.4byte _08004F4C @ case 20
	.4byte _08004F5E @ case 21
	.4byte _08004F62 @ case 22
_08004F2C:
	cmp r7, #0
	bne _08004F34
	movs r5, #2
	b _08004F3A
_08004F34:
	cmp r7, #1
	bne _08004F3A
	movs r5, #1
_08004F3A:
	ldr r2, [sp, #0xc]
	mov r1, sb
	subs r0, r2, r1
	muls r0, r5, r0
	lsls r0, r0, #5
	adds r6, r6, r0
	movs r2, #0
	mov sb, r2
	b _08004FA2
_08004F4C:
	cmp r2, #8
	bne _08004F58
	mov r0, r8
	bl sub_080044DC
	b _08004F5E
_08004F58:
	adds r0, r2, #0
	bl sub_080044DC
_08004F5E:
	adds r4, #1
	b _08004FA2
_08004F62:
	movs r1, #0x10
	b _08004F88
_08004F66:
	adds r0, r2, #0
	subs r0, #0x80
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bhi _08004F80
	adds r0, r1, #0
	adds r1, r2, #0
	bl sub_08005080
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r4, #1
_08004F80:
	adds r0, r1, #0
	subs r0, #0x30
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
_08004F88:
	str r7, [sp]
	adds r0, r6, #0
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
	bl sub_08004BB8
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	lsls r0, r5, #5
	adds r6, r6, r0
	add sl, r5
	movs r0, #1
	add sb, r0
_08004FA2:
	adds r4, #1
_08004FA4:
	ldrb r0, [r4]
	cmp r0, #0
	beq _08004FAC
	b _08004EAC
_08004FAC:
	ldr r0, _08004FD0 @ =0x020335C0
	mov r1, r8
	strb r1, [r0, #0xa]
	mov r2, sp
	ldrb r2, [r2, #0x10]
	strb r2, [r0, #0xb]
	mov r1, sl
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08004FD0: .4byte 0x020335C0

	thumb_func_start sub_08004FD4
sub_08004FD4: @ 0x08004FD4
	push {r4, r5, r6, lr}
	ldr r4, [sp, #0x10]
	ldr r5, [sp, #0x14]
	lsls r0, r0, #0x18
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	lsls r2, r2, #0x18
	lsls r3, r3, #0x18
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	lsrs r0, r0, #0xd
	lsrs r3, r3, #0x12
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r3, r3, r1
	adds r0, r0, r3
	lsrs r2, r2, #0x17
	adds r2, r0, r2
	ldr r0, _08005024 @ =0x020335C0
	ldrb r0, [r0, #2]
	lsls r0, r0, #0x1c
	lsrs r3, r0, #0x10
	cmp r4, #0
	beq _0800503E
_08005008:
	adds r0, r6, #0
	orrs r0, r3
	strh r0, [r2]
	adds r1, r2, #0
	adds r1, #0x40
	cmp r5, #0
	beq _0800501A
	cmp r5, #1
	beq _08005028
_0800501A:
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r0, r6, #0
	b _0800502C
	.align 2, 0
_08005024: .4byte 0x020335C0
_08005028:
	adds r0, r6, #0
	adds r0, #0x20
_0800502C:
	orrs r0, r3
	strh r0, [r1]
	adds r2, #2
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	subs r4, #1
	cmp r4, #0
	bne _08005008
_0800503E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08005044
sub_08005044: @ 0x08005044
	push {r4, r5, lr}
	ldr r4, [sp, #0xc]
	lsls r0, r0, #0x18
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	lsls r2, r2, #0x18
	lsls r3, r3, #0x18
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	lsrs r0, r0, #0xd
	lsrs r3, r3, #0x12
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r3, r3, r1
	adds r0, r0, r3
	lsrs r2, r2, #0x17
	adds r1, r0, r2
	cmp r4, #0
	beq _0800507A
_0800506A:
	strh r5, [r1]
	adds r0, r1, #0
	adds r0, #0x40
	strh r5, [r0]
	adds r1, #2
	subs r4, #1
	cmp r4, #0
	bne _0800506A
_0800507A:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08005080
sub_08005080: @ 0x08005080
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0x80
	bne _080050C2
	cmp r0, #0x9a
	bhi _08005096
	adds r0, #0x6a
	b _080050D4
_08005096:
	cmp r0, #0x9f
	bhi _0800509E
	adds r0, #0x6a
	b _080050D4
_0800509E:
	cmp r0, #0xa4
	bhi _080050A6
	adds r0, #0x6a
	b _080050D4
_080050A6:
	cmp r0, #0xae
	bhi _080050AE
	adds r0, #0x65
	b _080050D4
_080050AE:
	cmp r0, #0xda
	bls _080050D2
	cmp r0, #0xdf
	bls _080050D2
	cmp r0, #0xe4
	bls _080050D2
	cmp r0, #0xee
	bhi _080050D8
	adds r0, #0x3e
	b _080050D4
_080050C2:
	cmp r1, #0x81
	bne _080050D8
	cmp r0, #0xae
	bhi _080050CE
	adds r0, #0x6a
	b _080050D4
_080050CE:
	cmp r0, #0xee
	bhi _080050D8
_080050D2:
	adds r0, #0x43
_080050D4:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
_080050D8:
	pop {r1}
	bx r1

	thumb_func_start sub_080050DC
sub_080050DC: @ 0x080050DC
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _080050E8 @ =0x0807EB5C
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_080050E8: .4byte 0x0807EB5C

	thumb_func_start sub_080050EC
sub_080050EC: @ 0x080050EC
	push {lr}
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r1, r2, #0
	movs r0, #0xff
	ands r2, r0
	ldr r0, _0800511C @ =0x0807EC5E
	adds r0, r2, r0
	ldrb r2, [r0]
	subs r1, #0x3e
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #1
	bhi _08005114
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r1, #0
	adds r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_08005114:
	adds r0, r2, #0
	pop {r1}
	bx r1
	.align 2, 0
_0800511C: .4byte 0x0807EC5E

	thumb_func_start sub_08005120
sub_08005120: @ 0x08005120
	push {lr}
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r0, _0800513C @ =0x0000839E
	cmp r3, r0
	bls _08005140
	movs r1, #0x80
	lsls r1, r1, #8
	adds r0, r1, #0
	orrs r3, r0
	b _080051BE
	.align 2, 0
_0800513C: .4byte 0x0000839E
_08005140:
	cmp r3, #0xff
	bls _080051BE
	ldr r2, _08005154 @ =0x00007EC0
	adds r0, r3, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x6f
	bhi _08005158
	adds r2, r0, #0
	b _0800518E
	.align 2, 0
_08005154: .4byte 0x00007EC0
_08005158:
	ldr r2, _08005168 @ =0x00007DB1
	adds r0, r3, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xa2
	bhi _0800516C
	adds r2, #0x70
	b _0800517A
	.align 2, 0
_08005168: .4byte 0x00007DB1
_0800516C:
	ldr r2, _08005184 @ =0x00007CC0
	adds r0, r3, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x56
	bhi _0800518C
	ldr r2, _08005188 @ =0x00007DD3
_0800517A:
	adds r0, r3, r2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	b _0800518E
	.align 2, 0
_08005184: .4byte 0x00007CC0
_08005188: .4byte 0x00007DD3
_0800518C:
	movs r2, #0
_0800518E:
	cmp r1, #0
	beq _080051A0
	ldr r0, _0800519C @ =0x0807E888
	adds r0, r2, r0
	ldrb r2, [r0]
	b _080051BC
	.align 2, 0
_0800519C: .4byte 0x0807E888
_080051A0:
	ldr r0, _080051C4 @ =0x0807E9F2
	adds r0, r2, r0
	ldrb r2, [r0]
	ldr r0, _080051C8 @ =0x00008379
	cmp r3, r0
	beq _080051B2
	adds r0, #3
	cmp r3, r0
	bne _080051BC
_080051B2:
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r2, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_080051BC:
	adds r3, r2, #0
_080051BE:
	adds r0, r3, #0
	pop {r1}
	bx r1
	.align 2, 0
_080051C4: .4byte 0x0807E9F2
_080051C8: .4byte 0x00008379

	thumb_func_start sub_080051CC
sub_080051CC: @ 0x080051CC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #0x10]
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov sb, r2
	ldr r1, _08005204 @ =0x0807E860
	mov r0, sp
	movs r2, #0x10
	bl sub_08072A10
	ldr r0, _08005208 @ =0x02033840
	mov sl, r0
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r4
	cmp r0, #0
	beq _0800520C
	mov r5, sp
	b _08005212
	.align 2, 0
_08005204: .4byte 0x0807E860
_08005208: .4byte 0x02033840
_0800520C:
	lsls r1, r4, #4
	ldr r0, _08005278 @ =0x08125AB8
	adds r5, r1, r0
_08005212:
	mov r0, sb
	movs r1, #0
	bl sub_08003F14
	movs r0, #0
_0800521C:
	movs r4, #0
	mov r6, sl
	ldm r6!, {r2}
	adds r0, #1
	mov r8, r0
	movs r3, #1
_08005228:
	lsls r4, r4, #8
	ldrb r0, [r5]
	orrs r4, r0
	adds r5, #1
	subs r3, #1
	cmp r3, #0
	bge _08005228
	movs r1, #3
	mov ip, r1
	movs r7, #0xf
	movs r3, #7
_0800523E:
	adds r0, r4, #0
	mov r1, ip
	ands r0, r1
	lsrs r4, r4, #2
	lsls r2, r2, #4
	ldr r1, [sp, #0x10]
	cmp r0, #0
	bne _08005250
	mov r1, sb
_08005250:
	ands r1, r7
	orrs r2, r1
	subs r3, #1
	cmp r3, #0
	bge _0800523E
	mov r0, sl
	str r2, [r0]
	mov sl, r6
	mov r0, r8
	cmp r0, #7
	ble _0800521C
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08005278: .4byte 0x08125AB8

	thumb_func_start sub_0800527C
sub_0800527C: @ 0x0800527C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsls r1, r1, #0x18
	lsrs r7, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov sb, r2
	ldr r1, _080052B4 @ =0x0807E870
	mov r0, sp
	movs r2, #0x18
	bl sub_08072A10
	ldr r0, _080052B8 @ =0x02033840
	mov sl, r0
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r4
	cmp r0, #0
	beq _080052BC
	mov r6, sp
	b _080052C6
	.align 2, 0
_080052B4: .4byte 0x0807E870
_080052B8: .4byte 0x02033840
_080052BC:
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #3
	ldr r1, _0800534C @ =0x08126B78
	adds r6, r0, r1
_080052C6:
	mov r0, sb
	movs r1, #0
	bl sub_08003F14
	movs r1, #0
_080052D0:
	movs r5, #0
	mov ip, sl
	mov r0, ip
	adds r0, #4
	mov ip, r0
	subs r0, #4
	ldm r0!, {r3}
	subs r0, r1, #2
	adds r1, #1
	mov r8, r1
	cmp r0, #0xb
	bhi _080052F8
	movs r4, #1
_080052EA:
	lsls r5, r5, #8
	ldrb r0, [r6]
	orrs r5, r0
	adds r6, #1
	subs r4, #1
	cmp r4, #0
	bge _080052EA
_080052F8:
	movs r4, #7
_080052FA:
	movs r0, #3
	adds r2, r5, #0
	ands r2, r0
	lsrs r5, r5, #2
	lsls r3, r3, #4
	mov r1, sb
	cmp r2, #0
	beq _08005324
	adds r1, r7, #0
	cmp r2, #1
	beq _08005324
	movs r1, #0xb
	cmp r7, #8
	beq _08005324
	movs r1, #0xa
	cmp r7, #2
	beq _08005324
	movs r1, #1
	cmp r7, #1
	bne _08005324
	movs r1, #9
_08005324:
	movs r0, #0xf
	ands r1, r0
	orrs r3, r1
	subs r4, #1
	cmp r4, #0
	bge _080052FA
	mov r0, sl
	str r3, [r0]
	mov sl, ip
	mov r1, r8
	cmp r1, #0xf
	ble _080052D0
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800534C: .4byte 0x08126B78

	thumb_func_start sub_08005350
sub_08005350: @ 0x08005350
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r2, #0
	adds r5, r3, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	ldr r0, _08005398 @ =0x03002310
	strb r4, [r0]
	strb r1, [r0, #1]
	strb r6, [r0, #2]
	strh r5, [r0, #4]
	ldr r0, _0800539C @ =0x08125620
	lsls r4, r4, #5
	movs r1, #0xa0
	lsls r1, r1, #0x13
	adds r4, r4, r1
	adds r1, r4, #0
	bl sub_08008308
	ldr r0, _080053A0 @ =0x08125644
	lsls r6, r6, #0xe
	lsls r5, r5, #5
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r5, r5, r1
	adds r6, r6, r5
	adds r1, r6, #0
	bl sub_08008374
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08005398: .4byte 0x03002310
_0800539C: .4byte 0x08125620
_080053A0: .4byte 0x08125644

	thumb_func_start sub_080053A4
sub_080053A4: @ 0x080053A4
	push {lr}
	sub sp, #4
	movs r0, #0
	str r0, [sp]
	ldr r0, _080053C8 @ =0x03002310
	ldrb r1, [r0, #1]
	lsls r1, r1, #0xb
	movs r0, #0xc0
	lsls r0, r0, #0x13
	adds r1, r1, r0
	ldr r2, _080053CC @ =0x01000200
	mov r0, sp
	bl CpuFastSet
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_080053C8: .4byte 0x03002310
_080053CC: .4byte 0x01000200

	thumb_func_start sub_080053D0
sub_080053D0: @ 0x080053D0
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	lsls r1, r1, #0x18
	lsls r2, r2, #0x18
	ldr r5, _08005404 @ =0x03002310
	ldrb r4, [r5, #1]
	lsls r4, r4, #0xb
	lsrs r2, r2, #0x12
	movs r3, #0xc0
	lsls r3, r3, #0x13
	adds r2, r2, r3
	adds r4, r4, r2
	lsrs r1, r1, #0x17
	adds r4, r4, r1
	lsrs r0, r0, #0x10
	ldrh r1, [r5, #4]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	ldrb r1, [r5]
	lsls r1, r1, #0x1c
	orrs r1, r0
	lsrs r1, r1, #0x10
	strh r1, [r4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08005404: .4byte 0x03002310

	thumb_func_start sub_08005408
sub_08005408: @ 0x08005408
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r8, r1
	lsls r2, r2, #0x18
	lsrs r6, r2, #0x18
	ldr r1, _0800543C @ =0x03002310
	ldrb r0, [r1]
	lsls r0, r0, #0x1c
	lsrs r7, r0, #0x10
_08005422:
	ldrb r2, [r1, #1]
	lsls r2, r2, #0xb
	lsls r0, r6, #6
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r0, r0, r1
	adds r2, r2, r0
	mov r1, r8
	lsls r0, r1, #1
	adds r5, r2, r0
	movs r2, #0
	b _0800548E
	.align 2, 0
_0800543C: .4byte 0x03002310
_08005440:
	ldrb r1, [r4]
	cmp r2, #0
	bne _0800546C
	adds r0, r1, #0
	subs r0, #0x81
	cmp r0, #0x1e
	bls _08005468
	subs r0, #0x5f
	cmp r0, #0xa
	bls _08005468
	cmp r1, #0xa
	bne _08005470
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	ldr r1, _08005464 @ =0x03002310
	b _08005422
	.align 2, 0
_08005464: .4byte 0x03002310
_08005468:
	adds r2, r1, #0
	b _0800548C
_0800546C:
	lsls r0, r2, #8
	orrs r1, r0
_08005470:
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	movs r1, #1
	bl sub_08005120
	lsls r0, r0, #0x10
	ldr r1, _080054A0 @ =0x03002310
	lsrs r0, r0, #0x10
	ldrh r1, [r1, #4]
	adds r0, r0, r1
	orrs r0, r7
	strh r0, [r5]
	adds r5, #2
	movs r2, #0
_0800548C:
	adds r4, #1
_0800548E:
	ldrb r0, [r4]
	cmp r0, #0
	bne _08005440
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080054A0: .4byte 0x03002310

	thumb_func_start sub_080054A4
sub_080054A4: @ 0x080054A4
	bx lr
	.align 2, 0

	thumb_func_start sub_080054A8
sub_080054A8: @ 0x080054A8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r8, r1
	lsls r2, r2, #0x18
	lsrs r6, r2, #0x18
	ldr r1, _080054D8 @ =0x03002310
	ldrb r0, [r1]
	lsls r0, r0, #0x1c
	lsrs r7, r0, #0x10
_080054C2:
	ldrb r2, [r1, #1]
	lsls r2, r2, #0xb
	lsls r0, r6, #6
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r0, r0, r1
	adds r2, r2, r0
	mov r1, r8
	lsls r0, r1, #1
	adds r5, r2, r0
	b _080055AE
	.align 2, 0
_080054D8: .4byte 0x03002310
_080054DC:
	ldrb r1, [r4]
	ldrb r2, [r4, #1]
	cmp r1, #0xff
	beq _080055AC
	cmp r1, #0x2f
	bgt _0800557A
	adds r0, r1, #0
	subs r0, #0xa
	cmp r0, #0x16
	bhi _080055AC
	lsls r0, r0, #2
	ldr r1, _080054FC @ =_08005500
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080054FC: .4byte _08005500
_08005500: @ jump table
	.4byte _0800555C @ case 0
	.4byte _080055AC @ case 1
	.4byte _080055AC @ case 2
	.4byte _080055AC @ case 3
	.4byte _080055AC @ case 4
	.4byte _080055AC @ case 5
	.4byte _08005576 @ case 6
	.4byte _080055AC @ case 7
	.4byte _080055AC @ case 8
	.4byte _080055AC @ case 9
	.4byte _080055AC @ case 10
	.4byte _080055AC @ case 11
	.4byte _080055AC @ case 12
	.4byte _080055AC @ case 13
	.4byte _080055AC @ case 14
	.4byte _080055AC @ case 15
	.4byte _080055AC @ case 16
	.4byte _080055AC @ case 17
	.4byte _080055AC @ case 18
	.4byte _080055AC @ case 19
	.4byte _0800556C @ case 20
	.4byte _08005572 @ case 21
	.4byte _08005576 @ case 22
_0800555C:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	ldr r1, _08005568 @ =0x03002310
	b _080054C2
	.align 2, 0
_08005568: .4byte 0x03002310
_0800556C:
	adds r0, r2, #0
	bl sub_080044DC
_08005572:
	adds r4, #1
	b _080055AC
_08005576:
	movs r1, #0x10
	b _08005594
_0800557A:
	adds r0, r2, #0
	subs r0, #0x80
	cmp r0, #1
	bhi _08005592
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	adds r1, r2, #0
	bl sub_08005080
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r4, #1
_08005592:
	subs r1, #0x30
_08005594:
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	bl sub_080050DC
	lsls r0, r0, #0x10
	ldr r1, _080055C0 @ =0x03002310
	lsrs r0, r0, #0x10
	ldrh r1, [r1, #4]
	adds r0, r0, r1
	orrs r0, r7
	strh r0, [r5]
	adds r5, #2
_080055AC:
	adds r4, #1
_080055AE:
	ldrb r0, [r4]
	cmp r0, #0
	bne _080054DC
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080055C0: .4byte 0x03002310

	thumb_func_start sub_080055C4
sub_080055C4: @ 0x080055C4
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r4, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r6, r2, #0x18
	lsls r3, r3, #0x18
	lsrs r5, r3, #0x18
	cmp r1, #4
	beq _080055EC
	cmp r1, #4
	bgt _080055FC
	cmp r1, #2
	bne _080055FC
	ldr r1, _080055E8 @ =0x0807ED60
	b _080055EE
	.align 2, 0
_080055E8: .4byte 0x0807ED60
_080055EC:
	ldr r1, _080055F8 @ =0x0807ED68
_080055EE:
	mov r0, sp
	adds r2, r4, #0
	bl sub_08072B34
	b _08005606
	.align 2, 0
_080055F8: .4byte 0x0807ED68
_080055FC:
	ldr r1, _08005618 @ =0x0807ED70
	mov r0, sp
	adds r2, r4, #0
	bl sub_08072B34
_08005606:
	mov r0, sp
	adds r1, r6, #0
	adds r2, r5, #0
	bl sub_08005408
	add sp, #0x10
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08005618: .4byte 0x0807ED70

	thumb_func_start sub_0800561C
sub_0800561C: @ 0x0800561C
	push {r4, r5, lr}
	sub sp, #0x10
	adds r3, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	ldr r1, _0800564C @ =0x0807ED78
	mov r0, sp
	adds r2, r3, #0
	bl sub_08072B34
	mov r0, sp
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_08005408
	add sp, #0x10
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800564C: .4byte 0x0807ED78

	thumb_func_start sub_08005650
sub_08005650: @ 0x08005650
	ldr r0, _08005654 @ =0x082ABA28
	bx lr
	.align 2, 0
_08005654: .4byte 0x082ABA28

	thumb_func_start sub_08005658
sub_08005658: @ 0x08005658
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	lsrs r7, r1, #0x10
	bl sub_08005650
	adds r0, #4
	lsls r1, r7, #2
	adds r1, r1, r0
	ldr r1, [r1]
	lsrs r1, r1, #2
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r5, r0, #0
	ldr r0, [r5]
	lsrs r0, r0, #8
	movs r1, #3
	ands r1, r0
	cmp r1, #0
	beq _08005684
	adds r0, #4
	subs r0, r0, r1
_08005684:
	bl sub_08007CE8
	adds r4, r0, #0
	adds r0, r5, #0
	adds r1, r4, #0
	bl LZ77UnCompReadNormalWrite8bit
	ldr r2, _080056BC @ =0x0203A100
	lsls r1, r6, #1
	adds r1, r1, r6
	lsls r1, r1, #2
	adds r0, r2, #0
	adds r0, #8
	adds r0, r1, r0
	str r4, [r0]
	adds r0, r2, #0
	adds r0, #0xc
	adds r0, r1, r0
	str r7, [r0]
	adds r0, r2, #0
	adds r0, #0x10
	adds r1, r1, r0
	movs r0, #0
	str r0, [r1]
	adds r0, r4, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080056BC: .4byte 0x0203A100

	thumb_func_start sub_080056C0
sub_080056C0: @ 0x080056C0
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r6, _08005708 @ =0x0203A100
	movs r1, #0
	adds r2, r6, #0
	adds r2, #0x10
	movs r5, #0
	movs r7, #3
_080056D0:
	adds r0, r6, #0
	adds r0, #8
	adds r4, r5, r0
	ldr r0, [r4]
	cmp r0, #0
	beq _080056F4
	str r1, [sp]
	str r2, [sp, #4]
	bl sub_08007CF8
	ldr r1, [sp]
	str r1, [r4]
	adds r0, r6, #0
	adds r0, #0xc
	adds r0, r5, r0
	str r1, [r0]
	ldr r2, [sp, #4]
	str r1, [r2]
_080056F4:
	adds r2, #0xc
	adds r5, #0xc
	subs r7, #1
	cmp r7, #0
	bge _080056D0
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08005708: .4byte 0x0203A100

	thumb_func_start sub_0800570C
sub_0800570C: @ 0x0800570C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	lsrs r5, r6, #0x10
	movs r2, #0
	ldr r0, _08005748 @ =0x0203A100
	mov ip, r0
	mov r4, ip
	adds r4, #0x10
	movs r3, #0
	movs r1, #0xc
	add r1, ip
	mov r8, r1
	mov r7, ip
	adds r7, #8
_0800572C:
	mov r1, r8
	adds r0, r3, r1
	ldr r0, [r0]
	cmp r0, r5
	bne _0800574C
	adds r0, r3, r7
	ldr r1, [r0]
	cmp r1, #0
	beq _0800574C
	ldr r0, [r4]
	adds r0, #1
	str r0, [r4]
	adds r0, r1, #0
	b _080057B4
	.align 2, 0
_08005748: .4byte 0x0203A100
_0800574C:
	adds r4, #0xc
	adds r3, #0xc
	adds r2, #1
	cmp r2, #3
	ble _0800572C
	movs r2, #0
	movs r1, #0
_0800575A:
	mov r4, ip
	adds r4, #8
	adds r0, r1, r4
	ldr r0, [r0]
	cmp r0, #0
	bne _0800576A
	lsls r0, r2, #0x18
	b _080057AC
_0800576A:
	adds r1, #0xc
	adds r2, #1
	cmp r2, #3
	ble _0800575A
	movs r3, #1
	rsbs r3, r3, #0
	movs r5, #0
	movs r2, #0
	adds r1, r4, #0
	adds r1, #8
_0800577E:
	ldr r0, [r1]
	cmp r3, r0
	bls _08005788
	adds r3, r0, #0
	adds r5, r2, #0
_08005788:
	adds r1, #0xc
	adds r2, #1
	cmp r2, #3
	ble _0800577E
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #2
	mov r1, ip
	adds r1, #8
	adds r4, r0, r1
	ldr r0, [r4]
	cmp r0, #0
	beq _080057AA
	bl sub_08007CF8
	movs r0, #0
	str r0, [r4]
_080057AA:
	lsls r0, r5, #0x18
_080057AC:
	lsrs r0, r0, #0x18
	adds r1, r6, #0
	bl sub_08005658
_080057B4:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080057C0
sub_080057C0: @ 0x080057C0
	push {lr}
	bl sub_080057D0
	bl sub_08006554
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080057D0
sub_080057D0: @ 0x080057D0
	push {r4, lr}
	sub sp, #4
	movs r0, #0
	str r0, [sp]
	ldr r4, _08005800 @ =0x0203A100
	ldr r2, _08005804 @ =0x0500002C
	mov r0, sp
	adds r1, r4, #0
	bl CpuSet
	ldr r0, _08005808 @ =0x0000FFFF
	adds r2, r0, #0
	movs r1, #1
_080057EA:
	ldrh r0, [r4]
	orrs r0, r2
	strh r0, [r4]
	adds r4, #2
	subs r1, #1
	cmp r1, #0
	bge _080057EA
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08005800: .4byte 0x0203A100
_08005804: .4byte 0x0500002C
_08005808: .4byte 0x0000FFFF

	thumb_func_start sub_0800580C
sub_0800580C: @ 0x0800580C
	push {lr}
	ldr r1, _08005820 @ =0x0203A0F4
	movs r0, #0
	str r0, [r1]
	bl sub_080056C0
	bl sub_080065C4
	pop {r0}
	bx r0
	.align 2, 0
_08005820: .4byte 0x0203A0F4

	thumb_func_start sub_08005824
sub_08005824: @ 0x08005824
	push {lr}
	sub sp, #4
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
	movs r1, #0x1c
	movs r2, #0xa
	movs r3, #0
	bl sub_08004028
	bl sub_080057C0
	movs r0, #1
	bl sub_08004124
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800585C
sub_0800585C: @ 0x0800585C
	push {lr}
	movs r0, #0
	bl sub_08004124
	bl sub_0800580C
	bl sub_08003FE4
	pop {r0}
	bx r0

	thumb_func_start sub_08005870
sub_08005870: @ 0x08005870
	push {lr}
	sub sp, #4
	movs r1, #0x80
	lsls r1, r1, #3
	movs r0, #0
	bl sub_08006BE8
	bl sub_08003F9C
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [sp]
	movs r0, #2
	movs r1, #0x1c
	movs r2, #0xe
	movs r3, #0
	bl sub_08004028
	bl sub_080057C0
	movs r0, #1
	bl sub_08004124
	add sp, #4
	pop {r0}
	bx r0

	thumb_func_start sub_080058A4
sub_080058A4: @ 0x080058A4
	push {lr}
	movs r0, #0
	bl sub_08004124
	bl sub_0800580C
	bl sub_08003FE4
	pop {r0}
	bx r0

	thumb_func_start sub_080058B8
sub_080058B8: @ 0x080058B8
	push {r4, r5, r6, lr}
	ldr r4, _080058EC @ =0x0203A100
	adds r5, r4, #0
	adds r5, #0x3c
	adds r6, r4, #0
	adds r6, #0x3d
_080058C4:
	movs r0, #0
	ldrsb r0, [r5, r0]
	cmp r0, #0
	beq _080058E2
	movs r0, #0
	strb r0, [r5]
	ldr r0, [r4, #0x38]
	cmp r0, #0
	beq _080058DE
	movs r2, #0
	ldrsh r1, [r4, r2]
	bl sub_080060A8
_080058DE:
	movs r0, #1
	strb r0, [r6]
_080058E2:
	movs r0, #1
	bl sub_08002B98
	b _080058C4
	.align 2, 0
_080058EC: .4byte 0x0203A100

	thumb_func_start sub_080058F0
sub_080058F0: @ 0x080058F0
	push {r4, lr}
	ldr r4, _08005910 @ =0x0203A100
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _08005908
	ldr r0, _08005914 @ =sub_080058B8
	movs r2, #0x80
	lsls r2, r2, #4
	movs r1, #0x40
	bl sub_08002A44
	str r0, [r4, #4]
_08005908:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08005910: .4byte 0x0203A100
_08005914: .4byte sub_080058B8

	thumb_func_start sub_08005918
sub_08005918: @ 0x08005918
	push {r4, lr}
	ldr r4, _08005930 @ =0x0203A100
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0800592A
	bl sub_08002AA4
	movs r0, #0
	str r0, [r4, #4]
_0800592A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08005930: .4byte 0x0203A100

	thumb_func_start sub_08005934
sub_08005934: @ 0x08005934
	push {r4, r5, lr}
	sub sp, #4
	ldr r4, _080059A0 @ =0x0203A100
	movs r0, #0
	ldrsh r1, [r4, r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080059D6
	ldr r1, _080059A4 @ =0xFFFFFF00
	ldr r0, [sp]
	ands r0, r1
	ldr r1, _080059A8 @ =0xFFFF00FF
	ands r0, r1
	movs r1, #0xe0
	lsls r1, r1, #4
	orrs r0, r1
	ldr r1, _080059AC @ =0xFF00FFFF
	ands r0, r1
	movs r1, #0xf0
	lsls r1, r1, #0xd
	orrs r0, r1
	ldr r1, _080059B0 @ =0x00FFFFFF
	ands r0, r1
	movs r1, #0xc0
	lsls r1, r1, #0x13
	orrs r0, r1
	str r0, [sp]
	mov r0, sp
	movs r1, #2
	bl sub_08004300
	strh r0, [r4]
	movs r5, #0
	movs r4, #0
_0800597A:
	lsls r0, r4, #0xf
	adds r5, r5, r0
	adds r4, #1
	cmp r4, #7
	ble _0800597A
	movs r0, #0xcf
	bl sub_0806F5DC
	ldr r1, _080059B4 @ =0x030024E0
	lsrs r0, r5, #0x10
	strh r0, [r1, #0x12]
	lsls r0, r4, #0xf
	subs r5, r5, r0
	subs r4, #1
	cmp r4, #0
	bge _080059B8
	movs r0, #0
	strh r0, [r1, #0x12]
	b _080059D2
	.align 2, 0
_080059A0: .4byte 0x0203A100
_080059A4: .4byte 0xFFFFFF00
_080059A8: .4byte 0xFFFF00FF
_080059AC: .4byte 0xFF00FFFF
_080059B0: .4byte 0x00FFFFFF
_080059B4: .4byte 0x030024E0
_080059B8:
	movs r0, #1
	bl sub_08002B98
	ldr r1, _080059E0 @ =0x030024E0
	lsrs r0, r5, #0x10
	movs r2, #0
	strh r0, [r1, #0x12]
	lsls r0, r4, #0xf
	subs r5, r5, r0
	subs r4, #1
	cmp r4, #0
	bge _080059B8
	strh r2, [r1, #0x12]
_080059D2:
	bl sub_080058F0
_080059D6:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080059E0: .4byte 0x030024E0

	thumb_func_start sub_080059E4
sub_080059E4: @ 0x080059E4
	push {r4, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	bl sub_08005934
	adds r0, r4, #0
	bl sub_08006744
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080059FC
sub_080059FC: @ 0x080059FC
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	ldr r6, _08005A28 @ =0x0203A100
	movs r0, #0
	ldrsh r1, [r6, r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _08005A20
	bl sub_080058F0
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08004300
	strh r0, [r6]
_08005A20:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08005A28: .4byte 0x0203A100

	thumb_func_start sub_08005A2C
sub_08005A2C: @ 0x08005A2C
	push {r4, r5, lr}
	ldr r5, _08005A58 @ =0x0203A100
	ldrh r4, [r5]
	bl sub_08005918
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	movs r0, #1
	rsbs r0, r0, #0
	cmp r4, r0
	beq _08005A4C
	adds r0, r4, #0
	bl sub_080043F0
	ldr r0, _08005A5C @ =0x0000FFFF
	strh r0, [r5]
_08005A4C:
	bl sub_080067F0
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08005A58: .4byte 0x0203A100
_08005A5C: .4byte 0x0000FFFF

	thumb_func_start sub_08005A60
sub_08005A60: @ 0x08005A60
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _08005A70 @ =0x0203A100
	adds r1, #0x3f
	ldrb r2, [r1]
	orrs r0, r2
	strb r0, [r1]
	bx lr
	.align 2, 0
_08005A70: .4byte 0x0203A100

	thumb_func_start sub_08005A74
sub_08005A74: @ 0x08005A74
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _08005A84 @ =0x0203A100
	adds r2, #0x3f
	ldrb r1, [r2]
	bics r1, r0
	strb r1, [r2]
	bx lr
	.align 2, 0
_08005A84: .4byte 0x0203A100

	thumb_func_start sub_08005A88
sub_08005A88: @ 0x08005A88
	ldr r1, _08005A90 @ =0x0203A100
	adds r1, #0x40
	strb r0, [r1]
	bx lr
	.align 2, 0
_08005A90: .4byte 0x0203A100

	thumb_func_start sub_08005A94
sub_08005A94: @ 0x08005A94
	ldr r0, _08005A9C @ =0x0203A100
	adds r0, #0x40
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_08005A9C: .4byte 0x0203A100

	thumb_func_start sub_08005AA0
sub_08005AA0: @ 0x08005AA0
	ldr r0, _08005AAC @ =0x0203A100
	adds r0, #0x40
	movs r1, #3
	strb r1, [r0]
	bx lr
	.align 2, 0
_08005AAC: .4byte 0x0203A100

	thumb_func_start sub_08005AB0
sub_08005AB0: @ 0x08005AB0
	ldr r0, _08005ABC @ =0x0203A100
	adds r0, #0x40
	movs r1, #0
	strb r1, [r0]
	bx lr
	.align 2, 0
_08005ABC: .4byte 0x0203A100

	thumb_func_start sub_08005AC0
sub_08005AC0: @ 0x08005AC0
	ldr r1, _08005AC8 @ =0x0203A100
	adds r1, #0x3e
	strb r0, [r1]
	bx lr
	.align 2, 0
_08005AC8: .4byte 0x0203A100

	thumb_func_start sub_08005ACC
sub_08005ACC: @ 0x08005ACC
	ldr r0, _08005ADC @ =0x0203A100
	movs r1, #0
	str r1, [r0, #0x38]
	adds r0, #0x3c
	movs r1, #1
	strb r1, [r0]
	bx lr
	.align 2, 0
_08005ADC: .4byte 0x0203A100

	thumb_func_start sub_08005AE0
sub_08005AE0: @ 0x08005AE0
	push {r4, lr}
	ldr r1, _08005B14 @ =0x0203A100
	adds r0, r1, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _08005B0C
	adds r1, #0x3d
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne _08005B0C
	adds r4, r1, #0
_08005AFE:
	movs r0, #1
	bl sub_08002B98
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #0
	beq _08005AFE
_08005B0C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08005B14: .4byte 0x0203A100

	thumb_func_start sub_08005B18
sub_08005B18: @ 0x08005B18
	push {lr}
	ldr r0, _08005B28 @ =0x0203A100
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl sub_08004514
	pop {r0}
	bx r0
	.align 2, 0
_08005B28: .4byte 0x0203A100

	thumb_func_start sub_08005B2C
sub_08005B2C: @ 0x08005B2C
	push {r4, r5, lr}
	ldr r0, _08005B5C @ =0x0203A100
	adds r0, #0x3f
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08005B86
	ldr r4, _08005B60 @ =0x030024B0
	ldrh r1, [r4, #2]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08005B86
	bl sub_080065EC
	movs r0, #1
	bl sub_08002B98
	adds r5, r4, #0
	ldr r4, _08005B64 @ =0x02000003
	b _08005B6E
	.align 2, 0
_08005B5C: .4byte 0x0203A100
_08005B60: .4byte 0x030024B0
_08005B64: .4byte 0x02000003
_08005B68:
	movs r0, #1
	bl sub_08002B98
_08005B6E:
	ldr r0, [r5]
	ands r0, r4
	cmp r0, #0
	beq _08005B68
	movs r0, #0xd3
	bl sub_0806F5DC
	bl sub_08006688
	movs r0, #1
	bl sub_08002B98
_08005B86:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08005B8C
sub_08005B8C: @ 0x08005B8C
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r5, _08005BB0 @ =0x030024B0
_08005B94:
	movs r0, #1
	bl sub_08002B98
	ldrh r0, [r5]
	ands r0, r4
	cmp r0, #0
	beq _08005B94
	movs r0, #1
	bl sub_08002B98
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08005BB0: .4byte 0x030024B0

	thumb_func_start sub_08005BB4
sub_08005BB4: @ 0x08005BB4
	push {r4, lr}
	adds r4, r2, #0
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r2, r1, #0x18
	cmp r3, #0xf
	bhi _08005BD6
	ldr r0, _08005BDC @ =0x0203A100
	adds r1, r0, #0
	adds r1, #0x60
	adds r1, r3, r1
	strb r2, [r1]
	lsls r1, r3, #2
	adds r0, #0x70
	adds r1, r1, r0
	str r4, [r1]
_08005BD6:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08005BDC: .4byte 0x0203A100

	thumb_func_start sub_08005BE0
sub_08005BE0: @ 0x08005BE0
	push {r4, r5, lr}
	sub sp, #0xc
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r1, _08005C0C @ =0x0807EEDC
	mov r0, sp
	movs r2, #0xb
	bl sub_08072A10
	mov r1, sp
	adds r0, r1, r4
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r2, r5, #0
	bl sub_08005BB4
	add sp, #0xc
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08005C0C: .4byte 0x0807EEDC

	thumb_func_start sub_08005C10
sub_08005C10: @ 0x08005C10
	push {lr}
	adds r2, r1, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #8
	bl sub_08005BB4
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08005C24
sub_08005C24: @ 0x08005C24
	push {lr}
	adds r2, r1, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #9
	bl sub_08005BB4
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08005C38
sub_08005C38: @ 0x08005C38
	push {r4, lr}
	adds r4, r1, #0
	bl sub_08006828
	adds r1, r4, #0
	bl sub_080045FC
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_08005C50
sub_08005C50: @ 0x08005C50
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r0, #0x45
	ldrb r0, [r0]
	adds r4, r5, #0
	adds r4, #0x44
	strb r0, [r4]
	bl sub_080066A4
	movs r0, #0
	ldrsb r0, [r4, r0]
	lsls r0, r0, #2
	adds r0, r5, r0
	adds r1, r0, #0
	adds r1, #0x48
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	lsls r1, r1, #0x13
	ldr r2, _08005CBC @ =0xFFFF0000
	adds r1, r1, r2
	adds r0, #0x49
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #3
	adds r0, #2
	lsls r0, r0, #0x10
	lsrs r6, r1, #0x10
	orrs r6, r0
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	asrs r1, r6, #0x10
	bl sub_0800671C
	movs r0, #8
	bl sub_08002B98
	adds r0, r5, #0
	adds r0, #0x49
	adds r2, r5, #0
	adds r2, #0x4d
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r1, r0
	bne _08005CD0
	movs r0, #0x20
	mov r8, r0
	movs r7, #0x10
	b _08005D88
	.align 2, 0
_08005CBC: .4byte 0xFFFF0000
_08005CC0:
	movs r0, #0xce
	bl sub_0806F5DC
	adds r1, r5, #0
	adds r1, #0x44
	movs r0, #0xff
	strb r0, [r1]
	b _08005DA8
_08005CD0:
	movs r2, #0x40
	mov r8, r2
	movs r7, #0x80
	b _08005D88
_08005CD8:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08005CEC
	ldr r0, _08005D1C @ =0x03004400
	ldrb r0, [r0, #8]
	cmp r0, #8
	beq _08005CEC
	cmp r0, #0x26
	bne _08005CC0
_08005CEC:
	ldr r0, _08005D20 @ =0x030024B0
	ldrh r0, [r0]
	mov r2, r8
	ands r2, r0
	cmp r2, #0
	beq _08005D24
	adds r1, r5, #0
	adds r1, #0x44
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	adds r4, r1, #0
	cmp r0, #0
	bge _08005D14
	adds r0, r5, #0
	adds r0, #0x46
	ldrb r0, [r0]
	subs r0, #1
	strb r0, [r4]
_08005D14:
	movs r0, #0xca
	bl sub_0806F5DC
	b _08005D4E
	.align 2, 0
_08005D1C: .4byte 0x03004400
_08005D20: .4byte 0x030024B0
_08005D24:
	ands r0, r7
	adds r4, r5, #0
	adds r4, #0x44
	cmp r0, #0
	beq _08005D4E
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	adds r1, r5, #0
	adds r1, #0x46
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	cmp r0, r1
	blt _08005D48
	strb r2, [r4]
_08005D48:
	movs r0, #0xca
	bl sub_0806F5DC
_08005D4E:
	movs r0, #0
	ldrsb r0, [r4, r0]
	lsls r0, r0, #2
	adds r0, r5, r0
	adds r1, r0, #0
	adds r1, #0x48
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	lsls r1, r1, #0x13
	ldr r2, _08005DB8 @ =0xFFFF0000
	adds r1, r1, r2
	adds r0, #0x49
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #3
	adds r0, #2
	lsls r0, r0, #0x10
	lsrs r6, r1, #0x10
	orrs r6, r0
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	asrs r1, r6, #0x10
	bl sub_0800671C
	movs r0, #1
	bl sub_08002B98
_08005D88:
	ldr r0, _08005DBC @ =0x030024B0
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08005CD8
	ldr r0, _08005DC0 @ =0x0203A100
	adds r0, #0x3f
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08005DA8
	movs r0, #0xcc
	bl sub_0806F5DC
_08005DA8:
	bl sub_08006700
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08005DB8: .4byte 0xFFFF0000
_08005DBC: .4byte 0x030024B0
_08005DC0: .4byte 0x0203A100

	thumb_func_start sub_08005DC4
sub_08005DC4: @ 0x08005DC4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x4c
	adds r4, r1, #0
	lsls r0, r0, #0x10
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r1, _08005E20 @ =0x0203A100
	mov sb, r1
	lsrs r2, r0, #0x10
	str r2, [sp, #0x44]
	asrs r0, r0, #0x10
	bl sub_08003F78
	mov sl, r0
	lsls r0, r4, #2
	mov r1, sb
	adds r1, #0x70
	adds r0, r0, r1
	ldr r5, [r0]
	ldr r0, _08005E24 @ =0x020335C0
	ldrb r0, [r0, #0xa]
	str r0, [sp, #0x48]
	movs r0, #0
	str r0, [sp, #0x40]
	add r0, sp, #0x40
	ldr r2, _08005E28 @ =0x05000010
	mov r1, sp
	bl CpuSet
	mov r0, sb
	adds r0, #0x60
	adds r4, r4, r0
	ldrb r0, [r4]
	cmp r0, #0xa
	bls _08005E14
	b _0800608E
_08005E14:
	lsls r0, r0, #2
	ldr r1, _08005E2C @ =_08005E30
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08005E20: .4byte 0x0203A100
_08005E24: .4byte 0x020335C0
_08005E28: .4byte 0x05000010
_08005E2C: .4byte _08005E30
_08005E30: @ jump table
	.4byte _08005EA4 @ case 0
	.4byte _08005E5C @ case 1
	.4byte _08005E6C @ case 2
	.4byte _08005E6C @ case 3
	.4byte _08005E76 @ case 4
	.4byte _08005E84 @ case 5
	.4byte _08005EA4 @ case 6
	.4byte _08005E94 @ case 7
	.4byte _08005F68 @ case 8
	.4byte _08005FC0 @ case 9
	.4byte _08005FDC @ case 10
_08005E5C:
	ldr r0, _08005E68 @ =0x0807ED7C
	lsls r1, r5, #2
	adds r1, r1, r0
	ldr r0, [r1]
	b _08005FDE
	.align 2, 0
_08005E68: .4byte 0x0807ED7C
_08005E6C:
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	bl sub_08001980
	b _08005FE2
_08005E76:
	ldr r0, _08005E80 @ =0x0807ED8C
	lsls r1, r5, #2
	adds r1, r1, r0
	ldr r0, [r1]
	b _08005FDE
	.align 2, 0
_08005E80: .4byte 0x0807ED8C
_08005E84:
	ldr r0, _08005E90 @ =0x0807EDC4
	lsls r1, r5, #2
	adds r1, r1, r0
	ldr r0, [r1]
	b _08005FDE
	.align 2, 0
_08005E90: .4byte 0x0807EDC4
_08005E94:
	ldr r0, _08005EA0 @ =0x0807EEAC
	subs r1, r5, #1
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	b _08005FDE
	.align 2, 0
_08005EA0: .4byte 0x0807EEAC
_08005EA4:
	mov r4, sp
	adds r6, r5, #0
	ldrb r0, [r6]
	cmp r0, #0
	bne _08005EB0
	b _08005FB6
_08005EB0:
	movs r5, #0x80
_08005EB2:
	ldrb r0, [r6]
	adds r6, #1
	bl sub_080050EC
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0xcf
	bhi _08005EC8
	adds r0, r1, #0
	adds r0, #0x30
	b _08005F5C
_08005EC8:
	cmp r1, #0xd4
	bhi _08005ED8
	adds r0, r1, #0
	subs r0, #0x3a
	strb r0, [r4]
	adds r4, #1
	strb r5, [r4]
	b _08005F5E
_08005ED8:
	cmp r1, #0xd9
	bhi _08005EE8
	adds r0, r1, #0
	subs r0, #0x3a
	strb r0, [r4]
	adds r4, #1
	strb r5, [r4]
	b _08005F5E
_08005EE8:
	cmp r1, #0xde
	bhi _08005EF8
	adds r0, r1, #0
	subs r0, #0x3a
	strb r0, [r4]
	adds r4, #1
	strb r5, [r4]
	b _08005F5E
_08005EF8:
	cmp r1, #0xe3
	bhi _08005F08
	adds r0, r1, #0
	subs r0, #0x35
	strb r0, [r4]
	adds r4, #1
	strb r5, [r4]
	b _08005F5E
_08005F08:
	cmp r1, #0xe8
	bhi _08005F12
	adds r0, r1, #0
	subs r0, #0x3a
	b _08005F56
_08005F12:
	cmp r1, #0xed
	bhi _08005F22
	adds r0, r1, #0
	subs r0, #0x13
	strb r0, [r4]
	adds r4, #1
	strb r5, [r4]
	b _08005F5E
_08005F22:
	cmp r1, #0xf2
	bhi _08005F32
	adds r0, r1, #0
	subs r0, #0x13
	strb r0, [r4]
	adds r4, #1
	strb r5, [r4]
	b _08005F5E
_08005F32:
	cmp r1, #0xf7
	bhi _08005F42
	adds r0, r1, #0
	subs r0, #0x13
	strb r0, [r4]
	adds r4, #1
	strb r5, [r4]
	b _08005F5E
_08005F42:
	cmp r1, #0xfc
	bhi _08005F52
	adds r0, r1, #0
	subs r0, #0xe
	strb r0, [r4]
	adds r4, #1
	strb r5, [r4]
	b _08005F5E
_08005F52:
	adds r0, r1, #0
	subs r0, #0x13
_08005F56:
	strb r0, [r4]
	adds r4, #1
	movs r0, #0x81
_08005F5C:
	strb r0, [r4]
_08005F5E:
	adds r4, #1
	ldrb r0, [r6]
	cmp r0, #0
	bne _08005EB2
	b _08005FB6
_08005F68:
	movs r7, #0
	movs r3, #0
	mov r8, r3
	ldr r6, _08005FBC @ =0x00989680
_08005F70:
	cmp r7, #0
	bne _08005F8A
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_08071134
	cmp r0, #0
	beq _08005F82
	movs r7, #1
_08005F82:
	cmp r7, #0
	bne _08005F8A
	cmp r6, #1
	bne _08005F9E
_08005F8A:
	mov r4, sp
	add r4, r8
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_08071134
	adds r0, #0x30
	strb r0, [r4]
	movs r0, #1
	add r8, r0
_08005F9E:
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_080711AC
	adds r5, r0, #0
	adds r0, r6, #0
	movs r1, #0xa
	bl sub_08071134
	adds r6, r0, #0
	cmp r6, #0
	bne _08005F70
_08005FB6:
	mov r4, sp
	b _08005FE4
	.align 2, 0
_08005FBC: .4byte 0x00989680
_08005FC0:
	ldr r1, [sp, #0x44]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	adds r1, r5, #0
	bl sub_080049A8
	b _0800608E
_08005FCE:
	ldr r0, _08005FD8 @ =0x020335C0
	add r2, sp, #0x48
	ldrb r2, [r2]
	strb r2, [r0, #0xa]
	b _0800608E
	.align 2, 0
_08005FD8: .4byte 0x020335C0
_08005FDC:
	adds r0, r5, #0
_08005FDE:
	bl sub_08006828
_08005FE2:
	adds r4, r0, #0
_08005FE4:
	ldrb r0, [r4]
	cmp r0, #0
	beq _0800608E
	ldr r3, [sp, #0x44]
	lsls r5, r3, #0x10
	asrs r6, r5, #0x10
_08005FF0:
	mov r1, sb
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, r6
	bne _08006008
	ldr r0, _08006020 @ =0x0203A100
	adds r0, #0x3c
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _08005FCE
_08006008:
	ldrb r1, [r4]
	ldrb r2, [r4, #1]
	cmp r1, #0x10
	beq _08006014
	cmp r1, #0x20
	bne _08006024
_08006014:
	mov r3, sl
	ldrb r0, [r3, #8]
	adds r0, #1
	strb r0, [r3, #8]
	b _08006086
	.align 2, 0
_08006020: .4byte 0x0203A100
_08006024:
	cmp r1, #0x1e
	bne _0800603E
	cmp r2, #8
	bne _08006034
	ldr r0, [sp, #0x48]
	bl sub_080044DC
	b _0800603A
_08006034:
	adds r0, r2, #0
	bl sub_080044DC
_0800603A:
	adds r4, #1
	b _08006086
_0800603E:
	adds r0, r2, #0
	subs r0, #0x80
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bhi _08006058
	adds r0, r1, #0
	adds r1, r2, #0
	bl sub_08005080
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r4, #1
_08006058:
	subs r1, #0x30
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	asrs r0, r5, #0x10
	bl sub_08004A9C
	mov r2, sb
	adds r2, #0x40
	ldrb r0, [r2]
	cmp r0, #0
	beq _08006086
	ldr r0, _080060A0 @ =0x030024B0
	ldrh r1, [r0, #2]
	ldr r3, _080060A4 @ =0x00000202
	adds r0, r3, #0
	ands r0, r1
	movs r1, #1
	cmp r0, #0
	bne _08006080
	ldrb r1, [r2]
_08006080:
	adds r0, r1, #0
	bl sub_08002B98
_08006086:
	adds r4, #1
	ldrb r0, [r4]
	cmp r0, #0
	bne _08005FF0
_0800608E:
	add sp, #0x4c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080060A0: .4byte 0x030024B0
_080060A4: .4byte 0x00000202

	thumb_func_start sub_080060A8
sub_080060A8: @ 0x080060A8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sb, r1
	bl sub_08006828
	adds r4, r0, #0
	ldr r7, _080060EC @ =0x0203A100
	mov r1, sb
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	bl sub_08003F78
	adds r6, r0, #0
	ldr r0, _080060F0 @ =0x020335C0
	ldrb r2, [r0, #0xa]
	mov r8, r2
	ldrb r0, [r0, #0xb]
	mov sl, r0
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	adds r1, r7, #0
	adds r1, #0x44
	ldr r2, _080060F4 @ =0x0100000E
	mov r0, sp
	bl CpuSet
	b _0800628C
	.align 2, 0
_080060EC: .4byte 0x0203A100
_080060F0: .4byte 0x020335C0
_080060F4: .4byte 0x0100000E
_080060F8:
	movs r3, #0
	ldrsh r0, [r7, r3]
	mov r2, sb
	lsls r1, r2, #0x10
	asrs r2, r1, #0x10
	adds r5, r1, #0
	cmp r0, r2
	bne _0800612C
	ldr r0, _08006124 @ =0x0203A100
	adds r0, #0x3c
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _0800612C
	ldr r0, _08006128 @ =0x020335C0
	mov r3, r8
	strb r3, [r0, #0xa]
	mov r1, sl
	strb r1, [r0, #0xb]
	b _080062B2
	.align 2, 0
_08006124: .4byte 0x0203A100
_08006128: .4byte 0x020335C0
_0800612C:
	ldrb r1, [r4]
	ldrb r2, [r4, #1]
	cmp r1, #0xff
	bne _0800613A
	bl sub_08005B2C
	b _0800628A
_0800613A:
	cmp r1, #0x2f
	bls _08006140
	b _08006244
_08006140:
	adds r0, r1, #0
	subs r0, #0xa
	cmp r0, #0x16
	bhi _08006238
	lsls r0, r0, #2
	ldr r1, _08006154 @ =_08006158
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08006154: .4byte _08006158
_08006158: @ jump table
	.4byte _080061B4 @ case 0
	.4byte _080061D2 @ case 1
	.4byte _08006238 @ case 2
	.4byte _080061DA @ case 3
	.4byte _08006238 @ case 4
	.4byte _080061E6 @ case 5
	.4byte _0800623C @ case 6
	.4byte _08006238 @ case 7
	.4byte _08006238 @ case 8
	.4byte _08006238 @ case 9
	.4byte _08006238 @ case 10
	.4byte _08006238 @ case 11
	.4byte _08006238 @ case 12
	.4byte _08006238 @ case 13
	.4byte _08006238 @ case 14
	.4byte _08006238 @ case 15
	.4byte _08006238 @ case 16
	.4byte _08006238 @ case 17
	.4byte _08006238 @ case 18
	.4byte _08006238 @ case 19
	.4byte _08006218 @ case 20
	.4byte _0800622C @ case 21
	.4byte _0800623C @ case 22
_080061B4:
	movs r0, #0
	strb r0, [r6, #8]
	bl sub_08004454
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080061CA
	ldrb r0, [r6, #9]
	adds r0, #1
	strb r0, [r6, #9]
	b _0800628A
_080061CA:
	ldrb r0, [r6, #9]
	adds r0, #2
	strb r0, [r6, #9]
	b _0800628A
_080061D2:
	asrs r0, r5, #0x10
	bl sub_08004514
	b _0800628A
_080061DA:
	adds r0, r7, #0
	adds r0, #0x46
	ldrb r0, [r0]
	adds r1, r7, #0
	adds r1, #0x45
	strb r0, [r1]
_080061E6:
	adds r2, r7, #0
	adds r2, #0x46
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r0, r0, #2
	adds r0, r7, r0
	ldrb r1, [r6, #8]
	ldrb r3, [r6, #4]
	adds r1, r1, r3
	subs r1, #2
	adds r0, #0x48
	strb r1, [r0]
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r0, r0, #2
	adds r0, r7, r0
	ldrb r1, [r6, #9]
	ldrb r3, [r6, #5]
	adds r1, r1, r3
	adds r0, #0x49
	strb r1, [r0]
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	b _0800628A
_08006218:
	cmp r2, #8
	bne _08006224
	mov r0, r8
	bl sub_080044DC
	b _08006238
_08006224:
	adds r0, r2, #0
	bl sub_080044DC
	b _08006238
_0800622C:
	asrs r0, r5, #0x10
	subs r1, r2, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl sub_08005DC4
_08006238:
	adds r4, #1
	b _0800628A
_0800623C:
	ldrb r0, [r6, #8]
	adds r0, #1
	strb r0, [r6, #8]
	b _0800628A
_08006244:
	adds r0, r2, #0
	subs r0, #0x80
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bhi _0800625E
	adds r0, r1, #0
	adds r1, r2, #0
	bl sub_08005080
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r4, #1
_0800625E:
	asrs r0, r5, #0x10
	subs r1, #0x30
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08004A9C
	adds r2, r7, #0
	adds r2, #0x40
	ldrb r0, [r2]
	cmp r0, #0
	beq _0800628A
	ldr r0, _080062C4 @ =0x030024B0
	ldrh r1, [r0, #2]
	ldr r0, _080062C8 @ =0x00000202
	ands r0, r1
	movs r1, #1
	cmp r0, #0
	bne _08006284
	ldrb r1, [r2]
_08006284:
	adds r0, r1, #0
	bl sub_08002B98
_0800628A:
	adds r4, #1
_0800628C:
	ldrb r0, [r4]
	cmp r0, #0
	beq _08006294
	b _080060F8
_08006294:
	adds r0, r7, #0
	adds r0, #0x46
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _080062A8
	adds r0, r7, #0
	bl sub_08005C50
_080062A8:
	ldr r0, _080062CC @ =0x020335C0
	mov r1, r8
	strb r1, [r0, #0xa]
	mov r2, sl
	strb r2, [r0, #0xb]
_080062B2:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080062C4: .4byte 0x030024B0
_080062C8: .4byte 0x00000202
_080062CC: .4byte 0x020335C0

	thumb_func_start sub_080062D0
sub_080062D0: @ 0x080062D0
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080062F0 @ =0x0203A100
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl sub_08004514
	bl sub_080058F0
	adds r0, r4, #0
	bl sub_080062F4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080062F0: .4byte 0x0203A100

	thumb_func_start sub_080062F4
sub_080062F4: @ 0x080062F4
	push {lr}
	ldr r1, _08006310 @ =0x0203A100
	str r0, [r1, #0x38]
	adds r2, r1, #0
	adds r2, #0x3c
	movs r3, #0
	movs r0, #1
	strb r0, [r2]
	adds r1, #0x3d
	strb r3, [r1]
	bl sub_08005AE0
	pop {r0}
	bx r0
	.align 2, 0
_08006310: .4byte 0x0203A100

	thumb_func_start sub_08006314
sub_08006314: @ 0x08006314
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	mov sb, r0
	adds r4, r1, #0
	lsls r5, r2, #0x18
	lsrs r5, r5, #0x18
	ldr r0, _080063BC @ =0x0203A100
	mov r8, r0
	movs r0, #0xd0
	bl sub_0806F5DC
	ldrb r0, [r4]
	adds r0, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #8
	ldr r1, _080063C0 @ =0xFF00FFFF
	ldr r3, [sp, #4]
	ands r3, r1
	orrs r3, r0
	ldrb r0, [r4, #1]
	adds r0, #2
	lsls r0, r0, #0x18
	ldr r1, _080063C4 @ =0x00FFFFFF
	ands r3, r1
	orrs r3, r0
	lsls r0, r3, #8
	asrs r0, r0, #0x18
	lsls r0, r0, #0x18
	asrs r1, r0, #0x18
	lsrs r0, r0, #0x1f
	adds r1, r1, r0
	asrs r1, r1, #1
	movs r0, #0xf
	subs r0, r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _080063C8 @ =0xFFFFFF00
	ands r2, r3
	orrs r2, r0
	asrs r0, r2, #0x18
	lsls r0, r0, #0x18
	asrs r1, r0, #0x18
	lsrs r0, r0, #0x1f
	adds r1, r1, r0
	asrs r1, r1, #1
	movs r0, #7
	subs r0, r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x10
	ldr r1, _080063CC @ =0xFFFF00FF
	ands r2, r1
	orrs r2, r0
	str r2, [sp, #4]
	add r4, sp, #4
	adds r0, r4, #0
	movs r1, #2
	bl sub_08004300
	lsls r7, r0, #0x10
	asrs r6, r7, #0x10
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_0800449C
	ldrb r0, [r4]
	adds r0, #2
	strb r0, [r4]
	ldrb r0, [r4, #2]
	subs r0, #2
	strb r0, [r4, #2]
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_08004478
	cmp r5, #0
	bne _080063D0
	mov r0, sb
	adds r1, r6, #0
	bl sub_080060A8
	b _0800646C
	.align 2, 0
_080063BC: .4byte 0x0203A100
_080063C0: .4byte 0xFF00FFFF
_080063C4: .4byte 0x00FFFFFF
_080063C8: .4byte 0xFFFFFF00
_080063CC: .4byte 0xFFFF00FF
_080063D0:
	mov r5, sb
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_080049A8
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	mov r1, r8
	adds r1, #0x44
	ldr r2, _08006404 @ =0x0100000E
	mov r0, sp
	bl CpuSet
	ldrb r0, [r5]
	mov r6, r8
	adds r6, #0x46
	cmp r0, #0
	beq _08006440
	adds r2, r6, #0
	adds r3, r4, #0
_080063FA:
	lsls r0, r0, #0x18
	cmp r0, #0
	bge _08006408
	adds r5, #1
	b _08006438
	.align 2, 0
_08006404: .4byte 0x0100000E
_08006408:
	lsrs r0, r0, #0x18
	cmp r0, #0xa
	bne _08006438
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r0, r0, #2
	add r0, r8
	ldrb r1, [r4]
	subs r1, #2
	adds r0, #0x48
	strb r1, [r0]
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r0, r0, #2
	add r0, r8
	ldrb r1, [r3, #1]
	adds r0, #0x49
	strb r1, [r0]
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	ldrb r0, [r3, #1]
	adds r0, #2
	strb r0, [r3, #1]
_08006438:
	adds r5, #1
	ldrb r0, [r5]
	cmp r0, #0
	bne _080063FA
_08006440:
	movs r0, #0
	ldrsb r0, [r6, r0]
	lsls r0, r0, #2
	add r0, r8
	ldrb r1, [r4]
	subs r1, #2
	adds r0, #0x48
	strb r1, [r0]
	movs r0, #0
	ldrsb r0, [r6, r0]
	lsls r0, r0, #2
	add r0, r8
	add r1, sp, #4
	ldrb r1, [r1, #1]
	adds r0, #0x49
	strb r1, [r0]
	ldrb r0, [r6]
	adds r0, #1
	strb r0, [r6]
	mov r0, r8
	bl sub_08005C50
_0800646C:
	asrs r1, r7, #0x10
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0800647C
	adds r0, r1, #0
	bl sub_080043F0
_0800647C:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800648C
sub_0800648C: @ 0x0800648C
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	bl sub_08006828
	mov r1, sp
	bl sub_080045FC
	bl sub_08005A94
	adds r5, r0, #0
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	movs r0, #0
	bl sub_08005A88
	adds r0, r4, #0
	mov r1, sp
	movs r2, #0
	bl sub_08006314
	adds r0, r5, #0
	bl sub_08005A88
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080064C4
sub_080064C4: @ 0x080064C4
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	mov r1, sp
	bl sub_0800458C
	bl sub_08005A94
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	movs r0, #0
	bl sub_08005A88
	adds r0, r5, #0
	mov r1, sp
	movs r2, #1
	bl sub_08006314
	adds r0, r4, #0
	bl sub_08005A88
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080064F8
sub_080064F8: @ 0x080064F8
	ldr r0, _08006504 @ =0x0203A100
	adds r0, #0x44
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	bx lr
	.align 2, 0
_08006504: .4byte 0x0203A100

	thumb_func_start sub_08006508
sub_08006508: @ 0x08006508
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _08006530 @ =0x0203A100
	movs r1, #0
	ldrsh r4, [r0, r1]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r4, r0
	beq _08006528
	adds r0, r4, #0
	bl sub_08004514
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_080049A8
_08006528:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08006530: .4byte 0x0203A100

	thumb_func_start sub_08006534
sub_08006534: @ 0x08006534
	push {lr}
	adds r1, r0, #0
	ldr r0, _08006550 @ =0x0203A100
	movs r3, #0
	ldrsh r2, [r0, r3]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	beq _0800654C
	adds r0, r2, #0
	bl sub_080049A8
_0800654C:
	pop {r0}
	bx r0
	.align 2, 0
_08006550: .4byte 0x0203A100

	thumb_func_start sub_08006554
sub_08006554: @ 0x08006554
	push {r4, r5, lr}
	sub sp, #4
	ldr r4, _080065A8 @ =0x02034BD0
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r2, _080065AC @ =0x0100000A
	mov r0, sp
	adds r1, r4, #0
	bl CpuSet
	movs r0, #0xf
	strb r0, [r4]
	movs r0, #0xe
	strb r0, [r4, #1]
	ldr r5, _080065B0 @ =0x08141D78
	adds r0, r5, #0
	bl sub_08006C14
	strh r0, [r4, #2]
	ldr r0, _080065B4 @ =0x08143864
	bl sub_08006C14
	strh r0, [r4, #4]
	ldr r0, _080065B8 @ =0x08141D14
	ldrb r1, [r4]
	lsls r1, r1, #5
	ldr r2, _080065BC @ =0x05000200
	adds r1, r1, r2
	bl sub_08008308
	ldrh r1, [r4, #2]
	lsls r1, r1, #5
	ldr r0, _080065C0 @ =0x06010000
	adds r1, r1, r0
	adds r0, r5, #0
	bl sub_08008374
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080065A8: .4byte 0x02034BD0
_080065AC: .4byte 0x0100000A
_080065B0: .4byte 0x08141D78
_080065B4: .4byte 0x08143864
_080065B8: .4byte 0x08141D14
_080065BC: .4byte 0x05000200
_080065C0: .4byte 0x06010000

	thumb_func_start sub_080065C4
sub_080065C4: @ 0x080065C4
	push {lr}
	bl sub_08006688
	bl sub_08006700
	bl sub_080067F0
	ldr r0, _080065E4 @ =0x08141D78
	bl sub_08006CA0
	ldr r0, _080065E8 @ =0x08143864
	bl sub_08006CA0
	pop {r0}
	bx r0
	.align 2, 0
_080065E4: .4byte 0x08141D78
_080065E8: .4byte 0x08143864

	thumb_func_start sub_080065EC
sub_080065EC: @ 0x080065EC
	push {r4, r5, r6, lr}
	ldr r6, _08006674 @ =0x02034BD0
	ldr r0, [r6, #8]
	cmp r0, #0
	bne _0800666E
	ldr r0, _08006678 @ =0x0203A100
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl sub_08003F78
	movs r5, #4
	ldrsb r5, [r0, r5]
	movs r1, #6
	ldrsb r1, [r0, r1]
	adds r5, r5, r1
	subs r5, #1
	lsls r5, r5, #0x13
	lsrs r5, r5, #0x10
	movs r4, #5
	ldrsb r4, [r0, r4]
	ldrb r0, [r0, #7]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r4, r4, r0
	subs r4, #1
	lsls r4, r4, #0x13
	lsrs r4, r4, #0x10
	movs r0, #0
	movs r1, #0x10
	bl sub_080099E0
	str r0, [r6, #8]
	ldrh r1, [r6, #2]
	lsls r1, r1, #5
	ldr r2, _0800667C @ =0x06010000
	adds r1, r1, r2
	bl sub_08009A78
	ldr r0, [r6, #8]
	ldrb r1, [r6]
	bl sub_08009AB4
	ldr r0, [r6, #8]
	ldr r1, _08006680 @ =0x08141D6C
	ldr r2, _08006684 @ =0x08141D60
	movs r3, #1
	bl sub_08009ACC
	ldr r0, [r6, #8]
	movs r1, #0xff
	bl sub_08009B40
	ldr r0, [r6, #8]
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_08009A70
	ldr r0, [r6, #8]
	movs r1, #1
	bl sub_08009A34
_0800666E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08006674: .4byte 0x02034BD0
_08006678: .4byte 0x0203A100
_0800667C: .4byte 0x06010000
_08006680: .4byte 0x08141D6C
_08006684: .4byte 0x08141D60

	thumb_func_start sub_08006688
sub_08006688: @ 0x08006688
	push {r4, lr}
	ldr r4, _080066A0 @ =0x02034BD0
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0800669A
	bl sub_08009A00
	movs r0, #0
	str r0, [r4, #8]
_0800669A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080066A0: .4byte 0x02034BD0

	thumb_func_start sub_080066A4
sub_080066A4: @ 0x080066A4
	push {r4, lr}
	ldr r4, _080066F0 @ =0x02034BD0
	ldr r0, [r4, #0xc]
	cmp r0, #0
	bne _080066EA
	movs r0, #0
	movs r1, #0x10
	bl sub_080099E0
	str r0, [r4, #0xc]
	ldrh r1, [r4, #2]
	lsls r1, r1, #5
	ldr r2, _080066F4 @ =0x06010000
	adds r1, r1, r2
	bl sub_08009A78
	ldr r0, [r4, #0xc]
	ldrb r1, [r4]
	bl sub_08009AB4
	ldr r0, [r4, #0xc]
	ldr r1, _080066F8 @ =0x08141D6C
	ldr r2, _080066FC @ =0x08141D60
	movs r3, #0
	bl sub_08009ACC
	ldr r0, [r4, #0xc]
	movs r1, #0
	movs r2, #0
	bl sub_08009A70
	ldr r0, [r4, #0xc]
	movs r1, #1
	bl sub_08009A34
_080066EA:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080066F0: .4byte 0x02034BD0
_080066F4: .4byte 0x06010000
_080066F8: .4byte 0x08141D6C
_080066FC: .4byte 0x08141D60

	thumb_func_start sub_08006700
sub_08006700: @ 0x08006700
	push {r4, lr}
	ldr r4, _08006718 @ =0x02034BD0
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _08006712
	bl sub_08009A00
	movs r0, #0
	str r0, [r4, #0xc]
_08006712:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08006718: .4byte 0x02034BD0

	thumb_func_start sub_0800671C
sub_0800671C: @ 0x0800671C
	push {lr}
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r2, r1, #0x10
	ldr r0, _08006740 @ =0x02034BD0
	ldr r0, [r0, #0xc]
	cmp r0, #0
	beq _0800673A
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl sub_08009A70
_0800673A:
	pop {r0}
	bx r0
	.align 2, 0
_08006740: .4byte 0x02034BD0

	thumb_func_start sub_08006744
sub_08006744: @ 0x08006744
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r6, _080067D4 @ =0x02034BD0
	ldr r0, [r6, #0x10]
	cmp r0, #0
	bne _08006760
	movs r0, #0
	movs r1, #0x10
	bl sub_080099E0
	str r0, [r6, #0x10]
	cmp r0, #0
	beq _080067B8
_08006760:
	ldr r4, _080067D8 @ =0x0807F048
	lsls r5, r5, #3
	adds r0, r5, r4
	ldr r0, [r0]
	ldrb r1, [r6, #1]
	lsls r1, r1, #5
	ldr r2, _080067DC @ =0x05000200
	adds r1, r1, r2
	bl sub_08008308
	adds r4, #4
	adds r5, r5, r4
	ldr r0, [r5]
	ldrh r1, [r6, #4]
	lsls r1, r1, #5
	ldr r4, _080067E0 @ =0x06010000
	adds r1, r1, r4
	bl sub_08008374
	ldr r0, [r6, #0x10]
	ldrh r1, [r6, #4]
	lsls r1, r1, #5
	adds r1, r1, r4
	bl sub_08009A78
	ldr r0, [r6, #0x10]
	ldrb r1, [r6, #1]
	bl sub_08009AB4
	ldr r0, [r6, #0x10]
	ldr r1, _080067E4 @ =0x08143494
	ldr r2, _080067E8 @ =0x0814348C
	movs r3, #0
	bl sub_08009ACC
	ldr r0, [r6, #0x10]
	movs r1, #8
	movs r2, #0x78
	bl sub_08009A70
	ldr r0, [r6, #0x10]
	movs r1, #1
	bl sub_08009A34
_080067B8:
	ldr r0, _080067EC @ =0x0203A100
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl sub_08003F78
	ldrb r1, [r0]
	adds r1, #6
	strb r1, [r0, #4]
	ldrb r1, [r0, #2]
	subs r1, #7
	strb r1, [r0, #6]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080067D4: .4byte 0x02034BD0
_080067D8: .4byte 0x0807F048
_080067DC: .4byte 0x05000200
_080067E0: .4byte 0x06010000
_080067E4: .4byte 0x08143494
_080067E8: .4byte 0x0814348C
_080067EC: .4byte 0x0203A100

	thumb_func_start sub_080067F0
sub_080067F0: @ 0x080067F0
	push {r4, lr}
	ldr r4, _08006820 @ =0x02034BD0
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _08006802
	bl sub_08009A00
	movs r0, #0
	str r0, [r4, #0x10]
_08006802:
	ldr r0, _08006824 @ =0x0203A100
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl sub_08003F78
	ldrb r1, [r0]
	adds r1, #1
	strb r1, [r0, #4]
	ldrb r1, [r0, #2]
	subs r1, #2
	strb r1, [r0, #6]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08006820: .4byte 0x02034BD0
_08006824: .4byte 0x0203A100

	thumb_func_start sub_08006828
sub_08006828: @ 0x08006828
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0800570C
	ldr r1, _08006840 @ =0x0203A0F4
	str r0, [r1]
	adds r1, r4, #0
	bl sub_0800685C
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08006840: .4byte 0x0203A0F4

	thumb_func_start sub_08006844
sub_08006844: @ 0x08006844
	ldr r0, _0800684C @ =0x0203A0F4
	ldr r0, [r0]
	ldr r0, [r0]
	bx lr
	.align 2, 0
_0800684C: .4byte 0x0203A0F4

	thumb_func_start sub_08006850
sub_08006850: @ 0x08006850
	push {lr}
	bl sub_0800570C
	ldr r0, [r0]
	pop {r1}
	bx r1

	thumb_func_start sub_0800685C
sub_0800685C: @ 0x0800685C
	ldr r2, _08006874 @ =0x0000FFFF
	ands r2, r1
	adds r0, #4
	lsls r2, r2, #2
	adds r2, r2, r0
	ldr r1, [r2]
	lsrs r1, r1, #2
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r0, #4
	bx lr
	.align 2, 0
_08006874: .4byte 0x0000FFFF

	thumb_func_start sub_08006878
sub_08006878: @ 0x08006878
	ldr r1, _08006880 @ =0x020335D0
	strb r0, [r1]
	bx lr
	.align 2, 0
_08006880: .4byte 0x020335D0

	thumb_func_start sub_08006884
sub_08006884: @ 0x08006884
	ldr r1, _08006890 @ =0x020335D0
	ldrb r2, [r1]
	strb r2, [r1, #1]
	strb r0, [r1]
	bx lr
	.align 2, 0
_08006890: .4byte 0x020335D0

	thumb_func_start sub_08006894
sub_08006894: @ 0x08006894
	ldr r1, _0800689C @ =0x020335D0
	ldrb r0, [r1, #1]
	strb r0, [r1]
	bx lr
	.align 2, 0
_0800689C: .4byte 0x020335D0

	thumb_func_start sub_080068A0
sub_080068A0: @ 0x080068A0
	ldr r2, _080068B0 @ =0x020335D0
	movs r3, #0
	strb r0, [r2, #3]
	strb r3, [r2, #5]
	strb r3, [r2, #6]
	strb r1, [r2]
	bx lr
	.align 2, 0
_080068B0: .4byte 0x020335D0

	thumb_func_start sub_080068B4
sub_080068B4: @ 0x080068B4
	push {r4, lr}
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	ldr r1, _080068E8 @ =0x020335D0
	strb r3, [r1, #5]
	strb r4, [r1, #6]
	strb r2, [r1]
	ldr r0, _080068EC @ =0x0807EFD0
	adds r0, r3, r0
	ldrb r0, [r0]
	strb r0, [r1, #3]
	cmp r3, #7
	beq _080068DA
	cmp r3, #0x13
	beq _080068DA
	cmp r3, #0x31
	bne _080068E0
_080068DA:
	ldrb r0, [r1, #3]
	adds r0, r4, r0
	strb r0, [r1, #3]
_080068E0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080068E8: .4byte 0x020335D0
_080068EC: .4byte 0x0807EFD0

	thumb_func_start sub_080068F0
sub_080068F0: @ 0x080068F0
	lsls r0, r0, #0x18
	ldr r1, _08006904 @ =0x0807EEE8
	lsrs r0, r0, #0x16
	adds r0, r0, r1
	ldrh r0, [r0, #2]
	movs r1, #0xfc
	lsls r1, r1, #0xe
	orrs r0, r1
	bx lr
	.align 2, 0
_08006904: .4byte 0x0807EEE8

	thumb_func_start sub_08006908
sub_08006908: @ 0x08006908
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _0800691C @ =0x0807EFD0
	adds r0, r0, r1
	ldrb r0, [r0]
	bl sub_080068F0
	pop {r1}
	bx r1
	.align 2, 0
_0800691C: .4byte 0x0807EFD0

	thumb_func_start sub_08006920
sub_08006920: @ 0x08006920
	ldr r1, _08006928 @ =0x020335D0
	strb r0, [r1, #4]
	bx lr
	.align 2, 0
_08006928: .4byte 0x020335D0

	thumb_func_start sub_0800692C
sub_0800692C: @ 0x0800692C
	ldr r0, _08006938 @ =0x020335D0
	ldrb r0, [r0, #4]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	bx lr
	.align 2, 0
_08006938: .4byte 0x020335D0

	thumb_func_start sub_0800693C
sub_0800693C: @ 0x0800693C
	ldr r1, _0800694C @ =0x0807F00A
	lsls r0, r0, #0x18

	thumb_func_start sub_08006940
sub_08006940: @ 0x08006940
	asrs r0, r0, #0x18
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	bx lr
	.align 2, 0
_0800694C: .4byte 0x0807F00A

	thumb_func_start sub_08006950
sub_08006950: @ 0x08006950
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r4, _08006968 @ =0x020335E8
	adds r0, r5, #0
	bl sub_08006984
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0800697C
	movs r1, #0
	b _08006974
	.align 2, 0
_08006968: .4byte 0x020335E8
_0800696C:
	adds r1, #1
	adds r4, #1
	cmp r1, #0xf
	bgt _0800697C
_08006974:
	ldrb r0, [r4]
	cmp r0, #0
	bne _0800696C
	strb r5, [r4]
_0800697C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08006984
sub_08006984: @ 0x08006984
	push {lr}
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	ldr r2, _08006998 @ =0x020335E8
	movs r1, #0
_0800698E:
	ldrb r0, [r2]
	cmp r0, r3
	bne _0800699C
	movs r0, #1
	b _080069A6
	.align 2, 0
_08006998: .4byte 0x020335E8
_0800699C:
	adds r1, #1
	adds r2, #1
	cmp r1, #0xf
	ble _0800698E
	movs r0, #0
_080069A6:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080069AC
sub_080069AC: @ 0x080069AC
	push {r4, lr}
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	ldr r1, _080069D0 @ =0x020335E8
	movs r4, #0
	movs r2, #0xf
_080069B8:
	ldrb r0, [r1]
	cmp r0, r3
	bne _080069C0
	strb r4, [r1]
_080069C0:
	subs r2, #1
	adds r1, #1
	cmp r2, #0
	bge _080069B8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080069D0: .4byte 0x020335E8

	thumb_func_start sub_080069D4
sub_080069D4: @ 0x080069D4
	push {lr}
	sub sp, #4
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r1, _080069F0 @ =0x020335E8
	ldr r2, _080069F4 @ =0x01000008
	mov r0, sp
	bl CpuSet
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_080069F0: .4byte 0x020335E8
_080069F4: .4byte 0x01000008

	thumb_func_start sub_080069F8
sub_080069F8: @ 0x080069F8
	push {r4, r5, r6, lr}
	sub sp, #8
	ldr r6, _08006A34 @ =0x020335D0
	ldr r0, _08006A38 @ =0x0000FFFF
	strh r0, [r6, #0xc]
	movs r4, #0
	str r4, [r6, #0x10]
	str r4, [r6, #0x14]
	mov r0, sp
	movs r5, #0
	strh r4, [r0]
	adds r1, r6, #0
	adds r1, #0x18
	ldr r2, _08006A3C @ =0x01000008
	bl CpuSet
	str r4, [sp, #4]
	add r0, sp, #4
	adds r1, r6, #0
	adds r1, #0x28
	ldr r2, _08006A40 @ =0x05000040
	bl CpuSet
	movs r0, #0xff
	strb r0, [r6, #4]
	strb r5, [r6, #8]
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08006A34: .4byte 0x020335D0
_08006A38: .4byte 0x0000FFFF
_08006A3C: .4byte 0x01000008
_08006A40: .4byte 0x05000040

	thumb_func_start sub_08006A44
sub_08006A44: @ 0x08006A44
	ldr r1, _08006A74 @ =0x030024E0
	ldrh r3, [r1]
	movs r2, #0xe0
	lsls r2, r2, #4
	adds r0, r2, #0
	movs r2, #0
	orrs r0, r3
	strh r0, [r1]
	ldr r0, _08006A78 @ =0x00001D0D
	strh r0, [r1, #4]
	adds r0, #0xf5
	strh r0, [r1, #6]
	ldr r0, _08006A7C @ =0x00001F03
	strh r0, [r1, #8]
	strh r2, [r1, #0x12]
	strh r2, [r1, #0xa]
	strh r2, [r1, #0x14]
	strh r2, [r1, #0xc]
	strh r2, [r1, #0x16]
	strh r2, [r1, #0xe]
	strh r2, [r1, #0x18]
	strh r2, [r1, #0x10]
	bx lr
	.align 2, 0
_08006A74: .4byte 0x030024E0
_08006A78: .4byte 0x00001D0D
_08006A7C: .4byte 0x00001F03

	thumb_func_start sub_08006A80
sub_08006A80: @ 0x08006A80
	bx lr
	.align 2, 0

	thumb_func_start sub_08006A84
sub_08006A84: @ 0x08006A84
	push {lr}
	ldr r0, _08006AC0 @ =0x020335D0
	ldrb r0, [r0, #3]
	cmp r0, #0xff
	bne _08006A90
	movs r0, #0
_08006A90:
	ldr r1, _08006AC4 @ =0x0807EEE8
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #5
	ldr r1, _08006AC8 @ =0x08152C14
	adds r0, r0, r1
	ldr r1, _08006ACC @ =0x05000180
	ldr r2, _08006AD0 @ =0x04000008
	bl CpuSet
	ldr r0, _08006AD4 @ =0x08152DEC
	ldr r1, _08006AD8 @ =0x0600C000
	bl sub_08008374
	ldr r0, _08006ADC @ =0x08152CD4
	ldr r1, _08006AE0 @ =0x0600E800
	movs r2, #0
	movs r3, #0xc
	bl sub_080083CC
	pop {r0}
	bx r0
	.align 2, 0
_08006AC0: .4byte 0x020335D0
_08006AC4: .4byte 0x0807EEE8
_08006AC8: .4byte 0x08152C14
_08006ACC: .4byte 0x05000180
_08006AD0: .4byte 0x04000008
_08006AD4: .4byte 0x08152DEC
_08006AD8: .4byte 0x0600C000
_08006ADC: .4byte 0x08152CD4
_08006AE0: .4byte 0x0600E800

	thumb_func_start sub_08006AE4
sub_08006AE4: @ 0x08006AE4
	push {lr}
	ldr r2, _08006B0C @ =0x020335D0
	ldrb r0, [r2, #3]
	cmp r0, #0xff
	bne _08006AF0
	movs r0, #0
_08006AF0:
	ldr r1, _08006B10 @ =0x0807EEE8
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r0, [r0]
	ldr r1, _08006B14 @ =0x0807F03C
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0xa]
	ldrh r0, [r2, #0xa]
	bl sub_0806F5DC
	pop {r0}
	bx r0
	.align 2, 0
_08006B0C: .4byte 0x020335D0
_08006B10: .4byte 0x0807EEE8
_08006B14: .4byte 0x0807F03C

	thumb_func_start sub_08006B18
sub_08006B18: @ 0x08006B18
	push {lr}
	ldr r0, _08006B3C @ =0x020335D0
	ldrb r0, [r0, #3]
	cmp r0, #0xff
	bne _08006B24
	movs r0, #0
_08006B24:
	ldr r1, _08006B40 @ =0x0807EEE8
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r0, [r0]
	ldr r1, _08006B44 @ =0x0807F03C
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	bl sub_0806F6A8
	pop {r0}
	bx r0
	.align 2, 0
_08006B3C: .4byte 0x020335D0
_08006B40: .4byte 0x0807EEE8
_08006B44: .4byte 0x0807F03C

	thumb_func_start sub_08006B48
sub_08006B48: @ 0x08006B48
	push {r4, lr}
	sub sp, #8
	movs r0, #0
	str r0, [sp, #4]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	ldr r2, _08006BDC @ =0x01006000
	add r0, sp, #4
	bl CpuFastSet
	movs r1, #0x80
	lsls r1, r1, #3
	movs r0, #0
	bl sub_08006BE8
	bl sub_08003F9C
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [sp]
	movs r0, #2
	movs r1, #0x1c
	movs r2, #0xe
	movs r3, #0
	bl sub_08004028
	bl sub_080057C0
	bl sub_08006A44
	bl sub_08006A84
	movs r0, #1
	bl sub_08004124
	ldr r1, _08006BE0 @ =0x0808DB10
	ldr r4, _08006BE4 @ =0x020335D0
	ldrb r0, [r4, #3]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	movs r2, #0x80
	lsls r2, r2, #4
	movs r1, #0x91
	bl sub_08002A44
	movs r0, #1
	strb r0, [r4, #2]
_08006BA8:
	movs r0, #1
	bl sub_08002B98
	ldrb r0, [r4, #2]
	cmp r0, #0
	bne _08006BA8
	movs r0, #0
	bl sub_08004124
	bl sub_08006A80
	bl sub_0800580C
	bl sub_08003FE4
	ldr r0, _08006BE4 @ =0x020335D0
	ldrb r0, [r0]
	bl sub_08008790
	bl sub_08002B0C
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08006BDC: .4byte 0x01006000
_08006BE0: .4byte 0x0808DB10
_08006BE4: .4byte 0x020335D0

	thumb_func_start sub_08006BE8
sub_08006BE8: @ 0x08006BE8
	push {lr}
	sub sp, #4
	ldr r2, _08006C08 @ =0x03002320
	movs r3, #0
	strh r0, [r2]
	strh r1, [r2, #2]
	mov r0, sp
	strh r3, [r0]
	ldr r1, _08006C0C @ =0x03002330
	ldr r2, _08006C10 @ =0x010000C0
	bl CpuSet
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_08006C08: .4byte 0x03002320
_08006C0C: .4byte 0x03002330
_08006C10: .4byte 0x010000C0

	thumb_func_start sub_08006C14
sub_08006C14: @ 0x08006C14
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	ldr r0, [r0]
	lsrs r1, r0, #8
	subs r4, r1, #4
	movs r0, #0x1f
	ands r0, r4
	cmp r0, #0
	beq _08006C2C
	adds r4, #0x20
_08006C2C:
	lsrs r4, r4, #5
	ldr r1, _08006C74 @ =0x03002330
	movs r5, #0
	adds r3, r1, #0
_08006C34:
	ldr r0, [r1]
	cmp r0, r8
	beq _08006C6A
	adds r5, #1
	adds r1, #0xc
	cmp r5, #0x1f
	ble _08006C34
	ldr r0, _08006C78 @ =0x03002320
	ldrh r2, [r0]
	adds r1, r3, #0
	movs r5, #0
	mov ip, r0
_08006C4C:
	ldr r0, [r1]
	ldrh r3, [r1, #6]
	cmp r0, #0
	bne _08006C7C
	cmp r4, r3
	bls _08006C64
	adds r0, r2, r4
	mov r6, ip
	ldrh r6, [r6, #2]
	cmp r0, r6
	bhs _08006C7C
	strh r2, [r1, #4]
_08006C64:
	mov r7, r8
	str r7, [r1]
	strh r4, [r1, #6]
_08006C6A:
	ldrb r0, [r1, #8]
	adds r0, #1
	strb r0, [r1, #8]
	ldrh r0, [r1, #4]
	b _08006C90
	.align 2, 0
_08006C74: .4byte 0x03002330
_08006C78: .4byte 0x03002320
_08006C7C:
	ldrh r0, [r1, #4]
	adds r0, r0, r3
	cmp r2, r0
	bhs _08006C86
	adds r2, r0, #0
_08006C86:
	adds r5, #1
	adds r1, #0xc
	cmp r5, #0x1f
	ble _08006C4C
	ldr r0, _08006C9C @ =0x0000FFFF
_08006C90:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08006C9C: .4byte 0x0000FFFF

	thumb_func_start sub_08006CA0
sub_08006CA0: @ 0x08006CA0
	push {lr}
	adds r3, r0, #0
	ldr r1, _08006CCC @ =0x03002330
	movs r2, #0x1f
_08006CA8:
	ldr r0, [r1]
	cmp r0, r3
	bne _08006CBE
	ldrb r0, [r1, #8]
	subs r0, #1
	strb r0, [r1, #8]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _08006CBE
	str r0, [r1]
_08006CBE:
	subs r2, #1
	adds r1, #0xc
	cmp r2, #0
	bge _08006CA8
	pop {r0}
	bx r0
	.align 2, 0
_08006CCC: .4byte 0x03002330

	thumb_func_start sub_08006CD0
sub_08006CD0: @ 0x08006CD0
	push {lr}
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r3, #0
	cmp r3, r1
	bge _08006CEE
_08006CDE:
	ldrb r0, [r2]
	adds r0, r3, r0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r2, #1
	subs r1, #1
	cmp r1, #0
	bne _08006CDE
_08006CEE:
	adds r0, r3, #0
	pop {r1}
	bx r1

	thumb_func_start sub_08006CF4
sub_08006CF4: @ 0x08006CF4
	push {r4, lr}
	adds r4, r0, #0
	adds r0, r1, #0
	ldr r1, _08006D24 @ =0x00000CA8
	bl sub_08006CD0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mvns r1, r0
	lsls r1, r1, #0x10
	lsrs r2, r1, #0x10
	ldrh r1, [r4]
	cmp r1, r0
	bne _08006D1E
	ldrh r0, [r4, #2]
	cmp r0, r2
	bne _08006D1E
	ldr r1, [r4, #4]
	ldr r0, _08006D28 @ =0x55530921
	cmp r1, r0
	beq _08006D2C
_08006D1E:
	movs r0, #0
	b _08006D2E
	.align 2, 0
_08006D24: .4byte 0x00000CA8
_08006D28: .4byte 0x55530921
_08006D2C:
	movs r0, #1
_08006D2E:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_08006D34
sub_08006D34: @ 0x08006D34
	push {r4, lr}
	adds r3, r0, #0
	adds r2, r1, #0
	movs r4, #0
_08006D3C:
	ldrb r1, [r3]
	ldrb r0, [r2]
	adds r2, #1
	adds r3, #1
	cmp r1, r0
	beq _08006D4C
	movs r0, #1
	b _08006D54
_08006D4C:
	adds r4, #1
	cmp r4, #7
	ble _08006D3C
	movs r0, #0
_08006D54:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08006D5C
sub_08006D5C: @ 0x08006D5C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov sb, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r4, r5, #0
	mov r6, sb
	movs r0, #8
	bl sub_08007CE8
	adds r7, r0, #0
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r0, r4, #0
	adds r1, r7, #0
	bl sub_08070C5C
	movs r4, #0
	movs r0, #0xca
	lsls r0, r0, #1
	mov r8, r0
_08006D8C:
	adds r0, r5, #0
	adds r1, r0, #1
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	adds r1, r6, #0
	bl sub_08070C5C
	adds r4, #1
	adds r6, #8
	cmp r4, r8
	bls _08006D8C
	adds r0, r7, #0
	mov r1, sb
	bl sub_08006CF4
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r0, r7, #0
	bl sub_08007CF8
	lsls r4, r4, #0x18
	asrs r4, r4, #0x18
	adds r0, r4, #0
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08006DC8
sub_08006DC8: @ 0x08006DC8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r1, #0
	adds r4, r2, #0
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r0, r5, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r1, _08006E2C @ =0x02031D00
	mov r8, r1
	adds r1, r0, #1
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	ldr r1, _08006E30 @ =0x02034E98
	bl sub_08070F50
	movs r7, #0
	lsls r4, r4, #0x18
	asrs r4, r4, #0x18
_08006DF2:
	cmp r4, #0
	beq _08006E04
	adds r0, r6, #0
	mov r1, r8
	bl sub_08006D34
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08006E0C
_08006E04:
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_08070F50
_08006E0C:
	adds r7, #1
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r6, #8
	movs r0, #8
	add r8, r0
	movs r0, #0xca
	lsls r0, r0, #1
	cmp r7, r0
	bls _08006DF2
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08006E2C: .4byte 0x02031D00
_08006E30: .4byte 0x02034E98

	thumb_func_start sub_08006E34
sub_08006E34: @ 0x08006E34
	push {lr}
	movs r0, #0x40
	bl sub_08070B94
	pop {r0}
	bx r0

	thumb_func_start sub_08006E40
sub_08006E40: @ 0x08006E40
	push {lr}
	sub sp, #4
	bl sub_08003F9C
	movs r0, #0x80
	str r0, [sp]
	movs r0, #0
	movs r1, #0x1f
	movs r2, #0xe
	movs r3, #0
	bl sub_08004028
	bl sub_080057C0
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08006E64
sub_08006E64: @ 0x08006E64
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	ldr r1, _08006F34 @ =0x03004400
	movs r0, #1
	strb r0, [r1, #5]
	bl sub_0806F710
	bl sub_0806FBCC
	movs r0, #1
	bl sub_08002B98
	add r0, sp, #8
	mov sl, r0
	mov r7, sp
	adds r7, #2
	add r1, sp, #4
	mov sb, r1
	mov r4, sp
	mov r8, sl
	movs r5, #1
_08006E96:
	ldr r0, _08006F38 @ =0x00000CA8
	bl sub_08007CE8
	adds r1, r0, #0
	mov r2, r8
	adds r2, #4
	mov r8, r2
	subs r2, #4
	stm r2!, {r1}
	movs r6, #0
	strh r6, [r4]
	mov r0, sp
	ldr r2, _08006F3C @ =0x01000002
	bl CpuSet
	subs r5, #1
	cmp r5, #0
	bge _08006E96
	movs r5, #2
	mov r0, sp
	strh r6, [r0]
	ldr r0, _08006F40 @ =0x02031050
	mov r8, r0
	ldr r4, _08006F44 @ =0x01000654
	mov r0, sp
	mov r1, r8
	adds r2, r4, #0
	bl CpuSet
	strh r6, [r7]
	ldr r1, _08006F48 @ =0x02031D00
	adds r0, r7, #0
	adds r2, r4, #0
	bl CpuSet
	mov r1, sb
	strh r6, [r1]
	ldr r1, _08006F4C @ =0x02034E98
	ldr r2, _08006F50 @ =0x01000004
	mov r0, sb
	bl CpuSet
	bl sub_08006E40
	ldr r1, [sp, #8]
	movs r0, #0
	bl sub_08006D5C
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r4, r1, #0x1f
	movs r0, #0x80
	lsls r0, r0, #2
	mov r2, sl
	ldr r1, [r2, #4]
	bl sub_08006D5C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08006F16
	movs r0, #2
	orrs r4, r0
_08006F16:
	lsls r1, r4, #0x18
	asrs r2, r1, #0x18
	movs r0, #1
	ands r0, r2
	adds r7, r1, #0
	cmp r0, #0
	beq _08006F58
	ldr r0, [sp, #8]
	ldr r2, _08006F54 @ =0x00000654
	mov r1, r8
	bl CpuSet
	movs r6, #0
	b _08006F7A
	.align 2, 0
_08006F34: .4byte 0x03004400
_08006F38: .4byte 0x00000CA8
_08006F3C: .4byte 0x01000002
_08006F40: .4byte 0x02031050
_08006F44: .4byte 0x01000654
_08006F48: .4byte 0x02031D00
_08006F4C: .4byte 0x02034E98
_08006F50: .4byte 0x01000004
_08006F54: .4byte 0x00000654
_08006F58:
	ands r5, r2
	lsls r0, r5, #0x18
	cmp r0, #0
	beq _08006F74
	mov r1, sl
	ldr r0, [r1, #4]
	ldr r2, _08006F70 @ =0x00000654
	mov r1, r8
	bl CpuSet
	movs r6, #1
	b _08006F7A
	.align 2, 0
_08006F70: .4byte 0x00000654
_08006F74:
	bl sub_0800734C
	movs r6, #2
_08006F7A:
	ldr r4, _08007004 @ =0x02031050
	ldr r1, _08007008 @ =0x02031D00
	ldr r2, _0800700C @ =0x00000654
	adds r0, r4, #0
	bl CpuSet
	ldr r1, _08007010 @ =0x00000CA8
	adds r0, r4, #0
	bl sub_08006CD0
	ldr r1, _08007014 @ =0x02034E98
	strh r0, [r1]
	mvns r0, r0
	strh r0, [r1, #2]
	ldr r0, _08007018 @ =0x00000921
	strh r0, [r1, #4]
	ldr r5, _0800701C @ =0x00005553
	strh r5, [r1, #6]
	asrs r0, r7, #0x18
	cmp r0, #3
	bne _08006FA6
	b _08007164
_08006FA6:
	add r4, sp, #0x10
	movs r0, #0
	adds r1, r4, #0
	bl sub_08070C5C
	ldrh r0, [r4, #6]
	mov r8, r4
	cmp r0, r5
	bne _0800708C
	cmp r6, #2
	bne _08007034
	ldr r1, _08007020 @ =0xFFFFFF00
	ldr r0, [sp, #0x18]
	ands r0, r1
	ldr r1, _08007024 @ =0xFFFF00FF
	ands r0, r1
	movs r1, #0xc0
	lsls r1, r1, #4
	orrs r0, r1
	ldr r1, _08007028 @ =0xFF00FFFF
	ands r0, r1
	movs r1, #0xf0
	lsls r1, r1, #0xd
	orrs r0, r1
	ldr r1, _0800702C @ =0x00FFFFFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x14
	orrs r0, r1
	str r0, [sp, #0x18]
	add r0, sp, #0x18
	movs r1, #2
	bl sub_08004300
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r5, r4, #0x10
	asrs r4, r4, #0x10
	ldr r0, _08007030 @ =0x00470056
	bl sub_08006828
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_08004C50
	b _08007068
	.align 2, 0
_08007004: .4byte 0x02031050
_08007008: .4byte 0x02031D00
_0800700C: .4byte 0x00000654
_08007010: .4byte 0x00000CA8
_08007014: .4byte 0x02034E98
_08007018: .4byte 0x00000921
_0800701C: .4byte 0x00005553
_08007020: .4byte 0xFFFFFF00
_08007024: .4byte 0xFFFF00FF
_08007028: .4byte 0xFF00FFFF
_0800702C: .4byte 0x00FFFFFF
_08007030: .4byte 0x00470056
_08007034:
	movs r2, #0xf
	add r0, sp, #0x18
	strb r2, [r0]
	movs r1, #0x11
	strb r1, [r0, #1]
	strb r2, [r0, #2]
	movs r1, #2
	strb r1, [r0, #3]
	movs r1, #0
	bl sub_08004300
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	movs r0, #2
	movs r1, #0
	bl sub_080044C0
	lsls r4, r5, #0x10
	asrs r4, r4, #0x10
	ldr r0, _08007084 @ =0x00470016
	bl sub_08006828
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_08004C50
_08007068:
	movs r0, #0x20
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl sub_08008AF4
	ldr r0, _08007088 @ =0x030024E0
	adds r0, #0x4f
	movs r1, #1
	strb r1, [r0]
	bl sub_08008D34
	b _080070D8
	.align 2, 0
_08007084: .4byte 0x00470016
_08007088: .4byte 0x030024E0
_0800708C:
	movs r2, #0xf
	add r0, sp, #0x18
	strb r2, [r0]
	movs r1, #0x11
	strb r1, [r0, #1]
	strb r2, [r0, #2]
	movs r1, #2
	strb r1, [r0, #3]
	movs r1, #0
	bl sub_08004300
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	movs r0, #2
	movs r1, #0
	bl sub_080044C0
	lsls r4, r5, #0x10
	asrs r4, r4, #0x10
	ldr r0, _08007134 @ =0x00470013
	bl sub_08006828
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_08004C50
	movs r0, #0x20
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl sub_08008AF4
	ldr r0, _08007138 @ =0x030024E0
	adds r0, #0x4f
	movs r1, #1
	strb r1, [r0]
	bl sub_08008D34
_080070D8:
	asrs r4, r7, #0x18
	movs r0, #1
	ands r0, r4
	cmp r0, #0
	bne _080070EC
	ldr r1, _0800713C @ =0x02031050
	movs r0, #0
	movs r2, #0
	bl sub_08006DC8
_080070EC:
	movs r0, #2
	ands r0, r4
	cmp r0, #0
	bne _08007100
	movs r0, #0x80
	lsls r0, r0, #2
	ldr r1, _0800713C @ =0x02031050
	movs r2, #0
	bl sub_08006DC8
_08007100:
	mov r2, r8
	ldrh r1, [r2, #6]
	ldr r0, _08007140 @ =0x00005553
	cmp r1, r0
	bne _0800714C
	cmp r6, #2
	bne _0800711A
	ldr r4, _08007144 @ =0x0203A100
	strh r5, [r4]
	bl sub_08005B2C
	ldr r0, _08007148 @ =0x0000FFFF
	strh r0, [r4]
_0800711A:
	movs r0, #0x20
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl sub_080089E8
	bl sub_08008D34
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	bl sub_080043F0
	b _08007164
	.align 2, 0
_08007134: .4byte 0x00470013
_08007138: .4byte 0x030024E0
_0800713C: .4byte 0x02031050
_08007140: .4byte 0x00005553
_08007144: .4byte 0x0203A100
_08007148: .4byte 0x0000FFFF
_0800714C:
	movs r0, #0x20
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl sub_080089E8
	bl sub_08008D34
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	bl sub_080043F0
_08007164:
	bl sub_0800731C
	bl sub_0800580C
	bl sub_08003FE4
	mov r4, sl
	movs r5, #1
_08007174:
	ldm r4!, {r0}
	bl sub_08007CF8
	subs r5, #1
	cmp r5, #0
	bge _08007174
	bl sub_0806FC4C
	ldr r0, _080071A8 @ =0x02031CF8
	ldrb r0, [r0]
	bl sub_08008790
	ldr r1, _080071AC @ =0x03004400
	movs r0, #0
	strb r0, [r1, #5]
	bl sub_08002B0C
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080071A8: .4byte 0x02031CF8
_080071AC: .4byte 0x03004400

	thumb_func_start sub_080071B0
sub_080071B0: @ 0x080071B0
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #4
	ldr r0, _080072B8 @ =0x03004400
	mov r8, r0
	movs r5, #1
	strb r5, [r0, #5]
	bl sub_0806F710
	bl sub_0806FBCC
	movs r0, #1
	bl sub_08002B98
	bl sub_08006E40
	ldr r1, _080072BC @ =0xFFFFFF00
	ldr r0, [sp]
	ands r0, r1
	movs r1, #0xf
	orrs r0, r1
	ldr r1, _080072C0 @ =0xFFFF00FF
	ands r0, r1
	movs r1, #0x88
	lsls r1, r1, #5
	orrs r0, r1
	ldr r1, _080072C4 @ =0xFF00FFFF
	ands r0, r1
	movs r1, #0xf0
	lsls r1, r1, #0xc
	orrs r0, r1
	ldr r1, _080072C8 @ =0x00FFFFFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x12
	orrs r0, r1
	str r0, [sp]
	mov r0, sp
	movs r1, #0
	bl sub_08004300
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #2
	movs r1, #0
	bl sub_080044C0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	ldr r0, _080072CC @ =0x00470013
	bl sub_08006828
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_08004C50
	bl sub_08007334
	movs r0, #0x20
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl sub_08008AF4
	ldr r0, _080072D0 @ =0x030024E0
	adds r0, #0x4f
	strb r5, [r0]
	bl sub_08008D34
	ldr r5, _080072D4 @ =0x02031050
	ldr r1, _080072D8 @ =0x00000CA8
	adds r0, r5, #0
	bl sub_08006CD0
	ldr r1, _080072DC @ =0x02034E98
	movs r6, #0
	strh r0, [r1]
	mvns r0, r0
	strh r0, [r1, #2]
	ldr r0, _080072E0 @ =0x00000921
	strh r0, [r1, #4]
	ldr r0, _080072E4 @ =0x00005553
	strh r0, [r1, #6]
	movs r0, #0
	adds r1, r5, #0
	movs r2, #1
	bl sub_08006DC8
	movs r0, #0x80
	lsls r0, r0, #2
	adds r1, r5, #0
	movs r2, #1
	bl sub_08006DC8
	ldr r1, _080072E8 @ =0x02031D00
	ldr r2, _080072EC @ =0x00000654
	adds r0, r5, #0
	bl CpuSet
	movs r0, #0x20
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl sub_080089E8
	bl sub_08008D34
	adds r0, r4, #0
	bl sub_080043F0
	bl sub_0800580C
	bl sub_08003FE4
	bl sub_0806FC4C
	ldr r0, _080072F0 @ =0x02031CF8
	ldrb r0, [r0]
	bl sub_08008790
	mov r0, r8
	strb r6, [r0, #5]
	bl sub_08002B0C
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080072B8: .4byte 0x03004400
_080072BC: .4byte 0xFFFFFF00
_080072C0: .4byte 0xFFFF00FF
_080072C4: .4byte 0xFF00FFFF
_080072C8: .4byte 0x00FFFFFF
_080072CC: .4byte 0x00470013
_080072D0: .4byte 0x030024E0
_080072D4: .4byte 0x02031050
_080072D8: .4byte 0x00000CA8
_080072DC: .4byte 0x02034E98
_080072E0: .4byte 0x00000921
_080072E4: .4byte 0x00005553
_080072E8: .4byte 0x02031D00
_080072EC: .4byte 0x00000654
_080072F0: .4byte 0x02031CF8

	thumb_func_start sub_080072F4
sub_080072F4: @ 0x080072F4
	ldr r2, _08007304 @ =0x02033DC0
	ldr r1, _08007308 @ =0x03004400
	ldrb r1, [r1, #8]
	strb r1, [r2]
	ldr r1, _0800730C @ =0x02031CF8
	strb r0, [r1]
	bx lr
	.align 2, 0
_08007304: .4byte 0x02033DC0
_08007308: .4byte 0x03004400
_0800730C: .4byte 0x02031CF8

	thumb_func_start sub_08007310
sub_08007310: @ 0x08007310
	ldr r0, _08007318 @ =0x02033DC0
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_08007318: .4byte 0x02033DC0

	thumb_func_start sub_0800731C
sub_0800731C: @ 0x0800731C
	ldr r2, _0800732C @ =0x03004400
	ldr r1, _08007330 @ =0x02031050
	ldr r0, [r1]
	str r0, [r2, #0x10]
	ldrb r0, [r1, #4]
	strb r0, [r2, #0x14]
	bx lr
	.align 2, 0
_0800732C: .4byte 0x03004400
_08007330: .4byte 0x02031050

	thumb_func_start sub_08007334
sub_08007334: @ 0x08007334
	ldr r2, _08007344 @ =0x02031050
	ldr r1, _08007348 @ =0x03004400
	ldr r0, [r1, #0x10]
	str r0, [r2]
	ldrb r0, [r1, #0x14]
	strb r0, [r2, #4]
	bx lr
	.align 2, 0
_08007344: .4byte 0x02031050
_08007348: .4byte 0x03004400

	thumb_func_start sub_0800734C
sub_0800734C: @ 0x0800734C
	push {r4, lr}
	sub sp, #0x10
	ldr r1, _080073AC @ =0x0807F218
	mov r0, sp
	movs r2, #0xa
	bl sub_08072A10
	add r0, sp, #0xc
	movs r1, #0
	strh r1, [r0]
	ldr r1, _080073B0 @ =0x02031050
	ldr r2, _080073B4 @ =0x01000654
	bl CpuSet
	bl sub_0800731C
	movs r4, #0
_0800736E:
	mov r1, sp
	adds r0, r1, r4
	ldrb r0, [r0]
	bl sub_08001A24
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #9
	bls _0800736E
	movs r4, #0x44
_08007384:
	adds r0, r4, #0
	bl sub_08001B00
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bne _0800739A
	adds r0, r4, #0
	ldr r1, _080073B8 @ =0x00008C9F
	bl sub_08007778
_0800739A:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x7b
	bls _08007384
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080073AC: .4byte 0x0807F218
_080073B0: .4byte 0x02031050
_080073B4: .4byte 0x01000654
_080073B8: .4byte 0x00008C9F

	thumb_func_start sub_080073BC
sub_080073BC: @ 0x080073BC
	push {lr}
	adds r1, r0, #0
	ldr r0, _080073D0 @ =0x000F423E
	cmp r1, r0
	bls _080073C8
	ldr r1, _080073D4 @ =0x000F423F
_080073C8:
	ldr r0, _080073D8 @ =0x02031050
	str r1, [r0]
	pop {r0}
	bx r0
	.align 2, 0
_080073D0: .4byte 0x000F423E
_080073D4: .4byte 0x000F423F
_080073D8: .4byte 0x02031050

	thumb_func_start sub_080073DC
sub_080073DC: @ 0x080073DC
	ldr r0, _080073E4 @ =0x02031050
	ldr r0, [r0]
	bx lr
	.align 2, 0
_080073E4: .4byte 0x02031050

	thumb_func_start sub_080073E8
sub_080073E8: @ 0x080073E8
	ldr r1, _080073F0 @ =0x02031050
	movs r0, #0
	strb r0, [r1, #4]
	bx lr
	.align 2, 0
_080073F0: .4byte 0x02031050

	thumb_func_start sub_080073F4
sub_080073F4: @ 0x080073F4
	ldr r0, _080073FC @ =0x02031050
	ldrb r0, [r0, #4]
	bx lr
	.align 2, 0
_080073FC: .4byte 0x02031050

	thumb_func_start sub_08007400
sub_08007400: @ 0x08007400
	push {lr}
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #5
	bls _0800740C
	movs r1, #0
_0800740C:
	ldr r0, _08007414 @ =0x02031050
	strb r1, [r0, #7]
	pop {r0}
	bx r0
	.align 2, 0
_08007414: .4byte 0x02031050

	thumb_func_start sub_08007418
sub_08007418: @ 0x08007418
	ldr r0, _08007420 @ =0x02031050
	ldrb r0, [r0, #7]
	bx lr
	.align 2, 0
_08007420: .4byte 0x02031050

	thumb_func_start sub_08007424
sub_08007424: @ 0x08007424
	ldr r1, _0800742C @ =0x02031050
	movs r0, #1
	strb r0, [r1, #5]
	bx lr
	.align 2, 0
_0800742C: .4byte 0x02031050

	thumb_func_start sub_08007430
sub_08007430: @ 0x08007430
	ldr r0, _08007438 @ =0x02031050
	ldrb r0, [r0, #5]
	bx lr
	.align 2, 0
_08007438: .4byte 0x02031050

	thumb_func_start sub_0800743C
sub_0800743C: @ 0x0800743C
	bx lr
	.align 2, 0

	thumb_func_start sub_08007440
sub_08007440: @ 0x08007440
	push {lr}
	movs r0, #0x30
	bl sub_08001A00
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08007452
	movs r0, #0xa
	b _08007454
_08007452:
	movs r0, #0x1e
_08007454:
	pop {r1}
	bx r1

	thumb_func_start sub_08007458
sub_08007458: @ 0x08007458
	push {lr}
	adds r2, r1, #0
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0x1d
	bhi _08007478
	cmp r2, #0
	beq _08007478
	movs r0, #0x34
	muls r1, r0, r1
	ldr r0, _0800747C @ =0x02031060
	adds r1, r1, r0
	adds r0, r2, #0
	movs r2, #0x1a
	bl CpuSet
_08007478:
	pop {r0}
	bx r0
	.align 2, 0
_0800747C: .4byte 0x02031060

	thumb_func_start sub_08007480
sub_08007480: @ 0x08007480
	push {lr}
	adds r2, r1, #0
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0x1d
	bhi _080074A0
	cmp r2, #0
	beq _080074A0
	movs r0, #0x34
	muls r0, r1, r0
	ldr r1, _080074A4 @ =0x02031060
	adds r0, r0, r1
	adds r1, r2, #0
	movs r2, #0x1a
	bl CpuSet
_080074A0:
	pop {r0}
	bx r0
	.align 2, 0
_080074A4: .4byte 0x02031060

	thumb_func_start sub_080074A8
sub_080074A8: @ 0x080074A8
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r5, #0
	b _080074F6
_080074B0:
	ldr r2, _080074F0 @ =0x02031050
	movs r0, #0x34
	adds r1, r5, #0
	muls r1, r0, r1

	thumb_func_start sub_080074B8
sub_080074B8: @ 0x080074B8
	adds r0, r1, r2
	ldrb r0, [r0, #0x10]
	cmp r0, #0
	beq _080074F4
	adds r0, r2, #0
	adds r0, #0x10
	adds r2, r1, r0
	movs r4, #0
	ldrb r1, [r6]
	ldrb r0, [r2]
	adds r2, #1
	adds r3, r6, #1
	cmp r1, r0
	bne _080074E6
_080074D4:
	adds r4, #1
	cmp r4, #0x33
	bhi _080074E6
	ldrb r1, [r3]
	ldrb r0, [r2]
	adds r2, #1
	adds r3, #1
	cmp r1, r0
	beq _080074D4
_080074E6:
	cmp r4, #0x34
	bne _080074F4
	movs r0, #1
	b _08007504
	.align 2, 0
_080074F0: .4byte 0x02031050
_080074F4:
	adds r5, #1
_080074F6:
	bl sub_08007440
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r5, r0
	blt _080074B0
	movs r0, #0
_08007504:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0800750C
sub_0800750C: @ 0x0800750C
	push {r4, r5, lr}
	movs r4, #0
	ldr r5, _08007514 @ =0x02031050
	b _0800752C
	.align 2, 0
_08007514: .4byte 0x02031050
_08007518:
	movs r0, #0x34
	muls r0, r4, r0
	adds r0, r0, r5
	ldrb r0, [r0, #0x10]
	cmp r0, #0
	bne _0800752A
	lsls r0, r4, #0x18
	asrs r0, r0, #0x18
	b _0800753C
_0800752A:
	adds r4, #1
_0800752C:
	bl sub_08007440
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r4, r0
	blt _08007518
	movs r0, #1
	rsbs r0, r0, #0
_0800753C:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08007544
sub_08007544: @ 0x08007544
	push {lr}
	sub sp, #4
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x1d
	bhi _08007568
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	movs r0, #0x34
	adds r1, r2, #0
	muls r1, r0, r1
	ldr r0, _08007570 @ =0x02031060
	adds r1, r1, r0
	ldr r2, _08007574 @ =0x0100001A
	mov r0, sp
	bl CpuSet
_08007568:
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_08007570: .4byte 0x02031060
_08007574: .4byte 0x0100001A

	thumb_func_start sub_08007578
sub_08007578: @ 0x08007578
	push {lr}
	adds r2, r1, #0
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0x1d
	bhi _08007594
	movs r0, #0x34
	muls r1, r0, r1
	ldr r0, _08007598 @ =0x02031060
	adds r1, r1, r0
	adds r0, r2, #0
	movs r2, #6
	bl CpuSet
_08007594:
	pop {r0}
	bx r0
	.align 2, 0
_08007598: .4byte 0x02031060

	thumb_func_start sub_0800759C
sub_0800759C: @ 0x0800759C
	push {lr}
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0x1d
	bhi _080075B4
	movs r0, #0x34
	muls r0, r1, r0
	ldr r1, _080075B0 @ =0x02031060
	adds r0, r0, r1
	b _080075B6
	.align 2, 0
_080075B0: .4byte 0x02031060
_080075B4:
	movs r0, #0
_080075B6:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080075BC
sub_080075BC: @ 0x080075BC
	push {lr}
	adds r2, r1, #0
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0x1d
	bhi _080075D8
	movs r0, #0x34
	muls r1, r0, r1
	ldr r0, _080075DC @ =0x0203106C
	adds r1, r1, r0
	adds r0, r2, #0
	movs r2, #6
	bl CpuSet
_080075D8:
	pop {r0}
	bx r0
	.align 2, 0
_080075DC: .4byte 0x0203106C

	thumb_func_start sub_080075E0
sub_080075E0: @ 0x080075E0
	push {lr}
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0x1d
	bhi _080075F8
	movs r0, #0x34
	muls r0, r1, r0
	ldr r1, _080075F4 @ =0x0203106C
	adds r0, r0, r1
	b _080075FA
	.align 2, 0
_080075F4: .4byte 0x0203106C
_080075F8:
	movs r0, #0
_080075FA:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08007600
sub_08007600: @ 0x08007600
	push {lr}
	adds r2, r1, #0
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0x1d
	bhi _0800761C
	movs r0, #0x34
	muls r1, r0, r1
	ldr r0, _08007620 @ =0x02031078
	adds r1, r1, r0
	adds r0, r2, #0
	movs r2, #0xa
	bl CpuSet
_0800761C:
	pop {r0}
	bx r0
	.align 2, 0
_08007620: .4byte 0x02031078

	thumb_func_start sub_08007624
sub_08007624: @ 0x08007624
	push {lr}
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0x1d
	bhi _0800763C
	movs r0, #0x34
	muls r0, r1, r0
	ldr r1, _08007638 @ =0x02031078
	adds r0, r0, r1
	b _0800763E
	.align 2, 0
_08007638: .4byte 0x02031078
_0800763C:
	movs r0, #0
_0800763E:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08007644
sub_08007644: @ 0x08007644
	push {lr}
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r3, r1, #0x18
	cmp r2, #0x1d
	bhi _0800765E
	ldr r1, _08007664 @ =0x02031050
	movs r0, #0x34
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x3c
	strb r3, [r0]
_0800765E:
	pop {r0}
	bx r0
	.align 2, 0
_08007664: .4byte 0x02031050

	thumb_func_start sub_08007668
sub_08007668: @ 0x08007668
	push {lr}
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x1d
	bhi _08007684
	ldr r1, _08007680 @ =0x02031050
	movs r0, #0x34
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x3c
	ldrb r0, [r0]
	b _08007686
	.align 2, 0
_08007680: .4byte 0x02031050
_08007684:
	movs r0, #0
_08007686:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0800768C
sub_0800768C: @ 0x0800768C
	push {lr}
	adds r2, r1, #0
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0x1d
	bhi _080076A8
	movs r0, #0x34
	muls r1, r0, r1
	ldr r0, _080076AC @ =0x02031090
	adds r1, r1, r0
	adds r0, r2, #0
	movs r2, #2
	bl CpuSet
_080076A8:
	pop {r0}
	bx r0
	.align 2, 0
_080076AC: .4byte 0x02031090

	thumb_func_start sub_080076B0
sub_080076B0: @ 0x080076B0
	push {lr}
	adds r2, r1, #0
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0x1d
	bhi _080076CC
	movs r0, #0x34
	muls r0, r1, r0
	ldr r1, _080076D0 @ =0x02031090
	adds r0, r0, r1
	adds r1, r2, #0
	movs r2, #2
	bl CpuSet
_080076CC:
	pop {r0}
	bx r0
	.align 2, 0
_080076D0: .4byte 0x02031090

	thumb_func_start sub_080076D4
sub_080076D4: @ 0x080076D4
	push {lr}
	adds r2, r1, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _080076EE
	lsls r1, r0, #5
	ldr r0, _080076F4 @ =0x02031678
	adds r1, r1, r0
	adds r0, r2, #0
	movs r2, #0x10
	bl CpuSet
_080076EE:
	pop {r0}
	bx r0
	.align 2, 0
_080076F4: .4byte 0x02031678

	thumb_func_start sub_080076F8
sub_080076F8: @ 0x080076F8
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _08007710
	lsls r0, r0, #5
	ldr r1, _0800770C @ =0x02031678
	adds r0, r0, r1
	b _08007712
	.align 2, 0
_0800770C: .4byte 0x02031678
_08007710:
	movs r0, #0
_08007712:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08007718
sub_08007718: @ 0x08007718
	ldr r0, _08007720 @ =0x02031050
	ldrb r0, [r0, #0xa]
	bx lr
	.align 2, 0
_08007720: .4byte 0x02031050

	thumb_func_start sub_08007724
sub_08007724: @ 0x08007724
	ldr r0, _0800772C @ =0x02031050
	ldrb r0, [r0, #0xb]
	bx lr
	.align 2, 0
_0800772C: .4byte 0x02031050

	thumb_func_start sub_08007730
sub_08007730: @ 0x08007730
	ldr r0, _08007738 @ =0x02031050
	ldrb r0, [r0, #0xc]
	bx lr
	.align 2, 0
_08007738: .4byte 0x02031050

	thumb_func_start sub_0800773C
sub_0800773C: @ 0x0800773C
	ldr r0, _08007744 @ =0x02031050
	ldrb r0, [r0, #0xd]
	bx lr
	.align 2, 0
_08007744: .4byte 0x02031050

	thumb_func_start sub_08007748
sub_08007748: @ 0x08007748
	ldr r0, _08007750 @ =0x02031050
	ldrb r0, [r0, #0xe]
	bx lr
	.align 2, 0
_08007750: .4byte 0x02031050

	thumb_func_start sub_08007754
sub_08007754: @ 0x08007754
	ldr r0, _0800775C @ =0x02031050
	ldrb r0, [r0, #0xf]
	bx lr
	.align 2, 0
_0800775C: .4byte 0x02031050

	thumb_func_start sub_08007760
sub_08007760: @ 0x08007760
	lsls r0, r0, #0x18
	ldr r1, _08007770 @ =0x02031050
	lsrs r0, r0, #0x15
	adds r1, r1, r0
	ldr r0, _08007774 @ =0x0000044C
	adds r1, r1, r0
	ldr r0, [r1]
	bx lr
	.align 2, 0
_08007770: .4byte 0x02031050
_08007774: .4byte 0x0000044C

	thumb_func_start sub_08007778
sub_08007778: @ 0x08007778
	lsls r0, r0, #0x18
	ldr r2, _08007788 @ =0x02031050
	lsrs r0, r0, #0x15
	adds r2, r2, r0
	ldr r0, _0800778C @ =0x0000044C
	adds r2, r2, r0
	str r1, [r2]
	bx lr
	.align 2, 0
_08007788: .4byte 0x02031050
_0800778C: .4byte 0x0000044C

	thumb_func_start sub_08007790
sub_08007790: @ 0x08007790
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _080077A0 @ =0x02031050
	ldrb r1, [r2, #8]
	orrs r0, r1
	strb r0, [r2, #8]
	bx lr
	.align 2, 0
_080077A0: .4byte 0x02031050

	thumb_func_start sub_080077A4
sub_080077A4: @ 0x080077A4
	ldr r1, _080077B0 @ =0x02031050
	ldrb r1, [r1, #8]
	ands r1, r0
	adds r0, r1, #0
	bx lr
	.align 2, 0
_080077B0: .4byte 0x02031050

	thumb_func_start sub_080077B4
sub_080077B4: @ 0x080077B4
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_0806F5DC
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080077C4
sub_080077C4: @ 0x080077C4
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_0806F654
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080077D4
sub_080077D4: @ 0x080077D4
	push {lr}
	lsls r0, r0, #0x18
	ldr r1, _080077E8 @ =0x0807F224
	lsrs r0, r0, #0x16
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_0806FEA0
	pop {r0}
	bx r0
	.align 2, 0
_080077E8: .4byte 0x0807F224

	thumb_func_start sub_080077EC
sub_080077EC: @ 0x080077EC
	push {lr}
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r2, r1, #0x1c
	cmp r2, #0
	bne _080077FC
	movs r2, #1
_080077FC:
	ldr r0, _08007810 @ =0x0807F224
	lsls r1, r3, #2
	adds r1, r1, r0
	ldr r0, [r1]
	adds r1, r2, #0
	bl sub_0806F774
	pop {r0}
	bx r0
	.align 2, 0
_08007810: .4byte 0x0807F224

	thumb_func_start sub_08007814
sub_08007814: @ 0x08007814
	lsls r0, r0, #0x18
	ldr r1, _08007824 @ =0x0807F224
	lsrs r0, r0, #0x16
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r0, [r0, #4]
	bx lr
	.align 2, 0
_08007824: .4byte 0x0807F224

	thumb_func_start sub_08007828
sub_08007828: @ 0x08007828
	push {r4, lr}
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_0800782E:
	movs r0, #1
	bl sub_08002B98
	adds r0, r4, #0
	bl sub_08007814
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800782E
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08007848
sub_08007848: @ 0x08007848
	push {r4, r5, lr}
	sub sp, #4
	mov r0, sp
	movs r5, #0
	strh r5, [r0]
	ldr r4, _08007898 @ =0x02033DD0
	ldr r2, _0800789C @ =0x01000700
	adds r1, r4, #0
	bl CpuSet
	movs r1, #0
	str r1, [r4]
	adds r0, r4, #0
	adds r0, #0x38
	str r0, [r4, #4]
	strb r5, [r4, #0xa]
	movs r0, #0xff
	strb r0, [r4, #0xb]
	movs r2, #1
	rsbs r2, r2, #0
	str r2, [r4, #0xc]
	str r4, [r4, #0x38]
	str r1, [r4, #0x3c]
	adds r3, r4, #0
	adds r3, #0x42
	adds r0, r2, #0
	strb r0, [r3]
	adds r3, #1
	strb r0, [r3]
	str r2, [r4, #0x44]
	ldr r0, _080078A0 @ =0x0203378C
	str r1, [r0]
	ldr r1, _080078A4 @ =0x0203084C
	movs r0, #2
	strb r0, [r1]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08007898: .4byte 0x02033DD0
_0800789C: .4byte 0x01000700
_080078A0: .4byte 0x0203378C
_080078A4: .4byte 0x0203084C

	thumb_func_start sub_080078A8
sub_080078A8: @ 0x080078A8
	bx lr
	.align 2, 0

	thumb_func_start sub_080078AC
sub_080078AC: @ 0x080078AC
	push {r4, lr}
	ldr r1, _080078F0 @ =0x02033DD0
	cmp r1, #0
	beq _08007922
	ldr r0, _080078F4 @ =0x0203084C
	ldrb r0, [r0]
	cmp r0, #0
	beq _08007922
	adds r2, r1, #0
	cmp r2, #0
	beq _0800791C
_080078C2:
	ldr r0, _080078F8 @ =0x0203378C
	str r2, [r0]
	ldr r4, [r2, #4]
	cmp r2, #0
	beq _08007916
	ldr r3, [r2, #0x10]
	cmp r3, #0
	beq _08007916
	ldrb r1, [r2, #0xb]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08007916
	ldrb r1, [r2, #0xb]
	movs r0, #0x81
	rsbs r0, r0, #0
	ands r1, r0
	cmp r1, #1
	beq _080078FC
	cmp r1, #2
	beq _08007900
	b _08007916
	.align 2, 0
_080078F0: .4byte 0x02033DD0
_080078F4: .4byte 0x0203084C
_080078F8: .4byte 0x0203378C
_080078FC:
	movs r0, #2
	strb r0, [r2, #0xb]
_08007900:
	ldr r0, [r2, #0xc]
	cmp r0, #0
	blt _08007916
	cmp r0, #0
	beq _08007912
	subs r0, #1
	str r0, [r2, #0xc]
	cmp r0, #0
	bgt _08007916
_08007912:
	bl call_via_r3
_08007916:
	adds r2, r4, #0
	cmp r2, #0
	bne _080078C2
_0800791C:
	ldr r1, _08007928 @ =0x0203378C
	movs r0, #0
	str r0, [r1]
_08007922:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08007928: .4byte 0x0203378C

	thumb_func_start sub_0800792C
sub_0800792C: @ 0x0800792C
	push {lr}
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	movs r0, #0xff
	ands r0, r2
	cmp r2, #0
	blt _08007956
	adds r1, r0, #0
	cmp r1, #0x3f
	bgt _08007956
	ldr r3, _0800795C @ =0x02033DD0
	cmp r3, #0
	beq _08007956
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r1, r0, r3
	movs r3, #8
	ldrsh r0, [r1, r3]
	cmp r0, r2
	beq _08007960
_08007956:
	movs r0, #0
	b _08007962
	.align 2, 0
_0800795C: .4byte 0x02033DD0
_08007960:
	adds r0, r1, #0
_08007962:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08007968
sub_08007968: @ 0x08007968
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	mov r8, r0
	lsls r1, r1, #0x18
	lsrs r7, r1, #0x18
	movs r5, #0
	movs r4, #0
	ldr r0, _08007988 @ =0x02033DD0
	ldrb r1, [r0, #0xb]
	adds r2, r0, #0
	cmp r1, #0
	bne _0800798C
	adds r5, r2, #0
	b _080079A2
	.align 2, 0
_08007988: .4byte 0x02033DD0
_0800798C:
	adds r4, #1
	cmp r4, #0x3f
	bgt _080079A2
	lsls r0, r4, #3
	subs r0, r0, r4
	lsls r0, r0, #3
	adds r1, r0, r2
	ldrb r0, [r1, #0xb]
	cmp r0, #0
	bne _0800798C
	adds r5, r1, #0
_080079A2:
	cmp r5, #0
	bne _080079AC
	movs r0, #1
	rsbs r0, r0, #0
	b _080079F0
_080079AC:
	movs r6, #0
	str r6, [sp]
	ldr r2, _080079FC @ =0x0500000E
	mov r0, sp
	adds r1, r5, #0
	bl CpuSet
	strh r4, [r5, #8]
	ldr r0, _08007A00 @ =0x0203378C
	ldr r0, [r0]
	cmp r0, #0
	beq _080079CC
	ldrh r0, [r0, #8]
	lsls r0, r0, #8
	orrs r4, r0
	strh r4, [r5, #8]
_080079CC:
	strb r7, [r5, #0xa]
	movs r0, #1
	strb r0, [r5, #0xb]
	str r0, [r5, #0xc]
	mov r0, r8
	str r0, [r5, #0x10]
	str r6, [r5, #0x14]
	movs r1, #8
	ldrsh r0, [r5, r1]
	adds r1, r7, #0
	bl sub_08007A7C
	ldr r1, _08007A04 @ =0x0203084C
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	movs r1, #8
	ldrsh r0, [r5, r1]
_080079F0:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080079FC: .4byte 0x0500000E
_08007A00: .4byte 0x0203378C
_08007A04: .4byte 0x0203084C

	thumb_func_start sub_08007A08
sub_08007A08: @ 0x08007A08
	push {r4, lr}
	sub sp, #4
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl sub_0800792C
	adds r4, r0, #0
	cmp r4, #0
	beq _08007A54
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _08007A54
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _08007A2A
	bl call_via_r0
_08007A2A:
	ldr r1, [r4]
	cmp r1, #0
	beq _08007A34
	ldr r0, [r4, #4]
	str r0, [r1, #4]
_08007A34:
	ldr r1, [r4, #4]
	cmp r1, #0
	beq _08007A3E
	ldr r0, [r4]
	str r0, [r1]
_08007A3E:
	movs r0, #0
	str r0, [sp]
	ldr r2, _08007A5C @ =0x0500000E
	mov r0, sp
	adds r1, r4, #0
	bl CpuSet
	ldr r1, _08007A60 @ =0x0203084C
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
_08007A54:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08007A5C: .4byte 0x0500000E
_08007A60: .4byte 0x0203084C

	thumb_func_start sub_08007A64
sub_08007A64: @ 0x08007A64
	push {lr}
	ldr r0, _08007A78 @ =0x0203378C
	ldr r0, [r0]
	movs r1, #8
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	pop {r0}
	bx r0
	.align 2, 0
_08007A78: .4byte 0x0203378C

	thumb_func_start sub_08007A7C
sub_08007A7C: @ 0x08007A7C
	push {r4, lr}
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl sub_0800792C
	adds r1, r0, #0
	ldr r2, [r1]
	cmp r2, #0
	beq _08007A96
	ldr r0, [r1, #4]
	str r0, [r2, #4]
_08007A96:
	ldr r2, [r1, #4]
	cmp r2, #0
	beq _08007AA0
	ldr r0, [r1]
	str r0, [r2]
_08007AA0:
	ldr r2, _08007AA4 @ =0x02033DD0
	b _08007AAA
	.align 2, 0
_08007AA4: .4byte 0x02033DD0
_08007AA8:
	ldr r2, [r2, #4]
_08007AAA:
	ldrb r0, [r2, #0xa]
	cmp r0, r4
	blo _08007AA8
	ldr r0, [r2]
	str r1, [r0, #4]
	str r0, [r1]
	str r1, [r2]
	str r2, [r1, #4]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08007AC0
sub_08007AC0: @ 0x08007AC0
	push {lr}
	adds r1, r0, #0
	ldr r0, _08007AD4 @ =0x0203378C
	ldr r0, [r0]
	movs r2, #8
	ldrsh r0, [r0, r2]
	bl sub_08007AD8
	pop {r0}
	bx r0
	.align 2, 0
_08007AD4: .4byte 0x0203378C

	thumb_func_start sub_08007AD8
sub_08007AD8: @ 0x08007AD8
	push {r4, lr}
	adds r4, r1, #0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl sub_0800792C
	cmp r0, #0
	beq _08007AEA
	str r4, [r0, #0xc]
_08007AEA:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08007AF0
sub_08007AF0: @ 0x08007AF0
	push {lr}
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl sub_0800792C
	adds r1, r0, #0
	cmp r1, #0
	beq _08007B0A
	ldr r0, [r1, #0xc]
	cmp r0, #0
	bgt _08007B0A
	movs r0, #1
	str r0, [r1, #0xc]
_08007B0A:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08007B10
sub_08007B10: @ 0x08007B10
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r4, _08007B1C @ =0x02033DD0
	b _08007B32
	.align 2, 0
_08007B1C: .4byte 0x02033DD0
_08007B20:
	cmp r0, #0
	beq _08007B30
	cmp r0, #0xff
	beq _08007B30
	movs r1, #8
	ldrsh r0, [r4, r1]
	bl sub_08007A08
_08007B30:
	ldr r4, [r4, #4]
_08007B32:
	ldrb r0, [r4, #0xa]
	cmp r0, r5
	bhs _08007B20
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08007B40
sub_08007B40: @ 0x08007B40
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	ldr r2, _08007B68 @ =0x02033DD0
	ldrb r0, [r2, #0xa]
	cmp r0, r3
	blo _08007B7C
	movs r5, #0x80
_08007B54:
	cmp r0, #0
	beq _08007B74
	cmp r0, #0xff
	beq _08007B74
	cmp r4, #0
	beq _08007B6C
	ldrb r0, [r2, #0xb]
	orrs r0, r5
	b _08007B72
	.align 2, 0
_08007B68: .4byte 0x02033DD0
_08007B6C:
	ldrb r1, [r2, #0xb]
	movs r0, #0x7f
	ands r0, r1
_08007B72:
	strb r0, [r2, #0xb]
_08007B74:
	ldr r2, [r2, #4]
	ldrb r0, [r2, #0xa]
	cmp r0, r3
	bhs _08007B54
_08007B7C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08007B84
sub_08007B84: @ 0x08007B84
	push {r4, lr}
	adds r4, r1, #0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl sub_0800792C
	cmp r0, #0
	beq _08007B9A
	cmp r4, #0
	beq _08007B9A
	str r4, [r0, #0x10]
_08007B9A:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08007BA0
sub_08007BA0: @ 0x08007BA0
	push {r4, lr}
	adds r4, r1, #0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl sub_0800792C
	cmp r0, #0
	beq _08007BB6
	cmp r4, #0
	beq _08007BB6
	str r4, [r0, #0x14]
_08007BB6:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08007BBC
sub_08007BBC: @ 0x08007BBC
	push {lr}
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl sub_0800792C
	cmp r0, #0
	beq _08007BCE
	adds r0, #0x18
	b _08007BD0
_08007BCE:
	movs r0, #0
_08007BD0:
	pop {r1}
	bx r1

	thumb_func_start sub_08007BD4
sub_08007BD4: @ 0x08007BD4
	push {lr}
	ldr r0, _08007BE8 @ =0x0203378C
	ldr r0, [r0]
	cmp r0, #0
	beq _08007BEC
	movs r1, #8
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	b _08007BEE
	.align 2, 0
_08007BE8: .4byte 0x0203378C
_08007BEC:
	movs r0, #0
_08007BEE:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08007BF4
sub_08007BF4: @ 0x08007BF4
	push {r4, r5, r6, lr}
	adds r6, r1, #0
	adds r4, r0, #0
	adds r4, #0x10
	movs r1, #0xf
	ands r1, r4
	cmp r1, #0
	beq _08007C0A
	adds r0, r4, #0
	adds r0, #0x10
	subs r4, r0, r1
_08007C0A:
	ldr r0, [r6]
	ldr r1, [r0, #0xc]
	adds r2, r0, #0
	cmp r1, r4
	bhs _08007C2E
	adds r2, r6, #0
	adds r2, #8
	b _08007C1C
_08007C1A:
	ldr r2, [r2, #4]
_08007C1C:
	cmp r2, #0
	beq _08007C2A
	ldr r0, [r2, #0xc]
	cmp r0, r4
	blo _08007C1A
	cmp r2, #0
	bne _08007C2E
_08007C2A:
	movs r0, #0
	b _08007C5C
_08007C2E:
	ldr r0, [r2, #8]
	adds r3, r2, r0
	ldr r5, [r2, #4]
	str r4, [r3, #8]
	ldr r0, [r2, #0xc]
	subs r0, r0, r4
	str r0, [r3, #0xc]
	str r2, [r3]
	str r5, [r3, #4]
	str r3, [r6]
	movs r0, #0
	str r0, [r2, #0xc]
	str r3, [r2, #4]
	cmp r5, #0
	beq _08007C58
	str r3, [r5]
	ldr r1, [r3, #0xc]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	bhs _08007C58
	str r5, [r6]
_08007C58:
	adds r0, r3, #0
	adds r0, #0x10
_08007C5C:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08007C64
sub_08007C64: @ 0x08007C64
	push {r4, r5, lr}
	adds r5, r1, #0
	subs r0, #0x10
	ldr r3, [r0]
	ldr r4, [r0, #4]
	ldr r1, [r0, #8]
	ldr r2, [r0, #0xc]
	adds r1, r1, r2
	ldr r2, [r3, #0xc]
	adds r2, r2, r1
	str r2, [r3, #0xc]
	str r4, [r3, #4]
	ldr r1, [r5]
	cmp r1, r0
	beq _08007C88
	ldr r0, [r1, #0xc]
	cmp r0, r2
	bhs _08007C8A
_08007C88:
	str r3, [r5]
_08007C8A:
	cmp r4, #0
	beq _08007C9C
	str r3, [r4]
	ldr r0, [r5]
	ldr r1, [r0, #0xc]
	ldr r0, [r4, #0xc]
	cmp r1, r0
	bhs _08007C9C
	str r4, [r5]
_08007C9C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08007CA4
sub_08007CA4: @ 0x08007CA4
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	movs r1, #0
	adds r2, r5, #0
	bl sub_08072A70
	adds r0, r4, r5
	str r0, [r4, #4]
	movs r0, #0x10
	str r0, [r4, #0x10]
	subs r5, #0x18
	str r5, [r4, #0x14]
	movs r0, #0
	str r0, [r4, #8]
	str r0, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #8
	str r0, [r4]
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08007CD4
sub_08007CD4: @ 0x08007CD4
	push {lr}
	ldr r0, _08007CE4 @ =0x02000000
	movs r1, #0xc0
	lsls r1, r1, #0xa
	bl sub_08007CA4
	pop {r1}
	bx r1
	.align 2, 0
_08007CE4: .4byte 0x02000000

	thumb_func_start sub_08007CE8
sub_08007CE8: @ 0x08007CE8
	push {lr}
	ldr r1, _08007CF4 @ =0x02000000
	bl sub_08007BF4
	pop {r1}
	bx r1
	.align 2, 0
_08007CF4: .4byte 0x02000000

	thumb_func_start sub_08007CF8
sub_08007CF8: @ 0x08007CF8
	push {lr}
	ldr r1, _08007D04 @ =0x02000000
	bl sub_08007C64
	pop {r0}
	bx r0
	.align 2, 0
_08007D04: .4byte 0x02000000

	thumb_func_start sub_08007D08
sub_08007D08: @ 0x08007D08
	push {lr}
	bl sub_08007D18
	bl sub_08007D9C
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08007D18
sub_08007D18: @ 0x08007D18
	push {lr}
	sub sp, #4
	ldr r3, _08007D4C @ =0x03004418
	ldrb r2, [r3]
	cmp r2, #0
	bne _08007D5C
	str r2, [sp]
	ldr r0, _08007D50 @ =0x040000D4
	mov r1, sp
	str r1, [r0]
	movs r1, #0x80
	lsls r1, r1, #0x12
	str r1, [r0, #4]
	ldr r1, _08007D54 @ =0x85010000
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	str r2, [sp]
	mov r1, sp
	str r1, [r0]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	str r1, [r0, #4]
	ldr r1, _08007D58 @ =0x85001F80
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	b _08007D88
	.align 2, 0
_08007D4C: .4byte 0x03004418
_08007D50: .4byte 0x040000D4
_08007D54: .4byte 0x85010000
_08007D58: .4byte 0x85001F80
_08007D5C:
	movs r2, #0
	str r2, [sp]
	ldr r0, _08007D90 @ =0x040000D4
	mov r1, sp
	str r1, [r0]
	movs r1, #0x80
	lsls r1, r1, #0x12
	str r1, [r0, #4]
	ldr r1, _08007D94 @ =0x85010000
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	str r2, [sp]
	mov r1, sp
	str r1, [r0]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	str r1, [r0, #4]
	ldr r1, _08007D98 @ =0x85001F80
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	movs r0, #1
	strb r0, [r3]
_08007D88:
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_08007D90: .4byte 0x040000D4
_08007D94: .4byte 0x85010000
_08007D98: .4byte 0x85001F80

	thumb_func_start sub_08007D9C
sub_08007D9C: @ 0x08007D9C
	push {lr}
	bl sub_08007DB0
	bl sub_08007DD8
	bl sub_08007E3C
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08007DB0
sub_08007DB0: @ 0x08007DB0
	sub sp, #4
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r1, _08007DD0 @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _08007DD4 @ =0x8100C000
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	add sp, #4
	bx lr
	.align 2, 0
_08007DD0: .4byte 0x040000D4
_08007DD4: .4byte 0x8100C000

	thumb_func_start sub_08007DD8
sub_08007DD8: @ 0x08007DD8
	push {r4, lr}
	movs r0, #0xe0
	lsls r0, r0, #0x13
	movs r1, #0x80
	lsls r1, r1, #2
	adds r2, r1, #0
	movs r1, #0
	movs r3, #0x80
	lsls r3, r3, #1
	adds r4, r3, #0
	movs r3, #0x1f
_08007DEE:
	strh r2, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r4, [r0]
	adds r0, #2
	strh r2, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r2, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r2, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r4, [r0]
	adds r0, #2
	subs r3, #1
	cmp r3, #0
	bge _08007DEE
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08007E3C
sub_08007E3C: @ 0x08007E3C
	sub sp, #4
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r1, _08007E5C @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	movs r0, #0xa0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _08007E60 @ =0x81000200
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	add sp, #4
	bx lr
	.align 2, 0
_08007E5C: .4byte 0x040000D4
_08007E60: .4byte 0x81000200

	thumb_func_start sub_08007E64
sub_08007E64: @ 0x08007E64
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	muls r0, r1, r0
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	bx lr

	thumb_func_start sub_08007E74
sub_08007E74: @ 0x08007E74
	push {lr}
	lsls r0, r0, #0x10
	asrs r0, r0, #8
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_08070FCC
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08007E8C
sub_08007E8C: @ 0x08007E8C
	push {lr}
	adds r1, r0, #0
	movs r0, #0x80
	lsls r0, r0, #9
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_08070FCC
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	pop {r1}
	bx r1

	thumb_func_start sub_08007EA4
sub_08007EA4: @ 0x08007EA4
	push {r4, lr}
	adds r4, r0, #0
	cmp r2, #0
	beq _08007EF6
	movs r3, #3
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	bne _08007EEC
	adds r0, r4, #0
	ands r0, r3
	cmp r0, #0
	bne _08007EEC
	movs r0, #0x1f
	ands r0, r2
	cmp r0, #0
	bne _08007ED2
	lsls r2, r2, #9
	lsrs r2, r2, #0xb
	adds r0, r4, #0
	bl CpuFastSet
	b _08007EF6
_08007ED2:
	adds r0, r2, #0
	ands r0, r3
	cmp r0, #0
	bne _08007EEC
	lsls r2, r2, #9
	lsrs r2, r2, #0xb
	movs r0, #0x80
	lsls r0, r0, #0x13
	orrs r2, r0
	adds r0, r4, #0
	bl CpuSet
	b _08007EF6
_08007EEC:
	lsls r2, r2, #0xa
	lsrs r2, r2, #0xb
	adds r0, r4, #0
	bl CpuSet
_08007EF6:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08007EFC
sub_08007EFC: @ 0x08007EFC
	push {r4, lr}
	sub sp, #8
	adds r3, r0, #0
	adds r4, r1, #0
	cmp r2, #0
	beq _08007F62
	movs r1, #3
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	bne _08007F4E
	movs r0, #0x1f
	ands r0, r2
	cmp r0, #0
	bne _08007F30
	str r3, [sp]
	lsls r2, r2, #9
	lsrs r2, r2, #0xb
	movs r0, #0x80
	lsls r0, r0, #0x11
	orrs r2, r0
	mov r0, sp
	adds r1, r4, #0
	bl CpuFastSet
	b _08007F62
_08007F30:
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _08007F4E
	str r3, [sp]
	lsls r2, r2, #9
	lsrs r2, r2, #0xb
	movs r0, #0xa0
	lsls r0, r0, #0x13
	orrs r2, r0
	mov r0, sp
	adds r1, r4, #0
	bl CpuSet
	b _08007F62
_08007F4E:
	add r0, sp, #4
	strh r3, [r0]
	lsls r2, r2, #0xa
	lsrs r2, r2, #0xb
	movs r1, #0x80
	lsls r1, r1, #0x11
	orrs r2, r1
	adds r1, r4, #0
	bl CpuSet
_08007F62:
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08007F6C
sub_08007F6C: @ 0x08007F6C
	push {r4, lr}
	ldr r4, _08007F84 @ =0x030024B0
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x30
	bl sub_08007EFC
	ldr r0, _08007F88 @ =0x000003FF
	strh r0, [r4, #2]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08007F84: .4byte 0x030024B0
_08007F88: .4byte 0x000003FF

	thumb_func_start sub_08007F8C
sub_08007F8C: @ 0x08007F8C
	push {r4, r5, r6, r7, lr}
	ldr r0, _08007FF0 @ =0x04000130
	ldrh r0, [r0]
	ldr r1, _08007FF4 @ =0x000003FF
	adds r2, r1, #0
	eors r2, r0
	ldr r1, _08007FF8 @ =0x030024B0
	ldrh r3, [r1, #2]
	adds r0, r2, #0
	bics r0, r3
	movs r3, #0
	strh r0, [r1]
	strh r2, [r1, #2]
	strh r3, [r1, #4]
	adds r2, r1, #0
	adds r2, #8
	adds r5, r1, #0
	movs r6, #1
	ldr r7, _08007FFC @ =0x0807F4C0
_08007FB2:
	ldrh r0, [r5, #2]
	asrs r0, r3
	ands r0, r6
	cmp r0, #0
	beq _08008000
	ldrb r0, [r2]
	cmp r0, #0
	bne _08007FCC
	adds r0, r6, #0
	lsls r0, r3
	ldrh r1, [r5, #4]
	orrs r0, r1
	strh r0, [r5, #4]
_08007FCC:
	ldrb r0, [r2]
	adds r0, #1
	movs r4, #0
	strb r0, [r2]
	ldrb r1, [r2, #1]
	adds r1, r1, r7
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r1, [r1]
	cmp r0, r1
	bls _08008004
	strb r4, [r2]
	ldrb r0, [r2, #1]
	cmp r0, #2
	bhi _08008004
	adds r0, #1
	strb r0, [r2, #1]
	b _08008004
	.align 2, 0
_08007FF0: .4byte 0x04000130
_08007FF4: .4byte 0x000003FF
_08007FF8: .4byte 0x030024B0
_08007FFC: .4byte 0x0807F4C0
_08008000:
	strb r0, [r2, #1]
	strb r0, [r2]
_08008004:
	adds r3, #1
	adds r2, #4
	cmp r3, #9
	ble _08007FB2
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08008014
sub_08008014: @ 0x08008014
	push {r4, lr}
	ldr r4, _0800802C @ =0x030024E0
	movs r0, #0
	adds r1, r4, #0
	movs r2, #0x50
	bl sub_08007EFC
	movs r0, #0x80
	strh r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800802C: .4byte 0x030024E0

	thumb_func_start sub_08008030
sub_08008030: @ 0x08008030
	push {lr}
	ldr r1, _08008040 @ =0x030024E0
	movs r0, #0
	movs r2, #0x50
	bl sub_08007EFC
	pop {r0}
	bx r0
	.align 2, 0
_08008040: .4byte 0x030024E0

	thumb_func_start sub_08008044
sub_08008044: @ 0x08008044
	push {lr}
	ldr r3, _08008164 @ =0x030024E0
	adds r0, r3, #0
	adds r0, #0x4f
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800805A
	movs r1, #0x80
	lsls r1, r1, #0x13
	ldrh r0, [r3]
	strh r0, [r1]
_0800805A:
	ldr r1, _08008168 @ =0x04000008
	ldrh r0, [r3, #2]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r3, #4]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r3, #6]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r3, #8]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r3, #0xa]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r3, #0x12]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r3, #0xc]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r3, #0x14]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r3, #0xe]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r3, #0x16]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r3, #0x10]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r3, #0x18]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r3, #0x1a]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r3, #0x1c]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r3, #0x1e]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r3, #0x20]
	strh r0, [r1]
	adds r1, #2
	ldr r0, [r3, #0x24]
	str r0, [r1]
	adds r1, #4
	ldr r0, [r3, #0x28]
	str r0, [r1]
	adds r1, #4
	ldrh r0, [r3, #0x2c]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r3, #0x2e]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r3, #0x30]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r3, #0x32]
	strh r0, [r1]
	adds r1, #2
	ldr r0, [r3, #0x34]
	str r0, [r1]
	adds r1, #4
	ldr r0, [r3, #0x38]
	str r0, [r1]
	adds r1, #4
	ldrh r0, [r3, #0x3c]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r3, #0x3e]
	strh r0, [r1]
	adds r1, #2
	adds r0, r3, #0
	adds r0, #0x40
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	adds r0, r3, #0
	adds r0, #0x42
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r2, _0800816C @ =0x04000048
	adds r0, r3, #0
	adds r0, #0x45
	ldrb r1, [r0]
	lsls r1, r1, #8
	subs r0, #1
	ldrb r0, [r0]
	orrs r0, r1
	strh r0, [r2]
	adds r2, #2
	adds r0, r3, #0
	adds r0, #0x47
	ldrb r1, [r0]
	lsls r1, r1, #8
	subs r0, #1
	ldrb r0, [r0]
	orrs r0, r1
	strh r0, [r2]
	adds r2, #2
	adds r0, r3, #0
	adds r0, #0x48
	ldrb r1, [r0]
	lsls r1, r1, #8
	adds r0, #1
	ldrb r0, [r0]
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _08008170 @ =0x04000050
	adds r0, r3, #0
	adds r0, #0x4a
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	adds r0, r3, #0
	adds r0, #0x4c
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	adds r0, r3, #0
	adds r0, #0x4e
	ldrb r0, [r0]
	strh r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_08008164: .4byte 0x030024E0
_08008168: .4byte 0x04000008
_0800816C: .4byte 0x04000048
_08008170: .4byte 0x04000050

	thumb_func_start sub_08008174
sub_08008174: @ 0x08008174
	push {lr}
	ldr r1, _0800819C @ =0x030024E0
	movs r0, #0x82
	lsls r0, r0, #5
	strh r0, [r1]
	movs r3, #0
	adds r0, r1, #0
	adds r0, #0xa
	movs r2, #3
_08008186:
	strh r3, [r0]
	strh r3, [r0, #8]
	adds r0, #2
	subs r2, #1
	cmp r2, #0
	bge _08008186
	adds r1, #0x4a
	movs r0, #0
	strh r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_0800819C: .4byte 0x030024E0

	thumb_func_start sub_080081A0
sub_080081A0: @ 0x080081A0
	push {lr}
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r0, _080081B8 @ =0x00007FFF
	cmp r3, r0
	bne _080081C0
	ldr r2, _080081BC @ =0x030024E0
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r0, #0x80
	b _080081C8
	.align 2, 0
_080081B8: .4byte 0x00007FFF
_080081BC: .4byte 0x030024E0
_080081C0:
	ldr r2, _080081D8 @ =0x030024E0
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r0, #0
_080081C8:
	strh r0, [r1]
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0xa0
	lsls r0, r0, #0x13
	strh r3, [r0]
	pop {r0}
	bx r0
	.align 2, 0
_080081D8: .4byte 0x030024E0

	thumb_func_start sub_080081DC
sub_080081DC: @ 0x080081DC
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r6, r1, #0
	movs r5, #0
	b _080081EA
_080081E6:
	ldr r5, [sp]
	adds r0, r5, #0
_080081EA:
	adds r1, r6, #0
	mov r2, sp
	bl sub_0800825C
	adds r4, r0, #0
	cmp r5, #0
	beq _080081FE
	adds r0, r5, #0
	bl sub_08007CF8
_080081FE:
	cmp r4, #0
	beq _080081E6
	ldr r0, [sp, #4]
	add sp, #8
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_0800820C
sub_0800820C: @ 0x0800820C
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r1, #0
	adds r4, r0, #0
	movs r6, #0
	mov r7, sp
	b _0800822E
_0800821A:
	cmp r6, #0
	beq _08008224
	adds r0, r6, #0
	bl sub_08007CF8
_08008224:
	ldr r0, [sp]
	cmp r0, #0
	beq _0800822E
	adds r4, r0, #0
	adds r6, r4, #0
_0800822E:
	adds r0, r4, #0
	movs r1, #0
	mov r2, sp
	bl sub_0800825C
	cmp r0, #0
	beq _0800821A
	ldr r1, [sp]
	cmp r5, #0
	beq _08008248
	str r1, [r5]
	ldr r0, [r7, #4]
	str r0, [r5, #4]
_08008248:
	cmp r1, #0
	beq _08008250
	subs r0, r1, #4
	b _08008252
_08008250:
	movs r0, #0
_08008252:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0800825C
sub_0800825C: @ 0x0800825C
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	ldr r2, [r4]
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x1c
	cmp r0, #0
	bne _0800828E
	adds r1, r4, #4
	lsrs r0, r2, #8
	subs r7, r0, #4
	cmp r5, #0
	beq _08008286
	adds r0, r1, #0
	adds r1, r5, #0
	adds r2, r7, #0
	bl sub_08007EA4
	str r5, [r6]
	b _08008288
_08008286:
	str r1, [r6]
_08008288:
	str r7, [r6, #4]
	movs r0, #1
	b _08008300
_0800828E:
	lsrs r7, r2, #8
	adds r0, r7, #0
	bl sub_08007CE8
	adds r5, r0, #0
	cmp r5, #0
	bne _080082A4
	str r5, [r6, #4]
	str r5, [r6]
	movs r0, #1
	b _08008300
_080082A4:
	ldr r1, [r4]
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x1c
	cmp r0, #2
	beq _080082CC
	cmp r0, #2
	bgt _080082B8
	cmp r0, #1
	beq _080082C2
	b _080082FA
_080082B8:
	cmp r0, #3
	beq _080082D6
	cmp r0, #8
	beq _080082E0
	b _080082FA
_080082C2:
	adds r0, r4, #0
	adds r1, r5, #0
	bl LZ77UnCompReadNormalWrite8bit
	b _080082FA
_080082CC:
	adds r0, r4, #0
	adds r1, r5, #0
	bl HuffUnCompReadNormal
	b _080082FA
_080082D6:
	adds r0, r4, #0
	adds r1, r5, #0
	bl HuffUnCompReadByCallback
	b _080082FA
_080082E0:
	lsls r0, r1, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #1
	bne _080082F2
	adds r0, r4, #0
	adds r1, r5, #0
	bl Diff8bitUnFilterWrite8bit
	b _080082FA
_080082F2:
	adds r0, r4, #0
	adds r1, r5, #0
	bl Diff16bitUnFilter
_080082FA:
	str r5, [r6]
	str r7, [r6, #4]
	movs r0, #0
_08008300:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08008308
sub_08008308: @ 0x08008308
	push {r4, lr}
	adds r4, r0, #0
	adds r0, r4, #4
	ldrh r2, [r4]
	bl sub_08007EA4
	ldrh r0, [r4]
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_0800831C
sub_0800831C: @ 0x0800831C
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldrh r0, [r5]
	str r0, [r4, #4]
	bl sub_08007CE8
	adds r1, r0, #0
	str r1, [r4]
	cmp r1, #0
	beq _0800833E
	adds r0, r5, #4
	ldr r2, [r4, #4]
	bl sub_08007EA4
	ldr r0, [r4]
	b _08008340
_0800833E:
	movs r0, #0
_08008340:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08008348
sub_08008348: @ 0x08008348
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	mov r0, sp
	movs r2, #0
	strb r2, [r0]
	adds r0, r4, #4
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r1, sp
	ldrh r0, [r4]
	strh r0, [r1, #0xc]
	mov r0, sp
	strh r2, [r0, #0xe]
	bl sub_08009F6C
	ldrh r0, [r4]
	add sp, #0x10
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08008374
sub_08008374: @ 0x08008374
	push {lr}
	bl sub_080081DC
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08008380
sub_08008380: @ 0x08008380
	push {lr}
	bl sub_0800820C
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0800838C
sub_0800838C: @ 0x0800838C
	push {r4, lr}
	adds r4, r0, #0
	adds r0, r4, #4
	ldrh r2, [r4]
	bl sub_08007EA4
	ldrh r0, [r4]
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_080083A0
sub_080083A0: @ 0x080083A0
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldrh r0, [r5]
	str r0, [r4, #4]
	bl sub_08007CE8
	adds r1, r0, #0
	str r1, [r4]
	cmp r1, #0
	beq _080083C2
	adds r0, r5, #4
	ldr r2, [r4, #4]
	bl sub_08007EA4
	ldr r0, [r4]
	b _080083C4
_080083C2:
	movs r0, #0
_080083C4:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080083CC
sub_080083CC: @ 0x080083CC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	str r1, [sp, #8]
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	lsls r3, r3, #0x18
	lsrs r6, r3, #0x18
	cmp r7, #0
	bne _080083F0
	cmp r6, #0
	bne _080083F0
	bl sub_080081DC
	b _08008452
_080083F0:
	mov r1, sp
	bl sub_0800820C
	mov r8, r0
	cmp r0, #0
	bne _08008400
	movs r0, #0
	b _08008452
_08008400:
	ldr r4, [sp]
	movs r5, #0
	ldr r0, [sp, #4]
	lsrs r0, r0, #1
	mov sb, r4
	cmp r5, r0
	bhs _08008440
	movs r1, #0xf0
	lsls r1, r1, #8
	mov sl, r1
	mov ip, r0
_08008416:
	ldrh r2, [r4]
	movs r3, #0xc0
	lsls r3, r3, #4
	ands r3, r2
	ldr r1, _08008464 @ =0x000003FF
	ands r1, r2
	adds r1, r7, r1
	mov r0, sl
	ands r0, r2
	lsrs r0, r0, #0xc
	adds r0, r0, r6
	lsls r0, r0, #0xc
	orrs r1, r0
	strh r1, [r4]
	ldrh r0, [r4]
	orrs r3, r0
	strh r3, [r4]
	adds r5, #1
	adds r4, #2
	cmp r5, ip
	blo _08008416
_08008440:
	ldr r2, [sp, #4]
	mov r0, sb
	ldr r1, [sp, #8]
	bl sub_08007EA4
	mov r0, r8
	bl sub_08007CF8
	ldr r0, [sp, #4]
_08008452:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08008464: .4byte 0x000003FF

	thumb_func_start sub_08008468
sub_08008468: @ 0x08008468
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	mov r8, r1
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	lsls r3, r3, #0x18
	lsrs r6, r3, #0x18
	cmp r7, #0
	bne _0800848C
	cmp r6, #0
	bne _0800848C
	bl sub_0800820C
	b _080084E2
_0800848C:
	mov r1, sp
	bl sub_0800820C
	str r0, [sp, #8]
	ldr r4, [sp]
	movs r5, #0
	ldr r0, [sp, #4]
	lsrs r0, r0, #1
	cmp r5, r0
	bhs _080084D6
	ldr r1, _080084F4 @ =0x000003FF
	mov sl, r1
	movs r1, #0xf0
	lsls r1, r1, #8
	mov sb, r1
	mov ip, r0
_080084AC:
	ldrh r2, [r4]
	movs r3, #0xc0
	lsls r3, r3, #4
	ands r3, r2
	mov r1, sl
	ands r1, r2
	adds r1, r7, r1
	mov r0, sb
	ands r0, r2
	lsrs r0, r0, #0xc
	adds r0, r0, r6
	lsls r0, r0, #0xc
	orrs r1, r0
	strh r1, [r4]
	ldrh r0, [r4]
	orrs r3, r0
	strh r3, [r4]
	adds r5, #1
	adds r4, #2
	cmp r5, ip
	blo _080084AC
_080084D6:
	ldr r0, [sp, #4]
	mov r1, r8
	str r0, [r1, #4]
	ldr r0, [sp]
	str r0, [r1]
	ldr r0, [sp, #8]
_080084E2:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080084F4: .4byte 0x000003FF

	thumb_func_start sub_080084F8
sub_080084F8: @ 0x080084F8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	lsls r2, r2, #0x10
	lsrs r4, r2, #0x10
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	ldrb r2, [r0, #3]
	mov ip, r2
	ldrb r2, [r0, #2]
	lsls r7, r2, #1
	adds r6, r0, #4
	adds r5, r1, #0
	cmp r4, #0
	bne _08008544
	cmp r3, #0
	bne _08008544
	mov r0, ip
	muls r0, r7, r0
	mov sl, r0
	mov r2, ip
	cmp r2, #0
	beq _0800858E
	mov r4, ip
_0800852E:
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r7, #0
	bl sub_08007EA4
	adds r6, r6, r7
	adds r5, #0x40
	subs r4, #1
	cmp r4, #0
	bne _0800852E
	b _0800858E
_08008544:
	ldr r0, _080085A0 @ =0x000003FF
	ands r0, r4
	lsls r1, r3, #0xc
	orrs r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	movs r4, #0
	mov r0, ip
	muls r0, r7, r0
	mov sl, r0
	cmp r4, ip
	bge _0800858E
	lsrs r2, r7, #1
	mov r8, r2
	mov r0, r8
	str r0, [sp]
_08008566:
	adds r3, r4, #1
	mov r2, r8
	cmp r2, #0
	beq _08008582
	ldr r2, [sp]
_08008570:
	ldrh r1, [r6]
	mov r0, sb
	orrs r0, r1
	strh r0, [r5]
	adds r6, #2
	adds r5, #2
	subs r2, #1
	cmp r2, #0
	bne _08008570
_08008582:
	adds r0, r5, #0
	adds r0, #0x40
	subs r5, r0, r7
	adds r4, r3, #0
	cmp r4, ip
	blt _08008566
_0800858E:
	mov r0, sl
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080085A0: .4byte 0x000003FF

	thumb_func_start sub_080085A4
sub_080085A4: @ 0x080085A4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r1, #0
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	lsls r3, r3, #0x18
	lsrs r6, r3, #0x18
	ldrb r1, [r0, #3]
	mov r8, r1
	ldrb r1, [r0, #2]
	lsls r1, r1, #1
	mov sb, r1
	adds r4, r0, #4
	mov r0, r8
	muls r0, r1, r0
	str r0, [r5, #4]
	bl sub_08007CE8
	adds r1, r0, #0
	str r1, [r5]
	cmp r1, #0
	bne _080085DA
	movs r0, #0
	b _0800862C
_080085DA:
	cmp r7, #0
	bne _080085EE
	cmp r6, #0
	bne _080085EE
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl sub_08007EA4
	ldr r0, [r5]
	b _0800862C
_080085EE:
	ldr r0, _0800863C @ =0x000003FF
	ands r0, r7
	lsls r1, r6, #0xc
	orrs r0, r1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	ldr r3, [r5]
	movs r0, #0
	mov sl, r3
	cmp r0, r8
	bge _0800862A
	mov r1, sb
	lsrs r6, r1, #1
	mov ip, r6
_0800860A:
	adds r5, r0, #1
	cmp r6, #0
	beq _08008624
	mov r2, ip
_08008612:
	ldrh r1, [r4]
	adds r0, r7, #0
	orrs r0, r1
	strh r0, [r3]
	adds r4, #2
	subs r2, #1
	adds r3, #2
	cmp r2, #0
	bne _08008612
_08008624:
	adds r0, r5, #0
	cmp r0, r8
	blt _0800860A
_0800862A:
	mov r0, sl
_0800862C:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0800863C: .4byte 0x000003FF

	thumb_func_start sub_08008640
sub_08008640: @ 0x08008640
	push {r4, r5, lr}
	sub sp, #4
	movs r0, #0
	str r0, [sp]
	ldr r5, _0800868C @ =0x02036EA0
	ldr r2, _08008690 @ =0x01000200
	mov r0, sp
	adds r1, r5, #0
	bl CpuFastSet
	ldr r4, _08008694 @ =0x03004400
	movs r0, #0x2e
	strb r0, [r4, #8]
	ldr r0, _08008698 @ =0x03004418
	ldrb r0, [r0]
	cmp r0, #0
	beq _08008666
	movs r0, #1
	strb r0, [r4, #8]
_08008666:
	movs r0, #0x2e
	bl sub_080072F4
	ldrb r0, [r4, #8]
	bl sub_08008790
	ldr r0, _0800869C @ =sub_080086E4
	movs r3, #0x80
	lsls r3, r3, #4
	movs r1, #0x40
	adds r2, r5, #0
	bl sub_08002958
	ldr r1, _080086A0 @ =0x03001404
	str r0, [r1]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800868C: .4byte 0x02036EA0
_08008690: .4byte 0x01000200
_08008694: .4byte 0x03004400
_08008698: .4byte 0x03004418
_0800869C: .4byte sub_080086E4
_080086A0: .4byte 0x03001404

	thumb_func_start sub_080086A4
sub_080086A4: @ 0x080086A4
	push {r4, lr}
	sub sp, #4
	movs r0, #0
	str r0, [sp]
	ldr r4, _080086D4 @ =0x02036EA0
	ldr r2, _080086D8 @ =0x01000200
	mov r0, sp
	adds r1, r4, #0
	bl CpuFastSet
	ldr r0, _080086DC @ =sub_080086E4
	movs r3, #0x80
	lsls r3, r3, #4
	movs r1, #0x40
	adds r2, r4, #0
	bl sub_08002958
	ldr r1, _080086E0 @ =0x03001404
	str r0, [r1]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080086D4: .4byte 0x02036EA0
_080086D8: .4byte 0x01000200
_080086DC: .4byte sub_080086E4
_080086E0: .4byte 0x03001404

	thumb_func_start sub_080086E4
sub_080086E4: @ 0x080086E4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	ldr r5, _08008774 @ =0x03004400
	movs r7, #0
	ldr r6, _08008778 @ =0x02034EA0
	ldr r0, _0800877C @ =0x0300252F
	mov r8, r0
_080086F6:
	ldrb r0, [r5, #8]
	strb r0, [r5, #0xa]
	ldrb r0, [r5, #9]
	strb r0, [r5, #8]
	movs r0, #0x2f
	strb r0, [r5, #9]
	ldr r1, _08008780 @ =0x0807F4C4
	ldrb r0, [r5, #8]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r4, [r0]
	movs r0, #0xa0
	lsls r0, r0, #0x13
	ldrh r0, [r0]
	bl sub_080081A0
	bl sub_0800943C
	bl sub_08007D9C
	bl sub_08007CD4
	bl sub_08007848
	bl sub_0800987C
	bl sub_0800967C
	bl sub_08009038
	bl sub_0800B998
	bl sub_080088C4
	bl sub_08008174
	mov r0, r8
	strb r7, [r0]
	str r7, [sp]
	mov r0, sp
	adds r1, r6, #0
	ldr r2, _08008784 @ =0x01000800
	bl CpuFastSet
	adds r0, r4, #0
	movs r1, #0x90
	adds r2, r6, #0
	movs r3, #0x80
	lsls r3, r3, #6
	bl sub_08002958
	ldr r4, _08008788 @ =0x03002530
	str r0, [r4]
	ldr r1, _0800878C @ =sub_080087AC
	bl sub_08002C58
	ldr r0, [r4]
	bl sub_08002B4C
	movs r0, #1
	bl sub_08002B98
	b _080086F6
	.align 2, 0
_08008774: .4byte 0x03004400
_08008778: .4byte 0x02034EA0
_0800877C: .4byte 0x0300252F
_08008780: .4byte 0x0807F4C4
_08008784: .4byte 0x01000800
_08008788: .4byte 0x03002530
_0800878C: .4byte sub_080087AC

	thumb_func_start sub_08008790
sub_08008790: @ 0x08008790
	push {lr}
	adds r1, r0, #0
	cmp r1, #0x2e
	bgt _080087A4
	ldr r0, _080087A0 @ =0x03004400
	strb r1, [r0, #9]
	movs r0, #1
	b _080087A6
	.align 2, 0
_080087A0: .4byte 0x03004400
_080087A4:
	movs r0, #0
_080087A6:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080087AC
sub_080087AC: @ 0x080087AC
	push {lr}
	ldr r0, _080087CC @ =0x03004400
	ldrb r1, [r0, #9]
	adds r2, r0, #0
	cmp r1, #0x2f
	beq _080087BA
	b _080088BE
_080087BA:
	ldrb r0, [r2, #8]
	cmp r0, #0x2c
	bhi _080088BA
	lsls r0, r0, #2
	ldr r1, _080087D0 @ =_080087D4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080087CC: .4byte 0x03004400
_080087D0: .4byte _080087D4
_080087D4: @ jump table
	.4byte _08008888 @ case 0
	.4byte _0800888C @ case 1
	.4byte _080088BA @ case 2
	.4byte _080088BA @ case 3
	.4byte _080088BA @ case 4
	.4byte _080088BA @ case 5
	.4byte _080088BA @ case 6
	.4byte _080088B2 @ case 7
	.4byte _080088BA @ case 8
	.4byte _080088BA @ case 9
	.4byte _080088AA @ case 10
	.4byte _080088AA @ case 11
	.4byte _08008898 @ case 12
	.4byte _080088AA @ case 13
	.4byte _080088AA @ case 14
	.4byte _080088A6 @ case 15
	.4byte _080088BA @ case 16
	.4byte _080088BA @ case 17
	.4byte _08008894 @ case 18
	.4byte _08008890 @ case 19
	.4byte _080088BA @ case 20
	.4byte _080088BA @ case 21
	.4byte _080088BA @ case 22
	.4byte _080088BA @ case 23
	.4byte _080088BA @ case 24
	.4byte _080088BA @ case 25
	.4byte _080088BA @ case 26
	.4byte _080088BA @ case 27
	.4byte _080088BA @ case 28
	.4byte _080088BA @ case 29
	.4byte _080088BA @ case 30
	.4byte _080088BA @ case 31
	.4byte _080088BA @ case 32
	.4byte _080088B6 @ case 33
	.4byte _080088BA @ case 34
	.4byte _080088BA @ case 35
	.4byte _080088BA @ case 36
	.4byte _080088BA @ case 37
	.4byte _080088BA @ case 38
	.4byte _080088BA @ case 39
	.4byte _080088BA @ case 40
	.4byte _080088BA @ case 41
	.4byte _080088AE @ case 42
	.4byte _080088AE @ case 43
	.4byte _080088AE @ case 44
_08008888:
	movs r0, #1
	b _080088BC
_0800888C:
	movs r0, #0x13
	b _080088BC
_08008890:
	movs r0, #0x12
	b _080088BC
_08008894:
	movs r0, #0x24
	b _080088BC
_08008898:
	movs r0, #0x23
	bl sub_08008790
	movs r0, #0xb
	bl sub_080072F4
	b _080088BE
_080088A6:
	movs r0, #0xe
	b _080088BC
_080088AA:
	movs r0, #0x2b
	b _080088BC
_080088AE:
	movs r0, #0x12
	b _080088BC
_080088B2:
	movs r0, #0x1f
	b _080088BC
_080088B6:
	movs r0, #0x1f
	b _080088BC
_080088BA:
	movs r0, #0x2e
_080088BC:
	strb r0, [r2, #9]
_080088BE:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080088C4
sub_080088C4: @ 0x080088C4
	push {lr}
	ldr r1, _080088DC @ =0x03004400
	ldrb r0, [r1, #8]
	subs r0, #3
	adds r2, r1, #0
	cmp r0, #0xd
	bhi _0800898A
	lsls r0, r0, #2
	ldr r1, _080088E0 @ =_080088E4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080088DC: .4byte 0x03004400
_080088E0: .4byte _080088E4
_080088E4: @ jump table
	.4byte _0800891C @ case 0
	.4byte _0800898A @ case 1
	.4byte _0800898A @ case 2
	.4byte _0800898A @ case 3
	.4byte _0800898A @ case 4
	.4byte _0800898A @ case 5
	.4byte _0800898A @ case 6
	.4byte _08008970 @ case 7
	.4byte _08008940 @ case 8
	.4byte _0800898A @ case 9
	.4byte _0800892C @ case 10
	.4byte _08008958 @ case 11
	.4byte _0800898A @ case 12
	.4byte _08008984 @ case 13
_0800891C:
	ldrb r1, [r2, #0xa]
	cmp r1, #2
	beq _08008926
	cmp r1, #0x20
	bne _0800898A
_08008926:
	bl sub_0802F9D4
	b _0800898A
_0800892C:
	ldrb r1, [r2, #0xa]
	cmp r1, #0xd
	beq _0800898A
	cmp r1, #0x10
	beq _0800898A
	cmp r1, #0x11
	beq _0800898A
	bl sub_0801246C
	b _0800898A
_08008940:
	ldrb r1, [r2, #0xa]
	cmp r1, #0x10
	beq _0800898A
	cmp r1, #0xc
	beq _0800898A
	cmp r1, #0x23
	beq _0800898A
	cmp r1, #0x11
	beq _0800898A
	bl sub_0800FABC
	b _0800898A
_08008958:
	ldrb r1, [r2, #0xa]
	cmp r1, #0x10
	beq _0800898A
	cmp r1, #0xe
	beq _0800898A
	cmp r1, #0xf
	beq _0800898A
	cmp r1, #0x11
	beq _0800898A
	bl sub_08015100
	b _0800898A
_08008970:
	ldrb r1, [r2, #0xa]
	cmp r1, #0xa
	beq _0800898A
	cmp r1, #0x10
	beq _0800898A
	cmp r1, #0x11
	beq _0800898A
	bl sub_0800BCB8
	b _0800898A
_08008984:
	ldrb r0, [r2, #0xa]
	bl sub_080191D4
_0800898A:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08008990
sub_08008990: @ 0x08008990
	push {r4, r5, lr}
	ldr r0, _080089A8 @ =0x030024E0
	movs r1, #0x80
	lsls r1, r1, #5
	strh r1, [r0]
	adds r0, #0x4f
	movs r1, #1
	strb r1, [r0]
	ldr r4, _080089AC @ =0x030024B0
	movs r5, #3
	b _080089B6
	.align 2, 0
_080089A8: .4byte 0x030024E0
_080089AC: .4byte 0x030024B0
_080089B0:
	movs r0, #1
	bl sub_08002B98
_080089B6:
	ldrh r1, [r4]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _080089B0
	movs r0, #0x2e
	bl sub_08008790
	ldr r1, _080089D8 @ =0x030024E0
	movs r0, #0
	strh r0, [r1]
	bl sub_08002B0C
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080089D8: .4byte 0x030024E0

	thumb_func_start sub_080089DC
sub_080089DC: @ 0x080089DC
	push {lr}
	bl sub_08002B0C
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080089E8
sub_080089E8: @ 0x080089E8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r2, r2, #0x18
	lsrs r6, r2, #0x18
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov ip, r3
	ldr r2, _08008A74 @ =0x03001408
	ldrb r3, [r2, #1]
	lsls r0, r3, #0x1a
	lsrs r0, r0, #0x1e
	movs r1, #1
	ands r1, r0
	adds r5, r2, #0
	cmp r1, #0
	bne _08008AEA
	ldrb r0, [r5]
	movs r4, #2
	rsbs r4, r4, #0
	ands r4, r0
	movs r0, #0x31
	rsbs r0, r0, #0
	ands r0, r3
	movs r1, #0x10
	orrs r0, r1
	lsls r2, r6, #3
	movs r1, #7
	ands r4, r1
	orrs r4, r2
	strb r4, [r5]
	movs r2, #0xf
	mov r1, ip
	ands r1, r2
	movs r2, #0x10
	rsbs r2, r2, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r5, #1]
	cmp r7, #0
	beq _08008A80
	ldr r0, _08008A78 @ =0x00007FFF
	cmp r7, r0
	beq _08008AA4
	movs r0, #7
	rsbs r0, r0, #0
	ands r4, r0
	movs r0, #4
	orrs r4, r0
	strb r4, [r5]
	ldr r1, _08008A7C @ =0x030024E0
	movs r2, #0x40
	adds r0, r6, #0
	orrs r0, r2
	movs r3, #0x80
	lsls r3, r3, #6
	adds r2, r3, #0
	adds r3, r1, #0
	adds r3, #0x4a
	orrs r0, r2
	strh r0, [r3]
	adds r1, #0x4c
	movs r0, #0x10
	strh r0, [r1]
	b _08008AD2
	.align 2, 0
_08008A74: .4byte 0x03001408
_08008A78: .4byte 0x00007FFF
_08008A7C: .4byte 0x030024E0
_08008A80:
	movs r0, #7
	rsbs r0, r0, #0
	ands r4, r0
	strb r4, [r5]
	ldr r3, _08008AA0 @ =0x030024E0
	movs r0, #0x4a
	adds r0, r0, r3
	mov ip, r0
	ldrh r0, [r0]
	movs r1, #0xfc
	lsls r1, r1, #6
	ands r1, r0
	movs r4, #0
	movs r2, #0xc0
	b _08008AC4
	.align 2, 0
_08008AA0: .4byte 0x030024E0
_08008AA4:
	movs r0, #7
	rsbs r0, r0, #0
	ands r4, r0
	movs r0, #2
	orrs r4, r0
	strb r4, [r5]
	ldr r3, _08008AE0 @ =0x030024E0
	movs r1, #0x4a
	adds r1, r1, r3
	mov ip, r1
	ldrh r0, [r1]
	movs r1, #0xfc
	lsls r1, r1, #6
	ands r1, r0
	movs r4, #0
	movs r2, #0x80
_08008AC4:
	adds r0, r6, #0
	orrs r0, r2
	orrs r1, r0
	mov r0, ip
	strh r1, [r0]
	adds r3, #0x4e
	strb r4, [r3]
_08008AD2:
	strh r7, [r5, #6]
	mov r1, r8
	cmp r1, #0
	beq _08008AE4
	strh r1, [r5, #4]
	movs r0, #0
	b _08008AE8
	.align 2, 0
_08008AE0: .4byte 0x030024E0
_08008AE4:
	movs r0, #1
	strh r0, [r5, #4]
_08008AE8:
	strh r0, [r5, #2]
_08008AEA:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08008AF4
sub_08008AF4: @ 0x08008AF4
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	lsls r2, r2, #0x18
	lsrs r6, r2, #0x18
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov ip, r3
	ldr r2, _08008B28 @ =0x03001408
	ldrb r0, [r2, #1]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	movs r1, #1
	ands r1, r0
	adds r4, r2, #0
	cmp r1, #0
	bne _08008BB6
	cmp r5, #0
	beq _08008B30
	ldr r0, _08008B2C @ =0x00007FFF
	cmp r5, r0
	beq _08008B50
	b _08008BB6
	.align 2, 0
_08008B28: .4byte 0x03001408
_08008B2C: .4byte 0x00007FFF
_08008B30:
	ldrb r1, [r4]
	movs r0, #7
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4]
	ldr r3, _08008B4C @ =0x030024E0
	adds r5, r3, #0
	adds r5, #0x4a
	ldrh r0, [r5]
	movs r1, #0xfc
	lsls r1, r1, #6
	ands r1, r0
	movs r2, #0xc0
	b _08008B6E
	.align 2, 0
_08008B4C: .4byte 0x030024E0
_08008B50:
	ldrb r1, [r4]
	movs r0, #7
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r4]
	ldr r3, _08008BAC @ =0x030024E0
	adds r5, r3, #0
	adds r5, #0x4a
	ldrh r0, [r5]
	movs r1, #0xfc
	lsls r1, r1, #6
	ands r1, r0
	movs r2, #0x80
_08008B6E:
	adds r0, r6, #0
	orrs r0, r2
	orrs r1, r0
	strh r1, [r5]
	adds r3, #0x4e
	movs r0, #0x10
	strb r0, [r3]
	ldrb r0, [r4]
	movs r1, #1
	orrs r0, r1
	ldrb r2, [r4, #1]
	movs r1, #0x30
	orrs r2, r1
	lsls r3, r6, #3
	movs r1, #7
	ands r0, r1
	orrs r0, r3
	strb r0, [r4]
	movs r1, #0xf
	mov r0, ip
	ands r0, r1
	movs r1, #0x10
	rsbs r1, r1, #0
	ands r2, r1
	orrs r2, r0
	strb r2, [r4, #1]
	cmp r7, #0
	beq _08008BB0
	movs r0, #0
	strh r7, [r4, #4]
	b _08008BB4
	.align 2, 0
_08008BAC: .4byte 0x030024E0
_08008BB0:
	movs r0, #1
	strh r0, [r4, #4]
_08008BB4:
	strh r0, [r4, #2]
_08008BB6:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08008BBC
sub_08008BBC: @ 0x08008BBC
	push {lr}
	ldr r0, _08008BD4 @ =0x03001408
	ldrb r1, [r0, #1]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1e
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08008BD8
	movs r0, #1
	b _08008BDA
	.align 2, 0
_08008BD4: .4byte 0x03001408
_08008BD8:
	movs r0, #0
_08008BDA:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08008BE0
sub_08008BE0: @ 0x08008BE0
	ldr r0, _08008BEC @ =0x03001408
	ldrb r0, [r0, #1]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	bx lr
	.align 2, 0
_08008BEC: .4byte 0x03001408

	thumb_func_start sub_08008BF0
sub_08008BF0: @ 0x08008BF0
	ldr r0, _08008BFC @ =0x03001408
	ldrb r0, [r0, #1]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	bx lr
	.align 2, 0
_08008BFC: .4byte 0x03001408

	thumb_func_start sub_08008C00
sub_08008C00: @ 0x08008C00
	ldr r0, _08008C0C @ =0x03001408
	ldrb r1, [r0, #1]
	movs r2, #0x40
	orrs r1, r2
	strb r1, [r0, #1]
	bx lr
	.align 2, 0
_08008C0C: .4byte 0x03001408

	thumb_func_start sub_08008C10
sub_08008C10: @ 0x08008C10
	ldr r2, _08008C20 @ =0x03001408
	ldrb r1, [r2, #1]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #1]
	bx lr
	.align 2, 0
_08008C20: .4byte 0x03001408

	thumb_func_start sub_08008C24
sub_08008C24: @ 0x08008C24
	ldr r0, _08008C30 @ =0x03001408
	ldrb r0, [r0, #1]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1f
	bx lr
	.align 2, 0
_08008C30: .4byte 0x03001408

	thumb_func_start sub_08008C34
sub_08008C34: @ 0x08008C34
	push {lr}
	ldr r1, _08008C58 @ =0x03001408
	movs r0, #0
	movs r2, #8
	bl sub_08007EFC
	ldr r3, _08008C5C @ =0x030024E0
	adds r0, r3, #0
	adds r0, #0x4a
	movs r2, #0
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strb r2, [r0]
	pop {r0}
	bx r0
	.align 2, 0
_08008C58: .4byte 0x03001408
_08008C5C: .4byte 0x030024E0

	thumb_func_start sub_08008C60
sub_08008C60: @ 0x08008C60
	push {r4, r5, r6, r7, lr}
	movs r6, #0
	ldr r0, _08008CA4 @ =0x03001408
	ldrb r3, [r0, #1]
	lsls r1, r3, #0x1a
	lsrs r1, r1, #0x1e
	movs r2, #1
	ands r2, r1
	adds r5, r0, #0
	cmp r2, #0
	beq _08008D2E
	movs r0, #0x40
	ands r0, r3
	cmp r0, #0
	bne _08008D2E
	movs r7, #0
	ldrh r1, [r5, #4]
	ldrh r0, [r5, #2]
	cmp r0, r1
	bls _08008CB2
	movs r7, #1
	strh r1, [r5, #2]
	ldrb r1, [r5]
	movs r0, #6
	ands r0, r1
	cmp r0, #2
	bne _08008CAC
	movs r1, #0xa0
	lsls r1, r1, #0x13
	ldr r2, _08008CA8 @ =0x00007FFF
	adds r0, r2, #0
	strh r0, [r1]
	b _08008CB2
	.align 2, 0
_08008CA4: .4byte 0x03001408
_08008CA8: .4byte 0x00007FFF
_08008CAC:
	movs r0, #0xa0
	lsls r0, r0, #0x13
	strh r6, [r0]
_08008CB2:
	ldrb r0, [r5, #1]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #4
	movs r1, #0x80
	lsls r1, r1, #0x11
	adds r0, r0, r1
	lsrs r4, r0, #0x18
	ldrb r0, [r5]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	cmp r0, #0
	beq _08008CD0
	cmp r0, #1
	beq _08008CDC
	b _08008CEC
_08008CD0:
	ldrh r0, [r5, #2]
	muls r0, r4, r0
	ldrh r1, [r5, #4]
	bl sub_08070FCC
	b _08008CE8
_08008CDC:
	ldrh r0, [r5, #2]
	muls r0, r4, r0
	ldrh r1, [r5, #4]
	bl sub_08070FCC
	subs r0, r4, r0
_08008CE8:
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
_08008CEC:
	ldrb r0, [r5]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1e
	cmp r0, #1
	bgt _08008D04
	cmp r0, #0
	blt _08008D04
	ldr r0, _08008D24 @ =0x030024E0
	movs r1, #0x1f
	ands r6, r1
	adds r0, #0x4e
	strb r6, [r0]
_08008D04:
	cmp r7, #0
	beq _08008D28
	ldrb r2, [r5, #1]
	lsls r1, r2, #0x1a
	lsrs r1, r1, #0x1e
	adds r1, #1
	movs r0, #3
	ands r1, r0
	lsls r1, r1, #4
	movs r0, #0x31
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r5, #1]
	b _08008D2E
	.align 2, 0
_08008D24: .4byte 0x030024E0
_08008D28:
	ldrh r0, [r5, #2]
	adds r0, #1
	strh r0, [r5, #2]
_08008D2E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08008D34
sub_08008D34: @ 0x08008D34
	push {lr}
	b _08008D3E
_08008D38:
	movs r0, #1
	bl sub_08002B98
_08008D3E:
	bl sub_08008BBC
	cmp r0, #1
	bne _08008D38
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08008D4C
sub_08008D4C: @ 0x08008D4C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8

	thumb_func_start sub_08008D54
sub_08008D54: @ 0x08008D54
	push {r5, r6, r7}
	sub sp, #8
	ldr r4, [sp, #0x28]
	ldr r5, [sp, #0x2c]
	ldr r6, [sp, #0x30]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	lsls r1, r1, #0x18
	lsrs r7, r1, #0x18
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov ip, r2
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	str r3, [sp, #4]
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	mov sl, r4
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	mov sb, r5
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	mov r8, r6
	cmp r7, #2
	beq _08008D9A
	ldr r0, _08008DA8 @ =0x03002540
	ldrb r1, [r0]
	lsls r1, r1, #0x1d
	lsrs r1, r1, #0x1e
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08008E8A
_08008D9A:
	cmp r7, #1
	beq _08008DF8
	cmp r7, #1
	bgt _08008DAC
	cmp r7, #0
	beq _08008DB0
	b _08008E8A
	.align 2, 0
_08008DA8: .4byte 0x03002540
_08008DAC:
	cmp r7, #2
	bne _08008E8A
_08008DB0:
	ldr r4, _08008DF0 @ =0x03002540
	ldrb r0, [r4]
	movs r5, #7
	rsbs r5, r5, #0
	ands r5, r0
	movs r0, #2
	orrs r5, r0
	strb r5, [r4]
	ldr r1, _08008DF4 @ =0x030024E0
	ldrh r2, [r1]
	movs r3, #0xc0
	lsls r3, r3, #7
	adds r0, r3, #0
	orrs r0, r2
	strh r0, [r1]
	movs r3, #0xf0
	strh r3, [r1, #0x3c]
	adds r0, r1, #0
	adds r0, #0x40
	movs r2, #0xa0
	strh r2, [r0]
	strh r3, [r1, #0x3e]
	adds r0, #2
	strh r2, [r0]
	adds r6, r1, #0
	cmp r7, #2
	bne _08008E20
	movs r0, #6
	orrs r5, r0
	strb r5, [r4]
	b _08008E20
	.align 2, 0
_08008DF0: .4byte 0x03002540
_08008DF4: .4byte 0x030024E0
_08008DF8:
	ldr r3, _08008E64 @ =0x030024E0
	adds r0, r3, #0
	adds r0, #0x40
	movs r1, #0xa0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldrh r1, [r3]
	movs r2, #0xc0
	lsls r2, r2, #7
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r3]
	ldr r2, _08008E68 @ =0x03002540
	ldrb r0, [r2]
	movs r1, #6
	orrs r0, r1
	strb r0, [r2]
	adds r4, r2, #0
	adds r6, r3, #0
_08008E20:
	adds r3, r4, #0
	ldrb r0, [r3]
	movs r2, #2
	rsbs r2, r2, #0
	ands r2, r0
	strb r2, [r3]
	cmp r7, #2
	bne _08008E38
	movs r1, #1
	adds r0, r2, #0
	orrs r0, r1
	strb r0, [r3]
_08008E38:
	ldr r0, _08008E6C @ =0x0807F588
	ldr r2, [sp]
	lsls r1, r2, #2
	adds r1, r1, r0
	ldr r0, [r1]
	str r0, [r3, #4]
	mov r0, sp
	ldrh r0, [r0, #4]
	strh r0, [r3, #8]
	mov r1, sl
	strh r1, [r3, #0xc]
	mov r2, sb
	strh r2, [r3, #0xe]
	mov r0, r8
	strh r0, [r3, #0x10]
	mov r1, ip
	cmp r1, #0
	beq _08008E70
	strh r1, [r3, #0xa]
	movs r0, #0
	strh r0, [r3, #0x12]
	b _08008E76
	.align 2, 0
_08008E64: .4byte 0x030024E0
_08008E68: .4byte 0x03002540
_08008E6C: .4byte 0x0807F588
_08008E70:
	movs r0, #1
	strh r0, [r4, #0xa]
	strh r0, [r4, #0x12]
_08008E76:
	adds r1, r6, #0
	adds r1, #0x46
	movs r0, #0
	strb r0, [r1]
	adds r0, r6, #0
	adds r0, #0x44
	movs r1, #0x3f
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
_08008E8A:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08008E9C
sub_08008E9C: @ 0x08008E9C
	push {lr}
	ldr r0, _08008EB4 @ =0x03002540
	ldrb r1, [r0]
	lsls r1, r1, #0x1d
	lsrs r1, r1, #0x1e
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08008EB8
	movs r0, #1
	b _08008EBA
	.align 2, 0
_08008EB4: .4byte 0x03002540
_08008EB8:
	movs r0, #0
_08008EBA:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08008EC0
sub_08008EC0: @ 0x08008EC0
	ldr r2, _08008ED8 @ =0x030024E0
	ldrh r1, [r2]
	ldr r0, _08008EDC @ =0x00009FFF
	ands r0, r1
	strh r0, [r2]
	ldr r2, _08008EE0 @ =0x03002540
	ldrb r1, [r2]
	movs r0, #7
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	bx lr
	.align 2, 0
_08008ED8: .4byte 0x030024E0
_08008EDC: .4byte 0x00009FFF
_08008EE0: .4byte 0x03002540

	thumb_func_start sub_08008EE4
sub_08008EE4: @ 0x08008EE4
	push {r4, r5, r6, r7, lr}
	movs r6, #0
	ldr r2, _08008F24 @ =0x03002540
	ldrb r3, [r2]
	lsls r1, r3, #0x1d
	lsrs r1, r1, #0x1e
	movs r5, #1
	adds r0, r5, #0
	ands r0, r1
	adds r4, r2, #0
	cmp r0, #0
	beq _08008FAE
	movs r7, #0
	ldrh r1, [r4, #0xa]
	ldrh r0, [r4, #0x12]
	cmp r0, r1
	bhi _08008F0E
	adds r0, r5, #0
	ands r0, r3
	cmp r0, #0
	beq _08008F12
_08008F0E:
	movs r7, #1
	strh r1, [r4, #0x12]
_08008F12:
	ldrh r2, [r4, #0xa]
	ldrb r5, [r4]
	lsls r0, r5, #0x1d
	lsrs r0, r0, #0x1e
	cmp r0, #1
	beq _08008F28
	cmp r0, #3
	beq _08008F3C
	b _08008F62
	.align 2, 0
_08008F24: .4byte 0x03002540
_08008F28:
	ldrh r1, [r4, #8]
	ldrh r0, [r4, #0x12]
	subs r0, r2, r0
	muls r0, r1, r0
	adds r1, r2, #0
	bl sub_08070FCC
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	b _08008F62
_08008F3C:
	ldrh r1, [r4, #8]
	ldrh r0, [r4, #0x12]
	muls r0, r1, r0
	adds r1, r2, #0
	bl sub_08070FCC
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r7, #0
	beq _08008F62
	movs r0, #1
	ands r0, r5
	cmp r0, #0
	bne _08008F62
	ldr r2, _08008F9C @ =0x030024E0
	ldrh r1, [r2]
	ldr r0, _08008FA0 @ =0x00009FFF
	ands r0, r1
	strh r0, [r2]
_08008F62:
	ldr r0, _08008FA4 @ =0x0807F584
	movs r2, #0xe
	ldrsh r1, [r4, r2]
	movs r3, #0x10
	ldrsh r2, [r4, r3]
	ldr r3, [r0]
	adds r0, r6, #0
	bl call_via_r3
	cmp r7, #0
	beq _08008FA8
	ldrb r2, [r4]
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	bne _08008FAE
	lsls r0, r2, #0x1d
	lsrs r0, r0, #0x1e
	adds r0, #1
	movs r1, #3
	ands r0, r1
	lsls r0, r0, #1
	movs r1, #7
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r4]
	b _08008FAE
	.align 2, 0
_08008F9C: .4byte 0x030024E0
_08008FA0: .4byte 0x00009FFF
_08008FA4: .4byte 0x0807F584
_08008FA8:
	ldrh r0, [r4, #0x12]
	adds r0, #1
	strh r0, [r4, #0x12]
_08008FAE:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08008FB4
sub_08008FB4: @ 0x08008FB4
	push {r4, r5, r6, lr}
	ldr r3, _0800901C @ =0x03002540
	ldrb r2, [r3]
	lsls r1, r2, #0x1d
	lsrs r1, r1, #0x1e
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08009016
	movs r1, #0xa0
	lsls r1, r1, #0x13
	ldrh r0, [r3, #0xc]
	strh r0, [r1]
	ldr r6, _08009020 @ =0x04000040
	ldr r5, _08009024 @ =0x030024E0
	ldr r3, _08009028 @ =0x020338C0
	lsls r2, r2, #0x1c
	lsrs r1, r2, #0x1f
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #7
	adds r0, r0, r3
	ldrh r1, [r0]
	strh r1, [r5, #0x3c]
	ldrh r0, [r0]
	strh r0, [r6]
	ldr r4, _0800902C @ =0x04000042
	lsrs r1, r2, #0x1f
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #7
	adds r1, r3, #2
	adds r0, r0, r1
	ldrh r1, [r0]
	strh r1, [r5, #0x3e]
	ldrh r0, [r0]
	strh r0, [r4]
	ldr r1, _08009030 @ =0x040000B0
	lsrs r2, r2, #0x1f
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #7
	adds r3, #4
	adds r0, r0, r3
	str r0, [r1]
	str r6, [r1, #4]
	ldr r0, _08009034 @ =0xA6400001
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_08009016:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800901C: .4byte 0x03002540
_08009020: .4byte 0x04000040
_08009024: .4byte 0x030024E0
_08009028: .4byte 0x020338C0
_0800902C: .4byte 0x04000042
_08009030: .4byte 0x040000B0
_08009034: .4byte 0xA6400001

	thumb_func_start sub_08009038
sub_08009038: @ 0x08009038
	push {lr}
	ldr r1, _08009048 @ =0x03002540
	movs r0, #0
	movs r2, #0x14
	bl sub_08007EFC
	pop {r0}
	bx r0
	.align 2, 0
_08009048: .4byte 0x03002540

	thumb_func_start sub_0800904C
sub_0800904C: @ 0x0800904C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r4, [sp, #0x18]
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r7, r2, #0x18
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov r8, r3
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	mov ip, r4
	movs r0, #0x1f
	ands r0, r5
	cmp r0, #0
	beq _0800912C
	ldr r0, _08009098 @ =0x03001410
	ldrb r3, [r0]
	lsls r1, r3, #0x1e
	lsrs r1, r1, #0x1e
	movs r2, #1
	ands r2, r1
	adds r4, r0, #0
	cmp r2, #0
	bne _0800912C
	cmp r6, #0
	bne _0800909C
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r3
	movs r1, #1
	orrs r0, r1
	b _080090A0
	.align 2, 0
_08009098: .4byte 0x03001410
_0800909C:
	movs r0, #3
	orrs r0, r3
_080090A0:
	strb r0, [r4]
	movs r0, #0xf
	adds r1, r7, #0
	ands r1, r0
	lsls r1, r1, #7
	ldrh r2, [r4]
	ldr r0, _080090EC @ =0xFFFFF87F
	ands r0, r2
	orrs r0, r1
	strh r0, [r4]
	movs r0, #0xf
	mov r1, r8
	ands r1, r0
	lsls r1, r1, #3
	ldrb r2, [r4, #1]
	movs r0, #0x79
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #1]
	movs r0, #0x1f
	adds r1, r5, #0
	ands r1, r0
	lsls r1, r1, #2
	ldrb r2, [r4]
	movs r0, #0x7d
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4]
	mov r0, ip
	cmp r0, #0
	beq _080090F0
	movs r0, #0
	mov r1, ip
	strh r1, [r4, #2]
	b _080090F4
	.align 2, 0
_080090EC: .4byte 0xFFFFF87F
_080090F0:
	movs r0, #1
	strh r0, [r4, #2]
_080090F4:
	strh r0, [r4, #4]
	movs r3, #0
	ldr r0, _08009114 @ =0x030024E0
	ldr r7, _08009118 @ =0x0000FFBF
	adds r2, r0, #2
	movs r6, #1
	movs r4, #0x40
_08009102:
	adds r0, r5, #0
	asrs r0, r3
	ands r0, r6
	cmp r0, #0
	beq _0800911C
	ldrh r0, [r2]
	orrs r0, r4
	b _08009122
	.align 2, 0
_08009114: .4byte 0x030024E0
_08009118: .4byte 0x0000FFBF
_0800911C:
	ldrh r1, [r2]
	adds r0, r7, #0
	ands r0, r1
_08009122:
	strh r0, [r2]
	adds r2, #2
	adds r3, #1
	cmp r3, #3
	ble _08009102
_0800912C:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08009138
sub_08009138: @ 0x08009138
	push {lr}
	ldr r0, _08009150 @ =0x03001410
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08009154
	movs r0, #1
	b _08009156
	.align 2, 0
_08009150: .4byte 0x03001410
_08009154:
	movs r0, #0
_08009156:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0800915C
sub_0800915C: @ 0x0800915C
	push {lr}
	ldr r1, _0800916C @ =0x03001410
	movs r0, #0
	movs r2, #8
	bl sub_08007EFC
	pop {r0}
	bx r0
	.align 2, 0
_0800916C: .4byte 0x03001410

	thumb_func_start sub_08009170
sub_08009170: @ 0x08009170
	push {r4, r5, r6, r7, lr}
	ldr r4, _080091BC @ =0x03001410
	ldrb r1, [r4]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08009256
	movs r7, #0
	ldrh r1, [r4, #2]
	ldrh r0, [r4, #4]
	cmp r0, r1
	blo _08009190
	strh r1, [r4, #4]
	movs r7, #1
_08009190:
	ldrb r1, [r4]
	movs r0, #3
	ands r0, r1
	cmp r0, #1
	bne _080091C0
	ldrh r0, [r4]
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1c
	ldrh r1, [r4, #4]
	muls r0, r1, r0
	ldrh r1, [r4, #2]
	bl Div
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldrb r0, [r4, #1]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1c
	ldrh r1, [r4, #4]
	muls r0, r1, r0
	ldrh r1, [r4, #2]
	b _080091E4
	.align 2, 0
_080091BC: .4byte 0x03001410
_080091C0:
	ldrh r2, [r4]
	lsls r2, r2, #0x15
	lsrs r2, r2, #0x1c
	ldrh r1, [r4, #2]
	ldrh r0, [r4, #4]
	subs r0, r1, r0
	muls r0, r2, r0
	bl Div
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldrb r2, [r4, #1]
	lsls r2, r2, #0x19
	lsrs r2, r2, #0x1c
	ldrh r1, [r4, #2]
	ldrh r0, [r4, #4]
	subs r0, r1, r0
	muls r0, r2, r0
_080091E4:
	bl Div
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r6, _08009248 @ =0x03001410
	ldrb r1, [r6]
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x1b
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08009210
	ldr r2, _0800924C @ =0x030024E0
	movs r3, #0xf
	adds r1, r4, #0
	ands r1, r3
	lsls r1, r1, #4
	adds r0, r5, #0
	ands r0, r3
	orrs r1, r0
	adds r2, #0x48
	strb r1, [r2]
_08009210:
	ldrb r3, [r6]
	lsls r1, r3, #0x19
	lsrs r1, r1, #0x1b
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	beq _0800922E
	ldr r0, _0800924C @ =0x030024E0
	movs r2, #0xf
	ands r4, r2
	lsls r1, r4, #4
	ands r5, r2
	orrs r1, r5
	adds r0, #0x49
	strb r1, [r0]
_0800922E:
	cmp r7, #0
	beq _08009250
	lsls r0, r3, #0x1e
	lsrs r0, r0, #0x1e
	adds r0, #1
	movs r1, #3
	ands r0, r1
	movs r1, #4
	rsbs r1, r1, #0
	ands r1, r3
	orrs r1, r0
	strb r1, [r6]
	b _08009256
	.align 2, 0
_08009248: .4byte 0x03001410
_0800924C: .4byte 0x030024E0
_08009250:
	ldrh r0, [r6, #4]
	adds r0, #1
	strh r0, [r6, #4]
_08009256:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0800925C
sub_0800925C: @ 0x0800925C
	push {lr}
	ldr r1, _080092B8 @ =0x040000D4
	ldr r0, _080092BC @ =0x0807F5B4
	str r0, [r1]
	ldr r0, _080092C0 @ =0x03002560
	str r0, [r1, #4]
	ldr r0, _080092C4 @ =0x8400000E
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _080092C8 @ =IntrMain
	str r0, [r1]
	ldr r2, _080092CC @ =0x030025A0
	str r2, [r1, #4]
	ldr r0, _080092D0 @ =0x80000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _080092D4 @ =0x03007FFC
	str r2, [r0]
	ldr r1, _080092D8 @ =0x030027A0
	movs r0, #0
	strh r0, [r1]
	ldr r0, _080092DC @ =sub_0800933C
	movs r1, #1
	bl sub_080092F0
	ldr r0, _080092E0 @ =0x03006011
	movs r1, #0
	bl sub_080092F0
	ldr r0, _080092E4 @ =sub_08009430
	movs r1, #2
	bl sub_080092F0
	ldr r2, _080092E8 @ =0x04000200
	ldrh r0, [r2]
	movs r1, #4
	orrs r0, r1
	strh r0, [r2]
	ldr r2, _080092EC @ =0x04000004
	ldrh r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strh r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0
_080092B8: .4byte 0x040000D4
_080092BC: .4byte 0x0807F5B4
_080092C0: .4byte 0x03002560
_080092C4: .4byte 0x8400000E
_080092C8: .4byte IntrMain
_080092CC: .4byte 0x030025A0
_080092D0: .4byte 0x80000100
_080092D4: .4byte 0x03007FFC
_080092D8: .4byte 0x030027A0
_080092DC: .4byte sub_0800933C
_080092E0: .4byte 0x03006011
_080092E4: .4byte sub_08009430
_080092E8: .4byte 0x04000200
_080092EC: .4byte 0x04000004

	thumb_func_start sub_080092F0
sub_080092F0: @ 0x080092F0
	ldr r3, _08009304 @ =0x04000208
	movs r2, #0
	strh r2, [r3]
	ldr r2, _08009308 @ =0x03002560
	lsls r1, r1, #2
	adds r1, r1, r2
	str r0, [r1]
	movs r0, #1
	strh r0, [r3]
	bx lr
	.align 2, 0
_08009304: .4byte 0x04000208
_08009308: .4byte 0x03002560

	thumb_func_start sub_0800930C
sub_0800930C: @ 0x0800930C
	ldr r2, _08009324 @ =0x04000208
	movs r0, #0
	strh r0, [r2]
	ldr r0, _08009328 @ =0x03002560
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, _0800932C @ =sub_0800942C
	str r0, [r1]
	movs r0, #1
	strh r0, [r2]
	bx lr
	.align 2, 0
_08009324: .4byte 0x04000208
_08009328: .4byte 0x03002560
_0800932C: .4byte sub_0800942C

	thumb_func_start sub_08009330
sub_08009330: @ 0x08009330
	push {lr}
	bl VBlankIntrWait
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800933C
sub_0800933C: @ 0x0800933C
	push {r4, lr}
	ldr r1, _080093DC @ =0x02037EB0
	ldrb r0, [r1, #4]
	cmp r0, #0
	beq _08009356
	adds r0, r1, #0
	adds r0, #0x88
	ldr r0, [r0]
	subs r0, #2
	cmp r0, #1
	bhi _08009356
	bl sub_08001154
_08009356:
	bl sub_0806FCC4
	movs r0, #0
	bl sub_08009400
	cmp r0, #0
	beq _08009378
	ldr r1, _080093E0 @ =0x040000B0
	ldrh r2, [r1, #0xa]
	ldr r0, _080093E4 @ =0x0000C5FF
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r2, [r1, #0xa]
	ldr r0, _080093E8 @ =0x00007FFF
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
_08009378:
	movs r0, #3
	bl sub_08009400
	cmp r0, #0
	beq _08009396
	ldr r1, _080093EC @ =0x040000D4
	ldrh r2, [r1, #0xa]
	ldr r0, _080093E4 @ =0x0000C5FF
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r2, [r1, #0xa]
	ldr r0, _080093E8 @ =0x00007FFF
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
_08009396:
	bl sub_08008FB4
	ldr r4, _080093F0 @ =0x0300441C
	ldrh r0, [r4]
	cmp r0, #0
	beq _080093BE
	bl sub_08009EF4
	bl sub_08009794
	bl sub_0800B9AC
	bl sub_08009534
	bl sub_0800A0C4
	bl sub_08008044
	movs r0, #0
	strh r0, [r4]
_080093BE:
	ldr r0, _080093F4 @ =0x030027A0
	movs r2, #1
	strh r2, [r0]
	ldr r3, _080093F8 @ =0x04000208
	movs r0, #0
	strh r0, [r3]
	ldr r1, _080093FC @ =0x03007FF8
	ldrh r0, [r1]
	orrs r0, r2
	strh r0, [r1]
	strh r2, [r3]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080093DC: .4byte 0x02037EB0
_080093E0: .4byte 0x040000B0
_080093E4: .4byte 0x0000C5FF
_080093E8: .4byte 0x00007FFF
_080093EC: .4byte 0x040000D4
_080093F0: .4byte 0x0300441C
_080093F4: .4byte 0x030027A0
_080093F8: .4byte 0x04000208
_080093FC: .4byte 0x03007FF8

	thumb_func_start sub_08009400
sub_08009400: @ 0x08009400
	push {lr}
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _08009420 @ =0x040000B8
	adds r1, r1, r0
	ldr r0, [r1]
	movs r1, #0xc0
	lsls r1, r1, #0x16
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x16
	cmp r0, r1
	beq _08009424
	movs r0, #0
	b _08009426
	.align 2, 0
_08009420: .4byte 0x040000B8
_08009424:
	movs r0, #1
_08009426:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0800942C
sub_0800942C: @ 0x0800942C
	bx lr
	.align 2, 0

	thumb_func_start sub_08009430
sub_08009430: @ 0x08009430
	push {lr}
	bl sub_0806F5D0
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800943C
sub_0800943C: @ 0x0800943C
	push {lr}
	sub sp, #4
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r1, _08009458 @ =0x03001418
	ldr r2, _0800945C @ =0x01000082
	mov r0, sp
	bl CpuSet
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_08009458: .4byte 0x03001418
_0800945C: .4byte 0x01000082

	thumb_func_start sub_08009460
sub_08009460: @ 0x08009460
	push {r4, r5, r6, r7, lr}
	mov ip, r0
	lsls r1, r1, #0x18
	lsrs r7, r1, #0x18
	movs r5, #0
	movs r4, #0
	movs r1, #0
	ldr r0, _08009490 @ =0x03001418
	ldr r2, [r0]
	adds r6, r0, #0
	cmp r2, #0
	beq _08009484
_08009478:
	ldr r0, [r2, #4]
	cmp r0, ip
	beq _080094EE
	ldr r2, [r2, #0xc]
	cmp r2, #0
	bne _08009478
_08009484:
	movs r3, #0
	ldrb r0, [r6, #4]
	cmp r0, #0
	bne _08009494
	adds r5, r6, #4
	b _080094A8
	.align 2, 0
_08009490: .4byte 0x03001418
_08009494:
	adds r3, #1
	cmp r3, #0xf
	bgt _080094A8
	lsls r2, r3, #4
	adds r0, r2, r6
	ldrb r0, [r0, #4]
	cmp r0, #0
	bne _08009494
	adds r0, r6, #4
	adds r5, r2, r0
_080094A8:
	cmp r5, #0
	beq _080094EE
	ldr r2, [r6]
	cmp r2, #0
	beq _080094D0
	ldrb r0, [r2, #1]
	cmp r0, r7
	bls _080094BE
	ldr r4, [r2, #8]
	adds r1, r2, #0
	b _080094D0
_080094BE:
	adds r4, r2, #0
	ldr r1, [r4, #0xc]
	adds r2, r1, #0
	cmp r1, #0
	beq _080094D0
	ldrb r0, [r1, #1]
	cmp r0, r7
	bls _080094BE
	ldr r4, [r1, #8]
_080094D0:
	movs r0, #1
	strb r0, [r5]
	strb r7, [r5, #1]
	mov r0, ip
	str r0, [r5, #4]
	str r4, [r5, #8]
	str r1, [r5, #0xc]
	cmp r4, #0
	beq _080094E6
	str r5, [r4, #0xc]
	b _080094E8
_080094E6:
	str r5, [r6]
_080094E8:
	cmp r1, #0
	beq _080094EE
	str r5, [r1, #8]
_080094EE:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080094F4
sub_080094F4: @ 0x080094F4
	push {r4, lr}
	adds r2, r0, #0
	ldr r0, _08009518 @ =0x03001418
	ldr r1, [r0]
	cmp r1, #0
	beq _0800952C
	movs r3, #0
	adds r4, r0, #0
_08009504:
	ldr r0, [r1, #4]
	cmp r0, r2
	bne _08009526
	strb r3, [r1]
	ldr r2, [r1, #8]
	ldr r0, [r1, #0xc]
	cmp r2, #0
	beq _0800951C
	str r0, [r2, #0xc]
	b _0800951E
	.align 2, 0
_08009518: .4byte 0x03001418
_0800951C:
	str r0, [r4]
_0800951E:
	cmp r0, #0
	beq _0800952C
	str r2, [r0, #8]
	b _0800952C
_08009526:
	ldr r1, [r1, #0xc]
	cmp r1, #0
	bne _08009504
_0800952C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08009534
sub_08009534: @ 0x08009534
	push {r4, lr}
	ldr r0, _08009550 @ =0x03001418
	ldr r4, [r0]
	cmp r4, #0
	beq _0800954A
_0800953E:
	ldr r0, [r4, #4]
	bl call_via_r0
	ldr r4, [r4, #0xc]
	cmp r4, #0
	bne _0800953E
_0800954A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08009550: .4byte 0x03001418

	thumb_func_start sub_08009554
sub_08009554: @ 0x08009554
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r3, r0, #0
	lsls r1, r1, #0x10
	lsrs r2, r1, #0x10
	ldr r0, _080095DC @ =0x02037F70
	ldrb r1, [r0]
	adds r5, r0, #0
	cmp r1, #0x1f
	bhi _080095D2
	ldrb r1, [r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r1, r5, #4
	adds r0, r0, r1
	str r3, [r0, #4]
	lsls r2, r2, #4
	movs r4, #0xc2
	lsls r4, r4, #1
	adds r1, r5, r4
	adds r2, r2, r1
	str r2, [r0, #8]
	movs r1, #0
	strb r1, [r0]
	adds r4, r3, #0
	movs r3, #0
	ldr r0, [r4]
	cmp r0, #0
	beq _080095D2
	movs r0, #0
	mov ip, r0
	movs r0, #7
	rsbs r0, r0, #0
	mov r8, r0
	movs r7, #9
	rsbs r7, r7, #0
	movs r6, #0
_080095A2:
	cmp r3, #0
	beq _080095A8
	str r2, [r3, #0xc]
_080095A8:
	ldm r4!, {r0}
	str r0, [r2, #4]
	adds r3, r2, #0
	strh r6, [r3, #8]
	ldrb r1, [r3, #1]
	mov r0, r8
	ands r0, r1
	ands r0, r7
	strb r0, [r3, #1]
	mov r0, ip
	strb r0, [r3, #2]
	adds r2, #0x10
	ldr r0, [r4]
	cmp r0, #0
	bne _080095A2
	cmp r3, #0
	beq _080095D2
	str r0, [r3, #0xc]
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
_080095D2:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080095DC: .4byte 0x02037F70

	thumb_func_start sub_080095E0
sub_080095E0: @ 0x080095E0
	push {r4, lr}
	adds r4, r0, #0
	movs r2, #0
	ldr r0, _08009608 @ =0x02037F70
	adds r1, r0, #0
	ldrb r0, [r1]
	cmp r2, r0
	bge _08009636
	adds r3, r1, #0
	adds r3, #8
_080095F4:
	ldr r0, [r3]
	cmp r0, r4
	beq _0800960C
	adds r3, #0xc
	adds r2, #1
	ldrb r0, [r1]
	cmp r2, r0
	blt _080095F4
	b _08009636
	.align 2, 0
_08009608: .4byte 0x02037F70
_0800960C:
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	cmp r2, r0
	bge _08009636
	adds r3, r1, #0
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r1, r0, r3
_08009620:
	ldrb r0, [r1, #0x10]
	strb r0, [r1, #4]
	ldr r0, [r1, #0x14]
	str r0, [r1, #8]
	ldr r0, [r1, #0x18]
	str r0, [r1, #0xc]
	adds r1, #0xc
	adds r2, #1
	ldrb r0, [r3]
	cmp r2, r0
	blt _08009620
_08009636:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0800963C
sub_0800963C: @ 0x0800963C
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r2, #0
	ldr r1, _08009664 @ =0x02037F70
	ldrb r0, [r1]
	cmp r2, r0
	bge _08009672
	adds r3, r1, #0
	adds r3, #8
	adds r4, r0, #0
_08009650:
	ldr r0, [r3]
	cmp r0, r5
	bne _08009668
	movs r0, #4
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne _08009672
	movs r0, #0
	b _08009674
	.align 2, 0
_08009664: .4byte 0x02037F70
_08009668:
	adds r1, #0xc
	adds r3, #0xc
	adds r2, #1
	cmp r2, r4
	blt _08009650
_08009672:
	movs r0, #1
_08009674:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0800967C
sub_0800967C: @ 0x0800967C
	push {r4, r5, r6, r7, lr}
	ldr r4, _080096B4 @ =0x02037F70
	ldr r2, _080096B8 @ =0x00002184
	movs r0, #0
	adds r1, r4, #0
	bl sub_08007EFC
	movs r3, #0
	ldr r5, _080096BC @ =0x000001FF
	adds r6, r5, #0
	ldr r7, _080096C0 @ =0xFFFFFE00
	movs r0, #0xc2
	lsls r0, r0, #1
	adds r4, r4, r0
_08009698:
	adds r0, r3, #0
	ands r0, r6
	ldrh r2, [r4]
	adds r1, r7, #0
	ands r1, r2
	orrs r1, r0
	strh r1, [r4]
	adds r4, #0x10
	adds r3, #1
	cmp r3, r5
	ble _08009698
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080096B4: .4byte 0x02037F70
_080096B8: .4byte 0x00002184
_080096BC: .4byte 0x000001FF
_080096C0: .4byte 0xFFFFFE00

	thumb_func_start sub_080096C4
sub_080096C4: @ 0x080096C4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r1, _08009750 @ =0x02037F70
	movs r0, #0
	strb r0, [r1, #1]
	movs r3, #0
	mov r8, r1
	ldrb r0, [r1]
	cmp r3, r0
	bge _0800977E
	movs r1, #4
	add r1, r8
	mov sb, r1
_080096E4:
	lsls r0, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #2
	mov r7, sb
	adds r5, r0, r7
	ldr r2, [r5, #8]
	movs r0, #0xff
	strb r0, [r5]
	adds r3, #1
	mov ip, r3
	cmp r2, #0
	beq _08009774
	ldr r6, _08009754 @ =0x0000FFFF
	movs r0, #7
	rsbs r0, r0, #0
	mov sl, r0
_08009704:
	ldrb r0, [r2, #2]
	lsls r0, r0, #2
	ldr r1, [r2, #4]
	adds r4, r1, r0
	ldrh r0, [r4]
	cmp r0, r6
	beq _0800976E
	ldrh r3, [r2, #8]
	cmp r3, #0
	bne _08009720
	ldrb r0, [r2, #1]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2, #1]
_08009720:
	adds r0, r3, #1
	movs r3, #0
	movs r1, #0
	strh r0, [r2, #8]
	ands r0, r6
	ldrh r7, [r4]
	cmp r0, r7
	blo _0800976C
	strh r1, [r2, #8]
	ldrh r1, [r4, #4]
	cmp r1, r6
	beq _08009758
	cmp r1, #0
	bne _08009766
	ldrb r1, [r2, #1]
	mov r0, sl
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r2, #1]
	movs r0, #1
	strb r0, [r5]
	b _0800976E
	.align 2, 0
_08009750: .4byte 0x02037F70
_08009754: .4byte 0x0000FFFF
_08009758:
	ldrb r0, [r2, #1]
	mov r1, sl
	ands r1, r0
	movs r0, #2
	orrs r1, r0
	strb r1, [r2, #1]
	b _0800976E
_08009766:
	ldrb r0, [r2, #2]
	adds r0, #1
	strb r0, [r2, #2]
_0800976C:
	strb r3, [r5]
_0800976E:
	ldr r2, [r2, #0xc]
	cmp r2, #0
	bne _08009704
_08009774:
	mov r3, ip
	mov r0, r8
	ldrb r0, [r0]
	cmp r3, r0
	blt _080096E4
_0800977E:
	movs r0, #1
	mov r1, r8
	strb r0, [r1, #1]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08009794
sub_08009794: @ 0x08009794
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r1, _08009808 @ =0x02037F70
	ldrb r0, [r1, #1]
	cmp r0, #0
	beq _0800986A
	movs r6, #0
	ldrb r0, [r1]
	cmp r6, r0
	bge _0800986A
	mov r8, r1
	movs r5, #0
	mov r7, r8
	adds r7, #0xc
	movs r1, #1
	rsbs r1, r1, #0
	mov sb, r1
_080097BA:
	ldr r2, [r7]
	cmp r2, #0
	beq _08009820
	movs r0, #9
	rsbs r0, r0, #0
	mov ip, r0
	movs r4, #7
	rsbs r4, r4, #0
_080097CA:
	ldrb r0, [r2, #2]
	lsls r0, r0, #2
	ldr r1, [r2, #4]
	adds r3, r1, r0
	ldrb r1, [r2, #1]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080097F4
	ldrh r0, [r2]
	lsls r0, r0, #0x17
	lsrs r0, r0, #0x16
	movs r1, #0xa0
	lsls r1, r1, #0x13
	adds r0, r0, r1
	ldrh r1, [r3, #2]
	strh r1, [r0]
	ldrb r1, [r2, #1]
	mov r0, ip
	ands r0, r1
	strb r0, [r2, #1]
_080097F4:
	ldrb r0, [r2, #1]
	movs r1, #6
	ands r1, r0
	adds r3, r0, #0
	cmp r1, #2
	bne _0800980C
	ldrb r0, [r2, #2]
	adds r0, #1
	b _08009812
	.align 2, 0
_08009808: .4byte 0x02037F70
_0800980C:
	cmp r1, #4
	bne _08009814
	movs r0, #0
_08009812:
	strb r0, [r2, #2]
_08009814:
	adds r0, r4, #0
	ands r0, r3
	strb r0, [r2, #1]
	ldr r2, [r2, #0xc]
	cmp r2, #0
	bne _080097CA
_08009820:
	mov r4, r8
	adds r0, r5, r4
	ldrb r0, [r0, #4]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, sb
	bne _0800985C
	adds r0, r4, #0
	adds r0, #0x10
	adds r0, r5, r0
	adds r1, r4, #4
	adds r1, r5, r1
	mvns r3, r6
	ldrb r2, [r4]
	adds r3, r3, r2
	lsls r2, r3, #1
	adds r2, r2, r3
	ldr r3, _08009878 @ =0x001FFFFF
	ands r2, r3
	movs r3, #0x80
	lsls r3, r3, #0x13
	orrs r2, r3
	bl CpuSet
	ldrb r0, [r4]
	subs r0, #1
	strb r0, [r4]
	subs r5, #0xc
	subs r7, #0xc
	subs r6, #1
_0800985C:
	adds r5, #0xc
	adds r7, #0xc
	adds r6, #1
	mov r0, r8
	ldrb r0, [r0]
	cmp r6, r0
	blt _080097BA
_0800986A:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08009878: .4byte 0x001FFFFF

	thumb_func_start sub_0800987C
sub_0800987C: @ 0x0800987C
	push {lr}
	bl sub_08009F20
	bl sub_08009DC4
	bl sub_08009EAC
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08009890
sub_08009890: @ 0x08009890
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r2, #0
	bl sub_08009CAC
	cmp r0, #0
	beq _080098A8
	adds r0, #4
	b _080098AA
_080098A8:
	movs r0, #0
_080098AA:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080098B0
sub_080098B0: @ 0x080098B0
	push {lr}
	ldr r0, [r0, #0x10]
	bl sub_08009D40
	pop {r0}
	bx r0

	thumb_func_start sub_080098BC
sub_080098BC: @ 0x080098BC
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r2, #1
	ands r1, r2
	ldrb r3, [r0]
	movs r2, #2
	rsbs r2, r2, #0
	ands r2, r3
	orrs r2, r1
	strb r2, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_080098D4
sub_080098D4: @ 0x080098D4
	strh r1, [r0, #6]
	strh r2, [r0, #8]
	bx lr
	.align 2, 0

	thumb_func_start sub_080098DC
sub_080098DC: @ 0x080098DC
	push {lr}
	adds r3, r0, #0
	ldr r0, _080098EC @ =0x0600FFFF
	cmp r1, r0
	bhi _080098F0
	movs r2, #0xfa
	lsls r2, r2, #0x18
	b _080098F2
	.align 2, 0
_080098EC: .4byte 0x0600FFFF
_080098F0:
	ldr r2, _0800990C @ =0xF9FF0000
_080098F2:
	adds r0, r1, r2
	lsrs r1, r0, #5
	ldr r2, _08009910 @ =0x000003FF
	adds r0, r2, #0
	ands r1, r0
	lsls r2, r1, #5
	ldrh r1, [r3]
	ldr r0, _08009914 @ =0xFFFF801F
	ands r0, r1
	orrs r0, r2
	strh r0, [r3]
	pop {r0}
	bx r0
	.align 2, 0
_0800990C: .4byte 0xF9FF0000
_08009910: .4byte 0x000003FF
_08009914: .4byte 0xFFFF801F

	thumb_func_start sub_08009918
sub_08009918: @ 0x08009918
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r2, #0xf
	ands r1, r2
	lsls r1, r1, #6
	ldrh r3, [r0, #2]
	ldr r2, _08009930 @ =0xFFFFFC3F
	ands r2, r3
	orrs r2, r1
	strh r2, [r0, #2]
	bx lr
	.align 2, 0
_08009930: .4byte 0xFFFFFC3F

	thumb_func_start sub_08009934
sub_08009934: @ 0x08009934
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r2, #0xf
	ands r1, r2
	lsls r1, r1, #2
	ldrb r3, [r0, #2]
	movs r2, #0x3d
	rsbs r2, r2, #0
	ands r2, r3
	orrs r2, r1
	strb r2, [r0, #2]
	bx lr

	thumb_func_start sub_0800994C
sub_0800994C: @ 0x0800994C
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r2, #3
	ands r1, r2
	lsls r1, r1, #1
	ldrb r3, [r0]
	movs r2, #7
	rsbs r2, r2, #0
	ands r2, r3
	orrs r2, r1
	strb r2, [r0]
	bx lr

	thumb_func_start sub_08009964
sub_08009964: @ 0x08009964
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r2, #1
	ands r1, r2
	lsls r1, r1, #4
	ldrb r3, [r0]
	movs r2, #0x11
	rsbs r2, r2, #0
	ands r2, r3
	orrs r2, r1
	strb r2, [r0]
	bx lr

	thumb_func_start sub_0800997C
sub_0800997C: @ 0x0800997C
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x11
	ldrb r3, [r0, #1]
	movs r2, #0x7f
	ands r2, r3
	orrs r2, r1
	strb r2, [r0, #1]
	bx lr

	thumb_func_start sub_0800998C
sub_0800998C: @ 0x0800998C
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r2, #1
	ands r1, r2
	ldrb r3, [r0, #2]
	movs r2, #2
	rsbs r2, r2, #0
	ands r2, r3
	orrs r2, r1
	strb r2, [r0, #2]
	bx lr
	.align 2, 0

	thumb_func_start sub_080099A4
sub_080099A4: @ 0x080099A4
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r2, #1
	ands r1, r2
	lsls r1, r1, #1
	ldrb r3, [r0, #2]
	movs r2, #3
	rsbs r2, r2, #0
	ands r2, r3
	orrs r2, r1
	strb r2, [r0, #2]
	bx lr

	thumb_func_start sub_080099BC
sub_080099BC: @ 0x080099BC
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r2, #1
	ands r1, r2
	lsls r1, r1, #3
	ldrb r3, [r0]
	movs r2, #9
	rsbs r2, r2, #0
	ands r2, r3
	orrs r2, r1
	strb r2, [r0]
	bx lr

	thumb_func_start sub_080099D4
sub_080099D4: @ 0x080099D4
	str r1, [r0, #0x14]
	bx lr

	thumb_func_start sub_080099D8
sub_080099D8: @ 0x080099D8
	strh r1, [r0, #0xa]
	strh r2, [r0, #0xc]
	bx lr
	.align 2, 0

	thumb_func_start sub_080099E0
sub_080099E0: @ 0x080099E0
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r2, #1
	bl sub_08009CAC
	cmp r0, #0
	beq _080099F8
	adds r0, #4
	b _080099FA
_080099F8:
	movs r0, #0
_080099FA:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08009A00
sub_08009A00: @ 0x08009A00
	push {lr}
	ldr r0, [r0, #0x20]
	bl sub_08009D40
	pop {r0}
	bx r0

	thumb_func_start sub_08009A0C
sub_08009A0C: @ 0x08009A0C
	push {r4, r5, r6, lr}
	adds r4, r1, #0
	adds r5, r2, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	ldr r6, [r0, #0x20]
	adds r0, r6, #0
	bl sub_08009DA4
	lsls r4, r4, #8
	orrs r4, r5
	strh r4, [r6, #2]
	adds r0, r6, #0
	bl sub_08009D50
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08009A34
sub_08009A34: @ 0x08009A34
	push {lr}
	adds r3, r0, #0
	lsls r1, r1, #0x18
	lsrs r2, r1, #0x18
	ldr r0, [r3]
	ldr r1, _08009A6C @ =0x00100001
	ands r0, r1
	subs r1, #1
	cmp r0, r1
	bne _08009A54
	cmp r2, #1
	bne _08009A54
	ldrb r0, [r3, #2]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r3, #2]
_08009A54:
	movs r0, #1
	adds r1, r2, #0
	ands r1, r0
	ldrb r2, [r3]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	pop {r0}
	bx r0
	.align 2, 0
_08009A6C: .4byte 0x00100001

	thumb_func_start sub_08009A70
sub_08009A70: @ 0x08009A70
	strh r1, [r0, #6]
	strh r2, [r0, #8]
	bx lr
	.align 2, 0

	thumb_func_start sub_08009A78
sub_08009A78: @ 0x08009A78
	push {lr}
	adds r3, r0, #0
	ldr r0, _08009A88 @ =0x0600FFFF
	cmp r1, r0
	bhi _08009A8C
	movs r2, #0xfa
	lsls r2, r2, #0x18
	b _08009A8E
	.align 2, 0
_08009A88: .4byte 0x0600FFFF
_08009A8C:
	ldr r2, _08009AA8 @ =0xF9FF0000
_08009A8E:
	adds r0, r1, r2
	lsrs r1, r0, #5
	ldr r2, _08009AAC @ =0x000003FF
	adds r0, r2, #0
	ands r1, r0
	lsls r2, r1, #5
	ldrh r1, [r3]
	ldr r0, _08009AB0 @ =0xFFFF801F
	ands r0, r1
	orrs r0, r2
	strh r0, [r3]
	pop {r0}
	bx r0
	.align 2, 0
_08009AA8: .4byte 0xF9FF0000
_08009AAC: .4byte 0x000003FF
_08009AB0: .4byte 0xFFFF801F

	thumb_func_start sub_08009AB4
sub_08009AB4: @ 0x08009AB4
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r2, #0xf
	ands r1, r2
	ldrb r3, [r0, #2]
	movs r2, #0x10
	rsbs r2, r2, #0
	ands r2, r3
	orrs r2, r1
	strb r2, [r0, #2]
	bx lr
	.align 2, 0

	thumb_func_start sub_08009ACC
sub_08009ACC: @ 0x08009ACC
	push {r4, lr}
	adds r4, r0, #0
	str r1, [r4, #0x18]
	str r2, [r4, #0x14]
	movs r1, #0
	strb r3, [r4, #0x10]
	movs r0, #0
	strh r1, [r4, #0x12]
	strb r0, [r4, #0x11]
	strb r0, [r4, #0xf]
	ldrb r1, [r4, #1]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #1]
	ldrb r1, [r4, #2]
	lsls r0, r1, #0x1b
	cmp r0, #0
	bge _08009AF6
	movs r0, #0x20
	orrs r0, r1
	strb r0, [r4, #2]
_08009AF6:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08009AFC
sub_08009AFC: @ 0x08009AFC
	push {lr}
	adds r3, r0, #0
	movs r2, #0
	strb r1, [r3, #0x10]
	movs r0, #0
	strh r2, [r3, #0x12]
	strb r0, [r3, #0x11]
	strb r0, [r3, #0xf]
	ldrb r1, [r3, #1]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r3, #1]
	ldrb r1, [r3, #2]
	lsls r0, r1, #0x1b
	cmp r0, #0
	bge _08009B22
	movs r0, #0x20
	orrs r0, r1
	strb r0, [r3, #2]
_08009B22:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08009B28
sub_08009B28: @ 0x08009B28
	push {lr}
	adds r2, r0, #0
	strb r1, [r2, #0x10]
	ldrb r1, [r2, #2]
	lsls r0, r1, #0x1b
	cmp r0, #0
	bge _08009B3C
	movs r0, #0x20
	orrs r0, r1
	strb r0, [r2, #2]
_08009B3C:
	pop {r0}
	bx r0

	thumb_func_start sub_08009B40
sub_08009B40: @ 0x08009B40
	push {lr}
	adds r3, r0, #0
	movs r2, #0
	movs r0, #0
	strh r0, [r3, #0x12]
	strb r2, [r3, #0x11]
	strb r1, [r3, #0xe]
	strb r2, [r3, #0xf]
	ldrb r1, [r3, #1]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r3, #1]
	ldrb r1, [r3, #2]
	lsls r0, r1, #0x1b
	cmp r0, #0
	bge _08009B66
	movs r0, #0x20
	orrs r0, r1
	strb r0, [r3, #2]
_08009B66:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08009B6C
sub_08009B6C: @ 0x08009B6C
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r2, #3
	ands r1, r2
	lsls r1, r1, #1
	ldrb r3, [r0]
	movs r2, #7
	rsbs r2, r2, #0
	ands r2, r3
	orrs r2, r1
	strb r2, [r0]
	bx lr

	thumb_func_start sub_08009B84
sub_08009B84: @ 0x08009B84
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r2, #1
	ands r1, r2
	lsls r1, r1, #3
	ldrb r3, [r0]
	movs r2, #9
	rsbs r2, r2, #0
	ands r2, r3
	orrs r2, r1
	strb r2, [r0]
	bx lr

	thumb_func_start sub_08009B9C
sub_08009B9C: @ 0x08009B9C
	str r1, [r0, #0x24]
	bx lr

	thumb_func_start sub_08009BA0
sub_08009BA0: @ 0x08009BA0
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x18]
	ldr r2, [r4, #0x14]
	ldrb r3, [r4, #0x10]
	bl sub_08009ACC
	ldrb r1, [r4, #0xe]
	adds r0, r4, #0
	bl sub_08009B40
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08009BBC
sub_08009BBC: @ 0x08009BBC
	push {r4, lr}
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	ldrb r3, [r0, #2]
	movs r4, #0x10
	orrs r3, r4
	movs r4, #0x20
	orrs r3, r4
	movs r4, #1
	ands r2, r4
	lsls r2, r2, #6
	movs r4, #0x41
	rsbs r4, r4, #0
	ands r3, r4
	orrs r3, r2
	strb r3, [r0, #2]
	str r1, [r0, #0x1c]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08009BE4
sub_08009BE4: @ 0x08009BE4
	push {r4, r5, lr}
	adds r3, r0, #0
	adds r5, r1, #0
	lsls r2, r2, #0x18
	lsrs r4, r2, #0x18
	ldr r0, [r3, #0x1c]
	cmp r0, r5
	beq _08009C0C
	ldrb r0, [r3, #2]
	movs r1, #0x20
	orrs r0, r1
	movs r2, #1
	adds r1, r4, #0
	ands r1, r2
	lsls r1, r1, #6
	movs r2, #0x41
	rsbs r2, r2, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #2]
_08009C0C:
	str r5, [r3, #0x1c]
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08009C14
sub_08009C14: @ 0x08009C14
	strh r1, [r0, #0xa]
	strh r2, [r0, #0xc]
	bx lr
	.align 2, 0

	thumb_func_start sub_08009C1C
sub_08009C1C: @ 0x08009C1C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5]
	ldrb r1, [r5, #1]
	bl sub_080099E0
	adds r4, r0, #0
	cmp r4, #0
	bne _08009C32
	movs r0, #0
	b _08009C98
_08009C32:
	ldrb r1, [r5, #6]
	movs r0, #1
	ands r1, r0
	ldrb r2, [r4]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4]
	ldrh r0, [r5, #2]
	strh r0, [r4, #6]
	ldrh r0, [r5, #4]
	strh r0, [r4, #8]
	ldr r1, [r5, #8]
	ldr r0, _08009C5C @ =0x0600FFFF
	cmp r1, r0
	bhi _08009C60
	movs r2, #0xfa
	lsls r2, r2, #0x18
	b _08009C62
	.align 2, 0
_08009C5C: .4byte 0x0600FFFF
_08009C60:
	ldr r2, _08009CA0 @ =0xF9FF0000
_08009C62:
	adds r0, r1, r2
	lsrs r2, r0, #5
	ldr r1, _08009CA4 @ =0x000003FF
	adds r0, r1, #0
	ands r2, r0
	lsls r2, r2, #5
	ldrh r1, [r4]
	ldr r0, _08009CA8 @ =0xFFFF801F
	ands r0, r1
	orrs r0, r2
	strh r0, [r4]
	ldrb r1, [r5, #7]
	movs r0, #0xf
	ands r1, r0
	ldrb r2, [r4, #2]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #2]
	ldr r1, [r5, #0x10]
	ldr r2, [r5, #0xc]
	ldrb r3, [r5, #0x14]
	adds r0, r4, #0
	bl sub_08009ACC
	adds r0, r4, #0
_08009C98:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08009CA0: .4byte 0xF9FF0000
_08009CA4: .4byte 0x000003FF
_08009CA8: .4byte 0xFFFF801F

	thumb_func_start sub_08009CAC
sub_08009CAC: @ 0x08009CAC
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r7, r2, #0x18
	ldr r5, _08009D1C @ =0x030029C0
	ldr r3, _08009D20 @ =0x00001A04
	adds r2, r5, r3
	ldrh r2, [r2]
	movs r3, #0
	lsrs r6, r0, #0x10
	orrs r6, r1
_08009CC6:
	adds r1, r2, r3
	adds r0, r1, #0
	cmp r1, #0
	bge _08009CD0
	adds r0, #0x7f
_08009CD0:
	asrs r2, r0, #7
	lsls r0, r2, #7
	subs r2, r1, r0
	movs r0, #0x34
	adds r1, r2, #0
	muls r1, r0, r1
	adds r0, r5, r1
	ldrb r0, [r0, #4]
	cmp r0, #0
	bne _08009D24
	adds r0, r1, #4
	adds r4, r5, r0
	adds r1, r2, #1
	adds r0, r1, #0
	cmp r1, #0
	bge _08009CF4
	adds r0, r2, #0
	adds r0, #0x80
_08009CF4:
	asrs r0, r0, #7
	lsls r0, r0, #7
	subs r0, r1, r0
	ldr r2, _08009D20 @ =0x00001A04
	adds r1, r5, r2
	strh r0, [r1]
	movs r0, #0
	adds r1, r4, #0
	movs r2, #0x34
	bl sub_08007EFC
	movs r0, #1
	strb r0, [r4]
	strb r7, [r4, #1]
	strh r6, [r4, #2]
	cmp r7, #0
	bne _08009D2E
	str r4, [r4, #0x14]
	b _08009D30
	.align 2, 0
_08009D1C: .4byte 0x030029C0
_08009D20: .4byte 0x00001A04
_08009D24:
	adds r3, #1
	cmp r3, #0x7f
	ble _08009CC6
	movs r0, #0
	b _08009D38
_08009D2E:
	str r4, [r4, #0x24]
_08009D30:
	adds r0, r4, #0
	bl sub_08009D50
	adds r0, r4, #0
_08009D38:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08009D40
sub_08009D40: @ 0x08009D40
	push {lr}
	movs r1, #0
	strb r1, [r0]
	bl sub_08009DA4
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08009D50
sub_08009D50: @ 0x08009D50
	push {r4, r5, lr}
	ldr r4, _08009D70 @ =0x030029C0
	adds r3, r0, #0
	ldr r1, [r4]
	movs r2, #0
	movs r0, #0
	cmp r1, #0
	beq _08009D88
	ldrh r0, [r1, #2]
	ldrh r2, [r3, #2]
	cmp r0, r2
	blo _08009D74
	ldr r0, [r1, #0x2c]
	adds r2, r1, #0
	b _08009D88
	.align 2, 0
_08009D70: .4byte 0x030029C0
_08009D74:
	adds r0, r1, #0
	ldr r2, [r0, #0x30]
	adds r1, r2, #0
	cmp r2, #0
	beq _08009D88
	ldrh r0, [r2, #2]
	ldrh r5, [r3, #2]
	cmp r0, r5
	blo _08009D74
	ldr r0, [r2, #0x2c]
_08009D88:
	str r0, [r3, #0x2c]
	str r2, [r3, #0x30]
	cmp r0, #0
	beq _08009D94
	str r3, [r0, #0x30]
	b _08009D96
_08009D94:
	str r3, [r4]
_08009D96:
	cmp r2, #0
	beq _08009D9C
	str r3, [r2, #0x2c]
_08009D9C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08009DA4
sub_08009DA4: @ 0x08009DA4
	push {lr}
	ldr r2, _08009DB4 @ =0x030029C0
	ldr r1, [r0, #0x2c]
	ldr r0, [r0, #0x30]
	cmp r1, #0
	beq _08009DB8
	str r0, [r1, #0x30]
	b _08009DBA
	.align 2, 0
_08009DB4: .4byte 0x030029C0
_08009DB8:
	str r0, [r2]
_08009DBA:
	cmp r0, #0
	beq _08009DC0
	str r1, [r0, #0x2c]
_08009DC0:
	pop {r0}
	bx r0

	thumb_func_start sub_08009DC4
sub_08009DC4: @ 0x08009DC4
	push {lr}
	ldr r1, _08009DD4 @ =0x030029C0
	ldr r2, _08009DD8 @ =0x00001A08
	movs r0, #0
	bl sub_08007EFC
	pop {r0}
	bx r0
	.align 2, 0
_08009DD4: .4byte 0x030029C0
_08009DD8: .4byte 0x00001A08

	thumb_func_start sub_08009DDC
sub_08009DDC: @ 0x08009DDC
	push {r4, r5, r6, r7, lr}
	ldr r5, _08009E34 @ =0x030027B0
	movs r4, #0
	movs r7, #0
	movs r6, #0x80
	lsls r6, r6, #1
_08009DE8:
	ldrb r0, [r5]
	adds r1, r0, r4
	adds r0, r1, #0
	cmp r1, #0
	bge _08009DF4
	adds r0, #0x1f
_08009DF4:
	asrs r2, r0, #5
	lsls r0, r2, #5
	subs r2, r1, r0
	lsls r3, r2, #4
	adds r0, r5, r3
	ldrb r0, [r0, #0x11]
	cmp r0, #0
	bne _08009E38
	adds r1, r2, #1
	adds r0, r1, #0
	cmp r1, #0
	bge _08009E10
	adds r0, r2, #0
	adds r0, #0x20
_08009E10:
	asrs r0, r0, #5
	lsls r0, r0, #5
	subs r0, r1, r0
	strb r0, [r5]
	adds r0, r3, #0
	adds r0, #0xc
	adds r1, r5, r0
	movs r0, #1
	strb r0, [r1, #5]
	strh r6, [r1, #2]
	strh r6, [r1]
	strb r7, [r1, #4]
	ldr r0, [r5, #8]
	str r0, [r1, #8]
	cmp r0, #0
	beq _08009E42
	str r1, [r0, #0xc]
	b _08009E44
	.align 2, 0
_08009E34: .4byte 0x030027B0
_08009E38:
	adds r4, #1
	cmp r4, #0x1f
	ble _08009DE8
	movs r0, #0
	b _08009E4C
_08009E42:
	str r1, [r5, #4]
_08009E44:
	movs r0, #0
	str r0, [r1, #0xc]
	str r1, [r5, #8]
	adds r0, r1, #0
_08009E4C:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08009E54
sub_08009E54: @ 0x08009E54
	push {lr}
	adds r1, r0, #0
	cmp r1, #0
	beq _08009E80
	ldr r3, _08009E70 @ =0x030027B0
	movs r0, #0
	strb r0, [r1, #5]
	ldr r2, [r1, #8]
	ldr r0, [r1, #0xc]
	cmp r2, #0
	beq _08009E74
	str r0, [r2, #0xc]
	b _08009E76
	.align 2, 0
_08009E70: .4byte 0x030027B0
_08009E74:
	str r0, [r3, #4]
_08009E76:
	cmp r0, #0
	beq _08009E7E
	str r2, [r0, #8]
	b _08009E80
_08009E7E:
	str r2, [r3, #8]
_08009E80:
	pop {r0}
	bx r0

	thumb_func_start sub_08009E84
sub_08009E84: @ 0x08009E84
	push {lr}
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	cmp r0, #0
	beq _08009E96
	strh r1, [r0]
	strh r2, [r0, #2]
_08009E96:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08009E9C
sub_08009E9C: @ 0x08009E9C
	push {lr}
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r0, #0
	beq _08009EA8
	strb r1, [r0, #4]
_08009EA8:
	pop {r0}
	bx r0

	thumb_func_start sub_08009EAC
sub_08009EAC: @ 0x08009EAC
	push {lr}
	ldr r1, _08009EC0 @ =0x030027B0
	movs r2, #0x83
	lsls r2, r2, #2
	movs r0, #0
	bl sub_08007EFC
	pop {r0}
	bx r0
	.align 2, 0
_08009EC0: .4byte 0x030027B0

	thumb_func_start sub_08009EC4
sub_08009EC4: @ 0x08009EC4
	push {lr}
	bl sub_08009F20
	ldr r0, _08009EE8 @ =0x0807F5EC
	ldr r0, [r0]
	bl call_via_r0
	ldr r0, _08009EEC @ =0x0807F5F0
	ldr r0, [r0]
	bl call_via_r0
	ldr r1, _08009EF0 @ =0x02033784
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_08009EE8: .4byte 0x0807F5EC
_08009EEC: .4byte 0x0807F5F0
_08009EF0: .4byte 0x02033784

	thumb_func_start sub_08009EF4
sub_08009EF4: @ 0x08009EF4
	push {lr}
	ldr r0, _08009F18 @ =0x02033784
	ldrb r0, [r0]
	adds r0, #1
	movs r1, #1
	ands r0, r1
	lsls r0, r0, #0xa
	ldr r1, _08009F1C @ =0x020376B0
	adds r0, r0, r1
	movs r1, #0xe0
	lsls r1, r1, #0x13
	movs r2, #0x80
	lsls r2, r2, #1
	bl CpuFastSet
	pop {r0}
	bx r0
	.align 2, 0
_08009F18: .4byte 0x02033784
_08009F1C: .4byte 0x020376B0

	thumb_func_start sub_08009F20
sub_08009F20: @ 0x08009F20
	push {lr}
	ldr r0, _08009F4C @ =0x02033784
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	lsls r0, r0, #0xa
	ldr r1, _08009F50 @ =0x020376B0
	adds r0, r0, r1
	movs r3, #0x80
	lsls r3, r3, #2
	movs r2, #0
	movs r1, #0x7f
_08009F38:
	str r3, [r0]
	strh r2, [r0, #4]
	strh r2, [r0, #6]
	subs r1, #1
	adds r0, #8
	cmp r1, #0
	bge _08009F38
	pop {r0}
	bx r0
	.align 2, 0
_08009F4C: .4byte 0x02033784
_08009F50: .4byte 0x020376B0

	thumb_func_start sub_08009F54
sub_08009F54: @ 0x08009F54
	push {lr}
	ldr r1, _08009F64 @ =0x020329B0
	ldr r2, _08009F68 @ =0x00000C04
	movs r0, #0
	bl sub_08007EFC
	pop {r0}
	bx r0
	.align 2, 0
_08009F64: .4byte 0x020329B0
_08009F68: .4byte 0x00000C04

	thumb_func_start sub_08009F6C
sub_08009F6C: @ 0x08009F6C
	push {r4, lr}
	adds r2, r0, #0
	ldr r3, _08009FA8 @ =0x020329B0
	movs r0, #1
	ldrsb r0, [r3, r0]
	cmp r0, #0
	blt _08009FA0
	ldrb r0, [r3, #1]
	lsls r0, r0, #4
	movs r4, #0x81
	lsls r4, r4, #2
	adds r1, r3, r4
	adds r0, r0, r1
	ldrb r1, [r2]
	strb r1, [r0]
	ldr r1, [r2, #4]
	str r1, [r0, #4]
	ldr r1, [r2, #8]
	str r1, [r0, #8]
	ldrh r1, [r2, #0xc]
	strh r1, [r0, #0xc]
	ldrh r1, [r2, #0xe]
	strh r1, [r0, #0xe]
	ldrb r0, [r3, #1]
	adds r0, #1
	strb r0, [r3, #1]
_08009FA0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08009FA8: .4byte 0x020329B0

	thumb_func_start sub_08009FAC
sub_08009FAC: @ 0x08009FAC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	movs r4, #0
	ldr r0, _0800A070 @ =0x020329B0
	ldrb r1, [r0, #2]
	cmp r4, r1
	bge _08009FD6
	adds r5, r0, #0
	ldr r2, _0800A074 @ =0x00000A04
	adds r6, r5, r2
_08009FC8:
	ldm r6!, {r0}
	bl sub_08007CF8
	adds r4, #1
	ldrb r3, [r5, #2]
	cmp r4, r3
	blt _08009FC8
_08009FD6:
	ldr r1, _0800A070 @ =0x020329B0
	movs r0, #0
	strb r0, [r1, #2]
	movs r4, #0
	mov ip, r1
	ldrb r0, [r1, #1]
	cmp r4, r0
	bge _0800A0A6
	movs r1, #0x82
	lsls r1, r1, #2
	add r1, ip
	mov sl, r1
_08009FEE:
	lsls r2, r4, #4
	mov r3, ip
	adds r0, r2, r3
	movs r1, #0x81
	lsls r1, r1, #2
	adds r0, r0, r1
	ldrb r0, [r0]
	mov r8, r2
	cmp r0, #0
	beq _0800A088
	movs r3, #0
	adds r0, r4, #1
	mov sb, r0
	cmp r3, r4
	bge _0800A028
	ldr r0, _0800A070 @ =0x020329B0
	adds r6, r0, #4
	adds r1, #4
	adds r7, r0, r1
	adds r5, r2, r7
	adds r0, r6, #0
	ldr r2, [r5]
_0800A01A:
	ldr r1, [r0]
	cmp r1, r2
	beq _0800A078
	adds r0, #4
	adds r3, #1
	cmp r3, r4
	blt _0800A01A
_0800A028:
	cmp r3, r4
	bne _0800A09C
	ldr r5, _0800A070 @ =0x020329B0
	lsls r1, r4, #2
	adds r0, r5, #4
	adds r1, r1, r0
	mov r4, r8
	add r4, sl
	ldr r0, [r4]
	str r0, [r1]
	ldr r0, [r4]
	mov r1, sp
	bl sub_0800820C
	adds r2, r0, #0
	cmp r2, #0
	beq _0800A062
	ldr r0, [r4]
	cmp r2, r0
	beq _0800A062
	ldrb r0, [r5, #2]
	adds r1, r0, #1
	strb r1, [r5, #2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	ldr r3, _0800A074 @ =0x00000A04
	adds r1, r5, r3
	adds r0, r0, r1
	str r2, [r0]
_0800A062:
	mov r1, r8
	add r1, sl
	ldr r0, [sp]
	str r0, [r1]
	ldr r0, _0800A070 @ =0x020329B0
	mov ip, r0
	b _0800A09C
	.align 2, 0
_0800A070: .4byte 0x020329B0
_0800A074: .4byte 0x00000A04
_0800A078:
	lsls r0, r4, #2
	adds r0, r0, r6
	str r1, [r0]
	lsls r0, r3, #4
	adds r0, r0, r7
	ldr r0, [r0]
	str r0, [r5]
	b _0800A028
_0800A088:
	lsls r1, r4, #2
	mov r0, ip
	adds r0, #4
	adds r1, r1, r0
	mov r3, sl
	adds r0, r2, r3
	ldr r0, [r0]
	str r0, [r1]
	adds r4, #1
	mov sb, r4
_0800A09C:
	mov r4, sb
	mov r0, ip
	ldrb r0, [r0, #1]
	cmp r4, r0
	blt _08009FEE
_0800A0A6:
	mov r1, ip
	ldrb r0, [r1, #1]
	movs r1, #0
	mov r2, ip
	strb r0, [r2]
	strb r1, [r2, #1]
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800A0C4
sub_0800A0C4: @ 0x0800A0C4
	push {r4, r5, lr}
	ldr r4, _0800A0D0 @ =0x02032BB4
	movs r5, #0
	ldr r1, _0800A0D4 @ =0xFFFFFDFC
	adds r0, r4, r1
	b _0800A0F6
	.align 2, 0
_0800A0D0: .4byte 0x02032BB4
_0800A0D4: .4byte 0xFFFFFDFC
_0800A0D8:
	ldrh r0, [r4, #0xc]
	cmp r0, #0
	beq _0800A0F0
	ldr r1, [r4, #4]
	cmp r1, #0
	beq _0800A0F0
	ldrh r0, [r4, #0xe]
	adds r0, r1, r0
	ldr r1, [r4, #8]
	ldrh r2, [r4, #0xc]
	bl sub_08007EA4
_0800A0F0:
	adds r5, #1
	adds r4, #0x10
	ldr r0, _0800A108 @ =0x020329B0
_0800A0F6:
	ldrb r0, [r0]
	cmp r5, r0
	blt _0800A0D8
	ldr r1, _0800A108 @ =0x020329B0
	movs r0, #0
	strb r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800A108: .4byte 0x020329B0

	thumb_func_start sub_0800A10C
sub_0800A10C: @ 0x0800A10C
	push {r4, r5, r6, lr}
	ldr r5, _0800A154 @ =0x0300151C
	ldr r1, [r5]
	ldr r4, [r1, #0xc]
	ldr r0, _0800A158 @ =0x0809CB28
	ldrb r1, [r1, #1]
	lsls r1, r1, #5
	ldr r6, _0800A15C @ =0x05000200
	adds r1, r1, r6
	bl sub_08008308
	ldr r0, _0800A160 @ =0x0809CCBC
	adds r1, r4, #0
	bl sub_08008374
	adds r4, r4, r0
	ldr r1, [r5]
	str r4, [r1, #0x10]
	ldr r0, _0800A164 @ =0x0809CA60
	ldrb r1, [r1, #1]
	adds r1, #4
	lsls r1, r1, #5
	adds r1, r1, r6
	bl sub_08008308
	ldr r0, _0800A168 @ =0x0809CAA4
	adds r1, r4, #0
	bl sub_08008374
	ldr r1, [r5]
	movs r0, #1
	strb r0, [r1, #0x14]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800A154: .4byte 0x0300151C
_0800A158: .4byte 0x0809CB28
_0800A15C: .4byte 0x05000200
_0800A160: .4byte 0x0809CCBC
_0800A164: .4byte 0x0809CA60
_0800A168: .4byte 0x0809CAA4

	thumb_func_start sub_0800A16C
sub_0800A16C: @ 0x0800A16C
	push {r4, lr}
	sub sp, #0xc
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	movs r4, #4
	str r4, [sp]
	movs r4, #0
	str r4, [sp, #4]
	str r4, [sp, #8]
	bl sub_0800A1E8
	add sp, #0xc
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800A194
sub_0800A194: @ 0x0800A194
	push {r4, lr}
	sub sp, #0xc
	ldr r4, [sp, #0x14]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	str r4, [sp]
	movs r4, #0
	str r4, [sp, #4]
	str r4, [sp, #8]
	bl sub_0800A1E8
	add sp, #0xc
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800A1C0
sub_0800A1C0: @ 0x0800A1C0
	push {r4, r5, r6, lr}
	sub sp, #0xc
	ldr r5, [sp, #0x1c]
	ldr r6, [sp, #0x20]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	movs r4, #4
	str r4, [sp]
	str r5, [sp, #4]
	str r6, [sp, #8]
	bl sub_0800A1E8
	add sp, #0xc
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_0800A1E8
sub_0800A1E8: @ 0x0800A1E8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov sb, r0
	adds r6, r1, #0
	adds r4, r2, #0
	mov r8, r3
	ldr r0, [sp, #0x1c]
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	mov r1, r8
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r8, r1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	ldr r5, _0800A27C @ =0x0300151C
	movs r0, #0x60
	bl sub_08007CE8
	adds r1, r0, #0
	str r1, [r5]
	movs r0, #0
	movs r2, #0x60
	bl sub_08007EFC
	ldr r0, [r5]
	movs r2, #0
	strb r6, [r0, #2]
	ldr r0, [r5]
	strb r2, [r0]
	ldr r1, [r5]
	movs r3, #0
	strh r2, [r1, #4]
	mov r2, sb
	str r2, [r1, #8]
	movs r2, #2
	rsbs r2, r2, #0
	adds r0, r2, #0
	mov r2, sb
	strb r0, [r2]
	lsls r4, r4, #5
	ldr r0, _0800A280 @ =0x06010000
	adds r4, r4, r0
	str r4, [r1, #0xc]
	mov r2, r8
	strb r2, [r1, #1]
	ldr r0, [r5]
	adds r0, #0x55
	strb r3, [r0]
	ldr r0, [r5]
	strb r3, [r0, #0x14]
	ldr r1, [r5]
	movs r0, #4
	strb r0, [r1, #0x15]
	ldr r0, [r5]
	ldr r1, [sp, #0x20]
	str r1, [r0, #0x40]
	ldr r2, [sp, #0x24]
	str r2, [r0, #0x44]
	ldr r0, _0800A284 @ =0x03004400
	ldrb r0, [r0, #8]
	subs r0, #2
	cmp r0, #0x16
	bls _0800A272
	b _0800A3A0
_0800A272:
	lsls r0, r0, #2
	ldr r1, _0800A288 @ =_0800A28C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800A27C: .4byte 0x0300151C
_0800A280: .4byte 0x06010000
_0800A284: .4byte 0x03004400
_0800A288: .4byte _0800A28C
_0800A28C: @ jump table
	.4byte _0800A2E8 @ case 0
	.4byte _0800A3A0 @ case 1
	.4byte _0800A3A0 @ case 2
	.4byte _0800A3A0 @ case 3
	.4byte _0800A3A0 @ case 4
	.4byte _0800A3A0 @ case 5
	.4byte _0800A3A0 @ case 6
	.4byte _0800A3A0 @ case 7
	.4byte _0800A31C @ case 8
	.4byte _0800A328 @ case 9
	.4byte _0800A3A0 @ case 10
	.4byte _0800A2F4 @ case 11
	.4byte _0800A310 @ case 12
	.4byte _0800A3A0 @ case 13
	.4byte _0800A3A0 @ case 14
	.4byte _0800A3A0 @ case 15
	.4byte _0800A3A0 @ case 16
	.4byte _0800A3A0 @ case 17
	.4byte _0800A334 @ case 18
	.4byte _0800A388 @ case 19
	.4byte _0800A3A0 @ case 20
	.4byte _0800A350 @ case 21
	.4byte _0800A36C @ case 22
_0800A2E8:
	ldr r0, _0800A2F0 @ =0x0300151C
	ldr r1, [r0]
	movs r0, #0
	b _0800A39E
	.align 2, 0
_0800A2F0: .4byte 0x0300151C
_0800A2F4:
	cmp r7, #3
	bhi _0800A304
	ldr r0, _0800A300 @ =0x0300151C
	ldr r1, [r0]
	movs r0, #3
	b _0800A39E
	.align 2, 0
_0800A300: .4byte 0x0300151C
_0800A304:
	ldr r0, _0800A30C @ =0x0300151C
	ldr r1, [r0]
	movs r0, #2
	b _0800A39E
	.align 2, 0
_0800A30C: .4byte 0x0300151C
_0800A310:
	ldr r0, _0800A318 @ =0x0300151C
	ldr r1, [r0]
	movs r0, #5
	b _0800A39E
	.align 2, 0
_0800A318: .4byte 0x0300151C
_0800A31C:
	ldr r0, _0800A324 @ =0x0300151C
	ldr r1, [r0]
	movs r0, #1
	b _0800A39E
	.align 2, 0
_0800A324: .4byte 0x0300151C
_0800A328:
	ldr r0, _0800A330 @ =0x0300151C
	ldr r1, [r0]
	movs r0, #4
	b _0800A39E
	.align 2, 0
_0800A330: .4byte 0x0300151C
_0800A334:
	cmp r7, #3
	bhi _0800A344
	ldr r0, _0800A340 @ =0x0300151C
	ldr r1, [r0]
	movs r0, #7
	b _0800A39E
	.align 2, 0
_0800A340: .4byte 0x0300151C
_0800A344:
	ldr r0, _0800A34C @ =0x0300151C
	ldr r1, [r0]
	movs r0, #6
	b _0800A39E
	.align 2, 0
_0800A34C: .4byte 0x0300151C
_0800A350:
	cmp r7, #3
	bhi _0800A360
	ldr r0, _0800A35C @ =0x0300151C
	ldr r1, [r0]
	movs r0, #9
	b _0800A39E
	.align 2, 0
_0800A35C: .4byte 0x0300151C
_0800A360:
	ldr r0, _0800A368 @ =0x0300151C
	ldr r1, [r0]
	movs r0, #8
	b _0800A39E
	.align 2, 0
_0800A368: .4byte 0x0300151C
_0800A36C:
	cmp r7, #3
	bhi _0800A37C
	ldr r0, _0800A378 @ =0x0300151C
	ldr r1, [r0]
	movs r0, #0xb
	b _0800A39E
	.align 2, 0
_0800A378: .4byte 0x0300151C
_0800A37C:
	ldr r0, _0800A384 @ =0x0300151C
	ldr r1, [r0]
	movs r0, #0xa
	b _0800A39E
	.align 2, 0
_0800A384: .4byte 0x0300151C
_0800A388:
	cmp r7, #3
	bhi _0800A398
	ldr r0, _0800A394 @ =0x0300151C
	ldr r1, [r0]
	movs r0, #0xd
	b _0800A39E
	.align 2, 0
_0800A394: .4byte 0x0300151C
_0800A398:
	ldr r0, _0800A424 @ =0x0300151C
	ldr r1, [r0]
	movs r0, #0xc
_0800A39E:
	strb r0, [r1, #0x1b]
_0800A3A0:
	ldr r3, _0800A424 @ =0x0300151C
	ldr r1, [r3]
	movs r0, #0
	strb r0, [r1, #0x1a]
	cmp r7, #3
	bhi _0800A3BA
	ldr r1, [r3]
	ldrb r0, [r1, #0x15]
	subs r0, #1
	strb r0, [r1, #0x15]
	ldr r1, [r3]
	movs r0, #1
	strb r0, [r1, #0x1a]
_0800A3BA:
	movs r4, #0
	movs r2, #0
	ldr r5, _0800A428 @ =sub_0800A958
	adds r1, r3, #0
_0800A3C2:
	cmp r4, r7
	beq _0800A3D0
	ldr r0, [r1]
	adds r0, #0x16
	adds r0, r0, r2
	strb r4, [r0]
	adds r2, #1
_0800A3D0:
	adds r4, #1
	cmp r4, #3
	ble _0800A3C2
	adds r0, r5, #0
	movs r1, #0x40
	movs r2, #0
	bl sub_08007968
	ldr r1, _0800A424 @ =0x0300151C
	ldr r2, [r1]
	adds r1, r2, #0
	adds r1, #0x50
	strh r0, [r1]
	movs r4, #0
	ldrb r2, [r2, #0x15]
	cmp r4, r2
	bge _0800A412
_0800A3F2:
	ldr r0, _0800A42C @ =sub_0800AD94
	movs r1, #0x41
	movs r2, #0
	bl sub_08007968
	ldr r1, _0800A424 @ =0x0300151C
	ldr r3, [r1]
	lsls r2, r4, #1
	adds r1, r3, #0
	adds r1, #0x48
	adds r1, r1, r2
	strh r0, [r1]
	adds r4, #1
	ldrb r3, [r3, #0x15]
	cmp r4, r3
	blt _0800A3F2
_0800A412:
	ldr r0, _0800A430 @ =sub_0800A10C
	movs r1, #0xff
	bl sub_08009460
	movs r0, #1
	bl sub_08002B98
	b _0800A43A
	.align 2, 0
_0800A424: .4byte 0x0300151C
_0800A428: .4byte sub_0800A958
_0800A42C: .4byte sub_0800AD94
_0800A430: .4byte sub_0800A10C
_0800A434:
	movs r0, #1
	bl sub_08002B98
_0800A43A:
	bl sub_0800A45C
	cmp r0, #0
	beq _0800A434
	ldr r0, _0800A458 @ =0x0300151C
	ldr r0, [r0]
	bl sub_08007CF8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800A458: .4byte 0x0300151C

	thumb_func_start sub_0800A45C
sub_0800A45C: @ 0x0800A45C
	push {r4, r5, lr}
	ldr r1, _0800A478 @ =0x0300151C
	ldr r0, [r1]
	ldrb r0, [r0]
	adds r5, r1, #0
	cmp r0, #0xb
	bls _0800A46C
	b _0800A7C2
_0800A46C:
	lsls r0, r0, #2
	ldr r1, _0800A47C @ =_0800A480
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800A478: .4byte 0x0300151C
_0800A47C: .4byte _0800A480
_0800A480: @ jump table
	.4byte _0800A4B0 @ case 0
	.4byte _0800A4D4 @ case 1
	.4byte _0800A52C @ case 2
	.4byte _0800A53E @ case 3
	.4byte _0800A54E @ case 4
	.4byte _0800A55A @ case 5
	.4byte _0800A584 @ case 6
	.4byte _0800A61A @ case 7
	.4byte _0800A6BA @ case 8
	.4byte _0800A6CA @ case 9
	.4byte _0800A720 @ case 10
	.4byte _0800A75A @ case 11
_0800A4B0:
	ldr r0, [r5]
	ldrb r0, [r0, #0x14]
	cmp r0, #0
	bne _0800A4BA
	b _0800A7C2
_0800A4BA:
	ldr r0, _0800A4D0 @ =sub_0800A10C
	bl sub_080094F4
	bl sub_0800AB98
	bl sub_0800A808
	ldr r1, [r5]
	movs r0, #1
	b _0800A7C0
	.align 2, 0
_0800A4D0: .4byte sub_0800A10C
_0800A4D4:
	bl sub_08005934
	ldr r1, _0800A4F4 @ =0x0807FA04
	ldr r5, _0800A4F8 @ =0x0300151C
	ldr r2, [r5]
	ldrb r0, [r2, #0x1b]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, [r2, #0x40]
	ldr r2, [r2, #0x44]
	bl sub_080004D4
	movs r4, #0
	b _0800A518
	.align 2, 0
_0800A4F4: .4byte 0x0807FA04
_0800A4F8: .4byte 0x0300151C
_0800A4FC:
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	bl sub_0800AC10
	ldr r0, [r5]
	lsls r1, r4, #1
	adds r0, #0x48
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r1, r4, #2
	bl sub_08007AD8
	adds r4, #1
_0800A518:
	ldr r0, [r5]
	ldrb r0, [r0, #0x15]
	cmp r4, r0
	blt _0800A4FC
	ldr r0, _0800A528 @ =0x0300151C
	ldr r1, [r0]
	movs r0, #2
	b _0800A7C0
	.align 2, 0
_0800A528: .4byte 0x0300151C
_0800A52C:
	ldr r1, [r5]
	adds r0, r1, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800A53A
	b _0800A7C2
_0800A53A:
	movs r0, #3
	b _0800A7C0
_0800A53E:
	ldr r0, [r5]
	adds r0, #0x55
	ldrb r0, [r0]
	bl sub_0800AC58
	ldr r1, [r5]
	movs r0, #4
	b _0800A7C0
_0800A54E:
	ldr r0, [r5]
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800A55A
	b _0800A7C2
_0800A55A:
	ldr r2, [r5]
	ldrb r0, [r2]
	cmp r0, #5
	bne _0800A574
	ldr r1, _0800A580 @ =0x0807FA04
	ldrb r0, [r2, #0x1b]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, [r2, #0x40]
	ldr r2, [r2, #0x44]
	bl sub_080004D4
_0800A574:
	bl sub_0800A844
	ldr r1, [r5]
	movs r0, #6
	b _0800A7C0
	.align 2, 0
_0800A580: .4byte 0x0807FA04
_0800A584:
	ldr r3, [r5]
	adds r0, r3, #0
	adds r0, #0x54
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800A592
	b _0800A7C2
_0800A592:
	adds r0, r3, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800A59E
	b _0800A7C2
_0800A59E:
	ldr r1, _0800A5B8 @ =0x030024B0
	ldrh r2, [r1]
	movs r0, #1
	ands r0, r2
	adds r4, r1, #0
	cmp r0, #0
	beq _0800A5BC
	movs r0, #0xcc
	bl sub_0806F5DC
	ldr r1, [r5]
	movs r0, #7
	b _0800A7C0
	.align 2, 0
_0800A5B8: .4byte 0x030024B0
_0800A5BC:
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _0800A5D0
	movs r0, #0xce
	bl sub_0806F5DC
	ldr r1, [r5]
	movs r0, #0xb
	b _0800A7C0
_0800A5D0:
	adds r0, r3, #0
	adds r0, #0x55
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800A5F0
	ldrh r1, [r4, #4]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0800A5F0
	movs r0, #0xca
	bl sub_0806F5DC
	bl sub_0800A87C
	b _0800A7C2
_0800A5F0:
	ldr r0, [r5]
	adds r1, r0, #0
	adds r1, #0x55
	ldrb r1, [r1]
	ldrb r0, [r0, #0x15]
	subs r0, #1
	cmp r1, r0
	blt _0800A602
	b _0800A7C2
_0800A602:
	ldrh r1, [r4, #4]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _0800A60E
	b _0800A7C2
_0800A60E:
	movs r0, #0xca
	bl sub_0806F5DC
	bl sub_0800A898
	b _0800A7C2
_0800A61A:
	bl sub_0800A860
	ldr r0, _0800A64C @ =0x0300151C
	ldr r0, [r0]
	ldrb r1, [r0, #0x1b]
	cmp r1, #3
	beq _0800A634
	cmp r1, #7
	beq _0800A634
	cmp r1, #9
	beq _0800A634
	cmp r1, #0xd
	bne _0800A650
_0800A634:
	ldr r0, _0800A64C @ =0x0300151C
	ldr r0, [r0]
	adds r1, r0, #0
	adds r1, #0x55
	adds r0, #0x16
	ldrb r1, [r1]
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #9
	bl sub_08005BE0
	b _0800A662
	.align 2, 0
_0800A64C: .4byte 0x0300151C
_0800A650:
	adds r1, r0, #0
	adds r1, #0x55
	adds r0, #0x16
	ldrb r1, [r1]
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #8
	bl sub_08005BE0
_0800A662:
	ldr r1, _0800A694 @ =0x0807FAD8
	ldr r4, _0800A698 @ =0x0300151C
	ldr r2, [r4]
	ldrb r0, [r2, #0x1b]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, [r2, #0x40]
	ldr r2, [r2, #0x44]
	bl sub_080004D4
	bl sub_080064F8
	lsls r0, r0, #0x18
	asrs r1, r0, #0x18
	cmp r1, #0
	beq _0800A6B0
	cmp r1, #0
	bgt _0800A69C
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0800A6A2
	b _0800A7C2
	.align 2, 0
_0800A694: .4byte 0x0807FAD8
_0800A698: .4byte 0x0300151C
_0800A69C:
	cmp r1, #1
	beq _0800A6A2
	b _0800A7C2
_0800A6A2:
	ldr r0, _0800A6AC @ =0x0300151C
	ldr r1, [r0]
	movs r0, #5
	b _0800A7C0
	.align 2, 0
_0800A6AC: .4byte 0x0300151C
_0800A6B0:
	bl sub_08005A2C
	ldr r1, [r4]
	movs r0, #9
	b _0800A7C0
_0800A6BA:
	ldr r0, [r5]
	adds r0, #0x55
	ldrb r0, [r0]
	bl sub_0800AC7C
	ldr r1, [r5]
	movs r0, #9
	b _0800A7C0
_0800A6CA:
	ldr r1, [r5]
	adds r0, r1, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800A7C2
	movs r4, #0
	ldrb r1, [r1, #0x15]
	cmp r4, r1
	bge _0800A702
_0800A6DE:
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	bl sub_0800AC34
	ldr r0, [r5]
	lsls r1, r4, #1
	adds r0, #0x48
	adds r0, r0, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	lsls r1, r4, #2
	bl sub_08007AD8
	adds r4, #1
	ldr r0, [r5]
	ldrb r0, [r0, #0x15]
	cmp r4, r0
	blt _0800A6DE
_0800A702:
	ldr r2, _0800A71C @ =0x0300151C
	ldr r0, [r2]
	ldr r1, [r0, #8]
	adds r3, r0, #0
	adds r3, #0x55
	adds r0, #0x16
	ldrb r3, [r3]
	adds r0, r0, r3
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, [r2]
	b _0800A7BE
	.align 2, 0
_0800A71C: .4byte 0x0300151C
_0800A720:
	ldr r1, [r5]
	adds r0, r1, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800A7C2
	adds r0, r1, #0
	adds r0, #0x50
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	movs r4, #0
	b _0800A74E
_0800A73C:
	ldr r0, [r5]
	lsls r1, r4, #1
	adds r0, #0x48
	adds r0, r0, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	bl sub_08007A08
	adds r4, #1
_0800A74E:
	ldr r0, [r5]
	ldrb r0, [r0, #0x15]
	cmp r4, r0
	blt _0800A73C
	movs r0, #1
	b _0800A7C4
_0800A75A:
	bl sub_0800A860
	ldr r1, _0800A794 @ =0x0807FB70
	ldr r4, _0800A798 @ =0x0300151C
	ldr r2, [r4]
	ldrb r0, [r2, #0x1b]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _0800A7AC
	ldr r1, [r2, #0x40]
	ldr r2, [r2, #0x44]
	bl sub_080004D4
	bl sub_080064F8
	lsls r0, r0, #0x18
	asrs r1, r0, #0x18
	cmp r1, #0
	beq _0800A7AC
	cmp r1, #0
	bgt _0800A79C
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0800A7A0
	b _0800A7C2
	.align 2, 0
_0800A794: .4byte 0x0807FB70
_0800A798: .4byte 0x0300151C
_0800A79C:
	cmp r1, #1
	bne _0800A7C2
_0800A7A0:
	ldr r0, _0800A7A8 @ =0x0300151C
	ldr r1, [r0]
	movs r0, #5
	b _0800A7C0
	.align 2, 0
_0800A7A8: .4byte 0x0300151C
_0800A7AC:
	bl sub_08005A2C
	ldr r0, [r4]
	ldr r1, [r0, #8]
	movs r2, #1
	rsbs r2, r2, #0
	adds r0, r2, #0
	strb r0, [r1]
	ldr r1, [r4]
_0800A7BE:
	movs r0, #0xa
_0800A7C0:
	strb r0, [r1]
_0800A7C2:
	movs r0, #0
_0800A7C4:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0800A7CC
sub_0800A7CC: @ 0x0800A7CC
	push {r4, lr}
	lsls r0, r0, #0x18
	ldr r4, _0800A800 @ =0x0300151C
	ldr r1, [r4]
	adds r1, #0x50
	movs r3, #0
	ldrsh r2, [r1, r3]
	ldr r1, _0800A804 @ =0x0807FBC8
	lsrs r0, r0, #0x16
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r2, #0
	bl sub_08007B84
	ldr r0, [r4]
	adds r0, #0x50
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	movs r1, #0
	strb r1, [r0]
	strb r1, [r0, #1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800A800: .4byte 0x0300151C
_0800A804: .4byte 0x0807FBC8

	thumb_func_start sub_0800A808
sub_0800A808: @ 0x0800A808
	push {lr}
	ldr r0, _0800A820 @ =0x0300151C
	ldr r0, [r0]
	adds r0, #0x50
	movs r1, #0
	ldrsh r0, [r0, r1]
	ldr r1, _0800A824 @ =sub_0800A8B4
	bl sub_08007B84
	pop {r0}
	bx r0
	.align 2, 0
_0800A820: .4byte 0x0300151C
_0800A824: .4byte sub_0800A8B4

	thumb_func_start sub_0800A828
sub_0800A828: @ 0x0800A828
	push {lr}
	ldr r0, _0800A840 @ =0x0300151C
	ldr r0, [r0]
	adds r0, #0x54
	movs r1, #0
	strb r1, [r0]
	movs r0, #0
	bl sub_0800A7CC
	pop {r0}
	bx r0
	.align 2, 0
_0800A840: .4byte 0x0300151C

	thumb_func_start sub_0800A844
sub_0800A844: @ 0x0800A844
	push {lr}
	ldr r0, _0800A85C @ =0x0300151C
	ldr r0, [r0]
	adds r0, #0x54
	movs r1, #1
	strb r1, [r0]
	movs r0, #1
	bl sub_0800A7CC
	pop {r0}
	bx r0
	.align 2, 0
_0800A85C: .4byte 0x0300151C

	thumb_func_start sub_0800A860
sub_0800A860: @ 0x0800A860
	push {lr}
	ldr r0, _0800A878 @ =0x0300151C
	ldr r0, [r0]
	adds r0, #0x54
	movs r1, #1
	strb r1, [r0]
	movs r0, #2
	bl sub_0800A7CC
	pop {r0}
	bx r0
	.align 2, 0
_0800A878: .4byte 0x0300151C

	thumb_func_start sub_0800A87C
sub_0800A87C: @ 0x0800A87C
	push {lr}
	ldr r0, _0800A894 @ =0x0300151C
	ldr r0, [r0]
	adds r0, #0x54
	movs r1, #1
	strb r1, [r0]
	movs r0, #3
	bl sub_0800A7CC
	pop {r0}
	bx r0
	.align 2, 0
_0800A894: .4byte 0x0300151C

	thumb_func_start sub_0800A898
sub_0800A898: @ 0x0800A898
	push {lr}
	ldr r0, _0800A8B0 @ =0x0300151C
	ldr r0, [r0]
	adds r0, #0x54
	movs r1, #1
	strb r1, [r0]
	movs r0, #4
	bl sub_0800A7CC
	pop {r0}
	bx r0
	.align 2, 0
_0800A8B0: .4byte 0x0300151C

	thumb_func_start sub_0800A8B4
sub_0800A8B4: @ 0x0800A8B4
	push {r4, r5, lr}
	ldr r5, _0800A930 @ =0x0300151C
	ldr r0, [r5]
	ldrb r0, [r0, #2]
	movs r1, #0
	bl sub_080099E0
	adds r4, r0, #0
	movs r1, #0
	bl sub_08009A34
	ldr r2, _0800A934 @ =0x0807F674
	ldr r1, [r5]
	adds r0, r1, #0
	adds r0, #0x55
	ldrb r0, [r0]
	lsls r0, r0, #1
	ldrb r1, [r1, #0x1a]
	lsls r1, r1, #3
	adds r0, r0, r1
	adds r0, r0, r2
	ldrh r1, [r0]
	subs r1, #0x1a
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	movs r2, #0xa
	bl sub_08009A70
	ldr r0, [r5]
	ldr r1, [r0, #0x10]
	adds r0, r4, #0
	bl sub_08009A78
	ldr r0, [r5]
	ldrb r1, [r0, #1]
	adds r1, #4
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r4, #0
	bl sub_08009AB4
	ldr r1, _0800A938 @ =0x0809CA9C
	ldr r2, _0800A93C @ =0x0809CA94
	adds r0, r4, #0
	movs r3, #0
	bl sub_08009ACC
	ldr r0, [r5]
	str r4, [r0, #0x2c]
	adds r0, #0x50
	movs r1, #0
	ldrsh r0, [r0, r1]
	ldr r1, _0800A940 @ =sub_0800A944
	bl sub_08007BA0
	bl sub_0800A828
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800A930: .4byte 0x0300151C
_0800A934: .4byte 0x0807F674
_0800A938: .4byte 0x0809CA9C
_0800A93C: .4byte 0x0809CA94
_0800A940: .4byte sub_0800A944

	thumb_func_start sub_0800A944
sub_0800A944: @ 0x0800A944
	push {lr}
	ldr r0, _0800A954 @ =0x0300151C
	ldr r0, [r0]
	ldr r0, [r0, #0x2c]
	bl sub_08009A00
	pop {r0}
	bx r0
	.align 2, 0
_0800A954: .4byte 0x0300151C

	thumb_func_start sub_0800A958
sub_0800A958: @ 0x0800A958
	bx lr
	.align 2, 0

	thumb_func_start sub_0800A95C
sub_0800A95C: @ 0x0800A95C
	push {lr}
	ldr r0, _0800A974 @ =0x0300151C
	ldr r0, [r0]
	ldr r0, [r0, #0x2c]
	movs r1, #1
	bl sub_08009A34
	bl sub_0800A828
	pop {r0}
	bx r0
	.align 2, 0
_0800A974: .4byte 0x0300151C

	thumb_func_start sub_0800A978
sub_0800A978: @ 0x0800A978
	push {lr}
	ldr r0, _0800A990 @ =0x0300151C
	ldr r0, [r0]
	ldr r0, [r0, #0x2c]
	movs r1, #0
	bl sub_08009A34
	bl sub_0800A828
	pop {r0}
	bx r0
	.align 2, 0
_0800A990: .4byte 0x0300151C

	thumb_func_start sub_0800A994
sub_0800A994: @ 0x0800A994
	push {r4, r5, r6, r7, lr}
	bl sub_08007BD4
	adds r6, r0, #0
	ldrb r5, [r6]
	cmp r5, #1
	beq _0800A9EC
	cmp r5, #1
	bgt _0800A9AC
	cmp r5, #0
	beq _0800A9B6
	b _0800AA6C
_0800A9AC:
	cmp r5, #2
	beq _0800AA06
	cmp r5, #3
	beq _0800AA68
	b _0800AA6C
_0800A9B6:
	ldr r4, _0800A9E8 @ =0x0300151C
	ldr r0, [r4]
	adds r0, #0x55
	ldrb r0, [r0]
	bl sub_0800AC7C
	ldr r0, [r4]
	adds r7, r0, #0
	adds r7, #0x55
	ldrb r1, [r0, #0x15]
	subs r0, r1, #1
	ldrb r2, [r7]
	adds r0, r0, r2
	bl sub_08071064
	strb r0, [r7]
	ldr r0, [r4]
	adds r0, #0x55
	ldrb r0, [r0]
	bl sub_0800AC58
	movs r0, #2
	strb r0, [r6]
	strb r5, [r6, #1]
	b _0800AA6C
	.align 2, 0
_0800A9E8: .4byte 0x0300151C
_0800A9EC:
	ldr r0, _0800AA5C @ =0x0300151C
	ldr r1, [r0]
	adds r0, r1, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800AA6C
	ldr r0, [r1, #0x2c]
	movs r1, #1
	bl sub_08009A34
	movs r0, #2
	strb r0, [r6]
_0800AA06:
	ldr r0, _0800AA5C @ =0x0300151C
	ldr r1, [r0]
	ldr r0, [r1, #0x2c]
	ldr r3, _0800AA60 @ =0x0807F674
	adds r2, r1, #0
	adds r2, #0x55
	ldrb r2, [r2]
	lsls r2, r2, #1
	ldrb r1, [r1, #0x1a]
	lsls r1, r1, #3
	adds r2, r2, r1
	adds r2, r2, r3
	ldr r4, _0800AA64 @ =0x0807FBA8
	ldrb r3, [r6, #1]
	lsls r3, r3, #2
	adds r1, r3, r4
	ldrh r1, [r1]
	subs r1, #0x1a
	ldrh r2, [r2]
	adds r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r4, #2
	adds r3, r3, r4
	ldrh r2, [r3]
	adds r2, #0xa
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl sub_08009A70
	ldrb r0, [r6, #1]
	adds r0, #1
	strb r0, [r6, #1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #7
	bls _0800AA6C
	movs r0, #0
	strb r0, [r6, #1]
	movs r0, #3
	strb r0, [r6]
	b _0800AA6C
	.align 2, 0
_0800AA5C: .4byte 0x0300151C
_0800AA60: .4byte 0x0807F674
_0800AA64: .4byte 0x0807FBA8
_0800AA68:
	bl sub_0800A828
_0800AA6C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800AA74
sub_0800AA74: @ 0x0800AA74
	push {r4, r5, r6, r7, lr}
	bl sub_08007BD4
	adds r7, r0, #0
	ldrb r5, [r7]
	cmp r5, #1
	beq _0800AACC
	cmp r5, #1
	bgt _0800AA8C
	cmp r5, #0
	beq _0800AA96
	b _0800AB4C
_0800AA8C:
	cmp r5, #2
	beq _0800AAE6
	cmp r5, #3
	beq _0800AB48
	b _0800AB4C
_0800AA96:
	ldr r4, _0800AAC8 @ =0x0300151C
	ldr r0, [r4]
	adds r0, #0x55
	ldrb r0, [r0]
	bl sub_0800AC7C
	ldr r1, [r4]
	adds r6, r1, #0
	adds r6, #0x55
	ldrb r0, [r6]
	adds r0, #1
	ldrb r1, [r1, #0x15]
	bl sub_08071064
	strb r0, [r6]
	ldr r0, [r4]
	adds r0, #0x55
	ldrb r0, [r0]
	bl sub_0800AC58
	movs r0, #2
	strb r0, [r7]
	strb r5, [r7, #1]
	b _0800AB4C
	.align 2, 0
_0800AAC8: .4byte 0x0300151C
_0800AACC:
	ldr r0, _0800AB3C @ =0x0300151C
	ldr r1, [r0]
	adds r0, r1, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800AB4C
	ldr r0, [r1, #0x2c]
	movs r1, #1
	bl sub_08009A34
	movs r0, #2
	strb r0, [r7]
_0800AAE6:
	ldr r0, _0800AB3C @ =0x0300151C
	ldr r1, [r0]
	ldr r0, [r1, #0x2c]
	ldr r2, _0800AB40 @ =0x0807F674
	adds r3, r1, #0
	adds r3, #0x55
	ldrb r3, [r3]
	lsls r3, r3, #1
	ldrb r1, [r1, #0x1a]
	lsls r1, r1, #3
	adds r3, r3, r1
	adds r3, r3, r2
	ldr r5, _0800AB44 @ =0x0807FBA8
	ldrb r4, [r7, #1]
	lsls r4, r4, #2
	adds r1, r4, r5
	ldrh r2, [r1]
	adds r2, #0x1a
	ldrh r1, [r3]
	subs r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r5, #2
	adds r4, r4, r5
	ldrh r2, [r4]
	adds r2, #0xa
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl sub_08009A70
	ldrb r0, [r7, #1]
	adds r0, #1
	strb r0, [r7, #1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #7
	bls _0800AB4C
	movs r0, #0
	strb r0, [r7, #1]
	movs r0, #3
	strb r0, [r7]
	b _0800AB4C
	.align 2, 0
_0800AB3C: .4byte 0x0300151C
_0800AB40: .4byte 0x0807F674
_0800AB44: .4byte 0x0807FBA8
_0800AB48:
	bl sub_0800A828
_0800AB4C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800AB54
sub_0800AB54: @ 0x0800AB54
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsls r1, r1, #0x18
	ldr r5, _0800AB90 @ =0x0300151C
	ldr r0, [r5]
	lsrs r4, r4, #0x17
	adds r0, #0x48
	adds r0, r0, r4
	movs r2, #0
	ldrsh r0, [r0, r2]
	ldr r2, _0800AB94 @ =0x0807FBEC
	lsrs r1, r1, #0x16
	adds r1, r1, r2
	ldr r1, [r1]
	bl sub_08007B84
	ldr r0, [r5]
	adds r0, #0x48
	adds r0, r0, r4
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	movs r1, #0
	strb r1, [r0, #1]
	strb r1, [r0, #2]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800AB90: .4byte 0x0300151C
_0800AB94: .4byte 0x0807FBEC

	thumb_func_start sub_0800AB98
sub_0800AB98: @ 0x0800AB98
	push {r4, r5, r6, lr}
	ldr r2, _0800ABE4 @ =0x0300151C
	ldr r0, [r2]
	adds r0, #0x58
	movs r1, #0
	strb r1, [r0]
	movs r5, #0
	ldr r0, [r2]
	ldrb r0, [r0, #0x15]
	cmp r5, r0
	bge _0800ABDC
	adds r6, r2, #0
_0800ABB0:
	ldr r0, [r6]
	lsls r4, r5, #1
	adds r0, #0x48
	adds r0, r0, r4
	movs r1, #0
	ldrsh r0, [r0, r1]
	ldr r1, _0800ABE8 @ =sub_0800ACA0
	bl sub_08007B84
	ldr r0, [r6]
	adds r0, #0x48
	adds r0, r0, r4
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	strb r5, [r0]
	adds r5, #1
	ldr r0, [r6]
	ldrb r0, [r0, #0x15]
	cmp r5, r0
	blt _0800ABB0
_0800ABDC:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800ABE4: .4byte 0x0300151C
_0800ABE8: .4byte sub_0800ACA0

	thumb_func_start sub_0800ABEC
sub_0800ABEC: @ 0x0800ABEC
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _0800AC0C @ =0x0300151C
	ldr r3, [r1]
	adds r3, #0x58
	movs r2, #1
	lsls r2, r0
	ldrb r1, [r3]
	bics r1, r2
	strb r1, [r3]
	movs r1, #0
	bl sub_0800AB54
	pop {r0}
	bx r0
	.align 2, 0
_0800AC0C: .4byte 0x0300151C

	thumb_func_start sub_0800AC10
sub_0800AC10: @ 0x0800AC10
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _0800AC30 @ =0x0300151C
	ldr r3, [r1]
	adds r3, #0x58
	movs r1, #1
	lsls r1, r0
	ldrb r2, [r3]
	orrs r1, r2
	strb r1, [r3]
	movs r1, #1
	bl sub_0800AB54
	pop {r0}
	bx r0
	.align 2, 0
_0800AC30: .4byte 0x0300151C

	thumb_func_start sub_0800AC34
sub_0800AC34: @ 0x0800AC34
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _0800AC54 @ =0x0300151C
	ldr r3, [r1]
	adds r3, #0x58
	movs r1, #1
	lsls r1, r0
	ldrb r2, [r3]
	orrs r1, r2
	strb r1, [r3]
	movs r1, #2
	bl sub_0800AB54
	pop {r0}
	bx r0
	.align 2, 0
_0800AC54: .4byte 0x0300151C

	thumb_func_start sub_0800AC58
sub_0800AC58: @ 0x0800AC58
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _0800AC78 @ =0x0300151C
	ldr r3, [r1]
	adds r3, #0x58
	movs r1, #1
	lsls r1, r0
	ldrb r2, [r3]
	orrs r1, r2
	strb r1, [r3]
	movs r1, #3
	bl sub_0800AB54
	pop {r0}
	bx r0
	.align 2, 0
_0800AC78: .4byte 0x0300151C

	thumb_func_start sub_0800AC7C
sub_0800AC7C: @ 0x0800AC7C
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _0800AC9C @ =0x0300151C
	ldr r3, [r1]
	adds r3, #0x58
	movs r1, #1
	lsls r1, r0
	ldrb r2, [r3]
	orrs r1, r2
	strb r1, [r3]
	movs r1, #4
	bl sub_0800AB54
	pop {r0}
	bx r0
	.align 2, 0
_0800AC9C: .4byte 0x0300151C

	thumb_func_start sub_0800ACA0
sub_0800ACA0: @ 0x0800ACA0
	push {r4, r5, r6, lr}
	bl sub_08007BD4
	adds r6, r0, #0
	ldr r5, _0800AD44 @ =0x0300151C
	ldr r0, [r5]
	ldrb r0, [r0, #2]
	movs r1, #1
	bl sub_080099E0
	adds r4, r0, #0
	movs r1, #0
	bl sub_08009A34
	ldrb r1, [r6]
	lsls r1, r1, #0x15
	movs r0, #0xf0
	lsls r0, r0, #0x10
	adds r1, r1, r0
	asrs r1, r1, #0x10
	adds r0, r4, #0
	movs r2, #0x24
	bl sub_08009A70
	ldr r0, [r5]
	ldr r1, [r0, #0xc]
	adds r0, r4, #0
	bl sub_08009A78
	ldr r0, [r5]
	ldrb r1, [r0, #1]
	adds r0, r4, #0
	bl sub_08009AB4
	ldr r1, _0800AD48 @ =0x0809CC98
	ldr r2, _0800AD4C @ =0x0809CC74
	ldr r0, [r5]
	adds r0, #0x16
	ldrb r3, [r6]
	adds r0, r0, r3
	ldrb r3, [r0]
	adds r0, r4, #0
	bl sub_08009ACC
	adds r0, r4, #0
	movs r1, #1
	bl sub_08009B84
	ldr r1, [r5]
	ldrb r0, [r6]
	lsls r0, r0, #2
	adds r1, #0x1c
	adds r1, r1, r0
	str r4, [r1]
	bl sub_08009DDC
	ldr r5, [r5]
	ldrb r2, [r6]
	lsls r2, r2, #2
	adds r1, r5, #0
	adds r1, #0x30
	adds r1, r1, r2
	str r0, [r1]
	ldrb r0, [r6]
	cmp r0, #0
	bne _0800AD38
	adds r1, r0, #0
	lsls r1, r1, #1
	adds r0, r5, #0
	adds r0, #0x48
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	ldr r1, _0800AD50 @ =sub_0800AD54
	bl sub_08007BA0
_0800AD38:
	ldrb r0, [r6]
	bl sub_0800ABEC
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800AD44: .4byte 0x0300151C
_0800AD48: .4byte 0x0809CC98
_0800AD4C: .4byte 0x0809CC74
_0800AD50: .4byte sub_0800AD54

	thumb_func_start sub_0800AD54
sub_0800AD54: @ 0x0800AD54
	push {r4, r5, r6, lr}
	movs r5, #0
	ldr r1, _0800AD90 @ =0x0300151C
	ldr r0, [r1]
	ldrb r0, [r0, #0x15]
	cmp r5, r0
	bge _0800AD88
	adds r6, r1, #0
_0800AD64:
	ldr r0, [r6]
	lsls r4, r5, #2
	adds r0, #0x30
	adds r0, r0, r4
	ldr r0, [r0]
	bl sub_08009E54
	ldr r0, [r6]
	adds r0, #0x1c
	adds r0, r0, r4
	ldr r0, [r0]
	bl sub_08009A00
	adds r5, #1
	ldr r0, [r6]
	ldrb r0, [r0, #0x15]
	cmp r5, r0
	blt _0800AD64
_0800AD88:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800AD90: .4byte 0x0300151C

	thumb_func_start sub_0800AD94
sub_0800AD94: @ 0x0800AD94
	bx lr
	.align 2, 0

	thumb_func_start sub_0800AD98
sub_0800AD98: @ 0x0800AD98
	push {r4, r5, r6, r7, lr}
	bl sub_08007BD4
	adds r6, r0, #0
	ldr r0, _0800ADC0 @ =0x0300151C
	ldr r7, [r0]
	ldrb r5, [r6]
	lsls r1, r5, #2
	adds r0, r7, #0
	adds r0, #0x1c
	adds r0, r0, r1
	ldr r4, [r0]
	ldrb r0, [r6, #1]
	cmp r0, #1
	beq _0800ADEC
	cmp r0, #1
	bgt _0800ADC4
	cmp r0, #0
	beq _0800ADCA
	b _0800AE36
	.align 2, 0
_0800ADC0: .4byte 0x0300151C
_0800ADC4:
	cmp r0, #2
	beq _0800AE30
	b _0800AE36
_0800ADCA:
	adds r0, r4, #0
	movs r1, #1
	bl sub_08009A34
	ldrb r1, [r6]
	lsls r1, r1, #0x15
	movs r0, #0xf0
	lsls r0, r0, #0x10
	adds r1, r1, r0
	asrs r1, r1, #0x10
	adds r0, r4, #0
	movs r2, #0x24
	bl sub_08009A70
	movs r0, #1
	strb r0, [r6, #1]
	b _0800AE36
_0800ADEC:
	movs r0, #6
	ldrsh r2, [r4, r0]
	subs r2, #8
	ldr r3, _0800AE18 @ =0x0807F674
	lsls r1, r5, #1
	ldrb r0, [r7, #0x1a]
	lsls r0, r0, #3
	adds r1, r1, r0
	adds r1, r1, r3
	movs r0, #0
	ldrsh r1, [r1, r0]
	cmp r2, r1
	bgt _0800AE1C
	movs r0, #8
	ldrsh r2, [r4, r0]
	adds r0, r4, #0
	bl sub_08009A70
	movs r0, #2
	strb r0, [r6, #1]
	b _0800AE36
	.align 2, 0
_0800AE18: .4byte 0x0807F674
_0800AE1C:
	ldrh r1, [r4, #6]
	subs r1, #8
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r0, #8
	ldrsh r2, [r4, r0]
	adds r0, r4, #0
	bl sub_08009A70
	b _0800AE36
_0800AE30:
	adds r0, r5, #0
	bl sub_0800ABEC
_0800AE36:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0800AE3C
sub_0800AE3C: @ 0x0800AE3C
	push {r4, r5, r6, lr}
	bl sub_08007BD4
	adds r5, r0, #0
	ldr r6, _0800AE64 @ =0x0300151C
	ldr r0, [r6]
	ldrb r2, [r5]
	lsls r1, r2, #2
	adds r0, #0x1c
	adds r0, r0, r1
	ldr r4, [r0]
	ldrb r0, [r5, #1]
	cmp r0, #1
	beq _0800AEA0
	cmp r0, #1
	bgt _0800AE68
	cmp r0, #0
	beq _0800AE6E
	b _0800AED6
	.align 2, 0
_0800AE64: .4byte 0x0300151C
_0800AE68:
	cmp r0, #2
	beq _0800AED0
	b _0800AED6
_0800AE6E:
	adds r0, r4, #0
	movs r1, #1
	bl sub_08009A34
	ldr r2, _0800AE9C @ =0x0807F674
	ldrb r1, [r5]
	lsls r1, r1, #1
	ldr r0, [r6]
	ldrb r0, [r0, #0x1a]
	lsls r0, r0, #3
	adds r1, r1, r0
	adds r1, r1, r2
	movs r0, #0
	ldrsh r1, [r1, r0]
	movs r0, #8
	ldrsh r2, [r4, r0]
	adds r0, r4, #0
	bl sub_08009A70
	movs r0, #1
	strb r0, [r5, #1]
	b _0800AED6
	.align 2, 0
_0800AE9C: .4byte 0x0807F674
_0800AEA0:
	movs r1, #6
	ldrsh r0, [r4, r1]
	subs r0, #8
	movs r1, #0x20
	rsbs r1, r1, #0
	cmp r0, r1
	bgt _0800AEBC
	adds r0, r4, #0
	movs r1, #0
	bl sub_08009A34
	movs r0, #2
	strb r0, [r5, #1]
	b _0800AED6
_0800AEBC:
	ldrh r1, [r4, #6]
	subs r1, #8
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r0, #8
	ldrsh r2, [r4, r0]
	adds r0, r4, #0
	bl sub_08009A70
	b _0800AED6
_0800AED0:
	adds r0, r2, #0
	bl sub_0800ABEC
_0800AED6:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_0800AEDC
sub_0800AEDC: @ 0x0800AEDC
	push {r4, r5, r6, r7, lr}
	bl sub_08007BD4
	adds r5, r0, #0
	ldr r7, _0800AF04 @ =0x0300151C
	ldr r3, [r7]
	ldrb r1, [r5]
	lsls r2, r1, #2
	adds r0, r3, #0
	adds r0, #0x1c
	adds r0, r0, r2
	ldr r6, [r0]
	ldrb r4, [r5, #1]
	cmp r4, #1
	beq _0800AF30
	cmp r4, #1
	bgt _0800AF08
	cmp r4, #0
	beq _0800AF0E
	b _0800AF82
	.align 2, 0
_0800AF04: .4byte 0x0300151C
_0800AF08:
	cmp r4, #2
	beq _0800AF7C
	b _0800AF82
_0800AF0E:
	adds r0, r3, #0
	adds r0, #0x30
	adds r0, r0, r2
	ldr r1, [r0]
	adds r0, r6, #0
	bl sub_08009B9C
	ldr r0, [r6, #0x24]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r2, #0
	bl sub_08009E84
	movs r0, #1
	strb r0, [r5, #1]
	strb r4, [r5, #2]
	b _0800AF82
_0800AF30:
	ldr r0, [r6, #0x24]
	ldr r2, _0800AF78 @ =0x0807FBDC
	ldrb r1, [r5, #2]
	lsls r1, r1, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r1, r2, #0
	bl sub_08009E84
	ldrb r0, [r5, #2]
	adds r0, #1
	strb r0, [r5, #2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bls _0800AF82
	ldr r0, [r7]
	adds r0, #0x16
	ldrb r1, [r5]
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r1, #4
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r6, #0
	bl sub_08009AFC
	adds r0, r6, #0
	movs r1, #0
	bl sub_08009B9C
	movs r0, #2
	strb r0, [r5, #1]
	b _0800AF82
	.align 2, 0
_0800AF78: .4byte 0x0807FBDC
_0800AF7C:
	adds r0, r1, #0
	bl sub_0800ABEC
_0800AF82:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0800AF88
sub_0800AF88: @ 0x0800AF88
	push {r4, r5, r6, r7, lr}
	bl sub_08007BD4
	adds r4, r0, #0
	ldr r7, _0800AFB0 @ =0x0300151C
	ldr r2, [r7]
	ldrb r0, [r4]
	lsls r1, r0, #2
	adds r0, r2, #0
	adds r0, #0x1c
	adds r0, r0, r1
	ldr r5, [r0]
	ldrb r6, [r4, #1]
	cmp r6, #1
	beq _0800AFEC
	cmp r6, #1
	bgt _0800AFB4
	cmp r6, #0
	beq _0800AFBA
	b _0800B026
	.align 2, 0
_0800AFB0: .4byte 0x0300151C
_0800AFB4:
	cmp r6, #2
	beq _0800B018
	b _0800B026
_0800AFBA:
	adds r0, r2, #0
	adds r0, #0x30
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r5, #0
	bl sub_08009B9C
	ldr r0, [r5, #0x24]
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r1, r2, #0
	bl sub_08009E84
	ldr r0, [r7]
	adds r0, #0x16
	ldrb r1, [r4]
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r0, r5, #0
	bl sub_08009AFC
	movs r0, #1
	strb r0, [r4, #1]
	strb r6, [r4, #2]
	b _0800B026
_0800AFEC:
	ldr r0, [r5, #0x24]
	ldr r2, _0800B014 @ =0x0807FBE4
	ldrb r1, [r4, #2]
	lsls r1, r1, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r1, r2, #0
	bl sub_08009E84
	ldrb r0, [r4, #2]
	adds r0, #1
	strb r0, [r4, #2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bls _0800B026
	movs r0, #2
	strb r0, [r4, #1]
	b _0800B026
	.align 2, 0
_0800B014: .4byte 0x0807FBE4
_0800B018:
	adds r0, r5, #0
	movs r1, #0
	bl sub_08009B9C
	ldrb r0, [r4]
	bl sub_0800ABEC
_0800B026:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0800B02C
sub_0800B02C: @ 0x0800B02C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sb, r0
	ldr r4, _0800B168 @ =0x030043D0
	movs r0, #0
	adds r1, r4, #0
	movs r2, #0x2c
	bl sub_08007EFC
	mov r0, sb
	str r0, [r4]
	movs r5, #0
	movs r7, #0
	adds r2, r4, #0
	adds r2, #0x14
_0800B050:
	lsls r1, r7, #2
	mov r0, sb
	adds r0, #8
	adds r0, r0, r1
	ldr r6, [r0]
	ldr r3, _0800B168 @ =0x030043D0
	cmp r6, #0
	beq _0800B092
	mov r1, sb
	ldrb r1, [r1, #6]
	cmp r7, r1
	bne _0800B078
	ldrb r1, [r6]
	ldrb r0, [r6, #2]
	muls r0, r1, r0
	strh r0, [r4, #4]
	ldrb r1, [r6, #1]
	ldrb r0, [r6, #3]
	muls r0, r1, r0
	strh r0, [r4, #6]
_0800B078:
	ldrb r0, [r4, #8]
	adds r0, #1
	strb r0, [r4, #8]
	str r6, [r2]
	ldrb r1, [r6]
	ldrb r0, [r6, #2]
	muls r1, r0, r1
	ldrb r0, [r6, #1]
	muls r1, r0, r1
	ldrb r0, [r6, #3]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r5, r5, r0
_0800B092:
	adds r2, #8
	adds r7, #1
	cmp r7, #2
	ble _0800B050
	movs r7, #0
	ldrb r2, [r3, #8]
	cmp r7, r2
	bge _0800B0CC
	adds r4, r3, #0
_0800B0A4:
	lsls r0, r7, #3
	adds r1, r4, #0
	adds r1, #0x14
	adds r0, r0, r1
	ldr r6, [r0]
	ldr r0, [r6, #0x10]
	ldrb r1, [r6, #0xa]
	lsls r1, r1, #0xe
	ldrh r2, [r6, #0xc]
	lsls r2, r2, #5
	movs r3, #0xc0
	lsls r3, r3, #0x13
	adds r2, r2, r3
	adds r1, r1, r2
	bl sub_08008374
	adds r7, #1
	ldrb r6, [r4, #8]
	cmp r7, r6
	blt _0800B0A4
_0800B0CC:
	adds r0, r5, #0
	bl sub_08007CE8
	ldr r1, _0800B16C @ =0x0807FC00
	ldr r1, [r1]
	bl call_via_r1
	mov r1, sb
	ldr r0, [r1]
	ldrb r1, [r1, #4]
	lsls r1, r1, #5
	movs r2, #0xa0
	lsls r2, r2, #0x13
	adds r1, r1, r2
	bl sub_08008308
	movs r7, #0
	ldr r0, _0800B168 @ =0x030043D0
	ldrb r2, [r0, #8]
	cmp r7, r2
	bge _0800B150
	mov r8, r0
	ldr r3, _0800B170 @ =0x030024E0
	mov ip, r3
	movs r6, #0
	mov sl, r6
_0800B100:
	lsls r0, r7, #3
	mov r1, r8
	adds r1, #0x14
	adds r0, r0, r1
	ldr r6, [r0]
	mov r0, sb
	ldrb r3, [r0, #5]
	adds r3, r3, r7
	lsls r4, r3, #1
	mov r5, ip
	adds r5, #2
	adds r5, r4, r5
	ldrb r2, [r6, #0xa]
	lsls r2, r2, #2
	movs r0, #0xc
	ands r2, r0
	ldrb r0, [r6, #0xb]
	lsls r0, r0, #8
	movs r6, #0xf8
	lsls r6, r6, #5
	adds r1, r6, #0
	ands r0, r1
	orrs r2, r0
	movs r0, #3
	ands r3, r0
	orrs r2, r3
	strh r2, [r5]
	mov r0, ip
	adds r0, #0xa
	adds r0, r4, r0
	mov r1, sl
	strh r1, [r0]
	ldr r2, _0800B174 @ =0x030024F2
	adds r4, r4, r2
	strh r1, [r4]
	adds r7, #1
	mov r3, r8
	ldrb r3, [r3, #8]
	cmp r7, r3
	blt _0800B100
_0800B150:
	ldr r0, _0800B178 @ =sub_0800B320
	movs r1, #0x80
	bl sub_08009460
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800B168: .4byte 0x030043D0
_0800B16C: .4byte 0x0807FC00
_0800B170: .4byte 0x030024E0
_0800B174: .4byte 0x030024F2
_0800B178: .4byte sub_0800B320

	thumb_func_start sub_0800B17C
sub_0800B17C: @ 0x0800B17C
	push {r4, r5, r6, r7, lr}
	movs r2, #0
	ldr r0, _0800B1C0 @ =0x030043D0
	adds r6, r0, #0
	ldrb r0, [r6, #8]
	cmp r2, r0
	bge _0800B1AC
	adds r4, r6, #0
	ldr r5, _0800B1C4 @ =0x030024EA
	movs r3, #0
	adds r7, r5, #0
	adds r7, #8
_0800B194:
	ldr r0, [r4]
	ldrb r0, [r0, #5]
	adds r0, r0, r2
	lsls r0, r0, #1
	adds r1, r0, r5
	strh r3, [r1]
	adds r0, r0, r7
	strh r3, [r0]
	adds r2, #1
	ldrb r0, [r4, #8]
	cmp r2, r0
	blt _0800B194
_0800B1AC:
	ldr r0, [r6, #0x10]
	bl sub_08007CF8
	ldr r0, _0800B1C8 @ =sub_0800B320
	bl sub_080094F4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800B1C0: .4byte 0x030043D0
_0800B1C4: .4byte 0x030024EA
_0800B1C8: .4byte sub_0800B320

	thumb_func_start sub_0800B1CC
sub_0800B1CC: @ 0x0800B1CC
	push {lr}
	ldr r0, _0800B1D8 @ =sub_0800B320
	bl sub_080094F4
	pop {r0}
	bx r0
	.align 2, 0
_0800B1D8: .4byte sub_0800B320

	thumb_func_start sub_0800B1DC
sub_0800B1DC: @ 0x0800B1DC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	movs r6, #0
	ldr r0, _0800B26C @ =0x030043D0
	ldr r1, _0800B270 @ =sub_0800B320
	mov sl, r1
	ldrb r2, [r0, #8]
	cmp r6, r2
	bge _0800B254
	mov ip, r0
	ldr r7, _0800B274 @ =0x030024E0
	mov r8, r6
	movs r5, #0x12
	adds r5, r5, r7
	mov sb, r5
_0800B202:
	lsls r0, r6, #3
	mov r1, ip
	adds r1, #0x14
	adds r0, r0, r1
	ldr r1, [r0]
	mov r2, ip
	ldr r0, [r2]
	ldrb r3, [r0, #5]
	adds r3, r3, r6
	lsls r4, r3, #1
	adds r5, r7, #2
	adds r5, r4, r5
	str r5, [sp]
	ldrb r2, [r1, #0xa]
	lsls r2, r2, #2
	movs r0, #0xc
	ands r2, r0
	ldrb r0, [r1, #0xb]
	lsls r0, r0, #8
	movs r5, #0xf8
	lsls r5, r5, #5
	adds r1, r5, #0
	ands r0, r1
	orrs r2, r0
	movs r0, #3
	ands r3, r0
	orrs r2, r3
	ldr r0, [sp]
	strh r2, [r0]
	adds r0, r7, #0
	adds r0, #0xa
	adds r0, r4, r0
	mov r1, r8
	strh r1, [r0]
	add r4, sb
	strh r1, [r4]
	adds r6, #1
	mov r2, ip
	ldrb r2, [r2, #8]
	cmp r6, r2
	blt _0800B202
_0800B254:
	mov r0, sl
	movs r1, #0x80
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
_0800B26C: .4byte 0x030043D0
_0800B270: .4byte sub_0800B320
_0800B274: .4byte 0x030024E0

	thumb_func_start sub_0800B278
sub_0800B278: @ 0x0800B278
	push {r4, lr}
	adds r2, r0, #0
	adds r3, r1, #0
	cmp r2, #0
	bge _0800B284
	movs r2, #0
_0800B284:
	cmp r3, #0
	bge _0800B28A
	movs r3, #0
_0800B28A:
	adds r1, r2, #0
	adds r1, #0xf0
	ldr r4, _0800B2B8 @ =0x030043D0
	ldrh r0, [r4, #4]
	lsls r0, r0, #3
	cmp r1, r0
	ble _0800B29C
	adds r2, r0, #0
	subs r2, #0xf0
_0800B29C:
	adds r1, r3, #0
	adds r1, #0xa0
	ldrh r0, [r4, #6]
	lsls r0, r0, #3
	cmp r1, r0
	ble _0800B2AC
	adds r3, r0, #0
	subs r3, #0xa0
_0800B2AC:
	strh r2, [r4, #0x28]
	strh r3, [r4, #0x2a]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800B2B8: .4byte 0x030043D0

	thumb_func_start sub_0800B2BC
sub_0800B2BC: @ 0x0800B2BC
	ldr r0, _0800B2C4 @ =0x030043D0
	ldrh r0, [r0, #0x28]
	bx lr
	.align 2, 0
_0800B2C4: .4byte 0x030043D0

	thumb_func_start sub_0800B2C8
sub_0800B2C8: @ 0x0800B2C8
	ldr r0, _0800B2D0 @ =0x030043D0
	ldrh r0, [r0, #0x2a]
	bx lr
	.align 2, 0
_0800B2D0: .4byte 0x030043D0

	thumb_func_start sub_0800B2D4
sub_0800B2D4: @ 0x0800B2D4
	ldr r0, _0800B2E0 @ =0x030043D0
	ldrh r0, [r0, #4]
	lsls r0, r0, #0x13
	lsrs r0, r0, #0x10
	bx lr
	.align 2, 0
_0800B2E0: .4byte 0x030043D0

	thumb_func_start sub_0800B2E4
sub_0800B2E4: @ 0x0800B2E4
	ldr r0, _0800B2F0 @ =0x030043D0
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x13
	lsrs r0, r0, #0x10
	bx lr
	.align 2, 0
_0800B2F0: .4byte 0x030043D0

	thumb_func_start sub_0800B2F4
sub_0800B2F4: @ 0x0800B2F4
	push {r4, lr}
	lsls r0, r0, #0x18
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldr r4, _0800B31C @ =0x030043D0
	lsrs r0, r0, #0x15
	adds r3, r4, #0
	adds r3, #0x10
	adds r0, r0, r3
	ldrh r3, [r4, #4]
	muls r2, r3, r2
	adds r2, r2, r1
	lsls r2, r2, #1
	ldr r0, [r0]
	adds r0, r0, r2
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0800B31C: .4byte 0x030043D0

	thumb_func_start sub_0800B320
sub_0800B320: @ 0x0800B320
	push {lr}
	ldr r0, _0800B330 @ =0x0807FC04
	ldr r0, [r0]
	bl call_via_r0
	pop {r0}
	bx r0
	.align 2, 0
_0800B330: .4byte 0x0807FC04

	thumb_func_start sub_0800B334
sub_0800B334: @ 0x0800B334
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _0800B354 @ =0x04000204
	ldrh r0, [r0]
	adds r4, r0, #0
	cmp r4, #0
	bne _0800B35C
	movs r0, #0xff
	bl RegisterRamReset
	ldr r0, _0800B358 @ =0x03004418
	strb r4, [r0]
	b _0800B368
	.align 2, 0
_0800B354: .4byte 0x04000204
_0800B358: .4byte 0x03004418
_0800B35C:
	movs r0, #0xff
	bl RegisterRamReset
	ldr r1, _0800B440 @ =0x03004418
	movs r0, #1
	strb r0, [r1]
_0800B368:
	ldr r1, _0800B444 @ =0x04000204
	ldr r2, _0800B448 @ =0x00004014
	adds r0, r2, #0
	strh r0, [r1]
	ldr r5, _0800B44C @ =0x04000200
	ldr r1, _0800B450 @ =0x00002001
	adds r0, r1, #0
	strh r0, [r5]
	ldr r1, _0800B454 @ =0x04000208
	movs r0, #1
	strh r0, [r1]
	ldr r4, _0800B458 @ =0x04000004
	movs r0, #0
	strh r0, [r4]
	bl sub_0800B470
	ldrh r0, [r4]
	movs r1, #8
	orrs r0, r1
	strh r0, [r4]
	movs r1, #0xa0
	lsls r1, r1, #0x13
	ldr r2, _0800B45C @ =0x00007FFF
	adds r0, r2, #0
	strh r0, [r1]
	bl sub_08009330
	ldr r0, _0800B460 @ =0x03004400
	mov sl, r0
	ldr r1, _0800B464 @ =0x03001520
	mov sb, r1
	ldr r2, _0800B468 @ =0x030024E0
	mov r8, r2
	movs r7, #0
	adds r6, r5, #0
_0800B3AE:
	bl sub_0800B520
	mov r1, sl
	ldrb r0, [r1, #0xc]
	cmp r0, #0
	beq _0800B3AE
	bl get_cmpr_game_code_ptr_800186c
	cmp r0, #0
	beq _0800B3AE
	bl sub_0800B818
	mov r2, sb
	strh r0, [r2]
	mov r1, r8
	ldrh r0, [r1]
	ldr r2, _0800B46C @ =0x000080FF
	adds r1, r2, #0
	ands r0, r1
	mov r1, r8
	strh r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #0x13
	strh r0, [r2]
	bl sub_0806F710
	bl sub_0806FBCC
	bl sub_08009330
	bl sub_08009330
	movs r0, #1
	bl sub_08001850
	bl load_minigame_dll_8001884
	ldr r0, _0800B450 @ =0x00002001
	adds r5, r0, #0
	strh r5, [r6]
	ldr r4, _0800B454 @ =0x04000208
	strh r7, [r4]
	movs r0, #0x80
	lsls r0, r0, #0x12
	bl call_via_r0
	strh r7, [r4]
	strh r5, [r6]
	movs r0, #1
	strh r0, [r4]
	bl sub_08009330
	bl sub_08009330
	bl sub_0800B660
	ldr r2, _0800B458 @ =0x04000004
	ldrh r0, [r2]
	movs r1, #8
	orrs r0, r1
	strh r0, [r2]
	bl sub_08009330
	bl sub_08009330
	movs r2, #0
	mov r1, sl
	strb r2, [r1, #0xc]
	mov r1, sb
	ldrh r0, [r1]
	bl sub_0800B80C
	b _0800B3AE
	.align 2, 0
_0800B440: .4byte 0x03004418
_0800B444: .4byte 0x04000204
_0800B448: .4byte 0x00004014
_0800B44C: .4byte 0x04000200
_0800B450: .4byte 0x00002001
_0800B454: .4byte 0x04000208
_0800B458: .4byte 0x04000004
_0800B45C: .4byte 0x00007FFF
_0800B460: .4byte 0x03004400
_0800B464: .4byte 0x03001520
_0800B468: .4byte 0x030024E0
_0800B46C: .4byte 0x000080FF

	thumb_func_start sub_0800B470
sub_0800B470: @ 0x0800B470
	push {lr}
	sub sp, #4
	bl sub_08007D08
	bl sub_0800925C
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r1, _0800B4E4 @ =0x03004400
	ldr r2, _0800B4E8 @ =0x0100000C
	mov r0, sp
	bl CpuSet
	bl sub_08008014
	bl sub_0800943C
	bl sub_08007F6C
	bl sub_0800987C
	ldr r0, _0800B4EC @ =0x087C5434
	ldr r1, _0800B4F0 @ =0x03000000
	ldr r2, _0800B4F4 @ =0x087C67E0
	subs r2, r2, r0
	bl sub_08007EA4
	ldr r0, _0800B4F8 @ =0x087C67E0
	ldr r1, _0800B4FC @ =0x0203A220
	ldr r2, _0800B500 @ =0x087C7168
	subs r2, r2, r0
	bl sub_08007EA4
	bl sub_0806F558
	bl sub_08009F54
	bl sub_08008C34
	bl sub_0800915C
	bl sub_0800967C
	bl sub_08009038
	bl sub_0800B998
	bl sub_0800B508
	bl sub_08006E34
	ldr r1, _0800B504 @ =0x0300441C
	movs r0, #1
	strh r0, [r1]
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_0800B4E4: .4byte 0x03004400
_0800B4E8: .4byte 0x0100000C
_0800B4EC: .4byte 0x087C5434
_0800B4F0: .4byte 0x03000000
_0800B4F4: .4byte 0x087C67E0
_0800B4F8: .4byte 0x087C67E0
_0800B4FC: .4byte 0x0203A220
_0800B500: .4byte 0x087C7168
_0800B504: .4byte 0x0300441C

	thumb_func_start sub_0800B508
sub_0800B508: @ 0x0800B508
	push {lr}
	bl sub_08007CD4
	bl sub_0800282C
	bl sub_08007848
	bl sub_08008640
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800B520
sub_0800B520: @ 0x0800B520
	push {lr}
	ldr r2, _0800B54C @ =0x02037EB0
	ldrb r0, [r2, #4]
	cmp r0, #0
	beq _0800B55C
	adds r0, r2, #0
	adds r0, #0x90
	ldr r0, [r0]
	movs r1, #0xc0
	lsls r1, r1, #1
	ands r0, r1
	subs r1, #0x80
	cmp r0, r1
	bne _0800B546
	adds r0, r2, #0
	adds r0, #0x88
	ldr r0, [r0]
	cmp r0, #3
	bls _0800B550
_0800B546:
	bl VBlankIntrWait
	b _0800B558
	.align 2, 0
_0800B54C: .4byte 0x02037EB0
_0800B550:
	movs r0, #1
	movs r1, #0x80
	bl IntrWait
_0800B558:
	bl sub_08003348
_0800B55C:
	bl sub_08007F8C
	bl sub_0800B568
	pop {r0}
	bx r0

	thumb_func_start sub_0800B568
sub_0800B568: @ 0x0800B568
	push {r4, r5, lr}
	ldr r4, _0800B63C @ =0x03004400
	movs r0, #0
	strb r0, [r4, #4]
	ldrb r0, [r4, #5]
	cmp r0, #0
	bne _0800B59A
	ldr r0, _0800B640 @ =0x02037EB0
	ldrb r0, [r0, #4]
	cmp r0, #0
	bne _0800B59A
	ldr r2, _0800B644 @ =0x030024B0
	ldrh r1, [r2]
	movs r3, #0xf
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _0800B59A
	ldrh r1, [r2, #2]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0xf
	bne _0800B59A
	movs r0, #1
	strb r0, [r4, #4]
_0800B59A:
	bl sub_080028B0
	bl sub_080078AC
	bl sub_08009EC4
	bl sub_08008C60
	bl sub_08008EE4
	bl sub_08009170
	bl sub_080096C4
	bl sub_08009FAC
	ldr r1, _0800B648 @ =0x0300441C
	movs r0, #1
	strh r0, [r1]
	ldr r0, _0800B640 @ =0x02037EB0
	ldrb r0, [r0, #4]
	cmp r0, #0
	bne _0800B5CC
	bl sub_08009330
_0800B5CC:
	ldr r5, _0800B63C @ =0x03004400
	ldrb r0, [r5, #4]
	cmp r0, #0
	beq _0800B630
	ldr r1, _0800B64C @ =0x040000B0
	ldrh r2, [r1, #0xa]
	ldr r4, _0800B650 @ =0x0000C5FF
	adds r0, r4, #0
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r2, [r1, #0xa]
	ldr r3, _0800B654 @ =0x00007FFF
	adds r0, r3, #0
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	adds r1, #0xc
	ldrh r2, [r1, #0xa]
	adds r0, r4, #0
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r2, [r1, #0xa]
	adds r0, r3, #0
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	adds r1, #0xc
	ldrh r2, [r1, #0xa]
	adds r0, r4, #0
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r2, [r1, #0xa]
	adds r0, r3, #0
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	ldr r0, _0800B658 @ =0x040000D4
	ldrh r1, [r0, #0xa]
	ands r4, r1
	strh r4, [r0, #0xa]
	ldrh r1, [r0, #0xa]
	ands r3, r1
	strh r3, [r0, #0xa]
	ldrh r0, [r0, #0xa]
	ldr r1, _0800B65C @ =0x03007FFA
	movs r0, #0
	strb r0, [r1]
	movs r0, #0
	bl sub_08070B70
_0800B630:
	ldr r0, [r5]
	adds r0, #1
	str r0, [r5]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800B63C: .4byte 0x03004400
_0800B640: .4byte 0x02037EB0
_0800B644: .4byte 0x030024B0
_0800B648: .4byte 0x0300441C
_0800B64C: .4byte 0x040000B0
_0800B650: .4byte 0x0000C5FF
_0800B654: .4byte 0x00007FFF
_0800B658: .4byte 0x040000D4
_0800B65C: .4byte 0x03007FFA

	thumb_func_start sub_0800B660
sub_0800B660: @ 0x0800B660
	push {lr}
	bl sub_08007D9C
	bl sub_0800925C
	bl sub_08008030
	bl sub_0800943C
	bl sub_08007F6C
	bl sub_0800987C
	ldr r0, _0800B6C4 @ =0x087C5434
	ldr r1, _0800B6C8 @ =0x03000000
	ldr r2, _0800B6CC @ =0x087C67E0
	subs r2, r2, r0
	bl sub_08007EA4
	ldr r0, _0800B6D0 @ =0x087C67E0
	ldr r1, _0800B6D4 @ =0x0203A220
	ldr r2, _0800B6D8 @ =0x087C7168
	subs r2, r2, r0
	bl sub_08007EA4
	bl sub_0806FC4C
	bl sub_08009F54
	bl sub_08008C34
	bl sub_0800915C
	bl sub_0800967C
	bl sub_08009038
	bl sub_0800B998
	bl sub_08007CD4
	bl sub_0800282C
	bl sub_08007848
	bl sub_080086A4
	pop {r0}
	bx r0
	.align 2, 0
_0800B6C4: .4byte 0x087C5434
_0800B6C8: .4byte 0x03000000
_0800B6CC: .4byte 0x087C67E0
_0800B6D0: .4byte 0x087C67E0
_0800B6D4: .4byte 0x0203A220
_0800B6D8: .4byte 0x087C7168

	thumb_func_start sub_0800B6DC
sub_0800B6DC: @ 0x0800B6DC
	push {lr}
	adds r1, r0, #0
	cmp r1, #0
	bge _0800B6E6
	movs r1, #0
_0800B6E6:
	ldr r0, _0800B6F8 @ =0x000F423F
	cmp r1, r0
	ble _0800B6EE
	adds r1, r0, #0
_0800B6EE:
	ldr r0, _0800B6FC @ =0x03004400
	str r1, [r0, #0x10]
	pop {r0}
	bx r0
	.align 2, 0
_0800B6F8: .4byte 0x000F423F
_0800B6FC: .4byte 0x03004400

	thumb_func_start sub_0800B700
sub_0800B700: @ 0x0800B700
	push {r4, r5, r6, r7, lr}
	ldr r7, _0800B75C @ =0x030024E0
	movs r2, #0
	movs r3, #0
	movs r0, #0xf0
	strh r0, [r7, #0x3c]
	adds r4, r7, #0
	adds r4, #0x40
	movs r0, #0xa0
	strh r0, [r4]
	adds r1, r7, #0
	adds r1, #0x44
	movs r0, #0x3f
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x46
	strb r2, [r0]
	ldrh r0, [r7]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r7]
	movs r0, #0xa0
	lsls r0, r0, #0x13
	strh r3, [r0]
	movs r0, #1
	bl sub_08002B98
_0800B73A:
	ldrh r1, [r4]
	lsrs r5, r1, #8
	movs r0, #0xff
	adds r6, r1, #0
	ands r6, r0
	adds r5, #2
	subs r6, #2
	cmp r5, r6
	bge _0800B760
	lsls r0, r5, #8
	orrs r0, r6
	strh r0, [r4]
	movs r0, #1
	bl sub_08002B98
	b _0800B73A
	.align 2, 0
_0800B75C: .4byte 0x030024E0
_0800B760:
	adds r1, r7, #0
	adds r1, #0x44
	movs r0, #0
	strb r0, [r1]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800B770
sub_0800B770: @ 0x0800B770
	push {r4, r5, r6, r7, lr}
	ldr r7, _0800B7DC @ =0x030024E0
	movs r2, #0
	movs r3, #0
	movs r0, #0xf0
	strh r0, [r7, #0x3c]
	adds r4, r7, #0
	adds r4, #0x40
	ldr r0, _0800B7E0 @ =0x00005050
	strh r0, [r4]
	adds r1, r7, #0
	adds r1, #0x44
	movs r0, #0x3f
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x46
	strb r2, [r0]
	ldrh r0, [r7]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r7]
	movs r0, #0xa0
	lsls r0, r0, #0x13
	strh r3, [r0]
	movs r0, #1
	bl sub_08002B98
_0800B7AA:
	ldrh r0, [r4]
	lsrs r5, r0, #8
	movs r1, #0xff
	adds r6, r0, #0
	ands r6, r1
	subs r0, r5, #2
	adds r5, r0, #0
	adds r6, #2
	cmp r0, #0
	bge _0800B7C0
	movs r5, #0
_0800B7C0:
	cmp r6, #0xa0
	ble _0800B7C6
	movs r6, #0xa0
_0800B7C6:
	cmp r5, #0
	bne _0800B7CE
	cmp r6, #0xa0
	beq _0800B7E4
_0800B7CE:
	lsls r0, r5, #8
	orrs r0, r6
	strh r0, [r4]
	movs r0, #1
	bl sub_08002B98
	b _0800B7AA
	.align 2, 0
_0800B7DC: .4byte 0x030024E0
_0800B7E0: .4byte 0x00005050
_0800B7E4:
	ldrh r1, [r7]
	ldr r0, _0800B7F4 @ =0x0000DFFF
	ands r0, r1
	strh r0, [r7]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800B7F4: .4byte 0x0000DFFF

	thumb_func_start sub_0800B7F8
sub_0800B7F8: @ 0x0800B7F8
	push {lr}
	ldr r0, _0800B808 @ =0x04000100
	ldrh r0, [r0]
	bl sub_08072AC4
	pop {r0}
	bx r0
	.align 2, 0
_0800B808: .4byte 0x04000100

	thumb_func_start sub_0800B80C
sub_0800B80C: @ 0x0800B80C
	push {lr}
	bl sub_08072AC4
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800B818
sub_0800B818: @ 0x0800B818
	push {lr}
	bl sub_08072AD0
	lsls r0, r0, #1
	lsrs r0, r0, #0x10
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0800B828
sub_0800B828: @ 0x0800B828
	push {r4, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	bl sub_0800B818
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	muls r0, r4, r0
	lsrs r0, r0, #0x10
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0800B844
sub_0800B844: @ 0x0800B844
	lsls r1, r1, #0x10
	lsrs r2, r1, #0x15
	lsls r2, r2, #2
	adds r2, r2, r0
	movs r0, #0xf8
	lsls r0, r0, #0xd
	ands r0, r1
	lsrs r0, r0, #0x10
	movs r1, #1
	lsls r1, r0
	ldr r0, [r2]
	orrs r0, r1
	str r0, [r2]
	bx lr

	thumb_func_start sub_0800B860
sub_0800B860: @ 0x0800B860
	lsls r1, r1, #0x10
	lsrs r2, r1, #0x15
	lsls r2, r2, #2
	adds r2, r2, r0
	movs r0, #0xf8
	lsls r0, r0, #0xd
	ands r0, r1
	lsrs r0, r0, #0x10
	movs r1, #1
	lsls r1, r0
	ldr r0, [r2]
	bics r0, r1
	str r0, [r2]
	bx lr

	thumb_func_start sub_0800B87C
sub_0800B87C: @ 0x0800B87C
	push {lr}
	lsls r1, r1, #0x10
	lsrs r2, r1, #0x15
	lsls r2, r2, #2
	adds r2, r2, r0
	movs r0, #0xf8
	lsls r0, r0, #0xd
	ands r0, r1
	lsrs r0, r0, #0x10
	movs r1, #1
	lsls r1, r0
	ldr r0, [r2]
	ands r0, r1
	cmp r0, #0
	bne _0800B89E
	movs r0, #0
	b _0800B8A0
_0800B89E:
	movs r0, #1
_0800B8A0:
	pop {r1}
	bx r1

	thumb_func_start sub_0800B8A4
sub_0800B8A4: @ 0x0800B8A4
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	lsls r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	movs r6, #0
	lsrs r4, r1, #0x10
	cmp r4, r5
	bge _0800B8D2
_0800B8B6:
	lsls r1, r4, #0x10
	lsrs r1, r1, #0x10
	adds r0, r7, #0
	bl sub_0800B87C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0800B8CC
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
_0800B8CC:
	adds r4, #1
	cmp r4, r5
	blt _0800B8B6
_0800B8D2:
	adds r0, r6, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0800B8DC
sub_0800B8DC: @ 0x0800B8DC
	push {r4, r5, lr}
	adds r5, r1, #0
	adds r4, r2, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_0800B8A4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	subs r4, r4, r5
	subs r4, r4, r0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0800B908
sub_0800B908: @ 0x0800B908
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov sb, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	lsls r2, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r7, r3, #0x10
	lsrs r4, r2, #0x10
	movs r6, #0
	b _0800B926
_0800B924:
	adds r4, #1
_0800B926:
	lsls r5, r4, #0x10
	cmp r4, r7
	bge _0800B942
	lsrs r1, r5, #0x10
	mov r0, sb
	bl sub_0800B87C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0800B924
	adds r0, r6, #0
	adds r6, #1
	cmp r0, r8
	bne _0800B924
_0800B942:
	lsrs r0, r5, #0x10
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0800B950
sub_0800B950: @ 0x0800B950
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov sb, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	lsls r2, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r7, r3, #0x10
	lsrs r4, r2, #0x10
	movs r6, #0
	b _0800B96E
_0800B96C:
	adds r4, #1
_0800B96E:
	lsls r5, r4, #0x10
	cmp r4, r7
	bge _0800B98A
	lsrs r1, r5, #0x10
	mov r0, sb
	bl sub_0800B87C
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0800B96C
	adds r0, r6, #0
	adds r6, #1
	cmp r0, r8
	bne _0800B96C
_0800B98A:
	lsrs r0, r5, #0x10
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0800B998
sub_0800B998: @ 0x0800B998
	push {lr}
	ldr r1, _0800B9A8 @ =0x03001528
	movs r0, #0
	movs r2, #0xac
	bl sub_08007EFC
	pop {r0}
	bx r0
	.align 2, 0
_0800B9A8: .4byte 0x03001528

	thumb_func_start sub_0800B9AC
sub_0800B9AC: @ 0x0800B9AC
	push {r4, r5, r6, r7, lr}
	ldr r0, _0800BA38 @ =0x03001528
	ldr r3, [r0, #4]
	cmp r3, #0
	beq _0800BA30
	ldr r7, _0800BA3C @ =0x040000D4
_0800B9B8:
	movs r5, #0
	ldr r4, [r3, #8]
	ldr r1, [r4, #8]
	ldrh r0, [r3, #2]
	lsls r0, r0, #3
	adds r1, r1, r0
	ldrh r0, [r3, #4]
	cmp r0, #0
	bne _0800B9CC
	movs r5, #1
_0800B9CC:
	adds r0, #1
	movs r2, #0
	mov ip, r2
	strh r0, [r3, #4]
	ldr r6, _0800BA40 @ =0x0000FFFF
	adds r2, r6, #0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrb r6, [r1]
	cmp r0, r6
	bls _0800BA02
	mov r0, ip
	strh r0, [r3, #4]
	ldrh r0, [r3, #2]
	adds r0, #1
	strh r0, [r3, #2]
	ands r0, r2
	ldrb r1, [r4]
	cmp r0, r1
	blo _0800B9F8
	mov r2, ip
	strh r2, [r3, #2]
_0800B9F8:
	ldrh r0, [r3, #2]
	lsls r0, r0, #3
	ldr r1, [r4, #8]
	adds r1, r1, r0
	movs r5, #1
_0800BA02:
	cmp r5, #0
	beq _0800BA2A
	ldr r0, [r1, #4]
	str r0, [r7]
	ldrb r2, [r4, #1]
	lsls r2, r2, #0xe
	ldrh r0, [r4, #2]
	lsls r0, r0, #5
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r0, r0, r1
	adds r2, r2, r0
	str r2, [r7, #4]
	ldrh r0, [r4, #4]
	lsls r0, r0, #4
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r7, #8]
	ldr r0, [r7, #8]
_0800BA2A:
	ldr r3, [r3, #0x10]
	cmp r3, #0
	bne _0800B9B8
_0800BA30:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800BA38: .4byte 0x03001528
_0800BA3C: .4byte 0x040000D4
_0800BA40: .4byte 0x0000FFFF

	thumb_func_start sub_0800BA44
sub_0800BA44: @ 0x0800BA44
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	movs r5, #0
	ldr r4, _0800BA98 @ =0x03001528
	movs r6, #0
_0800BA4E:
	ldrb r3, [r4]
	adds r0, r3, r5
	adds r1, r0, #0
	cmp r0, #0
	bge _0800BA5A
	adds r1, r0, #7
_0800BA5A:
	asrs r1, r1, #3
	lsls r1, r1, #3
	subs r1, r0, r1
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldrb r1, [r0, #0xc]
	cmp r1, #0
	bne _0800BAAE
	adds r2, r3, #1
	adds r0, r2, #0
	asrs r0, r0, #3
	lsls r0, r0, #3
	subs r0, r2, r0
	strb r0, [r4]
	adds r0, r4, #0
	adds r0, #0xc
	adds r2, r6, r0
	movs r0, #1
	strb r0, [r2]
	strh r1, [r2, #4]
	strh r1, [r2, #2]
	str r7, [r2, #8]
	strb r5, [r2, #1]
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0800BA9C
	str r2, [r0, #0x10]
	b _0800BA9E
	.align 2, 0
_0800BA98: .4byte 0x03001528
_0800BA9C:
	str r2, [r4, #4]
_0800BA9E:
	ldr r0, [r4, #8]
	str r0, [r2, #0xc]
	movs r0, #0
	str r0, [r2, #0x10]
	str r2, [r4, #8]
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	b _0800BAB8
_0800BAAE:
	adds r6, #0x14
	adds r5, #1
	cmp r5, #7
	ble _0800BA4E
	movs r0, #8
_0800BAB8:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0800BAC0
sub_0800BAC0: @ 0x0800BAC0
	push {lr}
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #7
	bhi _0800BB12
	ldr r0, _0800BAE4 @ =0x03001528
	ldr r1, [r0, #4]
	adds r3, r0, #0
	cmp r1, #0
	beq _0800BB12
_0800BAD4:
	ldrb r0, [r1, #1]
	cmp r0, r2
	beq _0800BAE8
	ldr r1, [r1, #0x10]
	cmp r1, #0
	bne _0800BAD4
	b _0800BB12
	.align 2, 0
_0800BAE4: .4byte 0x03001528
_0800BAE8:
	ldr r2, [r1, #0xc]
	cmp r2, #0
	beq _0800BAF2
	ldr r0, [r1, #0x10]
	str r0, [r2, #0x10]
_0800BAF2:
	ldr r2, [r1, #0x10]
	cmp r2, #0
	beq _0800BAFC
	ldr r0, [r1, #0xc]
	str r0, [r2, #0xc]
_0800BAFC:
	adds r2, r3, #0
	ldr r0, [r2, #4]
	cmp r0, r1
	bne _0800BB08
	ldr r0, [r1, #0x10]
	str r0, [r2, #4]
_0800BB08:
	ldr r0, [r3, #8]
	cmp r0, r1
	bne _0800BB12
	ldr r0, [r1, #0xc]
	str r0, [r3, #8]
_0800BB12:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800BB18
sub_0800BB18: @ 0x0800BB18
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	cmp r0, #5
	beq _0800BBF6
	ldr r0, _0800BCA0 @ =0x030013AC
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r1, #0
	strb r1, [r0]
	movs r4, #0
	ldr r5, _0800BCA4 @ =0x0807FD60
_0800BB3A:
	ldrb r0, [r5]
	bl sub_08001A00
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0800BB72
	lsls r1, r4, #0x10
	lsrs r1, r1, #0x10
	ldr r0, _0800BCA8 @ =0x03004428
	bl sub_0800B87C
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0800BB72
	ldr r0, _0800BCA0 @ =0x030013AC
	ldr r3, [r0]
	movs r0, #0x80
	lsls r0, r0, #1
	adds r2, r3, r0
	ldrb r1, [r2]
	adds r0, r1, #1
	strb r0, [r2]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r2, _0800BCAC @ =0x00000101
	adds r0, r3, r2
	adds r0, r0, r1
	strb r4, [r0]
_0800BB72:
	adds r5, #0xc
	adds r4, #1
	cmp r4, #0x31
	ble _0800BB3A
	movs r4, #0
	ldr r2, _0800BCA0 @ =0x030013AC
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r4, r0
	bge _0800BBC2
	adds r5, r2, #0
	adds r7, r1, #0
	ldr r6, _0800BCAC @ =0x00000101
_0800BB92:
	ldr r0, [r5]
	adds r0, r0, r7
	ldrb r0, [r0]
	bl sub_0800B828
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldr r0, [r5]
	adds r0, r0, r6
	adds r1, r0, r1
	ldrb r2, [r1]
	adds r0, r0, r4
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, [r5]
	adds r0, r0, r6
	adds r0, r0, r4
	strb r2, [r0]
	adds r4, #1
	ldr r0, [r5]
	adds r0, r0, r7
	ldrb r0, [r0]
	cmp r4, r0
	blt _0800BB92
_0800BBC2:
	movs r4, #0
	ldr r5, _0800BCB0 @ =0x03004420
	ldr r7, _0800BCA0 @ =0x030013AC
	ldr r6, _0800BCAC @ =0x00000101
_0800BBCA:
	adds r1, r5, #0
	adds r1, #0x19
	adds r1, r4, r1
	ldr r0, [r7]
	adds r0, r0, r6
	adds r0, r0, r4
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, [r7]
	adds r0, r0, r6
	adds r0, r0, r4
	ldrb r1, [r0]
	adds r0, r5, #0
	adds r0, #8
	bl sub_0800B844
	adds r4, #1
	cmp r4, #2
	ble _0800BBCA
	mov r3, r8
	cmp r3, #3
	beq _0800BC96
_0800BBF6:
	ldr r0, _0800BCA0 @ =0x030013AC
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r1, #0
	strb r1, [r0]
	movs r4, #0
_0800BC06:
	lsls r1, r4, #0x10
	lsrs r1, r1, #0x10
	ldr r0, _0800BCB4 @ =0x03004430
	bl sub_0800B87C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0800BC32
	ldr r0, _0800BCA0 @ =0x030013AC
	ldr r3, [r0]
	movs r0, #0x80
	lsls r0, r0, #1
	adds r2, r3, r0
	ldrb r1, [r2]
	adds r0, r1, #1
	strb r0, [r2]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r2, _0800BCAC @ =0x00000101
	adds r0, r3, r2
	adds r0, r0, r1
	strb r4, [r0]
_0800BC32:
	adds r4, #1
	cmp r4, #0x31
	ble _0800BC06
	movs r4, #0
	ldr r2, _0800BCA0 @ =0x030013AC
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r4, r0
	bge _0800BC80
	adds r5, r2, #0
	adds r7, r1, #0
	ldr r6, _0800BCAC @ =0x00000101
_0800BC50:
	ldr r0, [r5]
	adds r0, r0, r7
	ldrb r0, [r0]
	bl sub_0800B828
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldr r0, [r5]
	adds r0, r0, r6
	adds r1, r0, r1
	ldrb r2, [r1]
	adds r0, r0, r4
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, [r5]
	adds r0, r0, r6
	adds r0, r0, r4
	strb r2, [r0]
	adds r4, #1
	ldr r0, [r5]
	adds r0, r0, r7
	ldrb r0, [r0]
	cmp r4, r0
	blt _0800BC50
_0800BC80:
	ldr r1, _0800BCB0 @ =0x03004420
	ldr r0, _0800BCA0 @ =0x030013AC
	ldr r2, [r0]
	ldr r3, _0800BCAC @ =0x00000101
	adds r0, r2, r3
	ldrb r0, [r0]
	strb r0, [r1, #0x1c]
	adds r3, #1
	adds r0, r2, r3
	ldrb r0, [r0]
	strb r0, [r1, #0x1d]
_0800BC96:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800BCA0: .4byte 0x030013AC
_0800BCA4: .4byte 0x0807FD60
_0800BCA8: .4byte 0x03004428
_0800BCAC: .4byte 0x00000101
_0800BCB0: .4byte 0x03004420
_0800BCB4: .4byte 0x03004430

	thumb_func_start sub_0800BCB8
sub_0800BCB8: @ 0x0800BCB8
	push {r4, r5, r6, lr}
	ldr r1, _0800BD10 @ =0x03004420
	movs r0, #0
	movs r2, #0x20
	bl sub_08007EFC
	movs r6, #0
	ldr r5, _0800BD14 @ =0x0807FD60
	movs r4, #0x31
_0800BCCA:
	ldrb r0, [r5]
	bl sub_08001A00
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0800BCD8
	adds r6, #1
_0800BCD8:
	adds r5, #0xc
	subs r4, #1
	cmp r4, #0
	bge _0800BCCA
	ldr r2, _0800BD10 @ =0x03004420
	ldrb r0, [r2]
	movs r3, #0x79
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r1, r0
	movs r0, #0x28
	orrs r1, r0
	strb r1, [r2]
	cmp r6, #0x20
	ble _0800BCFE
	ands r1, r3
	movs r0, #0x50
	orrs r1, r0
	strb r1, [r2]
_0800BCFE:
	cmp r6, #0x2f
	ble _0800BD0A
	ldrb r0, [r2]
	movs r1, #0x78
	orrs r0, r1
	strb r0, [r2]
_0800BD0A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800BD10: .4byte 0x03004420
_0800BD14: .4byte 0x0807FD60

	thumb_func_start sub_0800BD18
sub_0800BD18: @ 0x0800BD18
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r6, _0800BF94 @ =0x030013AC
	movs r4, #0xd3
	lsls r4, r4, #2
	adds r0, r4, #0
	bl sub_08007CE8
	adds r1, r0, #0
	str r1, [r6]
	movs r0, #0
	adds r2, r4, #0
	bl sub_08007EFC
	ldr r4, _0800BF98 @ =0x03004420
	ldrb r0, [r4, #4]
	cmp r0, #0
	beq _0800BD6E
	ldr r1, _0800BF9C @ =0x080839CC
	ldrb r0, [r4]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1c
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _0800BFA0 @ =0x05000200
	bl sub_08008308
	ldr r1, _0800BFA4 @ =0x080839EC
	ldrb r0, [r4]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1c
	adds r0, r0, r1
	ldr r0, [r0]
	add r1, sp, #4
	bl sub_08008380
	ldr r1, [r6]
	adds r2, r1, #0
	adds r2, #0xf0
	str r0, [r2]
	adds r1, #0xf4
	ldr r0, [sp, #4]
	str r0, [r1]
_0800BD6E:
	ldr r0, _0800BFA8 @ =0x08091534
	ldr r1, _0800BFAC @ =0x05000220
	bl sub_08008308
	ldr r0, _0800BFB0 @ =0x08091B4C
	add r1, sp, #4
	bl sub_08008380
	ldr r1, [r6]
	adds r2, r1, #0
	adds r2, #0xf8
	str r0, [r2]
	adds r1, #0xfc
	ldr r0, [sp, #4]
	str r0, [r1]
	ldr r4, _0800BFB4 @ =0x06010800
	ldr r0, _0800BFB8 @ =0x080E4938
	ldr r1, _0800BFBC @ =0x05000240
	bl sub_08008308
	ldr r0, [r6]
	adds r0, #0xd8
	str r4, [r0]
	ldr r0, _0800BFC0 @ =0x080E4B74
	adds r1, r4, #0
	bl sub_08008374
	adds r4, r0, r4
	ldr r0, _0800BFC4 @ =0x0809C73C
	ldr r1, _0800BFC8 @ =0x050002C0
	bl sub_08008308
	ldr r0, [r6]
	adds r0, #0xe4
	str r4, [r0]
	ldr r0, _0800BFCC @ =0x0809C890
	adds r1, r4, #0
	bl sub_08008374
	adds r4, r4, r0
	ldr r0, _0800BFD0 @ =0x080F3498
	ldr r1, _0800BFD4 @ =0x05000320
	bl sub_08008308
	ldr r0, [r6]
	adds r0, #0xdc
	str r4, [r0]
	ldr r0, _0800BFD8 @ =0x080F34E4
	adds r1, r4, #0
	bl sub_08008374
	adds r4, r4, r0
	ldr r0, _0800BFDC @ =0x080F3D18
	ldr r1, _0800BFE0 @ =0x05000300
	bl sub_08008308
	ldr r0, [r6]
	adds r0, #0xe0
	str r4, [r0]
	ldr r0, _0800BFE4 @ =0x080F3E34
	adds r1, r4, #0
	bl sub_08008374
	adds r4, r4, r0
	ldr r1, _0800BFE8 @ =0x08105FB8
	ldr r5, _0800BFEC @ =0x03004400
	ldrb r0, [r5, #0x14]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _0800BFF0 @ =0x050002E0
	bl sub_08008308
	ldr r0, [r6]
	adds r0, #0xec
	str r4, [r0]
	ldr r1, _0800BFF4 @ =0x08105FBC
	ldrb r0, [r5, #0x14]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	adds r1, r4, #0
	bl sub_08008374
	adds r4, r4, r0
	ldr r0, [r6]
	adds r0, #0xe8
	str r4, [r0]
	ldr r0, _0800BFF8 @ =0x080E3DDC
	movs r1, #0xa0
	lsls r1, r1, #0x13
	bl sub_08008308
	ldr r0, _0800BFFC @ =0x080E43F8
	movs r1, #0xc0
	lsls r1, r1, #0x13
	bl sub_08008374
	ldr r0, _0800C000 @ =0x080E3E80
	ldr r1, _0800C004 @ =0x0600F800
	movs r2, #0
	movs r3, #0
	bl sub_080083CC
	ldr r0, _0800C008 @ =0x080E4040
	ldr r1, _0800C00C @ =0x0600F000
	movs r2, #0
	movs r3, #0
	bl sub_080083CC
	ldr r0, _0800C010 @ =0x080E412C
	ldr r1, _0800C014 @ =0x0600E800
	movs r2, #0
	movs r3, #0
	bl sub_080083CC
	ldr r0, _0800C018 @ =0x080E4334
	ldr r1, _0800C01C @ =0x0600E000
	movs r2, #0
	movs r3, #0
	bl sub_080083CC
	ldr r6, _0800C020 @ =0x0600E152
	movs r5, #0
	ldr r7, _0800C024 @ =0x08080180
	movs r4, #5
_0800BE6A:
	adds r0, r5, r7
	adds r1, r6, #0
	movs r2, #0x18
	bl sub_08007EA4
	adds r6, #0x40
	adds r5, #0x18
	subs r4, #1
	cmp r4, #0
	bge _0800BE6A
	ldr r0, _0800C028 @ =0x080E426C
	ldr r1, _0800C02C @ =0x0600D800
	movs r2, #0
	movs r3, #0
	bl sub_080083CC
	ldr r6, _0800C030 @ =0x0600D912
	movs r5, #0
	ldr r7, _0800C024 @ =0x08080180
	movs r4, #9
_0800BE92:
	adds r0, r5, r7
	adds r1, r6, #0
	movs r2, #0x18
	bl sub_08007EA4
	adds r6, #0x40
	adds r5, #0x18
	subs r4, #1
	cmp r4, #0
	bge _0800BE92
	ldr r0, _0800C034 @ =sub_0800D374
	movs r1, #0x42
	movs r2, #0
	bl sub_08007968
	ldr r4, _0800BF94 @ =0x030013AC
	ldr r1, [r4]
	strh r0, [r1, #8]
	ldr r0, _0800C038 @ =sub_0800D9B4
	movs r1, #0x43
	movs r2, #0
	bl sub_08007968
	ldr r1, [r4]
	strh r0, [r1, #0xc]
	bl sub_0800D698
	ldr r0, _0800C03C @ =sub_0800F820
	movs r1, #0x41
	movs r2, #0
	bl sub_08007968
	ldr r1, [r4]
	strh r0, [r1, #0x1c]
	ldr r0, _0800C040 @ =sub_0800DE20
	movs r1, #0x44
	movs r2, #0
	bl sub_08007968
	ldr r1, [r4]
	strh r0, [r1, #0xe]
	ldr r0, _0800C044 @ =sub_0800E12C
	movs r1, #0x45
	movs r2, #0
	bl sub_08007968
	ldr r1, [r4]
	strh r0, [r1, #0x10]
	ldr r0, _0800C048 @ =sub_0800E66C
	movs r1, #0x46
	movs r2, #0
	bl sub_08007968
	ldr r1, [r4]
	strh r0, [r1, #0x12]
	ldr r0, _0800C04C @ =sub_0800EB54
	movs r1, #0x47
	movs r2, #0
	bl sub_08007968
	ldr r1, [r4]
	strh r0, [r1, #0x14]
	ldr r0, _0800C050 @ =sub_0800F0F0
	movs r1, #0x48
	movs r2, #0
	bl sub_08007968
	ldr r1, [r4]
	strh r0, [r1, #0x16]
	ldr r0, _0800C054 @ =sub_0800F3D0
	movs r1, #0x49
	movs r2, #0
	bl sub_08007968
	ldr r1, [r4]
	strh r0, [r1, #0x18]
	ldr r0, _0800C058 @ =sub_0800F51C
	movs r1, #0x4a
	movs r2, #0
	bl sub_08007968
	ldr r1, [r4]
	strh r0, [r1, #0x1a]
	ldr r0, _0800C05C @ =0x080E4A10
	ldr r1, _0800C060 @ =0x00000137
	bl sub_08009554
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
	movs r1, #0x1a
	movs r2, #5
	movs r3, #0
	bl sub_08004028
	bl sub_080057C0
	movs r0, #1
	bl sub_08005A88
	ldr r4, _0800BF98 @ =0x03004420
	ldrb r1, [r4]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	movs r0, #8
	bl sub_08005BE0
	ldrb r0, [r4, #4]
	cmp r0, #0xd
	bne _0800BF84
	bl sub_0800F5AC
_0800BF84:
	ldr r0, _0800BFEC @ =0x03004400
	ldr r0, [r0]
	bl sub_0800B80C
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800BF94: .4byte 0x030013AC
_0800BF98: .4byte 0x03004420
_0800BF9C: .4byte 0x080839CC
_0800BFA0: .4byte 0x05000200
_0800BFA4: .4byte 0x080839EC
_0800BFA8: .4byte 0x08091534
_0800BFAC: .4byte 0x05000220
_0800BFB0: .4byte 0x08091B4C
_0800BFB4: .4byte 0x06010800
_0800BFB8: .4byte 0x080E4938
_0800BFBC: .4byte 0x05000240
_0800BFC0: .4byte 0x080E4B74
_0800BFC4: .4byte 0x0809C73C
_0800BFC8: .4byte 0x050002C0
_0800BFCC: .4byte 0x0809C890
_0800BFD0: .4byte 0x080F3498
_0800BFD4: .4byte 0x05000320
_0800BFD8: .4byte 0x080F34E4
_0800BFDC: .4byte 0x080F3D18
_0800BFE0: .4byte 0x05000300
_0800BFE4: .4byte 0x080F3E34
_0800BFE8: .4byte 0x08105FB8
_0800BFEC: .4byte 0x03004400
_0800BFF0: .4byte 0x050002E0
_0800BFF4: .4byte 0x08105FBC
_0800BFF8: .4byte 0x080E3DDC
_0800BFFC: .4byte 0x080E43F8
_0800C000: .4byte 0x080E3E80
_0800C004: .4byte 0x0600F800
_0800C008: .4byte 0x080E4040
_0800C00C: .4byte 0x0600F000
_0800C010: .4byte 0x080E412C
_0800C014: .4byte 0x0600E800
_0800C018: .4byte 0x080E4334
_0800C01C: .4byte 0x0600E000
_0800C020: .4byte 0x0600E152
_0800C024: .4byte 0x08080180
_0800C028: .4byte 0x080E426C
_0800C02C: .4byte 0x0600D800
_0800C030: .4byte 0x0600D912
_0800C034: .4byte sub_0800D374
_0800C038: .4byte sub_0800D9B4
_0800C03C: .4byte sub_0800F820
_0800C040: .4byte sub_0800DE20
_0800C044: .4byte sub_0800E12C
_0800C048: .4byte sub_0800E66C
_0800C04C: .4byte sub_0800EB54
_0800C050: .4byte sub_0800F0F0
_0800C054: .4byte sub_0800F3D0
_0800C058: .4byte sub_0800F51C
_0800C05C: .4byte 0x080E4A10
_0800C060: .4byte 0x00000137

	thumb_func_start sub_0800C064
sub_0800C064: @ 0x0800C064
	push {r4, lr}
	bl sub_080058A4
	ldr r0, _0800C0E8 @ =0x080E4A10
	bl sub_080095E0
	ldr r4, _0800C0EC @ =0x030013AC
	ldr r0, [r4]
	movs r1, #8
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	ldr r0, [r4]
	movs r1, #0x1c
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
	ldr r0, [r4]
	movs r1, #0x18
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	ldr r0, [r4]
	movs r1, #0x1a
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800C0E8: .4byte 0x080E4A10
_0800C0EC: .4byte 0x030013AC

	thumb_func_start sub_0800C0F0
sub_0800C0F0: @ 0x0800C0F0
	push {r4, r5, lr}
	movs r0, #0
	bl sub_080081A0
	bl sub_0800BD18
	movs r0, #1
	bl sub_08002B98
	ldr r4, _0800C114 @ =0x030013AC
	ldr r5, _0800C118 @ =0x0807FFF4
_0800C106:
	ldr r1, [r4]
	ldrh r0, [r1, #4]
	cmp r0, #0
	beq _0800C11C
	subs r0, #1
	strh r0, [r1, #4]
	b _0800C130
	.align 2, 0
_0800C114: .4byte 0x030013AC
_0800C118: .4byte 0x0807FFF4
_0800C11C:
	ldrb r0, [r1]
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	bl call_via_r0
	ldr r0, [r4]
	ldrb r0, [r0, #6]
	cmp r0, #0
	bne _0800C138
_0800C130:
	movs r0, #1
	bl sub_08002B98
	b _0800C106
_0800C138:
	bl sub_0800C064
	movs r0, #1
	bl sub_08002B98
	ldr r2, _0800C1B0 @ =0x03004420
	ldrb r0, [r2, #4]
	cmp r0, #0xd
	bne _0800C182
	ldrb r0, [r2]
	movs r1, #5
	rsbs r1, r1, #0
	ands r1, r0
	strb r1, [r2]
	ldr r3, _0800C1B4 @ =0x0807FD60
	ldrb r0, [r2, #1]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1d
	adds r2, #0x19
	adds r0, r0, r2
	ldrb r2, [r0]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldrb r0, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	bl sub_08001E04
	ldr r0, _0800C1B8 @ =0x03004400
	ldrb r0, [r0, #8]
	bl sub_08001930
	movs r0, #0x11
	bl sub_08008790
_0800C182:
	bl sub_0806F710
	ldr r4, _0800C1BC @ =0x030013AC
	ldr r0, [r4]
	adds r0, #0xf0
	ldr r0, [r0]
	cmp r0, #0
	beq _0800C196
	bl sub_08007CF8
_0800C196:
	ldr r0, [r4]
	adds r0, #0xf8
	ldr r0, [r0]
	bl sub_08007CF8
	ldr r0, [r4]
	bl sub_08007CF8
	bl sub_08002B0C
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800C1B0: .4byte 0x03004420
_0800C1B4: .4byte 0x0807FD60
_0800C1B8: .4byte 0x03004400
_0800C1BC: .4byte 0x030013AC

	thumb_func_start sub_0800C1C0
sub_0800C1C0: @ 0x0800C1C0
	ldr r1, _0800C1D4 @ =0x030013AC
	ldr r2, [r1]
	movs r3, #0
	strb r0, [r2]
	ldr r0, [r1]
	strb r3, [r0, #1]
	ldr r0, [r1]
	strh r3, [r0, #2]
	bx lr
	.align 2, 0
_0800C1D4: .4byte 0x030013AC

	thumb_func_start sub_0800C1D8
sub_0800C1D8: @ 0x0800C1D8
	push {r4, r5, r6, lr}
	ldr r0, _0800C1EC @ =0x030013AC
	ldr r0, [r0]
	ldrb r4, [r0, #1]
	cmp r4, #0
	beq _0800C1F0
	cmp r4, #1
	beq _0800C2CC
	b _0800C2E6
	.align 2, 0
_0800C1EC: .4byte 0x030013AC
_0800C1F0:
	bl sub_08008174
	ldr r2, _0800C244 @ =0x030024E0
	movs r5, #0
	ldr r0, _0800C248 @ =0x00001F03
	strh r0, [r2, #8]
	ldrh r1, [r2]
	movs r3, #0x80
	lsls r3, r3, #4
	adds r0, r3, #0
	orrs r1, r0
	orrs r1, r5
	strh r1, [r2]
	ldr r0, _0800C24C @ =0x00001E02
	strh r0, [r2, #6]
	ldr r3, _0800C250 @ =0x03004420
	ldrb r0, [r3, #4]
	cmp r0, #0
	beq _0800C222
	movs r6, #0x80
	lsls r6, r6, #3
	adds r0, r6, #0
	orrs r1, r0
	strh r1, [r2]
	strh r4, [r2, #0xe]
_0800C222:
	adds r1, r2, #0
	adds r1, #0x4a
	ldr r0, _0800C254 @ =0x00000844
	strh r0, [r1]
	adds r1, #2
	ldr r0, _0800C258 @ =0x0000020E
	strh r0, [r1]
	ldrb r0, [r3, #4]
	adds r4, r2, #0
	cmp r0, #0xd
	bne _0800C274
	ldrb r0, [r3, #0x18]
	cmp r0, #5
	bne _0800C260
	ldr r0, _0800C25C @ =0x00001B02
	b _0800C262
	.align 2, 0
_0800C244: .4byte 0x030024E0
_0800C248: .4byte 0x00001F03
_0800C24C: .4byte 0x00001E02
_0800C250: .4byte 0x03004420
_0800C254: .4byte 0x00000844
_0800C258: .4byte 0x0000020E
_0800C25C: .4byte 0x00001B02
_0800C260:
	ldr r0, _0800C2BC @ =0x00001C02
_0800C262:
	strh r0, [r4, #4]
	ldr r0, _0800C2C0 @ =0x030024E0
	ldrh r2, [r0]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r1, r3, #0
	orrs r1, r2
	strh r1, [r0]
	adds r4, r0, #0
_0800C274:
	ldrh r1, [r4]
	movs r6, #0x80
	lsls r6, r6, #1
	adds r0, r6, #0
	orrs r0, r1
	strh r0, [r4]
	movs r0, #1
	bl sub_08004124
	adds r1, r4, #0
	adds r1, #0x4f
	movs r0, #1
	strb r0, [r1]
	ldr r4, _0800C2C4 @ =0x03004420
	ldrb r0, [r4, #4]
	cmp r0, #0xd
	bne _0800C2A8
	bl sub_080025B8
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0800C2A8
	ldrb r0, [r4, #2]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bge _0800C2AE
_0800C2A8:
	movs r0, #0x40
	bl sub_0806F5DC
_0800C2AE:
	bl sub_0800B770
	ldr r0, _0800C2C8 @ =0x030013AC
	ldr r1, [r0]
	movs r0, #1
	strb r0, [r1, #1]
	b _0800C2E6
	.align 2, 0
_0800C2BC: .4byte 0x00001C02
_0800C2C0: .4byte 0x030024E0
_0800C2C4: .4byte 0x03004420
_0800C2C8: .4byte 0x030013AC
_0800C2CC:
	ldr r1, _0800C2DC @ =0x03004420
	ldrb r0, [r1, #4]
	cmp r0, #0
	beq _0800C2E0
	bl sub_0800C1C0
	b _0800C2E6
	.align 2, 0
_0800C2DC: .4byte 0x03004420
_0800C2E0:
	movs r0, #1
	bl sub_0800C1C0
_0800C2E6:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_0800C2EC
sub_0800C2EC: @ 0x0800C2EC
	push {r4, lr}
	sub sp, #0xc
	ldr r1, _0800C308 @ =0x030013AC
	ldr r0, [r1]
	ldrb r0, [r0, #1]
	adds r4, r1, #0
	cmp r0, #4
	bls _0800C2FE
	b _0800C496
_0800C2FE:
	lsls r0, r0, #2
	ldr r1, _0800C30C @ =_0800C310
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800C308: .4byte 0x030013AC
_0800C30C: .4byte _0800C310
_0800C310: @ jump table
	.4byte _0800C324 @ case 0
	.4byte _0800C364 @ case 1
	.4byte _0800C390 @ case 2
	.4byte _0800C400 @ case 3
	.4byte _0800C464 @ case 4
_0800C324:
	ldr r2, _0800C358 @ =0x030024E0
	ldr r0, _0800C35C @ =0x0000D4F0
	strh r0, [r2, #0x3c]
	adds r1, r2, #0
	adds r1, #0x40
	movs r0, #0xa0
	strh r0, [r1]
	adds r1, #4
	movs r0, #0xfb
	strb r0, [r1]
	adds r1, #2
	movs r0, #0x3f
	strb r0, [r1]
	ldrh r1, [r2]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2]
	bl sub_0800DDA4
	ldr r0, _0800C360 @ =0x030013AC
	ldr r1, [r0]
	movs r0, #1
	strb r0, [r1, #1]
	b _0800C496
	.align 2, 0
_0800C358: .4byte 0x030024E0
_0800C35C: .4byte 0x0000D4F0
_0800C360: .4byte 0x030013AC
_0800C364:
	ldr r0, [r4]
	adds r0, #0xcf
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800C370
	b _0800C496
_0800C370:
	bl sub_08005934
	ldr r0, _0800C38C @ =0x080836E4
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	bl sub_08005A2C
	ldr r1, [r4]
	movs r0, #2
	strb r0, [r1, #1]
	b _0800C496
	.align 2, 0
_0800C38C: .4byte 0x080836E4
_0800C390:
	ldr r0, [r4]
	adds r0, #0xe8
	ldr r2, [r0]
	ldr r0, _0800C3D0 @ =0xF9FF0000
	adds r2, r2, r0
	lsls r2, r2, #0xb
	lsrs r2, r2, #0x10
	mov r0, sp
	movs r1, #1
	movs r3, #8
	bl sub_0800A16C
	mov r0, sp
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0800C3DC
	ldr r0, [r4]
	adds r0, #0xf0
	movs r1, #0
	str r1, [r0]
	ldr r2, _0800C3D4 @ =0x030024E0
	ldrh r1, [r2]
	ldr r0, _0800C3D8 @ =0x0000FBFF
	ands r0, r1
	strh r0, [r2]
	movs r0, #0x11
	bl sub_0800C1C0
	b _0800C496
	.align 2, 0
_0800C3D0: .4byte 0xF9FF0000
_0800C3D4: .4byte 0x030024E0
_0800C3D8: .4byte 0x0000FBFF
_0800C3DC:
	ldr r3, _0800C3FC @ =0x03004420
	mov r0, sp
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r0, #3
	ands r1, r0
	ldrb r2, [r3]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	ldr r1, [r4]
	movs r0, #3
	strb r0, [r1, #1]
	b _0800C496
	.align 2, 0
_0800C3FC: .4byte 0x03004420
_0800C400:
	ldr r1, _0800C450 @ =0x080839CC
	ldr r4, _0800C454 @ =0x03004420
	ldrb r0, [r4]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1c
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _0800C458 @ =0x05000200
	bl sub_08008308
	ldr r1, _0800C45C @ =0x080839EC
	ldrb r0, [r4]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1c
	adds r0, r0, r1
	ldr r0, [r0]
	add r1, sp, #4
	bl sub_08008380
	ldr r4, _0800C460 @ =0x030013AC
	ldr r1, [r4]
	adds r2, r1, #0
	adds r2, #0xf0
	str r0, [r2]
	adds r1, #0xf4
	ldr r0, [sp, #4]
	str r0, [r1]
	movs r0, #1
	bl sub_08002B98
	bl sub_0800D6F4
	bl sub_0800D610
	bl sub_0800F7B4
	ldr r1, [r4]
	movs r0, #4
	strb r0, [r1, #1]
	b _0800C496
	.align 2, 0
_0800C450: .4byte 0x080839CC
_0800C454: .4byte 0x03004420
_0800C458: .4byte 0x05000200
_0800C45C: .4byte 0x080839EC
_0800C460: .4byte 0x030013AC
_0800C464:
	ldr r0, [r4]
	adds r0, #0xcd
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800C496
	ldr r2, _0800C4A0 @ =0x030024E0
	ldrh r1, [r2]
	ldr r0, _0800C4A4 @ =0x0000DFFF
	ands r0, r1
	strh r0, [r2]
	ldr r1, _0800C4A8 @ =0x03004420
	ldrb r2, [r1, #2]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1, #2]
	ldrb r1, [r1]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	movs r0, #8
	bl sub_08005BE0
	movs r0, #2
	bl sub_0800C1C0
_0800C496:
	add sp, #0xc
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800C4A0: .4byte 0x030024E0
_0800C4A4: .4byte 0x0000DFFF
_0800C4A8: .4byte 0x03004420

	thumb_func_start sub_0800C4AC
sub_0800C4AC: @ 0x0800C4AC
	push {lr}
	ldr r1, _0800C4C4 @ =0x030013AC
	ldr r0, [r1]
	ldrb r0, [r0, #1]
	adds r2, r1, #0
	cmp r0, #4
	bhi _0800C58A
	lsls r0, r0, #2
	ldr r1, _0800C4C8 @ =_0800C4CC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800C4C4: .4byte 0x030013AC
_0800C4C8: .4byte _0800C4CC
_0800C4CC: @ jump table
	.4byte _0800C4E0 @ case 0
	.4byte _0800C4E8 @ case 1
	.4byte _0800C510 @ case 2
	.4byte _0800C564 @ case 3
	.4byte _0800C580 @ case 4
_0800C4E0:
	ldr r1, [r2]
	movs r0, #1
	strb r0, [r1, #1]
	b _0800C58A
_0800C4E8:
	bl sub_0800F7D0
	bl sub_08005934
	ldr r0, _0800C508 @ =0x080836F0
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	bl sub_080064F8
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0800C524
	ldr r0, _0800C50C @ =0x08083700
	b _0800C54A
	.align 2, 0
_0800C508: .4byte 0x080836F0
_0800C50C: .4byte 0x08083700
_0800C510:
	ldr r0, _0800C53C @ =0x08083708
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	bl sub_080064F8
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0800C548
_0800C524:
	bl sub_0800F7EC
	ldr r0, _0800C540 @ =0x0808371C
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	ldr r0, _0800C544 @ =0x030013AC
	ldr r1, [r0]
	movs r0, #4
	strb r0, [r1, #1]
	b _0800C58A
	.align 2, 0
_0800C53C: .4byte 0x08083708
_0800C540: .4byte 0x0808371C
_0800C544: .4byte 0x030013AC
_0800C548:
	ldr r0, _0800C55C @ =0x08083714
_0800C54A:
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	ldr r0, _0800C560 @ =0x030013AC
	ldr r1, [r0]
	movs r0, #3
	strb r0, [r1, #1]
	b _0800C58A
	.align 2, 0
_0800C55C: .4byte 0x08083714
_0800C560: .4byte 0x030013AC
_0800C564:
	ldr r0, _0800C578 @ =0x08083994
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	ldr r0, _0800C57C @ =0x030013AC
	ldr r1, [r0]
	movs r0, #2
	strb r0, [r1, #1]
	b _0800C58A
	.align 2, 0
_0800C578: .4byte 0x08083994
_0800C57C: .4byte 0x030013AC
_0800C580:
	bl sub_08005A2C
	movs r0, #3
	bl sub_0800C1C0
_0800C58A:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800C590
sub_0800C590: @ 0x0800C590
	push {r4, lr}
	ldr r4, _0800C5A8 @ =0x030013AC
	ldr r0, [r4]
	ldrb r1, [r0, #1]
	cmp r1, #1
	beq _0800C5EC
	cmp r1, #1
	bgt _0800C5AC
	cmp r1, #0
	beq _0800C5B2
	b _0800C662
	.align 2, 0
_0800C5A8: .4byte 0x030013AC
_0800C5AC:
	cmp r1, #2
	beq _0800C65C
	b _0800C662
_0800C5B2:
	bl sub_08005934
	ldr r0, _0800C5E0 @ =0x08083724
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	bl sub_08005A2C
	ldr r2, _0800C5E4 @ =0x03004420
	ldr r0, [r2]
	ldr r1, _0800C5E8 @ =0xFFFE3FFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #7
	orrs r0, r1
	str r0, [r2]
	bl sub_0800E06C
	ldr r1, [r4]
	movs r0, #1
	strb r0, [r1, #1]
	b _0800C662
	.align 2, 0
_0800C5E0: .4byte 0x08083724
_0800C5E4: .4byte 0x03004420
_0800C5E8: .4byte 0xFFFE3FFF
_0800C5EC:
	adds r0, #0xd0
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800C662
	ldr r0, _0800C608 @ =0x03004420
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1c
	cmp r0, #0xf
	bne _0800C60C
	bl sub_0800F7EC
	b _0800C610
	.align 2, 0
_0800C608: .4byte 0x03004420
_0800C60C:
	bl sub_0800F7D0
_0800C610:
	bl sub_08005934
	ldr r4, _0800C64C @ =0x0807FD0C
	ldr r0, _0800C650 @ =0x03004420
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1c
	subs r0, #1
	movs r1, #5
	bl sub_08070FCC
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	ldr r0, _0800C654 @ =0x08083750
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	bl sub_08005A2C
	ldr r0, _0800C658 @ =0x030013AC
	ldr r1, [r0]
	movs r0, #2
	strb r0, [r1, #1]
	b _0800C662
	.align 2, 0
_0800C64C: .4byte 0x0807FD0C
_0800C650: .4byte 0x03004420
_0800C654: .4byte 0x08083750
_0800C658: .4byte 0x030013AC
_0800C65C:
	movs r0, #4
	bl sub_0800C1C0
_0800C662:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0800C668
sub_0800C668: @ 0x0800C668
	push {r4, lr}
	ldr r4, _0800C680 @ =0x030013AC
	ldr r0, [r4]
	ldrb r1, [r0, #1]
	cmp r1, #1
	beq _0800C6B8
	cmp r1, #1
	bgt _0800C684
	cmp r1, #0
	beq _0800C68A
	b _0800C6EA
	.align 2, 0
_0800C680: .4byte 0x030013AC
_0800C684:
	cmp r1, #2
	beq _0800C6DC
	b _0800C6EA
_0800C68A:
	bl sub_0800E088
	bl sub_0800E5E8
	ldr r1, _0800C6B4 @ =0x03004420
	movs r0, #3
	strb r0, [r1, #0x18]
	bl sub_0800BB18
	bl sub_0800F628
	movs r0, #0x80
	bl sub_08002B98
	bl sub_0800E604
	ldr r1, [r4]
	movs r0, #1
	strb r0, [r1, #1]
	b _0800C6EA
	.align 2, 0
_0800C6B4: .4byte 0x03004420
_0800C6B8:
	adds r0, #0xd1
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800C6EA
	ldr r2, _0800C6D8 @ =0x03004420
	ldrb r1, [r2, #1]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #1]
	bl sub_0800EAE8
	ldr r1, [r4]
	movs r0, #2
	strb r0, [r1, #1]
	b _0800C6EA
	.align 2, 0
_0800C6D8: .4byte 0x03004420
_0800C6DC:
	adds r0, #0xd2
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800C6EA
	movs r0, #5
	bl sub_0800C1C0
_0800C6EA:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0800C6F0
sub_0800C6F0: @ 0x0800C6F0
	push {r4, lr}
	ldr r4, _0800C708 @ =0x030013AC
	ldr r1, [r4]
	ldrb r0, [r1, #1]
	cmp r0, #1
	beq _0800C744
	cmp r0, #1
	bgt _0800C70C
	cmp r0, #0
	beq _0800C712
	b _0800C786
	.align 2, 0
_0800C708: .4byte 0x030013AC
_0800C70C:
	cmp r0, #3
	beq _0800C780
	b _0800C786
_0800C712:
	ldr r0, _0800C73C @ =0x03004420
	ldrb r0, [r0, #2]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _0800C72E
	bl sub_0800F7D0
	bl sub_08005934
	ldr r0, _0800C740 @ =0x08083768
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
_0800C72E:
	bl sub_0800EB20
	ldr r1, [r4]
	movs r0, #1
	strb r0, [r1, #1]
	b _0800C786
	.align 2, 0
_0800C73C: .4byte 0x03004420
_0800C740: .4byte 0x08083768
_0800C744:
	adds r0, r1, #0
	adds r0, #0xd2
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800C786
	movs r2, #0x9a
	lsls r2, r2, #1
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #1
	bne _0800C760
	movs r0, #3
	strb r0, [r1, #1]
	b _0800C786
_0800C760:
	cmp r0, #0
	bne _0800C770
	bl sub_08005A2C
	movs r0, #6
	bl sub_0800C1C0
	b _0800C786
_0800C770:
	cmp r0, #2
	bne _0800C786
	bl sub_08005A2C
	movs r0, #7
	bl sub_0800C1C0
	b _0800C786
_0800C780:
	movs r0, #0xc
	bl sub_0800C1C0
_0800C786:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0800C78C
sub_0800C78C: @ 0x0800C78C
	push {r4, lr}
	ldr r4, _0800C7A4 @ =0x030013AC
	ldr r0, [r4]
	ldrb r1, [r0, #1]
	cmp r1, #1
	beq _0800C82C
	cmp r1, #1
	bgt _0800C7A8
	cmp r1, #0
	beq _0800C7B2
	b _0800C8A8
	.align 2, 0
_0800C7A4: .4byte 0x030013AC
_0800C7A8:
	cmp r1, #2
	beq _0800C86C
	cmp r1, #3
	beq _0800C894
	b _0800C8A8
_0800C7B2:
	bl sub_0800F7D0
	ldr r1, _0800C7E8 @ =0x0807FC34
	ldr r4, _0800C7EC @ =0x03004420
	ldrh r0, [r4]
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1c
	subs r0, #1
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	movs r0, #2
	bl sub_08005BE0
	bl sub_08005934
	ldrh r0, [r4]
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1c
	cmp r0, #0
	bne _0800C7F4
	ldr r0, _0800C7F0 @ =0x0808389C
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	b _0800C7FE
	.align 2, 0
_0800C7E8: .4byte 0x0807FC34
_0800C7EC: .4byte 0x03004420
_0800C7F0: .4byte 0x0808389C
_0800C7F4:
	ldr r0, _0800C814 @ =0x080838AC
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
_0800C7FE:
	bl sub_080064F8
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0800C81C
	ldr r0, _0800C818 @ =0x030013AC
	ldr r1, [r0]
	movs r0, #1
	strb r0, [r1, #1]
	b _0800C8A8
	.align 2, 0
_0800C814: .4byte 0x080838AC
_0800C818: .4byte 0x030013AC
_0800C81C:
	ldr r0, _0800C828 @ =0x030013AC
	ldr r1, [r0]
	movs r0, #3
	strb r0, [r1, #1]
	b _0800C8A8
	.align 2, 0
_0800C828: .4byte 0x030013AC
_0800C82C:
	ldr r0, _0800C860 @ =0x0000016D
	bl sub_0806F5DC
	ldr r0, _0800C864 @ =0x03004420
	ldrh r0, [r0]
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1c
	cmp r0, #0
	beq _0800C84C
	bl sub_0800F7D0
	ldr r0, _0800C868 @ =0x080838BC
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
_0800C84C:
	bl sub_08005A2C
	bl sub_0800E0C0
	bl sub_0800EB04
	ldr r1, [r4]
	movs r0, #2
	strb r0, [r1, #1]
	b _0800C8A8
	.align 2, 0
_0800C860: .4byte 0x0000016D
_0800C864: .4byte 0x03004420
_0800C868: .4byte 0x080838BC
_0800C86C:
	adds r0, #0xd2
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800C8A8
	ldr r0, _0800C888 @ =0x03004420
	ldrh r0, [r0]
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1c
	cmp r0, #0
	beq _0800C88C
	movs r0, #0xf
	bl sub_0800C1C0
	b _0800C8A8
	.align 2, 0
_0800C888: .4byte 0x03004420
_0800C88C:
	movs r0, #0x10
	bl sub_0800C1C0
	b _0800C8A8
_0800C894:
	ldr r0, _0800C8B0 @ =0x080838C8
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	bl sub_08005A2C
	movs r0, #5
	bl sub_0800C1C0
_0800C8A8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800C8B0: .4byte 0x080838C8

	thumb_func_start sub_0800C8B4
sub_0800C8B4: @ 0x0800C8B4
	push {r4, r5, lr}
	sub sp, #4
	ldr r0, _0800C924 @ =0x030013AC
	ldr r0, [r0]
	ldrb r0, [r0, #1]
	cmp r0, #0
	bne _0800C968
	bl sub_08005934
	ldr r0, _0800C928 @ =0x08083858
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	ldr r1, _0800C92C @ =0x0807FD40
	ldr r4, _0800C930 @ =0x03004420
	ldr r0, [r4]
	lsls r0, r0, #0xf
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	movs r2, #0
	movs r1, #0
	ldr r0, [r4]
	lsls r0, r0, #0xf
	lsrs r3, r0, #0x1d
	movs r4, #1
_0800C8F4:
	adds r0, r3, #0
	asrs r0, r1
	ands r0, r4
	cmp r0, #0
	beq _0800C906
	mov r5, sp
	adds r0, r5, r2
	strb r1, [r0]
	adds r2, #1
_0800C906:
	adds r1, #1
	cmp r1, #2
	ble _0800C8F4
	bl sub_080064F8
	lsls r0, r0, #0x18
	asrs r1, r0, #0x18
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0800C934
	movs r0, #5
	bl sub_0800C1C0
	b _0800C964
	.align 2, 0
_0800C924: .4byte 0x030013AC
_0800C928: .4byte 0x08083858
_0800C92C: .4byte 0x0807FD40
_0800C930: .4byte 0x03004420
_0800C934:
	mov r2, sp
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #1
	beq _0800C956
	cmp r0, #1
	bgt _0800C948
	cmp r0, #0
	beq _0800C94E
	b _0800C964
_0800C948:
	cmp r0, #2
	beq _0800C95E
	b _0800C964
_0800C94E:
	movs r0, #8
	bl sub_0800C1C0
	b _0800C964
_0800C956:
	movs r0, #0xa
	bl sub_0800C1C0
	b _0800C964
_0800C95E:
	movs r0, #0xb
	bl sub_0800C1C0
_0800C964:
	bl sub_08005A2C
_0800C968:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_0800C970
sub_0800C970: @ 0x0800C970
	push {r4, lr}
	ldr r4, _0800C988 @ =0x030013AC
	ldr r0, [r4]
	ldrb r1, [r0, #1]
	cmp r1, #1
	beq _0800C9E4
	cmp r1, #1
	bgt _0800C98C
	cmp r1, #0
	beq _0800C996
	b _0800CA3A
	.align 2, 0
_0800C988: .4byte 0x030013AC
_0800C98C:
	cmp r1, #2
	beq _0800CA20
	cmp r1, #3
	beq _0800CA34
	b _0800CA3A
_0800C996:
	bl sub_08005934
	ldr r0, _0800C9C0 @ =0x08083860
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	bl sub_080064F8
	lsls r0, r0, #0x18
	asrs r1, r0, #0x18
	cmp r1, #0
	beq _0800C9CA
	cmp r1, #0
	bgt _0800C9C4
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0800C9D2
	b _0800CA3A
	.align 2, 0
_0800C9C0: .4byte 0x08083860
_0800C9C4:
	cmp r1, #1
	beq _0800C9D2
	b _0800CA3A
_0800C9CA:
	ldr r1, [r4]
	movs r0, #1
	strb r0, [r1, #1]
	b _0800CA3A
_0800C9D2:
	bl sub_08005A2C
	ldr r0, _0800C9E0 @ =0x030013AC
	ldr r1, [r0]
	movs r0, #3
	strb r0, [r1, #1]
	b _0800CA3A
	.align 2, 0
_0800C9E0: .4byte 0x030013AC
_0800C9E4:
	ldr r0, _0800CA14 @ =0x0000016D
	bl sub_0806F5DC
	ldr r2, _0800CA18 @ =0x03004420
	ldr r3, [r2]
	lsls r1, r3, #0xf
	lsrs r1, r1, #0x1d
	movs r0, #2
	rsbs r0, r0, #0
	ands r1, r0
	lsls r1, r1, #0xe
	ldr r0, _0800CA1C @ =0xFFFE3FFF
	ands r0, r3
	orrs r0, r1
	str r0, [r2]
	ldrb r0, [r2, #2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2, #2]
	movs r0, #9
	bl sub_0800C1C0
	b _0800CA3A
	.align 2, 0
_0800CA14: .4byte 0x0000016D
_0800CA18: .4byte 0x03004420
_0800CA1C: .4byte 0xFFFE3FFF
_0800CA20:
	adds r0, #0xd2
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800CA3A
	bl sub_08005A2C
	movs r0, #0xc
	bl sub_0800C1C0
	b _0800CA3A
_0800CA34:
	movs r0, #7
	bl sub_0800C1C0
_0800CA3A:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0800CA40
sub_0800CA40: @ 0x0800CA40
	push {r4, lr}
	ldr r4, _0800CA54 @ =0x030013AC
	ldr r0, [r4]
	ldrb r1, [r0, #1]
	cmp r1, #0
	beq _0800CA58
	cmp r1, #1
	beq _0800CA7C
	b _0800CA8E
	.align 2, 0
_0800CA54: .4byte 0x030013AC
_0800CA58:
	bl sub_0800F7D0
	bl sub_08005934
	ldr r0, _0800CA78 @ =0x0808386C
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	bl sub_0800EB20
	ldr r1, [r4]
	movs r0, #1
	strb r0, [r1, #1]
	b _0800CA8E
	.align 2, 0
_0800CA78: .4byte 0x0808386C
_0800CA7C:
	adds r0, #0xd2
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800CA8E
	bl sub_08005A2C
	movs r0, #0xc
	bl sub_0800C1C0
_0800CA8E:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0800CA94
sub_0800CA94: @ 0x0800CA94
	push {r4, r5, r6, lr}
	ldr r1, _0800CAB0 @ =0x030013AC
	ldr r0, [r1]
	ldrb r0, [r0, #1]
	adds r6, r1, #0
	cmp r0, #4
	bls _0800CAA4
	b _0800CBA8
_0800CAA4:
	lsls r0, r0, #2
	ldr r1, _0800CAB4 @ =_0800CAB8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800CAB0: .4byte 0x030013AC
_0800CAB4: .4byte _0800CAB8
_0800CAB8: @ jump table
	.4byte _0800CACC @ case 0
	.4byte _0800CB28 @ case 1
	.4byte _0800CB5C @ case 2
	.4byte _0800CB90 @ case 3
	.4byte _0800CBA2 @ case 4
_0800CACC:
	bl sub_08005934
	ldr r0, _0800CB04 @ =0x08083874
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	bl sub_080064F8
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0800CB14
	ldr r0, _0800CB08 @ =0x0000016D
	bl sub_0806F5DC
	ldr r0, _0800CB0C @ =0x08083880
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	bl sub_08005A2C
	ldr r0, _0800CB10 @ =0x030013AC
	ldr r1, [r0]
	movs r0, #1
	strb r0, [r1, #1]
	b _0800CBA8
	.align 2, 0
_0800CB04: .4byte 0x08083874
_0800CB08: .4byte 0x0000016D
_0800CB0C: .4byte 0x08083880
_0800CB10: .4byte 0x030013AC
_0800CB14:
	bl sub_08005A2C
	ldr r0, _0800CB24 @ =0x030013AC
	ldr r1, [r0]
	movs r0, #4
	strb r0, [r1, #1]
	b _0800CBA8
	.align 2, 0
_0800CB24: .4byte 0x030013AC
_0800CB28:
	ldr r3, _0800CB50 @ =0x03004420
	ldr r2, [r3]
	lsls r1, r2, #0xf
	lsrs r1, r1, #0x1d
	movs r0, #3
	rsbs r0, r0, #0
	ands r1, r0
	lsls r1, r1, #0xe
	ldr r0, _0800CB54 @ =0xFFFE3FFF
	ands r0, r2
	orrs r0, r1
	str r0, [r3]
	bl sub_0800EB04
	ldr r0, _0800CB58 @ =0x030013AC
	ldr r1, [r0]
	movs r0, #2
	strb r0, [r1, #1]
	b _0800CBA8
	.align 2, 0
_0800CB50: .4byte 0x03004420
_0800CB54: .4byte 0xFFFE3FFF
_0800CB58: .4byte 0x030013AC
_0800CB5C:
	ldr r0, [r6]
	adds r0, #0xd2
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800CBA8
	ldr r4, _0800CB8C @ =0x03004420
	movs r5, #3
	strb r5, [r4, #0x18]
	movs r0, #3
	bl sub_0800BB18
	bl sub_0800F628
	ldrb r1, [r4, #1]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #1]
	bl sub_0800EAE8
	ldr r0, [r6]
	strb r5, [r0, #1]
	b _0800CBA8
	.align 2, 0
_0800CB8C: .4byte 0x03004420
_0800CB90:
	ldr r0, [r6]
	adds r0, #0xd2
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800CBA8
	movs r0, #5
	bl sub_0800C1C0
	b _0800CBA8
_0800CBA2:
	movs r0, #7
	bl sub_0800C1C0
_0800CBA8:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800CBB0
sub_0800CBB0: @ 0x0800CBB0
	push {r4, r5, lr}
	ldr r1, _0800CBCC @ =0x030013AC
	ldr r0, [r1]
	ldrb r0, [r0, #1]
	adds r5, r1, #0
	cmp r0, #4
	bls _0800CBC0
	b _0800CCC4
_0800CBC0:
	lsls r0, r0, #2
	ldr r1, _0800CBD0 @ =_0800CBD4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800CBCC: .4byte 0x030013AC
_0800CBD0: .4byte _0800CBD4
_0800CBD4: @ jump table
	.4byte _0800CBE8 @ case 0
	.4byte _0800CC44 @ case 1
	.4byte _0800CC78 @ case 2
	.4byte _0800CCAC @ case 3
	.4byte _0800CCBE @ case 4
_0800CBE8:
	bl sub_08005934
	ldr r0, _0800CC20 @ =0x08083888
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	bl sub_080064F8
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0800CC30
	ldr r0, _0800CC24 @ =0x0000016D
	bl sub_0806F5DC
	ldr r0, _0800CC28 @ =0x08083894
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	bl sub_08005A2C
	ldr r0, _0800CC2C @ =0x030013AC
	ldr r1, [r0]
	movs r0, #1
	strb r0, [r1, #1]
	b _0800CCC4
	.align 2, 0
_0800CC20: .4byte 0x08083888
_0800CC24: .4byte 0x0000016D
_0800CC28: .4byte 0x08083894
_0800CC2C: .4byte 0x030013AC
_0800CC30:
	bl sub_08005A2C
	ldr r0, _0800CC40 @ =0x030013AC
	ldr r1, [r0]
	movs r0, #4
	strb r0, [r1, #1]
	b _0800CCC4
	.align 2, 0
_0800CC40: .4byte 0x030013AC
_0800CC44:
	ldr r3, _0800CC6C @ =0x03004420
	ldr r2, [r3]
	lsls r1, r2, #0xf
	lsrs r1, r1, #0x1d
	movs r0, #5
	rsbs r0, r0, #0
	ands r1, r0
	lsls r1, r1, #0xe
	ldr r0, _0800CC70 @ =0xFFFE3FFF
	ands r0, r2
	orrs r0, r1
	str r0, [r3]
	bl sub_0800EB04
	ldr r0, _0800CC74 @ =0x030013AC
	ldr r1, [r0]
	movs r0, #2
	strb r0, [r1, #1]
	b _0800CCC4
	.align 2, 0
_0800CC6C: .4byte 0x03004420
_0800CC70: .4byte 0xFFFE3FFF
_0800CC74: .4byte 0x030013AC
_0800CC78:
	ldr r0, [r5]
	adds r0, #0xd2
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800CCC4
	ldr r4, _0800CCA8 @ =0x03004420
	movs r0, #5
	strb r0, [r4, #0x18]
	bl sub_0800BB18
	bl sub_0800F6E4
	ldrb r1, [r4, #1]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #1]
	bl sub_0800EAE8
	ldr r1, [r5]
	movs r0, #3
	strb r0, [r1, #1]
	b _0800CCC4
	.align 2, 0
_0800CCA8: .4byte 0x03004420
_0800CCAC:
	ldr r0, [r5]
	adds r0, #0xd2
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800CCC4
	movs r0, #5
	bl sub_0800C1C0
	b _0800CCC4
_0800CCBE:
	movs r0, #7
	bl sub_0800C1C0
_0800CCC4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800CCCC
sub_0800CCCC: @ 0x0800CCCC
	push {r4, lr}
	ldr r4, _0800CCE0 @ =0x030013AC
	ldr r0, [r4]
	ldrb r0, [r0, #1]
	cmp r0, #0
	beq _0800CCE4
	cmp r0, #1
	beq _0800CD20
	b _0800CD36
	.align 2, 0
_0800CCE0: .4byte 0x030013AC
_0800CCE4:
	bl sub_080067F0
	bl sub_08005934
	ldr r2, _0800CD18 @ =0x0807FD60
	ldr r1, _0800CD1C @ =0x03004420
	ldrb r0, [r1, #1]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1d
	adds r1, #0x19
	adds r0, r0, r1
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r2, #8
	adds r0, r0, r2
	ldr r0, [r0]
	bl sub_080062D0
	bl sub_08005A2C
	ldr r1, [r4]
	movs r0, #1
	strb r0, [r1, #1]
	b _0800CD36
	.align 2, 0
_0800CD18: .4byte 0x0807FD60
_0800CD1C: .4byte 0x03004420
_0800CD20:
	ldr r1, _0800CD3C @ =0x03004420
	ldrb r2, [r1]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	movs r0, #0xd
	strb r0, [r1, #4]
	movs r0, #0x11
	bl sub_0800C1C0
_0800CD36:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800CD3C: .4byte 0x03004420

	thumb_func_start sub_0800CD40
sub_0800CD40: @ 0x0800CD40
	push {r4, lr}
	ldr r1, _0800CD5C @ =0x030013AC
	ldr r0, [r1]
	ldrb r0, [r0, #1]
	adds r4, r1, #0
	cmp r0, #4
	bls _0800CD50
	b _0800CED2
_0800CD50:
	lsls r0, r0, #2
	ldr r1, _0800CD60 @ =_0800CD64
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800CD5C: .4byte 0x030013AC
_0800CD60: .4byte _0800CD64
_0800CD64: @ jump table
	.4byte _0800CD78 @ case 0
	.4byte _0800CE38 @ case 1
	.4byte _0800CE58 @ case 2
	.4byte _0800CEA4 @ case 3
	.4byte _0800CEC2 @ case 4
_0800CD78:
	ldr r4, _0800CD98 @ =0x03004420
	movs r0, #0x11
	strb r0, [r4, #4]
	bl sub_080025B8
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0800CD9C
	ldrb r0, [r4, #2]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bge _0800CDC4
	movs r0, #9
	bl sub_0800C1C0
	b _0800CED2
	.align 2, 0
_0800CD98: .4byte 0x03004420
_0800CD9C:
	ldrb r0, [r4, #2]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bge _0800CDD0
	bl sub_0800F7D0
	bl sub_08005934
	ldr r0, _0800CDCC @ =0x080839C0
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	bl sub_08005A2C
	ldrb r1, [r4, #2]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #2]
_0800CDC4:
	movs r0, #5
	bl sub_0800C1C0
	b _0800CED2
	.align 2, 0
_0800CDCC: .4byte 0x080839C0
_0800CDD0:
	ldrb r0, [r4]
	movs r1, #5
	rsbs r1, r1, #0
	ands r1, r0
	strb r1, [r4]
	bl sub_08001F2C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0800CDEC
	ldrb r0, [r4]
	movs r1, #4
	orrs r0, r1
	strb r0, [r4]
_0800CDEC:
	ldrb r0, [r4]
	lsls r0, r0, #0x1d
	cmp r0, #0
	blt _0800CE14
	movs r0, #0x6a
	movs r1, #0x40
	bl sub_0800FA88
	bl sub_0800E620
	bl sub_0800D658
	ldr r0, _0800CE10 @ =0x030013AC
	ldr r1, [r0]
	movs r0, #2
	strb r0, [r1, #1]
	b _0800CED2
	.align 2, 0
_0800CE10: .4byte 0x030013AC
_0800CE14:
	adds r0, r4, #0
	adds r0, #0x10
	ldrb r1, [r4, #1]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1d
	adds r2, r4, #0
	adds r2, #0x19
	adds r1, r1, r2
	ldrb r1, [r1]
	bl sub_0800B844
	ldr r0, _0800CE34 @ =0x030013AC
	ldr r1, [r0]
	movs r0, #1
	strb r0, [r1, #1]
	b _0800CED2
	.align 2, 0
_0800CE34: .4byte 0x030013AC
_0800CE38:
	movs r0, #0x69
	movs r1, #0x40
	bl sub_0800FA88
	bl sub_0800D62C
	bl sub_0800E0A4
	ldr r0, _0800CE54 @ =0x030013AC
	ldr r1, [r0]
	movs r0, #3
	strb r0, [r1, #1]
	b _0800CED2
	.align 2, 0
_0800CE54: .4byte 0x030013AC
_0800CE58:
	ldr r1, [r4]
	adds r0, r1, #0
	adds r0, #0xcd
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800CED2
	adds r0, r1, #0
	adds r0, #0xd1
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800CED2
	bl sub_08005934
	ldr r1, _0800CE9C @ =0x0807FFB8
	ldr r0, _0800CEA0 @ =0x03004420
	ldrh r0, [r0]
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1c
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	bl sub_08005A2C
	bl sub_0800EB04
	ldr r1, [r4]
	movs r0, #4
	strb r0, [r1, #1]
	b _0800CED2
	.align 2, 0
_0800CE9C: .4byte 0x0807FFB8
_0800CEA0: .4byte 0x03004420
_0800CEA4:
	ldr r1, [r4]
	adds r0, r1, #0
	adds r0, #0xcd
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800CED2
	adds r0, r1, #0
	adds r0, #0xd0
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800CED2
	movs r0, #0xe
	bl sub_0800C1C0
	b _0800CED2
_0800CEC2:
	ldr r0, [r4]
	adds r0, #0xd2
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800CED2
	movs r0, #0x10
	bl sub_0800C1C0
_0800CED2:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0800CED8
sub_0800CED8: @ 0x0800CED8
	push {r4, r5, lr}
	ldr r1, _0800CEF4 @ =0x030013AC
	ldr r0, [r1]
	ldrb r0, [r0, #1]
	adds r2, r1, #0
	cmp r0, #4
	bls _0800CEE8
	b _0800D10E
_0800CEE8:
	lsls r0, r0, #2
	ldr r1, _0800CEF8 @ =_0800CEFC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800CEF4: .4byte 0x030013AC
_0800CEF8: .4byte _0800CEFC
_0800CEFC: @ jump table
	.4byte _0800CF10 @ case 0
	.4byte _0800CF24 @ case 1
	.4byte _0800D0F8 @ case 2
	.4byte _0800D100 @ case 3
	.4byte _0800D108 @ case 4
_0800CF10:
	bl sub_0800EB04
	ldr r0, _0800CF20 @ =0x030013AC
	ldr r1, [r0]
	movs r0, #1
	strb r0, [r1, #1]
	b _0800D10E
	.align 2, 0
_0800CF20: .4byte 0x030013AC
_0800CF24:
	ldr r0, [r2]
	adds r0, #0xd2
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800CF30
	b _0800D10E
_0800CF30:
	bl sub_08005934
	ldr r4, _0800CF68 @ =0x03004420
	ldrh r2, [r4]
	lsls r0, r2, #0x15
	lsrs r0, r0, #0x1c
	adds r0, #1
	movs r1, #0xf
	ands r0, r1
	lsls r0, r0, #7
	ldr r1, _0800CF6C @ =0xFFFFF87F
	ands r1, r2
	orrs r1, r0
	strh r1, [r4]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1c
	ldrb r0, [r4]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1c
	cmp r1, r0
	blt _0800CFE0
	cmp r0, #0xa
	beq _0800CF7E
	cmp r0, #0xa
	bgt _0800CF70
	cmp r0, #5
	beq _0800CF76
	b _0800CF8C
	.align 2, 0
_0800CF68: .4byte 0x03004420
_0800CF6C: .4byte 0xFFFFF87F
_0800CF70:
	cmp r0, #0xf
	beq _0800CF86
	b _0800CF8C
_0800CF76:
	movs r0, #0x41
	bl sub_0806F5DC
	b _0800CF8C
_0800CF7E:
	movs r0, #0x42
	bl sub_0806F5DC
	b _0800CF8C
_0800CF86:
	movs r0, #0x43
	bl sub_0806F5DC
_0800CF8C:
	bl sub_0800F7EC
	ldr r1, _0800CFD0 @ =0x0807FC34
	ldr r4, _0800CFD4 @ =0x03004420
	ldrb r0, [r4]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1c
	subs r0, #1
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	movs r0, #2
	bl sub_08005BE0
	ldr r5, _0800CFD8 @ =0x0807FD34
	ldrb r0, [r4]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1c
	subs r0, #1
	movs r1, #5
	bl sub_08070FCC
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	ldr r0, _0800CFDC @ =0x030013AC
	ldr r1, [r0]
	movs r0, #4
	b _0800D0E4
	.align 2, 0
_0800CFD0: .4byte 0x0807FC34
_0800CFD4: .4byte 0x03004420
_0800CFD8: .4byte 0x0807FD34
_0800CFDC: .4byte 0x030013AC
_0800CFE0:
	bl sub_0800F7EC
	ldrh r0, [r4]
	lsls r0, r0, #0x15
	lsrs r5, r0, #0x1c
	adds r0, r5, #0
	movs r1, #5
	bl sub_08071064
	cmp r0, #0
	beq _0800D094
	ldrb r0, [r4]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1c
	subs r0, #1
	cmp r5, r0
	bne _0800D018
	ldr r4, _0800D014 @ =0x0807FD28
	adds r0, r5, #0
	movs r1, #5
	bl sub_08070FCC
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	b _0800D02C
	.align 2, 0
_0800D014: .4byte 0x0807FD28
_0800D018:
	cmp r5, #7
	beq _0800D020
	cmp r5, #0xc
	bne _0800D03C
_0800D020:
	ldr r0, [r4]
	lsls r0, r0, #0xf
	lsrs r0, r0, #0x1d
	cmp r0, #0
	beq _0800D03C
	ldr r0, _0800D038 @ =0x080837B8
_0800D02C:
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	b _0800D080
	.align 2, 0
_0800D038: .4byte 0x080837B8
_0800D03C:
	ldr r1, _0800D088 @ =0x0807FD18
	ldr r4, _0800D08C @ =0x03004420
	ldrb r0, [r4, #2]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1e
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	movs r0, #3
	bl sub_0800B828
	ldrb r2, [r4, #2]
	lsls r1, r2, #0x1b
	lsrs r1, r1, #0x1e
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r0, #1
	adds r1, r1, r0
	adds r0, r1, #0
	asrs r0, r0, #2
	lsls r0, r0, #2
	subs r0, r1, r0
	movs r1, #3
	ands r0, r1
	lsls r0, r0, #3
	movs r1, #0x19
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r4, #2]
_0800D080:
	ldr r0, _0800D090 @ =0x030013AC
	ldr r1, [r0]
	movs r0, #3
	b _0800D0E4
	.align 2, 0
_0800D088: .4byte 0x0807FD18
_0800D08C: .4byte 0x03004420
_0800D090: .4byte 0x030013AC
_0800D094:
	cmp r5, #5
	bne _0800D0C0
	ldr r2, [r4]
	lsls r1, r2, #0xf
	lsrs r1, r1, #0x1d
	movs r0, #2
	orrs r1, r0
	lsls r1, r1, #0xe
	ldr r0, _0800D0B8 @ =0xFFFE3FFF
	ands r0, r2
	orrs r0, r1
	str r0, [r4]
	ldr r0, _0800D0BC @ =0x080837D0
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	b _0800D0DE
	.align 2, 0
_0800D0B8: .4byte 0xFFFE3FFF
_0800D0BC: .4byte 0x080837D0
_0800D0C0:
	ldr r2, [r4]
	lsls r1, r2, #0xf
	lsrs r1, r1, #0x1d
	movs r0, #4
	orrs r1, r0
	lsls r1, r1, #0xe
	ldr r0, _0800D0EC @ =0xFFFE3FFF
	ands r0, r2
	orrs r0, r1
	str r0, [r4]
	ldr r0, _0800D0F0 @ =0x080837E8
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
_0800D0DE:
	ldr r0, _0800D0F4 @ =0x030013AC
	ldr r1, [r0]
	movs r0, #2
_0800D0E4:
	strb r0, [r1, #1]
	bl sub_08005A2C
	b _0800D10E
	.align 2, 0
_0800D0EC: .4byte 0xFFFE3FFF
_0800D0F0: .4byte 0x080837E8
_0800D0F4: .4byte 0x030013AC
_0800D0F8:
	ldr r1, [r2]
	movs r0, #3
	strb r0, [r1, #1]
	b _0800D10E
_0800D100:
	movs r0, #4
	bl sub_0800C1C0
	b _0800D10E
_0800D108:
	movs r0, #0xf
	bl sub_0800C1C0
_0800D10E:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_0800D114
sub_0800D114: @ 0x0800D114
	push {r4, r5, r6, lr}
	ldr r1, _0800D130 @ =0x030013AC
	ldr r0, [r1]
	ldrb r0, [r0, #1]
	adds r6, r1, #0
	cmp r0, #5
	bls _0800D124
	b _0800D22C
_0800D124:
	lsls r0, r0, #2
	ldr r1, _0800D134 @ =_0800D138
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800D130: .4byte 0x030013AC
_0800D134: .4byte _0800D138
_0800D138: @ jump table
	.4byte _0800D150 @ case 0
	.4byte _0800D158 @ case 1
	.4byte _0800D1A8 @ case 2
	.4byte _0800D1EC @ case 3
	.4byte _0800D212 @ case 4
	.4byte _0800D21A @ case 5
_0800D150:
	ldr r1, [r6]
	movs r0, #1
	strb r0, [r1, #1]
	b _0800D22C
_0800D158:
	ldr r0, _0800D174 @ =0x03004420
	ldrh r1, [r0]
	lsls r1, r1, #0x15
	lsrs r3, r1, #0x1c
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1c
	cmp r3, r0
	bne _0800D178
	ldr r1, [r6]
	movs r0, #0x9c
	lsls r0, r0, #1
	adds r1, r1, r0
	b _0800D180
	.align 2, 0
_0800D174: .4byte 0x03004420
_0800D178:
	ldr r1, [r6]
	movs r2, #0x9c
	lsls r2, r2, #1
	adds r1, r1, r2
_0800D180:
	ldr r2, _0800D1A4 @ =0x0807FC34
	subs r0, r3, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [r1]
	ldr r0, [r6]
	movs r1, #0x9c
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_0800D95C
	ldr r1, [r6]
	movs r0, #2
	strb r0, [r1, #1]
	b _0800D22C
	.align 2, 0
_0800D1A4: .4byte 0x0807FC34
_0800D1A8:
	ldr r1, [r6]
	adds r0, r1, #0
	adds r0, #0xce
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800D22C
	ldr r4, _0800D1E8 @ =0x03004400
	ldr r5, [r4, #0x10]
	movs r2, #0x9c
	lsls r2, r2, #1
	adds r0, r1, r2
	ldr r0, [r0]
	adds r0, r5, r0
	bl sub_0800B6DC
	ldr r1, [r4, #0x10]
	adds r0, r5, #0
	bl sub_0800D2EC
	bl sub_0800DDD0
	bl sub_0800D62C
	bl sub_0800F39C
	bl sub_0800F598
	ldr r1, [r6]
	movs r0, #3
	strb r0, [r1, #1]
	b _0800D22C
	.align 2, 0
_0800D1E8: .4byte 0x03004400
_0800D1EC:
	ldr r1, [r6]
	adds r0, r1, #0
	adds r0, #0xcc
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800D22C
	adds r0, r1, #0
	adds r0, #0xcd
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800D22C
	adds r0, r1, #0
	adds r0, #0xd4
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800D22C
	movs r0, #4
	strb r0, [r1, #1]
	b _0800D22C
_0800D212:
	ldr r1, [r6]
	movs r0, #5
	strb r0, [r1, #1]
	b _0800D22C
_0800D21A:
	movs r0, #0x23
	bl sub_08008790
	movs r0, #0x2b
	bl sub_080072F4
	movs r0, #0x10
	bl sub_0800C1C0
_0800D22C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800D234
sub_0800D234: @ 0x0800D234
	push {lr}
	bl sub_0800F7D0
	bl sub_08005934
	ldr r0, _0800D258 @ =0x08083924
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	bl sub_08005A2C
	movs r0, #0x11
	bl sub_0800C1C0
	pop {r0}
	bx r0
	.align 2, 0
_0800D258: .4byte 0x08083924

	thumb_func_start sub_0800D25C
sub_0800D25C: @ 0x0800D25C
	push {r4, lr}
	ldr r4, _0800D270 @ =0x030013AC
	ldr r1, [r4]
	ldrb r0, [r1, #1]
	cmp r0, #0
	beq _0800D274
	cmp r0, #1
	beq _0800D28C
	b _0800D28E
	.align 2, 0
_0800D270: .4byte 0x030013AC
_0800D274:
	ldr r0, _0800D288 @ =0x030056F0
	movs r1, #5
	bl sub_0806F774
	bl sub_0800B700
	ldr r1, [r4]
	movs r0, #1
	strb r0, [r1, #1]
	b _0800D28E
	.align 2, 0
_0800D288: .4byte 0x030056F0
_0800D28C:
	strb r0, [r1, #6]
_0800D28E:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0800D294
sub_0800D294: @ 0x0800D294
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _0800D2C8 @ =0x030013AC
	ldr r0, [r5]
	movs r1, #8
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	adds r6, r0, #0
	ldr r0, [r5]
	movs r1, #8
	ldrsh r0, [r0, r1]
	ldr r1, _0800D2CC @ =0x0808003C
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
_0800D2C8: .4byte 0x030013AC
_0800D2CC: .4byte 0x0808003C

	thumb_func_start sub_0800D2D0
sub_0800D2D0: @ 0x0800D2D0
	push {lr}
	ldr r0, _0800D2E8 @ =0x030013AC
	ldr r0, [r0]
	adds r0, #0xcc
	movs r1, #0
	strb r1, [r0]
	movs r0, #0
	bl sub_0800D294
	pop {r0}
	bx r0
	.align 2, 0
_0800D2E8: .4byte 0x030013AC

	thumb_func_start sub_0800D2EC
sub_0800D2EC: @ 0x0800D2EC
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r0, _0800D30C @ =0x030013AC
	ldr r0, [r0]
	movs r1, #8
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	adds r2, r0, #0
	cmp r5, r4
	bne _0800D310
	bl sub_0800D2D0
	b _0800D33E
	.align 2, 0
_0800D30C: .4byte 0x030013AC
_0800D310:
	str r5, [r2, #4]
	str r4, [r2, #8]
	subs r0, r5, r4
	adds r1, r0, #0
	cmp r0, #0
	bge _0800D31E
	rsbs r1, r0, #0
_0800D31E:
	cmp r1, #0x77
	bhi _0800D32A
	cmp r0, #0
	bge _0800D32C
	rsbs r0, r0, #0
	b _0800D32C
_0800D32A:
	movs r0, #0x78
_0800D32C:
	strh r0, [r2, #0xc]
	ldr r0, _0800D344 @ =0x030013AC
	ldr r0, [r0]
	adds r0, #0xcc
	movs r1, #1
	strb r1, [r0]
	movs r0, #1
	bl sub_0800D294
_0800D33E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800D344: .4byte 0x030013AC

	thumb_func_start sub_0800D348
sub_0800D348: @ 0x0800D348
	push {r4, r5, lr}
	ldr r4, _0800D370 @ =0x030013AC
	ldr r0, [r4]
	ldr r0, [r0, #0x20]
	bl sub_08009A00
	movs r5, #0
_0800D356:
	ldr r0, [r4]
	lsls r1, r5, #2
	adds r0, #0x24
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_08009A00
	adds r5, #1
	cmp r5, #5
	ble _0800D356
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800D370: .4byte 0x030013AC

	thumb_func_start sub_0800D374
sub_0800D374: @ 0x0800D374
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	bl sub_08007BD4
	movs r0, #1
	movs r1, #0x80
	bl sub_080099E0
	adds r6, r0, #0
	movs r1, #1
	bl sub_08009A34
	adds r0, r6, #0
	movs r1, #0x50
	movs r2, #0
	bl sub_08009A70
	ldr r4, _0800D458 @ =0x030013AC
	ldr r0, [r4]
	adds r0, #0xe4
	ldr r1, [r0]
	adds r0, r6, #0
	bl sub_08009A78
	adds r0, r6, #0
	movs r1, #6
	bl sub_08009AB4
	ldr r1, _0800D45C @ =0x0809C860
	ldr r2, _0800D460 @ =0x0809C830
	adds r0, r6, #0
	movs r3, #0xa
	bl sub_08009ACC
	adds r0, r6, #0
	movs r1, #0
	bl sub_08009B40
	ldr r0, [r4]
	str r6, [r0, #0x20]
	movs r0, #0
	mov sl, r0
	ldr r0, _0800D464 @ =0x03004400
	ldr r0, [r0, #0x10]
	mov r8, r0
	movs r7, #0
	movs r2, #0
	mov sb, r2
_0800D3DA:
	cmp r7, #5
	bne _0800D3E2
	movs r0, #1
	mov sl, r0
_0800D3E2:
	ldr r0, _0800D468 @ =0x08083A18
	add r0, sb
	ldr r4, [r0]
	mov r0, r8
	adds r1, r4, #0
	bl sub_08071134
	adds r5, r0, #0
	mov r0, r8
	adds r1, r4, #0
	bl sub_080711AC
	mov r8, r0
	movs r0, #1
	movs r1, #0x80
	bl sub_080099E0
	adds r6, r0, #0
	ldr r1, _0800D46C @ =0x08083A0C
	lsls r0, r7, #1
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r0, r6, #0
	movs r2, #4
	bl sub_08009A70
	ldr r0, _0800D458 @ =0x030013AC
	ldr r0, [r0]
	adds r0, #0xe4
	ldr r1, [r0]
	adds r0, r6, #0
	bl sub_08009A78
	adds r0, r6, #0
	movs r1, #6
	bl sub_08009AB4
	lsls r3, r5, #0x18
	lsrs r3, r3, #0x18
	adds r0, r6, #0
	ldr r1, _0800D45C @ =0x0809C860
	ldr r2, _0800D460 @ =0x0809C830
	bl sub_08009ACC
	adds r0, r6, #0
	movs r1, #0
	bl sub_08009B40
	cmp r5, #0
	bne _0800D470
	mov r0, sl
	cmp r0, #0
	bne _0800D470
	adds r0, r6, #0
	movs r1, #0
	bl sub_08009A34
	b _0800D47C
	.align 2, 0
_0800D458: .4byte 0x030013AC
_0800D45C: .4byte 0x0809C860
_0800D460: .4byte 0x0809C830
_0800D464: .4byte 0x03004400
_0800D468: .4byte 0x08083A18
_0800D46C: .4byte 0x08083A0C
_0800D470:
	movs r2, #1
	mov sl, r2
	adds r0, r6, #0
	movs r1, #1
	bl sub_08009A34
_0800D47C:
	ldr r0, _0800D4B0 @ =0x030013AC
	ldr r1, [r0]
	adds r0, r1, #0
	adds r0, #0x24
	add r0, sb
	str r6, [r0]
	movs r0, #4
	add sb, r0
	adds r7, #1
	cmp r7, #5
	ble _0800D3DA
	movs r2, #8
	ldrsh r0, [r1, r2]
	ldr r1, _0800D4B4 @ =sub_0800D348
	bl sub_08007BA0
	bl sub_0800D2D0
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800D4B0: .4byte 0x030013AC
_0800D4B4: .4byte sub_0800D348

	thumb_func_start sub_0800D4B8
sub_0800D4B8: @ 0x0800D4B8
	bx lr
	.align 2, 0

	thumb_func_start sub_0800D4BC
sub_0800D4BC: @ 0x0800D4BC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	bl sub_08007BD4
	adds r6, r0, #0
	ldrb r0, [r6]
	cmp r0, #1
	beq _0800D4EC
	cmp r0, #1
	bgt _0800D4DC
	cmp r0, #0
	beq _0800D4E2
	b _0800D5AA
_0800D4DC:
	cmp r0, #2
	beq _0800D5A0
	b _0800D5AA
_0800D4E2:
	movs r0, #0xe0
	bl sub_0806F5DC
	movs r0, #1
	strb r0, [r6]
_0800D4EC:
	ldr r1, [r6, #8]
	ldr r4, [r6, #4]
	subs r1, r1, r4
	ldrh r0, [r6, #2]
	adds r0, #1
	strh r0, [r6, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	muls r0, r1, r0
	ldrh r1, [r6, #0xc]
	bl sub_08071134
	adds r4, r4, r0
	mov r8, r4
	movs r0, #0
	mov sl, r0
	mov sb, r0
	movs r7, #0
_0800D510:
	ldr r0, _0800D560 @ =0x08083A18
	adds r0, r7, r0
	ldr r4, [r0]
	mov r0, r8
	adds r1, r4, #0
	bl sub_08071134
	adds r5, r0, #0
	mov r0, r8
	adds r1, r4, #0
	bl sub_080711AC
	mov r8, r0
	mov r1, sb
	cmp r1, #5
	bne _0800D534
	movs r0, #1
	mov sl, r0
_0800D534:
	ldr r4, _0800D564 @ =0x030013AC
	ldr r0, [r4]
	adds r0, #0x24
	adds r0, r0, r7
	ldr r0, [r0]
	lsls r1, r5, #0x18
	lsrs r1, r1, #0x18
	bl sub_08009AFC
	cmp r5, #0
	bne _0800D568
	mov r1, sl
	cmp r1, #0
	bne _0800D568
	ldr r0, [r4]
	adds r0, #0x24
	adds r0, r0, r7
	ldr r0, [r0]
	movs r1, #0
	bl sub_08009A34
	b _0800D57C
	.align 2, 0
_0800D560: .4byte 0x08083A18
_0800D564: .4byte 0x030013AC
_0800D568:
	ldr r0, _0800D59C @ =0x030013AC
	ldr r0, [r0]
	adds r0, #0x24
	adds r0, r0, r7
	ldr r0, [r0]
	movs r1, #1
	bl sub_08009A34
	movs r0, #1
	mov sl, r0
_0800D57C:
	adds r7, #4
	movs r1, #1
	add sb, r1
	mov r0, sb
	cmp r0, #5
	ble _0800D510
	ldrh r0, [r6, #2]
	ldrh r1, [r6, #0xc]
	cmp r0, r1
	blo _0800D5AA
	movs r0, #0
	strh r0, [r6, #2]
	movs r0, #2
	strb r0, [r6]
	b _0800D5AA
	.align 2, 0
_0800D59C: .4byte 0x030013AC
_0800D5A0:
	movs r0, #0xe0
	bl sub_0806F6A8
	bl sub_0800D2D0
_0800D5AA:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0800D5B8
sub_0800D5B8: @ 0x0800D5B8
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _0800D5EC @ =0x030013AC
	ldr r0, [r5]
	movs r1, #0xa
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	adds r6, r0, #0
	ldr r0, [r5]
	movs r1, #0xa
	ldrsh r0, [r0, r1]
	ldr r1, _0800D5F0 @ =0x08080044
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
_0800D5EC: .4byte 0x030013AC
_0800D5F0: .4byte 0x08080044

	thumb_func_start sub_0800D5F4
sub_0800D5F4: @ 0x0800D5F4
	push {lr}
	ldr r0, _0800D60C @ =0x030013AC
	ldr r0, [r0]
	adds r0, #0xcd
	movs r1, #0
	strb r1, [r0]
	movs r0, #0
	bl sub_0800D5B8
	pop {r0}
	bx r0
	.align 2, 0
_0800D60C: .4byte 0x030013AC

	thumb_func_start sub_0800D610
sub_0800D610: @ 0x0800D610
	push {lr}
	ldr r0, _0800D628 @ =0x030013AC
	ldr r0, [r0]
	adds r0, #0xcd
	movs r1, #1
	strb r1, [r0]
	movs r0, #1
	bl sub_0800D5B8
	pop {r0}
	bx r0
	.align 2, 0
_0800D628: .4byte 0x030013AC

	thumb_func_start sub_0800D62C
sub_0800D62C: @ 0x0800D62C
	push {r4, lr}
	ldr r4, _0800D654 @ =0x030013AC
	ldr r0, [r4]
	movs r1, #0xa
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	movs r2, #1
	movs r1, #1
	strh r1, [r0, #4]
	ldr r0, [r4]
	adds r0, #0xcd
	strb r2, [r0]
	movs r0, #2
	bl sub_0800D5B8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800D654: .4byte 0x030013AC

	thumb_func_start sub_0800D658
sub_0800D658: @ 0x0800D658
	push {r4, lr}
	ldr r4, _0800D680 @ =0x030013AC
	ldr r0, [r4]
	movs r1, #0xa
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	movs r1, #0
	strh r1, [r0, #4]
	ldr r0, [r4]
	adds r0, #0xcd
	movs r1, #1
	strb r1, [r0]
	movs r0, #2
	bl sub_0800D5B8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800D680: .4byte 0x030013AC

	thumb_func_start sub_0800D684
sub_0800D684: @ 0x0800D684
	push {lr}
	ldr r0, _0800D694 @ =0x030013AC
	ldr r0, [r0]
	ldr r0, [r0, #0x3c]
	bl sub_08009A00
	pop {r0}
	bx r0
	.align 2, 0
_0800D694: .4byte 0x030013AC

	thumb_func_start sub_0800D698
sub_0800D698: @ 0x0800D698
	push {r4, lr}
	ldr r0, _0800D6E4 @ =0x03004420
	ldrb r0, [r0, #4]
	cmp r0, #0
	beq _0800D6B2
	bl sub_0800D6F4
	ldr r0, _0800D6E8 @ =0x030013AC
	ldr r0, [r0]
	ldr r0, [r0, #0x3c]
	movs r1, #1
	bl sub_08009A34
_0800D6B2:
	ldr r0, _0800D6EC @ =0x08080044
	ldr r0, [r0]
	movs r1, #0x40
	movs r2, #0
	bl sub_08007968
	ldr r4, _0800D6E8 @ =0x030013AC
	ldr r1, [r4]
	strh r0, [r1, #0xa]
	movs r2, #0xa
	ldrsh r0, [r1, r2]
	bl sub_08007BBC
	ldr r0, [r4]
	movs r1, #0xa
	ldrsh r0, [r0, r1]
	ldr r1, _0800D6F0 @ =sub_0800D684
	bl sub_08007BA0
	bl sub_0800D5F4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800D6E4: .4byte 0x03004420
_0800D6E8: .4byte 0x030013AC
_0800D6EC: .4byte 0x08080044
_0800D6F0: .4byte sub_0800D684

	thumb_func_start sub_0800D6F4
sub_0800D6F4: @ 0x0800D6F4
	push {r4, r5, lr}
	movs r0, #1
	movs r1, #0x80
	bl sub_080099E0
	adds r4, r0, #0
	movs r1, #0
	bl sub_08009A34
	adds r0, r4, #0
	movs r1, #0x30
	movs r2, #0x70
	bl sub_08009A70
	ldr r1, _0800D760 @ =0x06010000
	adds r0, r4, #0
	bl sub_08009A78
	ldr r5, _0800D764 @ =0x030013AC
	ldr r0, [r5]
	adds r0, #0xf4
	ldr r1, [r0]
	adds r0, r4, #0
	movs r2, #0
	bl sub_08009BBC
	adds r0, r4, #0
	movs r1, #0
	bl sub_08009AB4
	ldr r1, _0800D768 @ =0x080839DC
	ldr r0, _0800D76C @ =0x03004420
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1c
	adds r1, r0, r1
	ldr r1, [r1]
	ldr r2, _0800D770 @ =0x080839FC
	adds r0, r0, r2
	ldr r2, [r0]
	adds r0, r4, #0
	movs r3, #1
	bl sub_08009ACC
	adds r0, r4, #0
	movs r1, #0xff
	bl sub_08009B40
	ldr r0, [r5]
	str r4, [r0, #0x3c]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800D760: .4byte 0x06010000
_0800D764: .4byte 0x030013AC
_0800D768: .4byte 0x080839DC
_0800D76C: .4byte 0x03004420
_0800D770: .4byte 0x080839FC

	thumb_func_start sub_0800D774
sub_0800D774: @ 0x0800D774
	bx lr
	.align 2, 0

	thumb_func_start sub_0800D778
sub_0800D778: @ 0x0800D778
	push {r4, r5, r6, r7, lr}
	bl sub_08007BD4
	adds r7, r0, #0
	ldr r0, _0800D798 @ =0x030013AC
	ldr r0, [r0]
	ldr r5, [r0, #0x3c]
	ldrb r1, [r7]
	cmp r1, #1
	beq _0800D7CA
	cmp r1, #1
	bgt _0800D79C
	cmp r1, #0
	beq _0800D7A6
	b _0800D84E
	.align 2, 0
_0800D798: .4byte 0x030013AC
_0800D79C:
	cmp r1, #2
	beq _0800D820
	cmp r1, #3
	beq _0800D842
	b _0800D84E
_0800D7A6:
	adds r0, r5, #0
	movs r1, #1
	bl sub_08009A34
	movs r1, #0x18
	rsbs r1, r1, #0
	movs r0, #8
	ldrsh r2, [r5, r0]
	adds r0, r5, #0
	bl sub_08009A70
	adds r0, r5, #0
	movs r1, #3
	bl sub_08009AFC
	movs r0, #1
	strb r0, [r7]
	b _0800D84E
_0800D7CA:
	movs r0, #6
	ldrsh r4, [r5, r0]
	adds r4, #1
	ldr r6, _0800D818 @ =0x030024E0
	ldrh r0, [r6, #0xe]
	subs r0, #1
	strh r0, [r6, #0xe]
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	movs r0, #8
	ldrsh r2, [r5, r0]
	adds r0, r5, #0
	bl sub_08009A70
	cmp r4, #0x30
	bne _0800D84E
	adds r0, r5, #0
	movs r1, #5
	bl sub_08009AFC
	adds r0, r5, #0
	movs r1, #0
	bl sub_08009B40
	movs r0, #0
	strh r0, [r6, #0xe]
	ldrh r1, [r6]
	ldr r0, _0800D81C @ =0x0000BFFF
	ands r0, r1
	strh r0, [r6]
	bl sub_0800DDD0
	movs r0, #0x3c
	bl sub_08007AC0
	movs r0, #2
	strb r0, [r7]
	b _0800D84E
	.align 2, 0
_0800D818: .4byte 0x030024E0
_0800D81C: .4byte 0x0000BFFF
_0800D820:
	adds r0, #0xcf
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800D84E
	adds r0, r5, #0
	movs r1, #1
	bl sub_08009AFC
	adds r0, r5, #0
	movs r1, #0xff
	bl sub_08009B40
	bl sub_0800DDF8
	movs r0, #3
	strb r0, [r7]
	b _0800D84E
_0800D842:
	adds r0, #0xcf
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800D84E
	bl sub_0800D5F4
_0800D84E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0800D854
sub_0800D854: @ 0x0800D854
	push {r4, r5, lr}
	bl sub_08007BD4
	adds r5, r0, #0
	ldr r0, _0800D874 @ =0x030013AC
	ldr r0, [r0]
	ldr r4, [r0, #0x3c]
	ldrb r0, [r5]
	cmp r0, #4
	bhi _0800D8FE
	lsls r0, r0, #2
	ldr r1, _0800D878 @ =_0800D87C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800D874: .4byte 0x030013AC
_0800D878: .4byte _0800D87C
_0800D87C: @ jump table
	.4byte _0800D890 @ case 0
	.4byte _0800D8B6 @ case 1
	.4byte _0800D8CA @ case 2
	.4byte _0800D8E6 @ case 3
	.4byte _0800D8FA @ case 4
_0800D890:
	ldrh r0, [r5, #4]
	cmp r0, #0
	beq _0800D8A0
	adds r0, r4, #0
	movs r1, #7
	bl sub_08009AFC
	b _0800D8A8
_0800D8A0:
	adds r0, r4, #0
	movs r1, #8
	bl sub_08009AFC
_0800D8A8:
	adds r0, r4, #0
	movs r1, #0
	bl sub_08009B40
	movs r0, #1
	strb r0, [r5]
	b _0800D8FE
_0800D8B6:
	ldrb r0, [r4, #1]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _0800D8FE
	movs r0, #0x3c
	bl sub_08007AC0
	movs r0, #2
	strb r0, [r5]
	b _0800D8FE
_0800D8CA:
	ldrh r0, [r5, #4]
	cmp r0, #0
	beq _0800D8F4
	adds r0, r4, #0
	movs r1, #1
	bl sub_08009AFC
	adds r0, r4, #0
	movs r1, #0xff
	bl sub_08009B40
	movs r0, #3
	strb r0, [r5]
	b _0800D8FE
_0800D8E6:
	ldrb r0, [r4, #1]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _0800D8FE
	movs r0, #0xf
	bl sub_08007AC0
_0800D8F4:
	movs r0, #4
	strb r0, [r5]
	b _0800D8FE
_0800D8FA:
	bl sub_0800D5F4
_0800D8FE:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_0800D904
sub_0800D904: @ 0x0800D904
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _0800D938 @ =0x030013AC
	ldr r0, [r5]
	movs r1, #0xc
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	adds r6, r0, #0
	ldr r0, [r5]
	movs r1, #0xc
	ldrsh r0, [r0, r1]
	ldr r1, _0800D93C @ =0x08080120
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
_0800D938: .4byte 0x030013AC
_0800D93C: .4byte 0x08080120

	thumb_func_start sub_0800D940
sub_0800D940: @ 0x0800D940
	push {lr}
	ldr r0, _0800D958 @ =0x030013AC
	ldr r0, [r0]
	adds r0, #0xce
	movs r1, #0
	strb r1, [r0]
	movs r0, #0
	bl sub_0800D904
	pop {r0}
	bx r0
	.align 2, 0
_0800D958: .4byte 0x030013AC

	thumb_func_start sub_0800D95C
sub_0800D95C: @ 0x0800D95C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _0800D984 @ =0x030013AC
	ldr r0, [r4]
	movs r1, #0xc
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	str r5, [r0, #4]
	ldr r0, [r4]
	adds r0, #0xce
	movs r1, #1
	strb r1, [r0]
	movs r0, #1
	bl sub_0800D904
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800D984: .4byte 0x030013AC

	thumb_func_start sub_0800D988
sub_0800D988: @ 0x0800D988
	push {r4, r5, lr}
	ldr r4, _0800D9B0 @ =0x030013AC
	ldr r0, [r4]
	ldr r0, [r0, #0x40]
	bl sub_08009A00
	movs r5, #0
_0800D996:
	ldr r0, [r4]
	lsls r1, r5, #2
	adds r0, #0x44
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_08009A00
	adds r5, #1
	cmp r5, #5
	ble _0800D996
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800D9B0: .4byte 0x030013AC

	thumb_func_start sub_0800D9B4
sub_0800D9B4: @ 0x0800D9B4
	push {r4, r5, r6, r7, lr}
	bl sub_08007BD4
	movs r0, #1
	movs r1, #0x40
	bl sub_080099E0
	adds r5, r0, #0
	movs r1, #0
	bl sub_08009A34
	adds r0, r5, #0
	movs r1, #0x78
	movs r2, #0x20
	bl sub_08009A70
	ldr r4, _0800DA90 @ =0x030013AC
	ldr r0, [r4]
	adds r0, #0xdc
	ldr r1, [r0]
	adds r0, r5, #0
	bl sub_08009A78
	adds r0, r5, #0
	movs r1, #9
	bl sub_08009AB4
	ldr r1, _0800DA94 @ =0x080F34DC
	ldr r2, _0800DA98 @ =0x080F34D4
	adds r0, r5, #0
	movs r3, #0
	bl sub_08009ACC
	adds r0, r5, #0
	movs r1, #0
	bl sub_08009B40
	ldr r0, [r4]
	str r5, [r0, #0x40]
	movs r6, #0
	adds r7, r4, #0
_0800DA06:
	movs r0, #1
	movs r1, #0x3f
	bl sub_080099E0
	adds r5, r0, #0
	movs r1, #0
	bl sub_08009A34
	ldr r1, _0800DA9C @ =0x0807FC70
	lsls r0, r6, #1
	adds r0, r0, r1
	ldrh r4, [r0]
	adds r1, r4, #0
	adds r1, #0x78
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r5, #0
	movs r2, #0x18
	bl sub_08009A70
	ldr r0, [r7]
	adds r0, #0xe0
	ldr r1, [r0]
	adds r0, r5, #0
	bl sub_08009A78
	adds r0, r5, #0
	movs r1, #8
	bl sub_08009AB4
	adds r0, r5, #0
	ldr r1, _0800DAA0 @ =0x080F3E08
	ldr r2, _0800DAA4 @ =0x080F3DDC
	movs r3, #0
	bl sub_08009ACC
	adds r0, r5, #0
	movs r1, #0
	bl sub_08009B40
	rsbs r4, r4, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #8
	bl sub_08009C14
	ldr r0, [r7]
	lsls r1, r6, #2
	adds r0, #0x44
	adds r0, r0, r1
	str r5, [r0]
	adds r6, #1
	cmp r6, #5
	ble _0800DA06
	ldr r0, _0800DA90 @ =0x030013AC
	ldr r0, [r0]
	movs r1, #0xc
	ldrsh r0, [r0, r1]
	ldr r1, _0800DAA8 @ =sub_0800D988
	bl sub_08007BA0
	bl sub_0800D940
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800DA90: .4byte 0x030013AC
_0800DA94: .4byte 0x080F34DC
_0800DA98: .4byte 0x080F34D4
_0800DA9C: .4byte 0x0807FC70
_0800DAA0: .4byte 0x080F3E08
_0800DAA4: .4byte 0x080F3DDC
_0800DAA8: .4byte sub_0800D988

	thumb_func_start sub_0800DAAC
sub_0800DAAC: @ 0x0800DAAC
	bx lr
	.align 2, 0

	thumb_func_start sub_0800DAB0
sub_0800DAB0: @ 0x0800DAB0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	bl sub_08007BD4
	adds r7, r0, #0
	ldrb r0, [r7]
	cmp r0, #5
	bls _0800DACA
	b _0800DD3C
_0800DACA:
	lsls r0, r0, #2
	ldr r1, _0800DAD4 @ =_0800DAD8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800DAD4: .4byte _0800DAD8
_0800DAD8: @ jump table
	.4byte _0800DAF0 @ case 0
	.4byte _0800DBCC @ case 1
	.4byte _0800DC30 @ case 2
	.4byte _0800DC3A @ case 3
	.4byte _0800DCE4 @ case 4
	.4byte _0800DD38 @ case 5
_0800DAF0:
	ldr r5, _0800DBC4 @ =0x030013AC
	ldr r0, [r5]
	ldr r0, [r0, #0x40]
	movs r1, #1
	bl sub_08009A34
	ldr r0, [r5]
	ldr r4, [r0, #0x40]
	bl sub_08009DDC
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_08009B9C
	ldr r0, [r5]
	ldr r0, [r0, #0x40]
	movs r1, #1
	bl sub_08009B84
	ldr r0, [r7, #4]
	mov r8, r0
	movs r1, #0
	str r1, [sp]
	movs r6, #0
	mov sb, r5
_0800DB22:
	ldr r0, _0800DBC8 @ =0x08083A18
	lsls r4, r6, #2
	adds r0, r4, r0
	ldr r5, [r0]
	mov r0, r8
	adds r1, r5, #0
	bl sub_08071134
	mov sl, r0
	cmp r6, #5
	bne _0800DB3C
	movs r2, #1
	str r2, [sp]
_0800DB3C:
	cmp r0, #0
	bne _0800DB46
	ldr r3, [sp]
	cmp r3, #0
	beq _0800DB9C
_0800DB46:
	movs r0, #1
	str r0, [sp]
	mov r1, sb
	ldr r0, [r1]
	adds r0, #0x44
	adds r0, r0, r4
	ldr r0, [r0]
	movs r1, #1
	bl sub_08009A34
	mov r2, sb
	ldr r0, [r2]
	adds r0, #0x44
	adds r0, r0, r4
	ldr r0, [r0]
	movs r1, #1
	bl sub_08009B84
	mov r3, sb
	ldr r1, [r3]
	adds r0, r1, #0
	adds r0, #0x44
	adds r0, r0, r4
	ldr r0, [r0]
	ldr r1, [r1, #0x40]
	ldr r1, [r1, #0x24]
	bl sub_08009B9C
	mov r1, sb
	ldr r0, [r1]
	adds r0, #0x44
	adds r0, r0, r4
	ldr r0, [r0]
	mov r2, sl
	lsls r1, r2, #0x18
	lsrs r1, r1, #0x18
	bl sub_08009AFC
	mov r0, r8
	adds r1, r5, #0
	bl sub_080711AC
	mov r8, r0
_0800DB9C:
	adds r6, #1
	cmp r6, #5
	ble _0800DB22
	ldr r0, _0800DBC4 @ =0x030013AC
	ldr r0, [r0]
	ldr r0, [r0, #0x40]
	ldr r0, [r0, #0x24]
	movs r1, #0x80
	movs r2, #0x80
	bl sub_08009E84
	movs r0, #0xdd
	bl sub_0806F5DC
	movs r1, #0
	movs r0, #1
	strb r0, [r7]
	strh r1, [r7, #2]
	b _0800DD3C
	.align 2, 0
_0800DBC4: .4byte 0x030013AC
_0800DBC8: .4byte 0x08083A18
_0800DBCC:
	ldr r4, _0800DC28 @ =0x030013AC
	ldr r0, [r4]
	ldr r0, [r0, #0x40]
	ldr r0, [r0, #0x24]
	ldr r2, _0800DC2C @ =0x08080050
	ldrh r1, [r7, #2]
	lsls r1, r1, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r1, r2, #0
	bl sub_08009E84
	ldrh r0, [r7, #2]
	adds r0, #1
	strh r0, [r7, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #7
	bhi _0800DBF6
	b _0800DD3C
_0800DBF6:
	movs r0, #0
	strh r0, [r7, #2]
	movs r0, #2
	strb r0, [r7]
	movs r0, #0x3c
	bl sub_08007AC0
	ldr r0, [r4]
	ldr r0, [r0, #0x40]
	movs r1, #0
	bl sub_08009B84
	movs r6, #0
_0800DC10:
	ldr r0, [r4]
	lsls r1, r6, #2
	adds r0, #0x44
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0
	bl sub_08009B84
	adds r6, #1
	cmp r6, #5
	ble _0800DC10
	b _0800DD3C
	.align 2, 0
_0800DC28: .4byte 0x030013AC
_0800DC2C: .4byte 0x08080050
_0800DC30:
	movs r0, #0xde
	bl sub_0806F5DC
	movs r0, #3
	strb r0, [r7]
_0800DC3A:
	ldr r0, _0800DCD8 @ =0x030013AC
	ldr r0, [r0]
	ldr r0, [r0, #0x40]
	ldr r3, _0800DCDC @ =0x08080060
	ldrh r1, [r7, #2]
	lsls r2, r1, #1
	adds r2, r2, r1
	lsls r2, r2, #1
	adds r1, r2, r3
	ldrh r1, [r1]
	adds r1, #0x78
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r3, #2
	adds r2, r2, r3
	ldrh r2, [r2]
	adds r2, #0x20
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl sub_08009A70
	movs r6, #0
	ldr r4, _0800DCE0 @ =0x0807FC70
_0800DC68:
	ldr r5, _0800DCD8 @ =0x030013AC
	ldr r2, [r5]
	lsls r1, r6, #2
	adds r0, r2, #0
	adds r0, #0x44
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r2, [r2, #0x40]
	ldrh r1, [r4]
	ldrh r3, [r2, #6]
	adds r1, r1, r3
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldrh r2, [r2, #8]
	subs r2, #8
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl sub_08009A70
	adds r4, #2
	adds r6, #1
	cmp r6, #5
	ble _0800DC68
	ldr r0, [r5]
	ldr r0, [r0, #0x40]
	ldr r0, [r0, #0x24]
	ldr r3, _0800DCDC @ =0x08080060
	ldrh r2, [r7, #2]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #1
	adds r3, #4
	adds r1, r1, r3
	movs r3, #0x80
	lsls r3, r3, #1
	adds r2, r3, #0
	ldrh r1, [r1]
	adds r2, r2, r1
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r1, r2, #0
	bl sub_08009E84
	ldrh r0, [r7, #2]
	adds r0, #1
	strh r0, [r7, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x1f
	bls _0800DD3C
	movs r0, #0
	strh r0, [r7, #2]
	movs r0, #4
	strb r0, [r7]
	b _0800DD3C
	.align 2, 0
_0800DCD8: .4byte 0x030013AC
_0800DCDC: .4byte 0x08080060
_0800DCE0: .4byte 0x0807FC70
_0800DCE4:
	ldr r4, _0800DD34 @ =0x030013AC
	ldr r0, [r4]
	ldr r0, [r0, #0x40]
	ldr r0, [r0, #0x24]
	bl sub_08009E54
	ldr r0, [r4]
	ldr r0, [r0, #0x40]
	movs r1, #0
	bl sub_08009B9C
	ldr r0, [r4]
	ldr r0, [r0, #0x40]
	movs r1, #0
	bl sub_08009A34
	movs r6, #0
	adds r5, r4, #0
_0800DD08:
	ldr r0, [r5]
	lsls r4, r6, #2
	adds r0, #0x44
	adds r0, r0, r4
	ldr r0, [r0]
	movs r1, #0
	bl sub_08009A34
	ldr r0, [r5]
	adds r0, #0x44
	adds r0, r0, r4
	ldr r0, [r0]
	movs r1, #0
	bl sub_08009B9C
	adds r6, #1
	cmp r6, #5
	ble _0800DD08
	movs r0, #5
	strb r0, [r7]
	b _0800DD3C
	.align 2, 0
_0800DD34: .4byte 0x030013AC
_0800DD38:
	bl sub_0800D940
_0800DD3C:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0800DD4C
sub_0800DD4C: @ 0x0800DD4C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _0800DD80 @ =0x030013AC
	ldr r0, [r5]
	movs r1, #0xe
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	adds r6, r0, #0
	ldr r0, [r5]
	movs r1, #0xe
	ldrsh r0, [r0, r1]
	ldr r1, _0800DD84 @ =0x08080128
	lsls r4, r4, #2
	adds r4, r4, r1
	ldr r1, [r4]
	bl sub_08007B84
	movs r0, #0
	strb r0, [r6, #1]
	strh r0, [r6, #2]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800DD80: .4byte 0x030013AC
_0800DD84: .4byte 0x08080128

	thumb_func_start sub_0800DD88
sub_0800DD88: @ 0x0800DD88
	push {lr}
	ldr r0, _0800DDA0 @ =0x030013AC
	ldr r0, [r0]
	adds r0, #0xcf
	movs r1, #0
	strb r1, [r0]
	movs r0, #0
	bl sub_0800DD4C
	pop {r0}
	bx r0
	.align 2, 0
_0800DDA0: .4byte 0x030013AC

	thumb_func_start sub_0800DDA4
sub_0800DDA4: @ 0x0800DDA4
	push {r4, lr}
	ldr r4, _0800DDCC @ =0x030013AC
	ldr r0, [r4]
	movs r1, #0xe
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	movs r1, #0
	strb r1, [r0]
	ldr r0, [r4]
	adds r0, #0xcf
	movs r1, #1
	strb r1, [r0]
	movs r0, #1
	bl sub_0800DD4C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800DDCC: .4byte 0x030013AC

	thumb_func_start sub_0800DDD0
sub_0800DDD0: @ 0x0800DDD0
	push {r4, lr}
	ldr r4, _0800DDF4 @ =0x030013AC
	ldr r0, [r4]
	movs r1, #0xe
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	movs r1, #1
	strb r1, [r0]
	ldr r0, [r4]
	adds r0, #0xcf
	strb r1, [r0]
	movs r0, #1
	bl sub_0800DD4C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800DDF4: .4byte 0x030013AC

	thumb_func_start sub_0800DDF8
sub_0800DDF8: @ 0x0800DDF8
	push {r4, lr}
	ldr r4, _0800DE1C @ =0x030013AC
	ldr r0, [r4]
	movs r1, #0xe
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	movs r1, #1
	strb r1, [r0]
	ldr r0, [r4]
	adds r0, #0xcf
	strb r1, [r0]
	movs r0, #2
	bl sub_0800DD4C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800DE1C: .4byte 0x030013AC

	thumb_func_start sub_0800DE20
sub_0800DE20: @ 0x0800DE20
	push {lr}
	bl sub_0800DD88
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800DE2C
sub_0800DE2C: @ 0x0800DE2C
	bx lr
	.align 2, 0

	thumb_func_start sub_0800DE30
sub_0800DE30: @ 0x0800DE30
	push {r4, r5, lr}
	bl sub_08007BD4
	adds r4, r0, #0
	ldrb r3, [r4, #1]
	cmp r3, #1
	beq _0800DEE8
	cmp r3, #1
	bgt _0800DE48
	cmp r3, #0
	beq _0800DE4E
	b _0800DF2C
_0800DE48:
	cmp r3, #2
	beq _0800DF28
	b _0800DF2C
_0800DE4E:
	ldrb r0, [r4]
	cmp r0, #0
	bne _0800DE88
	ldr r2, _0800DE7C @ =0x030024E0
	ldr r0, _0800DE80 @ =0x00001E02
	strh r0, [r2, #6]
	ldrh r0, [r2]
	movs r5, #0x80
	lsls r5, r5, #3
	adds r1, r5, #0
	orrs r0, r1
	strh r0, [r2]
	movs r0, #0x48
	strh r0, [r2, #0xe]
	strh r3, [r2, #0x16]
	ldr r0, _0800DE84 @ =0x0000648C
	strh r0, [r2, #0x3e]
	adds r1, r2, #0
	adds r1, #0x45
	movs r0, #0xfb
	strb r0, [r1]
	adds r3, r2, #0
	b _0800DEBC
	.align 2, 0
_0800DE7C: .4byte 0x030024E0
_0800DE80: .4byte 0x00001E02
_0800DE84: .4byte 0x0000648C
_0800DE88:
	ldr r1, _0800DEE0 @ =0x030024E0
	movs r0, #0x4a
	adds r0, r0, r1
	mov ip, r0
	ldrh r2, [r0]
	movs r0, #2
	orrs r0, r2
	mov r2, ip
	strh r0, [r2]
	ldr r0, _0800DEE4 @ =0x00001D01
	strh r0, [r1, #4]
	ldrh r2, [r1]
	movs r5, #0x80
	lsls r5, r5, #2
	adds r0, r5, #0
	orrs r0, r2
	strh r0, [r1]
	strh r3, [r1, #0xc]
	strh r3, [r1, #0x14]
	movs r0, #0x62
	strh r0, [r1, #0x3e]
	adds r2, r1, #0
	adds r2, #0x45
	movs r0, #0xfd
	strb r0, [r2]
	adds r3, r1, #0
_0800DEBC:
	adds r1, r3, #0
	adds r1, #0x42
	movs r2, #0
	movs r0, #0x70
	strh r0, [r1]
	adds r1, #4
	movs r0, #0x3f
	strb r0, [r1]
	ldrh r1, [r3]
	movs r5, #0x80
	lsls r5, r5, #7
	adds r0, r5, #0
	orrs r0, r1
	strh r0, [r3]
	strh r2, [r4, #2]
	movs r0, #1
	strb r0, [r4, #1]
	b _0800DF2C
	.align 2, 0
_0800DEE0: .4byte 0x030024E0
_0800DEE4: .4byte 0x00001D01
_0800DEE8:
	ldr r3, _0800DF20 @ =0x030024E0
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #9
	movs r0, #0x70
	adds r2, r3, #0
	adds r2, #0x42
	orrs r1, r0
	strh r1, [r2]
	ldrh r1, [r4, #2]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #1
	cmp r0, #0x6f
	ble _0800DF2C
	ldrh r0, [r3]
	ldr r1, _0800DF24 @ =0x0000BFFF
	ands r1, r0
	strh r1, [r3]
	movs r0, #2
	strb r0, [r4, #1]
	b _0800DF2C
	.align 2, 0
_0800DF20: .4byte 0x030024E0
_0800DF24: .4byte 0x0000BFFF
_0800DF28:
	bl sub_0800DD88
_0800DF2C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800DF34
sub_0800DF34: @ 0x0800DF34
	push {r4, r5, lr}
	bl sub_08007BD4
	adds r4, r0, #0
	ldrb r0, [r4, #1]
	cmp r0, #1
	beq _0800DFA0
	cmp r0, #1
	bgt _0800DF4C
	cmp r0, #0
	beq _0800DF52
	b _0800E00C
_0800DF4C:
	cmp r0, #2
	beq _0800E008
	b _0800E00C
_0800DF52:
	ldrb r0, [r4]
	cmp r0, #0
	bne _0800DF68
	ldr r1, _0800DF60 @ =0x030024E0
	ldr r0, _0800DF64 @ =0x0000648C
	b _0800DF6C
	.align 2, 0
_0800DF60: .4byte 0x030024E0
_0800DF64: .4byte 0x0000648C
_0800DF68:
	ldr r1, _0800DF9C @ =0x030024E0
	movs r0, #0x62
_0800DF6C:
	strh r0, [r1, #0x3e]
	adds r3, r1, #0
	adds r0, r3, #0
	adds r0, #0x42
	movs r2, #0
	strh r2, [r0]
	adds r1, r3, #0
	adds r1, #0x45
	movs r0, #0xfd
	strb r0, [r1]
	adds r1, #1
	movs r0, #0x3f
	strb r0, [r1]
	ldrh r1, [r3]
	movs r5, #0x80
	lsls r5, r5, #7
	adds r0, r5, #0
	orrs r0, r1
	strh r0, [r3]
	strh r2, [r4, #2]
	movs r0, #1
	strb r0, [r4, #1]
	b _0800E00C
	.align 2, 0
_0800DF9C: .4byte 0x030024E0
_0800DFA0:
	ldr r2, _0800DFD8 @ =0x030024E0
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #3
	adds r0, r2, #0
	adds r0, #0x42
	strh r1, [r0]
	ldrh r1, [r4, #2]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	cmp r0, #0x6f
	ble _0800E00C
	ldrh r0, [r2]
	ldr r3, _0800DFDC @ =0x0000BFFF
	ands r3, r0
	strh r3, [r2]
	ldrb r0, [r4]
	cmp r0, #0
	bne _0800DFE4
	ldr r0, _0800DFE0 @ =0x0000FBFF
	b _0800DFF6
	.align 2, 0
_0800DFD8: .4byte 0x030024E0
_0800DFDC: .4byte 0x0000BFFF
_0800DFE0: .4byte 0x0000FBFF
_0800DFE4:
	movs r0, #0x4a
	adds r0, r0, r2
	mov ip, r0
	ldrh r0, [r0]
	ldr r1, _0800E000 @ =0x0000FFFD
	ands r1, r0
	mov r5, ip
	strh r1, [r5]
	ldr r0, _0800E004 @ =0x0000FDFF
_0800DFF6:
	ands r0, r3
	strh r0, [r2]
	movs r0, #2
	strb r0, [r4, #1]
	b _0800E00C
	.align 2, 0
_0800E000: .4byte 0x0000FFFD
_0800E004: .4byte 0x0000FDFF
_0800E008:
	bl sub_0800DD88
_0800E00C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800E014
sub_0800E014: @ 0x0800E014
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _0800E048 @ =0x030013AC
	ldr r0, [r5]
	movs r1, #0x10
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	adds r6, r0, #0
	ldr r0, [r5]
	movs r1, #0x10
	ldrsh r0, [r0, r1]
	ldr r1, _0800E04C @ =0x08080134
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
_0800E048: .4byte 0x030013AC
_0800E04C: .4byte 0x08080134

	thumb_func_start sub_0800E050
sub_0800E050: @ 0x0800E050
	push {lr}
	ldr r0, _0800E068 @ =0x030013AC
	ldr r0, [r0]
	adds r0, #0xd0
	movs r1, #0
	strb r1, [r0]
	movs r0, #0
	bl sub_0800E014
	pop {r0}
	bx r0
	.align 2, 0
_0800E068: .4byte 0x030013AC

	thumb_func_start sub_0800E06C
sub_0800E06C: @ 0x0800E06C
	push {lr}
	ldr r0, _0800E084 @ =0x030013AC
	ldr r0, [r0]
	adds r0, #0xd0
	movs r1, #1
	strb r1, [r0]
	movs r0, #1
	bl sub_0800E014
	pop {r0}
	bx r0
	.align 2, 0
_0800E084: .4byte 0x030013AC

	thumb_func_start sub_0800E088
sub_0800E088: @ 0x0800E088
	push {lr}
	ldr r0, _0800E0A0 @ =0x030013AC
	ldr r0, [r0]
	adds r0, #0xd0
	movs r1, #0
	strb r1, [r0]
	movs r0, #2
	bl sub_0800E014
	pop {r0}
	bx r0
	.align 2, 0
_0800E0A0: .4byte 0x030013AC

	thumb_func_start sub_0800E0A4
sub_0800E0A4: @ 0x0800E0A4
	push {lr}
	ldr r0, _0800E0BC @ =0x030013AC
	ldr r0, [r0]
	adds r0, #0xd0
	movs r1, #1
	strb r1, [r0]
	movs r0, #3
	bl sub_0800E014
	pop {r0}
	bx r0
	.align 2, 0
_0800E0BC: .4byte 0x030013AC

	thumb_func_start sub_0800E0C0
sub_0800E0C0: @ 0x0800E0C0
	push {lr}
	ldr r2, _0800E0F4 @ =0x030013AC
	ldr r0, [r2]
	adds r0, #0xd0
	movs r1, #0
	strb r1, [r0]
	ldr r2, [r2]
	ldr r0, _0800E0F8 @ =0x03004420
	ldrh r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1c
	lsls r0, r1, #2
	adds r2, #0x60
	adds r2, r2, r0
	ldr r0, [r2]
	ldr r2, _0800E0FC @ =0x0807FCB8
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrb r1, [r1]
	bl sub_08009AFC
	movs r0, #0
	bl sub_0800E014
	pop {r0}
	bx r0
	.align 2, 0
_0800E0F4: .4byte 0x030013AC
_0800E0F8: .4byte 0x03004420
_0800E0FC: .4byte 0x0807FCB8

	thumb_func_start sub_0800E100
sub_0800E100: @ 0x0800E100
	push {r4, r5, lr}
	ldr r4, _0800E128 @ =0x030013AC
	ldr r0, [r4]
	ldr r0, [r0, #0x5c]
	bl sub_08009A00
	movs r5, #0
_0800E10E:
	ldr r0, [r4]
	lsls r1, r5, #2
	adds r0, #0x60
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_08009A00
	adds r5, #1
	cmp r5, #0xe
	ble _0800E10E
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800E128: .4byte 0x030013AC

	thumb_func_start sub_0800E12C
sub_0800E12C: @ 0x0800E12C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	movs r0, #1
	movs r1, #0xc1
	bl sub_080099E0
	adds r5, r0, #0
	movs r1, #1
	bl sub_08009A34
	adds r0, r5, #0
	movs r1, #0xbc
	movs r2, #0x15
	bl sub_08009A70
	ldr r4, _0800E1DC @ =0x030013AC
	ldr r0, [r4]
	adds r0, #0xd8
	ldr r1, [r0]
	adds r0, r5, #0
	bl sub_08009A78
	adds r0, r5, #0
	movs r1, #2
	bl sub_08009AB4
	ldr r1, _0800E1E0 @ =0x080E4B44
	ldr r2, _0800E1E4 @ =0x080E4B0C
	adds r0, r5, #0
	movs r3, #4
	bl sub_08009ACC
	adds r0, r5, #0
	movs r1, #0
	bl sub_08009B40
	ldr r0, [r4]
	str r5, [r0, #0x5c]
	movs r4, #0
	ldr r6, _0800E1E8 @ =0x0807FC7C
	mov r8, r4
	ldr r7, _0800E1EC @ =0x03004420
_0800E182:
	movs r0, #1
	movs r1, #0xc0
	bl sub_080099E0
	adds r5, r0, #0
	movs r1, #1
	bl sub_08009A34
	ldrh r1, [r6]
	adds r1, #0xbc
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldrh r2, [r6, #2]
	adds r2, #0x15
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r5, #0
	bl sub_08009A70
	ldr r0, _0800E1DC @ =0x030013AC
	ldr r0, [r0]
	adds r0, #0xd8
	ldr r1, [r0]
	adds r0, r5, #0
	bl sub_08009A78
	adds r0, r5, #0
	movs r1, #2
	bl sub_08009AB4
	ldrb r0, [r7]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1c
	cmp r4, r0
	bge _0800E214
	ldrb r0, [r7, #4]
	cmp r0, #0
	beq _0800E214
	ldrh r0, [r7]
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1c
	cmp r4, r0
	bge _0800E1F4
	ldr r0, _0800E1F0 @ =0x0807FCD6
	b _0800E1F6
	.align 2, 0
_0800E1DC: .4byte 0x030013AC
_0800E1E0: .4byte 0x080E4B44
_0800E1E4: .4byte 0x080E4B0C
_0800E1E8: .4byte 0x0807FC7C
_0800E1EC: .4byte 0x03004420
_0800E1F0: .4byte 0x0807FCD6
_0800E1F4:
	ldr r0, _0800E208 @ =0x0807FCB8
_0800E1F6:
	lsls r1, r4, #1
	adds r1, r1, r0
	ldrb r3, [r1]
	adds r0, r5, #0
	ldr r1, _0800E20C @ =0x080E4B44
	ldr r2, _0800E210 @ =0x080E4B0C
	bl sub_08009ACC
	b _0800E220
	.align 2, 0
_0800E208: .4byte 0x0807FCB8
_0800E20C: .4byte 0x080E4B44
_0800E210: .4byte 0x080E4B0C
_0800E214:
	adds r0, r5, #0
	ldr r1, _0800E258 @ =0x080E4B44
	ldr r2, _0800E25C @ =0x080E4B0C
	movs r3, #9
	bl sub_08009ACC
_0800E220:
	adds r0, r5, #0
	movs r1, #0
	bl sub_08009B40
	ldr r0, _0800E260 @ =0x030013AC
	ldr r1, [r0]
	adds r0, r1, #0
	adds r0, #0x60
	add r0, r8
	str r5, [r0]
	adds r6, #4
	movs r0, #4
	add r8, r0
	adds r4, #1
	cmp r4, #0xe
	ble _0800E182
	movs r2, #0x10
	ldrsh r0, [r1, r2]
	ldr r1, _0800E264 @ =sub_0800E100
	bl sub_08007BA0
	ldr r0, _0800E268 @ =0x03004420
	ldrb r0, [r0, #4]
	cmp r0, #0xd
	bne _0800E26C
	bl sub_0800E088
	b _0800E270
	.align 2, 0
_0800E258: .4byte 0x080E4B44
_0800E25C: .4byte 0x080E4B0C
_0800E260: .4byte 0x030013AC
_0800E264: .4byte sub_0800E100
_0800E268: .4byte 0x03004420
_0800E26C:
	bl sub_0800E050
_0800E270:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800E27C
sub_0800E27C: @ 0x0800E27C
	bx lr
	.align 2, 0

	thumb_func_start sub_0800E280
sub_0800E280: @ 0x0800E280
	push {r4, r5, r6, lr}
	bl sub_08007BD4
	adds r6, r0, #0
	ldrb r0, [r6]
	cmp r0, #0xf
	beq _0800E2F8
	cmp r0, #0xf
	ble _0800E29A
	cmp r0, #0x10
	bne _0800E298
	b _0800E3E4
_0800E298:
	b _0800E3E8
_0800E29A:
	cmp r0, #0
	bge _0800E2A0
	b _0800E3E8
_0800E2A0:
	ldr r0, _0800E2C0 @ =0x00000169
	bl sub_0806F5DC
	ldrb r4, [r6]
	ldr r0, _0800E2C4 @ =0x03004420
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1c
	cmp r4, r0
	blt _0800E2C8
	movs r0, #0
	strh r0, [r6, #2]
	movs r0, #0xf
	strb r0, [r6]
	b _0800E3E8
	.align 2, 0
_0800E2C0: .4byte 0x00000169
_0800E2C4: .4byte 0x03004420
_0800E2C8:
	ldr r0, _0800E2F0 @ =0x030013AC
	ldr r0, [r0]
	lsls r1, r4, #2
	adds r0, #0x60
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r2, _0800E2F4 @ =0x0807FCD6
	lsls r1, r4, #1
	adds r1, r1, r2
	ldrb r1, [r1]
	bl sub_08009AFC
	movs r0, #0xc
	bl sub_08007AC0
	ldrb r0, [r6]
	adds r0, #1
	strb r0, [r6]
	b _0800E3E8
	.align 2, 0
_0800E2F0: .4byte 0x030013AC
_0800E2F4: .4byte 0x0807FCD6
_0800E2F8:
	ldrh r1, [r6, #2]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _0800E308
	ldr r0, _0800E348 @ =0x00000169
	bl sub_0806F5DC
_0800E308:
	ldrh r0, [r6, #2]
	lsrs r0, r0, #2
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0800E358
	movs r4, #0
	ldr r0, _0800E34C @ =0x03004420
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1c
	cmp r4, r0
	bge _0800E38A
	ldr r5, _0800E350 @ =0x0807FCD6
_0800E324:
	ldr r0, _0800E354 @ =0x030013AC
	ldr r0, [r0]
	lsls r1, r4, #2
	adds r0, #0x60
	adds r0, r0, r1
	ldr r0, [r0]
	ldrb r1, [r5]
	bl sub_08009AFC
	adds r5, #2
	adds r4, #1
	ldr r0, _0800E34C @ =0x03004420
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1c
	cmp r4, r0
	blt _0800E324
	b _0800E38A
	.align 2, 0
_0800E348: .4byte 0x00000169
_0800E34C: .4byte 0x03004420
_0800E350: .4byte 0x0807FCD6
_0800E354: .4byte 0x030013AC
_0800E358:
	movs r4, #0
	ldr r0, _0800E3D4 @ =0x03004420
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1c
	cmp r4, r0
	bge _0800E38A
	ldr r5, _0800E3D8 @ =0x0807FCB8
_0800E368:
	ldr r0, _0800E3DC @ =0x030013AC
	ldr r0, [r0]
	lsls r1, r4, #2
	adds r0, #0x60
	adds r0, r0, r1
	ldr r0, [r0]
	ldrb r1, [r5]
	bl sub_08009AFC
	adds r5, #2
	adds r4, #1
	ldr r0, _0800E3D4 @ =0x03004420
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1c
	cmp r4, r0
	blt _0800E368
_0800E38A:
	ldrh r0, [r6, #2]
	adds r0, #1
	strh r0, [r6, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x3f
	bls _0800E3E8
	movs r0, #0
	strh r0, [r6, #2]
	movs r0, #0x10
	strb r0, [r6]
	movs r4, #0
	ldr r0, _0800E3D4 @ =0x03004420
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1c
	cmp r4, r0
	bge _0800E3E8
	ldr r5, _0800E3E0 @ =0x0807FCD6
_0800E3B0:
	ldr r0, _0800E3DC @ =0x030013AC
	ldr r0, [r0]
	lsls r1, r4, #2
	adds r0, #0x60
	adds r0, r0, r1
	ldr r0, [r0]
	ldrb r1, [r5]
	bl sub_08009AFC
	adds r5, #2
	adds r4, #1
	ldr r0, _0800E3D4 @ =0x03004420
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1c
	cmp r4, r0
	blt _0800E3B0
	b _0800E3E8
	.align 2, 0
_0800E3D4: .4byte 0x03004420
_0800E3D8: .4byte 0x0807FCB8
_0800E3DC: .4byte 0x030013AC
_0800E3E0: .4byte 0x0807FCD6
_0800E3E4:
	bl sub_0800E050
_0800E3E8:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800E3F0
sub_0800E3F0: @ 0x0800E3F0
	push {r4, r5, r6, lr}
	bl sub_08007BD4
	adds r6, r0, #0
	ldrb r0, [r6]
	cmp r0, #0
	beq _0800E404
	cmp r0, #1
	beq _0800E442
	b _0800E4AA
_0800E404:
	ldr r0, _0800E470 @ =0x03004420
	ldrh r1, [r0]
	lsls r1, r1, #0x15
	lsrs r4, r1, #0x1c
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1c
	cmp r4, r0
	bge _0800E43E
	ldr r1, _0800E474 @ =0x0807FCB8
	lsls r0, r4, #1
	adds r5, r0, r1
_0800E41C:
	ldr r0, _0800E478 @ =0x030013AC
	ldr r0, [r0]
	lsls r1, r4, #2
	adds r0, #0x60
	adds r0, r0, r1
	ldr r0, [r0]
	ldrb r1, [r5]
	bl sub_08009AFC
	adds r5, #2
	adds r4, #1
	ldr r0, _0800E470 @ =0x03004420
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1c
	cmp r4, r0
	blt _0800E41C
_0800E43E:
	movs r0, #1
	strb r0, [r6]
_0800E442:
	ldrh r0, [r6, #2]
	lsrs r0, r0, #5
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0800E47C
	ldr r0, _0800E478 @ =0x030013AC
	ldr r2, [r0]
	ldr r0, _0800E470 @ =0x03004420
	ldrh r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1c
	lsls r0, r1, #2
	adds r2, #0x60
	adds r2, r2, r0
	ldr r0, [r2]
	ldr r2, _0800E474 @ =0x0807FCB8
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrb r1, [r1]
	bl sub_08009AFC
	b _0800E49C
	.align 2, 0
_0800E470: .4byte 0x03004420
_0800E474: .4byte 0x0807FCB8
_0800E478: .4byte 0x030013AC
_0800E47C:
	ldr r0, _0800E4B0 @ =0x030013AC
	ldr r2, [r0]
	ldr r0, _0800E4B4 @ =0x03004420
	ldrh r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1c
	lsls r0, r1, #2
	adds r2, #0x60
	adds r2, r2, r0
	ldr r0, [r2]
	ldr r2, _0800E4B8 @ =0x0807FCD6
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrb r1, [r1]
	bl sub_08009AFC
_0800E49C:
	ldrh r1, [r6, #2]
	adds r2, r1, #1
	adds r0, r2, #0
	asrs r0, r0, #6
	lsls r0, r0, #6
	subs r0, r2, r0
	strh r0, [r6, #2]
_0800E4AA:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800E4B0: .4byte 0x030013AC
_0800E4B4: .4byte 0x03004420
_0800E4B8: .4byte 0x0807FCD6

	thumb_func_start sub_0800E4BC
sub_0800E4BC: @ 0x0800E4BC
	push {r4, lr}
	bl sub_08007BD4
	adds r4, r0, #0
	ldrb r0, [r4]
	cmp r0, #1
	beq _0800E578
	cmp r0, #1
	bgt _0800E4D4
	cmp r0, #0
	beq _0800E4DA
	b _0800E588
_0800E4D4:
	cmp r0, #2
	beq _0800E584
	b _0800E588
_0800E4DA:
	ldrh r0, [r4, #2]
	lsrs r0, r0, #2
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0800E514
	ldr r0, _0800E508 @ =0x030013AC
	ldr r2, [r0]
	ldr r0, _0800E50C @ =0x03004420
	ldrh r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1c
	lsls r0, r1, #2
	adds r2, #0x60
	adds r2, r2, r0
	ldr r0, [r2]
	ldr r2, _0800E510 @ =0x0807FCB8
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrb r1, [r1]
	bl sub_08009AFC
	b _0800E534
	.align 2, 0
_0800E508: .4byte 0x030013AC
_0800E50C: .4byte 0x03004420
_0800E510: .4byte 0x0807FCB8
_0800E514:
	ldr r0, _0800E56C @ =0x030013AC
	ldr r2, [r0]
	ldr r0, _0800E570 @ =0x03004420
	ldrh r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1c
	lsls r0, r1, #2
	adds r2, #0x60
	adds r2, r2, r0
	ldr r0, [r2]
	ldr r2, _0800E574 @ =0x0807FCD6
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrb r1, [r1]
	bl sub_08009AFC
_0800E534:
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x3f
	bls _0800E588
	movs r0, #0
	strh r0, [r4, #2]
	movs r0, #1
	strb r0, [r4]
	ldr r0, _0800E56C @ =0x030013AC
	ldr r2, [r0]
	ldr r0, _0800E570 @ =0x03004420
	ldrh r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x1c
	lsls r0, r1, #2
	adds r2, #0x60
	adds r2, r2, r0
	ldr r0, [r2]
	ldr r2, _0800E574 @ =0x0807FCD6
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrb r1, [r1]
	bl sub_08009AFC
	b _0800E588
	.align 2, 0
_0800E56C: .4byte 0x030013AC
_0800E570: .4byte 0x03004420
_0800E574: .4byte 0x0807FCD6
_0800E578:
	movs r0, #0x20
	bl sub_08007AC0
	movs r0, #2
	strb r0, [r4]
	b _0800E588
_0800E584:
	bl sub_0800E050
_0800E588:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800E590
sub_0800E590: @ 0x0800E590
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _0800E5C4 @ =0x030013AC
	ldr r0, [r5]
	movs r1, #0x12
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	adds r6, r0, #0
	ldr r0, [r5]
	movs r1, #0x12
	ldrsh r0, [r0, r1]
	ldr r1, _0800E5C8 @ =0x08080144
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
_0800E5C4: .4byte 0x030013AC
_0800E5C8: .4byte 0x08080144

	thumb_func_start sub_0800E5CC
sub_0800E5CC: @ 0x0800E5CC
	push {lr}
	ldr r0, _0800E5E4 @ =0x030013AC
	ldr r0, [r0]
	adds r0, #0xd1
	movs r1, #0
	strb r1, [r0]
	movs r0, #0
	bl sub_0800E590
	pop {r0}
	bx r0
	.align 2, 0
_0800E5E4: .4byte 0x030013AC

	thumb_func_start sub_0800E5E8
sub_0800E5E8: @ 0x0800E5E8
	push {lr}
	ldr r0, _0800E600 @ =0x030013AC
	ldr r0, [r0]
	adds r0, #0xd1
	movs r1, #0
	strb r1, [r0]
	movs r0, #1
	bl sub_0800E590
	pop {r0}
	bx r0
	.align 2, 0
_0800E600: .4byte 0x030013AC

	thumb_func_start sub_0800E604
sub_0800E604: @ 0x0800E604
	push {lr}
	ldr r0, _0800E61C @ =0x030013AC
	ldr r0, [r0]
	adds r0, #0xd1
	movs r1, #0
	strb r1, [r0]
	movs r0, #2
	bl sub_0800E590
	pop {r0}
	bx r0
	.align 2, 0
_0800E61C: .4byte 0x030013AC

	thumb_func_start sub_0800E620
sub_0800E620: @ 0x0800E620
	push {lr}
	ldr r0, _0800E638 @ =0x030013AC
	ldr r0, [r0]
	adds r0, #0xd1
	movs r1, #1
	strb r1, [r0]
	movs r0, #3
	bl sub_0800E590
	pop {r0}
	bx r0
	.align 2, 0
_0800E638: .4byte 0x030013AC

	thumb_func_start sub_0800E63C
sub_0800E63C: @ 0x0800E63C
	push {r4, r5, lr}
	ldr r4, _0800E668 @ =0x030013AC
	ldr r0, [r4]
	adds r0, #0x9c
	ldr r0, [r0]
	bl sub_08009A00
	movs r5, #0
_0800E64C:
	ldr r0, [r4]
	lsls r1, r5, #2
	adds r0, #0xa0
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_08009A00
	adds r5, #1
	cmp r5, #5
	ble _0800E64C
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800E668: .4byte 0x030013AC

	thumb_func_start sub_0800E66C
sub_0800E66C: @ 0x0800E66C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	movs r0, #1
	movs r1, #0xc1
	bl sub_080099E0
	adds r5, r0, #0
	movs r1, #1
	bl sub_08009A34
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0x19
	bl sub_08009A70
	ldr r4, _0800E718 @ =0x030013AC
	ldr r0, [r4]
	adds r0, #0xd8
	ldr r1, [r0]
	adds r0, r5, #0
	bl sub_08009A78
	adds r0, r5, #0
	movs r1, #2
	bl sub_08009AB4
	ldr r1, _0800E71C @ =0x080E4B44
	ldr r2, _0800E720 @ =0x080E4B0C
	adds r0, r5, #0
	movs r3, #5
	bl sub_08009ACC
	adds r0, r5, #0
	movs r1, #0
	bl sub_08009B40
	ldr r0, [r4]
	adds r0, #0x9c
	str r5, [r0]
	ldr r1, _0800E724 @ =0x0807FC34
	ldr r0, _0800E728 @ =0x03004420
	ldrh r0, [r0]
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1c
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r7, [r0]
	movs r0, #0
	str r0, [sp]
	ldr r1, _0800E72C @ =0x0807FCF4
	mov sb, r1
	mov r8, r0
	movs r2, #5
	mov sl, r2
_0800E6E0:
	ldr r0, _0800E730 @ =0x08083A18
	add r0, r8
	ldr r4, [r0]
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_08071134
	adds r6, r0, #0
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_080711AC
	adds r7, r0, #0
	movs r0, #1
	movs r1, #0xc0
	bl sub_080099E0
	adds r5, r0, #0
	cmp r6, #0
	bne _0800E734
	ldr r0, [sp]
	cmp r0, #0
	bne _0800E734
	adds r0, r5, #0
	movs r1, #0
	bl sub_08009A34
	b _0800E754
	.align 2, 0
_0800E718: .4byte 0x030013AC
_0800E71C: .4byte 0x080E4B44
_0800E720: .4byte 0x080E4B0C
_0800E724: .4byte 0x0807FC34
_0800E728: .4byte 0x03004420
_0800E72C: .4byte 0x0807FCF4
_0800E730: .4byte 0x08083A18
_0800E734:
	movs r1, #1
	str r1, [sp]
	ldr r0, _0800E748 @ =0x03004420
	ldrb r0, [r0, #4]
	cmp r0, #0xd
	bne _0800E74C
	adds r0, r5, #0
	bl sub_08009A34
	b _0800E754
	.align 2, 0
_0800E748: .4byte 0x03004420
_0800E74C:
	adds r0, r5, #0
	movs r1, #0
	bl sub_08009A34
_0800E754:
	mov r2, sb
	movs r0, #0
	ldrsh r1, [r2, r0]
	ldrh r2, [r2, #2]
	adds r2, #0x19
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r5, #0
	bl sub_08009A70
	ldr r1, _0800E7D4 @ =0x030013AC
	ldr r0, [r1]
	adds r0, #0xe4
	ldr r1, [r0]
	adds r0, r5, #0
	bl sub_08009A78
	adds r0, r5, #0
	movs r1, #5
	bl sub_08009AB4
	lsls r3, r6, #0x18
	lsrs r3, r3, #0x18
	adds r0, r5, #0
	ldr r1, _0800E7D8 @ =0x0809C860
	ldr r2, _0800E7DC @ =0x0809C830
	bl sub_08009ACC
	adds r0, r5, #0
	movs r1, #0
	bl sub_08009B40
	ldr r2, _0800E7D4 @ =0x030013AC
	ldr r0, [r2]
	adds r0, #0xa0
	add r0, r8
	str r5, [r0]
	movs r0, #4
	add sb, r0
	add r8, r0
	movs r1, #1
	rsbs r1, r1, #0
	add sl, r1
	mov r2, sl
	cmp r2, #0
	bge _0800E6E0
	ldr r0, _0800E7D4 @ =0x030013AC
	ldr r0, [r0]
	movs r1, #0x12
	ldrsh r0, [r0, r1]
	ldr r1, _0800E7E0 @ =sub_0800E63C
	bl sub_08007BA0
	bl sub_0800E5CC
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800E7D4: .4byte 0x030013AC
_0800E7D8: .4byte 0x0809C860
_0800E7DC: .4byte 0x0809C830
_0800E7E0: .4byte sub_0800E63C

	thumb_func_start sub_0800E7E4
sub_0800E7E4: @ 0x0800E7E4
	bx lr
	.align 2, 0

	thumb_func_start sub_0800E7E8
sub_0800E7E8: @ 0x0800E7E8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	bl sub_08007BD4
	mov sb, r0
	ldr r1, _0800E870 @ =0x0807FC34
	ldr r0, _0800E874 @ =0x03004420
	ldrh r0, [r0]
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1c
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r7, [r0]
	movs r0, #0
	str r0, [sp]
	ldr r1, _0800E878 @ =0x030013AC
	mov r8, r1
	movs r5, #0
	movs r0, #5
	mov sl, r0
_0800E818:
	mov r1, r8
	ldr r0, [r1]
	adds r0, #0xa0
	adds r0, r0, r5
	ldr r0, [r0]
	movs r1, #0
	bl sub_08009A34
	ldr r0, _0800E87C @ =0x08083A18
	adds r0, r5, r0
	ldr r4, [r0]
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_08071134
	adds r6, r0, #0
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_080711AC
	adds r7, r0, #0
	cmp r6, #0
	bne _0800E84C
	ldr r0, [sp]
	cmp r0, #0
	beq _0800E8A2
_0800E84C:
	movs r1, #1
	str r1, [sp]
	mov r1, sb
	ldrh r0, [r1, #2]
	lsrs r0, r0, #5
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0800E880
	mov r1, r8
	ldr r0, [r1]
	adds r0, #0xa0
	adds r0, r0, r5
	ldr r0, [r0]
	movs r1, #0
	bl sub_08009A34
	b _0800E890
	.align 2, 0
_0800E870: .4byte 0x0807FC34
_0800E874: .4byte 0x03004420
_0800E878: .4byte 0x030013AC
_0800E87C: .4byte 0x08083A18
_0800E880:
	mov r1, r8
	ldr r0, [r1]
	adds r0, #0xa0
	adds r0, r0, r5
	ldr r0, [r0]
	movs r1, #1
	bl sub_08009A34
_0800E890:
	mov r1, r8
	ldr r0, [r1]
	adds r0, #0xa0
	adds r0, r0, r5
	ldr r0, [r0]
	lsls r1, r6, #0x18
	lsrs r1, r1, #0x18
	bl sub_08009AFC
_0800E8A2:
	adds r5, #4
	movs r0, #1
	rsbs r0, r0, #0
	add sl, r0
	mov r1, sl
	cmp r1, #0
	bge _0800E818
	mov r0, sb
	ldrh r1, [r0, #2]
	movs r0, #0x3f
	ands r0, r1
	cmp r0, #0
	bne _0800E8C4
	movs r0, #0xb5
	lsls r0, r0, #1
	bl sub_0806F5DC
_0800E8C4:
	mov r0, sb
	ldrh r1, [r0, #2]
	adds r2, r1, #1
	adds r0, r2, #0
	asrs r0, r0, #6
	lsls r0, r0, #6
	subs r0, r2, r0
	mov r1, sb
	strh r0, [r1, #2]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800E8E8
sub_0800E8E8: @ 0x0800E8E8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r1, _0800E988 @ =0x0807FC34
	ldr r0, _0800E98C @ =0x03004420
	ldrh r0, [r0]
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1c
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r7, [r0]
	movs r0, #0
	mov sl, r0
	mov r8, r0
	ldr r1, _0800E990 @ =0x030013AC
	mov sb, r1
_0800E90C:
	mov r1, sb
	ldr r0, [r1]
	mov r1, r8
	lsls r5, r1, #2
	adds r0, #0xa0
	adds r0, r0, r5
	ldr r0, [r0]
	movs r1, #0
	bl sub_08009A34
	ldr r0, _0800E994 @ =0x08083A18
	adds r0, r5, r0
	ldr r4, [r0]
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_08071134
	adds r6, r0, #0
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_080711AC
	adds r7, r0, #0
	cmp r6, #0
	bne _0800E944
	mov r0, sl
	cmp r0, #0
	beq _0800E96A
_0800E944:
	movs r1, #1
	mov sl, r1
	mov r1, sb
	ldr r0, [r1]
	adds r0, #0xa0
	adds r0, r0, r5
	ldr r0, [r0]
	movs r1, #1
	bl sub_08009A34
	mov r1, sb
	ldr r0, [r1]
	adds r0, #0xa0
	adds r0, r0, r5
	ldr r0, [r0]
	lsls r1, r6, #0x18
	lsrs r1, r1, #0x18
	bl sub_08009AFC
_0800E96A:
	movs r0, #1
	add r8, r0
	mov r1, r8
	cmp r1, #5
	ble _0800E90C
	bl sub_0800E5CC
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800E988: .4byte 0x0807FC34
_0800E98C: .4byte 0x03004420
_0800E990: .4byte 0x030013AC
_0800E994: .4byte 0x08083A18

	thumb_func_start sub_0800E998
sub_0800E998: @ 0x0800E998
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	bl sub_08007BD4
	str r0, [sp]
	ldr r5, _0800EA80 @ =0x0807FC34
	ldr r4, _0800EA84 @ =0x03004420
	ldrh r0, [r4]
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1c
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	rsbs r6, r0, #0
	ldr r1, [sp]
	ldrh r0, [r1, #2]
	adds r0, #1
	strh r0, [r1, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	muls r6, r0, r6
	adds r0, r6, #0
	movs r1, #0xb4
	bl sub_08070FCC
	adds r6, r0, #0
	ldrh r0, [r4]
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1c
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	adds r7, r0, r6
	cmp r7, #0
	bge _0800E9E8
	movs r7, #0
_0800E9E8:
	movs r0, #0
	mov sl, r0
	mov r8, r0
	ldr r1, _0800EA88 @ =0x030013AC
	mov sb, r1
_0800E9F2:
	mov r1, sb
	ldr r0, [r1]
	mov r1, r8
	lsls r5, r1, #2
	adds r0, #0xa0
	adds r0, r0, r5
	ldr r0, [r0]
	movs r1, #0
	bl sub_08009A34
	ldr r0, _0800EA8C @ =0x08083A18
	adds r0, r5, r0
	ldr r4, [r0]
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_08071134
	adds r6, r0, #0
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_080711AC
	adds r7, r0, #0
	mov r0, r8
	cmp r0, #5
	bne _0800EA2A
	movs r1, #1
	mov sl, r1
_0800EA2A:
	cmp r6, #0
	bne _0800EA34
	mov r0, sl
	cmp r0, #0
	beq _0800EA5A
_0800EA34:
	movs r1, #1
	mov sl, r1
	mov r1, sb
	ldr r0, [r1]
	adds r0, #0xa0
	adds r0, r0, r5
	ldr r0, [r0]
	movs r1, #1
	bl sub_08009A34
	mov r1, sb
	ldr r0, [r1]
	adds r0, #0xa0
	adds r0, r0, r5
	ldr r0, [r0]
	lsls r1, r6, #0x18
	lsrs r1, r1, #0x18
	bl sub_08009AFC
_0800EA5A:
	movs r0, #1
	add r8, r0
	mov r1, r8
	cmp r1, #5
	ble _0800E9F2
	ldr r1, [sp]
	ldrh r0, [r1, #2]
	cmp r0, #0xb3
	bls _0800EA70
	bl sub_0800E5CC
_0800EA70:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800EA80: .4byte 0x0807FC34
_0800EA84: .4byte 0x03004420
_0800EA88: .4byte 0x030013AC
_0800EA8C: .4byte 0x08083A18

	thumb_func_start sub_0800EA90
sub_0800EA90: @ 0x0800EA90
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _0800EAC4 @ =0x030013AC
	ldr r0, [r5]
	movs r1, #0x14
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	adds r6, r0, #0
	ldr r0, [r5]
	movs r1, #0x14
	ldrsh r0, [r0, r1]
	ldr r1, _0800EAC8 @ =0x0808015C
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
_0800EAC4: .4byte 0x030013AC
_0800EAC8: .4byte 0x0808015C

	thumb_func_start sub_0800EACC
sub_0800EACC: @ 0x0800EACC
	push {lr}
	ldr r0, _0800EAE4 @ =0x030013AC
	ldr r0, [r0]
	adds r0, #0xd2
	movs r1, #0
	strb r1, [r0]
	movs r0, #0
	bl sub_0800EA90
	pop {r0}
	bx r0
	.align 2, 0
_0800EAE4: .4byte 0x030013AC

	thumb_func_start sub_0800EAE8
sub_0800EAE8: @ 0x0800EAE8
	push {lr}
	ldr r0, _0800EB00 @ =0x030013AC
	ldr r0, [r0]
	adds r0, #0xd2
	movs r1, #1
	strb r1, [r0]
	movs r0, #1
	bl sub_0800EA90
	pop {r0}
	bx r0
	.align 2, 0
_0800EB00: .4byte 0x030013AC

	thumb_func_start sub_0800EB04
sub_0800EB04: @ 0x0800EB04
	push {lr}
	ldr r0, _0800EB1C @ =0x030013AC
	ldr r0, [r0]
	adds r0, #0xd2
	movs r1, #1
	strb r1, [r0]
	movs r0, #2
	bl sub_0800EA90
	pop {r0}
	bx r0
	.align 2, 0
_0800EB1C: .4byte 0x030013AC

	thumb_func_start sub_0800EB20
sub_0800EB20: @ 0x0800EB20
	push {lr}
	ldr r0, _0800EB38 @ =0x030013AC
	ldr r0, [r0]
	adds r0, #0xd2
	movs r1, #1
	strb r1, [r0]
	movs r0, #3
	bl sub_0800EA90
	pop {r0}
	bx r0
	.align 2, 0
_0800EB38: .4byte 0x030013AC

	thumb_func_start sub_0800EB3C
sub_0800EB3C: @ 0x0800EB3C
	push {lr}
	ldr r0, _0800EB50 @ =0x030013AC
	ldr r0, [r0]
	adds r0, #0xb8
	ldr r0, [r0]
	bl sub_08009A00
	pop {r0}
	bx r0
	.align 2, 0
_0800EB50: .4byte 0x030013AC

	thumb_func_start sub_0800EB54
sub_0800EB54: @ 0x0800EB54
	push {r4, r5, lr}
	movs r0, #1
	movs r1, #0xff
	bl sub_080099E0
	adds r5, r0, #0
	ldr r1, _0800EB7C @ =0x03004420
	ldrb r0, [r1, #4]
	cmp r0, #0xd
	bne _0800EB80
	ldrb r0, [r1, #2]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _0800EB80
	adds r0, r5, #0
	movs r1, #1
	bl sub_08009A34
	b _0800EB88
	.align 2, 0
_0800EB7C: .4byte 0x03004420
_0800EB80:
	adds r0, r5, #0
	movs r1, #0
	bl sub_08009A34
_0800EB88:
	ldr r1, _0800EBAC @ =0x03004420
	ldrb r0, [r1, #0x18]
	cmp r0, #5
	bne _0800EBB0
	ldrb r2, [r1, #1]
	lsls r2, r2, #0x1a
	lsrs r2, r2, #0x1d
	lsls r2, r2, #0x14
	movs r0, #0xa0
	lsls r0, r0, #0xe
	adds r2, r2, r0
	asrs r2, r2, #0x10
	adds r0, r5, #0
	movs r1, #0x78
	bl sub_08009A70
	b _0800EBC8
	.align 2, 0
_0800EBAC: .4byte 0x03004420
_0800EBB0:
	ldrb r2, [r1, #1]
	lsls r2, r2, #0x1a
	lsrs r2, r2, #0x1d
	lsls r2, r2, #0x14
	movs r0, #0xc0
	lsls r0, r0, #0xe
	adds r2, r2, r0
	asrs r2, r2, #0x10
	adds r0, r5, #0
	movs r1, #0x78
	bl sub_08009A70
_0800EBC8:
	ldr r4, _0800EC10 @ =0x030013AC
	ldr r0, [r4]
	adds r0, #0xd8
	ldr r1, [r0]
	adds r0, r5, #0
	bl sub_08009A78
	adds r0, r5, #0
	movs r1, #2
	bl sub_08009AB4
	ldr r1, _0800EC14 @ =0x080E4B44
	ldr r2, _0800EC18 @ =0x080E4B0C
	adds r0, r5, #0
	movs r3, #0
	bl sub_08009ACC
	adds r0, r5, #0
	movs r1, #0
	bl sub_08009B40
	ldr r1, [r4]
	adds r0, r1, #0
	adds r0, #0xb8
	str r5, [r0]
	movs r2, #0x14
	ldrsh r0, [r1, r2]
	ldr r1, _0800EC1C @ =sub_0800EB3C
	bl sub_08007BA0
	bl sub_0800EACC
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800EC10: .4byte 0x030013AC
_0800EC14: .4byte 0x080E4B44
_0800EC18: .4byte 0x080E4B0C
_0800EC1C: .4byte sub_0800EB3C

	thumb_func_start sub_0800EC20
sub_0800EC20: @ 0x0800EC20
	bx lr
	.align 2, 0

	thumb_func_start sub_0800EC24
sub_0800EC24: @ 0x0800EC24
	push {r4, r5, r6, lr}
	bl sub_08007BD4
	adds r4, r0, #0
	ldrb r0, [r4]
	cmp r0, #4
	bls _0800EC34
	b _0800ED28
_0800EC34:
	lsls r0, r0, #2
	ldr r1, _0800EC40 @ =_0800EC44
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800EC40: .4byte _0800EC44
_0800EC44: @ jump table
	.4byte _0800EC58 @ case 0
	.4byte _0800ECA0 @ case 1
	.4byte _0800ECA4 @ case 2
	.4byte _0800ECF4 @ case 3
	.4byte _0800ED24 @ case 4
_0800EC58:
	ldr r0, _0800EC68 @ =0x03004420
	ldrb r0, [r0, #0x18]
	cmp r0, #5
	bne _0800EC74
	ldr r1, _0800EC6C @ =0x030024E0
	ldr r0, _0800EC70 @ =0x00001B02
	b _0800EC78
	.align 2, 0
_0800EC68: .4byte 0x03004420
_0800EC6C: .4byte 0x030024E0
_0800EC70: .4byte 0x00001B02
_0800EC74:
	ldr r1, _0800EC98 @ =0x030024E0
	ldr r0, _0800EC9C @ =0x00001C02
_0800EC78:
	strh r0, [r1, #4]
	adds r3, r1, #0
	ldrh r1, [r3]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r2, #0
	movs r2, #0
	orrs r0, r1
	strh r0, [r3]
	movs r0, #0x78
	strh r0, [r3, #0x14]
	movs r0, #1
	strb r0, [r4]
	strh r2, [r4, #2]
	b _0800ED28
	.align 2, 0
_0800EC98: .4byte 0x030024E0
_0800EC9C: .4byte 0x00001C02
_0800ECA0:
	movs r0, #2
	strb r0, [r4]
_0800ECA4:
	ldrh r0, [r4, #2]
	cmp r0, #0x18
	bne _0800ECB0
	ldr r0, _0800ECEC @ =0x0000016B
	bl sub_0806F5DC
_0800ECB0:
	ldr r6, _0800ECF0 @ =0x030024E0
	ldrh r5, [r6, #0x14]
	ldrh r1, [r4, #2]
	adds r1, #1
	strh r1, [r4, #2]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xf
	subs r1, #1
	lsls r0, r1, #3
	adds r0, r0, r1
	movs r1, #0x78
	bl sub_08070FCC
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	cmp r1, #0
	bgt _0800ECE8
	movs r0, #0xb7
	lsls r0, r0, #1
	bl sub_0806F5DC
	movs r0, #0
	strh r0, [r4, #2]
	movs r0, #3
	strb r0, [r4]
_0800ECE8:
	strh r5, [r6, #0x14]
	b _0800ED28
	.align 2, 0
_0800ECEC: .4byte 0x0000016B
_0800ECF0: .4byte 0x030024E0
_0800ECF4:
	ldr r2, _0800ED1C @ =0x030024E0
	ldr r1, _0800ED20 @ =0x08080154
	ldrh r0, [r4, #2]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	rsbs r0, r0, #0
	strh r0, [r2, #0x14]
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #3
	bls _0800ED28
	movs r0, #0
	strh r0, [r4, #2]
	movs r0, #4
	strb r0, [r4]
	b _0800ED28
	.align 2, 0
_0800ED1C: .4byte 0x030024E0
_0800ED20: .4byte 0x08080154
_0800ED24:
	bl sub_0800EACC
_0800ED28:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800ED30
sub_0800ED30: @ 0x0800ED30
	push {r4, lr}
	bl sub_08007BD4
	adds r4, r0, #0
	ldrb r0, [r4]
	cmp r0, #1
	beq _0800ED70
	cmp r0, #1
	bgt _0800ED48
	cmp r0, #0
	beq _0800ED4E
	b _0800EDA8
_0800ED48:
	cmp r0, #2
	beq _0800EDA4
	b _0800EDA8
_0800ED4E:
	ldr r0, _0800ED6C @ =0x030013AC
	ldr r0, [r0]
	adds r0, #0xb8
	ldr r0, [r0]
	movs r1, #0
	bl sub_08009A34
	movs r0, #0xb6
	lsls r0, r0, #1
	bl sub_0806F5DC
	movs r0, #1
	strb r0, [r4]
	b _0800EDA8
	.align 2, 0
_0800ED6C: .4byte 0x030013AC
_0800ED70:
	ldr r2, _0800ED9C @ =0x030024E0
	ldrh r0, [r2, #0x14]
	adds r0, #3
	strh r0, [r2, #0x14]
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x27
	bls _0800EDA8
	movs r0, #0x78
	strh r0, [r2, #0x14]
	ldrh r1, [r2]
	ldr r0, _0800EDA0 @ =0x0000FDFF
	ands r0, r1
	strh r0, [r2]
	movs r0, #0
	strh r0, [r4, #2]
	movs r0, #2
	strb r0, [r4]
	b _0800EDA8
	.align 2, 0
_0800ED9C: .4byte 0x030024E0
_0800EDA0: .4byte 0x0000FDFF
_0800EDA4:
	bl sub_0800EACC
_0800EDA8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800EDB0
sub_0800EDB0: @ 0x0800EDB0
	push {r4, r5, r6, lr}
	bl sub_08007BD4
	adds r5, r0, #0
	ldrb r0, [r5]
	cmp r0, #4
	bls _0800EDC0
	b _0800F030
_0800EDC0:
	lsls r0, r0, #2
	ldr r1, _0800EDCC @ =_0800EDD0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800EDCC: .4byte _0800EDD0
_0800EDD0: @ jump table
	.4byte _0800EDE4 @ case 0
	.4byte _0800EE5E @ case 1
	.4byte _0800EE84 @ case 2
	.4byte _0800EFC8 @ case 3
	.4byte _0800F020 @ case 4
_0800EDE4:
	ldr r2, _0800EE18 @ =0x030013AC
	ldr r0, [r2]
	movs r1, #0x9a
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0]
	ldr r1, _0800EE1C @ =0x03004420
	ldrb r0, [r1, #0x18]
	cmp r0, #5
	bne _0800EE20
	ldr r0, [r2]
	adds r0, #0xb8
	ldr r0, [r0]
	ldrb r2, [r1, #1]
	lsls r2, r2, #0x1a
	lsrs r2, r2, #0x1d
	lsls r2, r2, #0x14
	movs r1, #0xa0
	lsls r1, r1, #0xe
	adds r2, r2, r1
	asrs r2, r2, #0x10
	movs r1, #0x78
	bl sub_08009A70
	b _0800EE3C
	.align 2, 0
_0800EE18: .4byte 0x030013AC
_0800EE1C: .4byte 0x03004420
_0800EE20:
	ldr r0, [r2]
	adds r0, #0xb8
	ldr r0, [r0]
	ldrb r2, [r1, #1]
	lsls r2, r2, #0x1a
	lsrs r2, r2, #0x1d
	lsls r2, r2, #0x14
	movs r1, #0xc0
	lsls r1, r1, #0xe
	adds r2, r2, r1
	asrs r2, r2, #0x10
	movs r1, #0x78
	bl sub_08009A70
_0800EE3C:
	ldr r0, _0800EE4C @ =0x03004420
	ldrb r0, [r0, #2]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bge _0800EE54
	ldr r0, _0800EE50 @ =0x030013AC
	ldr r0, [r0]
	b _0800EE70
	.align 2, 0
_0800EE4C: .4byte 0x03004420
_0800EE50: .4byte 0x030013AC
_0800EE54:
	bl sub_0800F094
	movs r0, #1
	strb r0, [r5]
	b _0800F030
_0800EE5E:
	ldr r0, _0800EE80 @ =0x030013AC
	ldr r1, [r0]
	adds r0, r1, #0
	adds r0, #0xd3
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800EE6E
	b _0800F030
_0800EE6E:
	adds r0, r1, #0
_0800EE70:
	adds r0, #0xb8
	ldr r0, [r0]
	movs r1, #1
	bl sub_08009A34
	movs r0, #2
	strb r0, [r5]
	b _0800F030
	.align 2, 0
_0800EE80: .4byte 0x030013AC
_0800EE84:
	ldr r4, _0800EEA4 @ =0x030024B0
	ldrh r2, [r4]
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	beq _0800EEBE
	ldr r0, _0800EEA8 @ =0x03004420
	ldrb r0, [r0, #2]
	lsls r0, r0, #0x1e
	lsrs r4, r0, #0x1f
	cmp r4, #0
	beq _0800EEAC
	movs r0, #3
	strb r0, [r5]
	b _0800EEB6
	.align 2, 0
_0800EEA4: .4byte 0x030024B0
_0800EEA8: .4byte 0x03004420
_0800EEAC:
	bl sub_0800F0B0
	movs r0, #3
	strb r0, [r5]
	strh r4, [r5, #2]
_0800EEB6:
	movs r0, #0xcd
	bl sub_0806F5DC
	b _0800F030
_0800EEBE:
	ldrh r1, [r4, #4]
	movs r0, #0xc0
	ands r0, r1
	cmp r0, #0
	beq _0800EF54
	movs r0, #0xcb
	bl sub_0806F5DC
	ldrh r1, [r4, #4]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0800EEEC
	ldr r4, _0800EEE8 @ =0x03004420
	ldrb r5, [r4, #1]
	lsls r0, r5, #0x1a
	lsrs r0, r0, #0x1d
	ldrb r1, [r4, #0x18]
	adds r0, r0, r1
	subs r0, #1
	b _0800EEF8
	.align 2, 0
_0800EEE8: .4byte 0x03004420
_0800EEEC:
	ldr r4, _0800EF28 @ =0x03004420
	ldrb r5, [r4, #1]
	lsls r0, r5, #0x1a
	lsrs r0, r0, #0x1d
	adds r0, #1
	ldrb r1, [r4, #0x18]
_0800EEF8:
	bl sub_08071064
	movs r1, #7
	ands r0, r1
	lsls r0, r0, #3
	movs r1, #0x39
	rsbs r1, r1, #0
	ands r1, r5
	orrs r1, r0
	strb r1, [r4, #1]
	ldrb r0, [r4, #0x18]
	cmp r0, #5
	bne _0800EF30
	ldr r0, _0800EF2C @ =0x030013AC
	ldr r0, [r0]
	adds r0, #0xb8
	ldr r0, [r0]
	ldrb r2, [r4, #1]
	lsls r2, r2, #0x1a
	lsrs r2, r2, #0x1d
	lsls r2, r2, #0x14
	movs r1, #0xa0
	lsls r1, r1, #0xe
	b _0800EF44
	.align 2, 0
_0800EF28: .4byte 0x03004420
_0800EF2C: .4byte 0x030013AC
_0800EF30:
	ldr r0, _0800EF50 @ =0x030013AC
	ldr r0, [r0]
	adds r0, #0xb8
	ldr r0, [r0]
	ldrb r2, [r4, #1]
	lsls r2, r2, #0x1a
	lsrs r2, r2, #0x1d
	lsls r2, r2, #0x14
	movs r1, #0xc0
	lsls r1, r1, #0xe
_0800EF44:
	adds r2, r2, r1
	asrs r2, r2, #0x10
	movs r1, #0x78
	bl sub_08009A70
	b _0800F030
	.align 2, 0
_0800EF50: .4byte 0x030013AC
_0800EF54:
	ldr r1, _0800EF88 @ =0x03004420
	ldrb r0, [r1, #2]
	lsls r0, r0, #0x1e
	lsrs r6, r0, #0x1f
	cmp r6, #0
	bne _0800F030
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r2
	cmp r0, #0
	beq _0800EF90
	bl sub_0800F0B0
	ldr r4, _0800EF8C @ =0x030013AC
	ldr r0, [r4]
	adds r0, #0xb8
	ldr r0, [r0]
	movs r1, #0
	bl sub_08009A34
	ldr r0, [r4]
	movs r1, #0x9a
	lsls r1, r1, #1
	adds r0, r0, r1
	strb r6, [r0]
	b _0800F016
	.align 2, 0
_0800EF88: .4byte 0x03004420
_0800EF8C: .4byte 0x030013AC
_0800EF90:
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r2
	cmp r0, #0
	beq _0800F030
	ldr r0, [r1]
	lsls r0, r0, #0xf
	lsrs r0, r0, #0x1d
	cmp r0, #0
	beq _0800F030
	bl sub_0800F0B0
	ldr r4, _0800EFC4 @ =0x030013AC
	ldr r0, [r4]
	adds r0, #0xb8
	ldr r0, [r0]
	movs r1, #0
	bl sub_08009A34
	ldr r0, [r4]
	movs r1, #0x9a
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r1, #2
	strb r1, [r0]
	b _0800F016
	.align 2, 0
_0800EFC4: .4byte 0x030013AC
_0800EFC8:
	ldrh r0, [r5, #2]
	lsrs r0, r0, #2
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0800EFE8
	ldr r0, _0800EFE4 @ =0x030013AC
	ldr r0, [r0]
	adds r0, #0xb8
	ldr r0, [r0]
	movs r1, #1
	bl sub_08009A34
	b _0800EFF6
	.align 2, 0
_0800EFE4: .4byte 0x030013AC
_0800EFE8:
	ldr r0, _0800F01C @ =0x030013AC
	ldr r0, [r0]
	adds r0, #0xb8
	ldr r0, [r0]
	movs r1, #0
	bl sub_08009A34
_0800EFF6:
	ldrh r0, [r5, #2]
	adds r0, #1
	strh r0, [r5, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x2f
	bls _0800F030
	ldr r0, _0800F01C @ =0x030013AC
	ldr r0, [r0]
	adds r0, #0xb8
	ldr r0, [r0]
	movs r1, #1
	bl sub_08009A34
	movs r0, #0
	strh r0, [r5, #2]
_0800F016:
	movs r0, #4
	strb r0, [r5]
	b _0800F030
	.align 2, 0
_0800F01C: .4byte 0x030013AC
_0800F020:
	ldr r0, _0800F038 @ =0x030013AC
	ldr r0, [r0]
	adds r0, #0xd3
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800F030
	bl sub_0800EACC
_0800F030:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800F038: .4byte 0x030013AC

	thumb_func_start sub_0800F03C
sub_0800F03C: @ 0x0800F03C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _0800F070 @ =0x030013AC
	ldr r0, [r5]
	movs r1, #0x16
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	adds r6, r0, #0
	ldr r0, [r5]
	movs r1, #0x16
	ldrsh r0, [r0, r1]
	ldr r1, _0800F074 @ =0x0808016C
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
_0800F070: .4byte 0x030013AC
_0800F074: .4byte 0x0808016C

	thumb_func_start sub_0800F078
sub_0800F078: @ 0x0800F078
	push {lr}
	ldr r0, _0800F090 @ =0x030013AC
	ldr r0, [r0]
	adds r0, #0xd3
	movs r1, #0
	strb r1, [r0]
	movs r0, #0
	bl sub_0800F03C
	pop {r0}
	bx r0
	.align 2, 0
_0800F090: .4byte 0x030013AC

	thumb_func_start sub_0800F094
sub_0800F094: @ 0x0800F094
	push {lr}
	ldr r0, _0800F0AC @ =0x030013AC
	ldr r0, [r0]
	adds r0, #0xd3
	movs r1, #1
	strb r1, [r0]
	movs r0, #1
	bl sub_0800F03C
	pop {r0}
	bx r0
	.align 2, 0
_0800F0AC: .4byte 0x030013AC

	thumb_func_start sub_0800F0B0
sub_0800F0B0: @ 0x0800F0B0
	push {lr}
	ldr r0, _0800F0C8 @ =0x030013AC
	ldr r0, [r0]
	adds r0, #0xd3
	movs r1, #1
	strb r1, [r0]
	movs r0, #2
	bl sub_0800F03C
	pop {r0}
	bx r0
	.align 2, 0
_0800F0C8: .4byte 0x030013AC

	thumb_func_start sub_0800F0CC
sub_0800F0CC: @ 0x0800F0CC
	push {r4, lr}
	ldr r4, _0800F0EC @ =0x030013AC
	ldr r0, [r4]
	adds r0, #0xbc
	ldr r0, [r0]
	bl sub_08009A00
	ldr r0, [r4]
	adds r0, #0xc0
	ldr r0, [r0]
	bl sub_08009A00
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800F0EC: .4byte 0x030013AC

	thumb_func_start sub_0800F0F0
sub_0800F0F0: @ 0x0800F0F0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	movs r0, #1
	movs r1, #0x80
	bl sub_080099E0
	adds r7, r0, #0
	movs r1, #0
	bl sub_08009A34
	adds r0, r7, #0
	movs r1, #0
	movs r2, #0
	bl sub_08009A70
	ldr r5, _0800F1BC @ =0x030013AC
	ldr r0, [r5]
	adds r0, #0xec
	ldr r1, [r0]
	adds r0, r7, #0
	bl sub_08009A78
	adds r0, r7, #0
	movs r1, #7
	bl sub_08009AB4
	ldr r4, _0800F1C0 @ =0x08105FC4
	ldr r0, _0800F1C4 @ =0x03004400
	mov r8, r0
	ldrb r0, [r0, #0x14]
	lsls r0, r0, #2
	adds r1, r0, r4
	ldr r1, [r1]
	ldr r6, _0800F1C8 @ =0x08105FC0
	adds r0, r0, r6
	ldr r2, [r0]
	adds r0, r7, #0
	movs r3, #0
	bl sub_08009ACC
	adds r0, r7, #0
	movs r1, #0
	bl sub_08009B40
	ldr r0, [r5]
	adds r0, #0xbc
	str r7, [r0]
	movs r0, #1
	movs r1, #0x80
	bl sub_080099E0
	adds r7, r0, #0
	movs r1, #0
	bl sub_08009A34
	adds r0, r7, #0
	movs r1, #0xb0
	movs r2, #0
	bl sub_08009A70
	ldr r0, [r5]
	adds r0, #0xec
	ldr r1, [r0]
	adds r0, r7, #0
	bl sub_08009A78
	adds r0, r7, #0
	movs r1, #7
	bl sub_08009AB4
	mov r1, r8
	ldrb r0, [r1, #0x14]
	lsls r0, r0, #2
	adds r4, r0, r4
	ldr r1, [r4]
	adds r0, r0, r6
	ldr r2, [r0]
	adds r0, r7, #0
	movs r3, #1
	bl sub_08009ACC
	adds r0, r7, #0
	movs r1, #0
	bl sub_08009B40
	ldr r1, [r5]
	adds r0, r1, #0
	adds r0, #0xc0
	str r7, [r0]
	movs r2, #0x16
	ldrsh r0, [r1, r2]
	ldr r1, _0800F1CC @ =sub_0800F0CC
	bl sub_08007BA0
	bl sub_0800F078
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800F1BC: .4byte 0x030013AC
_0800F1C0: .4byte 0x08105FC4
_0800F1C4: .4byte 0x03004400
_0800F1C8: .4byte 0x08105FC0
_0800F1CC: .4byte sub_0800F0CC

	thumb_func_start sub_0800F1D0
sub_0800F1D0: @ 0x0800F1D0
	bx lr
	.align 2, 0

	thumb_func_start sub_0800F1D4
sub_0800F1D4: @ 0x0800F1D4
	push {r4, r5, r6, r7, lr}
	bl sub_08007BD4
	adds r6, r0, #0
	ldrb r5, [r6]
	cmp r5, #1
	beq _0800F248
	cmp r5, #1
	bgt _0800F1EC
	cmp r5, #0
	beq _0800F1F2
	b _0800F28C
_0800F1EC:
	cmp r5, #2
	beq _0800F288
	b _0800F28C
_0800F1F2:
	ldr r7, _0800F240 @ =0x030013AC
	ldr r0, [r7]
	adds r0, #0xbc
	ldr r0, [r0]
	movs r4, #0x10
	rsbs r4, r4, #0
	movs r1, #0
	adds r2, r4, #0
	bl sub_08009A70
	ldr r0, [r7]
	adds r0, #0xc0
	ldr r0, [r0]
	movs r1, #0xb0
	adds r2, r4, #0
	bl sub_08009A70
	ldr r0, [r7]
	adds r0, #0xbc
	ldr r0, [r0]
	movs r1, #1
	bl sub_08009A34
	ldr r0, _0800F244 @ =0x03004420
	ldr r0, [r0]
	lsls r0, r0, #0xf
	lsrs r0, r0, #0x1d
	cmp r0, #0
	beq _0800F238
	ldr r0, [r7]
	adds r0, #0xc0
	ldr r0, [r0]
	movs r1, #1
	bl sub_08009A34
_0800F238:
	movs r0, #1
	strb r0, [r6]
	strh r5, [r6, #2]
	b _0800F28C
	.align 2, 0
_0800F240: .4byte 0x030013AC
_0800F244: .4byte 0x03004420
_0800F248:
	ldr r5, _0800F284 @ =0x030013AC
	ldr r0, [r5]
	adds r0, #0xbc
	ldr r0, [r0]
	movs r1, #8
	ldrsh r0, [r0, r1]
	adds r4, r0, #2
	cmp r4, #0
	blt _0800F260
	movs r4, #0
	movs r0, #2
	strb r0, [r6]
_0800F260:
	ldr r0, [r5]
	adds r0, #0xbc
	ldr r0, [r0]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	movs r1, #0
	adds r2, r4, #0
	bl sub_08009A70
	ldr r0, [r5]
	adds r0, #0xc0
	ldr r0, [r0]
	movs r1, #0xb0
	adds r2, r4, #0
	bl sub_08009A70
	b _0800F28C
	.align 2, 0
_0800F284: .4byte 0x030013AC
_0800F288:
	bl sub_0800F078
_0800F28C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800F294
sub_0800F294: @ 0x0800F294
	push {r4, r5, r6, lr}
	bl sub_08007BD4
	adds r6, r0, #0
	ldrb r5, [r6]
	cmp r5, #1
	beq _0800F2DC
	cmp r5, #1
	bgt _0800F2AC
	cmp r5, #0
	beq _0800F2B2
	b _0800F33C
_0800F2AC:
	cmp r5, #2
	beq _0800F338
	b _0800F33C
_0800F2B2:
	ldr r4, _0800F2D8 @ =0x030013AC
	ldr r0, [r4]
	adds r0, #0xbc
	ldr r0, [r0]
	movs r1, #0
	movs r2, #0
	bl sub_08009A70
	ldr r0, [r4]
	adds r0, #0xc0
	ldr r0, [r0]
	movs r1, #0xb0
	movs r2, #0
	bl sub_08009A70
	movs r0, #1
	strb r0, [r6]
	strh r5, [r6, #2]
	b _0800F33C
	.align 2, 0
_0800F2D8: .4byte 0x030013AC
_0800F2DC:
	ldr r5, _0800F334 @ =0x030013AC
	ldr r0, [r5]
	adds r0, #0xbc
	ldr r0, [r0]
	movs r1, #8
	ldrsh r0, [r0, r1]
	subs r4, r0, #2
	movs r0, #0x10
	rsbs r0, r0, #0
	cmp r4, r0
	bge _0800F310
	adds r4, r0, #0
	movs r0, #2
	strb r0, [r6]
	ldr r0, [r5]
	adds r0, #0xbc
	ldr r0, [r0]
	movs r1, #0
	bl sub_08009A34
	ldr r0, [r5]
	adds r0, #0xc0
	ldr r0, [r0]
	movs r1, #0
	bl sub_08009A34
_0800F310:
	ldr r0, [r5]
	adds r0, #0xbc
	ldr r0, [r0]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	movs r1, #0
	adds r2, r4, #0
	bl sub_08009A70
	ldr r0, [r5]
	adds r0, #0xc0
	ldr r0, [r0]
	movs r1, #0xb0
	adds r2, r4, #0
	bl sub_08009A70
	b _0800F33C
	.align 2, 0
_0800F334: .4byte 0x030013AC
_0800F338:
	bl sub_0800F078
_0800F33C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800F344
sub_0800F344: @ 0x0800F344
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _0800F378 @ =0x030013AC
	ldr r0, [r5]
	movs r1, #0x18
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	adds r6, r0, #0
	ldr r0, [r5]
	movs r1, #0x18
	ldrsh r0, [r0, r1]
	ldr r1, _0800F37C @ =0x08080178
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
_0800F378: .4byte 0x030013AC
_0800F37C: .4byte 0x08080178

	thumb_func_start sub_0800F380
sub_0800F380: @ 0x0800F380
	push {lr}
	ldr r0, _0800F398 @ =0x030013AC
	ldr r0, [r0]
	adds r0, #0xd4
	movs r1, #0
	strb r1, [r0]
	movs r0, #0
	bl sub_0800F344
	pop {r0}
	bx r0
	.align 2, 0
_0800F398: .4byte 0x030013AC

	thumb_func_start sub_0800F39C
sub_0800F39C: @ 0x0800F39C
	push {lr}
	ldr r0, _0800F3B4 @ =0x030013AC
	ldr r0, [r0]
	adds r0, #0xd4
	movs r1, #1
	strb r1, [r0]
	movs r0, #1
	bl sub_0800F344
	pop {r0}
	bx r0
	.align 2, 0
_0800F3B4: .4byte 0x030013AC

	thumb_func_start sub_0800F3B8
sub_0800F3B8: @ 0x0800F3B8
	push {lr}
	ldr r0, _0800F3CC @ =0x030013AC
	ldr r0, [r0]
	adds r0, #0xc4
	ldr r0, [r0]
	bl sub_08009A00
	pop {r0}
	bx r0
	.align 2, 0
_0800F3CC: .4byte 0x030013AC

	thumb_func_start sub_0800F3D0
sub_0800F3D0: @ 0x0800F3D0
	push {r4, r5, lr}
	movs r0, #1
	movs r1, #0xff
	bl sub_080099E0
	adds r4, r0, #0
	movs r1, #0
	bl sub_08009A34
	adds r0, r4, #0
	movs r1, #0x10
	movs r2, #0xa0
	bl sub_08009A70
	ldr r5, _0800F434 @ =0x030013AC
	ldr r0, [r5]
	adds r0, #0xd8
	ldr r1, [r0]
	adds r0, r4, #0
	bl sub_08009A78
	adds r0, r4, #0
	movs r1, #2
	bl sub_08009AB4
	ldr r1, _0800F438 @ =0x080E4B44
	ldr r2, _0800F43C @ =0x080E4B0C
	adds r0, r4, #0
	movs r3, #0xa
	bl sub_08009ACC
	adds r0, r4, #0
	movs r1, #0xff
	bl sub_08009B40
	ldr r1, [r5]
	adds r0, r1, #0
	adds r0, #0xc4
	str r4, [r0]
	movs r2, #0x18
	ldrsh r0, [r1, r2]
	ldr r1, _0800F440 @ =sub_0800F3B8
	bl sub_08007BA0
	bl sub_0800F380
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800F434: .4byte 0x030013AC
_0800F438: .4byte 0x080E4B44
_0800F43C: .4byte 0x080E4B0C
_0800F440: .4byte sub_0800F3B8

	thumb_func_start sub_0800F444
sub_0800F444: @ 0x0800F444
	bx lr
	.align 2, 0

	thumb_func_start sub_0800F448
sub_0800F448: @ 0x0800F448
	push {r4, r5, r6, lr}
	bl sub_08007BD4
	adds r6, r0, #0
	ldrb r5, [r6]
	cmp r5, #1
	beq _0800F490
	cmp r5, #1
	bgt _0800F460
	cmp r5, #0
	beq _0800F466
	b _0800F4C8
_0800F460:
	cmp r5, #2
	beq _0800F4C4
	b _0800F4C8
_0800F466:
	ldr r4, _0800F48C @ =0x030013AC
	ldr r0, [r4]
	adds r0, #0xc4
	ldr r0, [r0]
	movs r2, #0x40
	rsbs r2, r2, #0
	movs r1, #0x10
	bl sub_08009A70
	ldr r0, [r4]
	adds r0, #0xc4
	ldr r0, [r0]
	movs r1, #1
	bl sub_08009A34
	movs r0, #1
	strb r0, [r6]
	strh r5, [r6, #2]
	b _0800F4C8
	.align 2, 0
_0800F48C: .4byte 0x030013AC
_0800F490:
	ldr r5, _0800F4C0 @ =0x030013AC
	ldr r0, [r5]
	adds r0, #0xc4
	ldr r0, [r0]
	movs r1, #8
	ldrsh r4, [r0, r1]
	adds r4, #1
	cmp r4, #0x9f
	ble _0800F4AE
	movs r4, #0xa0
	movs r1, #0
	bl sub_08009A34
	movs r0, #2
	strb r0, [r6]
_0800F4AE:
	ldr r0, [r5]
	adds r0, #0xc4
	ldr r0, [r0]
	lsls r2, r4, #0x10
	asrs r2, r2, #0x10
	movs r1, #0x10
	bl sub_08009A70
	b _0800F4C8
	.align 2, 0
_0800F4C0: .4byte 0x030013AC
_0800F4C4:
	bl sub_0800F380
_0800F4C8:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800F4D0
sub_0800F4D0: @ 0x0800F4D0
	ldr r2, _0800F4F4 @ =0x030024E0
	ldr r0, _0800F4F8 @ =0x030013AC
	ldr r1, [r0]
	ldr r3, _0800F4FC @ =0x0000027A
	adds r0, r1, r3
	ldrh r0, [r0]
	strh r0, [r2, #8]
	ldr r2, _0800F500 @ =0x040000B0
	movs r0, #0x9e
	lsls r0, r0, #1
	adds r1, r1, r0
	str r1, [r2]
	ldr r0, _0800F504 @ =0x0400000E
	str r0, [r2, #4]
	ldr r0, _0800F508 @ =0xA2400001
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	bx lr
	.align 2, 0
_0800F4F4: .4byte 0x030024E0
_0800F4F8: .4byte 0x030013AC
_0800F4FC: .4byte 0x0000027A
_0800F500: .4byte 0x040000B0
_0800F504: .4byte 0x0400000E
_0800F508: .4byte 0xA2400001

	thumb_func_start sub_0800F50C
sub_0800F50C: @ 0x0800F50C
	push {lr}
	ldr r0, _0800F518 @ =sub_0800F4D0
	bl sub_080094F4
	pop {r0}
	bx r0
	.align 2, 0
_0800F518: .4byte sub_0800F4D0

	thumb_func_start sub_0800F51C
sub_0800F51C: @ 0x0800F51C
	push {r4, r5, r6, r7, lr}
	movs r2, #0
	ldr r6, _0800F580 @ =0x030013AC
	ldr r7, _0800F584 @ =sub_0800F50C
	adds r5, r6, #0
	movs r4, #0x9e
	lsls r4, r4, #1
	ldr r3, _0800F588 @ =0x00001F03
_0800F52C:
	ldr r0, [r5]
	lsls r1, r2, #1
	adds r0, r0, r4
	adds r0, r0, r1
	strh r3, [r0]
	adds r2, #1
	cmp r2, #0x6e
	ble _0800F52C
	movs r2, #0x6f
	ldr r5, _0800F580 @ =0x030013AC
	movs r4, #0x9e
	lsls r4, r4, #1
	movs r3, #0xf8
	lsls r3, r3, #5
_0800F548:
	ldr r0, [r5]
	lsls r1, r2, #1
	adds r0, r0, r4
	adds r0, r0, r1
	strh r3, [r0]
	adds r2, #1
	cmp r2, #0x9e
	ble _0800F548
	ldr r2, [r6]
	ldr r0, _0800F58C @ =0x0000027A
	adds r1, r2, r0
	ldr r0, _0800F588 @ =0x00001F03
	strh r0, [r1]
	movs r1, #0x1a
	ldrsh r0, [r2, r1]
	adds r1, r7, #0
	bl sub_08007BA0
	ldr r0, [r6]
	movs r1, #0x1a
	ldrsh r0, [r0, r1]
	ldr r1, _0800F590 @ =sub_0800F594
	bl sub_08007B84
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800F580: .4byte 0x030013AC
_0800F584: .4byte sub_0800F50C
_0800F588: .4byte 0x00001F03
_0800F58C: .4byte 0x0000027A
_0800F590: .4byte sub_0800F594

	thumb_func_start sub_0800F594
sub_0800F594: @ 0x0800F594
	bx lr
	.align 2, 0

	thumb_func_start sub_0800F598
sub_0800F598: @ 0x0800F598
	push {lr}
	ldr r0, _0800F5A8 @ =sub_0800F4D0
	movs r1, #0xff
	bl sub_08009460
	pop {r0}
	bx r0
	.align 2, 0
_0800F5A8: .4byte sub_0800F4D0

	thumb_func_start sub_0800F5AC
sub_0800F5AC: @ 0x0800F5AC
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r0, _0800F610 @ =0x33333333
	str r0, [sp, #4]
	ldr r1, _0800F614 @ =0x06004000
	ldr r2, _0800F618 @ =0x010003C0
	add r0, sp, #4
	bl CpuFastSet
	movs r6, #1
	movs r4, #0
	ldr r0, _0800F61C @ =0x03004420
	ldrb r1, [r0, #0x18]
	cmp r4, r1
	bge _0800F608
	adds r5, r0, #0
	ldr r7, _0800F620 @ =0x0807FD64
_0800F5CE:
	cmp r4, #2
	ble _0800F5D4
	movs r6, #2
_0800F5D4:
	adds r0, r5, #0
	adds r0, #0x19
	adds r0, r4, r0
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r0, [r0]
	bl sub_08006828
	adds r1, r0, #0
	ldr r2, _0800F624 @ =0x08080270
	lsls r0, r4, #2
	adds r0, r0, r2
	ldr r0, [r0]
	adds r2, r6, #0
	movs r3, #0
	str r3, [sp]
	movs r3, #3
	bl sub_08004D94
	adds r4, #1
	ldrb r0, [r5, #0x18]
	cmp r4, r0
	blt _0800F5CE
_0800F608:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800F610: .4byte 0x33333333
_0800F614: .4byte 0x06004000
_0800F618: .4byte 0x010003C0
_0800F61C: .4byte 0x03004420
_0800F620: .4byte 0x0807FD64
_0800F624: .4byte 0x08080270

	thumb_func_start sub_0800F628
sub_0800F628: @ 0x0800F628
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #8
	ldr r0, _0800F6CC @ =0x33333333
	str r0, [sp, #4]
	ldr r1, _0800F6D0 @ =0x06004000
	ldr r2, _0800F6D4 @ =0x010003C0
	add r0, sp, #4
	bl CpuFastSet
	movs r0, #1
	bl sub_08002B98
	ldr r4, _0800F6D8 @ =0x0807FD60
	ldr r0, _0800F6DC @ =0x03004420
	mov r8, r0
	ldrb r1, [r0, #0x19]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r4, #4
	adds r0, r0, r4
	ldr r0, [r0]
	bl sub_08006828
	adds r1, r0, #0
	ldr r6, _0800F6E0 @ =0x08080270
	ldr r0, [r6]
	movs r5, #0
	str r5, [sp]
	movs r2, #1
	movs r3, #3
	bl sub_08004D94
	movs r0, #1
	bl sub_08002B98
	mov r0, r8
	ldrb r1, [r0, #0x1a]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	bl sub_08006828
	adds r1, r0, #0
	ldr r0, [r6, #4]
	str r5, [sp]
	movs r2, #1
	movs r3, #3
	bl sub_08004D94
	movs r0, #1
	bl sub_08002B98
	mov r0, r8
	ldrb r1, [r0, #0x1b]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	bl sub_08006828
	adds r1, r0, #0
	ldr r0, [r6, #8]
	str r5, [sp]
	movs r2, #1
	movs r3, #3
	bl sub_08004D94
	movs r0, #1
	bl sub_08002B98
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800F6CC: .4byte 0x33333333
_0800F6D0: .4byte 0x06004000
_0800F6D4: .4byte 0x010003C0
_0800F6D8: .4byte 0x0807FD60
_0800F6DC: .4byte 0x03004420
_0800F6E0: .4byte 0x08080270

	thumb_func_start sub_0800F6E4
sub_0800F6E4: @ 0x0800F6E4
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #4
	ldr r4, _0800F750 @ =0x0807FD60
	ldr r0, _0800F754 @ =0x03004420
	mov r8, r0
	ldrb r1, [r0, #0x1c]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r4, #4
	adds r0, r0, r4
	ldr r0, [r0]
	bl sub_08006828
	adds r1, r0, #0
	ldr r6, _0800F758 @ =0x08080270
	ldr r0, [r6, #0xc]
	movs r5, #0
	str r5, [sp]
	movs r2, #2
	movs r3, #3
	bl sub_08004D94
	movs r0, #1
	bl sub_08002B98
	mov r0, r8
	ldrb r1, [r0, #0x1d]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	bl sub_08006828
	adds r1, r0, #0
	ldr r0, [r6, #0x10]
	str r5, [sp]
	movs r2, #2
	movs r3, #3
	bl sub_08004D94
	movs r0, #1
	bl sub_08002B98
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800F750: .4byte 0x0807FD60
_0800F754: .4byte 0x03004420
_0800F758: .4byte 0x08080270

	thumb_func_start sub_0800F75C
sub_0800F75C: @ 0x0800F75C
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _0800F790 @ =0x030013AC
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
	ldr r1, _0800F794 @ =0x08080284
	lsls r4, r4, #2
	adds r4, r4, r1
	ldr r1, [r4]
	bl sub_08007B84
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800F790: .4byte 0x030013AC
_0800F794: .4byte 0x08080284

	thumb_func_start sub_0800F798
sub_0800F798: @ 0x0800F798
	push {lr}
	ldr r0, _0800F7B0 @ =0x030013AC
	ldr r0, [r0]
	adds r0, #0xd5
	movs r1, #0
	strb r1, [r0]
	movs r0, #0
	bl sub_0800F75C
	pop {r0}
	bx r0
	.align 2, 0
_0800F7B0: .4byte 0x030013AC

	thumb_func_start sub_0800F7B4
sub_0800F7B4: @ 0x0800F7B4
	push {lr}
	ldr r0, _0800F7CC @ =0x030013AC
	ldr r0, [r0]
	adds r0, #0xd5
	movs r1, #1
	strb r1, [r0]
	movs r0, #1
	bl sub_0800F75C
	pop {r0}
	bx r0
	.align 2, 0
_0800F7CC: .4byte 0x030013AC

	thumb_func_start sub_0800F7D0
sub_0800F7D0: @ 0x0800F7D0
	push {lr}
	ldr r0, _0800F7E8 @ =0x030013AC
	ldr r0, [r0]
	adds r0, #0xd5
	movs r1, #1
	strb r1, [r0]
	movs r0, #2
	bl sub_0800F75C
	pop {r0}
	bx r0
	.align 2, 0
_0800F7E8: .4byte 0x030013AC

	thumb_func_start sub_0800F7EC
sub_0800F7EC: @ 0x0800F7EC
	push {lr}
	ldr r0, _0800F804 @ =0x030013AC
	ldr r0, [r0]
	adds r0, #0xd5
	movs r1, #1
	strb r1, [r0]
	movs r0, #3
	bl sub_0800F75C
	pop {r0}
	bx r0
	.align 2, 0
_0800F804: .4byte 0x030013AC

	thumb_func_start sub_0800F808
sub_0800F808: @ 0x0800F808
	push {lr}
	ldr r0, _0800F81C @ =0x030013AC
	ldr r0, [r0]
	adds r0, #0xc8
	ldr r0, [r0]
	bl sub_08009A00
	pop {r0}
	bx r0
	.align 2, 0
_0800F81C: .4byte 0x030013AC

	thumb_func_start sub_0800F820
sub_0800F820: @ 0x0800F820
	push {r4, r5, lr}
	movs r0, #1
	movs r1, #0x80
	bl sub_080099E0
	adds r4, r0, #0
	movs r1, #1
	bl sub_08009A34
	adds r0, r4, #0
	movs r1, #0xc0
	movs r2, #0x70
	bl sub_08009A70
	ldr r1, _0800F8AC @ =0x06010400
	adds r0, r4, #0
	bl sub_08009A78
	ldr r5, _0800F8B0 @ =0x030013AC
	ldr r0, [r5]
	adds r0, #0xfc
	ldr r1, [r0]
	adds r0, r4, #0
	movs r2, #0
	bl sub_08009BBC
	adds r0, r4, #0
	movs r1, #1
	bl sub_08009AB4
	ldr r1, _0800F8B4 @ =0x08091B14
	ldr r2, _0800F8B8 @ =0x08091A84
	adds r0, r4, #0
	movs r3, #3
	bl sub_08009ACC
	adds r0, r4, #0
	movs r1, #0xff
	bl sub_08009B40
	ldr r0, [r5]
	adds r0, #0xc8
	str r4, [r0]
	ldr r0, _0800F8BC @ =0x03004420
	ldrb r0, [r0, #4]
	cmp r0, #0
	bne _0800F894
	adds r0, r4, #0
	movs r1, #0x78
	movs r2, #0x70
	bl sub_08009A70
	ldr r0, [r5]
	adds r0, #0xc8
	ldr r0, [r0]
	movs r1, #0
	bl sub_08009AFC
_0800F894:
	ldr r0, [r5]
	movs r1, #0x1c
	ldrsh r0, [r0, r1]
	ldr r1, _0800F8C0 @ =sub_0800F808
	bl sub_08007BA0
	bl sub_0800F798
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800F8AC: .4byte 0x06010400
_0800F8B0: .4byte 0x030013AC
_0800F8B4: .4byte 0x08091B14
_0800F8B8: .4byte 0x08091A84
_0800F8BC: .4byte 0x03004420
_0800F8C0: .4byte sub_0800F808

	thumb_func_start sub_0800F8C4
sub_0800F8C4: @ 0x0800F8C4
	bx lr
	.align 2, 0

	thumb_func_start sub_0800F8C8
sub_0800F8C8: @ 0x0800F8C8
	push {r4, r5, r6, lr}
	bl sub_08007BD4
	adds r5, r0, #0
	ldrb r0, [r5]
	cmp r0, #1
	beq _0800F900
	cmp r0, #1
	bgt _0800F8E0
	cmp r0, #0
	beq _0800F8E6
	b _0800F938
_0800F8E0:
	cmp r0, #2
	beq _0800F934
	b _0800F938
_0800F8E6:
	ldr r0, _0800F8FC @ =0x030013AC
	ldr r0, [r0]
	adds r0, #0xc8
	ldr r0, [r0]
	movs r1, #5
	bl sub_08009AFC
	movs r0, #1
	strb r0, [r5]
	b _0800F938
	.align 2, 0
_0800F8FC: .4byte 0x030013AC
_0800F900:
	ldr r6, _0800F930 @ =0x030013AC
	ldr r0, [r6]
	adds r0, #0xc8
	ldr r0, [r0]
	movs r1, #6
	ldrsh r4, [r0, r1]
	adds r4, #1
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	movs r3, #8
	ldrsh r2, [r0, r3]
	bl sub_08009A70
	cmp r4, #0xc0
	bne _0800F938
	ldr r0, [r6]
	adds r0, #0xc8
	ldr r0, [r0]
	movs r1, #3
	bl sub_08009AFC
	movs r0, #2
	strb r0, [r5]
	b _0800F938
	.align 2, 0
_0800F930: .4byte 0x030013AC
_0800F934:
	bl sub_0800F798
_0800F938:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800F940
sub_0800F940: @ 0x0800F940
	push {r4, r5, lr}
	bl sub_08007BD4
	adds r5, r0, #0
	ldrb r0, [r5]
	cmp r0, #1
	beq _0800F984
	cmp r0, #1
	bgt _0800F958
	cmp r0, #0
	beq _0800F95E
	b _0800F9B8
_0800F958:
	cmp r0, #2
	beq _0800F9B4
	b _0800F9B8
_0800F95E:
	ldr r4, _0800F980 @ =0x030013AC
	ldr r0, [r4]
	adds r0, #0xc8
	ldr r0, [r0]
	movs r1, #6
	bl sub_08009AFC
	ldr r0, [r4]
	adds r0, #0xc8
	ldr r0, [r0]
	movs r1, #1
	bl sub_08009B40
	movs r0, #1
	strb r0, [r5]
	b _0800F9B8
	.align 2, 0
_0800F980: .4byte 0x030013AC
_0800F984:
	ldr r4, _0800F9B0 @ =0x030013AC
	ldr r0, [r4]
	adds r0, #0xc8
	ldr r1, [r0]
	ldrb r0, [r1, #1]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _0800F9B8
	adds r0, r1, #0
	movs r1, #3
	bl sub_08009AFC
	ldr r0, [r4]
	adds r0, #0xc8
	ldr r0, [r0]
	movs r1, #0xff
	bl sub_08009B40
	movs r0, #2
	strb r0, [r5]
	b _0800F9B8
	.align 2, 0
_0800F9B0: .4byte 0x030013AC
_0800F9B4:
	bl sub_0800F798
_0800F9B8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800F9C0
sub_0800F9C0: @ 0x0800F9C0
	push {r4, lr}
	bl sub_08007BD4
	adds r4, r0, #0
	ldrb r0, [r4]
	cmp r0, #1
	beq _0800F9F8
	cmp r0, #1
	bgt _0800F9D8
	cmp r0, #0
	beq _0800F9DE
	b _0800FA20
_0800F9D8:
	cmp r0, #2
	beq _0800FA1C
	b _0800FA20
_0800F9DE:
	ldr r0, _0800F9F4 @ =0x030013AC
	ldr r0, [r0]
	adds r0, #0xc8
	ldr r0, [r0]
	movs r1, #7
	bl sub_08009AFC
	movs r0, #1
	strb r0, [r4]
	b _0800FA20
	.align 2, 0
_0800F9F4: .4byte 0x030013AC
_0800F9F8:
	ldr r0, _0800FA18 @ =0x030013AC
	ldr r0, [r0]
	adds r0, #0xc8
	ldr r1, [r0]
	ldrb r0, [r1, #1]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _0800FA20
	adds r0, r1, #0
	movs r1, #3
	bl sub_08009AFC
	movs r0, #2
	strb r0, [r4]
	b _0800FA20
	.align 2, 0
_0800FA18: .4byte 0x030013AC
_0800FA1C:
	bl sub_0800F798
_0800FA20:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800FA28
sub_0800FA28: @ 0x0800FA28
	push {r4, lr}
	bl sub_08007BD4
	adds r4, r0, #0
	ldrb r0, [r4]
	cmp r0, #1
	beq _0800FA56
	cmp r0, #1
	bgt _0800FA40
	cmp r0, #0
	beq _0800FA4A
	b _0800FA80
_0800FA40:
	cmp r0, #2
	beq _0800FA62
	cmp r0, #3
	beq _0800FA7C
	b _0800FA80
_0800FA4A:
	ldrh r0, [r4, #4]
	bl sub_0806F6A8
	movs r0, #1
	strb r0, [r4]
	b _0800FA80
_0800FA56:
	ldrh r0, [r4, #6]
	bl sub_0806F5DC
	movs r0, #2
	strb r0, [r4]
	b _0800FA80
_0800FA62:
	ldr r0, _0800FA78 @ =0x03005730
	ldr r0, [r0, #4]
	cmp r0, #0
	bge _0800FA80
	ldrh r0, [r4, #4]
	bl sub_0806F5DC
	movs r0, #3
	strb r0, [r4]
	b _0800FA80
	.align 2, 0
_0800FA78: .4byte 0x03005730
_0800FA7C:
	bl sub_08007A64
_0800FA80:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800FA88
sub_0800FA88: @ 0x0800FA88
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r0, _0800FAB8 @ =sub_0800FA28
	movs r1, #0x4b
	movs r2, #0
	bl sub_08007968
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl sub_08007BBC
	movs r1, #0
	strb r1, [r0]
	strh r1, [r0, #2]
	strh r4, [r0, #4]
	strh r5, [r0, #6]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800FAB8: .4byte sub_0800FA28

	thumb_func_start sub_0800FABC
sub_0800FABC: @ 0x0800FABC
	push {lr}
	ldr r1, _0800FACC @ =0x03004440
	movs r0, #0
	movs r2, #8
	bl sub_08007EFC
	pop {r0}
	bx r0
	.align 2, 0
_0800FACC: .4byte 0x03004440

	thumb_func_start sub_0800FAD0
sub_0800FAD0: @ 0x0800FAD0
	push {r4, r5, r6, lr}
	sub sp, #0xc
	ldr r5, _0800FC38 @ =0x030013B0
	movs r0, #0xec
	bl sub_08007CE8
	adds r1, r0, #0
	str r1, [r5]
	movs r0, #0
	movs r2, #0xec
	bl sub_08007EFC
	ldr r6, _0800FC3C @ =0x03004440
	ldrb r2, [r6]
	movs r0, #5
	ands r0, r2
	cmp r0, #0
	beq _0800FB28
	ldr r1, _0800FC40 @ =0x080839CC
	lsls r0, r2, #0x1b
	lsrs r0, r0, #0x1e
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _0800FC44 @ =0x05000200
	bl sub_08008308
	ldr r1, _0800FC48 @ =0x080839EC
	ldrb r0, [r6]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1e
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	add r1, sp, #4
	bl sub_08008380
	ldr r1, [r5]
	adds r2, r1, #0
	adds r2, #0xd8
	str r0, [r2]
	adds r1, #0xdc
	ldr r0, [sp, #4]
	str r0, [r1]
_0800FB28:
	ldr r0, _0800FC4C @ =0x08091534
	ldr r1, _0800FC50 @ =0x05000220
	bl sub_08008308
	ldr r0, _0800FC54 @ =0x08091B4C
	add r1, sp, #4
	bl sub_08008380
	ldr r1, [r5]
	adds r2, r1, #0
	adds r2, #0xe0
	str r0, [r2]
	adds r1, #0xe4
	ldr r0, [sp, #4]
	str r0, [r1]
	ldr r4, _0800FC58 @ =0x06010800
	ldr r0, _0800FC5C @ =0x080E6374
	ldr r1, _0800FC60 @ =0x05000240
	bl sub_08008308
	ldr r0, [r5]
	adds r0, #0xcc
	str r4, [r0]
	ldr r0, _0800FC64 @ =0x080E65FC
	adds r1, r4, #0
	bl sub_08008374
	adds r4, r0, r4
	ldr r0, _0800FC68 @ =0x0809C73C
	ldr r1, _0800FC6C @ =0x050002E0
	bl sub_08008308
	ldr r0, [r5]
	adds r0, #0xd0
	str r4, [r0]
	ldr r0, _0800FC70 @ =0x0809C890
	adds r1, r4, #0
	bl sub_08008374
	adds r4, r4, r0
	ldr r0, [r5]
	adds r0, #0xd4
	str r4, [r0]
	ldr r0, _0800FC74 @ =0x080E55E8
	movs r1, #0xa0
	lsls r1, r1, #0x13
	bl sub_08008308
	ldr r0, _0800FC78 @ =0x080E5A0C
	movs r1, #0xc0
	lsls r1, r1, #0x13
	bl sub_08008374
	ldr r0, _0800FC7C @ =0x080E568C
	ldr r1, _0800FC80 @ =0x0600F800
	movs r2, #0
	movs r3, #0
	bl sub_080083CC
	ldr r0, _0800FC84 @ =0x080E5834
	ldr r1, _0800FC88 @ =0x0600F000
	movs r2, #0
	movs r3, #0
	bl sub_080083CC
	ldr r0, _0800FC8C @ =sub_080112CC
	movs r1, #0x42
	movs r2, #0
	bl sub_08007968
	ldr r1, [r5]
	strh r0, [r1, #0x2c]
	ldr r0, _0800FC90 @ =sub_0801032C
	movs r1, #0x43
	movs r2, #0
	bl sub_08007968
	ldr r1, [r5]
	strh r0, [r1, #8]
	ldr r0, _0800FC94 @ =sub_080105E4
	movs r1, #0x44
	movs r2, #0
	bl sub_08007968
	ldr r1, [r5]
	strh r0, [r1, #0xa]
	ldr r0, _0800FC98 @ =sub_08010824
	movs r1, #0x46
	movs r2, #0
	bl sub_08007968
	ldr r1, [r5]
	strh r0, [r1, #0xc]
	bl sub_080109C8
	bl sub_08010B80
	bl sub_08011044
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
	movs r2, #5
	movs r3, #0
	bl sub_08004028
	bl sub_080057C0
	movs r0, #1
	bl sub_08005A88
	ldrb r1, [r6]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1e
	movs r0, #8
	bl sub_08005BE0
	ldr r0, _0800FC9C @ =0x03004400
	ldr r0, [r0]
	bl sub_0800B80C
	add sp, #0xc
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800FC38: .4byte 0x030013B0
_0800FC3C: .4byte 0x03004440
_0800FC40: .4byte 0x080839CC
_0800FC44: .4byte 0x05000200
_0800FC48: .4byte 0x080839EC
_0800FC4C: .4byte 0x08091534
_0800FC50: .4byte 0x05000220
_0800FC54: .4byte 0x08091B4C
_0800FC58: .4byte 0x06010800
_0800FC5C: .4byte 0x080E6374
_0800FC60: .4byte 0x05000240
_0800FC64: .4byte 0x080E65FC
_0800FC68: .4byte 0x0809C73C
_0800FC6C: .4byte 0x050002E0
_0800FC70: .4byte 0x0809C890
_0800FC74: .4byte 0x080E55E8
_0800FC78: .4byte 0x080E5A0C
_0800FC7C: .4byte 0x080E568C
_0800FC80: .4byte 0x0600F800
_0800FC84: .4byte 0x080E5834
_0800FC88: .4byte 0x0600F000
_0800FC8C: .4byte sub_080112CC
_0800FC90: .4byte sub_0801032C
_0800FC94: .4byte sub_080105E4
_0800FC98: .4byte sub_08010824
_0800FC9C: .4byte 0x03004400

	thumb_func_start sub_0800FCA0
sub_0800FCA0: @ 0x0800FCA0
	push {r4, r5, lr}
	bl sub_080058A4
	ldr r4, _0800FD14 @ =0x030013B0
	ldr r0, [r4]
	movs r1, #0x2c
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
	movs r1, #0x16
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	movs r5, #0
_0800FCDC:
	ldr r0, [r4]
	lsls r1, r5, #1
	adds r0, #0xe
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	adds r5, #1
	cmp r5, #3
	ble _0800FCDC
	movs r5, #0
	ldr r4, _0800FD14 @ =0x030013B0
_0800FCF6:
	ldr r0, [r4]
	lsls r1, r5, #1
	adds r0, #0x18
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	adds r5, #1
	cmp r5, #4
	ble _0800FCF6
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800FD14: .4byte 0x030013B0

	thumb_func_start sub_0800FD18
sub_0800FD18: @ 0x0800FD18
	push {r4, r5, lr}
	movs r0, #0
	bl sub_080081A0
	bl sub_0800FAD0
	ldr r4, _0800FD38 @ =0x030013B0
	ldr r5, _0800FD3C @ =0x080802B0
_0800FD28:
	ldr r1, [r4]
	ldrh r0, [r1, #4]
	cmp r0, #0
	beq _0800FD40
	subs r0, #1
	strh r0, [r1, #4]
	b _0800FD54
	.align 2, 0
_0800FD38: .4byte 0x030013B0
_0800FD3C: .4byte 0x080802B0
_0800FD40:
	ldrb r0, [r1]
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	bl call_via_r0
	ldr r0, [r4]
	ldrb r0, [r0, #6]
	cmp r0, #0
	bne _0800FD5C
_0800FD54:
	movs r0, #1
	bl sub_08002B98
	b _0800FD28
_0800FD5C:
	bl sub_0800FCA0
	movs r0, #1
	bl sub_08002B98
	bl sub_0806F710
	ldr r4, _0800FD8C @ =0x030013B0
	ldr r0, [r4]
	adds r0, #0xd8
	ldr r0, [r0]
	cmp r0, #0
	beq _0800FD7A
	bl sub_08007CF8
_0800FD7A:
	ldr r0, [r4]
	bl sub_08007CF8
	bl sub_08002B0C
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800FD8C: .4byte 0x030013B0

	thumb_func_start sub_0800FD90
sub_0800FD90: @ 0x0800FD90
	ldr r1, _0800FDA4 @ =0x030013B0
	ldr r2, [r1]
	movs r3, #0
	strb r0, [r2]
	ldr r0, [r1]
	strb r3, [r0, #1]
	ldr r0, [r1]
	strh r3, [r0, #2]
	bx lr
	.align 2, 0
_0800FDA4: .4byte 0x030013B0

	thumb_func_start sub_0800FDA8
sub_0800FDA8: @ 0x0800FDA8
	push {r4, r5, r6, lr}
	ldr r6, _0800FDBC @ =0x030013B0
	ldr r0, [r6]
	ldrb r0, [r0, #1]
	cmp r0, #0
	beq _0800FDC0
	cmp r0, #1
	beq _0800FE14
	b _0800FE4A
	.align 2, 0
_0800FDBC: .4byte 0x030013B0
_0800FDC0:
	bl sub_08008174
	ldr r4, _0800FE08 @ =0x030024E0
	ldr r0, _0800FE0C @ =0x00001F03
	strh r0, [r4, #8]
	ldrh r0, [r4]
	movs r2, #0x80
	lsls r2, r2, #4
	adds r1, r2, #0
	orrs r0, r1
	ldr r1, _0800FE10 @ =0x00001E02
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
	movs r5, #1
	strb r5, [r4]
	movs r0, #0x4a
	bl sub_0806F654
	bl sub_0800B770
	ldr r0, [r6]
	strb r5, [r0, #1]
	b _0800FE4A
	.align 2, 0
_0800FE08: .4byte 0x030024E0
_0800FE0C: .4byte 0x00001F03
_0800FE10: .4byte 0x00001E02
_0800FE14:
	ldr r4, _0800FE30 @ =0x03004440
	ldrb r1, [r4]
	ands r0, r1
	cmp r0, #0
	beq _0800FE34
	movs r0, #5
	bl sub_0800FD90
	ldrb r1, [r4]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4]
	b _0800FE4A
	.align 2, 0
_0800FE30: .4byte 0x03004440
_0800FE34:
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0800FE44
	movs r0, #2
	bl sub_0800FD90
	b _0800FE4A
_0800FE44:
	movs r0, #1
	bl sub_0800FD90
_0800FE4A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_0800FE50
sub_0800FE50: @ 0x0800FE50
	push {r4, lr}
	sub sp, #0xc
	ldr r1, _0800FE6C @ =0x030013B0
	ldr r0, [r1]
	ldrb r0, [r0, #1]
	adds r4, r1, #0
	cmp r0, #4
	bls _0800FE62
	b _0800FF9C
_0800FE62:
	lsls r0, r0, #2
	ldr r1, _0800FE70 @ =_0800FE74
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800FE6C: .4byte 0x030013B0
_0800FE70: .4byte _0800FE74
_0800FE74: @ jump table
	.4byte _0800FE88 @ case 0
	.4byte _0800FE90 @ case 1
	.4byte _0800FEB8 @ case 2
	.4byte _0800FF18 @ case 3
	.4byte _0800FF7C @ case 4
_0800FE88:
	ldr r1, [r4]
	movs r0, #1
	strb r0, [r1, #1]
	b _0800FF9C
_0800FE90:
	bl sub_08011274
	bl sub_08005934
	ldr r0, _0800FEB0 @ =0x08082D84
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	bl sub_08005A2C
	ldr r0, _0800FEB4 @ =0x030013B0
	ldr r1, [r0]
	movs r0, #2
	strb r0, [r1, #1]
	b _0800FF9C
	.align 2, 0
_0800FEB0: .4byte 0x08082D84
_0800FEB4: .4byte 0x030013B0
_0800FEB8:
	ldr r0, [r4]
	adds r0, #0xd4
	ldr r2, [r0]
	ldr r0, _0800FEF0 @ =0xF9FF0000
	adds r2, r2, r0
	lsls r2, r2, #0xb
	lsrs r2, r2, #0x10
	mov r0, sp
	movs r1, #2
	movs r3, #8
	bl sub_0800A16C
	mov r0, sp
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0800FEF4
	ldr r0, [r4]
	adds r0, #0xd8
	movs r1, #0
	str r1, [r0]
	movs r0, #7
	bl sub_0800FD90
	b _0800FF9C
	.align 2, 0
_0800FEF0: .4byte 0xF9FF0000
_0800FEF4:
	ldr r3, _0800FF14 @ =0x03004440
	mov r0, sp
	movs r2, #3
	ldrb r1, [r0]
	ands r1, r2
	lsls r1, r1, #3
	ldrb r2, [r3]
	movs r0, #0x19
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	ldr r1, [r4]
	movs r0, #3
	strb r0, [r1, #1]
	b _0800FF9C
	.align 2, 0
_0800FF14: .4byte 0x03004440
_0800FF18:
	ldr r1, _0800FF68 @ =0x080839CC
	ldr r4, _0800FF6C @ =0x03004440
	ldrb r0, [r4]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1e
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _0800FF70 @ =0x05000200
	bl sub_08008308
	ldr r1, _0800FF74 @ =0x080839EC
	ldrb r0, [r4]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1e
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	add r1, sp, #4
	bl sub_08008380
	ldr r4, _0800FF78 @ =0x030013B0
	ldr r1, [r4]
	adds r2, r1, #0
	adds r2, #0xd8
	str r0, [r2]
	adds r1, #0xdc
	ldr r0, [sp, #4]
	str r0, [r1]
	movs r0, #1
	bl sub_08002B98
	bl sub_08010C30
	bl sub_08010B00
	ldr r1, [r4]
	movs r0, #4
	strb r0, [r1, #1]
	b _0800FF9C
	.align 2, 0
_0800FF68: .4byte 0x080839CC
_0800FF6C: .4byte 0x03004440
_0800FF70: .4byte 0x05000200
_0800FF74: .4byte 0x080839EC
_0800FF78: .4byte 0x030013B0
_0800FF7C:
	ldr r0, [r4]
	adds r0, #0xc8
	ldrb r0, [r0]
	lsls r0, r0, #0x1d
	cmp r0, #0
	blt _0800FF9C
	ldr r0, _0800FFA4 @ =0x03004440
	ldrb r1, [r0]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1e
	movs r0, #8
	bl sub_08005BE0
	movs r0, #2
	bl sub_0800FD90
_0800FF9C:
	add sp, #0xc
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800FFA4: .4byte 0x03004440

	thumb_func_start sub_0800FFA8
sub_0800FFA8: @ 0x0800FFA8
	push {lr}
	ldr r1, _0800FFC0 @ =0x030013B0
	ldr r0, [r1]
	ldrb r0, [r0, #1]
	adds r2, r1, #0
	cmp r0, #4
	bhi _0801009A
	lsls r0, r0, #2
	ldr r1, _0800FFC4 @ =_0800FFC8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800FFC0: .4byte 0x030013B0
_0800FFC4: .4byte _0800FFC8
_0800FFC8: @ jump table
	.4byte _0800FFDC @ case 0
	.4byte _0800FFE4 @ case 1
	.4byte _0801001C @ case 2
	.4byte _08010074 @ case 3
	.4byte _08010090 @ case 4
_0800FFDC:
	ldr r1, [r2]
	movs r0, #1
	strb r0, [r1, #1]
	b _0801009A
_0800FFE4:
	bl sub_08005934
	ldr r0, _0801000C @ =0x08082D90
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	bl sub_080064F8
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08010014
	bl sub_08011294
	ldr r0, _08010010 @ =0x08082DBC
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	b _08010042
	.align 2, 0
_0801000C: .4byte 0x08082D90
_08010010: .4byte 0x08082DBC
_08010014:
	ldr r0, _08010018 @ =0x08082DA0
	b _0801005A
	.align 2, 0
_08010018: .4byte 0x08082DA0
_0801001C:
	ldr r0, _0801004C @ =0x08082DA8
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	bl sub_080064F8
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08010058
	bl sub_08011294
	ldr r0, _08010050 @ =0x08082DBC
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	bl sub_08005A2C
_08010042:
	ldr r0, _08010054 @ =0x030013B0
	ldr r1, [r0]
	movs r0, #4
	strb r0, [r1, #1]
	b _0801009A
	.align 2, 0
_0801004C: .4byte 0x08082DA8
_08010050: .4byte 0x08082DBC
_08010054: .4byte 0x030013B0
_08010058:
	ldr r0, _0801006C @ =0x08082DB4
_0801005A:
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	ldr r0, _08010070 @ =0x030013B0
	ldr r1, [r0]
	movs r0, #3
	strb r0, [r1, #1]
	b _0801009A
	.align 2, 0
_0801006C: .4byte 0x08082DB4
_08010070: .4byte 0x030013B0
_08010074:
	ldr r0, _08010088 @ =0x08082E48
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	ldr r0, _0801008C @ =0x030013B0
	ldr r1, [r0]
	movs r0, #2
	strb r0, [r1, #1]
	b _0801009A
	.align 2, 0
_08010088: .4byte 0x08082E48
_0801008C: .4byte 0x030013B0
_08010090:
	bl sub_08005A2C
	movs r0, #3
	bl sub_0800FD90
_0801009A:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080100A0
sub_080100A0: @ 0x080100A0
	push {lr}
	movs r0, #4
	bl sub_0800FD90
	pop {r0}
	bx r0

