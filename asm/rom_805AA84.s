	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .text
	.ARM
	.syntax unified

	thumb_func_start sub_0805AA84
sub_0805AA84: @ 0x0805AA84
	push {r4, r5, lr}
	sub sp, #0xc
	ldr r0, _0805ABC0 @ =0x0810E26C
	ldr r1, _0805ABC4 @ =0x05000200
	bl sub_08008308
	ldr r0, _0805ABC8 @ =0x0810E2C4
	add r1, sp, #4
	bl sub_08008380
	ldr r5, _0805ABCC @ =0x03001630
	ldr r1, [r5]
	str r0, [r1, #8]
	ldr r0, [sp, #4]
	str r0, [r1, #0xc]
	ldr r0, _0805ABD0 @ =0x081106D0
	ldr r1, _0805ABD4 @ =0x05000220
	bl sub_08008308
	ldr r0, _0805ABD8 @ =0x08110728
	add r1, sp, #4
	bl sub_08008380
	ldr r1, [r5]
	str r0, [r1, #0x10]
	ldr r0, [sp, #4]
	str r0, [r1, #0x14]
	ldr r0, _0805ABDC @ =0x08112B34
	ldr r1, _0805ABE0 @ =0x05000240
	bl sub_08008308
	ldr r0, _0805ABE4 @ =0x08112B8C
	add r1, sp, #4
	bl sub_08008380
	ldr r1, [r5]
	str r0, [r1, #0x18]
	ldr r0, [sp, #4]
	str r0, [r1, #0x1c]
	ldr r0, _0805ABE8 @ =0x08114F98
	ldr r1, _0805ABEC @ =0x05000260
	bl sub_08008308
	ldr r0, _0805ABF0 @ =0x08114FF0
	add r1, sp, #4
	bl sub_08008380
	ldr r1, [r5]
	str r0, [r1, #0x20]
	ldr r0, [sp, #4]
	str r0, [r1, #0x24]
	ldr r4, _0805ABF4 @ =0x06014000
	ldr r0, _0805ABF8 @ =0x0814F318
	ldr r1, _0805ABFC @ =0x05000280
	bl sub_08008308
	ldr r0, [r5]
	str r4, [r0, #0x38]
	ldr r0, _0805AC00 @ =0x0814F4A4
	adds r1, r4, #0
	bl sub_08008374
	adds r4, r0, r4
	ldr r0, _0805AC04 @ =0x0814F234
	ldr r1, _0805AC08 @ =0x050002A0
	bl sub_08008308
	ldr r0, [r5]
	str r4, [r0, #0x3c]
	ldr r0, _0805AC0C @ =0x0814F2A8
	adds r1, r4, #0
	bl sub_08008374
	ldr r0, _0805AC10 @ =0x08107C48
	movs r1, #0xa0
	lsls r1, r1, #0x13
	bl sub_08008308
	ldr r0, _0805AC14 @ =0x08108E90
	movs r1, #0xc0
	lsls r1, r1, #0x13
	bl sub_08008374
	ldr r0, _0805AC18 @ =0x08107D8C
	ldr r1, _0805AC1C @ =0x0600F800
	movs r2, #0
	movs r3, #0
	bl sub_080083CC
	ldr r4, _0805AC20 @ =0x030024E0
	ldr r0, _0805AC24 @ =0x00001F03
	strh r0, [r4, #8]
	ldr r0, _0805AC28 @ =0x081088E4
	ldr r1, _0805AC2C @ =0x0600F000
	movs r2, #0
	movs r3, #0
	bl sub_080083CC
	ldr r0, _0805AC30 @ =0x00001E02
	strh r0, [r4, #6]
	ldr r0, _0805AC34 @ =0x08108338
	ldr r1, _0805AC38 @ =0x0600E000
	movs r2, #0
	movs r3, #0
	bl sub_080083CC
	ldr r0, _0805AC3C @ =0x00005C01
	strh r0, [r4, #4]
	ldr r0, _0805AC40 @ =sub_0805B6B4
	movs r1, #0x42
	movs r2, #0
	bl sub_08007968
	ldr r1, [r5]
	strh r0, [r1, #0x2a]
	ldr r0, _0805AC44 @ =sub_0805B4A8
	movs r1, #0x42
	movs r2, #0
	bl sub_08007968
	ldr r1, [r5]
	strh r0, [r1, #0x28]
	ldr r0, _0805AC48 @ =sub_0805B7D0
	movs r1, #0x42
	movs r2, #0
	bl sub_08007968
	ldr r1, [r5]
	strh r0, [r1, #0x2c]
	movs r0, #0xf0
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #3
	bl sub_08006BE8
	bl sub_08003F9C
	movs r0, #0x80
	lsls r0, r0, #1
	str r0, [sp]
	movs r0, #2
	movs r1, #0x1b
	movs r2, #0xa
	movs r3, #0
	bl sub_08004028
	bl sub_080057C0
	movs r0, #1
	bl sub_08005A88
	movs r0, #1
	bl sub_08005AC0
	add sp, #0xc
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805ABC0: .4byte 0x0810E26C
_0805ABC4: .4byte 0x05000200
_0805ABC8: .4byte 0x0810E2C4
_0805ABCC: .4byte 0x03001630
_0805ABD0: .4byte 0x081106D0
_0805ABD4: .4byte 0x05000220
_0805ABD8: .4byte 0x08110728
_0805ABDC: .4byte 0x08112B34
_0805ABE0: .4byte 0x05000240
_0805ABE4: .4byte 0x08112B8C
_0805ABE8: .4byte 0x08114F98
_0805ABEC: .4byte 0x05000260
_0805ABF0: .4byte 0x08114FF0
_0805ABF4: .4byte 0x06014000
_0805ABF8: .4byte 0x0814F318
_0805ABFC: .4byte 0x05000280
_0805AC00: .4byte 0x0814F4A4
_0805AC04: .4byte 0x0814F234
_0805AC08: .4byte 0x050002A0
_0805AC0C: .4byte 0x0814F2A8
_0805AC10: .4byte 0x08107C48
_0805AC14: .4byte 0x08108E90
_0805AC18: .4byte 0x08107D8C
_0805AC1C: .4byte 0x0600F800
_0805AC20: .4byte 0x030024E0
_0805AC24: .4byte 0x00001F03
_0805AC28: .4byte 0x081088E4
_0805AC2C: .4byte 0x0600F000
_0805AC30: .4byte 0x00001E02
_0805AC34: .4byte 0x08108338
_0805AC38: .4byte 0x0600E000
_0805AC3C: .4byte 0x00005C01
_0805AC40: .4byte sub_0805B6B4
_0805AC44: .4byte sub_0805B4A8
_0805AC48: .4byte sub_0805B7D0

	thumb_func_start sub_0805AC4C
sub_0805AC4C: @ 0x0805AC4C
	push {r4, lr}
	bl sub_080058A4
	ldr r4, _0805AC98 @ =0x03001630
	ldr r0, [r4]
	movs r1, #0x2a
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	ldr r0, [r4]
	movs r1, #0x28
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	ldr r0, [r4]
	movs r1, #0x2c
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	ldr r0, [r4]
	ldr r0, [r0, #8]
	bl sub_08007CF8
	ldr r0, [r4]
	ldr r0, [r0, #0x10]
	bl sub_08007CF8
	ldr r0, [r4]
	ldr r0, [r0, #0x18]
	bl sub_08007CF8
	ldr r0, [r4]
	ldr r0, [r0, #0x20]
	bl sub_08007CF8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805AC98: .4byte 0x03001630

	thumb_func_start sub_0805AC9C
sub_0805AC9C: @ 0x0805AC9C
	push {r4, r5, lr}
	movs r0, #0
	bl sub_080081A0
	bl sub_08008174
	ldr r4, _0805ACD0 @ =0x03001630
	movs r0, #0x44
	bl sub_08007CE8
	adds r1, r0, #0
	str r1, [r4]
	movs r0, #0
	movs r2, #0x44
	bl sub_08007EFC
	bl sub_0805AA84
	movs r0, #1
	bl sub_08002B98
	bl sub_0800B7F8
	ldr r5, _0805ACD4 @ =0x0808F1EC
	b _0805AD00
	.align 2, 0
_0805ACD0: .4byte 0x03001630
_0805ACD4: .4byte 0x0808F1EC
_0805ACD8:
	ldr r1, [r4]
	ldrh r0, [r1, #6]
	cmp r0, #0
	beq _0805ACE6
	subs r0, #1
	strh r0, [r1, #6]
	b _0805ACF2
_0805ACE6:
	ldrb r0, [r1, #1]
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	bl call_via_r0
_0805ACF2:
	ldr r0, [r4]
	ldrb r0, [r0]
	cmp r0, #0
	bne _0805AD10
	movs r0, #1
	bl sub_08002B98
_0805AD00:
	ldr r0, _0805AD30 @ =0x030024B0
	ldrh r1, [r0]
	movs r0, #9
	ands r0, r1
	cmp r0, #0
	beq _0805ACD8
	bl sub_08005A2C
_0805AD10:
	bl sub_0805AC4C
	movs r0, #1
	bl sub_08002B98
	ldr r0, _0805AD34 @ =0x03001630
	ldr r0, [r0]
	bl sub_08007CF8
	bl m4aMPlayAllStop
	bl sub_08002B0C
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805AD30: .4byte 0x030024B0
_0805AD34: .4byte 0x03001630

	thumb_func_start sub_0805AD38
sub_0805AD38: @ 0x0805AD38
	ldr r1, _0805AD4C @ =0x03001630
	ldr r3, [r1]
	movs r2, #0
	strb r0, [r3, #1]
	ldr r0, [r1]
	strb r2, [r0, #2]
	ldr r0, [r1]
	strh r2, [r0, #4]
	strh r2, [r0, #6]
	bx lr
	.align 2, 0
_0805AD4C: .4byte 0x03001630

	thumb_func_start sub_0805AD50
sub_0805AD50: @ 0x0805AD50
	push {r4, lr}
	bl sub_08008174
	ldr r4, _0805AD8C @ =0x030024E0
	ldrh r1, [r4]
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r2, #0
	orrs r0, r1
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4]
	movs r0, #1
	bl m4aSongNumStart
	adds r4, #0x4f
	movs r0, #1
	strb r0, [r4]
	movs r0, #0x20
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl sub_08008AF4
	movs r0, #1
	bl sub_08002B98
	b _0805AD96
	.align 2, 0
_0805AD8C: .4byte 0x030024E0
_0805AD90:
	movs r0, #1
	bl sub_08002B98
_0805AD96:
	bl sub_08008BBC
	cmp r0, #0
	beq _0805AD90
	movs r0, #1
	bl sub_0805AD38
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0805ADAC
sub_0805ADAC: @ 0x0805ADAC
	push {r4, lr}
	ldr r1, _0805ADC8 @ =0x03001630
	ldr r0, [r1]
	ldrb r0, [r0, #2]
	adds r4, r1, #0
	cmp r0, #0x17
	bls _0805ADBC
	b _0805B186
_0805ADBC:
	lsls r0, r0, #2
	ldr r1, _0805ADCC @ =_0805ADD0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0805ADC8: .4byte 0x03001630
_0805ADCC: .4byte _0805ADD0
_0805ADD0: @ jump table
	.4byte _0805AE30 @ case 0
	.4byte _0805AE48 @ case 1
	.4byte _0805AE74 @ case 2
	.4byte _0805AE98 @ case 3
	.4byte _0805AEB2 @ case 4
	.4byte _0805AEE8 @ case 5
	.4byte _0805AF08 @ case 6
	.4byte _0805AF2C @ case 7
	.4byte _0805AF5C @ case 8
	.4byte _0805AF7C @ case 9
	.4byte _0805AFA0 @ case 10
	.4byte _0805AFD0 @ case 11
	.4byte _0805AFF0 @ case 12
	.4byte _0805B014 @ case 13
	.4byte _0805B044 @ case 14
	.4byte _0805B064 @ case 15
	.4byte _0805B088 @ case 16
	.4byte _0805B0B4 @ case 17
	.4byte _0805B0CE @ case 18
	.4byte _0805B0F0 @ case 19
	.4byte _0805B11C @ case 20
	.4byte _0805B13E @ case 21
	.4byte _0805B160 @ case 22
	.4byte _0805B174 @ case 23
_0805AE30:
	bl sub_0805B31C
	movs r0, #0x78
	bl sub_0805B6F8
	ldr r0, _0805AE44 @ =0x03001630
	ldr r1, [r0]
	movs r0, #1
	strb r0, [r1, #2]
	b _0805B186
	.align 2, 0
_0805AE44: .4byte 0x03001630
_0805AE48:
	ldr r0, [r4]
	adds r0, #0x30
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _0805AE56
	b _0805B186
_0805AE56:
	bl sub_0805BC30
	bl sub_08005934
	ldr r0, _0805AE70 @ =0x0808F1B4
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	ldr r1, [r4]
	movs r0, #2
	strb r0, [r1, #2]
	b _0805B186
	.align 2, 0
_0805AE70: .4byte 0x0808F1B4
_0805AE74:
	ldr r0, [r4]
	adds r0, #0x30
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bge _0805AE82
	b _0805B186
_0805AE82:
	bl sub_0805B35C
	movs r0, #0x2a
	bl sub_0805B6F8
	bl sub_08005A2C
	ldr r1, [r4]
	movs r0, #3
	strb r0, [r1, #2]
	b _0805B186
_0805AE98:
	ldr r0, [r4]
	adds r0, #0x30
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bge _0805AEA6
	b _0805B186
_0805AEA6:
	bl sub_0805B790
	ldr r1, [r4]
	movs r0, #4
	strb r0, [r1, #2]
	b _0805B186
_0805AEB2:
	ldr r0, [r4]
	adds r0, #0x30
	ldrb r1, [r0]
	lsls r0, r1, #0x1d
	cmp r0, #0
	bge _0805AEC0
	b _0805B186
_0805AEC0:
	lsls r0, r1, #0x1f
	cmp r0, #0
	beq _0805AEC8
	b _0805B186
_0805AEC8:
	bl sub_08005934
	ldr r0, _0805AEE4 @ =0x0808F1BC
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	movs r0, #0xa2
	bl sub_0805B6F8
	ldr r1, [r4]
	movs r0, #5
	strb r0, [r1, #2]
	b _0805B186
	.align 2, 0
_0805AEE4: .4byte 0x0808F1BC
_0805AEE8:
	ldr r0, [r4]
	adds r0, #0x30
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bge _0805AEF6
	b _0805B186
_0805AEF6:
	bl sub_0805BAB8
	movs r0, #0x78
	bl sub_0805B6F8
	ldr r1, [r4]
	movs r0, #6
	strb r0, [r1, #2]
	b _0805B186
_0805AF08:
	ldr r0, [r4]
	adds r0, #0x30
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bge _0805AF16
	b _0805B186
_0805AF16:
	bl sub_0805B390
	movs r0, #0x12
	bl sub_0805B6F8
	bl sub_08005A2C
	ldr r1, [r4]
	movs r0, #7
	strb r0, [r1, #2]
	b _0805B186
_0805AF2C:
	ldr r0, [r4]
	adds r0, #0x30
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bge _0805AF3A
	b _0805B186
_0805AF3A:
	bl sub_08005934
	ldr r0, _0805AF58 @ =0x0808F1C4
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	movs r0, #0xa2
	bl sub_0805B6F8
	ldr r1, [r4]
	movs r0, #8
	strb r0, [r1, #2]
	b _0805B186
	.align 2, 0
_0805AF58: .4byte 0x0808F1C4
_0805AF5C:
	ldr r0, [r4]
	adds r0, #0x30
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bge _0805AF6A
	b _0805B186
_0805AF6A:
	bl sub_0805BAC4
	movs r0, #0x78
	bl sub_0805B6F8
	ldr r1, [r4]
	movs r0, #9
	strb r0, [r1, #2]
	b _0805B186
_0805AF7C:
	ldr r0, [r4]
	adds r0, #0x30
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bge _0805AF8A
	b _0805B186
_0805AF8A:
	bl sub_0805B3C4
	movs r0, #0x12
	bl sub_0805B6F8
	bl sub_08005A2C
	ldr r1, [r4]
	movs r0, #0xa
	strb r0, [r1, #2]
	b _0805B186
_0805AFA0:
	ldr r0, [r4]
	adds r0, #0x30
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bge _0805AFAE
	b _0805B186
_0805AFAE:
	bl sub_08005934
	ldr r0, _0805AFCC @ =0x0808F1CC
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	movs r0, #0xa2
	bl sub_0805B6F8
	ldr r1, [r4]
	movs r0, #0xb
	strb r0, [r1, #2]
	b _0805B186
	.align 2, 0
_0805AFCC: .4byte 0x0808F1CC
_0805AFD0:
	ldr r0, [r4]
	adds r0, #0x30
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bge _0805AFDE
	b _0805B186
_0805AFDE:
	bl sub_0805BAD0
	movs r0, #0x78
	bl sub_0805B6F8
	ldr r1, [r4]
	movs r0, #0xc
	strb r0, [r1, #2]
	b _0805B186
_0805AFF0:
	ldr r0, [r4]
	adds r0, #0x30
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bge _0805AFFE
	b _0805B186
_0805AFFE:
	bl sub_0805B3F8
	movs r0, #0x12
	bl sub_0805B6F8
	bl sub_08005A2C
	ldr r1, [r4]
	movs r0, #0xd
	strb r0, [r1, #2]
	b _0805B186
_0805B014:
	ldr r0, [r4]
	adds r0, #0x30
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bge _0805B022
	b _0805B186
_0805B022:
	bl sub_08005934
	ldr r0, _0805B040 @ =0x0808F1D4
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	movs r0, #0xa2
	bl sub_0805B6F8
	ldr r1, [r4]
	movs r0, #0xe
	strb r0, [r1, #2]
	b _0805B186
	.align 2, 0
_0805B040: .4byte 0x0808F1D4
_0805B044:
	ldr r0, [r4]
	adds r0, #0x30
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bge _0805B052
	b _0805B186
_0805B052:
	bl sub_0805BADC
	movs r0, #0x78
	bl sub_0805B6F8
	ldr r1, [r4]
	movs r0, #0xf
	strb r0, [r1, #2]
	b _0805B186
_0805B064:
	ldr r0, [r4]
	adds r0, #0x30
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bge _0805B072
	b _0805B186
_0805B072:
	bl sub_0805B42C
	movs r0, #0x12
	bl sub_0805B6F8
	bl sub_08005A2C
	ldr r1, [r4]
	movs r0, #0x10
	strb r0, [r1, #2]
	b _0805B186
_0805B088:
	ldr r0, [r4]
	adds r0, #0x30
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _0805B186
	bl sub_08005934
	ldr r0, _0805B0B0 @ =0x0808F1DC
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	movs r0, #0xf0
	bl sub_0805B6F8
	ldr r1, [r4]
	movs r0, #0x11
	strb r0, [r1, #2]
	b _0805B186
	.align 2, 0
_0805B0B0: .4byte 0x0808F1DC
_0805B0B4:
	ldr r0, [r4]
	adds r0, #0x30
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _0805B186
	movs r0, #0x2a
	bl sub_0805B6F8
	ldr r1, [r4]
	movs r0, #0x12
	strb r0, [r1, #2]
	b _0805B186
_0805B0CE:
	ldr r0, [r4]
	adds r0, #0x30
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _0805B186
	bl sub_0805B460
	movs r0, #0x12
	bl sub_0805B6F8
	bl sub_08005A2C
	ldr r1, [r4]
	movs r0, #0x13
	strb r0, [r1, #2]
	b _0805B186
_0805B0F0:
	ldr r0, [r4]
	adds r0, #0x30
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _0805B186
	bl sub_08005934
	ldr r0, _0805B118 @ =0x0808F1E4
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	movs r0, #0xb4
	bl sub_0805B6F8
	ldr r1, [r4]
	movs r0, #0x14
	strb r0, [r1, #2]
	b _0805B186
	.align 2, 0
_0805B118: .4byte 0x0808F1E4
_0805B11C:
	ldr r0, [r4]
	adds r0, #0x30
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _0805B186
	bl sub_08005A2C
	bl sub_0805B7B0
	movs r0, #0xb4
	bl sub_0805B6F8
	ldr r1, [r4]
	movs r0, #0x15
	strb r0, [r1, #2]
	b _0805B186
_0805B13E:
	ldr r1, [r4]
	adds r0, r1, #0
	adds r0, #0x30
	ldrb r0, [r0]
	lsls r0, r0, #0x1d
	cmp r0, #0
	blt _0805B186
	movs r2, #0x2e
	ldrsh r0, [r1, r2]
	bl sub_08007A08
	bl sub_0805B260
	ldr r1, [r4]
	movs r0, #0x16
	strb r0, [r1, #2]
	b _0805B186
_0805B160:
	ldr r1, [r4]
	adds r0, r1, #0
	adds r0, #0x30
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _0805B186
	movs r0, #0x17
	strb r0, [r1, #2]
	b _0805B186
_0805B174:
	ldr r0, [r4]
	adds r0, #0x30
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _0805B186
	movs r0, #2
	bl sub_0805AD38
_0805B186:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0805B18C
sub_0805B18C: @ 0x0805B18C
	push {lr}
	ldr r0, _0805B1AC @ =0x030056F0
	movs r1, #2
	bl m4aMPlayFadeOut
	movs r0, #0x20
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl sub_080089E8
	movs r0, #1
	bl sub_08002B98
	b _0805B1B6
	.align 2, 0
_0805B1AC: .4byte 0x030056F0
_0805B1B0:
	movs r0, #1
	bl sub_08002B98
_0805B1B6:
	bl sub_08008BBC
	cmp r0, #0
	beq _0805B1B0
	ldr r0, _0805B1CC @ =0x03001630
	ldr r1, [r0]
	movs r0, #1
	strb r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_0805B1CC: .4byte 0x03001630

	thumb_func_start sub_0805B1D0
sub_0805B1D0: @ 0x0805B1D0
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _0805B204 @ =0x03001630
	ldr r0, [r5]
	movs r1, #0x28
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	movs r1, #0
	strb r1, [r0]
	strh r1, [r0, #2]
	ldr r0, [r5]
	movs r1, #0x28
	ldrsh r0, [r0, r1]
	ldr r1, _0805B208 @ =0x0808F270
	lsls r4, r4, #2
	adds r4, r4, r1
	ldr r1, [r4]
	bl sub_08007B84
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805B204: .4byte 0x03001630
_0805B208: .4byte 0x0808F270

	thumb_func_start sub_0805B20C
sub_0805B20C: @ 0x0805B20C
	push {lr}
	ldr r0, _0805B228 @ =0x03001630
	ldr r1, [r0]
	adds r1, #0x30
	ldrb r2, [r1]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	movs r0, #0
	bl sub_0805B1D0
	pop {r0}
	bx r0
	.align 2, 0
_0805B228: .4byte 0x03001630

	thumb_func_start sub_0805B22C
sub_0805B22C: @ 0x0805B22C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	ldr r4, _0805B25C @ =0x03001630
	ldr r0, [r4]
	movs r1, #0x28
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	str r5, [r0, #4]
	str r6, [r0, #8]
	ldr r1, [r4]
	adds r1, #0x30
	ldrb r2, [r1]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	movs r0, #1
	bl sub_0805B1D0
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805B25C: .4byte 0x03001630

	thumb_func_start sub_0805B260
sub_0805B260: @ 0x0805B260
	push {lr}
	ldr r0, _0805B27C @ =0x03001630
	ldr r1, [r0]
	adds r1, #0x30
	ldrb r0, [r1]
	movs r2, #1
	orrs r0, r2
	strb r0, [r1]
	movs r0, #2
	bl sub_0805B1D0
	pop {r0}
	bx r0
	.align 2, 0
_0805B27C: .4byte 0x03001630

	thumb_func_start sub_0805B280
sub_0805B280: @ 0x0805B280
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sb, r0
	mov sl, r1
	adds r6, r2, #0
	mov r8, r3
	ldr r7, [sp, #0x20]
	ldr r4, [sp, #0x24]
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r1, _0805B318 @ =0x03001630
	ldr r0, [r1]
	movs r1, #0x28
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	adds r5, r0, #0
	mov r1, sb
	lsls r0, r1, #8
	str r0, [r5, #4]
	mov r1, sl
	lsls r0, r1, #8
	str r0, [r5, #8]
	lsls r0, r6, #8
	str r0, [r5, #0x18]
	mov r1, r8
	lsls r0, r1, #8
	str r0, [r5, #0x1c]
	str r7, [r5, #0x14]
	strb r4, [r5, #1]
	mov r0, sb
	subs r6, r6, r0
	lsls r6, r6, #8
	adds r0, r6, #0
	adds r1, r4, #0
	bl __divsi3
	str r0, [r5, #0xc]
	mov r1, r8
	mov r0, sl
	subs r1, r1, r0
	lsls r1, r1, #8
	mov r8, r1
	mov r0, r8
	adds r1, r4, #0
	bl __divsi3
	adds r4, r0, #0
	ldrb r0, [r5, #1]
	muls r0, r7, r0
	movs r1, #0x78
	bl __divsi3
	subs r4, r4, r0
	str r4, [r5, #0x10]
	ldr r0, _0805B318 @ =0x03001630
	ldr r1, [r0]
	adds r1, #0x30
	ldrb r0, [r1]
	movs r2, #1
	orrs r0, r2
	strb r0, [r1]
	movs r0, #3
	bl sub_0805B1D0
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805B318: .4byte 0x03001630

	thumb_func_start sub_0805B31C
sub_0805B31C: @ 0x0805B31C
	push {r4, lr}
	sub sp, #8
	ldr r4, _0805B354 @ =0x03001630
	ldr r0, [r4]
	ldr r0, [r0, #0x34]
	movs r1, #1
	bl sub_08009A34
	ldr r1, [r4]
	adds r1, #0x30
	ldrb r0, [r1]
	movs r2, #1
	orrs r0, r2
	strb r0, [r1]
	ldr r0, _0805B358 @ =0x000009CC
	str r0, [sp]
	movs r0, #0x12
	str r0, [sp, #4]
	movs r0, #0x78
	movs r1, #0
	movs r2, #0x78
	movs r3, #0x5c
	bl sub_0805B280
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805B354: .4byte 0x03001630
_0805B358: .4byte 0x000009CC

	thumb_func_start sub_0805B35C
sub_0805B35C: @ 0x0805B35C
	push {lr}
	sub sp, #8
	ldr r0, _0805B388 @ =0x03001630
	ldr r1, [r0]
	adds r1, #0x30
	ldrb r0, [r1]
	movs r2, #1
	orrs r0, r2
	strb r0, [r1]
	ldr r0, _0805B38C @ =0x000009CC
	str r0, [sp]
	movs r0, #0x12
	str r0, [sp, #4]
	movs r0, #0x78
	movs r1, #0x5c
	movs r2, #0x18
	movs r3, #0x30
	bl sub_0805B280
	add sp, #8
	pop {r0}
	bx r0
	.align 2, 0
_0805B388: .4byte 0x03001630
_0805B38C: .4byte 0x000009CC

	thumb_func_start sub_0805B390
sub_0805B390: @ 0x0805B390
	push {lr}
	sub sp, #8
	ldr r0, _0805B3BC @ =0x03001630
	ldr r1, [r0]
	adds r1, #0x30
	ldrb r0, [r1]
	movs r2, #1
	orrs r0, r2
	strb r0, [r1]
	ldr r0, _0805B3C0 @ =0x000009CC
	str r0, [sp]
	movs r0, #0x12
	str r0, [sp, #4]
	movs r0, #0x18
	movs r1, #0x30
	movs r2, #0xaa
	movs r3, #0x46
	bl sub_0805B280
	add sp, #8
	pop {r0}
	bx r0
	.align 2, 0
_0805B3BC: .4byte 0x03001630
_0805B3C0: .4byte 0x000009CC

	thumb_func_start sub_0805B3C4
sub_0805B3C4: @ 0x0805B3C4
	push {lr}
	sub sp, #8
	ldr r0, _0805B3F0 @ =0x03001630
	ldr r1, [r0]
	adds r1, #0x30
	ldrb r0, [r1]
	movs r2, #1
	orrs r0, r2
	strb r0, [r1]
	ldr r0, _0805B3F4 @ =0xFFFFF634
	str r0, [sp]
	movs r0, #0x12
	str r0, [sp, #4]
	movs r0, #0xaa
	movs r1, #0x46
	movs r2, #0x46
	movs r3, #0x46
	bl sub_0805B280
	add sp, #8
	pop {r0}
	bx r0
	.align 2, 0
_0805B3F0: .4byte 0x03001630
_0805B3F4: .4byte 0xFFFFF634

	thumb_func_start sub_0805B3F8
sub_0805B3F8: @ 0x0805B3F8
	push {lr}
	sub sp, #8
	ldr r0, _0805B424 @ =0x03001630
	ldr r1, [r0]
	adds r1, #0x30
	ldrb r0, [r1]
	movs r2, #1
	orrs r0, r2
	strb r0, [r1]
	ldr r0, _0805B428 @ =0xFFFFF634
	str r0, [sp]
	movs r0, #0x12
	str r0, [sp, #4]
	movs r0, #0x46
	movs r1, #0x46
	movs r2, #0xaa
	movs r3, #0x46
	bl sub_0805B280
	add sp, #8
	pop {r0}
	bx r0
	.align 2, 0
_0805B424: .4byte 0x03001630
_0805B428: .4byte 0xFFFFF634

	thumb_func_start sub_0805B42C
sub_0805B42C: @ 0x0805B42C
	push {lr}
	sub sp, #8
	ldr r0, _0805B458 @ =0x03001630
	ldr r1, [r0]
	adds r1, #0x30
	ldrb r0, [r1]
	movs r2, #1
	orrs r0, r2
	strb r0, [r1]
	ldr r0, _0805B45C @ =0x000009CC
	str r0, [sp]
	movs r0, #0x12
	str r0, [sp, #4]
	movs r0, #0xaa
	movs r1, #0x46
	movs r2, #0x46
	movs r3, #0x46
	bl sub_0805B280
	add sp, #8
	pop {r0}
	bx r0
	.align 2, 0
_0805B458: .4byte 0x03001630
_0805B45C: .4byte 0x000009CC

	thumb_func_start sub_0805B460
sub_0805B460: @ 0x0805B460
	push {lr}
	sub sp, #8
	ldr r0, _0805B48C @ =0x03001630
	ldr r1, [r0]
	adds r1, #0x30
	ldrb r0, [r1]
	movs r2, #1
	orrs r0, r2
	strb r0, [r1]
	ldr r0, _0805B490 @ =0x000009CC
	str r0, [sp]
	movs r0, #0x12
	str r0, [sp, #4]
	movs r0, #0x46
	movs r1, #0x46
	movs r2, #0x78
	movs r3, #0x50
	bl sub_0805B280
	add sp, #8
	pop {r0}
	bx r0
	.align 2, 0
_0805B48C: .4byte 0x03001630
_0805B490: .4byte 0x000009CC

	thumb_func_start sub_0805B494
sub_0805B494: @ 0x0805B494
	push {lr}
	ldr r0, _0805B4A4 @ =0x03001630
	ldr r0, [r0]
	ldr r0, [r0, #0x34]
	bl sub_08009A00
	pop {r0}
	bx r0
	.align 2, 0
_0805B4A4: .4byte 0x03001630

	thumb_func_start sub_0805B4A8
sub_0805B4A8: @ 0x0805B4A8
	push {r4, r5, lr}
	movs r0, #1
	movs r1, #0x40
	bl sub_080099E0
	adds r4, r0, #0
	movs r1, #0
	bl sub_08009A34
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	bl sub_08009A70
	ldr r5, _0805B504 @ =0x03001630
	ldr r0, [r5]
	ldr r1, [r0, #0x38]
	adds r0, r4, #0
	bl sub_08009A78
	adds r0, r4, #0
	movs r1, #4
	bl sub_08009AB4
	ldr r1, _0805B508 @ =0x0814F490
	ldr r2, _0805B50C @ =0x0814F468
	adds r0, r4, #0
	movs r3, #0
	bl sub_08009ACC
	adds r0, r4, #0
	movs r1, #0xff
	bl sub_08009B40
	ldr r0, [r5]
	str r4, [r0, #0x34]
	movs r1, #0x28
	ldrsh r0, [r0, r1]
	ldr r1, _0805B510 @ =sub_0805B494
	bl sub_08007BA0
	bl sub_0805B20C
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805B504: .4byte 0x03001630
_0805B508: .4byte 0x0814F490
_0805B50C: .4byte 0x0814F468
_0805B510: .4byte sub_0805B494

	thumb_func_start sub_0805B514
sub_0805B514: @ 0x0805B514
	bx lr
	.align 2, 0

	thumb_func_start sub_0805B518
sub_0805B518: @ 0x0805B518
	push {r4, r5, lr}
	bl sub_08007BD4
	adds r5, r0, #0
	ldr r0, _0805B554 @ =0x03001630
	ldr r0, [r0]
	ldr r0, [r0, #0x34]
	movs r2, #6
	ldrsh r1, [r0, r2]
	ldr r2, [r5, #8]
	ldr r4, _0805B558 @ =0x0808F1F8
	ldrh r3, [r5, #2]
	lsls r3, r3, #1
	adds r3, r3, r4
	ldrh r3, [r3]
	adds r2, r2, r3
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl sub_08009A70
	ldrh r0, [r5, #2]
	adds r0, #1
	movs r1, #0x3c
	bl __modsi3
	strh r0, [r5, #2]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805B554: .4byte 0x03001630
_0805B558: .4byte 0x0808F1F8

	thumb_func_start sub_0805B55C
sub_0805B55C: @ 0x0805B55C
	push {r4, r5, lr}
	bl sub_08007BD4
	adds r3, r0, #0
	ldrb r0, [r3]
	cmp r0, #1
	beq _0805B5A8
	cmp r0, #1
	bgt _0805B574
	cmp r0, #0
	beq _0805B57A
	b _0805B604
_0805B574:
	cmp r0, #2
	beq _0805B600
	b _0805B604
_0805B57A:
	ldr r0, _0805B5A0 @ =0x03001630
	ldr r0, [r0]
	adds r0, #0x40
	movs r2, #1
	strb r2, [r0]
	ldr r1, _0805B5A4 @ =0x030024E0
	movs r0, #0x4a
	adds r0, r0, r1
	mov ip, r0
	movs r0, #0x8a
	lsls r0, r0, #3
	mov r4, ip
	strh r0, [r4]
	adds r1, #0x4c
	movs r0, #0x10
	strh r0, [r1]
	strb r2, [r3]
	b _0805B604
	.align 2, 0
_0805B5A0: .4byte 0x03001630
_0805B5A4: .4byte 0x030024E0
_0805B5A8:
	ldrh r0, [r3, #2]
	adds r0, #1
	movs r5, #0
	strh r0, [r3, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xc
	rsbs r0, r0, #0
	cmp r0, #0
	bge _0805B5BC
	adds r0, #0x3f
_0805B5BC:
	asrs r0, r0, #6
	ldr r4, _0805B5F8 @ =0x030024E0
	adds r1, r0, #0
	adds r1, #0x10
	rsbs r0, r0, #0
	movs r2, #0x1f
	ands r0, r2
	lsls r0, r0, #8
	ands r1, r2
	orrs r0, r1
	adds r1, r4, #0
	adds r1, #0x4c
	strh r0, [r1]
	ldrh r0, [r3, #2]
	cmp r0, #0x3f
	bls _0805B604
	strh r5, [r3, #2]
	movs r0, #2
	strb r0, [r3]
	adds r0, r4, #0
	adds r0, #0x4a
	strh r5, [r0]
	ldr r0, _0805B5FC @ =0x03001630
	ldr r0, [r0]
	ldr r0, [r0, #0x34]
	movs r1, #0
	bl sub_08009A34
	b _0805B604
	.align 2, 0
_0805B5F8: .4byte 0x030024E0
_0805B5FC: .4byte 0x03001630
_0805B600:
	bl sub_0805B20C
_0805B604:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0805B60C
sub_0805B60C: @ 0x0805B60C
	push {r4, r5, r6, lr}
	bl sub_08007BD4
	adds r5, r0, #0
	ldrb r6, [r5]
	cmp r6, #0
	beq _0805B620
	cmp r6, #1
	beq _0805B67C
	b _0805B6A8
_0805B620:
	ldr r0, [r5, #4]
	ldr r1, [r5, #0xc]
	adds r0, r0, r1
	str r0, [r5, #4]
	ldrh r4, [r5, #2]
	adds r4, #1
	strh r4, [r5, #2]
	lsls r0, r4, #0x10
	lsrs r0, r0, #0xf
	subs r0, #1
	ldr r1, [r5, #0x14]
	muls r0, r1, r0
	movs r1, #0x78
	bl __divsi3
	ldr r1, [r5, #0x10]
	adds r1, r1, r0
	ldr r0, [r5, #8]
	adds r0, r0, r1
	str r0, [r5, #8]
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldrb r0, [r5, #1]
	cmp r4, r0
	blo _0805B660
	strh r6, [r5, #2]
	movs r0, #1
	strb r0, [r5]
	ldr r0, [r5, #0x18]
	str r0, [r5, #4]
	ldr r0, [r5, #0x1c]
	str r0, [r5, #8]
_0805B660:
	ldr r0, _0805B678 @ =0x03001630
	ldr r0, [r0]
	ldr r0, [r0, #0x34]
	ldr r1, [r5, #4]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	ldr r2, [r5, #8]
	lsls r2, r2, #8
	asrs r2, r2, #0x10
	bl sub_08009A70
	b _0805B6A8
	.align 2, 0
_0805B678: .4byte 0x03001630
_0805B67C:
	ldr r1, [r5, #0x18]
	movs r0, #0xf0
	lsls r0, r0, #7
	cmp r1, r0
	bne _0805B696
	ldr r1, [r5, #0x1c]
	movs r0, #0xa0
	lsls r0, r0, #7
	cmp r1, r0
	bne _0805B696
	bl sub_0805B20C
	b _0805B6A8
_0805B696:
	ldr r0, _0805B6B0 @ =0x03001630
	ldr r0, [r0]
	ldr r1, [r0, #0x34]
	movs r2, #6
	ldrsh r0, [r1, r2]
	movs r2, #8
	ldrsh r1, [r1, r2]
	bl sub_0805B22C
_0805B6A8:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805B6B0: .4byte 0x03001630

	thumb_func_start sub_0805B6B4
sub_0805B6B4: @ 0x0805B6B4
	bx lr
	.align 2, 0

	thumb_func_start sub_0805B6B8
sub_0805B6B8: @ 0x0805B6B8
	push {lr}
	bl sub_08007BD4
	adds r2, r0, #0
	ldr r0, [r2]
	adds r0, #1
	str r0, [r2]
	ldr r1, [r2, #4]
	cmp r0, r1
	blo _0805B6EA
	movs r0, #0
	str r0, [r2]
	ldr r3, _0805B6F0 @ =0x03001630
	ldr r1, [r3]
	adds r1, #0x30
	ldrb r2, [r1]
	subs r0, #3
	ands r0, r2
	strb r0, [r1]
	ldr r0, [r3]
	movs r1, #0x2a
	ldrsh r0, [r0, r1]
	ldr r1, _0805B6F4 @ =sub_0805B6B4
	bl sub_08007B84
_0805B6EA:
	pop {r0}
	bx r0
	.align 2, 0
_0805B6F0: .4byte 0x03001630
_0805B6F4: .4byte sub_0805B6B4

	thumb_func_start sub_0805B6F8
sub_0805B6F8: @ 0x0805B6F8
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _0805B72C @ =0x03001630
	ldr r0, [r4]
	movs r1, #0x2a
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	ldr r2, [r4]
	adds r2, #0x30
	ldrb r1, [r2]
	movs r3, #2
	orrs r1, r3
	strb r1, [r2]
	str r5, [r0, #4]
	movs r1, #0
	str r1, [r0]
	ldr r0, [r4]
	movs r1, #0x2a
	ldrsh r0, [r0, r1]
	ldr r1, _0805B730 @ =sub_0805B6B8
	bl sub_08007B84
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805B72C: .4byte 0x03001630
_0805B730: .4byte sub_0805B6B8

	thumb_func_start sub_0805B734
sub_0805B734: @ 0x0805B734
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _0805B768 @ =0x03001630
	ldr r0, [r5]
	movs r1, #0x2c
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	movs r1, #0
	strb r1, [r0]
	strh r1, [r0, #2]
	ldr r0, [r5]
	movs r1, #0x2c
	ldrsh r0, [r0, r1]
	ldr r1, _0805B76C @ =0x0808F280
	lsls r4, r4, #2
	adds r4, r4, r1
	ldr r1, [r4]
	bl sub_08007B84
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805B768: .4byte 0x03001630
_0805B76C: .4byte 0x0808F280

	thumb_func_start sub_0805B770
sub_0805B770: @ 0x0805B770
	push {lr}
	ldr r0, _0805B78C @ =0x03001630
	ldr r1, [r0]
	adds r1, #0x30
	ldrb r2, [r1]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	movs r0, #0
	bl sub_0805B734
	pop {r0}
	bx r0
	.align 2, 0
_0805B78C: .4byte 0x03001630

	thumb_func_start sub_0805B790
sub_0805B790: @ 0x0805B790
	push {lr}
	ldr r0, _0805B7AC @ =0x03001630
	ldr r1, [r0]
	adds r1, #0x30
	ldrb r0, [r1]
	movs r2, #4
	orrs r0, r2
	strb r0, [r1]
	movs r0, #1
	bl sub_0805B734
	pop {r0}
	bx r0
	.align 2, 0
_0805B7AC: .4byte 0x03001630

	thumb_func_start sub_0805B7B0
sub_0805B7B0: @ 0x0805B7B0
	push {lr}
	ldr r0, _0805B7CC @ =0x03001630
	ldr r1, [r0]
	adds r1, #0x30
	ldrb r0, [r1]
	movs r2, #4
	orrs r0, r2
	strb r0, [r1]
	movs r0, #2
	bl sub_0805B734
	pop {r0}
	bx r0
	.align 2, 0
_0805B7CC: .4byte 0x03001630

	thumb_func_start sub_0805B7D0
sub_0805B7D0: @ 0x0805B7D0
	push {lr}
	bl sub_0805B770
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0805B7DC
sub_0805B7DC: @ 0x0805B7DC
	bx lr
	.align 2, 0

	thumb_func_start sub_0805B7E0
sub_0805B7E0: @ 0x0805B7E0
	push {r4, r5, r6, lr}
	bl sub_08007BD4
	adds r5, r0, #0
	ldrb r3, [r5]
	cmp r3, #1
	beq _0805B824
	cmp r3, #1
	bgt _0805B7F8
	cmp r3, #0
	beq _0805B7FE
	b _0805B870
_0805B7F8:
	cmp r3, #2
	beq _0805B86C
	b _0805B870
_0805B7FE:
	ldr r1, _0805B81C @ =0x030024E0
	ldrh r2, [r1]
	movs r4, #0x80
	lsls r4, r4, #2
	adds r0, r4, #0
	orrs r0, r2
	strh r0, [r1]
	ldr r0, _0805B820 @ =0x0000FF10
	strh r0, [r1, #0xc]
	adds r0, #0xa0
	strh r0, [r1, #0x14]
	strh r3, [r5, #2]
	movs r0, #1
	strb r0, [r5]
	b _0805B870
	.align 2, 0
_0805B81C: .4byte 0x030024E0
_0805B820: .4byte 0x0000FF10
_0805B824:
	ldrh r0, [r5, #2]
	adds r0, #1
	strh r0, [r5, #2]
	ldrh r4, [r5, #2]
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #4
	rsbs r0, r0, #0
	movs r1, #0x12
	bl __divsi3
	adds r6, r0, #0
	adds r6, #0xf0
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #4
	rsbs r0, r0, #0
	movs r1, #0x12
	bl __divsi3
	adds r2, r0, #0
	adds r2, #0x50
	cmp r4, #0x11
	bls _0805B85C
	movs r0, #0
	strh r0, [r5, #2]
	movs r0, #2
	strb r0, [r5]
_0805B85C:
	ldr r0, _0805B868 @ =0x030024E0
	rsbs r1, r6, #0
	strh r1, [r0, #0xc]
	rsbs r1, r2, #0
	strh r1, [r0, #0x14]
	b _0805B870
	.align 2, 0
_0805B868: .4byte 0x030024E0
_0805B86C:
	bl sub_0805B770
_0805B870:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0805B878
sub_0805B878: @ 0x0805B878
	push {r4, r5, lr}
	bl sub_08007BD4
	adds r3, r0, #0
	ldrb r0, [r3]
	cmp r0, #1
	beq _0805B8C0
	cmp r0, #1
	bgt _0805B890
	cmp r0, #0
	beq _0805B896
	b _0805B918
_0805B890:
	cmp r0, #2
	beq _0805B914
	b _0805B918
_0805B896:
	ldr r1, _0805B8B8 @ =0x030024E0
	ldrh r2, [r1]
	movs r4, #0x80
	lsls r4, r4, #3
	adds r0, r4, #0
	orrs r0, r2
	strh r0, [r1]
	adds r2, r1, #0
	adds r2, #0x4a
	ldr r0, _0805B8BC @ =0x00000C42
	strh r0, [r2]
	adds r1, #0x4c
	movs r0, #0x10
	strh r0, [r1]
	movs r0, #1
	strb r0, [r3]
	b _0805B918
	.align 2, 0
_0805B8B8: .4byte 0x030024E0
_0805B8BC: .4byte 0x00000C42
_0805B8C0:
	ldrh r0, [r3, #2]
	adds r0, #1
	movs r5, #0
	strh r0, [r3, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xc
	rsbs r0, r0, #0
	cmp r0, #0
	bge _0805B8D4
	adds r0, #0x3f
_0805B8D4:
	asrs r0, r0, #6
	ldr r4, _0805B90C @ =0x030024E0
	adds r1, r0, #0
	adds r1, #0x10
	rsbs r0, r0, #0
	movs r2, #0x1f
	ands r0, r2
	lsls r0, r0, #8
	ands r1, r2
	orrs r0, r1
	adds r1, r4, #0
	adds r1, #0x4c
	strh r0, [r1]
	ldrh r0, [r3, #2]
	cmp r0, #0x3f
	bls _0805B918
	strh r5, [r3, #2]
	movs r0, #2
	strb r0, [r3]
	ldrh r1, [r4]
	ldr r0, _0805B910 @ =0x0000FDFF
	ands r0, r1
	strh r0, [r4]
	adds r0, r4, #0
	adds r0, #0x4a
	strh r5, [r0]
	b _0805B918
	.align 2, 0
_0805B90C: .4byte 0x030024E0
_0805B910: .4byte 0x0000FDFF
_0805B914:
	bl sub_0805B770
_0805B918:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0805B920
sub_0805B920: @ 0x0805B920
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	bl sub_08007BD4
	adds r7, r0, #0
	ldrh r0, [r7, #2]
	adds r0, #1
	strh r0, [r7, #2]
	ldr r4, _0805B9B8 @ =0x0808F2CC
	ldrb r5, [r7]
	lsls r5, r5, #2
	adds r0, r5, r4
	movs r1, #0
	ldrsh r6, [r0, r1]
	ldr r2, _0805B9BC @ =0x0808F2DC
	adds r0, r5, r2
	movs r1, #0
	ldrsh r0, [r0, r1]
	subs r0, r0, r6
	ldrh r1, [r7, #2]
	mov r8, r1
	mov r1, r8
	muls r1, r0, r1
	adds r0, r1, #0
	movs r1, #0xb4
	lsls r1, r1, #1
	mov sb, r1
	str r2, [sp]
	bl __divsi3
	adds r6, r6, r0
	adds r4, #2
	adds r4, r5, r4
	movs r0, #0
	ldrsh r4, [r4, r0]
	ldr r2, [sp]
	adds r2, #2
	adds r5, r5, r2
	movs r1, #0
	ldrsh r0, [r5, r1]
	subs r0, r0, r4
	mov r1, r8
	muls r1, r0, r1
	adds r0, r1, #0
	mov r1, sb
	bl __divsi3
	adds r4, r4, r0
	ldr r0, [r7, #4]
	lsls r6, r6, #0x10
	asrs r6, r6, #0x10
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r1, r6, #0
	adds r2, r4, #0
	bl sub_08009A70
	ldrh r1, [r7, #2]
	ldr r0, _0805B9C0 @ =0x00000167
	cmp r1, r0
	bls _0805B9AA
	ldr r0, [r7, #4]
	bl sub_08009A00
	bl sub_08007A64
_0805B9AA:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805B9B8: .4byte 0x0808F2CC
_0805B9BC: .4byte 0x0808F2DC
_0805B9C0: .4byte 0x00000167

	thumb_func_start sub_0805B9C4
sub_0805B9C4: @ 0x0805B9C4
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	ldr r0, _0805BA34 @ =sub_0805B920
	movs r1, #0x42
	movs r2, #0
	bl sub_08007968
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl sub_08007BBC
	adds r7, r0, #0
	movs r0, #0
	strh r0, [r7, #2]
	strb r6, [r7]
	movs r0, #1
	movs r1, #0x80
	bl sub_080099E0
	adds r5, r0, #0
	movs r1, #1
	bl sub_08009A34
	ldr r0, _0805BA38 @ =0x0808F2CC
	lsls r4, r6, #2
	adds r1, r4, r0
	movs r2, #0
	ldrsh r1, [r1, r2]
	adds r0, #2
	adds r0, r4, r0
	movs r3, #0
	ldrsh r2, [r0, r3]
	adds r0, r5, #0
	bl sub_08009A70
	ldr r0, _0805BA3C @ =0x0808F28C
	adds r0, r4, r0
	ldr r1, [r0]
	adds r0, r5, #0
	bl sub_08009A78
	ldr r0, _0805BA40 @ =0x0808F29C
	adds r4, r4, r0
	ldrb r1, [r4]
	adds r0, r5, #0
	bl sub_08009AB4
	cmp r6, #1
	beq _0805BA5C
	cmp r6, #1
	bgt _0805BA44
	cmp r6, #0
	beq _0805BA4E
	b _0805BA80
	.align 2, 0
_0805BA34: .4byte sub_0805B920
_0805BA38: .4byte 0x0808F2CC
_0805BA3C: .4byte 0x0808F28C
_0805BA40: .4byte 0x0808F29C
_0805BA44:
	cmp r6, #2
	beq _0805BA68
	cmp r6, #3
	beq _0805BA74
	b _0805BA80
_0805BA4E:
	ldr r0, _0805BA58 @ =0x03001630
	ldr r0, [r0]
	ldr r1, [r0, #0x14]
	b _0805BA82
	.align 2, 0
_0805BA58: .4byte 0x03001630
_0805BA5C:
	ldr r0, _0805BA64 @ =0x03001630
	ldr r0, [r0]
	ldr r1, [r0, #0x1c]
	b _0805BA82
	.align 2, 0
_0805BA64: .4byte 0x03001630
_0805BA68:
	ldr r0, _0805BA70 @ =0x03001630
	ldr r0, [r0]
	ldr r1, [r0, #0xc]
	b _0805BA82
	.align 2, 0
_0805BA70: .4byte 0x03001630
_0805BA74:
	ldr r0, _0805BA7C @ =0x03001630
	ldr r0, [r0]
	ldr r1, [r0, #0x24]
	b _0805BA82
	.align 2, 0
_0805BA7C: .4byte 0x03001630
_0805BA80:
	movs r1, #0
_0805BA82:
	adds r0, r5, #0
	movs r2, #0
	bl sub_08009BBC
	ldr r0, _0805BAB0 @ =0x0808F2AC
	lsls r2, r6, #2
	adds r0, r2, r0
	ldr r1, [r0]
	ldr r0, _0805BAB4 @ =0x0808F2BC
	adds r2, r2, r0
	ldr r2, [r2]
	adds r0, r5, #0
	movs r3, #0
	bl sub_08009ACC
	adds r0, r5, #0
	movs r1, #0xff
	bl sub_08009B40
	str r5, [r7, #4]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805BAB0: .4byte 0x0808F2AC
_0805BAB4: .4byte 0x0808F2BC

	thumb_func_start sub_0805BAB8
sub_0805BAB8: @ 0x0805BAB8
	push {lr}
	movs r0, #0
	bl sub_0805B9C4
	pop {r0}
	bx r0

	thumb_func_start sub_0805BAC4
sub_0805BAC4: @ 0x0805BAC4
	push {lr}
	movs r0, #1
	bl sub_0805B9C4
	pop {r0}
	bx r0

	thumb_func_start sub_0805BAD0
sub_0805BAD0: @ 0x0805BAD0
	push {lr}
	movs r0, #2
	bl sub_0805B9C4
	pop {r0}
	bx r0

	thumb_func_start sub_0805BADC
sub_0805BADC: @ 0x0805BADC
	push {lr}
	movs r0, #3
	bl sub_0805B9C4
	pop {r0}
	bx r0

	thumb_func_start sub_0805BAE8
sub_0805BAE8: @ 0x0805BAE8
	push {r4, r5, r6, lr}
	bl sub_08007BD4
	adds r5, r0, #0
	ldrb r6, [r5]
	cmp r6, #0
	beq _0805BAFC
	cmp r6, #1
	beq _0805BB64
	b _0805BB8C
_0805BAFC:
	movs r0, #2
	bl sub_0800B828
	adds r1, r0, #0
	adds r1, #0x40
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r0, #1
	bl sub_080099E0
	adds r4, r0, #0
	movs r1, #1
	bl sub_08009A34
	movs r0, #8
	ldrsh r1, [r5, r0]
	movs r3, #0xa
	ldrsh r2, [r5, r3]
	adds r0, r4, #0
	bl sub_08009A70
	ldr r0, _0805BB58 @ =0x03001630
	ldr r0, [r0]
	ldr r1, [r0, #0x3c]
	adds r0, r4, #0
	bl sub_08009A78
	adds r0, r4, #0
	movs r1, #5
	bl sub_08009AB4
	ldr r1, _0805BB5C @ =0x0814F2A0
	ldr r2, _0805BB60 @ =0x0814F28C
	adds r0, r4, #0
	movs r3, #0
	bl sub_08009ACC
	adds r0, r4, #0
	movs r1, #1
	bl sub_08009B40
	str r4, [r5, #4]
	movs r0, #1
	strb r0, [r5]
	strh r6, [r5, #2]
	b _0805BB8C
	.align 2, 0
_0805BB58: .4byte 0x03001630
_0805BB5C: .4byte 0x0814F2A0
_0805BB60: .4byte 0x0814F28C
_0805BB64:
	ldr r0, [r5, #4]
	movs r1, #8
	ldrsh r2, [r0, r1]
	adds r2, #1
	movs r3, #6
	ldrsh r1, [r0, r3]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl sub_08009A70
	ldr r1, [r5, #4]
	ldrb r0, [r1, #1]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _0805BB8C
	adds r0, r1, #0
	bl sub_08009A00
	bl sub_08007A64
_0805BB8C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0805BB94
sub_0805BB94: @ 0x0805BB94
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	ldr r0, _0805BBCC @ =0x03001630
	ldr r0, [r0]
	adds r0, #0x40
	movs r4, #0
	strb r4, [r0]
	ldr r0, _0805BBD0 @ =sub_0805BAE8
	movs r1, #0x43
	movs r2, #0
	bl sub_08007968
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl sub_08007BBC
	strb r4, [r0]
	strh r4, [r0, #2]
	strh r5, [r0, #8]
	strh r6, [r0, #0xa]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805BBCC: .4byte 0x03001630
_0805BBD0: .4byte sub_0805BAE8

	thumb_func_start sub_0805BBD4
sub_0805BBD4: @ 0x0805BBD4
	push {r4, lr}
	bl sub_08007BD4
	adds r4, r0, #0
	ldrh r0, [r4, #2]
	cmp r0, #0
	bne _0805BC14
	ldr r0, _0805BC28 @ =0x03001630
	ldr r0, [r0]
	ldr r2, [r0, #0x34]
	ldr r1, _0805BC2C @ =0x0808F2EC
	ldrh r0, [r4, #4]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	ldrh r1, [r2, #6]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r2, #8]
	subs r1, #4
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0805BB94
	ldrh r1, [r4, #4]
	adds r2, r1, #1
	adds r0, r2, #0
	asrs r0, r0, #2
	lsls r0, r0, #2
	subs r0, r2, r0
	strh r0, [r4, #4]
_0805BC14:
	ldrh r0, [r4, #2]
	adds r0, #1
	movs r1, #0xc
	bl __modsi3
	strh r0, [r4, #2]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805BC28: .4byte 0x03001630
_0805BC2C: .4byte 0x0808F2EC

	thumb_func_start sub_0805BC30
sub_0805BC30: @ 0x0805BC30
	push {r4, r5, lr}
	ldr r0, _0805BC5C @ =sub_0805BBD4
	movs r1, #0x42
	movs r2, #0
	bl sub_08007968
	ldr r1, _0805BC60 @ =0x03001630
	ldr r1, [r1]
	movs r5, #0
	movs r4, #0
	strh r0, [r1, #0x2e]
	movs r2, #0x2e
	ldrsh r0, [r1, r2]
	bl sub_08007BBC
	strb r5, [r0]
	strh r4, [r0, #2]
	strh r4, [r0, #4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805BC5C: .4byte sub_0805BBD4
_0805BC60: .4byte 0x03001630

	thumb_func_start sub_0805BC64
sub_0805BC64: @ 0x0805BC64
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _0805BD80 @ =0x0808D48C
	bl sub_0800B02C
	bl sub_080057D0
	ldr r0, _0805BD84 @ =0x050001C2
	ldr r2, _0805BD88 @ =0x00007FFF
	adds r1, r2, #0
	strh r1, [r0]
	ldr r2, _0805BD8C @ =0x050001D2
	ldr r3, _0805BD90 @ =0x0000318C
	adds r0, r3, #0
	strh r0, [r2]
	ldr r0, _0805BD94 @ =0x050001C4
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	bl sub_0800446C
	ldr r0, _0805BD98 @ =0x03001634
	ldr r0, [r0]
	ldr r2, _0805BD9C @ =0x00000173
	adds r1, r0, r2
	movs r0, #0
	strb r0, [r1]
	movs r5, #0
	ldr r3, _0805BDA0 @ =0x0808F2F4
	mov sb, r3
	ldr r0, _0805BDA4 @ =0x03004400
	mov r8, r0
	mov sl, r5
	ldr r6, _0805BDA8 @ =0x0600A020
_0805BCB0:
	lsls r4, r5, #2
	mov r1, r8
	ldrb r0, [r1, #0xe]
	lsls r0, r0, #4
	adds r0, r4, r0
	add r0, sb
	ldr r0, [r0]
	bl sub_08006828
	movs r1, #0
	bl sub_080045FC
	ldr r7, _0805BD98 @ =0x03001634
	ldr r3, [r7]
	lsls r2, r5, #1
	adds r1, r3, #0
	adds r1, #0x2a
	adds r1, r1, r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	strh r0, [r1]
	ldr r1, _0805BD9C @ =0x00000173
	adds r2, r3, r1
	ldrb r1, [r2]
	adds r1, r1, r0
	strb r1, [r2]
	mov r2, r8
	ldrb r0, [r2, #0xe]
	lsls r0, r0, #4
	adds r4, r4, r0
	add r4, sb
	ldr r0, [r4]
	bl sub_08006828
	adds r1, r0, #0
	mov r3, sl
	str r3, [sp]
	adds r0, r6, #0
	movs r2, #1
	movs r3, #0
	bl sub_08004D94
	movs r0, #0x80
	lsls r0, r0, #4
	adds r6, r6, r0
	adds r5, #1
	cmp r5, #3
	ble _0805BCB0
	ldr r4, _0805BDAC @ =0x030024E0
	ldr r0, _0805BDB0 @ =0x00001B09
	strh r0, [r4, #4]
	ldr r0, _0805BDB4 @ =0x08107B48
	ldr r1, _0805BDB8 @ =0x05000180
	bl sub_08008308
	ldr r0, _0805BDBC @ =0x08107B6C
	ldr r1, _0805BDC0 @ =0x0600D400
	bl sub_08008374
	ldr r0, _0805BDC4 @ =0x08107B94
	ldr r1, _0805BDC8 @ =0x0600E800
	movs r2, #0xa0
	movs r3, #0xc
	bl sub_080083CC
	ldr r0, _0805BDCC @ =0x00001D0C
	strh r0, [r4, #2]
	ldr r0, _0805BDD0 @ =sub_0805C3FC
	movs r1, #0x41
	movs r2, #0
	bl sub_08007968
	ldr r1, [r7]
	strh r0, [r1, #8]
	ldr r0, _0805BDD4 @ =sub_0805CA34
	movs r1, #0x41
	movs r2, #0
	bl sub_08007968
	ldr r1, [r7]
	strh r0, [r1, #0xe]
	ldr r0, _0805BDD8 @ =sub_0805C4F0
	movs r1, #0x42
	movs r2, #0
	bl sub_08007968
	ldr r1, [r7]
	strh r0, [r1, #0xa]
	ldr r0, _0805BDDC @ =sub_0805C5A0
	movs r1, #0x42
	movs r2, #0
	bl sub_08007968
	ldr r1, [r7]
	strh r0, [r1, #0xc]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805BD80: .4byte 0x0808D48C
_0805BD84: .4byte 0x050001C2
_0805BD88: .4byte 0x00007FFF
_0805BD8C: .4byte 0x050001D2
_0805BD90: .4byte 0x0000318C
_0805BD94: .4byte 0x050001C4
_0805BD98: .4byte 0x03001634
_0805BD9C: .4byte 0x00000173
_0805BDA0: .4byte 0x0808F2F4
_0805BDA4: .4byte 0x03004400
_0805BDA8: .4byte 0x0600A020
_0805BDAC: .4byte 0x030024E0
_0805BDB0: .4byte 0x00001B09
_0805BDB4: .4byte 0x08107B48
_0805BDB8: .4byte 0x05000180
_0805BDBC: .4byte 0x08107B6C
_0805BDC0: .4byte 0x0600D400
_0805BDC4: .4byte 0x08107B94
_0805BDC8: .4byte 0x0600E800
_0805BDCC: .4byte 0x00001D0C
_0805BDD0: .4byte sub_0805C3FC
_0805BDD4: .4byte sub_0805CA34
_0805BDD8: .4byte sub_0805C4F0
_0805BDDC: .4byte sub_0805C5A0

	thumb_func_start sub_0805BDE0
sub_0805BDE0: @ 0x0805BDE0
	push {r4, lr}
	bl sub_0800B17C
	ldr r4, _0805BE18 @ =0x03001634
	ldr r0, [r4]
	movs r1, #8
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	ldr r0, [r4]
	movs r1, #0xe
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	ldr r0, [r4]
	movs r1, #0xa
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	ldr r0, [r4]
	movs r1, #0xc
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805BE18: .4byte 0x03001634

	thumb_func_start sub_0805BE1C
sub_0805BE1C: @ 0x0805BE1C
	push {r4, r5, lr}
	movs r0, #0
	bl sub_080081A0
	ldr r5, _0805BE58 @ =0x03001634
	movs r4, #0xe8
	lsls r4, r4, #1
	adds r0, r4, #0
	bl sub_08007CE8
	adds r1, r0, #0
	str r1, [r5]
	movs r0, #0
	adds r2, r4, #0
	bl sub_08007EFC
	bl sub_0805BC64
	movs r0, #1
	bl sub_08002B98
	ldr r5, _0805BE5C @ =0x0808FBDC
_0805BE48:
	ldr r0, _0805BE58 @ =0x03001634
	ldr r1, [r0]
	ldrh r0, [r1, #6]
	cmp r0, #0
	beq _0805BE60
	subs r0, #1
	strh r0, [r1, #6]
	b _0805BE6C
	.align 2, 0
_0805BE58: .4byte 0x03001634
_0805BE5C: .4byte 0x0808FBDC
_0805BE60:
	ldrb r0, [r1, #1]
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	bl call_via_r0
_0805BE6C:
	ldr r4, _0805BE80 @ =0x03001634
	ldr r0, [r4]
	ldrb r0, [r0]
	cmp r0, #0
	bne _0805BE84
	movs r0, #1
	bl sub_08002B98
	b _0805BE48
	.align 2, 0
_0805BE80: .4byte 0x03001634
_0805BE84:
	bl sub_0805BDE0
	movs r0, #1
	bl sub_08002B98
	ldr r0, [r4]
	bl sub_08007CF8
	bl sub_08002B0C
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0805BEA0
sub_0805BEA0: @ 0x0805BEA0
	ldr r1, _0805BEB4 @ =0x03001634
	ldr r3, [r1]
	movs r2, #0
	strb r0, [r3, #1]
	ldr r0, [r1]
	strb r2, [r0, #2]
	ldr r0, [r1]
	strh r2, [r0, #4]
	strh r2, [r0, #6]
	bx lr
	.align 2, 0
_0805BEB4: .4byte 0x03001634

	thumb_func_start sub_0805BEB8
sub_0805BEB8: @ 0x0805BEB8
	push {r4, r5, r6, r7, lr}
	ldr r1, _0805BF94 @ =0x030024E0
	ldr r7, _0805BF98 @ =0x03001634
	ldr r3, [r7]
	ldrh r0, [r3, #0x32]
	movs r2, #0
	mov ip, r2
	strh r0, [r1, #0xc]
	ldr r1, _0805BF9C @ =0x040000B0
	adds r0, r3, #0
	adds r0, #0x34
	str r0, [r1]
	ldr r0, _0805BFA0 @ =0x04000014
	str r0, [r1, #4]
	ldr r0, _0805BFA4 @ =0xA2400001
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r1, #0xb9
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805BF8C
	ldr r2, _0805BFA8 @ =0x0808FBD4
	movs r5, #0xbb
	lsls r5, r5, #1
	adds r0, r3, r5
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r2
	ldrh r2, [r0]
	lsls r2, r2, #6
	ldr r0, _0805BFAC @ =0x0600D800
	adds r2, r2, r0
	ldr r4, _0805BFB0 @ =0x00000175
	adds r0, r3, r4
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r2, r2, r0
	lsls r1, r1, #6
	adds r0, #1
	adds r1, r1, r0
	movs r0, #0x80
	lsls r0, r0, #1
	adds r1, r1, r0
	ldr r0, _0805BFB4 @ =0xFFFFE000
	adds r6, r0, #0
	orrs r1, r6
	strh r1, [r2]
	adds r2, #0x40
	ldr r3, [r7]
	adds r0, r3, r5
	ldrb r1, [r0]
	lsls r1, r1, #6
	adds r0, r3, r4
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, #1
	adds r1, r1, r0
	ldr r0, _0805BFB8 @ =0x00000101
	adds r1, r1, r0
	orrs r1, r6
	strh r1, [r2]
	movs r1, #0xb9
	lsls r1, r1, #1
	adds r0, r3, r1
	mov r2, ip
	strb r2, [r0]
	ldr r0, [r7]
	adds r0, r0, r4
	ldrb r1, [r0]
	adds r1, #1
	strb r1, [r0]
	lsls r1, r1, #0x18
	ldr r2, [r7]
	adds r5, r2, r5
	ldrb r0, [r5]
	lsls r3, r0, #1
	adds r0, r2, #0
	adds r0, #0x2a
	adds r0, r0, r3
	lsrs r1, r1, #0x18
	ldrh r0, [r0]
	cmp r1, r0
	blo _0805BF7E
	ldr r0, _0805BFBC @ =0x0808FBCC
	adds r0, r3, r0
	ldrh r0, [r0]
	strh r0, [r2, #6]
	adds r0, r2, r4
	mov r1, ip
	strb r1, [r0]
	ldr r0, [r7]
	movs r2, #0xbb
	lsls r2, r2, #1
	adds r1, r0, r2
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_0805BF7E:
	ldr r1, [r7]
	movs r0, #0xba
	lsls r0, r0, #1
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_0805BF8C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805BF94: .4byte 0x030024E0
_0805BF98: .4byte 0x03001634
_0805BF9C: .4byte 0x040000B0
_0805BFA0: .4byte 0x04000014
_0805BFA4: .4byte 0xA2400001
_0805BFA8: .4byte 0x0808FBD4
_0805BFAC: .4byte 0x0600D800
_0805BFB0: .4byte 0x00000175
_0805BFB4: .4byte 0xFFFFE000
_0805BFB8: .4byte 0x00000101
_0805BFBC: .4byte 0x0808FBCC

	thumb_func_start sub_0805BFC0
sub_0805BFC0: @ 0x0805BFC0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r4, _0805BFE0 @ =0x03001634
	ldr r1, [r4]
	ldrb r3, [r1, #2]
	mov r8, r4
	cmp r3, #1
	beq _0805C0B0
	cmp r3, #1
	bgt _0805BFE4
	cmp r3, #0
	beq _0805BFEC
	b _0805C100
	.align 2, 0
_0805BFE0: .4byte 0x03001634
_0805BFE4:
	cmp r3, #2
	bne _0805BFEA
	b _0805C0F0
_0805BFEA:
	b _0805C100
_0805BFEC:
	movs r2, #0
	movs r3, #0
_0805BFF0:
	ldr r0, [r4]
	lsls r1, r2, #1
	adds r0, #0x32
	adds r0, r0, r1
	ldrh r1, [r0]
	strh r3, [r0]
	adds r2, #1
	cmp r2, #0x9f
	ble _0805BFF0
	movs r2, #0
	ldr r0, _0805C094 @ =0x03001634
	mov ip, r0
	ldr r1, _0805C098 @ =0x0808FBD4
	mov sb, r1
	movs r7, #0xf0
_0805C00E:
	adds r6, r2, #1
	lsls r5, r2, #1
	mov r2, sb
	adds r0, r5, r2
	ldrh r0, [r0]
	lsls r0, r0, #3
	adds r3, r0, #0
	adds r3, #0x1c
	movs r4, #0x17
_0805C020:
	mov r1, ip
	ldr r0, [r1]
	lsls r1, r3, #1
	adds r2, r0, #0
	adds r2, #0x32
	adds r2, r2, r1
	adds r0, #0x2a
	adds r0, r0, r5
	ldrh r0, [r0]
	lsls r0, r0, #3
	subs r0, r7, r0
	asrs r0, r0, #1
	rsbs r0, r0, #0
	ldrh r1, [r2]
	strh r0, [r2]
	adds r3, #1
	subs r4, #1
	cmp r4, #0
	bge _0805C020
	adds r2, r6, #0
	cmp r2, #3
	ble _0805C00E
	mov r2, r8
	ldr r0, [r2]
	ldr r3, _0805C09C @ =0x00000175
	adds r0, r0, r3
	movs r1, #0
	strb r1, [r0]
	ldr r0, [r2]
	movs r5, #0xbb
	lsls r5, r5, #1
	adds r0, r0, r5
	strb r1, [r0]
	bl sub_08008174
	ldr r2, _0805C0A0 @ =0x030024E0
	ldrh r1, [r2]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r3, #0
	orrs r0, r1
	ldr r1, _0805C0A4 @ =0x0000EFFF
	ands r0, r1
	strh r0, [r2]
	ldr r0, _0805C0A8 @ =0x0000FFE4
	strh r0, [r2, #0x14]
	adds r2, #0x4f
	movs r1, #1
	strb r1, [r2]
	mov r5, r8
	ldr r0, [r5]
	strb r1, [r0, #2]
	ldr r0, _0805C0AC @ =sub_0805BEB8
	movs r1, #0xff
	bl sub_08009460
	b _0805C100
	.align 2, 0
_0805C094: .4byte 0x03001634
_0805C098: .4byte 0x0808FBD4
_0805C09C: .4byte 0x00000175
_0805C0A0: .4byte 0x030024E0
_0805C0A4: .4byte 0x0000EFFF
_0805C0A8: .4byte 0x0000FFE4
_0805C0AC: .4byte sub_0805BEB8
_0805C0B0:
	movs r2, #0xba
	lsls r2, r2, #1
	adds r0, r1, r2
	ldr r5, _0805C0CC @ =0x00000173
	adds r2, r1, r5
	ldrb r0, [r0]
	ldrb r2, [r2]
	cmp r0, r2
	blo _0805C0D0
	movs r0, #0x1e
	strh r0, [r1, #6]
	movs r0, #2
	strb r0, [r1, #2]
	b _0805C100
	.align 2, 0
_0805C0CC: .4byte 0x00000173
_0805C0D0:
	ldrh r0, [r1, #4]
	cmp r0, #0
	bne _0805C0DE
	movs r2, #0xb9
	lsls r2, r2, #1
	adds r0, r1, r2
	strb r3, [r0]
_0805C0DE:
	ldr r3, [r4]
	ldrh r1, [r3, #4]
	adds r2, r1, #1
	adds r0, r2, #0
	asrs r0, r0, #3
	lsls r0, r0, #3
	subs r0, r2, r0
	strh r0, [r3, #4]
	b _0805C100
_0805C0F0:
	bl sub_0803B868
	ldr r0, _0805C10C @ =sub_0805BEB8
	bl sub_080094F4
	movs r0, #1
	bl sub_0805BEA0
_0805C100:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805C10C: .4byte sub_0805BEB8

	thumb_func_start sub_0805C110
sub_0805C110: @ 0x0805C110
	push {r4, r5, r6, lr}
	ldr r6, _0805C128 @ =0x03001634
	ldr r2, [r6]
	ldrb r5, [r2, #2]
	cmp r5, #1
	beq _0805C18C
	cmp r5, #1
	bgt _0805C12C
	cmp r5, #0
	beq _0805C132
	b _0805C1CE
	.align 2, 0
_0805C128: .4byte 0x03001634
_0805C12C:
	cmp r5, #2
	beq _0805C1C8
	b _0805C1CE
_0805C132:
	bl sub_08008174
	ldr r4, _0805C184 @ =0x030024E0
	ldrh r1, [r4]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r2, #0
	orrs r0, r1
	movs r2, #0x80
	lsls r2, r2, #4
	adds r1, r2, #0
	orrs r0, r1
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4]
	adds r1, r4, #0
	adds r1, #0x4a
	ldr r0, _0805C188 @ =0x00000CDD
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x4e
	movs r1, #0x10
	strb r1, [r0]
	subs r0, #2
	strh r1, [r0]
	bl sub_0805C45C
	adds r0, r4, #0
	adds r0, #0x4f
	movs r4, #1
	strb r4, [r0]
	movs r0, #0xd
	bl m4aSongNumStart
	ldr r0, [r6]
	strh r5, [r0, #4]
	strb r4, [r0, #2]
	b _0805C1CE
	.align 2, 0
_0805C184: .4byte 0x030024E0
_0805C188: .4byte 0x00000CDD
_0805C18C:
	ldr r3, _0805C1C4 @ =0x030024E0
	ldrh r0, [r2, #4]
	adds r0, #1
	strh r0, [r2, #4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	rsbs r0, r1, #0
	cmp r0, #0
	bge _0805C1A6
	adds r0, #0x1f
_0805C1A6:
	asrs r0, r0, #5
	adds r0, #0x10
	movs r1, #0x1f
	ands r0, r1
	adds r1, r3, #0
	adds r1, #0x4e
	strb r0, [r1]
	ldrh r0, [r2, #4]
	cmp r0, #0x1f
	bls _0805C1CE
	movs r0, #0
	strh r0, [r2, #4]
	movs r0, #2
	strb r0, [r2, #2]
	b _0805C1CE
	.align 2, 0
_0805C1C4: .4byte 0x030024E0
_0805C1C8:
	movs r0, #2
	bl sub_0805BEA0
_0805C1CE:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_0805C1D4
sub_0805C1D4: @ 0x0805C1D4
	push {r4, lr}
	ldr r4, _0805C1EC @ =0x03001634
	ldr r2, [r4]
	ldrb r1, [r2, #2]
	cmp r1, #1
	beq _0805C220
	cmp r1, #1
	bgt _0805C1F0
	cmp r1, #0
	beq _0805C1F6
	b _0805C240
	.align 2, 0
_0805C1EC: .4byte 0x03001634
_0805C1F0:
	cmp r1, #2
	beq _0805C236
	b _0805C240
_0805C1F6:
	ldr r1, _0805C218 @ =0x030024E0
	ldrh r2, [r1]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r3, #0
	orrs r0, r2
	strh r0, [r1]
	ldr r0, _0805C21C @ =0x00001C09
	strh r0, [r1, #4]
	bl sub_08004460
	bl sub_0805CA18
	ldr r1, [r4]
	movs r0, #1
	strb r0, [r1, #2]
	b _0805C240
	.align 2, 0
_0805C218: .4byte 0x030024E0
_0805C21C: .4byte 0x00001C09
_0805C220:
	ldrb r0, [r2, #0x10]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _0805C240
	adds r0, r2, #0
	adds r0, #0x28
	strb r1, [r0]
	ldr r1, [r4]
	movs r0, #2
	strb r0, [r1, #2]
	b _0805C240
_0805C236:
	bl sub_0800446C
	movs r0, #3
	bl sub_0805BEA0
_0805C240:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0805C248
sub_0805C248: @ 0x0805C248
	push {r4, lr}
	ldr r4, _0805C260 @ =0x03001634
	ldr r2, [r4]
	ldrb r0, [r2, #2]
	cmp r0, #1
	beq _0805C276
	cmp r0, #1
	bgt _0805C264
	cmp r0, #0
	beq _0805C26E
	b _0805C2C8
	.align 2, 0
_0805C260: .4byte 0x03001634
_0805C264:
	cmp r0, #2
	beq _0805C2AC
	cmp r0, #3
	beq _0805C2C4
	b _0805C2C8
_0805C26E:
	strh r0, [r2, #4]
	movs r0, #1
	strb r0, [r2, #2]
	b _0805C2C8
_0805C276:
	ldr r3, _0805C2A8 @ =0x030024E0
	ldrh r0, [r2, #4]
	adds r0, #1
	strh r0, [r2, #4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	rsbs r0, r0, #0
	cmp r0, #0
	bge _0805C28A
	adds r0, #0x1f
_0805C28A:
	asrs r0, r0, #5
	adds r0, #4
	movs r1, #0x1f
	ands r0, r1
	adds r1, r3, #0
	adds r1, #0x4e
	strb r0, [r1]
	ldrh r0, [r2, #4]
	cmp r0, #0x1f
	bls _0805C2C8
	movs r0, #0
	strh r0, [r2, #4]
	movs r0, #2
	strb r0, [r2, #2]
	b _0805C2C8
	.align 2, 0
_0805C2A8: .4byte 0x030024E0
_0805C2AC:
	ldr r0, _0805C2C0 @ =0x030056F0
	movs r1, #4
	bl m4aMPlayFadeOut
	bl sub_0803B868
	ldr r1, [r4]
	movs r0, #3
	strb r0, [r1, #2]
	b _0805C2C8
	.align 2, 0
_0805C2C0: .4byte 0x030056F0
_0805C2C4:
	movs r0, #1
	strb r0, [r2]
_0805C2C8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0805C2D0
sub_0805C2D0: @ 0x0805C2D0
	push {r4, lr}
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r1, #0x30
	bl sub_0800B278
	bl sub_0800B2BC
	ldr r4, _0805C308 @ =0x03001634
	ldr r1, [r4]
	movs r2, #0xbe
	lsls r2, r2, #1
	adds r1, r1, r2
	strh r0, [r1]
	bl sub_0800B2C8
	ldr r1, [r4]
	subs r0, #0x30
	movs r2, #0xbf
	lsls r2, r2, #1
	adds r1, r1, r2
	strh r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805C308: .4byte 0x03001634

	thumb_func_start sub_0805C30C
sub_0805C30C: @ 0x0805C30C
	push {r4, r5, r6, lr}
	bl sub_08007BD4
	adds r4, r0, #0
	ldrh r0, [r4, #2]
	adds r0, #1
	movs r1, #3
	bl __modsi3
	strh r0, [r4, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0805C3E4
	ldr r0, _0805C368 @ =0x03001634
	ldr r2, [r0]
	movs r1, #0xbe
	lsls r1, r1, #1
	adds r0, r2, r1
	movs r3, #0
	ldrsh r1, [r0, r3]
	movs r3, #4
	ldrsh r0, [r4, r3]
	adds r6, r1, r0
	movs r3, #0xbf
	lsls r3, r3, #1
	adds r0, r2, r3
	movs r3, #0
	ldrsh r5, [r0, r3]
	adds r0, r2, #0
	adds r0, #0x28
	ldrb r0, [r0]
	cmp r0, #0
	bne _0805C37C
	ldrb r0, [r2, #0x10]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _0805C37C
	movs r2, #4
	ldrsh r0, [r4, r2]
	cmp r0, #0
	blt _0805C370
	adds r1, #0x10
	ldr r0, _0805C36C @ =0x000005EF
	cmp r1, r0
	bgt _0805C378
	b _0805C37C
	.align 2, 0
_0805C368: .4byte 0x03001634
_0805C36C: .4byte 0x000005EF
_0805C370:
	adds r0, r1, #0
	subs r0, #0x10
	cmp r0, #0
	bgt _0805C37C
_0805C378:
	bl sub_0805C4D4
_0805C37C:
	ldr r0, _0805C3EC @ =0x000005EF
	cmp r6, r0
	ble _0805C3A8
	movs r6, #0xbe
	lsls r6, r6, #3
	ldr r0, _0805C3F0 @ =0x03001634
	ldr r1, [r0]
	adds r0, r1, #0
	adds r0, #0x28
	ldrb r0, [r0]
	cmp r0, #0
	bne _0805C3A8
	movs r3, #0xbf
	lsls r3, r3, #1
	adds r0, r1, r3
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r5, r0, #0
	adds r5, #0xf0
	ldrh r0, [r4, #4]
	rsbs r0, r0, #0
	strh r0, [r4, #4]
_0805C3A8:
	cmp r6, #0
	bgt _0805C3D0
	movs r6, #0
	ldr r0, _0805C3F0 @ =0x03001634
	ldr r1, [r0]
	adds r0, r1, #0
	adds r0, #0x28
	ldrb r0, [r0]
	cmp r0, #0
	bne _0805C3D0
	movs r2, #0xbf
	lsls r2, r2, #1
	adds r0, r1, r2
	movs r3, #0
	ldrsh r0, [r0, r3]
	adds r5, r0, #0
	adds r5, #0xf0
	ldrh r0, [r4, #4]
	rsbs r0, r0, #0
	strh r0, [r4, #4]
_0805C3D0:
	ldr r0, _0805C3F4 @ =0x0000037F
	cmp r5, r0
	ble _0805C3D8
	movs r5, #0
_0805C3D8:
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	bl sub_0805C2D0
_0805C3E4:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805C3EC: .4byte 0x000005EF
_0805C3F0: .4byte 0x03001634
_0805C3F4: .4byte 0x0000037F

	thumb_func_start sub_0805C3F8
sub_0805C3F8: @ 0x0805C3F8
	bx lr
	.align 2, 0

	thumb_func_start sub_0805C3FC
sub_0805C3FC: @ 0x0805C3FC
	push {r4, lr}
	ldr r4, _0805C448 @ =0x03001634
	ldr r0, [r4]
	movs r1, #8
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	movs r1, #0
	strb r1, [r0]
	strh r1, [r0, #2]
	movs r1, #1
	strh r1, [r0, #4]
	ldr r1, _0805C44C @ =0x0808D4A0
	adds r0, r1, #0
	adds r0, #0xc8
	ldrb r0, [r0]
	lsls r0, r0, #0x13
	ldr r2, _0805C450 @ =0xFFA00000
	adds r0, r0, r2
	asrs r0, r0, #0x10
	adds r1, #0xc9
	ldrb r1, [r1]
	lsls r1, r1, #0x13
	ldr r2, _0805C454 @ =0xFFC80000
	adds r1, r1, r2
	asrs r1, r1, #0x10
	bl sub_0805C2D0
	ldr r0, [r4]
	movs r1, #8
	ldrsh r0, [r0, r1]
	ldr r1, _0805C458 @ =sub_0805C3F8
	bl sub_08007B84
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805C448: .4byte 0x03001634
_0805C44C: .4byte 0x0808D4A0
_0805C450: .4byte 0xFFA00000
_0805C454: .4byte 0xFFC80000
_0805C458: .4byte sub_0805C3F8

	thumb_func_start sub_0805C45C
sub_0805C45C: @ 0x0805C45C
	push {lr}
	ldr r0, _0805C470 @ =0x03001634
	ldr r0, [r0]
	movs r1, #8
	ldrsh r0, [r0, r1]
	ldr r1, _0805C474 @ =sub_0805C30C
	bl sub_08007B84
	pop {r0}
	bx r0
	.align 2, 0
_0805C470: .4byte 0x03001634
_0805C474: .4byte sub_0805C30C

	thumb_func_start sub_0805C478
sub_0805C478: @ 0x0805C478
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _0805C4AC @ =0x03001634
	ldr r0, [r5]
	movs r1, #0xa
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	movs r1, #0
	strb r1, [r0]
	strh r1, [r0, #2]
	ldr r0, [r5]
	movs r1, #0xa
	ldrsh r0, [r0, r1]
	ldr r1, _0805C4B0 @ =0x0808FBEC
	lsls r4, r4, #2
	adds r4, r4, r1
	ldr r1, [r4]
	bl sub_08007B84
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805C4AC: .4byte 0x03001634
_0805C4B0: .4byte 0x0808FBEC

	thumb_func_start sub_0805C4B4
sub_0805C4B4: @ 0x0805C4B4
	push {lr}
	ldr r0, _0805C4D0 @ =0x03001634
	ldr r2, [r0]
	ldrb r1, [r2, #0x10]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #0x10]
	movs r0, #0
	bl sub_0805C478
	pop {r0}
	bx r0
	.align 2, 0
_0805C4D0: .4byte 0x03001634

	thumb_func_start sub_0805C4D4
sub_0805C4D4: @ 0x0805C4D4
	push {lr}
	ldr r0, _0805C4EC @ =0x03001634
	ldr r2, [r0]
	ldrb r0, [r2, #0x10]
	movs r1, #1
	orrs r0, r1
	strb r0, [r2, #0x10]
	movs r0, #1
	bl sub_0805C478
	pop {r0}
	bx r0
	.align 2, 0
_0805C4EC: .4byte 0x03001634

	thumb_func_start sub_0805C4F0
sub_0805C4F0: @ 0x0805C4F0
	push {lr}
	bl sub_0805C4B4
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0805C4FC
sub_0805C4FC: @ 0x0805C4FC
	bx lr
	.align 2, 0

	thumb_func_start sub_0805C500
sub_0805C500: @ 0x0805C500
	push {r4, r5, lr}
	bl sub_08007BD4
	adds r5, r0, #0
	ldrb r2, [r5]
	cmp r2, #0
	beq _0805C514
	cmp r2, #1
	beq _0805C540
	b _0805C572
_0805C514:
	ldr r3, _0805C53C @ =0x030024E0
	ldrh r0, [r5, #2]
	adds r0, #1
	strh r0, [r5, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	asrs r0, r0, #2
	adds r0, #4
	movs r1, #0x1f
	ands r0, r1
	adds r1, r3, #0
	adds r1, #0x4e
	strb r0, [r1]
	ldrh r0, [r5, #2]
	cmp r0, #0x30
	bne _0805C572
	strh r2, [r5, #2]
	movs r0, #1
	strb r0, [r5]
	b _0805C572
	.align 2, 0
_0805C53C: .4byte 0x030024E0
_0805C540:
	ldr r4, _0805C578 @ =0x030024E0
	ldrh r1, [r5, #2]
	adds r1, #1
	strh r1, [r5, #2]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	rsbs r0, r0, #0
	movs r1, #0x30
	bl __divsi3
	adds r0, #0x10
	movs r1, #0x1f
	ands r0, r1
	adds r4, #0x4e
	strb r0, [r4]
	ldrh r0, [r5, #2]
	cmp r0, #0x30
	bne _0805C572
	movs r0, #0
	strh r0, [r5, #2]
	bl sub_0805C4B4
_0805C572:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805C578: .4byte 0x030024E0

	thumb_func_start sub_0805C57C
sub_0805C57C: @ 0x0805C57C
	push {r4, r5, lr}
	movs r4, #0
	ldr r5, _0805C59C @ =0x03001634
_0805C582:
	ldr r0, [r5]
	lsls r1, r4, #2
	adds r0, #0x14
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_08009A00
	adds r4, #1
	cmp r4, #4
	ble _0805C582
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805C59C: .4byte 0x03001634

	thumb_func_start sub_0805C5A0
sub_0805C5A0: @ 0x0805C5A0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r4, _0805C678 @ =0x03001634
	ldr r0, [r4]
	movs r1, #0xc
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	adds r7, r0, #0
	movs r0, #0
	strb r0, [r7]
	movs r5, #0
	mov r8, r4
	movs r0, #0xc0
	lsls r0, r0, #1
	mov sb, r0
	mov sl, r8
_0805C5C8:
	adds r2, r7, #6
	adds r2, r2, r5
	adds r0, r7, #1
	adds r0, r0, r5
	movs r1, #0x3a
	strb r1, [r0]
	strb r1, [r2]
	movs r0, #2
	movs r1, #0xff
	bl sub_080099E0
	adds r4, r0, #0
	movs r1, #0
	bl sub_08009A34
	lsls r1, r5, #3
	adds r1, r1, r5
	lsls r1, r1, #7
	ldr r0, _0805C67C @ =0x06011800
	adds r1, r1, r0
	adds r0, r4, #0
	bl sub_08009A78
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	bl sub_08009BBC
	adds r1, r5, #6
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r4, #0
	bl sub_08009AB4
	adds r0, r4, #0
	ldr r1, _0805C680 @ =0x080ACA8C
	ldr r2, _0805C684 @ =0x080ACA84
	movs r3, #0
	bl sub_08009ACC
	adds r0, r4, #0
	movs r1, #0
	bl sub_08009B40
	mov r1, r8
	ldr r0, [r1]
	lsls r1, r5, #2
	adds r0, #0x14
	adds r0, r0, r1
	str r4, [r0]
	adds r4, r5, #1
	ldr r6, _0805C688 @ =0x080ACB30
	lsls r2, r5, #4
	movs r3, #3
_0805C634:
	mov r1, r8
	ldr r0, [r1]
	add r0, sb
	adds r0, r0, r2
	ldm r6!, {r1}
	str r1, [r0]
	adds r2, #4
	subs r3, #1
	cmp r3, #0
	bge _0805C634
	adds r5, r4, #0
	cmp r5, #4
	ble _0805C5C8
	mov r1, sl
	ldr r0, [r1]
	movs r1, #0xc
	ldrsh r0, [r0, r1]
	ldr r1, _0805C68C @ =sub_0805C57C
	bl sub_08007BA0
	mov r1, sl
	ldr r0, [r1]
	movs r1, #0xc
	ldrsh r0, [r0, r1]
	ldr r1, _0805C690 @ =sub_0805C694
	bl sub_08007B84
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805C678: .4byte 0x03001634
_0805C67C: .4byte 0x06011800
_0805C680: .4byte 0x080ACA8C
_0805C684: .4byte 0x080ACA84
_0805C688: .4byte 0x080ACB30
_0805C68C: .4byte sub_0805C57C
_0805C690: .4byte sub_0805C694

	thumb_func_start sub_0805C694
sub_0805C694: @ 0x0805C694
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	bl sub_08007BD4
	mov sb, r0
	movs r0, #0
	mov r8, r0
	movs r1, #6
	add r1, sb
	mov sl, r1
	movs r5, #0
_0805C6B2:
	mov r0, sb
	adds r0, #6
	mov r2, r8
	adds r1, r0, r2
	ldrb r0, [r1]
	cmp r0, #0x39
	bhi _0805C75C
	ldr r2, _0805C71C @ =0x0808D4A0
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #3
	adds r1, r1, r2
	ldrb r2, [r1, #8]
	lsls r2, r2, #3
	ldr r3, _0805C720 @ =0x03001634
	ldr r4, [r3]
	movs r6, #0xbe
	lsls r6, r6, #1
	adds r0, r4, r6
	movs r6, #0
	ldrsh r0, [r0, r6]
	subs r6, r2, r0
	ldrb r1, [r1, #9]
	lsls r1, r1, #3
	movs r2, #0xbf
	lsls r2, r2, #1
	adds r0, r4, r2
	movs r2, #0
	ldrsh r0, [r0, r2]
	subs r2, r1, r0
	adds r0, r6, #0
	adds r0, #0x30
	cmp r0, #0
	ble _0805C724
	cmp r6, #0xef
	bgt _0805C724
	adds r0, r2, #0
	adds r0, #0x30
	cmp r0, #0
	ble _0805C724
	cmp r2, #0x9f
	bgt _0805C724
	adds r0, r4, #0
	adds r0, #0x14
	adds r0, r0, r5
	ldr r0, [r0]
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl sub_08009A70
	b _0805C75C
	.align 2, 0
_0805C71C: .4byte 0x0808D4A0
_0805C720: .4byte 0x03001634
_0805C724:
	mov r1, sl
	add r1, r8
	movs r0, #0x3a
	strb r0, [r1]
	ldr r0, [r3]
	adds r0, #0x14
	adds r0, r0, r5
	ldr r0, [r0]
	movs r1, #0
	str r3, [sp, #0x10]
	bl sub_08009A34
	mov r0, sb
	adds r0, #0xb
	add r0, r8
	ldrb r0, [r0]
	ldr r3, [sp, #0x10]
	cmp r0, #0
	beq _0805C75C
	mov r6, r8
	lsls r1, r6, #4
	movs r0, #0xc0
	lsls r0, r0, #1
	adds r1, r1, r0
	ldr r0, [r3]
	adds r0, r0, r1
	bl sub_080095E0
_0805C75C:
	adds r5, #4
	movs r1, #1
	add r8, r1
	mov r2, r8
	cmp r2, #4
	ble _0805C6B2
	movs r3, #0
	mov r8, r3
_0805C76C:
	mov r6, r8
	adds r6, #1
	str r6, [sp]
	mov r0, r8
	cmp r0, #0x27
	bne _0805C77A
	b _0805C992
_0805C77A:
	ldr r0, _0805C818 @ =0x0808D4A0
	mov r1, r8
	lsls r4, r1, #1
	adds r1, r4, r1
	lsls r1, r1, #3
	adds r1, r1, r0
	ldrb r2, [r1, #8]
	lsls r2, r2, #3
	ldr r3, _0805C81C @ =0x03001634
	ldr r5, [r3]
	movs r6, #0xbe
	lsls r6, r6, #1
	adds r0, r5, r6
	movs r6, #0
	ldrsh r0, [r0, r6]
	subs r6, r2, r0
	ldrb r1, [r1, #9]
	lsls r1, r1, #3
	movs r2, #0xbf
	lsls r2, r2, #1
	adds r0, r5, r2
	movs r2, #0
	ldrsh r0, [r0, r2]
	subs r2, r1, r0
	adds r0, r6, #0
	adds r0, #0x30
	cmp r0, #0
	bgt _0805C7B4
	b _0805C992
_0805C7B4:
	cmp r6, #0xef
	ble _0805C7BA
	b _0805C992
_0805C7BA:
	adds r0, r2, #0
	adds r0, #0x30
	cmp r0, #0
	bgt _0805C7C4
	b _0805C992
_0805C7C4:
	cmp r2, #0x9f
	ble _0805C7CA
	b _0805C992
_0805C7CA:
	movs r7, #0
	mov r1, sl
_0805C7CE:
	adds r0, r1, r7
	ldrb r0, [r0]
	cmp r0, r8
	bne _0805C7D8
	b _0805C992
_0805C7D8:
	adds r7, #1
	cmp r7, #4
	ble _0805C7CE
	movs r7, #0
	mov r1, sb
	ldrb r0, [r1, #6]
	lsls r6, r6, #0x10
	str r6, [sp, #4]
	lsls r2, r2, #0x10
	str r2, [sp, #8]
	mov r2, sb
	adds r2, #0xb
	cmp r0, #0x3a
	beq _0805C804
	mov r1, sl
_0805C7F6:
	adds r7, #1
	cmp r7, #4
	bgt _0805C804
	adds r0, r1, r7
	ldrb r0, [r0]
	cmp r0, #0x3a
	bne _0805C7F6
_0805C804:
	mov r6, r8
	cmp r6, #0x39
	bls _0805C80C
	b _0805C914
_0805C80C:
	lsls r0, r6, #2
	ldr r1, _0805C820 @ =_0805C824
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0805C818: .4byte 0x0808D4A0
_0805C81C: .4byte 0x03001634
_0805C820: .4byte _0805C824
_0805C824: @ jump table
	.4byte _0805C90C @ case 0
	.4byte _0805C914 @ case 1
	.4byte _0805C90C @ case 2
	.4byte _0805C914 @ case 3
	.4byte _0805C914 @ case 4
	.4byte _0805C914 @ case 5
	.4byte _0805C914 @ case 6
	.4byte _0805C914 @ case 7
	.4byte _0805C90C @ case 8
	.4byte _0805C90C @ case 9
	.4byte _0805C914 @ case 10
	.4byte _0805C914 @ case 11
	.4byte _0805C914 @ case 12
	.4byte _0805C914 @ case 13
	.4byte _0805C914 @ case 14
	.4byte _0805C914 @ case 15
	.4byte _0805C914 @ case 16
	.4byte _0805C914 @ case 17
	.4byte _0805C914 @ case 18
	.4byte _0805C914 @ case 19
	.4byte _0805C914 @ case 20
	.4byte _0805C90C @ case 21
	.4byte _0805C914 @ case 22
	.4byte _0805C914 @ case 23
	.4byte _0805C914 @ case 24
	.4byte _0805C914 @ case 25
	.4byte _0805C90C @ case 26
	.4byte _0805C914 @ case 27
	.4byte _0805C914 @ case 28
	.4byte _0805C914 @ case 29
	.4byte _0805C914 @ case 30
	.4byte _0805C914 @ case 31
	.4byte _0805C914 @ case 32
	.4byte _0805C914 @ case 33
	.4byte _0805C914 @ case 34
	.4byte _0805C914 @ case 35
	.4byte _0805C914 @ case 36
	.4byte _0805C914 @ case 37
	.4byte _0805C914 @ case 38
	.4byte _0805C914 @ case 39
	.4byte _0805C914 @ case 40
	.4byte _0805C914 @ case 41
	.4byte _0805C914 @ case 42
	.4byte _0805C914 @ case 43
	.4byte _0805C914 @ case 44
	.4byte _0805C914 @ case 45
	.4byte _0805C914 @ case 46
	.4byte _0805C914 @ case 47
	.4byte _0805C914 @ case 48
	.4byte _0805C914 @ case 49
	.4byte _0805C90C @ case 50
	.4byte _0805C90C @ case 51
	.4byte _0805C90C @ case 52
	.4byte _0805C90C @ case 53
	.4byte _0805C90C @ case 54
	.4byte _0805C90C @ case 55
	.4byte _0805C90C @ case 56
	.4byte _0805C90C @ case 57
_0805C90C:
	adds r1, r2, r7
	movs r0, #0
	strb r0, [r1]
	b _0805C938
_0805C914:
	adds r1, r2, r7
	movs r0, #1
	strb r0, [r1]
	lsls r1, r7, #4
	movs r0, #0xc0
	lsls r0, r0, #1
	adds r1, r1, r0
	ldr r0, [r3]
	adds r0, r0, r1
	adds r1, r7, #6
	movs r2, #0xf
	ands r1, r2
	lsls r1, r1, #4
	ldr r3, _0805C9AC @ =0x00000101
	adds r2, r3, #0
	orrs r1, r2
	bl sub_08009554
_0805C938:
	ldr r2, _0805C9B0 @ =0x0808D4A0
	add r4, r8
	lsls r4, r4, #3
	adds r0, r2, #4
	adds r0, r4, r0
	ldr r0, [r0]
	lsls r1, r7, #5
	ldr r6, _0805C9B4 @ =0x050002C0
	adds r1, r1, r6
	str r2, [sp, #0xc]
	bl sub_08008348
	ldr r5, _0805C9B8 @ =0x03001634
	ldr r0, [r5]
	lsls r6, r7, #2
	adds r0, #0x14
	adds r0, r0, r6
	ldr r0, [r0]
	ldr r2, [sp, #0xc]
	adds r4, r4, r2
	ldr r1, [r4]
	movs r2, #1
	bl sub_08009BE4
	ldr r0, [r5]
	adds r0, #0x14
	adds r0, r0, r6
	ldr r0, [r0]
	ldr r2, [sp, #4]
	asrs r1, r2, #0x10
	ldr r3, [sp, #8]
	asrs r2, r3, #0x10
	bl sub_08009A70
	ldr r0, [r5]
	adds r0, #0x14
	adds r0, r0, r6
	ldr r0, [r0]
	movs r1, #1
	bl sub_08009A34
	mov r6, sl
	adds r0, r6, r7
	mov r1, r8
	strb r1, [r0]
_0805C992:
	ldr r2, [sp]
	mov r8, r2
	cmp r2, #0x39
	bgt _0805C99C
	b _0805C76C
_0805C99C:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805C9AC: .4byte 0x00000101
_0805C9B0: .4byte 0x0808D4A0
_0805C9B4: .4byte 0x050002C0
_0805C9B8: .4byte 0x03001634

	thumb_func_start sub_0805C9BC
sub_0805C9BC: @ 0x0805C9BC
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _0805C9F0 @ =0x03001634
	ldr r0, [r5]
	movs r1, #0xe
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	movs r1, #0
	strb r1, [r0]
	strh r1, [r0, #2]
	ldr r0, [r5]
	movs r1, #0xe
	ldrsh r0, [r0, r1]
	ldr r1, _0805C9F4 @ =0x0808FBF4
	lsls r4, r4, #2
	adds r4, r4, r1
	ldr r1, [r4]
	bl sub_08007B84
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805C9F0: .4byte 0x03001634
_0805C9F4: .4byte 0x0808FBF4

	thumb_func_start sub_0805C9F8
sub_0805C9F8: @ 0x0805C9F8
	push {lr}
	ldr r0, _0805CA14 @ =0x03001634
	ldr r2, [r0]
	ldrb r1, [r2, #0x10]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #0x10]
	movs r0, #0
	bl sub_0805C9BC
	pop {r0}
	bx r0
	.align 2, 0
_0805CA14: .4byte 0x03001634

	thumb_func_start sub_0805CA18
sub_0805CA18: @ 0x0805CA18
	push {lr}
	ldr r0, _0805CA30 @ =0x03001634
	ldr r2, [r0]
	ldrb r0, [r2, #0x10]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2, #0x10]
	movs r0, #1
	bl sub_0805C9BC
	pop {r0}
	bx r0
	.align 2, 0
_0805CA30: .4byte 0x03001634

	thumb_func_start sub_0805CA34
sub_0805CA34: @ 0x0805CA34
	push {lr}
	ldr r0, _0805CA5C @ =0x03001634
	ldr r2, [r0]
	movs r0, #0xbc
	lsls r0, r0, #1
	adds r1, r2, r0
	ldr r0, _0805CA60 @ =0x0000FFFF
	strh r0, [r1]
	movs r1, #0xe
	ldrsh r0, [r2, r1]
	bl sub_08007BBC
	movs r1, #0
	strb r1, [r0]
	strh r1, [r0, #2]
	bl sub_0805C9F8
	pop {r0}
	bx r0
	.align 2, 0
_0805CA5C: .4byte 0x03001634
_0805CA60: .4byte 0x0000FFFF

	thumb_func_start sub_0805CA64
sub_0805CA64: @ 0x0805CA64
	bx lr
	.align 2, 0

	thumb_func_start sub_0805CA68
sub_0805CA68: @ 0x0805CA68
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	bl sub_08007BD4
	mov sb, r0
	ldrb r0, [r0]
	cmp r0, #4
	bls _0805CA82
	b _0805CECC
_0805CA82:
	lsls r0, r0, #2
	ldr r1, _0805CA8C @ =_0805CA90
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0805CA8C: .4byte _0805CA90
_0805CA90: @ jump table
	.4byte _0805CAA4 @ case 0
	.4byte _0805CC30 @ case 1
	.4byte _0805CCC4 @ case 2
	.4byte _0805CDC4 @ case 3
	.4byte _0805CEC8 @ case 4
_0805CAA4:
	mov r1, sb
	ldrh r0, [r1, #2]
	adds r0, #1
	movs r1, #6
	bl __modsi3
	mov r2, sb
	strh r0, [r2, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0805CABC
	b _0805CECC
_0805CABC:
	ldr r0, _0805CC00 @ =0x03001634
	ldr r6, [r0]
	movs r1, #0xbc
	lsls r1, r1, #1
	adds r0, r6, r1
	ldrh r1, [r0]
	adds r5, r1, #1
	strh r5, [r0]
	movs r2, #0
	ldrsh r4, [r0, r2]
	adds r0, r4, #0
	movs r1, #0x38
	bl __modsi3
	lsls r0, r0, #0x10
	asrs r7, r0, #0x10
	cmp r7, #0
	beq _0805CAE2
	b _0805CC1C
_0805CAE2:
	adds r0, r4, #0
	movs r1, #0x38
	bl __divsi3
	movs r2, #0xbd
	lsls r2, r2, #1
	adds r1, r6, r2
	strh r0, [r1]
	ldrh r3, [r1]
	lsls r0, r3, #3
	subs r2, r0, r3
	adds r0, r2, #0
	cmp r2, #0
	bge _0805CB00
	adds r0, #0x1f
_0805CB00:
	asrs r5, r0, #5
	lsls r0, r5, #5
	subs r5, r2, r0
	ldr r4, _0805CC04 @ =0x0808F758
	adds r0, r3, #0
	movs r1, #5
	bl __umodsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	adds r0, r0, r4
	ldr r0, [r0]
	lsls r1, r5, #6
	ldr r4, _0805CC08 @ =0x0600E000
	adds r1, r1, r4
	movs r2, #0x20
	bl CpuSet
	adds r2, r5, #1
	adds r0, r2, #0
	cmp r2, #0
	bge _0805CB30
	adds r0, r5, #0
	adds r0, #0x20
_0805CB30:
	asrs r5, r0, #5
	lsls r0, r5, #5
	subs r5, r2, r0
	add r0, sp, #4
	strh r7, [r0]
	lsls r1, r5, #6
	adds r1, r1, r4
	ldr r2, _0805CC0C @ =0x01000020
	bl CpuSet
	adds r2, r5, #3
	adds r0, r2, #0
	cmp r2, #0
	bge _0805CB50
	adds r0, r5, #0
	adds r0, #0x22
_0805CB50:
	asrs r5, r0, #5
	lsls r0, r5, #5
	subs r5, r2, r0
	mov r0, sp
	adds r0, #6
	add r7, sp, #8
	adds r6, r0, #0
	movs r4, #2
_0805CB60:
	movs r0, #0
	strh r0, [r6]
	lsls r1, r5, #6
	ldr r0, _0805CC08 @ =0x0600E000
	adds r1, r1, r0
	adds r0, r6, #0
	ldr r2, _0805CC0C @ =0x01000020
	bl CpuSet
	adds r1, r5, #1
	adds r0, r1, #0
	cmp r1, #0
	bge _0805CB7E
	adds r0, r5, #0
	adds r0, #0x20
_0805CB7E:
	asrs r5, r0, #5
	lsls r0, r5, #5
	subs r5, r1, r0
	subs r4, #1
	cmp r4, #0
	bge _0805CB60
	movs r1, #0
	mov r8, r1
	movs r0, #1
	mov r2, sb
	strb r0, [r2]
	str r1, [sp, #8]
	ldr r6, _0805CC10 @ =0x0808F35C
	ldr r5, _0805CC00 @ =0x03001634
	ldr r0, [r5]
	movs r4, #0xbd
	lsls r4, r4, #1
	adds r0, r0, r4
	ldrh r0, [r0]
	movs r1, #5
	bl __umodsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	adds r0, r0, r6
	ldr r1, [r0]
	ldr r2, _0805CC14 @ =0x01000068
	adds r0, r7, #0
	bl CpuFastSet
	ldr r0, [r5]
	adds r2, r0, r4
	ldrh r0, [r2]
	cmp r0, #0x35
	bls _0805CBC6
	b _0805CECC
_0805CBC6:
	ldr r1, _0805CC18 @ =0x0808FAF4
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r0, [r0, #4]
	bl sub_08006828
	adds r4, r0, #0
	ldr r0, [r5]
	movs r1, #0xbd
	lsls r1, r1, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	movs r1, #5
	bl __umodsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	adds r0, r0, r6
	ldr r0, [r0]
	mov r2, r8
	str r2, [sp]
	adds r1, r4, #0
	movs r2, #2
	movs r3, #0
	bl sub_08004D94
	b _0805CECC
	.align 2, 0
_0805CC00: .4byte 0x03001634
_0805CC04: .4byte 0x0808F758
_0805CC08: .4byte 0x0600E000
_0805CC0C: .4byte 0x01000020
_0805CC10: .4byte 0x0808F35C
_0805CC14: .4byte 0x01000068
_0805CC18: .4byte 0x0808FAF4
_0805CC1C:
	lsls r1, r5, #0x10
	ldr r0, _0805CC2C @ =0x0C570000
	cmp r1, r0
	bgt _0805CC26
	b _0805CECC
_0805CC26:
	movs r0, #4
	b _0805CDB4
	.align 2, 0
_0805CC2C: .4byte 0x0C570000
_0805CC30:
	ldr r7, _0805CCB0 @ =0x03001634
	ldr r0, [r7]
	movs r2, #0xbd
	lsls r2, r2, #1
	adds r1, r0, r2
	ldrh r0, [r1]
	cmp r0, #0x35
	bhi _0805CCAA
	ldr r4, _0805CCB4 @ =0x0807F048
	ldr r0, _0805CCB8 @ =0x0808FAF4
	mov r8, r0
	ldrh r0, [r1]
	lsls r1, r0, #2
	add r1, r8
	ldr r1, [r1]
	ldr r1, [r1]
	lsls r1, r1, #3
	adds r1, r1, r4
	ldr r6, [r1]
	ldr r5, _0805CCBC @ =0x0808F348
	movs r1, #5
	bl __umodsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	adds r0, r0, r5
	ldr r1, [r0]
	adds r0, r6, #0
	bl sub_08008308
	ldr r0, [r7]
	movs r1, #0xbd
	lsls r1, r1, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r1, r0, #2
	add r1, r8
	ldr r1, [r1]
	ldr r1, [r1]
	lsls r1, r1, #3
	adds r4, #4
	adds r1, r1, r4
	ldr r5, [r1]
	ldr r4, _0805CCC0 @ =0x0808F334
	movs r1, #5
	bl __umodsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl sub_08008374
	ldr r0, [r7]
	movs r2, #0xbd
	lsls r2, r2, #1
	adds r0, r0, r2
	ldrb r0, [r0]
	bl sub_0805CF48
_0805CCAA:
	movs r0, #2
	b _0805CDB4
	.align 2, 0
_0805CCB0: .4byte 0x03001634
_0805CCB4: .4byte 0x0807F048
_0805CCB8: .4byte 0x0808FAF4
_0805CCBC: .4byte 0x0808F348
_0805CCC0: .4byte 0x0808F334
_0805CCC4:
	movs r2, #0
	mov r8, r2
	str r2, [sp, #8]
	add r4, sp, #8
	ldr r0, _0805CD6C @ =0x0808F370
	mov sl, r0
	ldr r7, _0805CD70 @ =0x03001634
	ldr r0, [r7]
	movs r6, #0xbd
	lsls r6, r6, #1
	adds r0, r0, r6
	ldrh r0, [r0]
	movs r1, #5
	bl __umodsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	add r0, sl
	ldr r1, [r0]
	ldr r2, _0805CD74 @ =0x010000B8
	adds r0, r4, #0
	bl CpuFastSet
	ldr r0, [r7]
	adds r1, r0, r6
	ldrh r0, [r1]
	cmp r0, #0x35
	bhi _0805CD84
	ldr r5, _0805CD78 @ =0x0808F76C
	adds r4, r0, #0
	movs r1, #5
	bl __umodsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	adds r0, r0, r5
	ldr r3, [r0]
	lsls r0, r4, #3
	subs r0, r0, r4
	adds r2, r0, #2
	adds r1, r2, #0
	cmp r2, #0
	bge _0805CD1E
	adds r1, r0, #0
	adds r1, #0x21
_0805CD1E:
	asrs r1, r1, #5
	lsls r1, r1, #5
	subs r1, r2, r1
	lsls r1, r1, #6
	ldr r2, _0805CD7C @ =0x0600E000
	adds r1, r1, r2
	adds r0, r3, #0
	movs r2, #0x20
	bl CpuSet
	ldr r1, _0805CD80 @ =0x0808FAF4
	ldr r0, [r7]
	adds r0, r0, r6
	ldrh r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r0, [r0, #8]
	bl sub_08006828
	adds r4, r0, #0
	ldr r0, [r7]
	adds r0, r0, r6
	ldrh r0, [r0]
	movs r1, #5
	bl __umodsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	add r0, sl
	ldr r0, [r0]
	mov r1, r8
	str r1, [sp]
	adds r1, r4, #0
	movs r2, #3
	movs r3, #0
	bl sub_08004D94
	b _0805CDB2
	.align 2, 0
_0805CD6C: .4byte 0x0808F370
_0805CD70: .4byte 0x03001634
_0805CD74: .4byte 0x010000B8
_0805CD78: .4byte 0x0808F76C
_0805CD7C: .4byte 0x0600E000
_0805CD80: .4byte 0x0808FAF4
_0805CD84:
	mov r3, sp
	adds r3, #6
	mov r2, r8
	strh r2, [r3]
	ldrh r1, [r1]
	lsls r0, r1, #3
	subs r0, r0, r1
	adds r2, r0, #2
	adds r1, r2, #0
	cmp r2, #0
	bge _0805CD9E
	adds r1, r0, #0
	adds r1, #0x21
_0805CD9E:
	asrs r1, r1, #5
	lsls r1, r1, #5
	subs r1, r2, r1
	lsls r1, r1, #6
	ldr r0, _0805CDBC @ =0x0600E000
	adds r1, r1, r0
	ldr r2, _0805CDC0 @ =0x01000020
	adds r0, r3, #0
	bl CpuSet
_0805CDB2:
	movs r0, #3
_0805CDB4:
	mov r1, sb
	strb r0, [r1]
	b _0805CECC
	.align 2, 0
_0805CDBC: .4byte 0x0600E000
_0805CDC0: .4byte 0x01000020
_0805CDC4:
	movs r2, #0
	mov r8, r2
	str r2, [sp, #0xc]
	add r4, sp, #0xc
	ldr r0, _0805CE6C @ =0x0808F384
	mov sl, r0
	ldr r7, _0805CE70 @ =0x03001634
	ldr r0, [r7]
	movs r6, #0xbd
	lsls r6, r6, #1
	adds r0, r0, r6
	ldrh r0, [r0]
	movs r1, #5
	bl __umodsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	add r0, sl
	ldr r1, [r0]
	ldr r2, _0805CE74 @ =0x010000B8
	adds r0, r4, #0
	bl CpuFastSet
	ldr r0, [r7]
	adds r1, r0, r6
	ldrh r0, [r1]
	cmp r0, #0x35
	bhi _0805CE84
	ldr r5, _0805CE78 @ =0x0808F780
	adds r4, r0, #0
	movs r1, #5
	bl __umodsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	adds r0, r0, r5
	ldr r3, [r0]
	lsls r0, r4, #3
	subs r0, r0, r4
	adds r2, r0, #3
	adds r1, r2, #0
	cmp r2, #0
	bge _0805CE1E
	adds r1, r0, #0
	adds r1, #0x22
_0805CE1E:
	asrs r1, r1, #5
	lsls r1, r1, #5
	subs r1, r2, r1
	lsls r1, r1, #6
	ldr r2, _0805CE7C @ =0x0600E000
	adds r1, r1, r2
	adds r0, r3, #0
	movs r2, #0x20
	bl CpuSet
	ldr r1, _0805CE80 @ =0x0808FAF4
	ldr r0, [r7]
	adds r0, r0, r6
	ldrh r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r0, [r0, #0xc]
	bl sub_08006828
	adds r4, r0, #0
	ldr r0, [r7]
	adds r0, r0, r6
	ldrh r0, [r0]
	movs r1, #5
	bl __umodsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	add r0, sl
	ldr r0, [r0]
	mov r1, r8
	str r1, [sp]
	adds r1, r4, #0
	movs r2, #3
	movs r3, #0
	bl sub_08004D94
	b _0805CEB2
	.align 2, 0
_0805CE6C: .4byte 0x0808F384
_0805CE70: .4byte 0x03001634
_0805CE74: .4byte 0x010000B8
_0805CE78: .4byte 0x0808F780
_0805CE7C: .4byte 0x0600E000
_0805CE80: .4byte 0x0808FAF4
_0805CE84:
	mov r3, sp
	adds r3, #6
	mov r2, r8
	strh r2, [r3]
	ldrh r1, [r1]
	lsls r0, r1, #3
	subs r0, r0, r1
	adds r2, r0, #3
	adds r1, r2, #0
	cmp r2, #0
	bge _0805CE9E
	adds r1, r0, #0
	adds r1, #0x22
_0805CE9E:
	asrs r1, r1, #5
	lsls r1, r1, #5
	subs r1, r2, r1
	lsls r1, r1, #6
	ldr r0, _0805CEC0 @ =0x0600E000
	adds r1, r1, r0
	ldr r2, _0805CEC4 @ =0x01000020
	adds r0, r3, #0
	bl CpuSet
_0805CEB2:
	movs r1, #0
	movs r0, #3
	mov r2, sb
	strh r0, [r2, #2]
	strb r1, [r2]
	b _0805CECC
	.align 2, 0
_0805CEC0: .4byte 0x0600E000
_0805CEC4: .4byte 0x01000020
_0805CEC8:
	bl sub_0805C9F8
_0805CECC:
	ldr r1, _0805CEF0 @ =0x030024E0
	ldr r0, _0805CEF4 @ =0x03001634
	ldr r0, [r0]
	movs r2, #0xbc
	lsls r2, r2, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	subs r0, #0xa0
	strh r0, [r1, #0x14]
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805CEF0: .4byte 0x030024E0
_0805CEF4: .4byte 0x03001634

	thumb_func_start sub_0805CEF8
sub_0805CEF8: @ 0x0805CEF8
	push {lr}
	bl sub_08007BD4
	adds r3, r0, #0
	ldrb r0, [r3]
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #3
	ldr r0, _0805CF30 @ =0x03001634
	ldr r0, [r0]
	movs r2, #0xbc
	lsls r2, r2, #1
	adds r0, r0, r2
	movs r2, #0
	ldrsh r0, [r0, r2]
	subs r0, #0xa0
	subs r2, r1, r0
	movs r0, #0x20
	rsbs r0, r0, #0
	cmp r2, r0
	bge _0805CF34
	ldr r0, [r3, #4]
	bl sub_08009A00
	bl sub_08007A64
	b _0805CF42
	.align 2, 0
_0805CF30: .4byte 0x03001634
_0805CF34:
	ldr r0, [r3, #4]
	movs r3, #6
	ldrsh r1, [r0, r3]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl sub_08009A70
_0805CF42:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0805CF48
sub_0805CF48: @ 0x0805CF48
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _0805CFF0 @ =sub_0805CEF8
	movs r1, #0x42
	movs r2, #0
	bl sub_08007968
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl sub_08007BBC
	mov r8, r0
	strb r4, [r0]
	movs r0, #1
	movs r1, #0xff
	bl sub_080099E0
	adds r5, r0, #0
	movs r1, #1
	bl sub_08009A34
	mov r1, r8
	ldrb r0, [r1]
	lsls r2, r0, #3
	subs r2, r2, r0
	lsls r2, r2, #3
	ldr r0, _0805CFF4 @ =0x03001634
	ldr r0, [r0]
	movs r1, #0xbc
	lsls r1, r1, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	subs r0, #0xa0
	subs r2, r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r5, #0
	movs r1, #8
	bl sub_08009A70
	adds r0, r5, #0
	movs r1, #1
	bl sub_08009B6C
	ldr r6, _0805CFF8 @ =0x0808F334
	adds r0, r4, #0
	movs r1, #5
	bl __umodsi3
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	lsls r0, r4, #2
	adds r0, r0, r6
	ldr r1, [r0]
	adds r0, r5, #0
	bl sub_08009A78
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08009AB4
	ldr r2, _0805CFFC @ =0x0814348C
	adds r0, r5, #0
	movs r1, #0
	movs r3, #0
	bl sub_08009ACC
	adds r0, r5, #0
	movs r1, #0
	bl sub_08009B40
	mov r0, r8
	str r5, [r0, #4]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805CFF0: .4byte sub_0805CEF8
_0805CFF4: .4byte 0x03001634
_0805CFF8: .4byte 0x0808F334
_0805CFFC: .4byte 0x0814348C

	thumb_func_start sub_0805D000
sub_0805D000: @ 0x0805D000
	push {r4, lr}
	ldr r4, _0805D018 @ =0x030044B0
	movs r0, #0
	strb r0, [r4, #0x10]
	movs r0, #6
	bl sub_0800B828
	strb r0, [r4, #0x11]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805D018: .4byte 0x030044B0

	thumb_func_start sub_0805D01C
sub_0805D01C: @ 0x0805D01C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0xc
	movs r4, #0
	str r4, [sp, #4]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	ldr r2, _0805D074 @ =0x01006000
	add r0, sp, #4
	bl CpuFastSet
	ldr r0, _0805D078 @ =0x030024E0
	movs r1, #0xf2
	lsls r1, r1, #5
	strh r1, [r0]
	ldr r1, _0805D07C @ =0x00005C05
	strh r1, [r0, #4]
	ldr r1, _0805D080 @ =0x00005E02
	strh r1, [r0, #6]
	ldr r1, _0805D084 @ =0x00001B03
	strh r1, [r0, #8]
	strh r4, [r0, #0x12]
	strh r4, [r0, #0xa]
	strh r4, [r0, #0x14]
	strh r4, [r0, #0xc]
	strh r4, [r0, #0x16]
	strh r4, [r0, #0xe]
	strh r4, [r0, #0x18]
	strh r4, [r0, #0x10]
	ldr r0, _0805D088 @ =0x03004400
	ldrb r0, [r0, #0xa]
	add r1, sp, #8
	mov r8, r1
	cmp r0, #0x11
	beq _0805D0E6
	bl sub_0805D000
	movs r5, #0
	ldr r4, _0805D08C @ =0x030044B0
_0805D06C:
	cmp r5, #9
	bgt _0805D090
	strb r5, [r4]
	b _0805D0B6
	.align 2, 0
_0805D074: .4byte 0x01006000
_0805D078: .4byte 0x030024E0
_0805D07C: .4byte 0x00005C05
_0805D080: .4byte 0x00005E02
_0805D084: .4byte 0x00001B03
_0805D088: .4byte 0x03004400
_0805D08C: .4byte 0x030044B0
_0805D090:
	movs r0, #0xa
	bl sub_0800B828
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #2
	bne _0805D0B4
	movs r0, #9
	bl sub_0800B828
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r0, #3
	movs r1, #0xa
	bl __modsi3
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
_0805D0B4:
	strb r2, [r4]
_0805D0B6:
	adds r4, #1
	adds r5, #1
	cmp r5, #0xf
	ble _0805D06C
	movs r7, #0xf
	ldr r6, _0805D138 @ =0x030044B0
	movs r5, #0xf
_0805D0C4:
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
	bge _0805D0C4
_0805D0E6:
	ldr r4, _0805D13C @ =0x030044A0
	movs r0, #0x7c
	bl sub_08007CE8
	adds r1, r0, #0
	str r1, [r4]
	movs r0, #0
	mov r2, r8
	strh r0, [r2]
	ldr r2, _0805D140 @ =0x0100003E
	mov r0, r8
	bl CpuSet
	movs r1, #0x80
	lsls r1, r1, #3
	movs r0, #0
	bl sub_08006BE8
	bl sub_08003F9C
	movs r0, #0x80
	lsls r0, r0, #1
	str r0, [sp]
	movs r0, #2
	movs r1, #0x1a
	movs r2, #0xa
	movs r3, #0
	bl sub_08004028
	bl sub_080057C0
	movs r0, #3
	bl sub_08005A88
	add sp, #0xc
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805D138: .4byte 0x030044B0
_0805D13C: .4byte 0x030044A0
_0805D140: .4byte 0x0100003E

	thumb_func_start sub_0805D144
sub_0805D144: @ 0x0805D144
	push {r4, lr}
	bl sub_0800580C
	bl sub_08003FE4
	ldr r4, _0805D164 @ =0x030044A0
	ldr r0, [r4]
	cmp r0, #0
	beq _0805D15E
	bl sub_08007CF8
	movs r0, #0
	str r0, [r4]
_0805D15E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805D164: .4byte 0x030044A0

	thumb_func_start sub_0805D168
sub_0805D168: @ 0x0805D168
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	ldr r0, _0805D288 @ =0x08149F88
	movs r1, #0xa0
	lsls r1, r1, #0x13
	bl sub_08008308
	ldr r0, _0805D28C @ =0x0814A464
	movs r1, #0xc0
	lsls r1, r1, #0x13
	bl sub_08008374
	ldr r0, _0805D290 @ =0x0814A0C0
	ldr r1, _0805D294 @ =0x0600D800
	movs r2, #0
	movs r3, #0
	bl sub_080083CC
	ldr r0, _0805D298 @ =0x0814A010
	ldr r1, _0805D29C @ =0x0600F000
	movs r2, #0
	movs r3, #0
	bl sub_080083CC
	movs r6, #0
	ldr r7, _0805D2A0 @ =0x0808FBFC
	mov r8, r7
_0805D1A2:
	lsls r0, r6, #4
	mov r1, r8
	adds r1, #4
	adds r0, r0, r1
	ldr r4, [r0]
	adds r0, r4, #0
	bl sub_08006C14
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r0, [r7]
	ldr r1, _0805D2A4 @ =0x0808FC3C
	adds r1, r6, r1
	ldrb r1, [r1]
	lsls r1, r1, #5
	ldr r2, _0805D2A8 @ =0x05000200
	adds r1, r1, r2
	bl sub_08008308
	lsls r1, r5, #5
	ldr r0, _0805D2AC @ =0x06010000
	adds r1, r1, r0
	adds r0, r4, #0
	bl sub_08008374
	ldr r0, _0805D2B0 @ =0x030044A0
	ldr r0, [r0]
	lsls r1, r6, #1
	adds r0, r0, r1
	strh r5, [r0]
	adds r7, #0x10
	adds r6, #1
	cmp r6, #3
	ble _0805D1A2
	ldr r1, _0805D2B4 @ =0x030024E0
	movs r0, #0xb8
	strh r0, [r1, #0xe]
	ldr r0, _0805D2B8 @ =0x0000FFE8
	strh r0, [r1, #0x16]
	movs r0, #0xa8
	strh r0, [r1, #0xc]
	ldr r0, _0805D2BC @ =0x0000FFF8
	strh r0, [r1, #0x14]
	movs r0, #0xe
	bl sub_080040EC
	movs r6, #0
	movs r1, #0xe0
	lsls r1, r1, #8
	mov r8, r1
	ldr r2, _0805D2C0 @ =0xFFFFE000
	adds r7, r2, #0
_0805D20A:
	lsrs r0, r6, #0x1f
	adds r0, r6, r0
	asrs r0, r0, #1
	lsls r1, r0, #6
	adds r1, #1
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	lsls r0, r0, #1
	subs r0, r6, r0
	lsls r0, r0, #4
	adds r0, r5, r0
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r1, _0805D2C4 @ =0x0808FC5C
	ldr r0, _0805D2C8 @ =0x030044B0
	adds r0, r6, r0
	ldrb r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bl sub_08001980
	adds r1, r0, #0
	lsls r0, r5, #5
	ldr r2, _0805D2CC @ =0x06004000
	adds r0, r0, r2
	movs r2, #1
	str r2, [sp]
	movs r2, #2
	movs r3, #0
	bl sub_08004D94
	lsls r0, r6, #7
	ldr r1, _0805D2D0 @ =0x0600E000
	adds r2, r0, r1
	adds r4, r6, #1
	movs r3, #0xb
_0805D252:
	adds r0, r5, #0
	mov r1, r8
	orrs r0, r1
	strh r0, [r2]
	adds r1, r2, #0
	adds r1, #0x40
	adds r0, r5, #0
	adds r0, #0x20
	orrs r0, r7
	strh r0, [r1]
	adds r2, #2
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	subs r3, #1
	cmp r3, #0
	bge _0805D252
	adds r6, r4, #0
	cmp r6, #0xf
	ble _0805D20A
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805D288: .4byte 0x08149F88
_0805D28C: .4byte 0x0814A464
_0805D290: .4byte 0x0814A0C0
_0805D294: .4byte 0x0600D800
_0805D298: .4byte 0x0814A010
_0805D29C: .4byte 0x0600F000
_0805D2A0: .4byte 0x0808FBFC
_0805D2A4: .4byte 0x0808FC3C
_0805D2A8: .4byte 0x05000200
_0805D2AC: .4byte 0x06010000
_0805D2B0: .4byte 0x030044A0
_0805D2B4: .4byte 0x030024E0
_0805D2B8: .4byte 0x0000FFE8
_0805D2BC: .4byte 0x0000FFF8
_0805D2C0: .4byte 0xFFFFE000
_0805D2C4: .4byte 0x0808FC5C
_0805D2C8: .4byte 0x030044B0
_0805D2CC: .4byte 0x06004000
_0805D2D0: .4byte 0x0600E000

	thumb_func_start sub_0805D2D4
sub_0805D2D4: @ 0x0805D2D4
	push {r4, r5, lr}
	ldr r0, _0805D2F0 @ =0x0808FBFC
	adds r5, r0, #4
	movs r4, #3
_0805D2DC:
	ldr r0, [r5]
	bl sub_08006CA0
	adds r5, #0x10
	subs r4, #1
	cmp r4, #0
	bge _0805D2DC
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805D2F0: .4byte 0x0808FBFC

	thumb_func_start sub_0805D2F4
sub_0805D2F4: @ 0x0805D2F4
	push {r4, r5, r6, lr}
	adds r6, r1, #0
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #8
	bne _0805D304
	movs r1, #0x18
	b _0805D314
_0805D304:
	adds r0, r5, #0
	subs r0, #0xb
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0x10
	cmp r0, #1
	bhi _0805D314
	movs r1, #0x20
_0805D314:
	movs r0, #1
	bl sub_080099E0
	adds r4, r0, #0
	ldr r0, _0805D364 @ =0x030044A0
	ldr r0, [r0]
	ldrh r1, [r0, #2]
	lsls r1, r1, #5
	ldr r0, _0805D368 @ =0x06010000
	adds r1, r1, r0
	adds r0, r4, #0
	bl sub_08009A78
	ldr r0, _0805D36C @ =0x0808FC3C
	ldrb r1, [r0, #1]
	adds r0, r4, #0
	bl sub_08009AB4
	ldr r0, _0805D370 @ =0x0808FBFC
	ldr r2, [r0, #0x18]
	adds r0, r4, #0
	movs r1, #0
	adds r3, r5, #0
	bl sub_08009ACC
	movs r0, #0
	ldrsh r1, [r6, r0]
	movs r0, #2
	ldrsh r2, [r6, r0]
	adds r0, r4, #0
	bl sub_08009A70
	adds r0, r4, #0
	movs r1, #1
	bl sub_08009A34
	adds r0, r4, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0805D364: .4byte 0x030044A0
_0805D368: .4byte 0x06010000
_0805D36C: .4byte 0x0808FC3C
_0805D370: .4byte 0x0808FBFC

	thumb_func_start sub_0805D374
sub_0805D374: @ 0x0805D374
	push {lr}
	lsls r3, r1, #0x18
	lsrs r3, r3, #0x18
	ldr r1, _0805D388 @ =0x0808FBFC
	ldr r2, [r1, #0x18]
	movs r1, #0
	bl sub_08009ACC
	pop {r0}
	bx r0
	.align 2, 0
_0805D388: .4byte 0x0808FBFC

	thumb_func_start sub_0805D38C
sub_0805D38C: @ 0x0805D38C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	ldr r1, _0805D4CC @ =0x0808FC66
	mov r0, sp
	movs r2, #3
	bl memcpy
	ldr r4, _0805D4D0 @ =0x0808FC40
	movs r0, #0
	adds r1, r4, #0
	bl sub_0805D2F4
	ldr r5, _0805D4D4 @ =0x030044A0
	ldr r1, [r5]
	str r0, [r1, #8]
	adds r1, r4, #4
	movs r0, #0xd
	bl sub_0805D2F4
	ldr r1, [r5]
	str r0, [r1, #0xc]
	adds r1, r4, #0
	adds r1, #8
	movs r0, #0xe
	bl sub_0805D2F4
	ldr r1, [r5]
	str r0, [r1, #0x10]
	adds r4, #0xc
	movs r0, #7
	adds r1, r4, #0
	bl sub_0805D2F4
	ldr r1, [r5]
	str r0, [r1, #0x14]
	movs r6, #0
	add r7, sp, #4
_0805D3DA:
	movs r0, #0xf
	cmp r6, #0
	bne _0805D3E2
	movs r0, #6
_0805D3E2:
	lsls r4, r6, #2
	ldr r1, _0805D4D8 @ =0x0808FC50
	adds r1, r4, r1
	bl sub_0805D2F4
	ldr r1, [r5]
	adds r1, #0x18
	adds r1, r1, r4
	str r0, [r1]
	bl sub_08009DDC
	ldr r1, [r5]
	adds r1, #0x24
	adds r1, r1, r4
	str r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r2, #0
	bl sub_08009E84
	ldr r0, [r5]
	adds r0, #0x24
	adds r0, r0, r4
	ldr r0, [r0]
	mov r2, sp
	adds r1, r2, r6
	ldrb r1, [r1]
	bl sub_08009E9C
	ldr r1, [r5]
	adds r0, r1, #0
	adds r0, #0x18
	adds r0, r0, r4
	ldr r0, [r0]
	adds r1, #0x24
	adds r1, r1, r4
	ldr r1, [r1]
	bl sub_08009B9C
	adds r6, #1
	cmp r6, #2
	ble _0805D3DA
	ldr r2, _0805D4DC @ =0xFFFF0000
	ldr r1, _0805D4E0 @ =0x00500078
	str r1, [sp, #4]
	ldrh r0, [r7]
	subs r0, #0xf0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ands r1, r2
	orrs r1, r0
	str r1, [sp, #4]
	add r4, sp, #4
	movs r0, #9
	adds r1, r4, #0
	bl sub_0805D2F4
	ldr r2, _0805D4D4 @ =0x030044A0
	ldr r1, [r2]
	str r0, [r1, #0x34]
	movs r6, #0
	mov r8, r4
	adds r5, r2, #0
_0805D460:
	adds r0, r6, #0
	movs r1, #3
	bl __modsi3
	adds r0, #1
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #2
	strh r1, [r7]
	movs r1, #0x70
	cmp r6, #2
	bgt _0805D47A
	movs r1, #0x30
_0805D47A:
	adds r0, r7, #0
	strh r1, [r0, #2]
	mov r1, r8
	ldrh r0, [r1]
	adds r0, #0xf0
	strh r0, [r1]
	ldr r0, _0805D4E4 @ =0x030044B0
	ldrb r1, [r0, #0x10]
	asrs r1, r6
	movs r0, #1
	ands r1, r0
	movs r0, #0xb
	cmp r1, #0
	beq _0805D498
	movs r0, #0xc
_0805D498:
	adds r1, r7, #0
	bl sub_0805D2F4
	ldr r1, [r5]
	lsls r4, r6, #2
	adds r1, #0x3c
	adds r1, r1, r4
	str r0, [r1]
	movs r0, #0xa
	adds r1, r7, #0
	bl sub_0805D2F4
	ldr r1, [r5]
	adds r1, #0x54
	adds r1, r1, r4
	str r0, [r1]
	adds r6, #1
	cmp r6, #5
	ble _0805D460
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805D4CC: .4byte 0x0808FC66
_0805D4D0: .4byte 0x0808FC40
_0805D4D4: .4byte 0x030044A0
_0805D4D8: .4byte 0x0808FC50
_0805D4DC: .4byte 0xFFFF0000
_0805D4E0: .4byte 0x00500078
_0805D4E4: .4byte 0x030044B0

	thumb_func_start sub_0805D4E8
sub_0805D4E8: @ 0x0805D4E8
	push {r4, r5, r6, lr}
	ldr r4, _0805D574 @ =0x030044A0
	ldr r0, [r4]
	ldr r0, [r0, #8]
	bl sub_08009A00
	ldr r0, [r4]
	ldr r0, [r0, #0xc]
	bl sub_08009A00
	ldr r0, [r4]
	ldr r0, [r0, #0x10]
	bl sub_08009A00
	ldr r0, [r4]
	ldr r0, [r0, #0x14]
	bl sub_08009A00
	movs r5, #0
	adds r6, r4, #0
_0805D510:
	ldr r0, [r6]
	lsls r4, r5, #2
	adds r0, #0x18
	adds r0, r0, r4
	ldr r0, [r0]
	movs r1, #0
	bl sub_08009B9C
	ldr r0, [r6]
	adds r0, #0x18
	adds r0, r0, r4
	ldr r0, [r0]
	bl sub_08009A00
	ldr r0, [r6]
	adds r0, #0x24
	adds r0, r0, r4
	ldr r0, [r0]
	bl sub_08009E54
	adds r5, #1
	cmp r5, #2
	ble _0805D510
	ldr r4, _0805D574 @ =0x030044A0
	ldr r0, [r4]
	ldr r0, [r0, #0x34]
	bl sub_08009A00
	movs r5, #0
	adds r6, r4, #0
_0805D54C:
	ldr r0, [r6]
	lsls r4, r5, #2
	adds r0, #0x3c
	adds r0, r0, r4
	ldr r0, [r0]
	bl sub_08009A00
	ldr r0, [r6]
	adds r0, #0x54
	adds r0, r0, r4
	ldr r0, [r0]
	bl sub_08009A00
	adds r5, #1
	cmp r5, #5
	ble _0805D54C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805D574: .4byte 0x030044A0

	thumb_func_start sub_0805D578
sub_0805D578: @ 0x0805D578
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	movs r1, #0
	str r1, [sp]
	lsls r0, r0, #0x18
	movs r1, #0x10
	cmp r0, #0
	bne _0805D592
	ldr r1, _0805D668 @ =0x0000FFF0
_0805D592:
	lsls r1, r1, #0x10
	mov sl, r1
	mov r2, sl
	asrs r2, r2, #0x10
	mov r8, r2
	ldr r4, _0805D66C @ =0x030024E0
	mov sb, r4
	mov r6, sb
_0805D5A2:
	ldr r0, _0805D670 @ =0x030044A0
	ldr r2, [r0]
	ldr r1, [r2, #8]
	ldrh r0, [r1, #6]
	add r0, r8
	strh r0, [r1, #6]
	ldr r1, [r2, #0xc]
	ldrh r0, [r1, #6]
	add r0, r8
	strh r0, [r1, #6]
	ldr r1, [r2, #0x10]
	ldrh r0, [r1, #6]
	add r0, r8
	strh r0, [r1, #6]
	ldr r1, [r2, #0x14]
	ldrh r0, [r1, #6]
	add r0, r8
	strh r0, [r1, #6]
	movs r4, #0
	mov r1, sl
	asrs r2, r1, #0x10
_0805D5CC:
	ldr r1, _0805D670 @ =0x030044A0
	ldr r0, [r1]
	lsls r1, r4, #2
	adds r0, #0x18
	adds r0, r0, r1
	ldr r1, [r0]
	ldrh r0, [r1, #6]
	adds r0, r2, r0
	strh r0, [r1, #6]
	adds r4, #1
	cmp r4, #2
	ble _0805D5CC
	ldr r2, _0805D670 @ =0x030044A0
	ldr r4, [r2]
	ldr r1, [r4, #0x34]
	ldrh r0, [r1, #6]
	add r0, r8
	movs r5, #0
	strh r0, [r1, #6]
	ldr r0, [r4, #0x34]
	ldrh r3, [r0, #6]
	adds r0, r3, #0
	adds r0, #0x78
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xf0
	bhi _0805D67C
	adds r2, r6, #0
	movs r1, #0x40
	subs r1, r1, r3
	strh r1, [r2, #0xe]
	ldr r0, _0805D674 @ =0x0000FFE8
	strh r0, [r2, #0x16]
	subs r1, #0x10
	strh r1, [r2, #0xc]
	adds r0, #0x10
	strh r0, [r2, #0x14]
	ldr r0, [r4, #0x34]
	ldrh r0, [r0, #6]
	adds r1, r0, #0
	subs r1, #0x30
	lsls r1, r1, #0x10
	adds r0, #0x30
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	lsrs r3, r1, #0x10
	cmp r1, #0
	bge _0805D62E
	movs r3, #0
_0805D62E:
	lsls r0, r2, #0x10
	cmp r0, #0
	bge _0805D636
	movs r2, #1
_0805D636:
	ldrh r0, [r6]
	movs r4, #0x80
	lsls r4, r4, #6
	adds r1, r4, #0
	orrs r0, r1
	strh r0, [r6]
	adds r1, r6, #0
	adds r1, #0x44
	movs r0, #0x3f
	strb r0, [r1]
	adds r1, #2
	movs r0, #0x1d
	strb r0, [r1]
	lsls r1, r3, #0x10
	asrs r1, r1, #8
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	orrs r0, r1
	strh r0, [r6, #0x3c]
	adds r1, r6, #0
	adds r1, #0x40
	ldr r0, _0805D678 @ =0x00002878
	strh r0, [r1]
	b _0805D694
	.align 2, 0
_0805D668: .4byte 0x0000FFF0
_0805D66C: .4byte 0x030024E0
_0805D670: .4byte 0x030044A0
_0805D674: .4byte 0x0000FFE8
_0805D678: .4byte 0x00002878
_0805D67C:
	mov r1, sb
	ldrh r0, [r1]
	ldr r2, _0805D6D4 @ =0x0000DFFF
	adds r1, r2, #0
	ands r0, r1
	mov r4, sb
	strh r0, [r4]
	mov r0, sb
	adds r0, #0x44
	strb r5, [r0]
	adds r0, #2
	strb r5, [r0]
_0805D694:
	movs r4, #0
	ldr r7, _0805D6D8 @ =0x030044A0
	mov r0, sl
	asrs r5, r0, #0x10
_0805D69C:
	ldr r2, [r7]
	lsls r3, r4, #2
	adds r0, r2, #0
	adds r0, #0x3c
	adds r0, r0, r3
	ldr r1, [r0]
	ldrh r0, [r1, #6]
	adds r0, r5, r0
	strh r0, [r1, #6]
	adds r2, #0x54
	adds r2, r2, r3
	ldr r1, [r2]
	ldrh r0, [r1, #6]
	adds r0, r5, r0
	strh r0, [r1, #6]
	adds r4, #1
	cmp r4, #5
	ble _0805D69C
	mov r2, sl
	asrs r1, r2, #0x10
	cmp r1, #0
	bge _0805D6DC
	ldr r4, [sp]
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	b _0805D6E4
	.align 2, 0
_0805D6D4: .4byte 0x0000DFFF
_0805D6D8: .4byte 0x030044A0
_0805D6DC:
	ldr r2, [sp]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
_0805D6E4:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r4, [sp]
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xef
	bgt _0805D6FC
	movs r0, #1
	bl sub_08002B98
	b _0805D5A2
_0805D6FC:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0805D70C
sub_0805D70C: @ 0x0805D70C
	push {r4, r5, lr}
	movs r4, #0
	ldr r5, _0805D730 @ =0x030044A0
_0805D712:
	ldr r0, [r5]
	lsls r1, r4, #2
	adds r0, #0x3c
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0xb
	bl sub_0805D374
	adds r4, #1
	cmp r4, #5
	ble _0805D712
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805D730: .4byte 0x030044A0

	thumb_func_start sub_0805D734
sub_0805D734: @ 0x0805D734
	push {r4, r5, lr}
	ldr r5, _0805D790 @ =0x030044A0
	ldr r0, [r5]
	ldr r0, [r0, #0x74]
	cmp r0, #0
	bne _0805D78A
	movs r0, #1
	movs r1, #8
	bl sub_080099E0
	adds r4, r0, #0
	ldr r0, [r5]
	ldrh r1, [r0]
	lsls r1, r1, #5
	ldr r0, _0805D794 @ =0x06010000
	adds r1, r1, r0
	adds r0, r4, #0
	bl sub_08009A78
	ldr r0, _0805D798 @ =0x0808FC3C
	ldrb r1, [r0]
	adds r0, r4, #0
	bl sub_08009AB4
	ldr r0, _0805D79C @ =0x0808FBFC
	ldr r2, [r0, #8]
	adds r0, r4, #0
	movs r1, #0
	movs r3, #0
	bl sub_08009ACC
	movs r2, #0x80
	rsbs r2, r2, #0
	adds r0, r4, #0
	movs r1, #0
	bl sub_08009A70
	adds r0, r4, #0
	movs r1, #1
	bl sub_08009A34
	ldr r0, [r5]
	str r4, [r0, #0x74]
_0805D78A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805D790: .4byte 0x030044A0
_0805D794: .4byte 0x06010000
_0805D798: .4byte 0x0808FC3C
_0805D79C: .4byte 0x0808FBFC

	thumb_func_start sub_0805D7A0
sub_0805D7A0: @ 0x0805D7A0
	push {r4, lr}
	ldr r4, _0805D7BC @ =0x030044A0
	ldr r0, [r4]
	ldr r0, [r0, #0x74]
	cmp r0, #0
	beq _0805D7B6
	bl sub_08009A00
	ldr r1, [r4]
	movs r0, #0
	str r0, [r1, #0x74]
_0805D7B6:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805D7BC: .4byte 0x030044A0

	thumb_func_start sub_0805D7C0
sub_0805D7C0: @ 0x0805D7C0
	push {r4, lr}
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	ldr r0, _0805D7F0 @ =0x030044A0
	ldr r0, [r0]
	ldr r3, [r0, #0x74]
	cmp r3, #0
	beq _0805D7EA
	lsls r1, r1, #2
	adds r0, #0x54
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	subs r1, #0x18
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r4, #8
	ldrsh r2, [r0, r4]
	adds r0, r3, #0
	bl sub_08009A70
_0805D7EA:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805D7F0: .4byte 0x030044A0

	thumb_func_start sub_0805D7F4
sub_0805D7F4: @ 0x0805D7F4
	push {r4, lr}
	adds r1, r0, #0
	ldr r4, _0805D814 @ =0x030044A0
	ldr r0, [r4]
	ldr r0, [r0, #0x6c]
	cmp r0, #0
	bne _0805D80C
	movs r0, #8
	bl sub_0805D2F4
	ldr r1, [r4]
	str r0, [r1, #0x6c]
_0805D80C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805D814: .4byte 0x030044A0

	thumb_func_start sub_0805D818
sub_0805D818: @ 0x0805D818
	push {r4, lr}
	ldr r4, _0805D834 @ =0x030044A0
	ldr r0, [r4]
	ldr r0, [r0, #0x6c]
	cmp r0, #0
	beq _0805D82E
	bl sub_08009A00
	ldr r1, [r4]
	movs r0, #0
	str r0, [r1, #0x6c]
_0805D82E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805D834: .4byte 0x030044A0

	thumb_func_start sub_0805D838
sub_0805D838: @ 0x0805D838
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	lsls r4, r4, #0x18
	ldr r5, _0805D8B4 @ =0x030044A0
	ldr r0, [r5]
	lsrs r4, r4, #0x16
	adds r0, #0x3c
	adds r0, r0, r4
	ldr r0, [r0]
	movs r1, #0xc
	bl sub_0805D374
	ldr r1, [r5]
	adds r1, #0x54
	adds r1, r1, r4
	ldr r0, [r1]
	ldrh r3, [r0, #6]
	ldr r2, _0805D8B8 @ =0xFFFF0000
	ldr r0, [sp]
	ands r0, r2
	orrs r0, r3
	str r0, [sp]
	ldr r1, [r1]
	ldrh r1, [r1, #8]
	adds r1, #8
	lsls r1, r1, #0x10
	ldr r2, _0805D8BC @ =0x0000FFFF
	ands r0, r2
	orrs r0, r1
	str r0, [sp]
	movs r5, #0
	mov r0, sp
	bl sub_0805D7F4
	mov r4, sp
_0805D880:
	ldrh r0, [r4, #2]
	subs r0, #4
	strh r0, [r4, #2]
	lsls r0, r5, #0x10
	movs r1, #0x80
	lsls r1, r1, #0xb
	adds r0, r0, r1
	lsrs r5, r0, #0x10
	ldr r0, _0805D8B4 @ =0x030044A0
	ldr r0, [r0]
	ldr r0, [r0, #0x6c]
	movs r2, #0
	ldrsh r1, [r4, r2]
	movs r3, #2
	ldrsh r2, [r4, r3]
	bl sub_08009A70
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x1f
	bgt _0805D8C0
	movs r0, #1
	bl sub_08002B98
	b _0805D880
	.align 2, 0
_0805D8B4: .4byte 0x030044A0
_0805D8B8: .4byte 0xFFFF0000
_0805D8BC: .4byte 0x0000FFFF
_0805D8C0:
	movs r0, #0x3c
	bl sub_08002B98
	bl sub_0805D818
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0805D8D4
sub_0805D8D4: @ 0x0805D8D4
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r5, _0805D934 @ =0x030044A0
	ldr r0, [r5]
	ldr r0, [r0, #0x70]
	cmp r0, #0
	bne _0805D92E
	movs r0, #1
	movs r1, #0x18
	bl sub_080099E0
	adds r4, r0, #0
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	lsls r1, r1, #5
	ldr r0, _0805D938 @ =0x06010000
	adds r1, r1, r0
	adds r0, r4, #0
	bl sub_08009A78
	ldr r0, _0805D93C @ =0x0808FC3C
	ldrb r1, [r0, #3]
	adds r0, r4, #0
	bl sub_08009AB4
	ldr r0, _0805D940 @ =0x0808FBFC
	ldr r1, [r0, #0x3c]
	ldr r2, [r0, #0x38]
	adds r0, r4, #0
	movs r3, #0
	bl sub_08009ACC
	movs r0, #0
	ldrsh r1, [r6, r0]
	movs r0, #2
	ldrsh r2, [r6, r0]
	adds r0, r4, #0
	bl sub_08009A70
	adds r0, r4, #0
	movs r1, #1
	bl sub_08009A34
	ldr r0, [r5]
	str r4, [r0, #0x70]
_0805D92E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805D934: .4byte 0x030044A0
_0805D938: .4byte 0x06010000
_0805D93C: .4byte 0x0808FC3C
_0805D940: .4byte 0x0808FBFC

	thumb_func_start sub_0805D944
sub_0805D944: @ 0x0805D944
	push {r4, lr}
	ldr r4, _0805D960 @ =0x030044A0
	ldr r0, [r4]
	ldr r0, [r0, #0x70]
	cmp r0, #0
	beq _0805D95A
	bl sub_08009A00
	ldr r1, [r4]
	movs r0, #0
	str r0, [r1, #0x70]
_0805D95A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805D960: .4byte 0x030044A0

	thumb_func_start sub_0805D964
sub_0805D964: @ 0x0805D964
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	lsls r4, r4, #0x18
	ldr r5, _0805D9DC @ =0x030044A0
	ldr r0, [r5]
	lsrs r4, r4, #0x16
	adds r0, #0x3c
	adds r0, r0, r4
	ldr r0, [r0]
	movs r1, #0xc
	bl sub_0805D374
	ldr r1, [r5]
	adds r1, #0x54
	adds r1, r1, r4
	ldr r0, [r1]
	ldrh r3, [r0, #6]
	ldr r2, _0805D9E0 @ =0xFFFF0000
	ldr r0, [sp]
	ands r0, r2
	orrs r0, r3
	str r0, [sp]
	ldr r1, [r1]
	ldrh r1, [r1, #8]
	adds r1, #8
	lsls r1, r1, #0x10
	ldr r2, _0805D9E4 @ =0x0000FFFF
	ands r0, r2
	orrs r0, r1
	str r0, [sp]
	movs r6, #0
	mov r0, sp
	bl sub_0805D8D4
	mov r4, sp
_0805D9AC:
	ldrh r0, [r4, #2]
	subs r0, #4
	strh r0, [r4, #2]
	lsls r0, r6, #0x10
	movs r1, #0x80
	lsls r1, r1, #0xb
	adds r0, r0, r1
	lsrs r6, r0, #0x10
	ldr r0, [r5]
	ldr r0, [r0, #0x70]
	movs r2, #0
	ldrsh r1, [r4, r2]
	movs r3, #2
	ldrsh r2, [r4, r3]
	bl sub_08009A70
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x17
	bgt _0805D9E8
	movs r0, #1
	bl sub_08002B98
	b _0805D9AC
	.align 2, 0
_0805D9DC: .4byte 0x030044A0
_0805D9E0: .4byte 0xFFFF0000
_0805D9E4: .4byte 0x0000FFFF
_0805D9E8:
	bl sub_0805D7A0
	ldr r1, [r5]
	ldr r0, _0805DA44 @ =0x08149FFC
	str r0, [r1, #0x78]
	movs r1, #0
	bl sub_08009554
	movs r0, #0x3c
	bl sub_08002B98
	ldr r2, _0805DA48 @ =0x030024B0
	ldrh r1, [r2]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0805DA1E
	adds r4, r2, #0
	movs r5, #2
_0805DA0E:
	movs r0, #1
	bl sub_08002B98
	ldrh r1, [r4]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _0805DA0E
_0805DA1E:
	ldr r4, _0805DA4C @ =0x030044A0
	ldr r0, [r4]
	ldr r0, [r0, #0x78]
	bl sub_080095E0
	ldr r1, [r4]
	movs r0, #0
	str r0, [r1, #0x78]
	ldr r0, _0805DA50 @ =0x08149F88
	movs r1, #0xa0
	lsls r1, r1, #0x13
	bl sub_08008308
	bl sub_0805D944
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805DA44: .4byte 0x08149FFC
_0805DA48: .4byte 0x030024B0
_0805DA4C: .4byte 0x030044A0
_0805DA50: .4byte 0x08149F88

	thumb_func_start sub_0805DA54
sub_0805DA54: @ 0x0805DA54
	push {lr}
	ldr r0, _0805DA70 @ =0x030044A0
	ldr r1, [r0]
	ldr r0, [r1, #0x30]
	cmp r0, #0
	bne _0805DA6A
	ldr r0, _0805DA74 @ =0x0814A874
	str r0, [r1, #0x30]
	ldr r1, _0805DA78 @ =0x00000117
	bl sub_08009554
_0805DA6A:
	pop {r0}
	bx r0
	.align 2, 0
_0805DA70: .4byte 0x030044A0
_0805DA74: .4byte 0x0814A874
_0805DA78: .4byte 0x00000117

	thumb_func_start sub_0805DA7C
sub_0805DA7C: @ 0x0805DA7C
	push {r4, lr}
	ldr r4, _0805DA98 @ =0x030044A0
	ldr r0, [r4]
	ldr r0, [r0, #0x30]
	cmp r0, #0
	beq _0805DA92
	bl sub_080095E0
	ldr r1, [r4]
	movs r0, #0
	str r0, [r1, #0x30]
_0805DA92:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805DA98: .4byte 0x030044A0

	thumb_func_start sub_0805DA9C
sub_0805DA9C: @ 0x0805DA9C
	push {r4, r5, r6, r7, lr}
	ldr r2, _0805DB00 @ =0x030024E0
	ldrh r1, [r2, #0x14]
	movs r0, #0xf0
	ands r0, r1
	lsls r0, r0, #0x14
	movs r1, #0x80
	lsls r1, r1, #0x14
	adds r0, r0, r1
	lsrs r3, r0, #0x18
	movs r4, #0
	adds r6, r2, #0
	movs r0, #0xf
	mov ip, r0
	movs r5, #0
	ldr r7, _0805DB04 @ =0x0600E000
_0805DABC:
	adds r0, r3, #0
	mov r1, ip
	ands r0, r1
	lsls r0, r0, #7
	adds r1, r0, r7
	adds r4, #1
	adds r2, r3, #1
	movs r3, #0xf
_0805DACC:
	strh r5, [r1]
	adds r0, r1, #0
	adds r0, #0x40
	strh r5, [r0]
	adds r1, #2
	subs r3, #1
	cmp r3, #0
	bge _0805DACC
	lsls r0, r2, #0x18
	lsrs r3, r0, #0x18
	cmp r4, #0xa
	ble _0805DABC
	ldrh r1, [r6]
	ldr r0, _0805DB08 @ =0x0000DFFF
	ands r0, r1
	movs r1, #0
	strh r0, [r6]
	adds r0, r6, #0
	adds r0, #0x44
	strb r1, [r0]
	adds r0, #2
	strb r1, [r0]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805DB00: .4byte 0x030024E0
_0805DB04: .4byte 0x0600E000
_0805DB08: .4byte 0x0000DFFF

	thumb_func_start sub_0805DB0C
sub_0805DB0C: @ 0x0805DB0C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	movs r0, #0
	mov sb, r0
	movs r1, #0
	str r1, [sp]
	movs r2, #0
	str r2, [sp, #4]
	str r0, [sp, #8]
	bl sub_0805D01C
	ldr r0, _0805DBDC @ =0x03004400
	ldrb r0, [r0, #0xa]
	cmp r0, #0x12
	bne _0805DBA2
	ldr r0, _0805DBE0 @ =0x0814B380
	movs r1, #0xa0
	lsls r1, r1, #0x13
	bl sub_08008308
	ldr r0, _0805DBE4 @ =0x0814B85C
	movs r1, #0xc0
	lsls r1, r1, #0x13
	bl sub_08008374
	ldr r0, _0805DBE8 @ =0x0814B3E4
	ldr r1, _0805DBEC @ =0x0600D800
	movs r2, #0
	movs r3, #0
	bl sub_080083CC
	movs r0, #0xc
	bl sub_080077B4
	movs r0, #0x20
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl sub_08008AF4
	ldr r0, _0805DBF0 @ =0x030024E0
	adds r0, #0x4f
	movs r1, #1
	strb r1, [r0]
	bl sub_08008D34
	bl sub_08005934
	ldr r0, _0805DBF4 @ =0x00470037
	bl sub_080062D0
	ldr r0, _0805DBF8 @ =0x00470038
	bl sub_080062D0
	ldr r0, _0805DBFC @ =0x00470039
	bl sub_080062D0
	bl sub_08005A2C
	movs r0, #0
	movs r1, #0x20
	bl sub_080077EC
	movs r0, #0x20
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl sub_080089E8
	bl sub_08008D34
_0805DBA2:
	bl sub_0805D168
	bl sub_0805D38C
	movs r0, #0x20
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl sub_08008AF4
	ldr r0, _0805DBF0 @ =0x030024E0
	adds r0, #0x4f
	movs r1, #1
	strb r1, [r0]
	bl sub_08008D34
	movs r5, #0
	ldr r1, _0805DC00 @ =0x030044A0
	mov sl, r1
_0805DBC8:
	asrs r2, r5, #0x18
	cmp r2, #1
	bne _0805DBD0
	b _0805DD70
_0805DBD0:
	cmp r2, #1
	bgt _0805DC04
	cmp r2, #0
	beq _0805DC0C
	b _0805DF96
	.align 2, 0
_0805DBDC: .4byte 0x03004400
_0805DBE0: .4byte 0x0814B380
_0805DBE4: .4byte 0x0814B85C
_0805DBE8: .4byte 0x0814B3E4
_0805DBEC: .4byte 0x0600D800
_0805DBF0: .4byte 0x030024E0
_0805DBF4: .4byte 0x00470037
_0805DBF8: .4byte 0x00470038
_0805DBFC: .4byte 0x00470039
_0805DC00: .4byte 0x030044A0
_0805DC04:
	cmp r2, #2
	bne _0805DC0A
	b _0805DE64
_0805DC0A:
	b _0805DF96
_0805DC0C:
	bl sub_0805DA54
	ldr r0, _0805DC20 @ =0x030024B0
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0805DC24
	movs r0, #0x12
	b _0805DE3C
	.align 2, 0
_0805DC20: .4byte 0x030024B0
_0805DC24:
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0805DC32
	movs r0, #0
	str r0, [sp]
	b _0805DC4C
_0805DC32:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0805DC40
	movs r1, #1
	str r1, [sp]
	b _0805DC4C
_0805DC40:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0805DC4C
	movs r2, #2
	str r2, [sp]
_0805DC4C:
	ldr r1, [sp, #4]
	lsls r0, r1, #0x18
	asrs r6, r0, #0x18
	ldr r2, [sp]
	lsls r0, r2, #0x18
	asrs r5, r0, #0x18
	adds r4, r0, #0
	cmp r6, r5
	beq _0805DC8C
	movs r0, #0xca
	bl sub_080077B4
	mov r1, sl
	ldr r0, [r1]
	lsls r1, r5, #2
	adds r0, #0x18
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #6
	bl sub_0805D374
	mov r2, sl
	ldr r0, [r2]
	lsls r1, r6, #2
	adds r0, #0x18
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0xf
	bl sub_0805D374
	lsrs r0, r4, #0x18
	str r0, [sp, #4]
_0805DC8C:
	ldr r0, _0805DCA8 @ =0x030024B0
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0805DC9A
	b _0805DF96
_0805DC9A:
	cmp r5, #1
	beq _0805DD18
	cmp r5, #1
	bgt _0805DCAC
	cmp r5, #0
	beq _0805DCB2
	b _0805DF96
	.align 2, 0
_0805DCA8: .4byte 0x030024B0
_0805DCAC:
	cmp r5, #2
	beq _0805DD3C
	b _0805DF96
_0805DCB2:
	mov r1, sl
	ldr r0, [r1]
	ldr r0, [r0, #0x18]
	movs r1, #0xf
	bl sub_0805D374
	ldr r0, _0805DD0C @ =0x00000402
	bl sub_080077B4
_0805DCC4:
	movs r0, #1
	bl sub_08002B98
	movs r0, #6
	bl sub_0800B828
	adds r1, r0, #0
	mov r2, sl
	ldr r0, [r2]
	ldr r0, [r0, #8]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl sub_0805D374
	ldr r0, _0805DD10 @ =0x030024B0
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0805DCC4
	movs r0, #4
	bl sub_080077D4
	ldr r0, _0805DD14 @ =0x00000403
	bl sub_080077B4
	mov r1, sl
	ldr r0, [r1]
	lsrs r1, r4, #0x16
	adds r0, #0x18
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #6
	bl sub_0805D374
	b _0805DF96
	.align 2, 0
_0805DD0C: .4byte 0x00000402
_0805DD10: .4byte 0x030024B0
_0805DD14: .4byte 0x00000403
_0805DD18:
	movs r0, #0xcc
	bl sub_080077B4
	movs r0, #1
	bl sub_0805D578
	bl sub_0805DA7C
	ldr r0, _0805DD38 @ =0x00000404
	bl sub_080077B4
	movs r2, #1
	mov sb, r2
	movs r0, #0
	str r0, [sp, #8]
	b _0805DF96
	.align 2, 0
_0805DD38: .4byte 0x00000404
_0805DD3C:
	movs r0, #0xcc
	bl sub_080077B4
	movs r0, #0
	bl sub_0805D578
	bl sub_0805DA7C
	movs r1, #2
	mov sb, r1
	movs r2, #0
	str r2, [sp, #8]
	ldr r0, _0805DD68 @ =0xFFFFFF00
	ands r7, r0
	ldr r0, _0805DD6C @ =0xFFFF00FF
	ands r7, r0
	bl sub_0805D734
	movs r0, #0
	bl sub_0805D7C0
	b _0805DF96
	.align 2, 0
_0805DD68: .4byte 0xFFFFFF00
_0805DD6C: .4byte 0xFFFF00FF
_0805DD70:
	ldr r5, _0805DD94 @ =0x030024E0
	ldrh r0, [r5, #0x14]
	subs r0, #8
	strh r0, [r5, #0x14]
	ldr r0, _0805DD98 @ =0x030024B0
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0805DD9C
	movs r0, #4
	bl sub_080077D4
	bl sub_0805DA54
	movs r0, #0
	b _0805DE7A
	.align 2, 0
_0805DD94: .4byte 0x030024E0
_0805DD98: .4byte 0x030024B0
_0805DD9C:
	adds r0, r2, #0
	ands r0, r1
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0805DDA8
	b _0805DF96
_0805DDA8:
	movs r0, #5
	bl sub_08007814
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0805DDB6
	b _0805DF96
_0805DDB6:
	b _0805DDBE
_0805DDB8:
	adds r0, r1, #0
	subs r0, #8
	strh r0, [r5, #0x14]
_0805DDBE:
	movs r0, #1
	bl sub_08002B98
	ldrh r1, [r5, #0x14]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #8
	bne _0805DDB8
	movs r0, #4
	bl sub_080077D4
	movs r0, #0xfe
	lsls r0, r0, #2
	bl sub_080077B4
	mov r2, sl
	ldr r1, [r2]
	ldr r0, _0805DE48 @ =0x0814A8E0
	str r0, [r1, #0x38]
	movs r1, #0x8c
	lsls r1, r1, #1
	bl sub_08009554
	movs r0, #0x3c
	bl sub_08002B98
	ldr r0, _0805DE4C @ =0x0808FBFC
	ldr r0, [r0, #0x10]
	ldr r1, _0805DE50 @ =0x0808FC3C
	ldrb r1, [r1, #1]
	lsls r1, r1, #5
	ldr r2, _0805DE54 @ =0x05000200
	adds r1, r1, r2
	bl sub_08008308
	mov r1, sl
	ldr r0, [r1]
	ldr r0, [r0, #0x38]
	bl sub_080095E0
	bl sub_0805DA9C
	ldr r0, _0805DE58 @ =0x030024E0
	ldrh r0, [r0, #0x14]
	adds r0, #8
	movs r1, #0xf0
	ands r0, r1
	asrs r0, r0, #4
	adds r0, #4
	movs r1, #0xf
	ands r0, r1
	ldr r2, _0805DE5C @ =0x0808FC5C
	ldr r1, _0805DE60 @ =0x030044B0
	adds r0, r0, r1
	ldrb r0, [r0]
	adds r0, r0, r2
	ldrb r0, [r0]
	bl sub_08001B64
	movs r0, #0x25
	bl sub_08001930
	movs r0, #0x11
_0805DE3C:
	bl sub_08008790
	movs r2, #0xff
	mov sb, r2
	b _0805DF96
	.align 2, 0
_0805DE48: .4byte 0x0814A8E0
_0805DE4C: .4byte 0x0808FBFC
_0805DE50: .4byte 0x0808FC3C
_0805DE54: .4byte 0x05000200
_0805DE58: .4byte 0x030024E0
_0805DE5C: .4byte 0x0808FC5C
_0805DE60: .4byte 0x030044B0
_0805DE64:
	ldr r0, _0805DE84 @ =0x030024B0
	ldrh r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _0805DE88
	bl sub_0805D7A0
	bl sub_0805DA54
	movs r0, #1
_0805DE7A:
	bl sub_0805D578
	movs r0, #0
	mov sb, r0
	b _0805DF96
	.align 2, 0
_0805DE84: .4byte 0x030024B0
_0805DE88:
	movs r0, #1
	mov r8, r0
	ands r0, r1
	cmp r0, #0
	beq _0805DF08
	lsls r0, r7, #0x10
	asrs r0, r0, #0x18
	lsls r1, r0, #1
	adds r1, r1, r0
	adds r1, r1, r7
	ldr r6, _0805DEB8 @ =0x030044B0
	ldrb r0, [r6, #0x10]
	lsls r5, r1, #0x18
	asrs r4, r5, #0x18
	asrs r0, r4
	mov r1, r8
	ands r0, r1
	cmp r0, #0
	beq _0805DEBC
	movs r0, #0xd2
	bl sub_080077B4
	b _0805DF96
	.align 2, 0
_0805DEB8: .4byte 0x030044B0
_0805DEBC:
	ldrb r0, [r6, #0x11]
	cmp r0, r4
	bne _0805DEEC
	ldr r0, _0805DEE8 @ =0x00000406
	bl sub_080077B4
	lsrs r0, r5, #0x18
	bl sub_0805D964
	bl sub_0805D000
	bl sub_0805DA54
	movs r0, #1
	bl sub_0805D578
	bl sub_0805D70C
	movs r2, #0
	mov sb, r2
	b _0805DF96
	.align 2, 0
_0805DEE8: .4byte 0x00000406
_0805DEEC:
	ldr r0, _0805DF04 @ =0x00000407
	bl sub_080077B4
	lsrs r0, r5, #0x18
	bl sub_0805D838
	mov r0, r8
	lsls r0, r4
	ldrb r1, [r6, #0x10]
	orrs r0, r1
	strb r0, [r6, #0x10]
	b _0805DF96
	.align 2, 0
_0805DF04: .4byte 0x00000407
_0805DF08:
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0805DF1C
	ldr r0, _0805DF18 @ =0xFFFF00FF
	ands r7, r0
	b _0805DF72
	.align 2, 0
_0805DF18: .4byte 0xFFFF00FF
_0805DF1C:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0805DF34
	ldr r0, _0805DF30 @ =0xFFFF00FF
	ands r7, r0
	movs r0, #0x80
	lsls r0, r0, #1
	orrs r7, r0
	b _0805DF72
	.align 2, 0
_0805DF30: .4byte 0xFFFF00FF
_0805DF34:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0805DF54
	subs r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	ldr r2, _0805DF50 @ =0xFFFFFF00
	ands r7, r2
	orrs r7, r1
	cmp r0, #0
	bge _0805DF72
	ands r7, r2
	b _0805DF72
	.align 2, 0
_0805DF50: .4byte 0xFFFFFF00
_0805DF54:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0805DF72
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	ldr r3, _0805DFB0 @ =0xFFFFFF00
	ands r7, r3
	orrs r7, r1
	asrs r0, r0, #0x18
	cmp r0, #2
	ble _0805DF72
	ands r7, r3
	orrs r7, r2
_0805DF72:
	lsls r0, r7, #0x10
	asrs r0, r0, #0x18
	lsls r1, r0, #1
	adds r1, r1, r0
	adds r1, r1, r7
	ldr r2, [sp, #8]
	lsls r0, r2, #0x18
	lsls r4, r1, #0x18
	cmp r0, r4
	beq _0805DF96
	movs r0, #0xca
	bl sub_080077B4
	lsrs r4, r4, #0x18
	adds r0, r4, #0
	bl sub_0805D7C0
	str r4, [sp, #8]
_0805DF96:
	mov r1, sb
	lsls r0, r1, #0x18
	asrs r2, r0, #0x18
	movs r1, #1
	rsbs r1, r1, #0
	adds r5, r0, #0
	cmp r2, r1
	beq _0805DFB4
	movs r0, #1
	bl sub_08002B98
	b _0805DBC8
	.align 2, 0
_0805DFB0: .4byte 0xFFFFFF00
_0805DFB4:
	ldr r1, _0805DFFC @ =0x030024E0
	ldrh r2, [r1]
	ldr r0, _0805E000 @ =0x0000DFFF
	ands r0, r2
	movs r2, #0
	strh r0, [r1]
	adds r0, r1, #0
	adds r0, #0x44
	strb r2, [r0]
	adds r1, #0x46
	strb r2, [r1]
	movs r0, #0x20
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl sub_080089E8
	bl sub_08008D34
	bl sub_0805D4E8
	bl sub_0805D2D4
	bl sub_0805D144
	bl sub_08002B0C
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805DFFC: .4byte 0x030024E0
_0805E000: .4byte 0x0000DFFF

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
	bl sub_08002B98
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
	bl sub_08008AF4
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
	bl sub_08002B98
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
	bl sub_080089E8
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
	bl sub_08008790
	b _0805E422
	.align 2, 0
_0805E410: .4byte 0x030024B0
_0805E414: .4byte 0x030024E0
_0805E418: .4byte 0x0000DFFF
_0805E41C:
	movs r0, #0x2b
	bl sub_08008790
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
	bl sub_08008AF4
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
	bl sub_08008790
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
	bl sub_08008790
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
	bl sub_08008790
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
	bl sub_08002B98
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
	bl sub_080089E8
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
	bl sub_08008AF4
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
	bl sub_080089E8
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
	bl sub_08008AF4
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
	bl sub_08002B98
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
	bl sub_080089E8
	bl sub_08008D34
	bl sub_08061E30
	bl sub_08060FDC
	bl sub_080607BC
	movs r0, #0x2c
	bl sub_08008790
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
	bl sub_080089E8
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
	bl sub_08008308
	ldr r0, _0805EA5C @ =0x081413B4
	ldr r1, _0805EA60 @ =0x06008000
	bl sub_08008374
	ldr r0, _0805EA64 @ =0x0814110C
	ldr r1, _0805EA68 @ =0x0600D000
	movs r2, #0
	movs r3, #8
	bl sub_080083CC
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
	bl sub_08008308
	ldr r0, _0805EB60 @ =0x0813B468
	ldr r1, _0805EB64 @ =0x06004000
	bl sub_08008374
	ldr r0, _0805EB68 @ =0x0813B300
	adds r1, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_080083CC
	lsls r4, r5, #1
	adds r4, r4, r5
	lsls r4, r4, #2
	mov r0, sp
	adds r0, r0, r4
	adds r0, #4
	ldr r0, [r0]
	ldr r1, _0805EB6C @ =0x05000100
	bl sub_08008308
	add r0, sp, #8
	adds r0, r0, r4
	ldr r0, [r0]
	ldr r1, _0805EB70 @ =0x06008000
	bl sub_08008374
	add r0, sp, #0xc
	adds r0, r0, r4
	ldr r0, [r0]
	ldr r1, _0805EB74 @ =0x0600D000
	movs r2, #0
	movs r3, #8
	bl sub_080083CC
	adds r0, r5, #0
	bl sub_08007400
_0805EAC0:
	movs r0, #0x20
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl sub_08008AF4
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
	bl sub_08002B98
	ldrh r1, [r4]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _0805EADE
	movs r0, #0x20
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl sub_080089E8
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
	bl sub_08008AF4
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
	bl sub_08002B98
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
	bl sub_08002B98
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
	bl sub_08002B98
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
	bl sub_08008308
	ldr r0, _0805ED04 @ =0x0813496C
	ldr r1, _0805ED08 @ =0x06002000
	bl sub_08008374
	ldr r0, _0805ED0C @ =0x08134884
	ldr r1, _0805ED10 @ =0x0600F000
	movs r2, #0x80
	lsls r2, r2, #1
	movs r3, #4
	bl sub_080083CC
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
	bl sub_08002B98
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
	bl sub_08002B98
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
	bl sub_08008AF4
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
	bl sub_08002B98
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
	bl sub_08008790
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
	bl sub_08002B98
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
	bl sub_080089E8
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
	bl sub_08008AF4
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
	bl sub_08002B98
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
	bl sub_08008790
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
	bl sub_08008790
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
	bl sub_08008790
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
	bl sub_08002B98
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
	bl sub_080089E8
	bl sub_08008D34
	bl sub_080607BC
	bl sub_08002B0C
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805FCD4: .4byte 0x03004400

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
	bl sub_08008AF4
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
	bl sub_08008790
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
	bl sub_08002B98
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
	bl sub_08008790
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
	bl sub_080089E8
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
