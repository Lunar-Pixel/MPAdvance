	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .text
	.ARM
	.syntax unified

	.ALIGN 2, 0

	thumb_func_start sub_02008DF0
sub_02008DF0: @ 0x02008DF0
	ldr r1, _02008DFC @ =gUnknown_0202B280
	movs r0, #0
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [r1, #8]
	bx lr
	.align 2, 0
_02008DFC: .4byte gUnknown_0202B280

	thumb_func_start sub_02008E00
sub_02008E00: @ 0x02008E00
	push {r4, lr}
	ldr r3, _02008E28 @ =gUnknown_0202B280
	ldr r2, [r3, #8]
	cmp r2, #0
	beq _02008E7A
	movs r4, #0
	ldr r0, [r3]
	cmp r0, #0
	bne _02008E30
	ldr r0, _02008E2C @ =gUnknown_0202B1B0
	ldrh r0, [r0]
	ands r0, r2
	cmp r0, #0
	beq _02008E74
	str r4, [r3, #4]
	movs r0, #1
	str r0, [r3]
_02008E22:
	movs r4, #1
	b _02008E74
	.align 2, 0
_02008E28: .4byte gUnknown_0202B280
_02008E2C: .4byte gUnknown_0202B1B0
_02008E30:
	ldr r0, _02008E40 @ =gUnknown_0202B1B0
	ldrh r0, [r0]
	ands r0, r2
	cmp r0, #0
	beq _02008E44
	movs r0, #1
	str r0, [r3, #4]
	b _02008E22
	.align 2, 0
_02008E40: .4byte gUnknown_0202B1B0
_02008E44:
	ldr r1, [r3, #4]
	cmp r1, #0
	beq _02008E22
	ldr r0, _02008E60 @ =gUnknown_0202B1B8
	ldrh r0, [r0]
	ands r0, r2
	cmp r0, #0
	bne _02008E68
	subs r0, r1, #1
	cmp r0, #0x12
	bhi _02008E64
	str r4, [r3]
	b _02008E22
	.align 2, 0
_02008E60: .4byte gUnknown_0202B1B8
_02008E64:
	str r4, [r3, #4]
	b _02008E22
_02008E68:
	adds r0, r1, #1
	str r0, [r3, #4]
	cmp r0, #0x1d
	bls _02008E22
	movs r0, #0x14
	str r0, [r3, #4]
_02008E74:
	adds r0, r4, #0
	bl sub_02006700
_02008E7A:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_02008E80
sub_02008E80: @ 0x02008E80
	push {lr}
	ldr r1, _02008E90 @ =gUnknown_0202B280
	movs r0, #0
	str r0, [r1, #8]
	bl sub_02006700
	pop {r0}
	bx r0
	.align 2, 0
_02008E90: .4byte gUnknown_0202B280

	thumb_func_start sub_02008E94
sub_02008E94: @ 0x02008E94
	ldr r0, _02008E9C @ =gUnknown_0202B280
	ldr r0, [r0, #8]
	bx lr
	.align 2, 0
_02008E9C: .4byte gUnknown_0202B280

	thumb_func_start sub_02008EA0
sub_02008EA0: @ 0x02008EA0
	push {r4, lr}
	ldr r0, _02008ECC @ =gUnknown_0202B2B0
	movs r2, #0
	movs r1, #3
	str r1, [r0, #4]
	str r2, [r0, #8]
	movs r4, #0x12
	str r4, [r0, #0xc]
	str r1, [r0, #0x10]
	str r2, [r0, #0x14]
	movs r3, #0x13
	str r3, [r0, #0x18]
	movs r1, #4
	str r1, [r0, #0x1c]
	str r4, [r0, #0x20]
	str r1, [r0, #0x24]
	str r3, [r0, #0x28]
	str r2, [r0, #0x2c]
	str r2, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_02008ECC: .4byte gUnknown_0202B2B0

	thumb_func_start sub_02008ED0
sub_02008ED0: @ 0x02008ED0
	push {lr}
	ldr r0, _02008EF8 @ =gUnknown_0202B2B0
	ldr r0, [r0]
	cmp r0, #0
	beq _02008EF4
	ldr r1, _02008EFC @ =0x06017FE0
	movs r0, #0
	ldr r3, _02008F00 @ =0x0000FFFF
	adds r2, r3, #0
_02008EE2:
	strh r2, [r1]
	adds r0, #1
	adds r1, #2
	cmp r0, #0xf
	bls _02008EE2
	ldr r1, _02008F04 @ =0x050003FE
	ldr r2, _02008F00 @ =0x0000FFFF
	adds r0, r2, #0
	strh r0, [r1]
_02008EF4:
	pop {r0}
	bx r0
	.align 2, 0
_02008EF8: .4byte gUnknown_0202B2B0
_02008EFC: .4byte 0x06017FE0
_02008F00: .4byte 0x0000FFFF
_02008F04: .4byte 0x050003FE

	thumb_func_start sub_02008F08
sub_02008F08: @ 0x02008F08
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	adds r6, r1, #0
	mov r8, r2
	ldr r0, _02008FD4 @ =gUnknown_0202B2B0
	ldr r0, [r0]
	cmp r0, #0
	beq _02008FC6
	cmp r5, #0
	beq _02008FC6
	bl sub_02003B00
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	mov sb, r2
	movs r0, #1
	ands r0, r5
	cmp r0, #0
	beq _02008F52
	ldr r4, _02008FD8 @ =gUnknown_0202B150
	ldr r1, _02008FDC @ =gUnknown_0200B024
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r4, #0
	bl sub_02007E58
	lsls r1, r6, #0x18
	asrs r1, r1, #0x18
	mov r0, r8
	lsls r2, r0, #0x18
	asrs r2, r2, #0x18
	adds r0, r4, #0
	bl sub_020073F0
_02008F52:
	movs r0, #2
	ands r0, r5
	cmp r0, #0
	beq _02008FC6
	ldr r7, _02008FE0 @ =gUnknown_0202B1A4
	movs r0, #0
	ldrsb r0, [r7, r0]
	cmp r0, #0
	blt _02008FC6
	bl sub_02008ED0
	ldrb r2, [r7]
	lsls r2, r2, #3
	ldr r0, _02008FE4 @ =gUnknown_0202D360
	adds r2, r2, r0
	mov r1, r8
	lsls r0, r1, #3
	strb r0, [r2]
	movs r4, #0xd
	rsbs r4, r4, #0
	movs r5, #0x11
	rsbs r5, r5, #0
	movs r6, #0x21
	rsbs r6, r6, #0
	movs r3, #0x3f
	mov r8, r3
	movs r0, #0
	strb r0, [r2, #1]
	mov r0, sb
	lsls r1, r0, #0x17
	lsrs r1, r1, #0x17
	ldrh r3, [r2, #2]
	ldr r0, _02008FE8 @ =0xFFFFFE00
	ands r0, r3
	orrs r0, r1
	strh r0, [r2, #2]
	ldrb r1, [r2, #3]
	movs r0, #0xf
	rsbs r0, r0, #0
	ands r0, r1
	ands r0, r5
	ands r0, r6
	mov r1, r8
	ands r0, r1
	strb r0, [r2, #3]
	ldrh r0, [r2, #4]
	ldr r3, _02008FEC @ =0x000003FF
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2, #4]
	ldrb r0, [r2, #5]
	ands r4, r0
	movs r0, #0xf0
	orrs r4, r0
	strb r4, [r2, #5]
	ldrb r0, [r7]
	adds r0, #1
	strb r0, [r7]
_02008FC6:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_02008FD4: .4byte gUnknown_0202B2B0
_02008FD8: .4byte gUnknown_0202B150
_02008FDC: .4byte gUnknown_0200B024
_02008FE0: .4byte gUnknown_0202B1A4
_02008FE4: .4byte gUnknown_0202D360
_02008FE8: .4byte 0xFFFFFE00
_02008FEC: .4byte 0x000003FF

	thumb_func_start sub_02008FF0
sub_02008FF0: @ 0x02008FF0
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r6, r1, #0
	ldr r1, [sp, #0x14]
	ldr r0, _02009010 @ =gUnknown_0202B2B0
	ldr r0, [r0]
	cmp r0, #0
	beq _02009098
	cmp r1, #1
	beq _02009040
	cmp r1, #1
	bgt _02009014
	cmp r1, #0
	beq _0200901A
	b _02009098
	.align 2, 0
_02009010: .4byte gUnknown_0202B2B0
_02009014:
	cmp r1, #2
	beq _0200907C
	b _02009098
_0200901A:
	ldr r4, _02009030 @ =gUnknown_0202B150
	ldr r1, _02009034 @ =gUnknown_0200B02C
	ldr r0, _02009038 @ =gUnknown_0202E160
	ldr r2, [r0]
	ldr r0, _0200903C @ =gUnknown_0202E158
	ldr r3, [r0]
	adds r0, r4, #0
	bl sub_02007E58
	b _02009058
	.align 2, 0
_02009030: .4byte gUnknown_0202B150
_02009034: .4byte gUnknown_0200B02C
_02009038: .4byte gUnknown_0202E160
_0200903C: .4byte gUnknown_0202E158
_02009040:
	ldr r4, _02009068 @ =gUnknown_0202B150
	ldr r1, _0200906C @ =gUnknown_0200B038
	ldr r0, _02009070 @ =gUnknown_0202E160
	ldr r2, [r0]
	ldr r0, _02009074 @ =gUnknown_0202E158
	ldr r3, [r0]
	ldr r0, _02009078 @ =gUnknown_0202AE48
	ldr r0, [r0]
	str r0, [sp]
	adds r0, r4, #0
	bl sub_02007E58
_02009058:
	lsls r1, r5, #0x18
	asrs r1, r1, #0x18
	lsls r2, r6, #0x18
	asrs r2, r2, #0x18
	adds r0, r4, #0
	bl sub_020073F0
	b _02009098
	.align 2, 0
_02009068: .4byte gUnknown_0202B150
_0200906C: .4byte gUnknown_0200B038
_02009070: .4byte gUnknown_0202E160
_02009074: .4byte gUnknown_0202E158
_02009078: .4byte gUnknown_0202AE48
_0200907C:
	ldr r4, _020090A0 @ =gUnknown_0202B150
	ldr r1, _020090A4 @ =gUnknown_0200B048
	ldr r0, _020090A8 @ =gUnknown_0202E15C
	ldr r2, [r0]
	adds r0, r4, #0
	bl sub_02007E58
	lsls r1, r5, #0x18
	asrs r1, r1, #0x18
	lsls r2, r6, #0x18
	asrs r2, r2, #0x18
	adds r0, r4, #0
	bl sub_020073F0
_02009098:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_020090A0: .4byte gUnknown_0202B150
_020090A4: .4byte gUnknown_0200B048
_020090A8: .4byte gUnknown_0202E15C

	thumb_func_start sub_020090AC
sub_020090AC: @ 0x020090AC
	bx lr
	.align 2, 0

	thumb_func_start sub_020090B0
sub_020090B0: @ 0x020090B0
	ldr r0, _020090B8 @ =gUnknown_0202B2B0
	ldr r0, [r0]
	bx lr
	.align 2, 0
_020090B8: .4byte gUnknown_0202B2B0
