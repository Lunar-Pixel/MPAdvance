.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .text
	.ARM
	.syntax unified

	thumb_func_start sub_0806AA20
sub_0806AA20: @ 0x0806AA20
	push {lr}
	sub sp, #4
	mov r1, sp
	ldr r2, _0806AA58 @ =0x00001111
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _0806AA5C @ =0x06008020
	ldr r2, _0806AA60 @ =0x01000010
	mov r0, sp
	bl CpuSet
	mov r0, sp
	adds r0, #2
	ldr r2, _0806AA64 @ =0x00001001
	adds r1, r2, #0
	strh r1, [r0]
	ldr r1, _0806AA68 @ =0x0600D000
	ldr r2, _0806AA6C @ =0x01000400
	bl CpuSet
	ldr r2, _0806AA70 @ =0x030024E0
	ldrh r1, [r2]
	ldr r0, _0806AA74 @ =0x0000FDFF
	ands r0, r1
	strh r0, [r2]
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_0806AA58: .4byte 0x00001111
_0806AA5C: .4byte 0x06008020
_0806AA60: .4byte 0x01000010
_0806AA64: .4byte 0x00001001
_0806AA68: .4byte 0x0600D000
_0806AA6C: .4byte 0x01000400
_0806AA70: .4byte 0x030024E0
_0806AA74: .4byte 0x0000FDFF

	thumb_func_start sub_0806AA78
sub_0806AA78: @ 0x0806AA78
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	movs r6, #0
	ldr r7, _0806AAD8 @ =0x08090594
	mov r8, r7
_0806AA84:
	lsls r0, r6, #4
	mov r1, r8
	adds r1, #4
	adds r0, r0, r1
	ldr r5, [r0]
	adds r0, r5, #0
	bl sub_08006C14
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r0, [r7]
	ldr r1, _0806AADC @ =0x080905C4
	adds r1, r6, r1
	ldrb r1, [r1]
	lsls r1, r1, #5
	ldr r2, _0806AAE0 @ =0x05000200
	adds r1, r1, r2
	bl LoadPalette_08008308
	lsls r1, r4, #5
	ldr r0, _0806AAE4 @ =0x06010000
	adds r1, r1, r0
	adds r0, r5, #0
	bl DecompressData_08008374
	ldr r0, _0806AAE8 @ =0x03004500
	ldr r0, [r0]
	lsls r1, r6, #1
	adds r0, #0xf8
	adds r0, r0, r1
	strh r4, [r0]
	adds r7, #0x10
	adds r6, #1
	cmp r6, #2
	ble _0806AA84
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806AAD8: .4byte 0x08090594
_0806AADC: .4byte 0x080905C4
_0806AAE0: .4byte 0x05000200
_0806AAE4: .4byte 0x06010000
_0806AAE8: .4byte 0x03004500

	thumb_func_start sub_0806AAEC
sub_0806AAEC: @ 0x0806AAEC
	push {r4, r5, lr}
	ldr r0, _0806AB08 @ =0x08090594
	adds r5, r0, #4
	movs r4, #2
_0806AAF4:
	ldr r0, [r5]
	bl sub_08006CA0
	adds r5, #0x10
	subs r4, #1
	cmp r4, #0
	bge _0806AAF4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806AB08: .4byte 0x08090594

	thumb_func_start sub_0806AB0C
sub_0806AB0C: @ 0x0806AB0C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r2, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	movs r0, #2
	bl sub_080099E0
	adds r5, r0, #0
	ldr r0, _0806AB70 @ =0x03004500
	ldr r0, [r0]
	lsls r1, r4, #1
	adds r0, #0xf8
	adds r0, r0, r1
	ldrh r1, [r0]
	lsls r1, r1, #5
	ldr r0, _0806AB74 @ =0x06010000
	adds r1, r1, r0
	adds r0, r5, #0
	bl sub_08009A78
	ldr r0, _0806AB78 @ =0x080905C4
	adds r0, r4, r0
	ldrb r1, [r0]
	adds r0, r5, #0
	bl sub_08009AB4
	ldr r0, _0806AB7C @ =0x08090594
	lsls r4, r4, #4
	adds r0, #8
	adds r4, r4, r0
	ldr r2, [r4]
	adds r0, r5, #0
	movs r1, #0
	adds r3, r6, #0
	bl sub_08009ACC
	adds r0, r5, #0
	movs r1, #1
	bl sub_08009A34
	adds r0, r5, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0806AB70: .4byte 0x03004500
_0806AB74: .4byte 0x06010000
_0806AB78: .4byte 0x080905C4
_0806AB7C: .4byte 0x08090594

	thumb_func_start sub_0806AB80
sub_0806AB80: @ 0x0806AB80
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	adds r4, r0, #0
	adds r6, r2, #0
	mov r8, r3
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	mov r0, r8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	movs r0, #2
	bl sub_080099E0
	adds r5, r0, #0
	ldr r0, _0806AC04 @ =0x03004500
	ldr r0, [r0]
	lsls r1, r4, #1
	adds r0, #0xf8
	adds r0, r0, r1
	ldrh r1, [r0]
	lsls r1, r1, #5
	ldr r0, _0806AC08 @ =0x06010000
	adds r1, r1, r0
	adds r0, r5, #0
	bl sub_08009A78
	ldr r0, _0806AC0C @ =0x080905C4
	adds r0, r4, r0
	ldrb r1, [r0]
	adds r0, r5, #0
	bl sub_08009AB4
	ldr r2, _0806AC10 @ =0x08090594
	lsls r4, r4, #4
	adds r0, r2, #0
	adds r0, #0xc
	adds r0, r4, r0
	ldr r1, [r0]
	adds r2, #8
	adds r4, r4, r2
	ldr r2, [r4]
	adds r0, r5, #0
	adds r3, r6, #0
	bl sub_08009ACC
	adds r0, r5, #0
	mov r1, r8
	bl sub_08009B40
	adds r0, r5, #0
	movs r1, #1
	bl sub_08009A34
	adds r0, r5, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0806AC04: .4byte 0x03004500
_0806AC08: .4byte 0x06010000
_0806AC0C: .4byte 0x080905C4
_0806AC10: .4byte 0x08090594

	thumb_func_start sub_0806AC14
sub_0806AC14: @ 0x0806AC14
	push {r4, lr}
	adds r4, r0, #0
	adds r3, r2, #0
	lsls r1, r1, #0x18
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	ldr r0, _0806AC40 @ =0x08090594
	lsrs r1, r1, #0x14
	adds r0, #8
	adds r1, r1, r0
	ldr r2, [r1]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08009ACC
	adds r0, r4, #0
	movs r1, #1
	bl sub_08009A34
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806AC40: .4byte 0x08090594

	thumb_func_start sub_0806AC44
sub_0806AC44: @ 0x0806AC44
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r4, r2, #0
	adds r5, r3, #0
	lsls r1, r1, #0x18
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	ldr r2, _0806AC88 @ =0x08090594
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
	adds r0, r6, #0
	movs r1, #1
	bl sub_08009A34
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0806AC88: .4byte 0x08090594

	thumb_func_start sub_0806AC8C
