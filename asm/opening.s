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
	bl LoadPalette_08008308
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
	bl LoadPalette_08008308
	ldr r0, _0805ABD8 @ =0x08110728
	add r1, sp, #4
	bl sub_08008380
	ldr r1, [r5]
	str r0, [r1, #0x10]
	ldr r0, [sp, #4]
	str r0, [r1, #0x14]
	ldr r0, _0805ABDC @ =0x08112B34
	ldr r1, _0805ABE0 @ =0x05000240
	bl LoadPalette_08008308
	ldr r0, _0805ABE4 @ =0x08112B8C
	add r1, sp, #4
	bl sub_08008380
	ldr r1, [r5]
	str r0, [r1, #0x18]
	ldr r0, [sp, #4]
	str r0, [r1, #0x1c]
	ldr r0, _0805ABE8 @ =0x08114F98
	ldr r1, _0805ABEC @ =0x05000260
	bl LoadPalette_08008308
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
	bl LoadPalette_08008308
	ldr r0, [r5]
	str r4, [r0, #0x38]
	ldr r0, _0805AC00 @ =0x0814F4A4
	adds r1, r4, #0
	bl DecompressData_08008374
	adds r4, r0, r4
	ldr r0, _0805AC04 @ =0x0814F234
	ldr r1, _0805AC08 @ =0x050002A0
	bl LoadPalette_08008308
	ldr r0, [r5]
	str r4, [r0, #0x3c]
	ldr r0, _0805AC0C @ =0x0814F2A8
	adds r1, r4, #0
	bl DecompressData_08008374
	ldr r0, _0805AC10 @ =0x08107C48
	movs r1, #0xa0
	lsls r1, r1, #0x13
	bl LoadPalette_08008308
	ldr r0, _0805AC14 @ =0x08108E90
	movs r1, #0xc0
	lsls r1, r1, #0x13
	bl DecompressData_08008374
	ldr r0, _0805AC18 @ =0x08107D8C
	ldr r1, _0805AC1C @ =0x0600F800
	movs r2, #0
	movs r3, #0
	bl LoadTileMap_080083CC
	ldr r4, _0805AC20 @ =0x030024E0
	ldr r0, _0805AC24 @ =0x00001F03
	strh r0, [r4, #8]
	ldr r0, _0805AC28 @ =0x081088E4
	ldr r1, _0805AC2C @ =0x0600F000
	movs r2, #0
	movs r3, #0
	bl LoadTileMap_080083CC
	ldr r0, _0805AC30 @ =0x00001E02
	strh r0, [r4, #6]
	ldr r0, _0805AC34 @ =0x08108338
	ldr r1, _0805AC38 @ =0x0600E000
	movs r2, #0
	movs r3, #0
	bl LoadTileMap_080083CC
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
	bl ProcSleep_08002B98
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
	bl _call_via_r0
_0805ACF2:
	ldr r0, [r4]
	ldrb r0, [r0]
	cmp r0, #0
	bne _0805AD10
	movs r0, #1
	bl ProcSleep_08002B98
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
	bl ProcSleep_08002B98
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
	bl FadeIn_08008AF4
	movs r0, #1
	bl ProcSleep_08002B98
	b _0805AD96
	.align 2, 0
_0805AD8C: .4byte 0x030024E0
_0805AD90:
	movs r0, #1
	bl ProcSleep_08002B98
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
	bl FadeOut_080089E8
	movs r0, #1
	bl ProcSleep_08002B98
	b _0805B1B6
	.align 2, 0
_0805B1AC: .4byte 0x030056F0
_0805B1B0:
	movs r0, #1
	bl ProcSleep_08002B98
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
