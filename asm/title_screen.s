	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .text
	.ARM
	.syntax unified

	thumb_func_start sub_080588F8
sub_080588F8: @ 0x080588F8
	push {r4, r5, r6, lr}
	sub sp, #8
	ldr r0, _08058AE4 @ =0x08091534
	ldr r1, _08058AE8 @ =0x05000200
	bl sub_08008308
	ldr r0, _08058AEC @ =0x08091B4C
	mov r1, sp
	bl sub_08008380
	ldr r5, _08058AF0 @ =0x0300162C
	ldr r1, [r5]
	str r0, [r1, #0x70]
	ldr r0, [sp]
	str r0, [r1, #0x74]
	ldr r0, _08058AF4 @ =0x08190EF8
	ldr r1, _08058AF8 @ =0x05000220
	bl sub_08008308
	ldr r0, _08058AFC @ =0x081924C8
	mov r1, sp
	bl sub_08008380
	ldr r1, [r5]
	str r0, [r1, #0x78]
	ldr r0, [sp]
	str r0, [r1, #0x7c]
	ldr r0, _08058B00 @ =0x08197550
	ldr r1, _08058B04 @ =0x05000240
	bl sub_08008308
	ldr r0, _08058B08 @ =0x08197794
	mov r1, sp
	bl sub_08008380
	ldr r1, [r5]
	adds r2, r1, #0
	adds r2, #0x80
	str r0, [r2]
	adds r1, #0x84
	ldr r0, [sp]
	str r0, [r1]
	ldr r4, _08058B0C @ =0x06011400
	ldr r0, _08058B10 @ =0x0809B574
	ldr r1, _08058B14 @ =0x05000280
	bl sub_08008308
	ldr r0, [r5]
	str r4, [r0, #0x20]
	ldr r0, _08058B18 @ =0x0809C0D4
	adds r1, r4, #0
	bl sub_08008374
	adds r4, r0, r4
	ldr r0, [r5]
	str r4, [r0, #0x24]
	ldr r1, _08058B1C @ =0x0808EE1C
	adds r0, #0x8c
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	adds r1, r4, #0
	bl sub_08008374
	adds r4, r4, r0
	ldr r1, _08058B20 @ =0x080954C8
	ldr r6, _08058B24 @ =0x03004400
	ldrb r0, [r6, #0x14]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _08058B28 @ =0x050002E0
	bl sub_08008308
	ldr r0, [r5]
	str r4, [r0, #0x28]
	ldr r1, _08058B2C @ =0x080954CC
	ldrb r0, [r6, #0x14]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	adds r1, r4, #0
	bl sub_08008374
	adds r4, r4, r0
	ldr r1, _08058B30 @ =0x080954D8
	ldrb r0, [r6, #0x14]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _08058B34 @ =0x00000171
	bl sub_08009554
	ldr r0, _08058B38 @ =0x080906B0
	ldr r1, _08058B3C @ =0x05000340
	bl sub_08008308
	ldr r0, [r5]
	str r4, [r0, #0x2c]
	ldr r0, _08058B40 @ =0x080909B8
	adds r1, r4, #0
	bl sub_08008374
	ldr r1, _08058B44 @ =0x080943E8
	ldrb r0, [r6, #0x14]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0xa0
	lsls r1, r1, #0x13
	bl sub_08008308
	ldr r1, _08058B48 @ =0x080943EC
	ldrb r0, [r6, #0x14]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	bl sub_08008374
	ldr r1, _08058B4C @ =0x080943F0
	ldrb r0, [r6, #0x14]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _08058B50 @ =0x06003800
	movs r2, #0
	movs r3, #0
	bl sub_080083CC
	ldr r1, _08058B54 @ =0x030024E0
	movs r0, #0xe0
	lsls r0, r0, #3
	strh r0, [r1, #2]
	ldr r1, _08058B58 @ =0x0808EDD4
	ldr r0, [r5]
	adds r0, #0x8c
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_0800B02C
	ldr r0, [r5]
	adds r2, r0, #0
	adds r2, #0x8c
	ldrb r0, [r2]
	cmp r0, #0
	beq _08058A48
	ldr r1, _08058B5C @ =0x0808EDEC
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _08058B60 @ =0x050000E0
	bl sub_08008308
	ldr r1, _08058B64 @ =0x0808EE04
	ldr r0, [r5]
	adds r0, #0x8c
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _08058B68 @ =0x050001A0
	bl sub_08008308
_08058A48:
	ldr r0, _08058B6C @ =sub_08059404
	movs r1, #0x41
	movs r2, #0
	bl sub_08007968
	ldr r1, [r5]
	strh r0, [r1, #8]
	ldr r0, _08058B70 @ =sub_080596F8
	movs r1, #0x42
	movs r2, #0
	bl sub_08007968
	ldr r1, [r5]
	strh r0, [r1, #0xc]
	ldr r0, _08058B74 @ =sub_080594F8
	movs r1, #0x42
	movs r2, #0
	bl sub_08007968
	ldr r1, [r5]
	strh r0, [r1, #0xa]
	ldr r0, _08058B78 @ =sub_08059928
	movs r1, #0x42
	movs r2, #0
	bl sub_08007968
	ldr r1, [r5]
	strh r0, [r1, #0x10]
	ldr r0, _08058B7C @ =sub_08059CF8
	movs r1, #0x42
	movs r2, #0
	bl sub_08007968
	ldr r1, [r5]
	strh r0, [r1, #0x12]
	ldr r0, _08058B80 @ =sub_08059FC8
	movs r1, #0x42
	movs r2, #0
	bl sub_08007968
	ldr r1, [r5]
	strh r0, [r1, #0x14]
	ldr r0, _08058B84 @ =sub_0805A41C
	movs r1, #0x42
	movs r2, #0
	bl sub_08007968
	ldr r1, [r5]
	strh r0, [r1, #0x16]
	movs r0, #0xf0
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #3
	bl sub_08006BE8
	bl sub_080057C0
	ldr r0, [r5]
	ldrb r1, [r6, #9]
	adds r0, #0x88
	strb r1, [r0]
	ldrb r0, [r6, #0xa]
	cmp r0, #0x23
	bne _08058ADC
	bl sub_08007310
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1d
	bne _08058ADC
	ldr r0, [r5]
	adds r0, #0x8e
	movs r1, #1
	strb r1, [r0]
_08058ADC:
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08058AE4: .4byte 0x08091534
_08058AE8: .4byte 0x05000200
_08058AEC: .4byte 0x08091B4C
_08058AF0: .4byte 0x0300162C
_08058AF4: .4byte 0x08190EF8
_08058AF8: .4byte 0x05000220
_08058AFC: .4byte 0x081924C8
_08058B00: .4byte 0x08197550
_08058B04: .4byte 0x05000240
_08058B08: .4byte 0x08197794
_08058B0C: .4byte 0x06011400
_08058B10: .4byte 0x0809B574
_08058B14: .4byte 0x05000280
_08058B18: .4byte 0x0809C0D4
_08058B1C: .4byte 0x0808EE1C
_08058B20: .4byte 0x080954C8
_08058B24: .4byte 0x03004400
_08058B28: .4byte 0x050002E0
_08058B2C: .4byte 0x080954CC
_08058B30: .4byte 0x080954D8
_08058B34: .4byte 0x00000171
_08058B38: .4byte 0x080906B0
_08058B3C: .4byte 0x05000340
_08058B40: .4byte 0x080909B8
_08058B44: .4byte 0x080943E8
_08058B48: .4byte 0x080943EC
_08058B4C: .4byte 0x080943F0
_08058B50: .4byte 0x06003800
_08058B54: .4byte 0x030024E0
_08058B58: .4byte 0x0808EDD4
_08058B5C: .4byte 0x0808EDEC
_08058B60: .4byte 0x050000E0
_08058B64: .4byte 0x0808EE04
_08058B68: .4byte 0x050001A0
_08058B6C: .4byte sub_08059404
_08058B70: .4byte sub_080596F8
_08058B74: .4byte sub_080594F8
_08058B78: .4byte sub_08059928
_08058B7C: .4byte sub_08059CF8
_08058B80: .4byte sub_08059FC8
_08058B84: .4byte sub_0805A41C

	thumb_func_start sub_08058B88
sub_08058B88: @ 0x08058B88
	push {r4, lr}
	ldr r1, _08058BF0 @ =0x080954D8
	ldr r0, _08058BF4 @ =0x03004400
	ldrb r0, [r0, #0x14]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_080095E0
	bl sub_0800585C
	bl sub_0800B17C
	ldr r4, _08058BF8 @ =0x0300162C
	ldr r0, [r4]
	movs r1, #8
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	ldr r0, [r4]
	movs r1, #0xc
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	ldr r0, [r4]
	movs r1, #0xa
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	ldr r0, [r4]
	movs r1, #0x10
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	ldr r0, [r4]
	movs r1, #0x12
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	ldr r0, [r4]
	movs r1, #0x14
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	ldr r0, [r4]
	movs r1, #0x16
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08058BF0: .4byte 0x080954D8
_08058BF4: .4byte 0x03004400
_08058BF8: .4byte 0x0300162C

	thumb_func_start sub_08058BFC
sub_08058BFC: @ 0x08058BFC
	push {r4, r5, lr}
	movs r0, #0
	bl sub_080081A0
	bl sub_08008174
	ldr r4, _08058C4C @ =0x0300162C
	movs r0, #0x90
	bl sub_08007CE8
	adds r1, r0, #0
	str r1, [r4]
	movs r0, #0
	movs r2, #0x90
	bl sub_08007EFC
	bl sub_08007418
	ldr r1, [r4]
	adds r1, #0x8c
	strb r0, [r1]
	bl sub_080588F8
	ldr r0, [r4]
	ldrb r0, [r0, #6]
	cmp r0, #0
	bne _08058C66
	ldr r5, _08058C50 @ =0x0808EE84
_08058C34:
	ldr r1, [r4]
	ldrh r0, [r1, #4]
	cmp r0, #0
	bne _08058C54
	ldrb r0, [r1]
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	bl call_via_r0
	b _08058C58
	.align 2, 0
_08058C4C: .4byte 0x0300162C
_08058C50: .4byte 0x0808EE84
_08058C54:
	subs r0, #1
	strh r0, [r1, #4]
_08058C58:
	movs r0, #1
	bl sub_08002B98
	ldr r0, [r4]
	ldrb r0, [r0, #6]
	cmp r0, #0
	beq _08058C34
_08058C66:
	ldr r4, _08058CA0 @ =0x0300162C
	ldr r0, [r4]
	adds r0, #0x88
	ldrb r0, [r0]
	bl sub_08008790
	bl sub_08058B88
	ldr r0, [r4]
	ldr r0, [r0, #0x70]
	bl sub_08007CF8
	ldr r0, [r4]
	ldr r0, [r0, #0x78]
	bl sub_08007CF8
	ldr r0, [r4]
	adds r0, #0x80
	ldr r0, [r0]
	bl sub_08007CF8
	ldr r0, [r4]
	bl sub_08007CF8
	bl sub_08002B0C
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08058CA0: .4byte 0x0300162C

	thumb_func_start sub_08058CA4
sub_08058CA4: @ 0x08058CA4
	ldr r1, _08058CB8 @ =0x0300162C
	ldr r3, [r1]
	movs r2, #0
	strb r0, [r3]
	ldr r0, [r1]
	strb r2, [r0, #1]
	ldr r0, [r1]
	strh r2, [r0, #2]
	strh r2, [r0, #4]
	bx lr
	.align 2, 0
_08058CB8: .4byte 0x0300162C

	thumb_func_start sub_08058CBC
sub_08058CBC: @ 0x08058CBC
	push {r4, r5, r6, lr}
	ldr r5, _08058CD0 @ =0x0300162C
	ldr r2, [r5]
	ldrb r0, [r2, #1]
	cmp r0, #0
	beq _08058CD4
	cmp r0, #1
	beq _08058D30
	b _08058D48
	.align 2, 0
_08058CD0: .4byte 0x0300162C
_08058CD4:
	ldr r3, _08058D2C @ =0x030024E0
	ldrh r1, [r3]
	movs r4, #0x80
	lsls r4, r4, #4
	adds r0, r4, #0
	orrs r1, r0
	movs r6, #0x80
	lsls r6, r6, #3
	adds r0, r6, #0
	orrs r1, r0
	movs r4, #0
	movs r6, #0x80
	lsls r6, r6, #2
	adds r0, r6, #0
	orrs r1, r0
	orrs r1, r4
	strh r1, [r3]
	adds r0, r2, #0
	adds r0, #0x8e
	ldrb r0, [r0]
	cmp r0, #0
	bne _08058D0A
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r2, #0
	orrs r1, r0
	strh r1, [r3]
_08058D0A:
	adds r0, r3, #0
	adds r0, #0x4f
	movs r4, #1
	strb r4, [r0]
	ldr r0, [r5]
	adds r0, #0x8e
	ldrb r0, [r0]
	cmp r0, #0
	beq _08058D22
	movs r0, #5
	bl m4aSongNumStart
_08058D22:
	bl sub_0803B840
	ldr r0, [r5]
	strb r4, [r0, #1]
	b _08058D48
	.align 2, 0
_08058D2C: .4byte 0x030024E0
_08058D30:
	adds r0, r2, #0
	adds r0, #0x8e
	ldrb r0, [r0]
	cmp r0, #0
	beq _08058D42
	movs r0, #5
	bl sub_08058CA4
	b _08058D48
_08058D42:
	movs r0, #2
	bl sub_08058CA4
_08058D48:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08058D50
sub_08058D50: @ 0x08058D50
	push {r4, lr}
	sub sp, #0xc
	ldr r0, _08058D64 @ =0x0300162C
	ldr r0, [r0]
	ldrb r4, [r0, #1]
	cmp r4, #0
	beq _08058D68
	cmp r4, #1
	beq _08058DE0
	b _08058DE2
	.align 2, 0
_08058D64: .4byte 0x0300162C
_08058D68:
	adds r0, #0x88
	ldrb r0, [r0]
	cmp r0, #0x24
	bne _08058DC0
	ldr r0, _08058DA8 @ =0x02031050
	movs r1, #0x89
	lsls r1, r1, #4
	adds r0, r0, r1
	ldr r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r1, #0
	blt _08058D8E
	orrs r1, r2
	str r1, [r0]
	ldr r0, _08058DAC @ =0x030056F0
	movs r1, #4
	bl m4aMPlayFadeOut
_08058D8E:
	movs r3, #0xa0
	lsls r3, r3, #2
	str r4, [sp]
	movs r0, #0x78
	str r0, [sp, #4]
	movs r0, #0x50
	str r0, [sp, #8]
	movs r0, #1
	movs r1, #0
	movs r2, #0x40
	bl sub_08008D4C
	b _08058DB6
	.align 2, 0
_08058DA8: .4byte 0x02031050
_08058DAC: .4byte 0x030056F0
_08058DB0:
	movs r0, #1
	bl sub_08002B98
_08058DB6:
	bl sub_08008E9C
	cmp r0, #0
	beq _08058DB0
	b _08058DCC
_08058DC0:
	ldr r0, _08058DD8 @ =0x030056F0
	movs r1, #2
	bl m4aMPlayFadeOut
	bl sub_0803B868
_08058DCC:
	ldr r0, _08058DDC @ =0x0300162C
	ldr r1, [r0]
	movs r0, #1
	strb r0, [r1, #1]
	b _08058DE2
	.align 2, 0
_08058DD8: .4byte 0x030056F0
_08058DDC: .4byte 0x0300162C
_08058DE0:
	strb r4, [r0, #6]
_08058DE2:
	add sp, #0xc
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08058DEC
sub_08058DEC: @ 0x08058DEC
	push {r4, lr}
	ldr r4, _08058E04 @ =0x0300162C
	ldr r2, [r4]
	ldrb r0, [r2, #1]
	cmp r0, #1
	beq _08058E26
	cmp r0, #1
	bgt _08058E08
	cmp r0, #0
	beq _08058E12
	b _08058E9C
	.align 2, 0
_08058E04: .4byte 0x0300162C
_08058E08:
	cmp r0, #2
	beq _08058E3C
	cmp r0, #3
	beq _08058E7C
	b _08058E9C
_08058E12:
	adds r1, r2, #0
	adds r1, #0x8a
	strh r0, [r1]
	strh r0, [r2, #2]
	bl sub_080598DC
	ldr r1, [r4]
	movs r0, #1
	strb r0, [r1, #1]
	b _08058E9C
_08058E26:
	ldrb r0, [r2, #0x18]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _08058E9C
	movs r0, #2
	bl m4aSongNumStart
	ldr r1, [r4]
	movs r0, #2
	strb r0, [r1, #1]
	b _08058E9C
_08058E3C:
	ldr r0, _08058E58 @ =0x030024B0
	ldrh r1, [r0]
	movs r0, #9
	ands r0, r1
	cmp r0, #0
	beq _08058E5C
	movs r0, #0xc9
	bl m4aSongNumStart
	ldr r1, [r4]
	movs r0, #3
	strb r0, [r1, #1]
	b _08058E9C
	.align 2, 0
_08058E58: .4byte 0x030024B0
_08058E5C:
	adds r1, r2, #0
	adds r1, #0x8a
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	ldr r1, _08058E78 @ =0x07070000
	cmp r0, r1
	bls _08058E9C
	adds r1, r2, #0
	adds r1, #0x88
	movs r0, #0x13
	strb r0, [r1]
	b _08058E8E
	.align 2, 0
_08058E78: .4byte 0x07070000
_08058E7C:
	bl sub_08007430
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08058E96
	ldr r0, [r4]
	adds r0, #0x88
	movs r1, #0x1d
	strb r1, [r0]
_08058E8E:
	movs r0, #1
	bl sub_08058CA4
	b _08058E9C
_08058E96:
	movs r0, #3
	bl sub_08058CA4
_08058E9C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08058EA4
sub_08058EA4: @ 0x08058EA4
	push {r4, r5, lr}
	ldr r5, _08058EBC @ =0x0300162C
	ldr r0, [r5]
	ldrb r4, [r0, #1]
	cmp r4, #1
	beq _08058EDA
	cmp r4, #1
	bgt _08058EC0
	cmp r4, #0
	beq _08058EC6
	b _08058F3A
	.align 2, 0
_08058EBC: .4byte 0x0300162C
_08058EC0:
	cmp r4, #2
	beq _08058EEE
	b _08058F3A
_08058EC6:
	adds r0, #0x89
	strb r4, [r0]
	bl sub_080598F8
	ldr r1, [r5]
	movs r0, #1
	strb r0, [r1, #1]
	ldr r0, [r5]
	strh r4, [r0, #2]
	b _08058F3A
_08058EDA:
	ldrb r0, [r0, #0x18]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _08058F3A
	bl sub_0800B7F8
	ldr r1, [r5]
	movs r0, #2
	strb r0, [r1, #1]
	b _08058F3A
_08058EEE:
	adds r2, r0, #0
	adds r2, #0x89
	ldrb r2, [r2]
	cmp r2, #1
	beq _08058F1C
	cmp r2, #1
	bgt _08058F02
	cmp r2, #0
	beq _08058F08
	b _08058F3A
_08058F02:
	cmp r2, #2
	beq _08058F2C
	b _08058F3A
_08058F08:
	ldr r0, _08058F18 @ =0x030056F0
	movs r1, #3
	bl m4aMPlayFadeOut
	movs r0, #4
	bl sub_08058CA4
	b _08058F3A
	.align 2, 0
_08058F18: .4byte 0x030056F0
_08058F1C:
	adds r1, r0, #0
	adds r1, #0x88
	movs r0, #0x1e
	strb r0, [r1]
	movs r0, #1
	bl sub_08058CA4
	b _08058F3A
_08058F2C:
	adds r1, r0, #0
	adds r1, #0x88
	movs r0, #0x25
	strb r0, [r1]
	movs r0, #1
	bl sub_08058CA4
_08058F3A:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08058F40
sub_08058F40: @ 0x08058F40
	push {r4, r5, lr}
	ldr r5, _08058F58 @ =0x0300162C
	ldr r3, [r5]
	ldrb r2, [r3, #1]
	cmp r2, #1
	beq _08058F88
	cmp r2, #1
	bgt _08058F5C
	cmp r2, #0
	beq _08058F66
	b _08058FF6
	.align 2, 0
_08058F58: .4byte 0x0300162C
_08058F5C:
	cmp r2, #2
	beq _08058FDC
	cmp r2, #3
	beq _08058FE2
	b _08058FF6
_08058F66:
	ldr r1, _08058F80 @ =0x030024E0
	adds r4, r1, #0
	adds r4, #0x4a
	ldr r0, _08058F84 @ =0x00001E41
	strh r0, [r4]
	adds r1, #0x4c
	movs r0, #0x10
	strh r0, [r1]
	strh r2, [r3, #2]
	movs r0, #1
	strb r0, [r3, #1]
	b _08058FF6
	.align 2, 0
_08058F80: .4byte 0x030024E0
_08058F84: .4byte 0x00001E41
_08058F88:
	ldrh r1, [r3, #2]
	movs r0, #0x10
	subs r4, r0, r1
	cmp r1, #0
	bne _08058F96
	bl sub_080593CC
_08058F96:
	ldr r1, [r5]
	ldrh r0, [r1, #2]
	adds r0, #1
	strh r0, [r1, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r2, _08058FD4 @ =0x030024E0
	cmp r0, #0x10
	bls _08058FBE
	ldrh r1, [r2]
	ldr r0, _08058FD8 @ =0x0000FEFF
	ands r0, r1
	strh r0, [r2]
	adds r1, r2, #0
	adds r1, #0x4a
	movs r0, #0
	strh r0, [r1]
	ldr r1, [r5]
	movs r0, #3
	strb r0, [r1, #1]
_08058FBE:
	movs r0, #0x10
	subs r0, r0, r4
	movs r1, #0x1f
	ands r0, r1
	lsls r0, r0, #8
	ands r4, r1
	orrs r0, r4
	adds r1, r2, #0
	adds r1, #0x4c
	strh r0, [r1]
	b _08058FF6
	.align 2, 0
_08058FD4: .4byte 0x030024E0
_08058FD8: .4byte 0x0000FEFF
_08058FDC:
	movs r0, #3
	strb r0, [r3, #1]
	b _08058FF6
_08058FE2:
	ldrb r0, [r3, #0x18]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _08058FF6
	movs r0, #5
	bl m4aSongNumStartOrContinue
	movs r0, #5
	bl sub_08058CA4
_08058FF6:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08058FFC
sub_08058FFC: @ 0x08058FFC
	push {r4, lr}
	sub sp, #4
	ldr r1, _08059018 @ =0x0300162C
	ldr r0, [r1]
	ldrb r0, [r0, #1]
	adds r4, r1, #0
	cmp r0, #4
	bls _0805900E
	b _08059134
_0805900E:
	lsls r0, r0, #2
	ldr r1, _0805901C @ =_08059020
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08059018: .4byte 0x0300162C
_0805901C: .4byte _08059020
_08059020: @ jump table
	.4byte _08059034 @ case 0
	.4byte _08059070 @ case 1
	.4byte _080590B0 @ case 2
	.4byte _080590F4 @ case 3
	.4byte _0805911A @ case 4
_08059034:
	bl sub_08003F9C
	movs r0, #0x80
	lsls r0, r0, #1
	str r0, [sp]
	movs r0, #3
	movs r1, #0x1c
	movs r2, #0xe
	movs r3, #0
	bl sub_08004028
	movs r0, #1
	bl sub_08004124
	movs r0, #1
	bl sub_08005A88
	ldr r2, _0805906C @ =0x0300162C
	ldr r1, [r2]
	movs r0, #0x3c
	strh r0, [r1, #4]
	movs r0, #1
	strb r0, [r1, #1]
	ldr r0, [r2]
	adds r0, #0x88
	movs r1, #0x24
	strb r1, [r0]
	b _08059134
	.align 2, 0
_0805906C: .4byte 0x0300162C
_08059070:
	bl sub_08005934
	ldr r0, _0805909C @ =0x0808EBFC
	ldr r4, _080590A0 @ =0x0300162C
	ldr r1, [r4]
	ldr r1, [r1, #0x64]
	movs r2, #0
	bl sub_080004D4
	bl sub_08005A2C
	ldr r0, _080590A4 @ =0x02031050
	movs r1, #0x89
	lsls r1, r1, #4
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	bge _080590A8
	movs r0, #1
	bl sub_08058CA4
	b _08059134
	.align 2, 0
_0805909C: .4byte 0x0808EBFC
_080590A0: .4byte 0x0300162C
_080590A4: .4byte 0x02031050
_080590A8:
	ldr r1, [r4]
	movs r0, #2
	strb r0, [r1, #1]
	b _08059134
_080590B0:
	ldr r0, [r4]
	ldr r0, [r0, #0x64]
	ldrb r0, [r0, #1]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _08059134
	bl sub_08005934
	ldr r0, _080590EC @ =0x0808EC04
	ldr r1, [r4]
	ldr r1, [r1, #0x64]
	movs r2, #0
	bl sub_080004D4
	bl sub_08005A2C
	bl sub_0805A974
	ldr r1, [r4]
	movs r0, #0x20
	strh r0, [r1, #4]
	ldr r0, _080590F0 @ =0x030056F0
	movs r1, #8
	bl m4aMPlayFadeOut
	ldr r1, [r4]
	movs r0, #3
	strb r0, [r1, #1]
	b _08059134
	.align 2, 0
_080590EC: .4byte 0x0808EC04
_080590F0: .4byte 0x030056F0
_080590F4:
	ldr r0, [r4]
	ldr r1, [r0, #0x64]
	ldrb r0, [r1, #1]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _08059134
	adds r0, r1, #0
	movs r1, #0xc
	bl sub_08009AFC
	ldr r0, [r4]
	ldr r0, [r0, #0x64]
	movs r1, #2
	bl sub_08009B40
	ldr r1, [r4]
	movs r0, #4
	strb r0, [r1, #1]
	b _08059134
_0805911A:
	ldr r0, [r4]
	ldr r1, [r0, #0x64]
	ldrb r0, [r1, #1]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _08059134
	adds r0, r1, #0
	movs r1, #0xff
	bl sub_08009B40
	movs r0, #6
	bl sub_08058CA4
_08059134:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0805913C
sub_0805913C: @ 0x0805913C
	push {r4, lr}
	ldr r1, _08059158 @ =0x0300162C
	ldr r0, [r1]
	ldrb r0, [r0, #1]
	adds r4, r1, #0
	cmp r0, #0xb
	bls _0805914C
	b _0805936A
_0805914C:
	lsls r0, r0, #2
	ldr r1, _0805915C @ =_08059160
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08059158: .4byte 0x0300162C
_0805915C: .4byte _08059160
_08059160: @ jump table
	.4byte _08059190 @ case 0
	.4byte _080591A4 @ case 1
	.4byte _080591E8 @ case 2
	.4byte _08059220 @ case 3
	.4byte _08059248 @ case 4
	.4byte _08059278 @ case 5
	.4byte _080592A8 @ case 6
	.4byte _080592BC @ case 7
	.4byte _080592FC @ case 8
	.4byte _08059312 @ case 9
	.4byte _08059340 @ case 10
	.4byte _08059364 @ case 11
_08059190:
	bl sub_08059F60
	ldr r0, _080591A0 @ =0x0300162C
	ldr r1, [r0]
	movs r0, #1
	strb r0, [r1, #1]
	b _0805936A
	.align 2, 0
_080591A0: .4byte 0x0300162C
_080591A4:
	ldr r1, [r4]
	ldrb r0, [r1, #0x18]
	lsls r0, r0, #0x1c
	cmp r0, #0
	bge _080591B0
	b _0805936A
_080591B0:
	ldr r0, [r1, #0x64]
	movs r1, #0xa
	bl sub_08009AFC
	ldr r0, [r4]
	ldr r0, [r0, #0x64]
	movs r1, #0
	bl sub_08009B40
	bl sub_08005934
	ldr r0, _080591E4 @ =0x0808EC10
	ldr r1, [r4]
	ldr r1, [r1, #0x68]
	movs r2, #0
	bl sub_080004D4
	bl sub_08005A2C
	bl sub_0805A3B4
	ldr r1, [r4]
	movs r0, #2
	strb r0, [r1, #1]
	b _0805936A
	.align 2, 0
_080591E4: .4byte 0x0808EC10
_080591E8:
	ldr r0, [r4]
	ldrb r0, [r0, #0x18]
	lsls r0, r0, #0x1b
	cmp r0, #0
	bge _080591F4
	b _0805936A
_080591F4:
	bl sub_08005934
	ldr r0, _0805921C @ =0x0808EC18
	ldr r2, [r4]
	ldr r1, [r2, #0x68]
	ldr r2, [r2, #0x6c]
	bl sub_080004D4
	bl sub_08005A2C
	bl sub_08059F7C
	bl sub_0805A3D0
	ldr r1, [r4]
	movs r0, #0x78
	strh r0, [r1, #4]
	movs r0, #3
	strb r0, [r1, #1]
	b _0805936A
	.align 2, 0
_0805921C: .4byte 0x0808EC18
_08059220:
	bl sub_08005934
	ldr r0, _08059240 @ =0x0808EC2C
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	bl sub_08005A2C
	ldr r0, _08059244 @ =0x0300162C
	ldr r1, [r0]
	movs r0, #0x78
	strh r0, [r1, #4]
	movs r0, #4
	strb r0, [r1, #1]
	b _0805936A
	.align 2, 0
_08059240: .4byte 0x0808EC2C
_08059244: .4byte 0x0300162C
_08059248:
	ldr r0, [r4]
	ldr r0, [r0, #0x68]
	ldrb r0, [r0, #1]
	lsrs r0, r0, #7
	cmp r0, #0
	bne _08059256
	b _0805936A
_08059256:
	bl sub_08059F40
	ldr r0, [r4]
	ldr r0, [r0, #0x68]
	movs r1, #0
	bl sub_08009AFC
	bl sub_080593E8
	bl sub_0805A764
	ldr r1, [r4]
	movs r0, #0x3c
	strh r0, [r1, #4]
	movs r0, #5
	strb r0, [r1, #1]
	b _0805936A
_08059278:
	bl sub_08005934
	ldr r0, _080592A0 @ =0x0808EC34
	ldr r4, _080592A4 @ =0x0300162C
	ldr r2, [r4]
	ldr r1, [r2, #0x68]
	ldr r2, [r2, #0x6c]
	bl sub_080004D4
	bl sub_08005A2C
	bl sub_08059F98
	bl sub_0805A998
	ldr r1, [r4]
	movs r0, #6
	strb r0, [r1, #1]
	b _0805936A
	.align 2, 0
_080592A0: .4byte 0x0808EC34
_080592A4: .4byte 0x0300162C
_080592A8:
	ldr r1, [r4]
	ldrb r0, [r1, #0x18]
	lsls r0, r0, #0x1c
	cmp r0, #0
	blt _0805936A
	movs r0, #0x3c
	strh r0, [r1, #4]
	movs r0, #7
	strb r0, [r1, #1]
	b _0805936A
_080592BC:
	ldr r0, [r4]
	ldr r0, [r0, #0x6c]
	ldrb r0, [r0, #1]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _0805936A
	bl sub_08005934
	ldr r0, _080592F4 @ =0x0808EC44
	ldr r1, [r4]
	ldr r1, [r1, #0x6c]
	movs r2, #0
	bl sub_080004D4
	bl sub_0805A3EC
	ldr r0, _080592F8 @ =0x0808EC50
	ldr r1, [r4]
	ldr r1, [r1, #0x6c]
	movs r2, #0
	bl sub_080004D4
	bl sub_08005A2C
	ldr r1, [r4]
	movs r0, #8
	strb r0, [r1, #1]
	b _0805936A
	.align 2, 0
_080592F4: .4byte 0x0808EC44
_080592F8: .4byte 0x0808EC50
_080592FC:
	ldr r0, [r4]
	ldrb r0, [r0, #0x18]
	lsls r0, r0, #0x1b
	cmp r0, #0
	blt _0805936A
	bl sub_08059CC8
	ldr r1, [r4]
	movs r0, #9
	strb r0, [r1, #1]
	b _0805936A
_08059312:
	ldr r0, [r4]
	ldrb r0, [r0, #0x18]
	lsls r0, r0, #0x1d
	cmp r0, #0
	blt _0805936A
	movs r0, #0x4d
	bl m4aSongNumStart
	bl sub_08005934
	ldr r0, _0805933C @ =0x0808EC58
	ldr r1, [r4]
	ldr r1, [r1, #0x64]
	movs r2, #0
	bl sub_080004D4
	ldr r1, [r4]
	movs r0, #0xa
	strb r0, [r1, #1]
	b _0805936A
	.align 2, 0
_0805933C: .4byte 0x0808EC58
_08059340:
	ldr r0, [r4]
	ldr r1, [r0, #0x64]
	ldrb r0, [r1, #1]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _0805936A
	ldr r0, _08059360 @ =0x0808EC64
	movs r2, #0
	bl sub_080004D4
	bl sub_08005A2C
	ldr r1, [r4]
	movs r0, #0xb
	strb r0, [r1, #1]
	b _0805936A
	.align 2, 0
_08059360: .4byte 0x0808EC64
_08059364:
	movs r0, #1
	bl sub_08058CA4
_0805936A:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08059370
sub_08059370: @ 0x08059370
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _080593A4 @ =0x0300162C
	ldr r0, [r5]
	movs r1, #8
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	movs r1, #0
	strb r1, [r0]
	strh r1, [r0, #2]
	ldr r0, [r5]
	movs r1, #8
	ldrsh r0, [r0, r1]
	ldr r1, _080593A8 @ =0x0808EF34
	lsls r4, r4, #2
	adds r4, r4, r1
	ldr r1, [r4]
	bl sub_08007B84
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080593A4: .4byte 0x0300162C
_080593A8: .4byte 0x0808EF34

	thumb_func_start sub_080593AC
sub_080593AC: @ 0x080593AC
	push {lr}
	ldr r0, _080593C8 @ =0x0300162C
	ldr r2, [r0]
	ldrb r1, [r2, #0x18]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #0x18]
	movs r0, #0
	bl sub_08059370
	pop {r0}
	bx r0
	.align 2, 0
_080593C8: .4byte 0x0300162C

	thumb_func_start sub_080593CC
sub_080593CC: @ 0x080593CC
	push {lr}
	ldr r0, _080593E4 @ =0x0300162C
	ldr r2, [r0]
	ldrb r0, [r2, #0x18]
	movs r1, #1
	orrs r0, r1
	strb r0, [r2, #0x18]
	movs r0, #1
	bl sub_08059370
	pop {r0}
	bx r0
	.align 2, 0
_080593E4: .4byte 0x0300162C

	thumb_func_start sub_080593E8
sub_080593E8: @ 0x080593E8
	push {lr}
	ldr r0, _08059400 @ =0x0300162C
	ldr r2, [r0]
	ldrb r0, [r2, #0x18]
	movs r1, #1
	orrs r0, r1
	strb r0, [r2, #0x18]
	movs r0, #2
	bl sub_08059370
	pop {r0}
	bx r0
	.align 2, 0
_08059400: .4byte 0x0300162C

	thumb_func_start sub_08059404
sub_08059404: @ 0x08059404
	push {lr}
	ldr r0, _0805941C @ =0x0300162C
	ldr r0, [r0]
	adds r0, #0x8e
	ldrb r0, [r0]
	cmp r0, #0
	beq _08059420
	movs r0, #0
	movs r1, #0xa0
	bl sub_0800B278
	b _08059428
	.align 2, 0
_0805941C: .4byte 0x0300162C
_08059420:
	movs r0, #0
	movs r1, #0
	bl sub_0800B278
_08059428:
	bl sub_080593AC
	pop {r0}
	bx r0

	thumb_func_start sub_08059430
sub_08059430: @ 0x08059430
	bx lr
	.align 2, 0

	thumb_func_start sub_08059434
sub_08059434: @ 0x08059434
	push {r4, lr}
	bl sub_08007BD4
	adds r4, r0, #0
	bl sub_0800B2BC
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r2, _0805946C @ =0x0808EEA0
	ldrh r1, [r4, #2]
	lsls r1, r1, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r1, [r1, r2]
	bl sub_0800B278
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x35
	bls _08059466
	bl sub_080593AC
_08059466:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805946C: .4byte 0x0808EEA0

	thumb_func_start sub_08059470
sub_08059470: @ 0x08059470
	push {r4, lr}
	bl sub_08007BD4
	adds r4, r0, #0
	bl sub_0800B2BC
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r2, _080594AC @ =0x0808EF0C
	ldrh r1, [r4, #2]
	lsls r1, r1, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r1, [r1, r2]
	adds r1, #0xa0
	bl sub_0800B278
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x13
	bls _080594A4
	bl sub_080593AC
_080594A4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080594AC: .4byte 0x0808EF0C

	thumb_func_start sub_080594B0
sub_080594B0: @ 0x080594B0
	push {lr}
	ldr r0, _080594C0 @ =0x0300162C
	ldr r0, [r0]
	ldr r0, [r0, #0x30]
	bl sub_08009A00
	pop {r0}
	bx r0
	.align 2, 0
_080594C0: .4byte 0x0300162C

	thumb_func_start sub_080594C4
sub_080594C4: @ 0x080594C4
	push {r4, r5, lr}
	ldr r0, _080594F4 @ =0x0300162C
	ldr r0, [r0]
	ldr r5, [r0, #0x30]
	bl sub_0800B2BC
	movs r4, #0xb8
	subs r4, r4, r0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	bl sub_0800B2C8
	movs r2, #0xc3
	subs r2, r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08009A70
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080594F4: .4byte 0x0300162C

	thumb_func_start sub_080594F8
sub_080594F8: @ 0x080594F8
	push {r4, r5, lr}
	movs r0, #1
	movs r1, #0xff
	bl sub_080099E0
	adds r5, r0, #0
	movs r1, #1
	bl sub_08009A34
	bl sub_0800B2BC
	movs r4, #0xb8
	subs r4, r4, r0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	bl sub_0800B2C8
	movs r2, #0xc3
	subs r2, r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08009A70
	ldr r4, _08059588 @ =0x0300162C
	ldr r0, [r4]
	ldr r1, [r0, #0x20]
	adds r0, r5, #0
	bl sub_08009A78
	adds r0, r5, #0
	movs r1, #4
	bl sub_08009AB4
	ldr r1, _0805958C @ =0x0809B78C
	ldr r2, _08059590 @ =0x0809B620
	adds r0, r5, #0
	movs r3, #0
	bl sub_08009ACC
	adds r0, r5, #0
	movs r1, #0xff
	bl sub_08009B40
	ldr r0, [r4]
	str r5, [r0, #0x30]
	movs r1, #0xa
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	adds r1, r0, #0
	movs r0, #0
	movs r2, #4
	bl sub_08007EFC
	ldr r0, [r4]
	movs r1, #0xa
	ldrsh r0, [r0, r1]
	ldr r1, _08059594 @ =sub_080594B0
	bl sub_08007BA0
	ldr r0, [r4]
	movs r1, #0xa
	ldrsh r0, [r0, r1]
	ldr r1, _08059598 @ =sub_080594C4
	bl sub_08007B84
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08059588: .4byte 0x0300162C
_0805958C: .4byte 0x0809B78C
_08059590: .4byte 0x0809B620
_08059594: .4byte sub_080594B0
_08059598: .4byte sub_080594C4

	thumb_func_start sub_0805959C
sub_0805959C: @ 0x0805959C
	push {r4, r5, lr}
	movs r4, #0
	ldr r5, _080595BC @ =0x0300162C
_080595A2:
	ldr r0, [r5]
	lsls r1, r4, #2
	adds r0, #0x34
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_08009A00
	adds r4, #1
	cmp r4, #6
	ble _080595A2
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080595BC: .4byte 0x0300162C

	thumb_func_start sub_080595C0
sub_080595C0: @ 0x080595C0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	bl sub_08007BD4
	mov sl, r0
	movs r7, #0
_080595D4:
	bl sub_0800B2BC
	adds r4, r0, #0
	mov r0, sl
	adds r0, #0x15
	adds r0, r0, r7
	mov sb, r0
	ldrb r5, [r0]
	lsls r0, r7, #1
	mov r1, sl
	adds r6, r1, r0
	ldrh r0, [r6]
	movs r1, #0xa0
	bl __umodsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xf
	ldr r2, _080596A8 @ =0x0808EF5C
	adds r0, r0, r2
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r5, r5, r0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	subs r5, r5, r4
	str r5, [sp]
	bl sub_0800B2C8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r2, #0xb4
	lsls r2, r2, #1
	subs r0, r2, r0
	ldrh r2, [r6]
	mov r1, sl
	adds r1, #0xe
	adds r1, r1, r7
	ldrb r1, [r1]
	muls r1, r2, r1
	asrs r1, r1, #1
	subs r5, r0, r1
	adds r2, #1
	movs r0, #0
	strh r2, [r6]
	adds r1, r7, #1
	mov r8, r1
	lsls r7, r7, #2
	cmp r5, #0
	bge _080596C4
	strh r0, [r6]
	movs r0, #3
	bl sub_0800B828
	mov r2, r8
	lsls r1, r2, #4
	subs r1, r1, r2
	lsls r1, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xd
	subs r0, #8
	adds r1, r1, r0
	mov r0, sb
	strb r1, [r0]
	bl sub_0800B2C8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0xb4
	lsls r1, r1, #1
	subs r5, r1, r0
	ldr r6, _080596AC @ =0x0300162C
	ldr r0, [r6]
	adds r0, #0x34
	adds r0, r0, r7
	ldr r4, [r0]
	movs r0, #4
	bl sub_0800B828
	ldr r2, _080596B0 @ =0x0808EE5C
	ldr r1, [r6]
	adds r1, #0x8c
	ldrb r1, [r1]
	lsls r1, r1, #2
	adds r1, r1, r2
	lsls r0, r0, #0x10
	ldr r1, [r1]
	lsrs r0, r0, #0xf
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r0, r4, #0
	bl sub_08009AFC
	bl sub_0800B2C8
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080596B4
	ldr r0, [r6]
	adds r0, #0x34
	adds r0, r0, r7
	ldr r0, [r0]
	movs r1, #2
	movs r2, #0xc0
	bl sub_08009A0C
	b _080596C4
	.align 2, 0
_080596A8: .4byte 0x0808EF5C
_080596AC: .4byte 0x0300162C
_080596B0: .4byte 0x0808EE5C
_080596B4:
	ldr r0, [r6]
	adds r0, #0x34
	adds r0, r0, r7
	ldr r0, [r0]
	movs r1, #3
	movs r2, #0xc0
	bl sub_08009A0C
_080596C4:
	ldr r0, _080596F4 @ =0x0300162C
	ldr r0, [r0]
	adds r0, #0x34
	adds r0, r0, r7
	ldr r0, [r0]
	ldr r2, [sp]
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	lsls r2, r5, #0x10
	asrs r2, r2, #0x10
	bl sub_08009A70
	mov r7, r8
	cmp r7, #6
	bgt _080596E4
	b _080595D4
_080596E4:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080596F4: .4byte 0x0300162C

	thumb_func_start sub_080596F8
sub_080596F8: @ 0x080596F8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r4, _08059784 @ =0x0300162C
	ldr r0, [r4]
	movs r1, #0xc
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	mov r8, r0
	movs r0, #0
	mov r1, r8
	movs r2, #0x1c
	bl sub_08007EFC
	movs r6, #0
	mov sl, r4
_08059720:
	lsls r1, r6, #1
	mov r2, r8
	adds r3, r2, r1
	ldr r0, _08059788 @ =0x0808EF40
	adds r0, r1, r0
	ldrh r2, [r0]
	strh r2, [r3]
	mov r4, sl
	ldr r0, [r4]
	adds r0, #0x8e
	ldrb r0, [r0]
	mov sb, r1
	cmp r0, #0
	beq _08059742
	adds r0, r2, #0
	adds r0, #0xa0
	strh r0, [r3]
_08059742:
	mov r5, r8
	adds r5, #0xe
	adds r1, r5, r6
	ldr r0, _0805978C @ =0x0808EF4E
	add r0, sb
	ldrh r0, [r0]
	strb r0, [r1]
	movs r0, #3
	bl sub_0800B828
	mov r4, r8
	adds r4, #0x15
	adds r3, r4, r6
	adds r2, r6, #1
	lsls r1, r2, #4
	subs r1, r1, r2
	lsls r1, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xd
	subs r0, #8
	adds r1, r1, r0
	strb r1, [r3]
	mov r1, sl
	ldr r0, [r1]
	adds r0, #0x8e
	ldrb r0, [r0]
	adds r7, r5, #0
	str r2, [sp]
	cmp r0, #0
	beq _08059790
	movs r0, #2
	b _08059792
	.align 2, 0
_08059784: .4byte 0x0300162C
_08059788: .4byte 0x0808EF40
_0805978C: .4byte 0x0808EF4E
_08059790:
	movs r0, #3
_08059792:
	movs r1, #0xc0
	bl sub_080099E0
	adds r5, r0, #0
	adds r0, r5, #0
	movs r1, #1
	bl sub_08009A34
	bl sub_0800B2BC
	adds r1, r4, r6
	ldrb r4, [r1]
	subs r4, r4, r0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	bl sub_0800B2C8
	movs r3, #0xb4
	lsls r3, r3, #1
	adds r2, r3, #0
	subs r2, r2, r0
	mov r0, r8
	add r0, sb
	ldrh r1, [r0]
	adds r0, r7, r6
	ldrb r0, [r0]
	muls r0, r1, r0
	asrs r0, r0, #1
	subs r2, r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08009A70
	mov r4, sl
	ldr r0, [r4]
	ldr r1, [r0, #0x24]
	adds r0, r5, #0
	bl sub_08009A78
	adds r0, r5, #0
	movs r1, #4
	bl sub_08009AB4
	ldr r1, _08059868 @ =0x0808EE34
	ldr r0, [r4]
	adds r0, #0x8c
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r4, [r0]
	movs r0, #4
	bl sub_0800B828
	ldr r2, _0805986C @ =0x0808EE5C
	mov r3, sl
	ldr r1, [r3]
	adds r1, #0x8c
	ldrb r1, [r1]
	lsls r1, r1, #2
	adds r1, r1, r2
	lsls r0, r0, #0x10
	ldr r1, [r1]
	lsrs r0, r0, #0xf
	adds r0, r0, r1
	ldrb r3, [r0]
	adds r0, r5, #0
	ldr r1, _08059870 @ =0x0809B78C
	adds r2, r4, #0
	bl sub_08009ACC
	adds r0, r5, #0
	movs r1, #0xff
	bl sub_08009B40
	mov r4, sl
	ldr r0, [r4]
	lsls r1, r6, #2
	adds r0, #0x34
	adds r0, r0, r1
	str r5, [r0]
	ldr r6, [sp]
	cmp r6, #6
	bgt _0805983E
	b _08059720
_0805983E:
	ldr r4, _08059874 @ =0x0300162C
	ldr r0, [r4]
	movs r1, #0xc
	ldrsh r0, [r0, r1]
	ldr r1, _08059878 @ =sub_0805959C
	bl sub_08007BA0
	ldr r0, [r4]
	movs r2, #0xc
	ldrsh r0, [r0, r2]
	ldr r1, _0805987C @ =sub_080595C0
	bl sub_08007B84
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08059868: .4byte 0x0808EE34
_0805986C: .4byte 0x0808EE5C
_08059870: .4byte 0x0809B78C
_08059874: .4byte 0x0300162C
_08059878: .4byte sub_0805959C
_0805987C: .4byte sub_080595C0

	thumb_func_start sub_08059880
sub_08059880: @ 0x08059880
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _080598B4 @ =0x0300162C
	ldr r0, [r5]
	movs r1, #0x10
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	movs r1, #0
	strb r1, [r0]
	strh r1, [r0, #2]
	ldr r0, [r5]
	movs r1, #0x10
	ldrsh r0, [r0, r1]
	ldr r1, _080598B8 @ =0x0808F0B0
	lsls r4, r4, #2
	adds r4, r4, r1
	ldr r1, [r4]
	bl sub_08007B84
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080598B4: .4byte 0x0300162C
_080598B8: .4byte 0x0808F0B0

	thumb_func_start sub_080598BC
sub_080598BC: @ 0x080598BC
	push {lr}
	ldr r0, _080598D8 @ =0x0300162C
	ldr r2, [r0]
	ldrb r1, [r2, #0x18]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #0x18]
	movs r0, #0
	bl sub_08059880
	pop {r0}
	bx r0
	.align 2, 0
_080598D8: .4byte 0x0300162C

	thumb_func_start sub_080598DC
sub_080598DC: @ 0x080598DC
	push {lr}
	ldr r0, _080598F4 @ =0x0300162C
	ldr r2, [r0]
	ldrb r0, [r2, #0x18]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2, #0x18]
	movs r0, #1
	bl sub_08059880
	pop {r0}
	bx r0
	.align 2, 0
_080598F4: .4byte 0x0300162C

	thumb_func_start sub_080598F8
sub_080598F8: @ 0x080598F8
	push {lr}
	ldr r0, _08059910 @ =0x0300162C
	ldr r2, [r0]
	ldrb r0, [r2, #0x18]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2, #0x18]
	movs r0, #2
	bl sub_08059880
	pop {r0}
	bx r0
	.align 2, 0
_08059910: .4byte 0x0300162C

	thumb_func_start sub_08059914
sub_08059914: @ 0x08059914
	push {lr}
	ldr r0, _08059924 @ =0x0300162C
	ldr r0, [r0]
	ldr r0, [r0, #0x60]
	bl sub_08009A00
	pop {r0}
	bx r0
	.align 2, 0
_08059924: .4byte 0x0300162C

	thumb_func_start sub_08059928
sub_08059928: @ 0x08059928
	push {r4, r5, lr}
	movs r0, #0
	movs r1, #0x80
	bl sub_080099E0
	adds r4, r0, #0
	movs r1, #0
	bl sub_08009A34
	adds r0, r4, #0
	movs r1, #0x78
	movs r2, #0x50
	bl sub_08009A70
	ldr r5, _08059994 @ =0x0300162C
	ldr r0, [r5]
	ldr r1, [r0, #0x28]
	adds r0, r4, #0
	bl sub_08009A78
	adds r0, r4, #0
	movs r1, #7
	bl sub_08009AB4
	ldr r1, _08059998 @ =0x080954D4
	ldr r0, _0805999C @ =0x03004400
	ldrb r0, [r0, #0x14]
	lsls r0, r0, #2
	adds r1, r0, r1
	ldr r1, [r1]
	ldr r2, _080599A0 @ =0x080954D0
	adds r0, r0, r2
	ldr r2, [r0]
	adds r0, r4, #0
	movs r3, #0
	bl sub_08009ACC
	adds r0, r4, #0
	movs r1, #0xff
	bl sub_08009B40
	ldr r0, [r5]
	str r4, [r0, #0x60]
	movs r1, #0x10
	ldrsh r0, [r0, r1]
	ldr r1, _080599A4 @ =sub_08059914
	bl sub_08007BA0
	bl sub_080598BC
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08059994: .4byte 0x0300162C
_08059998: .4byte 0x080954D4
_0805999C: .4byte 0x03004400
_080599A0: .4byte 0x080954D0
_080599A4: .4byte sub_08059914

	thumb_func_start sub_080599A8
sub_080599A8: @ 0x080599A8
	bx lr
	.align 2, 0

	thumb_func_start sub_080599AC
sub_080599AC: @ 0x080599AC
	push {r4, r5, r6, lr}
	bl sub_08007BD4
	adds r5, r0, #0
	ldrb r6, [r5]
	cmp r6, #1
	beq _08059A10
	cmp r6, #1
	bgt _080599C4
	cmp r6, #0
	beq _080599CA
	b _08059A60
_080599C4:
	cmp r6, #2
	beq _08059A5C
	b _08059A60
_080599CA:
	ldr r4, _08059A08 @ =0x0300162C
	ldr r0, [r4]
	ldr r0, [r0, #0x60]
	movs r1, #0
	bl sub_08009AFC
	ldr r0, [r4]
	ldr r0, [r0, #0x60]
	movs r1, #1
	bl sub_08009A34
	ldr r0, [r4]
	ldr r0, [r0, #0x60]
	movs r1, #1
	bl sub_08009B6C
	ldr r1, _08059A0C @ =0x030024E0
	adds r2, r1, #0
	adds r2, #0x4a
	movs r0, #0xc4
	lsls r0, r0, #4
	strh r0, [r2]
	adds r1, #0x4c
	movs r0, #0x80
	lsls r0, r0, #5
	strh r0, [r1]
	movs r0, #1
	strb r0, [r5]
	strh r6, [r5, #2]
	b _08059A60
	.align 2, 0
_08059A08: .4byte 0x0300162C
_08059A0C: .4byte 0x030024E0
_08059A10:
	ldrh r1, [r5, #2]
	adds r1, #1
	movs r6, #0
	strh r1, [r5, #2]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r4, _08059A54 @ =0x030024E0
	movs r0, #0x10
	subs r0, r0, r1
	movs r2, #0x1f
	ands r0, r2
	lsls r0, r0, #8
	ands r1, r2
	orrs r0, r1
	adds r1, r4, #0
	adds r1, #0x4c
	strh r0, [r1]
	ldrh r0, [r5, #2]
	cmp r0, #0xf
	bls _08059A60
	movs r0, #2
	strb r0, [r5]
	strh r6, [r5, #2]
	ldr r0, _08059A58 @ =0x0300162C
	ldr r0, [r0]
	ldr r0, [r0, #0x60]
	movs r1, #0
	bl sub_08009B6C
	adds r0, r4, #0
	adds r0, #0x4a
	strh r6, [r0]
	b _08059A60
	.align 2, 0
_08059A54: .4byte 0x030024E0
_08059A58: .4byte 0x0300162C
_08059A5C:
	bl sub_080598BC
_08059A60:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08059A68
sub_08059A68: @ 0x08059A68
	push {r4, r5, r6, lr}
	bl sub_08007BD4
	adds r5, r0, #0
	ldrb r0, [r5]
	cmp r0, #4
	bls _08059A78
	b _08059C64
_08059A78:
	lsls r0, r0, #2
	ldr r1, _08059A84 @ =_08059A88
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08059A84: .4byte _08059A88
_08059A88: @ jump table
	.4byte _08059A9C @ case 0
	.4byte _08059B08 @ case 1
	.4byte _08059C18 @ case 2
	.4byte _08059C24 @ case 3
	.4byte _08059C60 @ case 4
_08059A9C:
	ldr r4, _08059AF4 @ =0x0300162C
	ldr r1, [r4]
	ldr r0, [r1, #0x60]
	ldr r2, _08059AF8 @ =0x0808F09C
	adds r1, #0x89
	ldrb r1, [r1]
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrb r1, [r1]
	bl sub_08009AFC
	ldr r0, [r4]
	ldr r0, [r0, #0x60]
	movs r1, #1
	bl sub_08009A34
	ldr r3, _08059AFC @ =0x0808F0A4
	ldr r0, [r4]
	adds r0, #0x89
	ldrb r2, [r0]
	lsls r1, r2, #2
	adds r1, r1, r3
	ldr r0, _08059B00 @ =0x03004400
	ldrb r0, [r0, #0x14]
	ldr r1, [r1]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _08059B04 @ =0x0203A458
	lsls r2, r2, #1
	adds r2, r2, r1
	movs r3, #0xb8
	lsls r3, r3, #1
	adds r1, r3, #0
	ldrb r2, [r2]
	adds r1, r1, r2
	bl sub_08009554
	movs r1, #0
	movs r0, #1
	strb r0, [r5]
	strh r1, [r5, #2]
	b _08059C64
	.align 2, 0
_08059AF4: .4byte 0x0300162C
_08059AF8: .4byte 0x0808F09C
_08059AFC: .4byte 0x0808F0A4
_08059B00: .4byte 0x03004400
_08059B04: .4byte 0x0203A458
_08059B08:
	ldr r2, _08059B20 @ =0x030024B0
	ldrh r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08059B24
	movs r0, #0xcc
	bl m4aSongNumStart
	movs r0, #2
	strb r0, [r5]
	b _08059C64
	.align 2, 0
_08059B20: .4byte 0x030024B0
_08059B24:
	ldrh r1, [r2, #4]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08059B6C
	ldr r6, _08059B60 @ =0x0300162C
	ldr r0, [r6]
	adds r1, r0, #0
	adds r1, #0x89
	ldrb r0, [r1]
	cmp r0, #0
	beq _08059B6C
	ldr r5, _08059B64 @ =0x0808F0A4
	adds r1, r0, #0
	lsls r1, r1, #2
	adds r1, r1, r5
	ldr r4, _08059B68 @ =0x03004400
	ldrb r0, [r4, #0x14]
	ldr r1, [r1]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_080095E0
	ldr r1, [r6]
	adds r1, #0x89
	ldrb r0, [r1]
	subs r0, #1
	b _08059BA4
	.align 2, 0
_08059B60: .4byte 0x0300162C
_08059B64: .4byte 0x0808F0A4
_08059B68: .4byte 0x03004400
_08059B6C:
	ldrh r1, [r2, #4]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08059C64
	ldr r6, _08059BFC @ =0x0300162C
	ldr r0, [r6]
	adds r1, r0, #0
	adds r1, #0x89
	ldrb r0, [r1]
	cmp r0, #1
	bhi _08059C64
	ldr r5, _08059C00 @ =0x0808F0A4
	adds r1, r0, #0
	lsls r1, r1, #2
	adds r1, r1, r5
	ldr r4, _08059C04 @ =0x03004400
	ldrb r0, [r4, #0x14]
	ldr r1, [r1]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_080095E0
	ldr r1, [r6]
	adds r1, #0x89
	ldrb r0, [r1]
	adds r0, #1
_08059BA4:
	strb r0, [r1]
	movs r0, #0xca
	bl m4aSongNumStart
	ldr r1, [r6]
	ldr r0, [r1, #0x60]
	ldr r2, _08059C08 @ =0x0808F09C
	adds r1, #0x89
	ldrb r1, [r1]
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrb r1, [r1]
	bl sub_08009AFC
	ldr r1, _08059C0C @ =0x080954C8
	ldrb r0, [r4, #0x14]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _08059C10 @ =0x050002E0
	bl sub_08008348
	ldr r0, [r6]
	adds r0, #0x89
	ldrb r2, [r0]
	lsls r1, r2, #2
	adds r1, r1, r5
	ldrb r0, [r4, #0x14]
	ldr r1, [r1]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _08059C14 @ =0x0203A458
	lsls r2, r2, #1
	adds r2, r2, r1
	movs r3, #0xb8
	lsls r3, r3, #1
	adds r1, r3, #0
	ldrb r2, [r2]
	adds r1, r1, r2
	bl sub_08009554
	b _08059C64
	.align 2, 0
_08059BFC: .4byte 0x0300162C
_08059C00: .4byte 0x0808F0A4
_08059C04: .4byte 0x03004400
_08059C08: .4byte 0x0808F09C
_08059C0C: .4byte 0x080954C8
_08059C10: .4byte 0x050002E0
_08059C14: .4byte 0x0203A458
_08059C18:
	movs r0, #0x1e
	bl sub_08007AC0
	movs r0, #3
	strb r0, [r5]
	b _08059C64
_08059C24:
	ldr r2, _08059C54 @ =0x0808F0A4
	ldr r4, _08059C58 @ =0x0300162C
	ldr r0, [r4]
	adds r0, #0x89
	ldrb r1, [r0]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r0, _08059C5C @ =0x03004400
	ldrb r0, [r0, #0x14]
	ldr r1, [r1]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_080095E0
	ldr r0, [r4]
	ldr r0, [r0, #0x60]
	movs r1, #0
	bl sub_08009A34
	movs r0, #4
	strb r0, [r5]
	b _08059C64
	.align 2, 0
_08059C54: .4byte 0x0808F0A4
_08059C58: .4byte 0x0300162C
_08059C5C: .4byte 0x03004400
_08059C60:
	bl sub_080598BC
_08059C64:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08059C6C
sub_08059C6C: @ 0x08059C6C
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _08059CA0 @ =0x0300162C
	ldr r0, [r5]
	movs r1, #0x12
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	movs r1, #0
	strb r1, [r0]
	strh r1, [r0, #2]
	ldr r0, [r5]
	movs r1, #0x12
	ldrsh r0, [r0, r1]
	ldr r1, _08059CA4 @ =0x0808F0EC
	lsls r4, r4, #2
	adds r4, r4, r1
	ldr r1, [r4]
	bl sub_08007B84
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08059CA0: .4byte 0x0300162C
_08059CA4: .4byte 0x0808F0EC

	thumb_func_start sub_08059CA8
sub_08059CA8: @ 0x08059CA8
	push {lr}
	ldr r0, _08059CC4 @ =0x0300162C
	ldr r2, [r0]
	ldrb r1, [r2, #0x18]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #0x18]
	movs r0, #0
	bl sub_08059C6C
	pop {r0}
	bx r0
	.align 2, 0
_08059CC4: .4byte 0x0300162C

	thumb_func_start sub_08059CC8
sub_08059CC8: @ 0x08059CC8
	push {lr}
	ldr r0, _08059CE0 @ =0x0300162C
	ldr r2, [r0]
	ldrb r0, [r2, #0x18]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2, #0x18]
	movs r0, #1
	bl sub_08059C6C
	pop {r0}
	bx r0
	.align 2, 0
_08059CE0: .4byte 0x0300162C

	thumb_func_start sub_08059CE4
sub_08059CE4: @ 0x08059CE4
	push {lr}
	ldr r0, _08059CF4 @ =0x0300162C
	ldr r0, [r0]
	ldr r0, [r0, #0x64]
	bl sub_08009A00
	pop {r0}
	bx r0
	.align 2, 0
_08059CF4: .4byte 0x0300162C

	thumb_func_start sub_08059CF8
sub_08059CF8: @ 0x08059CF8
	push {r4, r5, lr}
	movs r0, #1
	movs r1, #0x80
	bl sub_080099E0
	adds r5, r0, #0
	movs r1, #1
	bl sub_08009A34
	bl sub_0800B2BC
	movs r4, #0x78
	subs r4, r4, r0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	bl sub_0800B2C8
	movs r1, #0x82
	lsls r1, r1, #1
	adds r2, r1, #0
	subs r2, r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08009A70
	ldr r1, _08059D78 @ =0x06010000
	adds r0, r5, #0
	bl sub_08009A78
	ldr r4, _08059D7C @ =0x0300162C
	ldr r0, [r4]
	ldr r1, [r0, #0x74]
	adds r0, r5, #0
	movs r2, #0
	bl sub_08009BBC
	adds r0, r5, #0
	movs r1, #0
	bl sub_08009AB4
	ldr r1, _08059D80 @ =0x08091B14
	ldr r2, _08059D84 @ =0x08091A84
	adds r0, r5, #0
	movs r3, #0
	bl sub_08009ACC
	adds r0, r5, #0
	movs r1, #0xff
	bl sub_08009B40
	ldr r0, [r4]
	str r5, [r0, #0x64]
	movs r1, #0x12
	ldrsh r0, [r0, r1]
	ldr r1, _08059D88 @ =sub_08059CE4
	bl sub_08007BA0
	bl sub_08059CA8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08059D78: .4byte 0x06010000
_08059D7C: .4byte 0x0300162C
_08059D80: .4byte 0x08091B14
_08059D84: .4byte 0x08091A84
_08059D88: .4byte sub_08059CE4

	thumb_func_start sub_08059D8C
sub_08059D8C: @ 0x08059D8C
	push {r4, r5, lr}
	ldr r0, _08059DC0 @ =0x0300162C
	ldr r0, [r0]
	ldr r5, [r0, #0x64]
	bl sub_0800B2BC
	movs r4, #0x78
	subs r4, r4, r0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	bl sub_0800B2C8
	movs r1, #0x82
	lsls r1, r1, #1
	adds r2, r1, #0
	subs r2, r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08009A70
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08059DC0: .4byte 0x0300162C

	thumb_func_start sub_08059DC4
sub_08059DC4: @ 0x08059DC4
	push {r4, r5, r6, lr}
	bl sub_08007BD4
	adds r6, r0, #0
	ldr r0, _08059E08 @ =0x0300162C
	ldr r0, [r0]
	ldr r5, [r0, #0x64]
	bl sub_0800B2BC
	movs r4, #0x78
	subs r4, r4, r0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	bl sub_0800B2C8
	movs r1, #0x82
	lsls r1, r1, #1
	adds r2, r1, #0
	subs r2, r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08009A70
	ldrb r0, [r6]
	cmp r0, #5
	bls _08059DFE
	b _08059EFC
_08059DFE:
	lsls r0, r0, #2
	ldr r1, _08059E0C @ =_08059E10
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08059E08: .4byte 0x0300162C
_08059E0C: .4byte _08059E10
_08059E10: @ jump table
	.4byte _08059E28 @ case 0
	.4byte _08059E38 @ case 1
	.4byte _08059E8C @ case 2
	.4byte _08059EB8 @ case 3
	.4byte _08059ED8 @ case 4
	.4byte _08059EF8 @ case 5
_08059E28:
	movs r0, #0x18
	bl sub_08007AC0
	movs r1, #0
	movs r0, #1
	strb r0, [r6]
	strh r1, [r6, #2]
	b _08059EFC
_08059E38:
	ldr r0, _08059E84 @ =0x0300162C
	ldr r0, [r0]
	ldr r5, [r0, #0x64]
	bl sub_0800B2BC
	ldr r2, _08059E88 @ =0x0808F0BC
	ldrh r1, [r6, #2]
	lsls r1, r1, #1
	adds r1, r1, r2
	subs r0, #0x78
	ldrh r4, [r1]
	subs r4, r4, r0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	bl sub_0800B2C8
	movs r1, #0x82
	lsls r1, r1, #1
	adds r2, r1, #0
	subs r2, r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08009A70
	ldrh r0, [r6, #2]
	adds r0, #1
	strh r0, [r6, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x17
	bls _08059EFC
	movs r0, #0
	strh r0, [r6, #2]
	movs r0, #2
	strb r0, [r6]
	b _08059EFC
	.align 2, 0
_08059E84: .4byte 0x0300162C
_08059E88: .4byte 0x0808F0BC
_08059E8C:
	ldr r0, _08059EB0 @ =0x000003F1
	bl m4aSongNumStart
	ldr r4, _08059EB4 @ =0x0300162C
	ldr r0, [r4]
	ldr r0, [r0, #0x64]
	movs r1, #0xb
	bl sub_08009AFC
	ldr r0, [r4]
	ldr r0, [r0, #0x64]
	movs r1, #0
	bl sub_08009B40
	movs r0, #3
	strb r0, [r6]
	b _08059EFC
	.align 2, 0
_08059EB0: .4byte 0x000003F1
_08059EB4: .4byte 0x0300162C
_08059EB8:
	ldr r0, _08059ED4 @ =0x0300162C
	ldr r0, [r0]
	ldr r0, [r0, #0x64]
	ldrb r0, [r0, #1]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _08059EFC
	movs r0, #0x1e
	bl sub_08007AC0
	movs r0, #4
	strb r0, [r6]
	b _08059EFC
	.align 2, 0
_08059ED4: .4byte 0x0300162C
_08059ED8:
	ldr r4, _08059EF4 @ =0x0300162C
	ldr r0, [r4]
	ldr r0, [r0, #0x64]
	movs r1, #8
	bl sub_08009AFC
	ldr r0, [r4]
	ldr r0, [r0, #0x64]
	movs r1, #0xff
	bl sub_08009B40
	movs r0, #5
	strb r0, [r6]
	b _08059EFC
	.align 2, 0
_08059EF4: .4byte 0x0300162C
_08059EF8:
	bl sub_08059CA8
_08059EFC:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08059F04
sub_08059F04: @ 0x08059F04
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _08059F38 @ =0x0300162C
	ldr r0, [r5]
	movs r1, #0x14
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	movs r1, #0
	strb r1, [r0]
	strh r1, [r0, #2]
	ldr r0, [r5]
	movs r1, #0x14
	ldrsh r0, [r0, r1]
	ldr r1, _08059F3C @ =0x0808F0F4
	lsls r4, r4, #2
	adds r4, r4, r1
	ldr r1, [r4]
	bl sub_08007B84
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08059F38: .4byte 0x0300162C
_08059F3C: .4byte 0x0808F0F4

	thumb_func_start sub_08059F40
sub_08059F40: @ 0x08059F40
	push {lr}
	ldr r0, _08059F5C @ =0x0300162C
	ldr r2, [r0]
	ldrb r1, [r2, #0x18]
	movs r0, #9
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #0x18]
	movs r0, #0
	bl sub_08059F04
	pop {r0}
	bx r0
	.align 2, 0
_08059F5C: .4byte 0x0300162C

	thumb_func_start sub_08059F60
sub_08059F60: @ 0x08059F60
	push {lr}
	ldr r0, _08059F78 @ =0x0300162C
	ldr r2, [r0]
	ldrb r0, [r2, #0x18]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2, #0x18]
	movs r0, #1
	bl sub_08059F04
	pop {r0}
	bx r0
	.align 2, 0
_08059F78: .4byte 0x0300162C

	thumb_func_start sub_08059F7C
sub_08059F7C: @ 0x08059F7C
	push {lr}
	ldr r0, _08059F94 @ =0x0300162C
	ldr r2, [r0]
	ldrb r0, [r2, #0x18]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2, #0x18]
	movs r0, #2
	bl sub_08059F04
	pop {r0}
	bx r0
	.align 2, 0
_08059F94: .4byte 0x0300162C

	thumb_func_start sub_08059F98
sub_08059F98: @ 0x08059F98
	push {lr}
	ldr r0, _08059FB0 @ =0x0300162C
	ldr r2, [r0]
	ldrb r0, [r2, #0x18]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2, #0x18]
	movs r0, #3
	bl sub_08059F04
	pop {r0}
	bx r0
	.align 2, 0
_08059FB0: .4byte 0x0300162C

	thumb_func_start sub_08059FB4
sub_08059FB4: @ 0x08059FB4
	push {lr}
	ldr r0, _08059FC4 @ =0x0300162C
	ldr r0, [r0]
	ldr r0, [r0, #0x68]
	bl sub_08009A00
	pop {r0}
	bx r0
	.align 2, 0
_08059FC4: .4byte 0x0300162C

	thumb_func_start sub_08059FC8
sub_08059FC8: @ 0x08059FC8
	push {r4, r5, lr}
	movs r0, #1
	movs r1, #0x40
	bl sub_080099E0
	adds r5, r0, #0
	movs r1, #0
	bl sub_08009A34
	bl sub_0800B2BC
	movs r4, #0x78
	subs r4, r4, r0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	bl sub_0800B2C8
	movs r1, #0x82
	lsls r1, r1, #1
	adds r2, r1, #0
	subs r2, r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08009A70
	ldr r1, _0805A048 @ =0x06010400
	adds r0, r5, #0
	bl sub_08009A78
	ldr r4, _0805A04C @ =0x0300162C
	ldr r0, [r4]
	ldr r1, [r0, #0x7c]
	adds r0, r5, #0
	movs r2, #0
	bl sub_08009BBC
	adds r0, r5, #0
	movs r1, #1
	bl sub_08009AB4
	ldr r1, _0805A050 @ =0x08192488
	ldr r2, _0805A054 @ =0x081923EC
	adds r0, r5, #0
	movs r3, #0
	bl sub_08009ACC
	adds r0, r5, #0
	movs r1, #0xff
	bl sub_08009B40
	ldr r0, [r4]
	str r5, [r0, #0x68]
	movs r1, #0x14
	ldrsh r0, [r0, r1]
	ldr r1, _0805A058 @ =sub_08059FB4
	bl sub_08007BA0
	bl sub_08059F40
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805A048: .4byte 0x06010400
_0805A04C: .4byte 0x0300162C
_0805A050: .4byte 0x08192488
_0805A054: .4byte 0x081923EC
_0805A058: .4byte sub_08059FB4

	thumb_func_start sub_0805A05C
sub_0805A05C: @ 0x0805A05C
	push {r4, r5, lr}
	ldr r0, _0805A090 @ =0x0300162C
	ldr r0, [r0]
	ldr r5, [r0, #0x68]
	bl sub_0800B2BC
	movs r4, #0x78
	subs r4, r4, r0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	bl sub_0800B2C8
	movs r1, #0x82
	lsls r1, r1, #1
	adds r2, r1, #0
	subs r2, r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08009A70
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805A090: .4byte 0x0300162C

	thumb_func_start sub_0805A094
sub_0805A094: @ 0x0805A094
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	bl sub_08007BD4
	adds r7, r0, #0
	ldrb r6, [r7]
	cmp r6, #1
	beq _0805A104
	cmp r6, #1
	bgt _0805A0B2
	cmp r6, #0
	beq _0805A0B8
	b _0805A1BA
_0805A0B2:
	cmp r6, #2
	beq _0805A180
	b _0805A1BA
_0805A0B8:
	movs r0, #0xfa
	lsls r0, r0, #2
	bl m4aSongNumStart
	ldr r0, _0805A100 @ =0x0300162C
	mov r8, r0
	ldr r0, [r0]
	ldr r5, [r0, #0x68]
	bl sub_0800B2BC
	movs r4, #0x78
	subs r4, r4, r0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	bl sub_0800B2C8
	movs r2, #0xa0
	subs r2, r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08009A70
	mov r1, r8
	ldr r0, [r1]
	ldr r0, [r0, #0x68]
	movs r1, #1
	bl sub_08009A34
	movs r0, #0xa0
	strh r0, [r7, #4]
	strh r6, [r7, #2]
	movs r0, #1
	strb r0, [r7]
	b _0805A1BA
	.align 2, 0
_0805A100: .4byte 0x0300162C
_0805A104:
	ldrh r0, [r7, #2]
	adds r0, #1
	strh r0, [r7, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xf
	adds r0, #1
	movs r1, #0xc
	bl __divsi3
	ldrh r1, [r7, #4]
	adds r1, r1, r0
	strh r1, [r7, #4]
	lsls r1, r1, #0x10
	ldr r0, _0805A174 @ =0x01030000
	cmp r1, r0
	ble _0805A14A
	movs r0, #0x4c
	bl m4aSongNumStart
	ldr r0, _0805A178 @ =0x000003E9
	bl m4aSongNumStart
	movs r4, #0x82
	lsls r4, r4, #1
	strh r4, [r7, #4]
	movs r0, #2
	strb r0, [r7]
	movs r0, #0
	strh r0, [r7, #2]
	bl sub_080593E8
	movs r0, #0x78
	adds r1, r4, #0
	bl sub_0805AA00
_0805A14A:
	ldr r0, _0805A17C @ =0x0300162C
	ldr r0, [r0]
	ldr r6, [r0, #0x68]
	bl sub_0800B2BC
	movs r4, #0x78
	subs r4, r4, r0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	bl sub_0800B2C8
	ldrh r2, [r7, #4]
	subs r2, r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_08009A70
	b _0805A1BA
	.align 2, 0
_0805A174: .4byte 0x01030000
_0805A178: .4byte 0x000003E9
_0805A17C: .4byte 0x0300162C
_0805A180:
	ldr r0, _0805A1C8 @ =0x0300162C
	mov sb, r0
	ldr r0, [r0]
	ldr r0, [r0, #0x68]
	mov r8, r0
	bl sub_0800B2BC
	movs r4, #0x78
	subs r4, r4, r0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	bl sub_0800B2C8
	ldrh r2, [r7, #4]
	subs r2, r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	mov r0, r8
	adds r1, r4, #0
	bl sub_08009A70
	mov r1, sb
	ldr r0, [r1]
	ldrb r0, [r0, #0x18]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _0805A1BA
	bl sub_08059F40
_0805A1BA:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805A1C8: .4byte 0x0300162C

	thumb_func_start sub_0805A1CC
sub_0805A1CC: @ 0x0805A1CC
	push {r4, r5, r6, r7, lr}
	bl sub_08007BD4
	adds r7, r0, #0
	ldrb r4, [r7]
	cmp r4, #1
	beq _0805A204
	cmp r4, #1
	bgt _0805A1E4
	cmp r4, #0
	beq _0805A1EA
	b _0805A270
_0805A1E4:
	cmp r4, #2
	beq _0805A26C
	b _0805A270
_0805A1EA:
	ldr r0, _0805A200 @ =0x0300162C
	ldr r0, [r0]
	ldr r0, [r0, #0x68]
	movs r1, #0xe
	bl sub_08009AFC
	strh r4, [r7, #2]
	movs r0, #1
	strb r0, [r7]
	b _0805A270
	.align 2, 0
_0805A200: .4byte 0x0300162C
_0805A204:
	ldrh r0, [r7, #2]
	adds r0, #1
	strh r0, [r7, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x20
	bne _0805A218
	ldr r0, _0805A264 @ =0x000003EE
	bl m4aSongNumStart
_0805A218:
	ldr r5, _0805A268 @ =0x0300162C
	ldr r0, [r5]
	ldr r6, [r0, #0x68]
	bl sub_0800B2BC
	movs r4, #0x78
	subs r4, r4, r0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	bl sub_0800B2C8
	ldrh r2, [r7, #4]
	subs r2, r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_08009A70
	ldr r0, [r5]
	ldr r0, [r0, #0x68]
	ldrb r0, [r0, #1]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _0805A270
	movs r0, #0
	strh r0, [r7, #2]
	movs r1, #0x82
	lsls r1, r1, #1
	movs r0, #0x78
	bl sub_0805AA00
	bl sub_080593E8
	bl sub_0805A764
	b _0805A270
	.align 2, 0
_0805A264: .4byte 0x000003EE
_0805A268: .4byte 0x0300162C
_0805A26C:
	bl sub_08059F40
_0805A270:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0805A278
sub_0805A278: @ 0x0805A278
	push {r4, r5, r6, lr}
	bl sub_08007BD4
	adds r6, r0, #0
	ldrb r5, [r6]
	cmp r5, #1
	beq _0805A2C4
	cmp r5, #1
	bgt _0805A290
	cmp r5, #0
	beq _0805A29A
	b _0805A350
_0805A290:
	cmp r5, #2
	beq _0805A2E8
	cmp r5, #3
	beq _0805A34C
	b _0805A350
_0805A29A:
	ldr r4, _0805A2C0 @ =0x0300162C
	ldr r0, [r4]
	ldr r0, [r0, #0x68]
	movs r1, #0xe
	bl sub_08009AFC
	ldr r0, [r4]
	ldr r0, [r0, #0x68]
	movs r1, #0
	bl sub_08009B40
	movs r0, #0x82
	lsls r0, r0, #1
	strh r0, [r6, #4]
	movs r0, #1
	strb r0, [r6]
	strh r5, [r6, #2]
	b _0805A350
	.align 2, 0
_0805A2C0: .4byte 0x0300162C
_0805A2C4:
	ldrh r0, [r6, #2]
	adds r0, #1
	strh r0, [r6, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x1f
	bls _0805A350
	ldr r0, _0805A2E4 @ =0x000003EF
	bl m4aSongNumStart
	movs r0, #2
	strb r0, [r6]
	movs r0, #0
	strh r0, [r6, #2]
	b _0805A350
	.align 2, 0
_0805A2E4: .4byte 0x000003EF
_0805A2E8:
	ldrh r4, [r6, #4]
	subs r4, #8
	ldrh r0, [r6, #2]
	adds r0, #1
	strh r0, [r6, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xf
	adds r0, #1
	movs r1, #0xc
	bl __divsi3
	adds r4, r4, r0
	strh r4, [r6, #4]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #0xa0
	bgt _0805A31E
	ldr r0, _0805A348 @ =0x0300162C
	ldr r0, [r0]
	ldr r0, [r0, #0x68]
	movs r1, #0
	bl sub_08009A34
	movs r0, #0
	strh r0, [r6, #2]
	movs r0, #3
	strb r0, [r6]
_0805A31E:
	ldr r0, _0805A348 @ =0x0300162C
	ldr r0, [r0]
	ldr r5, [r0, #0x68]
	bl sub_0800B2BC
	movs r4, #0x78
	subs r4, r4, r0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	bl sub_0800B2C8
	ldrh r2, [r6, #4]
	subs r2, r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08009A70
	b _0805A350
	.align 2, 0
_0805A348: .4byte 0x0300162C
_0805A34C:
	bl sub_08059F40
_0805A350:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0805A358
sub_0805A358: @ 0x0805A358
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _0805A38C @ =0x0300162C
	ldr r0, [r5]
	movs r1, #0x16
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	movs r1, #0
	strb r1, [r0]
	strh r1, [r0, #2]
	ldr r0, [r5]
	movs r1, #0x16
	ldrsh r0, [r0, r1]
	ldr r1, _0805A390 @ =0x0808F104
	lsls r4, r4, #2
	adds r4, r4, r1
	ldr r1, [r4]
	bl sub_08007B84
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805A38C: .4byte 0x0300162C
_0805A390: .4byte 0x0808F104

	thumb_func_start sub_0805A394
sub_0805A394: @ 0x0805A394
	push {lr}
	ldr r0, _0805A3B0 @ =0x0300162C
	ldr r2, [r0]
	ldrb r1, [r2, #0x18]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #0x18]
	movs r0, #0
	bl sub_0805A358
	pop {r0}
	bx r0
	.align 2, 0
_0805A3B0: .4byte 0x0300162C

	thumb_func_start sub_0805A3B4
sub_0805A3B4: @ 0x0805A3B4
	push {lr}
	ldr r0, _0805A3CC @ =0x0300162C
	ldr r2, [r0]
	ldrb r0, [r2, #0x18]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x18]
	movs r0, #1
	bl sub_0805A358
	pop {r0}
	bx r0
	.align 2, 0
_0805A3CC: .4byte 0x0300162C

	thumb_func_start sub_0805A3D0
sub_0805A3D0: @ 0x0805A3D0
	push {lr}
	ldr r0, _0805A3E8 @ =0x0300162C
	ldr r2, [r0]
	ldrb r0, [r2, #0x18]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x18]
	movs r0, #2
	bl sub_0805A358
	pop {r0}
	bx r0
	.align 2, 0
_0805A3E8: .4byte 0x0300162C

	thumb_func_start sub_0805A3EC
sub_0805A3EC: @ 0x0805A3EC
	push {lr}
	ldr r0, _0805A404 @ =0x0300162C
	ldr r2, [r0]
	ldrb r0, [r2, #0x18]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x18]
	movs r0, #3
	bl sub_0805A358
	pop {r0}
	bx r0
	.align 2, 0
_0805A404: .4byte 0x0300162C

	thumb_func_start sub_0805A408
sub_0805A408: @ 0x0805A408
	push {lr}
	ldr r0, _0805A418 @ =0x0300162C
	ldr r0, [r0]
	ldr r0, [r0, #0x6c]
	bl sub_08009A00
	pop {r0}
	bx r0
	.align 2, 0
_0805A418: .4byte 0x0300162C

	thumb_func_start sub_0805A41C
sub_0805A41C: @ 0x0805A41C
	push {r4, r5, lr}
	movs r0, #1
	movs r1, #0x20
	bl sub_080099E0
	adds r5, r0, #0
	movs r1, #0
	bl sub_08009A34
	bl sub_0800B2BC
	movs r4, #0x90
	subs r4, r4, r0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	bl sub_0800B2C8
	movs r1, #0x82
	lsls r1, r1, #1
	adds r2, r1, #0
	subs r2, r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08009A70
	ldr r1, _0805A4A0 @ =0x06011000
	adds r0, r5, #0
	bl sub_08009A78
	ldr r4, _0805A4A4 @ =0x0300162C
	ldr r0, [r4]
	adds r0, #0x84
	ldr r1, [r0]
	adds r0, r5, #0
	movs r2, #0
	bl sub_08009BBC
	adds r0, r5, #0
	movs r1, #2
	bl sub_08009AB4
	ldr r1, _0805A4A8 @ =0x0819775C
	ldr r2, _0805A4AC @ =0x08197704
	adds r0, r5, #0
	movs r3, #0
	bl sub_08009ACC
	adds r0, r5, #0
	movs r1, #0xff
	bl sub_08009B40
	ldr r0, [r4]
	str r5, [r0, #0x6c]
	movs r1, #0x16
	ldrsh r0, [r0, r1]
	ldr r1, _0805A4B0 @ =sub_0805A408
	bl sub_08007BA0
	bl sub_0805A394
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805A4A0: .4byte 0x06011000
_0805A4A4: .4byte 0x0300162C
_0805A4A8: .4byte 0x0819775C
_0805A4AC: .4byte 0x08197704
_0805A4B0: .4byte sub_0805A408

	thumb_func_start sub_0805A4B4
sub_0805A4B4: @ 0x0805A4B4
	push {r4, r5, lr}
	ldr r0, _0805A4E8 @ =0x0300162C
	ldr r0, [r0]
	ldr r5, [r0, #0x6c]
	bl sub_0800B2BC
	movs r4, #0x90
	subs r4, r4, r0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	bl sub_0800B2C8
	movs r1, #0x82
	lsls r1, r1, #1
	adds r2, r1, #0
	subs r2, r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08009A70
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805A4E8: .4byte 0x0300162C

	thumb_func_start sub_0805A4EC
sub_0805A4EC: @ 0x0805A4EC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	bl sub_08007BD4
	adds r7, r0, #0
	ldrb r6, [r7]
	cmp r6, #1
	beq _0805A560
	cmp r6, #1
	bgt _0805A508
	cmp r6, #0
	beq _0805A512
	b _0805A5FC
_0805A508:
	cmp r6, #2
	beq _0805A598
	cmp r6, #3
	beq _0805A5F8
	b _0805A5FC
_0805A512:
	ldr r0, _0805A558 @ =0x000003EA
	bl m4aSongNumStart
	ldr r0, _0805A55C @ =0x0300162C
	mov r8, r0
	ldr r0, [r0]
	ldr r5, [r0, #0x6c]
	bl sub_0800B2BC
	movs r4, #0x90
	subs r4, r4, r0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	bl sub_0800B2C8
	movs r2, #0xa0
	subs r2, r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08009A70
	mov r1, r8
	ldr r0, [r1]
	ldr r0, [r0, #0x6c]
	movs r1, #1
	bl sub_08009A34
	movs r0, #0xa0
	strh r0, [r7, #4]
	strh r6, [r7, #2]
	movs r0, #1
	strb r0, [r7]
	b _0805A5FC
	.align 2, 0
_0805A558: .4byte 0x000003EA
_0805A55C: .4byte 0x0300162C
_0805A560:
	ldrh r0, [r7, #2]
	adds r0, #1
	strh r0, [r7, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xf
	adds r0, #1
	movs r1, #0xc
	bl __divsi3
	ldrh r1, [r7, #4]
	adds r1, r1, r0
	strh r1, [r7, #4]
	lsls r1, r1, #0x10
	ldr r0, _0805A594 @ =0x01030000
	cmp r1, r0
	ble _0805A5C8
	movs r0, #0x8f
	lsls r0, r0, #1
	bl m4aSongNumStart
	movs r0, #0x82
	lsls r0, r0, #1
	strh r0, [r7, #4]
	movs r0, #2
	b _0805A5C2
	.align 2, 0
_0805A594: .4byte 0x01030000
_0805A598:
	ldrh r4, [r7, #4]
	subs r4, #1
	ldrh r0, [r7, #2]
	adds r0, #1
	strh r0, [r7, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xf
	adds r0, #1
	movs r1, #0xc
	bl __divsi3
	adds r4, r4, r0
	strh r4, [r7, #4]
	lsls r4, r4, #0x10
	ldr r0, _0805A5F0 @ =0x01030000
	cmp r4, r0
	ble _0805A5C8
	movs r0, #0x82
	lsls r0, r0, #1
	strh r0, [r7, #4]
	movs r0, #3
_0805A5C2:
	strb r0, [r7]
	movs r0, #0
	strh r0, [r7, #2]
_0805A5C8:
	ldr r0, _0805A5F4 @ =0x0300162C
	ldr r0, [r0]
	ldr r6, [r0, #0x6c]
	bl sub_0800B2BC
	movs r4, #0x90
	subs r4, r4, r0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	bl sub_0800B2C8
	ldrh r2, [r7, #4]
	subs r2, r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_08009A70
	b _0805A5FC
	.align 2, 0
_0805A5F0: .4byte 0x01030000
_0805A5F4: .4byte 0x0300162C
_0805A5F8:
	bl sub_0805A394
_0805A5FC:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0805A608
sub_0805A608: @ 0x0805A608
	push {r4, lr}
	bl sub_08007BD4
	adds r4, r0, #0
	ldrb r0, [r4]
	cmp r0, #0
	beq _0805A61C
	cmp r0, #1
	beq _0805A634
	b _0805A638
_0805A61C:
	ldr r0, _0805A630 @ =0x0300162C
	ldr r0, [r0]
	ldr r0, [r0, #0x6c]
	movs r1, #0xc
	bl sub_08009AFC
	movs r0, #1
	strb r0, [r4]
	b _0805A638
	.align 2, 0
_0805A630: .4byte 0x0300162C
_0805A634:
	bl sub_0805A394
_0805A638:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0805A640
sub_0805A640: @ 0x0805A640
	push {r4, r5, r6, lr}
	bl sub_08007BD4
	adds r6, r0, #0
	ldrb r4, [r6]
	cmp r4, #1
	beq _0805A66E
	cmp r4, #1
	bgt _0805A658
	cmp r4, #0
	beq _0805A65E
	b _0805A6D4
_0805A658:
	cmp r4, #2
	beq _0805A6D0
	b _0805A6D4
_0805A65E:
	movs r0, #0xfc
	lsls r0, r0, #2
	bl m4aSongNumStart
	strh r4, [r6, #2]
	movs r0, #1
	strb r0, [r6]
	b _0805A6D4
_0805A66E:
	ldrh r4, [r6, #4]
	subs r4, #8
	ldrh r0, [r6, #2]
	adds r0, #1
	strh r0, [r6, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xf
	adds r0, #1
	movs r1, #0xc
	bl __divsi3
	adds r4, r4, r0
	strh r4, [r6, #4]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #0xa0
	bgt _0805A6A4
	ldr r0, _0805A6CC @ =0x0300162C
	ldr r0, [r0]
	ldr r0, [r0, #0x6c]
	movs r1, #0
	bl sub_08009A34
	movs r0, #0
	strh r0, [r6, #2]
	movs r0, #2
	strb r0, [r6]
_0805A6A4:
	ldr r0, _0805A6CC @ =0x0300162C
	ldr r0, [r0]
	ldr r5, [r0, #0x6c]
	bl sub_0800B2BC
	movs r4, #0x90
	subs r4, r4, r0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	bl sub_0800B2C8
	ldrh r2, [r6, #4]
	subs r2, r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08009A70
	b _0805A6D4
	.align 2, 0
_0805A6CC: .4byte 0x0300162C
_0805A6D0:
	bl sub_0805A394
_0805A6D4:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0805A6DC
sub_0805A6DC: @ 0x0805A6DC
	push {r4, r5, lr}
	bl sub_08007BD4
	adds r4, r0, #0
	ldrb r5, [r4]
	cmp r5, #0
	beq _0805A6F0
	cmp r5, #1
	beq _0805A716
	b _0805A75E
_0805A6F0:
	ldr r0, [r4, #0xc]
	movs r1, #1
	bl sub_08009A34
	ldr r0, [r4, #0xc]
	movs r2, #8
	ldrsh r1, [r4, r2]
	movs r3, #0xa
	ldrsh r2, [r4, r3]
	bl sub_08009A70
	ldr r0, [r4, #0xc]
	movs r1, #0
	bl sub_08009AFC
	strh r5, [r4, #2]
	movs r0, #1
	strb r0, [r4]
	b _0805A75E
_0805A716:
	ldrh r0, [r4, #4]
	ldrh r1, [r4, #8]
	adds r0, r0, r1
	strh r0, [r4, #8]
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xf
	adds r0, #1
	movs r1, #0xc
	bl __divsi3
	ldrh r1, [r4, #6]
	adds r1, r1, r0
	ldrh r2, [r4, #0xa]
	adds r1, r1, r2
	strh r1, [r4, #0xa]
	ldr r0, [r4, #0xc]
	movs r3, #8
	ldrsh r1, [r4, r3]
	movs r3, #0xa
	ldrsh r2, [r4, r3]
	bl sub_08009A70
	movs r0, #0xa
	ldrsh r1, [r4, r0]
	movs r0, #0xa4
	lsls r0, r0, #1
	cmp r1, r0
	ble _0805A75E
	ldr r0, [r4, #0xc]
	bl sub_08009A00
	bl sub_08007A64
_0805A75E:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_0805A764
sub_0805A764: @ 0x0805A764
	push {r4, r5, r6, lr}
	movs r0, #2
	bl sub_0800B828
	ldr r5, _0805A808 @ =0x0300162C
	ldr r4, [r5]
	adds r4, #0x8d
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r0, #1
	ldrb r1, [r4]
	adds r0, r0, r1
	movs r1, #3
	bl __modsi3
	strb r0, [r4]
	ldr r1, _0805A80C @ =0x0808F13C
	ldr r0, [r5]
	adds r0, #0x8d
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	bl m4aSongNumStart
	movs r6, #0
_0805A798:
	ldr r0, _0805A810 @ =sub_0805A6DC
	movs r1, #0x42
	movs r2, #0
	bl sub_08007968
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl sub_08007BBC
	adds r5, r0, #0
	movs r0, #1
	movs r1, #0
	bl sub_080099E0
	adds r4, r0, #0
	movs r1, #0
	bl sub_08009A34
	ldr r0, _0805A808 @ =0x0300162C
	ldr r0, [r0]
	ldr r1, [r0, #0x2c]
	adds r0, r4, #0
	bl sub_08009A78
	adds r0, r4, #0
	movs r1, #0xa
	bl sub_08009AB4
	adds r0, r4, #0
	ldr r1, _0805A814 @ =0x080909AC
	ldr r2, _0805A818 @ =0x08090970
	movs r3, #0
	bl sub_08009ACC
	adds r0, r4, #0
	movs r1, #0xff
	bl sub_08009B40
	str r4, [r5, #0xc]
	movs r0, #0
	strb r0, [r5]
	strh r0, [r5, #2]
	movs r0, #0x78
	strh r0, [r5, #8]
	movs r0, #0x68
	strh r0, [r5, #0xa]
	movs r0, #1
	ands r0, r6
	cmp r0, #0
	beq _0805A820
	movs r0, #4
	bl sub_0800B828
	ldr r1, _0805A81C @ =0x0808F114
	b _0805A828
	.align 2, 0
_0805A808: .4byte 0x0300162C
_0805A80C: .4byte 0x0808F13C
_0805A810: .4byte sub_0805A6DC
_0805A814: .4byte 0x080909AC
_0805A818: .4byte 0x08090970
_0805A81C: .4byte 0x0808F114
_0805A820:
	movs r0, #4
	bl sub_0800B828
	ldr r1, _0805A848 @ =0x0808F11C
_0805A828:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xf
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r5, #4]
	lsrs r0, r6, #0x1f
	adds r0, r6, r0
	asrs r0, r0, #1
	cmp r0, #1
	beq _0805A860
	cmp r0, #1
	bgt _0805A84C
	cmp r0, #0
	beq _0805A852
	b _0805A882
	.align 2, 0
_0805A848: .4byte 0x0808F11C
_0805A84C:
	cmp r0, #2
	beq _0805A870
	b _0805A882
_0805A852:
	movs r0, #4
	bl sub_0800B828
	ldr r1, _0805A85C @ =0x0808F124
	b _0805A878
	.align 2, 0
_0805A85C: .4byte 0x0808F124
_0805A860:
	movs r0, #4
	bl sub_0800B828
	ldr r1, _0805A86C @ =0x0808F12C
	b _0805A878
	.align 2, 0
_0805A86C: .4byte 0x0808F12C
_0805A870:
	movs r0, #4
	bl sub_0800B828
	ldr r1, _0805A890 @ =0x0808F134
_0805A878:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xf
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r5, #6]
_0805A882:
	adds r6, #1
	cmp r6, #5
	ble _0805A798
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805A890: .4byte 0x0808F134

	thumb_func_start sub_0805A894
sub_0805A894: @ 0x0805A894
	push {r4, r5, lr}
	bl sub_08007BD4
	adds r4, r0, #0
	ldrb r3, [r4]
	cmp r3, #0
	beq _0805A8A8
	cmp r3, #1
	beq _0805A8C8
	b _0805A8EA
_0805A8A8:
	ldr r1, _0805A8C4 @ =0x030024E0
	movs r0, #0x4a
	adds r0, r0, r1
	mov ip, r0
	movs r2, #0
	movs r0, #0xcc
	mov r5, ip
	strh r0, [r5]
	adds r1, #0x4e
	strb r2, [r1]
	strh r3, [r4, #2]
	movs r0, #1
	strb r0, [r4]
	b _0805A8EA
	.align 2, 0
_0805A8C4: .4byte 0x030024E0
_0805A8C8:
	ldr r2, _0805A8F0 @ =0x030024E0
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	asrs r0, r0, #2
	movs r1, #0x1f
	ands r0, r1
	adds r1, r2, #0
	adds r1, #0x4e
	strb r0, [r1]
	ldrh r0, [r4, #2]
	cmp r0, #0x1f
	bls _0805A8EA
	bl sub_08007A64
_0805A8EA:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805A8F0: .4byte 0x030024E0

	thumb_func_start sub_0805A8F4
sub_0805A8F4: @ 0x0805A8F4
	push {r4, lr}
	bl sub_08007BD4
	adds r3, r0, #0
	ldrb r2, [r3]
	cmp r2, #0
	beq _0805A908
	cmp r2, #1
	beq _0805A928
	b _0805A964
_0805A908:
	ldr r1, _0805A924 @ =0x030024E0
	movs r0, #0x4a
	adds r0, r0, r1
	mov ip, r0
	movs r0, #0xcc
	mov r4, ip
	strh r0, [r4]
	adds r1, #0x4e
	movs r0, #8
	strb r0, [r1]
	strh r2, [r3, #2]
	movs r0, #1
	strb r0, [r3]
	b _0805A964
	.align 2, 0
_0805A924: .4byte 0x030024E0
_0805A928:
	ldr r4, _0805A96C @ =0x030024E0
	ldrh r0, [r3, #2]
	adds r0, #1
	strh r0, [r3, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xd
	rsbs r0, r0, #0
	cmp r0, #0
	bge _0805A93C
	adds r0, #0x1f
_0805A93C:
	asrs r0, r0, #5
	adds r0, #8
	movs r1, #0x1f
	ands r0, r1
	adds r1, r4, #0
	adds r1, #0x4e
	strb r0, [r1]
	ldrh r0, [r3, #2]
	cmp r0, #0x1f
	bls _0805A964
	ldr r0, _0805A970 @ =0x030056F0
	movs r1, #8
	bl m4aMPlayFadeOut
	adds r1, r4, #0
	adds r1, #0x4a
	movs r0, #0
	strh r0, [r1]
	bl sub_08007A64
_0805A964:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805A96C: .4byte 0x030024E0
_0805A970: .4byte 0x030056F0

	thumb_func_start sub_0805A974
sub_0805A974: @ 0x0805A974
	push {lr}
	ldr r0, _0805A994 @ =sub_0805A894
	movs r1, #0x42
	movs r2, #0
	bl sub_08007968
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl sub_08007BBC
	movs r1, #0
	strb r1, [r0]
	strh r1, [r0, #2]
	pop {r0}
	bx r0
	.align 2, 0
_0805A994: .4byte sub_0805A894

	thumb_func_start sub_0805A998
sub_0805A998: @ 0x0805A998
	push {lr}
	ldr r0, _0805A9B8 @ =sub_0805A8F4
	movs r1, #0x42
	movs r2, #0
	bl sub_08007968
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl sub_08007BBC
	movs r1, #0
	strb r1, [r0]
	strh r1, [r0, #2]
	pop {r0}
	bx r0
	.align 2, 0
_0805A9B8: .4byte sub_0805A8F4

	thumb_func_start sub_0805A9BC
sub_0805A9BC: @ 0x0805A9BC
	push {r4, r5, r6, lr}
	bl sub_08007BD4
	adds r5, r0, #0
	ldr r6, [r5, #4]
	bl sub_0800B2BC
	ldrh r4, [r5]
	subs r4, r4, r0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	bl sub_0800B2C8
	ldrh r2, [r5, #2]
	subs r2, r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_08009A70
	ldr r1, [r5, #4]
	ldrb r0, [r1, #1]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _0805A9FA
	adds r0, r1, #0
	bl sub_08009A00
	bl sub_08007A64
_0805A9FA:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_0805AA00
sub_0805AA00: @ 0x0805AA00
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	adds r6, r0, #0
	mov r8, r1
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	mov r0, r8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldr r0, _0805AA74 @ =sub_0805A9BC
	movs r1, #0x42
	movs r2, #0
	bl sub_08007968
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl sub_08007BBC
	adds r5, r0, #0
	movs r0, #1
	movs r1, #0x10
	bl sub_080099E0
	adds r4, r0, #0
	movs r1, #1
	bl sub_08009A34
	ldr r0, _0805AA78 @ =0x0300162C
	ldr r0, [r0]
	ldr r1, [r0, #0x2c]
	adds r0, r4, #0
	bl sub_08009A78
	adds r0, r4, #0
	movs r1, #0xa
	bl sub_08009AB4
	ldr r1, _0805AA7C @ =0x080909AC
	ldr r2, _0805AA80 @ =0x08090970
	adds r0, r4, #0
	movs r3, #1
	bl sub_08009ACC
	adds r0, r4, #0
	movs r1, #0
	bl sub_08009B40
	str r4, [r5, #4]
	strh r6, [r5]
	mov r0, r8
	strh r0, [r5, #2]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805AA74: .4byte sub_0805A9BC
_0805AA78: .4byte 0x0300162C
_0805AA7C: .4byte 0x080909AC
_0805AA80: .4byte 0x08090970
