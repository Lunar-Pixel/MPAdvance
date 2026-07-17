	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .text
	.ARM
	.syntax unified

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
	bl LoadPalette_08008308
	ldr r0, [r4, #4]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	bl DecompressData_08008374
	ldr r0, [r4, #8]
	ldr r1, _08060838 @ =0x0600C800
	movs r2, #0
	movs r3, #0
	bl LoadTileMap_080083CC
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
	bl ProcSleep_08002B98
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
	bl ProcSleep_08002B98
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
	bl ProcSleep_08002B98
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
	bl LoadPalette_08008308
	ldr r0, _0806099C @ =0x0812D79C
	ldr r1, _080609A0 @ =0x06008000
	bl DecompressData_08008374
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
	bl ProcSleep_08002B98
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
	bl LoadPalette_08008308
	lsls r1, r6, #5
	ldr r0, _08060C04 @ =0x06010000
	adds r1, r1, r0
	mov r0, sb
	bl DecompressData_08008374
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
	bl LoadPalette_08008308
	lsls r1, r6, #5
	ldr r0, _08060F14 @ =0x06010000
	adds r1, r1, r0
	mov r0, sb
	bl DecompressData_08008374
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
	bl ProcSleep_08002B98
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
	bl LoadPalette_08008308
	lsls r1, r4, #5
	ldr r0, _0806186C @ =0x06010000
	adds r1, r1, r0
	adds r0, r5, #0
	bl DecompressData_08008374
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
	bl ProcSleep_08002B98
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
	bl LoadPalette_08008308
	mov r0, r8
	ldrh r1, [r0]
	lsls r1, r1, #5
	ldr r0, _08061E04 @ =0x06010000
	adds r1, r1, r0
	mov r0, sl
	bl DecompressData_08008374
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
	bl LoadPalette_08008308
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
	bl ProcSleep_08002B98
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
	bl ProcSleep_08002B98
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
	bl ProcSleep_08002B98
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
	bl ChangeGameState_08008790
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
	bl FadeIn_08008AF4
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
	bl ChangeGameState_08008790
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
	bl ProcSleep_08002B98
	b _08062CE0
_08062E2C:
	movs r0, #0
	movs r1, #0x20
	bl sub_080077EC
	movs r0, #0x20
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl FadeOut_080089E8
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
	bl FadeIn_08008AF4
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
	bl ChangeGameState_08008790
	b _0806334C
_08063334:
	cmp r7, #0
	beq _08063346
	movs r0, #0x14
_0806333A:
	bl sub_080072F4
	movs r0, #0x23
	bl ChangeGameState_08008790
	b _0806334C
_08063346:
	movs r0, #0x14
	bl ChangeGameState_08008790
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
	bl FadeOut_080089E8
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
	bl FadeIn_08008AF4
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
	bl FadeOut_080089E8
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
	bl FadeIn_08008AF4
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
	bl ProcSleep_08002B98
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
	bl FadeOut_080089E8
	bl sub_08008D34
	bl sub_08061E30
	bl sub_08060FA0
	bl sub_080607BC
	movs r0, #0x2c
	bl ChangeGameState_08008790
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
