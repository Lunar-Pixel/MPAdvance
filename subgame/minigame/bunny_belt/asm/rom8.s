	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .text
	.ARM
	.syntax unified

	.ALIGN 2, 0

	thumb_func_start sub_02008DF0
sub_02008DF0: @ 0x02008DF0
	ldr r1, _02008DFC @ =0x0202B280
	movs r0, #0
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [r1, #8]
	bx lr
	.align 2, 0
_02008DFC: .4byte 0x0202B280

	thumb_func_start sub_02008E00
sub_02008E00: @ 0x02008E00
	push {r4, lr}
	ldr r3, _02008E28 @ =0x0202B280
	ldr r2, [r3, #8]
	cmp r2, #0
	beq _02008E7A
	movs r4, #0
	ldr r0, [r3]
	cmp r0, #0
	bne _02008E30
	ldr r0, _02008E2C @ =0x0202B1B0
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
_02008E28: .4byte 0x0202B280
_02008E2C: .4byte 0x0202B1B0
_02008E30:
	ldr r0, _02008E40 @ =0x0202B1B0
	ldrh r0, [r0]
	ands r0, r2
	cmp r0, #0
	beq _02008E44
	movs r0, #1
	str r0, [r3, #4]
	b _02008E22
	.align 2, 0
_02008E40: .4byte 0x0202B1B0
_02008E44:
	ldr r1, [r3, #4]
	cmp r1, #0
	beq _02008E22
	ldr r0, _02008E60 @ =0x0202B1B8
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
_02008E60: .4byte 0x0202B1B8
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
	ldr r1, _02008E90 @ =0x0202B280
	movs r0, #0
	str r0, [r1, #8]
	bl sub_02006700
	pop {r0}
	bx r0
	.align 2, 0
_02008E90: .4byte 0x0202B280

	thumb_func_start sub_02008E94
sub_02008E94: @ 0x02008E94
	ldr r0, _02008E9C @ =0x0202B280
	ldr r0, [r0, #8]
	bx lr
	.align 2, 0
_02008E9C: .4byte 0x0202B280

	thumb_func_start sub_02008EA0
sub_02008EA0: @ 0x02008EA0
	push {r4, lr}
	ldr r0, _02008ECC @ =0x0202B2B0
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
_02008ECC: .4byte 0x0202B2B0

	thumb_func_start sub_02008ED0
sub_02008ED0: @ 0x02008ED0
	push {lr}
	ldr r0, _02008EF8 @ =0x0202B2B0
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
_02008EF8: .4byte 0x0202B2B0
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
	ldr r0, _02008FD4 @ =0x0202B2B0
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
	ldr r4, _02008FD8 @ =0x0202B150
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
	ldr r7, _02008FE0 @ =0x0202B1A4
	movs r0, #0
	ldrsb r0, [r7, r0]
	cmp r0, #0
	blt _02008FC6
	bl sub_02008ED0
	ldrb r2, [r7]
	lsls r2, r2, #3
	ldr r0, _02008FE4 @ =0x0202D360
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
_02008FD4: .4byte 0x0202B2B0
_02008FD8: .4byte 0x0202B150
_02008FDC: .4byte gUnknown_0200B024
_02008FE0: .4byte 0x0202B1A4
_02008FE4: .4byte 0x0202D360
_02008FE8: .4byte 0xFFFFFE00
_02008FEC: .4byte 0x000003FF

	thumb_func_start sub_02008FF0
sub_02008FF0: @ 0x02008FF0
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r6, r1, #0
	ldr r1, [sp, #0x14]
	ldr r0, _02009010 @ =0x0202B2B0
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
_02009010: .4byte 0x0202B2B0
_02009014:
	cmp r1, #2
	beq _0200907C
	b _02009098
_0200901A:
	ldr r4, _02009030 @ =0x0202B150
	ldr r1, _02009034 @ =gUnknown_0200B02C
	ldr r0, _02009038 @ =0x0202E160
	ldr r2, [r0]
	ldr r0, _0200903C @ =0x0202E158
	ldr r3, [r0]
	adds r0, r4, #0
	bl sub_02007E58
	b _02009058
	.align 2, 0
_02009030: .4byte 0x0202B150
_02009034: .4byte gUnknown_0200B02C
_02009038: .4byte 0x0202E160
_0200903C: .4byte 0x0202E158
_02009040:
	ldr r4, _02009068 @ =0x0202B150
	ldr r1, _0200906C @ =gUnknown_0200B038
	ldr r0, _02009070 @ =0x0202E160
	ldr r2, [r0]
	ldr r0, _02009074 @ =0x0202E158
	ldr r3, [r0]
	ldr r0, _02009078 @ =0x0202AE48
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
_02009068: .4byte 0x0202B150
_0200906C: .4byte gUnknown_0200B038
_02009070: .4byte 0x0202E160
_02009074: .4byte 0x0202E158
_02009078: .4byte 0x0202AE48
_0200907C:
	ldr r4, _020090A0 @ =0x0202B150
	ldr r1, _020090A4 @ =gUnknown_0200B048
	ldr r0, _020090A8 @ =0x0202E15C
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
_020090A0: .4byte 0x0202B150
_020090A4: .4byte gUnknown_0200B048
_020090A8: .4byte 0x0202E15C

	thumb_func_start sub_020090AC
sub_020090AC: @ 0x020090AC
	bx lr
	.align 2, 0

	thumb_func_start sub_020090B0
sub_020090B0: @ 0x020090B0
	ldr r0, _020090B8 @ =0x0202B2B0
	ldr r0, [r0]
	bx lr
	.align 2, 0
_020090B8: .4byte 0x0202B2B0

	thumb_func_start sub_020090BC
sub_020090BC: @ 0x020090BC
	svc #0xa
	bx lr

	thumb_func_start sub_020090C0
sub_020090C0: @ 0x020090C0
	svc #0xc
	bx lr

	thumb_func_start sub_020090C4
sub_020090C4: @ 0x020090C4
	svc #0xb
	bx lr

	thumb_func_start sub_020090C8
sub_020090C8: @ 0x020090C8
	movs r2, #0
	svc #4
	bx lr
	.align 2, 0

	thumb_func_start sub_020090D0
sub_020090D0: @ 0x020090D0
	svc #0xf
	bx lr

	thumb_func_start sub_020090D4
sub_020090D4: @ 0x020090D4
	svc #8
	bx lr

	thumb_func_start sub_020090D8
sub_020090D8: @ 0x020090D8
	movs r2, #0
	svc #5
	bx lr
	.align 2, 0

	thumb_func_start sub_020090E0
sub_020090E0: @ 0x020090E0
	ldr r3, _020090F4 @ =REG_IME
	movs r2, #0
	strb r2, [r3]
	ldr r3, _020090F8 @ =0x03007FFA
	movs r2, #0
	strb r2, [r3]
	subs r3, #0xfa
	mov sp, r3
	svc #1
	svc #0
	.align 2, 0
_020090F4: .4byte REG_IME
_020090F8: .4byte 0x03007FFA

	thumb_func_start sub_020090FC
sub_020090FC: @ 0x020090FC
	bx r0
	nop

	thumb_func_start sub_02009100
sub_02009100: @ 0x02009100
	bx r1
	nop

	thumb_func_start sub_02009104
sub_02009104: @ 0x02009104
	bx r2
	nop

	thumb_func_start sub_02009108
sub_02009108: @ 0x02009108
	bx r3
	nop

	thumb_func_start sub_0200910C
sub_0200910C: @ 0x0200910C
	bx r4
	nop

	thumb_func_start sub_02009110
sub_02009110: @ 0x02009110
	bx r5
	nop

	thumb_func_start sub_02009114
sub_02009114: @ 0x02009114
	bx r6
	nop

	thumb_func_start sub_02009118
sub_02009118: @ 0x02009118
	bx r7
	nop

	thumb_func_start sub_0200911C
sub_0200911C: @ 0x0200911C
	bx r8
	nop

	thumb_func_start sub_02009120
sub_02009120: @ 0x02009120
	bx sb
	nop

	thumb_func_start sub_02009124
sub_02009124: @ 0x02009124
	bx sl
	nop

	thumb_func_start sub_02009128
sub_02009128: @ 0x02009128
	bx fp
	nop

	thumb_func_start sub_0200912C
sub_0200912C: @ 0x0200912C
	bx ip
	nop

	thumb_func_start sub_02009130
sub_02009130: @ 0x02009130
	bx sp
	nop

	thumb_func_start sub_02009134
sub_02009134: @ 0x02009134
	bx lr
	nop

	thumb_func_start sub_02009138
sub_02009138: @ 0x02009138
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x34
	movs r4, #0
	str r4, [sp]
	adds r5, r1, #0
	adds r4, r0, #0
	cmp r5, #0
	bge _02009168
	ldr r0, [sp]
	mvns r0, r0
	str r0, [sp]
	rsbs r0, r4, #0
	adds r6, r0, #0
	rsbs r1, r5, #0
	cmp r0, #0
	beq _02009162
	subs r1, #1
_02009162:
	adds r7, r1, #0
	adds r5, r7, #0
	adds r4, r6, #0
_02009168:
	cmp r3, #0
	bge _02009184
	ldr r1, [sp]
	mvns r1, r1
	str r1, [sp]
	rsbs r0, r2, #0
	str r0, [sp, #4]
	rsbs r2, r3, #0
	cmp r0, #0
	beq _0200917E
	subs r2, #1
_0200917E:
	str r2, [sp, #8]
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
_02009184:
	adds r7, r2, #0
	adds r6, r3, #0
	mov sl, r4
	mov r8, r5
	cmp r6, #0
	beq _02009192
	b _020093E0
_02009192:
	cmp r7, r8
	bls _0200926C
	ldr r0, _020091A8 @ =0x0000FFFF
	cmp r7, r0
	bhi _020091AC
	movs r1, #0
	cmp r7, #0xff
	bls _020091B6
	movs r1, #8
	b _020091B6
	.align 2, 0
_020091A8: .4byte 0x0000FFFF
_020091AC:
	ldr r0, _02009260 @ =0x00FFFFFF
	movs r1, #0x18
	cmp r7, r0
	bhi _020091B6
	movs r1, #0x10
_020091B6:
	ldr r0, _02009264 @ =gUnknown_0200B050
	lsrs r2, r1
	adds r0, r2, r0
	ldrb r0, [r0]
	adds r0, r0, r1
	movs r1, #0x20
	subs r2, r1, r0
	cmp r2, #0
	beq _020091DE
	lsls r7, r2
	mov r3, r8
	lsls r3, r2
	subs r1, r1, r2
	mov r0, sl
	lsrs r0, r1
	orrs r3, r0
	mov r8, r3
	mov r4, sl
	lsls r4, r2
	mov sl, r4
_020091DE:
	lsrs r0, r7, #0x10
	mov sb, r0
	ldr r1, _02009268 @ =0x0000FFFF
	ands r1, r7
	str r1, [sp, #0xc]
	mov r0, r8
	mov r1, sb
	bl sub_0200967C
	adds r4, r0, #0
	mov r0, r8
	mov r1, sb
	bl sub_02009604
	adds r6, r0, #0
	ldr r3, [sp, #0xc]
	adds r2, r6, #0
	muls r2, r3, r2
	lsls r4, r4, #0x10
	mov r1, sl
	lsrs r0, r1, #0x10
	orrs r4, r0
	cmp r4, r2
	bhs _0200921E
	subs r6, #1
	adds r4, r4, r7
	cmp r4, r7
	blo _0200921E
	cmp r4, r2
	bhs _0200921E
	subs r6, #1
	adds r4, r4, r7
_0200921E:
	subs r4, r4, r2
	adds r0, r4, #0
	mov r1, sb
	bl sub_0200967C
	adds r5, r0, #0
	adds r0, r4, #0
	mov r1, sb
	bl sub_02009604
	adds r1, r0, #0
	ldr r3, [sp, #0xc]
	adds r2, r1, #0
	muls r2, r3, r2
	lsls r5, r5, #0x10
	ldr r0, _02009268 @ =0x0000FFFF
	mov r4, sl
	ands r4, r0
	orrs r5, r4
	cmp r5, r2
	bhs _02009256
	subs r1, #1
	adds r5, r5, r7
	cmp r5, r7
	blo _02009256
	cmp r5, r2
	bhs _02009256
	subs r1, #1
_02009256:
	lsls r6, r6, #0x10
	orrs r6, r1
	movs r0, #0
	str r0, [sp, #0x10]
	b _02009536
	.align 2, 0
_02009260: .4byte 0x00FFFFFF
_02009264: .4byte gUnknown_0200B050
_02009268: .4byte 0x0000FFFF
_0200926C:
	cmp r2, #0
	bne _0200927A
	movs r0, #1
	movs r1, #0
	bl sub_02009604
	adds r7, r0, #0
_0200927A:
	adds r1, r7, #0
	ldr r0, _0200928C @ =0x0000FFFF
	cmp r7, r0
	bhi _02009290
	movs r2, #0
	cmp r7, #0xff
	bls _0200929A
	movs r2, #8
	b _0200929A
	.align 2, 0
_0200928C: .4byte 0x0000FFFF
_02009290:
	ldr r0, _020092B8 @ =0x00FFFFFF
	movs r2, #0x18
	cmp r7, r0
	bhi _0200929A
	movs r2, #0x10
_0200929A:
	ldr r0, _020092BC @ =gUnknown_0200B050
	lsrs r1, r2
	adds r0, r1, r0
	ldrb r0, [r0]
	adds r0, r0, r2
	movs r1, #0x20
	subs r2, r1, r0
	cmp r2, #0
	bne _020092C0
	mov r1, r8
	subs r1, r1, r7
	mov r8, r1
	movs r2, #1
	str r2, [sp, #0x10]
	b _0200935E
	.align 2, 0
_020092B8: .4byte 0x00FFFFFF
_020092BC: .4byte gUnknown_0200B050
_020092C0:
	subs r1, r1, r2
	lsls r7, r2
	mov r5, r8
	lsrs r5, r1
	mov r3, r8
	lsls r3, r2
	mov r0, sl
	lsrs r0, r1
	orrs r3, r0
	mov r8, r3
	mov r4, sl
	lsls r4, r2
	mov sl, r4
	lsrs r0, r7, #0x10
	mov sb, r0
	ldr r1, _020093DC @ =0x0000FFFF
	ands r1, r7
	str r1, [sp, #0x14]
	adds r0, r5, #0
	mov r1, sb
	bl sub_0200967C
	adds r4, r0, #0
	adds r0, r5, #0
	mov r1, sb
	bl sub_02009604
	adds r6, r0, #0
	ldr r2, [sp, #0x14]
	adds r1, r6, #0
	muls r1, r2, r1
	lsls r4, r4, #0x10
	mov r3, r8
	lsrs r0, r3, #0x10
	orrs r4, r0
	cmp r4, r1
	bhs _0200931A
	subs r6, #1
	adds r4, r4, r7
	cmp r4, r7
	blo _0200931A
	cmp r4, r1
	bhs _0200931A
	subs r6, #1
	adds r4, r4, r7
_0200931A:
	subs r4, r4, r1
	adds r0, r4, #0
	mov r1, sb
	bl sub_0200967C
	adds r5, r0, #0
	adds r0, r4, #0
	mov r1, sb
	bl sub_02009604
	adds r2, r0, #0
	ldr r4, [sp, #0x14]
	adds r1, r2, #0
	muls r1, r4, r1
	lsls r5, r5, #0x10
	ldr r0, _020093DC @ =0x0000FFFF
	mov r3, r8
	ands r3, r0
	orrs r5, r3
	cmp r5, r1
	bhs _02009354
	subs r2, #1
	adds r5, r5, r7
	cmp r5, r7
	blo _02009354
	cmp r5, r1
	bhs _02009354
	subs r2, #1
	adds r5, r5, r7
_02009354:
	lsls r6, r6, #0x10
	orrs r6, r2
	str r6, [sp, #0x10]
	subs r1, r5, r1
	mov r8, r1
_0200935E:
	lsrs r4, r7, #0x10
	mov sb, r4
	ldr r0, _020093DC @ =0x0000FFFF
	ands r0, r7
	str r0, [sp, #0x18]
	mov r0, r8
	mov r1, sb
	bl sub_0200967C
	adds r4, r0, #0
	mov r0, r8
	mov r1, sb
	bl sub_02009604
	adds r6, r0, #0
	ldr r1, [sp, #0x18]
	adds r2, r6, #0
	muls r2, r1, r2
	lsls r4, r4, #0x10
	mov r3, sl
	lsrs r0, r3, #0x10
	orrs r4, r0
	cmp r4, r2
	bhs _0200939E
	subs r6, #1
	adds r4, r4, r7
	cmp r4, r7
	blo _0200939E
	cmp r4, r2
	bhs _0200939E
	subs r6, #1
	adds r4, r4, r7
_0200939E:
	subs r4, r4, r2
	adds r0, r4, #0
	mov r1, sb
	bl sub_0200967C
	adds r5, r0, #0
	adds r0, r4, #0
	mov r1, sb
	bl sub_02009604
	adds r1, r0, #0
	ldr r4, [sp, #0x18]
	adds r2, r1, #0
	muls r2, r4, r2
	lsls r5, r5, #0x10
	ldr r0, _020093DC @ =0x0000FFFF
	mov r3, sl
	ands r3, r0
	orrs r5, r3
	cmp r5, r2
	bhs _020093D6
	subs r1, #1
	adds r5, r5, r7
	cmp r5, r7
	blo _020093D6
	cmp r5, r2
	bhs _020093D6
	subs r1, #1
_020093D6:
	lsls r6, r6, #0x10
	orrs r6, r1
	b _02009536
	.align 2, 0
_020093DC: .4byte 0x0000FFFF
_020093E0:
	cmp r6, r8
	bls _020093EC
	movs r6, #0
	movs r4, #0
	str r4, [sp, #0x10]
	b _02009536
_020093EC:
	adds r1, r6, #0
	ldr r0, _02009400 @ =0x0000FFFF
	cmp r6, r0
	bhi _02009404
	movs r2, #0
	cmp r6, #0xff
	bls _0200940E
	movs r2, #8
	b _0200940E
	.align 2, 0
_02009400: .4byte 0x0000FFFF
_02009404:
	ldr r0, _02009430 @ =0x00FFFFFF
	movs r2, #0x18
	cmp r6, r0
	bhi _0200940E
	movs r2, #0x10
_0200940E:
	ldr r0, _02009434 @ =gUnknown_0200B050
	lsrs r1, r2
	adds r0, r1, r0
	ldrb r0, [r0]
	adds r0, r0, r2
	movs r1, #0x20
	subs r2, r1, r0
	cmp r2, #0
	bne _0200943C
	cmp r8, r6
	bhi _02009428
	cmp sl, r7
	blo _02009438
_02009428:
	movs r6, #1
	mov r1, sl
	b _02009530
	.align 2, 0
_02009430: .4byte 0x00FFFFFF
_02009434: .4byte gUnknown_0200B050
_02009438:
	movs r6, #0
	b _02009532
_0200943C:
	subs r1, r1, r2
	lsls r6, r2
	adds r0, r7, #0
	lsrs r0, r1
	orrs r6, r0
	lsls r7, r2
	mov r5, r8
	lsrs r5, r1
	mov r3, r8
	lsls r3, r2
	mov r0, sl
	lsrs r0, r1
	orrs r3, r0
	mov r8, r3
	mov r4, sl
	lsls r4, r2
	mov sl, r4
	lsrs r0, r6, #0x10
	mov sb, r0
	ldr r1, _02009568 @ =0x0000FFFF
	ands r1, r6
	str r1, [sp, #0x1c]
	adds r0, r5, #0
	mov r1, sb
	bl sub_0200967C
	adds r4, r0, #0
	adds r0, r5, #0
	mov r1, sb
	bl sub_02009604
	adds r3, r0, #0
	ldr r2, [sp, #0x1c]
	adds r1, r3, #0
	muls r1, r2, r1
	lsls r4, r4, #0x10
	mov r2, r8
	lsrs r0, r2, #0x10
	orrs r4, r0
	cmp r4, r1
	bhs _0200949E
	subs r3, #1
	adds r4, r4, r6
	cmp r4, r6
	blo _0200949E
	cmp r4, r1
	bhs _0200949E
	subs r3, #1
	adds r4, r4, r6
_0200949E:
	subs r4, r4, r1
	adds r0, r4, #0
	mov r1, sb
	str r3, [sp, #0x30]
	bl sub_0200967C
	adds r5, r0, #0
	adds r0, r4, #0
	mov r1, sb
	bl sub_02009604
	adds r2, r0, #0
	ldr r4, [sp, #0x1c]
	adds r1, r2, #0
	muls r1, r4, r1
	lsls r5, r5, #0x10
	ldr r0, _02009568 @ =0x0000FFFF
	mov r4, r8
	ands r4, r0
	orrs r5, r4
	ldr r3, [sp, #0x30]
	cmp r5, r1
	bhs _020094DC
	subs r2, #1
	adds r5, r5, r6
	cmp r5, r6
	blo _020094DC
	cmp r5, r1
	bhs _020094DC
	subs r2, #1
	adds r5, r5, r6
_020094DC:
	lsls r6, r3, #0x10
	orrs r6, r2
	subs r1, r5, r1
	mov r8, r1
	ldr r0, _02009568 @ =0x0000FFFF
	mov sb, r0
	adds r1, r6, #0
	ands r1, r0
	lsrs r3, r6, #0x10
	adds r0, r7, #0
	mov r2, sb
	ands r0, r2
	lsrs r2, r7, #0x10
	adds r5, r1, #0
	muls r5, r0, r5
	adds r4, r1, #0
	muls r4, r2, r4
	adds r1, r3, #0
	muls r1, r0, r1
	muls r3, r2, r3
	lsrs r0, r5, #0x10
	adds r4, r4, r0
	adds r4, r4, r1
	cmp r4, r1
	bhs _02009514
	movs r0, #0x80
	lsls r0, r0, #9
	adds r3, r3, r0
_02009514:
	lsrs r0, r4, #0x10
	adds r3, r3, r0
	mov r1, sb
	ands r4, r1
	lsls r0, r4, #0x10
	ands r5, r1
	adds r1, r0, r5
	cmp r3, r8
	bhi _0200952E
	cmp r3, r8
	bne _02009532
	cmp r1, sl
	bls _02009532
_0200952E:
	subs r6, #1
_02009530:
	subs r0, r1, r7
_02009532:
	movs r2, #0
	str r2, [sp, #0x10]
_02009536:
	str r6, [sp, #0x20]
	ldr r3, [sp, #0x10]
	str r3, [sp, #0x24]
	ldr r1, [sp, #0x20]
	ldr r2, [sp, #0x24]
	ldr r4, [sp]
	cmp r4, #0
	beq _02009558
	rsbs r0, r1, #0
	str r0, [sp, #0x28]
	rsbs r1, r2, #0
	cmp r0, #0
	beq _02009552
	subs r1, #1
_02009552:
	str r1, [sp, #0x2c]
	ldr r1, [sp, #0x28]
	ldr r2, [sp, #0x2c]
_02009558:
	adds r0, r1, #0
	adds r1, r2, #0
	add sp, #0x34
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02009568: .4byte 0x0000FFFF

	thumb_func_start sub_0200956C
sub_0200956C: @ 0x0200956C
	cmp r1, #0
	beq _020095F4
	push {r4}
	adds r4, r0, #0
	eors r4, r1
	mov ip, r4
	movs r3, #1
	movs r2, #0
	cmp r1, #0
	bpl _02009582
	rsbs r1, r1, #0
_02009582:
	cmp r0, #0
	bpl _02009588
	rsbs r0, r0, #0
_02009588:
	cmp r0, r1
	blo _020095E6
	movs r4, #1
	lsls r4, r4, #0x1c
_02009590:
	cmp r1, r4
	bhs _0200959E
	cmp r1, r0
	bhs _0200959E
	lsls r1, r1, #4
	lsls r3, r3, #4
	b _02009590
_0200959E:
	lsls r4, r4, #3
_020095A0:
	cmp r1, r4
	bhs _020095AE
	cmp r1, r0
	bhs _020095AE
	lsls r1, r1, #1
	lsls r3, r3, #1
	b _020095A0
_020095AE:
	cmp r0, r1
	blo _020095B6
	subs r0, r0, r1
	orrs r2, r3
_020095B6:
	lsrs r4, r1, #1
	cmp r0, r4
	blo _020095C2
	subs r0, r0, r4
	lsrs r4, r3, #1
	orrs r2, r4
_020095C2:
	lsrs r4, r1, #2
	cmp r0, r4
	blo _020095CE
	subs r0, r0, r4
	lsrs r4, r3, #2
	orrs r2, r4
_020095CE:
	lsrs r4, r1, #3
	cmp r0, r4
	blo _020095DA
	subs r0, r0, r4
	lsrs r4, r3, #3
	orrs r2, r4
_020095DA:
	cmp r0, #0
	beq _020095E6
	lsrs r3, r3, #4
	beq _020095E6
	lsrs r1, r1, #4
	b _020095AE
_020095E6:
	adds r0, r2, #0
	mov r4, ip
	cmp r4, #0
	bpl _020095F0
	rsbs r0, r0, #0
_020095F0:
	pop {r4}
	mov pc, lr
_020095F4:
	push {lr}
	bl sub_02009600
	movs r0, #0
	pop {pc}
	.align 2, 0

	thumb_func_start sub_02009600
sub_02009600: @ 0x02009600
	mov pc, lr
	.align 2, 0

	thumb_func_start sub_02009604
sub_02009604: @ 0x02009604
	cmp r1, #0
	beq _02009672
	movs r3, #1
	movs r2, #0
	push {r4}
	cmp r0, r1
	blo _0200966C
	movs r4, #1
	lsls r4, r4, #0x1c
_02009616:
	cmp r1, r4
	bhs _02009624
	cmp r1, r0
	bhs _02009624
	lsls r1, r1, #4
	lsls r3, r3, #4
	b _02009616
_02009624:
	lsls r4, r4, #3
_02009626:
	cmp r1, r4
	bhs _02009634
	cmp r1, r0
	bhs _02009634
	lsls r1, r1, #1
	lsls r3, r3, #1
	b _02009626
_02009634:
	cmp r0, r1
	blo _0200963C
	subs r0, r0, r1
	orrs r2, r3
_0200963C:
	lsrs r4, r1, #1
	cmp r0, r4
	blo _02009648
	subs r0, r0, r4
	lsrs r4, r3, #1
	orrs r2, r4
_02009648:
	lsrs r4, r1, #2
	cmp r0, r4
	blo _02009654
	subs r0, r0, r4
	lsrs r4, r3, #2
	orrs r2, r4
_02009654:
	lsrs r4, r1, #3
	cmp r0, r4
	blo _02009660
	subs r0, r0, r4
	lsrs r4, r3, #3
	orrs r2, r4
_02009660:
	cmp r0, #0
	beq _0200966C
	lsrs r3, r3, #4
	beq _0200966C
	lsrs r1, r1, #4
	b _02009634
_0200966C:
	adds r0, r2, #0
	pop {r4}
	mov pc, lr
_02009672:
	push {lr}
	bl sub_02009600
	movs r0, #0
	pop {pc}

	thumb_func_start sub_0200967C
sub_0200967C: @ 0x0200967C
	cmp r1, #0
	beq _02009732
	movs r3, #1
	cmp r0, r1
	bhs _02009688
	mov pc, lr
_02009688:
	push {r4}
	movs r4, #1
	lsls r4, r4, #0x1c
_0200968E:
	cmp r1, r4
	bhs _0200969C
	cmp r1, r0
	bhs _0200969C
	lsls r1, r1, #4
	lsls r3, r3, #4
	b _0200968E
_0200969C:
	lsls r4, r4, #3
_0200969E:
	cmp r1, r4
	bhs _020096AC
	cmp r1, r0
	bhs _020096AC
	lsls r1, r1, #1
	lsls r3, r3, #1
	b _0200969E
_020096AC:
	movs r2, #0
	cmp r0, r1
	blo _020096B4
	subs r0, r0, r1
_020096B4:
	lsrs r4, r1, #1
	cmp r0, r4
	blo _020096C6
	subs r0, r0, r4
	mov ip, r3
	movs r4, #1
	rors r3, r4
	orrs r2, r3
	mov r3, ip
_020096C6:
	lsrs r4, r1, #2
	cmp r0, r4
	blo _020096D8
	subs r0, r0, r4
	mov ip, r3
	movs r4, #2
	rors r3, r4
	orrs r2, r3
	mov r3, ip
_020096D8:
	lsrs r4, r1, #3
	cmp r0, r4
	blo _020096EA
	subs r0, r0, r4
	mov ip, r3
	movs r4, #3
	rors r3, r4
	orrs r2, r3
	mov r3, ip
_020096EA:
	mov ip, r3
	cmp r0, #0
	beq _020096F8
	lsrs r3, r3, #4
	beq _020096F8
	lsrs r1, r1, #4
	b _020096AC
_020096F8:
	movs r4, #0xe
	lsls r4, r4, #0x1c
	ands r2, r4
	bne _02009704
	pop {r4}
	mov pc, lr
_02009704:
	mov r3, ip
	movs r4, #3
	rors r3, r4
	tst r2, r3
	beq _02009712
	lsrs r4, r1, #3
	adds r0, r0, r4
_02009712:
	mov r3, ip
	movs r4, #2
	rors r3, r4
	tst r2, r3
	beq _02009720
	lsrs r4, r1, #2
	adds r0, r0, r4
_02009720:
	mov r3, ip
	movs r4, #1
	rors r3, r4
	tst r2, r3
	beq _0200972E
	lsrs r4, r1, #1
	adds r0, r0, r4
_0200972E:
	pop {r4}
	mov pc, lr
_02009732:
	push {lr}
	bl sub_02009600
	movs r0, #0
	pop {pc}

	thumb_func_start sub_0200973C
sub_0200973C: @ 0x0200973C
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r1, r0, #0
	ldr r4, [r1, #0xc]
	ldr r5, [r1, #0x10]
	ldr r7, [r1, #4]
	movs r6, #0
	movs r2, #0
	ldr r0, [r1]
	cmp r0, #1
	bhi _02009754
	movs r2, #1
_02009754:
	cmp r2, #0
	beq _02009774
	ldr r6, _02009768 @ =0x000007FF
	ldr r2, _0200976C @ =0x00000000
	ldr r3, _02009770 @ =0x00080000
	adds r0, r4, #0
	adds r1, r5, #0
	orrs r1, r3
	b _0200982C
	.align 2, 0
_02009768: .4byte 0x000007FF
_0200976C: .4byte 0x00000000
_02009770: .4byte 0x00080000
_02009774:
	movs r2, #0
	cmp r0, #4
	bne _0200977C
	movs r2, #1
_0200977C:
	cmp r2, #0
	bne _020097C8
	movs r2, #0
	cmp r0, #2
	bne _02009788
	movs r2, #1
_02009788:
	cmp r2, #0
	beq _02009792
	movs r4, #0
	movs r5, #0
	b _02009830
_02009792:
	adds r0, r5, #0
	orrs r0, r4
	cmp r0, #0
	beq _02009830
	ldr r2, [r1, #8]
	ldr r0, _020097B0 @ =0xFFFFFC02
	cmp r2, r0
	bge _020097C2
	subs r2, r0, r2
	cmp r2, #0x38
	ble _020097B4
	movs r4, #0
	movs r5, #0
	b _02009822
	.align 2, 0
_020097B0: .4byte 0xFFFFFC02
_020097B4:
	adds r1, r5, #0
	adds r0, r4, #0
	bl sub_0200AE24
	adds r5, r1, #0
	adds r4, r0, #0
	b _02009822
_020097C2:
	ldr r0, _020097D0 @ =0x000003FF
	cmp r2, r0
	ble _020097D8
_020097C8:
	ldr r6, _020097D4 @ =0x000007FF
	movs r4, #0
	movs r5, #0
	b _02009830
	.align 2, 0
_020097D0: .4byte 0x000003FF
_020097D4: .4byte 0x000007FF
_020097D8:
	ldr r0, _02009800 @ =0x000003FF
	adds r6, r2, r0
	movs r0, #0xff
	adds r1, r4, #0
	ands r1, r0
	movs r2, #0
	cmp r1, #0x80
	bne _02009804
	cmp r2, #0
	bne _02009804
	adds r0, #1
	adds r1, r4, #0
	ands r1, r0
	adds r0, r2, #0
	orrs r0, r1
	cmp r0, #0
	beq _0200980C
	movs r0, #0x80
	movs r1, #0
	b _02009808
	.align 2, 0
_02009800: .4byte 0x000003FF
_02009804:
	movs r0, #0x7f
	movs r1, #0
_02009808:
	adds r4, r4, r0
	adcs r5, r1
_0200980C:
	ldr r0, _02009870 @ =0x1FFFFFFF
	cmp r5, r0
	bls _02009822
	lsls r3, r5, #0x1f
	lsrs r2, r4, #1
	adds r0, r3, #0
	orrs r0, r2
	lsrs r1, r5, #1
	adds r5, r1, #0
	adds r4, r0, #0
	adds r6, #1
_02009822:
	lsls r3, r5, #0x18
	lsrs r2, r4, #8
	adds r0, r3, #0
	orrs r0, r2
	lsrs r1, r5, #8
_0200982C:
	adds r5, r1, #0
	adds r4, r0, #0
_02009830:
	str r4, [sp]
	ldr r2, _02009874 @ =0x000FFFFF
	ands r2, r5
	ldr r0, [sp, #4]
	ldr r1, _02009878 @ =0xFFF00000
	ands r0, r1
	orrs r0, r2
	str r0, [sp, #4]
	mov r2, sp
	ldr r1, _0200987C @ =0x000007FF
	adds r0, r1, #0
	ands r6, r0
	lsls r1, r6, #4
	ldr r0, _02009880 @ =0xFFFF800F
	ldrh r3, [r2, #6]
	ands r0, r3
	orrs r0, r1
	strh r0, [r2, #6]
	lsls r1, r7, #7
	movs r0, #0x7f
	ldrb r3, [r2, #7]
	ands r0, r3
	orrs r0, r1
	strb r0, [r2, #7]
	ldr r1, [sp]
	ldr r0, [sp, #4]
	str r0, [sp]
	str r1, [sp, #4]
	ldr r0, [sp]
	ldr r1, [sp, #4]
	add sp, #8
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02009870: .4byte 0x1FFFFFFF
_02009874: .4byte 0x000FFFFF
_02009878: .4byte 0xFFF00000
_0200987C: .4byte 0x000007FF
_02009880: .4byte 0xFFFF800F

	thumb_func_start sub_02009884
sub_02009884: @ 0x02009884
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r2, r0, #0
	adds r6, r1, #0
	ldr r1, [r2, #4]
	str r1, [sp]
	ldr r0, [r2]
	str r0, [sp, #4]
	mov r2, sp
	adds r4, r1, #0
	lsls r0, r0, #0xc
	lsrs r5, r0, #0xc
	ldrh r3, [r2, #6]
	lsls r0, r3, #0x11
	lsrs r3, r0, #0x15
	ldrb r2, [r2, #7]
	lsrs r0, r2, #7
	str r0, [r6, #4]
	cmp r3, #0
	bne _020098F8
	orrs r1, r5
	cmp r1, #0
	bne _020098B8
	movs r0, #2
	str r0, [r6]
	b _0200994C
_020098B8:
	ldr r0, _020098F0 @ =0xFFFFFC02
	str r0, [r6, #8]
	lsrs r3, r4, #0x18
	lsls r2, r5, #8
	adds r1, r3, #0
	orrs r1, r2
	lsls r0, r4, #8
	adds r5, r1, #0
	adds r4, r0, #0
	movs r0, #3
	str r0, [r6]
	ldr r0, _020098F4 @ =0x0FFFFFFF
	cmp r5, r0
	bhi _02009928
	adds r7, r0, #0
_020098D6:
	lsrs r3, r4, #0x1f
	lsls r2, r5, #1
	adds r1, r3, #0
	orrs r1, r2
	lsls r0, r4, #1
	adds r5, r1, #0
	adds r4, r0, #0
	ldr r0, [r6, #8]
	subs r0, #1
	str r0, [r6, #8]
	cmp r5, r7
	bls _020098D6
	b _02009928
	.align 2, 0
_020098F0: .4byte 0xFFFFFC02
_020098F4: .4byte 0x0FFFFFFF
_020098F8:
	ldr r0, _0200990C @ =0x000007FF
	cmp r3, r0
	bne _0200992E
	orrs r1, r5
	cmp r1, #0
	bne _02009910
	movs r0, #4
	str r0, [r6]
	b _0200994C
	.align 2, 0
_0200990C: .4byte 0x000007FF
_02009910:
	movs r2, #0x80
	lsls r2, r2, #0xc
	movs r0, #0
	adds r1, r5, #0
	ands r1, r2
	orrs r1, r0
	cmp r1, #0
	beq _02009926
	movs r0, #1
	str r0, [r6]
	b _02009928
_02009926:
	str r1, [r6]
_02009928:
	str r4, [r6, #0xc]
	str r5, [r6, #0x10]
	b _0200994C
_0200992E:
	ldr r1, _02009950 @ =0xFFFFFC01
	adds r0, r3, r1
	str r0, [r6, #8]
	movs r0, #3
	str r0, [r6]
	lsrs r3, r4, #0x18
	lsls r2, r5, #8
	adds r1, r3, #0
	orrs r1, r2
	lsls r0, r4, #8
	ldr r2, _02009954 @ =0x00000000
	ldr r3, _02009958 @ =0x10000000
	orrs r1, r3
	str r0, [r6, #0xc]
	str r1, [r6, #0x10]
_0200994C:
	add sp, #8
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02009950: .4byte 0xFFFFFC01
_02009954: .4byte 0x00000000
_02009958: .4byte 0x10000000

	thumb_func_start sub_0200995C
sub_0200995C: @ 0x0200995C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r3, r0, #0
	adds r4, r1, #0
	mov sl, r2
	movs r0, #0
	ldr r2, [r3]
	cmp r2, #1
	bhi _02009978
	movs r0, #1
_02009978:
	cmp r0, #0
	beq _02009980
_0200997C:
	adds r0, r3, #0
	b _02009BB8
_02009980:
	movs r1, #0
	ldr r0, [r4]
	cmp r0, #1
	bhi _0200998A
	movs r1, #1
_0200998A:
	cmp r1, #0
	bne _02009A02
	movs r1, #0
	cmp r2, #4
	bne _02009996
	movs r1, #1
_02009996:
	cmp r1, #0
	beq _020099B8
	movs r1, #0
	cmp r0, #4
	bne _020099A2
	movs r1, #1
_020099A2:
	cmp r1, #0
	beq _0200997C
	ldr r1, [r3, #4]
	ldr r0, [r4, #4]
	cmp r1, r0
	beq _0200997C
	ldr r0, _020099B4 @ =0x03006000
	b _02009BB8
	.align 2, 0
_020099B4: .4byte 0x03006000
_020099B8:
	movs r1, #0
	cmp r0, #4
	bne _020099C0
	movs r1, #1
_020099C0:
	cmp r1, #0
	bne _02009A02
	movs r1, #0
	cmp r0, #2
	bne _020099CC
	movs r1, #1
_020099CC:
	cmp r1, #0
	beq _020099F4
	movs r0, #0
	cmp r2, #2
	bne _020099D8
	movs r0, #1
_020099D8:
	cmp r0, #0
	beq _0200997C
	mov r1, sl
	adds r0, r3, #0
	ldm r0!, {r2, r5, r6}
	stm r1!, {r2, r5, r6}
	ldm r0!, {r2, r5}
	stm r1!, {r2, r5}
	ldr r0, [r3, #4]
	ldr r1, [r4, #4]
	ands r0, r1
	mov r6, sl
	str r0, [r6, #4]
	b _02009BB6
_020099F4:
	movs r1, #0
	ldr r0, [r3]
	cmp r0, #2
	bne _020099FE
	movs r1, #1
_020099FE:
	cmp r1, #0
	beq _02009A06
_02009A02:
	adds r0, r4, #0
	b _02009BB8
_02009A06:
	ldr r0, [r3, #8]
	mov sb, r0
	ldr r1, [r4, #8]
	mov r8, r1
	ldr r6, [r3, #0xc]
	ldr r7, [r3, #0x10]
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #0x10]
	str r0, [sp]
	str r1, [sp, #4]
	mov r1, sb
	mov r2, r8
	subs r0, r1, r2
	cmp r0, #0
	bge _02009A26
	rsbs r0, r0, #0
_02009A26:
	cmp r0, #0x3f
	bgt _02009AA4
	ldr r3, [r3, #4]
	mov ip, r3
	ldr r4, [r4, #4]
	str r4, [sp, #8]
	cmp sb, r8
	ble _02009A70
	mov r3, sb
	mov r4, r8
	subs r3, r3, r4
	mov r8, r3
_02009A3E:
	movs r5, #1
	rsbs r5, r5, #0
	add r8, r5
	ldr r2, [sp]
	movs r0, #1
	ands r2, r0
	movs r3, #0
	ldr r1, [sp, #4]
	lsls r5, r1, #0x1f
	ldr r0, [sp]
	lsrs r4, r0, #1
	adds r0, r5, #0
	orrs r0, r4
	adds r4, r1, #0
	lsrs r1, r4, #1
	adds r5, r2, #0
	orrs r5, r0
	str r5, [sp]
	adds r4, r3, #0
	orrs r4, r1
	str r4, [sp, #4]
	mov r5, r8
	cmp r5, #0
	bne _02009A3E
	mov r8, sb
_02009A70:
	cmp r8, sb
	ble _02009AC0
	mov r0, r8
	mov r1, sb
	subs r0, r0, r1
	mov sb, r0
_02009A7C:
	movs r2, #1
	rsbs r2, r2, #0
	add sb, r2
	movs r2, #1
	ands r2, r6
	movs r3, #0
	lsls r5, r7, #0x1f
	lsrs r4, r6, #1
	adds r0, r5, #0
	orrs r0, r4
	lsrs r1, r7, #1
	adds r6, r2, #0
	orrs r6, r0
	adds r7, r3, #0
	orrs r7, r1
	mov r3, sb
	cmp r3, #0
	bne _02009A7C
	mov sb, r8
	b _02009AC0
_02009AA4:
	cmp sb, r8
	ble _02009AB2
	movs r0, #0
	movs r1, #0
	str r0, [sp]
	str r1, [sp, #4]
	b _02009AB8
_02009AB2:
	mov sb, r8
	movs r6, #0
	movs r7, #0
_02009AB8:
	ldr r3, [r3, #4]
	mov ip, r3
	ldr r4, [r4, #4]
	str r4, [sp, #8]
_02009AC0:
	ldr r1, [sp, #8]
	cmp ip, r1
	beq _02009B68
	mov r2, ip
	cmp r2, #0
	beq _02009AE2
	adds r1, r7, #0
	adds r0, r6, #0
	bl sub_0200AEC8
	adds r3, r1, #0
	adds r2, r0, #0
	ldr r4, [sp]
	ldr r5, [sp, #4]
	adds r2, r2, r4
	adcs r3, r5
	b _02009AEE
_02009AE2:
	adds r3, r7, #0
	adds r2, r6, #0
	ldr r0, [sp]
	ldr r1, [sp, #4]
	subs r2, r2, r0
	sbcs r3, r1
_02009AEE:
	cmp r3, #0
	blt _02009B04
	movs r0, #0
	mov r1, sl
	str r0, [r1, #4]
	mov r4, sb
	str r4, [r1, #8]
	mov r5, sl
	str r2, [r5, #0xc]
	str r3, [r5, #0x10]
	b _02009B1C
_02009B04:
	movs r0, #1
	mov r6, sl
	str r0, [r6, #4]
	mov r0, sb
	str r0, [r6, #8]
	adds r1, r3, #0
	adds r0, r2, #0
	bl sub_0200AEC8
	mov r2, sl
	str r0, [r2, #0xc]
	str r1, [r2, #0x10]
_02009B1C:
	mov r4, sl
	ldr r2, [r4, #0xc]
	ldr r3, [r4, #0x10]
	movs r0, #1
	rsbs r0, r0, #0
	asrs r1, r0, #0x1f
_02009B28:
	adds r2, r2, r0
	adcs r3, r1
	ldr r0, _02009B64 @ =0x0FFFFFFF
	cmp r3, r0
	bhi _02009B80
	cmp r3, r0
	bne _02009B3E
	movs r0, #2
	rsbs r0, r0, #0
	cmp r2, r0
	bhi _02009B80
_02009B3E:
	mov r5, sl
	ldr r0, [r5, #0xc]
	ldr r1, [r5, #0x10]
	lsrs r3, r0, #0x1f
	lsls r2, r1, #1
	adds r1, r3, #0
	orrs r1, r2
	lsls r0, r0, #1
	mov r6, sl
	str r0, [r6, #0xc]
	str r1, [r6, #0x10]
	ldr r2, [r6, #8]
	subs r2, #1
	str r2, [r6, #8]
	movs r2, #1
	rsbs r2, r2, #0
	asrs r3, r2, #0x1f
	b _02009B28
	.align 2, 0
_02009B64: .4byte 0x0FFFFFFF
_02009B68:
	mov r0, ip
	mov r1, sl
	str r0, [r1, #4]
	mov r2, sb
	str r2, [r1, #8]
	ldr r3, [sp]
	ldr r4, [sp, #4]
	adds r6, r6, r3
	adcs r7, r4
	mov r4, sl
	str r6, [r4, #0xc]
	str r7, [r4, #0x10]
_02009B80:
	movs r0, #3
	mov r5, sl
	str r0, [r5]
	ldr r1, [r5, #0x10]
	ldr r0, _02009BC4 @ =0x1FFFFFFF
	cmp r1, r0
	bls _02009BB6
	ldr r4, [r5, #0xc]
	ldr r5, [r5, #0x10]
	movs r2, #1
	adds r0, r4, #0
	ands r0, r2
	movs r1, #0
	lsls r6, r5, #0x1f
	mov r8, r6
	lsrs r6, r4, #1
	mov r2, r8
	orrs r2, r6
	lsrs r3, r5, #1
	orrs r0, r2
	orrs r1, r3
	mov r2, sl
	str r0, [r2, #0xc]
	str r1, [r2, #0x10]
	ldr r0, [r2, #8]
	adds r0, #1
	str r0, [r2, #8]
_02009BB6:
	mov r0, sl
_02009BB8:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02009BC4: .4byte 0x1FFFFFFF

	thumb_func_start sub_02009BC8
sub_02009BC8: @ 0x02009BC8
	push {r4, lr}
	sub sp, #0x4c
	str r0, [sp, #0x3c]
	str r1, [sp, #0x40]
	str r2, [sp, #0x44]
	str r3, [sp, #0x48]
	add r0, sp, #0x3c
	mov r1, sp
	bl sub_02009884
	add r0, sp, #0x44
	add r4, sp, #0x14
	adds r1, r4, #0
	bl sub_02009884
	add r2, sp, #0x28
	mov r0, sp
	adds r1, r4, #0
	bl sub_0200995C
	bl sub_0200973C
	add sp, #0x4c
	pop {r4, pc}

	thumb_func_start sub_02009BF8
sub_02009BF8: @ 0x02009BF8
	push {r4, lr}
	sub sp, #0x4c
	str r0, [sp, #0x3c]
	str r1, [sp, #0x40]
	str r2, [sp, #0x44]
	str r3, [sp, #0x48]
	add r0, sp, #0x3c
	mov r1, sp
	bl sub_02009884
	add r0, sp, #0x44
	add r4, sp, #0x14
	adds r1, r4, #0
	bl sub_02009884
	ldr r0, [r4, #4]
	movs r1, #1
	eors r0, r1
	str r0, [r4, #4]
	add r2, sp, #0x28
	mov r0, sp
	adds r1, r4, #0
	bl sub_0200995C
	bl sub_0200973C
	add sp, #0x4c
	pop {r4, pc}

	thumb_func_start sub_02009C30
sub_02009C30: @ 0x02009C30
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x74
	str r0, [sp, #0x3c]
	str r1, [sp, #0x40]
	str r2, [sp, #0x44]
	str r3, [sp, #0x48]
	add r0, sp, #0x3c
	mov r1, sp
	bl sub_02009884
	add r0, sp, #0x44
	add r4, sp, #0x14
	adds r1, r4, #0
	bl sub_02009884
	mov r8, sp
	add r0, sp, #0x28
	mov sl, r0
	movs r0, #0
	ldr r1, [sp]
	cmp r1, #1
	bhi _02009C66
	movs r0, #1
_02009C66:
	cmp r0, #0
	bne _02009CCA
	movs r2, #0
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bhi _02009C74
	movs r2, #1
_02009C74:
	cmp r2, #0
	beq _02009C7C
	ldr r0, [sp, #4]
	b _02009CEC
_02009C7C:
	movs r2, #0
	cmp r1, #4
	bne _02009C84
	movs r2, #1
_02009C84:
	cmp r2, #0
	beq _02009C96
	movs r1, #0
	cmp r0, #2
	bne _02009C90
	movs r1, #1
_02009C90:
	cmp r1, #0
	bne _02009CAE
	b _02009CCA
_02009C96:
	movs r2, #0
	cmp r0, #4
	bne _02009C9E
	movs r2, #1
_02009C9E:
	cmp r2, #0
	beq _02009CBE
	movs r0, #0
	cmp r1, #2
	bne _02009CAA
	movs r0, #1
_02009CAA:
	cmp r0, #0
	beq _02009CB8
_02009CAE:
	ldr r0, _02009CB4 @ =0x03006000
	b _02009EB6
	.align 2, 0
_02009CB4: .4byte 0x03006000
_02009CB8:
	mov r1, r8
	ldr r0, [r1, #4]
	b _02009CEC
_02009CBE:
	movs r2, #0
	cmp r1, #2
	bne _02009CC6
	movs r2, #1
_02009CC6:
	cmp r2, #0
	beq _02009CDC
_02009CCA:
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x18]
	eors r0, r1
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r1, r1, #0x1f
	str r1, [sp, #4]
	mov r0, sp
	b _02009EB6
_02009CDC:
	movs r1, #0
	cmp r0, #2
	bne _02009CE4
	movs r1, #1
_02009CE4:
	cmp r1, #0
	beq _02009CFC
	mov r2, r8
	ldr r0, [r2, #4]
_02009CEC:
	ldr r1, [sp, #0x18]
	eors r0, r1
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r1, r1, #0x1f
	str r1, [sp, #0x18]
	adds r0, r4, #0
	b _02009EB6
_02009CFC:
	mov r4, r8
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #0x10]
	adds r6, r0, #0
	movs r7, #0
	str r1, [sp, #0x4c]
	movs r5, #0
	str r5, [sp, #0x50]
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x24]
	adds r4, r0, #0
	str r1, [sp, #0x54]
	movs r0, #0
	str r0, [sp, #0x58]
	adds r1, r5, #0
	adds r0, r4, #0
	adds r3, r7, #0
	adds r2, r6, #0
	bl sub_0200AE58
	str r0, [sp, #0x5c]
	str r1, [sp, #0x60]
	ldr r0, [sp, #0x54]
	ldr r1, [sp, #0x58]
	adds r3, r7, #0
	adds r2, r6, #0
	bl sub_0200AE58
	adds r7, r1, #0
	adds r6, r0, #0
	adds r1, r5, #0
	adds r0, r4, #0
	ldr r2, [sp, #0x4c]
	ldr r3, [sp, #0x50]
	bl sub_0200AE58
	adds r5, r1, #0
	adds r4, r0, #0
	ldr r0, [sp, #0x54]
	ldr r1, [sp, #0x58]
	ldr r2, [sp, #0x4c]
	ldr r3, [sp, #0x50]
	bl sub_0200AE58
	str r0, [sp, #0x64]
	str r1, [sp, #0x68]
	movs r1, #0
	movs r2, #0
	str r1, [sp, #0x6c]
	str r2, [sp, #0x70]
	adds r3, r7, #0
	adds r2, r6, #0
	adds r2, r2, r4
	adcs r3, r5
	cmp r7, r3
	bhi _02009D74
	cmp r7, r3
	bne _02009D7C
	cmp r6, r2
	bls _02009D7C
_02009D74:
	ldr r5, _02009ECC @ =0x00000001
	ldr r4, _02009EC8 @ =0x00000000
	str r4, [sp, #0x6c]
	str r5, [sp, #0x70]
_02009D7C:
	adds r1, r2, #0
	movs r6, #0
	adds r7, r1, #0
	ldr r0, [sp, #0x5c]
	ldr r1, [sp, #0x60]
	adds r6, r6, r0
	adcs r7, r1
	cmp r1, r7
	bhi _02009D98
	ldr r1, [sp, #0x60]
	cmp r1, r7
	bne _02009DA8
	cmp r0, r6
	bls _02009DA8
_02009D98:
	movs r0, #1
	movs r1, #0
	ldr r4, [sp, #0x6c]
	ldr r5, [sp, #0x70]
	adds r4, r4, r0
	adcs r5, r1
	str r4, [sp, #0x6c]
	str r5, [sp, #0x70]
_02009DA8:
	adds r0, r3, #0
	adds r2, r0, #0
	movs r3, #0
	adds r5, r3, #0
	adds r4, r2, #0
	ldr r0, [sp, #0x64]
	ldr r1, [sp, #0x68]
	adds r4, r4, r0
	adcs r5, r1
	ldr r1, [sp, #0x6c]
	ldr r2, [sp, #0x70]
	adds r4, r4, r1
	adcs r5, r2
	mov r0, r8
	ldr r2, [r0, #8]
	ldr r0, [sp, #0x1c]
	adds r2, r2, r0
	str r2, [sp, #0x30]
	mov r0, r8
	ldr r1, [r0, #4]
	ldr r0, [sp, #0x18]
	eors r1, r0
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	str r0, [sp, #0x2c]
	adds r2, #4
	str r2, [sp, #0x30]
	ldr r0, _02009ED0 @ =0x1FFFFFFF
	cmp r5, r0
	bls _02009E2A
	movs r1, #1
	mov sb, r1
	mov r8, r0
	mov ip, r2
_02009DEE:
	movs r2, #1
	add ip, r2
	mov r0, sb
	ands r0, r4
	cmp r0, #0
	beq _02009E14
	lsls r3, r7, #0x1f
	lsrs r2, r6, #1
	adds r0, r3, #0
	orrs r0, r2
	lsrs r1, r7, #1
	adds r7, r1, #0
	adds r6, r0, #0
	adds r0, r6, #0
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r1, r7
	adds r7, r1, #0
	adds r6, r0, #0
_02009E14:
	lsls r3, r5, #0x1f
	lsrs r2, r4, #1
	adds r0, r3, #0
	orrs r0, r2
	lsrs r1, r5, #1
	adds r5, r1, #0
	adds r4, r0, #0
	cmp r5, r8
	bhi _02009DEE
	mov r0, ip
	str r0, [sp, #0x30]
_02009E2A:
	ldr r0, _02009ED4 @ =0x0FFFFFFF
	cmp r5, r0
	bhi _02009E7C
	movs r1, #0x80
	lsls r1, r1, #0x18
	mov sb, r1
	mov r8, r0
	ldr r2, [sp, #0x30]
	mov ip, r2
_02009E3C:
	movs r0, #1
	rsbs r0, r0, #0
	add ip, r0
	lsrs r3, r4, #0x1f
	lsls r2, r5, #1
	adds r1, r3, #0
	orrs r1, r2
	lsls r0, r4, #1
	adds r5, r1, #0
	adds r4, r0, #0
	movs r0, #0
	mov r1, sb
	ands r1, r7
	orrs r0, r1
	cmp r0, #0
	beq _02009E66
	movs r0, #1
	orrs r0, r4
	adds r1, r5, #0
	adds r5, r1, #0
	adds r4, r0, #0
_02009E66:
	lsrs r3, r6, #0x1f
	lsls r2, r7, #1
	adds r1, r3, #0
	orrs r1, r2
	lsls r0, r6, #1
	adds r7, r1, #0
	adds r6, r0, #0
	cmp r5, r8
	bls _02009E3C
	mov r1, ip
	str r1, [sp, #0x30]
_02009E7C:
	movs r0, #0xff
	adds r1, r4, #0
	ands r1, r0
	movs r2, #0
	cmp r1, #0x80
	bne _02009EAA
	cmp r2, #0
	bne _02009EAA
	adds r0, #1
	adds r1, r4, #0
	ands r1, r0
	adds r0, r2, #0
	orrs r0, r1
	cmp r0, #0
	bne _02009EA2
	adds r0, r7, #0
	orrs r0, r6
	cmp r0, #0
	beq _02009EAA
_02009EA2:
	movs r0, #0x80
	movs r1, #0
	adds r4, r4, r0
	adcs r5, r1
_02009EAA:
	str r4, [sp, #0x34]
	str r5, [sp, #0x38]
	movs r0, #3
	mov r2, sl
	str r0, [r2]
	add r0, sp, #0x28
_02009EB6:
	bl sub_0200973C
	add sp, #0x74
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02009EC8: .4byte 0x00000000
_02009ECC: .4byte 0x00000001
_02009ED0: .4byte 0x1FFFFFFF
_02009ED4: .4byte 0x0FFFFFFF

	thumb_func_start sub_02009ED8
sub_02009ED8: @ 0x02009ED8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x48
	str r0, [sp, #0x28]
	str r1, [sp, #0x2c]
	str r2, [sp, #0x30]
	str r3, [sp, #0x34]
	add r0, sp, #0x28
	mov r1, sp
	bl sub_02009884
	add r0, sp, #0x30
	add r4, sp, #0x14
	adds r1, r4, #0
	bl sub_02009884
	mov ip, sp
	movs r0, #0
	ldr r3, [sp]
	cmp r3, #1
	bhi _02009F02
	movs r0, #1
_02009F02:
	cmp r0, #0
	beq _02009F0A
	mov r1, sp
	b _0200A04C
_02009F0A:
	movs r0, #0
	ldr r2, [sp, #0x14]
	adds r5, r2, #0
	cmp r2, #1
	bhi _02009F16
	movs r0, #1
_02009F16:
	cmp r0, #0
	beq _02009F1E
	adds r1, r4, #0
	b _0200A04C
_02009F1E:
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x18]
	eors r0, r1
	str r0, [sp, #4]
	movs r0, #0
	cmp r3, #4
	bne _02009F2E
	movs r0, #1
_02009F2E:
	cmp r0, #0
	bne _02009F3E
	movs r4, #0
	cmp r3, #2
	bne _02009F3A
	movs r4, #1
_02009F3A:
	cmp r4, #0
	beq _02009F50
_02009F3E:
	mov r1, ip
	ldr r0, [r1]
	cmp r0, r5
	beq _02009F48
	b _0200A04C
_02009F48:
	ldr r1, _02009F4C @ =0x03006000
	b _0200A04C
	.align 2, 0
_02009F4C: .4byte 0x03006000
_02009F50:
	movs r0, #0
	cmp r2, #4
	bne _02009F58
	movs r0, #1
_02009F58:
	cmp r0, #0
	beq _02009F6A
	movs r0, #0
	movs r1, #0
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	str r4, [sp, #8]
	mov r1, sp
	b _0200A04C
_02009F6A:
	movs r0, #0
	cmp r2, #2
	bne _02009F72
	movs r0, #1
_02009F72:
	cmp r0, #0
	beq _02009F7E
	movs r0, #4
	mov r2, ip
	str r0, [r2]
	b _0200A04A
_02009F7E:
	mov r3, ip
	ldr r1, [r3, #8]
	ldr r0, [sp, #0x1c]
	subs r6, r1, r0
	str r6, [r3, #8]
	ldr r4, [r3, #0xc]
	ldr r5, [r3, #0x10]
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x24]
	str r0, [sp, #0x38]
	str r1, [sp, #0x3c]
	cmp r1, r5
	bhi _02009FA2
	ldr r1, [sp, #0x3c]
	cmp r1, r5
	bne _02009FB6
	cmp r0, r4
	bls _02009FB6
_02009FA2:
	lsrs r3, r4, #0x1f
	lsls r2, r5, #1
	adds r1, r3, #0
	orrs r1, r2
	lsls r0, r4, #1
	adds r5, r1, #0
	adds r4, r0, #0
	subs r0, r6, #1
	mov r2, ip
	str r0, [r2, #8]
_02009FB6:
	ldr r7, _0200A05C @ =0x10000000
	ldr r6, _0200A058 @ =0x00000000
	movs r0, #0
	movs r1, #0
	str r0, [sp, #0x40]
	str r1, [sp, #0x44]
_02009FC2:
	ldr r1, [sp, #0x3c]
	cmp r1, r5
	bhi _02009FE6
	cmp r1, r5
	bne _02009FD2
	ldr r2, [sp, #0x38]
	cmp r2, r4
	bhi _02009FE6
_02009FD2:
	ldr r0, [sp, #0x40]
	orrs r0, r6
	ldr r1, [sp, #0x44]
	orrs r1, r7
	str r0, [sp, #0x40]
	str r1, [sp, #0x44]
	ldr r0, [sp, #0x38]
	ldr r1, [sp, #0x3c]
	subs r4, r4, r0
	sbcs r5, r1
_02009FE6:
	lsls r3, r7, #0x1f
	lsrs r2, r6, #1
	adds r0, r3, #0
	orrs r0, r2
	lsrs r1, r7, #1
	adds r7, r1, #0
	adds r6, r0, #0
	lsrs r3, r4, #0x1f
	lsls r2, r5, #1
	adds r1, r3, #0
	orrs r1, r2
	lsls r0, r4, #1
	adds r5, r1, #0
	adds r4, r0, #0
	adds r0, r7, #0
	orrs r0, r6
	cmp r0, #0
	bne _02009FC2
	movs r0, #0xff
	ldr r1, [sp, #0x40]
	ands r1, r0
	movs r2, #0
	cmp r1, #0x80
	bne _0200A040
	cmp r2, #0
	bne _0200A040
	adds r0, #1
	ldr r1, [sp, #0x40]
	ands r1, r0
	adds r0, r2, #0
	orrs r0, r1
	cmp r0, #0
	bne _0200A030
	adds r0, r5, #0
	orrs r0, r4
	cmp r0, #0
	beq _0200A040
_0200A030:
	movs r0, #0x80
	movs r1, #0
	ldr r2, [sp, #0x40]
	ldr r3, [sp, #0x44]
	adds r2, r2, r0
	adcs r3, r1
	str r2, [sp, #0x40]
	str r3, [sp, #0x44]
_0200A040:
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	mov r2, ip
	str r0, [r2, #0xc]
	str r1, [r2, #0x10]
_0200A04A:
	mov r1, ip
_0200A04C:
	adds r0, r1, #0
	bl sub_0200973C
	add sp, #0x48
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0200A058: .4byte 0x00000000
_0200A05C: .4byte 0x10000000

	thumb_func_start sub_0200A060
sub_0200A060: @ 0x0200A060
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	movs r0, #0
	ldr r1, [r5]
	cmp r1, #1
	bhi _0200A070
	movs r0, #1
_0200A070:
	cmp r0, #0
	bne _0200A082
	movs r0, #0
	ldr r2, [r6]
	cmp r2, #1
	bhi _0200A07E
	movs r0, #1
_0200A07E:
	cmp r0, #0
	beq _0200A086
_0200A082:
	movs r0, #1
	b _0200A15C
_0200A086:
	movs r0, #0
	cmp r1, #4
	bne _0200A08E
	movs r0, #1
_0200A08E:
	cmp r0, #0
	beq _0200A0A6
	movs r0, #0
	cmp r2, #4
	bne _0200A09A
	movs r0, #1
_0200A09A:
	cmp r0, #0
	beq _0200A0A6
	ldr r0, [r6, #4]
	ldr r1, [r5, #4]
	subs r0, r0, r1
	b _0200A15C
_0200A0A6:
	movs r1, #0
	ldr r0, [r5]
	cmp r0, #4
	bne _0200A0B0
	movs r1, #1
_0200A0B0:
	cmp r1, #0
	bne _0200A0FE
	movs r1, #0
	cmp r2, #4
	bne _0200A0BC
	movs r1, #1
_0200A0BC:
	cmp r1, #0
	beq _0200A0CE
_0200A0C0:
	ldr r0, [r6, #4]
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, #0
	beq _0200A108
	movs r1, #1
	b _0200A108
_0200A0CE:
	movs r1, #0
	cmp r0, #2
	bne _0200A0D6
	movs r1, #1
_0200A0D6:
	cmp r1, #0
	beq _0200A0E6
	movs r1, #0
	cmp r2, #2
	bne _0200A0E2
	movs r1, #1
_0200A0E2:
	cmp r1, #0
	bne _0200A15A
_0200A0E6:
	movs r1, #0
	cmp r0, #2
	bne _0200A0EE
	movs r1, #1
_0200A0EE:
	cmp r1, #0
	bne _0200A0C0
	movs r0, #0
	cmp r2, #2
	bne _0200A0FA
	movs r0, #1
_0200A0FA:
	cmp r0, #0
	beq _0200A10C
_0200A0FE:
	ldr r0, [r5, #4]
	movs r1, #1
	cmp r0, #0
	beq _0200A108
	subs r1, #2
_0200A108:
	adds r0, r1, #0
	b _0200A15C
_0200A10C:
	ldr r0, [r6, #4]
	ldr r4, [r5, #4]
	cmp r4, r0
	beq _0200A11E
_0200A114:
	movs r0, #1
	cmp r4, #0
	beq _0200A15C
	subs r0, #2
	b _0200A15C
_0200A11E:
	ldr r1, [r5, #8]
	ldr r0, [r6, #8]
	cmp r1, r0
	bgt _0200A114
	cmp r1, r0
	bge _0200A136
_0200A12A:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r4, #0
	beq _0200A15C
	movs r0, #1
	b _0200A15C
_0200A136:
	ldr r3, [r5, #0x10]
	ldr r2, [r6, #0x10]
	cmp r3, r2
	bhi _0200A114
	cmp r3, r2
	bne _0200A14A
	ldr r1, [r5, #0xc]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	bhi _0200A114
_0200A14A:
	cmp r2, r3
	bhi _0200A12A
	cmp r2, r3
	bne _0200A15A
	ldr r1, [r6, #0xc]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	bhi _0200A12A
_0200A15A:
	movs r0, #0
_0200A15C:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_0200A160
sub_0200A160: @ 0x0200A160
	push {r4, lr}
	sub sp, #0x38
	str r0, [sp, #0x28]
	str r1, [sp, #0x2c]
	str r2, [sp, #0x30]
	str r3, [sp, #0x34]
	add r0, sp, #0x28
	mov r1, sp
	bl sub_02009884
	add r0, sp, #0x30
	add r4, sp, #0x14
	adds r1, r4, #0
	bl sub_02009884
	mov r0, sp
	adds r1, r4, #0
	bl sub_0200A060
	add sp, #0x38
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0200A18C
sub_0200A18C: @ 0x0200A18C
	push {r4, lr}
	sub sp, #0x38
	str r0, [sp, #0x28]
	str r1, [sp, #0x2c]
	str r2, [sp, #0x30]
	str r3, [sp, #0x34]
	add r0, sp, #0x28
	mov r1, sp
	bl sub_02009884
	add r0, sp, #0x30
	add r4, sp, #0x14
	adds r1, r4, #0
	bl sub_02009884
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _0200A1B4
	movs r1, #1
_0200A1B4:
	cmp r1, #0
	bne _0200A1C6
	movs r1, #0
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bhi _0200A1C2
	movs r1, #1
_0200A1C2:
	cmp r1, #0
	beq _0200A1CA
_0200A1C6:
	movs r0, #1
	b _0200A1D2
_0200A1CA:
	mov r0, sp
	adds r1, r4, #0
	bl sub_0200A060
_0200A1D2:
	add sp, #0x38
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0200A1D8
sub_0200A1D8: @ 0x0200A1D8
	push {r4, lr}
	sub sp, #0x38
	str r0, [sp, #0x28]
	str r1, [sp, #0x2c]
	str r2, [sp, #0x30]
	str r3, [sp, #0x34]
	add r0, sp, #0x28
	mov r1, sp
	bl sub_02009884
	add r0, sp, #0x30
	add r4, sp, #0x14
	adds r1, r4, #0
	bl sub_02009884
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _0200A200
	movs r1, #1
_0200A200:
	cmp r1, #0
	bne _0200A212
	movs r1, #0
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bhi _0200A20E
	movs r1, #1
_0200A20E:
	cmp r1, #0
	beq _0200A216
_0200A212:
	movs r0, #1
	b _0200A21E
_0200A216:
	mov r0, sp
	adds r1, r4, #0
	bl sub_0200A060
_0200A21E:
	add sp, #0x38
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0200A224
sub_0200A224: @ 0x0200A224
	push {r4, lr}
	sub sp, #0x38
	str r0, [sp, #0x28]
	str r1, [sp, #0x2c]
	str r2, [sp, #0x30]
	str r3, [sp, #0x34]
	add r0, sp, #0x28
	mov r1, sp
	bl sub_02009884
	add r0, sp, #0x30
	add r4, sp, #0x14
	adds r1, r4, #0
	bl sub_02009884
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _0200A24C
	movs r1, #1
_0200A24C:
	cmp r1, #0
	bne _0200A25E
	movs r1, #0
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bhi _0200A25A
	movs r1, #1
_0200A25A:
	cmp r1, #0
	beq _0200A264
_0200A25E:
	movs r0, #1
	rsbs r0, r0, #0
	b _0200A26C
_0200A264:
	mov r0, sp
	adds r1, r4, #0
	bl sub_0200A060
_0200A26C:
	add sp, #0x38
	pop {r4, pc}

	thumb_func_start sub_0200A270
sub_0200A270: @ 0x0200A270
	push {r4, lr}
	sub sp, #0x38
	str r0, [sp, #0x28]
	str r1, [sp, #0x2c]
	str r2, [sp, #0x30]
	str r3, [sp, #0x34]
	add r0, sp, #0x28
	mov r1, sp
	bl sub_02009884
	add r0, sp, #0x30
	add r4, sp, #0x14
	adds r1, r4, #0
	bl sub_02009884
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _0200A298
	movs r1, #1
_0200A298:
	cmp r1, #0
	bne _0200A2AA
	movs r1, #0
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bhi _0200A2A6
	movs r1, #1
_0200A2A6:
	cmp r1, #0
	beq _0200A2B0
_0200A2AA:
	movs r0, #1
	rsbs r0, r0, #0
	b _0200A2B8
_0200A2B0:
	mov r0, sp
	adds r1, r4, #0
	bl sub_0200A060
_0200A2B8:
	add sp, #0x38
	pop {r4, pc}

	thumb_func_start sub_0200A2BC
sub_0200A2BC: @ 0x0200A2BC
	push {r4, lr}
	sub sp, #0x38
	str r0, [sp, #0x28]
	str r1, [sp, #0x2c]
	str r2, [sp, #0x30]
	str r3, [sp, #0x34]
	add r0, sp, #0x28
	mov r1, sp
	bl sub_02009884
	add r0, sp, #0x30
	add r4, sp, #0x14
	adds r1, r4, #0
	bl sub_02009884
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _0200A2E4
	movs r1, #1
_0200A2E4:
	cmp r1, #0
	bne _0200A2F6
	movs r1, #0
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bhi _0200A2F2
	movs r1, #1
_0200A2F2:
	cmp r1, #0
	beq _0200A2FA
_0200A2F6:
	movs r0, #1
	b _0200A302
_0200A2FA:
	mov r0, sp
	adds r1, r4, #0
	bl sub_0200A060
_0200A302:
	add sp, #0x38
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0200A308
sub_0200A308: @ 0x0200A308
	push {r4, lr}
	sub sp, #0x38
	str r0, [sp, #0x28]
	str r1, [sp, #0x2c]
	str r2, [sp, #0x30]
	str r3, [sp, #0x34]
	add r0, sp, #0x28
	mov r1, sp
	bl sub_02009884
	add r0, sp, #0x30
	add r4, sp, #0x14
	adds r1, r4, #0
	bl sub_02009884
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _0200A330
	movs r1, #1
_0200A330:
	cmp r1, #0
	bne _0200A342
	movs r1, #0
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bhi _0200A33E
	movs r1, #1
_0200A33E:
	cmp r1, #0
	beq _0200A346
_0200A342:
	movs r0, #1
	b _0200A34E
_0200A346:
	mov r0, sp
	adds r1, r4, #0
	bl sub_0200A060
_0200A34E:
	add sp, #0x38
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0200A354
sub_0200A354: @ 0x0200A354
	push {r4, r5, lr}
	sub sp, #0x14
	adds r2, r0, #0
	movs r0, #3
	str r0, [sp]
	lsrs r1, r2, #0x1f
	str r1, [sp, #4]
	cmp r2, #0
	bne _0200A36C
	movs r0, #2
	str r0, [sp]
	b _0200A3C2
_0200A36C:
	movs r0, #0x3c
	str r0, [sp, #8]
	cmp r1, #0
	beq _0200A392
	movs r0, #0x80
	lsls r0, r0, #0x18
	cmp r2, r0
	bne _0200A38C
	ldr r1, _0200A388 @ =0x00000000
	ldr r0, _0200A384 @ =0xC1E00000
	b _0200A3C8
	.align 2, 0
_0200A384: .4byte 0xC1E00000
_0200A388: .4byte 0x00000000
_0200A38C:
	rsbs r0, r2, #0
	asrs r1, r0, #0x1f
	b _0200A396
_0200A392:
	adds r0, r2, #0
	asrs r1, r2, #0x1f
_0200A396:
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	ldr r0, [sp, #0x10]
	ldr r1, _0200A3CC @ =0x0FFFFFFF
	cmp r0, r1
	bhi _0200A3C2
	adds r5, r1, #0
	ldr r4, [sp, #8]
_0200A3A6:
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	lsrs r3, r0, #0x1f
	lsls r2, r1, #1
	adds r1, r3, #0
	orrs r1, r2
	lsls r0, r0, #1
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	subs r4, #1
	ldr r0, [sp, #0x10]
	cmp r0, r5
	bls _0200A3A6
	str r4, [sp, #8]
_0200A3C2:
	mov r0, sp
	bl sub_0200973C
_0200A3C8:
	add sp, #0x14
	pop {r4, r5, pc}
	.align 2, 0
_0200A3CC: .4byte 0x0FFFFFFF

	thumb_func_start sub_0200A3D0
sub_0200A3D0: @ 0x0200A3D0
	push {lr}
	sub sp, #0x1c
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	add r0, sp, #0x14
	mov r1, sp
	bl sub_02009884
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #2
	bne _0200A3EA
	movs r1, #1
_0200A3EA:
	cmp r1, #0
	bne _0200A41E
	movs r1, #0
	cmp r0, #1
	bhi _0200A3F6
	movs r1, #1
_0200A3F6:
	cmp r1, #0
	bne _0200A41E
	movs r1, #0
	cmp r0, #4
	bne _0200A402
	movs r1, #1
_0200A402:
	cmp r1, #0
	beq _0200A418
_0200A406:
	ldr r0, [sp, #4]
	ldr r1, _0200A414 @ =0x7FFFFFFF
	cmp r0, #0
	beq _0200A43C
	adds r1, #1
	b _0200A43C
	.align 2, 0
_0200A414: .4byte 0x7FFFFFFF
_0200A418:
	ldr r0, [sp, #8]
	cmp r0, #0
	bge _0200A422
_0200A41E:
	movs r0, #0
	b _0200A43E
_0200A422:
	cmp r0, #0x1e
	bgt _0200A406
	movs r2, #0x3c
	subs r2, r2, r0
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	bl sub_0200AE24
	adds r1, r0, #0
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _0200A43C
	rsbs r1, r1, #0
_0200A43C:
	adds r0, r1, #0
_0200A43E:
	add sp, #0x1c
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0200A444
sub_0200A444: @ 0x0200A444
	push {lr}
	sub sp, #0x1c
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	add r0, sp, #0x14
	mov r1, sp
	bl sub_02009884
	movs r1, #0
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _0200A45E
	movs r1, #1
_0200A45E:
	str r1, [sp, #4]
	mov r0, sp
	bl sub_0200973C
	add sp, #0x1c
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0200A46C
sub_0200A46C: @ 0x0200A46C
	sub sp, #4
	push {r4, lr}
	sub sp, #0x14
	str r3, [sp, #0x1c]
	ldr r3, [sp, #0x1c]
	ldr r4, [sp, #0x20]
	str r0, [sp]
	str r1, [sp, #4]
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	str r4, [sp, #0x10]
	mov r0, sp
	bl sub_0200973C
	add sp, #0x14
	pop {r4}
	pop {r3}
	add sp, #4
	bx r3
	.align 2, 0

	thumb_func_start sub_0200A494
sub_0200A494: @ 0x0200A494
	push {r4, r5, lr}
	sub sp, #0x1c
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	add r0, sp, #0x14
	mov r1, sp
	bl sub_02009884
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x10]
	lsls r5, r3, #2
	lsrs r4, r2, #0x1e
	adds r0, r5, #0
	orrs r0, r4
	adds r5, r0, #0
	ldr r4, _0200A4D4 @ =0x3FFFFFFF
	adds r0, r2, #0
	ands r0, r4
	movs r1, #0
	orrs r0, r1
	cmp r0, #0
	beq _0200A4C4
	movs r0, #1
	orrs r5, r0
_0200A4C4:
	ldr r0, [sp]
	ldr r1, [sp, #4]
	ldr r2, [sp, #8]
	adds r3, r5, #0
	bl sub_0200ADE0
	add sp, #0x1c
	pop {r4, r5, pc}
	.align 2, 0
_0200A4D4: .4byte 0x3FFFFFFF

	thumb_func_start sub_0200A4D8
sub_0200A4D8: @ 0x0200A4D8
	push {r4, r5, r6, lr}
	ldr r2, [r0, #0xc]
	ldr r6, [r0, #4]
	movs r5, #0
	movs r1, #0
	ldr r3, [r0]
	cmp r3, #1
	bhi _0200A4EA
	movs r1, #1
_0200A4EA:
	cmp r1, #0
	beq _0200A4F8
	movs r5, #0xff
	movs r0, #0x80
	lsls r0, r0, #0xd
	orrs r2, r0
	b _0200A55E
_0200A4F8:
	movs r1, #0
	cmp r3, #4
	bne _0200A500
	movs r1, #1
_0200A500:
	cmp r1, #0
	bne _0200A534
	movs r1, #0
	cmp r3, #2
	bne _0200A50C
	movs r1, #1
_0200A50C:
	cmp r1, #0
	beq _0200A514
	movs r2, #0
	b _0200A55E
_0200A514:
	cmp r2, #0
	beq _0200A55E
	ldr r0, [r0, #8]
	movs r3, #0x7e
	rsbs r3, r3, #0
	cmp r0, r3
	bge _0200A530
	subs r0, r3, r0
	cmp r0, #0x19
	ble _0200A52C
	movs r2, #0
	b _0200A55C
_0200A52C:
	lsrs r2, r0
	b _0200A55C
_0200A530:
	cmp r0, #0x7f
	ble _0200A53A
_0200A534:
	movs r5, #0xff
	movs r2, #0
	b _0200A55E
_0200A53A:
	adds r5, r0, #0
	adds r5, #0x7f
	movs r0, #0x7f
	ands r0, r2
	cmp r0, #0x40
	bne _0200A552
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	beq _0200A554
	adds r2, #0x40
	b _0200A554
_0200A552:
	adds r2, #0x3f
_0200A554:
	cmp r2, #0
	bge _0200A55C
	lsrs r2, r2, #1
	adds r5, #1
_0200A55C:
	lsrs r2, r2, #7
_0200A55E:
	ldr r0, _0200A580 @ =0x007FFFFF
	ands r2, r0
	ldr r0, _0200A584 @ =0xFF800000
	ands r4, r0
	orrs r4, r2
	movs r0, #0xff
	ands r5, r0
	lsls r1, r5, #0x17
	ldr r0, _0200A588 @ =0x807FFFFF
	ands r4, r0
	orrs r4, r1
	lsls r1, r6, #0x1f
	ldr r0, _0200A58C @ =0x7FFFFFFF
	ands r4, r0
	orrs r4, r1
	adds r0, r4, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_0200A580: .4byte 0x007FFFFF
_0200A584: .4byte 0xFF800000
_0200A588: .4byte 0x807FFFFF
_0200A58C: .4byte 0x7FFFFFFF

	thumb_func_start sub_0200A590
sub_0200A590: @ 0x0200A590
	push {r4, lr}
	adds r3, r1, #0
	ldr r0, [r0]
	lsls r1, r0, #9
	lsrs r2, r1, #9
	lsls r1, r0, #1
	lsrs r1, r1, #0x18
	lsrs r0, r0, #0x1f
	str r0, [r3, #4]
	cmp r1, #0
	bne _0200A5D4
	cmp r2, #0
	bne _0200A5B0
	movs r0, #2
	str r0, [r3]
	b _0200A608
_0200A5B0:
	adds r4, r1, #0
	subs r4, #0x7e
	str r4, [r3, #8]
	lsls r2, r2, #7
	movs r0, #3
	str r0, [r3]
	ldr r1, _0200A5D0 @ =0x3FFFFFFF
	cmp r2, r1
	bhi _0200A5F0
	adds r0, r4, #0
_0200A5C4:
	lsls r2, r2, #1
	subs r0, #1
	cmp r2, r1
	bls _0200A5C4
	str r0, [r3, #8]
	b _0200A5F0
	.align 2, 0
_0200A5D0: .4byte 0x3FFFFFFF
_0200A5D4:
	cmp r1, #0xff
	bne _0200A5F4
	cmp r2, #0
	bne _0200A5E2
	movs r0, #4
	str r0, [r3]
	b _0200A608
_0200A5E2:
	movs r0, #0x80
	lsls r0, r0, #0xd
	ands r0, r2
	cmp r0, #0
	beq _0200A5EE
	movs r0, #1
_0200A5EE:
	str r0, [r3]
_0200A5F0:
	str r2, [r3, #0xc]
	b _0200A608
_0200A5F4:
	adds r0, r1, #0
	subs r0, #0x7f
	str r0, [r3, #8]
	movs r0, #3
	str r0, [r3]
	lsls r0, r2, #7
	movs r1, #0x80
	lsls r1, r1, #0x17
	orrs r0, r1
	str r0, [r3, #0xc]
_0200A608:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0200A60C
sub_0200A60C: @ 0x0200A60C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	adds r7, r1, #0
	adds r5, r2, #0
	movs r0, #0
	ldr r2, [r6]
	cmp r2, #1
	bhi _0200A622
	movs r0, #1
_0200A622:
	cmp r0, #0
	beq _0200A62A
_0200A626:
	adds r0, r6, #0
	b _0200A780
_0200A62A:
	movs r1, #0
	ldr r0, [r7]
	cmp r0, #1
	bhi _0200A634
	movs r1, #1
_0200A634:
	cmp r1, #0
	bne _0200A6A8
	movs r1, #0
	cmp r2, #4
	bne _0200A640
	movs r1, #1
_0200A640:
	cmp r1, #0
	beq _0200A660
	movs r1, #0
	cmp r0, #4
	bne _0200A64C
	movs r1, #1
_0200A64C:
	cmp r1, #0
	beq _0200A626
	ldr r1, [r6, #4]
	ldr r0, [r7, #4]
	cmp r1, r0
	beq _0200A626
	ldr r0, _0200A65C @ =0x03006018
	b _0200A780
	.align 2, 0
_0200A65C: .4byte 0x03006018
_0200A660:
	movs r1, #0
	cmp r0, #4
	bne _0200A668
	movs r1, #1
_0200A668:
	cmp r1, #0
	bne _0200A6A8
	movs r1, #0
	cmp r0, #2
	bne _0200A674
	movs r1, #1
_0200A674:
	cmp r1, #0
	beq _0200A69A
	movs r0, #0
	cmp r2, #2
	bne _0200A680
	movs r0, #1
_0200A680:
	cmp r0, #0
	beq _0200A626
	adds r1, r5, #0
	adds r0, r6, #0
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldr r0, [r0]
	str r0, [r1]
	ldr r0, [r6, #4]
	ldr r1, [r7, #4]
	ands r0, r1
	str r0, [r5, #4]
	b _0200A77E
_0200A69A:
	movs r1, #0
	ldr r0, [r6]
	cmp r0, #2
	bne _0200A6A4
	movs r1, #1
_0200A6A4:
	cmp r1, #0
	beq _0200A6AC
_0200A6A8:
	adds r0, r7, #0
	b _0200A780
_0200A6AC:
	ldr r1, [r6, #8]
	ldr r3, [r7, #8]
	ldr r2, [r6, #0xc]
	ldr r4, [r7, #0xc]
	subs r0, r1, r3
	cmp r0, #0
	bge _0200A6BC
	rsbs r0, r0, #0
_0200A6BC:
	cmp r0, #0x1f
	bgt _0200A700
	ldr r6, [r6, #4]
	ldr r7, [r7, #4]
	mov r8, r7
	cmp r1, r3
	ble _0200A6E2
	movs r7, #1
	mov ip, r7
	subs r3, r1, r3
_0200A6D0:
	subs r3, #1
	adds r0, r4, #0
	mov r7, ip
	ands r0, r7
	lsrs r4, r4, #1
	orrs r4, r0
	cmp r3, #0
	bne _0200A6D0
	adds r3, r1, #0
_0200A6E2:
	cmp r3, r1
	ble _0200A712
	movs r0, #1
	mov ip, r0
	subs r1, r3, r1
_0200A6EC:
	subs r1, #1
	adds r0, r2, #0
	mov r7, ip
	ands r0, r7
	lsrs r2, r2, #1
	orrs r2, r0
	cmp r1, #0
	bne _0200A6EC
	adds r1, r3, #0
	b _0200A712
_0200A700:
	cmp r1, r3
	ble _0200A708
	movs r4, #0
	b _0200A70C
_0200A708:
	adds r1, r3, #0
	movs r2, #0
_0200A70C:
	ldr r6, [r6, #4]
	ldr r7, [r7, #4]
	mov r8, r7
_0200A712:
	cmp r6, r8
	beq _0200A75C
	cmp r6, #0
	beq _0200A71E
	subs r3, r4, r2
	b _0200A720
_0200A71E:
	subs r3, r2, r4
_0200A720:
	cmp r3, #0
	blt _0200A72E
	movs r0, #0
	str r0, [r5, #4]
	str r1, [r5, #8]
	str r3, [r5, #0xc]
	b _0200A738
_0200A72E:
	movs r0, #1
	str r0, [r5, #4]
	str r1, [r5, #8]
	rsbs r0, r3, #0
	str r0, [r5, #0xc]
_0200A738:
	ldr r1, [r5, #0xc]
	subs r0, r1, #1
	ldr r2, _0200A758 @ =0x3FFFFFFE
	cmp r0, r2
	bhi _0200A764
_0200A742:
	lsls r0, r1, #1
	str r0, [r5, #0xc]
	ldr r1, [r5, #8]
	subs r1, #1
	str r1, [r5, #8]
	adds r1, r0, #0
	subs r0, r1, #1
	cmp r0, r2
	bls _0200A742
	b _0200A764
	.align 2, 0
_0200A758: .4byte 0x3FFFFFFE
_0200A75C:
	str r6, [r5, #4]
	str r1, [r5, #8]
	adds r0, r2, r4
	str r0, [r5, #0xc]
_0200A764:
	movs r0, #3
	str r0, [r5]
	ldr r1, [r5, #0xc]
	cmp r1, #0
	bge _0200A77E
	movs r0, #1
	ands r0, r1
	lsrs r1, r1, #1
	orrs r0, r1
	str r0, [r5, #0xc]
	ldr r0, [r5, #8]
	adds r0, #1
	str r0, [r5, #8]
_0200A77E:
	adds r0, r5, #0
_0200A780:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_0200A788
sub_0200A788: @ 0x0200A788
	push {r4, lr}
	sub sp, #0x38
	str r0, [sp, #0x30]
	str r1, [sp, #0x34]
	add r0, sp, #0x30
	mov r1, sp
	bl sub_0200A590
	add r0, sp, #0x34
	add r4, sp, #0x10
	adds r1, r4, #0
	bl sub_0200A590
	add r2, sp, #0x20
	mov r0, sp
	adds r1, r4, #0
	bl sub_0200A60C
	bl sub_0200A4D8
	add sp, #0x38
	pop {r4, pc}

	thumb_func_start sub_0200A7B4
sub_0200A7B4: @ 0x0200A7B4
	push {r4, lr}
	sub sp, #0x38
	str r0, [sp, #0x30]
	str r1, [sp, #0x34]
	add r0, sp, #0x30
	mov r1, sp
	bl sub_0200A590
	add r0, sp, #0x34
	add r4, sp, #0x10
	adds r1, r4, #0
	bl sub_0200A590
	ldr r0, [r4, #4]
	movs r1, #1
	eors r0, r1
	str r0, [r4, #4]
	add r2, sp, #0x20
	mov r0, sp
	adds r1, r4, #0
	bl sub_0200A60C
	bl sub_0200A4D8
	add sp, #0x38
	pop {r4, pc}

	thumb_func_start sub_0200A7E8
sub_0200A7E8: @ 0x0200A7E8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x38
	str r0, [sp, #0x30]
	str r1, [sp, #0x34]
	add r0, sp, #0x30
	mov r1, sp
	bl sub_0200A590
	add r0, sp, #0x34
	add r4, sp, #0x10
	adds r1, r4, #0
	bl sub_0200A590
	mov r7, sp
	add r0, sp, #0x20
	mov r8, r0
	movs r0, #0
	ldr r1, [sp]
	mov sb, r8
	cmp r1, #1
	bhi _0200A81A
	movs r0, #1
_0200A81A:
	cmp r0, #0
	bne _0200A878
	movs r2, #0
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bhi _0200A828
	movs r2, #1
_0200A828:
	cmp r2, #0
	beq _0200A830
	ldr r0, [sp, #4]
	b _0200A898
_0200A830:
	movs r2, #0
	cmp r1, #4
	bne _0200A838
	movs r2, #1
_0200A838:
	cmp r2, #0
	beq _0200A84A
	movs r1, #0
	cmp r0, #2
	bne _0200A844
	movs r1, #1
_0200A844:
	cmp r1, #0
	bne _0200A862
	b _0200A878
_0200A84A:
	movs r2, #0
	cmp r0, #4
	bne _0200A852
	movs r2, #1
_0200A852:
	cmp r2, #0
	beq _0200A86C
	movs r0, #0
	cmp r1, #2
	bne _0200A85E
	movs r0, #1
_0200A85E:
	cmp r0, #0
	beq _0200A896
_0200A862:
	ldr r0, _0200A868 @ =0x03006018
	b _0200A93A
	.align 2, 0
_0200A868: .4byte 0x03006018
_0200A86C:
	movs r2, #0
	cmp r1, #2
	bne _0200A874
	movs r2, #1
_0200A874:
	cmp r2, #0
	beq _0200A88A
_0200A878:
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x14]
	eors r0, r1
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r1, r1, #0x1f
	str r1, [sp, #4]
	mov r0, sp
	b _0200A93A
_0200A88A:
	movs r1, #0
	cmp r0, #2
	bne _0200A892
	movs r1, #1
_0200A892:
	cmp r1, #0
	beq _0200A8A8
_0200A896:
	ldr r0, [r7, #4]
_0200A898:
	ldr r1, [sp, #0x14]
	eors r0, r1
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r1, r1, #0x1f
	str r1, [sp, #0x14]
	adds r0, r4, #0
	b _0200A93A
_0200A8A8:
	ldr r0, [r7, #0xc]
	movs r1, #0
	ldr r2, [sp, #0x1c]
	movs r3, #0
	bl sub_0200AE58
	adds r2, r1, #0
	adds r5, r2, #0
	adds r6, r0, #0
	ldr r4, [r7, #8]
	ldr r0, [sp, #0x18]
	adds r4, r4, r0
	str r4, [sp, #0x28]
	ldr r1, [r7, #4]
	ldr r0, [sp, #0x14]
	eors r1, r0
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	str r0, [sp, #0x24]
	adds r4, #2
	str r4, [sp, #0x28]
	cmp r2, #0
	bge _0200A8F4
	movs r2, #1
	movs r1, #0x80
	lsls r1, r1, #0x18
_0200A8DE:
	adds r4, #1
	adds r0, r5, #0
	ands r0, r2
	cmp r0, #0
	beq _0200A8EC
	lsrs r6, r6, #1
	orrs r6, r1
_0200A8EC:
	lsrs r5, r5, #1
	cmp r5, #0
	blt _0200A8DE
	str r4, [sp, #0x28]
_0200A8F4:
	ldr r0, _0200A948 @ =0x3FFFFFFF
	cmp r5, r0
	bhi _0200A91A
	movs r4, #0x80
	lsls r4, r4, #0x18
	movs r3, #1
	adds r2, r0, #0
	ldr r1, [sp, #0x28]
_0200A904:
	subs r1, #1
	lsls r5, r5, #1
	adds r0, r6, #0
	ands r0, r4
	cmp r0, #0
	beq _0200A912
	orrs r5, r3
_0200A912:
	lsls r6, r6, #1
	cmp r5, r2
	bls _0200A904
	str r1, [sp, #0x28]
_0200A91A:
	movs r0, #0x7f
	ands r0, r5
	cmp r0, #0x40
	bne _0200A930
	movs r0, #0x80
	ands r0, r5
	cmp r0, #0
	bne _0200A92E
	cmp r6, #0
	beq _0200A930
_0200A92E:
	adds r5, #0x40
_0200A930:
	str r5, [sp, #0x2c]
	movs r0, #3
	mov r1, r8
	str r0, [r1]
	mov r0, sb
_0200A93A:
	bl sub_0200A4D8
	add sp, #0x38
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0200A948: .4byte 0x3FFFFFFF

	thumb_func_start sub_0200A94C
sub_0200A94C: @ 0x0200A94C
	push {r4, r5, r6, lr}
	sub sp, #0x28
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	add r0, sp, #0x20
	mov r1, sp
	bl sub_0200A590
	add r0, sp, #0x24
	add r5, sp, #0x10
	adds r1, r5, #0
	bl sub_0200A590
	mov r4, sp
	movs r0, #0
	ldr r3, [sp]
	cmp r3, #1
	bhi _0200A972
	movs r0, #1
_0200A972:
	cmp r0, #0
	beq _0200A97A
	mov r1, sp
	b _0200AA2C
_0200A97A:
	movs r0, #0
	ldr r2, [sp, #0x10]
	adds r6, r2, #0
	cmp r2, #1
	bhi _0200A986
	movs r0, #1
_0200A986:
	cmp r0, #0
	beq _0200A98E
	adds r1, r5, #0
	b _0200AA2C
_0200A98E:
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x14]
	eors r0, r1
	str r0, [sp, #4]
	movs r0, #0
	cmp r3, #4
	bne _0200A99E
	movs r0, #1
_0200A99E:
	cmp r0, #0
	bne _0200A9AE
	movs r0, #0
	cmp r3, #2
	bne _0200A9AA
	movs r0, #1
_0200A9AA:
	cmp r0, #0
	beq _0200A9C0
_0200A9AE:
	ldr r0, [r4]
	adds r1, r4, #0
	cmp r0, r6
	bne _0200AA2C
	ldr r1, _0200A9BC @ =0x03006018
	b _0200AA2C
	.align 2, 0
_0200A9BC: .4byte 0x03006018
_0200A9C0:
	movs r1, #0
	cmp r2, #4
	bne _0200A9C8
	movs r1, #1
_0200A9C8:
	cmp r1, #0
	beq _0200A9D4
	str r0, [sp, #0xc]
	str r0, [sp, #8]
	mov r1, sp
	b _0200AA2C
_0200A9D4:
	movs r0, #0
	cmp r2, #2
	bne _0200A9DC
	movs r0, #1
_0200A9DC:
	cmp r0, #0
	beq _0200A9E6
	movs r0, #4
	str r0, [r4]
	b _0200AA2A
_0200A9E6:
	ldr r1, [r4, #8]
	ldr r0, [sp, #0x18]
	subs r0, r1, r0
	str r0, [r4, #8]
	ldr r2, [r4, #0xc]
	ldr r3, [sp, #0x1c]
	cmp r2, r3
	bhs _0200A9FC
	lsls r2, r2, #1
	subs r0, #1
	str r0, [r4, #8]
_0200A9FC:
	movs r0, #0x80
	lsls r0, r0, #0x17
	movs r1, #0
_0200AA02:
	cmp r2, r3
	blo _0200AA0A
	orrs r1, r0
	subs r2, r2, r3
_0200AA0A:
	lsrs r0, r0, #1
	lsls r2, r2, #1
	cmp r0, #0
	bne _0200AA02
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0x40
	bne _0200AA28
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0200AA26
	cmp r2, #0
	beq _0200AA28
_0200AA26:
	adds r1, #0x40
_0200AA28:
	str r1, [r4, #0xc]
_0200AA2A:
	adds r1, r4, #0
_0200AA2C:
	adds r0, r1, #0
	bl sub_0200A4D8
	add sp, #0x28
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_0200AA38
sub_0200AA38: @ 0x0200AA38
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	ldr r2, [r4]
	cmp r2, #1
	bhi _0200AA46
	movs r0, #1
_0200AA46:
	cmp r0, #0
	bne _0200AA58
	movs r0, #0
	ldr r3, [r1]
	cmp r3, #1
	bhi _0200AA54
	movs r0, #1
_0200AA54:
	cmp r0, #0
	beq _0200AA5C
_0200AA58:
	movs r0, #1
	b _0200AB1A
_0200AA5C:
	movs r0, #0
	cmp r2, #4
	bne _0200AA64
	movs r0, #1
_0200AA64:
	cmp r0, #0
	beq _0200AA7C
	movs r0, #0
	cmp r3, #4
	bne _0200AA70
	movs r0, #1
_0200AA70:
	cmp r0, #0
	beq _0200AA7C
	ldr r0, [r1, #4]
	ldr r1, [r4, #4]
	subs r0, r0, r1
	b _0200AB1A
_0200AA7C:
	movs r2, #0
	ldr r0, [r4]
	cmp r0, #4
	bne _0200AA86
	movs r2, #1
_0200AA86:
	cmp r2, #0
	bne _0200AAD4
	movs r2, #0
	cmp r3, #4
	bne _0200AA92
	movs r2, #1
_0200AA92:
	cmp r2, #0
	beq _0200AAA4
_0200AA96:
	ldr r0, [r1, #4]
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, #0
	beq _0200AADE
	movs r1, #1
	b _0200AADE
_0200AAA4:
	movs r2, #0
	cmp r0, #2
	bne _0200AAAC
	movs r2, #1
_0200AAAC:
	cmp r2, #0
	beq _0200AABC
	movs r2, #0
	cmp r3, #2
	bne _0200AAB8
	movs r2, #1
_0200AAB8:
	cmp r2, #0
	bne _0200AB18
_0200AABC:
	movs r2, #0
	cmp r0, #2
	bne _0200AAC4
	movs r2, #1
_0200AAC4:
	cmp r2, #0
	bne _0200AA96
	movs r0, #0
	cmp r3, #2
	bne _0200AAD0
	movs r0, #1
_0200AAD0:
	cmp r0, #0
	beq _0200AAE2
_0200AAD4:
	ldr r0, [r4, #4]
	movs r1, #1
	cmp r0, #0
	beq _0200AADE
	subs r1, #2
_0200AADE:
	adds r0, r1, #0
	b _0200AB1A
_0200AAE2:
	ldr r3, [r4, #4]
	ldr r0, [r1, #4]
	cmp r3, r0
	beq _0200AAF4
_0200AAEA:
	movs r0, #1
	cmp r3, #0
	beq _0200AB1A
	subs r0, #2
	b _0200AB1A
_0200AAF4:
	ldr r2, [r4, #8]
	ldr r0, [r1, #8]
	cmp r2, r0
	bgt _0200AAEA
	cmp r2, r0
	bge _0200AB0C
_0200AB00:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r3, #0
	beq _0200AB1A
	movs r0, #1
	b _0200AB1A
_0200AB0C:
	ldr r0, [r4, #0xc]
	ldr r1, [r1, #0xc]
	cmp r0, r1
	bhi _0200AAEA
	cmp r0, r1
	blo _0200AB00
_0200AB18:
	movs r0, #0
_0200AB1A:
	pop {r4, pc}

	thumb_func_start sub_0200AB1C
sub_0200AB1C: @ 0x0200AB1C
	push {r4, lr}
	sub sp, #0x28
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	add r0, sp, #0x20
	mov r1, sp
	bl sub_0200A590
	add r0, sp, #0x24
	add r4, sp, #0x10
	adds r1, r4, #0
	bl sub_0200A590
	mov r0, sp
	adds r1, r4, #0
	bl sub_0200AA38
	add sp, #0x28
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0200AB44
sub_0200AB44: @ 0x0200AB44
	push {r4, lr}
	sub sp, #0x28
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	add r0, sp, #0x20
	mov r1, sp
	bl sub_0200A590
	add r0, sp, #0x24
	add r4, sp, #0x10
	adds r1, r4, #0
	bl sub_0200A590
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _0200AB68
	movs r1, #1
_0200AB68:
	cmp r1, #0
	bne _0200AB7A
	movs r1, #0
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bhi _0200AB76
	movs r1, #1
_0200AB76:
	cmp r1, #0
	beq _0200AB7E
_0200AB7A:
	movs r0, #1
	b _0200AB86
_0200AB7E:
	mov r0, sp
	adds r1, r4, #0
	bl sub_0200AA38
_0200AB86:
	add sp, #0x28
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0200AB8C
sub_0200AB8C: @ 0x0200AB8C
	push {r4, lr}
	sub sp, #0x28
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	add r0, sp, #0x20
	mov r1, sp
	bl sub_0200A590
	add r0, sp, #0x24
	add r4, sp, #0x10
	adds r1, r4, #0
	bl sub_0200A590
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _0200ABB0
	movs r1, #1
_0200ABB0:
	cmp r1, #0
	bne _0200ABC2
	movs r1, #0
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bhi _0200ABBE
	movs r1, #1
_0200ABBE:
	cmp r1, #0
	beq _0200ABC6
_0200ABC2:
	movs r0, #1
	b _0200ABCE
_0200ABC6:
	mov r0, sp
	adds r1, r4, #0
	bl sub_0200AA38
_0200ABCE:
	add sp, #0x28
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0200ABD4
sub_0200ABD4: @ 0x0200ABD4
	push {r4, lr}
	sub sp, #0x28
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	add r0, sp, #0x20
	mov r1, sp
	bl sub_0200A590
	add r0, sp, #0x24
	add r4, sp, #0x10
	adds r1, r4, #0
	bl sub_0200A590
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _0200ABF8
	movs r1, #1
_0200ABF8:
	cmp r1, #0
	bne _0200AC0A
	movs r1, #0
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bhi _0200AC06
	movs r1, #1
_0200AC06:
	cmp r1, #0
	beq _0200AC10
_0200AC0A:
	movs r0, #1
	rsbs r0, r0, #0
	b _0200AC18
_0200AC10:
	mov r0, sp
	adds r1, r4, #0
	bl sub_0200AA38
_0200AC18:
	add sp, #0x28
	pop {r4, pc}

	thumb_func_start sub_0200AC1C
sub_0200AC1C: @ 0x0200AC1C
	push {r4, lr}
	sub sp, #0x28
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	add r0, sp, #0x20
	mov r1, sp
	bl sub_0200A590
	add r0, sp, #0x24
	add r4, sp, #0x10
	adds r1, r4, #0
	bl sub_0200A590
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _0200AC40
	movs r1, #1
_0200AC40:
	cmp r1, #0
	bne _0200AC52
	movs r1, #0
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bhi _0200AC4E
	movs r1, #1
_0200AC4E:
	cmp r1, #0
	beq _0200AC58
_0200AC52:
	movs r0, #1
	rsbs r0, r0, #0
	b _0200AC60
_0200AC58:
	mov r0, sp
	adds r1, r4, #0
	bl sub_0200AA38
_0200AC60:
	add sp, #0x28
	pop {r4, pc}

	thumb_func_start sub_0200AC64
sub_0200AC64: @ 0x0200AC64
	push {r4, lr}
	sub sp, #0x28
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	add r0, sp, #0x20
	mov r1, sp
	bl sub_0200A590
	add r0, sp, #0x24
	add r4, sp, #0x10
	adds r1, r4, #0
	bl sub_0200A590
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _0200AC88
	movs r1, #1
_0200AC88:
	cmp r1, #0
	bne _0200AC9A
	movs r1, #0
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bhi _0200AC96
	movs r1, #1
_0200AC96:
	cmp r1, #0
	beq _0200AC9E
_0200AC9A:
	movs r0, #1
	b _0200ACA6
_0200AC9E:
	mov r0, sp
	adds r1, r4, #0
	bl sub_0200AA38
_0200ACA6:
	add sp, #0x28
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0200ACAC
sub_0200ACAC: @ 0x0200ACAC
	push {r4, lr}
	sub sp, #0x28
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	add r0, sp, #0x20
	mov r1, sp
	bl sub_0200A590
	add r0, sp, #0x24
	add r4, sp, #0x10
	adds r1, r4, #0
	bl sub_0200A590
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _0200ACD0
	movs r1, #1
_0200ACD0:
	cmp r1, #0
	bne _0200ACE2
	movs r1, #0
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bhi _0200ACDE
	movs r1, #1
_0200ACDE:
	cmp r1, #0
	beq _0200ACE6
_0200ACE2:
	movs r0, #1
	b _0200ACEE
_0200ACE6:
	mov r0, sp
	adds r1, r4, #0
	bl sub_0200AA38
_0200ACEE:
	add sp, #0x28
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0200ACF4
sub_0200ACF4: @ 0x0200ACF4
	push {lr}
	sub sp, #0x10
	adds r1, r0, #0
	movs r0, #3
	str r0, [sp]
	lsrs r2, r1, #0x1f
	str r2, [sp, #4]
	cmp r1, #0
	bne _0200AD0C
	movs r0, #2
	str r0, [sp]
	b _0200AD44
_0200AD0C:
	movs r0, #0x1e
	str r0, [sp, #8]
	cmp r2, #0
	beq _0200AD2A
	movs r0, #0x80
	lsls r0, r0, #0x18
	cmp r1, r0
	bne _0200AD24
	ldr r0, _0200AD20 @ =0xCF000000
	b _0200AD4A
	.align 2, 0
_0200AD20: .4byte 0xCF000000
_0200AD24:
	rsbs r0, r1, #0
	str r0, [sp, #0xc]
	b _0200AD2C
_0200AD2A:
	str r1, [sp, #0xc]
_0200AD2C:
	ldr r2, [sp, #0xc]
	ldr r3, _0200AD50 @ =0x3FFFFFFF
	cmp r2, r3
	bhi _0200AD44
	ldr r1, [sp, #8]
_0200AD36:
	lsls r0, r2, #1
	subs r1, #1
	adds r2, r0, #0
	cmp r0, r3
	bls _0200AD36
	str r1, [sp, #8]
	str r0, [sp, #0xc]
_0200AD44:
	mov r0, sp
	bl sub_0200A4D8
_0200AD4A:
	add sp, #0x10
	pop {pc}
	.align 2, 0
_0200AD50: .4byte 0x3FFFFFFF

	thumb_func_start sub_0200AD54
sub_0200AD54: @ 0x0200AD54
	push {lr}
	sub sp, #0x14
	str r0, [sp, #0x10]
	add r0, sp, #0x10
	mov r1, sp
	bl sub_0200A590
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #2
	bne _0200AD6C
	movs r1, #1
_0200AD6C:
	cmp r1, #0
	bne _0200AD9E
	movs r1, #0
	cmp r0, #1
	bhi _0200AD78
	movs r1, #1
_0200AD78:
	cmp r1, #0
	bne _0200AD9E
	movs r1, #0
	cmp r0, #4
	bne _0200AD84
	movs r1, #1
_0200AD84:
	cmp r1, #0
	beq _0200AD98
_0200AD88:
	ldr r0, [sp, #4]
	ldr r1, _0200AD94 @ =0x7FFFFFFF
	cmp r0, #0
	beq _0200ADB6
	adds r1, #1
	b _0200ADB6
	.align 2, 0
_0200AD94: .4byte 0x7FFFFFFF
_0200AD98:
	ldr r1, [sp, #8]
	cmp r1, #0
	bge _0200ADA2
_0200AD9E:
	movs r0, #0
	b _0200ADB8
_0200ADA2:
	cmp r1, #0x1e
	bgt _0200AD88
	movs r0, #0x1e
	subs r0, r0, r1
	ldr r1, [sp, #0xc]
	lsrs r1, r0
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _0200ADB6
	rsbs r1, r1, #0
_0200ADB6:
	adds r0, r1, #0
_0200ADB8:
	add sp, #0x14
	pop {pc}

	thumb_func_start sub_0200ADBC
sub_0200ADBC: @ 0x0200ADBC
	push {lr}
	sub sp, #0x14
	str r0, [sp, #0x10]
	add r0, sp, #0x10
	mov r1, sp
	bl sub_0200A590
	movs r1, #0
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _0200ADD4
	movs r1, #1
_0200ADD4:
	str r1, [sp, #4]
	mov r0, sp
	bl sub_0200A4D8
	add sp, #0x14
	pop {pc}

	thumb_func_start sub_0200ADE0
sub_0200ADE0: @ 0x0200ADE0
	push {lr}
	sub sp, #0x10
	str r0, [sp]
	str r1, [sp, #4]
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	mov r0, sp
	bl sub_0200A4D8
	add sp, #0x10
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0200ADF8
sub_0200ADF8: @ 0x0200ADF8
	push {r4, r5, r6, lr}
	sub sp, #0x18
	str r0, [sp, #0x14]
	add r0, sp, #0x14
	add r1, sp, #4
	bl sub_0200A590
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x10]
	movs r4, #0
	lsrs r6, r3, #2
	lsls r5, r4, #0x1e
	adds r4, r6, #0
	orrs r4, r5
	lsls r3, r3, #0x1e
	str r4, [sp]
	bl sub_0200A46C
	add sp, #0x18
	pop {r4, r5, r6, pc}

	thumb_func_start sub_0200AE24
sub_0200AE24: @ 0x0200AE24
	push {r4, r5, r6, lr}
	adds r6, r1, #0
	adds r5, r0, #0
	cmp r2, #0
	beq _0200AE54
	movs r0, #0x20
	subs r0, r0, r2
	cmp r0, #0
	bgt _0200AE40
	movs r4, #0
	rsbs r0, r0, #0
	adds r3, r6, #0
	lsrs r3, r0
	b _0200AE50
_0200AE40:
	adds r1, r6, #0
	lsls r1, r0
	adds r4, r6, #0
	lsrs r4, r2
	adds r0, r5, #0
	lsrs r0, r2
	adds r3, r0, #0
	orrs r3, r1
_0200AE50:
	adds r1, r4, #0
	adds r0, r3, #0
_0200AE54:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_0200AE58
sub_0200AE58: @ 0x0200AE58
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp]
	str r1, [sp, #4]
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	ldr r3, [sp]
	ldr r0, _0200AEC4 @ =0x0000FFFF
	mov ip, r0
	adds r2, r3, #0
	ands r2, r0
	lsrs r3, r3, #0x10
	ldr r1, [sp, #8]
	adds r0, r1, #0
	mov r4, ip
	ands r0, r4
	lsrs r1, r1, #0x10
	adds r5, r2, #0
	muls r5, r0, r5
	adds r4, r2, #0
	muls r4, r1, r4
	adds r2, r3, #0
	muls r2, r0, r2
	muls r3, r1, r3
	lsrs r0, r5, #0x10
	adds r4, r4, r0
	adds r4, r4, r2
	cmp r4, r2
	bhs _0200AE98
	movs r0, #0x80
	lsls r0, r0, #9
	adds r3, r3, r0
_0200AE98:
	lsrs r0, r4, #0x10
	adds r7, r3, r0
	mov r1, ip
	ands r4, r1
	lsls r0, r4, #0x10
	ands r5, r1
	adds r6, r0, #0
	orrs r6, r5
	adds r1, r7, #0
	adds r0, r6, #0
	ldr r3, [sp]
	ldr r4, [sp, #0xc]
	adds r2, r3, #0
	muls r2, r4, r2
	ldr r5, [sp, #4]
	ldr r4, [sp, #8]
	adds r3, r5, #0
	muls r3, r4, r3
	adds r2, r2, r3
	adds r1, r7, r2
	add sp, #0x10
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0200AEC4: .4byte 0x0000FFFF

	thumb_func_start sub_0200AEC8
sub_0200AEC8: @ 0x0200AEC8
	push {r4, lr}
	rsbs r2, r0, #0
	adds r3, r2, #0
	rsbs r1, r1, #0
	cmp r2, #0
	beq _0200AED6
	subs r1, #1
_0200AED6:
	adds r4, r1, #0
	adds r1, r4, #0
	adds r0, r3, #0
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0200AEE0
sub_0200AEE0: @ 0x0200AEE0
	push {r4, r5, lr}
	adds r1, r0, #0
	adds r5, r1, #0
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _0200AF18
	adds r2, r1, #0
	ldr r1, [r2]
	ldr r4, _0200AEFC @ =0xFEFEFEFF
	adds r0, r1, r4
	bics r0, r1
	ldr r3, _0200AF00 @ =0x80808080
	b _0200AF0C
	.align 2, 0
_0200AEFC: .4byte 0xFEFEFEFF
_0200AF00: .4byte 0x80808080
_0200AF04:
	adds r2, #4
	ldr r1, [r2]
	adds r0, r1, r4
	bics r0, r1
_0200AF0C:
	ands r0, r3
	cmp r0, #0
	beq _0200AF04
	adds r1, r2, #0
	b _0200AF18
_0200AF16:
	adds r1, #1
_0200AF18:
	ldrb r0, [r1]
	cmp r0, #0
	bne _0200AF16
	subs r0, r1, r5
	pop {r4, r5, pc}
	.align 2, 0
