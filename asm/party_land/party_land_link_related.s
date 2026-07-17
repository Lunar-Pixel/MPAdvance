	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .text
	.ARM
	.syntax unified

	thumb_func_start sub_0806E448
sub_0806E448: @ 0x0806E448
	push {r4, lr}
	adds r4, r1, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	movs r1, #0
	b _0806E45C
_0806E454:
	strb r3, [r4]
	adds r0, #1
	adds r4, #1
	adds r1, #1
_0806E45C:
	cmp r1, r2
	bge _0806E466
	ldrb r3, [r0]
	cmp r3, #0
	bne _0806E454
_0806E466:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0806E46C
sub_0806E46C: @ 0x0806E46C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	lsls r4, r0, #3
	subs r4, r4, r0
	lsls r4, r4, #2
	ldr r0, _0806E4E8 @ =0x08077448
	adds r4, r4, r0
	ldr r6, _0806E4EC @ =0x02030024
	ldr r0, _0806E4F0 @ =0x03004400
	ldrb r0, [r0, #8]
	strb r0, [r6]
	ldrh r1, [r4, #4]
	mov r0, r8
	bl sub_0800193C
	adds r1, r6, #4
	movs r2, #0x10
	bl sub_0806E448
	ldrh r1, [r4, #6]
	mov r0, r8
	bl sub_0800193C
	adds r1, r6, #0
	adds r1, #0x14
	movs r2, #0x60
	bl sub_0806E448
	movs r5, #0
	adds r7, r6, #0
	adds r7, #0x74
	adds r4, #8
_0806E4B4:
	ldrh r0, [r4]
	cmp r0, #0
	beq _0806E4D4
	adds r1, r0, #0
	mov r0, r8
	bl sub_0800193C
	adds r1, r7, #0
	movs r2, #0x10
	bl sub_0806E448
	adds r0, r6, #0
	adds r0, #0xc4
	adds r0, r0, r5
	ldrb r1, [r4, #2]
	strb r1, [r0]
_0806E4D4:
	adds r7, #0x10
	adds r4, #4
	adds r5, #1
	cmp r5, #4
	ble _0806E4B4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806E4E8: .4byte 0x08077448
_0806E4EC: .4byte 0x02030024
_0806E4F0: .4byte 0x03004400

	thumb_func_start sub_0806E4F4
sub_0806E4F4: @ 0x0806E4F4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x12c
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	ldr r7, _0806E5AC @ =0x081335C0
	add r1, sp, #0x124
	movs r0, #0x88
	strb r0, [r1]
	movs r0, #0
	bl sub_08007828
	movs r0, #5
	bl sub_08007828
	movs r0, #0xc
	bl sub_080607FC
	adds r0, r5, #0
	bl sub_0806083C
	ldr r0, _0806E5B0 @ =0x0813347C
	ldr r1, _0806E5B4 @ =0x05000100
	bl LoadPalette_08008308
	ldr r0, _0806E5B8 @ =0x08133644
	ldr r1, _0806E5BC @ =0x06008000
	bl DecompressData_08008374
	ldr r0, _0806E5C0 @ =0x081335E4
	ldr r1, _0806E5C4 @ =0x0600F000
	movs r2, #0
	movs r3, #8
	bl LoadTileMap_080083CC
	ldr r4, _0806E5C8 @ =0x030024E0
	movs r0, #0
	strh r0, [r4, #0xe]
	ldr r0, _0806E5CC @ =0x0000FFD0
	strh r0, [r4, #0x16]
	adds r0, r5, #0
	bl sub_0806E46C
	movs r0, #0x20
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl FadeIn_08008AF4
	adds r4, #0x4f
	movs r0, #1
	strb r0, [r4]
	bl sub_08008D34
	bl sub_08005934
	ldr r0, _0806E5D0 @ =0x004F0003
	bl sub_080062D0
	bl sub_08005918
	bl sub_08003468
	movs r0, #0
	bl sub_08003860
	bl sub_08003510
	movs r4, #0x3b
_0806E580:
	ldr r0, _0806E5D4 @ =0x00009999
	add r1, sp, #0x124
	movs r2, #1
	bl sub_080038F4
	movs r0, #1
	bl ProcSleep_08002B98
	subs r4, #1
	cmp r4, #0
	bge _0806E580
	bl sub_080034DC
	bl sub_08003B94
	lsls r4, r0, #0x18
	asrs r1, r4, #0x18
	cmp r1, #0
	bne _0806E5DC
	ldr r0, _0806E5D8 @ =0x003E0030
	b _0806E5E6
	.align 2, 0
_0806E5AC: .4byte 0x081335C0
_0806E5B0: .4byte 0x0813347C
_0806E5B4: .4byte 0x05000100
_0806E5B8: .4byte 0x08133644
_0806E5BC: .4byte 0x06008000
_0806E5C0: .4byte 0x081335E4
_0806E5C4: .4byte 0x0600F000
_0806E5C8: .4byte 0x030024E0
_0806E5CC: .4byte 0x0000FFD0
_0806E5D0: .4byte 0x004F0003
_0806E5D4: .4byte 0x00009999
_0806E5D8: .4byte 0x003E0030
_0806E5DC:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0806E5F4
	ldr r0, _0806E5F0 @ =0x003E0036
_0806E5E6:
	bl sub_080062D0
	adds r5, r4, #0
	b _0806E6AA
	.align 2, 0
_0806E5F0: .4byte 0x003E0036
_0806E5F4:
	bl sub_080056C0
	bl sub_08001B40
	ldr r0, _0806E6D8 @ =0x03004400
	strb r5, [r0, #0xd]
	bl load_minigame_dll_8001884
	movs r0, #1
	bl ProcSleep_08002B98
	adds r0, r7, #0
	movs r1, #0x82
	bl sub_08009554
	movs r0, #1
	bl ProcSleep_08002B98
	bl sub_08003A80
	movs r0, #0x80
	lsls r0, r0, #0x12
	movs r1, #0xc0
	lsls r1, r1, #0xa
	bl sub_08003B2C
	bl sub_08003B4C
	adds r5, r4, #0
_0806E62E:
	movs r0, #1
	bl ProcSleep_08002B98
	bl sub_08003B70
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0806E62E
	bl sub_08003B08
	movs r0, #1
	bl ProcSleep_08002B98
	bl sub_08003468
	ldr r4, _0806E6DC @ =0x02037EB0
	adds r0, r4, #0
	adds r0, #0x94
	ldr r0, [r0]
	movs r1, #0xf0
	lsls r1, r1, #4
	ands r0, r1
	lsrs r0, r0, #8
	bl sub_08003860
	bl sub_08003510
	movs r0, #1
	strb r0, [r4, #6]
	movs r0, #0xa
	bl ProcSleep_08002B98
	ldr r0, _0806E6E0 @ =0x00005501
	ldr r1, _0806E6E4 @ =0x02030000
	movs r3, #0x92
	lsls r3, r3, #1
	mov r2, sp
	bl sub_08003998
	cmp r6, #0
	beq _0806E68E
	bl sub_08003530
	movs r0, #0xa
	bl ProcSleep_08002B98
	bl sub_080034DC
_0806E68E:
	adds r0, r7, #0
	bl sub_080095E0
	bl sub_08005918
	bl sub_08007CD4
	cmp r6, #0
	beq _0806E6AA
	ldr r0, _0806E6E8 @ =0x004F0006
	bl sub_080062D0
	bl sub_08005B2C
_0806E6AA:
	bl sub_08005A2C
	movs r0, #0x20
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl FadeOut_080089E8
	bl sub_08008D34
	add r0, sp, #0x128
	movs r1, #0
	str r1, [r0]
	ldr r1, _0806E6EC @ =0x0600F000
	ldr r2, _0806E6F0 @ =0x01000200
	bl CpuFastSet
	asrs r0, r5, #0x18
	add sp, #0x12c
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0806E6D8: .4byte 0x03004400
_0806E6DC: .4byte 0x02037EB0
_0806E6E0: .4byte 0x00005501
_0806E6E4: .4byte 0x02030000
_0806E6E8: .4byte 0x004F0006
_0806E6EC: .4byte 0x0600F000
_0806E6F0: .4byte 0x01000200
