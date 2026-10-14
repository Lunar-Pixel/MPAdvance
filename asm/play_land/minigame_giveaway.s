	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .text
	.ARM
	.syntax unified

	thumb_func_start sub_08063384
sub_08063384: @ 0x08063384
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	movs r7, #0
	bl sub_080628A0
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r5, #1
	rsbs r5, r5, #0
	cmp r0, r5
	beq _080633B8
	adds r0, r6, #0
	bl sub_080019D8
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #1
	bne _080633BC
	bl sub_080628D8
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, r5
	bne _080633CC
_080633B8:
	adds r0, r5, #0
	b _08063436
_080633BC:
	cmp r4, #2
	bne _080633CC
	bl sub_08062AA0
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #0
	beq _080633B8
_080633CC:
	cmp r4, #1
	beq _080633F8
	cmp r4, #1
	bgt _080633DA
	cmp r4, #0
	beq _080633E4
	b _08063434
_080633DA:
	cmp r4, #2
	beq _08063410
	cmp r4, #3
	beq _08063424
	b _08063434
_080633E4:
	ldr r0, _080633F4 @ =gUnknown_03004400
	ldrb r1, [r0, #0xe]
	adds r0, r6, #0
	movs r2, #1
	bl sub_08001BA8
	b _08063434
	.align 2, 0
_080633F4: .4byte gUnknown_03004400
_080633F8:
	ldr r0, _0806340C @ =gUnknown_03004400
	ldrb r1, [r0, #0xe]
	ldrb r2, [r0, #0xf]
	str r4, [sp]
	adds r0, r6, #0
	movs r3, #1
	bl sub_08001CEC
	b _08063434
	.align 2, 0
_0806340C: .4byte gUnknown_03004400
_08063410:
	ldr r0, _08063420 @ =gUnknown_03004400
	ldrb r1, [r0, #0xe]
	adds r0, r6, #0
	adds r2, r7, #0
	movs r3, #1
	bl sub_08001C14
	b _08063434
	.align 2, 0
_08063420: .4byte gUnknown_03004400
_08063424:
	ldr r0, _08063440 @ =gUnknown_03004400
	ldrb r1, [r0, #0xe]
	movs r2, #0xc8
	lsls r2, r2, #2
	adds r0, r6, #0
	movs r3, #1
	bl sub_08001C84
_08063434:
	movs r0, #0
_08063436:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08063440: .4byte gUnknown_03004400

	thumb_func_start sub_08063444
sub_08063444: @ 0x08063444
	push {r4, r5, r6, r7, lr}
	movs r5, #0
	movs r7, #1
	bl sub_08060708
	movs r0, #4
	bl sub_080607FC
	bl sub_08060F7C
	bl sub_08061D7C
	movs r0, #0
	bl sub_08061DA0
	movs r0, #0xc
	bl sub_080077C4
	movs r0, #0x20
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl FadeIn_08008AF4
	ldr r0, _080634C0 @ =gUnknown_030024E0
	adds r0, #0x4f
	strb r7, [r0]
	bl sub_08008D34
	movs r0, #1
	bl sub_08005A88
	movs r0, #0
	bl sub_080059E4
	ldr r0, _080634C4 @ =0x003E0034
	bl sub_080062D0
	ldr r0, _080634C8 @ =0x003E0035
	bl sub_080062D0
	bl sub_08005A2C
	ldr r4, _080634CC @ =0x080900C4
	adds r0, r4, #0
	movs r1, #0x32
	bl sub_08061FBC
	bl sub_080612A4
	movs r0, #0
	bl sub_080613CC
	movs r0, #0
	bl sub_080059E4
	ldr r0, _080634D0 @ =0x003E0026
	bl sub_080062D0
	adds r6, r4, #0
	b _080635EE
	.align 2, 0
_080634C0: .4byte gUnknown_030024E0
_080634C4: .4byte 0x003E0034
_080634C8: .4byte 0x003E0035
_080634CC: .4byte 0x080900C4
_080634D0: .4byte 0x003E0026
_080634D4:
	movs r5, #1
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080635AA
	adds r0, r4, #0
	bl sub_08001A00
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080634FC
	movs r0, #0xd2
	bl m4aSongNumStart
	ldr r0, _080634F8 @ =0x003E002C
	bl sub_080062D0
	b _080635A4
	.align 2, 0
_080634F8: .4byte 0x003E002C
_080634FC:
	movs r0, #0xcc
	bl m4aSongNumStart
	movs r0, #0
	bl sub_08061124
	movs r0, #5
	adds r1, r4, #0
	bl sub_08005BE0
	ldr r0, _080635D0 @ =0x003E0027
	bl sub_080062D0
	ldr r0, _080635D4 @ =0x003E0028
	bl sub_0800648C
	bl sub_080064F8
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0806359E
	bl sub_08005A2C
	bl sub_08061490
	bl sub_08062180
	adds r0, r4, #0
	bl sub_08063384
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _08063586
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
	movs r0, #4
	bl sub_080607FC
	movs r0, #0xc
	bl sub_080077C4
	movs r0, #0x20
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl FadeIn_08008AF4
	ldr r0, _080635D8 @ =gUnknown_030024E0
	adds r0, #0x4f
	strb r5, [r0]
	bl sub_08008D34
_08063586:
	bl sub_08061E08
	adds r0, r6, #0
	movs r1, #0x32
	bl sub_08061FBC
	movs r0, #0
	bl sub_080613CC
	movs r0, #0
	bl sub_080059E4
_0806359E:
	movs r0, #1
	bl sub_08061124
_080635A4:
	ldr r0, _080635DC @ =0x003E0026
	bl sub_080062D0
_080635AA:
	bl sub_08062648
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	adds r0, r5, r6
	ldrb r4, [r0]
	cmp r7, r5
	beq _080635E8
	adds r0, r4, #0
	bl sub_08001A00
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080635E0
	movs r0, #0xff
	bl sub_0806083C
	b _080635E6
	.align 2, 0
_080635D0: .4byte 0x003E0027
_080635D4: .4byte 0x003E0028
_080635D8: .4byte gUnknown_030024E0
_080635DC: .4byte 0x003E0026
_080635E0:
	adds r0, r4, #0
	bl sub_0806083C
_080635E6:
	adds r7, r5, #0
_080635E8:
	movs r0, #1
	bl ProcSleep_08002B98
_080635EE:
	adds r0, r5, r6
	ldrb r4, [r0]
	ldr r0, _08063650 @ =gUnknown_030024B0
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08063600
	b _080634D4
_08063600:
	movs r0, #0xce
	bl m4aSongNumStart
	bl sub_08005A2C
	bl sub_08060950
	bl sub_080612E4
	bl sub_08061490
	bl sub_08062180
	movs r0, #0
	movs r1, #0x20
	bl sub_080077EC
	movs r0, #0x20
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl FadeOut_080089E8
	bl sub_08008D34
	bl sub_08061E30
	bl sub_08060FA0
	bl sub_080607BC
	movs r0, #0x2c
	bl ChangeGameState_08008790
	bl sub_08002B0C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08063650: .4byte gUnknown_030024B0
