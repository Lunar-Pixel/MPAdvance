	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .text
	.ARM
	.syntax unified

	thumb_func_start sub_08069EEC
sub_08069EEC: @ 0x08069EEC
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r7, r1, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	movs r0, #3
	movs r1, #0x10
	bl sub_080099E0
	adds r5, r0, #0
	ldr r0, _08069F70 @ =0x030044D0
	ldr r0, [r0]
	lsls r1, r4, #1
	adds r0, #0x24
	adds r0, r0, r1
	ldrh r1, [r0]
	lsls r1, r1, #5
	ldr r0, _08069F74 @ =0x06010000
	adds r1, r1, r0
	adds r0, r5, #0
	bl sub_08009A78
	ldr r0, _08069F78 @ =0x08090414
	adds r0, r4, r0
	ldrb r1, [r0]
	adds r0, r5, #0
	bl sub_08009AB4
	ldr r1, _08069F7C @ =0x080903B4
	lsls r2, r4, #4
	adds r0, r1, #0
	adds r0, #0xc
	adds r0, r2, r0
	ldr r3, [r0]
	adds r1, #8
	adds r2, r2, r1
	ldr r2, [r2]
	movs r6, #0
	cmp r4, #5
	bne _08069F3E
	movs r6, #1
_08069F3E:
	adds r0, r5, #0
	adds r1, r3, #0
	adds r3, r6, #0
	bl sub_08009ACC
	adds r0, r5, #0
	movs r1, #0xff
	bl sub_08009B40
	movs r0, #0
	ldrsh r1, [r7, r0]
	movs r0, #2
	ldrsh r2, [r7, r0]
	adds r0, r5, #0
	bl sub_08009A70
	adds r0, r5, #0
	movs r1, #1
	bl sub_08009A34
	adds r0, r5, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08069F70: .4byte 0x030044D0
_08069F74: .4byte 0x06010000
_08069F78: .4byte 0x08090414
_08069F7C: .4byte 0x080903B4

	thumb_func_start sub_08069F80
sub_08069F80: @ 0x08069F80
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r5, r2, #0x18
	cmp r4, #0
	beq _08069FB8
	ldr r2, _08069FC0 @ =0x080903B4
	lsls r3, r1, #4
	adds r0, r2, #0
	adds r0, #0xc
	adds r0, r3, r0
	ldr r1, [r0]
	adds r2, #8
	adds r3, r3, r2
	ldr r2, [r3]
	adds r0, r4, #0
	adds r3, r5, #0
	bl sub_08009ACC
	movs r1, #0
	cmp r5, #0
	bne _08069FB2
	movs r1, #0xff
_08069FB2:
	adds r0, r4, #0
	bl sub_08009B40
_08069FB8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08069FC0: .4byte 0x080903B4

	thumb_func_start sub_08069FC4
sub_08069FC4: @ 0x08069FC4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	ldr r4, _0806A07C @ =0x030044D0
	movs r0, #0x38
	bl sub_08007CE8
	adds r1, r0, #0
	str r1, [r4]
	mov r2, sp
	movs r0, #0
	strh r0, [r2]
	ldr r2, _0806A080 @ =0x0100001C
	mov r0, sp
	bl CpuSet
	movs r6, #0
	ldr r7, _0806A084 @ =0x080903B4
	mov r8, r7
_08069FEC:
	lsls r0, r6, #4
	mov r1, r8
	adds r1, #4
	adds r0, r0, r1
	ldr r5, [r0]
	adds r0, r5, #0
	bl sub_08006C14
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r0, [r7]
	ldr r1, _0806A088 @ =0x08090414
	adds r1, r6, r1
	ldrb r1, [r1]
	lsls r1, r1, #5
	ldr r2, _0806A08C @ =0x05000200
	adds r1, r1, r2
	bl LoadPalette_08008308
	lsls r1, r4, #5
	ldr r0, _0806A090 @ =0x06010000
	adds r1, r1, r0
	adds r0, r5, #0
	bl DecompressData_08008374
	ldr r0, _0806A07C @ =0x030044D0
	ldr r0, [r0]
	lsls r1, r6, #1
	adds r0, #0x24
	adds r0, r0, r1
	strh r4, [r0]
	adds r7, #0x10
	adds r6, #1
	cmp r6, #5
	ble _08069FEC
	movs r6, #0
