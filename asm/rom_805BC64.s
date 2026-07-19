	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .text
	.ARM
	.syntax unified

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
	bl LoadPalette_08008308
	ldr r0, _0805BDBC @ =0x08107B6C
	ldr r1, _0805BDC0 @ =0x0600D400
	bl DecompressData_08008374
	ldr r0, _0805BDC4 @ =0x08107B94
	ldr r1, _0805BDC8 @ =0x0600E800
	movs r2, #0xa0
	movs r3, #0xc
	bl LoadTileMap_080083CC
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
	bl ProcSleep_08002B98
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
	bl _call_via_r0
_0805BE6C:
	ldr r4, _0805BE80 @ =0x03001634
	ldr r0, [r4]
	ldrb r0, [r0]
	cmp r0, #0
	bne _0805BE84
	movs r0, #1
	bl ProcSleep_08002B98
	b _0805BE48
	.align 2, 0
_0805BE80: .4byte 0x03001634
_0805BE84:
	bl sub_0805BDE0
	movs r0, #1
	bl ProcSleep_08002B98
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
	bl LoadPalette_08008308
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
	bl DecompressData_08008374
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
