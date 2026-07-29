	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .text
	.ARM
	.syntax unified

	.ALIGN 2, 0

	thumb_func_start sub_02007944
sub_02007944: @ 0x02007944
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	ldr r5, _02007978 @ =0x0202E680
	ldr r7, _0200797C @ =0x0202E688
_0200794E:
	subs r5, #1
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_0200967C
	ldr r1, [r7]
	adds r1, r1, r0
	ldrb r0, [r1]
	strb r0, [r5]
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_02009604
	adds r4, r0, #0
	cmp r4, #0
	bne _0200794E
	adds r0, r5, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_02007978: .4byte 0x0202E680
_0200797C: .4byte 0x0202E688

	thumb_func_start sub_02007980
sub_02007980: @ 0x02007980
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r6, r1, #0
	mov sb, r2
	movs r0, #0
	mov r8, r0
	mov sl, r0
_02007996:
	ldrb r2, [r6]
	adds r6, #1
	cmp r2, #0x25
	beq _020079A6
	cmp r2, #0
	bne _020079A4
	b _02007E3C
_020079A4:
	b _02007C2C
_020079A6:
	movs r4, #0
	ldr r7, _020079C8 @ =0x0202E684
	strb r4, [r7]
	ldr r3, _020079CC @ =0x0202E688
	ldr r0, _020079D0 @ =gUnknown_0200B434
	mov ip, r0
_020079B2:
	ldrb r2, [r6]
	adds r0, r2, #0
	subs r0, #0x20
	adds r6, #1
	cmp r0, #0x10
	bhi _02007A40
	lsls r0, r0, #2
	ldr r1, _020079D4 @ =_020079D8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_020079C8: .4byte 0x0202E684
_020079CC: .4byte 0x0202E688
_020079D0: .4byte gUnknown_0200B434
_020079D4: .4byte _020079D8
_020079D8: @ jump table
	.4byte _02007A2E @ case 0
	.4byte _02007A40 @ case 1
	.4byte _02007A40 @ case 2
	.4byte _02007A34 @ case 3
	.4byte _02007A40 @ case 4
	.4byte _02007A40 @ case 5
	.4byte _02007A40 @ case 6
	.4byte _02007A40 @ case 7
	.4byte _02007A40 @ case 8
	.4byte _02007A40 @ case 9
	.4byte _02007A40 @ case 10
	.4byte _02007A22 @ case 11
	.4byte _02007A40 @ case 12
	.4byte _02007A1C @ case 13
	.4byte _02007A40 @ case 14
	.4byte _02007A40 @ case 15
	.4byte _02007A28 @ case 16
_02007A1C:
	movs r0, #1
	orrs r4, r0
	b _020079B2
_02007A22:
	movs r0, #2
	orrs r4, r0
	b _020079B2
_02007A28:
	movs r0, #4
	orrs r4, r0
	b _020079B2
_02007A2E:
	movs r0, #8
	orrs r4, r0
	b _020079B2
_02007A34:
	movs r0, #1
	ldr r1, _02007A3C @ =0x0202E684
	strb r0, [r1]
	b _020079B2
	.align 2, 0
_02007A3C: .4byte 0x0202E684
_02007A40:
	cmp r2, #0x2a
	bne _02007A64
	mov r1, sb
	adds r1, #3
	movs r0, #4
	rsbs r0, r0, #0
	ands r1, r0
	adds r7, r1, #4
	mov sb, r7
	ldr r5, [r1]
	cmp r5, #0
	bge _02007A5E
	movs r0, #1
	orrs r4, r0
	rsbs r5, r5, #0
_02007A5E:
	ldrb r2, [r6]
	adds r6, #1
	b _02007A66
_02007A64:
	movs r5, #0
_02007A66:
	movs r7, #0
	cmp r2, #0x2e
	bne _02007A84
	ldrb r2, [r6]
	adds r6, #1
	cmp r2, #0x2a
	bne _02007A84
	mov r1, sb
	adds r1, #3
	movs r0, #4
	rsbs r0, r0, #0
	ands r1, r0
	adds r0, r1, #4
	mov sb, r0
	ldr r7, [r1]
_02007A84:
	adds r0, r2, #0
	subs r0, #0x31
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #8
	bhi _02007A98
	adds r7, r2, #0
	subs r7, #0x30
	ldrb r2, [r6]
	adds r6, #1
