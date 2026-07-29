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
