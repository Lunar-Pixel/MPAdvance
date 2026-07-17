	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .text
	.ARM
	.syntax unified

	thumb_func_start sub_0805E004
sub_0805E004: @ 0x0805E004
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	movs r0, #1
	bl ProcSleep_08002B98
	movs r0, #0
	mov r8, r0
	movs r7, #0
	cmp r7, sl
	bge _0805E0A2
_0805E024:
	cmp r7, #0x20
	bne _0805E02C
	movs r1, #0x20
	add r8, r1
_0805E02C:
	ldr r2, _0805E07C @ =0x0808FC6C
	mov sb, r2
	lsls r6, r7, #3
	adds r0, r6, r2
	ldrb r4, [r0]
	adds r0, r4, #0
	bl sub_08001980
	mov r2, r8
	lsls r1, r2, #0x18
	lsrs r5, r1, #0x18
	movs r2, #0
	lsrs r1, r2, #0x18
	adds r2, r5, #0
	bl sub_080054A8
	movs r0, #0xde
	movs r2, #0xd0
	lsls r2, r2, #0x14
	lsrs r1, r2, #0x18
	adds r2, r5, #0
	bl sub_080053D0
	adds r0, r4, #0
	bl sub_08001A00
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805E080
	mov r0, sb
	adds r0, #4
	adds r0, r6, r0
	ldr r0, [r0]
	movs r2, #0xe0
	lsls r2, r2, #0x14
	lsrs r1, r2, #0x18
	adds r2, r5, #0
	bl sub_0800561C
	b _0805E098
	.align 2, 0
_0805E07C: .4byte 0x0808FC6C
_0805E080:
	ldr r0, _0805E0B0 @ =0x0808FCF8
	movs r1, #0xe
	adds r2, r5, #0
	bl sub_08005408
	ldr r0, _0805E0B4 @ =0x003D001C
	bl sub_08006828
	movs r1, #0xe
	adds r2, r5, #0
	bl sub_080054A8
_0805E098:
	movs r0, #1
	add r8, r0
	adds r7, #1
	cmp r7, sl
	blt _0805E024
_0805E0A2:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805E0B0: .4byte 0x0808FCF8
_0805E0B4: .4byte 0x003D001C

	thumb_func_start sub_0805E0B8
sub_0805E0B8: @ 0x0805E0B8
	push {r4, r5, r6, lr}
	sub sp, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r6, _0805E0CC @ =0x0600D000
	cmp r0, #4
	bhi _0805E0D4
	ldr r6, _0805E0D0 @ =0x0600D200
	b _0805E0D8
	.align 2, 0
_0805E0CC: .4byte 0x0600D000
_0805E0D0: .4byte 0x0600D200
_0805E0D4:
	cmp r0, #5
	bls _0805E0EC
_0805E0D8:
	mov r0, sp
	movs r1, #0
	strh r1, [r0]
	ldr r2, _0805E0E8 @ =0x01000040
	adds r1, r6, #0
	bl CpuSet
	b _0805E110
	.align 2, 0
_0805E0E8: .4byte 0x01000040
_0805E0EC:
	mov r0, sp
	movs r4, #0
	strh r4, [r0]
	ldr r5, _0805E118 @ =0x01000020
	adds r1, r6, #0
	adds r2, r5, #0
	bl CpuSet
	movs r0, #0x90
	lsls r0, r0, #2
	adds r6, r6, r0
	mov r0, sp
	adds r0, #2
	strh r4, [r0]
	adds r1, r6, #0
	adds r2, r5, #0
	bl CpuSet
_0805E110:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805E118: .4byte 0x01000020

	thumb_func_start sub_0805E11C