_0806A036:
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	lsls r4, r6, #2
	ldr r1, _0806A094 @ =0x0809041C
	adds r1, r4, r1
	bl sub_08069EEC
	ldr r1, _0806A07C @ =0x030044D0
	ldr r1, [r1]
	adds r1, r1, r4
	str r0, [r1]
	adds r6, #1
	cmp r6, #4
	ble _0806A036
	movs r6, #0
_0806A054:
	lsls r4, r6, #2
	ldr r1, _0806A098 @ =0x08090430
	adds r1, r4, r1
	movs r0, #5
	bl sub_08069EEC
	ldr r1, _0806A07C @ =0x030044D0
	ldr r1, [r1]
	adds r1, #0x14
	adds r1, r1, r4
	str r0, [r1]
	adds r6, #1
	cmp r6, #3
	ble _0806A054
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806A07C: .4byte 0x030044D0
_0806A080: .4byte 0x0100001C
_0806A084: .4byte 0x080903B4
_0806A088: .4byte 0x08090414
_0806A08C: .4byte 0x05000200
_0806A090: .4byte 0x06010000
_0806A094: .4byte 0x0809041C
_0806A098: .4byte 0x08090430

	thumb_func_start sub_0806A09C
sub_0806A09C: @ 0x0806A09C
	push {r4, r5, r6, lr}
	movs r5, #0
	ldr r6, _0806A10C @ =0x030044D0
_0806A0A2:
	ldr r0, [r6]
	lsls r4, r5, #2
	adds r0, r0, r4
	ldr r0, [r0]
	cmp r0, #0
	beq _0806A0BA
	bl sub_08009A00
	ldr r0, [r6]
	adds r0, r0, r4
	movs r1, #0
	str r1, [r0]
_0806A0BA:
	adds r5, #1
	cmp r5, #4
	ble _0806A0A2
	movs r5, #0
	ldr r6, _0806A10C @ =0x030044D0
_0806A0C4:
	ldr r0, [r6]
	lsls r4, r5, #2
	adds r0, #0x14
	adds r0, r0, r4
	ldr r0, [r0]
	cmp r0, #0
	beq _0806A0E0
	bl sub_08009A00
	ldr r0, [r6]
	adds r0, #0x14
	adds r0, r0, r4
	movs r1, #0
	str r1, [r0]
_0806A0E0:
	adds r5, #1
	cmp r5, #3
	ble _0806A0C4
	ldr r0, _0806A110 @ =0x080903B4
	adds r4, r0, #4
	movs r5, #5
_0806A0EC:
	ldr r0, [r4]
	bl sub_08006CA0
	adds r4, #0x10
	subs r5, #1
	cmp r5, #0
	bge _0806A0EC
	ldr r0, _0806A10C @ =0x030044D0
	ldr r0, [r0]
	cmp r0, #0
	beq _0806A106
	bl sub_08007CF8
_0806A106:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0806A10C: .4byte 0x030044D0
_0806A110: .4byte 0x080903B4

	thumb_func_start sub_0806A114
sub_0806A114: @ 0x0806A114
	push {r4, r5, lr}
	ldr r2, _0806A194 @ =0x030024B0
	ldrh r1, [r2]
	movs r0, #2
	ands r0, r1
	ldr r3, _0806A198 @ =0x030044D0
	cmp r0, #0
	beq _0806A12C
	ldr r0, [r3]
	adds r0, #0x31
	movs r1, #1
	strb r1, [r0]
_0806A12C:
	ldrh r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0806A13E
	ldr r0, [r3]
	adds r0, #0x31
	movs r1, #2
	strb r1, [r0]
_0806A13E:
	ldrh r1, [r2]
	movs r0, #0xf0
	ands r0, r1
	cmp r0, #0
	beq _0806A150
	ldr r0, [r3]
	adds r0, #0x31
	movs r1, #3
	strb r1, [r0]
