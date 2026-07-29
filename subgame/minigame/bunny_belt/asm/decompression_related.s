	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .text
	.ARM
	.syntax unified

	.ALIGN 2, 0

	thumb_func_start WriteDecompressedData_020076e4
WriteDecompressedData_020076e4: @ 0x020076E4
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

	thumb_func_start CheckIfDecompressComplete_02007728
CheckIfDecompressComplete_02007728: @ 0x02007728
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
	ldr r4, _020077E8 @ =gDecompressionDictionary_0202E170
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
	bl WriteDecompressedData_020076e4
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
_020077E8: .4byte gDecompressionDictionary_0202E170
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
	bl CheckIfDecompressComplete_02007728
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
	bl WriteDecompressedData_020076e4
	mov r0, sb
	lsls r1, r0, #0x10
	adds r0, r1, #0
	asrs r0, r0, #0x10
	ldr r4, _0200784C @ =gDecompressionDictionary_0202E170
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
_0200784C: .4byte gDecompressionDictionary_0202E170
_02007850:
	adds r0, r6, #0
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0x14]
	bl CheckIfDecompressComplete_02007728
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
	bl CheckIfDecompressComplete_02007728
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
	ldr r2, _02007940 @ =gDecompressionDictionary_0202E170
	adds r0, r2, r0
	ldrb r5, [r0]
	adds r0, r5, #0
	mov r1, sp
	str r3, [sp, #0x18]
	bl WriteDecompressedData_020076e4
	mov r0, sb
	lsls r1, r0, #0x10
	adds r0, r1, #0
	asrs r0, r0, #0x10
	ldr r2, _02007940 @ =gDecompressionDictionary_0202E170
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
	bl CheckIfDecompressComplete_02007728
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
_02007940: .4byte gDecompressionDictionary_0202E170
