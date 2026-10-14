	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .text
	.ARM
	.syntax unified

	thumb_func_start sub_08062E60
sub_08062E60: @ 0x08062E60
	push {r4, r5, lr}
	sub sp, #4
	movs r4, #0
	ldr r5, _08062EA4 @ =0x06009200
_08062E68:
	movs r1, #0x2c
	cmp r4, #0xa
	beq _08062E76
	adds r1, r4, #0
	cmp r4, #0xb
	bne _08062E76
	movs r1, #0x2b
_08062E76:
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
	ble _08062E68
	ldr r0, _08062EA8 @ =gUnknown_030024E0
	ldr r1, _08062EAC @ =0x0000FFE0
	strh r1, [r0, #0xe]
	subs r1, #0x10
	strh r1, [r0, #0x16]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08062EA4: .4byte 0x06009200
_08062EA8: .4byte gUnknown_030024E0
_08062EAC: .4byte 0x0000FFE0

	thumb_func_start sub_08062EB0
sub_08062EB0: @ 0x08062EB0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #1
	bhi _08062ED6
	lsls r0, r4, #0x16
	movs r2, #0x80
	lsls r2, r2, #0x10
	adds r0, r0, r2
	lsrs r5, r0, #0x10
	movs r0, #0
	mov sb, r0
	lsls r0, r4, #0x19
	lsrs r0, r0, #0x18
	b _08062EDE
_08062ED6:
	movs r5, #0xd0
	movs r2, #6
	mov sb, r2
	movs r0, #5
_08062EDE:
	mov r8, r0
	adds r0, r1, #0
	bl sub_08006828
	adds r6, r0, #0
	movs r1, #0
	bl sub_080045FC
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	lsls r0, r5, #5
	ldr r1, _08062F2C @ =0x06008000
	adds r0, r0, r1
	movs r2, #2
	cmp r4, #2
	bne _08062F00
	movs r2, #3
_08062F00:
	movs r4, #1
	str r4, [sp]
	adds r1, r6, #0
	movs r3, #0
	bl sub_08004D94
	str r7, [sp]
	str r4, [sp, #4]
	movs r0, #0x1e
	adds r1, r5, #0
	mov r2, sb
	mov r3, r8
	bl sub_08004FD4
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08062F2C: .4byte 0x06008000

	thumb_func_start sub_08062F30
sub_08062F30: @ 0x08062F30
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r2, #0
	ldr r4, _08062F60 @ =0x00989680
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x12
	mov sb, r0
	ldr r0, _08062F64 @ =0x0600F01E
	add r0, sb
	mov r8, r0
	ldr r0, _08062F68 @ =gUnknown_03004400
	ldrb r0, [r0, #0xd]
	bl sub_08001B00
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08062F6C
	cmp r0, #2
	beq _08062FF8
	b _0806313A
	.align 2, 0
_08062F60: .4byte 0x00989680
_08062F64: .4byte 0x0600F01E
_08062F68: .4byte gUnknown_03004400
_08062F6C:
	movs r1, #0
	mov sb, r1
	movs r5, #0
_08062F72:
	adds r0, r6, #0
	adds r1, r4, #0
	bl __udivsi3
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r0, r6, #0
	adds r1, r4, #0
	bl __umodsi3
	adds r6, r0, #0
	adds r0, r4, #0
	movs r1, #0xa
	bl __udivsi3
	adds r4, r0, #0
	cmp r7, #0
	beq _08062F9A
	movs r2, #1
	mov sb, r2
_08062F9A:
	mov r3, sb
	cmp r3, #0
	bne _08062FA4
	cmp r4, #0
	bne _08062F72
_08062FA4:
	adds r0, r7, #0
	adds r0, #0x90
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	movs r0, #0xe0
	lsls r0, r0, #8
	adds r1, r0, #0
	adds r0, r7, #0
	orrs r0, r1
	mov r1, r8
	strh r0, [r1]
	mov r2, r8
	adds r2, #0x40
	adds r0, r7, #0
	adds r0, #0x20
	ldr r3, _08062FF4 @ =0xFFFFE000
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	movs r0, #2
	add r8, r0
	adds r5, #1
	cmp r4, #0
	bne _08062F72
	cmp r5, #8
	ble _08062FDA
	b _0806313A
_08062FDA:
	movs r1, #0
_08062FDC:
	mov r2, r8
	strh r1, [r2]
	mov r0, r8
	adds r0, #0x40
	strh r1, [r0]
	movs r3, #2
	add r8, r3
	adds r5, #1
	cmp r5, #8
	ble _08062FDC
	b _0806313A
	.align 2, 0
_08062FF4: .4byte 0xFFFFE000
_08062FF8:
	ldr r0, _08063148 @ =0x00008C9F
	cmp r6, r0
	bls _08063000
	adds r6, r0, #0
_08063000:
	adds r0, r6, #0
	movs r1, #0x3c
	bl __umodsi3
	ldr r1, _0806314C @ =0x00000683
	muls r0, r1, r0
	movs r1, #0xfa
	lsls r1, r1, #2
	bl __udivsi3
	mov sl, r0
	cmp r0, #0x62
	bne _0806301E
	movs r0, #0x63
	mov sl, r0
_0806301E:
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
	adds r7, r4, #0
	adds r7, #0x90
	movs r1, #0xe0
	lsls r1, r1, #8
	adds r6, r1, #0
	adds r0, r7, #0
	orrs r0, r6
	mov r2, r8
	strh r0, [r2]
	ldr r1, _08063150 @ =0x0600F05E
	add r1, sb
	adds r0, r7, #0
	adds r0, #0x20
	ldr r3, _08063154 @ =0xFFFFE000
	adds r4, r3, #0
	orrs r0, r4
	strh r0, [r1]
	ldr r0, _08063158 @ =0x0600F020
	add r0, sb
	movs r7, #0x9a
	orrs r7, r6
	strh r7, [r0]
	ldr r1, _0806315C @ =0x0600F060
	add r1, sb
	movs r0, #0xba
	orrs r0, r4
	strh r0, [r1]
	ldr r1, _08063160 @ =0x0600F022
	add r1, sb
	mov r8, r1
	adds r0, r5, #0
	movs r1, #0xa
	bl __udivsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #8
	movs r2, #0x90
	lsls r2, r2, #0x10
	adds r0, r0, r2
	lsrs r7, r0, #0x10
	adds r0, r7, #0
	orrs r0, r6
	mov r3, r8
	strh r0, [r3]
	ldr r1, _08063164 @ =0x0600F062
	add r1, sb
	adds r0, r7, #0
	adds r0, #0x20
	orrs r0, r4
	strh r0, [r1]
	ldr r0, _08063168 @ =0x0600F024
	add r0, sb
	mov r8, r0
	adds r0, r5, #0
	movs r1, #0xa
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #8
	movs r1, #0x90
	lsls r1, r1, #0x10
	adds r0, r0, r1
	lsrs r7, r0, #0x10
	adds r0, r7, #0
	orrs r0, r6
	mov r2, r8
	strh r0, [r2]
	ldr r1, _0806316C @ =0x0600F064
	add r1, sb
	adds r0, r7, #0
	adds r0, #0x20
	orrs r0, r4
	strh r0, [r1]
	ldr r3, _08063170 @ =0x0600F026
	add r3, sb
	movs r7, #0x9b
	orrs r7, r6
	strh r7, [r3]
	ldr r1, _08063174 @ =0x0600F066
	add r1, sb
	movs r0, #0xbb
	orrs r0, r4
	strh r0, [r1]
	ldr r0, _08063178 @ =0x0600F028
	add r0, sb
	mov r8, r0
	mov r0, sl
	movs r1, #0xa
	bl __udivsi3
	adds r0, #0x90
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r0, r7, #0
	orrs r0, r6
	mov r1, r8
	strh r0, [r1]
	ldr r1, _0806317C @ =0x0600F068
	add r1, sb
	adds r0, r7, #0
	adds r0, #0x20
	orrs r0, r4
	strh r0, [r1]
	ldr r2, _08063180 @ =0x0600F02A
	add r2, sb
	mov r8, r2
	mov r0, sl
	movs r1, #0xa
	bl __umodsi3
	adds r0, #0x90
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r0, r7, #0
	orrs r0, r6
	mov r3, r8
	strh r0, [r3]
	ldr r1, _08063184 @ =0x0600F06A
	add r1, sb
	adds r0, r7, #0
	adds r0, #0x20
	orrs r0, r4
	strh r0, [r1]
_0806313A:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08063148: .4byte 0x00008C9F
_0806314C: .4byte 0x00000683
_08063150: .4byte 0x0600F05E
_08063154: .4byte 0xFFFFE000
_08063158: .4byte 0x0600F020
_0806315C: .4byte 0x0600F060
_08063160: .4byte 0x0600F022
_08063164: .4byte 0x0600F062
_08063168: .4byte 0x0600F024
_0806316C: .4byte 0x0600F064
_08063170: .4byte 0x0600F026
_08063174: .4byte 0x0600F066
_08063178: .4byte 0x0600F028
_0806317C: .4byte 0x0600F068
_08063180: .4byte 0x0600F02A
_08063184: .4byte 0x0600F06A

	thumb_func_start sub_08063188
sub_08063188: @ 0x08063188
	push {r4, r5, r6, lr}
	adds r6, r2, #0
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	cmp r5, #0
	bne _080631BC
	cmp r4, #1
	beq _080631A2
	cmp r4, #2
	beq _080631AC
	b _080631DC
_080631A2:
	ldr r1, _080631A8 @ =0x00380019
	b _080631AE
	.align 2, 0
_080631A8: .4byte 0x00380019
_080631AC:
	ldr r1, _080631B8 @ =0x0038001A
_080631AE:
	movs r0, #0
	bl sub_08062EB0
	b _080631DC
	.align 2, 0
_080631B8: .4byte 0x0038001A
_080631BC:
	cmp r4, #1
	beq _080631C6
	cmp r4, #2
	beq _080631D4
	b _080631DC
_080631C6:
	ldr r1, _080631D0 @ =0x0038001B
	adds r0, r5, #0
	bl sub_08062EB0
	b _080631DC
	.align 2, 0
_080631D0: .4byte 0x0038001B
_080631D4:
	ldr r1, _080631EC @ =0x0038001C
	adds r0, r5, #0
	bl sub_08062EB0
_080631DC:
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl sub_08062F30
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080631EC: .4byte 0x0038001C

	thumb_func_start sub_080631F0
sub_080631F0: @ 0x080631F0
	push {r4, r5, r6, r7, lr}
	movs r5, #0
	movs r6, #0
	movs r7, #0
	bl sub_08060708
	movs r0, #5
	bl sub_080607FC
	bl sub_08060F7C
	ldr r4, _08063304 @ =gUnknown_03004400
	ldrb r0, [r4, #0xd]
	bl sub_080019D8
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08063266
	ldrb r0, [r4, #0xd]
	bl sub_0806083C
	ldrb r0, [r4, #0xd]
	bl sub_08001B00
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	ldrb r0, [r4, #0xd]
	bl sub_08001B28
	adds r4, r0, #0
	bl sub_08001F3C
	adds r5, r0, #0
	bl sub_08062E60
	movs r0, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl sub_08063188
	movs r0, #1
	adds r1, r6, #0
	adds r2, r5, #0
	bl sub_08063188
	cmp r6, #1
	bne _08063252
	cmp r4, r5
	blo _0806325A
_08063252:
	cmp r6, #2
	bne _08063266
	cmp r4, r5
	bls _08063266
_0806325A:
	ldr r0, _08063304 @ =gUnknown_03004400
	ldrb r0, [r0, #0xd]
	adds r1, r5, #0
	bl sub_08007778
	movs r7, #1
_08063266:
	cmp r7, #0
	bne _08063270
	movs r0, #0xc
	bl sub_080077C4
_08063270:
	movs r0, #0x20
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl FadeIn_08008AF4
	ldr r0, _08063308 @ =gUnknown_030024E0
	adds r0, #0x4f
	movs r1, #1
	strb r1, [r0]
	bl sub_08008D34
	ldr r0, _08063304 @ =gUnknown_03004400
	ldrb r0, [r0, #0xd]
	bl sub_080019D8
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080632DA
	cmp r7, #0
	beq _080632C4
	ldr r1, _0806330C @ =0x0038001D
	movs r0, #2
	bl sub_08062EB0
	movs r0, #0
	bl sub_080077D4
	movs r0, #0x71
	bl m4aSongNumStart
	movs r0, #1
	bl sub_08007828
	movs r0, #0xc
	bl sub_080077C4
	movs r0, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl sub_08063188
_080632C4:
	movs r0, #1
	bl sub_080613CC
	movs r0, #1
	bl sub_08005B8C
	movs r0, #0xcc
	bl m4aSongNumStart
	bl sub_08061490
_080632DA:
	ldr r0, _08063310 @ =0x00380018
	bl sub_0800648C
	bl sub_080064F8
	lsls r0, r0, #0x18
	asrs r4, r0, #0x18
	cmp r4, #0
	bne _08063334
	ldr r0, _08063304 @ =gUnknown_03004400
	ldrb r0, [r0, #0xd]
	bl sub_08001B00
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bne _0806331C
	ldr r1, _08063314 @ =0x02030000
	ldr r0, _08063318 @ =0x00008C9F
	str r0, [r1, #4]
	b _08063320
	.align 2, 0
_08063304: .4byte gUnknown_03004400
_08063308: .4byte gUnknown_030024E0
_0806330C: .4byte 0x0038001D
_08063310: .4byte 0x00380018
_08063314: .4byte 0x02030000
_08063318: .4byte 0x00008C9F
_0806331C:
	ldr r0, _08063328 @ =0x02030000
	str r4, [r0, #4]
_08063320:
	cmp r7, #0
	beq _0806332C
	movs r0, #0x11
	b _0806333A
	.align 2, 0
_08063328: .4byte 0x02030000
_0806332C:
	movs r0, #0x11
	bl ChangeGameState_08008790
	b _0806334C
_08063334:
	cmp r7, #0
	beq _08063346
	movs r0, #0x14
_0806333A:
	bl sub_080072F4
	movs r0, #0x23
	bl ChangeGameState_08008790
	b _0806334C
_08063346:
	movs r0, #0x14
	bl ChangeGameState_08008790
_0806334C:
	ldr r0, _08063380 @ =gUnknown_03004400
	ldrb r0, [r0, #9]
	cmp r0, #0x14
	beq _0806335C
	movs r0, #0
	movs r1, #0x20
	bl sub_080077EC
_0806335C:
	movs r0, #0x20
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl FadeOut_080089E8
	bl sub_08008D34
	bl sub_08060FA0
	bl sub_080607BC
	bl sub_08002B0C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08063380: .4byte gUnknown_03004400
