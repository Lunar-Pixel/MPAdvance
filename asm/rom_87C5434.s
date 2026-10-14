	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .text
	.ARM
	.syntax unified
	
	arm_func_start arm_sub_087C5434
arm_sub_087C5434: @ 0x087C5434
	mov ip, sp
	push {r4, r5, r6, fp, ip, lr, pc}
	ldr r3, _087C5454 @ =0x030029C0
	ldr r4, [r3]
	sub fp, ip, #4
	ldr r6, _087C5458 @ =0x0807FC14
	mov r5, #0
	b _087C5460
	.align 2, 0
_087C5454: .4byte 0x030029C0
_087C5458: .4byte 0x0807FC14
_087C545C:
	ldr r4, [r4, #0x30]
_087C5460:
	cmp r4, #0
	beq _087C548C
	mov r0, r4
	ldrb r3, [r4, #1]
	mov r1, r5
	ldr ip, [r6, r3, lsl #2]
	mov lr, pc
	bx ip
	add r5, r5, r0
	cmp r5, #0x7f
	ble _087C545C
_087C548C:
	ldmdb fp, {r4, r5, r6, fp, sp, lr}
	bx lr

	arm_func_start sub_087C5494
sub_087C5494: @ 0x087C5494
	mov ip, sp
	push {r4, r5, r6, r7, r8, sb, sl, fp, ip, lr, pc}
	mov r3, #0x80
	ldr r2, _087C55B0 @ =0x02033784
	mov r7, r0
	add r4, r7, #4
	strb r3, [r4, #4]
	sub fp, ip, #4
	ldrb r3, [r2]
	mov sb, r1
	ldrb lr, [r7, #4]
	and r3, r3, #1
	lsl r6, r3, #0xa
	ldr r2, _087C55B4 @ =0x020376B0
	ands r0, lr, #1
	add r5, r2, sb, lsl #3
	add r8, r6, r5
	beq _087C5658
	ldrb r3, [r4, #2]
	ldrsh ip, [r4, #6]
	ldr r2, _087C55B8 @ =0x0807F5F4
	lsr r3, r3, #2
	and sl, r3, #0xf
	lsl r1, sl, #1
	ldrh r3, [r2, r1]
	add r3, ip, r3
	cmp r3, #1
	bmi _087C5534
	ldrsh r3, [r4, #6]
	cmp r3, #0xef
	bgt _087C5534
	ldr r2, _087C55BC @ =0x0807F60C
	ldrh r3, [r2, r1]
	add r3, ip, r3
	cmp r3, #1
	bmi _087C5534
	ldrsh r3, [r4, #8]
	ldrh r1, [r4, #8]
	cmp r3, #0x9f
	ble _087C553C
_087C5534:
	mov r0, #0
	b _087C5658
_087C553C:
	mov r2, #0x1fc0000
	add r2, r2, #0x30000
	and r2, r2, ip, lsl #16
	ldr r3, _087C55C0 @ =0x0807F624
	and r1, r1, #0xff
	ldr ip, [r3, sl, lsl #2]
	orr r2, r2, r1
	ldr r0, [r4, #0x14]
	orr r2, r2, ip
	lsl r3, lr, #9
	and r3, r3, #0xc00
	orr r2, r2, r3
	str r2, [r6, r5]
	bl sub_087C5F40
	cmp r0, #0
	blt _087C55C4
	ldr r1, [r6, r5]
	ldrb r2, [r7, #4]
	orr r3, r1, #0x100
	str r3, [r6, r5]
	tst r2, #8
	orrne r3, r1, #0x300
	strne r3, [r6, r5]
	lsl r3, r0, #0x19
	ldr r2, [r6, r5]
	and r3, r3, #0x3e000000
	orr r2, r2, r3
	str r2, [r6, r5]
	b _087C55F4
	.align 2, 0
_087C55B0: .4byte 0x02033784
_087C55B4: .4byte 0x020376B0
_087C55B8: .4byte 0x0807F5F4
_087C55BC: .4byte 0x0807F60C
_087C55C0: .4byte 0x0807F624
_087C55C4:
	ldrb r2, [r4, #2]
	mov r3, #0
	str r3, [r4, #0x14]
	tst r2, #1
	ldrne r3, [r6, r5]
	orrne r3, r3, #0x10000000
	strne r3, [r6, r5]
	ldrb r3, [r4, #2]
	tst r3, #2
	ldrne r3, [r6, r5]
	orrne r3, r3, #0x20000000
	strne r3, [r6, r5]
_087C55F4:
	ldrb r3, [r4]
	tst r3, #0x10
	ldrne r3, [r8]
	orrne r3, r3, #0x1000
	strne r3, [r8]
	ldrb r3, [r4, #1]
	lsrs r3, r3, #7
	ldrne r3, [r8]
	orrne r3, r3, #0x2000
	strne r3, [r8]
	ldr r3, [r4, #0x10]
	ldrh r0, [r4]
	mvn r1, #0xfc00
	ldrh r2, [r3, #2]
	and r1, r1, r0, lsr #5
	lsl r2, r2, #2
	and r2, r2, #0xc00
	ldrh r3, [r4, #2]
	orr r2, r2, r1
	lsl r3, r3, #6
	and r3, r3, #0xf000
	orr r2, r2, r3
	strh r2, [r8, #4]
	mov r0, #1
	strb sb, [r4, #4]
_087C5658:
	ldmdb fp, {r4, r5, r6, r7, r8, sb, sl, fp, sp, lr}
	bx lr

	arm_func_start sub_087C5660
sub_087C5660: @ 0x087C5660
	mov ip, sp
	push {r4, r5, r6, r7, r8, sb, sl, fp, ip, lr, pc}
	mov r2, #0
	ldr r3, _087C598C @ =0x02033784
	sub fp, ip, #4
	sub sp, sp, #0x40
	str r2, [fp, #-0x40]
	ldrb r2, [r3]
	add ip, r0, #4
	ldr r0, [ip, #0x14]
	mov r3, #0x80
	strb r3, [ip, #4]
	ldr r3, [fp, #-0x40]
	strb r3, [ip, #5]
	str r1, [fp, #-0x3c]
	ldr r3, _087C5990 @ =0x020376B0
	and r2, r2, #1
	add r3, r3, r1, lsl #3
	add r2, r3, r2, lsl #10
	str r2, [fp, #-0x54]
	cmp r0, #0
	beq _087C5F34
	ldr r2, [ip, #0x18]
	cmp r2, #0
	bne _087C56F4
	ldrb r3, [ip, #1]
	mov r4, #1
	strh r4, [ip, #0x12]
	orr r3, r3, #0x80
	strb r3, [ip, #1]
	ldr r5, [fp, #-0x40]
	ldrb r3, [ip, #0x10]
	str r5, [fp, #-0x4c]
	ldr r3, [r0, r3, lsl #2]
	str r3, [fp, #-0x44]
	str r5, [fp, #-0x50]
	b _087C5854
_087C56F4:
	ldrb r3, [ip, #0x10]
	ldr r0, [r2, r3, lsl #2]
	ldrb r2, [ip, #0x11]
	add r0, r0, r2, lsl #2
	ldrsb r1, [r0, #2]
	str r1, [fp, #-0x4c]
	ldrsb r2, [r0, #3]
	ldrb r3, [ip, #1]
	str r2, [fp, #-0x50]
	and r1, r3, #0x7f
	strb r1, [ip, #1]
	ldrb r3, [r0]
	cmp r3, #0
	cmpne r3, #0xff
	beq _087C577C
	ldrh r3, [ip, #0x12]
	add r3, r3, #1
	strh r3, [ip, #0x12]
	ldrb lr, [r0]
	lsl r3, r3, #0x10
	cmp lr, r3, lsr #16
	bhi _087C5834
	ldrb r2, [r0, #4]
	cmp r2, #0
	cmpne r2, #0xff
	bne _087C5820
	ldrb r3, [ip, #0xe]
	cmp r3, #0
	mov r4, r3
	bne _087C5788
	cmp r2, #0
	cmpne r2, #0xff
	bne _087C5788
	strh lr, [ip, #0x12]
_087C577C:
	orr r3, r1, #0x80
	strb r3, [ip, #1]
	b _087C5834
_087C5788:
	ldrb r3, [ip, #2]
	tst r3, #0x10
	orrne r3, r3, #0x20
	strbne r3, [ip, #2]
	mov r3, r4
	and r1, r3, #0xff
	cmp r1, #0xff
	beq _087C57C8
	cmp r2, #0
	movne r3, #0
	moveq r3, #1
	cmp r1, #0
	moveq r2, r3
	movne r2, #0
	cmp r2, #0
	beq _087C57DC
_087C57C8:
	mov r3, #0
	strh r3, [ip, #0x12]
	ldrb r2, [ip, #1]
	strb r3, [ip, #0x11]
	b _087C5808
_087C57DC:
	ldrb r3, [ip, #0xf]
	add r3, r3, #1
	strb r3, [ip, #0xf]
	and r3, r3, #0xff
	cmp r3, r1
	bls _087C5814
	strb r4, [ip, #0xf]
	ldrh r3, [ip, #0x12]
	ldrb r2, [ip, #1]
	sub r3, r3, #1
	strh r3, [ip, #0x12]
_087C5808:
	orr r2, r2, #0x80
	strb r2, [ip, #1]
	b _087C5834
_087C5814:
	strh r2, [ip, #0x12]
	strb r2, [ip, #0x11]
	b _087C5834
_087C5820:
	ldr r4, [fp, #-0x40]
	ldrb r3, [ip, #0x11]
	strh r4, [ip, #0x12]
	add r3, r3, #1
	strb r3, [ip, #0x11]
_087C5834:
	ldrb r3, [r0, #1]
	cmp r3, #0xff
	moveq r5, #0
	streq r5, [fp, #-0x44]
	ldrbne r2, [r0, #1]
	ldrne r3, [ip, #0x14]
	ldrne r2, [r3, r2, lsl #2]
	strne r2, [fp, #-0x44]
_087C5854:
	ldr r0, [fp, #-0x44]
	cmp r0, #0
	moveq r4, r0
	ldrne r1, [fp, #-0x44]
	ldrbne r4, [r1]
	addne r1, r1, #2
	strne r1, [fp, #-0x44]
	ldr r0, [ip, #0x24]
	str ip, [fp, #-0x68]
	bl sub_087C5F40
	cmp r0, #0
	str r0, [fp, #-0x58]
	ldr ip, [fp, #-0x68]
	movlt r3, #0
	strlt r3, [ip, #0x24]
	blt _087C58C0
	ldr r2, [ip, #0x24]
	ldrh r3, [r2]
	add r3, r3, #1
	lsl r3, r3, #0x10
	cmp r3, #0x20000
	bls _087C5F34
	ldrh r3, [r2, #2]
	add r3, r3, #1
	lsl r3, r3, #0x10
	cmp r3, #0x20000
	bls _087C5F34
_087C58C0:
	ldr r2, [fp, #-0x3c]
	add r3, r2, r4
	cmp r3, #0x80
	bgt _087C5F34
	ldrb r3, [ip]
	tst r3, #1
	beq _087C5F34
	mov r3, #0
	str r3, [fp, #-0x64]
	ldrb sb, [ip, #2]
	cmp r3, r4
	bge _087C5F0C
	str r4, [fp, #-0x48]
_087C58F4:
	ldr r4, [fp, #-0x44]
	ldrh r1, [r4, #2]
	ldrh r3, [r4]
	ldr r5, [fp, #-0x5c]
	orr r1, r3, r1, lsl #16
	str r1, [fp, #-0x60]
	lsr r2, r5, #0x10
	ldrh r1, [r4, #4]
	lsl r2, r2, #0x10
	ldr r0, [fp, #-0x60]
	orr r1, r1, r2
	bic r3, r0, #0xfe000000
	lsr r3, r3, #0x10
	str r1, [fp, #-0x5c]
	lsl r3, r3, #0x10
	ldr r1, [fp, #-0x4c]
	lsr r3, r3, #0x10
	ldrsh r2, [ip, #6]
	tst r3, #0x80
	add r2, r2, r1
	mvnne r3, r3, lsl #24
	mvnne r3, r3, lsr #24
	andeq r3, r3, #0xff
	add r3, r2, r3
	lsl r3, r3, #0x10
	asr r1, r3, #0x10
	ldrsh r3, [ip, #8]
	ldr r2, [fp, #-0x60]
	mov r8, r1
	ldr r4, [fp, #-0x50]
	tst r2, #0x80
	add r2, r3, r4
	beq _087C5994
	ldr r5, [fp, #-0x60]
	lsl r3, r5, #0x10
	orr r3, r3, #0xff000000
	add r3, r2, r3, asr #16
	b _087C59A4
	.align 2, 0
_087C598C: .4byte 0x02033784
_087C5990: .4byte 0x020376B0
_087C5994:
	ldr r0, [fp, #-0x60]
	lsl r3, r0, #0x10
	and r3, r3, #0xff0000
	add r3, r2, r3, lsr #16
_087C59A4:
	lsl r3, r3, #0x10
	asr r0, r3, #0x10
	sub r1, fp, #0x60
	ldm r1, {r1, r4}
	ldr r5, [fp, #-0x54]
	bic r1, r1, #0xff
	bic r2, r1, #0x1fc0000
	bic r3, r2, #0x30000
	str r3, [fp, #-0x60]
	bic r1, r4, #0xc00
	strh r1, [r5, #4]
	ldr r2, [ip, #0x20]
	ldrh r3, [r2, #2]
	mov r6, r0
	lsl r3, r3, #2
	and r3, r3, #0xc00
	orr r1, r1, r3
	strh r1, [r5, #4]
	tst sb, #0x10
	beq _087C5B1C
	bic r3, r1, #0xfc00
	lsl lr, r3, #0x16
	and r2, r1, #0xfc00
	ldr r0, [fp, #-0x60]
	mvn r1, #0xfc00
	ldr r5, [fp, #-0x64]
	ands r3, r0, #0xc000
	ldrh r0, [ip]
	mov r4, r3
	and r3, r1, r0, lsr #5
	lsl r1, r5, #0x10
	add r3, r3, r1, lsr #16
	bic r3, r3, #0xfc00
	orr r2, r2, r3
	ldr r3, [fp, #-0x54]
	lsr lr, lr, #0x16
	strh r2, [r3, #4]
	mov sl, r1
	bne _087C5A60
	ldr r5, [fp, #-0x60]
	mov r3, #0x10000
	and r1, r5, #0xc0000000
	lsr r2, r1, #0x1d
	lsl r3, r3, r2
	asr r2, r3, #0x10
	mov r7, r1
	b _087C5A90
_087C5A60:
	ldr r1, [fp, #-0x60]
	and r3, r1, #0xc0000000
	lsr r2, r3, #0x1e
	cmp r2, #2
	mov r7, r3
	bhi _087C5A8C
	add r2, r2, #1
	mov r3, #0x10000
	lsl r3, r3, r2
	asr r2, r3, #0x10
	b _087C5A90
_087C5A8C:
	mov r2, #0x20
_087C5A90:
	ldrb r1, [ip, #2]
	mov r5, r2
	tst r1, #0x20
	beq _087C5AFC
	lsl r3, r0, #0x11
	lsr r2, sl, #0x10
	add r2, r2, r3, lsr #22
	lsl r2, r2, #5
	add r2, r2, #0x6000000
	lsr r3, r1, #6
	add r2, r2, #0x10000
	str r2, [fp, #-0x30]
	and r3, r3, #1
	strb r3, [fp, #-0x38]
	lsl r2, r5, #5
	strh r2, [fp, #-0x2c]
	lsl r3, lr, #5
	strh r3, [fp, #-0x2a]
	ldr r3, [ip, #0x1c]
	ldr r2, _087C5E1C @ =0x0807FC10
	str r3, [fp, #-0x34]
	str ip, [fp, #-0x68]
	sub r0, fp, #0x38
	ldr ip, [r2]
	mov lr, pc
	bx ip
	ldr ip, [fp, #-0x68]
_087C5AFC:
	lsl r3, r5, #0x10
	lsr r3, r3, #0x10
	add r3, r3, sl, lsr #16
	lsl r3, r3, #0x10
	ldrb sb, [ip, #2]
	asr r3, r3, #0x10
	str r3, [fp, #-0x64]
	b _087C5B5C
_087C5B1C:
	bic r3, r1, #0xfc00
	lsl r3, r3, #0x16
	lsr r3, r3, #0x16
	mvn r0, #0xfc00
	ldr r2, [fp, #-0x60]
	and r1, r1, #0xfc00
	ldr r5, [fp, #-0x60]
	and r4, r2, #0xc000
	ldrh r2, [ip]
	and r7, r5, #0xc0000000
	and r2, r0, r2, lsr #5
	add r3, r3, r2
	and r3, r3, r0
	ldr r2, [fp, #-0x54]
	orr r1, r1, r3
	strh r1, [r2, #4]
_087C5B5C:
	ldr r5, [fp, #-0x54]
	ldrh r3, [r5, #4]
	and r2, sb, #0xf
	bic r1, r3, #0xf000
	add r2, r2, r3, lsr #12
	lsl r2, r2, #0xc
	and r2, r2, #0xf000
	orr r1, r1, r2
	strh r1, [r5, #4]
	ldr r0, [fp, #-0x58]
	cmp r0, #0
	blt _087C5E30
	ldrb r3, [ip]
	lsr r3, r3, #3
	ands lr, r3, #1
	beq _087C5BCC
	lsr r0, r4, #0xb
	ldr r2, _087C5E20 @ =0x0807F654
	orr r0, r0, r7, lsr #29
	ldrb r1, [r2, r0]
	sub r1, r8, r1, lsr #1
	lsl r1, r1, #0x10
	add r2, r2, #1
	ldrb r3, [r2, r0]
	asr r8, r1, #0x10
	sub r3, r6, r3, lsr #1
	lsl r3, r3, #0x10
	asr r6, r3, #0x10
_087C5BCC:
	ldr r3, [ip, #0x24]
	ldrh r2, [ip, #8]
	ldr r5, [fp, #-0x50]
	ldrh r0, [ip, #6]
	ldrsh r1, [r3]
	add r2, r5, r2
	ldr r5, _087C5E20 @ =0x0807F654
	lsr r4, r4, #0xb
	ldrh r3, [ip, #0xc]
	orr r4, r4, r7, lsr #29
	ldrb sb, [r5, r4]
	add r3, r3, r2
	rsb r3, r3, r6
	lsl r3, r3, #0x10
	asr r6, r3, #0x10
	ldr r3, [fp, #-0x4c]
	ldrh r2, [ip, #0xa]
	add r0, r3, r0
	add r2, r2, r0
	rsb r2, r2, r8
	lsl r2, r2, #0x10
	rsb r0, lr, #1
	asr r0, sb, r0
	ldr r3, _087C5E24 @ =0x0807FC08
	add r0, r0, r2, asr #16
	str ip, [fp, #-0x68]
	lsl r0, r0, #0x10
	ldr sl, [r3]
	asr r0, r0, #0x10
	mov lr, pc
	bx sl
	ldr ip, [fp, #-0x68]
	ldr r1, _087C5E28 @ =0x0807F655
	lsl r5, r0, #0x10
	ldrb r0, [ip]
	ldrb r7, [r1, r4]
	asr r5, r5, #0x10
	ldr r3, [ip, #0x24]
	lsr r0, r0, #3
	and r0, r0, #1
	rsb r0, r0, #1
	add r0, r6, r7, asr r0
	lsl r0, r0, #0x10
	ldrsh r1, [r3, #2]
	asr r0, r0, #0x10
	mov lr, pc
	bx sl
	ldr ip, [fp, #-0x68]
	ldr r2, [ip, #0x24]
	lsl r8, r0, #0x10
	ldrb r3, [r2, #4]
	mov r0, r5
	ldr r6, _087C5E2C @ =0x0807F240
	add r3, r3, #0x40
	lsl r3, r3, #1
	ldrsh r1, [r6, r3]
	asr r8, r8, #0x10
	mov lr, pc
	bx sl
	ldr ip, [fp, #-0x68]
	ldr r2, [ip, #0x24]
	ldrb r3, [r2, #4]
	mov r4, r0
	lsl r3, r3, #1
	ldrsh r1, [r6, r3]
	mov r0, r8
	mov lr, pc
	bx sl
	ldr ip, [fp, #-0x68]
	rsb r4, r0, r4
	ldr r2, [ip, #0x24]
	mov r0, r5
	ldrb r3, [r2, #4]
	lsl r4, r4, #0x10
	lsl r3, r3, #1
	ldrsh r1, [r6, r3]
	asr r4, r4, #0x10
	mov lr, pc
	bx sl
	ldr ip, [fp, #-0x68]
	ldr r2, [ip, #0x24]
	ldrb r3, [r2, #4]
	mov r5, r0
	add r3, r3, #0x40
	lsl r3, r3, #1
	ldrsh r1, [r6, r3]
	mov r0, r8
	mov lr, pc
	bx sl
	ldr ip, [fp, #-0x68]
	add r5, r5, r0
	ldr r2, [fp, #-0x60]
	lsl r5, r5, #0x10
	ldrb r3, [ip]
	orr r2, r2, #0x100
	lsr r3, r3, #3
	and lr, r3, #1
	rsb r1, lr, #1
	sub r4, r4, sb, asr r1
	lsl r4, r4, #0x10
	str r2, [fp, #-0x60]
	asr r7, r7, r1
	ldrh r3, [ip, #6]
	rsb r7, r7, r5, asr #16
	ldrh r2, [ip, #0xa]
	add r3, r3, r4, asr #16
	ldr r4, [fp, #-0x4c]
	lsl r7, r7, #0x10
	ldr r5, [fp, #-0x50]
	add r2, r4, r2
	add r3, r3, r2
	lsl r3, r3, #0x10
	asr r8, r3, #0x10
	ldrh r3, [ip, #8]
	cmp lr, #0
	ldrh r2, [ip, #0xc]
	add r3, r3, r7, asr #16
	add r2, r5, r2
	add r3, r3, r2
	lsl r3, r3, #0x10
	asr r6, r3, #0x10
	ldrne r0, [fp, #-0x60]
	orrne r0, r0, #0x300
	strne r0, [fp, #-0x60]
	ldr r1, [fp, #-0x60]
	ldr r2, [fp, #-0x58]
	ldr r4, _087C5E20 @ =0x0807F654
	bic r1, r1, #0x30000000
	lsl r3, r2, #0x19
	and r3, r3, #0x3e000000
	orr r3, r1, r3
	str r3, [fp, #-0x60]
	lsr r1, r3, #0x1e
	and r3, r3, #0xc000
	lsr r3, r3, #0xb
	orr r3, r3, r1, lsl #1
	ldrb r2, [r4, r3]
	ldrb sb, [ip, #2]
	lsl r2, r2, lr
	add r2, r8, r2
	cmp r2, #1
	bmi _087C5EF0
	cmp r8, #0xef
	bgt _087C5EF0
	ldr r5, _087C5E28 @ =0x0807F655
	ldrb r3, [r5, r3]
	lsl r3, r3, lr
	b _087C5E5C
	.align 2, 0
_087C5E1C: .4byte 0x0807FC10
_087C5E20: .4byte 0x0807F654
_087C5E24: .4byte 0x0807FC08
_087C5E28: .4byte 0x0807F655
_087C5E2C: .4byte 0x0807F240
_087C5E30:
	lsr r2, r4, #0xb
	ldr r1, _087C5F28 @ =0x0807F654
	orr r0, r2, r7, lsr #29
	ldrb r3, [r1, r0]
	add r3, r8, r3
	cmp r3, #1
	bmi _087C5EF0
	cmp r8, #0xef
	bgt _087C5EF0
	add r2, r1, #1
	ldrb r3, [r2, r0]
_087C5E5C:
	add r3, r6, r3
	cmp r3, #1
	bmi _087C5EF0
	cmp r6, #0x9f
	bgt _087C5EF0
	lsl r3, r8, #0x10
	bic r3, r3, #0xfe000000
	lsr r3, r3, #0x10
	ldr r0, [fp, #-0x60]
	lsl r3, r3, #0x10
	orr r3, r0, r3
	str r3, [fp, #-0x60]
	and r2, r6, #0xff
	ldrb r1, [ip]
	orr r2, r3, r2
	lsl r3, r1, #9
	and r3, r3, #0xc00
	str r2, [fp, #-0x60]
	orr r0, r2, r3
	ldr r2, [fp, #-0x54]
	str r0, [r2]
	tst r1, #0x10
	orrne r3, r0, #0x1000
	strne r3, [r2]
	ldrb r2, [ip, #5]
	cmp r2, #0
	ldreq r3, [fp, #-0x3c]
	strbeq r3, [ip, #4]
	ldr r4, [fp, #-0x54]
	ldr r5, [fp, #-0x40]
	add r4, r4, #8
	add r3, r5, #1
	str r4, [fp, #-0x54]
	and r3, r3, #0xff
	str r3, [fp, #-0x40]
	add r2, r2, #1
	strb r2, [ip, #5]
_087C5EF0:
	ldr r0, [fp, #-0x44]
	ldr r1, [fp, #-0x48]
	add r0, r0, #6
	str r0, [fp, #-0x44]
	subs r1, r1, #1
	str r1, [fp, #-0x48]
	bne _087C58F4
_087C5F0C:
	ldrh r3, [ip, #0x12]
	cmp r3, #0
	bne _087C5F2C
	tst sb, #0x10
	beq _087C5F2C
	orr r3, sb, #0x20
	b _087C5F30
	.align 2, 0
_087C5F28: .4byte 0x0807F654
_087C5F2C:
	and r3, sb, #0xdf
_087C5F30:
	strb r3, [ip, #2]
_087C5F34:
	ldr r0, [fp, #-0x40]
	ldmdb fp, {r4, r5, r6, r7, r8, sb, sl, fp, sp, lr}
	bx lr

	arm_func_start sub_087C5F40
sub_087C5F40: @ 0x087C5F40
	mov ip, sp
	push {fp, ip, lr, pc}
	ldr r3, _087C5F8C @ =0x030027B0
	mov r2, #0
	ldr r3, [r3, #4]
	sub fp, ip, #4
	cmp r3, r2
	beq _087C5F80
_087C5F60:
	cmp r3, r0
	moveq r0, r2
	ldmdbeq fp, {fp, sp, lr}
	bxeq lr
	ldr r3, [r3, #0xc]
	add r2, r2, #1
	cmp r3, #0
	bne _087C5F60
_087C5F80:
	mvn r0, #0
	ldmdb fp, {fp, sp, lr}
	bx lr
	.align 2, 0
_087C5F8C: .4byte 0x030027B0

	arm_func_start sub_087C5F90
sub_087C5F90: @ 0x087C5F90
	mov ip, sp
	push {r4, r5, r6, r7, r8, sb, sl, fp, ip, lr, pc}
	ldr r3, _087C60F0 @ =0x030027B0
	ldr r2, _087C60F4 @ =0x02033784
	ldr r1, _087C60F8 @ =0x020376B0
	sub sp, sp, #8
	ldr r7, [r3, #4]
	sub fp, ip, #4
	ldrb r3, [r2]
	cmp r7, #0
	and r3, r3, #1
	add r6, r1, r3, lsl #10
	beq _087C610C
	ldr sb, _087C60FC @ =0x0807F240
	ldr r3, _087C6100 @ =0x0807FC0C
	mov sl, #6
	ldr r8, [r3]
_087C5FD4:
	ldrb r3, [r7, #4]
	ldrsh r0, [r7]
	add r3, r3, #0x40
	lsl r3, r3, #1
	ldrsh r4, [sb, r3]
	mov lr, pc
	bx r8
	lsl r1, r0, #0x10
	ldr r3, _087C6104 @ =0x0807FC08
	mov r0, r4
	ldr r5, [r3]
	asr r1, r1, #0x10
	mov lr, pc
	bx r5
	strh r0, [fp, #-0x2a]
	ldrb r3, [r7, #4]
	ldrsh r0, [r7]
	lsl r3, r3, #1
	ldrsh r4, [sb, r3]
	mov lr, pc
	bx r8
	lsl r1, r0, #0x10
	mov r0, r4
	asr r1, r1, #0x10
	mov lr, pc
	bx r5
	strh r0, [fp, #-0x2c]
	ldrb r3, [r7, #4]
	lsl r3, r3, #1
	ldrh r4, [sb, r3]
	ldrsh r0, [r7, #2]
	rsb r4, r4, #0
	lsl r4, r4, #0x10
	asr r4, r4, #0x10
	mov lr, pc
	bx r8
	lsl r1, r0, #0x10
	mov r0, r4
	asr r1, r1, #0x10
	mov lr, pc
	bx r5
	strh r0, [fp, #-0x2e]
	ldrb r3, [r7, #4]
	ldrsh r0, [r7, #2]
	add r3, r3, #0x40
	lsl r3, r3, #1
	ldrsh r4, [sb, r3]
	mov lr, pc
	bx r8
	lsl r1, r0, #0x10
	mov r0, r4
	asr r1, r1, #0x10
	mov lr, pc
	bx r5
	ldrh r3, [fp, #-0x2a]
	strh r3, [r6, sl]
	ldrh r3, [fp, #-0x2c]
	add r6, r6, #8
	strh r3, [r6, sl]
	lsl r0, r0, #0x10
	ldrh r3, [fp, #-0x2e]
	add r6, r6, #8
	strh r3, [r6, sl]
	asr r0, r0, #0x10
	strh r0, [fp, #-0x30]
	add r6, r6, #8
	strh r0, [r6, sl]
	ldr r7, [r7, #0xc]
	add r6, r6, #8
	cmp r7, #0
	b _087C6108
	.align 2, 0
_087C60F0: .4byte 0x030027B0
_087C60F4: .4byte 0x02033784
_087C60F8: .4byte 0x020376B0
_087C60FC: .4byte 0x0807F240
_087C6100: .4byte 0x0807FC0C
_087C6104: .4byte 0x0807FC08
_087C6108:
	bne _087C5FD4
_087C610C:
	ldmdb fp, {r4, r5, r6, r7, r8, sb, sl, fp, sp, lr}
	bx lr

	arm_func_start sub_087C6114
sub_087C6114: @ 0x087C6114
	mov ip, sp
	push {r4, r5, r6, r7, r8, sb, sl, fp, ip, lr, pc}
	mov r0, #0
	ldr r2, _087C6300 @ =0x030043D0
	sub sp, sp, #0x24
	ldrb r3, [r2, #8]
	sub fp, ip, #4
	str r0, [fp, #-0x2c]
	cmp r0, r3
	bge _087C63DC
_087C613C:
	ldr r1, [fp, #-0x2c]
	ldr r2, _087C6300 @ =0x030043D0
	lsl r7, r1, #3
	add r3, r2, #0x14
	ldr r0, [r3, r7]
	ldrb r2, [r0, #1]
	ldrb r3, [r0, #3]
	mul r6, r3, r2
	ldrsb r1, [r0, #8]
	ldr r3, _087C6300 @ =0x030043D0
	ldr ip, [r3, #0xc]
	mul r2, r1, ip
	ldrsh r4, [r0, #4]
	mul r5, r4, r2
	ldrsb r3, [r0, #9]
	mul r2, r3, ip
	ldrsh lr, [r0, #6]
	mul ip, lr, r2
	ldr r1, _087C6300 @ =0x030043D0
	ldrh r3, [r1, #0x28]
	sub r3, r3, r5, lsr #8
	mul r1, r4, r3
	ldr r2, _087C6300 @ =0x030043D0
	ldrh r3, [r2, #0x2a]
	sub r2, r3, ip, lsr #8
	mul r4, lr, r2
	ldrb r3, [r0, #2]
	ldrb r2, [r0]
	mul r5, r3, r2
	lsl r6, r6, #0x10
	asr r3, r1, #8
	asr r2, r4, #8
	ands r8, r3, #7
	moveq sb, #0x1e
	movne sb, #0x1f
	ands r2, r2, #7
	moveq r3, #0x14
	movne r3, #0x15
	str r3, [fp, #-0x3c]
	asr r6, r6, #0x10
	ldrb r3, [r0, #0xb]
	lsl r1, r1, #5
	lsl r3, r3, #0xb
	add r3, r3, #0x6000000
	str r3, [fp, #-0x30]
	lsl r4, r4, #5
	str r6, [fp, #-0x38]
	asr r4, r4, #0x10
	str r4, [fp, #-0x34]
	asr ip, r1, #0x10
	str r7, [fp, #-0x44]
	lsr r1, r1, #0x10
	str r2, [fp, #-0x4c]
	cmp r1, r5
	blo _087C6238
	mov r0, r1
	ldr r3, _087C6304 @ =0x0807FC1C
	mov r1, r5
	ldr ip, [r3]
	mov lr, pc
	bx ip
	lsl r0, r0, #0x10
	asr ip, r0, #0x10
_087C6238:
	ldr r0, [fp, #-0x3c]
	ldr r1, [fp, #-0x2c]
	mov r6, #0
	str r8, [fp, #-0x48]
	add r1, r1, #1
	str r1, [fp, #-0x40]
	cmp r6, r0
	bge _087C638C
	mov r4, #0x4000000
	mov r8, r5
	lsl r3, ip, #0x10
	lsr r7, r3, #0x10
	rsb sl, r7, r8
_087C626C:
	ldr r2, [fp, #-0x34]
	ldr r3, [fp, #-0x38]
	lsl r0, r2, #0x10
	add r0, r6, r0, lsr #16
	lsl r1, r3, #0x10
	ldr r2, _087C6304 @ =0x0807FC1C
	lsr r1, r1, #0x10
	ldr ip, [r2]
	mov lr, pc
	bx ip
	mul ip, r8, r0
	ldr r3, [fp, #-0x30]
	ldr r0, _087C6300 @ =0x030043D0
	add r5, r3, r6, lsl #6
	add r3, r0, #0x10
	ldr r0, [fp, #-0x44]
	add r2, r7, sb
	ldr r1, [r3, r0]
	cmp r2, r8
	add r2, r1, ip, lsl #1
	add r3, r2, r7, lsl #1
	bgt _087C6308
	str r3, [r4, #0xd4]
	str r5, [r4, #0xd8]
	orr r3, sb, #0x80000000
	str r3, [r4, #0xdc]
	mov r0, #0xd4
	ldr r3, [r4, #0xdc]
	add r0, r0, #0x4000000
	ldr r3, [r0, #8]
	add r1, r6, #1
	cmp r3, #0
	bge _087C637C
_087C62F0:
	ldr r3, [r0, #8]
	cmp r3, #0
	blt _087C62F0
	b _087C637C
	.align 2, 0
_087C6300: .4byte 0x030043D0
_087C6304: .4byte 0x0807FC1C
_087C6308:
	lsl ip, sl, #1
	str r3, [r4, #0xd4]
	mov r0, #0xd4
	str r5, [r4, #0xd8]
	orr r3, sl, #0x80000000
	str r3, [r4, #0xdc]
	add r0, r0, #0x4000000
	ldr r3, [r4, #0xdc]
	add r1, r6, #1
	ldr r3, [r0, #8]
	lsl lr, sb, #1
	cmp r3, #0
	bge _087C6348
_087C633C:
	ldr r3, [r0, #8]
	cmp r3, #0
	blt _087C633C
_087C6348:
	add r5, r5, ip
	rsb ip, ip, lr
	str r2, [r4, #0xd4]
	lsr r3, ip, #1
	str r5, [r4, #0xd8]
	orr r3, r3, #0x80000000
	str r3, [r4, #0xdc]
	mov r0, #0xd4
	ldr r3, [r4, #0xdc]
	add r0, r0, #0x4000000
_087C6370:
	ldr r3, [r0, #8]
	cmp r3, #0
	blt _087C6370
_087C637C:
	mov r6, r1
	ldr r1, [fp, #-0x3c]
	cmp r6, r1
	blt _087C626C
_087C638C:
	ldr r2, _087C63F0 @ =0x030043D0
	ldr r3, [r2]
	ldrb r2, [r3, #5]
	ldr r3, [fp, #-0x2c]
	ldr r0, _087C63F4 @ =gUnknown_030024E0
	add r6, r2, r3
	lsl r1, r6, #1
	ldr r2, [fp, #-0x48]
	add r3, r0, #0xa
	strh r2, [r3, r1]
	ldr r0, [fp, #-0x40]
	ldr r3, _087C63F0 @ =0x030043D0
	ldrb r2, [r3, #8]
	str r0, [fp, #-0x2c]
	ldr r0, [fp, #-0x4c]
	ldr r3, _087C63F8 @ =0x030024F2
	strh r0, [r3, r1]
	ldr r1, [fp, #-0x2c]
	cmp r1, r2
	blt _087C613C
_087C63DC:
	ldr r2, _087C63F0 @ =0x030043D0
	ldr r3, [r2, #0xc]
	add r3, r3, #1
	str r3, [r2, #0xc]
	b _087C63FC
	.align 2, 0
_087C63F0: .4byte 0x030043D0
_087C63F4: .4byte gUnknown_030024E0
_087C63F8: .4byte 0x030024F2
_087C63FC:
	ldmdb fp, {r4, r5, r6, r7, r8, sb, sl, fp, sp, lr}
	bx lr

	arm_func_start sub_087C6404
sub_087C6404: @ 0x087C6404
	mov ip, sp
	push {r4, r5, r6, r7, r8, sb, sl, fp, ip, lr, pc}
	ldr r2, _087C65CC @ =0x030043D0
	sub fp, ip, #4
	sub sp, sp, #0x1c
	mov r6, r0
	ldrb r3, [r2, #8]
	mov r0, #0
	str r0, [fp, #-0x34]
	cmp r0, r3
	bge _087C65E8
	str r0, [fp, #-0x40]
_087C6434:
	ldr r1, _087C65D0 @ =0x030043E0
	ldr r2, [fp, #-0x40]
	ldr r3, _087C65D4 @ =0x030043E4
	str r6, [r1, r2]
	ldr r4, [r3, r2]
	ldrb r2, [r4]
	ldrb r3, [r4, #1]
	mul r0, r3, r2
	mov sb, #0
	ldrb r1, [r4, #3]
	lsl r0, r0, #1
	str r0, [fp, #-0x38]
	cmp sb, r1
	bge _087C6584
	str sb, [fp, #-0x3c]
_087C6470:
	ldrb r1, [r4, #2]
	mov r7, #0
	cmp r7, r1
	bge _087C6564
_087C6480:
	ldr ip, _087C65D0 @ =0x030043E0
	ldr r0, [fp, #-0x40]
	ldrb r2, [r4]
	ldr r3, [ip, r0]
	mul r0, r2, r7
	ldr ip, [fp, #-0x3c]
	mla ip, r1, ip, r3
	mla r1, sb, r1, r7
	ldr r3, [r4, #0x14]
	ldr r3, [r3, r1, lsl #2]
	add r6, ip, r0, lsl #1
	cmp r3, #0
	beq _087C6554
	ldr ip, _087C65CC @ =0x030043D0
	ldrh r2, [r4, #0xc]
	ldr r1, [ip]
	mov r0, r3
	ldrb r3, [r1, #4]
	ldr ip, _087C65D8 @ =0x0807FC24
	sub r1, fp, #0x30
	ldr ip, [ip]
	mov lr, pc
	bx ip
	subs r8, r0, #0
	beq _087C65E8
	ldrb r3, [r4, #1]
	mov r5, #0
	ldr ip, _087C65DC @ =0x0807FC28
	cmp r5, r3
	bge _087C6544
	ldr sl, _087C65E0 @ =0x0807FC20
_087C64FC:
	ldrb r2, [r4]
	ldr r3, [fp, #-0x30]
	lsl r2, r2, #1
	mla r0, r2, r5, r3
	str ip, [fp, #-0x44]
	mov r1, r6
	ldr ip, [sl]
	mov lr, pc
	bx ip
	ldrb r2, [r4, #2]
	ldrb r3, [r4]
	mul r0, r3, r2
	ldrb r1, [r4, #1]
	add r5, r5, #1
	ldr ip, [fp, #-0x44]
	cmp r5, r1
	add r6, r6, r0, lsl #1
	blt _087C64FC
_087C6544:
	mov r0, r8
	ldr ip, [ip]
	mov lr, pc
	bx ip
_087C6554:
	ldrb r1, [r4, #2]
	add r7, r7, #1
	cmp r7, r1
	blt _087C6480
_087C6564:
	sub r0, fp, #0x3c
	ldm r0, {r0, r1}
	add r0, r0, r1
	str r0, [fp, #-0x3c]
	ldrb r3, [r4, #3]
	add sb, sb, #1
	cmp sb, r3
	blt _087C6470
_087C6584:
	ldrb r2, [r4, #2]
	ldrb r3, [r4, #3]
	mul r1, r3, r2
	ldr ip, [fp, #-0x38]
	ldr r2, _087C65D0 @ =0x030043E0
	ldr r3, [fp, #-0x40]
	ldr r6, [r2, r3]
	mla r6, ip, r1, r6
	ldr r0, [fp, #-0x34]
	add r0, r0, #1
	str r0, [fp, #-0x34]
	ldr r2, [fp, #-0x40]
	ldr r1, _087C65CC @ =0x030043D0
	ldrb r3, [r1, #8]
	add r2, r2, #8
	str r2, [fp, #-0x40]
	cmp r0, r3
	b _087C65E4
	.align 2, 0
_087C65CC: .4byte 0x030043D0
_087C65D0: .4byte 0x030043E0
_087C65D4: .4byte 0x030043E4
_087C65D8: .4byte 0x0807FC24
_087C65DC: .4byte 0x0807FC28
_087C65E0: .4byte 0x0807FC20
_087C65E4:
	blt _087C6434
_087C65E8:
	ldmdb fp, {r4, r5, r6, r7, r8, sb, sl, fp, sp, lr}
	bx lr

	arm_func_start sub_087C65F0
sub_087C65F0: @ 0x087C65F0
	mov ip, sp
	push {r4, r5, r6, r7, r8, sb, sl, fp, ip, lr, pc}
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	sub fp, ip, #4
	sub sp, sp, #0x10
	lsl r4, r0, #0x10
	mov r0, #0
	lsl lr, r1, #0x10
	ldr r5, _087C6778 @ =0x03002540
	asr r4, r4, #0x10
	ldrb ip, [r5]
	asr r8, lr, #0x10
	ldr r6, _087C677C @ =0x020338C0
	lsr r3, ip, #3
	and r3, r3, #1
	cmp r3, r0
	orreq ip, ip, #8
	andne ip, ip, #0xf7
	lsr r1, ip, #3
	and r1, r1, #1
	cmp r1, r0
	strb ip, [r5]
	movne r1, #0x280
	moveq r1, r0
	str r2, [fp, #-0x38]
	add r1, r1, r6
	ldr r3, _087C6780 @ =0x0807FC2C
	mov r2, #0x280
	ldr ip, [r3]
	mov lr, pc
	bx ip
	lsls r1, r4, #0x10
	beq _087C67D8
	mov r4, #0
	mov sb, r1
	ldrb r3, [r5]
	add r1, r6, #2
	sub r5, fp, #0x34
	lsr r3, r3, #3
	and r3, r3, #1
	cmp r3, r4
	movne r3, #0x280
	moveq r3, r4
	add r2, r3, r6
	str r2, [fp, #-0x34]
	add r3, r3, r1
	str r3, [fp, #-0x30]
_087C66B0:
	ldr r2, [fp, #-0x38]
	lsr r1, sb, #0x10
	ldr r3, _087C6784 @ =0x0807FC30
	rsb r0, r2, r4
	lsl r0, r0, #8
	ldr ip, [r3]
	mov lr, pc
	bx ip
	add r0, r0, #0x50
	lsl r0, r0, #0x10
	cmp r0, #0x9f0000
	asr r0, r0, #0x10
	add sl, r4, #1
	bhi _087C67B0
	mov lr, #0
	lsr r4, sb, #0x10
	ldr r2, _087C6778 @ =0x03002540
	mov r7, lr
	ldr r3, [r2, #4]
	mov r6, #0xf0
	add r0, r3, r0, lsl #2
_087C6704:
	ldrsh r3, [r0], #2
	lsl r2, r3, #0x10
	lsrs ip, r2, #0x10
	beq _087C67A4
	lsr r2, r2, #0x18
	strh r2, [fp, #-0x2c]
	ldrsh r3, [fp, #-0x2c]
	sub r3, r3, #0x78
	mul r1, r4, r3
	and r2, ip, #0xff
	strh r2, [fp, #-0x2a]
	ldrsh r3, [fp, #-0x2a]
	sub r3, r3, #0x78
	mul r2, r4, r3
	add r1, r8, r1, asr #8
	strh r1, [fp, #-0x2c]
	lsl r1, r1, #0x10
	add r2, r8, r2, asr #8
	strh r2, [fp, #-0x2a]
	asrs r1, r1, #0x10
	strhmi r7, [fp, #-0x2c]
	bmi _087C6764
	cmp r1, #0xf0
	strhgt r6, [fp, #-0x2c]
_087C6764:
	ldrsh r3, [fp, #-0x2a]
	cmp r3, #0
	bge _087C6788
	strh r7, [fp, #-0x2a]
	b _087C6790
	.align 2, 0
_087C6778: .4byte 0x03002540
_087C677C: .4byte 0x020338C0
_087C6780: .4byte 0x0807FC2C
_087C6784: .4byte 0x0807FC30
_087C6788:
	cmp r3, #0xf0
	strhgt r6, [fp, #-0x2a]
_087C6790:
	ldrh r3, [fp, #-0x2c]
	ldrh r2, [fp, #-0x2a]
	ldr r1, [r5, lr, lsl #2]
	orr r2, r2, r3, lsl #8
	strh r2, [r1]
_087C67A4:
	add lr, lr, #1
	cmp lr, #1
	ble _087C6704
_087C67B0:
	ldr r3, [fp, #-0x34]
	add r3, r3, #4
	str r3, [fp, #-0x34]
	mov r2, #4
	ldr r3, [r5, r2]
	mov r4, sl
	add r3, r3, r2
	str r3, [r5, r2]
	cmp r4, #0x9f
	ble _087C66B0
_087C67D8:
	ldmdb fp, {r4, r5, r6, r7, r8, sb, sl, fp, sp, lr}
	bx lr
