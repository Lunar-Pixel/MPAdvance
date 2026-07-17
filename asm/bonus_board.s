	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .text
	.ARM
	.syntax unified

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
	bl LoadPalette_08008308
	ldr r0, _0805D28C @ =0x0814A464
	movs r1, #0xc0
	lsls r1, r1, #0x13
	bl DecompressData_08008374
	ldr r0, _0805D290 @ =0x0814A0C0
	ldr r1, _0805D294 @ =0x0600D800
	movs r2, #0
	movs r3, #0
	bl LoadTileMap_080083CC
	ldr r0, _0805D298 @ =0x0814A010
	ldr r1, _0805D29C @ =0x0600F000
	movs r2, #0
	movs r3, #0
	bl LoadTileMap_080083CC
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
	bl LoadPalette_08008308
	lsls r1, r5, #5
	ldr r0, _0805D2AC @ =0x06010000
	adds r1, r1, r0
	adds r0, r4, #0
	bl DecompressData_08008374
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
	bl ProcSleep_08002B98
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
	bl ProcSleep_08002B98
	b _0805D880
	.align 2, 0
_0805D8B4: .4byte 0x030044A0
_0805D8B8: .4byte 0xFFFF0000
_0805D8BC: .4byte 0x0000FFFF
_0805D8C0:
	movs r0, #0x3c
	bl ProcSleep_08002B98
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
	bl ProcSleep_08002B98
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
	bl ProcSleep_08002B98
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
	bl ProcSleep_08002B98
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
	bl LoadPalette_08008308
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
	bl LoadPalette_08008308
	ldr r0, _0805DBE4 @ =0x0814B85C
	movs r1, #0xc0
	lsls r1, r1, #0x13
	bl DecompressData_08008374
	ldr r0, _0805DBE8 @ =0x0814B3E4
	ldr r1, _0805DBEC @ =0x0600D800
	movs r2, #0
	movs r3, #0
	bl LoadTileMap_080083CC
	movs r0, #0xc
	bl sub_080077B4
	movs r0, #0x20
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl FadeIn_08008AF4
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
	bl FadeOut_080089E8
	bl sub_08008D34
_0805DBA2:
	bl sub_0805D168
	bl sub_0805D38C
	movs r0, #0x20
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl FadeIn_08008AF4
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
	bl ProcSleep_08002B98
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
	bl ProcSleep_08002B98
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
	bl ProcSleep_08002B98
	ldr r0, _0805DE4C @ =0x0808FBFC
	ldr r0, [r0, #0x10]
	ldr r1, _0805DE50 @ =0x0808FC3C
	ldrb r1, [r1, #1]
	lsls r1, r1, #5
	ldr r2, _0805DE54 @ =0x05000200
	adds r1, r1, r2
	bl LoadPalette_08008308
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
	bl ChangeGameState_08008790
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
	bl ProcSleep_08002B98
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
	bl FadeOut_080089E8
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