_0806A150:
	ldr r1, [r3]
	adds r0, r1, #0
	adds r0, #0x30
	ldrb r0, [r0]
	cmp r0, #0
	beq _0806A19C
	ldr r0, [r1]
	ldrb r0, [r0, #1]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _0806A1D8
	movs r4, #0
_0806A168:
	ldr r5, _0806A198 @ =0x030044D0
	ldr r0, [r5]
	lsls r1, r4, #2
	adds r0, r0, r1
	ldr r0, [r0]
	lsls r1, r4, #0x18
	lsrs r1, r1, #0x18
	movs r2, #0
	bl sub_08069F80
	adds r4, #1
	cmp r4, #4
	ble _0806A168
	ldr r0, [r5]
	adds r1, r0, #0
	adds r1, #0x31
	ldrb r1, [r1]
	cmp r1, #0
	bne _0806A1A6
	adds r0, #0x30
	strb r1, [r0]
	b _0806A1D8
	.align 2, 0
_0806A194: .4byte 0x030024B0
_0806A198: .4byte 0x030044D0
_0806A19C:
	adds r0, r1, #0
	adds r0, #0x31
	ldrb r0, [r0]
	cmp r0, #0
	beq _0806A1D8
_0806A1A6:
	movs r4, #0
_0806A1A8:
	ldr r5, _0806A1E0 @ =0x030044D0
	ldr r2, [r5]
	lsls r0, r4, #2
	adds r0, r2, r0
	ldr r0, [r0]
	lsls r1, r4, #0x18
	lsrs r1, r1, #0x18
	adds r2, #0x31
	ldrb r2, [r2]
	bl sub_08069F80
	adds r4, #1
	cmp r4, #4
	ble _0806A1A8
	ldr r0, [r5]
	adds r1, r0, #0
	adds r1, #0x31
	ldrb r1, [r1]
	adds r0, #0x30
	movs r2, #0
	strb r1, [r0]
	ldr r0, [r5]
	adds r0, #0x31
	strb r2, [r0]
_0806A1D8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806A1E0: .4byte 0x030044D0

	thumb_func_start sub_0806A1E4
sub_0806A1E4: @ 0x0806A1E4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	ldr r1, _0806A20C @ =0x030044D0
	ldr r0, [r1]
	adds r0, #0x32
	ldrb r0, [r0]
	adds r5, r1, #0
	cmp r0, #4
	bls _0806A200
	b _0806A412
_0806A200:
	lsls r0, r0, #2
	ldr r1, _0806A210 @ =_0806A214
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0806A20C: .4byte 0x030044D0
_0806A210: .4byte _0806A214
_0806A214: @ jump table
	.4byte _0806A228 @ case 0
	.4byte _0806A36C @ case 1
	.4byte _0806A388 @ case 2
	.4byte _0806A3A8 @ case 3
	.4byte _0806A3D4 @ case 4
_0806A228:
	movs r4, #0
	str r4, [sp, #8]
	ldr r1, _0806A2C4 @ =0x0600F000
	ldr r5, _0806A2C8 @ =0x01000200
	add r0, sp, #8
	adds r2, r5, #0
	bl CpuFastSet
	str r4, [sp, #0xc]
	add r0, sp, #0xc
	ldr r1, _0806A2CC @ =0x0600D000
	adds r2, r5, #0
	bl CpuFastSet
	movs r6, #0
_0806A246:
	lsls r1, r6, #1
	ldr r0, _0806A2D0 @ =0x030044D0
	ldr r0, [r0]
	adds r0, #0x34
	ldrb r0, [r0]
	lsls r0, r0, #3
	adds r1, r1, r0
	ldr r0, _0806A2D4 @ =0x08090444
	adds r1, r1, r0
	ldrh r4, [r1]
	cmp r6, #0
	beq _0806A264
	adds r7, r6, #1
	cmp r4, #0
	beq _0806A328
_0806A264:
	lsls r0, r6, #6
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	lsls r0, r0, #5
	ldr r1, _0806A2D8 @ =0x06008000
	adds r5, r0, r1
	movs r0, #0x80
	lsls r0, r0, #8
	cmp r4, r0
	bne _0806A2DC
	movs r0, #0
	bl sub_0800759C
	adds r4, r0, #0
	movs r0, #0
	mov r8, r0
	ldrb r0, [r4]
	lsls r1, r6, #0x19
	mov sb, r1
	adds r7, r6, #1
	cmp r0, #0
	beq _0806A30C
_0806A294:
	ldrb r0, [r4]
	adds r4, #1
	bl sub_080050EC
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r0, #1
	str r0, [sp]
	adds r0, r5, #0
	movs r2, #2
	movs r3, #0
	bl sub_08004BB8
	adds r5, #0x20
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldrb r0, [r4]
	cmp r0, #0
	bne _0806A294
	b _0806A30C
	.align 2, 0
_0806A2C4: .4byte 0x0600F000
_0806A2C8: .4byte 0x01000200
_0806A2CC: .4byte 0x0600D000
_0806A2D0: .4byte 0x030044D0
_0806A2D4: .4byte 0x08090444
_0806A2D8: .4byte 0x06008000
_0806A2DC:
	movs r0, #0xa2
	lsls r0, r0, #0xf
	orrs r4, r0
	adds r0, r4, #0
	bl sub_08006828
	adds r1, r0, #0
	movs r0, #1
	str r0, [sp]
	adds r0, r5, #0
	movs r2, #2
	movs r3, #0
	bl sub_08004D94
	adds r0, r4, #0
	movs r1, #0
	bl sub_08005C38
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	lsls r1, r6, #0x19
	mov sb, r1
	adds r7, r6, #1
_0806A30C:
	movs r0, #0x1e
	cmp r6, #0
	bne _0806A314
	movs r0, #0x1a
_0806A314:
	mov r1, sb
	lsrs r3, r1, #0x18
	mov r1, r8
	str r1, [sp]
	movs r1, #1
	str r1, [sp, #4]
	mov r1, sl
	movs r2, #0
	bl sub_08004FD4
_0806A328:
	adds r6, r7, #0
	cmp r6, #3
	ble _0806A246
	ldr r1, _0806A35C @ =0x030024E0
	movs r3, #0
	ldr r0, _0806A360 @ =0x0000FEF0
	strh r0, [r1, #0xc]
	ldr r2, _0806A364 @ =0x0000FFB0
	strh r2, [r1, #0x14]
	subs r0, #0x10
	strh r0, [r1, #0xe]
	strh r2, [r1, #0x16]
	ldr r2, _0806A368 @ =0x030044D0
	ldr r1, [r2]
	adds r1, #0x32
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r0, [r2]
	adds r0, #0x33
	strb r3, [r0]
	ldr r1, [r2]
	movs r0, #0xf0
	strh r0, [r1, #0x36]
	b _0806A412
	.align 2, 0
_0806A35C: .4byte 0x030024E0
_0806A360: .4byte 0x0000FEF0
_0806A364: .4byte 0x0000FFB0
_0806A368: .4byte 0x030044D0
_0806A36C:
	ldr r1, _0806A384 @ =0x030024E0
	ldrh r0, [r1, #0xc]
	adds r0, #8
	strh r0, [r1, #0xc]
	ldrh r0, [r1, #0xe]
	adds r0, #8
	strh r0, [r1, #0xe]
	ldr r1, [r5]
	ldrh r0, [r1, #0x36]
	subs r0, #8
	b _0806A3BC
	.align 2, 0
_0806A384: .4byte 0x030024E0
_0806A388:
	ldr r1, [r5]
	adds r1, #0x33
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xb3
	bls _0806A412
	ldr r0, [r5]
	movs r1, #0xf0
	strh r1, [r0, #0x36]
	adds r0, #0x32
	ldrb r1, [r0]
	adds r1, #1
	b _0806A410
_0806A3A8:
	ldr r1, _0806A3D0 @ =0x030024E0
	ldrh r0, [r1, #0xc]
	adds r0, #0x10
	strh r0, [r1, #0xc]
	ldrh r0, [r1, #0xe]
	adds r0, #0x10
	strh r0, [r1, #0xe]
	ldr r1, [r5]
	ldrh r0, [r1, #0x36]
	subs r0, #0x10
_0806A3BC:
	strh r0, [r1, #0x36]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0806A412
	adds r1, #0x32
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	b _0806A412
	.align 2, 0
_0806A3D0: .4byte 0x030024E0
_0806A3D4:
	ldr r1, _0806A3F8 @ =0x08090444
	ldr r3, [r5]
	adds r4, r3, #0
	adds r4, #0x34
	ldrb r0, [r4]
	adds r2, r0, #1
	lsls r0, r2, #3
	adds r0, r0, r1
	ldrh r1, [r0]
	ldr r0, _0806A3FC @ =0x0000FFFF
	cmp r1, r0
	beq _0806A400
	movs r1, #0
	strb r2, [r4]
	ldr r0, [r5]
	adds r0, #0x32
	b _0806A410
	.align 2, 0
_0806A3F8: .4byte 0x08090444
_0806A3FC: .4byte 0x0000FFFF
_0806A400:
	adds r1, r3, #0
	adds r1, #0x32
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r0, [r5]
	adds r0, #0x35
	movs r1, #1
_0806A410:
	strb r1, [r0]
_0806A412:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0806A424
sub_0806A424: @ 0x0806A424
	push {r4, r5, lr}
	sub sp, #4
	bl sub_08060708
	ldr r4, _0806A46C @ =0x030024E0
	ldr r0, _0806A470 @ =0x00005A08
	strh r0, [r4, #4]
	ldr r0, _0806A474 @ =0x00005E09
	strh r0, [r4, #6]
	ldr r0, _0806A478 @ =0x0000FEF0
	strh r0, [r4, #0xc]
	ldr r1, _0806A47C @ =0x0000FFB0
	strh r1, [r4, #0x14]
	subs r0, #0x10
	strh r0, [r4, #0xe]
	strh r1, [r4, #0x16]
	movs r0, #0xf
	bl sub_080607FC
	bl sub_08069FC4
	movs r0, #0x20
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl FadeIn_08008AF4
	adds r4, #0x4f
	movs r0, #1
	strb r0, [r4]
	bl sub_08008D34
	movs r0, #0xe
	bl sub_080077C4
	b _0806A48E
	.align 2, 0
_0806A46C: .4byte 0x030024E0
_0806A470: .4byte 0x00005A08
_0806A474: .4byte 0x00005E09
_0806A478: .4byte 0x0000FEF0
_0806A47C: .4byte 0x0000FFB0
_0806A480:
	bl sub_0806A114
	bl sub_0806A1E4
	movs r0, #1
	bl ProcSleep_08002B98
_0806A48E:
	ldr r0, _0806A548 @ =0x030024B0
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _0806A4A6
	ldr r0, _0806A54C @ =0x030044D0
	ldr r0, [r0]
	adds r0, #0x35
	ldrb r0, [r0]
	cmp r0, #0
	beq _0806A480
_0806A4A6:
	movs r0, #0
	movs r1, #0x20
	bl sub_080077EC
	movs r0, #0x20
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl FadeOut_080089E8
	bl sub_08008D34
	bl sub_0806A09C
	ldr r4, _0806A550 @ =0x030024E0
	movs r1, #0
	movs r0, #0x80
	lsls r0, r0, #4
	strh r0, [r4]
	ldr r0, _0806A554 @ =0x0000FFE8
	strh r0, [r4, #0x10]
	subs r0, #0x50
	strh r0, [r4, #0x18]
	str r1, [sp]
	movs r5, #0xc0
	lsls r5, r5, #0x13
	ldr r2, _0806A558 @ =0x01006000
	mov r0, sp
	adds r1, r5, #0
	bl CpuFastSet
	ldr r0, _0806A55C @ =0x08140BA4
	movs r1, #0xa0
	lsls r1, r1, #0x13
	bl LoadPalette_08008308
	ldr r0, _0806A560 @ =0x08140CFC
	adds r1, r5, #0
	bl DecompressData_08008374
	ldr r0, _0806A564 @ =0x08140BC8
	ldr r1, _0806A568 @ =0x0600C800
	movs r2, #0
	movs r3, #0
	bl LoadTileMap_080083CC
	movs r0, #0x1e
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl FadeIn_08008AF4
	adds r4, #0x4f
	movs r0, #1
	strb r0, [r4]
	bl sub_08008D34
	movs r0, #0x96
	lsls r0, r0, #1
	bl ProcSleep_08002B98
	movs r0, #0x1e
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl FadeOut_080089E8
	bl sub_08008D34
	bl sub_080607BC
	movs r0, #0x1a
	bl ChangeGameState_08008790
	bl sub_08002B0C
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806A548: .4byte 0x030024B0
_0806A54C: .4byte 0x030044D0
_0806A550: .4byte 0x030024E0
_0806A554: .4byte 0x0000FFE8
_0806A558: .4byte 0x01006000
_0806A55C: .4byte 0x08140BA4
_0806A560: .4byte 0x08140CFC
_0806A564: .4byte 0x08140BC8
_0806A568: .4byte 0x0600C800