sub_0805E11C: @ 0x0805E11C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	movs r7, #0
	movs r0, #0
	mov r8, r0
	mov sb, r0
	bl sub_08060708
	movs r0, #0xc
	movs r1, #0x1a
	movs r2, #2
	movs r3, #0
	bl sub_08005350
	movs r0, #8
	bl sub_080607FC
	bl sub_08060FC4
	movs r0, #8
	bl sub_0805E004
	bl sub_080614E8
	ldr r0, _0805E1EC @ =0x03004400
	ldr r0, [r0, #0x10]
	bl sub_08061560
	movs r0, #0x50
	movs r1, #0
	bl sub_080615F0
	ldr r4, _0805E1F0 @ =0x030024E0
	ldr r0, _0805E1F4 @ =0x0000FFD8
	strh r0, [r4, #0xc]
	adds r0, #8
	strh r0, [r4, #0x14]
	movs r0, #6
	bl sub_080077C4
	movs r0, #0x20
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl FadeIn_08008AF4
	adds r1, r4, #0
	adds r1, #0x4f
	movs r0, #1
	strb r0, [r1]
	bl sub_08008D34
	ldrh r0, [r4]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4]
	adds r1, r4, #0
	adds r1, #0x44
	movs r0, #0x3f
	strb r0, [r1]
	adds r1, #2
	movs r0, #0x1d
	strb r0, [r1]
	ldr r0, _0805E1F8 @ =0x000018D8
	strh r0, [r4, #0x3c]
	subs r1, #6
	ldr r0, _0805E1FC @ =0x00002060
	strh r0, [r1]
	movs r0, #0xa
	bl sub_0805E004
	movs r0, #1
	bl sub_08005A88
	movs r0, #0x33
	bl sub_080059E4
	movs r0, #0xf4
	lsls r0, r0, #0xe
	bl sub_080062D0
	ldr r0, _0805E200 @ =0x003D0001
	bl sub_080062D0
	ldr r0, _0805E204 @ =0x003D0006
	bl sub_080062D0
	ldr r0, _0805E208 @ =0x003D0007
	bl sub_080062D0
	movs r2, #0x10
	rsbs r2, r2, #0
	movs r0, #1
	adds r1, r2, #0
	bl sub_0806104C
	movs r0, #0
	bl sub_080613CC
	b _0805E396
	.align 2, 0
_0805E1EC: .4byte 0x03004400
_0805E1F0: .4byte 0x030024E0
_0805E1F4: .4byte 0x0000FFD8
_0805E1F8: .4byte 0x000018D8
_0805E1FC: .4byte 0x00002060
_0805E200: .4byte 0x003D0001
_0805E204: .4byte 0x003D0006
_0805E208: .4byte 0x003D0007
_0805E20C:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0805E2BE
	ldr r2, _0805E24C @ =0x0808FC6C
	lsls r1, r7, #0x18
	asrs r1, r1, #0x15
	adds r0, r1, r2
	ldrb r5, [r0]
	adds r2, #4
	adds r1, r1, r2
	ldr r4, [r1]
	adds r0, r5, #0
	bl sub_08001A00
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805E2AC
	ldr r6, _0805E250 @ =0x03004400
	ldr r0, [r6, #0x10]
	cmp r0, r4
	bhs _0805E25C
	movs r0, #0xd2
	bl m4aSongNumStart
	ldr r0, _0805E254 @ =0x003D000A
	bl sub_080062D0
	ldr r0, _0805E258 @ =0x003D000B
	bl sub_080062D0
	b _0805E2B8
	.align 2, 0
_0805E24C: .4byte 0x0808FC6C
_0805E250: .4byte 0x03004400
_0805E254: .4byte 0x003D000A
_0805E258: .4byte 0x003D000B
_0805E25C:
	movs r0, #0xcc
	bl m4aSongNumStart
	movs r0, #4
	adds r1, r5, #0
	bl sub_08005BE0
	movs r0, #3
	adds r1, r4, #0
	bl sub_08005BE0
	ldr r0, _0805E2A4 @ =0x003D0008
	bl sub_080062D0
	ldr r0, _0805E2A8 @ =0x003D0009
	bl sub_0800648C
	bl sub_080064F8
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805E2B8
	adds r0, r5, #0
	bl UnlockMinigame_08001A24
	ldr r0, [r6, #0x10]
	subs r0, r0, r4
	str r0, [r6, #0x10]
	bl sub_08061560
	movs r0, #0xa
	bl sub_0805E004
	movs r0, #1
	mov sb, r0
	b _0805E2B8
	.align 2, 0
_0805E2A4: .4byte 0x003D0008
_0805E2A8: .4byte 0x003D0009
_0805E2AC:
	movs r0, #0xd2
	bl m4aSongNumStart
	ldr r0, _0805E2D4 @ =0x003D001B
	bl sub_080062D0
_0805E2B8:
	ldr r0, _0805E2D8 @ =0x003D0007
	bl sub_080062D0
_0805E2BE:
	ldr r0, _0805E2DC @ =0x030024B0
	ldrh r1, [r0, #4]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0805E2E0
	lsls r0, r7, #0x18
	movs r1, #0xff
	lsls r1, r1, #0x18
	b _0805E2FE
	.align 2, 0
_0805E2D4: .4byte 0x003D001B
_0805E2D8: .4byte 0x003D0007
_0805E2DC: .4byte 0x030024B0
_0805E2E0:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0805E2F0
	lsls r0, r7, #0x18
	movs r2, #0x80
	lsls r2, r2, #0x11
	b _0805E318
_0805E2F0:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0805E30A
	lsls r0, r7, #0x18
	movs r1, #0xf8
	lsls r1, r1, #0x18
_0805E2FE:
	adds r0, r0, r1
	lsrs r7, r0, #0x18
	cmp r0, #0
	bge _0805E324
	movs r7, #0
	b _0805E324
_0805E30A:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0805E324
	lsls r0, r7, #0x18
	movs r2, #0x80
	lsls r2, r2, #0x14
_0805E318:
	adds r0, r0, r2
	lsrs r7, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #9
	ble _0805E324
	movs r7, #9
_0805E324:
	ldr r5, _0805E348 @ =0x030024E0
	ldr r0, _0805E34C @ =0x0000FFD8
	strh r0, [r5, #0xc]
	adds r0, #8
	strh r0, [r5, #0x14]
	lsls r0, r7, #0x18
	asrs r4, r0, #0x18
	cmp r4, #4
	bgt _0805E350
	lsls r1, r4, #0x13
	movs r0, #0x98
	lsls r0, r0, #0xe
	adds r1, r1, r0
	asrs r1, r1, #0x10
	movs r0, #0x1e
	bl sub_08061140
	b _0805E380
	.align 2, 0
_0805E348: .4byte 0x030024E0
_0805E34C: .4byte 0x0000FFD8
_0805E350:
	cmp r4, #5
	ble _0805E36E
	subs r1, r4, #2
	lsls r1, r1, #0x18
	asrs r1, r1, #5
	movs r2, #0x98
	lsls r2, r2, #0xe
	adds r1, r1, r2
	asrs r1, r1, #0x10
	movs r0, #0x1e
	bl sub_08061140
	ldrh r0, [r5, #0x14]
	adds r0, #0x10
	b _0805E37E
_0805E36E:
	movs r0, #0x1e
	movs r1, #0x46
	bl sub_08061140
	subs r0, r4, #4
	lsls r0, r0, #3
	ldrh r1, [r5, #0x14]
	adds r0, r0, r1
_0805E37E:
	strh r0, [r5, #0x14]
_0805E380:
	lsls r4, r7, #0x18
	cmp r8, r7
	beq _0805E390
	movs r0, #0xca
	bl m4aSongNumStart
	lsrs r4, r4, #0x18
	mov r8, r4
_0805E390:
	movs r0, #1
	bl ProcSleep_08002B98
_0805E396:
	ldr r0, _0805E410 @ =0x030024B0
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0805E3A4
	b _0805E20C
_0805E3A4:
	movs r0, #0xce
	bl m4aSongNumStart
	bl sub_08005A2C
	bl sub_08061490
	bl sub_08061108
	adds r0, r7, #0
	bl sub_0805E0B8
	ldr r1, _0805E414 @ =0x030024E0
	ldrh r2, [r1]
	ldr r0, _0805E418 @ =0x0000DFFF
	ands r0, r2
	movs r2, #0
	strh r0, [r1]
	adds r0, r1, #0
	adds r0, #0x44
	strb r2, [r0]
	adds r1, #0x46
	strb r2, [r1]
	mov r2, sb
	cmp r2, #0
	beq _0805E3E0
	movs r0, #0
	movs r1, #0x20
	bl sub_080077EC
_0805E3E0:
	movs r0, #0x20
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl FadeOut_080089E8
	bl sub_08008D34
	bl sub_08061534
	bl sub_08060FDC
	bl sub_080607BC
	mov r0, sb
	cmp r0, #0
	beq _0805E41C
	movs r0, #0x2b
	bl sub_080072F4
	movs r0, #0x23
	bl ChangeGameState_08008790
	b _0805E422
	.align 2, 0
_0805E410: .4byte 0x030024B0
_0805E414: .4byte 0x030024E0
_0805E418: .4byte 0x0000DFFF
_0805E41C:
	movs r0, #0x2b
	bl ChangeGameState_08008790
_0805E422:
	bl sub_08002B0C
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0805E434
sub_0805E434: @ 0x0805E434
	push {r4, r5, r6, lr}
	bl sub_08060708
	movs r0, #6
	bl sub_080607FC
	bl sub_08060FC4
	ldr r4, _0805E544 @ =0x03004400
	ldrb r0, [r4, #0xa]
	cmp r0, #0x2c
	bne _0805E450
	bl sub_08061D7C
_0805E450:
	movs r0, #1
	bl sub_08061DA0
	movs r0, #7
	bl sub_080077C4
	movs r0, #0x20
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl FadeIn_08008AF4
	ldr r0, _0805E548 @ =0x030024E0
	adds r0, #0x4f
	movs r1, #1
	strb r1, [r0]
	bl sub_08008D34
	ldrb r0, [r4, #0xa]
	cmp r0, #0x2c
	bne _0805E4A2
	movs r0, #1
	bl sub_08005A88
	movs r0, #0x33
	bl sub_080059E4
	ldr r0, _0805E54C @ =0x003D0002
	bl sub_080062D0
	ldr r0, _0805E550 @ =0x003D0003
	bl sub_080062D0
	ldr r0, _0805E554 @ =0x003D0004
	bl sub_080062D0
	ldr r0, _0805E558 @ =0x003D0005
	bl sub_080062D0
	bl sub_08005A2C
_0805E4A2:
	ldr r0, _0805E55C @ =0x0808FCBC
	movs r1, #0x3c
	bl sub_08061FBC
	movs r0, #0
	bl sub_080613CC
	movs r0, #0x33
	bl sub_080059E4
	ldr r0, _0805E560 @ =0x003D000C
	bl sub_080062D0
	bl sub_08062848
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	movs r6, #0xff
_0805E4C6:
	ldr r0, _0805E55C @ =0x0808FCBC
	adds r0, r4, r0
	ldrb r5, [r0]
	cmp r5, #0x2d
	bne _0805E582
	movs r0, #0x71
	bl sub_08001A00
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0805E582
	movs r0, #9
	bl sub_08001A00
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0805E582
	movs r0, #0xd
	bl sub_08001A00
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0805E582
	movs r0, #0x18
	bl sub_08001A00
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0805E582
	ldr r2, _0805E564 @ =0x030024B0
	ldrh r1, [r2, #2]
	movs r0, #0x8c
	ands r0, r1
	cmp r0, #0x8c
	bne _0805E582
	ldrh r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0805E582
	ldr r0, _0805E568 @ =0x00470031
	bl sub_080062D0
	ldr r0, _0805E56C @ =0x00470032
	bl sub_080062D0
	ldr r0, _0805E570 @ =0x00470033
	bl sub_080062D0
	ldr r0, _0805E574 @ =0x00470034
	bl sub_080062D0
	ldr r0, _0805E578 @ =0x00470035
	bl sub_0800648C
	bl sub_080064F8
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805E57C
	movs r0, #0x24
	b _0805E616
	.align 2, 0
_0805E544: .4byte 0x03004400
_0805E548: .4byte 0x030024E0
_0805E54C: .4byte 0x003D0002
_0805E550: .4byte 0x003D0003
_0805E554: .4byte 0x003D0004
_0805E558: .4byte 0x003D0005
_0805E55C: .4byte 0x0808FCBC
_0805E560: .4byte 0x003D000C
_0805E564: .4byte 0x030024B0
_0805E568: .4byte 0x00470031
_0805E56C: .4byte 0x00470032
_0805E570: .4byte 0x00470033
_0805E574: .4byte 0x00470034
_0805E578: .4byte 0x00470035
_0805E57C:
	ldr r0, _0805E59C @ =0x003D000C
	bl sub_080062D0
_0805E582:
	ldr r0, _0805E5A0 @ =0x030024B0
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0805E5A4
	movs r0, #0xce
	bl m4aSongNumStart
	movs r0, #0x2c
	bl ChangeGameState_08008790
	b _0805E780
	.align 2, 0
_0805E59C: .4byte 0x003D000C
_0805E5A0: .4byte 0x030024B0
_0805E5A4:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0805E5AE
	b _0805E73A
_0805E5AE:
	movs r0, #4
	adds r1, r5, #0
	bl sub_08005BE0
	adds r0, r5, #0
	bl sub_08001A00
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805E5D4
	movs r0, #0xd2
	bl m4aSongNumStart
	ldr r0, _0805E5D0 @ =0x003D001A
	bl sub_080062D0
	b _0805E734
	.align 2, 0
_0805E5D0: .4byte 0x003D001A
_0805E5D4:
	movs r0, #0xcc
	bl m4aSongNumStart
	movs r0, #0
	bl sub_08061124
	cmp r5, #0x30
	bne _0805E5F0
	ldr r0, _0805E5EC @ =0x003D0010
	bl sub_080062D0
	b _0805E72E
	.align 2, 0
_0805E5EC: .4byte 0x003D0010
_0805E5F0:
	adds r0, r5, #0
	bl sub_080019D8
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0
	bne _0805E630
	ldr r0, _0805E628 @ =0x003D000D
	bl sub_080062D0
	ldr r0, _0805E62C @ =0x003D000E
	bl sub_0800648C
	bl sub_080064F8
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805E630
	adds r0, r5, #0
_0805E616:
	bl sub_08001B64
	movs r0, #0x1a
	bl sub_08001930
	movs r0, #0x11
	bl ChangeGameState_08008790
	b _0805E780
	.align 2, 0
_0805E628: .4byte 0x003D000D
_0805E62C: .4byte 0x003D000E
_0805E630:
	cmp r4, #1
	bne _0805E710
	ldr r0, _0805E658 @ =0x003D000F
	bl sub_080062D0
	ldr r0, _0805E65C @ =0x003D000E
	bl sub_0800648C
	bl sub_080064F8
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805E710
	cmp r5, #0x2d
	bne _0805E660
	movs r0, #0x27
	bl ChangeGameState_08008790
	b _0805E780
	.align 2, 0
_0805E658: .4byte 0x003D000F
_0805E65C: .4byte 0x003D000E
_0805E660:
	adds r0, r5, #0
	subs r0, #0x2b
	cmp r0, #0x17
	bhi _0805E70E
	lsls r0, r0, #2
	ldr r1, _0805E674 @ =_0805E678
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0805E674: .4byte _0805E678
_0805E678: @ jump table
	.4byte _0805E6D8 @ case 0
	.4byte _0805E70E @ case 1
	.4byte _0805E70E @ case 2
	.4byte _0805E6E0 @ case 3
	.4byte _0805E70E @ case 4
	.4byte _0805E70E @ case 5
	.4byte _0805E70E @ case 6
	.4byte _0805E70E @ case 7
	.4byte _0805E70E @ case 8
	.4byte _0805E70E @ case 9
	.4byte _0805E70E @ case 10
	.4byte _0805E70E @ case 11
	.4byte _0805E70E @ case 12
	.4byte _0805E70E @ case 13
	.4byte _0805E70E @ case 14
	.4byte _0805E70E @ case 15
	.4byte _0805E70E @ case 16
	.4byte _0805E70E @ case 17
	.4byte _0805E70E @ case 18
	.4byte _0805E6E8 @ case 19
	.4byte _0805E708 @ case 20
	.4byte _0805E6F0 @ case 21
	.4byte _0805E6F8 @ case 22
	.4byte _0805E700 @ case 23
_0805E6D8:
	movs r0, #0
	bl sub_0805E9C4
	b _0805E70E
_0805E6E0:
	movs r0, #1
	bl sub_0805E9C4
	b _0805E70E
_0805E6E8:
	movs r0, #2
	bl sub_0805E9C4
	b _0805E70E
_0805E6F0:
	movs r0, #4
	bl sub_0805E9C4
	b _0805E70E
_0805E6F8:
	movs r0, #5
	bl sub_0805E9C4
	b _0805E70E
_0805E700:
	movs r0, #3
	bl sub_0805E9C4
	b _0805E70E
_0805E708:
	movs r0, #0xff
	bl sub_0805E9C4
_0805E70E:
	movs r6, #0xff
_0805E710:
	cmp r4, #2
	bne _0805E72E
	ldr r0, _0805E760 @ =0x003D0011
	bl sub_080062D0
	ldr r0, _0805E764 @ =0x003D000E
	bl sub_0800648C
	bl sub_080064F8
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805E72E
	bl sub_0805EB88
_0805E72E:
	movs r0, #1
	bl sub_08061124
_0805E734:
	ldr r0, _0805E768 @ =0x003D000C
	bl sub_080062D0
_0805E73A:
	bl sub_08062648
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r0, _0805E76C @ =0x0808FCBC
	adds r0, r4, r0
	ldrb r5, [r0]
	cmp r6, r4
	beq _0805E778
	adds r0, r5, #0
	bl sub_08001A00
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805E770
	movs r0, #0xff
	bl sub_0806083C
	b _0805E776
	.align 2, 0
_0805E760: .4byte 0x003D0011
_0805E764: .4byte 0x003D000E
_0805E768: .4byte 0x003D000C
_0805E76C: .4byte 0x0808FCBC
_0805E770:
	adds r0, r5, #0
	bl sub_0806083C
_0805E776:
	adds r6, r4, #0
_0805E778:
	movs r0, #1
	bl ProcSleep_08002B98
	b _0805E4C6
_0805E780:
	bl sub_08005A2C
	bl sub_08060950
	bl sub_08061490
	bl sub_08062180
	ldr r0, _0805E7CC @ =0x03004400
	ldrb r0, [r0, #9]
	cmp r0, #0x11
	beq _0805E79C
	cmp r0, #0x27
	bne _0805E7A4
_0805E79C:
	movs r0, #0
	movs r1, #0x20
	bl sub_080077EC
_0805E7A4:
	movs r0, #0x20
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl FadeOut_080089E8
	bl sub_08008D34
	bl sub_08061E30
	bl sub_08060FDC
	bl sub_080607BC
	bl sub_08002B0C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805E7CC: .4byte 0x03004400

	thumb_func_start sub_0805E7D0
sub_0805E7D0: @ 0x0805E7D0
	push {r4, r5, r6, r7, lr}
	movs r5, #0
	movs r7, #1
	bl sub_08060708
	movs r0, #7
	bl sub_080607FC
	bl sub_08060FC4
	bl sub_08061D7C
	movs r0, #1
	bl sub_08061DA0
	movs r0, #7
	bl sub_080077C4
	movs r0, #0x20
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl FadeIn_08008AF4
	ldr r0, _0805E848 @ =0x030024E0
	adds r0, #0x4f
	strb r7, [r0]
	bl sub_08008D34
	movs r0, #1
	bl sub_08005A88
	movs r0, #0x33
	bl sub_080059E4
	ldr r0, _0805E84C @ =0x003D0020
	bl sub_080062D0
	ldr r0, _0805E850 @ =0x003D0021
	bl sub_080062D0
	bl sub_08005A2C
	ldr r4, _0805E854 @ =0x0808FCBC
	adds r0, r4, #0
	movs r1, #0x32
	bl sub_08061FBC
	movs r0, #0
	bl sub_080613CC
	movs r0, #0x33
	bl sub_080059E4
	ldr r0, _0805E858 @ =0x003D0017
	bl sub_080062D0
	adds r6, r4, #0
	b _0805E96A
	.align 2, 0
_0805E848: .4byte 0x030024E0
_0805E84C: .4byte 0x003D0020
_0805E850: .4byte 0x003D0021
_0805E854: .4byte 0x0808FCBC
_0805E858: .4byte 0x003D0017
_0805E85C:
	movs r5, #1
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0805E926
	adds r0, r4, #0
	bl sub_08001A00
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805E884
	movs r0, #0xd2
	bl m4aSongNumStart
	ldr r0, _0805E880 @ =0x003D001A
	bl sub_080062D0
	b _0805E920
	.align 2, 0
_0805E880: .4byte 0x003D001A
_0805E884:
	movs r0, #0xcc
	bl m4aSongNumStart
	movs r0, #0
	bl sub_08061124
	movs r0, #4
	adds r1, r4, #0
	bl sub_08005BE0
	ldr r0, _0805E94C @ =0x003D0018
	bl sub_080062D0
	ldr r0, _0805E950 @ =0x003D0019
	bl sub_0800648C
	bl sub_080064F8
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805E91A
	bl sub_08005A2C
	bl sub_08061490
	bl sub_08062180
	adds r0, r4, #0
	bl sub_08001B64
	movs r0, #0
	movs r1, #0x20
	bl sub_080077EC
	movs r0, #0x20
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl FadeOut_080089E8
	bl sub_08008D34
	adds r0, r4, #0
	movs r1, #1
	bl sub_0806E4F4
	movs r0, #7
	bl sub_080607FC
	movs r0, #7
	bl sub_080077C4
	movs r0, #0x20
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl FadeIn_08008AF4
	ldr r0, _0805E954 @ =0x030024E0
	adds r0, #0x4f
	strb r5, [r0]
	bl sub_08008D34
	bl sub_08061E08
	adds r0, r6, #0
	movs r1, #0x32
	bl sub_08061FBC
	movs r0, #0
	bl sub_080613CC
	movs r0, #0x33
	bl sub_080059E4
_0805E91A:
	movs r0, #1
	bl sub_08061124
_0805E920:
	ldr r0, _0805E958 @ =0x003D0017
	bl sub_080062D0
_0805E926:
	bl sub_08062648
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	adds r0, r5, r6
	ldrb r4, [r0]
	cmp r7, r5
	beq _0805E964
	adds r0, r4, #0
	bl sub_08001A00
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805E95C
	movs r0, #0xff
	bl sub_0806083C
	b _0805E962
	.align 2, 0
_0805E94C: .4byte 0x003D0018
_0805E950: .4byte 0x003D0019
_0805E954: .4byte 0x030024E0
_0805E958: .4byte 0x003D0017
_0805E95C:
	adds r0, r4, #0
	bl sub_0806083C
_0805E962:
	adds r7, r5, #0
_0805E964:
	movs r0, #1
	bl ProcSleep_08002B98
_0805E96A:
	adds r0, r5, r6
	ldrb r4, [r0]
	ldr r0, _0805E9C0 @ =0x030024B0
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0805E97C
	b _0805E85C
_0805E97C:
	movs r0, #0xce
	bl m4aSongNumStart
	bl sub_08005A2C
	bl sub_08060950
	bl sub_08061490
	bl sub_08062180
	movs r0, #0x20
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl FadeOut_080089E8
	bl sub_08008D34
	bl sub_08061E30
	bl sub_08060FDC
	bl sub_080607BC
	movs r0, #0x2c
	bl ChangeGameState_08008790
	bl sub_08002B0C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805E9C0: .4byte 0x030024B0

	thumb_func_start sub_0805E9C4
sub_0805E9C4: @ 0x0805E9C4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x54
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r1, _0805EA3C @ =0x0808FD08
	add r0, sp, #4
	movs r2, #0x48
	bl memcpy
	ldr r4, _0805EA40 @ =0x030024E0
	ldrh r7, [r4]
	ldrh r0, [r4, #4]
	mov r8, r0
	movs r0, #0x20
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl FadeOut_080089E8
	bl sub_08008D34
	movs r1, #0
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r4]
	ldr r0, _0805EA44 @ =0x00001805
	strh r0, [r4, #2]
	ldr r0, _0805EA48 @ =0x00001A0A
	strh r0, [r4, #4]
	strh r1, [r4, #0xc]
	strh r1, [r4, #0xa]
	strh r1, [r4, #0x14]
	strh r1, [r4, #0x12]
	str r1, [sp, #0x4c]
	add r0, sp, #0x4c
	ldr r4, _0805EA4C @ =0x0600C000
	ldr r2, _0805EA50 @ =0x01001000
	adds r1, r4, #0
	bl CpuFastSet
	cmp r5, #0xff
	bne _0805EA6C
	ldr r0, _0805EA54 @ =0x081410E8
	ldr r1, _0805EA58 @ =0x05000100
	bl LoadPalette_08008308
	ldr r0, _0805EA5C @ =0x081413B4
	ldr r1, _0805EA60 @ =0x06008000
	bl DecompressData_08008374
	ldr r0, _0805EA64 @ =0x0814110C
	ldr r1, _0805EA68 @ =0x0600D000
	movs r2, #0
	movs r3, #8
	bl LoadTileMap_080083CC
	b _0805EAC0
	.align 2, 0
_0805EA3C: .4byte 0x0808FD08
_0805EA40: .4byte 0x030024E0
_0805EA44: .4byte 0x00001805
_0805EA48: .4byte 0x00001A0A
_0805EA4C: .4byte 0x0600C000
_0805EA50: .4byte 0x01001000
_0805EA54: .4byte 0x081410E8
_0805EA58: .4byte 0x05000100
_0805EA5C: .4byte 0x081413B4
_0805EA60: .4byte 0x06008000
_0805EA64: .4byte 0x0814110C
_0805EA68: .4byte 0x0600D000
_0805EA6C:
	ldr r0, _0805EB5C @ =0x0813B27C
	movs r1, #0xa0
	lsls r1, r1, #0x13
	bl LoadPalette_08008308
	ldr r0, _0805EB60 @ =0x0813B468
	ldr r1, _0805EB64 @ =0x06004000
	bl DecompressData_08008374
	ldr r0, _0805EB68 @ =0x0813B300
	adds r1, r4, #0
	movs r2, #0
	movs r3, #0
	bl LoadTileMap_080083CC
	lsls r4, r5, #1
	adds r4, r4, r5
	lsls r4, r4, #2
	mov r0, sp
	adds r0, r0, r4
	adds r0, #4
	ldr r0, [r0]
	ldr r1, _0805EB6C @ =0x05000100
	bl LoadPalette_08008308
	add r0, sp, #8
	adds r0, r0, r4
	ldr r0, [r0]
	ldr r1, _0805EB70 @ =0x06008000
	bl DecompressData_08008374
	add r0, sp, #0xc
	adds r0, r0, r4
	ldr r0, [r0]
	ldr r1, _0805EB74 @ =0x0600D000
	movs r2, #0
	movs r3, #8
	bl LoadTileMap_080083CC
	adds r0, r5, #0
	bl sub_08007400
_0805EAC0:
	movs r0, #0x20
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl FadeIn_08008AF4
	ldr r0, _0805EB78 @ =0x030024E0
	adds r0, #0x4f
	movs r1, #1
	strb r1, [r0]
	bl sub_08008D34
	add r6, sp, #0x50
	ldr r4, _0805EB7C @ =0x030024B0
	movs r5, #8
_0805EADE:
	movs r0, #1
	bl ProcSleep_08002B98
	ldrh r1, [r4]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _0805EADE
	movs r0, #0x20
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl FadeOut_080089E8
	bl sub_08008D34
	ldr r4, _0805EB78 @ =0x030024E0
	movs r5, #0
	strh r7, [r4]
	mov r0, r8
	strh r0, [r4, #4]
	strh r5, [r4, #0xc]
	strh r5, [r4, #0xa]
	strh r5, [r4, #0x14]
	strh r5, [r4, #0x12]
	movs r0, #0x80
	lsls r0, r0, #1
	str r0, [sp]
	movs r0, #1
	movs r1, #0x18
	movs r2, #0xe
	movs r3, #0
	bl sub_08004028
	bl sub_08005B18
	str r5, [sp, #0x50]
	ldr r1, _0805EB80 @ =0x0600C000
	ldr r2, _0805EB84 @ =0x01001000
	adds r0, r6, #0
	bl CpuFastSet
	movs r0, #6
	bl sub_080607FC
	movs r0, #0x20
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl FadeIn_08008AF4
	adds r4, #0x4f
	movs r0, #1
	strb r0, [r4]
	bl sub_08008D34
	add sp, #0x54
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805EB5C: .4byte 0x0813B27C
_0805EB60: .4byte 0x0813B468
_0805EB64: .4byte 0x06004000
_0805EB68: .4byte 0x0813B300
_0805EB6C: .4byte 0x05000100
_0805EB70: .4byte 0x06008000
_0805EB74: .4byte 0x0600D000
_0805EB78: .4byte 0x030024E0
_0805EB7C: .4byte 0x030024B0
_0805EB80: .4byte 0x0600C000
_0805EB84: .4byte 0x01001000

	thumb_func_start sub_0805EB88
sub_0805EB88: @ 0x0805EB88
	push {r4, r5, r6, r7, lr}
	movs r5, #0
	movs r6, #0
	movs r7, #1
	rsbs r7, r7, #0
_0805EB92:
	lsls r0, r5, #0x18
	asrs r4, r0, #0x18
	cmp r4, #0
	beq _0805EBA0
	cmp r4, #1
	beq _0805EBCC
	b _0805EC46
_0805EBA0:
	movs r0, #0
	bl sub_080614BC
	movs r0, #5
	bl sub_08007828
	ldr r0, _0805EBC4 @ =0x003D001D
	bl sub_080062D0
	ldr r0, _0805EBC8 @ =0x000001E1
	bl m4aSongNumStart
	movs r0, #0xa
	bl ProcSleep_08002B98
	movs r5, #1
	b _0805EC46
	.align 2, 0
_0805EBC4: .4byte 0x003D001D
_0805EBC8: .4byte 0x000001E1
_0805EBCC:
	movs r0, #0
	bl sub_08007814
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0805EC08
	movs r0, #0xa
	bl ProcSleep_08002B98
	movs r0, #1
	bl sub_080614BC
	ldr r0, _0805EC00 @ =0x003D001E
	bl sub_080062D0
	ldr r0, _0805EC04 @ =0x003D001F
	bl sub_0800648C
	bl sub_080064F8
	lsls r0, r0, #0x18
	movs r5, #0xff
	cmp r0, #0
	bne _0805EC46
	movs r5, #0
	b _0805EC46
	.align 2, 0
_0805EC00: .4byte 0x003D001E
_0805EC04: .4byte 0x003D001F
_0805EC08:
	ldr r0, _0805EC18 @ =0x030024B0
	ldrh r1, [r0]
	movs r0, #0xa
	ands r0, r1
	cmp r0, #0
	beq _0805EC1C
	movs r5, #0xff
	b _0805EC46
	.align 2, 0
_0805EC18: .4byte 0x030024B0
_0805EC1C:
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _0805EC46
	lsls r0, r6, #0x18
	adds r4, r0, #0
	cmp r4, #0
	bne _0805EC38
	ldr r0, _0805EC34 @ =0x000001E1
	bl m4aSongNumStop
	b _0805EC3E
	.align 2, 0
_0805EC34: .4byte 0x000001E1
_0805EC38:
	ldr r0, _0805EC58 @ =0x000001E1
	bl m4aSongNumContinue
_0805EC3E:
	movs r0, #0x80
	lsls r0, r0, #0x11
	eors r0, r4
	lsrs r6, r0, #0x18
_0805EC46:
	lsls r0, r5, #0x18
	asrs r0, r0, #0x18
	cmp r0, r7
	beq _0805EC5C
	movs r0, #1
	bl ProcSleep_08002B98
	b _0805EB92
	.align 2, 0
_0805EC58: .4byte 0x000001E1
_0805EC5C:
	movs r0, #1
	bl sub_080614BC
	ldr r0, _0805EC74 @ =0x000001E1
	bl m4aSongNumStop
	movs r0, #7
	bl sub_080077C4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805EC74: .4byte 0x000001E1
