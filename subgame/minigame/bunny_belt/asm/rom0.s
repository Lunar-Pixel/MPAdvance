	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .text
	.ARM
	.syntax unified

	.ALIGN 2, 0

	arm_func_start _start
_start: @ 0x02000000
	b _02000004
_02000004:
	mov r0, #0x12
	msr cpsr_fc, r0
	ldr sp, _02000038 @ =0x03007FA0
	mov r0, #0x1f
	msr cpsr_fc, r0
	ldr sp, _02000034 @ =0x03007F00
	ldr r1, _0200003C @ =0x03007FFC
	ldr r0, _02000040 @ =sub_02000048
	str r0, [r1]
	ldr r1, _02000044 @ =sub_0200392C
	bx r1

	arm_func_start sub_02000030
sub_02000030: @ 0x02000030
	b _02000004
	.align 2, 0
_02000034: .4byte 0x03007F00
_02000038: .4byte 0x03007FA0
_0200003C: .4byte 0x03007FFC
_02000040: .4byte sub_02000048
_02000044: .4byte sub_0200392C

	arm_func_start sub_02000048
sub_02000048: @ 0x02000048
	mov r3, #0x4000000
	add r3, r3, #0x200
	ldr r2, [r3]
	ldrh r1, [r3, #8]
	mrs r0, spsr
	push {r0, r1, r2, r3, lr}
	mov r0, #1
	strh r0, [r3, #8]
	and r1, r2, r2, lsr #16
	mov ip, #0
	ands r0, r1, #0xc0
	bne _02000118
	add ip, ip, #4
	ands r0, r1, #1
	bne _02000118
	add ip, ip, #4
	ands r0, r1, #4
	bne _02000118
	add ip, ip, #4
	ands r0, r1, #2
	bne _02000118
	add ip, ip, #4
	ands r0, r1, #0x100
	bne _02000118
	add ip, ip, #4
	ands r0, r1, #0x200
	bne _02000118
	add ip, ip, #4
	ands r0, r1, #0x400
	bne _02000118
	add ip, ip, #4
	ands r0, r1, #0x800
	bne _02000118
	add ip, ip, #4
	ands r0, r1, #0x1000
	bne _02000118
	add ip, ip, #4
	ands r0, r1, #8
	bne _02000118
	add ip, ip, #4
	ands r0, r1, #0x10
	bne _02000118
	add ip, ip, #4
	ands r0, r1, #0x20
	bne _02000118
	add ip, ip, #4
	ands r0, r1, #0x40
	bne _02000118
	add ip, ip, #4
	ands r0, r1, #0x2000
	strbne r0, [r3, #-0x17c]
_02000114:
	bne _02000114
_02000118:
	strh r0, [r3, #2]
	mov r1, #0x20c0
	bic r2, r2, r0
	and r1, r1, r2
	strh r1, [r3]
	mrs r3, apsr
	bic r3, r3, #0xdf
	orr r3, r3, #0x1f
	msr cpsr_fc, r3
	ldr r1, _0200017C @ =0x03006040
	add r1, r1, ip
	ldr r0, [r1]
	stmdb sp!, {lr}
	add lr, pc, #0x0 @ =sub_02000154
	bx r0

	arm_func_start sub_02000154
sub_02000154: @ 0x02000154
	ldm sp!, {lr}
	mrs r3, apsr
	bic r3, r3, #0xdf
	orr r3, r3, #0x92
	msr cpsr_fc, r3
	pop {r0, r1, r2, r3, lr}
	strh r2, [r3]
	strh r1, [r3, #8]
	msr spsr_fc, r0
	bx lr
	.align 2, 0
_0200017C: .4byte 0x03006040

	arm_func_start sub_02000180
sub_02000180: @ 0x02000180
	push {r8, sb, sl, fp}
	mov ip, #0x4000000
	ldr fp, _020001BC @ =0x0202E880
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
_020001BC: .4byte 0x0202E880

	thumb_func_start sub_020001C0
sub_020001C0: @ 0x020001C0
	push {lr}
	bl sub_0200392C
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_020001CC
sub_020001CC: @ 0x020001CC
	push {lr}
	ldr r0, _020001E8 @ =0x020285D0
	adds r1, r0, #0
	adds r1, #0x4c
	ldr r0, [r0, #0x4c]
	cmp r0, #0
	beq _020001E4
	ldr r0, [r1, #4]
	cmp r0, #0
	beq _020001E4
	bl sub_02005CCC
_020001E4:
	pop {r0}
	bx r0
	.align 2, 0
_020001E8: .4byte 0x020285D0

	thumb_func_start sub_020001EC
sub_020001EC: @ 0x020001EC
	push {r4, r5, r6, lr}
	movs r4, #0
	ldr r5, _0200020C @ =0x02028060
	ldr r6, _02000210 @ =0x000001FF
_020001F4:
	adds r0, r4, #0
	bl sub_02004380
	strh r0, [r5]
	adds r5, #2
	adds r4, #1
	cmp r4, r6
	ble _020001F4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0200020C: .4byte 0x02028060
_02000210: .4byte 0x000001FF

	thumb_func_start sub_02000214
sub_02000214: @ 0x02000214
	push {lr}
	movs r1, #0x80
	lsls r1, r1, #2
	ldr r2, _02000228 @ =0x00007FFF
	movs r0, #0
	bl sub_020043DC
	pop {r0}
	bx r0
	.align 2, 0
_02000228: .4byte 0x00007FFF

	thumb_func_start sub_0200022C
sub_0200022C: @ 0x0200022C
	push {r4, r5, r6, lr}
	movs r4, #0
	ldr r5, _0200024C @ =0x02028060
	ldr r6, _02000250 @ =0x000001FF
_02000234:
	ldrh r1, [r5]
	adds r0, r4, #0
	bl sub_02004390
	adds r5, #2
	adds r4, #1
	cmp r4, r6
	ble _02000234
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0200024C: .4byte 0x02028060
_02000250: .4byte 0x000001FF

	thumb_func_start sub_02000254
sub_02000254: @ 0x02000254
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r7, r1, #0
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	bl sub_02008764
	cmp r6, #0
	beq _0200026E
	movs r0, #0x66
	bl sub_020087C4
	b _02000274
_0200026E:
	movs r0, #0x64
	bl sub_020087C4
_02000274:
	ldr r4, _020002C0 @ =0x020285D0
	movs r5, #1
	str r5, [r4]
	strh r6, [r4, #0x20]
	str r7, [r4, #0x1c]
	movs r1, #0x12
	ldrsh r0, [r4, r1]
	lsls r0, r0, #5
	ldr r1, [r4, #4]
	adds r2, r7, #0
	adds r2, #0x13
	str r5, [sp]
	movs r3, #0
	bl sub_02006D58
	movs r1, #0x16
	ldrsh r0, [r4, r1]
	lsls r0, r0, #5
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r1, [r4, #4]
	str r5, [sp]
	movs r2, #0x1a
	movs r3, #0
	bl sub_02006D58
	movs r0, #0
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl sub_0200054C
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_020002C0: .4byte 0x020285D0

	thumb_func_start sub_020002C4
sub_020002C4: @ 0x020002C4
	ldr r0, _020002CC @ =0x020285D0
	movs r1, #0x24
	ldrsh r0, [r0, r1]
	bx lr
	.align 2, 0
_020002CC: .4byte 0x020285D0

	thumb_func_start sub_020002D0
sub_020002D0: @ 0x020002D0
	push {lr}
	bl sub_020002C4
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #1
	beq _020002F4
	cmp r1, #1
	bgt _020002EA
	cmp r1, #0
	beq _020002F0
	b _020002FA
_020002EA:
	cmp r1, #2
	beq _020002F8
	b _020002FA
_020002F0:
	movs r0, #0
	b _020002FA
_020002F4:
	movs r0, #1
	b _020002FA
_020002F8:
	movs r0, #2
_020002FA:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_02000300
sub_02000300: @ 0x02000300
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov ip, r0
	ldr r0, [sp, #0x18]
	ldr r4, [sp, #0x24]
	ldr r5, [sp, #0x28]
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	ldr r2, _02000380 @ =0x020285D0
	movs r1, #1
	rsbs r1, r1, #0
	cmp ip, r1
	beq _02000336
	mov r0, ip
	str r0, [r2, #8]
_02000336:
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	cmp r0, r1
	beq _02000340
	strh r6, [r2, #0xc]
_02000340:
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	cmp r0, r1
	beq _0200034A
	strh r7, [r2, #0xe]
_0200034A:
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	cmp r0, r1
	beq _02000354
	strh r3, [r2, #0x10]
_02000354:
	mov r3, r8
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	cmp r0, r1
	beq _02000360
	strh r3, [r2, #0x12]
_02000360:
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	cmp r0, r1
	beq _0200036A
	strh r4, [r2, #0x14]
_0200036A:
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	cmp r0, r1
	beq _02000374
	strh r5, [r2, #0x16]
_02000374:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_02000380: .4byte 0x020285D0

	thumb_func_start sub_02000384
sub_02000384: @ 0x02000384
	push {lr}
	sub sp, #4
	ldr r2, _0200039C @ =0x020285D0
	lsls r0, r0, #0x18
	asrs r3, r0, #0x18
	cmp r3, #1
	beq _020003BE
	cmp r3, #1
	bgt _020003A0
	cmp r3, #0
	beq _020003AA
	b _0200040E
	.align 2, 0
_0200039C: .4byte 0x020285D0
_020003A0:
	cmp r3, #2
	beq _020003D8
	cmp r3, #3
	beq _020003F4
	b _0200040E
_020003AA:
	movs r0, #0xc
	ldrsh r1, [r2, r0]
	lsls r1, r1, #5
	ldr r0, [r2, #8]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	movs r2, #1
	str r2, [sp]
	movs r2, #0xc
	b _020003D0
_020003BE:
	movs r0, #0x10
	ldrsh r1, [r2, r0]
	lsls r1, r1, #5
	ldr r0, [r2, #8]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	ldr r2, [r2, #0x1c]
	adds r2, #0x11
	str r3, [sp]
_020003D0:
	movs r3, #1
	bl sub_02006C14
	b _0200040E
_020003D8:
	movs r0, #0x10
	ldrsh r1, [r2, r0]
	adds r1, #8
	lsls r1, r1, #5
	ldr r0, [r2, #8]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	ldr r2, [r2, #0x1c]
	adds r2, #0x12
	movs r3, #1
	str r3, [sp]
	bl sub_02006C14
	b _0200040E
_020003F4:
	movs r1, #0x14
	ldrsh r0, [r2, r1]
	lsls r0, r0, #5
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	ldr r1, [r2, #4]
	movs r2, #1
	str r2, [sp]
	movs r2, #0x19
	movs r3, #1
	bl sub_02006C14
_0200040E:
	add sp, #4
	pop {r0}
	bx r0

	thumb_func_start sub_02000414
sub_02000414: @ 0x02000414
	ldr r2, _02000438 @ =0x020285D0
	lsls r1, r0, #3
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, #0x28
	adds r1, r1, r2
	movs r0, #0
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [r1, #8]
	str r0, [r1, #0xc]
	str r0, [r1, #0x10]
	str r0, [r1, #0x14]
	strh r0, [r1, #0x18]
	strh r0, [r1, #0x1a]
	str r0, [r1, #0x1c]
	str r0, [r1, #0x20]
	bx lr
	.align 2, 0
_02000438: .4byte 0x020285D0

	thumb_func_start sub_0200043C
sub_0200043C: @ 0x0200043C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _02000468 @ =0x020285D0
	lsls r1, r4, #3
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, #0x28
	adds r1, r1, r0
	ldr r0, [r1]
	cmp r0, #0
	beq _02000462
	ldr r0, [r1, #4]
	cmp r0, #0
	beq _0200045C
	bl sub_02005A88
_0200045C:
	adds r0, r4, #0
	bl sub_02000414
_02000462:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_02000468: .4byte 0x020285D0

	thumb_func_start sub_0200046C
sub_0200046C: @ 0x0200046C
	push {r4, lr}
	ldr r1, _02000490 @ =0x020285D0
	movs r0, #2
	str r0, [r1]
	movs r4, #0
_02000476:
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl sub_0200052C
	adds r4, #1
	cmp r4, #0
	ble _02000476
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_02000490: .4byte 0x020285D0

	thumb_func_start sub_02000494
sub_02000494: @ 0x02000494
	push {r4, lr}
	ldr r1, _020004B8 @ =0x020285D0
	movs r0, #3
	str r0, [r1]
	movs r4, #0
_0200049E:
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl sub_020004BC
	adds r4, #1
	cmp r4, #1
	ble _0200049E
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_020004B8: .4byte 0x020285D0

	thumb_func_start sub_020004BC
sub_020004BC: @ 0x020004BC
	push {r4, r5, lr}
	sub sp, #4
	adds r2, r0, #0
	ldr r5, _02000528 @ =0x020285D0
	lsls r0, r2, #3
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, #0x28
	adds r4, r0, r5
	cmp r1, #1
	bne _0200051E
	movs r0, #3
	str r0, [r4]
	cmp r2, #1
	bne _0200051E
	ldr r1, [r5, #4]
	movs r0, #0
	str r0, [sp]
	movs r2, #0x1b
	movs r3, #0x1c
	bl sub_02004D44
	str r0, [r4, #4]
	movs r2, #0x14
	ldrsh r1, [r5, r2]
	bl sub_02005790
	ldr r0, [r4, #4]
	ldrb r1, [r5, #0x16]
	bl sub_020057A0
	ldr r0, [r4, #4]
	movs r1, #0
	bl sub_020057B0
	movs r0, #0xc0
	lsls r0, r0, #7
	str r0, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r4, #0xc]
	ldr r0, [r4, #4]
	movs r1, #0xd4
	lsls r1, r1, #0xe
	str r1, [r0, #8]
	movs r1, #1
	rsbs r1, r1, #0
	bl sub_020058E0
_0200051E:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_02000528: .4byte 0x020285D0

	thumb_func_start sub_0200052C
sub_0200052C: @ 0x0200052C
	push {lr}
	ldr r3, _02000548 @ =0x020285D0
	lsls r2, r0, #3
	adds r2, r2, r0
	lsls r2, r2, #2
	adds r2, #0x28
	adds r2, r2, r3
	cmp r1, #1
	bne _02000542
	movs r0, #2
	str r0, [r2]
_02000542:
	pop {r0}
	bx r0
	.align 2, 0
_02000548: .4byte 0x020285D0

	thumb_func_start sub_0200054C
sub_0200054C: @ 0x0200054C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x14
	adds r2, r1, #0
	mov r8, r3
	ldr r7, _020005B0 @ =0x020285D0
	lsls r1, r0, #3
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, #0x28
	adds r5, r1, r7
	cmp r2, #1
	bne _02000594
	movs r4, #0
	strh r4, [r7, #0x22]
	strh r2, [r7, #0x24]
	str r2, [r5]
	movs r0, #0
	bl sub_02000384
	str r4, [r5, #8]
	movs r0, #0xa0
	lsls r0, r0, #7
	str r0, [r5, #0xc]
	movs r0, #0x64
	str r0, [r5, #0x20]
	movs r0, #0x80
	lsls r0, r0, #7
	str r0, [r5, #0x1c]
	movs r0, #0
	movs r1, #0
	movs r2, #0x50
	bl sub_02003FB8
	strh r4, [r5, #0x18]
_02000594:
	mov r0, r8
	cmp r0, #1
	beq _0200059C
	b _0200071E
_0200059C:
	movs r1, #0x1a
	ldrsh r6, [r5, r1]
	cmp r6, #1
	beq _0200064A
	cmp r6, #1
	bgt _020005B4
	cmp r6, #0
	beq _020005C2
	b _0200070C
	.align 2, 0
_020005B0: .4byte 0x020285D0
_020005B4:
	cmp r6, #2
	bne _020005BA
	b _020006D8
_020005BA:
	cmp r6, #3
	bne _020005C0
	b _020006FE
_020005C0:
	b _0200070C
_020005C2:
	ldrh r0, [r5, #0x18]
	adds r0, #1
	strh r0, [r5, #0x18]
	movs r2, #0x18
	ldrsh r0, [r5, r2]
	cmp r0, #5
	beq _020005EC
	cmp r0, #5
	bgt _020005DA
	cmp r0, #3
	beq _020005E4
	b _0200070C
_020005DA:
	cmp r0, #7
	beq _020005F4
	cmp r0, #0xa
	beq _020005FC
	b _0200070C
_020005E4:
	movs r0, #1
	bl sub_02000384
	b _0200070C
_020005EC:
	movs r0, #2
	bl sub_02000384
	b _0200070C
_020005F4:
	movs r0, #3
	bl sub_02000384
	b _0200070C
_020005FC:
	ldr r1, [r7, #4]
	ldrh r3, [r7, #0xc]
	movs r2, #0xe
	ldrsh r0, [r7, r2]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x18
	str r0, [sp]
	movs r4, #1
	rsbs r4, r4, #0
	str r4, [sp, #4]
	str r6, [sp, #8]
	mov r0, r8
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	movs r0, #0x98
	movs r2, #0x10
	bl sub_02006E68
	ldr r1, [r7, #4]
	ldr r2, [r7, #0x1c]
	adds r2, #0x14
	ldrh r3, [r7, #0x10]
	mov ip, r3
	movs r3, #0x12
	ldrsh r0, [r7, r3]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x18
	str r0, [sp]
	str r4, [sp, #4]
	str r6, [sp, #8]
	mov r0, r8
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	movs r0, #0xda
	mov r3, ip
	bl sub_02006E68
	strh r6, [r5, #0x18]
	b _020006F6
_0200064A:
	ldrh r0, [r5, #0x1c]
	bl sub_02007EA8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [r5, #0x20]
	muls r0, r1, r0
	str r0, [r5, #8]
	ldrh r0, [r5, #0x1c]
	bl sub_02007E94
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [r5, #0x20]
	muls r0, r1, r0
	str r0, [r5, #0xc]
	ldr r1, [r5, #0x1c]
	ldr r2, _020006C8 @ =0xFFFFFC00
	adds r0, r1, r2
	str r0, [r5, #0x1c]
	cmp r0, #0
	bge _0200067E
	movs r3, #0xfc
	lsls r3, r3, #8
	adds r0, r1, r3
	str r0, [r5, #0x1c]
_0200067E:
	ldr r0, [r5, #0x20]
	subs r0, #1
	str r0, [r5, #0x20]
	cmp r0, #0
	bge _0200068C
	movs r0, #0
	str r0, [r5, #0x20]
_0200068C:
	ldr r0, [r5, #8]
	ldr r2, _020006CC @ =0x000002FF
	adds r0, r0, r2
	ldr r1, _020006D0 @ =0x000005FE
	cmp r0, r1
	bhi _0200070C
	ldr r1, [r5, #0xc]
	ldr r0, _020006D4 @ =0xFFFFFD00
	cmp r1, r0
	ble _0200070C
	cmp r1, r2
	bgt _0200070C
	ldr r0, [r5, #0x20]
	cmp r0, #0
	bne _0200070C
	str r0, [r5, #8]
	str r0, [r5, #0xc]
	bl sub_020001EC
	bl sub_02000214
	movs r0, #1
	bl sub_02004AE8
	movs r0, #2
	bl sub_02007EDC
	movs r0, #1
	b _020006F2
	.align 2, 0
_020006C8: .4byte 0xFFFFFC00
_020006CC: .4byte 0x000002FF
_020006D0: .4byte 0x000005FE
_020006D4: .4byte 0xFFFFFD00
_020006D8:
	bl sub_0200800C
	cmp r0, #0
	bne _0200070C
	bl sub_0200022C
	movs r0, #0x1e
	bl sub_02004AE8
	movs r0, #2
	bl sub_02007EDC
	movs r0, #0
_020006F2:
	bl sub_02004740
_020006F6:
	ldrh r0, [r5, #0x1a]
	adds r0, #1
	strh r0, [r5, #0x1a]
	b _0200070C
_020006FE:
	bl sub_0200800C
	cmp r0, #0
	bne _0200070C
	strh r0, [r5, #0x1a]
	mov r0, r8
	strh r0, [r7, #0x22]
_0200070C:
	ldr r1, [r5, #8]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	ldr r2, [r5, #0xc]
	lsls r2, r2, #8
	asrs r2, r2, #0x10
	movs r0, #0
	bl sub_02003FB8
_0200071E:
	add sp, #0x14
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0200072C
sub_0200072C: @ 0x0200072C
	push {r4, r5, lr}
	ldr r4, _02000748 @ =0x020285D0
	ldr r1, [r4]
	cmp r1, #0
	bne _02000738
	b _02000844
_02000738:
	cmp r1, #2
	beq _02000768
	cmp r1, #2
	bgt _0200074C
	cmp r1, #1
	beq _02000752
	b _020007DC
	.align 2, 0
_02000748: .4byte 0x020285D0
_0200074C:
	cmp r1, #3
	beq _020007A8
	b _020007DC
_02000752:
	movs r1, #0x22
	ldrsh r0, [r4, r1]
	cmp r0, #0
	beq _020007DC
	movs r0, #0
	strh r0, [r4, #0x22]
	bl sub_0200043C
	bl sub_0200046C
	b _020007DC
_02000768:
	movs r0, #0x20
	ldrsh r2, [r4, r0]
	cmp r2, #0
	beq _0200077A
	movs r0, #0
	str r0, [r4, #0x18]
	bl sub_02000494
	b _020007DC
_0200077A:
	ldr r0, [r4, #0x18]
	cmp r0, #0xb4
	ble _020007D8
	str r2, [r4, #0x18]
	strh r1, [r4, #0x24]
	movs r0, #4
	str r0, [r4]
	ldr r1, _020007A4 @ =0x0000F3FF
	movs r0, #0
	movs r2, #1
	bl sub_02004060
	movs r5, #0
_02000794:
	adds r0, r5, #0
	bl sub_0200043C
	adds r5, #1
	cmp r5, #2
	ble _02000794
	b _020007DC
	.align 2, 0
_020007A4: .4byte 0x0000F3FF
_020007A8:
	ldr r0, [r4, #0x18]
	cmp r0, #0x78
	ble _020007D8
	movs r0, #0
	str r0, [r4, #0x18]
	movs r0, #2
	strh r0, [r4, #0x24]
	movs r0, #4
	str r0, [r4]
	ldr r1, _020007D4 @ =0x0000F3FF
	movs r0, #0
	movs r2, #1
	bl sub_02004060
	movs r5, #0
_020007C6:
	adds r0, r5, #0
	bl sub_0200043C
	adds r5, #1
	cmp r5, #2
	ble _020007C6
	b _020007DC
	.align 2, 0
_020007D4: .4byte 0x0000F3FF
_020007D8:
	adds r0, #1
	str r0, [r4, #0x18]
_020007DC:
	movs r5, #0
	adds r4, #0x28
_020007E0:
	ldr r0, [r4]
	cmp r0, #0
	beq _0200083C
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _020007F0
	bl sub_02004D7C
_020007F0:
	ldr r0, [r4]
	cmp r0, #2
	beq _02000814
	cmp r0, #2
	bgt _02000800
	cmp r0, #1
	beq _02000806
	b _0200082E
_02000800:
	cmp r0, #3
	beq _02000822
	b _0200082E
_02000806:
	adds r0, r5, #0
	movs r1, #0
	movs r2, #1
	movs r3, #1
	bl sub_0200054C
	b _0200082E
_02000814:
	adds r0, r5, #0
	movs r1, #0
	movs r2, #1
	movs r3, #1
	bl sub_0200052C
	b _0200082E
_02000822:
	adds r0, r5, #0
	movs r1, #0
	movs r2, #1
	movs r3, #1
	bl sub_020004BC
_0200082E:
	ldr r1, [r4, #4]
	cmp r1, #0
	beq _0200083C
	ldr r0, [r4, #8]
	str r0, [r1]
	ldr r0, [r4, #0xc]
	str r0, [r1, #4]
_0200083C:
	adds r4, #0x24
	adds r5, #1
	cmp r5, #2
	ble _020007E0
_02000844:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0200084C
sub_0200084C: @ 0x0200084C
	push {lr}
	bl sub_0200669C
	ldr r1, _0200085C @ =sub_0200072C
	bl sub_0200660C
	pop {r0}
	bx r0
	.align 2, 0
_0200085C: .4byte sub_0200072C

	thumb_func_start sub_02000860
sub_02000860: @ 0x02000860
	push {r4, r5, lr}
	adds r5, r0, #0
	bl sub_02006574
	cmp r0, #0
	beq _02000880
	movs r4, #0
_0200086E:
	adds r0, r4, #0
	bl sub_0200043C
	adds r4, #1
	cmp r4, #2
	ble _0200086E
	adds r0, r5, #0
	bl sub_020064F0
_02000880:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_02000888
sub_02000888: @ 0x02000888
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	adds r7, r1, #0
	adds r6, r2, #0
	ldr r5, _020008F0 @ =0x020285D0
	movs r4, #0
_02000898:
	adds r0, r4, #0
	bl sub_02000414
	adds r4, #1
	cmp r4, #2
	ble _02000898
	movs r1, #0
	str r1, [r5]
	str r6, [r5, #4]
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [r5, #8]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r5, #0xc]
	movs r0, #0xd
	strh r0, [r5, #0xe]
	movs r0, #0xd8
	lsls r0, r0, #2
	strh r0, [r5, #0x10]
	movs r0, #0xc
	strh r0, [r5, #0x12]
	movs r0, #0xc6
	lsls r0, r0, #2
	strh r0, [r5, #0x14]
	movs r0, #0xf
	strh r0, [r5, #0x16]
	str r1, [r5, #0x18]
	str r1, [r5, #0x1c]
	strh r1, [r5, #0x20]
	strh r1, [r5, #0x22]
	strh r1, [r5, #0x24]
	ldr r1, _020008F4 @ =sub_0200084C
	lsls r2, r7, #0x10
	lsrs r2, r2, #0x10
	mov r0, r8
	bl sub_020063E4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_020008F0: .4byte 0x020285D0
_020008F4: .4byte sub_0200084C

	thumb_func_start sub_020008F8
sub_020008F8: @ 0x020008F8
	bx lr
	.align 2, 0

	thumb_func_start sub_020008FC
sub_020008FC: @ 0x020008FC
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	movs r0, #0x65
	bl sub_020087C4
	ldr r1, _02000938 @ =0x02028510
	movs r2, #1
	str r2, [r1]
	str r4, [r1, #0x18]
	movs r3, #0x12
	ldrsh r0, [r1, r3]
	lsls r0, r0, #5
	ldr r1, [r1, #4]
	adds r4, #0x17
	str r2, [sp]
	adds r2, r4, #0
	movs r3, #0
	bl sub_02006D58
	movs r0, #0
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl sub_02000AE0
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_02000938: .4byte 0x02028510

	thumb_func_start sub_0200093C
sub_0200093C: @ 0x0200093C
	ldr r0, _02000944 @ =0x02028510
	movs r1, #0x1e
	ldrsh r0, [r0, r1]
	bx lr
	.align 2, 0
_02000944: .4byte 0x02028510

	thumb_func_start sub_02000948
sub_02000948: @ 0x02000948
	push {lr}
	bl sub_0200093C
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #1
	beq _0200096C
	cmp r1, #1
	bgt _02000962
	cmp r1, #0
	beq _02000968
	b _02000972
_02000962:
	cmp r1, #2
	beq _02000970
	b _02000972
_02000968:
	movs r0, #0
	b _02000972
_0200096C:
	movs r0, #1
	b _02000972
_02000970:
	movs r0, #2
_02000972:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_02000978
sub_02000978: @ 0x02000978
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, [sp, #0x14]
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	ldr r2, _020009C8 @ =0x02028510
	movs r1, #1
	rsbs r1, r1, #0
	cmp r5, r1
	beq _0200099A
	str r5, [r2, #8]
_0200099A:
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	cmp r0, r1
	beq _020009A4
	strh r4, [r2, #0xc]
_020009A4:
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	cmp r0, r1
	beq _020009AE
	strh r6, [r2, #0xe]
_020009AE:
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	cmp r0, r1
	beq _020009B8
	strh r3, [r2, #0x10]
_020009B8:
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	cmp r0, r1
	beq _020009C2
	strh r7, [r2, #0x12]
_020009C2:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_020009C8: .4byte 0x02028510

	thumb_func_start sub_020009CC
sub_020009CC: @ 0x020009CC
	push {lr}
	sub sp, #4
	ldr r2, _020009E4 @ =0x02028510
	lsls r0, r0, #0x18
	asrs r3, r0, #0x18
	cmp r3, #1
	beq _02000A02
	cmp r3, #1
	bgt _020009E8
	cmp r3, #0
	beq _020009EE
	b _02000A36
	.align 2, 0
_020009E4: .4byte 0x02028510
_020009E8:
	cmp r3, #2
	beq _02000A1C
	b _02000A36
_020009EE:
	movs r0, #0xc
	ldrsh r1, [r2, r0]
	lsls r1, r1, #5
	ldr r0, [r2, #8]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	movs r2, #1
	str r2, [sp]
	movs r2, #0xc
	b _02000A14
_02000A02:
	movs r0, #0x10
	ldrsh r1, [r2, r0]
	lsls r1, r1, #5
	ldr r0, [r2, #8]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	ldr r2, [r2, #0x18]
	adds r2, #0x15
	str r3, [sp]
_02000A14:
	movs r3, #1
	bl sub_02006C14
	b _02000A36
_02000A1C:
	movs r0, #0x10
	ldrsh r1, [r2, r0]
	adds r1, #8
	lsls r1, r1, #5
	ldr r0, [r2, #8]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	ldr r2, [r2, #0x18]
	adds r2, #0x16
	movs r3, #1
	str r3, [sp]
	bl sub_02006C14
_02000A36:
	add sp, #4
	pop {r0}
	bx r0

	thumb_func_start sub_02000A3C
sub_02000A3C: @ 0x02000A3C
	ldr r1, _02000A5C @ =0x02028510
	lsls r0, r0, #5
	adds r0, #0x20
	adds r0, r0, r1
	movs r1, #0
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	str r1, [r0, #0x10]
	str r1, [r0, #0x14]
	strh r1, [r0, #0x18]
	strh r1, [r0, #0x1a]
	str r1, [r0, #0x1c]
	bx lr
	.align 2, 0
_02000A5C: .4byte 0x02028510

	thumb_func_start sub_02000A60
sub_02000A60: @ 0x02000A60
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _02000A88 @ =0x02028510
	lsls r1, r4, #5
	adds r1, #0x20
	adds r1, r1, r0
	ldr r0, [r1]
	cmp r0, #0
	beq _02000A82
	ldr r0, [r1, #4]
	cmp r0, #0
	beq _02000A7C
	bl sub_02005A88
_02000A7C:
	adds r0, r4, #0
	bl sub_02000A3C
_02000A82:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_02000A88: .4byte 0x02028510

	thumb_func_start sub_02000A8C
sub_02000A8C: @ 0x02000A8C
	push {lr}
	ldr r1, _02000AA4 @ =0x02028510
	movs r0, #2
	str r0, [r1]
	movs r0, #0
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl sub_02000AA8
	pop {r0}
	bx r0
	.align 2, 0
_02000AA4: .4byte 0x02028510

	thumb_func_start sub_02000AA8
sub_02000AA8: @ 0x02000AA8
	push {r4, r5, lr}
	ldr r4, _02000AD0 @ =0x02028510
	lsls r0, r0, #5
	adds r0, #0x20
	adds r2, r0, r4
	cmp r1, #1
	bne _02000ABA
	movs r0, #2
	str r0, [r2]
_02000ABA:
	cmp r3, #1
	bne _02000AD8
	ldrh r1, [r2, #0x18]
	movs r5, #0x18
	ldrsh r0, [r2, r5]
	cmp r0, #0xb3
	ble _02000AD4
	movs r0, #0
	strh r0, [r2, #0x18]
	strh r3, [r4, #0x1c]
	b _02000AD8
	.align 2, 0
_02000AD0: .4byte 0x02028510
_02000AD4:
	adds r0, r1, #1
	strh r0, [r2, #0x18]
_02000AD8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_02000AE0
sub_02000AE0: @ 0x02000AE0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x14
	adds r7, r3, #0
	ldr r6, _02000B2C @ =0x02028510
	lsls r0, r0, #5
	adds r0, #0x20
	adds r5, r0, r6
	cmp r1, #1
	bne _02000B18
	movs r4, #0
	strh r4, [r6, #0x1c]
	strh r1, [r6, #0x1e]
	str r1, [r5]
	movs r0, #0
	bl sub_020009CC
	str r4, [r5, #8]
	movs r0, #0xa0
	lsls r0, r0, #7
	str r0, [r5, #0xc]
	movs r0, #0
	movs r1, #0
	movs r2, #0x50
	bl sub_02003FB8
	strh r4, [r5, #0x18]
_02000B18:
	cmp r7, #1
	bne _02000C0A
	movs r1, #0x1a
	ldrsh r0, [r5, r1]
	mov r8, r0
	cmp r0, #0
	beq _02000B30
	cmp r0, #1
	beq _02000BB4
	b _02000C0A
	.align 2, 0
_02000B2C: .4byte 0x02028510
_02000B30:
	ldrh r0, [r5, #0x18]
	adds r0, #1
	strh r0, [r5, #0x18]
	movs r2, #0x18
	ldrsh r0, [r5, r2]
	cmp r0, #5
	beq _02000B56
	cmp r0, #5
	bgt _02000B48
	cmp r0, #3
	beq _02000B4E
	b _02000C0A
_02000B48:
	cmp r0, #0xa
	beq _02000B5E
	b _02000C0A
_02000B4E:
	movs r0, #1
	bl sub_020009CC
	b _02000C0A
_02000B56:
	movs r0, #2
	bl sub_020009CC
	b _02000C0A
_02000B5E:
	ldr r1, [r6, #4]
	ldrh r3, [r6, #0xc]
	movs r2, #0xe
	ldrsh r0, [r6, r2]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x18
	str r0, [sp]
	movs r4, #1
	rsbs r4, r4, #0
	str r4, [sp, #4]
	mov r0, r8
	str r0, [sp, #8]
	str r7, [sp, #0xc]
	str r7, [sp, #0x10]
	movs r0, #0x98
	movs r2, #0x10
	bl sub_02006E68
	ldr r1, [r6, #4]
	ldr r2, [r6, #0x18]
	adds r2, #0x18
	ldrh r3, [r6, #0x10]
	mov ip, r3
	movs r3, #0x12
	ldrsh r0, [r6, r3]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x18
	str r0, [sp]
	str r4, [sp, #4]
	mov r0, r8
	str r0, [sp, #8]
	str r7, [sp, #0xc]
	str r7, [sp, #0x10]
	movs r0, #0xda
	mov r3, ip
	bl sub_02006E68
	mov r1, r8
	strh r1, [r5, #0x18]
	ldrh r0, [r5, #0x1a]
	adds r0, #1
	strh r0, [r5, #0x1a]
	b _02000C0A
_02000BB4:
	ldrh r0, [r5, #0x1c]
	bl sub_02007E94
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #1
	str r1, [r5, #8]
	ldr r0, [r5, #0x1c]
	bl sub_0200A354
	ldr r3, _02000BEC @ =0x9999999A
	ldr r2, _02000BE8 @ =0x40999999
	bl sub_02009BC8
	bl sub_0200A3D0
	str r0, [r5, #0x1c]
	ldr r0, [r5, #0xc]
	cmp r0, #0
	ble _02000BF4
	ldr r2, _02000BF0 @ =0xFFFFFF00
	adds r0, r0, r2
	str r0, [r5, #0xc]
	b _02000BF8
	.align 2, 0
_02000BE8: .4byte 0x40999999
_02000BEC: .4byte 0x9999999A
_02000BF0: .4byte 0xFFFFFF00
_02000BF4:
	mov r3, r8
	strh r3, [r6, #0x1c]
_02000BF8:
	ldr r1, [r5, #8]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	ldr r2, [r5, #0xc]
	lsls r2, r2, #8
	asrs r2, r2, #0x10
	movs r0, #0
	bl sub_02003FB8
_02000C0A:
	add sp, #0x14
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_02000C18
sub_02000C18: @ 0x02000C18
	push {r4, r5, lr}
	ldr r4, _02000C44 @ =0x02028510
	ldr r1, [r4]
	cmp r1, #0
	beq _02000CC8
	cmp r1, #2
	beq _02000C48
	cmp r1, #2
	bgt _02000C72
	cmp r1, #1
	bne _02000C72
	movs r1, #0x1c
	ldrsh r0, [r4, r1]
	cmp r0, #0
	beq _02000C72
	movs r0, #0
	strh r0, [r4, #0x1c]
	bl sub_02000A60
	bl sub_02000A8C
	b _02000C72
	.align 2, 0
_02000C44: .4byte 0x02028510
_02000C48:
	movs r2, #0x1c
	ldrsh r0, [r4, r2]
	cmp r0, #0
	beq _02000C72
	movs r0, #0
	strh r0, [r4, #0x1c]
	strh r1, [r4, #0x1e]
	movs r0, #3
	str r0, [r4]
	ldr r1, _02000C94 @ =0x0000F3FF
	movs r0, #0
	movs r2, #1
	bl sub_02004060
	movs r5, #0
_02000C66:
	adds r0, r5, #0
	bl sub_02000A60
	adds r5, #1
	cmp r5, #4
	ble _02000C66
_02000C72:
	movs r5, #0
	adds r4, #0x20
_02000C76:
	ldr r0, [r4]
	cmp r0, #0
	beq _02000CC0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _02000C86
	bl sub_02004D7C
_02000C86:
	ldr r0, [r4]
	cmp r0, #1
	beq _02000C98
	cmp r0, #2
	beq _02000CA6
	b _02000CB2
	.align 2, 0
_02000C94: .4byte 0x0000F3FF
_02000C98:
	adds r0, r5, #0
	movs r1, #0
	movs r2, #1
	movs r3, #1
	bl sub_02000AE0
	b _02000CB2
_02000CA6:
	adds r0, r5, #0
	movs r1, #0
	movs r2, #1
	movs r3, #1
	bl sub_02000AA8
_02000CB2:
	ldr r1, [r4, #4]
	cmp r1, #0
	beq _02000CC0
	ldr r0, [r4, #8]
	str r0, [r1]
	ldr r0, [r4, #0xc]
	str r0, [r1, #4]
_02000CC0:
	adds r4, #0x20
	adds r5, #1
	cmp r5, #4
	ble _02000C76
_02000CC8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_02000CD0
sub_02000CD0: @ 0x02000CD0
	push {lr}
	bl sub_0200669C
	ldr r1, _02000CE0 @ =sub_02000C18
	bl sub_0200660C
	pop {r0}
	bx r0
	.align 2, 0
_02000CE0: .4byte sub_02000C18

	thumb_func_start sub_02000CE4
sub_02000CE4: @ 0x02000CE4
	push {r4, r5, lr}
	adds r5, r0, #0
	bl sub_02006574
	cmp r0, #0
	beq _02000D04
	movs r4, #0
_02000CF2:
	adds r0, r4, #0
	bl sub_02000A60
	adds r4, #1
	cmp r4, #4
	ble _02000CF2
	adds r0, r5, #0
	bl sub_020064F0
_02000D04:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_02000D0C
sub_02000D0C: @ 0x02000D0C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	adds r7, r1, #0
	adds r6, r2, #0
	ldr r5, _02000D68 @ =0x02028510
	movs r4, #0
_02000D1C:
	adds r0, r4, #0
	bl sub_02000A3C
	adds r4, #1
	cmp r4, #4
	ble _02000D1C
	movs r1, #0
	str r1, [r5]
	str r6, [r5, #4]
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [r5, #8]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r5, #0xc]
	movs r0, #0xd
	strh r0, [r5, #0xe]
	movs r0, #0xd8
	lsls r0, r0, #2
	strh r0, [r5, #0x10]
	movs r0, #0xc
	strh r0, [r5, #0x12]
	str r1, [r5, #0x14]
	str r1, [r5, #0x18]
	strh r1, [r5, #0x1c]
	strh r1, [r5, #0x1e]
	ldr r1, _02000D6C @ =sub_02000CD0
	lsls r2, r7, #0x10
	lsrs r2, r2, #0x10
	mov r0, r8
	bl sub_020063E4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_02000D68: .4byte 0x02028510
_02000D6C: .4byte sub_02000CD0

	thumb_func_start sub_02000D70
sub_02000D70: @ 0x02000D70
	push {r4, lr}
	ldr r4, _02000DA4 @ =0x02028010
	adds r1, r4, #0
	adds r1, #0x34
	ldr r0, [r4, #0x34]
	cmp r0, #0
	beq _02000D88
	ldr r0, [r1, #4]
	cmp r0, #0
	beq _02000D88
	bl sub_02005CCC
_02000D88:
	adds r1, r4, #0
	adds r1, #0x18
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _02000D9C
	ldr r0, [r1, #4]
	cmp r0, #0
	beq _02000D9C
	bl sub_02005CCC
_02000D9C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_02000DA4: .4byte 0x02028010

	thumb_func_start sub_02000DA8
sub_02000DA8: @ 0x02000DA8
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	ldr r1, _02000DE0 @ =0x02028010
	ldr r0, [r1]
	cmp r0, #0
	beq _02000E02
	lsls r0, r2, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _02000DE4
	movs r0, #1
	strh r0, [r1, #0x14]
	adds r4, r1, #0
	adds r4, #0x18
	movs r5, #1
_02000DC8:
	ldr r0, [r4]
	cmp r0, #0
	beq _02000DD6
	ldr r0, [r4, #4]
	movs r1, #1
	bl sub_02005958
_02000DD6:
	adds r4, #0x1c
	subs r5, #1
	cmp r5, #0
	bge _02000DC8
	b _02000E02
	.align 2, 0
_02000DE0: .4byte 0x02028010
_02000DE4:
	strh r0, [r1, #0x14]
	adds r4, r1, #0
	adds r4, #0x18
	movs r5, #1
_02000DEC:
	ldr r0, [r4]
	cmp r0, #0
	beq _02000DFA
	ldr r0, [r4, #4]
	movs r1, #0
	bl sub_02005958
_02000DFA:
	adds r4, #0x1c
	subs r5, #1
	cmp r5, #0
	bge _02000DEC
_02000E02:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_02000E08
sub_02000E08: @ 0x02000E08
	push {r4, r5, lr}
	sub sp, #4
	ldr r4, _02000E64 @ =0x02028010
	movs r5, #1
	str r5, [r4]
	movs r1, #0xc
	ldrsh r0, [r4, r1]
	lsls r0, r0, #5
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	ldr r1, [r4, #4]
	str r5, [sp]
	movs r2, #0x1d
	movs r3, #1
	bl sub_02006C14
	movs r1, #0xe
	ldrsh r0, [r4, r1]
	lsls r0, r0, #5
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r1, [r4, #4]
	str r5, [sp]
	movs r2, #0x1e
	movs r3, #0
	bl sub_02006D58
	movs r0, #0
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl sub_02000F38
	movs r0, #1
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl sub_02000F38
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_02000E64: .4byte 0x02028010

	thumb_func_start sub_02000E68
sub_02000E68: @ 0x02000E68
	ldr r0, _02000E70 @ =0x02028010
	movs r1, #0x12
	ldrsh r0, [r0, r1]
	bx lr
	.align 2, 0
_02000E70: .4byte 0x02028010

	thumb_func_start sub_02000E74
sub_02000E74: @ 0x02000E74
	push {lr}
	bl sub_02000E68
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #1
	beq _02000E9C
	cmp r1, #1
	bgt _02000E8E
	cmp r1, #0
	beq _02000E98
	b _02000EA6
_02000E8E:
	cmp r1, #2
	beq _02000EA0
	cmp r1, #3
	beq _02000EA4
	b _02000EA6
_02000E98:
	movs r0, #0
	b _02000EA6
_02000E9C:
	movs r0, #1
	b _02000EA6
_02000EA0:
	movs r0, #2
	b _02000EA6
_02000EA4:
	movs r0, #0
_02000EA6:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_02000EAC
sub_02000EAC: @ 0x02000EAC
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [sp, #0xc]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r2, _02000EE0 @ =0x02028010
	movs r1, #1
	rsbs r1, r1, #0
	cmp r4, r1
	beq _02000EC6
	str r4, [r2, #8]
_02000EC6:
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	cmp r0, r1
	beq _02000ED0
	strh r3, [r2, #0xc]
_02000ED0:
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	cmp r0, r1
	beq _02000EDA
	strh r5, [r2, #0xe]
_02000EDA:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_02000EE0: .4byte 0x02028010

	thumb_func_start sub_02000EE4
sub_02000EE4: @ 0x02000EE4
	ldr r2, _02000F04 @ =0x02028010
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #2
	adds r1, #0x18
	adds r1, r1, r2
	movs r0, #0
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [r1, #8]
	str r0, [r1, #0xc]
	strh r0, [r1, #0x10]
	strh r0, [r1, #0x12]
	str r0, [r1, #0x14]
	str r0, [r1, #0x18]
	bx lr
	.align 2, 0
_02000F04: .4byte 0x02028010

	thumb_func_start sub_02000F08
sub_02000F08: @ 0x02000F08
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _02000F34 @ =0x02028010
	lsls r1, r4, #3
	subs r1, r1, r4
	lsls r1, r1, #2
	adds r1, #0x18
	adds r1, r1, r0
	ldr r0, [r1]
	cmp r0, #0
	beq _02000F2E
	ldr r0, [r1, #4]
	cmp r0, #0
	beq _02000F28
	bl sub_02005A88
_02000F28:
	adds r0, r4, #0
	bl sub_02000EE4
_02000F2E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_02000F34: .4byte 0x02028010

	thumb_func_start sub_02000F38
sub_02000F38: @ 0x02000F38
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r7, r0, #0
	mov sb, r3
	ldr r6, _02000FCC @ =0x02028010
	lsls r0, r7, #3
	subs r0, r0, r7
	lsls r0, r0, #2
	adds r0, #0x18
	adds r5, r0, r6
	cmp r1, #1
	bne _02001004
	movs r0, #0
	mov r8, r0
	mov r2, r8
	strh r2, [r6, #0x10]
	strh r1, [r6, #0x12]
	str r1, [r5]
	movs r0, #0xa0
	lsls r0, r0, #5
	str r0, [r5, #0x18]
	bl sub_02007EA8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r4, #0x64
	muls r0, r4, r0
	movs r1, #0xf0
	lsls r1, r1, #7
	adds r0, r0, r1
	str r0, [r5, #8]
	ldrh r0, [r5, #0x18]
	bl sub_02007E94
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r4, r0
	ldr r2, _02000FD0 @ =0xFFFFC400
	adds r0, r0, r2
	str r0, [r5, #0xc]
	cmp r7, #0
	bne _02000FD4
	ldr r1, [r6, #4]
	str r7, [sp]
	movs r0, #0
	movs r2, #0x1f
	movs r3, #0x20
	bl sub_02004D44
	str r0, [r5, #4]
	movs r2, #0xc
	ldrsh r1, [r6, r2]
	bl sub_02005790
	ldr r0, [r5, #4]
	ldrb r1, [r6, #0xe]
	bl sub_020057A0
	ldr r0, [r5, #4]
	movs r1, #1
	bl sub_02005758
	ldr r0, [r5, #4]
	movs r1, #1
	rsbs r1, r1, #0
	bl sub_020058E0
	ldr r1, [r5, #4]
	movs r0, #0x80
	lsls r0, r0, #0x11
	b _02001002
	.align 2, 0
_02000FCC: .4byte 0x02028010
_02000FD0: .4byte 0xFFFFC400
_02000FD4:
	ldr r1, [r6, #4]
	mov r0, r8
	str r0, [sp]
	movs r0, #0
	movs r2, #0x1f
	movs r3, #0x22
	bl sub_02004D44
	str r0, [r5, #4]
	movs r2, #0xc
	ldrsh r1, [r6, r2]
	bl sub_02005790
	ldr r0, [r5, #4]
	ldrb r1, [r6, #0xe]
	bl sub_020057A0
	ldr r0, [r5, #4]
	movs r1, #1
	bl sub_02005758
	ldr r1, [r5, #4]
	ldr r0, _02001020 @ =0x01010000
_02001002:
	str r0, [r1, #8]
_02001004:
	mov r0, sb
	cmp r0, #1
	beq _0200100C
	b _02001188
_0200100C:
	movs r1, #0x12
	ldrsh r0, [r5, r1]
	cmp r0, #5
	bls _02001016
	b _02001188
_02001016:
	lsls r0, r0, #2
	ldr r1, _02001024 @ =_02001028
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_02001020: .4byte 0x01010000
_02001024: .4byte _02001028
_02001028: @ jump table
	.4byte _02001040 @ case 0
	.4byte _0200108C @ case 1
	.4byte _02001092 @ case 2
	.4byte _020010FA @ case 3
	.4byte _0200113E @ case 4
	.4byte _02001146 @ case 5
_02001040:
	ldr r0, [r5, #0x18]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	str r0, [r5, #0x18]
	ldr r1, _02001084 @ =0x00003FFF
	cmp r0, r1
	ble _0200105C
	movs r0, #0x80
	lsls r0, r0, #7
	str r0, [r5, #0x18]
	ldrh r0, [r5, #0x12]
	adds r0, #1
	strh r0, [r5, #0x12]
_0200105C:
	ldrh r0, [r5, #0x18]
	bl sub_02007EA8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r4, #0x64
	muls r0, r4, r0
	movs r1, #0xf0
	lsls r1, r1, #7
	adds r0, r0, r1
	str r0, [r5, #8]
	ldrh r0, [r5, #0x18]
	bl sub_02007E94
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r4, r0
	ldr r2, _02001088 @ =0xFFFFC400
	adds r0, r0, r2
	b _02001186
	.align 2, 0
_02001084: .4byte 0x00003FFF
_02001088: .4byte 0xFFFFC400
_0200108C:
	movs r0, #0x14
	strh r0, [r5, #0x10]
	b _0200113E
_02001092:
	ldrh r1, [r5, #0x10]
	movs r2, #0x10
	ldrsh r0, [r5, r2]
	cmp r0, #0
	bgt _020010F4
	cmp r7, #1
	bne _020010CA
	ldr r0, [r5, #4]
	ldr r1, [r6, #4]
	movs r2, #0
	str r2, [sp]
	movs r2, #0x1f
	movs r3, #0x23
	bl sub_02004D44
	ldr r0, [r5, #4]
	movs r2, #0xc
	ldrsh r1, [r6, r2]
	bl sub_02005790
	ldr r0, [r5, #4]
	ldrb r1, [r6, #0xe]
	bl sub_020057A0
	ldr r0, [r5, #4]
	movs r1, #1
	bl sub_02005758
_020010CA:
	movs r0, #0
	strh r0, [r5, #0x10]
	movs r0, #2
	strh r0, [r6, #0x12]
	ldrh r0, [r5, #0x12]
	adds r0, #1
	strh r0, [r5, #0x12]
	ldr r0, _020010F0 @ =0x00000227
	bl sub_0200880C
	bl sub_02008130
	cmp r0, #0xa
	beq _02001188
	bl sub_0200813C
	bl sub_02008728
	b _02001188
	.align 2, 0
_020010F0: .4byte 0x00000227
_020010F4:
	subs r0, r1, #1
	strh r0, [r5, #0x10]
	b _02001188
_020010FA:
	ldrh r1, [r5, #0x10]
	movs r2, #0x10
	ldrsh r0, [r5, r2]
	cmp r0, #0x27
	ble _02001138
	cmp r7, #1
	bne _02001132
	ldr r0, [r5, #4]
	ldr r1, [r6, #4]
	movs r2, #0
	str r2, [sp]
	movs r2, #0x1f
	movs r3, #0x22
	bl sub_02004D44
	ldr r0, [r5, #4]
	movs r2, #0xc
	ldrsh r1, [r6, r2]
	bl sub_02005790
	ldr r0, [r5, #4]
	ldrb r1, [r6, #0xe]
	bl sub_020057A0
	ldr r0, [r5, #4]
	movs r1, #1
	bl sub_02005758
_02001132:
	movs r0, #0
	strh r0, [r5, #0x10]
	b _0200113E
_02001138:
	adds r0, r1, #1
	strh r0, [r5, #0x10]
	b _02001188
_0200113E:
	ldrh r0, [r5, #0x12]
	adds r0, #1
	strh r0, [r5, #0x12]
	b _02001188
_02001146:
	ldr r0, [r5, #0x18]
	movs r1, #0xc0
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r5, #0x18]
	ldr r1, _02001198 @ =0x00006BFF
	cmp r0, r1
	ble _02001160
	movs r0, #0xd8
	lsls r0, r0, #7
	str r0, [r5, #0x18]
	movs r0, #1
	strh r0, [r6, #0x10]
_02001160:
	ldrh r0, [r5, #0x18]
	bl sub_02007EA8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r4, #0x64
	muls r0, r4, r0
	movs r2, #0xf0
	lsls r2, r2, #7
	adds r0, r0, r2
	str r0, [r5, #8]
	ldrh r0, [r5, #0x18]
	bl sub_02007E94
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r4, r0
	ldr r1, _0200119C @ =0xFFFFC400
	adds r0, r0, r1
_02001186:
	str r0, [r5, #0xc]
_02001188:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_02001198: .4byte 0x00006BFF
_0200119C: .4byte 0xFFFFC400

	thumb_func_start sub_020011A0
sub_020011A0: @ 0x020011A0
	push {r4, r5, r6, lr}
	ldr r6, _020011BC @ =0x02028010
	movs r0, #0x14
	ldrsh r1, [r6, r0]
	cmp r1, #0
	bne _02001226
	ldr r0, [r6]
	cmp r0, #0
	beq _02001226
	cmp r0, #1
	beq _020011C0
	cmp r0, #2
	beq _020011D4
	b _020011EC
	.align 2, 0
_020011BC: .4byte 0x02028010
_020011C0:
	movs r2, #0x10
	ldrsh r0, [r6, r2]
	cmp r0, #0
	beq _020011EC
	movs r0, #3
	strh r0, [r6, #0x12]
	movs r0, #2
	str r0, [r6]
	strh r1, [r6, #0x10]
	b _020011EC
_020011D4:
	movs r4, #0
_020011D6:
	adds r0, r4, #0
	bl sub_02000F08
	adds r4, #1
	cmp r4, #1
	ble _020011D6
	movs r1, #0
	movs r0, #3
	strh r0, [r6, #0x12]
	str r1, [r6]
	b _02001226
_020011EC:
	movs r5, #0
	adds r4, r6, #0
	adds r4, #0x18
_020011F2:
	ldr r0, [r4]
	cmp r0, #0
	beq _0200121E
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0200121E
	bl sub_02004D7C
	ldr r0, [r4]
	cmp r0, #1
	bne _02001214
	adds r0, r5, #0
	movs r1, #0
	movs r2, #1
	movs r3, #1
	bl sub_02000F38
_02001214:
	ldr r0, [r4, #4]
	ldr r1, [r4, #8]
	str r1, [r0]
	ldr r1, [r4, #0xc]
	str r1, [r0, #4]
_0200121E:
	adds r4, #0x1c
	adds r5, #1
	cmp r5, #1
	ble _020011F2
_02001226:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_0200122C
sub_0200122C: @ 0x0200122C
	push {lr}
	bl sub_0200669C
	ldr r1, _0200123C @ =sub_020011A0
	bl sub_0200660C
	pop {r0}
	bx r0
	.align 2, 0
_0200123C: .4byte sub_020011A0

	thumb_func_start sub_02001240
sub_02001240: @ 0x02001240
	push {r4, r5, lr}
	adds r5, r0, #0
	bl sub_02006574
	cmp r0, #0
	beq _02001260
	movs r4, #0
_0200124E:
	adds r0, r4, #0
	bl sub_02000F08
	adds r4, #1
	cmp r4, #1
	ble _0200124E
	adds r0, r5, #0
	bl sub_020064F0
_02001260:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_02001268
sub_02001268: @ 0x02001268
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	adds r7, r1, #0
	adds r6, r2, #0
	ldr r5, _020012B8 @ =0x02028010
	movs r4, #0
_02001278:
	adds r0, r4, #0
	bl sub_02000EE4
	adds r4, #1
	cmp r4, #1
	ble _02001278
	movs r1, #0
	str r1, [r5]
	str r6, [r5, #4]
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [r5, #8]
	movs r0, #0xcc
	lsls r0, r0, #2
	strh r0, [r5, #0xc]
	movs r0, #0xf
	strh r0, [r5, #0xe]
	strh r1, [r5, #0x10]
	strh r1, [r5, #0x12]
	strh r1, [r5, #0x14]
	ldr r1, _020012BC @ =sub_0200122C
	lsls r2, r7, #0x10
	lsrs r2, r2, #0x10
	mov r0, r8
	bl sub_020063E4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_020012B8: .4byte 0x02028010
_020012BC: .4byte sub_0200122C

	thumb_func_start sub_020012C0
sub_020012C0: @ 0x020012C0
	bx lr
	.align 2, 0

	thumb_func_start sub_020012C4
sub_020012C4: @ 0x020012C4
	push {r4, lr}
	ldr r4, _020012F8 @ =0x02028460
	adds r1, r4, #0
	adds r1, #0x30
	ldr r0, [r4, #0x30]
	cmp r0, #0
	beq _020012DC
	ldr r0, [r1, #4]
	cmp r0, #0
	beq _020012DC
	bl sub_02005CCC
_020012DC:
	adds r1, r4, #0
	adds r1, #0x14
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _020012F0
	ldr r0, [r1, #4]
	cmp r0, #0
	beq _020012F0
	bl sub_02005CCC
_020012F0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_020012F8: .4byte 0x02028460

	thumb_func_start sub_020012FC
sub_020012FC: @ 0x020012FC
	push {lr}
	movs r0, #0xb4
	bl sub_020087A8
	movs r0, #0x8a
	lsls r0, r0, #2
	bl sub_0200880C
	ldr r1, _02001330 @ =0x02028460
	movs r0, #1
	str r0, [r1]
	movs r0, #0
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl sub_020013F8
	movs r0, #1
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl sub_020013F8
	pop {r0}
	bx r0
	.align 2, 0
_02001330: .4byte 0x02028460

	thumb_func_start sub_02001334
sub_02001334: @ 0x02001334
	ldr r0, _0200133C @ =0x02028460
	movs r1, #0x12
	ldrsh r0, [r0, r1]
	bx lr
	.align 2, 0
_0200133C: .4byte 0x02028460

	thumb_func_start sub_02001340
sub_02001340: @ 0x02001340
	push {lr}
	bl sub_02001334
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #1
	beq _02001364
	cmp r1, #1
	bgt _0200135A
	cmp r1, #0
	beq _02001360
	b _0200136A
_0200135A:
	cmp r1, #2
	beq _02001368
	b _0200136A
_02001360:
	movs r0, #0
	b _0200136A
_02001364:
	movs r0, #1
	b _0200136A
_02001368:
	movs r0, #2
_0200136A:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_02001370
sub_02001370: @ 0x02001370
	push {r4, lr}
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldr r1, _020013A0 @ =0x02028460
	movs r3, #1
	rsbs r3, r3, #0
	cmp r0, r3
	beq _02001386
	str r0, [r1, #8]
_02001386:
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	cmp r0, r3
	beq _02001390
	strh r4, [r1, #0xc]
_02001390:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r0, r3
	beq _0200139A
	strh r2, [r1, #0xe]
_0200139A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_020013A0: .4byte 0x02028460

	thumb_func_start sub_020013A4
sub_020013A4: @ 0x020013A4
	ldr r2, _020013C4 @ =0x02028460
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #2
	adds r1, #0x14
	adds r1, r1, r2
	movs r0, #0
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [r1, #8]
	str r0, [r1, #0xc]
	strh r0, [r1, #0x10]
	strh r0, [r1, #0x12]
	str r0, [r1, #0x14]
	str r0, [r1, #0x18]
	bx lr
	.align 2, 0
_020013C4: .4byte 0x02028460

	thumb_func_start sub_020013C8
sub_020013C8: @ 0x020013C8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _020013F4 @ =0x02028460
	lsls r1, r4, #3
	subs r1, r1, r4
	lsls r1, r1, #2
	adds r1, #0x14
	adds r1, r1, r0
	ldr r0, [r1]
	cmp r0, #0
	beq _020013EE
	ldr r0, [r1, #4]
	cmp r0, #0
	beq _020013E8
	bl sub_02005A88
_020013E8:
	adds r0, r4, #0
	bl sub_020013A4
_020013EE:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_020013F4: .4byte 0x02028460

	thumb_func_start sub_020013F8
sub_020013F8: @ 0x020013F8
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r7, r3, #0
	ldr r5, _02001458 @ =0x02028460
	lsls r0, r6, #3
	subs r0, r0, r6
	lsls r0, r0, #2
	adds r0, #0x14
	adds r4, r0, r5
	cmp r1, #1
	bne _02001498
	strh r1, [r5, #0x12]
	str r1, [r4]
	movs r0, #0x80
	lsls r0, r0, #3
	str r0, [r4, #0x14]
	cmp r6, #0
	bne _02001460
	ldr r1, [r5, #4]
	str r6, [sp]
	movs r0, #0
	movs r2, #0x1f
	movs r3, #0x21
	bl sub_02004D44
	str r0, [r4, #4]
	movs r2, #0xc
	ldrsh r1, [r5, r2]
	bl sub_02005790
	ldr r0, [r4, #4]
	ldrb r1, [r5, #0xe]
	bl sub_020057A0
	ldr r0, [r4, #4]
	movs r1, #1
	bl sub_02005758
	movs r0, #0xf0
	lsls r0, r0, #7
	str r0, [r4, #8]
	ldr r0, _0200145C @ =0xFFFFD800
	str r0, [r4, #0xc]
	ldr r1, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #0x11
	b _02001496
	.align 2, 0
_02001458: .4byte 0x02028460
_0200145C: .4byte 0xFFFFD800
_02001460:
	ldr r1, [r5, #4]
	movs r0, #0
	str r0, [sp]
	movs r2, #0x1f
	movs r3, #0x25
	bl sub_02004D44
	str r0, [r4, #4]
	movs r2, #0xc
	ldrsh r1, [r5, r2]
	bl sub_02005790
	ldr r0, [r4, #4]
	ldrb r1, [r5, #0xe]
	bl sub_020057A0
	ldr r0, [r4, #4]
	movs r1, #1
	bl sub_02005758
	movs r0, #0xf0
	lsls r0, r0, #7
	str r0, [r4, #8]
	ldr r0, _020014B4 @ =0xFFFFD800
	str r0, [r4, #0xc]
	ldr r1, [r4, #4]
	ldr r0, _020014B8 @ =0x01010000
_02001496:
	str r0, [r1, #8]
_02001498:
	cmp r7, #1
	beq _0200149E
	b _020015D0
_0200149E:
	movs r1, #0x12
	ldrsh r0, [r4, r1]
	cmp r0, #5
	bls _020014A8
	b _020015D0
_020014A8:
	lsls r0, r0, #2
	ldr r1, _020014BC @ =_020014C0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_020014B4: .4byte 0xFFFFD800
_020014B8: .4byte 0x01010000
_020014BC: .4byte _020014C0
_020014C0: @ jump table
	.4byte _020014D8 @ case 0
	.4byte _020014E8 @ case 1
	.4byte _02001532 @ case 2
	.4byte _0200156E @ case 3
	.4byte _02001586 @ case 4
	.4byte _020015B0 @ case 5
_020014D8:
	ldr r1, [r4, #0xc]
	movs r0, #0xa0
	lsls r0, r0, #6
	cmp r1, r0
	bgt _020015A8
	ldr r0, [r4, #0x14]
	adds r0, r1, r0
	b _020015CE
_020014E8:
	movs r0, #0xa0
	lsls r0, r0, #6
	ldr r5, [r4, #0xc]
	cmp r5, r0
	ble _0200152C
	ldr r0, [r4, #0x14]
	cmp r0, #0
	ble _0200150C
	bl sub_0200A354
	ldr r3, _02001508 @ =0xCCCCCCCD
	ldr r2, _02001504 @ =0x406CCCCC
	b _02001514
	.align 2, 0
_02001504: .4byte 0x406CCCCC
_02001508: .4byte 0xCCCCCCCD
_0200150C:
	bl sub_0200A354
	ldr r3, _02001528 @ =0x9999999A
	ldr r2, _02001524 @ =0x40399999
_02001514:
	bl sub_02009BF8
	bl sub_0200A3D0
	str r0, [r4, #0x14]
	ldr r0, [r4, #0x14]
	b _020015CC
	.align 2, 0
_02001524: .4byte 0x40399999
_02001528: .4byte 0x9999999A
_0200152C:
	movs r0, #0x1e
	strh r0, [r4, #0x10]
	b _020015A8
_02001532:
	ldrh r1, [r4, #0x10]
	movs r2, #0x10
	ldrsh r0, [r4, r2]
	cmp r0, #0
	bgt _02001568
	cmp r6, #1
	bne _02001562
	ldr r0, [r4, #4]
	ldr r1, [r5, #4]
	movs r2, #0
	str r2, [sp]
	movs r2, #0x1f
	movs r3, #0x24
	bl sub_02004D44
	ldr r0, [r4, #4]
	movs r2, #0xc
	ldrsh r1, [r5, r2]
	bl sub_02005790
	ldr r0, [r4, #4]
	ldrb r1, [r5, #0xe]
	bl sub_020057A0
_02001562:
	movs r0, #0
	strh r0, [r4, #0x10]
	b _020015A8
_02001568:
	subs r0, r1, #1
	strh r0, [r4, #0x10]
	b _020015D0
_0200156E:
	ldrh r1, [r4, #0x10]
	movs r2, #0x10
	ldrsh r0, [r4, r2]
	cmp r0, #0x4f
	ble _02001580
	movs r0, #0x80
	lsls r0, r0, #3
	str r0, [r4, #0x14]
	b _02001562
_02001580:
	adds r0, r1, #1
	strh r0, [r4, #0x10]
	b _020015D0
_02001586:
	ldr r5, [r4, #0xc]
	ldr r0, _0200159C @ =0x00002FFF
	cmp r5, r0
	bgt _020015A8
	ldr r0, [r4, #0x14]
	bl sub_0200A354
	ldr r2, _020015A0 @ =0x40399999
	ldr r3, _020015A4 @ =0x9999999A
	b _020015C2
	.align 2, 0
_0200159C: .4byte 0x00002FFF
_020015A0: .4byte 0x40399999
_020015A4: .4byte 0x9999999A
_020015A8:
	ldrh r0, [r4, #0x12]
	adds r0, #1
	strh r0, [r4, #0x12]
	b _020015D0
_020015B0:
	ldr r5, [r4, #0xc]
	ldr r0, _020015D8 @ =0xFFFFB000
	cmp r5, r0
	ble _020015D0
	ldr r0, [r4, #0x14]
	bl sub_0200A354
	ldr r2, _020015DC @ =0x406CCCCC
	ldr r3, _020015E0 @ =0xCCCCCCCD
_020015C2:
	bl sub_02009BF8
	bl sub_0200A3D0
	str r0, [r4, #0x14]
_020015CC:
	adds r0, r5, r0
_020015CE:
	str r0, [r4, #0xc]
_020015D0:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_020015D8: .4byte 0xFFFFB000
_020015DC: .4byte 0x406CCCCC
_020015E0: .4byte 0xCCCCCCCD

	thumb_func_start sub_020015E4
sub_020015E4: @ 0x020015E4
	push {r4, r5, lr}
	ldr r4, _020015F8 @ =0x02028460
	ldr r0, [r4]
	cmp r0, #0
	beq _02001656
	cmp r0, #1
	beq _020015FC
	cmp r0, #2
	beq _02001656
	b _0200161E
	.align 2, 0
_020015F8: .4byte 0x02028460
_020015FC:
	ldrh r0, [r4, #0x10]
	adds r0, #1
	strh r0, [r4, #0x10]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xb4
	ble _0200161E
	movs r0, #2
	strh r0, [r4, #0x12]
	str r0, [r4]
	movs r5, #0
_02001612:
	adds r0, r5, #0
	bl sub_020013C8
	adds r5, #1
	cmp r5, #1
	ble _02001612
_0200161E:
	movs r5, #0
	adds r4, #0x14
_02001622:
	ldr r0, [r4]
	cmp r0, #0
	beq _0200164E
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0200164E
	bl sub_02004D7C
	ldr r0, [r4]
	cmp r0, #1
	bne _02001644
	adds r0, r5, #0
	movs r1, #0
	movs r2, #1
	movs r3, #1
	bl sub_020013F8
_02001644:
	ldr r0, [r4, #4]
	ldr r1, [r4, #8]
	str r1, [r0]
	ldr r1, [r4, #0xc]
	str r1, [r0, #4]
_0200164E:
	adds r4, #0x1c
	adds r5, #1
	cmp r5, #1
	ble _02001622
_02001656:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_0200165C
sub_0200165C: @ 0x0200165C
	push {lr}
	bl sub_0200669C
	ldr r1, _0200166C @ =sub_020015E4
	bl sub_0200660C
	pop {r0}
	bx r0
	.align 2, 0
_0200166C: .4byte sub_020015E4

	thumb_func_start sub_02001670
sub_02001670: @ 0x02001670
	push {r4, r5, lr}
	adds r5, r0, #0
	bl sub_02006574
	cmp r0, #0
	beq _02001690
	movs r4, #0
_0200167E:
	adds r0, r4, #0
	bl sub_020013C8
	adds r4, #1
	cmp r4, #1
	ble _0200167E
	adds r0, r5, #0
	bl sub_020064F0
_02001690:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_02001698
sub_02001698: @ 0x02001698
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	adds r7, r1, #0
	adds r6, r2, #0
	ldr r5, _020016E4 @ =0x02028460
	movs r4, #0
_020016A8:
	adds r0, r4, #0
	bl sub_020013A4
	adds r4, #1
	cmp r4, #1
	ble _020016A8
	movs r1, #0
	str r1, [r5]
	str r6, [r5, #4]
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [r5, #8]
	movs r0, #0xcc
	lsls r0, r0, #2
	strh r0, [r5, #0xc]
	movs r0, #0xf
	strh r0, [r5, #0xe]
	strh r1, [r5, #0x10]
	strh r1, [r5, #0x12]
	ldr r1, _020016E8 @ =sub_0200165C
	lsls r2, r7, #0x10
	lsrs r2, r2, #0x10
	mov r0, r8
	bl sub_020063E4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_020016E4: .4byte 0x02028460
_020016E8: .4byte sub_0200165C

	thumb_func_start sub_020016EC
sub_020016EC: @ 0x020016EC
	bx lr
	.align 2, 0

	thumb_func_start sub_020016F0
sub_020016F0: @ 0x020016F0
	push {r4, lr}
	ldr r1, _0200170C @ =0x020284AC
	str r0, [r1]
	ldr r4, _02001710 @ =0x02028664
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #5
	movs r0, #1
	bl sub_02006918
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0200170C: .4byte 0x020284AC
_02001710: .4byte 0x02028664

	thumb_func_start sub_02001714
sub_02001714: @ 0x02001714
	push {lr}
	ldr r0, _02001724 @ =0x02028664
	ldr r0, [r0]
	bl sub_0200692C
	pop {r0}
	bx r0
	.align 2, 0
_02001724: .4byte 0x02028664

	thumb_func_start sub_02001728
sub_02001728: @ 0x02001728
	movs r1, #0
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	bx lr

	thumb_func_start sub_02001734
sub_02001734: @ 0x02001734
	push {r4, r5, r6, lr}
	movs r5, #0
	ldr r0, _0200175C @ =0x02028664
	ldr r4, [r0]
	ldr r1, _02001760 @ =0x020284AC
	ldr r0, [r1]
	cmp r5, r0
	bge _02001756
	adds r6, r1, #0
_02001746:
	adds r0, r4, #0
	bl sub_02001728
	adds r5, #1
	adds r4, #0x60
	ldr r0, [r6]
	cmp r5, r0
	blt _02001746
_02001756:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0200175C: .4byte 0x02028664
_02001760: .4byte 0x020284AC

	thumb_func_start sub_02001764
sub_02001764: @ 0x02001764
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	beq _0200177E
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _02001778
	bl sub_02005A88
_02001778:
	adds r0, r4, #0
	bl sub_02001728
_0200177E:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_02001784
sub_02001784: @ 0x02001784
	push {r4, r5, r6, lr}
	movs r5, #0
	ldr r0, _020017AC @ =0x02028664
	ldr r4, [r0]
	ldr r1, _020017B0 @ =0x020284AC
	ldr r0, [r1]
	cmp r5, r0
	bge _020017A6
	adds r6, r1, #0
_02001796:
	adds r0, r4, #0
	bl sub_02001764
	adds r5, #1
	adds r4, #0x60
	ldr r0, [r6]
	cmp r5, r0
	blt _02001796
_020017A6:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_020017AC: .4byte 0x02028664
_020017B0: .4byte 0x020284AC

	thumb_func_start sub_020017B4
sub_020017B4: @ 0x020017B4
	push {lr}
	adds r3, r1, #0
	adds r2, r0, #0
	ldr r1, _020017D4 @ =0x02028664
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #5
	ldr r1, [r1]
	adds r1, r1, r0
	cmp r2, r3
	bhs _020017E0
_020017CA:
	ldr r0, [r1]
	cmp r0, #0
	bne _020017D8
	adds r0, r1, #0
	b _020017E2
	.align 2, 0
_020017D4: .4byte 0x02028664
_020017D8:
	adds r2, #1
	adds r1, #0x60
	cmp r2, r3
	blo _020017CA
_020017E0:
	movs r0, #0
_020017E2:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_020017E8
sub_020017E8: @ 0x020017E8
	push {r4, r5, lr}
	adds r5, r1, #0
	cmp r0, #0
	beq _02001812
	ldr r4, _02001840 @ =0x020284B0
	bl sub_020081DC
	ldr r1, [r4, #0x10]
	cmp r1, r0
	bls _02001802
	adds r0, r1, #0
	bl sub_020081D0
_02001802:
	bl sub_020081F4
	ldr r1, [r4, #0x10]
	cmp r1, r0
	bls _02001812
	adds r0, r1, #0
	bl sub_020081E8
_02001812:
	ldr r4, _02001840 @ =0x020284B0
	ldr r0, [r4, #0x50]
	bl sub_02008200
	movs r0, #0
	bl sub_02004590
	ldr r0, _02001844 @ =0x0000029E
	movs r1, #6
	bl sub_02008828
	movs r0, #1
	strh r0, [r4, #0x3e]
	bl sub_02007EDC
	ldr r1, _02001848 @ =0x0202B2A0
	movs r0, #0x20
	str r0, [r1]
	ldr r0, _0200184C @ =0x0202DD20
	str r5, [r0]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_02001840: .4byte 0x020284B0
_02001844: .4byte 0x0000029E
_02001848: .4byte 0x0202B2A0
_0200184C: .4byte 0x0202DD20

	thumb_func_start sub_02001850
sub_02001850: @ 0x02001850
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x14
	movs r0, #0x80
	lsls r0, r0, #8
	ldr r5, _02001960 @ =0x02028000
	ldr r1, [r5]
	movs r4, #0
	str r4, [sp]
	movs r2, #0xc
	movs r3, #1
	bl sub_02006C14
	movs r0, #0xe0
	lsls r0, r0, #1
	ldr r1, [r5]
	str r4, [sp]
	movs r2, #0xe
	movs r3, #1
	bl sub_02006D58
	movs r0, #0xf0
	lsls r0, r0, #1
	ldr r1, [r5]
	str r4, [sp]
	movs r2, #0xf
	movs r3, #1
	bl sub_02006D58
	movs r0, #0xd0
	lsls r0, r0, #1
	ldr r1, [r5]
	str r4, [sp]
	movs r2, #0xd
	movs r3, #1
	bl sub_02006D58
	movs r0, #0x80
	lsls r0, r0, #7
	ldr r1, [r5]
	str r4, [sp]
	movs r2, #0x26
	movs r3, #1
	bl sub_02006C14
	ldr r1, [r5]
	str r4, [sp]
	movs r0, #0
	movs r2, #0x27
	movs r3, #1
	bl sub_02006D58
	movs r0, #0x80
	lsls r0, r0, #6
	ldr r1, [r5]
	str r4, [sp]
	movs r2, #1
	rsbs r2, r2, #0
	mov r8, r2
	str r2, [sp, #4]
	str r4, [sp, #8]
	movs r6, #1
	str r6, [sp, #0xc]
	str r4, [sp, #0x10]
	movs r2, #0x28
	movs r3, #0
	bl sub_02006E68
	movs r0, #0xc0
	lsls r0, r0, #6
	ldr r1, [r5]
	str r4, [sp]
	mov r2, r8
	str r2, [sp, #4]
	str r4, [sp, #8]
	str r6, [sp, #0xc]
	str r4, [sp, #0x10]
	movs r2, #0x29
	movs r3, #0
	bl sub_02006E68
	movs r0, #0x80
	lsls r0, r0, #9
	ldr r1, [r5]
	str r4, [sp]
	movs r2, #0x2b
	movs r3, #1
	bl sub_02006C14
	movs r0, #0x80
	lsls r0, r0, #2
	ldr r1, [r5]
	str r4, [sp]
	movs r2, #0x2c
	movs r3, #1
	bl sub_02006D58
	movs r0, #0x88
	lsls r0, r0, #9
	ldr r1, [r5]
	str r4, [sp]
	movs r2, #0x42
	movs r3, #1
	bl sub_02006C14
	movs r0, #0xb8
	lsls r0, r0, #2
	ldr r1, [r5]
	str r4, [sp]
	movs r2, #0x43
	movs r3, #1
	bl sub_02006D58
	movs r0, #0x90
	lsls r0, r0, #9
	ldr r1, [r5]
	str r4, [sp]
	movs r2, #0x4b
	movs r3, #1
	bl sub_02006C14
	movs r0, #0xb0
	lsls r0, r0, #2
	ldr r1, [r5]
	str r4, [sp]
	movs r2, #0x4c
	movs r3, #1
	bl sub_02006D58
	add sp, #0x14
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_02001960: .4byte 0x02028000

	thumb_func_start sub_02001964
sub_02001964: @ 0x02001964
	push {lr}
	bl sub_02002370
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_02001970
sub_02001970: @ 0x02001970
	push {r4, r5, lr}
	sub sp, #0x10
	movs r0, #0xd0
	lsls r0, r0, #7
	movs r4, #0
	str r4, [sp]
	str r4, [sp, #4]
	movs r5, #0xd
	str r5, [sp, #8]
	movs r1, #1
	str r1, [sp, #0xc]
	movs r1, #0
	movs r2, #2
	movs r3, #2
	bl sub_02002060
	ldr r0, _020019B8 @ =0x020284B0
	ldrh r0, [r0, #2]
	cmp r0, #1
	bne _020019AC
	str r4, [sp]
	str r4, [sp, #4]
	str r5, [sp, #8]
	str r0, [sp, #0xc]
	movs r0, #0
	movs r1, #0
	movs r2, #7
	movs r3, #2
	bl sub_02002060
_020019AC:
	bl sub_0200251C
	add sp, #0x10
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_020019B8: .4byte 0x020284B0

	thumb_func_start sub_020019BC
sub_020019BC: @ 0x020019BC
	push {lr}
	movs r0, #8
	bl sub_02006574
	cmp r0, #0
	beq _020019CE
	movs r0, #8
	bl sub_020064F0
_020019CE:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_020019D4
sub_020019D4: @ 0x020019D4
	push {lr}
	bl sub_02001970
	ldr r1, _020019EC @ =sub_02001964
	movs r2, #0xc0
	lsls r2, r2, #6
	movs r0, #8
	bl sub_020063E4
	pop {r0}
	bx r0
	.align 2, 0
_020019EC: .4byte sub_02001964

	thumb_func_start sub_020019F0
sub_020019F0: @ 0x020019F0
	push {r4, r5, lr}
	ldr r0, _02001A20 @ =0x020284B0
	ldrh r0, [r0]
	cmp r0, #8
	beq _02001A8E
	ldr r0, _02001A24 @ =0x02028664
	ldr r4, [r0]
	movs r5, #0x15
_02001A00:
	ldr r0, [r4]
	cmp r0, #0
	beq _02001A86
	ldr r0, [r4, #4]
	bl sub_02005740
	cmp r0, #0
	bne _02001A42
	ldrh r0, [r4, #0x2e]
	cmp r0, #0xff
	bne _02001A28
	ldr r0, [r4, #4]
	bl sub_02004D7C
	b _02001A42
	.align 2, 0
_02001A20: .4byte 0x020284B0
_02001A24: .4byte 0x02028664
_02001A28:
	cmp r0, #0
	beq _02001A42
	ldr r0, [r4, #4]
	bl sub_02004D7C
	ldr r0, [r4, #4]
	bl sub_0200586C
	cmp r0, #0
	beq _02001A42
	ldrh r0, [r4, #0x2e]
	subs r0, #1
	strh r0, [r4, #0x2e]
_02001A42:
	ldr r1, _02001A94 @ =gUnknown_0200AFC4
	ldrh r0, [r4, #0x24]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl sub_02009100
	ldr r0, [r4, #0x5c]
	cmp r0, #0
	beq _02001A64
	ldrh r0, [r4, #0x2e]
	cmp r0, #0
	beq _02001A64
	adds r0, r4, #0
	bl sub_02002920
_02001A64:
	ldrh r0, [r4, #0x34]
	cmp r0, #0
	beq _02001A70
	adds r0, r4, #0
	bl sub_020027F4
_02001A70:
	ldr r2, [r4, #4]
	ldr r0, [r4, #8]
	ldr r1, [r4, #0x10]
	adds r0, r0, r1
	lsls r0, r0, #8
	str r0, [r2]
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #0x14]
	adds r0, r0, r1
	lsls r0, r0, #8
	str r0, [r2, #4]
_02001A86:
	subs r5, #1
	adds r4, #0x60
	cmp r5, #0
	bge _02001A00
_02001A8E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_02001A94: .4byte gUnknown_0200AFC4

	thumb_func_start sub_02001A98
sub_02001A98: @ 0x02001A98
	push {lr}
	bl sub_0200323C
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_02001AA4
sub_02001AA4: @ 0x02001AA4
	push {lr}
	movs r0, #7
	bl sub_02006574
	cmp r0, #0
	beq _02001AB6
	movs r0, #7
	bl sub_020064F0
_02001AB6:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_02001ABC
sub_02001ABC: @ 0x02001ABC
	push {lr}
	bl sub_02001A98
	ldr r1, _02001AD4 @ =sub_020019F0
	movs r2, #0x80
	lsls r2, r2, #6
	movs r0, #7
	bl sub_020063E4
	pop {r0}
	bx r0
	.align 2, 0
_02001AD4: .4byte sub_020019F0

	thumb_func_start sub_02001AD8
sub_02001AD8: @ 0x02001AD8
	push {r4, lr}
	ldr r1, _02001AF0 @ =0x020284B0
	ldrh r0, [r1, #0x16]
	adds r0, #1
	strh r0, [r1, #0x16]
	ldrh r0, [r1, #0x14]
	adds r4, r1, #0
	cmp r0, #0
	beq _02001AF4
	subs r0, #1
	strh r0, [r4, #0x14]
	b _02001CA4
	.align 2, 0
_02001AF0: .4byte 0x020284B0
_02001AF4:
	ldrh r0, [r4]
	cmp r0, #8
	bls _02001AFC
	b _02001CA4
_02001AFC:
	lsls r0, r0, #2
	ldr r1, _02001B08 @ =_02001B0C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_02001B08: .4byte _02001B0C
_02001B0C: @ jump table
	.4byte _02001B30 @ case 0
	.4byte _02001B3C @ case 1
	.4byte _02001B4E @ case 2
	.4byte _02001B90 @ case 3
	.4byte _02001BB8 @ case 4
	.4byte _02001C56 @ case 5
	.4byte _02001C82 @ case 6
	.4byte _02001C98 @ case 7
	.4byte _02001CA4 @ case 8
_02001B30:
	movs r1, #0
	movs r0, #1
	strh r0, [r4, #0x18]
	strh r1, [r4, #0x14]
	strh r0, [r4]
	b _02001CA4
_02001B3C:
	ldrh r0, [r4, #0x18]
	cmp r0, #0
	beq _02001B44
	b _02001CA4
_02001B44:
	bl sub_02000E08
	movs r0, #2
	strh r0, [r4]
	b _02001CA4
_02001B4E:
	bl sub_02000E68
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #2
	beq _02001B5C
	b _02001CA4
_02001B5C:
	movs r0, #0
	bl sub_02008570
	movs r0, #1
	movs r1, #1
	bl sub_02004128
	bl sub_020040F0
	ldr r0, _02001B88 @ =0x02028000
	ldr r1, [r0]
	movs r0, #0
	movs r2, #0x2a
	movs r3, #0
	bl sub_02004570
	movs r0, #1
	bl sub_02004734
	ldr r1, _02001B8C @ =0x020284B0
	movs r0, #3
	b _02001CA2
	.align 2, 0
_02001B88: .4byte 0x02028000
_02001B8C: .4byte 0x020284B0
_02001B90:
	bl sub_02002760
	cmp r0, #0
	bne _02001BA2
	bl sub_02002788
	cmp r0, #0
	bne _02001BA2
	b _02001CA4
_02001BA2:
	ldr r4, _02001BB4 @ =0x020284B0
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r4, #0x44]
	bl sub_020012FC
	movs r0, #4
	strh r0, [r4]
	b _02001CA4
	.align 2, 0
_02001BB4: .4byte 0x020284B0
_02001BB8:
	ldr r1, [r4, #0x44]
	cmp r1, #0
	beq _02001BE2
	ldr r0, _02001C10 @ =0xFFFFFE00
	adds r1, r1, r0
	str r1, [r4, #0x44]
	movs r0, #6
	bl sub_02008884
	ldr r0, [r4, #0x44]
	cmp r0, #0
	bne _02001BE2
	movs r0, #0
	bl sub_02004590
	ldr r0, _02001C14 @ =0x0000029E
	movs r1, #6
	bl sub_02008828
	movs r0, #1
	strh r0, [r4, #0x3e]
_02001BE2:
	movs r0, #1
	bl sub_02008570
	bl sub_02001334
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #2
	bne _02001CA4
	ldr r4, _02001C18 @ =0x020284B0
	ldrh r0, [r4, #2]
	cmp r0, #1
	bne _02001C2C
	bl sub_020027B0
	cmp r0, #0
	beq _02001C1C
	movs r0, #1
	movs r1, #0
	bl sub_02000254
	movs r0, #5
	b _02001C1E
	.align 2, 0
_02001C10: .4byte 0xFFFFFE00
_02001C14: .4byte 0x0000029E
_02001C18: .4byte 0x020284B0
_02001C1C:
	movs r0, #7
_02001C1E:
	strh r0, [r4]
	ldr r1, _02001C28 @ =0x020284B0
	movs r0, #0
	str r0, [r1, #0x50]
	b _02001CA4
	.align 2, 0
_02001C28: .4byte 0x020284B0
_02001C2C:
	bl sub_02002760
	cmp r0, #0
	beq _02001C46
	movs r0, #0
	movs r1, #0
	bl sub_02000254
	movs r0, #0
	str r0, [r4, #0x50]
	movs r0, #5
	strh r0, [r4]
	b _02001CA4
_02001C46:
	movs r0, #0
	bl sub_020008FC
	movs r0, #1
	str r0, [r4, #0x50]
	movs r0, #6
	strh r0, [r4]
	b _02001CA4
_02001C56:
	bl sub_020002C4
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #2
	bne _02001CA4
	ldr r4, _02001C70 @ =0x020284B0
	ldrh r0, [r4, #2]
	cmp r0, #1
	bne _02001C74
	movs r0, #7
	strh r0, [r4]
	b _02001CA4
	.align 2, 0
_02001C70: .4byte 0x020284B0
_02001C74:
	movs r0, #0
	movs r1, #0
	bl sub_020017E8
	movs r0, #8
	strh r0, [r4]
	b _02001CA4
_02001C82:
	bl sub_0200093C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #2
	bne _02001CA4
	movs r0, #0
	movs r1, #0
	bl sub_020017E8
	b _02001C9E
_02001C98:
	movs r0, #2
	bl sub_02008570
_02001C9E:
	ldr r1, _02001CAC @ =0x020284B0
	movs r0, #8
_02001CA2:
	strh r0, [r1]
_02001CA4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_02001CAC: .4byte 0x020284B0

	thumb_func_start sub_02001CB0
sub_02001CB0: @ 0x02001CB0
	push {r4, lr}
	bl sub_02001850
	movs r1, #0x80
	lsls r1, r1, #7
	ldr r4, _02001CF4 @ =0x02028000
	ldr r2, [r4]
	movs r0, #9
	bl sub_02001268
	ldr r1, _02001CF8 @ =0x00004001
	ldr r2, [r4]
	movs r0, #0xa
	bl sub_02001698
	ldr r1, _02001CFC @ =0x00004002
	ldr r2, [r4]
	movs r0, #0xb
	bl sub_02000888
	ldr r1, _02001D00 @ =0x00004003
	ldr r2, [r4]
	movs r0, #0xc
	bl sub_02000D0C
	bl sub_0200669C
	ldr r1, _02001D04 @ =sub_02001AD8
	bl sub_0200660C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_02001CF4: .4byte 0x02028000
_02001CF8: .4byte 0x00004001
_02001CFC: .4byte 0x00004002
_02001D00: .4byte 0x00004003
_02001D04: .4byte sub_02001AD8

	thumb_func_start sub_02001D08
sub_02001D08: @ 0x02001D08
	push {lr}
	movs r0, #6
	bl sub_02006574
	cmp r0, #0
	beq _02001D1A
	movs r0, #6
	bl sub_020064F0
_02001D1A:
	movs r0, #9
	bl sub_02001240
	movs r0, #0xa
	bl sub_02001670
	movs r0, #0xb
	bl sub_02000860
	movs r0, #0xc
	bl sub_02000CE4
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_02001D38
sub_02001D38: @ 0x02001D38
	push {lr}
	ldr r1, _02001D4C @ =sub_02001CB0
	movs r2, #0x88
	lsls r2, r2, #5
	movs r0, #6
	bl sub_020063E4
	pop {r0}
	bx r0
	.align 2, 0
_02001D4C: .4byte sub_02001CB0

	thumb_func_start sub_02001D50
sub_02001D50: @ 0x02001D50
	push {r4, lr}
	adds r4, r0, #0
	cmp r1, #1
	beq _02001D82
	cmp r1, #1
	bgt _02001D62
	cmp r1, #0
	beq _02001D76
	b _02001DB0
_02001D62:
	cmp r1, #2
	beq _02001D9A
	cmp r1, #3
	bne _02001DB0
	cmp r4, #0
	bne _02001DB0
	movs r0, #1
	bl sub_02000DA8
	b _02001DB0
_02001D76:
	cmp r4, #0
	bne _02001DB0
	movs r0, #0
	bl sub_02000DA8
	b _02001DB0
_02001D82:
	movs r0, #1
	bl sub_02008570
	cmp r4, #0
	bne _02001D90
	movs r0, #0
	b _02001D92
_02001D90:
	movs r0, #1
_02001D92:
	movs r1, #1
	bl sub_020017E8
	b _02001DB0
_02001D9A:
	cmp r4, #0
	bne _02001DA8
	movs r0, #0
	movs r1, #0
	bl sub_020017E8
	b _02001DB0
_02001DA8:
	movs r0, #1
	movs r1, #0
	bl sub_020017E8
_02001DB0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_02001DB8
sub_02001DB8: @ 0x02001DB8
	bx lr
	.align 2, 0

	thumb_func_start sub_02001DBC
sub_02001DBC: @ 0x02001DBC
	bx lr
	.align 2, 0

	thumb_func_start sub_02001DC0
sub_02001DC0: @ 0x02001DC0
	bx lr
	.align 2, 0

	thumb_func_start sub_02001DC4
sub_02001DC4: @ 0x02001DC4
	push {lr}
	sub sp, #0xc
	add r1, sp, #8
	movs r0, #0
	strh r0, [r1]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	ldr r2, _02001E88 @ =0x0100C000
	add r0, sp, #8
	bl sub_020090C4
	bl sub_020040E0
	movs r0, #0
	bl sub_02004114
	movs r0, #0
	movs r1, #1
	bl sub_02004128
	movs r0, #1
	movs r1, #0
	bl sub_02004128
	movs r0, #2
	movs r1, #1
	bl sub_02004128
	movs r0, #3
	movs r1, #1
	bl sub_02004128
	movs r0, #4
	movs r1, #1
	bl sub_02004128
	ldr r0, _02001E8C @ =gUnknown_0200B250
	bl sub_02003F5C
	movs r0, #0
	bl sub_0200421C
	movs r0, #0
	movs r1, #0
	bl sub_02004238
	movs r0, #0
	bl sub_02004268
	movs r0, #0
	movs r1, #0
	bl sub_02004278
	movs r0, #1
	movs r1, #0
	bl sub_02004278
	movs r0, #2
	movs r1, #0
	bl sub_02004278
	movs r0, #3
	movs r1, #0
	bl sub_02004278
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_020042B0
	movs r3, #0x80
	lsls r3, r3, #2
	movs r0, #0
	movs r1, #1
	movs r2, #0
	bl sub_02004314
	movs r1, #0xf0
	lsls r1, r1, #2
	ldr r0, _02001E90 @ =0x02028000
	ldr r0, [r0]
	str r0, [sp]
	movs r0, #0xa
	str r0, [sp, #4]
	movs r0, #0
	movs r2, #0xf0
	movs r3, #1
	bl sub_0200730C
	ldr r0, _02001E94 @ =0x0000F3FF
	movs r1, #0
	bl sub_020040C0
	add sp, #0xc
	pop {r0}
	bx r0
	.align 2, 0
_02001E88: .4byte 0x0100C000
_02001E8C: .4byte gUnknown_0200B250
_02001E90: .4byte 0x02028000
_02001E94: .4byte 0x0000F3FF

	thumb_func_start sub_02001E98
sub_02001E98: @ 0x02001E98
	push {lr}
	movs r0, #0
	bl sub_0200636C
	movs r0, #0
	bl sub_02006378
	movs r0, #4
	bl sub_020064F0
	pop {r0}
	bx r0

	thumb_func_start sub_02001EB0
sub_02001EB0: @ 0x02001EB0
	bx lr
	.align 2, 0

	thumb_func_start sub_02001EB4
sub_02001EB4: @ 0x02001EB4
	push {r4, lr}
	movs r0, #0
	bl sub_0200636C
	movs r0, #0
	bl sub_02006378
	movs r0, #1
	bl sub_0200747C
	movs r4, #0x80
	lsls r4, r4, #2
	movs r0, #1
	movs r1, #2
	movs r2, #0
	adds r3, r4, #0
	bl sub_02004314
	movs r0, #0
	movs r1, #1
	movs r2, #0
	adds r3, r4, #0
	bl sub_02004314
	movs r0, #0
	bl sub_02007EDC
	ldr r1, _02001EF8 @ =sub_02001EB0
	movs r0, #4
	bl sub_0200660C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_02001EF8: .4byte sub_02001EB0

	thumb_func_start sub_02001EFC
sub_02001EFC: @ 0x02001EFC
	push {lr}
	ldr r1, _02001F0C @ =sub_02001EB4
	ldr r2, _02001F10 @ =0x0000EFFF
	movs r0, #4
	bl sub_020063E4
	pop {r0}
	bx r0
	.align 2, 0
_02001F0C: .4byte sub_02001EB4
_02001F10: .4byte 0x0000EFFF

	thumb_func_start sub_02001F14
sub_02001F14: @ 0x02001F14
	push {lr}
	bl sub_02001D08
	bl sub_02001784
	bl sub_02001714
	bl sub_02001E98
	bl sub_02005A9C
	bl sub_020059F0
	movs r0, #0
	bl sub_0200694C
	bl sub_0200805C
	movs r0, #5
	bl sub_020064F0
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_02001F44
sub_02001F44: @ 0x02001F44
	push {lr}
	ldr r1, _02001F68 @ =0x0202B2A0
	ldr r0, [r1]
	cmp r0, #0
	beq _02001F80
	cmp r0, #1
	bne _02001F7C
	bl sub_02001F14
	ldr r0, _02001F6C @ =0x0202DD20
	ldr r0, [r0]
	cmp r0, #0
	bne _02001F70
	movs r0, #1
	bl sub_020036A4
	b _02001F80
	.align 2, 0
_02001F68: .4byte 0x0202B2A0
_02001F6C: .4byte 0x0202DD20
_02001F70:
	ldr r0, _02001F78 @ =sub_0200200C
	bl sub_020066E0
	b _02001F80
	.align 2, 0
_02001F78: .4byte sub_0200200C
_02001F7C:
	subs r0, #1
	str r0, [r1]
_02001F80:
	pop {r0}
	bx r0

	thumb_func_start sub_02001F84
sub_02001F84: @ 0x02001F84
	push {r4, lr}
	ldr r1, _02001FF8 @ =0x0202B2A0
	movs r0, #0
	str r0, [r1]
	movs r0, #0x10
	bl sub_02008114
	ldr r4, _02001FFC @ =0x02028000
	bl sub_02008120
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	str r0, [r4]
	movs r0, #8
	bl sub_02008E80
	movs r0, #0
	bl sub_020090AC
	ldr r0, _02002000 @ =sub_02001D50
	bl sub_02008564
	movs r0, #3
	bl sub_02008570
	bl sub_02001DC0
	movs r0, #0x16
	bl sub_020016F0
	bl sub_02001734
	bl sub_02001DC4
	bl sub_02002954
	bl sub_02001D38
	bl sub_020019D4
	bl sub_02001ABC
	bl sub_02001EFC
	ldr r0, _02002004 @ =sub_02001F14
	bl sub_0200694C
	bl sub_02008068
	ldr r1, _02002008 @ =sub_02001F44
	movs r0, #5
	bl sub_0200660C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_02001FF8: .4byte 0x0202B2A0
_02001FFC: .4byte 0x02028000
_02002000: .4byte sub_02001D50
_02002004: .4byte sub_02001F14
_02002008: .4byte sub_02001F44

	thumb_func_start sub_0200200C
sub_0200200C: @ 0x0200200C
	push {lr}
	ldr r0, _02002050 @ =0x0131CC05
	bl sub_02008050
	bl sub_02007458
	ldr r0, _02002054 @ =0x02018000
	movs r1, #0x80
	lsls r1, r1, #9
	ldr r2, _02002058 @ =0x03007000
	movs r3, #0x80
	lsls r3, r3, #3
	bl sub_020068F4
	bl sub_020068BC
	bl sub_020059B8
	movs r0, #1
	movs r1, #0x40
	bl sub_020059D0
	bl sub_02005A40
	bl sub_020066F0
	ldr r1, _0200205C @ =sub_02001F84
	movs r2, #0x80
	lsls r2, r2, #5
	movs r0, #5
	bl sub_020063E4
	pop {r0}
	bx r0
	.align 2, 0
_02002050: .4byte 0x0131CC05
_02002054: .4byte 0x02018000
_02002058: .4byte 0x03007000
_0200205C: .4byte sub_02001F84

	thumb_func_start sub_02002060
sub_02002060: @ 0x02002060
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x3c
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	mov r8, r2
	mov sb, r3
	ldr r0, [sp, #0x5c]
	ldr r1, [sp, #0x60]
	ldr r2, [sp, #0x64]
	mov r3, r8
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov r8, r3
	mov r3, sb
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov sb, r3
	lsls r0, r0, #0x10
	str r0, [sp, #0x14]
	lsls r0, r1, #0x10
	ldr r1, [sp, #0xc]
	movs r3, #0x80
	lsls r3, r3, #4
	adds r7, r1, r3
	ldr r1, [sp, #0x10]
	adds r1, r1, r3
	mov sl, r1
	movs r3, #0x80
	lsls r3, r3, #0xa
	adds r4, r0, r3
	asrs r4, r4, #0xb
	str r4, [sp, #0x18]
	movs r1, #0xa0
	lsls r1, r1, #0xd
	ldr r0, [sp, #0x14]
	adds r1, r0, r1
	asrs r3, r1, #0x10
	str r3, [sp, #0x1c]
	adds r4, r3, r4
	lsls r0, r2, #0x10
	asrs r0, r0, #4
	str r0, [sp, #0x24]
	adds r4, r4, r0
	lsls r1, r4, #0x10
	lsrs r1, r1, #0x10
	str r7, [sp]
	mov r0, sl
	str r0, [sp, #4]
	ldr r3, [sp, #0x68]
	str r3, [sp, #8]
	movs r0, #1
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x10]
	bl sub_02004000
	mov r0, r8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r8, r0
	adds r0, #1
	lsls r0, r0, #0xb
	str r0, [sp, #0x28]
	ldr r1, [sp, #0xc]
	adds r6, r1, r0
	movs r3, #0x80
	lsls r3, r3, #4
	adds r7, r6, r3
	movs r0, #0x80
	lsls r0, r0, #3
	adds r1, r4, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r7, [sp]
	mov r3, sl
	str r3, [sp, #4]
	ldr r0, [sp, #0x68]
	str r0, [sp, #8]
	movs r0, #1
	adds r2, r6, #0
	ldr r3, [sp, #0x10]
	bl sub_02004000
	mov r1, sb
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov sb, r1
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0xb
	str r0, [sp, #0x2c]
	ldr r3, [sp, #0x10]
	adds r5, r3, r0
	ldr r0, [sp, #0xc]
	movs r1, #0x80
	lsls r1, r1, #4
	adds r7, r0, r1
	adds r1, r1, r5
	mov sl, r1
	movs r3, #0x80
	lsls r3, r3, #4
	adds r1, r4, r3
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r7, [sp]
	mov r0, sl
	str r0, [sp, #4]
	ldr r3, [sp, #0x68]
	str r3, [sp, #8]
	movs r0, #1
	ldr r2, [sp, #0xc]
	adds r3, r5, #0
	bl sub_02004000
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x28]
	adds r6, r0, r1
	movs r3, #0x80
	lsls r3, r3, #4
	adds r7, r6, r3
	movs r0, #0xc0
	lsls r0, r0, #4
	adds r4, r4, r0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	str r7, [sp]
	mov r1, sl
	str r1, [sp, #4]
	ldr r3, [sp, #0x68]
	str r3, [sp, #8]
	movs r0, #1
	adds r1, r4, #0
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_02004000
	ldr r0, [sp, #0x10]
	movs r1, #0x80
	lsls r1, r1, #4
	adds r5, r0, r1
	ldr r3, [sp, #0xc]
	adds r7, r3, r1
	mov r0, sb
	lsls r0, r0, #0xb
	mov sb, r0
	adds r1, r5, #0
	add r1, sb
	mov sl, r1
	ldr r4, [sp, #0x18]
	adds r4, #1
	ldr r3, [sp, #0x1c]
	adds r4, r3, r4
	ldr r0, [sp, #0x24]
	adds r4, r4, r0
	lsls r1, r4, #0x10
	lsrs r1, r1, #0x10
	str r7, [sp]
	mov r3, sl
	str r3, [sp, #4]
	ldr r0, [sp, #0x68]
	str r0, [sp, #8]
	movs r0, #1
	ldr r2, [sp, #0xc]
	adds r3, r5, #0
	bl sub_02004000
	ldr r1, [sp, #0xc]
	ldr r3, [sp, #0x28]
	adds r6, r1, r3
	movs r0, #0x80
	lsls r0, r0, #4
	adds r7, r6, r0
	movs r1, #0x80
	lsls r1, r1, #3
	adds r4, r4, r1
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	str r7, [sp]
	mov r3, sl
	str r3, [sp, #4]
	ldr r0, [sp, #0x68]
	str r0, [sp, #8]
	movs r0, #1
	adds r1, r4, #0
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_02004000
	ldr r1, [sp, #0xc]
	movs r3, #0x80
	lsls r3, r3, #4
	adds r6, r1, r3
	mov r0, r8
	lsls r0, r0, #0xb
	adds r7, r6, r0
	ldr r1, [sp, #0x10]
	adds r1, r1, r3
	mov sl, r1
	ldr r4, [sp, #0x18]
	adds r4, #2
	ldr r3, [sp, #0x1c]
	adds r4, r3, r4
	ldr r0, [sp, #0x24]
	adds r4, r4, r0
	lsls r1, r4, #0x10
	lsrs r1, r1, #0x10
	str r7, [sp]
	mov r3, sl
	str r3, [sp, #4]
	ldr r0, [sp, #0x68]
	str r0, [sp, #8]
	movs r0, #1
	adds r2, r6, #0
	ldr r3, [sp, #0x10]
	bl sub_02004000
	ldr r1, [sp, #0x10]
	ldr r3, [sp, #0x2c]
	adds r5, r1, r3
	movs r0, #0x80
	lsls r0, r0, #4
	adds r0, r0, r5
	movs r1, #0x80
	lsls r1, r1, #4
	adds r4, r4, r1
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	str r7, [sp]
	str r0, [sp, #4]
	ldr r3, [sp, #0x68]
	str r3, [sp, #8]
	movs r0, #1
	adds r1, r4, #0
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_02004000
	ldr r0, [sp, #0x10]
	movs r1, #0x80
	lsls r1, r1, #4
	adds r5, r0, r1
	adds r3, r5, #0
	add r3, sb
	mov sl, r3
	ldr r4, [sp, #0x18]
	adds r4, #3
	ldr r0, [sp, #0x1c]
	adds r4, r0, r4
	ldr r1, [sp, #0x24]
	adds r1, r4, r1
	str r1, [sp, #0x34]
	lsls r3, r1, #0x10
	lsrs r4, r3, #0x10
	str r7, [sp]
	mov r0, sl
	str r0, [sp, #4]
	ldr r1, [sp, #0x68]
	str r1, [sp, #8]
	movs r0, #1
	adds r1, r4, #0
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_02004000
	add sp, #0x3c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_02002288
sub_02002288: @ 0x02002288
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r5, r0, #0
	mov r8, r1
	adds r4, r2, #0
	adds r6, r3, #0
	ldr r2, [sp, #0x28]
	lsls r5, r5, #0x18
	asrs r5, r5, #0x16
	ldr r0, _02002318 @ =gUnknown_0200AF66
	adds r5, r5, r0
	lsls r6, r6, #0x10
	asrs r6, r6, #4
	ldrh r1, [r5]
	adds r0, r6, #0
	orrs r0, r1
	adds r5, #2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	lsls r1, r4, #5
	mov r3, r8
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	mov r8, r3
	add r1, r8
	lsls r1, r1, #1
	ldr r3, _0200231C @ =0x06001000
	mov sl, r3
	add r1, sl
	movs r3, #0x40
	mov sb, r3
	str r3, [sp]
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	str r7, [sp, #4]
	movs r2, #2
	movs r3, #1
	bl sub_02005F00
	ldrh r0, [r5]
	orrs r6, r0
	lsls r6, r6, #0x10
	asrs r6, r6, #0x10
	adds r4, #1
	lsls r4, r4, #5
	add r4, r8
	lsls r4, r4, #1
	add r4, sl
	mov r0, sb
	str r0, [sp]
	str r7, [sp, #4]
	adds r0, r6, #0
	adds r1, r4, #0
	movs r2, #2
	movs r3, #1
	bl sub_02005F00
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_02002318: .4byte gUnknown_0200AF66
_0200231C: .4byte 0x06001000

	thumb_func_start sub_02002320
sub_02002320: @ 0x02002320
	push {r4, r5, lr}
	sub sp, #8
	ldr r5, [sp, #0x14]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x17
	ldr r4, _02002368 @ =gUnknown_0200AF92
	adds r0, r0, r4
	lsls r3, r3, #0x10
	asrs r3, r3, #4
	ldrh r0, [r0]
	orrs r3, r0
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	lsls r2, r2, #0x10
	asrs r2, r2, #0xb
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r2, r2, r1
	lsls r2, r2, #1
	ldr r0, _0200236C @ =0x06001000
	adds r2, r2, r0
	movs r0, #0x40
	str r0, [sp]
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	str r5, [sp, #4]
	adds r0, r3, #0
	adds r1, r2, #0
	movs r2, #2
	movs r3, #1
	bl sub_02005F00
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_02002368: .4byte gUnknown_0200AF92
_0200236C: .4byte 0x06001000

	thumb_func_start sub_02002370
sub_02002370: @ 0x02002370
	push {r4, r5, lr}
	sub sp, #4
	ldr r4, _020023C4 @ =0x020284B0
	ldrh r0, [r4, #8]
	movs r1, #0x3c
	bl sub_02009604
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldrh r0, [r4, #0xa]
	cmp r0, r5
	beq _020023BC
	strh r5, [r4, #0xa]
	adds r0, r5, #0
	movs r1, #0xa
	bl sub_0200967C
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r4, #1
	str r4, [sp]
	movs r1, #0xf
	movs r2, #1
	movs r3, #0xe
	bl sub_02002288
	adds r0, r5, #0
	movs r1, #0xa
	bl sub_02009604
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	str r4, [sp]
	movs r1, #0xe
	movs r2, #1
	movs r3, #0xe
	bl sub_02002288
_020023BC:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_020023C4: .4byte 0x020284B0

	thumb_func_start sub_020023C8
sub_020023C8: @ 0x020023C8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x1c
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov r8, r2
	lsls r3, r3, #0x18
	lsrs r7, r3, #0x18
	add r2, sp, #4
	ldr r0, _02002440 @ =gUnknown_0200AFAC
	ldm r0!, {r3, r4, r5}
	stm r2!, {r3, r4, r5}
	ldm r0!, {r3, r4, r5}
	stm r2!, {r3, r4, r5}
	movs r0, #1
	mov sb, r0
	movs r3, #0x80
	lsls r3, r3, #0x11
	adds r1, r1, r3
	lsrs r5, r1, #0x18
	movs r0, #0x80
	ands r0, r7
	cmp r0, #0
	beq _02002414
	movs r0, #0x7f
	ands r7, r0
	mov r4, sb
	str r4, [sp]
	movs r0, #0xb
	adds r1, r5, #0
	mov r2, r8
	adds r3, r7, #0
	bl sub_02002320
_02002414:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	movs r1, #0
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _0200248A
_02002422:
	lsls r4, r1, #0x18
	asrs r0, r4, #0x16
	add r0, sp
	adds r0, #4
	ldr r1, [r0]
	adds r0, r6, #0
	bl sub_02009604
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r0, #0
	beq _02002444
	movs r0, #0
	mov sb, r0
	b _0200244C
	.align 2, 0
_02002440: .4byte gUnknown_0200AFAC
_02002444:
	mov r3, sb
	cmp r3, #0
	beq _0200244C
	movs r1, #0xa
_0200244C:
	lsls r0, r1, #0x18
	asrs r0, r0, #0x18
	movs r1, #1
	str r1, [sp]
	adds r1, r5, #0
	mov r2, r8
	adds r3, r7, #0
	bl sub_02002320
	asrs r4, r4, #0x18
	lsls r0, r4, #2
	add r0, sp
	adds r0, #4
	ldr r1, [r0]
	adds r0, r6, #0
	bl sub_0200967C
	adds r6, r0, #0
	adds r4, #1
	lsls r4, r4, #0x18
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	lsrs r1, r4, #0x18
	asrs r4, r4, #0x16
	mov r0, sp
	adds r0, r0, r4
	adds r0, #4
	ldr r0, [r0]
	cmp r0, #0
	bne _02002422
_0200248A:
	adds r0, r6, #0
	movs r1, #0xa
	bl sub_0200967C
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #1
	str r1, [sp]
	adds r1, r5, #0
	mov r2, r8
	adds r3, r7, #0
	bl sub_02002320
	add sp, #0x1c
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_020024B4
sub_020024B4: @ 0x020024B4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r7, _02002508 @ =0x00009018
	ldr r6, _0200250C @ =0x00007058
	ldr r3, _02002510 @ =0x02028670
	movs r4, #0
	mov ip, r3
	ldr r5, _02002514 @ =0x020284B0
	mov r2, ip
	adds r2, #0x40
_020024C8:
	adds r1, r6, #0
	ldrh r0, [r5, #0x20]
	cmp r4, r0
	bge _020024D2
	adds r1, r7, #0
_020024D2:
	strh r1, [r3]
	adds r0, r1, #1
	strh r0, [r3, #2]
	adds r0, #0x1f
	strh r0, [r2]
	adds r0, #1
	strh r0, [r2, #2]
	adds r2, #4
	adds r3, #4
	adds r4, #1
	cmp r4, #9
	ble _020024C8
	ldr r1, _02002518 @ =0x0600248A
	movs r0, #0x40
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	mov r0, ip
	movs r2, #0x28
	movs r3, #2
	bl sub_02005F58
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_02002508: .4byte 0x00009018
_0200250C: .4byte 0x00007058
_02002510: .4byte 0x02028670
_02002514: .4byte 0x020284B0
_02002518: .4byte 0x0600248A

	thumb_func_start sub_0200251C
sub_0200251C: @ 0x0200251C
	push {r4, lr}
	ldr r4, _0200254C @ =0x020284B0
	ldrh r0, [r4, #2]
	cmp r0, #1
	bne _02002540
	bl sub_020081F4
	movs r1, #0
	movs r2, #1
	movs r3, #0x8f
	bl sub_020023C8
	ldr r0, [r4, #0x10]
	movs r1, #0
	movs r2, #2
	movs r3, #0xd
	bl sub_020023C8
_02002540:
	bl sub_020024B4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0200254C: .4byte 0x020284B0

	thumb_func_start sub_02002550
sub_02002550: @ 0x02002550
	ldr r1, _0200255C @ =0x020284B0
	movs r0, #0
	strh r0, [r1, #0x26]
	strh r0, [r1, #0x1c]
	strh r0, [r1, #0x24]
	bx lr
	.align 2, 0
_0200255C: .4byte 0x020284B0

	thumb_func_start sub_02002560
sub_02002560: @ 0x02002560
	push {r4, lr}
	ldr r3, _020025AC @ =0x020284B0
	ldrh r0, [r3, #0x26]
	adds r4, r3, #0
	cmp r0, #9
	bhi _020025B6
	ldr r0, _020025B0 @ =0x0202B210
	ldrh r1, [r0]
	movs r2, #0xf0
	ands r2, r1
	ldrh r0, [r3, #0x24]
	ands r2, r0
	mvns r1, r1
	strh r1, [r3, #0x24]
	cmp r2, #0
	beq _020025B6
	ldrh r0, [r3, #0x28]
	cmp r0, #0
	bne _020025B6
	cmp r2, #0x40
	beq _02002596
	cmp r2, #0x10
	beq _02002596
	cmp r2, #0x80
	beq _02002596
	cmp r2, #0x20
	bne _020025B4
_02002596:
	ldrh r0, [r4, #0x26]
	adds r1, r0, #1
	strh r1, [r4, #0x26]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xf
	adds r1, r4, #0
	adds r1, #0x2a
	adds r0, r0, r1
	strh r2, [r0]
	b _020025B6
	.align 2, 0
_020025AC: .4byte 0x020284B0
_020025B0: .4byte 0x0202B210
_020025B4:
	strh r0, [r3, #0x24]
_020025B6:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_020025BC
sub_020025BC: @ 0x020025BC
	push {r4, r5, lr}
	ldr r0, _020025CC @ =0x020284B0
	ldrh r1, [r0, #0x26]
	adds r3, r0, #0
	cmp r1, #0
	bne _020025D0
	movs r0, #0
	b _020025FA
	.align 2, 0
_020025CC: .4byte 0x020284B0
_020025D0:
	ldrh r5, [r3, #0x2a]
	movs r2, #0
	ldrh r0, [r3, #0x26]
	subs r0, #1
	cmp r2, r0
	bge _020025F2
	adds r4, r3, #0
	adds r1, r3, #0
	adds r1, #0x2a
_020025E2:
	ldrh r0, [r1, #2]
	strh r0, [r1]
	adds r1, #2
	adds r2, #1
	ldrh r0, [r4, #0x26]
	subs r0, #1
	cmp r2, r0
	blt _020025E2
_020025F2:
	ldrh r0, [r3, #0x26]
	subs r0, #1
	strh r0, [r3, #0x26]
	adds r0, r5, #0
_020025FA:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_02002600
sub_02002600: @ 0x02002600
	push {r4, lr}
	bl sub_020025BC
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	beq _0200263C
	ldr r1, _02002630 @ =gUnknown_0200B32C
	ldr r4, _02002634 @ =0x020284B0
	ldrh r2, [r4, #0x1a]
	lsls r0, r2, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	cmp r3, r0
	bne _02002638
	adds r0, r2, #1
	strh r0, [r4, #0x1a]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #4
	bls _0200263C
	movs r0, #1
	strh r0, [r4, #0x1a]
	b _0200263C
	.align 2, 0
_02002630: .4byte gUnknown_0200B32C
_02002634: .4byte 0x020284B0
_02002638:
	movs r0, #1
	strh r0, [r4, #0x1c]
_0200263C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_02002644
sub_02002644: @ 0x02002644
	push {r4, r5, r6, r7, lr}
	movs r0, #6
	bl sub_020072B4
	lsls r0, r0, #2
	ldr r1, _020026A4 @ =gUnknown_0200AF4E
	adds r4, r0, r1
	movs r0, #4
	bl sub_020072B4
	ldr r5, _020026A8 @ =gUnknown_0200B32C
	movs r3, #1
	ldr r1, _020026AC @ =gUnknown_0200AF24
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r5]
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	ldrb r0, [r4]
	cmp r0, #0
	beq _02002696
	movs r7, #3
	adds r6, r5, #0
	adds r5, r1, #0
_02002676:
	adds r2, r2, r0
	ands r2, r7
	adds r1, r3, #0
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	lsls r1, r1, #1
	adds r1, r1, r6
	lsls r0, r2, #1
	adds r0, r0, r5
	ldrh r0, [r0]
	strh r0, [r1]
	adds r4, #1
	ldrb r0, [r4]
	cmp r0, #0
	bne _02002676
_02002696:
	ldr r0, _020026B0 @ =0x020284B0
	adds r0, #0x40
	movs r1, #5
	strh r1, [r0]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_020026A4: .4byte gUnknown_0200AF4E
_020026A8: .4byte gUnknown_0200B32C
_020026AC: .4byte gUnknown_0200AF24
_020026B0: .4byte 0x020284B0

	thumb_func_start sub_020026B4
sub_020026B4: @ 0x020026B4
	push {lr}
	ldr r1, _020026E4 @ =0x020284B0
	ldrh r0, [r1, #0x18]
	cmp r0, #0
	bne _020026DE
	ldrh r0, [r1, #2]
	cmp r0, #0
	beq _020026DE
	cmp r0, #1
	bne _020026DE
	ldrh r0, [r1, #6]
	adds r0, #1
	strh r0, [r1, #6]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xa
	bls _020026DA
	movs r0, #0xa
	strh r0, [r1, #6]
_020026DA:
	bl sub_02002644
_020026DE:
	pop {r0}
	bx r0
	.align 2, 0
_020026E4: .4byte 0x020284B0

	thumb_func_start sub_020026E8
sub_020026E8: @ 0x020026E8
	push {r4, lr}
	ldr r4, _02002700 @ =0x020284B0
	ldrh r0, [r4, #2]
	cmp r0, #0
	bne _02002704
	ldrh r0, [r4, #0x20]
	adds r0, #1
	strh r0, [r4, #0x20]
	bl sub_0200251C
	b _02002756
	.align 2, 0
_02002700: .4byte 0x020284B0
_02002704:
	cmp r0, #1
	bne _02002748
	ldr r0, [r4, #0x10]
	adds r0, #1
	str r0, [r4, #0x10]
	ldr r1, _02002740 @ =0x000F423F
	cmp r0, r1
	bls _02002716
	str r1, [r4, #0x10]
_02002716:
	ldrh r0, [r4, #0x20]
	adds r0, #1
	strh r0, [r4, #0x20]
	bl sub_0200251C
	ldrh r0, [r4, #0x20]
	ldrh r1, [r4, #4]
	cmp r0, r1
	blo _02002756
	movs r0, #0
	strh r0, [r4, #0x20]
	ldr r1, _02002744 @ =gUnknown_0200AF2E
	ldrh r0, [r4, #6]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r4, #0xe]
	bl sub_020026B4
	b _02002756
	.align 2, 0
_02002740: .4byte 0x000F423F
_02002744: .4byte gUnknown_0200AF2E
_02002748:
	cmp r0, #2
	bne _02002756
	ldrh r0, [r4, #0x20]
	adds r0, #1
	strh r0, [r4, #0x20]
	bl sub_0200251C
_02002756:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0200275C
sub_0200275C: @ 0x0200275C
	bx lr
	.align 2, 0

	thumb_func_start sub_02002760
sub_02002760: @ 0x02002760
	push {lr}
	ldr r1, _0200277C @ =0x020284B0
	ldrh r0, [r1, #2]
	cmp r0, #0
	beq _0200276E
	cmp r0, #2
	bne _02002780
_0200276E:
	ldrh r0, [r1, #0x20]
	ldrh r1, [r1, #4]
	cmp r0, r1
	blo _02002780
	movs r0, #1
	b _02002782
	.align 2, 0
_0200277C: .4byte 0x020284B0
_02002780:
	movs r0, #0
_02002782:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_02002788
sub_02002788: @ 0x02002788
	push {r4, r5, lr}
	ldr r5, _020027A0 @ =0x020284B0
	ldrh r4, [r5, #8]
	adds r0, r4, #0
	movs r1, #0x3c
	bl sub_02009604
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _020027A4
	movs r0, #1
	b _020027AA
	.align 2, 0
_020027A0: .4byte 0x020284B0
_020027A4:
	subs r0, r4, #1
	strh r0, [r5, #8]
	movs r0, #0
_020027AA:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_020027B0
sub_020027B0: @ 0x020027B0
	push {r4, lr}
	ldr r4, _020027C8 @ =0x020284B0
	ldrh r0, [r4, #2]
	cmp r0, #1
	bne _020027CC
	bl sub_020081F4
	ldr r1, [r4, #0x10]
	cmp r1, r0
	bls _020027CC
	movs r0, #1
	b _020027CE
	.align 2, 0
_020027C8: .4byte 0x020284B0
_020027CC:
	movs r0, #0
_020027CE:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_020027D4
sub_020027D4: @ 0x020027D4
	push {r4, r5, lr}
	ldr r5, [sp, #0xc]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	movs r4, #0
	strh r1, [r0, #0x30]
	strh r2, [r0, #0x32]
	str r4, [r0, #0x14]
	str r4, [r0, #0x10]
	str r4, [r0, #0x20]
	strh r3, [r0, #0x36]
	strh r3, [r0, #0x34]
	strh r5, [r0, #0x38]
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_020027F4
sub_020027F4: @ 0x020027F4
	push {r4, lr}
	adds r4, r0, #0
	ldrh r1, [r4, #0x34]
	cmp r1, #0
	beq _0200285C
	ldrh r0, [r4, #0x38]
	cmp r0, #0
	beq _0200280A
	subs r0, #1
	strh r0, [r4, #0x38]
	b _0200285C
_0200280A:
	subs r0, r1, #1
	strh r0, [r4, #0x34]
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	bne _0200282C
	movs r1, #0x30
	ldrsh r0, [r4, r1]
	str r0, [r4, #8]
	movs r1, #0x32
	ldrsh r0, [r4, r1]
	ldr r1, [r4, #0x20]
	adds r0, r0, r1
	str r0, [r4, #0xc]
	str r2, [r4, #0x14]
	str r2, [r4, #0x10]
	b _0200285C
_0200282C:
	ldrh r1, [r4, #0x36]
	ldrh r3, [r4, #0x34]
	subs r3, r1, r3
	movs r2, #0x30
	ldrsh r0, [r4, r2]
	ldr r2, [r4, #8]
	subs r0, r0, r2
	muls r0, r3, r0
	bl sub_0200956C
	str r0, [r4, #0x10]
	ldrh r1, [r4, #0x36]
	ldrh r3, [r4, #0x34]
	subs r3, r1, r3
	movs r2, #0x32
	ldrsh r0, [r4, r2]
	ldr r2, [r4, #0xc]
	subs r0, r0, r2
	muls r0, r3, r0
	bl sub_0200956C
	ldr r1, [r4, #0x20]
	adds r0, r0, r1
	str r0, [r4, #0x14]
_0200285C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_02002864
sub_02002864: @ 0x02002864
	push {r4, r5, lr}
	adds r5, r0, #0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	ldrh r0, [r5, #0x28]
	cmp r0, r4
	beq _0200287C
	ldr r0, [r5, #4]
	adds r1, r4, #0
	bl sub_02005958
	strh r4, [r5, #0x28]
_0200287C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_02002884
sub_02002884: @ 0x02002884
	push {r4, r5, lr}
	adds r3, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	movs r1, #0
	movs r2, #0
_02002890:
	strb r2, [r0]
	adds r0, #1
	adds r1, #1
	cmp r1, #0x5f
	bls _02002890
	movs r0, #1
	str r0, [r3]
	str r4, [r3, #8]
	str r4, [r3, #0x18]
	str r5, [r3, #0xc]
	str r5, [r3, #0x1c]
	movs r0, #0
	strh r0, [r3, #0x28]
	movs r0, #0xff
	strh r0, [r3, #0x2e]
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_020028B4
sub_020028B4: @ 0x020028B4
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r5, r1, r0
	ldr r6, [r5, #8]
	cmp r6, #0
	bne _020028E0
	ldr r0, [r4, #4]
	ldr r1, _020028DC @ =0x02028000
	ldr r1, [r1]
	ldr r2, [r5, #4]
	movs r3, #0
	bl sub_02004CE8
	b _020028F2
	.align 2, 0
_020028DC: .4byte 0x02028000
_020028E0:
	ldr r0, [r4, #4]
	ldr r1, _0200291C @ =0x02028000
	ldr r1, [r1]
	ldr r2, [r5, #4]
	movs r3, #0
	str r3, [sp]
	adds r3, r6, #0
	bl sub_02004D44
_020028F2:
	str r0, [r4, #4]
	ldr r0, [r5]
	str r0, [r4, #0x5c]
	ldr r0, [r4, #4]
	movs r1, #1
	bl sub_02005758
	ldr r0, [r4, #4]
	movs r1, #0xd8
	lsls r1, r1, #2
	bl sub_02005790
	ldr r0, [r4, #4]
	movs r1, #7
	bl sub_020057A0
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0200291C: .4byte 0x02028000

	thumb_func_start sub_02002920
sub_02002920: @ 0x02002920
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, [r4, #4]
	bl sub_02005884
	ldr r1, [r4, #0x5c]
	lsls r0, r0, #2
	adds r0, r0, r1
	movs r3, #0xb6
	lsls r3, r3, #9
	ldr r1, _02002950 @ =0x02028000
	ldr r1, [r1]
	ldr r2, [r0]
	movs r0, #1
	str r0, [sp]
	adds r0, r3, #0
	movs r3, #1
	bl sub_02006C14
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_02002950: .4byte 0x02028000

	thumb_func_start sub_02002954
sub_02002954: @ 0x02002954
	push {r4, r5, lr}
	ldr r1, _02002980 @ =0x020284B0
	movs r0, #0
	movs r2, #0
_0200295C:
	strb r2, [r1]
	adds r1, #1
	adds r0, #1
	cmp r0, #0x53
	bls _0200295C
	bl sub_0200818C
	ldr r4, _02002980 @ =0x020284B0
	movs r5, #0
	strh r0, [r4, #2]
	bl sub_020081C0
	ldrh r1, [r4, #2]
	cmp r1, #0
	bne _02002988
	ldr r0, _02002984 @ =0x00000743
	b _0200299E
	.align 2, 0
_02002980: .4byte 0x020284B0
_02002984: .4byte 0x00000743
_02002988:
	cmp r1, #1
	bne _0200299C
	ldr r0, _02002998 @ =0x00000E4B
	strh r0, [r4, #8]
	movs r0, #0xa
	strh r0, [r4, #4]
	strh r1, [r4, #6]
	b _020029A8
	.align 2, 0
_02002998: .4byte 0x00000E4B
_0200299C:
	ldr r0, _020029B8 @ =0x000004EB
_0200299E:
	strh r0, [r4, #8]
	movs r0, #0xa
	strh r0, [r4, #4]
	movs r0, #1
	strh r0, [r4, #6]
_020029A8:
	ldr r0, _020029BC @ =0x020284B0
	movs r2, #0
	movs r1, #0x30
	strh r1, [r0, #0x14]
	strh r2, [r0]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_020029B8: .4byte 0x000004EB
_020029BC: .4byte 0x020284B0

	thumb_func_start sub_020029C0
sub_020029C0: @ 0x020029C0
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r6, _02002A24 @ =0x020284B0
	ldrh r0, [r6]
	cmp r0, #1
	bne _02002A2C
	ldr r0, [r5, #8]
	adds r0, #1
	str r0, [r5, #8]
	cmp r0, #0x24
	beq _020029DA
	b _02002C88
_020029DA:
	ldrh r0, [r6, #0x18]
	cmp r0, #0
	bne _020029E2
	b _02002C88
_020029E2:
	ldr r0, [r5, #4]
	ldr r1, _02002A28 @ =0x02028000
	ldr r1, [r1]
	movs r2, #0x44
	movs r3, #0
	bl sub_02004CE8
	str r0, [r5, #4]
	movs r1, #1
	bl sub_02005758
	ldr r0, [r5, #4]
	movs r1, #0x80
	bl sub_02005790
	ldr r0, [r5, #4]
	movs r1, #7
	bl sub_020057A0
	ldr r0, [r5, #4]
	movs r1, #2
	bl sub_020057B0
	ldr r0, [r5, #4]
	movs r1, #7
	str r1, [r0, #8]
	movs r1, #0
	bl sub_020057B8
	movs r0, #0
	str r0, [r5, #0x5c]
	strh r0, [r6, #0x18]
	b _02002C88
	.align 2, 0
_02002A24: .4byte 0x020284B0
_02002A28: .4byte 0x02028000
_02002A2C:
	cmp r0, #5
	bne _02002A44
	ldr r0, [r5, #0x4c]
	cmp r0, #0
	beq _02002A38
	b _02002C88
_02002A38:
	ldr r1, _02002A40 @ =gUnknown_0200B308
	adds r0, r5, #0
	movs r2, #1
	b _02002A56
	.align 2, 0
_02002A40: .4byte gUnknown_0200B308
_02002A44:
	cmp r0, #6
	bne _02002A80
	ldr r0, [r5, #0x4c]
	cmp r0, #0
	beq _02002A50
	b _02002C88
_02002A50:
	ldr r1, _02002A7C @ =gUnknown_0200B308
	adds r0, r5, #0
	movs r2, #2
_02002A56:
	bl sub_020028B4
	ldr r0, [r5, #4]
	movs r1, #2
	bl sub_020057B0
	ldr r0, [r5, #4]
	movs r1, #1
	rsbs r1, r1, #0
	bl sub_020058E0
	ldr r1, [r5, #4]
	movs r0, #7
	str r0, [r1, #8]
	movs r0, #1
	strh r0, [r5, #0x2e]
	str r0, [r5, #0x4c]
	b _02002C88
	.align 2, 0
_02002A7C: .4byte gUnknown_0200B308
_02002A80:
	cmp r0, #3
	beq _02002A86
	b _02002C88
_02002A86:
	bl sub_02002560
	ldrh r0, [r6, #0x1a]
	cmp r0, #4
	bne _02002B4C
	ldr r4, [r5, #0x48]
	cmp r4, #0
	bne _02002AF4
	ldr r0, _02002AE8 @ =0x0202CEF8
	ldrh r1, [r0]
	movs r6, #1
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _02002B4C
	ldr r0, _02002AEC @ =0x0000029D
	bl sub_0200880C
	ldr r0, [r5, #4]
	ldr r1, _02002AF0 @ =0x02028000
	ldr r1, [r1]
	str r4, [sp]
	movs r2, #0x44
	movs r3, #0x45
	bl sub_02004D44
	str r0, [r5, #4]
	movs r1, #1
	bl sub_02005758
	ldr r0, [r5, #4]
	movs r1, #0x80
	bl sub_02005790
	ldr r0, [r5, #4]
	movs r1, #7
	bl sub_020057A0
	ldr r0, [r5, #4]
	movs r1, #2
	bl sub_020057B0
	ldr r1, [r5, #4]
	movs r0, #7
	str r0, [r1, #8]
	strh r6, [r5, #0x2e]
	str r4, [r5, #0x5c]
	str r6, [r5, #0x48]
	b _02002C88
	.align 2, 0
_02002AE8: .4byte 0x0202CEF8
_02002AEC: .4byte 0x0000029D
_02002AF0: .4byte 0x02028000
_02002AF4:
	cmp r4, #1
	bne _02002B34
	ldr r0, [r5, #4]
	bl sub_02005898
	cmp r0, #2
	beq _02002B04
	b _02002C88
_02002B04:
	ldr r0, _02002B14 @ =0x0000029F
	bl sub_0200880C
	ldrh r0, [r6, #0x1c]
	cmp r0, #0
	bne _02002B18
	strh r4, [r6, #0x1e]
	b _02002B22
	.align 2, 0
_02002B14: .4byte 0x0000029F
_02002B18:
	movs r0, #4
	bl sub_020072B4
	adds r0, #2
	strh r0, [r6, #0x1e]
_02002B22:
	ldr r0, _02002B30 @ =0x020284B0
	movs r1, #1
	strh r1, [r0, #0x22]
	movs r0, #2
	str r0, [r5, #0x48]
	b _02002C88
	.align 2, 0
_02002B30: .4byte 0x020284B0
_02002B34:
	cmp r4, #2
	bne _02002B4C
	ldrh r4, [r5, #0x2e]
	cmp r4, #0
	beq _02002B40
	b _02002C88
_02002B40:
	strh r4, [r6, #0x22]
	bl sub_02002550
	strh r4, [r6, #0x1a]
	str r4, [r5, #0x48]
	b _02002C88
_02002B4C:
	ldr r0, _02002B80 @ =0x0202B210
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _02002B70
	ldr r0, _02002B84 @ =0x020284B0
	ldrh r1, [r0, #0x1a]
	adds r2, r0, #0
	cmp r1, #0
	beq _02002B6C
	ldr r0, [r5, #0x44]
	cmp r0, #0
	bne _02002B6C
	movs r0, #1
	str r0, [r5, #0x44]
_02002B6C:
	movs r0, #0
	strh r0, [r2, #0x1c]
_02002B70:
	ldrh r0, [r5, #0x2a]
	adds r4, r0, #0
	cmp r4, #0
	beq _02002B88
	subs r0, #1
	strh r0, [r5, #0x2a]
	b _02002C88
	.align 2, 0
_02002B80: .4byte 0x0202B210
_02002B84: .4byte 0x020284B0
_02002B88:
	ldr r0, [r5, #0x44]
	cmp r0, #0
	beq _02002BBE
	ldr r6, _02002BA0 @ =0x020284B0
	ldrh r0, [r6, #0x1a]
	cmp r0, #5
	bne _02002BA4
	bl sub_02002550
	strh r4, [r6, #0x1a]
	str r4, [r5, #0x44]
	b _02002BC2
	.align 2, 0
_02002BA0: .4byte 0x020284B0
_02002BA4:
	subs r0, #1
	strh r0, [r6, #0x1a]
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	bne _02002BB8
	bl sub_02002550
	strh r4, [r6, #0x1a]
	str r4, [r5, #0x44]
_02002BB8:
	movs r0, #4
	strh r0, [r5, #0x2a]
	b _02002BC2
_02002BBE:
	bl sub_02002600
_02002BC2:
	ldr r0, _02002BD4 @ =0x020284B0
	ldrh r0, [r0, #0x1a]
	cmp r0, #4
	bhi _02002C02
	lsls r0, r0, #2
	ldr r1, _02002BD8 @ =_02002BDC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_02002BD4: .4byte 0x020284B0
_02002BD8: .4byte _02002BDC
_02002BDC: @ jump table
	.4byte _02002BF0 @ case 0
	.4byte _02002BF4 @ case 1
	.4byte _02002BF8 @ case 2
	.4byte _02002BFC @ case 3
	.4byte _02002C00 @ case 4
_02002BF0:
	movs r7, #0
	b _02002C02
_02002BF4:
	movs r7, #1
	b _02002C02
_02002BF8:
	movs r7, #2
	b _02002C02
_02002BFC:
	movs r7, #3
	b _02002C02
_02002C00:
	movs r7, #4
_02002C02:
	ldr r0, [r5, #4]
	bl sub_02005884
	cmp r7, r0
	beq _02002C88
	cmp r7, #2
	beq _02002C30
	cmp r7, #2
	bgt _02002C1A
	cmp r7, #1
	beq _02002C24
	b _02002C50
_02002C1A:
	cmp r7, #3
	beq _02002C3C
	cmp r7, #4
	beq _02002C48
	b _02002C50
_02002C24:
	ldr r0, _02002C2C @ =0x00000299
	bl sub_0200880C
	b _02002C50
	.align 2, 0
_02002C2C: .4byte 0x00000299
_02002C30:
	ldr r0, _02002C38 @ =0x0000029A
	bl sub_0200880C
	b _02002C50
	.align 2, 0
_02002C38: .4byte 0x0000029A
_02002C3C:
	ldr r0, _02002C44 @ =0x0000029B
	bl sub_0200880C
	b _02002C50
	.align 2, 0
_02002C44: .4byte 0x0000029B
_02002C48:
	movs r0, #0xa7
	lsls r0, r0, #2
	bl sub_0200880C
_02002C50:
	ldr r0, [r5, #4]
	ldr r1, _02002C90 @ =0x02028000
	ldr r1, [r1]
	movs r2, #0x44
	adds r3, r7, #0
	bl sub_02004CE8
	str r0, [r5, #4]
	movs r1, #1
	bl sub_02005758
	ldr r0, [r5, #4]
	movs r1, #0x80
	bl sub_02005790
	ldr r0, [r5, #4]
	movs r1, #7
	bl sub_020057A0
	ldr r0, [r5, #4]
	movs r1, #2
	bl sub_020057B0
	ldr r1, [r5, #4]
	movs r0, #7
	str r0, [r1, #8]
	movs r0, #0
	str r0, [r5, #0x5c]
_02002C88:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_02002C90: .4byte 0x02028000

	thumb_func_start sub_02002C94
sub_02002C94: @ 0x02002C94
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, _02002CB0 @ =0x020284B0
	ldrh r0, [r1]
	cmp r0, #3
	bhi _02002D0A
	ldrh r0, [r1, #0x1a]
	cmp r0, #4
	bhi _02002CDE
	lsls r0, r0, #2
	ldr r1, _02002CB4 @ =_02002CB8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_02002CB0: .4byte 0x020284B0
_02002CB4: .4byte _02002CB8
_02002CB8: @ jump table
	.4byte _02002CCC @ case 0
	.4byte _02002CD0 @ case 1
	.4byte _02002CD4 @ case 2
	.4byte _02002CD8 @ case 3
	.4byte _02002CDC @ case 4
_02002CCC:
	movs r5, #4
	b _02002CDE
_02002CD0:
	movs r5, #0
	b _02002CDE
_02002CD4:
	movs r5, #1
	b _02002CDE
_02002CD8:
	movs r5, #2
	b _02002CDE
_02002CDC:
	movs r5, #3
_02002CDE:
	ldr r0, [r4, #0x44]
	cmp r5, r0
	beq _02002D0A
	ldr r0, [r4, #4]
	ldr r1, _02002D10 @ =0x02028000
	ldr r1, [r1]
	movs r2, #0x2d
	adds r3, r5, #0
	bl sub_02004CE8
	str r0, [r4, #4]
	movs r1, #1
	bl sub_02005758
	ldr r0, [r4, #4]
	movs r1, #2
	bl sub_020057B0
	ldr r1, [r4, #4]
	movs r0, #6
	str r0, [r1, #8]
	str r5, [r4, #0x44]
_02002D0A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_02002D10: .4byte 0x02028000

	thumb_func_start sub_02002D14
sub_02002D14: @ 0x02002D14
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _02002D40 @ =0x020284B0
	ldrh r0, [r1]
	cmp r0, #2
	bls _02002D48
	ldrh r0, [r1, #0x3e]
	cmp r0, #0
	bne _02002D48
	movs r0, #0xff
	strh r0, [r4, #0x2e]
	movs r1, #0x2c
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _02002D4C
	ldr r0, _02002D44 @ =0x0000029E
	bl sub_0200880C
	movs r0, #1
	strh r0, [r4, #0x2c]
	b _02002D4C
	.align 2, 0
_02002D40: .4byte 0x020284B0
_02002D44: .4byte 0x0000029E
_02002D48:
	movs r0, #0
	strh r0, [r4, #0x2e]
_02002D4C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_02002D54
sub_02002D54: @ 0x02002D54
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r5, _02002D78 @ =0x020284B0
	ldrh r0, [r5, #8]
	movs r1, #0x3c
	bl sub_02009604
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _02002E3A
	ldrh r0, [r5, #0xe]
	cmp r0, #0
	bne _02002D7C
	ldr r0, [r4, #0x44]
	cmp r0, #0
	bne _02002DDA
	b _02002E1E
	.align 2, 0
_02002D78: .4byte 0x020284B0
_02002D7C:
	ldr r0, _02002DF0 @ =0x00000241
	bl sub_0200880C
	ldrh r1, [r5, #0xe]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	movs r6, #0
	strh r0, [r5, #0xc]
	ldr r0, [r4, #4]
	ldr r1, _02002DF4 @ =0x02028000
	ldr r1, [r1]
	ldrh r3, [r5, #0xe]
	subs r3, #1
	movs r2, #0x4d
	bl sub_02004CE8
	str r0, [r4, #4]
	movs r1, #1
	bl sub_02005758
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	bl sub_02005790
	ldr r0, [r4, #4]
	movs r1, #6
	bl sub_020057A0
	ldr r0, [r4, #4]
	movs r1, #1
	bl sub_020057B0
	ldrh r0, [r5, #0xc]
	ldrh r1, [r5, #8]
	adds r0, r0, r1
	strh r0, [r5, #8]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _02002DF8 @ =0x0000176F
	cmp r0, r1
	bls _02002DD4
	strh r1, [r5, #8]
_02002DD4:
	strh r6, [r5, #0xe]
	strh r6, [r5, #0xc]
	str r6, [r4, #0x44]
_02002DDA:
	ldr r0, [r4, #0x44]
	cmp r0, #0x1d
	bgt _02002DFC
	adds r0, #1
	str r0, [r4, #0x44]
	movs r1, #5
	bl sub_0200956C
	rsbs r0, r0, #0
	str r0, [r4, #0x14]
	b _02002E14
	.align 2, 0
_02002DF0: .4byte 0x00000241
_02002DF4: .4byte 0x02028000
_02002DF8: .4byte 0x0000176F
_02002DFC:
	cmp r0, #0x3b
	bgt _02002E28
	adds r0, #1
	str r0, [r4, #0x44]
	movs r1, #5
	bl sub_0200956C
	rsbs r0, r0, #0
	str r0, [r4, #0x14]
	ldrh r0, [r4, #0x28]
	cmp r0, #1
	bne _02002E1E
_02002E14:
	adds r0, r4, #0
	movs r1, #0
	bl sub_02002864
	b _02002E3A
_02002E1E:
	adds r0, r4, #0
	movs r1, #1
	bl sub_02002864
	b _02002E3A
_02002E28:
	movs r0, #0
	str r0, [r4, #0x44]
	str r0, [r4, #0x14]
	adds r0, r4, #0
	movs r1, #1
	bl sub_02002864
	bl sub_0200251C
_02002E3A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_02002E40
sub_02002E40: @ 0x02002E40
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _02002E80 @ =0x020284B0
	ldrh r0, [r0, #0x22]
	movs r5, #0x11
	cmp r0, #0
	beq _02002E50
	movs r5, #0x12
_02002E50:
	ldr r0, [r4, #4]
	bl sub_02005884
	cmp r5, r0
	beq _02002E78
	ldr r0, [r4, #4]
	ldr r1, _02002E84 @ =0x02028000
	ldr r1, [r1]
	movs r2, #0x2d
	adds r3, r5, #0
	bl sub_02004CE8
	str r0, [r4, #4]
	movs r1, #1
	bl sub_02005758
	ldr r0, [r4, #4]
	movs r1, #2
	bl sub_020057B0
_02002E78:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_02002E80: .4byte 0x020284B0
_02002E84: .4byte 0x02028000

	thumb_func_start sub_02002E88
sub_02002E88: @ 0x02002E88
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	ldrh r0, [r4, #0x2a]
	cmp r0, #0
	beq _02002E9A
	subs r0, #1
	strh r0, [r4, #0x2a]
	b _02002F10
_02002E9A:
	ldr r0, _02002EB0 @ =0x020284B0
	ldrh r1, [r0, #0x1e]
	cmp r1, #0
	beq _02002EB4
	movs r0, #0x20
	strh r0, [r4, #0x2a]
	movs r5, #0x10
	cmp r1, #1
	bne _02002EB6
	movs r5, #0xf
	b _02002EB6
	.align 2, 0
_02002EB0: .4byte 0x020284B0
_02002EB4:
	movs r5, #0xe
_02002EB6:
	cmp r5, #0xf
	bne _02002EE8
	ldr r0, [r4, #4]
	ldr r1, _02002EE4 @ =0x02028000
	ldr r1, [r1]
	movs r2, #0
	str r2, [sp]
	movs r2, #0x2d
	movs r3, #0x2f
	bl sub_02004D44
	str r0, [r4, #4]
	movs r1, #1
	bl sub_02005758
	ldr r0, [r4, #4]
	movs r1, #2
	bl sub_020057B0
	movs r0, #4
	strh r0, [r4, #0x2e]
	b _02002F10
	.align 2, 0
_02002EE4: .4byte 0x02028000
_02002EE8:
	ldr r0, [r4, #4]
	bl sub_02005884
	cmp r5, r0
	beq _02002F10
	ldr r0, [r4, #4]
	ldr r1, _02002F18 @ =0x02028000
	ldr r1, [r1]
	movs r2, #0x2d
	adds r3, r5, #0
	bl sub_02004CE8
	str r0, [r4, #4]
	movs r1, #1
	bl sub_02005758
	ldr r0, [r4, #4]
	movs r1, #2
	bl sub_020057B0
_02002F10:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_02002F18: .4byte 0x02028000

	thumb_func_start sub_02002F1C
sub_02002F1C: @ 0x02002F1C
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldrh r0, [r5, #0x2a]
	cmp r0, #0
	beq _02002F2E
	subs r0, #1
	strh r0, [r5, #0x2a]
	b _02002FAE
_02002F2E:
	ldr r0, _02002F44 @ =0x020284B0
	ldrh r1, [r0, #0x1e]
	cmp r1, #0
	beq _02002F48
	movs r0, #0x20
	strh r0, [r5, #0x2a]
	movs r4, #0x15
	cmp r1, #1
	bne _02002F4A
	movs r4, #0x14
	b _02002F4A
	.align 2, 0
_02002F44: .4byte 0x020284B0
_02002F48:
	movs r4, #0x13
_02002F4A:
	cmp r4, #0x14
	bne _02002F80
	ldr r0, [r5, #4]
	ldr r1, _02002F7C @ =0x02028000
	ldr r1, [r1]
	movs r4, #0
	str r4, [sp]
	movs r2, #0x2d
	movs r3, #0x30
	bl sub_02004D44
	str r0, [r5, #4]
	movs r1, #1
	bl sub_02005758
	ldr r0, [r5, #4]
	movs r1, #3
	bl sub_020057B0
	ldr r0, [r5, #4]
	str r4, [r0, #8]
	movs r0, #4
	strh r0, [r5, #0x2e]
	b _02002FAE
	.align 2, 0
_02002F7C: .4byte 0x02028000
_02002F80:
	ldr r0, [r5, #4]
	bl sub_02005884
	cmp r4, r0
	beq _02002FAE
	ldr r0, [r5, #4]
	ldr r1, _02002FB8 @ =0x02028000
	ldr r1, [r1]
	movs r2, #0x2d
	adds r3, r4, #0
	bl sub_02004CE8
	str r0, [r5, #4]
	movs r1, #1
	bl sub_02005758
	ldr r0, [r5, #4]
	movs r1, #3
	bl sub_020057B0
	ldr r1, [r5, #4]
	movs r0, #0
	str r0, [r1, #8]
_02002FAE:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_02002FB8: .4byte 0x02028000

	thumb_func_start sub_02002FBC
sub_02002FBC: @ 0x02002FBC
	bx lr
	.align 2, 0

	thumb_func_start sub_02002FC0
sub_02002FC0: @ 0x02002FC0
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r1, #0x2c
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bne _02003056
	ldr r0, _02002FE0 @ =0x020284B0
	ldrh r2, [r0, #0x1e]
	adds r6, r0, #0
	cmp r2, #0
	bne _02002FE4
	adds r0, r5, #0
	movs r1, #1
	bl sub_02002864
	b _02003178
	.align 2, 0
_02002FE0: .4byte 0x020284B0
_02002FE4:
	ldrh r0, [r6, #2]
	cmp r0, #1
	bne _02002FFA
	ldrh r1, [r6, #0x20]
	ldrh r0, [r6, #4]
	subs r0, #1
	cmp r1, r0
	blt _02002FFA
	cmp r2, #1
	bne _02002FFA
	strh r2, [r6, #0x28]
_02002FFA:
	ldr r0, [r5, #0x18]
	str r0, [r5, #8]
	ldr r0, [r5, #0x1c]
	str r0, [r5, #0xc]
	movs r4, #0
	str r4, [r5, #0x14]
	str r4, [r5, #0x10]
	ldrh r3, [r6, #0x1e]
	str r3, [r5, #0x44]
	ldr r0, [r5, #4]
	ldr r1, _020030E4 @ =0x02028000
	ldr r1, [r1]
	adds r3, #8
	movs r2, #0x2d
	bl sub_02004CE8
	str r0, [r5, #4]
	movs r1, #1
	bl sub_02005758
	ldr r0, [r5, #4]
	movs r1, #3
	bl sub_020057B0
	ldr r1, [r5, #4]
	movs r0, #8
	str r0, [r1, #8]
	movs r0, #4
	strh r0, [r5, #0x3a]
	ldr r0, _020030E8 @ =0x0000FFD8
	strh r0, [r5, #0x3c]
	adds r0, r5, #0
	adds r0, #0x42
	strh r4, [r0]
	adds r1, r5, #0
	adds r1, #0x40
	movs r0, #2
	strh r0, [r1]
	strh r4, [r5, #0x3e]
	strh r4, [r6, #0x1e]
	movs r0, #1
	strh r0, [r5, #0x2c]
	adds r0, r5, #0
	movs r1, #0
	bl sub_02002864
_02003056:
	movs r2, #0x2c
	ldrsh r0, [r5, r2]
	cmp r0, #1
	bne _02003148
	ldr r1, _020030EC @ =0x020284B0
	ldrh r0, [r1, #0x20]
	cmp r0, #9
	bne _02003076
	ldr r0, [r5, #0x44]
	cmp r0, #0
	beq _02003076
	ldrh r0, [r1, #8]
	cmp r0, #0x3d
	bhi _02003076
	movs r0, #0x3e
	strh r0, [r1, #8]
_02003076:
	ldrh r4, [r5, #0x3a]
	ldrh r0, [r5, #0x3c]
	adds r4, r4, r0
	strh r4, [r5, #0x3c]
	movs r1, #0x3c
	ldrsh r0, [r5, r1]
	movs r1, #0xa
	bl sub_0200956C
	ldrh r1, [r5, #0x3e]
	adds r1, r1, r0
	strh r1, [r5, #0x3e]
	lsls r4, r4, #0x10
	cmp r4, #0
	ble _020030A2
	ldr r0, [r5, #4]
	movs r1, #2
	bl sub_020057B0
	ldr r1, [r5, #4]
	movs r0, #8
	str r0, [r1, #8]
_020030A2:
	adds r6, r5, #0
	adds r6, #0x42
	movs r2, #0x3e
	ldrsh r1, [r5, r2]
	movs r2, #0
	ldrsh r0, [r6, r2]
	adds r4, r5, #0
	adds r4, #0x40
	cmp r1, r0
	ble _020030D0
	movs r1, #0x3c
	ldrsh r0, [r5, r1]
	rsbs r0, r0, #0
	lsls r0, r0, #2
	movs r1, #0xa
	bl sub_0200956C
	strh r0, [r5, #0x3c]
	ldrh r0, [r6]
	strh r0, [r5, #0x3e]
	ldrh r0, [r4]
	subs r0, #1
	strh r0, [r4]
_020030D0:
	movs r2, #0x3e
	ldrsh r0, [r5, r2]
	str r0, [r5, #0x14]
	movs r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, #2
	bne _020030F0
	ldr r0, [r5, #8]
	adds r0, #3
	b _020030F4
	.align 2, 0
_020030E4: .4byte 0x02028000
_020030E8: .4byte 0x0000FFD8
_020030EC: .4byte 0x020284B0
_020030F0:
	ldr r0, [r5, #8]
	adds r0, #1
_020030F4:
	str r0, [r5, #8]
	movs r2, #0
	ldrsh r0, [r4, r2]
	cmp r0, #1
	bne _02003126
	ldr r0, [r5, #0x44]
	cmp r0, #1
	bne _02003112
	movs r0, #0
	str r0, [r5, #0x44]
	ldr r0, _02003140 @ =0x00000231
	bl sub_0200880C
	bl sub_020026E8
_02003112:
	ldr r0, [r5, #0x44]
	cmp r0, #1
	bls _02003126
	movs r0, #0
	str r0, [r5, #0x44]
	ldr r0, _02003144 @ =0x0000023A
	bl sub_0200880C
	bl sub_0200275C
_02003126:
	movs r0, #0
	ldrsh r2, [r4, r0]
	cmp r2, #0
	bne _02003178
	ldr r0, [r5, #0xc]
	ldr r1, [r5, #0x14]
	adds r0, r0, r1
	str r0, [r5, #0xc]
	str r2, [r5, #0x14]
	str r2, [r5, #0x48]
	movs r0, #2
	b _02003176
	.align 2, 0
_02003140: .4byte 0x00000231
_02003144: .4byte 0x0000023A
_02003148:
	cmp r0, #2
	bne _02003178
	ldr r1, [r5, #0x48]
	cmp r1, #0
	beq _02003158
	ldr r0, [r5, #8]
	adds r0, #2
	b _0200315C
_02003158:
	ldr r0, [r5, #8]
	adds r0, #1
_0200315C:
	str r0, [r5, #8]
	adds r0, r1, #1
	str r0, [r5, #0x48]
	cmp r0, #1
	ble _0200316A
	movs r0, #0
	str r0, [r5, #0x48]
_0200316A:
	ldr r1, [r5, #8]
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	ble _02003178
	movs r0, #0
_02003176:
	strh r0, [r5, #0x2c]
_02003178:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_02003180
sub_02003180: @ 0x02003180
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x2a]
	cmp r0, #0
	beq _020031A0
	subs r0, #1
	strh r0, [r4, #0x2a]
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	bne _0200322E
	ldr r0, _0200319C @ =0x020284B0
	strh r1, [r0, #0x28]
	b _0200322E
	.align 2, 0
_0200319C: .4byte 0x020284B0
_020031A0:
	adds r0, r4, #0
	movs r1, #0
	bl sub_02002864
	ldr r0, _020031D0 @ =0x020284B0
	adds r1, r0, #0
	adds r1, #0x40
	ldrh r0, [r1]
	cmp r0, #0
	beq _0200322E
	subs r0, #1
	strh r0, [r1]
	ldr r1, _020031D4 @ =gUnknown_0200B32C
	ldrh r2, [r4, #0x26]
	lsls r0, r2, #1
	adds r0, r0, r1
	ldrh r3, [r0]
	cmp r3, #0x20
	beq _020031EA
	cmp r3, #0x20
	bgt _020031D8
	cmp r3, #0x10
	beq _020031EE
	b _020031F2
	.align 2, 0
_020031D0: .4byte 0x020284B0
_020031D4: .4byte gUnknown_0200B32C
_020031D8:
	cmp r3, #0x40
	beq _020031E2
	cmp r3, #0x80
	beq _020031E6
	b _020031F2
_020031E2:
	movs r3, #0x16
	b _020031F8
_020031E6:
	movs r3, #0x17
	b _020031F8
_020031EA:
	movs r3, #0x18
	b _020031F8
_020031EE:
	movs r3, #0x19
	b _020031F8
_020031F2:
	lsls r0, r2, #1
	adds r0, r0, r1
	ldrh r3, [r0]
_020031F8:
	ldrh r0, [r4, #0x26]
	cmp r0, #3
	bhi _0200321A
	ldr r0, [r4, #4]
	ldr r1, _02003234 @ =0x02028000
	ldr r1, [r1]
	movs r2, #0x2d
	bl sub_02004CE8
	str r0, [r4, #4]
	movs r1, #1
	bl sub_02005758
	ldr r0, [r4, #4]
	movs r1, #6
	bl sub_020057B0
_0200321A:
	ldr r0, _02003238 @ =0x020284B0
	ldrh r0, [r0]
	cmp r0, #3
	bne _0200322E
	movs r0, #6
	strh r0, [r4, #0x2a]
	adds r0, r4, #0
	movs r1, #1
	bl sub_02002864
_0200322E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_02003234: .4byte 0x02028000
_02003238: .4byte 0x020284B0

	thumb_func_start sub_0200323C
sub_0200323C: @ 0x0200323C
	push {r4, r5, lr}
	sub sp, #4
	movs r0, #0
	movs r1, #0x16
	bl sub_020017B4
	adds r5, r0, #0
	cmp r5, #0
	beq _0200327C
	movs r1, #0x10
	rsbs r1, r1, #0
	movs r2, #0x80
	bl sub_02002884
	ldr r1, _020034D0 @ =gUnknown_0200B308
	adds r0, r5, #0
	movs r2, #0
	bl sub_020028B4
	ldr r0, [r5, #4]
	movs r1, #2
	bl sub_020057B0
	ldr r0, [r5, #4]
	movs r1, #1
	bl sub_020057B8
	ldr r1, [r5, #4]
	movs r0, #7
	str r0, [r1, #8]
	movs r0, #0
	strh r0, [r5, #0x24]
_0200327C:
	movs r0, #1
	movs r1, #0x16
	bl sub_020017B4
	adds r5, r0, #0
	cmp r5, #0
	beq _020032BE
	movs r1, #0x25
	movs r2, #0x80
	bl sub_02002884
	ldr r0, _020034D4 @ =0x02028000
	ldr r1, [r0]
	movs r0, #0
	movs r2, #0x2d
	movs r3, #0
	bl sub_02004CE8
	str r0, [r5, #4]
	movs r1, #1
	bl sub_02005758
	ldr r0, [r5, #4]
	movs r1, #2
	bl sub_020057B0
	ldr r1, [r5, #4]
	movs r0, #6
	str r0, [r1, #8]
	movs r0, #0
	strh r0, [r5, #0x2e]
	movs r0, #1
	strh r0, [r5, #0x24]
_020032BE:
	movs r0, #1
	movs r1, #0x16
	bl sub_020017B4
	adds r5, r0, #0
	cmp r5, #0
	beq _02003302
	movs r1, #0x90
	movs r2, #0x80
	bl sub_02002884
	ldr r0, _020034D4 @ =0x02028000
	ldr r1, [r0]
	movs r4, #0
	str r4, [sp]
	movs r0, #0
	movs r2, #0x2d
	movs r3, #0x2e
	bl sub_02004D44
	str r0, [r5, #4]
	movs r1, #1
	bl sub_02005758
	ldr r0, [r5, #4]
	movs r1, #2
	bl sub_020057B0
	ldr r1, [r5, #4]
	movs r0, #6
	str r0, [r1, #8]
	strh r4, [r5, #0x2e]
	movs r0, #2
	strh r0, [r5, #0x24]
_02003302:
	movs r0, #2
	movs r1, #0x16
	bl sub_020017B4
	adds r5, r0, #0
	cmp r5, #0
	beq _0200334C
	movs r1, #0x79
	movs r2, #0x24
	bl sub_02002884
	ldr r0, _020034D4 @ =0x02028000
	ldr r1, [r0]
	movs r0, #0
	movs r2, #0x4d
	movs r3, #4
	bl sub_02004CE8
	str r0, [r5, #4]
	movs r1, #1
	bl sub_02005758
	ldr r0, [r5, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	bl sub_02005790
	ldr r0, [r5, #4]
	movs r1, #6
	bl sub_020057A0
	ldr r0, [r5, #4]
	movs r1, #1
	bl sub_020057B0
	movs r0, #3
	strh r0, [r5, #0x24]
_0200334C:
	movs r0, #3
	movs r1, #0x16
	bl sub_020017B4
	adds r5, r0, #0
	cmp r5, #0
	beq _02003384
	movs r1, #0x24
	movs r2, #0x80
	bl sub_02002884
	ldr r0, _020034D4 @ =0x02028000
	ldr r1, [r0]
	movs r0, #0
	movs r2, #0x2d
	movs r3, #0x12
	bl sub_02004CE8
	str r0, [r5, #4]
	movs r1, #1
	bl sub_02005758
	ldr r0, [r5, #4]
	movs r1, #2
	bl sub_020057B0
	movs r0, #4
	strh r0, [r5, #0x24]
_02003384:
	movs r0, #4
	movs r1, #0x16
	bl sub_020017B4
	adds r5, r0, #0
	cmp r5, #0
	beq _020033BC
	movs r1, #0x78
	movs r2, #0x50
	bl sub_02002884
	ldr r0, _020034D4 @ =0x02028000
	ldr r1, [r0]
	movs r0, #0
	movs r2, #0x2d
	movs r3, #0xe
	bl sub_02004CE8
	str r0, [r5, #4]
	movs r1, #1
	bl sub_02005758
	ldr r0, [r5, #4]
	movs r1, #2
	bl sub_020057B0
	movs r0, #5
	strh r0, [r5, #0x24]
_020033BC:
	movs r0, #5
	movs r1, #0x16
	bl sub_020017B4
	adds r5, r0, #0
	cmp r5, #0
	beq _020033FA
	movs r1, #0x78
	movs r2, #0x50
	bl sub_02002884
	ldr r0, _020034D4 @ =0x02028000
	ldr r1, [r0]
	movs r0, #0
	movs r2, #0x2d
	movs r3, #0x13
	bl sub_02004CE8
	str r0, [r5, #4]
	movs r1, #1
	bl sub_02005758
	ldr r0, [r5, #4]
	movs r1, #3
	bl sub_020057B0
	ldr r1, [r5, #4]
	movs r0, #0
	str r0, [r1, #8]
	movs r0, #6
	strh r0, [r5, #0x24]
_020033FA:
	movs r0, #6
	movs r1, #0x16
	bl sub_020017B4
	adds r5, r0, #0
	cmp r5, #0
	beq _02003432
	movs r1, #0xb4
	movs r2, #0x40
	bl sub_02002884
	ldr r0, _020034D4 @ =0x02028000
	ldr r1, [r0]
	movs r0, #0
	movs r2, #0x2d
	movs r3, #9
	bl sub_02004CE8
	str r0, [r5, #4]
	movs r1, #1
	bl sub_02005758
	ldr r0, [r5, #4]
	movs r1, #2
	bl sub_020057B0
	movs r0, #7
	strh r0, [r5, #0x24]
_02003432:
	movs r4, #0
_02003434:
	adds r0, r4, #7
	movs r1, #0x16
	bl sub_020017B4
	adds r5, r0, #0
	cmp r5, #0
	beq _02003470
	movs r1, #0x58
	movs r2, #0x70
	bl sub_02002884
	ldr r0, _020034D4 @ =0x02028000
	ldr r1, [r0]
	movs r0, #0
	movs r2, #0x2d
	movs r3, #9
	bl sub_02004CE8
	str r0, [r5, #4]
	movs r1, #1
	bl sub_02005758
	ldr r0, [r5, #4]
	movs r1, #3
	bl sub_020057B0
	ldr r1, [r5, #4]
	movs r0, #8
	str r0, [r1, #8]
	strh r0, [r5, #0x24]
_02003470:
	adds r4, #1
	cmp r4, #7
	ble _02003434
	movs r4, #0
_02003478:
	adds r0, r4, #0
	adds r0, #0xf
	movs r1, #0x16
	bl sub_020017B4
	adds r5, r0, #0
	cmp r5, #0
	beq _020034BC
	ldr r1, _020034D8 @ =gUnknown_0200AF44
	lsls r0, r4, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	adds r0, r5, #0
	movs r2, #0x30
	bl sub_02002884
	ldr r0, _020034D4 @ =0x02028000
	ldr r1, [r0]
	movs r0, #0
	movs r2, #0x2d
	movs r3, #0x1a
	bl sub_02004CE8
	str r0, [r5, #4]
	movs r1, #1
	bl sub_02005758
	ldr r0, [r5, #4]
	movs r1, #6
	bl sub_020057B0
	strh r4, [r5, #0x26]
	movs r0, #9
	strh r0, [r5, #0x24]
_020034BC:
	adds r4, #1
	cmp r4, #4
	ble _02003478
	bl sub_02002644
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_020034D0: .4byte gUnknown_0200B308
_020034D4: .4byte 0x02028000
_020034D8: .4byte gUnknown_0200AF44

	thumb_func_start sub_020034DC
sub_020034DC: @ 0x020034DC
	bx lr
	.align 2, 0

	thumb_func_start sub_020034E0
sub_020034E0: @ 0x020034E0
	push {r4, lr}
	ldr r2, _02003508 @ =0x0202B2E0
	ldr r0, [r2]
	ldr r0, _0200350C @ =0x030060E4
	ldr r0, [r0]
	cmp r0, #2
	bne _020035A6
	ldr r0, _02003510 @ =0x030060E0
	ldr r0, [r0]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _02003514
	ldr r0, [r2]
	cmp r0, #0
	bne _02003520
	bl sub_02008DE8
	b _02003520
	.align 2, 0
_02003508: .4byte 0x0202B2E0
_0200350C: .4byte 0x030060E4
_02003510: .4byte 0x030060E0
_02003514:
	ldr r0, _02003570 @ =0x02029010
	ldr r0, [r0]
	cmp r0, #0
	bne _02003520
	bl sub_02008DE8
_02003520:
	ldr r4, _02003574 @ =0x03006518
	ldr r1, [r4]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _020035A6
	ldr r0, _02003578 @ =0x030064F0
	ldr r0, [r0]
	cmp r0, #0
	bne _020035A6
	bl sub_02008DA8
	cmp r0, #0
	beq _02003588
	ldr r0, _0200357C @ =0x030060E0
	ldr r3, [r0]
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r3
	cmp r0, #0
	beq _02003588
	lsrs r0, r3, #8
	movs r2, #0xf
	ands r0, r2
	adds r1, r3, #0
	ands r1, r2
	cmp r0, r1
	beq _02003584
	ldr r0, _02003580 @ =0x03006030
	ldr r0, [r0]
	cmp r0, #0
	bne _0200356A
	movs r0, #0xe0
	lsls r0, r0, #4
	ands r3, r0
	cmp r3, #0
	beq _02003588
_0200356A:
	ldr r0, [r4]
	adds r0, #1
	b _02003586
	.align 2, 0
_02003570: .4byte 0x02029010
_02003574: .4byte 0x03006518
_02003578: .4byte 0x030064F0
_0200357C: .4byte 0x030060E0
_02003580: .4byte 0x03006030
_02003584:
	movs r0, #1
_02003586:
	str r0, [r4]
_02003588:
	ldr r0, _02003604 @ =0x0202B174
	ldr r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r2, _02003608 @ =0x03006518
	ldr r1, [r2]
	cmp r1, r0
	blo _020035A6
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r2]
	movs r0, #0
	bl sub_02008CF4
_020035A6:
	bl sub_02008658
	bl sub_02008DA0
	cmp r0, #0
	beq _020035D0
	ldr r0, _0200360C @ =0x030060E0
	ldr r0, [r0]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _020035D0
	ldr r1, _02003610 @ =0x02029240
	ldr r0, [r1, #4]
	cmp r0, #0
	bne _020035CC
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r1, #4]
_020035CC:
	bl sub_0200370C
_020035D0:
	ldr r3, _02003614 @ =REG_IME
	movs r0, #0
	strh r0, [r3]
	ldr r2, _02003618 @ =0x03007FF8
	ldrh r0, [r2]
	movs r1, #1
	orrs r0, r1
	strh r0, [r2]
	strh r1, [r3]
	ldr r1, _0200361C @ =0x0202B270
	movs r0, #1
	str r0, [r1]
	ldr r2, _02003620 @ =0x02029010
	ldr r0, [r2]
	adds r0, #1
	str r0, [r2]
	ldr r0, _02003604 @ =0x0202B174
	ldr r1, [r2]
	ldr r0, [r0]
	cmp r1, r0
	blo _020035FE
	movs r0, #0
	str r0, [r2]
_020035FE:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_02003604: .4byte 0x0202B174
_02003608: .4byte 0x03006518
_0200360C: .4byte 0x030060E0
_02003610: .4byte 0x02029240
_02003614: .4byte REG_IME
_02003618: .4byte 0x03007FF8
_0200361C: .4byte 0x0202B270
_02003620: .4byte 0x02029010

	thumb_func_start sub_02003624
sub_02003624: @ 0x02003624
	bx lr
	.align 2, 0

	thumb_func_start sub_02003628
sub_02003628: @ 0x02003628
	push {lr}
	bl sub_02008670
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_02003634
sub_02003634: @ 0x02003634
	bx lr
	.align 2, 0

	thumb_func_start sub_02003638
sub_02003638: @ 0x02003638
	bx lr
	.align 2, 0

	thumb_func_start sub_0200363C
sub_0200363C: @ 0x0200363C
	bx lr
	.align 2, 0

	thumb_func_start sub_02003640
sub_02003640: @ 0x02003640
	bx lr
	.align 2, 0

	thumb_func_start sub_02003644
sub_02003644: @ 0x02003644
	push {lr}
	movs r1, #0
	ldr r3, _02003688 @ =gUnknown_0200B338
	ldr r2, _0200368C @ =0x03006040
_0200364C:
	ldm r3!, {r0}
	stm r2!, {r0}
	adds r1, #1
	cmp r1, #0xe
	bls _0200364C
	movs r0, #0
	bl sub_0200636C
	movs r0, #0
	bl sub_02006378
	movs r0, #0
	bl sub_0200639C
	movs r0, #0
	bl sub_020063C0
	ldr r1, _02003690 @ =REG_DMA3SAD
	ldr r0, _02003694 @ =sub_02000048
	str r0, [r1]
	ldr r2, _02003698 @ =0x030060F0
	str r2, [r1, #4]
	ldr r0, _0200369C @ =0x80000200
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _020036A0 @ =0x03007FFC
	str r2, [r0]
	pop {r0}
	bx r0
	.align 2, 0
_02003688: .4byte gUnknown_0200B338
_0200368C: .4byte 0x03006040
_02003690: .4byte REG_DMA3SAD
_02003694: .4byte sub_02000048
_02003698: .4byte 0x030060F0
_0200369C: .4byte 0x80000200
_020036A0: .4byte 0x03007FFC

	thumb_func_start sub_020036A4
sub_020036A4: @ 0x020036A4
	ldr r1, _020036AC @ =0x0202B264
	str r0, [r1]
	bx lr
	.align 2, 0
_020036AC: .4byte 0x0202B264

	thumb_func_start sub_020036B0
sub_020036B0: @ 0x020036B0
	ldr r1, _020036B8 @ =0x0202B174
	str r0, [r1]
	bx lr
	.align 2, 0
_020036B8: .4byte 0x0202B174

	thumb_func_start sub_020036BC
sub_020036BC: @ 0x020036BC
	ldr r0, _020036C4 @ =0x0202B174
	ldr r0, [r0]
	bx lr
	.align 2, 0
_020036C4: .4byte 0x0202B174

	thumb_func_start sub_020036C8
sub_020036C8: @ 0x020036C8
	ldr r1, _020036D0 @ =0x0202B268
	str r0, [r1]
	bx lr
	.align 2, 0
_020036D0: .4byte 0x0202B268

	thumb_func_start sub_020036D4
sub_020036D4: @ 0x020036D4
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r6, _02003700 @ =0x0202B150
	ldr r1, _02003704 @ =gUnknown_0200AFEC
	ldr r0, _02003708 @ =0x0202B268
	ldr r2, [r0]
	adds r0, r6, #0
	bl sub_02007E58
	lsls r4, r4, #0x18
	asrs r4, r4, #0x18
	lsls r5, r5, #0x18
	asrs r5, r5, #0x18
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_020073F0
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_02003700: .4byte 0x0202B150
_02003704: .4byte gUnknown_0200AFEC
_02003708: .4byte 0x0202B268

	thumb_func_start sub_0200370C
sub_0200370C: @ 0x0200370C
	push {r4, lr}
	bl sub_02008DA0
	cmp r0, #0
	beq _0200373C
	ldr r0, _02003734 @ =0x030060E0
	ldr r0, [r0]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0200373C
	ldr r0, _02003738 @ =0x0202D790
	movs r1, #0xe0
	lsls r1, r1, #0x13
	movs r2, #0x80
	lsls r2, r2, #1
	bl sub_020090C0
	b _0200374A
	.align 2, 0
_02003734: .4byte 0x030060E0
_02003738: .4byte 0x0202D790
_0200373C:
	ldr r0, _02003798 @ =0x0202D360
	movs r1, #0xe0
	lsls r1, r1, #0x13
	movs r2, #0x80
	lsls r2, r2, #1
	bl sub_020090C0
_0200374A:
	ldr r1, _0200379C @ =0x0202B298
	ldr r0, [r1]
	cmp r0, #0
	beq _02003792
	movs r0, #0
	str r0, [r1]
	ldr r4, _020037A0 @ =0x0202B220
	ldrh r1, [r4, #0xc]
	ldrh r2, [r4, #0xe]
	bl sub_02003B70
	ldrh r1, [r4, #0x1c]
	ldrh r2, [r4, #0x1e]
	movs r0, #1
	bl sub_02003B70
	ldrh r1, [r4, #0x2c]
	ldrh r2, [r4, #0x2e]
	movs r0, #2
	bl sub_02003B70
	ldrh r1, [r4, #0x3c]
	ldrh r2, [r4, #0x3e]
	movs r0, #3
	bl sub_02003B70
	bl sub_0200481C
	bl sub_02006120
	ldr r0, _020037A4 @ =0x02029000
	ldr r0, [r0]
	cmp r0, #0
	beq _02003792
	bl sub_020090FC
_02003792:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_02003798: .4byte 0x0202D360
_0200379C: .4byte 0x0202B298
_020037A0: .4byte 0x0202B220
_020037A4: .4byte 0x02029000

	thumb_func_start sub_020037A8
sub_020037A8: @ 0x020037A8
	push {lr}
	bl sub_02008DA0
	cmp r0, #0
	beq _020037C8
	ldr r0, _020037C4 @ =0x030060E0
	ldr r0, [r0]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _020037CC
	bl sub_0200370C
	b _020037CC
	.align 2, 0
_020037C4: .4byte 0x030060E0
_020037C8:
	bl sub_0200370C
_020037CC:
	bl sub_020067FC
	ldr r0, _02003834 @ =0x030060E4
	ldr r0, [r0]
	cmp r0, #2
	bne _020037E6
	ldr r0, _02003838 @ =0x03006080
	bl sub_02008DDC
	ldr r1, _0200383C @ =0x030060E0
	str r0, [r1]
	bl sub_02008DD8
_020037E6:
	bl sub_02004B34
	bl sub_02005B88
	ldr r2, _02003840 @ =0x0202B2B0
	ldr r0, [r2, #4]
	ldr r1, [r2, #8]
	ldr r2, [r2, #0xc]
	bl sub_02008F08
	bl sub_020088D4
	bl sub_020085CC
	bl sub_02006788
	bl sub_02004B1C
	ldr r0, _02003844 @ =0x0202E150
	ldr r0, [r0]
	cmp r0, #0
	bne _02003816
	bl sub_020045BC
_02003816:
	bl sub_02004460
	bl sub_02005ACC
	ldr r0, _02003848 @ =0x0202AE4C
	ldr r0, [r0]
	bl sub_02005B94
	ldr r0, _0200384C @ =0x0202DB90
	ldr r0, [r0]
	cmp r0, #0
	beq _02003850
	bl sub_02005C14
	b _02003854
	.align 2, 0
_02003834: .4byte 0x030060E4
_02003838: .4byte 0x03006080
_0200383C: .4byte 0x030060E0
_02003840: .4byte 0x0202B2B0
_02003844: .4byte 0x0202E150
_02003848: .4byte 0x0202AE4C
_0200384C: .4byte 0x0202DB90
_02003850:
	bl sub_02004B34
_02003854:
	bl sub_02005708
	ldr r2, _02003890 @ =0x0202B2B0
	ldr r0, [r2, #0x10]
	ldr r1, [r2, #0x14]
	ldr r2, [r2, #0x18]
	bl sub_02008F08
	ldr r1, _02003894 @ =0x0202D760
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	bl sub_02008DA0
	cmp r0, #0
	beq _02003880
	ldr r0, _02003898 @ =0x0202D360
	ldr r1, _0200389C @ =0x0202D790
	movs r2, #0x80
	lsls r2, r2, #1
	bl sub_020090C0
_02003880:
	bl sub_02006080
	ldr r1, _020038A0 @ =0x0202B298
	movs r0, #1
	str r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_02003890: .4byte 0x0202B2B0
_02003894: .4byte 0x0202D760
_02003898: .4byte 0x0202D360
_0200389C: .4byte 0x0202D790
_020038A0: .4byte 0x0202B298

	thumb_func_start sub_020038A4
sub_020038A4: @ 0x020038A4
	push {r4, r5, r6, lr}
	ldr r6, _020038B0 @ =0x02029010
	ldr r5, _020038B4 @ =0x0202B2E0
	movs r4, #0
	b _020038DC
	.align 2, 0
_020038B0: .4byte 0x02029010
_020038B4: .4byte 0x0202B2E0
_020038B8:
	movs r0, #1
	str r0, [r6]
	str r0, [r5]
	bl sub_020037A8
	ldr r0, _020038FC @ =0x03006030
	ldr r0, [r0]
	cmp r0, #0
	bne _020038DA
	ldr r0, _02003900 @ =0x0202B174
	ldr r0, [r0]
	cmp r0, #1
	bls _020038DA
	ldr r1, _02003904 @ =0x02029010
_020038D4:
	ldr r0, [r1]
	cmp r0, #0
	bne _020038D4
_020038DA:
	str r4, [r5]
_020038DC:
	str r4, [r6]
	ldr r0, _02003908 @ =0x030060E0
	ldr r1, [r0]
	movs r0, #0xc0
	lsls r0, r0, #1
	ands r1, r0
	subs r0, #0x80
	cmp r1, r0
	bne _020038F6
	ldr r0, _0200390C @ =0x030060E4
	ldr r0, [r0]
	cmp r0, #3
	bls _02003910
_020038F6:
	bl sub_020090D8
	b _02003918
	.align 2, 0
_020038FC: .4byte 0x03006030
_02003900: .4byte 0x0202B174
_02003904: .4byte 0x02029010
_02003908: .4byte 0x030060E0
_0200390C: .4byte 0x030060E4
_02003910:
	movs r0, #1
	movs r1, #0x80
	bl sub_020090C8
_02003918:
	ldr r0, _02003928 @ =0x0202B264
	ldr r0, [r0]
	cmp r0, #1
	bne _020038B8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_02003928: .4byte 0x0202B264

	thumb_func_start sub_0200392C
sub_0200392C: @ 0x0200392C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x2c
	add r0, sp, #0x14
	movs r4, #0
	strh r4, [r0]
	movs r0, #0xc0
	lsls r0, r0, #0x13
	mov sl, r0
	ldr r7, _02003A9C @ =0x0100C000
	add r0, sp, #0x14
	mov r1, sl
	adds r2, r7, #0
	bl sub_020090C4
	mov r0, sp
	adds r0, #0x16
	strh r4, [r0]
	movs r1, #0xa0
	lsls r1, r1, #0x13
	mov r8, r1
	ldr r2, _02003AA0 @ =0x01000200
	mov sb, r2
	bl sub_020090C4
	movs r4, #0
	str r4, [sp, #0x18]
	add r0, sp, #0x18
	movs r5, #0xe0
	lsls r5, r5, #0x13
	ldr r6, _02003AA4 @ =0x05000100
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_020090C4
	bl sub_02003644
	ldr r0, _02003AA8 @ =0x0202B2E0
	str r4, [r0]
	ldr r0, _02003AAC @ =0x0202B298
	str r4, [r0]
	movs r0, #0
	bl sub_020036C8
	movs r0, #1
	bl sub_020036B0
	ldr r0, _02003AB0 @ =0x0202B2A0
	str r4, [r0]
	ldr r0, _02003AB4 @ =0x0202D760
	str r4, [r0]
	bl sub_02008D84
	bl sub_02003DB0
	bl sub_020059B8
	ldr r0, _02003AB8 @ =0x00001234
	bl sub_020072A8
	bl sub_02005CFC
	movs r0, #0
	bl sub_020062D0
	movs r0, #1
	bl sub_020062DC
	bl sub_020062EC
	movs r2, #0x80
	lsls r2, r2, #6
	adds r1, r2, #0
	orrs r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_020062DC
	bl sub_020062EC
	movs r1, #4
	orrs r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_020062DC
	movs r0, #1
	bl sub_020062D0
	movs r0, #8
	bl sub_02003AE4
	bl sub_02003AF4
	movs r1, #0x20
	orrs r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_02003AE4
	movs r0, #1
	bl sub_02008640
	bl sub_02008908
	bl sub_020042D4
	bl sub_020044A8
	bl sub_0200474C
	bl sub_02004860
	bl sub_02004AF4
	bl sub_02006718
	ldr r1, _02003ABC @ =sub_0200200C
	movs r0, #0
	movs r2, #0
	bl sub_020063E4
	ldr r1, _02003AC0 @ =REG_WAITCNT
	strh r4, [r1]
	ldr r2, _02003AC4 @ =0x00004014
	adds r0, r2, #0
	strh r0, [r1]
	movs r0, #0
	bl sub_02005B48
	bl sub_02008EA0
	bl sub_02008DF0
	movs r0, #0
	bl sub_02008E80
	bl sub_02008628
	bl sub_02008CFC
	bl sub_02007EBC
	bl sub_020069C0
	bl sub_020080C0
	movs r0, #0
	bl sub_020036A4
	bl sub_020038A4
	add r0, sp, #0x20
	strh r4, [r0]
	mov r1, r8
	mov r2, sb
	bl sub_020090C4
	str r4, [sp, #0x24]
	add r0, sp, #0x24
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_020090C4
	add r0, sp, #0x28
	strh r4, [r0]
	mov r1, sl
	adds r2, r7, #0
	bl sub_020090C4
	movs r0, #0x80
	lsls r0, r0, #0x13
	strh r4, [r0]
	add sp, #0x2c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_02003A9C: .4byte 0x0100C000
_02003AA0: .4byte 0x01000200
_02003AA4: .4byte 0x05000100
_02003AA8: .4byte 0x0202B2E0
_02003AAC: .4byte 0x0202B298
_02003AB0: .4byte 0x0202B2A0
_02003AB4: .4byte 0x0202D760
_02003AB8: .4byte 0x00001234
_02003ABC: .4byte sub_0200200C
_02003AC0: .4byte REG_WAITCNT
_02003AC4: .4byte 0x00004014

	thumb_func_start sub_02003AC8
sub_02003AC8: @ 0x02003AC8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _02003AD8 @ =0x0202CF00
	strh r0, [r1]
	movs r1, #0x80
	lsls r1, r1, #0x13
	strh r0, [r1]
	bx lr
	.align 2, 0
_02003AD8: .4byte 0x0202CF00

	thumb_func_start sub_02003ADC
sub_02003ADC: @ 0x02003ADC
	movs r0, #0x80
	lsls r0, r0, #0x13
	ldrh r0, [r0]
	bx lr

	thumb_func_start sub_02003AE4
sub_02003AE4: @ 0x02003AE4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _02003AF0 @ =REG_DISPSTAT
	strh r0, [r1]
	bx lr
	.align 2, 0
_02003AF0: .4byte REG_DISPSTAT

	thumb_func_start sub_02003AF4
sub_02003AF4: @ 0x02003AF4
	ldr r0, _02003AFC @ =REG_DISPSTAT
	ldrh r0, [r0]
	bx lr
	.align 2, 0
_02003AFC: .4byte REG_DISPSTAT

	thumb_func_start sub_02003B00
sub_02003B00: @ 0x02003B00
	ldr r0, _02003B08 @ =REG_VCOUNT
	ldrh r0, [r0]
	bx lr
	.align 2, 0
_02003B08: .4byte REG_VCOUNT

	thumb_func_start sub_02003B0C
sub_02003B0C: @ 0x02003B0C
	push {lr}
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	ldr r0, _02003B2C @ =0x0202CF00
	lsls r1, r2, #1
	adds r0, #2
	adds r1, r1, r0
	strh r3, [r1]
	cmp r2, #1
	beq _02003B44
	cmp r2, #1
	bgt _02003B30
	cmp r2, #0
	beq _02003B3A
	b _02003B58
	.align 2, 0
_02003B2C: .4byte 0x0202CF00
_02003B30:
	cmp r2, #2
	beq _02003B4C
	cmp r2, #3
	beq _02003B54
	b _02003B58
_02003B3A:
	ldr r0, _02003B40 @ =REG_BG0CNT
	b _02003B56
	.align 2, 0
_02003B40: .4byte REG_BG0CNT
_02003B44:
	ldr r0, _02003B48 @ =REG_BG1CNT
	b _02003B56
	.align 2, 0
_02003B48: .4byte REG_BG1CNT
_02003B4C:
	ldr r0, _02003B50 @ =REG_BG2CNT
	b _02003B56
	.align 2, 0
_02003B50: .4byte REG_BG2CNT
_02003B54:
	ldr r0, _02003B5C @ =REG_BG3CNT
_02003B56:
	strh r3, [r0]
_02003B58:
	pop {r0}
	bx r0
	.align 2, 0
_02003B5C: .4byte REG_BG3CNT

	thumb_func_start sub_02003B60
sub_02003B60: @ 0x02003B60
	ldr r1, _02003B6C @ =0x0202CF00
	lsls r0, r0, #1
	adds r1, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	bx lr
	.align 2, 0
_02003B6C: .4byte 0x0202CF00

	thumb_func_start sub_02003B70
sub_02003B70: @ 0x02003B70
	push {r4, r5, lr}
	adds r3, r0, #0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	ldr r1, _02003B9C @ =0x0202CF00
	lsls r2, r3, #1
	adds r0, r1, #0
	adds r0, #0xa
	adds r0, r2, r0
	strh r4, [r0]
	adds r1, #0x12
	adds r2, r2, r1
	strh r5, [r2]
	cmp r3, #1
	beq _02003BB4
	cmp r3, #1
	bgt _02003BA0
	cmp r3, #0
	beq _02003BAA
	b _02003BCC
	.align 2, 0
_02003B9C: .4byte 0x0202CF00
_02003BA0:
	cmp r3, #2
	beq _02003BBC
	cmp r3, #3
	beq _02003BC4
	b _02003BCC
_02003BAA:
	ldr r0, _02003BB0 @ =REG_BG0HOFS
	b _02003BC6
	.align 2, 0
_02003BB0: .4byte REG_BG0HOFS
_02003BB4:
	ldr r0, _02003BB8 @ =REG_BG1HOFS
	b _02003BC6
	.align 2, 0
_02003BB8: .4byte REG_BG1HOFS
_02003BBC:
	ldr r0, _02003BC0 @ =REG_BG2HOFS
	b _02003BC6
	.align 2, 0
_02003BC0: .4byte REG_BG2HOFS
_02003BC4:
	ldr r0, _02003BD4 @ =REG_BG3HOFS
_02003BC6:
	strh r4, [r0]
	adds r0, #2
	strh r5, [r0]
_02003BCC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_02003BD4: .4byte REG_BG3HOFS

	thumb_func_start sub_02003BD8
sub_02003BD8: @ 0x02003BD8
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [sp, #0xc]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r5, #2
	beq _02003BF8
	cmp r5, #3
	beq _02003C10
	b _02003C2A
_02003BF8:
	ldr r0, _02003C08 @ =0x0202CF00
	strh r1, [r0, #0x1a]
	strh r2, [r0, #0x1e]
	strh r3, [r0, #0x22]
	strh r4, [r0, #0x26]
	ldr r0, _02003C0C @ =REG_BG2PA
	b _02003C1C
	.align 2, 0
_02003C08: .4byte 0x0202CF00
_02003C0C: .4byte REG_BG2PA
_02003C10:
	ldr r0, _02003C30 @ =0x0202CF00
	strh r1, [r0, #0x1c]
	strh r2, [r0, #0x20]
	strh r3, [r0, #0x24]
	strh r4, [r0, #0x28]
	ldr r0, _02003C34 @ =REG_BG3PA
_02003C1C:
	strh r1, [r0]
	adds r0, #2
	strh r2, [r0]
	adds r0, #2
	strh r3, [r0]
	adds r0, #2
	strh r4, [r0]
_02003C2A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_02003C30: .4byte 0x0202CF00
_02003C34: .4byte REG_BG3PA

	thumb_func_start sub_02003C38
sub_02003C38: @ 0x02003C38
	push {lr}
	adds r3, r1, #0
	cmp r0, #2
	beq _02003C46
	cmp r0, #3
	beq _02003C6C
	b _02003C86
_02003C46:
	ldr r0, _02003C5C @ =0x0202CF00
	str r3, [r0, #0x2c]
	str r2, [r0, #0x34]
	ldr r0, _02003C60 @ =REG_BG2X_L
	strh r3, [r0]
	ldr r1, _02003C64 @ =REG_BG2X_H
	lsrs r0, r3, #0x10
	strh r0, [r1]
	ldr r0, _02003C68 @ =REG_BG2Y_L
	b _02003C7E
	.align 2, 0
_02003C5C: .4byte 0x0202CF00
_02003C60: .4byte REG_BG2X_L
_02003C64: .4byte REG_BG2X_H
_02003C68: .4byte REG_BG2Y_L
_02003C6C:
	ldr r0, _02003C8C @ =0x0202CF00
	str r3, [r0, #0x30]
	str r2, [r0, #0x38]
	ldr r0, _02003C90 @ =REG_BG3X_L
	strh r3, [r0]
	ldr r1, _02003C94 @ =REG_BG3X_H
	lsrs r0, r3, #0x10
	strh r0, [r1]
	ldr r0, _02003C98 @ =REG_BG3Y_L
_02003C7E:
	strh r2, [r0]
	adds r1, #4
	lsrs r0, r2, #0x10
	strh r0, [r1]
_02003C86:
	pop {r0}
	bx r0
	.align 2, 0
_02003C8C: .4byte 0x0202CF00
_02003C90: .4byte REG_BG3X_L
_02003C94: .4byte REG_BG3X_H
_02003C98: .4byte REG_BG3Y_L

	thumb_func_start sub_02003C9C
sub_02003C9C: @ 0x02003C9C
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r4, [sp, #0x10]
	lsls r1, r1, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r0, _02003CD4 @ =0x0202CF00
	mov ip, r0
	lsls r5, r6, #1
	adds r0, #0x3c
	adds r0, r5, r0
	lsrs r1, r1, #8
	adds r3, r3, r1
	strh r3, [r0]
	mov r3, ip
	adds r3, #0x40
	adds r5, r5, r3
	lsls r2, r2, #0x10
	asrs r2, r2, #8
	adds r4, r4, r2
	strh r4, [r5]
	cmp r6, #0
	beq _02003CD8
	cmp r6, #1
	beq _02003CEC
	b _02003CFE
	.align 2, 0
_02003CD4: .4byte 0x0202CF00
_02003CD8:
	ldr r1, _02003CE8 @ =REG_WIN0H
	mov r2, ip
	ldrh r0, [r2, #0x3c]
	strh r0, [r1]
	adds r1, #4
	ldrh r0, [r3]
	b _02003CFC
	.align 2, 0
_02003CE8: .4byte REG_WIN0H
_02003CEC:
	ldr r1, _02003D04 @ =REG_WIN1H
	mov r2, ip
	ldrh r0, [r2, #0x3e]
	strh r0, [r1]
	adds r1, #4
	mov r0, ip
	adds r0, #0x42
	ldrh r0, [r0]
_02003CFC:
	strh r0, [r1]
_02003CFE:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_02003D04: .4byte REG_WIN1H

	thumb_func_start sub_02003D08
sub_02003D08: @ 0x02003D08
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	ldr r2, _02003D20 @ =0x0202CF00
	lsrs r1, r1, #8
	adds r0, r0, r1
	adds r2, #0x44
	strh r0, [r2]
	ldr r1, _02003D24 @ =REG_WININ
	strh r0, [r1]
	bx lr
	.align 2, 0
_02003D20: .4byte 0x0202CF00
_02003D24: .4byte REG_WININ

	thumb_func_start sub_02003D28
sub_02003D28: @ 0x02003D28
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	ldr r2, _02003D40 @ =0x0202CF00
	lsrs r1, r1, #8
	adds r0, r0, r1
	adds r2, #0x46
	strh r0, [r2]
	ldr r1, _02003D44 @ =REG_WINOUT
	strh r0, [r1]
	bx lr
	.align 2, 0
_02003D40: .4byte 0x0202CF00
_02003D44: .4byte REG_WINOUT

	thumb_func_start sub_02003D48
sub_02003D48: @ 0x02003D48
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	ldr r2, _02003D60 @ =0x0202CF00
	lsrs r1, r1, #8
	adds r0, r0, r1
	adds r2, #0x48
	strh r0, [r2]
	ldr r1, _02003D64 @ =REG_MOSAIC
	strh r0, [r1]
	bx lr
	.align 2, 0
_02003D60: .4byte 0x0202CF00
_02003D64: .4byte REG_MOSAIC

	thumb_func_start sub_02003D68
sub_02003D68: @ 0x02003D68
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _02003D78 @ =0x0202CF00
	adds r1, #0x4a
	strh r0, [r1]
	ldr r1, _02003D7C @ =REG_BLDCNT
	strh r0, [r1]
	bx lr
	.align 2, 0
_02003D78: .4byte 0x0202CF00
_02003D7C: .4byte REG_BLDCNT

	thumb_func_start sub_02003D80
sub_02003D80: @ 0x02003D80
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _02003D90 @ =0x0202CF00
	adds r1, #0x4c
	strh r0, [r1]
	ldr r1, _02003D94 @ =REG_BLDALPHA
	strh r0, [r1]
	bx lr
	.align 2, 0
_02003D90: .4byte 0x0202CF00
_02003D94: .4byte REG_BLDALPHA

	thumb_func_start sub_02003D98
sub_02003D98: @ 0x02003D98
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _02003DA8 @ =0x0202CF00
	adds r1, #0x4e
	strh r0, [r1]
	ldr r1, _02003DAC @ =REG_BLDY
	strh r0, [r1]
	bx lr
	.align 2, 0
_02003DA8: .4byte 0x0202CF00
_02003DAC: .4byte REG_BLDY

	thumb_func_start sub_02003DB0
sub_02003DB0: @ 0x02003DB0
	push {r4, lr}
	sub sp, #8
	add r1, sp, #4
	movs r0, #0
	strh r0, [r1]
	ldr r1, _02003EA4 @ =REG_DMA3SAD
	add r0, sp, #4
	str r0, [r1]
	ldr r0, _02003EA8 @ =0x0202CF00
	str r0, [r1, #4]
	ldr r0, _02003EAC @ =0x8100002A
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #0x40
	bl sub_02003AC8
	movs r0, #0
	bl sub_02003AE4
	movs r0, #0
	movs r1, #0
	bl sub_02003B0C
	movs r0, #1
	movs r1, #0
	bl sub_02003B0C
	movs r0, #2
	movs r1, #0
	bl sub_02003B0C
	movs r0, #3
	movs r1, #0
	bl sub_02003B0C
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl sub_02003B70
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl sub_02003B70
	movs r0, #2
	movs r1, #0
	movs r2, #0
	bl sub_02003B70
	movs r0, #3
	movs r1, #0
	movs r2, #0
	bl sub_02003B70
	movs r4, #0x80
	lsls r4, r4, #1
	str r4, [sp]
	movs r0, #2
	adds r1, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_02003BD8
	str r4, [sp]
	movs r0, #3
	adds r1, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_02003BD8
	movs r0, #2
	movs r1, #0
	movs r2, #0
	bl sub_02003C38
	movs r0, #3
	movs r1, #0
	movs r2, #0
	bl sub_02003C38
	movs r4, #0
	str r4, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_02003C9C
	str r4, [sp]
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_02003C9C
	movs r0, #0
	movs r1, #0
	bl sub_02003D08
	movs r0, #0
	movs r1, #0
	bl sub_02003D28
	movs r0, #0
	movs r1, #0
	bl sub_02003D48
	movs r0, #0
	bl sub_02003D68
	movs r0, #0
	bl sub_02003D80
	movs r0, #0
	bl sub_02003D98
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_02003EA4: .4byte REG_DMA3SAD
_02003EA8: .4byte 0x0202CF00
_02003EAC: .4byte 0x8100002A

	thumb_func_start sub_02003EB0
sub_02003EB0: @ 0x02003EB0
	push {r4, r5, lr}
	ldr r5, [sp, #0xc]
	lsls r0, r0, #4
	ldr r4, _02003ED8 @ =0x0202B220
	adds r0, r0, r4
	movs r4, #0xc0
	lsls r4, r4, #0x13
	adds r1, r1, r4
	str r1, [r0]
	adds r2, r2, r4
	str r2, [r0, #4]
	movs r1, #0
	strh r3, [r0, #8]
	strh r5, [r0, #0xa]
	strh r1, [r0, #0xc]
	strh r1, [r0, #0xe]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_02003ED8: .4byte 0x0202B220

	thumb_func_start sub_02003EDC
sub_02003EDC: @ 0x02003EDC
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #4
	adds r6, r0, #0
	adds r4, r1, #0
	ldr r2, [r4]
	lsrs r2, r2, #0xb
	lsls r2, r2, #8
	ldr r0, [r4, #4]
	lsrs r0, r0, #0xe
	lsls r0, r0, #2
	orrs r2, r0
	movs r0, #8
	ldrsb r0, [r4, r0]
	lsls r0, r0, #0xe
	orrs r2, r0
	movs r0, #9
	ldrsb r0, [r4, r0]
	lsls r0, r0, #7
	orrs r2, r0
	movs r0, #0xb
	ldrsb r0, [r4, r0]
	lsls r0, r0, #0xd
	orrs r2, r0
	movs r1, #0xa
	ldrsb r1, [r4, r1]
	orrs r1, r2
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r6, #0
	bl sub_02003B0C
	ldr r0, _02003F58 @ =gUnknown_0200B3A4
	mov r8, r0
	bl sub_02003ADC
	movs r5, #8
	ldrsb r5, [r4, r5]
	lsls r3, r5, #1
	lsls r1, r6, #3
	adds r3, r3, r1
	movs r1, #7
	ands r1, r0
	lsls r1, r1, #5
	adds r3, r3, r1
	add r3, r8
	ldr r1, [r4, #4]
	ldr r2, [r4]
	movs r0, #0
	ldrsh r3, [r3, r0]
	str r5, [sp]
	adds r0, r6, #0
	bl sub_02003EB0
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_02003F58: .4byte gUnknown_0200B3A4

	thumb_func_start sub_02003F5C
sub_02003F5C: @ 0x02003F5C
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
_02003F62:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_02003EDC
	adds r4, #1
	adds r5, #0xc
	cmp r4, #3
	ble _02003F62
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_02003F78
sub_02003F78: @ 0x02003F78
	lsls r0, r0, #4
	ldr r1, _02003F84 @ =0x0202B220
	adds r0, r0, r1
	ldr r0, [r0]
	bx lr
	.align 2, 0
_02003F84: .4byte 0x0202B220

	thumb_func_start sub_02003F88
sub_02003F88: @ 0x02003F88
	lsls r0, r0, #4
	ldr r1, _02003F94 @ =0x0202B220
	adds r0, r0, r1
	ldr r0, [r0, #4]
	bx lr
	.align 2, 0
_02003F94: .4byte 0x0202B220

	thumb_func_start sub_02003F98
sub_02003F98: @ 0x02003F98
	lsls r0, r0, #4
	ldr r1, _02003FA4 @ =0x0202B220
	adds r0, r0, r1
	ldrh r0, [r0, #8]
	bx lr
	.align 2, 0
_02003FA4: .4byte 0x0202B220

	thumb_func_start sub_02003FA8
sub_02003FA8: @ 0x02003FA8
	lsls r0, r0, #4
	ldr r1, _02003FB4 @ =0x0202B220
	adds r0, r0, r1
	ldrh r0, [r0, #0xa]
	bx lr
	.align 2, 0
_02003FB4: .4byte 0x0202B220

	thumb_func_start sub_02003FB8
sub_02003FB8: @ 0x02003FB8
	lsls r0, r0, #4
	ldr r3, _02003FC4 @ =0x0202B220
	adds r0, r0, r3
	strh r1, [r0, #0xc]
	strh r2, [r0, #0xe]
	bx lr
	.align 2, 0
_02003FC4: .4byte 0x0202B220

	thumb_func_start sub_02003FC8
sub_02003FC8: @ 0x02003FC8
	lsls r0, r0, #4
	ldr r3, _02003FD8 @ =0x0202B220
	adds r0, r0, r3
	ldrh r3, [r0, #0xc]
	strh r3, [r1]
	ldrh r0, [r0, #0xe]
	strh r0, [r2]
	bx lr
	.align 2, 0
_02003FD8: .4byte 0x0202B220

	thumb_func_start sub_02003FDC
sub_02003FDC: @ 0x02003FDC
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl sub_02003B60
	ldr r1, _02003FFC @ =0x0000FFFC
	ands r1, r0
	adds r1, r1, r4
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r5, #0
	bl sub_02003B0C
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_02003FFC: .4byte 0x0000FFFC

	thumb_func_start sub_02004000
sub_02004000: @ 0x02004000
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	mov r8, r1
	adds r5, r2, #0
	adds r6, r3, #0
	ldr r2, [sp, #0x20]
	ldr r3, [sp, #0x24]
	ldr r7, [sp, #0x28]
	asrs r5, r5, #0xb
	asrs r6, r6, #0xb
	asrs r2, r2, #0xb
	asrs r3, r3, #0xb
	lsls r0, r0, #4
	ldr r1, _0200405C @ =0x0202B220
	adds r0, r0, r1
	lsls r4, r6, #6
	ldr r1, [r0, #4]
	adds r1, r1, r4
	lsls r0, r5, #1
	adds r1, r1, r0
	subs r2, r2, r5
	lsls r2, r2, #0x11
	lsrs r2, r2, #0x10
	subs r3, r3, r6
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	movs r0, #0x40
	mov r4, r8
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	mov r8, r4
	str r0, [sp]
	lsls r0, r7, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
	mov r0, r8
	bl sub_02005F00
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0200405C: .4byte 0x0202B220

	thumb_func_start sub_02004060
sub_02004060: @ 0x02004060
	push {r4, r5, r6, lr}
	sub sp, #0xc
	adds r3, r0, #0
	adds r6, r2, #0
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	lsls r1, r3, #4
	ldr r0, _02004090 @ =0x0202B220
	adds r4, r1, r0
	cmp r6, #0
	bne _02004094
	add r0, sp, #8
	strh r5, [r0]
	ldr r1, [r4, #4]
	ldrh r2, [r4, #8]
	lsrs r2, r2, #1
	movs r0, #0x80
	lsls r0, r0, #0x11
	orrs r2, r0
	add r0, sp, #8
	bl sub_020090C4
	b _020040B6
	.align 2, 0
_02004090: .4byte 0x0202B220
_02004094:
	adds r0, r3, #0
	bl sub_02003F98
	adds r2, r0, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	ldr r1, [r4, #4]
	movs r3, #0
	str r3, [sp]
	lsls r3, r6, #0x10
	lsrs r3, r3, #0x10
	str r3, [sp, #4]
	movs r3, #1
	bl sub_02005F00
_020040B6:
	add sp, #0xc
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_020040C0
sub_020040C0: @ 0x020040C0
	push {r4, r5, r6, lr}
	adds r6, r1, #0
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	movs r4, #0
_020040CA:
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_02004060
	adds r4, #1
	cmp r4, #3
	ble _020040CA
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_020040E0
sub_020040E0: @ 0x020040E0
	ldr r0, _020040EC @ =0x0202CF00
	adds r0, #0x50
	movs r1, #0xf8
	lsls r1, r1, #5
	strh r1, [r0]
	bx lr
	.align 2, 0
_020040EC: .4byte 0x0202CF00

	thumb_func_start sub_020040F0
sub_020040F0: @ 0x020040F0
	push {lr}
	ldr r0, _02004100 @ =0x0202CF00
	adds r0, #0x50
	ldrh r0, [r0]
	bl sub_02003AC8
	pop {r0}
	bx r0
	.align 2, 0
_02004100: .4byte 0x0202CF00

	thumb_func_start sub_02004104
sub_02004104: @ 0x02004104
	ldr r0, _02004110 @ =0x0202CF00
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	bx lr
	.align 2, 0
_02004110: .4byte 0x0202CF00

	thumb_func_start sub_02004114
sub_02004114: @ 0x02004114
	ldr r2, _02004124 @ =0x0202CF00
	adds r2, #0x50
	ldrh r3, [r2]
	movs r1, #7
	ands r1, r3
	orrs r1, r0
	strh r1, [r2]
	bx lr
	.align 2, 0
_02004124: .4byte 0x0202CF00

	thumb_func_start sub_02004128
sub_02004128: @ 0x02004128
	push {lr}
	cmp r0, #1
	beq _02004148
	cmp r0, #1
	bgt _02004138
	cmp r0, #0
	beq _02004142
	b _0200415A
_02004138:
	cmp r0, #2
	beq _0200414E
	cmp r0, #3
	beq _02004154
	b _0200415A
_02004142:
	movs r2, #0x80
	lsls r2, r2, #1
	b _0200415E
_02004148:
	movs r2, #0x80
	lsls r2, r2, #2
	b _0200415E
_0200414E:
	movs r2, #0x80
	lsls r2, r2, #3
	b _0200415E
_02004154:
	movs r2, #0x80
	lsls r2, r2, #4
	b _0200415E
_0200415A:
	movs r2, #0x80
	lsls r2, r2, #5
_0200415E:
	cmp r1, #0
	bne _02004174
	ldr r1, _02004170 @ =0x0202CF00
	adds r1, #0x50
	ldrh r0, [r1]
	bics r0, r2
	strh r0, [r1]
	b _0200417E
	.align 2, 0
_02004170: .4byte 0x0202CF00
_02004174:
	ldr r0, _02004184 @ =0x0202CF00
	adds r0, #0x50
	ldrh r1, [r0]
	orrs r2, r1
	strh r2, [r0]
_0200417E:
	pop {r0}
	bx r0
	.align 2, 0
_02004184: .4byte 0x0202CF00

	thumb_func_start sub_02004188
sub_02004188: @ 0x02004188
	push {lr}
	movs r2, #0x80
	lsls r2, r2, #7
	cmp r0, #0
	bne _02004196
	movs r2, #0x80
	lsls r2, r2, #6
_02004196:
	cmp r1, #0
	bne _020041AC
	ldr r1, _020041A8 @ =0x0202CF00
	adds r1, #0x50
	ldrh r0, [r1]
	bics r0, r2
	strh r0, [r1]
	b _020041B6
	.align 2, 0
_020041A8: .4byte 0x0202CF00
_020041AC:
	ldr r0, _020041BC @ =0x0202CF00
	adds r0, #0x50
	ldrh r1, [r0]
	orrs r2, r1
	strh r2, [r0]
_020041B6:
	pop {r0}
	bx r0
	.align 2, 0
_020041BC: .4byte 0x0202CF00

	thumb_func_start sub_020041C0
sub_020041C0: @ 0x020041C0
	push {lr}
	adds r3, r0, #0
	ldr r0, _020041E0 @ =0x0202CF00
	adds r2, r0, #0
	adds r2, #0x50
	ldrh r1, [r2]
	movs r0, #7
	ands r0, r1
	cmp r0, #4
	bne _020041EE
	cmp r3, #0
	bne _020041E8
	ldr r0, _020041E4 @ =0x0000FFEF
	ands r0, r1
	b _020041EC
	.align 2, 0
_020041E0: .4byte 0x0202CF00
_020041E4: .4byte 0x0000FFEF
_020041E8:
	movs r0, #0x10
	orrs r0, r1
_020041EC:
	strh r0, [r2]
_020041EE:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_020041F4
sub_020041F4: @ 0x020041F4
	push {lr}
	bl sub_02003ADC
	movs r1, #0x80
	ands r1, r0
	cmp r1, #0
	bne _02004210
	bl sub_02003ADC
	movs r1, #0xf8
	lsls r1, r1, #5
	ands r1, r0
	cmp r1, #0
	bne _02004214
_02004210:
	movs r0, #0
	b _02004216
_02004214:
	movs r0, #1
_02004216:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0200421C
sub_0200421C: @ 0x0200421C
	push {lr}
	cmp r0, #0
	beq _0200422C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_02003D68
	b _02004232
_0200422C:
	movs r0, #0
	bl sub_02003D68
_02004232:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_02004238
sub_02004238: @ 0x02004238
	push {lr}
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_02003D80
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0200424C
sub_0200424C: @ 0x0200424C
	push {lr}
	cmp r0, #0
	beq _0200425C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_02003D68
	b _02004262
_0200425C:
	movs r0, #0
	bl sub_02003D68
_02004262:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_02004268
sub_02004268: @ 0x02004268
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_02003D98
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_02004278
sub_02004278: @ 0x02004278
	push {r4, lr}
	adds r4, r0, #0
	cmp r1, #0
	beq _02004296
	bl sub_02003B60
	adds r1, r0, #0
	movs r0, #0x40
	orrs r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_02003B0C
	b _020042A6
_02004296:
	adds r0, r4, #0
	bl sub_02003B60
	ldr r1, _020042AC @ =0x0000FFBF
	ands r1, r0
	adds r0, r4, #0
	bl sub_02003B0C
_020042A6:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_020042AC: .4byte 0x0000FFBF

	thumb_func_start sub_020042B0
sub_020042B0: @ 0x020042B0
	push {r4, lr}
	adds r4, r1, #0
	adds r1, r3, #0
	lsls r4, r4, #4
	adds r4, r4, r0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r1, r1, #4
	adds r1, r1, r2
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_02003D48
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_020042D4
sub_020042D4: @ 0x020042D4
	push {r4, lr}
	ldr r3, _02004304 @ =0x0202CF60
	ldr r2, _02004308 @ =0x0202DD30
	movs r1, #0
	ldr r4, _0200430C @ =0x000001FF
	movs r0, #0
_020042E0:
	strh r0, [r3]
	strh r0, [r2]
	adds r1, #1
	adds r3, #2
	adds r2, #2
	cmp r1, r4
	bls _020042E0
	movs r1, #0
	ldr r3, _02004310 @ =0x0202B180
	movs r2, #0
_020042F4:
	adds r0, r1, r3
	strb r2, [r0]
	adds r1, #1
	cmp r1, #0x1f
	bls _020042F4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_02004304: .4byte 0x0202CF60
_02004308: .4byte 0x0202DD30
_0200430C: .4byte 0x000001FF
_02004310: .4byte 0x0202B180

	thumb_func_start sub_02004314
sub_02004314: @ 0x02004314
	push {r4, lr}
	adds r4, r2, #0
	cmp r0, #0
	beq _02004328
	cmp r0, #1
	beq _0200432E
	ldr r2, _02004324 @ =0x0202DD30
	b _02004330
	.align 2, 0
_02004324: .4byte 0x0202DD30
_02004328:
	movs r2, #0xa0
	lsls r2, r2, #0x13
	b _02004330
_0200432E:
	ldr r2, _0200433C @ =0x0202CF60
_02004330:
	cmp r1, #0
	beq _02004344
	cmp r1, #1
	beq _0200434A
	ldr r1, _02004340 @ =0x0202DD30
	b _0200434C
	.align 2, 0
_0200433C: .4byte 0x0202CF60
_02004340: .4byte 0x0202DD30
_02004344:
	movs r1, #0xa0
	lsls r1, r1, #0x13
	b _0200434C
_0200434A:
	ldr r1, _0200436C @ =0x0202CF60
_0200434C:
	lsls r0, r4, #1
	adds r2, r2, r0
	adds r1, r1, r0
	cmp r3, #0
	ble _02004364
_02004356:
	ldrh r0, [r2]
	strh r0, [r1]
	subs r3, #1
	adds r2, #2
	adds r1, #2
	cmp r3, #0
	bne _02004356
_02004364:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0200436C: .4byte 0x0202CF60

	thumb_func_start sub_02004370
sub_02004370: @ 0x02004370
	ldr r2, _0200437C @ =0x0202CF60
	lsls r0, r0, #1
	adds r0, r0, r2
	strh r1, [r0]
	bx lr
	.align 2, 0
_0200437C: .4byte 0x0202CF60

	thumb_func_start sub_02004380
sub_02004380: @ 0x02004380
	ldr r1, _0200438C @ =0x0202CF60
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	bx lr
	.align 2, 0
_0200438C: .4byte 0x0202CF60

	thumb_func_start sub_02004390
sub_02004390: @ 0x02004390
	ldr r2, _0200439C @ =0x0202DD30
	lsls r0, r0, #1
	adds r0, r0, r2
	strh r1, [r0]
	bx lr
	.align 2, 0
_0200439C: .4byte 0x0202DD30

	thumb_func_start sub_020043A0
sub_020043A0: @ 0x020043A0
	ldr r1, _020043AC @ =0x0202DD30
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	bx lr
	.align 2, 0
_020043AC: .4byte 0x0202DD30

	thumb_func_start sub_020043B0
sub_020043B0: @ 0x020043B0
	push {r4, lr}
	lsls r2, r2, #0x10
	lsrs r4, r2, #0x10
	adds r3, r0, #0
	adds r0, r3, r1
	cmp r3, r0
	bhs _020043D0
	ldr r1, _020043D8 @ =0x0202CF60
	adds r2, r0, #0
	lsls r0, r3, #1
	adds r0, r0, r1
_020043C6:
	strh r4, [r0]
	adds r0, #2
	adds r3, #1
	cmp r3, r2
	blo _020043C6
_020043D0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_020043D8: .4byte 0x0202CF60

	thumb_func_start sub_020043DC
sub_020043DC: @ 0x020043DC
	push {r4, lr}
	lsls r2, r2, #0x10
	lsrs r4, r2, #0x10
	adds r3, r0, #0
	adds r0, r3, r1
	cmp r3, r0
	bhs _020043FC
	ldr r1, _02004404 @ =0x0202DD30
	adds r2, r0, #0
	lsls r0, r3, #1
	adds r0, r0, r1
_020043F2:
	strh r4, [r0]
	adds r0, #2
	adds r3, #1
	cmp r3, r2
	blo _020043F2
_020043FC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_02004404: .4byte 0x0202DD30

	thumb_func_start sub_02004408
sub_02004408: @ 0x02004408
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	lsrs r1, r5, #4
	adds r0, r4, #0
	adds r0, #0xf
	lsrs r0, r0, #4
	adds r3, r1, r0
	cmp r2, #0
	beq _02004434
	cmp r1, r3
	bhs _02004454
	ldr r4, _02004430 @ =0x0202B180
_02004422:
	adds r0, r1, r4
	strb r2, [r0]
	adds r1, #1
	cmp r1, r3
	blo _02004422
	b _02004454
	.align 2, 0
_02004430: .4byte 0x0202B180
_02004434:
	lsls r1, r5, #1
	movs r0, #0xa0
	lsls r0, r0, #0x13
	adds r3, r1, r0
	ldr r0, _0200445C @ =0x0202CF60
	adds r1, r1, r0
	movs r2, #0
	cmp r2, r4
	bhs _02004454
_02004446:
	ldrh r0, [r1]
	strh r0, [r3]
	adds r1, #2
	adds r3, #2
	adds r2, #1
	cmp r2, r4
	blo _02004446
_02004454:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0200445C: .4byte 0x0202CF60

	thumb_func_start sub_02004460
sub_02004460: @ 0x02004460
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r4, _020044A0 @ =0x0202B180
	movs r5, #0
	movs r6, #0
	movs r7, #0xa0
	lsls r7, r7, #0x13
_0200446E:
	ldrb r0, [r4]
	cmp r0, #0
	beq _0200448E
	lsls r0, r5, #5
	ldr r1, _020044A4 @ =0x0202CF60
	adds r0, r0, r1
	str r6, [sp]
	str r6, [sp, #4]
	ldrb r1, [r4]
	str r1, [sp, #8]
	adds r1, r7, #0
	movs r2, #0x20
	movs r3, #1
	bl sub_02005F58
	strb r6, [r4]
_0200448E:
	adds r7, #0x20
	adds r5, #1
	adds r4, #1
	cmp r5, #0x1f
	bls _0200446E
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_020044A0: .4byte 0x0202B180
_020044A4: .4byte 0x0202CF60

	thumb_func_start sub_020044A8
sub_020044A8: @ 0x020044A8
	push {lr}
	movs r0, #0
	bl sub_02004740
	movs r0, #0
	bl sub_02004734
	movs r1, #0
	movs r2, #0
	ldr r0, _020044CC @ =0x0202DBA0
_020044BC:
	str r2, [r0]
	str r2, [r0, #0xc]
	adds r0, #0x18
	adds r1, #1
	cmp r1, #0xf
	bls _020044BC
	pop {r0}
	bx r0
	.align 2, 0
_020044CC: .4byte 0x0202DBA0

	thumb_func_start sub_020044D0
sub_020044D0: @ 0x020044D0
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r1, [r1, #2]
	adds r0, r0, r1
	bx lr
	.align 2, 0

	thumb_func_start sub_020044DC
sub_020044DC: @ 0x020044DC
	push {lr}
	adds r3, r0, #0
	ldrb r0, [r1]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrh r0, [r0, #4]
	strb r0, [r1, #1]
	ldrh r0, [r2, #2]
	ldr r3, [r3, #4]
	adds r0, r0, r3
	ldrb r1, [r1]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldrh r1, [r1, #6]
	bl sub_02004370
	pop {r0}
	bx r0

	thumb_func_start sub_02004500
sub_02004500: @ 0x02004500
	push {r4, r5, r6, r7, lr}
	adds r7, r1, #0
	adds r5, r2, #0
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #3
	ldr r0, _02004544 @ =0x0202DBA0
	adds r4, r1, r0
	ldr r0, [r4]
	cmp r0, #0
	beq _0200451C
	ldr r0, [r4, #0x14]
	bl sub_0200692C
_0200451C:
	str r7, [r4]
	str r5, [r4, #4]
	movs r0, #0
	str r0, [r4, #8]
	str r0, [r4, #0xc]
	str r0, [r4, #0x10]
	str r0, [r4, #0x14]
	cmp r7, #0
	beq _02004568
	movs r0, #0
	ldrsh r1, [r7, r0]
	str r1, [r4, #8]
	lsls r1, r1, #2
	movs r0, #1
	bl sub_02006918
	str r0, [r4, #0x14]
	adds r5, r0, #0
	movs r6, #0
	b _02004562
	.align 2, 0
_02004544: .4byte 0x0202DBA0
_02004548:
	movs r0, #0
	strb r0, [r5]
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_020044D0
	adds r2, r0, #0
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_020044DC
	adds r6, #1
	adds r5, #4
_02004562:
	ldr r0, [r4, #8]
	cmp r6, r0
	blo _02004548
_02004568:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_02004570
sub_02004570: @ 0x02004570
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, r1, #0
	adds r1, r2, #0
	adds r4, r3, #0
	bl sub_02006A00
	adds r1, r0, #0
	adds r1, #8
	adds r0, r5, #0
	adds r2, r4, #0
	bl sub_02004500
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_02004590
sub_02004590: @ 0x02004590
	push {lr}
	movs r1, #0
	movs r2, #0
	bl sub_02004500
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_020045A0
sub_020045A0: @ 0x020045A0
	push {r4, lr}
	movs r4, #0
_020045A4:
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	bl sub_02004500
	adds r4, #1
	cmp r4, #0xf
	ble _020045A4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_020045BC
sub_020045BC: @ 0x020045BC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _020045FC @ =0x0202B29C
	ldr r0, [r0]
	cmp r0, #0
	bne _02004670
	ldr r0, _02004600 @ =0x0202901C
	ldr r0, [r0]
	cmp r0, #0
	beq _020045DC
	bl sub_02004A7C
	cmp r0, #0
	bne _02004670
_020045DC:
	ldr r6, _02004604 @ =0x0202DBA0
	movs r1, #0
_020045E0:
	ldr r0, [r6]
	adds r1, #1
	mov sb, r1
	movs r1, #0x18
	adds r1, r1, r6
	mov r8, r1
	cmp r0, #0
	beq _02004668
	ldr r0, [r6, #0xc]
	cmp r0, #2
	beq _02004668
	ldr r4, [r6, #0x14]
	movs r7, #0
	b _02004662
	.align 2, 0
_020045FC: .4byte 0x0202B29C
_02004600: .4byte 0x0202901C
_02004604: .4byte 0x0202DBA0
_02004608:
	ldrb r0, [r4, #1]
	subs r0, #1
	strb r0, [r4, #1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0200465E
	ldr r2, [r6, #0xc]
	cmp r2, #1
	bne _0200462A
	ldrb r1, [r4]
	ldr r0, [r6, #0x10]
	cmp r1, r0
	bne _0200462A
	cmp r7, #0
	bne _0200462A
	strb r2, [r4, #1]
	b _02004668
_0200462A:
	ldr r0, [r6]
	adds r1, r7, #0
	bl sub_020044D0
	adds r5, r0, #0
	ldrb r0, [r4]
	adds r0, #1
	movs r1, #0
	strb r0, [r4]
	ldrb r0, [r4]
	ldrh r2, [r5]
	cmp r0, r2
	blo _02004646
	strb r1, [r4]
_02004646:
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_020044DC
	ldrh r0, [r5, #2]
	ldr r1, [r6, #4]
	adds r0, r0, r1
	movs r1, #0x10
	movs r2, #1
	bl sub_02004408
_0200465E:
	adds r7, #1
	adds r4, #4
_02004662:
	ldr r0, [r6, #8]
	cmp r7, r0
	blo _02004608
_02004668:
	mov r1, sb
	mov r6, r8
	cmp r1, #0xf
	bls _020045E0
_02004670:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0200467C
sub_0200467C: @ 0x0200467C
	push {r4, lr}
	adds r2, r1, #0
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #3
	ldr r0, _020046A8 @ =0x0202DBA0
	adds r4, r1, r0
	movs r0, #1
	str r0, [r4, #0xc]
	subs r0, #2
	cmp r2, r0
	bne _020046A0
	ldr r0, [r4]
	movs r1, #0
	bl sub_020044D0
	ldrh r0, [r0]
	subs r2, r0, #1
_020046A0:
	str r2, [r4, #0x10]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_020046A8: .4byte 0x0202DBA0

	thumb_func_start sub_020046AC
sub_020046AC: @ 0x020046AC
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #3
	ldr r0, _020046C0 @ =0x0202DBA0
	adds r1, r1, r0
	movs r0, #0
	str r0, [r1, #0xc]
	str r0, [r1, #0x10]
	bx lr
	.align 2, 0
_020046C0: .4byte 0x0202DBA0

	thumb_func_start sub_020046C4
sub_020046C4: @ 0x020046C4
	push {lr}
	adds r2, r1, #0
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #3
	ldr r0, _020046E0 @ =0x0202DBA0
	adds r1, r1, r0
	cmp r2, #1
	beq _020046F4
	cmp r2, #1
	bgt _020046E4
	cmp r2, #0
	beq _020046EA
	b _0200470C
	.align 2, 0
_020046E0: .4byte 0x0202DBA0
_020046E4:
	cmp r2, #2
	beq _020046FE
	b _0200470C
_020046EA:
	ldr r0, [r1, #0xc]
	cmp r0, #2
	bne _0200470C
_020046F0:
	str r2, [r1, #0xc]
	b _0200470C
_020046F4:
	ldr r0, [r1, #0xc]
	cmp r0, #0
	bne _0200470C
	movs r0, #2
	b _0200470A
_020046FE:
	ldr r0, [r1, #0xc]
	cmp r0, #0
	beq _020046F0
	cmp r0, #2
	bne _0200470C
	movs r0, #0
_0200470A:
	str r0, [r1, #0xc]
_0200470C:
	pop {r0}
	bx r0

	thumb_func_start sub_02004710
sub_02004710: @ 0x02004710
	push {lr}
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #3
	ldr r0, _02004728 @ =0x0202DBA0
	adds r1, r1, r0
	ldr r0, [r1]
	cmp r0, #0
	bne _0200472C
	movs r0, #0
	b _0200472E
	.align 2, 0
_02004728: .4byte 0x0202DBA0
_0200472C:
	movs r0, #1
_0200472E:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_02004734
sub_02004734: @ 0x02004734
	ldr r1, _0200473C @ =0x0202901C
	str r0, [r1]
	bx lr
	.align 2, 0
_0200473C: .4byte 0x0202901C

	thumb_func_start sub_02004740
sub_02004740: @ 0x02004740
	ldr r1, _02004748 @ =0x0202B29C
	str r0, [r1]
	bx lr
	.align 2, 0
_02004748: .4byte 0x0202B29C

	thumb_func_start sub_0200474C
sub_0200474C: @ 0x0200474C
	push {lr}
	ldr r1, _02004768 @ =0x0202D770
	movs r0, #0
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [r1, #8]
	movs r0, #0x22
	bl sub_02004854
	movs r0, #0xff
	bl sub_02004844
	pop {r0}
	bx r0
	.align 2, 0
_02004768: .4byte 0x0202D770

	thumb_func_start sub_0200476C
sub_0200476C: @ 0x0200476C
	ldr r0, _02004774 @ =0x0202D770
	ldr r0, [r0]
	bx lr
	.align 2, 0
_02004774: .4byte 0x0202D770

	thumb_func_start sub_02004778
sub_02004778: @ 0x02004778
	push {lr}
	ldr r1, _02004798 @ =0x0202D770
	ldr r0, [r1]
	movs r2, #1
	rsbs r2, r2, #0
	cmp r0, r2
	beq _02004792
	str r2, [r1]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r1, #4]
	movs r0, #1
	str r0, [r1, #8]
_02004792:
	pop {r0}
	bx r0
	.align 2, 0
_02004798: .4byte 0x0202D770

	thumb_func_start sub_0200479C
sub_0200479C: @ 0x0200479C
	push {lr}
	ldr r2, _020047B4 @ =0x0202D770
	ldr r0, [r2]
	cmp r0, #1
	beq _020047B0
	movs r1, #1
	str r1, [r2]
	movs r0, #0
	str r0, [r2, #4]
	str r1, [r2, #8]
_020047B0:
	pop {r0}
	bx r0
	.align 2, 0
_020047B4: .4byte 0x0202D770

	thumb_func_start sub_020047B8
sub_020047B8: @ 0x020047B8
	push {r4, lr}
	ldr r0, _020047EC @ =0x0202D770
	ldr r1, [r0]
	adds r4, r0, #0
	cmp r1, #1
	beq _020047CC
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _02004812
_020047CC:
	cmp r1, #0
	bge _020047F0
	ldr r1, [r4, #0xc]
	movs r0, #0x88
	lsls r0, r0, #5
	bl sub_0200956C
	ldr r1, [r4, #4]
	subs r1, r1, r0
	str r1, [r4, #4]
	cmp r1, #0
	bgt _0200480E
	movs r0, #0
	str r0, [r4, #4]
	subs r0, #2
	b _0200480C
	.align 2, 0
_020047EC: .4byte 0x0202D770
_020047F0:
	ldr r1, [r4, #0xc]
	movs r0, #0x88
	lsls r0, r0, #5
	bl sub_0200956C
	ldr r1, [r4, #4]
	adds r1, r1, r0
	str r1, [r4, #4]
	ldr r0, _02004818 @ =0x00000FFF
	cmp r1, r0
	ble _0200480E
	adds r0, #1
	str r0, [r4, #4]
	movs r0, #2
_0200480C:
	str r0, [r4]
_0200480E:
	movs r0, #1
	str r0, [r4, #8]
_02004812:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_02004818: .4byte 0x00000FFF

	thumb_func_start sub_0200481C
sub_0200481C: @ 0x0200481C
	push {r4, lr}
	ldr r4, _02004840 @ =0x0202D770
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0200483A
	movs r0, #0
	str r0, [r4, #8]
	ldrh r0, [r4, #0x10]
	bl sub_02003D68
	ldr r0, [r4, #4]
	lsls r0, r0, #8
	lsrs r0, r0, #0x10
	bl sub_02003D98
_0200483A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_02004840: .4byte 0x0202D770

	thumb_func_start sub_02004844
sub_02004844: @ 0x02004844
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _02004850 @ =0x0202D770
	str r0, [r1, #0x10]
	bx lr
	.align 2, 0
_02004850: .4byte 0x0202D770

	thumb_func_start sub_02004854
sub_02004854: @ 0x02004854
	ldr r1, _0200485C @ =0x0202D770
	str r0, [r1, #0xc]
	bx lr
	.align 2, 0
_0200485C: .4byte 0x0202D770

	thumb_func_start sub_02004860
sub_02004860: @ 0x02004860
	push {r4, lr}
	ldr r4, _02004894 @ =0x0202B1C0
	movs r0, #0
	strb r0, [r4]
	str r0, [r4, #0x24]
	str r0, [r4, #0x28]
	str r0, [r4, #0x2c]
	str r0, [r4, #0x30]
	movs r1, #0
	movs r2, #0
	bl sub_02004AC8
	movs r0, #0x20
	bl sub_02004AE8
	movs r1, #0
	adds r4, #1
	movs r2, #0
_02004884:
	adds r0, r1, r4
	strb r2, [r0]
	adds r1, #1
	cmp r1, #0x1f
	bls _02004884
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_02004894: .4byte 0x0202B1C0

	thumb_func_start sub_02004898
sub_02004898: @ 0x02004898
	push {r4, r5, lr}
	ldr r5, _020048CC @ =0x0202B1C0
	ldr r4, [r5, #0x34]
	str r4, [r5, #0x30]
	adds r1, r4, #0
	cmp r1, #0x1f
	ble _020048A8
	movs r1, #0x20
_020048A8:
	movs r0, #0x20
	bl sub_0200956C
	str r0, [r5, #0x24]
	adds r1, r4, #0
	cmp r1, #0x20
	bgt _020048B8
	movs r1, #0x20
_020048B8:
	cmp r1, #0
	bge _020048BE
	adds r1, #0x1f
_020048BE:
	asrs r0, r1, #5
	str r0, [r5, #0x28]
	str r0, [r5, #0x2c]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_020048CC: .4byte 0x0202B1C0

	thumb_func_start sub_020048D0
sub_020048D0: @ 0x020048D0
	push {r4, lr}
	ldr r4, _020048F4 @ =0x0202B1C0
	movs r0, #1
	strb r0, [r4]
	bl sub_02004898
	movs r1, #0
	adds r4, #1
	movs r2, #1
_020048E2:
	adds r0, r1, r4
	strb r2, [r0]
	adds r1, #1
	cmp r1, #0x1f
	bls _020048E2
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_020048F4: .4byte 0x0202B1C0

	thumb_func_start sub_020048F8
sub_020048F8: @ 0x020048F8
	push {r4, lr}
	ldr r2, _02004930 @ =0x0202DD30
	movs r1, #0
	ldr r3, _02004934 @ =0x000001FF
	ldr r0, _02004938 @ =0x0202B1C0
	ldr r0, [r0, #0x38]
_02004904:
	strh r0, [r2]
	adds r1, #1
	adds r2, #2
	cmp r1, r3
	bls _02004904
	ldr r4, _02004938 @ =0x0202B1C0
	movs r0, #1
	strb r0, [r4]
	bl sub_02004898
	movs r1, #0
	adds r4, #1
	movs r2, #1
_0200491E:
	adds r0, r1, r4
	strb r2, [r0]
	adds r1, #1
	cmp r1, #0x1f
	bls _0200491E
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_02004930: .4byte 0x0202DD30
_02004934: .4byte 0x000001FF
_02004938: .4byte 0x0202B1C0

	thumb_func_start sub_0200493C
sub_0200493C: @ 0x0200493C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r2, _02004998 @ =0x0202B1C0
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0
	bne _02004954
	b _02004A6C
_02004954:
	ldr r0, [r2, #0x30]
	subs r0, #1
	str r0, [r2, #0x30]
	cmp r0, #0
	bne _02004960
	strb r0, [r2]
_02004960:
	ldr r0, [r2, #0x2c]
	subs r0, #1
	str r0, [r2, #0x2c]
	cmp r0, #0
	beq _0200496C
	b _02004A6C
_0200496C:
	ldr r0, [r2, #0x28]
	str r0, [r2, #0x2c]
	ldr r0, _0200499C @ =0x0202CF60
	mov ip, r0
	ldr r1, _020049A0 @ =0x0202DD30
	mov sb, r1
	ldr r4, _020049A4 @ =0x0202B180
	adds r3, r2, #1
	movs r1, #0
_0200497E:
	ldrb r0, [r3]
	cmp r0, #0
	bne _020049A8
	movs r2, #0x20
	add ip, r2
	add sb, r2
	adds r1, #1
	str r1, [sp, #8]
	adds r4, #1
	str r4, [sp, #4]
	adds r3, #1
	str r3, [sp]
	b _02004A62
	.align 2, 0
_02004998: .4byte 0x0202B1C0
_0200499C: .4byte 0x0202CF60
_020049A0: .4byte 0x0202DD30
_020049A4: .4byte 0x0202B180
_020049A8:
	movs r0, #1
	strb r0, [r4]
	movs r6, #0
	mov sl, r6
	adds r1, #1
	str r1, [sp, #8]
	adds r4, #1
	str r4, [sp, #4]
	adds r3, #1
	str r3, [sp]
	movs r0, #0x1f
	mov r8, r0
	ldr r7, _020049FC @ =0x0202B1C0
_020049C2:
	mov r1, ip
	ldrh r0, [r1]
	movs r5, #0x1f
	ands r5, r0
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x15
	mov r2, r8
	ands r1, r2
	lsrs r3, r0, #0x1a
	ands r3, r2
	mov r6, sb
	ldrh r0, [r6]
	movs r2, #0x1f
	ands r2, r0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x15
	mov r6, r8
	ands r4, r6
	lsrs r6, r0, #0x1a
	mov r0, r8
	ands r6, r0
	cmp r5, r2
	bge _02004A00
	ldr r0, [r7, #0x24]
	adds r5, r5, r0
	cmp r5, r2
	blt _02004A0E
	b _02004A0C
	.align 2, 0
_020049FC: .4byte 0x0202B1C0
_02004A00:
	cmp r5, r2
	ble _02004A0E
	ldr r0, [r7, #0x24]
	subs r5, r5, r0
	cmp r5, r2
	bgt _02004A0E
_02004A0C:
	adds r5, r2, #0
_02004A0E:
	cmp r1, r4
	bge _02004A1C
	ldr r0, [r7, #0x24]
	adds r1, r1, r0
	cmp r1, r4
	blt _02004A2A
	b _02004A28
_02004A1C:
	cmp r1, r4
	ble _02004A2A
	ldr r0, [r7, #0x24]
	subs r1, r1, r0
	cmp r1, r4
	bgt _02004A2A
_02004A28:
	adds r1, r4, #0
_02004A2A:
	cmp r3, r6
	bge _02004A38
	ldr r0, [r7, #0x24]
	adds r3, r3, r0
	cmp r3, r6
	blt _02004A46
	b _02004A44
_02004A38:
	cmp r3, r6
	ble _02004A46
	ldr r0, [r7, #0x24]
	subs r3, r3, r0
	cmp r3, r6
	bgt _02004A46
_02004A44:
	adds r3, r6, #0
_02004A46:
	lsls r0, r3, #0xa
	lsls r1, r1, #5
	adds r0, r0, r1
	adds r0, r0, r5
	mov r1, ip
	strh r0, [r1]
	movs r2, #1
	add sl, r2
	movs r6, #2
	add ip, r6
	add sb, r6
	mov r0, sl
	cmp r0, #0xf
	bls _020049C2
_02004A62:
	ldr r1, [sp, #8]
	ldr r4, [sp, #4]
	ldr r3, [sp]
	cmp r1, #0x1f
	bls _0200497E
_02004A6C:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_02004A7C
sub_02004A7C: @ 0x02004A7C
	push {lr}
	ldr r0, _02004A90 @ =0x0202B1C0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _02004A94
	movs r0, #1
	b _02004A96
	.align 2, 0
_02004A90: .4byte 0x0202B1C0
_02004A94:
	movs r0, #0
_02004A96:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_02004A9C
sub_02004A9C: @ 0x02004A9C
	push {lr}
	adds r3, r1, #0
	ldr r1, _02004AB8 @ =0x0202B1C1
	adds r0, r0, r1
	movs r1, #0
	cmp r1, r3
	bhs _02004AB4
_02004AAA:
	strb r2, [r0]
	adds r1, #1
	adds r0, #1
	cmp r1, r3
	blo _02004AAA
_02004AB4:
	pop {r0}
	bx r0
	.align 2, 0
_02004AB8: .4byte 0x0202B1C1

	thumb_func_start sub_02004ABC
sub_02004ABC: @ 0x02004ABC
	ldr r1, _02004AC4 @ =0x0202B1C0
	movs r0, #0
	strb r0, [r1]
	bx lr
	.align 2, 0
_02004AC4: .4byte 0x0202B1C0

	thumb_func_start sub_02004AC8
sub_02004AC8: @ 0x02004AC8
	push {r4, lr}
	ldr r4, _02004AE4 @ =0x0202B1C0
	movs r3, #0x1f
	ands r2, r3
	lsls r2, r2, #0xa
	ands r1, r3
	lsls r1, r1, #5
	adds r2, r2, r1
	ands r0, r3
	adds r2, r2, r0
	str r2, [r4, #0x38]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_02004AE4: .4byte 0x0202B1C0

	thumb_func_start sub_02004AE8
sub_02004AE8: @ 0x02004AE8
	ldr r1, _02004AF0 @ =0x0202B1C0
	str r0, [r1, #0x34]
	bx lr
	.align 2, 0
_02004AF0: .4byte 0x0202B1C0

	thumb_func_start sub_02004AF4
sub_02004AF4: @ 0x02004AF4
	push {lr}
	ldr r0, _02004B00 @ =sub_0200493C
	bl sub_02004B10
	pop {r0}
	bx r0
	.align 2, 0
_02004B00: .4byte sub_0200493C

	thumb_func_start sub_02004B04
sub_02004B04: @ 0x02004B04
	ldr r1, _02004B0C @ =0x0202B1A0
	movs r0, #0
	str r0, [r1]
	bx lr
	.align 2, 0
_02004B0C: .4byte 0x0202B1A0

	thumb_func_start sub_02004B10
sub_02004B10: @ 0x02004B10
	ldr r1, _02004B18 @ =0x0202B1A0
	str r0, [r1]
	bx lr
	.align 2, 0
_02004B18: .4byte 0x0202B1A0

	thumb_func_start sub_02004B1C
sub_02004B1C: @ 0x02004B1C
	push {lr}
	ldr r0, _02004B30 @ =0x0202B1A0
	ldr r0, [r0]
	cmp r0, #0
	beq _02004B2A
	bl sub_020090FC
_02004B2A:
	pop {r0}
	bx r0
	.align 2, 0
_02004B30: .4byte 0x0202B1A0

	thumb_func_start sub_02004B34
sub_02004B34: @ 0x02004B34
	ldr r0, _02004B40 @ =0x0202B1A4
	movs r1, #0
	strb r1, [r0]
	ldr r0, _02004B44 @ =0x02029014
	strb r1, [r0]
	bx lr
	.align 2, 0
_02004B40: .4byte 0x0202B1A4
_02004B44: .4byte 0x02029014

	thumb_func_start sub_02004B48
sub_02004B48: @ 0x02004B48
	push {r4, lr}
	adds r3, r0, #0
	ldr r2, [r3, #4]
	cmp r2, #0
	bne _02004B66
	strh r2, [r3, #0xc]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r3, #0xe]
	strh r2, [r3, #0x12]
	strh r2, [r3, #0x14]
	strh r0, [r3, #0x16]
	strh r0, [r3, #0x18]
	strh r2, [r3, #0x1a]
	b _02004BDC
_02004B66:
	movs r1, #8
	ldrsh r0, [r3, r1]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r1, [r0, #8]
	adds r1, r2, r1
	movs r0, #0xa
	ldrsh r2, [r3, r0]
	adds r0, r3, #0
	adds r0, #0x25
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	muls r0, r2, r0
	adds r4, r1, r0
	ldrh r1, [r1, #2]
	ldrh r0, [r4, #6]
	strh r0, [r3, #0xc]
	movs r2, #8
	ldrsh r0, [r4, r2]
	lsls r0, r0, #8
	strh r0, [r3, #0xe]
	adds r2, r4, #0
	adds r2, #0xa
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _02004BAA
	ldrh r0, [r4, #0xa]
	strh r0, [r3, #0x12]
	ldrh r0, [r4, #0xc]
	strh r0, [r3, #0x14]
	adds r2, #4
	b _02004BAE
_02004BAA:
	strh r0, [r3, #0x12]
	strh r0, [r3, #0x14]
_02004BAE:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _02004BC4
	ldrh r0, [r2]
	strh r0, [r3, #0x16]
	adds r2, #2
	ldrh r0, [r2]
	strh r0, [r3, #0x18]
	adds r2, #2
	b _02004BCC
_02004BC4:
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r3, #0x16]
	strh r0, [r3, #0x18]
_02004BCC:
	movs r0, #4
	ands r1, r0
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	beq _02004BDA
	ldrh r0, [r2]
_02004BDA:
	strh r0, [r3, #0x1a]
_02004BDC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_02004BE4
sub_02004BE4: @ 0x02004BE4
	push {lr}
	adds r1, r0, #0
	movs r2, #0x1a
	ldrsh r0, [r1, r2]
	cmp r0, #1
	bne _02004BF4
	movs r0, #0
	strh r0, [r1, #0x1a]
_02004BF4:
	pop {r0}
	bx r0
