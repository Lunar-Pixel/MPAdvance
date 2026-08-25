	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .text
	.ARM
	.syntax unified

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
	bl memcpy
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
	bl memcpy
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
	bl LoadPalette_08008308
	ldr r0, _080053A0 @ =0x08125644
	lsls r6, r6, #0xe
	lsls r5, r5, #5
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r5, r5, r1
	adds r6, r6, r5
	adds r1, r6, #0
	bl DecompressData_08008374
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
	bl sprintf
	b _08005606
	.align 2, 0
_080055F8: .4byte 0x0807ED68
_080055FC:
	ldr r1, _08005618 @ =0x0807ED70
	mov r0, sp
	adds r2, r4, #0
	bl sprintf
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
	bl sprintf
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
	bl LZ77UnCompWram
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
	bl ProcSleep_08002B98
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
	bl m4aSongNumStart
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
	bl ProcSleep_08002B98
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
	bl ProcSleep_08002B98
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
	bl ProcSleep_08002B98
	adds r5, r4, #0
	ldr r4, _08005B64 @ =0x02000003
	b _08005B6E
	.align 2, 0
_08005B5C: .4byte 0x0203A100
_08005B60: .4byte 0x030024B0
_08005B64: .4byte 0x02000003
_08005B68:
	movs r0, #1
	bl ProcSleep_08002B98
_08005B6E:
	ldr r0, [r5]
	ands r0, r4
	cmp r0, #0
	beq _08005B68
	movs r0, #0xd3
	bl m4aSongNumStart
	bl sub_08006688
	movs r0, #1
	bl ProcSleep_08002B98
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
	bl ProcSleep_08002B98
	ldrh r0, [r5]
	ands r0, r4
	cmp r0, #0
	beq _08005B94
	movs r0, #1
	bl ProcSleep_08002B98
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
	bl memcpy
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
	bl ProcSleep_08002B98
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
	bl m4aSongNumStart
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
	bl m4aSongNumStart
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
	bl m4aSongNumStart
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
	bl ProcSleep_08002B98
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
	bl m4aSongNumStart
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
	bl __udivsi3
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
	bl __udivsi3
	adds r0, #0x30
	strb r0, [r4]
	movs r0, #1
	add r8, r0
_08005F9E:
	adds r0, r5, #0
	adds r1, r6, #0
	bl __umodsi3
	adds r5, r0, #0
	adds r0, r6, #0
	movs r1, #0xa
	bl __udivsi3
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
	bl ProcSleep_08002B98
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
	bl ProcSleep_08002B98
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
	bl m4aSongNumStart
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