_02007A98:
	movs r1, #0
	str r1, [sp]
	mov r0, ip
	str r0, [r3]
	movs r1, #0xa
	str r1, [sp, #4]
_02007AA4:
	adds r0, r2, #0
	subs r0, #0x4c
	cmp r0, #0x2c
	bls _02007AAE
	b _02007C2C
_02007AAE:
	lsls r0, r0, #2
	ldr r1, _02007AB8 @ =_02007ABC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_02007AB8: .4byte _02007ABC
_02007ABC: @ jump table
	.4byte _02007C22 @ case 0
	.4byte _02007C2C @ case 1
	.4byte _02007C2C @ case 2
	.4byte _02007C2C @ case 3
	.4byte _02007C2C @ case 4
	.4byte _02007C2C @ case 5
	.4byte _02007C2C @ case 6
	.4byte _02007C2C @ case 7
	.4byte _02007C2C @ case 8
	.4byte _02007C2C @ case 9
	.4byte _02007C2C @ case 10
	.4byte _02007C2C @ case 11
	.4byte _02007B7C @ case 12
	.4byte _02007C2C @ case 13
	.4byte _02007C2C @ case 14
	.4byte _02007C2C @ case 15
	.4byte _02007C2C @ case 16
	.4byte _02007C2C @ case 17
	.4byte _02007C2C @ case 18
	.4byte _02007C2C @ case 19
	.4byte _02007C2C @ case 20
	.4byte _02007C2C @ case 21
	.4byte _02007C2C @ case 22
	.4byte _02007B90 @ case 23
	.4byte _02007B70 @ case 24
	.4byte _02007C2C @ case 25
	.4byte _02007C2C @ case 26
	.4byte _02007C2C @ case 27
	.4byte _02007C10 @ case 28
	.4byte _02007B70 @ case 29
	.4byte _02007C2C @ case 30
	.4byte _02007C2C @ case 31
	.4byte _02007C14 @ case 32
	.4byte _02007C2C @ case 33
	.4byte _02007BE8 @ case 34
	.4byte _02007B76 @ case 35
	.4byte _02007BFE @ case 36
	.4byte _02007C2C @ case 37
	.4byte _02007C2C @ case 38
	.4byte _02007BB0 @ case 39
	.4byte _02007C2C @ case 40
	.4byte _02007C40 @ case 41
	.4byte _02007C2C @ case 42
	.4byte _02007C2C @ case 43
	.4byte _02007B80 @ case 44
_02007B70:
	movs r0, #1
	str r0, [sp]
	b _02007C40
_02007B76:
	movs r1, #8
	str r1, [sp, #4]
	b _02007B84
_02007B7C:
	ldr r0, _02007B8C @ =gUnknown_0200B448
	str r0, [r3]
_02007B80:
	movs r0, #0x10
	str r0, [sp, #4]
_02007B84:
	movs r0, #0xb
	rsbs r0, r0, #0
	ands r4, r0
	b _02007C40
	.align 2, 0
_02007B8C: .4byte gUnknown_0200B448
_02007B90:
	ldr r1, _02007BAC @ =0x0202E580
	mov r8, r1
	mov r0, sb
	adds r0, #3
	movs r1, #4
	rsbs r1, r1, #0
	ands r0, r1
	adds r7, r0, #4
	mov sb, r7
	ldr r0, [r0]
	mov r1, r8
	strb r0, [r1]
	movs r3, #1
	b _02007DCE
	.align 2, 0
_02007BAC: .4byte 0x0202E580
_02007BB0:
	mov r1, sb
	adds r1, #3
	movs r0, #4
	rsbs r0, r0, #0
	ands r1, r0
	adds r0, r1, #4
	mov sb, r0
	ldr r1, [r1]
	mov r8, r1
	cmp r1, #0
	bne _02007BCA
	ldr r1, _02007BE4 @ =gUnknown_0200AFFC
	mov r8, r1
_02007BCA:
	mov r0, r8
	bl sub_0200AEE0
	adds r3, r0, #0
	cmp r7, #0
	bne _02007BD8
	b _02007DCE
_02007BD8:
	cmp r3, r7
	bgt _02007BDE
	b _02007DCE
_02007BDE:
	adds r3, r7, #0
	b _02007DCE
	.align 2, 0
_02007BE4: .4byte gUnknown_0200AFFC
_02007BE8:
	mov r0, sb
	adds r0, #3
	movs r1, #4
	rsbs r1, r1, #0
	ands r0, r1
	adds r7, r0, #4
	mov sb, r7
	ldr r0, [r0]
	mov r1, sl
	str r1, [r0]
	b _02007996
_02007BFE:
	movs r4, #0
	movs r7, #8
	ldr r0, _02007C0C @ =gUnknown_0200B448
	str r0, [r3]
	movs r0, #0x10
	str r0, [sp, #4]
	b _02007C40
	.align 2, 0
_02007C0C: .4byte gUnknown_0200B448
_02007C10:
	movs r0, #0x40
	b _02007C24
_02007C14:
	ldrb r2, [r6]
	adds r6, #1
	cmp r2, #0x6c
	beq _02007C1E
	b _02007AA4
_02007C1E:
	movs r0, #0x20
	b _02007C24
_02007C22:
	movs r0, #0x80
_02007C24:
	orrs r4, r0
	ldrb r2, [r6]
	adds r6, #1
	b _02007AA4
_02007C2C:
	ldr r1, _02007C3C @ =0x0202E574
	ldr r0, [r1]
	strb r2, [r0]
	adds r0, #1
	str r0, [r1]
	movs r1, #1
	add sl, r1
	b _02007996
	.align 2, 0
_02007C3C: .4byte 0x0202E574
_02007C40:
	cmp r7, #0
	beq _02007C4A
	movs r0, #5
	rsbs r0, r0, #0
	ands r4, r0
_02007C4A:
	movs r0, #0x20
	ands r0, r4
	cmp r0, #0
	bne _02007C96
	mov r1, sb
	adds r1, #3
	movs r0, #4
	rsbs r0, r0, #0
	ands r1, r0
	adds r0, r1, #4
	mov sb, r0
	ldr r1, [r1]
	movs r0, #0x40
	ands r0, r4
	cmp r0, #0
	beq _02007C7A
	ldr r0, [sp]
	cmp r0, #0
	beq _02007C76
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	b _02007C7A
_02007C76:
	lsls r0, r1, #0x10
	lsrs r1, r0, #0x10
_02007C7A:
	ldr r0, [sp]
	cmp r0, #0
	beq _02007C8C
	cmp r1, #0
	bge _02007C8C
	rsbs r1, r1, #0
	movs r0, #0x80
	lsls r0, r0, #1
	orrs r4, r0
_02007C8C:
	adds r0, r1, #0
	ldr r1, [sp, #4]
	bl sub_02007944
	mov r8, r0
_02007C96:
	ldr r0, _02007D08 @ =0x0202E680
	mov r1, r8
	subs r3, r0, r1
	movs r0, #0
	mov ip, r0
	ldr r0, _02007D0C @ =0x0202E684
	ldrb r0, [r0]
	cmp r0, #0
	beq _02007CCA
	ldr r1, [sp, #4]
	cmp r1, #0xa
	beq _02007CCA
	ldr r0, [sp]
	cmp r0, #0
	bne _02007CCA
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #0x30
	beq _02007CCA
	movs r0, #1
	mov ip, r0
	ldr r1, [sp, #4]
	cmp r1, #0x10
	bne _02007CCA
	movs r0, #2
	mov ip, r0
_02007CCA:
	movs r0, #5
	ands r0, r4
	cmp r0, #4
	bne _02007CD4
	adds r7, r5, #0
_02007CD4:
	cmp r7, #0
	beq _02007D6C
	movs r0, #0x85
	lsls r0, r0, #1
	ands r0, r4
	cmp r0, #0
	beq _02007D2E
	subs r7, #1
	movs r1, #0
	cmp r1, #0
	beq _02007D2E
	subs r5, #1
	movs r0, #1
	add sl, r0
	adds r0, #0xff
	ands r0, r4
	cmp r0, #0
	beq _02007D14
	ldr r2, _02007D10 @ =0x0202E574
	ldr r1, [r2]
	movs r0, #0x2d
	strb r0, [r1]
	adds r1, #1
	str r1, [r2]
	b _02007D2A
	.align 2, 0
_02007D08: .4byte 0x0202E680
_02007D0C: .4byte 0x0202E684
_02007D10: .4byte 0x0202E574
_02007D14:
	ldr r0, _02007D54 @ =0x0202E574
	ldr r2, [r0]
	adds r1, r2, #1
	str r1, [r0]
	movs r0, #2
	ands r0, r4
	movs r1, #0x20
	cmp r0, #0
	beq _02007D28
	movs r1, #0x2b
_02007D28:
	strb r1, [r2]
_02007D2A:
	ldr r0, _02007D58 @ =0xFFFFFEF5
	ands r4, r0
_02007D2E:
	mov r1, ip
	subs r7, r7, r1
	cmp r3, r7
	bge _02007D6C
	ldr r2, _02007D54 @ =0x0202E574
	movs r1, #0x30
_02007D3A:
	movs r0, #0
	cmp r0, #0
	beq _02007D5C
	ldr r0, [r2]
	strb r1, [r0]
	adds r0, #1
	str r0, [r2]
	subs r5, #1
	movs r0, #1
	add sl, r0
	subs r7, #1
	b _02007D68
	.align 2, 0
_02007D54: .4byte 0x0202E574
_02007D58: .4byte 0xFFFFFEF5
_02007D5C:
	movs r0, #1
	rsbs r0, r0, #0
	add r8, r0
	mov r0, r8
	strb r1, [r0]
	adds r3, #1
_02007D68:
	cmp r3, r7
	blt _02007D3A
_02007D6C:
	mov r1, ip
	cmp r1, #0
	beq _02007D94
	cmp r1, #2
	bne _02007D86
	movs r7, #1
	rsbs r7, r7, #0
	add r8, r7
	ldr r0, _02007DB4 @ =0x0202E688
	ldr r0, [r0]
	ldrb r0, [r0, #0x10]
	mov r1, r8
	strb r0, [r1]
_02007D86:
	movs r7, #1
	rsbs r7, r7, #0
	add r8, r7
	movs r0, #0x30
	mov r1, r8
	strb r0, [r1]
	add r3, ip
_02007D94:
	movs r0, #0x85
	lsls r0, r0, #1
	ands r0, r4
	cmp r0, #0
	beq _02007DCE
	adds r3, #1
	movs r7, #1
	rsbs r7, r7, #0
	add r8, r7
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r4
	cmp r0, #0
	beq _02007DB8
	movs r0, #0x2d
	b _02007DCA
	.align 2, 0
_02007DB4: .4byte 0x0202E688
_02007DB8:
	movs r0, #2
	ands r0, r4
	cmp r0, #0
	beq _02007DC8
	movs r0, #0x2b
	mov r7, r8
	strb r0, [r7]
	b _02007DCE
_02007DC8:
	movs r0, #0x20
_02007DCA:
	mov r1, r8
	strb r0, [r1]
_02007DCE:
	movs r0, #1
	ands r4, r0
	subs r7, r3, #1
	cmp r4, #0
	bne _02007DF2
	cmp r5, r3
	ble _02007DF2
	ldr r1, _02007E38 @ =0x0202E574
	movs r2, #0x20
_02007DE0:
	ldr r0, [r1]
	strb r2, [r0]
	adds r0, #1
	str r0, [r1]
	subs r5, #1
	movs r0, #1
	add sl, r0
	cmp r5, r3
	bgt _02007DE0
_02007DF2:
	subs r5, r5, r3
	add sl, r3
	adds r3, r7, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r3, r0
	beq _02007E1A
	ldr r2, _02007E38 @ =0x0202E574
	adds r4, r0, #0
_02007E04:
	ldr r1, [r2]
	mov r7, r8
	ldrb r0, [r7]
	strb r0, [r1]
	movs r0, #1
	add r8, r0
	adds r1, #1
	str r1, [r2]
	subs r3, #1
	cmp r3, r4
	bne _02007E04
_02007E1A:
	cmp r5, #0
	bgt _02007E20
	b _02007996
_02007E20:
	ldr r1, _02007E38 @ =0x0202E574
	movs r2, #0x20
_02007E24:
	ldr r0, [r1]
	strb r2, [r0]
	adds r0, #1
	str r0, [r1]
	subs r5, #1
	movs r7, #1
	add sl, r7
	cmp r5, #0
	bgt _02007E24
	b _02007996
	.align 2, 0
_02007E38: .4byte 0x0202E574
_02007E3C:
	ldr r0, _02007E54 @ =0x0202E684
	strb r2, [r0]
	mov r0, sl
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_02007E54: .4byte 0x0202E684

	thumb_func_start sub_02007E58
sub_02007E58: @ 0x02007E58
	push {r1, r2, r3}
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [sp, #8]
	add r2, sp, #0xc
	ldr r3, _02007E88 @ =0x0202E570
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r3]
	ldr r3, _02007E8C @ =0x0202E574
	ldr r0, _02007E90 @ =0x0202E680
	str r4, [r0]
	str r4, [r3]
	adds r0, r4, #0
	bl sub_02007980
	adds r4, r4, r0
	movs r1, #0
	strb r1, [r4]
	pop {r4}
	pop {r3}
	add sp, #0xc
	bx r3
	.align 2, 0
_02007E88: .4byte 0x0202E570
_02007E8C: .4byte 0x0202E574
_02007E90: .4byte 0x0202E680

	thumb_func_start sub_02007E94
sub_02007E94: @ 0x02007E94
	lsls r0, r0, #0x10
	ldr r1, _02007EA4 @ =gUnknown_0200B45C
	lsrs r0, r0, #0x18
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	bx lr
	.align 2, 0
_02007EA4: .4byte gUnknown_0200B45C

	thumb_func_start sub_02007EA8
sub_02007EA8: @ 0x02007EA8
	lsls r0, r0, #0x10
	ldr r1, _02007EB8 @ =gUnknown_0200B65C
	lsrs r0, r0, #0x18
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	bx lr
	.align 2, 0
_02007EB8: .4byte gUnknown_0200B65C

	thumb_func_start sub_02007EBC
sub_02007EBC: @ 0x02007EBC
	push {lr}
	ldr r1, _02007ECC @ =0x0202E6C8
	movs r0, #0
	str r0, [r1]
	bl sub_02004B10
	pop {r0}
	bx r0
	.align 2, 0
_02007ECC: .4byte 0x0202E6C8

	thumb_func_start sub_02007ED0
sub_02007ED0: @ 0x02007ED0
	push {lr}
	movs r0, #0
	bl sub_02004B10
	pop {r0}
	bx r0

	thumb_func_start sub_02007EDC
sub_02007EDC: @ 0x02007EDC
	push {lr}
	cmp r0, #7
	bls _02007EE4
	b _02008000
_02007EE4:
	lsls r0, r0, #2
	ldr r1, _02007EF0 @ =_02007EF4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_02007EF0: .4byte _02007EF4
_02007EF4: @ jump table
	.4byte _02007F14 @ case 0
	.4byte _02007F34 @ case 1
	.4byte _02007F50 @ case 2
	.4byte _02007F6C @ case 3
	.4byte _02007FBC @ case 4
	.4byte _02007FE4 @ case 5
	.4byte _02007F90 @ case 6
	.4byte _02007FA0 @ case 7
_02007F14:
	ldr r0, _02007F30 @ =0x0202E6C8
	movs r1, #0
	str r1, [r0]
	movs r0, #0
	movs r2, #0
	bl sub_02004AC8
	movs r0, #0x20
	bl sub_02004AE8
	bl sub_020048D0
	b _02007F80
	.align 2, 0
_02007F30: .4byte 0x0202E6C8
_02007F34:
	ldr r0, _02007F4C @ =0x0202E6C8
	movs r1, #1
	str r1, [r0]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl sub_02004AC8
	movs r0, #0x20
	bl sub_02004AE8
	b _02007F7C
	.align 2, 0
_02007F4C: .4byte 0x0202E6C8
_02007F50:
	ldr r0, _02007F68 @ =0x0202E6C8
	movs r1, #2
	str r1, [r0]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl sub_02004AC8
	bl sub_020048D0
	b _02007F80
	.align 2, 0
_02007F68: .4byte 0x0202E6C8
_02007F6C:
	ldr r0, _02007F88 @ =0x0202E6C8
	movs r1, #3
	str r1, [r0]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl sub_02004AC8
_02007F7C:
	bl sub_020048F8
_02007F80:
	ldr r0, _02007F8C @ =sub_0200493C
	bl sub_02004B10
	b _02008000
	.align 2, 0
_02007F88: .4byte 0x0202E6C8
_02007F8C: .4byte sub_0200493C
_02007F90:
	ldr r0, _02007F9C @ =0x0202E6C8
	movs r1, #6
	str r1, [r0]
	movs r0, #0xbf
	b _02007FC4
	.align 2, 0
_02007F9C: .4byte 0x0202E6C8
_02007FA0:
	ldr r0, _02007FB8 @ =0x0202E6C8
	movs r1, #7
	str r1, [r0]
	movs r0, #0xbf
	bl sub_02004844
	movs r0, #0x22
	bl sub_02004854
	bl sub_0200479C
	b _02007FD2
	.align 2, 0
_02007FB8: .4byte 0x0202E6C8
_02007FBC:
	ldr r0, _02007FDC @ =0x0202E6C8
	movs r1, #4
	str r1, [r0]
	movs r0, #0xff
_02007FC4:
	bl sub_02004844
	movs r0, #0x22
	bl sub_02004854
	bl sub_02004778
_02007FD2:
	ldr r0, _02007FE0 @ =sub_020047B8
	bl sub_02004B10
	b _02008000
	.align 2, 0
_02007FDC: .4byte 0x0202E6C8
_02007FE0: .4byte sub_020047B8
_02007FE4:
	ldr r0, _02008004 @ =0x0202E6C8
	movs r1, #5
	str r1, [r0]
	movs r0, #0xff
	bl sub_02004844
	movs r0, #0x22
	bl sub_02004854
	bl sub_0200479C
	ldr r0, _02008008 @ =sub_020047B8
	bl sub_02004B10
_02008000:
	pop {r0}
	bx r0
	.align 2, 0
_02008004: .4byte 0x0202E6C8
_02008008: .4byte sub_020047B8

	thumb_func_start sub_0200800C
sub_0200800C: @ 0x0200800C
	push {lr}
	ldr r0, _02008028 @ =0x0202E6C8
	ldr r0, [r0]
	cmp r0, #0
	blt _02008046
	cmp r0, #3
	bgt _0200802C
	bl sub_02004A7C
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r1, r1, #0x1f
	b _02008048
	.align 2, 0
_02008028: .4byte 0x0202E6C8
_0200802C:
	cmp r0, #7
	bgt _02008046
	bl sub_0200476C
	adds r1, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _02008046
	cmp r1, #1
	beq _02008046
	movs r1, #0
	b _02008048
_02008046:
	movs r1, #1
_02008048:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_02008050
sub_02008050: @ 0x02008050
	ldr r1, _02008058 @ =0x0202B2A0
	movs r0, #0
	str r0, [r1]
	bx lr
	.align 2, 0
_02008058: .4byte 0x0202B2A0

	thumb_func_start sub_0200805C
sub_0200805C: @ 0x0200805C
	ldr r1, _02008064 @ =0x0202B2A0
	movs r0, #0
	str r0, [r1]
	bx lr
	.align 2, 0
_02008064: .4byte 0x0202B2A0

	thumb_func_start sub_02008068
sub_02008068: @ 0x02008068
	push {r4, r5, lr}
	sub sp, #4
	ldr r0, _020080B8 @ =0x0000D080
	ldr r5, _020080BC @ =0x0202E690
	ldr r1, [r5, #4]
	movs r4, #1
	str r4, [sp]
	movs r2, #0
	movs r3, #1
	bl sub_02006C14
	movs r0, #0xd0
	lsls r0, r0, #1
	ldr r1, [r5, #4]
	str r4, [sp]
	movs r2, #7
	movs r3, #0
	bl sub_02006D58
	movs r0, #0xe0
	lsls r0, r0, #1
	ldr r1, [r5, #4]
	str r4, [sp]
	movs r2, #8
	movs r3, #0
	bl sub_02006D58
	movs r0, #0xf0
	lsls r0, r0, #1
	ldr r1, [r5, #4]
	str r4, [sp]
	movs r2, #9
	movs r3, #0
	bl sub_02006D58
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_020080B8: .4byte 0x0000D080
_020080BC: .4byte 0x0202E690

	thumb_func_start sub_020080C0
sub_020080C0: @ 0x020080C0
	push {r4, r5, lr}
	ldr r0, _0200810C @ =0x02030000
	ldrb r0, [r0, #9]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #0xd0
	lsls r1, r1, #6
	adds r0, r0, r1
	bl sub_020072A8
	bl sub_020081DC
	ldr r5, _02008110 @ =0x0202E690
	str r0, [r5, #0x10]
	movs r0, #0
	bl sub_020081D0
	movs r4, #0x80
	lsls r4, r4, #0x12
	str r4, [r5]
	bl sub_02008120
	adds r0, r0, r4
	str r0, [r5, #4]
	ldr r1, [r0]
	adds r1, r0, r1
	subs r1, #4
	ldr r1, [r1]
	adds r0, r0, r1
	adds r0, #0x13
	movs r1, #0x10
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #8]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0200810C: .4byte 0x02030000
_02008110: .4byte 0x0202E690

	thumb_func_start sub_02008114
sub_02008114: @ 0x02008114
	ldr r1, _0200811C @ =0x0202E690
	strb r0, [r1, #0xc]
	bx lr
	.align 2, 0
_0200811C: .4byte 0x0202E690

	thumb_func_start sub_02008120
sub_02008120: @ 0x02008120
	ldr r0, _02008128 @ =gGameDataEnd_0200B8D8
	ldr r1, _0200812C @ =0x000FFFFF
	ands r0, r1
	bx lr
	.align 2, 0
_02008128: .4byte gGameDataEnd_0200B8D8
_0200812C: .4byte 0x000FFFFF

	thumb_func_start sub_02008130
sub_02008130: @ 0x02008130
	ldr r0, _02008138 @ =0x0202E690
	ldrb r0, [r0, #0xc]
	bx lr
	.align 2, 0
_02008138: .4byte 0x0202E690

	thumb_func_start sub_0200813C
sub_0200813C: @ 0x0200813C
	ldr r1, _0200814C @ =gUnknown_0200B85C
	ldr r0, _02008150 @ =0x0202E690
	ldrb r0, [r0, #0xc]
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	bx lr
	.align 2, 0
_0200814C: .4byte gUnknown_0200B85C
_02008150: .4byte 0x0202E690

	thumb_func_start sub_02008154
sub_02008154: @ 0x02008154
	push {lr}
	ldr r0, _02008164 @ =0x02030000
	ldrb r0, [r0, #0x13]
	cmp r0, #0
	beq _02008168
	movs r0, #0
	b _0200816A
	.align 2, 0
_02008164: .4byte 0x02030000
_02008168:
	movs r0, #1
_0200816A:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_02008170
sub_02008170: @ 0x02008170
	push {lr}
	ldr r0, _02008180 @ =0x02030000
	ldrb r0, [r0, #0x13]
	cmp r0, #0
	beq _02008184
	movs r0, #0
	b _02008186
	.align 2, 0
_02008180: .4byte 0x02030000
_02008184:
	movs r0, #1
_02008186:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0200818C
sub_0200818C: @ 0x0200818C
	push {lr}
	ldr r1, _020081A4 @ =0x02030000
	ldrb r0, [r1, #0x13]
	cmp r0, #0
	beq _020081A8
	ldrb r0, [r1, #1]
	cmp r0, #3
	beq _020081A8
	movs r0, #1
	ldrsb r0, [r1, r0]
	b _020081AA
	.align 2, 0
_020081A4: .4byte 0x02030000
_020081A8:
	movs r0, #1
_020081AA:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_020081B0
sub_020081B0: @ 0x020081B0
	ldr r0, _020081BC @ =0x02030000
	ldrb r0, [r0, #1]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	bx lr
	.align 2, 0
_020081BC: .4byte 0x02030000

	thumb_func_start sub_020081C0
sub_020081C0: @ 0x020081C0
	ldr r0, _020081CC @ =0x02030000
	ldrb r0, [r0, #2]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	bx lr
	.align 2, 0
_020081CC: .4byte 0x02030000

	thumb_func_start sub_020081D0
sub_020081D0: @ 0x020081D0
	ldr r1, _020081D8 @ =0x02030000
	str r0, [r1, #4]
	bx lr
	.align 2, 0
_020081D8: .4byte 0x02030000

	thumb_func_start sub_020081DC
sub_020081DC: @ 0x020081DC
	ldr r0, _020081E4 @ =0x02030000
	ldr r0, [r0, #4]
	bx lr
	.align 2, 0
_020081E4: .4byte 0x02030000

	thumb_func_start sub_020081E8
sub_020081E8: @ 0x020081E8
	ldr r1, _020081F0 @ =0x0202E690
	str r0, [r1, #0x10]
	bx lr
	.align 2, 0
_020081F0: .4byte 0x0202E690

	thumb_func_start sub_020081F4
sub_020081F4: @ 0x020081F4
	ldr r0, _020081FC @ =0x0202E690
	ldr r0, [r0, #0x10]
	bx lr
	.align 2, 0
_020081FC: .4byte 0x0202E690

	thumb_func_start sub_02008200
sub_02008200: @ 0x02008200
	push {lr}
	adds r1, r0, #0
	ldr r3, _02008220 @ =0x02030000
	ldr r0, _02008224 @ =0x0202E690
	ldrb r0, [r0, #0xc]
	subs r0, #0x21
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x17
	bhi _02008228
	ldrb r0, [r3, #0x13]
	movs r2, #0
	cmp r0, #0
	bne _0200822A
	b _0200823A
	.align 2, 0
_02008220: .4byte 0x02030000
_02008224: .4byte 0x0202E690
_02008228:
	movs r2, #0
_0200822A:
	cmp r2, #0
	bne _0200823A
	cmp r1, #0
	bne _02008236
	movs r0, #1
	b _0200824C
_02008236:
	strb r2, [r3, #3]
	b _0200824E
_0200823A:
	cmp r1, #0
	bne _02008242
	movs r0, #1
	b _0200824C
_02008242:
	cmp r1, #1
	bne _0200824A
	movs r0, #2
	b _0200824C
_0200824A:
	movs r0, #0
_0200824C:
	strb r0, [r3, #3]
_0200824E:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_02008254
sub_02008254: @ 0x02008254
	ldr r1, _0200825C @ =0x02030000
	movs r0, #0xff
	strb r0, [r1, #3]
	bx lr
	.align 2, 0
_0200825C: .4byte 0x02030000

	thumb_func_start sub_02008260
sub_02008260: @ 0x02008260
	push {lr}
	ldr r0, _02008270 @ =0x02030000
	ldrb r0, [r0, #0x13]
	cmp r0, #0
	bne _02008278
	ldr r0, _02008274 @ =0x03006030
	ldr r0, [r0]
	b _0200827A
	.align 2, 0
_02008270: .4byte 0x02030000
_02008274: .4byte 0x03006030
_02008278:
	movs r0, #0
_0200827A:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_02008280
sub_02008280: @ 0x02008280
	push {lr}
	ldr r0, _02008290 @ =0x02030000
	ldrb r0, [r0, #0x13]
	cmp r0, #0
	bne _02008298
	ldr r0, _02008294 @ =0x03006030
	ldr r0, [r0]
	b _0200829A
	.align 2, 0
_02008290: .4byte 0x02030000
_02008294: .4byte 0x03006030
_02008298:
	movs r0, #0
_0200829A:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_020082A0
sub_020082A0: @ 0x020082A0
	push {lr}
	ldr r1, _020082B0 @ =0x02030000
	cmp r0, #0
	bne _020082B4
	movs r0, #0xb
	ldrsb r0, [r1, r0]
	b _020082B8
	.align 2, 0
_020082B0: .4byte 0x02030000
_020082B4:
	movs r0, #0x13
	ldrsb r0, [r1, r0]
_020082B8:
	pop {r1}
	bx r1

	thumb_func_start sub_020082BC
sub_020082BC: @ 0x020082BC
	push {lr}
	ldr r1, _020082CC @ =0x02030000
	cmp r0, #0
	beq _020082D0
	movs r0, #0x12
	ldrsb r0, [r1, r0]
	b _020082D4
	.align 2, 0
_020082CC: .4byte 0x02030000
_020082D0:
	movs r0, #0xa
	ldrsb r0, [r1, r0]
_020082D4:
	pop {r1}
	bx r1

	thumb_func_start sub_020082D8
sub_020082D8: @ 0x020082D8
	push {lr}
	sub sp, #0x14
	ldr r1, _02008318 @ =0x000003FF
	movs r0, #0
	movs r2, #1
	bl sub_02004060
	movs r0, #0xe5
	lsls r0, r0, #1
	ldr r1, _0200831C @ =0x0202E690
	ldr r1, [r1, #4]
	movs r3, #0xa1
	lsls r3, r3, #2
	movs r2, #0xd0
	str r2, [sp]
	subs r2, #0xd1
	str r2, [sp, #4]
	str r2, [sp, #8]
	movs r2, #1
	str r2, [sp, #0xc]
	str r2, [sp, #0x10]
	movs r2, #3
	bl sub_02006E68
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl sub_02003FB8
	add sp, #0x14
	pop {r0}
	bx r0
	.align 2, 0
_02008318: .4byte 0x000003FF
_0200831C: .4byte 0x0202E690

	thumb_func_start sub_02008320
sub_02008320: @ 0x02008320
	bx lr
	.align 2, 0

	thumb_func_start sub_02008324
sub_02008324: @ 0x02008324
	push {r4, r5, r6, lr}
	movs r6, #0
	ldr r5, _02008338 @ =0x0202E6B0
	ldr r0, [r5, #0x14]
	cmp r0, #0
	beq _0200833C
	cmp r0, #1
	beq _02008350
	b _02008370
	.align 2, 0
_02008338: .4byte 0x0202E6B0
_0200833C:
	movs r0, #1
	str r0, [r5, #0x14]
	movs r6, #1
	ldr r2, [r5]
	cmp r2, #0
	beq _02008370
	movs r1, #3
	bl sub_02009104
	b _02008370
_02008350:
	movs r4, #0
	str r6, [r5, #0x14]
	movs r6, #1
	bl sub_02008320
	str r4, [r5, #4]
	ldr r2, [r5]
	cmp r2, #0
	beq _02008370
	movs r0, #1
	movs r1, #2
	bl sub_02009104
	movs r0, #1
	bl sub_02008570
_02008370:
	adds r0, r6, #0
	bl sub_02006700
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_0200837C
sub_0200837C: @ 0x0200837C
	push {r4, r5, lr}
	sub sp, #0x14
	bl sub_02008170
	cmp r0, #0
	bne _02008390
	bl sub_0200818C
	cmp r0, #1
	beq _02008396
_02008390:
	movs r4, #8
	movs r5, #1
	b _0200839A
_02008396:
	movs r4, #5
	movs r5, #2
_0200839A:
	ldr r1, _020083DC @ =0x000003FF
	movs r0, #0
	movs r2, #1
	bl sub_02004060
	lsls r0, r4, #5
	adds r0, #5
	lsls r0, r0, #1
	ldr r1, _020083E0 @ =0x0202E690
	ldr r1, [r1, #4]
	movs r3, #0xa1
	lsls r3, r3, #2
	movs r2, #0xd0
	str r2, [sp]
	subs r2, #0xd1
	str r2, [sp, #4]
	str r2, [sp, #8]
	movs r2, #1
	str r2, [sp, #0xc]
	str r2, [sp, #0x10]
	adds r2, r5, #0
	bl sub_02006E68
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl sub_02003FB8
	add sp, #0x14
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_020083DC: .4byte 0x000003FF
_020083E0: .4byte 0x0202E690

	thumb_func_start sub_020083E4
sub_020083E4: @ 0x020083E4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0200818C
	cmp r0, #1
	beq _02008400
	ldr r1, _020083FC @ =0x000003FF
	movs r0, #0
	movs r2, #1
	bl sub_02004060
	b _02008412
	.align 2, 0
_020083FC: .4byte 0x000003FF
_02008400:
	movs r0, #8
	ands r0, r4
	cmp r0, #0
	beq _02008412
	ldr r1, _02008418 @ =0x000003FF
	movs r0, #0
	movs r2, #1
	bl sub_02004060
_02008412:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_02008418: .4byte 0x000003FF

	thumb_func_start sub_0200841C
sub_0200841C: @ 0x0200841C
	push {r4, r5, r6, r7, lr}
	bl sub_020081B0
	cmp r0, #3
	bne _02008428
	b _0200855E
_02008428:
	ldr r0, _02008444 @ =0x0202B1B0
	ldrh r1, [r0]
	ldrh r0, [r0, #2]
	adds r4, r0, #0
	orrs r4, r1
	movs r7, #0
	ldr r5, _02008448 @ =0x0202E6B0
	ldr r0, [r5, #0xc]
	cmp r0, #0
	beq _0200844C
	cmp r0, #1
	beq _02008484
	b _02008558
	.align 2, 0
_02008444: .4byte 0x0202B1B0
_02008448: .4byte 0x0202E6B0
_0200844C:
	ldr r0, [r5, #0x10]
	cmp r0, #0
	beq _02008480
	movs r0, #8
	ands r4, r0
	cmp r4, #0
	beq _02008480
	movs r0, #0
	bl sub_02008704
	movs r0, #0xd1
	bl sub_0200880C
	movs r0, #1
	str r0, [r5, #0xc]
	movs r7, #1
	ldr r2, [r5]
	cmp r2, #0
	beq _0200847A
	movs r0, #0
	movs r1, #3
	bl sub_02009104
_0200847A:
	bl sub_0200837C
	b _02008558
_02008480:
	movs r7, #0
	b _02008558
_02008484:
	movs r6, #0
	bl sub_02008170
	cmp r0, #0
	beq _0200849E
	movs r1, #8
	ands r4, r1
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	rsbs r0, r0, #0
	asrs r6, r0, #0x1f
	ands r6, r1
	b _020084BC
_0200849E:
	bl sub_0200818C
	cmp r0, #1
	beq _020084B2
	movs r0, #8
	ands r4, r0
	cmp r4, #0
	beq _020084BC
	movs r6, #8
	b _020084C0
_020084B2:
	movs r0, #0xb
	ands r0, r4
	cmp r0, #0
	beq _020084BC
	adds r6, r4, #0
_020084BC:
	cmp r6, #0
	beq _02008556
_020084C0:
	ldr r4, _020084F0 @ =0x0202E6B0
	movs r5, #0
	str r5, [r4, #0xc]
	movs r7, #1
	adds r0, r6, #0
	bl sub_020083E4
	str r5, [r4, #4]
	ldr r4, [r4]
	cmp r4, #0
	beq _02008558
	movs r0, #8
	ands r0, r6
	cmp r0, #0
	beq _020084F4
	movs r0, #0
	movs r1, #0
	bl sub_0200910C
	movs r0, #1
	bl sub_02008704
	b _02008558
	.align 2, 0
_020084F0: .4byte 0x0202E6B0
_020084F4:
	adds r0, r6, #0
	ands r0, r7
	cmp r0, #0
	beq _02008502
	movs r0, #0
	movs r1, #1
	b _0200850E
_02008502:
	movs r0, #2
	ands r0, r6
	cmp r0, #0
	beq _02008558
	movs r0, #0
	movs r1, #2
_0200850E:
	bl sub_0200910C
	movs r0, #1
	bl sub_02008570
	movs r0, #0
	movs r1, #0
	bl sub_02008884
	movs r0, #1
	movs r1, #0
	bl sub_02008884
	movs r0, #2
	movs r1, #0
	bl sub_02008884
	movs r0, #3
	movs r1, #0
	bl sub_02008884
	movs r0, #4
	movs r1, #0
	bl sub_02008884
	movs r0, #5
	movs r1, #0
	bl sub_02008884
	movs r0, #6
	movs r1, #0
	bl sub_02008884
	bl sub_02008764
	b _02008558
_02008556:
	movs r7, #1
_02008558:
	adds r0, r7, #0
	bl sub_02006700
_0200855E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_02008564
sub_02008564: @ 0x02008564
	ldr r1, _0200856C @ =0x0202E6B0
	str r0, [r1]
	bx lr
	.align 2, 0
_0200856C: .4byte 0x0202E6B0

	thumb_func_start sub_02008570
sub_02008570: @ 0x02008570
	push {lr}
	cmp r0, #4
	bhi _020085C2
	lsls r0, r0, #2
	ldr r1, _02008580 @ =_02008584
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_02008580: .4byte _02008584
_02008584: @ jump table
	.4byte _02008598 @ case 0
	.4byte _020085A4 @ case 1
	.4byte _020085B0 @ case 2
	.4byte _020085BC @ case 3
	.4byte _020085BC @ case 4
_02008598:
	ldr r1, _020085A0 @ =0x0202E6B0
	movs r0, #1
	str r0, [r1, #0x10]
	b _020085C2
	.align 2, 0
_020085A0: .4byte 0x0202E6B0
_020085A4:
	ldr r1, _020085AC @ =0x0202E6B0
	movs r0, #0
	str r0, [r1, #0x10]
	b _020085C2
	.align 2, 0
_020085AC: .4byte 0x0202E6B0
_020085B0:
	ldr r1, _020085B8 @ =0x0202E6B0
	movs r0, #1
	str r0, [r1, #4]
	b _020085C2
	.align 2, 0
_020085B8: .4byte 0x0202E6B0
_020085BC:
	ldr r1, _020085C8 @ =0x0202E6B0
	movs r0, #1
	str r0, [r1, #8]
_020085C2:
	pop {r0}
	bx r0
	.align 2, 0
_020085C8: .4byte 0x0202E6B0

	thumb_func_start sub_020085CC
sub_020085CC: @ 0x020085CC
	push {lr}
	ldr r0, _020085F0 @ =0x0202B2A0
	ldr r0, [r0]
	cmp r0, #0
	beq _020085F4
	movs r0, #1
	bl sub_02006700
	movs r0, #4
	movs r1, #0
	bl sub_02006624
	movs r0, #5
	movs r1, #0
	bl sub_02006624
	b _02008622
	.align 2, 0
_020085F0: .4byte 0x0202B2A0
_020085F4:
	movs r0, #0
	bl sub_02006700
	ldr r1, _02008608 @ =0x0202E6B0
	ldr r0, [r1, #4]
	cmp r0, #0
	beq _0200860C
	cmp r0, #1
	beq _0200861E
	b _02008622
	.align 2, 0
_02008608: .4byte 0x0202E6B0
_0200860C:
	ldr r0, [r1, #8]
	cmp r0, #0
	bne _02008618
	bl sub_02008E00
	b _02008622
_02008618:
	bl sub_0200841C
	b _02008622
_0200861E:
	bl sub_02008324
_02008622:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_02008628
sub_02008628: @ 0x02008628
	ldr r0, _0200863C @ =0x0202E6B0
	movs r2, #0
	str r2, [r0, #4]
	movs r1, #1
	str r1, [r0, #8]
	str r2, [r0, #0xc]
	str r2, [r0, #0x10]
	str r2, [r0, #0x14]
	str r2, [r0]
	bx lr
	.align 2, 0
_0200863C: .4byte 0x0202E6B0

	thumb_func_start sub_02008640
sub_02008640: @ 0x02008640
	push {lr}
	ldr r1, _02008654 @ =0x0202EAD0
	str r0, [r1]
	cmp r0, #0
	beq _0200864E
	bl sub_02008924
_0200864E:
	pop {r0}
	bx r0
	.align 2, 0
_02008654: .4byte 0x0202EAD0

	thumb_func_start sub_02008658
sub_02008658: @ 0x02008658
	push {lr}
	ldr r0, _0200866C @ =0x0202EAD0
	ldr r0, [r0]
	cmp r0, #0
	beq _02008666
	bl sub_02008980
_02008666:
	pop {r0}
	bx r0
	.align 2, 0
_0200866C: .4byte 0x0202EAD0

	thumb_func_start sub_02008670
sub_02008670: @ 0x02008670
	push {lr}
	ldr r0, _02008684 @ =0x0202EAD0
	ldr r0, [r0]
	cmp r0, #0
	beq _0200867E
	bl sub_02008964
_0200867E:
	pop {r0}
	bx r0
	.align 2, 0
_02008684: .4byte 0x0202EAD0

	thumb_func_start sub_02008688
sub_02008688: @ 0x02008688
	push {lr}
	ldr r0, _0200869C @ =0x0202EAD0
	ldr r0, [r0]
	cmp r0, #0
	beq _02008696
	bl sub_0200899C
_02008696:
	pop {r0}
	bx r0
	.align 2, 0
_0200869C: .4byte 0x0202EAD0

	thumb_func_start sub_020086A0
sub_020086A0: @ 0x020086A0
	push {lr}
	ldr r0, _020086B4 @ =0x0202EAD0
	ldr r0, [r0]
	cmp r0, #0
	beq _020086AE
	bl sub_020089B8
_020086AE:
	pop {r0}
	bx r0
	.align 2, 0
_020086B4: .4byte 0x0202EAD0

	thumb_func_start sub_020086B8
sub_020086B8: @ 0x020086B8
	push {lr}
	adds r1, r0, #0
	ldr r0, _020086DC @ =0x0202EAD0
	ldr r0, [r0]
	cmp r0, #0
	beq _020086D6
	adds r0, r1, #0
	cmp r0, #0
	bge _020086CC
	adds r0, #0xf
_020086CC:
	lsls r1, r0, #0xc
	lsrs r1, r1, #0x10
	movs r0, #0
	bl sub_02008B34
_020086D6:
	pop {r0}
	bx r0
	.align 2, 0
_020086DC: .4byte 0x0202EAD0

	thumb_func_start sub_020086E0
sub_020086E0: @ 0x020086E0
	push {lr}
	adds r2, r0, #0
	ldr r0, _020086FC @ =0x0202EAD0
	ldr r0, [r0]
	cmp r0, #0
	beq _020086F8
	ldr r1, _02008700 @ =0x0000FFFF
	lsls r2, r2, #8
	lsrs r2, r2, #0x10
	movs r0, #0
	bl sub_02008BD4
_020086F8:
	pop {r0}
	bx r0
	.align 2, 0
_020086FC: .4byte 0x0202EAD0
_02008700: .4byte 0x0000FFFF

	thumb_func_start sub_02008704
sub_02008704: @ 0x02008704
	push {lr}
	adds r1, r0, #0
	ldr r0, _0200871C @ =0x0202EAD0
	ldr r0, [r0]
	cmp r0, #0
	beq _02008724
	cmp r1, #0
	bne _02008720
	bl sub_02008ADC
	b _02008724
	.align 2, 0
_0200871C: .4byte 0x0202EAD0
_02008720:
	bl sub_02008B18
_02008724:
	pop {r0}
	bx r0

	thumb_func_start sub_02008728
sub_02008728: @ 0x02008728
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _0200875C @ =0x0202EAD0
	ldr r0, [r0]
	cmp r0, #0
	beq _02008754
	ldr r5, _02008760 @ =0x0202EAC0
	ldr r0, [r5, #4]
	cmp r0, r4
	beq _02008754
	movs r0, #0
	str r0, [r5]
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	bl sub_020089D4
	str r4, [r5, #4]
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r5, #8]
	bl sub_020086E0
_02008754:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0200875C: .4byte 0x0202EAD0
_02008760: .4byte 0x0202EAC0

	thumb_func_start sub_02008764
sub_02008764: @ 0x02008764
	push {r4, r5, lr}
	ldr r0, _02008790 @ =0x0202EAD0
	ldr r0, [r0]
	cmp r0, #0
	beq _02008788
	ldr r4, _02008794 @ =0x0202EAC0
	ldr r1, [r4, #4]
	movs r5, #1
	rsbs r5, r5, #0
	cmp r1, r5
	beq _02008788
	movs r0, #0
	str r0, [r4]
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	bl sub_02008A34
	str r5, [r4, #4]
_02008788:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_02008790: .4byte 0x0202EAD0
_02008794: .4byte 0x0202EAC0

	thumb_func_start sub_02008798
sub_02008798: @ 0x02008798
	push {lr}
	ldr r0, _020087A4 @ =0x0202EAD0
	ldr r0, [r0]
	movs r0, #0
	pop {r1}
	bx r1
	.align 2, 0
_020087A4: .4byte 0x0202EAD0

	thumb_func_start sub_020087A8
sub_020087A8: @ 0x020087A8
	push {lr}
	adds r1, r0, #0
	ldr r0, _020087C0 @ =0x0202EAD0
	ldr r0, [r0]
	cmp r0, #0
	beq _020087BA
	adds r0, r1, #0
	bl sub_020086B8
_020087BA:
	pop {r0}
	bx r0
	.align 2, 0
_020087C0: .4byte 0x0202EAD0

	thumb_func_start sub_020087C4
sub_020087C4: @ 0x020087C4
	push {lr}
	adds r1, r0, #0
	ldr r0, _020087DC @ =0x0202EAD0
	ldr r0, [r0]
	cmp r0, #0
	beq _020087D8
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	bl sub_020089D4
_020087D8:
	pop {r0}
	bx r0
	.align 2, 0
_020087DC: .4byte 0x0202EAD0

	thumb_func_start sub_020087E0
sub_020087E0: @ 0x020087E0
	push {lr}
	adds r1, r0, #0
	ldr r0, _020087F8 @ =0x0202EAD0
	ldr r0, [r0]
	cmp r0, #0
	beq _020087F4
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	bl sub_02008A34
_020087F4:
	pop {r0}
	bx r0
	.align 2, 0
_020087F8: .4byte 0x0202EAD0

	thumb_func_start sub_020087FC
sub_020087FC: @ 0x020087FC
	push {lr}
	ldr r0, _02008808 @ =0x0202EAD0
	ldr r0, [r0]
	movs r0, #0
	pop {r1}
	bx r1
	.align 2, 0
_02008808: .4byte 0x0202EAD0

	thumb_func_start sub_0200880C
sub_0200880C: @ 0x0200880C
	push {lr}
	adds r1, r0, #0
	ldr r0, _02008824 @ =0x0202EAD0
	ldr r0, [r0]
	cmp r0, #0
	beq _02008820
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	bl sub_020089D4
_02008820:
	pop {r0}
	bx r0
	.align 2, 0
_02008824: .4byte 0x0202EAD0

	thumb_func_start sub_02008828
sub_02008828: @ 0x02008828
	push {r4, lr}
	adds r2, r0, #0
	adds r4, r1, #0
	ldr r0, _02008850 @ =0x0202EAD0
	ldr r0, [r0]
	cmp r0, #0
	beq _02008848
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	bl sub_02008A34
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	movs r1, #1
	bl sub_02008B34
_02008848:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_02008850: .4byte 0x0202EAD0

	thumb_func_start sub_02008854
sub_02008854: @ 0x02008854
	push {lr}
	ldr r0, _02008860 @ =0x0202EAD0
	ldr r0, [r0]
	movs r0, #0
	pop {r1}
	bx r1
	.align 2, 0
_02008860: .4byte 0x0202EAD0

	thumb_func_start sub_02008864
sub_02008864: @ 0x02008864
	push {lr}
	adds r2, r0, #0
	ldr r0, _02008880 @ =0x0202EAD0
	ldr r0, [r0]
	cmp r0, #0
	beq _0200887C
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #8
	lsrs r1, r1, #0x10
	bl sub_02008BAC
_0200887C:
	pop {r0}
	bx r0
	.align 2, 0
_02008880: .4byte 0x0202EAD0

	thumb_func_start sub_02008884
sub_02008884: @ 0x02008884
	push {lr}
	adds r3, r0, #0
	adds r2, r1, #0
	ldr r0, _020088A4 @ =0x0202EAD0
	ldr r0, [r0]
	cmp r0, #0
	beq _020088A0
	lsls r0, r3, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _020088A8 @ =0x0000FFFF
	lsls r2, r2, #8
	lsrs r2, r2, #0x10
	bl sub_02008BD4
_020088A0:
	pop {r0}
	bx r0
	.align 2, 0
_020088A4: .4byte 0x0202EAD0
_020088A8: .4byte 0x0000FFFF

	thumb_func_start sub_020088AC
sub_020088AC: @ 0x020088AC
	push {lr}
	adds r3, r0, #0
	adds r2, r1, #0
	ldr r0, _020088CC @ =0x0202EAD0
	ldr r0, [r0]
	cmp r0, #0
	beq _020088C8
	lsls r0, r3, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _020088D0 @ =0x0000FFFF
	lsls r2, r2, #8
	asrs r2, r2, #0x10
	bl sub_02008C04
_020088C8:
	pop {r0}
	bx r0
	.align 2, 0
_020088CC: .4byte 0x0202EAD0
_020088D0: .4byte 0x0000FFFF

	thumb_func_start sub_020088D4
sub_020088D4: @ 0x020088D4
	push {r4, lr}
	ldr r4, _02008904 @ =0x0202EAC0
	ldr r0, [r4]
	cmp r0, #0
	beq _020088FE
	cmp r0, #1
	bne _020088FE
	ldr r0, [r4, #8]
	ldr r1, [r4, #0xc]
	subs r0, r0, r1
	str r0, [r4, #8]
	cmp r0, #0
	bgt _020088F8
	movs r0, #0
	str r0, [r4, #8]
	str r0, [r4]
	bl sub_02008764
_020088F8:
	ldr r0, [r4, #8]
	bl sub_020086E0
_020088FE:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_02008904: .4byte 0x0202EAC0

	thumb_func_start sub_02008908
sub_02008908: @ 0x02008908
	ldr r1, _0200891C @ =0x0202EAC0
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r1, #4]
	movs r0, #0
	str r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r1, #8]
	bx lr
	.align 2, 0
_0200891C: .4byte 0x0202EAC0

	thumb_func_start sub_02008920
sub_02008920: @ 0x02008920
	bx lr
	.align 2, 0

	thumb_func_start sub_02008924
sub_02008924: @ 0x02008924
	push {lr}
	ldr r1, _0200893C @ =0x02030018
	ldr r2, [r1, #8]
	cmp r2, #0
	beq _02008938
	movs r0, #0
	strb r0, [r1, #1]
	strh r0, [r1, #2]
	bl sub_02009104
_02008938:
	pop {r0}
	bx r0
	.align 2, 0
_0200893C: .4byte 0x02030018

	thumb_func_start sub_02008940
sub_02008940: @ 0x02008940
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _02008960 @ =0x02030018
	ldr r3, [r2, #8]
	cmp r3, #0
	beq _0200895A
	movs r1, #0
	movs r0, #1
	strb r0, [r2, #1]
	strh r1, [r2, #2]
	str r4, [r2, #4]
	bl sub_02009108
_0200895A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_02008960: .4byte 0x02030018

	thumb_func_start sub_02008964
sub_02008964: @ 0x02008964
	push {lr}
	ldr r2, _0200897C @ =0x02030018
	ldr r1, [r2, #8]
	cmp r1, #0
	beq _02008976
	movs r0, #2
	strb r0, [r2, #1]
	bl sub_02009100
_02008976:
	pop {r0}
	bx r0
	.align 2, 0
_0200897C: .4byte 0x02030018

	thumb_func_start sub_02008980
sub_02008980: @ 0x02008980
	push {lr}
	ldr r2, _02008998 @ =0x02030018
	ldr r1, [r2, #8]
	cmp r1, #0
	beq _02008992
	movs r0, #3
	strb r0, [r2, #1]
	bl sub_02009100
_02008992:
	pop {r0}
	bx r0
	.align 2, 0
_02008998: .4byte 0x02030018

	thumb_func_start sub_0200899C
sub_0200899C: @ 0x0200899C
	push {lr}
	ldr r2, _020089B4 @ =0x02030018
	ldr r1, [r2, #8]
	cmp r1, #0
	beq _020089AE
	movs r0, #4
	strb r0, [r2, #1]
	bl sub_02009100
_020089AE:
	pop {r0}
	bx r0
	.align 2, 0
_020089B4: .4byte 0x02030018

	thumb_func_start sub_020089B8
sub_020089B8: @ 0x020089B8
	push {lr}
	ldr r2, _020089D0 @ =0x02030018
	ldr r1, [r2, #8]
	cmp r1, #0
	beq _020089CA
	movs r0, #5
	strb r0, [r2, #1]
	bl sub_02009100
_020089CA:
	pop {r0}
	bx r0
	.align 2, 0
_020089D0: .4byte 0x02030018

	thumb_func_start sub_020089D4
sub_020089D4: @ 0x020089D4
	push {lr}
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r1, _020089F0 @ =0x02030018
	ldr r2, [r1, #8]
	cmp r2, #0
	beq _020089EC
	movs r0, #6
	strb r0, [r1, #1]
	strh r3, [r1, #2]
	bl sub_02009104
_020089EC:
	pop {r0}
	bx r0
	.align 2, 0
_020089F0: .4byte 0x02030018

	thumb_func_start sub_020089F4
sub_020089F4: @ 0x020089F4
	push {lr}
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r1, _02008A10 @ =0x02030018
	ldr r2, [r1, #8]
	cmp r2, #0
	beq _02008A0C
	movs r0, #7
	strb r0, [r1, #1]
	strh r3, [r1, #2]
	bl sub_02009104
_02008A0C:
	pop {r0}
	bx r0
	.align 2, 0
_02008A10: .4byte 0x02030018

	thumb_func_start sub_02008A14
sub_02008A14: @ 0x02008A14
	push {lr}
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r1, _02008A30 @ =0x02030018
	ldr r2, [r1, #8]
	cmp r2, #0
	beq _02008A2C
	movs r0, #8
	strb r0, [r1, #1]
	strh r3, [r1, #2]
	bl sub_02009104
_02008A2C:
	pop {r0}
	bx r0
	.align 2, 0
_02008A30: .4byte 0x02030018

	thumb_func_start sub_02008A34
sub_02008A34: @ 0x02008A34
	push {lr}
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r1, _02008A50 @ =0x02030018
	ldr r2, [r1, #8]
	cmp r2, #0
	beq _02008A4C
	movs r0, #9
	strb r0, [r1, #1]
	strh r3, [r1, #2]
	bl sub_02009104
_02008A4C:
	pop {r0}
	bx r0
	.align 2, 0
_02008A50: .4byte 0x02030018

	thumb_func_start sub_02008A54
sub_02008A54: @ 0x02008A54
	push {lr}
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r1, _02008A70 @ =0x02030018
	ldr r2, [r1, #8]
	cmp r2, #0
	beq _02008A6C
	movs r0, #0xa
	strb r0, [r1, #1]
	strh r3, [r1, #2]
	bl sub_02009104
_02008A6C:
	pop {r0}
	bx r0
	.align 2, 0
_02008A70: .4byte 0x02030018

	thumb_func_start sub_02008A74
sub_02008A74: @ 0x02008A74
	push {lr}
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	ldr r1, _02008A90 @ =0x02030018
	ldr r2, [r1, #8]
	cmp r2, #0
	beq _02008A8C
	movs r0, #0xc
	strb r0, [r1, #1]
	strh r3, [r1, #2]
	bl sub_02009104
_02008A8C:
	pop {r0}
	bx r0
	.align 2, 0
_02008A90: .4byte 0x02030018

	thumb_func_start sub_02008A94
sub_02008A94: @ 0x02008A94
	push {r4, lr}
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, _02008AB8 @ =0x02030018
	ldr r3, [r2, #8]
	cmp r3, #0
	beq _02008AB2
	movs r0, #0xb
	strb r0, [r2, #1]
	strh r4, [r2, #2]
	strh r1, [r2, #4]
	bl sub_02009108
_02008AB2:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_02008AB8: .4byte 0x02030018

	thumb_func_start sub_02008ABC
sub_02008ABC: @ 0x02008ABC
	push {lr}
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	ldr r1, _02008AD8 @ =0x02030018
	ldr r2, [r1, #8]
	cmp r2, #0
	beq _02008AD4
	movs r0, #0xd
	strb r0, [r1, #1]
	strh r3, [r1, #2]
	bl sub_02009104
_02008AD4:
	pop {r0}
	bx r0
	.align 2, 0
_02008AD8: .4byte 0x02030018

	thumb_func_start sub_02008ADC
sub_02008ADC: @ 0x02008ADC
	push {lr}
	ldr r2, _02008AF4 @ =0x02030018
	ldr r1, [r2, #8]
	cmp r1, #0
	beq _02008AEE
	movs r0, #0xe
	strb r0, [r2, #1]
	bl sub_02009100
_02008AEE:
	pop {r0}
	bx r0
	.align 2, 0
_02008AF4: .4byte 0x02030018

	thumb_func_start sub_02008AF8
sub_02008AF8: @ 0x02008AF8
	push {lr}
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	ldr r1, _02008B14 @ =0x02030018
	ldr r2, [r1, #8]
	cmp r2, #0
	beq _02008B10
	movs r0, #0xf
	strb r0, [r1, #1]
	strh r3, [r1, #2]
	bl sub_02009104
_02008B10:
	pop {r0}
	bx r0
	.align 2, 0
_02008B14: .4byte 0x02030018

	thumb_func_start sub_02008B18
sub_02008B18: @ 0x02008B18
	push {lr}
	ldr r2, _02008B30 @ =0x02030018
	ldr r1, [r2, #8]
	cmp r1, #0
	beq _02008B2A
	movs r0, #0x10
	strb r0, [r2, #1]
	bl sub_02009100
_02008B2A:
	pop {r0}
	bx r0
	.align 2, 0
_02008B30: .4byte 0x02030018

	thumb_func_start sub_02008B34
sub_02008B34: @ 0x02008B34
	push {r4, lr}
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, _02008B58 @ =0x02030018
	ldr r3, [r2, #8]
	cmp r3, #0
	beq _02008B52
	movs r0, #0x11
	strb r0, [r2, #1]
	strh r4, [r2, #2]
	strh r1, [r2, #4]
	bl sub_02009108
_02008B52:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_02008B58: .4byte 0x02030018

	thumb_func_start sub_02008B5C
sub_02008B5C: @ 0x02008B5C
	push {r4, lr}
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, _02008B80 @ =0x02030018
	ldr r3, [r2, #8]
	cmp r3, #0
	beq _02008B7A
	movs r0, #0x12
	strb r0, [r2, #1]
	strh r4, [r2, #2]
	strh r1, [r2, #4]
	bl sub_02009108
_02008B7A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_02008B80: .4byte 0x02030018

	thumb_func_start sub_02008B84
sub_02008B84: @ 0x02008B84
	push {r4, lr}
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, _02008BA8 @ =0x02030018
	ldr r3, [r2, #8]
	cmp r3, #0
	beq _02008BA2
	movs r0, #0x13
	strb r0, [r2, #1]
	strh r4, [r2, #2]
	strh r1, [r2, #4]
	bl sub_02009108
_02008BA2:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_02008BA8: .4byte 0x02030018

	thumb_func_start sub_02008BAC
sub_02008BAC: @ 0x02008BAC
	push {r4, lr}
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, _02008BD0 @ =0x02030018
	ldr r3, [r2, #8]
	cmp r3, #0
	beq _02008BCA
	movs r0, #0x14
	strb r0, [r2, #1]
	strh r4, [r2, #2]
	strh r1, [r2, #4]
	bl sub_02009108
_02008BCA:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_02008BD0: .4byte 0x02030018

	thumb_func_start sub_02008BD4
sub_02008BD4: @ 0x02008BD4
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldr r3, _02008C00 @ =0x02030018
	ldr r1, [r3, #8]
	cmp r1, #0
	beq _02008BF8
	movs r0, #0x15
	strb r0, [r3, #1]
	strh r5, [r3, #2]
	strh r4, [r3, #4]
	strh r2, [r3, #6]
	bl sub_02009100
_02008BF8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_02008C00: .4byte 0x02030018

	thumb_func_start sub_02008C04
sub_02008C04: @ 0x02008C04
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldr r3, _02008C30 @ =0x02030018
	ldr r1, [r3, #8]
	cmp r1, #0
	beq _02008C28
	movs r0, #0x16
	strb r0, [r3, #1]
	strh r5, [r3, #2]
	strh r4, [r3, #4]
	strh r2, [r3, #6]
	bl sub_02009100
_02008C28:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_02008C30: .4byte 0x02030018

	thumb_func_start sub_02008C34
sub_02008C34: @ 0x02008C34
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	ldr r3, _02008C60 @ =0x02030018
	ldr r1, [r3, #8]
	cmp r1, #0
	beq _02008C58
	movs r0, #0x17
	strb r0, [r3, #1]
	strh r5, [r3, #2]
	strh r4, [r3, #4]
	strb r2, [r3, #6]
	bl sub_02009100
_02008C58:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_02008C60: .4byte 0x02030018

	thumb_func_start sub_02008C64
sub_02008C64: @ 0x02008C64
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	ldr r3, _02008C90 @ =0x02030018
	ldr r1, [r3, #8]
	cmp r1, #0
	beq _02008C88
	movs r0, #0x18
	strb r0, [r3, #1]
	strh r5, [r3, #2]
	strh r4, [r3, #4]
	strb r2, [r3, #6]
	bl sub_02009100
_02008C88:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_02008C90: .4byte 0x02030018

	thumb_func_start sub_02008C94
sub_02008C94: @ 0x02008C94
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	ldr r3, _02008CC0 @ =0x02030018
	ldr r1, [r3, #8]
	cmp r1, #0
	beq _02008CB8
	movs r0, #0x19
	strb r0, [r3, #1]
	strh r5, [r3, #2]
	strh r4, [r3, #4]
	strb r2, [r3, #6]
	bl sub_02009100
_02008CB8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_02008CC0: .4byte 0x02030018

	thumb_func_start sub_02008CC4
sub_02008CC4: @ 0x02008CC4
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	ldr r3, _02008CF0 @ =0x02030018
	ldr r1, [r3, #8]
	cmp r1, #0
	beq _02008CE8
	movs r0, #0x1a
	strb r0, [r3, #1]
	strh r5, [r3, #2]
	strh r4, [r3, #4]
	strb r2, [r3, #6]
	bl sub_02009100
_02008CE8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_02008CF0: .4byte 0x02030018

	thumb_func_start sub_02008CF4
sub_02008CF4: @ 0x02008CF4
	bx lr
	.align 2, 0

	thumb_func_start sub_02008CF8
sub_02008CF8: @ 0x02008CF8
	bx lr
	.align 2, 0

	thumb_func_start sub_02008CFC
sub_02008CFC: @ 0x02008CFC
	push {r4, lr}
	ldr r0, _02008D5C @ =0x030060E4
	movs r1, #0
	str r1, [r0]
	ldr r0, _02008D60 @ =0x030060E0
	str r1, [r0]
	ldr r0, _02008D64 @ =0x0300607C
	str r1, [r0]
	ldr r0, _02008D68 @ =0x030060E8
	strb r1, [r0]
	ldr r0, _02008D6C @ =0x03006518
	str r1, [r0]
	ldr r0, _02008D70 @ =0x03006030
	str r1, [r0]
	ldr r0, _02008D74 @ =0x030064F0
	str r1, [r0]
	ldr r0, _02008D78 @ =0x0202E714
	str r1, [r0]
	ldr r1, _02008D7C @ =0x03006500
	movs r2, #0
	adds r0, r1, #0
	adds r0, #0xe
_02008D28:
	strh r2, [r0]
	subs r0, #2
	cmp r0, r1
	bge _02008D28
	movs r1, #0
	ldr r4, _02008D80 @ =0x03006080
	movs r3, #0
_02008D36:
	lsls r0, r1, #1
	adds r2, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	movs r1, #7
	adds r0, r0, r4
	adds r0, #0xe
_02008D44:
	strh r3, [r0]
	subs r0, #2
	subs r1, #1
	cmp r1, #0
	bge _02008D44
	adds r1, r2, #0
	cmp r1, #3
	ble _02008D36
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_02008D5C: .4byte 0x030060E4
_02008D60: .4byte 0x030060E0
_02008D64: .4byte 0x0300607C
_02008D68: .4byte 0x030060E8
_02008D6C: .4byte 0x03006518
_02008D70: .4byte 0x03006030
_02008D74: .4byte 0x030064F0
_02008D78: .4byte 0x0202E714
_02008D7C: .4byte 0x03006500
_02008D80: .4byte 0x03006080

	thumb_func_start sub_02008D84
sub_02008D84: @ 0x02008D84
	bx lr
	.align 2, 0

	thumb_func_start sub_02008D88
sub_02008D88: @ 0x02008D88
	bx lr
	.align 2, 0

	thumb_func_start sub_02008D8C
sub_02008D8C: @ 0x02008D8C
	bx lr
	.align 2, 0

	thumb_func_start sub_02008D90
sub_02008D90: @ 0x02008D90
	bx lr
	.align 2, 0

	thumb_func_start sub_02008D94
sub_02008D94: @ 0x02008D94
	bx lr
	.align 2, 0

	thumb_func_start sub_02008D98
sub_02008D98: @ 0x02008D98
	bx lr
	.align 2, 0

	thumb_func_start sub_02008D9C
sub_02008D9C: @ 0x02008D9C
	movs r0, #0
	bx lr

	thumb_func_start sub_02008DA0
sub_02008DA0: @ 0x02008DA0
	movs r0, #0
	bx lr

	thumb_func_start sub_02008DA4
sub_02008DA4: @ 0x02008DA4
	movs r0, #0
	bx lr

	thumb_func_start sub_02008DA8
sub_02008DA8: @ 0x02008DA8
	movs r0, #0
	bx lr

	thumb_func_start sub_02008DAC
sub_02008DAC: @ 0x02008DAC
	movs r0, #0
	bx lr

	thumb_func_start sub_02008DB0
sub_02008DB0: @ 0x02008DB0
	bx lr
	.align 2, 0

	thumb_func_start sub_02008DB4
sub_02008DB4: @ 0x02008DB4
	movs r0, #1
	bx lr

	thumb_func_start sub_02008DB8
sub_02008DB8: @ 0x02008DB8
	movs r0, #1
	bx lr

	thumb_func_start sub_02008DBC
sub_02008DBC: @ 0x02008DBC
	movs r0, #1
	bx lr

	thumb_func_start sub_02008DC0
sub_02008DC0: @ 0x02008DC0
	movs r0, #1
	bx lr

	thumb_func_start sub_02008DC4
sub_02008DC4: @ 0x02008DC4
	movs r0, #1
	bx lr

	thumb_func_start sub_02008DC8
sub_02008DC8: @ 0x02008DC8
	movs r0, #1
	bx lr

	thumb_func_start sub_02008DCC
sub_02008DCC: @ 0x02008DCC
	bx lr
	.align 2, 0

	thumb_func_start sub_02008DD0
sub_02008DD0: @ 0x02008DD0
	bx lr
	.align 2, 0

	thumb_func_start sub_02008DD4
sub_02008DD4: @ 0x02008DD4
	bx lr
	.align 2, 0

	thumb_func_start sub_02008DD8
sub_02008DD8: @ 0x02008DD8
	bx lr
	.align 2, 0

	thumb_func_start sub_02008DDC
sub_02008DDC: @ 0x02008DDC
	movs r0, #0
	bx lr

	thumb_func_start sub_02008DE0
sub_02008DE0: @ 0x02008DE0
	bx lr
	.align 2, 0

	thumb_func_start sub_02008DE4
sub_02008DE4: @ 0x02008DE4
	bx lr
	.align 2, 0

	thumb_func_start sub_02008DE8
sub_02008DE8: @ 0x02008DE8
	bx lr
	.align 2, 0

	thumb_func_start sub_02008DEC
sub_02008DEC: @ 0x02008DEC
	bx lr
	.align 2, 0
