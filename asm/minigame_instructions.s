	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .text
	.ARM
	.syntax unified

	thumb_func_start sub_08001F48
sub_08001F48: @ 0x08001F48
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_08007760
	ldr r1, _08001F5C @ =0x02030000
	str r0, [r1, #4]
	pop {r0}
	bx r0
	.align 2, 0
_08001F5C: .4byte 0x02030000

	thumb_func_start sub_08001F60
sub_08001F60: @ 0x08001F60
	push {r4, lr}
	sub sp, #4
	mov r0, sp
	movs r4, #0
	strh r4, [r0]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	ldr r2, _08001FA4 @ =0x011F4000
	bl CpuSet
	ldr r0, _08001FA8 @ =0x030024E0
	movs r1, #0
	movs r2, #0xc0
	lsls r2, r2, #2
	strh r2, [r0]
	movs r2, #0x80
	lsls r2, r2, #4
	strh r2, [r0, #2]
	ldr r2, _08001FAC @ =0x00000901
	strh r2, [r0, #4]
	strh r1, [r0, #6]
	strh r1, [r0, #8]
	strh r1, [r0, #0x12]
	strh r1, [r0, #0xa]
	strh r1, [r0, #0x14]
	strh r1, [r0, #0xc]
	strh r1, [r0, #0x16]
	strh r1, [r0, #0xe]
	strh r1, [r0, #0x18]
	strh r1, [r0, #0x10]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08001FA4: .4byte 0x011F4000
_08001FA8: .4byte 0x030024E0
_08001FAC: .4byte 0x00000901

	thumb_func_start sub_08001FB0
sub_08001FB0: @ 0x08001FB0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r4, [sp, #0x18]
	ldr r5, [sp, #0x1c]
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	lsls r2, r2, #0x18
	lsls r3, r3, #0x18
	lsls r4, r4, #0x18
	lsrs r7, r4, #0x18
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	lsrs r3, r3, #0x12
	lsrs r2, r2, #0x17
	ldr r0, _08002018 @ =0x06004000
	adds r2, r2, r0
	adds r3, r3, r2
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x10
	mov ip, r1
	movs r1, #0
	cmp r1, r5
	bge _0800200E
	movs r0, #0x20
	subs r0, r0, r7
	lsls r0, r0, #1
	mov r8, r0
_08001FE8:
	adds r4, r1, #1
	cmp r7, #0
	beq _08002006
	adds r2, r7, #0
_08001FF0:
	adds r1, r6, #0
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	mov r0, ip
	orrs r1, r0
	strh r1, [r3]
	adds r3, #2
	subs r2, #1
	cmp r2, #0
	bne _08001FF0
_08002006:
	add r3, r8
	adds r1, r4, #0
	cmp r1, r5
	blt _08001FE8
_0800200E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08002018: .4byte 0x06004000

	thumb_func_start sub_0800201C
sub_0800201C: @ 0x0800201C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r4, [sp, #0x18]
	ldr r5, [sp, #0x1c]
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	lsls r2, r2, #0x18
	lsls r3, r3, #0x18
	lsls r4, r4, #0x18
	lsrs r7, r4, #0x18
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	mov ip, r5
	lsrs r3, r3, #0x12
	lsrs r2, r2, #0x17
	ldr r0, _08002094 @ =0x06004000
	adds r2, r2, r0
	adds r3, r3, r2
	adds r4, r3, #0
	adds r4, #0x40
	lsls r1, r1, #0x1c
	lsrs r5, r1, #0x10
	movs r2, #0
	cmp r2, ip
	bge _08002088
	movs r0, #0x40
	subs r0, r0, r7
	lsls r0, r0, #1
	mov r8, r0
_08002058:
	adds r1, r2, #1
	cmp r7, #0
	beq _0800207C
	adds r2, r7, #0
_08002060:
	adds r0, r6, #0
	orrs r0, r5
	strh r0, [r3]
	adds r3, #2
	adds r0, r6, #1
	orrs r0, r5
	strh r0, [r4]
	adds r4, #2
	adds r0, r6, #2
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	subs r2, #1
	cmp r2, #0
	bne _08002060
_0800207C:
	add r3, r8
	adds r4, r3, #0
	adds r4, #0x40
	adds r2, r1, #0
	cmp r2, ip
	blt _08002058
_08002088:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08002094: .4byte 0x06004000

	thumb_func_start sub_08002098
sub_08002098: @ 0x08002098
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	ldr r1, _080021A4 @ =0x08077248
	add r0, sp, #8
	movs r2, #0x10
	bl memcpy
	mov r1, sl
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080021A8 @ =0x08077448
	adds r0, r0, r1
	str r0, [sp, #0x18]
	ldr r0, _080021AC @ =0x0813A8AC
	movs r1, #0xa0
	lsls r1, r1, #0x13
	bl LoadPalette_08008308
	ldr r0, _080021B0 @ =0x0813AF7C
	ldr r1, _080021B4 @ =0x05000020
	bl LoadPalette_08008308
	ldr r4, _080021B8 @ =0x0807E848
	ldr r1, _080021BC @ =0x05000040
	adds r0, r4, #0
	movs r2, #0xc
	bl CpuSet
	ldr r1, _080021C0 @ =0x05000060
	adds r0, r4, #0
	movs r2, #0xc
	bl CpuSet
	ldr r0, _080021C4 @ =0x0813A984
	movs r5, #0xc0
	lsls r5, r5, #0x13
	adds r1, r5, #0
	bl DecompressData_08008374
	ldr r0, _080021C8 @ =0x0813AFA0
	ldr r1, _080021CC @ =0x06000400
	bl DecompressData_08008374
	ldr r0, _080021D0 @ =0x0813A8D0
	ldr r1, _080021D4 @ =0x06004800
	movs r2, #0
	movs r3, #0
	bl LoadTileMap_080083CC
	ldr r2, [sp, #0x18]
	ldrh r1, [r2, #4]
	mov r0, sl
	bl sub_0800193C
	adds r4, r0, #0
	movs r1, #0
	bl sub_080045FC
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x19
	movs r0, #6
	subs r0, r0, r1
	lsls r0, r0, #0x11
	movs r1, #0xc0
	lsls r1, r1, #0xf
	adds r0, r0, r1
	lsrs r0, r0, #0xb
	adds r0, r0, r5
	movs r1, #0
	str r1, [sp]
	adds r1, r4, #0
	movs r2, #7
	movs r3, #0
	bl sub_08004D94
	movs r0, #0xc
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0x60
	movs r1, #2
	movs r2, #9
	movs r3, #0
	bl sub_0800201C
	movs r2, #0
	str r2, [sp, #0x1c]
	movs r7, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	mov r8, r0
	ldr r5, [sp, #0x18]
	movs r1, #0xf0
	lsls r1, r1, #0xf
	str r1, [sp, #0x20]
_08002168:
	ldrh r0, [r5, #8]
	cmp r0, #0
	bne _08002170
	b _0800228C
_08002170:
	ldrb r1, [r5, #0xa]
	lsrs r0, r1, #3
	movs r6, #3
	ands r0, r6
	cmp r0, #0
	bne _080021D8
	movs r4, #7
	ands r4, r1
	cmp r4, #0
	beq _08002254
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xf
	add r0, sp
	adds r0, #8
	ldrh r0, [r0]
	mov r2, r8
	lsrs r3, r2, #0x18
	str r7, [sp]
	str r7, [sp, #4]
	movs r1, #0
	movs r2, #9
	bl sub_08001FB0
	b _08002254
	.align 2, 0
_080021A4: .4byte 0x08077248
_080021A8: .4byte 0x08077448
_080021AC: .4byte 0x0813A8AC
_080021B0: .4byte 0x0813AF7C
_080021B4: .4byte 0x05000020
_080021B8: .4byte 0x0807E848
_080021BC: .4byte 0x05000040
_080021C0: .4byte 0x05000060
_080021C4: .4byte 0x0813A984
_080021C8: .4byte 0x0813AFA0
_080021CC: .4byte 0x06000400
_080021D0: .4byte 0x0813A8D0
_080021D4: .4byte 0x06004800
_080021D8:
	movs r0, #7
	mov sb, r0
	movs r4, #7
	ands r4, r1
	cmp r4, #0
	beq _08002200
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xf
	add r0, sp
	adds r0, #8
	ldrh r0, [r0]
	mov r1, r8
	lsrs r3, r1, #0x18
	str r7, [sp]
	str r7, [sp, #4]
	movs r1, #0
	movs r2, #6
	bl sub_08001FB0
_08002200:
	ldrb r0, [r5, #0xa]
	lsrs r4, r0, #3
	ands r4, r6
	cmp r4, #0
	beq _0800222C
	lsls r0, r4, #0x10
	movs r2, #0x80
	lsls r2, r2, #0xb
	adds r4, r0, r2
	lsrs r0, r4, #0xf
	add r0, sp
	adds r0, #8
	ldrh r0, [r0]
	mov r1, r8
	lsrs r3, r1, #0x18
	movs r1, #1
	str r1, [sp]
	str r7, [sp, #4]
	movs r1, #0
	movs r2, #8
	bl sub_08001FB0
_0800222C:
	ldrb r0, [r5, #0xa]
	lsrs r4, r0, #5
	mov r2, sb
	ands r4, r2
	cmp r4, #0
	beq _08002254
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xf
	add r0, sp
	adds r0, #8
	ldrh r0, [r0]
	mov r1, r8
	lsrs r3, r1, #0x18
	str r7, [sp]
	str r7, [sp, #4]
	movs r1, #0
	movs r2, #9
	bl sub_08001FB0
_08002254:
	ldr r2, [sp, #0x20]
	lsrs r4, r2, #0x10
	ldrh r1, [r5, #8]
	mov r0, sl
	bl sub_0800193C
	adds r1, r0, #0
	lsls r0, r4, #5
	movs r2, #0xc0
	lsls r2, r2, #0x13
	adds r0, r0, r2
	movs r2, #0
	str r2, [sp]
	movs r2, #1
	movs r3, #0
	bl sub_08004D94
	mov r0, r8
	lsrs r3, r0, #0x18
	movs r0, #0xc
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0xb
	bl sub_0800201C
_0800228C:
	movs r1, #0x80
	lsls r1, r1, #0x12
	add r8, r1
	adds r5, #4
	ldr r2, [sp, #0x20]
	movs r0, #0xc0
	lsls r0, r0, #0xd
	adds r2, r2, r0
	str r2, [sp, #0x20]
	ldr r1, [sp, #0x1c]
	adds r1, #1
	str r1, [sp, #0x1c]
	cmp r1, #4
	bgt _080022AA
	b _08002168
_080022AA:
	ldr r2, [sp, #0x18]
	ldrh r0, [r2, #6]
	cmp r0, #0
	beq _080022E0
	adds r1, r0, #0
	mov r0, sl
	bl sub_0800193C
	adds r1, r0, #0
	ldr r0, _080022F0 @ =0x06001E00
	movs r2, #0
	str r2, [sp]
	movs r4, #0x1a
	str r4, [sp, #4]
	movs r2, #1
	movs r3, #0
	bl sub_08004E6C
	str r4, [sp]
	movs r0, #3
	str r0, [sp, #4]
	movs r0, #0xf0
	movs r1, #2
	movs r2, #2
	movs r3, #0xc
	bl sub_0800201C
_080022E0:
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080022F0: .4byte 0x06001E00

	thumb_func_start sub_080022F4
sub_080022F4: @ 0x080022F4
	push {r4, r5, r6, lr}
	sub sp, #8
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r5, r4, #0
	movs r0, #1
	ands r0, r4
	cmp r0, #0
	beq _0800231A
	movs r0, #8
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	movs r0, #0x20
	movs r1, #1
	movs r2, #0x14
	movs r3, #0x12
	bl sub_08001FB0
_0800231A:
	movs r6, #2
	adds r0, r4, #0
	ands r0, r6
	cmp r0, #0
	beq _08002336
	movs r0, #8
	str r0, [sp]
	str r6, [sp, #4]
	movs r0, #0x30
	movs r1, #1
	movs r2, #2
	movs r3, #0x12
	bl sub_08001FB0
_08002336:
	movs r0, #4
	ands r5, r0
	cmp r5, #0
	beq _08002350
	movs r0, #0xa
	str r0, [sp]
	str r6, [sp, #4]
	movs r0, #0x40
	movs r1, #1
	movs r2, #0xa
	movs r3, #0x12
	bl sub_08001FB0
_08002350:
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08002358
sub_08002358: @ 0x08002358
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	movs r1, #0
	mov r0, sp
	strb r1, [r0]
	bl sub_080057D0
	bl sub_08001F60
	ldr r4, _08002394 @ =0x03004400
	ldrb r0, [r4, #0xd]
	bl sub_08002098
	ldrb r0, [r4, #0xa]
	cmp r0, #0x23
	bne _08002382
	bl sub_08007310
	strb r0, [r4, #0xa]
_08002382:
	ldrb r0, [r4, #0xa]
	subs r0, #3
	cmp r0, #0x26
	bhi _08002438
	lsls r0, r0, #2
	ldr r1, _08002398 @ =_0800239C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08002394: .4byte 0x03004400
_08002398: .4byte _0800239C
_0800239C: @ jump table
	.4byte _08002460 @ case 0
	.4byte _08002438 @ case 1
	.4byte _08002438 @ case 2
	.4byte _08002438 @ case 3
	.4byte _08002438 @ case 4
	.4byte _08002460 @ case 5
	.4byte _08002438 @ case 6
	.4byte _08002438 @ case 7
	.4byte _08002438 @ case 8
	.4byte _08002438 @ case 9
	.4byte _08002460 @ case 10
	.4byte _08002460 @ case 11
	.4byte _08002460 @ case 12
	.4byte _08002438 @ case 13
	.4byte _08002438 @ case 14
	.4byte _08002438 @ case 15
	.4byte _08002438 @ case 16
	.4byte _08002438 @ case 17
	.4byte _08002438 @ case 18
	.4byte _08002438 @ case 19
	.4byte _08002442 @ case 20
	.4byte _08002442 @ case 21
	.4byte _08002442 @ case 22
	.4byte _08002438 @ case 23
	.4byte _08002438 @ case 24
	.4byte _08002438 @ case 25
	.4byte _08002438 @ case 26
	.4byte _08002438 @ case 27
	.4byte _08002438 @ case 28
	.4byte _08002438 @ case 29
	.4byte _08002438 @ case 30
	.4byte _08002438 @ case 31
	.4byte _08002438 @ case 32
	.4byte _08002438 @ case 33
	.4byte _08002460 @ case 34
	.4byte _08002438 @ case 35
	.4byte _08002438 @ case 36
	.4byte _08002460 @ case 37
	.4byte _08002460 @ case 38
_08002438:
	movs r0, #3
	bl sub_080022F4
	movs r6, #2
	b _08002468
_08002442:
	bl sub_080038E8
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08002460
	movs r0, #4
	b _08002462
_08002450:
	ldr r0, _0800245C @ =0x03004400
	ldrb r1, [r0, #0xa]
	movs r4, #0
	strb r1, [r0, #0xb]
	movs r0, #0xce
	b _08002532
	.align 2, 0
_0800245C: .4byte 0x03004400
_08002460:
	movs r0, #1
_08002462:
	bl sub_080022F4
	movs r6, #0
_08002468:
	movs r0, #0x20
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl FadeIn_08008AF4
	ldr r0, _080024B4 @ =0x030024E0
	adds r0, #0x4f
	movs r1, #1
	strb r1, [r0]
	bl sub_08008D34
	mov r5, sp
	movs r0, #1
	rsbs r0, r0, #0
	mov r8, r0
	adds r7, r0, #0
_0800248A:
	movs r0, #1
	bl ProcSleep_08002B98
	ldr r0, _080024B8 @ =0x02037EB0
	ldrb r0, [r0, #4]
	cmp r0, #0
	beq _08002500
	bl sub_080038E8
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080024EC
	ldr r0, _080024BC @ =0x030024B0
	ldrh r1, [r0]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _080024C0
	movs r0, #0xff
	strb r0, [r5]
	b _080024CC
	.align 2, 0
_080024B4: .4byte 0x030024E0
_080024B8: .4byte 0x02037EB0
_080024BC: .4byte 0x030024B0
_080024C0:
	movs r2, #1
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08002524
	strb r2, [r5]
_080024CC:
	movs r4, #9
_080024CE:
	ldr r0, _080024E8 @ =0x00001111
	mov r1, sp
	movs r2, #1
	bl sub_080038F4
	movs r0, #1
	bl ProcSleep_08002B98
	subs r4, #1
	cmp r4, #0
	bge _080024CE
	b _08002524
	.align 2, 0
_080024E8: .4byte 0x00001111
_080024EC:
	movs r0, #0
	ldr r1, _080024FC @ =0x00001111
	mov r2, sp
	movs r3, #1
	bl sub_08003938
	b _08002524
	.align 2, 0
_080024FC: .4byte 0x00001111
_08002500:
	ldr r0, _08002514 @ =0x030024B0
	ldrh r1, [r0]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _08002518
	mov r0, r8
	strb r0, [r5]
	b _08002524
	.align 2, 0
_08002514: .4byte 0x030024B0
_08002518:
	movs r2, #1
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08002524
	strb r2, [r5]
_08002524:
	movs r4, #0
	ldrsb r4, [r5, r4]
	cmp r4, r7
	beq _08002450
	cmp r4, #1
	bne _0800248A
	movs r0, #0xcc
_08002532:
	bl m4aSongNumStart
	ldr r0, _080025A8 @ =0x03001400
	strb r4, [r0]
	ldr r5, _080025AC @ =0x02037EB0
	ldrb r0, [r5, #4]
	cmp r0, #0
	beq _08002548
	ldr r0, _080025B0 @ =0x00006602
	bl sub_08003A30
_08002548:
	ldr r4, _080025A8 @ =0x03001400
	ldrb r0, [r4]
	cmp r0, #1
	bne _08002558
	movs r0, #0
	movs r1, #0x20
	bl sub_080077EC
_08002558:
	movs r0, #0x20
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl FadeOut_080089E8
	bl sub_08008D34
	ldrb r0, [r5, #4]
	cmp r0, #0
	beq _08002572
	bl sub_080034DC
_08002572:
	ldrb r0, [r4]
	ldr r1, _080025B4 @ =0x03004400
	cmp r0, #1
	bne _08002590
	ldrb r0, [r1, #0xa]
	cmp r0, #0x14
	beq _08002584
	cmp r0, #0x16
	bne _0800258A
_08002584:
	ldrb r0, [r1, #0xd]
	bl sub_08001F48
_0800258A:
	ldr r1, _080025B4 @ =0x03004400
	movs r0, #1
	strb r0, [r1, #0xc]
_08002590:
	ldrb r0, [r1, #0xb]
	bl ChangeGameState_08008790
	bl sub_08002B0C
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080025A8: .4byte 0x03001400
_080025AC: .4byte 0x02037EB0
_080025B0: .4byte 0x00006602
_080025B4: .4byte 0x03004400