sub_0806AC8C: @ 0x0806AC8C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x18
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	mov r4, sp
	mov r0, sp
	movs r1, #0
	movs r2, #0xa
	bl memset
	movs r0, #2
	strb r0, [r4, #1]
	add r4, sp, #0xc
	ldr r1, _0806ACC0 @ =0x080905C7
	adds r0, r4, #0
	movs r2, #0xa
	bl memcpy
	adds r7, r4, #0
	cmp r6, #0
	bne _0806ACC8
	ldr r0, _0806ACC4 @ =0x03004500
	ldr r0, [r0]
	adds r4, r0, #0
	adds r4, #0x18
	b _0806ACD0
	.align 2, 0
_0806ACC0: .4byte 0x080905C7
_0806ACC4: .4byte 0x03004500
_0806ACC8:
	ldr r0, _0806ACF0 @ =0x03004500
	ldr r0, [r0]
	adds r4, r0, #0
	adds r4, #0x88
_0806ACD0:
	movs r5, #0
_0806ACD2:
	ldr r0, [r4]
	cmp r0, #0
	bne _0806AD00
	mov r1, sp
	adds r0, r1, r5
	ldrb r3, [r0]
	movs r1, #0x3f
	cmp r5, #0
	bne _0806ACF4
	movs r1, #0x40
	movs r2, #0x1b
	cmp r6, #0
	bne _0806ACF8
	movs r2, #0x1c
	b _0806ACF8
	.align 2, 0
_0806ACF0: .4byte 0x03004500
_0806ACF4:
	adds r0, r7, r5
	ldrb r2, [r0]
_0806ACF8:
	adds r0, r3, #0
	bl sub_0806AB0C
	str r0, [r4]
_0806AD00:
	adds r5, #1
	adds r4, #4
	cmp r5, #9
	ble _0806ACD2
	add sp, #0x18
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0806AD10
sub_0806AD10: @ 0x0806AD10
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0806AD28
	ldr r0, _0806AD24 @ =0x03004500
	ldr r0, [r0]
	adds r4, r0, #0
	adds r4, #0x18
	b _0806AD30
	.align 2, 0
_0806AD24: .4byte 0x03004500
_0806AD28:
	ldr r0, _0806AD50 @ =0x03004500
	ldr r0, [r0]
	adds r4, r0, #0
	adds r4, #0x88
_0806AD30:
	movs r6, #0
	movs r5, #9
_0806AD34:
	ldr r0, [r4]
	cmp r0, #0
	beq _0806AD40
	bl sub_08009A00
	str r6, [r4]
_0806AD40:
	subs r5, #1
	adds r4, #4
	cmp r5, #0
	bge _0806AD34
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0806AD50: .4byte 0x03004500

	thumb_func_start sub_0806AD54
sub_0806AD54: @ 0x0806AD54
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0806AD78
	ldr r0, _0806AD70 @ =0x030044E0
	ldrh r7, [r0]
	ldrh r5, [r0, #4]
	ldr r0, _0806AD74 @ =0x03004500
	ldr r0, [r0]
	adds r0, #0x20
	b _0806AD84
	.align 2, 0
_0806AD70: .4byte 0x030044E0
_0806AD74: .4byte 0x03004500
_0806AD78:
	ldr r0, _0806AE30 @ =0x030044E0
	ldrh r7, [r0, #0xc]
	ldrh r5, [r0, #0x10]
	ldr r0, _0806AE34 @ =0x03004500
	ldr r0, [r0]
	adds r0, #0x90
_0806AD84:
	mov sb, r0
	movs r6, #0x64
	movs r0, #2
	mov r8, r0
_0806AD8C:
	adds r0, r5, #0
	adds r1, r6, #0
	bl __udivsi3
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r0, r5, #0
	adds r1, r6, #0
	bl __umodsi3
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r0, r6, #0
	movs r1, #0xa
	bl __udivsi3
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	mov r1, sb
	adds r1, #4
	mov sb, r1
	subs r1, #4
	ldm r1!, {r0}
	adds r2, r4, #0
	adds r2, #0x1e
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	movs r1, #0
	bl sub_0806AC14
	movs r0, #1
	rsbs r0, r0, #0
	add r8, r0
	mov r1, r8
	cmp r1, #0
	bge _0806AD8C
	ldr r6, _0806AE38 @ =0x00002710
	movs r0, #4
	mov r8, r0
_0806ADDA:
	adds r0, r7, #0
	adds r1, r6, #0
	bl __udivsi3
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r0, r7, #0
	adds r1, r6, #0
	bl __umodsi3
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r0, r6, #0
	movs r1, #0xa
	bl __udivsi3
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	mov r1, sb
	adds r1, #4
	mov sb, r1
	subs r1, #4
	ldm r1!, {r0}
	adds r2, r4, #0
	adds r2, #0x11
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	movs r1, #0
	bl sub_0806AC14
	movs r0, #1
	rsbs r0, r0, #0
	add r8, r0
	mov r1, r8
	cmp r1, #0
	bge _0806ADDA
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806AE30: .4byte 0x030044E0
_0806AE34: .4byte 0x03004500
_0806AE38: .4byte 0x00002710

	thumb_func_start sub_0806AE3C
sub_0806AE3C: @ 0x0806AE3C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x50
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	ldr r1, _0806AE68 @ =0x080905D4
	mov r0, sp
	movs r2, #0x50
	bl memcpy
	cmp r4, #0
	bne _0806AE70
	ldr r0, _0806AE6C @ =0x03004500
	ldr r0, [r0]
	adds r5, r0, #0
	adds r5, #0x18
	b _0806AE78
	.align 2, 0
_0806AE68: .4byte 0x080905D4
_0806AE6C: .4byte 0x03004500
_0806AE70:
	ldr r0, _0806AEC4 @ =0x03004500
	ldr r0, [r0]
	adds r5, r0, #0
	adds r5, #0x88
_0806AE78:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	mov r1, sp
	adds r4, r0, r1
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	mov r8, r0
	lsls r0, r7, #0x10
	asrs r7, r0, #0x10
	movs r6, #9
_0806AE8E:
	ldr r0, [r5]
	cmp r0, #0
	beq _0806AEAC
	ldrh r1, [r4]
	add r1, r8
	subs r1, #0x18
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldrh r2, [r4, #2]
	adds r2, r7, r2
	subs r2, #0xc
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl sub_08009A70
_0806AEAC:
	adds r4, #4
	subs r6, #1
	adds r5, #4
	cmp r6, #0
	bge _0806AE8E
	add sp, #0x50
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806AEC4: .4byte 0x03004500

	thumb_func_start sub_0806AEC8
sub_0806AEC8: @ 0x0806AEC8
	push {r4, r5, r6, lr}
	ldr r6, _0806AF14 @ =0x03004500
	ldr r0, [r6]
	ldr r0, [r0]
	cmp r0, #0
	bne _0806AF0C
	bl sub_08009DDC
	adds r5, r0, #0
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r2, #0
	bl sub_08009E84
	adds r0, r5, #0
	movs r1, #0
	bl sub_08009E9C
	movs r0, #0
	movs r1, #0x40
	movs r2, #0
	bl sub_0806AB0C
	adds r4, r0, #0
	movs r1, #1
	bl sub_08009B84
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08009B9C
	ldr r0, [r6]
	str r4, [r0]
	str r5, [r0, #4]
_0806AF0C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0806AF14: .4byte 0x03004500

	thumb_func_start sub_0806AF18
sub_0806AF18: @ 0x0806AF18
	push {r4, r5, r6, lr}
	ldr r6, _0806AF50 @ =0x03004500
	ldr r0, [r6]
	ldr r4, [r0]
	ldr r5, [r0, #4]
	cmp r4, #0
	beq _0806AF3A
	adds r0, r4, #0
	movs r1, #0
	bl sub_08009B9C
	adds r0, r4, #0
	bl sub_08009A00
	ldr r1, [r6]
	movs r0, #0
	str r0, [r1]
_0806AF3A:
	cmp r5, #0
	beq _0806AF4A
	adds r0, r5, #0
	bl sub_08009E54
	ldr r1, [r6]
	movs r0, #0
	str r0, [r1, #0x14]
_0806AF4A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0806AF50: .4byte 0x03004500

	thumb_func_start sub_0806AF54
sub_0806AF54: @ 0x0806AF54
	push {lr}
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	ldr r0, _0806AF74 @ =0x03004500
	ldr r0, [r0]
	ldr r0, [r0]
	cmp r0, #0
	beq _0806AF70
	subs r2, #0x6c
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	movs r1, #0
	bl sub_0806AC14
_0806AF70:
	pop {r0}
	bx r0
	.align 2, 0
_0806AF74: .4byte 0x03004500

	thumb_func_start sub_0806AF78
sub_0806AF78: @ 0x0806AF78
	push {lr}
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r2, r1, #0x10
	ldr r0, _0806AF9C @ =0x03004500
	ldr r0, [r0]
	ldr r0, [r0]
	cmp r0, #0
	beq _0806AF98
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl sub_08009A70
_0806AF98:
	pop {r0}
	bx r0
	.align 2, 0
_0806AF9C: .4byte 0x03004500

	thumb_func_start sub_0806AFA0
sub_0806AFA0: @ 0x0806AFA0
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r5, r0, #0
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	ldr r1, _0806AFD4 @ =0x08090624
	mov r0, sp
	movs r2, #4
	bl memcpy
	add r4, sp, #4
	adds r0, r4, #0
	movs r1, #0
	movs r2, #4
	bl memset
	movs r0, #0xd
	strb r0, [r4]
	adds r6, r4, #0
	cmp r5, #0
	bne _0806AFDC
	ldr r0, _0806AFD8 @ =0x03004500
	ldr r0, [r0]
	adds r5, r0, #0
	adds r5, #0x40
	b _0806AFE4
	.align 2, 0
_0806AFD4: .4byte 0x08090624
_0806AFD8: .4byte 0x03004500
_0806AFDC:
	ldr r0, _0806B018 @ =0x03004500
	ldr r0, [r0]
	adds r5, r0, #0
	adds r5, #0xb0
_0806AFE4:
	movs r4, #0
_0806AFE6:
	ldr r0, [r5]
	cmp r0, #0
	bne _0806B006
	mov r1, sp
	adds r0, r1, r4
	ldrb r3, [r0]
	movs r1, #0x3f
	cmp r4, #0
	bne _0806AFFA
	movs r1, #0x40
_0806AFFA:
	adds r0, r6, r4
	ldrb r2, [r0]
	adds r0, r3, #0
	bl sub_0806AB0C
	str r0, [r5]
_0806B006:
	adds r4, #1
	adds r5, #4
	cmp r4, #3
	ble _0806AFE6
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0806B018: .4byte 0x03004500

	thumb_func_start sub_0806B01C
sub_0806B01C: @ 0x0806B01C
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0806B034
	ldr r0, _0806B030 @ =0x03004500
	ldr r0, [r0]
	adds r4, r0, #0
	adds r4, #0x40
	b _0806B03C
	.align 2, 0
_0806B030: .4byte 0x03004500
_0806B034:
	ldr r0, _0806B05C @ =0x03004500
	ldr r0, [r0]
	adds r4, r0, #0
	adds r4, #0xb0
_0806B03C:
	movs r6, #0
	movs r5, #3
_0806B040:
	ldr r0, [r4]
	cmp r0, #0
	beq _0806B04C
	bl sub_08009A00
	str r6, [r4]
_0806B04C:
	subs r5, #1
	adds r4, #4
	cmp r5, #0
	bge _0806B040
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0806B05C: .4byte 0x03004500

	thumb_func_start sub_0806B060
sub_0806B060: @ 0x0806B060
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r0, #0
	bne _0806B07C
	ldr r0, _0806B078 @ =0x03004500
	ldr r0, [r0]
	adds r5, r0, #0
	adds r5, #0x40
	b _0806B084
	.align 2, 0
_0806B078: .4byte 0x03004500
_0806B07C:
	ldr r0, _0806B0B4 @ =0x03004500
	ldr r0, [r0]
	adds r5, r0, #0
	adds r5, #0xb0
_0806B084:
	lsls r0, r1, #0x18
	asrs r6, r0, #0x18
	movs r0, #1
	rsbs r0, r0, #0
	cmp r6, r0
	bne _0806B0B8
	ldm r5!, {r0}
	movs r1, #0
	movs r2, #0xe
	bl sub_0806AC14
	ldm r5!, {r0}
	movs r1, #0
	bl sub_08009A34
	ldm r5!, {r0}
	movs r1, #0
	bl sub_08009A34
	ldr r0, [r5]
	movs r1, #0
	bl sub_08009A34
	b _0806B10A
	.align 2, 0
_0806B0B4: .4byte 0x03004500
_0806B0B8:
	ldm r5!, {r0}
	movs r1, #0
	movs r2, #0xd
	bl sub_0806AC14
	ldm r5!, {r0}
	movs r1, #1
	bl sub_08009A34
	ldr r4, [r5]
	adds r0, r6, #0
	movs r1, #0xa
	bl __divsi3
	adds r2, r0, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	adds r0, r4, #0
	movs r1, #1
	bl sub_0806AC14
	ldm r5!, {r0}
	movs r1, #1
	bl sub_08009A34
	ldr r4, [r5]
	adds r0, r6, #0
	movs r1, #0xa
	bl __modsi3
	adds r2, r0, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	adds r0, r4, #0
	movs r1, #1
	bl sub_0806AC14
	ldr r0, [r5]
	movs r1, #1
	bl sub_08009A34
_0806B10A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_0806B110
sub_0806B110: @ 0x0806B110
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x10
	lsls r0, r0, #0x18
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r4, r2, #0x10
	mov r2, sp
	ldr r1, _0806B13C @ =0x08090628
	ldm r1!, {r5, r6, r7}
	stm r2!, {r5, r6, r7}
	ldr r1, [r1]
	str r1, [r2]
	cmp r0, #0
	bne _0806B144
	ldr r0, _0806B140 @ =0x03004500
	ldr r0, [r0]
	adds r5, r0, #0
	adds r5, #0x40
	b _0806B14C
	.align 2, 0
_0806B13C: .4byte 0x08090628
_0806B140: .4byte 0x03004500
_0806B144:
	ldr r0, _0806B190 @ =0x03004500
	ldr r0, [r0]
	adds r5, r0, #0
	adds r5, #0xb0
_0806B14C:
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	mov r8, r0
	lsls r0, r4, #0x10
	asrs r7, r0, #0x10
	mov r4, sp
	movs r6, #3
_0806B15A:
	ldr r0, [r5]
	cmp r0, #0
	beq _0806B178
	ldrh r1, [r4]
	add r1, r8
	subs r1, #0x1c
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldrh r2, [r4, #2]
	adds r2, r7, r2
	subs r2, #0xc
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl sub_08009A70
_0806B178:
	adds r4, #4
	subs r6, #1
	adds r5, #4
	cmp r6, #0
	bge _0806B15A
	add sp, #0x10
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806B190: .4byte 0x03004500

	thumb_func_start sub_0806B194
sub_0806B194: @ 0x0806B194
	push {r4, lr}
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0806B1AC
	ldr r0, _0806B1A8 @ =0x03004500
	ldr r0, [r0]
	adds r4, r0, #0
	adds r4, #0x50
	b _0806B1B4
	.align 2, 0
_0806B1A8: .4byte 0x03004500
_0806B1AC:
	ldr r0, _0806B1CC @ =0x03004500
	ldr r0, [r0]
	adds r4, r0, #0
	adds r4, #0xc0
_0806B1B4:
	ldr r0, [r4]
	cmp r0, #0
	bne _0806B1C6
	movs r0, #0
	movs r1, #0x40
	movs r2, #6
	bl sub_0806AB0C
	str r0, [r4]
_0806B1C6:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806B1CC: .4byte 0x03004500

	thumb_func_start sub_0806B1D0
sub_0806B1D0: @ 0x0806B1D0
	push {r4, lr}
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0806B1E8
	ldr r0, _0806B1E4 @ =0x03004500
	ldr r0, [r0]
	adds r4, r0, #0
	adds r4, #0x50
	b _0806B1F0
	.align 2, 0
_0806B1E4: .4byte 0x03004500
_0806B1E8:
	ldr r0, _0806B204 @ =0x03004500
	ldr r0, [r0]
	adds r4, r0, #0
	adds r4, #0xc0
_0806B1F0:
	ldr r0, [r4]
	cmp r0, #0
	beq _0806B1FE
	bl sub_08009A00
	movs r0, #0
	str r0, [r4]
_0806B1FE:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806B204: .4byte 0x03004500

	thumb_func_start sub_0806B208
sub_0806B208: @ 0x0806B208
	push {lr}
	lsls r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r0, #0
	bne _0806B220
	ldr r0, _0806B21C @ =0x03004500
	ldr r0, [r0]
	ldr r3, [r0, #0x50]
	b _0806B228
	.align 2, 0
_0806B21C: .4byte 0x03004500
_0806B220:
	ldr r0, _0806B240 @ =0x03004500
	ldr r0, [r0]
	adds r0, #0xc0
	ldr r3, [r0]
_0806B228:
	cmp r3, #0
	beq _0806B24E
	lsls r0, r1, #0x18
	asrs r1, r0, #0x18
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0806B244
	adds r0, r1, #6
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	b _0806B246
	.align 2, 0
_0806B240: .4byte 0x03004500
_0806B244:
	movs r2, #0xc
_0806B246:
	adds r0, r3, #0
	movs r1, #0
	bl sub_0806AC14
_0806B24E:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0806B254
sub_0806B254: @ 0x0806B254
	push {lr}
	lsls r0, r0, #0x18
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	cmp r0, #0
	bne _0806B270
	ldr r0, _0806B26C @ =0x03004500
	ldr r0, [r0]
	ldr r0, [r0, #0x50]
	b _0806B278
	.align 2, 0
_0806B26C: .4byte 0x03004500
_0806B270:
	ldr r0, _0806B294 @ =0x03004500
	ldr r0, [r0]
	adds r0, #0xc0
	ldr r0, [r0]
_0806B278:
	cmp r0, #0
	beq _0806B290
	lsls r1, r1, #0x10
	ldr r3, _0806B298 @ =0xFFF00000
	adds r1, r1, r3
	asrs r1, r1, #0x10
	lsls r2, r2, #0x10
	ldr r3, _0806B29C @ =0xFFF80000
	adds r2, r2, r3
	asrs r2, r2, #0x10
	bl sub_08009A70
_0806B290:
	pop {r0}
	bx r0
	.align 2, 0
_0806B294: .4byte 0x03004500
_0806B298: .4byte 0xFFF00000
_0806B29C: .4byte 0xFFF80000

	thumb_func_start sub_0806B2A0
sub_0806B2A0: @ 0x0806B2A0
	push {r4, r5, r6, lr}
	sub sp, #4
	ldr r1, _0806B2E4 @ =0x08090638
	mov r0, sp
	movs r2, #2
	bl memcpy
	movs r5, #0
	ldr r6, _0806B2E8 @ =0x03004500
_0806B2B2:
	ldr r0, [r6]
	lsls r4, r5, #2
	adds r0, #8
	adds r0, r0, r4
	ldr r0, [r0]
	cmp r0, #0
	bne _0806B2D6
	mov r1, sp
	adds r0, r1, r5
	ldrb r2, [r0]
	movs r0, #0
	movs r1, #0x20
	bl sub_0806AB0C
	ldr r1, [r6]
	adds r1, #8
	adds r1, r1, r4
	str r0, [r1]
_0806B2D6:
	adds r5, #1
	cmp r5, #1
	ble _0806B2B2
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0806B2E4: .4byte 0x08090638
_0806B2E8: .4byte 0x03004500

	thumb_func_start sub_0806B2EC
sub_0806B2EC: @ 0x0806B2EC
	push {r4, r5, r6, lr}
	movs r5, #0
	ldr r6, _0806B31C @ =0x03004500
_0806B2F2:
	ldr r0, [r6]
	lsls r4, r5, #2
	adds r0, #8
	adds r0, r0, r4
	ldr r0, [r0]
	cmp r0, #0
	beq _0806B30E
	bl sub_08009A00
	ldr r0, [r6]
	adds r0, #8
	adds r0, r0, r4
	movs r1, #0
	str r1, [r0]
_0806B30E:
	adds r5, #1
	cmp r5, #1
	ble _0806B2F2
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0806B31C: .4byte 0x03004500

	thumb_func_start sub_0806B320
sub_0806B320: @ 0x0806B320
	push {r4, r5, r6, r7, lr}
	lsls r2, r2, #0x18
	lsrs r5, r2, #0x18
	lsls r0, r0, #0x10
	ldr r2, _0806B358 @ =0xFFFC0000
	adds r0, r0, r2
	lsrs r7, r0, #0x10
	lsls r1, r1, #0x10
	adds r1, r1, r2
	lsrs r6, r1, #0x10
	movs r4, #0
_0806B336:
	ldr r0, _0806B35C @ =0x03004500
	ldr r0, [r0]
	lsls r1, r4, #2
	adds r0, #8
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _0806B36E
	adds r3, r0, #0
	lsls r0, r7, #0x10
	asrs r1, r0, #0x10
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	cmp r4, #0
	bne _0806B360
	subs r0, r0, r5
	b _0806B364
	.align 2, 0
_0806B358: .4byte 0xFFFC0000
_0806B35C: .4byte 0x03004500
_0806B360:
	adds r0, #1
	adds r0, r0, r5
_0806B364:
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	adds r0, r3, #0
	bl sub_08009A70
_0806B36E:
	adds r4, #1
	cmp r4, #1
	ble _0806B336
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0806B37C
sub_0806B37C: @ 0x0806B37C
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r2, r1, #0x18
	movs r1, #1
	ands r0, r1
	ldr r1, _0806B3A4 @ =0x03004500
	ldr r1, [r1]
	lsls r0, r0, #2
	adds r1, #8
	adds r1, r1, r0
	ldr r0, [r1]
	cmp r0, #0
	beq _0806B3A0
	adds r1, r2, #0
	bl sub_08009A34
_0806B3A0:
	pop {r0}
	bx r0
	.align 2, 0
_0806B3A4: .4byte 0x03004500

	thumb_func_start sub_0806B3A8
sub_0806B3A8: @ 0x0806B3A8
	push {r4, r5, r6, lr}
	ldr r6, _0806B3FC @ =0x03004500
	ldr r0, [r6]
	ldr r0, [r0, #0x10]
	cmp r0, #0
	bne _0806B3F4
	bl sub_08009DDC
	adds r5, r0, #0
	movs r1, #0
	movs r2, #0
	bl sub_08009E84
	adds r0, r5, #0
	movs r1, #0
	bl sub_08009E9C
	movs r0, #0
	movs r1, #0x10
	movs r2, #0x1d
	bl sub_0806AB0C
	adds r4, r0, #0
	movs r1, #0x78
	movs r2, #0x50
	bl sub_08009A70
	adds r0, r4, #0
	movs r1, #1
	bl sub_08009B84
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08009B9C
	ldr r0, [r6]
	str r4, [r0, #0x10]
	str r5, [r0, #0x14]
_0806B3F4:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0806B3FC: .4byte 0x03004500

	thumb_func_start sub_0806B400
sub_0806B400: @ 0x0806B400
	push {r4, r5, r6, lr}
	ldr r6, _0806B438 @ =0x03004500
	ldr r0, [r6]
	ldr r4, [r0, #0x10]
	ldr r5, [r0, #0x14]
	cmp r4, #0
	beq _0806B422
	adds r0, r4, #0
	movs r1, #0
	bl sub_08009B9C
	adds r0, r4, #0
	bl sub_08009A00
	ldr r1, [r6]
	movs r0, #0
	str r0, [r1, #0x10]
_0806B422:
	cmp r5, #0
	beq _0806B432
	adds r0, r5, #0
	bl sub_08009E54
	ldr r1, [r6]
	movs r0, #0
	str r0, [r1, #0x14]
_0806B432:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0806B438: .4byte 0x03004500

	thumb_func_start sub_0806B43C
sub_0806B43C: @ 0x0806B43C
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, _0806B46C @ =0x03004500
	ldr r0, [r0]
	ldr r4, [r0, #0x14]
	cmp r4, #0
	beq _0806B464
	lsls r2, r1, #0x10
	asrs r2, r2, #0x10
	adds r0, r4, #0
	adds r1, r2, #0
	bl sub_08009E84
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08009E9C
_0806B464:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806B46C: .4byte 0x03004500

	thumb_func_start sub_0806B470
sub_0806B470: @ 0x0806B470
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	movs r6, #0
	movs r4, #0
	movs r5, #0
	movs r0, #0xbf
	lsls r0, r0, #1
	bl m4aSongNumStart
	movs r0, #0x80
	lsls r0, r0, #2
	mov sb, r0
	ldr r1, _0806B4A4 @ =0x0807F240
	mov r8, r1
	movs r7, #1
	rsbs r7, r7, #0
_0806B494:
	lsls r0, r6, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _0806B4A8
	cmp r0, #1
	beq _0806B4BA
	b _0806B4E4
	.align 2, 0
_0806B4A4: .4byte 0x0807F240
_0806B4A8:
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	cmp r0, sb
	beq _0806B4B8
	adds r0, #0x20
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	b _0806B4E4
_0806B4B8:
	movs r6, #1
_0806B4BA:
	movs r0, #0xff
	ands r0, r5
	adds r0, #0x40
	lsls r0, r0, #1
	add r0, r8
	movs r1, #0
	ldrsh r0, [r0, r1]
	asrs r0, r0, #3
	movs r1, #0xf0
	lsls r1, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r0, r5, #0
	adds r0, #0x10
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r0, _0806B500 @ =0x000001FF
	cmp r5, r0
	bls _0806B4E4
	movs r6, #0xff
_0806B4E4:
	lsls r0, r6, #0x18
	asrs r0, r0, #0x18
	cmp r0, r7
	beq _0806B504
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	movs r0, #0
	bl sub_0806B43C
	movs r0, #1
	bl ProcSleep_08002B98
	b _0806B494
	.align 2, 0
_0806B500: .4byte 0x000001FF
_0806B504:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0806B510
sub_0806B510: @ 0x0806B510
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x2c
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r1, _0806B554 @ =0x0809063A
	mov r0, sp
	movs r2, #0xa
	bl memcpy
	add r6, sp, #0xc
	ldr r1, _0806B558 @ =0x08090644
	adds r0, r6, #0
	movs r2, #0xa
	bl memcpy
	add r5, sp, #0x18
	ldr r1, _0806B55C @ =0x0809064E
	adds r0, r5, #0
	movs r2, #0x14
	bl memcpy
	mov r8, r6
	adds r1, r5, #0
	cmp r4, #0
	bne _0806B564
	ldr r0, _0806B560 @ =0x03004500
	ldr r0, [r0]
	adds r4, r0, #0
	adds r4, #0x5c
	movs r2, #0x58
	b _0806B56E
	.align 2, 0
_0806B554: .4byte 0x0809063A
_0806B558: .4byte 0x08090644
_0806B55C: .4byte 0x0809064E
_0806B560: .4byte 0x03004500
_0806B564:
	ldr r0, _0806B5B8 @ =0x03004500
	ldr r0, [r0]
	adds r4, r0, #0
	adds r4, #0xcc
	movs r2, #0x38
_0806B56E:
	movs r5, #0
	adds r6, r1, #0
	lsls r7, r2, #0x10
_0806B574:
	ldr r0, [r4]
	cmp r0, #0
	bne _0806B5A2
	mov r1, sp
	adds r0, r1, r5
	ldrb r0, [r0]
	mov r2, r8
	adds r1, r2, r5
	ldrb r2, [r1]
	movs r1, #0x20
	bl sub_0806AB0C
	str r0, [r4]
	movs r1, #1
	movs r2, #0x20
	bl sub_08009A0C
	ldr r0, [r4]
	movs r2, #0
	ldrsh r1, [r6, r2]
	asrs r2, r7, #0x10
	bl sub_08009A70
_0806B5A2:
	adds r6, #2
	adds r5, #1
	adds r4, #4
	cmp r5, #9
	ble _0806B574
	add sp, #0x2c
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806B5B8: .4byte 0x03004500

	thumb_func_start sub_0806B5BC
sub_0806B5BC: @ 0x0806B5BC
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0806B5D4
	ldr r0, _0806B5D0 @ =0x03004500
	ldr r0, [r0]
	adds r4, r0, #0
	adds r4, #0x5c
	b _0806B5DC
	.align 2, 0
_0806B5D0: .4byte 0x03004500
_0806B5D4:
	ldr r0, _0806B5FC @ =0x03004500
	ldr r0, [r0]
	adds r4, r0, #0
	adds r4, #0xcc
_0806B5DC:
	movs r6, #0
	movs r5, #9
_0806B5E0:
	ldr r0, [r4]
	cmp r0, #0
	beq _0806B5EC
	bl sub_08009A00
	str r6, [r4]
_0806B5EC:
	subs r5, #1
	adds r4, #4
	cmp r5, #0
	bge _0806B5E0
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0806B5FC: .4byte 0x03004500

	thumb_func_start sub_0806B600
sub_0806B600: @ 0x0806B600
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	cmp r0, #0
	bne _0806B61C
	ldr r0, _0806B618 @ =0x03004500
	ldr r0, [r0]
	adds r4, r0, #0
	adds r4, #0x5c
	b _0806B624
	.align 2, 0
_0806B618: .4byte 0x03004500
_0806B61C:
	ldr r0, _0806B660 @ =0x03004500
	ldr r0, [r0]
	adds r4, r0, #0
	adds r4, #0xcc
_0806B624:
	ldr r5, [r4]
	cmp r5, #0
	beq _0806B65A
	adds r4, #4
	adds r0, r6, #0
	movs r1, #0xa
	bl __udivsi3
	adds r2, r0, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	adds r0, r5, #0
	movs r1, #1
	bl sub_0806AC14
	ldr r4, [r4]
	adds r0, r6, #0
	movs r1, #0xa
	bl __umodsi3
	adds r2, r0, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	adds r0, r4, #0
	movs r1, #1
	bl sub_0806AC14
_0806B65A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0806B660: .4byte 0x03004500

	thumb_func_start sub_0806B664
sub_0806B664: @ 0x0806B664
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	cmp r0, #0
	bne _0806B680
	ldr r0, _0806B67C @ =0x03004500
	ldr r0, [r0]
	adds r4, r0, #0
	adds r4, #0x68
	b _0806B688
	.align 2, 0
_0806B67C: .4byte 0x03004500
_0806B680:
	ldr r0, _0806B6C4 @ =0x03004500
	ldr r0, [r0]
	adds r4, r0, #0
	adds r4, #0xd8
_0806B688:
	ldr r5, [r4]
	cmp r5, #0
	beq _0806B6BE
	adds r4, #4
	adds r0, r6, #0
	movs r1, #0xa
	bl __udivsi3
	adds r2, r0, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	adds r0, r5, #0
	movs r1, #1
	bl sub_0806AC14
	ldr r4, [r4]
	adds r0, r6, #0
	movs r1, #0xa
	bl __umodsi3
	adds r2, r0, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	adds r0, r4, #0
	movs r1, #1
	bl sub_0806AC14
_0806B6BE:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0806B6C4: .4byte 0x03004500

	thumb_func_start sub_0806B6C8
sub_0806B6C8: @ 0x0806B6C8
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x18
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	cmp r0, #0
	bne _0806B6E4
	ldr r0, _0806B6E0 @ =0x03004500
	ldr r0, [r0]
	adds r5, r0, #0
	adds r5, #0x78
	b _0806B6EC
	.align 2, 0
_0806B6E0: .4byte 0x03004500
_0806B6E4:
	ldr r0, _0806B74C @ =0x03004500
	ldr r0, [r0]
	adds r5, r0, #0
	adds r5, #0xe8
_0806B6EC:
	ldr r4, [r5]
	cmp r4, #0
	beq _0806B746
	adds r5, #4
	adds r0, r6, #0
	movs r1, #0x64
	bl __udivsi3
	adds r2, r0, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	adds r0, r4, #0
	movs r1, #1
	bl sub_0806AC14
	adds r0, r6, #0
	movs r1, #0x64
	bl __umodsi3
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldm r5!, {r4}
	adds r0, r6, #0
	movs r1, #0xa
	bl __udivsi3
	adds r2, r0, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	adds r0, r4, #0
	movs r1, #1
	bl sub_0806AC14
	ldr r4, [r5]
	adds r0, r6, #0
	movs r1, #0xa
	bl __umodsi3
	adds r2, r0, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	adds r0, r4, #0
	movs r1, #1
	bl sub_0806AC14
_0806B746:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0806B74C: .4byte 0x03004500

	thumb_func_start sub_0806B750
sub_0806B750: @ 0x0806B750
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r5, r2, #0x18
	cmp r0, #0
	bne _0806B76C
	ldr r0, _0806B768 @ =0x03004500
	ldr r0, [r0]
	ldr r4, [r0, #0x70]
	b _0806B774
	.align 2, 0
_0806B768: .4byte 0x03004500
_0806B76C:
	ldr r0, _0806B798 @ =0x03004500
	ldr r0, [r0]
	adds r0, #0xe0
	ldr r4, [r0]
_0806B774:
	cmp r4, #0
	beq _0806B792
	adds r2, r1, #6
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	adds r0, r4, #0
	movs r1, #0
	bl sub_0806AC14
	rsbs r1, r5, #0
	orrs r1, r5
	lsrs r1, r1, #0x1f
	adds r0, r4, #0
	bl sub_08009A34
_0806B792:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806B798: .4byte 0x03004500

	thumb_func_start sub_0806B79C
sub_0806B79C: @ 0x0806B79C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _0806B7E0 @ =0x03004500
	ldr r0, [r4]
	adds r0, #0xfe
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl sub_08004514
	movs r0, #2
	bl sub_080044DC
	movs r0, #0
	bl sub_080044F0
	ldr r0, [r4]
	adds r0, #0xfe
	movs r1, #0
	ldrsh r4, [r0, r1]
	adds r0, r5, #0
	bl sub_08006828
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_08004C50
	bl sub_08004504
	movs r0, #1
	bl ProcSleep_08002B98
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806B7E0: .4byte 0x03004500

	thumb_func_start sub_0806B7E4
sub_0806B7E4: @ 0x0806B7E4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	mov r8, r0
	adds r4, r1, #0
	lsls r4, r4, #0x18
	lsrs r6, r4, #0x18
	lsls r2, r2, #0x18
	lsrs r7, r2, #0x18
	mov r5, sp
	mov r1, sp
	bl sub_08005C38
	mov r0, sp
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsrs r0, r1, #0x1f
	adds r1, r1, r0
	asrs r1, r1, #1
	movs r0, #0xf
	subs r0, r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _0806B8E4 @ =0xFFFFFF00
	ldr r1, [sp, #4]
	ands r1, r2
	orrs r1, r0
	lsrs r4, r4, #0x1b
	subs r4, #1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x10
	ldr r0, _0806B8E8 @ =0xFFFF00FF
	ands r1, r0
	orrs r1, r4
	str r1, [sp, #4]
	mov r0, sp
	ldrb r0, [r0]
	lsls r0, r0, #0x10
	ldr r3, _0806B8EC @ =0xFF00FFFF
	ands r3, r1
	orrs r3, r0
	ldr r1, _0806B8F0 @ =0x00FFFFFF
	ands r3, r1
	movs r0, #0x80
	lsls r0, r0, #0x12
	orrs r3, r0
	str r3, [sp, #4]
	ldrb r0, [r5, #1]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	ble _0806B870
	adds r0, r6, #0
	adds r0, #8
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	adds r0, r7, #0
	adds r0, #0x10
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	asrs r0, r3, #0x18
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x18
	lsls r0, r0, #0x18
	ands r3, r1
	orrs r3, r0
	str r3, [sp, #4]
_0806B870:
	add r0, sp, #4
	movs r1, #0
	bl sub_08004300
	ldr r1, _0806B8F4 @ =0x03004500
	ldr r4, [r1]
	adds r3, r4, #0
	adds r3, #0xfe
	movs r2, #0
	strh r0, [r3]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r4, r3
	strb r6, [r0]
	ldr r0, [r1]
	ldr r4, _0806B8F8 @ =0x00000101
	adds r0, r0, r4
	strb r7, [r0]
	ldr r3, _0806B8FC @ =0x030024E0
	ldrh r1, [r3]
	movs r4, #0x88
	lsls r4, r4, #6
	adds r0, r4, #0
	orrs r0, r1
	strh r0, [r3]
	adds r1, r3, #0
	adds r1, #0x44
	movs r0, #0x1b
	strb r0, [r1]
	adds r1, #2
	movs r0, #0x19
	strb r0, [r1]
	movs r0, #0xf0
	strh r0, [r3, #0x3c]
	adds r0, r3, #0
	adds r0, #0x40
	strh r2, [r0]
	movs r4, #0
	adds r5, r0, #0
_0806B8BE:
	lsrs r0, r4, #1
	subs r1, r6, r0
	lsls r1, r1, #0x18
	adds r0, r6, r0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsrs r1, r1, #0x10
	orrs r1, r0
	strh r1, [r5]
	adds r1, r4, #0
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r1, r7
	bhs _0806B900
	movs r0, #1
	bl ProcSleep_08002B98
	b _0806B8BE
	.align 2, 0
_0806B8E4: .4byte 0xFFFFFF00
_0806B8E8: .4byte 0xFFFF00FF
_0806B8EC: .4byte 0xFF00FFFF
_0806B8F0: .4byte 0x00FFFFFF
_0806B8F4: .4byte 0x03004500
_0806B8F8: .4byte 0x00000101
_0806B8FC: .4byte 0x030024E0
_0806B900:
	mov r0, r8
	bl sub_0806B79C
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0806B914
sub_0806B914: @ 0x0806B914
	push {r4, r5, r6, r7, lr}
	ldr r4, _0806B968 @ =0x03004500
	ldr r0, [r4]
	adds r0, #0xfe
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl sub_080043F0
	ldr r1, [r4]
	adds r2, r1, #0
	adds r2, #0xfe
	ldr r0, _0806B96C @ =0x0000FFFF
	strh r0, [r2]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r1, r2
	ldrb r6, [r0]
	adds r2, #1
	adds r0, r1, r2
	ldrb r4, [r0]
	ldr r5, _0806B970 @ =0x030024E0
	movs r7, #0
_0806B940:
	lsrs r0, r4, #1
	subs r1, r6, r0
	lsls r1, r1, #0x18
	adds r0, r6, r0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsrs r1, r1, #0x10
	orrs r1, r0
	adds r0, r5, #0
	adds r0, #0x40
	strh r1, [r0]
	subs r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0xff
	beq _0806B974
	movs r0, #1
	bl ProcSleep_08002B98
	b _0806B940
	.align 2, 0
_0806B968: .4byte 0x03004500
_0806B96C: .4byte 0x0000FFFF
_0806B970: .4byte 0x030024E0
_0806B974:
	ldrh r1, [r5]
	ldr r0, _0806B98C @ =0x0000DDFF
	ands r0, r1
	strh r0, [r5]
	adds r0, r5, #0
	adds r0, #0x44
	strb r7, [r0]
	adds r0, #2
	strb r7, [r0]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806B98C: .4byte 0x0000DDFF

	thumb_func_start sub_0806B990
sub_0806B990: @ 0x0806B990
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x14
	ldr r0, _0806BA54 @ =0x030024E0
	mov ip, r0
	ldrh r1, [r0]
	movs r2, #0xc4
	lsls r2, r2, #7
	adds r0, r2, #0
	movs r4, #0
	movs r3, #0
	orrs r0, r1
	mov r1, ip
	strh r0, [r1]
	mov r0, ip
	adds r0, #0x44
	movs r1, #0x1b
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	mov r1, ip
	adds r1, #0x46
	movs r0, #0x19
	strb r0, [r1]
	movs r0, #0xf0
	mov r2, ip
	strh r0, [r2, #0x3c]
	strh r0, [r2, #0x3e]
	mov r0, ip
	adds r0, #0x40
	strh r3, [r0]
	adds r2, #0x42
	strh r3, [r2]
	add r1, sp, #8
	movs r0, #0x40
	strb r0, [r1]
	movs r0, #0x60
	strb r0, [r1, #1]
	add r0, sp, #0xc
	strb r4, [r0]
	strb r4, [r0, #1]
	adds r3, r0, #0
	mov r5, sp
	adds r7, r1, #0
	adds r6, r3, #0
	add r4, sp, #4
	mov r8, ip
	mov sb, r2
_0806B9F4:
	ldrb r1, [r6]
	lsrs r1, r1, #1
	ldrb r0, [r7]
	subs r0, r0, r1
	strb r0, [r5]
	ldrb r0, [r6]
	lsrs r0, r0, #1
	ldrb r1, [r7]
	adds r0, r0, r1
	strb r0, [r4]
	ldrb r1, [r6, #1]
	lsrs r1, r1, #1
	ldrb r0, [r7, #1]
	subs r0, r0, r1
	strb r0, [r5, #1]
	ldrb r1, [r6, #1]
	lsrs r1, r1, #1
	ldrb r0, [r7, #1]
	adds r0, r0, r1
	strb r0, [r4, #1]
	ldrb r0, [r5]
	lsls r0, r0, #8
	ldrb r1, [r4]
	orrs r1, r0
	mov r0, r8
	adds r0, #0x40
	strh r1, [r0]
	ldrb r1, [r5, #1]
	lsls r1, r1, #8
	ldrb r0, [r4, #1]
	orrs r0, r1
	mov r2, sb
	strh r0, [r2]
	ldrb r0, [r6]
	cmp r0, #0x17
	bhi _0806BA58
	adds r0, #1
	strb r0, [r3]
	ldrb r0, [r3, #1]
	adds r0, #1
	strb r0, [r3, #1]
	movs r0, #1
	str r3, [sp, #0x10]
	bl ProcSleep_08002B98
	ldr r3, [sp, #0x10]
	b _0806B9F4
	.align 2, 0
_0806BA54: .4byte 0x030024E0
_0806BA58:
	add sp, #0x14
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0806BA68
sub_0806BA68: @ 0x0806BA68
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x18
	add r2, sp, #8
	movs r0, #0x40
	strb r0, [r2]
	movs r0, #0x60
	strb r0, [r2, #1]
	add r0, sp, #0xc
	movs r1, #0x18
	strb r1, [r0]
	strb r1, [r0, #1]
	adds r3, r0, #0
	mov r6, sp
	adds r7, r3, #0
	add r4, sp, #4
	ldr r5, _0806BAF4 @ =0x030024E0
	movs r0, #0
	mov r8, r0
_0806BA90:
	ldrb r1, [r7]
	lsrs r1, r1, #1
	ldrb r0, [r2]
	subs r0, r0, r1
	strb r0, [r6]
	ldrb r0, [r7]
	lsrs r0, r0, #1
	ldrb r1, [r2]
	adds r0, r0, r1
	strb r0, [r4]
	ldrb r1, [r7, #1]
	lsrs r1, r1, #1
	ldrb r0, [r2, #1]
	subs r0, r0, r1
	strb r0, [r6, #1]
	ldrb r1, [r7, #1]
	lsrs r1, r1, #1
	ldrb r0, [r2, #1]
	adds r0, r0, r1
	strb r0, [r4, #1]
	ldrb r0, [r6]
	lsls r0, r0, #8
	ldrb r1, [r4]
	orrs r1, r0
	adds r0, r5, #0
	adds r0, #0x40
	strh r1, [r0]
	ldrb r0, [r6, #1]
	lsls r0, r0, #8
	ldrb r1, [r4, #1]
	orrs r1, r0
	adds r0, r5, #0
	adds r0, #0x42
	strh r1, [r0]
	ldrb r0, [r7]
	cmp r0, #0
	beq _0806BAF8
	subs r0, #1
	strb r0, [r3]
	ldrb r0, [r3, #1]
	subs r0, #1
	strb r0, [r3, #1]
	movs r0, #1
	str r2, [sp, #0x10]
	str r3, [sp, #0x14]
	bl ProcSleep_08002B98
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	b _0806BA90
	.align 2, 0
_0806BAF4: .4byte 0x030024E0
_0806BAF8:
	ldrh r1, [r5]
	ldr r0, _0806BB1C @ =0x00009DFF
	ands r0, r1
	strh r0, [r5]
	adds r0, r5, #0
	adds r0, #0x44
	mov r1, r8
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	add sp, #0x18
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806BB1C: .4byte 0x00009DFF

	thumb_func_start sub_0806BB20
sub_0806BB20: @ 0x0806BB20
	push {r4, r5, r6, lr}
	ldr r1, _0806BBBC @ =0x030044E0
	ldr r0, _0806BBC0 @ =0x02031050
	ldr r2, _0806BBC4 @ =0x00000888
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [r1]
	movs r0, #0
	movs r3, #0
	movs r2, #0x64
	strh r2, [r1, #4]
	strb r0, [r1, #7]
	strb r0, [r1, #8]
	str r3, [r1, #0xc]
	strh r2, [r1, #0x10]
	strb r0, [r1, #0x13]
	strb r0, [r1, #0x14]
	ldrh r0, [r1, #0x1a]
	adds r2, r0, #1
	strh r2, [r1, #0x1a]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r2, r1, #0
	adds r2, #0xc
	movs r3, #4
	bl sub_08003998
	movs r0, #0
	bl sub_0806AD54
	movs r0, #1
	bl sub_0806AD54
	ldr r0, _0806BBC8 @ =0xFFFF0000
	ands r6, r0
	ldr r0, _0806BBCC @ =0x0000FFC0
	orrs r6, r0
	adds r0, #0x3f
	ands r6, r0
	movs r0, #0x80
	lsls r0, r0, #0xe
	orrs r6, r0
_0806BB74:
	movs r1, #0xf0
	subs r1, r1, r6
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	asrs r5, r6, #0x10
	adds r2, r5, #0
	adds r2, #0x50
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r0, #0
	bl sub_0806AE3C
	lsls r4, r6, #0x10
	asrs r4, r4, #0x10
	movs r2, #0x50
	subs r2, r2, r5
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r0, #1
	adds r1, r4, #0
	bl sub_0806AE3C
	cmp r4, #0x70
	beq _0806BBD0
	adds r1, r6, #0
	adds r1, #8
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, _0806BBC8 @ =0xFFFF0000
	ands r6, r0
	orrs r6, r1
	movs r0, #1
	bl ProcSleep_08002B98
	b _0806BB74
	.align 2, 0
_0806BBBC: .4byte 0x030044E0
_0806BBC0: .4byte 0x02031050
_0806BBC4: .4byte 0x00000888
_0806BBC8: .4byte 0xFFFF0000
_0806BBCC: .4byte 0x0000FFC0
_0806BBD0:
	movs r0, #0xa
	bl ProcSleep_08002B98
	ldr r1, _0806BC3C @ =0x030044E0
	ldrh r0, [r1, #0x1a]
	adds r2, r0, #1
	strh r2, [r1, #0x1a]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_08003A30
	movs r0, #0xa
	bl ProcSleep_08002B98
_0806BBEC:
	movs r1, #0xf0
	subs r1, r1, r6
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	asrs r4, r6, #0x10
	adds r2, r4, #0
	adds r2, #0x50
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r0, #0
	bl sub_0806AE3C
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	movs r2, #0x50
	subs r2, r2, r4
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r0, #1
	bl sub_0806AE3C
	cmp r4, #0x30
	beq _0806BC48
	subs r1, r6, #5
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, _0806BC40 @ =0xFFFF0000
	ands r6, r0
	orrs r6, r1
	asrs r1, r6, #0x10
	adds r1, #1
	lsls r1, r1, #0x10
	ldr r0, _0806BC44 @ =0x0000FFFF
	ands r6, r0
	orrs r6, r1
	movs r0, #1
	bl ProcSleep_08002B98
	b _0806BBEC
	.align 2, 0
_0806BC3C: .4byte 0x030044E0
_0806BC40: .4byte 0xFFFF0000
_0806BC44: .4byte 0x0000FFFF
_0806BC48:
	movs r0, #0
	movs r1, #0xd0
	movs r2, #0x80
	bl sub_0806AE3C
	movs r0, #1
	movs r1, #0x20
	movs r2, #0x20
	bl sub_0806AE3C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0806BC64
sub_0806BC64: @ 0x0806BC64
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	movs r4, #0
	add r7, sp, #8
	adds r5, r7, #0
_0806BC72:
	movs r0, #6
	bl sub_0800B828
	adds r0, #0x6c
	strb r0, [r5]
	ldrb r1, [r5]
	cmp r1, r6
	beq _0806BC8A
	mov r2, sp
	adds r0, r2, r4
	strb r1, [r0]
	adds r4, #1
_0806BC8A:
	cmp r4, #5
	ble _0806BC72
	ldr r0, _0806BCFC @ =0x0000017B
	bl m4aSongNumStart
	ldr r0, _0806BD00 @ =0x03004500
	ldr r0, [r0]
	ldr r0, [r0, #4]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r2, #0
	bl sub_08009E84
	movs r0, #0x78
	movs r1, #0x50
	bl sub_0806AF78
	movs r4, #0x3b
_0806BCAE:
	movs r0, #6
	bl sub_0800B828
	adds r0, #0x6c
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_0806AF54
	movs r0, #1
	bl ProcSleep_08002B98
	subs r4, #1
	cmp r4, #0
	bge _0806BCAE
	movs r0, #6
	bl sub_0800B828
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	add r0, sp
	ldrb r0, [r0]
	strb r0, [r7]
	ldr r2, _0806BD04 @ =0x030044E0
	ldrb r0, [r2, #0x19]
	cmp r0, #0
	bne _0806BD08
	ldrh r0, [r2, #0x1a]
	adds r1, r0, #1
	strh r1, [r2, #0x1a]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r2, sp
	adds r2, #9
	adds r1, r7, #0
	movs r3, #1
	bl sub_08003998
	b _0806BD1E
	.align 2, 0
_0806BCFC: .4byte 0x0000017B
_0806BD00: .4byte 0x03004500
_0806BD04: .4byte 0x030044E0
_0806BD08:
	ldrh r0, [r2, #0x1a]
	adds r1, r0, #1
	strh r1, [r2, #0x1a]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r1, sp
	adds r1, #0xa
	adds r2, r7, #0
	movs r3, #1
	bl sub_08003998
_0806BD1E:
	ldrb r0, [r7]
	bl sub_0806AF54
	ldr r0, _0806BD64 @ =0x0000017B
	bl m4aSongNumStop
	movs r0, #0xbe
	lsls r0, r0, #1
	bl m4aSongNumStart
	movs r4, #0x80
	lsls r4, r4, #0x11
	ldr r5, _0806BD68 @ =0x000001FF
_0806BD38:
	ldr r0, _0806BD6C @ =0x03004500
	ldr r0, [r0]
	ldr r0, [r0, #4]
	asrs r4, r4, #0x10
	adds r1, r4, #0
	adds r2, r4, #0
	bl sub_08009E84
	movs r0, #1
	bl ProcSleep_08002B98
	adds r4, #0x10
	lsls r4, r4, #0x10
	asrs r0, r4, #0x10
	cmp r0, r5
	ble _0806BD38
	ldrb r0, [r7]
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0806BD64: .4byte 0x0000017B
_0806BD68: .4byte 0x000001FF
_0806BD6C: .4byte 0x03004500

	thumb_func_start sub_0806BD70
sub_0806BD70: @ 0x0806BD70
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r1, _0806BDBC @ =0x030044E0
	ldrb r0, [r1, #6]
	mov sl, r0
	movs r0, #0
	strb r0, [r1, #6]
	movs r1, #0
	bl sub_0806B060
	movs r1, #1
	rsbs r1, r1, #0
	movs r0, #1
	bl sub_0806B060
	movs r0, #0
	movs r1, #0x78
	movs r2, #0x78
	bl sub_0806B110
	movs r0, #1
	movs r1, #0x78
	movs r2, #0x28
	bl sub_0806B110
	ldr r0, _0806BDC0 @ =0x003E001F
	movs r1, #0x10
	movs r2, #0x18
	bl sub_0806B7E4
	add r1, sp, #4
	mov sb, r1
	b _0806BE86
	.align 2, 0
_0806BDBC: .4byte 0x030044E0
_0806BDC0: .4byte 0x003E001F
_0806BDC4:
	ldr r0, _0806BDD4 @ =0x030024B0
	ldrh r1, [r0, #4]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0806BDD8
	movs r0, #1
	b _0806BDEE
	.align 2, 0
_0806BDD4: .4byte 0x030024B0
_0806BDD8:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0806BDE4
	movs r0, #1
	b _0806BE32
_0806BDE4:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0806BE24
	movs r0, #0xa
_0806BDEE:
	ldr r5, _0806BE20 @ =0x030044E0
	mov r3, sl
	lsls r6, r3, #0x18
	cmp r0, #0
	beq _0806BE5A
	adds r4, r5, #0
	adds r2, r0, #0
_0806BDFC:
	ldrb r1, [r4, #6]
	movs r0, #6
	ldrsb r0, [r4, r0]
	cmp r0, #0x62
	bgt _0806BE18
	ldrh r3, [r5, #4]
	movs r7, #4
	ldrsh r0, [r5, r7]
	cmp r0, #0
	beq _0806BE18
	subs r0, r3, #1
	strh r0, [r4, #4]
	adds r0, r1, #1
	strb r0, [r4, #6]
_0806BE18:
	subs r2, #1
	cmp r2, #0
	bne _0806BDFC
	b _0806BE5A
	.align 2, 0
_0806BE20: .4byte 0x030044E0
_0806BE24:
	movs r0, #0x10
	ands r0, r1
	mov r1, sl
	lsls r6, r1, #0x18
	cmp r0, #0
	beq _0806BE5A
	movs r0, #0xa
_0806BE32:
	ldr r5, _0806BEA4 @ =0x030044E0
	mov r3, sl
	lsls r6, r3, #0x18
	cmp r0, #0
	beq _0806BE5A
	adds r4, r5, #0
	adds r2, r0, #0
_0806BE40:
	ldrb r3, [r4, #6]
	movs r0, #6
	ldrsb r0, [r4, r0]
	cmp r0, #0
	beq _0806BE54
	ldrh r0, [r5, #4]
	adds r0, #1
	strh r0, [r5, #4]
	subs r0, r3, #1
	strb r0, [r5, #6]
_0806BE54:
	subs r2, #1
	cmp r2, #0
	bne _0806BE40
_0806BE5A:
	ldr r4, _0806BEA4 @ =0x030044E0
	asrs r1, r6, #0x18
	movs r0, #6
	ldrsb r0, [r4, r0]
	cmp r1, r0
	beq _0806BE70
	ldr r0, _0806BEA8 @ =0x0000017D
	bl m4aSongNumStart
	ldrb r7, [r4, #6]
	mov sl, r7
_0806BE70:
	movs r0, #0
	bl sub_0806AD54
	movs r1, #6
	ldrsb r1, [r4, r1]
	movs r0, #0
	bl sub_0806B060
	movs r0, #1
	bl ProcSleep_08002B98
_0806BE86:
	ldr r0, _0806BEAC @ =0x030024B0
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0806BDC4
	ldr r4, _0806BEA4 @ =0x030044E0
	movs r0, #6
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bne _0806BEB0
	movs r0, #0xd2
	bl m4aSongNumStart
	b _0806BDC4
	.align 2, 0
_0806BEA4: .4byte 0x030044E0
_0806BEA8: .4byte 0x0000017D
_0806BEAC: .4byte 0x030024B0
_0806BEB0:
	movs r0, #0xcc
	bl m4aSongNumStart
	bl sub_0806B914
	mov r1, sp
	movs r0, #6
	ldrsb r0, [r4, r0]
	strh r0, [r1]
	ldrh r0, [r4, #4]
	strh r0, [r1, #2]
	ldrh r0, [r4, #0x1a]
	adds r1, r0, #1
	strh r1, [r4, #0x1a]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r1, sp
	mov r2, sb
	movs r3, #4
	bl sub_08003998
	mov r1, sb
	ldrh r0, [r1]
	strb r0, [r4, #0x12]
	ldrh r0, [r1, #2]
	strh r0, [r4, #0x10]
	movs r0, #1
	bl sub_0806AD54
	movs r1, #0x12
	ldrsb r1, [r4, r1]
	movs r0, #1
	bl sub_0806B060
	movs r5, #0
	ldr r6, _0806BF6C @ =0x0807F240
_0806BEF8:
	adds r0, r5, #4
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	lsls r0, r5, #1
	adds r0, r0, r6
	movs r3, #0
	ldrsh r0, [r0, r3]
	lsls r2, r0, #2
	adds r2, r2, r0
	lsls r2, r2, #0x13
	asrs r2, r2, #0x18
	lsls r2, r2, #0x10
	adds r0, r5, #0
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r6
	movs r7, #0
	ldrsh r1, [r0, r7]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #0x13
	asrs r0, r0, #0x18
	lsls r0, r0, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	mov r1, r8
	orrs r1, r0
	mov r8, r1
	movs r1, #0x78
	mov r3, r8
	subs r1, r1, r3
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	asrs r4, r3, #0x10
	adds r2, r4, #0
	adds r2, #0x50
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r0, #0
	bl sub_0806B110
	mov r1, r8
	adds r1, #0x78
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0x50
	subs r2, r2, r4
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r0, #1
	bl sub_0806B110
	cmp r5, #0x80
	beq _0806BF70
	movs r0, #1
	bl ProcSleep_08002B98
	b _0806BEF8
	.align 2, 0
_0806BF6C: .4byte 0x0807F240
_0806BF70:
	ldr r0, _0806BF8C @ =0x030044E0
	ldrb r5, [r0, #6]
	ldrb r1, [r0, #0x12]
	strb r1, [r0, #6]
	strb r5, [r0, #0x12]
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806BF8C: .4byte 0x030044E0

	thumb_func_start sub_0806BF90
sub_0806BF90: @ 0x0806BF90
	push {r4, r5, r6, lr}
	movs r3, #0
	ldr r0, _0806C030 @ =0x030044E0
	ldrb r1, [r0, #8]
	movs r2, #1
	ands r1, r2
	adds r6, r0, #0
	cmp r1, #0
	beq _0806BFB6
	adds r2, r6, #0
	movs r1, #1
_0806BFA6:
	adds r3, #1
	cmp r3, #5
	bgt _0806BFB6
	ldrb r0, [r2, #8]
	asrs r0, r3
	ands r0, r1
	cmp r0, #0
	bne _0806BFA6
_0806BFB6:
	cmp r3, #6
	bne _0806BFC0
	movs r0, #0
	strb r0, [r6, #8]
	movs r3, #0
_0806BFC0:
	strb r3, [r6, #7]
	movs r1, #7
	ldrsb r1, [r6, r1]
	movs r0, #0
	bl sub_0806B208
	movs r1, #1
	rsbs r1, r1, #0
	movs r0, #1
	bl sub_0806B208
	movs r0, #0
	movs r1, #0x78
	movs r2, #0x90
	bl sub_0806B254
	movs r0, #1
	movs r1, #0x78
	movs r2, #0x10
	bl sub_0806B254
	ldr r0, _0806C034 @ =0x003E0020
	movs r1, #0x10
	movs r2, #0x18
	bl sub_0806B7E4
	bl sub_0806B2A0
	movs r0, #0x78
	movs r1, #0x90
	movs r2, #0xc
	bl sub_0806B320
	movs r4, #1
	adds r5, r6, #0
_0806C006:
	ldr r0, _0806C038 @ =0x030024B0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _0806C014
	b _0806C102
_0806C014:
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0806C05C
	ldr r0, _0806C030 @ =0x030044E0
	movs r1, #7
	ldrsb r1, [r0, r1]
	adds r6, r0, #0
	cmp r1, #4
	bgt _0806C094
	movs r0, #7
	ldrsb r0, [r6, r0]
	adds r3, r0, #1
	b _0806C03E
	.align 2, 0
_0806C030: .4byte 0x030044E0
_0806C034: .4byte 0x003E0020
_0806C038: .4byte 0x030024B0
_0806C03C:
	adds r3, #1
_0806C03E:
	cmp r3, #5
	bgt _0806C094
	ldrb r0, [r6, #8]
	asrs r0, r3
	ands r0, r4
	cmp r0, #0
	bne _0806C03C
	strb r3, [r6, #7]
	ldr r0, _0806C058 @ =0x0000017D
	bl m4aSongNumStart
	b _0806C094
	.align 2, 0
_0806C058: .4byte 0x0000017D
_0806C05C:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0806C094
	ldr r0, _0806C078 @ =0x030044E0
	movs r1, #7
	ldrsb r1, [r0, r1]
	adds r6, r0, #0
	cmp r1, #0
	beq _0806C094
	movs r0, #7
	ldrsb r0, [r6, r0]
	subs r3, r0, #1
	b _0806C07E
	.align 2, 0
_0806C078: .4byte 0x030044E0
_0806C07C:
	subs r3, #1
_0806C07E:
	cmp r3, #0
	blt _0806C094
	ldrb r0, [r6, #8]
	asrs r0, r3
	ands r0, r4
	cmp r0, #0
	bne _0806C07C
	strb r3, [r6, #7]
	ldr r0, _0806C0AC @ =0x0000017D
	bl m4aSongNumStart
_0806C094:
	movs r0, #0
	movs r1, #0
	bl sub_0806B37C
	movs r0, #1
	movs r1, #0
	bl sub_0806B37C
	movs r0, #7
	ldrsb r0, [r5, r0]
	adds r3, r0, #1
	b _0806C0B2
	.align 2, 0
_0806C0AC: .4byte 0x0000017D
_0806C0B0:
	adds r3, #1
_0806C0B2:
	cmp r3, #5
	bgt _0806C0C8
	ldrb r0, [r5, #8]
	asrs r0, r3
	ands r0, r4
	cmp r0, #0
	bne _0806C0B0
	movs r0, #0
	movs r1, #1
	bl sub_0806B37C
_0806C0C8:
	movs r0, #7
	ldrsb r0, [r5, r0]
	subs r3, r0, #1
	ldr r6, _0806C0D4 @ =0x030044E0
	b _0806C0DA
	.align 2, 0
_0806C0D4: .4byte 0x030044E0
_0806C0D8:
	subs r3, #1
_0806C0DA:
	cmp r3, #0
	blt _0806C0F0
	ldrb r0, [r6, #8]
	asrs r0, r3
	ands r0, r4
	cmp r0, #0
	bne _0806C0D8
	movs r0, #1
	movs r1, #1
	bl sub_0806B37C
_0806C0F0:
	movs r1, #7
	ldrsb r1, [r5, r1]
	movs r0, #0
	bl sub_0806B208
	movs r0, #1
	bl ProcSleep_08002B98
	b _0806C006
_0806C102:
	movs r0, #0xcc
	bl m4aSongNumStart
	ldr r4, _0806C148 @ =0x030044E0
	movs r1, #7
	ldrsb r1, [r4, r1]
	movs r0, #1
	lsls r0, r1
	ldrb r1, [r4, #8]
	orrs r0, r1
	strb r0, [r4, #8]
	bl sub_0806B2EC
	bl sub_0806B914
	ldrh r0, [r4, #0x1a]
	adds r1, r0, #1
	strh r1, [r4, #0x1a]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r4, #7
	adds r2, r4, #0
	adds r2, #0x13
	movs r3, #1
	bl sub_08003998
	movs r1, #0x13
	ldrsb r1, [r4, r1]
	movs r0, #1
	bl sub_0806B208
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0806C148: .4byte 0x030044E0

	thumb_func_start sub_0806C14C
sub_0806C14C: @ 0x0806C14C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	ldr r1, _0806C204 @ =0x08090662
	mov r0, sp
	movs r2, #6
	bl memcpy
	bl sub_08001F2C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	bl sub_08001F3C
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	add r1, sp, #8
	mov r0, sb
	strb r0, [r1]
	strb r5, [r1, #1]
	ldr r6, _0806C208 @ =0x030044E0
	ldrh r0, [r6, #0x1a]
	adds r2, r0, #1
	strh r2, [r6, #0x1a]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	add r4, sp, #0xc
	adds r2, r4, #0
	movs r3, #2
	bl sub_08003998
	ldrb r1, [r4]
	mov sl, r1
	ldrb r4, [r4, #1]
	mov r8, r4
	ldr r1, _0806C20C @ =0xFFFFFF00
	ldr r0, [sp, #0x10]
	ands r0, r1
	movs r1, #0xa
	orrs r0, r1
	ldr r1, _0806C210 @ =0xFFFF00FF
	ands r0, r1
	movs r1, #0xb0
	lsls r1, r1, #4
	orrs r0, r1
	ldr r1, _0806C214 @ =0xFF00FFFF
	ands r0, r1
	movs r1, #0xa0
	lsls r1, r1, #0xd
	orrs r0, r1
	ldr r1, _0806C218 @ =0x00FFFFFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x12
	orrs r0, r1
	str r0, [sp, #0x10]
	add r4, sp, #0x10
	adds r0, r4, #0
	movs r1, #0
	bl sub_08004300
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x14]
	movs r0, #7
	strb r0, [r4, #1]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08004300
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x18]
	mov r0, sb
	cmp r0, #0
	beq _0806C21C
	movs r0, #7
	ldrsb r0, [r6, r0]
	add r0, sp
	ldrb r0, [r0]
	muls r0, r5, r0
	movs r1, #0xa
	bl __divsi3
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	b _0806C21E
	.align 2, 0
_0806C204: .4byte 0x08090662
_0806C208: .4byte 0x030044E0
_0806C20C: .4byte 0xFFFFFF00
_0806C210: .4byte 0xFFFF00FF
_0806C214: .4byte 0xFF00FFFF
_0806C218: .4byte 0x00FFFFFF
_0806C21C:
	adds r7, r5, #0
_0806C21E:
	mov r1, sl
	cmp r1, #0
	beq _0806C248
	ldr r0, _0806C244 @ =0x030044E0
	ldrb r0, [r0, #0x13]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	add r0, sp
	ldrb r0, [r0]
	mov r1, r8
	muls r1, r0, r1
	adds r0, r1, #0
	movs r1, #0xa
	bl __divsi3
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	b _0806C24A
	.align 2, 0
_0806C244: .4byte 0x030044E0
_0806C248:
	mov r6, r8
_0806C24A:
	bl sub_0806B990
	movs r0, #0
	bl sub_0806B510
	movs r0, #1
	bl sub_0806B510
	movs r0, #0
	adds r1, r5, #0
	bl sub_0806B600
	movs r0, #1
	mov r1, r8
	bl sub_0806B600
	ldr r4, _0806C2A4 @ =0x030044E0
	ldrb r1, [r4, #6]
	movs r0, #0
	bl sub_0806B664
	ldrb r1, [r4, #0x12]
	movs r0, #1
	bl sub_0806B664
	movs r0, #2
	bl sub_080044DC
	movs r0, #0
	bl sub_080044F0
	mov r0, sb
	cmp r0, #0
	beq _0806C2AC
	ldr r1, [sp, #0x14]
	lsls r5, r1, #0x10
	asrs r4, r5, #0x10
	ldr r0, _0806C2A8 @ =0x003E0021
	bl sub_08006828
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_08004C50
	b _0806C2C0
	.align 2, 0
_0806C2A4: .4byte 0x030044E0
_0806C2A8: .4byte 0x003E0021
_0806C2AC:
	ldr r0, [sp, #0x14]
	lsls r5, r0, #0x10
	asrs r4, r5, #0x10
	ldr r0, _0806C2E0 @ =0x003E0022
	bl sub_08006828
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_08004C50
_0806C2C0:
	str r5, [sp, #0x1c]
	mov r1, sl
	cmp r1, #0
	beq _0806C2E8
	ldr r0, [sp, #0x18]
	lsls r5, r0, #0x10
	asrs r4, r5, #0x10
	ldr r0, _0806C2E4 @ =0x003E0021
	bl sub_08006828
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_08004C50
	b _0806C2FC
	.align 2, 0
_0806C2E0: .4byte 0x003E0022
_0806C2E4: .4byte 0x003E0021
_0806C2E8:
	ldr r1, [sp, #0x18]
	lsls r5, r1, #0x10
	asrs r4, r5, #0x10
	ldr r0, _0806C344 @ =0x003E0022
	bl sub_08006828
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_08004C50
_0806C2FC:
	mov r8, r5
	bl sub_08004504
	ldr r4, _0806C348 @ =0x030044E0
	ldrb r1, [r4, #7]
	movs r0, #0
	mov r2, sb
	bl sub_0806B750
	ldrb r1, [r4, #0x13]
	movs r0, #1
	mov r2, sl
	bl sub_0806B750
	movs r0, #0
	adds r1, r7, #0
	bl sub_0806B6C8
	movs r0, #1
	adds r1, r6, #0
	bl sub_0806B6C8
	movs r5, #0
	movs r0, #1
	rsbs r0, r0, #0
	mov sb, r0
_0806C330:
	lsls r0, r5, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	beq _0806C368
	cmp r0, #1
	bgt _0806C34C
	cmp r0, #0
	beq _0806C352
	b _0806C3BA
	.align 2, 0
_0806C344: .4byte 0x003E0022
_0806C348: .4byte 0x030044E0
_0806C34C:
	cmp r0, #2
	beq _0806C3AC
	b _0806C3BA
_0806C352:
	movs r0, #0x3c
	bl ProcSleep_08002B98
	ldr r0, _0806C364 @ =0x0000017F
	bl m4aSongNumStart
	movs r5, #1
	b _0806C3BA
	.align 2, 0
_0806C364: .4byte 0x0000017F
_0806C368:
	cmp r7, #0
	beq _0806C378
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	subs r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
_0806C378:
	cmp r6, #0
	beq _0806C388
	ldrh r0, [r4, #0x10]
	adds r0, #1
	strh r0, [r4, #0x10]
	subs r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
_0806C388:
	movs r0, #0
	bl sub_0806AD54
	movs r0, #1
	bl sub_0806AD54
	cmp r7, #0
	bne _0806C3BA
	cmp r6, #0
	bne _0806C3BA
	ldr r0, _0806C3A8 @ =0x0000017F
	bl m4aSongNumStop
	movs r5, #2
	b _0806C3BA
	.align 2, 0
_0806C3A8: .4byte 0x0000017F
_0806C3AC:
	ldr r0, _0806C3CC @ =0x030024B0
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0806C3BA
	movs r5, #0xff
_0806C3BA:
	lsls r0, r5, #0x18
	asrs r0, r0, #0x18
	cmp r0, sb
	beq _0806C3D0
	movs r0, #1
	bl ProcSleep_08002B98
	b _0806C330
	.align 2, 0
_0806C3CC: .4byte 0x030024B0
_0806C3D0:
	ldr r1, [sp, #0x1c]
	asrs r0, r1, #0x10
	bl sub_080043F0
	mov r1, r8
	asrs r0, r1, #0x10
	bl sub_080043F0
	movs r0, #0
	bl sub_0806B5BC
	movs r0, #1
	bl sub_0806B5BC
	bl sub_0806BA68
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0806C400
sub_0806C400: @ 0x0806C400
	push {r4, lr}
	movs r4, #0
_0806C404:
	lsls r1, r4, #2
	movs r0, #0x78
	subs r0, r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x50
	bl sub_0806AF78
	adds r2, r4, #0
	adds r2, #0x78
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r0, #0
	movs r1, #0x78
	bl sub_0806B110
	movs r2, #0x28
	subs r2, r2, r4
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r0, #1
	movs r1, #0x78
	bl sub_0806B110
	adds r2, r4, #0
	adds r2, #0x90
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r0, #0
	movs r1, #0x78
	bl sub_0806B254
	movs r2, #0x10
	subs r2, r2, r4
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r0, #1
	movs r1, #0x78
	bl sub_0806B254
	movs r0, #1
	bl ProcSleep_08002B98
	adds r4, #1
	cmp r4, #0x3f
	ble _0806C404
	pop {r4}
	pop {r0}

	thumb_func_start sub_0806C464
sub_0806C464: @ 0x0806C464
	bx r0
	.align 2, 0

	thumb_func_start sub_0806C468
sub_0806C468: @ 0x0806C468
	push {r4, r5, lr}
	ldr r0, _0806C4CC @ =0xFFFF0000
	ands r5, r0
	movs r0, #0x20
	orrs r5, r0
	ldr r0, _0806C4D0 @ =0x0000FFFF
	ands r5, r0
	movs r0, #0xc0
	lsls r0, r0, #0xe
	orrs r5, r0
_0806C47C:
	movs r1, #0xf0
	subs r1, r1, r5
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	asrs r4, r5, #0x10
	adds r2, r4, #0
	adds r2, #0x50
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r0, #0
	bl sub_0806AE3C
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	movs r2, #0x50
	subs r2, r2, r4
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r0, #1
	bl sub_0806AE3C
	cmp r4, #0x20
	beq _0806C4D4
	adds r1, r5, #5
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, _0806C4CC @ =0xFFFF0000
	ands r5, r0
	orrs r5, r1
	asrs r1, r5, #0x10
	subs r1, #1
	lsls r1, r1, #0x10
	ldr r0, _0806C4D0 @ =0x0000FFFF
	ands r5, r0
	orrs r5, r1
	movs r0, #1
	bl ProcSleep_08002B98
	b _0806C47C
	.align 2, 0
_0806C4CC: .4byte 0xFFFF0000
_0806C4D0: .4byte 0x0000FFFF
_0806C4D4:
	movs r0, #0
	bl sub_080077D4
	ldr r0, _0806C4F4 @ =0x030044E0
	movs r2, #4
	ldrsh r1, [r0, r2]
	movs r3, #0x10
	ldrsh r0, [r0, r3]
	cmp r1, r0
	bne _0806C4FC
	movs r0, #0x72
	bl m4aSongNumStart
	ldr r0, _0806C4F8 @ =0x003E002D
	b _0806C518
	.align 2, 0
_0806C4F4: .4byte 0x030044E0
_0806C4F8: .4byte 0x003E002D
_0806C4FC:
	cmp r1, r0
	ble _0806C510
	movs r0, #0x71
	bl m4aSongNumStart
	ldr r0, _0806C50C @ =0x003E0023
	b _0806C518
	.align 2, 0
_0806C50C: .4byte 0x003E0023
_0806C510:
	movs r0, #0x72
	bl m4aSongNumStart
	ldr r0, _0806C558 @ =0x003E0024
_0806C518:
	movs r1, #0x50
	movs r2, #0x18
	bl sub_0806B7E4
	movs r0, #1
	bl sub_08007828
	movs r0, #8
	bl sub_080077C4
	movs r0, #1
	bl sub_08005B8C
	bl sub_0806B914
	ldr r0, _0806C55C @ =0x02031050
	ldr r1, _0806C560 @ =0x00000888
	adds r2, r0, r1
	ldr r0, _0806C564 @ =0x030044E0
	movs r3, #4
	ldrsh r1, [r0, r3]
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r2]
	ldr r1, _0806C568 @ =0x0001869E
	cmp r0, r1
	bls _0806C552
	ldr r0, _0806C56C @ =0x0001869F
	str r0, [r2]
_0806C552:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806C558: .4byte 0x003E0024
_0806C55C: .4byte 0x02031050
_0806C560: .4byte 0x00000888
_0806C564: .4byte 0x030044E0
_0806C568: .4byte 0x0001869E
_0806C56C: .4byte 0x0001869F

	thumb_func_start sub_0806C570
sub_0806C570: @ 0x0806C570
	push {r4, r5, r6, r7, lr}
	sub sp, #0x18
	ldr r5, _0806C5A4 @ =0x03004400
	movs r6, #0
	movs r0, #1
	strb r0, [r5, #5]
	bl sub_08060708
	ldr r4, _0806C5A8 @ =0x03004500
	movs r0, #0x82
	lsls r0, r0, #1
	bl sub_08007CE8
	adds r1, r0, #0
	str r1, [r4]
	add r0, sp, #0x10
	strh r6, [r0]
	ldr r2, _0806C5AC @ =0x01000082
	bl CpuSet
	ldrb r0, [r5, #0xa]
	cmp r0, #0x11
	bne _0806C5B0
	add r1, sp, #0x14
	movs r0, #6
	b _0806C5C8
	.align 2, 0
_0806C5A4: .4byte 0x03004400
_0806C5A8: .4byte 0x03004500
_0806C5AC: .4byte 0x01000082
_0806C5B0:
	mov r0, sp
	adds r0, #0x12
	strh r6, [r0]
	ldr r4, _0806C664 @ =0x030044E0
	ldr r2, _0806C668 @ =0x01000010
	adds r1, r4, #0
	bl CpuSet
	ldr r0, _0806C66C @ =0x00004401
	strh r0, [r4, #0x1a]
	add r1, sp, #0x14
	movs r0, #0
_0806C5C8:
	strb r0, [r1]
	adds r6, r1, #0
	ldr r1, _0806C670 @ =0x03004400
	ldrb r0, [r1, #8]
	strb r0, [r1, #0xa]
	movs r0, #0xb
	bl sub_080607FC
	bl sub_0806AA20
	bl sub_0806AA78
	movs r0, #0
	bl sub_0806AC8C
	movs r0, #1
	bl sub_0806AC8C
	bl sub_0806AEC8
	ldr r4, _0806C664 @ =0x030044E0
	ldrb r0, [r4, #0x18]
	bl sub_0806AF54
	movs r0, #0
	bl sub_0806AFA0
	movs r0, #1
	bl sub_0806AFA0
	movs r0, #0
	bl sub_0806B194
	movs r0, #1
	bl sub_0806B194
	movs r0, #0
	ldrsb r0, [r6, r0]
	cmp r0, #0
	bne _0806C678
	movs r4, #0x80
	rsbs r4, r4, #0
	movs r0, #0
	movs r1, #0
	adds r2, r4, #0
	bl sub_0806AE3C
	movs r0, #1
	movs r1, #0
	adds r2, r4, #0
	bl sub_0806AE3C
	movs r0, #0
	adds r1, r4, #0
	bl sub_0806AF78
	movs r0, #0
	movs r1, #0
	adds r2, r4, #0
	bl sub_0806B110
	movs r0, #1
	movs r1, #0
	adds r2, r4, #0
	bl sub_0806B110
	movs r0, #0
	movs r1, #0
	adds r2, r4, #0
	bl sub_0806B254
	movs r0, #1
	movs r1, #0
	adds r2, r4, #0
	bl sub_0806B254
	b _0806C700
	.align 2, 0
_0806C664: .4byte 0x030044E0
_0806C668: .4byte 0x01000010
_0806C66C: .4byte 0x00004401
_0806C670: .4byte 0x03004400
_0806C674:
	movs r4, #0xff
	b _0806C78E
_0806C678:
	movs r0, #0
	bl sub_0806AD54
	movs r0, #1
	bl sub_0806AD54
	movs r0, #0
	movs r1, #0xd0
	movs r2, #0x80
	bl sub_0806AE3C
	movs r0, #1
	movs r1, #0x20
	movs r2, #0x20
	bl sub_0806AE3C
	movs r0, #0x78
	movs r1, #0x50
	bl sub_0806AF78
	ldr r0, _0806C734 @ =0x03004500
	ldr r0, [r0]
	ldr r0, [r0, #4]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r1, r2, #0
	bl sub_08009E84
	movs r1, #6
	ldrsb r1, [r4, r1]
	movs r0, #0
	bl sub_0806B060
	movs r1, #0x12
	ldrsb r1, [r4, r1]
	movs r0, #1
	bl sub_0806B060
	movs r0, #0
	movs r1, #0x78
	movs r2, #0x78
	bl sub_0806B110
	movs r0, #1
	movs r1, #0x78
	movs r2, #0x28
	bl sub_0806B110
	movs r1, #7
	ldrsb r1, [r4, r1]
	movs r0, #0
	bl sub_0806B208
	movs r1, #0x13
	ldrsb r1, [r4, r1]
	movs r0, #1
	bl sub_0806B208
	movs r0, #0
	movs r1, #0x78
	movs r2, #0x90
	bl sub_0806B254
	movs r0, #1
	movs r1, #0x78
	movs r2, #0x10
	bl sub_0806B254
_0806C700:
	movs r0, #8
	bl sub_080077C4
	movs r0, #0x20
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl FadeIn_08008AF4
	ldr r0, _0806C738 @ =0x030024E0
	adds r0, #0x4f
	movs r1, #1
	strb r1, [r0]
	bl sub_08008D34
	movs r0, #0
	ldrsb r0, [r6, r0]
	cmp r0, #0
	bne _0806C800
	movs r0, #1
	bl sub_08005A88
	movs r0, #0
	bl sub_080059E4
	b _0806C758
	.align 2, 0
_0806C734: .4byte 0x03004500
_0806C738: .4byte 0x030024E0
_0806C73C:
	cmp r0, #1
	bne _0806C674
	ldr r0, _0806C7D4 @ =0x00470048
	bl sub_080062D0
	ldr r0, _0806C7D8 @ =0x00470049
	bl sub_080062D0
	ldr r0, _0806C7DC @ =0x0047004A
	bl sub_080062D0
	ldr r0, _0806C7E0 @ =0x0047004B
	bl sub_080062D0
_0806C758:
	ldr r0, _0806C7E4 @ =0x00470046
	bl sub_080062D0
	ldr r0, _0806C7E8 @ =0x00470047
	bl sub_0800648C
	bl sub_080064F8
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _0806C73C
	ldr r0, _0806C7EC @ =0x0047004C
	bl sub_080062D0
	ldr r0, _0806C7F0 @ =0x0047004D
	bl sub_080062D0
	ldr r0, _0806C7F4 @ =0x0047004E
	bl sub_0800648C
	bl sub_080064F8
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0806C758
	movs r4, #0
_0806C78E:
	bl sub_08005A2C
	bl sub_08005AB0
	lsls r0, r4, #0x18
	asrs r0, r0, #0x18
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _0806C7A4
	b _0806C998
_0806C7A4:
	bl sub_08003468
	bl sub_08003510
	ldr r0, _0806C7F8 @ =0x004F0002
	bl sub_080033B0
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	movs r0, #0x55
	bl sub_0800353C
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	bl sub_080038E8
	ldr r1, _0806C7FC @ =0x030044E0
	strb r0, [r1, #0x19]
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	bl sub_08003458
	b _0806C866
	.align 2, 0
_0806C7D4: .4byte 0x00470048
_0806C7D8: .4byte 0x00470049
_0806C7DC: .4byte 0x0047004A
_0806C7E0: .4byte 0x0047004B
_0806C7E4: .4byte 0x00470046
_0806C7E8: .4byte 0x00470047
_0806C7EC: .4byte 0x0047004C
_0806C7F0: .4byte 0x0047004D
_0806C7F4: .4byte 0x0047004E
_0806C7F8: .4byte 0x004F0002
_0806C7FC: .4byte 0x030044E0
_0806C800:
	bl sub_08003468
	bl sub_08003510
	ldr r0, _0806C854 @ =0x004F000D
	bl sub_080033B0
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r0, _0806C858 @ =0x030044E0
	ldrb r1, [r0, #0x19]
	movs r0, #0x55
	bl sub_08003690
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	bl sub_08003458
	cmp r4, #0
	bne _0806C864
	bl sub_080034DC
	movs r0, #0
	bl sub_080059E4
	ldr r0, _0806C85C @ =0x00470054
	bl sub_080062D0
	ldr r0, _0806C860 @ =0x00470055
	bl sub_0800648C
	bl sub_08005A2C
	bl sub_080064F8
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0806C800
	b _0806C998
	.align 2, 0
_0806C854: .4byte 0x004F000D
_0806C858: .4byte 0x030044E0
_0806C85C: .4byte 0x00470054
_0806C860: .4byte 0x00470055
_0806C864:
	movs r4, #1
_0806C866:
	cmp r4, #0
	bne _0806C86C
	b _0806C988
_0806C86C:
	movs r0, #0
	ldrsb r0, [r6, r0]
	cmp r0, #0
	bne _0806C8F8
	ldr r4, _0806C8EC @ =0x030044E0
	strh r0, [r4, #0x1c]
	ldrb r0, [r4, #0x19]
	cmp r0, #0
	bne _0806C88E
	bl sub_0800B818
	ldr r1, _0806C8F0 @ =0x03004400
	ldr r1, [r1]
	adds r0, r0, r1
	movs r1, #1
	orrs r0, r1
	strh r0, [r4, #0x1c]
_0806C88E:
	mov r1, sp
	movs r0, #0x55
	strb r0, [r1]
	movs r0, #0
	ldrsb r0, [r6, r0]
	strb r0, [r1, #1]
	mov r2, sp
	ldrh r1, [r4, #0x1c]
	lsrs r0, r1, #8
	strb r0, [r2, #5]
	mov r0, sp
	strb r1, [r0, #6]
	ldr r0, _0806C8F4 @ =0x0000999A
	add r4, sp, #8
	mov r1, sp
	adds r2, r4, #0
	movs r3, #8
	bl sub_08003998
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #0x55
	bne _0806C8CA
	ldrb r0, [r4, #1]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #0
	ldrsb r1, [r6, r1]
	cmp r0, r1
	beq _0806C8CE
_0806C8CA:
	bl sub_0800386C
_0806C8CE:
	ldr r2, _0806C8EC @ =0x030044E0
	ldrb r0, [r2, #0x19]
	cmp r0, #0
	beq _0806C9A4
	movs r0, #5
	ldrsb r0, [r4, r0]
	lsls r0, r0, #8
	movs r3, #0xff
	lsls r3, r3, #8
	adds r1, r3, #0
	ands r0, r1
	ldrb r1, [r4, #6]
	orrs r0, r1
	strh r0, [r2, #0x1c]
	b _0806C9A4
	.align 2, 0
_0806C8EC: .4byte 0x030044E0
_0806C8F0: .4byte 0x03004400
_0806C8F4: .4byte 0x0000999A
_0806C8F8:
	mov r1, sp
	movs r0, #0x55
	strb r0, [r1]
	movs r0, #0
	ldrsb r0, [r6, r0]
	strb r0, [r1, #1]
	ldr r7, _0806C97C @ =0x03004400
	ldrb r0, [r7, #0xd]
	strb r0, [r1, #2]
	mov r2, sp
	ldr r5, _0806C980 @ =0x030044E0
	ldrh r1, [r5, #0x1a]
	lsrs r0, r1, #8
	strb r0, [r2, #3]
	mov r0, sp
	strb r1, [r0, #4]
	ldrh r1, [r5, #0x1c]
	lsrs r0, r1, #8
	strb r0, [r2, #5]
	mov r0, sp
	strb r1, [r0, #6]
	ldr r0, _0806C984 @ =0x0000999A
	add r4, sp, #8
	mov r1, sp
	adds r2, r4, #0
	movs r3, #8
	bl sub_08003998
	movs r0, #3
	ldrsb r0, [r4, r0]
	lsls r0, r0, #0x18
	ldrb r1, [r4, #4]
	lsrs r3, r0, #0x10
	orrs r3, r1
	movs r0, #5
	ldrsb r0, [r4, r0]
	lsls r0, r0, #0x18
	ldrb r1, [r4, #6]
	lsrs r2, r0, #0x10
	orrs r2, r1
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #0x55
	bne _0806C974
	ldrb r0, [r4, #1]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #0
	ldrsb r1, [r6, r1]
	cmp r0, r1
	bne _0806C974
	movs r0, #2
	ldrsb r0, [r4, r0]
	ldrb r7, [r7, #0xd]
	cmp r0, r7
	bne _0806C974
	ldrh r0, [r5, #0x1a]
	cmp r3, r0
	bne _0806C974
	ldrh r5, [r5, #0x1c]
	cmp r2, r5
	beq _0806C9A4
_0806C974:
	bl sub_0800386C
	b _0806C9A4
	.align 2, 0
_0806C97C: .4byte 0x03004400
_0806C980: .4byte 0x030044E0
_0806C984: .4byte 0x0000999A
_0806C988:
	movs r0, #0
	bl sub_080059E4
	ldr r0, _0806C9A0 @ =0x003E0030
	bl sub_080062D0
	bl sub_08005A2C
_0806C998:
	movs r0, #0x2a
	bl ChangeGameState_08008790
	b _0806CC1E
	.align 2, 0
_0806C9A0: .4byte 0x003E0030
_0806C9A4:
	movs r0, #0
	ldrsb r0, [r6, r0]
	cmp r0, #8
	bls _0806C9AE
	b _0806CC0A
_0806C9AE:
	lsls r0, r0, #2
	ldr r1, _0806C9B8 @ =_0806C9BC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0806C9B8: .4byte _0806C9BC
_0806C9BC: @ jump table
	.4byte _0806C9E0 @ case 0
	.4byte _0806C9EA @ case 1
	.4byte _0806CA1C @ case 2
	.4byte _0806CA5C @ case 3
	.4byte _0806CA66 @ case 4
	.4byte _0806CA70 @ case 5
	.4byte _0806CAA0 @ case 6
	.4byte _0806CAD2 @ case 7
	.4byte _0806CB62 @ case 8
_0806C9E0:
	bl sub_0806BB20
	movs r0, #1
	strb r0, [r6]
	b _0806CC0A
_0806C9EA:
	ldr r2, _0806CA14 @ =0x030044E0
	ldrh r0, [r2, #0x1a]
	adds r1, r0, #1
	strh r1, [r2, #0x1a]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_08003A30
	ldr r0, _0806CA18 @ =0x003E001B
	movs r1, #0x50
	movs r2, #0x18
	bl sub_0806B7E4
	movs r0, #0x3c
	bl ProcSleep_08002B98
	bl sub_0806B914
	movs r0, #2
	strb r0, [r6]
	b _0806CC0A
	.align 2, 0
_0806CA14: .4byte 0x030044E0
_0806CA18: .4byte 0x003E001B
_0806CA1C:
	ldr r0, _0806CA50 @ =0x003E001D
	movs r1, #0x10
	movs r2, #0x18
	bl sub_0806B7E4
	ldr r4, _0806CA54 @ =0x030044E0
	ldrb r0, [r4, #0x18]
	bl sub_0806BC64
	strb r0, [r4, #0x18]
	ldrb r1, [r4, #0x18]
	movs r0, #5
	bl sub_08005BE0
	ldr r0, _0806CA58 @ =0x003E001E
	bl sub_0806B79C
	movs r0, #0x3c
	bl ProcSleep_08002B98
	bl sub_0806B914
	movs r0, #3
	strb r0, [r6]
	b _0806CC0A
	.align 2, 0
_0806CA50: .4byte 0x003E001D
_0806CA54: .4byte 0x030044E0
_0806CA58: .4byte 0x003E001E
_0806CA5C:
	bl sub_0806BD70
	movs r0, #4
	strb r0, [r6]
	b _0806CC0A
_0806CA66:
	bl sub_0806BF90
	movs r0, #5
	strb r0, [r6]
	b _0806CC0A
_0806CA70:
	bl sub_0806B3A8
	bl sub_0806B470
	ldr r1, _0806CA9C @ =0x030044E0
	ldrb r0, [r1, #0x18]
	ldrb r2, [r1, #6]
	movs r1, #0
	movs r3, #3
	bl sub_08001C14
	bl sub_08001B40
	movs r0, #0x19
	bl sub_08001930
	movs r0, #0x11
	bl ChangeGameState_08008790
	movs r0, #0xff
	strb r0, [r6]
	b _0806CC0A
	.align 2, 0
_0806CA9C: .4byte 0x030044E0
_0806CAA0:
	bl sub_0806C14C
	bl sub_0806C400
	ldr r0, _0806CAC8 @ =0x030044E0
	movs r2, #4
	ldrsh r1, [r0, r2]
	cmp r1, #0
	beq _0806CAC2
	movs r3, #0x10
	ldrsh r0, [r0, r3]
	cmp r0, #0
	beq _0806CAC2
	cmp r1, #0xc7
	bgt _0806CAC2
	cmp r0, #0xc7
	ble _0806CACC
_0806CAC2:
	movs r0, #8
	strb r0, [r6]
	b _0806CC0A
	.align 2, 0
_0806CAC8: .4byte 0x030044E0
_0806CACC:
	movs r0, #7
	strb r0, [r6]
	b _0806CC0A
_0806CAD2:
	ldr r4, _0806CAFC @ =0x030044E0
	ldrh r0, [r4, #0x1a]
	adds r1, r0, #1
	strh r1, [r4, #0x1a]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_08003A30
	ldrb r0, [r4, #0x19]
	cmp r0, #0
	bne _0806CB2C
	ldr r0, _0806CB00 @ =0x003E002E
	bl sub_0800648C
	bl sub_080064F8
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0806CB04
	movs r0, #1
	b _0806CB0C
	.align 2, 0
_0806CAFC: .4byte 0x030044E0
_0806CB00: .4byte 0x003E002E
_0806CB04:
	movs r0, #0x2a
	bl ChangeGameState_08008790
	movs r0, #0xff
_0806CB0C:
	strb r0, [r6]
	movs r4, #9
_0806CB10:
	ldr r0, _0806CB28 @ =0x00001111
	adds r1, r6, #0
	movs r2, #1
	bl sub_080038F4
	movs r0, #1
	bl ProcSleep_08002B98
	subs r4, #1
	cmp r4, #0
	bge _0806CB10
	b _0806CC0A
	.align 2, 0
_0806CB28: .4byte 0x00001111
_0806CB2C:
	ldr r4, _0806CB34 @ =0x00001111
	movs r5, #1
	rsbs r5, r5, #0
	b _0806CB3E
	.align 2, 0
_0806CB34: .4byte 0x00001111
_0806CB38:
	movs r0, #1
	bl ProcSleep_08002B98
_0806CB3E:
	movs r0, #0
	adds r1, r4, #0
	adds r2, r6, #0
	movs r3, #1
	bl sub_08003938
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r4
	bne _0806CB38
	movs r0, #0
	ldrsb r0, [r6, r0]
	cmp r0, r5
	bne _0806CC16
	movs r0, #0x2a
	bl ChangeGameState_08008790
	b _0806CC0A
_0806CB62:
	bl sub_0806C468
	ldr r4, _0806CBC4 @ =0x030044E0
	ldrh r0, [r4, #0x1a]
	adds r1, r0, #1
	strh r1, [r4, #0x1a]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_08003A30
	movs r0, #0xa
	bl ProcSleep_08002B98
	ldrb r0, [r4, #0x19]
	cmp r0, #0
	bne _0806CBD0
	ldr r0, _0806CBC8 @ =0x003E0025
	bl sub_0800648C
	bl sub_080064F8
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _0806CBA6
	movs r0, #0x2a
	bl sub_080072F4
	movs r0, #0x23
	bl ChangeGameState_08008790
	movs r1, #1
	rsbs r1, r1, #0
	adds r0, r1, #0
_0806CBA6:
	strb r0, [r6]
	movs r4, #9
_0806CBAA:
	ldr r0, _0806CBCC @ =0x00001111
	adds r1, r6, #0
	movs r2, #1
	bl sub_080038F4
	movs r0, #1
	bl ProcSleep_08002B98
	subs r4, #1
	cmp r4, #0
	bge _0806CBAA
	b _0806CC0A
	.align 2, 0
_0806CBC4: .4byte 0x030044E0
_0806CBC8: .4byte 0x003E0025
_0806CBCC: .4byte 0x00001111
_0806CBD0:
	ldr r4, _0806CBD8 @ =0x00001111
	movs r5, #1
	rsbs r5, r5, #0
	b _0806CBE2
	.align 2, 0
_0806CBD8: .4byte 0x00001111
_0806CBDC:
	movs r0, #1
	bl ProcSleep_08002B98
_0806CBE2:
	movs r0, #0
	adds r1, r4, #0
	adds r2, r6, #0
	movs r3, #1
	bl sub_08003938
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r4
	bne _0806CBDC
	movs r0, #0
	ldrsb r0, [r6, r0]
	cmp r0, r5
	bne _0806CC16
	movs r0, #0x2a
	bl sub_080072F4
	movs r0, #0x23
	bl ChangeGameState_08008790
_0806CC0A:
	movs r1, #0
	ldrsb r1, [r6, r1]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0806CC1E
_0806CC16:
	movs r0, #1
	bl ProcSleep_08002B98
	b _0806C9A4
_0806CC1E:
	ldr r4, _0806CC9C @ =0x03004400
	ldrb r0, [r4, #9]
	cmp r0, #0x11
	bne _0806CC2E
	movs r0, #0
	movs r1, #0x20
	bl sub_080077EC
_0806CC2E:
	movs r0, #0x20
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl FadeOut_080089E8
	bl sub_08008D34
	ldrb r0, [r4, #9]
	cmp r0, #0x2a
	beq _0806CC48
	cmp r0, #0x23
	bne _0806CC4C
_0806CC48:
	bl sub_080034DC
_0806CC4C:
	bl sub_0806B400
	movs r0, #0
	bl sub_0806B1D0
	movs r0, #1
	bl sub_0806B1D0
	movs r0, #0
	bl sub_0806B01C
	movs r0, #1
	bl sub_0806B01C
	bl sub_0806AF18
	movs r0, #0
	bl sub_0806AD10
	movs r0, #1
	bl sub_0806AD10
	bl sub_0806AAEC
	ldr r4, _0806CCA0 @ =0x03004500
	ldr r0, [r4]
	cmp r0, #0
	beq _0806CC8C
	bl sub_08007CF8
	movs r0, #0
	str r0, [r4]
_0806CC8C:
	bl sub_080607BC
	bl sub_08002B0C
	add sp, #0x18
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806CC9C: .4byte 0x03004400
_0806CCA0: .4byte 0x03004500
