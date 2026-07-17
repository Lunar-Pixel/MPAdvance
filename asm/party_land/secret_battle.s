	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .text
	.ARM
	.syntax unified

	thumb_func_start sub_0806CCA4
sub_0806CCA4: @ 0x0806CCA4
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r4, r2, #0
	adds r5, r3, #0
	lsls r1, r1, #0x18
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	ldr r2, _0806CCE0 @ =0x08090668
	lsrs r1, r1, #0x14
	adds r0, r2, #0
	adds r0, #0xc
	adds r0, r1, r0
	ldr r3, [r0]
	adds r2, #8
	adds r1, r1, r2
	ldr r2, [r1]
	adds r0, r6, #0
	adds r1, r3, #0
	adds r3, r4, #0
	bl sub_08009ACC
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_08009B40
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0806CCE0: .4byte 0x08090668

	thumb_func_start sub_0806CCE4
sub_0806CCE4: @ 0x0806CCE4
	push {r4, lr}
	adds r4, r0, #0
_0806CCE8:
	movs r0, #1
	bl ProcSleep_08002B98
	ldrb r0, [r4, #1]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _0806CCE8
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0806CCFC
sub_0806CCFC: @ 0x0806CCFC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp]
	cmp r0, #0
	bne _0806CD24
	ldr r0, _0806CD20 @ =0x03004524
	ldr r0, [r0]
	ldr r7, [r0, #0x60]
	b _0806CD2A
	.align 2, 0
_0806CD20: .4byte 0x03004524
_0806CD24:
	ldr r0, _0806CDC8 @ =0x03004524
	ldr r0, [r0]
	ldr r7, [r0, #0x68]
_0806CD2A:
	cmp r7, #0
	bne _0806CDE4
	movs r0, #1
	movs r1, #0x80
	bl sub_080099E0
	adds r7, r0, #0
	ldr r6, _0806CDCC @ =0x08090668
	ldr r0, [sp]
	lsls r4, r0, #4
	adds r0, r6, #4
	adds r0, r4, r0
	ldr r0, [r0]
	mov r8, r0
	bl sub_08006C14
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	mov r5, sl
	adds r5, #6
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	adds r4, r4, r6
	ldr r0, [r4]
	lsls r1, r5, #5
	ldr r2, _0806CDD0 @ =0x05000200
	adds r1, r1, r2
	bl LoadPalette_08008308
	mov r0, sb
	lsls r4, r0, #5
	ldr r1, _0806CDD4 @ =0x06010000
	adds r4, r4, r1
	mov r0, r8
	adds r1, r4, #0
	bl DecompressData_08008374
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_08009A78
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_08009AB4
	adds r0, r7, #0
	movs r1, #0xff
	bl sub_08009B40
	movs r2, #0x80
	rsbs r2, r2, #0
	adds r0, r7, #0
	movs r1, #0
	bl sub_08009A70
	adds r0, r7, #0
	movs r1, #1
	bl sub_08009A34
	mov r2, sl
	adds r2, #3
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	adds r0, r7, #0
	ldr r1, [sp]
	movs r3, #0xff
	bl sub_0806CCA4
	mov r2, sl
	cmp r2, #0
	bne _0806CDD8
	ldr r0, _0806CDC8 @ =0x03004524
	ldr r0, [r0]
	str r7, [r0, #0x60]
	adds r0, #0x64
	mov r1, sb
	strh r1, [r0]
	b _0806CDE4
	.align 2, 0
_0806CDC8: .4byte 0x03004524
_0806CDCC: .4byte 0x08090668
_0806CDD0: .4byte 0x05000200
_0806CDD4: .4byte 0x06010000
_0806CDD8:
	ldr r0, _0806CDF4 @ =0x03004524
	ldr r0, [r0]
	str r7, [r0, #0x68]
	adds r0, #0x6c
	mov r2, sb
	strh r2, [r0]
_0806CDE4:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806CDF4: .4byte 0x03004524

	thumb_func_start sub_0806CDF8
sub_0806CDF8: @ 0x0806CDF8
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0
	bne _0806CE38
	ldr r5, _0806CE2C @ =0x03004524
	ldr r0, [r5]
	ldr r0, [r0, #0x60]
	cmp r0, #0
	beq _0806CE62
	bl sub_08009A00
	ldr r0, [r5]
	str r4, [r0, #0x60]
	adds r0, #0x64
	strh r4, [r0]
	ldr r1, _0806CE30 @ =0x08090668
	ldr r0, _0806CE34 @ =0x03004400
	ldrb r0, [r0, #0xe]
	lsls r0, r0, #4
	adds r1, #4
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_08006CA0
	b _0806CE62
	.align 2, 0
_0806CE2C: .4byte 0x03004524
_0806CE30: .4byte 0x08090668
_0806CE34: .4byte 0x03004400
_0806CE38:
	ldr r4, _0806CE68 @ =0x03004524
	ldr r0, [r4]
	ldr r0, [r0, #0x68]
	cmp r0, #0
	beq _0806CE62
	bl sub_08009A00
	ldr r0, [r4]
	movs r1, #0
	str r1, [r0, #0x68]
	adds r0, #0x6c
	strh r1, [r0]
	ldr r1, _0806CE6C @ =0x08090668
	ldr r0, _0806CE70 @ =0x03004400
	ldrb r0, [r0, #0xf]
	lsls r0, r0, #4
	adds r1, #4
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_08006CA0
_0806CE62:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806CE68: .4byte 0x03004524
_0806CE6C: .4byte 0x08090668
_0806CE70: .4byte 0x03004400

	thumb_func_start sub_0806CE74
sub_0806CE74: @ 0x0806CE74
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0
	bne _0806CE94
	ldr r0, _0806CE8C @ =0x03004524
	ldr r0, [r0]
	ldr r4, [r0, #0x60]
	ldr r0, _0806CE90 @ =0x03004400
	ldrb r7, [r0, #0xe]
	b _0806CE9E
	.align 2, 0
_0806CE8C: .4byte 0x03004524
_0806CE90: .4byte 0x03004400
_0806CE94:
	ldr r0, _0806CEB8 @ =0x03004524
	ldr r0, [r0]
	ldr r4, [r0, #0x68]
	ldr r0, _0806CEBC @ =0x03004400
	ldrb r7, [r0, #0xf]
_0806CE9E:
	movs r1, #0x84
	lsls r1, r1, #1
	cmp r6, #0
	bne _0806CEAA
	movs r1, #0x18
	rsbs r1, r1, #0
_0806CEAA:
	adds r0, r4, #0
	movs r2, #0x58
	bl sub_08009A70
	adds r5, r6, #5
	b _0806CED4
	.align 2, 0
_0806CEB8: .4byte 0x03004524
_0806CEBC: .4byte 0x03004400
_0806CEC0:
	ldrh r0, [r4, #6]
	subs r0, #1
	strh r0, [r4, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xd0
	beq _0806CEE6
_0806CECE:
	movs r0, #1
	bl ProcSleep_08002B98
_0806CED4:
	cmp r6, #0
	bne _0806CEC0
	ldrh r0, [r4, #6]
	adds r0, #1
	strh r0, [r4, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x20
	bne _0806CECE
_0806CEE6:
	lsls r2, r5, #0x18
	lsrs r2, r2, #0x18
	adds r0, r4, #0
	adds r1, r7, #0
	movs r3, #0
	bl sub_0806CCA4
	adds r0, r4, #0
	bl sub_0806CCE4
	movs r0, #0x1e
	bl ProcSleep_08002B98
	adds r0, r4, #0
	adds r1, r7, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_0806CCA4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0806CF14
sub_0806CF14: @ 0x0806CF14
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0806CF34
	ldr r0, _0806CF2C @ =0x03004524
	ldr r0, [r0]
	ldr r4, [r0, #0x60]
	movs r1, #0x20
	ldr r0, _0806CF30 @ =0x03004400
	ldrb r5, [r0, #0xe]
	b _0806CF40
	.align 2, 0
_0806CF2C: .4byte 0x03004524
_0806CF30: .4byte 0x03004400
_0806CF34:
	ldr r0, _0806CF5C @ =0x03004524
	ldr r0, [r0]
	ldr r4, [r0, #0x68]
	movs r1, #0xd0
	ldr r0, _0806CF60 @ =0x03004400
	ldrb r5, [r0, #0xf]
_0806CF40:
	adds r0, r4, #0
	movs r2, #0x58
	bl sub_08009A70
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_0806CCA4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806CF5C: .4byte 0x03004524
_0806CF60: .4byte 0x03004400

	thumb_func_start sub_0806CF64
sub_0806CF64: @ 0x0806CF64
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	ldr r0, _0806D054 @ =0x0809CB28
	ldr r1, _0806D058 @ =0x05000200
	bl LoadPalette_08008308
	ldr r0, _0806D05C @ =0x0809CCBC
	ldr r1, _0806D060 @ =0x06010000
	bl DecompressData_08008374
	movs r6, #0x80
	rsbs r6, r6, #0
	str r6, [sp]
	movs r0, #6
	movs r1, #0x80
	adds r2, r4, #0
	movs r3, #0
	bl sub_08060D9C
	ldr r4, _0806D064 @ =0x03004524
	ldr r1, [r4]
	str r0, [r1, #0x70]
	str r6, [sp]
	movs r0, #6
	movs r1, #0x80
	adds r2, r5, #0
	movs r3, #0
	bl sub_08060D9C
	ldr r1, [r4]
	adds r1, #0x9c
	str r0, [r1]
	movs r7, #0
	ldr r0, _0806D068 @ =0x03004510
	mov r8, r0
_0806CFBA:
	str r6, [sp]
	movs r0, #2
	movs r1, #0x80
	movs r2, #7
	movs r3, #0
	bl sub_08060D9C
	ldr r1, [r4]
	lsls r5, r7, #2
	adds r1, #0x74
	adds r1, r1, r5
	str r0, [r1]
	str r6, [sp]
	movs r0, #2
	movs r1, #0x80
	movs r2, #7
	movs r3, #0
	bl sub_08060D9C
	ldr r1, [r4]
	adds r1, #0xa0
	adds r1, r1, r5
	str r0, [r1]
	str r6, [sp]
	movs r0, #2
	movs r1, #0x7f
	movs r2, #0xf
	movs r3, #0
	bl sub_08060D9C
	ldr r1, [r4]
	adds r1, #0x88
	adds r1, r1, r5
	str r0, [r1]
	str r6, [sp]
	movs r0, #2
	movs r1, #0x7f
	movs r2, #0xf
	movs r3, #0
	bl sub_08060D9C
	ldr r2, [r4]
	adds r1, r2, #0
	adds r1, #0xb4
	adds r1, r1, r5
	str r0, [r1]
	mov r1, r8
	ldrb r0, [r1, #2]
	cmp r0, r7
	blt _0806D02C
	adds r0, r2, #0
	adds r0, #0x88
	adds r0, r0, r5
	ldr r0, [r0]
	movs r1, #0
	bl sub_08009A34
_0806D02C:
	mov r1, r8
	ldrb r0, [r1, #3]
	cmp r0, r7
	blt _0806D042
	ldr r0, [r4]
	adds r0, #0xb4
	adds r0, r0, r5
	ldr r0, [r0]
	movs r1, #0
	bl sub_08009A34
_0806D042:
	adds r7, #1
	cmp r7, #4
	ble _0806CFBA
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806D054: .4byte 0x0809CB28
_0806D058: .4byte 0x05000200
_0806D05C: .4byte 0x0809CCBC
_0806D060: .4byte 0x06010000
_0806D064: .4byte 0x03004524
_0806D068: .4byte 0x03004510

	thumb_func_start sub_0806D06C
sub_0806D06C: @ 0x0806D06C
	push {r4, r5, r6, lr}
	ldr r4, _0806D0C4 @ =0x03004524
	ldr r0, [r4]
	ldr r0, [r0, #0x70]
	bl sub_08009A00
	ldr r0, [r4]
	adds r0, #0x9c
	ldr r0, [r0]
	bl sub_08009A00
	movs r6, #0
	adds r5, r4, #0
_0806D086:
	ldr r0, [r5]
	lsls r4, r6, #2
	adds r0, #0x74
	adds r0, r0, r4
	ldr r0, [r0]
	bl sub_08009A00
	ldr r0, [r5]
	adds r0, #0xa0
	adds r0, r0, r4
	ldr r0, [r0]
	bl sub_08009A00
	ldr r0, [r5]
	adds r0, #0x88
	adds r0, r0, r4
	ldr r0, [r0]
	bl sub_08009A00
	ldr r0, [r5]
	adds r0, #0xb4
	adds r0, r0, r4
	ldr r0, [r0]
	bl sub_08009A00
	adds r6, #1
	cmp r6, #4
	ble _0806D086
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0806D0C4: .4byte 0x03004524

	thumb_func_start sub_0806D0C8
sub_0806D0C8: @ 0x0806D0C8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x17
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	mov sl, r1
	lsrs r0, r0, #0x19
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #3
	movs r0, #0x6c
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	movs r0, #0x80
	lsls r0, r0, #0xe
	orrs r7, r0
	ldr r6, _0806D1C0 @ =0x03004524
	ldr r0, [r6]
	ldr r0, [r0, #0x70]
	lsls r5, r7, #0x10
	asrs r5, r5, #0x10
	asrs r4, r7, #0x10
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_08009A70
	ldr r0, [r6]
	adds r0, #0x9c
	ldr r0, [r0]
	adds r4, #0x18
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_08009A70
	movs r2, #0
	mov sb, r2
	mov r8, r6
	movs r6, #0
_0806D124:
	adds r1, r7, #0
	adds r1, #0x18
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, _0806D1C4 @ =0xFFFF0000
	ands r7, r0
	orrs r7, r1
	mov r1, r8
	ldr r0, [r1]
	adds r0, #0x74
	adds r0, r0, r6
	ldr r0, [r0]
	adds r5, r7, #0
	subs r5, #0xc
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	asrs r4, r7, #0x10
	adds r2, r4, #0
	subs r2, #0xc
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r1, r5, #0
	bl sub_08009A70
	mov r2, r8
	ldr r0, [r2]
	adds r0, #0xa0
	adds r0, r0, r6
	ldr r0, [r0]
	adds r2, r4, #0
	adds r2, #0xc
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r1, r5, #0
	bl sub_08009A70
	mov r1, r8
	ldr r0, [r1]
	adds r0, #0x88
	adds r0, r0, r6
	ldr r0, [r0]
	lsls r5, r7, #0x10
	asrs r5, r5, #0x10
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_08009A70
	mov r2, r8
	ldr r0, [r2]
	adds r0, #0xb4
	adds r0, r0, r6
	ldr r0, [r0]
	adds r4, #0x18
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_08009A70
	cmp sb, sl
	bge _0806D1C8
	mov r1, r8
	ldr r0, [r1]
	adds r0, #0x74
	adds r0, r0, r6
	ldr r0, [r0]
	movs r1, #1
	bl sub_08009A34
	mov r2, r8
	ldr r0, [r2]
	adds r0, #0xa0
	adds r0, r0, r6
	ldr r0, [r0]
	movs r1, #1
	bl sub_08009A34
	b _0806D1E8
	.align 2, 0
_0806D1C0: .4byte 0x03004524
_0806D1C4: .4byte 0xFFFF0000
_0806D1C8:
	mov r1, r8
	ldr r0, [r1]
	adds r0, #0x74
	adds r0, r0, r6
	ldr r0, [r0]
	movs r1, #0
	bl sub_08009A34
	mov r2, r8
	ldr r0, [r2]
	adds r0, #0xa0
	adds r0, r0, r6
	ldr r0, [r0]
	movs r1, #0
	bl sub_08009A34
_0806D1E8:
	ldr r5, _0806D234 @ =0x03004524
	ldr r0, [r5]
	adds r0, #0x88
	adds r0, r0, r6
	ldr r0, [r0]
	movs r1, #0
	ldr r4, _0806D238 @ =0x03004510
	ldrb r2, [r4, #2]
	cmp sb, r2
	bge _0806D1FE
	movs r1, #1
_0806D1FE:
	bl sub_08009A34
	ldr r0, [r5]
	adds r0, #0xb4
	adds r0, r0, r6
	ldr r0, [r0]
	movs r1, #0
	ldrb r4, [r4, #3]
	cmp sb, r4
	bge _0806D214
	movs r1, #1
_0806D214:
	bl sub_08009A34
	adds r6, #4
	movs r0, #1
	add sb, r0
	mov r1, sb
	cmp r1, #4
	bgt _0806D226
	b _0806D124
_0806D226:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806D234: .4byte 0x03004524
_0806D238: .4byte 0x03004510

	thumb_func_start sub_0806D23C
sub_0806D23C: @ 0x0806D23C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r5, #0
	cmp r0, #0
	bne _0806D264
	ldr r0, _0806D260 @ =0x03004524
	ldr r0, [r0]
	lsls r1, r1, #2
	adds r0, #0x88
	b _0806D26C
	.align 2, 0
_0806D260: .4byte 0x03004524
_0806D264:
	ldr r0, _0806D2CC @ =0x03004524
	ldr r0, [r0]
	lsls r1, r1, #2
	adds r0, #0xb4
_0806D26C:
	adds r0, r0, r1
	ldr r7, [r0]
	bl sub_08009DDC
	adds r6, r0, #0
	lsls r2, r5, #0x10
	asrs r2, r2, #0x10
	adds r1, r2, #0
	bl sub_08009E84
	adds r0, r6, #0
	movs r1, #0
	bl sub_08009E9C
	adds r0, r7, #0
	movs r1, #2
	movs r2, #8
	bl sub_08060E3C
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_08009B9C
	adds r0, r7, #0
	movs r1, #1
	bl sub_08009B84
	adds r0, r7, #0
	movs r1, #1
	bl sub_08009A34
	ldr r0, _0806D2D0 @ =0x00000179
	bl m4aSongNumStart
	movs r4, #0
	movs r0, #0xc0
	lsls r0, r0, #1
	mov sl, r0
	movs r1, #0x80
	lsls r1, r1, #1
	mov sb, r1
_0806D2BE:
	lsls r0, r4, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _0806D2D4
	cmp r0, #1
	beq _0806D2E8
	b _0806D2F8
	.align 2, 0
_0806D2CC: .4byte 0x03004524
_0806D2D0: .4byte 0x00000179
_0806D2D4:
	lsls r0, r5, #0x10
	movs r1, #0x80
	lsls r1, r1, #0xf
	adds r0, r0, r1
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, sl
	bne _0806D2F8
	movs r4, #1
	b _0806D2F8
_0806D2E8:
	lsls r0, r5, #0x10
	ldr r1, _0806D318 @ =0xFFE00000
	adds r0, r0, r1
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, sb
	bne _0806D2F8
	movs r4, #0xff
_0806D2F8:
	lsls r2, r5, #0x10
	asrs r2, r2, #0x10
	adds r0, r6, #0
	adds r1, r2, #0
	bl sub_08009E84
	lsls r0, r4, #0x18
	asrs r0, r0, #0x18
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _0806D31C
	movs r0, #1
	bl ProcSleep_08002B98
	b _0806D2BE
	.align 2, 0
_0806D318: .4byte 0xFFE00000
_0806D31C:
	adds r0, r7, #0
	movs r1, #0
	bl sub_08009B9C
	adds r0, r6, #0
	bl sub_08009E54
	movs r0, #0
	bl sub_080077D4
	ldr r0, _0806D340 @ =0x03004510
	ldrb r0, [r0, #4]
	cmp r0, #0
	bne _0806D344
	mov r0, r8
	cmp r0, #0
	beq _0806D34A
	b _0806D352
	.align 2, 0
_0806D340: .4byte 0x03004510
_0806D344:
	mov r1, r8
	cmp r1, #0
	beq _0806D352
_0806D34A:
	movs r0, #0x71
	bl m4aSongNumStart
	b _0806D358
_0806D352:
	movs r0, #0x72
	bl m4aSongNumStart
_0806D358:
	mov r0, r8
	cmp r0, #0
	bne _0806D388
	ldr r5, _0806D380 @ =0x03004524
	ldr r0, [r5]
	ldr r0, [r0, #0x60]
	ldr r4, _0806D384 @ =0x03004400
	ldrb r1, [r4, #0xe]
	movs r2, #7
	movs r3, #0
	bl sub_0806CCA4
	ldr r0, [r5]
	ldr r0, [r0, #0x68]
	ldrb r1, [r4, #0xf]
	movs r2, #8
	movs r3, #0
	bl sub_0806CCA4
	b _0806D3A8
	.align 2, 0
_0806D380: .4byte 0x03004524
_0806D384: .4byte 0x03004400
_0806D388:
	ldr r5, _0806D3D4 @ =0x03004524
	ldr r0, [r5]
	ldr r0, [r0, #0x60]
	ldr r4, _0806D3D8 @ =0x03004400
	ldrb r1, [r4, #0xe]
	movs r2, #8
	movs r3, #0
	bl sub_0806CCA4
	ldr r0, [r5]
	ldr r0, [r0, #0x68]
	ldrb r1, [r4, #0xf]
	movs r2, #7
	movs r3, #0
	bl sub_0806CCA4
_0806D3A8:
	movs r0, #1
	bl sub_08007828
	movs r0, #8
	bl sub_080077C4
	ldr r4, _0806D3D4 @ =0x03004524
	ldr r0, [r4]
	ldr r0, [r0, #0x60]
	bl sub_0806CCE4
	ldr r0, [r4]
	ldr r0, [r0, #0x68]
	bl sub_0806CCE4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806D3D4: .4byte 0x03004524
_0806D3D8: .4byte 0x03004400

	thumb_func_start sub_0806D3DC
sub_0806D3DC: @ 0x0806D3DC
	push {r4, lr}
	sub sp, #4
	ldr r4, _0806D418 @ =0x03004524
	ldr r0, [r4]
	adds r0, #0xd0
	ldr r0, [r0]
	cmp r0, #0
	bne _0806D40E
	movs r0, #0x80
	rsbs r0, r0, #0
	str r0, [sp]
	movs r0, #2
	movs r1, #0x80
	movs r2, #1
	movs r3, #0
	bl sub_08060D9C
	ldr r1, [r4]
	adds r1, #0xd0
	str r0, [r1]
	ldr r1, [r0, #0x20]
	ldrb r2, [r1, #2]
	movs r1, #3
	bl sub_08009A0C
_0806D40E:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806D418: .4byte 0x03004524

	thumb_func_start sub_0806D41C
sub_0806D41C: @ 0x0806D41C
	push {r4, lr}
	ldr r4, _0806D43C @ =0x03004524
	ldr r0, [r4]
	adds r0, #0xd0
	ldr r0, [r0]
	cmp r0, #0
	beq _0806D436
	bl sub_08009A00
	ldr r0, [r4]
	adds r0, #0xd0
	movs r1, #0
	str r1, [r0]
_0806D436:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806D43C: .4byte 0x03004524

	thumb_func_start sub_0806D440
sub_0806D440: @ 0x0806D440
	push {lr}
	lsls r0, r0, #0x10
	ldr r3, _0806D46C @ =0xFFD80000
	adds r0, r0, r3
	lsls r1, r1, #0x10
	ldr r3, _0806D470 @ =0xFFF40000
	adds r1, r1, r3
	lsrs r2, r0, #0x10
	orrs r2, r1
	ldr r0, _0806D474 @ =0x03004524
	ldr r0, [r0]
	adds r0, #0xd0
	ldr r0, [r0]
	cmp r0, #0
	beq _0806D468
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	asrs r2, r2, #0x10
	bl sub_08009A70
_0806D468:
	pop {r0}
	bx r0
	.align 2, 0
_0806D46C: .4byte 0xFFD80000
_0806D470: .4byte 0xFFF40000
_0806D474: .4byte 0x03004524

	thumb_func_start sub_0806D478
sub_0806D478: @ 0x0806D478
	push {r4, r5, r6, lr}
	sub sp, #4
	movs r5, #0
	ldr r6, _0806D4C8 @ =0x03004524
_0806D480:
	ldr r0, [r6]
	lsls r4, r5, #2
	adds r0, #0xc8
	adds r0, r0, r4
	ldr r0, [r0]
	cmp r0, #0
	bne _0806D4B8
	adds r2, r5, #5
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	movs r0, #0x80
	rsbs r0, r0, #0
	str r0, [sp]
	movs r0, #2
	movs r1, #0x64
	movs r3, #0
	bl sub_08060D9C
	ldr r1, [r6]
	adds r1, #0xc8
	adds r1, r1, r4
	str r0, [r1]
	lsls r2, r5, #0x18
	lsrs r2, r2, #0x18
	movs r1, #2
	movs r3, #0xff
	bl sub_08060E6C
_0806D4B8:
	adds r5, #1
	cmp r5, #1
	ble _0806D480
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0806D4C8: .4byte 0x03004524

	thumb_func_start sub_0806D4CC
sub_0806D4CC: @ 0x0806D4CC
	push {r4, r5, r6, lr}
	movs r5, #0
	ldr r6, _0806D4FC @ =0x03004524
_0806D4D2:
	ldr r0, [r6]
	lsls r4, r5, #2
	adds r0, #0xc8
	adds r0, r0, r4
	ldr r0, [r0]
	cmp r0, #0
	beq _0806D4EE
	bl sub_08009A00
	ldr r0, [r6]
	adds r0, #0xc8
	adds r0, r0, r4
	movs r1, #0
	str r1, [r0]
_0806D4EE:
	adds r5, #1
	cmp r5, #1
	ble _0806D4D2
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0806D4FC: .4byte 0x03004524

	thumb_func_start sub_0806D500
sub_0806D500: @ 0x0806D500
	push {r4, r5, r6, r7, lr}
	lsls r2, r2, #0x18
	lsrs r5, r2, #0x18
	lsls r0, r0, #0x10
	ldr r2, _0806D538 @ =0xFFFC0000
	adds r0, r0, r2
	lsrs r7, r0, #0x10
	lsls r1, r1, #0x10
	adds r1, r1, r2
	lsrs r6, r1, #0x10
	movs r4, #0
_0806D516:
	ldr r0, _0806D53C @ =0x03004524
	ldr r0, [r0]
	lsls r1, r4, #2
	adds r0, #0xc8
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _0806D54C
	adds r3, r0, #0
	lsls r0, r7, #0x10
	asrs r1, r0, #0x10
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	cmp r4, #0
	bne _0806D540
	subs r0, r0, r5
	b _0806D542
	.align 2, 0
_0806D538: .4byte 0xFFFC0000
_0806D53C: .4byte 0x03004524
_0806D540:
	adds r0, r0, r5
_0806D542:
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	adds r0, r3, #0
	bl sub_08009A70
_0806D54C:
	adds r4, #1
	cmp r4, #1
	ble _0806D516
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0806D558
sub_0806D558: @ 0x0806D558
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r2, r1, #0x18
	movs r1, #1
	ands r0, r1
	ldr r1, _0806D580 @ =0x03004524
	ldr r1, [r1]
	lsls r0, r0, #2
	adds r1, #0xc8
	adds r1, r1, r0
	ldr r0, [r1]
	cmp r0, #0
	beq _0806D57C
	adds r1, r2, #0
	bl sub_08009A34
_0806D57C:
	pop {r0}
	bx r0
	.align 2, 0
_0806D580: .4byte 0x03004524

	thumb_func_start sub_0806D584
sub_0806D584: @ 0x0806D584
	push {r4, lr}
	sub sp, #4
	bl sub_08007BD4
	adds r4, r0, #0
	ldrb r0, [r4, #8]
	cmp r0, #0
	beq _0806D59A
	subs r0, #1
	strb r0, [r4, #8]
	b _0806D5D4
_0806D59A:
	ldr r1, [r4]
	cmp r1, #0
	bne _0806D5C2
	movs r0, #4
	ldrsh r3, [r4, r0]
	movs r1, #6
	ldrsh r0, [r4, r1]
	str r0, [sp]
	movs r0, #2
	movs r1, #0x48
	movs r2, #0
	bl sub_08060D9C
	str r0, [r4]
	movs r1, #2
	movs r2, #3
	movs r3, #0
	bl sub_08060E6C
	b _0806D5D4
_0806D5C2:
	ldrb r0, [r1, #1]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _0806D5D4
	adds r0, r1, #0
	bl sub_08009A00
	bl sub_08007A64
_0806D5D4:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0806D5DC
sub_0806D5DC: @ 0x0806D5DC
	push {r4, lr}
	sub sp, #4
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r4, _0806D620 @ =0x03004524
	ldr r0, [r4]
	adds r0, #0xd4
	ldr r0, [r0]
	cmp r0, #0
	bne _0806D618
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	str r0, [sp]
	movs r0, #2
	movs r1, #0x40
	movs r2, #0
	bl sub_08060D9C
	ldr r1, [r4]
	adds r1, #0xd4
	str r0, [r1]
	movs r1, #2
	movs r2, #2
	movs r3, #0xff
	bl sub_08060E6C
_0806D618:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806D620: .4byte 0x03004524

	thumb_func_start sub_0806D624
sub_0806D624: @ 0x0806D624
	push {r4, lr}
	ldr r4, _0806D644 @ =0x03004524
	ldr r0, [r4]
	adds r0, #0xd4
	ldr r0, [r0]
	cmp r0, #0
	beq _0806D63E
	bl sub_08009A00
	ldr r0, [r4]
	adds r0, #0xd4
	movs r1, #0
	str r1, [r0]
_0806D63E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806D644: .4byte 0x03004524

	thumb_func_start sub_0806D648
sub_0806D648: @ 0x0806D648
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _0806D6A8 @ =0x03004524
	ldr r0, [r0]
	adds r0, #0xd4
	ldr r6, [r0]
	ldrh r0, [r6, #8]
	lsls r0, r0, #0x10
	ldrh r5, [r6, #6]
	orrs r5, r0
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	movs r1, #0
	mov sb, r1
	cmp r0, #0x77
	bgt _0806D670
	movs r0, #1
	mov sb, r0
_0806D670:
	movs r1, #0
	mov r8, r1
	movs r7, #0
_0806D676:
	ldr r1, _0806D6AC @ =0x0807F240
	mov r0, r8
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r2, [r0, r1]
	lsls r2, r2, #0x14
	lsls r0, r5, #0x10
	asrs r4, r0, #0x10
	asrs r0, r5, #0x10
	asrs r2, r2, #0x18
	adds r2, r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_08009A70
	mov r0, sb
	cmp r0, #0
	beq _0806D6B0
	cmp r4, #0xcf
	bgt _0806D71C
	b _0806D6B4
	.align 2, 0
_0806D6A8: .4byte 0x03004524
_0806D6AC: .4byte 0x0807F240
_0806D6B0:
	cmp r4, #0x20
	ble _0806D71C
_0806D6B4:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #0x11
	bls _0806D6EA
	movs r0, #0xbd
	lsls r0, r0, #1
	bl m4aSongNumStart
	ldr r0, _0806D6F4 @ =sub_0806D584
	movs r1, #0x90
	movs r2, #0
	bl sub_08007968
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl sub_08007BBC
	movs r1, #0
	str r1, [r0]
	ldrh r1, [r6, #6]
	strh r1, [r0, #4]
	ldrh r1, [r6, #8]
	strh r1, [r0, #6]
	movs r1, #8
	strb r1, [r0, #8]
	movs r7, #0
_0806D6EA:
	mov r1, sb
	cmp r1, #0
	beq _0806D6F8
	adds r1, r5, #1
	b _0806D6FA
	.align 2, 0
_0806D6F4: .4byte sub_0806D584
_0806D6F8:
	subs r1, r5, #1
_0806D6FA:
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, _0806D718 @ =0xFFFF0000
	ands r5, r0
	orrs r5, r1
	mov r0, r8
	adds r0, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	movs r0, #1
	bl ProcSleep_08002B98
	b _0806D676
	.align 2, 0
_0806D718: .4byte 0xFFFF0000
_0806D71C:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0806D728
sub_0806D728: @ 0x0806D728
	push {lr}
	sub sp, #4
	movs r0, #0x10
	str r0, [sp]
	movs r0, #0x1e
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08005044
	ldr r1, _0806D74C @ =0x030024E0
	movs r0, #0
	strh r0, [r1, #0xe]
	movs r0, #0x20
	strh r0, [r1, #0x16]
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_0806D74C: .4byte 0x030024E0

	thumb_func_start sub_0806D750
sub_0806D750: @ 0x0806D750
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	bl sub_0806D728
	movs r0, #1
	bl ProcSleep_08002B98
	ldr r0, _0806D7B0 @ =0x003E0007
	adds r4, r4, r0
	adds r0, r4, #0
	bl sub_08006828
	adds r6, r0, #0
	movs r1, #0
	bl sub_080045FC
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r1, _0806D7B4 @ =0x030024E0
	lsls r0, r4, #2
	subs r0, #0x78
	strh r0, [r1, #0xe]
	ldr r0, _0806D7B8 @ =0x0000FFB0
	strh r0, [r1, #0x16]
	ldr r0, _0806D7BC @ =0x06008020
	movs r5, #1
	str r5, [sp]
	adds r1, r6, #0
	movs r2, #1
	movs r3, #0
	bl sub_08004D94
	str r4, [sp]
	str r5, [sp, #4]
	movs r0, #0x1e
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl sub_08004FD4
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0806D7B0: .4byte 0x003E0007
_0806D7B4: .4byte 0x030024E0
_0806D7B8: .4byte 0x0000FFB0
_0806D7BC: .4byte 0x06008020

	thumb_func_start sub_0806D7C0
sub_0806D7C0: @ 0x0806D7C0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	ldr r1, _0806D81C @ =0x080906A8
	mov r0, sp
	movs r2, #3
	bl memcpy
	add r5, sp, #4
	ldr r1, _0806D820 @ =0x080906AB
	adds r0, r5, #0
	movs r2, #3
	bl memcpy
	ldr r4, _0806D824 @ =0x03004510
	ldrb r1, [r4, #1]
	movs r0, #0xe
	ands r0, r1
	lsrs r6, r0, #1
	str r6, [sp, #0xc]
	movs r0, #0
	mov sl, r0
	ldr r1, _0806D828 @ =0x03004400
	ldrb r0, [r1, #0xe]
	ldrb r1, [r1, #0xf]
	bl sub_0806CF64
	ldr r0, [sp, #0xc]
	bl sub_0806D0C8
	movs r0, #0
	bl sub_080613CC
	movs r0, #0
	bl sub_080059E4
	ldrb r0, [r4, #4]
	cmp r0, #0
	bne _0806D830
	ldr r0, _0806D82C @ =0x003E0006
	bl sub_080062D0
	b _0806D836
	.align 2, 0
_0806D81C: .4byte 0x080906A8
_0806D820: .4byte 0x080906AB
_0806D824: .4byte 0x03004510
_0806D828: .4byte 0x03004400
_0806D82C: .4byte 0x003E0006
_0806D830:
	ldr r0, _0806D870 @ =0x003E0032
	bl sub_080062D0
_0806D836:
	movs r0, #1
	bl ProcSleep_08002B98
	bl sub_0806D3DC
	movs r0, #0x78
	movs r1, #0x58
	bl sub_0806D440
	ldr r0, _0806D874 @ =0x03004510
	ldrb r0, [r0, #4]
	lsls r4, r6, #0x18
	cmp r0, #0
	bne _0806D884
	bl sub_0806D478
	movs r0, #0x78
	movs r1, #0x58
	movs r2, #0xc
	bl sub_0806D500
	asrs r0, r4, #0x18
	cmp r0, #0
	bne _0806D878
	movs r0, #1
	movs r1, #0
	bl sub_0806D558
	b _0806D884
	.align 2, 0
_0806D870: .4byte 0x003E0032
_0806D874: .4byte 0x03004510
_0806D878:
	cmp r0, #2
	bne _0806D884
	movs r0, #0
	movs r1, #0
	bl sub_0806D558
_0806D884:
	lsrs r0, r4, #0x18
	bl sub_0806D750
	ldr r4, _0806D8C8 @ =0x03004510
	ldrh r0, [r4, #6]
	adds r1, r0, #1
	strh r1, [r4, #6]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_08003A30
	movs r0, #1
	bl ProcSleep_08002B98
	add r7, sp, #8
	mov r8, r4
	mov sb, r7
_0806D8A6:
	mov r1, r8
	ldrb r0, [r1, #4]
	cmp r0, #0
	bne _0806D958
	ldr r2, _0806D8CC @ =0x030024B0
	ldrh r1, [r2]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0806D8D0
	movs r0, #0xce
	bl m4aSongNumStart
	movs r2, #0xff
	mov sl, r2
	b _0806D8E2
	.align 2, 0
_0806D8C8: .4byte 0x03004510
_0806D8CC: .4byte 0x030024B0
_0806D8D0:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0806D90C
	movs r0, #0xcd
	bl m4aSongNumStart
	movs r0, #1
	mov sl, r0
_0806D8E2:
	mov r1, sb
	strb r6, [r1]
	mov r2, sl
	strb r2, [r1, #1]
	ldr r5, _0806D908 @ =0x03004510
	movs r4, #9
_0806D8EE:
	ldrh r0, [r5, #6]
	adds r1, r7, #0
	movs r2, #2
	bl sub_080038F4
	movs r0, #1
	bl ProcSleep_08002B98
	subs r4, #1
	cmp r4, #0
	bge _0806D8EE
	b _0806D9C8
	.align 2, 0
_0806D908: .4byte 0x03004510
_0806D90C:
	ldrh r1, [r2, #4]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0806D92A
	lsls r0, r6, #0x18
	movs r1, #0x80
	lsls r1, r1, #0x11
	adds r0, r0, r1
	lsrs r6, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	ble _0806D942
	movs r6, #2
	b _0806D942
_0806D92A:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0806D942
	lsls r0, r6, #0x18
	movs r2, #0xff
	lsls r2, r2, #0x18
	adds r0, r0, r2
	lsrs r6, r0, #0x18
	cmp r0, #0
	bge _0806D942
	movs r6, #0
_0806D942:
	mov r0, sb
	strb r6, [r0]
	mov r1, sl
	strb r1, [r0, #1]
	mov r2, r8
	ldrh r0, [r2, #6]
	mov r1, sb
	movs r2, #2
	bl sub_080038F4
	b _0806D97C
_0806D958:
	mov r0, r8
	ldrh r1, [r0, #6]
	movs r0, #0
	adds r2, r7, #0
	movs r3, #2
	bl sub_08003938
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r1, r8
	ldrh r1, [r1, #6]
	cmp r0, r1
	bne _0806D97C
	ldrb r6, [r7]
	ldrb r2, [r7, #1]
	mov sl, r2
	cmp r2, #0
	bne _0806D9C8
_0806D97C:
	ldr r1, [sp, #0xc]
	lsls r0, r1, #0x18
	lsls r4, r6, #0x18
	asrs r5, r4, #0x18
	cmp r0, r4
	beq _0806D9C0
	movs r0, #0xcb
	bl m4aSongNumStart
	lsrs r4, r4, #0x18
	adds r0, r4, #0
	bl sub_0806D0C8
	adds r0, r4, #0
	bl sub_0806D750
	mov r2, r8
	ldrb r0, [r2, #4]
	cmp r0, #0
	bne _0806D9BE
	mov r1, sp
	adds r0, r1, r5
	ldrb r1, [r0]
	movs r0, #0
	bl sub_0806D558
	mov r0, sp
	adds r0, r0, r5
	adds r0, #4
	ldrb r1, [r0]
	movs r0, #1
	bl sub_0806D558
_0806D9BE:
	str r4, [sp, #0xc]
_0806D9C0:
	movs r0, #1
	bl ProcSleep_08002B98
	b _0806D8A6
_0806D9C8:
	ldr r4, _0806DA18 @ =0x03004510
	ldrh r0, [r4, #6]
	adds r0, #1
	strh r0, [r4, #6]
	bl sub_0806D41C
	bl sub_0806D4CC
	bl sub_0806D728
	bl sub_08004504
	ldrh r0, [r4, #6]
	adds r1, r0, #1
	strh r1, [r4, #6]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_08003A30
	lsls r0, r6, #0x18
	asrs r0, r0, #0x17
	adds r0, #1
	strb r0, [r4, #1]
	bl sub_08005A2C
	bl sub_08061490
	bl sub_0806D06C
	mov r2, sl
	lsls r0, r2, #0x18
	asrs r0, r0, #0x18
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0806DA18: .4byte 0x03004510

	thumb_func_start sub_0806DA1C
sub_0806DA1C: @ 0x0806DA1C
	push {r4, lr}
	bl sub_08001F2C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0806DA3C
	movs r3, #0
	ldr r0, _0806DA38 @ =0x03004510
	ldrb r1, [r0, #2]
	adds r2, r1, #1
	strb r2, [r0, #2]
	b _0806DA4A
	.align 2, 0
_0806DA38: .4byte 0x03004510
_0806DA3C:
	cmp r0, #2
	bne _0806DA54
	movs r3, #1
	ldr r0, _0806DA50 @ =0x03004510
	ldrb r1, [r0, #3]
	adds r2, r1, #1
	strb r2, [r0, #3]
_0806DA4A:
	lsls r1, r1, #0x18
	lsrs r2, r1, #0x18
	b _0806DA58
	.align 2, 0
_0806DA50: .4byte 0x03004510
_0806DA54:
	movs r3, #0xff
	movs r2, #0
_0806DA58:
	lsls r3, r3, #0x18
	asrs r1, r3, #0x18
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0806DA6C
	lsrs r0, r3, #0x18
	adds r1, r2, #0
	bl sub_0806D23C
_0806DA6C:
	movs r0, #1
	bl sub_080613CC
	movs r0, #1
	bl sub_08005B8C
	movs r0, #0xcc
	bl m4aSongNumStart
	bl sub_08061490
	ldr r4, _0806DAAC @ =0x03004510
	ldrh r0, [r4, #6]
	adds r1, r0, #1
	strh r1, [r4, #6]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_08003A30
	ldrb r1, [r4, #2]
	ldrb r2, [r4, #1]
	cmp r1, r2
	bhs _0806DAA0
	ldrb r0, [r4, #3]
	cmp r0, r2
	blo _0806DACC
_0806DAA0:
	ldrb r0, [r4, #3]
	cmp r1, r0
	bne _0806DAB0
	movs r0, #0xff
	b _0806DAC6
	.align 2, 0
_0806DAAC: .4byte 0x03004510
_0806DAB0:
	cmp r1, r0
	bls _0806DABE
	ldrb r0, [r4, #4]
	cmp r0, #0
	beq _0806DAC4
	movs r0, #0
	b _0806DAC6
_0806DABE:
	ldrb r0, [r4, #4]
	cmp r0, #0
	beq _0806DAC6
_0806DAC4:
	movs r0, #1
_0806DAC6:
	strb r0, [r4]
	movs r0, #1
	b _0806DACE
_0806DACC:
	movs r0, #0
_0806DACE:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_0806DAD4
sub_0806DAD4: @ 0x0806DAD4
	push {r4, r5, r6, r7, lr}
	ldr r1, _0806DAF0 @ =0x03004510
	ldrb r0, [r1, #4]
	cmp r0, #0
	bne _0806DB38
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #1
	bne _0806DAF8
	ldr r0, _0806DAF4 @ =0xFFFF0000
	ands r5, r0
	movs r0, #0xd0
	b _0806DAFE
	.align 2, 0
_0806DAF0: .4byte 0x03004510
_0806DAF4: .4byte 0xFFFF0000
_0806DAF8:
	ldr r0, _0806DB30 @ =0xFFFF0000
	ands r5, r0
	movs r0, #0x20
_0806DAFE:
	orrs r5, r0
	bl sub_0800B818
	movs r1, #1
	adds r6, r0, #0
	ands r6, r1
	movs r0, #0
	bl sub_0800759C
	ldr r4, _0806DB34 @ =0x03004524
	ldr r1, [r4]
	movs r2, #6
	bl CpuSet
	adds r0, r6, #0
	bl sub_080076F8
	ldr r1, [r4]
	adds r1, #0xc
	movs r2, #0x10
	bl CpuSet
	ldr r0, [r4]
	adds r0, #0x2c
	b _0806DB84
	.align 2, 0
_0806DB30: .4byte 0xFFFF0000
_0806DB34: .4byte 0x03004524
_0806DB38:
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #1
	bne _0806DB4C
	ldr r0, _0806DB48 @ =0xFFFF0000
	ands r5, r0
	movs r0, #0x20
	b _0806DB52
	.align 2, 0
_0806DB48: .4byte 0xFFFF0000
_0806DB4C:
	ldr r0, _0806DC14 @ =0xFFFF0000
	ands r5, r0
	movs r0, #0xd0
_0806DB52:
	orrs r5, r0
	bl sub_0800B818
	movs r1, #1
	adds r6, r0, #0
	ands r6, r1
	movs r0, #0
	bl sub_0800759C
	ldr r4, _0806DC18 @ =0x03004524
	ldr r1, [r4]
	adds r1, #0x30
	movs r2, #6
	bl CpuSet
	adds r0, r6, #0
	bl sub_080076F8
	ldr r1, [r4]
	adds r1, #0x3c
	movs r2, #0x10
	bl CpuSet
	ldr r0, [r4]
	adds r0, #0x5c
_0806DB84:
	strb r6, [r0]
	ldr r0, _0806DC1C @ =0x0000FFFF
	ands r5, r0
	movs r0, #0x90
	lsls r0, r0, #0xf
	orrs r5, r0
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	lsrs r1, r5, #0x10
	bl sub_0806D5DC
	bl sub_0806D648
	bl sub_0806D624
	movs r0, #0x30
	bl sub_08007CE8
	adds r6, r0, #0
	movs r0, #0x30
	bl sub_08007CE8
	adds r5, r0, #0
	ldr r7, _0806DC20 @ =0x03004510
	ldrb r0, [r7, #4]
	cmp r0, #0
	bne _0806DC24
	ldr r4, _0806DC18 @ =0x03004524
	ldr r0, [r4]
	adds r1, r6, #0
	movs r2, #6
	bl CpuSet
	ldr r0, [r4]
	adds r0, #0xc
	adds r1, r6, #0
	adds r1, #0x10
	movs r2, #0x10
	bl CpuSet
	ldr r0, [r4]
	adds r0, #0x2c
	ldrb r0, [r0]
	strb r0, [r6, #0xf]
	ldrh r0, [r7, #6]
	adds r1, r0, #1
	strh r1, [r7, #6]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r6, #0
	adds r2, r5, #0
	movs r3, #0x30
	bl sub_08003998
	ldr r1, [r4]
	adds r1, #0x30
	adds r0, r5, #0
	movs r2, #6
	bl CpuSet
	adds r0, r5, #0
	adds r0, #0x10
	ldr r1, [r4]
	adds r1, #0x3c
	movs r2, #0x10
	bl CpuSet
	ldr r0, [r4]
	ldrb r1, [r5, #0xf]
	adds r0, #0x5c
	b _0806DC7A
	.align 2, 0
_0806DC14: .4byte 0xFFFF0000
_0806DC18: .4byte 0x03004524
_0806DC1C: .4byte 0x0000FFFF
_0806DC20: .4byte 0x03004510
_0806DC24:
	ldr r4, _0806DC90 @ =0x03004524
	ldr r0, [r4]
	adds r0, #0x30
	adds r1, r6, #0
	movs r2, #6
	bl CpuSet
	ldr r0, [r4]
	adds r0, #0x3c
	adds r1, r6, #0
	adds r1, #0x10
	movs r2, #0x10
	bl CpuSet
	ldr r0, [r4]
	adds r0, #0x5c
	ldrb r0, [r0]
	strb r0, [r6, #0xf]
	ldrh r0, [r7, #6]
	adds r1, r0, #1
	strh r1, [r7, #6]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r6, #0
	adds r2, r5, #0
	movs r3, #0x30
	bl sub_08003998
	ldr r1, [r4]
	adds r0, r5, #0
	movs r2, #6
	bl CpuSet
	adds r0, r5, #0
	adds r0, #0x10
	ldr r1, [r4]
	adds r1, #0xc
	movs r2, #0x10
	bl CpuSet
	ldr r0, [r4]
	ldrb r1, [r5, #0xf]
	adds r0, #0x2c
_0806DC7A:
	strb r1, [r0]
	adds r0, r6, #0
	bl sub_08007CF8
	adds r0, r5, #0
	bl sub_08007CF8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806DC90: .4byte 0x03004524

	thumb_func_start sub_0806DC94
sub_0806DC94: @ 0x0806DC94
	push {r4, r5, lr}
	ldr r5, _0806DCC8 @ =0x03004524
	ldr r0, [r5]
	ldr r0, [r0, #0x60]
	ldr r4, _0806DCCC @ =0x03004400
	ldrb r1, [r4, #0xe]
	movs r2, #0
	movs r3, #0xff
	bl sub_0806CCA4
	ldr r0, [r5]
	ldr r0, [r0, #0x68]
	ldrb r1, [r4, #0xf]
	movs r2, #0
	movs r3, #0xff
	bl sub_0806CCA4
	bl sub_0806D06C
	ldr r1, _0806DCD0 @ =0x03004510
	movs r0, #0
	strb r0, [r1, #2]
	strb r0, [r1, #3]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806DCC8: .4byte 0x03004524
_0806DCCC: .4byte 0x03004400
_0806DCD0: .4byte 0x03004510

	thumb_func_start sub_0806DCD4
sub_0806DCD4: @ 0x0806DCD4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x10
	ldr r0, _0806DD30 @ =0x03004400
	movs r1, #1
	strb r1, [r0, #5]
	ldrb r0, [r0, #0xa]
	cmp r0, #0x11
	bne _0806DD02
	bl sub_08001F2C
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _0806DD02
	movs r0, #0x2a
	bl ChangeGameState_08008790
	bl sub_08002B0C
_0806DD02:
	bl sub_08060708
	ldr r4, _0806DD34 @ =0x03004524
	movs r0, #0xd8
	bl sub_08007CE8
	adds r1, r0, #0
	str r1, [r4]
	add r0, sp, #8
	movs r5, #0
	strh r5, [r0]
	ldr r2, _0806DD38 @ =0x0100006C
	bl CpuSet
	ldr r0, _0806DD30 @ =0x03004400
	ldrb r0, [r0, #0xa]
	cmp r0, #0x11
	bne _0806DD3C
	add r1, sp, #0xc
	movs r0, #4
	strb r0, [r1]
	mov r8, r1
	b _0806DD92
	.align 2, 0
_0806DD30: .4byte 0x03004400
_0806DD34: .4byte 0x03004524
_0806DD38: .4byte 0x0100006C
_0806DD3C:
	mov r0, sp
	adds r0, #0xa
	strh r5, [r0]
	ldr r4, _0806DE20 @ =0x03004510
	ldr r2, _0806DE24 @ =0x0100000A
	adds r1, r4, #0
	bl CpuSet
	ldr r0, _0806DE28 @ =0x00003301
	strh r0, [r4, #6]
	add r0, sp, #0xc
	strb r5, [r0]
	movs r5, #0
	mov r8, r0
	adds r4, #8
	ldr r2, _0806DE2C @ =0x0809058C
_0806DD5C:
	adds r0, r5, r4
	adds r1, r5, r2
	ldrb r1, [r1]
	strb r1, [r0]
	adds r5, #1
	cmp r5, #7
	ble _0806DD5C
	movs r7, #7
	ldr r6, _0806DE30 @ =0x03004518
	movs r5, #0x1f
_0806DD70:
	bl sub_0800B818
	adds r4, r7, #0
	ands r4, r0
	adds r4, r4, r6
	bl sub_0800B818
	adds r1, r7, #0
	ands r1, r0
	adds r1, r1, r6
	ldrb r2, [r4]
	ldrb r0, [r1]
	strb r0, [r4]
	strb r2, [r1]
	subs r5, #1
	cmp r5, #0
	bge _0806DD70
_0806DD92:
	ldr r4, _0806DE34 @ =0x03004400
	ldrb r0, [r4, #8]
	strb r0, [r4, #0xa]
	movs r0, #0xa
	bl sub_080607FC
	bl sub_08060FF4
	bl sub_08061D7C
	movs r0, #2
	bl sub_08061DA0
	mov r1, r8
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #4
	bne _0806DDE8
	ldrb r1, [r4, #0xe]
	movs r0, #0
	bl sub_0806CCFC
	ldrb r1, [r4, #0xf]
	movs r0, #1
	bl sub_0806CCFC
	movs r0, #0
	bl sub_0806CF14
	movs r0, #1
	bl sub_0806CF14
	ldrb r0, [r4, #0xe]
	ldrb r1, [r4, #0xf]
	bl sub_0806CF64
	ldr r0, _0806DE20 @ =0x03004510
	ldrb r1, [r0, #1]
	movs r0, #0xe
	ands r0, r1
	lsrs r0, r0, #1
	bl sub_0806D0C8
_0806DDE8:
	movs r0, #8
	bl sub_080077C4
	movs r0, #0x20
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl FadeIn_08008AF4
	ldr r0, _0806DE38 @ =0x030024E0
	adds r0, #0x4f
	movs r1, #1
	strb r1, [r0]
	bl sub_08008D34
	mov r2, r8
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0
	bne _0806DED8
	movs r0, #1
	bl sub_08005A88
	movs r0, #0
	bl sub_080059E4
	b _0806DE40
	.align 2, 0
_0806DE20: .4byte 0x03004510
_0806DE24: .4byte 0x0100000A
_0806DE28: .4byte 0x00003301
_0806DE2C: .4byte 0x0809058C
_0806DE30: .4byte 0x03004518
_0806DE34: .4byte 0x03004400
_0806DE38: .4byte 0x030024E0
_0806DE3C:
	movs r5, #0xff
	b _0806DE74
_0806DE40:
	ldr r0, _0806DEBC @ =0x0047004F
	bl sub_080062D0
	ldr r0, _0806DEC0 @ =0x00470050
	bl sub_0800648C
	bl sub_080064F8
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0806DE3C
	ldr r0, _0806DEC4 @ =0x00470051
	bl sub_080062D0
	ldr r0, _0806DEC8 @ =0x00470052
	bl sub_080062D0
	ldr r0, _0806DECC @ =0x00470053
	bl sub_0800648C
	bl sub_080064F8
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0806DE40
	movs r5, #0
_0806DE74:
	bl sub_08005A2C
	bl sub_08005AB0
	lsls r0, r5, #0x18
	asrs r0, r0, #0x18
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _0806DF44
	bl sub_08003468
	bl sub_08003510
	ldr r0, _0806DED0 @ =0x004F0002
	bl sub_080033B0
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x33
	bl sub_0800353C
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	bl sub_080038E8
	ldr r1, _0806DED4 @ =0x03004510
	strb r0, [r1, #4]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r4, #0
	bl sub_08003458
	b _0806DEEC
	.align 2, 0
_0806DEBC: .4byte 0x0047004F
_0806DEC0: .4byte 0x00470050
_0806DEC4: .4byte 0x00470051
_0806DEC8: .4byte 0x00470052
_0806DECC: .4byte 0x00470053
_0806DED0: .4byte 0x004F0002
_0806DED4: .4byte 0x03004510
_0806DED8:
	bl sub_08003468
	bl sub_08003510
	ldr r0, _0806DF2C @ =0x03004510
	ldrb r1, [r0, #4]
	movs r0, #0x33
	bl sub_08003690
	movs r5, #1
_0806DEEC:
	cmp r5, #0
	beq _0806DF34
	mov r1, sp
	movs r0, #0x33
	strb r0, [r1]
	mov r2, r8
	movs r0, #0
	ldrsb r0, [r2, r0]
	strb r0, [r1, #1]
	ldr r0, _0806DF30 @ =0x0000999A
	add r4, sp, #4
	adds r2, r4, #0
	movs r3, #2
	bl sub_08003998
	movs r0, #0
	ldrsb r0, [r4, r0]
	adds r7, r4, #0
	cmp r0, #0x33
	bne _0806DF24
	ldrb r0, [r7, #1]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	mov r2, r8
	movs r1, #0
	ldrsb r1, [r2, r1]
	cmp r0, r1
	beq _0806DF50
_0806DF24:
	bl sub_0800386C
	b _0806DF50
	.align 2, 0
_0806DF2C: .4byte 0x03004510
_0806DF30: .4byte 0x0000999A
_0806DF34:
	movs r0, #0
	bl sub_080059E4
	ldr r0, _0806DF4C @ =0x003E0030
	bl sub_080062D0
	bl sub_08005A2C
_0806DF44:
	movs r0, #0x2a
	bl ChangeGameState_08008790
	b _0806E3D8
	.align 2, 0
_0806DF4C: .4byte 0x003E0030
_0806DF50:
	mov r1, r8
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #5
	bls _0806DF5C
	b _0806E3C2
_0806DF5C:
	lsls r0, r0, #2
	ldr r1, _0806DF68 @ =_0806DF6C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0806DF68: .4byte _0806DF6C
_0806DF6C: @ jump table
	.4byte _0806DF84 @ case 0
	.4byte _0806E060 @ case 1
	.4byte _0806E134 @ case 2
	.4byte _0806E158 @ case 3
	.4byte _0806E1EC @ case 4
	.4byte _0806E206 @ case 5
_0806DF84:
	movs r0, #0
	bl sub_0806CDF8
	ldr r0, _0806DFAC @ =0x03004510
	ldrb r0, [r0, #4]
	cmp r0, #0
	bne _0806DFB8
	bl sub_080628A0
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _0806DFB0
	movs r0, #0xff
	mov r2, r8
	strb r0, [r2]
	b _0806DFC4
	.align 2, 0
_0806DFAC: .4byte 0x03004510
_0806DFB0:
	movs r0, #1
	mov r1, r8
	strb r0, [r1]
	b _0806DFC4
_0806DFB8:
	movs r0, #0
	bl sub_080059E4
	ldr r0, _0806E008 @ =0x0040002A
	bl sub_080062D0
_0806DFC4:
	ldr r4, _0806E00C @ =0x03004510
	ldrh r0, [r4, #6]
	adds r1, r0, #1
	strh r1, [r4, #6]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_08003A30
	movs r0, #1
	bl ProcSleep_08002B98
	ldrb r0, [r4, #4]
	cmp r0, #0
	bne _0806E014
	mov r1, sp
	ldr r0, _0806E010 @ =0x03004400
	ldrb r0, [r0, #0xe]
	strb r0, [r1]
	mov r2, r8
	movs r0, #0
	ldrsb r0, [r2, r0]
	strb r0, [r1, #1]
	ldrh r0, [r4, #6]
	adds r1, r0, #1
	strh r1, [r4, #6]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r1, sp
	adds r2, r7, #0
	movs r3, #2
	bl sub_08003998
	b _0806E038
	.align 2, 0
_0806E008: .4byte 0x0040002A
_0806E00C: .4byte 0x03004510
_0806E010: .4byte 0x03004400
_0806E014:
	bl sub_08005A2C
	ldrh r0, [r4, #6]
	adds r1, r0, #1
	strh r1, [r4, #6]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r1, sp
	adds r2, r7, #0
	movs r3, #2
	bl sub_08003998
	ldr r1, _0806E054 @ =0x03004400
	ldrb r0, [r7]
	strb r0, [r1, #0xe]
	ldrb r0, [r7, #1]
	mov r1, r8
	strb r0, [r1]
_0806E038:
	mov r2, r8
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #1
	bne _0806E058
	ldr r0, _0806E054 @ =0x03004400
	ldrb r1, [r0, #0xe]
	movs r0, #0
	bl sub_0806CCFC
	movs r0, #0
	bl sub_0806CE74
	b _0806E3C2
	.align 2, 0
_0806E054: .4byte 0x03004400
_0806E058:
	movs r0, #0x2a
	bl ChangeGameState_08008790
	b _0806E3C2
_0806E060:
	movs r0, #1
	bl sub_0806CDF8
	ldr r0, _0806E07C @ =0x03004510
	ldrb r0, [r0, #4]
	cmp r0, #0
	bne _0806E084
	movs r0, #0
	bl sub_080059E4
	ldr r0, _0806E080 @ =0x0040002A
	bl sub_080062D0
	b _0806E0A2
	.align 2, 0
_0806E07C: .4byte 0x03004510
_0806E080: .4byte 0x0040002A
_0806E084:
	bl sub_080628D8
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _0806E09C
	movs r0, #0
	mov r1, r8
	strb r0, [r1]
	b _0806E0A2
_0806E09C:
	movs r0, #2
	mov r2, r8
	strb r0, [r2]
_0806E0A2:
	ldr r4, _0806E0E4 @ =0x03004510
	ldrh r0, [r4, #6]
	adds r1, r0, #1
	strh r1, [r4, #6]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_08003A30
	movs r0, #1
	bl ProcSleep_08002B98
	ldrb r0, [r4, #4]
	cmp r0, #0
	bne _0806E0EC
	bl sub_08005A2C
	ldrh r0, [r4, #6]
	adds r1, r0, #1
	strh r1, [r4, #6]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r1, sp
	adds r2, r7, #0
	movs r3, #2
	bl sub_08003998
	ldr r1, _0806E0E8 @ =0x03004400
	ldrb r0, [r7]
	strb r0, [r1, #0xf]
	ldrb r0, [r7, #1]
	mov r1, r8
	strb r0, [r1]
	b _0806E110
	.align 2, 0
_0806E0E4: .4byte 0x03004510
_0806E0E8: .4byte 0x03004400
_0806E0EC:
	mov r1, sp
	ldr r0, _0806E130 @ =0x03004400
	ldrb r0, [r0, #0xf]
	strb r0, [r1]
	mov r2, r8
	movs r0, #0
	ldrsb r0, [r2, r0]
	strb r0, [r1, #1]
	ldrh r0, [r4, #6]
	adds r1, r0, #1
	strh r1, [r4, #6]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r1, sp
	adds r2, r7, #0
	movs r3, #2
	bl sub_08003998
_0806E110:
	mov r1, r8
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #2
	beq _0806E11C
	b _0806E3C2
_0806E11C:
	ldr r0, _0806E130 @ =0x03004400
	ldrb r1, [r0, #0xf]
	movs r0, #1
	bl sub_0806CCFC
	movs r0, #1
	bl sub_0806CE74
	b _0806E3C2
	.align 2, 0
_0806E130: .4byte 0x03004400
_0806E134:
	bl sub_0806D7C0
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _0806E14C
	movs r0, #1
	mov r2, r8
	strb r0, [r2]
	b _0806E152
_0806E14C:
	movs r0, #3
	mov r1, r8
	strb r0, [r1]
_0806E152:
	bl sub_0806288C
	b _0806E3C2
_0806E158:
	ldr r5, _0806E1A0 @ =0x03004510
	ldrb r0, [r5, #4]
	cmp r0, #0
	bne _0806E1A8
	ldr r4, _0806E1A4 @ =0x03004400
	ldrb r1, [r5, #0x10]
	adds r0, r1, #1
	strb r0, [r5, #0x10]
	movs r0, #7
	ands r0, r1
	adds r1, r5, #0
	adds r1, #8
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r4, #0xd]
	bl sub_0800B818
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	mov r1, sp
	ldrb r0, [r4, #0xd]
	strb r0, [r1]
	mov r0, sp
	strb r6, [r0, #1]
	ldrh r0, [r5, #6]
	adds r1, r0, #1
	strh r1, [r5, #6]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r1, sp
	adds r2, r7, #0
	movs r3, #2
	bl sub_08003998
	b _0806E1C4
	.align 2, 0
_0806E1A0: .4byte 0x03004510
_0806E1A4: .4byte 0x03004400
_0806E1A8:
	ldrh r0, [r5, #6]
	adds r1, r0, #1
	strh r1, [r5, #6]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r1, sp
	adds r2, r7, #0
	movs r3, #2
	bl sub_08003998
	ldr r1, _0806E1E8 @ =0x03004400
	ldrb r0, [r7]
	strb r0, [r1, #0xd]
	ldrb r6, [r7, #1]
_0806E1C4:
	ldr r2, _0806E1E8 @ =0x03004400
	ldrb r0, [r2, #0xd]
	ldrb r1, [r2, #0xe]
	ldrb r2, [r2, #0xf]
	movs r3, #3
	bl sub_08001D80
	adds r0, r6, #0
	bl sub_08001B54
	movs r0, #0x18
	bl sub_08001930
	movs r0, #0x11
	bl ChangeGameState_08008790
	movs r0, #0xff
	b _0806E200
	.align 2, 0
_0806E1E8: .4byte 0x03004400
_0806E1EC:
	bl sub_0806DA1C
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0806E1FE
	movs r0, #3
	mov r1, r8
	strb r0, [r1]
	b _0806E3C2
_0806E1FE:
	movs r0, #5
_0806E200:
	mov r2, r8
	strb r0, [r2]
	b _0806E3C2
_0806E206:
	ldr r4, _0806E228 @ =0x03004510
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #0
	beq _0806E230
	cmp r0, #0
	ble _0806E218
	cmp r0, #1
	beq _0806E264
_0806E218:
	movs r0, #0
	bl sub_080059E4
	ldr r0, _0806E22C @ =0x003E002D
	bl sub_080062D0
	b _0806E308
	.align 2, 0
_0806E228: .4byte 0x03004510
_0806E22C: .4byte 0x003E002D
_0806E230:
	bl sub_0806DAD4
	movs r0, #0
	bl sub_080059E4
	ldr r0, _0806E254 @ =0x003E0016
	bl sub_080062D0
	ldr r0, _0806E258 @ =0x003E0017
	bl sub_080062D0
	ldr r0, _0806E25C @ =0x003E0018
	bl sub_080062D0
	ldr r0, _0806E260 @ =0x003E0019
	bl sub_080062D0
	b _0806E308
	.align 2, 0
_0806E254: .4byte 0x003E0016
_0806E258: .4byte 0x003E0017
_0806E25C: .4byte 0x003E0018
_0806E260: .4byte 0x003E0019
_0806E264:
	bl sub_0806DAD4
	movs r0, #0
	bl sub_080059E4
	ldr r0, _0806E298 @ =0x003E000D
	bl sub_080062D0
	ldrb r0, [r4, #4]
	cmp r0, #0
	bne _0806E2A0
	ldr r4, _0806E29C @ =0x03004524
	ldr r1, [r4]
	adds r1, #0x30
	movs r0, #0
	bl sub_08005BE0
	ldr r1, [r4]
	adds r1, #0x3c
	movs r0, #0xa
	bl sub_08005BE0
	ldr r0, [r4]
	adds r0, #0x5c
	b _0806E2B8
	.align 2, 0
_0806E298: .4byte 0x003E000D
_0806E29C: .4byte 0x03004524
_0806E2A0:
	ldr r4, _0806E2D4 @ =0x03004524
	ldr r1, [r4]
	movs r0, #0
	bl sub_08005BE0
	ldr r1, [r4]
	adds r1, #0xc
	movs r0, #0xa
	bl sub_08005BE0
	ldr r0, [r4]
	adds r0, #0x2c
_0806E2B8:
	ldrb r5, [r0]
	ldr r0, _0806E2D8 @ =0x003E000E
	bl sub_080062D0
	ldr r0, _0806E2DC @ =0x003E000F
	bl sub_080062D0
	cmp r5, #0
	bne _0806E2E4
	ldr r0, _0806E2E0 @ =0x003E0010
	bl sub_080062D0
	b _0806E2EA
	.align 2, 0
_0806E2D4: .4byte 0x03004524
_0806E2D8: .4byte 0x003E000E
_0806E2DC: .4byte 0x003E000F
_0806E2E0: .4byte 0x003E0010
_0806E2E4:
	ldr r0, _0806E344 @ =0x003E0012
	bl sub_080062D0
_0806E2EA:
	bl sub_08005A2C
	bl sub_08005934
	ldr r0, _0806E348 @ =0x003E0014
	bl sub_080062D0
	bl sub_08005A2C
	movs r0, #0
	bl sub_080059E4
	ldr r0, _0806E34C @ =0x003E0015
	bl sub_080062D0
_0806E308:
	bl sub_08005A2C
	movs r0, #1
	bl ProcSleep_08002B98
	ldr r0, _0806E350 @ =0x00003301
	bl sub_08003A30
	movs r0, #0xa
	bl ProcSleep_08002B98
	ldr r0, _0806E354 @ =0x03004510
	ldrb r0, [r0, #4]
	cmp r0, #0
	bne _0806E38E
	ldr r0, _0806E358 @ =0x003E001A
	bl sub_0800648C
	bl sub_080064F8
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0806E35C
	bl sub_0806DC94
	movs r0, #2
	mov r1, r8
	strb r0, [r1]
	b _0806E368
	.align 2, 0
_0806E344: .4byte 0x003E0012
_0806E348: .4byte 0x003E0014
_0806E34C: .4byte 0x003E0015
_0806E350: .4byte 0x00003301
_0806E354: .4byte 0x03004510
_0806E358: .4byte 0x003E001A
_0806E35C:
	movs r0, #0x2a
	bl ChangeGameState_08008790
	movs r0, #0xff
	mov r2, r8
	strb r0, [r2]
_0806E368:
	movs r5, #9
_0806E36A:
	ldr r0, _0806E384 @ =0x00001111
	mov r1, r8
	movs r2, #1
	bl sub_080038F4
	movs r0, #1
	bl ProcSleep_08002B98
	subs r5, #1
	cmp r5, #0
	bge _0806E36A
	b _0806E3C2
	.align 2, 0
_0806E384: .4byte 0x00001111
_0806E388:
	bl sub_0806DC94
	b _0806E3C2
_0806E38E:
	ldr r4, _0806E394 @ =0x00001111
	b _0806E39E
	.align 2, 0
_0806E394: .4byte 0x00001111
_0806E398:
	movs r0, #1
	bl ProcSleep_08002B98
_0806E39E:
	movs r0, #0
	adds r1, r4, #0
	mov r2, r8
	movs r3, #1
	bl sub_08003938
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r4
	bne _0806E398
	mov r1, r8
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #2
	beq _0806E388
	movs r0, #0x2a
	bl ChangeGameState_08008790
_0806E3C2:
	mov r2, r8
	movs r1, #0
	ldrsb r1, [r2, r1]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0806E3D8
	movs r0, #1
	bl ProcSleep_08002B98
	b _0806DF50
_0806E3D8:
	ldr r4, _0806E440 @ =0x03004400
	ldrb r0, [r4, #9]
	cmp r0, #0x11
	bne _0806E3E8
	movs r0, #0
	movs r1, #0x20
	bl sub_080077EC
_0806E3E8:
	movs r0, #0x20
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl FadeOut_080089E8
	bl sub_08008D34
	ldrb r0, [r4, #9]
	cmp r0, #0x2a
	bne _0806E402
	bl sub_080034DC
_0806E402:
	bl sub_0806D06C
	movs r0, #0
	bl sub_0806CDF8
	movs r0, #1
	bl sub_0806CDF8
	bl sub_08061E30
	bl sub_0806102C
	ldr r4, _0806E444 @ =0x03004524
	ldr r0, [r4]
	cmp r0, #0
	beq _0806E42A
	bl sub_08007CF8
	movs r0, #0
	str r0, [r4]
_0806E42A:
	bl sub_080607BC
	bl sub_08002B0C
	add sp, #0x10
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806E440: .4byte 0x03004400
_0806E444: .4byte 0x03004524
