	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .text
	.ARM
	.syntax unified

	thumb_func_start sub_080603BC
sub_080603BC: @ 0x080603BC
	push {lr}
	ldr r1, _080603D0 @ =0x03004400
	ldrb r0, [r1, #0xa]
	cmp r0, #0x23
	bne _080603D4
	bl sub_08007310
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	b _080603D6
	.align 2, 0
_080603D0: .4byte 0x03004400
_080603D4:
	ldrb r0, [r1, #0xa]
_080603D6:
	subs r0, #0x14
	cmp r0, #0x19
	bhi _08060454
	lsls r0, r0, #2
	ldr r1, _080603E8 @ =_080603EC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080603E8: .4byte _080603EC
_080603EC: @ jump table
	.4byte _08060454 @ case 0
	.4byte _08060458 @ case 1
	.4byte _08060454 @ case 2
	.4byte _08060454 @ case 3
	.4byte _08060454 @ case 4
	.4byte _08060454 @ case 5
	.4byte _08060460 @ case 6
	.4byte _08060464 @ case 7
	.4byte _08060454 @ case 8
	.4byte _08060454 @ case 9
	.4byte _08060454 @ case 10
	.4byte _08060454 @ case 11
	.4byte _08060454 @ case 12
	.4byte _08060454 @ case 13
	.4byte _08060454 @ case 14
	.4byte _08060454 @ case 15
	.4byte _08060454 @ case 16
	.4byte _08060454 @ case 17
	.4byte _08060454 @ case 18
	.4byte _08060454 @ case 19
	.4byte _08060454 @ case 20
	.4byte _08060454 @ case 21
	.4byte _08060454 @ case 22
	.4byte _08060454 @ case 23
	.4byte _08060454 @ case 24
	.4byte _0806045C @ case 25
_08060454:
	movs r1, #0
	b _08060466
_08060458:
	movs r1, #1
	b _08060466
_0806045C:
	movs r1, #2
	b _08060466
_08060460:
	movs r1, #3
	b _08060466
_08060464:
	movs r1, #4
_08060466:
	movs r0, #0
	bl sub_0805FD64
	bl sub_08002B0C
	pop {r0}
	bx r0

	thumb_func_start sub_08060474
sub_08060474: @ 0x08060474
	push {lr}
	ldr r0, _08060488 @ =0x03004400
	ldrb r1, [r0, #0xa]
	cmp r1, #0x23
	bne _0806048C
	bl sub_08007310
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	b _08060496
	.align 2, 0
_08060488: .4byte 0x03004400
_0806048C:
	cmp r1, #0x11
	bne _08060494
	ldrb r0, [r0, #0xb]
	b _08060496
_08060494:
	ldrb r0, [r0, #0xa]
_08060496:
	subs r0, #0x17
	cmp r0, #0x12
	bhi _080604F8
	lsls r0, r0, #2
	ldr r1, _080604A8 @ =_080604AC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080604A8: .4byte _080604AC
_080604AC: @ jump table
	.4byte _080604F8 @ case 0
	.4byte _080604FC @ case 1
	.4byte _08060500 @ case 2
	.4byte _080604F8 @ case 3
	.4byte _080604F8 @ case 4
	.4byte _080604F8 @ case 5
	.4byte _080604F8 @ case 6
	.4byte _080604F8 @ case 7
	.4byte _080604F8 @ case 8
	.4byte _080604F8 @ case 9
	.4byte _080604F8 @ case 10
	.4byte _080604F8 @ case 11
	.4byte _080604F8 @ case 12
	.4byte _080604F8 @ case 13
	.4byte _080604F8 @ case 14
	.4byte _080604F8 @ case 15
	.4byte _080604F8 @ case 16
	.4byte _08060504 @ case 17
	.4byte _08060508 @ case 18
_080604F8:
	movs r1, #0
	b _0806050A
_080604FC:
	movs r1, #1
	b _0806050A
_08060500:
	movs r1, #2
	b _0806050A
_08060504:
	movs r1, #3
	b _0806050A
_08060508:
	movs r1, #4
_0806050A:
	movs r0, #1
	bl sub_0805FD64
	bl sub_08002B0C
	pop {r0}
	bx r0

	thumb_func_start sub_08060518
sub_08060518: @ 0x08060518
	push {lr}
	ldr r1, _0806052C @ =0x03004400
	ldrb r0, [r1, #0xa]
	cmp r0, #0x23
	bne _08060530
	bl sub_08007310
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	b _08060532
	.align 2, 0
_0806052C: .4byte 0x03004400
_08060530:
	ldrb r0, [r1, #0xa]
_08060532:
	subs r0, #0xa
	cmp r0, #0x12
	bhi _08060594
	lsls r0, r0, #2
	ldr r1, _08060544 @ =_08060548
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08060544: .4byte _08060548
_08060548: @ jump table
	.4byte _08060594 @ case 0
	.4byte _08060598 @ case 1
	.4byte _08060594 @ case 2
	.4byte _0806059C @ case 3
	.4byte _080605A0 @ case 4
	.4byte _08060594 @ case 5
	.4byte _08060594 @ case 6
	.4byte _08060594 @ case 7
	.4byte _08060594 @ case 8
	.4byte _08060594 @ case 9
	.4byte _08060594 @ case 10
	.4byte _08060594 @ case 11
	.4byte _08060594 @ case 12
	.4byte _08060594 @ case 13
	.4byte _08060594 @ case 14
	.4byte _08060594 @ case 15
	.4byte _08060594 @ case 16
	.4byte _08060594 @ case 17
	.4byte _080605A4 @ case 18
_08060594:
	movs r1, #0
	b _080605A6
_08060598:
	movs r1, #1
	b _080605A6
_0806059C:
	movs r1, #2
	b _080605A6
_080605A0:
	movs r1, #3
	b _080605A6
_080605A4:
	movs r1, #4
_080605A6:
	movs r0, #2
	bl sub_0805FD64
	bl sub_08002B0C
	pop {r0}
	bx r0

	thumb_func_start sub_080605B4
sub_080605B4: @ 0x080605B4
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	sub sp, #4
	movs r4, #0
	str r4, [sp]
	movs r6, #0xc0
	lsls r6, r6, #0x13
	ldr r2, _080606A0 @ =0x01006000
	mov r0, sp
	adds r1, r6, #0
	bl CpuFastSet
	ldr r5, _080606A4 @ =0x030024E0
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r5]
	movs r0, #0x80
	lsls r0, r0, #5
	strh r0, [r5, #2]
	strh r4, [r5, #0xa]
	strh r4, [r5, #0x12]
	ldr r0, _080606A8 @ =0x0811DE50
	movs r1, #0xa0
	lsls r1, r1, #0x13
	mov sl, r1
	bl sub_08008308
	ldr r0, _080606AC @ =0x0811DFE8
	adds r1, r6, #0
	bl sub_08008374
	ldr r0, _080606B0 @ =0x0811DE98
	ldr r1, _080606B4 @ =0x06008000
	mov sb, r1
	movs r2, #0
	movs r3, #0
	bl sub_080083CC
	ldr r4, _080606B8 @ =0x00007FFF
	movs r0, #0x1e
	adds r1, r4, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl sub_08008AF4
	adds r5, #0x4f
	movs r0, #1
	mov r8, r0
	mov r1, r8
	strb r1, [r5]
	bl sub_08008D34
	movs r0, #0x3c
	bl sub_08002B98
	movs r0, #0x1e
	adds r1, r4, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl sub_080089E8
	bl sub_08008D34
	ldr r0, _080606BC @ =0x0811E42C
	mov r1, sl
	bl sub_08008308
	ldr r0, _080606C0 @ =0x0811E60C
	adds r1, r6, #0
	bl sub_08008374
	ldr r0, _080606C4 @ =0x0811E470
	mov r1, sb
	movs r2, #0
	movs r3, #0
	bl sub_080083CC
	movs r0, #0x1e
	adds r1, r4, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl sub_08008AF4
	mov r0, r8
	strb r0, [r5]
	bl sub_08008D34
	movs r0, #0x3c
	bl sub_08002B98
	movs r0, #0x1e
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl sub_080089E8
	bl sub_08008D34
	movs r0, #0x13
	bl sub_080072F4
	movs r0, #0x22
	bl sub_08008790
	bl sub_08002B0C
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080606A0: .4byte 0x01006000
_080606A4: .4byte 0x030024E0
_080606A8: .4byte 0x0811DE50
_080606AC: .4byte 0x0811DFE8
_080606B0: .4byte 0x0811DE98
_080606B4: .4byte 0x06008000
_080606B8: .4byte 0x00007FFF
_080606BC: .4byte 0x0811E42C
_080606C0: .4byte 0x0811E60C
_080606C4: .4byte 0x0811E470

	thumb_func_start sub_080606C8
sub_080606C8: @ 0x080606C8
	ldr r1, _080606F8 @ =0x030024E0
	ldrh r3, [r1]
	movs r2, #0xe0
	lsls r2, r2, #4
	adds r0, r2, #0
	movs r2, #0
	orrs r0, r3
	strh r0, [r1]
	ldr r0, _080606FC @ =0x00001A09
	strh r0, [r1, #4]
	ldr r0, _08060700 @ =0x00001E0A
	strh r0, [r1, #6]
	ldr r0, _08060704 @ =0x00001903
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
_080606F8: .4byte 0x030024E0
_080606FC: .4byte 0x00001A09
_08060700: .4byte 0x00001E0A
_08060704: .4byte 0x00001903

	thumb_func_start sub_08060708
sub_08060708: @ 0x08060708
	push {r4, lr}
	sub sp, #0xc
	movs r0, #0
	str r0, [sp, #4]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	ldr r2, _08060740 @ =0x01006000
	add r0, sp, #4
	bl CpuFastSet
	bl sub_080606C8
	ldr r0, _08060744 @ =0x03004400
	ldrb r0, [r0, #8]
	cmp r0, #0x14
	blt _08060748
	cmp r0, #0x15
	ble _08060734
	cmp r0, #0x18
	bgt _08060748
	cmp r0, #0x17
	blt _08060748
_08060734:
	movs r1, #0x80
	lsls r1, r1, #3
	movs r0, #0x80
	bl sub_08006BE8
	b _08060752
	.align 2, 0
_08060740: .4byte 0x01006000
_08060744: .4byte 0x03004400
_08060748:
	movs r1, #0x80
	lsls r1, r1, #3
	movs r0, #0
	bl sub_08006BE8
_08060752:
	bl sub_08003F9C
	movs r0, #0x80
	lsls r0, r0, #1
	str r0, [sp]
	movs r0, #1
	movs r1, #0x18
	movs r2, #0xe
	movs r3, #0
	bl sub_08004028
	bl sub_080057C0
	add r0, sp, #8
	movs r1, #0
	strh r1, [r0]
	ldr r4, _080607A8 @ =0x02033790
	ldr r2, _080607AC @ =0x01000056
	adds r1, r4, #0
	bl CpuSet
	ldr r0, _080607B0 @ =0x0000FFFF
	strh r0, [r4, #2]
	ldr r0, _080607B4 @ =0x03004400
	ldrb r0, [r0, #8]
	cmp r0, #0x2c
	bgt _0806079E
	cmp r0, #0x2a
	blt _0806079E
	ldr r0, _080607B8 @ =sub_08061CA8
	movs r1, #0x90
	movs r2, #0
	bl sub_08007968
	strh r0, [r4, #2]
	bl sub_08009DDC
	str r0, [r4, #0x58]
_0806079E:
	add sp, #0xc
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080607A8: .4byte 0x02033790
_080607AC: .4byte 0x01000056
_080607B0: .4byte 0x0000FFFF
_080607B4: .4byte 0x03004400
_080607B8: .4byte sub_08061CA8

	thumb_func_start sub_080607BC
sub_080607BC: @ 0x080607BC
	push {r4, lr}
	ldr r4, _080607F4 @ =0x02033790
	movs r0, #2
	ldrsh r1, [r4, r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _080607D6
	adds r0, r1, #0
	bl sub_08007A08
	ldr r0, _080607F8 @ =0x0000FFFF
	strh r0, [r4, #2]
_080607D6:
	ldr r0, [r4, #0x58]
	cmp r0, #0
	beq _080607E4
	bl sub_08009E54
	movs r0, #0
	str r0, [r4, #0x58]
_080607E4:
	bl sub_0800580C
	bl sub_08003FE4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080607F4: .4byte 0x02033790
_080607F8: .4byte 0x0000FFFF

	thumb_func_start sub_080607FC
sub_080607FC: @ 0x080607FC
	push {r4, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r4, r0, #1
	adds r4, r4, r0
	lsls r4, r4, #2
	ldr r0, _08060834 @ =0x0808FEAC
	adds r4, r4, r0
	ldr r0, [r4]
	movs r1, #0xa0
	lsls r1, r1, #0x13
	bl sub_08008308
	ldr r0, [r4, #4]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	bl sub_08008374
	ldr r0, [r4, #8]
	ldr r1, _08060838 @ =0x0600C800
	movs r2, #0
	movs r3, #0
	bl sub_080083CC
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08060834: .4byte 0x0808FEAC
_08060838: .4byte 0x0600C800

	thumb_func_start sub_0806083C
sub_0806083C: @ 0x0806083C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r5, r0, #0
	ldr r7, _08060894 @ =0x06008800
	movs r4, #0
	str r4, [sp, #4]
	ldr r2, _08060898 @ =0x01000200
	add r0, sp, #4
	adds r1, r7, #0
	bl CpuFastSet
	str r4, [sp, #8]
	add r0, sp, #8
	ldr r1, _0806089C @ =0x0600D000
	ldr r2, _080608A0 @ =0x01000020
	bl CpuFastSet
	movs r0, #1
	bl sub_08002B98
	cmp r5, #0xff
	bne _080608A8
	ldr r4, _080608A4 @ =0x080900A4
	adds r0, r4, #0
	movs r1, #0
	bl sub_0800458C
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	movs r0, #1
	str r0, [sp]
	adds r0, r7, #0
	adds r1, r4, #0
	movs r2, #7
	movs r3, #0
	bl sub_08004A24
	movs r0, #0
	bl sub_08061310
	b _080608F0
	.align 2, 0
_08060894: .4byte 0x06008800
_08060898: .4byte 0x01000200
_0806089C: .4byte 0x0600D000
_080608A0: .4byte 0x01000020
_080608A4: .4byte 0x080900A4
_080608A8:
	adds r0, r5, #0
	bl sub_08001980
	movs r1, #0
	bl sub_080045FC
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	adds r0, r5, #0
	bl sub_08001980
	adds r1, r0, #0
	movs r0, #1
	str r0, [sp]
	adds r0, r7, #0
	movs r2, #7
	movs r3, #0
	bl sub_08004D94
	cmp r5, #0x43
	bls _080608F0
	movs r0, #1
	bl sub_08061310
	adds r0, r5, #0
	bl sub_080019D8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r6, #0x1a
	movs r2, #0xc0
	lsls r2, r2, #0x14
	adds r1, r1, r2
	lsrs r1, r1, #0x18
	bl sub_0806133C
_080608F0:
	ldr r0, _08060928 @ =0x030024E0
	lsls r1, r6, #2
	subs r1, #0x78
	movs r2, #0
	strh r1, [r0, #0xc]
	strh r2, [r0, #0x14]
	movs r0, #1
	bl sub_08002B98
	ldr r2, _0806092C @ =0x0600D000
	adds r3, r2, #0
	adds r3, #0x40
	movs r1, #0
	ldr r0, _08060930 @ =0xFFFFE000
	adds r5, r0, #0
	movs r4, #0
_08060910:
	cmp r1, r6
	bge _08060934
	adds r0, r1, #0
	adds r0, #0x40
	orrs r0, r5
	strh r0, [r2]
	adds r2, #2
	adds r0, r1, #0
	adds r0, #0x60
	orrs r0, r5
	strh r0, [r3]
	b _0806093A
	.align 2, 0
_08060928: .4byte 0x030024E0
_0806092C: .4byte 0x0600D000
_08060930: .4byte 0xFFFFE000
_08060934:
	strh r4, [r2]
	adds r2, #2
	strh r4, [r3]
_0806093A:
	adds r3, #2
	adds r1, #1
	cmp r1, #0xf
	ble _08060910
	movs r0, #1
	bl sub_08002B98
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08060950
sub_08060950: @ 0x08060950
	push {r4, lr}
	sub sp, #4
	movs r4, #0
	str r4, [sp]
	ldr r1, _08060970 @ =0x0600D000
	ldr r2, _08060974 @ =0x01000200
	mov r0, sp
	bl CpuFastSet
	ldr r0, _08060978 @ =0x030024E0
	strh r4, [r0, #0xc]
	strh r4, [r0, #0x14]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08060970: .4byte 0x0600D000
_08060974: .4byte 0x01000200
_08060978: .4byte 0x030024E0

	thumb_func_start sub_0806097C
sub_0806097C: @ 0x0806097C
	push {lr}
	ldr r0, _08060994 @ =0x0812D778
	ldr r1, _08060998 @ =0x05000160
	bl sub_08008308
	ldr r0, _0806099C @ =0x0812D79C
	ldr r1, _080609A0 @ =0x06008000
	bl sub_08008374
	pop {r0}
	bx r0
	.align 2, 0
_08060994: .4byte 0x0812D778
_08060998: .4byte 0x05000160
_0806099C: .4byte 0x0812D79C
_080609A0: .4byte 0x06008000

	thumb_func_start sub_080609A4
sub_080609A4: @ 0x080609A4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r1, #0
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	ldr r0, _08060A00 @ =0x030024E0
	rsbs r2, r2, #0
	strh r2, [r0, #0xe]
	rsbs r3, r3, #0
	strh r3, [r0, #0x16]
	movs r0, #1
	bl sub_08002B98
	ldr r2, _08060A04 @ =0x0808FF6C
	ldr r7, _08060A08 @ =0x0600F000
	movs r0, #0
	movs r1, #0xb0
	lsls r1, r1, #8
	adds r4, r1, #0
_080609D6:
	adds r3, r0, #1
	movs r1, #0xa
_080609DA:
	ldrh r0, [r2]
	orrs r0, r4
	strh r0, [r7]
	adds r2, #2
	adds r7, #2
	subs r1, #1
	cmp r1, #0
	bge _080609DA
	adds r7, #0x2a
	adds r0, r3, #0
	cmp r0, #2
	ble _080609D6
	ldr r7, _08060A0C @ =0x0600F042
	cmp r5, #1
	beq _08060A10
	cmp r5, #2
	beq _08060A94
	b _08060B50
	.align 2, 0
_08060A00: .4byte 0x030024E0
_08060A04: .4byte 0x0808FF6C
_08060A08: .4byte 0x0600F000
_08060A0C: .4byte 0x0600F042
_08060A10:
	ldr r0, _08060A68 @ =0x05F5E0FE
	cmp r6, r0
	bls _08060A18
	ldr r6, _08060A6C @ =0x05F5E0FF
_08060A18:
	ldr r1, _08060A70 @ =0x0000B006
	adds r0, r1, #0
	strh r0, [r7]
	adds r7, #2
	ldr r5, _08060A74 @ =0x00989680
	movs r0, #0
	mov sb, r0
	movs r1, #7
	mov r8, r1
_08060A2A:
	adds r0, r6, #0
	adds r1, r5, #0
	bl __udivsi3
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r0, r6, #0
	adds r1, r5, #0
	bl __umodsi3
	adds r6, r0, #0
	adds r0, r5, #0
	movs r1, #0xa
	bl __udivsi3
	adds r5, r0, #0
	cmp r4, #0
	bne _08060A52
	cmp r5, #0
	bne _08060A56
_08060A52:
	movs r0, #1
	mov sb, r0
_08060A56:
	mov r1, sb
	cmp r1, #0
	beq _08060A78
	adds r0, r4, #0
	adds r0, #9
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	b _08060A7A
	.align 2, 0
_08060A68: .4byte 0x05F5E0FE
_08060A6C: .4byte 0x05F5E0FF
_08060A70: .4byte 0x0000B006
_08060A74: .4byte 0x00989680
_08060A78:
	movs r4, #4
_08060A7A:
	movs r1, #0xb0
	lsls r1, r1, #8
	adds r0, r1, #0
	orrs r4, r0
	strh r4, [r7]
	adds r7, #2
	movs r0, #1
	rsbs r0, r0, #0
	add r8, r0
	mov r1, r8
	cmp r1, #0
	bge _08060A2A
	b _08060B50
_08060A94:
	ldr r0, _08060B5C @ =0x00008C9F
	cmp r6, r0
	bls _08060A9C
	adds r6, r0, #0
_08060A9C:
	adds r0, r6, #0
	movs r1, #0x3c
	bl __umodsi3
	ldr r1, _08060B60 @ =0x00000683
	muls r0, r1, r0
	movs r1, #0xfa
	lsls r1, r1, #2
	bl __udivsi3
	mov r8, r0
	cmp r0, #0x62
	bne _08060ABA
	movs r0, #0x63
	mov r8, r0
_08060ABA:
	movs r5, #0xe1
	lsls r5, r5, #4
	adds r0, r6, #0
	adds r1, r5, #0
	bl __udivsi3
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r0, r6, #0
	adds r1, r5, #0
	bl __umodsi3
	movs r1, #0x3c
	bl __udivsi3
	adds r5, r0, #0
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	ldr r1, _08060B64 @ =0x0000B005
	adds r0, r1, #0
	strh r0, [r7]
	adds r7, #4
	adds r4, #9
	ldr r0, _08060B68 @ =0xFFFFB000
	adds r6, r0, #0
	orrs r4, r6
	strh r4, [r7]
	adds r7, #2
	adds r1, #2
	adds r0, r1, #0
	strh r0, [r7]
	adds r7, #2
	adds r0, r5, #0
	movs r1, #0xa
	bl __udivsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r0, #9
	orrs r0, r6
	strh r0, [r7]
	adds r7, #2
	adds r0, r5, #0
	movs r1, #0xa
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r0, #9
	orrs r0, r6
	strh r0, [r7]
	adds r7, #2
	ldr r1, _08060B6C @ =0x0000B008
	adds r0, r1, #0
	strh r0, [r7]
	adds r7, #2
	mov r0, r8
	movs r1, #0xa
	bl __udivsi3
	adds r0, #9
	movs r1, #0xb0
	lsls r1, r1, #8
	adds r4, r1, #0
	orrs r0, r4
	strh r0, [r7]
	adds r7, #2
	mov r0, r8
	movs r1, #0xa
	bl __umodsi3
	adds r0, #9
	orrs r0, r4
	strh r0, [r7]
_08060B50:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08060B5C: .4byte 0x00008C9F
_08060B60: .4byte 0x00000683
_08060B64: .4byte 0x0000B005
_08060B68: .4byte 0xFFFFB000
_08060B6C: .4byte 0x0000B008

	thumb_func_start sub_08060B70
sub_08060B70: @ 0x08060B70
	push {r4, lr}
	sub sp, #4
	movs r4, #0
	str r4, [sp]
	ldr r1, _08060B90 @ =0x0600F000
	ldr r2, _08060B94 @ =0x01000200
	mov r0, sp
	bl CpuFastSet
	ldr r0, _08060B98 @ =0x030024E0
	strh r4, [r0, #0xe]
	strh r4, [r0, #0x16]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08060B90: .4byte 0x0600F000
_08060B94: .4byte 0x01000200
_08060B98: .4byte 0x030024E0

	thumb_func_start sub_08060B9C
sub_08060B9C: @ 0x08060B9C
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _08060BF8 @ =0x08090068
	mov r8, r0
	lsls r5, r4, #4
	adds r0, #4
	adds r0, r5, r0
	ldr r0, [r0]
	mov sb, r0
	bl sub_08006C14
	adds r6, r0, #0
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	add r5, r8
	ldr r0, [r5]
	ldr r1, _08060BFC @ =0x08090098
	adds r1, r4, r1
	ldrb r1, [r1]
	lsls r1, r1, #5
	ldr r2, _08060C00 @ =0x05000200
	adds r1, r1, r2
	bl sub_08008308
	lsls r1, r6, #5
	ldr r0, _08060C04 @ =0x06010000
	adds r1, r1, r0
	mov r0, sb
	bl sub_08008374
	ldr r0, _08060C08 @ =0x02033790
	lsls r4, r4, #1
	adds r0, #0x28
	adds r4, r4, r0
	strh r6, [r4]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08060BF8: .4byte 0x08090068
_08060BFC: .4byte 0x08090098
_08060C00: .4byte 0x05000200
_08060C04: .4byte 0x06010000
_08060C08: .4byte 0x02033790

	thumb_func_start sub_08060C0C
sub_08060C0C: @ 0x08060C0C
	push {r4, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _08060C34 @ =0x08090068
	lsls r1, r4, #4
	adds r0, #4
	adds r1, r1, r0
	ldr r0, [r1]
	bl sub_08006CA0
	ldr r0, _08060C38 @ =0x02033790
	lsls r4, r4, #1
	adds r0, #0x28
	adds r4, r4, r0
	movs r0, #0
	strh r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08060C34: .4byte 0x08090068
_08060C38: .4byte 0x02033790

	thumb_func_start sub_08060C3C
sub_08060C3C: @ 0x08060C3C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sb, r2
	ldr r6, _08060CDC @ =0x02033790
	lsls r1, r5, #2
	adds r0, r6, #0
	adds r0, #0x1c
	adds r7, r1, r0
	ldr r0, [r7]
	cmp r0, #0
	bne _08060CCE
	movs r0, #1
	movs r1, #0x80
	bl sub_080099E0
	adds r4, r0, #0
	lsls r0, r5, #1
	adds r1, r6, #0
	adds r1, #0x28
	adds r0, r0, r1
	ldrh r1, [r0]
	lsls r1, r1, #5
	ldr r0, _08060CE0 @ =0x06010000
	adds r1, r1, r0
	adds r0, r4, #0
	bl sub_08009A78
	ldr r0, _08060CE4 @ =0x08090098
	adds r0, r5, r0
	ldrb r1, [r0]
	adds r0, r4, #0
	bl sub_08009AB4
	ldr r2, _08060CE8 @ =0x08090068
	lsls r3, r5, #4
	adds r0, r2, #0
	adds r0, #0xc
	adds r0, r3, r0
	ldr r1, [r0]
	adds r2, #8
	adds r3, r3, r2
	ldr r2, [r3]
	adds r0, r4, #0
	movs r3, #0
	bl sub_08009ACC
	adds r0, r4, #0
	movs r1, #0xff
	bl sub_08009B40
	mov r0, r8
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	mov r0, sb
	lsls r2, r0, #0x10
	asrs r2, r2, #0x10
	adds r0, r4, #0
	bl sub_08009A70
	adds r0, r4, #0
	movs r1, #1
	bl sub_08009A34
	str r4, [r7]
_08060CCE:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08060CDC: .4byte 0x02033790
_08060CE0: .4byte 0x06010000
_08060CE4: .4byte 0x08090098
_08060CE8: .4byte 0x08090068

	thumb_func_start sub_08060CEC
sub_08060CEC: @ 0x08060CEC
	push {r4, lr}
	lsls r0, r0, #0x18
	ldr r1, _08060D0C @ =0x02033790
	lsrs r0, r0, #0x16
	adds r1, #0x1c
	adds r4, r0, r1
	ldr r0, [r4]
	cmp r0, #0
	beq _08060D06
	bl sub_08009A00
	movs r0, #0
	str r0, [r4]
_08060D06:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08060D0C: .4byte 0x02033790

	thumb_func_start sub_08060D10
sub_08060D10: @ 0x08060D10
	push {lr}
	lsls r0, r0, #0x18
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldr r1, _08060D3C @ =0x02033790
	lsrs r0, r0, #0x16
	adds r1, #0x1c
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _08060D36
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl sub_08009A70
_08060D36:
	pop {r0}
	bx r0
	.align 2, 0
_08060D3C: .4byte 0x02033790

	thumb_func_start sub_08060D40
sub_08060D40: @ 0x08060D40
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r7, r2, #0x18
	ldr r0, _08060D90 @ =0x02033790
	lsls r1, r4, #2
	adds r0, #0x1c
	adds r1, r1, r0
	ldr r5, [r1]
	cmp r5, #0
	beq _08060D88
	ldr r2, _08060D94 @ =0x08090068
	lsls r3, r4, #4
	adds r0, r2, #0
	adds r0, #0xc
	adds r0, r3, r0
	ldr r1, [r0]
	adds r2, #8
	adds r3, r3, r2
	ldr r2, [r3]
	ldr r3, _08060D98 @ =0x0809009B
	lsls r0, r4, #1
	adds r0, r0, r4
	adds r0, r6, r0
	adds r0, r0, r3
	ldrb r3, [r0]
	adds r0, r5, #0
	bl sub_08009ACC
	adds r0, r5, #0
	adds r1, r7, #0
	bl sub_08009B40
_08060D88:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08060D90: .4byte 0x02033790
_08060D94: .4byte 0x08090068
_08060D98: .4byte 0x0809009B

	thumb_func_start sub_08060D9C
sub_08060D9C: @ 0x08060D9C
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	adds r4, r0, #0
	mov sb, r2
	adds r5, r3, #0
	ldr r6, [sp, #0x18]
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r0, sb
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	movs r0, #1
	bl sub_080099E0
	mov r8, r0
	ldr r0, _08060E2C @ =0x02033790
	lsls r1, r4, #1
	adds r0, #4
	adds r1, r1, r0
	ldrh r1, [r1]
	lsls r1, r1, #5
	ldr r0, _08060E30 @ =0x06010000
	adds r1, r1, r0
	mov r0, r8
	bl sub_08009A78
	ldr r0, _08060E34 @ =0x08090030
	adds r0, r4, r0
	ldrb r1, [r0]
	mov r0, r8
	bl sub_08009AB4
	ldr r0, _08060E38 @ =0x0808FFB0
	lsls r4, r4, #4
	adds r0, #8
	adds r4, r4, r0
	ldr r2, [r4]
	mov r0, r8
	movs r1, #0
	mov r3, sb
	bl sub_08009ACC
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	lsls r6, r6, #0x10
	asrs r6, r6, #0x10
	mov r0, r8
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_08009A70
	mov r0, r8
	movs r1, #1
	bl sub_08009A34
	mov r0, r8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08060E2C: .4byte 0x02033790
_08060E30: .4byte 0x06010000
_08060E34: .4byte 0x08090030
_08060E38: .4byte 0x0808FFB0

	thumb_func_start sub_08060E3C
sub_08060E3C: @ 0x08060E3C
	push {r4, lr}
	adds r3, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r4, r2, #0x18
	cmp r3, #0
	beq _08060E60
	ldr r0, _08060E68 @ =0x0808FFB0
	lsls r1, r1, #4
	adds r0, #8
	adds r1, r1, r0
	ldr r2, [r1]
	adds r0, r3, #0
	movs r1, #0
	adds r3, r4, #0
	bl sub_08009ACC
_08060E60:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08060E68: .4byte 0x0808FFB0

	thumb_func_start sub_08060E6C
sub_08060E6C: @ 0x08060E6C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r5, r2, #0x18
	lsls r3, r3, #0x18
	lsrs r6, r3, #0x18
	cmp r4, #0
	beq _08060EA2
	ldr r2, _08060EA8 @ =0x0808FFB0
	lsls r3, r1, #4
	adds r0, r2, #0
	adds r0, #0xc
	adds r0, r3, r0
	ldr r1, [r0]
	adds r2, #8
	adds r3, r3, r2
	ldr r2, [r3]
	adds r0, r4, #0
	adds r3, r5, #0
	bl sub_08009ACC
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08009B40
_08060EA2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08060EA8: .4byte 0x0808FFB0

	thumb_func_start sub_08060EAC
sub_08060EAC: @ 0x08060EAC
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _08060F08 @ =0x0808FFB0
	mov r8, r0
	lsls r5, r4, #4
	adds r0, #4
	adds r0, r5, r0
	ldr r0, [r0]
	mov sb, r0
	bl sub_08006C14
	adds r6, r0, #0
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	add r5, r8
	ldr r0, [r5]
	ldr r1, _08060F0C @ =0x08090030
	adds r1, r4, r1
	ldrb r1, [r1]
	lsls r1, r1, #5
	ldr r2, _08060F10 @ =0x05000200
	adds r1, r1, r2
	bl sub_08008308
	lsls r1, r6, #5
	ldr r0, _08060F14 @ =0x06010000
	adds r1, r1, r0
	mov r0, sb
	bl sub_08008374
	ldr r0, _08060F18 @ =0x02033790
	lsls r4, r4, #1
	adds r0, #4
	adds r4, r4, r0
	strh r6, [r4]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08060F08: .4byte 0x0808FFB0
_08060F0C: .4byte 0x08090030
_08060F10: .4byte 0x05000200
_08060F14: .4byte 0x06010000
_08060F18: .4byte 0x02033790

	thumb_func_start sub_08060F1C
sub_08060F1C: @ 0x08060F1C
	push {r4, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _08060F44 @ =0x0808FFB0
	lsls r1, r4, #4
	adds r0, #4
	adds r1, r1, r0
	ldr r0, [r1]
	bl sub_08006CA0
	ldr r0, _08060F48 @ =0x02033790
	lsls r4, r4, #1
	adds r0, #4
	adds r4, r4, r0
	movs r0, #0
	strh r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08060F44: .4byte 0x0808FFB0
_08060F48: .4byte 0x02033790

	thumb_func_start sub_08060F4C
sub_08060F4C: @ 0x08060F4C
	push {lr}
	movs r0, #0
	bl sub_08060EAC
	movs r0, #4
	bl sub_08060EAC
	movs r0, #5
	bl sub_08060EAC
	pop {r0}
	bx r0

	thumb_func_start sub_08060F64
sub_08060F64: @ 0x08060F64
	push {lr}
	movs r0, #0
	bl sub_08060F1C
	movs r0, #4
	bl sub_08060F1C
	movs r0, #5
	bl sub_08060F1C
	pop {r0}
	bx r0

	thumb_func_start sub_08060F7C
sub_08060F7C: @ 0x08060F7C
	push {lr}
	movs r0, #0
	bl sub_08060EAC
	movs r0, #1
	bl sub_08060EAC
	movs r0, #4
	bl sub_08060EAC
	movs r0, #5
	bl sub_08060EAC
	movs r0, #7
	bl sub_08060EAC
	pop {r0}
	bx r0

	thumb_func_start sub_08060FA0
sub_08060FA0: @ 0x08060FA0
	push {lr}
	movs r0, #0
	bl sub_08060F1C
	movs r0, #1
	bl sub_08060F1C
	movs r0, #4
	bl sub_08060F1C
	movs r0, #5
	bl sub_08060F1C
	movs r0, #7
	bl sub_08060F1C
	pop {r0}
	bx r0

	thumb_func_start sub_08060FC4
sub_08060FC4: @ 0x08060FC4
	push {lr}
	movs r0, #0
	bl sub_08060EAC
	movs r0, #4
	bl sub_08060EAC
	movs r0, #5
	bl sub_08060EAC
	pop {r0}
	bx r0

	thumb_func_start sub_08060FDC
sub_08060FDC: @ 0x08060FDC
	push {lr}
	movs r0, #0
	bl sub_08060F1C
	movs r0, #4
	bl sub_08060F1C
	movs r0, #5
	bl sub_08060F1C
	pop {r0}
	bx r0

	thumb_func_start sub_08060FF4
sub_08060FF4: @ 0x08060FF4
	push {lr}
	ldr r0, _08061008 @ =0x03004400
	ldrb r0, [r0, #0xa]
	cmp r0, #0x17
	blt _08061026
	cmp r0, #0x18
	ble _0806100C
	cmp r0, #0x28
	beq _08061020
	b _08061026
	.align 2, 0
_08061008: .4byte 0x03004400
_0806100C:
	movs r0, #0
	bl sub_08060EAC
	movs r0, #5
	bl sub_08060EAC
	movs r0, #2
	bl sub_08060EAC
	b _08061026
_08061020:
	movs r0, #2
	bl sub_08060EAC
_08061026:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0806102C
sub_0806102C: @ 0x0806102C
	push {lr}
	movs r0, #0
	bl sub_08060F1C
	movs r0, #2
	bl sub_08060F1C
	movs r0, #3
	bl sub_08060F1C
	movs r0, #5
	bl sub_08060F1C
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0806104C
sub_0806104C: @ 0x0806104C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r7, r1, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	ldr r6, _08061090 @ =0x02033790
	ldr r0, [r6, #0x18]
	cmp r0, #0
	bne _080610E8
	cmp r3, #0
	bne _08061098
	lsls r3, r1, #0x10
	ldr r0, _08061094 @ =0xFFF80000
	adds r3, r3, r0
	asrs r3, r3, #0x10
	lsls r0, r2, #0x10
	ldr r1, _08061094 @ =0xFFF80000
	adds r0, r0, r1
	asrs r0, r0, #0x10
	str r0, [sp]
	movs r0, #0
	movs r1, #0xc
	movs r2, #0xa
	bl sub_08060D9C
	str r0, [r6, #0x18]
	b _080610E8
	.align 2, 0
_08061090: .4byte 0x02033790
_08061094: .4byte 0xFFF80000
_08061098:
	movs r0, #0
	movs r1, #0xc
	bl sub_080099E0
	adds r4, r0, #0
	ldr r5, _080610F4 @ =0x02034BD0
	ldrh r1, [r5, #2]
	lsls r1, r1, #5
	ldr r0, _080610F8 @ =0x06010000
	adds r1, r1, r0
	adds r0, r4, #0
	bl sub_08009A78
	ldrb r1, [r5]
	adds r0, r4, #0
	bl sub_08009AB4
	ldr r1, _080610FC @ =0x08141D6C
	ldr r2, _08061100 @ =0x08141D60
	adds r0, r4, #0
	movs r3, #0
	bl sub_08009ACC
	lsls r1, r7, #0x10
	ldr r0, _08061104 @ =0xFFF80000
	adds r1, r1, r0
	asrs r1, r1, #0x10
	mov r0, r8
	lsls r2, r0, #0x10
	ldr r0, _08061104 @ =0xFFF80000
	adds r2, r2, r0
	asrs r2, r2, #0x10
	adds r0, r4, #0
	bl sub_08009A70
	adds r0, r4, #0
	movs r1, #1
	bl sub_08009A34
	str r4, [r6, #0x18]
_080610E8:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080610F4: .4byte 0x02034BD0
_080610F8: .4byte 0x06010000
_080610FC: .4byte 0x08141D6C
_08061100: .4byte 0x08141D60
_08061104: .4byte 0xFFF80000

	thumb_func_start sub_08061108
sub_08061108: @ 0x08061108
	push {r4, lr}
	ldr r4, _08061120 @ =0x02033790
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _0806111A
	bl sub_08009A00
	movs r0, #0
	str r0, [r4, #0x18]
_0806111A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08061120: .4byte 0x02033790

	thumb_func_start sub_08061124
sub_08061124: @ 0x08061124
	push {lr}
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	ldr r0, _0806113C @ =0x02033790
	ldr r0, [r0, #0x18]
	cmp r0, #0
	beq _08061136
	bl sub_08009A34
_08061136:
	pop {r0}
	bx r0
	.align 2, 0
_0806113C: .4byte 0x02033790

	thumb_func_start sub_08061140
sub_08061140: @ 0x08061140
	push {lr}
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r2, r1, #0x10
	ldr r0, _08061168 @ =0x02033790
	ldr r0, [r0, #0x18]
	cmp r0, #0
	beq _08061164
	lsls r1, r3, #0x10
	ldr r3, _0806116C @ =0xFFF80000
	adds r1, r1, r3
	asrs r1, r1, #0x10
	lsls r2, r2, #0x10
	adds r2, r2, r3
	asrs r2, r2, #0x10
	bl sub_08009A70
_08061164:
	pop {r0}
	bx r0
	.align 2, 0
_08061168: .4byte 0x02033790
_0806116C: .4byte 0xFFF80000

	thumb_func_start sub_08061170
sub_08061170: @ 0x08061170
	push {r4, lr}
	sub sp, #4
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r4, _080611A4 @ =0x02033790
	ldr r0, [r4, #0x14]
	cmp r0, #0
	bne _0806119A
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	str r0, [sp]
	movs r0, #0
	movs r1, #0x10
	movs r2, #0xf
	bl sub_08060D9C
	str r0, [r4, #0x14]
_0806119A:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080611A4: .4byte 0x02033790

	thumb_func_start sub_080611A8
sub_080611A8: @ 0x080611A8
	push {r4, lr}
	ldr r4, _080611C0 @ =0x02033790
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _080611BA
	bl sub_08009A00
	movs r0, #0
	str r0, [r4, #0x14]
_080611BA:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080611C0: .4byte 0x02033790

	thumb_func_start sub_080611C4
sub_080611C4: @ 0x080611C4
	push {lr}
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	ldr r0, _080611DC @ =0x02033790
	ldr r0, [r0, #0x14]
	cmp r0, #0
	beq _080611D6
	bl sub_08009A34
_080611D6:
	pop {r0}
	bx r0
	.align 2, 0
_080611DC: .4byte 0x02033790

	thumb_func_start sub_080611E0
sub_080611E0: @ 0x080611E0
	push {lr}
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r2, r1, #0x10
	ldr r0, _08061204 @ =0x02033790
	ldr r0, [r0, #0x14]
	cmp r0, #0
	beq _080611FE
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl sub_08009A70
_080611FE:
	pop {r0}
	bx r0
	.align 2, 0
_08061204: .4byte 0x02033790

	thumb_func_start sub_08061208
sub_08061208: @ 0x08061208
	push {r4, r5, r6, lr}
	sub sp, #4
	ldr r6, _08061248 @ =0x02033790
	adds r5, r6, #0
	adds r5, #0xa4
	ldr r0, [r5]
	cmp r0, #0
	bne _0806123E
	movs r4, #0x2c
	str r4, [sp]
	movs r0, #0
	movs r1, #0x50
	movs r2, #0xc
	movs r3, #0x10
	bl sub_08060D9C
	str r0, [r5]
	str r4, [sp]
	movs r0, #0
	movs r1, #0x50
	movs r2, #0xb
	movs r3, #0xd0
	bl sub_08060D9C
	adds r1, r6, #0
	adds r1, #0xa8
	str r0, [r1]
_0806123E:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08061248: .4byte 0x02033790

	thumb_func_start sub_0806124C
sub_0806124C: @ 0x0806124C
	push {r4, r5, r6, lr}
	ldr r0, _08061274 @ =0x02033790
	adds r4, r0, #0
	adds r4, #0xa4
	movs r6, #0
	movs r5, #1
_08061258:
	ldr r0, [r4]
	cmp r0, #0
	beq _08061264
	bl sub_08009A00
	str r6, [r4]
_08061264:
	adds r4, #4
	subs r5, #1
	cmp r5, #0
	bge _08061258
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08061274: .4byte 0x02033790

	thumb_func_start sub_08061278
sub_08061278: @ 0x08061278
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	ldr r0, _080612A0 @ =0x02033790
	adds r5, r0, #0
	adds r5, #0xa4
	movs r4, #1
_08061286:
	ldr r0, [r5]
	cmp r0, #0
	beq _08061292
	adds r1, r6, #0
	bl sub_08009A34
_08061292:
	adds r5, #4
	subs r4, #1
	cmp r4, #0
	bge _08061286
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080612A0: .4byte 0x02033790

	thumb_func_start sub_080612A4
sub_080612A4: @ 0x080612A4
	push {r4, r5, lr}
	sub sp, #4
	ldr r0, _080612E0 @ =0x02033790
	adds r4, r0, #0
	adds r4, #0x9c
	movs r5, #1
_080612B0:
	ldr r0, [r4]
	cmp r0, #0
	bne _080612D0
	movs r0, #0x10
	rsbs r0, r0, #0
	str r0, [sp]
	movs r0, #1
	movs r1, #0x50
	movs r2, #0
	movs r3, #0
	bl sub_08060D9C
	str r0, [r4]
	movs r1, #0
	bl sub_08009A34
_080612D0:
	adds r4, #4
	subs r5, #1
	cmp r5, #0
	bge _080612B0
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080612E0: .4byte 0x02033790

	thumb_func_start sub_080612E4
sub_080612E4: @ 0x080612E4
	push {r4, r5, r6, lr}
	ldr r0, _0806130C @ =0x02033790
	adds r4, r0, #0
	adds r4, #0x9c
	movs r6, #0
	movs r5, #1
_080612F0:
	ldr r0, [r4]
	cmp r0, #0
	beq _080612FC
	bl sub_08009A00
	str r6, [r4]
_080612FC:
	adds r4, #4
	subs r5, #1
	cmp r5, #0
	bge _080612F0
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0806130C: .4byte 0x02033790

	thumb_func_start sub_08061310
sub_08061310: @ 0x08061310
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	ldr r0, _08061338 @ =0x02033790
	adds r5, r0, #0
	adds r5, #0x9c
	movs r4, #1
_0806131E:
	ldr r0, [r5]
	cmp r0, #0
	beq _0806132A
	adds r1, r6, #0
	bl sub_08009A34
_0806132A:
	adds r5, #4
	subs r4, #1
	cmp r4, #0
	bge _0806131E
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08061338: .4byte 0x02033790

	thumb_func_start sub_0806133C
sub_0806133C: @ 0x0806133C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	lsls r1, r1, #0x18
	lsrs r7, r1, #0x18
	ldr r1, _0806137C @ =0x080900BD
	mov r0, sp
	movs r2, #4
	bl memcpy
	movs r6, #0
	ldr r0, _08061380 @ =0x02033790
	adds r5, r0, #0
	adds r5, #0x9c
	rsbs r0, r7, #0
	adds r0, #0x78
	lsls r0, r0, #0x10
	mov r8, r0
_0806136A:
	ldr r0, [r5]
	cmp r0, #0
	beq _080613AE
	cmp r6, #0
	bne _08061384
	mov r0, r8
	lsrs r4, r0, #0x10
	b _08061388
	.align 2, 0
_0806137C: .4byte 0x080900BD
_08061380: .4byte 0x02033790
_08061384:
	adds r4, r7, #0
	adds r4, #0x78
_08061388:
	lsls r4, r4, #0x10
	ldr r0, _080613C4 @ =0xFFF80000
	adds r4, r4, r0
	lsrs r4, r4, #0x10
	ldr r0, [r5]
	mov r1, sp
	add r1, sb
	ldrb r3, [r1]
	movs r1, #0
	ldr r2, _080613C8 @ =0x0812D598
	bl sub_08009ACC
	ldr r0, [r5]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r1, r4, #0
	movs r2, #0
	bl sub_08009A70
_080613AE:
	adds r5, #4
	adds r6, #1
	cmp r6, #1
	ble _0806136A
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080613C4: .4byte 0xFFF80000
_080613C8: .4byte 0x0812D598

	thumb_func_start sub_080613CC
sub_080613CC: @ 0x080613CC
	push {r4, r5, r6, lr}
	sub sp, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	beq _080613DE
	cmp r0, #1
	beq _08061448
	b _0806147C
_080613DE:
	ldr r5, _0806143C @ =0xFFFF0000
	ands r6, r5
	movs r0, #0x28
	orrs r6, r0
	ldr r0, _08061440 @ =0x0000FFFF
	ands r6, r0
	movs r0, #0xd8
	lsls r0, r0, #0xf
	orrs r6, r0
	adds r3, r6, #0
	subs r3, #0x20
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	asrs r0, r6, #0x10
	subs r0, #8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp]
	movs r0, #5
	movs r1, #0x50
	movs r2, #0
	bl sub_08060D9C
	ldr r4, _08061444 @ =0x02033790
	adds r1, r4, #0
	adds r1, #0x90
	str r0, [r1]
	ands r6, r5
	movs r0, #0xc8
	orrs r6, r0
	adds r3, r6, #0
	subs r3, #0x20
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	asrs r0, r6, #0x10
	subs r0, #8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp]
	movs r0, #5
	movs r1, #0x50
	movs r2, #1
	bl sub_08060D9C
	adds r4, #0x94
	str r0, [r4]
	b _0806147C
	.align 2, 0
_0806143C: .4byte 0xFFFF0000
_08061440: .4byte 0x0000FFFF
_08061444: .4byte 0x02033790
_08061448:
	ldr r0, _08061484 @ =0xFFFF0000
	ands r6, r0
	movs r0, #0x78
	orrs r6, r0
	ldr r0, _08061488 @ =0x0000FFFF
	ands r6, r0
	movs r0, #0x9c
	lsls r0, r0, #0x10
	orrs r6, r0
	adds r3, r6, #0
	subs r3, #0x20
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	asrs r0, r6, #0x10
	subs r0, #8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp]
	movs r0, #5
	movs r1, #0x50
	movs r2, #2
	bl sub_08060D9C
	ldr r1, _0806148C @ =0x02033790
	adds r1, #0x98
	str r0, [r1]
_0806147C:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08061484: .4byte 0xFFFF0000
_08061488: .4byte 0x0000FFFF
_0806148C: .4byte 0x02033790

	thumb_func_start sub_08061490
sub_08061490: @ 0x08061490
	push {r4, r5, r6, lr}
	ldr r0, _080614B8 @ =0x02033790
	adds r4, r0, #0
	adds r4, #0x90
	movs r6, #0
	movs r5, #2
_0806149C:
	ldr r0, [r4]
	cmp r0, #0
	beq _080614A8
	bl sub_08009A00
	str r6, [r4]
_080614A8:
	adds r4, #4
	subs r5, #1
	cmp r5, #0
	bge _0806149C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080614B8: .4byte 0x02033790

	thumb_func_start sub_080614BC
sub_080614BC: @ 0x080614BC
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	ldr r0, _080614E4 @ =0x02033790
	adds r5, r0, #0
	adds r5, #0x90
	movs r4, #2
_080614CA:
	ldr r0, [r5]
	cmp r0, #0
	beq _080614D6
	adds r1, r6, #0
	bl sub_08009A34
_080614D6:
	adds r5, #4
	subs r4, #1
	cmp r4, #0
	bge _080614CA
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080614E4: .4byte 0x02033790

	thumb_func_start sub_080614E8
sub_080614E8: @ 0x080614E8
	push {r4, r5, r6, lr}
	sub sp, #4
	movs r4, #0
	ldr r6, _0806150C @ =0x02033790
	adds r5, r6, #0
	adds r5, #0x60
_080614F4:
	cmp r4, #0
	bne _08061510
	str r4, [sp]
	movs r0, #4
	movs r1, #0x50
	movs r2, #0xa
	movs r3, #0
	bl sub_08060D9C
	str r0, [r6, #0x60]
	b _08061522
	.align 2, 0
_0806150C: .4byte 0x02033790
_08061510:
	movs r0, #0
	str r0, [sp]
	movs r0, #4
	movs r1, #0x48
	movs r2, #0
	movs r3, #0
	bl sub_08060D9C
	str r0, [r5]
_08061522:
	adds r5, #4
	adds r4, #1
	cmp r4, #6
	ble _080614F4
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08061534
sub_08061534: @ 0x08061534
	push {r4, r5, r6, lr}
	ldr r0, _0806155C @ =0x02033790
	adds r4, r0, #0
	adds r4, #0x60
	movs r6, #0
	movs r5, #6
_08061540:
	ldr r0, [r4]
	cmp r0, #0
	beq _0806154C
	bl sub_08009A00
	str r6, [r4]
_0806154C:
	adds r4, #4
	subs r5, #1
	cmp r5, #0
	bge _08061540
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0806155C: .4byte 0x02033790

	thumb_func_start sub_08061560
sub_08061560: @ 0x08061560
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0
	ldr r0, _080615DC @ =0x000F423E
	cmp r6, r0
	bls _08061572
	ldr r6, _080615E0 @ =0x000F423F
_08061572:
	ldr r7, _080615E4 @ =0x000186A0
	movs r0, #0
	mov r8, r0
	movs r4, #0
	ldr r1, _080615E8 @ =0x020337F0
	mov sb, r1
_0806157E:
	adds r0, r6, #0
	adds r1, r7, #0
	bl __udivsi3
	adds r3, r0, #0
	adds r5, r4, #1
	cmp r3, #0
	bne _08061592
	cmp r5, #6
	bne _08061596
_08061592:
	movs r0, #1
	mov r8, r0
_08061596:
	lsls r0, r5, #2
	mov r1, sb
	adds r4, r0, r1
	ldr r0, [r4]
	cmp r0, #0
	beq _080615B6
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	movs r1, #0
	ldr r2, _080615EC @ =0x0809C830
	bl sub_08009ACC
	ldr r0, [r4]
	mov r1, r8
	bl sub_08009A34
_080615B6:
	adds r0, r6, #0
	adds r1, r7, #0
	bl __umodsi3
	adds r6, r0, #0
	adds r0, r7, #0
	movs r1, #0xa
	bl __divsi3
	adds r7, r0, #0
	adds r4, r5, #0
	cmp r4, #5
	ble _0806157E
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080615DC: .4byte 0x000F423E
_080615E0: .4byte 0x000F423F
_080615E4: .4byte 0x000186A0
_080615E8: .4byte 0x020337F0
_080615EC: .4byte 0x0809C830

	thumb_func_start sub_080615F0
sub_080615F0: @ 0x080615F0
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	movs r6, #0
	ldr r0, _0806162C @ =0x02033790
	adds r7, r0, #0
	adds r7, #0x60
_08061602:
	ldr r0, [r7]
	lsls r4, r2, #0x10
	cmp r0, #0
	beq _08061614
	asrs r1, r4, #0x10
	lsls r2, r5, #0x10
	asrs r2, r2, #0x10
	bl sub_08009A70
_08061614:
	cmp r6, #0
	bne _08061630
	movs r1, #0xc0
	lsls r1, r1, #0xd
	adds r0, r4, r1
	lsrs r2, r0, #0x10
	lsls r0, r5, #0x10
	movs r1, #0x80
	lsls r1, r1, #0xb
	adds r0, r0, r1
	lsrs r5, r0, #0x10
	b _08061638
	.align 2, 0
_0806162C: .4byte 0x02033790
_08061630:
	movs r1, #0x80
	lsls r1, r1, #0xc
	adds r0, r4, r1
	lsrs r2, r0, #0x10
_08061638:
	adds r7, #4
	adds r6, #1
	cmp r6, #6
	ble _08061602
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08061648
sub_08061648: @ 0x08061648
	push {r4, r5, lr}
	sub sp, #4
	movs r4, #0
	str r4, [sp]
	movs r0, #0
	movs r1, #0x50
	movs r2, #0xd
	movs r3, #0
	bl sub_08060D9C
	ldr r5, _080616A8 @ =0x02033790
	adds r1, r5, #0
	adds r1, #0x80
	str r0, [r1]
	str r4, [sp]
	movs r0, #7
	movs r1, #0x48
	movs r2, #0
	movs r3, #0
	bl sub_08060D9C
	adds r1, r5, #0
	adds r1, #0x84
	str r0, [r1]
	str r4, [sp]
	movs r0, #0
	movs r1, #0x48
	movs r2, #0
	movs r3, #0
	bl sub_08060D9C
	adds r1, r5, #0
	adds r1, #0x88
	str r0, [r1]
	str r4, [sp]
	movs r0, #0
	movs r1, #0x48
	movs r2, #0
	movs r3, #0
	bl sub_08060D9C
	adds r1, r5, #0
	adds r1, #0x8c
	str r0, [r1]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080616A8: .4byte 0x02033790

	thumb_func_start sub_080616AC
sub_080616AC: @ 0x080616AC
	push {r4, r5, r6, lr}
	ldr r0, _080616D4 @ =0x02033790
	adds r4, r0, #0
	adds r4, #0x80
	movs r6, #0
	movs r5, #3
_080616B8:
	ldr r0, [r4]
	cmp r0, #0
	beq _080616C4
	bl sub_08009A00
	str r6, [r4]
_080616C4:
	adds r4, #4
	subs r5, #1
	cmp r5, #0
	bge _080616B8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080616D4: .4byte 0x02033790

	thumb_func_start sub_080616D8
sub_080616D8: @ 0x080616D8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0x62
	bls _080616E8
	movs r6, #0x63
_080616E8:
	ldr r5, _08061748 @ =0x02033790
	adds r0, r5, #0
	adds r0, #0x88
	ldr r7, [r0]
	adds r0, r6, #0
	movs r1, #0xa
	bl __udivsi3
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _0806174C @ =0x08128790
	mov r8, r0
	adds r0, r7, #0
	movs r1, #0
	mov r2, r8
	adds r3, r4, #0
	bl sub_08009ACC
	rsbs r1, r4, #0
	orrs r1, r4
	lsrs r1, r1, #0x1f
	adds r0, r7, #0
	bl sub_08009A34
	adds r5, #0x8c
	ldr r7, [r5]
	adds r0, r6, #0
	movs r1, #0xa
	bl __umodsi3
	adds r3, r0, #0
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	adds r0, r7, #0
	movs r1, #0
	mov r2, r8
	bl sub_08009ACC
	adds r0, r7, #0
	movs r1, #1
	bl sub_08009A34
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08061748: .4byte 0x02033790
_0806174C: .4byte 0x08128790

	thumb_func_start sub_08061750
sub_08061750: @ 0x08061750
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _080617E4 @ =0x02033790
	mov sb, r0
	adds r0, #0x80
	ldr r0, [r0]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_08009A70
	adds r0, r4, #0
	adds r0, #8
	lsls r0, r0, #0x10
	ldr r1, _080617E8 @ =0xFFFF0000
	mov r8, r1
	adds r5, #8
	lsls r5, r5, #0x10
	ldr r6, _080617EC @ =0x0000FFFF
	lsrs r7, r0, #0x10
	orrs r7, r5
	mov r0, sb
	adds r0, #0x84
	ldr r0, [r0]
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	asrs r2, r7, #0x10
	bl sub_08009A70
	adds r4, #0x20
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	mov r0, r8
	ands r7, r0
	orrs r7, r4
	ands r7, r6
	orrs r7, r5
	mov r0, sb
	adds r0, #0x88
	ldr r0, [r0]
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	asrs r2, r7, #0x10
	bl sub_08009A70
	adds r0, r7, #0
	adds r0, #8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r1, r8
	ands r7, r1
	orrs r7, r0
	mov r0, sb
	adds r0, #0x8c
	ldr r0, [r0]
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	asrs r2, r7, #0x10
	bl sub_08009A70
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080617E4: .4byte 0x02033790
_080617E8: .4byte 0xFFFF0000
_080617EC: .4byte 0x0000FFFF

	thumb_func_start sub_080617F0
sub_080617F0: @ 0x080617F0
	push {r4, r5, r6, lr}
	ldr r0, _0806182C @ =0x02033790
	adds r0, #0x80
	ldr r1, [r0]
	ldrh r0, [r1, #8]
	lsls r0, r0, #0x10
	ldrh r5, [r1, #6]
	movs r1, #0
	orrs r5, r0
	adds r6, r0, #0
_08061804:
	lsls r4, r1, #0x10
	asrs r4, r4, #0x10
	subs r0, r5, r4
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	asrs r1, r6, #0x10
	bl sub_08061750
	movs r0, #1
	bl sub_08002B98
	adds r4, #0xc
	lsls r4, r4, #0x10
	lsrs r1, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #0xf0
	ble _08061804
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0806182C: .4byte 0x02033790

	thumb_func_start sub_08061830
sub_08061830: @ 0x08061830
	push {r4, r5, lr}
	ldr r5, _08061860 @ =0x0812C2E8
	adds r0, r5, #0
	bl sub_08006C14
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r0, _08061864 @ =0x0812C12C
	ldr r1, _08061868 @ =0x05000200
	bl sub_08008308
	lsls r1, r4, #5
	ldr r0, _0806186C @ =0x06010000
	adds r1, r1, r0
	adds r0, r5, #0
	bl sub_08008374
	ldr r0, _08061870 @ =0x02033790
	adds r0, #0x5c
	strh r4, [r0]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08061860: .4byte 0x0812C2E8
_08061864: .4byte 0x0812C12C
_08061868: .4byte 0x05000200
_0806186C: .4byte 0x06010000
_08061870: .4byte 0x02033790

	thumb_func_start sub_08061874
sub_08061874: @ 0x08061874
	push {lr}
	ldr r0, _08061888 @ =0x0812C2E8
	bl sub_08006CA0
	ldr r0, _0806188C @ =0x02033790
	adds r0, #0x5c
	movs r1, #0
	strh r1, [r0]
	pop {r0}
	bx r0
	.align 2, 0
_08061888: .4byte 0x0812C2E8
_0806188C: .4byte 0x02033790

	thumb_func_start sub_08061890
sub_08061890: @ 0x08061890
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	lsls r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov sb, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sl, r2
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	str r3, [sp]
	ldr r7, _08061964 @ =0x02033790
	lsrs r0, r0, #0x16
	str r0, [sp, #4]
	adds r0, r7, #0
	adds r0, #0x30
	ldr r1, [sp, #4]
	adds r1, r1, r0
	mov r8, r1
	ldr r0, [r1]
	cmp r0, #0
	bne _08061952
	movs r0, #1
	movs r1, #0x20
	bl sub_080099E0
	adds r5, r0, #0
	bl sub_08009DDC
	adds r6, r0, #0
	adds r0, r7, #0
	adds r0, #0x5c
	ldrh r4, [r0]
	adds r0, r6, #0
	movs r1, #0
	movs r2, #0
	bl sub_08009E84
	adds r0, r6, #0
	movs r1, #0
	bl sub_08009E9C
	lsls r4, r4, #5
	ldr r0, _08061968 @ =0x06010000
	adds r4, r4, r0
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08009A78
	adds r0, r5, #0
	movs r1, #0
	bl sub_08009AB4
	ldr r2, _0806196C @ =0x0812C2A8
	adds r0, r5, #0
	movs r1, #0
	mov r3, sb
	bl sub_08009ACC
	mov r0, sl
	lsls r1, r0, #0x10
	ldr r0, _08061970 @ =0xFFF00000
	adds r1, r1, r0
	asrs r1, r1, #0x10
	ldr r0, [sp]
	lsls r2, r0, #0x10
	ldr r0, _08061974 @ =0xFFE00000
	adds r2, r2, r0
	asrs r2, r2, #0x10
	adds r0, r5, #0
	bl sub_08009A70
	adds r0, r5, #0
	movs r1, #0x10
	movs r2, #0x20
	bl sub_08009C14
	adds r0, r5, #0
	movs r1, #1
	bl sub_08009B84
	adds r0, r5, #0
	movs r1, #1
	bl sub_08009A34
	mov r1, r8
	str r5, [r1]
	adds r0, r7, #0
	adds r0, #0x44
	ldr r1, [sp, #4]
	adds r0, r1, r0
	str r6, [r0]
_08061952:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08061964: .4byte 0x02033790
_08061968: .4byte 0x06010000
_0806196C: .4byte 0x0812C2A8
_08061970: .4byte 0xFFF00000
_08061974: .4byte 0xFFE00000

	thumb_func_start sub_08061978
sub_08061978: @ 0x08061978
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x18
	ldr r2, _080619B0 @ =0x02033790
	lsrs r0, r0, #0x16
	adds r1, r2, #0
	adds r1, #0x30
	adds r6, r0, r1
	ldr r5, [r6]
	adds r2, #0x44
	adds r4, r0, r2
	ldr r0, [r4]
	cmp r0, #0
	beq _0806199A
	bl sub_08009E54
	movs r0, #0
	str r0, [r4]
_0806199A:
	cmp r5, #0
	beq _080619A8
	adds r0, r5, #0
	bl sub_08009A00
	movs r0, #0
	str r0, [r6]
_080619A8:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080619B0: .4byte 0x02033790

	thumb_func_start sub_080619B4
sub_080619B4: @ 0x080619B4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	bl sub_08007BD4
	adds r7, r0, #0
	ldrb r0, [r7, #0xa]
	cmp r0, #0
	beq _080619CC
	subs r0, #1
	strb r0, [r7, #0xa]
	b _08061B14
_080619CC:
	ldrb r0, [r7, #9]
	cmp r0, #2
	bne _080619D8
	ldrb r0, [r7, #8]
	adds r0, #2
	b _080619DC
_080619D8:
	ldrb r0, [r7, #8]
	adds r0, #4
_080619DC:
	strb r0, [r7, #8]
	ldrb r0, [r7, #8]
	cmp r0, #0x3f
	bls _080619E8
	movs r0, #0x40
	strb r0, [r7, #8]
_080619E8:
	ldrb r0, [r7, #9]
	cmp r0, #1
	beq _08061A78
	cmp r0, #1
	bgt _080619F8
	cmp r0, #0
	beq _080619FE
	b _08061AE6
_080619F8:
	cmp r0, #2
	beq _08061A98
	b _08061AE6
_080619FE:
	ldr r0, _08061A6C @ =0x0807F240
	mov r8, r0
	ldrb r4, [r7, #8]
	lsls r0, r4, #1
	add r0, r8
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl __floatsidf
	adds r6, r1, #0
	adds r5, r0, #0
	lsls r4, r4, #2
	add r4, r8
	movs r2, #0
	ldrsh r0, [r4, r2]
	bl __floatsidf
	ldr r2, _08061A70 @ =0x3FD66666
	ldr r3, _08061A74 @ =0x66666666
	bl __muldf3
	adds r3, r1, #0
	adds r2, r0, #0
	adds r1, r6, #0
	adds r0, r5, #0
	bl __adddf3
	bl __fixdfsi
	strh r0, [r7, #0xc]
	ldrb r4, [r7, #8]
	lsls r0, r4, #1
	add r0, r8
	movs r3, #0
	ldrsh r0, [r0, r3]
	bl __floatsidf
	adds r6, r1, #0
	adds r5, r0, #0
	lsls r4, r4, #2
	add r4, r8
	movs r1, #0
	ldrsh r0, [r4, r1]
	bl __floatsidf
	ldr r2, _08061A70 @ =0x3FD66666
	ldr r3, _08061A74 @ =0x66666666
	bl __muldf3
	adds r3, r1, #0
	adds r2, r0, #0
	adds r1, r6, #0
	adds r0, r5, #0
	b _08061ADC
	.align 2, 0
_08061A6C: .4byte 0x0807F240
_08061A70: .4byte 0x3FD66666
_08061A74: .4byte 0x66666666
_08061A78:
	ldr r2, _08061A94 @ =0x0807F240
	ldrb r0, [r7, #8]
	movs r1, #0x40
	subs r0, r1, r0
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	strh r0, [r7, #0xc]
	ldrb r0, [r7, #8]
	subs r1, r1, r0
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r0, [r1]
	b _08061AE4
	.align 2, 0
_08061A94: .4byte 0x0807F240
_08061A98:
	ldr r6, _08061B20 @ =0x0807F240
	ldrb r0, [r7, #8]
	lsls r0, r0, #1
	adds r0, r0, r6
	movs r2, #0
	ldrsh r0, [r0, r2]
	bl __floatsidf
	ldr r2, _08061B24 @ =0x3FE80000
	ldr r3, _08061B28 @ =0x00000000
	bl __muldf3
	ldr r4, _08061B2C @ =0x40700000
	ldr r5, _08061B30 @ =0x00000000
	adds r3, r5, #0
	adds r2, r4, #0
	bl __adddf3
	bl __fixdfsi
	strh r0, [r7, #0xc]
	ldrb r0, [r7, #8]
	lsls r0, r0, #1
	adds r0, r0, r6
	movs r3, #0
	ldrsh r0, [r0, r3]
	bl __floatsidf
	ldr r2, _08061B24 @ =0x3FE80000
	ldr r3, _08061B28 @ =0x00000000
	bl __muldf3
	adds r3, r5, #0
	adds r2, r4, #0
_08061ADC:
	bl __adddf3
	bl __fixdfsi
_08061AE4:
	strh r0, [r7, #0xe]
_08061AE6:
	ldr r0, [r7, #4]
	movs r2, #0xc
	ldrsh r1, [r7, r2]
	movs r3, #0xe
	ldrsh r2, [r7, r3]
	bl sub_08009E84
	ldrb r0, [r7, #8]
	cmp r0, #0x3f
	bls _08061B14
	ldrb r0, [r7, #9]
	cmp r0, #0
	bne _08061B08
	ldr r0, [r7]
	movs r1, #0
	bl sub_08009B9C
_08061B08:
	ldr r1, _08061B34 @ =0x02033790
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	bl sub_08007A64
_08061B14:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08061B20: .4byte 0x0807F240
_08061B24: .4byte 0x3FE80000
_08061B28: .4byte 0x00000000
_08061B2C: .4byte 0x40700000
_08061B30: .4byte 0x00000000
_08061B34: .4byte 0x02033790

	thumb_func_start sub_08061B38
sub_08061B38: @ 0x08061B38
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r7, r1, #0x18
	ldr r1, _08061B60 @ =0x02033790
	lsls r3, r4, #2
	adds r0, r1, #0
	adds r0, #0x30
	adds r0, r3, r0
	ldr r6, [r0]
	adds r1, #0x44
	adds r1, r3, r1
	ldr r5, [r1]
	cmp r7, #0
	bne _08061B64
	adds r0, r3, r4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	b _08061B66
	.align 2, 0
_08061B60: .4byte 0x02033790
_08061B64:
	movs r0, #0
_08061B66:
	adds r4, r0, #0
	cmp r6, #0
	beq _08061BC6
	cmp r7, #0
	bne _08061B74
	movs r2, #0
	b _08061B88
_08061B74:
	ldr r0, _08061BCC @ =0xFFFF0000
	ands r2, r0
	movs r0, #0x80
	lsls r0, r0, #1
	orrs r2, r0
	ldr r0, _08061BD0 @ =0x0000FFFF
	ands r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x11
	orrs r2, r0
_08061B88:
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	asrs r2, r2, #0x10
	adds r0, r5, #0
	bl sub_08009E84
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_08009B9C
	ldr r0, _08061BD4 @ =sub_080619B4
	movs r1, #0x90
	movs r2, #0
	bl sub_08007968
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl sub_08007BBC
	str r6, [r0]
	str r5, [r0, #4]
	movs r1, #0
	strb r1, [r0, #8]
	strb r7, [r0, #9]
	strb r4, [r0, #0xa]
	strh r1, [r0, #0xc]
	strh r1, [r0, #0xe]
	ldr r1, _08061BD8 @ =0x02033790
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_08061BC6:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08061BCC: .4byte 0xFFFF0000
_08061BD0: .4byte 0x0000FFFF
_08061BD4: .4byte sub_080619B4
_08061BD8: .4byte 0x02033790

	thumb_func_start sub_08061BDC
sub_08061BDC: @ 0x08061BDC
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0
	bl sub_08061B38
	pop {r0}
	bx r0

	thumb_func_start sub_08061BEC
sub_08061BEC: @ 0x08061BEC
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #1
	bl sub_08061B38
	pop {r0}
	bx r0

	thumb_func_start sub_08061BFC
sub_08061BFC: @ 0x08061BFC
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #2
	bl sub_08061B38
	pop {r0}
	bx r0

	thumb_func_start sub_08061C0C
sub_08061C0C: @ 0x08061C0C
	push {r4, lr}
	ldr r1, _08061C30 @ =0x02033790
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	beq _08061C28
	adds r4, r1, #0
_08061C1A:
	movs r0, #1
	bl sub_08002B98
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bne _08061C1A
_08061C28:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08061C30: .4byte 0x02033790

	thumb_func_start sub_08061C34
sub_08061C34: @ 0x08061C34
	push {r4, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	beq _08061C76
	ldr r4, _08061C7C @ =0x02033790
	lsls r0, r0, #2
	adds r1, r4, #0
	adds r1, #0x30
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _08061C54
	ldr r1, [r4, #0x58]
	bl sub_08009B9C
_08061C54:
	movs r1, #2
	ldrsh r0, [r4, r1]
	bl sub_08007BBC
	movs r1, #0
	strb r1, [r0, #5]
	strb r1, [r0, #6]
	ldr r0, [r4, #0x58]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r2, #0
	bl sub_08009E84
	ldr r0, [r4, #0x58]
	movs r1, #0
	bl sub_08009E9C
_08061C76:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08061C7C: .4byte 0x02033790

	thumb_func_start sub_08061C80
sub_08061C80: @ 0x08061C80
	push {lr}
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0xff
	beq _08061C9E
	ldr r0, _08061CA4 @ =0x02033790
	lsls r1, r1, #2
	adds r0, #0x30
	adds r1, r1, r0
	ldr r0, [r1]
	cmp r0, #0
	beq _08061C9E
	movs r1, #0
	bl sub_08009B9C
_08061C9E:
	pop {r0}
	bx r0
	.align 2, 0
_08061CA4: .4byte 0x02033790

	thumb_func_start sub_08061CA8
sub_08061CA8: @ 0x08061CA8
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	bl sub_08007BD4
	adds r4, r0, #0
	ldr r0, _08061D5C @ =0x02033790
	ldr r0, [r0, #0x58]
	mov sl, r0
	ldr r0, _08061D60 @ =0x0807F240
	mov sb, r0
	ldrb r1, [r4, #5]
	mov r8, r1
	movs r0, #0x7f
	mov r2, r8
	ands r0, r2
	lsls r0, r0, #1
	add r0, sb
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl __floatsidf
	ldr r2, _08061D64 @ =0x3FD00000
	ldr r3, _08061D68 @ =0x00000000
	bl __muldf3
	ldr r5, _08061D6C @ =0x40700000
	ldr r6, _08061D70 @ =0x00000000
	adds r3, r6, #0
	adds r2, r5, #0
	bl __adddf3
	bl __fixdfsi
	strh r0, [r4]
	ldrb r0, [r4, #5]
	lsls r0, r0, #1
	add r0, sb
	movs r2, #0
	ldrsh r0, [r0, r2]
	bl __floatsidf
	ldr r2, _08061D74 @ =0x3FD33333
	ldr r3, _08061D78 @ =0x33333333
	bl __muldf3
	adds r3, r6, #0
	adds r2, r5, #0
	bl __adddf3
	bl __fixdfsi
	strh r0, [r4, #2]
	ldrb r0, [r4, #6]
	lsls r0, r0, #1
	add r0, sb
	movs r2, #0
	ldrsh r1, [r0, r2]
	lsls r0, r1, #2
	adds r0, r0, r1
	asrs r0, r0, #7
	strb r0, [r4, #4]
	movs r0, #4
	add r8, r0
	mov r1, r8
	strb r1, [r4, #5]
	ldrb r0, [r4, #6]
	adds r0, #2
	strb r0, [r4, #6]
	movs r2, #0
	ldrsh r1, [r4, r2]
	movs r0, #2
	ldrsh r2, [r4, r0]
	mov r0, sl
	bl sub_08009E84
	ldrb r1, [r4, #4]
	mov r0, sl
	bl sub_08009E9C
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08061D5C: .4byte 0x02033790
_08061D60: .4byte 0x0807F240
_08061D64: .4byte 0x3FD00000
_08061D68: .4byte 0x00000000
_08061D6C: .4byte 0x40700000
_08061D70: .4byte 0x00000000
_08061D74: .4byte 0x3FD33333
_08061D78: .4byte 0x33333333

	thumb_func_start sub_08061D7C
sub_08061D7C: @ 0x08061D7C
	push {lr}
	sub sp, #4
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r1, _08061D98 @ =0x020307F0
	ldr r2, _08061D9C @ =0x0100002E
	mov r0, sp
	bl CpuSet
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_08061D98: .4byte 0x020307F0
_08061D9C: .4byte 0x0100002E

	thumb_func_start sub_08061DA0
sub_08061DA0: @ 0x08061DA0
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	adds r6, r0, #0
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r0, _08061DF8 @ =0x08090038
	mov sb, r0
	lsls r4, r6, #4
	adds r0, #4
	adds r0, r4, r0
	ldr r0, [r0]
	mov sl, r0
	bl sub_08006C14
	ldr r5, _08061DFC @ =0x020307F0
	movs r1, #0x54
	adds r1, r1, r5
	mov r8, r1
	strh r0, [r1]
	add r4, sb
	ldr r0, [r4]
	ldr r1, _08061E00 @ =0x05000200
	bl sub_08008308
	mov r0, r8
	ldrh r1, [r0]
	lsls r1, r1, #5
	ldr r0, _08061E04 @ =0x06010000
	adds r1, r1, r0
	mov r0, sl
	bl sub_08008374
	adds r5, #0x56
	strb r6, [r5]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08061DF8: .4byte 0x08090038
_08061DFC: .4byte 0x020307F0
_08061E00: .4byte 0x05000200
_08061E04: .4byte 0x06010000

	thumb_func_start sub_08061E08
sub_08061E08: @ 0x08061E08
	push {lr}
	ldr r1, _08061E24 @ =0x08090038
	ldr r0, _08061E28 @ =0x020307F0
	adds r0, #0x56
	ldrb r0, [r0]
	lsls r0, r0, #4
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _08061E2C @ =0x05000200
	bl sub_08008308
	pop {r0}
	bx r0
	.align 2, 0
_08061E24: .4byte 0x08090038
_08061E28: .4byte 0x020307F0
_08061E2C: .4byte 0x05000200

	thumb_func_start sub_08061E30
sub_08061E30: @ 0x08061E30
	push {lr}
	ldr r1, _08061E4C @ =0x08090038
	ldr r0, _08061E50 @ =0x020307F0
	adds r0, #0x56
	ldrb r0, [r0]
	lsls r0, r0, #4
	adds r1, #4
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_08006CA0
	pop {r0}
	bx r0
	.align 2, 0
_08061E4C: .4byte 0x08090038
_08061E50: .4byte 0x020307F0

	thumb_func_start sub_08061E54
sub_08061E54: @ 0x08061E54
	push {r4, lr}
	bl sub_08007BD4
	adds r4, r0, #0
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _08061E68
	subs r0, #1
	strb r0, [r4, #1]
	b _08061EAA
_08061E68:
	ldrb r0, [r4, #2]
	cmp r0, #0
	bne _08061E74
	ldrh r0, [r4, #8]
	subs r0, #0xc
	b _08061E78
_08061E74:
	ldrh r0, [r4, #8]
	adds r0, #0xc
_08061E78:
	strh r0, [r4, #8]
	ldr r1, _08061EB0 @ =0x020307F0
	ldrb r0, [r4]
	lsls r0, r0, #2
	adds r1, #4
	adds r0, r0, r1
	ldr r0, [r0]
	movs r2, #8
	ldrsh r1, [r4, r2]
	movs r3, #0xa
	ldrsh r2, [r4, r3]
	bl sub_08009A70
	ldrh r0, [r4, #4]
	subs r0, #0xc
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08061EAA
	ldr r1, _08061EB4 @ =0x02033790
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	bl sub_08007A64
_08061EAA:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08061EB0: .4byte 0x020307F0
_08061EB4: .4byte 0x02033790

	thumb_func_start sub_08061EB8
sub_08061EB8: @ 0x08061EB8
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	mov sb, r0
	adds r4, r1, #0
	adds r5, r2, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #1
	movs r1, #0x20
	bl sub_080099E0
	mov r8, r0
	ldr r6, _08061F44 @ =0x020307F0
	adds r0, r6, #0
	adds r0, #0x54
	ldrh r1, [r0]
	lsls r1, r1, #5
	ldr r0, _08061F48 @ =0x06010000
	adds r1, r1, r0
	mov r0, r8
	bl sub_08009A78
	mov r0, r8
	movs r1, #0
	bl sub_08009AB4
	ldr r1, _08061F4C @ =0x08090038
	adds r6, #0x56
	ldrb r0, [r6]
	lsls r0, r0, #4
	adds r1, #8
	adds r0, r0, r1
	ldr r2, [r0]
	mov r0, r8
	movs r1, #0
	mov r3, sb
	bl sub_08009ACC
	lsls r4, r4, #0x10
	ldr r0, _08061F50 @ =0xFFF40000
	adds r4, r4, r0
	asrs r4, r4, #0x10
	lsls r5, r5, #0x10
	ldr r0, _08061F54 @ =0xFFE80000
	adds r5, r5, r0
	asrs r5, r5, #0x10
	mov r0, r8
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_08009A70
	mov r0, r8
	movs r1, #1
	bl sub_08009A34
	mov r0, r8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08061F44: .4byte 0x020307F0
_08061F48: .4byte 0x06010000
_08061F4C: .4byte 0x08090038
_08061F50: .4byte 0xFFF40000
_08061F54: .4byte 0xFFE80000

	thumb_func_start sub_08061F58
sub_08061F58: @ 0x08061F58
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _08061F88 @ =0x020307F0
	adds r0, #0x57
	ldrb r0, [r0]
	cmp r0, #8
	bne _08061F8C
	adds r0, r4, #0
	cmp r4, #0
	bge _08061F70
	adds r0, r4, #3
_08061F70:
	asrs r0, r0, #2
	lsls r0, r0, #2
	subs r0, r4, r0
	lsls r0, r0, #5
	adds r0, #0x48
	strh r0, [r5]
	adds r0, r4, #0
	cmp r4, #0
	bge _08061F84
	adds r0, r4, #3
_08061F84:
	asrs r0, r0, #2
	b _08061FA8
	.align 2, 0
_08061F88: .4byte 0x020307F0
_08061F8C:
	adds r0, r4, #0
	movs r1, #5
	bl __modsi3
	movs r1, #2
	subs r1, r1, r0
	lsls r1, r1, #5
	movs r0, #0x78
	subs r0, r0, r1
	strh r0, [r5]
	adds r0, r4, #0
	movs r1, #5
	bl __divsi3
_08061FA8:
	movs r1, #1
	subs r1, r1, r0
	lsls r1, r1, #5
	movs r0, #0x50
	subs r0, r0, r1
	strh r0, [r5, #2]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08061FBC
sub_08061FBC: @ 0x08061FBC
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r7, r0, #0
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	ldr r0, _0806201C @ =0x020307F0
	str r7, [r0]
	adds r0, #0x57
	strb r6, [r0]
	movs r5, #0
	cmp r5, r6
	blt _08061FD6
	b _080620EC
_08061FD6:
	adds r0, r5, #0
	mov r1, sp
	bl sub_08061F58
	mov r0, sp
	ldrh r0, [r0]
	adds r0, #0xf0
	mov r1, sp
	strh r0, [r1]
	ldr r2, _0806201C @ =0x020307F0
	adds r0, r2, #0
	adds r0, #0x59
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r1, r0, r5
	adds r0, r7, r1
	ldrb r1, [r0]
	adds r4, r1, #0
	adds r2, #0x56
	ldrb r0, [r2]
	cmp r0, #2
	bne _080620A0
	adds r0, r1, #0
	subs r0, #0x65
	cmp r0, #0x16
	bhi _080620B8
	lsls r0, r0, #2
	ldr r1, _08062020 @ =_08062024
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0806201C: .4byte 0x020307F0
_08062020: .4byte _08062024
_08062024: @ jump table
	.4byte _08062080 @ case 0
	.4byte _08062084 @ case 1
	.4byte _08062088 @ case 2
	.4byte _0806208C @ case 3
	.4byte _08062090 @ case 4
	.4byte _08062094 @ case 5
	.4byte _08062098 @ case 6
	.4byte _080620B8 @ case 7
	.4byte _080620B8 @ case 8
	.4byte _080620B8 @ case 9
	.4byte _080620B8 @ case 10
	.4byte _080620B8 @ case 11
	.4byte _080620B8 @ case 12
	.4byte _080620B8 @ case 13
	.4byte _080620B8 @ case 14
	.4byte _080620B8 @ case 15
	.4byte _080620B8 @ case 16
	.4byte _080620B8 @ case 17
	.4byte _080620B8 @ case 18
	.4byte _080620B8 @ case 19
	.4byte _080620B8 @ case 20
	.4byte _080620B8 @ case 21
	.4byte _0806209C @ case 22
_08062080:
	movs r3, #2
	b _080620BA
_08062084:
	movs r3, #3
	b _080620BA
_08062088:
	movs r3, #4
	b _080620BA
_0806208C:
	movs r3, #5
	b _080620BA
_08062090:
	movs r3, #6
	b _080620BA
_08062094:
	movs r3, #7
	b _080620BA
_08062098:
	movs r3, #8
	b _080620BA
_0806209C:
	movs r3, #1
	b _080620BA
_080620A0:
	adds r0, r4, #0
	bl sub_08001A00
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080620B8
	adds r0, r4, #0
	bl sub_08001ADC
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	b _080620BA
_080620B8:
	movs r3, #0
_080620BA:
	mov r0, sp
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r4, #2
	ldrsh r2, [r0, r4]
	adds r0, r3, #0
	bl sub_08061EB8
	adds r4, r0, #0
	cmp r5, #9
	ble _080620D6
	movs r1, #0
	bl sub_08009A34
_080620D6:
	ldr r0, _0806217C @ =0x020307F0
	lsls r1, r5, #2
	adds r0, #4
	adds r1, r1, r0
	str r4, [r1]
	adds r5, #1
	cmp r5, #0x13
	bgt _080620EC
	cmp r5, r6
	bge _080620EC
	b _08061FD6
_080620EC:
	subs r0, r6, #1
	movs r1, #0xa
	bl __divsi3
	cmp r0, #0
	beq _080620FC
	bl sub_08061208
_080620FC:
	ldr r2, _0806217C @ =0x020307F0
	adds r7, r2, #0
	adds r7, #0x57
	ldrb r0, [r7]
	movs r6, #5
	cmp r0, #8
	bne _0806210C
	movs r6, #4
_0806210C:
	adds r0, r2, #0
	adds r0, #0x5b
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r0, #0
	muls r1, r6, r1
	adds r0, r2, #0
	adds r0, #0x5a
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r5, r1, r0
	mov r4, sp
	adds r0, r5, #0
	mov r1, sp
	bl sub_08061F58
	mov r0, sp
	ldrh r0, [r0]
	subs r0, #0xc
	mov r1, sp
	strh r0, [r1]
	ldrh r0, [r4, #2]
	subs r0, #0x18
	strh r0, [r4, #2]
	mov r0, sp
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r0, #2
	ldrsh r2, [r4, r0]
	movs r0, #0
	bl sub_0806104C
	mov r0, sp
	movs r1, #0
	ldrsh r0, [r0, r1]
	movs r2, #2
	ldrsh r1, [r4, r2]
	bl sub_08061170
	ldrb r0, [r7]
	movs r1, #0xa
	cmp r0, #8
	bne _08062168
	movs r1, #8
_08062168:
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r0, #0
	bl sub_08062228
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806217C: .4byte 0x020307F0

	thumb_func_start sub_08062180
sub_08062180: @ 0x08062180
	push {r4, r5, r6, lr}
	ldr r4, _080621C4 @ =0x020307F0
	adds r0, r4, #0
	adds r0, #0x57
	ldrb r0, [r0]
	movs r1, #0xa
	cmp r0, #8
	bne _08062192
	movs r1, #8
_08062192:
	movs r0, #0
	bl sub_08062228
	adds r4, #4
	movs r6, #0
	movs r5, #0x13
_0806219E:
	ldr r0, [r4]
	cmp r0, #0
	beq _080621AA
	bl sub_08009A00
	str r6, [r4]
_080621AA:
	adds r4, #4
	subs r5, #1
	cmp r5, #0
	bge _0806219E
	bl sub_0806124C
	bl sub_08061108
	bl sub_080611A8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080621C4: .4byte 0x020307F0

	thumb_func_start sub_080621C8
sub_080621C8: @ 0x080621C8
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	ldr r0, _080621F0 @ =0x020307F0
	adds r5, r0, #4
	movs r4, #9
_080621D4:
	ldr r0, [r5]
	cmp r0, #0
	beq _080621E0
	adds r1, r6, #0
	bl sub_08009A34
_080621E0:
	adds r5, #4
	subs r4, #1
	cmp r4, #0
	bge _080621D4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080621F0: .4byte 0x020307F0

	thumb_func_start sub_080621F4
sub_080621F4: @ 0x080621F4
	push {r4, lr}
	adds r3, r0, #0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	cmp r3, #0
	beq _0806221A
	ldr r1, _08062220 @ =0x08090038
	ldr r0, _08062224 @ =0x020307F0
	adds r0, #0x56
	ldrb r0, [r0]
	lsls r0, r0, #4
	adds r1, #8
	adds r0, r0, r1
	ldr r2, [r0]
	adds r0, r3, #0
	movs r1, #0
	adds r3, r4, #0
	bl sub_08009ACC
_0806221A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08062220: .4byte 0x08090038
_08062224: .4byte 0x020307F0

	thumb_func_start sub_08062228
sub_08062228: @ 0x08062228
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r8, r1
	ldr r4, _0806228C @ =0x020307F0
	adds r0, r4, #0
	adds r0, #0x57
	ldrb r0, [r0]
	movs r6, #5
	cmp r0, #8
	bne _0806224A
	movs r6, #4
_0806224A:
	movs r0, #0
	bl sub_08061278
	movs r0, #0
	bl sub_08061124
	movs r0, #0
	bl sub_080611C4
	movs r5, #0
	cmp r5, r8
	bge _080622D2
	adds r4, #4
	mov sb, r4
_08062266:
	ldr r0, _08062290 @ =sub_08061E54
	movs r1, #0x90
	movs r2, #0
	bl sub_08007968
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl sub_08007BBC
	adds r4, r0, #0
	strb r5, [r4]
	cmp r7, #0
	bne _08062294
	adds r0, r5, #0
	adds r1, r6, #0
	bl __modsi3
	b _0806229E
	.align 2, 0
_0806228C: .4byte 0x020307F0
_08062290: .4byte sub_08061E54
_08062294:
	adds r0, r5, #0
	adds r1, r6, #0
	bl __modsi3
	subs r0, r6, r0
_0806229E:
	lsls r0, r0, #2
	strb r0, [r4, #1]
	cmp r5, #9
	ble _080622AC
	ldrb r0, [r4, #1]
	adds r0, #0xf
	strb r0, [r4, #1]
_080622AC:
	strb r7, [r4, #2]
	movs r0, #0xf0
	strh r0, [r4, #4]
	mov r1, sb
	ldm r1!, {r0}
	ldrh r0, [r0, #6]
	strh r0, [r4, #8]
	mov sb, r1
	subs r1, #4
	ldm r1!, {r0}
	ldrh r0, [r0, #8]
	strh r0, [r4, #0xa]
	ldr r1, _080622F4 @ =0x02033790
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	adds r5, #1
	cmp r5, r8
	blt _08062266
_080622D2:
	bl sub_08061C0C
	movs r0, #1
	bl sub_08061278
	movs r0, #1
	bl sub_08061124
	movs r0, #1
	bl sub_080611C4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080622F4: .4byte 0x02033790

	thumb_func_start sub_080622F8
sub_080622F8: @ 0x080622F8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #4]
	ldr r0, _08062370 @ =0x020307F0
	ldr r0, [r0]
	str r0, [sp, #8]
	movs r0, #0
	bl sub_08061124
	movs r0, #0
	bl sub_080611C4
	movs r0, #0
	bl sub_08061278
	ldr r1, [sp]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x18
	str r0, [sp]
	ldr r4, _08062374 @ =0x0000FF10
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _0806233E
	movs r4, #0xf0
_0806233E:
	movs r1, #0
	mov sl, r1
	movs r0, #0xa
	mov sb, r0
	lsls r4, r4, #0x10
	str r4, [sp, #0xc]
_0806234A:
	ldr r0, [sp]
	add r0, sl
	ldr r1, [sp, #8]
	adds r0, r1, r0
	ldrb r4, [r0]
	ldr r0, _08062370 @ =0x020307F0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, #2
	bne _080623F8
	adds r0, r4, #0
	subs r0, #0x65
	cmp r0, #0x16
	bhi _08062410
	lsls r0, r0, #2
	ldr r1, _08062378 @ =_0806237C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08062370: .4byte 0x020307F0
_08062374: .4byte 0x0000FF10
_08062378: .4byte _0806237C
_0806237C: @ jump table
	.4byte _080623D8 @ case 0
	.4byte _080623DC @ case 1
	.4byte _080623E0 @ case 2
	.4byte _080623E4 @ case 3
	.4byte _080623E8 @ case 4
	.4byte _080623EC @ case 5
	.4byte _080623F0 @ case 6
	.4byte _08062410 @ case 7
	.4byte _08062410 @ case 8
	.4byte _08062410 @ case 9
	.4byte _08062410 @ case 10
	.4byte _08062410 @ case 11
	.4byte _08062410 @ case 12
	.4byte _08062410 @ case 13
	.4byte _08062410 @ case 14
	.4byte _08062410 @ case 15
	.4byte _08062410 @ case 16
	.4byte _08062410 @ case 17
	.4byte _08062410 @ case 18
	.4byte _08062410 @ case 19
	.4byte _08062410 @ case 20
	.4byte _08062410 @ case 21
	.4byte _080623F4 @ case 22
_080623D8:
	movs r6, #2
	b _08062412
_080623DC:
	movs r6, #3
	b _08062412
_080623E0:
	movs r6, #4
	b _08062412
_080623E4:
	movs r6, #5
	b _08062412
_080623E8:
	movs r6, #6
	b _08062412
_080623EC:
	movs r6, #7
	b _08062412
_080623F0:
	movs r6, #8
	b _08062412
_080623F4:
	movs r6, #1
	b _08062412
_080623F8:
	adds r0, r4, #0
	bl sub_08001A00
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08062410
	adds r0, r4, #0
	bl sub_08001ADC
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	b _08062412
_08062410:
	movs r6, #0
_08062412:
	ldr r5, _080624E8 @ =0x020307F0
	mov r1, sb
	lsls r0, r1, #2
	adds r1, r5, #4
	adds r0, r0, r1
	ldr r0, [r0]
	mov r8, r0
	ldr r0, [sp, #0xc]
	asrs r4, r0, #0x10
	adds r4, #0x78
	mov r0, sl
	movs r1, #5
	bl __modsi3
	movs r1, #2
	subs r1, r1, r0
	lsls r1, r1, #5
	subs r4, r4, r1
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r0, _080624EC @ =0xFFFF0000
	ands r7, r0
	orrs r7, r4
	mov r0, sl
	movs r1, #5
	bl __divsi3
	movs r1, #1
	subs r1, r1, r0
	lsls r1, r1, #5
	movs r2, #0x50
	subs r2, r2, r1
	lsls r2, r2, #0x10
	ldr r0, _080624F0 @ =0x0000FFFF
	ands r7, r0
	orrs r7, r2
	ldr r1, _080624F4 @ =0x08090038
	adds r5, #0x56
	ldrb r0, [r5]
	lsls r0, r0, #4
	adds r1, #8
	adds r0, r0, r1
	ldr r2, [r0]
	mov r0, r8
	movs r1, #0
	adds r3, r6, #0
	bl sub_08009ACC
	adds r1, r7, #0
	subs r1, #0xc
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	asrs r2, r7, #0x10
	subs r2, #0x18
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	mov r0, r8
	bl sub_08009A70
	mov r0, r8
	movs r1, #1
	bl sub_08009A34
	movs r1, #1
	add sb, r1
	add sl, r1
	mov r0, sb
	cmp r0, #0x13
	bgt _0806249E
	b _0806234A
_0806249E:
	ldr r0, [sp, #4]
	movs r1, #0x14
	bl sub_08062228
	movs r1, #0
	mov sb, r1
_080624AA:
	ldr r2, _080624E8 @ =0x020307F0
	mov r1, sb
	lsls r0, r1, #2
	adds r1, r2, #4
	adds r0, r0, r1
	ldr r0, [r0]
	mov r8, r0
	mov r0, sb
	cmp r0, #9
	ble _080624C0
	b _08062614
_080624C0:
	ldr r0, [sp]
	add r0, sb
	ldr r1, [sp, #8]
	adds r0, r1, r0
	ldrb r4, [r0]
	adds r0, r2, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, #2
	bne _08062578
	adds r0, r4, #0
	subs r0, #0x65
	cmp r0, #0x16
	bhi _08062590
	lsls r0, r0, #2
	ldr r1, _080624F8 @ =_080624FC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080624E8: .4byte 0x020307F0
_080624EC: .4byte 0xFFFF0000
_080624F0: .4byte 0x0000FFFF
_080624F4: .4byte 0x08090038
_080624F8: .4byte _080624FC
_080624FC: @ jump table
	.4byte _08062558 @ case 0
	.4byte _0806255C @ case 1
	.4byte _08062560 @ case 2
	.4byte _08062564 @ case 3
	.4byte _08062568 @ case 4
	.4byte _0806256C @ case 5
	.4byte _08062570 @ case 6
	.4byte _08062590 @ case 7
	.4byte _08062590 @ case 8
	.4byte _08062590 @ case 9
	.4byte _08062590 @ case 10
	.4byte _08062590 @ case 11
	.4byte _08062590 @ case 12
	.4byte _08062590 @ case 13
	.4byte _08062590 @ case 14
	.4byte _08062590 @ case 15
	.4byte _08062590 @ case 16
	.4byte _08062590 @ case 17
	.4byte _08062590 @ case 18
	.4byte _08062590 @ case 19
	.4byte _08062590 @ case 20
	.4byte _08062590 @ case 21
	.4byte _08062574 @ case 22
_08062558:
	movs r6, #2
	b _08062592
_0806255C:
	movs r6, #3
	b _08062592
_08062560:
	movs r6, #4
	b _08062592
_08062564:
	movs r6, #5
	b _08062592
_08062568:
	movs r6, #6
	b _08062592
_0806256C:
	movs r6, #7
	b _08062592
_08062570:
	movs r6, #8
	b _08062592
_08062574:
	movs r6, #1
	b _08062592
_08062578:
	adds r0, r4, #0
	bl sub_08001A00
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08062590
	adds r0, r4, #0
	bl sub_08001ADC
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	b _08062592
_08062590:
	movs r6, #0
_08062592:
	mov r0, sb
	movs r1, #5
	bl __modsi3
	movs r1, #2
	subs r1, r1, r0
	lsls r1, r1, #5
	movs r0, #0x78
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _08062604 @ =0xFFFF0000
	ands r7, r1
	orrs r7, r0
	mov r0, sb
	movs r1, #5
	bl __divsi3
	movs r1, #1
	subs r1, r1, r0
	lsls r1, r1, #5
	movs r2, #0x50
	subs r2, r2, r1
	lsls r2, r2, #0x10
	ldr r0, _08062608 @ =0x0000FFFF
	ands r7, r0
	orrs r7, r2
	ldr r1, _0806260C @ =0x08090038
	ldr r0, _08062610 @ =0x020307F0
	adds r0, #0x56
	ldrb r0, [r0]
	lsls r0, r0, #4
	adds r1, #8
	adds r0, r0, r1
	ldr r2, [r0]
	mov r0, r8
	movs r1, #0
	adds r3, r6, #0
	bl sub_08009ACC
	adds r1, r7, #0
	subs r1, #0xc
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	asrs r2, r7, #0x10
	subs r2, #0x18
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	mov r0, r8
	bl sub_08009A70
	mov r0, r8
	movs r1, #1
	bl sub_08009A34
	b _0806261C
	.align 2, 0
_08062604: .4byte 0xFFFF0000
_08062608: .4byte 0x0000FFFF
_0806260C: .4byte 0x08090038
_08062610: .4byte 0x020307F0
_08062614:
	mov r0, r8
	movs r1, #0
	bl sub_08009A34
_0806261C:
	movs r0, #1
	add sb, r0
	mov r1, sb
	cmp r1, #0x13
	bgt _08062628
	b _080624AA
_08062628:
	bl sub_08061124
	movs r0, #1
	bl sub_080611C4
	movs r0, #1
	bl sub_08061278
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08062648
sub_08062648: @ 0x08062648
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _080626D0 @ =0x020307F0
	adds r5, r0, #0
	adds r5, #0x59
	ldrb r4, [r5]
	adds r7, r4, #0
	adds r1, r0, #0
	adds r1, #0x5a
	ldrb r1, [r1]
	mov sb, r1
	adds r1, r0, #0
	adds r1, #0x5b
	ldrb r1, [r1]
	mov sl, r1
	adds r2, r0, #0
	adds r2, #0x57
	ldrb r0, [r2]
	movs r1, #5
	mov r8, r1
	cmp r0, #8
	bne _08062680
	movs r0, #4
	mov r8, r0
_08062680:
	ldr r0, _080626D4 @ =0x030024B0
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0
	beq _080626D8
	subs r0, r4, #1
	strb r0, [r5]
	lsls r0, r0, #0x18
	cmp r0, #0
	bge _080626B2
	ldrb r0, [r2]
	movs r1, #0xa
	bl __udivsi3
	subs r0, #1
	strb r0, [r5]
	lsls r0, r0, #0x18
	cmp r0, #0
	bge _080626B2
	movs r0, #0
	strb r0, [r5]
_080626B2:
	ldr r0, _080626D0 @ =0x020307F0
	adds r4, r0, #0
	adds r4, #0x59
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r7, r0
	beq _08062712
	movs r0, #0xd4
	bl m4aSongNumStart
	ldrb r0, [r4]
	movs r1, #1
	bl sub_080622F8
	b _08062712
	.align 2, 0
_080626D0: .4byte 0x020307F0
_080626D4: .4byte 0x030024B0
_080626D8:
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08062712
	adds r4, #1
	strb r4, [r5]
	lsls r4, r4, #0x18
	asrs r4, r4, #0x18
	ldrb r0, [r2]
	movs r1, #0xa
	bl __udivsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r4, r0
	blt _080626FC
	strb r6, [r5]
_080626FC:
	movs r0, #0
	ldrsb r0, [r5, r0]
	cmp r7, r0
	beq _08062712
	movs r0, #0xd4
	bl m4aSongNumStart
	ldrb r0, [r5]
	movs r1, #0
	bl sub_080622F8
_08062712:
	ldr r0, _08062728 @ =0x030024B0
	ldrh r1, [r0, #4]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08062730
	ldr r0, _0806272C @ =0x020307F0
	adds r0, #0x5b
	movs r1, #0
	strb r1, [r0]
	b _08062792
	.align 2, 0
_08062728: .4byte 0x030024B0
_0806272C: .4byte 0x020307F0
_08062730:
	movs r0, #0x80
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	beq _0806274C
	ldr r0, _08062748 @ =0x020307F0
	adds r0, #0x5b
	movs r1, #1
	strb r1, [r0]
	b _08062792
	.align 2, 0
_08062748: .4byte 0x020307F0
_0806274C:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08062770
	ldr r0, _0806276C @ =0x020307F0
	adds r1, r0, #0
	adds r1, #0x5a
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bge _08062792
	strb r2, [r1]
	b _08062792
	.align 2, 0
_0806276C: .4byte 0x020307F0
_08062770:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08062792
	ldr r0, _080627F4 @ =0x020307F0
	adds r1, r0, #0
	adds r1, #0x5a
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, r8
	blt _08062792
	mov r0, r8
	subs r0, #1
	strb r0, [r1]
_08062792:
	ldr r4, _080627F4 @ =0x020307F0
	adds r6, r4, #0
	adds r6, #0x5b
	movs r0, #0
	ldrsb r0, [r6, r0]
	mov r1, r8
	muls r1, r0, r1
	adds r4, #0x5a
	movs r0, #0
	ldrsb r0, [r4, r0]
	adds r5, r1, r0
	adds r0, r5, #0
	mov r1, sp
	bl sub_08061F58
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	bl sub_080627F8
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp sb, r0
	bne _080627C8
	movs r0, #0
	ldrsb r0, [r6, r0]
	cmp sl, r0
	beq _080627CE
_080627C8:
	movs r0, #0xcb
	bl m4aSongNumStart
_080627CE:
	ldr r0, _080627F4 @ =0x020307F0
	adds r0, #0x59
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, r0, r5
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080627F4: .4byte 0x020307F0

	thumb_func_start sub_080627F8
sub_080627F8: @ 0x080627F8
	push {r4, lr}
	sub sp, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0xa
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r4, sp
	mov r1, sp
	bl sub_08061F58
	mov r0, sp
	ldrh r0, [r0]
	subs r0, #0xc
	mov r1, sp
	strh r0, [r1]
	ldrh r0, [r4, #2]
	subs r0, #0x18
	strh r0, [r4, #2]
	mov r0, sp
	movs r1, #0
	ldrsh r0, [r0, r1]
	movs r2, #2
	ldrsh r1, [r4, r2]
	bl sub_08061140
	mov r0, sp
	movs r1, #0
	ldrsh r0, [r0, r1]
	movs r2, #2
	ldrsh r1, [r4, r2]
	bl sub_080611E0
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08062848
sub_08062848: @ 0x08062848
	push {r4, lr}
	ldr r2, _08062888 @ =0x020307F0
	adds r0, r2, #0
	adds r0, #0x57
	ldrb r0, [r0]
	movs r3, #5
	cmp r0, #8
	bne _0806285A
	movs r3, #4
_0806285A:
	adds r0, r2, #0
	adds r0, #0x59
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r1, r2, #0
	adds r1, #0x5b
	ldrb r1, [r1]
	adds r4, r1, #0
	muls r4, r3, r4
	adds r1, r4, #0
	adds r2, #0x5a
	adds r0, r0, r1
	ldrb r2, [r2]
	adds r0, r0, r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08062888: .4byte 0x020307F0

	thumb_func_start sub_0806288C
sub_0806288C: @ 0x0806288C
	ldr r0, _0806289C @ =0x020307F0
	adds r2, r0, #0
	adds r2, #0x5a
	movs r1, #0
	strb r1, [r2]
	adds r0, #0x5b
	strb r1, [r0]
	bx lr
	.align 2, 0
_0806289C: .4byte 0x020307F0

	thumb_func_start sub_080628A0
sub_080628A0: @ 0x080628A0
	push {lr}
	sub sp, #4
	mov r0, sp
	movs r1, #2
	movs r2, #0
	movs r3, #0
	bl sub_0800A16C
	mov r0, sp
	ldrb r2, [r0]
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _080628C4
	ldr r0, _080628D4 @ =0x03004400
	strb r2, [r0, #0xe]
_080628C4:
	mov r0, sp
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	add sp, #4
	pop {r1}
	bx r1
	.align 2, 0
_080628D4: .4byte 0x03004400

	thumb_func_start sub_080628D8
sub_080628D8: @ 0x080628D8
	push {r4, lr}
	sub sp, #8
	ldr r4, _08062910 @ =0x03004400
	ldrb r0, [r4, #0xe]
	str r0, [sp]
	add r0, sp, #4
	movs r1, #2
	movs r2, #0
	movs r3, #0
	bl sub_0800A194
	add r0, sp, #4
	ldrb r2, [r0]
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08062900
	strb r2, [r4, #0xf]
_08062900:
	add r0, sp, #4
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	add sp, #8
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08062910: .4byte 0x03004400

	thumb_func_start sub_08062914
sub_08062914: @ 0x08062914
	push {r4, r5, r6, r7, lr}
	ldr r4, _08062944 @ =0x080900C4
	adds r0, r4, #0
	movs r1, #0x32
	bl sub_08061FBC
	bl sub_080612A4
	movs r0, #0
	bl sub_080613CC
	movs r0, #0
	bl sub_080059E4
	ldr r0, _08062948 @ =0x0038000D
	bl sub_080062D0
	bl sub_08062848
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	movs r6, #0xff
	adds r7, r4, #0
	b _08062A52
	.align 2, 0
_08062944: .4byte 0x080900C4
_08062948: .4byte 0x0038000D
_0806294C:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080629CC
	adds r0, r4, #0
	bl sub_08001A00
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08062974
	movs r0, #0xd2
	bl m4aSongNumStart
	ldr r0, _08062970 @ =0x00380017
	bl sub_080062D0
	b _080629C6
	.align 2, 0
_08062970: .4byte 0x00380017
_08062974:
	movs r0, #0xcc
	bl m4aSongNumStart
	movs r0, #0
	bl sub_08061124
	movs r0, #5
	adds r1, r4, #0
	bl sub_08005BE0
	ldr r0, _080629B4 @ =0x0038000E
	bl sub_080062D0
	ldr r0, _080629B8 @ =0x0038000F
	bl sub_0800648C
	bl sub_080064F8
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080629C0
	adds r0, r4, #0
	bl sub_0806083C
	ldr r0, _080629BC @ =0x03004400
	strb r4, [r0, #0xd]
	movs r5, #0
	movs r0, #8
	bl sub_08002B98
	b _08062A70
	.align 2, 0
_080629B4: .4byte 0x0038000E
_080629B8: .4byte 0x0038000F
_080629BC: .4byte 0x03004400
_080629C0:
	movs r0, #1
	bl sub_08061124
_080629C6:
	ldr r0, _080629FC @ =0x0038000D
	bl sub_080062D0
_080629CC:
	bl sub_08062648
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r0, r7
	ldrb r4, [r1]
	lsls r1, r6, #0x18
	asrs r1, r1, #0x18
	cmp r1, r0
	beq _08062A4C
	adds r0, r4, #0
	bl sub_08001A00
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08062A00
	movs r0, #0xff
	bl sub_0806083C
_080629F4:
	bl sub_08060B70
	b _08062A4A
	.align 2, 0
_080629FC: .4byte 0x0038000D
_08062A00:
	adds r0, r4, #0
	bl sub_0806083C
	adds r0, r4, #0
	bl sub_08001B00
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08062A24
	cmp r0, #1
	bgt _08062A1E
	cmp r0, #0
	beq _080629F4
	b _08062A4A
_08062A1E:
	cmp r0, #2
	beq _08062A38
	b _08062A4A
_08062A24:
	adds r0, r4, #0
	bl sub_08001B28
	adds r1, r0, #0
	movs r0, #1
	movs r2, #0x4c
	movs r3, #0x58
	bl sub_080609A4
	b _08062A4A
_08062A38:
	adds r0, r4, #0
	bl sub_08001B28
	adds r1, r0, #0
	movs r0, #2
	movs r2, #0x4c
	movs r3, #0x58
	bl sub_080609A4
_08062A4A:
	adds r6, r5, #0
_08062A4C:
	movs r0, #1
	bl sub_08002B98
_08062A52:
	lsls r0, r5, #0x18
	asrs r0, r0, #0x18
	adds r0, r0, r7
	ldrb r4, [r0]
	ldr r0, _08062A9C @ =0x030024B0
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08062A68
	b _0806294C
_08062A68:
	movs r0, #0xce
	bl m4aSongNumStart
	movs r5, #0xff
_08062A70:
	bl sub_08060B70
	bl sub_08005A2C
	lsls r0, r5, #0x18
	asrs r4, r0, #0x18
	movs r0, #1
	rsbs r0, r0, #0
	cmp r4, r0
	bne _08062A8C
	bl sub_08060950
	bl sub_080612E4
_08062A8C:
	bl sub_08061490
	bl sub_08062180
	adds r0, r4, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08062A9C: .4byte 0x030024B0

	thumb_func_start sub_08062AA0
sub_08062AA0: @ 0x08062AA0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	movs r6, #0x1e
	mov r8, r6
	ldr r0, _08062AF0 @ =0xFFFF0000
	ands r4, r0
	movs r0, #0xa6
	lsls r0, r0, #1
	orrs r4, r0
	ldr r0, _08062AF4 @ =0x0000FFFF
	ands r4, r0
	movs r0, #0xc0
	lsls r0, r0, #0xe
	orrs r4, r0
	movs r0, #0
	bl sub_08061648
	movs r0, #0x1e
	bl sub_080616D8
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	lsrs r1, r4, #0x10
	bl sub_08061750
	bl sub_080617F0
	movs r0, #0
	bl sub_080613CC
	movs r0, #0
	bl sub_080059E4
	ldr r0, _08062AF8 @ =0x00380013
	bl sub_080062D0
	ldr r7, _08062AFC @ =0x030024B0
	b _08062B76
	.align 2, 0
_08062AF0: .4byte 0xFFFF0000
_08062AF4: .4byte 0x0000FFFF
_08062AF8: .4byte 0x00380013
_08062AFC: .4byte 0x030024B0
_08062B00:
	ldrh r1, [r7, #4]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08062B12
	lsls r0, r6, #0x18
	movs r1, #0x80
	lsls r1, r1, #0x11
	b _08062B40
_08062B12:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08062B22
	lsls r0, r6, #0x18
	movs r1, #0xff
	lsls r1, r1, #0x18
	b _08062B40
_08062B22:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08062B32
	lsls r0, r6, #0x18
	movs r1, #0xa0
	lsls r1, r1, #0x14
	b _08062B40
_08062B32:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08062B44
	lsls r0, r6, #0x18
	movs r1, #0xf6
	lsls r1, r1, #0x18
_08062B40:
	adds r0, r0, r1
	lsrs r6, r0, #0x18
_08062B44:
	lsls r0, r6, #0x18
	cmp r0, #0
	bgt _08062B4C
	movs r6, #1
_08062B4C:
	lsls r0, r6, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x62
	ble _08062B56
	movs r6, #0x63
_08062B56:
	lsls r4, r6, #0x18
	lsrs r5, r4, #0x18
	adds r0, r5, #0
	bl sub_080616D8
	mov r1, r8
	lsls r0, r1, #0x18
	cmp r0, r4
	beq _08062B70
	movs r0, #0xcb
	bl m4aSongNumStart
	mov r8, r5
_08062B70:
	movs r0, #1
	bl sub_08002B98
_08062B76:
	ldrh r1, [r7]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08062B8A
	movs r0, #0xce
	bl m4aSongNumStart
	movs r6, #0
	b _08062B98
_08062B8A:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08062B00
	movs r0, #0xcd
	bl m4aSongNumStart
_08062B98:
	bl sub_08005A2C
	bl sub_08061490
	bl sub_080617F0
	adds r0, r6, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08062BB0
sub_08062BB0: @ 0x08062BB0
	push {r4, r5, lr}
	sub sp, #4
	movs r5, #0
	ldr r0, _08062BD8 @ =0x03004400
	ldrb r0, [r0, #0xd]
	bl sub_080019D8
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #1
	bne _08062BDC
	bl sub_080628D8
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _08062BEC
	b _08062BF6
	.align 2, 0
_08062BD8: .4byte 0x03004400
_08062BDC:
	cmp r4, #2
	bne _08062BF6
	bl sub_08062AA0
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0
	bne _08062BF6
_08062BEC:
	bl sub_08061E08
	movs r0, #1
	rsbs r0, r0, #0
	b _08062C6A
_08062BF6:
	cmp r4, #1
	beq _08062C20
	cmp r4, #1
	bgt _08062C04
	cmp r4, #0
	beq _08062C0E
	b _08062C5C
_08062C04:
	cmp r4, #2
	beq _08062C38
	cmp r4, #3
	beq _08062C4C
	b _08062C5C
_08062C0E:
	ldr r1, _08062C1C @ =0x03004400
	ldrb r0, [r1, #0xd]
	ldrb r1, [r1, #0xe]
	movs r2, #1
	bl sub_08001BA8
	b _08062C5C
	.align 2, 0
_08062C1C: .4byte 0x03004400
_08062C20:
	ldr r2, _08062C34 @ =0x03004400
	ldrb r0, [r2, #0xd]
	ldrb r1, [r2, #0xe]
	ldrb r2, [r2, #0xf]
	str r4, [sp]
	movs r3, #1
	bl sub_08001CEC
	b _08062C5C
	.align 2, 0
_08062C34: .4byte 0x03004400
_08062C38:
	ldr r1, _08062C48 @ =0x03004400
	ldrb r0, [r1, #0xd]
	ldrb r1, [r1, #0xe]
	adds r2, r5, #0
	movs r3, #1
	bl sub_08001C14
	b _08062C5C
	.align 2, 0
_08062C48: .4byte 0x03004400
_08062C4C:
	ldr r1, _08062C74 @ =0x03004400
	ldrb r0, [r1, #0xd]
	ldrb r1, [r1, #0xe]
	movs r2, #0xc8
	lsls r2, r2, #2
	movs r3, #1
	bl sub_08001C84
_08062C5C:
	movs r0, #0x16
	bl sub_08001930
	movs r0, #0x11
	bl sub_08008790
	movs r0, #1
_08062C6A:
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08062C74: .4byte 0x03004400

	thumb_func_start sub_08062C78
sub_08062C78: @ 0x08062C78
	push {r4, r5, lr}
	bl sub_08060708
	ldr r0, _08062C94 @ =0x03004400
	ldrb r0, [r0, #0xa]
	cmp r0, #0x23
	beq _08062C8E
	cmp r0, #0x11
	beq _08062C8E
	cmp r0, #0x16
	bne _08062C98
_08062C8E:
	movs r5, #3
	b _08062C9A
	.align 2, 0
_08062C94: .4byte 0x03004400
_08062C98:
	movs r5, #0
_08062C9A:
	movs r0, #3
	bl sub_080607FC
	bl sub_0806097C
	bl sub_08060F7C
	ldr r0, _08062CF4 @ =0x03004400
	ldrb r0, [r0, #0xa]
	cmp r0, #0x2c
	bne _08062CB4
	bl sub_08061D7C
_08062CB4:
	movs r0, #0
	bl sub_08061DA0
	movs r0, #0xc
	bl sub_080077C4
	movs r0, #0x20
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl sub_08008AF4
	ldr r0, _08062CF8 @ =0x030024E0
	adds r0, #0x4f
	movs r1, #1
	strb r1, [r0]
	bl sub_08008D34
	movs r0, #1
	bl sub_08005A88
	lsls r4, r5, #0x18
_08062CE0:
	asrs r0, r4, #0x18
	cmp r0, #4
	bls _08062CE8
	b _08062E16
_08062CE8:
	lsls r0, r0, #2
	ldr r1, _08062CFC @ =_08062D00
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08062CF4: .4byte 0x03004400
_08062CF8: .4byte 0x030024E0
_08062CFC: .4byte _08062D00
_08062D00: @ jump table
	.4byte _08062D14 @ case 0
	.4byte _08062D2A @ case 1
	.4byte _08062D4C @ case 2
	.4byte _08062DEC @ case 3
	.4byte _08062E02 @ case 4
_08062D14:
	movs r0, #0
	bl sub_080059E4
	movs r0, #0xe0
	lsls r0, r0, #0xe
	bl sub_080062D0
	bl sub_08005A2C
	movs r5, #1
	b _08062E16
_08062D2A:
	bl sub_080628A0
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _08062D44
	movs r0, #0x2c
	bl sub_08008790
	movs r5, #0xff
	b _08062E16
_08062D44:
	bl sub_08061E08
	movs r5, #2
	b _08062E16
_08062D4C:
	movs r0, #0
	bl sub_080059E4
	ldr r0, _08062D80 @ =0x03004400
	ldrb r1, [r0, #0xe]
	movs r0, #8
	bl sub_08005BE0
	ldr r0, _08062D84 @ =0x00380005
	bl sub_080062D0
	ldr r0, _08062D88 @ =0x00380006
	bl sub_080062D0
	ldr r0, _08062D8C @ =0x00380007
	bl sub_0800648C
	bl sub_080064F8
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08062DC2
	ldr r0, _08062D90 @ =0x00380008
	bl sub_080062D0
	b _08062D9A
	.align 2, 0
_08062D80: .4byte 0x03004400
_08062D84: .4byte 0x00380005
_08062D88: .4byte 0x00380006
_08062D8C: .4byte 0x00380007
_08062D90: .4byte 0x00380008
_08062D94:
	ldr r0, _08062DD0 @ =0x0038000B
	bl sub_080062D0
_08062D9A:
	ldr r0, _08062DD4 @ =0x00380014
	bl sub_080062D0
	ldr r0, _08062DD8 @ =0x00380015
	bl sub_080062D0
	ldr r0, _08062DDC @ =0x00380016
	bl sub_080062D0
	ldr r0, _08062DE0 @ =0x00380009
	bl sub_080062D0
	ldr r0, _08062DE4 @ =0x0038000A
	bl sub_0800648C
	bl sub_080064F8
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08062D94
_08062DC2:
	ldr r0, _08062DE8 @ =0x0038000C
	bl sub_080062D0
	bl sub_08005A2C
	b _08062E14
	.align 2, 0
_08062DD0: .4byte 0x0038000B
_08062DD4: .4byte 0x00380014
_08062DD8: .4byte 0x00380015
_08062DDC: .4byte 0x00380016
_08062DE0: .4byte 0x00380009
_08062DE4: .4byte 0x0038000A
_08062DE8: .4byte 0x0038000C
_08062DEC:
	bl sub_08062914
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #1
	rsbs r1, r1, #0
	movs r5, #4
	cmp r0, r1
	bne _08062E16
	movs r5, #1
	b _08062E16
_08062E02:
	bl sub_08062BB0
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #1
	rsbs r1, r1, #0
	movs r5, #0xff
	cmp r0, r1
	bne _08062E16
_08062E14:
	movs r5, #3
_08062E16:
	lsls r0, r5, #0x18
	asrs r2, r0, #0x18
	movs r1, #1
	rsbs r1, r1, #0
	adds r4, r0, #0
	cmp r2, r1
	beq _08062E2C
	movs r0, #1
	bl sub_08002B98
	b _08062CE0
_08062E2C:
	movs r0, #0
	movs r1, #0x20
	bl sub_080077EC
	movs r0, #0x20
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl sub_080089E8
	bl sub_08008D34
	bl sub_080612E4
	bl sub_08061E30
	bl sub_08060FA0
	bl sub_080607BC
	bl sub_08002B0C
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08062E60
sub_08062E60: @ 0x08062E60
	push {r4, r5, lr}
	sub sp, #4
	movs r4, #0
	ldr r5, _08062EA4 @ =0x06009200
_08062E68:
	movs r1, #0x2c
	cmp r4, #0xa
	beq _08062E76
	adds r1, r4, #0
	cmp r4, #0xb
	bne _08062E76
	movs r1, #0x2b
_08062E76:
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r0, #1
	str r0, [sp]
	adds r0, r5, #0
	movs r2, #2
	movs r3, #0
	bl sub_08004BB8
	adds r4, #1
	adds r5, #0x20
	cmp r4, #0xb
	ble _08062E68
	ldr r0, _08062EA8 @ =0x030024E0
	ldr r1, _08062EAC @ =0x0000FFE0
	strh r1, [r0, #0xe]
	subs r1, #0x10
	strh r1, [r0, #0x16]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08062EA4: .4byte 0x06009200
_08062EA8: .4byte 0x030024E0
_08062EAC: .4byte 0x0000FFE0

	thumb_func_start sub_08062EB0
sub_08062EB0: @ 0x08062EB0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #1
	bhi _08062ED6
	lsls r0, r4, #0x16
	movs r2, #0x80
	lsls r2, r2, #0x10
	adds r0, r0, r2
	lsrs r5, r0, #0x10
	movs r0, #0
	mov sb, r0
	lsls r0, r4, #0x19
	lsrs r0, r0, #0x18
	b _08062EDE
_08062ED6:
	movs r5, #0xd0
	movs r2, #6
	mov sb, r2
	movs r0, #5
_08062EDE:
	mov r8, r0
	adds r0, r1, #0
	bl sub_08006828
	adds r6, r0, #0
	movs r1, #0
	bl sub_080045FC
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	lsls r0, r5, #5
	ldr r1, _08062F2C @ =0x06008000
	adds r0, r0, r1
	movs r2, #2
	cmp r4, #2
	bne _08062F00
	movs r2, #3
_08062F00:
	movs r4, #1
	str r4, [sp]
	adds r1, r6, #0
	movs r3, #0
	bl sub_08004D94
	str r7, [sp]
	str r4, [sp, #4]
	movs r0, #0x1e
	adds r1, r5, #0
	mov r2, sb
	mov r3, r8
	bl sub_08004FD4
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08062F2C: .4byte 0x06008000

	thumb_func_start sub_08062F30
sub_08062F30: @ 0x08062F30
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r2, #0
	ldr r4, _08062F60 @ =0x00989680
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x12
	mov sb, r0
	ldr r0, _08062F64 @ =0x0600F01E
	add r0, sb
	mov r8, r0
	ldr r0, _08062F68 @ =0x03004400
	ldrb r0, [r0, #0xd]
	bl sub_08001B00
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08062F6C
	cmp r0, #2
	beq _08062FF8
	b _0806313A
	.align 2, 0
_08062F60: .4byte 0x00989680
_08062F64: .4byte 0x0600F01E
_08062F68: .4byte 0x03004400
_08062F6C:
	movs r1, #0
	mov sb, r1
	movs r5, #0
_08062F72:
	adds r0, r6, #0
	adds r1, r4, #0
	bl __udivsi3
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r0, r6, #0
	adds r1, r4, #0
	bl __umodsi3
	adds r6, r0, #0
	adds r0, r4, #0
	movs r1, #0xa
	bl __udivsi3
	adds r4, r0, #0
	cmp r7, #0
	beq _08062F9A
	movs r2, #1
	mov sb, r2
_08062F9A:
	mov r3, sb
	cmp r3, #0
	bne _08062FA4
	cmp r4, #0
	bne _08062F72
_08062FA4:
	adds r0, r7, #0
	adds r0, #0x90
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	movs r0, #0xe0
	lsls r0, r0, #8
	adds r1, r0, #0
	adds r0, r7, #0
	orrs r0, r1
	mov r1, r8
	strh r0, [r1]
	mov r2, r8
	adds r2, #0x40
	adds r0, r7, #0
	adds r0, #0x20
	ldr r3, _08062FF4 @ =0xFFFFE000
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	movs r0, #2
	add r8, r0
	adds r5, #1
	cmp r4, #0
	bne _08062F72
	cmp r5, #8
	ble _08062FDA
	b _0806313A
_08062FDA:
	movs r1, #0
_08062FDC:
	mov r2, r8
	strh r1, [r2]
	mov r0, r8
	adds r0, #0x40
	strh r1, [r0]
	movs r3, #2
	add r8, r3
	adds r5, #1
	cmp r5, #8
	ble _08062FDC
	b _0806313A
	.align 2, 0
_08062FF4: .4byte 0xFFFFE000
_08062FF8:
	ldr r0, _08063148 @ =0x00008C9F
	cmp r6, r0
	bls _08063000
	adds r6, r0, #0
_08063000:
	adds r0, r6, #0
	movs r1, #0x3c
	bl __umodsi3
	ldr r1, _0806314C @ =0x00000683
	muls r0, r1, r0
	movs r1, #0xfa
	lsls r1, r1, #2
	bl __udivsi3
	mov sl, r0
	cmp r0, #0x62
	bne _0806301E
	movs r0, #0x63
	mov sl, r0
_0806301E:
	movs r5, #0xe1
	lsls r5, r5, #4
	adds r0, r6, #0
	adds r1, r5, #0
	bl __udivsi3
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r0, r6, #0
	adds r1, r5, #0
	bl __umodsi3
	movs r1, #0x3c
	bl __udivsi3
	adds r5, r0, #0
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	adds r7, r4, #0
	adds r7, #0x90
	movs r1, #0xe0
	lsls r1, r1, #8
	adds r6, r1, #0
	adds r0, r7, #0
	orrs r0, r6
	mov r2, r8
	strh r0, [r2]
	ldr r1, _08063150 @ =0x0600F05E
	add r1, sb
	adds r0, r7, #0
	adds r0, #0x20
	ldr r3, _08063154 @ =0xFFFFE000
	adds r4, r3, #0
	orrs r0, r4
	strh r0, [r1]
	ldr r0, _08063158 @ =0x0600F020
	add r0, sb
	movs r7, #0x9a
	orrs r7, r6
	strh r7, [r0]
	ldr r1, _0806315C @ =0x0600F060
	add r1, sb
	movs r0, #0xba
	orrs r0, r4
	strh r0, [r1]
	ldr r1, _08063160 @ =0x0600F022
	add r1, sb
	mov r8, r1
	adds r0, r5, #0
	movs r1, #0xa
	bl __udivsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #8
	movs r2, #0x90
	lsls r2, r2, #0x10
	adds r0, r0, r2
	lsrs r7, r0, #0x10
	adds r0, r7, #0
	orrs r0, r6
	mov r3, r8
	strh r0, [r3]
	ldr r1, _08063164 @ =0x0600F062
	add r1, sb
	adds r0, r7, #0
	adds r0, #0x20
	orrs r0, r4
	strh r0, [r1]
	ldr r0, _08063168 @ =0x0600F024
	add r0, sb
	mov r8, r0
	adds r0, r5, #0
	movs r1, #0xa
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #8
	movs r1, #0x90
	lsls r1, r1, #0x10
	adds r0, r0, r1
	lsrs r7, r0, #0x10
	adds r0, r7, #0
	orrs r0, r6
	mov r2, r8
	strh r0, [r2]
	ldr r1, _0806316C @ =0x0600F064
	add r1, sb
	adds r0, r7, #0
	adds r0, #0x20
	orrs r0, r4
	strh r0, [r1]
	ldr r3, _08063170 @ =0x0600F026
	add r3, sb
	movs r7, #0x9b
	orrs r7, r6
	strh r7, [r3]
	ldr r1, _08063174 @ =0x0600F066
	add r1, sb
	movs r0, #0xbb
	orrs r0, r4
	strh r0, [r1]
	ldr r0, _08063178 @ =0x0600F028
	add r0, sb
	mov r8, r0
	mov r0, sl
	movs r1, #0xa
	bl __udivsi3
	adds r0, #0x90
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r0, r7, #0
	orrs r0, r6
	mov r1, r8
	strh r0, [r1]
	ldr r1, _0806317C @ =0x0600F068
	add r1, sb
	adds r0, r7, #0
	adds r0, #0x20
	orrs r0, r4
	strh r0, [r1]
	ldr r2, _08063180 @ =0x0600F02A
	add r2, sb
	mov r8, r2
	mov r0, sl
	movs r1, #0xa
	bl __umodsi3
	adds r0, #0x90
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r0, r7, #0
	orrs r0, r6
	mov r3, r8
	strh r0, [r3]
	ldr r1, _08063184 @ =0x0600F06A
	add r1, sb
	adds r0, r7, #0
	adds r0, #0x20
	orrs r0, r4
	strh r0, [r1]
_0806313A:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08063148: .4byte 0x00008C9F
_0806314C: .4byte 0x00000683
_08063150: .4byte 0x0600F05E
_08063154: .4byte 0xFFFFE000
_08063158: .4byte 0x0600F020
_0806315C: .4byte 0x0600F060
_08063160: .4byte 0x0600F022
_08063164: .4byte 0x0600F062
_08063168: .4byte 0x0600F024
_0806316C: .4byte 0x0600F064
_08063170: .4byte 0x0600F026
_08063174: .4byte 0x0600F066
_08063178: .4byte 0x0600F028
_0806317C: .4byte 0x0600F068
_08063180: .4byte 0x0600F02A
_08063184: .4byte 0x0600F06A

	thumb_func_start sub_08063188
sub_08063188: @ 0x08063188
	push {r4, r5, r6, lr}
	adds r6, r2, #0
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	cmp r5, #0
	bne _080631BC
	cmp r4, #1
	beq _080631A2
	cmp r4, #2
	beq _080631AC
	b _080631DC
_080631A2:
	ldr r1, _080631A8 @ =0x00380019
	b _080631AE
	.align 2, 0
_080631A8: .4byte 0x00380019
_080631AC:
	ldr r1, _080631B8 @ =0x0038001A
_080631AE:
	movs r0, #0
	bl sub_08062EB0
	b _080631DC
	.align 2, 0
_080631B8: .4byte 0x0038001A
_080631BC:
	cmp r4, #1
	beq _080631C6
	cmp r4, #2
	beq _080631D4
	b _080631DC
_080631C6:
	ldr r1, _080631D0 @ =0x0038001B
	adds r0, r5, #0
	bl sub_08062EB0
	b _080631DC
	.align 2, 0
_080631D0: .4byte 0x0038001B
_080631D4:
	ldr r1, _080631EC @ =0x0038001C
	adds r0, r5, #0
	bl sub_08062EB0
_080631DC:
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl sub_08062F30
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080631EC: .4byte 0x0038001C

	thumb_func_start sub_080631F0
sub_080631F0: @ 0x080631F0
	push {r4, r5, r6, r7, lr}
	movs r5, #0
	movs r6, #0
	movs r7, #0
	bl sub_08060708
	movs r0, #5
	bl sub_080607FC
	bl sub_08060F7C
	ldr r4, _08063304 @ =0x03004400
	ldrb r0, [r4, #0xd]
	bl sub_080019D8
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08063266
	ldrb r0, [r4, #0xd]
	bl sub_0806083C
	ldrb r0, [r4, #0xd]
	bl sub_08001B00
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	ldrb r0, [r4, #0xd]
	bl sub_08001B28
	adds r4, r0, #0
	bl sub_08001F3C
	adds r5, r0, #0
	bl sub_08062E60
	movs r0, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl sub_08063188
	movs r0, #1
	adds r1, r6, #0
	adds r2, r5, #0
	bl sub_08063188
	cmp r6, #1
	bne _08063252
	cmp r4, r5
	blo _0806325A
_08063252:
	cmp r6, #2
	bne _08063266
	cmp r4, r5
	bls _08063266
_0806325A:
	ldr r0, _08063304 @ =0x03004400
	ldrb r0, [r0, #0xd]
	adds r1, r5, #0
	bl sub_08007778
	movs r7, #1
_08063266:
	cmp r7, #0
	bne _08063270
	movs r0, #0xc
	bl sub_080077C4
_08063270:
	movs r0, #0x20
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl sub_08008AF4
	ldr r0, _08063308 @ =0x030024E0
	adds r0, #0x4f
	movs r1, #1
	strb r1, [r0]
	bl sub_08008D34
	ldr r0, _08063304 @ =0x03004400
	ldrb r0, [r0, #0xd]
	bl sub_080019D8
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080632DA
	cmp r7, #0
	beq _080632C4
	ldr r1, _0806330C @ =0x0038001D
	movs r0, #2
	bl sub_08062EB0
	movs r0, #0
	bl sub_080077D4
	movs r0, #0x71
	bl m4aSongNumStart
	movs r0, #1
	bl sub_08007828
	movs r0, #0xc
	bl sub_080077C4
	movs r0, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl sub_08063188
_080632C4:
	movs r0, #1
	bl sub_080613CC
	movs r0, #1
	bl sub_08005B8C
	movs r0, #0xcc
	bl m4aSongNumStart
	bl sub_08061490
_080632DA:
	ldr r0, _08063310 @ =0x00380018
	bl sub_0800648C
	bl sub_080064F8
	lsls r0, r0, #0x18
	asrs r4, r0, #0x18
	cmp r4, #0
	bne _08063334
	ldr r0, _08063304 @ =0x03004400
	ldrb r0, [r0, #0xd]
	bl sub_08001B00
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bne _0806331C
	ldr r1, _08063314 @ =0x02030000
	ldr r0, _08063318 @ =0x00008C9F
	str r0, [r1, #4]
	b _08063320
	.align 2, 0
_08063304: .4byte 0x03004400
_08063308: .4byte 0x030024E0
_0806330C: .4byte 0x0038001D
_08063310: .4byte 0x00380018
_08063314: .4byte 0x02030000
_08063318: .4byte 0x00008C9F
_0806331C:
	ldr r0, _08063328 @ =0x02030000
	str r4, [r0, #4]
_08063320:
	cmp r7, #0
	beq _0806332C
	movs r0, #0x11
	b _0806333A
	.align 2, 0
_08063328: .4byte 0x02030000
_0806332C:
	movs r0, #0x11
	bl sub_08008790
	b _0806334C
_08063334:
	cmp r7, #0
	beq _08063346
	movs r0, #0x14
_0806333A:
	bl sub_080072F4
	movs r0, #0x23
	bl sub_08008790
	b _0806334C
_08063346:
	movs r0, #0x14
	bl sub_08008790
_0806334C:
	ldr r0, _08063380 @ =0x03004400
	ldrb r0, [r0, #9]
	cmp r0, #0x14
	beq _0806335C
	movs r0, #0
	movs r1, #0x20
	bl sub_080077EC
_0806335C:
	movs r0, #0x20
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl sub_080089E8
	bl sub_08008D34
	bl sub_08060FA0
	bl sub_080607BC
	bl sub_08002B0C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08063380: .4byte 0x03004400

	thumb_func_start sub_08063384
sub_08063384: @ 0x08063384
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	movs r7, #0
	bl sub_080628A0
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r5, #1
	rsbs r5, r5, #0
	cmp r0, r5
	beq _080633B8
	adds r0, r6, #0
	bl sub_080019D8
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #1
	bne _080633BC
	bl sub_080628D8
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, r5
	bne _080633CC
_080633B8:
	adds r0, r5, #0
	b _08063436
_080633BC:
	cmp r4, #2
	bne _080633CC
	bl sub_08062AA0
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #0
	beq _080633B8
_080633CC:
	cmp r4, #1
	beq _080633F8
	cmp r4, #1
	bgt _080633DA
	cmp r4, #0
	beq _080633E4
	b _08063434
_080633DA:
	cmp r4, #2
	beq _08063410
	cmp r4, #3
	beq _08063424
	b _08063434
_080633E4:
	ldr r0, _080633F4 @ =0x03004400
	ldrb r1, [r0, #0xe]
	adds r0, r6, #0
	movs r2, #1
	bl sub_08001BA8
	b _08063434
	.align 2, 0
_080633F4: .4byte 0x03004400
_080633F8:
	ldr r0, _0806340C @ =0x03004400
	ldrb r1, [r0, #0xe]
	ldrb r2, [r0, #0xf]
	str r4, [sp]
	adds r0, r6, #0
	movs r3, #1
	bl sub_08001CEC
	b _08063434
	.align 2, 0
_0806340C: .4byte 0x03004400
_08063410:
	ldr r0, _08063420 @ =0x03004400
	ldrb r1, [r0, #0xe]
	adds r0, r6, #0
	adds r2, r7, #0
	movs r3, #1
	bl sub_08001C14
	b _08063434
	.align 2, 0
_08063420: .4byte 0x03004400
_08063424:
	ldr r0, _08063440 @ =0x03004400
	ldrb r1, [r0, #0xe]
	movs r2, #0xc8
	lsls r2, r2, #2
	adds r0, r6, #0
	movs r3, #1
	bl sub_08001C84
_08063434:
	movs r0, #0
_08063436:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08063440: .4byte 0x03004400

	thumb_func_start sub_08063444
sub_08063444: @ 0x08063444
	push {r4, r5, r6, r7, lr}
	movs r5, #0
	movs r7, #1
	bl sub_08060708
	movs r0, #4
	bl sub_080607FC
	bl sub_08060F7C
	bl sub_08061D7C
	movs r0, #0
	bl sub_08061DA0
	movs r0, #0xc
	bl sub_080077C4
	movs r0, #0x20
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl sub_08008AF4
	ldr r0, _080634C0 @ =0x030024E0
	adds r0, #0x4f
	strb r7, [r0]
	bl sub_08008D34
	movs r0, #1
	bl sub_08005A88
	movs r0, #0
	bl sub_080059E4
	ldr r0, _080634C4 @ =0x003E0034
	bl sub_080062D0
	ldr r0, _080634C8 @ =0x003E0035
	bl sub_080062D0
	bl sub_08005A2C
	ldr r4, _080634CC @ =0x080900C4
	adds r0, r4, #0
	movs r1, #0x32
	bl sub_08061FBC
	bl sub_080612A4
	movs r0, #0
	bl sub_080613CC
	movs r0, #0
	bl sub_080059E4
	ldr r0, _080634D0 @ =0x003E0026
	bl sub_080062D0
	adds r6, r4, #0
	b _080635EE
	.align 2, 0
_080634C0: .4byte 0x030024E0
_080634C4: .4byte 0x003E0034
_080634C8: .4byte 0x003E0035
_080634CC: .4byte 0x080900C4
_080634D0: .4byte 0x003E0026
_080634D4:
	movs r5, #1
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080635AA
	adds r0, r4, #0
	bl sub_08001A00
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080634FC
	movs r0, #0xd2
	bl m4aSongNumStart
	ldr r0, _080634F8 @ =0x003E002C
	bl sub_080062D0
	b _080635A4
	.align 2, 0
_080634F8: .4byte 0x003E002C
_080634FC:
	movs r0, #0xcc
	bl m4aSongNumStart
	movs r0, #0
	bl sub_08061124
	movs r0, #5
	adds r1, r4, #0
	bl sub_08005BE0
	ldr r0, _080635D0 @ =0x003E0027
	bl sub_080062D0
	ldr r0, _080635D4 @ =0x003E0028
	bl sub_0800648C
	bl sub_080064F8
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0806359E
	bl sub_08005A2C
	bl sub_08061490
	bl sub_08062180
	adds r0, r4, #0
	bl sub_08063384
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _08063586
	movs r0, #0
	movs r1, #0x20
	bl sub_080077EC
	movs r0, #0x20
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl sub_080089E8
	bl sub_08008D34
	adds r0, r4, #0
	movs r1, #1
	bl sub_0806E4F4
	movs r0, #4
	bl sub_080607FC
	movs r0, #0xc
	bl sub_080077C4
	movs r0, #0x20
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl sub_08008AF4
	ldr r0, _080635D8 @ =0x030024E0
	adds r0, #0x4f
	strb r5, [r0]
	bl sub_08008D34
_08063586:
	bl sub_08061E08
	adds r0, r6, #0
	movs r1, #0x32
	bl sub_08061FBC
	movs r0, #0
	bl sub_080613CC
	movs r0, #0
	bl sub_080059E4
_0806359E:
	movs r0, #1
	bl sub_08061124
_080635A4:
	ldr r0, _080635DC @ =0x003E0026
	bl sub_080062D0
_080635AA:
	bl sub_08062648
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	adds r0, r5, r6
	ldrb r4, [r0]
	cmp r7, r5
	beq _080635E8
	adds r0, r4, #0
	bl sub_08001A00
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080635E0
	movs r0, #0xff
	bl sub_0806083C
	b _080635E6
	.align 2, 0
_080635D0: .4byte 0x003E0027
_080635D4: .4byte 0x003E0028
_080635D8: .4byte 0x030024E0
_080635DC: .4byte 0x003E0026
_080635E0:
	adds r0, r4, #0
	bl sub_0806083C
_080635E6:
	adds r7, r5, #0
_080635E8:
	movs r0, #1
	bl sub_08002B98
_080635EE:
	adds r0, r5, r6
	ldrb r4, [r0]
	ldr r0, _08063650 @ =0x030024B0
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08063600
	b _080634D4
_08063600:
	movs r0, #0xce
	bl m4aSongNumStart
	bl sub_08005A2C
	bl sub_08060950
	bl sub_080612E4
	bl sub_08061490
	bl sub_08062180
	movs r0, #0
	movs r1, #0x20
	bl sub_080077EC
	movs r0, #0x20
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl sub_080089E8
	bl sub_08008D34
	bl sub_08061E30
	bl sub_08060FA0
	bl sub_080607BC
	movs r0, #0x2c
	bl sub_08008790
	bl sub_08002B0C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08063650: .4byte 0x030024B0

	thumb_func_start sub_08063654
sub_08063654: @ 0x08063654
	push {r4, r5, lr}
	bl sub_08007BD4
	adds r5, r0, #0
	ldr r1, _080636A0 @ =0x0807F240
	ldrb r4, [r5]
	lsls r0, r4, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl __floatsidf
	ldr r2, _080636A4 @ =0x3FD33333
	ldr r3, _080636A8 @ =0x33333333
	bl __muldf3
	ldr r2, _080636AC @ =0x40700000
	ldr r3, _080636B0 @ =0x00000000
	bl __adddf3
	bl __fixdfsi
	adds r2, r0, #0
	adds r4, #6
	strb r4, [r5]
	ldr r0, _080636B4 @ =0x030044C4
	ldr r0, [r0]
	ldr r0, [r0, #0x48]
	movs r1, #0x80
	lsls r1, r1, #1
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl sub_08009E84
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080636A0: .4byte 0x0807F240
_080636A4: .4byte 0x3FD33333
_080636A8: .4byte 0x33333333
_080636AC: .4byte 0x40700000
_080636B0: .4byte 0x00000000
_080636B4: .4byte 0x030044C4

	thumb_func_start sub_080636B8
sub_080636B8: @ 0x080636B8
	push {r4, r5, lr}
	sub sp, #0xc
	movs r4, #0
	str r4, [sp, #4]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	ldr r2, _0806374C @ =0x01006000
	add r0, sp, #4
	bl CpuFastSet
	ldr r0, _08063750 @ =0x030024E0
	movs r1, #0xe2
	lsls r1, r1, #5
	strh r1, [r0]
	strh r4, [r0, #2]
	strh r4, [r0, #4]
	ldr r1, _08063754 @ =0x00001E02
	strh r1, [r0, #6]
	ldr r1, _08063758 @ =0x00001F03
	strh r1, [r0, #8]
	strh r4, [r0, #0x12]
	strh r4, [r0, #0xa]
	strh r4, [r0, #0x14]
	strh r4, [r0, #0xc]
	strh r4, [r0, #0x16]
	strh r4, [r0, #0xe]
	strh r4, [r0, #0x18]
	strh r4, [r0, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	movs r0, #0
	bl sub_08006BE8
	bl sub_08003F9C
	movs r0, #0x80
	lsls r0, r0, #1
	str r0, [sp]
	movs r0, #3
	movs r1, #0x1c
	movs r2, #0xe
	movs r3, #0
	bl sub_08004028
	bl sub_080057C0
	ldr r5, _0806375C @ =0x030044C4
	movs r0, #0x58
	bl sub_08007CE8
	adds r1, r0, #0
	str r1, [r5]
	add r0, sp, #8
	strh r4, [r0]
	ldr r2, _08063760 @ =0x0100002C
	bl CpuSet
	ldr r0, _08063764 @ =sub_08063654
	movs r1, #0x90
	movs r2, #0
	bl sub_08007968
	ldr r1, [r5]
	adds r1, #0x54
	strh r0, [r1]
	bl sub_08009DDC
	ldr r1, [r5]
	str r0, [r1, #0x48]
	add sp, #0xc
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806374C: .4byte 0x01006000
_08063750: .4byte 0x030024E0
_08063754: .4byte 0x00001E02
_08063758: .4byte 0x00001F03
_0806375C: .4byte 0x030044C4
_08063760: .4byte 0x0100002C
_08063764: .4byte sub_08063654

	thumb_func_start sub_08063768
sub_08063768: @ 0x08063768
	push {r4, lr}
	ldr r4, _080637BC @ =0x030044C4
	ldr r0, [r4]
	adds r2, r0, #0
	adds r2, #0x54
	movs r0, #0
	ldrsh r1, [r2, r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0806378C
	adds r0, r1, #0
	bl sub_08007A08
	ldr r0, [r4]
	adds r0, #0x54
	ldr r1, _080637C0 @ =0x0000FFFF
	strh r1, [r0]
_0806378C:
	ldr r0, [r4]
	ldr r0, [r0, #0x48]
	cmp r0, #0
	beq _0806379E
	bl sub_08009E54
	ldr r1, [r4]
	movs r0, #0
	str r0, [r1, #0x48]
_0806379E:
	ldr r0, [r4]
	cmp r0, #0
	beq _080637AC
	bl sub_08007CF8
	movs r0, #0
	str r0, [r4]
_080637AC:
	bl sub_0800580C
	bl sub_08003FE4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080637BC: .4byte 0x030044C4
_080637C0: .4byte 0x0000FFFF

	thumb_func_start sub_080637C4
sub_080637C4: @ 0x080637C4
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	movs r0, #1
	movs r1, #0x18
	bl sub_080099E0
	adds r6, r0, #0
	ldr r0, _08063840 @ =0x030044C4
	ldr r0, [r0]
	lsls r5, r4, #1
	adds r0, #0x18
	adds r0, r0, r5
	ldrh r1, [r0]
	lsls r1, r1, #5
	ldr r0, _08063844 @ =0x06010000
	adds r1, r1, r0
	adds r0, r6, #0
	bl sub_08009A78
	adds r1, r4, #7
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r6, #0
	bl sub_08009AB4
	ldr r2, _08063848 @ =0x0809012C
	lsls r3, r4, #4
	adds r0, r2, #0
	adds r0, #0xc
	adds r0, r3, r0
	ldr r1, [r0]
	adds r2, #8
	adds r3, r3, r2
	ldr r2, [r3]
	ldr r0, _0806384C @ =0x0809016C
	adds r5, r5, r4
	adds r5, r5, r0
	ldrb r3, [r5]
	adds r0, r6, #0
	bl sub_08009ACC
	adds r0, r6, #0
	movs r1, #0xff
	bl sub_08009B40
	movs r2, #0x80
	rsbs r2, r2, #0
	adds r0, r6, #0
	movs r1, #0
	bl sub_08009A70
	adds r0, r6, #0
	movs r1, #1
	bl sub_08009A34
	adds r0, r6, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08063840: .4byte 0x030044C4
_08063844: .4byte 0x06010000
_08063848: .4byte 0x0809012C
_0806384C: .4byte 0x0809016C

	thumb_func_start sub_08063850
sub_08063850: @ 0x08063850
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r6, r2, #0x18
	cmp r5, #0
	beq _0806388C
	ldr r2, _08063894 @ =0x0809012C
	lsls r3, r4, #4
	adds r0, r2, #0
	adds r0, #0xc
	adds r0, r3, r0
	ldr r1, [r0]
	adds r2, #8
	adds r3, r3, r2
	ldr r2, [r3]
	ldr r3, _08063898 @ =0x0809016C
	lsls r0, r4, #1
	adds r0, r0, r4
	adds r0, r6, r0
	adds r0, r0, r3
	ldrb r3, [r0]
	adds r0, r5, #0
	bl sub_08009ACC
	adds r0, r5, #0
	movs r1, #0xff
	bl sub_08009B40
_0806388C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08063894: .4byte 0x0809012C
_08063898: .4byte 0x0809016C

	thumb_func_start sub_0806389C
sub_0806389C: @ 0x0806389C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	bl sub_08007BD4
	adds r5, r0, #0
	ldrb r0, [r5, #1]
	ldr r1, _0806396C @ =0x0000FFFC
	cmp r0, #0
	bne _080638B2
	movs r1, #8
_080638B2:
	ldrb r0, [r5, #2]
	adds r0, r0, r1
	strb r0, [r5, #2]
	lsls r0, r0, #0x18
	cmp r0, #0
	bge _080638C2
	movs r0, #0
	strb r0, [r5, #2]
_080638C2:
	movs r0, #2
	ldrsb r0, [r5, r0]
	cmp r0, #0x3f
	ble _080638CE
	movs r0, #0x40
	strb r0, [r5, #2]
_080638CE:
	ldr r1, _08063970 @ =0x0809011C
	movs r2, #0
	ldrsb r2, [r5, r2]
	lsls r0, r2, #2
	adds r0, r0, r1
	ldrh r1, [r0]
	adds r1, #0x60
	lsls r1, r1, #0x10
	ldrh r0, [r0, #2]
	adds r0, #0x10
	lsls r0, r0, #0x10
	lsrs r6, r1, #0x10
	orrs r6, r0
	ldrb r0, [r5]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _08063902
	adds r0, r6, #0
	subs r0, #0xc
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _08063974 @ =0xFFFF0000
	ands r6, r1
	orrs r6, r0
_08063902:
	ldr r0, _08063978 @ =0x030044C4
	mov r8, r0
	ldr r1, [r0]
	ldr r4, _0806397C @ =0x08090178
	lsls r0, r2, #1
	adds r0, r0, r4
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #2
	adds r1, r1, r0
	ldr r0, [r1]
	movs r1, #2
	ldrsb r1, [r5, r1]
	adds r1, r1, r6
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	asrs r7, r6, #0x10
	adds r2, r7, #0
	bl sub_08009A70
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r0, r0, #1
	adds r4, #1
	adds r2, r0, r4
	movs r1, #0
	ldrsb r1, [r2, r1]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08063962
	mov r0, r8
	ldr r1, [r0]
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r0, r0, #2
	adds r1, r1, r0
	ldr r0, [r1]
	movs r1, #2
	ldrsb r1, [r5, r1]
	adds r1, #0x18
	adds r1, r6, r1
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r2, r7, #0
	bl sub_08009A70
_08063962:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806396C: .4byte 0x0000FFFC
_08063970: .4byte 0x0809011C
_08063974: .4byte 0xFFFF0000
_08063978: .4byte 0x030044C4
_0806397C: .4byte 0x08090178

	thumb_func_start sub_08063980
sub_08063980: @ 0x08063980
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	movs r6, #0
	ldr r0, _08063A30 @ =0x0809012C
	mov sb, r0
	ldr r0, _08063A34 @ =0x050002E0
	mov r8, r0
	mov r7, sb
_08063994:
	lsls r0, r6, #4
	mov r1, sb
	adds r1, #4
	adds r0, r0, r1
	ldr r5, [r0]
	adds r0, r5, #0
	bl sub_08006C14
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r0, [r7]
	mov r1, r8
	bl sub_08008308
	lsls r1, r4, #5
	ldr r0, _08063A38 @ =0x06010000
	adds r1, r1, r0
	adds r0, r5, #0
	bl sub_08008374
	ldr r0, _08063A3C @ =0x030044C4
	ldr r0, [r0]
	lsls r1, r6, #1
	adds r0, #0x18
	adds r0, r0, r1
	strh r4, [r0]
	movs r0, #0x20
	add r8, r0
	adds r7, #0x10
	adds r6, #1
	cmp r6, #3
	ble _08063994
	movs r6, #0
_080639D8:
	ldr r0, _08063A40 @ =0x08090180
	adds r0, r6, r0
	ldrb r0, [r0]
	bl sub_080637C4
	ldr r1, _08063A3C @ =0x030044C4
	ldr r1, [r1]
	lsls r2, r6, #2
	adds r1, r1, r2
	str r0, [r1]
	adds r6, #1
	cmp r6, #5
	ble _080639D8
	movs r6, #0
	movs r5, #0
_080639F6:
	ldr r0, _08063A44 @ =sub_0806389C
	movs r1, #0x90
	movs r2, #0
	bl sub_08007968
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	bl sub_08007BBC
	strb r6, [r0]
	strb r5, [r0, #1]
	movs r1, #0x40
	strb r1, [r0, #2]
	ldr r0, _08063A3C @ =0x030044C4
	ldr r0, [r0]
	lsls r1, r6, #1
	adds r0, #0x20
	adds r0, r0, r1
	strh r4, [r0]
	adds r6, #1
	cmp r6, #3
	ble _080639F6
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08063A30: .4byte 0x0809012C
_08063A34: .4byte 0x050002E0
_08063A38: .4byte 0x06010000
_08063A3C: .4byte 0x030044C4
_08063A40: .4byte 0x08090180
_08063A44: .4byte sub_0806389C

	thumb_func_start sub_08063A48
sub_08063A48: @ 0x08063A48
	push {r4, r5, r6, r7, lr}
	movs r5, #0
	ldr r6, _08063AB4 @ =0x030044C4
	movs r7, #1
	rsbs r7, r7, #0
_08063A52:
	ldr r0, [r6]
	lsls r4, r5, #1
	adds r0, #0x20
	adds r1, r0, r4
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, r7
	beq _08063A70
	bl sub_08007A08
	ldr r0, [r6]
	adds r0, #0x20
	adds r0, r0, r4
	ldr r1, _08063AB8 @ =0x0000FFFF
	strh r1, [r0]
_08063A70:
	adds r5, #1
	cmp r5, #3
	ble _08063A52
	movs r5, #0
	ldr r6, _08063AB4 @ =0x030044C4
_08063A7A:
	ldr r0, [r6]
	lsls r4, r5, #2
	adds r0, r0, r4
	ldr r0, [r0]
	cmp r0, #0
	beq _08063A92
	bl sub_08009A00
	ldr r0, [r6]
	adds r0, r0, r4
	movs r1, #0
	str r1, [r0]
_08063A92:
	adds r5, #1
	cmp r5, #5
	ble _08063A7A
	ldr r0, _08063ABC @ =0x0809012C
	adds r4, r0, #4
	movs r5, #3
_08063A9E:
	ldr r0, [r4]
	bl sub_08006CA0
	adds r4, #0x10
	subs r5, #1
	cmp r5, #0
	bge _08063A9E
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08063AB4: .4byte 0x030044C4
_08063AB8: .4byte 0x0000FFFF
_08063ABC: .4byte 0x0809012C

	thumb_func_start sub_08063AC0
sub_08063AC0: @ 0x08063AC0
	push {lr}
	ldr r1, _08063AE0 @ =0x030044C4
	ldr r1, [r1]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x17
	adds r1, #0x20
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	bl sub_08007BBC
	movs r1, #1
	strb r1, [r0, #1]
	pop {r0}
	bx r0
	.align 2, 0
_08063AE0: .4byte 0x030044C4

	thumb_func_start sub_08063AE4
sub_08063AE4: @ 0x08063AE4
	push {lr}
	lsls r0, r0, #0x18
	asrs r1, r0, #0x18
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08063B08
	ldr r0, _08063B0C @ =0x030044C4
	ldr r0, [r0]
	lsls r1, r1, #1
	adds r0, #0x20
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	movs r1, #0
	strb r1, [r0, #1]
_08063B08:
	pop {r0}
	bx r0
	.align 2, 0
_08063B0C: .4byte 0x030044C4

	thumb_func_start sub_08063B10
sub_08063B10: @ 0x08063B10
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	lsls r1, r1, #0x18
	lsrs r7, r1, #0x18
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #1
	rsbs r1, r1, #0
	mov sb, r1
	cmp r0, sb
	beq _08063B6E
	ldr r4, _08063B7C @ =0x08090178
	lsls r5, r0, #1
	adds r1, r5, r4
	ldr r2, _08063B80 @ =0x030044C4
	mov r8, r2
	ldr r0, [r2]
	movs r2, #0
	ldrsb r2, [r1, r2]
	lsls r1, r2, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r6, _08063B84 @ =0x08090180
	adds r2, r2, r6
	ldrb r1, [r2]
	adds r2, r7, #0
	bl sub_08063850
	adds r4, #1
	adds r5, r5, r4
	ldrb r5, [r5]
	lsls r5, r5, #0x18
	asrs r5, r5, #0x18
	cmp r5, sb
	beq _08063B6E
	mov r1, r8
	ldr r0, [r1]
	lsls r1, r5, #2
	adds r0, r0, r1
	ldr r0, [r0]
	adds r1, r5, r6
	ldrb r1, [r1]
	adds r2, r7, #0
	bl sub_08063850
_08063B6E:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08063B7C: .4byte 0x08090178
_08063B80: .4byte 0x030044C4
_08063B84: .4byte 0x08090180

	thumb_func_start sub_08063B88
sub_08063B88: @ 0x08063B88
	push {r4, r5, r6, lr}
	adds r6, r1, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r5, r0, #0
	movs r1, #0x20
	cmp r5, #3
	bls _08063B9A
	movs r1, #0x10
_08063B9A:
	movs r0, #1
	bl sub_080099E0
	adds r4, r0, #0
	ldr r0, _08063BE8 @ =0x030044C4
	ldr r0, [r0]
	adds r0, #0x4c
	ldrh r1, [r0]
	lsls r1, r1, #5
	ldr r0, _08063BEC @ =0x06010000
	adds r1, r1, r0
	adds r0, r4, #0
	bl sub_08009A78
	adds r0, r4, #0
	movs r1, #0
	bl sub_08009AB4
	ldr r2, _08063BF0 @ =0x08124B20
	adds r0, r4, #0
	movs r1, #0
	adds r3, r5, #0
	bl sub_08009ACC
	movs r0, #0
	ldrsh r1, [r6, r0]
	movs r0, #2
	ldrsh r2, [r6, r0]
	adds r0, r4, #0
	bl sub_08009A70
	adds r0, r4, #0
	movs r1, #1
	bl sub_08009A34
	adds r0, r4, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08063BE8: .4byte 0x030044C4
_08063BEC: .4byte 0x06010000
_08063BF0: .4byte 0x08124B20

	thumb_func_start sub_08063BF4
sub_08063BF4: @ 0x08063BF4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	movs r0, #5
	bl sub_08060EAC
	ldr r0, _08063D00 @ =0x08121728
	movs r1, #0xa0
	lsls r1, r1, #0x13
	bl sub_08008308
	ldr r0, _08063D04 @ =0x08121F3C
	movs r1, #0xc0
	lsls r1, r1, #0x13
	bl sub_08008374
	ldr r0, _08063D08 @ =0x08121B90
	ldr r1, _08063D0C @ =0x0600F000
	movs r2, #0
	movs r3, #0
	bl sub_080083CC
	ldr r0, _08063D10 @ =0x0812184C
	ldr r1, _08063D14 @ =0x0600F800
	movs r2, #0
	movs r3, #0
	bl sub_080083CC
	movs r6, #0
	ldr r0, _08063D18 @ =0x080900F8
	mov sb, r0
	ldr r1, _08063D1C @ =0x030044C4
	mov r8, r1
	mov r7, sb
_08063C3C:
	lsls r0, r6, #4
	mov r1, sb
	adds r1, #4
	adds r0, r0, r1
	ldr r5, [r0]
	adds r0, r5, #0
	bl sub_08006C14
	mov r2, r8
	ldr r1, [r2]
	lsls r4, r6, #1
	adds r1, #0x4c
	adds r1, r1, r4
	strh r0, [r1]
	ldr r0, [r7]
	ldr r1, _08063D20 @ =0x08090118
	adds r1, r6, r1
	ldrb r1, [r1]
	lsls r1, r1, #5
	ldr r2, _08063D24 @ =0x05000200
	adds r1, r1, r2
	bl sub_08008308
	mov r1, r8
	ldr r0, [r1]
	adds r0, #0x4c
	adds r0, r0, r4
	ldrh r1, [r0]
	lsls r1, r1, #5
	ldr r2, _08063D28 @ =0x06010000
	adds r1, r1, r2
	adds r0, r5, #0
	bl sub_08008374
	adds r7, #0x10
	adds r6, #1
	cmp r6, #1
	ble _08063C3C
	movs r6, #0
	ldr r5, _08063D1C @ =0x030044C4
_08063C8C:
	ldr r0, _08063D2C @ =0x0809011C
	movs r2, #3
	ands r2, r6
	lsls r2, r2, #2
	adds r2, r2, r0
	ldrh r1, [r2]
	adds r1, #0xf0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r3, _08063D30 @ =0xFFFF0000
	ldr r0, [sp]
	ands r0, r3
	orrs r0, r1
	str r0, [sp]
	ldrh r2, [r2, #2]
	lsls r2, r2, #0x10
	ldr r1, _08063D34 @ =0x0000FFFF
	ands r0, r1
	orrs r0, r2
	str r0, [sp]
	adds r0, r6, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r1, sp
	bl sub_08063B88
	ldr r1, [r5]
	lsls r4, r6, #2
	adds r1, #0x28
	adds r1, r1, r4
	str r0, [r1]
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	mov r1, sp
	bl sub_08063B88
	ldr r2, [r5]
	adds r1, r2, #0
	adds r1, #0x38
	adds r1, r1, r4
	str r0, [r1]
	adds r2, #0x28
	adds r2, r2, r4
	ldr r0, [r2]
	movs r1, #1
	bl sub_08009B84
	adds r6, #1
	cmp r6, #3
	ble _08063C8C
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08063D00: .4byte 0x08121728
_08063D04: .4byte 0x08121F3C
_08063D08: .4byte 0x08121B90
_08063D0C: .4byte 0x0600F000
_08063D10: .4byte 0x0812184C
_08063D14: .4byte 0x0600F800
_08063D18: .4byte 0x080900F8
_08063D1C: .4byte 0x030044C4
_08063D20: .4byte 0x08090118
_08063D24: .4byte 0x05000200
_08063D28: .4byte 0x06010000
_08063D2C: .4byte 0x0809011C
_08063D30: .4byte 0xFFFF0000
_08063D34: .4byte 0x0000FFFF

	thumb_func_start sub_08063D38
sub_08063D38: @ 0x08063D38
	push {r4, r5, r6, r7, lr}
	movs r0, #5
	bl sub_08060F1C
	movs r5, #0
	ldr r6, _08063D98 @ =0x030044C4
	movs r7, #0
_08063D46:
	ldr r0, [r6]
	lsls r4, r5, #2
	adds r0, #0x28
	adds r0, r0, r4
	ldr r0, [r0]
	cmp r0, #0
	beq _08063D60
	bl sub_08009A00
	ldr r0, [r6]
	adds r0, #0x28
	adds r0, r0, r4
	str r7, [r0]
_08063D60:
	ldr r0, [r6]
	adds r0, #0x38
	adds r0, r0, r4
	ldr r0, [r0]
	cmp r0, #0
	beq _08063D78
	bl sub_08009A00
	ldr r0, [r6]
	adds r0, #0x38
	adds r0, r0, r4
	str r7, [r0]
_08063D78:
	adds r5, #1
	cmp r5, #3
	ble _08063D46
	ldr r0, _08063D9C @ =0x080900F8
	adds r4, r0, #4
	movs r5, #1
_08063D84:
	ldr r0, [r4]
	bl sub_08006CA0
	adds r4, #0x10
	subs r5, #1
	cmp r5, #0
	bge _08063D84
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08063D98: .4byte 0x030044C4
_08063D9C: .4byte 0x080900F8

	thumb_func_start sub_08063DA0
sub_08063DA0: @ 0x08063DA0
	push {r4, lr}
	lsls r0, r0, #0x18
	asrs r1, r0, #0x18
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08063DE4
	ldr r4, _08063DEC @ =0x030044C4
	ldr r2, [r4]
	lsls r1, r1, #2
	adds r0, r2, #0
	adds r0, #0x28
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _08063DC6
	ldr r1, [r2, #0x48]
	bl sub_08009B9C
_08063DC6:
	ldr r0, [r4]
	adds r0, #0x54
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	movs r1, #0
	strb r1, [r0]
	ldr r0, [r4]
	ldr r0, [r0, #0x48]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r2, #0
	bl sub_08009E84
_08063DE4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08063DEC: .4byte 0x030044C4

	thumb_func_start sub_08063DF0
sub_08063DF0: @ 0x08063DF0
	push {lr}
	ldr r1, _08063E10 @ =0x030044C4
	ldr r1, [r1]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x16
	adds r1, #0x28
	adds r1, r1, r0
	ldr r0, [r1]
	cmp r0, #0
	beq _08063E0A
	movs r1, #0
	bl sub_08009B9C
_08063E0A:
	pop {r0}
	bx r0
	.align 2, 0
_08063E10: .4byte 0x030044C4

	thumb_func_start sub_08063E14
sub_08063E14: @ 0x08063E14
	push {r4, r5, lr}
	ldr r5, _08063E70 @ =0x030044C4
	ldr r0, [r5]
	ldr r0, [r0, #0x50]
	cmp r0, #0
	bne _08063E68
	movs r0, #0
	movs r1, #8
	bl sub_080099E0
	adds r4, r0, #0
	ldr r0, [r5]
	adds r0, #0x4e
	ldrh r1, [r0]
	lsls r1, r1, #5
	ldr r0, _08063E74 @ =0x06010000
	adds r1, r1, r0
	adds r0, r4, #0
	bl sub_08009A78
	adds r0, r4, #0
	movs r1, #6
	bl sub_08009AB4
	ldr r2, _08063E78 @ =0x08141D60
	adds r0, r4, #0
	movs r1, #0
	movs r3, #0
	bl sub_08009ACC
	movs r2, #0x80
	rsbs r2, r2, #0
	adds r0, r4, #0
	movs r1, #0
	bl sub_08009A70
	adds r0, r4, #0
	movs r1, #1
	bl sub_08009A34
	ldr r0, [r5]
	str r4, [r0, #0x50]
_08063E68:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08063E70: .4byte 0x030044C4
_08063E74: .4byte 0x06010000
_08063E78: .4byte 0x08141D60

	thumb_func_start sub_08063E7C
sub_08063E7C: @ 0x08063E7C
	push {r4, lr}
	ldr r4, _08063E98 @ =0x030044C4
	ldr r0, [r4]
	ldr r0, [r0, #0x50]
	cmp r0, #0
	beq _08063E92
	bl sub_08009A00
	ldr r1, [r4]
	movs r0, #0
	str r0, [r1, #0x50]
_08063E92:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08063E98: .4byte 0x030044C4

	thumb_func_start sub_08063E9C
sub_08063E9C: @ 0x08063E9C
	push {lr}
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	ldr r0, _08063EC8 @ =0x030044C4
	ldr r0, [r0]
	ldr r3, [r0, #0x50]
	cmp r3, #0
	beq _08063EC2
	ldr r0, _08063ECC @ =0x0809011C
	lsls r1, r1, #2
	adds r1, r1, r0
	ldrh r2, [r1, #2]
	subs r2, #4
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r3, #0
	movs r1, #0x10
	bl sub_08009A70
_08063EC2:
	pop {r0}
	bx r0
	.align 2, 0
_08063EC8: .4byte 0x030044C4
_08063ECC: .4byte 0x0809011C

	thumb_func_start sub_08063ED0
sub_08063ED0: @ 0x08063ED0
	push {r4, r5, r6, lr}
	bl sub_08007BD4
	adds r4, r0, #0
	ldrb r0, [r4, #2]
	cmp r0, #0
	beq _08063EE4
	subs r0, #1
	strb r0, [r4, #2]
	b _08063F3E
_08063EE4:
	ldrb r0, [r4, #1]
	movs r5, #0x10
	cmp r0, #0
	bne _08063EEE
	ldr r5, _08063F44 @ =0x0000FFF4
_08063EEE:
	ldr r6, _08063F48 @ =0x030044C4
	ldr r2, [r6]
	movs r1, #0
	ldrsb r1, [r4, r1]
	lsls r1, r1, #2
	adds r0, r2, #0
	adds r0, #0x28
	adds r0, r0, r1
	ldr r3, [r0]
	ldrh r0, [r3, #6]
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	adds r0, r1, r0
	strh r0, [r3, #6]
	movs r0, #0
	ldrsb r0, [r4, r0]
	lsls r0, r0, #2
	adds r2, #0x38
	adds r2, r2, r0
	ldr r2, [r2]
	ldrh r0, [r2, #6]
	adds r0, r1, r0
	strh r0, [r2, #6]
	cmp r1, #0
	bge _08063F22
	rsbs r1, r1, #0
_08063F22:
	ldrb r0, [r4, #3]
	adds r0, r0, r1
	strb r0, [r4, #3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xef
	bls _08063F3E
	ldr r1, [r6]
	adds r1, #0x56
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	bl sub_08007A64
_08063F3E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08063F44: .4byte 0x0000FFF4
_08063F48: .4byte 0x030044C4

	thumb_func_start sub_08063F4C
sub_08063F4C: @ 0x08063F4C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r0, _08063F90 @ =sub_08063ED0
	movs r1, #0x90
	movs r2, #0
	bl sub_08007968
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl sub_08007BBC
	movs r1, #0
	strb r4, [r0]
	strb r5, [r0, #1]
	strb r6, [r0, #2]
	strb r1, [r0, #3]
	ldr r0, _08063F94 @ =0x030044C4
	ldr r1, [r0]
	adds r1, #0x56
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08063F90: .4byte sub_08063ED0
_08063F94: .4byte 0x030044C4

	thumb_func_start sub_08063F98
sub_08063F98: @ 0x08063F98
	push {r4, r5, lr}
	ldr r0, _08063FE8 @ =0x030044C4
	ldr r0, [r0]
	adds r0, #0x56
	movs r1, #0
	strh r1, [r0]
	movs r4, #0
	movs r5, #0
_08063FA8:
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	lsrs r2, r5, #0x18
	movs r1, #0
	bl sub_08063F4C
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r5, r0
	adds r4, #1
	cmp r4, #3
	ble _08063FA8
	ldr r1, _08063FE8 @ =0x030044C4
	ldr r0, [r1]
	adds r0, #0x56
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	beq _08063FE2
	adds r4, r1, #0
_08063FD0:
	movs r0, #1
	bl sub_08002B98
	ldr r0, [r4]
	adds r0, #0x56
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _08063FD0
_08063FE2:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08063FE8: .4byte 0x030044C4

	thumb_func_start sub_08063FEC
sub_08063FEC: @ 0x08063FEC
	push {r4, r5, lr}
	ldr r1, _0806403C @ =0x030044C4
	ldr r1, [r1]
	adds r1, #0x56
	movs r2, #0
	strh r2, [r1]
	movs r4, #0
	lsls r0, r0, #0x18
	asrs r5, r0, #0x18
_08063FFE:
	cmp r4, r5
	beq _0806400E
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	movs r1, #1
	movs r2, #0
	bl sub_08063F4C
_0806400E:
	adds r4, #1
	cmp r4, #3
	ble _08063FFE
	ldr r1, _0806403C @ =0x030044C4
	ldr r0, [r1]
	adds r0, #0x56
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	beq _08064036
	adds r4, r1, #0
_08064024:
	movs r0, #1
	bl sub_08002B98
	ldr r0, [r4]
	adds r0, #0x56
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _08064024
_08064036:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806403C: .4byte 0x030044C4

	thumb_func_start sub_08064040
sub_08064040: @ 0x08064040
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	ldr r1, _08064078 @ =0x08090186
	mov r0, sp
	movs r2, #4
	bl memcpy
	add r2, sp, #4
	adds r1, r2, #0
	ldr r0, _0806407C @ =0x0809018C
	ldm r0!, {r3, r4, r5}
	stm r1!, {r3, r4, r5}
	ldr r0, [r0]
	str r0, [r1]
	ldr r0, _08064080 @ =0x03004400
	ldrb r0, [r0, #0xa]
	mov sl, r2
	cmp r0, #0x2b
	beq _080640BE
	cmp r0, #0x2b
	bgt _08064084
	cmp r0, #0x2a
	beq _08064090
	b _08064088
	.align 2, 0
_08064078: .4byte 0x08090186
_0806407C: .4byte 0x0809018C
_08064080: .4byte 0x03004400
_08064084:
	cmp r0, #0x2c
	beq _0806408C
_08064088:
	movs r7, #0
	b _080640C0
_0806408C:
	movs r7, #1
	b _080640C0
_08064090:
	movs r7, #2
	b _080640C0
_08064094:
	movs r0, #0xcc
	bl m4aSongNumStart
	lsls r4, r7, #0x18
	asrs r4, r4, #0x18
	adds r0, r4, #0
	bl sub_08063DF0
	adds r0, r4, #0
	movs r1, #2
	bl sub_08063B10
	movs r0, #5
	bl sub_08007828
	mov r1, sp
	adds r0, r1, r4
	ldrb r0, [r0]
	bl sub_08008790
	b _080641FE
_080640BE:
	movs r7, #3
_080640C0:
	movs r3, #0xff
	mov sb, r3
	bl sub_080636B8
	bl sub_08063BF4
	bl sub_08063980
	movs r0, #5
	bl sub_080077C4
	movs r0, #0x20
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl sub_08008AF4
	ldr r0, _08064128 @ =0x030024E0
	adds r0, #0x4f
	movs r1, #1
	strb r1, [r0]
	bl sub_08008D34
	bl sub_08063F98
	movs r0, #0
	bl sub_080613CC
	movs r0, #1
	bl sub_08005A88
	movs r0, #1
	bl sub_08005AC0
	movs r0, #0
	bl sub_080059E4
	bl sub_08063E14
	lsls r4, r7, #0x18
	lsrs r0, r4, #0x18
	bl sub_08063E9C
	asrs r4, r4, #0x16
	add r4, sl
	ldr r0, [r4]
	bl sub_080062D0
	ldr r4, _0806412C @ =0x030024B0
	mov r8, r4
	b _080641CC
	.align 2, 0
_08064128: .4byte 0x030024E0
_0806412C: .4byte 0x030024B0
_08064130:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08064094
	mov r5, r8
	ldrh r1, [r5, #4]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0806415C
	movs r0, #0xca
	bl m4aSongNumStart
	lsls r0, r7, #0x18
	movs r1, #0xff
	lsls r1, r1, #0x18
	adds r0, r0, r1
	lsrs r7, r0, #0x18
	cmp r0, #0
	bge _0806417C
	movs r7, #3
	b _0806417C
_0806415C:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0806417C
	movs r0, #0xca
	bl m4aSongNumStart
	lsls r0, r7, #0x18
	movs r3, #0x80
	lsls r3, r3, #0x11
	adds r0, r0, r3
	lsrs r7, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #3
	ble _0806417C
	movs r7, #0
_0806417C:
	mov r4, sb
	lsls r0, r4, #0x18
	asrs r4, r0, #0x18
	lsls r6, r7, #0x18
	asrs r5, r6, #0x18
	cmp r4, r5
	beq _080641C6
	adds r0, r4, #0
	bl sub_08063DF0
	adds r0, r5, #0
	bl sub_08063DA0
	adds r0, r4, #0
	bl sub_08063AE4
	adds r0, r5, #0
	bl sub_08063AC0
	adds r0, r4, #0
	movs r1, #0
	bl sub_08063B10
	adds r0, r5, #0
	movs r1, #1
	bl sub_08063B10
	lsls r0, r5, #2
	add r0, sl
	ldr r0, [r0]
	bl sub_080062D0
	lsrs r4, r6, #0x18
	adds r0, r4, #0
	bl sub_08063E9C
	mov sb, r4
_080641C6:
	movs r0, #1
	bl sub_08002B98
_080641CC:
	mov r5, r8
	ldrh r1, [r5]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08064130
	movs r0, #0xce
	bl m4aSongNumStart
	lsls r4, r7, #0x18
	asrs r4, r4, #0x18
	adds r0, r4, #0
	bl sub_08063DF0
	adds r0, r4, #0
	bl sub_08063AE4
	adds r0, r4, #0
	movs r1, #0
	bl sub_08063B10
	movs r0, #0x12
	bl sub_08008790
	movs r7, #0xff
_080641FE:
	bl sub_08063E7C
	bl sub_08005A2C
	bl sub_08061490
	lsls r0, r7, #0x18
	asrs r0, r0, #0x18
	bl sub_08063FEC
	movs r0, #0
	movs r1, #0x20
	bl sub_080077EC
	movs r0, #0x20
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl sub_080089E8
	bl sub_08008D34
	bl sub_08063A48
	bl sub_08063D38
	bl sub_08063768
	bl sub_08002B0C
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

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
	bl sub_08002B98
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
	bl sub_08002B98
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
	bl sub_08002B98
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
	bl sub_080083CC
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
	bl sub_08002B98
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
	bl sub_08002B98
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
	bl sub_08002B98
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
	bl sub_08002B98
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
	bl sub_08002B98
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
	bl sub_08002B98
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
	bl sub_08002B98
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
	bl sub_08002B98
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
	bl sub_08002B98
	adds r6, r4, #0
_08065BCC:
	movs r0, #1
	bl sub_08002B98
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
	bl sub_08002B98
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
	bl sub_08002B98
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
	bl sub_08008308
	ldr r0, [r4, #4]
	ldrh r1, [r7]
	movs r2, #0xc0
	lsls r2, r2, #0x13
	adds r1, r1, r2
	bl sub_08008374
	cmp r6, #2
	bne _08066242
	ldr r0, _080662FC @ =0x0811ECE8
	ldr r1, _08066300 @ =0x0600D800
	movs r2, #0
	movs r3, #0
	bl sub_080083CC
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
	bl sub_08008308
	mov r1, sb
	ldr r0, [r1]
	adds r0, #0x7e
	adds r0, r0, r4
	ldrh r1, [r0]
	lsls r1, r1, #5
	ldr r2, _08066310 @ =0x06010000
	adds r1, r1, r2
	adds r0, r5, #0
	bl sub_08008374
	adds r7, #2
	movs r0, #0x10
	add r8, r0
	adds r6, #1
	cmp r6, #4
	ble _0806625C
	ldr r0, _08066314 @ =0x0811F0B0
	ldr r1, _08066318 @ =0x05000280
	bl sub_08008308
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
	bl sub_08008374
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
	bl sub_08008AF4
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
	bl sub_08002B98
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
	bl sub_08002B98
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
	bl sub_08002B98
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
	bl sub_080089E8
	bl sub_08008D34
	bl sub_08007424
	bl sub_08066320
	bl sub_080661B0
	movs r0, #0x12
	bl sub_080072F4
	movs r0, #0x23
	bl sub_08008790
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
	bl sub_08008AF4
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
	bl sub_08002B98
	b _080668C6
_08066926:
	movs r0, #0
	movs r1, #0x20
	bl sub_080077EC
	movs r0, #0x20
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl sub_080089E8
	bl sub_08008D34
	bl sub_08066320
	bl sub_080661B0
	cmp r5, #0
	beq _08066958
	movs r0, #0x12
	bl sub_080072F4
	movs r0, #0x23
	bl sub_08008790
	b _0806695E
_08066958:
	movs r0, #0x12
	bl sub_08008790
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
	bl sub_08002B98
	movs r1, #0xc8
	lsls r1, r1, #1
	str r5, [sp]
	adds r0, r6, #0
	movs r2, #0xb
	movs r3, #0xa
	bl sub_08065440
	movs r0, #1
	bl sub_08002B98
	movs r1, #0xe0
	lsls r1, r1, #1
	str r5, [sp]
	mov r0, r8
	movs r2, #3
	movs r3, #0xe
	bl sub_08065440
	movs r0, #1
	bl sub_08002B98
	movs r1, #0xea
	lsls r1, r1, #1
	str r5, [sp]
	adds r0, r4, #0
	movs r2, #0xb
	movs r3, #6
	bl sub_0806598C
	movs r0, #1
	bl sub_08002B98
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
	bl sub_08002B98
	bl sub_080646B0
	movs r0, #1
	bl sub_08002B98
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
	bl sub_08002B98
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
	bl sub_08002B98
	bl sub_08003530
	movs r0, #1
	bl sub_08002B98
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

	thumb_func_start sub_08066F1C
sub_08066F1C: @ 0x08066F1C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	ldr r1, _08067140 @ =0x030024E0
	ldrh r2, [r1]
	movs r3, #0xe0
	lsls r3, r3, #4
	adds r0, r3, #0
	movs r4, #0
	orrs r0, r2
	strh r0, [r1]
	ldr r0, _08067144 @ =0x00001B05
	strh r0, [r1, #4]
	ldr r0, _08067148 @ =0x00001C06
	strh r0, [r1, #6]
	ldr r0, _0806714C @ =0x00005E03
	strh r0, [r1, #8]
	strh r4, [r1, #0x14]
	strh r4, [r1, #0xc]
	strh r4, [r1, #0x16]
	strh r4, [r1, #0xe]
	strh r4, [r1, #0x18]
	strh r4, [r1, #0x10]
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
	ldr r5, _08067150 @ =0x030044CC
	movs r0, #0xa8
	lsls r0, r0, #1
	bl sub_08007CE8
	adds r1, r0, #0
	str r1, [r5]
	add r0, sp, #8
	strh r4, [r0]
	ldr r2, _08067154 @ =0x010000A8
	bl CpuSet
	ldr r0, _08067158 @ =0x08134D98
	movs r1, #0xa0
	lsls r1, r1, #0x13
	bl sub_08008308
	ldr r0, _0806715C @ =0x08134E88
	ldr r1, _08067160 @ =0x06004000
	bl sub_08008374
	ldr r0, _08067164 @ =0x08134DBC
	ldr r1, _08067168 @ =0x0600E000
	movs r2, #0
	movs r3, #0
	bl sub_080083CC
	ldr r0, _0806716C @ =0x081353AC
	ldr r1, _08067170 @ =0x05000100
	bl sub_08008308
	ldr r0, _08067174 @ =0x08135B68
	movs r1, #0xc0
	lsls r1, r1, #0x13
	bl sub_08008374
	ldr r0, _08067178 @ =0x081355BC
	add r1, sp, #0xc
	movs r2, #0
	movs r3, #8
	bl sub_08008468
	mov r8, r0
	ldr r7, _0806717C @ =0x0600F000
	ldr r6, _08067180 @ =0x0600F800
	ldr r4, [sp, #0xc]
	movs r5, #0x1f
_08066FD2:
	adds r0, r4, #0
	adds r1, r7, #0
	movs r2, #0x10
	bl CpuFastSet
	adds r0, r4, #0
	adds r0, #0x40
	adds r1, r6, #0
	movs r2, #0x10
	bl CpuFastSet
	adds r7, #0x40
	adds r6, #0x40
	adds r4, #0x80
	subs r5, #1
	cmp r5, #0
	bge _08066FD2
	mov r0, r8
	bl sub_08007CF8
	ldr r4, _08067150 @ =0x030044CC
	ldr r1, [r4]
	movs r0, #0x9e
	lsls r0, r0, #1
	adds r1, r1, r0
	ldr r0, _08067184 @ =0x081355A0
	str r0, [r1]
	movs r1, #0x98
	bl sub_08009554
	ldr r2, _08067188 @ =0x0813511C
	mov r8, r2
	mov r0, r8
	bl sub_08006C14
	ldr r1, [r4]
	movs r5, #0xa0
	lsls r5, r5, #1
	adds r1, r1, r5
	strh r0, [r1]
	ldr r3, _0806718C @ =0x0814CDF8
	mov sl, r3
	mov r0, sl
	bl sub_08006C14
	ldr r1, [r4]
	movs r6, #0xa1
	lsls r6, r6, #1
	adds r1, r1, r6
	strh r0, [r1]
	ldr r0, _08067190 @ =0x0814DA18
	bl sub_08006C14
	ldr r1, [r4]
	movs r2, #0xa2
	lsls r2, r2, #1
	mov sb, r2
	add r1, sb
	strh r0, [r1]
	ldr r0, _08067194 @ =0x081430AC
	bl sub_08006C14
	ldr r1, [r4]
	movs r7, #0xa3
	lsls r7, r7, #1
	adds r1, r1, r7
	strh r0, [r1]
	ldr r0, _08067198 @ =0x08134EC0
	ldr r1, _0806719C @ =0x05000280
	bl sub_08008308
	ldr r0, _080671A0 @ =0x08134EE4
	ldr r1, _080671A4 @ =0x050002A0
	bl sub_08008308
	ldr r0, _080671A8 @ =0x08134F08
	ldr r1, _080671AC @ =0x050002C0
	bl sub_08008308
	ldr r0, _080671B0 @ =0x08134F2C
	ldr r1, _080671B4 @ =0x050002E0
	bl sub_08008308
	ldr r0, [r4]
	adds r0, r0, r5
	ldrh r1, [r0]
	lsls r1, r1, #5
	ldr r5, _080671B8 @ =0x06010000
	adds r1, r1, r5
	mov r0, r8
	bl sub_08008374
	ldr r0, _080671BC @ =0x0814CCC4
	ldr r1, _080671C0 @ =0x05000300
	bl sub_08008308
	ldr r0, [r4]
	adds r0, r0, r6
	ldrh r1, [r0]
	lsls r1, r1, #5
	adds r1, r1, r5
	mov r0, sl
	bl sub_08008374
	ldr r0, _080671C4 @ =0x0814CF18
	ldr r1, _080671C8 @ =0x05000200
	bl sub_08008308
	ldr r0, [r4]
	add r0, sb
	ldrh r1, [r0]
	lsls r1, r1, #5
	adds r1, r1, r5
	ldr r0, _08067190 @ =0x0814DA18
	bl sub_08008374
	ldr r0, _080671CC @ =0x08143000
	ldr r1, _080671D0 @ =0x05000380
	bl sub_08008308
	ldr r0, [r4]
	adds r0, r0, r7
	ldrh r1, [r0]
	lsls r1, r1, #5
	adds r1, r1, r5
	ldr r0, _08067194 @ =0x081430AC
	bl sub_08008374
	ldr r0, _080671D4 @ =0x0047003A
	bl sub_08006828
	adds r1, r0, #0
	ldr r0, _080671D8 @ =0x06005800
	movs r2, #1
	str r2, [sp]
	movs r3, #0
	bl sub_08004D94
	movs r5, #0
_080670E8:
	lsls r3, r5, #0x1a
	lsrs r3, r3, #0x18
	movs r0, #0xc
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0x1b
	movs r1, #0xc0
	movs r2, #0
	bl sub_08004FD4
	adds r5, #1
	cmp r5, #3
	ble _080670E8
	movs r5, #0
	ldr r4, _080671DC @ =0x06005A00
_08067108:
	movs r1, #0x2c
	cmp r5, #0xa
	beq _08067116
	adds r1, r5, #0
	cmp r5, #0xb
	bne _08067116
	movs r1, #0x2b
_08067116:
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r0, #1
	str r0, [sp]
	adds r0, r4, #0
	movs r2, #1
	movs r3, #0
	bl sub_08004BB8
	adds r5, #1
	adds r4, #0x20
	cmp r5, #0xb
	ble _08067108
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08067140: .4byte 0x030024E0
_08067144: .4byte 0x00001B05
_08067148: .4byte 0x00001C06
_0806714C: .4byte 0x00005E03
_08067150: .4byte 0x030044CC
_08067154: .4byte 0x010000A8
_08067158: .4byte 0x08134D98
_0806715C: .4byte 0x08134E88
_08067160: .4byte 0x06004000
_08067164: .4byte 0x08134DBC
_08067168: .4byte 0x0600E000
_0806716C: .4byte 0x081353AC
_08067170: .4byte 0x05000100
_08067174: .4byte 0x08135B68
_08067178: .4byte 0x081355BC
_0806717C: .4byte 0x0600F000
_08067180: .4byte 0x0600F800
_08067184: .4byte 0x081355A0
_08067188: .4byte 0x0813511C
_0806718C: .4byte 0x0814CDF8
_08067190: .4byte 0x0814DA18
_08067194: .4byte 0x081430AC
_08067198: .4byte 0x08134EC0
_0806719C: .4byte 0x05000280
_080671A0: .4byte 0x08134EE4
_080671A4: .4byte 0x050002A0
_080671A8: .4byte 0x08134F08
_080671AC: .4byte 0x050002C0
_080671B0: .4byte 0x08134F2C
_080671B4: .4byte 0x050002E0
_080671B8: .4byte 0x06010000
_080671BC: .4byte 0x0814CCC4
_080671C0: .4byte 0x05000300
_080671C4: .4byte 0x0814CF18
_080671C8: .4byte 0x05000200
_080671CC: .4byte 0x08143000
_080671D0: .4byte 0x05000380
_080671D4: .4byte 0x0047003A
_080671D8: .4byte 0x06005800
_080671DC: .4byte 0x06005A00

	thumb_func_start sub_080671E0
sub_080671E0: @ 0x080671E0
	push {r4, lr}
	ldr r4, _08067228 @ =0x030044CC
	ldr r0, [r4]
	movs r1, #0x9e
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_080095E0
	ldr r0, _0806722C @ =0x0813511C
	bl sub_08006CA0
	ldr r0, _08067230 @ =0x0814CDF8
	bl sub_08006CA0
	ldr r0, _08067234 @ =0x0814DA18
	bl sub_08006CA0
	ldr r0, _08067238 @ =0x081430AC
	bl sub_08006CA0
	ldr r0, [r4]
	cmp r0, #0
	beq _08067218
	bl sub_08007CF8
	movs r0, #0
	str r0, [r4]
_08067218:
	bl sub_0800580C
	bl sub_08003FE4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08067228: .4byte 0x030044CC
_0806722C: .4byte 0x0813511C
_08067230: .4byte 0x0814CDF8
_08067234: .4byte 0x0814DA18
_08067238: .4byte 0x081430AC

	thumb_func_start sub_0806723C
sub_0806723C: @ 0x0806723C
	push {r4, lr}
	lsls r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r2, r1, #0x10
	lsrs r3, r0, #0x10
	cmp r0, #0
	bge _0806724C
	movs r3, #0
_0806724C:
	lsls r1, r3, #0x10
	ldr r0, _08067284 @ =0x010F0000
	cmp r1, r0
	ble _08067258
	movs r3, #0x88
	lsls r3, r3, #1
_08067258:
	lsls r0, r2, #0x10
	cmp r0, #0
	bge _08067260
	movs r2, #0
_08067260:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x5f
	ble _0806726A
	movs r2, #0x60
_0806726A:
	ldr r0, _08067288 @ =0x030044CC
	ldr r1, [r0]
	movs r4, #0x9a
	lsls r4, r4, #1
	adds r0, r1, r4
	strh r3, [r0]
	movs r3, #0x9b
	lsls r3, r3, #1
	adds r0, r1, r3
	strh r2, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08067284: .4byte 0x010F0000
_08067288: .4byte 0x030044CC

	thumb_func_start sub_0806728C
sub_0806728C: @ 0x0806728C
	push {lr}
	adds r1, r0, #0
	cmp r1, #0
	beq _080672A0
	movs r2, #0
	ldrsh r0, [r1, r2]
	movs r2, #2
	ldrsh r1, [r1, r2]
	bl sub_0806723C
_080672A0:
	pop {r0}
	bx r0

	thumb_func_start sub_080672A4
sub_080672A4: @ 0x080672A4
	push {lr}
	adds r1, r0, #0
	cmp r1, #0
	beq _080672C2
	ldr r0, _080672C8 @ =0x030044CC
	ldr r2, [r0]
	movs r3, #0x9a
	lsls r3, r3, #1
	adds r0, r2, r3
	ldrh r0, [r0]
	strh r0, [r1]
	adds r3, #2
	adds r0, r2, r3
	ldrh r0, [r0]
	strh r0, [r1, #2]
_080672C2:
	pop {r0}
	bx r0
	.align 2, 0
_080672C8: .4byte 0x030044CC

	thumb_func_start sub_080672CC
sub_080672CC: @ 0x080672CC
	ldr r1, _080672DC @ =0x030044CC
	ldr r1, [r1]
	movs r2, #0x98
	lsls r2, r2, #1
	adds r1, r1, r2
	str r0, [r1]
	bx lr
	.align 2, 0
_080672DC: .4byte 0x030044CC

	thumb_func_start sub_080672E0
sub_080672E0: @ 0x080672E0
	push {r4, lr}
	ldr r0, _0806730C @ =0x030044CC
	ldr r0, [r0]
	movs r1, #0x98
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _0806733C
	ldr r4, _08067310 @ =0x0000FFFF
	ldrh r3, [r0, #0xa]
	movs r0, #0xc0
	lsls r0, r0, #0xf
	orrs r3, r0
	lsls r0, r3, #0x10
	asrs r1, r0, #0x10
	ldr r0, _08067314 @ =0x0000014F
	cmp r1, r0
	ble _08067318
	asrs r0, r3, #0x10
	subs r0, #0x50
	b _08067328
	.align 2, 0
_0806730C: .4byte 0x030044CC
_08067310: .4byte 0x0000FFFF
_08067314: .4byte 0x0000014F
_08067318:
	cmp r1, #0xaf
	ble _0806732E
	asrs r0, r3, #0x10
	subs r1, #0xb0
	lsrs r2, r1, #0x1f
	adds r1, r1, r2
	asrs r1, r1, #1
	subs r0, r0, r1
_08067328:
	lsls r0, r0, #0x10
	ands r3, r4
	orrs r3, r0
_0806732E:
	adds r0, r3, #0
	subs r0, #0x78
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	asrs r1, r3, #0x10
	bl sub_0806723C
_0806733C:
	ldr r1, _0806735C @ =0x030024E0
	ldr r0, _08067360 @ =0x030044CC
	ldr r2, [r0]
	movs r3, #0x9a
	lsls r3, r3, #1
	adds r0, r2, r3
	ldrh r0, [r0]
	strh r0, [r1, #0x10]
	adds r3, #2
	adds r0, r2, r3
	ldrh r0, [r0]
	strh r0, [r1, #0x18]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806735C: .4byte 0x030024E0
_08067360: .4byte 0x030044CC

	thumb_func_start sub_08067364
sub_08067364: @ 0x08067364
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	beq _08067374
	bl sub_08009A00
_08067374:
	mov r0, sp
	movs r1, #0
	strh r1, [r0]
	ldr r2, _0806738C @ =0x0100000C
	adds r1, r4, #0
	bl CpuSet
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806738C: .4byte 0x0100000C

	thumb_func_start sub_08067390
sub_08067390: @ 0x08067390
	push {lr}
	adds r3, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldr r0, [r3]
	cmp r0, #0
	beq _080673AA
	lsls r0, r1, #0x10
	str r0, [r3, #8]
	lsls r0, r2, #0x10
	str r0, [r3, #0xc]
_080673AA:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080673B0
sub_080673B0: @ 0x080673B0
	push {lr}
	adds r2, r1, #0
	cmp r2, #0
	beq _080673C4
	movs r3, #0
	ldrsh r1, [r2, r3]
	movs r3, #2
	ldrsh r2, [r2, r3]
	bl sub_08067390
_080673C4:
	pop {r0}
	bx r0

	thumb_func_start sub_080673C8
sub_080673C8: @ 0x080673C8
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2]
	cmp r0, #0
	beq _080673E2
	cmp r1, #0
	beq _080673E2
	movs r3, #0xa
	ldrsh r0, [r2, r3]
	strh r0, [r1]
	movs r3, #0xe
	ldrsh r0, [r2, r3]
	strh r0, [r1, #2]
_080673E2:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080673E8
sub_080673E8: @ 0x080673E8
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2]
	cmp r0, #0
	beq _080673F4
	str r1, [r2, #0x10]
_080673F4:
	pop {r0}
	bx r0

	thumb_func_start sub_080673F8
sub_080673F8: @ 0x080673F8
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2]
	cmp r0, #0
	beq _0806740A
	ldr r0, [r2, #8]
	ldr r1, [r2, #0x10]
	adds r0, r0, r1
	str r0, [r2, #8]
_0806740A:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08067410
sub_08067410: @ 0x08067410
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r7, [r6]
	cmp r7, #0
	beq _0806746A
	ldr r1, _08067470 @ =0xFFFF0000
	ldrh r0, [r6, #0xe]
	lsls r0, r0, #0x10
	ldr r2, _08067474 @ =0x0000FFFF
	ldrh r3, [r6, #0xa]
	orrs r3, r0
	ldr r0, _08067478 @ =0x030044CC
	ldr r4, [r0]
	movs r5, #0x9a
	lsls r5, r5, #1
	adds r0, r4, r5
	ldrh r0, [r0]
	subs r0, r3, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ands r3, r1
	orrs r3, r0
	asrs r0, r3, #0x10
	adds r5, #2
	adds r1, r4, r5
	ldrh r1, [r1]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	ands r3, r2
	orrs r3, r0
	lsls r0, r3, #0x10
	asrs r5, r0, #0x10
	asrs r4, r3, #0x10
	adds r0, r7, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_08009A70
	ldr r0, [r6, #4]
	cmp r0, #0
	beq _0806746A
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_08009A70
_0806746A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08067470: .4byte 0xFFFF0000
_08067474: .4byte 0x0000FFFF
_08067478: .4byte 0x030044CC

	thumb_func_start sub_0806747C
sub_0806747C: @ 0x0806747C
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r1, [r4]
	cmp r1, #0
	bne _080674E6
	mov r0, sp
	strh r1, [r0]
	ldr r2, _080674F0 @ =0x0100000C
	adds r1, r4, #0
	bl CpuSet
	movs r1, #0x10
	subs r1, r1, r5
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r0, #1
	bl sub_080099E0
	str r0, [r4]
	ldr r1, _080674F4 @ =0x030044CC
	ldr r1, [r1]
	movs r2, #0xa2
	lsls r2, r2, #1
	adds r1, r1, r2
	ldrh r1, [r1]
	lsls r1, r1, #5
	ldr r2, _080674F8 @ =0x06010000
	adds r1, r1, r2
	bl sub_08009A78
	ldr r0, [r4]
	adds r1, r5, #0
	bl sub_08009AB4
	ldr r0, [r4]
	ldr r1, _080674FC @ =0x0814D9D0
	ldr r2, _08067500 @ =0x0814D8A4
	movs r3, #0
	bl sub_08009ACC
	ldr r0, [r4]
	movs r2, #0x80
	rsbs r2, r2, #0
	movs r1, #0
	bl sub_08009A70
	ldr r0, [r4]
	movs r1, #1
	bl sub_08009A34
_080674E6:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080674F0: .4byte 0x0100000C
_080674F4: .4byte 0x030044CC
_080674F8: .4byte 0x06010000
_080674FC: .4byte 0x0814D9D0
_08067500: .4byte 0x0814D8A4

	thumb_func_start sub_08067504
sub_08067504: @ 0x08067504
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r4, r2, #0x18
	ldr r3, [r5]
	cmp r3, #0
	beq _08067540
	ldrb r0, [r5, #0x14]
	cmp r0, r6
	beq _08067540
	ldr r1, _08067548 @ =0x0814D9D0
	ldr r2, _0806754C @ =0x0814D8A4
	adds r0, r3, #0
	adds r3, r6, #0
	bl sub_08009ACC
	cmp r4, #0
	beq _08067536
	cmp r4, #0xff
	beq _08067536
	subs r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_08067536:
	ldr r0, [r5]
	adds r1, r4, #0
	bl sub_08009B40
	strb r6, [r5, #0x14]
_08067540:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08067548: .4byte 0x0814D9D0
_0806754C: .4byte 0x0814D8A4

	thumb_func_start sub_08067550
sub_08067550: @ 0x08067550
	push {lr}
	ldr r0, [r0]
	cmp r0, #0
	bne _0806755C
	movs r0, #0
	b _08067560
_0806755C:
	ldrb r0, [r0, #1]
	lsrs r0, r0, #7
_08067560:
	pop {r1}
	bx r1

	thumb_func_start sub_08067564
sub_08067564: @ 0x08067564
	push {r4, r5, lr}
	adds r5, r0, #0
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	movs r1, #0x10
	subs r1, r1, r5
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r0, #1
	bl sub_080099E0
	adds r4, r0, #0
	ldr r0, _080675CC @ =0x030044CC
	ldr r0, [r0]
	movs r1, #0xa2
	lsls r1, r1, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	lsls r1, r1, #5
	ldr r0, _080675D0 @ =0x06010000
	adds r1, r1, r0
	adds r0, r4, #0
	bl sub_08009A78
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08009AB4
	ldr r1, _080675D4 @ =0x0814D9D0
	ldr r2, _080675D8 @ =0x0814D8A4
	adds r0, r4, #0
	movs r3, #0x10
	bl sub_08009ACC
	adds r0, r4, #0
	movs r1, #0xff
	bl sub_08009B40
	movs r2, #0x80
	rsbs r2, r2, #0
	adds r0, r4, #0
	movs r1, #0
	bl sub_08009A70
	adds r0, r4, #0
	movs r1, #1
	bl sub_08009A34
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080675CC: .4byte 0x030044CC
_080675D0: .4byte 0x06010000
_080675D4: .4byte 0x0814D9D0
_080675D8: .4byte 0x0814D8A4

	thumb_func_start sub_080675DC
sub_080675DC: @ 0x080675DC
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r1, [r4]
	cmp r1, #0
	bne _0806763C
	mov r0, sp
	strh r1, [r0]
	ldr r2, _08067644 @ =0x0100000C
	adds r1, r4, #0
	bl CpuSet
	movs r0, #1
	movs r1, #0x20
	bl sub_080099E0
	str r0, [r4]
	ldr r1, _08067648 @ =0x030044CC
	ldr r1, [r1]
	movs r2, #0xa1
	lsls r2, r2, #1
	adds r1, r1, r2
	ldrh r1, [r1]
	lsls r1, r1, #5
	ldr r2, _0806764C @ =0x06010000
	adds r1, r1, r2
	bl sub_08009A78
	ldr r0, [r4]
	movs r1, #8
	bl sub_08009AB4
	ldr r0, [r4]
	ldr r2, _08067650 @ =0x0814CDD4
	movs r1, #0
	movs r3, #0
	bl sub_08009ACC
	ldr r0, [r4]
	movs r2, #0x80
	rsbs r2, r2, #0
	movs r1, #0
	bl sub_08009A70
	ldr r0, [r4]
	movs r1, #1
	bl sub_08009A34
_0806763C:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08067644: .4byte 0x0100000C
_08067648: .4byte 0x030044CC
_0806764C: .4byte 0x06010000
_08067650: .4byte 0x0814CDD4

	thumb_func_start sub_08067654
sub_08067654: @ 0x08067654
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x18
	lsrs r3, r1, #0x18
	ldr r0, [r4]
	cmp r0, #0
	beq _0806768E
	cmp r3, #2
	bhi _0806767C
	ldr r2, _08067678 @ =0x0814CDD4
	movs r1, #0
	bl sub_08009ACC
	ldr r0, [r4]
	movs r1, #0
	bl sub_08009B40
	b _0806768E
	.align 2, 0
_08067678: .4byte 0x0814CDD4
_0806767C:
	ldr r1, _08067694 @ =0x0814CDF0
	ldr r2, _08067698 @ =0x0814CDD4
	movs r3, #0
	bl sub_08009ACC
	ldr r0, [r4]
	movs r1, #0xff
	bl sub_08009B40
_0806768E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08067694: .4byte 0x0814CDF0
_08067698: .4byte 0x0814CDD4

	thumb_func_start sub_0806769C
sub_0806769C: @ 0x0806769C
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	adds r4, r0, #0
	mov sb, r2
	adds r5, r3, #0
	ldr r6, [sp, #0x18]
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r0, sb
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	movs r0, #1
	bl sub_080099E0
	mov r8, r0
	ldr r0, _08067730 @ =0x030044CC
	ldr r0, [r0]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	lsls r1, r1, #5
	ldr r0, _08067734 @ =0x06010000
	adds r1, r1, r0
	mov r0, r8
	bl sub_08009A78
	adds r4, #4
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	mov r0, r8
	adds r1, r4, #0
	bl sub_08009AB4
	ldr r1, _08067738 @ =0x08135104
	ldr r2, _0806773C @ =0x081350B0
	mov r0, r8
	mov r3, sb
	bl sub_08009ACC
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	lsls r6, r6, #0x10
	asrs r6, r6, #0x10
	mov r0, r8
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_08009A70
	mov r0, r8
	movs r1, #0xff
	bl sub_08009B40
	mov r0, r8
	movs r1, #1
	bl sub_08009A34
	mov r0, r8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08067730: .4byte 0x030044CC
_08067734: .4byte 0x06010000
_08067738: .4byte 0x08135104
_0806773C: .4byte 0x081350B0

	thumb_func_start sub_08067740
sub_08067740: @ 0x08067740
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r6, r0, #0
	ldr r0, [sp, #0x1c]
	lsls r1, r1, #0x18
	lsrs r7, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov r8, r2
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r0, [r6]
	cmp r0, #0
	bne _080677AE
	lsls r5, r3, #0x10
	asrs r5, r5, #0x10
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	str r4, [sp]
	adds r0, r7, #0
	movs r1, #0x18
	movs r2, #0
	adds r3, r5, #0
	bl sub_0806769C
	str r0, [r6]
	mov r2, r8
	adds r2, #1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	str r4, [sp]
	adds r0, r7, #0
	movs r1, #0x10
	adds r3, r5, #0
	bl sub_0806769C
	str r0, [r6, #4]
	mov r0, r8
	cmp r0, #0
	bne _080677AE
	ldr r0, _080677BC @ =0x08134F88
	str r0, [r6, #8]
	adds r1, r7, #4
	movs r2, #0xf
	ands r1, r2
	lsls r1, r1, #4
	ldr r3, _080677C0 @ =0x00000103
	adds r2, r3, #0
	orrs r1, r2
	bl sub_08009554
_080677AE:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080677BC: .4byte 0x08134F88
_080677C0: .4byte 0x00000103

	thumb_func_start sub_080677C4
sub_080677C4: @ 0x080677C4
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	beq _080677D6
	bl sub_08009A00
	movs r0, #0
	str r0, [r4]
_080677D6:
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _080677E4
	bl sub_08009A00
	movs r0, #0
	str r0, [r4, #4]
_080677E4:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _080677F2
	bl sub_080095E0
	movs r0, #0
	str r0, [r4, #8]
_080677F2:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080677F8
sub_080677F8: @ 0x080677F8
	push {r4, r5, lr}
	ldr r5, _08067864 @ =0x030044CC
	ldr r0, [r5]
	movs r1, #0x9c
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	bne _0806785C
	movs r0, #1
	movs r1, #0x80
	bl sub_080099E0
	adds r4, r0, #0
	ldr r0, [r5]
	movs r1, #0xa3
	lsls r1, r1, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	lsls r1, r1, #5
	ldr r0, _08067868 @ =0x06010000
	adds r1, r1, r0
	adds r0, r4, #0
	bl sub_08009A78
	adds r0, r4, #0
	movs r1, #0xc
	bl sub_08009AB4
	ldr r2, _0806786C @ =0x08143084
	adds r0, r4, #0
	movs r1, #0
	movs r3, #3
	bl sub_08009ACC
	movs r2, #0x80
	rsbs r2, r2, #0
	adds r0, r4, #0
	movs r1, #0
	bl sub_08009A70
	adds r0, r4, #0
	movs r1, #1
	bl sub_08009A34
	ldr r0, [r5]
	movs r1, #0x9c
	lsls r1, r1, #1
	adds r0, r0, r1
	str r4, [r0]
_0806785C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08067864: .4byte 0x030044CC
_08067868: .4byte 0x06010000
_0806786C: .4byte 0x08143084

	thumb_func_start sub_08067870
sub_08067870: @ 0x08067870
	push {r4, lr}
	ldr r4, _08067898 @ =0x030044CC
	ldr r0, [r4]
	movs r1, #0x9c
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _08067892
	bl sub_08009A00
	ldr r0, [r4]
	movs r1, #0x9c
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r1, #0
	str r1, [r0]
_08067892:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08067898: .4byte 0x030044CC

	thumb_func_start sub_0806789C
sub_0806789C: @ 0x0806789C
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	ldr r1, _080678F4 @ =0x030044CC
	ldr r0, [r1]
	movs r6, #0x9c
	lsls r6, r6, #1
	adds r0, r0, r6
	ldr r4, [r0]
	adds r5, r1, #0
	cmp r4, #0
	beq _08067938
	ldr r1, _080678F8 @ =0x02037EB0
	adds r0, r1, #0
	adds r0, #0x99
	ldrb r0, [r0]
	cmp r0, #0
	bne _08067900
	adds r0, r1, #0
	adds r0, #0x90
	ldr r0, [r0]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08067900
	ldr r2, _080678FC @ =0x08143084
	adds r0, r4, #0
	movs r1, #0
	bl sub_08009ACC
	ldr r0, [r5]
	adds r0, r0, r6
	ldr r0, [r0]
	movs r1, #0x58
	movs r2, #0x90
	bl sub_08009A70
	ldr r0, [r5]
	adds r0, r0, r6
	ldr r0, [r0]
	movs r1, #1
	bl sub_08009A34
	b _08067938
	.align 2, 0
_080678F4: .4byte 0x030044CC
_080678F8: .4byte 0x02037EB0
_080678FC: .4byte 0x08143084
_08067900:
	ldr r0, [r5]
	movs r4, #0x9c
	lsls r4, r4, #1
	adds r0, r0, r4
	ldr r0, [r0]
	ldr r2, _08067940 @ =0x08143084
	movs r1, #0
	movs r3, #3
	bl sub_08009ACC
	ldr r0, [r5]
	adds r0, r0, r4
	ldr r0, [r0]
	movs r1, #0x78
	movs r2, #0x98
	bl sub_08009A70
	ldr r0, [r5]
	adds r0, r0, r4
	ldr r0, [r0]
	ldr r1, _08067944 @ =0x02037EB0
	adds r1, #0x99
	ldrb r2, [r1]
	rsbs r1, r2, #0
	orrs r1, r2
	lsrs r1, r1, #0x1f
	bl sub_08009A34
_08067938:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08067940: .4byte 0x08143084
_08067944: .4byte 0x02037EB0

	thumb_func_start sub_08067948
sub_08067948: @ 0x08067948
	push {r4, r5, r6, lr}
	ldr r6, _08067978 @ =0x030044CC
	movs r5, #0xb8
	movs r4, #3
_08067950:
	ldr r0, [r6]
	adds r0, r0, r5
	bl sub_08067410
	adds r5, #0x18
	subs r4, #1
	cmp r4, #0
	bge _08067950
	ldr r0, _08067978 @ =0x030044CC
	ldr r0, [r0]
	movs r1, #0x8c
	lsls r1, r1, #1
	adds r0, r0, r1
	bl sub_08067410
	bl sub_080672E0
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08067978: .4byte 0x030044CC

	thumb_func_start sub_0806797C
sub_0806797C: @ 0x0806797C
	push {r4, lr}
	lsls r0, r0, #0x10
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r4, r1, #0
	movs r2, #0
	lsrs r3, r0, #0x10
	cmp r0, #0
	bge _08067990
	movs r3, #0
_08067990:
	cmp r1, #1
	beq _080679BC
	cmp r1, #1
	bgt _0806799E
	cmp r1, #0
	beq _080679A4
	b _080679EA
_0806799E:
	cmp r4, #2
	beq _080679D4
	b _080679EA
_080679A4:
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	bl __floatsidf
	ldr r3, _080679B8 @ =0x4039ABF3
	ldr r2, _080679B4 @ =0x3FD54730
	b _080679E0
	.align 2, 0
_080679B4: .4byte 0x3FD54730
_080679B8: .4byte 0x4039ABF3
_080679BC:
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	bl __floatsidf
	ldr r3, _080679D0 @ =0x1BEF49CF
	ldr r2, _080679CC @ =0x3FCE7B5F
	b _080679E0
	.align 2, 0
_080679CC: .4byte 0x3FCE7B5F
_080679D0: .4byte 0x1BEF49CF
_080679D4:
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	bl __floatsidf
	ldr r3, _08067A04 @ =0x2EC6BCE8
	ldr r2, _08067A00 @ =0x3FD3BD51
_080679E0:
	bl __muldf3
	bl __fixdfsi
	adds r2, r0, #0
_080679EA:
	cmp r2, #0
	bge _080679F0
	movs r2, #0
_080679F0:
	cmp r2, #0xff
	ble _080679F6
	movs r2, #0xff
_080679F6:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08067A00: .4byte 0x3FD3BD51
_08067A04: .4byte 0x2EC6BCE8

	thumb_func_start sub_08067A08
sub_08067A08: @ 0x08067A08
	push {r4, lr}
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r0, _08067A3C @ =0x030044CC
	ldr r0, [r0]
	movs r3, #3
	cmp r4, #3
	bge _08067A36
	adds r2, r0, #0
	adds r2, #0x20
	adds r1, r0, #0
	adds r1, #0x16
_08067A20:
	ldrb r0, [r1]
	strb r0, [r1, #1]
	ldrb r0, [r1, #4]
	strb r0, [r1, #5]
	ldrh r0, [r2]
	strh r0, [r2, #2]
	subs r2, #2
	subs r1, #1
	subs r3, #1
	cmp r4, r3
	blt _08067A20
_08067A36:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08067A3C: .4byte 0x030044CC

	thumb_func_start sub_08067A40
sub_08067A40: @ 0x08067A40
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	ldr r0, _08067A8C @ =0x030044CC
	ldr r1, [r0]
	adds r5, r1, #0
	adds r5, #0x14
	movs r3, #0
	mov r8, r0
	movs r0, #0x1c
	adds r0, r0, r1
	mov sb, r0
	adds r4, r5, #0
	adds r6, r1, #0
	adds r6, #0x1c
	movs r2, #0
_08067A6A:
	adds r0, r5, #0
	adds r0, #8
	adds r0, r0, r2
	ldrh r1, [r0]
	cmp r1, #0
	bne _08067A90
_08067A76:
	mov r1, sl
	strb r1, [r4]
	ldr r0, _08067A8C @ =0x030044CC
	ldr r1, [r0]
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r1, r1, r2
	ldrh r1, [r1]
	strh r1, [r6]
	mov r8, r0
	b _08067ABE
	.align 2, 0
_08067A8C: .4byte 0x030044CC
_08067A90:
	mov r7, r8
	ldr r0, [r7]
	movs r7, #0xa4
	lsls r7, r7, #1
	adds r0, r0, r7
	ldrh r0, [r0]
	cmp r1, r0
	bne _08067AB2
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp sl, r0
	bge _08067AB2
	lsls r0, r3, #0x18
	lsrs r0, r0, #0x18
	bl sub_08067A08
	b _08067A76
_08067AB2:
	adds r4, #1
	adds r6, #2
	adds r2, #2
	adds r3, #1
	cmp r3, #3
	ble _08067A6A
_08067ABE:
	movs r4, #0
	movs r3, #0
	strb r3, [r5, #4]
	movs r1, #1
	ldrh r0, [r5, #0xa]
	cmp r0, #0
	beq _08067AF8
	mov r2, sb
	mov ip, r2
	adds r6, r5, #4
_08067AD2:
	lsls r0, r1, #1
	add r0, ip
	ldrh r1, [r2]
	ldrh r0, [r0]
	cmp r1, r0
	beq _08067AE4
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_08067AE4:
	adds r2, #2
	adds r3, #1
	cmp r3, #3
	bgt _08067AF8
	adds r0, r6, r3
	strb r4, [r0]
	adds r1, r3, #1
	ldrh r0, [r2, #2]
	cmp r0, #0
	bne _08067AD2
_08067AF8:
	mov r1, r8
	ldr r0, [r1]
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	strh r0, [r5, #0x10]
	movs r0, #1
	mov r7, sl
	lsls r0, r7
	ldrb r1, [r5, #0x13]
	orrs r0, r1
	strb r0, [r5, #0x13]
	ldrb r0, [r5, #0x12]
	adds r0, #1
	strb r0, [r5, #0x12]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08067B28
sub_08067B28: @ 0x08067B28
	push {r4, lr}
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r0, _08067B50 @ =0x030044CC
	ldr r0, [r0]
	adds r0, #0x14
	movs r2, #0
	movs r1, #0x12
	ldrsb r1, [r0, r1]
	cmp r2, r1
	bge _08067B5C
	adds r3, r1, #0
	adds r1, r0, #0
_08067B42:
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, r4
	bne _08067B54
	ldrb r0, [r1, #4]
	b _08067B5E
	.align 2, 0
_08067B50: .4byte 0x030044CC
_08067B54:
	adds r1, #1
	adds r2, #1
	cmp r2, r3
	blt _08067B42
_08067B5C:
	movs r0, #0
_08067B5E:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_08067B64
sub_08067B64: @ 0x08067B64
	push {r4, r5, lr}
	ldr r5, _08067BA4 @ =0x030044CC
	ldr r0, [r5]
	movs r1, #0x8c
	lsls r1, r1, #1
	adds r4, r0, r1
	ldrb r1, [r4, #0x14]
	cmp r1, #2
	bhi _08067BB6
	ldrb r0, [r4, #0x15]
	adds r0, #1
	strb r0, [r4, #0x15]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3b
	bls _08067BB6
	movs r0, #0
	strb r0, [r4, #0x15]
	adds r0, r1, #1
	strb r0, [r4, #0x14]
	ldrb r1, [r4, #0x14]
	adds r0, r4, #0
	bl sub_08067654
	ldrb r0, [r4, #0x14]
	cmp r0, #3
	bne _08067BAC
	ldr r0, [r5]
	ldr r2, _08067BA8 @ =0x0000014B
	adds r1, r0, r2
	movs r0, #2
	b _08067BB4
	.align 2, 0
_08067BA4: .4byte 0x030044CC
_08067BA8: .4byte 0x0000014B
_08067BAC:
	ldr r0, [r5]
	ldr r2, _08067BBC @ =0x0000014B
	adds r1, r0, r2
	movs r0, #1
_08067BB4:
	strb r0, [r1]
_08067BB6:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08067BBC: .4byte 0x0000014B

	thumb_func_start sub_08067BC0
sub_08067BC0: @ 0x08067BC0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	bl sub_08007BD4
	adds r7, r0, #0
	ldr r3, _08067C00 @ =0x030044CC
	ldrb r1, [r7]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r2, r0, #0
	adds r2, #0x28
	ldr r1, [r3]
	adds r2, r2, r1
	mov r8, r2
	adds r0, #0xb8
	adds r6, r1, r0
	ldr r2, _08067C04 @ =0x0000014B
	adds r0, r1, r2
	ldrb r4, [r0]
	cmp r4, #0
	bne _08067C08
	adds r0, r6, #0
	movs r1, #0
	movs r2, #0xff
	bl sub_08067504
	strb r4, [r7, #1]
	b _08067F16
	.align 2, 0
_08067C00: .4byte 0x030044CC
_08067C04: .4byte 0x0000014B
_08067C08:
	cmp r4, #1
	bne _08067C3E
	ldrb r0, [r6, #0x14]
	cmp r0, #0
	beq _08067C18
	cmp r0, #1
	beq _08067C24
	b _08067F16
_08067C18:
	adds r0, r6, #0
	movs r1, #1
	movs r2, #1
	bl sub_08067504
	b _08067F16
_08067C24:
	adds r0, r6, #0
	bl sub_08067550
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08067C32
	b _08067F16
_08067C32:
	adds r0, r6, #0
	movs r1, #2
	movs r2, #0xff
	bl sub_08067504
	b _08067F16
_08067C3E:
	ldrb r0, [r7, #1]
	cmp r0, #7
	bls _08067C46
	b _08067F16
_08067C46:
	lsls r0, r0, #2
	ldr r1, _08067C50 @ =_08067C54
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08067C50: .4byte _08067C54
_08067C54: @ jump table
	.4byte _08067C74 @ case 0
	.4byte _08067CC8 @ case 1
	.4byte _08067CEA @ case 2
	.4byte _08067D40 @ case 3
	.4byte _08067D80 @ case 4
	.4byte _08067E20 @ case 5
	.4byte _08067E4C @ case 6
	.4byte _08067EB8 @ case 7
_08067C74:
	adds r0, r6, #0
	movs r1, #3
	movs r2, #0xff
	bl sub_08067504
	movs r2, #0x80
	lsls r2, r2, #8
	mov r1, r8
	ldrb r0, [r1, #0x12]
	movs r4, #0xff
	subs r0, r4, r0
	lsls r0, r0, #6
	subs r2, r2, r0
	adds r0, r6, #0
	adds r1, r2, #0
	bl sub_080673E8
	adds r0, r6, #0
	bl sub_080673F8
	adds r0, r6, #0
	mov r1, sp
	bl sub_080673C8
	mov r0, sp
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0x3f
	bgt _08067CB0
	b _08067F16
_08067CB0:
	mov r1, r8
	ldrb r0, [r1, #0x12]
	subs r0, r4, r0
	cmp r0, #0
	bge _08067CBC
	adds r0, #0x3f
_08067CBC:
	asrs r0, r0, #6
	movs r1, #0
	strb r0, [r7, #3]
	strb r1, [r7, #2]
	movs r0, #1
	strb r0, [r7, #1]
_08067CC8:
	ldrb r2, [r7, #3]
	adds r0, r6, #0
	movs r1, #4
	bl sub_08067504
	ldrb r0, [r7, #3]
	cmp r0, #0
	beq _08067CE6
	adds r0, r6, #0
	bl sub_08067550
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08067CE6
	b _08067F16
_08067CE6:
	movs r0, #2
	strb r0, [r7, #1]
_08067CEA:
	adds r0, r6, #0
	movs r1, #5
	movs r2, #1
	bl sub_08067504
	adds r0, r6, #0
	mov r1, sp
	bl sub_080673C8
	mov r0, sp
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldrb r0, [r7, #2]
	lsls r0, r0, #5
	adds r0, #0x60
	cmp r1, r0
	bgt _08067D1C
	movs r1, #0x80
	lsls r1, r1, #8
	adds r0, r6, #0
	bl sub_080673E8
	adds r0, r6, #0
	bl sub_080673F8
_08067D1C:
	adds r0, r6, #0
	bl sub_08067550
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08067D2A
	b _08067F16
_08067D2A:
	ldrb r0, [r7, #2]
	adds r0, #1
	strb r0, [r7, #2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bhi _08067D3C
	movs r0, #1
	b _08067F14
_08067D3C:
	movs r0, #3
	b _08067F14
_08067D40:
	adds r0, r6, #0
	movs r1, #3
	movs r2, #0xff
	bl sub_08067504
	movs r2, #0x80
	lsls r2, r2, #8
	mov r0, r8
	ldrb r1, [r0, #0x12]
	movs r0, #0xff
	subs r0, r0, r1
	lsls r0, r0, #6
	subs r2, r2, r0
	adds r0, r6, #0
	adds r1, r2, #0
	bl sub_080673E8
	adds r0, r6, #0
	bl sub_080673F8
	adds r0, r6, #0
	mov r1, sp
	bl sub_080673C8
	mov r0, sp
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0xaf
	bgt _08067D7C
	b _08067F16
_08067D7C:
	movs r0, #4
	strb r0, [r7, #1]
_08067D80:
	mov r2, r8
	ldrb r0, [r2, #0x13]
	lsls r0, r0, #0x18
	cmp r0, #0
	bge _08067D8E
	movs r1, #6
	b _08067D98
_08067D8E:
	lsrs r0, r0, #0x18
	movs r1, #8
	cmp r0, #0x2f
	bls _08067D98
	movs r1, #7
_08067D98:
	adds r0, r6, #0
	movs r2, #0xff
	bl sub_08067504
	movs r2, #0x80
	lsls r2, r2, #8
	mov r1, r8
	ldrb r0, [r1, #0x13]
	movs r1, #0xff
	subs r1, r1, r0
	lsls r1, r1, #6
	subs r2, r2, r1
	adds r0, r6, #0
	adds r1, r2, #0
	bl sub_080673E8
	adds r0, r6, #0
	bl sub_080673F8
	adds r0, r6, #0
	mov r1, sp
	bl sub_080673C8
	ldrb r0, [r6, #0x14]
	cmp r0, #8
	bne _08067DE4
	mov r0, sp
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0xcf
	ble _08067DE4
	ldr r0, [r6, #4]
	cmp r0, #0
	bne _08067DE4
	ldrb r0, [r7]
	bl sub_08067564
	str r0, [r6, #4]
_08067DE4:
	ldrb r1, [r7]
	lsls r1, r1, #5
	mov r0, sp
	movs r2, #0
	ldrsh r0, [r0, r2]
	subs r0, #0xb0
	lsrs r2, r0, #0x1f
	adds r0, r0, r2
	asrs r0, r0, #1
	subs r0, #0x92
	subs r1, r1, r0
	lsls r1, r1, #0x10
	str r1, [r6, #0xc]
	mov r0, sp
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r0, _08067EC4 @ =0x0000014F
	cmp r1, r0
	bgt _08067E0C
	b _08067F16
_08067E0C:
	ldrb r0, [r6, #0x14]
	cmp r0, #8
	bne _08067E1C
	ldr r0, [r6, #4]
	bl sub_08009A00
	movs r0, #0
	str r0, [r6, #4]
_08067E1C:
	movs r0, #5
	strb r0, [r7, #1]
_08067E20:
	adds r0, r6, #0
	movs r1, #9
	movs r2, #1
	bl sub_08067504
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r6, #0
	adds r1, r2, #0
	bl sub_080673E8
	adds r0, r6, #0
	bl sub_080673F8
	adds r0, r6, #0
	bl sub_08067550
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08067F16
	movs r0, #6
	strb r0, [r7, #1]
_08067E4C:
	adds r0, r6, #0
	movs r1, #0xa
	movs r2, #0xff
	bl sub_08067504
	ldr r0, [r6, #0x10]
	movs r1, #0x80
	lsls r1, r1, #6
	mov sb, r1
	cmp r0, sb
	ble _08067E9A
	bl __floatsidf
	adds r5, r1, #0
	adds r4, r0, #0
	mov r2, r8
	ldrb r1, [r2, #0x14]
	movs r0, #0xff
	subs r0, r0, r1
	bl __floatsidf
	ldr r2, _08067EC8 @ =0x3FF80000
	ldr r3, _08067ECC @ =0x00000000
	bl __muldf3
	adds r3, r1, #0
	adds r2, r0, #0
	adds r1, r5, #0
	adds r0, r4, #0
	bl __subdf3
	bl __fixdfsi
	str r0, [r6, #0x10]
	ldr r1, _08067ED0 @ =0x00001FFF
	cmp r0, r1
	bgt _08067E9A
	mov r0, sb
	str r0, [r6, #0x10]
_08067E9A:
	adds r0, r6, #0
	bl sub_080673F8
	adds r0, r6, #0
	mov r1, sp
	bl sub_080673C8
	mov r0, sp
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r0, _08067ED4 @ =0x000001DF
	cmp r1, r0
	ble _08067F16
	movs r0, #7
	strb r0, [r7, #1]
_08067EB8:
	ldrb r0, [r6, #0x14]
	cmp r0, #0xa
	beq _08067ED8
	cmp r0, #0xb
	beq _08067EEA
	b _08067F16
	.align 2, 0
_08067EC4: .4byte 0x0000014F
_08067EC8: .4byte 0x3FF80000
_08067ECC: .4byte 0x00000000
_08067ED0: .4byte 0x00001FFF
_08067ED4: .4byte 0x000001DF
_08067ED8:
	adds r0, r6, #0
	movs r1, #0xb
	movs r2, #0xff
	bl sub_08067504
	ldrb r0, [r7]
	bl sub_08067A40
	b _08067F16
_08067EEA:
	adds r0, r6, #0
	bl sub_08067550
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08067F16
	ldrb r0, [r7]
	bl sub_08067B28
	adds r1, r0, #0
	lsls r1, r1, #0x18
	movs r0, #0xc0
	lsls r0, r0, #0x14
	adds r1, r1, r0
	lsrs r1, r1, #0x18
	adds r0, r6, #0
	movs r2, #0xff
	bl sub_08067504
	ldrb r0, [r7, #1]
	adds r0, #1
_08067F14:
	strb r0, [r7, #1]
_08067F16:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08067F24
sub_08067F24: @ 0x08067F24
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	lsls r1, r1, #0x18
	lsrs r3, r1, #0x18
	lsls r0, r0, #0x18
	asrs r2, r0, #0x18
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	beq _08067F90
	ldr r1, _08067F88 @ =0x030044CC
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	adds r0, #0x28
	ldr r1, [r1]
	adds r5, r1, r0
	lsls r1, r3, #0x18
	asrs r0, r1, #2
	movs r2, #0x80
	lsls r2, r2, #0x11
	adds r0, r0, r2
	lsrs r7, r0, #0x10
	adds r4, r7, #0
	mov r8, r1
	movs r6, #0xb
_08067F5C:
	ldrb r0, [r5]
	adds r5, #1
	bl sub_080050EC
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r0, r4, #5
	ldr r2, _08067F8C @ =0x06004000
	adds r0, r0, r2
	movs r2, #1
	str r2, [sp]
	movs r3, #0
	bl sub_08004BB8
	subs r6, #1
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r6, #0
	bge _08067F5C
	b _08067F96
	.align 2, 0
_08067F88: .4byte 0x030044CC
_08067F8C: .4byte 0x06004000
_08067F90:
	movs r7, #0xc0
	lsls r3, r3, #0x18
	mov r8, r3
_08067F96:
	mov r0, r8
	lsls r3, r0, #2
	lsrs r3, r3, #0x18
	movs r0, #0xc
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0x1b
	adds r1, r7, #0
	movs r2, #0
	bl sub_08004FD4
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08067FBC
sub_08067FBC: @ 0x08067FBC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _080680E4 @ =0x030044CC
	ldr r0, [r0]
	lsls r1, r1, #0x18
	asrs r4, r1, #0x18
	lsls r1, r4, #1
	adds r0, #0x1c
	adds r0, r0, r1
	ldrh r5, [r0]
	adds r0, r5, #0
	movs r1, #0x3c
	bl __umodsi3
	ldr r1, _080680E8 @ =0x00000683
	muls r0, r1, r0
	movs r1, #0xfa
	lsls r1, r1, #2
	bl __udivsi3
	adds r6, r0, #0
	cmp r6, #0x62
	bne _08067FF0
	movs r6, #0x63
_08067FF0:
	movs r1, #0xe1
	lsls r1, r1, #4
	adds r0, r5, #0
	bl __umodsi3
	movs r1, #0x3c
	bl __udivsi3
	adds r5, r0, #0
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	lsls r4, r4, #0x1a
	movs r0, #0x80
	lsls r0, r0, #0x12
	orrs r4, r0
	asrs r4, r4, #0x12
	ldr r0, _080680EC @ =0x0600D80C
	adds r7, r4, r0
	adds r0, r5, #0
	movs r1, #0xa
	bl __udivsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #8
	movs r1, #0xd0
	lsls r1, r1, #0x10
	adds r0, r0, r1
	lsrs r0, r0, #0x10
	movs r2, #0xe0
	lsls r2, r2, #8
	mov r8, r2
	adds r1, r0, #0
	mov r2, r8
	orrs r1, r2
	strh r1, [r7]
	ldr r2, _080680F0 @ =0x0600D84C
	adds r1, r4, r2
	adds r0, #0x20
	ldr r2, _080680F4 @ =0xFFFFE000
	mov sb, r2
	mov r2, sb
	orrs r0, r2
	strh r0, [r1]
	ldr r0, _080680F8 @ =0x0600D80E
	adds r7, r4, r0
	adds r0, r5, #0
	movs r1, #0xa
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #8
	movs r1, #0xd0
	lsls r1, r1, #0x10
	adds r0, r0, r1
	lsrs r0, r0, #0x10
	adds r1, r0, #0
	mov r2, r8
	orrs r1, r2
	strh r1, [r7]
	ldr r2, _080680FC @ =0x0600D84E
	adds r1, r4, r2
	adds r0, #0x20
	mov r2, sb
	orrs r0, r2
	strh r0, [r1]
	ldr r0, _08068100 @ =0x0600D810
	adds r7, r4, r0
	movs r0, #0xdb
	mov r1, r8
	orrs r0, r1
	strh r0, [r7]
	ldr r2, _08068104 @ =0x0600D850
	adds r1, r4, r2
	movs r0, #0xfb
	mov r2, sb
	orrs r0, r2
	strh r0, [r1]
	ldr r0, _08068108 @ =0x0600D812
	adds r7, r4, r0
	adds r0, r6, #0
	movs r1, #0xa
	bl __udivsi3
	adds r0, #0xd0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r0, #0
	mov r2, r8
	orrs r1, r2
	strh r1, [r7]
	ldr r2, _0806810C @ =0x0600D852
	adds r1, r4, r2
	adds r0, #0x20
	mov r2, sb
	orrs r0, r2
	strh r0, [r1]
	ldr r0, _08068110 @ =0x0600D814
	adds r7, r4, r0
	adds r0, r6, #0
	movs r1, #0xa
	bl __umodsi3
	adds r0, #0xd0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r0, #0
	mov r2, r8
	orrs r1, r2
	strh r1, [r7]
	ldr r1, _08068114 @ =0x0600D854
	adds r4, r4, r1
	adds r0, #0x20
	mov r2, sb
	orrs r0, r2
	strh r0, [r4]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080680E4: .4byte 0x030044CC
_080680E8: .4byte 0x00000683
_080680EC: .4byte 0x0600D80C
_080680F0: .4byte 0x0600D84C
_080680F4: .4byte 0xFFFFE000
_080680F8: .4byte 0x0600D80E
_080680FC: .4byte 0x0600D84E
_08068100: .4byte 0x0600D810
_08068104: .4byte 0x0600D850
_08068108: .4byte 0x0600D812
_0806810C: .4byte 0x0600D852
_08068110: .4byte 0x0600D814
_08068114: .4byte 0x0600D854

	thumb_func_start sub_08068118
sub_08068118: @ 0x08068118
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	movs r5, #0
	movs r4, #1
	ldr r7, _080681A8 @ =0x02037ED6
	movs r0, #0x6a
	adds r0, r0, r7
	mov sl, r0
	movs r1, #0x73
	adds r1, r1, r7
	mov sb, r1
	adds r6, r7, #0
	adds r6, #0x18
	movs r2, #1
_08068142:
	adds r0, r7, #0
	adds r0, #0x72
	ldrb r0, [r0]
	cmp r0, #0
	beq _0806818A
	mov r1, sl
	ldr r0, [r1]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x1c
	asrs r0, r4
	ands r0, r2
	cmp r0, #0
	beq _0806818A
	mov r0, sb
	ldrb r0, [r0]
	cmp r4, r0
	beq _08068176
	ldrb r0, [r6]
	cmp r0, #0
	beq _08068176
	cmp r0, #0x77
	beq _08068176
	str r2, [sp]
	bl sub_0800386C
	ldr r2, [sp]
_08068176:
	ldrb r1, [r6, #1]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, r8
	bne _0806818A
	adds r0, r2, #0
	lsls r0, r4
	orrs r5, r0
	lsls r0, r5, #0x18
	lsrs r5, r0, #0x18
_0806818A:
	adds r6, #0x18
	adds r4, #1
	cmp r4, #3
	ble _08068142
	movs r0, #1
	orrs r5, r0
	adds r0, r5, #0
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080681A8: .4byte 0x02037ED6

	thumb_func_start sub_080681AC
sub_080681AC: @ 0x080681AC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #4]
	movs r0, #0
	mov r8, r0
	movs r1, #1
	mov sb, r1
_080681C6:
	mov r1, r8
	lsls r0, r1, #1
	add r0, r8
	lsls r0, r0, #3
	ldr r1, _0806826C @ =0x02037ED6
	adds r6, r0, r1
	adds r0, #0x28
	ldr r1, _08068270 @ =0x030044CC
	ldr r2, [r1]
	adds r5, r2, r0
	ldr r4, [sp, #4]
	mov r0, r8
	asrs r4, r0
	mov r1, sb
	ands r4, r1
	cmp r4, #0
	beq _08068274
	movs r1, #0xa5
	lsls r1, r1, #1
	adds r0, r2, r1
	ldrb r4, [r0]
	mov r0, r8
	asrs r4, r0
	mov r1, sb
	ands r4, r1
	movs r0, #1
	add r0, r8
	mov sl, r0
	cmp r4, #0
	bne _080682DC
	adds r0, r6, #2
	adds r1, r5, #0
	movs r2, #6
	bl CpuSet
	strh r4, [r5, #0x16]
	movs r7, #0
	adds r2, r5, #0
	adds r2, #0x12
	mov r1, r8
	lsls r3, r1, #0x18
	adds r4, r5, #0
	adds r4, #0xc
	adds r6, #0xe
_0806821E:
	ldrh r0, [r6]
	strh r0, [r4]
	movs r1, #0
	ldrsh r0, [r4, r1]
	lsls r1, r7, #0x18
	lsrs r1, r1, #0x18
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	bl sub_0806797C
	ldr r2, [sp, #8]
	adds r1, r2, r7
	strb r0, [r1]
	ldrh r0, [r4]
	ldrh r1, [r5, #0x16]
	adds r0, r0, r1
	strh r0, [r5, #0x16]
	adds r4, #2
	adds r6, #2
	adds r7, #1
	ldr r3, [sp, #0xc]
	cmp r7, #2
	ble _0806821E
	asrs r1, r3, #0x18
	adds r0, r1, #0
	bl sub_08067F24
	ldr r1, _08068270 @ =0x030044CC
	ldr r0, [r1]
	movs r1, #0xa5
	lsls r1, r1, #1
	adds r2, r0, r1
	mov r0, sb
	mov r1, r8
	lsls r0, r1
	ldrb r1, [r2]
	orrs r0, r1
	b _080682DA
	.align 2, 0
_0806826C: .4byte 0x02037ED6
_08068270: .4byte 0x030044CC
_08068274:
	movs r1, #0xa5
	lsls r1, r1, #1
	adds r0, r2, r1
	ldrb r0, [r0]
	mov r1, r8
	asrs r0, r1
	mov r1, sb
	ands r0, r1
	movs r1, #1
	add r1, r8
	mov sl, r1
	cmp r0, #0
	beq _080682DC
	mov r0, sp
	strh r4, [r0]
	adds r1, r5, #0
	ldr r2, _080682F8 @ =0x01000006
	bl CpuSet
	strh r4, [r5, #0x16]
	movs r7, #0
	mov r0, r8
	lsls r3, r0, #0x18
	movs r6, #0
	movs r4, #0
	adds r2, r5, #0
	adds r2, #0x12
	adds r1, r5, #0
	adds r1, #0xc
_080682AE:
	strh r4, [r1]
	adds r0, r2, r7
	strb r6, [r0]
	adds r1, #2
	adds r7, #1
	cmp r7, #2
	ble _080682AE
	asrs r1, r3, #0x18
	movs r0, #1
	rsbs r0, r0, #0
	bl sub_08067F24
	ldr r1, _080682FC @ =0x030044CC
	ldr r0, [r1]
	movs r1, #0xa5
	lsls r1, r1, #1
	adds r2, r0, r1
	mov r1, sb
	mov r0, r8
	lsls r1, r0
	ldrb r0, [r2]
	bics r0, r1
_080682DA:
	strb r0, [r2]
_080682DC:
	mov r8, sl
	mov r1, r8
	cmp r1, #3
	bgt _080682E6
	b _080681C6
_080682E6:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080682F8: .4byte 0x01000006
_080682FC: .4byte 0x030044CC

	thumb_func_start sub_08068300
sub_08068300: @ 0x08068300
	push {r4, r5, r6, r7, lr}
	movs r4, #0
	ldr r5, _0806836C @ =0x02037EB0
	ldr r7, _08068370 @ =0x02034E98
	adds r6, r5, #0
	adds r6, #0x3a
_0806830C:
	adds r0, r5, #0
	adds r0, #0x99
	ldrb r0, [r0]
	cmp r4, r0
	beq _08068336
	adds r0, r5, #0
	adds r0, #0x90
	ldr r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	asrs r0, r4
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08068336
	ldrh r0, [r7, #6]
	ldrh r1, [r6]
	cmp r0, r1
	beq _08068336
	bl sub_0800386C
_08068336:
	adds r6, #0x18
	adds r4, #1
	cmp r4, #3
	ble _0806830C
	ldr r0, _0806836C @ =0x02037EB0
	adds r0, #0x90
	ldr r1, [r0]
	movs r0, #0xc0
	lsls r0, r0, #6
	ands r1, r0
	cmp r1, #0
	beq _08068378
	ldr r0, _08068374 @ =0x030044CC
	ldr r1, [r0]
	movs r2, #0xa6
	lsls r2, r2, #1
	adds r1, r1, r2
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1e
	bls _08068384
	bl sub_0800386C
	b _08068384
	.align 2, 0
_0806836C: .4byte 0x02037EB0
_08068370: .4byte 0x02034E98
_08068374: .4byte 0x030044CC
_08068378:
	ldr r0, _0806838C @ =0x030044CC
	ldr r0, [r0]
	movs r2, #0xa6
	lsls r2, r2, #1
	adds r0, r0, r2
	strb r1, [r0]
_08068384:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806838C: .4byte 0x030044CC

	thumb_func_start sub_08068390
sub_08068390: @ 0x08068390
	push {lr}
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	ldr r3, _080683B4 @ =0x02037EB0
	adds r0, r3, #0
	adds r0, #0x90
	ldr r0, [r0]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080683B8
	adds r0, r3, #0
	adds r0, #0x99
	ldrb r0, [r0]
	cmp r0, #0
	bne _080683CE
	movs r0, #1
	b _080683D0
	.align 2, 0
_080683B4: .4byte 0x02037EB0
_080683B8:
	adds r1, r3, #0
	adds r1, #0x99
	ldrb r0, [r1]
	cmp r0, #0
	beq _080683CE
	ldrb r1, [r1]
	asrs r2, r1
	movs r0, #1
	ands r2, r0
	cmp r2, #0
	bne _080683D0
_080683CE:
	movs r0, #0
_080683D0:
	pop {r1}
	bx r1

	thumb_func_start sub_080683D4
sub_080683D4: @ 0x080683D4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _08068488 @ =0x02037ED6
	mov sb, r0
	ldr r1, _0806848C @ =0x030024E0
	ldrh r2, [r1]
	movs r3, #0xc0
	lsls r3, r3, #3
	adds r0, r3, #0
	orrs r0, r2
	strh r0, [r1]
	ldr r0, _08068490 @ =0x0000FFA8
	strh r0, [r1, #0xc]
	adds r0, #0x48
	strh r0, [r1, #0x14]
	ldr r4, _08068494 @ =0x030044CC
	ldr r1, [r4]
	movs r0, #0x77
	strb r0, [r1]
	movs r0, #0
	bl sub_0800759C
	ldr r1, [r4]
	adds r1, #2
	movs r2, #6
	bl CpuSet
	ldr r0, [r4]
	adds r0, #0xe
	bl sub_08069E7C
	movs r0, #0
	movs r1, #0
	bl sub_0806723C
	movs r7, #0x28
	movs r5, #0
	mov r8, r4
	movs r6, #0xb8
_08068426:
	mov r1, r8
	ldr r0, [r1]
	adds r0, r0, r6
	lsls r1, r5, #0x18
	lsrs r1, r1, #0x18
	bl sub_0806747C
	mov r3, r8
	ldr r0, [r3]
	adds r0, r0, r6
	lsls r4, r7, #0x10
	asrs r4, r4, #0x10
	movs r1, #0x48
	adds r2, r4, #0
	bl sub_08067390
	adds r6, #0x18
	adds r5, #1
	adds r4, #0x20
	lsls r4, r4, #0x10
	lsrs r7, r4, #0x10
	cmp r5, #3
	ble _08068426
	bl sub_08067948
	movs r0, #7
	bl sub_080077C4
	movs r0, #0x20
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl sub_08008AF4
	ldr r0, _0806848C @ =0x030024E0
	adds r0, #0x4f
	movs r1, #1
	strb r1, [r0]
	bl sub_08008D34
	bl sub_080677F8
	movs r0, #1
	bl sub_08005A88
	movs r0, #0
	bl sub_080059E4
	b _080684B4
	.align 2, 0
_08068488: .4byte 0x02037ED6
_0806848C: .4byte 0x030024E0
_08068490: .4byte 0x0000FFA8
_08068494: .4byte 0x030044CC
_08068498:
	cmp r0, #1
	bne _0806852C
	ldr r0, _08068508 @ =0x0047003D
	bl sub_080062D0
	ldr r0, _0806850C @ =0x0047003E
	bl sub_080062D0
	ldr r0, _08068510 @ =0x0047003F
	bl sub_080062D0
	ldr r0, _08068514 @ =0x00470040
	bl sub_080062D0
_080684B4:
	ldr r0, _08068518 @ =0x0047003B
	bl sub_080062D0
	ldr r0, _0806851C @ =0x0047003C
	bl sub_0800648C
	bl sub_080064F8
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _08068498
	ldr r0, _08068520 @ =0x00470041
	bl sub_080062D0
	ldr r0, _08068524 @ =0x00470042
	bl sub_080062D0
	ldr r0, _08068528 @ =0x00470043
	bl sub_0800648C
	bl sub_080064F8
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080684B4
	movs r4, #0
_080684EA:
	bl sub_08005A2C
	bl sub_08005AB0
	lsls r0, r4, #0x18
	asrs r2, r0, #0x18
	movs r1, #1
	rsbs r1, r1, #0
	adds r7, r0, #0
	cmp r2, r1
	bne _08068540
	bl sub_08067870
	b _080686E2
	.align 2, 0
_08068508: .4byte 0x0047003D
_0806850C: .4byte 0x0047003E
_08068510: .4byte 0x0047003F
_08068514: .4byte 0x00470040
_08068518: .4byte 0x0047003B
_0806851C: .4byte 0x0047003C
_08068520: .4byte 0x00470041
_08068524: .4byte 0x00470042
_08068528: .4byte 0x00470043
_0806852C:
	movs r4, #0xff
	b _080684EA
_08068530:
	movs r0, #0xcc
	bl m4aSongNumStart
	mov r0, sb
	ldrb r4, [r0, #1]
	b _08068694
_0806853C:
	movs r4, #0xff
	b _08068694
_08068540:
	bl sub_08003468
	bl sub_08003510
	ldr r1, _080685AC @ =0x0203A300
	movs r0, #1
	strb r0, [r1]
	ldr r4, _080685B0 @ =0x02037EB0
	adds r5, r4, #0
	adds r5, #0x90
_08068554:
	adds r0, r4, #0
	adds r0, #0x98
	ldrb r0, [r0]
	cmp r0, #0
	beq _08068600
	bl sub_08068300
	adds r0, r4, #0
	adds r0, #0x99
	ldrb r0, [r0]
	cmp r0, #0
	bne _080685C4
	ldr r0, [r5]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080685C4
	movs r0, #1
	bl sub_08068118
	ldr r2, _080685B4 @ =0x030044CC
	ldr r1, [r2]
	movs r3, #0
	strb r0, [r1, #1]
	ldr r0, _080685B8 @ =0x030024B0
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080685CC
	mov r0, sb
	ldrb r1, [r0, #1]
	movs r0, #0xe
	ands r0, r1
	cmp r0, #0
	beq _080685BC
	ldr r0, [r2]
	ldrb r1, [r0, #1]
	movs r3, #0x80
	rsbs r3, r3, #0
	adds r2, r3, #0
	orrs r1, r2
	strb r1, [r0, #1]
	b _080685CC
	.align 2, 0
_080685AC: .4byte 0x0203A300
_080685B0: .4byte 0x02037EB0
_080685B4: .4byte 0x030044CC
_080685B8: .4byte 0x030024B0
_080685BC:
	movs r0, #0xd2
	bl m4aSongNumStart
	b _080685CC
_080685C4:
	ldr r0, _08068678 @ =0x030044CC
	ldr r1, [r0]
	movs r0, #1
	strb r0, [r1, #1]
_080685CC:
	ldr r0, _08068678 @ =0x030044CC
	ldr r1, [r0]
	ldr r0, _0806867C @ =0x00009999
	movs r2, #0x14
	bl sub_080038F4
	mov r0, sb
	ldrb r1, [r0, #1]
	movs r0, #0xf
	ands r0, r1
	bl sub_080681AC
	mov r1, sb
	movs r0, #1
	ldrsb r0, [r1, r0]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08068600
	mov r3, sb
	ldrb r0, [r3, #1]
	bl sub_08068390
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08068530
_08068600:
	ldr r0, _08068680 @ =0x030024B0
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0806864E
	adds r0, r4, #0
	adds r0, #0x99
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r0, #1
	rsbs r0, r0, #0
	bl sub_08067F24
	bl sub_080034DC
	bl sub_08005934
	ldr r0, _08068684 @ =0x00470044
	bl sub_080062D0
	ldr r0, _08068688 @ =0x00470045
	bl sub_0800648C
	bl sub_08005A2C
	bl sub_080064F8
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08068640
	b _0806853C
_08068640:
	bl sub_08003468
	bl sub_08003510
	ldr r1, _0806868C @ =0x0203A300
	movs r0, #1
	strb r0, [r1]
_0806864E:
	movs r0, #1
	bl sub_0806789C
	ldr r0, _08068690 @ =0x02037EB0
	adds r0, #0x99
	ldrb r0, [r0]
	cmp r0, #0
	bne _08068668
	ldr r0, [r5]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0806866E
_08068668:
	movs r0, #0
	mov r1, sb
	strb r0, [r1, #1]
_0806866E:
	movs r0, #1
	bl sub_08002B98
	b _08068554
	.align 2, 0
_08068678: .4byte 0x030044CC
_0806867C: .4byte 0x00009999
_08068680: .4byte 0x030024B0
_08068684: .4byte 0x00470044
_08068688: .4byte 0x00470045
_0806868C: .4byte 0x0203A300
_08068690: .4byte 0x02037EB0
_08068694:
	bl sub_08067870
	lsls r0, r4, #0x18
	asrs r2, r0, #0x18
	movs r1, #1
	rsbs r1, r1, #0
	adds r7, r0, #0
	cmp r2, r1
	beq _080686E2
	ldr r1, _08068718 @ =0x02037EB0
	adds r0, r1, #0
	adds r0, #0x99
	ldrb r0, [r0]
	cmp r0, #0
	bne _080686C0
	adds r0, r1, #0
	adds r0, #0x90
	ldr r0, [r0]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080686C8
_080686C0:
	ldr r0, _0806871C @ =0x030044CC
	ldr r1, [r0]
	movs r0, #2
	strb r0, [r1, #1]
_080686C8:
	mov r3, sb
	ldrb r1, [r3, #1]
	movs r0, #0xf
	ands r0, r1
	bl sub_08003860
	ldr r1, _08068718 @ =0x02037EB0
	movs r0, #1
	strb r0, [r1, #6]
	movs r0, #0
	movs r1, #0x20
	bl sub_080077EC
_080686E2:
	movs r0, #0x20
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl sub_080089E8
	bl sub_08008D34
	ldr r6, _0806871C @ =0x030044CC
	movs r4, #0xb8
	movs r5, #3
_080686F8:
	ldr r0, [r6]
	adds r0, r0, r4
	bl sub_08067364
	adds r4, #0x18
	subs r5, #1
	cmp r5, #0
	bge _080686F8
	asrs r0, r7, #0x18
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08068718: .4byte 0x02037EB0
_0806871C: .4byte 0x030044CC

	thumb_func_start sub_08068720
sub_08068720: @ 0x08068720
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	movs r0, #0
	str r0, [sp, #4]
	ldr r1, _080688AC @ =0x0600D800
	ldr r2, _080688B0 @ =0x01000200
	add r0, sp, #4
	bl CpuFastSet
	ldr r1, _080688B4 @ =0x030024E0
	ldrh r2, [r1]
	movs r3, #0xc0
	lsls r3, r3, #3
	adds r0, r3, #0
	orrs r0, r2
	strh r0, [r1]
	ldr r0, _080688B8 @ =0x0000FF98
	strh r0, [r1, #0xc]
	adds r0, #0x5c
	strh r0, [r1, #0x14]
	movs r0, #0
	movs r1, #0
	bl sub_0806723C
	movs r5, #0x28
	movs r7, #0
	movs r0, #0
	str r0, [sp, #0xc]
	mov r1, sp
	adds r1, #8
	str r1, [sp, #0x10]
	mov r2, sp
	adds r2, #9
	str r2, [sp, #0x14]
	ldr r3, _080688BC @ =0x030044CC
	mov sl, r3
	movs r0, #0x88
	str r0, [sp, #0x18]
	movs r1, #0xb8
	mov sb, r1
_08068778:
	mov r2, sl
	ldr r1, [r2]
	movs r3, #0xa5
	lsls r3, r3, #1
	adds r0, r1, r3
	ldrb r0, [r0]
	ldr r2, [sp, #0xc]
	asrs r0, r2
	movs r3, #1
	ands r0, r3
	cmp r0, #0
	beq _08068816
	adds r0, r1, #0
	adds r0, #0x14
	adds r0, r0, r7
	ldrb r6, [r0]
	adds r0, r1, #0
	adds r0, #0x18
	adds r0, r0, r7
	ldrb r4, [r0]
	mov r2, sb
	adds r0, r1, r2
	lsls r6, r6, #0x18
	lsrs r3, r6, #0x18
	mov r8, r3
	mov r1, r8
	bl sub_0806747C
	mov r1, sl
	ldr r0, [r1]
	add r0, sb
	lsls r4, r4, #0x18
	movs r2, #0xc0
	lsls r2, r2, #0x14
	adds r1, r4, r2
	lsrs r1, r1, #0x18
	movs r2, #0xff
	bl sub_08067504
	mov r3, sl
	ldr r0, [r3]
	add r0, sb
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	movs r1, #0x58
	adds r2, r5, #0
	bl sub_08067390
	mov r1, sl
	ldr r0, [r1]
	ldr r2, [sp, #0x18]
	adds r0, r0, r2
	lsrs r4, r4, #0x18
	str r5, [sp]
	mov r1, r8
	adds r2, r4, #0
	movs r3, #0x38
	bl sub_08067740
	asrs r6, r6, #0x18
	lsls r4, r7, #0x18
	asrs r4, r4, #0x18
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_08067F24
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_08067FBC
	ldr r3, [sp, #0x18]
	adds r3, #0xc
	str r3, [sp, #0x18]
	movs r0, #0x18
	add sb, r0
	adds r7, #1
	adds r5, #0x20
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
_08068816:
	ldr r1, [sp, #0xc]
	adds r1, #1
	str r1, [sp, #0xc]
	cmp r1, #3
	ble _08068778
	bl sub_08067948
	movs r0, #7
	bl sub_080077C4
	movs r0, #0x20
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl sub_08008AF4
	ldr r0, _080688B4 @ =0x030024E0
	adds r0, #0x4f
	movs r4, #0
	movs r2, #1
	strb r2, [r0]
	bl sub_08008D34
	bl sub_080677F8
	ldr r3, [sp, #0x10]
	strb r4, [r3]
	ldr r0, [sp, #0x14]
	strb r4, [r0]
	ldr r5, _080688C0 @ =0x02037EB0
	adds r6, r5, #0
	adds r6, #0x90
	ldr r4, [sp, #0x14]
_08068858:
	adds r0, r5, #0
	adds r0, #0x99
	ldrb r0, [r0]
	cmp r0, #0
	bne _08068888
	ldr r0, [r6]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08068888
	ldr r0, _080688C4 @ =0x030024B0
	ldrh r1, [r0]
	movs r2, #1
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0806887E
	ldr r1, [sp, #0x10]
	strb r2, [r1]
_0806887E:
	ldr r0, _080688C8 @ =0x00001234
	ldr r1, [sp, #0x10]
	movs r2, #1
	bl sub_080038F4
_08068888:
	movs r0, #0
	ldr r1, _080688C8 @ =0x00001234
	adds r2, r4, #0
	movs r3, #1
	bl sub_08003938
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bne _080688CC
	movs r0, #1
	bl sub_0806789C
	movs r0, #1
	bl sub_08002B98
	b _08068858
	.align 2, 0
_080688AC: .4byte 0x0600D800
_080688B0: .4byte 0x01000200
_080688B4: .4byte 0x030024E0
_080688B8: .4byte 0x0000FF98
_080688BC: .4byte 0x030044CC
_080688C0: .4byte 0x02037EB0
_080688C4: .4byte 0x030024B0
_080688C8: .4byte 0x00001234
_080688CC:
	movs r0, #0xcc
	bl m4aSongNumStart
	bl sub_08067870
	movs r0, #0x20
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl sub_080089E8
	bl sub_08008D34
	ldr r6, _08068918 @ =0x030044CC
	movs r5, #0x88
	movs r4, #0xb8
	movs r7, #3
_080688EE:
	ldr r0, [r6]
	adds r0, r0, r4
	bl sub_08067364
	ldr r0, [r6]
	adds r0, r0, r5
	bl sub_080677C4
	adds r5, #0xc
	adds r4, #0x18
	subs r7, #1
	cmp r7, #0
	bge _080688EE
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08068918: .4byte 0x030044CC

	thumb_func_start sub_0806891C
sub_0806891C: @ 0x0806891C
	push {r4, r5, lr}
	sub sp, #0xc
	ldr r1, _08068984 @ =0x0809030C
	mov r0, sp
	movs r2, #0xc
	bl memcpy
	movs r3, #0
	movs r1, #0
	ldr r0, _08068988 @ =0x030044CC
	ldr r0, [r0]
	adds r5, r0, #0
	adds r5, #0x34
_08068936:
	lsls r0, r1, #1
	adds r4, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r1, r0, r5
	movs r2, #2
_08068942:
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	ldrh r3, [r1]
	adds r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r1, #2
	subs r2, #1
	cmp r2, #0
	bge _08068942
	adds r1, r4, #0
	cmp r1, #3
	ble _08068936
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	movs r1, #6
	bl __modsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08068970
	rsbs r0, r0, #0
_08068970:
	lsls r0, r0, #0x10
	asrs r0, r0, #0xf
	add r0, sp
	ldrh r0, [r0]
	bl sub_080077C4
	add sp, #0xc
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08068984: .4byte 0x0809030C
_08068988: .4byte 0x030044CC

	thumb_func_start sub_0806898C
sub_0806898C: @ 0x0806898C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r2, _08068AC8 @ =0x030024E0
	ldrh r1, [r2]
	ldr r0, _08068ACC @ =0x0000F9FF
	ands r0, r1
	strh r0, [r2]
	movs r0, #0
	movs r1, #0x60
	bl sub_0806723C
	ldr r4, _08068AD0 @ =0x030044CC
	ldr r0, _08068AD4 @ =0x02037ED6
	adds r0, #0x73
	ldrb r0, [r0]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #3
	adds r1, #0xb8
	ldr r0, [r4]
	adds r0, r0, r1
	bl sub_080672CC
	movs r2, #0x92
	movs r5, #0
	mov sb, r4
	movs r7, #0xb8
	mov r8, r5
_080689CA:
	mov r0, sb
	ldr r1, [r0]
	movs r3, #0xa5
	lsls r3, r3, #1
	adds r0, r1, r3
	ldrb r0, [r0]
	asrs r0, r5
	movs r3, #1
	mov sl, r3
	ands r0, r3
	lsls r6, r2, #0x10
	cmp r0, #0
	beq _08068A26
	adds r0, r1, r7
	lsls r1, r5, #0x18
	lsrs r1, r1, #0x18
	bl sub_0806747C
	mov r1, sb
	ldr r0, [r1]
	adds r0, r0, r7
	asrs r2, r6, #0x10
	movs r1, #0x20
	bl sub_08067390
	adds r1, r5, #0
	subs r1, #0x70
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r0, _08068AD8 @ =sub_08067BC0
	movs r2, #0
	bl sub_08007968
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	bl sub_08007BBC
	movs r1, #0
	strb r5, [r0]
	strb r1, [r0, #1]
	mov r2, sb
	ldr r0, [r2]
	add r0, r8
	adds r0, #0xce
	strh r4, [r0]
_08068A26:
	adds r7, #0x18
	movs r3, #0x18
	add r8, r3
	adds r5, #1
	movs r1, #0x80
	lsls r1, r1, #0xe
	adds r0, r6, r1
	lsrs r2, r0, #0x10
	cmp r5, #3
	ble _080689CA
	ldr r5, _08068AD0 @ =0x030044CC
	ldr r0, [r5]
	movs r4, #0x8c
	lsls r4, r4, #1
	adds r0, r0, r4
	bl sub_080675DC
	ldr r0, [r5]
	adds r0, r0, r4
	movs r1, #0x38
	movs r2, #0x80
	bl sub_08067390
	bl sub_08067948
	bl sub_0806891C
	movs r0, #0x20
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl sub_08008AF4
	ldr r0, _08068AC8 @ =0x030024E0
	adds r0, #0x4f
	mov r2, sl
	strb r2, [r0]
	bl sub_08008D34
	ldr r0, _08068ADC @ =sub_08067B64
	movs r1, #0x90
	movs r2, #0
	bl sub_08007968
	ldr r1, [r5]
	movs r3, #0x97
	lsls r3, r3, #1
	adds r1, r1, r3
	strh r0, [r1]
	movs r5, #0
	ldr r6, _08068AE0 @ =0x02037EB0
	adds r7, r6, #0
	adds r7, #0x90
_08068A90:
	adds r0, r6, #0
	adds r0, #0x99
	ldrb r0, [r0]
	cmp r0, #0
	bne _08068AE6
	ldr r0, [r7]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08068AE6
	ldr r1, _08068AD4 @ =0x02037ED6
	ldrb r0, [r1, #1]
	movs r4, #0x7f
	ands r4, r0
	movs r0, #2
	bl sub_08068118
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r4, r0
	beq _08068AE4
	adds r5, #1
	cmp r5, #0xa
	ble _08068AE6
	bl sub_0800386C
	b _08068AE6
	.align 2, 0
_08068AC8: .4byte 0x030024E0
_08068ACC: .4byte 0x0000F9FF
_08068AD0: .4byte 0x030044CC
_08068AD4: .4byte 0x02037ED6
_08068AD8: .4byte sub_08067BC0
_08068ADC: .4byte sub_08067B64
_08068AE0: .4byte 0x02037EB0
_08068AE4:
	movs r5, #0
_08068AE6:
	ldr r4, _08068B54 @ =0x030044CC
	ldr r1, [r4]
	ldr r0, _08068B58 @ =0x00009999
	movs r2, #0x14
	bl sub_080038F4
	ldr r2, [r4]
	ldr r3, _08068B5C @ =0x0000014B
	adds r0, r2, r3
	ldrb r0, [r0]
	cmp r0, #2
	bne _08068B60
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r2, r1
	ldrh r1, [r0]
	adds r1, #1
	strh r1, [r0]
	adds r0, r2, #0
	adds r0, #0x27
	subs r3, #1
	adds r1, r2, r3
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bne _08068B60
	movs r0, #0xb4
	bl sub_08002B98
	ldr r0, [r4]
	movs r1, #0x97
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	bl sub_08007A08
	movs r0, #0
	movs r1, #0x20
	bl sub_080077EC
	movs r0, #0x20
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl sub_080089E8
	bl sub_08008D34
	movs r0, #0
	bl sub_080672CC
	movs r5, #0
	b _08068B6C
	.align 2, 0
_08068B54: .4byte 0x030044CC
_08068B58: .4byte 0x00009999
_08068B5C: .4byte 0x0000014B
_08068B60:
	bl sub_08067948
	movs r0, #1
	bl sub_08002B98
	b _08068A90
_08068B6C:
	ldr r6, _08068BC0 @ =0x030044CC
	ldr r2, [r6]
	movs r3, #0xa5
	lsls r3, r3, #1
	adds r0, r2, r3
	ldrb r0, [r0]
	asrs r0, r5
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08068B9E
	lsls r4, r5, #1
	adds r4, r4, r5
	lsls r4, r4, #3
	adds r0, r2, r4
	adds r0, #0xce
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	adds r4, #0xb8
	ldr r0, [r6]
	adds r0, r0, r4
	bl sub_08067364
_08068B9E:
	adds r5, #1
	cmp r5, #3
	ble _08068B6C
	ldr r0, [r6]
	movs r2, #0x8c
	lsls r2, r2, #1
	adds r0, r0, r2
	bl sub_08067364
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08068BC0: .4byte 0x030044CC

	thumb_func_start sub_08068BC4
sub_08068BC4: @ 0x08068BC4
	push {lr}
	bl sub_08066F1C
	bl sub_080683D4
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _08068BE2
	bl sub_0806898C
	bl sub_08068720
_08068BE2:
	bl sub_080034DC
	bl sub_080671E0
	movs r0, #0x2c
	bl sub_08008790
	bl sub_08002B0C
	pop {r0}
	bx r0

	thumb_func_start sub_08068BF8
sub_08068BF8: @ 0x08068BF8
	push {lr}
	adds r2, r0, #0
	cmp r2, #0x64
	bhi _08068C04
	movs r0, #0
	b _08068C9E
_08068C04:
	movs r1, #0xfa
	lsls r1, r1, #2
	cmp r2, r1
	bhi _08068C10
	movs r0, #1
	b _08068C9E
_08068C10:
	ldr r0, _08068C28 @ =0x00002328
	cmp r2, r0
	bhi _08068C30
	ldr r1, _08068C2C @ =0xFFFFFC17
	adds r0, r2, r1
	movs r1, #0xfa
	lsls r1, r1, #3
	bl __udivsi3
	adds r0, #2
	b _08068C7E
	.align 2, 0
_08068C28: .4byte 0x00002328
_08068C2C: .4byte 0xFFFFFC17
_08068C30:
	ldr r0, _08068C44 @ =0x00004E20
	cmp r2, r0
	bhi _08068C4C
	ldr r3, _08068C48 @ =0xFFFFDCD7
	adds r0, r2, r3
	bl __udivsi3
	adds r0, #7
	b _08068C7E
	.align 2, 0
_08068C44: .4byte 0x00004E20
_08068C48: .4byte 0xFFFFDCD7
_08068C4C:
	ldr r0, _08068C64 @ =0x00009C40
	cmp r2, r0
	bhi _08068C6C
	ldr r1, _08068C68 @ =0xFFFFB1DF
	adds r0, r2, r1
	movs r1, #0xfa
	lsls r1, r1, #1
	bl __udivsi3
	adds r0, #0x13
	b _08068C7E
	.align 2, 0
_08068C64: .4byte 0x00009C40
_08068C68: .4byte 0xFFFFB1DF
_08068C6C:
	ldr r0, _08068C84 @ =0x0000C350
	cmp r2, r0
	bhi _08068C8C
	ldr r3, _08068C88 @ =0xFFFF63BF
	adds r0, r2, r3
	movs r1, #0xfa
	bl __udivsi3
	adds r0, #0x3b
_08068C7E:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	b _08068C9E
	.align 2, 0
_08068C84: .4byte 0x0000C350
_08068C88: .4byte 0xFFFF63BF
_08068C8C:
	ldr r0, _08068C98 @ =0x000F423E
	cmp r2, r0
	bls _08068C9C
	movs r0, #0xc8
	b _08068C9E
	.align 2, 0
_08068C98: .4byte 0x000F423E
_08068C9C:
	movs r0, #0x96
_08068C9E:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08068CA4
sub_08068CA4: @ 0x08068CA4
	push {lr}
	cmp r0, #0
	bne _08068CAE
	movs r0, #0
	b _08068CDA
_08068CAE:
	cmp r0, #0xa
	bls _08068CD6
	cmp r0, #0xf
	bhi _08068CC4
	lsls r0, r0, #0x11
	ldr r1, _08068CC0 @ =0xFFF60000
	adds r0, r0, r1
	b _08068CD8
	.align 2, 0
_08068CC0: .4byte 0xFFF60000
_08068CC4:
	cmp r0, #0x14
	bls _08068CCC
	movs r0, #0x32
	b _08068CDA
_08068CCC:
	adds r1, r0, #0
	subs r1, #0x10
	lsls r0, r1, #1
	adds r0, r0, r1
	adds r0, #0x17
_08068CD6:
	lsls r0, r0, #0x10
_08068CD8:
	asrs r0, r0, #0x10
_08068CDA:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08068CE0
sub_08068CE0: @ 0x08068CE0
	push {lr}
	adds r1, r0, #0
	cmp r1, #0x64
	bhi _08068CEC
	movs r0, #0
	b _08068D48
_08068CEC:
	ldr r0, _08068D04 @ =0x000014B4
	cmp r1, r0
	bhi _08068D08
	adds r0, r1, #0
	subs r0, #0x65
	movs r1, #0xc8
	lsls r1, r1, #1
	bl __udivsi3
	adds r0, #1
	b _08068D44
	.align 2, 0
_08068D04: .4byte 0x000014B4
_08068D08:
	ldr r0, _08068D20 @ =0x00002648
	cmp r1, r0
	bhi _08068D28
	ldr r2, _08068D24 @ =0xFFFFEB4B
	adds r0, r1, r2
	movs r1, #0x96
	lsls r1, r1, #1
	bl __udivsi3
	adds r0, #0xe
	b _08068D44
	.align 2, 0
_08068D20: .4byte 0x00002648
_08068D24: .4byte 0xFFFFEB4B
_08068D28:
	ldr r0, _08068D34 @ =0x00002EE0
	cmp r1, r0
	bls _08068D38
	movs r0, #0x32
	b _08068D48
	.align 2, 0
_08068D34: .4byte 0x00002EE0
_08068D38:
	ldr r2, _08068D4C @ =0xFFFFD9B7
	adds r0, r1, r2
	movs r1, #0xc8
	bl __udivsi3
	adds r0, #0x1e
_08068D44:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
_08068D48:
	pop {r1}
	bx r1
	.align 2, 0
_08068D4C: .4byte 0xFFFFD9B7

	thumb_func_start sub_08068D50
sub_08068D50: @ 0x08068D50
	push {lr}
	adds r1, r0, #0
	ldr r0, _08068D60 @ =0x0000464F
	cmp r1, r0
	bls _08068D64
	movs r0, #0
	b _08068DCE
	.align 2, 0
_08068D60: .4byte 0x0000464F
_08068D64:
	ldr r0, _08068D70 @ =0x00001C1F
	cmp r1, r0
	bls _08068D74
	movs r0, #1
	b _08068DCE
	.align 2, 0
_08068D70: .4byte 0x00001C1F
_08068D74:
	ldr r0, _08068D8C @ =0x00000E0F
	cmp r1, r0
	bls _08068D90
	movs r0, #0xe1
	lsls r0, r0, #5
	subs r0, r0, r1
	movs r1, #0x96
	lsls r1, r1, #2
	bl __udivsi3
	adds r0, #2
	b _08068DCA
	.align 2, 0
_08068D8C: .4byte 0x00000E0F
_08068D90:
	ldr r0, _08068DA8 @ =0x00000707
	cmp r1, r0
	bls _08068DAC
	movs r0, #0xe1
	lsls r0, r0, #4
	subs r0, r0, r1
	movs r1, #0x96
	lsls r1, r1, #1
	bl __udivsi3
	adds r0, #9
	b _08068DCA
	.align 2, 0
_08068DA8: .4byte 0x00000707
_08068DAC:
	ldr r0, _08068DB8 @ =0x000004AF
	cmp r1, r0
	bhi _08068DBC
	movs r0, #0x1e
	b _08068DCE
	.align 2, 0
_08068DB8: .4byte 0x000004AF
_08068DBC:
	movs r0, #0xe1
	lsls r0, r0, #3
	subs r0, r0, r1
	movs r1, #0x78
	bl __udivsi3
	adds r0, #0x10
_08068DCA:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
_08068DCE:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08068DD4
sub_08068DD4: @ 0x08068DD4
	push {lr}
	adds r1, r0, #0
	ldr r0, _08068DE4 @ =0x0000464F
	cmp r1, r0
	bls _08068DE8
	movs r0, #0
	b _08068E56
	.align 2, 0
_08068DE4: .4byte 0x0000464F
_08068DE8:
	ldr r0, _08068DF4 @ =0x00002A2F
	cmp r1, r0
	bls _08068DF8
	movs r0, #1
	b _08068E56
	.align 2, 0
_08068DF4: .4byte 0x00002A2F
_08068DF8:
	ldr r0, _08068E10 @ =0x00001C1F
	cmp r1, r0
	bls _08068E18
	ldr r0, _08068E14 @ =0x00002A30
	subs r0, r0, r1
	movs r1, #0x96
	lsls r1, r1, #2
	bl __udivsi3
	adds r0, #2
	b _08068E52
	.align 2, 0
_08068E10: .4byte 0x00001C1F
_08068E14: .4byte 0x00002A30
_08068E18:
	ldr r0, _08068E30 @ =0x00000E0F
	cmp r1, r0
	bls _08068E34
	movs r0, #0xe1
	lsls r0, r0, #5
	subs r0, r0, r1
	movs r1, #0x96
	lsls r1, r1, #1
	bl __udivsi3
	adds r0, #9
	b _08068E52
	.align 2, 0
_08068E30: .4byte 0x00000E0F
_08068E34:
	ldr r0, _08068E40 @ =0x0000095F
	cmp r1, r0
	bhi _08068E44
	movs r0, #0x28
	b _08068E56
	.align 2, 0
_08068E40: .4byte 0x0000095F
_08068E44:
	movs r0, #0xe1
	lsls r0, r0, #4
	subs r0, r0, r1
	movs r1, #0x78
	bl __udivsi3
	adds r0, #0x15
_08068E52:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
_08068E56:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08068E5C
sub_08068E5C: @ 0x08068E5C
	push {lr}
	adds r1, r0, #0
	cmp r1, #0xa
	bhi _08068E68
	movs r0, #0
	b _08068F10
_08068E68:
	ldr r0, _08068E7C @ =0x000007DA
	cmp r1, r0
	bhi _08068E80
	adds r0, r1, #0
	subs r0, #0xb
	movs r1, #0x64
	bl __udivsi3
	adds r0, #1
	b _08068F0C
	.align 2, 0
_08068E7C: .4byte 0x000007DA
_08068E80:
	ldr r0, _08068E94 @ =0x00000EE2
	cmp r1, r0
	bhi _08068E9C
	ldr r2, _08068E98 @ =0xFFFFF825
	adds r0, r1, r2
	movs r1, #0x5a
	bl __udivsi3
	adds r0, #0x15
	b _08068F0C
	.align 2, 0
_08068E94: .4byte 0x00000EE2
_08068E98: .4byte 0xFFFFF825
_08068E9C:
	ldr r0, _08068EB0 @ =0x00001522
	cmp r1, r0
	bhi _08068EB8
	ldr r2, _08068EB4 @ =0xFFFFF11D
	adds r0, r1, r2
	movs r1, #0x50
	bl __udivsi3
	adds r0, #0x29
	b _08068F0C
	.align 2, 0
_08068EB0: .4byte 0x00001522
_08068EB4: .4byte 0xFFFFF11D
_08068EB8:
	ldr r0, _08068ECC @ =0x00001A9A
	cmp r1, r0
	bhi _08068ED4
	ldr r2, _08068ED0 @ =0xFFFFEADD
	adds r0, r1, r2
	movs r1, #0x46
	bl __udivsi3
	adds r0, #0x3d
	b _08068F0C
	.align 2, 0
_08068ECC: .4byte 0x00001A9A
_08068ED0: .4byte 0xFFFFEADD
_08068ED4:
	ldr r0, _08068EE8 @ =0x00001F4A
	cmp r1, r0
	bhi _08068EF0
	ldr r2, _08068EEC @ =0xFFFFE565
	adds r0, r1, r2
	movs r1, #0x3c
	bl __udivsi3
	adds r0, #0x51
	b _08068F0C
	.align 2, 0
_08068EE8: .4byte 0x00001F4A
_08068EEC: .4byte 0xFFFFE565
_08068EF0:
	ldr r0, _08068EFC @ =0x00002332
	cmp r1, r0
	bls _08068F00
	movs r0, #0x96
	b _08068F10
	.align 2, 0
_08068EFC: .4byte 0x00002332
_08068F00:
	ldr r2, _08068F14 @ =0xFFFFE0B5
	adds r0, r1, r2
	movs r1, #0x32
	bl __udivsi3
	adds r0, #0x65
_08068F0C:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
_08068F10:
	pop {r1}
	bx r1
	.align 2, 0
_08068F14: .4byte 0xFFFFE0B5

	thumb_func_start sub_08068F18
sub_08068F18: @ 0x08068F18
	push {lr}
	adds r1, r0, #0
	cmp r1, #0xa
	bhi _08068F24
	movs r0, #0
	b _08068FB0
_08068F24:
	ldr r0, _08068F38 @ =0x000003F2
	cmp r1, r0
	bhi _08068F3C
	adds r0, r1, #0
	subs r0, #0xb
	movs r1, #0x32
	bl __udivsi3
	adds r0, #1
	b _08068FAC
	.align 2, 0
_08068F38: .4byte 0x000003F2
_08068F3C:
	ldr r0, _08068F50 @ =0x00000712
	cmp r1, r0
	bhi _08068F58
	ldr r2, _08068F54 @ =0xFFFFFC0D
	adds r0, r1, r2
	movs r1, #0x28
	bl __udivsi3
	adds r0, #0x15
	b _08068FAC
	.align 2, 0
_08068F50: .4byte 0x00000712
_08068F54: .4byte 0xFFFFFC0D
_08068F58:
	ldr r0, _08068F6C @ =0x0000096A
	cmp r1, r0
	bhi _08068F74
	ldr r2, _08068F70 @ =0xFFFFF8ED
	adds r0, r1, r2
	movs r1, #0x1e
	bl __udivsi3
	adds r0, #0x29
	b _08068FAC
	.align 2, 0
_08068F6C: .4byte 0x0000096A
_08068F70: .4byte 0xFFFFF8ED
_08068F74:
	ldr r0, _08068F88 @ =0x00000AFA
	cmp r1, r0
	bhi _08068F90
	ldr r2, _08068F8C @ =0xFFFFF695
	adds r0, r1, r2
	movs r1, #0x14
	bl __udivsi3
	adds r0, #0x3d
	b _08068FAC
	.align 2, 0
_08068F88: .4byte 0x00000AFA
_08068F8C: .4byte 0xFFFFF695
_08068F90:
	ldr r0, _08068F9C @ =0x00000BC2
	cmp r1, r0
	bls _08068FA0
	movs r0, #0x6e
	b _08068FB0
	.align 2, 0
_08068F9C: .4byte 0x00000BC2
_08068FA0:
	ldr r2, _08068FB4 @ =0xFFFFF505
	adds r0, r1, r2
	movs r1, #0xa
	bl __udivsi3
	adds r0, #0x51
_08068FAC:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
_08068FB0:
	pop {r1}
	bx r1
	.align 2, 0
_08068FB4: .4byte 0xFFFFF505

	thumb_func_start sub_08068FB8
sub_08068FB8: @ 0x08068FB8
	push {lr}
	adds r1, r0, #0
	ldr r0, _08068FC8 @ =0x0000464F
	cmp r1, r0
	bls _08068FCC
	movs r0, #0
	b _0806903A
	.align 2, 0
_08068FC8: .4byte 0x0000464F
_08068FCC:
	ldr r0, _08068FD8 @ =0x00002A2F
	cmp r1, r0
	bls _08068FDC
	movs r0, #1
	b _0806903A
	.align 2, 0
_08068FD8: .4byte 0x00002A2F
_08068FDC:
	ldr r0, _08068FF4 @ =0x00001C1F
	cmp r1, r0
	bls _08068FFC
	ldr r0, _08068FF8 @ =0x00002A30
	subs r0, r0, r1
	movs r1, #0x96
	lsls r1, r1, #2
	bl __udivsi3
	adds r0, #2
	b _08069036
	.align 2, 0
_08068FF4: .4byte 0x00001C1F
_08068FF8: .4byte 0x00002A30
_08068FFC:
	ldr r0, _08069014 @ =0x00000E0F
	cmp r1, r0
	bls _08069018
	movs r0, #0xe1
	lsls r0, r0, #5
	subs r0, r0, r1
	movs r1, #0x96
	lsls r1, r1, #1
	bl __udivsi3
	adds r0, #9
	b _08069036
	.align 2, 0
_08069014: .4byte 0x00000E0F
_08069018:
	ldr r0, _08069024 @ =0x0000095F
	cmp r1, r0
	bhi _08069028
	movs r0, #0x28
	b _0806903A
	.align 2, 0
_08069024: .4byte 0x0000095F
_08069028:
	movs r0, #0xe1
	lsls r0, r0, #4
	subs r0, r0, r1
	movs r1, #0x78
	bl __udivsi3
	adds r0, #0x15
_08069036:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
_0806903A:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08069040
sub_08069040: @ 0x08069040
	push {lr}
	adds r1, r0, #0
	cmp r1, #0x64
	bhi _0806904C
	movs r0, #0
	b _080690E0
_0806904C:
	ldr r0, _08069064 @ =0x00000A28
	cmp r1, r0
	bhi _08069068
	adds r0, r1, #0
	subs r0, #0x65
	movs r1, #0xfa
	lsls r1, r1, #1
	bl __udivsi3
	adds r0, #1
	b _080690DC
	.align 2, 0
_08069064: .4byte 0x00000A28
_08069068:
	ldr r0, _08069080 @ =0x00000ED8
	cmp r1, r0
	bhi _08069088
	ldr r2, _08069084 @ =0xFFFFF5D7
	adds r0, r1, r2
	movs r1, #0x96
	lsls r1, r1, #1
	bl __udivsi3
	adds r0, #6
	b _080690DC
	.align 2, 0
_08069080: .4byte 0x00000ED8
_08069084: .4byte 0xFFFFF5D7
_08069088:
	movs r0, #0x96
	lsls r0, r0, #5
	cmp r1, r0
	bhi _080690A4
	ldr r2, _080690A0 @ =0xFFFFF127
	adds r0, r1, r2
	movs r1, #0xc8
	bl __udivsi3
	adds r0, #0xb
	b _080690DC
	.align 2, 0
_080690A0: .4byte 0xFFFFF127
_080690A4:
	ldr r0, _080690B8 @ =0x000016A8
	cmp r1, r0
	bhi _080690C0
	ldr r2, _080690BC @ =0xFFFFED3F
	adds r0, r1, r2
	movs r1, #0x64
	bl __udivsi3
	adds r0, #0x10
	b _080690DC
	.align 2, 0
_080690B8: .4byte 0x000016A8
_080690BC: .4byte 0xFFFFED3F
_080690C0:
	ldr r0, _080690CC @ =0x0000189C
	cmp r1, r0
	bls _080690D0
	movs r0, #0x32
	b _080690E0
	.align 2, 0
_080690CC: .4byte 0x0000189C
_080690D0:
	ldr r2, _080690E4 @ =0xFFFFE957
	adds r0, r1, r2
	movs r1, #0x32
	bl __udivsi3
	adds r0, #0x1a
_080690DC:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
_080690E0:
	pop {r1}
	bx r1
	.align 2, 0
_080690E4: .4byte 0xFFFFE957

	thumb_func_start sub_080690E8
sub_080690E8: @ 0x080690E8
	push {lr}
	adds r1, r0, #0
	ldr r0, _080690F8 @ =0x000005DC
	cmp r1, r0
	bhi _080690FC
	movs r0, #0
	b _0806919C
	.align 2, 0
_080690F8: .4byte 0x000005DC
_080690FC:
	ldr r0, _08069114 @ =0x0000157C
	cmp r1, r0
	bhi _0806911C
	ldr r2, _08069118 @ =0xFFFFFA23
	adds r0, r1, r2
	movs r1, #0xfa
	lsls r1, r1, #2
	bl __udivsi3
	adds r0, #1
	b _08069198
	.align 2, 0
_08069114: .4byte 0x0000157C
_08069118: .4byte 0xFFFFFA23
_0806911C:
	ldr r0, _08069134 @ =0x0000251C
	cmp r1, r0
	bhi _0806913C
	ldr r2, _08069138 @ =0xFFFFEA83
	adds r0, r1, r2
	movs r1, #0xc8
	lsls r1, r1, #2
	bl __udivsi3
	adds r0, #6
	b _08069198
	.align 2, 0
_08069134: .4byte 0x0000251C
_08069138: .4byte 0xFFFFEA83
_0806913C:
	ldr r0, _08069154 @ =0x00002EE0
	cmp r1, r0
	bhi _0806915C
	ldr r2, _08069158 @ =0xFFFFDAE3
	adds r0, r1, r2
	movs r1, #0xfa
	lsls r1, r1, #1
	bl __udivsi3
	adds r0, #0xb
	b _08069198
	.align 2, 0
_08069154: .4byte 0x00002EE0
_08069158: .4byte 0xFFFFDAE3
_0806915C:
	ldr r0, _08069174 @ =0x00003A98
	cmp r1, r0
	bhi _0806917C
	ldr r2, _08069178 @ =0xFFFFD11F
	adds r0, r1, r2
	movs r1, #0x96
	lsls r1, r1, #1
	bl __udivsi3
	adds r0, #0x10
	b _08069198
	.align 2, 0
_08069174: .4byte 0x00003A98
_08069178: .4byte 0xFFFFD11F
_0806917C:
	ldr r0, _08069188 @ =0x00004268
	cmp r1, r0
	bls _0806918C
	movs r0, #0x32
	b _0806919C
	.align 2, 0
_08069188: .4byte 0x00004268
_0806918C:
	ldr r2, _080691A0 @ =0xFFFFC567
	adds r0, r1, r2
	movs r1, #0xc8
	bl __udivsi3
	adds r0, #0x1a
_08069198:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
_0806919C:
	pop {r1}
	bx r1
	.align 2, 0
_080691A0: .4byte 0xFFFFC567

	thumb_func_start sub_080691A4
sub_080691A4: @ 0x080691A4
	push {lr}
	cmp r0, #0
	bne _080691AE
	movs r0, #0
	b _080691FC
_080691AE:
	cmp r0, #0x28
	bhi _080691BC
	subs r0, #1
	lsrs r0, r0, #2
	adds r0, #1
	lsls r0, r0, #0x10
	b _080691FA
_080691BC:
	cmp r0, #0x46
	bhi _080691CE
	subs r0, #0x29
	movs r1, #3
	bl __udivsi3
	adds r0, #0xb
	lsls r0, r0, #0x10
	b _080691FA
_080691CE:
	cmp r0, #0x5a
	bhi _080691DC
	subs r0, #0x47
	lsrs r0, r0, #1
	adds r0, #0x15
	lsls r0, r0, #0x10
	b _080691FA
_080691DC:
	cmp r0, #0x64
	bhi _080691EC
	ldr r1, _080691E8 @ =0x0000FFC4
	adds r0, r0, r1
	lsls r0, r0, #0x10
	b _080691FA
	.align 2, 0
_080691E8: .4byte 0x0000FFC4
_080691EC:
	cmp r0, #0x6e
	bls _080691F4
	movs r0, #0x46
	b _080691FC
_080691F4:
	lsls r0, r0, #0x11
	ldr r1, _08069200 @ =0xFF600000
	adds r0, r0, r1
_080691FA:
	asrs r0, r0, #0x10
_080691FC:
	pop {r1}
	bx r1
	.align 2, 0
_08069200: .4byte 0xFF600000

	thumb_func_start sub_08069204
sub_08069204: @ 0x08069204
	push {lr}
	adds r1, r0, #0
	cmp r1, #0x64
	bhi _08069210
	movs r0, #0
	b _080692CE
_08069210:
	ldr r0, _08069224 @ =0x00007594
	cmp r1, r0
	bhi _0806922C
	adds r0, r1, #0
	subs r0, #0x65
	ldr r1, _08069228 @ =0x000005DC
	bl __udivsi3
	adds r0, #1
	b _080692CA
	.align 2, 0
_08069224: .4byte 0x00007594
_08069228: .4byte 0x000005DC
_0806922C:
	ldr r0, _08069244 @ =0x0000D354
	cmp r1, r0
	bhi _0806924C
	ldr r2, _08069248 @ =0xFFFF8A6B
	adds r0, r1, r2
	movs r1, #0x96
	lsls r1, r1, #3
	bl __udivsi3
	adds r0, #0x15
	b _080692CA
	.align 2, 0
_08069244: .4byte 0x0000D354
_08069248: .4byte 0xFFFF8A6B
_0806924C:
	ldr r0, _08069264 @ =0x00012174
	cmp r1, r0
	bhi _0806926C
	ldr r2, _08069268 @ =0xFFFF2CAB
	adds r0, r1, r2
	movs r1, #0xfa
	lsls r1, r1, #2
	bl __udivsi3
	adds r0, #0x29
	b _080692CA
	.align 2, 0
_08069264: .4byte 0x00012174
_08069268: .4byte 0xFFFF2CAB
_0806926C:
	ldr r0, _08069284 @ =0x000140B4
	cmp r1, r0
	bhi _0806928C
	ldr r2, _08069288 @ =0xFFFEDE8B
	adds r0, r1, r2
	movs r1, #0xc8
	lsls r1, r1, #2
	bl __udivsi3
	adds r0, #0x3d
	b _080692CA
	.align 2, 0
_08069284: .4byte 0x000140B4
_08069288: .4byte 0xFFFEDE8B
_0806928C:
	ldr r0, _080692A4 @ =0x0001543C
	cmp r1, r0
	bhi _080692AC
	ldr r2, _080692A8 @ =0xFFFEBF4B
	adds r0, r1, r2
	movs r1, #0xfa
	lsls r1, r1, #1
	bl __udivsi3
	adds r0, #0x47
	b _080692CA
	.align 2, 0
_080692A4: .4byte 0x0001543C
_080692A8: .4byte 0xFFFEBF4B
_080692AC:
	ldr r0, _080692B8 @ =0x00015FF4
	cmp r1, r0
	bls _080692BC
	movs r0, #0x64
	b _080692CE
	.align 2, 0
_080692B8: .4byte 0x00015FF4
_080692BC:
	ldr r2, _080692D4 @ =0xFFFEABC3
	adds r0, r1, r2
	movs r1, #0x96
	lsls r1, r1, #1
	bl __udivsi3
	adds r0, #0x51
_080692CA:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
_080692CE:
	pop {r1}
	bx r1
	.align 2, 0
_080692D4: .4byte 0xFFFEABC3

	thumb_func_start sub_080692D8
sub_080692D8: @ 0x080692D8
	push {lr}
	adds r1, r0, #0
	cmp r1, #0xfa
	bhi _080692E4
	movs r0, #0
	b _08069330
_080692E4:
	movs r0, #0xaf
	lsls r0, r0, #2
	cmp r1, r0
	bhi _080692FA
	adds r0, r1, #0
	subs r0, #0xfb
	movs r1, #0x32
	bl __udivsi3
	adds r0, #1
	b _0806932C
_080692FA:
	movs r0, #0xcd
	lsls r0, r0, #2
	cmp r1, r0
	bhi _08069314
	ldr r2, _08069310 @ =0xFFFFFD43
	adds r0, r1, r2
	movs r1, #0x14
	bl __udivsi3
	adds r0, #0xb
	b _0806932C
	.align 2, 0
_08069310: .4byte 0xFFFFFD43
_08069314:
	movs r0, #0xe6
	lsls r0, r0, #2
	cmp r1, r0
	bls _08069320
	movs r0, #0x23
	b _08069330
_08069320:
	ldr r2, _08069334 @ =0xFFFFFCCB
	adds r0, r1, r2
	movs r1, #0xa
	bl __udivsi3
	adds r0, #0x12
_0806932C:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
_08069330:
	pop {r1}
	bx r1
	.align 2, 0
_08069334: .4byte 0xFFFFFCCB

	thumb_func_start sub_08069338
sub_08069338: @ 0x08069338
	push {lr}
	adds r1, r0, #0
	cmp r1, #0
	bne _08069344
	movs r0, #0
	b _0806939A
_08069344:
	cmp r1, #0x64
	bhi _08069354
	subs r0, r1, #1
	movs r1, #5
	bl __udivsi3
	adds r0, #1
	b _08069396
_08069354:
	cmp r1, #0xb4
	bhi _08069362
	adds r0, r1, #0
	subs r0, #0x65
	lsrs r0, r0, #2
	adds r0, #0x15
	b _08069396
_08069362:
	cmp r1, #0xf0
	bhi _08069374
	adds r0, r1, #0
	subs r0, #0xb5
	movs r1, #3
	bl __udivsi3
	adds r0, #0x29
	b _08069396
_08069374:
	movs r0, #0x8c
	lsls r0, r0, #1
	cmp r1, r0
	bhi _08069386
	adds r0, r1, #0
	subs r0, #0xf1
	lsrs r0, r0, #1
	adds r0, #0x3d
	b _08069396
_08069386:
	movs r0, #0x96
	lsls r0, r0, #1
	cmp r1, r0
	bls _08069392
	movs r0, #0x6e
	b _0806939A
_08069392:
	ldr r2, _080693A0 @ =0x0000FF38
	adds r0, r1, r2
_08069396:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
_0806939A:
	pop {r1}
	bx r1
	.align 2, 0
_080693A0: .4byte 0x0000FF38

	thumb_func_start sub_080693A4
sub_080693A4: @ 0x080693A4
	push {lr}
	adds r2, r0, #0
	cmp r2, #0x64
	bhi _080693B0
	movs r0, #0
	b _0806946E
_080693B0:
	movs r1, #0xfa
	lsls r1, r1, #2
	cmp r2, r1
	bhi _080693BC
	movs r0, #1
	b _0806946E
_080693BC:
	ldr r0, _080693D4 @ =0x00002328
	cmp r2, r0
	bhi _080693DC
	ldr r1, _080693D8 @ =0xFFFFFC17
	adds r0, r2, r1
	movs r1, #0xfa
	lsls r1, r1, #3
	bl __udivsi3
	adds r0, #2
	b _0806944A
	.align 2, 0
_080693D4: .4byte 0x00002328
_080693D8: .4byte 0xFFFFFC17
_080693DC:
	ldr r0, _080693F4 @ =0x0000DEA8
	cmp r2, r0
	bhi _080693FC
	ldr r3, _080693F8 @ =0xFFFFDCD7
	adds r0, r2, r3
	movs r1, #0xfa
	lsls r1, r1, #4
	bl __udivsi3
	adds r0, #7
	b _0806944A
	.align 2, 0
_080693F4: .4byte 0x0000DEA8
_080693F8: .4byte 0xFFFFDCD7
_080693FC:
	ldr r0, _08069410 @ =0x000153D8
	cmp r2, r0
	bhi _0806941C
	ldr r1, _08069414 @ =0xFFFF2157
	adds r0, r2, r1
	ldr r1, _08069418 @ =0x000005DC
	bl __udivsi3
	adds r0, #0x12
	b _0806944A
	.align 2, 0
_08069410: .4byte 0x000153D8
_08069414: .4byte 0xFFFF2157
_08069418: .4byte 0x000005DC
_0806941C:
	ldr r0, _08069430 @ =0x000186A0
	cmp r2, r0
	bhi _08069438
	ldr r3, _08069434 @ =0xFFFEAC27
	adds r0, r2, r3
	bl __udivsi3
	adds r0, #0x26
	b _0806944A
	.align 2, 0
_08069430: .4byte 0x000186A0
_08069434: .4byte 0xFFFEAC27
_08069438:
	ldr r0, _08069450 @ =0x00030D40
	cmp r2, r0
	bhi _0806945C
	ldr r1, _08069454 @ =0xFFFE795F
	adds r0, r2, r1
	ldr r1, _08069458 @ =0x00001388
	bl __udivsi3
	adds r0, #0x34
_0806944A:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	b _0806946E
	.align 2, 0
_08069450: .4byte 0x00030D40
_08069454: .4byte 0xFFFE795F
_08069458: .4byte 0x00001388
_0806945C:
	ldr r0, _08069468 @ =0x000F423E
	cmp r2, r0
	bls _0806946C
	movs r0, #0xc8
	b _0806946E
	.align 2, 0
_08069468: .4byte 0x000F423E
_0806946C:
	movs r0, #0x64
_0806946E:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08069474
sub_08069474: @ 0x08069474
	push {lr}
	adds r1, r0, #0
	cmp r1, #0
	bne _08069480
	movs r0, #0
	b _080694D6
_08069480:
	cmp r1, #0x32
	bhi _08069490
	subs r0, r1, #1
	movs r1, #0xa
	bl __udivsi3
	adds r0, #1
	b _080694D2
_08069490:
	cmp r1, #0x64
	bhi _080694A2
	adds r0, r1, #0
	subs r0, #0x33
	movs r1, #5
	bl __udivsi3
	adds r0, #6
	b _080694D2
_080694A2:
	cmp r1, #0xbe
	bhi _080694B4
	adds r0, r1, #0
	subs r0, #0x65
	movs r1, #3
	bl __udivsi3
	adds r0, #0x10
	b _080694D2
_080694B4:
	cmp r1, #0xfa
	bhi _080694C2
	adds r0, r1, #0
	subs r0, #0xbf
	lsrs r0, r0, #1
	adds r0, #0x2e
	b _080694D2
_080694C2:
	movs r0, #0x87
	lsls r0, r0, #1
	cmp r1, r0
	bls _080694CE
	movs r0, #0x6e
	b _080694D6
_080694CE:
	ldr r2, _080694DC @ =0x0000FF51
	adds r0, r1, r2
_080694D2:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
_080694D6:
	pop {r1}
	bx r1
	.align 2, 0
_080694DC: .4byte 0x0000FF51

	thumb_func_start sub_080694E0
sub_080694E0: @ 0x080694E0
	push {lr}
	adds r1, r0, #0
	cmp r1, #0
	bne _080694EC
	movs r0, #0
	b _08069560
_080694EC:
	ldr r0, _08069500 @ =0x000009C4
	cmp r1, r0
	bhi _08069504
	subs r0, r1, #1
	movs r1, #0xfa
	lsls r1, r1, #1
	bl __udivsi3
	adds r0, #1
	b _0806955C
	.align 2, 0
_08069500: .4byte 0x000009C4
_08069504:
	ldr r0, _0806951C @ =0x0000157C
	cmp r1, r0
	bhi _08069524
	ldr r2, _08069520 @ =0xFFFFF63B
	adds r0, r1, r2
	movs r1, #0x96
	lsls r1, r1, #1
	bl __udivsi3
	adds r0, #6
	b _0806955C
	.align 2, 0
_0806951C: .4byte 0x0000157C
_08069520: .4byte 0xFFFFF63B
_08069524:
	ldr r0, _08069538 @ =0x0000251C
	cmp r1, r0
	bhi _08069540
	ldr r2, _0806953C @ =0xFFFFEA83
	adds r0, r1, r2
	movs r1, #0xc8
	bl __udivsi3
	adds r0, #0x10
	b _0806955C
	.align 2, 0
_08069538: .4byte 0x0000251C
_0806953C: .4byte 0xFFFFEA83
_08069540:
	ldr r0, _0806954C @ =0x00002710
	cmp r1, r0
	bls _08069550
	movs r0, #0x32
	b _08069560
	.align 2, 0
_0806954C: .4byte 0x00002710
_08069550:
	ldr r2, _08069564 @ =0xFFFFDAE3
	adds r0, r1, r2
	movs r1, #0x64
	bl __udivsi3
	adds r0, #0x24
_0806955C:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
_08069560:
	pop {r1}
	bx r1
	.align 2, 0
_08069564: .4byte 0xFFFFDAE3

	thumb_func_start sub_08069568
sub_08069568: @ 0x08069568
	push {lr}
	adds r2, r0, #0
	movs r1, #0xfa
	lsls r1, r1, #2
	cmp r2, r1
	bhi _08069578
	movs r0, #0
	b _08069630
_08069578:
	ldr r0, _08069590 @ =0x000061A8
	cmp r2, r0
	bhi _08069598
	ldr r1, _08069594 @ =0xFFFFFC17
	adds r0, r2, r1
	movs r1, #0x96
	lsls r1, r1, #3
	bl __udivsi3
	adds r0, #1
	b _0806962C
	.align 2, 0
_08069590: .4byte 0x000061A8
_08069594: .4byte 0xFFFFFC17
_08069598:
	ldr r0, _080695AC @ =0x0000AFC8
	cmp r2, r0
	bhi _080695B4
	ldr r3, _080695B0 @ =0xFFFF9E57
	adds r0, r2, r3
	bl __udivsi3
	adds r0, #0x15
	b _0806962C
	.align 2, 0
_080695AC: .4byte 0x0000AFC8
_080695B0: .4byte 0xFFFF9E57
_080695B4:
	ldr r0, _080695CC @ =0x0000EE48
	cmp r2, r0
	bhi _080695D4
	ldr r1, _080695D0 @ =0xFFFF5037
	adds r0, r2, r1
	movs r1, #0xc8
	lsls r1, r1, #2
	bl __udivsi3
	adds r0, #0x29
	b _0806962C
	.align 2, 0
_080695CC: .4byte 0x0000EE48
_080695D0: .4byte 0xFFFF5037
_080695D4:
	ldr r0, _080695EC @ =0x00011D28
	cmp r2, r0
	bhi _080695F4
	ldr r3, _080695F0 @ =0xFFFF11B7
	adds r0, r2, r3
	movs r1, #0x96
	lsls r1, r1, #2
	bl __udivsi3
	adds r0, #0x3d
	b _0806962C
	.align 2, 0
_080695EC: .4byte 0x00011D28
_080695F0: .4byte 0xFFFF11B7
_080695F4:
	ldr r0, _08069608 @ =0x00012CC8
	cmp r2, r0
	bhi _08069610
	ldr r1, _0806960C @ =0xFFFEE2D7
	adds r0, r2, r1
	movs r1, #0xc8
	bl __udivsi3
	adds r0, #0x51
	b _0806962C
	.align 2, 0
_08069608: .4byte 0x00012CC8
_0806960C: .4byte 0xFFFEE2D7
_08069610:
	ldr r0, _0806961C @ =0x000130B0
	cmp r2, r0
	bls _08069620
	movs r0, #0x96
	b _08069630
	.align 2, 0
_0806961C: .4byte 0x000130B0
_08069620:
	ldr r3, _08069634 @ =0xFFFED337
	adds r0, r2, r3
	movs r1, #0x64
	bl __udivsi3
	adds r0, #0x65
_0806962C:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
_08069630:
	pop {r1}
	bx r1
	.align 2, 0
_08069634: .4byte 0xFFFED337

	thumb_func_start sub_08069638
sub_08069638: @ 0x08069638
	push {lr}
	adds r1, r0, #0
	movs r0, #0xfa
	lsls r0, r0, #1
	cmp r1, r0
	bhi _08069648
	movs r0, #0
	b _08069668
_08069648:
	ldr r0, _08069654 @ =0x000F423E
	cmp r1, r0
	bls _08069658
	movs r0, #0x96
	b _08069668
	.align 2, 0
_08069654: .4byte 0x000F423E
_08069658:
	ldr r2, _0806966C @ =0xFFFFFE0B
	adds r0, r1, r2
	ldr r1, _08069670 @ =0x00002710
	bl __udivsi3
	adds r0, #1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
_08069668:
	pop {r1}
	bx r1
	.align 2, 0
_0806966C: .4byte 0xFFFFFE0B
_08069670: .4byte 0x00002710

	thumb_func_start sub_08069674
sub_08069674: @ 0x08069674
	push {lr}
	cmp r0, #0
	bne _0806967E
	movs r0, #0
	b _080696CE
_0806967E:
	cmp r0, #0x1e
	bhi _0806968E
	subs r0, #1
	movs r1, #3
	bl __udivsi3
	adds r0, #1
	b _080696CA
_0806968E:
	cmp r0, #0x32
	bhi _0806969A
	subs r0, #0x1f
	lsrs r0, r0, #1
	adds r0, #0xb
	b _080696CA
_0806969A:
	cmp r0, #0x3c
	bhi _080696A8
	ldr r1, _080696A4 @ =0x0000FFE2
	adds r0, r0, r1
	b _080696CA
	.align 2, 0
_080696A4: .4byte 0x0000FFE2
_080696A8:
	cmp r0, #0x46
	bhi _080696B8
	lsls r0, r0, #0x11
	ldr r1, _080696B4 @ =0xFFA60000
	adds r0, r0, r1
	b _080696CC
	.align 2, 0
_080696B4: .4byte 0xFFA60000
_080696B8:
	cmp r0, #0x50
	bls _080696C0
	movs r0, #0x64
	b _080696CE
_080696C0:
	adds r1, r0, #0
	subs r1, #0x47
	lsls r0, r1, #1
	adds r0, r0, r1
	adds r0, #0x35
_080696CA:
	lsls r0, r0, #0x10
_080696CC:
	asrs r0, r0, #0x10
_080696CE:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080696D4
sub_080696D4: @ 0x080696D4
	push {lr}
	adds r1, r0, #0
	cmp r1, #0
	bne _080696E0
	movs r0, #0
	b _080697B8
_080696E0:
	ldr r0, _080696F4 @ =0x00005DC0
	cmp r1, r0
	bhi _080696F8
	subs r0, r1, #1
	movs r1, #0xc8
	lsls r1, r1, #2
	bl __udivsi3
	adds r0, #1
	b _080697B4
	.align 2, 0
_080696F4: .4byte 0x00005DC0
_080696F8:
	ldr r0, _08069710 @ =0x0000AFC8
	cmp r1, r0
	bhi _08069718
	ldr r2, _08069714 @ =0xFFFFA23F
	adds r0, r1, r2
	movs r1, #0xaf
	lsls r1, r1, #2
	bl __udivsi3
	adds r0, #0x1f
	b _080697B4
	.align 2, 0
_08069710: .4byte 0x0000AFC8
_08069714: .4byte 0xFFFFA23F
_08069718:
	ldr r0, _08069730 @ =0x0000DEA8
	cmp r1, r0
	bhi _08069738
	ldr r2, _08069734 @ =0xFFFF5037
	adds r0, r1, r2
	movs r1, #0x96
	lsls r1, r1, #2
	bl __udivsi3
	adds r0, #0x3d
	b _080697B4
	.align 2, 0
_08069730: .4byte 0x0000DEA8
_08069734: .4byte 0xFFFF5037
_08069738:
	ldr r0, _08069750 @ =0x000105B8
	cmp r1, r0
	bhi _08069758
	ldr r2, _08069754 @ =0xFFFF2157
	adds r0, r1, r2
	movs r1, #0xfa
	lsls r1, r1, #1
	bl __udivsi3
	adds r0, #0x51
	b _080697B4
	.align 2, 0
_08069750: .4byte 0x000105B8
_08069754: .4byte 0xFFFF2157
_08069758:
	ldr r0, _08069770 @ =0x00011558
	cmp r1, r0
	bhi _08069778
	ldr r2, _08069774 @ =0xFFFEFA47
	adds r0, r1, r2
	movs r1, #0xc8
	lsls r1, r1, #1
	bl __udivsi3
	adds r0, #0x65
	b _080697B4
	.align 2, 0
_08069770: .4byte 0x00011558
_08069774: .4byte 0xFFFEFA47
_08069778:
	ldr r0, _08069790 @ =0x00012110
	cmp r1, r0
	bhi _08069798
	ldr r2, _08069794 @ =0xFFFEEAA7
	adds r0, r1, r2
	movs r1, #0x96
	lsls r1, r1, #1
	bl __udivsi3
	adds r0, #0x6f
	b _080697B4
	.align 2, 0
_08069790: .4byte 0x00012110
_08069794: .4byte 0xFFFEEAA7
_08069798:
	ldr r0, _080697A4 @ =0x000128E0
	cmp r1, r0
	bls _080697A8
	movs r0, #0x96
	b _080697B8
	.align 2, 0
_080697A4: .4byte 0x000128E0
_080697A8:
	ldr r2, _080697BC @ =0xFFFEDEEF
	adds r0, r1, r2
	movs r1, #0xc8
	bl __udivsi3
	adds r0, #0x79
_080697B4:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
_080697B8:
	pop {r1}
	bx r1
	.align 2, 0
_080697BC: .4byte 0xFFFEDEEF

	thumb_func_start sub_080697C0
sub_080697C0: @ 0x080697C0
	push {lr}
	adds r1, r0, #0
	cmp r1, #0
	bne _080697CC
	movs r0, #0
	b _080698A4
_080697CC:
	ldr r0, _080697E0 @ =0x00005DC0
	cmp r1, r0
	bhi _080697E4
	subs r0, r1, #1
	movs r1, #0xc8
	lsls r1, r1, #2
	bl __udivsi3
	adds r0, #1
	b _080698A0
	.align 2, 0
_080697E0: .4byte 0x00005DC0
_080697E4:
	ldr r0, _080697FC @ =0x0000AFC8
	cmp r1, r0
	bhi _08069804
	ldr r2, _08069800 @ =0xFFFFA23F
	adds r0, r1, r2
	movs r1, #0xaf
	lsls r1, r1, #2
	bl __udivsi3
	adds r0, #0x1f
	b _080698A0
	.align 2, 0
_080697FC: .4byte 0x0000AFC8
_08069800: .4byte 0xFFFFA23F
_08069804:
	ldr r0, _0806981C @ =0x0000DEA8
	cmp r1, r0
	bhi _08069824
	ldr r2, _08069820 @ =0xFFFF5037
	adds r0, r1, r2
	movs r1, #0x96
	lsls r1, r1, #2
	bl __udivsi3
	adds r0, #0x3d
	b _080698A0
	.align 2, 0
_0806981C: .4byte 0x0000DEA8
_08069820: .4byte 0xFFFF5037
_08069824:
	ldr r0, _0806983C @ =0x000105B8
	cmp r1, r0
	bhi _08069844
	ldr r2, _08069840 @ =0xFFFF2157
	adds r0, r1, r2
	movs r1, #0xfa
	lsls r1, r1, #1
	bl __udivsi3
	adds r0, #0x51
	b _080698A0
	.align 2, 0
_0806983C: .4byte 0x000105B8
_08069840: .4byte 0xFFFF2157
_08069844:
	ldr r0, _0806985C @ =0x00011558
	cmp r1, r0
	bhi _08069864
	ldr r2, _08069860 @ =0xFFFEFA47
	adds r0, r1, r2
	movs r1, #0xc8
	lsls r1, r1, #1
	bl __udivsi3
	adds r0, #0x65
	b _080698A0
	.align 2, 0
_0806985C: .4byte 0x00011558
_08069860: .4byte 0xFFFEFA47
_08069864:
	ldr r0, _0806987C @ =0x00012110
	cmp r1, r0
	bhi _08069884
	ldr r2, _08069880 @ =0xFFFEEAA7
	adds r0, r1, r2
	movs r1, #0x96
	lsls r1, r1, #1
	bl __udivsi3
	adds r0, #0x6f
	b _080698A0
	.align 2, 0
_0806987C: .4byte 0x00012110
_08069880: .4byte 0xFFFEEAA7
_08069884:
	ldr r0, _08069890 @ =0x000128E0
	cmp r1, r0
	bls _08069894
	movs r0, #0x96
	b _080698A4
	.align 2, 0
_08069890: .4byte 0x000128E0
_08069894:
	ldr r2, _080698A8 @ =0xFFFEDEEF
	adds r0, r1, r2
	movs r1, #0xc8
	bl __udivsi3
	adds r0, #0x79
_080698A0:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
_080698A4:
	pop {r1}
	bx r1
	.align 2, 0
_080698A8: .4byte 0xFFFEDEEF

	thumb_func_start sub_080698AC
sub_080698AC: @ 0x080698AC
	push {lr}
	adds r1, r0, #0
	ldr r0, _080698BC @ =0x00002A2F
	cmp r1, r0
	bls _080698C0
	movs r0, #0
	b _0806994C
	.align 2, 0
_080698BC: .4byte 0x00002A2F
_080698C0:
	ldr r0, _080698CC @ =0x00000E0F
	cmp r1, r0
	bls _080698D0
	movs r0, #1
	b _0806994C
	.align 2, 0
_080698CC: .4byte 0x00000E0F
_080698D0:
	ldr r0, _080698EC @ =0x0000095F
	cmp r1, r0
	bls _080698F0
	movs r0, #0xe1
	lsls r0, r0, #4
	subs r0, r0, r1
	movs r1, #0x96
	lsls r1, r1, #1
	bl __udivsi3
	adds r0, #2
	lsls r0, r0, #0x10
	b _0806994A
	.align 2, 0
_080698EC: .4byte 0x0000095F
_080698F0:
	ldr r0, _08069908 @ =0x00000707
	cmp r1, r0
	bls _0806990C
	movs r0, #0x96
	lsls r0, r0, #4
	subs r0, r0, r1
	movs r1, #0x78
	bl __udivsi3
	adds r0, #7
	lsls r0, r0, #0x10
	b _0806994A
	.align 2, 0
_08069908: .4byte 0x00000707
_0806990C:
	ldr r0, _08069924 @ =0x000005DB
	cmp r1, r0
	bls _08069928
	movs r0, #0xe1
	lsls r0, r0, #3
	subs r0, r0, r1
	movs r1, #0x3c
	bl __udivsi3
	adds r0, #0xd
	lsls r0, r0, #0x10
	b _0806994A
	.align 2, 0
_08069924: .4byte 0x000005DB
_08069928:
	ldr r0, _08069934 @ =0x000004AF
	cmp r1, r0
	bhi _08069938
	movs r0, #0x23
	b _0806994C
	.align 2, 0
_08069934: .4byte 0x000004AF
_08069938:
	ldr r0, _08069950 @ =0x000005DC
	subs r0, r0, r1
	movs r1, #0x3c
	bl __udivsi3
	lsls r0, r0, #0x11
	movs r1, #0xa0
	lsls r1, r1, #0xd
	adds r0, r0, r1
_0806994A:
	asrs r0, r0, #0x10
_0806994C:
	pop {r1}
	bx r1
	.align 2, 0
_08069950: .4byte 0x000005DC

	thumb_func_start sub_08069954
sub_08069954: @ 0x08069954
	push {lr}
	adds r1, r0, #0
	cmp r1, #0
	bne _08069960
	movs r0, #0
	b _08069A20
_08069960:
	movs r0, #0xfa
	lsls r0, r0, #2
	cmp r1, r0
	bhi _08069974
	subs r0, r1, #1
	movs r1, #0x32
	bl __udivsi3
	adds r0, #1
	b _08069A1C
_08069974:
	movs r0, #0xe1
	lsls r0, r0, #3
	cmp r1, r0
	bhi _08069990
	ldr r2, _0806998C @ =0xFFFFFC17
	adds r0, r1, r2
	movs r1, #0x50
	bl __udivsi3
	adds r0, #0x15
	b _08069A1C
	.align 2, 0
_0806998C: .4byte 0xFFFFFC17
_08069990:
	ldr r0, _080699A4 @ =0x000009C4
	cmp r1, r0
	bhi _080699AC
	ldr r2, _080699A8 @ =0xFFFFF8F7
	adds r0, r1, r2
	movs r1, #0x46
	bl __udivsi3
	adds r0, #0x1f
	b _08069A1C
	.align 2, 0
_080699A4: .4byte 0x000009C4
_080699A8: .4byte 0xFFFFF8F7
_080699AC:
	ldr r0, _080699C0 @ =0x00000C1C
	cmp r1, r0
	bhi _080699C8
	ldr r2, _080699C4 @ =0xFFFFF63B
	adds r0, r1, r2
	movs r1, #0x3c
	bl __udivsi3
	adds r0, #0x29
	b _08069A1C
	.align 2, 0
_080699C0: .4byte 0x00000C1C
_080699C4: .4byte 0xFFFFF63B
_080699C8:
	movs r0, #0xe1
	lsls r0, r0, #4
	cmp r1, r0
	bhi _080699E4
	ldr r2, _080699E0 @ =0xFFFFF3E3
	adds r0, r1, r2
	movs r1, #0x32
	bl __udivsi3
	adds r0, #0x33
	b _08069A1C
	.align 2, 0
_080699E0: .4byte 0xFFFFF3E3
_080699E4:
	movs r0, #0xfa
	lsls r0, r0, #4
	cmp r1, r0
	bhi _08069A00
	ldr r2, _080699FC @ =0xFFFFF1EF
	adds r0, r1, r2
	movs r1, #0x28
	bl __udivsi3
	adds r0, #0x3d
	b _08069A1C
	.align 2, 0
_080699FC: .4byte 0xFFFFF1EF
_08069A00:
	ldr r0, _08069A0C @ =0x000010CC
	cmp r1, r0
	bls _08069A10
	movs r0, #0x64
	b _08069A20
	.align 2, 0
_08069A0C: .4byte 0x000010CC
_08069A10:
	ldr r2, _08069A24 @ =0xFFFFF05F
	adds r0, r1, r2
	movs r1, #0x1e
	bl __udivsi3
	adds r0, #0x47
_08069A1C:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
_08069A20:
	pop {r1}
	bx r1
	.align 2, 0
_08069A24: .4byte 0xFFFFF05F

	thumb_func_start sub_08069A28
sub_08069A28: @ 0x08069A28
	push {lr}
	adds r1, r0, #0
	ldr r0, _08069A38 @ =0x0000464F
	cmp r1, r0
	bls _08069A3C
	movs r0, #0
	b _08069AEC
	.align 2, 0
_08069A38: .4byte 0x0000464F
_08069A3C:
	ldr r0, _08069A48 @ =0x00000E0F
	cmp r1, r0
	bls _08069A4C
	movs r0, #1
	b _08069AEC
	.align 2, 0
_08069A48: .4byte 0x00000E0F
_08069A4C:
	ldr r0, _08069A64 @ =0x0000095F
	cmp r1, r0
	bls _08069A68
	movs r0, #0xe1
	lsls r0, r0, #4
	subs r0, r0, r1
	movs r1, #0x96
	lsls r1, r1, #1
	bl __udivsi3
	adds r0, #2
	b _08069AE8
	.align 2, 0
_08069A64: .4byte 0x0000095F
_08069A68:
	ldr r0, _08069A80 @ =0x00000707
	cmp r1, r0
	bls _08069A84
	movs r0, #0x96
	lsls r0, r0, #4
	subs r0, r0, r1
	movs r1, #0x78
	bl __udivsi3
	adds r0, #7
	b _08069AE8
	.align 2, 0
_08069A80: .4byte 0x00000707
_08069A84:
	ldr r0, _08069A9C @ =0x000005DB
	cmp r1, r0
	bls _08069AA0
	movs r0, #0xe1
	lsls r0, r0, #3
	subs r0, r0, r1
	movs r1, #0x3c
	bl __udivsi3
	adds r0, #0xd
	b _08069AE8
	.align 2, 0
_08069A9C: .4byte 0x000005DB
_08069AA0:
	ldr r0, _08069ABC @ =0x000004AF
	cmp r1, r0
	bls _08069AC4
	ldr r0, _08069AC0 @ =0x000005DC
	subs r0, r0, r1
	movs r1, #0x3c
	bl __udivsi3
	lsls r0, r0, #0x11
	movs r1, #0xa0
	lsls r1, r1, #0xd
	adds r0, r0, r1
	b _08069AEA
	.align 2, 0
_08069ABC: .4byte 0x000004AF
_08069AC0: .4byte 0x000005DC
_08069AC4:
	ldr r0, _08069AD0 @ =0x00000383
	cmp r1, r0
	bhi _08069AD4
	movs r0, #0x37
	b _08069AEC
	.align 2, 0
_08069AD0: .4byte 0x00000383
_08069AD4:
	movs r0, #0x96
	lsls r0, r0, #3
	subs r0, r0, r1
	movs r1, #0x3c
	bl __udivsi3
	adds r1, r0, #0
	lsls r0, r1, #1
	adds r0, r0, r1
	adds r0, #0x21
_08069AE8:
	lsls r0, r0, #0x10
_08069AEA:
	asrs r0, r0, #0x10
_08069AEC:
	pop {r1}
	bx r1

	thumb_func_start sub_08069AF0
sub_08069AF0: @ 0x08069AF0
	push {lr}
	adds r1, r0, #0
	ldr r0, _08069B00 @ =0x0000464F
	cmp r1, r0
	bls _08069B04
	movs r0, #0
	b _08069BAE
	.align 2, 0
_08069B00: .4byte 0x0000464F
_08069B04:
	ldr r0, _08069B10 @ =0x00001C1F
	cmp r1, r0
	bls _08069B14
	movs r0, #1
	b _08069BAE
	.align 2, 0
_08069B10: .4byte 0x00001C1F
_08069B14:
	ldr r0, _08069B2C @ =0x0000176F
	cmp r1, r0
	bls _08069B30
	movs r0, #0xe1
	lsls r0, r0, #5
	subs r0, r0, r1
	movs r1, #0x96
	lsls r1, r1, #1
	bl __udivsi3
	adds r0, #2
	b _08069BAA
	.align 2, 0
_08069B2C: .4byte 0x0000176F
_08069B30:
	ldr r0, _08069B44 @ =0x00001517
	cmp r1, r0
	bls _08069B4C
	ldr r0, _08069B48 @ =0x00001770
	subs r0, r0, r1
	movs r1, #0x78
	bl __udivsi3
	adds r0, #7
	b _08069BAA
	.align 2, 0
_08069B44: .4byte 0x00001517
_08069B48: .4byte 0x00001770
_08069B4C:
	ldr r0, _08069B60 @ =0x000012BF
	cmp r1, r0
	bls _08069B68
	ldr r0, _08069B64 @ =0x00001518
	subs r0, r0, r1
	movs r1, #0x3c
	bl __udivsi3
	adds r0, #0xd
	b _08069BAA
	.align 2, 0
_08069B60: .4byte 0x000012BF
_08069B64: .4byte 0x00001518
_08069B68:
	ldr r0, _08069B84 @ =0x00001067
	cmp r1, r0
	bls _08069B88
	movs r0, #0x96
	lsls r0, r0, #5
	subs r0, r0, r1
	movs r1, #0x3c
	bl __udivsi3
	lsls r0, r0, #0x11
	movs r1, #0xc8
	lsls r1, r1, #0xd
	adds r0, r0, r1
	b _08069BAC
	.align 2, 0
_08069B84: .4byte 0x00001067
_08069B88:
	ldr r0, _08069B94 @ =0x00000E0F
	cmp r1, r0
	bhi _08069B98
	movs r0, #0x55
	b _08069BAE
	.align 2, 0
_08069B94: .4byte 0x00000E0F
_08069B98:
	ldr r0, _08069BB4 @ =0x00001068
	subs r0, r0, r1
	movs r1, #0x3c
	bl __udivsi3
	adds r1, r0, #0
	lsls r0, r1, #1
	adds r0, r0, r1
	adds r0, #0x30
_08069BAA:
	lsls r0, r0, #0x10
_08069BAC:
	asrs r0, r0, #0x10
_08069BAE:
	pop {r1}
	bx r1
	.align 2, 0
_08069BB4: .4byte 0x00001068

	thumb_func_start sub_08069BB8
sub_08069BB8: @ 0x08069BB8
	push {lr}
	adds r1, r0, #0
	cmp r1, #0
	bne _08069BC4
	movs r0, #0
	b _08069C5C
_08069BC4:
	ldr r0, _08069BD8 @ =0x00001770
	cmp r1, r0
	bhi _08069BDC
	subs r0, r1, #1
	movs r1, #0x96
	lsls r1, r1, #2
	bl __udivsi3
	adds r0, #1
	b _08069C58
	.align 2, 0
_08069BD8: .4byte 0x00001770
_08069BDC:
	ldr r0, _08069BF4 @ =0x00002AF8
	cmp r1, r0
	bhi _08069BFC
	ldr r2, _08069BF8 @ =0xFFFFE88F
	adds r0, r1, r2
	movs r1, #0xfa
	lsls r1, r1, #1
	bl __udivsi3
	adds r0, #0xb
	b _08069C58
	.align 2, 0
_08069BF4: .4byte 0x00002AF8
_08069BF8: .4byte 0xFFFFE88F
_08069BFC:
	ldr r0, _08069C14 @ =0x00003A98
	cmp r1, r0
	bhi _08069C1C
	ldr r2, _08069C18 @ =0xFFFFD507
	adds r0, r1, r2
	movs r1, #0xc8
	lsls r1, r1, #1
	bl __udivsi3
	adds r0, #0x15
	b _08069C58
	.align 2, 0
_08069C14: .4byte 0x00003A98
_08069C18: .4byte 0xFFFFD507
_08069C1C:
	ldr r0, _08069C34 @ =0x00004650
	cmp r1, r0
	bhi _08069C3C
	ldr r2, _08069C38 @ =0xFFFFC567
	adds r0, r1, r2
	movs r1, #0x96
	lsls r1, r1, #1
	bl __udivsi3
	adds r0, #0x1f
	b _08069C58
	.align 2, 0
_08069C34: .4byte 0x00004650
_08069C38: .4byte 0xFFFFC567
_08069C3C:
	ldr r0, _08069C48 @ =0x00004E20
	cmp r1, r0
	bls _08069C4C
	movs r0, #0x46
	b _08069C5C
	.align 2, 0
_08069C48: .4byte 0x00004E20
_08069C4C:
	ldr r2, _08069C60 @ =0xFFFFB9AF
	adds r0, r1, r2
	movs r1, #0xc8
	bl __udivsi3
	adds r0, #0x29
_08069C58:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
_08069C5C:
	pop {r1}
	bx r1
	.align 2, 0
_08069C60: .4byte 0xFFFFB9AF

	thumb_func_start sub_08069C64
sub_08069C64: @ 0x08069C64
	push {lr}
	adds r1, r0, #0
	ldr r0, _08069C74 @ =0x00002A2F
	cmp r1, r0
	bls _08069C78
	movs r0, #0
	b _08069D04
	.align 2, 0
_08069C74: .4byte 0x00002A2F
_08069C78:
	ldr r0, _08069C84 @ =0x00000E0F
	cmp r1, r0
	bls _08069C88
	movs r0, #1
	b _08069D04
	.align 2, 0
_08069C84: .4byte 0x00000E0F
_08069C88:
	ldr r0, _08069CA4 @ =0x0000095F
	cmp r1, r0
	bls _08069CA8
	movs r0, #0xe1
	lsls r0, r0, #4
	subs r0, r0, r1
	movs r1, #0x96
	lsls r1, r1, #1
	bl __udivsi3
	adds r0, #2
	lsls r0, r0, #0x10
	b _08069D02
	.align 2, 0
_08069CA4: .4byte 0x0000095F
_08069CA8:
	ldr r0, _08069CC0 @ =0x00000707
	cmp r1, r0
	bls _08069CC4
	movs r0, #0x96
	lsls r0, r0, #4
	subs r0, r0, r1
	movs r1, #0x78
	bl __udivsi3
	adds r0, #7
	lsls r0, r0, #0x10
	b _08069D02
	.align 2, 0
_08069CC0: .4byte 0x00000707
_08069CC4:
	ldr r0, _08069CDC @ =0x000005DB
	cmp r1, r0
	bls _08069CE0
	movs r0, #0xe1
	lsls r0, r0, #3
	subs r0, r0, r1
	movs r1, #0x3c
	bl __udivsi3
	adds r0, #0xd
	lsls r0, r0, #0x10
	b _08069D02
	.align 2, 0
_08069CDC: .4byte 0x000005DB
_08069CE0:
	ldr r0, _08069CEC @ =0x000004AF
	cmp r1, r0
	bhi _08069CF0
	movs r0, #0x23
	b _08069D04
	.align 2, 0
_08069CEC: .4byte 0x000004AF
_08069CF0:
	ldr r0, _08069D08 @ =0x000005DC
	subs r0, r0, r1
	movs r1, #0x3c
	bl __udivsi3
	lsls r0, r0, #0x11
	movs r1, #0xa0
	lsls r1, r1, #0xd
	adds r0, r0, r1
_08069D02:
	asrs r0, r0, #0x10
_08069D04:
	pop {r1}
	bx r1
	.align 2, 0
_08069D08: .4byte 0x000005DC

	thumb_func_start sub_08069D0C
sub_08069D0C: @ 0x08069D0C
	push {lr}
	adds r1, r0, #0
	ldr r0, _08069D1C @ =0x0000464F
	cmp r1, r0
	bls _08069D20
	movs r0, #0
	b _08069D8E
	.align 2, 0
_08069D1C: .4byte 0x0000464F
_08069D20:
	ldr r0, _08069D2C @ =0x00002A2F
	cmp r1, r0
	bls _08069D30
	movs r0, #1
	b _08069D8E
	.align 2, 0
_08069D2C: .4byte 0x00002A2F
_08069D30:
	ldr r0, _08069D48 @ =0x00001C1F
	cmp r1, r0
	bls _08069D50
	ldr r0, _08069D4C @ =0x00002A30
	subs r0, r0, r1
	movs r1, #0x96
	lsls r1, r1, #2
	bl __udivsi3
	adds r0, #2
	b _08069D8A
	.align 2, 0
_08069D48: .4byte 0x00001C1F
_08069D4C: .4byte 0x00002A30
_08069D50:
	ldr r0, _08069D68 @ =0x00000E0F
	cmp r1, r0
	bls _08069D6C
	movs r0, #0xe1
	lsls r0, r0, #5
	subs r0, r0, r1
	movs r1, #0x96
	lsls r1, r1, #1
	bl __udivsi3
	adds r0, #9
	b _08069D8A
	.align 2, 0
_08069D68: .4byte 0x00000E0F
_08069D6C:
	ldr r0, _08069D78 @ =0x0000095F
	cmp r1, r0
	bhi _08069D7C
	movs r0, #0x28
	b _08069D8E
	.align 2, 0
_08069D78: .4byte 0x0000095F
_08069D7C:
	movs r0, #0xe1
	lsls r0, r0, #4
	subs r0, r0, r1
	movs r1, #0x78
	bl __udivsi3
	adds r0, #0x15
_08069D8A:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
_08069D8E:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08069D94
sub_08069D94: @ 0x08069D94
	push {lr}
	adds r1, r0, #0
	ldr r0, _08069DA4 @ =0x00000834
	cmp r1, r0
	bhi _08069DA8
	movs r0, #0
	b _08069E4A
	.align 2, 0
_08069DA4: .4byte 0x00000834
_08069DA8:
	ldr r0, _08069DC0 @ =0x000046B4
	cmp r1, r0
	bhi _08069DC8
	ldr r2, _08069DC4 @ =0xFFFFF7CB
	adds r0, r1, r2
	movs r1, #0xc8
	lsls r1, r1, #2
	bl __udivsi3
	adds r0, #1
	b _08069E46
	.align 2, 0
_08069DC0: .4byte 0x000046B4
_08069DC4: .4byte 0xFFFFF7CB
_08069DC8:
	ldr r0, _08069DE0 @ =0x00007D64
	cmp r1, r0
	bhi _08069DE8
	ldr r2, _08069DE4 @ =0xFFFFB94B
	adds r0, r1, r2
	movs r1, #0xaf
	lsls r1, r1, #2
	bl __udivsi3
	adds r0, #0x15
	b _08069E46
	.align 2, 0
_08069DE0: .4byte 0x00007D64
_08069DE4: .4byte 0xFFFFB94B
_08069DE8:
	ldr r0, _08069E00 @ =0x0000AC44
	cmp r1, r0
	bhi _08069E08
	ldr r2, _08069E04 @ =0xFFFF829B
	adds r0, r1, r2
	movs r1, #0x96
	lsls r1, r1, #2
	bl __udivsi3
	adds r0, #0x29
	b _08069E46
	.align 2, 0
_08069E00: .4byte 0x0000AC44
_08069E04: .4byte 0xFFFF829B
_08069E08:
	ldr r0, _08069E20 @ =0x0000D354
	cmp r1, r0
	bhi _08069E28
	ldr r2, _08069E24 @ =0xFFFF53BB
	adds r0, r1, r2
	movs r1, #0xfa
	lsls r1, r1, #1
	bl __udivsi3
	adds r0, #0x3d
	b _08069E46
	.align 2, 0
_08069E20: .4byte 0x0000D354
_08069E24: .4byte 0xFFFF53BB
_08069E28:
	ldr r0, _08069E34 @ =0x0000E2F4
	cmp r1, r0
	bls _08069E38
	movs r0, #0x6e
	b _08069E4A
	.align 2, 0
_08069E34: .4byte 0x0000E2F4
_08069E38:
	ldr r2, _08069E50 @ =0xFFFF2CAB
	adds r0, r1, r2
	movs r1, #0xc8
	lsls r1, r1, #1
	bl __udivsi3
	adds r0, #0x51
_08069E46:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
_08069E4A:
	pop {r1}
	bx r1
	.align 2, 0
_08069E50: .4byte 0xFFFF2CAB

	thumb_func_start sub_08069E54
sub_08069E54: @ 0x08069E54
	push {lr}
	lsls r0, r0, #0x18
	ldr r2, _08069E74 @ =0x08090318
	lsrs r0, r0, #0x16
	ldr r3, _08069E78 @ =0xFFFFFEF0
	adds r0, r0, r3
	adds r0, r0, r2
	ldr r2, [r0]
	adds r0, r1, #0
	bl call_via_r2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	pop {r1}
	bx r1
	.align 2, 0
_08069E74: .4byte 0x08090318
_08069E78: .4byte 0xFFFFFEF0

	thumb_func_start sub_08069E7C
sub_08069E7C: @ 0x08069E7C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sl, r0
	movs r1, #0
_08069E8A:
	movs r7, #0
	lsls r0, r1, #2
	lsls r2, r1, #1
	mov r8, r2
	adds r2, r1, #1
	mov sb, r2
	adds r0, r0, r1
	lsls r0, r0, #1
	ldr r1, _08069EE8 @ =0x08090394
	adds r5, r0, r1
	movs r6, #9
_08069EA0:
	ldrb r4, [r5]
	adds r0, r4, #0
	bl sub_08001A00
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08069EC6
	adds r0, r4, #0
	bl sub_08001B28
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_08069E54
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
_08069EC6:
	adds r5, #1
	subs r6, #1
	cmp r6, #0
	bge _08069EA0
	mov r0, r8
	add r0, sl
	strh r7, [r0]
	mov r1, sb
	cmp r1, #2
	ble _08069E8A
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08069EE8: .4byte 0x08090394

	thumb_func_start sub_08069EEC
sub_08069EEC: @ 0x08069EEC
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r7, r1, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	movs r0, #3
	movs r1, #0x10
	bl sub_080099E0
	adds r5, r0, #0
	ldr r0, _08069F70 @ =0x030044D0
	ldr r0, [r0]
	lsls r1, r4, #1
	adds r0, #0x24
	adds r0, r0, r1
	ldrh r1, [r0]
	lsls r1, r1, #5
	ldr r0, _08069F74 @ =0x06010000
	adds r1, r1, r0
	adds r0, r5, #0
	bl sub_08009A78
	ldr r0, _08069F78 @ =0x08090414
	adds r0, r4, r0
	ldrb r1, [r0]
	adds r0, r5, #0
	bl sub_08009AB4
	ldr r1, _08069F7C @ =0x080903B4
	lsls r2, r4, #4
	adds r0, r1, #0
	adds r0, #0xc
	adds r0, r2, r0
	ldr r3, [r0]
	adds r1, #8
	adds r2, r2, r1
	ldr r2, [r2]
	movs r6, #0
	cmp r4, #5
	bne _08069F3E
	movs r6, #1
_08069F3E:
	adds r0, r5, #0
	adds r1, r3, #0
	adds r3, r6, #0
	bl sub_08009ACC
	adds r0, r5, #0
	movs r1, #0xff
	bl sub_08009B40
	movs r0, #0
	ldrsh r1, [r7, r0]
	movs r0, #2
	ldrsh r2, [r7, r0]
	adds r0, r5, #0
	bl sub_08009A70
	adds r0, r5, #0
	movs r1, #1
	bl sub_08009A34
	adds r0, r5, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08069F70: .4byte 0x030044D0
_08069F74: .4byte 0x06010000
_08069F78: .4byte 0x08090414
_08069F7C: .4byte 0x080903B4

	thumb_func_start sub_08069F80
sub_08069F80: @ 0x08069F80
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r5, r2, #0x18
	cmp r4, #0
	beq _08069FB8
	ldr r2, _08069FC0 @ =0x080903B4
	lsls r3, r1, #4
	adds r0, r2, #0
	adds r0, #0xc
	adds r0, r3, r0
	ldr r1, [r0]
	adds r2, #8
	adds r3, r3, r2
	ldr r2, [r3]
	adds r0, r4, #0
	adds r3, r5, #0
	bl sub_08009ACC
	movs r1, #0
	cmp r5, #0
	bne _08069FB2
	movs r1, #0xff
_08069FB2:
	adds r0, r4, #0
	bl sub_08009B40
_08069FB8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08069FC0: .4byte 0x080903B4

	thumb_func_start sub_08069FC4
sub_08069FC4: @ 0x08069FC4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	ldr r4, _0806A07C @ =0x030044D0
	movs r0, #0x38
	bl sub_08007CE8
	adds r1, r0, #0
	str r1, [r4]
	mov r2, sp
	movs r0, #0
	strh r0, [r2]
	ldr r2, _0806A080 @ =0x0100001C
	mov r0, sp
	bl CpuSet
	movs r6, #0
	ldr r7, _0806A084 @ =0x080903B4
	mov r8, r7
_08069FEC:
	lsls r0, r6, #4
	mov r1, r8
	adds r1, #4
	adds r0, r0, r1
	ldr r5, [r0]
	adds r0, r5, #0
	bl sub_08006C14
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r0, [r7]
	ldr r1, _0806A088 @ =0x08090414
	adds r1, r6, r1
	ldrb r1, [r1]
	lsls r1, r1, #5
	ldr r2, _0806A08C @ =0x05000200
	adds r1, r1, r2
	bl sub_08008308
	lsls r1, r4, #5
	ldr r0, _0806A090 @ =0x06010000
	adds r1, r1, r0
	adds r0, r5, #0
	bl sub_08008374
	ldr r0, _0806A07C @ =0x030044D0
	ldr r0, [r0]
	lsls r1, r6, #1
	adds r0, #0x24
	adds r0, r0, r1
	strh r4, [r0]
	adds r7, #0x10
	adds r6, #1
	cmp r6, #5
	ble _08069FEC
	movs r6, #0
_0806A036:
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	lsls r4, r6, #2
	ldr r1, _0806A094 @ =0x0809041C
	adds r1, r4, r1
	bl sub_08069EEC
	ldr r1, _0806A07C @ =0x030044D0
	ldr r1, [r1]
	adds r1, r1, r4
	str r0, [r1]
	adds r6, #1
	cmp r6, #4
	ble _0806A036
	movs r6, #0
_0806A054:
	lsls r4, r6, #2
	ldr r1, _0806A098 @ =0x08090430
	adds r1, r4, r1
	movs r0, #5
	bl sub_08069EEC
	ldr r1, _0806A07C @ =0x030044D0
	ldr r1, [r1]
	adds r1, #0x14
	adds r1, r1, r4
	str r0, [r1]
	adds r6, #1
	cmp r6, #3
	ble _0806A054
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806A07C: .4byte 0x030044D0
_0806A080: .4byte 0x0100001C
_0806A084: .4byte 0x080903B4
_0806A088: .4byte 0x08090414
_0806A08C: .4byte 0x05000200
_0806A090: .4byte 0x06010000
_0806A094: .4byte 0x0809041C
_0806A098: .4byte 0x08090430

	thumb_func_start sub_0806A09C
sub_0806A09C: @ 0x0806A09C
	push {r4, r5, r6, lr}
	movs r5, #0
	ldr r6, _0806A10C @ =0x030044D0
_0806A0A2:
	ldr r0, [r6]
	lsls r4, r5, #2
	adds r0, r0, r4
	ldr r0, [r0]
	cmp r0, #0
	beq _0806A0BA
	bl sub_08009A00
	ldr r0, [r6]
	adds r0, r0, r4
	movs r1, #0
	str r1, [r0]
_0806A0BA:
	adds r5, #1
	cmp r5, #4
	ble _0806A0A2
	movs r5, #0
	ldr r6, _0806A10C @ =0x030044D0
_0806A0C4:
	ldr r0, [r6]
	lsls r4, r5, #2
	adds r0, #0x14
	adds r0, r0, r4
	ldr r0, [r0]
	cmp r0, #0
	beq _0806A0E0
	bl sub_08009A00
	ldr r0, [r6]
	adds r0, #0x14
	adds r0, r0, r4
	movs r1, #0
	str r1, [r0]
_0806A0E0:
	adds r5, #1
	cmp r5, #3
	ble _0806A0C4
	ldr r0, _0806A110 @ =0x080903B4
	adds r4, r0, #4
	movs r5, #5
_0806A0EC:
	ldr r0, [r4]
	bl sub_08006CA0
	adds r4, #0x10
	subs r5, #1
	cmp r5, #0
	bge _0806A0EC
	ldr r0, _0806A10C @ =0x030044D0
	ldr r0, [r0]
	cmp r0, #0
	beq _0806A106
	bl sub_08007CF8
_0806A106:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0806A10C: .4byte 0x030044D0
_0806A110: .4byte 0x080903B4

	thumb_func_start sub_0806A114
sub_0806A114: @ 0x0806A114
	push {r4, r5, lr}
	ldr r2, _0806A194 @ =0x030024B0
	ldrh r1, [r2]
	movs r0, #2
	ands r0, r1
	ldr r3, _0806A198 @ =0x030044D0
	cmp r0, #0
	beq _0806A12C
	ldr r0, [r3]
	adds r0, #0x31
	movs r1, #1
	strb r1, [r0]
_0806A12C:
	ldrh r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0806A13E
	ldr r0, [r3]
	adds r0, #0x31
	movs r1, #2
	strb r1, [r0]
_0806A13E:
	ldrh r1, [r2]
	movs r0, #0xf0
	ands r0, r1
	cmp r0, #0
	beq _0806A150
	ldr r0, [r3]
	adds r0, #0x31
	movs r1, #3
	strb r1, [r0]
_0806A150:
	ldr r1, [r3]
	adds r0, r1, #0
	adds r0, #0x30
	ldrb r0, [r0]
	cmp r0, #0
	beq _0806A19C
	ldr r0, [r1]
	ldrb r0, [r0, #1]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _0806A1D8
	movs r4, #0
_0806A168:
	ldr r5, _0806A198 @ =0x030044D0
	ldr r0, [r5]
	lsls r1, r4, #2
	adds r0, r0, r1
	ldr r0, [r0]
	lsls r1, r4, #0x18
	lsrs r1, r1, #0x18
	movs r2, #0
	bl sub_08069F80
	adds r4, #1
	cmp r4, #4
	ble _0806A168
	ldr r0, [r5]
	adds r1, r0, #0
	adds r1, #0x31
	ldrb r1, [r1]
	cmp r1, #0
	bne _0806A1A6
	adds r0, #0x30
	strb r1, [r0]
	b _0806A1D8
	.align 2, 0
_0806A194: .4byte 0x030024B0
_0806A198: .4byte 0x030044D0
_0806A19C:
	adds r0, r1, #0
	adds r0, #0x31
	ldrb r0, [r0]
	cmp r0, #0
	beq _0806A1D8
_0806A1A6:
	movs r4, #0
_0806A1A8:
	ldr r5, _0806A1E0 @ =0x030044D0
	ldr r2, [r5]
	lsls r0, r4, #2
	adds r0, r2, r0
	ldr r0, [r0]
	lsls r1, r4, #0x18
	lsrs r1, r1, #0x18
	adds r2, #0x31
	ldrb r2, [r2]
	bl sub_08069F80
	adds r4, #1
	cmp r4, #4
	ble _0806A1A8
	ldr r0, [r5]
	adds r1, r0, #0
	adds r1, #0x31
	ldrb r1, [r1]
	adds r0, #0x30
	movs r2, #0
	strb r1, [r0]
	ldr r0, [r5]
	adds r0, #0x31
	strb r2, [r0]
_0806A1D8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806A1E0: .4byte 0x030044D0

	thumb_func_start sub_0806A1E4
sub_0806A1E4: @ 0x0806A1E4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	ldr r1, _0806A20C @ =0x030044D0
	ldr r0, [r1]
	adds r0, #0x32
	ldrb r0, [r0]
	adds r5, r1, #0
	cmp r0, #4
	bls _0806A200
	b _0806A412
_0806A200:
	lsls r0, r0, #2
	ldr r1, _0806A210 @ =_0806A214
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0806A20C: .4byte 0x030044D0
_0806A210: .4byte _0806A214
_0806A214: @ jump table
	.4byte _0806A228 @ case 0
	.4byte _0806A36C @ case 1
	.4byte _0806A388 @ case 2
	.4byte _0806A3A8 @ case 3
	.4byte _0806A3D4 @ case 4
_0806A228:
	movs r4, #0
	str r4, [sp, #8]
	ldr r1, _0806A2C4 @ =0x0600F000
	ldr r5, _0806A2C8 @ =0x01000200
	add r0, sp, #8
	adds r2, r5, #0
	bl CpuFastSet
	str r4, [sp, #0xc]
	add r0, sp, #0xc
	ldr r1, _0806A2CC @ =0x0600D000
	adds r2, r5, #0
	bl CpuFastSet
	movs r6, #0
_0806A246:
	lsls r1, r6, #1
	ldr r0, _0806A2D0 @ =0x030044D0
	ldr r0, [r0]
	adds r0, #0x34
	ldrb r0, [r0]
	lsls r0, r0, #3
	adds r1, r1, r0
	ldr r0, _0806A2D4 @ =0x08090444
	adds r1, r1, r0
	ldrh r4, [r1]
	cmp r6, #0
	beq _0806A264
	adds r7, r6, #1
	cmp r4, #0
	beq _0806A328
_0806A264:
	lsls r0, r6, #6
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	lsls r0, r0, #5
	ldr r1, _0806A2D8 @ =0x06008000
	adds r5, r0, r1
	movs r0, #0x80
	lsls r0, r0, #8
	cmp r4, r0
	bne _0806A2DC
	movs r0, #0
	bl sub_0800759C
	adds r4, r0, #0
	movs r0, #0
	mov r8, r0
	ldrb r0, [r4]
	lsls r1, r6, #0x19
	mov sb, r1
	adds r7, r6, #1
	cmp r0, #0
	beq _0806A30C
_0806A294:
	ldrb r0, [r4]
	adds r4, #1
	bl sub_080050EC
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r0, #1
	str r0, [sp]
	adds r0, r5, #0
	movs r2, #2
	movs r3, #0
	bl sub_08004BB8
	adds r5, #0x20
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldrb r0, [r4]
	cmp r0, #0
	bne _0806A294
	b _0806A30C
	.align 2, 0
_0806A2C4: .4byte 0x0600F000
_0806A2C8: .4byte 0x01000200
_0806A2CC: .4byte 0x0600D000
_0806A2D0: .4byte 0x030044D0
_0806A2D4: .4byte 0x08090444
_0806A2D8: .4byte 0x06008000
_0806A2DC:
	movs r0, #0xa2
	lsls r0, r0, #0xf
	orrs r4, r0
	adds r0, r4, #0
	bl sub_08006828
	adds r1, r0, #0
	movs r0, #1
	str r0, [sp]
	adds r0, r5, #0
	movs r2, #2
	movs r3, #0
	bl sub_08004D94
	adds r0, r4, #0
	movs r1, #0
	bl sub_08005C38
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	lsls r1, r6, #0x19
	mov sb, r1
	adds r7, r6, #1
_0806A30C:
	movs r0, #0x1e
	cmp r6, #0
	bne _0806A314
	movs r0, #0x1a
_0806A314:
	mov r1, sb
	lsrs r3, r1, #0x18
	mov r1, r8
	str r1, [sp]
	movs r1, #1
	str r1, [sp, #4]
	mov r1, sl
	movs r2, #0
	bl sub_08004FD4
_0806A328:
	adds r6, r7, #0
	cmp r6, #3
	ble _0806A246
	ldr r1, _0806A35C @ =0x030024E0
	movs r3, #0
	ldr r0, _0806A360 @ =0x0000FEF0
	strh r0, [r1, #0xc]
	ldr r2, _0806A364 @ =0x0000FFB0
	strh r2, [r1, #0x14]
	subs r0, #0x10
	strh r0, [r1, #0xe]
	strh r2, [r1, #0x16]
	ldr r2, _0806A368 @ =0x030044D0
	ldr r1, [r2]
	adds r1, #0x32
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r0, [r2]
	adds r0, #0x33
	strb r3, [r0]
	ldr r1, [r2]
	movs r0, #0xf0
	strh r0, [r1, #0x36]
	b _0806A412
	.align 2, 0
_0806A35C: .4byte 0x030024E0
_0806A360: .4byte 0x0000FEF0
_0806A364: .4byte 0x0000FFB0
_0806A368: .4byte 0x030044D0
_0806A36C:
	ldr r1, _0806A384 @ =0x030024E0
	ldrh r0, [r1, #0xc]
	adds r0, #8
	strh r0, [r1, #0xc]
	ldrh r0, [r1, #0xe]
	adds r0, #8
	strh r0, [r1, #0xe]
	ldr r1, [r5]
	ldrh r0, [r1, #0x36]
	subs r0, #8
	b _0806A3BC
	.align 2, 0
_0806A384: .4byte 0x030024E0
_0806A388:
	ldr r1, [r5]
	adds r1, #0x33
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xb3
	bls _0806A412
	ldr r0, [r5]
	movs r1, #0xf0
	strh r1, [r0, #0x36]
	adds r0, #0x32
	ldrb r1, [r0]
	adds r1, #1
	b _0806A410
_0806A3A8:
	ldr r1, _0806A3D0 @ =0x030024E0
	ldrh r0, [r1, #0xc]
	adds r0, #0x10
	strh r0, [r1, #0xc]
	ldrh r0, [r1, #0xe]
	adds r0, #0x10
	strh r0, [r1, #0xe]
	ldr r1, [r5]
	ldrh r0, [r1, #0x36]
	subs r0, #0x10
_0806A3BC:
	strh r0, [r1, #0x36]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0806A412
	adds r1, #0x32
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	b _0806A412
	.align 2, 0
_0806A3D0: .4byte 0x030024E0
_0806A3D4:
	ldr r1, _0806A3F8 @ =0x08090444
	ldr r3, [r5]
	adds r4, r3, #0
	adds r4, #0x34
	ldrb r0, [r4]
	adds r2, r0, #1
	lsls r0, r2, #3
	adds r0, r0, r1
	ldrh r1, [r0]
	ldr r0, _0806A3FC @ =0x0000FFFF
	cmp r1, r0
	beq _0806A400
	movs r1, #0
	strb r2, [r4]
	ldr r0, [r5]
	adds r0, #0x32
	b _0806A410
	.align 2, 0
_0806A3F8: .4byte 0x08090444
_0806A3FC: .4byte 0x0000FFFF
_0806A400:
	adds r1, r3, #0
	adds r1, #0x32
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r0, [r5]
	adds r0, #0x35
	movs r1, #1
_0806A410:
	strb r1, [r0]
_0806A412:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0806A424
sub_0806A424: @ 0x0806A424
	push {r4, r5, lr}
	sub sp, #4
	bl sub_08060708
	ldr r4, _0806A46C @ =0x030024E0
	ldr r0, _0806A470 @ =0x00005A08
	strh r0, [r4, #4]
	ldr r0, _0806A474 @ =0x00005E09
	strh r0, [r4, #6]
	ldr r0, _0806A478 @ =0x0000FEF0
	strh r0, [r4, #0xc]
	ldr r1, _0806A47C @ =0x0000FFB0
	strh r1, [r4, #0x14]
	subs r0, #0x10
	strh r0, [r4, #0xe]
	strh r1, [r4, #0x16]
	movs r0, #0xf
	bl sub_080607FC
	bl sub_08069FC4
	movs r0, #0x20
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl sub_08008AF4
	adds r4, #0x4f
	movs r0, #1
	strb r0, [r4]
	bl sub_08008D34
	movs r0, #0xe
	bl sub_080077C4
	b _0806A48E
	.align 2, 0
_0806A46C: .4byte 0x030024E0
_0806A470: .4byte 0x00005A08
_0806A474: .4byte 0x00005E09
_0806A478: .4byte 0x0000FEF0
_0806A47C: .4byte 0x0000FFB0
_0806A480:
	bl sub_0806A114
	bl sub_0806A1E4
	movs r0, #1
	bl sub_08002B98
_0806A48E:
	ldr r0, _0806A548 @ =0x030024B0
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _0806A4A6
	ldr r0, _0806A54C @ =0x030044D0
	ldr r0, [r0]
	adds r0, #0x35
	ldrb r0, [r0]
	cmp r0, #0
	beq _0806A480
_0806A4A6:
	movs r0, #0
	movs r1, #0x20
	bl sub_080077EC
	movs r0, #0x20
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl sub_080089E8
	bl sub_08008D34
	bl sub_0806A09C
	ldr r4, _0806A550 @ =0x030024E0
	movs r1, #0
	movs r0, #0x80
	lsls r0, r0, #4
	strh r0, [r4]
	ldr r0, _0806A554 @ =0x0000FFE8
	strh r0, [r4, #0x10]
	subs r0, #0x50
	strh r0, [r4, #0x18]
	str r1, [sp]
	movs r5, #0xc0
	lsls r5, r5, #0x13
	ldr r2, _0806A558 @ =0x01006000
	mov r0, sp
	adds r1, r5, #0
	bl CpuFastSet
	ldr r0, _0806A55C @ =0x08140BA4
	movs r1, #0xa0
	lsls r1, r1, #0x13
	bl sub_08008308
	ldr r0, _0806A560 @ =0x08140CFC
	adds r1, r5, #0
	bl sub_08008374
	ldr r0, _0806A564 @ =0x08140BC8
	ldr r1, _0806A568 @ =0x0600C800
	movs r2, #0
	movs r3, #0
	bl sub_080083CC
	movs r0, #0x1e
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl sub_08008AF4
	adds r4, #0x4f
	movs r0, #1
	strb r0, [r4]
	bl sub_08008D34
	movs r0, #0x96
	lsls r0, r0, #1
	bl sub_08002B98
	movs r0, #0x1e
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl sub_080089E8
	bl sub_08008D34
	bl sub_080607BC
	movs r0, #0x1a
	bl sub_08008790
	bl sub_08002B0C
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806A548: .4byte 0x030024B0
_0806A54C: .4byte 0x030044D0
_0806A550: .4byte 0x030024E0
_0806A554: .4byte 0x0000FFE8
_0806A558: .4byte 0x01006000
_0806A55C: .4byte 0x08140BA4
_0806A560: .4byte 0x08140CFC
_0806A564: .4byte 0x08140BC8
_0806A568: .4byte 0x0600C800

	thumb_func_start sub_0806A56C
sub_0806A56C: @ 0x0806A56C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #4]
	bl sub_08062848
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	movs r0, #0xff
	str r0, [sp, #8]
	movs r1, #0
	mov r8, r1
	movs r6, #0
	movs r2, #0
	str r2, [sp, #0xc]
	cmp r7, #0
	beq _0806A5AC
	bl sub_080038E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0xc]
	ldr r0, [sp, #4]
	bl sub_08003A30
_0806A5AC:
	bl sub_08061E08
	ldr r0, _0806A5E8 @ =0x0809058C
	movs r1, #8
	bl sub_08061FBC
	adds r0, r5, #0
	bl sub_080627F8
	ldr r0, [sp, #0xc]
	cmp r0, #0
	beq _0806A5CA
	movs r0, #0
	bl sub_08061124
_0806A5CA:
	movs r0, #0
	bl sub_080613CC
	movs r0, #0
	bl sub_080059E4
	ldr r1, [sp, #0xc]
	cmp r1, #0
	bne _0806A5EC
	movs r0, #0xf8
	lsls r0, r0, #0xe
	bl sub_080062D0
	b _0806A5F2
	.align 2, 0
_0806A5E8: .4byte 0x0809058C
_0806A5EC:
	ldr r0, _0806A600 @ =0x003E0033
	bl sub_080062D0
_0806A5F2:
	mov r4, sp
	ldr r2, [sp, #4]
	adds r2, #1
	mov sl, r2
	lsls r2, r2, #0x10
	mov sb, r2
	b _0806A700
	.align 2, 0
_0806A600: .4byte 0x003E0033
_0806A604:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0806A6A2
	ldr r0, _0806A638 @ =0x0809058C
	adds r0, r5, r0
	ldrb r6, [r0]
	movs r0, #0xcc
	bl m4aSongNumStart
	movs r0, #0
	bl sub_08061124
	movs r0, #5
	adds r1, r6, #0
	bl sub_08005BE0
	cmp r7, #0
	bne _0806A644
	ldr r0, _0806A63C @ =0x003E0001
	bl sub_080062D0
	ldr r0, _0806A640 @ =0x003E0002
	bl sub_0800648C
	b _0806A650
	.align 2, 0
_0806A638: .4byte 0x0809058C
_0806A63C: .4byte 0x003E0001
_0806A640: .4byte 0x003E0002
_0806A644:
	ldr r0, _0806A68C @ =0x003E000B
	bl sub_080062D0
	ldr r0, _0806A690 @ =0x003E000C
	bl sub_0800648C
_0806A650:
	bl sub_080064F8
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0806A694
	cmp r7, #0
	beq _0806A728
	movs r0, #1
	mov r8, r0
_0806A662:
	strb r6, [r4]
	strb r5, [r4, #1]
	mov r1, r8
	strb r1, [r4, #2]
	ldr r0, [sp, #4]
	adds r0, #1
	lsls r5, r0, #0x10
	movs r4, #9
_0806A672:
	lsrs r0, r5, #0x10
	mov r1, sp
	movs r2, #4
	bl sub_080038F4
	movs r0, #1
	bl sub_08002B98
	subs r4, #1
	cmp r4, #0
	bge _0806A672
	b _0806A728
	.align 2, 0
_0806A68C: .4byte 0x003E000B
_0806A690: .4byte 0x003E000C
_0806A694:
	movs r0, #1
	bl sub_08061124
	movs r0, #0xf8
	lsls r0, r0, #0xe
	bl sub_080062D0
_0806A6A2:
	bl sub_08062648
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r7, #0
	beq _0806A6E6
	strb r6, [r4]
	strb r5, [r4, #1]
	mov r2, r8
	strb r2, [r4, #2]
	mov r1, sb
	lsrs r0, r1, #0x10
	mov r1, sp
	movs r2, #4
	bl sub_080038F4
	b _0806A6E6
_0806A6C4:
	movs r0, #0
	mov r2, sb
	lsrs r1, r2, #0x10
	mov r2, sp
	movs r3, #4
	bl sub_08003938
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, sl
	bne _0806A6E6
	ldrb r6, [r4]
	ldrb r5, [r4, #1]
	ldrb r0, [r4, #2]
	mov r8, r0
	cmp r0, #0
	bne _0806A728
_0806A6E6:
	ldr r1, [sp, #8]
	cmp r1, r5
	beq _0806A700
	adds r0, r5, #0
	bl sub_080627F8
	ldr r0, _0806A760 @ =0x0809058C
	adds r0, r5, r0
	ldrb r6, [r0]
	adds r0, r6, #0
	bl sub_0806083C
	str r5, [sp, #8]
_0806A700:
	movs r0, #1
	bl sub_08002B98
	ldr r2, [sp, #0xc]
	cmp r2, #0
	bne _0806A6C4
	ldr r0, _0806A764 @ =0x030024B0
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0806A71A
	b _0806A604
_0806A71A:
	movs r0, #0xce
	bl m4aSongNumStart
	movs r6, #0xff
	mov r8, r6
	cmp r7, #0
	bne _0806A662
_0806A728:
	bl sub_08005A2C
	bl sub_08061490
	bl sub_08062180
	cmp r6, #0xff
	bne _0806A73C
	bl sub_08060950
_0806A73C:
	cmp r7, #0
	beq _0806A74C
	ldr r0, [sp, #4]
	adds r0, #2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_08003A30
_0806A74C:
	adds r0, r6, #0
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0806A760: .4byte 0x0809058C
_0806A764: .4byte 0x030024B0

	thumb_func_start sub_0806A768
sub_0806A768: @ 0x0806A768
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	movs r7, #0x44
	ldr r0, _0806A7F8 @ =0x03004400
	movs r1, #1
	strb r1, [r0, #5]
	ldrb r0, [r0, #0xa]
	cmp r0, #0x11
	bne _0806A794
	bl sub_08001F2C
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _0806A794
	movs r0, #0x2a
	bl sub_08008790
	bl sub_08002B0C
_0806A794:
	bl sub_08060708
	ldr r1, _0806A7F8 @ =0x03004400
	ldrb r0, [r1, #0xa]
	movs r5, #0
	cmp r0, #0x11
	bne _0806A7A4
	movs r5, #5
_0806A7A4:
	ldrb r0, [r1, #8]
	strb r0, [r1, #0xa]
	movs r0, #9
	bl sub_080607FC
	bl sub_08060FF4
	bl sub_08061D7C
	movs r0, #2
	bl sub_08061DA0
	cmp r5, #5
	bne _0806A806
	bl sub_08003468
	bl sub_08003510
	movs r0, #0xa
	bl sub_08002B98
	ldr r4, _0806A7FC @ =0x02037EB0
	movs r6, #1
	strb r6, [r4, #6]
	bl sub_08001F2C
	lsls r0, r0, #0x18
	asrs r1, r0, #0x18
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0806A800
	strb r6, [r4, #4]
	adds r0, r4, #0
	adds r0, #0x84
	str r1, [r0]
	movs r0, #0xa
	strb r0, [r4, #8]
_0806A7F0:
	movs r0, #1
	bl sub_08002B98
	b _0806A7F0
	.align 2, 0
_0806A7F8: .4byte 0x03004400
_0806A7FC: .4byte 0x02037EB0
_0806A800:
	movs r0, #8
	bl sub_080077C4
_0806A806:
	movs r0, #0x20
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl sub_08008AF4
	ldr r0, _0806A834 @ =0x030024E0
	adds r0, #0x4f
	movs r1, #1
	strb r1, [r0]
	bl sub_08008D34
	movs r6, #0
_0806A820:
	lsls r0, r5, #0x18
	asrs r0, r0, #0x18
	cmp r0, #5
	bls _0806A82A
	b _0806A9BC
_0806A82A:
	lsls r0, r0, #2
	ldr r1, _0806A838 @ =_0806A83C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0806A834: .4byte 0x030024E0
_0806A838: .4byte _0806A83C
_0806A83C: @ jump table
	.4byte _0806A854 @ case 0
	.4byte _0806A868 @ case 1
	.4byte _0806A882 @ case 2
	.4byte _0806A8A0 @ case 3
	.4byte _0806A90A @ case 4
	.4byte _0806A91A @ case 5
_0806A854:
	bl sub_080628A0
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _0806A896
	movs r0, #0x2a
	b _0806A912
_0806A868:
	bl sub_080628D8
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r5, #2
	mvns r0, r0
	rsbs r1, r0, #0
	orrs r1, r0
	asrs r1, r1, #0x1f
	ands r5, r1
	bl sub_0806288C
	b _0806A9BC
_0806A882:
	ldr r1, _0806A89C @ =0x00002201
	movs r0, #0
	bl sub_0806A56C
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	movs r5, #3
	cmp r7, #0xff
	beq _0806A896
	b _0806A9BC
_0806A896:
	movs r5, #1
	b _0806A9BC
	.align 2, 0
_0806A89C: .4byte 0x00002201
_0806A8A0:
	ldr r0, _0806A8FC @ =0x03004400
	ldrb r1, [r0, #0xe]
	ldrb r2, [r0, #0xf]
	adds r0, r7, #0
	movs r3, #1
	bl sub_08001D80
	movs r0, #0
	movs r1, #0x20
	bl sub_080077EC
	movs r0, #0x20
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl sub_080089E8
	bl sub_08008D34
	adds r0, r7, #0
	movs r1, #0
	bl sub_0806E4F4
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0806A904
	movs r0, #9
	bl sub_080607FC
	movs r0, #8
	bl sub_080077C4
	movs r0, #0x20
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl sub_08008AF4
	ldr r0, _0806A900 @ =0x030024E0
	adds r0, #0x4f
	movs r1, #1
	strb r1, [r0]
	bl sub_08008D34
	movs r5, #2
	b _0806A9BC
	.align 2, 0
_0806A8FC: .4byte 0x03004400
_0806A900: .4byte 0x030024E0
_0806A904:
	movs r5, #4
	movs r6, #1
	b _0806A9BC
_0806A90A:
	movs r0, #0x17
	bl sub_08001930
	movs r0, #0x11
_0806A912:
	bl sub_08008790
	movs r5, #0xff
	b _0806A9BC
_0806A91A:
	bl sub_08001F2C
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	beq _0806A938
	cmp r0, #1
	ble _0806A92E
	cmp r0, #2
	beq _0806A940
_0806A92E:
	ldr r4, _0806A934 @ =0x003E002D
	b _0806A942
	.align 2, 0
_0806A934: .4byte 0x003E002D
_0806A938:
	ldr r4, _0806A93C @ =0x003E0003
	b _0806A942
	.align 2, 0
_0806A93C: .4byte 0x003E0003
_0806A940:
	ldr r4, _0806A970 @ =0x003E0004
_0806A942:
	movs r0, #0
	bl sub_080059E4
	adds r0, r4, #0
	bl sub_080062D0
	bl sub_08005A2C
	ldr r0, _0806A974 @ =0x00001234
	bl sub_08003A30
	ldr r0, _0806A978 @ =0x003E0005
	bl sub_0800648C
	bl sub_080064F8
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0806A980
	ldr r0, _0806A97C @ =0x03004400
	ldrb r7, [r0, #0xd]
	movs r5, #4
	b _0806A98C
	.align 2, 0
_0806A970: .4byte 0x003E0004
_0806A974: .4byte 0x00001234
_0806A978: .4byte 0x003E0005
_0806A97C: .4byte 0x03004400
_0806A980:
	bl sub_08003530
	movs r0, #0x2a
	bl sub_08008790
	movs r5, #0xff
_0806A98C:
	mov r0, sp
	strb r5, [r0]
	bl sub_0800B818
	mov r1, sp
	strb r0, [r1, #1]
	mov r0, sp
	ldrb r0, [r0, #1]
	bl sub_08001B54
	movs r4, #0
_0806A9A2:
	ldr r0, _0806A9D0 @ =0x00001111
	mov r1, sp
	movs r2, #2
	bl sub_080038F4
	movs r0, #1
	bl sub_08002B98
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #9
	bls _0806A9A2
_0806A9BC:
	lsls r0, r5, #0x18
	asrs r0, r0, #0x18
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _0806A9D4
	movs r0, #1
	bl sub_08002B98
	b _0806A820
	.align 2, 0
_0806A9D0: .4byte 0x00001111
_0806A9D4:
	cmp r6, #0
	bne _0806A9F8
	ldr r0, _0806AA1C @ =0x03004400
	ldrb r0, [r0, #9]
	cmp r0, #0x11
	bne _0806A9E8
	movs r0, #0
	movs r1, #0x20
	bl sub_080077EC
_0806A9E8:
	movs r0, #0x20
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl sub_080089E8
	bl sub_08008D34
_0806A9F8:
	ldr r0, _0806AA1C @ =0x03004400
	ldrb r0, [r0, #9]
	cmp r0, #0x2a
	bne _0806AA04
	bl sub_080034DC
_0806AA04:
	bl sub_08061E30
	bl sub_0806102C
	bl sub_080607BC
	bl sub_08002B0C
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806AA1C: .4byte 0x03004400

	thumb_func_start sub_0806AA20
sub_0806AA20: @ 0x0806AA20
	push {lr}
	sub sp, #4
	mov r1, sp
	ldr r2, _0806AA58 @ =0x00001111
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _0806AA5C @ =0x06008020
	ldr r2, _0806AA60 @ =0x01000010
	mov r0, sp
	bl CpuSet
	mov r0, sp
	adds r0, #2
	ldr r2, _0806AA64 @ =0x00001001
	adds r1, r2, #0
	strh r1, [r0]
	ldr r1, _0806AA68 @ =0x0600D000
	ldr r2, _0806AA6C @ =0x01000400
	bl CpuSet
	ldr r2, _0806AA70 @ =0x030024E0
	ldrh r1, [r2]
	ldr r0, _0806AA74 @ =0x0000FDFF
	ands r0, r1
	strh r0, [r2]
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_0806AA58: .4byte 0x00001111
_0806AA5C: .4byte 0x06008020
_0806AA60: .4byte 0x01000010
_0806AA64: .4byte 0x00001001
_0806AA68: .4byte 0x0600D000
_0806AA6C: .4byte 0x01000400
_0806AA70: .4byte 0x030024E0
_0806AA74: .4byte 0x0000FDFF

	thumb_func_start sub_0806AA78
sub_0806AA78: @ 0x0806AA78
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	movs r6, #0
	ldr r7, _0806AAD8 @ =0x08090594
	mov r8, r7
_0806AA84:
	lsls r0, r6, #4
	mov r1, r8
	adds r1, #4
	adds r0, r0, r1
	ldr r5, [r0]
	adds r0, r5, #0
	bl sub_08006C14
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r0, [r7]
	ldr r1, _0806AADC @ =0x080905C4
	adds r1, r6, r1
	ldrb r1, [r1]
	lsls r1, r1, #5
	ldr r2, _0806AAE0 @ =0x05000200
	adds r1, r1, r2
	bl sub_08008308
	lsls r1, r4, #5
	ldr r0, _0806AAE4 @ =0x06010000
	adds r1, r1, r0
	adds r0, r5, #0
	bl sub_08008374
	ldr r0, _0806AAE8 @ =0x03004500
	ldr r0, [r0]
	lsls r1, r6, #1
	adds r0, #0xf8
	adds r0, r0, r1
	strh r4, [r0]
	adds r7, #0x10
	adds r6, #1
	cmp r6, #2
	ble _0806AA84
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806AAD8: .4byte 0x08090594
_0806AADC: .4byte 0x080905C4
_0806AAE0: .4byte 0x05000200
_0806AAE4: .4byte 0x06010000
_0806AAE8: .4byte 0x03004500

	thumb_func_start sub_0806AAEC
sub_0806AAEC: @ 0x0806AAEC
	push {r4, r5, lr}
	ldr r0, _0806AB08 @ =0x08090594
	adds r5, r0, #4
	movs r4, #2
_0806AAF4:
	ldr r0, [r5]
	bl sub_08006CA0
	adds r5, #0x10
	subs r4, #1
	cmp r4, #0
	bge _0806AAF4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806AB08: .4byte 0x08090594

	thumb_func_start sub_0806AB0C
sub_0806AB0C: @ 0x0806AB0C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r2, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	movs r0, #2
	bl sub_080099E0
	adds r5, r0, #0
	ldr r0, _0806AB70 @ =0x03004500
	ldr r0, [r0]
	lsls r1, r4, #1
	adds r0, #0xf8
	adds r0, r0, r1
	ldrh r1, [r0]
	lsls r1, r1, #5
	ldr r0, _0806AB74 @ =0x06010000
	adds r1, r1, r0
	adds r0, r5, #0
	bl sub_08009A78
	ldr r0, _0806AB78 @ =0x080905C4
	adds r0, r4, r0
	ldrb r1, [r0]
	adds r0, r5, #0
	bl sub_08009AB4
	ldr r0, _0806AB7C @ =0x08090594
	lsls r4, r4, #4
	adds r0, #8
	adds r4, r4, r0
	ldr r2, [r4]
	adds r0, r5, #0
	movs r1, #0
	adds r3, r6, #0
	bl sub_08009ACC
	adds r0, r5, #0
	movs r1, #1
	bl sub_08009A34
	adds r0, r5, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0806AB70: .4byte 0x03004500
_0806AB74: .4byte 0x06010000
_0806AB78: .4byte 0x080905C4
_0806AB7C: .4byte 0x08090594

	thumb_func_start sub_0806AB80
sub_0806AB80: @ 0x0806AB80
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	adds r4, r0, #0
	adds r6, r2, #0
	mov r8, r3
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	mov r0, r8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	movs r0, #2
	bl sub_080099E0
	adds r5, r0, #0
	ldr r0, _0806AC04 @ =0x03004500
	ldr r0, [r0]
	lsls r1, r4, #1
	adds r0, #0xf8
	adds r0, r0, r1
	ldrh r1, [r0]
	lsls r1, r1, #5
	ldr r0, _0806AC08 @ =0x06010000
	adds r1, r1, r0
	adds r0, r5, #0
	bl sub_08009A78
	ldr r0, _0806AC0C @ =0x080905C4
	adds r0, r4, r0
	ldrb r1, [r0]
	adds r0, r5, #0
	bl sub_08009AB4
	ldr r2, _0806AC10 @ =0x08090594
	lsls r4, r4, #4
	adds r0, r2, #0
	adds r0, #0xc
	adds r0, r4, r0
	ldr r1, [r0]
	adds r2, #8
	adds r4, r4, r2
	ldr r2, [r4]
	adds r0, r5, #0
	adds r3, r6, #0
	bl sub_08009ACC
	adds r0, r5, #0
	mov r1, r8
	bl sub_08009B40
	adds r0, r5, #0
	movs r1, #1
	bl sub_08009A34
	adds r0, r5, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0806AC04: .4byte 0x03004500
_0806AC08: .4byte 0x06010000
_0806AC0C: .4byte 0x080905C4
_0806AC10: .4byte 0x08090594

	thumb_func_start sub_0806AC14
sub_0806AC14: @ 0x0806AC14
	push {r4, lr}
	adds r4, r0, #0
	adds r3, r2, #0
	lsls r1, r1, #0x18
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	ldr r0, _0806AC40 @ =0x08090594
	lsrs r1, r1, #0x14
	adds r0, #8
	adds r1, r1, r0
	ldr r2, [r1]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08009ACC
	adds r0, r4, #0
	movs r1, #1
	bl sub_08009A34
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806AC40: .4byte 0x08090594

	thumb_func_start sub_0806AC44
sub_0806AC44: @ 0x0806AC44
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r4, r2, #0
	adds r5, r3, #0
	lsls r1, r1, #0x18
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	ldr r2, _0806AC88 @ =0x08090594
	lsrs r1, r1, #0x14
	adds r0, r2, #0
	adds r0, #0xc
	adds r0, r1, r0
	ldr r3, [r0]
	adds r2, #8
	adds r1, r1, r2
	ldr r2, [r1]
	adds r0, r6, #0
	adds r1, r3, #0
	adds r3, r4, #0
	bl sub_08009ACC
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_08009B40
	adds r0, r6, #0
	movs r1, #1
	bl sub_08009A34
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0806AC88: .4byte 0x08090594

	thumb_func_start sub_0806AC8C
sub_0806AC8C: @ 0x0806AC8C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x18
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	mov r4, sp
	mov r0, sp
	movs r1, #0
	movs r2, #0xa
	bl memset
	movs r0, #2
	strb r0, [r4, #1]
	add r4, sp, #0xc
	ldr r1, _0806ACC0 @ =0x080905C7
	adds r0, r4, #0
	movs r2, #0xa
	bl memcpy
	adds r7, r4, #0
	cmp r6, #0
	bne _0806ACC8
	ldr r0, _0806ACC4 @ =0x03004500
	ldr r0, [r0]
	adds r4, r0, #0
	adds r4, #0x18
	b _0806ACD0
	.align 2, 0
_0806ACC0: .4byte 0x080905C7
_0806ACC4: .4byte 0x03004500
_0806ACC8:
	ldr r0, _0806ACF0 @ =0x03004500
	ldr r0, [r0]
	adds r4, r0, #0
	adds r4, #0x88
_0806ACD0:
	movs r5, #0
_0806ACD2:
	ldr r0, [r4]
	cmp r0, #0
	bne _0806AD00
	mov r1, sp
	adds r0, r1, r5
	ldrb r3, [r0]
	movs r1, #0x3f
	cmp r5, #0
	bne _0806ACF4
	movs r1, #0x40
	movs r2, #0x1b
	cmp r6, #0
	bne _0806ACF8
	movs r2, #0x1c
	b _0806ACF8
	.align 2, 0
_0806ACF0: .4byte 0x03004500
_0806ACF4:
	adds r0, r7, r5
	ldrb r2, [r0]
_0806ACF8:
	adds r0, r3, #0
	bl sub_0806AB0C
	str r0, [r4]
_0806AD00:
	adds r5, #1
	adds r4, #4
	cmp r5, #9
	ble _0806ACD2
	add sp, #0x18
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0806AD10
sub_0806AD10: @ 0x0806AD10
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0806AD28
	ldr r0, _0806AD24 @ =0x03004500
	ldr r0, [r0]
	adds r4, r0, #0
	adds r4, #0x18
	b _0806AD30
	.align 2, 0
_0806AD24: .4byte 0x03004500
_0806AD28:
	ldr r0, _0806AD50 @ =0x03004500
	ldr r0, [r0]
	adds r4, r0, #0
	adds r4, #0x88
_0806AD30:
	movs r6, #0
	movs r5, #9
_0806AD34:
	ldr r0, [r4]
	cmp r0, #0
	beq _0806AD40
	bl sub_08009A00
	str r6, [r4]
_0806AD40:
	subs r5, #1
	adds r4, #4
	cmp r5, #0
	bge _0806AD34
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0806AD50: .4byte 0x03004500

	thumb_func_start sub_0806AD54
sub_0806AD54: @ 0x0806AD54
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0806AD78
	ldr r0, _0806AD70 @ =0x030044E0
	ldrh r7, [r0]
	ldrh r5, [r0, #4]
	ldr r0, _0806AD74 @ =0x03004500
	ldr r0, [r0]
	adds r0, #0x20
	b _0806AD84
	.align 2, 0
_0806AD70: .4byte 0x030044E0
_0806AD74: .4byte 0x03004500
_0806AD78:
	ldr r0, _0806AE30 @ =0x030044E0
	ldrh r7, [r0, #0xc]
	ldrh r5, [r0, #0x10]
	ldr r0, _0806AE34 @ =0x03004500
	ldr r0, [r0]
	adds r0, #0x90
_0806AD84:
	mov sb, r0
	movs r6, #0x64
	movs r0, #2
	mov r8, r0
_0806AD8C:
	adds r0, r5, #0
	adds r1, r6, #0
	bl __udivsi3
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r0, r5, #0
	adds r1, r6, #0
	bl __umodsi3
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r0, r6, #0
	movs r1, #0xa
	bl __udivsi3
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	mov r1, sb
	adds r1, #4
	mov sb, r1
	subs r1, #4
	ldm r1!, {r0}
	adds r2, r4, #0
	adds r2, #0x1e
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	movs r1, #0
	bl sub_0806AC14
	movs r0, #1
	rsbs r0, r0, #0
	add r8, r0
	mov r1, r8
	cmp r1, #0
	bge _0806AD8C
	ldr r6, _0806AE38 @ =0x00002710
	movs r0, #4
	mov r8, r0
_0806ADDA:
	adds r0, r7, #0
	adds r1, r6, #0
	bl __udivsi3
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r0, r7, #0
	adds r1, r6, #0
	bl __umodsi3
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r0, r6, #0
	movs r1, #0xa
	bl __udivsi3
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	mov r1, sb
	adds r1, #4
	mov sb, r1
	subs r1, #4
	ldm r1!, {r0}
	adds r2, r4, #0
	adds r2, #0x11
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	movs r1, #0
	bl sub_0806AC14
	movs r0, #1
	rsbs r0, r0, #0
	add r8, r0
	mov r1, r8
	cmp r1, #0
	bge _0806ADDA
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806AE30: .4byte 0x030044E0
_0806AE34: .4byte 0x03004500
_0806AE38: .4byte 0x00002710

	thumb_func_start sub_0806AE3C
sub_0806AE3C: @ 0x0806AE3C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x50
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	ldr r1, _0806AE68 @ =0x080905D4
	mov r0, sp
	movs r2, #0x50
	bl memcpy
	cmp r4, #0
	bne _0806AE70
	ldr r0, _0806AE6C @ =0x03004500
	ldr r0, [r0]
	adds r5, r0, #0
	adds r5, #0x18
	b _0806AE78
	.align 2, 0
_0806AE68: .4byte 0x080905D4
_0806AE6C: .4byte 0x03004500
_0806AE70:
	ldr r0, _0806AEC4 @ =0x03004500
	ldr r0, [r0]
	adds r5, r0, #0
	adds r5, #0x88
_0806AE78:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	mov r1, sp
	adds r4, r0, r1
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	mov r8, r0
	lsls r0, r7, #0x10
	asrs r7, r0, #0x10
	movs r6, #9
_0806AE8E:
	ldr r0, [r5]
	cmp r0, #0
	beq _0806AEAC
	ldrh r1, [r4]
	add r1, r8
	subs r1, #0x18
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldrh r2, [r4, #2]
	adds r2, r7, r2
	subs r2, #0xc
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl sub_08009A70
_0806AEAC:
	adds r4, #4
	subs r6, #1
	adds r5, #4
	cmp r6, #0
	bge _0806AE8E
	add sp, #0x50
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806AEC4: .4byte 0x03004500

	thumb_func_start sub_0806AEC8
sub_0806AEC8: @ 0x0806AEC8
	push {r4, r5, r6, lr}
	ldr r6, _0806AF14 @ =0x03004500
	ldr r0, [r6]
	ldr r0, [r0]
	cmp r0, #0
	bne _0806AF0C
	bl sub_08009DDC
	adds r5, r0, #0
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r2, #0
	bl sub_08009E84
	adds r0, r5, #0
	movs r1, #0
	bl sub_08009E9C
	movs r0, #0
	movs r1, #0x40
	movs r2, #0
	bl sub_0806AB0C
	adds r4, r0, #0
	movs r1, #1
	bl sub_08009B84
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08009B9C
	ldr r0, [r6]
	str r4, [r0]
	str r5, [r0, #4]
_0806AF0C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0806AF14: .4byte 0x03004500

	thumb_func_start sub_0806AF18
sub_0806AF18: @ 0x0806AF18
	push {r4, r5, r6, lr}
	ldr r6, _0806AF50 @ =0x03004500
	ldr r0, [r6]
	ldr r4, [r0]
	ldr r5, [r0, #4]
	cmp r4, #0
	beq _0806AF3A
	adds r0, r4, #0
	movs r1, #0
	bl sub_08009B9C
	adds r0, r4, #0
	bl sub_08009A00
	ldr r1, [r6]
	movs r0, #0
	str r0, [r1]
_0806AF3A:
	cmp r5, #0
	beq _0806AF4A
	adds r0, r5, #0
	bl sub_08009E54
	ldr r1, [r6]
	movs r0, #0
	str r0, [r1, #0x14]
_0806AF4A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0806AF50: .4byte 0x03004500

	thumb_func_start sub_0806AF54
sub_0806AF54: @ 0x0806AF54
	push {lr}
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	ldr r0, _0806AF74 @ =0x03004500
	ldr r0, [r0]
	ldr r0, [r0]
	cmp r0, #0
	beq _0806AF70
	subs r2, #0x6c
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	movs r1, #0
	bl sub_0806AC14
_0806AF70:
	pop {r0}
	bx r0
	.align 2, 0
_0806AF74: .4byte 0x03004500

	thumb_func_start sub_0806AF78
sub_0806AF78: @ 0x0806AF78
	push {lr}
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r2, r1, #0x10
	ldr r0, _0806AF9C @ =0x03004500
	ldr r0, [r0]
	ldr r0, [r0]
	cmp r0, #0
	beq _0806AF98
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl sub_08009A70
_0806AF98:
	pop {r0}
	bx r0
	.align 2, 0
_0806AF9C: .4byte 0x03004500

	thumb_func_start sub_0806AFA0
sub_0806AFA0: @ 0x0806AFA0
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r5, r0, #0
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	ldr r1, _0806AFD4 @ =0x08090624
	mov r0, sp
	movs r2, #4
	bl memcpy
	add r4, sp, #4
	adds r0, r4, #0
	movs r1, #0
	movs r2, #4
	bl memset
	movs r0, #0xd
	strb r0, [r4]
	adds r6, r4, #0
	cmp r5, #0
	bne _0806AFDC
	ldr r0, _0806AFD8 @ =0x03004500
	ldr r0, [r0]
	adds r5, r0, #0
	adds r5, #0x40
	b _0806AFE4
	.align 2, 0
_0806AFD4: .4byte 0x08090624
_0806AFD8: .4byte 0x03004500
_0806AFDC:
	ldr r0, _0806B018 @ =0x03004500
	ldr r0, [r0]
	adds r5, r0, #0
	adds r5, #0xb0
_0806AFE4:
	movs r4, #0
_0806AFE6:
	ldr r0, [r5]
	cmp r0, #0
	bne _0806B006
	mov r1, sp
	adds r0, r1, r4
	ldrb r3, [r0]
	movs r1, #0x3f
	cmp r4, #0
	bne _0806AFFA
	movs r1, #0x40
_0806AFFA:
	adds r0, r6, r4
	ldrb r2, [r0]
	adds r0, r3, #0
	bl sub_0806AB0C
	str r0, [r5]
_0806B006:
	adds r4, #1
	adds r5, #4
	cmp r4, #3
	ble _0806AFE6
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0806B018: .4byte 0x03004500

	thumb_func_start sub_0806B01C
sub_0806B01C: @ 0x0806B01C
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0806B034
	ldr r0, _0806B030 @ =0x03004500
	ldr r0, [r0]
	adds r4, r0, #0
	adds r4, #0x40
	b _0806B03C
	.align 2, 0
_0806B030: .4byte 0x03004500
_0806B034:
	ldr r0, _0806B05C @ =0x03004500
	ldr r0, [r0]
	adds r4, r0, #0
	adds r4, #0xb0
_0806B03C:
	movs r6, #0
	movs r5, #3
_0806B040:
	ldr r0, [r4]
	cmp r0, #0
	beq _0806B04C
	bl sub_08009A00
	str r6, [r4]
_0806B04C:
	subs r5, #1
	adds r4, #4
	cmp r5, #0
	bge _0806B040
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0806B05C: .4byte 0x03004500

	thumb_func_start sub_0806B060
sub_0806B060: @ 0x0806B060
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r0, #0
	bne _0806B07C
	ldr r0, _0806B078 @ =0x03004500
	ldr r0, [r0]
	adds r5, r0, #0
	adds r5, #0x40
	b _0806B084
	.align 2, 0
_0806B078: .4byte 0x03004500
_0806B07C:
	ldr r0, _0806B0B4 @ =0x03004500
	ldr r0, [r0]
	adds r5, r0, #0
	adds r5, #0xb0
_0806B084:
	lsls r0, r1, #0x18
	asrs r6, r0, #0x18
	movs r0, #1
	rsbs r0, r0, #0
	cmp r6, r0
	bne _0806B0B8
	ldm r5!, {r0}
	movs r1, #0
	movs r2, #0xe
	bl sub_0806AC14
	ldm r5!, {r0}
	movs r1, #0
	bl sub_08009A34
	ldm r5!, {r0}
	movs r1, #0
	bl sub_08009A34
	ldr r0, [r5]
	movs r1, #0
	bl sub_08009A34
	b _0806B10A
	.align 2, 0
_0806B0B4: .4byte 0x03004500
_0806B0B8:
	ldm r5!, {r0}
	movs r1, #0
	movs r2, #0xd
	bl sub_0806AC14
	ldm r5!, {r0}
	movs r1, #1
	bl sub_08009A34
	ldr r4, [r5]
	adds r0, r6, #0
	movs r1, #0xa
	bl __divsi3
	adds r2, r0, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	adds r0, r4, #0
	movs r1, #1
	bl sub_0806AC14
	ldm r5!, {r0}
	movs r1, #1
	bl sub_08009A34
	ldr r4, [r5]
	adds r0, r6, #0
	movs r1, #0xa
	bl __modsi3
	adds r2, r0, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	adds r0, r4, #0
	movs r1, #1
	bl sub_0806AC14
	ldr r0, [r5]
	movs r1, #1
	bl sub_08009A34
_0806B10A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_0806B110
sub_0806B110: @ 0x0806B110
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x10
	lsls r0, r0, #0x18
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r4, r2, #0x10
	mov r2, sp
	ldr r1, _0806B13C @ =0x08090628
	ldm r1!, {r5, r6, r7}
	stm r2!, {r5, r6, r7}
	ldr r1, [r1]
	str r1, [r2]
	cmp r0, #0
	bne _0806B144
	ldr r0, _0806B140 @ =0x03004500
	ldr r0, [r0]
	adds r5, r0, #0
	adds r5, #0x40
	b _0806B14C
	.align 2, 0
_0806B13C: .4byte 0x08090628
_0806B140: .4byte 0x03004500
_0806B144:
	ldr r0, _0806B190 @ =0x03004500
	ldr r0, [r0]
	adds r5, r0, #0
	adds r5, #0xb0
_0806B14C:
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	mov r8, r0
	lsls r0, r4, #0x10
	asrs r7, r0, #0x10
	mov r4, sp
	movs r6, #3
_0806B15A:
	ldr r0, [r5]
	cmp r0, #0
	beq _0806B178
	ldrh r1, [r4]
	add r1, r8
	subs r1, #0x1c
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldrh r2, [r4, #2]
	adds r2, r7, r2
	subs r2, #0xc
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl sub_08009A70
_0806B178:
	adds r4, #4
	subs r6, #1
	adds r5, #4
	cmp r6, #0
	bge _0806B15A
	add sp, #0x10
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806B190: .4byte 0x03004500

	thumb_func_start sub_0806B194
sub_0806B194: @ 0x0806B194
	push {r4, lr}
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0806B1AC
	ldr r0, _0806B1A8 @ =0x03004500
	ldr r0, [r0]
	adds r4, r0, #0
	adds r4, #0x50
	b _0806B1B4
	.align 2, 0
_0806B1A8: .4byte 0x03004500
_0806B1AC:
	ldr r0, _0806B1CC @ =0x03004500
	ldr r0, [r0]
	adds r4, r0, #0
	adds r4, #0xc0
_0806B1B4:
	ldr r0, [r4]
	cmp r0, #0
	bne _0806B1C6
	movs r0, #0
	movs r1, #0x40
	movs r2, #6
	bl sub_0806AB0C
	str r0, [r4]
_0806B1C6:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806B1CC: .4byte 0x03004500

	thumb_func_start sub_0806B1D0
sub_0806B1D0: @ 0x0806B1D0
	push {r4, lr}
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0806B1E8
	ldr r0, _0806B1E4 @ =0x03004500
	ldr r0, [r0]
	adds r4, r0, #0
	adds r4, #0x50
	b _0806B1F0
	.align 2, 0
_0806B1E4: .4byte 0x03004500
_0806B1E8:
	ldr r0, _0806B204 @ =0x03004500
	ldr r0, [r0]
	adds r4, r0, #0
	adds r4, #0xc0
_0806B1F0:
	ldr r0, [r4]
	cmp r0, #0
	beq _0806B1FE
	bl sub_08009A00
	movs r0, #0
	str r0, [r4]
_0806B1FE:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806B204: .4byte 0x03004500

	thumb_func_start sub_0806B208
sub_0806B208: @ 0x0806B208
	push {lr}
	lsls r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r0, #0
	bne _0806B220
	ldr r0, _0806B21C @ =0x03004500
	ldr r0, [r0]
	ldr r3, [r0, #0x50]
	b _0806B228
	.align 2, 0
_0806B21C: .4byte 0x03004500
_0806B220:
	ldr r0, _0806B240 @ =0x03004500
	ldr r0, [r0]
	adds r0, #0xc0
	ldr r3, [r0]
_0806B228:
	cmp r3, #0
	beq _0806B24E
	lsls r0, r1, #0x18
	asrs r1, r0, #0x18
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0806B244
	adds r0, r1, #6
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	b _0806B246
	.align 2, 0
_0806B240: .4byte 0x03004500
_0806B244:
	movs r2, #0xc
_0806B246:
	adds r0, r3, #0
	movs r1, #0
	bl sub_0806AC14
_0806B24E:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0806B254
sub_0806B254: @ 0x0806B254
	push {lr}
	lsls r0, r0, #0x18
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	cmp r0, #0
	bne _0806B270
	ldr r0, _0806B26C @ =0x03004500
	ldr r0, [r0]
	ldr r0, [r0, #0x50]
	b _0806B278
	.align 2, 0
_0806B26C: .4byte 0x03004500
_0806B270:
	ldr r0, _0806B294 @ =0x03004500
	ldr r0, [r0]
	adds r0, #0xc0
	ldr r0, [r0]
_0806B278:
	cmp r0, #0
	beq _0806B290
	lsls r1, r1, #0x10
	ldr r3, _0806B298 @ =0xFFF00000
	adds r1, r1, r3
	asrs r1, r1, #0x10
	lsls r2, r2, #0x10
	ldr r3, _0806B29C @ =0xFFF80000
	adds r2, r2, r3
	asrs r2, r2, #0x10
	bl sub_08009A70
_0806B290:
	pop {r0}
	bx r0
	.align 2, 0
_0806B294: .4byte 0x03004500
_0806B298: .4byte 0xFFF00000
_0806B29C: .4byte 0xFFF80000

	thumb_func_start sub_0806B2A0
sub_0806B2A0: @ 0x0806B2A0
	push {r4, r5, r6, lr}
	sub sp, #4
	ldr r1, _0806B2E4 @ =0x08090638
	mov r0, sp
	movs r2, #2
	bl memcpy
	movs r5, #0
	ldr r6, _0806B2E8 @ =0x03004500
_0806B2B2:
	ldr r0, [r6]
	lsls r4, r5, #2
	adds r0, #8
	adds r0, r0, r4
	ldr r0, [r0]
	cmp r0, #0
	bne _0806B2D6
	mov r1, sp
	adds r0, r1, r5
	ldrb r2, [r0]
	movs r0, #0
	movs r1, #0x20
	bl sub_0806AB0C
	ldr r1, [r6]
	adds r1, #8
	adds r1, r1, r4
	str r0, [r1]
_0806B2D6:
	adds r5, #1
	cmp r5, #1
	ble _0806B2B2
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0806B2E4: .4byte 0x08090638
_0806B2E8: .4byte 0x03004500

	thumb_func_start sub_0806B2EC
sub_0806B2EC: @ 0x0806B2EC
	push {r4, r5, r6, lr}
	movs r5, #0
	ldr r6, _0806B31C @ =0x03004500
_0806B2F2:
	ldr r0, [r6]
	lsls r4, r5, #2
	adds r0, #8
	adds r0, r0, r4
	ldr r0, [r0]
	cmp r0, #0
	beq _0806B30E
	bl sub_08009A00
	ldr r0, [r6]
	adds r0, #8
	adds r0, r0, r4
	movs r1, #0
	str r1, [r0]
_0806B30E:
	adds r5, #1
	cmp r5, #1
	ble _0806B2F2
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0806B31C: .4byte 0x03004500

	thumb_func_start sub_0806B320
sub_0806B320: @ 0x0806B320
	push {r4, r5, r6, r7, lr}
	lsls r2, r2, #0x18
	lsrs r5, r2, #0x18
	lsls r0, r0, #0x10
	ldr r2, _0806B358 @ =0xFFFC0000
	adds r0, r0, r2
	lsrs r7, r0, #0x10
	lsls r1, r1, #0x10
	adds r1, r1, r2
	lsrs r6, r1, #0x10
	movs r4, #0
_0806B336:
	ldr r0, _0806B35C @ =0x03004500
	ldr r0, [r0]
	lsls r1, r4, #2
	adds r0, #8
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _0806B36E
	adds r3, r0, #0
	lsls r0, r7, #0x10
	asrs r1, r0, #0x10
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	cmp r4, #0
	bne _0806B360
	subs r0, r0, r5
	b _0806B364
	.align 2, 0
_0806B358: .4byte 0xFFFC0000
_0806B35C: .4byte 0x03004500
_0806B360:
	adds r0, #1
	adds r0, r0, r5
_0806B364:
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	adds r0, r3, #0
	bl sub_08009A70
_0806B36E:
	adds r4, #1
	cmp r4, #1
	ble _0806B336
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0806B37C
sub_0806B37C: @ 0x0806B37C
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r2, r1, #0x18
	movs r1, #1
	ands r0, r1
	ldr r1, _0806B3A4 @ =0x03004500
	ldr r1, [r1]
	lsls r0, r0, #2
	adds r1, #8
	adds r1, r1, r0
	ldr r0, [r1]
	cmp r0, #0
	beq _0806B3A0
	adds r1, r2, #0
	bl sub_08009A34
_0806B3A0:
	pop {r0}
	bx r0
	.align 2, 0
_0806B3A4: .4byte 0x03004500

	thumb_func_start sub_0806B3A8
sub_0806B3A8: @ 0x0806B3A8
	push {r4, r5, r6, lr}
	ldr r6, _0806B3FC @ =0x03004500
	ldr r0, [r6]
	ldr r0, [r0, #0x10]
	cmp r0, #0
	bne _0806B3F4
	bl sub_08009DDC
	adds r5, r0, #0
	movs r1, #0
	movs r2, #0
	bl sub_08009E84
	adds r0, r5, #0
	movs r1, #0
	bl sub_08009E9C
	movs r0, #0
	movs r1, #0x10
	movs r2, #0x1d
	bl sub_0806AB0C
	adds r4, r0, #0
	movs r1, #0x78
	movs r2, #0x50
	bl sub_08009A70
	adds r0, r4, #0
	movs r1, #1
	bl sub_08009B84
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08009B9C
	ldr r0, [r6]
	str r4, [r0, #0x10]
	str r5, [r0, #0x14]
_0806B3F4:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0806B3FC: .4byte 0x03004500

	thumb_func_start sub_0806B400
sub_0806B400: @ 0x0806B400
	push {r4, r5, r6, lr}
	ldr r6, _0806B438 @ =0x03004500
	ldr r0, [r6]
	ldr r4, [r0, #0x10]
	ldr r5, [r0, #0x14]
	cmp r4, #0
	beq _0806B422
	adds r0, r4, #0
	movs r1, #0
	bl sub_08009B9C
	adds r0, r4, #0
	bl sub_08009A00
	ldr r1, [r6]
	movs r0, #0
	str r0, [r1, #0x10]
_0806B422:
	cmp r5, #0
	beq _0806B432
	adds r0, r5, #0
	bl sub_08009E54
	ldr r1, [r6]
	movs r0, #0
	str r0, [r1, #0x14]
_0806B432:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0806B438: .4byte 0x03004500

	thumb_func_start sub_0806B43C
sub_0806B43C: @ 0x0806B43C
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, _0806B46C @ =0x03004500
	ldr r0, [r0]
	ldr r4, [r0, #0x14]
	cmp r4, #0
	beq _0806B464
	lsls r2, r1, #0x10
	asrs r2, r2, #0x10
	adds r0, r4, #0
	adds r1, r2, #0
	bl sub_08009E84
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08009E9C
_0806B464:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806B46C: .4byte 0x03004500

	thumb_func_start sub_0806B470
sub_0806B470: @ 0x0806B470
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	movs r6, #0
	movs r4, #0
	movs r5, #0
	movs r0, #0xbf
	lsls r0, r0, #1
	bl m4aSongNumStart
	movs r0, #0x80
	lsls r0, r0, #2
	mov sb, r0
	ldr r1, _0806B4A4 @ =0x0807F240
	mov r8, r1
	movs r7, #1
	rsbs r7, r7, #0
_0806B494:
	lsls r0, r6, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _0806B4A8
	cmp r0, #1
	beq _0806B4BA
	b _0806B4E4
	.align 2, 0
_0806B4A4: .4byte 0x0807F240
_0806B4A8:
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	cmp r0, sb
	beq _0806B4B8
	adds r0, #0x20
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	b _0806B4E4
_0806B4B8:
	movs r6, #1
_0806B4BA:
	movs r0, #0xff
	ands r0, r5
	adds r0, #0x40
	lsls r0, r0, #1
	add r0, r8
	movs r1, #0
	ldrsh r0, [r0, r1]
	asrs r0, r0, #3
	movs r1, #0xf0
	lsls r1, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r0, r5, #0
	adds r0, #0x10
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r0, _0806B500 @ =0x000001FF
	cmp r5, r0
	bls _0806B4E4
	movs r6, #0xff
_0806B4E4:
	lsls r0, r6, #0x18
	asrs r0, r0, #0x18
	cmp r0, r7
	beq _0806B504
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	movs r0, #0
	bl sub_0806B43C
	movs r0, #1
	bl sub_08002B98
	b _0806B494
	.align 2, 0
_0806B500: .4byte 0x000001FF
_0806B504:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0806B510
sub_0806B510: @ 0x0806B510
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x2c
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r1, _0806B554 @ =0x0809063A
	mov r0, sp
	movs r2, #0xa
	bl memcpy
	add r6, sp, #0xc
	ldr r1, _0806B558 @ =0x08090644
	adds r0, r6, #0
	movs r2, #0xa
	bl memcpy
	add r5, sp, #0x18
	ldr r1, _0806B55C @ =0x0809064E
	adds r0, r5, #0
	movs r2, #0x14
	bl memcpy
	mov r8, r6
	adds r1, r5, #0
	cmp r4, #0
	bne _0806B564
	ldr r0, _0806B560 @ =0x03004500
	ldr r0, [r0]
	adds r4, r0, #0
	adds r4, #0x5c
	movs r2, #0x58
	b _0806B56E
	.align 2, 0
_0806B554: .4byte 0x0809063A
_0806B558: .4byte 0x08090644
_0806B55C: .4byte 0x0809064E
_0806B560: .4byte 0x03004500
_0806B564:
	ldr r0, _0806B5B8 @ =0x03004500
	ldr r0, [r0]
	adds r4, r0, #0
	adds r4, #0xcc
	movs r2, #0x38
_0806B56E:
	movs r5, #0
	adds r6, r1, #0
	lsls r7, r2, #0x10
_0806B574:
	ldr r0, [r4]
	cmp r0, #0
	bne _0806B5A2
	mov r1, sp
	adds r0, r1, r5
	ldrb r0, [r0]
	mov r2, r8
	adds r1, r2, r5
	ldrb r2, [r1]
	movs r1, #0x20
	bl sub_0806AB0C
	str r0, [r4]
	movs r1, #1
	movs r2, #0x20
	bl sub_08009A0C
	ldr r0, [r4]
	movs r2, #0
	ldrsh r1, [r6, r2]
	asrs r2, r7, #0x10
	bl sub_08009A70
_0806B5A2:
	adds r6, #2
	adds r5, #1
	adds r4, #4
	cmp r5, #9
	ble _0806B574
	add sp, #0x2c
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806B5B8: .4byte 0x03004500

	thumb_func_start sub_0806B5BC
sub_0806B5BC: @ 0x0806B5BC
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0806B5D4
	ldr r0, _0806B5D0 @ =0x03004500
	ldr r0, [r0]
	adds r4, r0, #0
	adds r4, #0x5c
	b _0806B5DC
	.align 2, 0
_0806B5D0: .4byte 0x03004500
_0806B5D4:
	ldr r0, _0806B5FC @ =0x03004500
	ldr r0, [r0]
	adds r4, r0, #0
	adds r4, #0xcc
_0806B5DC:
	movs r6, #0
	movs r5, #9
_0806B5E0:
	ldr r0, [r4]
	cmp r0, #0
	beq _0806B5EC
	bl sub_08009A00
	str r6, [r4]
_0806B5EC:
	subs r5, #1
	adds r4, #4
	cmp r5, #0
	bge _0806B5E0
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0806B5FC: .4byte 0x03004500

	thumb_func_start sub_0806B600
sub_0806B600: @ 0x0806B600
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	cmp r0, #0
	bne _0806B61C
	ldr r0, _0806B618 @ =0x03004500
	ldr r0, [r0]
	adds r4, r0, #0
	adds r4, #0x5c
	b _0806B624
	.align 2, 0
_0806B618: .4byte 0x03004500
_0806B61C:
	ldr r0, _0806B660 @ =0x03004500
	ldr r0, [r0]
	adds r4, r0, #0
	adds r4, #0xcc
_0806B624:
	ldr r5, [r4]
	cmp r5, #0
	beq _0806B65A
	adds r4, #4
	adds r0, r6, #0
	movs r1, #0xa
	bl __udivsi3
	adds r2, r0, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	adds r0, r5, #0
	movs r1, #1
	bl sub_0806AC14
	ldr r4, [r4]
	adds r0, r6, #0
	movs r1, #0xa
	bl __umodsi3
	adds r2, r0, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	adds r0, r4, #0
	movs r1, #1
	bl sub_0806AC14
_0806B65A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0806B660: .4byte 0x03004500

	thumb_func_start sub_0806B664
sub_0806B664: @ 0x0806B664
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	cmp r0, #0
	bne _0806B680
	ldr r0, _0806B67C @ =0x03004500
	ldr r0, [r0]
	adds r4, r0, #0
	adds r4, #0x68
	b _0806B688
	.align 2, 0
_0806B67C: .4byte 0x03004500
_0806B680:
	ldr r0, _0806B6C4 @ =0x03004500
	ldr r0, [r0]
	adds r4, r0, #0
	adds r4, #0xd8
_0806B688:
	ldr r5, [r4]
	cmp r5, #0
	beq _0806B6BE
	adds r4, #4
	adds r0, r6, #0
	movs r1, #0xa
	bl __udivsi3
	adds r2, r0, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	adds r0, r5, #0
	movs r1, #1
	bl sub_0806AC14
	ldr r4, [r4]
	adds r0, r6, #0
	movs r1, #0xa
	bl __umodsi3
	adds r2, r0, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	adds r0, r4, #0
	movs r1, #1
	bl sub_0806AC14
_0806B6BE:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0806B6C4: .4byte 0x03004500

	thumb_func_start sub_0806B6C8
sub_0806B6C8: @ 0x0806B6C8
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x18
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	cmp r0, #0
	bne _0806B6E4
	ldr r0, _0806B6E0 @ =0x03004500
	ldr r0, [r0]
	adds r5, r0, #0
	adds r5, #0x78
	b _0806B6EC
	.align 2, 0
_0806B6E0: .4byte 0x03004500
_0806B6E4:
	ldr r0, _0806B74C @ =0x03004500
	ldr r0, [r0]
	adds r5, r0, #0
	adds r5, #0xe8
_0806B6EC:
	ldr r4, [r5]
	cmp r4, #0
	beq _0806B746
	adds r5, #4
	adds r0, r6, #0
	movs r1, #0x64
	bl __udivsi3
	adds r2, r0, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	adds r0, r4, #0
	movs r1, #1
	bl sub_0806AC14
	adds r0, r6, #0
	movs r1, #0x64
	bl __umodsi3
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldm r5!, {r4}
	adds r0, r6, #0
	movs r1, #0xa
	bl __udivsi3
	adds r2, r0, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	adds r0, r4, #0
	movs r1, #1
	bl sub_0806AC14
	ldr r4, [r5]
	adds r0, r6, #0
	movs r1, #0xa
	bl __umodsi3
	adds r2, r0, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	adds r0, r4, #0
	movs r1, #1
	bl sub_0806AC14
_0806B746:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0806B74C: .4byte 0x03004500

	thumb_func_start sub_0806B750
sub_0806B750: @ 0x0806B750
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r5, r2, #0x18
	cmp r0, #0
	bne _0806B76C
	ldr r0, _0806B768 @ =0x03004500
	ldr r0, [r0]
	ldr r4, [r0, #0x70]
	b _0806B774
	.align 2, 0
_0806B768: .4byte 0x03004500
_0806B76C:
	ldr r0, _0806B798 @ =0x03004500
	ldr r0, [r0]
	adds r0, #0xe0
	ldr r4, [r0]
_0806B774:
	cmp r4, #0
	beq _0806B792
	adds r2, r1, #6
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	adds r0, r4, #0
	movs r1, #0
	bl sub_0806AC14
	rsbs r1, r5, #0
	orrs r1, r5
	lsrs r1, r1, #0x1f
	adds r0, r4, #0
	bl sub_08009A34
_0806B792:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806B798: .4byte 0x03004500

	thumb_func_start sub_0806B79C
sub_0806B79C: @ 0x0806B79C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _0806B7E0 @ =0x03004500
	ldr r0, [r4]
	adds r0, #0xfe
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl sub_08004514
	movs r0, #2
	bl sub_080044DC
	movs r0, #0
	bl sub_080044F0
	ldr r0, [r4]
	adds r0, #0xfe
	movs r1, #0
	ldrsh r4, [r0, r1]
	adds r0, r5, #0
	bl sub_08006828
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_08004C50
	bl sub_08004504
	movs r0, #1
	bl sub_08002B98
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806B7E0: .4byte 0x03004500

	thumb_func_start sub_0806B7E4
sub_0806B7E4: @ 0x0806B7E4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	mov r8, r0
	adds r4, r1, #0
	lsls r4, r4, #0x18
	lsrs r6, r4, #0x18
	lsls r2, r2, #0x18
	lsrs r7, r2, #0x18
	mov r5, sp
	mov r1, sp
	bl sub_08005C38
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
	ldr r2, _0806B8E4 @ =0xFFFFFF00
	ldr r1, [sp, #4]
	ands r1, r2
	orrs r1, r0
	lsrs r4, r4, #0x1b
	subs r4, #1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x10
	ldr r0, _0806B8E8 @ =0xFFFF00FF
	ands r1, r0
	orrs r1, r4
	str r1, [sp, #4]
	mov r0, sp
	ldrb r0, [r0]
	lsls r0, r0, #0x10
	ldr r3, _0806B8EC @ =0xFF00FFFF
	ands r3, r1
	orrs r3, r0
	ldr r1, _0806B8F0 @ =0x00FFFFFF
	ands r3, r1
	movs r0, #0x80
	lsls r0, r0, #0x12
	orrs r3, r0
	str r3, [sp, #4]
	ldrb r0, [r5, #1]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	ble _0806B870
	adds r0, r6, #0
	adds r0, #8
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	adds r0, r7, #0
	adds r0, #0x10
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	asrs r0, r3, #0x18
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x18
	lsls r0, r0, #0x18
	ands r3, r1
	orrs r3, r0
	str r3, [sp, #4]
_0806B870:
	add r0, sp, #4
	movs r1, #0
	bl sub_08004300
	ldr r1, _0806B8F4 @ =0x03004500
	ldr r4, [r1]
	adds r3, r4, #0
	adds r3, #0xfe
	movs r2, #0
	strh r0, [r3]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r4, r3
	strb r6, [r0]
	ldr r0, [r1]
	ldr r4, _0806B8F8 @ =0x00000101
	adds r0, r0, r4
	strb r7, [r0]
	ldr r3, _0806B8FC @ =0x030024E0
	ldrh r1, [r3]
	movs r4, #0x88
	lsls r4, r4, #6
	adds r0, r4, #0
	orrs r0, r1
	strh r0, [r3]
	adds r1, r3, #0
	adds r1, #0x44
	movs r0, #0x1b
	strb r0, [r1]
	adds r1, #2
	movs r0, #0x19
	strb r0, [r1]
	movs r0, #0xf0
	strh r0, [r3, #0x3c]
	adds r0, r3, #0
	adds r0, #0x40
	strh r2, [r0]
	movs r4, #0
	adds r5, r0, #0
_0806B8BE:
	lsrs r0, r4, #1
	subs r1, r6, r0
	lsls r1, r1, #0x18
	adds r0, r6, r0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsrs r1, r1, #0x10
	orrs r1, r0
	strh r1, [r5]
	adds r1, r4, #0
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r1, r7
	bhs _0806B900
	movs r0, #1
	bl sub_08002B98
	b _0806B8BE
	.align 2, 0
_0806B8E4: .4byte 0xFFFFFF00
_0806B8E8: .4byte 0xFFFF00FF
_0806B8EC: .4byte 0xFF00FFFF
_0806B8F0: .4byte 0x00FFFFFF
_0806B8F4: .4byte 0x03004500
_0806B8F8: .4byte 0x00000101
_0806B8FC: .4byte 0x030024E0
_0806B900:
	mov r0, r8
	bl sub_0806B79C
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0806B914
sub_0806B914: @ 0x0806B914
	push {r4, r5, r6, r7, lr}
	ldr r4, _0806B968 @ =0x03004500
	ldr r0, [r4]
	adds r0, #0xfe
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl sub_080043F0
	ldr r1, [r4]
	adds r2, r1, #0
	adds r2, #0xfe
	ldr r0, _0806B96C @ =0x0000FFFF
	strh r0, [r2]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r1, r2
	ldrb r6, [r0]
	adds r2, #1
	adds r0, r1, r2
	ldrb r4, [r0]
	ldr r5, _0806B970 @ =0x030024E0
	movs r7, #0
_0806B940:
	lsrs r0, r4, #1
	subs r1, r6, r0
	lsls r1, r1, #0x18
	adds r0, r6, r0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsrs r1, r1, #0x10
	orrs r1, r0
	adds r0, r5, #0
	adds r0, #0x40
	strh r1, [r0]
	subs r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0xff
	beq _0806B974
	movs r0, #1
	bl sub_08002B98
	b _0806B940
	.align 2, 0
_0806B968: .4byte 0x03004500
_0806B96C: .4byte 0x0000FFFF
_0806B970: .4byte 0x030024E0
_0806B974:
	ldrh r1, [r5]
	ldr r0, _0806B98C @ =0x0000DDFF
	ands r0, r1
	strh r0, [r5]
	adds r0, r5, #0
	adds r0, #0x44
	strb r7, [r0]
	adds r0, #2
	strb r7, [r0]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806B98C: .4byte 0x0000DDFF

	thumb_func_start sub_0806B990
sub_0806B990: @ 0x0806B990
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x14
	ldr r0, _0806BA54 @ =0x030024E0
	mov ip, r0
	ldrh r1, [r0]
	movs r2, #0xc4
	lsls r2, r2, #7
	adds r0, r2, #0
	movs r4, #0
	movs r3, #0
	orrs r0, r1
	mov r1, ip
	strh r0, [r1]
	mov r0, ip
	adds r0, #0x44
	movs r1, #0x1b
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	mov r1, ip
	adds r1, #0x46
	movs r0, #0x19
	strb r0, [r1]
	movs r0, #0xf0
	mov r2, ip
	strh r0, [r2, #0x3c]
	strh r0, [r2, #0x3e]
	mov r0, ip
	adds r0, #0x40
	strh r3, [r0]
	adds r2, #0x42
	strh r3, [r2]
	add r1, sp, #8
	movs r0, #0x40
	strb r0, [r1]
	movs r0, #0x60
	strb r0, [r1, #1]
	add r0, sp, #0xc
	strb r4, [r0]
	strb r4, [r0, #1]
	adds r3, r0, #0
	mov r5, sp
	adds r7, r1, #0
	adds r6, r3, #0
	add r4, sp, #4
	mov r8, ip
	mov sb, r2
_0806B9F4:
	ldrb r1, [r6]
	lsrs r1, r1, #1
	ldrb r0, [r7]
	subs r0, r0, r1
	strb r0, [r5]
	ldrb r0, [r6]
	lsrs r0, r0, #1
	ldrb r1, [r7]
	adds r0, r0, r1
	strb r0, [r4]
	ldrb r1, [r6, #1]
	lsrs r1, r1, #1
	ldrb r0, [r7, #1]
	subs r0, r0, r1
	strb r0, [r5, #1]
	ldrb r1, [r6, #1]
	lsrs r1, r1, #1
	ldrb r0, [r7, #1]
	adds r0, r0, r1
	strb r0, [r4, #1]
	ldrb r0, [r5]
	lsls r0, r0, #8
	ldrb r1, [r4]
	orrs r1, r0
	mov r0, r8
	adds r0, #0x40
	strh r1, [r0]
	ldrb r1, [r5, #1]
	lsls r1, r1, #8
	ldrb r0, [r4, #1]
	orrs r0, r1
	mov r2, sb
	strh r0, [r2]
	ldrb r0, [r6]
	cmp r0, #0x17
	bhi _0806BA58
	adds r0, #1
	strb r0, [r3]
	ldrb r0, [r3, #1]
	adds r0, #1
	strb r0, [r3, #1]
	movs r0, #1
	str r3, [sp, #0x10]
	bl sub_08002B98
	ldr r3, [sp, #0x10]
	b _0806B9F4
	.align 2, 0
_0806BA54: .4byte 0x030024E0
_0806BA58:
	add sp, #0x14
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0806BA68
sub_0806BA68: @ 0x0806BA68
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x18
	add r2, sp, #8
	movs r0, #0x40
	strb r0, [r2]
	movs r0, #0x60
	strb r0, [r2, #1]
	add r0, sp, #0xc
	movs r1, #0x18
	strb r1, [r0]
	strb r1, [r0, #1]
	adds r3, r0, #0
	mov r6, sp
	adds r7, r3, #0
	add r4, sp, #4
	ldr r5, _0806BAF4 @ =0x030024E0
	movs r0, #0
	mov r8, r0
_0806BA90:
	ldrb r1, [r7]
	lsrs r1, r1, #1
	ldrb r0, [r2]
	subs r0, r0, r1
	strb r0, [r6]
	ldrb r0, [r7]
	lsrs r0, r0, #1
	ldrb r1, [r2]
	adds r0, r0, r1
	strb r0, [r4]
	ldrb r1, [r7, #1]
	lsrs r1, r1, #1
	ldrb r0, [r2, #1]
	subs r0, r0, r1
	strb r0, [r6, #1]
	ldrb r1, [r7, #1]
	lsrs r1, r1, #1
	ldrb r0, [r2, #1]
	adds r0, r0, r1
	strb r0, [r4, #1]
	ldrb r0, [r6]
	lsls r0, r0, #8
	ldrb r1, [r4]
	orrs r1, r0
	adds r0, r5, #0
	adds r0, #0x40
	strh r1, [r0]
	ldrb r0, [r6, #1]
	lsls r0, r0, #8
	ldrb r1, [r4, #1]
	orrs r1, r0
	adds r0, r5, #0
	adds r0, #0x42
	strh r1, [r0]
	ldrb r0, [r7]
	cmp r0, #0
	beq _0806BAF8
	subs r0, #1
	strb r0, [r3]
	ldrb r0, [r3, #1]
	subs r0, #1
	strb r0, [r3, #1]
	movs r0, #1
	str r2, [sp, #0x10]
	str r3, [sp, #0x14]
	bl sub_08002B98
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	b _0806BA90
	.align 2, 0
_0806BAF4: .4byte 0x030024E0
_0806BAF8:
	ldrh r1, [r5]
	ldr r0, _0806BB1C @ =0x00009DFF
	ands r0, r1
	strh r0, [r5]
	adds r0, r5, #0
	adds r0, #0x44
	mov r1, r8
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	add sp, #0x18
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806BB1C: .4byte 0x00009DFF

	thumb_func_start sub_0806BB20
sub_0806BB20: @ 0x0806BB20
	push {r4, r5, r6, lr}
	ldr r1, _0806BBBC @ =0x030044E0
	ldr r0, _0806BBC0 @ =0x02031050
	ldr r2, _0806BBC4 @ =0x00000888
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [r1]
	movs r0, #0
	movs r3, #0
	movs r2, #0x64
	strh r2, [r1, #4]
	strb r0, [r1, #7]
	strb r0, [r1, #8]
	str r3, [r1, #0xc]
	strh r2, [r1, #0x10]
	strb r0, [r1, #0x13]
	strb r0, [r1, #0x14]
	ldrh r0, [r1, #0x1a]
	adds r2, r0, #1
	strh r2, [r1, #0x1a]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r2, r1, #0
	adds r2, #0xc
	movs r3, #4
	bl sub_08003998
	movs r0, #0
	bl sub_0806AD54
	movs r0, #1
	bl sub_0806AD54
	ldr r0, _0806BBC8 @ =0xFFFF0000
	ands r6, r0
	ldr r0, _0806BBCC @ =0x0000FFC0
	orrs r6, r0
	adds r0, #0x3f
	ands r6, r0
	movs r0, #0x80
	lsls r0, r0, #0xe
	orrs r6, r0
_0806BB74:
	movs r1, #0xf0
	subs r1, r1, r6
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	asrs r5, r6, #0x10
	adds r2, r5, #0
	adds r2, #0x50
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r0, #0
	bl sub_0806AE3C
	lsls r4, r6, #0x10
	asrs r4, r4, #0x10
	movs r2, #0x50
	subs r2, r2, r5
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r0, #1
	adds r1, r4, #0
	bl sub_0806AE3C
	cmp r4, #0x70
	beq _0806BBD0
	adds r1, r6, #0
	adds r1, #8
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, _0806BBC8 @ =0xFFFF0000
	ands r6, r0
	orrs r6, r1
	movs r0, #1
	bl sub_08002B98
	b _0806BB74
	.align 2, 0
_0806BBBC: .4byte 0x030044E0
_0806BBC0: .4byte 0x02031050
_0806BBC4: .4byte 0x00000888
_0806BBC8: .4byte 0xFFFF0000
_0806BBCC: .4byte 0x0000FFC0
_0806BBD0:
	movs r0, #0xa
	bl sub_08002B98
	ldr r1, _0806BC3C @ =0x030044E0
	ldrh r0, [r1, #0x1a]
	adds r2, r0, #1
	strh r2, [r1, #0x1a]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_08003A30
	movs r0, #0xa
	bl sub_08002B98
_0806BBEC:
	movs r1, #0xf0
	subs r1, r1, r6
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	asrs r4, r6, #0x10
	adds r2, r4, #0
	adds r2, #0x50
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r0, #0
	bl sub_0806AE3C
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	movs r2, #0x50
	subs r2, r2, r4
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r0, #1
	bl sub_0806AE3C
	cmp r4, #0x30
	beq _0806BC48
	subs r1, r6, #5
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, _0806BC40 @ =0xFFFF0000
	ands r6, r0
	orrs r6, r1
	asrs r1, r6, #0x10
	adds r1, #1
	lsls r1, r1, #0x10
	ldr r0, _0806BC44 @ =0x0000FFFF
	ands r6, r0
	orrs r6, r1
	movs r0, #1
	bl sub_08002B98
	b _0806BBEC
	.align 2, 0
_0806BC3C: .4byte 0x030044E0
_0806BC40: .4byte 0xFFFF0000
_0806BC44: .4byte 0x0000FFFF
_0806BC48:
	movs r0, #0
	movs r1, #0xd0
	movs r2, #0x80
	bl sub_0806AE3C
	movs r0, #1
	movs r1, #0x20
	movs r2, #0x20
	bl sub_0806AE3C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0806BC64
sub_0806BC64: @ 0x0806BC64
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	movs r4, #0
	add r7, sp, #8
	adds r5, r7, #0
_0806BC72:
	movs r0, #6
	bl sub_0800B828
	adds r0, #0x6c
	strb r0, [r5]
	ldrb r1, [r5]
	cmp r1, r6
	beq _0806BC8A
	mov r2, sp
	adds r0, r2, r4
	strb r1, [r0]
	adds r4, #1
_0806BC8A:
	cmp r4, #5
	ble _0806BC72
	ldr r0, _0806BCFC @ =0x0000017B
	bl m4aSongNumStart
	ldr r0, _0806BD00 @ =0x03004500
	ldr r0, [r0]
	ldr r0, [r0, #4]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r2, #0
	bl sub_08009E84
	movs r0, #0x78
	movs r1, #0x50
	bl sub_0806AF78
	movs r4, #0x3b
_0806BCAE:
	movs r0, #6
	bl sub_0800B828
	adds r0, #0x6c
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_0806AF54
	movs r0, #1
	bl sub_08002B98
	subs r4, #1
	cmp r4, #0
	bge _0806BCAE
	movs r0, #6
	bl sub_0800B828
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	add r0, sp
	ldrb r0, [r0]
	strb r0, [r7]
	ldr r2, _0806BD04 @ =0x030044E0
	ldrb r0, [r2, #0x19]
	cmp r0, #0
	bne _0806BD08
	ldrh r0, [r2, #0x1a]
	adds r1, r0, #1
	strh r1, [r2, #0x1a]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r2, sp
	adds r2, #9
	adds r1, r7, #0
	movs r3, #1
	bl sub_08003998
	b _0806BD1E
	.align 2, 0
_0806BCFC: .4byte 0x0000017B
_0806BD00: .4byte 0x03004500
_0806BD04: .4byte 0x030044E0
_0806BD08:
	ldrh r0, [r2, #0x1a]
	adds r1, r0, #1
	strh r1, [r2, #0x1a]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r1, sp
	adds r1, #0xa
	adds r2, r7, #0
	movs r3, #1
	bl sub_08003998
_0806BD1E:
	ldrb r0, [r7]
	bl sub_0806AF54
	ldr r0, _0806BD64 @ =0x0000017B
	bl m4aSongNumStop
	movs r0, #0xbe
	lsls r0, r0, #1
	bl m4aSongNumStart
	movs r4, #0x80
	lsls r4, r4, #0x11
	ldr r5, _0806BD68 @ =0x000001FF
_0806BD38:
	ldr r0, _0806BD6C @ =0x03004500
	ldr r0, [r0]
	ldr r0, [r0, #4]
	asrs r4, r4, #0x10
	adds r1, r4, #0
	adds r2, r4, #0
	bl sub_08009E84
	movs r0, #1
	bl sub_08002B98
	adds r4, #0x10
	lsls r4, r4, #0x10
	asrs r0, r4, #0x10
	cmp r0, r5
	ble _0806BD38
	ldrb r0, [r7]
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0806BD64: .4byte 0x0000017B
_0806BD68: .4byte 0x000001FF
_0806BD6C: .4byte 0x03004500

	thumb_func_start sub_0806BD70
sub_0806BD70: @ 0x0806BD70
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r1, _0806BDBC @ =0x030044E0
	ldrb r0, [r1, #6]
	mov sl, r0
	movs r0, #0
	strb r0, [r1, #6]
	movs r1, #0
	bl sub_0806B060
	movs r1, #1
	rsbs r1, r1, #0
	movs r0, #1
	bl sub_0806B060
	movs r0, #0
	movs r1, #0x78
	movs r2, #0x78
	bl sub_0806B110
	movs r0, #1
	movs r1, #0x78
	movs r2, #0x28
	bl sub_0806B110
	ldr r0, _0806BDC0 @ =0x003E001F
	movs r1, #0x10
	movs r2, #0x18
	bl sub_0806B7E4
	add r1, sp, #4
	mov sb, r1
	b _0806BE86
	.align 2, 0
_0806BDBC: .4byte 0x030044E0
_0806BDC0: .4byte 0x003E001F
_0806BDC4:
	ldr r0, _0806BDD4 @ =0x030024B0
	ldrh r1, [r0, #4]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0806BDD8
	movs r0, #1
	b _0806BDEE
	.align 2, 0
_0806BDD4: .4byte 0x030024B0
_0806BDD8:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0806BDE4
	movs r0, #1
	b _0806BE32
_0806BDE4:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0806BE24
	movs r0, #0xa
_0806BDEE:
	ldr r5, _0806BE20 @ =0x030044E0
	mov r3, sl
	lsls r6, r3, #0x18
	cmp r0, #0
	beq _0806BE5A
	adds r4, r5, #0
	adds r2, r0, #0
_0806BDFC:
	ldrb r1, [r4, #6]
	movs r0, #6
	ldrsb r0, [r4, r0]
	cmp r0, #0x62
	bgt _0806BE18
	ldrh r3, [r5, #4]
	movs r7, #4
	ldrsh r0, [r5, r7]
	cmp r0, #0
	beq _0806BE18
	subs r0, r3, #1
	strh r0, [r4, #4]
	adds r0, r1, #1
	strb r0, [r4, #6]
_0806BE18:
	subs r2, #1
	cmp r2, #0
	bne _0806BDFC
	b _0806BE5A
	.align 2, 0
_0806BE20: .4byte 0x030044E0
_0806BE24:
	movs r0, #0x10
	ands r0, r1
	mov r1, sl
	lsls r6, r1, #0x18
	cmp r0, #0
	beq _0806BE5A
	movs r0, #0xa
_0806BE32:
	ldr r5, _0806BEA4 @ =0x030044E0
	mov r3, sl
	lsls r6, r3, #0x18
	cmp r0, #0
	beq _0806BE5A
	adds r4, r5, #0
	adds r2, r0, #0
_0806BE40:
	ldrb r3, [r4, #6]
	movs r0, #6
	ldrsb r0, [r4, r0]
	cmp r0, #0
	beq _0806BE54
	ldrh r0, [r5, #4]
	adds r0, #1
	strh r0, [r5, #4]
	subs r0, r3, #1
	strb r0, [r5, #6]
_0806BE54:
	subs r2, #1
	cmp r2, #0
	bne _0806BE40
_0806BE5A:
	ldr r4, _0806BEA4 @ =0x030044E0
	asrs r1, r6, #0x18
	movs r0, #6
	ldrsb r0, [r4, r0]
	cmp r1, r0
	beq _0806BE70
	ldr r0, _0806BEA8 @ =0x0000017D
	bl m4aSongNumStart
	ldrb r7, [r4, #6]
	mov sl, r7
_0806BE70:
	movs r0, #0
	bl sub_0806AD54
	movs r1, #6
	ldrsb r1, [r4, r1]
	movs r0, #0
	bl sub_0806B060
	movs r0, #1
	bl sub_08002B98
_0806BE86:
	ldr r0, _0806BEAC @ =0x030024B0
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0806BDC4
	ldr r4, _0806BEA4 @ =0x030044E0
	movs r0, #6
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bne _0806BEB0
	movs r0, #0xd2
	bl m4aSongNumStart
	b _0806BDC4
	.align 2, 0
_0806BEA4: .4byte 0x030044E0
_0806BEA8: .4byte 0x0000017D
_0806BEAC: .4byte 0x030024B0
_0806BEB0:
	movs r0, #0xcc
	bl m4aSongNumStart
	bl sub_0806B914
	mov r1, sp
	movs r0, #6
	ldrsb r0, [r4, r0]
	strh r0, [r1]
	ldrh r0, [r4, #4]
	strh r0, [r1, #2]
	ldrh r0, [r4, #0x1a]
	adds r1, r0, #1
	strh r1, [r4, #0x1a]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r1, sp
	mov r2, sb
	movs r3, #4
	bl sub_08003998
	mov r1, sb
	ldrh r0, [r1]
	strb r0, [r4, #0x12]
	ldrh r0, [r1, #2]
	strh r0, [r4, #0x10]
	movs r0, #1
	bl sub_0806AD54
	movs r1, #0x12
	ldrsb r1, [r4, r1]
	movs r0, #1
	bl sub_0806B060
	movs r5, #0
	ldr r6, _0806BF6C @ =0x0807F240
_0806BEF8:
	adds r0, r5, #4
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	lsls r0, r5, #1
	adds r0, r0, r6
	movs r3, #0
	ldrsh r0, [r0, r3]
	lsls r2, r0, #2
	adds r2, r2, r0
	lsls r2, r2, #0x13
	asrs r2, r2, #0x18
	lsls r2, r2, #0x10
	adds r0, r5, #0
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r6
	movs r7, #0
	ldrsh r1, [r0, r7]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #0x13
	asrs r0, r0, #0x18
	lsls r0, r0, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	mov r1, r8
	orrs r1, r0
	mov r8, r1
	movs r1, #0x78
	mov r3, r8
	subs r1, r1, r3
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	asrs r4, r3, #0x10
	adds r2, r4, #0
	adds r2, #0x50
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r0, #0
	bl sub_0806B110
	mov r1, r8
	adds r1, #0x78
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0x50
	subs r2, r2, r4
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r0, #1
	bl sub_0806B110
	cmp r5, #0x80
	beq _0806BF70
	movs r0, #1
	bl sub_08002B98
	b _0806BEF8
	.align 2, 0
_0806BF6C: .4byte 0x0807F240
_0806BF70:
	ldr r0, _0806BF8C @ =0x030044E0
	ldrb r5, [r0, #6]
	ldrb r1, [r0, #0x12]
	strb r1, [r0, #6]
	strb r5, [r0, #0x12]
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806BF8C: .4byte 0x030044E0

	thumb_func_start sub_0806BF90
sub_0806BF90: @ 0x0806BF90
	push {r4, r5, r6, lr}
	movs r3, #0
	ldr r0, _0806C030 @ =0x030044E0
	ldrb r1, [r0, #8]
	movs r2, #1
	ands r1, r2
	adds r6, r0, #0
	cmp r1, #0
	beq _0806BFB6
	adds r2, r6, #0
	movs r1, #1
_0806BFA6:
	adds r3, #1
	cmp r3, #5
	bgt _0806BFB6
	ldrb r0, [r2, #8]
	asrs r0, r3
	ands r0, r1
	cmp r0, #0
	bne _0806BFA6
_0806BFB6:
	cmp r3, #6
	bne _0806BFC0
	movs r0, #0
	strb r0, [r6, #8]
	movs r3, #0
_0806BFC0:
	strb r3, [r6, #7]
	movs r1, #7
	ldrsb r1, [r6, r1]
	movs r0, #0
	bl sub_0806B208
	movs r1, #1
	rsbs r1, r1, #0
	movs r0, #1
	bl sub_0806B208
	movs r0, #0
	movs r1, #0x78
	movs r2, #0x90
	bl sub_0806B254
	movs r0, #1
	movs r1, #0x78
	movs r2, #0x10
	bl sub_0806B254
	ldr r0, _0806C034 @ =0x003E0020
	movs r1, #0x10
	movs r2, #0x18
	bl sub_0806B7E4
	bl sub_0806B2A0
	movs r0, #0x78
	movs r1, #0x90
	movs r2, #0xc
	bl sub_0806B320
	movs r4, #1
	adds r5, r6, #0
_0806C006:
	ldr r0, _0806C038 @ =0x030024B0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _0806C014
	b _0806C102
_0806C014:
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0806C05C
	ldr r0, _0806C030 @ =0x030044E0
	movs r1, #7
	ldrsb r1, [r0, r1]
	adds r6, r0, #0
	cmp r1, #4
	bgt _0806C094
	movs r0, #7
	ldrsb r0, [r6, r0]
	adds r3, r0, #1
	b _0806C03E
	.align 2, 0
_0806C030: .4byte 0x030044E0
_0806C034: .4byte 0x003E0020
_0806C038: .4byte 0x030024B0
_0806C03C:
	adds r3, #1
_0806C03E:
	cmp r3, #5
	bgt _0806C094
	ldrb r0, [r6, #8]
	asrs r0, r3
	ands r0, r4
	cmp r0, #0
	bne _0806C03C
	strb r3, [r6, #7]
	ldr r0, _0806C058 @ =0x0000017D
	bl m4aSongNumStart
	b _0806C094
	.align 2, 0
_0806C058: .4byte 0x0000017D
_0806C05C:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0806C094
	ldr r0, _0806C078 @ =0x030044E0
	movs r1, #7
	ldrsb r1, [r0, r1]
	adds r6, r0, #0
	cmp r1, #0
	beq _0806C094
	movs r0, #7
	ldrsb r0, [r6, r0]
	subs r3, r0, #1
	b _0806C07E
	.align 2, 0
_0806C078: .4byte 0x030044E0
_0806C07C:
	subs r3, #1
_0806C07E:
	cmp r3, #0
	blt _0806C094
	ldrb r0, [r6, #8]
	asrs r0, r3
	ands r0, r4
	cmp r0, #0
	bne _0806C07C
	strb r3, [r6, #7]
	ldr r0, _0806C0AC @ =0x0000017D
	bl m4aSongNumStart
_0806C094:
	movs r0, #0
	movs r1, #0
	bl sub_0806B37C
	movs r0, #1
	movs r1, #0
	bl sub_0806B37C
	movs r0, #7
	ldrsb r0, [r5, r0]
	adds r3, r0, #1
	b _0806C0B2
	.align 2, 0
_0806C0AC: .4byte 0x0000017D
_0806C0B0:
	adds r3, #1
_0806C0B2:
	cmp r3, #5
	bgt _0806C0C8
	ldrb r0, [r5, #8]
	asrs r0, r3
	ands r0, r4
	cmp r0, #0
	bne _0806C0B0
	movs r0, #0
	movs r1, #1
	bl sub_0806B37C
_0806C0C8:
	movs r0, #7
	ldrsb r0, [r5, r0]
	subs r3, r0, #1
	ldr r6, _0806C0D4 @ =0x030044E0
	b _0806C0DA
	.align 2, 0
_0806C0D4: .4byte 0x030044E0
_0806C0D8:
	subs r3, #1
_0806C0DA:
	cmp r3, #0
	blt _0806C0F0
	ldrb r0, [r6, #8]
	asrs r0, r3
	ands r0, r4
	cmp r0, #0
	bne _0806C0D8
	movs r0, #1
	movs r1, #1
	bl sub_0806B37C
_0806C0F0:
	movs r1, #7
	ldrsb r1, [r5, r1]
	movs r0, #0
	bl sub_0806B208
	movs r0, #1
	bl sub_08002B98
	b _0806C006
_0806C102:
	movs r0, #0xcc
	bl m4aSongNumStart
	ldr r4, _0806C148 @ =0x030044E0
	movs r1, #7
	ldrsb r1, [r4, r1]
	movs r0, #1
	lsls r0, r1
	ldrb r1, [r4, #8]
	orrs r0, r1
	strb r0, [r4, #8]
	bl sub_0806B2EC
	bl sub_0806B914
	ldrh r0, [r4, #0x1a]
	adds r1, r0, #1
	strh r1, [r4, #0x1a]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r4, #7
	adds r2, r4, #0
	adds r2, #0x13
	movs r3, #1
	bl sub_08003998
	movs r1, #0x13
	ldrsb r1, [r4, r1]
	movs r0, #1
	bl sub_0806B208
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0806C148: .4byte 0x030044E0

	thumb_func_start sub_0806C14C
sub_0806C14C: @ 0x0806C14C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	ldr r1, _0806C204 @ =0x08090662
	mov r0, sp
	movs r2, #6
	bl memcpy
	bl sub_08001F2C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	bl sub_08001F3C
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	add r1, sp, #8
	mov r0, sb
	strb r0, [r1]
	strb r5, [r1, #1]
	ldr r6, _0806C208 @ =0x030044E0
	ldrh r0, [r6, #0x1a]
	adds r2, r0, #1
	strh r2, [r6, #0x1a]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	add r4, sp, #0xc
	adds r2, r4, #0
	movs r3, #2
	bl sub_08003998
	ldrb r1, [r4]
	mov sl, r1
	ldrb r4, [r4, #1]
	mov r8, r4
	ldr r1, _0806C20C @ =0xFFFFFF00
	ldr r0, [sp, #0x10]
	ands r0, r1
	movs r1, #0xa
	orrs r0, r1
	ldr r1, _0806C210 @ =0xFFFF00FF
	ands r0, r1
	movs r1, #0xb0
	lsls r1, r1, #4
	orrs r0, r1
	ldr r1, _0806C214 @ =0xFF00FFFF
	ands r0, r1
	movs r1, #0xa0
	lsls r1, r1, #0xd
	orrs r0, r1
	ldr r1, _0806C218 @ =0x00FFFFFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x12
	orrs r0, r1
	str r0, [sp, #0x10]
	add r4, sp, #0x10
	adds r0, r4, #0
	movs r1, #0
	bl sub_08004300
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x14]
	movs r0, #7
	strb r0, [r4, #1]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08004300
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x18]
	mov r0, sb
	cmp r0, #0
	beq _0806C21C
	movs r0, #7
	ldrsb r0, [r6, r0]
	add r0, sp
	ldrb r0, [r0]
	muls r0, r5, r0
	movs r1, #0xa
	bl __divsi3
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	b _0806C21E
	.align 2, 0
_0806C204: .4byte 0x08090662
_0806C208: .4byte 0x030044E0
_0806C20C: .4byte 0xFFFFFF00
_0806C210: .4byte 0xFFFF00FF
_0806C214: .4byte 0xFF00FFFF
_0806C218: .4byte 0x00FFFFFF
_0806C21C:
	adds r7, r5, #0
_0806C21E:
	mov r1, sl
	cmp r1, #0
	beq _0806C248
	ldr r0, _0806C244 @ =0x030044E0
	ldrb r0, [r0, #0x13]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	add r0, sp
	ldrb r0, [r0]
	mov r1, r8
	muls r1, r0, r1
	adds r0, r1, #0
	movs r1, #0xa
	bl __divsi3
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	b _0806C24A
	.align 2, 0
_0806C244: .4byte 0x030044E0
_0806C248:
	mov r6, r8
_0806C24A:
	bl sub_0806B990
	movs r0, #0
	bl sub_0806B510
	movs r0, #1
	bl sub_0806B510
	movs r0, #0
	adds r1, r5, #0
	bl sub_0806B600
	movs r0, #1
	mov r1, r8
	bl sub_0806B600
	ldr r4, _0806C2A4 @ =0x030044E0
	ldrb r1, [r4, #6]
	movs r0, #0
	bl sub_0806B664
	ldrb r1, [r4, #0x12]
	movs r0, #1
	bl sub_0806B664
	movs r0, #2
	bl sub_080044DC
	movs r0, #0
	bl sub_080044F0
	mov r0, sb
	cmp r0, #0
	beq _0806C2AC
	ldr r1, [sp, #0x14]
	lsls r5, r1, #0x10
	asrs r4, r5, #0x10
	ldr r0, _0806C2A8 @ =0x003E0021
	bl sub_08006828
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_08004C50
	b _0806C2C0
	.align 2, 0
_0806C2A4: .4byte 0x030044E0
_0806C2A8: .4byte 0x003E0021
_0806C2AC:
	ldr r0, [sp, #0x14]
	lsls r5, r0, #0x10
	asrs r4, r5, #0x10
	ldr r0, _0806C2E0 @ =0x003E0022
	bl sub_08006828
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_08004C50
_0806C2C0:
	str r5, [sp, #0x1c]
	mov r1, sl
	cmp r1, #0
	beq _0806C2E8
	ldr r0, [sp, #0x18]
	lsls r5, r0, #0x10
	asrs r4, r5, #0x10
	ldr r0, _0806C2E4 @ =0x003E0021
	bl sub_08006828
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_08004C50
	b _0806C2FC
	.align 2, 0
_0806C2E0: .4byte 0x003E0022
_0806C2E4: .4byte 0x003E0021
_0806C2E8:
	ldr r1, [sp, #0x18]
	lsls r5, r1, #0x10
	asrs r4, r5, #0x10
	ldr r0, _0806C344 @ =0x003E0022
	bl sub_08006828
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_08004C50
_0806C2FC:
	mov r8, r5
	bl sub_08004504
	ldr r4, _0806C348 @ =0x030044E0
	ldrb r1, [r4, #7]
	movs r0, #0
	mov r2, sb
	bl sub_0806B750
	ldrb r1, [r4, #0x13]
	movs r0, #1
	mov r2, sl
	bl sub_0806B750
	movs r0, #0
	adds r1, r7, #0
	bl sub_0806B6C8
	movs r0, #1
	adds r1, r6, #0
	bl sub_0806B6C8
	movs r5, #0
	movs r0, #1
	rsbs r0, r0, #0
	mov sb, r0
_0806C330:
	lsls r0, r5, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	beq _0806C368
	cmp r0, #1
	bgt _0806C34C
	cmp r0, #0
	beq _0806C352
	b _0806C3BA
	.align 2, 0
_0806C344: .4byte 0x003E0022
_0806C348: .4byte 0x030044E0
_0806C34C:
	cmp r0, #2
	beq _0806C3AC
	b _0806C3BA
_0806C352:
	movs r0, #0x3c
	bl sub_08002B98
	ldr r0, _0806C364 @ =0x0000017F
	bl m4aSongNumStart
	movs r5, #1
	b _0806C3BA
	.align 2, 0
_0806C364: .4byte 0x0000017F
_0806C368:
	cmp r7, #0
	beq _0806C378
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	subs r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
_0806C378:
	cmp r6, #0
	beq _0806C388
	ldrh r0, [r4, #0x10]
	adds r0, #1
	strh r0, [r4, #0x10]
	subs r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
_0806C388:
	movs r0, #0
	bl sub_0806AD54
	movs r0, #1
	bl sub_0806AD54
	cmp r7, #0
	bne _0806C3BA
	cmp r6, #0
	bne _0806C3BA
	ldr r0, _0806C3A8 @ =0x0000017F
	bl m4aSongNumStop
	movs r5, #2
	b _0806C3BA
	.align 2, 0
_0806C3A8: .4byte 0x0000017F
_0806C3AC:
	ldr r0, _0806C3CC @ =0x030024B0
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0806C3BA
	movs r5, #0xff
_0806C3BA:
	lsls r0, r5, #0x18
	asrs r0, r0, #0x18
	cmp r0, sb
	beq _0806C3D0
	movs r0, #1
	bl sub_08002B98
	b _0806C330
	.align 2, 0
_0806C3CC: .4byte 0x030024B0
_0806C3D0:
	ldr r1, [sp, #0x1c]
	asrs r0, r1, #0x10
	bl sub_080043F0
	mov r1, r8
	asrs r0, r1, #0x10
	bl sub_080043F0
	movs r0, #0
	bl sub_0806B5BC
	movs r0, #1
	bl sub_0806B5BC
	bl sub_0806BA68
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0806C400
sub_0806C400: @ 0x0806C400
	push {r4, lr}
	movs r4, #0
_0806C404:
	lsls r1, r4, #2
	movs r0, #0x78
	subs r0, r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x50
	bl sub_0806AF78
	adds r2, r4, #0
	adds r2, #0x78
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r0, #0
	movs r1, #0x78
	bl sub_0806B110
	movs r2, #0x28
	subs r2, r2, r4
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r0, #1
	movs r1, #0x78
	bl sub_0806B110
	adds r2, r4, #0
	adds r2, #0x90
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r0, #0
	movs r1, #0x78
	bl sub_0806B254
	movs r2, #0x10
	subs r2, r2, r4
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r0, #1
	movs r1, #0x78
	bl sub_0806B254
	movs r0, #1
	bl sub_08002B98
	adds r4, #1
	cmp r4, #0x3f
	ble _0806C404
	pop {r4}
	pop {r0}

	thumb_func_start sub_0806C464
sub_0806C464: @ 0x0806C464
	bx r0
	.align 2, 0

	thumb_func_start sub_0806C468
sub_0806C468: @ 0x0806C468
	push {r4, r5, lr}
	ldr r0, _0806C4CC @ =0xFFFF0000
	ands r5, r0
	movs r0, #0x20
	orrs r5, r0
	ldr r0, _0806C4D0 @ =0x0000FFFF
	ands r5, r0
	movs r0, #0xc0
	lsls r0, r0, #0xe
	orrs r5, r0
_0806C47C:
	movs r1, #0xf0
	subs r1, r1, r5
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	asrs r4, r5, #0x10
	adds r2, r4, #0
	adds r2, #0x50
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r0, #0
	bl sub_0806AE3C
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	movs r2, #0x50
	subs r2, r2, r4
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r0, #1
	bl sub_0806AE3C
	cmp r4, #0x20
	beq _0806C4D4
	adds r1, r5, #5
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, _0806C4CC @ =0xFFFF0000
	ands r5, r0
	orrs r5, r1
	asrs r1, r5, #0x10
	subs r1, #1
	lsls r1, r1, #0x10
	ldr r0, _0806C4D0 @ =0x0000FFFF
	ands r5, r0
	orrs r5, r1
	movs r0, #1
	bl sub_08002B98
	b _0806C47C
	.align 2, 0
_0806C4CC: .4byte 0xFFFF0000
_0806C4D0: .4byte 0x0000FFFF
_0806C4D4:
	movs r0, #0
	bl sub_080077D4
	ldr r0, _0806C4F4 @ =0x030044E0
	movs r2, #4
	ldrsh r1, [r0, r2]
	movs r3, #0x10
	ldrsh r0, [r0, r3]
	cmp r1, r0
	bne _0806C4FC
	movs r0, #0x72
	bl m4aSongNumStart
	ldr r0, _0806C4F8 @ =0x003E002D
	b _0806C518
	.align 2, 0
_0806C4F4: .4byte 0x030044E0
_0806C4F8: .4byte 0x003E002D
_0806C4FC:
	cmp r1, r0
	ble _0806C510
	movs r0, #0x71
	bl m4aSongNumStart
	ldr r0, _0806C50C @ =0x003E0023
	b _0806C518
	.align 2, 0
_0806C50C: .4byte 0x003E0023
_0806C510:
	movs r0, #0x72
	bl m4aSongNumStart
	ldr r0, _0806C558 @ =0x003E0024
_0806C518:
	movs r1, #0x50
	movs r2, #0x18
	bl sub_0806B7E4
	movs r0, #1
	bl sub_08007828
	movs r0, #8
	bl sub_080077C4
	movs r0, #1
	bl sub_08005B8C
	bl sub_0806B914
	ldr r0, _0806C55C @ =0x02031050
	ldr r1, _0806C560 @ =0x00000888
	adds r2, r0, r1
	ldr r0, _0806C564 @ =0x030044E0
	movs r3, #4
	ldrsh r1, [r0, r3]
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r2]
	ldr r1, _0806C568 @ =0x0001869E
	cmp r0, r1
	bls _0806C552
	ldr r0, _0806C56C @ =0x0001869F
	str r0, [r2]
_0806C552:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806C558: .4byte 0x003E0024
_0806C55C: .4byte 0x02031050
_0806C560: .4byte 0x00000888
_0806C564: .4byte 0x030044E0
_0806C568: .4byte 0x0001869E
_0806C56C: .4byte 0x0001869F

	thumb_func_start sub_0806C570
sub_0806C570: @ 0x0806C570
	push {r4, r5, r6, r7, lr}
	sub sp, #0x18
	ldr r5, _0806C5A4 @ =0x03004400
	movs r6, #0
	movs r0, #1
	strb r0, [r5, #5]
	bl sub_08060708
	ldr r4, _0806C5A8 @ =0x03004500
	movs r0, #0x82
	lsls r0, r0, #1
	bl sub_08007CE8
	adds r1, r0, #0
	str r1, [r4]
	add r0, sp, #0x10
	strh r6, [r0]
	ldr r2, _0806C5AC @ =0x01000082
	bl CpuSet
	ldrb r0, [r5, #0xa]
	cmp r0, #0x11
	bne _0806C5B0
	add r1, sp, #0x14
	movs r0, #6
	b _0806C5C8
	.align 2, 0
_0806C5A4: .4byte 0x03004400
_0806C5A8: .4byte 0x03004500
_0806C5AC: .4byte 0x01000082
_0806C5B0:
	mov r0, sp
	adds r0, #0x12
	strh r6, [r0]
	ldr r4, _0806C664 @ =0x030044E0
	ldr r2, _0806C668 @ =0x01000010
	adds r1, r4, #0
	bl CpuSet
	ldr r0, _0806C66C @ =0x00004401
	strh r0, [r4, #0x1a]
	add r1, sp, #0x14
	movs r0, #0
_0806C5C8:
	strb r0, [r1]
	adds r6, r1, #0
	ldr r1, _0806C670 @ =0x03004400
	ldrb r0, [r1, #8]
	strb r0, [r1, #0xa]
	movs r0, #0xb
	bl sub_080607FC
	bl sub_0806AA20
	bl sub_0806AA78
	movs r0, #0
	bl sub_0806AC8C
	movs r0, #1
	bl sub_0806AC8C
	bl sub_0806AEC8
	ldr r4, _0806C664 @ =0x030044E0
	ldrb r0, [r4, #0x18]
	bl sub_0806AF54
	movs r0, #0
	bl sub_0806AFA0
	movs r0, #1
	bl sub_0806AFA0
	movs r0, #0
	bl sub_0806B194
	movs r0, #1
	bl sub_0806B194
	movs r0, #0
	ldrsb r0, [r6, r0]
	cmp r0, #0
	bne _0806C678
	movs r4, #0x80
	rsbs r4, r4, #0
	movs r0, #0
	movs r1, #0
	adds r2, r4, #0
	bl sub_0806AE3C
	movs r0, #1
	movs r1, #0
	adds r2, r4, #0
	bl sub_0806AE3C
	movs r0, #0
	adds r1, r4, #0
	bl sub_0806AF78
	movs r0, #0
	movs r1, #0
	adds r2, r4, #0
	bl sub_0806B110
	movs r0, #1
	movs r1, #0
	adds r2, r4, #0
	bl sub_0806B110
	movs r0, #0
	movs r1, #0
	adds r2, r4, #0
	bl sub_0806B254
	movs r0, #1
	movs r1, #0
	adds r2, r4, #0
	bl sub_0806B254
	b _0806C700
	.align 2, 0
_0806C664: .4byte 0x030044E0
_0806C668: .4byte 0x01000010
_0806C66C: .4byte 0x00004401
_0806C670: .4byte 0x03004400
_0806C674:
	movs r4, #0xff
	b _0806C78E
_0806C678:
	movs r0, #0
	bl sub_0806AD54
	movs r0, #1
	bl sub_0806AD54
	movs r0, #0
	movs r1, #0xd0
	movs r2, #0x80
	bl sub_0806AE3C
	movs r0, #1
	movs r1, #0x20
	movs r2, #0x20
	bl sub_0806AE3C
	movs r0, #0x78
	movs r1, #0x50
	bl sub_0806AF78
	ldr r0, _0806C734 @ =0x03004500
	ldr r0, [r0]
	ldr r0, [r0, #4]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r1, r2, #0
	bl sub_08009E84
	movs r1, #6
	ldrsb r1, [r4, r1]
	movs r0, #0
	bl sub_0806B060
	movs r1, #0x12
	ldrsb r1, [r4, r1]
	movs r0, #1
	bl sub_0806B060
	movs r0, #0
	movs r1, #0x78
	movs r2, #0x78
	bl sub_0806B110
	movs r0, #1
	movs r1, #0x78
	movs r2, #0x28
	bl sub_0806B110
	movs r1, #7
	ldrsb r1, [r4, r1]
	movs r0, #0
	bl sub_0806B208
	movs r1, #0x13
	ldrsb r1, [r4, r1]
	movs r0, #1
	bl sub_0806B208
	movs r0, #0
	movs r1, #0x78
	movs r2, #0x90
	bl sub_0806B254
	movs r0, #1
	movs r1, #0x78
	movs r2, #0x10
	bl sub_0806B254
_0806C700:
	movs r0, #8
	bl sub_080077C4
	movs r0, #0x20
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl sub_08008AF4
	ldr r0, _0806C738 @ =0x030024E0
	adds r0, #0x4f
	movs r1, #1
	strb r1, [r0]
	bl sub_08008D34
	movs r0, #0
	ldrsb r0, [r6, r0]
	cmp r0, #0
	bne _0806C800
	movs r0, #1
	bl sub_08005A88
	movs r0, #0
	bl sub_080059E4
	b _0806C758
	.align 2, 0
_0806C734: .4byte 0x03004500
_0806C738: .4byte 0x030024E0
_0806C73C:
	cmp r0, #1
	bne _0806C674
	ldr r0, _0806C7D4 @ =0x00470048
	bl sub_080062D0
	ldr r0, _0806C7D8 @ =0x00470049
	bl sub_080062D0
	ldr r0, _0806C7DC @ =0x0047004A
	bl sub_080062D0
	ldr r0, _0806C7E0 @ =0x0047004B
	bl sub_080062D0
_0806C758:
	ldr r0, _0806C7E4 @ =0x00470046
	bl sub_080062D0
	ldr r0, _0806C7E8 @ =0x00470047
	bl sub_0800648C
	bl sub_080064F8
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _0806C73C
	ldr r0, _0806C7EC @ =0x0047004C
	bl sub_080062D0
	ldr r0, _0806C7F0 @ =0x0047004D
	bl sub_080062D0
	ldr r0, _0806C7F4 @ =0x0047004E
	bl sub_0800648C
	bl sub_080064F8
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0806C758
	movs r4, #0
_0806C78E:
	bl sub_08005A2C
	bl sub_08005AB0
	lsls r0, r4, #0x18
	asrs r0, r0, #0x18
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _0806C7A4
	b _0806C998
_0806C7A4:
	bl sub_08003468
	bl sub_08003510
	ldr r0, _0806C7F8 @ =0x004F0002
	bl sub_080033B0
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	movs r0, #0x55
	bl sub_0800353C
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	bl sub_080038E8
	ldr r1, _0806C7FC @ =0x030044E0
	strb r0, [r1, #0x19]
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	bl sub_08003458
	b _0806C866
	.align 2, 0
_0806C7D4: .4byte 0x00470048
_0806C7D8: .4byte 0x00470049
_0806C7DC: .4byte 0x0047004A
_0806C7E0: .4byte 0x0047004B
_0806C7E4: .4byte 0x00470046
_0806C7E8: .4byte 0x00470047
_0806C7EC: .4byte 0x0047004C
_0806C7F0: .4byte 0x0047004D
_0806C7F4: .4byte 0x0047004E
_0806C7F8: .4byte 0x004F0002
_0806C7FC: .4byte 0x030044E0
_0806C800:
	bl sub_08003468
	bl sub_08003510
	ldr r0, _0806C854 @ =0x004F000D
	bl sub_080033B0
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r0, _0806C858 @ =0x030044E0
	ldrb r1, [r0, #0x19]
	movs r0, #0x55
	bl sub_08003690
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	bl sub_08003458
	cmp r4, #0
	bne _0806C864
	bl sub_080034DC
	movs r0, #0
	bl sub_080059E4
	ldr r0, _0806C85C @ =0x00470054
	bl sub_080062D0
	ldr r0, _0806C860 @ =0x00470055
	bl sub_0800648C
	bl sub_08005A2C
	bl sub_080064F8
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0806C800
	b _0806C998
	.align 2, 0
_0806C854: .4byte 0x004F000D
_0806C858: .4byte 0x030044E0
_0806C85C: .4byte 0x00470054
_0806C860: .4byte 0x00470055
_0806C864:
	movs r4, #1
_0806C866:
	cmp r4, #0
	bne _0806C86C
	b _0806C988
_0806C86C:
	movs r0, #0
	ldrsb r0, [r6, r0]
	cmp r0, #0
	bne _0806C8F8
	ldr r4, _0806C8EC @ =0x030044E0
	strh r0, [r4, #0x1c]
	ldrb r0, [r4, #0x19]
	cmp r0, #0
	bne _0806C88E
	bl sub_0800B818
	ldr r1, _0806C8F0 @ =0x03004400
	ldr r1, [r1]
	adds r0, r0, r1
	movs r1, #1
	orrs r0, r1
	strh r0, [r4, #0x1c]
_0806C88E:
	mov r1, sp
	movs r0, #0x55
	strb r0, [r1]
	movs r0, #0
	ldrsb r0, [r6, r0]
	strb r0, [r1, #1]
	mov r2, sp
	ldrh r1, [r4, #0x1c]
	lsrs r0, r1, #8
	strb r0, [r2, #5]
	mov r0, sp
	strb r1, [r0, #6]
	ldr r0, _0806C8F4 @ =0x0000999A
	add r4, sp, #8
	mov r1, sp
	adds r2, r4, #0
	movs r3, #8
	bl sub_08003998
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #0x55
	bne _0806C8CA
	ldrb r0, [r4, #1]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #0
	ldrsb r1, [r6, r1]
	cmp r0, r1
	beq _0806C8CE
_0806C8CA:
	bl sub_0800386C
_0806C8CE:
	ldr r2, _0806C8EC @ =0x030044E0
	ldrb r0, [r2, #0x19]
	cmp r0, #0
	beq _0806C9A4
	movs r0, #5
	ldrsb r0, [r4, r0]
	lsls r0, r0, #8
	movs r3, #0xff
	lsls r3, r3, #8
	adds r1, r3, #0
	ands r0, r1
	ldrb r1, [r4, #6]
	orrs r0, r1
	strh r0, [r2, #0x1c]
	b _0806C9A4
	.align 2, 0
_0806C8EC: .4byte 0x030044E0
_0806C8F0: .4byte 0x03004400
_0806C8F4: .4byte 0x0000999A
_0806C8F8:
	mov r1, sp
	movs r0, #0x55
	strb r0, [r1]
	movs r0, #0
	ldrsb r0, [r6, r0]
	strb r0, [r1, #1]
	ldr r7, _0806C97C @ =0x03004400
	ldrb r0, [r7, #0xd]
	strb r0, [r1, #2]
	mov r2, sp
	ldr r5, _0806C980 @ =0x030044E0
	ldrh r1, [r5, #0x1a]
	lsrs r0, r1, #8
	strb r0, [r2, #3]
	mov r0, sp
	strb r1, [r0, #4]
	ldrh r1, [r5, #0x1c]
	lsrs r0, r1, #8
	strb r0, [r2, #5]
	mov r0, sp
	strb r1, [r0, #6]
	ldr r0, _0806C984 @ =0x0000999A
	add r4, sp, #8
	mov r1, sp
	adds r2, r4, #0
	movs r3, #8
	bl sub_08003998
	movs r0, #3
	ldrsb r0, [r4, r0]
	lsls r0, r0, #0x18
	ldrb r1, [r4, #4]
	lsrs r3, r0, #0x10
	orrs r3, r1
	movs r0, #5
	ldrsb r0, [r4, r0]
	lsls r0, r0, #0x18
	ldrb r1, [r4, #6]
	lsrs r2, r0, #0x10
	orrs r2, r1
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #0x55
	bne _0806C974
	ldrb r0, [r4, #1]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #0
	ldrsb r1, [r6, r1]
	cmp r0, r1
	bne _0806C974
	movs r0, #2
	ldrsb r0, [r4, r0]
	ldrb r7, [r7, #0xd]
	cmp r0, r7
	bne _0806C974
	ldrh r0, [r5, #0x1a]
	cmp r3, r0
	bne _0806C974
	ldrh r5, [r5, #0x1c]
	cmp r2, r5
	beq _0806C9A4
_0806C974:
	bl sub_0800386C
	b _0806C9A4
	.align 2, 0
_0806C97C: .4byte 0x03004400
_0806C980: .4byte 0x030044E0
_0806C984: .4byte 0x0000999A
_0806C988:
	movs r0, #0
	bl sub_080059E4
	ldr r0, _0806C9A0 @ =0x003E0030
	bl sub_080062D0
	bl sub_08005A2C
_0806C998:
	movs r0, #0x2a
	bl sub_08008790
	b _0806CC1E
	.align 2, 0
_0806C9A0: .4byte 0x003E0030
_0806C9A4:
	movs r0, #0
	ldrsb r0, [r6, r0]
	cmp r0, #8
	bls _0806C9AE
	b _0806CC0A
_0806C9AE:
	lsls r0, r0, #2
	ldr r1, _0806C9B8 @ =_0806C9BC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0806C9B8: .4byte _0806C9BC
_0806C9BC: @ jump table
	.4byte _0806C9E0 @ case 0
	.4byte _0806C9EA @ case 1
	.4byte _0806CA1C @ case 2
	.4byte _0806CA5C @ case 3
	.4byte _0806CA66 @ case 4
	.4byte _0806CA70 @ case 5
	.4byte _0806CAA0 @ case 6
	.4byte _0806CAD2 @ case 7
	.4byte _0806CB62 @ case 8
_0806C9E0:
	bl sub_0806BB20
	movs r0, #1
	strb r0, [r6]
	b _0806CC0A
_0806C9EA:
	ldr r2, _0806CA14 @ =0x030044E0
	ldrh r0, [r2, #0x1a]
	adds r1, r0, #1
	strh r1, [r2, #0x1a]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_08003A30
	ldr r0, _0806CA18 @ =0x003E001B
	movs r1, #0x50
	movs r2, #0x18
	bl sub_0806B7E4
	movs r0, #0x3c
	bl sub_08002B98
	bl sub_0806B914
	movs r0, #2
	strb r0, [r6]
	b _0806CC0A
	.align 2, 0
_0806CA14: .4byte 0x030044E0
_0806CA18: .4byte 0x003E001B
_0806CA1C:
	ldr r0, _0806CA50 @ =0x003E001D
	movs r1, #0x10
	movs r2, #0x18
	bl sub_0806B7E4
	ldr r4, _0806CA54 @ =0x030044E0
	ldrb r0, [r4, #0x18]
	bl sub_0806BC64
	strb r0, [r4, #0x18]
	ldrb r1, [r4, #0x18]
	movs r0, #5
	bl sub_08005BE0
	ldr r0, _0806CA58 @ =0x003E001E
	bl sub_0806B79C
	movs r0, #0x3c
	bl sub_08002B98
	bl sub_0806B914
	movs r0, #3
	strb r0, [r6]
	b _0806CC0A
	.align 2, 0
_0806CA50: .4byte 0x003E001D
_0806CA54: .4byte 0x030044E0
_0806CA58: .4byte 0x003E001E
_0806CA5C:
	bl sub_0806BD70
	movs r0, #4
	strb r0, [r6]
	b _0806CC0A
_0806CA66:
	bl sub_0806BF90
	movs r0, #5
	strb r0, [r6]
	b _0806CC0A
_0806CA70:
	bl sub_0806B3A8
	bl sub_0806B470
	ldr r1, _0806CA9C @ =0x030044E0
	ldrb r0, [r1, #0x18]
	ldrb r2, [r1, #6]
	movs r1, #0
	movs r3, #3
	bl sub_08001C14
	bl sub_08001B40
	movs r0, #0x19
	bl sub_08001930
	movs r0, #0x11
	bl sub_08008790
	movs r0, #0xff
	strb r0, [r6]
	b _0806CC0A
	.align 2, 0
_0806CA9C: .4byte 0x030044E0
_0806CAA0:
	bl sub_0806C14C
	bl sub_0806C400
	ldr r0, _0806CAC8 @ =0x030044E0
	movs r2, #4
	ldrsh r1, [r0, r2]
	cmp r1, #0
	beq _0806CAC2
	movs r3, #0x10
	ldrsh r0, [r0, r3]
	cmp r0, #0
	beq _0806CAC2
	cmp r1, #0xc7
	bgt _0806CAC2
	cmp r0, #0xc7
	ble _0806CACC
_0806CAC2:
	movs r0, #8
	strb r0, [r6]
	b _0806CC0A
	.align 2, 0
_0806CAC8: .4byte 0x030044E0
_0806CACC:
	movs r0, #7
	strb r0, [r6]
	b _0806CC0A
_0806CAD2:
	ldr r4, _0806CAFC @ =0x030044E0
	ldrh r0, [r4, #0x1a]
	adds r1, r0, #1
	strh r1, [r4, #0x1a]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_08003A30
	ldrb r0, [r4, #0x19]
	cmp r0, #0
	bne _0806CB2C
	ldr r0, _0806CB00 @ =0x003E002E
	bl sub_0800648C
	bl sub_080064F8
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0806CB04
	movs r0, #1
	b _0806CB0C
	.align 2, 0
_0806CAFC: .4byte 0x030044E0
_0806CB00: .4byte 0x003E002E
_0806CB04:
	movs r0, #0x2a
	bl sub_08008790
	movs r0, #0xff
_0806CB0C:
	strb r0, [r6]
	movs r4, #9
_0806CB10:
	ldr r0, _0806CB28 @ =0x00001111
	adds r1, r6, #0
	movs r2, #1
	bl sub_080038F4
	movs r0, #1
	bl sub_08002B98
	subs r4, #1
	cmp r4, #0
	bge _0806CB10
	b _0806CC0A
	.align 2, 0
_0806CB28: .4byte 0x00001111
_0806CB2C:
	ldr r4, _0806CB34 @ =0x00001111
	movs r5, #1
	rsbs r5, r5, #0
	b _0806CB3E
	.align 2, 0
_0806CB34: .4byte 0x00001111
_0806CB38:
	movs r0, #1
	bl sub_08002B98
_0806CB3E:
	movs r0, #0
	adds r1, r4, #0
	adds r2, r6, #0
	movs r3, #1
	bl sub_08003938
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r4
	bne _0806CB38
	movs r0, #0
	ldrsb r0, [r6, r0]
	cmp r0, r5
	bne _0806CC16
	movs r0, #0x2a
	bl sub_08008790
	b _0806CC0A
_0806CB62:
	bl sub_0806C468
	ldr r4, _0806CBC4 @ =0x030044E0
	ldrh r0, [r4, #0x1a]
	adds r1, r0, #1
	strh r1, [r4, #0x1a]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_08003A30
	movs r0, #0xa
	bl sub_08002B98
	ldrb r0, [r4, #0x19]
	cmp r0, #0
	bne _0806CBD0
	ldr r0, _0806CBC8 @ =0x003E0025
	bl sub_0800648C
	bl sub_080064F8
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _0806CBA6
	movs r0, #0x2a
	bl sub_080072F4
	movs r0, #0x23
	bl sub_08008790
	movs r1, #1
	rsbs r1, r1, #0
	adds r0, r1, #0
_0806CBA6:
	strb r0, [r6]
	movs r4, #9
_0806CBAA:
	ldr r0, _0806CBCC @ =0x00001111
	adds r1, r6, #0
	movs r2, #1
	bl sub_080038F4
	movs r0, #1
	bl sub_08002B98
	subs r4, #1
	cmp r4, #0
	bge _0806CBAA
	b _0806CC0A
	.align 2, 0
_0806CBC4: .4byte 0x030044E0
_0806CBC8: .4byte 0x003E0025
_0806CBCC: .4byte 0x00001111
_0806CBD0:
	ldr r4, _0806CBD8 @ =0x00001111
	movs r5, #1
	rsbs r5, r5, #0
	b _0806CBE2
	.align 2, 0
_0806CBD8: .4byte 0x00001111
_0806CBDC:
	movs r0, #1
	bl sub_08002B98
_0806CBE2:
	movs r0, #0
	adds r1, r4, #0
	adds r2, r6, #0
	movs r3, #1
	bl sub_08003938
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r4
	bne _0806CBDC
	movs r0, #0
	ldrsb r0, [r6, r0]
	cmp r0, r5
	bne _0806CC16
	movs r0, #0x2a
	bl sub_080072F4
	movs r0, #0x23
	bl sub_08008790
_0806CC0A:
	movs r1, #0
	ldrsb r1, [r6, r1]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0806CC1E
_0806CC16:
	movs r0, #1
	bl sub_08002B98
	b _0806C9A4
_0806CC1E:
	ldr r4, _0806CC9C @ =0x03004400
	ldrb r0, [r4, #9]
	cmp r0, #0x11
	bne _0806CC2E
	movs r0, #0
	movs r1, #0x20
	bl sub_080077EC
_0806CC2E:
	movs r0, #0x20
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl sub_080089E8
	bl sub_08008D34
	ldrb r0, [r4, #9]
	cmp r0, #0x2a
	beq _0806CC48
	cmp r0, #0x23
	bne _0806CC4C
_0806CC48:
	bl sub_080034DC
_0806CC4C:
	bl sub_0806B400
	movs r0, #0
	bl sub_0806B1D0
	movs r0, #1
	bl sub_0806B1D0
	movs r0, #0
	bl sub_0806B01C
	movs r0, #1
	bl sub_0806B01C
	bl sub_0806AF18
	movs r0, #0
	bl sub_0806AD10
	movs r0, #1
	bl sub_0806AD10
	bl sub_0806AAEC
	ldr r4, _0806CCA0 @ =0x03004500
	ldr r0, [r4]
	cmp r0, #0
	beq _0806CC8C
	bl sub_08007CF8
	movs r0, #0
	str r0, [r4]
_0806CC8C:
	bl sub_080607BC
	bl sub_08002B0C
	add sp, #0x18
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806CC9C: .4byte 0x03004400
_0806CCA0: .4byte 0x03004500

	thumb_func_start sub_0806CCA4
sub_0806CCA4: @ 0x0806CCA4
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r4, r2, #0
	adds r5, r3, #0
	lsls r1, r1, #0x18
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	ldr r2, _0806CCE0 @ =0x08090668
	lsrs r1, r1, #0x14
	adds r0, r2, #0
	adds r0, #0xc
	adds r0, r1, r0
	ldr r3, [r0]
	adds r2, #8
	adds r1, r1, r2
	ldr r2, [r1]
	adds r0, r6, #0
	adds r1, r3, #0
	adds r3, r4, #0
	bl sub_08009ACC
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_08009B40
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0806CCE0: .4byte 0x08090668

	thumb_func_start sub_0806CCE4
sub_0806CCE4: @ 0x0806CCE4
	push {r4, lr}
	adds r4, r0, #0
_0806CCE8:
	movs r0, #1
	bl sub_08002B98
	ldrb r0, [r4, #1]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _0806CCE8
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0806CCFC
sub_0806CCFC: @ 0x0806CCFC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp]
	cmp r0, #0
	bne _0806CD24
	ldr r0, _0806CD20 @ =0x03004524
	ldr r0, [r0]
	ldr r7, [r0, #0x60]
	b _0806CD2A
	.align 2, 0
_0806CD20: .4byte 0x03004524
_0806CD24:
	ldr r0, _0806CDC8 @ =0x03004524
	ldr r0, [r0]
	ldr r7, [r0, #0x68]
_0806CD2A:
	cmp r7, #0
	bne _0806CDE4
	movs r0, #1
	movs r1, #0x80
	bl sub_080099E0
	adds r7, r0, #0
	ldr r6, _0806CDCC @ =0x08090668
	ldr r0, [sp]
	lsls r4, r0, #4
	adds r0, r6, #4
	adds r0, r4, r0
	ldr r0, [r0]
	mov r8, r0
	bl sub_08006C14
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	mov r5, sl
	adds r5, #6
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	adds r4, r4, r6
	ldr r0, [r4]
	lsls r1, r5, #5
	ldr r2, _0806CDD0 @ =0x05000200
	adds r1, r1, r2
	bl sub_08008308
	mov r0, sb
	lsls r4, r0, #5
	ldr r1, _0806CDD4 @ =0x06010000
	adds r4, r4, r1
	mov r0, r8
	adds r1, r4, #0
	bl sub_08008374
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_08009A78
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_08009AB4
	adds r0, r7, #0
	movs r1, #0xff
	bl sub_08009B40
	movs r2, #0x80
	rsbs r2, r2, #0
	adds r0, r7, #0
	movs r1, #0
	bl sub_08009A70
	adds r0, r7, #0
	movs r1, #1
	bl sub_08009A34
	mov r2, sl
	adds r2, #3
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	adds r0, r7, #0
	ldr r1, [sp]
	movs r3, #0xff
	bl sub_0806CCA4
	mov r2, sl
	cmp r2, #0
	bne _0806CDD8
	ldr r0, _0806CDC8 @ =0x03004524
	ldr r0, [r0]
	str r7, [r0, #0x60]
	adds r0, #0x64
	mov r1, sb
	strh r1, [r0]
	b _0806CDE4
	.align 2, 0
_0806CDC8: .4byte 0x03004524
_0806CDCC: .4byte 0x08090668
_0806CDD0: .4byte 0x05000200
_0806CDD4: .4byte 0x06010000
_0806CDD8:
	ldr r0, _0806CDF4 @ =0x03004524
	ldr r0, [r0]
	str r7, [r0, #0x68]
	adds r0, #0x6c
	mov r2, sb
	strh r2, [r0]
_0806CDE4:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806CDF4: .4byte 0x03004524

	thumb_func_start sub_0806CDF8
sub_0806CDF8: @ 0x0806CDF8
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0
	bne _0806CE38
	ldr r5, _0806CE2C @ =0x03004524
	ldr r0, [r5]
	ldr r0, [r0, #0x60]
	cmp r0, #0
	beq _0806CE62
	bl sub_08009A00
	ldr r0, [r5]
	str r4, [r0, #0x60]
	adds r0, #0x64
	strh r4, [r0]
	ldr r1, _0806CE30 @ =0x08090668
	ldr r0, _0806CE34 @ =0x03004400
	ldrb r0, [r0, #0xe]
	lsls r0, r0, #4
	adds r1, #4
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_08006CA0
	b _0806CE62
	.align 2, 0
_0806CE2C: .4byte 0x03004524
_0806CE30: .4byte 0x08090668
_0806CE34: .4byte 0x03004400
_0806CE38:
	ldr r4, _0806CE68 @ =0x03004524
	ldr r0, [r4]
	ldr r0, [r0, #0x68]
	cmp r0, #0
	beq _0806CE62
	bl sub_08009A00
	ldr r0, [r4]
	movs r1, #0
	str r1, [r0, #0x68]
	adds r0, #0x6c
	strh r1, [r0]
	ldr r1, _0806CE6C @ =0x08090668
	ldr r0, _0806CE70 @ =0x03004400
	ldrb r0, [r0, #0xf]
	lsls r0, r0, #4
	adds r1, #4
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_08006CA0
_0806CE62:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806CE68: .4byte 0x03004524
_0806CE6C: .4byte 0x08090668
_0806CE70: .4byte 0x03004400

	thumb_func_start sub_0806CE74
sub_0806CE74: @ 0x0806CE74
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0
	bne _0806CE94
	ldr r0, _0806CE8C @ =0x03004524
	ldr r0, [r0]
	ldr r4, [r0, #0x60]
	ldr r0, _0806CE90 @ =0x03004400
	ldrb r7, [r0, #0xe]
	b _0806CE9E
	.align 2, 0
_0806CE8C: .4byte 0x03004524
_0806CE90: .4byte 0x03004400
_0806CE94:
	ldr r0, _0806CEB8 @ =0x03004524
	ldr r0, [r0]
	ldr r4, [r0, #0x68]
	ldr r0, _0806CEBC @ =0x03004400
	ldrb r7, [r0, #0xf]
_0806CE9E:
	movs r1, #0x84
	lsls r1, r1, #1
	cmp r6, #0
	bne _0806CEAA
	movs r1, #0x18
	rsbs r1, r1, #0
_0806CEAA:
	adds r0, r4, #0
	movs r2, #0x58
	bl sub_08009A70
	adds r5, r6, #5
	b _0806CED4
	.align 2, 0
_0806CEB8: .4byte 0x03004524
_0806CEBC: .4byte 0x03004400
_0806CEC0:
	ldrh r0, [r4, #6]
	subs r0, #1
	strh r0, [r4, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xd0
	beq _0806CEE6
_0806CECE:
	movs r0, #1
	bl sub_08002B98
_0806CED4:
	cmp r6, #0
	bne _0806CEC0
	ldrh r0, [r4, #6]
	adds r0, #1
	strh r0, [r4, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x20
	bne _0806CECE
_0806CEE6:
	lsls r2, r5, #0x18
	lsrs r2, r2, #0x18
	adds r0, r4, #0
	adds r1, r7, #0
	movs r3, #0
	bl sub_0806CCA4
	adds r0, r4, #0
	bl sub_0806CCE4
	movs r0, #0x1e
	bl sub_08002B98
	adds r0, r4, #0
	adds r1, r7, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_0806CCA4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0806CF14
sub_0806CF14: @ 0x0806CF14
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0806CF34
	ldr r0, _0806CF2C @ =0x03004524
	ldr r0, [r0]
	ldr r4, [r0, #0x60]
	movs r1, #0x20
	ldr r0, _0806CF30 @ =0x03004400
	ldrb r5, [r0, #0xe]
	b _0806CF40
	.align 2, 0
_0806CF2C: .4byte 0x03004524
_0806CF30: .4byte 0x03004400
_0806CF34:
	ldr r0, _0806CF5C @ =0x03004524
	ldr r0, [r0]
	ldr r4, [r0, #0x68]
	movs r1, #0xd0
	ldr r0, _0806CF60 @ =0x03004400
	ldrb r5, [r0, #0xf]
_0806CF40:
	adds r0, r4, #0
	movs r2, #0x58
	bl sub_08009A70
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_0806CCA4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806CF5C: .4byte 0x03004524
_0806CF60: .4byte 0x03004400

	thumb_func_start sub_0806CF64
sub_0806CF64: @ 0x0806CF64
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	ldr r0, _0806D054 @ =0x0809CB28
	ldr r1, _0806D058 @ =0x05000200
	bl sub_08008308
	ldr r0, _0806D05C @ =0x0809CCBC
	ldr r1, _0806D060 @ =0x06010000
	bl sub_08008374
	movs r6, #0x80
	rsbs r6, r6, #0
	str r6, [sp]
	movs r0, #6
	movs r1, #0x80
	adds r2, r4, #0
	movs r3, #0
	bl sub_08060D9C
	ldr r4, _0806D064 @ =0x03004524
	ldr r1, [r4]
	str r0, [r1, #0x70]
	str r6, [sp]
	movs r0, #6
	movs r1, #0x80
	adds r2, r5, #0
	movs r3, #0
	bl sub_08060D9C
	ldr r1, [r4]
	adds r1, #0x9c
	str r0, [r1]
	movs r7, #0
	ldr r0, _0806D068 @ =0x03004510
	mov r8, r0
_0806CFBA:
	str r6, [sp]
	movs r0, #2
	movs r1, #0x80
	movs r2, #7
	movs r3, #0
	bl sub_08060D9C
	ldr r1, [r4]
	lsls r5, r7, #2
	adds r1, #0x74
	adds r1, r1, r5
	str r0, [r1]
	str r6, [sp]
	movs r0, #2
	movs r1, #0x80
	movs r2, #7
	movs r3, #0
	bl sub_08060D9C
	ldr r1, [r4]
	adds r1, #0xa0
	adds r1, r1, r5
	str r0, [r1]
	str r6, [sp]
	movs r0, #2
	movs r1, #0x7f
	movs r2, #0xf
	movs r3, #0
	bl sub_08060D9C
	ldr r1, [r4]
	adds r1, #0x88
	adds r1, r1, r5
	str r0, [r1]
	str r6, [sp]
	movs r0, #2
	movs r1, #0x7f
	movs r2, #0xf
	movs r3, #0
	bl sub_08060D9C
	ldr r2, [r4]
	adds r1, r2, #0
	adds r1, #0xb4
	adds r1, r1, r5
	str r0, [r1]
	mov r1, r8
	ldrb r0, [r1, #2]
	cmp r0, r7
	blt _0806D02C
	adds r0, r2, #0
	adds r0, #0x88
	adds r0, r0, r5
	ldr r0, [r0]
	movs r1, #0
	bl sub_08009A34
_0806D02C:
	mov r1, r8
	ldrb r0, [r1, #3]
	cmp r0, r7
	blt _0806D042
	ldr r0, [r4]
	adds r0, #0xb4
	adds r0, r0, r5
	ldr r0, [r0]
	movs r1, #0
	bl sub_08009A34
_0806D042:
	adds r7, #1
	cmp r7, #4
	ble _0806CFBA
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806D054: .4byte 0x0809CB28
_0806D058: .4byte 0x05000200
_0806D05C: .4byte 0x0809CCBC
_0806D060: .4byte 0x06010000
_0806D064: .4byte 0x03004524
_0806D068: .4byte 0x03004510

	thumb_func_start sub_0806D06C
sub_0806D06C: @ 0x0806D06C
	push {r4, r5, r6, lr}
	ldr r4, _0806D0C4 @ =0x03004524
	ldr r0, [r4]
	ldr r0, [r0, #0x70]
	bl sub_08009A00
	ldr r0, [r4]
	adds r0, #0x9c
	ldr r0, [r0]
	bl sub_08009A00
	movs r6, #0
	adds r5, r4, #0
_0806D086:
	ldr r0, [r5]
	lsls r4, r6, #2
	adds r0, #0x74
	adds r0, r0, r4
	ldr r0, [r0]
	bl sub_08009A00
	ldr r0, [r5]
	adds r0, #0xa0
	adds r0, r0, r4
	ldr r0, [r0]
	bl sub_08009A00
	ldr r0, [r5]
	adds r0, #0x88
	adds r0, r0, r4
	ldr r0, [r0]
	bl sub_08009A00
	ldr r0, [r5]
	adds r0, #0xb4
	adds r0, r0, r4
	ldr r0, [r0]
	bl sub_08009A00
	adds r6, #1
	cmp r6, #4
	ble _0806D086
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0806D0C4: .4byte 0x03004524

	thumb_func_start sub_0806D0C8
sub_0806D0C8: @ 0x0806D0C8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x17
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	mov sl, r1
	lsrs r0, r0, #0x19
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #3
	movs r0, #0x6c
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	movs r0, #0x80
	lsls r0, r0, #0xe
	orrs r7, r0
	ldr r6, _0806D1C0 @ =0x03004524
	ldr r0, [r6]
	ldr r0, [r0, #0x70]
	lsls r5, r7, #0x10
	asrs r5, r5, #0x10
	asrs r4, r7, #0x10
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_08009A70
	ldr r0, [r6]
	adds r0, #0x9c
	ldr r0, [r0]
	adds r4, #0x18
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_08009A70
	movs r2, #0
	mov sb, r2
	mov r8, r6
	movs r6, #0
_0806D124:
	adds r1, r7, #0
	adds r1, #0x18
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, _0806D1C4 @ =0xFFFF0000
	ands r7, r0
	orrs r7, r1
	mov r1, r8
	ldr r0, [r1]
	adds r0, #0x74
	adds r0, r0, r6
	ldr r0, [r0]
	adds r5, r7, #0
	subs r5, #0xc
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	asrs r4, r7, #0x10
	adds r2, r4, #0
	subs r2, #0xc
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r1, r5, #0
	bl sub_08009A70
	mov r2, r8
	ldr r0, [r2]
	adds r0, #0xa0
	adds r0, r0, r6
	ldr r0, [r0]
	adds r2, r4, #0
	adds r2, #0xc
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r1, r5, #0
	bl sub_08009A70
	mov r1, r8
	ldr r0, [r1]
	adds r0, #0x88
	adds r0, r0, r6
	ldr r0, [r0]
	lsls r5, r7, #0x10
	asrs r5, r5, #0x10
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_08009A70
	mov r2, r8
	ldr r0, [r2]
	adds r0, #0xb4
	adds r0, r0, r6
	ldr r0, [r0]
	adds r4, #0x18
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_08009A70
	cmp sb, sl
	bge _0806D1C8
	mov r1, r8
	ldr r0, [r1]
	adds r0, #0x74
	adds r0, r0, r6
	ldr r0, [r0]
	movs r1, #1
	bl sub_08009A34
	mov r2, r8
	ldr r0, [r2]
	adds r0, #0xa0
	adds r0, r0, r6
	ldr r0, [r0]
	movs r1, #1
	bl sub_08009A34
	b _0806D1E8
	.align 2, 0
_0806D1C0: .4byte 0x03004524
_0806D1C4: .4byte 0xFFFF0000
_0806D1C8:
	mov r1, r8
	ldr r0, [r1]
	adds r0, #0x74
	adds r0, r0, r6
	ldr r0, [r0]
	movs r1, #0
	bl sub_08009A34
	mov r2, r8
	ldr r0, [r2]
	adds r0, #0xa0
	adds r0, r0, r6
	ldr r0, [r0]
	movs r1, #0
	bl sub_08009A34
_0806D1E8:
	ldr r5, _0806D234 @ =0x03004524
	ldr r0, [r5]
	adds r0, #0x88
	adds r0, r0, r6
	ldr r0, [r0]
	movs r1, #0
	ldr r4, _0806D238 @ =0x03004510
	ldrb r2, [r4, #2]
	cmp sb, r2
	bge _0806D1FE
	movs r1, #1
_0806D1FE:
	bl sub_08009A34
	ldr r0, [r5]
	adds r0, #0xb4
	adds r0, r0, r6
	ldr r0, [r0]
	movs r1, #0
	ldrb r4, [r4, #3]
	cmp sb, r4
	bge _0806D214
	movs r1, #1
_0806D214:
	bl sub_08009A34
	adds r6, #4
	movs r0, #1
	add sb, r0
	mov r1, sb
	cmp r1, #4
	bgt _0806D226
	b _0806D124
_0806D226:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806D234: .4byte 0x03004524
_0806D238: .4byte 0x03004510

	thumb_func_start sub_0806D23C
sub_0806D23C: @ 0x0806D23C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r5, #0
	cmp r0, #0
	bne _0806D264
	ldr r0, _0806D260 @ =0x03004524
	ldr r0, [r0]
	lsls r1, r1, #2
	adds r0, #0x88
	b _0806D26C
	.align 2, 0
_0806D260: .4byte 0x03004524
_0806D264:
	ldr r0, _0806D2CC @ =0x03004524
	ldr r0, [r0]
	lsls r1, r1, #2
	adds r0, #0xb4
_0806D26C:
	adds r0, r0, r1
	ldr r7, [r0]
	bl sub_08009DDC
	adds r6, r0, #0
	lsls r2, r5, #0x10
	asrs r2, r2, #0x10
	adds r1, r2, #0
	bl sub_08009E84
	adds r0, r6, #0
	movs r1, #0
	bl sub_08009E9C
	adds r0, r7, #0
	movs r1, #2
	movs r2, #8
	bl sub_08060E3C
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_08009B9C
	adds r0, r7, #0
	movs r1, #1
	bl sub_08009B84
	adds r0, r7, #0
	movs r1, #1
	bl sub_08009A34
	ldr r0, _0806D2D0 @ =0x00000179
	bl m4aSongNumStart
	movs r4, #0
	movs r0, #0xc0
	lsls r0, r0, #1
	mov sl, r0
	movs r1, #0x80
	lsls r1, r1, #1
	mov sb, r1
_0806D2BE:
	lsls r0, r4, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _0806D2D4
	cmp r0, #1
	beq _0806D2E8
	b _0806D2F8
	.align 2, 0
_0806D2CC: .4byte 0x03004524
_0806D2D0: .4byte 0x00000179
_0806D2D4:
	lsls r0, r5, #0x10
	movs r1, #0x80
	lsls r1, r1, #0xf
	adds r0, r0, r1
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, sl
	bne _0806D2F8
	movs r4, #1
	b _0806D2F8
_0806D2E8:
	lsls r0, r5, #0x10
	ldr r1, _0806D318 @ =0xFFE00000
	adds r0, r0, r1
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, sb
	bne _0806D2F8
	movs r4, #0xff
_0806D2F8:
	lsls r2, r5, #0x10
	asrs r2, r2, #0x10
	adds r0, r6, #0
	adds r1, r2, #0
	bl sub_08009E84
	lsls r0, r4, #0x18
	asrs r0, r0, #0x18
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _0806D31C
	movs r0, #1
	bl sub_08002B98
	b _0806D2BE
	.align 2, 0
_0806D318: .4byte 0xFFE00000
_0806D31C:
	adds r0, r7, #0
	movs r1, #0
	bl sub_08009B9C
	adds r0, r6, #0
	bl sub_08009E54
	movs r0, #0
	bl sub_080077D4
	ldr r0, _0806D340 @ =0x03004510
	ldrb r0, [r0, #4]
	cmp r0, #0
	bne _0806D344
	mov r0, r8
	cmp r0, #0
	beq _0806D34A
	b _0806D352
	.align 2, 0
_0806D340: .4byte 0x03004510
_0806D344:
	mov r1, r8
	cmp r1, #0
	beq _0806D352
_0806D34A:
	movs r0, #0x71
	bl m4aSongNumStart
	b _0806D358
_0806D352:
	movs r0, #0x72
	bl m4aSongNumStart
_0806D358:
	mov r0, r8
	cmp r0, #0
	bne _0806D388
	ldr r5, _0806D380 @ =0x03004524
	ldr r0, [r5]
	ldr r0, [r0, #0x60]
	ldr r4, _0806D384 @ =0x03004400
	ldrb r1, [r4, #0xe]
	movs r2, #7
	movs r3, #0
	bl sub_0806CCA4
	ldr r0, [r5]
	ldr r0, [r0, #0x68]
	ldrb r1, [r4, #0xf]
	movs r2, #8
	movs r3, #0
	bl sub_0806CCA4
	b _0806D3A8
	.align 2, 0
_0806D380: .4byte 0x03004524
_0806D384: .4byte 0x03004400
_0806D388:
	ldr r5, _0806D3D4 @ =0x03004524
	ldr r0, [r5]
	ldr r0, [r0, #0x60]
	ldr r4, _0806D3D8 @ =0x03004400
	ldrb r1, [r4, #0xe]
	movs r2, #8
	movs r3, #0
	bl sub_0806CCA4
	ldr r0, [r5]
	ldr r0, [r0, #0x68]
	ldrb r1, [r4, #0xf]
	movs r2, #7
	movs r3, #0
	bl sub_0806CCA4
_0806D3A8:
	movs r0, #1
	bl sub_08007828
	movs r0, #8
	bl sub_080077C4
	ldr r4, _0806D3D4 @ =0x03004524
	ldr r0, [r4]
	ldr r0, [r0, #0x60]
	bl sub_0806CCE4
	ldr r0, [r4]
	ldr r0, [r0, #0x68]
	bl sub_0806CCE4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806D3D4: .4byte 0x03004524
_0806D3D8: .4byte 0x03004400

	thumb_func_start sub_0806D3DC
sub_0806D3DC: @ 0x0806D3DC
	push {r4, lr}
	sub sp, #4
	ldr r4, _0806D418 @ =0x03004524
	ldr r0, [r4]
	adds r0, #0xd0
	ldr r0, [r0]
	cmp r0, #0
	bne _0806D40E
	movs r0, #0x80
	rsbs r0, r0, #0
	str r0, [sp]
	movs r0, #2
	movs r1, #0x80
	movs r2, #1
	movs r3, #0
	bl sub_08060D9C
	ldr r1, [r4]
	adds r1, #0xd0
	str r0, [r1]
	ldr r1, [r0, #0x20]
	ldrb r2, [r1, #2]
	movs r1, #3
	bl sub_08009A0C
_0806D40E:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806D418: .4byte 0x03004524

	thumb_func_start sub_0806D41C
sub_0806D41C: @ 0x0806D41C
	push {r4, lr}
	ldr r4, _0806D43C @ =0x03004524
	ldr r0, [r4]
	adds r0, #0xd0
	ldr r0, [r0]
	cmp r0, #0
	beq _0806D436
	bl sub_08009A00
	ldr r0, [r4]
	adds r0, #0xd0
	movs r1, #0
	str r1, [r0]
_0806D436:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806D43C: .4byte 0x03004524

	thumb_func_start sub_0806D440
sub_0806D440: @ 0x0806D440
	push {lr}
	lsls r0, r0, #0x10
	ldr r3, _0806D46C @ =0xFFD80000
	adds r0, r0, r3
	lsls r1, r1, #0x10
	ldr r3, _0806D470 @ =0xFFF40000
	adds r1, r1, r3
	lsrs r2, r0, #0x10
	orrs r2, r1
	ldr r0, _0806D474 @ =0x03004524
	ldr r0, [r0]
	adds r0, #0xd0
	ldr r0, [r0]
	cmp r0, #0
	beq _0806D468
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	asrs r2, r2, #0x10
	bl sub_08009A70
_0806D468:
	pop {r0}
	bx r0
	.align 2, 0
_0806D46C: .4byte 0xFFD80000
_0806D470: .4byte 0xFFF40000
_0806D474: .4byte 0x03004524

	thumb_func_start sub_0806D478
sub_0806D478: @ 0x0806D478
	push {r4, r5, r6, lr}
	sub sp, #4
	movs r5, #0
	ldr r6, _0806D4C8 @ =0x03004524
_0806D480:
	ldr r0, [r6]
	lsls r4, r5, #2
	adds r0, #0xc8
	adds r0, r0, r4
	ldr r0, [r0]
	cmp r0, #0
	bne _0806D4B8
	adds r2, r5, #5
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	movs r0, #0x80
	rsbs r0, r0, #0
	str r0, [sp]
	movs r0, #2
	movs r1, #0x64
	movs r3, #0
	bl sub_08060D9C
	ldr r1, [r6]
	adds r1, #0xc8
	adds r1, r1, r4
	str r0, [r1]
	lsls r2, r5, #0x18
	lsrs r2, r2, #0x18
	movs r1, #2
	movs r3, #0xff
	bl sub_08060E6C
_0806D4B8:
	adds r5, #1
	cmp r5, #1
	ble _0806D480
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0806D4C8: .4byte 0x03004524

	thumb_func_start sub_0806D4CC
sub_0806D4CC: @ 0x0806D4CC
	push {r4, r5, r6, lr}
	movs r5, #0
	ldr r6, _0806D4FC @ =0x03004524
_0806D4D2:
	ldr r0, [r6]
	lsls r4, r5, #2
	adds r0, #0xc8
	adds r0, r0, r4
	ldr r0, [r0]
	cmp r0, #0
	beq _0806D4EE
	bl sub_08009A00
	ldr r0, [r6]
	adds r0, #0xc8
	adds r0, r0, r4
	movs r1, #0
	str r1, [r0]
_0806D4EE:
	adds r5, #1
	cmp r5, #1
	ble _0806D4D2
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0806D4FC: .4byte 0x03004524

	thumb_func_start sub_0806D500
sub_0806D500: @ 0x0806D500
	push {r4, r5, r6, r7, lr}
	lsls r2, r2, #0x18
	lsrs r5, r2, #0x18
	lsls r0, r0, #0x10
	ldr r2, _0806D538 @ =0xFFFC0000
	adds r0, r0, r2
	lsrs r7, r0, #0x10
	lsls r1, r1, #0x10
	adds r1, r1, r2
	lsrs r6, r1, #0x10
	movs r4, #0
_0806D516:
	ldr r0, _0806D53C @ =0x03004524
	ldr r0, [r0]
	lsls r1, r4, #2
	adds r0, #0xc8
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _0806D54C
	adds r3, r0, #0
	lsls r0, r7, #0x10
	asrs r1, r0, #0x10
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	cmp r4, #0
	bne _0806D540
	subs r0, r0, r5
	b _0806D542
	.align 2, 0
_0806D538: .4byte 0xFFFC0000
_0806D53C: .4byte 0x03004524
_0806D540:
	adds r0, r0, r5
_0806D542:
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	adds r0, r3, #0
	bl sub_08009A70
_0806D54C:
	adds r4, #1
	cmp r4, #1
	ble _0806D516
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0806D558
sub_0806D558: @ 0x0806D558
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r2, r1, #0x18
	movs r1, #1
	ands r0, r1
	ldr r1, _0806D580 @ =0x03004524
	ldr r1, [r1]
	lsls r0, r0, #2
	adds r1, #0xc8
	adds r1, r1, r0
	ldr r0, [r1]
	cmp r0, #0
	beq _0806D57C
	adds r1, r2, #0
	bl sub_08009A34
_0806D57C:
	pop {r0}
	bx r0
	.align 2, 0
_0806D580: .4byte 0x03004524

	thumb_func_start sub_0806D584
sub_0806D584: @ 0x0806D584
	push {r4, lr}
	sub sp, #4
	bl sub_08007BD4
	adds r4, r0, #0
	ldrb r0, [r4, #8]
	cmp r0, #0
	beq _0806D59A
	subs r0, #1
	strb r0, [r4, #8]
	b _0806D5D4
_0806D59A:
	ldr r1, [r4]
	cmp r1, #0
	bne _0806D5C2
	movs r0, #4
	ldrsh r3, [r4, r0]
	movs r1, #6
	ldrsh r0, [r4, r1]
	str r0, [sp]
	movs r0, #2
	movs r1, #0x48
	movs r2, #0
	bl sub_08060D9C
	str r0, [r4]
	movs r1, #2
	movs r2, #3
	movs r3, #0
	bl sub_08060E6C
	b _0806D5D4
_0806D5C2:
	ldrb r0, [r1, #1]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _0806D5D4
	adds r0, r1, #0
	bl sub_08009A00
	bl sub_08007A64
_0806D5D4:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0806D5DC
sub_0806D5DC: @ 0x0806D5DC
	push {r4, lr}
	sub sp, #4
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r4, _0806D620 @ =0x03004524
	ldr r0, [r4]
	adds r0, #0xd4
	ldr r0, [r0]
	cmp r0, #0
	bne _0806D618
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	str r0, [sp]
	movs r0, #2
	movs r1, #0x40
	movs r2, #0
	bl sub_08060D9C
	ldr r1, [r4]
	adds r1, #0xd4
	str r0, [r1]
	movs r1, #2
	movs r2, #2
	movs r3, #0xff
	bl sub_08060E6C
_0806D618:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806D620: .4byte 0x03004524

	thumb_func_start sub_0806D624
sub_0806D624: @ 0x0806D624
	push {r4, lr}
	ldr r4, _0806D644 @ =0x03004524
	ldr r0, [r4]
	adds r0, #0xd4
	ldr r0, [r0]
	cmp r0, #0
	beq _0806D63E
	bl sub_08009A00
	ldr r0, [r4]
	adds r0, #0xd4
	movs r1, #0
	str r1, [r0]
_0806D63E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806D644: .4byte 0x03004524

	thumb_func_start sub_0806D648
sub_0806D648: @ 0x0806D648
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _0806D6A8 @ =0x03004524
	ldr r0, [r0]
	adds r0, #0xd4
	ldr r6, [r0]
	ldrh r0, [r6, #8]
	lsls r0, r0, #0x10
	ldrh r5, [r6, #6]
	orrs r5, r0
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	movs r1, #0
	mov sb, r1
	cmp r0, #0x77
	bgt _0806D670
	movs r0, #1
	mov sb, r0
_0806D670:
	movs r1, #0
	mov r8, r1
	movs r7, #0
_0806D676:
	ldr r1, _0806D6AC @ =0x0807F240
	mov r0, r8
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r2, [r0, r1]
	lsls r2, r2, #0x14
	lsls r0, r5, #0x10
	asrs r4, r0, #0x10
	asrs r0, r5, #0x10
	asrs r2, r2, #0x18
	adds r2, r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_08009A70
	mov r0, sb
	cmp r0, #0
	beq _0806D6B0
	cmp r4, #0xcf
	bgt _0806D71C
	b _0806D6B4
	.align 2, 0
_0806D6A8: .4byte 0x03004524
_0806D6AC: .4byte 0x0807F240
_0806D6B0:
	cmp r4, #0x20
	ble _0806D71C
_0806D6B4:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #0x11
	bls _0806D6EA
	movs r0, #0xbd
	lsls r0, r0, #1
	bl m4aSongNumStart
	ldr r0, _0806D6F4 @ =sub_0806D584
	movs r1, #0x90
	movs r2, #0
	bl sub_08007968
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl sub_08007BBC
	movs r1, #0
	str r1, [r0]
	ldrh r1, [r6, #6]
	strh r1, [r0, #4]
	ldrh r1, [r6, #8]
	strh r1, [r0, #6]
	movs r1, #8
	strb r1, [r0, #8]
	movs r7, #0
_0806D6EA:
	mov r1, sb
	cmp r1, #0
	beq _0806D6F8
	adds r1, r5, #1
	b _0806D6FA
	.align 2, 0
_0806D6F4: .4byte sub_0806D584
_0806D6F8:
	subs r1, r5, #1
_0806D6FA:
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, _0806D718 @ =0xFFFF0000
	ands r5, r0
	orrs r5, r1
	mov r0, r8
	adds r0, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	movs r0, #1
	bl sub_08002B98
	b _0806D676
	.align 2, 0
_0806D718: .4byte 0xFFFF0000
_0806D71C:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0806D728
sub_0806D728: @ 0x0806D728
	push {lr}
	sub sp, #4
	movs r0, #0x10
	str r0, [sp]
	movs r0, #0x1e
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08005044
	ldr r1, _0806D74C @ =0x030024E0
	movs r0, #0
	strh r0, [r1, #0xe]
	movs r0, #0x20
	strh r0, [r1, #0x16]
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_0806D74C: .4byte 0x030024E0

	thumb_func_start sub_0806D750
sub_0806D750: @ 0x0806D750
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	bl sub_0806D728
	movs r0, #1
	bl sub_08002B98
	ldr r0, _0806D7B0 @ =0x003E0007
	adds r4, r4, r0
	adds r0, r4, #0
	bl sub_08006828
	adds r6, r0, #0
	movs r1, #0
	bl sub_080045FC
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r1, _0806D7B4 @ =0x030024E0
	lsls r0, r4, #2
	subs r0, #0x78
	strh r0, [r1, #0xe]
	ldr r0, _0806D7B8 @ =0x0000FFB0
	strh r0, [r1, #0x16]
	ldr r0, _0806D7BC @ =0x06008020
	movs r5, #1
	str r5, [sp]
	adds r1, r6, #0
	movs r2, #1
	movs r3, #0
	bl sub_08004D94
	str r4, [sp]
	str r5, [sp, #4]
	movs r0, #0x1e
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl sub_08004FD4
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0806D7B0: .4byte 0x003E0007
_0806D7B4: .4byte 0x030024E0
_0806D7B8: .4byte 0x0000FFB0
_0806D7BC: .4byte 0x06008020

	thumb_func_start sub_0806D7C0
sub_0806D7C0: @ 0x0806D7C0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	ldr r1, _0806D81C @ =0x080906A8
	mov r0, sp
	movs r2, #3
	bl memcpy
	add r5, sp, #4
	ldr r1, _0806D820 @ =0x080906AB
	adds r0, r5, #0
	movs r2, #3
	bl memcpy
	ldr r4, _0806D824 @ =0x03004510
	ldrb r1, [r4, #1]
	movs r0, #0xe
	ands r0, r1
	lsrs r6, r0, #1
	str r6, [sp, #0xc]
	movs r0, #0
	mov sl, r0
	ldr r1, _0806D828 @ =0x03004400
	ldrb r0, [r1, #0xe]
	ldrb r1, [r1, #0xf]
	bl sub_0806CF64
	ldr r0, [sp, #0xc]
	bl sub_0806D0C8
	movs r0, #0
	bl sub_080613CC
	movs r0, #0
	bl sub_080059E4
	ldrb r0, [r4, #4]
	cmp r0, #0
	bne _0806D830
	ldr r0, _0806D82C @ =0x003E0006
	bl sub_080062D0
	b _0806D836
	.align 2, 0
_0806D81C: .4byte 0x080906A8
_0806D820: .4byte 0x080906AB
_0806D824: .4byte 0x03004510
_0806D828: .4byte 0x03004400
_0806D82C: .4byte 0x003E0006
_0806D830:
	ldr r0, _0806D870 @ =0x003E0032
	bl sub_080062D0
_0806D836:
	movs r0, #1
	bl sub_08002B98
	bl sub_0806D3DC
	movs r0, #0x78
	movs r1, #0x58
	bl sub_0806D440
	ldr r0, _0806D874 @ =0x03004510
	ldrb r0, [r0, #4]
	lsls r4, r6, #0x18
	cmp r0, #0
	bne _0806D884
	bl sub_0806D478
	movs r0, #0x78
	movs r1, #0x58
	movs r2, #0xc
	bl sub_0806D500
	asrs r0, r4, #0x18
	cmp r0, #0
	bne _0806D878
	movs r0, #1
	movs r1, #0
	bl sub_0806D558
	b _0806D884
	.align 2, 0
_0806D870: .4byte 0x003E0032
_0806D874: .4byte 0x03004510
_0806D878:
	cmp r0, #2
	bne _0806D884
	movs r0, #0
	movs r1, #0
	bl sub_0806D558
_0806D884:
	lsrs r0, r4, #0x18
	bl sub_0806D750
	ldr r4, _0806D8C8 @ =0x03004510
	ldrh r0, [r4, #6]
	adds r1, r0, #1
	strh r1, [r4, #6]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_08003A30
	movs r0, #1
	bl sub_08002B98
	add r7, sp, #8
	mov r8, r4
	mov sb, r7
_0806D8A6:
	mov r1, r8
	ldrb r0, [r1, #4]
	cmp r0, #0
	bne _0806D958
	ldr r2, _0806D8CC @ =0x030024B0
	ldrh r1, [r2]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0806D8D0
	movs r0, #0xce
	bl m4aSongNumStart
	movs r2, #0xff
	mov sl, r2
	b _0806D8E2
	.align 2, 0
_0806D8C8: .4byte 0x03004510
_0806D8CC: .4byte 0x030024B0
_0806D8D0:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0806D90C
	movs r0, #0xcd
	bl m4aSongNumStart
	movs r0, #1
	mov sl, r0
_0806D8E2:
	mov r1, sb
	strb r6, [r1]
	mov r2, sl
	strb r2, [r1, #1]
	ldr r5, _0806D908 @ =0x03004510
	movs r4, #9
_0806D8EE:
	ldrh r0, [r5, #6]
	adds r1, r7, #0
	movs r2, #2
	bl sub_080038F4
	movs r0, #1
	bl sub_08002B98
	subs r4, #1
	cmp r4, #0
	bge _0806D8EE
	b _0806D9C8
	.align 2, 0
_0806D908: .4byte 0x03004510
_0806D90C:
	ldrh r1, [r2, #4]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0806D92A
	lsls r0, r6, #0x18
	movs r1, #0x80
	lsls r1, r1, #0x11
	adds r0, r0, r1
	lsrs r6, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	ble _0806D942
	movs r6, #2
	b _0806D942
_0806D92A:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0806D942
	lsls r0, r6, #0x18
	movs r2, #0xff
	lsls r2, r2, #0x18
	adds r0, r0, r2
	lsrs r6, r0, #0x18
	cmp r0, #0
	bge _0806D942
	movs r6, #0
_0806D942:
	mov r0, sb
	strb r6, [r0]
	mov r1, sl
	strb r1, [r0, #1]
	mov r2, r8
	ldrh r0, [r2, #6]
	mov r1, sb
	movs r2, #2
	bl sub_080038F4
	b _0806D97C
_0806D958:
	mov r0, r8
	ldrh r1, [r0, #6]
	movs r0, #0
	adds r2, r7, #0
	movs r3, #2
	bl sub_08003938
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r1, r8
	ldrh r1, [r1, #6]
	cmp r0, r1
	bne _0806D97C
	ldrb r6, [r7]
	ldrb r2, [r7, #1]
	mov sl, r2
	cmp r2, #0
	bne _0806D9C8
_0806D97C:
	ldr r1, [sp, #0xc]
	lsls r0, r1, #0x18
	lsls r4, r6, #0x18
	asrs r5, r4, #0x18
	cmp r0, r4
	beq _0806D9C0
	movs r0, #0xcb
	bl m4aSongNumStart
	lsrs r4, r4, #0x18
	adds r0, r4, #0
	bl sub_0806D0C8
	adds r0, r4, #0
	bl sub_0806D750
	mov r2, r8
	ldrb r0, [r2, #4]
	cmp r0, #0
	bne _0806D9BE
	mov r1, sp
	adds r0, r1, r5
	ldrb r1, [r0]
	movs r0, #0
	bl sub_0806D558
	mov r0, sp
	adds r0, r0, r5
	adds r0, #4
	ldrb r1, [r0]
	movs r0, #1
	bl sub_0806D558
_0806D9BE:
	str r4, [sp, #0xc]
_0806D9C0:
	movs r0, #1
	bl sub_08002B98
	b _0806D8A6
_0806D9C8:
	ldr r4, _0806DA18 @ =0x03004510
	ldrh r0, [r4, #6]
	adds r0, #1
	strh r0, [r4, #6]
	bl sub_0806D41C
	bl sub_0806D4CC
	bl sub_0806D728
	bl sub_08004504
	ldrh r0, [r4, #6]
	adds r1, r0, #1
	strh r1, [r4, #6]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_08003A30
	lsls r0, r6, #0x18
	asrs r0, r0, #0x17
	adds r0, #1
	strb r0, [r4, #1]
	bl sub_08005A2C
	bl sub_08061490
	bl sub_0806D06C
	mov r2, sl
	lsls r0, r2, #0x18
	asrs r0, r0, #0x18
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0806DA18: .4byte 0x03004510

	thumb_func_start sub_0806DA1C
sub_0806DA1C: @ 0x0806DA1C
	push {r4, lr}
	bl sub_08001F2C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0806DA3C
	movs r3, #0
	ldr r0, _0806DA38 @ =0x03004510
	ldrb r1, [r0, #2]
	adds r2, r1, #1
	strb r2, [r0, #2]
	b _0806DA4A
	.align 2, 0
_0806DA38: .4byte 0x03004510
_0806DA3C:
	cmp r0, #2
	bne _0806DA54
	movs r3, #1
	ldr r0, _0806DA50 @ =0x03004510
	ldrb r1, [r0, #3]
	adds r2, r1, #1
	strb r2, [r0, #3]
_0806DA4A:
	lsls r1, r1, #0x18
	lsrs r2, r1, #0x18
	b _0806DA58
	.align 2, 0
_0806DA50: .4byte 0x03004510
_0806DA54:
	movs r3, #0xff
	movs r2, #0
_0806DA58:
	lsls r3, r3, #0x18
	asrs r1, r3, #0x18
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0806DA6C
	lsrs r0, r3, #0x18
	adds r1, r2, #0
	bl sub_0806D23C
_0806DA6C:
	movs r0, #1
	bl sub_080613CC
	movs r0, #1
	bl sub_08005B8C
	movs r0, #0xcc
	bl m4aSongNumStart
	bl sub_08061490
	ldr r4, _0806DAAC @ =0x03004510
	ldrh r0, [r4, #6]
	adds r1, r0, #1
	strh r1, [r4, #6]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_08003A30
	ldrb r1, [r4, #2]
	ldrb r2, [r4, #1]
	cmp r1, r2
	bhs _0806DAA0
	ldrb r0, [r4, #3]
	cmp r0, r2
	blo _0806DACC
_0806DAA0:
	ldrb r0, [r4, #3]
	cmp r1, r0
	bne _0806DAB0
	movs r0, #0xff
	b _0806DAC6
	.align 2, 0
_0806DAAC: .4byte 0x03004510
_0806DAB0:
	cmp r1, r0
	bls _0806DABE
	ldrb r0, [r4, #4]
	cmp r0, #0
	beq _0806DAC4
	movs r0, #0
	b _0806DAC6
_0806DABE:
	ldrb r0, [r4, #4]
	cmp r0, #0
	beq _0806DAC6
_0806DAC4:
	movs r0, #1
_0806DAC6:
	strb r0, [r4]
	movs r0, #1
	b _0806DACE
_0806DACC:
	movs r0, #0
_0806DACE:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_0806DAD4
sub_0806DAD4: @ 0x0806DAD4
	push {r4, r5, r6, r7, lr}
	ldr r1, _0806DAF0 @ =0x03004510
	ldrb r0, [r1, #4]
	cmp r0, #0
	bne _0806DB38
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #1
	bne _0806DAF8
	ldr r0, _0806DAF4 @ =0xFFFF0000
	ands r5, r0
	movs r0, #0xd0
	b _0806DAFE
	.align 2, 0
_0806DAF0: .4byte 0x03004510
_0806DAF4: .4byte 0xFFFF0000
_0806DAF8:
	ldr r0, _0806DB30 @ =0xFFFF0000
	ands r5, r0
	movs r0, #0x20
_0806DAFE:
	orrs r5, r0
	bl sub_0800B818
	movs r1, #1
	adds r6, r0, #0
	ands r6, r1
	movs r0, #0
	bl sub_0800759C
	ldr r4, _0806DB34 @ =0x03004524
	ldr r1, [r4]
	movs r2, #6
	bl CpuSet
	adds r0, r6, #0
	bl sub_080076F8
	ldr r1, [r4]
	adds r1, #0xc
	movs r2, #0x10
	bl CpuSet
	ldr r0, [r4]
	adds r0, #0x2c
	b _0806DB84
	.align 2, 0
_0806DB30: .4byte 0xFFFF0000
_0806DB34: .4byte 0x03004524
_0806DB38:
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #1
	bne _0806DB4C
	ldr r0, _0806DB48 @ =0xFFFF0000
	ands r5, r0
	movs r0, #0x20
	b _0806DB52
	.align 2, 0
_0806DB48: .4byte 0xFFFF0000
_0806DB4C:
	ldr r0, _0806DC14 @ =0xFFFF0000
	ands r5, r0
	movs r0, #0xd0
_0806DB52:
	orrs r5, r0
	bl sub_0800B818
	movs r1, #1
	adds r6, r0, #0
	ands r6, r1
	movs r0, #0
	bl sub_0800759C
	ldr r4, _0806DC18 @ =0x03004524
	ldr r1, [r4]
	adds r1, #0x30
	movs r2, #6
	bl CpuSet
	adds r0, r6, #0
	bl sub_080076F8
	ldr r1, [r4]
	adds r1, #0x3c
	movs r2, #0x10
	bl CpuSet
	ldr r0, [r4]
	adds r0, #0x5c
_0806DB84:
	strb r6, [r0]
	ldr r0, _0806DC1C @ =0x0000FFFF
	ands r5, r0
	movs r0, #0x90
	lsls r0, r0, #0xf
	orrs r5, r0
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	lsrs r1, r5, #0x10
	bl sub_0806D5DC
	bl sub_0806D648
	bl sub_0806D624
	movs r0, #0x30
	bl sub_08007CE8
	adds r6, r0, #0
	movs r0, #0x30
	bl sub_08007CE8
	adds r5, r0, #0
	ldr r7, _0806DC20 @ =0x03004510
	ldrb r0, [r7, #4]
	cmp r0, #0
	bne _0806DC24
	ldr r4, _0806DC18 @ =0x03004524
	ldr r0, [r4]
	adds r1, r6, #0
	movs r2, #6
	bl CpuSet
	ldr r0, [r4]
	adds r0, #0xc
	adds r1, r6, #0
	adds r1, #0x10
	movs r2, #0x10
	bl CpuSet
	ldr r0, [r4]
	adds r0, #0x2c
	ldrb r0, [r0]
	strb r0, [r6, #0xf]
	ldrh r0, [r7, #6]
	adds r1, r0, #1
	strh r1, [r7, #6]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r6, #0
	adds r2, r5, #0
	movs r3, #0x30
	bl sub_08003998
	ldr r1, [r4]
	adds r1, #0x30
	adds r0, r5, #0
	movs r2, #6
	bl CpuSet
	adds r0, r5, #0
	adds r0, #0x10
	ldr r1, [r4]
	adds r1, #0x3c
	movs r2, #0x10
	bl CpuSet
	ldr r0, [r4]
	ldrb r1, [r5, #0xf]
	adds r0, #0x5c
	b _0806DC7A
	.align 2, 0
_0806DC14: .4byte 0xFFFF0000
_0806DC18: .4byte 0x03004524
_0806DC1C: .4byte 0x0000FFFF
_0806DC20: .4byte 0x03004510
_0806DC24:
	ldr r4, _0806DC90 @ =0x03004524
	ldr r0, [r4]
	adds r0, #0x30
	adds r1, r6, #0
	movs r2, #6
	bl CpuSet
	ldr r0, [r4]
	adds r0, #0x3c
	adds r1, r6, #0
	adds r1, #0x10
	movs r2, #0x10
	bl CpuSet
	ldr r0, [r4]
	adds r0, #0x5c
	ldrb r0, [r0]
	strb r0, [r6, #0xf]
	ldrh r0, [r7, #6]
	adds r1, r0, #1
	strh r1, [r7, #6]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r6, #0
	adds r2, r5, #0
	movs r3, #0x30
	bl sub_08003998
	ldr r1, [r4]
	adds r0, r5, #0
	movs r2, #6
	bl CpuSet
	adds r0, r5, #0
	adds r0, #0x10
	ldr r1, [r4]
	adds r1, #0xc
	movs r2, #0x10
	bl CpuSet
	ldr r0, [r4]
	ldrb r1, [r5, #0xf]
	adds r0, #0x2c
_0806DC7A:
	strb r1, [r0]
	adds r0, r6, #0
	bl sub_08007CF8
	adds r0, r5, #0
	bl sub_08007CF8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806DC90: .4byte 0x03004524

	thumb_func_start sub_0806DC94
sub_0806DC94: @ 0x0806DC94
	push {r4, r5, lr}
	ldr r5, _0806DCC8 @ =0x03004524
	ldr r0, [r5]
	ldr r0, [r0, #0x60]
	ldr r4, _0806DCCC @ =0x03004400
	ldrb r1, [r4, #0xe]
	movs r2, #0
	movs r3, #0xff
	bl sub_0806CCA4
	ldr r0, [r5]
	ldr r0, [r0, #0x68]
	ldrb r1, [r4, #0xf]
	movs r2, #0
	movs r3, #0xff
	bl sub_0806CCA4
	bl sub_0806D06C
	ldr r1, _0806DCD0 @ =0x03004510
	movs r0, #0
	strb r0, [r1, #2]
	strb r0, [r1, #3]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806DCC8: .4byte 0x03004524
_0806DCCC: .4byte 0x03004400
_0806DCD0: .4byte 0x03004510

	thumb_func_start sub_0806DCD4
sub_0806DCD4: @ 0x0806DCD4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x10
	ldr r0, _0806DD30 @ =0x03004400
	movs r1, #1
	strb r1, [r0, #5]
	ldrb r0, [r0, #0xa]
	cmp r0, #0x11
	bne _0806DD02
	bl sub_08001F2C
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _0806DD02
	movs r0, #0x2a
	bl sub_08008790
	bl sub_08002B0C
_0806DD02:
	bl sub_08060708
	ldr r4, _0806DD34 @ =0x03004524
	movs r0, #0xd8
	bl sub_08007CE8
	adds r1, r0, #0
	str r1, [r4]
	add r0, sp, #8
	movs r5, #0
	strh r5, [r0]
	ldr r2, _0806DD38 @ =0x0100006C
	bl CpuSet
	ldr r0, _0806DD30 @ =0x03004400
	ldrb r0, [r0, #0xa]
	cmp r0, #0x11
	bne _0806DD3C
	add r1, sp, #0xc
	movs r0, #4
	strb r0, [r1]
	mov r8, r1
	b _0806DD92
	.align 2, 0
_0806DD30: .4byte 0x03004400
_0806DD34: .4byte 0x03004524
_0806DD38: .4byte 0x0100006C
_0806DD3C:
	mov r0, sp
	adds r0, #0xa
	strh r5, [r0]
	ldr r4, _0806DE20 @ =0x03004510
	ldr r2, _0806DE24 @ =0x0100000A
	adds r1, r4, #0
	bl CpuSet
	ldr r0, _0806DE28 @ =0x00003301
	strh r0, [r4, #6]
	add r0, sp, #0xc
	strb r5, [r0]
	movs r5, #0
	mov r8, r0
	adds r4, #8
	ldr r2, _0806DE2C @ =0x0809058C
_0806DD5C:
	adds r0, r5, r4
	adds r1, r5, r2
	ldrb r1, [r1]
	strb r1, [r0]
	adds r5, #1
	cmp r5, #7
	ble _0806DD5C
	movs r7, #7
	ldr r6, _0806DE30 @ =0x03004518
	movs r5, #0x1f
_0806DD70:
	bl sub_0800B818
	adds r4, r7, #0
	ands r4, r0
	adds r4, r4, r6
	bl sub_0800B818
	adds r1, r7, #0
	ands r1, r0
	adds r1, r1, r6
	ldrb r2, [r4]
	ldrb r0, [r1]
	strb r0, [r4]
	strb r2, [r1]
	subs r5, #1
	cmp r5, #0
	bge _0806DD70
_0806DD92:
	ldr r4, _0806DE34 @ =0x03004400
	ldrb r0, [r4, #8]
	strb r0, [r4, #0xa]
	movs r0, #0xa
	bl sub_080607FC
	bl sub_08060FF4
	bl sub_08061D7C
	movs r0, #2
	bl sub_08061DA0
	mov r1, r8
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #4
	bne _0806DDE8
	ldrb r1, [r4, #0xe]
	movs r0, #0
	bl sub_0806CCFC
	ldrb r1, [r4, #0xf]
	movs r0, #1
	bl sub_0806CCFC
	movs r0, #0
	bl sub_0806CF14
	movs r0, #1
	bl sub_0806CF14
	ldrb r0, [r4, #0xe]
	ldrb r1, [r4, #0xf]
	bl sub_0806CF64
	ldr r0, _0806DE20 @ =0x03004510
	ldrb r1, [r0, #1]
	movs r0, #0xe
	ands r0, r1
	lsrs r0, r0, #1
	bl sub_0806D0C8
_0806DDE8:
	movs r0, #8
	bl sub_080077C4
	movs r0, #0x20
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl sub_08008AF4
	ldr r0, _0806DE38 @ =0x030024E0
	adds r0, #0x4f
	movs r1, #1
	strb r1, [r0]
	bl sub_08008D34
	mov r2, r8
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0
	bne _0806DED8
	movs r0, #1
	bl sub_08005A88
	movs r0, #0
	bl sub_080059E4
	b _0806DE40
	.align 2, 0
_0806DE20: .4byte 0x03004510
_0806DE24: .4byte 0x0100000A
_0806DE28: .4byte 0x00003301
_0806DE2C: .4byte 0x0809058C
_0806DE30: .4byte 0x03004518
_0806DE34: .4byte 0x03004400
_0806DE38: .4byte 0x030024E0
_0806DE3C:
	movs r5, #0xff
	b _0806DE74
_0806DE40:
	ldr r0, _0806DEBC @ =0x0047004F
	bl sub_080062D0
	ldr r0, _0806DEC0 @ =0x00470050
	bl sub_0800648C
	bl sub_080064F8
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0806DE3C
	ldr r0, _0806DEC4 @ =0x00470051
	bl sub_080062D0
	ldr r0, _0806DEC8 @ =0x00470052
	bl sub_080062D0
	ldr r0, _0806DECC @ =0x00470053
	bl sub_0800648C
	bl sub_080064F8
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0806DE40
	movs r5, #0
_0806DE74:
	bl sub_08005A2C
	bl sub_08005AB0
	lsls r0, r5, #0x18
	asrs r0, r0, #0x18
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _0806DF44
	bl sub_08003468
	bl sub_08003510
	ldr r0, _0806DED0 @ =0x004F0002
	bl sub_080033B0
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x33
	bl sub_0800353C
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	bl sub_080038E8
	ldr r1, _0806DED4 @ =0x03004510
	strb r0, [r1, #4]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r4, #0
	bl sub_08003458
	b _0806DEEC
	.align 2, 0
_0806DEBC: .4byte 0x0047004F
_0806DEC0: .4byte 0x00470050
_0806DEC4: .4byte 0x00470051
_0806DEC8: .4byte 0x00470052
_0806DECC: .4byte 0x00470053
_0806DED0: .4byte 0x004F0002
_0806DED4: .4byte 0x03004510
_0806DED8:
	bl sub_08003468
	bl sub_08003510
	ldr r0, _0806DF2C @ =0x03004510
	ldrb r1, [r0, #4]
	movs r0, #0x33
	bl sub_08003690
	movs r5, #1
_0806DEEC:
	cmp r5, #0
	beq _0806DF34
	mov r1, sp
	movs r0, #0x33
	strb r0, [r1]
	mov r2, r8
	movs r0, #0
	ldrsb r0, [r2, r0]
	strb r0, [r1, #1]
	ldr r0, _0806DF30 @ =0x0000999A
	add r4, sp, #4
	adds r2, r4, #0
	movs r3, #2
	bl sub_08003998
	movs r0, #0
	ldrsb r0, [r4, r0]
	adds r7, r4, #0
	cmp r0, #0x33
	bne _0806DF24
	ldrb r0, [r7, #1]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	mov r2, r8
	movs r1, #0
	ldrsb r1, [r2, r1]
	cmp r0, r1
	beq _0806DF50
_0806DF24:
	bl sub_0800386C
	b _0806DF50
	.align 2, 0
_0806DF2C: .4byte 0x03004510
_0806DF30: .4byte 0x0000999A
_0806DF34:
	movs r0, #0
	bl sub_080059E4
	ldr r0, _0806DF4C @ =0x003E0030
	bl sub_080062D0
	bl sub_08005A2C
_0806DF44:
	movs r0, #0x2a
	bl sub_08008790
	b _0806E3D8
	.align 2, 0
_0806DF4C: .4byte 0x003E0030
_0806DF50:
	mov r1, r8
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #5
	bls _0806DF5C
	b _0806E3C2
_0806DF5C:
	lsls r0, r0, #2
	ldr r1, _0806DF68 @ =_0806DF6C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0806DF68: .4byte _0806DF6C
_0806DF6C: @ jump table
	.4byte _0806DF84 @ case 0
	.4byte _0806E060 @ case 1
	.4byte _0806E134 @ case 2
	.4byte _0806E158 @ case 3
	.4byte _0806E1EC @ case 4
	.4byte _0806E206 @ case 5
_0806DF84:
	movs r0, #0
	bl sub_0806CDF8
	ldr r0, _0806DFAC @ =0x03004510
	ldrb r0, [r0, #4]
	cmp r0, #0
	bne _0806DFB8
	bl sub_080628A0
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _0806DFB0
	movs r0, #0xff
	mov r2, r8
	strb r0, [r2]
	b _0806DFC4
	.align 2, 0
_0806DFAC: .4byte 0x03004510
_0806DFB0:
	movs r0, #1
	mov r1, r8
	strb r0, [r1]
	b _0806DFC4
_0806DFB8:
	movs r0, #0
	bl sub_080059E4
	ldr r0, _0806E008 @ =0x0040002A
	bl sub_080062D0
_0806DFC4:
	ldr r4, _0806E00C @ =0x03004510
	ldrh r0, [r4, #6]
	adds r1, r0, #1
	strh r1, [r4, #6]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_08003A30
	movs r0, #1
	bl sub_08002B98
	ldrb r0, [r4, #4]
	cmp r0, #0
	bne _0806E014
	mov r1, sp
	ldr r0, _0806E010 @ =0x03004400
	ldrb r0, [r0, #0xe]
	strb r0, [r1]
	mov r2, r8
	movs r0, #0
	ldrsb r0, [r2, r0]
	strb r0, [r1, #1]
	ldrh r0, [r4, #6]
	adds r1, r0, #1
	strh r1, [r4, #6]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r1, sp
	adds r2, r7, #0
	movs r3, #2
	bl sub_08003998
	b _0806E038
	.align 2, 0
_0806E008: .4byte 0x0040002A
_0806E00C: .4byte 0x03004510
_0806E010: .4byte 0x03004400
_0806E014:
	bl sub_08005A2C
	ldrh r0, [r4, #6]
	adds r1, r0, #1
	strh r1, [r4, #6]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r1, sp
	adds r2, r7, #0
	movs r3, #2
	bl sub_08003998
	ldr r1, _0806E054 @ =0x03004400
	ldrb r0, [r7]
	strb r0, [r1, #0xe]
	ldrb r0, [r7, #1]
	mov r1, r8
	strb r0, [r1]
_0806E038:
	mov r2, r8
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #1
	bne _0806E058
	ldr r0, _0806E054 @ =0x03004400
	ldrb r1, [r0, #0xe]
	movs r0, #0
	bl sub_0806CCFC
	movs r0, #0
	bl sub_0806CE74
	b _0806E3C2
	.align 2, 0
_0806E054: .4byte 0x03004400
_0806E058:
	movs r0, #0x2a
	bl sub_08008790
	b _0806E3C2
_0806E060:
	movs r0, #1
	bl sub_0806CDF8
	ldr r0, _0806E07C @ =0x03004510
	ldrb r0, [r0, #4]
	cmp r0, #0
	bne _0806E084
	movs r0, #0
	bl sub_080059E4
	ldr r0, _0806E080 @ =0x0040002A
	bl sub_080062D0
	b _0806E0A2
	.align 2, 0
_0806E07C: .4byte 0x03004510
_0806E080: .4byte 0x0040002A
_0806E084:
	bl sub_080628D8
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _0806E09C
	movs r0, #0
	mov r1, r8
	strb r0, [r1]
	b _0806E0A2
_0806E09C:
	movs r0, #2
	mov r2, r8
	strb r0, [r2]
_0806E0A2:
	ldr r4, _0806E0E4 @ =0x03004510
	ldrh r0, [r4, #6]
	adds r1, r0, #1
	strh r1, [r4, #6]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_08003A30
	movs r0, #1
	bl sub_08002B98
	ldrb r0, [r4, #4]
	cmp r0, #0
	bne _0806E0EC
	bl sub_08005A2C
	ldrh r0, [r4, #6]
	adds r1, r0, #1
	strh r1, [r4, #6]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r1, sp
	adds r2, r7, #0
	movs r3, #2
	bl sub_08003998
	ldr r1, _0806E0E8 @ =0x03004400
	ldrb r0, [r7]
	strb r0, [r1, #0xf]
	ldrb r0, [r7, #1]
	mov r1, r8
	strb r0, [r1]
	b _0806E110
	.align 2, 0
_0806E0E4: .4byte 0x03004510
_0806E0E8: .4byte 0x03004400
_0806E0EC:
	mov r1, sp
	ldr r0, _0806E130 @ =0x03004400
	ldrb r0, [r0, #0xf]
	strb r0, [r1]
	mov r2, r8
	movs r0, #0
	ldrsb r0, [r2, r0]
	strb r0, [r1, #1]
	ldrh r0, [r4, #6]
	adds r1, r0, #1
	strh r1, [r4, #6]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r1, sp
	adds r2, r7, #0
	movs r3, #2
	bl sub_08003998
_0806E110:
	mov r1, r8
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #2
	beq _0806E11C
	b _0806E3C2
_0806E11C:
	ldr r0, _0806E130 @ =0x03004400
	ldrb r1, [r0, #0xf]
	movs r0, #1
	bl sub_0806CCFC
	movs r0, #1
	bl sub_0806CE74
	b _0806E3C2
	.align 2, 0
_0806E130: .4byte 0x03004400
_0806E134:
	bl sub_0806D7C0
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _0806E14C
	movs r0, #1
	mov r2, r8
	strb r0, [r2]
	b _0806E152
_0806E14C:
	movs r0, #3
	mov r1, r8
	strb r0, [r1]
_0806E152:
	bl sub_0806288C
	b _0806E3C2
_0806E158:
	ldr r5, _0806E1A0 @ =0x03004510
	ldrb r0, [r5, #4]
	cmp r0, #0
	bne _0806E1A8
	ldr r4, _0806E1A4 @ =0x03004400
	ldrb r1, [r5, #0x10]
	adds r0, r1, #1
	strb r0, [r5, #0x10]
	movs r0, #7
	ands r0, r1
	adds r1, r5, #0
	adds r1, #8
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r4, #0xd]
	bl sub_0800B818
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	mov r1, sp
	ldrb r0, [r4, #0xd]
	strb r0, [r1]
	mov r0, sp
	strb r6, [r0, #1]
	ldrh r0, [r5, #6]
	adds r1, r0, #1
	strh r1, [r5, #6]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r1, sp
	adds r2, r7, #0
	movs r3, #2
	bl sub_08003998
	b _0806E1C4
	.align 2, 0
_0806E1A0: .4byte 0x03004510
_0806E1A4: .4byte 0x03004400
_0806E1A8:
	ldrh r0, [r5, #6]
	adds r1, r0, #1
	strh r1, [r5, #6]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r1, sp
	adds r2, r7, #0
	movs r3, #2
	bl sub_08003998
	ldr r1, _0806E1E8 @ =0x03004400
	ldrb r0, [r7]
	strb r0, [r1, #0xd]
	ldrb r6, [r7, #1]
_0806E1C4:
	ldr r2, _0806E1E8 @ =0x03004400
	ldrb r0, [r2, #0xd]
	ldrb r1, [r2, #0xe]
	ldrb r2, [r2, #0xf]
	movs r3, #3
	bl sub_08001D80
	adds r0, r6, #0
	bl sub_08001B54
	movs r0, #0x18
	bl sub_08001930
	movs r0, #0x11
	bl sub_08008790
	movs r0, #0xff
	b _0806E200
	.align 2, 0
_0806E1E8: .4byte 0x03004400
_0806E1EC:
	bl sub_0806DA1C
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0806E1FE
	movs r0, #3
	mov r1, r8
	strb r0, [r1]
	b _0806E3C2
_0806E1FE:
	movs r0, #5
_0806E200:
	mov r2, r8
	strb r0, [r2]
	b _0806E3C2
_0806E206:
	ldr r4, _0806E228 @ =0x03004510
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #0
	beq _0806E230
	cmp r0, #0
	ble _0806E218
	cmp r0, #1
	beq _0806E264
_0806E218:
	movs r0, #0
	bl sub_080059E4
	ldr r0, _0806E22C @ =0x003E002D
	bl sub_080062D0
	b _0806E308
	.align 2, 0
_0806E228: .4byte 0x03004510
_0806E22C: .4byte 0x003E002D
_0806E230:
	bl sub_0806DAD4
	movs r0, #0
	bl sub_080059E4
	ldr r0, _0806E254 @ =0x003E0016
	bl sub_080062D0
	ldr r0, _0806E258 @ =0x003E0017
	bl sub_080062D0
	ldr r0, _0806E25C @ =0x003E0018
	bl sub_080062D0
	ldr r0, _0806E260 @ =0x003E0019
	bl sub_080062D0
	b _0806E308
	.align 2, 0
_0806E254: .4byte 0x003E0016
_0806E258: .4byte 0x003E0017
_0806E25C: .4byte 0x003E0018
_0806E260: .4byte 0x003E0019
_0806E264:
	bl sub_0806DAD4
	movs r0, #0
	bl sub_080059E4
	ldr r0, _0806E298 @ =0x003E000D
	bl sub_080062D0
	ldrb r0, [r4, #4]
	cmp r0, #0
	bne _0806E2A0
	ldr r4, _0806E29C @ =0x03004524
	ldr r1, [r4]
	adds r1, #0x30
	movs r0, #0
	bl sub_08005BE0
	ldr r1, [r4]
	adds r1, #0x3c
	movs r0, #0xa
	bl sub_08005BE0
	ldr r0, [r4]
	adds r0, #0x5c
	b _0806E2B8
	.align 2, 0
_0806E298: .4byte 0x003E000D
_0806E29C: .4byte 0x03004524
_0806E2A0:
	ldr r4, _0806E2D4 @ =0x03004524
	ldr r1, [r4]
	movs r0, #0
	bl sub_08005BE0
	ldr r1, [r4]
	adds r1, #0xc
	movs r0, #0xa
	bl sub_08005BE0
	ldr r0, [r4]
	adds r0, #0x2c
_0806E2B8:
	ldrb r5, [r0]
	ldr r0, _0806E2D8 @ =0x003E000E
	bl sub_080062D0
	ldr r0, _0806E2DC @ =0x003E000F
	bl sub_080062D0
	cmp r5, #0
	bne _0806E2E4
	ldr r0, _0806E2E0 @ =0x003E0010
	bl sub_080062D0
	b _0806E2EA
	.align 2, 0
_0806E2D4: .4byte 0x03004524
_0806E2D8: .4byte 0x003E000E
_0806E2DC: .4byte 0x003E000F
_0806E2E0: .4byte 0x003E0010
_0806E2E4:
	ldr r0, _0806E344 @ =0x003E0012
	bl sub_080062D0
_0806E2EA:
	bl sub_08005A2C
	bl sub_08005934
	ldr r0, _0806E348 @ =0x003E0014
	bl sub_080062D0
	bl sub_08005A2C
	movs r0, #0
	bl sub_080059E4
	ldr r0, _0806E34C @ =0x003E0015
	bl sub_080062D0
_0806E308:
	bl sub_08005A2C
	movs r0, #1
	bl sub_08002B98
	ldr r0, _0806E350 @ =0x00003301
	bl sub_08003A30
	movs r0, #0xa
	bl sub_08002B98
	ldr r0, _0806E354 @ =0x03004510
	ldrb r0, [r0, #4]
	cmp r0, #0
	bne _0806E38E
	ldr r0, _0806E358 @ =0x003E001A
	bl sub_0800648C
	bl sub_080064F8
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0806E35C
	bl sub_0806DC94
	movs r0, #2
	mov r1, r8
	strb r0, [r1]
	b _0806E368
	.align 2, 0
_0806E344: .4byte 0x003E0012
_0806E348: .4byte 0x003E0014
_0806E34C: .4byte 0x003E0015
_0806E350: .4byte 0x00003301
_0806E354: .4byte 0x03004510
_0806E358: .4byte 0x003E001A
_0806E35C:
	movs r0, #0x2a
	bl sub_08008790
	movs r0, #0xff
	mov r2, r8
	strb r0, [r2]
_0806E368:
	movs r5, #9
_0806E36A:
	ldr r0, _0806E384 @ =0x00001111
	mov r1, r8
	movs r2, #1
	bl sub_080038F4
	movs r0, #1
	bl sub_08002B98
	subs r5, #1
	cmp r5, #0
	bge _0806E36A
	b _0806E3C2
	.align 2, 0
_0806E384: .4byte 0x00001111
_0806E388:
	bl sub_0806DC94
	b _0806E3C2
_0806E38E:
	ldr r4, _0806E394 @ =0x00001111
	b _0806E39E
	.align 2, 0
_0806E394: .4byte 0x00001111
_0806E398:
	movs r0, #1
	bl sub_08002B98
_0806E39E:
	movs r0, #0
	adds r1, r4, #0
	mov r2, r8
	movs r3, #1
	bl sub_08003938
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r4
	bne _0806E398
	mov r1, r8
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #2
	beq _0806E388
	movs r0, #0x2a
	bl sub_08008790
_0806E3C2:
	mov r2, r8
	movs r1, #0
	ldrsb r1, [r2, r1]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0806E3D8
	movs r0, #1
	bl sub_08002B98
	b _0806DF50
_0806E3D8:
	ldr r4, _0806E440 @ =0x03004400
	ldrb r0, [r4, #9]
	cmp r0, #0x11
	bne _0806E3E8
	movs r0, #0
	movs r1, #0x20
	bl sub_080077EC
_0806E3E8:
	movs r0, #0x20
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl sub_080089E8
	bl sub_08008D34
	ldrb r0, [r4, #9]
	cmp r0, #0x2a
	bne _0806E402
	bl sub_080034DC
_0806E402:
	bl sub_0806D06C
	movs r0, #0
	bl sub_0806CDF8
	movs r0, #1
	bl sub_0806CDF8
	bl sub_08061E30
	bl sub_0806102C
	ldr r4, _0806E444 @ =0x03004524
	ldr r0, [r4]
	cmp r0, #0
	beq _0806E42A
	bl sub_08007CF8
	movs r0, #0
	str r0, [r4]
_0806E42A:
	bl sub_080607BC
	bl sub_08002B0C
	add sp, #0x10
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806E440: .4byte 0x03004400
_0806E444: .4byte 0x03004524

	thumb_func_start sub_0806E448
sub_0806E448: @ 0x0806E448
	push {r4, lr}
	adds r4, r1, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	movs r1, #0
	b _0806E45C
_0806E454:
	strb r3, [r4]
	adds r0, #1
	adds r4, #1
	adds r1, #1
_0806E45C:
	cmp r1, r2
	bge _0806E466
	ldrb r3, [r0]
	cmp r3, #0
	bne _0806E454
_0806E466:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0806E46C
sub_0806E46C: @ 0x0806E46C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	lsls r4, r0, #3
	subs r4, r4, r0
	lsls r4, r4, #2
	ldr r0, _0806E4E8 @ =0x08077448
	adds r4, r4, r0
	ldr r6, _0806E4EC @ =0x02030024
	ldr r0, _0806E4F0 @ =0x03004400
	ldrb r0, [r0, #8]
	strb r0, [r6]
	ldrh r1, [r4, #4]
	mov r0, r8
	bl sub_0800193C
	adds r1, r6, #4
	movs r2, #0x10
	bl sub_0806E448
	ldrh r1, [r4, #6]
	mov r0, r8
	bl sub_0800193C
	adds r1, r6, #0
	adds r1, #0x14
	movs r2, #0x60
	bl sub_0806E448
	movs r5, #0
	adds r7, r6, #0
	adds r7, #0x74
	adds r4, #8
_0806E4B4:
	ldrh r0, [r4]
	cmp r0, #0
	beq _0806E4D4
	adds r1, r0, #0
	mov r0, r8
	bl sub_0800193C
	adds r1, r7, #0
	movs r2, #0x10
	bl sub_0806E448
	adds r0, r6, #0
	adds r0, #0xc4
	adds r0, r0, r5
	ldrb r1, [r4, #2]
	strb r1, [r0]
_0806E4D4:
	adds r7, #0x10
	adds r4, #4
	adds r5, #1
	cmp r5, #4
	ble _0806E4B4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806E4E8: .4byte 0x08077448
_0806E4EC: .4byte 0x02030024
_0806E4F0: .4byte 0x03004400

	thumb_func_start sub_0806E4F4
sub_0806E4F4: @ 0x0806E4F4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x12c
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	ldr r7, _0806E5AC @ =0x081335C0
	add r1, sp, #0x124
	movs r0, #0x88
	strb r0, [r1]
	movs r0, #0
	bl sub_08007828
	movs r0, #5
	bl sub_08007828
	movs r0, #0xc
	bl sub_080607FC
	adds r0, r5, #0
	bl sub_0806083C
	ldr r0, _0806E5B0 @ =0x0813347C
	ldr r1, _0806E5B4 @ =0x05000100
	bl sub_08008308
	ldr r0, _0806E5B8 @ =0x08133644
	ldr r1, _0806E5BC @ =0x06008000
	bl sub_08008374
	ldr r0, _0806E5C0 @ =0x081335E4
	ldr r1, _0806E5C4 @ =0x0600F000
	movs r2, #0
	movs r3, #8
	bl sub_080083CC
	ldr r4, _0806E5C8 @ =0x030024E0
	movs r0, #0
	strh r0, [r4, #0xe]
	ldr r0, _0806E5CC @ =0x0000FFD0
	strh r0, [r4, #0x16]
	adds r0, r5, #0
	bl sub_0806E46C
	movs r0, #0x20
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl sub_08008AF4
	adds r4, #0x4f
	movs r0, #1
	strb r0, [r4]
	bl sub_08008D34
	bl sub_08005934
	ldr r0, _0806E5D0 @ =0x004F0003
	bl sub_080062D0
	bl sub_08005918
	bl sub_08003468
	movs r0, #0
	bl sub_08003860
	bl sub_08003510
	movs r4, #0x3b
_0806E580:
	ldr r0, _0806E5D4 @ =0x00009999
	add r1, sp, #0x124
	movs r2, #1
	bl sub_080038F4
	movs r0, #1
	bl sub_08002B98
	subs r4, #1
	cmp r4, #0
	bge _0806E580
	bl sub_080034DC
	bl sub_08003B94
	lsls r4, r0, #0x18
	asrs r1, r4, #0x18
	cmp r1, #0
	bne _0806E5DC
	ldr r0, _0806E5D8 @ =0x003E0030
	b _0806E5E6
	.align 2, 0
_0806E5AC: .4byte 0x081335C0
_0806E5B0: .4byte 0x0813347C
_0806E5B4: .4byte 0x05000100
_0806E5B8: .4byte 0x08133644
_0806E5BC: .4byte 0x06008000
_0806E5C0: .4byte 0x081335E4
_0806E5C4: .4byte 0x0600F000
_0806E5C8: .4byte 0x030024E0
_0806E5CC: .4byte 0x0000FFD0
_0806E5D0: .4byte 0x004F0003
_0806E5D4: .4byte 0x00009999
_0806E5D8: .4byte 0x003E0030
_0806E5DC:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0806E5F4
	ldr r0, _0806E5F0 @ =0x003E0036
_0806E5E6:
	bl sub_080062D0
	adds r5, r4, #0
	b _0806E6AA
	.align 2, 0
_0806E5F0: .4byte 0x003E0036
_0806E5F4:
	bl sub_080056C0
	bl sub_08001B40
	ldr r0, _0806E6D8 @ =0x03004400
	strb r5, [r0, #0xd]
	bl load_minigame_dll_8001884
	movs r0, #1
	bl sub_08002B98
	adds r0, r7, #0
	movs r1, #0x82
	bl sub_08009554
	movs r0, #1
	bl sub_08002B98
	bl sub_08003A80
	movs r0, #0x80
	lsls r0, r0, #0x12
	movs r1, #0xc0
	lsls r1, r1, #0xa
	bl sub_08003B2C
	bl sub_08003B4C
	adds r5, r4, #0
_0806E62E:
	movs r0, #1
	bl sub_08002B98
	bl sub_08003B70
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0806E62E
	bl sub_08003B08
	movs r0, #1
	bl sub_08002B98
	bl sub_08003468
	ldr r4, _0806E6DC @ =0x02037EB0
	adds r0, r4, #0
	adds r0, #0x94
	ldr r0, [r0]
	movs r1, #0xf0
	lsls r1, r1, #4
	ands r0, r1
	lsrs r0, r0, #8
	bl sub_08003860
	bl sub_08003510
	movs r0, #1
	strb r0, [r4, #6]
	movs r0, #0xa
	bl sub_08002B98
	ldr r0, _0806E6E0 @ =0x00005501
	ldr r1, _0806E6E4 @ =0x02030000
	movs r3, #0x92
	lsls r3, r3, #1
	mov r2, sp
	bl sub_08003998
	cmp r6, #0
	beq _0806E68E
	bl sub_08003530
	movs r0, #0xa
	bl sub_08002B98
	bl sub_080034DC
_0806E68E:
	adds r0, r7, #0
	bl sub_080095E0
	bl sub_08005918
	bl sub_08007CD4
	cmp r6, #0
	beq _0806E6AA
	ldr r0, _0806E6E8 @ =0x004F0006
	bl sub_080062D0
	bl sub_08005B2C
_0806E6AA:
	bl sub_08005A2C
	movs r0, #0x20
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl sub_080089E8
	bl sub_08008D34
	add r0, sp, #0x128
	movs r1, #0
	str r1, [r0]
	ldr r1, _0806E6EC @ =0x0600F000
	ldr r2, _0806E6F0 @ =0x01000200
	bl CpuFastSet
	asrs r0, r5, #0x18
	add sp, #0x12c
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0806E6D8: .4byte 0x03004400
_0806E6DC: .4byte 0x02037EB0
_0806E6E0: .4byte 0x00005501
_0806E6E4: .4byte 0x02030000
_0806E6E8: .4byte 0x004F0006
_0806E6EC: .4byte 0x0600F000
_0806E6F0: .4byte 0x01000200

	thumb_func_start sub_0806E6F4
sub_0806E6F4: @ 0x0806E6F4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	ldr r1, _0806E760 @ =0x03004400
	movs r4, #0
	movs r0, #1
	strb r0, [r1, #5]
	str r4, [sp]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	ldr r2, _0806E764 @ =0x01006000
	mov r0, sp
	bl CpuFastSet
	str r4, [sp, #4]
	add r0, sp, #4
	movs r5, #0xa0
	lsls r5, r5, #0x13
	ldr r2, _0806E768 @ =0x01000100
	adds r1, r5, #0
	bl CpuFastSet
	ldr r0, _0806E76C @ =0x030024E0
	movs r1, #0xc0
	lsls r1, r1, #2
	strh r1, [r0]
	ldr r1, _0806E770 @ =0x00001001
	strh r1, [r0, #2]
	adds r1, #0xff
	strh r1, [r0, #4]
	strh r4, [r0, #0xc]
	strh r4, [r0, #0xa]
	strh r4, [r0, #0x14]
	strh r4, [r0, #0x12]
	ldr r0, _0806E774 @ =0x0814F72C
	ldr r1, _0806E778 @ =0x06000020
	bl LZ77UnCompReadNormalWrite16bit
	ldr r0, _0806E77C @ =0x0814F70C
	adds r1, r5, #0
	movs r2, #0x10
	bl CpuSet
	ldr r1, _0806E780 @ =0x06008000
	movs r3, #1
	movs r2, #0x13
_0806E754:
	movs r0, #0
_0806E756:
	cmp r0, #0x1d
	bgt _0806E784
	strh r3, [r1]
	adds r3, #1
	b _0806E786
	.align 2, 0
_0806E760: .4byte 0x03004400
_0806E764: .4byte 0x01006000
_0806E768: .4byte 0x01000100
_0806E76C: .4byte 0x030024E0
_0806E770: .4byte 0x00001001
_0806E774: .4byte 0x0814F72C
_0806E778: .4byte 0x06000020
_0806E77C: .4byte 0x0814F70C
_0806E780: .4byte 0x06008000
_0806E784:
	strh r4, [r1]
_0806E786:
	adds r1, #2
	adds r0, #1
	cmp r0, #0x1f
	ble _0806E756
	subs r2, #1
	cmp r2, #0
	bge _0806E754
	ldr r1, _0806E7A8 @ =0x06008C00
	movs r2, #0
	movs r4, #1
	movs r3, #0
_0806E79C:
	movs r0, #0
	adds r2, #1
_0806E7A0:
	cmp r0, #0x1d
	bgt _0806E7AC
	strh r4, [r1]
	b _0806E7AE
	.align 2, 0
_0806E7A8: .4byte 0x06008C00
_0806E7AC:
	strh r3, [r1]
_0806E7AE:
	adds r1, #2
	adds r0, #1
	cmp r0, #0x1f
	ble _0806E7A0
	cmp r2, #3
	ble _0806E79C
	ldr r1, _0806E82C @ =0x00007FFF
	movs r0, #0x1e
	movs r2, #0x1f
	movs r3, #0xf
	bl sub_08008AF4
	ldr r5, _0806E830 @ =0x030024E0
	adds r1, r5, #0
	adds r1, #0x4f
	movs r0, #1
	strb r0, [r1]
	bl sub_08008D34
	movs r0, #0x5a
	bl sub_08002B98
	adds r1, r5, #0
	adds r1, #0x4a
	movs r0, #0xa1
	lsls r0, r0, #1
	strh r0, [r1]
	movs r4, #0x80
	lsls r4, r4, #5
	movs r7, #1
	ldr r0, _0806E834 @ =0x030024B0
	ldrh r0, [r0]
	cmp r0, #0
	bne _0806E862
	ldr r6, _0806E838 @ =0x00000E0F
	mov sb, r4
	adds r5, #0x4c
	mov r8, r5
	movs r5, #0x80
	lsls r5, r5, #0x15
_0806E7FE:
	lsls r0, r4, #0x10
	asrs r2, r0, #0x10
	asrs r0, r0, #0x18
	movs r1, #0x1f
	ands r0, r1
	mov r1, sb
	orrs r0, r1
	mov r1, r8
	strh r0, [r1]
	cmp r7, #0
	bne _0806E83C
	adds r0, r2, #0
	adds r0, #0x88
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	asrs r1, r5, #0x10
	cmp r0, r1
	ble _0806E84E
	adds r4, r1, #0
	movs r7, #1
	b _0806E84E
	.align 2, 0
_0806E82C: .4byte 0x00007FFF
_0806E830: .4byte 0x030024E0
_0806E834: .4byte 0x030024B0
_0806E838: .4byte 0x00000E0F
_0806E83C:
	adds r0, r2, #0
	subs r0, #0x88
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r0, #0
	bge _0806E84E
	movs r4, #0
	movs r0, #1
	eors r7, r0
_0806E84E:
	movs r0, #1
	bl sub_08002B98
	ldr r0, _0806E89C @ =0x030024B0
	ldrh r0, [r0]
	cmp r0, #0
	bne _0806E862
	subs r6, #1
	cmp r6, #0
	bne _0806E7FE
_0806E862:
	ldr r0, _0806E8A0 @ =0x030024E0
	adds r0, #0x4c
	movs r4, #0
	movs r1, #0x80
	lsls r1, r1, #5
	strh r1, [r0]
	ldr r1, _0806E8A4 @ =0x00007FFF
	movs r0, #0x1e
	movs r2, #0x1f
	movs r3, #0xf
	bl sub_080089E8
	bl sub_08008D34
	movs r0, #1
	bl sub_08008790
	ldr r0, _0806E8A8 @ =0x03004400
	strb r4, [r0, #5]
	bl sub_08002B0C
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806E89C: .4byte 0x030024B0
_0806E8A0: .4byte 0x030024E0
_0806E8A4: .4byte 0x00007FFF
_0806E8A8: .4byte 0x03004400
