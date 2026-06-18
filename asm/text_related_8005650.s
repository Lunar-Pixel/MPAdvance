	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .text
	.ARM
	.syntax unified

	thumb_func_start sub_08005650
sub_08005650: @ 0x08005650
	ldr r0, _08005654 @ =0x082ABA28
	bx lr
	.align 2, 0
_08005654: .4byte 0x082ABA28

	thumb_func_start sub_08005658
sub_08005658: @ 0x08005658
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	lsrs r7, r1, #0x10
	bl sub_08005650
	adds r0, #4
	lsls r1, r7, #2
	adds r1, r1, r0
	ldr r1, [r1]
	lsrs r1, r1, #2
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r5, r0, #0
	ldr r0, [r5]
	lsrs r0, r0, #8
	movs r1, #3
	ands r1, r0
	cmp r1, #0
	beq _08005684
	adds r0, #4
	subs r0, r0, r1
_08005684:
	bl sub_08007CE8
	adds r4, r0, #0
	adds r0, r5, #0
	adds r1, r4, #0
	bl LZ77UnCompReadNormalWrite8bit
	ldr r2, _080056BC @ =0x0203A100
	lsls r1, r6, #1
	adds r1, r1, r6
	lsls r1, r1, #2
	adds r0, r2, #0
	adds r0, #8
	adds r0, r1, r0
	str r4, [r0]
	adds r0, r2, #0
	adds r0, #0xc
	adds r0, r1, r0
	str r7, [r0]
	adds r0, r2, #0
	adds r0, #0x10
	adds r1, r1, r0
	movs r0, #0
	str r0, [r1]
	adds r0, r4, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080056BC: .4byte 0x0203A100

	thumb_func_start sub_080056C0
sub_080056C0: @ 0x080056C0
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r6, _08005708 @ =0x0203A100
	movs r1, #0
	adds r2, r6, #0
	adds r2, #0x10
	movs r5, #0
	movs r7, #3
