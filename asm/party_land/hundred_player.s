	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .text
	.ARM
	.syntax unified

	thumb_func_start sub_0805EC78
sub_0805EC78: @ 0x0805EC78
	push {lr}
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805EC9C
	ldr r2, _0805EC94 @ =0x030024E0
	ldrh r1, [r2]
	ldr r0, _0805EC98 @ =0x0000FBFF
	ands r0, r1
	movs r3, #0x80
	lsls r3, r3, #2
	adds r1, r3, #0
	orrs r0, r1
	b _0805ECAC
	.align 2, 0
_0805EC94: .4byte 0x030024E0
_0805EC98: .4byte 0x0000FBFF
_0805EC9C:
	ldr r2, _0805ECB4 @ =0x030024E0
	ldrh r1, [r2]
	movs r3, #0x80
	lsls r3, r3, #3
	adds r0, r3, #0
	orrs r0, r1
	ldr r1, _0805ECB8 @ =0x0000FDFF
	ands r0, r1
_0805ECAC:
	strh r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0
_0805ECB4: .4byte 0x030024E0
_0805ECB8: .4byte 0x0000FDFF

	thumb_func_start sub_0805ECBC
sub_0805ECBC: @ 0x0805ECBC
	push {r4, r5, lr}
	ldr r4, _0805ECF8 @ =0x030024E0
	movs r5, #0
	movs r0, #0xf0
	lsls r0, r0, #5
	strh r0, [r4, #6]
	ldr r0, _0805ECFC @ =0x08134860
	ldr r1, _0805ED00 @ =0x05000080
	bl LoadPalette_08008308
	ldr r0, _0805ED04 @ =0x0813496C
	ldr r1, _0805ED08 @ =0x06002000
	bl DecompressData_08008374
	ldr r0, _0805ED0C @ =0x08134884
	ldr r1, _0805ED10 @ =0x0600F000
	movs r2, #0x80
	lsls r2, r2, #1
	movs r3, #4
	bl LoadTileMap_080083CC
	strh r5, [r4, #0xe]
	ldr r0, _0805ED14 @ =0x0000FFE8
	strh r0, [r4, #0x16]
	movs r0, #0
	bl sub_0805EC78
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805ECF8: .4byte 0x030024E0
_0805ECFC: .4byte 0x08134860
_0805ED00: .4byte 0x05000080
_0805ED04: .4byte 0x0813496C
_0805ED08: .4byte 0x06002000
_0805ED0C: .4byte 0x08134884
_0805ED10: .4byte 0x0600F000
_0805ED14: .4byte 0x0000FFE8

	thumb_func_start sub_0805ED18
sub_0805ED18: @ 0x0805ED18
	push {r4, r5, r6, r7, lr}
	ldr r0, _0805ED48 @ =0x0808FD58
	movs r1, #0x1e
	bl sub_08061FBC
	bl sub_080612A4
	movs r0, #0
	bl sub_080613CC
	movs r0, #1
	bl sub_080059E4
	ldr r0, _0805ED4C @ =0x00440023
	bl sub_080062D0
	bl sub_08062848
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	movs r6, #1
	rsbs r6, r6, #0
	ldr r7, _0805ED50 @ =0x03004400
	b _0805EDE8
	.align 2, 0
_0805ED48: .4byte 0x0808FD58
_0805ED4C: .4byte 0x00440023
_0805ED50: .4byte 0x03004400
_0805ED54:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0805EDB8
	adds r0, r4, #0
	bl sub_08001A00
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805ED7C
	movs r0, #0xd2
	bl m4aSongNumStart
	ldr r0, _0805ED78 @ =0x00440036
	bl sub_080062D0
	b _0805EDB2
	.align 2, 0
_0805ED78: .4byte 0x00440036
_0805ED7C:
	movs r0, #0
	bl sub_08061124
	movs r0, #5
	adds r1, r4, #0
	bl sub_08005BE0
	ldr r0, _0805EDA4 @ =0x00440026
	bl sub_080062D0
	ldr r0, _0805EDA8 @ =0x00440027
	bl sub_0800648C
	bl sub_080064F8
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805EDAC
	strb r4, [r7, #0xd]
	b _0805EE04
	.align 2, 0
_0805EDA4: .4byte 0x00440026
_0805EDA8: .4byte 0x00440027
_0805EDAC:
	movs r0, #1
	bl sub_08061124
_0805EDB2:
	ldr r0, _0805EE28 @ =0x00440023
	bl sub_080062D0
_0805EDB8:
	bl sub_08062648
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r0, _0805EE2C @ =0x0808FD58
	adds r0, r4, r0
	ldrb r5, [r0]
	cmp r6, r4
	beq _0805EDE2
	adds r0, r5, #0
	bl sub_08001A00
	lsls r0, r0, #0x18
	movs r1, #0xff
	cmp r0, #0
	beq _0805EDDA
	adds r1, r5, #0
_0805EDDA:
	adds r0, r1, #0
	bl sub_0806083C
	adds r6, r4, #0
_0805EDE2:
	movs r0, #1
	bl ProcSleep_08002B98
_0805EDE8:
	ldr r0, _0805EE2C @ =0x0808FD58
	adds r0, r4, r0
	ldrb r4, [r0]
	ldr r0, _0805EE30 @ =0x030024B0
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0805ED54
	movs r0, #0xce
	bl m4aSongNumStart
	movs r0, #0xff
	strb r0, [r7, #0xd]
_0805EE04:
	bl sub_08005A2C
	bl sub_08060950
	bl sub_080612E4
	bl sub_08061490
	bl sub_08062180
	ldr r0, _0805EE34 @ =0x030024E0
	ldr r1, _0805EE38 @ =0x0000FFD0
	strh r1, [r0, #0xc]
	adds r1, #0x18
	strh r1, [r0, #0x14]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805EE28: .4byte 0x00440023
_0805EE2C: .4byte 0x0808FD58
_0805EE30: .4byte 0x030024B0
_0805EE34: .4byte 0x030024E0
_0805EE38: .4byte 0x0000FFD0

	thumb_func_start sub_0805EE3C
sub_0805EE3C: @ 0x0805EE3C
	push {r4, r5, lr}
	sub sp, #4
	movs r4, #0
	ldr r5, _0805EE80 @ =0x0600A000
_0805EE44:
	movs r1, #0x2c
	cmp r4, #0xa
	beq _0805EE52
	adds r1, r4, #0
	cmp r4, #0xb
	bne _0805EE52
	movs r1, #0x2b
_0805EE52:
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r0, #1
	str r0, [sp]
	adds r0, r5, #0
	movs r2, #2
	movs r3, #0
	bl sub_08004BB8
	adds r4, #1
	adds r5, #0x20
	cmp r4, #0xb
	ble _0805EE44
	ldr r0, _0805EE84 @ =0x030024E0
	ldr r1, _0805EE88 @ =0x0000FFD0
	strh r1, [r0, #0xc]
	adds r1, #0x18
	strh r1, [r0, #0x14]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805EE80: .4byte 0x0600A000
_0805EE84: .4byte 0x030024E0
_0805EE88: .4byte 0x0000FFD0

	thumb_func_start sub_0805EE8C
sub_0805EE8C: @ 0x0805EE8C
	push {lr}
	sub sp, #4
	movs r0, #0
	str r0, [sp]
	ldr r1, _0805EEA4 @ =0x0600D000
	ldr r2, _0805EEA8 @ =0x01000200
	mov r0, sp
	bl CpuFastSet
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_0805EEA4: .4byte 0x0600D000
_0805EEA8: .4byte 0x01000200

	thumb_func_start sub_0805EEAC
sub_0805EEAC: @ 0x0805EEAC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov r8, r1
	movs r1, #0xe0
	lsls r1, r1, #8
	mov sl, r1
	ldr r6, _0805EF4C @ =0x00989680
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x12
	ldr r2, _0805EF50 @ =0x0600D014
	adds r5, r0, r2
	movs r0, #0
	mov sb, r0
	movs r7, #0
_0805EECE:
	mov r0, r8
	adds r1, r6, #0
	bl __udivsi3
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	mov r0, r8
	adds r1, r6, #0
	bl __umodsi3
	mov r8, r0
	adds r0, r6, #0
	movs r1, #0xa
	bl __udivsi3
	adds r6, r0, #0
	cmp r4, #0
	beq _0805EEF6
	movs r1, #1
	mov sb, r1
_0805EEF6:
	mov r2, sb
	cmp r2, #0
	bne _0805EF00
	cmp r6, #0
	bne _0805EECE
_0805EF00:
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r4, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r0, r4, #0
	mov r2, sl
	orrs r0, r2
	strh r0, [r5]
	adds r1, r5, #0
	adds r1, #0x40
	adds r0, r4, #0
	adds r0, #0x20
	orrs r0, r2
	strh r0, [r1]
	adds r5, #2
	adds r7, #1
	cmp r6, #0
	bne _0805EECE
	cmp r7, #8
	bgt _0805EF3C
	movs r1, #0
_0805EF2C:
	strh r1, [r5]
	adds r0, r5, #0
	adds r0, #0x40
	strh r1, [r0]
	adds r5, #2
	adds r7, #1
	cmp r7, #8
	ble _0805EF2C
_0805EF3C:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805EF4C: .4byte 0x00989680
_0805EF50: .4byte 0x0600D014

	thumb_func_start sub_0805EF54
sub_0805EF54: @ 0x0805EF54
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	sub sp, #8
	adds r4, r0, #0
	mov sl, r1
	mov r8, r2
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	mov r0, r8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	lsls r6, r4, #6
	adds r6, #1
	add r6, r8
	mov r0, sl
	movs r1, #0
	bl sub_080045FC
	adds r5, r0, #0
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	lsls r0, r6, #5
	ldr r1, _0805EFC4 @ =0x06008000
	adds r0, r0, r1
	movs r1, #1
	mov sb, r1
	str r1, [sp]
	mov r1, sl
	movs r2, #2
	movs r3, #0
	bl sub_08004D94
	lsls r4, r4, #0x19
	lsrs r4, r4, #0x18
	str r5, [sp]
	mov r0, sb
	str r0, [sp, #4]
	movs r0, #0x1a
	adds r1, r6, #0
	mov r2, r8
	adds r3, r4, #0
	bl sub_08004FD4
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805EFC4: .4byte 0x06008000

	thumb_func_start sub_0805EFC8
sub_0805EFC8: @ 0x0805EFC8
	push {r4, r5, r6, lr}
	sub sp, #0x20
	adds r4, r1, #0
	lsls r0, r0, #0x18
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	mov r2, sp
	ldr r1, _0805F008 @ =0x0808FD78
	ldm r1!, {r3, r5, r6}
	stm r2!, {r3, r5, r6}
	ldm r1!, {r3, r5, r6}
	stm r2!, {r3, r5, r6}
	ldm r1!, {r3, r5}
	stm r2!, {r3, r5}
	lsls r1, r4, #2
	lsrs r0, r0, #0x14
	adds r1, r1, r0
	mov r6, sp
	adds r0, r6, r1
	ldr r0, [r0]
	bl sub_08006828
	adds r1, r0, #0
	adds r0, r4, #0
	movs r2, #0
	bl sub_0805EF54
	add sp, #0x20
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805F008: .4byte 0x0808FD78

	thumb_func_start sub_0805F00C
sub_0805F00C: @ 0x0805F00C
	push {r4, lr}
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #1
	bhi _0805F018
	movs r4, #2
_0805F018:
	cmp r4, #0x64
	bls _0805F01E
	movs r4, #0x64
_0805F01E:
	movs r0, #0
	movs r1, #0
	bl sub_0805EFC8
	movs r0, #0
	adds r1, r4, #0
	bl sub_0805EEAC
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0805F034
sub_0805F034: @ 0x0805F034
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #1
	bl sub_0805EFC8
	ldr r0, _0805F058 @ =0x03004400
	ldrb r0, [r0, #0xd]
	bl sub_08001980
	adds r1, r0, #0
	movs r0, #1
	movs r2, #0xa
	bl sub_0805EF54
	pop {r0}
	bx r0
	.align 2, 0
_0805F058: .4byte 0x03004400

	thumb_func_start sub_0805F05C
sub_0805F05C: @ 0x0805F05C
	push {r4, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	movs r1, #3
	bl sub_0805EFC8
	cmp r4, #0
	bne _0805F088
	ldr r0, _0805F084 @ =0x00440018
	bl sub_08006828
	adds r1, r0, #0
	movs r0, #3
	movs r2, #0xa
	bl sub_0805EF54
	b _0805F090
	.align 2, 0
_0805F084: .4byte 0x00440018
_0805F088:
	movs r0, #3
	adds r1, r4, #0
	bl sub_0805EEAC
_0805F090:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0805F098
sub_0805F098: @ 0x0805F098
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r1, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #2
	bl sub_0805EFC8
	ldr r0, _0805F0C4 @ =0x03004400
	ldrb r0, [r0, #0xd]
	bl sub_08001B00
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0805F0C8
	cmp r0, #2
	beq _0805F0D2
	b _0805F1F6
	.align 2, 0
_0805F0C4: .4byte 0x03004400
_0805F0C8:
	movs r0, #2
	adds r1, r6, #0
	bl sub_0805EEAC
	b _0805F1F6
_0805F0D2:
	ldr r0, _0805F204 @ =0x00008C9F
	cmp r6, r0
	bls _0805F0DA
	adds r6, r0, #0
_0805F0DA:
	adds r0, r6, #0
	movs r1, #0x3c
	bl __umodsi3
	ldr r1, _0805F208 @ =0x00000683
	muls r0, r1, r0
	movs r1, #0xfa
	lsls r1, r1, #2
	bl __udivsi3
	mov sb, r0
	cmp r0, #0x62
	bne _0805F0F8
	movs r0, #0x63
	mov sb, r0
_0805F0F8:
	movs r5, #0xe1
	lsls r5, r5, #4
	adds r0, r6, #0
	adds r1, r5, #0
	bl __udivsi3
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r0, r6, #0
	adds r1, r5, #0
	bl __umodsi3
	movs r1, #0x3c
	bl __udivsi3
	adds r5, r0, #0
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	ldr r7, _0805F20C @ =0x0600D114
	movs r1, #0x80
	lsls r1, r1, #1
	mov r8, r1
	mov r1, r8
	orrs r1, r4
	movs r2, #0xe0
	lsls r2, r2, #8
	adds r6, r2, #0
	adds r0, r1, #0
	orrs r0, r6
	strh r0, [r7]
	adds r0, r7, #0
	adds r0, #0x40
	adds r1, #0x20
	ldr r2, _0805F210 @ =0xFFFFE000
	adds r4, r2, #0
	orrs r1, r4
	strh r1, [r0]
	adds r7, #2
	movs r2, #0x85
	lsls r2, r2, #1
	adds r0, r2, #0
	orrs r0, r6
	strh r0, [r7]
	adds r1, r7, #0
	adds r1, #0x40
	adds r0, r2, #0
	adds r0, #0x20
	orrs r0, r4
	strh r0, [r1]
	adds r7, #2
	adds r0, r5, #0
	movs r1, #0xa
	bl __udivsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r1, r8
	orrs r0, r1
	adds r1, r0, #0
	orrs r1, r6
	strh r1, [r7]
	adds r1, r7, #0
	adds r1, #0x40
	adds r0, #0x20
	orrs r0, r4
	strh r0, [r1]
	adds r7, #2
	adds r0, r5, #0
	movs r1, #0xa
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r2, r8
	orrs r0, r2
	adds r1, r0, #0
	orrs r1, r6
	strh r1, [r7]
	adds r1, r7, #0
	adds r1, #0x40
	adds r0, #0x20
	orrs r0, r4
	strh r0, [r1]
	adds r7, #2
	ldr r2, _0805F214 @ =0x0000010B
	adds r0, r2, #0
	orrs r0, r6
	strh r0, [r7]
	adds r1, r7, #0
	adds r1, #0x40
	adds r0, r2, #0
	adds r0, #0x20
	orrs r0, r4
	strh r0, [r1]
	adds r7, #2
	mov r0, sb
	movs r1, #0xa
	bl __udivsi3
	add r0, r8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r0, #0
	orrs r1, r6
	strh r1, [r7]
	adds r1, r7, #0
	adds r1, #0x40
	adds r0, #0x20
	orrs r0, r4
	strh r0, [r1]
	adds r7, #2
	mov r0, sb
	movs r1, #0xa
	bl __umodsi3
	add r0, r8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r0, #0
	orrs r1, r6
	strh r1, [r7]
	adds r1, r7, #0
	adds r1, #0x40
	adds r0, #0x20
	orrs r0, r4
	strh r0, [r1]
_0805F1F6:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805F204: .4byte 0x00008C9F
_0805F208: .4byte 0x00000683
_0805F20C: .4byte 0x0600D114
_0805F210: .4byte 0xFFFFE000
_0805F214: .4byte 0x0000010B

	thumb_func_start sub_0805F218
sub_0805F218: @ 0x0805F218
	push {r4, r5, r6, lr}
	sub sp, #0xc
	movs r5, #0
	movs r4, #0xa0
	lsls r4, r4, #0x13
_0805F222:
	lsrs r2, r4, #0x18
	cmp r5, #0
	bne _0805F22C
	movs r0, #0x10
	b _0805F22E
_0805F22C:
	movs r0, #0x26
_0805F22E:
	str r0, [sp]
	movs r0, #2
	movs r1, #0x64
	movs r3, #0x80
	bl sub_08060D9C
	lsls r1, r5, #2
	add r1, sp
	adds r1, #4
	str r0, [r1]
	lsls r2, r5, #0x18
	lsrs r2, r2, #0x18
	movs r1, #2
	movs r3, #0xff
	bl sub_08060E6C
	movs r0, #0x80
	lsls r0, r0, #0x11
	adds r4, r4, r0
	adds r5, #1
	cmp r5, #1
	ble _0805F222
	movs r5, #2
	movs r4, #2
	ldr r6, _0805F264 @ =0x030024B0
	b _0805F310
	.align 2, 0
_0805F264: .4byte 0x030024B0
_0805F268:
	ldrh r1, [r6, #4]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0805F276
	adds r5, #1
	b _0805F298
_0805F276:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0805F282
	subs r5, #1
	b _0805F298
_0805F282:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0805F28E
	adds r5, #0xa
	b _0805F298
_0805F28E:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0805F298
	subs r5, #0xa
_0805F298:
	cmp r5, #1
	bgt _0805F29E
	movs r5, #2
_0805F29E:
	cmp r5, #0x64
	ble _0805F2A4
	movs r5, #0x64
_0805F2A4:
	ldr r0, [sp, #8]
	movs r2, #2
	eors r2, r5
	rsbs r1, r2, #0
	orrs r1, r2
	lsrs r1, r1, #0x1f
	bl sub_08009A34
	ldr r0, [sp, #4]
	movs r2, #0x64
	eors r2, r5
	rsbs r1, r2, #0
	orrs r1, r2
	lsrs r1, r1, #0x1f
	bl sub_08009A34
	cmp r4, r5
	beq _0805F30A
	movs r0, #0xcb
	bl m4aSongNumStart
	cmp r5, #0x64
	bne _0805F2D6
	movs r1, #8
	b _0805F2E8
_0805F2D6:
	adds r0, r5, #0
	movs r1, #0xa
	bl __divsi3
	rsbs r1, r0, #0
	orrs r1, r0
	asrs r1, r1, #0x1f
	movs r0, #4
	ands r1, r0
_0805F2E8:
	ldr r0, [sp, #4]
	movs r4, #0x80
	orrs r4, r1
	adds r1, r4, #0
	movs r2, #0x10
	bl sub_08009A70
	ldr r0, [sp, #8]
	adds r1, r4, #0
	movs r2, #0x26
	bl sub_08009A70
	movs r0, #0
	adds r1, r5, #0
	bl sub_0805EEAC
	adds r4, r5, #0
_0805F30A:
	movs r0, #1
	bl ProcSleep_08002B98
_0805F310:
	ldrh r1, [r6]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0805F324
	movs r0, #0xce
	bl m4aSongNumStart
	movs r5, #0xff
	b _0805F332
_0805F324:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0805F268
	movs r0, #0xcc
	bl m4aSongNumStart
_0805F332:
	lsls r6, r5, #0x18
	add r4, sp, #4
	movs r5, #1
_0805F338:
	ldr r0, [r4]
	cmp r0, #0
	beq _0805F342
	bl sub_08009A00
_0805F342:
	adds r4, #4
	subs r5, #1
	cmp r5, #0
	bge _0805F338
	lsrs r0, r6, #0x18
	add sp, #0xc
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	
	thumb_func_start sub_0805F354
sub_0805F354: @ 0x0805F354
	push {r4, r5, r6, lr}
	sub sp, #0xc
	add r0, sp, #8
	movs r1, #0
	strh r1, [r0]
	ldr r2, _0805F3A4 @ =0x01000004
	mov r1, sp
	bl CpuSet
	movs r6, #0
	movs r5, #0
_0805F36A:
	ldr r0, _0805F3A8 @ =0x0808FD50
	adds r0, r5, r0
	ldrb r4, [r0]
	adds r0, r4, #0
	bl sub_08001A00
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0805F388
	adds r0, r6, #0
	adds r1, r0, #1
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	add r0, sp
	strb r4, [r0]
_0805F388:
	adds r5, #1
	cmp r5, #7
	ble _0805F36A
	adds r0, r6, #0
	bl sub_0800B828
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	add r0, sp
	ldrb r0, [r0]
	add sp, #0xc
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0805F3A4: .4byte 0x01000004
_0805F3A8: .4byte 0x0808FD50

	thumb_func_start sub_0805F3AC
sub_0805F3AC: @ 0x0805F3AC
	push {r4, r5, lr}
	movs r5, #0
	movs r4, #0
_0805F3B2:
	ldr r0, _0805F3D8 @ =0x0808FD50
	adds r0, r4, r0
	ldrb r0, [r0]
	bl sub_08001A00
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0805F3C8
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_0805F3C8:
	adds r4, #1
	cmp r4, #7
	ble _0805F3B2
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0805F3D8: .4byte 0x0808FD50

	thumb_func_start sub_0805F3DC
sub_0805F3DC: @ 0x0805F3DC
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r4, _0805F450 @ =0x0203A1B0
	movs r0, #0
	strb r0, [r4, #9]
	mov r1, sp
	ldr r2, _0805F454 @ =0x0000FFFF
	adds r0, r2, #0
	strh r0, [r1]
	adds r6, r4, #0
	adds r6, #0xa
	ldr r2, _0805F458 @ =0x01000032
	mov r0, sp
	adds r1, r6, #0
	bl CpuSet
	movs r5, #0
	ldrb r0, [r4, #8]
	cmp r5, r0
	bge _0805F416
	adds r3, r4, #0
	adds r2, r6, #0
_0805F408:
	adds r1, r5, r2
	adds r0, r5, #1
	strb r0, [r1]
	adds r5, r0, #0
	ldrb r0, [r3, #8]
	cmp r5, r0
	blt _0805F408
_0805F416:
	movs r5, #0
	ldr r6, _0805F450 @ =0x0203A1B0
	adds r7, r6, #0
	adds r7, #0xa
_0805F41E:
	ldrb r0, [r6, #8]
	bl sub_0800B828
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r4, r4, r7
	ldrb r0, [r6, #8]
	bl sub_0800B828
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r0, r0, r7
	ldrb r2, [r4]
	ldrb r1, [r0]
	strb r1, [r4]
	strb r2, [r0]
	adds r5, #1
	ldr r0, _0805F45C @ =0x000003E7
	cmp r5, r0
	ble _0805F41E
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805F450: .4byte 0x0203A1B0
_0805F454: .4byte 0x0000FFFF
_0805F458: .4byte 0x01000032
_0805F45C: .4byte 0x000003E7

	thumb_func_start sub_0805F460
sub_0805F460: @ 0x0805F460
	push {r4, r5, lr}
	ldr r2, _0805F490 @ =0x0203A1B0
	ldrb r3, [r2, #8]
	adds r5, r2, #0
	adds r5, #0xa
	movs r4, #0
_0805F46C:
	ldrb r0, [r2, #9]
	adds r1, r0, #1
	strb r1, [r2, #9]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r0, r0, r5
	ldrb r0, [r0]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, r3
	blo _0805F484
	strb r4, [r2, #9]
_0805F484:
	ldrb r1, [r2, #4]
	cmp r0, r1
	beq _0805F46C
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0805F490: .4byte 0x0203A1B0

	thumb_func_start sub_0805F494
sub_0805F494: @ 0x0805F494
	push {r4, r5, r6, lr}
	sub sp, #4
	bl sub_08060708
	ldr r1, _0805F51C @ =0x03004400
	ldrb r0, [r1, #0xa]
	movs r5, #0
	cmp r0, #0x11
	bne _0805F4A8
	movs r5, #6
_0805F4A8:
	ldrb r0, [r1, #8]
	strb r0, [r1, #0xa]
	movs r0, #0xd
	bl sub_080607FC
	bl sub_0805ECBC
	bl sub_08060FF4
	bl sub_0805EE3C
	lsls r0, r5, #0x18
	asrs r1, r0, #0x18
	adds r6, r0, #0
	cmp r1, #6
	bne _0805F4E6
	ldr r4, _0805F520 @ =0x0203A1B0
	ldrb r0, [r4, #8]
	bl sub_0805F00C
	movs r0, #0
	bl sub_0805F034
	ldr r1, [r4]
	movs r0, #0
	bl sub_0805F098
	ldrb r1, [r4, #4]
	movs r0, #0
	bl sub_0805F05C
_0805F4E6:
	movs r0, #8
	bl sub_080077C4
	movs r0, #0x20
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl FadeIn_08008AF4
	ldr r0, _0805F524 @ =0x030024E0
	adds r0, #0x4f
	movs r1, #1
	strb r1, [r0]
	bl sub_08008D34
	movs r0, #0
	bl sub_080059E4
_0805F50A:
	asrs r0, r6, #0x18
	cmp r0, #7
	bls _0805F512
	b _0805F844
_0805F512:
	lsls r0, r0, #2
	ldr r1, _0805F528 @ =_0805F52C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0805F51C: .4byte 0x03004400
_0805F520: .4byte 0x0203A1B0
_0805F524: .4byte 0x030024E0
_0805F528: .4byte _0805F52C
_0805F52C: @ jump table
	.4byte _0805F54C @ case 0
	.4byte _0805F5AC @ case 1
	.4byte _0805F618 @ case 2
	.4byte _0805F684 @ case 3
	.4byte _0805F6A8 @ case 4
	.4byte _0805F6C4 @ case 5
	.4byte _0805F70C @ case 6
	.4byte _0805F7CC @ case 7
_0805F54C:
	movs r0, #0x88
	lsls r0, r0, #0xf
	bl sub_080062D0
	ldr r0, _0805F590 @ =0x00440001
	bl sub_080062D0
	ldr r0, _0805F594 @ =0x00440009
	bl sub_0800648C
	bl sub_080064F8
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	beq _0805F584
	ldr r0, _0805F598 @ =0x00440002
	bl sub_080062D0
	ldr r0, _0805F59C @ =0x00440003
	bl sub_080062D0
	ldr r0, _0805F5A0 @ =0x00440004
	bl sub_080062D0
	ldr r0, _0805F5A4 @ =0x00440005
	bl sub_080062D0
_0805F584:
	ldr r0, _0805F5A8 @ =0x00440006
	bl sub_080062D0
	movs r5, #1
	b _0805F844
	.align 2, 0
_0805F590: .4byte 0x00440001
_0805F594: .4byte 0x00440009
_0805F598: .4byte 0x00440002
_0805F59C: .4byte 0x00440003
_0805F5A0: .4byte 0x00440004
_0805F5A4: .4byte 0x00440005
_0805F5A8: .4byte 0x00440006
_0805F5AC:
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r4, _0805F5F8 @ =0x0203A1B0
	ldr r2, _0805F5FC @ =0x01000038
	mov r0, sp
	adds r1, r4, #0
	bl CpuSet
	bl sub_0805EE8C
	ldrb r0, [r4, #8]
	bl sub_0805F00C
_0805F5C8:
	ldr r0, _0805F600 @ =0x00440007
	bl sub_080062D0
	bl sub_0805F218
	ldr r1, _0805F5F8 @ =0x0203A1B0
	strb r0, [r1, #8]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _0805F60C
	ldr r0, _0805F604 @ =0x00440008
	bl sub_080062D0
	ldr r0, _0805F608 @ =0x00440009
	bl sub_0800648C
	bl sub_080064F8
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805F610
	b _0805F83C
	.align 2, 0
_0805F5F8: .4byte 0x0203A1B0
_0805F5FC: .4byte 0x01000038
_0805F600: .4byte 0x00440007
_0805F604: .4byte 0x00440008
_0805F608: .4byte 0x00440009
_0805F60C:
	movs r5, #2
	b _0805F844
_0805F610:
	movs r0, #1
	bl ProcSleep_08002B98
	b _0805F5C8
_0805F618:
	bl sub_0805F3DC
	bl sub_0805F354
	ldr r1, _0805F63C @ =0x03004400
	movs r4, #0
	strb r0, [r1, #0xd]
	ldrb r0, [r1, #0xd]
	bl sub_08001B00
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bne _0805F648
	ldr r1, _0805F640 @ =0x0203A1B0
	ldr r0, _0805F644 @ =0x00008C9F
	str r0, [r1]
	b _0805F64C
	.align 2, 0
_0805F63C: .4byte 0x03004400
_0805F640: .4byte 0x0203A1B0
_0805F644: .4byte 0x00008C9F
_0805F648:
	ldr r0, _0805F678 @ =0x0203A1B0
	str r4, [r0]
_0805F64C:
	movs r0, #0
	bl sub_0805F034
	ldr r4, _0805F678 @ =0x0203A1B0
	ldr r1, [r4]
	movs r0, #0
	bl sub_0805F098
	ldrb r1, [r4, #4]
	movs r0, #0
	bl sub_0805F05C
	ldr r0, _0805F67C @ =0x03004400
	ldrb r1, [r0, #0xd]
	movs r0, #5
	bl sub_08005BE0
	ldr r0, _0805F680 @ =0x0044000A
	bl sub_080062D0
	movs r5, #3
	b _0805F844
	.align 2, 0
_0805F678: .4byte 0x0203A1B0
_0805F67C: .4byte 0x03004400
_0805F680: .4byte 0x0044000A
_0805F684:
	bl sub_0805F460
	ldr r1, _0805F6A0 @ =0x0203A1B0
	strb r0, [r1, #6]
	ldrb r1, [r1, #6]
	movs r0, #0
	bl sub_08005C10
	ldr r0, _0805F6A4 @ =0x0044000B
	bl sub_080062D0
	movs r5, #4
	b _0805F844
	.align 2, 0
_0805F6A0: .4byte 0x0203A1B0
_0805F6A4: .4byte 0x0044000B
_0805F6A8:
	movs r0, #1
	bl sub_0805EC78
	ldr r0, _0805F6E4 @ =0x0203A1B0
	ldrb r1, [r0, #6]
	movs r0, #0
	bl sub_08005C10
	ldr r0, _0805F6E8 @ =0x0044001B
	bl sub_080062D0
	movs r0, #0
	bl sub_0805EC78
_0805F6C4:
	ldr r4, _0805F6EC @ =0x03004400
	ldrb r0, [r4, #0xd]
	movs r1, #0
	movs r2, #3
	bl sub_08001BA8
	ldrb r0, [r4, #0xd]
	bl sub_08001B00
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bne _0805F6F8
	ldr r1, _0805F6F0 @ =0x02030000
	ldr r0, _0805F6F4 @ =0x00008C9F
	b _0805F6FC
	.align 2, 0
_0805F6E4: .4byte 0x0203A1B0
_0805F6E8: .4byte 0x0044001B
_0805F6EC: .4byte 0x03004400
_0805F6F0: .4byte 0x02030000
_0805F6F4: .4byte 0x00008C9F
_0805F6F8:
	ldr r1, _0805F708 @ =0x02030000
	movs r0, #0
_0805F6FC:
	str r0, [r1, #4]
	movs r0, #0x28
	bl sub_08001930
	movs r0, #0x11
	b _0805F83E
	.align 2, 0
_0805F708: .4byte 0x02030000
_0805F70C:
	bl sub_08001F3C
	adds r4, r0, #0
	ldr r0, _0805F760 @ =0x03004400
	ldrb r0, [r0, #0xd]
	bl sub_08001B00
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r0, #0
	cmp r1, #1
	bne _0805F72C
	ldr r0, _0805F764 @ =0x0203A1B0
	ldr r0, [r0]
	cmp r0, r4
	blo _0805F738
_0805F72C:
	cmp r1, #2
	bne _0805F76C
	ldr r0, _0805F764 @ =0x0203A1B0
	ldr r0, [r0]
	cmp r0, r4
	bls _0805F76C
_0805F738:
	ldr r0, _0805F768 @ =0x0044000C
	bl sub_080062D0
	bl sub_08001F3C
	adds r1, r0, #0
	ldr r4, _0805F764 @ =0x0203A1B0
	str r1, [r4]
	ldrb r0, [r4, #6]
	movs r2, #0
	strb r0, [r4, #4]
	strb r2, [r4, #5]
	movs r0, #0
	bl sub_0805F098
	ldrb r1, [r4, #4]
	movs r0, #0
	bl sub_0805F05C
	b _0805F7A2
	.align 2, 0
_0805F760: .4byte 0x03004400
_0805F764: .4byte 0x0203A1B0
_0805F768: .4byte 0x0044000C
_0805F76C:
	ldr r0, _0805F78C @ =0x0044000D
	bl sub_080062D0
	ldr r1, _0805F790 @ =0x0203A1B0
	ldrb r0, [r1, #4]
	cmp r0, #0
	beq _0805F7A2
	ldrb r0, [r1, #5]
	adds r0, #1
	strb r0, [r1, #5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _0805F794
	movs r5, #7
	b _0805F844
	.align 2, 0
_0805F78C: .4byte 0x0044000D
_0805F790: .4byte 0x0203A1B0
_0805F794:
	ldrb r1, [r1, #4]
	movs r0, #0
	bl sub_08005C10
	ldr r0, _0805F7C0 @ =0x0044001A
	bl sub_080062D0
_0805F7A2:
	ldr r0, _0805F7C4 @ =0x0044000E
	bl sub_080062D0
	ldr r0, _0805F7C8 @ =0x0044000F
	bl sub_0800648C
	bl sub_080064F8
	lsls r0, r0, #0x18
	movs r5, #7
	cmp r0, #0
	bne _0805F844
	movs r5, #3
	b _0805F844
	.align 2, 0
_0805F7C0: .4byte 0x0044001A
_0805F7C4: .4byte 0x0044000E
_0805F7C8: .4byte 0x0044000F
_0805F7CC:
	ldr r0, _0805F7E4 @ =0x00440010
	bl sub_080062D0
	ldr r4, _0805F7E8 @ =0x0203A1B0
	ldrb r0, [r4, #4]
	cmp r0, #0
	bne _0805F7F0
	ldr r0, _0805F7EC @ =0x00440019
	bl sub_080062D0
	b _0805F81C
	.align 2, 0
_0805F7E4: .4byte 0x00440010
_0805F7E8: .4byte 0x0203A1B0
_0805F7EC: .4byte 0x00440019
_0805F7F0:
	movs r0, #0
	bl sub_080077D4
	movs r0, #0x71
	bl m4aSongNumStart
	movs r0, #1
	bl sub_08007828
	movs r0, #8
	bl sub_080077C4
	ldrb r1, [r4, #4]
	movs r0, #0
	bl sub_08005C10
	ldr r0, _0805F830 @ =0x00440011
	bl sub_080062D0
	ldr r0, _0805F834 @ =0x00440012
	bl sub_080062D0
_0805F81C:
	ldr r0, _0805F838 @ =0x00440013
	bl sub_0800648C
	bl sub_080064F8
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805F83C
	movs r5, #1
	b _0805F844
	.align 2, 0
_0805F830: .4byte 0x00440011
_0805F834: .4byte 0x00440012
_0805F838: .4byte 0x00440013
_0805F83C:
	movs r0, #0x2a
_0805F83E:
	bl ChangeGameState_08008790
	movs r5, #0xff
_0805F844:
	lsls r0, r5, #0x18
	asrs r2, r0, #0x18
	movs r1, #1
	rsbs r1, r1, #0
	adds r6, r0, #0
	cmp r2, r1
	beq _0805F85A
	movs r0, #1
	bl ProcSleep_08002B98
	b _0805F50A
_0805F85A:
	bl sub_08005A2C
	ldr r0, _0805F894 @ =0x03004400
	ldrb r0, [r0, #9]
	cmp r0, #0x11
	bne _0805F86E
	movs r0, #0
	movs r1, #0x20
	bl sub_080077EC
_0805F86E:
	movs r0, #0x20
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl FadeOut_080089E8
	bl sub_08008D34
	bl sub_0806102C
	bl sub_080607BC
	bl sub_08002B0C
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805F894: .4byte 0x03004400

	thumb_func_start sub_0805F898
sub_0805F898: @ 0x0805F898
	push {r4, r5, r6, lr}
	sub sp, #4
	bl sub_08060708
	ldr r1, _0805F8B8 @ =0x03004400
	ldrb r0, [r1, #0xa]
	cmp r0, #0x11
	bne _0805F8C4
	ldrb r0, [r1, #0xd]
	cmp r0, #0x24
	bne _0805F8C0
	ldr r0, _0805F8BC @ =0x020335B8
	ldrb r0, [r0, #7]
	strb r0, [r1, #0xd]
	movs r5, #6
	b _0805F8C6
	.align 2, 0
_0805F8B8: .4byte 0x03004400
_0805F8BC: .4byte 0x020335B8
_0805F8C0:
	movs r5, #4
	b _0805F8C6
_0805F8C4:
	movs r5, #0
_0805F8C6:
	ldr r0, _0805F92C @ =0x03004400
	ldrb r1, [r0, #8]
	strb r1, [r0, #0xa]
	movs r0, #0xe
	bl sub_080607FC
	bl sub_0805ECBC
	bl sub_0805EE3C
	lsls r0, r5, #0x18
	adds r6, r0, #0
	cmp r6, #0
	beq _0805F8FA
	movs r0, #1
	bl sub_0805F034
	ldr r4, _0805F930 @ =0x020335B8
	ldr r1, [r4]
	movs r0, #1
	bl sub_0805F098
	ldrb r1, [r4, #4]
	movs r0, #1
	bl sub_0805F05C
_0805F8FA:
	movs r0, #8
	bl sub_080077C4
	movs r0, #0x20
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl FadeIn_08008AF4
	ldr r0, _0805F934 @ =0x030024E0
	adds r0, #0x4f
	movs r1, #1
	strb r1, [r0]
	bl sub_08008D34
_0805F918:
	asrs r0, r6, #0x18
	cmp r0, #6
	bls _0805F920
	b _0805FC88
_0805F920:
	lsls r0, r0, #2
	ldr r1, _0805F938 @ =_0805F93C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0805F92C: .4byte 0x03004400
_0805F930: .4byte 0x020335B8
_0805F934: .4byte 0x030024E0
_0805F938: .4byte _0805F93C
_0805F93C: @ jump table
	.4byte _0805F958 @ case 0
	.4byte _0805F9C4 @ case 1
	.4byte _0805FA90 @ case 2
	.4byte _0805FAA2 @ case 3
	.4byte _0805FAD0 @ case 4
	.4byte _0805FBC0 @ case 5
	.4byte _0805FC68 @ case 6
_0805F958:
	movs r0, #1
	bl sub_080059E4
	ldr r0, _0805F9A4 @ =0x0044001C
	bl sub_080062D0
	ldr r0, _0805F9A8 @ =0x0044001D
	bl sub_080062D0
	ldr r0, _0805F9AC @ =0x00440025
	bl sub_0800648C
	bl sub_080064F8
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	beq _0805F994
	ldr r0, _0805F9B0 @ =0x0044001E
	bl sub_080062D0
	ldr r0, _0805F9B4 @ =0x0044001F
	bl sub_080062D0
	ldr r0, _0805F9B8 @ =0x00440020
	bl sub_080062D0
	ldr r0, _0805F9BC @ =0x00440021
	bl sub_080062D0
_0805F994:
	ldr r0, _0805F9C0 @ =0x00440022
	bl sub_080062D0
	bl sub_08005A2C
	movs r5, #1
	b _0805FC88
	.align 2, 0
_0805F9A4: .4byte 0x0044001C
_0805F9A8: .4byte 0x0044001D
_0805F9AC: .4byte 0x00440025
_0805F9B0: .4byte 0x0044001E
_0805F9B4: .4byte 0x0044001F
_0805F9B8: .4byte 0x00440020
_0805F9BC: .4byte 0x00440021
_0805F9C0: .4byte 0x00440022
_0805F9C4:
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r4, _0805F9EC @ =0x020335B8
	ldr r2, _0805F9F0 @ =0x01000004
	mov r0, sp
	adds r1, r4, #0
	bl CpuSet
	bl sub_0805EE8C
	bl sub_08060F7C
	bl sub_08061D7C
	movs r0, #0
	bl sub_08061DA0
	ldr r5, _0805F9F4 @ =0x03004400
	b _0805FA50
	.align 2, 0
_0805F9EC: .4byte 0x020335B8
_0805F9F0: .4byte 0x01000004
_0805F9F4: .4byte 0x03004400
_0805F9F8:
	movs r0, #1
	bl ProcSleep_08002B98
	ldrb r0, [r5, #0xd]
	bl sub_08001B00
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bne _0805FA14
	ldr r0, _0805FA10 @ =0x00008C9F
	b _0805FA16
	.align 2, 0
_0805FA10: .4byte 0x00008C9F
_0805FA14:
	movs r0, #0
_0805FA16:
	str r0, [r4]
	movs r0, #1
	bl sub_0805F034
	ldr r1, [r4]
	movs r0, #1
	bl sub_0805F098
	ldrb r1, [r4, #4]
	movs r0, #1
	bl sub_0805F05C
	ldrb r1, [r5, #0xd]
	movs r0, #5
	bl sub_08005BE0
	ldr r0, _0805FA48 @ =0x00440028
	bl sub_080062D0
	ldr r0, _0805FA4C @ =0x00440029
	bl sub_080062D0
	movs r5, #3
	b _0805FA7E
	.align 2, 0
_0805FA48: .4byte 0x00440028
_0805FA4C: .4byte 0x00440029
_0805FA50:
	bl sub_0805ED18
	movs r0, #1
	bl sub_080059E4
	ldrb r0, [r5, #0xd]
	cmp r0, #0xff
	bne _0805F9F8
	ldr r0, _0805FA88 @ =0x00440024
	bl sub_080062D0
	ldr r0, _0805FA8C @ =0x00440025
	bl sub_0800648C
	bl sub_080064F8
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805FA50
	movs r0, #0x2a
	bl ChangeGameState_08008790
	movs r5, #0xff
_0805FA7E:
	bl sub_08061E30
	bl sub_08060FA0
	b _0805FC88
	.align 2, 0
_0805FA88: .4byte 0x00440024
_0805FA8C: .4byte 0x00440025
_0805FA90:
	movs r0, #1
	bl sub_0805EC78
	ldr r0, _0805FAC0 @ =0x0044003E
	bl sub_080062D0
	movs r0, #0
	bl sub_0805EC78
_0805FAA2:
	ldr r0, _0805FAC4 @ =0x03004400
	ldrb r0, [r0, #0xd]
	movs r1, #0
	movs r2, #3
	bl sub_08001BA8
	ldr r1, _0805FAC8 @ =0x02030000
	ldr r0, _0805FACC @ =0x020335B8
	ldr r0, [r0]
	str r0, [r1, #4]
	movs r0, #0x29
	bl sub_08001930
	movs r0, #0x11
	b _0805FC82
	.align 2, 0
_0805FAC0: .4byte 0x0044003E
_0805FAC4: .4byte 0x03004400
_0805FAC8: .4byte 0x02030000
_0805FACC: .4byte 0x020335B8
_0805FAD0:
	movs r0, #1
	bl sub_080059E4
	ldr r5, _0805FB10 @ =0x020335B8
	ldrb r0, [r5, #6]
	cmp r0, #0
	bne _0805FB20
	bl sub_08001F3C
	adds r1, r0, #0
	str r1, [r5]
	movs r0, #1
	bl sub_0805F098
	ldrb r1, [r5, #4]
	movs r0, #1
	bl sub_0805F05C
	ldr r0, _0805FB14 @ =0x00440037
	bl sub_080062D0
	ldr r0, _0805FB18 @ =0x0044002A
	bl sub_080062D0
	ldr r0, _0805FB1C @ =0x0044002B
	bl sub_080062D0
	movs r0, #1
	strb r0, [r5, #6]
	movs r5, #2
	b _0805FC88
	.align 2, 0
_0805FB10: .4byte 0x020335B8
_0805FB14: .4byte 0x00440037
_0805FB18: .4byte 0x0044002A
_0805FB1C: .4byte 0x0044002B
_0805FB20:
	bl sub_08001F3C
	adds r4, r0, #0
	ldr r0, _0805FB58 @ =0x03004400
	ldrb r0, [r0, #0xd]
	bl sub_08001B00
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #1
	bne _0805FB3C
	ldr r0, [r5]
	cmp r0, r4
	blo _0805FB46
_0805FB3C:
	cmp r1, #2
	bne _0805FB64
	ldr r0, [r5]
	cmp r0, r4
	bls _0805FB64
_0805FB46:
	ldr r0, _0805FB5C @ =0x0044002D
	bl sub_080062D0
	ldr r0, _0805FB60 @ =0x00440030
	bl sub_080062D0
_0805FB52:
	movs r5, #5
	b _0805FC88
	.align 2, 0
_0805FB58: .4byte 0x03004400
_0805FB5C: .4byte 0x0044002D
_0805FB60: .4byte 0x00440030
_0805FB64:
	ldr r0, _0805FBAC @ =0x0044002C
	bl sub_080062D0
	ldr r4, _0805FBB0 @ =0x020335B8
	ldrh r1, [r4, #4]
	adds r1, #1
	strh r1, [r4, #4]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r0, #1
	bl sub_0805F05C
	ldrh r1, [r4, #4]
	cmp r1, #0x63
	bhi _0805FB52
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r0, #1
	bl sub_0805F05C
	ldr r0, _0805FBB4 @ =0x0044002E
	bl sub_080062D0
	ldr r0, _0805FBB8 @ =0x0044002F
	bl sub_0800648C
	bl sub_080064F8
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805FB52
	ldr r0, _0805FBBC @ =0x00440038
	bl sub_080062D0
	movs r5, #2
	b _0805FC88
	.align 2, 0
_0805FBAC: .4byte 0x0044002C
_0805FBB0: .4byte 0x020335B8
_0805FBB4: .4byte 0x0044002E
_0805FBB8: .4byte 0x0044002F
_0805FBBC: .4byte 0x00440038
_0805FBC0:
	ldr r4, _0805FBDC @ =0x020335B8
	ldrh r0, [r4, #4]
	cmp r0, #0x63
	bhi _0805FBE8
	adds r1, r0, #0
	movs r0, #0
	bl sub_08005C10
	ldr r0, _0805FBE0 @ =0x00440039
	bl sub_080062D0
	ldr r0, _0805FBE4 @ =0x00440031
	b _0805FC56
	.align 2, 0
_0805FBDC: .4byte 0x020335B8
_0805FBE0: .4byte 0x00440039
_0805FBE4: .4byte 0x00440031
_0805FBE8:
	movs r0, #0
	bl sub_080077D4
	movs r0, #0x71
	bl m4aSongNumStart
	movs r0, #1
	bl sub_08007828
	movs r0, #8
	bl sub_080077C4
	ldr r0, _0805FC40 @ =0x0044003A
	bl sub_080062D0
	ldr r0, _0805FC44 @ =0x0044003B
	bl sub_080062D0
	ldr r0, _0805FC48 @ =0x0044003C
	bl sub_080062D0
	ldr r0, _0805FC4C @ =0x0044002F
	bl sub_0800648C
	bl sub_080064F8
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805FC54
	ldr r0, _0805FC50 @ =0x03004400
	ldrb r0, [r0, #0xd]
	strb r0, [r4, #7]
	movs r0, #0x24
	bl sub_08001B64
	movs r0, #0x29
	bl sub_08001930
	movs r0, #0x11
	bl ChangeGameState_08008790
	movs r5, #0xff
	b _0805FC5C
	.align 2, 0
_0805FC40: .4byte 0x0044003A
_0805FC44: .4byte 0x0044003B
_0805FC48: .4byte 0x0044003C
_0805FC4C: .4byte 0x0044002F
_0805FC50: .4byte 0x03004400
_0805FC54:
	ldr r0, _0805FC64 @ =0x0044003D
_0805FC56:
	bl sub_080062D0
	movs r5, #6
_0805FC5C:
	bl sub_08005A2C
	b _0805FC88
	.align 2, 0
_0805FC64: .4byte 0x0044003D
_0805FC68:
	ldr r0, _0805FC7C @ =0x00440032
	bl sub_0800648C
	bl sub_080064F8
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805FC80
	movs r5, #1
	b _0805FC88
	.align 2, 0
_0805FC7C: .4byte 0x00440032
_0805FC80:
	movs r0, #0x2a
_0805FC82:
	bl ChangeGameState_08008790
	movs r5, #0xff
_0805FC88:
	lsls r0, r5, #0x18
	asrs r2, r0, #0x18
	movs r1, #1
	rsbs r1, r1, #0
	adds r6, r0, #0
	cmp r2, r1
	beq _0805FC9E
	movs r0, #1
	bl ProcSleep_08002B98
	b _0805F918
_0805FC9E:
	bl sub_08005A2C
	ldr r0, _0805FCD4 @ =0x03004400
	ldrb r0, [r0, #9]
	cmp r0, #0x11
	bne _0805FCB2
	movs r0, #0
	movs r1, #0x20
	bl sub_080077EC
_0805FCB2:
	movs r0, #0x20
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl FadeOut_080089E8
	bl sub_08008D34
	bl sub_080607BC
	bl sub_08002B0C
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805FCD4: .4byte 0x03004400
