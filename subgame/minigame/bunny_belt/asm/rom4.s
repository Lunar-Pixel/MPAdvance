	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .text
	.ARM
	.syntax unified

	.ALIGN 2, 0

	thumb_func_start sub_02004BF8
sub_02004BF8: @ 0x02004BF8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	mov r8, r1
	adds r5, r2, #0
	mov sb, r3
	cmp r4, #0
	bne _02004C1A
	bl sub_02005B08
	adds r4, r0, #0
	cmp r4, #0
	bne _02004C30
	movs r0, #0
	b _02004CDA
_02004C1A:
	ldrh r0, [r4, #0x1a]
	lsls r1, r0, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #1
	bhi _02004CD8
	asrs r0, r1, #0x10
	cmp r0, #1
	bne _02004C30
	adds r0, r4, #0
	bl sub_02004BE4
_02004C30:
	movs r6, #0
	movs r0, #0
	movs r7, #1
	strh r7, [r4, #0x1a]
	strh r7, [r4, #0x18]
	adds r3, r4, #0
	adds r3, #0x20
	mov r1, r8
	str r1, [r4, #0x20]
	str r5, [r3, #4]
	mov r1, sb
	strh r1, [r3, #8]
	strh r0, [r3, #0xa]
	strh r0, [r3, #0xc]
	strh r0, [r3, #0xe]
	movs r2, #0x80
	lsls r2, r2, #1
	strh r2, [r3, #0x10]
	strh r0, [r3, #0x12]
	strh r0, [r3, #0x14]
	strh r2, [r3, #0x16]
	strh r2, [r3, #0x18]
	strh r0, [r3, #0x1a]
	strh r0, [r3, #0x1c]
	strh r0, [r3, #0x1e]
	strh r0, [r3, #0x20]
	adds r0, r4, #0
	adds r0, #0x42
	strb r6, [r0]
	adds r0, #1
	strb r6, [r0]
	adds r1, r4, #0
	adds r1, #0x44
	movs r0, #3
	strb r0, [r1]
	movs r0, #0x45
	adds r0, r0, r4
	mov ip, r0
	strb r6, [r0]
	cmp r5, #0
	bne _02004C90
	ldrh r1, [r3, #0x1c]
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r3, #0x1c]
	mov r1, sb
	strh r1, [r3, #0xc]
	b _02004CD8
_02004C90:
	movs r1, #8
	ldrsh r0, [r3, r1]
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0, #8]
	adds r0, r5, r0
	ldrh r2, [r0, #2]
	movs r1, #4
	adds r0, r2, #0
	ands r0, r7
	cmp r0, #0
	beq _02004CAA
	movs r1, #8
_02004CAA:
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _02004CBC
	lsls r0, r1, #0x18
	movs r1, #0x80
	lsls r1, r1, #0x13
	adds r0, r0, r1
	lsrs r1, r0, #0x18
_02004CBC:
	movs r0, #4
	ands r2, r0
	cmp r2, #0
	beq _02004CCE
	lsls r0, r1, #0x18
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	lsrs r1, r0, #0x18
_02004CCE:
	mov r0, ip
	strb r1, [r0]
	adds r0, r3, #0
	bl sub_02004B48
_02004CD8:
	adds r0, r4, #0
_02004CDA:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_02004CE8
sub_02004CE8: @ 0x02004CE8
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, r1, #0
	adds r1, r2, #0
	adds r5, r3, #0
	bl sub_02006A00
	adds r1, r0, #0
	adds r0, r4, #0
	movs r2, #0
	adds r3, r5, #0
	bl sub_02004BF8
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_02004D08
sub_02004D08: @ 0x02004D08
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	mov r8, r0
	adds r5, r1, #0
	adds r4, r2, #0
	mov sb, r3
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_02006A00
	adds r6, r0, #0
	adds r4, #1
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_02006A00
	adds r2, r0, #0
	mov r0, r8
	adds r1, r6, #0
	mov r3, sb
	bl sub_02004BF8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_02004D44
sub_02004D44: @ 0x02004D44
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	adds r4, r1, #0
	adds r1, r2, #0
	adds r6, r3, #0
	ldr r7, [sp, #0x18]
	adds r0, r4, #0
	bl sub_02006A00
	adds r5, r0, #0
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_02006A00
	adds r2, r0, #0
	mov r0, r8
	adds r1, r5, #0
	adds r3, r7, #0
	bl sub_02004BF8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_02004D7C
sub_02004D7C: @ 0x02004D7C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r3, r0, #0
	adds r3, #0x20
	ldrh r2, [r3, #0x1c]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r2
	cmp r0, #0
	bne _02004E64
	ldr r1, _02004DB4 @ =0x0000FFF9
	ands r1, r2
	strh r1, [r3, #0x1c]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	bne _02004E64
	ldrh r1, [r3, #0x10]
	movs r2, #0x10
	ldrsh r0, [r3, r2]
	cmp r0, #0
	bge _02004DB8
	rsbs r0, r1, #0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r7, #1
	b _02004DBC
	.align 2, 0
_02004DB4: .4byte 0x0000FFF9
_02004DB8:
	ldrh r0, [r3, #0x10]
	movs r7, #0
_02004DBC:
	ldrh r1, [r3, #0xe]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r0
	movs r6, #0
	mov r8, r6
	strh r1, [r3, #0xe]
	lsls r1, r1, #0x10
	cmp r1, #0
	bgt _02004E64
	movs r1, #8
	ldrsh r0, [r3, r1]
	ldr r1, [r3, #4]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0, #8]
	adds r1, r1, r0
	mov ip, r1
	movs r2, #0
	ldrsh r5, [r1, r2]
	ldrh r1, [r3, #0x1c]
	movs r0, #1
	ands r0, r1
	adds r4, r1, #0
	ldrh r1, [r3, #0xa]
	cmp r0, #0
	beq _02004E1E
	lsls r0, r1, #0x10
	asrs r2, r0, #0x10
	movs r6, #0x1e
	ldrsh r0, [r3, r6]
	cmp r2, r0
	bne _02004E1E
	movs r0, #0
	strh r0, [r3, #0xe]
	cmp r7, #0
	bne _02004E12
	movs r0, #0xa
	ldrsh r1, [r3, r0]
	subs r0, r5, #1
	cmp r1, r0
	bne _02004E64
	b _02004E16
_02004E12:
	cmp r2, #0
	bne _02004E64
_02004E16:
	movs r0, #4
	orrs r0, r4
	strh r0, [r3, #0x1c]
	b _02004E64
_02004E1E:
	movs r0, #2
	movs r6, #0
	adds r2, r0, #0
	orrs r2, r4
	strh r2, [r3, #0x1c]
	cmp r7, #0
	bne _02004E44
	adds r0, r1, #1
	strh r0, [r3, #0xa]
	movs r1, #0xa
	ldrsh r0, [r3, r1]
	cmp r0, r5
	bne _02004E5E
	movs r0, #4
	orrs r2, r0
	strh r2, [r3, #0x1c]
	mov r2, ip
	ldrh r0, [r2, #4]
	b _02004E5C
_02004E44:
	subs r0, r1, #1
	strh r0, [r3, #0xa]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _02004E5E
	movs r0, #4
	orrs r2, r0
	strh r2, [r3, #0x1c]
	subs r0, r5, #1
_02004E5C:
	strh r0, [r3, #0xa]
_02004E5E:
	adds r0, r3, #0
	bl sub_02004B48
_02004E64:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_02004E70
sub_02004E70: @ 0x02004E70
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x74
	str r0, [sp, #0x10]
	adds r0, #0x20
	mov sl, r0
	ldr r1, [sp, #0x10]
	ldr r0, [r1, #0x20]
	mov r2, sl
	movs r3, #0xc
	ldrsh r1, [r2, r3]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1, #8]
	adds r0, r0, r1
	movs r5, #0
	ldrsh r4, [r0, r5]
	str r4, [sp, #0x14]
	adds r0, #2
	mov r8, r0
	movs r6, #0
	str r6, [sp, #0x18]
	cmp r6, r4
	blo _02004EA8
	b _0200544E
_02004EA8:
	ldr r0, _02004F48 @ =0x0202B1A4
	movs r1, #0
	ldrsb r1, [r0, r1]
	mov ip, r0
	cmp r1, #0
	bge _02004EB6
	b _0200544E
_02004EB6:
	mov r0, sp
	adds r0, #8
	str r0, [sp, #0x5c]
_02004EBC:
	mov r2, r8
	ldrh r1, [r2]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r0, r3, #0
	adds r2, r1, #0
	ands r2, r0
	movs r4, #0x80
	lsls r4, r4, #7
	adds r0, r4, #0
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsrs r7, r0, #0x1f
	movs r5, #0x80
	lsls r5, r5, #8
	adds r0, r5, #0
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsrs r0, r0, #0x1f
	mov sb, r0
	movs r6, #3
	ands r6, r1
	str r6, [sp, #0x2c]
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x12
	movs r0, #3
	ands r3, r0
	lsrs r4, r1, #0x14
	movs r5, #3
	ands r5, r4
	str r5, [sp, #0x30]
	lsrs r6, r1, #0x16
	ands r0, r6
	str r0, [sp, #0x34]
	lsrs r4, r1, #0x18
	movs r5, #1
	ands r5, r4
	str r5, [sp, #0x38]
	lsrs r6, r1, #0x19
	movs r0, #1
	ands r0, r6
	str r0, [sp, #0x3c]
	lsrs r4, r1, #0x1a
	movs r5, #1
	ands r5, r4
	str r5, [sp, #0x40]
	lsrs r4, r1, #0x1b
	movs r6, #1
	ands r4, r6
	lsrs r1, r1, #0x1c
	movs r0, #1
	ands r0, r1
	str r0, [sp, #0x44]
	movs r1, #2
	add r8, r1
	cmp r2, #0
	beq _02004F4C
	mov r2, r8
	ldrh r5, [r2]
	add r8, r1
	mov r6, r8
	ldrh r6, [r6]
	str r6, [sp, #0x70]
	add r8, r1
	b _02004F52
	.align 2, 0
_02004F48: .4byte 0x0202B1A4
_02004F4C:
	movs r5, #0
	movs r0, #0
	str r0, [sp, #0x70]
_02004F52:
	mov r2, r8
	ldrh r1, [r2]
	ldr r6, _02004F80 @ =0x000003FF
	adds r0, r6, #0
	adds r2, r0, #0
	ands r2, r1
	str r2, [sp, #0x48]
	lsrs r1, r1, #0xc
	str r1, [sp, #0x4c]
	movs r6, #2
	add r8, r6
	cmp r7, #0
	beq _02004F84
	mov r0, r8
	ldrh r0, [r0]
	str r0, [sp, #0x50]
	add r8, r6
	mov r1, r8
	ldrh r1, [r1]
	str r1, [sp, #0x54]
	add r8, r6
	b _02004F8C
	.align 2, 0
_02004F80: .4byte 0x000003FF
_02004F84:
	movs r2, #0x80
	lsls r2, r2, #1
	str r2, [sp, #0x54]
	str r2, [sp, #0x50]
_02004F8C:
	mov r6, sb
	cmp r6, #0
	beq _02004F9E
	mov r0, r8
	ldrh r0, [r0]
	str r0, [sp, #0x58]
	movs r1, #2
	add r8, r1
	b _02004FA2
_02004F9E:
	movs r2, #0
	str r2, [sp, #0x58]
_02004FA2:
	mov r6, ip
	ldrb r0, [r6]
	lsls r0, r0, #3
	ldr r1, _020050C4 @ =0x0202D360
	adds r7, r0, r1
	ldr r2, [sp, #0x10]
	ldrh r2, [r2, #0xc]
	str r2, [sp, #0x20]
	ldr r6, [sp, #0x10]
	ldrh r6, [r6, #0xe]
	str r6, [sp, #0x24]
	ldr r0, [sp, #0x10]
	ldrh r0, [r0, #0x10]
	str r0, [sp, #0x28]
	mov r1, sl
	movs r2, #0x16
	ldrsh r0, [r1, r2]
	movs r6, #0x80
	lsls r6, r6, #1
	mov sb, r6
	cmp r0, sb
	beq _02004FE8
	ldr r1, [sp, #0x20]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	mov r2, sl
	movs r6, #0x16
	ldrsh r1, [r2, r6]
	str r3, [sp, #0x6c]
	bl sub_02007278
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x20]
	ldr r3, [sp, #0x6c]
_02004FE8:
	mov r1, sl
	movs r2, #0x18
	ldrsh r0, [r1, r2]
	cmp r0, sb
	beq _0200500A
	ldr r6, [sp, #0x24]
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x18
	ldrsh r1, [r1, r2]
	str r3, [sp, #0x6c]
	bl sub_02007278
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x24]
	ldr r3, [sp, #0x6c]
_0200500A:
	mov r6, sl
	ldrh r0, [r6, #0x1a]
	cmp r0, #0
	beq _0200501C
	ldr r1, [sp, #0x28]
	adds r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x28]
_0200501C:
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	mov r2, sl
	movs r5, #0x12
	ldrsh r1, [r2, r5]
	adds r0, r0, r1
	lsls r5, r0, #8
	ldrh r2, [r2, #0x1c]
	movs r0, #8
	ands r0, r2
	ldr r6, [sp, #0x2c]
	lsls r6, r6, #1
	str r6, [sp, #0x60]
	cmp r0, #0
	beq _02005046
	ldr r0, _020050C8 @ =gUnknown_0200B404
	adds r0, r6, r0
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r0, r5, r0
	rsbs r5, r0, #0
_02005046:
	ldr r6, [sp, #0x70]
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	mov r1, sl
	movs r6, #0x14
	ldrsh r1, [r1, r6]
	mov ip, r1
	add r0, ip
	lsls r6, r0, #8
	movs r0, #0x10
	ands r0, r2
	cmp r0, #0
	beq _0200506E
	ldr r0, _020050C8 @ =gUnknown_0200B404
	lsls r1, r3, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	rsbs r6, r0, #0
_0200506E:
	movs r0, #0
	str r0, [sp, #0x1c]
	cmp r4, #0
	beq _0200507A
	movs r1, #3
	str r1, [sp, #0x1c]
_0200507A:
	ldr r2, [sp, #0x20]
	lsls r0, r2, #0x10
	asrs r1, r0, #0x10
	str r0, [sp, #0x68]
	cmp r1, sb
	bne _02005096
	ldr r2, [sp, #0x24]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r0, r1
	bne _02005096
	ldr r0, [sp, #0x28]
	cmp r0, #0
	beq _0200509A
_02005096:
	movs r1, #3
	str r1, [sp, #0x1c]
_0200509A:
	ldr r2, [sp, #0x1c]
	cmp r2, #3
	bne _02005192
	cmp r4, #0
	beq _020050D0
	ldr r4, [sp, #0x60]
	ldr r1, _020050CC @ =gUnknown_0200B40C
	adds r0, r4, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r5, r5, r0
	mov sb, r5
	lsls r1, r3, #1
	ldr r3, _020050CC @ =gUnknown_0200B40C
	adds r0, r1, r3
	movs r4, #0
	ldrsh r0, [r0, r4]
	adds r4, r6, r0
	str r1, [sp, #0x64]
	b _020050F8
	.align 2, 0
_020050C4: .4byte 0x0202D360
_020050C8: .4byte gUnknown_0200B404
_020050CC: .4byte gUnknown_0200B40C
_020050D0:
	ldr r1, [sp, #0x60]
	ldr r2, _02005104 @ =gUnknown_0200B40C
	adds r0, r1, r2
	movs r4, #0
	ldrsh r0, [r0, r4]
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	adds r5, r5, r0
	mov sb, r5
	lsls r2, r3, #1
	ldr r5, _02005104 @ =gUnknown_0200B40C
	adds r0, r2, r5
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	adds r4, r6, r0
	str r2, [sp, #0x64]
_020050F8:
	ldr r2, [sp, #0x68]
	asrs r0, r2, #0x10
	cmp r0, #0
	blt _02005108
	subs r0, #0x10
	b _0200510A
	.align 2, 0
_02005104: .4byte gUnknown_0200B40C
_02005108:
	adds r0, #0x10
_0200510A:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r2, _02005128 @ =0xFFFF0000
	ldr r1, [sp]
	ands r1, r2
	orrs r1, r0
	str r1, [sp]
	ldr r3, [sp, #0x24]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	blt _0200512C
	subs r0, #0x10
	b _0200512E
	.align 2, 0
_02005128: .4byte 0xFFFF0000
_0200512C:
	adds r0, #0x10
_0200512E:
	lsls r0, r0, #0x10
	ldr r2, _020053A8 @ =0x0000FFFF
	ldr r1, [sp]
	ands r1, r2
	orrs r1, r0
	str r1, [sp]
	ldr r1, _020053AC @ =0xFFFF0000
	ldr r0, [sp, #4]
	ands r0, r1
	ldr r5, [sp, #0x28]
	orrs r0, r5
	str r0, [sp, #4]
	mov r0, sp
	ldr r1, [sp, #0x5c]
	movs r2, #1
	movs r3, #2
	bl sub_020090D0
	ldr r6, [sp, #0x5c]
	movs r1, #0
	ldrsh r0, [r6, r1]
	mov r1, sb
	muls r1, r0, r1
	asrs r1, r1, #8
	movs r2, #2
	ldrsh r0, [r6, r2]
	muls r0, r4, r0
	asrs r0, r0, #8
	adds r5, r1, r0
	movs r3, #4
	ldrsh r0, [r6, r3]
	mov r1, sb
	muls r1, r0, r1
	asrs r1, r1, #8
	movs r2, #6
	ldrsh r0, [r6, r2]
	muls r0, r4, r0
	asrs r0, r0, #8
	adds r6, r1, r0
	ldr r3, [sp, #0x60]
	ldr r4, _020053B0 @ =gUnknown_0200B40C
	adds r0, r3, r4
	movs r1, #0
	ldrsh r0, [r0, r1]
	subs r5, r5, r0
	ldr r2, [sp, #0x64]
	adds r0, r2, r4
	movs r3, #0
	ldrsh r0, [r0, r3]
	subs r6, r6, r0
_02005192:
	ldr r4, [sp, #0x10]
	ldr r0, [r4]
	adds r0, r0, r5
	asrs r5, r0, #8
	ldr r0, [r4, #4]
	adds r0, r0, r6
	asrs r6, r0, #8
	ldr r1, _020053B4 @ =gUnknown_0200B414
	ldr r2, [sp, #0x1c]
	lsls r0, r2, #3
	ldr r3, [sp, #0x60]
	adds r0, r3, r0
	adds r0, r0, r1
	movs r4, #0
	ldrsh r0, [r0, r4]
	cmn r5, r0
	bge _020051B6
	b _02005434
_020051B6:
	cmp r5, #0xf0
	ble _020051BC
	b _02005434
_020051BC:
	movs r0, #0x44
	rsbs r0, r0, #0
	cmp r6, r0
	bge _020051C6
	b _02005434
_020051C6:
	cmp r6, #0xa0
	ble _020051CC
	b _02005434
_020051CC:
	movs r4, #0x80
	lsls r4, r4, #1
	ldr r0, [sp, #0x50]
	cmp r0, r4
	beq _020051E6
	ldr r1, [sp, #0x68]
	asrs r0, r1, #0x10
	ldr r1, [sp, #0x50]
	bl sub_02007278
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x20]
_020051E6:
	ldr r2, [sp, #0x54]
	cmp r2, r4
	beq _020051FE
	ldr r3, [sp, #0x24]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	adds r1, r2, #0
	bl sub_02007278
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x24]
_020051FE:
	ldr r4, [sp, #0x58]
	cmp r4, #0
	beq _0200520E
	ldr r1, [sp, #0x28]
	adds r0, r1, r4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x28]
_0200520E:
	ldr r2, [sp, #0x1c]
	cmp r2, #3
	bne _0200528E
	ldr r3, [sp, #0x20]
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	movs r4, #0x80
	lsls r4, r4, #9
	adds r0, r4, #0
	bl sub_0200956C
	mov r1, sp
	strh r0, [r1]
	ldr r0, [sp, #0x24]
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_0200956C
	mov r1, sp
	strh r0, [r1, #2]
	ldr r2, [sp, #0x28]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	strh r0, [r1, #4]
	mov r0, sp
	ldr r1, [sp, #0x5c]
	movs r2, #1
	movs r3, #2
	bl sub_020090D0
	ldr r3, _020053B8 @ =0x02029014
	ldrb r0, [r3]
	lsls r0, r0, #5
	ldr r4, _020053BC @ =0x0202D360
	adds r0, r0, r4
	ldr r2, [sp, #0x5c]
	ldrh r1, [r2]
	strh r1, [r0, #6]
	ldrb r0, [r3]
	lsls r0, r0, #2
	adds r0, #1
	lsls r0, r0, #3
	adds r0, r0, r4
	ldrh r1, [r2, #2]
	strh r1, [r0, #6]
	ldrb r0, [r3]
	lsls r0, r0, #2
	adds r0, #2
	lsls r0, r0, #3
	adds r0, r0, r4
	ldrh r1, [r2, #4]
	strh r1, [r0, #6]
	ldrb r0, [r3]
	lsls r0, r0, #2
	adds r0, #3
	lsls r0, r0, #3
	adds r0, r0, r4
	ldrh r1, [r2, #6]
	strh r1, [r0, #6]
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
_0200528E:
	ldr r3, _020053C0 @ =0x000001FF
	adds r0, r3, #0
	ands r5, r0
	ldrh r0, [r7, #2]
	ldr r4, _020053C4 @ =0xFFFFFE00
	adds r1, r4, #0
	ands r0, r1
	orrs r0, r5
	strh r0, [r7, #2]
	strb r6, [r7]
	mov r5, sl
	ldrh r2, [r5, #0x20]
	ldr r6, [sp, #0x48]
	adds r2, r6, r2
	ldr r1, _020053C8 @ =0x000003FF
	adds r0, r1, #0
	ands r2, r0
	ldrh r0, [r7, #4]
	ldr r3, _020053CC @ =0xFFFFFC00
	adds r1, r3, #0
	ands r0, r1
	orrs r0, r2
	strh r0, [r7, #4]
	mov r0, sl
	adds r0, #0x23
	ldrb r0, [r0]
	movs r4, #3
	ands r0, r4
	lsls r0, r0, #2
	ldrb r1, [r7, #5]
	movs r6, #0xd
	rsbs r6, r6, #0
	adds r5, r6, #0
	ands r1, r5
	orrs r1, r0
	strb r1, [r7, #5]
	mov r0, sl
	adds r0, #0x22
	ldrb r2, [r0]
	ldr r0, [sp, #0x4c]
	adds r2, r0, r2
	lsls r2, r2, #4
	movs r0, #0xf
	ands r1, r0
	orrs r1, r2
	strb r1, [r7, #5]
	ldr r1, [sp, #0x34]
	lsls r2, r1, #6
	ldrb r0, [r7, #1]
	movs r1, #0x3f
	adds r3, r1, #0
	ands r3, r0
	orrs r3, r2
	ldr r4, [sp, #0x30]
	lsls r2, r4, #6
	ldrb r0, [r7, #3]
	adds r4, r1, #0
	ands r4, r0
	orrs r4, r2
	strb r4, [r7, #3]
	ldr r6, [sp, #0x40]
	movs r0, #1
	ands r6, r0
	lsls r0, r6, #5
	subs r1, #0x60
	mov sb, r1
	mov r2, sb
	ands r3, r2
	orrs r3, r0
	strb r3, [r7, #1]
	mov r2, sl
	adds r2, #0x24
	ldrb r0, [r2]
	ldr r1, [sp, #0x44]
	cmp r0, #3
	beq _02005328
	adds r1, r0, #0
_02005328:
	movs r6, #3
	ands r1, r6
	lsls r0, r1, #2
	adds r1, r3, #0
	ands r1, r5
	orrs r1, r0
	strb r1, [r7, #1]
	mov r2, sl
	ldrh r0, [r2, #0x1c]
	lsrs r0, r0, #7
	movs r6, #1
	movs r3, #1
	ands r0, r6
	lsls r0, r0, #4
	movs r5, #0x11
	rsbs r5, r5, #0
	ands r1, r5
	orrs r1, r0
	ldr r2, [sp, #0x1c]
	movs r0, #3
	ands r2, r0
	subs r0, #7
	mov ip, r0
	mov r0, ip
	ands r1, r0
	orrs r1, r2
	strb r1, [r7, #1]
	ldr r1, [sp, #0x1c]
	cmp r1, #3
	bne _020053D0
	ldr r2, _020053B8 @ =0x02029014
	ldrb r0, [r2]
	subs r0, #1
	movs r1, #7
	ands r0, r1
	lsls r0, r0, #1
	movs r2, #0xf
	rsbs r2, r2, #0
	adds r1, r2, #0
	adds r2, r4, #0
	ands r2, r1
	orrs r2, r0
	strb r2, [r7, #3]
	ldr r4, _020053B8 @ =0x02029014
	ldrb r0, [r4]
	subs r0, #1
	asrs r0, r0, #3
	ands r0, r6
	ands r0, r3
	lsls r0, r0, #4
	adds r1, r5, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r7, #3]
	ldrb r0, [r4]
	subs r0, #1
	asrs r0, r0, #4
	ands r0, r6
	ands r0, r3
	lsls r0, r0, #5
	mov r5, sb
	ands r1, r5
	b _02005428
	.align 2, 0
_020053A8: .4byte 0x0000FFFF
_020053AC: .4byte 0xFFFF0000
_020053B0: .4byte gUnknown_0200B40C
_020053B4: .4byte gUnknown_0200B414
_020053B8: .4byte 0x02029014
_020053BC: .4byte 0x0202D360
_020053C0: .4byte 0x000001FF
_020053C4: .4byte 0xFFFFFE00
_020053C8: .4byte 0x000003FF
_020053CC: .4byte 0xFFFFFC00
_020053D0:
	mov r6, sl
	ldrh r1, [r6, #0x1c]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _020053E8
	movs r0, #1
	ldr r1, [sp, #0x38]
	eors r0, r1
	ands r0, r3
	lsls r0, r0, #4
	b _020053EE
_020053E8:
	ldr r2, [sp, #0x38]
	ands r2, r3
	lsls r0, r2, #4
_020053EE:
	ands r4, r5
	orrs r4, r0
	strb r4, [r7, #3]
	mov r3, sl
	ldrh r1, [r3, #0x1c]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _02005416
	movs r4, #1
	ldr r5, [sp, #0x3c]
	eors r4, r5
	movs r6, #1
	ands r4, r6
	lsls r0, r4, #5
	ldrb r1, [r7, #3]
	movs r3, #0x21
	rsbs r3, r3, #0
	adds r2, r3, #0
	b _02005426
_02005416:
	ldr r4, [sp, #0x3c]
	movs r5, #1
	ands r4, r5
	lsls r0, r4, #5
	ldrb r1, [r7, #3]
	movs r6, #0x21
	rsbs r6, r6, #0
	adds r2, r6, #0
_02005426:
	ands r1, r2
_02005428:
	orrs r1, r0
	strb r1, [r7, #3]
	ldr r1, _02005460 @ =0x0202B1A4
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_02005434:
	ldr r0, [sp, #0x18]
	adds r0, #1
	str r0, [sp, #0x18]
	ldr r1, [sp, #0x14]
	cmp r0, r1
	bhs _0200544E
	ldr r0, _02005460 @ =0x0202B1A4
	movs r1, #0
	ldrsb r1, [r0, r1]
	mov ip, r0
	cmp r1, #0
	blt _0200544E
	b _02004EBC
_0200544E:
	add sp, #0x74
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_02005460: .4byte 0x0202B1A4

	thumb_func_start sub_02005464
sub_02005464: @ 0x02005464
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x2c
	str r0, [sp]
	adds r0, #0x20
	mov sb, r0
	ldr r1, [sp]
	ldr r0, [r1, #0x20]
	mov r2, sb
	movs r3, #0xc
	ldrsh r1, [r2, r3]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1, #8]
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	str r1, [sp, #4]
	adds r6, r0, #2
	movs r3, #0
	str r3, [sp, #8]
	cmp r3, r1
	blo _0200549A
	b _020056F4
_0200549A:
	b _020056E8
_0200549C:
	ldrh r1, [r6]
	movs r0, #3
	mov r8, r0
	mov r2, r8
	ands r2, r1
	mov r8, r2
	lsls r0, r1, #0x10
	lsrs r3, r0, #0x12
	movs r2, #3
	ands r2, r3
	str r2, [sp, #0xc]
	lsrs r3, r0, #0x14
	movs r2, #3
	ands r2, r3
	str r2, [sp, #0x10]
	lsrs r3, r0, #0x16
	movs r2, #3
	ands r2, r3
	str r2, [sp, #0x14]
	lsrs r7, r0, #0x18
	movs r3, #1
	ands r7, r3
	lsrs r2, r0, #0x19
	ands r3, r2
	mov ip, r3
	lsrs r2, r0, #0x1a
	movs r3, #1
	ands r3, r2
	str r3, [sp, #0x18]
	lsrs r0, r0, #0x1c
	movs r2, #1
	ands r2, r0
	str r2, [sp, #0x1c]
	adds r6, #2
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	beq _020054F6
	ldrh r2, [r6]
	adds r6, #2
	ldrh r3, [r6]
	str r3, [sp, #0x20]
	adds r6, #2
	b _020054FC
_020054F6:
	movs r2, #0
	movs r0, #0
	str r0, [sp, #0x20]
_020054FC:
	ldrh r0, [r6]
	ldr r3, _020056A0 @ =0x000003FF
	mov sl, r3
	ands r3, r0
	mov sl, r3
	lsrs r0, r0, #0xc
	str r0, [sp, #0x24]
	adds r6, #2
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r1
	cmp r0, #0
	beq _02005518
	adds r6, #4
_02005518:
	movs r0, #0x80
	lsls r0, r0, #8
	ands r1, r0
	cmp r1, #0
	beq _02005524
	adds r6, #2
_02005524:
	ldr r1, _020056A4 @ =0x0202B1A4
	ldrb r0, [r1]
	lsls r0, r0, #3
	ldr r3, _020056A8 @ =0x0202D360
	adds r5, r0, r3
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	mov r2, sb
	movs r3, #0x12
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	lsls r3, r0, #8
	ldrh r4, [r2, #0x1c]
	movs r0, #8
	ands r0, r4
	mov r1, r8
	lsls r1, r1, #1
	mov r8, r1
	cmp r0, #0
	beq _02005558
	ldr r0, _020056AC @ =gUnknown_0200B404
	add r0, r8
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r0, r3, r0
	rsbs r3, r0, #0
_02005558:
	ldr r1, [sp, #0x20]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	mov r2, sb
	movs r1, #0x14
	ldrsh r2, [r2, r1]
	adds r0, r0, r2
	lsls r2, r0, #8
	movs r0, #0x10
	ands r0, r4
	cmp r0, #0
	beq _02005580
	ldr r1, [sp, #0xc]
	lsls r0, r1, #1
	ldr r1, _020056AC @ =gUnknown_0200B404
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r0, r2, r0
	rsbs r2, r0, #0
_02005580:
	ldr r1, [sp]
	ldr r0, [r1]
	adds r0, r0, r3
	asrs r3, r0, #8
	ldr r0, [r1, #4]
	adds r0, r0, r2
	asrs r2, r0, #8
	ldr r0, _020056B0 @ =gUnknown_0200B414
	add r0, r8
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmn r3, r0
	bge _0200559C
	b _020056DC
_0200559C:
	cmp r3, #0xf0
	ble _020055A2
	b _020056DC
_020055A2:
	movs r0, #0x44
	rsbs r0, r0, #0
	cmp r2, r0
	bge _020055AC
	b _020056DC
_020055AC:
	cmp r2, #0xa0
	ble _020055B2
	b _020056DC
_020055B2:
	ldr r1, _020056B4 @ =0x000001FF
	adds r0, r1, #0
	ands r3, r0
	ldrh r1, [r5, #2]
	ldr r0, _020056B8 @ =0xFFFFFE00
	ands r0, r1
	orrs r0, r3
	strh r0, [r5, #2]
	strb r2, [r5]
	mov r2, sb
	ldrh r1, [r2, #0x20]
	add r1, sl
	ldr r3, _020056A0 @ =0x000003FF
	ands r1, r3
	ldrh r2, [r5, #4]
	ldr r0, _020056BC @ =0xFFFFFC00
	ands r0, r2
	orrs r0, r1
	strh r0, [r5, #4]
	mov r0, sb
	adds r0, #0x23
	ldrb r1, [r0]
	movs r0, #3
	ands r1, r0
	lsls r1, r1, #2
	ldrb r2, [r5, #5]
	subs r0, #0x10
	ands r0, r2
	orrs r0, r1
	strb r0, [r5, #5]
	mov r1, sb
	adds r1, #0x22
	ldrb r2, [r1]
	ldr r1, [sp, #0x24]
	adds r2, r1, r2
	lsls r2, r2, #4
	movs r1, #0xf
	ands r0, r1
	orrs r0, r2
	strb r0, [r5, #5]
	ldr r3, [sp, #0x14]
	lsls r2, r3, #6
	ldrb r0, [r5, #1]
	movs r1, #0x3f
	adds r3, r1, #0
	ands r3, r0
	orrs r3, r2
	ldr r0, [sp, #0x10]
	lsls r2, r0, #6
	ldrb r0, [r5, #3]
	adds r4, r1, #0
	ands r4, r0
	orrs r4, r2
	strb r4, [r5, #3]
	ldr r1, [sp, #0x18]
	movs r2, #1
	ands r1, r2
	lsls r0, r1, #5
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r3, r1
	orrs r3, r0
	strb r3, [r5, #1]
	mov r2, sb
	adds r2, #0x24
	ldrb r0, [r2]
	ldr r1, [sp, #0x1c]
	cmp r0, #3
	beq _0200563E
	adds r1, r0, #0
_0200563E:
	movs r2, #3
	ands r1, r2
	lsls r0, r1, #2
	movs r1, #0xd
	rsbs r1, r1, #0
	ands r1, r3
	orrs r1, r0
	strb r1, [r5, #1]
	mov r3, sb
	ldrh r0, [r3, #0x1c]
	lsrs r0, r0, #7
	movs r2, #1
	movs r3, #1
	ands r0, r2
	lsls r0, r0, #4
	subs r2, #0x12
	ands r1, r2
	orrs r1, r0
	movs r0, #4
	rsbs r0, r0, #0
	ands r1, r0
	strb r1, [r5, #1]
	mov r0, sb
	ldrh r1, [r0, #0x1c]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0200567A
	movs r1, #1
	eors r7, r1
_0200567A:
	ands r7, r3
	lsls r0, r7, #4
	ands r4, r2
	orrs r4, r0
	strb r4, [r5, #3]
	mov r2, sb
	ldrh r1, [r2, #0x1c]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _020056C0
	movs r3, #1
	mov r0, ip
	eors r3, r0
	movs r1, #1
	ands r3, r1
	lsls r2, r3, #5
	b _020056C8
	.align 2, 0
_020056A0: .4byte 0x000003FF
_020056A4: .4byte 0x0202B1A4
_020056A8: .4byte 0x0202D360
_020056AC: .4byte gUnknown_0200B404
_020056B0: .4byte gUnknown_0200B414
_020056B4: .4byte 0x000001FF
_020056B8: .4byte 0xFFFFFE00
_020056BC: .4byte 0xFFFFFC00
_020056C0:
	mov r2, ip
	movs r3, #1
	ands r2, r3
	lsls r2, r2, #5
_020056C8:
	ldrb r1, [r5, #3]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r5, #3]
	ldr r1, _02005704 @ =0x0202B1A4
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_020056DC:
	ldr r2, [sp, #8]
	adds r2, #1
	str r2, [sp, #8]
	ldr r3, [sp, #4]
	cmp r2, r3
	bhs _020056F4
_020056E8:
	ldr r1, _02005704 @ =0x0202B1A4
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	blt _020056F4
	b _0200549C
_020056F4:
	add sp, #0x2c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_02005704: .4byte 0x0202B1A4

	thumb_func_start sub_02005708
sub_02005708: @ 0x02005708
	push {r4, r5, lr}
	ldr r0, _02005738 @ =0x0202B1A4
	ldrb r3, [r0]
	lsls r1, r3, #3
	ldr r0, _0200573C @ =0x0202D360
	adds r2, r1, r0
	cmp r3, #0x7f
	bhi _02005730
	movs r5, #4
	rsbs r5, r5, #0
	movs r4, #2
_0200571E:
	ldrb r1, [r2, #1]
	adds r0, r5, #0
	ands r0, r1
	orrs r0, r4
	strb r0, [r2, #1]
	adds r3, #1
	adds r2, #8
	cmp r3, #0x7f
	bls _0200571E
_02005730:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_02005738: .4byte 0x0202B1A4
_0200573C: .4byte 0x0202D360

	thumb_func_start sub_02005740
sub_02005740: @ 0x02005740
	push {lr}
	ldrh r1, [r0, #0x3c]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	bne _02005752
	movs r0, #0
	b _02005754
_02005752:
	movs r0, #1
_02005754:
	pop {r1}
	bx r1

	thumb_func_start sub_02005758
sub_02005758: @ 0x02005758
	push {lr}
	adds r2, r0, #0
	adds r2, #0x20
	cmp r1, #0
	bne _02005770
	ldrh r1, [r2, #0x1c]
	ldr r0, _0200576C @ =0x0000FDFF
	ands r0, r1
	b _0200578A
	.align 2, 0
_0200576C: .4byte 0x0000FDFF
_02005770:
	cmp r1, #1
	bne _02005780
	ldrh r1, [r2, #0x1c]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r3, #0
	orrs r0, r1
	b _0200578A
_02005780:
	ldrh r0, [r2, #0x1c]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r1, r3, #0
	eors r0, r1
_0200578A:
	strh r0, [r2, #0x1c]
	pop {r0}
	bx r0

	thumb_func_start sub_02005790
sub_02005790: @ 0x02005790
	adds r0, #0x20
	strh r1, [r0, #0x20]
	bx lr
	.align 2, 0

	thumb_func_start sub_02005798
sub_02005798: @ 0x02005798
	adds r0, #0x20
	movs r1, #0x20
	ldrsh r0, [r0, r1]
	bx lr

	thumb_func_start sub_020057A0
sub_020057A0: @ 0x020057A0
	adds r0, #0x42
	strb r1, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_020057A8
sub_020057A8: @ 0x020057A8
	adds r0, #0x42
	ldrb r0, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_020057B0
sub_020057B0: @ 0x020057B0
	adds r0, #0x43
	strb r1, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_020057B8
sub_020057B8: @ 0x020057B8
	push {lr}
	adds r2, r0, #0
	adds r2, #0x20
	cmp r1, #0
	bne _020057D0
	ldrh r1, [r2, #0x1c]
	ldr r0, _020057CC @ =0x0000FFF7
	ands r0, r1
	b _020057E2
	.align 2, 0
_020057CC: .4byte 0x0000FFF7
_020057D0:
	cmp r1, #1
	bne _020057DC
	ldrh r1, [r2, #0x1c]
	movs r0, #8
	orrs r0, r1
	b _020057E2
_020057DC:
	ldrh r0, [r2, #0x1c]
	movs r1, #8
	eors r0, r1
_020057E2:
	strh r0, [r2, #0x1c]
	pop {r0}
	bx r0

	thumb_func_start sub_020057E8
sub_020057E8: @ 0x020057E8
	push {lr}
	adds r2, r0, #0
	adds r2, #0x20
	cmp r1, #0
	bne _02005800
	ldrh r1, [r2, #0x1c]
	ldr r0, _020057FC @ =0x0000FFEF
	ands r0, r1
	b _02005812
	.align 2, 0
_020057FC: .4byte 0x0000FFEF
_02005800:
	cmp r1, #1
	bne _0200580C
	ldrh r1, [r2, #0x1c]
	movs r0, #0x10
	orrs r0, r1
	b _02005812
_0200580C:
	ldrh r0, [r2, #0x1c]
	movs r1, #0x10
	eors r0, r1
_02005812:
	strh r0, [r2, #0x1c]
	pop {r0}
	bx r0

	thumb_func_start sub_02005818
sub_02005818: @ 0x02005818
	push {lr}
	ldrh r1, [r0, #0x3c]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _02005828
	movs r0, #0
	b _0200582A
_02005828:
	movs r0, #1
_0200582A:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_02005830
sub_02005830: @ 0x02005830
	push {lr}
	ldrh r1, [r0, #0x3c]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _02005840
	movs r0, #0
	b _02005842
_02005840:
	movs r0, #1
_02005842:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_02005848
sub_02005848: @ 0x02005848
	push {lr}
	cmp r1, #3
	beq _02005852
	cmp r1, #2
	bhi _02005858
_02005852:
	adds r0, #0x44
	strb r1, [r0]
	b _02005868
_02005858:
	adds r2, r0, #0
	adds r2, #0x44
	ldrb r1, [r2]
	cmp r1, #1
	bhi _02005868
	movs r0, #1
	eors r0, r1
	strb r0, [r2]
_02005868:
	pop {r0}
	bx r0

	thumb_func_start sub_0200586C
sub_0200586C: @ 0x0200586C
	ldrh r1, [r0, #0x3c]
	movs r0, #4
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bx lr

	thumb_func_start sub_02005878
sub_02005878: @ 0x02005878
	ldrh r1, [r0, #0x3c]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bx lr

	thumb_func_start sub_02005884
sub_02005884: @ 0x02005884
	movs r1, #0x2c
	ldrsh r0, [r0, r1]
	bx lr
	.align 2, 0

	thumb_func_start sub_0200588C
sub_0200588C: @ 0x0200588C
	strh r1, [r0, #0x2c]
	bx lr

	thumb_func_start sub_02005890
sub_02005890: @ 0x02005890
	ldr r0, [r0, #0x20]
	movs r1, #4
	ldrsh r0, [r0, r1]
	bx lr

	thumb_func_start sub_02005898
sub_02005898: @ 0x02005898
	movs r1, #0x2a
	ldrsh r0, [r0, r1]
	bx lr
	.align 2, 0

	thumb_func_start sub_020058A0
sub_020058A0: @ 0x020058A0
	push {lr}
	adds r0, #0x20
	ldrh r3, [r0, #0x1c]
	ldr r2, _020058B8 @ =0x0000FFF9
	ands r2, r3
	strh r2, [r0, #0x1c]
	strh r1, [r0, #0xa]
	bl sub_02004B48
	pop {r0}
	bx r0
	.align 2, 0
_020058B8: .4byte 0x0000FFF9

	thumb_func_start sub_020058BC
sub_020058BC: @ 0x020058BC
	adds r0, #0x20
	movs r2, #8
	ldrsh r1, [r0, r2]
	ldr r0, [r0, #4]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1, #8]
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	bx lr
	.align 2, 0

	thumb_func_start sub_020058D4
sub_020058D4: @ 0x020058D4
	strh r1, [r0, #0x30]
	bx lr

	thumb_func_start sub_020058D8
sub_020058D8: @ 0x020058D8
	movs r1, #0x30
	ldrsh r0, [r0, r1]
	bx lr
	.align 2, 0

	thumb_func_start sub_020058E0
sub_020058E0: @ 0x020058E0
	push {lr}
	adds r3, r1, #0
	adds r2, r0, #0
	adds r2, #0x20
	ldrh r1, [r2, #0x1c]
	movs r0, #1
	orrs r0, r1
	strh r0, [r2, #0x1c]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r3, r0
	bne _0200590C
	movs r1, #8
	ldrsh r0, [r2, r1]
	ldr r1, [r2, #4]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0, #8]
	adds r1, r1, r0
	movs r3, #0
	ldrsh r0, [r1, r3]
	subs r3, r0, #1
_0200590C:
	strh r3, [r2, #0x1e]
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_02005914
sub_02005914: @ 0x02005914
	adds r0, #0x20
	ldrh r2, [r0, #0x1c]
	ldr r1, _02005924 @ =0x0000FFFE
	ands r1, r2
	movs r2, #0
	strh r1, [r0, #0x1c]
	strh r2, [r0, #0x1e]
	bx lr
	.align 2, 0
_02005924: .4byte 0x0000FFFE

	thumb_func_start sub_02005928
sub_02005928: @ 0x02005928
	push {lr}
	adds r2, r0, #0
	adds r2, #0x20
	cmp r1, #0
	bne _02005940
	ldrh r1, [r2, #0x1c]
	ldr r0, _0200593C @ =0x0000FFDF
	ands r0, r1
	b _02005952
	.align 2, 0
_0200593C: .4byte 0x0000FFDF
_02005940:
	cmp r1, #1
	bne _0200594C
	ldrh r1, [r2, #0x1c]
	movs r0, #0x20
	orrs r0, r1
	b _02005952
_0200594C:
	ldrh r0, [r2, #0x1c]
	movs r1, #0x20
	eors r0, r1
_02005952:
	strh r0, [r2, #0x1c]
	pop {r0}
	bx r0

	thumb_func_start sub_02005958
sub_02005958: @ 0x02005958
	push {lr}
	adds r2, r0, #0
	adds r2, #0x20
	cmp r1, #0
	bne _02005970
	ldrh r1, [r2, #0x1c]
	ldr r0, _0200596C @ =0x0000FFBF
	ands r0, r1
	b _02005982
	.align 2, 0
_0200596C: .4byte 0x0000FFBF
_02005970:
	cmp r1, #1
	bne _0200597C
	ldrh r1, [r2, #0x1c]
	movs r0, #0x40
	orrs r0, r1
	b _02005982
_0200597C:
	ldrh r0, [r2, #0x1c]
	movs r1, #0x40
	eors r0, r1
_02005982:
	strh r0, [r2, #0x1c]
	pop {r0}
	bx r0

	thumb_func_start sub_02005988
sub_02005988: @ 0x02005988
	push {lr}
	adds r2, r0, #0
	adds r2, #0x20
	cmp r1, #0
	bne _020059A0
	ldrh r1, [r2, #0x1c]
	ldr r0, _0200599C @ =0x0000FF7F
	ands r0, r1
	b _020059B2
	.align 2, 0
_0200599C: .4byte 0x0000FF7F
_020059A0:
	cmp r1, #1
	bne _020059AC
	ldrh r1, [r2, #0x1c]
	movs r0, #0x80
	orrs r0, r1
	b _020059B2
_020059AC:
	ldrh r0, [r2, #0x1c]
	movs r1, #0x80
	eors r0, r1
_020059B2:
	strh r0, [r2, #0x1c]
	pop {r0}
	bx r0

	thumb_func_start sub_020059B8
sub_020059B8: @ 0x020059B8
	ldr r0, _020059C4 @ =0x0202DB90
	movs r1, #0
	str r1, [r0]
	ldr r0, _020059C8 @ =0x02029238
	str r1, [r0]
	bx lr
	.align 2, 0
_020059C4: .4byte 0x0202DB90
_020059C8: .4byte 0x02029238

	thumb_func_start sub_020059CC
sub_020059CC: @ 0x020059CC
	bx lr
	.align 2, 0

	thumb_func_start sub_020059D0
sub_020059D0: @ 0x020059D0
	push {r4, lr}
	ldr r2, _020059E8 @ =0x0202DB90
	str r1, [r2]
	ldr r4, _020059EC @ =0x02029238
	movs r2, #0x4c
	muls r1, r2, r1
	bl sub_02006918
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_020059E8: .4byte 0x0202DB90
_020059EC: .4byte 0x02029238

	thumb_func_start sub_020059F0
sub_020059F0: @ 0x020059F0
	push {r4, lr}
	ldr r4, _02005A0C @ =0x02029238
	ldr r0, [r4]
	cmp r0, #0
	beq _02005A06
	bl sub_0200692C
	movs r1, #0
	str r1, [r4]
	ldr r0, _02005A10 @ =0x0202DB90
	str r1, [r0]
_02005A06:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_02005A0C: .4byte 0x02029238
_02005A10: .4byte 0x0202DB90

	thumb_func_start sub_02005A14
sub_02005A14: @ 0x02005A14
	push {lr}
	movs r1, #0
	strh r1, [r0, #0x18]
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	movs r2, #0x80
	lsls r2, r2, #1
	strh r2, [r0, #0xc]
	strh r2, [r0, #0xe]
	strh r1, [r0, #0x10]
	strh r1, [r0, #0x1a]
	str r1, [r0, #0x1c]
	movs r2, #0
	adds r0, #0x14
_02005A32:
	stm r0!, {r2}
	adds r1, #1
	cmp r1, #0
	beq _02005A32
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_02005A40
sub_02005A40: @ 0x02005A40
	push {r4, r5, r6, lr}
	movs r5, #0
	ldr r0, _02005A68 @ =0x02029238
	ldr r4, [r0]
	ldr r1, _02005A6C @ =0x0202DB90
	ldr r0, [r1]
	cmp r5, r0
	bge _02005A62
	adds r6, r1, #0
_02005A52:
	adds r0, r4, #0
	bl sub_02005A14
	adds r5, #1
	adds r4, #0x4c
	ldr r0, [r6]
	cmp r5, r0
	blt _02005A52
_02005A62:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_02005A68: .4byte 0x02029238
_02005A6C: .4byte 0x0202DB90

	thumb_func_start sub_02005A70
sub_02005A70: @ 0x02005A70
	push {lr}
	movs r2, #0x1a
	ldrsh r1, [r0, r2]
	cmp r1, #0
	beq _02005A82
	cmp r1, #1
	bne _02005A82
	bl sub_02004BE4
_02005A82:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_02005A88
sub_02005A88: @ 0x02005A88
	push {r4, lr}
	adds r4, r0, #0
	bl sub_02005A70
	adds r0, r4, #0
	bl sub_02005A14
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_02005A9C
sub_02005A9C: @ 0x02005A9C
	push {r4, r5, r6, lr}
	movs r5, #0
	ldr r0, _02005AC4 @ =0x02029238
	ldr r4, [r0]
	ldr r1, _02005AC8 @ =0x0202DB90
	ldr r0, [r1]
	cmp r5, r0
	bge _02005ABE
	adds r6, r1, #0
_02005AAE:
	adds r0, r4, #0
	bl sub_02005A88
	adds r5, #1
	adds r4, #0x4c
	ldr r0, [r6]
	cmp r5, r0
	blt _02005AAE
_02005ABE:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_02005AC4: .4byte 0x02029238
_02005AC8: .4byte 0x0202DB90

	thumb_func_start sub_02005ACC
sub_02005ACC: @ 0x02005ACC
	push {r4, r5, lr}
	bl sub_02005CF0
	cmp r0, #1
	bne _02005AFE
	movs r5, #0
	ldr r0, _02005AE0 @ =0x02029238
	ldr r4, [r0]
	b _02005AF6
	.align 2, 0
_02005AE0: .4byte 0x02029238
_02005AE4:
	movs r1, #0x18
	ldrsh r0, [r4, r1]
	cmp r0, #0
	beq _02005AF2
	adds r0, r4, #0
	bl sub_02005C8C
_02005AF2:
	adds r5, #1
	adds r4, #0x4c
_02005AF6:
	ldr r0, _02005B04 @ =0x0202DB90
	ldr r0, [r0]
	cmp r5, r0
	blt _02005AE4
_02005AFE:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_02005B04: .4byte 0x0202DB90

	thumb_func_start sub_02005B08
sub_02005B08: @ 0x02005B08
	push {r4, lr}
	movs r2, #0
	ldr r0, _02005B28 @ =0x02029238
	ldr r1, [r0]
	ldr r0, _02005B2C @ =0x0202DB90
	ldr r0, [r0]
	cmp r2, r0
	bge _02005B38
	adds r3, r0, #0
_02005B1A:
	movs r4, #0x18
	ldrsh r0, [r1, r4]
	cmp r0, #0
	bne _02005B30
	adds r0, r1, #0
	b _02005B3A
	.align 2, 0
_02005B28: .4byte 0x02029238
_02005B2C: .4byte 0x0202DB90
_02005B30:
	adds r2, #1
	adds r1, #0x4c
	cmp r2, r3
	blt _02005B1A
_02005B38:
	movs r0, #0
_02005B3A:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_02005B40
sub_02005B40: @ 0x02005B40
	movs r1, #0x1a
	ldrsh r0, [r0, r1]
	bx lr
	.align 2, 0

	thumb_func_start sub_02005B48
sub_02005B48: @ 0x02005B48
	push {lr}
	ldr r1, _02005B68 @ =0x0202E144
	ldr r0, _02005B6C @ =0x02029030
	str r0, [r1]
	ldr r1, _02005B70 @ =0x02029008
	movs r0, #0x80
	str r0, [r1]
	movs r0, #1
	bl sub_02005C70
	movs r0, #1
	bl sub_02005CE4
	pop {r0}
	bx r0
	.align 2, 0
_02005B68: .4byte 0x0202E144
_02005B6C: .4byte 0x02029030
_02005B70: .4byte 0x02029008

	thumb_func_start sub_02005B74
sub_02005B74: @ 0x02005B74
	ldr r0, _02005B80 @ =0x0202E144
	movs r1, #0
	str r1, [r0]
	ldr r0, _02005B84 @ =0x02029008
	str r1, [r0]
	bx lr
	.align 2, 0
_02005B80: .4byte 0x0202E144
_02005B84: .4byte 0x02029008

	thumb_func_start sub_02005B88
sub_02005B88: @ 0x02005B88
	ldr r1, _02005B90 @ =0x02029004
	movs r0, #0
	str r0, [r1]
	bx lr
	.align 2, 0
_02005B90: .4byte 0x02029004

	thumb_func_start sub_02005B94
sub_02005B94: @ 0x02005B94
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r2, r0, #0
	ldr r0, _02005C0C @ =0x0202E144
	ldr r1, [r0]
	mov sl, r0
	cmp r1, #0
	beq _02005BFE
	cmp r2, #0
	beq _02005BFE
	cmp r2, #1
	bne _02005BFE
	movs r7, #0
	ldr r1, _02005C10 @ =0x02029004
	ldr r0, [r1]
	mov sb, r1
	cmp r7, r0
	bhs _02005BFE
	mov r8, r1
_02005BC0:
	movs r5, #0
	mov r0, sl
	ldr r3, [r0]
	ldr r0, [r1]
	movs r6, #0
	cmp r0, #1
	beq _02005BF0
	mov ip, r8
_02005BD0:
	ldr r4, [r3]
	ldr r2, [r3, #4]
	ldr r1, [r4, #0x1c]
	ldr r0, [r2, #0x1c]
	cmp r1, r0
	bhs _02005BE2
	str r2, [r3]
	str r4, [r3, #4]
	movs r6, #1
_02005BE2:
	adds r5, #1
	adds r3, #4
	mov r1, ip
	ldr r0, [r1]
	subs r0, #1
	cmp r5, r0
	blo _02005BD0
_02005BF0:
	cmp r6, #0
	beq _02005BFE
	adds r7, #1
	mov r1, sb
	ldr r0, [r1]
	cmp r7, r0
	blo _02005BC0
_02005BFE:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_02005C0C: .4byte 0x0202E144
_02005C10: .4byte 0x02029004

	thumb_func_start sub_02005C14
sub_02005C14: @ 0x02005C14
	push {r4, r5, r6, lr}
	ldr r0, _02005C4C @ =0x0202E144
	ldr r0, [r0]
	cmp r0, #0
	beq _02005C66
	movs r5, #0
	adds r4, r0, #0
	ldr r0, _02005C50 @ =0x02029004
	ldr r0, [r0]
	cmp r5, r0
	bhs _02005C66
	movs r0, #0x80
	lsls r0, r0, #2
	adds r6, r0, #0
_02005C30:
	ldr r1, [r4]
	movs r2, #0x18
	ldrsh r0, [r1, r2]
	cmp r0, #0
	beq _02005C5A
	ldrh r0, [r1, #0x3c]
	ands r0, r6
	cmp r0, #0
	beq _02005C54
	adds r0, r1, #0
	bl sub_02005464
	b _02005C5A
	.align 2, 0
_02005C4C: .4byte 0x0202E144
_02005C50: .4byte 0x02029004
_02005C54:
	adds r0, r1, #0
	bl sub_02004E70
_02005C5A:
	adds r5, #1
	adds r4, #4
	ldr r0, _02005C6C @ =0x02029004
	ldr r0, [r0]
	cmp r5, r0
	blo _02005C30
_02005C66:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_02005C6C: .4byte 0x02029004

	thumb_func_start sub_02005C70
sub_02005C70: @ 0x02005C70
	ldr r1, _02005C78 @ =0x0202AE4C
	str r0, [r1]
	bx lr
	.align 2, 0
_02005C78: .4byte 0x0202AE4C

	thumb_func_start sub_02005C7C
sub_02005C7C: @ 0x02005C7C
	ldr r0, _02005C84 @ =0x0202AE4C
	ldr r0, [r0]
	bx lr
	.align 2, 0
_02005C84: .4byte 0x0202AE4C

	thumb_func_start sub_02005C88
sub_02005C88: @ 0x02005C88
	bx lr
	.align 2, 0

	thumb_func_start sub_02005C8C
sub_02005C8C: @ 0x02005C8C
	push {r4, lr}
	adds r4, r0, #0
	ldrh r1, [r4, #0x3c]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _02005CBE
	adds r0, r4, #0
	adds r0, #0x43
	ldrb r0, [r0]
	movs r1, #3
	subs r1, r1, r0
	lsls r1, r1, #0x18
	ldr r0, [r4, #8]
	adds r0, r0, r1
	str r0, [r4, #0x1c]
	ldr r3, _02005CC4 @ =0x02029004
	ldr r1, [r3]
	ldr r0, _02005CC8 @ =0x0202E144
	ldr r2, [r0]
	lsls r0, r1, #2
	adds r0, r0, r2
	str r4, [r0]
	adds r1, #1
	str r1, [r3]
_02005CBE:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_02005CC4: .4byte 0x02029004
_02005CC8: .4byte 0x0202E144

	thumb_func_start sub_02005CCC
sub_02005CCC: @ 0x02005CCC
	push {lr}
	bl sub_02005C8C
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_02005CD8
sub_02005CD8: @ 0x02005CD8
	push {lr}
	bl sub_02005C8C
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_02005CE4
sub_02005CE4: @ 0x02005CE4
	ldr r1, _02005CEC @ =0x02029018
	str r0, [r1]
	bx lr
	.align 2, 0
_02005CEC: .4byte 0x02029018

	thumb_func_start sub_02005CF0
sub_02005CF0: @ 0x02005CF0
	ldr r0, _02005CF8 @ =0x02029018
	ldr r0, [r0]
	bx lr
	.align 2, 0
_02005CF8: .4byte 0x02029018

	thumb_func_start sub_02005CFC
sub_02005CFC: @ 0x02005CFC
	push {lr}
	ldr r0, _02005D20 @ =0x0202B2F0
	movs r1, #0
	str r1, [r0]
	str r1, [r0, #4]
	ldr r2, _02005D24 @ =0x02029240
	str r1, [r2]
	str r1, [r2, #4]
	movs r3, #0
_02005D0E:
	strh r3, [r0, #0x1c]
	strh r3, [r2, #0x1c]
	adds r2, #0x1c
	adds r0, #0x1c
	adds r1, #1
	cmp r1, #0xff
	bls _02005D0E
	pop {r0}
	bx r0
	.align 2, 0
_02005D20: .4byte 0x0202B2F0
_02005D24: .4byte 0x02029240

	thumb_func_start sub_02005D28
sub_02005D28: @ 0x02005D28
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	adds r6, r1, #0
	adds r7, r2, #0
	ldr r1, [sp, #0x38]
	ldr r2, [sp, #0x3c]
	ldr r4, [sp, #0x40]
	ldr r5, [sp, #0x4c]
	mov r8, r5
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	lsls r3, r3, #0x10
	lsrs r0, r3, #0x10
	str r0, [sp]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sl, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	mov ip, r4
	ldr r1, [sp, #0x44]
	lsls r5, r1, #0x10
	lsrs r5, r5, #0x10
	str r5, [sp, #4]
	ldr r5, [sp, #0x48]
	lsls r5, r5, #0x10
	str r5, [sp, #0xc]
	lsrs r0, r5, #0x10
	str r0, [sp, #8]
	mov r1, r8
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	cmp r1, #0
	beq _02005D7E
	b _02005ECC
_02005D7E:
	mov r5, sb
	cmp r5, #1
	beq _02005D8A
	cmp r5, #2
	beq _02005DD6
	b _02005E86
_02005D8A:
	lsrs r3, r3, #0x11
	mov r1, ip
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	lsrs r0, r0, #0x1f
	adds r1, r1, r0
	asrs r5, r1, #1
	movs r4, #0
	cmp r8, sl
	bhs _02005E86
	lsls r2, r3, #1
	mov r8, r2
	lsls r5, r5, #1
	mov ip, r5
	ldr r5, [sp, #4]
	lsls r0, r5, #0x10
	asrs r5, r0, #0x10
	ldr r1, [sp, #8]
	lsls r0, r1, #0x10
	asrs r6, r0, #0x10
_02005DB2:
	movs r1, #0
	adds r2, r4, #1
	cmp r1, r3
	bhs _02005DC6
	adds r0, r5, r6
_02005DBC:
	strh r0, [r7]
	adds r7, #2
	adds r1, #1
	cmp r1, r3
	blo _02005DBC
_02005DC6:
	mov r1, r8
	subs r0, r7, r1
	mov r1, ip
	adds r7, r0, r1
	adds r4, r2, #0
	cmp r4, sl
	blo _02005DB2
	b _02005E86
_02005DD6:
	ldr r5, [sp, #8]
	lsls r5, r5, #0x10
	str r5, [sp, #0x10]
	cmp r5, #0
	beq _02005E44
	lsrs r3, r3, #0x11
	lsls r0, r2, #0x10
	asrs r1, r0, #0x10
	lsrs r0, r0, #0x1f
	adds r1, r1, r0
	asrs r1, r1, #1
	mov sb, r1
	mov r1, ip
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	lsrs r0, r0, #0x1f
	adds r1, r1, r0
	asrs r5, r1, #1
	movs r4, #0
	cmp r8, sl
	bhs _02005E86
	lsls r2, r3, #1
	mov r8, r2
	lsls r5, r5, #1
	mov ip, r5
	mov r5, sb
	lsls r5, r5, #1
	str r5, [sp, #0x14]
	ldr r0, [sp, #0x10]
	mov sb, r0
_02005E12:
	movs r1, #0
	adds r2, r4, #1
	cmp r1, r3
	bhs _02005E2E
	mov r0, sb
	asrs r5, r0, #0x10
_02005E1E:
	ldrh r0, [r6]
	adds r0, r5, r0
	strh r0, [r7]
	adds r6, #2
	adds r7, #2
	adds r1, #1
	cmp r1, r3
	blo _02005E1E
_02005E2E:
	mov r1, r8
	subs r0, r6, r1
	ldr r5, [sp, #0x14]
	adds r6, r0, r5
	subs r0, r7, r1
	mov r1, ip
	adds r7, r0, r1
	adds r4, r2, #0
	cmp r4, sl
	blo _02005E12
	b _02005E86
_02005E44:
	lsls r0, r2, #0x10
	asrs r1, r0, #0x10
	lsrs r0, r0, #0x1f
	adds r1, r1, r0
	asrs r1, r1, #1
	mov sb, r1
	mov r2, ip
	lsls r0, r2, #0x10
	asrs r1, r0, #0x10
	lsrs r0, r0, #0x1f
	adds r1, r1, r0
	asrs r5, r1, #1
	movs r4, #0
	cmp r8, sl
	bhs _02005E86
	ldr r3, [sp]
	lsrs r3, r3, #1
	mov r8, r3
_02005E68:
	adds r0, r6, #0
	adds r1, r7, #0
	mov r2, r8
	ldr r3, _02005E94 @ =0x001FFFFF
	ands r2, r3
	bl sub_020090C4
	mov r1, sb
	lsls r0, r1, #1
	adds r6, r6, r0
	lsls r0, r5, #1
	adds r7, r7, r0
	adds r4, #1
	cmp r4, sl
	blo _02005E68
_02005E86:
	ldr r2, [sp, #0x50]
	cmp r2, #0
	beq _02005EF0
	adds r0, r2, #0
	bl sub_0200692C
	b _02005EF0
	.align 2, 0
_02005E94: .4byte 0x001FFFFF
_02005E98:
	mov r3, sb
	strh r3, [r1, #0x14]
	str r6, [r1]
	str r7, [r1, #4]
	mov r5, sp
	ldrh r5, [r5]
	strh r5, [r1, #8]
	mov r0, sl
	strh r0, [r1, #0xa]
	strh r2, [r1, #0xc]
	mov r2, ip
	strh r2, [r1, #0xe]
	mov r3, sp
	ldrh r3, [r3, #4]
	strh r3, [r1, #0x10]
	mov r5, sp
	ldrh r5, [r5, #8]
	strh r5, [r1, #0x12]
	mov r0, r8
	strh r0, [r1, #0x16]
	ldr r2, [sp, #0x50]
	str r2, [r1, #0x18]
	ldr r0, [r4]
	adds r0, #1
	str r0, [r4]
	b _02005EF0
_02005ECC:
	ldr r4, _02005ED8 @ =0x0202B2F0
	ldr r0, [r4]
	cmp r0, #0xff
	ble _02005EDC
_02005ED4:
	b _02005ED4
	.align 2, 0
_02005ED8: .4byte 0x0202B2F0
_02005EDC:
	movs r3, #0
	adds r1, r4, #0
	adds r1, #8
_02005EE2:
	ldrh r0, [r1, #0x14]
	cmp r0, #0
	beq _02005E98
	adds r1, #0x1c
	adds r3, #1
	cmp r3, #0xff
	bls _02005EE2
_02005EF0:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_02005F00
sub_02005F00: @ 0x02005F00
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	adds r7, r1, #0
	ldr r1, [sp, #0x30]
	ldr r4, [sp, #0x34]
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	cmp r3, #1
	bls _02005F2C
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, r5
	bge _02005F2C
_02005F2A:
	b _02005F2A
_02005F2C:
	str r3, [sp]
	movs r0, #0
	str r0, [sp, #4]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	str r1, [sp, #8]
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	str r4, [sp, #0x14]
	str r0, [sp, #0x18]
	movs r0, #1
	movs r1, #0
	adds r2, r7, #0
	adds r3, r5, #0
	bl sub_02005D28
	add sp, #0x1c
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_02005F58
sub_02005F58: @ 0x02005F58
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	adds r6, r0, #0
	adds r7, r1, #0
	ldr r0, [sp, #0x30]
	ldr r1, [sp, #0x34]
	ldr r4, [sp, #0x38]
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	cmp r3, #1
	bls _02005F88
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, r5
	bge _02005F88
_02005F86:
	b _02005F86
_02005F88:
	str r3, [sp]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #4]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	str r4, [sp, #0x14]
	str r0, [sp, #0x18]
	movs r0, #2
	adds r1, r6, #0
	adds r2, r7, #0
	adds r3, r5, #0
	bl sub_02005D28
	add sp, #0x1c
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_02005FB4
sub_02005FB4: @ 0x02005FB4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	mov ip, r1
	ldr r1, [sp, #0x30]
	ldr r4, [sp, #0x34]
	ldr r5, [sp, #0x38]
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	cmp r3, #1
	bls _02005FE6
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, r6
	bge _02005FE6
_02005FE4:
	b _02005FE4
_02005FE6:
	str r3, [sp]
	movs r0, #0
	str r0, [sp, #4]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #8]
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0xc]
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0x10]
	str r5, [sp, #0x14]
	ldr r0, [sp, #0x3c]
	str r0, [sp, #0x18]
	movs r0, #1
	movs r1, #0
	mov r2, ip
	adds r3, r6, #0
	bl sub_02005D28
	add sp, #0x1c
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_02006018
sub_02006018: @ 0x02006018
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	adds r7, r0, #0
	mov ip, r1
	ldr r0, [sp, #0x30]
	ldr r1, [sp, #0x34]
	ldr r4, [sp, #0x38]
	ldr r5, [sp, #0x3c]
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	cmp r3, #1
	bls _0200604E
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, r6
	bge _0200604E
_0200604C:
	b _0200604C
_0200604E:
	str r3, [sp]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #4]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0x10]
	str r5, [sp, #0x14]
	ldr r0, [sp, #0x40]
	str r0, [sp, #0x18]
	movs r0, #2
	adds r1, r7, #0
	mov r2, ip
	adds r3, r6, #0
	bl sub_02005D28
	add sp, #0x1c
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_02006080
sub_02006080: @ 0x02006080
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _020060B4 @ =0x0202B2F0
	mov sl, r0
	ldr r3, _020060B8 @ =0x02029240
	movs r0, #0
	str r0, [r3, #4]
	mov r6, sl
	adds r6, #8
	adds r5, r3, #0
	adds r5, #8
	movs r7, #0
	movs r1, #0
_020060A2:
	ldrh r0, [r6, #0x14]
	adds r1, #1
	mov r8, r1
	movs r1, #0x1c
	adds r1, r1, r6
	mov sb, r1
	cmp r0, #0
	beq _020060EA
	b _020060C0
	.align 2, 0
_020060B4: .4byte 0x0202B2F0
_020060B8: .4byte 0x02029240
_020060BC:
	adds r7, #1
	adds r5, #0x1c
_020060C0:
	cmp r7, #0xff
	bhi _020060EA
	ldrh r4, [r5, #0x14]
	cmp r4, #0
	bne _020060BC
	adds r0, r6, #0
	adds r1, r5, #0
	ldr r2, _02006104 @ =0x04000007
	str r3, [sp]
	bl sub_020090C4
	ldr r3, [sp]
	ldr r0, [r3]
	adds r0, #1
	str r0, [r3]
	adds r5, #0x1c
	strh r4, [r6, #0x14]
	mov r1, sl
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
_020060EA:
	mov r1, r8
	mov r6, sb
	cmp r1, #0xff
	bls _020060A2
	ldr r1, [r3, #4]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _02006108
	movs r0, #1
	str r0, [r3, #4]
	b _02006110
	.align 2, 0
_02006104: .4byte 0x04000007
_02006108:
	movs r0, #1
	str r0, [r3, #4]
	bl sub_02006120
_02006110:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_02006120
sub_02006120: @ 0x02006120
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r1, _02006178 @ =0x02029240
	ldr r0, [r1]
	cmp r0, #0
	bne _02006136
	b _020062A6
_02006136:
	ldr r0, [r1, #4]
	cmp r0, #1
	beq _0200613E
	b _020062A6
_0200613E:
	movs r0, #0
	str r0, [r1, #4]
	movs r1, #0
_02006144:
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, #8
	ldr r2, _02006178 @ =0x02029240
	adds r4, r2, r0
	ldrh r0, [r4, #0x14]
	adds r1, #1
	str r1, [sp]
	cmp r0, #0
	bne _0200615C
	b _0200629E
_0200615C:
	ldrh r0, [r4, #0x16]
	subs r0, #1
	strh r0, [r4, #0x16]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0200616A
	b _0200629E
_0200616A:
	ldrh r0, [r4, #0x14]
	cmp r0, #1
	beq _0200617C
	cmp r0, #2
	beq _020061CA
	b _02006288
	.align 2, 0
_02006178: .4byte 0x02029240
_0200617C:
	ldr r6, [r4, #4]
	ldrh r0, [r4, #8]
	lsrs r2, r0, #1
	movs r3, #0xe
	ldrsh r0, [r4, r3]
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	str r0, [sp, #8]
	movs r5, #0
	ldrh r0, [r4, #0xa]
	cmp r5, r0
	bhs _02006288
	lsls r1, r2, #1
	mov ip, r1
	ldr r3, [sp, #8]
	lsls r3, r3, #1
	mov r8, r3
_020061A0:
	movs r1, #0
	adds r3, r5, #1
	cmp r1, r2
	bhs _020061B8
_020061A8:
	ldrh r0, [r4, #0x12]
	ldrh r5, [r4, #0x10]
	adds r0, r0, r5
	strh r0, [r6]
	adds r6, #2
	adds r1, #1
	cmp r1, r2
	blo _020061A8
_020061B8:
	mov r1, ip
	subs r0, r6, r1
	mov r5, r8
	adds r6, r0, r5
	adds r5, r3, #0
	ldrh r0, [r4, #0xa]
	cmp r5, r0
	blo _020061A0
	b _02006288
_020061CA:
	ldr r7, [r4]
	ldr r6, [r4, #4]
	movs r1, #0x12
	ldrsh r0, [r4, r1]
	cmp r0, #0
	beq _0200623C
	ldrh r0, [r4, #8]
	lsrs r2, r0, #1
	movs r3, #0xc
	ldrsh r0, [r4, r3]
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	mov sb, r0
	movs r5, #0xe
	ldrsh r0, [r4, r5]
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	str r0, [sp, #8]
	movs r5, #0
	ldrh r0, [r4, #0xa]
	cmp r5, r0
	bhs _02006288
	lsls r1, r2, #1
	mov ip, r1
	ldr r3, [sp, #8]
	lsls r3, r3, #1
	mov r8, r3
	mov r0, sb
	lsls r0, r0, #1
	mov sb, r0
_0200620A:
	movs r1, #0
	adds r3, r5, #1
	cmp r1, r2
	bhs _02006224
_02006212:
	ldrh r0, [r4, #0x12]
	ldrh r5, [r7]
	adds r0, r0, r5
	strh r0, [r6]
	adds r7, #2
	adds r6, #2
	adds r1, #1
	cmp r1, r2
	blo _02006212
_02006224:
	mov r1, ip
	subs r0, r7, r1
	mov r5, sb
	adds r7, r0, r5
	subs r0, r6, r1
	mov r1, r8
	adds r6, r0, r1
	adds r5, r3, #0
	ldrh r3, [r4, #0xa]
	cmp r5, r3
	blo _0200620A
	b _02006288
_0200623C:
	ldrh r2, [r4, #8]
	movs r5, #0xc
	ldrsh r0, [r4, r5]
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	mov sb, r0
	movs r1, #0xe
	ldrsh r0, [r4, r1]
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	str r0, [sp, #8]
	movs r5, #0
	ldrh r3, [r4, #0xa]
	cmp r5, r3
	bhs _02006288
	lsrs r2, r2, #1
	mov r8, r2
	ldr r0, _020062B8 @ =0x001FFFFF
	mov sl, r0
_02006266:
	adds r0, r7, #0
	adds r1, r6, #0
	mov r2, r8
	mov r3, sl
	ands r2, r3
	bl sub_020090C4
	mov r1, sb
	lsls r0, r1, #1
	adds r7, r7, r0
	ldr r2, [sp, #8]
	lsls r0, r2, #1
	adds r6, r6, r0
	adds r5, #1
	ldrh r3, [r4, #0xa]
	cmp r5, r3
	blo _02006266
_02006288:
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _02006292
	bl sub_0200692C
_02006292:
	movs r0, #0
	strh r0, [r4, #0x14]
	ldr r5, _020062BC @ =0x02029240
	ldr r0, [r5]
	subs r0, #1
	str r0, [r5]
_0200629E:
	ldr r1, [sp]
	cmp r1, #0xff
	bhi _020062A6
	b _02006144
_020062A6:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_020062B8: .4byte 0x001FFFFF
_020062BC: .4byte 0x02029240

	thumb_func_start sub_020062C0
sub_020062C0: @ 0x020062C0
	push {lr}
	bl sub_02006080
	bl sub_02006120
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_020062D0
sub_020062D0: @ 0x020062D0
	ldr r1, _020062D8 @ =REG_IME
	strh r0, [r1]
	bx lr
	.align 2, 0
_020062D8: .4byte REG_IME

	thumb_func_start sub_020062DC
sub_020062DC: @ 0x020062DC
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _020062E8 @ =REG_IE
	strh r0, [r1]
	bx lr
	.align 2, 0
_020062E8: .4byte REG_IE

	thumb_func_start sub_020062EC
sub_020062EC: @ 0x020062EC
	ldr r0, _020062F4 @ =REG_IE
	ldrh r0, [r0]
	bx lr
	.align 2, 0
_020062F4: .4byte REG_IE

	thumb_func_start sub_020062F8
sub_020062F8: @ 0x020062F8
	ldr r0, _02006300 @ =REG_IF
	ldrh r0, [r0]
	bx lr
	.align 2, 0
_02006300: .4byte REG_IF

	thumb_func_start sub_02006304
sub_02006304: @ 0x02006304
	push {lr}
	cmp r0, #1
	beq _02006328
	cmp r0, #1
	bgt _02006314
	cmp r0, #0
	beq _0200631E
	b _0200633C
_02006314:
	cmp r0, #2
	beq _02006330
	cmp r0, #3
	beq _02006338
	b _0200633C
_0200631E:
	ldr r0, _02006324 @ =REG_TM0CNT
	b _0200633A
	.align 2, 0
_02006324: .4byte REG_TM0CNT
_02006328:
	ldr r0, _0200632C @ =REG_TM1CNT
	b _0200633A
	.align 2, 0
_0200632C: .4byte REG_TM1CNT
_02006330:
	ldr r0, _02006334 @ =REG_TM2CNT
	b _0200633A
	.align 2, 0
_02006334: .4byte REG_TM2CNT
_02006338:
	ldr r0, _02006340 @ =REG_TM3CNT
_0200633A:
	str r1, [r0]
_0200633C:
	pop {r0}
	bx r0
	.align 2, 0
_02006340: .4byte REG_TM3CNT

	thumb_func_start sub_02006344
sub_02006344: @ 0x02006344
	push {lr}
	adds r1, r0, #0
	cmp r1, #0
	bne _0200635C
	ldr r0, _02006354 @ =0x03006040
	ldr r1, _02006358 @ =gUnknown_0200B338
	ldr r1, [r1]
	b _02006362
	.align 2, 0
_02006354: .4byte 0x03006040
_02006358: .4byte gUnknown_0200B338
_0200635C:
	cmp r1, #1
	beq _02006364
	ldr r0, _02006368 @ =0x03006040
_02006362:
	str r1, [r0]
_02006364:
	pop {r0}
	bx r0
	.align 2, 0
_02006368: .4byte 0x03006040

	thumb_func_start sub_0200636C
sub_0200636C: @ 0x0200636C
	ldr r1, _02006374 @ =0x02029000
	str r0, [r1]
	bx lr
	.align 2, 0
_02006374: .4byte 0x02029000

	thumb_func_start sub_02006378
sub_02006378: @ 0x02006378
	push {lr}
	adds r1, r0, #0
	cmp r1, #0
	beq _02006388
	ldr r0, _02006384 @ =0x03006040
	b _0200638E
	.align 2, 0
_02006384: .4byte 0x03006040
_02006388:
	ldr r0, _02006394 @ =0x03006040
	ldr r1, _02006398 @ =gUnknown_0200B338
	ldr r1, [r1, #0xc]
_0200638E:
	str r1, [r0, #0xc]
	pop {r0}
	bx r0
	.align 2, 0
_02006394: .4byte 0x03006040
_02006398: .4byte gUnknown_0200B338

	thumb_func_start sub_0200639C
sub_0200639C: @ 0x0200639C
	push {lr}
	adds r1, r0, #0
	cmp r1, #0
	beq _020063AC
	ldr r0, _020063A8 @ =0x03006040
	b _020063B2
	.align 2, 0
_020063A8: .4byte 0x03006040
_020063AC:
	ldr r0, _020063B8 @ =0x03006040
	ldr r1, _020063BC @ =gUnknown_0200B338
	ldr r1, [r1, #8]
_020063B2:
	str r1, [r0, #8]
	pop {r0}
	bx r0
	.align 2, 0
_020063B8: .4byte 0x03006040
_020063BC: .4byte gUnknown_0200B338

	thumb_func_start sub_020063C0
sub_020063C0: @ 0x020063C0
	push {lr}
	adds r1, r0, #0
	cmp r1, #0
	beq _020063D0
	ldr r0, _020063CC @ =0x03006040
	b _020063D6
	.align 2, 0
_020063CC: .4byte 0x03006040
_020063D0:
	ldr r0, _020063DC @ =0x03006040
	ldr r1, _020063E0 @ =gUnknown_0200B338
	ldr r1, [r1, #0x24]
_020063D6:
	str r1, [r0, #0x24]
	pop {r0}
	bx r0
	.align 2, 0
_020063DC: .4byte 0x03006040
_020063E0: .4byte gUnknown_0200B338

	thumb_func_start sub_020063E4
sub_020063E4: @ 0x020063E4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	adds r4, r1, #0
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #3
	ldr r1, _02006438 @ =0x0202AE50
	adds r2, r0, r1
	movs r0, #0
	ldrsh r3, [r2, r0]
	mov ip, r1
	cmp r3, #0
	bne _020064E0
	movs r0, #1
	strh r0, [r2]
	strh r7, [r2, #6]
	str r4, [r2, #8]
	str r0, [r2, #0x10]
	str r3, [r2, #0x14]
	str r3, [r2, #0xc]
	movs r4, #0
	ldr r0, _0200643C @ =0x02029020
	movs r3, #0
	ldrsh r1, [r0, r3]
	movs r6, #1
	rsbs r6, r6, #0
	mov sb, r0
	cmp r1, r6
	bne _02006448
	ldr r0, _02006440 @ =0x0000FFFF
	strh r0, [r2, #2]
	adds r0, r6, #0
	strh r0, [r2, #4]
	mov r0, sb
	strh r5, [r0]
	ldr r0, _02006444 @ =0x0202E140
	b _020064DE
	.align 2, 0
_02006438: .4byte 0x0202AE50
_0200643C: .4byte 0x02029020
_02006440: .4byte 0x0000FFFF
_02006444: .4byte 0x0202E140
_02006448:
	ldr r0, _02006460 @ =0x0202E140
	movs r1, #0
	ldrsh r3, [r0, r1]
	mov r8, r0
	cmp r3, r6
	beq _020064BC
	lsls r0, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #3
	mov r1, ip
	b _02006472
	.align 2, 0
_02006460: .4byte 0x0202E140
_02006464:
	movs r0, #4
	ldrsh r3, [r4, r0]
	cmp r3, r6
	beq _020064BC
	lsls r0, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #3
_02006472:
	adds r4, r0, r1
	ldrh r0, [r4, #6]
	cmp r7, r0
	blo _02006464
	movs r1, #1
	rsbs r1, r1, #0
	cmp r3, r1
	beq _020064BC
	ldrh r0, [r4, #2]
	strh r0, [r2, #2]
	strh r3, [r2, #4]
	movs r2, #2
	ldrsh r0, [r4, r2]
	cmp r0, r1
	beq _0200649E
	adds r1, r0, #0
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	add r0, ip
	strh r5, [r0, #4]
	b _020064A2
_0200649E:
	mov r1, r8
	strh r5, [r1]
_020064A2:
	strh r5, [r4, #2]
	ldr r0, _020064B4 @ =0x0202B170
	ldr r0, [r0]
	cmp r0, r3
	bne _020064E0
	ldr r0, _020064B8 @ =0x0202B214
	str r5, [r0]
	b _020064E0
	.align 2, 0
_020064B4: .4byte 0x0202B170
_020064B8: .4byte 0x0202B214
_020064BC:
	ldr r0, _020064EC @ =0x0000FFFF
	strh r0, [r2, #4]
	mov r3, ip
	subs r1, r4, r3
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r1, r0, #4
	adds r0, r0, r1
	lsls r1, r0, #8
	adds r0, r0, r1
	lsls r1, r0, #0x10
	adds r0, r0, r1
	rsbs r0, r0, #0
	asrs r0, r0, #3
	strh r0, [r2, #2]
	strh r5, [r4, #4]
	mov r0, sb
_020064DE:
	strh r5, [r0]
_020064E0:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_020064EC: .4byte 0x0000FFFF

	thumb_func_start sub_020064F0
sub_020064F0: @ 0x020064F0
	push {r4, lr}
	adds r1, r0, #0
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	ldr r4, _02006564 @ =0x0202AE50
	adds r2, r0, r4
	movs r3, #0
	ldrsh r0, [r2, r3]
	cmp r0, #0
	beq _0200655E
	movs r0, #0
	strh r0, [r2]
	ldr r3, _02006568 @ =0x0202B214
	ldr r0, [r3]
	cmp r1, r0
	bne _02006518
	movs r1, #2
	ldrsh r0, [r2, r1]
	str r0, [r3]
_02006518:
	movs r3, #4
	ldrsh r0, [r2, r3]
	cmp r0, #0
	blt _0200652C
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #3
	adds r1, r1, r4
	ldrh r0, [r2, #2]
	strh r0, [r1, #2]
_0200652C:
	movs r3, #2
	ldrsh r0, [r2, r3]
	cmp r0, #0
	blt _0200654A
	adds r1, r0, #0
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r4
	ldrh r1, [r2, #4]
	strh r1, [r0, #4]
	movs r1, #2
	ldrsh r0, [r2, r1]
	cmp r0, #0
	bge _02006550
_0200654A:
	ldr r1, _0200656C @ =0x0202E140
	ldrh r0, [r2, #4]
	strh r0, [r1]
_02006550:
	movs r3, #4
	ldrsh r0, [r2, r3]
	cmp r0, #0
	bge _0200655E
	ldr r1, _02006570 @ =0x02029020
	ldrh r0, [r2, #2]
	strh r0, [r1]
_0200655E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_02006564: .4byte 0x0202AE50
_02006568: .4byte 0x0202B214
_0200656C: .4byte 0x0202E140
_02006570: .4byte 0x02029020

	thumb_func_start sub_02006574
sub_02006574: @ 0x02006574
	push {lr}
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #3
	ldr r0, _0200658C @ =0x0202AE50
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0
	beq _02006590
	movs r0, #1
	b _02006592
	.align 2, 0
_0200658C: .4byte 0x0202AE50
_02006590:
	movs r0, #0
_02006592:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_02006598
sub_02006598: @ 0x02006598
	push {lr}
	adds r2, r1, #0
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #3
	ldr r0, _020065B4 @ =0x0202AE50
	adds r1, r1, r0
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	beq _020065B0
	strh r2, [r1]
_020065B0:
	pop {r0}
	bx r0
	.align 2, 0
_020065B4: .4byte 0x0202AE50

	thumb_func_start sub_020065B8
sub_020065B8: @ 0x020065B8
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #3
	ldr r0, _020065C8 @ =0x0202AE50
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	bx lr
	.align 2, 0
_020065C8: .4byte 0x0202AE50

	thumb_func_start sub_020065CC
sub_020065CC: @ 0x020065CC
	push {lr}
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #3
	ldr r0, _020065E8 @ =0x0202AE50
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #2
	bne _020065E4
	movs r0, #1
	strh r0, [r1]
_020065E4:
	pop {r0}
	bx r0
	.align 2, 0
_020065E8: .4byte 0x0202AE50

	thumb_func_start sub_020065EC
sub_020065EC: @ 0x020065EC
	push {lr}
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #3
	ldr r0, _02006608 @ =0x0202AE50
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #1
	bne _02006604
	movs r0, #2
	strh r0, [r1]
_02006604:
	pop {r0}
	bx r0
	.align 2, 0
_02006608: .4byte 0x0202AE50

	thumb_func_start sub_0200660C
sub_0200660C: @ 0x0200660C
	lsls r2, r0, #1
	adds r2, r2, r0
	lsls r2, r2, #3
	ldr r0, _02006620 @ =0x0202AE50
	adds r2, r2, r0
	str r1, [r2, #8]
	movs r0, #0
	str r0, [r2, #0xc]
	bx lr
	.align 2, 0
_02006620: .4byte 0x0202AE50

	thumb_func_start sub_02006624
sub_02006624: @ 0x02006624
	lsls r2, r0, #1
	adds r2, r2, r0
	lsls r2, r2, #3
	ldr r0, _02006634 @ =0x0202AE50
	adds r2, r2, r0
	str r1, [r2, #0x10]
	bx lr
	.align 2, 0
_02006634: .4byte 0x0202AE50

	thumb_func_start sub_02006638
sub_02006638: @ 0x02006638
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #3
	ldr r0, _02006648 @ =0x0202AE50
	adds r1, r1, r0
	ldr r0, [r1, #0x10]
	bx lr
	.align 2, 0
_02006648: .4byte 0x0202AE50

	thumb_func_start sub_0200664C
sub_0200664C: @ 0x0200664C
	lsls r2, r0, #1
	adds r2, r2, r0
	lsls r2, r2, #3
	ldr r0, _0200665C @ =0x0202AE50
	adds r2, r2, r0
	str r1, [r2, #0x14]
	bx lr
	.align 2, 0
_0200665C: .4byte 0x0202AE50

	thumb_func_start sub_02006660
sub_02006660: @ 0x02006660
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #3
	ldr r0, _02006670 @ =0x0202AE50
	adds r1, r1, r0
	ldr r0, [r1, #0x14]
	bx lr
	.align 2, 0
_02006670: .4byte 0x0202AE50

	thumb_func_start sub_02006674
sub_02006674: @ 0x02006674
	lsls r2, r0, #1
	adds r2, r2, r0
	lsls r2, r2, #3
	ldr r0, _02006684 @ =0x0202AE50
	adds r2, r2, r0
	str r1, [r2, #0xc]
	bx lr
	.align 2, 0
_02006684: .4byte 0x0202AE50

	thumb_func_start sub_02006688
sub_02006688: @ 0x02006688
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #3
	ldr r0, _02006698 @ =0x0202AE50
	adds r1, r1, r0
	ldr r0, [r1, #0xc]
	bx lr
	.align 2, 0
_02006698: .4byte 0x0202AE50

	thumb_func_start sub_0200669C
sub_0200669C: @ 0x0200669C
	ldr r0, _020066A4 @ =0x0202B170
	ldr r0, [r0]
	bx lr
	.align 2, 0
_020066A4: .4byte 0x0202B170

	thumb_func_start sub_020066A8
sub_020066A8: @ 0x020066A8
	push {r4, lr}
	adds r3, r1, #0
	adds r2, r0, #0
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	ldr r1, _020066C8 @ =0x0202AE50
	adds r1, r0, r1
	cmp r2, r3
	bhs _020066D4
_020066BC:
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #0
	bne _020066CC
	adds r0, r2, #0
	b _020066D8
	.align 2, 0
_020066C8: .4byte 0x0202AE50
_020066CC:
	adds r2, #1
	adds r1, #0x18
	cmp r2, r3
	blo _020066BC
_020066D4:
	movs r0, #1
	rsbs r0, r0, #0
_020066D8:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_020066E0
sub_020066E0: @ 0x020066E0
	push {lr}
	adds r1, r0, #0
	movs r0, #0
	bl sub_0200660C
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_020066F0
sub_020066F0: @ 0x020066F0
	push {lr}
	movs r0, #0
	movs r1, #0
	bl sub_0200660C
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_02006700
sub_02006700: @ 0x02006700
	ldr r1, _02006708 @ =0x0202E150
	str r0, [r1]
	bx lr
	.align 2, 0
_02006708: .4byte 0x0202E150

	thumb_func_start sub_0200670C
sub_0200670C: @ 0x0200670C
	ldr r0, _02006714 @ =0x0202E150
	ldr r0, [r0]
	bx lr
	.align 2, 0
_02006714: .4byte 0x0202E150

	thumb_func_start sub_02006718
sub_02006718: @ 0x02006718
	push {r4, lr}
	ldr r0, _02006768 @ =0x02029020
	movs r2, #1
	rsbs r2, r2, #0
	adds r1, r2, #0
	strh r1, [r0]
	ldr r0, _0200676C @ =0x0202E140
	strh r1, [r0]
	ldr r0, _02006770 @ =0x0202B170
	adds r1, r2, #0
	str r1, [r0]
	ldr r0, _02006774 @ =0x0202B214
	str r1, [r0]
	ldr r1, _02006778 @ =0x0202E150
	movs r0, #0
	str r0, [r1]
	movs r3, #0
	movs r2, #0
	ldr r0, _0200677C @ =0x0000FFFF
	adds r4, r0, #0
	ldr r1, _02006780 @ =0x0202AE50
_02006742:
	strh r2, [r1]
	ldrh r0, [r1, #2]
	orrs r0, r4
	strh r0, [r1, #2]
	ldrh r0, [r1, #4]
	orrs r0, r4
	strh r0, [r1, #4]
	strh r2, [r1, #6]
	str r2, [r1, #8]
	str r2, [r1, #0xc]
	str r2, [r1, #0x10]
	str r2, [r1, #0x14]
	adds r1, #0x18
	adds r3, #1
	cmp r3, #0x1f
	bls _02006742
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_02006768: .4byte 0x02029020
_0200676C: .4byte 0x0202E140
_02006770: .4byte 0x0202B170
_02006774: .4byte 0x0202B214
_02006778: .4byte 0x0202E150
_0200677C: .4byte 0x0000FFFF
_02006780: .4byte 0x0202AE50

	thumb_func_start sub_02006784
sub_02006784: @ 0x02006784
	bx lr
	.align 2, 0

	thumb_func_start sub_02006788
sub_02006788: @ 0x02006788
	push {r4, r5, lr}
	ldr r0, _020067E8 @ =0x02029020
	ldrh r0, [r0]
	lsls r2, r0, #0x10
	asrs r0, r2, #0x10
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _020067E2
	ldr r4, _020067EC @ =0x0202B214
	adds r5, r1, #0
_0200679E:
	asrs r2, r2, #0x10
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	ldr r1, _020067F0 @ =0x0202AE50
	adds r1, r0, r1
	ldr r0, _020067F4 @ =0x0202B170
	str r2, [r0]
	movs r2, #2
	ldrsh r0, [r1, r2]
	str r0, [r4]
	movs r0, #0
	ldrsh r2, [r1, r0]
	cmp r2, #0
	beq _020067D8
	ldr r0, _020067F8 @ =0x0202E150
	ldr r0, [r0]
	cmp r0, #0
	beq _020067CA
	ldr r0, [r1, #0x10]
	cmp r0, #0
	bne _020067D8
_020067CA:
	cmp r2, #1
	bne _020067D8
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _020067D8
	bl sub_020090FC
_020067D8:
	ldrh r0, [r4]
	lsls r2, r0, #0x10
	asrs r0, r2, #0x10
	cmp r0, r5
	bne _0200679E
_020067E2:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_020067E8: .4byte 0x02029020
_020067EC: .4byte 0x0202B214
_020067F0: .4byte 0x0202AE50
_020067F4: .4byte 0x0202B170
_020067F8: .4byte 0x0202E150

	thumb_func_start sub_020067FC
sub_020067FC: @ 0x020067FC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _02006898 @ =REG_KEYINPUT
	ldrh r1, [r0]
	mvns r1, r1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r5, _0200689C @ =0x02029230
	strh r1, [r5]
	ldr r4, _020068A0 @ =0x0202E138
	ldr r2, _020068A4 @ =0x0202B290
	ldrh r3, [r2]
	adds r0, r1, #0
	bics r0, r3
	strh r0, [r4]
	strh r1, [r2]
	movs r3, #1
	mov ip, r2
	ldr r0, _020068A8 @ =0x0202B1B8
	mov sl, r0
	ldr r1, _020068AC @ =0x0202B210
	mov r8, r1
	ldr r0, _020068B0 @ =0x0202CEF8
	mov sb, r0
	movs r0, #0
	mov r1, ip
	adds r1, #2
	adds r4, #2
	adds r5, #2
_0200683C:
	strh r0, [r5]
	strh r0, [r4]
	strh r0, [r1]
	adds r1, #2
	adds r4, #2
	adds r5, #2
	adds r3, #1
	cmp r3, #3
	bls _0200683C
	movs r3, #0
	ldr r7, _0200689C @ =0x02029230
	ldr r6, _020068A8 @ =0x0202B1B8
	ldr r2, _020068B4 @ =0x0202DB98
	ldr r5, _020068A0 @ =0x0202E138
	ldr r4, _020068B8 @ =0x0202B1B0
_0200685A:
	lsls r1, r3, #1
	ldrh r0, [r7]
	strh r0, [r6]
	ldrh r0, [r5]
	strh r0, [r4]
	add r1, ip
	ldrh r0, [r1]
	strh r0, [r2]
	adds r7, #2
	adds r6, #2
	adds r2, #2
	adds r5, #2
	adds r4, #2
	adds r3, #1
	cmp r3, #3
	bls _0200685A
	mov r1, sl
	ldrh r0, [r1]
	mov r1, r8
	strh r0, [r1]
	ldr r1, _020068B8 @ =0x0202B1B0
	ldrh r0, [r1]
	mov r1, sb
	strh r0, [r1]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_02006898: .4byte REG_KEYINPUT
_0200689C: .4byte 0x02029230
_020068A0: .4byte 0x0202E138
_020068A4: .4byte 0x0202B290
_020068A8: .4byte 0x0202B1B8
_020068AC: .4byte 0x0202B210
_020068B0: .4byte 0x0202CEF8
_020068B4: .4byte 0x0202DB98
_020068B8: .4byte 0x0202B1B0

	thumb_func_start sub_020068BC
sub_020068BC: @ 0x020068BC
	push {lr}
	ldr r0, _020068D0 @ =0x0202900C
	ldr r0, [r0]
	ldr r1, _020068D4 @ =0x0202AE48
	ldr r1, [r1]
	bl sub_0200754C
	pop {r0}
	bx r0
	.align 2, 0
_020068D0: .4byte 0x0202900C
_020068D4: .4byte 0x0202AE48

	thumb_func_start sub_020068D8
sub_020068D8: @ 0x020068D8
	ldr r1, _020068E8 @ =0x0202900C
	ldr r0, _020068EC @ =0x02010000
	str r0, [r1]
	ldr r1, _020068F0 @ =0x0202AE48
	movs r0, #0xc0
	lsls r0, r0, #0xa
	str r0, [r1]
	bx lr
	.align 2, 0
_020068E8: .4byte 0x0202900C
_020068EC: .4byte 0x02010000
_020068F0: .4byte 0x0202AE48

	thumb_func_start sub_020068F4
sub_020068F4: @ 0x020068F4
	ldr r2, _02006908 @ =0x0202900C
	ldr r0, _0200690C @ =0x0202E690
	ldr r1, [r0, #8]
	str r1, [r2]
	ldr r2, _02006910 @ =0x0202AE48
	ldr r0, _02006914 @ =0x20280000
	subs r0, r0, r1
	str r0, [r2]
	bx lr
	.align 2, 0
_02006908: .4byte 0x0202900C
_0200690C: .4byte 0x0202E690
_02006910: .4byte 0x0202AE48
_02006914: .4byte 0x20280000

	thumb_func_start sub_02006918
sub_02006918: @ 0x02006918
	push {lr}
	cmp r0, #1
	beq _02006922
	movs r0, #0
	b _02006928
_02006922:
	adds r0, r1, #0
	bl sub_02007628
_02006928:
	pop {r1}
	bx r1

	thumb_func_start sub_0200692C
sub_0200692C: @ 0x0200692C
	push {lr}
	adds r1, r0, #0
	ldr r0, _02006940 @ =0x02FFFFFF
	cmp r1, r0
	bhi _0200693C
	adds r0, r1, #0
	bl sub_020076C4
_0200693C:
	pop {r0}
	bx r0
	.align 2, 0
_02006940: .4byte 0x02FFFFFF

	thumb_func_start sub_02006944
sub_02006944: @ 0x02006944
	bx lr
	.align 2, 0

	thumb_func_start sub_02006948
sub_02006948: @ 0x02006948
	bx lr
	.align 2, 0

	thumb_func_start sub_0200694C
sub_0200694C: @ 0x0200694C
	ldr r1, _02006954 @ =0x0202E148
	str r0, [r1]
	bx lr
	.align 2, 0
_02006954: .4byte 0x0202E148

	thumb_func_start sub_02006958
sub_02006958: @ 0x02006958
	bx lr
	.align 2, 0

	thumb_func_start sub_0200695C
sub_0200695C: @ 0x0200695C
	push {lr}
	movs r0, #0
	bl sub_0200694C
	movs r0, #1
	bl sub_020064F0
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_02006970
sub_02006970: @ 0x02006970
	push {lr}
	ldr r0, _020069B4 @ =0x02030000
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _020069B0
	ldr r0, _020069B8 @ =0x02029230
	ldrh r1, [r0]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0xf
	bne _020069B0
	ldr r0, _020069BC @ =0x0202E148
	ldr r0, [r0]
	cmp r0, #0
	beq _0200699C
	bl sub_020090FC
	movs r0, #0
	bl sub_0200694C
_0200699C:
	bl sub_02008DF0
	bl sub_0200474C
	movs r0, #0
	bl sub_02006700
	movs r0, #0xfe
	bl sub_020090E0
_020069B0:
	pop {r0}
	bx r0
	.align 2, 0
_020069B4: .4byte 0x02030000
_020069B8: .4byte 0x02029230
_020069BC: .4byte 0x0202E148

	thumb_func_start sub_020069C0
sub_020069C0: @ 0x020069C0
	push {lr}
	movs r0, #0
	bl sub_0200694C
	ldr r1, _020069E8 @ =sub_02006970
	ldr r2, _020069EC @ =0x0000FFFF
	movs r0, #1
	bl sub_020063E4
	movs r0, #1
	movs r1, #0
	bl sub_02006624
	movs r0, #1
	movs r1, #0
	bl sub_0200664C
	pop {r0}
	bx r0
	.align 2, 0
_020069E8: .4byte sub_02006970
_020069EC: .4byte 0x0000FFFF

	thumb_func_start sub_020069F0
sub_020069F0: @ 0x020069F0
	ldr r1, _020069FC @ =gUnknown_0200B434
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bx lr
	.align 2, 0
_020069FC: .4byte gUnknown_0200B434

	thumb_func_start sub_02006A00
sub_02006A00: @ 0x02006A00
	push {lr}
	adds r2, r0, #0
	adds r3, r1, #0
	ldr r0, _02006A20 @ =0x01FFFFFF
	cmp r2, r0
	bgt _02006A14
	ldr r1, _02006A24 @ =gUnknown_0200B434
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r2, [r0]
_02006A14:
	lsls r0, r3, #2
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r2, r0
	pop {r1}
	bx r1
	.align 2, 0
_02006A20: .4byte 0x01FFFFFF
_02006A24: .4byte gUnknown_0200B434

	thumb_func_start sub_02006A28
sub_02006A28: @ 0x02006A28
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, r1, #0
	adds r1, r2, #0
	bl sub_02006A00
	adds r1, r0, #0
	ldrb r0, [r1, #3]
	cmp r0, #0
	beq _02006A46
	adds r0, r1, #0
	adds r1, r4, #0
	bl sub_0200774C
	b _02006AAE
_02006A46:
	ldrb r0, [r1, #0xe]
	lsls r0, r0, #8
	ldrb r2, [r1, #0xf]
	orrs r2, r0
	ldr r0, _02006A7C @ =0x05FFFFFF
	cmp r4, r0
	bhi _02006A80
	movs r3, #0
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r3, r0
	bge _02006AAE
	adds r2, r0, #0
_02006A60:
	ldrb r0, [r1]
	strb r0, [r4]
	adds r1, #1
	adds r4, #1
	lsls r0, r3, #0x10
	movs r3, #0x80
	lsls r3, r3, #9
	adds r0, r0, r3
	lsrs r3, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r2
	blt _02006A60
	b _02006AAE
	.align 2, 0
_02006A7C: .4byte 0x05FFFFFF
_02006A80:
	adds r5, r4, #0
	adds r4, r1, #0
	lsls r0, r2, #0x10
	asrs r1, r0, #0x10
	lsrs r0, r0, #0x1f
	adds r1, r1, r0
	movs r3, #0
	asrs r0, r1, #1
	cmp r3, r0
	bge _02006AAE
	adds r1, r0, #0
_02006A96:
	ldrh r0, [r4]
	strh r0, [r5]
	adds r4, #2
	adds r5, #2
	lsls r0, r3, #0x10
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r0, r2
	lsrs r3, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r1
	blt _02006A96
_02006AAE:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_02006AB4
sub_02006AB4: @ 0x02006AB4
	push {lr}
	bl sub_02006A00
	adds r2, r0, #0
	movs r1, #0
	ldrb r0, [r2]
	cmp r0, #0x45
	bne _02006ADE
	ldrb r0, [r2, #1]
	cmp r0, #0x43
	bne _02006ADE
	ldrb r0, [r2, #2]
	cmp r0, #0x44
	bne _02006ADE
	ldrb r0, [r2, #0xe]
	lsls r0, r0, #8
	ldrb r1, [r2, #0xf]
	adds r0, r0, r1
	adds r1, r0, #0
	subs r1, #8
	b _02006B4E
_02006ADE:
	ldrb r0, [r2]
	adds r3, r0, #0
	cmp r3, #0x49
	bne _02006B0C
	ldrb r0, [r2, #1]
	cmp r0, #0x4d
	bne _02006B0C
	ldrb r0, [r2, #2]
	cmp r0, #0x47
	bne _02006B0C
	ldrb r0, [r2, #4]
	cmp r0, #0
	bne _02006B02
	ldrb r0, [r2, #5]
	ldrb r1, [r2, #6]
	muls r0, r1, r0
	lsls r1, r0, #5
	b _02006B4E
_02006B02:
	ldrb r0, [r2, #5]
	ldrb r1, [r2, #6]
	muls r0, r1, r0
	lsls r1, r0, #6
	b _02006B4E
_02006B0C:
	cmp r3, #0x50
	bne _02006B28
	ldrb r0, [r2, #1]
	cmp r0, #0x4c
	bne _02006B28
	ldrb r0, [r2, #2]
	cmp r0, #0x54
	bne _02006B28
	ldrb r0, [r2, #5]
	lsls r0, r0, #8
	ldrb r1, [r2, #4]
	adds r0, r0, r1
	lsls r1, r0, #1
	b _02006B4E
_02006B28:
	cmp r3, #0x53
	bne _02006B4E
	ldrb r0, [r2, #1]
	cmp r0, #0x43
	bne _02006B4E
	ldrb r0, [r2, #2]
	cmp r0, #0x52
	bne _02006B4E
	ldrb r0, [r2, #4]
	cmp r0, #0
	bne _02006B48
	ldrb r0, [r2, #5]
	ldrb r1, [r2, #6]
	muls r0, r1, r0
	lsls r1, r0, #1
	b _02006B4E
_02006B48:
	ldrb r1, [r2, #5]
	ldrb r0, [r2, #6]
	muls r1, r0, r1
_02006B4E:
	adds r0, r1, #0
	pop {r1}
	bx r1

	thumb_func_start sub_02006B54
sub_02006B54: @ 0x02006B54
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov r8, r0
	mov sl, r1
	adds r7, r2, #0
	movs r0, #0
	mov sb, r0
	movs r6, #0
	mov r5, sl
	b _02006B8C
_02006B6E:
	ldr r0, [r5]
	ldr r1, [r5, #4]
	adds r1, #1
	bl sub_02006A00
	adds r4, r0, #0
	ldr r0, [r5]
	ldr r1, [r5, #4]
	bl sub_02006A00
	subs r4, r4, r0
	adds r6, r6, r4
	movs r1, #1
	add sb, r1
	adds r5, #8
_02006B8C:
	ldr r1, [r5]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _02006B6E
	mov r2, sb
	lsls r4, r2, #2
	adds r6, r6, r4
	str r6, [r7]
	mov r0, r8
	cmp r0, #1
	bgt _02006BAC
	adds r1, r6, #0
	bl sub_02006918
	mov r8, r0
_02006BAC:
	mov r1, r8
	adds r7, r1, r4
	mov r5, sl
	movs r2, #0
	mov sb, r2
	b _02006BF8
_02006BB8:
	mov r1, sb
	lsls r0, r1, #2
	add r0, r8
	mov r2, r8
	subs r1, r7, r2
	str r1, [r0]
	ldr r0, [r5]
	ldr r1, [r5, #4]
	bl sub_02006A00
	adds r4, r0, #0
	ldr r0, [r5]
	ldr r1, [r5, #4]
	adds r1, #1
	bl sub_02006A00
	subs r6, r0, r4
	mov r2, sb
	adds r2, #1
	adds r1, r5, #0
	adds r1, #8
	cmp r6, #0
	beq _02006BF4
_02006BE6:
	ldrb r0, [r4]
	strb r0, [r7]
	adds r4, #1
	adds r7, #1
	subs r6, #1
	cmp r6, #0
	bne _02006BE6
_02006BF4:
	mov sb, r2
	adds r5, r1, #0
_02006BF8:
	ldr r1, [r5]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _02006BB8
	mov r0, r8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

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

	thumb_func_start sub_020076E4
sub_020076E4: @ 0x020076E4
	push {r4, r5, lr}
	adds r4, r1, #0
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r2, [r4]
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	bne _0200770C
	ldrh r3, [r2]
	movs r0, #0xff
	lsls r0, r0, #8
	ands r3, r0
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	movs r1, #0xff
	ands r0, r1
	orrs r3, r0
	strh r3, [r2]
	b _0200771C
_0200770C:
	movs r0, #2
	rsbs r0, r0, #0
	ands r2, r0
	ldrb r1, [r2]
	lsls r0, r5, #0x10
	asrs r0, r0, #8
	orrs r1, r0
	strh r1, [r2]
_0200771C:
	ldr r0, [r4]
	adds r0, #1
	str r0, [r4]
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_02007728
sub_02007728: @ 0x02007728
	push {lr}
	adds r3, r0, #0
	ldr r0, [r1]
	cmp r0, #0
	beq _02007742
	subs r0, #1
	str r0, [r1]
	ldr r1, [r2]
	adds r0, r3, r1
	ldrb r0, [r0]
	adds r1, #1
	str r1, [r2]
	b _02007746
_02007742:
	movs r0, #1
	rsbs r0, r0, #0
_02007746:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0200774C
sub_0200774C: @ 0x0200774C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	str r1, [sp]
	movs r1, #0
	str r1, [sp, #0xc]
	str r1, [sp, #4]
	str r1, [sp, #8]
	adds r6, r0, #0
	movs r5, #0
	mov r2, sp
	adds r2, #4
	str r2, [sp, #0x10]
	mov r4, sp
	adds r4, #8
	str r4, [sp, #0x14]
	movs r3, #0
	ldr r2, _020077E4 @ =0x000003FF
_02007776:
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	ldr r4, _020077E8 @ =0x0202E170
	adds r1, r4, r0
	strb r3, [r1]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r2
	ble _02007776
	ldr r0, _020077EC @ =0x000003BE
	mov sb, r0
	adds r6, #4
	ldrb r1, [r6]
	lsls r1, r1, #0x18
	ldrb r0, [r6, #1]
	lsls r0, r0, #0x10
	adds r1, r1, r0
	ldrb r0, [r6, #2]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldrb r0, [r6, #3]
	adds r7, r1, r0
	adds r6, #4
	ldrb r1, [r6]
	lsls r1, r1, #0x18
	ldrb r0, [r6, #1]
	lsls r0, r0, #0x10
	adds r1, r1, r0
	ldrb r0, [r6, #2]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldrb r0, [r6, #3]
	adds r1, r1, r0
	str r1, [sp, #4]
	adds r6, #8
	movs r4, #0
	cmp r4, r7
	bhs _020077D8
_020077C6:
	ldrb r5, [r6]
	adds r6, #1
	adds r0, r5, #0
	mov r1, sp
	bl sub_020076E4
	adds r4, #1
	cmp r4, r7
	blo _020077C6
_020077D8:
	ldr r0, [sp, #4]
	subs r0, r0, r7
	str r0, [sp, #4]
	movs r1, #0
	mov sl, r1
	b _020078F4
	.align 2, 0
_020077E4: .4byte 0x000003FF
_020077E8: .4byte 0x0202E170
_020077EC: .4byte 0x000003BE
_020077F0:
	movs r2, #0xff
	lsls r2, r2, #8
	mov sl, r2
	mov r4, sl
	orrs r4, r5
	mov sl, r4
_020077FC:
	movs r0, #1
	mov r1, sl
	ands r0, r1
	cmp r0, #0
	beq _02007850
	adds r0, r6, #0
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0x14]
	bl sub_02007728
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #1
	rsbs r2, r2, #0
	cmp r0, r2
	bne _02007820
	b _02007926
_02007820:
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	mov r1, sp
	bl sub_020076E4
	mov r0, sb
	lsls r1, r0, #0x10
	adds r0, r1, #0
	asrs r0, r0, #0x10
	ldr r4, _0200784C @ =0x0202E170
	adds r0, r4, r0
	strb r5, [r0]
	movs r0, #0x80
	lsls r0, r0, #9
	adds r1, r1, r0
	lsls r1, r1, #6
	lsrs r1, r1, #0x16
	mov sb, r1
	ldr r1, [sp, #0xc]
	adds r1, #1
	str r1, [sp, #0xc]
	b _020078F4
	.align 2, 0
_0200784C: .4byte 0x0202E170
_02007850:
	adds r0, r6, #0
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0x14]
	bl sub_02007728
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _02007938 @ =0xFFFF0000
	asrs r4, r2, #0x10
	cmp r0, r4
	beq _02007926
	adds r0, r6, #0
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0x14]
	bl sub_02007728
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r4
	beq _02007926
	movs r4, #0x40
	rsbs r4, r4, #0
	adds r2, r4, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r1, #0
	ands r0, r2
	lsls r0, r0, #0x12
	lsrs r0, r0, #0x10
	orrs r5, r0
	movs r0, #0x3f
	ands r0, r1
	movs r2, #0
	adds r1, r0, #3
	cmp r2, r1
	bge _020078EA
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	mov r8, r0
	ldr r7, _0200793C @ =0x000003FF
	adds r3, r1, #0
_020078A6:
	lsls r4, r2, #0x10
	asrs r4, r4, #0x10
	mov r1, r8
	adds r0, r1, r4
	ands r0, r7
	ldr r2, _02007940 @ =0x0202E170
	adds r0, r2, r0
	ldrb r5, [r0]
	adds r0, r5, #0
	mov r1, sp
	str r3, [sp, #0x18]
	bl sub_020076E4
	mov r0, sb
	lsls r1, r0, #0x10
	adds r0, r1, #0
	asrs r0, r0, #0x10
	ldr r2, _02007940 @ =0x0202E170
	adds r0, r2, r0
	strb r5, [r0]
	movs r0, #0x80
	lsls r0, r0, #9
	adds r1, r1, r0
	lsrs r1, r1, #0x10
	mov sb, r1
	ands r1, r7
	mov sb, r1
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r2, r4, #0x10
	asrs r4, r4, #0x10
	ldr r3, [sp, #0x18]
	cmp r4, r3
	blt _020078A6
_020078EA:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	ldr r2, [sp, #0xc]
	adds r2, r2, r0
	str r2, [sp, #0xc]
_020078F4:
	mov r4, sl
	lsrs r0, r4, #1
	lsls r1, r0, #0x10
	lsrs r1, r1, #0x10
	mov sl, r1
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _0200790C
	b _020077FC
_0200790C:
	adds r0, r6, #0
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0x14]
	bl sub_02007728
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	movs r4, #1
	rsbs r4, r4, #0
	cmp r0, r4
	beq _02007926
	b _020077F0
_02007926:
	ldr r0, [sp, #0xc]
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_02007938: .4byte 0xFFFF0000
_0200793C: .4byte 0x000003FF
_02007940: .4byte 0x0202E170

	thumb_func_start sub_02007944
sub_02007944: @ 0x02007944
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	ldr r5, _02007978 @ =0x0202E680
	ldr r7, _0200797C @ =0x0202E688
_0200794E:
	subs r5, #1
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_0200967C
	ldr r1, [r7]
	adds r1, r1, r0
	ldrb r0, [r1]
	strb r0, [r5]
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_02009604
	adds r4, r0, #0
	cmp r4, #0
	bne _0200794E
	adds r0, r5, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_02007978: .4byte 0x0202E680
_0200797C: .4byte 0x0202E688

	thumb_func_start sub_02007980
sub_02007980: @ 0x02007980
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r6, r1, #0
	mov sb, r2
	movs r0, #0
	mov r8, r0
	mov sl, r0
_02007996:
	ldrb r2, [r6]
	adds r6, #1
	cmp r2, #0x25
	beq _020079A6
	cmp r2, #0
	bne _020079A4
	b _02007E3C
_020079A4:
	b _02007C2C
_020079A6:
	movs r4, #0
	ldr r7, _020079C8 @ =0x0202E684
	strb r4, [r7]
	ldr r3, _020079CC @ =0x0202E688
	ldr r0, _020079D0 @ =gUnknown_0200B434
	mov ip, r0
_020079B2:
	ldrb r2, [r6]
	adds r0, r2, #0
	subs r0, #0x20
	adds r6, #1
	cmp r0, #0x10
	bhi _02007A40
	lsls r0, r0, #2
	ldr r1, _020079D4 @ =_020079D8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_020079C8: .4byte 0x0202E684
_020079CC: .4byte 0x0202E688
_020079D0: .4byte gUnknown_0200B434
_020079D4: .4byte _020079D8
_020079D8: @ jump table
	.4byte _02007A2E @ case 0
	.4byte _02007A40 @ case 1
	.4byte _02007A40 @ case 2
	.4byte _02007A34 @ case 3
	.4byte _02007A40 @ case 4
	.4byte _02007A40 @ case 5
	.4byte _02007A40 @ case 6
	.4byte _02007A40 @ case 7
	.4byte _02007A40 @ case 8
	.4byte _02007A40 @ case 9
	.4byte _02007A40 @ case 10
	.4byte _02007A22 @ case 11
	.4byte _02007A40 @ case 12
	.4byte _02007A1C @ case 13
	.4byte _02007A40 @ case 14
	.4byte _02007A40 @ case 15
	.4byte _02007A28 @ case 16
_02007A1C:
	movs r0, #1
	orrs r4, r0
	b _020079B2
_02007A22:
	movs r0, #2
	orrs r4, r0
	b _020079B2
_02007A28:
	movs r0, #4
	orrs r4, r0
	b _020079B2
_02007A2E:
	movs r0, #8
	orrs r4, r0
	b _020079B2
_02007A34:
	movs r0, #1
	ldr r1, _02007A3C @ =0x0202E684
	strb r0, [r1]
	b _020079B2
	.align 2, 0
_02007A3C: .4byte 0x0202E684
_02007A40:
	cmp r2, #0x2a
	bne _02007A64
	mov r1, sb
	adds r1, #3
	movs r0, #4
	rsbs r0, r0, #0
	ands r1, r0
	adds r7, r1, #4
	mov sb, r7
	ldr r5, [r1]
	cmp r5, #0
	bge _02007A5E
	movs r0, #1
	orrs r4, r0
	rsbs r5, r5, #0
_02007A5E:
	ldrb r2, [r6]
	adds r6, #1
	b _02007A66
_02007A64:
	movs r5, #0
_02007A66:
	movs r7, #0
	cmp r2, #0x2e
	bne _02007A84
	ldrb r2, [r6]
	adds r6, #1
	cmp r2, #0x2a
	bne _02007A84
	mov r1, sb
	adds r1, #3
	movs r0, #4
	rsbs r0, r0, #0
	ands r1, r0
	adds r0, r1, #4
	mov sb, r0
	ldr r7, [r1]
_02007A84:
	adds r0, r2, #0
	subs r0, #0x31
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #8
	bhi _02007A98
	adds r7, r2, #0
	subs r7, #0x30
	ldrb r2, [r6]
	adds r6, #1
_02007A98:
	movs r1, #0
	str r1, [sp]
	mov r0, ip
	str r0, [r3]
	movs r1, #0xa
	str r1, [sp, #4]
_02007AA4:
	adds r0, r2, #0
	subs r0, #0x4c
	cmp r0, #0x2c
	bls _02007AAE
	b _02007C2C
_02007AAE:
	lsls r0, r0, #2
	ldr r1, _02007AB8 @ =_02007ABC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_02007AB8: .4byte _02007ABC
_02007ABC: @ jump table
	.4byte _02007C22 @ case 0
	.4byte _02007C2C @ case 1
	.4byte _02007C2C @ case 2
	.4byte _02007C2C @ case 3
	.4byte _02007C2C @ case 4
	.4byte _02007C2C @ case 5
	.4byte _02007C2C @ case 6
	.4byte _02007C2C @ case 7
	.4byte _02007C2C @ case 8
	.4byte _02007C2C @ case 9
	.4byte _02007C2C @ case 10
	.4byte _02007C2C @ case 11
	.4byte _02007B7C @ case 12
	.4byte _02007C2C @ case 13
	.4byte _02007C2C @ case 14
	.4byte _02007C2C @ case 15
	.4byte _02007C2C @ case 16
	.4byte _02007C2C @ case 17
	.4byte _02007C2C @ case 18
	.4byte _02007C2C @ case 19
	.4byte _02007C2C @ case 20
	.4byte _02007C2C @ case 21
	.4byte _02007C2C @ case 22
	.4byte _02007B90 @ case 23
	.4byte _02007B70 @ case 24
	.4byte _02007C2C @ case 25
	.4byte _02007C2C @ case 26
	.4byte _02007C2C @ case 27
	.4byte _02007C10 @ case 28
	.4byte _02007B70 @ case 29
	.4byte _02007C2C @ case 30
	.4byte _02007C2C @ case 31
	.4byte _02007C14 @ case 32
	.4byte _02007C2C @ case 33
	.4byte _02007BE8 @ case 34
	.4byte _02007B76 @ case 35
	.4byte _02007BFE @ case 36
	.4byte _02007C2C @ case 37
	.4byte _02007C2C @ case 38
	.4byte _02007BB0 @ case 39
	.4byte _02007C2C @ case 40
	.4byte _02007C40 @ case 41
	.4byte _02007C2C @ case 42
	.4byte _02007C2C @ case 43
	.4byte _02007B80 @ case 44
_02007B70:
	movs r0, #1
	str r0, [sp]
	b _02007C40
_02007B76:
	movs r1, #8
	str r1, [sp, #4]
	b _02007B84
_02007B7C:
	ldr r0, _02007B8C @ =gUnknown_0200B448
	str r0, [r3]
_02007B80:
	movs r0, #0x10
	str r0, [sp, #4]
_02007B84:
	movs r0, #0xb
	rsbs r0, r0, #0
	ands r4, r0
	b _02007C40
	.align 2, 0
_02007B8C: .4byte gUnknown_0200B448
_02007B90:
	ldr r1, _02007BAC @ =0x0202E580
	mov r8, r1
	mov r0, sb
	adds r0, #3
	movs r1, #4
	rsbs r1, r1, #0
	ands r0, r1
	adds r7, r0, #4
	mov sb, r7
	ldr r0, [r0]
	mov r1, r8
	strb r0, [r1]
	movs r3, #1
	b _02007DCE
	.align 2, 0
_02007BAC: .4byte 0x0202E580
_02007BB0:
	mov r1, sb
	adds r1, #3
	movs r0, #4
	rsbs r0, r0, #0
	ands r1, r0
	adds r0, r1, #4
	mov sb, r0
	ldr r1, [r1]
	mov r8, r1
	cmp r1, #0
	bne _02007BCA
	ldr r1, _02007BE4 @ =gUnknown_0200AFFC
	mov r8, r1
_02007BCA:
	mov r0, r8
	bl sub_0200AEE0
	adds r3, r0, #0
	cmp r7, #0
	bne _02007BD8
	b _02007DCE
_02007BD8:
	cmp r3, r7
	bgt _02007BDE
	b _02007DCE
_02007BDE:
	adds r3, r7, #0
	b _02007DCE
	.align 2, 0
_02007BE4: .4byte gUnknown_0200AFFC
_02007BE8:
	mov r0, sb
	adds r0, #3
	movs r1, #4
	rsbs r1, r1, #0
	ands r0, r1
	adds r7, r0, #4
	mov sb, r7
	ldr r0, [r0]
	mov r1, sl
	str r1, [r0]
	b _02007996
_02007BFE:
	movs r4, #0
	movs r7, #8
	ldr r0, _02007C0C @ =gUnknown_0200B448
	str r0, [r3]
	movs r0, #0x10
	str r0, [sp, #4]
	b _02007C40
	.align 2, 0
_02007C0C: .4byte gUnknown_0200B448
_02007C10:
	movs r0, #0x40
	b _02007C24
_02007C14:
	ldrb r2, [r6]
	adds r6, #1
	cmp r2, #0x6c
	beq _02007C1E
	b _02007AA4
_02007C1E:
	movs r0, #0x20
	b _02007C24
_02007C22:
	movs r0, #0x80
_02007C24:
	orrs r4, r0
	ldrb r2, [r6]
	adds r6, #1
	b _02007AA4
_02007C2C:
	ldr r1, _02007C3C @ =0x0202E574
	ldr r0, [r1]
	strb r2, [r0]
	adds r0, #1
	str r0, [r1]
	movs r1, #1
	add sl, r1
	b _02007996
	.align 2, 0
_02007C3C: .4byte 0x0202E574
_02007C40:
	cmp r7, #0
	beq _02007C4A
	movs r0, #5
	rsbs r0, r0, #0
	ands r4, r0
_02007C4A:
	movs r0, #0x20
	ands r0, r4
	cmp r0, #0
	bne _02007C96
	mov r1, sb
	adds r1, #3
	movs r0, #4
	rsbs r0, r0, #0
	ands r1, r0
	adds r0, r1, #4
	mov sb, r0
	ldr r1, [r1]
	movs r0, #0x40
	ands r0, r4
	cmp r0, #0
	beq _02007C7A
	ldr r0, [sp]
	cmp r0, #0
	beq _02007C76
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	b _02007C7A
_02007C76:
	lsls r0, r1, #0x10
	lsrs r1, r0, #0x10
_02007C7A:
	ldr r0, [sp]
	cmp r0, #0
	beq _02007C8C
	cmp r1, #0
	bge _02007C8C
	rsbs r1, r1, #0
	movs r0, #0x80
	lsls r0, r0, #1
	orrs r4, r0
_02007C8C:
	adds r0, r1, #0
	ldr r1, [sp, #4]
	bl sub_02007944
	mov r8, r0
_02007C96:
	ldr r0, _02007D08 @ =0x0202E680
	mov r1, r8
	subs r3, r0, r1
	movs r0, #0
	mov ip, r0
	ldr r0, _02007D0C @ =0x0202E684
	ldrb r0, [r0]
	cmp r0, #0
	beq _02007CCA
	ldr r1, [sp, #4]
	cmp r1, #0xa
	beq _02007CCA
	ldr r0, [sp]
	cmp r0, #0
	bne _02007CCA
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #0x30
	beq _02007CCA
	movs r0, #1
	mov ip, r0
	ldr r1, [sp, #4]
	cmp r1, #0x10
	bne _02007CCA
	movs r0, #2
	mov ip, r0
_02007CCA:
	movs r0, #5
	ands r0, r4
	cmp r0, #4
	bne _02007CD4
	adds r7, r5, #0
_02007CD4:
	cmp r7, #0
	beq _02007D6C
	movs r0, #0x85
	lsls r0, r0, #1
	ands r0, r4
	cmp r0, #0
	beq _02007D2E
	subs r7, #1
	movs r1, #0
	cmp r1, #0
	beq _02007D2E
	subs r5, #1
	movs r0, #1
	add sl, r0
	adds r0, #0xff
	ands r0, r4
	cmp r0, #0
	beq _02007D14
	ldr r2, _02007D10 @ =0x0202E574
	ldr r1, [r2]
	movs r0, #0x2d
	strb r0, [r1]
	adds r1, #1
	str r1, [r2]
	b _02007D2A
	.align 2, 0
_02007D08: .4byte 0x0202E680
_02007D0C: .4byte 0x0202E684
_02007D10: .4byte 0x0202E574
_02007D14:
	ldr r0, _02007D54 @ =0x0202E574
	ldr r2, [r0]
	adds r1, r2, #1
	str r1, [r0]
	movs r0, #2
	ands r0, r4
	movs r1, #0x20
	cmp r0, #0
	beq _02007D28
	movs r1, #0x2b
_02007D28:
	strb r1, [r2]
_02007D2A:
	ldr r0, _02007D58 @ =0xFFFFFEF5
	ands r4, r0
_02007D2E:
	mov r1, ip
	subs r7, r7, r1
	cmp r3, r7
	bge _02007D6C
	ldr r2, _02007D54 @ =0x0202E574
	movs r1, #0x30
_02007D3A:
	movs r0, #0
	cmp r0, #0
	beq _02007D5C
	ldr r0, [r2]
	strb r1, [r0]
	adds r0, #1
	str r0, [r2]
	subs r5, #1
	movs r0, #1
	add sl, r0
	subs r7, #1
	b _02007D68
	.align 2, 0
_02007D54: .4byte 0x0202E574
_02007D58: .4byte 0xFFFFFEF5
_02007D5C:
	movs r0, #1
	rsbs r0, r0, #0
	add r8, r0
	mov r0, r8
	strb r1, [r0]
	adds r3, #1
_02007D68:
	cmp r3, r7
	blt _02007D3A
_02007D6C:
	mov r1, ip
	cmp r1, #0
	beq _02007D94
	cmp r1, #2
	bne _02007D86
	movs r7, #1
	rsbs r7, r7, #0
	add r8, r7
	ldr r0, _02007DB4 @ =0x0202E688
	ldr r0, [r0]
	ldrb r0, [r0, #0x10]
	mov r1, r8
	strb r0, [r1]
_02007D86:
	movs r7, #1
	rsbs r7, r7, #0
	add r8, r7
	movs r0, #0x30
	mov r1, r8
	strb r0, [r1]
	add r3, ip
_02007D94:
	movs r0, #0x85
	lsls r0, r0, #1
	ands r0, r4
	cmp r0, #0
	beq _02007DCE
	adds r3, #1
	movs r7, #1
	rsbs r7, r7, #0
	add r8, r7
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r4
	cmp r0, #0
	beq _02007DB8
	movs r0, #0x2d
	b _02007DCA
	.align 2, 0
_02007DB4: .4byte 0x0202E688
_02007DB8:
	movs r0, #2
	ands r0, r4
	cmp r0, #0
	beq _02007DC8
	movs r0, #0x2b
	mov r7, r8
	strb r0, [r7]
	b _02007DCE
_02007DC8:
	movs r0, #0x20
_02007DCA:
	mov r1, r8
	strb r0, [r1]
_02007DCE:
	movs r0, #1
	ands r4, r0
	subs r7, r3, #1
	cmp r4, #0
	bne _02007DF2
	cmp r5, r3
	ble _02007DF2
	ldr r1, _02007E38 @ =0x0202E574
	movs r2, #0x20
_02007DE0:
	ldr r0, [r1]
	strb r2, [r0]
	adds r0, #1
	str r0, [r1]
	subs r5, #1
	movs r0, #1
	add sl, r0
	cmp r5, r3
	bgt _02007DE0
_02007DF2:
	subs r5, r5, r3
	add sl, r3
	adds r3, r7, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r3, r0
	beq _02007E1A
	ldr r2, _02007E38 @ =0x0202E574
	adds r4, r0, #0
_02007E04:
	ldr r1, [r2]
	mov r7, r8
	ldrb r0, [r7]
	strb r0, [r1]
	movs r0, #1
	add r8, r0
	adds r1, #1
	str r1, [r2]
	subs r3, #1
	cmp r3, r4
	bne _02007E04
_02007E1A:
	cmp r5, #0
	bgt _02007E20
	b _02007996
_02007E20:
	ldr r1, _02007E38 @ =0x0202E574
	movs r2, #0x20
_02007E24:
	ldr r0, [r1]
	strb r2, [r0]
	adds r0, #1
	str r0, [r1]
	subs r5, #1
	movs r7, #1
	add sl, r7
	cmp r5, #0
	bgt _02007E24
	b _02007996
	.align 2, 0
_02007E38: .4byte 0x0202E574
_02007E3C:
	ldr r0, _02007E54 @ =0x0202E684
	strb r2, [r0]
	mov r0, sl
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_02007E54: .4byte 0x0202E684

	thumb_func_start sub_02007E58
sub_02007E58: @ 0x02007E58
	push {r1, r2, r3}
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [sp, #8]
	add r2, sp, #0xc
	ldr r3, _02007E88 @ =0x0202E570
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r3]
	ldr r3, _02007E8C @ =0x0202E574
	ldr r0, _02007E90 @ =0x0202E680
	str r4, [r0]
	str r4, [r3]
	adds r0, r4, #0
	bl sub_02007980
	adds r4, r4, r0
	movs r1, #0
	strb r1, [r4]
	pop {r4}
	pop {r3}
	add sp, #0xc
	bx r3
	.align 2, 0
_02007E88: .4byte 0x0202E570
_02007E8C: .4byte 0x0202E574
_02007E90: .4byte 0x0202E680

	thumb_func_start sub_02007E94
sub_02007E94: @ 0x02007E94
	lsls r0, r0, #0x10
	ldr r1, _02007EA4 @ =gUnknown_0200B45C
	lsrs r0, r0, #0x18
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	bx lr
	.align 2, 0
_02007EA4: .4byte gUnknown_0200B45C

	thumb_func_start sub_02007EA8
sub_02007EA8: @ 0x02007EA8
	lsls r0, r0, #0x10
	ldr r1, _02007EB8 @ =gUnknown_0200B65C
	lsrs r0, r0, #0x18
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	bx lr
	.align 2, 0
_02007EB8: .4byte gUnknown_0200B65C

	thumb_func_start sub_02007EBC
sub_02007EBC: @ 0x02007EBC
	push {lr}
	ldr r1, _02007ECC @ =0x0202E6C8
	movs r0, #0
	str r0, [r1]
	bl sub_02004B10
	pop {r0}
	bx r0
	.align 2, 0
_02007ECC: .4byte 0x0202E6C8

	thumb_func_start sub_02007ED0
sub_02007ED0: @ 0x02007ED0
	push {lr}
	movs r0, #0
	bl sub_02004B10
	pop {r0}
	bx r0

	thumb_func_start sub_02007EDC
sub_02007EDC: @ 0x02007EDC
	push {lr}
	cmp r0, #7
	bls _02007EE4
	b _02008000
_02007EE4:
	lsls r0, r0, #2
	ldr r1, _02007EF0 @ =_02007EF4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_02007EF0: .4byte _02007EF4
_02007EF4: @ jump table
	.4byte _02007F14 @ case 0
	.4byte _02007F34 @ case 1
	.4byte _02007F50 @ case 2
	.4byte _02007F6C @ case 3
	.4byte _02007FBC @ case 4
	.4byte _02007FE4 @ case 5
	.4byte _02007F90 @ case 6
	.4byte _02007FA0 @ case 7
_02007F14:
	ldr r0, _02007F30 @ =0x0202E6C8
	movs r1, #0
	str r1, [r0]
	movs r0, #0
	movs r2, #0
	bl sub_02004AC8
	movs r0, #0x20
	bl sub_02004AE8
	bl sub_020048D0
	b _02007F80
	.align 2, 0
_02007F30: .4byte 0x0202E6C8
_02007F34:
	ldr r0, _02007F4C @ =0x0202E6C8
	movs r1, #1
	str r1, [r0]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl sub_02004AC8
	movs r0, #0x20
	bl sub_02004AE8
	b _02007F7C
	.align 2, 0
_02007F4C: .4byte 0x0202E6C8
_02007F50:
	ldr r0, _02007F68 @ =0x0202E6C8
	movs r1, #2
	str r1, [r0]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl sub_02004AC8
	bl sub_020048D0
	b _02007F80
	.align 2, 0
_02007F68: .4byte 0x0202E6C8
_02007F6C:
	ldr r0, _02007F88 @ =0x0202E6C8
	movs r1, #3
	str r1, [r0]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl sub_02004AC8
_02007F7C:
	bl sub_020048F8
_02007F80:
	ldr r0, _02007F8C @ =sub_0200493C
	bl sub_02004B10
	b _02008000
	.align 2, 0
_02007F88: .4byte 0x0202E6C8
_02007F8C: .4byte sub_0200493C
_02007F90:
	ldr r0, _02007F9C @ =0x0202E6C8
	movs r1, #6
	str r1, [r0]
	movs r0, #0xbf
	b _02007FC4
	.align 2, 0
_02007F9C: .4byte 0x0202E6C8
_02007FA0:
	ldr r0, _02007FB8 @ =0x0202E6C8
	movs r1, #7
	str r1, [r0]
	movs r0, #0xbf
	bl sub_02004844
	movs r0, #0x22
	bl sub_02004854
	bl sub_0200479C
	b _02007FD2
	.align 2, 0
_02007FB8: .4byte 0x0202E6C8
_02007FBC:
	ldr r0, _02007FDC @ =0x0202E6C8
	movs r1, #4
	str r1, [r0]
	movs r0, #0xff
_02007FC4:
	bl sub_02004844
	movs r0, #0x22
	bl sub_02004854
	bl sub_02004778
_02007FD2:
	ldr r0, _02007FE0 @ =sub_020047B8
	bl sub_02004B10
	b _02008000
	.align 2, 0
_02007FDC: .4byte 0x0202E6C8
_02007FE0: .4byte sub_020047B8
_02007FE4:
	ldr r0, _02008004 @ =0x0202E6C8
	movs r1, #5
	str r1, [r0]
	movs r0, #0xff
	bl sub_02004844
	movs r0, #0x22
	bl sub_02004854
	bl sub_0200479C
	ldr r0, _02008008 @ =sub_020047B8
	bl sub_02004B10
_02008000:
	pop {r0}
	bx r0
	.align 2, 0
_02008004: .4byte 0x0202E6C8
_02008008: .4byte sub_020047B8

	thumb_func_start sub_0200800C
sub_0200800C: @ 0x0200800C
	push {lr}
	ldr r0, _02008028 @ =0x0202E6C8
	ldr r0, [r0]
	cmp r0, #0
	blt _02008046
	cmp r0, #3
	bgt _0200802C
	bl sub_02004A7C
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r1, r1, #0x1f
	b _02008048
	.align 2, 0
_02008028: .4byte 0x0202E6C8
_0200802C:
	cmp r0, #7
	bgt _02008046
	bl sub_0200476C
	adds r1, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _02008046
	cmp r1, #1
	beq _02008046
	movs r1, #0
	b _02008048
_02008046:
	movs r1, #1
_02008048:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_02008050
sub_02008050: @ 0x02008050
	ldr r1, _02008058 @ =0x0202B2A0
	movs r0, #0
	str r0, [r1]
	bx lr
	.align 2, 0
_02008058: .4byte 0x0202B2A0

	thumb_func_start sub_0200805C
sub_0200805C: @ 0x0200805C
	ldr r1, _02008064 @ =0x0202B2A0
	movs r0, #0
	str r0, [r1]
	bx lr
	.align 2, 0
_02008064: .4byte 0x0202B2A0

	thumb_func_start sub_02008068
sub_02008068: @ 0x02008068
	push {r4, r5, lr}
	sub sp, #4
	ldr r0, _020080B8 @ =0x0000D080
	ldr r5, _020080BC @ =0x0202E690
	ldr r1, [r5, #4]
	movs r4, #1
	str r4, [sp]
	movs r2, #0
	movs r3, #1
	bl sub_02006C14
	movs r0, #0xd0
	lsls r0, r0, #1
	ldr r1, [r5, #4]
	str r4, [sp]
	movs r2, #7
	movs r3, #0
	bl sub_02006D58
	movs r0, #0xe0
	lsls r0, r0, #1
	ldr r1, [r5, #4]
	str r4, [sp]
	movs r2, #8
	movs r3, #0
	bl sub_02006D58
	movs r0, #0xf0
	lsls r0, r0, #1
	ldr r1, [r5, #4]
	str r4, [sp]
	movs r2, #9
	movs r3, #0
	bl sub_02006D58
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_020080B8: .4byte 0x0000D080
_020080BC: .4byte 0x0202E690

	thumb_func_start sub_020080C0
sub_020080C0: @ 0x020080C0
	push {r4, r5, lr}
	ldr r0, _0200810C @ =0x02030000
	ldrb r0, [r0, #9]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #0xd0
	lsls r1, r1, #6
	adds r0, r0, r1
	bl sub_020072A8
	bl sub_020081DC
	ldr r5, _02008110 @ =0x0202E690
	str r0, [r5, #0x10]
	movs r0, #0
	bl sub_020081D0
	movs r4, #0x80
	lsls r4, r4, #0x12
	str r4, [r5]
	bl sub_02008120
	adds r0, r0, r4
	str r0, [r5, #4]
	ldr r1, [r0]
	adds r1, r0, r1
	subs r1, #4
	ldr r1, [r1]
	adds r0, r0, r1
	adds r0, #0x13
	movs r1, #0x10
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #8]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0200810C: .4byte 0x02030000
_02008110: .4byte 0x0202E690

	thumb_func_start sub_02008114
sub_02008114: @ 0x02008114
	ldr r1, _0200811C @ =0x0202E690
	strb r0, [r1, #0xc]
	bx lr
	.align 2, 0
_0200811C: .4byte 0x0202E690

	thumb_func_start sub_02008120
sub_02008120: @ 0x02008120
	ldr r0, _02008128 @ =gGameDataEnd_0200B8D8
	ldr r1, _0200812C @ =0x000FFFFF
	ands r0, r1
	bx lr
	.align 2, 0
_02008128: .4byte gGameDataEnd_0200B8D8
_0200812C: .4byte 0x000FFFFF

	thumb_func_start sub_02008130
sub_02008130: @ 0x02008130
	ldr r0, _02008138 @ =0x0202E690
	ldrb r0, [r0, #0xc]
	bx lr
	.align 2, 0
_02008138: .4byte 0x0202E690

	thumb_func_start sub_0200813C
sub_0200813C: @ 0x0200813C
	ldr r1, _0200814C @ =gUnknown_0200B85C
	ldr r0, _02008150 @ =0x0202E690
	ldrb r0, [r0, #0xc]
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	bx lr
	.align 2, 0
_0200814C: .4byte gUnknown_0200B85C
_02008150: .4byte 0x0202E690

	thumb_func_start sub_02008154
sub_02008154: @ 0x02008154
	push {lr}
	ldr r0, _02008164 @ =0x02030000
	ldrb r0, [r0, #0x13]
	cmp r0, #0
	beq _02008168
	movs r0, #0
	b _0200816A
	.align 2, 0
_02008164: .4byte 0x02030000
_02008168:
	movs r0, #1
_0200816A:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_02008170
sub_02008170: @ 0x02008170
	push {lr}
	ldr r0, _02008180 @ =0x02030000
	ldrb r0, [r0, #0x13]
	cmp r0, #0
	beq _02008184
	movs r0, #0
	b _02008186
	.align 2, 0
_02008180: .4byte 0x02030000
_02008184:
	movs r0, #1
_02008186:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0200818C
sub_0200818C: @ 0x0200818C
	push {lr}
	ldr r1, _020081A4 @ =0x02030000
	ldrb r0, [r1, #0x13]
	cmp r0, #0
	beq _020081A8
	ldrb r0, [r1, #1]
	cmp r0, #3
	beq _020081A8
	movs r0, #1
	ldrsb r0, [r1, r0]
	b _020081AA
	.align 2, 0
_020081A4: .4byte 0x02030000
_020081A8:
	movs r0, #1
_020081AA:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_020081B0
sub_020081B0: @ 0x020081B0
	ldr r0, _020081BC @ =0x02030000
	ldrb r0, [r0, #1]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	bx lr
	.align 2, 0
_020081BC: .4byte 0x02030000

	thumb_func_start sub_020081C0
sub_020081C0: @ 0x020081C0
	ldr r0, _020081CC @ =0x02030000
	ldrb r0, [r0, #2]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	bx lr
	.align 2, 0
_020081CC: .4byte 0x02030000

	thumb_func_start sub_020081D0
sub_020081D0: @ 0x020081D0
	ldr r1, _020081D8 @ =0x02030000
	str r0, [r1, #4]
	bx lr
	.align 2, 0
_020081D8: .4byte 0x02030000

	thumb_func_start sub_020081DC
sub_020081DC: @ 0x020081DC
	ldr r0, _020081E4 @ =0x02030000
	ldr r0, [r0, #4]
	bx lr
	.align 2, 0
_020081E4: .4byte 0x02030000

	thumb_func_start sub_020081E8
sub_020081E8: @ 0x020081E8
	ldr r1, _020081F0 @ =0x0202E690
	str r0, [r1, #0x10]
	bx lr
	.align 2, 0
_020081F0: .4byte 0x0202E690

	thumb_func_start sub_020081F4
sub_020081F4: @ 0x020081F4
	ldr r0, _020081FC @ =0x0202E690
	ldr r0, [r0, #0x10]
	bx lr
	.align 2, 0
_020081FC: .4byte 0x0202E690

	thumb_func_start sub_02008200
sub_02008200: @ 0x02008200
	push {lr}
	adds r1, r0, #0
	ldr r3, _02008220 @ =0x02030000
	ldr r0, _02008224 @ =0x0202E690
	ldrb r0, [r0, #0xc]
	subs r0, #0x21
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x17
	bhi _02008228
	ldrb r0, [r3, #0x13]
	movs r2, #0
	cmp r0, #0
	bne _0200822A
	b _0200823A
	.align 2, 0
_02008220: .4byte 0x02030000
_02008224: .4byte 0x0202E690
_02008228:
	movs r2, #0
_0200822A:
	cmp r2, #0
	bne _0200823A
	cmp r1, #0
	bne _02008236
	movs r0, #1
	b _0200824C
_02008236:
	strb r2, [r3, #3]
	b _0200824E
_0200823A:
	cmp r1, #0
	bne _02008242
	movs r0, #1
	b _0200824C
_02008242:
	cmp r1, #1
	bne _0200824A
	movs r0, #2
	b _0200824C
_0200824A:
	movs r0, #0
_0200824C:
	strb r0, [r3, #3]
_0200824E:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_02008254
sub_02008254: @ 0x02008254
	ldr r1, _0200825C @ =0x02030000
	movs r0, #0xff
	strb r0, [r1, #3]
	bx lr
	.align 2, 0
_0200825C: .4byte 0x02030000

	thumb_func_start sub_02008260
sub_02008260: @ 0x02008260
	push {lr}
	ldr r0, _02008270 @ =0x02030000
	ldrb r0, [r0, #0x13]
	cmp r0, #0
	bne _02008278
	ldr r0, _02008274 @ =0x03006030
	ldr r0, [r0]
	b _0200827A
	.align 2, 0
_02008270: .4byte 0x02030000
_02008274: .4byte 0x03006030
_02008278:
	movs r0, #0
_0200827A:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_02008280
sub_02008280: @ 0x02008280
	push {lr}
	ldr r0, _02008290 @ =0x02030000
	ldrb r0, [r0, #0x13]
	cmp r0, #0
	bne _02008298
	ldr r0, _02008294 @ =0x03006030
	ldr r0, [r0]
	b _0200829A
	.align 2, 0
_02008290: .4byte 0x02030000
_02008294: .4byte 0x03006030
_02008298:
	movs r0, #0
_0200829A:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_020082A0
sub_020082A0: @ 0x020082A0
	push {lr}
	ldr r1, _020082B0 @ =0x02030000
	cmp r0, #0
	bne _020082B4
	movs r0, #0xb
	ldrsb r0, [r1, r0]
	b _020082B8
	.align 2, 0
_020082B0: .4byte 0x02030000
_020082B4:
	movs r0, #0x13
	ldrsb r0, [r1, r0]
_020082B8:
	pop {r1}
	bx r1

	thumb_func_start sub_020082BC
sub_020082BC: @ 0x020082BC
	push {lr}
	ldr r1, _020082CC @ =0x02030000
	cmp r0, #0
	beq _020082D0
	movs r0, #0x12
	ldrsb r0, [r1, r0]
	b _020082D4
	.align 2, 0
_020082CC: .4byte 0x02030000
_020082D0:
	movs r0, #0xa
	ldrsb r0, [r1, r0]
_020082D4:
	pop {r1}
	bx r1

	thumb_func_start sub_020082D8
sub_020082D8: @ 0x020082D8
	push {lr}
	sub sp, #0x14
	ldr r1, _02008318 @ =0x000003FF
	movs r0, #0
	movs r2, #1
	bl sub_02004060
	movs r0, #0xe5
	lsls r0, r0, #1
	ldr r1, _0200831C @ =0x0202E690
	ldr r1, [r1, #4]
	movs r3, #0xa1
	lsls r3, r3, #2
	movs r2, #0xd0
	str r2, [sp]
	subs r2, #0xd1
	str r2, [sp, #4]
	str r2, [sp, #8]
	movs r2, #1
	str r2, [sp, #0xc]
	str r2, [sp, #0x10]
	movs r2, #3
	bl sub_02006E68
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl sub_02003FB8
	add sp, #0x14
	pop {r0}
	bx r0
	.align 2, 0
_02008318: .4byte 0x000003FF
_0200831C: .4byte 0x0202E690

	thumb_func_start sub_02008320
sub_02008320: @ 0x02008320
	bx lr
	.align 2, 0

	thumb_func_start sub_02008324
sub_02008324: @ 0x02008324
	push {r4, r5, r6, lr}
	movs r6, #0
	ldr r5, _02008338 @ =0x0202E6B0
	ldr r0, [r5, #0x14]
	cmp r0, #0
	beq _0200833C
	cmp r0, #1
	beq _02008350
	b _02008370
	.align 2, 0
_02008338: .4byte 0x0202E6B0
_0200833C:
	movs r0, #1
	str r0, [r5, #0x14]
	movs r6, #1
	ldr r2, [r5]
	cmp r2, #0
	beq _02008370
	movs r1, #3
	bl sub_02009104
	b _02008370
_02008350:
	movs r4, #0
	str r6, [r5, #0x14]
	movs r6, #1
	bl sub_02008320
	str r4, [r5, #4]
	ldr r2, [r5]
	cmp r2, #0
	beq _02008370
	movs r0, #1
	movs r1, #2
	bl sub_02009104
	movs r0, #1
	bl sub_02008570
_02008370:
	adds r0, r6, #0
	bl sub_02006700
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_0200837C
sub_0200837C: @ 0x0200837C
	push {r4, r5, lr}
	sub sp, #0x14
	bl sub_02008170
	cmp r0, #0
	bne _02008390
	bl sub_0200818C
	cmp r0, #1
	beq _02008396
_02008390:
	movs r4, #8
	movs r5, #1
	b _0200839A
_02008396:
	movs r4, #5
	movs r5, #2
_0200839A:
	ldr r1, _020083DC @ =0x000003FF
	movs r0, #0
	movs r2, #1
	bl sub_02004060
	lsls r0, r4, #5
	adds r0, #5
	lsls r0, r0, #1
	ldr r1, _020083E0 @ =0x0202E690
	ldr r1, [r1, #4]
	movs r3, #0xa1
	lsls r3, r3, #2
	movs r2, #0xd0
	str r2, [sp]
	subs r2, #0xd1
	str r2, [sp, #4]
	str r2, [sp, #8]
	movs r2, #1
	str r2, [sp, #0xc]
	str r2, [sp, #0x10]
	adds r2, r5, #0
	bl sub_02006E68
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl sub_02003FB8
	add sp, #0x14
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_020083DC: .4byte 0x000003FF
_020083E0: .4byte 0x0202E690

	thumb_func_start sub_020083E4
sub_020083E4: @ 0x020083E4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0200818C
	cmp r0, #1
	beq _02008400
	ldr r1, _020083FC @ =0x000003FF
	movs r0, #0
	movs r2, #1
	bl sub_02004060
	b _02008412
	.align 2, 0
_020083FC: .4byte 0x000003FF
_02008400:
	movs r0, #8
	ands r0, r4
	cmp r0, #0
	beq _02008412
	ldr r1, _02008418 @ =0x000003FF
	movs r0, #0
	movs r2, #1
	bl sub_02004060
_02008412:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_02008418: .4byte 0x000003FF

	thumb_func_start sub_0200841C
sub_0200841C: @ 0x0200841C
	push {r4, r5, r6, r7, lr}
	bl sub_020081B0
	cmp r0, #3
	bne _02008428
	b _0200855E
_02008428:
	ldr r0, _02008444 @ =0x0202B1B0
	ldrh r1, [r0]
	ldrh r0, [r0, #2]
	adds r4, r0, #0
	orrs r4, r1
	movs r7, #0
	ldr r5, _02008448 @ =0x0202E6B0
	ldr r0, [r5, #0xc]
	cmp r0, #0
	beq _0200844C
	cmp r0, #1
	beq _02008484
	b _02008558
	.align 2, 0
_02008444: .4byte 0x0202B1B0
_02008448: .4byte 0x0202E6B0
_0200844C:
	ldr r0, [r5, #0x10]
	cmp r0, #0
	beq _02008480
	movs r0, #8
	ands r4, r0
	cmp r4, #0
	beq _02008480
	movs r0, #0
	bl sub_02008704
	movs r0, #0xd1
	bl sub_0200880C
	movs r0, #1
	str r0, [r5, #0xc]
	movs r7, #1
	ldr r2, [r5]
	cmp r2, #0
	beq _0200847A
	movs r0, #0
	movs r1, #3
	bl sub_02009104
_0200847A:
	bl sub_0200837C
	b _02008558
_02008480:
	movs r7, #0
	b _02008558
_02008484:
	movs r6, #0
	bl sub_02008170
	cmp r0, #0
	beq _0200849E
	movs r1, #8
	ands r4, r1
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	rsbs r0, r0, #0
	asrs r6, r0, #0x1f
	ands r6, r1
	b _020084BC
_0200849E:
	bl sub_0200818C
	cmp r0, #1
	beq _020084B2
	movs r0, #8
	ands r4, r0
	cmp r4, #0
	beq _020084BC
	movs r6, #8
	b _020084C0
_020084B2:
	movs r0, #0xb
	ands r0, r4
	cmp r0, #0
	beq _020084BC
	adds r6, r4, #0
_020084BC:
	cmp r6, #0
	beq _02008556
_020084C0:
	ldr r4, _020084F0 @ =0x0202E6B0
	movs r5, #0
	str r5, [r4, #0xc]
	movs r7, #1
	adds r0, r6, #0
	bl sub_020083E4
	str r5, [r4, #4]
	ldr r4, [r4]
	cmp r4, #0
	beq _02008558
	movs r0, #8
	ands r0, r6
	cmp r0, #0
	beq _020084F4
	movs r0, #0
	movs r1, #0
	bl sub_0200910C
	movs r0, #1
	bl sub_02008704
	b _02008558
	.align 2, 0
_020084F0: .4byte 0x0202E6B0
_020084F4:
	adds r0, r6, #0
	ands r0, r7
	cmp r0, #0
	beq _02008502
	movs r0, #0
	movs r1, #1
	b _0200850E
_02008502:
	movs r0, #2
	ands r0, r6
	cmp r0, #0
	beq _02008558
	movs r0, #0
	movs r1, #2
_0200850E:
	bl sub_0200910C
	movs r0, #1
	bl sub_02008570
	movs r0, #0
	movs r1, #0
	bl sub_02008884
	movs r0, #1
	movs r1, #0
	bl sub_02008884
	movs r0, #2
	movs r1, #0
	bl sub_02008884
	movs r0, #3
	movs r1, #0
	bl sub_02008884
	movs r0, #4
	movs r1, #0
	bl sub_02008884
	movs r0, #5
	movs r1, #0
	bl sub_02008884
	movs r0, #6
	movs r1, #0
	bl sub_02008884
	bl sub_02008764
	b _02008558
_02008556:
	movs r7, #1
_02008558:
	adds r0, r7, #0
	bl sub_02006700
_0200855E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_02008564
sub_02008564: @ 0x02008564
	ldr r1, _0200856C @ =0x0202E6B0
	str r0, [r1]
	bx lr
	.align 2, 0
_0200856C: .4byte 0x0202E6B0

	thumb_func_start sub_02008570
sub_02008570: @ 0x02008570
	push {lr}
	cmp r0, #4
	bhi _020085C2
	lsls r0, r0, #2
	ldr r1, _02008580 @ =_02008584
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_02008580: .4byte _02008584
_02008584: @ jump table
	.4byte _02008598 @ case 0
	.4byte _020085A4 @ case 1
	.4byte _020085B0 @ case 2
	.4byte _020085BC @ case 3
	.4byte _020085BC @ case 4
_02008598:
	ldr r1, _020085A0 @ =0x0202E6B0
	movs r0, #1
	str r0, [r1, #0x10]
	b _020085C2
	.align 2, 0
_020085A0: .4byte 0x0202E6B0
_020085A4:
	ldr r1, _020085AC @ =0x0202E6B0
	movs r0, #0
	str r0, [r1, #0x10]
	b _020085C2
	.align 2, 0
_020085AC: .4byte 0x0202E6B0
_020085B0:
	ldr r1, _020085B8 @ =0x0202E6B0
	movs r0, #1
	str r0, [r1, #4]
	b _020085C2
	.align 2, 0
_020085B8: .4byte 0x0202E6B0
_020085BC:
	ldr r1, _020085C8 @ =0x0202E6B0
	movs r0, #1
	str r0, [r1, #8]
_020085C2:
	pop {r0}
	bx r0
	.align 2, 0
_020085C8: .4byte 0x0202E6B0

	thumb_func_start sub_020085CC
sub_020085CC: @ 0x020085CC
	push {lr}
	ldr r0, _020085F0 @ =0x0202B2A0
	ldr r0, [r0]
	cmp r0, #0
	beq _020085F4
	movs r0, #1
	bl sub_02006700
	movs r0, #4
	movs r1, #0
	bl sub_02006624
	movs r0, #5
	movs r1, #0
	bl sub_02006624
	b _02008622
	.align 2, 0
_020085F0: .4byte 0x0202B2A0
_020085F4:
	movs r0, #0
	bl sub_02006700
	ldr r1, _02008608 @ =0x0202E6B0
	ldr r0, [r1, #4]
	cmp r0, #0
	beq _0200860C
	cmp r0, #1
	beq _0200861E
	b _02008622
	.align 2, 0
_02008608: .4byte 0x0202E6B0
_0200860C:
	ldr r0, [r1, #8]
	cmp r0, #0
	bne _02008618
	bl sub_02008E00
	b _02008622
_02008618:
	bl sub_0200841C
	b _02008622
_0200861E:
	bl sub_02008324
_02008622:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_02008628
sub_02008628: @ 0x02008628
	ldr r0, _0200863C @ =0x0202E6B0
	movs r2, #0
	str r2, [r0, #4]
	movs r1, #1
	str r1, [r0, #8]
	str r2, [r0, #0xc]
	str r2, [r0, #0x10]
	str r2, [r0, #0x14]
	str r2, [r0]
	bx lr
	.align 2, 0
_0200863C: .4byte 0x0202E6B0

	thumb_func_start sub_02008640
sub_02008640: @ 0x02008640
	push {lr}
	ldr r1, _02008654 @ =0x0202EAD0
	str r0, [r1]
	cmp r0, #0
	beq _0200864E
	bl sub_02008924
_0200864E:
	pop {r0}
	bx r0
	.align 2, 0
_02008654: .4byte 0x0202EAD0

	thumb_func_start sub_02008658
sub_02008658: @ 0x02008658
	push {lr}
	ldr r0, _0200866C @ =0x0202EAD0
	ldr r0, [r0]
	cmp r0, #0
	beq _02008666
	bl sub_02008980
_02008666:
	pop {r0}
	bx r0
	.align 2, 0
_0200866C: .4byte 0x0202EAD0

	thumb_func_start sub_02008670
sub_02008670: @ 0x02008670
	push {lr}
	ldr r0, _02008684 @ =0x0202EAD0
	ldr r0, [r0]
	cmp r0, #0
	beq _0200867E
	bl sub_02008964
_0200867E:
	pop {r0}
	bx r0
	.align 2, 0
_02008684: .4byte 0x0202EAD0

	thumb_func_start sub_02008688
sub_02008688: @ 0x02008688
	push {lr}
	ldr r0, _0200869C @ =0x0202EAD0
	ldr r0, [r0]
	cmp r0, #0
	beq _02008696
	bl sub_0200899C
_02008696:
	pop {r0}
	bx r0
	.align 2, 0
_0200869C: .4byte 0x0202EAD0

	thumb_func_start sub_020086A0
sub_020086A0: @ 0x020086A0
	push {lr}
	ldr r0, _020086B4 @ =0x0202EAD0
	ldr r0, [r0]
	cmp r0, #0
	beq _020086AE
	bl sub_020089B8
_020086AE:
	pop {r0}
	bx r0
	.align 2, 0
_020086B4: .4byte 0x0202EAD0

	thumb_func_start sub_020086B8
sub_020086B8: @ 0x020086B8
	push {lr}
	adds r1, r0, #0
	ldr r0, _020086DC @ =0x0202EAD0
	ldr r0, [r0]
	cmp r0, #0
	beq _020086D6
	adds r0, r1, #0
	cmp r0, #0
	bge _020086CC
	adds r0, #0xf
_020086CC:
	lsls r1, r0, #0xc
	lsrs r1, r1, #0x10
	movs r0, #0
	bl sub_02008B34
_020086D6:
	pop {r0}
	bx r0
	.align 2, 0
_020086DC: .4byte 0x0202EAD0

	thumb_func_start sub_020086E0
sub_020086E0: @ 0x020086E0
	push {lr}
	adds r2, r0, #0
	ldr r0, _020086FC @ =0x0202EAD0
	ldr r0, [r0]
	cmp r0, #0
	beq _020086F8
	ldr r1, _02008700 @ =0x0000FFFF
	lsls r2, r2, #8
	lsrs r2, r2, #0x10
	movs r0, #0
	bl sub_02008BD4
_020086F8:
	pop {r0}
	bx r0
	.align 2, 0
_020086FC: .4byte 0x0202EAD0
_02008700: .4byte 0x0000FFFF

	thumb_func_start sub_02008704
sub_02008704: @ 0x02008704
	push {lr}
	adds r1, r0, #0
	ldr r0, _0200871C @ =0x0202EAD0
	ldr r0, [r0]
	cmp r0, #0
	beq _02008724
	cmp r1, #0
	bne _02008720
	bl sub_02008ADC
	b _02008724
	.align 2, 0
_0200871C: .4byte 0x0202EAD0
_02008720:
	bl sub_02008B18
_02008724:
	pop {r0}
	bx r0

	thumb_func_start sub_02008728
sub_02008728: @ 0x02008728
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _0200875C @ =0x0202EAD0
	ldr r0, [r0]
	cmp r0, #0
	beq _02008754
	ldr r5, _02008760 @ =0x0202EAC0
	ldr r0, [r5, #4]
	cmp r0, r4
	beq _02008754
	movs r0, #0
	str r0, [r5]
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	bl sub_020089D4
	str r4, [r5, #4]
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r5, #8]
	bl sub_020086E0
_02008754:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0200875C: .4byte 0x0202EAD0
_02008760: .4byte 0x0202EAC0

	thumb_func_start sub_02008764
sub_02008764: @ 0x02008764
	push {r4, r5, lr}
	ldr r0, _02008790 @ =0x0202EAD0
	ldr r0, [r0]
	cmp r0, #0
	beq _02008788
	ldr r4, _02008794 @ =0x0202EAC0
	ldr r1, [r4, #4]
	movs r5, #1
	rsbs r5, r5, #0
	cmp r1, r5
	beq _02008788
	movs r0, #0
	str r0, [r4]
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	bl sub_02008A34
	str r5, [r4, #4]
_02008788:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_02008790: .4byte 0x0202EAD0
_02008794: .4byte 0x0202EAC0

	thumb_func_start sub_02008798
sub_02008798: @ 0x02008798
	push {lr}
	ldr r0, _020087A4 @ =0x0202EAD0
	ldr r0, [r0]
	movs r0, #0
	pop {r1}
	bx r1
	.align 2, 0
_020087A4: .4byte 0x0202EAD0

	thumb_func_start sub_020087A8
sub_020087A8: @ 0x020087A8
	push {lr}
	adds r1, r0, #0
	ldr r0, _020087C0 @ =0x0202EAD0
	ldr r0, [r0]
	cmp r0, #0
	beq _020087BA
	adds r0, r1, #0
	bl sub_020086B8
_020087BA:
	pop {r0}
	bx r0
	.align 2, 0
_020087C0: .4byte 0x0202EAD0

	thumb_func_start sub_020087C4
sub_020087C4: @ 0x020087C4
	push {lr}
	adds r1, r0, #0
	ldr r0, _020087DC @ =0x0202EAD0
	ldr r0, [r0]
	cmp r0, #0
	beq _020087D8
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	bl sub_020089D4
_020087D8:
	pop {r0}
	bx r0
	.align 2, 0
_020087DC: .4byte 0x0202EAD0

	thumb_func_start sub_020087E0
sub_020087E0: @ 0x020087E0
	push {lr}
	adds r1, r0, #0
	ldr r0, _020087F8 @ =0x0202EAD0
	ldr r0, [r0]
	cmp r0, #0
	beq _020087F4
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	bl sub_02008A34
_020087F4:
	pop {r0}
	bx r0
	.align 2, 0
_020087F8: .4byte 0x0202EAD0

	thumb_func_start sub_020087FC
sub_020087FC: @ 0x020087FC
	push {lr}
	ldr r0, _02008808 @ =0x0202EAD0
	ldr r0, [r0]
	movs r0, #0
	pop {r1}
	bx r1
	.align 2, 0
_02008808: .4byte 0x0202EAD0

	thumb_func_start sub_0200880C
sub_0200880C: @ 0x0200880C
	push {lr}
	adds r1, r0, #0
	ldr r0, _02008824 @ =0x0202EAD0
	ldr r0, [r0]
	cmp r0, #0
	beq _02008820
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	bl sub_020089D4
_02008820:
	pop {r0}
	bx r0
	.align 2, 0
_02008824: .4byte 0x0202EAD0

	thumb_func_start sub_02008828
sub_02008828: @ 0x02008828
	push {r4, lr}
	adds r2, r0, #0
	adds r4, r1, #0
	ldr r0, _02008850 @ =0x0202EAD0
	ldr r0, [r0]
	cmp r0, #0
	beq _02008848
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	bl sub_02008A34
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	movs r1, #1
	bl sub_02008B34
_02008848:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_02008850: .4byte 0x0202EAD0

	thumb_func_start sub_02008854
sub_02008854: @ 0x02008854
	push {lr}
	ldr r0, _02008860 @ =0x0202EAD0
	ldr r0, [r0]
	movs r0, #0
	pop {r1}
	bx r1
	.align 2, 0
_02008860: .4byte 0x0202EAD0

	thumb_func_start sub_02008864
sub_02008864: @ 0x02008864
	push {lr}
	adds r2, r0, #0
	ldr r0, _02008880 @ =0x0202EAD0
	ldr r0, [r0]
	cmp r0, #0
	beq _0200887C
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #8
	lsrs r1, r1, #0x10
	bl sub_02008BAC
_0200887C:
	pop {r0}
	bx r0
	.align 2, 0
_02008880: .4byte 0x0202EAD0

	thumb_func_start sub_02008884
sub_02008884: @ 0x02008884
	push {lr}
	adds r3, r0, #0
	adds r2, r1, #0
	ldr r0, _020088A4 @ =0x0202EAD0
	ldr r0, [r0]
	cmp r0, #0
	beq _020088A0
	lsls r0, r3, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _020088A8 @ =0x0000FFFF
	lsls r2, r2, #8
	lsrs r2, r2, #0x10
	bl sub_02008BD4
_020088A0:
	pop {r0}
	bx r0
	.align 2, 0
_020088A4: .4byte 0x0202EAD0
_020088A8: .4byte 0x0000FFFF

	thumb_func_start sub_020088AC
sub_020088AC: @ 0x020088AC
	push {lr}
	adds r3, r0, #0
	adds r2, r1, #0
	ldr r0, _020088CC @ =0x0202EAD0
	ldr r0, [r0]
	cmp r0, #0
	beq _020088C8
	lsls r0, r3, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _020088D0 @ =0x0000FFFF
	lsls r2, r2, #8
	asrs r2, r2, #0x10
	bl sub_02008C04
_020088C8:
	pop {r0}
	bx r0
	.align 2, 0
_020088CC: .4byte 0x0202EAD0
_020088D0: .4byte 0x0000FFFF

	thumb_func_start sub_020088D4
sub_020088D4: @ 0x020088D4
	push {r4, lr}
	ldr r4, _02008904 @ =0x0202EAC0
	ldr r0, [r4]
	cmp r0, #0
	beq _020088FE
	cmp r0, #1
	bne _020088FE
	ldr r0, [r4, #8]
	ldr r1, [r4, #0xc]
	subs r0, r0, r1
	str r0, [r4, #8]
	cmp r0, #0
	bgt _020088F8
	movs r0, #0
	str r0, [r4, #8]
	str r0, [r4]
	bl sub_02008764
_020088F8:
	ldr r0, [r4, #8]
	bl sub_020086E0
_020088FE:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_02008904: .4byte 0x0202EAC0

	thumb_func_start sub_02008908
sub_02008908: @ 0x02008908
	ldr r1, _0200891C @ =0x0202EAC0
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r1, #4]
	movs r0, #0
	str r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r1, #8]
	bx lr
	.align 2, 0
_0200891C: .4byte 0x0202EAC0

	thumb_func_start sub_02008920
sub_02008920: @ 0x02008920
	bx lr
	.align 2, 0

	thumb_func_start sub_02008924
sub_02008924: @ 0x02008924
	push {lr}
	ldr r1, _0200893C @ =0x02030018
	ldr r2, [r1, #8]
	cmp r2, #0
	beq _02008938
	movs r0, #0
	strb r0, [r1, #1]
	strh r0, [r1, #2]
	bl sub_02009104
_02008938:
	pop {r0}
	bx r0
	.align 2, 0
_0200893C: .4byte 0x02030018

	thumb_func_start sub_02008940
sub_02008940: @ 0x02008940
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _02008960 @ =0x02030018
	ldr r3, [r2, #8]
	cmp r3, #0
	beq _0200895A
	movs r1, #0
	movs r0, #1
	strb r0, [r2, #1]
	strh r1, [r2, #2]
	str r4, [r2, #4]
	bl sub_02009108
_0200895A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_02008960: .4byte 0x02030018

	thumb_func_start sub_02008964
sub_02008964: @ 0x02008964
	push {lr}
	ldr r2, _0200897C @ =0x02030018
	ldr r1, [r2, #8]
	cmp r1, #0
	beq _02008976
	movs r0, #2
	strb r0, [r2, #1]
	bl sub_02009100
_02008976:
	pop {r0}
	bx r0
	.align 2, 0
_0200897C: .4byte 0x02030018

	thumb_func_start sub_02008980
sub_02008980: @ 0x02008980
	push {lr}
	ldr r2, _02008998 @ =0x02030018
	ldr r1, [r2, #8]
	cmp r1, #0
	beq _02008992
	movs r0, #3
	strb r0, [r2, #1]
	bl sub_02009100
_02008992:
	pop {r0}
	bx r0
	.align 2, 0
_02008998: .4byte 0x02030018

	thumb_func_start sub_0200899C
sub_0200899C: @ 0x0200899C
	push {lr}
	ldr r2, _020089B4 @ =0x02030018
	ldr r1, [r2, #8]
	cmp r1, #0
	beq _020089AE
	movs r0, #4
	strb r0, [r2, #1]
	bl sub_02009100
_020089AE:
	pop {r0}
	bx r0
	.align 2, 0
_020089B4: .4byte 0x02030018

	thumb_func_start sub_020089B8
sub_020089B8: @ 0x020089B8
	push {lr}
	ldr r2, _020089D0 @ =0x02030018
	ldr r1, [r2, #8]
	cmp r1, #0
	beq _020089CA
	movs r0, #5
	strb r0, [r2, #1]
	bl sub_02009100
_020089CA:
	pop {r0}
	bx r0
	.align 2, 0
_020089D0: .4byte 0x02030018

	thumb_func_start sub_020089D4
sub_020089D4: @ 0x020089D4
	push {lr}
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r1, _020089F0 @ =0x02030018
	ldr r2, [r1, #8]
	cmp r2, #0
	beq _020089EC
	movs r0, #6
	strb r0, [r1, #1]
	strh r3, [r1, #2]
	bl sub_02009104
_020089EC:
	pop {r0}
	bx r0
	.align 2, 0
_020089F0: .4byte 0x02030018

	thumb_func_start sub_020089F4
sub_020089F4: @ 0x020089F4
	push {lr}
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r1, _02008A10 @ =0x02030018
	ldr r2, [r1, #8]
	cmp r2, #0
	beq _02008A0C
	movs r0, #7
	strb r0, [r1, #1]
	strh r3, [r1, #2]
	bl sub_02009104
_02008A0C:
	pop {r0}
	bx r0
	.align 2, 0
_02008A10: .4byte 0x02030018

	thumb_func_start sub_02008A14
sub_02008A14: @ 0x02008A14
	push {lr}
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r1, _02008A30 @ =0x02030018
	ldr r2, [r1, #8]
	cmp r2, #0
	beq _02008A2C
	movs r0, #8
	strb r0, [r1, #1]
	strh r3, [r1, #2]
	bl sub_02009104
_02008A2C:
	pop {r0}
	bx r0
	.align 2, 0
_02008A30: .4byte 0x02030018

	thumb_func_start sub_02008A34
sub_02008A34: @ 0x02008A34
	push {lr}
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r1, _02008A50 @ =0x02030018
	ldr r2, [r1, #8]
	cmp r2, #0
	beq _02008A4C
	movs r0, #9
	strb r0, [r1, #1]
	strh r3, [r1, #2]
	bl sub_02009104
_02008A4C:
	pop {r0}
	bx r0
	.align 2, 0
_02008A50: .4byte 0x02030018

	thumb_func_start sub_02008A54
sub_02008A54: @ 0x02008A54
	push {lr}
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r1, _02008A70 @ =0x02030018
	ldr r2, [r1, #8]
	cmp r2, #0
	beq _02008A6C
	movs r0, #0xa
	strb r0, [r1, #1]
	strh r3, [r1, #2]
	bl sub_02009104
_02008A6C:
	pop {r0}
	bx r0
	.align 2, 0
_02008A70: .4byte 0x02030018

	thumb_func_start sub_02008A74
sub_02008A74: @ 0x02008A74
	push {lr}
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	ldr r1, _02008A90 @ =0x02030018
	ldr r2, [r1, #8]
	cmp r2, #0
	beq _02008A8C
	movs r0, #0xc
	strb r0, [r1, #1]
	strh r3, [r1, #2]
	bl sub_02009104
_02008A8C:
	pop {r0}
	bx r0
	.align 2, 0
_02008A90: .4byte 0x02030018

	thumb_func_start sub_02008A94
sub_02008A94: @ 0x02008A94
	push {r4, lr}
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, _02008AB8 @ =0x02030018
	ldr r3, [r2, #8]
	cmp r3, #0
	beq _02008AB2
	movs r0, #0xb
	strb r0, [r2, #1]
	strh r4, [r2, #2]
	strh r1, [r2, #4]
	bl sub_02009108
_02008AB2:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_02008AB8: .4byte 0x02030018

	thumb_func_start sub_02008ABC
sub_02008ABC: @ 0x02008ABC
	push {lr}
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	ldr r1, _02008AD8 @ =0x02030018
	ldr r2, [r1, #8]
	cmp r2, #0
	beq _02008AD4
	movs r0, #0xd
	strb r0, [r1, #1]
	strh r3, [r1, #2]
	bl sub_02009104
_02008AD4:
	pop {r0}
	bx r0
	.align 2, 0
_02008AD8: .4byte 0x02030018

	thumb_func_start sub_02008ADC
sub_02008ADC: @ 0x02008ADC
	push {lr}
	ldr r2, _02008AF4 @ =0x02030018
	ldr r1, [r2, #8]
	cmp r1, #0
	beq _02008AEE
	movs r0, #0xe
	strb r0, [r2, #1]
	bl sub_02009100
_02008AEE:
	pop {r0}
	bx r0
	.align 2, 0
_02008AF4: .4byte 0x02030018

	thumb_func_start sub_02008AF8
sub_02008AF8: @ 0x02008AF8
	push {lr}
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	ldr r1, _02008B14 @ =0x02030018
	ldr r2, [r1, #8]
	cmp r2, #0
	beq _02008B10
	movs r0, #0xf
	strb r0, [r1, #1]
	strh r3, [r1, #2]
	bl sub_02009104
_02008B10:
	pop {r0}
	bx r0
	.align 2, 0
_02008B14: .4byte 0x02030018

	thumb_func_start sub_02008B18
sub_02008B18: @ 0x02008B18
	push {lr}
	ldr r2, _02008B30 @ =0x02030018
	ldr r1, [r2, #8]
	cmp r1, #0
	beq _02008B2A
	movs r0, #0x10
	strb r0, [r2, #1]
	bl sub_02009100
_02008B2A:
	pop {r0}
	bx r0
	.align 2, 0
_02008B30: .4byte 0x02030018

	thumb_func_start sub_02008B34
sub_02008B34: @ 0x02008B34
	push {r4, lr}
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, _02008B58 @ =0x02030018
	ldr r3, [r2, #8]
	cmp r3, #0
	beq _02008B52
	movs r0, #0x11
	strb r0, [r2, #1]
	strh r4, [r2, #2]
	strh r1, [r2, #4]
	bl sub_02009108
_02008B52:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_02008B58: .4byte 0x02030018

	thumb_func_start sub_02008B5C
sub_02008B5C: @ 0x02008B5C
	push {r4, lr}
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, _02008B80 @ =0x02030018
	ldr r3, [r2, #8]
	cmp r3, #0
	beq _02008B7A
	movs r0, #0x12
	strb r0, [r2, #1]
	strh r4, [r2, #2]
	strh r1, [r2, #4]
	bl sub_02009108
_02008B7A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_02008B80: .4byte 0x02030018

	thumb_func_start sub_02008B84
sub_02008B84: @ 0x02008B84
	push {r4, lr}
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, _02008BA8 @ =0x02030018
	ldr r3, [r2, #8]
	cmp r3, #0
	beq _02008BA2
	movs r0, #0x13
	strb r0, [r2, #1]
	strh r4, [r2, #2]
	strh r1, [r2, #4]
	bl sub_02009108
_02008BA2:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_02008BA8: .4byte 0x02030018

	thumb_func_start sub_02008BAC
sub_02008BAC: @ 0x02008BAC
	push {r4, lr}
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, _02008BD0 @ =0x02030018
	ldr r3, [r2, #8]
	cmp r3, #0
	beq _02008BCA
	movs r0, #0x14
	strb r0, [r2, #1]
	strh r4, [r2, #2]
	strh r1, [r2, #4]
	bl sub_02009108
_02008BCA:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_02008BD0: .4byte 0x02030018

	thumb_func_start sub_02008BD4
sub_02008BD4: @ 0x02008BD4
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldr r3, _02008C00 @ =0x02030018
	ldr r1, [r3, #8]
	cmp r1, #0
	beq _02008BF8
	movs r0, #0x15
	strb r0, [r3, #1]
	strh r5, [r3, #2]
	strh r4, [r3, #4]
	strh r2, [r3, #6]
	bl sub_02009100
_02008BF8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_02008C00: .4byte 0x02030018

	thumb_func_start sub_02008C04
sub_02008C04: @ 0x02008C04
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldr r3, _02008C30 @ =0x02030018
	ldr r1, [r3, #8]
	cmp r1, #0
	beq _02008C28
	movs r0, #0x16
	strb r0, [r3, #1]
	strh r5, [r3, #2]
	strh r4, [r3, #4]
	strh r2, [r3, #6]
	bl sub_02009100
_02008C28:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_02008C30: .4byte 0x02030018

	thumb_func_start sub_02008C34
sub_02008C34: @ 0x02008C34
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	ldr r3, _02008C60 @ =0x02030018
	ldr r1, [r3, #8]
	cmp r1, #0
	beq _02008C58
	movs r0, #0x17
	strb r0, [r3, #1]
	strh r5, [r3, #2]
	strh r4, [r3, #4]
	strb r2, [r3, #6]
	bl sub_02009100
_02008C58:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_02008C60: .4byte 0x02030018

	thumb_func_start sub_02008C64
sub_02008C64: @ 0x02008C64
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	ldr r3, _02008C90 @ =0x02030018
	ldr r1, [r3, #8]
	cmp r1, #0
	beq _02008C88
	movs r0, #0x18
	strb r0, [r3, #1]
	strh r5, [r3, #2]
	strh r4, [r3, #4]
	strb r2, [r3, #6]
	bl sub_02009100
_02008C88:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_02008C90: .4byte 0x02030018

	thumb_func_start sub_02008C94
sub_02008C94: @ 0x02008C94
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	ldr r3, _02008CC0 @ =0x02030018
	ldr r1, [r3, #8]
	cmp r1, #0
	beq _02008CB8
	movs r0, #0x19
	strb r0, [r3, #1]
	strh r5, [r3, #2]
	strh r4, [r3, #4]
	strb r2, [r3, #6]
	bl sub_02009100
_02008CB8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_02008CC0: .4byte 0x02030018

	thumb_func_start sub_02008CC4
sub_02008CC4: @ 0x02008CC4
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	ldr r3, _02008CF0 @ =0x02030018
	ldr r1, [r3, #8]
	cmp r1, #0
	beq _02008CE8
	movs r0, #0x1a
	strb r0, [r3, #1]
	strh r5, [r3, #2]
	strh r4, [r3, #4]
	strb r2, [r3, #6]
	bl sub_02009100
_02008CE8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_02008CF0: .4byte 0x02030018

	thumb_func_start sub_02008CF4
sub_02008CF4: @ 0x02008CF4
	bx lr
	.align 2, 0

	thumb_func_start sub_02008CF8
sub_02008CF8: @ 0x02008CF8
	bx lr
	.align 2, 0

	thumb_func_start sub_02008CFC
sub_02008CFC: @ 0x02008CFC
	push {r4, lr}
	ldr r0, _02008D5C @ =0x030060E4
	movs r1, #0
	str r1, [r0]
	ldr r0, _02008D60 @ =0x030060E0
	str r1, [r0]
	ldr r0, _02008D64 @ =0x0300607C
	str r1, [r0]
	ldr r0, _02008D68 @ =0x030060E8
	strb r1, [r0]
	ldr r0, _02008D6C @ =0x03006518
	str r1, [r0]
	ldr r0, _02008D70 @ =0x03006030
	str r1, [r0]
	ldr r0, _02008D74 @ =0x030064F0
	str r1, [r0]
	ldr r0, _02008D78 @ =0x0202E714
	str r1, [r0]
	ldr r1, _02008D7C @ =0x03006500
	movs r2, #0
	adds r0, r1, #0
	adds r0, #0xe
_02008D28:
	strh r2, [r0]
	subs r0, #2
	cmp r0, r1
	bge _02008D28
	movs r1, #0
	ldr r4, _02008D80 @ =0x03006080
	movs r3, #0
_02008D36:
	lsls r0, r1, #1
	adds r2, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	movs r1, #7
	adds r0, r0, r4
	adds r0, #0xe
_02008D44:
	strh r3, [r0]
	subs r0, #2
	subs r1, #1
	cmp r1, #0
	bge _02008D44
	adds r1, r2, #0
	cmp r1, #3
	ble _02008D36
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_02008D5C: .4byte 0x030060E4
_02008D60: .4byte 0x030060E0
_02008D64: .4byte 0x0300607C
_02008D68: .4byte 0x030060E8
_02008D6C: .4byte 0x03006518
_02008D70: .4byte 0x03006030
_02008D74: .4byte 0x030064F0
_02008D78: .4byte 0x0202E714
_02008D7C: .4byte 0x03006500
_02008D80: .4byte 0x03006080

	thumb_func_start sub_02008D84
sub_02008D84: @ 0x02008D84
	bx lr
	.align 2, 0

	thumb_func_start sub_02008D88
sub_02008D88: @ 0x02008D88
	bx lr
	.align 2, 0

	thumb_func_start sub_02008D8C
sub_02008D8C: @ 0x02008D8C
	bx lr
	.align 2, 0

	thumb_func_start sub_02008D90
sub_02008D90: @ 0x02008D90
	bx lr
	.align 2, 0

	thumb_func_start sub_02008D94
sub_02008D94: @ 0x02008D94
	bx lr
	.align 2, 0

	thumb_func_start sub_02008D98
sub_02008D98: @ 0x02008D98
	bx lr
	.align 2, 0

	thumb_func_start sub_02008D9C
sub_02008D9C: @ 0x02008D9C
	movs r0, #0
	bx lr

	thumb_func_start sub_02008DA0
sub_02008DA0: @ 0x02008DA0
	movs r0, #0
	bx lr

	thumb_func_start sub_02008DA4
sub_02008DA4: @ 0x02008DA4
	movs r0, #0
	bx lr

	thumb_func_start sub_02008DA8
sub_02008DA8: @ 0x02008DA8
	movs r0, #0
	bx lr

	thumb_func_start sub_02008DAC
sub_02008DAC: @ 0x02008DAC
	movs r0, #0
	bx lr

	thumb_func_start sub_02008DB0
sub_02008DB0: @ 0x02008DB0
	bx lr
	.align 2, 0

	thumb_func_start sub_02008DB4
sub_02008DB4: @ 0x02008DB4
	movs r0, #1
	bx lr

	thumb_func_start sub_02008DB8
sub_02008DB8: @ 0x02008DB8
	movs r0, #1
	bx lr

	thumb_func_start sub_02008DBC
sub_02008DBC: @ 0x02008DBC
	movs r0, #1
	bx lr

	thumb_func_start sub_02008DC0
sub_02008DC0: @ 0x02008DC0
	movs r0, #1
	bx lr

	thumb_func_start sub_02008DC4
sub_02008DC4: @ 0x02008DC4
	movs r0, #1
	bx lr

	thumb_func_start sub_02008DC8
sub_02008DC8: @ 0x02008DC8
	movs r0, #1
	bx lr

	thumb_func_start sub_02008DCC
sub_02008DCC: @ 0x02008DCC
	bx lr
	.align 2, 0

	thumb_func_start sub_02008DD0
sub_02008DD0: @ 0x02008DD0
	bx lr
	.align 2, 0

	thumb_func_start sub_02008DD4
sub_02008DD4: @ 0x02008DD4
	bx lr
	.align 2, 0

	thumb_func_start sub_02008DD8
sub_02008DD8: @ 0x02008DD8
	bx lr
	.align 2, 0

	thumb_func_start sub_02008DDC
sub_02008DDC: @ 0x02008DDC
	movs r0, #0
	bx lr

	thumb_func_start sub_02008DE0
sub_02008DE0: @ 0x02008DE0
	bx lr
	.align 2, 0

	thumb_func_start sub_02008DE4
sub_02008DE4: @ 0x02008DE4
	bx lr
	.align 2, 0

	thumb_func_start sub_02008DE8
sub_02008DE8: @ 0x02008DE8
	bx lr
	.align 2, 0

	thumb_func_start sub_02008DEC
sub_02008DEC: @ 0x02008DEC
	bx lr
	.align 2, 0
