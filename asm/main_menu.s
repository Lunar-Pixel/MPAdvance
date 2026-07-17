	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .text
	.ARM
	.syntax unified

	thumb_func_start sub_08063768
sub_08063768: @ 0x08063768
	push {r4, lr}
	ldr r4, _080637BC @ =0x030044C4
	ldr r0, [r4]
	adds r2, r0, #0
	adds r2, #0x54
	movs r0, #0
	ldrsh r1, [r2, r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0806378C
	adds r0, r1, #0
	bl sub_08007A08
	ldr r0, [r4]
	adds r0, #0x54
	ldr r1, _080637C0 @ =0x0000FFFF
	strh r1, [r0]
_0806378C:
	ldr r0, [r4]
	ldr r0, [r0, #0x48]
	cmp r0, #0
	beq _0806379E
	bl sub_08009E54
	ldr r1, [r4]
	movs r0, #0
	str r0, [r1, #0x48]
_0806379E:
	ldr r0, [r4]
	cmp r0, #0
	beq _080637AC
	bl sub_08007CF8
	movs r0, #0
	str r0, [r4]
_080637AC:
	bl sub_0800580C
	bl sub_08003FE4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080637BC: .4byte 0x030044C4
_080637C0: .4byte 0x0000FFFF

	thumb_func_start sub_080637C4
sub_080637C4: @ 0x080637C4
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	movs r0, #1
	movs r1, #0x18
	bl sub_080099E0
	adds r6, r0, #0
	ldr r0, _08063840 @ =0x030044C4
	ldr r0, [r0]
	lsls r5, r4, #1
	adds r0, #0x18
	adds r0, r0, r5
	ldrh r1, [r0]
	lsls r1, r1, #5
	ldr r0, _08063844 @ =0x06010000
	adds r1, r1, r0
	adds r0, r6, #0
	bl sub_08009A78
	adds r1, r4, #7
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r6, #0
	bl sub_08009AB4
	ldr r2, _08063848 @ =0x0809012C
	lsls r3, r4, #4
	adds r0, r2, #0
	adds r0, #0xc
	adds r0, r3, r0
	ldr r1, [r0]
	adds r2, #8
	adds r3, r3, r2
	ldr r2, [r3]
	ldr r0, _0806384C @ =0x0809016C
	adds r5, r5, r4
	adds r5, r5, r0
	ldrb r3, [r5]
	adds r0, r6, #0
	bl sub_08009ACC
	adds r0, r6, #0
	movs r1, #0xff
	bl sub_08009B40
	movs r2, #0x80
	rsbs r2, r2, #0
	adds r0, r6, #0
	movs r1, #0
	bl sub_08009A70
	adds r0, r6, #0
	movs r1, #1
	bl sub_08009A34
	adds r0, r6, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08063840: .4byte 0x030044C4
_08063844: .4byte 0x06010000
_08063848: .4byte 0x0809012C
_0806384C: .4byte 0x0809016C

	thumb_func_start sub_08063850
sub_08063850: @ 0x08063850
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r6, r2, #0x18
	cmp r5, #0
	beq _0806388C
	ldr r2, _08063894 @ =0x0809012C
	lsls r3, r4, #4
	adds r0, r2, #0
	adds r0, #0xc
	adds r0, r3, r0
	ldr r1, [r0]
	adds r2, #8
	adds r3, r3, r2
	ldr r2, [r3]
	ldr r3, _08063898 @ =0x0809016C
	lsls r0, r4, #1
	adds r0, r0, r4
	adds r0, r6, r0
	adds r0, r0, r3
	ldrb r3, [r0]
	adds r0, r5, #0
	bl sub_08009ACC
	adds r0, r5, #0
	movs r1, #0xff
	bl sub_08009B40
_0806388C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08063894: .4byte 0x0809012C
_08063898: .4byte 0x0809016C

	thumb_func_start sub_0806389C
sub_0806389C: @ 0x0806389C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	bl sub_08007BD4
	adds r5, r0, #0
	ldrb r0, [r5, #1]
	ldr r1, _0806396C @ =0x0000FFFC
	cmp r0, #0
	bne _080638B2
	movs r1, #8
_080638B2:
	ldrb r0, [r5, #2]
	adds r0, r0, r1
	strb r0, [r5, #2]
	lsls r0, r0, #0x18
	cmp r0, #0
	bge _080638C2
	movs r0, #0
	strb r0, [r5, #2]
_080638C2:
	movs r0, #2
	ldrsb r0, [r5, r0]
	cmp r0, #0x3f
	ble _080638CE
	movs r0, #0x40
	strb r0, [r5, #2]
_080638CE:
	ldr r1, _08063970 @ =0x0809011C
	movs r2, #0
	ldrsb r2, [r5, r2]
	lsls r0, r2, #2
	adds r0, r0, r1
	ldrh r1, [r0]
	adds r1, #0x60
	lsls r1, r1, #0x10
	ldrh r0, [r0, #2]
	adds r0, #0x10
	lsls r0, r0, #0x10
	lsrs r6, r1, #0x10
	orrs r6, r0
	ldrb r0, [r5]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _08063902
	adds r0, r6, #0
	subs r0, #0xc
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _08063974 @ =0xFFFF0000
	ands r6, r1
	orrs r6, r0
_08063902:
	ldr r0, _08063978 @ =0x030044C4
	mov r8, r0
	ldr r1, [r0]
	ldr r4, _0806397C @ =0x08090178
	lsls r0, r2, #1
	adds r0, r0, r4
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #2
	adds r1, r1, r0
	ldr r0, [r1]
	movs r1, #2
	ldrsb r1, [r5, r1]
	adds r1, r1, r6
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	asrs r7, r6, #0x10
	adds r2, r7, #0
	bl sub_08009A70
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r0, r0, #1
	adds r4, #1
	adds r2, r0, r4
	movs r1, #0
	ldrsb r1, [r2, r1]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08063962
	mov r0, r8
	ldr r1, [r0]
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r0, r0, #2
	adds r1, r1, r0
	ldr r0, [r1]
	movs r1, #2
	ldrsb r1, [r5, r1]
	adds r1, #0x18
	adds r1, r6, r1
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r2, r7, #0
	bl sub_08009A70
_08063962:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806396C: .4byte 0x0000FFFC
_08063970: .4byte 0x0809011C
_08063974: .4byte 0xFFFF0000
_08063978: .4byte 0x030044C4
_0806397C: .4byte 0x08090178

	thumb_func_start sub_08063980
sub_08063980: @ 0x08063980
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	movs r6, #0
	ldr r0, _08063A30 @ =0x0809012C
	mov sb, r0
	ldr r0, _08063A34 @ =0x050002E0
	mov r8, r0
	mov r7, sb
_08063994:
	lsls r0, r6, #4
	mov r1, sb
	adds r1, #4
	adds r0, r0, r1
	ldr r5, [r0]
	adds r0, r5, #0
	bl sub_08006C14
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r0, [r7]
	mov r1, r8
	bl LoadPalette_08008308
	lsls r1, r4, #5
	ldr r0, _08063A38 @ =0x06010000
	adds r1, r1, r0
	adds r0, r5, #0
	bl DecompressData_08008374
	ldr r0, _08063A3C @ =0x030044C4
	ldr r0, [r0]
	lsls r1, r6, #1
	adds r0, #0x18
	adds r0, r0, r1
	strh r4, [r0]
	movs r0, #0x20
	add r8, r0
	adds r7, #0x10
	adds r6, #1
	cmp r6, #3
	ble _08063994
	movs r6, #0
_080639D8:
	ldr r0, _08063A40 @ =0x08090180
	adds r0, r6, r0
	ldrb r0, [r0]
	bl sub_080637C4
	ldr r1, _08063A3C @ =0x030044C4
	ldr r1, [r1]
	lsls r2, r6, #2
	adds r1, r1, r2
	str r0, [r1]
	adds r6, #1
	cmp r6, #5
	ble _080639D8
	movs r6, #0
	movs r5, #0
_080639F6:
	ldr r0, _08063A44 @ =sub_0806389C
	movs r1, #0x90
	movs r2, #0
	bl sub_08007968
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	bl sub_08007BBC
	strb r6, [r0]
	strb r5, [r0, #1]
	movs r1, #0x40
	strb r1, [r0, #2]
	ldr r0, _08063A3C @ =0x030044C4
	ldr r0, [r0]
	lsls r1, r6, #1
	adds r0, #0x20
	adds r0, r0, r1
	strh r4, [r0]
	adds r6, #1
	cmp r6, #3
	ble _080639F6
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08063A30: .4byte 0x0809012C
_08063A34: .4byte 0x050002E0
_08063A38: .4byte 0x06010000
_08063A3C: .4byte 0x030044C4
_08063A40: .4byte 0x08090180
_08063A44: .4byte sub_0806389C

	thumb_func_start sub_08063A48
sub_08063A48: @ 0x08063A48
	push {r4, r5, r6, r7, lr}
	movs r5, #0
	ldr r6, _08063AB4 @ =0x030044C4
	movs r7, #1
	rsbs r7, r7, #0
_08063A52:
	ldr r0, [r6]
	lsls r4, r5, #1
	adds r0, #0x20
	adds r1, r0, r4
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, r7
	beq _08063A70
	bl sub_08007A08
	ldr r0, [r6]
	adds r0, #0x20
	adds r0, r0, r4
	ldr r1, _08063AB8 @ =0x0000FFFF
	strh r1, [r0]
_08063A70:
	adds r5, #1
	cmp r5, #3
	ble _08063A52
	movs r5, #0
	ldr r6, _08063AB4 @ =0x030044C4
_08063A7A:
	ldr r0, [r6]
	lsls r4, r5, #2
	adds r0, r0, r4
	ldr r0, [r0]
	cmp r0, #0
	beq _08063A92
	bl sub_08009A00
	ldr r0, [r6]
	adds r0, r0, r4
	movs r1, #0
	str r1, [r0]
_08063A92:
	adds r5, #1
	cmp r5, #5
	ble _08063A7A
	ldr r0, _08063ABC @ =0x0809012C
	adds r4, r0, #4
	movs r5, #3
_08063A9E:
	ldr r0, [r4]
	bl sub_08006CA0
	adds r4, #0x10
	subs r5, #1
	cmp r5, #0
	bge _08063A9E
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08063AB4: .4byte 0x030044C4
_08063AB8: .4byte 0x0000FFFF
_08063ABC: .4byte 0x0809012C

	thumb_func_start sub_08063AC0
sub_08063AC0: @ 0x08063AC0
	push {lr}
	ldr r1, _08063AE0 @ =0x030044C4
	ldr r1, [r1]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x17
	adds r1, #0x20
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	bl sub_08007BBC
	movs r1, #1
	strb r1, [r0, #1]
	pop {r0}
	bx r0
	.align 2, 0
_08063AE0: .4byte 0x030044C4

	thumb_func_start sub_08063AE4
sub_08063AE4: @ 0x08063AE4
	push {lr}
	lsls r0, r0, #0x18
	asrs r1, r0, #0x18
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08063B08
	ldr r0, _08063B0C @ =0x030044C4
	ldr r0, [r0]
	lsls r1, r1, #1
	adds r0, #0x20
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	movs r1, #0
	strb r1, [r0, #1]
_08063B08:
	pop {r0}
	bx r0
	.align 2, 0
_08063B0C: .4byte 0x030044C4

	thumb_func_start sub_08063B10
sub_08063B10: @ 0x08063B10
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	lsls r1, r1, #0x18
	lsrs r7, r1, #0x18
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #1
	rsbs r1, r1, #0
	mov sb, r1
	cmp r0, sb
	beq _08063B6E
	ldr r4, _08063B7C @ =0x08090178
	lsls r5, r0, #1
	adds r1, r5, r4
	ldr r2, _08063B80 @ =0x030044C4
	mov r8, r2
	ldr r0, [r2]
	movs r2, #0
	ldrsb r2, [r1, r2]
	lsls r1, r2, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r6, _08063B84 @ =0x08090180
	adds r2, r2, r6
	ldrb r1, [r2]
	adds r2, r7, #0
	bl sub_08063850
	adds r4, #1
	adds r5, r5, r4
	ldrb r5, [r5]
	lsls r5, r5, #0x18
	asrs r5, r5, #0x18
	cmp r5, sb
	beq _08063B6E
	mov r1, r8
	ldr r0, [r1]
	lsls r1, r5, #2
	adds r0, r0, r1
	ldr r0, [r0]
	adds r1, r5, r6
	ldrb r1, [r1]
	adds r2, r7, #0
	bl sub_08063850
_08063B6E:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08063B7C: .4byte 0x08090178
_08063B80: .4byte 0x030044C4
_08063B84: .4byte 0x08090180

	thumb_func_start sub_08063B88
sub_08063B88: @ 0x08063B88
	push {r4, r5, r6, lr}
	adds r6, r1, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r5, r0, #0
	movs r1, #0x20
	cmp r5, #3
	bls _08063B9A
	movs r1, #0x10
_08063B9A:
	movs r0, #1
	bl sub_080099E0
	adds r4, r0, #0
	ldr r0, _08063BE8 @ =0x030044C4
	ldr r0, [r0]
	adds r0, #0x4c
	ldrh r1, [r0]
	lsls r1, r1, #5
	ldr r0, _08063BEC @ =0x06010000
	adds r1, r1, r0
	adds r0, r4, #0
	bl sub_08009A78
	adds r0, r4, #0
	movs r1, #0
	bl sub_08009AB4
	ldr r2, _08063BF0 @ =0x08124B20
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
_08063BE8: .4byte 0x030044C4
_08063BEC: .4byte 0x06010000
_08063BF0: .4byte 0x08124B20

	thumb_func_start sub_08063BF4
sub_08063BF4: @ 0x08063BF4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	movs r0, #5
	bl sub_08060EAC
	ldr r0, _08063D00 @ =0x08121728
	movs r1, #0xa0
	lsls r1, r1, #0x13
	bl LoadPalette_08008308
	ldr r0, _08063D04 @ =0x08121F3C
	movs r1, #0xc0
	lsls r1, r1, #0x13
	bl DecompressData_08008374
	ldr r0, _08063D08 @ =0x08121B90
	ldr r1, _08063D0C @ =0x0600F000
	movs r2, #0
	movs r3, #0
	bl LoadTileMap_080083CC
	ldr r0, _08063D10 @ =0x0812184C
	ldr r1, _08063D14 @ =0x0600F800
	movs r2, #0
	movs r3, #0
	bl LoadTileMap_080083CC
	movs r6, #0
	ldr r0, _08063D18 @ =0x080900F8
	mov sb, r0
	ldr r1, _08063D1C @ =0x030044C4
	mov r8, r1
	mov r7, sb
_08063C3C:
	lsls r0, r6, #4
	mov r1, sb
	adds r1, #4
	adds r0, r0, r1
	ldr r5, [r0]
	adds r0, r5, #0
	bl sub_08006C14
	mov r2, r8
	ldr r1, [r2]
	lsls r4, r6, #1
	adds r1, #0x4c
	adds r1, r1, r4
	strh r0, [r1]
	ldr r0, [r7]
	ldr r1, _08063D20 @ =0x08090118
	adds r1, r6, r1
	ldrb r1, [r1]
	lsls r1, r1, #5
	ldr r2, _08063D24 @ =0x05000200
	adds r1, r1, r2
	bl LoadPalette_08008308
	mov r1, r8
	ldr r0, [r1]
	adds r0, #0x4c
	adds r0, r0, r4
	ldrh r1, [r0]
	lsls r1, r1, #5
	ldr r2, _08063D28 @ =0x06010000
	adds r1, r1, r2
	adds r0, r5, #0
	bl DecompressData_08008374
	adds r7, #0x10
	adds r6, #1
	cmp r6, #1
	ble _08063C3C
	movs r6, #0
	ldr r5, _08063D1C @ =0x030044C4
_08063C8C:
	ldr r0, _08063D2C @ =0x0809011C
	movs r2, #3
	ands r2, r6
	lsls r2, r2, #2
	adds r2, r2, r0
	ldrh r1, [r2]
	adds r1, #0xf0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r3, _08063D30 @ =0xFFFF0000
	ldr r0, [sp]
	ands r0, r3
	orrs r0, r1
	str r0, [sp]
	ldrh r2, [r2, #2]
	lsls r2, r2, #0x10
	ldr r1, _08063D34 @ =0x0000FFFF
	ands r0, r1
	orrs r0, r2
	str r0, [sp]
	adds r0, r6, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r1, sp
	bl sub_08063B88
	ldr r1, [r5]
	lsls r4, r6, #2
	adds r1, #0x28
	adds r1, r1, r4
	str r0, [r1]
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	mov r1, sp
	bl sub_08063B88
	ldr r2, [r5]
	adds r1, r2, #0
	adds r1, #0x38
	adds r1, r1, r4
	str r0, [r1]
	adds r2, #0x28
	adds r2, r2, r4
	ldr r0, [r2]
	movs r1, #1
	bl sub_08009B84
	adds r6, #1
	cmp r6, #3
	ble _08063C8C
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08063D00: .4byte 0x08121728
_08063D04: .4byte 0x08121F3C
_08063D08: .4byte 0x08121B90
_08063D0C: .4byte 0x0600F000
_08063D10: .4byte 0x0812184C
_08063D14: .4byte 0x0600F800
_08063D18: .4byte 0x080900F8
_08063D1C: .4byte 0x030044C4
_08063D20: .4byte 0x08090118
_08063D24: .4byte 0x05000200
_08063D28: .4byte 0x06010000
_08063D2C: .4byte 0x0809011C
_08063D30: .4byte 0xFFFF0000
_08063D34: .4byte 0x0000FFFF

	thumb_func_start sub_08063D38
sub_08063D38: @ 0x08063D38
	push {r4, r5, r6, r7, lr}
	movs r0, #5
	bl sub_08060F1C
	movs r5, #0
	ldr r6, _08063D98 @ =0x030044C4
	movs r7, #0
_08063D46:
	ldr r0, [r6]
	lsls r4, r5, #2
	adds r0, #0x28
	adds r0, r0, r4
	ldr r0, [r0]
	cmp r0, #0
	beq _08063D60
	bl sub_08009A00
	ldr r0, [r6]
	adds r0, #0x28
	adds r0, r0, r4
	str r7, [r0]
_08063D60:
	ldr r0, [r6]
	adds r0, #0x38
	adds r0, r0, r4
	ldr r0, [r0]
	cmp r0, #0
	beq _08063D78
	bl sub_08009A00
	ldr r0, [r6]
	adds r0, #0x38
	adds r0, r0, r4
	str r7, [r0]
_08063D78:
	adds r5, #1
	cmp r5, #3
	ble _08063D46
	ldr r0, _08063D9C @ =0x080900F8
	adds r4, r0, #4
	movs r5, #1
_08063D84:
	ldr r0, [r4]
	bl sub_08006CA0
	adds r4, #0x10
	subs r5, #1
	cmp r5, #0
	bge _08063D84
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08063D98: .4byte 0x030044C4
_08063D9C: .4byte 0x080900F8

	thumb_func_start sub_08063DA0
sub_08063DA0: @ 0x08063DA0
	push {r4, lr}
	lsls r0, r0, #0x18
	asrs r1, r0, #0x18
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08063DE4
	ldr r4, _08063DEC @ =0x030044C4
	ldr r2, [r4]
	lsls r1, r1, #2
	adds r0, r2, #0
	adds r0, #0x28
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _08063DC6
	ldr r1, [r2, #0x48]
	bl sub_08009B9C
_08063DC6:
	ldr r0, [r4]
	adds r0, #0x54
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	movs r1, #0
	strb r1, [r0]
	ldr r0, [r4]
	ldr r0, [r0, #0x48]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r2, #0
	bl sub_08009E84
_08063DE4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08063DEC: .4byte 0x030044C4

	thumb_func_start sub_08063DF0
sub_08063DF0: @ 0x08063DF0
	push {lr}
	ldr r1, _08063E10 @ =0x030044C4
	ldr r1, [r1]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x16
	adds r1, #0x28
	adds r1, r1, r0
	ldr r0, [r1]
	cmp r0, #0
	beq _08063E0A
	movs r1, #0
	bl sub_08009B9C
_08063E0A:
	pop {r0}
	bx r0
	.align 2, 0
_08063E10: .4byte 0x030044C4

	thumb_func_start sub_08063E14
sub_08063E14: @ 0x08063E14
	push {r4, r5, lr}
	ldr r5, _08063E70 @ =0x030044C4
	ldr r0, [r5]
	ldr r0, [r0, #0x50]
	cmp r0, #0
	bne _08063E68
	movs r0, #0
	movs r1, #8
	bl sub_080099E0
	adds r4, r0, #0
	ldr r0, [r5]
	adds r0, #0x4e
	ldrh r1, [r0]
	lsls r1, r1, #5
	ldr r0, _08063E74 @ =0x06010000
	adds r1, r1, r0
	adds r0, r4, #0
	bl sub_08009A78
	adds r0, r4, #0
	movs r1, #6
	bl sub_08009AB4
	ldr r2, _08063E78 @ =0x08141D60
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
	str r4, [r0, #0x50]
_08063E68:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08063E70: .4byte 0x030044C4
_08063E74: .4byte 0x06010000
_08063E78: .4byte 0x08141D60

	thumb_func_start sub_08063E7C
sub_08063E7C: @ 0x08063E7C
	push {r4, lr}
	ldr r4, _08063E98 @ =0x030044C4
	ldr r0, [r4]
	ldr r0, [r0, #0x50]
	cmp r0, #0
	beq _08063E92
	bl sub_08009A00
	ldr r1, [r4]
	movs r0, #0
	str r0, [r1, #0x50]
_08063E92:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08063E98: .4byte 0x030044C4

	thumb_func_start sub_08063E9C
sub_08063E9C: @ 0x08063E9C
	push {lr}
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	ldr r0, _08063EC8 @ =0x030044C4
	ldr r0, [r0]
	ldr r3, [r0, #0x50]
	cmp r3, #0
	beq _08063EC2
	ldr r0, _08063ECC @ =0x0809011C
	lsls r1, r1, #2
	adds r1, r1, r0
	ldrh r2, [r1, #2]
	subs r2, #4
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r3, #0
	movs r1, #0x10
	bl sub_08009A70
_08063EC2:
	pop {r0}
	bx r0
	.align 2, 0
_08063EC8: .4byte 0x030044C4
_08063ECC: .4byte 0x0809011C

	thumb_func_start sub_08063ED0
sub_08063ED0: @ 0x08063ED0
	push {r4, r5, r6, lr}
	bl sub_08007BD4
	adds r4, r0, #0
	ldrb r0, [r4, #2]
	cmp r0, #0
	beq _08063EE4
	subs r0, #1
	strb r0, [r4, #2]
	b _08063F3E
_08063EE4:
	ldrb r0, [r4, #1]
	movs r5, #0x10
	cmp r0, #0
	bne _08063EEE
	ldr r5, _08063F44 @ =0x0000FFF4
_08063EEE:
	ldr r6, _08063F48 @ =0x030044C4
	ldr r2, [r6]
	movs r1, #0
	ldrsb r1, [r4, r1]
	lsls r1, r1, #2
	adds r0, r2, #0
	adds r0, #0x28
	adds r0, r0, r1
	ldr r3, [r0]
	ldrh r0, [r3, #6]
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	adds r0, r1, r0
	strh r0, [r3, #6]
	movs r0, #0
	ldrsb r0, [r4, r0]
	lsls r0, r0, #2
	adds r2, #0x38
	adds r2, r2, r0
	ldr r2, [r2]
	ldrh r0, [r2, #6]
	adds r0, r1, r0
	strh r0, [r2, #6]
	cmp r1, #0
	bge _08063F22
	rsbs r1, r1, #0
_08063F22:
	ldrb r0, [r4, #3]
	adds r0, r0, r1
	strb r0, [r4, #3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xef
	bls _08063F3E
	ldr r1, [r6]
	adds r1, #0x56
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	bl sub_08007A64
_08063F3E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08063F44: .4byte 0x0000FFF4
_08063F48: .4byte 0x030044C4

	thumb_func_start sub_08063F4C
sub_08063F4C: @ 0x08063F4C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r0, _08063F90 @ =sub_08063ED0
	movs r1, #0x90
	movs r2, #0
	bl sub_08007968
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl sub_08007BBC
	movs r1, #0
	strb r4, [r0]
	strb r5, [r0, #1]
	strb r6, [r0, #2]
	strb r1, [r0, #3]
	ldr r0, _08063F94 @ =0x030044C4
	ldr r1, [r0]
	adds r1, #0x56
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08063F90: .4byte sub_08063ED0
_08063F94: .4byte 0x030044C4

	thumb_func_start sub_08063F98
sub_08063F98: @ 0x08063F98
	push {r4, r5, lr}
	ldr r0, _08063FE8 @ =0x030044C4
	ldr r0, [r0]
	adds r0, #0x56
	movs r1, #0
	strh r1, [r0]
	movs r4, #0
	movs r5, #0
_08063FA8:
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	lsrs r2, r5, #0x18
	movs r1, #0
	bl sub_08063F4C
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r5, r0
	adds r4, #1
	cmp r4, #3
	ble _08063FA8
	ldr r1, _08063FE8 @ =0x030044C4
	ldr r0, [r1]
	adds r0, #0x56
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	beq _08063FE2
	adds r4, r1, #0
_08063FD0:
	movs r0, #1
	bl ProcSleep_08002B98
	ldr r0, [r4]
	adds r0, #0x56
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _08063FD0
_08063FE2:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08063FE8: .4byte 0x030044C4

	thumb_func_start sub_08063FEC
sub_08063FEC: @ 0x08063FEC
	push {r4, r5, lr}
	ldr r1, _0806403C @ =0x030044C4
	ldr r1, [r1]
	adds r1, #0x56
	movs r2, #0
	strh r2, [r1]
	movs r4, #0
	lsls r0, r0, #0x18
	asrs r5, r0, #0x18
_08063FFE:
	cmp r4, r5
	beq _0806400E
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	movs r1, #1
	movs r2, #0
	bl sub_08063F4C
_0806400E:
	adds r4, #1
	cmp r4, #3
	ble _08063FFE
	ldr r1, _0806403C @ =0x030044C4
	ldr r0, [r1]
	adds r0, #0x56
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	beq _08064036
	adds r4, r1, #0
_08064024:
	movs r0, #1
	bl ProcSleep_08002B98
	ldr r0, [r4]
	adds r0, #0x56
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _08064024
_08064036:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806403C: .4byte 0x030044C4

	thumb_func_start sub_08064040
sub_08064040: @ 0x08064040
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	ldr r1, _08064078 @ =0x08090186
	mov r0, sp
	movs r2, #4
	bl memcpy
	add r2, sp, #4
	adds r1, r2, #0
	ldr r0, _0806407C @ =0x0809018C
	ldm r0!, {r3, r4, r5}
	stm r1!, {r3, r4, r5}
	ldr r0, [r0]
	str r0, [r1]
	ldr r0, _08064080 @ =0x03004400
	ldrb r0, [r0, #0xa]
	mov sl, r2
	cmp r0, #0x2b
	beq _080640BE
	cmp r0, #0x2b
	bgt _08064084
	cmp r0, #0x2a
	beq _08064090
	b _08064088
	.align 2, 0
_08064078: .4byte 0x08090186
_0806407C: .4byte 0x0809018C
_08064080: .4byte 0x03004400
_08064084:
	cmp r0, #0x2c
	beq _0806408C
_08064088:
	movs r7, #0
	b _080640C0
_0806408C:
	movs r7, #1
	b _080640C0
_08064090:
	movs r7, #2
	b _080640C0
_08064094:
	movs r0, #0xcc
	bl m4aSongNumStart
	lsls r4, r7, #0x18
	asrs r4, r4, #0x18
	adds r0, r4, #0
	bl sub_08063DF0
	adds r0, r4, #0
	movs r1, #2
	bl sub_08063B10
	movs r0, #5
	bl sub_08007828
	mov r1, sp
	adds r0, r1, r4
	ldrb r0, [r0]
	bl ChangeGameState_08008790
	b _080641FE
_080640BE:
	movs r7, #3
_080640C0:
	movs r3, #0xff
	mov sb, r3
	bl sub_080636B8
	bl sub_08063BF4
	bl sub_08063980
	movs r0, #5
	bl sub_080077C4
	movs r0, #0x20
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl FadeIn_08008AF4
	ldr r0, _08064128 @ =0x030024E0
	adds r0, #0x4f
	movs r1, #1
	strb r1, [r0]
	bl sub_08008D34
	bl sub_08063F98
	movs r0, #0
	bl sub_080613CC
	movs r0, #1
	bl sub_08005A88
	movs r0, #1
	bl sub_08005AC0
	movs r0, #0
	bl sub_080059E4
	bl sub_08063E14
	lsls r4, r7, #0x18
	lsrs r0, r4, #0x18
	bl sub_08063E9C
	asrs r4, r4, #0x16
	add r4, sl
	ldr r0, [r4]
	bl sub_080062D0
	ldr r4, _0806412C @ =0x030024B0
	mov r8, r4
	b _080641CC
	.align 2, 0
_08064128: .4byte 0x030024E0
_0806412C: .4byte 0x030024B0
_08064130:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08064094
	mov r5, r8
	ldrh r1, [r5, #4]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0806415C
	movs r0, #0xca
	bl m4aSongNumStart
	lsls r0, r7, #0x18
	movs r1, #0xff
	lsls r1, r1, #0x18
	adds r0, r0, r1
	lsrs r7, r0, #0x18
	cmp r0, #0
	bge _0806417C
	movs r7, #3
	b _0806417C
_0806415C:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0806417C
	movs r0, #0xca
	bl m4aSongNumStart
	lsls r0, r7, #0x18
	movs r3, #0x80
	lsls r3, r3, #0x11
	adds r0, r0, r3
	lsrs r7, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #3
	ble _0806417C
	movs r7, #0
_0806417C:
	mov r4, sb
	lsls r0, r4, #0x18
	asrs r4, r0, #0x18
	lsls r6, r7, #0x18
	asrs r5, r6, #0x18
	cmp r4, r5
	beq _080641C6
	adds r0, r4, #0
	bl sub_08063DF0
	adds r0, r5, #0
	bl sub_08063DA0
	adds r0, r4, #0
	bl sub_08063AE4
	adds r0, r5, #0
	bl sub_08063AC0
	adds r0, r4, #0
	movs r1, #0
	bl sub_08063B10
	adds r0, r5, #0
	movs r1, #1
	bl sub_08063B10
	lsls r0, r5, #2
	add r0, sl
	ldr r0, [r0]
	bl sub_080062D0
	lsrs r4, r6, #0x18
	adds r0, r4, #0
	bl sub_08063E9C
	mov sb, r4
_080641C6:
	movs r0, #1
	bl ProcSleep_08002B98
_080641CC:
	mov r5, r8
	ldrh r1, [r5]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08064130
	movs r0, #0xce
	bl m4aSongNumStart
	lsls r4, r7, #0x18
	asrs r4, r4, #0x18
	adds r0, r4, #0
	bl sub_08063DF0
	adds r0, r4, #0
	bl sub_08063AE4
	adds r0, r4, #0
	movs r1, #0
	bl sub_08063B10
	movs r0, #0x12
	bl ChangeGameState_08008790
	movs r7, #0xff
_080641FE:
	bl sub_08063E7C
	bl sub_08005A2C
	bl sub_08061490
	lsls r0, r7, #0x18
	asrs r0, r0, #0x18
	bl sub_08063FEC
	movs r0, #0
	movs r1, #0x20
	bl sub_080077EC
	movs r0, #0x20
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl FadeOut_080089E8
	bl sub_08008D34
	bl sub_08063A48
	bl sub_08063D38
	bl sub_08063768
	bl sub_08002B0C
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
