	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .text
	.ARM
	.syntax unified

	thumb_func_start sub_0805FCD8
sub_0805FCD8: @ 0x0805FCD8
	push {r4, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	cmp r0, #1
	bne _0805FD10
	cmp r4, #1
	bls _0805FD5A
	cmp r4, #2
	bne _0805FCFA
	bl sub_08007748
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #5
	bhi _0805FD5A
_0805FCFA:
	subs r0, r4, #3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _0805FD56
	bl sub_0805F3AC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805FD5A
	b _0805FD56
_0805FD10:
	cmp r0, #2
	bne _0805FD5A
	cmp r4, #0
	bne _0805FD24
	bl sub_08007724
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xe
	bhi _0805FD5A
_0805FD24:
	cmp r4, #1
	bne _0805FD32
	bl sub_08007754
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805FD5A
_0805FD32:
	cmp r4, #2
	bne _0805FD42
	bl sub_0800773C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bhi _0805FD5A
_0805FD42:
	cmp r4, #3
	bne _0805FD52
	bl sub_08007748
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #5
	bhi _0805FD5A
_0805FD52:
	cmp r4, #4
	beq _0805FD5A
_0805FD56:
	movs r0, #0
	b _0805FD5C
_0805FD5A:
	movs r0, #1
_0805FD5C:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0805FD64
sub_0805FD64: @ 0x0805FD64
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	adds r4, r1, #0
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r1, _0805FDB0 @ =0x0808FE9C
	mov r0, sp
	movs r2, #3
	bl memcpy
	add r6, sp, #4
	ldr r1, _0805FDB4 @ =0x0808FEA0
	adds r0, r6, #0
	movs r2, #6
	bl memcpy
	add r5, sp, #0xc
	ldr r1, _0805FDB8 @ =0x0808FEA6
	adds r0, r5, #0
	movs r2, #3
	bl memcpy
	mov r8, r4
	movs r0, #0xff
	str r0, [sp, #0x10]
	cmp r7, #1
	beq _0805FDCC
	cmp r7, #1
	bgt _0805FDBC
	cmp r7, #0
	beq _0805FDC2
	b _0805FDC0
	.align 2, 0
_0805FDB0: .4byte 0x0808FE9C
_0805FDB4: .4byte 0x0808FEA0
_0805FDB8: .4byte 0x0808FEA6
_0805FDBC:
	cmp r7, #2
	beq _0805FDD8
_0805FDC0:
	movs r7, #0
_0805FDC2:
	ldr r1, _0805FDC8 @ =0x0808FD98
	mov sl, r1
	b _0805FDDC
	.align 2, 0
_0805FDC8: .4byte 0x0808FD98
_0805FDCC:
	ldr r2, _0805FDD4 @ =0x0808FDE8
	mov sl, r2
	b _0805FDDC
	.align 2, 0
_0805FDD4: .4byte 0x0808FDE8
_0805FDD8:
	ldr r3, _0805FE08 @ =0x0808FE38
	mov sl, r3
_0805FDDC:
	ldr r1, _0805FE0C @ =0x03004400
	movs r0, #0
	strb r0, [r1, #5]
	bl sub_08060708
	mov r1, sp
	adds r0, r1, r7
	ldrb r0, [r0]
	bl sub_080607FC
	bl sub_08060F4C
	bl sub_08061830
	cmp r7, #1
	beq _0805FE44
	cmp r7, #1
	bgt _0805FE10
	cmp r7, #0
	beq _0805FE16
	b _0805FE94
	.align 2, 0
_0805FE08: .4byte 0x0808FE38
_0805FE0C: .4byte 0x03004400
_0805FE10:
	cmp r7, #2
	beq _0805FE7A
	b _0805FE94
_0805FE16:
	movs r0, #0
	bl sub_08060B9C
	movs r0, #0
	movs r1, #0x60
	movs r2, #0x68
	bl sub_08060C3C
	movs r0, #0
	movs r1, #0
	movs r2, #0xff
	bl sub_08060D40
	movs r0, #2
	bl sub_08060B9C
	movs r0, #2
	movs r1, #0x90
	movs r2, #0x68
	bl sub_08060C3C
	movs r0, #2
	b _0805FE70
_0805FE44:
	movs r0, #0
	bl sub_08060B9C
	movs r0, #0
	movs r1, #0x60
	movs r2, #0x68
	bl sub_08060C3C
	movs r0, #0
	movs r1, #0
	movs r2, #0xff
	bl sub_08060D40
	movs r0, #1
	bl sub_08060B9C
	movs r0, #1
	movs r1, #0x90
	movs r2, #0x68
	bl sub_08060C3C
	movs r0, #1
_0805FE70:
	movs r1, #0
	movs r2, #0xff
	bl sub_08060D40
	b _0805FE94
_0805FE7A:
	movs r0, #1
	bl sub_08060B9C
	movs r0, #1
	movs r1, #0x78
	movs r2, #0x68
	bl sub_08060C3C
	movs r0, #1
	movs r1, #0
	movs r2, #0xff
	bl sub_08060D40
_0805FE94:
	cmp r7, #2
	bne _0805FEAC
	bl sub_080614E8
	ldr r0, _0805FEF4 @ =0x03004400
	ldr r0, [r0, #0x10]
	bl sub_08061560
	movs r0, #0x50
	movs r1, #0
	bl sub_080615F0
_0805FEAC:
	movs r0, #1
	bl sub_08005A88
	lsls r0, r7, #1
	adds r0, r6, r0
	ldrh r0, [r0]
	bl sub_080077C4
	movs r0, #0x20
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl FadeIn_08008AF4
	ldr r0, _0805FEF8 @ =0x030024E0
	adds r0, #0x4f
	movs r1, #1
	strb r1, [r0]
	bl sub_08008D34
	ldr r0, _0805FEF4 @ =0x03004400
	ldrb r0, [r0, #0xa]
	cmp r0, #0x24
	beq _0805FEDE
	b _08060048
_0805FEDE:
	adds r0, r5, r7
	ldrb r0, [r0]
	bl sub_080059E4
	cmp r7, #1
	beq _0805FF78
	cmp r7, #1
	bgt _0805FEFC
	cmp r7, #0
	beq _0805FF02
	b _08060044
	.align 2, 0
_0805FEF4: .4byte 0x03004400
_0805FEF8: .4byte 0x030024E0
_0805FEFC:
	cmp r7, #2
	beq _0805FF90
	b _08060044
_0805FF02:
	bl sub_08007718
	adds r4, r0, #0
	bl sub_08007724
	adds r4, r4, r0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _0805FF28 @ =0x00470022
	bl sub_080062D0
	lsls r0, r4, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x1e
	bgt _0805FF30
	ldr r0, _0805FF2C @ =0x00470023
	bl sub_080062D0
	b _08060044
	.align 2, 0
_0805FF28: .4byte 0x00470022
_0805FF2C: .4byte 0x00470023
_0805FF30:
	cmp r0, #0x3c
	bgt _0805FF4C
	ldr r0, _0805FF44 @ =0x00470023
	bl sub_080062D0
	ldr r0, _0805FF48 @ =0x00470024
	bl sub_080062D0
	b _08060044
	.align 2, 0
_0805FF44: .4byte 0x00470023
_0805FF48: .4byte 0x00470024
_0805FF4C:
	cmp r0, #0x5a
	bgt _0805FF5C
	ldr r0, _0805FF58 @ =0x00470025
	bl sub_080062D0
	b _08060044
	.align 2, 0
_0805FF58: .4byte 0x00470025
_0805FF5C:
	cmp r0, #0x6d
	bgt _0805FF6C
	ldr r0, _0805FF68 @ =0x00470026
	bl sub_080062D0
	b _08060044
	.align 2, 0
_0805FF68: .4byte 0x00470026
_0805FF6C:
	ldr r0, _0805FF74 @ =0x00470027
	bl sub_080062D0
	b _08060044
	.align 2, 0
_0805FF74: .4byte 0x00470027
_0805FF78:
	ldr r0, _0805FF88 @ =0x0047002F
	bl sub_080062D0
	ldr r0, _0805FF8C @ =0x00470030
	bl sub_080062D0
	b _08060044
	.align 2, 0
_0805FF88: .4byte 0x0047002F
_0805FF8C: .4byte 0x00470030
_0805FF90:
	bl sub_08007724
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r0, _0805FFAC @ =0x00470028
	bl sub_080062D0
	cmp r4, #0
	bne _0805FFB4
	ldr r0, _0805FFB0 @ =0x00470029
	bl sub_080062D0
	b _0805FFBA
	.align 2, 0
_0805FFAC: .4byte 0x00470028
_0805FFB0: .4byte 0x00470029
_0805FFB4:
	ldr r0, _080600BC @ =0x0047002A
	bl sub_080062D0
_0805FFBA:
	movs r0, #1
	bl sub_080077A4
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805FFDA
	lsls r0, r4, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xe
	ble _0805FFDA
	ldr r0, _080600C0 @ =0x0047002B
	bl sub_080062D0
	movs r0, #1
	bl sub_08007790
_0805FFDA:
	movs r0, #2
	bl sub_080077A4
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805FFFC
	bl sub_08007754
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0805FFFC
	ldr r0, _080600C4 @ =0x0047002C
	bl sub_080062D0
	movs r0, #2
	bl sub_08007790
_0805FFFC:
	movs r0, #4
	bl sub_080077A4
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08060020
	bl sub_0800773C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bls _08060020
	ldr r0, _080600C8 @ =0x0047002D
	bl sub_080062D0
	movs r0, #4
	bl sub_08007790
_08060020:
	movs r0, #8
	bl sub_080077A4
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08060044
	bl sub_08007748
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #5
	bls _08060044
	ldr r0, _080600CC @ =0x0047002E
	bl sub_080062D0
	movs r0, #8
	bl sub_08007790
_08060044:
	bl sub_08005A2C
_08060048:
	movs r5, #0
	mov r2, r8
	lsls r6, r2, #0x18
	ldr r3, _080600D0 @ =0x0808FE88
	mov sb, r3
_08060052:
	lsls r4, r5, #0x18
	lsrs r5, r4, #0x18
	asrs r4, r4, #0x18
	lsls r0, r4, #4
	add r0, sl
	ldrb r1, [r0]
	lsls r0, r4, #2
	add r0, sb
	movs r3, #0
	ldrsh r2, [r0, r3]
	str r2, [sp, #0x14]
	movs r3, #2
	ldrsh r2, [r0, r3]
	mov ip, r2
	adds r0, r5, #0
	ldr r2, [sp, #0x14]
	mov r3, ip
	bl sub_08061890
	adds r0, r5, #0
	bl sub_08061BDC
	adds r4, #1
	lsls r4, r4, #0x18
	lsrs r5, r4, #0x18
	asrs r4, r4, #0x18
	cmp r4, #4
	ble _08060052
	bl sub_08061C0C
	ldr r1, _080600D0 @ =0x0808FE88
	asrs r0, r6, #0x16
	adds r0, r0, r1
	ldrh r1, [r0]
	subs r1, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldrh r2, [r0, #2]
	subs r2, #0x20
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r0, #0
	bl sub_0806104C
	movs r0, #0
	bl sub_080613CC
	bl sub_08005934
	movs r0, #1
	bl sub_08005AC0
	b _0806021E
	.align 2, 0
_080600BC: .4byte 0x0047002A
_080600C0: .4byte 0x0047002B
_080600C4: .4byte 0x0047002C
_080600C8: .4byte 0x0047002D
_080600CC: .4byte 0x0047002E
_080600D0: .4byte 0x0808FE88
_080600D4:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08060156
	lsrs r1, r6, #0x18
	adds r0, r7, #0
	bl sub_0805FCD8
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08060150
	cmp r7, #1
	beq _0806010C
	cmp r7, #1
	bgt _080600F8
	cmp r7, #0
	beq _080600FE
	b _0806013A
_080600F8:
	cmp r7, #2
	beq _08060130
	b _0806013A
_080600FE:
	asrs r0, r6, #0x18
	cmp r0, #1
	bgt _08060108
	movs r0, #0
	b _08060126
_08060108:
	movs r0, #2
	b _08060126
_0806010C:
	asrs r0, r6, #0x18
	cmp r0, #3
	bne _08060116
	movs r0, #0
	b _08060126
_08060116:
	cmp r0, #4
	beq _08060124
	movs r0, #0
	movs r1, #2
	movs r2, #0xff
	bl sub_08060D40
_08060124:
	movs r0, #1
_08060126:
	movs r1, #2
	movs r2, #0xff
	bl sub_08060D40
	b _0806013A
_08060130:
	movs r0, #1
	movs r1, #2
	movs r2, #0xff
	bl sub_08060D40
_0806013A:
	movs r0, #0xcc
	bl m4aSongNumStart
	mov r1, r8
	lsls r0, r1, #0x18
	asrs r0, r0, #0x14
	add r0, sl
	ldrb r0, [r0, #1]
	bl ChangeGameState_08008790
	b _08060242
_08060150:
	movs r0, #0xd2
	bl m4aSongNumStart
_08060156:
	ldr r0, _08060180 @ =0x030024B0
	ldrh r1, [r0, #4]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08060184
	movs r0, #0xca
	bl m4aSongNumStart
	mov r2, r8
	lsls r0, r2, #0x18
	movs r3, #0xff
	lsls r3, r3, #0x18
	adds r0, r0, r3
	lsrs r1, r0, #0x18
	mov r8, r1
	cmp r0, #0
	bge _080601AA
	movs r2, #4
	mov r8, r2
	b _080601AA
	.align 2, 0
_08060180: .4byte 0x030024B0
_08060184:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080601AA
	movs r0, #0xca
	bl m4aSongNumStart
	mov r3, r8
	lsls r0, r3, #0x18
	movs r1, #0x80
	lsls r1, r1, #0x11
	adds r0, r0, r1
	lsrs r2, r0, #0x18
	mov r8, r2
	asrs r0, r0, #0x18
	cmp r0, #4
	ble _080601AA
	movs r3, #0
	mov r8, r3
_080601AA:
	ldr r0, [sp, #0x10]
	lsls r1, r0, #0x18
	mov r2, r8
	lsls r0, r2, #0x18
	asrs r5, r0, #0x18
	adds r6, r0, #0
	cmp r1, r6
	beq _08060218
	lsrs r0, r1, #0x18
	bl sub_08061C80
	lsrs r4, r6, #0x18
	adds r0, r4, #0
	bl sub_08061C34
	ldr r0, _0806020C @ =0x0808FE88
	lsls r1, r5, #2
	adds r1, r1, r0
	ldrh r0, [r1]
	subs r0, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r1, #2]
	subs r1, #0x20
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_08061140
	lsls r0, r5, #4
	mov r3, sl
	adds r5, r0, r3
	ldrb r0, [r5, #0xc]
	bl sub_08006744
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_0805FCD8
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08060202
	ldr r0, [r5, #8]
	cmp r0, #0
	bne _08060210
_08060202:
	ldr r0, [r5, #4]
	bl sub_080062D0
	b _08060214
	.align 2, 0
_0806020C: .4byte 0x0808FE88
_08060210:
	bl sub_080062D0
_08060214:
	lsrs r0, r6, #0x18
	str r0, [sp, #0x10]
_08060218:
	movs r0, #1
	bl ProcSleep_08002B98
_0806021E:
	ldr r0, _0806025C @ =0x030024B0
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0806022C
	b _080600D4
_0806022C:
	movs r0, #0xce
	bl m4aSongNumStart
	mov r0, r8
	bl sub_08061C80
	movs r0, #0x24
	bl ChangeGameState_08008790
	movs r1, #0xff
	mov r8, r1
_08060242:
	bl sub_08061108
	movs r5, #0
	mov r2, r8
	lsls r6, r2, #0x18
_0806024C:
	lsls r0, r5, #0x18
	cmp r0, r6
	bne _08060260
	lsrs r0, r0, #0x18
	bl sub_08061BFC
	b _08060266
	.align 2, 0
_0806025C: .4byte 0x030024B0
_08060260:
	lsrs r0, r0, #0x18
	bl sub_08061BEC
_08060266:
	lsls r0, r5, #0x18
	movs r3, #0x80
	lsls r3, r3, #0x11
	adds r0, r0, r3
	lsrs r5, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #4
	ble _0806024C
	bl sub_08061C0C
	movs r5, #0
_0806027C:
	lsls r4, r5, #0x18
	lsrs r0, r4, #0x18
	bl sub_08061978
	movs r0, #0x80
	lsls r0, r0, #0x11
	adds r4, r4, r0
	lsrs r5, r4, #0x18
	asrs r4, r4, #0x18
	cmp r4, #4
	ble _0806027C
	bl sub_08005ACC
	bl sub_08005B18
	bl sub_08005A2C
	bl sub_08061490
	ldr r0, _080602B8 @ =0x03004400
	ldrb r0, [r0, #9]
	subs r0, #0xa
	cmp r0, #0x1a
	bhi _08060334
	lsls r0, r0, #2
	ldr r1, _080602BC @ =_080602C0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080602B8: .4byte 0x03004400
_080602BC: .4byte _080602C0
_080602C0: @ jump table
	.4byte _0806032C @ case 0
	.4byte _0806032C @ case 1
	.4byte _08060334 @ case 2
	.4byte _0806032C @ case 3
	.4byte _0806032C @ case 4
	.4byte _08060334 @ case 5
	.4byte _08060334 @ case 6
	.4byte _08060334 @ case 7
	.4byte _08060334 @ case 8
	.4byte _08060334 @ case 9
	.4byte _0806032C @ case 10
	.4byte _0806032C @ case 11
	.4byte _08060334 @ case 12
	.4byte _08060334 @ case 13
	.4byte _08060334 @ case 14
	.4byte _08060334 @ case 15
	.4byte _08060334 @ case 16
	.4byte _08060334 @ case 17
	.4byte _08060334 @ case 18
	.4byte _08060334 @ case 19
	.4byte _08060334 @ case 20
	.4byte _08060334 @ case 21
	.4byte _08060334 @ case 22
	.4byte _08060334 @ case 23
	.4byte _08060334 @ case 24
	.4byte _08060334 @ case 25
	.4byte _0806032C @ case 26
_0806032C:
	movs r0, #0
	movs r1, #0x20
	bl sub_080077EC
_08060334:
	movs r0, #0x20
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl FadeOut_080089E8
	bl sub_08008D34
	cmp r7, #2
	bne _0806034C
	bl sub_08061534
_0806034C:
	cmp r7, #1
	beq _0806037A
	cmp r7, #1
	bgt _0806035A
	cmp r7, #0
	beq _08060360
	b _080603A0
_0806035A:
	cmp r7, #2
	beq _08060394
	b _080603A0
_08060360:
	movs r0, #0
	bl sub_08060CEC
	movs r0, #0
	bl sub_08060C0C
	movs r0, #2
	bl sub_08060CEC
	movs r0, #2
	bl sub_08060C0C
	b _080603A0
_0806037A:
	movs r0, #0
	bl sub_08060CEC
	movs r0, #0
	bl sub_08060C0C
	movs r0, #1
	bl sub_08060CEC
	movs r0, #1
	bl sub_08060C0C
	b _080603A0
_08060394:
	movs r0, #1
	bl sub_08060CEC
	movs r0, #1
	bl sub_08060C0C
_080603A0:
	bl sub_08061874
	bl sub_08060F64
	bl sub_080607BC
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080603BC
sub_080603BC: @ 0x080603BC
	push {lr}
	ldr r1, _080603D0 @ =0x03004400
	ldrb r0, [r1, #0xa]
	cmp r0, #0x23
	bne _080603D4
	bl sub_08007310
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	b _080603D6
	.align 2, 0
_080603D0: .4byte 0x03004400
_080603D4:
	ldrb r0, [r1, #0xa]
_080603D6:
	subs r0, #0x14
	cmp r0, #0x19
	bhi _08060454
	lsls r0, r0, #2
	ldr r1, _080603E8 @ =_080603EC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080603E8: .4byte _080603EC
_080603EC: @ jump table
	.4byte _08060454 @ case 0
	.4byte _08060458 @ case 1
	.4byte _08060454 @ case 2
	.4byte _08060454 @ case 3
	.4byte _08060454 @ case 4
	.4byte _08060454 @ case 5
	.4byte _08060460 @ case 6
	.4byte _08060464 @ case 7
	.4byte _08060454 @ case 8
	.4byte _08060454 @ case 9
	.4byte _08060454 @ case 10
	.4byte _08060454 @ case 11
	.4byte _08060454 @ case 12
	.4byte _08060454 @ case 13
	.4byte _08060454 @ case 14
	.4byte _08060454 @ case 15
	.4byte _08060454 @ case 16
	.4byte _08060454 @ case 17
	.4byte _08060454 @ case 18
	.4byte _08060454 @ case 19
	.4byte _08060454 @ case 20
	.4byte _08060454 @ case 21
	.4byte _08060454 @ case 22
	.4byte _08060454 @ case 23
	.4byte _08060454 @ case 24
	.4byte _0806045C @ case 25
_08060454:
	movs r1, #0
	b _08060466
_08060458:
	movs r1, #1
	b _08060466
_0806045C:
	movs r1, #2
	b _08060466
_08060460:
	movs r1, #3
	b _08060466
_08060464:
	movs r1, #4
_08060466:
	movs r0, #0
	bl sub_0805FD64
	bl sub_08002B0C
	pop {r0}
	bx r0

	thumb_func_start sub_08060474
sub_08060474: @ 0x08060474
	push {lr}
	ldr r0, _08060488 @ =0x03004400
	ldrb r1, [r0, #0xa]
	cmp r1, #0x23
	bne _0806048C
	bl sub_08007310
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	b _08060496
	.align 2, 0
_08060488: .4byte 0x03004400
_0806048C:
	cmp r1, #0x11
	bne _08060494
	ldrb r0, [r0, #0xb]
	b _08060496
_08060494:
	ldrb r0, [r0, #0xa]
_08060496:
	subs r0, #0x17
	cmp r0, #0x12
	bhi _080604F8
	lsls r0, r0, #2
	ldr r1, _080604A8 @ =_080604AC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080604A8: .4byte _080604AC
_080604AC: @ jump table
	.4byte _080604F8 @ case 0
	.4byte _080604FC @ case 1
	.4byte _08060500 @ case 2
	.4byte _080604F8 @ case 3
	.4byte _080604F8 @ case 4
	.4byte _080604F8 @ case 5
	.4byte _080604F8 @ case 6
	.4byte _080604F8 @ case 7
	.4byte _080604F8 @ case 8
	.4byte _080604F8 @ case 9
	.4byte _080604F8 @ case 10
	.4byte _080604F8 @ case 11
	.4byte _080604F8 @ case 12
	.4byte _080604F8 @ case 13
	.4byte _080604F8 @ case 14
	.4byte _080604F8 @ case 15
	.4byte _080604F8 @ case 16
	.4byte _08060504 @ case 17
	.4byte _08060508 @ case 18
_080604F8:
	movs r1, #0
	b _0806050A
_080604FC:
	movs r1, #1
	b _0806050A
_08060500:
	movs r1, #2
	b _0806050A
_08060504:
	movs r1, #3
	b _0806050A
_08060508:
	movs r1, #4
_0806050A:
	movs r0, #1
	bl sub_0805FD64
	bl sub_08002B0C
	pop {r0}
	bx r0

	thumb_func_start sub_08060518
sub_08060518: @ 0x08060518
	push {lr}
	ldr r1, _0806052C @ =0x03004400
	ldrb r0, [r1, #0xa]
	cmp r0, #0x23
	bne _08060530
	bl sub_08007310
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	b _08060532
	.align 2, 0
_0806052C: .4byte 0x03004400
_08060530:
	ldrb r0, [r1, #0xa]
_08060532:
	subs r0, #0xa
	cmp r0, #0x12
	bhi _08060594
	lsls r0, r0, #2
	ldr r1, _08060544 @ =_08060548
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08060544: .4byte _08060548
_08060548: @ jump table
	.4byte _08060594 @ case 0
	.4byte _08060598 @ case 1
	.4byte _08060594 @ case 2
	.4byte _0806059C @ case 3
	.4byte _080605A0 @ case 4
	.4byte _08060594 @ case 5
	.4byte _08060594 @ case 6
	.4byte _08060594 @ case 7
	.4byte _08060594 @ case 8
	.4byte _08060594 @ case 9
	.4byte _08060594 @ case 10
	.4byte _08060594 @ case 11
	.4byte _08060594 @ case 12
	.4byte _08060594 @ case 13
	.4byte _08060594 @ case 14
	.4byte _08060594 @ case 15
	.4byte _08060594 @ case 16
	.4byte _08060594 @ case 17
	.4byte _080605A4 @ case 18
_08060594:
	movs r1, #0
	b _080605A6
_08060598:
	movs r1, #1
	b _080605A6
_0806059C:
	movs r1, #2
	b _080605A6
_080605A0:
	movs r1, #3
	b _080605A6
_080605A4:
	movs r1, #4
_080605A6:
	movs r0, #2
	bl sub_0805FD64
	bl sub_08002B0C
	pop {r0}
	bx r0
