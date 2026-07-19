	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .text
	.ARM
	.syntax unified

	thumb_func_start HealthSafetyScreen_0806E6F4
HealthSafetyScreen_0806E6F4: @ 0x0806E6F4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	ldr r1, _0806E760 @ =0x03004400
	movs r4, #0
	movs r0, #1
	strb r0, [r1, #5]
	str r4, [sp]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	ldr r2, _0806E764 @ =0x01006000
	mov r0, sp
	bl CpuFastSet
	str r4, [sp, #4]
	add r0, sp, #4
	movs r5, #0xa0
	lsls r5, r5, #0x13
	ldr r2, _0806E768 @ =0x01000100
	adds r1, r5, #0
	bl CpuFastSet
	ldr r0, _0806E76C @ =0x030024E0
	movs r1, #0xc0
	lsls r1, r1, #2
	strh r1, [r0]
	ldr r1, _0806E770 @ =0x00001001
	strh r1, [r0, #2]
	adds r1, #0xff
	strh r1, [r0, #4]
	strh r4, [r0, #0xc]
	strh r4, [r0, #0xa]
	strh r4, [r0, #0x14]
	strh r4, [r0, #0x12]
	ldr r0, _0806E774 @ =0x0814F72C
	ldr r1, _0806E778 @ =0x06000020
	bl LZ77UnCompVram
	ldr r0, _0806E77C @ =0x0814F70C
	adds r1, r5, #0
	movs r2, #0x10
	bl CpuSet
	ldr r1, _0806E780 @ =0x06008000
	movs r3, #1
	movs r2, #0x13
_0806E754:
	movs r0, #0
_0806E756:
	cmp r0, #0x1d
	bgt _0806E784
	strh r3, [r1]
	adds r3, #1
	b _0806E786
	.align 2, 0
_0806E760: .4byte 0x03004400
_0806E764: .4byte 0x01006000
_0806E768: .4byte 0x01000100
_0806E76C: .4byte 0x030024E0
_0806E770: .4byte 0x00001001
_0806E774: .4byte 0x0814F72C
_0806E778: .4byte 0x06000020
_0806E77C: .4byte 0x0814F70C
_0806E780: .4byte 0x06008000
_0806E784:
	strh r4, [r1]
_0806E786:
	adds r1, #2
	adds r0, #1
	cmp r0, #0x1f
	ble _0806E756
	subs r2, #1
	cmp r2, #0
	bge _0806E754
	ldr r1, _0806E7A8 @ =0x06008C00
	movs r2, #0
	movs r4, #1
	movs r3, #0
_0806E79C:
	movs r0, #0
	adds r2, #1
_0806E7A0:
	cmp r0, #0x1d
	bgt _0806E7AC
	strh r4, [r1]
	b _0806E7AE
	.align 2, 0
_0806E7A8: .4byte 0x06008C00
_0806E7AC:
	strh r3, [r1]
_0806E7AE:
	adds r1, #2
	adds r0, #1
	cmp r0, #0x1f
	ble _0806E7A0
	cmp r2, #3
	ble _0806E79C
	ldr r1, _0806E82C @ =0x00007FFF
	movs r0, #0x1e
	movs r2, #0x1f
	movs r3, #0xf
	bl FadeIn_08008AF4
	ldr r5, _0806E830 @ =0x030024E0
	adds r1, r5, #0
	adds r1, #0x4f
	movs r0, #1
	strb r0, [r1]
	bl sub_08008D34
	movs r0, #0x5a
	bl ProcSleep_08002B98
	adds r1, r5, #0
	adds r1, #0x4a
	movs r0, #0xa1
	lsls r0, r0, #1
	strh r0, [r1]
	movs r4, #0x80
	lsls r4, r4, #5
	movs r7, #1
	ldr r0, _0806E834 @ =0x030024B0
	ldrh r0, [r0]
	cmp r0, #0
	bne _0806E862
	ldr r6, _0806E838 @ =0x00000E0F
	mov sb, r4
	adds r5, #0x4c
	mov r8, r5
	movs r5, #0x80
	lsls r5, r5, #0x15
_0806E7FE:
	lsls r0, r4, #0x10
	asrs r2, r0, #0x10
	asrs r0, r0, #0x18
	movs r1, #0x1f
	ands r0, r1
	mov r1, sb
	orrs r0, r1
	mov r1, r8
	strh r0, [r1]
	cmp r7, #0
	bne _0806E83C
	adds r0, r2, #0
	adds r0, #0x88
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	asrs r1, r5, #0x10
	cmp r0, r1
	ble _0806E84E
	adds r4, r1, #0
	movs r7, #1
	b _0806E84E
	.align 2, 0
_0806E82C: .4byte 0x00007FFF
_0806E830: .4byte 0x030024E0
_0806E834: .4byte 0x030024B0
_0806E838: .4byte 0x00000E0F
_0806E83C:
	adds r0, r2, #0
	subs r0, #0x88
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r0, #0
	bge _0806E84E
	movs r4, #0
	movs r0, #1
	eors r7, r0
_0806E84E:
	movs r0, #1
	bl ProcSleep_08002B98
	ldr r0, _0806E89C @ =0x030024B0
	ldrh r0, [r0]
	cmp r0, #0
	bne _0806E862
	subs r6, #1
	cmp r6, #0
	bne _0806E7FE
_0806E862:
	ldr r0, _0806E8A0 @ =0x030024E0
	adds r0, #0x4c
	movs r4, #0
	movs r1, #0x80
	lsls r1, r1, #5
	strh r1, [r0]
	ldr r1, _0806E8A4 @ =0x00007FFF
	movs r0, #0x1e
	movs r2, #0x1f
	movs r3, #0xf
	bl FadeOut_080089E8
	bl sub_08008D34
	movs r0, #1
	bl ChangeGameState_08008790
	ldr r0, _0806E8A8 @ =0x03004400
	strb r4, [r0, #5]
	bl sub_08002B0C
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806E89C: .4byte 0x030024B0
_0806E8A0: .4byte 0x030024E0
_0806E8A4: .4byte 0x00007FFF
_0806E8A8: .4byte 0x03004400
