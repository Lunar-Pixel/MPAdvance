	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .text
	.ARM
	.syntax unified

	thumb_func_start sub_0806A56C
sub_0806A56C: @ 0x0806A56C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #4]
	bl sub_08062848
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	movs r0, #0xff
	str r0, [sp, #8]
	movs r1, #0
	mov r8, r1
	movs r6, #0
	movs r2, #0
	str r2, [sp, #0xc]
	cmp r7, #0
	beq _0806A5AC
	bl sub_080038E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0xc]
	ldr r0, [sp, #4]
	bl sub_08003A30
_0806A5AC:
	bl sub_08061E08
	ldr r0, _0806A5E8 @ =0x0809058C
	movs r1, #8
	bl sub_08061FBC
	adds r0, r5, #0
	bl sub_080627F8
	ldr r0, [sp, #0xc]
	cmp r0, #0
	beq _0806A5CA
	movs r0, #0
	bl sub_08061124
_0806A5CA:
	movs r0, #0
	bl sub_080613CC
	movs r0, #0
	bl sub_080059E4
	ldr r1, [sp, #0xc]
	cmp r1, #0
	bne _0806A5EC
	movs r0, #0xf8
	lsls r0, r0, #0xe
	bl sub_080062D0
	b _0806A5F2
	.align 2, 0
_0806A5E8: .4byte 0x0809058C
_0806A5EC:
	ldr r0, _0806A600 @ =0x003E0033
	bl sub_080062D0
_0806A5F2:
	mov r4, sp
	ldr r2, [sp, #4]
	adds r2, #1
	mov sl, r2
	lsls r2, r2, #0x10
	mov sb, r2
	b _0806A700
	.align 2, 0
_0806A600: .4byte 0x003E0033
_0806A604:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0806A6A2
	ldr r0, _0806A638 @ =0x0809058C
	adds r0, r5, r0
	ldrb r6, [r0]
	movs r0, #0xcc
	bl m4aSongNumStart
	movs r0, #0
	bl sub_08061124
	movs r0, #5
	adds r1, r6, #0
	bl sub_08005BE0
	cmp r7, #0
	bne _0806A644
	ldr r0, _0806A63C @ =0x003E0001
	bl sub_080062D0
	ldr r0, _0806A640 @ =0x003E0002
	bl sub_0800648C
	b _0806A650
	.align 2, 0
_0806A638: .4byte 0x0809058C
_0806A63C: .4byte 0x003E0001
_0806A640: .4byte 0x003E0002
_0806A644:
	ldr r0, _0806A68C @ =0x003E000B
	bl sub_080062D0
	ldr r0, _0806A690 @ =0x003E000C
	bl sub_0800648C
_0806A650:
	bl sub_080064F8
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0806A694
	cmp r7, #0
	beq _0806A728
	movs r0, #1
	mov r8, r0
_0806A662:
	strb r6, [r4]
	strb r5, [r4, #1]
	mov r1, r8
	strb r1, [r4, #2]
	ldr r0, [sp, #4]
	adds r0, #1
	lsls r5, r0, #0x10
	movs r4, #9
_0806A672:
	lsrs r0, r5, #0x10
	mov r1, sp
	movs r2, #4
	bl sub_080038F4
	movs r0, #1
	bl ProcSleep_08002B98
	subs r4, #1
	cmp r4, #0
	bge _0806A672
	b _0806A728
	.align 2, 0
_0806A68C: .4byte 0x003E000B
_0806A690: .4byte 0x003E000C
_0806A694:
	movs r0, #1
	bl sub_08061124
	movs r0, #0xf8
	lsls r0, r0, #0xe
	bl sub_080062D0
_0806A6A2:
	bl sub_08062648
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r7, #0
	beq _0806A6E6
	strb r6, [r4]
	strb r5, [r4, #1]
	mov r2, r8
	strb r2, [r4, #2]
	mov r1, sb
	lsrs r0, r1, #0x10
	mov r1, sp
	movs r2, #4
	bl sub_080038F4
	b _0806A6E6
_0806A6C4:
	movs r0, #0
	mov r2, sb
	lsrs r1, r2, #0x10
	mov r2, sp
	movs r3, #4
	bl sub_08003938
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, sl
	bne _0806A6E6
	ldrb r6, [r4]
	ldrb r5, [r4, #1]
	ldrb r0, [r4, #2]
	mov r8, r0
	cmp r0, #0
	bne _0806A728
_0806A6E6:
	ldr r1, [sp, #8]
	cmp r1, r5
	beq _0806A700
	adds r0, r5, #0
	bl sub_080627F8
	ldr r0, _0806A760 @ =0x0809058C
	adds r0, r5, r0
	ldrb r6, [r0]
	adds r0, r6, #0
	bl sub_0806083C
	str r5, [sp, #8]
_0806A700:
	movs r0, #1
	bl ProcSleep_08002B98
	ldr r2, [sp, #0xc]
	cmp r2, #0
	bne _0806A6C4
	ldr r0, _0806A764 @ =0x030024B0
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0806A71A
	b _0806A604
_0806A71A:
	movs r0, #0xce
	bl m4aSongNumStart
	movs r6, #0xff
	mov r8, r6
	cmp r7, #0
	bne _0806A662
_0806A728:
	bl sub_08005A2C
	bl sub_08061490
	bl sub_08062180
	cmp r6, #0xff
	bne _0806A73C
	bl sub_08060950
_0806A73C:
	cmp r7, #0
	beq _0806A74C
	ldr r0, [sp, #4]
	adds r0, #2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_08003A30
_0806A74C:
	adds r0, r6, #0
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0806A760: .4byte 0x0809058C
_0806A764: .4byte 0x030024B0

	thumb_func_start sub_0806A768
sub_0806A768: @ 0x0806A768
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	movs r7, #0x44
	ldr r0, _0806A7F8 @ =0x03004400
	movs r1, #1
	strb r1, [r0, #5]
	ldrb r0, [r0, #0xa]
	cmp r0, #0x11
	bne _0806A794
	bl sub_08001F2C
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _0806A794
	movs r0, #0x2a
	bl ChangeGameState_08008790
	bl sub_08002B0C
_0806A794:
	bl sub_08060708
	ldr r1, _0806A7F8 @ =0x03004400
	ldrb r0, [r1, #0xa]
	movs r5, #0
	cmp r0, #0x11
	bne _0806A7A4
	movs r5, #5
_0806A7A4:
	ldrb r0, [r1, #8]
	strb r0, [r1, #0xa]
	movs r0, #9
	bl sub_080607FC
	bl sub_08060FF4
	bl sub_08061D7C
	movs r0, #2
	bl sub_08061DA0
	cmp r5, #5
	bne _0806A806
	bl sub_08003468
	bl sub_08003510
	movs r0, #0xa
	bl ProcSleep_08002B98
	ldr r4, _0806A7FC @ =0x02037EB0
	movs r6, #1
	strb r6, [r4, #6]
	bl sub_08001F2C
	lsls r0, r0, #0x18
	asrs r1, r0, #0x18
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0806A800
	strb r6, [r4, #4]
	adds r0, r4, #0
	adds r0, #0x84
	str r1, [r0]
	movs r0, #0xa
	strb r0, [r4, #8]
_0806A7F0:
	movs r0, #1
	bl ProcSleep_08002B98
	b _0806A7F0
	.align 2, 0
_0806A7F8: .4byte 0x03004400
_0806A7FC: .4byte 0x02037EB0
_0806A800:
	movs r0, #8
	bl sub_080077C4
_0806A806:
	movs r0, #0x20
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl FadeIn_08008AF4
	ldr r0, _0806A834 @ =0x030024E0
	adds r0, #0x4f
	movs r1, #1
	strb r1, [r0]
	bl sub_08008D34
	movs r6, #0
_0806A820:
	lsls r0, r5, #0x18
	asrs r0, r0, #0x18
	cmp r0, #5
	bls _0806A82A
	b _0806A9BC
_0806A82A:
	lsls r0, r0, #2
	ldr r1, _0806A838 @ =_0806A83C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0806A834: .4byte 0x030024E0
_0806A838: .4byte _0806A83C
_0806A83C: @ jump table
	.4byte _0806A854 @ case 0
	.4byte _0806A868 @ case 1
	.4byte _0806A882 @ case 2
	.4byte _0806A8A0 @ case 3
	.4byte _0806A90A @ case 4
	.4byte _0806A91A @ case 5
_0806A854:
	bl sub_080628A0
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _0806A896
	movs r0, #0x2a
	b _0806A912
_0806A868:
	bl sub_080628D8
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r5, #2
	mvns r0, r0
	rsbs r1, r0, #0
	orrs r1, r0
	asrs r1, r1, #0x1f
	ands r5, r1
	bl sub_0806288C
	b _0806A9BC
_0806A882:
	ldr r1, _0806A89C @ =0x00002201
	movs r0, #0
	bl sub_0806A56C
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	movs r5, #3
	cmp r7, #0xff
	beq _0806A896
	b _0806A9BC
_0806A896:
	movs r5, #1
	b _0806A9BC
	.align 2, 0
_0806A89C: .4byte 0x00002201
_0806A8A0:
	ldr r0, _0806A8FC @ =0x03004400
	ldrb r1, [r0, #0xe]
	ldrb r2, [r0, #0xf]
	adds r0, r7, #0
	movs r3, #1
	bl sub_08001D80
	movs r0, #0
	movs r1, #0x20
	bl sub_080077EC
	movs r0, #0x20
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl FadeOut_080089E8
	bl sub_08008D34
	adds r0, r7, #0
	movs r1, #0
	bl sub_0806E4F4
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0806A904
	movs r0, #9
	bl sub_080607FC
	movs r0, #8
	bl sub_080077C4
	movs r0, #0x20
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl FadeIn_08008AF4
	ldr r0, _0806A900 @ =0x030024E0
	adds r0, #0x4f
	movs r1, #1
	strb r1, [r0]
	bl sub_08008D34
	movs r5, #2
	b _0806A9BC
	.align 2, 0
_0806A8FC: .4byte 0x03004400
_0806A900: .4byte 0x030024E0
_0806A904:
	movs r5, #4
	movs r6, #1
	b _0806A9BC
_0806A90A:
	movs r0, #0x17
	bl sub_08001930
	movs r0, #0x11
_0806A912:
	bl ChangeGameState_08008790
	movs r5, #0xff
	b _0806A9BC
_0806A91A:
	bl sub_08001F2C
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	beq _0806A938
	cmp r0, #1
	ble _0806A92E
	cmp r0, #2
	beq _0806A940
_0806A92E:
	ldr r4, _0806A934 @ =0x003E002D
	b _0806A942
	.align 2, 0
_0806A934: .4byte 0x003E002D
_0806A938:
	ldr r4, _0806A93C @ =0x003E0003
	b _0806A942
	.align 2, 0
_0806A93C: .4byte 0x003E0003
_0806A940:
	ldr r4, _0806A970 @ =0x003E0004
_0806A942:
	movs r0, #0
	bl sub_080059E4
	adds r0, r4, #0
	bl sub_080062D0
	bl sub_08005A2C
	ldr r0, _0806A974 @ =0x00001234
	bl sub_08003A30
	ldr r0, _0806A978 @ =0x003E0005
	bl sub_0800648C
	bl sub_080064F8
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0806A980
	ldr r0, _0806A97C @ =0x03004400
	ldrb r7, [r0, #0xd]
	movs r5, #4
	b _0806A98C
	.align 2, 0
_0806A970: .4byte 0x003E0004
_0806A974: .4byte 0x00001234
_0806A978: .4byte 0x003E0005
_0806A97C: .4byte 0x03004400
_0806A980:
	bl sub_08003530
	movs r0, #0x2a
	bl ChangeGameState_08008790
	movs r5, #0xff
_0806A98C:
	mov r0, sp
	strb r5, [r0]
	bl sub_0800B818
	mov r1, sp
	strb r0, [r1, #1]
	mov r0, sp
	ldrb r0, [r0, #1]
	bl sub_08001B54
	movs r4, #0
_0806A9A2:
	ldr r0, _0806A9D0 @ =0x00001111
	mov r1, sp
	movs r2, #2
	bl sub_080038F4
	movs r0, #1
	bl ProcSleep_08002B98
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #9
	bls _0806A9A2
_0806A9BC:
	lsls r0, r5, #0x18
	asrs r0, r0, #0x18
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _0806A9D4
	movs r0, #1
	bl ProcSleep_08002B98
	b _0806A820
	.align 2, 0
_0806A9D0: .4byte 0x00001111
_0806A9D4:
	cmp r6, #0
	bne _0806A9F8
	ldr r0, _0806AA1C @ =0x03004400
	ldrb r0, [r0, #9]
	cmp r0, #0x11
	bne _0806A9E8
	movs r0, #0
	movs r1, #0x20
	bl sub_080077EC
_0806A9E8:
	movs r0, #0x20
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl FadeOut_080089E8
	bl sub_08008D34
_0806A9F8:
	ldr r0, _0806AA1C @ =0x03004400
	ldrb r0, [r0, #9]
	cmp r0, #0x2a
	bne _0806AA04
	bl sub_080034DC
_0806AA04:
	bl sub_08061E30
	bl sub_0806102C
	bl sub_080607BC
	bl sub_08002B0C
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806AA1C: .4byte 0x03004400