_080056D0:
	adds r0, r6, #0
	adds r0, #8
	adds r4, r5, r0
	ldr r0, [r4]
	cmp r0, #0
	beq _080056F4
	str r1, [sp]
	str r2, [sp, #4]
	bl sub_08007CF8
	ldr r1, [sp]
	str r1, [r4]
	adds r0, r6, #0
	adds r0, #0xc
	adds r0, r5, r0
	str r1, [r0]
	ldr r2, [sp, #4]
	str r1, [r2]
_080056F4:
	adds r2, #0xc
	adds r5, #0xc
	subs r7, #1
	cmp r7, #0
	bge _080056D0
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08005708: .4byte 0x0203A100

	thumb_func_start sub_0800570C
sub_0800570C: @ 0x0800570C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	lsrs r5, r6, #0x10
	movs r2, #0
	ldr r0, _08005748 @ =0x0203A100
	mov ip, r0
	mov r4, ip
	adds r4, #0x10
	movs r3, #0
	movs r1, #0xc
	add r1, ip
	mov r8, r1
	mov r7, ip
	adds r7, #8
_0800572C:
	mov r1, r8
	adds r0, r3, r1
	ldr r0, [r0]
	cmp r0, r5
	bne _0800574C
	adds r0, r3, r7
	ldr r1, [r0]
	cmp r1, #0
	beq _0800574C
	ldr r0, [r4]
	adds r0, #1
	str r0, [r4]
	adds r0, r1, #0
	b _080057B4
	.align 2, 0
_08005748: .4byte 0x0203A100
_0800574C:
	adds r4, #0xc
	adds r3, #0xc
	adds r2, #1
	cmp r2, #3
	ble _0800572C
	movs r2, #0
	movs r1, #0
_0800575A:
	mov r4, ip
	adds r4, #8
	adds r0, r1, r4
	ldr r0, [r0]
	cmp r0, #0
	bne _0800576A
	lsls r0, r2, #0x18
	b _080057AC
_0800576A:
	adds r1, #0xc
	adds r2, #1
	cmp r2, #3
	ble _0800575A
	movs r3, #1
	rsbs r3, r3, #0
	movs r5, #0
	movs r2, #0
	adds r1, r4, #0
	adds r1, #8
_0800577E:
	ldr r0, [r1]
	cmp r3, r0
	bls _08005788
	adds r3, r0, #0
	adds r5, r2, #0
_08005788:
	adds r1, #0xc
	adds r2, #1
	cmp r2, #3
	ble _0800577E
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #2
	mov r1, ip
	adds r1, #8
	adds r4, r0, r1
	ldr r0, [r4]
	cmp r0, #0
	beq _080057AA
	bl sub_08007CF8
	movs r0, #0
	str r0, [r4]
_080057AA:
	lsls r0, r5, #0x18
_080057AC:
	lsrs r0, r0, #0x18
	adds r1, r6, #0
	bl sub_08005658
_080057B4:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080057C0
sub_080057C0: @ 0x080057C0
	push {lr}
	bl sub_080057D0
	bl sub_08006554
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080057D0
sub_080057D0: @ 0x080057D0
	push {r4, lr}
	sub sp, #4
	movs r0, #0
	str r0, [sp]
	ldr r4, _08005800 @ =0x0203A100
	ldr r2, _08005804 @ =0x0500002C
	mov r0, sp
	adds r1, r4, #0
	bl CpuSet
	ldr r0, _08005808 @ =0x0000FFFF
	adds r2, r0, #0
	movs r1, #1
_080057EA:
	ldrh r0, [r4]
	orrs r0, r2
	strh r0, [r4]
	adds r4, #2
	subs r1, #1
	cmp r1, #0
	bge _080057EA
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08005800: .4byte 0x0203A100
_08005804: .4byte 0x0500002C
_08005808: .4byte 0x0000FFFF

	thumb_func_start sub_0800580C
sub_0800580C: @ 0x0800580C
	push {lr}
	ldr r1, _08005820 @ =0x0203A0F4
	movs r0, #0
	str r0, [r1]
	bl sub_080056C0
	bl sub_080065C4
	pop {r0}
	bx r0
	.align 2, 0
_08005820: .4byte 0x0203A0F4

	thumb_func_start sub_08005824
sub_08005824: @ 0x08005824
	push {lr}
	sub sp, #4
	movs r0, #0xf0
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #3
	bl sub_08006BE8
	bl sub_08003F9C
	movs r0, #0x80
	lsls r0, r0, #1
	str r0, [sp]
	movs r0, #3
	movs r1, #0x1c
	movs r2, #0xa
	movs r3, #0
	bl sub_08004028
	bl sub_080057C0
	movs r0, #1
	bl sub_08004124
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800585C
sub_0800585C: @ 0x0800585C
	push {lr}
	movs r0, #0
	bl sub_08004124
	bl sub_0800580C
	bl sub_08003FE4
	pop {r0}
	bx r0

	thumb_func_start sub_08005870
sub_08005870: @ 0x08005870
	push {lr}
	sub sp, #4
	movs r1, #0x80
	lsls r1, r1, #3
	movs r0, #0
	bl sub_08006BE8
	bl sub_08003F9C
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [sp]
	movs r0, #2
	movs r1, #0x1c
	movs r2, #0xe
	movs r3, #0
	bl sub_08004028
	bl sub_080057C0
	movs r0, #1
	bl sub_08004124
	add sp, #4
	pop {r0}
	bx r0

	thumb_func_start sub_080058A4
sub_080058A4: @ 0x080058A4
	push {lr}
	movs r0, #0
	bl sub_08004124
	bl sub_0800580C
	bl sub_08003FE4
	pop {r0}
	bx r0

	thumb_func_start sub_080058B8
sub_080058B8: @ 0x080058B8
	push {r4, r5, r6, lr}
	ldr r4, _080058EC @ =0x0203A100
	adds r5, r4, #0
	adds r5, #0x3c
	adds r6, r4, #0
	adds r6, #0x3d
_080058C4:
	movs r0, #0
	ldrsb r0, [r5, r0]
	cmp r0, #0
	beq _080058E2
	movs r0, #0
	strb r0, [r5]
	ldr r0, [r4, #0x38]
	cmp r0, #0
	beq _080058DE
	movs r2, #0
	ldrsh r1, [r4, r2]
	bl sub_080060A8
_080058DE:
	movs r0, #1
	strb r0, [r6]
_080058E2:
	movs r0, #1
	bl sub_08002B98
	b _080058C4
	.align 2, 0
_080058EC: .4byte 0x0203A100

	thumb_func_start sub_080058F0
sub_080058F0: @ 0x080058F0
	push {r4, lr}
	ldr r4, _08005910 @ =0x0203A100
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _08005908
	ldr r0, _08005914 @ =sub_080058B8
	movs r2, #0x80
	lsls r2, r2, #4
	movs r1, #0x40
	bl sub_08002A44
	str r0, [r4, #4]
_08005908:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08005910: .4byte 0x0203A100
_08005914: .4byte sub_080058B8

	thumb_func_start sub_08005918
sub_08005918: @ 0x08005918
	push {r4, lr}
	ldr r4, _08005930 @ =0x0203A100
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0800592A
	bl sub_08002AA4
	movs r0, #0
	str r0, [r4, #4]
_0800592A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08005930: .4byte 0x0203A100

	thumb_func_start sub_08005934
sub_08005934: @ 0x08005934
	push {r4, r5, lr}
	sub sp, #4
	ldr r4, _080059A0 @ =0x0203A100
	movs r0, #0
	ldrsh r1, [r4, r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080059D6
	ldr r1, _080059A4 @ =0xFFFFFF00
	ldr r0, [sp]
	ands r0, r1
	ldr r1, _080059A8 @ =0xFFFF00FF
	ands r0, r1
	movs r1, #0xe0
	lsls r1, r1, #4
	orrs r0, r1
	ldr r1, _080059AC @ =0xFF00FFFF
	ands r0, r1
	movs r1, #0xf0
	lsls r1, r1, #0xd
	orrs r0, r1
	ldr r1, _080059B0 @ =0x00FFFFFF
	ands r0, r1
	movs r1, #0xc0
	lsls r1, r1, #0x13
	orrs r0, r1
	str r0, [sp]
	mov r0, sp
	movs r1, #2
	bl sub_08004300
	strh r0, [r4]
	movs r5, #0
	movs r4, #0
_0800597A:
	lsls r0, r4, #0xf
	adds r5, r5, r0
	adds r4, #1
	cmp r4, #7
	ble _0800597A
	movs r0, #0xcf
	bl m4aSongNumStart
	ldr r1, _080059B4 @ =0x030024E0
	lsrs r0, r5, #0x10
	strh r0, [r1, #0x12]
	lsls r0, r4, #0xf
	subs r5, r5, r0
	subs r4, #1
	cmp r4, #0
	bge _080059B8
	movs r0, #0
	strh r0, [r1, #0x12]
	b _080059D2
	.align 2, 0
_080059A0: .4byte 0x0203A100
_080059A4: .4byte 0xFFFFFF00
_080059A8: .4byte 0xFFFF00FF
_080059AC: .4byte 0xFF00FFFF
_080059B0: .4byte 0x00FFFFFF
_080059B4: .4byte 0x030024E0
_080059B8:
	movs r0, #1
	bl sub_08002B98
	ldr r1, _080059E0 @ =0x030024E0
	lsrs r0, r5, #0x10
	movs r2, #0
	strh r0, [r1, #0x12]
	lsls r0, r4, #0xf
	subs r5, r5, r0
	subs r4, #1
	cmp r4, #0
	bge _080059B8
	strh r2, [r1, #0x12]
_080059D2:
	bl sub_080058F0
_080059D6:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080059E0: .4byte 0x030024E0

	thumb_func_start sub_080059E4
sub_080059E4: @ 0x080059E4
	push {r4, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	bl sub_08005934
	adds r0, r4, #0
	bl sub_08006744
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080059FC
sub_080059FC: @ 0x080059FC
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	ldr r6, _08005A28 @ =0x0203A100
	movs r0, #0
	ldrsh r1, [r6, r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _08005A20
	bl sub_080058F0
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08004300
	strh r0, [r6]
_08005A20:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08005A28: .4byte 0x0203A100

	thumb_func_start sub_08005A2C
sub_08005A2C: @ 0x08005A2C
	push {r4, r5, lr}
	ldr r5, _08005A58 @ =0x0203A100
	ldrh r4, [r5]
	bl sub_08005918
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	movs r0, #1
	rsbs r0, r0, #0
	cmp r4, r0
	beq _08005A4C
	adds r0, r4, #0
	bl sub_080043F0
	ldr r0, _08005A5C @ =0x0000FFFF
	strh r0, [r5]
_08005A4C:
	bl sub_080067F0
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08005A58: .4byte 0x0203A100
_08005A5C: .4byte 0x0000FFFF

	thumb_func_start sub_08005A60
sub_08005A60: @ 0x08005A60
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _08005A70 @ =0x0203A100
	adds r1, #0x3f
	ldrb r2, [r1]
	orrs r0, r2
	strb r0, [r1]
	bx lr
	.align 2, 0
_08005A70: .4byte 0x0203A100

	thumb_func_start sub_08005A74
sub_08005A74: @ 0x08005A74
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _08005A84 @ =0x0203A100
	adds r2, #0x3f
	ldrb r1, [r2]
	bics r1, r0
	strb r1, [r2]
	bx lr
	.align 2, 0
_08005A84: .4byte 0x0203A100

	thumb_func_start sub_08005A88
sub_08005A88: @ 0x08005A88
	ldr r1, _08005A90 @ =0x0203A100
	adds r1, #0x40
	strb r0, [r1]
	bx lr
	.align 2, 0
_08005A90: .4byte 0x0203A100

	thumb_func_start sub_08005A94
sub_08005A94: @ 0x08005A94
	ldr r0, _08005A9C @ =0x0203A100
	adds r0, #0x40
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_08005A9C: .4byte 0x0203A100

	thumb_func_start sub_08005AA0
sub_08005AA0: @ 0x08005AA0
	ldr r0, _08005AAC @ =0x0203A100
	adds r0, #0x40
	movs r1, #3
	strb r1, [r0]
	bx lr
	.align 2, 0
_08005AAC: .4byte 0x0203A100

	thumb_func_start sub_08005AB0
sub_08005AB0: @ 0x08005AB0
	ldr r0, _08005ABC @ =0x0203A100
	adds r0, #0x40
	movs r1, #0
	strb r1, [r0]
	bx lr
	.align 2, 0
_08005ABC: .4byte 0x0203A100

	thumb_func_start sub_08005AC0
sub_08005AC0: @ 0x08005AC0
	ldr r1, _08005AC8 @ =0x0203A100
	adds r1, #0x3e
	strb r0, [r1]
	bx lr
	.align 2, 0
_08005AC8: .4byte 0x0203A100

	thumb_func_start sub_08005ACC
sub_08005ACC: @ 0x08005ACC
	ldr r0, _08005ADC @ =0x0203A100
	movs r1, #0
	str r1, [r0, #0x38]
	adds r0, #0x3c
	movs r1, #1
	strb r1, [r0]
	bx lr
	.align 2, 0
_08005ADC: .4byte 0x0203A100

	thumb_func_start sub_08005AE0
sub_08005AE0: @ 0x08005AE0
	push {r4, lr}
	ldr r1, _08005B14 @ =0x0203A100
	adds r0, r1, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _08005B0C
	adds r1, #0x3d
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne _08005B0C
	adds r4, r1, #0
_08005AFE:
	movs r0, #1
	bl sub_08002B98
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #0
	beq _08005AFE
_08005B0C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08005B14: .4byte 0x0203A100

	thumb_func_start sub_08005B18
sub_08005B18: @ 0x08005B18
	push {lr}
	ldr r0, _08005B28 @ =0x0203A100
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl sub_08004514
	pop {r0}
	bx r0
	.align 2, 0
_08005B28: .4byte 0x0203A100

	thumb_func_start sub_08005B2C
sub_08005B2C: @ 0x08005B2C
	push {r4, r5, lr}
	ldr r0, _08005B5C @ =0x0203A100
	adds r0, #0x3f
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08005B86
	ldr r4, _08005B60 @ =0x030024B0
	ldrh r1, [r4, #2]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08005B86
	bl sub_080065EC
	movs r0, #1
	bl sub_08002B98
	adds r5, r4, #0
	ldr r4, _08005B64 @ =0x02000003
	b _08005B6E
	.align 2, 0
_08005B5C: .4byte 0x0203A100
_08005B60: .4byte 0x030024B0
_08005B64: .4byte 0x02000003
_08005B68:
	movs r0, #1
	bl sub_08002B98
_08005B6E:
	ldr r0, [r5]
	ands r0, r4
	cmp r0, #0
	beq _08005B68
	movs r0, #0xd3
	bl m4aSongNumStart
	bl sub_08006688
	movs r0, #1
	bl sub_08002B98
_08005B86:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08005B8C
sub_08005B8C: @ 0x08005B8C
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r5, _08005BB0 @ =0x030024B0
_08005B94:
	movs r0, #1
	bl sub_08002B98
	ldrh r0, [r5]
	ands r0, r4
	cmp r0, #0
	beq _08005B94
	movs r0, #1
	bl sub_08002B98
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08005BB0: .4byte 0x030024B0

	thumb_func_start sub_08005BB4
sub_08005BB4: @ 0x08005BB4
	push {r4, lr}
	adds r4, r2, #0
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r2, r1, #0x18
	cmp r3, #0xf
	bhi _08005BD6
	ldr r0, _08005BDC @ =0x0203A100
	adds r1, r0, #0
	adds r1, #0x60
	adds r1, r3, r1
	strb r2, [r1]
	lsls r1, r3, #2
	adds r0, #0x70
	adds r1, r1, r0
	str r4, [r1]
_08005BD6:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08005BDC: .4byte 0x0203A100

	thumb_func_start sub_08005BE0
sub_08005BE0: @ 0x08005BE0
	push {r4, r5, lr}
	sub sp, #0xc
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r1, _08005C0C @ =0x0807EEDC
	mov r0, sp
	movs r2, #0xb
	bl memcpy
	mov r1, sp
	adds r0, r1, r4
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r2, r5, #0
	bl sub_08005BB4
	add sp, #0xc
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08005C0C: .4byte 0x0807EEDC

	thumb_func_start sub_08005C10
sub_08005C10: @ 0x08005C10
	push {lr}
	adds r2, r1, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #8
	bl sub_08005BB4
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08005C24
sub_08005C24: @ 0x08005C24
	push {lr}
	adds r2, r1, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #9
	bl sub_08005BB4
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08005C38
sub_08005C38: @ 0x08005C38
	push {r4, lr}
	adds r4, r1, #0
	bl sub_08006828
	adds r1, r4, #0
	bl sub_080045FC
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_08005C50
sub_08005C50: @ 0x08005C50
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r0, #0x45
	ldrb r0, [r0]
	adds r4, r5, #0
	adds r4, #0x44
	strb r0, [r4]
	bl sub_080066A4
	movs r0, #0
	ldrsb r0, [r4, r0]
	lsls r0, r0, #2
	adds r0, r5, r0
	adds r1, r0, #0
	adds r1, #0x48
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	lsls r1, r1, #0x13
	ldr r2, _08005CBC @ =0xFFFF0000
	adds r1, r1, r2
	adds r0, #0x49
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #3
	adds r0, #2
	lsls r0, r0, #0x10
	lsrs r6, r1, #0x10
	orrs r6, r0
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	asrs r1, r6, #0x10
	bl sub_0800671C
	movs r0, #8
	bl sub_08002B98
	adds r0, r5, #0
	adds r0, #0x49
	adds r2, r5, #0
	adds r2, #0x4d
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r1, r0
	bne _08005CD0
	movs r0, #0x20
	mov r8, r0
	movs r7, #0x10
	b _08005D88
	.align 2, 0
_08005CBC: .4byte 0xFFFF0000
_08005CC0:
	movs r0, #0xce
	bl m4aSongNumStart
	adds r1, r5, #0
	adds r1, #0x44
	movs r0, #0xff
	strb r0, [r1]
	b _08005DA8
_08005CD0:
	movs r2, #0x40
	mov r8, r2
	movs r7, #0x80
	b _08005D88
_08005CD8:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08005CEC
	ldr r0, _08005D1C @ =0x03004400
	ldrb r0, [r0, #8]
	cmp r0, #8
	beq _08005CEC
	cmp r0, #0x26
	bne _08005CC0
_08005CEC:
	ldr r0, _08005D20 @ =0x030024B0
	ldrh r0, [r0]
	mov r2, r8
	ands r2, r0
	cmp r2, #0
	beq _08005D24
	adds r1, r5, #0
	adds r1, #0x44
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	adds r4, r1, #0
	cmp r0, #0
	bge _08005D14
	adds r0, r5, #0
	adds r0, #0x46
	ldrb r0, [r0]
	subs r0, #1
	strb r0, [r4]
_08005D14:
	movs r0, #0xca
	bl m4aSongNumStart
	b _08005D4E
	.align 2, 0
_08005D1C: .4byte 0x03004400
_08005D20: .4byte 0x030024B0
_08005D24:
	ands r0, r7
	adds r4, r5, #0
	adds r4, #0x44
	cmp r0, #0
	beq _08005D4E
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	adds r1, r5, #0
	adds r1, #0x46
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	cmp r0, r1
	blt _08005D48
	strb r2, [r4]
_08005D48:
	movs r0, #0xca
	bl m4aSongNumStart
_08005D4E:
	movs r0, #0
	ldrsb r0, [r4, r0]
	lsls r0, r0, #2
	adds r0, r5, r0
	adds r1, r0, #0
	adds r1, #0x48
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	lsls r1, r1, #0x13
	ldr r2, _08005DB8 @ =0xFFFF0000
	adds r1, r1, r2
	adds r0, #0x49
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #3
	adds r0, #2
	lsls r0, r0, #0x10
	lsrs r6, r1, #0x10
	orrs r6, r0
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	asrs r1, r6, #0x10
	bl sub_0800671C
	movs r0, #1
	bl sub_08002B98
_08005D88:
	ldr r0, _08005DBC @ =0x030024B0
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08005CD8
	ldr r0, _08005DC0 @ =0x0203A100
	adds r0, #0x3f
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08005DA8
	movs r0, #0xcc
	bl m4aSongNumStart
_08005DA8:
	bl sub_08006700
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08005DB8: .4byte 0xFFFF0000
_08005DBC: .4byte 0x030024B0
_08005DC0: .4byte 0x0203A100

	thumb_func_start sub_08005DC4
sub_08005DC4: @ 0x08005DC4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x4c
	adds r4, r1, #0
	lsls r0, r0, #0x10
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r1, _08005E20 @ =0x0203A100
	mov sb, r1
	lsrs r2, r0, #0x10
	str r2, [sp, #0x44]
	asrs r0, r0, #0x10
	bl sub_08003F78
	mov sl, r0
	lsls r0, r4, #2
	mov r1, sb
	adds r1, #0x70
	adds r0, r0, r1
	ldr r5, [r0]
	ldr r0, _08005E24 @ =0x020335C0
	ldrb r0, [r0, #0xa]
	str r0, [sp, #0x48]
	movs r0, #0
	str r0, [sp, #0x40]
	add r0, sp, #0x40
	ldr r2, _08005E28 @ =0x05000010
	mov r1, sp
	bl CpuSet
	mov r0, sb
	adds r0, #0x60
	adds r4, r4, r0
	ldrb r0, [r4]
	cmp r0, #0xa
	bls _08005E14
	b _0800608E
_08005E14:
	lsls r0, r0, #2
	ldr r1, _08005E2C @ =_08005E30
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08005E20: .4byte 0x0203A100
_08005E24: .4byte 0x020335C0
_08005E28: .4byte 0x05000010
_08005E2C: .4byte _08005E30
_08005E30: @ jump table
	.4byte _08005EA4 @ case 0
	.4byte _08005E5C @ case 1
	.4byte _08005E6C @ case 2
	.4byte _08005E6C @ case 3
	.4byte _08005E76 @ case 4
	.4byte _08005E84 @ case 5
	.4byte _08005EA4 @ case 6
	.4byte _08005E94 @ case 7
	.4byte _08005F68 @ case 8
	.4byte _08005FC0 @ case 9
	.4byte _08005FDC @ case 10
_08005E5C:
	ldr r0, _08005E68 @ =0x0807ED7C
	lsls r1, r5, #2
	adds r1, r1, r0
	ldr r0, [r1]
	b _08005FDE
	.align 2, 0
_08005E68: .4byte 0x0807ED7C
_08005E6C:
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	bl sub_08001980
	b _08005FE2
_08005E76:
	ldr r0, _08005E80 @ =0x0807ED8C
	lsls r1, r5, #2
	adds r1, r1, r0
	ldr r0, [r1]
	b _08005FDE
	.align 2, 0
_08005E80: .4byte 0x0807ED8C
_08005E84:
	ldr r0, _08005E90 @ =0x0807EDC4
	lsls r1, r5, #2
	adds r1, r1, r0
	ldr r0, [r1]
	b _08005FDE
	.align 2, 0
_08005E90: .4byte 0x0807EDC4
_08005E94:
	ldr r0, _08005EA0 @ =0x0807EEAC
	subs r1, r5, #1
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	b _08005FDE
	.align 2, 0
_08005EA0: .4byte 0x0807EEAC
_08005EA4:
	mov r4, sp
	adds r6, r5, #0
	ldrb r0, [r6]
	cmp r0, #0
	bne _08005EB0
	b _08005FB6
_08005EB0:
	movs r5, #0x80
_08005EB2:
	ldrb r0, [r6]
	adds r6, #1
	bl sub_080050EC
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0xcf
	bhi _08005EC8
	adds r0, r1, #0
	adds r0, #0x30
	b _08005F5C
_08005EC8:
	cmp r1, #0xd4
	bhi _08005ED8
	adds r0, r1, #0
	subs r0, #0x3a
	strb r0, [r4]
	adds r4, #1
	strb r5, [r4]
	b _08005F5E
_08005ED8:
	cmp r1, #0xd9
	bhi _08005EE8
	adds r0, r1, #0
	subs r0, #0x3a
	strb r0, [r4]
	adds r4, #1
	strb r5, [r4]
	b _08005F5E
_08005EE8:
	cmp r1, #0xde
	bhi _08005EF8
	adds r0, r1, #0
	subs r0, #0x3a
	strb r0, [r4]
	adds r4, #1
	strb r5, [r4]
	b _08005F5E
_08005EF8:
	cmp r1, #0xe3
	bhi _08005F08
	adds r0, r1, #0
	subs r0, #0x35
	strb r0, [r4]
	adds r4, #1
	strb r5, [r4]
	b _08005F5E
_08005F08:
	cmp r1, #0xe8
	bhi _08005F12
	adds r0, r1, #0
	subs r0, #0x3a
	b _08005F56
_08005F12:
	cmp r1, #0xed
	bhi _08005F22
	adds r0, r1, #0
	subs r0, #0x13
	strb r0, [r4]
	adds r4, #1
	strb r5, [r4]
	b _08005F5E
_08005F22:
	cmp r1, #0xf2
	bhi _08005F32
	adds r0, r1, #0
	subs r0, #0x13
	strb r0, [r4]
	adds r4, #1
	strb r5, [r4]
	b _08005F5E
_08005F32:
	cmp r1, #0xf7
	bhi _08005F42
	adds r0, r1, #0
	subs r0, #0x13
	strb r0, [r4]
	adds r4, #1
	strb r5, [r4]
	b _08005F5E
_08005F42:
	cmp r1, #0xfc
	bhi _08005F52
	adds r0, r1, #0
	subs r0, #0xe
	strb r0, [r4]
	adds r4, #1
	strb r5, [r4]
	b _08005F5E
_08005F52:
	adds r0, r1, #0
	subs r0, #0x13
_08005F56:
	strb r0, [r4]
	adds r4, #1
	movs r0, #0x81
_08005F5C:
	strb r0, [r4]
_08005F5E:
	adds r4, #1
	ldrb r0, [r6]
	cmp r0, #0
	bne _08005EB2
	b _08005FB6
_08005F68:
	movs r7, #0
	movs r3, #0
	mov r8, r3
	ldr r6, _08005FBC @ =0x00989680
_08005F70:
	cmp r7, #0
	bne _08005F8A
	adds r0, r5, #0
	adds r1, r6, #0
	bl __udivsi3
	cmp r0, #0
	beq _08005F82
	movs r7, #1
_08005F82:
	cmp r7, #0
	bne _08005F8A
	cmp r6, #1
	bne _08005F9E
_08005F8A:
	mov r4, sp
	add r4, r8
	adds r0, r5, #0
	adds r1, r6, #0
	bl __udivsi3
	adds r0, #0x30
	strb r0, [r4]
	movs r0, #1
	add r8, r0
_08005F9E:
	adds r0, r5, #0
	adds r1, r6, #0
	bl __umodsi3
	adds r5, r0, #0
	adds r0, r6, #0
	movs r1, #0xa
	bl __udivsi3
	adds r6, r0, #0
	cmp r6, #0
	bne _08005F70
_08005FB6:
	mov r4, sp
	b _08005FE4
	.align 2, 0
_08005FBC: .4byte 0x00989680
_08005FC0:
	ldr r1, [sp, #0x44]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	adds r1, r5, #0
	bl sub_080049A8
	b _0800608E
_08005FCE:
	ldr r0, _08005FD8 @ =0x020335C0
	add r2, sp, #0x48
	ldrb r2, [r2]
	strb r2, [r0, #0xa]
	b _0800608E
	.align 2, 0
_08005FD8: .4byte 0x020335C0
_08005FDC:
	adds r0, r5, #0
_08005FDE:
	bl sub_08006828
_08005FE2:
	adds r4, r0, #0
_08005FE4:
	ldrb r0, [r4]
	cmp r0, #0
	beq _0800608E
	ldr r3, [sp, #0x44]
	lsls r5, r3, #0x10
	asrs r6, r5, #0x10
_08005FF0:
	mov r1, sb
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, r6
	bne _08006008
	ldr r0, _08006020 @ =0x0203A100
	adds r0, #0x3c
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _08005FCE
_08006008:
	ldrb r1, [r4]
	ldrb r2, [r4, #1]
	cmp r1, #0x10
	beq _08006014
	cmp r1, #0x20
	bne _08006024
_08006014:
	mov r3, sl
	ldrb r0, [r3, #8]
	adds r0, #1
	strb r0, [r3, #8]
	b _08006086
	.align 2, 0
_08006020: .4byte 0x0203A100
_08006024:
	cmp r1, #0x1e
	bne _0800603E
	cmp r2, #8
	bne _08006034
	ldr r0, [sp, #0x48]
	bl sub_080044DC
	b _0800603A
_08006034:
	adds r0, r2, #0
	bl sub_080044DC
_0800603A:
	adds r4, #1
	b _08006086
_0800603E:
	adds r0, r2, #0
	subs r0, #0x80
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bhi _08006058
	adds r0, r1, #0
	adds r1, r2, #0
	bl sub_08005080
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r4, #1
_08006058:
	subs r1, #0x30
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	asrs r0, r5, #0x10
	bl sub_08004A9C
	mov r2, sb
	adds r2, #0x40
	ldrb r0, [r2]
	cmp r0, #0
	beq _08006086
	ldr r0, _080060A0 @ =0x030024B0
	ldrh r1, [r0, #2]
	ldr r3, _080060A4 @ =0x00000202
	adds r0, r3, #0
	ands r0, r1
	movs r1, #1
	cmp r0, #0
	bne _08006080
	ldrb r1, [r2]
_08006080:
	adds r0, r1, #0
	bl sub_08002B98
_08006086:
	adds r4, #1
	ldrb r0, [r4]
	cmp r0, #0
	bne _08005FF0
_0800608E:
	add sp, #0x4c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080060A0: .4byte 0x030024B0
_080060A4: .4byte 0x00000202

	thumb_func_start sub_080060A8
sub_080060A8: @ 0x080060A8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sb, r1
	bl sub_08006828
	adds r4, r0, #0
	ldr r7, _080060EC @ =0x0203A100
	mov r1, sb
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	bl sub_08003F78
	adds r6, r0, #0
	ldr r0, _080060F0 @ =0x020335C0
	ldrb r2, [r0, #0xa]
	mov r8, r2
	ldrb r0, [r0, #0xb]
	mov sl, r0
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	adds r1, r7, #0
	adds r1, #0x44
	ldr r2, _080060F4 @ =0x0100000E
	mov r0, sp
	bl CpuSet
	b _0800628C
	.align 2, 0
_080060EC: .4byte 0x0203A100
_080060F0: .4byte 0x020335C0
_080060F4: .4byte 0x0100000E
_080060F8:
	movs r3, #0
	ldrsh r0, [r7, r3]
	mov r2, sb
	lsls r1, r2, #0x10
	asrs r2, r1, #0x10
	adds r5, r1, #0
	cmp r0, r2
	bne _0800612C
	ldr r0, _08006124 @ =0x0203A100
	adds r0, #0x3c
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _0800612C
	ldr r0, _08006128 @ =0x020335C0
	mov r3, r8
	strb r3, [r0, #0xa]
	mov r1, sl
	strb r1, [r0, #0xb]
	b _080062B2
	.align 2, 0
_08006124: .4byte 0x0203A100
_08006128: .4byte 0x020335C0
_0800612C:
	ldrb r1, [r4]
	ldrb r2, [r4, #1]
	cmp r1, #0xff
	bne _0800613A
	bl sub_08005B2C
	b _0800628A
_0800613A:
	cmp r1, #0x2f
	bls _08006140
	b _08006244
_08006140:
	adds r0, r1, #0
	subs r0, #0xa
	cmp r0, #0x16
	bhi _08006238
	lsls r0, r0, #2
	ldr r1, _08006154 @ =_08006158
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08006154: .4byte _08006158
_08006158: @ jump table
	.4byte _080061B4 @ case 0
	.4byte _080061D2 @ case 1
	.4byte _08006238 @ case 2
	.4byte _080061DA @ case 3
	.4byte _08006238 @ case 4
	.4byte _080061E6 @ case 5
	.4byte _0800623C @ case 6
	.4byte _08006238 @ case 7
	.4byte _08006238 @ case 8
	.4byte _08006238 @ case 9
	.4byte _08006238 @ case 10
	.4byte _08006238 @ case 11
	.4byte _08006238 @ case 12
	.4byte _08006238 @ case 13
	.4byte _08006238 @ case 14
	.4byte _08006238 @ case 15
	.4byte _08006238 @ case 16
	.4byte _08006238 @ case 17
	.4byte _08006238 @ case 18
	.4byte _08006238 @ case 19
	.4byte _08006218 @ case 20
	.4byte _0800622C @ case 21
	.4byte _0800623C @ case 22
_080061B4:
	movs r0, #0
	strb r0, [r6, #8]
	bl sub_08004454
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080061CA
	ldrb r0, [r6, #9]
	adds r0, #1
	strb r0, [r6, #9]
	b _0800628A
_080061CA:
	ldrb r0, [r6, #9]
	adds r0, #2
	strb r0, [r6, #9]
	b _0800628A
_080061D2:
	asrs r0, r5, #0x10
	bl sub_08004514
	b _0800628A
_080061DA:
	adds r0, r7, #0
	adds r0, #0x46
	ldrb r0, [r0]
	adds r1, r7, #0
	adds r1, #0x45
	strb r0, [r1]
_080061E6:
	adds r2, r7, #0
	adds r2, #0x46
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r0, r0, #2
	adds r0, r7, r0
	ldrb r1, [r6, #8]
	ldrb r3, [r6, #4]
	adds r1, r1, r3
	subs r1, #2
	adds r0, #0x48
	strb r1, [r0]
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r0, r0, #2
	adds r0, r7, r0
	ldrb r1, [r6, #9]
	ldrb r3, [r6, #5]
	adds r1, r1, r3
	adds r0, #0x49
	strb r1, [r0]
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	b _0800628A
_08006218:
	cmp r2, #8
	bne _08006224
	mov r0, r8
	bl sub_080044DC
	b _08006238
_08006224:
	adds r0, r2, #0
	bl sub_080044DC
	b _08006238
_0800622C:
	asrs r0, r5, #0x10
	subs r1, r2, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl sub_08005DC4
_08006238:
	adds r4, #1
	b _0800628A
_0800623C:
	ldrb r0, [r6, #8]
	adds r0, #1
	strb r0, [r6, #8]
	b _0800628A
_08006244:
	adds r0, r2, #0
	subs r0, #0x80
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bhi _0800625E
	adds r0, r1, #0
	adds r1, r2, #0
	bl sub_08005080
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r4, #1
_0800625E:
	asrs r0, r5, #0x10
	subs r1, #0x30
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08004A9C
	adds r2, r7, #0
	adds r2, #0x40
	ldrb r0, [r2]
	cmp r0, #0
	beq _0800628A
	ldr r0, _080062C4 @ =0x030024B0
	ldrh r1, [r0, #2]
	ldr r0, _080062C8 @ =0x00000202
	ands r0, r1
	movs r1, #1
	cmp r0, #0
	bne _08006284
	ldrb r1, [r2]
_08006284:
	adds r0, r1, #0
	bl sub_08002B98
_0800628A:
	adds r4, #1
_0800628C:
	ldrb r0, [r4]
	cmp r0, #0
	beq _08006294
	b _080060F8
_08006294:
	adds r0, r7, #0
	adds r0, #0x46
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _080062A8
	adds r0, r7, #0
	bl sub_08005C50
_080062A8:
	ldr r0, _080062CC @ =0x020335C0
	mov r1, r8
	strb r1, [r0, #0xa]
	mov r2, sl
	strb r2, [r0, #0xb]
_080062B2:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080062C4: .4byte 0x030024B0
_080062C8: .4byte 0x00000202
_080062CC: .4byte 0x020335C0

	thumb_func_start sub_080062D0
sub_080062D0: @ 0x080062D0
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080062F0 @ =0x0203A100
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl sub_08004514
	bl sub_080058F0
	adds r0, r4, #0
	bl sub_080062F4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080062F0: .4byte 0x0203A100

	thumb_func_start sub_080062F4
sub_080062F4: @ 0x080062F4
	push {lr}
	ldr r1, _08006310 @ =0x0203A100
	str r0, [r1, #0x38]
	adds r2, r1, #0
	adds r2, #0x3c
	movs r3, #0
	movs r0, #1
	strb r0, [r2]
	adds r1, #0x3d
	strb r3, [r1]
	bl sub_08005AE0
	pop {r0}
	bx r0
	.align 2, 0
_08006310: .4byte 0x0203A100

	thumb_func_start sub_08006314
sub_08006314: @ 0x08006314
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	mov sb, r0
	adds r4, r1, #0
	lsls r5, r2, #0x18
	lsrs r5, r5, #0x18
	ldr r0, _080063BC @ =0x0203A100
	mov r8, r0
	movs r0, #0xd0
	bl m4aSongNumStart
	ldrb r0, [r4]
	adds r0, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #8
	ldr r1, _080063C0 @ =0xFF00FFFF
	ldr r3, [sp, #4]
	ands r3, r1
	orrs r3, r0
	ldrb r0, [r4, #1]
	adds r0, #2
	lsls r0, r0, #0x18
	ldr r1, _080063C4 @ =0x00FFFFFF
	ands r3, r1
	orrs r3, r0
	lsls r0, r3, #8
	asrs r0, r0, #0x18
	lsls r0, r0, #0x18
	asrs r1, r0, #0x18
	lsrs r0, r0, #0x1f
	adds r1, r1, r0
	asrs r1, r1, #1
	movs r0, #0xf
	subs r0, r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _080063C8 @ =0xFFFFFF00
	ands r2, r3
	orrs r2, r0
	asrs r0, r2, #0x18
	lsls r0, r0, #0x18
	asrs r1, r0, #0x18
	lsrs r0, r0, #0x1f
	adds r1, r1, r0
	asrs r1, r1, #1
	movs r0, #7
	subs r0, r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x10
	ldr r1, _080063CC @ =0xFFFF00FF
	ands r2, r1
	orrs r2, r0
	str r2, [sp, #4]
	add r4, sp, #4
	adds r0, r4, #0
	movs r1, #2
	bl sub_08004300
	lsls r7, r0, #0x10
	asrs r6, r7, #0x10
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_0800449C
	ldrb r0, [r4]
	adds r0, #2
	strb r0, [r4]
	ldrb r0, [r4, #2]
	subs r0, #2
	strb r0, [r4, #2]
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_08004478
	cmp r5, #0
	bne _080063D0
	mov r0, sb
	adds r1, r6, #0
	bl sub_080060A8
	b _0800646C
	.align 2, 0
_080063BC: .4byte 0x0203A100
_080063C0: .4byte 0xFF00FFFF
_080063C4: .4byte 0x00FFFFFF
_080063C8: .4byte 0xFFFFFF00
_080063CC: .4byte 0xFFFF00FF
_080063D0:
	mov r5, sb
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_080049A8
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	mov r1, r8
	adds r1, #0x44
	ldr r2, _08006404 @ =0x0100000E
	mov r0, sp
	bl CpuSet
	ldrb r0, [r5]
	mov r6, r8
	adds r6, #0x46
	cmp r0, #0
	beq _08006440
	adds r2, r6, #0
	adds r3, r4, #0
_080063FA:
	lsls r0, r0, #0x18
	cmp r0, #0
	bge _08006408
	adds r5, #1
	b _08006438
	.align 2, 0
_08006404: .4byte 0x0100000E
_08006408:
	lsrs r0, r0, #0x18
	cmp r0, #0xa
	bne _08006438
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r0, r0, #2
	add r0, r8
	ldrb r1, [r4]
	subs r1, #2
	adds r0, #0x48
	strb r1, [r0]
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r0, r0, #2
	add r0, r8
	ldrb r1, [r3, #1]
	adds r0, #0x49
	strb r1, [r0]
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	ldrb r0, [r3, #1]
	adds r0, #2
	strb r0, [r3, #1]
_08006438:
	adds r5, #1
	ldrb r0, [r5]
	cmp r0, #0
	bne _080063FA
_08006440:
	movs r0, #0
	ldrsb r0, [r6, r0]
	lsls r0, r0, #2
	add r0, r8
	ldrb r1, [r4]
	subs r1, #2
	adds r0, #0x48
	strb r1, [r0]
	movs r0, #0
	ldrsb r0, [r6, r0]
	lsls r0, r0, #2
	add r0, r8
	add r1, sp, #4
	ldrb r1, [r1, #1]
	adds r0, #0x49
	strb r1, [r0]
	ldrb r0, [r6]
	adds r0, #1
	strb r0, [r6]
	mov r0, r8
	bl sub_08005C50
_0800646C:
	asrs r1, r7, #0x10
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0800647C
	adds r0, r1, #0
	bl sub_080043F0
_0800647C:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
