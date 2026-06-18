	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .text
	.GLOBAL _start
	.ARM
	.syntax unified

_start:					@ Entry point of the ROM on startup
	b init				@ Skip over the header information

	.INCLUDE "asm/rom_header.s"

	.ALIGN 2, 0

	ARM_FUNC_START init
init:
	mov r0, #0x12
	msr cpsr_fc, r0
	ldr sp, _080000F8 @ =0x03007FA0
	mov r0, #0x1f
	msr cpsr_fc, r0
	ldr sp, _080000F4 @ =0x03007F00
	ldr r1, _08000200 @ =0x03007FFC
	add r0, pc, #0x18 @ =IntrMain
	str r0, [r1]
	ldr r1, _08000204 @ =0x0800B335
	mov lr, pc
	bx r1
_080000F0:
	b init
_080000F4: 
	.4byte 0x03007F00
_080000F8: 
	.4byte 0x03007FA0

	ARM_FUNC_START IntrMain
IntrMain: @ 0x080000FC
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
	bne _0800019C
	add ip, ip, #4
	ands r0, r1, #1
	bne _0800019C
	add ip, ip, #4
	ands r0, r1, #4
	bne _0800019C
	add ip, ip, #4
	ands r0, r1, #2
	bne _0800019C
	add ip, ip, #4
	ands r0, r1, #0x100
	bne _0800019C
	add ip, ip, #4
	ands r0, r1, #0x200
	bne _0800019C
	add ip, ip, #4
	ands r0, r1, #0x400
	bne _0800019C
	add ip, ip, #4
	ands r0, r1, #0x800
	bne _0800019C
	add ip, ip, #4
	ands r0, r1, #0x1000
	bne _0800019C
	add ip, ip, #4
	ands r0, r1, #0x2000
	strbne r0, [r3, #-0x17c]
_08000198:
	bne _08000198
_0800019C:
	strh r0, [r3, #2]
	mov r1, #0x20c0
	bic r2, r2, r0
	and r1, r1, r2
	strh r1, [r3]
	mrs r3, apsr
	bic r3, r3, #0xdf
	orr r3, r3, #0x1f
	msr cpsr_fc, r3
	ldr r1, _08000208 @ =0x03002560
	add r1, r1, ip
	ldr r0, [r1]
	stmdb sp!, {lr}
	add lr, pc, #0x0 @ =0x080001D8
	bx r0

	arm_func_start sub_080001D8
sub_080001D8: @ 0x080001D8
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
_08000200: .4byte 0x03007FFC
_08000204: .4byte sub_0800B334
_08000208: .4byte 0x03002560

	arm_func_start sub_0800020C
sub_0800020C:
	stm r0!, {r4, r5, r6, r7, r8, sb, sl, fp, ip, sp, lr}
	mov r0, #0
	bx lr

	arm_func_start sub_08000218
sub_08000218:
	ldm r0!, {r4, r5, r6, r7, r8, sb, sl, fp, ip, sp, lr}
	movs r0, r1
	moveq r0, #1
	bx lr
