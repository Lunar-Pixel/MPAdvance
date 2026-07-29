	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .text
	.ARM
	.syntax unified

	.ALIGN 2, 0

	thumb_func_start sub_02006C14
sub_02006C14: @ 0x02006C14
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r0, r1, #0
	adds r1, r2, #0
	adds r4, r3, #0
	ldr r5, [sp, #0x10]
	bl sub_02006A00
	adds r1, r0, #0
	adds r0, r6, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_02006C38
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_02006C38
sub_02006C38: @ 0x02006C38
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	adds r6, r0, #0
	adds r4, r1, #0
	mov r8, r2
	mov sl, r3
	movs r0, #0
	mov sb, r0
	ldrb r0, [r4]
	cmp r0, #0x45
	bne _02006C8C
	ldrb r0, [r4, #1]
	cmp r0, #0x43
	bne _02006C8C
	ldrb r0, [r4, #2]
	cmp r0, #0x44
	bne _02006C8C
	ldrb r0, [r4, #0xe]
	lsls r0, r0, #8
	ldrb r1, [r4, #0xf]
	adds r5, r0, r1
	ldrb r0, [r4, #3]
	cmp r0, #0
	beq _02006C86
	movs r0, #1
	adds r1, r5, #0
	bl sub_02006918
	mov sb, r0
	adds r0, r4, #0
	mov r1, sb
	bl sub_0200774C
	mov r1, sb
	b _02006CAA
_02006C86:
	adds r1, r4, #0
	adds r1, #0x10
	b _02006CAA
_02006C8C:
	ldrb r0, [r4, #4]
	cmp r0, #0
	bne _02006C9C
	ldrb r1, [r4, #5]
	ldrb r0, [r4, #6]
	muls r0, r1, r0
	lsls r0, r0, #5
	b _02006CA4
_02006C9C:
	ldrb r1, [r4, #5]
	ldrb r0, [r4, #6]
	muls r0, r1, r0
	lsls r0, r0, #6
_02006CA4:
	adds r5, r0, #0
	adds r5, #8
	adds r1, r4, #0
_02006CAA:
	ldrb r4, [r1, #3]
	ldrb r2, [r1, #4]
	ldr r0, _02006CE8 @ =0x01FFFFFF
	cmp r6, r0
	bhi _02006CBA
	movs r0, #0xc0
	lsls r0, r0, #0x13
	adds r6, r6, r0
_02006CBA:
	adds r7, r1, #0
	adds r7, #8
	mov r0, r8
	cmp r0, #0
	bne _02006CEC
	subs r5, #8
	lsls r2, r5, #0x10
	lsrs r2, r2, #0x10
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r1, sl
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xc]
	mov r0, sb
	str r0, [sp, #0x10]
	adds r0, r7, #0
	adds r1, r6, #0
	movs r3, #1
	bl sub_02006018
	b _02006D48
	.align 2, 0
_02006CE8: .4byte 0x01FFFFFF
_02006CEC:
	ldrb r0, [r1, #5]
	ldrb r3, [r1, #6]
	cmp r4, #0
	bne _02006D22
	cmp r2, #0
	bne _02006CFC
	lsls r0, r0, #0x15
	b _02006CFE
_02006CFC:
	lsls r0, r0, #0x16
_02006CFE:
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp]
	movs r0, #0x80
	lsls r0, r0, #3
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r1, sl
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xc]
	mov r0, sb
	str r0, [sp, #0x10]
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_02006018
	b _02006D48
_02006D22:
	lsls r0, r0, #0x13
	lsrs r2, r0, #0x10
	lsls r3, r3, #3
	asrs r0, r0, #0x10
	str r0, [sp]
	movs r0, #0xf0
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	mov r1, sl
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xc]
	mov r0, sb
	str r0, [sp, #0x10]
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_02006018
_02006D48:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_02006D58
sub_02006D58: @ 0x02006D58
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r0, r1, #0
	adds r1, r2, #0
	adds r4, r3, #0
	ldr r5, [sp, #0x10]
	bl sub_02006A00
	adds r1, r0, #0
	adds r0, r6, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_02006D7C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_02006D7C
sub_02006D7C: @ 0x02006D7C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0
	adds r4, r1, #0
	adds r7, r2, #0
	mov sb, r3
	movs r0, #0
	mov r8, r0
	ldrb r0, [r4]
	cmp r0, #0x45
	bne _02006DCC
	ldrb r0, [r4, #1]
	cmp r0, #0x43
	bne _02006DCC
	ldrb r0, [r4, #2]
	cmp r0, #0x44
	bne _02006DCC
	ldrb r0, [r4, #0xe]
	lsls r0, r0, #8
	ldrb r1, [r4, #0xf]
	adds r5, r0, r1
	ldrb r0, [r4, #3]
	cmp r0, #0
	beq _02006DC6
	movs r0, #1
	adds r1, r5, #0
	bl sub_02006918
	mov r8, r0
	adds r0, r4, #0
	mov r1, r8
	bl sub_0200774C
	mov r1, r8
	b _02006DDC
_02006DC6:
	adds r1, r4, #0
	adds r1, #0x10
	b _02006DDC
_02006DCC:
	ldrb r0, [r4, #5]
	lsls r0, r0, #8
	ldrb r1, [r4, #4]
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r5, r0, #0
	adds r5, #8
	adds r1, r4, #0
_02006DDC:
	adds r0, r5, #0
	subs r0, #8
	lsrs r5, r0, #1
	cmp r7, #0
	bne _02006DFC
	ldr r0, _02006DF0 @ =0x01FFFFFF
	cmp r6, r0
	bhi _02006DF8
	ldr r0, _02006DF4 @ =0x0202CF60
	b _02006E0A
	.align 2, 0
_02006DF0: .4byte 0x01FFFFFF
_02006DF4: .4byte 0x0202CF60
_02006DF8:
	adds r2, r6, #0
	b _02006E0C
_02006DFC:
	cmp r7, #1
	bne _02006E08
	ldr r0, _02006E04 @ =0x0202CF60
	b _02006E0A
	.align 2, 0
_02006E04: .4byte 0x0202CF60
_02006E08:
	ldr r0, _02006E5C @ =0x0202DD30
_02006E0A:
	adds r2, r6, r0
_02006E0C:
	adds r1, #8
	movs r3, #0
	cmp r3, r5
	bhs _02006E22
_02006E14:
	ldrh r0, [r1]
	strh r0, [r2]
	adds r1, #2
	adds r2, #2
	adds r3, #1
	cmp r3, r5
	blo _02006E14
_02006E22:
	cmp r7, #0
	bne _02006E44
	ldr r0, _02006E60 @ =0x01FFFFFF
	cmp r6, r0
	bhi _02006E32
	movs r0, #0xa0
	lsls r0, r0, #0x13
	adds r6, r6, r0
_02006E32:
	ldr r0, _02006E64 @ =0x04FFFFFF
	cmp r6, r0
	bls _02006E44
	lsls r0, r6, #0x16
	lsrs r0, r0, #0x17
	adds r1, r5, #0
	mov r2, sb
	bl sub_02004408
_02006E44:
	mov r0, r8
	cmp r0, #0
	beq _02006E4E
	bl sub_0200692C
_02006E4E:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_02006E5C: .4byte 0x0202DD30
_02006E60: .4byte 0x01FFFFFF
_02006E64: .4byte 0x04FFFFFF

	thumb_func_start sub_02006E68
sub_02006E68: @ 0x02006E68
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x10
	mov r8, r0
	adds r0, r1, #0
	adds r1, r2, #0
	adds r5, r3, #0
	ldr r6, [sp, #0x28]
	ldr r7, [sp, #0x2c]
	ldr r4, [sp, #0x34]
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	bl sub_02006A00
	adds r1, r0, #0
	str r7, [sp]
	ldr r0, [sp, #0x30]
	str r0, [sp, #4]
	lsls r4, r4, #0x18
	asrs r4, r4, #0x18
	str r4, [sp, #8]
	ldr r2, [sp, #0x38]
	str r2, [sp, #0xc]
	mov r0, r8
	adds r2, r5, #0
	adds r3, r6, #0
	bl sub_02006EB8
	add sp, #0x10
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_02006EB8
sub_02006EB8: @ 0x02006EB8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x30
	str r0, [sp, #0x14]
	adds r4, r1, #0
	ldr r0, [sp, #0x58]
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	lsls r3, r3, #0x18
	lsrs r5, r3, #0x18
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	movs r0, #0
	str r0, [sp, #0x18]
	ldrb r0, [r4]
	cmp r0, #0x45
	bne _02006F16
	ldrb r0, [r4, #1]
	cmp r0, #0x43
	bne _02006F16
	ldrb r0, [r4, #2]
	cmp r0, #0x44
	bne _02006F16
	ldrb r0, [r4, #0xe]
	lsls r0, r0, #8
	ldrb r1, [r4, #0xf]
	adds r0, r0, r1
	mov sl, r0
	ldrb r0, [r4, #3]
	cmp r0, #0
	beq _02006F12
	movs r0, #1
	mov r1, sl
	bl sub_02006918
	str r0, [sp, #0x18]
	adds r0, r4, #0
	ldr r1, [sp, #0x18]
	bl sub_0200774C
	ldr r4, [sp, #0x18]
	b _02006F30
_02006F12:
	adds r4, #0x10
	b _02006F30
_02006F16:
	ldrb r0, [r4, #4]
	cmp r0, #0
	bne _02006F26
	ldrb r1, [r4, #5]
	ldrb r0, [r4, #6]
	muls r0, r1, r0
	lsls r0, r0, #1
	b _02006F2C
_02006F26:
	ldrb r0, [r4, #5]
	ldrb r1, [r4, #6]
	muls r0, r1, r0
_02006F2C:
	adds r0, #8
	mov sl, r0
_02006F30:
	lsls r6, r6, #0x18
	str r6, [sp, #0x2c]
	cmp r7, #0
	bne _02006F50
	cmp r5, #0
	bne _02006F50
	movs r0, #1
	rsbs r0, r0, #0
	ldr r1, [sp, #0x50]
	cmp r1, r0
	bne _02006F50
	movs r0, #0xc0
	lsls r0, r0, #0x13
	ands r0, r6
	cmp r0, #0
	beq _02006F78
_02006F50:
	ldr r2, [sp, #0x18]
	cmp r2, #0
	bne _02006F78
	movs r0, #1
	mov r1, sl
	bl sub_02006918
	str r0, [sp, #0x18]
	adds r1, r0, #0
	movs r3, #0
	cmp r3, sl
	bhs _02006F76
_02006F68:
	ldrb r0, [r4]
	strb r0, [r1]
	adds r4, #1
	adds r1, #1
	adds r3, #1
	cmp r3, sl
	blo _02006F68
_02006F76:
	ldr r4, [sp, #0x18]
_02006F78:
	ldrb r6, [r4, #5]
	mov r8, r6
	ldrb r0, [r4, #6]
	mov sb, r0
	ldrb r1, [r4, #4]
	str r1, [sp, #0x1c]
	cmp r7, #0
	bne _02006F9C
	cmp r5, #0
	bne _02006F9C
	movs r0, #1
	rsbs r0, r0, #0
	adds r2, r4, #0
	adds r2, #8
	str r2, [sp, #0x28]
	ldr r6, [sp, #0x50]
	cmp r6, r0
	beq _02006FD6
_02006F9C:
	movs r0, #0xf0
	ands r0, r5
	lsls r6, r0, #8
	adds r0, r7, r6
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r5, r4, #0
	adds r5, #8
	movs r3, #0
	mov r0, sl
	subs r0, #8
	lsrs r1, r0, #1
	str r5, [sp, #0x28]
	cmp r3, r1
	bhs _02006FD6
	ldr r0, [sp, #0x54]
	adds r4, r0, r6
_02006FBE:
	ldrh r0, [r5]
	ldr r6, [sp, #0x50]
	cmp r0, r6
	beq _02006FCC
	adds r0, r0, r2
	strh r0, [r5]
	b _02006FCE
_02006FCC:
	strh r4, [r5]
_02006FCE:
	adds r5, #2
	adds r3, #1
	cmp r3, r1
	blo _02006FBE
_02006FD6:
	ldr r1, [sp, #0x2c]
	asrs r0, r1, #0x18
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _02007048
	ldr r5, [sp, #0x28]
	movs r0, #0
	cmp r0, sb
	bhs _02007048
	mov r2, r8
	lsrs r2, r2, #1
	mov ip, r2
	movs r6, #1
	mov r1, r8
	ands r1, r6
	str r1, [sp, #0x20]
	lsls r2, r2, #1
	str r2, [sp, #0x24]
_02006FFC:
	movs r3, #0
	adds r7, r0, #1
	cmp r3, ip
	bhs _0200702A
	mov r2, r8
	lsls r6, r2, #1
	movs r0, #0x80
	lsls r0, r0, #3
	adds r4, r0, #0
_0200700E:
	ldrh r2, [r5]
	adds r1, r5, r6
	lsls r0, r3, #2
	subs r1, r1, r0
	subs r1, #2
	ldrh r0, [r1]
	eors r0, r4
	strh r0, [r5]
	eors r2, r4
	strh r2, [r1]
	adds r3, #1
	adds r5, #2
	cmp r3, ip
	blo _0200700E
_0200702A:
	ldr r1, [sp, #0x20]
	cmp r1, #0
	beq _0200703E
	ldrh r0, [r5]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r1, r2, #0
	eors r0, r1
	strh r0, [r5]
	adds r5, #2
_0200703E:
	ldr r6, [sp, #0x24]
	adds r5, r5, r6
	adds r0, r7, #0
	cmp r0, sb
	blo _02006FFC
_02007048:
	ldr r1, [sp, #0x2c]
	asrs r0, r1, #0x18
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _020070C0
	ldr r5, [sp, #0x28]
	movs r0, #0
	mov r2, sb
	lsrs r1, r2, #1
	cmp r0, r1
	bhs _0200709C
	mov ip, r1
_02007062:
	movs r3, #0
	adds r7, r0, #1
	cmp r3, r8
	bhs _02007096
	lsls r0, r0, #1
	mov r6, sb
	subs r0, r6, r0
	subs r0, #1
	mov r1, r8
	muls r1, r0, r1
	adds r0, r1, #0
	lsls r6, r0, #1
	movs r2, #0x80
	lsls r2, r2, #4
	adds r4, r2, #0
_02007080:
	ldrh r2, [r5]
	adds r1, r6, r5
	ldrh r0, [r1]
	eors r0, r4
	strh r0, [r5]
	eors r2, r4
	strh r2, [r1]
	adds r3, #1
	adds r5, #2
	cmp r3, r8
	blo _02007080
_02007096:
	adds r0, r7, #0
	cmp r0, ip
	blo _02007062
_0200709C:
	movs r0, #1
	mov r6, sb
	ands r0, r6
	cmp r0, #0
	beq _020070C0
	movs r3, #0
	cmp r3, r8
	bhs _020070C0
	movs r0, #0x80
	lsls r0, r0, #4
	adds r1, r0, #0
_020070B2:
	ldrh r0, [r5]
	eors r0, r1
	strh r0, [r5]
	adds r3, #1
	adds r5, #2
	cmp r3, r8
	blo _020070B2
_020070C0:
	ldr r0, _02007108 @ =0x01FFFFFF
	ldr r1, [sp, #0x14]
	cmp r1, r0
	bhi _020070D0
	movs r2, #0xc0
	lsls r2, r2, #0x13
	adds r1, r1, r2
	str r1, [sp, #0x14]
_020070D0:
	ldr r5, [sp, #0x28]
	ldr r6, [sp, #0x2c]
	asrs r3, r6, #0x18
	movs r0, #1
	ands r3, r0
	cmp r3, #0
	bne _0200710C
	subs r0, #9
	add sl, r0
	mov r1, sl
	lsls r2, r1, #0x10
	lsrs r2, r2, #0x10
	str r3, [sp]
	str r3, [sp, #4]
	str r3, [sp, #8]
	ldr r6, [sp, #0x5c]
	lsls r0, r6, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x18]
	str r0, [sp, #0x10]
	adds r0, r5, #0
	ldr r1, [sp, #0x14]
	movs r3, #1
	bl sub_02006018
	b _02007200
	.align 2, 0
_02007108: .4byte 0x01FFFFFF
_0200710C:
	ldr r1, [sp, #0x1c]
	cmp r1, #0
	bne _02007126
	mov r2, r8
	lsls r0, r2, #0x11
	lsrs r2, r0, #0x10
	mov r3, sb
	asrs r0, r0, #0x10
	str r0, [sp]
	movs r0, #0x40
	str r0, [sp, #4]
	str r1, [sp, #8]
	b _020071C2
_02007126:
	movs r6, #0
	b _0200712C
_0200712A:
	adds r6, #1
_0200712C:
	cmp r6, #3
	bgt _02007156
	adds r0, r6, #0
	bl sub_02003F88
	ldr r1, [sp, #0x14]
	cmp r1, r0
	blo _0200712A
	adds r0, r6, #0
	bl sub_02003F88
	adds r4, r0, #0
	adds r0, r6, #0
	bl sub_02003F98
	ldr r1, _02007170 @ =0x0000FFFE
	ands r1, r0
	adds r4, r4, r1
	ldr r2, [sp, #0x14]
	cmp r2, r4
	bhs _0200712A
_02007156:
	adds r0, r6, #0
	bl sub_02003FA8
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #1
	beq _0200719E
	cmp r1, #1
	bgt _02007174
	cmp r1, #0
	beq _0200717E
	b _02007200
	.align 2, 0
_02007170: .4byte 0x0000FFFE
_02007174:
	cmp r1, #2
	beq _020071AE
	cmp r1, #3
	beq _020071D8
	b _02007200
_0200717E:
	mov r6, r8
	lsls r0, r6, #0x10
	lsrs r2, r0, #0x10
	mov r3, sb
	asrs r0, r0, #0x10
	str r0, [sp]
	movs r0, #0x10
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r1, [sp, #0x5c]
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xc]
	ldr r6, [sp, #0x18]
	str r6, [sp, #0x10]
	b _020071CE
_0200719E:
	mov r1, r8
	lsls r0, r1, #0x10
	lsrs r2, r0, #0x10
	mov r3, sb
	asrs r0, r0, #0x10
	str r0, [sp]
	movs r0, #0x20
	b _020071BC
_020071AE:
	mov r1, r8
	lsls r0, r1, #0x10
	lsrs r2, r0, #0x10
	mov r3, sb
	asrs r0, r0, #0x10
	str r0, [sp]
	movs r0, #0x40
_020071BC:
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
_020071C2:
	ldr r6, [sp, #0x5c]
	lsls r0, r6, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x18]
	str r0, [sp, #0x10]
_020071CE:
	adds r0, r5, #0
	ldr r1, [sp, #0x14]
	bl sub_02006018
	b _02007200
_020071D8:
	mov r1, r8
	lsls r0, r1, #0x10
	lsrs r2, r0, #0x10
	mov r3, sb
	asrs r0, r0, #0x10
	str r0, [sp]
	movs r0, #0x80
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	ldr r6, [sp, #0x5c]
	lsls r0, r6, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x18]
	str r0, [sp, #0x10]
	adds r0, r5, #0
	ldr r1, [sp, #0x14]
	bl sub_02006018
_02007200:
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_02007210
sub_02007210: @ 0x02007210
	push {lr}
	adds r2, r0, #0
	ldr r0, _02007220 @ =0x0007FEFF
	cmp r2, r0
	ble _02007228
	ldr r2, _02007224 @ =0x0007FF00
	b _02007230
	.align 2, 0
_02007220: .4byte 0x0007FEFF
_02007224: .4byte 0x0007FF00
_02007228:
	ldr r0, _0200723C @ =0xFFF80100
	cmp r2, r0
	bgt _02007230
	adds r2, r0, #0
_02007230:
	asrs r2, r2, #4
	ldr r0, _02007240 @ =0x0007FEFF
	cmp r1, r0
	ble _02007248
	ldr r1, _02007244 @ =0x0007FF00
	b _02007250
	.align 2, 0
_0200723C: .4byte 0xFFF80100
_02007240: .4byte 0x0007FEFF
_02007244: .4byte 0x0007FF00
_02007248:
	ldr r0, _02007264 @ =0xFFF80100
	cmp r1, r0
	bgt _02007250
	adds r1, r0, #0
_02007250:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	lsls r1, r1, #0xc
	asrs r1, r1, #0x10
	bl sub_020090BC
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	pop {r1}
	bx r1
	.align 2, 0
_02007264: .4byte 0xFFF80100

	thumb_func_start sub_02007268
sub_02007268: @ 0x02007268
	push {lr}
	asrs r0, r0, #6
	bl sub_020090D4
	lsls r0, r0, #0x17
	lsrs r0, r0, #0x10
	pop {r1}
	bx r1

	thumb_func_start sub_02007278
sub_02007278: @ 0x02007278
	muls r0, r1, r0
	asrs r0, r0, #8
	bx lr
	.align 2, 0

	thumb_func_start sub_02007280
sub_02007280: @ 0x02007280
	push {lr}
	lsls r0, r0, #8
	bl sub_0200956C
	pop {r1}
	bx r1

	thumb_func_start sub_0200728C
sub_0200728C: @ 0x0200728C
	push {lr}
	adds r2, r0, #0
	ldr r1, _020072A4 @ =0x00000001
	ldr r0, _020072A0 @ =0x00000000
	asrs r3, r2, #0x1f
	bl sub_02009138
	pop {r1}
	bx r1
	.align 2, 0
_020072A0: .4byte 0x00000000
_020072A4: .4byte 0x00000001

	thumb_func_start sub_020072A8
sub_020072A8: @ 0x020072A8
	ldr r1, _020072B0 @ =0x0202B260
	strh r0, [r1]
	bx lr
	.align 2, 0
_020072B0: .4byte 0x0202B260

	thumb_func_start sub_020072B4
sub_020072B4: @ 0x020072B4
	push {lr}
	ldr r3, _020072D4 @ =0x0202B260
	movs r1, #0
	ldrsh r2, [r3, r1]
	ldr r1, _020072D8 @ =0x00000225
	muls r1, r2, r1
	subs r1, #1
	strh r1, [r3]
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	bne _020072DC
	movs r2, #0
	ldrsh r0, [r3, r2]
	b _02007304
	.align 2, 0
_020072D4: .4byte 0x0202B260
_020072D8: .4byte 0x00000225
_020072DC:
	cmp r1, #0
	ble _020072F4
	ldrh r0, [r3]
	muls r0, r1, r0
	cmp r0, #0
	bge _020072EC
	ldr r1, _020072F0 @ =0x0000FFFF
	adds r0, r0, r1
_020072EC:
	asrs r0, r0, #0x10
	b _02007304
	.align 2, 0
_020072F0: .4byte 0x0000FFFF
_020072F4:
	movs r2, #0
	ldrsh r0, [r3, r2]
	muls r0, r1, r0
	cmp r0, #0
	bge _02007302
	ldr r1, _02007308 @ =0x00007FFF
	adds r0, r0, r1
_02007302:
	asrs r0, r0, #0xf
_02007304:
	pop {r1}
	bx r1
	.align 2, 0
_02007308: .4byte 0x00007FFF

	thumb_func_start sub_0200730C
sub_0200730C: @ 0x0200730C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sb, r0
	adds r7, r1, #0
	mov r8, r2
	str r3, [sp, #4]
	ldr r1, [sp, #0x28]
	ldr r0, _02007330 @ =0x01FFFFFF
	cmp r1, r0
	bgt _02007334
	movs r6, #0
	movs r5, #0
	mov sl, r5
	b _0200733C
	.align 2, 0
_02007330: .4byte 0x01FFFFFF
_02007334:
	adds r6, r1, #0
	ldr r5, [sp, #0x2c]
	adds r0, r5, #1
	mov sl, r0
_0200733C:
	mov r0, sb
	bl sub_02003F78
	lsls r1, r7, #5
	adds r0, r0, r1
	movs r4, #0
	str r4, [sp]
	adds r1, r6, #0
	adds r2, r5, #0
	movs r3, #0
	bl sub_02006C14
	mov r1, r8
	lsls r0, r1, #1
	str r4, [sp]
	adds r1, r6, #0
	mov r2, sl
	ldr r3, [sp, #4]
	bl sub_02006D58
	ldr r0, _02007380 @ =0x0202B1A8
	strh r7, [r0]
	mov r1, r8
	strh r1, [r0, #2]
	mov r1, sb
	str r1, [r0, #4]
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_02007380: .4byte 0x0202B1A8

	thumb_func_start sub_02007384
sub_02007384: @ 0x02007384
	push {r4, r5, r6, r7, lr}
	adds r6, r1, #0
	adds r7, r2, #0
	lsls r0, r0, #0x18
	asrs r1, r0, #0x18
	cmp r1, #0x20
	bne _02007396
	movs r5, #0x3f
	b _020073C0
_02007396:
	adds r0, r1, #0
	subs r0, #0x30
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #9
	bhi _020073A8
	adds r0, r1, #0
	subs r0, #0x2f
	b _020073B8
_020073A8:
	adds r0, r1, #0
	subs r0, #0x41
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x19
	bhi _020073BE
	adds r0, r1, #0
	subs r0, #0x36
_020073B8:
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	b _020073C0
_020073BE:
	movs r5, #0x25
_020073C0:
	ldr r4, _020073EC @ =0x0202B1A8
	ldr r0, [r4, #4]
	bl sub_02003F88
	lsls r3, r6, #1
	lsls r1, r7, #6
	adds r1, r1, r0
	adds r3, r3, r1
	lsls r1, r5, #0x18
	asrs r1, r1, #0x18
	ldrh r0, [r4]
	adds r1, r1, r0
	ldrh r2, [r4, #2]
	movs r0, #0xf0
	ands r0, r2
	lsls r0, r0, #8
	adds r1, r1, r0
	strh r1, [r3]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_020073EC: .4byte 0x0202B1A8

	thumb_func_start sub_020073F0
sub_020073F0: @ 0x020073F0
	bx lr
	.align 2, 0

	thumb_func_start sub_020073F4
sub_020073F4: @ 0x020073F4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	mov sb, r2
	mov r8, r3
	adds r6, r4, r1
	movs r5, #0
	cmp r4, r6
	bhs _02007442
	ldr r7, _02007450 @ =0x0202B150
_0200740C:
	ldrb r2, [r4]
	adds r4, #1
	adds r0, r7, #0
	ldr r1, _02007454 @ =gUnknown_0200AFF4
	bl sub_02007E58
	adds r2, r5, #0
	cmp r5, #0
	bge _02007420
	adds r2, r5, #7
_02007420:
	asrs r2, r2, #3
	lsls r0, r2, #3
	subs r0, r5, r0
	lsls r1, r0, #1
	adds r1, r1, r0
	add r1, sb
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	add r2, r8
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	adds r0, r7, #0
	bl sub_020073F0
	adds r5, #1
	cmp r4, r6
	blo _0200740C
_02007442:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_02007450: .4byte 0x0202B150
_02007454: .4byte gUnknown_0200AFF4

	thumb_func_start sub_02007458
sub_02007458: @ 0x02007458
	push {lr}
	bl sub_02003AF4
	adds r1, r0, #0
	lsls r1, r1, #0x10
	ldr r0, _02007478 @ =0xFFEF0000
	ands r0, r1
	lsrs r0, r0, #0x10
	bl sub_02003AE4
	bl sub_02004104
	bl sub_020040F0
	pop {r0}
	bx r0
	.align 2, 0
_02007478: .4byte 0xFFEF0000

	thumb_func_start sub_0200747C
sub_0200747C: @ 0x0200747C
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r5, r4, #0
	movs r0, #0
	bl sub_020062D0
	bl sub_020062EC
	adds r1, r4, #0
	orrs r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r1, #0
	bl sub_020062DC
	bl sub_02003AF4
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	movs r0, #1
	ands r0, r4
	cmp r0, #0
	beq _020074B4
	movs r0, #8
	orrs r1, r0
	lsls r0, r1, #0x10
	lsrs r1, r0, #0x10
_020074B4:
	movs r0, #2
	ands r0, r4
	cmp r0, #0
	beq _020074C4
	movs r0, #0x10
	orrs r1, r0
	lsls r0, r1, #0x10
	lsrs r1, r0, #0x10
_020074C4:
	movs r0, #4
	ands r5, r0
	cmp r5, #0
	beq _020074D4
	movs r0, #0x20
	orrs r1, r0
	lsls r0, r1, #0x10
	lsrs r1, r0, #0x10
_020074D4:
	adds r0, r1, #0
	bl sub_02003AE4
	bl sub_020040F0
	movs r0, #1
	bl sub_020062D0
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_020074EC
sub_020074EC: @ 0x020074EC
	push {lr}
	adds r2, r0, #0
	ldr r3, _02007510 @ =0x0202E15C
	ldr r0, [r3]
	cmp r2, r0
	bls _020074FC
	adds r0, r2, r1
	str r0, [r3]
_020074FC:
	ldr r0, _02007514 @ =0x0202E160
	ldr r2, _02007518 @ =0x0202E158
	ldr r1, [r0]
	ldr r0, [r2]
	cmp r1, r0
	ble _0200750A
	str r1, [r2]
_0200750A:
	pop {r0}
	bx r0
	.align 2, 0
_02007510: .4byte 0x0202E15C
_02007514: .4byte 0x0202E160
_02007518: .4byte 0x0202E158

	thumb_func_start sub_0200751C
sub_0200751C: @ 0x0200751C
	push {lr}
	adds r2, r0, #0
	adds r3, r1, #0
	cmp r3, #0x1f
	bls _02007542
	adds r0, #0xf
	movs r1, #0x10
	rsbs r1, r1, #0
	ands r0, r1
	subs r1, r0, r2
	subs r3, r3, r1
	movs r2, #0
	str r2, [r0]
	adds r1, r3, #0
	subs r1, #0x10
	str r1, [r0, #4]
	str r2, [r0, #8]
	str r3, [r0, #0xc]
	b _02007546
_02007542:
	movs r0, #1
	rsbs r0, r0, #0
_02007546:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0200754C
sub_0200754C: @ 0x0200754C
	push {r4, r5, lr}
	ldr r2, _02007578 @ =0x0202E15C
	movs r3, #0
	str r3, [r2]
	ldr r2, _0200757C @ =0x0202E160
	str r3, [r2]
	ldr r2, _02007580 @ =0x0202E158
	str r3, [r2]
	ldr r4, _02007584 @ =0x0202E164
	movs r5, #1
	rsbs r5, r5, #0
	str r5, [r4]
	bl sub_0200751C
	str r0, [r4]
	cmp r0, r5
	beq _02007570
	movs r0, #0
_02007570:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_02007578: .4byte 0x0202E15C
_0200757C: .4byte 0x0202E160
_02007580: .4byte 0x0202E158
_02007584: .4byte 0x0202E164

	thumb_func_start sub_02007588
sub_02007588: @ 0x02007588
	push {r4, r5, r6, r7, lr}
	adds r3, r1, #0
	movs r6, #0
	adds r2, r0, #0
	adds r3, #0xf
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r3, r0
	movs r0, #0x10
	adds r0, r0, r3
	mov ip, r0
	movs r5, #0
	movs r7, #0
	cmp r3, #0
	bne _020075AA
	b _02007620
_020075A8:
	adds r2, r4, #0
_020075AA:
	ldr r0, [r2, #8]
	cmp r0, #0
	bne _020075C4
	ldr r0, [r2, #4]
	cmp r0, r3
	blo _020075C4
	cmp r5, r0
	bhi _020075BE
	cmp r5, #0
	bne _020075C4
_020075BE:
	adds r6, r2, #0
	adds r5, r0, #0
	ldr r7, [r6]
_020075C4:
	ldr r4, [r2]
	cmp r4, #0
	bne _020075A8
	cmp r5, #0
	beq _02007620
	adds r0, r3, #0
	adds r0, #0x20
	cmp r5, r0
	blo _020075FC
	mov r1, ip
	adds r2, r6, r1
	str r2, [r6]
	str r3, [r6, #4]
	movs r0, #1
	str r0, [r6, #8]
	ldr r1, _020075F8 @ =0x0202E160
	ldr r0, [r1]
	adds r0, r0, r3
	str r0, [r1]
	str r7, [r2]
	mov r1, ip
	subs r0, r5, r1
	str r0, [r2, #4]
	str r4, [r2, #8]
	b _0200760C
	.align 2, 0
_020075F8: .4byte 0x0202E160
_020075FC:
	str r7, [r6]
	str r5, [r6, #4]
	movs r0, #1
	str r0, [r6, #8]
	ldr r1, _0200761C @ =0x0202E160
	ldr r0, [r1]
	adds r0, r0, r5
	str r0, [r1]
_0200760C:
	adds r4, r6, #0
	adds r4, #0x10
	adds r0, r4, #0
	adds r1, r3, #0
	bl sub_020074EC
	adds r0, r4, #0
	b _02007622
	.align 2, 0
_0200761C: .4byte 0x0202E160
_02007620:
	movs r0, #0
_02007622:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_02007628
sub_02007628: @ 0x02007628
	push {lr}
	adds r1, r0, #0
	ldr r0, _02007640 @ =0x0202E164
	ldr r2, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	beq _02007644
	adds r0, r2, #0
	bl sub_02007588
	b _02007646
	.align 2, 0
_02007640: .4byte 0x0202E164
_02007644:
	movs r0, #0
_02007646:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0200764C
sub_0200764C: @ 0x0200764C
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	cmp r1, #0
	beq _02007660
	adds r2, r1, #0
	subs r2, #0x10
	adds r4, r2, #0
	ldr r0, [r2, #8]
	cmp r0, #0
	bne _02007664
_02007660:
	movs r0, #1
	b _020076BC
_02007664:
	ldr r5, [r2]
	ldr r3, [r2, #4]
	ldr r1, _0200768C @ =0x0202E160
	ldr r0, [r1]
	subs r0, r0, r3
	str r0, [r1]
	adds r2, r5, #0
	cmp r2, #0
	beq _02007686
	ldr r0, [r2, #8]
	cmp r0, #0
	bne _02007686
	adds r1, r3, #0
	adds r1, #0x10
	ldr r0, [r2, #4]
	adds r3, r1, r0
	ldr r5, [r2]
_02007686:
	adds r2, r6, #0
	b _02007692
	.align 2, 0
_0200768C: .4byte 0x0202E160
_02007690:
	adds r2, r0, #0
_02007692:
	ldr r0, [r2]
	cmp r0, r4
	bne _020076AA
	ldr r0, [r2, #8]
	cmp r0, #0
	bne _020076B2
	adds r4, r2, #0
	adds r1, r3, #0
	adds r1, #0x10
	ldr r0, [r4, #4]
	adds r3, r1, r0
	b _020076B2
_020076AA:
	cmp r2, r4
	bhi _020076B2
	cmp r0, #0
	bne _02007690
_020076B2:
	adds r2, r4, #0
	str r5, [r2]
	str r3, [r2, #4]
	movs r0, #0
	str r0, [r2, #8]
_020076BC:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_020076C4
sub_020076C4: @ 0x020076C4
	push {lr}
	adds r1, r0, #0
	ldr r0, _020076E0 @ =0x0202E164
	ldr r2, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	beq _020076DA
	adds r0, r2, #0
	bl sub_0200764C
_020076DA:
	pop {r0}
	bx r0
	.align 2, 0
_020076E0: .4byte 0x0202E164
