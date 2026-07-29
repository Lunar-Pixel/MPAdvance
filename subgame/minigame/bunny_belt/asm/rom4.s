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
