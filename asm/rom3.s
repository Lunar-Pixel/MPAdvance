	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .text
	.ARM
	.syntax unified

	thumb_func_start sub_08030164
sub_08030164: @ 0x08030164
	push {r4, lr}
	bl sub_0800585C
	bl sub_0800B17C
	bl sub_0803A384
	ldr r4, _0803021C @ =0x030013C0
	ldr r0, [r4]
	movs r1, #8
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
	ldr r0, [r4]
	movs r1, #0xe
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	ldr r0, [r4]
	movs r1, #0x10
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	ldr r0, [r4]
	movs r1, #0x14
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	ldr r0, [r4]
	movs r1, #0x16
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	ldr r0, [r4]
	movs r1, #0x18
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	ldr r0, [r4]
	movs r1, #0x1a
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	ldr r0, [r4]
	movs r1, #0x2e
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	ldr r0, [r4]
	movs r1, #0x22
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	ldr r0, [r4]
	movs r1, #0x24
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	ldr r0, [r4]
	movs r1, #0x26
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	ldr r0, [r4]
	movs r1, #0x28
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	ldr r0, [r4]
	movs r1, #0x2a
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	ldr r0, [r4]
	movs r1, #0x2c
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803021C: .4byte 0x030013C0

	thumb_func_start sub_08030220
sub_08030220: @ 0x08030220
	push {r4, r5, lr}
	movs r0, #0
	bl sub_080081A0
	ldr r5, _0803026C @ =0x030013C0
	movs r4, #0xe6
	lsls r4, r4, #4
	adds r0, r4, #0
	bl sub_08007CE8
	adds r1, r0, #0
	str r1, [r5]
	movs r0, #0
	adds r2, r4, #0
	bl sub_08007EFC
	bl sub_0802FBB4
	movs r0, #1
	bl sub_08002B98
	ldr r0, [r5]
	ldrb r0, [r0, #2]
	cmp r0, #0
	bne _08030286
	adds r4, r5, #0
	ldr r5, _08030270 @ =0x08087D60
_08030256:
	ldr r1, [r4]
	ldrh r0, [r1, #6]
	cmp r0, #0
	bne _08030274
	ldrb r0, [r1]
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	bl call_via_r0
	b _08030278
	.align 2, 0
_0803026C: .4byte 0x030013C0
_08030270: .4byte 0x08087D60
_08030274:
	subs r0, #1
	strh r0, [r1, #6]
_08030278:
	movs r0, #1
	bl sub_08002B98
	ldr r0, [r4]
	ldrb r0, [r0, #2]
	cmp r0, #0
	beq _08030256
_08030286:
	ldr r5, _08030314 @ =0x030013C0
	ldr r0, [r5]
	ldr r4, _08030318 @ =0x000001CD
	adds r0, r0, r4
	ldrb r0, [r0]
	bl sub_08008790
	bl sub_08030164
	movs r0, #1
	bl sub_08002B98
	ldr r0, [r5]
	adds r0, r0, r4
	ldrb r0, [r0]
	cmp r0, #6
	bgt _080302AC
	cmp r0, #4
	bge _080302B0
_080302AC:
	bl m4aMPlayAllStop
_080302B0:
	ldr r4, _08030314 @ =0x030013C0
	ldr r0, [r4]
	ldr r0, [r0, #0x30]
	bl sub_08007CF8
	ldr r0, [r4]
	ldr r0, [r0, #0x38]
	bl sub_08007CF8
	ldr r0, [r4]
	ldr r0, [r0, #0x60]
	bl sub_08007CF8
	ldr r0, [r4]
	ldr r0, [r0, #0x50]
	bl sub_08007CF8
	ldr r0, [r4]
	ldr r0, [r0, #0x58]
	bl sub_08007CF8
	ldr r0, [r4]
	bl sub_08007CF8
	ldr r4, _0803031C @ =0x02031050
	ldr r1, _08030320 @ =0x000008A4
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _08030308
	ldr r0, _08030324 @ =0x02034BF0
	ldr r2, _08030328 @ =0x00000A5C
	adds r1, r4, r2
	movs r2, #0x93
	lsls r2, r2, #2
	bl sub_08007EA4
	ldr r0, _0803032C @ =0x020335D0
	ldr r2, _08030330 @ =0x000008A8
	adds r1, r4, r2
	movs r2, #0xda
	lsls r2, r2, #1
	bl sub_08007EA4
_08030308:
	bl sub_08002B0C
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08030314: .4byte 0x030013C0
_08030318: .4byte 0x000001CD
_0803031C: .4byte 0x02031050
_08030320: .4byte 0x000008A4
_08030324: .4byte 0x02034BF0
_08030328: .4byte 0x00000A5C
_0803032C: .4byte 0x020335D0
_08030330: .4byte 0x000008A8

	thumb_func_start sub_08030334
sub_08030334: @ 0x08030334
	ldr r1, _08030348 @ =0x030013C0
	ldr r3, [r1]
	movs r2, #0
	strb r0, [r3]
	ldr r0, [r1]
	strb r2, [r0, #1]
	ldr r0, [r1]
	strh r2, [r0, #4]
	strh r2, [r0, #6]
	bx lr
	.align 2, 0
_08030348: .4byte 0x030013C0

	thumb_func_start sub_0803034C
sub_0803034C: @ 0x0803034C
	push {r4, r5, lr}
	ldr r0, _08030364 @ =0x030013C0
	ldr r0, [r0]
	ldrb r0, [r0, #1]
	cmp r0, #1
	beq _080303E0
	cmp r0, #1
	bgt _08030368
	cmp r0, #0
	beq _0803036E
	b _08030420
	.align 2, 0
_08030364: .4byte 0x030013C0
_08030368:
	cmp r0, #2
	beq _08030418
	b _08030420
_0803036E:
	ldr r4, _08030380 @ =0x02034BF0
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _08030384
	movs r0, #0xf
	bl sub_08030334
	b _08030420
	.align 2, 0
_08030380: .4byte 0x02034BF0
_08030384:
	bl sub_08008174
	ldr r2, _080303F4 @ =0x030024E0
	ldrh r1, [r2]
	movs r3, #0x80
	lsls r3, r3, #3
	adds r0, r3, #0
	orrs r1, r0
	movs r5, #0x80
	lsls r5, r5, #4
	adds r0, r5, #0
	orrs r1, r0
	movs r3, #0
	movs r5, #0x80
	lsls r5, r5, #1
	adds r0, r5, #0
	orrs r1, r0
	orrs r1, r3
	strh r1, [r2]
	ldrb r0, [r4, #0xb]
	cmp r0, #0x13
	bne _080303BE
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r3, #0
	orrs r1, r0
	strh r1, [r2]
	movs r0, #2
	strh r0, [r2, #0x14]
_080303BE:
	adds r0, r2, #0
	adds r0, #0x4f
	movs r1, #1
	strb r1, [r0]
	ldr r0, _080303F8 @ =0x03004400
	ldrb r0, [r0, #0xa]
	cmp r0, #6
	bgt _080303D2
	cmp r0, #4
	bge _080303D8
_080303D2:
	movs r0, #0xf
	bl m4aSongNumStart
_080303D8:
	ldr r0, _080303FC @ =0x030013C0
	ldr r1, [r0]
	movs r0, #1
	strb r0, [r1, #1]
_080303E0:
	ldr r0, _08030400 @ =0x02034BF0
	ldrb r0, [r0, #0xb]
	cmp r0, #0
	beq _080303EC
	cmp r0, #9
	bne _08030404
_080303EC:
	bl sub_0803B924
	b _08030408
	.align 2, 0
_080303F4: .4byte 0x030024E0
_080303F8: .4byte 0x03004400
_080303FC: .4byte 0x030013C0
_08030400: .4byte 0x02034BF0
_08030404:
	bl sub_0803B840
_08030408:
	ldr r0, _08030414 @ =0x030013C0
	ldr r1, [r0]
	movs r0, #2
	strb r0, [r1, #1]
	b _08030420
	.align 2, 0
_08030414: .4byte 0x030013C0
_08030418:
	ldr r0, _08030428 @ =0x02034BF0
	ldrb r0, [r0, #0xb]
	bl sub_08030334
_08030420:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08030428: .4byte 0x02034BF0

	thumb_func_start sub_0803042C
sub_0803042C: @ 0x0803042C
	push {lr}
	ldr r0, _08030444 @ =0x030013C0
	ldr r1, [r0]
	ldrb r0, [r1, #1]
	cmp r0, #1
	beq _08030456
	cmp r0, #1
	bgt _08030448
	cmp r0, #0
	beq _08030450
	b _080305DC
	.align 2, 0
_08030444: .4byte 0x030013C0
_08030448:
	cmp r0, #2
	bne _0803044E
	b _08030590
_0803044E:
	b _080305DC
_08030450:
	movs r0, #1
	strb r0, [r1, #1]
	b _080305DC
_08030456:
	ldr r2, _08030470 @ =0x000001CD
	adds r0, r1, r2
	ldrb r0, [r0]
	subs r0, #3
	cmp r0, #0x23
	bls _08030464
	b _0803057C
_08030464:
	lsls r0, r0, #2
	ldr r1, _08030474 @ =_08030478
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08030470: .4byte 0x000001CD
_08030474: .4byte _08030478
_08030478: @ jump table
	.4byte _08030508 @ case 0
	.4byte _0803057C @ case 1
	.4byte _0803057C @ case 2
	.4byte _0803057C @ case 3
	.4byte _08030510 @ case 4
	.4byte _08030508 @ case 5
	.4byte _0803057C @ case 6
	.4byte _0803057C @ case 7
	.4byte _0803057C @ case 8
	.4byte _0803057C @ case 9
	.4byte _0803057C @ case 10
	.4byte _0803057C @ case 11
	.4byte _0803057C @ case 12
	.4byte _0803057C @ case 13
	.4byte _08030568 @ case 14
	.4byte _0803057C @ case 15
	.4byte _0803057C @ case 16
	.4byte _0803057C @ case 17
	.4byte _0803057C @ case 18
	.4byte _0803057C @ case 19
	.4byte _0803057C @ case 20
	.4byte _0803057C @ case 21
	.4byte _0803057C @ case 22
	.4byte _0803057C @ case 23
	.4byte _0803057C @ case 24
	.4byte _0803057C @ case 25
	.4byte _0803057C @ case 26
	.4byte _0803057C @ case 27
	.4byte _08030568 @ case 28
	.4byte _0803057C @ case 29
	.4byte _08030510 @ case 30
	.4byte _0803057C @ case 31
	.4byte _08030568 @ case 32
	.4byte _0803057C @ case 33
	.4byte _0803057C @ case 34
	.4byte _08030524 @ case 35
_08030508:
	movs r0, #0xf5
	bl m4aSongNumStart
	b _08030556
_08030510:
	ldr r0, _08030520 @ =0x030056F0
	movs r1, #4
	bl m4aMPlayFadeOut
	bl sub_0803B890
	b _08030580
	.align 2, 0
_08030520: .4byte 0x030056F0
_08030524:
	ldr r1, _08030548 @ =0x02034BF0
	ldr r3, _0803054C @ =0x00000236
	adds r0, r1, r3
	ldrb r0, [r0]
	cmp r0, #3
	bne _08030568
	ldr r0, [r1, #0x1c]
	ldrh r1, [r0, #2]
	movs r0, #0xfc
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0x40
	beq _08030550
	movs r0, #0xf6
	bl m4aSongNumStart
	b _08030556
	.align 2, 0
_08030548: .4byte 0x02034BF0
_0803054C: .4byte 0x00000236
_08030550:
	movs r0, #0xf5
	bl m4aSongNumStart
_08030556:
	ldr r0, _08030564 @ =0x030056F0
	movs r1, #4
	bl m4aMPlayFadeOut
	bl sub_0803B8F0
	b _08030580
	.align 2, 0
_08030564: .4byte 0x030056F0
_08030568:
	ldr r0, _08030578 @ =0x030056F0
	movs r1, #2
	bl m4aMPlayFadeOut
	bl sub_0803B868
	b _08030580
	.align 2, 0
_08030578: .4byte 0x030056F0
_0803057C:
	bl sub_0803B868
_08030580:
	ldr r0, _0803058C @ =0x030013C0
	ldr r1, [r0]
	movs r0, #2
	strb r0, [r1, #1]
	b _080305DC
	.align 2, 0
_0803058C: .4byte 0x030013C0
_08030590:
	ldr r2, _080305E0 @ =0x02034BF0
	movs r3, #0x8e
	lsls r3, r3, #2
	adds r0, r1, r3
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r2, #0x12]
	subs r3, #0x6b
	adds r0, r1, r3
	ldrb r0, [r0]
	cmp r0, #0x26
	bne _080305B6
	ldr r1, _080305E4 @ =0x00000236
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #3
	bne _080305B6
	bl sub_08037AC8
_080305B6:
	ldr r1, _080305E8 @ =0x030013C0
	ldr r0, [r1]
	ldr r2, _080305EC @ =0x000001CD
	adds r0, r0, r2
	ldrb r0, [r0]
	adds r2, r1, #0
	cmp r0, #8
	beq _080305CA
	cmp r0, #0x26
	bne _080305D6
_080305CA:
	ldr r0, _080305E0 @ =0x02034BF0
	movs r3, #0x90
	lsls r3, r3, #1
	adds r0, r0, r3
	movs r1, #0
	str r1, [r0]
_080305D6:
	ldr r1, [r2]
	movs r0, #1
	strb r0, [r1, #2]
_080305DC:
	pop {r0}
	bx r0
	.align 2, 0
_080305E0: .4byte 0x02034BF0
_080305E4: .4byte 0x00000236
_080305E8: .4byte 0x030013C0
_080305EC: .4byte 0x000001CD

	thumb_func_start sub_080305F0
sub_080305F0: @ 0x080305F0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r0, #0x27
	mov sl, r0
	bl sub_0800692C
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _08030612
	movs r0, #0x27
	b _080308A8
_08030612:
	ldr r0, _0803064C @ =0x02031050
	movs r1, #0x89
	lsls r1, r1, #4
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0803065C
	ldr r0, _08030650 @ =0x02034DF8
	ldr r6, _08030654 @ =0x08087BE8
	ldr r5, _08030658 @ =0x03004400
	ldrb r1, [r5, #0xe]
	lsls r1, r1, #1
	adds r1, r1, r6
	ldrh r1, [r1]
	bl sub_0800B87C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0803063E
	b _080308A6
_0803063E:
	ldrb r0, [r5, #0xe]
	lsls r0, r0, #1
	adds r0, r0, r6
	ldrb r0, [r0]
	mov sl, r0
	b _080308A6
	.align 2, 0
_0803064C: .4byte 0x02031050
_08030650: .4byte 0x02034DF8
_08030654: .4byte 0x08087BE8
_08030658: .4byte 0x03004400
_0803065C:
	ldr r7, _08030690 @ =0x02034BF0
	ldr r5, _08030694 @ =0x030013C0
	movs r3, #0x91
	lsls r3, r3, #2
	movs r2, #0
	movs r1, #0
	movs r6, #2
_0803066A:
	ldr r0, [r5]
	adds r0, r0, r1
	adds r0, r0, r3
	strb r2, [r0]
	adds r1, #0x28
	subs r6, #1
	cmp r6, #0
	bge _0803066A
	movs r4, #0
	ldr r0, [r7, #0x1c]
	ldrh r7, [r0, #0x14]
	cmp r7, #5
	bhi _080306CA
	lsls r0, r7, #2
	ldr r1, _08030698 @ =_0803069C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08030690: .4byte 0x02034BF0
_08030694: .4byte 0x030013C0
_08030698: .4byte _0803069C
_0803069C: @ jump table
	.4byte _080306B4 @ case 0
	.4byte _080306B8 @ case 1
	.4byte _080306BC @ case 2
	.4byte _080306C0 @ case 3
	.4byte _080306C4 @ case 4
	.4byte _080306C8 @ case 5
_080306B4:
	movs r4, #0x2a
	b _080306CA
_080306B8:
	movs r4, #5
	b _080306CA
_080306BC:
	movs r4, #2
	b _080306CA
_080306C0:
	movs r4, #0x11
	b _080306CA
_080306C4:
	movs r4, #8
	b _080306CA
_080306C8:
	movs r4, #1
_080306CA:
	movs r6, #0
	ldr r2, _0803073C @ =0x02034E14
	mov sb, r2
	ldr r0, _08030740 @ =0x030013C0
	mov r8, r0
_080306D4:
	ldr r1, _08030744 @ =0x08087990
	lsls r0, r6, #2
	adds r5, r0, r1
	ldr r0, [r5]
	ldrb r1, [r0, #1]
	mov r0, sb
	bl sub_0800B87C
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08030794
	ldr r0, [r5]
	ldrb r1, [r0, #1]
	mov r0, sb
	subs r0, #0x14
	bl sub_0800B87C
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08030794
	lsls r1, r6, #0x10
	lsrs r1, r1, #0x10
	mov r0, sb
	subs r0, #0x1c
	bl sub_0800B87C
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08030794
	ldr r2, _08030748 @ =0x0808D4A0
	ldr r0, [r5]
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrb r1, [r0, #0xa]
	cmp r7, r1
	bne _08030750
	mov r1, r8
	ldr r2, [r1]
	movs r0, #0x91
	lsls r0, r0, #2
	adds r3, r2, r0
	ldrb r1, [r3]
	adds r0, r1, #1
	strb r0, [r3]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r0, _0803074C @ =0x00000245
	b _0803078E
	.align 2, 0
_0803073C: .4byte 0x02034E14
_08030740: .4byte 0x030013C0
_08030744: .4byte 0x08087990
_08030748: .4byte 0x0808D4A0
_0803074C: .4byte 0x00000245
_08030750:
	adds r0, r4, #0
	asrs r0, r1
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08030778
	mov r1, r8
	ldr r2, [r1]
	movs r0, #0x9b
	lsls r0, r0, #2
	adds r3, r2, r0
	ldrb r1, [r3]
	adds r0, r1, #1
	strb r0, [r3]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r0, _08030774 @ =0x0000026D
	b _0803078E
	.align 2, 0
_08030774: .4byte 0x0000026D
_08030778:
	mov r1, r8
	ldr r2, [r1]
	movs r0, #0xa5
	lsls r0, r0, #2
	adds r3, r2, r0
	ldrb r1, [r3]
	adds r0, r1, #1
	strb r0, [r3]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r0, _08030804 @ =0x00000295
_0803078E:
	adds r2, r2, r0
	adds r2, r2, r1
	strb r6, [r2]
_08030794:
	adds r6, #1
	cmp r6, #0x26
	ble _080306D4
	ldr r0, _08030808 @ =0x030013C0
	ldr r1, [r0]
	movs r2, #0x91
	lsls r2, r2, #2
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0
	bne _080307BE
	adds r2, #0x28
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0
	bne _080307BE
	adds r2, #0x28
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _080308A6
_080307BE:
	ldr r0, _08030808 @ =0x030013C0
	ldr r2, [r0]
	movs r1, #0x91
	lsls r1, r1, #2
	adds r0, r2, r1
	ldrb r1, [r0]
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r4, r0, #0x1f
	movs r1, #0x9b
	lsls r1, r1, #2
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _080307E0
	movs r0, #2
	orrs r4, r0
_080307E0:
	movs r1, #0xa5
	lsls r1, r1, #2
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _080307F4
	movs r0, #4
	orrs r4, r0
	lsls r0, r4, #0x18
	lsrs r4, r0, #0x18
_080307F4:
	subs r0, r4, #1
	cmp r0, #6
	bhi _0803087E
	lsls r0, r0, #2
	ldr r1, _0803080C @ =_08030810
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08030804: .4byte 0x00000295
_08030808: .4byte 0x030013C0
_0803080C: .4byte _08030810
_08030810: @ jump table
	.4byte _0803087C @ case 0
	.4byte _08030842 @ case 1
	.4byte _0803086E @ case 2
	.4byte _0803086A @ case 3
	.4byte _08030858 @ case 4
	.4byte _08030846 @ case 5
	.4byte _0803082C @ case 6
_0803082C:
	movs r0, #0x10
	bl sub_0800B828
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r6, #0
	cmp r0, #0xc
	ble _0803087E
	movs r6, #2
	cmp r0, #0xe
	bgt _0803087E
_08030842:
	movs r6, #1
	b _0803087E
_08030846:
	movs r0, #3
	bl sub_0800B828
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r6, #2
	cmp r0, #1
	bgt _0803087E
	b _08030842
_08030858:
	movs r0, #0xe
	bl sub_0800B828
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r6, #2
_08030864:
	cmp r0, #0xc
	bgt _0803087E
	b _0803087C
_0803086A:
	movs r6, #2
	b _0803087E
_0803086E:
	movs r0, #0xf
	bl sub_0800B828
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r6, #1
	b _08030864
_0803087C:
	movs r6, #0
_0803087E:
	ldr r0, _080308B8 @ =0x030013C0
	ldr r5, [r0]
	lsls r4, r6, #2
	adds r4, r4, r6
	lsls r4, r4, #3
	adds r0, r5, r4
	movs r2, #0x91
	lsls r2, r2, #2
	adds r0, r0, r2
	ldrb r0, [r0]
	bl sub_0800B828
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r0, r0, r4
	ldr r1, _080308BC @ =0x00000245
	adds r5, r5, r1
	adds r5, r5, r0
	ldrb r5, [r5]
	mov sl, r5
_080308A6:
	mov r0, sl
_080308A8:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080308B8: .4byte 0x030013C0
_080308BC: .4byte 0x00000245

	thumb_func_start sub_080308C0
sub_080308C0: @ 0x080308C0
	push {r4, r5, lr}
	ldr r0, _08030920 @ =0x030013C0
	ldr r0, [r0]
	ldrb r0, [r0, #1]
	cmp r0, #0
	bne _080309AE
	ldr r0, _08030924 @ =0x02031050
	movs r1, #0x89
	lsls r1, r1, #4
	adds r4, r0, r1
	ldr r0, [r4]
	movs r5, #0x40
	ands r0, r5
	cmp r0, #0
	bne _080308F6
	bl sub_08005934
	ldr r0, _08030928 @ =0x08088FFC
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	bl sub_08005A2C
	ldr r0, [r4]
	orrs r0, r5
	str r0, [r4]
_080308F6:
	ldr r1, _0803092C @ =0x02034BF0
	ldrb r0, [r1, #7]
	lsls r0, r0, #0x1c
	adds r4, r1, #0
	cmp r0, #0
	blt _08030930
	ldrb r0, [r4]
	lsrs r0, r0, #4
	cmp r0, #0
	bne _08030930
	ldr r0, [r4, #0x1c]
	ldrh r1, [r0, #2]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	beq _08030930
	movs r0, #0x12
	bl sub_08030334
	b _080309AE
	.align 2, 0
_08030920: .4byte 0x030013C0
_08030924: .4byte 0x02031050
_08030928: .4byte 0x08088FFC
_0803092C: .4byte 0x02034BF0
_08030930:
	ldrb r3, [r4, #5]
	lsls r0, r3, #0x1d
	lsrs r0, r0, #0x1e
	cmp r0, #0
	beq _0803095C
	adds r2, r0, #1
	adds r1, r2, #0
	asrs r0, r1, #2
	lsls r0, r0, #2
	subs r0, r2, r0
	movs r1, #3
	ands r0, r1
	lsls r0, r0, #1
	movs r1, #7
	rsbs r1, r1, #0
	ands r1, r3
	orrs r1, r0
	strb r1, [r4, #5]
	lsls r1, r1, #0x1d
	lsrs r1, r1, #0x1e
	cmp r1, #0
	bne _080309A8
_0803095C:
	bl sub_080305F0
	ldr r2, _0803099C @ =0x030013C0
	ldr r1, [r2]
	movs r3, #0x90
	lsls r3, r3, #2
	adds r1, r1, r3
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x26
	bhi _080309A8
	ldr r4, _080309A0 @ =0x02034DF8
	ldr r0, [r2]
	adds r0, r0, r3
	ldrb r1, [r0]
	adds r0, r4, #0
	bl sub_0800B844
	movs r0, #0xe
	bl sub_08030334
	ldr r0, _080309A4 @ =0xFFFFFDF8
	adds r4, r4, r0
	ldrb r1, [r4, #5]
	movs r0, #7
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r4, #5]
	b _080309AE
	.align 2, 0
_0803099C: .4byte 0x030013C0
_080309A0: .4byte 0x02034DF8
_080309A4: .4byte 0xFFFFFDF8
_080309A8:
	movs r0, #3
	bl sub_08030334
_080309AE:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080309B4
sub_080309B4: @ 0x080309B4
	push {r4, r5, lr}
	ldr r1, _080309CC @ =0x030013C0
	ldr r0, [r1]
	ldrb r0, [r0, #1]
	adds r4, r1, #0
	cmp r0, #4
	bhi _08030AA6
	lsls r0, r0, #2
	ldr r1, _080309D0 @ =_080309D4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080309CC: .4byte 0x030013C0
_080309D0: .4byte _080309D4
_080309D4: @ jump table
	.4byte _080309E8 @ case 0
	.4byte _08030A34 @ case 1
	.4byte _08030A3C @ case 2
	.4byte _08030A50 @ case 3
	.4byte _08030A68 @ case 4
_080309E8:
	ldr r0, _08030A24 @ =0x080ABB98
	ldr r1, _08030A28 @ =0x05000260
	bl sub_08008308
	movs r0, #1
	bl sub_08002B98
	bl sub_0803A5EC
	bl sub_0803A6DC
	ldr r1, _08030A2C @ =0x02034BF0
	ldrb r2, [r1, #3]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1, #3]
	ldrb r2, [r1, #7]
	movs r0, #9
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1, #7]
	ldr r0, _08030A30 @ =0x030013C0
	ldr r1, [r0]
	movs r0, #0xf
	strh r0, [r1, #6]
	movs r0, #1
	strb r0, [r1, #1]
	b _08030AA6
	.align 2, 0
_08030A24: .4byte 0x080ABB98
_08030A28: .4byte 0x05000260
_08030A2C: .4byte 0x02034BF0
_08030A30: .4byte 0x030013C0
_08030A34:
	ldr r1, [r4]
	movs r0, #2
	strb r0, [r1, #1]
	b _08030AA6
_08030A3C:
	ldr r1, [r4]
	adds r0, r1, #0
	adds r0, #0x68
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	cmp r0, #0
	blt _08030AA6
	movs r0, #3
	strb r0, [r1, #1]
	b _08030AA6
_08030A50:
	ldr r0, [r4]
	adds r0, #0x68
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	cmp r0, #0
	blt _08030AA6
	bl sub_08036980
	ldr r1, [r4]
	movs r0, #4
	strb r0, [r1, #1]
	b _08030AA6
_08030A68:
	ldr r0, [r4]
	adds r0, #0x68
	ldrb r0, [r0]
	lsls r0, r0, #0x1d
	cmp r0, #0
	blt _08030AA6
	ldr r0, _08030AAC @ =0x02031050
	movs r1, #0x89
	lsls r1, r1, #4
	adds r4, r0, r1
	ldr r0, [r4]
	movs r5, #0x80
	lsls r5, r5, #2
	ands r0, r5
	cmp r0, #0
	bne _08030AA0
	bl sub_08005934
	ldr r0, _08030AB0 @ =0x08089028
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	bl sub_08005A2C
	ldr r0, [r4]
	orrs r0, r5
	str r0, [r4]
_08030AA0:
	movs r0, #4
	bl sub_08030334
_08030AA6:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08030AAC: .4byte 0x02031050
_08030AB0: .4byte 0x08089028

	thumb_func_start sub_08030AB4
sub_08030AB4: @ 0x08030AB4
	push {r4, r5, r6, lr}
	ldr r0, _08030B00 @ =0x030013C0
	ldr r1, [r0]
	movs r0, #0xaf
	lsls r0, r0, #2
	adds r2, r1, r0
	ldrb r0, [r2]
	cmp r0, #0
	beq _08030AE6
	ldr r3, _08030B04 @ =0x000002BE
	adds r1, r1, r3
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x77
	bls _08030AE6
	movs r0, #0
	strb r0, [r2]
	movs r0, #0
	bl sub_08005AC0
	bl sub_08005A2C
_08030AE6:
	ldr r1, _08030B00 @ =0x030013C0
	ldr r0, [r1]
	ldrb r0, [r0, #1]
	adds r5, r1, #0
	cmp r0, #5
	bls _08030AF4
	b _08030DA2
_08030AF4:
	lsls r0, r0, #2
	ldr r1, _08030B08 @ =_08030B0C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08030B00: .4byte 0x030013C0
_08030B04: .4byte 0x000002BE
_08030B08: .4byte _08030B0C
_08030B0C: @ jump table
	.4byte _08030B24 @ case 0
	.4byte _08030B78 @ case 1
	.4byte _08030C4E @ case 2
	.4byte _08030C70 @ case 3
	.4byte _08030CBC @ case 4
	.4byte _08030D8C @ case 5
_08030B24:
	ldr r2, _08030B40 @ =0x02034BF0
	movs r0, #0
	strb r0, [r2, #0xa]
	ldrb r1, [r2, #3]
	lsls r0, r1, #0x1d
	lsrs r3, r0, #0x1f
	cmp r3, #0
	beq _08030B44
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #3]
	b _08030BFA
	.align 2, 0
_08030B40: .4byte 0x02034BF0
_08030B44:
	movs r4, #0x92
	lsls r4, r4, #1
	adds r0, r2, r4
	strb r3, [r0]
	ldr r0, [r2, #0x1c]
	str r0, [r2, #0x18]
	movs r0, #0x20
	orrs r0, r1
	strb r0, [r2, #3]
	ldrh r1, [r2, #2]
	ldr r0, _08030B70 @ =0xFFFFFC3F
	ands r0, r1
	strh r0, [r2, #2]
	bl sub_080369A0
	bl sub_08037468
	ldr r0, _08030B74 @ =0x030013C0
	ldr r1, [r0]
	movs r0, #1
	strb r0, [r1, #1]
	b _08030DA2
	.align 2, 0
_08030B70: .4byte 0xFFFFFC3F
_08030B74: .4byte 0x030013C0
_08030B78:
	ldr r0, _08030B8C @ =0x030024B0
	ldrh r1, [r0]
	movs r2, #1
	ands r2, r1
	cmp r2, #0
	beq _08030B90
	ldr r1, [r5]
	movs r0, #2
	strb r0, [r1, #1]
	b _08030DA2
	.align 2, 0
_08030B8C: .4byte 0x030024B0
_08030B90:
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	beq _08030C0C
	ldr r0, [r5]
	movs r3, #0xaf
	lsls r3, r3, #2
	adds r1, r0, r3
	ldrb r0, [r1]
	cmp r0, #0
	beq _08030BB8
	strb r2, [r1]
	movs r0, #0
	bl sub_08005AC0
	bl sub_08005A2C
_08030BB8:
	movs r0, #0xf1
	bl m4aSongNumStop
	ldr r0, [r5]
	ldr r0, [r0, #0x70]
	movs r1, #0
	bl sub_08009A34
	bl sub_0803759C
	bl sub_08035208
	ldr r0, _08030C04 @ =0x02031050
	movs r1, #0x89
	lsls r1, r1, #4
	adds r4, r0, r1
	ldr r0, [r4]
	movs r6, #0x10
	ands r0, r6
	cmp r0, #0
	bne _08030BFA
	bl sub_08005934
	ldr r0, _08030C08 @ =0x08089040
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	bl sub_08005A2C
	ldr r0, [r4]
	orrs r0, r6
	str r0, [r4]
_08030BFA:
	ldr r1, [r5]
	movs r0, #3
	strb r0, [r1, #1]
	b _08030DA2
	.align 2, 0
_08030C04: .4byte 0x02031050
_08030C08: .4byte 0x08089040
_08030C0C:
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08030C18
	b _08030DA2
_08030C18:
	ldr r0, [r5]
	movs r2, #0xaf
	lsls r2, r2, #2
	adds r1, r0, r2
	ldrb r0, [r1]
	cmp r0, #0
	beq _08030C32
	strb r3, [r1]
	movs r0, #0
	bl sub_08005AC0
	bl sub_08005A2C
_08030C32:
	bl sub_08037440
	ldr r0, [r5]
	ldr r0, [r0, #0x70]
	movs r1, #0
	bl sub_08009A34
	movs r0, #0xb
	bl sub_08030334
	movs r0, #0xf1
	bl m4aSongNumStop
	b _08030DA2
_08030C4E:
	ldr r2, _08030C68 @ =0x02034BF0
	ldrb r1, [r2, #3]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #3]
	bl sub_080349F0
	ldr r0, _08030C6C @ =0x030013C0
	ldr r1, [r0]
	movs r0, #4
	strb r0, [r1, #1]
	b _08030DA2
	.align 2, 0
_08030C68: .4byte 0x02034BF0
_08030C6C: .4byte 0x030013C0
_08030C70:
	ldr r3, [r5]
	adds r0, r3, #0
	adds r0, #0x68
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bge _08030C80
	b _08030DA2
_08030C80:
	movs r4, #0xe7
	lsls r4, r4, #1
	adds r0, r3, r4
	ldrb r4, [r0]
	cmp r4, #0
	bne _08030C98
	movs r0, #0xf1
	bl m4aSongNumStart
	ldr r0, [r5]
	strb r4, [r0, #1]
	b _08030DA2
_08030C98:
	ldr r2, _08030CB4 @ =0x02034BF0
	ldrb r0, [r2, #3]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2, #3]
	movs r0, #4
	strb r0, [r2, #0xb]
	ldr r2, _08030CB8 @ =0x000001CD
	adds r1, r3, r2
	strb r0, [r1]
	movs r0, #1
	bl sub_08030334
	b _08030DA2
	.align 2, 0
_08030CB4: .4byte 0x02034BF0
_08030CB8: .4byte 0x000001CD
_08030CBC:
	ldr r0, [r5]
	adds r0, #0x68
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _08030DA2
	ldr r0, _08030D30 @ =0x02031050
	movs r3, #0x89
	lsls r3, r3, #4
	adds r4, r0, r3
	ldr r0, [r4]
	movs r5, #0x80
	lsls r5, r5, #3
	ands r0, r5
	cmp r0, #0
	bne _08030CF4
	bl sub_08005934
	ldr r0, _08030D34 @ =0x08089030
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	bl sub_08005A2C
	ldr r0, [r4]
	orrs r0, r5
	str r0, [r4]
_08030CF4:
	ldr r0, [r4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08030D74
	bl sub_08005934
	ldr r0, _08030D38 @ =0x02034BF0
	movs r1, #8
	ldrsb r1, [r0, r1]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _08030D48
	ldr r1, _08030D3C @ =0x08087478
	ldr r0, _08030D40 @ =0x03004400
	ldrb r0, [r0, #0xe]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r0, #7
	bl sub_08005BE0
	ldr r0, _08030D44 @ =0x0808936C
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	b _08030D70
	.align 2, 0
_08030D30: .4byte 0x02031050
_08030D34: .4byte 0x08089030
_08030D38: .4byte 0x02034BF0
_08030D3C: .4byte 0x08087478
_08030D40: .4byte 0x03004400
_08030D44: .4byte 0x0808936C
_08030D48:
	movs r0, #0xb9
	bl sub_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08030D5E
	movs r0, #7
	movs r1, #1
	bl sub_08005BE0
	b _08030D66
_08030D5E:
	movs r0, #7
	movs r1, #3
	bl sub_08005BE0
_08030D66:
	ldr r0, _08030D84 @ =0x08089374
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
_08030D70:
	bl sub_08005A2C
_08030D74:
	bl sub_080342A0
	ldr r0, _08030D88 @ =0x030013C0
	ldr r1, [r0]
	movs r0, #5
	strb r0, [r1, #1]
	b _08030DA2
	.align 2, 0
_08030D84: .4byte 0x08089374
_08030D88: .4byte 0x030013C0
_08030D8C:
	ldr r0, [r5]
	adds r0, #0x68
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _08030DA2
	bl sub_08034A54
	movs r0, #5
	bl sub_08030334
_08030DA2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08030DA8
sub_08030DA8: @ 0x08030DA8
	push {lr}
	adds r2, r0, #0
	ldr r3, _08030DD0 @ =0x030024B0
	ldrh r1, [r3]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08030DFA
	ldrh r1, [r2, #2]
	movs r0, #0xc0
	lsls r0, r0, #3
	ands r0, r1
	lsrs r0, r0, #9
	cmp r0, #1
	beq _08030DE4
	cmp r0, #1
	bgt _08030DD4
	cmp r0, #0
	beq _08030DDE
	b _08030DFE
	.align 2, 0
_08030DD0: .4byte 0x030024B0
_08030DD4:
	cmp r0, #2
	beq _08030DEA
	cmp r0, #3
	beq _08030DF0
	b _08030DFE
_08030DDE:
	ldrh r1, [r3, #2]
	movs r0, #0x40
	b _08030DF4
_08030DE4:
	ldrh r1, [r3, #2]
	movs r0, #0x80
	b _08030DF4
_08030DEA:
	ldrh r1, [r3, #2]
	movs r0, #0x20
	b _08030DF4
_08030DF0:
	ldrh r1, [r3, #2]
	movs r0, #0x10
_08030DF4:
	ands r0, r1
	cmp r0, #0
	beq _08030DFE
_08030DFA:
	movs r0, #1
	b _08030E00
_08030DFE:
	movs r0, #0
_08030E00:
	pop {r1}
	bx r1

	thumb_func_start sub_08030E04
sub_08030E04: @ 0x08030E04
	push {lr}
	adds r3, r0, #0
	ldr r0, _08030E38 @ =0x02031050
	movs r1, #0x89
	lsls r1, r1, #4
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08030E6A
	ldr r0, _08030E3C @ =0x02034BF0
	movs r1, #8
	ldrsb r1, [r0, r1]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08030E4C
	ldr r0, _08030E40 @ =0x03004400
	ldrb r1, [r0, #0xe]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	ldr r1, _08030E44 @ =0x08087B5C
	b _08030E58
	.align 2, 0
_08030E38: .4byte 0x02031050
_08030E3C: .4byte 0x02034BF0
_08030E40: .4byte 0x03004400
_08030E44: .4byte 0x08087B5C
_08030E48:
	movs r0, #1
	b _08030E6C
_08030E4C:
	ldr r0, _08030E70 @ =0x03004400
	ldrb r1, [r0, #0xe]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	ldr r1, _08030E74 @ =0x08087B50
_08030E58:
	adds r1, r0, r1
	movs r2, #0
_08030E5C:
	ldr r0, [r1]
	cmp r3, r0
	beq _08030E48
	adds r2, #1
	adds r1, #4
	cmp r2, #2
	ble _08030E5C
_08030E6A:
	movs r0, #0
_08030E6C:
	pop {r1}
	bx r1
	.align 2, 0
_08030E70: .4byte 0x03004400
_08030E74: .4byte 0x08087B50

	thumb_func_start sub_08030E78
sub_08030E78: @ 0x08030E78
	push {r4, r5, r6, lr}
	ldr r0, _08030EC4 @ =0x030013C0
	ldr r1, [r0]
	movs r0, #0xaf
	lsls r0, r0, #2
	adds r2, r1, r0
	ldrb r0, [r2]
	cmp r0, #0
	beq _08030EAA
	ldr r4, _08030EC8 @ =0x000002BE
	adds r1, r1, r4
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x77
	bls _08030EAA
	movs r0, #0
	strb r0, [r2]
	movs r0, #0
	bl sub_08005AC0
	bl sub_08005A2C
_08030EAA:
	ldr r1, _08030EC4 @ =0x030013C0
	ldr r0, [r1]
	ldrb r0, [r0, #1]
	adds r5, r1, #0
	cmp r0, #4
	bls _08030EB8
	b _080313B8
_08030EB8:
	lsls r0, r0, #2
	ldr r1, _08030ECC @ =_08030ED0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08030EC4: .4byte 0x030013C0
_08030EC8: .4byte 0x000002BE
_08030ECC: .4byte _08030ED0
_08030ED0: @ jump table
	.4byte _08030EE4 @ case 0
	.4byte _08030F34 @ case 1
	.4byte _080312B8 @ case 2
	.4byte _08031304 @ case 3
	.4byte _08031358 @ case 4
_08030EE4:
	ldr r4, _08030EFC @ =0x02034BF0
	ldrb r1, [r4, #3]
	lsls r0, r1, #0x1d
	cmp r0, #0
	bge _08030F00
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #3]
	ldr r1, [r5]
	movs r0, #2
	b _080313B6
	.align 2, 0
_08030EFC: .4byte 0x02034BF0
_08030F00:
	ldr r0, [r4, #0x1c]
	ldrh r1, [r0, #2]
	movs r0, #7
	ands r0, r1
	cmp r0, #3
	bne _08030F1A
	movs r0, #0xfc
	lsls r0, r0, #1
	ands r0, r1
	lsrs r0, r0, #3
	movs r1, #0x5c
	bl sub_08039D38
_08030F1A:
	ldrb r1, [r4, #3]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #3]
	bl sub_080374D0
	ldr r0, _08030F30 @ =0x030013C0
	ldr r1, [r0]
	movs r0, #1
	b _080313B6
	.align 2, 0
_08030F30: .4byte 0x030013C0
_08030F34:
	ldr r0, [r5]
	adds r0, #0x6a
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _08030F42
	b _080313B8
_08030F42:
	ldr r4, _08030F9C @ =0x02034BF0
	ldr r2, [r4, #0x1c]
	ldrh r1, [r2, #2]
	movs r0, #7
	ands r0, r1
	cmp r0, #3
	bne _08030FC2
	adds r0, r2, #0
	bl sub_08030DA8
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08030FC2
	ldr r0, _08030FA0 @ =0x02031050
	movs r1, #0x89
	lsls r1, r1, #4
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08030FA8
	ldr r0, _08030FA4 @ =0x03004400
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	bne _08030FA8
	movs r0, #0xb9
	bl sub_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08030FA8
	ldr r0, [r4, #0x1c]
	ldrh r1, [r0, #2]
	movs r0, #0xfc
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0x18
	bne _08030FA8
	bl sub_08039D68
	ldr r1, [r5]
	movs r0, #4
	b _080313B6
	.align 2, 0
_08030F9C: .4byte 0x02034BF0
_08030FA0: .4byte 0x02031050
_08030FA4: .4byte 0x03004400
_08030FA8:
	bl sub_08034A50
	bl sub_08037440
	bl sub_08037058
	movs r0, #7
	bl sub_08030334
	movs r0, #0xcc
	bl m4aSongNumStart
	b _080313B8
_08030FC2:
	ldr r1, _08030FEC @ =0x030024B0
	ldrh r2, [r1, #2]
	movs r0, #0xf0
	ands r0, r2
	adds r3, r1, #0
	cmp r0, #0
	bne _08030FD2
	b _0803110C
_08030FD2:
	movs r5, #0
	movs r0, #0x30
	ands r0, r2
	cmp r0, #0
	beq _08030FFA
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0
	beq _08030FF4
	ldr r0, _08030FF0 @ =0x02034BF0
	ldr r0, [r0, #0x1c]
	ldr r5, [r0, #0xc]
	b _08030FFA
	.align 2, 0
_08030FEC: .4byte 0x030024B0
_08030FF0: .4byte 0x02034BF0
_08030FF4:
	ldr r0, _08031018 @ =0x02034BF0
	ldr r0, [r0, #0x1c]
	ldr r5, [r0, #0x10]
_08030FFA:
	ldrh r1, [r3, #2]
	movs r0, #0xc0
	ands r0, r1
	cmp r0, #0
	beq _08031026
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0803101C
	cmp r5, #0
	bne _0803102A
	ldr r0, _08031018 @ =0x02034BF0
	ldr r0, [r0, #0x1c]
	ldr r5, [r0, #4]
	b _08031026
	.align 2, 0
_08031018: .4byte 0x02034BF0
_0803101C:
	cmp r5, #0
	bne _0803102A
	ldr r0, _0803109C @ =0x02034BF0
	ldr r0, [r0, #0x1c]
	ldr r5, [r0, #8]
_08031026:
	cmp r5, #0
	beq _0803110C
_0803102A:
	ldr r4, _0803109C @ =0x02034BF0
	movs r2, #0x90
	lsls r2, r2, #1
	adds r0, r4, r2
	ldr r0, [r0]
	cmp r5, r0
	beq _0803110C
	ldr r6, _080310A0 @ =0x030013C0
	ldr r0, [r6]
	ldr r0, [r0, #0x78]
	movs r1, #0
	bl sub_08009A34
	ldrh r0, [r4, #2]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1c
	cmp r0, #0
	beq _0803105E
	subs r0, #1
	lsls r0, r0, #2
	adds r1, r4, #0
	adds r1, #0x20
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r5, r0
	beq _08031154
_0803105E:
	ldr r0, [r4, #0x1c]
	ldrh r1, [r0, #2]
	movs r0, #7
	ands r0, r1
	cmp r0, #3
	bne _0803106E
	bl sub_08039D68
_0803106E:
	ldr r0, [r6]
	movs r4, #0xaf
	lsls r4, r4, #2
	adds r1, r0, r4
	ldrb r0, [r1]
	cmp r0, #0
	beq _08031088
	movs r0, #0
	strb r0, [r1]
	bl sub_08005AC0
	bl sub_08005A2C
_08031088:
	adds r0, r5, #0
	bl sub_08030E04
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080310A4
	ldr r1, [r6]
	movs r0, #4
	b _080313B6
	.align 2, 0
_0803109C: .4byte 0x02034BF0
_080310A0: .4byte 0x030013C0
_080310A4:
	adds r0, r5, #0
	bl sub_080323A8
	cmp r0, #1
	beq _080310DC
	cmp r0, #1
	ble _080310B6
	cmp r0, #2
	beq _080310F4
_080310B6:
	ldr r0, [r6]
	ldr r2, _080310D8 @ =0x000001CB
	adds r1, r0, r2
	movs r0, #1
	strb r0, [r1]
	ldr r0, [r6]
	movs r4, #0xc0
	lsls r4, r4, #1
	adds r0, r0, r4
	str r5, [r0]
	adds r0, r5, #0
	bl sub_080348DC
	ldr r1, [r6]
	movs r0, #3
	b _080313B6
	.align 2, 0
_080310D8: .4byte 0x000001CB
_080310DC:
	movs r0, #0x2d
	bl sub_0802D7CC
	ldr r0, [r6]
	movs r1, #0xc0
	lsls r1, r1, #1
	adds r0, r0, r1
	str r5, [r0]
	movs r0, #0xc
	bl sub_08030334
	b _080313B8
_080310F4:
	movs r0, #0x2d
	bl sub_0802D7CC
	ldr r0, [r6]
	movs r2, #0xc0
	lsls r2, r2, #1
	adds r0, r0, r2
	str r5, [r0]
	movs r0, #0xd
	bl sub_08030334
	b _080313B8
_0803110C:
	ldrh r1, [r3]
	movs r2, #2
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _08031130
	ldr r0, _080311D4 @ =0x030013C0
	ldr r0, [r0]
	ldr r4, _080311D8 @ =0x000001CB
	adds r0, r0, r4
	ldrb r0, [r0]
	cmp r0, #0
	beq _080311E0
	ldrh r1, [r3, #2]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _080311E0
_08031130:
	ldr r2, _080311DC @ =0x02034BF0
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1c
	cmp r0, #0
	beq _080311E0
	subs r0, #1
	lsls r0, r0, #2
	adds r1, r2, #0
	adds r1, #0x20
	adds r0, r0, r1
	movs r4, #0x90
	lsls r4, r4, #1
	adds r1, r2, r4
	ldr r2, [r0]
	ldr r0, [r1]
	cmp r2, r0
	beq _080311E0
_08031154:
	ldr r4, _080311D4 @ =0x030013C0
	ldr r0, [r4]
	ldr r0, [r0, #0x78]
	movs r1, #0
	bl sub_08009A34
	ldr r5, _080311DC @ =0x02034BF0
	ldr r0, [r5, #0x1c]
	ldrh r1, [r0, #2]
	movs r0, #7
	ands r0, r1
	cmp r0, #3
	bne _08031172
	bl sub_08039D68
_08031172:
	ldr r0, [r4]
	movs r2, #0xaf
	lsls r2, r2, #2
	adds r1, r0, r2
	ldrb r0, [r1]
	cmp r0, #0
	beq _0803118C
	movs r0, #0
	strb r0, [r1]
	bl sub_08005AC0
	bl sub_08005A2C
_0803118C:
	ldr r0, [r4]
	ldr r2, _080311D8 @ =0x000001CB
	adds r1, r0, r2
	movs r0, #1
	strb r0, [r1]
	ldrh r0, [r5, #2]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1c
	cmp r0, #1
	bne _080311AA
	ldr r0, [r4]
	ldr r0, [r0, #0x7c]
	movs r1, #0
	bl sub_08009A34
_080311AA:
	ldr r0, [r4]
	movs r4, #0xc0
	lsls r4, r4, #1
	adds r0, r0, r4
	ldr r1, [r5, #0x1c]
	str r1, [r0]
	ldrh r0, [r5, #2]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1c
	subs r0, #1
	lsls r0, r0, #2
	adds r1, r5, #0
	adds r1, #0x20
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_08034978
	movs r0, #8
	bl sub_08030334
	b _080313B8
	.align 2, 0
_080311D4: .4byte 0x030013C0
_080311D8: .4byte 0x000001CB
_080311DC: .4byte 0x02034BF0
_080311E0:
	ldrh r1, [r3]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _08031264
	ldr r6, _08031254 @ =0x030013C0
	ldr r0, [r6]
	movs r2, #0xaf
	lsls r2, r2, #2
	adds r1, r0, r2
	ldrb r0, [r1]
	cmp r0, #0
	beq _0803120C
	movs r0, #0
	strb r0, [r1]
	bl sub_08005AC0
	bl sub_08005A2C
_0803120C:
	ldr r0, [r6]
	ldr r4, _08031258 @ =0x000001CB
	adds r1, r0, r4
	movs r0, #0
	strb r0, [r1]
	bl sub_08034A50
	bl sub_0803759C
	bl sub_08035208
	ldr r0, _0803125C @ =0x02031050
	movs r1, #0x89
	lsls r1, r1, #4
	adds r4, r0, r1
	ldr r0, [r4]
	movs r5, #0x10
	ands r0, r5
	cmp r0, #0
	bne _0803124C
	bl sub_08005934
	ldr r0, _08031260 @ =0x08089040
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	bl sub_08005A2C
	ldr r0, [r4]
	orrs r0, r5
	str r0, [r4]
_0803124C:
	ldr r1, [r6]
	movs r0, #2
	b _080313B6
	.align 2, 0
_08031254: .4byte 0x030013C0
_08031258: .4byte 0x000001CB
_0803125C: .4byte 0x02031050
_08031260: .4byte 0x08089040
_08031264:
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08031270
	b _080313B8
_08031270:
	ldr r5, _080312B0 @ =0x030013C0
	ldr r0, [r5]
	movs r2, #0xaf
	lsls r2, r2, #2
	adds r1, r0, r2
	ldrb r0, [r1]
	cmp r0, #0
	beq _0803128C
	strb r4, [r1]
	movs r0, #0
	bl sub_08005AC0
	bl sub_08005A2C
_0803128C:
	ldr r0, [r5]
	ldr r1, _080312B4 @ =0x000001CB
	adds r0, r0, r1
	strb r4, [r0]
	bl sub_08034A50
	bl sub_08037440
	ldr r0, [r5]
	ldr r0, [r0, #0x74]
	movs r1, #0
	bl sub_08009A34
	movs r0, #0xb
	bl sub_08030334
	b _080313B8
	.align 2, 0
_080312B0: .4byte 0x030013C0
_080312B4: .4byte 0x000001CB
_080312B8:
	ldr r3, [r5]
	adds r0, r3, #0
	adds r0, #0x68
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _080313B8
	movs r2, #0xe7
	lsls r2, r2, #1
	adds r0, r3, r2
	ldrb r4, [r0]
	cmp r4, #0
	bne _080312DC
	bl sub_08034A54
	ldr r0, [r5]
	strb r4, [r0, #1]
	b _080313B8
_080312DC:
	ldr r2, _080312FC @ =0x02034BF0
	ldrb r0, [r2, #3]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2, #3]
	movs r0, #5
	strb r0, [r2, #0xb]
	ldr r4, _08031300 @ =0x000001CD
	adds r1, r3, r4
	movs r0, #4
	strb r0, [r1]
	movs r0, #1
	bl sub_08030334
	b _080313B8
	.align 2, 0
_080312FC: .4byte 0x02034BF0
_08031300: .4byte 0x000001CD
_08031304:
	ldr r4, _0803134C @ =0x02034BF0
	ldr r5, [r4, #0x1c]
	ldrh r1, [r5, #2]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	beq _08031342
	ldrh r3, [r4, #2]
	lsls r1, r3, #0x16
	lsrs r1, r1, #0x1c
	adds r2, r1, #1
	movs r0, #0xf
	ands r2, r0
	lsls r2, r2, #6
	ldr r0, _08031350 @ =0xFFFFFC3F
	ands r0, r3
	orrs r0, r2
	strh r0, [r4, #2]
	lsls r1, r1, #2
	adds r0, r4, #0
	adds r0, #0x20
	adds r1, r1, r0
	str r5, [r1]
	bl sub_080374D0
	ldr r0, _08031354 @ =0x030013C0
	ldr r0, [r0]
	ldr r0, [r0, #0x78]
	movs r1, #0
	bl sub_08009A34
_08031342:
	movs r0, #6
	bl sub_08030334
	b _080313B8
	.align 2, 0
_0803134C: .4byte 0x02034BF0
_08031350: .4byte 0xFFFFFC3F
_08031354: .4byte 0x030013C0
_08031358:
	bl sub_08005934
	ldr r0, _08031388 @ =0x03004400
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	bne _08031390
	ldr r0, _0803138C @ =0x02034BF0
	movs r1, #8
	ldrsb r1, [r0, r1]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08031390
	movs r0, #0xb9
	bl sub_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08031390
	movs r0, #7
	movs r1, #3
	bl sub_08005BE0
	b _080313A2
	.align 2, 0
_08031388: .4byte 0x03004400
_0803138C: .4byte 0x02034BF0
_08031390:
	ldr r1, _080313C0 @ =0x08087478
	ldr r0, _080313C4 @ =0x03004400
	ldrb r0, [r0, #0xe]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r0, #7
	bl sub_08005BE0
_080313A2:
	ldr r0, _080313C8 @ =0x0808937C
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	bl sub_08005A2C
	ldr r0, _080313CC @ =0x030013C0
	ldr r1, [r0]
	movs r0, #0
_080313B6:
	strb r0, [r1, #1]
_080313B8:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080313C0: .4byte 0x08087478
_080313C4: .4byte 0x03004400
_080313C8: .4byte 0x0808937C
_080313CC: .4byte 0x030013C0

	thumb_func_start sub_080313D0
sub_080313D0: @ 0x080313D0
	push {r4, r5, r6, lr}
	ldr r0, _080313E8 @ =0x030013C0
	ldr r1, [r0]
	ldrb r0, [r1, #1]
	cmp r0, #1
	beq _08031484
	cmp r0, #1
	bgt _080313EC
	cmp r0, #0
	beq _080313FA
	b _08031586
	.align 2, 0
_080313E8: .4byte 0x030013C0
_080313EC:
	cmp r0, #2
	bne _080313F2
	b _08031558
_080313F2:
	cmp r0, #3
	bne _080313F8
	b _08031578
_080313F8:
	b _08031586
_080313FA:
	adds r0, r1, #0
	adds r0, #0x68
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _08031408
	b _08031586
_08031408:
	ldr r6, _08031474 @ =0x02034BF0
	movs r2, #0xc0
	lsls r2, r2, #1
	adds r0, r1, r2
	ldr r1, [r0]
	str r1, [r6, #0x1c]
	ldr r0, _08031478 @ =0x02031050
	movs r2, #0x89
	lsls r2, r2, #4
	adds r4, r0, r2
	ldr r0, [r4]
	movs r5, #8
	ands r0, r5
	cmp r0, #0
	bne _08031448
	ldrh r1, [r1, #2]
	movs r0, #7
	ands r0, r1
	cmp r0, #3
	bne _08031462
	bl sub_08005934
	ldr r0, _0803147C @ =0x08089038
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	bl sub_08005A2C
	ldr r0, [r4]
	orrs r0, r5
	str r0, [r4]
_08031448:
	ldr r0, [r6, #0x1c]
	ldrh r1, [r0, #2]
	movs r0, #7
	ands r0, r1
	cmp r0, #3
	bne _08031462
	movs r0, #0xfc
	lsls r0, r0, #1
	ands r0, r1
	lsrs r0, r0, #3
	movs r1, #0x5c
	bl sub_08039D38
_08031462:
	ldr r0, _08031474 @ =0x02034BF0
	ldr r0, [r0, #0x1c]
	bl sub_0803A584
	ldr r0, _08031480 @ =0x030013C0
	ldr r1, [r0]
	movs r0, #1
	strb r0, [r1, #1]
	b _08031586
	.align 2, 0
_08031474: .4byte 0x02034BF0
_08031478: .4byte 0x02031050
_0803147C: .4byte 0x08089038
_08031480: .4byte 0x030013C0
_08031484:
	ldr r4, _080314B0 @ =0x02034BF0
	ldrb r0, [r4, #1]
	lsrs r0, r0, #4
	cmp r0, #0
	bne _0803149C
	ldr r0, [r4, #0x1c]
	ldrh r1, [r0, #2]
	movs r5, #7
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #3
	bne _080314F4
_0803149C:
	ldr r0, [r4, #0x1c]
	ldrh r1, [r0, #2]
	movs r0, #7
	ands r0, r1
	cmp r0, #3
	bne _080314B8
	ldr r0, _080314B4 @ =0x0000010B
	bl m4aSongNumStart
	b _080314BE
	.align 2, 0
_080314B0: .4byte 0x02034BF0
_080314B4: .4byte 0x0000010B
_080314B8:
	movs r0, #0xf4
	bl m4aSongNumStart
_080314BE:
	ldr r3, _080314EC @ =0x02034BF0
	ldr r0, [r3, #0x1c]
	ldrh r1, [r0, #2]
	movs r0, #7
	ands r0, r1
	cmp r0, #3
	beq _080314DC
	ldrb r2, [r3, #1]
	lsrs r1, r2, #4
	subs r1, #1
	lsls r1, r1, #4
	movs r0, #0xf
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #1]
_080314DC:
	bl sub_08037018
	ldr r0, _080314F0 @ =0x030013C0
	ldr r1, [r0]
	movs r0, #2
	strb r0, [r1, #1]
	b _08031586
	.align 2, 0
_080314EC: .4byte 0x02034BF0
_080314F0: .4byte 0x030013C0
_080314F4:
	bl sub_08037058
	ldr r0, [r4, #0x1c]
	ldrh r0, [r0, #2]
	adds r1, r5, #0
	ands r1, r0
	cmp r1, #2
	bne _08031514
	bl sub_08034A50
	bl sub_08037440
	movs r0, #0xa
	bl sub_08030334
	b _08031586
_08031514:
	cmp r1, #5
	bne _08031534
	ldr r0, _08031530 @ =0x000003F6
	bl m4aSongNumStart
	bl sub_08034A50
	bl sub_08037440
	movs r0, #0x14
	bl sub_08030334
	b _08031586
	.align 2, 0
_08031530: .4byte 0x000003F6
_08031534:
	cmp r1, #4
	bne _08031542
	movs r0, #0x80
	lsls r0, r0, #1
	bl m4aSongNumStart
	b _08031548
_08031542:
	movs r0, #0xf4
	bl m4aSongNumStart
_08031548:
	ldr r0, _08031554 @ =0x030013C0
	ldr r1, [r0]
	movs r0, #3
	strb r0, [r1, #1]
	b _08031586
	.align 2, 0
_08031554: .4byte 0x030013C0
_08031558:
	adds r0, r1, #0
	adds r0, #0x68
	ldrb r0, [r0]
	lsls r0, r0, #0x1a
	cmp r0, #0
	blt _08031586
	adds r0, r1, #0
	adds r0, #0x6a
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _08031586
	movs r0, #5
	bl sub_08030334
	b _08031586
_08031578:
	bl sub_08034A50
	bl sub_08037440
	movs r0, #9
	bl sub_08030334
_08031586:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_0803158C
sub_0803158C: @ 0x0803158C
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r1, #0
	ldrsb r1, [r4, r1]
	cmp r1, #0
	blt _080315F0
	ldr r0, _080315A8 @ =0x02034BF0
	ldrb r0, [r0, #8]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, r1
	beq _080315F0
	movs r5, #0
	b _080315CA
	.align 2, 0
_080315A8: .4byte 0x02034BF0
_080315AC:
	ldr r0, _080315E8 @ =0x02034BF0
	ldrb r0, [r0, #8]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r4, r5
	ldrb r2, [r1, #2]
	cmp r0, r2
	bne _080315C8
	ldrb r0, [r1, #4]
	bl sub_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080315F0
_080315C8:
	adds r5, #1
_080315CA:
	ldrb r0, [r4, #1]
	cmp r5, r0
	blt _080315AC
	ldr r0, _080315EC @ =0x02034E14
	movs r1, #0
	ldrsb r1, [r4, r1]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_0800B87C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080315F0
	movs r0, #1
	b _080315F2
	.align 2, 0
_080315E8: .4byte 0x02034BF0
_080315EC: .4byte 0x02034E14
_080315F0:
	movs r0, #0
_080315F2:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080315F8
sub_080315F8: @ 0x080315F8
	push {r4, r5, r6, r7, lr}
	ldr r5, _08031638 @ =0x08087418
	adds r0, r5, #0
	bl sub_0803158C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08031632
	adds r0, r5, #0
	adds r0, #8
	bl sub_0803158C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08031632
	adds r0, r5, #0
	adds r0, #0x10
	bl sub_0803158C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08031632
	adds r0, r5, #0
	adds r0, #0x20
	bl sub_0803158C
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803163C
_08031632:
	movs r0, #0
	b _08031672
	.align 2, 0
_08031638: .4byte 0x08087418
_0803163C:
	movs r4, #0
	ldrb r0, [r5, #0x19]
	cmp r4, r0
	bge _08031670
	adds r7, r5, #0
	adds r7, #0x1c
	adds r6, r0, #0
_0803164A:
	ldr r0, _08031678 @ =0x02034BF0
	movs r1, #8
	ldrsb r1, [r0, r1]
	adds r0, r5, #0
	adds r0, #0x1a
	adds r0, r4, r0
	ldrb r0, [r0]
	cmp r1, r0
	bne _0803166A
	adds r0, r4, r7
	ldrb r0, [r0]
	bl sub_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08031632
_0803166A:
	adds r4, #1
	cmp r4, r6
	blt _0803164A
_08031670:
	movs r0, #1
_08031672:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08031678: .4byte 0x02034BF0

	thumb_func_start sub_0803167C
sub_0803167C: @ 0x0803167C
	push {r4, lr}
	ldr r4, _080316AC @ =0x08087440
	adds r0, r4, #0
	bl sub_0803158C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080316B0
	adds r0, r4, #0
	adds r0, #8
	bl sub_0803158C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080316B0
	adds r0, r4, #0
	adds r0, #0x10
	bl sub_0803158C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080316B0
	movs r0, #1
	b _080316B2
	.align 2, 0
_080316AC: .4byte 0x08087440
_080316B0:
	movs r0, #0
_080316B2:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_080316B8
sub_080316B8: @ 0x080316B8
	push {r4, r5, r6, r7, lr}
	ldr r1, _080316D4 @ =0x030013C0
	ldr r0, [r1]
	ldrb r0, [r0, #1]
	adds r7, r1, #0
	cmp r0, #7
	bls _080316C8
	b _08031AEE
_080316C8:
	lsls r0, r0, #2
	ldr r1, _080316D8 @ =_080316DC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080316D4: .4byte 0x030013C0
_080316D8: .4byte _080316DC
_080316DC: @ jump table
	.4byte _080316FC @ case 0
	.4byte _0803170C @ case 1
	.4byte _08031728 @ case 2
	.4byte _0803173C @ case 3
	.4byte _080318CA @ case 4
	.4byte _080319DC @ case 5
	.4byte _080319DC @ case 6
	.4byte _080318AC @ case 7
_080316FC:
	bl sub_08039D68
	ldr r0, _08031708 @ =0x030013C0
	ldr r1, [r0]
	movs r0, #1
	b _08031AEC
	.align 2, 0
_08031708: .4byte 0x030013C0
_0803170C:
	bl sub_08035278
	ldr r2, _08031724 @ =0x030013C0
	ldr r0, [r2]
	movs r1, #0xe8
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r1, #0
	strb r1, [r0]
	ldr r1, [r2]
	movs r0, #2
	b _08031AEC
	.align 2, 0
_08031724: .4byte 0x030013C0
_08031728:
	ldr r1, [r7]
	adds r0, r1, #0
	adds r0, #0x68
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bge _08031738
	b _08031AEE
_08031738:
	movs r0, #3
	b _08031AEC
_0803173C:
	ldr r5, _08031780 @ =0x02034BF0
	ldr r0, [r5, #0x1c]
	ldrh r0, [r0, #2]
	movs r4, #0xfc
	lsls r4, r4, #1
	adds r1, r4, #0
	ands r1, r0
	lsrs r1, r1, #3
	movs r0, #7
	bl sub_08005BE0
	bl sub_08005934
	ldr r0, _08031784 @ =0x08088FD4
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	bl sub_08005A2C
	bl sub_080064F8
	lsls r0, r0, #0x18
	asrs r1, r0, #0x18
	cmp r1, #0
	beq _08031790
	cmp r1, #0
	bgt _08031788
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0803177E
	b _0803189C
_0803177E:
	b _08031AEE
	.align 2, 0
_08031780: .4byte 0x02034BF0
_08031784: .4byte 0x08088FD4
_08031788:
	cmp r1, #1
	bne _0803178E
	b _0803189C
_0803178E:
	b _08031AEE
_08031790:
	ldr r0, [r5, #0x1c]
	ldrh r1, [r0, #2]
	adds r0, r4, #0
	ands r0, r1
	lsrs r4, r0, #3
	cmp r4, #7
	beq _080317E4
	cmp r4, #0x13
	beq _08031838
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #3
	ldr r1, _080317D8 @ =0x0808D4AC
	adds r0, r0, r1
	bl sub_0803158C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080317D2
	bl sub_08005934
	ldr r0, _080317DC @ =0x08089150
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	bl sub_08005A2C
	bl sub_080064F8
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803188C
_080317D2:
	ldr r0, _080317E0 @ =0x030013C0
	ldr r1, [r0]
	b _08031AEA
	.align 2, 0
_080317D8: .4byte 0x0808D4AC
_080317DC: .4byte 0x08089150
_080317E0: .4byte 0x030013C0
_080317E4:
	bl sub_080315F8
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0803182C
	bl sub_08005934
	ldr r0, _08031814 @ =0x08089150
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	bl sub_08005A2C
	bl sub_080064F8
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803181C
	ldr r0, _08031818 @ =0x030013C0
	ldr r1, [r0]
	movs r0, #6
	b _08031AEC
	.align 2, 0
_08031814: .4byte 0x08089150
_08031818: .4byte 0x030013C0
_0803181C:
	bl sub_080352C8
	ldr r0, _08031828 @ =0x030013C0
	ldr r0, [r0]
	strb r4, [r0, #1]
	b _08031AEE
	.align 2, 0
_08031828: .4byte 0x030013C0
_0803182C:
	ldr r0, _08031834 @ =0x030013C0
	ldr r1, [r0]
	movs r0, #5
	b _08031AEC
	.align 2, 0
_08031834: .4byte 0x030013C0
_08031838:
	bl sub_0803167C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08031880
	bl sub_08005934
	ldr r0, _08031868 @ =0x08089150
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	bl sub_08005A2C
	bl sub_080064F8
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08031870
	ldr r0, _0803186C @ =0x030013C0
	ldr r1, [r0]
	movs r0, #6
	b _08031AEC
	.align 2, 0
_08031868: .4byte 0x08089150
_0803186C: .4byte 0x030013C0
_08031870:
	bl sub_080352C8
	ldr r0, _0803187C @ =0x030013C0
	ldr r1, [r0]
	movs r0, #7
	b _08031AEC
	.align 2, 0
_0803187C: .4byte 0x030013C0
_08031880:
	ldr r0, _08031888 @ =0x030013C0
	ldr r1, [r0]
	movs r0, #5
	b _08031AEC
	.align 2, 0
_08031888: .4byte 0x030013C0
_0803188C:
	bl sub_080352C8
	ldr r0, _08031898 @ =0x030013C0
	ldr r1, [r0]
	movs r0, #7
	b _08031AEC
	.align 2, 0
_08031898: .4byte 0x030013C0
_0803189C:
	bl sub_080352C8
	ldr r0, _080318A8 @ =0x030013C0
	ldr r1, [r0]
	movs r0, #7
	b _08031AEC
	.align 2, 0
_080318A8: .4byte 0x030013C0
_080318AC:
	ldr r0, [r7]
	adds r0, #0x68
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bge _080318BA
	b _08031AEE
_080318BA:
	bl sub_08034A54
	bl sub_08037070
	movs r0, #5
	bl sub_08030334
	b _08031AEE
_080318CA:
	ldr r2, _0803192C @ =0x02034BF0
	ldrb r1, [r2, #5]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #5]
	movs r4, #0
_080318D8:
	lsls r1, r4, #0x10
	lsrs r1, r1, #0x10
	ldr r0, _08031930 @ =0x02034E2C
	bl sub_0800B860
	adds r4, #1
	cmp r4, #0x7b
	ble _080318D8
	ldr r2, _0803192C @ =0x02034BF0
	ldr r0, [r2, #0x1c]
	ldrh r1, [r0, #2]
	movs r0, #0xfc
	lsls r0, r0, #1
	ands r0, r1
	lsrs r0, r0, #3
	adds r5, r2, #0
	cmp r0, #8
	beq _08031908
	cmp r0, #8
	blt _08031994
	cmp r0, #0x39
	bgt _08031994
	cmp r0, #0x32
	blt _08031994
_08031908:
	ldr r2, _08031934 @ =0x00000236
	adds r1, r5, r2
	movs r0, #3
	strb r0, [r1]
	movs r4, #0x8e
	lsls r4, r4, #2
	adds r3, r5, r4
	ldrh r1, [r3]
	adds r0, #0xfd
	ands r0, r1
	cmp r0, #0
	beq _0803194C
	ldr r0, _08031938 @ =0x00000237
	adds r1, r5, r0
	movs r0, #1
	strb r0, [r1]
	ldr r7, _0803193C @ =0x030013C0
	b _08031974
	.align 2, 0
_0803192C: .4byte 0x02034BF0
_08031930: .4byte 0x02034E2C
_08031934: .4byte 0x00000236
_08031938: .4byte 0x00000237
_0803193C: .4byte 0x030013C0
_08031940:
	ldr r1, _08031948 @ =0x00000235
	adds r0, r5, r1
	strb r3, [r0]
	b _08031974
	.align 2, 0
_08031948: .4byte 0x00000235
_0803194C:
	ldr r2, _08031984 @ =0x08087BB0
	ldrh r1, [r2, #2]
	ldr r4, _08031988 @ =0x00000235
	adds r0, r5, r4
	strb r1, [r0]
	movs r4, #7
	ldr r7, _0803198C @ =0x030013C0
	ldrh r1, [r3]
	adds r2, #0x1e
	movs r6, #1
_08031960:
	ldrh r3, [r2]
	adds r0, r1, #0
	asrs r0, r3
	ands r0, r6
	cmp r0, #0
	bne _08031940
	subs r2, #4
	subs r4, #1
	cmp r4, #0
	bge _08031960
_08031974:
	movs r0, #9
	strb r0, [r5, #0xb]
	ldr r0, [r7]
	ldr r2, _08031990 @ =0x000001CD
	adds r1, r0, r2
	movs r0, #0x26
	b _080319C8
	.align 2, 0
_08031984: .4byte 0x08087BB0
_08031988: .4byte 0x00000235
_0803198C: .4byte 0x030013C0
_08031990: .4byte 0x000001CD
_08031994:
	ldrb r1, [r5, #5]
	movs r0, #7
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r5, #5]
	ldr r0, [r5, #0x1c]
	ldrh r1, [r0, #2]
	movs r0, #0xfc
	lsls r0, r0, #1
	ands r0, r1
	lsrs r0, r0, #3
	ldr r4, _080319D4 @ =0x030013C0
	ldr r1, [r4]
	movs r2, #0xe8
	lsls r2, r2, #1
	adds r1, r1, r2
	ldrb r1, [r1]
	movs r2, #3
	bl sub_080068B4
	movs r0, #9
	strb r0, [r5, #0xb]
	ldr r0, [r4]
	ldr r4, _080319D8 @ =0x000001CD
	adds r1, r0, r4
	movs r0, #8
_080319C8:
	strb r0, [r1]
	movs r0, #1
	bl sub_08030334
	b _08031AEE
	.align 2, 0
_080319D4: .4byte 0x030013C0
_080319D8: .4byte 0x000001CD
_080319DC:
	ldr r0, _080319F4 @ =0x02034BF0
	ldr r0, [r0, #0x1c]
	ldrh r1, [r0, #2]
	movs r0, #0xfc
	lsls r0, r0, #1
	ands r0, r1
	lsrs r0, r0, #3
	cmp r0, #7
	beq _080319F8
	cmp r0, #0x13
	beq _08031A08
	b _08031A12
	.align 2, 0
_080319F4: .4byte 0x02034BF0
_080319F8:
	ldr r0, _08031A04 @ =0x08088FC4
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	b _08031A12
	.align 2, 0
_08031A04: .4byte 0x08088FC4
_08031A08:
	ldr r0, _08031A2C @ =0x08088FCC
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
_08031A12:
	bl sub_080064F8
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _08031A34
	ldr r0, _08031A30 @ =0x030013C0
	ldr r1, [r0]
	movs r0, #3
	b _08031AEC
	.align 2, 0
_08031A2C: .4byte 0x08088FCC
_08031A30: .4byte 0x030013C0
_08031A34:
	ldr r0, _08031A4C @ =0x02034BF0
	ldr r0, [r0, #0x1c]
	ldrh r1, [r0, #2]
	movs r0, #0xfc
	lsls r0, r0, #1
	ands r0, r1
	lsrs r0, r0, #3
	cmp r0, #7
	beq _08031A50
	cmp r0, #0x13
	beq _08031AB0
	b _08031AEE
	.align 2, 0
_08031A4C: .4byte 0x02034BF0
_08031A50:
	bl sub_080064F8
	ldr r4, _08031A80 @ =0x030013C0
	ldr r1, [r4]
	ldr r2, _08031A84 @ =0x08087406
	lsls r0, r0, #0x18
	asrs r0, r0, #0x17
	adds r0, r0, r2
	ldrh r0, [r0]
	movs r2, #0xe8
	lsls r2, r2, #1
	adds r1, r1, r2
	strb r0, [r1]
	ldr r1, [r4]
	ldrb r0, [r1, #1]
	cmp r0, #5
	bne _08031AEA
	bl sub_080064F8
	lsls r0, r0, #0x18
	asrs r0, r0, #0x15
	ldr r1, _08031A88 @ =0x08087418
	b _08031ADC
	.align 2, 0
_08031A80: .4byte 0x030013C0
_08031A84: .4byte 0x08087406
_08031A88: .4byte 0x08087418
_08031A8C:
	bl sub_08005934
	ldr r0, _08031AAC @ =0x08089150
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	bl sub_08005A2C
	bl sub_080064F8
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08031AEE
	b _08031AE8
	.align 2, 0
_08031AAC: .4byte 0x08089150
_08031AB0:
	bl sub_080064F8
	ldr r4, _08031AF4 @ =0x030013C0
	ldr r1, [r4]
	ldr r2, _08031AF8 @ =0x08087410
	lsls r0, r0, #0x18
	asrs r0, r0, #0x17
	adds r0, r0, r2
	ldrh r0, [r0]
	movs r2, #0xe8
	lsls r2, r2, #1
	adds r1, r1, r2
	strb r0, [r1]
	ldr r1, [r4]
	ldrb r0, [r1, #1]
	cmp r0, #5
	bne _08031AEA
	bl sub_080064F8
	lsls r0, r0, #0x18
	asrs r0, r0, #0x15
	ldr r1, _08031AFC @ =0x08087440
_08031ADC:
	adds r0, r0, r1
	bl sub_0803158C
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08031A8C
_08031AE8:
	ldr r1, [r4]
_08031AEA:
	movs r0, #4
_08031AEC:
	strb r0, [r1, #1]
_08031AEE:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08031AF4: .4byte 0x030013C0
_08031AF8: .4byte 0x08087410
_08031AFC: .4byte 0x08087440

	thumb_func_start sub_08031B00
sub_08031B00: @ 0x08031B00
	push {r4, r5, lr}
	ldr r5, _08031B18 @ =0x030013C0
	ldr r1, [r5]
	ldrb r0, [r1, #1]
	cmp r0, #1
	beq _08031B7C
	cmp r0, #1
	bgt _08031B1C
	cmp r0, #0
	beq _08031B24
	b _08031C4A
	.align 2, 0
_08031B18: .4byte 0x030013C0
_08031B1C:
	cmp r0, #2
	bne _08031B22
	b _08031C38
_08031B22:
	b _08031C4A
_08031B24:
	adds r0, r1, #0
	adds r0, #0x68
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _08031B32
	b _08031C4A
_08031B32:
	ldr r4, _08031B78 @ =0x02034BF0
	ldrh r0, [r4, #2]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1c
	subs r0, #1
	lsls r0, r0, #2
	adds r1, r4, #0
	adds r1, #0x20
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r1, [r0, #2]
	movs r0, #7
	ands r0, r1
	cmp r0, #3
	bne _08031B5E
	movs r0, #0xfc
	lsls r0, r0, #1
	ands r0, r1
	lsrs r0, r0, #3
	movs r1, #0x5c
	bl sub_08039D38
_08031B5E:
	ldr r0, [r5]
	movs r1, #0xc0
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r1, [r4, #0x1c]
	str r1, [r0]
	movs r0, #0xc
	bl sub_08007AC0
	ldr r1, [r5]
	movs r0, #1
	strb r0, [r1, #1]
	b _08031C4A
	.align 2, 0
_08031B78: .4byte 0x02034BF0
_08031B7C:
	adds r0, r1, #0
	adds r0, #0x68
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _08031C4A
	adds r0, r1, #0
	adds r0, #0x6a
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _08031C4A
	ldr r3, _08031BCC @ =0x02034BF0
	ldrh r4, [r3, #2]
	lsls r1, r4, #0x16
	lsrs r1, r1, #0x1c
	subs r1, #1
	lsls r0, r1, #2
	adds r2, r3, #0
	adds r2, #0x20
	adds r0, r0, r2
	ldr r2, [r0]
	str r2, [r3, #0x1c]
	movs r0, #0xf
	ands r1, r0
	lsls r1, r1, #6
	ldr r0, _08031BD0 @ =0xFFFFFC3F
	ands r0, r4
	orrs r0, r1
	strh r0, [r3, #2]
	ldrh r1, [r2, #2]
	movs r0, #7
	ands r0, r1
	cmp r0, #3
	bne _08031BD8
	ldr r0, _08031BD4 @ =0x0000010B
	bl m4aSongNumStart
	b _08031BDE
	.align 2, 0
_08031BCC: .4byte 0x02034BF0
_08031BD0: .4byte 0xFFFFFC3F
_08031BD4: .4byte 0x0000010B
_08031BD8:
	movs r0, #0xf7
	bl m4aSongNumStart
_08031BDE:
	ldr r0, _08031C0C @ =0x030013C0
	ldr r0, [r0]
	movs r1, #0xc0
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r1, [r0, #2]
	movs r0, #7
	ands r0, r1
	cmp r0, #3
	beq _08031C1E
	ldr r3, _08031C10 @ =0x02034BF0
	ldrb r2, [r3, #1]
	lsrs r1, r2, #4
	cmp r1, #9
	bgt _08031C14
	adds r1, #1
	lsls r1, r1, #4
	movs r0, #0xf
	ands r0, r2
	orrs r0, r1
	b _08031C18
	.align 2, 0
_08031C0C: .4byte 0x030013C0
_08031C10: .4byte 0x02034BF0
_08031C14:
	movs r0, #0xf
	ands r0, r2
_08031C18:
	strb r0, [r3, #1]
	bl sub_08037038
_08031C1E:
	ldr r0, _08031C30 @ =0x02034BF0
	ldr r0, [r0, #0x1c]
	bl sub_0803A584
	ldr r0, _08031C34 @ =0x030013C0
	ldr r1, [r0]
	movs r0, #2
	strb r0, [r1, #1]
	b _08031C4A
	.align 2, 0
_08031C30: .4byte 0x02034BF0
_08031C34: .4byte 0x030013C0
_08031C38:
	adds r0, r1, #0
	adds r0, #0x68
	ldrb r0, [r0]
	lsls r0, r0, #0x1a
	cmp r0, #0
	blt _08031C4A
	movs r0, #5
	bl sub_08030334
_08031C4A:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08031C50
sub_08031C50: @ 0x08031C50
	push {r4, r5, r6, lr}
	ldr r4, _08031C7C @ =0x02034E14
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x32
	bl sub_0800B8A4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x31
	bne _08031C88
	ldrh r1, [r4, #0x14]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08031C88
	movs r0, #2
	strb r0, [r4, #0x12]
	movs r0, #1
	b _08031CBA
	.align 2, 0
_08031C7C: .4byte 0x02034E14
_08031C80:
	strb r1, [r6, #0x11]
	strb r2, [r6, #0x12]
	movs r0, #1
	b _08031CBA
_08031C88:
	movs r5, #0
	ldr r6, _08031CC0 @ =0x02034E14
	ldr r4, _08031CC4 @ =0x08087BB0
_08031C8E:
	adds r0, r6, #0
	movs r1, #0
	movs r2, #0x32
	bl sub_0800B8A4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r4]
	cmp r0, r1
	blo _08031CB0
	ldrh r0, [r6, #0x14]
	ldrh r1, [r4, #2]
	asrs r0, r1
	movs r2, #1
	ands r0, r2
	cmp r0, #0
	beq _08031C80
_08031CB0:
	adds r4, #4
	adds r5, #1
	cmp r5, #7
	ble _08031C8E
	movs r0, #0
_08031CBA:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08031CC0: .4byte 0x02034E14
_08031CC4: .4byte 0x08087BB0

	thumb_func_start sub_08031CC8
sub_08031CC8: @ 0x08031CC8
	push {r4, r5, r6, r7, lr}
	ldr r1, _08031CE4 @ =0x030013C0
	ldr r0, [r1]
	ldrb r0, [r0, #1]
	adds r6, r1, #0
	cmp r0, #6
	bls _08031CD8
	b _08031F2E
_08031CD8:
	lsls r0, r0, #2
	ldr r1, _08031CE8 @ =_08031CEC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08031CE4: .4byte 0x030013C0
_08031CE8: .4byte _08031CEC
_08031CEC: @ jump table
	.4byte _08031D08 @ case 0
	.4byte _08031D50 @ case 1
	.4byte _08031E00 @ case 2
	.4byte _08031E50 @ case 3
	.4byte _08031EB0 @ case 4
	.4byte _08031EFA @ case 5
	.4byte _08031F1C @ case 6
_08031D08:
	ldr r4, _08031D1C @ =0x02034BF0
	ldr r0, [r4, #0x1c]
	ldrh r1, [r0, #2]
	movs r0, #7
	ands r0, r1
	cmp r0, #3
	beq _08031D20
	ldr r1, [r6]
	b _08031D44
	.align 2, 0
_08031D1C: .4byte 0x02034BF0
_08031D20:
	movs r1, #8
	ldrsb r1, [r4, r1]
	movs r0, #9
	ldrsb r0, [r4, r0]
	cmp r1, r0
	bne _08031D30
	ldr r1, [r6]
	b _08031D44
_08031D30:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08031D3C
	bl sub_08039534
_08031D3C:
	ldrb r0, [r4, #8]
	strb r0, [r4, #9]
	ldr r0, _08031D4C @ =0x030013C0
	ldr r1, [r0]
_08031D44:
	movs r0, #1
	strb r0, [r1, #1]
	b _08031F2E
	.align 2, 0
_08031D4C: .4byte 0x030013C0
_08031D50:
	ldr r0, [r6]
	adds r0, #0x69
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	cmp r0, #0
	bge _08031D5E
	b _08031F2E
_08031D5E:
	ldr r0, _08031DD8 @ =0x02034BF0
	movs r1, #8
	ldrsb r1, [r0, r1]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08031D98
	ldr r0, _08031DDC @ =0x02031050
	movs r1, #0x89
	lsls r1, r1, #4
	adds r4, r0, r1
	ldr r0, [r4]
	movs r5, #0x80
	lsls r5, r5, #6
	ands r0, r5
	cmp r0, #0
	bne _08031D98
	bl sub_08005934
	ldr r0, _08031DE0 @ =0x080893B0
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	bl sub_08005A2C
	ldr r0, [r4]
	orrs r0, r5
	str r0, [r4]
_08031D98:
	ldr r2, _08031DD8 @ =0x02034BF0
	ldrb r0, [r2, #5]
	lsls r0, r0, #0x1b
	cmp r0, #0
	bge _08031DE8
	ldrb r0, [r2, #0xc]
	movs r1, #0x5c
	bl sub_08039D50
	ldr r1, _08031DE4 @ =0x030013C0
	ldr r0, [r1]
	adds r0, #0x6a
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _08031DCC
	adds r4, r1, #0
_08031DBA:
	movs r0, #1
	bl sub_08002B98
	ldr r0, [r4]
	adds r0, #0x6a
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _08031DBA
_08031DCC:
	ldr r0, _08031DE4 @ =0x030013C0
	ldr r1, [r0]
	movs r0, #4
	strb r0, [r1, #1]
	b _08031F2E
	.align 2, 0
_08031DD8: .4byte 0x02034BF0
_08031DDC: .4byte 0x02031050
_08031DE0: .4byte 0x080893B0
_08031DE4: .4byte 0x030013C0
_08031DE8:
	ldrb r1, [r2, #4]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #4]
	ldr r0, _08031DFC @ =0x030013C0
	ldr r1, [r0]
	movs r0, #2
	strb r0, [r1, #1]
	b _08031F2E
	.align 2, 0
_08031DFC: .4byte 0x030013C0
_08031E00:
	ldr r0, [r6]
	adds r0, #0x68
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r7, r0, #0x1f
	cmp r7, #0
	beq _08031E10
	b _08031F2E
_08031E10:
	ldr r5, _08031E44 @ =0x02034BF0
	ldrb r4, [r5]
	lsrs r0, r4, #4
	adds r0, #1
	movs r1, #3
	bl __modsi3
	lsls r0, r0, #4
	movs r1, #0xf
	ands r1, r4
	orrs r1, r0
	strb r1, [r5]
	movs r3, #0x90
	lsls r3, r3, #1
	adds r4, r5, r3
	ldr r0, [r4]
	cmp r0, #0
	beq _08031E3A
	bl sub_08037B54
	str r7, [r4]
_08031E3A:
	ldrb r0, [r5, #0xd]
	cmp r0, #0
	bne _08031E48
	ldr r1, [r6]
	b _08031EA4
	.align 2, 0
_08031E44: .4byte 0x02034BF0
_08031E48:
	ldr r1, [r6]
	movs r0, #3
	strb r0, [r1, #1]
	b _08031F2E
_08031E50:
	ldr r4, _08031E94 @ =0x02034BF0
	movs r0, #0x90
	lsls r0, r0, #1
	adds r1, r4, r0
	movs r0, #0
	str r0, [r1]
	ldr r0, [r4, #0x1c]
	ldrh r1, [r0, #2]
	movs r0, #7
	ands r0, r1
	cmp r0, #4
	bne _08031F14
	bl sub_08005934
	ldr r0, _08031E98 @ =0x08089114
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	bl sub_08005A2C
	movs r0, #1
	rsbs r0, r0, #0
	bl sub_0803A6BC
	ldrb r0, [r4, #0xd]
	cmp r0, #1
	beq _08031EA0
	ldr r0, _08031E9C @ =0x030013C0
	ldr r1, [r0]
	movs r0, #5
	strb r0, [r1, #1]
	b _08031F2E
	.align 2, 0
_08031E94: .4byte 0x02034BF0
_08031E98: .4byte 0x08089114
_08031E9C: .4byte 0x030013C0
_08031EA0:
	ldr r0, _08031EAC @ =0x030013C0
	ldr r1, [r0]
_08031EA4:
	movs r0, #6
	strb r0, [r1, #1]
	b _08031F2E
	.align 2, 0
_08031EAC: .4byte 0x030013C0
_08031EB0:
	ldr r0, _08031ED4 @ =0x02031050
	movs r1, #0x89
	lsls r1, r1, #4
	adds r0, r0, r1
	ldr r2, [r0]
	movs r0, #1
	ands r2, r0
	cmp r2, #0
	bne _08031EE0
	ldr r0, _08031ED8 @ =0x02034BF0
	movs r3, #0x8d
	lsls r3, r3, #2
	adds r1, r0, r3
	strb r2, [r1]
	ldr r1, _08031EDC @ =0x00000236
	adds r0, r0, r1
	strb r2, [r0]
	b _08031EEA
	.align 2, 0
_08031ED4: .4byte 0x02031050
_08031ED8: .4byte 0x02034BF0
_08031EDC: .4byte 0x00000236
_08031EE0:
	bl sub_08031C50
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08031EF2
_08031EEA:
	movs r0, #0x16
	bl sub_08030334
	b _08031F2E
_08031EF2:
	movs r0, #0x11
	bl sub_08030334
	b _08031F2E
_08031EFA:
	ldr r1, [r6]
	adds r0, r1, #0
	adds r0, #0x68
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	cmp r0, #0
	blt _08031F2E
	adds r0, r1, #0
	adds r0, #0x6a
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _08031F2E
_08031F14:
	movs r0, #2
	bl sub_08030334
	b _08031F2E
_08031F1C:
	ldr r0, [r6]
	adds r0, #0x6a
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _08031F2E
	movs r0, #0x10
	bl sub_08030334
_08031F2E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08031F34
sub_08031F34: @ 0x08031F34
	push {r4, r5, r6, r7, lr}
	ldr r7, _08031F48 @ =0x030013C0
	ldr r0, [r7]
	ldrb r4, [r0, #1]
	cmp r4, #0
	beq _08031F4C
	cmp r4, #1
	beq _08031F90
	b _0803206E
	.align 2, 0
_08031F48: .4byte 0x030013C0
_08031F4C:
	ldr r0, _08031F84 @ =0x080ABBDC
	ldr r1, _08031F88 @ =0x05000260
	bl sub_08008308
	movs r0, #1
	bl sub_08002B98
	ldr r3, _08031F8C @ =0x02034BF0
	ldrb r2, [r3, #4]
	lsls r0, r2, #0x1d
	lsrs r0, r0, #0x1d
	cmp r0, #3
	bgt _08031F76
	adds r1, r0, #1
	movs r0, #7
	ands r1, r0
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #4]
_08031F76:
	bl sub_080369FC
	ldr r1, [r7]
	movs r0, #1
	strb r0, [r1, #1]
	b _0803206E
	.align 2, 0
_08031F84: .4byte 0x080ABBDC
_08031F88: .4byte 0x05000260
_08031F8C: .4byte 0x02034BF0
_08031F90:
	adds r0, #0x68
	ldrb r0, [r0]
	lsls r0, r0, #0x1d
	lsrs r5, r0, #0x1f
	cmp r5, #0
	bne _0803206E
	ldr r6, _08031FB0 @ =0x02034BF0
	ldrb r0, [r6, #4]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1d
	cmp r0, #3
	beq _08031FB4
	cmp r0, #4
	beq _08032000
	b _08032068
	.align 2, 0
_08031FB0: .4byte 0x02034BF0
_08031FB4:
	bl sub_08005934
	movs r0, #1
	bl sub_08005AC0
	ldr r0, _08031FF4 @ =0x08089120
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	ldr r0, [r7]
	movs r1, #0xaf
	lsls r1, r1, #2
	adds r0, r0, r1
	strb r4, [r0]
	ldr r0, [r7]
	ldr r3, _08031FF8 @ =0x000002BE
	adds r0, r0, r3
	strh r5, [r0]
	movs r0, #2
	bl sub_0800B828
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08032068
	ldrh r0, [r6, #4]
	ldr r1, _08031FFC @ =0xFFFFFE7F
	ands r1, r0
	movs r0, #0x80
	orrs r1, r0
	strh r1, [r6, #4]
	b _08032068
	.align 2, 0
_08031FF4: .4byte 0x08089120
_08031FF8: .4byte 0x000002BE
_08031FFC: .4byte 0xFFFFFE7F
_08032000:
	bl sub_08005934
	movs r0, #1
	bl sub_08005AC0
	movs r0, #2
	bl sub_0800B828
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08032028
	ldr r0, _08032024 @ =0x08089128
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	b _08032032
	.align 2, 0
_08032024: .4byte 0x08089128
_08032028:
	ldr r0, _08032074 @ =0x08089130
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
_08032032:
	ldr r2, _08032078 @ =0x030013C0
	ldr r0, [r2]
	movs r1, #0xaf
	lsls r1, r1, #2
	adds r0, r0, r1
	movs r3, #0
	movs r1, #1
	strb r1, [r0]
	ldr r0, [r2]
	ldr r1, _0803207C @ =0x000002BE
	adds r0, r0, r1
	strh r3, [r0]
	movs r0, #4
	bl sub_0800B828
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08032068
	ldr r2, _08032080 @ =0x02034BF0
	ldrh r1, [r2, #4]
	ldr r0, _08032084 @ =0xFFFFFE7F
	ands r0, r1
	movs r3, #0x80
	lsls r3, r3, #1
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2, #4]
_08032068:
	movs r0, #4
	bl sub_08030334
_0803206E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08032074: .4byte 0x08089130
_08032078: .4byte 0x030013C0
_0803207C: .4byte 0x000002BE
_08032080: .4byte 0x02034BF0
_08032084: .4byte 0xFFFFFE7F

	thumb_func_start sub_08032088
sub_08032088: @ 0x08032088
	push {r4, r5, r6, lr}
	bl sub_08039D68
	ldr r0, _080320A4 @ =0x030013C0
	ldr r0, [r0]
	ldrb r0, [r0, #1]
	cmp r0, #7
	bls _0803209A
	b _08032378
_0803209A:
	lsls r0, r0, #2
	ldr r1, _080320A8 @ =_080320AC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080320A4: .4byte 0x030013C0
_080320A8: .4byte _080320AC
_080320AC: @ jump table
	.4byte _080320CC @ case 0
	.4byte _08032124 @ case 1
	.4byte _0803218C @ case 2
	.4byte _0803223C @ case 3
	.4byte _0803225C @ case 4
	.4byte _0803227C @ case 5
	.4byte _080322BC @ case 6
	.4byte _080321F0 @ case 7
_080320CC:
	bl sub_08039D68
	movs r0, #1
	bl sub_08002B98
	ldr r6, _08032118 @ =0x030013C0
	ldr r0, [r6]
	ldr r0, [r0, #0x70]
	movs r1, #0
	bl sub_08009A34
	bl sub_08037604
	ldr r0, _0803211C @ =0x02031050
	movs r1, #0x89
	lsls r1, r1, #4
	adds r4, r0, r1
	ldr r0, [r4]
	movs r5, #0x20
	ands r0, r5
	cmp r0, #0
	bne _08032110
	bl sub_08005934
	ldr r0, _08032120 @ =0x0808904C
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	bl sub_08005A2C
	ldr r0, [r4]
	orrs r0, r5
	str r0, [r4]
_08032110:
	ldr r1, [r6]
	movs r0, #1
	strb r0, [r1, #1]
	b _08032378
	.align 2, 0
_08032118: .4byte 0x030013C0
_0803211C: .4byte 0x02031050
_08032120: .4byte 0x0808904C
_08032124:
	ldr r0, _08032148 @ =0x08088FE0
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	bl sub_080064F8
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _08032150
	ldr r0, _0803214C @ =0x030013C0
	ldr r1, [r0]
	movs r0, #7
	strb r0, [r1, #1]
	b _08032378
	.align 2, 0
_08032148: .4byte 0x08088FE0
_0803214C: .4byte 0x030013C0
_08032150:
	cmp r0, r1
	bge _08032156
	b _08032378
_08032156:
	cmp r0, #3
	ble _0803215C
	b _08032378
_0803215C:
	bl sub_080064F8
	ldr r3, _08032184 @ =0x02034BF0
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #3
	ands r0, r1
	lsls r0, r0, #3
	ldrb r2, [r3, #3]
	movs r1, #0x19
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, #3]
	ldr r0, _08032188 @ =0x030013C0
	ldr r1, [r0]
	movs r0, #2
	strb r0, [r1, #1]
	b _08032378
	.align 2, 0
_08032184: .4byte 0x02034BF0
_08032188: .4byte 0x030013C0
_0803218C:
	ldr r0, _080321A4 @ =0x02034BF0
	ldrb r0, [r0, #3]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1e
	cmp r0, #1
	beq _080321C0
	cmp r0, #1
	bgt _080321A8
	cmp r0, #0
	beq _080321B2
	b _08032378
	.align 2, 0
_080321A4: .4byte 0x02034BF0
_080321A8:
	cmp r0, #2
	beq _080321D0
	cmp r0, #3
	beq _080321E0
	b _08032378
_080321B2:
	ldr r0, _080321BC @ =0x030013C0
	ldr r1, [r0]
	movs r0, #3
	strb r0, [r1, #1]
	b _08032378
	.align 2, 0
_080321BC: .4byte 0x030013C0
_080321C0:
	ldr r0, _080321CC @ =0x030013C0
	ldr r1, [r0]
	movs r0, #4
	strb r0, [r1, #1]
	b _08032378
	.align 2, 0
_080321CC: .4byte 0x030013C0
_080321D0:
	ldr r0, _080321DC @ =0x030013C0
	ldr r1, [r0]
	movs r0, #6
	strb r0, [r1, #1]
	b _08032378
	.align 2, 0
_080321DC: .4byte 0x030013C0
_080321E0:
	ldr r0, _080321EC @ =0x030013C0
	ldr r1, [r0]
	movs r0, #5
	strb r0, [r1, #1]
	b _08032378
	.align 2, 0
_080321EC: .4byte 0x030013C0
_080321F0:
	ldr r2, _08032218 @ =0x02034BF0
	ldrb r1, [r2, #3]
	movs r0, #0x19
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #3]
	lsls r0, r0, #0x1a
	cmp r0, #0
	bge _08032220
	ldr r0, _0803221C @ =0x030013C0
	ldr r0, [r0]
	ldr r0, [r0, #0x70]
	movs r1, #1
	bl sub_08009A34
	movs r0, #4
	bl sub_08030334
	b _08032378
	.align 2, 0
_08032218: .4byte 0x02034BF0
_0803221C: .4byte 0x030013C0
_08032220:
	bl sub_08034A54
	ldr r0, _08032238 @ =0x030013C0
	ldr r0, [r0]
	ldr r0, [r0, #0x74]
	movs r1, #1
	bl sub_08009A34
	movs r0, #5
	bl sub_08030334
	b _08032378
	.align 2, 0
_08032238: .4byte 0x030013C0
_0803223C:
	ldr r1, _08032250 @ =0x02034BF0
	movs r0, #0xb
	strb r0, [r1, #0xb]
	ldr r0, _08032254 @ =0x030013C0
	ldr r0, [r0]
	ldr r2, _08032258 @ =0x000001CD
	adds r1, r0, r2
	movs r0, #5
	b _080322A4
	.align 2, 0
_08032250: .4byte 0x02034BF0
_08032254: .4byte 0x030013C0
_08032258: .4byte 0x000001CD
_0803225C:
	ldr r1, _08032270 @ =0x02034BF0
	movs r0, #0xb
	strb r0, [r1, #0xb]
	ldr r0, _08032274 @ =0x030013C0
	ldr r0, [r0]
	ldr r2, _08032278 @ =0x000001CD
	adds r1, r0, r2
	movs r0, #6
	b _080322A4
	.align 2, 0
_08032270: .4byte 0x02034BF0
_08032274: .4byte 0x030013C0
_08032278: .4byte 0x000001CD
_0803227C:
	bl sub_08005934
	ldr r0, _080322B0 @ =0x08088FE8
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	bl sub_08005A2C
	bl sub_080064F8
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	bne _080322D8
	ldr r0, _080322B4 @ =0x030013C0
	ldr r0, [r0]
	ldr r2, _080322B8 @ =0x000001CD
	adds r1, r0, r2
	movs r0, #0x1f
_080322A4:
	strb r0, [r1]
	movs r0, #1
	bl sub_08030334
	b _08032378
	.align 2, 0
_080322B0: .4byte 0x08088FE8
_080322B4: .4byte 0x030013C0
_080322B8: .4byte 0x000001CD
_080322BC:
	bl sub_08005934
	ldr r0, _080322E4 @ =0x08089160
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	bl sub_08005A2C
	bl sub_080064F8
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080322EC
_080322D8:
	ldr r0, _080322E8 @ =0x030013C0
	ldr r1, [r0]
	movs r0, #0
	strb r0, [r1, #1]
	b _08032378
	.align 2, 0
_080322E4: .4byte 0x08089160
_080322E8: .4byte 0x030013C0
_080322EC:
	ldr r0, _08032380 @ =0x02031050
	ldr r1, _08032384 @ =0x000008A4
	adds r0, r0, r1
	movs r1, #1
	str r1, [r0]
	movs r0, #0x24
	bl sub_080072F4
	ldr r1, _08032388 @ =0x02034BF0
	movs r0, #0xb
	strb r0, [r1, #0xb]
	ldr r0, _0803238C @ =0x030013C0
	ldr r0, [r0]
	ldr r2, _08032390 @ =0x000001CD
	adds r1, r0, r2
	movs r0, #0x23
	strb r0, [r1]
	movs r0, #1
	bl sub_08030334
	movs r5, #0
_08032316:
	lsls r1, r5, #0x10
	lsrs r1, r1, #0x10
	ldr r0, _08032394 @ =0x02034DE8
	bl sub_0800B87C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0803232E
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	bl sub_08001A24
_0803232E:
	adds r5, #1
	cmp r5, #0x7b
	ble _08032316
	movs r5, #0
_08032336:
	lsls r0, r5, #0x10
	lsrs r4, r0, #0x10
	ldr r0, _08032398 @ =0x02034E14
	adds r1, r4, #0
	bl sub_0800B87C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08032350
	ldr r0, _0803239C @ =0x020318E4
	adds r1, r4, #0
	bl sub_0800B844
_08032350:
	adds r5, #1
	cmp r5, #0x31
	ble _08032336
	movs r5, #0
_08032358:
	lsls r0, r5, #0x10
	lsrs r4, r0, #0x10
	ldr r0, _080323A0 @ =0x02034E08
	adds r1, r4, #0
	bl sub_0800B87C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08032372
	ldr r0, _080323A4 @ =0x020318EC
	adds r1, r4, #0
	bl sub_0800B844
_08032372:
	adds r5, #1
	cmp r5, #0x33
	ble _08032358
_08032378:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08032380: .4byte 0x02031050
_08032384: .4byte 0x000008A4
_08032388: .4byte 0x02034BF0
_0803238C: .4byte 0x030013C0
_08032390: .4byte 0x000001CD
_08032394: .4byte 0x02034DE8
_08032398: .4byte 0x02034E14
_0803239C: .4byte 0x020318E4
_080323A0: .4byte 0x02034E08
_080323A4: .4byte 0x020318EC

	thumb_func_start sub_080323A8
sub_080323A8: @ 0x080323A8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0803243C @ =0x02031050
	movs r1, #0x89
	lsls r1, r1, #4
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080323C0
	b _080325BA
_080323C0:
	ldrh r1, [r4, #2]
	movs r0, #7
	ands r0, r1
	cmp r0, #1
	beq _080323CC
	b _080325BA
_080323CC:
	ldr r1, _08032440 @ =0x02034BF0
	ldr r0, [r1, #0x18]
	mov ip, r1
	cmp r4, r0
	bne _080323D8
	b _080325BA
_080323D8:
	ldr r1, _08032444 @ =0x08087BF0
	ldr r0, [r1]
	cmp r0, #0
	beq _080323F4
	adds r2, r1, #0
_080323E2:
	ldr r0, [r2]
	cmp r4, r0
	bne _080323EA
	b _080325BA
_080323EA:
	adds r1, #4
	adds r2, #4
	ldr r0, [r1]
	cmp r0, #0
	bne _080323E2
_080323F4:
	mov r3, ip
	ldrb r0, [r3, #3]
	lsls r0, r0, #0x19
	cmp r0, #0
	bge _08032400
	b _080325BA
_08032400:
	movs r2, #0
	movs r0, #0x92
	lsls r0, r0, #1
	add r0, ip
	ldrb r0, [r0]
	cmp r2, r0
	bge _08032426
	adds r3, r0, #0
	movs r1, #0x94
	lsls r1, r1, #1
	add r1, ip
_08032416:
	ldr r0, [r1]
	cmp r4, r0
	bne _0803241E
	b _080325BA
_0803241E:
	adds r1, #4
	adds r2, #1
	cmp r2, r3
	blt _08032416
_08032426:
	bl sub_0800692C
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _08032448
	movs r0, #3
	b _0803244A
	.align 2, 0
_0803243C: .4byte 0x02031050
_08032440: .4byte 0x02034BF0
_08032444: .4byte 0x08087BF0
_08032448:
	movs r0, #0x20
_0803244A:
	bl sub_0800B828
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08032456
	b _0803255C
_08032456:
	ldr r0, _08032474 @ =0x02034E14
	movs r1, #0
	movs r2, #0x32
	bl sub_0800B8A4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x28
	bhi _0803254E
	lsls r0, r0, #2
	ldr r1, _08032478 @ =_0803247C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08032474: .4byte 0x02034E14
_08032478: .4byte _0803247C
_0803247C: @ jump table
	.4byte _0803255C @ case 0
	.4byte _0803255C @ case 1
	.4byte _0803255C @ case 2
	.4byte _0803255C @ case 3
	.4byte _0803255C @ case 4
	.4byte _0803255C @ case 5
	.4byte _0803255C @ case 6
	.4byte _0803255C @ case 7
	.4byte _0803255C @ case 8
	.4byte _0803255C @ case 9
	.4byte _0803255C @ case 10
	.4byte _08032520 @ case 11
	.4byte _08032520 @ case 12
	.4byte _08032520 @ case 13
	.4byte _08032520 @ case 14
	.4byte _08032520 @ case 15
	.4byte _08032520 @ case 16
	.4byte _08032520 @ case 17
	.4byte _08032520 @ case 18
	.4byte _08032520 @ case 19
	.4byte _08032520 @ case 20
	.4byte _0803252E @ case 21
	.4byte _0803252E @ case 22
	.4byte _0803252E @ case 23
	.4byte _0803252E @ case 24
	.4byte _0803252E @ case 25
	.4byte _0803252E @ case 26
	.4byte _0803252E @ case 27
	.4byte _0803252E @ case 28
	.4byte _0803252E @ case 29
	.4byte _0803252E @ case 30
	.4byte _0803253E @ case 31
	.4byte _0803253E @ case 32
	.4byte _0803253E @ case 33
	.4byte _0803253E @ case 34
	.4byte _0803253E @ case 35
	.4byte _0803253E @ case 36
	.4byte _0803253E @ case 37
	.4byte _0803253E @ case 38
	.4byte _0803253E @ case 39
	.4byte _0803253E @ case 40
_08032520:
	movs r0, #0x10
	bl sub_0800B828
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0803255C
	b _08032584
_0803252E:
	movs r0, #0x10
	bl sub_0800B828
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bhi _0803255C
	b _08032584
_0803253E:
	movs r0, #0x10
	bl sub_0800B828
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #2
	bhi _0803255C
	b _08032584
_0803254E:
	movs r0, #0x10
	bl sub_0800B828
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #3
	bls _08032584
_0803255C:
	ldr r2, _08032580 @ =0x02034BF0
	movs r0, #0x92
	lsls r0, r0, #1
	adds r3, r2, r0
	ldrb r0, [r3]
	adds r1, r0, #0
	cmp r1, #0x2f
	bhi _080325BA
	adds r0, #1
	strb r0, [r3]
	lsls r0, r1, #2
	movs r3, #0x94
	lsls r3, r3, #1
	adds r1, r2, r3
	adds r0, r0, r1
	str r4, [r0]
	b _080325BA
	.align 2, 0
_08032580: .4byte 0x02034BF0
_08032584:
	ldr r2, _080325A0 @ =0x02034BF0
	ldrb r0, [r2, #3]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #3]
	movs r0, #4
	bl sub_0800B828
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080325BE
	ldr r1, _080325A4 @ =0x08087C00
	b _080325B0
	.align 2, 0
_080325A0: .4byte 0x02034BF0
_080325A4: .4byte 0x08087C00
_080325A8:
	ldr r0, [r1]
	cmp r4, r0
	beq _080325BE
	adds r1, #4
_080325B0:
	ldr r0, [r1]
	cmp r0, #0
	bne _080325A8
	movs r0, #1
	b _080325C0
_080325BA:
	movs r0, #0
	b _080325C0
_080325BE:
	movs r0, #2
_080325C0:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080325C8
sub_080325C8: @ 0x080325C8
	push {r4, r5, r6, r7, lr}
	ldr r1, _080325E4 @ =0x030013C0
	ldr r0, [r1]
	ldrb r0, [r0, #1]
	adds r4, r1, #0
	cmp r0, #7
	bls _080325D8
	b _08032944
_080325D8:
	lsls r0, r0, #2
	ldr r1, _080325E8 @ =_080325EC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080325E4: .4byte 0x030013C0
_080325E8: .4byte _080325EC
_080325EC: @ jump table
	.4byte _0803260C @ case 0
	.4byte _080326B8 @ case 1
	.4byte _08032718 @ case 2
	.4byte _0803287C @ case 3
	.4byte _08032894 @ case 4
	.4byte _080328C8 @ case 5
	.4byte _080328E0 @ case 6
	.4byte _0803291A @ case 7
_0803260C:
	ldr r0, _080326A4 @ =0x080F9A08
	ldr r1, _080326A8 @ =0x050003A0
	bl sub_08008308
	movs r0, #1
	bl sub_08002B98
	ldr r6, _080326AC @ =0x030013C0
	ldr r0, [r6]
	movs r7, #0xc0
	lsls r7, r7, #1
	adds r0, r0, r7
	ldr r3, _080326B0 @ =0x02034BF0
	ldr r1, [r3, #0x1c]
	ldr r2, [r0]
	ldr r0, [r1, #0xc]
	cmp r2, r0
	bne _0803263E
	ldrb r0, [r3]
	movs r1, #4
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #2
	orrs r1, r0
	strb r1, [r3]
_0803263E:
	ldr r0, [r6]
	adds r2, r0, r7
	ldr r4, [r3, #0x1c]
	ldr r1, [r2]
	ldr r0, [r4, #0x10]
	adds r5, r4, #0
	cmp r1, r0
	bne _08032656
	ldrb r0, [r3]
	movs r1, #3
	orrs r0, r1
	strb r0, [r3]
_08032656:
	ldr r1, [r2]
	ldr r0, [r5, #4]
	cmp r1, r0
	bne _0803266C
	ldrb r0, [r3]
	movs r1, #4
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #1
	orrs r1, r0
	strb r1, [r3]
_0803266C:
	ldr r1, [r2]
	ldr r0, [r4, #8]
	cmp r1, r0
	bne _0803267E
	ldrb r1, [r3]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r3]
_0803267E:
	bl sub_08034A54
	bl sub_08037058
	ldr r0, [r6]
	adds r0, r0, r7
	ldr r0, [r0]
	bl sub_08038068
	ldr r0, [r6]
	ldr r2, _080326B4 @ =0x000001D3
	adds r1, r0, r2
	movs r0, #0
	strb r0, [r1]
	ldr r1, [r6]
	movs r0, #1
	strb r0, [r1, #1]
	b _08032944
	.align 2, 0
_080326A4: .4byte 0x080F9A08
_080326A8: .4byte 0x050003A0
_080326AC: .4byte 0x030013C0
_080326B0: .4byte 0x02034BF0
_080326B4: .4byte 0x000001D3
_080326B8:
	ldr r0, [r4]
	adds r0, #0x68
	ldrb r0, [r0]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _080326C6
	b _08032944
_080326C6:
	bl sub_08005934
	ldr r2, _080326E0 @ =0x02034BF0
	ldrb r1, [r2, #3]
	lsrs r0, r1, #7
	cmp r0, #0
	beq _080326E8
	ldr r0, _080326E4 @ =0x0808907C
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	b _080326F8
	.align 2, 0
_080326E0: .4byte 0x02034BF0
_080326E4: .4byte 0x0808907C
_080326E8:
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r2, #3]
	ldr r0, _0803270C @ =0x08089064
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
_080326F8:
	ldr r0, _08032710 @ =0x0808908C
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	ldr r0, _08032714 @ =0x030013C0
	ldr r1, [r0]
	movs r0, #2
	strb r0, [r1, #1]
	b _08032944
	.align 2, 0
_0803270C: .4byte 0x08089064
_08032710: .4byte 0x0808908C
_08032714: .4byte 0x030013C0
_08032718:
	ldr r0, _0803276C @ =0x0808909C
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	bl sub_080064F8
	lsls r0, r0, #0x18
	cmp r0, #0
	bge _0803272E
	b _08032944
_0803272E:
	bl sub_080064F8
	ldr r5, _08032770 @ =0x030013C0
	ldr r1, [r5]
	ldr r4, _08032774 @ =0x000001D1
	adds r1, r1, r4
	strb r0, [r1]
	movs r0, #3
	bl sub_0800B828
	ldr r1, [r5]
	movs r2, #0xe9
	lsls r2, r2, #1
	adds r1, r1, r2
	strb r0, [r1]
	ldr r0, [r5]
	adds r4, r0, r4
	ldrb r4, [r4]
	adds r0, r0, r2
	ldrb r5, [r0]
	adds r0, r5, #2
	movs r1, #3
	bl __modsi3
	cmp r4, r0
	bne _0803277C
	ldr r0, _08032778 @ =0x00000107
	bl m4aSongNumStart
	b _08032788
	.align 2, 0
_0803276C: .4byte 0x0808909C
_08032770: .4byte 0x030013C0
_08032774: .4byte 0x000001D1
_08032778: .4byte 0x00000107
_0803277C:
	cmp r4, r5
	beq _08032788
	movs r0, #0x84
	lsls r0, r0, #1
	bl m4aSongNumStart
_08032788:
	ldr r1, _080327DC @ =0x08087A2C
	ldr r5, _080327E0 @ =0x030013C0
	ldr r0, [r5]
	movs r4, #0xe9
	lsls r4, r4, #1
	adds r0, r0, r4
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	ldr r2, [r5]
	ldr r0, _080327E4 @ =0x000001D1
	adds r1, r2, r0
	adds r3, r2, r4
	ldrb r0, [r1]
	ldrb r4, [r3]
	cmp r0, r4
	bne _080327F0
	ldr r1, _080327E8 @ =0x08087C70
	ldr r4, _080327EC @ =0x000001D3
	adds r0, r2, r4
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	ldr r0, [r5]
	adds r1, r0, r4
	ldrb r0, [r1]
	cmp r0, #0
	beq _080327D6
	b _08032944
_080327D6:
	adds r0, #1
	strb r0, [r1]
	b _08032944
	.align 2, 0
_080327DC: .4byte 0x08087A2C
_080327E0: .4byte 0x030013C0
_080327E4: .4byte 0x000001D1
_080327E8: .4byte 0x08087C70
_080327EC: .4byte 0x000001D3
_080327F0:
	ldrb r4, [r1]
	ldrb r0, [r3]
	adds r0, #2
	movs r1, #3
	bl __modsi3
	cmp r4, r0
	bne _08032818
	ldr r0, _08032814 @ =0x080890C0
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	bl sub_08038098
	ldr r1, [r5]
	movs r0, #5
	b _0803286E
	.align 2, 0
_08032814: .4byte 0x080890C0
_08032818:
	ldr r4, _08032854 @ =0x02034BF0
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	beq _0803282E
	movs r0, #0xa
	bl sub_0800B828
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #3
	bhi _0803285C
_0803282E:
	movs r0, #0x90
	lsls r0, r0, #1
	adds r1, r4, r0
	ldr r0, [r5]
	movs r2, #0xc0
	lsls r2, r2, #1
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [r1]
	ldr r0, _08032858 @ =0x080890CC
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	bl sub_08037B34
	ldr r1, [r5]
	movs r0, #3
	b _0803286E
	.align 2, 0
_08032854: .4byte 0x02034BF0
_08032858: .4byte 0x080890CC
_0803285C:
	ldr r0, _08032878 @ =0x080892A4
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	bl sub_08038098
	ldr r1, [r5]
	movs r0, #6
_0803286E:
	strb r0, [r1, #1]
	bl sub_08005A2C
	b _08032944
	.align 2, 0
_08032878: .4byte 0x080892A4
_0803287C:
	ldr r0, [r4]
	adds r0, #0x68
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	cmp r0, #0
	blt _08032944
	bl sub_080352E8
	ldr r1, [r4]
	movs r0, #4
	strb r0, [r1, #1]
	b _08032944
_08032894:
	ldr r0, [r4]
	adds r0, #0x68
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _08032944
	bl sub_08005934
	ldr r0, _080328C4 @ =0x080890E0
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	bl sub_08005A2C
	bl sub_080342A0
	bl sub_08037070
	movs r0, #5
	bl sub_08030334
	b _08032944
	.align 2, 0
_080328C4: .4byte 0x080890E0
_080328C8:
	ldr r0, [r4]
	adds r0, #0x68
	ldrb r0, [r0]
	lsrs r0, r0, #7
	cmp r0, #0
	bne _08032944
	movs r0, #5
	bl sub_08030334
	bl sub_08037070
	b _08032944
_080328E0:
	ldr r0, [r4]
	adds r0, #0x68
	ldrb r0, [r0]
	lsrs r0, r0, #7
	cmp r0, #0
	bne _08032944
	bl sub_08005934
	ldr r0, _0803294C @ =0x080892B0
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	movs r0, #1
	rsbs r0, r0, #0
	bl sub_0803A6CC
	bl sub_08036A38
	ldr r0, _08032950 @ =0x080892BC
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	bl sub_08005A2C
	ldr r1, [r4]
	movs r0, #7
	strb r0, [r1, #1]
_0803291A:
	ldr r0, _08032954 @ =0x030013C0
	ldr r0, [r0]
	adds r0, #0x68
	ldrb r0, [r0]
	lsls r0, r0, #0x1d
	cmp r0, #0
	blt _08032944
	bl sub_08005934
	ldr r0, _08032958 @ =0x080892C4
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	bl sub_08005A2C
	bl sub_08037070
	movs r0, #5
	bl sub_08030334
_08032944:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803294C: .4byte 0x080892B0
_08032950: .4byte 0x080892BC
_08032954: .4byte 0x030013C0
_08032958: .4byte 0x080892C4

	thumb_func_start sub_0803295C
sub_0803295C: @ 0x0803295C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	adds r4, r0, #0
	movs r0, #0
	str r0, [sp]
	movs r0, #8
	bl sub_0800B828
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bhi _08032980
	movs r1, #1
	str r1, [sp]
_08032980:
	ldrh r4, [r4, #0x14]
	mov ip, r4
	movs r6, #0
	movs r3, #0
	ldr r5, _08032A6C @ =0x08087C78
	lsls r2, r4, #2
	adds r0, r2, r4
	lsls r1, r0, #2
	ldr r4, [sp]
	adds r0, r4, r1
	adds r4, r5, #0
	adds r4, #8
	adds r0, r0, r4
	ldr r7, _08032A70 @ =0x030013C0
	mov sl, r7
	ldrb r0, [r0]
	cmp r6, r0
	bge _08032A44
	adds r7, r5, #0
	ldr r0, [sp]
	lsls r0, r0, #2
	str r0, [sp, #4]
	str r2, [sp, #0xc]
	str r1, [sp, #8]
_080329B0:
	ldr r1, [sp, #4]
	adds r4, r3, r1
	mov r5, ip
	adds r0, r2, r5
	lsls r0, r0, #2
	adds r0, r4, r0
	adds r1, r7, #0
	adds r1, #0xa
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r0, r7, #4
	adds r0, r1, r0
	ldr r2, [r0]
	adds r1, r1, r7
	ldrb r0, [r1]
	adds r3, #1
	str r3, [sp, #0x10]
	cmp r0, #0
	beq _08032A2C
	ldr r0, _08032A74 @ =0x02034BF0
	mov sb, r0
	ldr r1, _08032A78 @ =0x02034D10
	mov r8, r1
	adds r3, r2, #0
	ldr r5, [sp, #8]
	adds r0, r4, r5
	ldr r1, _08032A7C @ =0x08087C82
	adds r0, r0, r1
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r4, _08032A6C @ =0x08087C78
	adds r0, r0, r4
	ldrb r4, [r0]
_080329FC:
	mov r5, r8
	ldr r1, [r5]
	cmp r1, #0
	beq _08032A0A
	ldr r0, [r3]
	cmp r0, r1
	beq _08032A24
_08032A0A:
	ldr r2, [r3]
	mov r1, sb
	ldr r0, [r1, #0x1c]
	cmp r2, r0
	beq _08032A24
	mov r5, sl
	ldr r0, [r5]
	lsls r1, r6, #2
	ldr r5, _08032A80 @ =0x000009D4
	adds r0, r0, r5
	adds r0, r0, r1
	str r2, [r0]
	adds r6, #1
_08032A24:
	adds r3, #4
	subs r4, #1
	cmp r4, #0
	bne _080329FC
_08032A2C:
	ldr r3, [sp, #0x10]
	ldr r2, [sp, #0xc]
	mov r1, ip
	adds r0, r2, r1
	lsls r0, r0, #2
	ldr r4, [sp]
	adds r0, r4, r0
	ldr r5, _08032A84 @ =0x08087C80
	adds r0, r0, r5
	ldrb r0, [r0]
	cmp r3, r0
	blt _080329B0
_08032A44:
	mov r7, sl
	ldr r4, [r7]
	lsls r0, r6, #0x10
	lsrs r0, r0, #0x10
	bl sub_0800B828
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	ldr r1, _08032A80 @ =0x000009D4
	adds r4, r4, r1
	adds r4, r4, r0
	ldr r0, [r4]
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08032A6C: .4byte 0x08087C78
_08032A70: .4byte 0x030013C0
_08032A74: .4byte 0x02034BF0
_08032A78: .4byte 0x02034D10
_08032A7C: .4byte 0x08087C82
_08032A80: .4byte 0x000009D4
_08032A84: .4byte 0x08087C80

	thumb_func_start sub_08032A88
sub_08032A88: @ 0x08032A88
	push {r4, r5, r6, r7, lr}
	ldr r1, _08032AA4 @ =0x030013C0
	ldr r0, [r1]
	ldrb r0, [r0, #1]
	adds r5, r1, #0
	cmp r0, #6
	bls _08032A98
	b _08032CF2
_08032A98:
	lsls r0, r0, #2
	ldr r1, _08032AA8 @ =_08032AAC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08032AA4: .4byte 0x030013C0
_08032AA8: .4byte _08032AAC
_08032AAC: @ jump table
	.4byte _08032AC8 @ case 0
	.4byte _08032B64 @ case 1
	.4byte _08032BCC @ case 2
	.4byte _08032BF8 @ case 3
	.4byte _08032C3C @ case 4
	.4byte _08032C6C @ case 5
	.4byte _08032C92 @ case 6
_08032AC8:
	ldr r0, _08032B54 @ =0x080F9A08
	ldr r1, _08032B58 @ =0x050003A0
	bl sub_08008308
	movs r0, #1
	bl sub_08002B98
	ldr r6, _08032B5C @ =0x030013C0
	ldr r0, [r6]
	movs r7, #0xc0
	lsls r7, r7, #1
	adds r0, r0, r7
	ldr r3, _08032B60 @ =0x02034BF0
	ldr r1, [r3, #0x1c]
	ldr r2, [r0]
	ldr r0, [r1, #0xc]
	cmp r2, r0
	bne _08032AFA
	ldrb r0, [r3]
	movs r1, #4
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #2
	orrs r1, r0
	strb r1, [r3]
_08032AFA:
	ldr r0, [r6]
	adds r2, r0, r7
	ldr r4, [r3, #0x1c]
	ldr r1, [r2]
	ldr r0, [r4, #0x10]
	adds r5, r4, #0
	cmp r1, r0
	bne _08032B12
	ldrb r0, [r3]
	movs r1, #3
	orrs r0, r1
	strb r0, [r3]
_08032B12:
	ldr r1, [r2]
	ldr r0, [r5, #4]
	cmp r1, r0
	bne _08032B28
	ldrb r0, [r3]
	movs r1, #4
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #1
	orrs r1, r0
	strb r1, [r3]
_08032B28:
	ldr r1, [r2]
	ldr r0, [r4, #8]
	cmp r1, r0
	bne _08032B3A
	ldrb r1, [r3]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r3]
_08032B3A:
	bl sub_08034A54
	bl sub_08037058
	ldr r0, [r6]
	adds r0, r0, r7
	ldr r0, [r0]
	bl sub_08038068
	ldr r1, [r6]
	movs r0, #1
	strb r0, [r1, #1]
	b _08032CF2
	.align 2, 0
_08032B54: .4byte 0x080F9A08
_08032B58: .4byte 0x050003A0
_08032B5C: .4byte 0x030013C0
_08032B60: .4byte 0x02034BF0
_08032B64:
	ldr r0, [r5]
	adds r0, #0x68
	ldrb r0, [r0]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _08032B72
	b _08032CF2
_08032B72:
	bl sub_08005934
	ldr r2, _08032B8C @ =0x02034BF0
	ldrb r1, [r2, #3]
	lsrs r0, r1, #7
	cmp r0, #0
	beq _08032B94
	ldr r0, _08032B90 @ =0x0808907C
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	b _08032BA4
	.align 2, 0
_08032B8C: .4byte 0x02034BF0
_08032B90: .4byte 0x0808907C
_08032B94:
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r2, #3]
	ldr r0, _08032BC0 @ =0x08089064
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
_08032BA4:
	ldr r0, _08032BC4 @ =0x080890F4
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	bl sub_08005A2C
	bl sub_08038098
	ldr r0, _08032BC8 @ =0x030013C0
	ldr r1, [r0]
	movs r0, #2
	strb r0, [r1, #1]
	b _08032CF2
	.align 2, 0
_08032BC0: .4byte 0x08089064
_08032BC4: .4byte 0x080890F4
_08032BC8: .4byte 0x030013C0
_08032BCC:
	ldr r0, [r5]
	adds r0, #0x68
	ldrb r0, [r0]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _08032BDA
	b _08032CF2
_08032BDA:
	bl sub_08005934
	ldr r0, _08032BF4 @ =0x08089100
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	bl sub_08005A2C
	ldr r1, [r5]
	movs r0, #3
	strb r0, [r1, #1]
	b _08032CF2
	.align 2, 0
_08032BF4: .4byte 0x08089100
_08032BF8:
	ldr r0, _08032C2C @ =0x080B4A14
	ldr r1, _08032C30 @ =0x050003A0
	bl sub_08008308
	movs r0, #1
	bl sub_08002B98
	ldr r0, _08032C34 @ =0x02034BF0
	ldr r0, [r0, #0x1c]
	bl sub_08038D28
	movs r0, #1
	bl sub_08002B98
	bl sub_080351C8
	bl sub_08034A10
	ldr r2, _08032C38 @ =0x030013C0
	ldr r1, [r2]
	movs r0, #4
	strb r0, [r1, #1]
	ldr r1, [r2]
	movs r0, #0x32
	strh r0, [r1, #6]
	b _08032CF2
	.align 2, 0
_08032C2C: .4byte 0x080B4A14
_08032C30: .4byte 0x050003A0
_08032C34: .4byte 0x02034BF0
_08032C38: .4byte 0x030013C0
_08032C3C:
	ldr r0, [r5]
	adds r0, #0x68
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _08032CF2
	ldr r0, _08032C68 @ =0x02034BF0
	ldr r0, [r0, #0x1c]
	bl sub_0803295C
	ldr r1, [r5]
	movs r2, #0xc0
	lsls r2, r2, #1
	adds r1, r1, r2
	str r0, [r1]
	bl sub_08035308
	ldr r1, [r5]
	movs r0, #5
	strb r0, [r1, #1]
	b _08032CF2
	.align 2, 0
_08032C68: .4byte 0x02034BF0
_08032C6C:
	ldr r0, [r5]
	adds r0, #0x68
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _08032CF2
	bl sub_08034A30
	ldr r0, [r5]
	movs r1, #0xc0
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_0803A584
	ldr r1, [r5]
	movs r0, #6
	strb r0, [r1, #1]
	b _08032CF2
_08032C92:
	ldr r0, [r5]
	adds r0, #0x68
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	lsrs r6, r0, #0x1f
	cmp r6, #0
	bne _08032CF2
	bl sub_08005934
	ldr r0, _08032CF8 @ =0x0808910C
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	bl sub_08005A2C
	bl sub_080351E8
	ldr r4, _08032CFC @ =0x02034BF0
	ldrh r1, [r4, #2]
	ldr r0, _08032D00 @ =0xFFFFFC3F
	ands r0, r1
	strh r0, [r4, #2]
	ldr r0, [r5]
	movs r2, #0xc0
	lsls r2, r2, #1
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [r4, #0x1c]
	str r0, [r4, #0x18]
	ldrb r1, [r4, #1]
	lsrs r2, r1, #4
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #1]
	bl sub_080342A0
	bl sub_08037070
	movs r0, #0x92
	lsls r0, r0, #1
	adds r4, r4, r0
	strb r6, [r4]
	movs r0, #5
	bl sub_08030334
_08032CF2:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08032CF8: .4byte 0x0808910C
_08032CFC: .4byte 0x02034BF0
_08032D00: .4byte 0xFFFFFC3F

	thumb_func_start sub_08032D04
sub_08032D04: @ 0x08032D04
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r1, _08032D20 @ =0x030013C0
	ldr r0, [r1]
	ldrb r0, [r0, #1]
	adds r6, r1, #0
	cmp r0, #7
	bls _08032D16
	b _08032F16
_08032D16:
	lsls r0, r0, #2
	ldr r1, _08032D24 @ =_08032D28
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08032D20: .4byte 0x030013C0
_08032D24: .4byte _08032D28
_08032D28: @ jump table
	.4byte _08032D48 @ case 0
	.4byte _08032E20 @ case 1
	.4byte _08032E34 @ case 2
	.4byte _08032E6C @ case 3
	.4byte _08032E88 @ case 4
	.4byte _08032EBC @ case 5
	.4byte _08032EFC @ case 6
	.4byte _08032F10 @ case 7
_08032D48:
	ldr r5, _08032E0C @ =0x08087650
	ldr r7, _08032E10 @ =0x08087990
	ldr r0, [r6]
	movs r4, #0x90
	lsls r4, r4, #2
	adds r0, r0, r4
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r0, [r0]
	ldrb r0, [r0, #2]
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldr r0, [r0]
	ldr r1, _08032E14 @ =0x05000380
	bl sub_08008308
	movs r0, #1
	bl sub_08002B98
	ldr r0, [r6]
	adds r0, r0, r4
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r0, [r0]
	ldrb r0, [r0, #2]
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldr r0, [r0, #0xc]
	mov r1, sp
	bl sub_08008380
	ldr r1, [r6]
	str r0, [r1, #0x40]
	ldr r0, [sp]
	str r0, [r1, #0x44]
	movs r0, #1
	bl sub_08002B98
	ldr r0, [r6]
	movs r1, #0
	str r1, [r0, #0x48]
	ldr r5, _08032E18 @ =0x080876E4
	adds r0, r0, r4
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r0, [r0]
	ldrb r0, [r0, #4]
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	cmp r0, #0
	beq _08032DF2
	ldr r0, [r0]
	ldr r1, _08032E1C @ =0x050003A0
	bl sub_08008308
	movs r0, #1
	bl sub_08002B98
	ldr r0, [r6]
	adds r0, r0, r4
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r0, [r0]
	ldrb r0, [r0, #4]
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldr r0, [r0, #0xc]
	mov r1, sp
	bl sub_08008380
	ldr r1, [r6]
	str r0, [r1, #0x48]
	ldr r0, [sp]
	str r0, [r1, #0x4c]
	movs r0, #1
	bl sub_08002B98
_08032DF2:
	bl sub_0803A5D0
	bl sub_0803A73C
	bl sub_08037440
	ldr r0, [r6]
	movs r1, #0x1e
	strh r1, [r0, #6]
	movs r1, #1
	strb r1, [r0, #1]
	b _08032F16
	.align 2, 0
_08032E0C: .4byte 0x08087650
_08032E10: .4byte 0x08087990
_08032E14: .4byte 0x05000380
_08032E18: .4byte 0x080876E4
_08032E1C: .4byte 0x050003A0
_08032E20:
	bl sub_08035328
	ldr r0, _08032E30 @ =0x030013C0
	ldr r1, [r0]
	movs r0, #2
	strb r0, [r1, #1]
	b _08032F16
	.align 2, 0
_08032E30: .4byte 0x030013C0
_08032E34:
	ldr r0, [r6]
	adds r0, #0x68
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _08032F16
	ldr r0, _08032E64 @ =sub_08038EFC
	movs r1, #0x43
	movs r2, #0
	bl sub_08007968
	ldr r1, [r6]
	strh r0, [r1, #0x1e]
	ldr r0, _08032E68 @ =sub_080391F0
	movs r1, #0x43
	movs r2, #0
	bl sub_08007968
	ldr r1, [r6]
	strh r0, [r1, #0x20]
	movs r0, #3
	strb r0, [r1, #1]
	b _08032F16
	.align 2, 0
_08032E64: .4byte sub_08038EFC
_08032E68: .4byte sub_080391F0
_08032E6C:
	ldr r0, [r6]
	adds r0, #0x69
	ldrb r0, [r0]
	lsls r0, r0, #0x1a
	cmp r0, #0
	blt _08032F16
	bl sub_08005934
	bl sub_080391C0
	ldr r1, [r6]
	movs r0, #4
	strb r0, [r1, #1]
	b _08032F16
_08032E88:
	ldr r1, _08032EB8 @ =0x08087990
	ldr r0, [r6]
	movs r2, #0x90
	lsls r2, r2, #2
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r0, [r0, #8]
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	bl sub_08005A2C
	bl sub_08038EDC
	bl sub_080391E4
	ldr r1, [r6]
	movs r0, #5
	strb r0, [r1, #1]
	b _08032F16
	.align 2, 0
_08032EB8: .4byte 0x08087990
_08032EBC:
	ldr r1, [r6]
	adds r0, r1, #0
	adds r0, #0x69
	ldrb r0, [r0]
	lsls r0, r0, #0x1a
	cmp r0, #0
	blt _08032F16
	ldr r0, [r1, #0x40]
	bl sub_08007CF8
	ldr r0, [r6]
	ldr r0, [r0, #0x48]
	cmp r0, #0
	beq _08032EDC
	bl sub_08007CF8
_08032EDC:
	ldr r0, [r6]
	movs r1, #0x1e
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	ldr r0, [r6]
	movs r2, #0x20
	ldrsh r0, [r0, r2]
	bl sub_08007A08
	bl sub_08035348
	ldr r1, [r6]
	movs r0, #6
	strb r0, [r1, #1]
	b _08032F16
_08032EFC:
	ldr r1, [r6]
	adds r0, r1, #0
	adds r0, #0x68
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _08032F16
	movs r0, #7
	strb r0, [r1, #1]
	b _08032F16
_08032F10:
	movs r0, #3
	bl sub_08030334
_08032F16:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08032F20
sub_08032F20: @ 0x08032F20
	push {r4, lr}
	ldr r1, _08032F38 @ =0x030013C0
	ldr r0, [r1]
	ldrb r0, [r0, #1]
	adds r4, r1, #0
	cmp r0, #4
	bhi _08033012
	lsls r0, r0, #2
	ldr r1, _08032F3C @ =_08032F40
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08032F38: .4byte 0x030013C0
_08032F3C: .4byte _08032F40
_08032F40: @ jump table
	.4byte _08032F54 @ case 0
	.4byte _08032FB8 @ case 1
	.4byte _08032FD0 @ case 2
	.4byte _08032FE8 @ case 3
	.4byte _08033006 @ case 4
_08032F54:
	bl sub_08008174
	ldr r4, _08032FA8 @ =0x030024E0
	ldrh r0, [r4]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r1, r2, #0
	orrs r1, r0
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r2, #0
	orrs r1, r0
	ldr r0, _08032FAC @ =0x00007878
	strh r0, [r4, #0x3e]
	adds r2, r4, #0
	adds r2, #0x42
	ldr r0, _08032FB0 @ =0x00005050
	strh r0, [r2]
	adds r2, #3
	movs r0, #0x3f
	strb r0, [r2]
	adds r2, #1
	movs r0, #0x21
	strb r0, [r2]
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r2, #0
	orrs r1, r0
	strh r1, [r4]
	movs r0, #0x70
	bl m4aSongNumStart
	bl sub_08039994
	adds r0, r4, #0
	adds r0, #0x4f
	movs r1, #1
	strb r1, [r0]
	ldr r0, _08032FB4 @ =0x030013C0
	ldr r0, [r0]
	strb r1, [r0, #1]
	b _08033012
	.align 2, 0
_08032FA8: .4byte 0x030024E0
_08032FAC: .4byte 0x00007878
_08032FB0: .4byte 0x00005050
_08032FB4: .4byte 0x030013C0
_08032FB8:
	ldr r0, [r4]
	adds r0, #0x69
	ldrb r0, [r0]
	lsrs r0, r0, #7
	cmp r0, #0
	bne _08033012
	bl sub_08035368
	ldr r1, [r4]
	movs r0, #2
	strb r0, [r1, #1]
	b _08033012
_08032FD0:
	ldr r0, [r4]
	adds r0, #0x68
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _08033012
	bl sub_080399B4
	ldr r1, [r4]
	movs r0, #3
	strb r0, [r1, #1]
	b _08033012
_08032FE8:
	ldr r0, [r4]
	adds r0, #0x69
	ldrb r0, [r0]
	lsrs r0, r0, #7
	cmp r0, #0
	bne _08033012
	bl sub_08005824
	movs r0, #1
	bl sub_08005A88
	ldr r1, [r4]
	movs r0, #4
	strb r0, [r1, #1]
	b _08033012
_08033006:
	movs r0, #0xf
	bl m4aSongNumStart
	movs r0, #2
	bl sub_08030334
_08033012:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08033018
sub_08033018: @ 0x08033018
	push {r4, r5, lr}
	sub sp, #0xc
	ldr r1, _08033034 @ =0x030013C0
	ldr r0, [r1]
	ldrb r0, [r0, #1]
	adds r4, r1, #0
	cmp r0, #8
	bls _0803302A
	b _080332F8
_0803302A:
	lsls r0, r0, #2
	ldr r1, _08033038 @ =_0803303C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08033034: .4byte 0x030013C0
_08033038: .4byte _0803303C
_0803303C: @ jump table
	.4byte _08033060 @ case 0
	.4byte _0803306C @ case 1
	.4byte _080330B8 @ case 2
	.4byte _080330D8 @ case 3
	.4byte _080331D8 @ case 4
	.4byte _08033238 @ case 5
	.4byte _08033278 @ case 6
	.4byte _08033280 @ case 7
	.4byte _080332E8 @ case 8
_08033060:
	ldr r0, [r4]
	movs r1, #0x1e
	strh r1, [r0, #6]
	movs r1, #1
	strb r1, [r0, #1]
	b _080332F8
_0803306C:
	bl sub_08005934
	ldr r0, _080330AC @ =0x08089244
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	bl sub_08005A2C
	ldr r0, _080330B0 @ =0x030013C0
	ldr r1, [r0]
	movs r4, #0
	strh r4, [r1, #4]
	movs r0, #2
	strb r0, [r1, #1]
	ldr r0, _080330B4 @ =0x030056F0
	movs r1, #4
	bl m4aMPlayFadeOut
	movs r3, #0xa0
	lsls r3, r3, #2
	str r4, [sp]
	movs r0, #0x78
	str r0, [sp, #4]
	movs r0, #0x50
	str r0, [sp, #8]
	movs r0, #1
	movs r1, #0
	movs r2, #0x40
	bl sub_08008D4C
	b _080332F8
	.align 2, 0
_080330AC: .4byte 0x08089244
_080330B0: .4byte 0x030013C0
_080330B4: .4byte 0x030056F0
_080330B8:
	bl sub_08008E9C
	cmp r0, #0
	bne _080330C2
	b _080332F8
_080330C2:
	ldr r0, _080330D4 @ =0x030013C0
	ldr r1, [r0]
	movs r0, #0
	strh r0, [r1, #4]
	movs r0, #3
	strb r0, [r1, #1]
	bl sub_080351C8
	b _080332F8
	.align 2, 0
_080330D4: .4byte 0x030013C0
_080330D8:
	ldr r1, _0803319C @ =0x080839CC
	ldr r4, _080331A0 @ =0x03004400
	ldrb r0, [r4, #0xe]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _080331A4 @ =0x05000200
	bl sub_08008308
	ldr r5, _080331A8 @ =0x030013C0
	ldr r1, [r5]
	ldr r0, [r1, #0x6c]
	ldr r1, [r1, #0x5c]
	movs r2, #0
	bl sub_08009BBC
	ldr r0, [r5]
	ldr r0, [r0, #0x6c]
	ldr r1, _080331AC @ =0x080839DC
	ldrb r2, [r4, #0xe]
	lsls r2, r2, #2
	adds r1, r2, r1
	ldr r1, [r1]
	ldr r3, _080331B0 @ =0x080839FC
	adds r2, r2, r3
	ldr r2, [r2]
	movs r3, #0
	bl sub_08009ACC
	movs r0, #1
	bl sub_08002B98
	ldr r1, _080331B4 @ =0x081006AC
	ldrb r0, [r4, #0x14]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _080331B8 @ =0x05000180
	bl sub_08008308
	ldr r1, _080331BC @ =0x081006B0
	ldrb r0, [r4, #0x14]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _080331C0 @ =0x06009C00
	bl sub_08008374
	movs r0, #1
	bl sub_08002B98
	ldr r1, _080331C4 @ =0x081006B8
	ldrb r0, [r4, #0x14]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _080331C8 @ =0x0600E800
	movs r2, #0xe0
	movs r3, #0xc
	bl sub_080083CC
	movs r0, #1
	bl sub_08002B98
	ldr r1, _080331CC @ =0x030024E0
	movs r3, #0
	ldr r0, _080331D0 @ =0x00001D09
	strh r0, [r1, #4]
	strh r3, [r1, #0xc]
	movs r0, #0x38
	strh r0, [r1, #0x14]
	ldrh r2, [r1]
	movs r4, #0x80
	lsls r4, r4, #2
	adds r0, r4, #0
	orrs r0, r2
	strh r0, [r1]
	adds r2, r1, #0
	adds r2, #0x4a
	movs r0, #0xc2
	strh r0, [r2]
	adds r1, #0x4e
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, [r5]
	strh r3, [r1, #4]
	movs r0, #4
	strb r0, [r1, #1]
	ldr r1, _080331D4 @ =0x02034BF0
	movs r2, #0xe
	ldrsh r0, [r1, r2]
	ldrh r1, [r1, #0x10]
	subs r1, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_08035160
	b _080332F8
	.align 2, 0
_0803319C: .4byte 0x080839CC
_080331A0: .4byte 0x03004400
_080331A4: .4byte 0x05000200
_080331A8: .4byte 0x030013C0
_080331AC: .4byte 0x080839DC
_080331B0: .4byte 0x080839FC
_080331B4: .4byte 0x081006AC
_080331B8: .4byte 0x05000180
_080331BC: .4byte 0x081006B0
_080331C0: .4byte 0x06009C00
_080331C4: .4byte 0x081006B8
_080331C8: .4byte 0x0600E800
_080331CC: .4byte 0x030024E0
_080331D0: .4byte 0x00001D09
_080331D4: .4byte 0x02034BF0
_080331D8:
	ldr r0, [r4]
	ldrh r0, [r0, #4]
	lsls r3, r0, #2
	adds r3, r3, r0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	movs r5, #0
	str r5, [sp]
	movs r0, #0x78
	str r0, [sp, #4]
	movs r0, #0x50
	str r0, [sp, #8]
	movs r0, #1
	movs r1, #2
	movs r2, #0
	bl sub_08008D4C
	ldr r1, [r4]
	ldrh r0, [r1, #4]
	adds r0, #1
	strh r0, [r1, #4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x20
	bls _080332F8
	strh r5, [r1, #4]
	movs r0, #5
	strb r0, [r1, #1]
	ldr r0, [r4]
	ldr r0, [r0, #0x6c]
	movs r1, #8
	bl sub_08009AFC
	ldr r0, [r4]
	ldr r0, [r0, #0x6c]
	movs r1, #0
	bl sub_08009B40
	ldr r0, _08033234 @ =0x030024E0
	adds r0, #0x46
	movs r1, #0x22
	strb r1, [r0]
	movs r0, #0x73
	bl m4aSongNumStart
	b _080332F8
	.align 2, 0
_08033234: .4byte 0x030024E0
_08033238:
	ldr r2, _08033274 @ =0x030024E0
	ldr r0, [r4]
	ldrh r0, [r0, #4]
	lsls r0, r0, #4
	rsbs r0, r0, #0
	cmp r0, #0
	bge _08033248
	adds r0, #0x1f
_08033248:
	asrs r0, r0, #5
	adds r0, #0x10
	movs r1, #0x1f
	ands r0, r1
	adds r1, r2, #0
	adds r1, #0x4e
	strb r0, [r1]
	ldr r1, [r4]
	ldrh r0, [r1, #4]
	adds r0, #1
	strh r0, [r1, #4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x20
	bls _080332F8
	movs r0, #0x78
	strh r0, [r1, #6]
	movs r0, #0
	strh r0, [r1, #4]
	movs r0, #6
	strb r0, [r1, #1]
	b _080332F8
	.align 2, 0
_08033274: .4byte 0x030024E0
_08033278:
	ldr r1, [r4]
	movs r0, #7
	strb r0, [r1, #1]
	b _080332F8
_08033280:
	ldr r0, [r4]
	ldrh r1, [r0, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #5
	rsbs r0, r0, #0
	cmp r0, #0
	bge _08033292
	adds r0, #0x3f
_08033292:
	asrs r3, r0, #6
	adds r3, #0xa0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	movs r5, #0
	str r5, [sp]
	movs r0, #0x78
	str r0, [sp, #4]
	movs r0, #0x50
	str r0, [sp, #8]
	movs r0, #1
	movs r1, #2
	movs r2, #0
	bl sub_08008D4C
	ldr r2, _080332E4 @ =0x030024E0
	adds r1, r2, #0
	adds r1, #0x46
	movs r0, #0x22
	strb r0, [r1]
	ldr r0, [r4]
	ldrh r0, [r0, #4]
	asrs r0, r0, #2
	movs r1, #0x1f
	ands r0, r1
	adds r1, r2, #0
	adds r1, #0x4e
	strb r0, [r1]
	ldr r1, [r4]
	ldrh r0, [r1, #4]
	adds r0, #1
	strh r0, [r1, #4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x40
	bls _080332F8
	strh r5, [r1, #4]
	movs r0, #8
	strb r0, [r1, #1]
	b _080332F8
	.align 2, 0
_080332E4: .4byte 0x030024E0
_080332E8:
	ldr r0, [r4]
	ldr r2, _08033300 @ =0x000001CD
	adds r1, r0, r2
	movs r0, #0x1f
	strb r0, [r1]
	ldr r1, [r4]
	movs r0, #1
	strb r0, [r1, #2]
_080332F8:
	add sp, #0xc
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08033300: .4byte 0x000001CD

	thumb_func_start sub_08033304
sub_08033304: @ 0x08033304
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r6, _08033320 @ =0x030013C0
	ldr r1, [r6]
	ldrb r5, [r1, #1]
	cmp r5, #1
	beq _080333B8
	cmp r5, #1
	bgt _08033324
	cmp r5, #0
	beq _08033330
	b _08033852
	.align 2, 0
_08033320: .4byte 0x030013C0
_08033324:
	cmp r5, #2
	beq _080333D0
	cmp r5, #3
	bne _0803332E
	b _0803360C
_0803332E:
	b _08033852
_08033330:
	bl sub_0803A5D0
	bl sub_0803A73C
	ldr r1, _08033394 @ =0x081006AC
	ldr r4, _08033398 @ =0x03004400
	ldrb r0, [r4, #0x14]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _0803339C @ =0x05000180
	bl sub_08008308
	ldr r1, _080333A0 @ =0x081006B0
	ldrb r0, [r4, #0x14]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _080333A4 @ =0x06009C00
	bl sub_08008374
	movs r0, #1
	bl sub_08002B98
	ldr r1, _080333A8 @ =0x081006B4
	ldrb r0, [r4, #0x14]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _080333AC @ =0x0600E800
	movs r2, #0xe0
	movs r3, #0xc
	bl sub_080083CC
	movs r0, #1
	bl sub_08002B98
	ldr r0, _080333B0 @ =0x030024E0
	ldr r1, _080333B4 @ =0x00001D09
	strh r1, [r0, #4]
	strh r5, [r0, #0xc]
	strh r5, [r0, #0x14]
	bl sub_0803B79C
	ldr r1, [r6]
	strh r5, [r1, #4]
	movs r0, #1
	strb r0, [r1, #1]
	b _08033852
	.align 2, 0
_08033394: .4byte 0x081006AC
_08033398: .4byte 0x03004400
_0803339C: .4byte 0x05000180
_080333A0: .4byte 0x081006B0
_080333A4: .4byte 0x06009C00
_080333A8: .4byte 0x081006B4
_080333AC: .4byte 0x0600E800
_080333B0: .4byte 0x030024E0
_080333B4: .4byte 0x00001D09
_080333B8:
	adds r0, r1, #0
	adds r0, #0x6a
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	cmp r0, #0
	bge _080333C6
	b _08033852
_080333C6:
	movs r0, #0x3c
	strh r0, [r1, #6]
	movs r0, #2
	strb r0, [r1, #1]
	b _08033852
_080333D0:
	ldr r4, _0803341C @ =0x02034E14
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x32
	bl sub_0800B8A4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x32
	bne _080333E6
	b _080335F6
_080333E6:
	ldr r0, _08033420 @ =0x03004400
	ldrb r1, [r0, #0xe]
	movs r0, #8
	bl sub_08005BE0
	bl sub_08005934
	adds r4, #0x18
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x44
	bl sub_0800B8A4
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08033450
	ldr r0, _08033424 @ =0x02031050
	movs r1, #0x89
	lsls r1, r1, #4
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0803342C
	ldr r0, _08033428 @ =0x08089394
	b _08033492
	.align 2, 0
_0803341C: .4byte 0x02034E14
_08033420: .4byte 0x03004400
_08033424: .4byte 0x02031050
_08033428: .4byte 0x08089394
_0803342C:
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x44
	bl sub_0800B8A4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bhi _08033448
	ldr r4, _08033444 @ =0x08087A64
	b _08033484
	.align 2, 0
_08033444: .4byte 0x08087A64
_08033448:
	ldr r4, _0803344C @ =0x08087A78
	b _08033484
	.align 2, 0
_0803344C: .4byte 0x08087A78
_08033450:
	ldr r0, _08033468 @ =0x02031050
	movs r2, #0x89
	lsls r2, r2, #4
	adds r0, r0, r2
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08033470
	ldr r0, _0803346C @ =0x08089384
	b _08033492
	.align 2, 0
_08033468: .4byte 0x02031050
_0803346C: .4byte 0x08089384
_08033470:
	adds r0, r4, #0
	movs r1, #0x44
	movs r2, #0x7c
	bl sub_0800B8A4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bhi _080334A0
	ldr r4, _0803349C @ =0x08087A50
_08033484:
	movs r0, #5
	bl sub_0800B828
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	adds r0, r0, r4
	ldr r0, [r0]
_08033492:
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	b _080334B8
	.align 2, 0
_0803349C: .4byte 0x08087A50
_080334A0:
	ldr r4, _080334D0 @ =0x08087A8C
	movs r0, #5
	bl sub_0800B828
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	adds r0, r0, r4
	ldr r0, [r0]
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
_080334B8:
	ldr r0, _080334D4 @ =0x02031050
	movs r7, #0x89
	lsls r7, r7, #4
	adds r0, r0, r7
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080334DC
	ldr r0, _080334D8 @ =0x080893A4
	b _080335DA
	.align 2, 0
_080334D0: .4byte 0x08087A8C
_080334D4: .4byte 0x02031050
_080334D8: .4byte 0x080893A4
_080334DC:
	ldr r0, _08033508 @ =0x02034E14
	movs r1, #0
	movs r2, #0x32
	bl sub_0800B8A4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x32
	subs r4, r1, r0
	movs r0, #2
	adds r1, r4, #0
	bl sub_08005BE0
	cmp r4, #0x25
	bls _080334FC
	b _080335E8
_080334FC:
	lsls r0, r4, #2
	ldr r1, _0803350C @ =_08033510
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08033508: .4byte 0x02034E14
_0803350C: .4byte _08033510
_08033510: @ jump table
	.4byte _080335A8 @ case 0
	.4byte _080335B0 @ case 1
	.4byte _080335B8 @ case 2
	.4byte _080335B8 @ case 3
	.4byte _080335B8 @ case 4
	.4byte _080335C0 @ case 5
	.4byte _080335C0 @ case 6
	.4byte _080335C0 @ case 7
	.4byte _080335C0 @ case 8
	.4byte _080335C0 @ case 9
	.4byte _080335C0 @ case 10
	.4byte _080335C8 @ case 11
	.4byte _080335C8 @ case 12
	.4byte _080335C8 @ case 13
	.4byte _080335C8 @ case 14
	.4byte _080335C8 @ case 15
	.4byte _080335C8 @ case 16
	.4byte _080335C8 @ case 17
	.4byte _080335C8 @ case 18
	.4byte _080335C8 @ case 19
	.4byte _080335D0 @ case 20
	.4byte _080335D0 @ case 21
	.4byte _080335D0 @ case 22
	.4byte _080335D0 @ case 23
	.4byte _080335D0 @ case 24
	.4byte _080335D0 @ case 25
	.4byte _080335D8 @ case 26
	.4byte _080335D8 @ case 27
	.4byte _080335D8 @ case 28
	.4byte _080335D8 @ case 29
	.4byte _080335D8 @ case 30
	.4byte _080335D8 @ case 31
	.4byte _080335D8 @ case 32
	.4byte _080335D8 @ case 33
	.4byte _080335D8 @ case 34
	.4byte _080335D8 @ case 35
	.4byte _080335D8 @ case 36
	.4byte _080335D8 @ case 37
_080335A8:
	ldr r0, _080335AC @ =0x08089238
	b _080335DA
	.align 2, 0
_080335AC: .4byte 0x08089238
_080335B0:
	ldr r0, _080335B4 @ =0x08089230
	b _080335DA
	.align 2, 0
_080335B4: .4byte 0x08089230
_080335B8:
	ldr r0, _080335BC @ =0x08089224
	b _080335DA
	.align 2, 0
_080335BC: .4byte 0x08089224
_080335C0:
	ldr r0, _080335C4 @ =0x08089218
	b _080335DA
	.align 2, 0
_080335C4: .4byte 0x08089218
_080335C8:
	ldr r0, _080335CC @ =0x0808920C
	b _080335DA
	.align 2, 0
_080335CC: .4byte 0x0808920C
_080335D0:
	ldr r0, _080335D4 @ =0x08089200
	b _080335DA
	.align 2, 0
_080335D4: .4byte 0x08089200
_080335D8:
	ldr r0, _080335E4 @ =0x080891F4
_080335DA:
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	b _080335F2
	.align 2, 0
_080335E4: .4byte 0x080891F4
_080335E8:
	ldr r0, _08033604 @ =0x080891E8
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
_080335F2:
	bl sub_08005A2C
_080335F6:
	ldr r0, _08033608 @ =0x030013C0
	ldr r1, [r0]
	movs r0, #0
	strh r0, [r1, #4]
	movs r0, #3
	strb r0, [r1, #1]
	b _08033852
	.align 2, 0
_08033604: .4byte 0x080891E8
_08033608: .4byte 0x030013C0
_0803360C:
	ldr r4, _0803373C @ =0x02034BF0
	ldrb r1, [r4, #5]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #5]
	ldr r5, _08033740 @ =0x030024E0
	ldrh r1, [r5]
	ldr r0, _08033744 @ =0x0000FDFF
	ands r0, r1
	strh r0, [r5]
	ldr r1, _08033748 @ =0x02031050
	movs r0, #0x89
	lsls r0, r0, #4
	adds r1, r1, r0
	ldr r0, [r1]
	movs r2, #1
	orrs r0, r2
	str r0, [r1]
	ldr r0, _0803374C @ =0x030056F0
	movs r1, #4
	bl m4aMPlayFadeOut
	bl sub_0803A5EC
	bl sub_0803A6DC
	movs r0, #1
	bl sub_08002B98
	ldr r0, _08033750 @ =0x080AB888
	ldr r1, _08033754 @ =0x06009C00
	bl sub_08008374
	movs r0, #1
	bl sub_08002B98
	ldr r3, _08033758 @ =0x08087460
	ldr r1, _0803375C @ =0x0000022F
	adds r2, r4, r1
	ldrb r1, [r4, #7]
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x1f
	lsls r0, r1, #1
	orrs r0, r1
	ldrb r2, [r2]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	ldr r1, _08033760 @ =0x05000180
	bl sub_08008308
	ldr r0, _08033764 @ =0x080ABA94
	ldr r1, _08033768 @ =0x0600E800
	movs r2, #0xe0
	movs r3, #0xc
	bl sub_080083CC
	movs r0, #1
	bl sub_08002B98
	ldr r0, _0803376C @ =0x00001D09
	strh r0, [r5, #4]
	movs r4, #0
	ldr r2, _08033770 @ =0x0600E812
	mov r8, r2
	movs r7, #0x80
	lsls r7, r7, #1
	mov ip, r7
	ldr r0, _08033774 @ =0xFFFFC000
	adds r6, r0, #0
	movs r1, #0xe0
	lsls r1, r1, #1
	mov sb, r1
	movs r5, #2
_080336A4:
	mov r2, sb
	add r2, r8
	movs r3, #0xb
_080336AA:
	mov r7, ip
	adds r0, r4, r7
	orrs r0, r6
	strh r0, [r2]
	adds r4, #1
	adds r1, r2, #0
	adds r1, #0x40
	adds r0, r4, r7
	orrs r0, r6
	strh r0, [r1]
	adds r4, #1
	adds r2, #2
	subs r3, #1
	cmp r3, #0
	bge _080336AA
	movs r0, #0x80
	add sb, r0
	subs r5, #1
	cmp r5, #0
	bge _080336A4
	movs r0, #1
	bl sub_08002B98
	ldr r0, _08033778 @ =0x080B4BD4
	ldr r1, _0803377C @ =0x050001C0
	bl sub_08008308
	ldr r0, _08033780 @ =0x080B4CD4
	ldr r1, _08033784 @ =0x0600A900
	bl sub_08008374
	movs r0, #1
	bl sub_08002B98
	ldr r2, _08033788 @ =0x0600B080
	movs r3, #8
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r6, r1, #0
	ldr r7, _0803378C @ =0xFFFFE000
	adds r4, r7, #0
	movs r5, #0x14
_080336FE:
	adds r0, r3, r6
	orrs r0, r4
	strh r0, [r2]
	adds r3, #1
	adds r1, r2, #0
	adds r1, #0x40
	adds r0, r3, r6
	orrs r0, r4
	strh r0, [r1]
	adds r3, #1
	adds r2, #2
	subs r5, #1
	cmp r5, #0
	bge _080336FE
	movs r0, #1
	bl sub_08002B98
	movs r0, #0x3a
	bl sub_08002B98
	movs r0, #0xf
	bl m4aSongNumStart
	ldr r5, _0803373C @ =0x02034BF0
	ldrb r0, [r5, #0xd]
	cmp r0, #0
	bne _08033790
	movs r0, #0x10
	bl sub_08030334
	b _08033852
	.align 2, 0
_0803373C: .4byte 0x02034BF0
_08033740: .4byte 0x030024E0
_08033744: .4byte 0x0000FDFF
_08033748: .4byte 0x02031050
_0803374C: .4byte 0x030056F0
_08033750: .4byte 0x080AB888
_08033754: .4byte 0x06009C00
_08033758: .4byte 0x08087460
_0803375C: .4byte 0x0000022F
_08033760: .4byte 0x05000180
_08033764: .4byte 0x080ABA94
_08033768: .4byte 0x0600E800
_0803376C: .4byte 0x00001D09
_08033770: .4byte 0x0600E812
_08033774: .4byte 0xFFFFC000
_08033778: .4byte 0x080B4BD4
_0803377C: .4byte 0x050001C0
_08033780: .4byte 0x080B4CD4
_08033784: .4byte 0x0600A900
_08033788: .4byte 0x0600B080
_0803378C: .4byte 0xFFFFE000
_08033790:
	ldrb r1, [r5, #4]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r5, #4]
	ldrb r4, [r5]
	lsrs r0, r4, #4
	adds r0, #1
	movs r1, #3
	bl __modsi3
	lsls r0, r0, #4
	movs r1, #0xf
	ands r1, r4
	orrs r1, r0
	strb r1, [r5]
	movs r0, #0x8e
	lsls r0, r0, #2
	adds r6, r5, r0
	movs r0, #0
	strh r0, [r6]
	movs r1, #0x89
	lsls r1, r1, #2
	adds r4, r5, r1
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x32
	bl sub_0800B8A4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x30
	bls _080337DE
	ldrh r0, [r6]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r6]
_080337DE:
	adds r6, r4, #0
	ldr r4, _08033860 @ =0x08087BB0
	movs r5, #7
_080337E4:
	adds r0, r6, #0
	movs r1, #0
	movs r2, #0x32
	bl sub_0800B8A4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r7, [r4]
	cmp r0, r7
	blo _08033804
	movs r0, #1
	ldrh r1, [r4, #2]
	lsls r0, r1
	ldrh r1, [r6, #0x14]
	orrs r0, r1
	strh r0, [r6, #0x14]
_08033804:
	adds r4, #4
	subs r5, #1
	cmp r5, #0
	bge _080337E4
	ldr r4, _08033864 @ =0x02034BF0
	movs r2, #0x8e
	lsls r2, r2, #2
	adds r0, r4, r2
	ldrh r1, [r0]
	movs r7, #0x8d
	lsls r7, r7, #2
	adds r0, r4, r7
	movs r6, #0
	strb r1, [r0]
	ldr r0, _08033868 @ =0x00000237
	adds r5, r4, r0
	strb r6, [r5]
	movs r1, #0x89
	lsls r1, r1, #2
	adds r0, r4, r1
	movs r1, #0
	movs r2, #0x32
	bl sub_0800B8A4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x30
	bls _08033840
	movs r0, #1
	strb r0, [r5]
_08033840:
	movs r2, #0x88
	lsls r2, r2, #2
	adds r0, r4, r2
	strb r6, [r0]
	bl sub_080069F8
	movs r0, #2
	bl sub_08030334
_08033852:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08033860: .4byte 0x08087BB0
_08033864: .4byte 0x02034BF0
_08033868: .4byte 0x00000237

	thumb_func_start sub_0803386C
sub_0803386C: @ 0x0803386C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	movs r6, #0
	movs r4, #0
	ldr r0, _080338E8 @ =0x02034DE8
	mov r8, r0
	ldr r7, _080338EC @ =0x08087218
_08033882:
	ldrh r5, [r7]
	mov r0, r8
	adds r1, r5, #0
	bl sub_0800B87C
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080338B0
	mov r0, r8
	subs r0, #0x10
	adds r1, r5, #0
	bl sub_0800B87C
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080338B0
	ldr r0, _080338F0 @ =0x030013C0
	ldr r0, [r0]
	ldr r1, _080338F4 @ =0x00000685
	adds r0, r0, r1
	adds r0, r0, r6
	strb r4, [r0]
	adds r6, #1
_080338B0:
	adds r7, #0xc
	adds r4, #1
	cmp r4, #0x1d
	ble _08033882
	cmp r6, #0
	beq _080338FC
	lsls r0, r6, #0x10
	lsrs r0, r0, #0x10
	bl sub_0800B828
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r1, _080338F8 @ =0x02034BF0
	ldr r0, _080338F0 @ =0x030013C0
	ldr r0, [r0]
	ldr r2, _080338F4 @ =0x00000685
	adds r0, r0, r2
	adds r0, r0, r5
	ldrb r2, [r0]
	movs r3, #0x8b
	lsls r3, r3, #2
	adds r1, r1, r3
	strb r2, [r1]
	ldrb r5, [r0]
	movs r7, #1
	mov sl, r7
	b _08033904
	.align 2, 0
_080338E8: .4byte 0x02034DE8
_080338EC: .4byte 0x08087218
_080338F0: .4byte 0x030013C0
_080338F4: .4byte 0x00000685
_080338F8: .4byte 0x02034BF0
_080338FC:
	movs r5, #1
	rsbs r5, r5, #0
	movs r0, #0
	mov sl, r0
_08033904:
	movs r6, #0
	movs r4, #0
	mov r1, sl
	rsbs r1, r1, #0
	mov r8, r1
	ldr r1, _080339E0 @ =0x02034E20
	adds r2, r1, #1
	mov sb, r2
	adds r3, r1, #2
	mov ip, r3
	ldr r3, _080339E4 @ =0x030013C0
	ldr r2, _080339E8 @ =0x00000685
_0803391C:
	cmp r4, r5
	beq _08033946
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r4, r0
	beq _08033946
	mov r7, sb
	movs r0, #0
	ldrsb r0, [r7, r0]
	cmp r4, r0
	beq _08033946
	mov r7, ip
	movs r0, #0
	ldrsb r0, [r7, r0]
	cmp r4, r0
	beq _08033946
	ldr r0, [r3]
	adds r0, r0, r2
	adds r0, r0, r6
	strb r4, [r0]
	adds r6, #1
_08033946:
	adds r4, #1
	cmp r4, #0x1d
	ble _0803391C
	movs r4, #0
	cmp r4, r6
	bge _08033986
	ldr r2, _080339E4 @ =0x030013C0
	ldr r7, _080339E8 @ =0x00000685
	lsls r0, r6, #0x10
	mov sb, r0
_0803395A:
	mov r1, sb
	lsrs r0, r1, #0x10
	str r2, [sp]
	bl sub_0800B828
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r2, [sp]
	ldr r0, [r2]
	adds r0, r0, r7
	adds r1, r0, r4
	ldrb r5, [r1]
	adds r0, r0, r3
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, [r2]
	adds r0, r0, r7
	adds r0, r0, r3
	strb r5, [r0]
	adds r4, #1
	cmp r4, r6
	blt _0803395A
_08033986:
	movs r3, #0
	mov r2, r8
	mov r7, sl
	orrs r2, r7
	lsrs r4, r2, #0x1f
	cmp r4, #2
	bgt _080339AE
	ldr r6, _080339EC @ =0x02034E1C
	ldr r5, _080339E4 @ =0x030013C0
	ldr r2, _080339E8 @ =0x00000685
_0803399A:
	adds r0, r4, r6
	ldr r1, [r5]
	adds r1, r1, r2
	adds r1, r1, r3
	ldrb r1, [r1]
	strb r1, [r0]
	adds r3, #1
	adds r4, #1
	cmp r4, #2
	ble _0803399A
_080339AE:
	movs r4, #0
	ldr r6, _080339EC @ =0x02034E1C
_080339B2:
	movs r0, #3
	bl sub_0800B828
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r2, r4, r6
	ldrb r5, [r2]
	adds r1, r3, r6
	ldrb r0, [r1]
	strb r0, [r2]
	strb r5, [r1]
	adds r4, #1
	cmp r4, #2
	ble _080339B2
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080339E0: .4byte 0x02034E20
_080339E4: .4byte 0x030013C0
_080339E8: .4byte 0x00000685
_080339EC: .4byte 0x02034E1C

	thumb_func_start sub_080339F0
sub_080339F0: @ 0x080339F0
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r7, r1, #0
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	ldr r4, _08033A68 @ =0x02034BF0
	movs r1, #0x8b
	lsls r1, r1, #2
	adds r0, r4, r1
	adds r0, r6, r0
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08033A6C @ =0x08087218
	adds r5, r0, r1
	ldr r1, _08033A70 @ =0x08087CF8
	lsls r0, r6, #2
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #4]
	ldr r2, _08033A74 @ =0x010000C0
	add r0, sp, #4
	adds r1, r7, #0
	bl CpuFastSet
	movs r1, #0xf4
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrh r1, [r5]
	bl sub_0800B87C
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08033A4A
	movs r1, #0xfc
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrh r1, [r5]
	bl sub_0800B87C
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0
	beq _08033A7C
_08033A4A:
	ldr r0, [r5, #4]
	bl sub_08006828
	adds r1, r0, #0
	ldr r2, _08033A78 @ =0x08087CF0
	lsls r0, r6, #1
	adds r0, r0, r2
	ldrb r3, [r0]
	movs r0, #0
	str r0, [sp]
	adds r0, r7, #0
	movs r2, #1
	bl sub_08004D94
	b _08033A90
	.align 2, 0
_08033A68: .4byte 0x02034BF0
_08033A6C: .4byte 0x08087218
_08033A70: .4byte 0x08087CF8
_08033A74: .4byte 0x010000C0
_08033A78: .4byte 0x08087CF0
_08033A7C:
	ldr r1, _08033A98 @ =0x08087D04
	ldr r2, _08033A9C @ =0x08087CF0
	lsls r0, r6, #1
	adds r0, r0, r2
	ldrb r3, [r0]
	str r4, [sp]
	adds r0, r7, #0
	movs r2, #1
	bl sub_08004A24
_08033A90:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08033A98: .4byte 0x08087D04
_08033A9C: .4byte 0x08087CF0

	thumb_func_start sub_08033AA0
sub_08033AA0: @ 0x08033AA0
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #8
	ldr r2, _08033AB8 @ =0x0600A000
	adds r1, r1, r2
	bl sub_080339F0
	pop {r0}
	bx r0
	.align 2, 0
_08033AB8: .4byte 0x0600A000

	thumb_func_start sub_08033ABC
sub_08033ABC: @ 0x08033ABC
	push {r4, r5, r6, lr}
	ldr r1, _08033AD8 @ =0x030013C0
	ldr r0, [r1]
	ldrb r0, [r0, #1]
	adds r5, r1, #0
	cmp r0, #4
	bls _08033ACC
	b _08033C7E
_08033ACC:
	lsls r0, r0, #2
	ldr r1, _08033ADC @ =_08033AE0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08033AD8: .4byte 0x030013C0
_08033ADC: .4byte _08033AE0
_08033AE0: @ jump table
	.4byte _08033AF4 @ case 0
	.4byte _08033BAC @ case 1
	.4byte _08033BD8 @ case 2
	.4byte _08033BF0 @ case 3
	.4byte _08033C3C @ case 4
_08033AF4:
	ldr r5, _08033B2C @ =0x02034BF0
	ldrb r1, [r5, #7]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r5, #7]
	bl sub_08005934
	ldr r0, _08033B30 @ =0x02031050
	movs r1, #0x89
	lsls r1, r1, #4
	adds r4, r0, r1
	ldr r0, [r4]
	movs r6, #0x80
	lsls r6, r6, #4
	ands r0, r6
	cmp r0, #0
	bne _08033B38
	ldr r0, _08033B34 @ =0x08089250
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	ldr r0, [r4]
	orrs r0, r6
	str r0, [r4]
	b _08033B62
	.align 2, 0
_08033B2C: .4byte 0x02034BF0
_08033B30: .4byte 0x02031050
_08033B34: .4byte 0x08089250
_08033B38:
	movs r0, #8
	bl sub_0800B828
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08033B4C
	ldrb r0, [r5, #7]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r5, #7]
_08033B4C:
	ldr r0, _08033B94 @ =0x08087A38
	ldrb r1, [r5, #7]
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x1f
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
_08033B62:
	bl sub_08005A2C
	ldr r3, _08033B98 @ =0x08087460
	ldr r0, _08033B9C @ =0x02034BF0
	ldr r1, _08033BA0 @ =0x0000022F
	adds r2, r0, r1
	ldrb r1, [r0, #7]
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x1f
	lsls r0, r1, #1
	orrs r0, r1
	ldrb r2, [r2]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	ldr r1, _08033BA4 @ =0x05000180
	bl sub_08008348
	ldr r0, _08033BA8 @ =0x030013C0
	ldr r1, [r0]
	movs r0, #1
	strb r0, [r1, #1]
	b _08033C7E
	.align 2, 0
_08033B94: .4byte 0x08087A38
_08033B98: .4byte 0x08087460
_08033B9C: .4byte 0x02034BF0
_08033BA0: .4byte 0x0000022F
_08033BA4: .4byte 0x05000180
_08033BA8: .4byte 0x030013C0
_08033BAC:
	bl sub_0803386C
	movs r4, #0
_08033BB2:
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	bl sub_08033AA0
	movs r0, #1
	bl sub_08002B98
	adds r4, #1
	cmp r4, #2
	ble _08033BB2
	bl sub_0803AD68
	ldr r0, _08033BD4 @ =0x030013C0
	ldr r1, [r0]
	movs r0, #2
	strb r0, [r1, #1]
	b _08033C7E
	.align 2, 0
_08033BD4: .4byte 0x030013C0
_08033BD8:
	ldr r0, [r5]
	adds r0, #0x6a
	ldrb r0, [r0]
	lsls r0, r0, #0x1d
	cmp r0, #0
	blt _08033C7E
	bl sub_0803AD88
	ldr r1, [r5]
	movs r0, #3
	strb r0, [r1, #1]
	b _08033C7E
_08033BF0:
	ldr r0, [r5]
	adds r0, #0x6a
	ldrb r0, [r0]
	lsls r0, r0, #0x1d
	cmp r0, #0
	blt _08033C7E
	bl sub_08005934
	ldr r2, _08033C30 @ =0x08087218
	ldr r0, _08033C34 @ =0x02034BF0
	ldr r3, _08033C38 @ =0x0000022F
	adds r1, r0, r3
	subs r3, #3
	adds r0, r0, r3
	ldrb r1, [r1]
	adds r0, r0, r1
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r2, #8
	adds r0, r0, r2
	ldr r0, [r0]
	bl sub_080062D0
	bl sub_08005A2C
	ldr r1, [r5]
	movs r0, #4
	strb r0, [r1, #1]
	b _08033C7E
	.align 2, 0
_08033C30: .4byte 0x08087218
_08033C34: .4byte 0x02034BF0
_08033C38: .4byte 0x0000022F
_08033C3C:
	ldr r4, _08033C84 @ =0x02034BF0
	movs r0, #0x13
	strb r0, [r4, #0xb]
	ldr r0, [r5]
	ldr r2, _08033C88 @ =0x000001CD
	adds r1, r0, r2
	movs r0, #0x11
	strb r0, [r1]
	ldr r5, _08033C8C @ =0x03004400
	ldrb r0, [r5, #8]
	bl sub_08001930
	ldr r2, _08033C90 @ =0x08087218
	ldr r3, _08033C94 @ =0x0000022F
	adds r0, r4, r3
	movs r1, #0x8b
	lsls r1, r1, #2
	adds r4, r4, r1
	ldrb r0, [r0]
	adds r4, r4, r0
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r0, [r0]
	ldrb r1, [r5, #0xe]
	movs r2, #0
	bl sub_08001BA8
	movs r0, #1
	bl sub_08030334
_08033C7E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08033C84: .4byte 0x02034BF0
_08033C88: .4byte 0x000001CD
_08033C8C: .4byte 0x03004400
_08033C90: .4byte 0x08087218
_08033C94: .4byte 0x0000022F

	thumb_func_start sub_08033C98
sub_08033C98: @ 0x08033C98
	push {r4, lr}
	ldr r1, _08033CB4 @ =0x030013C0
	ldr r0, [r1]
	ldrb r0, [r0, #1]
	adds r4, r1, #0
	cmp r0, #5
	bls _08033CA8
	b _08033DA2
_08033CA8:
	lsls r0, r0, #2
	ldr r1, _08033CB8 @ =_08033CBC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08033CB4: .4byte 0x030013C0
_08033CB8: .4byte _08033CBC
_08033CBC: @ jump table
	.4byte _08033CD4 @ case 0
	.4byte _08033CF8 @ case 1
	.4byte _08033D0E @ case 2
	.4byte _08033D38 @ case 3
	.4byte _08033D64 @ case 4
	.4byte _08033D20 @ case 5
_08033CD4:
	bl sub_08001F2C
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08033CEC
	ldr r0, _08033CE8 @ =0x030013C0
	ldr r1, [r0]
	movs r0, #3
	b _08033DA0
	.align 2, 0
_08033CE8: .4byte 0x030013C0
_08033CEC:
	ldr r0, _08033CF4 @ =0x030013C0
	ldr r1, [r0]
	movs r0, #4
	b _08033DA0
	.align 2, 0
_08033CF4: .4byte 0x030013C0
_08033CF8:
	ldr r0, [r4]
	adds r0, #0x6a
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _08033DA2
	bl sub_0803ADA8
	ldr r1, [r4]
	movs r0, #2
	b _08033DA0
_08033D0E:
	ldr r1, [r4]
	adds r0, r1, #0
	adds r0, #0x6a
	ldrb r0, [r0]
	lsls r0, r0, #0x1d
	cmp r0, #0
	blt _08033DA2
	movs r0, #5
	b _08033DA0
_08033D20:
	ldr r0, _08033D34 @ =0x02034BF0
	ldrb r1, [r0, #7]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0, #7]
	movs r0, #2
	bl sub_08030334
	b _08033DA2
	.align 2, 0
_08033D34: .4byte 0x02034BF0
_08033D38:
	bl sub_08005934
	ldr r1, _08033D5C @ =0x08087A48
	ldr r0, _08033D60 @ =0x02034BF0
	ldrb r0, [r0, #7]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1f
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	bl sub_08005A2C
	b _08033D9A
	.align 2, 0
_08033D5C: .4byte 0x08087A48
_08033D60: .4byte 0x02034BF0
_08033D64:
	bl sub_08005934
	ldr r1, _08033DA8 @ =0x08087A40
	ldr r4, _08033DAC @ =0x02034BF0
	ldrb r0, [r4, #7]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1f
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	bl sub_08005A2C
	ldr r1, _08033DB0 @ =0x08087D1E
	ldrb r0, [r4, #7]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1f
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	bl sub_0803A6BC
_08033D9A:
	ldr r0, _08033DB4 @ =0x030013C0
	ldr r1, [r0]
	movs r0, #1
_08033DA0:
	strb r0, [r1, #1]
_08033DA2:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08033DA8: .4byte 0x08087A40
_08033DAC: .4byte 0x02034BF0
_08033DB0: .4byte 0x08087D1E
_08033DB4: .4byte 0x030013C0

	thumb_func_start sub_08033DB8
sub_08033DB8: @ 0x08033DB8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r2, _08033DF0 @ =0x030013C0
	ldr r3, [r2]
	adds r0, r3, #0
	adds r0, #0xbc
	ldr r7, [r0]
	ldr r1, _08033DF4 @ =0x02034BF0
	ldrb r0, [r1, #7]
	lsrs r0, r0, #7
	adds r6, r2, #0
	adds r5, r1, #0
	cmp r0, #0
	beq _08033DDE
	movs r1, #0x92
	lsls r1, r1, #1
	adds r0, r3, r1
	ldr r7, [r0]
_08033DDE:
	ldrb r0, [r3, #1]
	cmp r0, #4
	bls _08033DE6
	b _08034014
_08033DE6:
	lsls r0, r0, #2
	ldr r1, _08033DF8 @ =_08033DFC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08033DF0: .4byte 0x030013C0
_08033DF4: .4byte 0x02034BF0
_08033DF8: .4byte _08033DFC
_08033DFC: @ jump table
	.4byte _08033E10 @ case 0
	.4byte _08033E38 @ case 1
	.4byte _08033E4E @ case 2
	.4byte _08033F80 @ case 3
	.4byte _08033FDC @ case 4
_08033E10:
	movs r2, #0x90
	lsls r2, r2, #1
	adds r4, r5, r2
	ldr r0, [r4]
	cmp r0, #0
	beq _08033E34
	bl sub_08037B54
	movs r0, #0
	str r0, [r4]
	ldr r0, _08033E30 @ =0x030013C0
	ldr r1, [r0]
	movs r0, #1
	strb r0, [r1, #1]
	b _08034014
	.align 2, 0
_08033E30: .4byte 0x030013C0
_08033E34:
	ldr r1, [r6]
	b _08033E48
_08033E38:
	ldr r1, [r6]
	adds r0, r1, #0
	adds r0, #0x68
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	cmp r0, #0
	bge _08033E48
	b _08034014
_08033E48:
	movs r0, #2
	strb r0, [r1, #1]
	b _08034014
_08033E4E:
	movs r0, #2
	bl sub_0800B828
	ldr r4, _08033F5C @ =0x02034BF0
	lsls r0, r0, #0x10
	lsrs r0, r0, #9
	ldrb r1, [r4, #7]
	movs r2, #0x7f
	ands r2, r1
	orrs r2, r0
	strb r2, [r4, #7]
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	bne _08033E70
	movs r0, #0x80
	orrs r2, r0
	strb r2, [r4, #7]
_08033E70:
	ldrb r0, [r4, #7]
	lsrs r0, r0, #7
	cmp r0, #0
	bne _08033E7E
	movs r0, #0x2d
	bl sub_0802D7CC
_08033E7E:
	movs r3, #0
	movs r2, #0
	adds r5, r4, #0
	movs r0, #0x8c
	lsls r0, r0, #2
	adds r7, r5, r0
	ldr r1, _08033F60 @ =0x00000231
	adds r6, r5, r1
	adds r0, #2
	adds r1, r5, r0
	ldr r5, _08033F64 @ =0x030013C0
	ldr r4, _08033F68 @ =0x00000685
_08033E96:
	movs r0, #0
	ldrsb r0, [r7, r0]
	cmp r2, r0
	beq _08033EB8
	movs r0, #0
	ldrsb r0, [r6, r0]
	cmp r2, r0
	beq _08033EB8
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r2, r0
	beq _08033EB8
	ldr r0, [r5]
	adds r0, r0, r4
	adds r0, r0, r3
	strb r2, [r0]
	adds r3, #1
_08033EB8:
	adds r2, #1
	cmp r2, #0x1d
	ble _08033E96
	lsls r0, r3, #0x10
	lsrs r0, r0, #0x10
	bl sub_0800B828
	ldr r7, _08033F5C @ =0x02034BF0
	ldr r6, _08033F64 @ =0x030013C0
	ldr r1, [r6]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r2, _08033F68 @ =0x00000685
	adds r1, r1, r2
	adds r1, r1, r0
	ldrb r2, [r1]
	movs r3, #0x8b
	lsls r3, r3, #2
	adds r5, r7, r3
	strb r2, [r5]
	ldr r0, _08033F6C @ =0x00000233
	adds r4, r7, r0
	movs r0, #0
	ldrsb r0, [r4, r0]
	adds r3, #4
	adds r1, r7, r3
	adds r0, r0, r1
	strb r2, [r0]
	movs r0, #0
	ldrsb r0, [r4, r0]
	adds r0, #1
	movs r1, #3
	mov r8, r1
	bl __modsi3
	strb r0, [r4]
	ldr r4, _08033F70 @ =0x08087218
	ldrb r1, [r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldrh r1, [r0]
	movs r0, #5
	bl sub_08005BE0
	movs r2, #0xfc
	lsls r2, r2, #1
	adds r0, r7, r2
	ldrb r2, [r5]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r4
	ldrh r1, [r1]
	bl sub_0800B844
	ldr r1, _08033F74 @ =0x08087D24
	ldrb r0, [r7, #7]
	lsrs r0, r0, #7
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _08033F78 @ =0x050003A0
	bl sub_08008308
	movs r0, #1
	bl sub_08002B98
	ldr r0, _08033F7C @ =0x08087D2C
	ldrb r1, [r7, #7]
	lsrs r1, r1, #7
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r7, #0x1c]
	ldr r1, [r1]
	bl call_via_r1
	ldr r0, [r6]
	mov r3, r8
	strb r3, [r0, #1]
	b _08034014
	.align 2, 0
_08033F5C: .4byte 0x02034BF0
_08033F60: .4byte 0x00000231
_08033F64: .4byte 0x030013C0
_08033F68: .4byte 0x00000685
_08033F6C: .4byte 0x00000233
_08033F70: .4byte 0x08087218
_08033F74: .4byte 0x08087D24
_08033F78: .4byte 0x050003A0
_08033F7C: .4byte 0x08087D2C
_08033F80:
	ldr r0, [r6]
	adds r0, #0x68
	ldrb r0, [r0]
	lsrs r0, r0, #7
	cmp r0, #0
	bne _08034014
	bl sub_08005934
	ldr r1, _08033FD0 @ =0x08087D34
	ldr r4, _08033FD4 @ =0x02034BF0
	ldrb r0, [r4, #7]
	lsrs r0, r0, #7
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	adds r1, r7, #0
	movs r2, #0
	bl sub_080004D4
	bl sub_080067F0
	ldr r2, _08033FD8 @ =0x08087218
	movs r0, #0x8b
	lsls r0, r0, #2
	adds r4, r4, r0
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r2, #8
	adds r0, r0, r2
	ldr r0, [r0]
	bl sub_080062D0
	bl sub_08005A2C
	ldr r1, [r6]
	movs r0, #4
	strb r0, [r1, #1]
	b _08034014
	.align 2, 0
_08033FD0: .4byte 0x08087D34
_08033FD4: .4byte 0x02034BF0
_08033FD8: .4byte 0x08087218
_08033FDC:
	movs r0, #0x15
	strb r0, [r5, #0xb]
	ldr r0, [r6]
	ldr r2, _08034020 @ =0x000001CD
	adds r1, r0, r2
	movs r0, #0x11
	strb r0, [r1]
	ldr r4, _08034024 @ =0x03004400
	ldrb r0, [r4, #8]
	bl sub_08001930
	ldr r2, _08034028 @ =0x08087218
	movs r3, #0x8b
	lsls r3, r3, #2
	adds r0, r5, r3
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r0, [r0]
	ldrb r1, [r4, #0xe]
	movs r2, #0
	bl sub_08001BA8
	movs r0, #1
	bl sub_08030334
_08034014:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08034020: .4byte 0x000001CD
_08034024: .4byte 0x03004400
_08034028: .4byte 0x08087218

	thumb_func_start sub_0803402C
sub_0803402C: @ 0x0803402C
	push {r4, r5, lr}
	ldr r2, _08034060 @ =0x030013C0
	ldr r3, [r2]
	adds r0, r3, #0
	adds r0, #0xbc
	ldr r5, [r0]
	ldr r1, _08034064 @ =0x02034BF0
	ldrb r0, [r1, #7]
	lsrs r0, r0, #7
	adds r4, r2, #0
	adds r2, r1, #0
	cmp r0, #0
	beq _0803404E
	movs r1, #0x92
	lsls r1, r1, #1
	adds r0, r3, r1
	ldr r5, [r0]
_0803404E:
	ldrb r0, [r3, #1]
	cmp r0, #6
	bls _08034056
	b _080341FE
_08034056:
	lsls r0, r0, #2
	ldr r1, _08034068 @ =_0803406C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08034060: .4byte 0x030013C0
_08034064: .4byte 0x02034BF0
_08034068: .4byte _0803406C
_0803406C: @ jump table
	.4byte _08034088 @ case 0
	.4byte _080340B0 @ case 1
	.4byte _08034118 @ case 2
	.4byte _08034140 @ case 3
	.4byte _0803418C @ case 4
	.4byte _080341C8 @ case 5
	.4byte _080341EC @ case 6
_08034088:
	bl sub_08001F2C
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080340A0
	ldr r0, _0803409C @ =0x030013C0
	ldr r1, [r0]
	movs r0, #1
	strb r0, [r1, #1]
	b _080341FE
	.align 2, 0
_0803409C: .4byte 0x030013C0
_080340A0:
	ldr r0, _080340AC @ =0x030013C0
	ldr r1, [r0]
	movs r0, #3
	strb r0, [r1, #1]
	b _080341FE
	.align 2, 0
_080340AC: .4byte 0x030013C0
_080340B0:
	bl sub_08005934
	ldr r1, _080340F4 @ =0x08087D58
	ldr r4, _080340F8 @ =0x02034BF0
	ldrb r0, [r4, #7]
	lsrs r0, r0, #7
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	adds r1, r5, #0
	movs r2, #0
	bl sub_080004D4
	bl sub_08005A2C
	ldrb r0, [r4, #7]
	lsrs r0, r0, #7
	cmp r0, #0
	bne _0803410C
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	beq _08034100
	movs r0, #1
	rsbs r0, r0, #0
	bl sub_0803A6CC
	bl sub_08036A38
	ldr r0, _080340FC @ =0x030013C0
	ldr r1, [r0]
	movs r0, #2
	strb r0, [r1, #1]
	b _080341FE
	.align 2, 0
_080340F4: .4byte 0x08087D58
_080340F8: .4byte 0x02034BF0
_080340FC: .4byte 0x030013C0
_08034100:
	ldr r0, _08034108 @ =0x030013C0
	ldr r1, [r0]
	b _080341B8
	.align 2, 0
_08034108: .4byte 0x030013C0
_0803410C:
	ldr r0, _08034114 @ =0x030013C0
	ldr r1, [r0]
	b _080341B8
	.align 2, 0
_08034114: .4byte 0x030013C0
_08034118:
	ldr r1, [r4]
	adds r0, r1, #0
	adds r0, #0x6a
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _080341FE
	adds r0, r1, #0
	adds r0, #0x68
	ldrb r0, [r0]
	lsls r0, r0, #0x1d
	cmp r0, #0
	blt _080341FE
	bl sub_08005934
	ldr r0, _0803413C @ =0x08089360
	b _080341AA
	.align 2, 0
_0803413C: .4byte 0x08089360
_08034140:
	bl sub_08005934
	ldr r1, _0803417C @ =0x08087D48
	ldr r4, _08034180 @ =0x02034BF0
	ldrb r0, [r4, #7]
	lsrs r0, r0, #7
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	adds r1, r5, #0
	movs r2, #0
	bl sub_080004D4
	bl sub_08005A2C
	ldr r1, _08034184 @ =0x08087D44
	ldrb r0, [r4, #7]
	lsrs r0, r0, #7
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	bl sub_0803A6BC
	ldr r0, _08034188 @ =0x030013C0
	ldr r1, [r0]
	movs r0, #4
	strb r0, [r1, #1]
	b _080341FE
	.align 2, 0
_0803417C: .4byte 0x08087D48
_08034180: .4byte 0x02034BF0
_08034184: .4byte 0x08087D44
_08034188: .4byte 0x030013C0
_0803418C:
	ldr r0, [r4]
	adds r0, #0x6a
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _080341FE
	bl sub_08005934
	ldr r1, _080341C0 @ =0x08087D50
	ldr r0, _080341C4 @ =0x02034BF0
	ldrb r0, [r0, #7]
	lsrs r0, r0, #7
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
_080341AA:
	adds r1, r5, #0
	movs r2, #0
	bl sub_080004D4
	bl sub_08005A2C
	ldr r1, [r4]
_080341B8:
	movs r0, #5
	strb r0, [r1, #1]
	b _080341FE
	.align 2, 0
_080341C0: .4byte 0x08087D50
_080341C4: .4byte 0x02034BF0
_080341C8:
	ldr r1, _080341E4 @ =0x08087D3C
	ldrb r0, [r2, #7]
	lsrs r0, r0, #7
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl call_via_r0
	ldr r0, _080341E8 @ =0x030013C0
	ldr r1, [r0]
	movs r0, #6
	strb r0, [r1, #1]
	b _080341FE
	.align 2, 0
_080341E4: .4byte 0x08087D3C
_080341E8: .4byte 0x030013C0
_080341EC:
	ldr r0, [r4]
	adds r0, #0x68
	ldrb r0, [r0]
	lsrs r0, r0, #7
	cmp r0, #0
	bne _080341FE
	movs r0, #9
	bl sub_08030334
_080341FE:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08034204
sub_08034204: @ 0x08034204
	push {r4, lr}
	ldr r4, _0803421C @ =0x030013C0
	ldr r2, [r4]
	ldrb r0, [r2, #1]
	cmp r0, #1
	beq _0803423E
	cmp r0, #1
	bgt _08034220
	cmp r0, #0
	beq _0803422A
	b _08034274
	.align 2, 0
_0803421C: .4byte 0x030013C0
_08034220:
	cmp r0, #2
	beq _0803424A
	cmp r0, #3
	beq _08034260
	b _08034274
_0803422A:
	bl sub_0803A5D0
	bl sub_0803A73C
	ldr r0, [r4]
	movs r1, #0x1e
	strh r1, [r0, #6]
	movs r1, #1
	strb r1, [r0, #1]
	b _08034274
_0803423E:
	bl sub_08035388
	ldr r1, [r4]
	movs r0, #2
	strb r0, [r1, #1]
	b _08034274
_0803424A:
	adds r0, r2, #0
	adds r0, #0x68
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _08034274
	movs r0, #0x1e
	strh r0, [r2, #6]
	movs r0, #3
	strb r0, [r2, #1]
	b _08034274
_08034260:
	ldr r0, _0803427C @ =0x02034BF0
	movs r1, #0x17
	strb r1, [r0, #0xb]
	ldr r0, _08034280 @ =0x000001CD
	adds r1, r2, r0
	movs r0, #0x26
	strb r0, [r1]
	movs r0, #1
	bl sub_08030334
_08034274:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803427C: .4byte 0x02034BF0
_08034280: .4byte 0x000001CD

	thumb_func_start sub_08034284
sub_08034284: @ 0x08034284
	push {lr}
	ldr r0, _0803429C @ =0x030013C0
	ldr r0, [r0]
	ldrb r0, [r0, #1]
	cmp r0, #0
	bne _08034296
	movs r0, #0x11
	bl sub_08030334
_08034296:
	pop {r0}
	bx r0
	.align 2, 0
_0803429C: .4byte 0x030013C0

	thumb_func_start sub_080342A0
sub_080342A0: @ 0x080342A0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r2, _08034368 @ =0x02034BF0
	movs r0, #0
	mov ip, r0
	mov r1, ip
	strb r1, [r2, #0xa]
	ldr r3, [r2, #0x18]
	ldrh r1, [r3, #2]
	movs r6, #7
	adds r0, r6, #0
	ands r0, r1
	adds r7, r2, #0
	cmp r0, #3
	bne _080342C6
	movs r0, #1
	strb r0, [r2, #0xa]
	str r3, [r2, #0x60]
_080342C6:
	ldrb r0, [r2, #1]
	lsls r0, r0, #0x1c
	lsrs r5, r0, #0x1c
	cmp r5, #0
	bne _080342D2
	b _080345A8
_080342D2:
	ldr r4, [r2, #0x18]
	ldr r3, [r4, #4]
	cmp r3, #0
	beq _08034384
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r2, r1
	ldr r0, [r0]
	cmp r3, r0
	beq _08034384
	ldrh r1, [r3, #2]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #3
	bne _08034374
	ldr r1, _0803436C @ =0x030013C0
	ldr r0, [r1]
	ldr r3, _08034370 @ =0x000001CF
	adds r0, r0, r3
	mov r4, ip
	strb r4, [r0]
	ldr r0, [r1]
	adds r0, r0, r3
	ldrb r0, [r0]
	adds r6, r1, #0
	ldrb r5, [r2, #0xa]
	cmp r0, r5
	bhs _0803433C
	mov ip, r2
	adds r4, r3, #0
	mov r8, r6
_08034310:
	mov r1, r8
	ldr r0, [r1]
	adds r2, r0, r4
	ldrb r3, [r2]
	lsls r1, r3, #2
	mov r0, ip
	adds r0, #0x60
	adds r1, r1, r0
	mov r5, ip
	ldr r0, [r5, #0x18]
	ldr r1, [r1]
	ldr r0, [r0, #4]
	cmp r1, r0
	beq _08034352
	adds r0, r3, #1
	strb r0, [r2]
	ldr r0, [r6]
	adds r0, r0, r4
	ldrb r0, [r0]
	ldrb r1, [r7, #0xa]
	cmp r0, r1
	blo _08034310
_0803433C:
	ldrb r0, [r7, #0xa]
	adds r1, r0, #1
	strb r1, [r7, #0xa]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r1, r7, #0
	adds r1, #0x60
	adds r0, r0, r1
	ldr r1, [r7, #0x18]
	ldr r1, [r1, #4]
	str r1, [r0]
_08034352:
	ldr r1, _08034368 @ =0x02034BF0
	ldr r2, [r1, #0x18]
	ldr r0, [r2, #4]
	ldrb r1, [r1, #1]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1c
	adds r1, #1
	bl sub_080345BC
	b _0803437E
	.align 2, 0
_08034368: .4byte 0x02034BF0
_0803436C: .4byte 0x030013C0
_08034370: .4byte 0x000001CF
_08034374:
	adds r0, r3, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_080345BC
_0803437E:
	movs r0, #1
	bl sub_08002B98
_08034384:
	ldr r0, _0803441C @ =0x02034BF0
	ldr r2, [r0, #0x18]
	ldr r3, [r2, #8]
	adds r7, r0, #0
	cmp r3, #0
	beq _0803443A
	movs r4, #0x90
	lsls r4, r4, #1
	adds r0, r7, r4
	ldr r0, [r0]
	cmp r3, r0
	beq _0803443A
	ldrh r1, [r3, #2]
	movs r0, #7
	ands r0, r1
	cmp r0, #3
	bne _08034428
	ldr r2, _08034420 @ =0x030013C0
	ldr r0, [r2]
	ldr r3, _08034424 @ =0x000001CF
	adds r0, r0, r3
	movs r1, #0
	strb r1, [r0]
	ldr r0, [r2]
	adds r0, r0, r3
	ldrb r0, [r0]
	adds r6, r2, #0
	ldrb r5, [r7, #0xa]
	cmp r0, r5
	bhs _080343F2
	mov ip, r7
	adds r4, r3, #0
	mov r8, r6
_080343C6:
	mov r1, r8
	ldr r0, [r1]
	adds r2, r0, r4
	ldrb r3, [r2]
	lsls r1, r3, #2
	mov r0, ip
	adds r0, #0x60
	adds r1, r1, r0
	mov r5, ip
	ldr r0, [r5, #0x18]
	ldr r1, [r1]
	ldr r0, [r0, #8]
	cmp r1, r0
	beq _08034408
	adds r0, r3, #1
	strb r0, [r2]
	ldr r0, [r6]
	adds r0, r0, r4
	ldrb r0, [r0]
	ldrb r1, [r7, #0xa]
	cmp r0, r1
	blo _080343C6
_080343F2:
	ldrb r0, [r7, #0xa]
	adds r1, r0, #1
	strb r1, [r7, #0xa]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r1, r7, #0
	adds r1, #0x60
	adds r0, r0, r1
	ldr r1, [r7, #0x18]
	ldr r1, [r1, #8]
	str r1, [r0]
_08034408:
	ldr r1, _0803441C @ =0x02034BF0
	ldr r2, [r1, #0x18]
	ldr r0, [r2, #8]
	ldrb r1, [r1, #1]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1c
	adds r1, #1
	bl sub_080345BC
	b _08034434
	.align 2, 0
_0803441C: .4byte 0x02034BF0
_08034420: .4byte 0x030013C0
_08034424: .4byte 0x000001CF
_08034428:
	ldrb r1, [r7, #1]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1c
	adds r0, r3, #0
	bl sub_080345BC
_08034434:
	movs r0, #1
	bl sub_08002B98
_0803443A:
	ldr r0, _080344D4 @ =0x02034BF0
	ldr r2, [r0, #0x18]
	ldr r3, [r2, #0xc]
	adds r7, r0, #0
	cmp r3, #0
	beq _080344F2
	movs r4, #0x90
	lsls r4, r4, #1
	adds r0, r7, r4
	ldr r0, [r0]
	cmp r3, r0
	beq _080344F2
	ldrh r1, [r3, #2]
	movs r0, #7
	ands r0, r1
	cmp r0, #3
	bne _080344E0
	ldr r2, _080344D8 @ =0x030013C0
	ldr r0, [r2]
	ldr r3, _080344DC @ =0x000001CF
	adds r0, r0, r3
	movs r1, #0
	strb r1, [r0]
	ldr r0, [r2]
	adds r0, r0, r3
	ldrb r0, [r0]
	adds r6, r2, #0
	ldrb r5, [r7, #0xa]
	cmp r0, r5
	bhs _080344A8
	mov ip, r7
	adds r4, r3, #0
	mov r8, r6
_0803447C:
	mov r1, r8
	ldr r0, [r1]
	adds r2, r0, r4
	ldrb r3, [r2]
	lsls r1, r3, #2
	mov r0, ip
	adds r0, #0x60
	adds r1, r1, r0
	mov r5, ip
	ldr r0, [r5, #0x18]
	ldr r1, [r1]
	ldr r0, [r0, #0xc]
	cmp r1, r0
	beq _080344BE
	adds r0, r3, #1
	strb r0, [r2]
	ldr r0, [r6]
	adds r0, r0, r4
	ldrb r0, [r0]
	ldrb r1, [r7, #0xa]
	cmp r0, r1
	blo _0803447C
_080344A8:
	ldrb r0, [r7, #0xa]
	adds r1, r0, #1
	strb r1, [r7, #0xa]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r1, r7, #0
	adds r1, #0x60
	adds r0, r0, r1
	ldr r1, [r7, #0x18]
	ldr r1, [r1, #0xc]
	str r1, [r0]
_080344BE:
	ldr r1, _080344D4 @ =0x02034BF0
	ldr r2, [r1, #0x18]
	ldr r0, [r2, #0xc]
	ldrb r1, [r1, #1]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1c
	adds r1, #1
	bl sub_080345BC
	b _080344EC
	.align 2, 0
_080344D4: .4byte 0x02034BF0
_080344D8: .4byte 0x030013C0
_080344DC: .4byte 0x000001CF
_080344E0:
	ldrb r1, [r7, #1]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1c
	adds r0, r3, #0
	bl sub_080345BC
_080344EC:
	movs r0, #1
	bl sub_08002B98
_080344F2:
	ldr r4, _08034588 @ =0x02034BF0
	ldr r2, [r4, #0x18]
	ldr r3, [r2, #0x10]
	adds r7, r4, #0
	cmp r3, #0
	beq _080345B2
	movs r5, #0x90
	lsls r5, r5, #1
	adds r0, r4, r5
	ldr r0, [r0]
	cmp r3, r0
	beq _080345B2
	ldrh r1, [r3, #2]
	movs r0, #7
	ands r0, r1
	cmp r0, #3
	bne _08034594
	ldr r2, _0803458C @ =0x030013C0
	ldr r0, [r2]
	ldr r3, _08034590 @ =0x000001CF
	adds r0, r0, r3
	movs r1, #0
	strb r1, [r0]
	ldr r0, [r2]
	adds r0, r0, r3
	ldrb r0, [r0]
	adds r6, r2, #0
	ldrb r1, [r4, #0xa]
	cmp r0, r1
	bhs _08034560
	mov ip, r4
	adds r4, r3, #0
	mov r8, r6
_08034534:
	mov r5, r8
	ldr r0, [r5]
	adds r2, r0, r4
	ldrb r3, [r2]
	lsls r1, r3, #2
	mov r0, ip
	adds r0, #0x60
	adds r1, r1, r0
	mov r5, ip
	ldr r0, [r5, #0x18]
	ldr r1, [r1]
	ldr r0, [r0, #0x10]
	cmp r1, r0
	beq _08034576
	adds r0, r3, #1
	strb r0, [r2]
	ldr r0, [r6]
	adds r0, r0, r4
	ldrb r0, [r0]
	ldrb r1, [r7, #0xa]
	cmp r0, r1
	blo _08034534
_08034560:
	ldrb r0, [r7, #0xa]
	adds r1, r0, #1
	strb r1, [r7, #0xa]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r1, r7, #0
	adds r1, #0x60
	adds r0, r0, r1
	ldr r1, [r7, #0x18]
	ldr r1, [r1, #0x10]
	str r1, [r0]
_08034576:
	ldr r2, [r7, #0x18]
	ldr r0, [r2, #0x10]
	ldrb r1, [r7, #1]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1c
	adds r1, #1
	bl sub_080345BC
	b _080345A0
	.align 2, 0
_08034588: .4byte 0x02034BF0
_0803458C: .4byte 0x030013C0
_08034590: .4byte 0x000001CF
_08034594:
	ldrb r1, [r4, #1]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1c
	adds r0, r3, #0
	bl sub_080345BC
_080345A0:
	movs r0, #1
	bl sub_08002B98
	b _080345B2
_080345A8:
	ldr r0, [r2, #0x18]
	movs r1, #1
	movs r2, #0
	bl sub_080345BC
_080345B2:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080345BC
sub_080345BC: @ 0x080345BC
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	adds r5, r2, #0
	ldr r2, [r4, #4]
	cmp r2, #0
	beq _080345EC
	cmp r2, r5
	beq _080345EC
	ldr r0, _0803466C @ =0x02034BF0
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r2, r0
	beq _080345EC
	subs r1, r6, #1
	adds r0, r2, #0
	adds r2, r4, #0
	bl sub_08034670
	movs r0, #1
	bl sub_08002B98
_080345EC:
	ldr r2, [r4, #8]
	cmp r2, #0
	beq _08034614
	cmp r2, r5
	beq _08034614
	ldr r0, _0803466C @ =0x02034BF0
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r2, r0
	beq _08034614
	subs r1, r6, #1
	adds r0, r2, #0
	adds r2, r4, #0
	bl sub_08034670
	movs r0, #1
	bl sub_08002B98
_08034614:
	ldr r2, [r4, #0xc]
	cmp r2, #0
	beq _0803463C
	cmp r2, r5
	beq _0803463C
	ldr r0, _0803466C @ =0x02034BF0
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r2, r0
	beq _0803463C
	subs r1, r6, #1
	adds r0, r2, #0
	adds r2, r4, #0
	bl sub_08034670
	movs r0, #1
	bl sub_08002B98
_0803463C:
	ldr r2, [r4, #0x10]
	cmp r2, #0
	beq _08034664
	cmp r2, r5
	beq _08034664
	ldr r0, _0803466C @ =0x02034BF0
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r2, r0
	beq _08034664
	subs r1, r6, #1
	adds r0, r2, #0
	adds r2, r4, #0
	bl sub_08034670
	movs r0, #1
	bl sub_08002B98
_08034664:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803466C: .4byte 0x02034BF0

	thumb_func_start sub_08034670
sub_08034670: @ 0x08034670
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	cmp r4, #0
	bne _08034684
	b _080347FC
_08034684:
	ldr r1, _08034750 @ =0x02034BF0
	movs r2, #0x90
	lsls r2, r2, #1
	adds r0, r1, r2
	ldr r0, [r0]
	mov ip, r1
	cmp r4, r0
	bne _08034696
	b _080347FC
_08034696:
	ldrh r1, [r4, #2]
	movs r0, #7
	ands r0, r1
	cmp r0, #3
	bne _0803475C
	mov r3, ip
	ldr r0, [r3, #0x18]
	cmp r4, r0
	bne _080346B4
	ldrb r0, [r3, #1]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	adds r0, #1
	cmp r5, r0
	beq _0803475C
_080346B4:
	ldr r2, _08034754 @ =0x030013C0
	ldr r0, [r2]
	ldr r3, _08034758 @ =0x000001CF
	adds r0, r0, r3
	movs r1, #0
	strb r1, [r0]
	ldr r0, [r2]
	adds r0, r0, r3
	ldrb r0, [r0]
	adds r7, r2, #0
	mov r1, ip
	ldrb r1, [r1, #0xa]
	cmp r0, r1
	bhs _080346FE
	adds r2, r3, #0
	movs r3, #0x60
	add r3, ip
	mov sb, r3
	mov r8, r7
_080346DA:
	mov r1, r8
	ldr r0, [r1]
	adds r1, r0, r2
	ldrb r3, [r1]
	lsls r0, r3, #2
	add r0, sb
	ldr r0, [r0]
	cmp r0, r4
	beq _08034714
	adds r0, r3, #1
	strb r0, [r1]
	ldr r0, [r7]
	adds r0, r0, r2
	ldrb r0, [r0]
	mov r3, ip
	ldrb r3, [r3, #0xa]
	cmp r0, r3
	blo _080346DA
_080346FE:
	mov r1, ip
	ldrb r0, [r1, #0xa]
	adds r1, r0, #1
	mov r2, ip
	strb r1, [r2, #0xa]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	mov r1, ip
	adds r1, #0x60
	adds r0, r0, r1
	str r4, [r0]
_08034714:
	ldr r0, [r4, #0xc]
	cmp r0, r6
	beq _08034722
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_08034670
_08034722:
	ldr r0, [r4, #0x10]
	cmp r0, r6
	beq _08034730
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_08034670
_08034730:
	ldr r0, [r4, #4]
	cmp r0, r6
	beq _0803473E
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_08034670
_0803473E:
	ldr r0, [r4, #8]
	cmp r0, r6
	beq _080347FC
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_08034670
	b _080347FC
	.align 2, 0
_08034750: .4byte 0x02034BF0
_08034754: .4byte 0x030013C0
_08034758: .4byte 0x000001CF
_0803475C:
	cmp r5, #0
	bne _080347C4
	ldr r1, _080347BC @ =0x030013C0
	ldr r0, [r1]
	ldr r3, _080347C0 @ =0x000001CF
	adds r0, r0, r3
	strb r5, [r0]
	ldr r0, [r1]
	adds r0, r0, r3
	ldrb r0, [r0]
	adds r7, r1, #0
	mov r1, ip
	ldrb r1, [r1, #0xa]
	cmp r0, r1
	bhs _080347A4
	adds r5, r3, #0
	mov r6, ip
	adds r6, #0x60
	adds r2, r7, #0
_08034782:
	ldr r0, [r2]
	adds r1, r0, r5
	ldrb r3, [r1]
	lsls r0, r3, #2
	adds r0, r0, r6
	ldr r0, [r0]
	cmp r0, r4
	beq _080347FC
	adds r0, r3, #1
	strb r0, [r1]
	ldr r0, [r7]
	adds r0, r0, r5
	ldrb r0, [r0]
	mov r3, ip
	ldrb r3, [r3, #0xa]
	cmp r0, r3
	blo _08034782
_080347A4:
	mov r1, ip
	ldrb r0, [r1, #0xa]
	adds r1, r0, #1
	mov r2, ip
	strb r1, [r2, #0xa]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	mov r1, ip
	adds r1, #0x60
	adds r0, r0, r1
	str r4, [r0]
	b _080347FC
	.align 2, 0
_080347BC: .4byte 0x030013C0
_080347C0: .4byte 0x000001CF
_080347C4:
	ldr r0, [r4, #0xc]
	cmp r0, r6
	beq _080347D2
	subs r1, r5, #1
	adds r2, r4, #0
	bl sub_08034670
_080347D2:
	ldr r0, [r4, #0x10]
	cmp r0, r6
	beq _080347E0
	subs r1, r5, #1
	adds r2, r4, #0
	bl sub_08034670
_080347E0:
	ldr r0, [r4, #4]
	cmp r0, r6
	beq _080347EE
	subs r1, r5, #1
	adds r2, r4, #0
	bl sub_08034670
_080347EE:
	ldr r0, [r4, #8]
	cmp r0, r6
	beq _080347FC
	subs r1, r5, #1
	adds r2, r4, #0
	bl sub_08034670
_080347FC:
	movs r0, #1
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0803480C
sub_0803480C: @ 0x0803480C
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _08034840 @ =0x030013C0
	ldr r0, [r5]
	movs r1, #8
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	movs r1, #0
	strb r1, [r0]
	strh r1, [r0, #2]
	ldr r0, [r5]
	movs r1, #8
	ldrsh r0, [r0, r1]
	ldr r1, _08034844 @ =0x08087F48
	lsls r4, r4, #2
	adds r4, r4, r1
	ldr r1, [r4]
	bl sub_08007B84
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08034840: .4byte 0x030013C0
_08034844: .4byte 0x08087F48

	thumb_func_start sub_08034848
sub_08034848: @ 0x08034848
	push {lr}
	ldr r0, _08034864 @ =0x030013C0
	ldr r1, [r0]
	adds r1, #0x68
	ldrb r2, [r1]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	movs r0, #0
	bl sub_0803480C
	pop {r0}
	bx r0
	.align 2, 0
_08034864: .4byte 0x030013C0

	thumb_func_start sub_08034868
sub_08034868: @ 0x08034868
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	adds r5, r0, #0
	lsls r6, r1, #0x10
	lsrs r6, r6, #0x10
	ldr r0, _080348D4 @ =0x030013C0
	mov r8, r0
	ldr r0, [r0]
	movs r1, #8
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	str r5, [r0, #8]
	ldrb r4, [r5]
	ldr r1, _080348D8 @ =0x02034BF0
	ldr r2, [r1, #0x1c]
	ldrb r1, [r2]
	subs r4, r4, r1
	lsls r4, r4, #3
	ldrb r1, [r5, #1]
	ldrb r2, [r2, #1]
	subs r1, r1, r2
	lsls r5, r1, #3
	strh r6, [r0, #4]
	mov r0, r8
	ldr r1, [r0]
	adds r1, #0x68
	ldrb r0, [r1]
	movs r2, #1
	orrs r0, r2
	strb r0, [r1]
	movs r0, #1
	bl sub_0803480C
	asrs r1, r4, #0x1f
	movs r0, #2
	ands r1, r0
	cmp r4, #0
	ble _080348BA
	movs r1, #3
_080348BA:
	cmp r5, #0
	bge _080348C0
	movs r1, #1
_080348C0:
	cmp r5, #0
	ble _080348C6
	movs r1, #0
_080348C6:
	adds r0, r1, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080348D4: .4byte 0x030013C0
_080348D8: .4byte 0x02034BF0

	thumb_func_start sub_080348DC
sub_080348DC: @ 0x080348DC
	push {r4, lr}
	adds r3, r0, #0
	cmp r3, #0
	beq _0803496A
	ldr r2, _08034938 @ =0x08087DC0
	ldr r1, _0803493C @ =0x02034BF0
	ldrb r0, [r1, #4]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1c
	adds r0, r0, r2
	ldrh r2, [r0]
	ldrb r0, [r1, #1]
	lsrs r0, r0, #4
	cmp r0, #0
	bne _0803490E
	ldrh r0, [r3, #2]
	movs r1, #7
	ands r1, r0
	cmp r1, #1
	beq _0803490C
	cmp r1, #4
	beq _0803490C
	cmp r1, #5
	bne _0803490E
_0803490C:
	movs r2, #0x20
_0803490E:
	adds r0, r3, #0
	adds r1, r2, #0
	bl sub_08034868
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r0, _08034940 @ =0x080873C0
	adds r0, r4, r0
	ldrb r1, [r0]
	ldr r0, _08034944 @ =0x030013C0
	ldr r0, [r0]
	ldr r0, [r0, #0x6c]
	ldrb r2, [r0, #0x10]
	cmp r2, #3
	bgt _08034948
	cmp r2, #0
	blt _08034948
	bl sub_08009B28
	b _08034952
	.align 2, 0
_08034938: .4byte 0x08087DC0
_0803493C: .4byte 0x02034BF0
_08034940: .4byte 0x080873C0
_08034944: .4byte 0x030013C0
_08034948:
	ldr r0, _08034970 @ =0x030013C0
	ldr r0, [r0]
	ldr r0, [r0, #0x6c]
	bl sub_08009AFC
_08034952:
	ldr r3, _08034974 @ =0x02034BF0
	movs r0, #3
	adds r1, r4, #0
	ands r1, r0
	ldrb r2, [r3]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	bl sub_080379C0
_0803496A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08034970: .4byte 0x030013C0
_08034974: .4byte 0x02034BF0

	thumb_func_start sub_08034978
sub_08034978: @ 0x08034978
	push {r4, r5, lr}
	adds r4, r0, #0
	cmp r4, #0
	beq _080349E2
	ldr r2, _080349E8 @ =0x02034BF0
	ldr r0, [r2, #0x1c]
	ldr r0, [r0, #0xc]
	cmp r4, r0
	bne _08034992
	ldrb r0, [r2]
	movs r1, #3
	orrs r0, r1
	strb r0, [r2]
_08034992:
	ldr r3, [r2, #0x1c]
	ldr r0, [r3, #0x10]
	adds r5, r3, #0
	cmp r4, r0
	bne _080349AA
	ldrb r0, [r2]
	movs r1, #4
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #2
	orrs r1, r0
	strb r1, [r2]
_080349AA:
	ldr r0, [r5, #4]
	cmp r4, r0
	bne _080349BA
	ldrb r1, [r2]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
_080349BA:
	ldr r0, [r3, #8]
	cmp r4, r0
	bne _080349CE
	ldrb r0, [r2]
	movs r1, #4
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #1
	orrs r1, r0
	strb r1, [r2]
_080349CE:
	ldr r0, _080349EC @ =0x030013C0
	ldr r1, [r0]
	adds r1, #0x68
	ldrb r0, [r1]
	movs r2, #1
	orrs r0, r2
	strb r0, [r1]
	movs r0, #3
	bl sub_0803480C
_080349E2:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080349E8: .4byte 0x02034BF0
_080349EC: .4byte 0x030013C0

	thumb_func_start sub_080349F0
sub_080349F0: @ 0x080349F0
	push {lr}
	ldr r0, _08034A0C @ =0x030013C0
	ldr r1, [r0]
	adds r1, #0x68
	ldrb r0, [r1]
	movs r2, #1
	orrs r0, r2
	strb r0, [r1]
	movs r0, #2
	bl sub_0803480C
	pop {r0}
	bx r0
	.align 2, 0
_08034A0C: .4byte 0x030013C0

	thumb_func_start sub_08034A10
sub_08034A10: @ 0x08034A10
	push {lr}
	ldr r0, _08034A2C @ =0x030013C0
	ldr r1, [r0]
	adds r1, #0x68
	ldrb r0, [r1]
	movs r2, #1
	orrs r0, r2
	strb r0, [r1]
	movs r0, #4
	bl sub_0803480C
	pop {r0}
	bx r0
	.align 2, 0
_08034A2C: .4byte 0x030013C0

	thumb_func_start sub_08034A30
sub_08034A30: @ 0x08034A30
	push {lr}
	ldr r0, _08034A4C @ =0x030013C0
	ldr r1, [r0]
	adds r1, #0x68
	ldrb r0, [r1]
	movs r2, #1
	orrs r0, r2
	strb r0, [r1]
	movs r0, #5
	bl sub_0803480C
	pop {r0}
	bx r0
	.align 2, 0
_08034A4C: .4byte 0x030013C0

	thumb_func_start sub_08034A50
sub_08034A50: @ 0x08034A50
	bx lr
	.align 2, 0

	thumb_func_start sub_08034A54
sub_08034A54: @ 0x08034A54
	push {lr}
	ldr r0, _08034A74 @ =0x030013C0
	ldr r0, [r0]
	ldr r0, [r0, #0x6c]
	ldr r2, _08034A78 @ =0x080873C0
	ldr r1, _08034A7C @ =0x02034BF0
	ldrb r1, [r1]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	adds r1, r1, r2
	ldrb r1, [r1]
	bl sub_08009AFC
	pop {r0}
	bx r0
	.align 2, 0
_08034A74: .4byte 0x030013C0
_08034A78: .4byte 0x080873C0
_08034A7C: .4byte 0x02034BF0

	thumb_func_start sub_08034A80
sub_08034A80: @ 0x08034A80
	push {lr}
	ldr r0, _08034AC4 @ =0x030013C0
	ldr r0, [r0]
	mov ip, r0
	ldr r1, _08034AC8 @ =0x02034BF0
	ldr r0, [r1, #0x1c]
	ldrb r0, [r0]
	lsls r0, r0, #3
	adds r0, #0x10
	movs r3, #0xb9
	lsls r3, r3, #1
	add r3, ip
	movs r2, #0
	strh r0, [r3]
	ldr r0, [r1, #0x1c]
	ldrb r0, [r0, #1]
	lsls r0, r0, #3
	adds r0, #0x10
	movs r1, #0xba
	lsls r1, r1, #1
	add r1, ip
	strh r0, [r1]
	movs r0, #0xbb
	lsls r0, r0, #1
	add r0, ip
	strh r2, [r0]
	movs r0, #0xbc
	lsls r0, r0, #1
	add r0, ip
	strh r2, [r0]
	bl sub_08034848
	pop {r0}
	bx r0
	.align 2, 0
_08034AC4: .4byte 0x030013C0
_08034AC8: .4byte 0x02034BF0

	thumb_func_start sub_08034ACC
sub_08034ACC: @ 0x08034ACC
	bx lr
	.align 2, 0

	thumb_func_start sub_08034AD0
sub_08034AD0: @ 0x08034AD0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	bl sub_08007BD4
	adds r6, r0, #0
	ldrb r0, [r6]
	cmp r0, #0
	beq _08034AEE
	cmp r0, #1
	beq _08034B84
	b _08034B88
_08034AEE:
	ldrh r0, [r6, #2]
	adds r0, #1
	strh r0, [r6, #2]
	ldr r0, _08034B4C @ =0x02034BF0
	ldr r1, [r0, #0x1c]
	ldrb r0, [r1]
	lsls r0, r0, #3
	adds r7, r0, #0
	adds r7, #0x10
	ldrb r0, [r1, #1]
	lsls r0, r0, #3
	adds r0, #0x10
	str r0, [sp]
	ldr r1, [r6, #8]
	ldrb r0, [r1]
	lsls r0, r0, #3
	adds r0, #0x10
	mov sb, r0
	ldrb r0, [r1, #1]
	lsls r0, r0, #3
	adds r0, #0x10
	mov r8, r0
	ldrh r0, [r6, #4]
	mov sl, r0
	mov r0, sl
	cmp r0, #0
	beq _08034B50
	mov r1, sb
	subs r0, r1, r7
	ldrh r4, [r6, #2]
	muls r0, r4, r0
	ldrh r5, [r6, #4]
	adds r1, r5, #0
	bl __divsi3
	adds r7, r7, r0
	mov r2, r8
	ldr r3, [sp]
	subs r0, r2, r3
	muls r0, r4, r0
	adds r1, r5, #0
	bl __divsi3
	ldr r1, [sp]
	adds r2, r1, r0
	b _08034B54
	.align 2, 0
_08034B4C: .4byte 0x02034BF0
_08034B50:
	mov r7, sb
	mov r2, r8
_08034B54:
	ldrh r1, [r6, #2]
	mov r3, sl
	lsls r0, r3, #0x10
	lsrs r0, r0, #0x10
	cmp r1, r0
	blo _08034B6C
	movs r0, #0
	strh r0, [r6, #2]
	mov r7, sb
	mov r2, r8
	movs r0, #1
	strb r0, [r6]
_08034B6C:
	ldr r0, _08034B80 @ =0x030013C0
	ldr r1, [r0]
	movs r3, #0xb9
	lsls r3, r3, #1
	adds r0, r1, r3
	strh r7, [r0]
	adds r3, #2
	adds r0, r1, r3
	strh r2, [r0]
	b _08034B88
	.align 2, 0
_08034B80: .4byte 0x030013C0
_08034B84:
	bl sub_08034848
_08034B88:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08034B98
sub_08034B98: @ 0x08034B98
	push {r4, r5, lr}
	bl sub_08007BD4
	adds r4, r0, #0
	ldrb r5, [r4]
	cmp r5, #1
	beq _08034BEC
	cmp r5, #1
	bgt _08034BB0
	cmp r5, #0
	beq _08034BBA
	b _08034C92
_08034BB0:
	cmp r5, #2
	beq _08034C28
	cmp r5, #3
	beq _08034C7C
	b _08034C92
_08034BBA:
	bl sub_080351C8
	ldr r0, _08034BE0 @ =0x030013C0
	ldr r0, [r0]
	ldr r0, [r0, #0x6c]
	ldr r2, _08034BE4 @ =0x080873C4
	ldr r1, _08034BE8 @ =0x02034BF0
	ldrb r1, [r1]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	adds r1, r1, r2
	ldrb r1, [r1]
	bl sub_08009AFC
	strh r5, [r4, #2]
	movs r0, #1
	strb r0, [r4]
	b _08034C92
	.align 2, 0
_08034BE0: .4byte 0x030013C0
_08034BE4: .4byte 0x080873C4
_08034BE8: .4byte 0x02034BF0
_08034BEC:
	ldr r0, _08034C20 @ =0x030013C0
	ldr r1, [r0]
	ldr r2, _08034C24 @ =0x08087DCA
	ldrh r0, [r4, #2]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	movs r2, #0xbc
	lsls r2, r2, #1
	adds r1, r1, r2
	strh r0, [r1]
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #7
	bls _08034C92
	bl sub_080369D0
	movs r0, #0
	strh r0, [r4, #2]
	movs r0, #2
	strb r0, [r4]
	b _08034C92
	.align 2, 0
_08034C20: .4byte 0x030013C0
_08034C24: .4byte 0x08087DCA
_08034C28:
	ldr r3, _08034C6C @ =0x030013C0
	ldr r1, [r3]
	ldr r2, _08034C70 @ =0x08087DDA
	ldrh r0, [r4, #2]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	movs r2, #0xbc
	lsls r2, r2, #1
	adds r1, r1, r2
	strh r0, [r1]
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #6
	bls _08034C92
	movs r0, #0
	strh r0, [r4, #2]
	movs r0, #3
	strb r0, [r4]
	ldr r0, [r3]
	ldr r0, [r0, #0x6c]
	ldr r2, _08034C74 @ =0x080873C0
	ldr r1, _08034C78 @ =0x02034BF0
	ldrb r1, [r1]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	adds r1, r1, r2
	ldrb r1, [r1]
	bl sub_08009AFC
	b _08034C92
	.align 2, 0
_08034C6C: .4byte 0x030013C0
_08034C70: .4byte 0x08087DDA
_08034C74: .4byte 0x080873C0
_08034C78: .4byte 0x02034BF0
_08034C7C:
	ldr r0, _08034C98 @ =0x030013C0
	ldr r0, [r0]
	adds r0, #0x68
	ldrb r0, [r0]
	lsls r0, r0, #0x1d
	cmp r0, #0
	blt _08034C92
	bl sub_080351E8
	bl sub_08034848
_08034C92:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08034C98: .4byte 0x030013C0

	thumb_func_start sub_08034C9C
sub_08034C9C: @ 0x08034C9C
	push {r4, r5, r6, lr}
	bl sub_08007BD4
	adds r6, r0, #0
	ldrb r4, [r6]
	cmp r4, #1
	beq _08034CE8
	cmp r4, #1
	bgt _08034CB4
	cmp r4, #0
	beq _08034CBA
	b _08034DB8
_08034CB4:
	cmp r4, #2
	beq _08034D9C
	b _08034DB8
_08034CBA:
	ldr r0, _08034CDC @ =0x030013C0
	ldr r0, [r0]
	ldr r0, [r0, #0x6c]
	ldr r2, _08034CE0 @ =0x080873C4
	ldr r1, _08034CE4 @ =0x02034BF0
	ldrb r1, [r1]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	adds r1, r1, r2
	ldrb r1, [r1]
	bl sub_08009AFC
	strh r4, [r6, #2]
	movs r0, #1
	strb r0, [r6]
	b _08034DB8
	.align 2, 0
_08034CDC: .4byte 0x030013C0
_08034CE0: .4byte 0x080873C4
_08034CE4: .4byte 0x02034BF0
_08034CE8:
	ldr r0, _08034D90 @ =0x030013C0
	ldr r0, [r0]
	mov ip, r0
	ldr r3, _08034D94 @ =0x02034BF0
	ldr r0, [r3, #0x1c]
	ldrb r2, [r0]
	lsls r2, r2, #3
	ldr r4, _08034D98 @ =0x08087DE8
	ldrh r1, [r6, #2]
	lsls r1, r1, #3
	ldrb r0, [r3]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	movs r5, #0x58
	muls r0, r5, r0
	adds r1, r1, r0
	adds r1, r1, r4
	ldrh r0, [r1]
	adds r0, #0x10
	adds r2, r2, r0
	movs r0, #0xb9
	lsls r0, r0, #1
	add r0, ip
	strh r2, [r0]
	ldr r0, [r3, #0x1c]
	ldrb r2, [r0, #1]
	lsls r2, r2, #3
	ldrh r1, [r6, #2]
	lsls r1, r1, #3
	ldrb r0, [r3]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	muls r0, r5, r0
	adds r1, r1, r0
	adds r0, r4, #2
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r0, #0x10
	adds r2, r2, r0
	movs r0, #0xba
	lsls r0, r0, #1
	add r0, ip
	strh r2, [r0]
	ldrh r1, [r6, #2]
	lsls r1, r1, #3
	ldrb r0, [r3]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	muls r0, r5, r0
	adds r1, r1, r0
	adds r0, r4, #4
	adds r1, r1, r0
	ldrh r0, [r1]
	movs r1, #0xbb
	lsls r1, r1, #1
	add r1, ip
	strh r0, [r1]
	ldrh r1, [r6, #2]
	lsls r1, r1, #3
	ldrb r0, [r3]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	muls r0, r5, r0
	adds r1, r1, r0
	adds r4, #6
	adds r1, r1, r4
	ldrh r1, [r1]
	movs r0, #0xbc
	lsls r0, r0, #1
	add r0, ip
	strh r1, [r0]
	ldrh r0, [r6, #2]
	adds r0, #1
	strh r0, [r6, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xa
	bls _08034DB8
	movs r0, #0
	strh r0, [r6, #2]
	movs r0, #2
	strb r0, [r6]
	b _08034DB8
	.align 2, 0
_08034D90: .4byte 0x030013C0
_08034D94: .4byte 0x02034BF0
_08034D98: .4byte 0x08087DE8
_08034D9C:
	ldr r0, _08034DC0 @ =0x030013C0
	ldr r0, [r0]
	ldr r0, [r0, #0x6c]
	ldr r2, _08034DC4 @ =0x080873C0
	ldr r1, _08034DC8 @ =0x02034BF0
	ldrb r1, [r1]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	adds r1, r1, r2
	ldrb r1, [r1]
	bl sub_08009AFC
	bl sub_08034848
_08034DB8:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08034DC0: .4byte 0x030013C0
_08034DC4: .4byte 0x080873C0
_08034DC8: .4byte 0x02034BF0

	thumb_func_start sub_08034DCC
sub_08034DCC: @ 0x08034DCC
	push {r4, r5, r6, r7, lr}
	bl sub_08007BD4
	adds r5, r0, #0
	ldrb r0, [r5]
	cmp r0, #1
	beq _08034E1E
	cmp r0, #1
	bgt _08034DE4
	cmp r0, #0
	beq _08034DEA
	b _08034E7C
_08034DE4:
	cmp r0, #2
	beq _08034E6C
	b _08034E7C
_08034DEA:
	ldr r2, _08034E60 @ =0x02034BF0
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r2, r1
	ldr r1, [r0]
	cmp r1, #0
	beq _08034E0E
	ldr r0, [r2, #0x1c]
	ldr r0, [r0, #4]
	cmp r0, r1
	bne _08034E0E
	ldr r0, _08034E64 @ =0x030013C0
	ldr r0, [r0]
	ldr r0, [r0, #0x6c]
	movs r1, #2
	movs r2, #0x5f
	bl sub_08009A0C
_08034E0E:
	movs r0, #1
	strb r0, [r5]
	movs r0, #0xfc
	bl m4aSongNumStart
	ldr r0, _08034E68 @ =0x00000109
	bl m4aSongNumStart
_08034E1E:
	ldr r7, _08034E64 @ =0x030013C0
	ldr r0, [r7]
	movs r6, #0xba
	lsls r6, r6, #1
	adds r0, r0, r6
	movs r1, #0
	ldrsh r4, [r0, r1]
	subs r4, #6
	ldrh r0, [r5, #2]
	adds r1, r0, #1
	strh r1, [r5, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xf
	adds r0, #1
	movs r1, #0xc
	bl __divsi3
	adds r4, r4, r0
	ldr r0, _08034E60 @ =0x02034BF0
	ldr r0, [r0, #0x1c]
	ldrb r0, [r0, #1]
	lsls r0, r0, #3
	subs r0, #0x68
	cmp r4, r0
	bgt _08034E56
	adds r4, r0, #0
	movs r0, #2
	strb r0, [r5]
_08034E56:
	ldr r0, [r7]
	adds r0, r0, r6
	strh r4, [r0]
	b _08034E7C
	.align 2, 0
_08034E60: .4byte 0x02034BF0
_08034E64: .4byte 0x030013C0
_08034E68: .4byte 0x00000109
_08034E6C:
	ldr r0, _08034E84 @ =0x030013C0
	ldr r0, [r0]
	ldr r0, [r0, #0x6c]
	movs r1, #0
	bl sub_08009A34
	bl sub_08034848
_08034E7C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08034E84: .4byte 0x030013C0

	thumb_func_start sub_08034E88
sub_08034E88: @ 0x08034E88
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	bl sub_08007BD4
	adds r7, r0, #0
	ldrb r0, [r7]
	cmp r0, #1
	beq _08034F1C
	cmp r0, #1
	bgt _08034EA6
	cmp r0, #0
	beq _08034EB2
	b _08034FD0
_08034EA6:
	cmp r0, #2
	beq _08034F70
	cmp r0, #3
	bne _08034EB0
	b _08034FCC
_08034EB0:
	b _08034FD0
_08034EB2:
	ldr r0, _08034F14 @ =0x02034BF0
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r2, [r0]
	cmp r2, #0
	beq _08034EDC
	ldr r0, _08034F18 @ =0x030013C0
	ldr r1, [r0]
	movs r3, #0xc0
	lsls r3, r3, #1
	adds r0, r1, r3
	ldr r0, [r0]
	ldr r0, [r0, #4]
	cmp r0, r2
	bne _08034EDC
	ldr r0, [r1, #0x6c]
	movs r1, #2
	movs r2, #0x5f
	bl sub_08009A0C
_08034EDC:
	ldr r4, _08034F18 @ =0x030013C0
	ldr r0, [r4]
	ldr r0, [r0, #0x6c]
	movs r1, #1
	bl sub_08009A34
	ldr r3, [r4]
	movs r4, #0xc0
	lsls r4, r4, #1
	adds r1, r3, r4
	ldr r0, [r1]
	ldrb r0, [r0]
	lsls r0, r0, #3
	adds r0, #0x10
	subs r4, #0xe
	adds r2, r3, r4
	strh r0, [r2]
	ldr r0, [r1]
	ldrb r0, [r0, #1]
	lsls r0, r0, #3
	subs r0, #0x72
	movs r2, #0xba
	lsls r2, r2, #1
	adds r1, r3, r2
	strh r0, [r1]
	movs r0, #1
	strb r0, [r7]
	b _08034FD0
	.align 2, 0
_08034F14: .4byte 0x02034BF0
_08034F18: .4byte 0x030013C0
_08034F1C:
	ldr r0, _08034F6C @ =0x030013C0
	ldr r6, [r0]
	movs r3, #0xba
	lsls r3, r3, #1
	adds r4, r6, r3
	movs r0, #0
	ldrsh r5, [r4, r0]
	ldrh r1, [r7, #2]
	adds r0, r1, #1
	strh r0, [r7, #2]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xf
	adds r1, #1
	lsls r0, r1, #3
	adds r0, r0, r1
	movs r1, #0x78
	bl __divsi3
	adds r5, r5, r0
	strh r5, [r4]
	movs r1, #0xc0
	lsls r1, r1, #1
	adds r0, r6, r1
	ldr r0, [r0]
	ldrb r0, [r0, #1]
	lsls r0, r0, #3
	adds r0, #0x10
	cmp r5, r0
	blt _08034FD0
	movs r0, #2
	strb r0, [r7]
	movs r0, #0
	strh r0, [r7, #2]
	bl sub_08035020
	movs r0, #0x85
	lsls r0, r0, #1
	bl m4aSongNumStart
	b _08034FD0
	.align 2, 0
_08034F6C: .4byte 0x030013C0
_08034F70:
	ldr r2, _08034FC8 @ =0x030013C0
	mov sb, r2
	ldr r6, [r2]
	movs r3, #0xba
	lsls r3, r3, #1
	mov r8, r3
	adds r0, r6, r3
	movs r4, #0
	ldrsh r5, [r0, r4]
	subs r4, r5, #1
	ldrh r1, [r7, #2]
	adds r1, #1
	strh r1, [r7, #2]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xf
	adds r1, #1
	lsls r0, r1, #3
	adds r0, r0, r1
	movs r1, #0x78
	bl __divsi3
	adds r5, r4, r0
	movs r1, #0xc0
	lsls r1, r1, #1
	adds r0, r6, r1
	ldr r0, [r0]
	ldrb r0, [r0, #1]
	lsls r0, r0, #3
	adds r0, #0x10
	cmp r5, r0
	blt _08034FBE
	adds r5, r0, #0
	ldr r0, [r6, #0x6c]
	movs r1, #2
	movs r2, #0x80
	bl sub_08009A0C
	movs r0, #3
	strb r0, [r7]
_08034FBE:
	mov r2, sb
	ldr r0, [r2]
	add r0, r8
	strh r5, [r0]
	b _08034FD0
	.align 2, 0
_08034FC8: .4byte 0x030013C0
_08034FCC:
	bl sub_08034848
_08034FD0:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08034FDC
sub_08034FDC: @ 0x08034FDC
	push {r4, lr}
	bl sub_08007BD4
	adds r4, r0, #0
	ldr r0, [r4, #4]
	ldr r3, _0803501C @ =0x02034BF0
	ldrh r1, [r4]
	ldrh r2, [r3, #0xe]
	subs r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldrh r2, [r4, #2]
	ldrh r3, [r3, #0x10]
	subs r2, r2, r3
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl sub_08009A70
	ldr r1, [r4, #4]
	ldrb r0, [r1, #1]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _08035014
	adds r0, r1, #0
	bl sub_08009A00
	bl sub_08007A64
_08035014:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803501C: .4byte 0x02034BF0

	thumb_func_start sub_08035020
sub_08035020: @ 0x08035020
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _0803514C @ =sub_08034FDC
	movs r1, #0x43
	movs r2, #0
	bl sub_08007968
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl sub_08007BBC
	adds r6, r0, #0
	ldr r0, _08035150 @ =0x030013C0
	mov sl, r0
	ldr r1, [r0]
	movs r4, #0xb9
	lsls r4, r4, #1
	adds r0, r1, r4
	ldrh r0, [r0]
	subs r0, #0xc
	strh r0, [r6]
	movs r0, #0xba
	lsls r0, r0, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	strh r0, [r6, #2]
	movs r0, #2
	movs r1, #0x7f
	bl sub_080099E0
	adds r7, r0, #0
	movs r1, #1
	bl sub_08009A34
	ldr r5, _08035154 @ =0x02034BF0
	ldrh r1, [r6]
	ldrh r0, [r5, #0xe]
	subs r1, r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldrh r2, [r6, #2]
	ldrh r0, [r5, #0x10]
	subs r2, r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r7, #0
	bl sub_08009A70
	mov r1, sl
	ldr r0, [r1]
	movs r1, #0xb0
	lsls r1, r1, #1
	mov r8, r1
	add r0, r8
	ldr r1, [r0]
	adds r0, r7, #0
	bl sub_08009A78
	adds r0, r7, #0
	movs r1, #1
	bl sub_08009AB4
	ldr r0, _08035158 @ =0x080B6DA8
	mov sb, r0
	adds r0, r7, #0
	mov r1, sb
	ldr r2, _0803515C @ =0x080B6D44
	movs r3, #3
	bl sub_08009ACC
	adds r0, r7, #0
	movs r1, #0
	bl sub_08009B40
	str r7, [r6, #4]
	ldr r0, _0803514C @ =sub_08034FDC
	movs r1, #0x43
	movs r2, #0
	bl sub_08007968
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl sub_08007BBC
	adds r6, r0, #0
	mov r0, sl
	ldr r1, [r0]
	adds r4, r1, r4
	ldrh r0, [r4]
	adds r0, #0xc
	strh r0, [r6]
	movs r0, #0xba
	lsls r0, r0, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	strh r0, [r6, #2]
	movs r0, #2
	movs r1, #0x7f
	bl sub_080099E0
	adds r7, r0, #0
	movs r1, #1
	bl sub_08009A34
	ldrh r1, [r6]
	ldrh r0, [r5, #0xe]
	subs r1, r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldrh r2, [r6, #2]
	ldrh r0, [r5, #0x10]
	subs r2, r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r7, #0
	bl sub_08009A70
	mov r1, sl
	ldr r0, [r1]
	add r0, r8
	ldr r1, [r0]
	adds r0, r7, #0
	bl sub_08009A78
	adds r0, r7, #0
	movs r1, #1
	bl sub_08009AB4
	adds r0, r7, #0
	mov r1, sb
	ldr r2, _0803515C @ =0x080B6D44
	movs r3, #2
	bl sub_08009ACC
	adds r0, r7, #0
	movs r1, #0
	bl sub_08009B40
	str r7, [r6, #4]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803514C: .4byte sub_08034FDC
_08035150: .4byte 0x030013C0
_08035154: .4byte 0x02034BF0
_08035158: .4byte 0x080B6DA8
_0803515C: .4byte 0x080B6D44

	thumb_func_start sub_08035160
sub_08035160: @ 0x08035160
	push {r4, lr}
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r1, #0x30
	bl sub_0800B278
	bl sub_0800B2BC
	ldr r4, _08035188 @ =0x02034BF0
	strh r0, [r4, #0xe]
	bl sub_0800B2C8
	subs r0, #0x30
	strh r0, [r4, #0x10]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08035188: .4byte 0x02034BF0

	thumb_func_start sub_0803518C
sub_0803518C: @ 0x0803518C
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _080351C0 @ =0x030013C0
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
	ldr r1, _080351C4 @ =0x08088038
	lsls r4, r4, #2
	adds r4, r4, r1
	ldr r1, [r4]
	bl sub_08007B84
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080351C0: .4byte 0x030013C0
_080351C4: .4byte 0x08088038

	thumb_func_start sub_080351C8
sub_080351C8: @ 0x080351C8
	push {lr}
	ldr r0, _080351E4 @ =0x030013C0
	ldr r1, [r0]
	adds r1, #0x68
	ldrb r2, [r1]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	movs r0, #0
	bl sub_0803518C
	pop {r0}
	bx r0
	.align 2, 0
_080351E4: .4byte 0x030013C0

	thumb_func_start sub_080351E8
sub_080351E8: @ 0x080351E8
	push {lr}
	ldr r0, _08035204 @ =0x030013C0
	ldr r1, [r0]
	adds r1, #0x68
	ldrb r2, [r1]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	movs r0, #1
	bl sub_0803518C
	pop {r0}
	bx r0
	.align 2, 0
_08035204: .4byte 0x030013C0

	thumb_func_start sub_08035208
sub_08035208: @ 0x08035208
	push {lr}
	ldr r1, _0803524C @ =0x030013C0
	ldr r0, [r1]
	movs r3, #0xe7
	lsls r3, r3, #1
	adds r2, r0, r3
	movs r0, #0
	strb r0, [r2]
	ldr r1, [r1]
	adds r1, #0x68
	ldrb r0, [r1]
	movs r2, #2
	orrs r0, r2
	strb r0, [r1]
	ldr r0, _08035250 @ =0x02034BF0
	ldrb r0, [r0, #3]
	lsls r0, r0, #0x1d
	cmp r0, #0
	blt _08035234
	ldr r0, _08035254 @ =0x00000103
	bl m4aSongNumStart
_08035234:
	movs r0, #2
	bl sub_0803518C
	bl sub_08039D68
	bl sub_0803A5D0
	bl sub_0803A73C
	pop {r0}
	bx r0
	.align 2, 0
_0803524C: .4byte 0x030013C0
_08035250: .4byte 0x02034BF0
_08035254: .4byte 0x00000103

	thumb_func_start sub_08035258
sub_08035258: @ 0x08035258
	push {lr}
	ldr r0, _08035274 @ =0x030013C0
	ldr r1, [r0]
	adds r1, #0x68
	ldrb r0, [r1]
	movs r2, #2
	orrs r0, r2
	strb r0, [r1]
	movs r0, #3
	bl sub_0803518C
	pop {r0}
	bx r0
	.align 2, 0
_08035274: .4byte 0x030013C0

	thumb_func_start sub_08035278
sub_08035278: @ 0x08035278
	push {lr}
	ldr r0, _08035290 @ =0x02034BF0
	ldr r0, [r0, #0x1c]
	ldrh r1, [r0, #2]
	movs r0, #0xfc
	lsls r0, r0, #1
	ands r0, r1
	lsrs r0, r0, #3
	bl sub_08035294
	pop {r0}
	bx r0
	.align 2, 0
_08035290: .4byte 0x02034BF0

	thumb_func_start sub_08035294
sub_08035294: @ 0x08035294
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r5, _080352C4 @ =0x030013C0
	ldr r0, [r5]
	movs r1, #0xa
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	strh r4, [r0, #0xa]
	ldr r1, [r5]
	adds r1, #0x68
	ldrb r0, [r1]
	movs r2, #2
	orrs r0, r2
	strb r0, [r1]
	movs r0, #4
	bl sub_0803518C
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080352C4: .4byte 0x030013C0

	thumb_func_start sub_080352C8
sub_080352C8: @ 0x080352C8
	push {lr}
	ldr r0, _080352E4 @ =0x030013C0
	ldr r1, [r0]
	adds r1, #0x68
	ldrb r0, [r1]
	movs r2, #2
	orrs r0, r2
	strb r0, [r1]
	movs r0, #5
	bl sub_0803518C
	pop {r0}
	bx r0
	.align 2, 0
_080352E4: .4byte 0x030013C0

	thumb_func_start sub_080352E8
sub_080352E8: @ 0x080352E8
	push {lr}
	ldr r0, _08035304 @ =0x030013C0
	ldr r1, [r0]
	adds r1, #0x68
	ldrb r0, [r1]
	movs r2, #2
	orrs r0, r2
	strb r0, [r1]
	movs r0, #6
	bl sub_0803518C
	pop {r0}
	bx r0
	.align 2, 0
_08035304: .4byte 0x030013C0

	thumb_func_start sub_08035308
sub_08035308: @ 0x08035308
	push {lr}
	ldr r0, _08035324 @ =0x030013C0
	ldr r1, [r0]
	adds r1, #0x68
	ldrb r0, [r1]
	movs r2, #2
	orrs r0, r2
	strb r0, [r1]
	movs r0, #7
	bl sub_0803518C
	pop {r0}
	bx r0
	.align 2, 0
_08035324: .4byte 0x030013C0

	thumb_func_start sub_08035328
sub_08035328: @ 0x08035328
	push {lr}
	ldr r0, _08035344 @ =0x030013C0
	ldr r1, [r0]
	adds r1, #0x68
	ldrb r0, [r1]
	movs r2, #2
	orrs r0, r2
	strb r0, [r1]
	movs r0, #8
	bl sub_0803518C
	pop {r0}
	bx r0
	.align 2, 0
_08035344: .4byte 0x030013C0

	thumb_func_start sub_08035348
sub_08035348: @ 0x08035348
	push {lr}
	ldr r0, _08035364 @ =0x030013C0
	ldr r1, [r0]
	adds r1, #0x68
	ldrb r0, [r1]
	movs r2, #2
	orrs r0, r2
	strb r0, [r1]
	movs r0, #9
	bl sub_0803518C
	pop {r0}
	bx r0
	.align 2, 0
_08035364: .4byte 0x030013C0

	thumb_func_start sub_08035368
sub_08035368: @ 0x08035368
	push {lr}
	ldr r0, _08035384 @ =0x030013C0
	ldr r1, [r0]
	adds r1, #0x68
	ldrb r0, [r1]
	movs r2, #2
	orrs r0, r2
	strb r0, [r1]
	movs r0, #0xa
	bl sub_0803518C
	pop {r0}
	bx r0
	.align 2, 0
_08035384: .4byte 0x030013C0

	thumb_func_start sub_08035388
sub_08035388: @ 0x08035388
	push {lr}
	ldr r0, _080353A4 @ =0x030013C0
	ldr r1, [r0]
	adds r1, #0x68
	ldrb r0, [r1]
	movs r2, #2
	orrs r0, r2
	strb r0, [r1]
	movs r0, #0xb
	bl sub_0803518C
	pop {r0}
	bx r0
	.align 2, 0
_080353A4: .4byte 0x030013C0

	thumb_func_start sub_080353A8
sub_080353A8: @ 0x080353A8
	push {r4, r5, lr}
	movs r4, #0
	ldr r5, _080353E0 @ =0x030013C0
_080353AE:
	ldr r0, [r5]
	lsls r1, r4, #2
	adds r0, #0xa0
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_08009A00
	adds r4, #1
	cmp r4, #3
	ble _080353AE
	ldr r4, _080353E0 @ =0x030013C0
	ldr r0, [r4]
	adds r0, #0xb0
	ldr r0, [r0]
	ldr r0, [r0, #0x24]
	bl sub_08009E54
	ldr r0, [r4]
	adds r0, #0xb0
	ldr r0, [r0]
	bl sub_08009A00
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080353E0: .4byte 0x030013C0

	thumb_func_start sub_080353E4
sub_080353E4: @ 0x080353E4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	movs r6, #0
	ldr r0, _080354E4 @ =0x030013C0
	mov r8, r0
	ldr r7, _080354E8 @ =0x080873D0
_080353F2:
	movs r0, #1
	movs r1, #0x20
	bl sub_080099E0
	adds r5, r0, #0
	movs r1, #0
	bl sub_08009A34
	lsls r4, r6, #2
	movs r2, #0
	ldrsh r1, [r7, r2]
	movs r0, #2
	ldrsh r2, [r7, r0]
	adds r0, r5, #0
	bl sub_08009A70
	mov r1, r8
	ldr r0, [r1]
	movs r2, #0xae
	lsls r2, r2, #1
	adds r0, r0, r2
	ldr r1, [r0]
	adds r0, r5, #0
	bl sub_08009A78
	adds r0, r5, #0
	movs r1, #3
	bl sub_08009AB4
	ldr r1, _080354EC @ =0x080873E0
	lsls r0, r6, #1
	adds r0, r0, r1
	ldrb r3, [r0]
	adds r0, r5, #0
	ldr r1, _080354F0 @ =0x080ABFE8
	ldr r2, _080354F4 @ =0x080ABF30
	bl sub_08009ACC
	adds r0, r5, #0
	movs r1, #0xff
	bl sub_08009B40
	mov r1, r8
	ldr r0, [r1]
	adds r0, #0xa0
	adds r0, r0, r4
	str r5, [r0]
	adds r7, #4
	adds r6, #1
	cmp r6, #3
	ble _080353F2
	movs r0, #1
	movs r1, #0x20
	bl sub_080099E0
	adds r5, r0, #0
	movs r1, #0
	bl sub_08009A34
	adds r0, r5, #0
	movs r1, #0x78
	movs r2, #0x50
	bl sub_08009A70
	ldr r4, _080354E4 @ =0x030013C0
	ldr r0, [r4]
	movs r2, #0xae
	lsls r2, r2, #1
	adds r0, r0, r2
	ldr r1, [r0]
	adds r0, r5, #0
	bl sub_08009A78
	adds r0, r5, #0
	movs r1, #3
	bl sub_08009AB4
	ldr r1, _080354F0 @ =0x080ABFE8
	ldr r2, _080354F4 @ =0x080ABF30
	adds r0, r5, #0
	movs r3, #0x25
	bl sub_08009ACC
	bl sub_08009DDC
	adds r1, r0, #0
	adds r0, r5, #0
	bl sub_08009B9C
	adds r0, r5, #0
	movs r1, #1
	bl sub_08009B84
	adds r0, r5, #0
	movs r1, #0xff
	bl sub_08009B40
	ldr r1, [r4]
	adds r0, r1, #0
	adds r0, #0xb0
	str r5, [r0]
	movs r2, #0xa
	ldrsh r0, [r1, r2]
	ldr r1, _080354F8 @ =sub_080353A8
	bl sub_08007BA0
	ldr r1, _080354FC @ =0x02034BF0
	ldrb r0, [r1, #3]
	lsls r0, r0, #0x1d
	cmp r0, #0
	bge _08035500
	movs r2, #0xe
	ldrsh r0, [r1, r2]
	movs r2, #0x10
	ldrsh r1, [r1, r2]
	bl sub_08035160
	bl sub_08035208
	b _08035524
	.align 2, 0
_080354E4: .4byte 0x030013C0
_080354E8: .4byte 0x080873D0
_080354EC: .4byte 0x080873E0
_080354F0: .4byte 0x080ABFE8
_080354F4: .4byte 0x080ABF30
_080354F8: .4byte sub_080353A8
_080354FC: .4byte 0x02034BF0
_08035500:
	ldr r1, [r4]
	movs r2, #0xb9
	lsls r2, r2, #1
	adds r0, r1, r2
	ldrh r0, [r0]
	subs r0, #0x78
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r2, #2
	adds r1, r1, r2
	ldrh r1, [r1]
	subs r1, #0x50
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_08035160
	bl sub_080351E8
_08035524:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08035530
sub_08035530: @ 0x08035530
	bx lr
	.align 2, 0

	thumb_func_start sub_08035534
sub_08035534: @ 0x08035534
	push {lr}
	ldr r0, _0803555C @ =0x030013C0
	ldr r1, [r0]
	movs r2, #0xb9
	lsls r2, r2, #1
	adds r0, r1, r2
	ldrh r0, [r0]
	subs r0, #0x78
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r2, #2
	adds r1, r1, r2
	ldrh r1, [r1]
	subs r1, #0x50
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_08035160
	pop {r0}
	bx r0
	.align 2, 0
_0803555C: .4byte 0x030013C0

	thumb_func_start sub_08035560
sub_08035560: @ 0x08035560
	push {r4, lr}
	ldr r0, _08035580 @ =0x02034BF0
	movs r2, #0x10
	ldrsh r1, [r0, r2]
	movs r0, #0x30
	rsbs r0, r0, #0
	cmp r1, r0
	ble _08035588
	ldr r0, _08035584 @ =0x030013C0
	ldr r0, [r0]
	adds r0, #0xa8
	ldr r0, [r0]
	movs r1, #1
	bl sub_08009A34
	b _08035596
	.align 2, 0
_08035580: .4byte 0x02034BF0
_08035584: .4byte 0x030013C0
_08035588:
	ldr r0, _080355BC @ =0x030013C0
	ldr r0, [r0]
	adds r0, #0xa8
	ldr r0, [r0]
	movs r1, #0
	bl sub_08009A34
_08035596:
	ldr r0, _080355C0 @ =0x02034BF0
	movs r1, #0x10
	ldrsh r4, [r0, r1]
	bl sub_0800B2E4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	subs r0, #0xd0
	cmp r4, r0
	bge _080355C4
	ldr r0, _080355BC @ =0x030013C0
	ldr r0, [r0]
	adds r0, #0xac
	ldr r0, [r0]
	movs r1, #1
	bl sub_08009A34
	b _080355D2
	.align 2, 0
_080355BC: .4byte 0x030013C0
_080355C0: .4byte 0x02034BF0
_080355C4:
	ldr r0, _080355EC @ =0x030013C0
	ldr r0, [r0]
	adds r0, #0xac
	ldr r0, [r0]
	movs r1, #0
	bl sub_08009A34
_080355D2:
	ldr r0, _080355F0 @ =0x02034BF0
	movs r2, #0xe
	ldrsh r0, [r0, r2]
	cmp r0, #0
	ble _080355F4
	ldr r0, _080355EC @ =0x030013C0
	ldr r0, [r0]
	adds r0, #0xa0
	ldr r0, [r0]
	movs r1, #1
	bl sub_08009A34
	b _08035602
	.align 2, 0
_080355EC: .4byte 0x030013C0
_080355F0: .4byte 0x02034BF0
_080355F4:
	ldr r0, _08035628 @ =0x030013C0
	ldr r0, [r0]
	adds r0, #0xa0
	ldr r0, [r0]
	movs r1, #0
	bl sub_08009A34
_08035602:
	ldr r0, _0803562C @ =0x02034BF0
	movs r1, #0xe
	ldrsh r4, [r0, r1]
	bl sub_0800B2D4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	subs r0, #0xf0
	cmp r4, r0
	bge _08035630
	ldr r0, _08035628 @ =0x030013C0
	ldr r0, [r0]
	adds r0, #0xa4
	ldr r0, [r0]
	movs r1, #1
	bl sub_08009A34
	b _0803563E
	.align 2, 0
_08035628: .4byte 0x030013C0
_0803562C: .4byte 0x02034BF0
_08035630:
	ldr r0, _08035644 @ =0x030013C0
	ldr r0, [r0]
	adds r0, #0xa4
	ldr r0, [r0]
	movs r1, #0
	bl sub_08009A34
_0803563E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08035644: .4byte 0x030013C0

	thumb_func_start sub_08035648
sub_08035648: @ 0x08035648
	push {r4, r5, r6, r7, lr}
	ldr r1, _08035698 @ =0x02034BF0
	movs r2, #0xe
	ldrsh r0, [r1, r2]
	adds r7, r0, #0
	adds r7, #0x78
	movs r2, #0x10
	ldrsh r0, [r1, r2]
	adds r6, r0, #0
	adds r6, #0x50
	movs r3, #0
	ldr r0, _0803569C @ =0x0808D4A0
	adds r5, r0, #0
	adds r5, #8
_08035664:
	cmp r3, #0x27
	beq _080356A0
	ldrb r0, [r5]
	lsls r1, r0, #3
	ldrb r0, [r5, #1]
	lsls r2, r0, #3
	movs r0, #0x30
	movs r4, #0x30
	cmp r3, #0x31
	ble _08035680
	adds r1, #8
	adds r2, #8
	movs r0, #0x20
	movs r4, #0x20
_08035680:
	cmp r7, r1
	blt _080356A0
	adds r0, r1, r0
	cmp r7, r0
	bgt _080356A0
	cmp r6, r2
	blt _080356A0
	adds r0, r2, r4
	cmp r6, r0
	bgt _080356A0
	adds r0, r3, #0
	b _080356AC
	.align 2, 0
_08035698: .4byte 0x02034BF0
_0803569C: .4byte 0x0808D4A0
_080356A0:
	adds r5, #0x18
	adds r3, #1
	cmp r3, #0x39
	ble _08035664
	movs r0, #1
	rsbs r0, r0, #0
_080356AC:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080356B4
sub_080356B4: @ 0x080356B4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	bl sub_08007BD4
	mov r8, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _080356D0
	cmp r0, #1
	beq _080356F4
	b _0803593A
_080356D0:
	bl sub_0803759C
	bl sub_08035560
	ldr r0, _080356F0 @ =0x030013C0
	ldr r0, [r0]
	adds r0, #0xb0
	ldr r0, [r0]
	movs r1, #1
	bl sub_08009A34
	movs r0, #1
	mov r1, r8
	strb r0, [r1]
	b _0803593A
	.align 2, 0
_080356F0: .4byte 0x030013C0
_080356F4:
	ldr r0, _08035728 @ =0x02031050
	movs r2, #0x89
	lsls r2, r2, #4
	adds r0, r0, r2
	ldr r0, [r0]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	bne _08035708
	b _0803588E
_08035708:
	bl sub_08035648
	adds r5, r0, #0
	cmp r5, #0
	blt _08035730
	ldr r0, _0803572C @ =0x030013C0
	ldr r0, [r0]
	ldrb r0, [r0]
	cmp r0, #0
	beq _08035730
	lsls r0, r5, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x5c
	bl sub_08039D38
	b _08035734
	.align 2, 0
_08035728: .4byte 0x02031050
_0803572C: .4byte 0x030013C0
_08035730:
	bl sub_08039D68
_08035734:
	ldr r2, _080357A8 @ =0x030024B0
	ldrh r1, [r2]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080357B0
	ldr r4, _080357AC @ =0x030013C0
	ldr r1, [r4]
	adds r0, r1, #0
	adds r0, #0x6a
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _080357B0
	adds r0, r1, #0
	adds r0, #0xa0
	ldr r0, [r0]
	movs r1, #0
	bl sub_08009A34
	ldr r0, [r4]
	adds r0, #0xa4
	ldr r0, [r0]
	movs r1, #0
	bl sub_08009A34
	ldr r0, [r4]
	adds r0, #0xa8
	ldr r0, [r0]
	movs r1, #0
	bl sub_08009A34
	ldr r0, [r4]
	adds r0, #0xac
	ldr r0, [r0]
	movs r1, #0
	bl sub_08009A34
	ldr r0, [r4]
	adds r0, #0xb0
	ldr r0, [r0]
	movs r1, #0
	bl sub_08009A34
	bl sub_08037440
	bl sub_08035258
	bl sub_08039D68
	bl sub_0803A5EC
	bl sub_0803A6DC
	movs r0, #0xce
	bl m4aSongNumStart
	b _0803593A
	.align 2, 0
_080357A8: .4byte 0x030024B0
_080357AC: .4byte 0x030013C0
_080357B0:
	ldrh r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08035828
	ldr r4, _08035824 @ =0x030013C0
	ldr r1, [r4]
	adds r0, r1, #0
	adds r0, #0x6a
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _08035828
	movs r3, #0xe7
	lsls r3, r3, #1
	adds r1, r1, r3
	movs r0, #1
	strb r0, [r1]
	bl sub_08037440
	ldr r0, [r4]
	adds r0, #0xa0
	ldr r0, [r0]
	movs r1, #0
	bl sub_08009A34
	ldr r0, [r4]
	adds r0, #0xa4
	ldr r0, [r0]
	movs r1, #0
	bl sub_08009A34
	ldr r0, [r4]
	adds r0, #0xa8
	ldr r0, [r0]
	movs r1, #0
	bl sub_08009A34
	ldr r0, [r4]
	adds r0, #0xac
	ldr r0, [r0]
	movs r1, #0
	bl sub_08009A34
	ldr r0, [r4]
	adds r0, #0xb0
	ldr r0, [r0]
	movs r1, #0
	bl sub_08009A34
	bl sub_080351C8
	bl sub_08039D68
	movs r0, #0xcc
	bl m4aSongNumStart
	b _0803593A
	.align 2, 0
_08035824: .4byte 0x030013C0
_08035828:
	ldr r0, _08035860 @ =0x02034BF0
	movs r1, #0xe
	ldrsh r4, [r0, r1]
	movs r3, #0x10
	ldrsh r5, [r0, r3]
	movs r6, #3
	ldrh r3, [r2, #2]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r3
	cmp r0, #0
	beq _08035842
	movs r6, #6
_08035842:
	movs r0, #0xf0
	ands r0, r3
	cmp r0, #0
	beq _0803588A
	movs r0, #0x30
	ands r0, r3
	cmp r0, #0
	beq _08035866
	movs r0, #0x20
	ands r0, r3
	cmp r0, #0
	beq _08035864
	subs r4, r4, r6
	b _08035866
	.align 2, 0
_08035860: .4byte 0x02034BF0
_08035864:
	adds r4, r4, r6
_08035866:
	ldrh r1, [r2, #2]
	movs r0, #0xc0
	ands r0, r1
	cmp r0, #0
	beq _0803587E
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0803587C
	subs r5, r5, r6
	b _0803587E
_0803587C:
	adds r5, r5, r6
_0803587E:
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	bl sub_08035160
_0803588A:
	bl sub_08035560
_0803588E:
	movs r5, #0
	ldr r0, _08035908 @ =0x08087F60
	mov sb, r0
	movs r1, #2
	add r1, sb
	mov sl, r1
	ldr r6, _0803590C @ =0x080873D0
_0803589C:
	ldr r7, _08035910 @ =0x030013C0
	ldr r0, [r7]
	lsls r1, r5, #2
	adds r0, #0xa0
	adds r0, r0, r1
	ldr r4, [r0]
	mov r2, r8
	ldrh r0, [r2, #2]
	movs r1, #3
	bl __udivsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	lsls r1, r5, #5
	adds r0, r0, r1
	mov r3, sb
	adds r1, r0, r3
	ldrh r1, [r1]
	ldrh r2, [r6]
	adds r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add r0, sl
	ldrh r2, [r0]
	ldrh r3, [r6, #2]
	adds r2, r2, r3
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r4, #0
	bl sub_08009A70
	adds r6, #4
	adds r5, #1
	cmp r5, #3
	ble _0803589C
	bl sub_080362E8
	cmp r0, #0
	beq _08035918
	ldr r0, [r7]
	adds r0, #0xb0
	ldr r0, [r0]
	ldr r0, [r0, #0x24]
	ldr r2, _08035914 @ =0x08087FE0
	mov r3, r8
	ldrh r1, [r3, #2]
	lsls r1, r1, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r1, r2, #0
	bl sub_08009E84
	b _0803592A
	.align 2, 0
_08035908: .4byte 0x08087F60
_0803590C: .4byte 0x080873D0
_08035910: .4byte 0x030013C0
_08035914: .4byte 0x08087FE0
_08035918:
	ldr r0, [r7]
	adds r0, #0xb0
	ldr r0, [r0]
	ldr r0, [r0, #0x24]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r2, #0
	bl sub_08009E84
_0803592A:
	mov r1, r8
	ldrh r0, [r1, #2]
	adds r0, #1
	movs r1, #0x18
	bl __modsi3
	mov r2, r8
	strh r0, [r2, #2]
_0803593A:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08035948
sub_08035948: @ 0x08035948
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	bl sub_08007BD4
	adds r7, r0, #0
	ldrb r4, [r7]
	cmp r4, #1
	beq _080359D4
	cmp r4, #1
	bgt _08035966
	cmp r4, #0
	beq _0803596E
	b _08035A74
_08035966:
	cmp r4, #2
	bne _0803596C
	b _08035A70
_0803596C:
	b _08035A74
_0803596E:
	ldr r0, _080359CC @ =0x030013C0
	ldr r3, [r0]
	movs r1, #0xb9
	lsls r1, r1, #1
	adds r0, r3, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r5, _080359D0 @ =0x02034BF0
	movs r2, #0xe
	ldrsh r0, [r5, r2]
	adds r0, #0x78
	subs r2, r1, r0
	movs r1, #0xba
	lsls r1, r1, #1
	adds r0, r3, r1
	movs r3, #0
	ldrsh r1, [r0, r3]
	movs r3, #0x10
	ldrsh r0, [r5, r3]
	adds r0, #0x50
	subs r6, r1, r0
	adds r1, r2, #0
	muls r1, r2, r1
	adds r0, r6, #0
	muls r0, r6, r0
	adds r0, r1, r0
	cmp r0, #0
	bge _080359A8
	adds r0, #0x3f
_080359A8:
	asrs r0, r0, #6
	bl Sqrt
	strh r0, [r7, #4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x20
	bls _080359BC
	movs r0, #0x20
	strh r0, [r7, #4]
_080359BC:
	ldrh r0, [r5, #0xe]
	strh r0, [r7, #6]
	ldrh r0, [r5, #0x10]
	strh r0, [r7, #8]
	strh r4, [r7, #2]
	movs r0, #1
	strb r0, [r7]
	b _08035A74
	.align 2, 0
_080359CC: .4byte 0x030013C0
_080359D0: .4byte 0x02034BF0
_080359D4:
	ldrh r0, [r7, #4]
	cmp r0, #0
	bne _08035A00
	ldr r0, _080359FC @ =0x030013C0
	ldr r1, [r0]
	movs r2, #0xb9
	lsls r2, r2, #1
	adds r0, r1, r2
	movs r3, #0
	ldrsh r0, [r0, r3]
	adds r2, r0, #0
	subs r2, #0x78
	movs r3, #0xba
	lsls r3, r3, #1
	adds r0, r1, r3
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r6, r0, #0
	subs r6, #0x50
	b _08035A58
	.align 2, 0
_080359FC: .4byte 0x030013C0
_08035A00:
	ldrh r0, [r7, #2]
	adds r0, #1
	strh r0, [r7, #2]
	movs r2, #6
	ldrsh r6, [r7, r2]
	ldr r0, _08035A6C @ =0x030013C0
	ldr r0, [r0]
	mov r8, r0
	movs r0, #0xb9
	lsls r0, r0, #1
	add r0, r8
	movs r3, #0
	ldrsh r0, [r0, r3]
	adds r1, r6, #0
	adds r1, #0x78
	subs r0, r0, r1
	ldrh r5, [r7, #2]
	muls r0, r5, r0
	ldrh r4, [r7, #4]
	adds r1, r4, #0
	bl __divsi3
	adds r2, r6, r0
	movs r0, #8
	ldrsh r6, [r7, r0]
	movs r0, #0xba
	lsls r0, r0, #1
	add r0, r8
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r1, r6, #0
	adds r1, #0x50
	subs r0, r0, r1
	muls r0, r5, r0
	adds r1, r4, #0
	str r2, [sp]
	bl __divsi3
	adds r6, r6, r0
	ldr r2, [sp]
	cmp r5, r4
	blo _08035A5C
	movs r0, #0
	strh r0, [r7, #2]
_08035A58:
	movs r0, #2
	strb r0, [r7]
_08035A5C:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	bl sub_08035160
	b _08035A74
	.align 2, 0
_08035A6C: .4byte 0x030013C0
_08035A70:
	bl sub_080351E8
_08035A74:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08035A80
sub_08035A80: @ 0x08035A80
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	bl sub_08007BD4
	adds r7, r0, #0
	ldrb r0, [r7]
	cmp r0, #1
	beq _08035B08
	cmp r0, #1
	bgt _08035A9E
	cmp r0, #0
	beq _08035AA4
	b _08035B8C
_08035A9E:
	cmp r0, #3
	beq _08035B88
	b _08035B8C
_08035AA4:
	strh r0, [r7, #2]
	ldr r2, _08035B00 @ =0x0808D4A0
	ldrh r0, [r7, #0xa]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #3
	adds r1, r1, r2
	ldrb r0, [r1, #8]
	lsls r0, r0, #3
	adds r2, r0, #0
	subs r2, #0x60
	ldrb r0, [r1, #9]
	lsls r0, r0, #3
	adds r6, r0, #0
	subs r6, #0x38
	strh r2, [r7, #6]
	strh r6, [r7, #8]
	ldr r1, _08035B04 @ =0x02034BF0
	movs r3, #0xe
	ldrsh r0, [r1, r3]
	subs r2, r2, r0
	movs r3, #0x10
	ldrsh r0, [r1, r3]
	subs r6, r6, r0
	adds r1, r2, #0
	muls r1, r2, r1
	adds r0, r6, #0
	muls r0, r6, r0
	adds r0, r1, r0
	cmp r0, #0
	bge _08035AE4
	adds r0, #3
_08035AE4:
	asrs r0, r0, #2
	bl Sqrt
	strh r0, [r7, #4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x20
	bls _08035AF8
	movs r0, #0x20
	strh r0, [r7, #4]
_08035AF8:
	movs r0, #1
	strb r0, [r7]
	b _08035B8C
	.align 2, 0
_08035B00: .4byte 0x0808D4A0
_08035B04: .4byte 0x02034BF0
_08035B08:
	ldrh r0, [r7, #4]
	cmp r0, #0
	bne _08035B18
	movs r0, #6
	ldrsh r2, [r7, r0]
	movs r1, #8
	ldrsh r6, [r7, r1]
	b _08035B70
_08035B18:
	ldrh r0, [r7, #2]
	adds r0, #1
	strh r0, [r7, #2]
	ldr r0, _08035B84 @ =0x030013C0
	ldr r0, [r0]
	mov r8, r0
	movs r0, #0xb9
	lsls r0, r0, #1
	add r0, r8
	movs r3, #0
	ldrsh r6, [r0, r3]
	movs r1, #6
	ldrsh r0, [r7, r1]
	adds r0, #0x78
	subs r0, r0, r6
	ldrh r5, [r7, #2]
	muls r0, r5, r0
	ldrh r4, [r7, #4]
	adds r1, r4, #0
	bl __divsi3
	subs r0, #0x78
	adds r2, r6, r0
	movs r0, #0xba
	lsls r0, r0, #1
	add r0, r8
	movs r3, #0
	ldrsh r6, [r0, r3]
	movs r1, #8
	ldrsh r0, [r7, r1]
	adds r0, #0x50
	subs r0, r0, r6
	muls r0, r5, r0
	adds r1, r4, #0
	str r2, [sp]
	bl __divsi3
	subs r0, #0x50
	adds r6, r6, r0
	ldr r2, [sp]
	cmp r5, r4
	blo _08035B74
	movs r0, #0
	strh r0, [r7, #2]
_08035B70:
	movs r0, #3
	strb r0, [r7]
_08035B74:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	bl sub_08035160
	b _08035B8C
	.align 2, 0
_08035B84: .4byte 0x030013C0
_08035B88:
	bl sub_080351C8
_08035B8C:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08035B98
sub_08035B98: @ 0x08035B98
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	bl sub_08007BD4
	adds r7, r0, #0
	ldrb r4, [r7]
	cmp r4, #1
	beq _08035C24
	cmp r4, #1
	bgt _08035BB6
	cmp r4, #0
	beq _08035BBE
	b _08035CC4
_08035BB6:
	cmp r4, #2
	bne _08035BBC
	b _08035CC0
_08035BBC:
	b _08035CC4
_08035BBE:
	ldr r0, _08035C1C @ =0x030013C0
	ldr r3, [r0]
	movs r1, #0xb9
	lsls r1, r1, #1
	adds r0, r3, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r5, _08035C20 @ =0x02034BF0
	movs r2, #0xe
	ldrsh r0, [r5, r2]
	adds r0, #0x78
	subs r2, r1, r0
	movs r1, #0xba
	lsls r1, r1, #1
	adds r0, r3, r1
	movs r3, #0
	ldrsh r1, [r0, r3]
	movs r3, #0x10
	ldrsh r0, [r5, r3]
	adds r0, #0x50
	subs r6, r1, r0
	adds r1, r2, #0
	muls r1, r2, r1
	adds r0, r6, #0
	muls r0, r6, r0
	adds r0, r1, r0
	cmp r0, #0
	bge _08035BF8
	adds r0, #3
_08035BF8:
	asrs r0, r0, #2
	bl Sqrt
	strh r0, [r7, #4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x20
	bls _08035C0C
	movs r0, #0x20
	strh r0, [r7, #4]
_08035C0C:
	ldrh r0, [r5, #0xe]
	strh r0, [r7, #6]
	ldrh r0, [r5, #0x10]
	strh r0, [r7, #8]
	strh r4, [r7, #2]
	movs r0, #1
	strb r0, [r7]
	b _08035CC4
	.align 2, 0
_08035C1C: .4byte 0x030013C0
_08035C20: .4byte 0x02034BF0
_08035C24:
	ldrh r0, [r7, #4]
	cmp r0, #0
	bne _08035C50
	ldr r0, _08035C4C @ =0x030013C0
	ldr r1, [r0]
	movs r2, #0xb9
	lsls r2, r2, #1
	adds r0, r1, r2
	movs r3, #0
	ldrsh r0, [r0, r3]
	adds r2, r0, #0
	subs r2, #0x78
	movs r3, #0xba
	lsls r3, r3, #1
	adds r0, r1, r3
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r6, r0, #0
	subs r6, #0x50
	b _08035CA8
	.align 2, 0
_08035C4C: .4byte 0x030013C0
_08035C50:
	ldrh r0, [r7, #2]
	adds r0, #1
	strh r0, [r7, #2]
	movs r2, #6
	ldrsh r6, [r7, r2]
	ldr r0, _08035CBC @ =0x030013C0
	ldr r0, [r0]
	mov r8, r0
	movs r0, #0xb9
	lsls r0, r0, #1
	add r0, r8
	movs r3, #0
	ldrsh r0, [r0, r3]
	adds r1, r6, #0
	adds r1, #0x78
	subs r0, r0, r1
	ldrh r5, [r7, #2]
	muls r0, r5, r0
	ldrh r4, [r7, #4]
	adds r1, r4, #0
	bl __divsi3
	adds r2, r6, r0
	movs r0, #8
	ldrsh r6, [r7, r0]
	movs r0, #0xba
	lsls r0, r0, #1
	add r0, r8
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r1, r6, #0
	adds r1, #0x50
	subs r0, r0, r1
	muls r0, r5, r0
	adds r1, r4, #0
	str r2, [sp]
	bl __divsi3
	adds r6, r6, r0
	ldr r2, [sp]
	cmp r5, r4
	blo _08035CAC
	movs r0, #0
	strh r0, [r7, #2]
_08035CA8:
	movs r0, #2
	strb r0, [r7]
_08035CAC:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	bl sub_08035160
	b _08035CC4
	.align 2, 0
_08035CBC: .4byte 0x030013C0
_08035CC0:
	bl sub_080351E8
_08035CC4:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08035CD0
sub_08035CD0: @ 0x08035CD0
	push {r4, r5, lr}
	bl sub_08007BD4
	adds r4, r0, #0
	ldrb r2, [r4]
	cmp r2, #1
	beq _08035CFE
	cmp r2, #1
	bgt _08035CE8
	cmp r2, #0
	beq _08035CEE
	b _08035D40
_08035CE8:
	cmp r2, #2
	beq _08035D3C
	b _08035D40
_08035CEE:
	ldr r1, _08035D34 @ =0x02034BF0
	ldrh r0, [r1, #0xe]
	strh r0, [r4, #6]
	ldrh r0, [r1, #0x10]
	strh r0, [r4, #8]
	strh r2, [r4, #2]
	movs r0, #1
	strb r0, [r4]
_08035CFE:
	movs r0, #6
	ldrsh r5, [r4, r0]
	movs r2, #8
	ldrsh r3, [r4, r2]
	ldr r2, _08035D38 @ =0x08088010
	ldrh r1, [r4, #2]
	lsls r0, r1, #1
	adds r0, r0, r2
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r3, r3, r0
	adds r1, #1
	strh r1, [r4, #2]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0x12
	bls _08035D28
	movs r0, #2
	strb r0, [r4]
	movs r0, #0
	strh r0, [r4, #2]
_08035D28:
	adds r0, r5, #0
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	bl sub_08035160
	b _08035D40
	.align 2, 0
_08035D34: .4byte 0x02034BF0
_08035D38: .4byte 0x08088010
_08035D3C:
	bl sub_080351E8
_08035D40:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08035D48
sub_08035D48: @ 0x08035D48
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	bl sub_08007BD4
	adds r7, r0, #0
	ldrb r2, [r7]
	cmp r2, #1
	beq _08035D80
	cmp r2, #1
	bgt _08035D64
	cmp r2, #0
	beq _08035D6A
	b _08035DE8
_08035D64:
	cmp r2, #2
	beq _08035DE4
	b _08035DE8
_08035D6A:
	ldr r1, _08035D7C @ =0x02034BF0
	ldrh r0, [r1, #0xe]
	strh r0, [r7, #6]
	ldrh r0, [r1, #0x10]
	strh r0, [r7, #8]
	movs r0, #1
	strb r0, [r7]
	strh r2, [r7, #2]
	b _08035DE8
	.align 2, 0
_08035D7C: .4byte 0x02034BF0
_08035D80:
	ldrh r0, [r7, #2]
	adds r0, #1
	strh r0, [r7, #2]
	movs r0, #6
	ldrsh r5, [r7, r0]
	ldr r0, _08035DE0 @ =0x030013C0
	ldr r0, [r0]
	movs r1, #0xc0
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r6, [r0]
	ldrb r0, [r6]
	lsls r0, r0, #3
	adds r1, r5, #0
	adds r1, #0x68
	subs r0, r0, r1
	ldrh r4, [r7, #2]
	muls r0, r4, r0
	movs r1, #0x3c
	bl __divsi3
	adds r5, r5, r0
	mov r8, r5
	movs r2, #8
	ldrsh r5, [r7, r2]
	ldrb r0, [r6, #1]
	lsls r0, r0, #3
	adds r1, r5, #0
	adds r1, #0x40
	subs r0, r0, r1
	muls r0, r4, r0
	movs r1, #0x3c
	bl __divsi3
	adds r1, r5, r0
	cmp r4, #0x3b
	bls _08035DCE
	movs r0, #2
	strb r0, [r7]
_08035DCE:
	mov r2, r8
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_08035160
	b _08035DE8
	.align 2, 0
_08035DE0: .4byte 0x030013C0
_08035DE4:
	bl sub_080351C8
_08035DE8:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08035DF4
sub_08035DF4: @ 0x08035DF4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0xc
	bl sub_08007BD4
	adds r7, r0, #0
	ldr r4, _08035E28 @ =0x02034BD0
	ldr r0, [r4, #0x10]
	movs r1, #1
	bl sub_08009B6C
	ldr r0, [r4, #8]
	movs r1, #1
	bl sub_08009B6C
	ldrb r0, [r7]
	cmp r0, #4
	bls _08035E1C
	b _08035FE4
_08035E1C:
	lsls r0, r0, #2
	ldr r1, _08035E2C @ =_08035E30
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08035E28: .4byte 0x02034BD0
_08035E2C: .4byte _08035E30
_08035E30: @ jump table
	.4byte _08035E44 @ case 0
	.4byte _08035E56 @ case 1
	.4byte _08035EE8 @ case 2
	.4byte _08035F78 @ case 3
	.4byte _08035FD4 @ case 4
_08035E44:
	ldr r1, _08035ED4 @ =0x02034BF0
	ldrh r0, [r1, #0xe]
	movs r2, #0
	strh r0, [r7, #6]
	ldrh r0, [r1, #0x10]
	strh r0, [r7, #8]
	movs r0, #1
	strb r0, [r7]
	strh r2, [r7, #2]
_08035E56:
	ldr r2, _08035ED8 @ =0x0808D4A0
	ldr r1, _08035EDC @ =0x08087990
	ldr r0, _08035EE0 @ =0x030013C0
	ldr r0, [r0]
	movs r3, #0x90
	lsls r3, r3, #2
	adds r0, r0, r3
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrb r1, [r0, #8]
	lsls r1, r1, #3
	subs r1, #0x60
	ldrb r5, [r0, #9]
	lsls r5, r5, #3
	subs r5, #0x38
	movs r0, #6
	ldrsh r6, [r7, r0]
	subs r1, r1, r6
	ldrh r4, [r7, #2]
	adds r0, r1, #0
	muls r0, r4, r0
	movs r1, #0x3c
	bl __divsi3
	adds r6, r6, r0
	mov r8, r6
	movs r1, #8
	ldrsh r6, [r7, r1]
	subs r5, r5, r6
	adds r0, r5, #0
	muls r0, r4, r0
	movs r1, #0x3c
	bl __divsi3
	adds r6, r6, r0
	adds r4, #1
	strh r4, [r7, #2]
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	cmp r4, #0x3c
	bls _08035EC4
	movs r0, #0
	strh r0, [r7, #2]
	movs r0, #2
	strb r0, [r7]
	ldr r0, _08035EE4 @ =0x00000105
	bl m4aSongNumStart
_08035EC4:
	mov r3, r8
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	bl sub_08035160
	b _08035FE4
	.align 2, 0
_08035ED4: .4byte 0x02034BF0
_08035ED8: .4byte 0x0808D4A0
_08035EDC: .4byte 0x08087990
_08035EE0: .4byte 0x030013C0
_08035EE4: .4byte 0x00000105
_08035EE8:
	ldrh r0, [r7, #2]
	cmp r0, #0
	bne _08035F06
	ldr r2, _08035F74 @ =0x030024E0
	adds r1, r2, #0
	adds r1, #0x4a
	movs r0, #0xe8
	lsls r0, r0, #1
	strh r0, [r1]
	adds r0, r2, #0
	adds r0, #0x4e
	movs r1, #0x10
	strb r1, [r0]
	subs r0, #2
	strh r1, [r0]
_08035F06:
	ldrh r1, [r7, #2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #5
	rsbs r0, r0, #0
	cmp r0, #0
	bge _08035F1A
	adds r0, #0x1f
_08035F1A:
	asrs r3, r0, #5
	movs r0, #0xa0
	lsls r0, r0, #2
	adds r3, r3, r0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	movs r5, #0
	str r5, [sp]
	movs r0, #0x78
	str r0, [sp, #4]
	movs r0, #0x50
	str r0, [sp, #8]
	movs r0, #1
	movs r1, #2
	movs r2, #0
	bl sub_08008D4C
	ldr r4, _08035F74 @ =0x030024E0
	adds r1, r4, #0
	adds r1, #0x46
	movs r0, #0x31
	strb r0, [r1]
	adds r3, r4, #0
	adds r3, #0x44
	ldrb r2, [r3]
	movs r1, #0xdf
	adds r0, r1, #0
	ands r0, r2
	strb r0, [r3]
	adds r2, r4, #0
	adds r2, #0x45
	ldrb r0, [r2]
	ands r1, r0
	strb r1, [r2]
	ldrh r0, [r7, #2]
	adds r0, #1
	strh r0, [r7, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x20
	bls _08035FE4
	strh r5, [r7, #2]
	movs r0, #3
	strb r0, [r7]
	b _08035FE4
	.align 2, 0
_08035F74: .4byte 0x030024E0
_08035F78:
	ldrh r3, [r7, #2]
	lsls r3, r3, #0x12
	movs r1, #0xe0
	lsls r1, r1, #0x10
	adds r3, r3, r1
	lsrs r3, r3, #0x10
	movs r0, #0
	str r0, [sp]
	movs r0, #0x78
	str r0, [sp, #4]
	movs r0, #0x50
	str r0, [sp, #8]
	movs r0, #1
	movs r1, #2
	movs r2, #0
	bl sub_08008D4C
	ldr r4, _08035FD0 @ =0x030024E0
	adds r1, r4, #0
	adds r1, #0x46
	movs r0, #0x31
	strb r0, [r1]
	adds r3, r4, #0
	adds r3, #0x44
	ldrb r2, [r3]
	movs r1, #0xdf
	adds r0, r1, #0
	ands r0, r2
	strb r0, [r3]
	adds r2, r4, #0
	adds r2, #0x45
	ldrb r0, [r2]
	ands r1, r0
	strb r1, [r2]
	ldrh r0, [r7, #2]
	adds r0, #1
	strh r0, [r7, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #8
	bls _08035FE4
	movs r0, #4
	strb r0, [r7]
	b _08035FE4
	.align 2, 0
_08035FD0: .4byte 0x030024E0
_08035FD4:
	ldr r0, _08035FF0 @ =0x030013C0
	ldr r1, [r0]
	adds r1, #0x68
	ldrb r2, [r1]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
_08035FE4:
	add sp, #0xc
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08035FF0: .4byte 0x030013C0

	thumb_func_start sub_08035FF4
sub_08035FF4: @ 0x08035FF4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0xc
	bl sub_08007BD4
	adds r6, r0, #0
	ldrb r2, [r6]
	cmp r2, #1
	beq _08036034
	cmp r2, #1
	bgt _08036012
	cmp r2, #0
	beq _0803601C
	b _08036114
_08036012:
	cmp r2, #2
	beq _080360A4
	cmp r2, #3
	beq _08036110
	b _08036114
_0803601C:
	ldr r1, _0803609C @ =0x02034BF0
	ldrh r0, [r1, #0xe]
	strh r0, [r6, #6]
	ldrh r0, [r1, #0x10]
	strh r0, [r6, #8]
	movs r0, #1
	strb r0, [r6]
	strh r2, [r6, #2]
	movs r0, #0x83
	lsls r0, r0, #1
	bl m4aSongNumStart
_08036034:
	ldrh r0, [r6, #2]
	lsls r3, r0, #1
	adds r3, r3, r0
	lsls r3, r3, #0x12
	movs r0, #0x80
	lsls r0, r0, #0x11
	adds r3, r3, r0
	lsrs r3, r3, #0x10
	movs r5, #0
	str r5, [sp]
	movs r0, #0x78
	str r0, [sp, #4]
	movs r0, #0x50
	str r0, [sp, #8]
	movs r0, #1
	movs r1, #2
	movs r2, #0
	bl sub_08008D4C
	ldr r4, _080360A0 @ =0x030024E0
	adds r1, r4, #0
	adds r1, #0x46
	movs r0, #0x31
	strb r0, [r1]
	adds r3, r4, #0
	adds r3, #0x44
	ldrb r2, [r3]
	movs r1, #0xdf
	adds r0, r1, #0
	ands r0, r2
	strb r0, [r3]
	adds r2, r4, #0
	adds r2, #0x45
	ldrb r0, [r2]
	ands r1, r0
	strb r1, [r2]
	ldrh r0, [r6, #2]
	adds r0, #1
	strh r0, [r6, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x20
	bls _08036114
	adds r0, r4, #0
	adds r0, #0x4a
	strh r5, [r0]
	strh r5, [r6, #2]
	movs r0, #2
	strb r0, [r6]
	bl sub_08008EC0
	b _08036114
	.align 2, 0
_0803609C: .4byte 0x02034BF0
_080360A0: .4byte 0x030024E0
_080360A4:
	movs r1, #6
	ldrsh r5, [r6, r1]
	ldr r0, _0803610C @ =0x030013C0
	ldr r7, [r0]
	movs r2, #0xb9
	lsls r2, r2, #1
	adds r0, r7, r2
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r1, r5, #0
	adds r1, #0x78
	subs r0, r0, r1
	ldrh r4, [r6, #2]
	muls r0, r4, r0
	movs r1, #0x3c
	bl __divsi3
	adds r5, r5, r0
	mov r8, r5
	movs r2, #8
	ldrsh r5, [r6, r2]
	movs r1, #0xba
	lsls r1, r1, #1
	adds r0, r7, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r1, r5, #0
	adds r1, #0x50
	subs r0, r0, r1
	muls r0, r4, r0
	movs r1, #0x3c
	bl __divsi3
	adds r1, r5, r0
	adds r4, #1
	strh r4, [r6, #2]
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	cmp r4, #0x3c
	bls _080360FC
	movs r0, #0
	strh r0, [r6, #2]
	movs r0, #3
	strb r0, [r6]
_080360FC:
	mov r2, r8
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_08035160
	b _08036114
	.align 2, 0
_0803610C: .4byte 0x030013C0
_08036110:
	bl sub_080351E8
_08036114:
	add sp, #0xc
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08036120
sub_08036120: @ 0x08036120
	push {r4, r5, r6, lr}
	bl sub_08007BD4
	adds r5, r0, #0
	ldrb r4, [r5]
	cmp r4, #1
	beq _080361A0
	cmp r4, #1
	bgt _08036138
	cmp r4, #0
	beq _08036140
	b _0803623C
_08036138:
	cmp r4, #2
	bne _0803613E
	b _08036238
_0803613E:
	b _0803623C
_08036140:
	ldr r0, _08036194 @ =0x02034BF0
	movs r1, #0xe
	ldrsh r6, [r0, r1]
	ldrh r0, [r0, #0x10]
	adds r0, #0x78
	strh r0, [r5, #8]
	adds r0, r6, #0
	movs r2, #8
	ldrsh r1, [r5, r2]
	bl sub_08035160
	ldr r3, _08036198 @ =0x030024E0
	ldr r0, _0803619C @ =0x00007878
	strh r0, [r3, #0x3e]
	adds r1, r3, #0
	adds r1, #0x42
	movs r0, #0xa0
	strh r0, [r1]
	adds r1, #3
	movs r0, #0x3f
	strb r0, [r1]
	adds r0, r3, #0
	adds r0, #0x46
	movs r2, #1
	strb r2, [r0]
	ldrh r1, [r3]
	movs r6, #0x80
	lsls r6, r6, #7
	adds r0, r6, #0
	orrs r0, r1
	strh r0, [r3]
	adds r1, r3, #0
	adds r1, #0x4a
	movs r0, #0x9c
	strh r0, [r1]
	adds r1, #4
	movs r0, #0x10
	strb r0, [r1]
	strh r4, [r5, #2]
	strb r2, [r5]
	b _0803623C
	.align 2, 0
_08036194: .4byte 0x02034BF0
_08036198: .4byte 0x030024E0
_0803619C: .4byte 0x00007878
_080361A0:
	ldr r0, _08036228 @ =0x02034BF0
	movs r1, #0xe
	ldrsh r6, [r0, r1]
	movs r2, #8
	ldrsh r4, [r5, r2]
	ldr r0, _0803622C @ =0x030013C0
	ldr r0, [r0]
	movs r1, #0xba
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r1, r4, #0
	adds r1, #0x50
	subs r0, r0, r1
	ldrh r1, [r5, #2]
	muls r0, r1, r0
	movs r1, #0x78
	bl __divsi3
	adds r4, r4, r0
	adds r0, r6, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r1, r4, #0
	bl sub_08035160
	ldrh r0, [r5, #2]
	lsls r0, r0, #4
	rsbs r0, r0, #0
	movs r1, #0x78
	bl __divsi3
	adds r0, #0x10
	ldr r2, _08036230 @ =0x030024E0
	movs r1, #0x1f
	ands r0, r1
	adds r1, r2, #0
	adds r1, #0x4e
	movs r3, #0
	strb r0, [r1]
	ldrh r1, [r5, #2]
	lsls r1, r1, #1
	movs r0, #0xf0
	subs r0, r0, r1
	lsls r0, r0, #7
	adds r1, #0xf0
	asrs r1, r1, #1
	orrs r0, r1
	strh r0, [r2, #0x3e]
	ldrh r0, [r5, #2]
	adds r0, #1
	strh r0, [r5, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x78
	bls _0803623C
	strh r3, [r5, #2]
	movs r0, #2
	strb r0, [r5]
	ldrh r1, [r2]
	ldr r0, _08036234 @ =0x0000BFFF
	ands r0, r1
	strh r0, [r2]
	adds r0, r2, #0
	adds r0, #0x4a
	strh r3, [r0]
	b _0803623C
	.align 2, 0
_08036228: .4byte 0x02034BF0
_0803622C: .4byte 0x030013C0
_08036230: .4byte 0x030024E0
_08036234: .4byte 0x0000BFFF
_08036238:
	bl sub_080351E8
_0803623C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08036244
sub_08036244: @ 0x08036244
	push {r4, r5, r6, r7, lr}
	bl sub_08007BD4
	adds r7, r0, #0
	ldrb r2, [r7]
	cmp r2, #1
	beq _08036278
	cmp r2, #1
	bgt _0803625C
	cmp r2, #0
	beq _08036262
	b _080362E0
_0803625C:
	cmp r2, #2
	beq _080362DC
	b _080362E0
_08036262:
	ldr r1, _08036274 @ =0x02034BF0
	ldrh r0, [r1, #0xe]
	strh r0, [r7, #6]
	ldrh r0, [r1, #0x10]
	strh r0, [r7, #8]
	movs r0, #1
	strb r0, [r7]
	strh r2, [r7, #2]
	b _080362E0
	.align 2, 0
_08036274: .4byte 0x02034BF0
_08036278:
	ldrh r0, [r7, #2]
	adds r0, #1
	strh r0, [r7, #2]
	ldr r1, _080362D8 @ =0x0808D4A0
	adds r0, r1, #0
	adds r0, #0xc8
	ldrb r0, [r0]
	lsls r0, r0, #3
	subs r0, #0x60
	adds r1, #0xc9
	ldrb r5, [r1]
	lsls r5, r5, #3
	subs r5, #0x38
	movs r2, #6
	ldrsh r1, [r7, r2]
	subs r0, r0, r1
	ldrh r6, [r7, #2]
	muls r0, r6, r0
	movs r1, #0x78
	bl __divsi3
	ldrh r4, [r7, #6]
	adds r4, r4, r0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	movs r1, #8
	ldrsh r0, [r7, r1]
	subs r5, r5, r0
	adds r0, r5, #0
	muls r0, r6, r0
	movs r1, #0x78
	bl __divsi3
	ldrh r1, [r7, #8]
	adds r1, r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_08035160
	ldrh r0, [r7, #2]
	cmp r0, #0x77
	bls _080362E0
	movs r0, #0
	strh r0, [r7, #2]
	movs r0, #2
	strb r0, [r7]
	b _080362E0
	.align 2, 0
_080362D8: .4byte 0x0808D4A0
_080362DC:
	bl sub_080351C8
_080362E0:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080362E8
sub_080362E8: @ 0x080362E8
	push {r4, r5, r6, lr}
	ldr r1, _0803632C @ =0x02034BF0
	movs r2, #0xe
	ldrsh r0, [r1, r2]
	adds r4, r0, #0
	adds r4, #0x78
	movs r2, #0x10
	ldrsh r0, [r1, r2]
	adds r3, r0, #0
	adds r3, #0x50
	movs r2, #0
	ldrb r0, [r1, #0xa]
	cmp r2, r0
	bge _08036338
	adds r5, r1, #0
	adds r5, #0x60
	adds r6, r0, #0
_0803630A:
	ldr r1, [r5]
	ldrb r0, [r1]
	lsls r0, r0, #3
	cmp r4, r0
	blt _08036330
	adds r0, #0x20
	cmp r4, r0
	bge _08036330
	ldrb r0, [r1, #1]
	lsls r0, r0, #3
	cmp r3, r0
	blt _08036330
	adds r0, #0x20
	cmp r3, r0
	bge _08036330
	movs r0, #1
	b _0803633A
	.align 2, 0
_0803632C: .4byte 0x02034BF0
_08036330:
	adds r5, #4
	adds r2, #1
	cmp r2, r6
	blt _0803630A
_08036338:
	movs r0, #0
_0803633A:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_08036340
sub_08036340: @ 0x08036340
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _08036374 @ =0x030013C0
	ldr r0, [r5]
	movs r1, #0xc
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	movs r1, #0
	strb r1, [r0]
	strh r1, [r0, #2]
	ldr r0, [r5]
	movs r1, #0xc
	ldrsh r0, [r0, r1]
	ldr r1, _08036378 @ =0x08088068
	lsls r4, r4, #2
	adds r4, r4, r1
	ldr r1, [r4]
	bl sub_08007B84
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08036374: .4byte 0x030013C0
_08036378: .4byte 0x08088068

	thumb_func_start sub_0803637C
sub_0803637C: @ 0x0803637C
	push {lr}
	movs r0, #0
	bl sub_08036340
	pop {r0}
	bx r0

	thumb_func_start sub_08036388
sub_08036388: @ 0x08036388
	push {lr}
	ldr r0, _08036398 @ =0x030013C0
	ldr r0, [r0]
	ldr r0, [r0, #0x6c]
	bl sub_08009A00
	pop {r0}
	bx r0
	.align 2, 0
_08036398: .4byte 0x030013C0

	thumb_func_start sub_0803639C
sub_0803639C: @ 0x0803639C
	push {r4, r5, r6, lr}
	movs r0, #2
	movs r1, #0x80
	bl sub_080099E0
	adds r4, r0, #0
	movs r1, #1
	bl sub_08009A34
	ldr r6, _0803643C @ =0x030013C0
	ldr r2, [r6]
	movs r1, #0xb9
	lsls r1, r1, #1
	adds r0, r2, r1
	ldr r5, _08036440 @ =0x02034BF0
	ldrh r1, [r0]
	ldrh r0, [r5, #0xe]
	subs r1, r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r3, #0xba
	lsls r3, r3, #1
	adds r0, r2, r3
	ldrh r2, [r0]
	ldrh r0, [r5, #0x10]
	subs r2, r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r4, #0
	bl sub_08009A70
	ldr r1, _08036444 @ =0x06010000
	adds r0, r4, #0
	bl sub_08009A78
	ldr r0, [r6]
	ldr r1, [r0, #0x34]
	adds r0, r4, #0
	movs r2, #0
	bl sub_08009BBC
	adds r0, r4, #0
	movs r1, #0
	bl sub_08009AB4
	ldr r1, _08036448 @ =0x080873B0
	ldr r0, _0803644C @ =0x03004400
	ldrb r0, [r0, #0xe]
	lsls r0, r0, #2
	adds r1, r0, r1
	ldr r1, [r1]
	ldr r2, _08036450 @ =0x080873A0
	adds r0, r0, r2
	ldr r2, [r0]
	ldr r3, _08036454 @ =0x080873C0
	ldrb r0, [r5]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	adds r0, r0, r3
	ldrb r3, [r0]
	adds r0, r4, #0
	bl sub_08009ACC
	adds r0, r4, #0
	movs r1, #0xff
	bl sub_08009B40
	ldr r0, [r6]
	str r4, [r0, #0x6c]
	movs r1, #0xc
	ldrsh r0, [r0, r1]
	ldr r1, _08036458 @ =sub_08036388
	bl sub_08007BA0
	bl sub_0803637C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803643C: .4byte 0x030013C0
_08036440: .4byte 0x02034BF0
_08036444: .4byte 0x06010000
_08036448: .4byte 0x080873B0
_0803644C: .4byte 0x03004400
_08036450: .4byte 0x080873A0
_08036454: .4byte 0x080873C0
_08036458: .4byte sub_08036388

	thumb_func_start sub_0803645C
sub_0803645C: @ 0x0803645C
	push {r4, lr}
	ldr r0, _080364A8 @ =0x030013C0
	ldr r0, [r0]
	mov ip, r0
	ldr r0, [r0, #0x6c]
	movs r2, #0xb9
	lsls r2, r2, #1
	add r2, ip
	movs r1, #0xbb
	lsls r1, r1, #1
	add r1, ip
	ldrh r1, [r1]
	ldrh r2, [r2]
	adds r1, r1, r2
	ldr r4, _080364AC @ =0x02034BF0
	ldrh r2, [r4, #0xe]
	subs r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r3, #0xba
	lsls r3, r3, #1
	add r3, ip
	movs r2, #0xbc
	lsls r2, r2, #1
	add r2, ip
	ldrh r2, [r2]
	ldrh r3, [r3]
	adds r2, r2, r3
	ldrh r3, [r4, #0x10]
	subs r2, r2, r3
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl sub_08009A70
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080364A8: .4byte 0x030013C0
_080364AC: .4byte 0x02034BF0

	thumb_func_start sub_080364B0
sub_080364B0: @ 0x080364B0
	push {r4, r5, lr}
	movs r4, #0
	ldr r5, _080364DC @ =0x030013C0
_080364B6:
	ldr r0, [r5]
	lsls r1, r4, #2
	adds r0, #0x8c
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_08009A00
	adds r4, #1
	cmp r4, #4
	ble _080364B6
	ldr r0, _080364DC @ =0x030013C0
	ldr r0, [r0]
	adds r0, #0xb4
	ldr r0, [r0]
	bl sub_08009A00
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080364DC: .4byte 0x030013C0

	thumb_func_start sub_080364E0
sub_080364E0: @ 0x080364E0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r4, _080365DC @ =0x030013C0
	ldr r0, [r4]
	movs r1, #0xe
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	adds r7, r0, #0
	movs r0, #0
	strb r0, [r7]
	movs r6, #0
	mov r8, r4
	ldr r2, _080365E0 @ =0x00000634
	mov sb, r2
_08036502:
	adds r2, r7, #6
	adds r2, r2, r6
	adds r0, r7, #1
	adds r0, r0, r6
	movs r1, #0x3a
	strb r1, [r0]
	strb r1, [r2]
	movs r0, #2
	movs r1, #0xff
	bl sub_080099E0
	adds r5, r0, #0
	movs r1, #0
	bl sub_08009A34
	lsls r1, r6, #3
	adds r1, r1, r6
	lsls r1, r1, #7
	ldr r0, _080365E4 @ =0x06011800
	adds r1, r1, r0
	adds r0, r5, #0
	bl sub_08009A78
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	bl sub_08009BBC
	adds r1, r6, #6
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r5, #0
	bl sub_08009AB4
	adds r0, r5, #0
	ldr r1, _080365E8 @ =0x080ACA8C
	ldr r2, _080365EC @ =0x080ACA84
	movs r3, #0
	bl sub_08009ACC
	adds r0, r5, #0
	movs r1, #0
	bl sub_08009B40
	mov r1, r8
	ldr r0, [r1]
	lsls r1, r6, #2
	adds r0, #0x8c
	adds r0, r0, r1
	str r5, [r0]
	adds r5, r6, #1
	ldr r4, _080365F0 @ =0x080ACB30
	lsls r2, r6, #4
	movs r3, #3
_0803656E:
	mov r1, r8
	ldr r0, [r1]
	add r0, sb
	adds r0, r0, r2
	ldm r4!, {r1}
	str r1, [r0]
	adds r2, #4
	subs r3, #1
	cmp r3, #0
	bge _0803656E
	adds r6, r5, #0
	cmp r6, #4
	ble _08036502
	movs r0, #2
	movs r1, #0xc0
	bl sub_080099E0
	adds r5, r0, #0
	ldr r4, _080365F4 @ =0x02034BF0
	ldrb r0, [r4, #2]
	lsls r0, r0, #0x1a
	cmp r0, #0
	beq _080365FC
	adds r0, r5, #0
	movs r1, #1
	bl sub_08009A34
	ldr r1, _080365F8 @ =0x0808D4A0
	ldrb r0, [r4, #2]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1a
	subs r0, #1
	lsls r2, r0, #1
	adds r2, r2, r0
	lsls r2, r2, #3
	adds r2, r2, r1
	ldrb r1, [r2, #8]
	lsls r1, r1, #3
	ldrh r0, [r4, #0xe]
	subs r0, #0x28
	subs r1, r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldrb r2, [r2, #9]
	lsls r2, r2, #3
	ldrh r0, [r4, #0x10]
	adds r0, #8
	subs r2, r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r5, #0
	bl sub_08009A70
	b _08036604
	.align 2, 0
_080365DC: .4byte 0x030013C0
_080365E0: .4byte 0x00000634
_080365E4: .4byte 0x06011800
_080365E8: .4byte 0x080ACA8C
_080365EC: .4byte 0x080ACA84
_080365F0: .4byte 0x080ACB30
_080365F4: .4byte 0x02034BF0
_080365F8: .4byte 0x0808D4A0
_080365FC:
	adds r0, r5, #0
	movs r1, #0
	bl sub_08009A34
_08036604:
	ldr r4, _0803665C @ =0x030013C0
	ldr r0, [r4]
	movs r2, #0xae
	lsls r2, r2, #1
	adds r0, r0, r2
	ldr r1, [r0]
	adds r0, r5, #0
	bl sub_08009A78
	adds r0, r5, #0
	movs r1, #3
	bl sub_08009AB4
	ldr r1, _08036660 @ =0x080ABFE8
	ldr r2, _08036664 @ =0x080ABF30
	adds r0, r5, #0
	movs r3, #0x26
	bl sub_08009ACC
	adds r0, r5, #0
	movs r1, #0xff
	bl sub_08009B40
	ldr r1, [r4]
	adds r0, r1, #0
	adds r0, #0xb4
	str r5, [r0]
	movs r2, #0xe
	ldrsh r0, [r1, r2]
	ldr r1, _08036668 @ =sub_080364B0
	bl sub_08007BA0
	ldr r0, [r4]
	movs r1, #0xe
	ldrsh r0, [r0, r1]
	ldr r1, _0803666C @ =sub_080366E4
	bl sub_08007B84
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803665C: .4byte 0x030013C0
_08036660: .4byte 0x080ABFE8
_08036664: .4byte 0x080ABF30
_08036668: .4byte sub_080364B0
_0803666C: .4byte sub_080366E4

	thumb_func_start sub_08036670
sub_08036670: @ 0x08036670
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r0, #0
	cmp r1, #7
	bne _08036688
	ldr r5, _08036684 @ =0x08087418
	movs r6, #5
	b _080366AC
	.align 2, 0
_08036684: .4byte 0x08087418
_08036688:
	cmp r1, #0x13
	beq _080366A8
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	ldr r1, _080366A4 @ =0x0808D4AC
	adds r5, r0, r1
	movs r6, #1
	movs r0, #0
	ldrsb r0, [r5, r0]
	cmp r0, #0
	bge _080366AC
_080366A0:
	movs r0, #0
	b _080366D6
	.align 2, 0
_080366A4: .4byte 0x0808D4AC
_080366A8:
	ldr r5, _080366DC @ =0x08087440
	movs r6, #3
_080366AC:
	movs r4, #0
	cmp r4, r6
	bge _080366D4
_080366B2:
	movs r0, #0
	ldrsb r0, [r5, r0]
	cmp r0, #0
	blt _080366CC
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, _080366E0 @ =0x02034E14
	bl sub_0800B87C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080366A0
_080366CC:
	adds r4, #1
	adds r5, #8
	cmp r4, r6
	blt _080366B2
_080366D4:
	movs r0, #1
_080366D6:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080366DC: .4byte 0x08087440
_080366E0: .4byte 0x02034E14

	thumb_func_start sub_080366E4
sub_080366E4: @ 0x080366E4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	bl sub_08007BD4
	str r0, [sp]
	ldr r4, _0803679C @ =0x02034BF0
	ldrb r0, [r4, #2]
	lsls r0, r0, #0x1a
	lsrs r1, r0, #0x1a
	cmp r1, #0
	beq _08036736
	ldr r0, _080367A0 @ =0x030013C0
	ldr r0, [r0]
	adds r0, #0xb4
	ldr r0, [r0]
	ldr r2, _080367A4 @ =0x0808D4A0
	subs r1, #1
	lsls r3, r1, #1
	adds r3, r3, r1
	lsls r3, r3, #3
	adds r3, r3, r2
	ldrb r1, [r3, #8]
	lsls r1, r1, #3
	ldrh r2, [r4, #0xe]
	subs r2, #0x28
	subs r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldrb r2, [r3, #9]
	lsls r2, r2, #3
	ldrh r3, [r4, #0x10]
	adds r3, #8
	subs r2, r2, r3
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl sub_08009A70
_08036736:
	movs r7, #0
	ldr r0, [sp]
	adds r0, #6
	mov sl, r0
	mov r6, sl
	movs r1, #0
	mov r8, r1
_08036744:
	ldrb r0, [r6]
	cmp r0, #0x39
	bhi _080367DE
	adds r1, r0, #0
	ldr r2, _080367A4 @ =0x0808D4A0
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrb r2, [r0, #8]
	lsls r2, r2, #3
	ldr r3, _0803679C @ =0x02034BF0
	movs r4, #0xe
	ldrsh r1, [r3, r4]
	subs r5, r2, r1
	ldrb r0, [r0, #9]
	lsls r0, r0, #3
	movs r2, #0x10
	ldrsh r1, [r3, r2]
	subs r2, r0, r1
	adds r0, r5, #0
	adds r0, #0x30
	cmp r0, #0
	ble _080367A8
	cmp r5, #0xef
	bgt _080367A8
	adds r0, r2, #0
	adds r0, #0x30
	cmp r0, #0
	ble _080367A8
	cmp r2, #0x9f
	bgt _080367A8
	ldr r0, _080367A0 @ =0x030013C0
	ldr r0, [r0]
	adds r0, #0x8c
	add r0, r8
	ldr r0, [r0]
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl sub_08009A70
	b _080367DE
	.align 2, 0
_0803679C: .4byte 0x02034BF0
_080367A0: .4byte 0x030013C0
_080367A4: .4byte 0x0808D4A0
_080367A8:
	movs r3, #0
	mov sb, r3
	movs r0, #0x3a
	strb r0, [r6]
	ldr r5, _0803690C @ =0x030013C0
	ldr r0, [r5]
	adds r0, #0x8c
	add r0, r8
	ldr r0, [r0]
	movs r1, #0
	bl sub_08009A34
	ldr r0, [sp]
	adds r0, #0xb
	adds r4, r0, r7
	ldrb r0, [r4]
	cmp r0, #0
	beq _080367DE
	lsls r1, r7, #4
	ldr r0, _08036910 @ =0x00000634
	adds r1, r1, r0
	ldr r0, [r5]
	adds r0, r0, r1
	bl sub_080095E0
	mov r1, sb
	strb r1, [r4]
_080367DE:
	adds r6, #1
	movs r2, #4
	add r8, r2
	adds r7, #1
	cmp r7, #4
	ble _08036744
	movs r7, #0
_080367EC:
	adds r3, r7, #1
	str r3, [sp, #4]
	cmp r7, #0x27
	beq _080368F2
	lsls r4, r7, #1
	adds r2, r4, r7
	lsls r2, r2, #3
	ldr r5, _08036914 @ =0x0808D4A0
	adds r2, r2, r5
	ldrb r1, [r2, #8]
	lsls r1, r1, #3
	ldr r3, _08036918 @ =0x02034BF0
	movs r5, #0xe
	ldrsh r0, [r3, r5]
	subs r5, r1, r0
	ldrb r0, [r2, #9]
	lsls r0, r0, #3
	movs r2, #0x10
	ldrsh r1, [r3, r2]
	subs r2, r0, r1
	adds r0, r5, #0
	adds r0, #0x30
	cmp r0, #0
	ble _080368F2
	cmp r5, #0xef
	bgt _080368F2
	adds r0, r2, #0
	adds r0, #0x30
	cmp r0, #0
	ble _080368F2
	cmp r2, #0x9f
	bgt _080368F2
	movs r6, #0
	mov r1, sl
_08036830:
	adds r0, r1, r6
	ldrb r0, [r0]
	cmp r0, r7
	beq _080368F2
	adds r6, #1
	cmp r6, #4
	ble _08036830
	movs r6, #0
	ldr r3, [sp]
	ldrb r0, [r3, #6]
	lsls r5, r5, #0x10
	mov r8, r5
	lsls r2, r2, #0x10
	mov sb, r2
	adds r2, r3, #0
	adds r2, #0xb
	lsls r3, r7, #0x10
	cmp r0, #0x3a
	beq _08036866
	mov r1, sl
_08036858:
	adds r6, #1
	cmp r6, #4
	bgt _08036866
	adds r0, r1, r6
	ldrb r0, [r0]
	cmp r0, #0x3a
	bne _08036858
_08036866:
	adds r5, r2, r6
	movs r0, #0
	strb r0, [r5]
	lsrs r0, r3, #0x10
	bl sub_08036670
	cmp r0, #0
	beq _08036898
	lsls r1, r6, #4
	ldr r0, _08036910 @ =0x00000634
	adds r1, r1, r0
	ldr r2, _0803690C @ =0x030013C0
	ldr r0, [r2]
	adds r0, r0, r1
	adds r1, r6, #6
	movs r2, #0xf
	ands r1, r2
	lsls r1, r1, #4
	ldr r3, _0803691C @ =0x00000101
	adds r2, r3, #0
	orrs r1, r2
	bl sub_08009554
	movs r0, #1
	strb r0, [r5]
_08036898:
	adds r4, r4, r7
	lsls r4, r4, #3
	ldr r0, _08036914 @ =0x0808D4A0
	adds r0, #4
	adds r0, r4, r0
	ldr r0, [r0]
	lsls r1, r6, #5
	ldr r5, _08036920 @ =0x050002C0
	adds r1, r1, r5
	bl sub_08008348
	ldr r1, _0803690C @ =0x030013C0
	ldr r0, [r1]
	lsls r5, r6, #2
	adds r0, #0x8c
	adds r0, r0, r5
	ldr r0, [r0]
	ldr r2, _08036914 @ =0x0808D4A0
	adds r4, r4, r2
	ldr r1, [r4]
	movs r2, #1
	bl sub_08009BE4
	ldr r3, _0803690C @ =0x030013C0
	ldr r0, [r3]
	adds r0, #0x8c
	adds r0, r0, r5
	ldr r0, [r0]
	mov r4, r8
	asrs r1, r4, #0x10
	mov r3, sb
	asrs r2, r3, #0x10
	bl sub_08009A70
	ldr r4, _0803690C @ =0x030013C0
	ldr r0, [r4]
	adds r0, #0x8c
	adds r0, r0, r5
	ldr r0, [r0]
	movs r1, #1
	bl sub_08009A34
	mov r5, sl
	adds r0, r5, r6
	strb r7, [r0]
_080368F2:
	ldr r7, [sp, #4]
	cmp r7, #0x39
	bgt _080368FA
	b _080367EC
_080368FA:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803690C: .4byte 0x030013C0
_08036910: .4byte 0x00000634
_08036914: .4byte 0x0808D4A0
_08036918: .4byte 0x02034BF0
_0803691C: .4byte 0x00000101
_08036920: .4byte 0x050002C0

	thumb_func_start sub_08036924
sub_08036924: @ 0x08036924
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _08036958 @ =0x030013C0
	ldr r0, [r5]
	movs r1, #0x10
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	movs r1, #0
	strb r1, [r0]
	strh r1, [r0, #2]
	ldr r0, [r5]
	movs r1, #0x10
	ldrsh r0, [r0, r1]
	ldr r1, _0803695C @ =0x080880E4
	lsls r4, r4, #2
	adds r4, r4, r1
	ldr r1, [r4]
	bl sub_08007B84
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08036958: .4byte 0x030013C0
_0803695C: .4byte 0x080880E4

	thumb_func_start sub_08036960
sub_08036960: @ 0x08036960
	push {lr}
	ldr r0, _0803697C @ =0x030013C0
	ldr r1, [r0]
	adds r1, #0x68
	ldrb r2, [r1]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	movs r0, #0
	bl sub_08036924
	pop {r0}
	bx r0
	.align 2, 0
_0803697C: .4byte 0x030013C0

	thumb_func_start sub_08036980
sub_08036980: @ 0x08036980
	push {lr}
	ldr r0, _0803699C @ =0x030013C0
	ldr r1, [r0]
	adds r1, #0x68
	ldrb r0, [r1]
	movs r2, #4
	orrs r0, r2
	strb r0, [r1]
	movs r0, #1
	bl sub_08036924
	pop {r0}
	bx r0
	.align 2, 0
_0803699C: .4byte 0x030013C0

	thumb_func_start sub_080369A0
sub_080369A0: @ 0x080369A0
	push {lr}
	movs r0, #0xf1
	bl m4aSongNumStart
	ldr r3, _080369CC @ =0x030013C0
	ldr r1, [r3]
	adds r1, #0x68
	ldrb r2, [r1]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	ldr r0, [r3]
	ldr r0, [r0, #0x70]
	movs r1, #1
	bl sub_08009A34
	movs r0, #2
	bl sub_08036924
	pop {r0}
	bx r0
	.align 2, 0
_080369CC: .4byte 0x030013C0

	thumb_func_start sub_080369D0
sub_080369D0: @ 0x080369D0
	push {lr}
	movs r0, #0xf1
	bl m4aSongNumStop
	movs r0, #0xf2
	bl m4aSongNumStart
	ldr r0, _080369F8 @ =0x030013C0
	ldr r1, [r0]
	adds r1, #0x68
	ldrb r0, [r1]
	movs r2, #4
	orrs r0, r2
	strb r0, [r1]
	movs r0, #3
	bl sub_08036924
	pop {r0}
	bx r0
	.align 2, 0
_080369F8: .4byte 0x030013C0

	thumb_func_start sub_080369FC
sub_080369FC: @ 0x080369FC
	push {lr}
	ldr r0, _08036A30 @ =0x030013C0
	ldr r1, [r0]
	adds r1, #0x68
	ldrb r0, [r1]
	movs r2, #4
	orrs r0, r2
	strb r0, [r1]
	movs r0, #0xf8
	bl m4aSongNumStart
	ldr r0, _08036A34 @ =0x02034BF0
	ldrb r0, [r0, #4]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1d
	cmp r0, #2
	ble _08036A26
	movs r0, #0x82
	lsls r0, r0, #1
	bl m4aSongNumStart
_08036A26:
	movs r0, #4
	bl sub_08036924
	pop {r0}
	bx r0
	.align 2, 0
_08036A30: .4byte 0x030013C0
_08036A34: .4byte 0x02034BF0

	thumb_func_start sub_08036A38
sub_08036A38: @ 0x08036A38
	push {lr}
	ldr r0, _08036A54 @ =0x030013C0
	ldr r1, [r0]
	adds r1, #0x68
	ldrb r0, [r1]
	movs r2, #4
	orrs r0, r2
	strb r0, [r1]
	movs r0, #5
	bl sub_08036924
	pop {r0}
	bx r0
	.align 2, 0
_08036A54: .4byte 0x030013C0

	thumb_func_start sub_08036A58
sub_08036A58: @ 0x08036A58
	push {lr}
	ldr r0, _08036A68 @ =0x030013C0
	ldr r0, [r0]
	ldr r0, [r0, #0x70]
	bl sub_08009A00
	pop {r0}
	bx r0
	.align 2, 0
_08036A68: .4byte 0x030013C0

	thumb_func_start sub_08036A6C
sub_08036A6C: @ 0x08036A6C
	push {r4, r5, r6, lr}
	movs r0, #1
	movs r1, #0x20
	bl sub_080099E0
	adds r4, r0, #0
	movs r1, #0
	bl sub_08009A34
	adds r0, r4, #0
	movs r1, #0x78
	movs r2, #0x32
	bl sub_08009A70
	ldr r5, _08036B10 @ =0x030013C0
	ldr r0, [r5]
	movs r1, #0xae
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl sub_08009A78
	adds r0, r4, #0
	movs r1, #3
	bl sub_08009AB4
	ldr r1, _08036B14 @ =0x080ABFE8
	ldr r2, _08036B18 @ =0x080ABF30
	ldr r6, _08036B1C @ =0x02034BF0
	ldrb r3, [r6, #1]
	lsls r3, r3, #0x1c
	lsrs r3, r3, #0x1c
	adds r0, r4, #0
	bl sub_08009ACC
	adds r0, r4, #0
	movs r1, #1
	bl sub_08009B84
	movs r2, #8
	rsbs r2, r2, #0
	adds r0, r4, #0
	movs r1, #0
	bl sub_08009C14
	adds r0, r4, #0
	movs r1, #0xff
	bl sub_08009B40
	ldr r0, [r5]
	str r4, [r0, #0x70]
	bl sub_08009DDC
	adds r1, r0, #0
	ldr r2, [r5]
	movs r4, #0x8e
	lsls r4, r4, #2
	adds r0, r2, r4
	str r1, [r0]
	ldr r0, [r2, #0x70]
	bl sub_08009B9C
	ldr r0, [r5]
	adds r0, r0, r4
	ldr r0, [r0]
	movs r1, #0x12
	ldrsh r2, [r6, r1]
	adds r1, r2, #0
	bl sub_08009E84
	ldr r0, [r5]
	movs r1, #0x10
	ldrsh r0, [r0, r1]
	ldr r1, _08036B20 @ =sub_08036A58
	bl sub_08007BA0
	bl sub_08036960
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08036B10: .4byte 0x030013C0
_08036B14: .4byte 0x080ABFE8
_08036B18: .4byte 0x080ABF30
_08036B1C: .4byte 0x02034BF0
_08036B20: .4byte sub_08036A58

	thumb_func_start sub_08036B24
sub_08036B24: @ 0x08036B24
	bx lr
	.align 2, 0

	thumb_func_start sub_08036B28
sub_08036B28: @ 0x08036B28
	push {r4, r5, r6, lr}
	bl sub_08007BD4
	adds r6, r0, #0
	ldrb r0, [r6]
	cmp r0, #4
	bls _08036B38
	b _08036C5C
_08036B38:
	lsls r0, r0, #2
	ldr r1, _08036B44 @ =_08036B48
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08036B44: .4byte _08036B48
_08036B48: @ jump table
	.4byte _08036B5C @ case 0
	.4byte _08036BBC @ case 1
	.4byte _08036C34 @ case 2
	.4byte _08036C4C @ case 3
	.4byte _08036C58 @ case 4
_08036B5C:
	ldr r4, _08036BB8 @ =0x030013C0
	ldr r0, [r4]
	ldr r0, [r0, #0x70]
	movs r1, #1
	bl sub_08009A34
	ldr r0, [r4]
	ldr r0, [r0, #0x70]
	movs r1, #0xb4
	movs r2, #0x18
	bl sub_08009A70
	ldr r0, [r4]
	ldr r0, [r0, #0x70]
	movs r1, #0x29
	bl sub_08009AFC
	ldr r0, [r4]
	movs r1, #0x8e
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r0, [r0]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r2, #0
	bl sub_08009E84
	movs r0, #0
	strh r0, [r6, #2]
	movs r0, #1
	strb r0, [r6]
	movs r0, #0xf3
	bl m4aSongNumStart
	movs r0, #0xb4
	lsls r0, r0, #8
	str r0, [r6, #4]
	movs r0, #0xc0
	lsls r0, r0, #5
	str r0, [r6, #8]
	movs r0, #1
	rsbs r0, r0, #0
	bl sub_0803A6CC
	b _08036C5C
	.align 2, 0
_08036BB8: .4byte 0x030013C0
_08036BBC:
	ldr r0, [r6, #4]
	ldr r1, _08036C24 @ =0xFFFFFE20
	adds r0, r0, r1
	str r0, [r6, #4]
	ldr r5, [r6, #8]
	ldr r0, _08036C28 @ =0xFFFFFE34
	adds r5, r5, r0
	ldrh r4, [r6, #2]
	adds r4, #1
	strh r4, [r6, #2]
	lsls r0, r4, #0x10
	lsrs r0, r0, #0xf
	subs r0, #1
	ldr r1, _08036C2C @ =0x000009CC
	muls r0, r1, r0
	movs r1, #0x78
	bl __divsi3
	adds r5, r5, r0
	str r5, [r6, #8]
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	cmp r4, #0x1f
	bls _08036C0C
	movs r0, #0xc8
	lsls r0, r0, #6
	str r0, [r6, #8]
	movs r0, #0xf0
	lsls r0, r0, #7
	str r0, [r6, #4]
	bl sub_0803B330
	movs r0, #2
	strb r0, [r6]
	movs r0, #0
	strh r0, [r6, #2]
	movs r0, #0xfd
	lsls r0, r0, #2
	bl m4aSongNumStart
_08036C0C:
	ldr r0, _08036C30 @ =0x030013C0
	ldr r0, [r0]
	ldr r0, [r0, #0x70]
	ldr r1, [r6, #4]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	ldr r2, [r6, #8]
	lsls r2, r2, #8
	asrs r2, r2, #0x10
	bl sub_08009A70
	b _08036C5C
	.align 2, 0
_08036C24: .4byte 0xFFFFFE20
_08036C28: .4byte 0xFFFFFE34
_08036C2C: .4byte 0x000009CC
_08036C30: .4byte 0x030013C0
_08036C34:
	ldr r0, _08036C48 @ =0x030013C0
	ldr r0, [r0]
	adds r0, #0x6a
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	cmp r0, #0
	blt _08036C5C
	movs r0, #3
	strb r0, [r6]
	b _08036C5C
	.align 2, 0
_08036C48: .4byte 0x030013C0
_08036C4C:
	movs r0, #0xc
	bl sub_08007AC0
	movs r0, #4
	strb r0, [r6]
	b _08036C5C
_08036C58:
	bl sub_08036960
_08036C5C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08036C64
sub_08036C64: @ 0x08036C64
	push {r4, r5, r6, r7, lr}
	ldr r7, _08036CA0 @ =0x02034BF0
	ldrh r0, [r7, #4]
	lsls r0, r0, #0x17
	lsrs r0, r0, #0x1e
	cmp r0, #1
	beq _08036CA4
	cmp r0, #2
	beq _08036CEA
	movs r0, #9
	bl sub_0800B828
	ldrb r4, [r7, #1]
	lsls r1, r4, #0x1c
	lsrs r1, r1, #0x1c
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r0, #1
	adds r1, r1, r0
	adds r0, r1, #0
	movs r1, #0xa
	bl __modsi3
	movs r1, #0xf
	ands r0, r1
	movs r1, #0x10
	rsbs r1, r1, #0
	ands r1, r4
	b _08036D2E
	.align 2, 0
_08036CA0: .4byte 0x02034BF0
_08036CA4:
	ldrb r5, [r7, #1]
	lsls r0, r5, #0x1c
	lsrs r0, r0, #0x1c
	adds r0, #8
	movs r1, #9
	bl __modsi3
	movs r6, #0xf
	ands r0, r6
	movs r4, #0x10
	rsbs r4, r4, #0
	adds r1, r4, #0
	ands r1, r5
	orrs r1, r0
	strb r1, [r7, #1]
	movs r0, #8
	bl sub_0800B828
	ldrb r5, [r7, #1]
	lsls r1, r5, #0x1c
	lsrs r1, r1, #0x1c
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r0, #1
	adds r1, r1, r0
	adds r0, r1, #0
	movs r1, #9
	bl __modsi3
	adds r0, #1
	ands r0, r6
	ands r4, r5
	orrs r4, r0
	strb r4, [r7, #1]
	b _08036D32
_08036CEA:
	ldrb r3, [r7, #1]
	lsls r0, r3, #0x1c
	lsrs r0, r0, #0x1c
	adds r2, r0, #6
	adds r1, r2, #0
	asrs r1, r1, #3
	lsls r1, r1, #3
	subs r1, r2, r1
	movs r5, #0xf
	ands r1, r5
	movs r4, #0x10
	rsbs r4, r4, #0
	adds r0, r4, #0
	ands r0, r3
	orrs r0, r1
	strb r0, [r7, #1]
	movs r0, #7
	bl sub_0800B828
	ldrb r2, [r7, #1]
	lsls r1, r2, #0x1c
	lsrs r1, r1, #0x1c
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r0, #1
	adds r1, r1, r0
	adds r0, r1, #0
	asrs r0, r0, #3
	lsls r0, r0, #3
	subs r0, r1, r0
	adds r0, #2
	ands r0, r5
	adds r1, r4, #0
	ands r1, r2
_08036D2E:
	orrs r1, r0
	strb r1, [r7, #1]
_08036D32:
	ldr r0, _08036D50 @ =0x030013C0
	ldr r0, [r0]
	ldr r0, [r0, #0x70]
	ldr r1, _08036D54 @ =0x02034BF0
	ldrb r1, [r1, #1]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1c
	bl sub_08009AFC
	movs r0, #4
	bl sub_08007AC0
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08036D50: .4byte 0x030013C0
_08036D54: .4byte 0x02034BF0

	thumb_func_start sub_08036D58
sub_08036D58: @ 0x08036D58
	push {r4, r5, lr}
	bl sub_08007BD4
	adds r4, r0, #0
	ldrb r0, [r4]
	cmp r0, #0
	beq _08036D6C
	cmp r0, #1
	beq _08036DCC
	b _08036DDE
_08036D6C:
	ldr r0, _08036DBC @ =0x02031050
	movs r1, #0x89
	lsls r1, r1, #4
	adds r0, r0, r1
	ldr r0, [r0]
	movs r5, #1
	ands r0, r5
	cmp r0, #0
	bne _08036D9C
	movs r0, #2
	bl sub_0800B828
	ldr r3, _08036DC0 @ =0x02034BF0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r0, #8
	movs r1, #0xf
	ands r0, r1
	ldrb r2, [r3, #1]
	movs r1, #0x10
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, #1]
_08036D9C:
	ldr r0, _08036DC4 @ =0x030013C0
	ldr r0, [r0]
	ldr r0, [r0, #0x70]
	movs r1, #0
	bl sub_08009A34
	ldr r2, _08036DC0 @ =0x02034BF0
	ldrh r1, [r2, #4]
	ldr r0, _08036DC8 @ =0xFFFFFE7F
	ands r0, r1
	strh r0, [r2, #4]
	bl sub_08036FF8
	strb r5, [r4]
	b _08036DDE
	.align 2, 0
_08036DBC: .4byte 0x02031050
_08036DC0: .4byte 0x02034BF0
_08036DC4: .4byte 0x030013C0
_08036DC8: .4byte 0xFFFFFE7F
_08036DCC:
	ldr r0, _08036DE4 @ =0x030013C0
	ldr r0, [r0]
	adds r0, #0x68
	ldrb r0, [r0]
	lsls r0, r0, #0x1a
	cmp r0, #0
	blt _08036DDE
	bl sub_08036960
_08036DDE:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08036DE4: .4byte 0x030013C0

	thumb_func_start sub_08036DE8
sub_08036DE8: @ 0x08036DE8
	push {r4, r5, r6, lr}
	bl sub_08007BD4
	adds r5, r0, #0
	ldrb r6, [r5]
	cmp r6, #1
	beq _08036E44
	cmp r6, #1
	bgt _08036E00
	cmp r6, #0
	beq _08036E06
	b _08036E9C
_08036E00:
	cmp r6, #2
	beq _08036E98
	b _08036E9C
_08036E06:
	ldr r4, _08036E3C @ =0x030013C0
	ldr r0, [r4]
	ldr r0, [r0, #0x70]
	movs r1, #1
	bl sub_08009A34
	ldr r0, [r4]
	ldr r0, [r0, #0x70]
	movs r1, #0x78
	movs r2, #0x32
	bl sub_08009A70
	ldr r0, [r4]
	ldr r0, [r0, #0x70]
	ldr r1, _08036E40 @ =0x02034BF0
	ldrb r1, [r1, #1]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1c
	bl sub_08009AFC
	bl sub_0803785C
	strh r6, [r5, #2]
	movs r0, #1
	strb r0, [r5]
	b _08036E9C
	.align 2, 0
_08036E3C: .4byte 0x030013C0
_08036E40: .4byte 0x02034BF0
_08036E44:
	ldr r3, _08036E8C @ =0x0808806C
	ldrh r2, [r5, #2]
	lsls r2, r2, #1
	ldr r0, _08036E90 @ =0x02034BF0
	ldrb r1, [r0, #4]
	lsls r1, r1, #0x1d
	lsrs r1, r1, #0x1d
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r2, r2, r0
	adds r2, r2, r3
	ldr r0, _08036E94 @ =0x030013C0
	ldr r0, [r0]
	ldr r0, [r0, #0x70]
	ldr r0, [r0, #0x24]
	movs r1, #0
	ldrsh r2, [r2, r1]
	adds r1, r2, #0
	bl sub_08009E84
	ldrh r0, [r5, #2]
	adds r0, #1
	strh r0, [r5, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xb
	bls _08036E9C
	movs r0, #0
	strh r0, [r5, #2]
	movs r0, #0x1e
	bl sub_08007AC0
	movs r0, #2
	strb r0, [r5]
	b _08036E9C
	.align 2, 0
_08036E8C: .4byte 0x0808806C
_08036E90: .4byte 0x02034BF0
_08036E94: .4byte 0x030013C0
_08036E98:
	bl sub_08036960
_08036E9C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08036EA4
sub_08036EA4: @ 0x08036EA4
	push {r4, r5, r6, lr}
	bl sub_08007BD4
	adds r6, r0, #0
	ldrb r5, [r6]
	cmp r5, #1
	beq _08036F1C
	cmp r5, #1
	bgt _08036EBC
	cmp r5, #0
	beq _08036EC2
	b _08036F94
_08036EBC:
	cmp r5, #2
	beq _08036F90
	b _08036F94
_08036EC2:
	ldr r4, _08036F14 @ =0x030013C0
	ldr r0, [r4]
	ldr r0, [r0, #0x70]
	movs r1, #1
	bl sub_08009A34
	ldr r0, [r4]
	ldr r0, [r0, #0x70]
	movs r1, #0xb4
	movs r2, #0x18
	bl sub_08009A70
	ldr r0, [r4]
	ldr r0, [r0, #0x70]
	movs r1, #0x29
	bl sub_08009AFC
	ldr r0, [r4]
	movs r1, #0x8e
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r0, [r0]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r2, #0
	bl sub_08009E84
	strh r5, [r6, #2]
	movs r0, #1
	strb r0, [r6]
	movs r0, #0xb4
	lsls r0, r0, #8
	str r0, [r6, #4]
	movs r0, #0xc0
	lsls r0, r0, #5
	str r0, [r6, #8]
	ldr r0, _08036F18 @ =0x000003F3
	bl m4aSongNumStart
	b _08036F94
	.align 2, 0
_08036F14: .4byte 0x030013C0
_08036F18: .4byte 0x000003F3
_08036F1C:
	ldr r0, [r6, #4]
	ldr r1, _08036F84 @ =0xFFFFFD30
	adds r0, r0, r1
	str r0, [r6, #4]
	ldr r5, [r6, #8]
	ldr r0, _08036F88 @ =0x00000579
	adds r5, r5, r0
	ldrh r4, [r6, #2]
	adds r4, #1
	strh r4, [r6, #2]
	lsls r1, r4, #0x10
	lsrs r1, r1, #0xf
	subs r1, #1
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	subs r0, r0, r1
	lsls r1, r0, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	rsbs r0, r0, #0
	movs r1, #0x78
	bl __divsi3
	adds r5, r5, r0
	str r5, [r6, #8]
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	cmp r4, #0x3f
	bls _08036F6C
	ldr r0, _08036F8C @ =0x030013C0
	ldr r0, [r0]
	ldr r0, [r0, #0x70]
	movs r1, #0
	bl sub_08009A34
	movs r0, #0
	strh r0, [r6, #2]
	movs r0, #2
	strb r0, [r6]
_08036F6C:
	ldr r0, _08036F8C @ =0x030013C0
	ldr r0, [r0]
	ldr r0, [r0, #0x70]
	ldr r1, [r6, #4]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	ldr r2, [r6, #8]
	lsls r2, r2, #8
	asrs r2, r2, #0x10
	bl sub_08009A70
	b _08036F94
	.align 2, 0
_08036F84: .4byte 0xFFFFFD30
_08036F88: .4byte 0x00000579
_08036F8C: .4byte 0x030013C0
_08036F90:
	bl sub_08036960
_08036F94:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08036F9C
sub_08036F9C: @ 0x08036F9C
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _08036FD0 @ =0x030013C0
	ldr r0, [r5]
	movs r1, #0x14
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	movs r1, #0
	strb r1, [r0]
	strh r1, [r0, #2]
	ldr r0, [r5]
	movs r1, #0x14
	ldrsh r0, [r0, r1]
	ldr r1, _08036FD4 @ =0x080881A4
	lsls r4, r4, #2
	adds r4, r4, r1
	ldr r1, [r4]
	bl sub_08007B84
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08036FD0: .4byte 0x030013C0
_08036FD4: .4byte 0x080881A4

	thumb_func_start sub_08036FD8
sub_08036FD8: @ 0x08036FD8
	push {lr}
	ldr r0, _08036FF4 @ =0x030013C0
	ldr r1, [r0]
	adds r1, #0x68
	ldrb r2, [r1]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	movs r0, #0
	bl sub_08036F9C
	pop {r0}
	bx r0
	.align 2, 0
_08036FF4: .4byte 0x030013C0

	thumb_func_start sub_08036FF8
sub_08036FF8: @ 0x08036FF8
	push {lr}
	ldr r0, _08037014 @ =0x030013C0
	ldr r1, [r0]
	adds r1, #0x68
	ldrb r0, [r1]
	movs r2, #0x20
	orrs r0, r2
	strb r0, [r1]
	movs r0, #1
	bl sub_08036F9C
	pop {r0}
	bx r0
	.align 2, 0
_08037014: .4byte 0x030013C0

	thumb_func_start sub_08037018
sub_08037018: @ 0x08037018
	push {lr}
	ldr r0, _08037034 @ =0x030013C0
	ldr r1, [r0]
	adds r1, #0x68
	ldrb r0, [r1]
	movs r2, #0x20
	orrs r0, r2
	strb r0, [r1]
	movs r0, #2
	bl sub_08036F9C
	pop {r0}
	bx r0
	.align 2, 0
_08037034: .4byte 0x030013C0

	thumb_func_start sub_08037038
sub_08037038: @ 0x08037038
	push {lr}
	ldr r0, _08037054 @ =0x030013C0
	ldr r1, [r0]
	adds r1, #0x68
	ldrb r0, [r1]
	movs r2, #0x20
	orrs r0, r2
	strb r0, [r1]
	movs r0, #3
	bl sub_08036F9C
	pop {r0}
	bx r0
	.align 2, 0
_08037054: .4byte 0x030013C0

	thumb_func_start sub_08037058
sub_08037058: @ 0x08037058
	push {lr}
	ldr r0, _0803706C @ =0x030013C0
	ldr r0, [r0]
	ldr r0, [r0, #0x74]
	movs r1, #0
	bl sub_08009A34
	pop {r0}
	bx r0
	.align 2, 0
_0803706C: .4byte 0x030013C0

	thumb_func_start sub_08037070
sub_08037070: @ 0x08037070
	push {lr}
	ldr r0, _08037084 @ =0x030013C0
	ldr r0, [r0]
	ldr r0, [r0, #0x74]
	movs r1, #1
	bl sub_08009A34
	pop {r0}
	bx r0
	.align 2, 0
_08037084: .4byte 0x030013C0

	thumb_func_start sub_08037088
sub_08037088: @ 0x08037088
	push {lr}
	ldr r0, _08037098 @ =0x030013C0
	ldr r0, [r0]
	ldr r0, [r0, #0x74]
	bl sub_08009A00
	pop {r0}
	bx r0
	.align 2, 0
_08037098: .4byte 0x030013C0

	thumb_func_start sub_0803709C
sub_0803709C: @ 0x0803709C
	push {r4, r5, r6, lr}
	movs r0, #2
	movs r1, #0x20
	bl sub_080099E0
	adds r5, r0, #0
	movs r1, #0
	bl sub_08009A34
	ldr r6, _08037138 @ =0x030013C0
	ldr r2, [r6]
	movs r1, #0xb9
	lsls r1, r1, #1
	adds r0, r2, r1
	ldr r4, _0803713C @ =0x02034BF0
	ldrh r1, [r0]
	ldrh r0, [r4, #0xe]
	subs r1, r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r0, #0xba
	lsls r0, r0, #1
	adds r2, r2, r0
	ldrh r0, [r4, #0x10]
	adds r0, #0x26
	ldrh r2, [r2]
	subs r2, r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r5, #0
	bl sub_08009A70
	ldr r0, [r6]
	movs r1, #0xae
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r5, #0
	bl sub_08009A78
	adds r0, r5, #0
	movs r1, #3
	bl sub_08009AB4
	ldr r1, _08037140 @ =0x080ABFE8
	ldr r2, _08037144 @ =0x080ABF30
	ldrb r3, [r4, #1]
	lsrs r3, r3, #4
	adds r3, #0xa
	adds r0, r5, #0
	bl sub_08009ACC
	adds r0, r5, #0
	movs r1, #0xff
	bl sub_08009B40
	ldr r0, [r6]
	str r5, [r0, #0x74]
	ldrb r1, [r4, #3]
	movs r0, #0x24
	ands r0, r1
	cmp r0, #4
	bne _08037122
	adds r0, r5, #0
	movs r1, #1
	bl sub_08009A34
_08037122:
	ldr r0, [r6]
	movs r1, #0x14
	ldrsh r0, [r0, r1]
	ldr r1, _08037148 @ =sub_08037088
	bl sub_08007BA0
	bl sub_08036FD8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08037138: .4byte 0x030013C0
_0803713C: .4byte 0x02034BF0
_08037140: .4byte 0x080ABFE8
_08037144: .4byte 0x080ABF30
_08037148: .4byte sub_08037088

	thumb_func_start sub_0803714C
sub_0803714C: @ 0x0803714C
	push {lr}
	ldr r0, _08037184 @ =0x030013C0
	ldr r0, [r0]
	mov ip, r0
	ldr r0, [r0, #0x74]
	movs r1, #0xb9
	lsls r1, r1, #1
	add r1, ip
	ldr r3, _08037188 @ =0x02034BF0
	ldrh r1, [r1]
	ldrh r2, [r3, #0xe]
	subs r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0xba
	lsls r2, r2, #1
	add r2, ip
	ldrh r3, [r3, #0x10]
	adds r3, #0x26
	ldrh r2, [r2]
	subs r2, r2, r3
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl sub_08009A70
	pop {r0}
	bx r0
	.align 2, 0
_08037184: .4byte 0x030013C0
_08037188: .4byte 0x02034BF0

	thumb_func_start sub_0803718C
sub_0803718C: @ 0x0803718C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	bl sub_08007BD4
	adds r7, r0, #0
	ldrb r6, [r7]
	cmp r6, #1
	beq _08037212
	cmp r6, #1
	bgt _080371A8
	cmp r6, #0
	beq _080371B4
	b _080372B0
_080371A8:
	cmp r6, #2
	beq _0803728C
	cmp r6, #3
	bne _080371B2
	b _080372AC
_080371B2:
	b _080372B0
_080371B4:
	ldr r0, _08037280 @ =0x02034BF0
	mov r8, r0
	ldrb r2, [r0, #1]
	lsls r1, r2, #0x1c
	lsrs r1, r1, #0x18
	movs r0, #0xf
	ands r0, r2
	orrs r0, r1
	mov r1, r8
	strb r0, [r1, #1]
	ldr r5, _08037284 @ =0x030013C0
	ldr r0, [r5]
	ldr r0, [r0, #0x74]
	movs r1, #1
	bl sub_08009A34
	ldr r0, [r5]
	ldr r4, [r0, #0x74]
	bl sub_08009DDC
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_08009B9C
	ldr r0, [r5]
	ldr r0, [r0, #0x74]
	movs r1, #1
	bl sub_08009B84
	ldr r0, [r5]
	ldr r0, [r0, #0x74]
	movs r2, #8
	rsbs r2, r2, #0
	movs r1, #0
	bl sub_08009C14
	ldr r0, [r5]
	ldr r0, [r0, #0x74]
	mov r2, r8
	ldrb r1, [r2, #1]
	lsrs r1, r1, #4
	adds r1, #0xa
	bl sub_08009AFC
	strh r6, [r7, #2]
	movs r0, #1
	strb r0, [r7]
_08037212:
	ldr r3, _08037284 @ =0x030013C0
	mov r8, r3
	ldr r4, [r3]
	ldr r0, [r4, #0x74]
	movs r5, #0xb9
	lsls r5, r5, #1
	adds r1, r4, r5
	ldr r3, _08037280 @ =0x02034BF0
	ldrh r1, [r1]
	ldrh r2, [r3, #0xe]
	subs r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r5, #2
	adds r2, r4, r5
	ldrh r4, [r3, #0x10]
	adds r4, #0x26
	ldrh r2, [r2]
	ldr r5, _08037288 @ =0x080880FC
	ldrh r3, [r7, #2]
	lsls r3, r3, #2
	adds r3, r3, r5
	subs r2, r2, r4
	ldrh r3, [r3]
	adds r2, r2, r3
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl sub_08009A70
	mov r1, r8
	ldr r0, [r1]
	ldr r0, [r0, #0x74]
	ldr r0, [r0, #0x24]
	ldrh r1, [r7, #2]
	lsls r1, r1, #2
	adds r5, #2
	adds r1, r1, r5
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r1, r2, #0
	bl sub_08009E84
	ldrh r0, [r7, #2]
	adds r0, #1
	strh r0, [r7, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x1a
	bls _080372B0
	movs r0, #0
	strh r0, [r7, #2]
	movs r0, #2
	strb r0, [r7]
	b _080372B0
	.align 2, 0
_08037280: .4byte 0x02034BF0
_08037284: .4byte 0x030013C0
_08037288: .4byte 0x080880FC
_0803728C:
	ldr r4, _080372A8 @ =0x030013C0
	ldr r0, [r4]
	ldr r0, [r0, #0x74]
	ldr r0, [r0, #0x24]
	bl sub_08009E54
	ldr r0, [r4]
	ldr r0, [r0, #0x74]
	movs r1, #0
	bl sub_08009B9C
	movs r0, #3
	strb r0, [r7]
	b _080372B0
	.align 2, 0
_080372A8: .4byte 0x030013C0
_080372AC:
	bl sub_08036FD8
_080372B0:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080372BC
sub_080372BC: @ 0x080372BC
	push {r4, r5, r6, lr}
	bl sub_08007BD4
	adds r6, r0, #0
	ldrb r0, [r6]
	cmp r0, #1
	beq _08037324
	cmp r0, #1
	bgt _080372D4
	cmp r0, #0
	beq _080372DA
	b _080373A6
_080372D4:
	cmp r0, #2
	beq _0803738C
	b _080373A6
_080372DA:
	ldr r5, _0803731C @ =0x030013C0
	ldr r0, [r5]
	ldr r4, [r0, #0x74]
	bl sub_08009DDC
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_08009B9C
	ldr r0, [r5]
	ldr r0, [r0, #0x74]
	movs r1, #1
	bl sub_08009B84
	ldr r0, [r5]
	ldr r0, [r0, #0x74]
	movs r2, #8
	rsbs r2, r2, #0
	movs r1, #0
	bl sub_08009C14
	ldr r0, [r5]
	ldr r0, [r0, #0x74]
	ldr r1, _08037320 @ =0x02034BF0
	ldrb r1, [r1, #1]
	lsrs r1, r1, #4
	adds r1, #0xa
	bl sub_08009AFC
	movs r0, #1
	strb r0, [r6]
	b _080373A6
	.align 2, 0
_0803731C: .4byte 0x030013C0
_08037320: .4byte 0x02034BF0
_08037324:
	ldr r4, _0803737C @ =0x02034BF0
	ldr r0, [r4, #0x1c]
	ldrh r1, [r0, #2]
	movs r0, #7
	ands r0, r1
	cmp r0, #3
	beq _08037356
	ldr r0, _08037380 @ =0x030013C0
	ldr r0, [r0]
	ldr r0, [r0, #0x74]
	ldr r0, [r0, #0x24]
	ldr r2, _08037384 @ =0x08088190
	ldrb r1, [r4, #4]
	lsls r1, r1, #0x1d
	lsrs r1, r1, #0x1b
	adds r1, r1, r2
	ldrh r2, [r6, #2]
	ldr r1, [r1]
	lsls r2, r2, #1
	adds r2, r2, r1
	movs r1, #0
	ldrsh r2, [r2, r1]
	adds r1, r2, #0
	bl sub_08009E84
_08037356:
	ldrh r0, [r6, #2]
	adds r0, #1
	strh r0, [r6, #2]
	ldr r2, _08037388 @ =0x08088168
	ldrb r1, [r4, #4]
	lsls r1, r1, #0x1d
	lsrs r1, r1, #0x1c
	adds r1, r1, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r1]
	cmp r0, r1
	blo _080373A6
	movs r0, #0
	strh r0, [r6, #2]
	movs r0, #2
	strb r0, [r6]
	b _080373A6
	.align 2, 0
_0803737C: .4byte 0x02034BF0
_08037380: .4byte 0x030013C0
_08037384: .4byte 0x08088190
_08037388: .4byte 0x08088168
_0803738C:
	ldr r4, _080373AC @ =0x030013C0
	ldr r0, [r4]
	ldr r0, [r0, #0x74]
	ldr r0, [r0, #0x24]
	bl sub_08009E54
	ldr r0, [r4]
	ldr r0, [r0, #0x74]
	movs r1, #0
	bl sub_08009B9C
	bl sub_08036FD8
_080373A6:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080373AC: .4byte 0x030013C0

	thumb_func_start sub_080373B0
sub_080373B0: @ 0x080373B0
	push {r4, lr}
	bl sub_08007BD4
	adds r4, r0, #0
	ldrb r0, [r4]
	cmp r0, #0
	beq _080373C4
	cmp r0, #1
	beq _080373EC
	b _080373F0
_080373C4:
	ldr r0, _080373E4 @ =0x030013C0
	ldr r0, [r0]
	ldr r0, [r0, #0x74]
	ldr r1, _080373E8 @ =0x02034BF0
	ldrb r1, [r1, #1]
	lsrs r1, r1, #4
	adds r1, #0xa
	bl sub_08009AFC
	movs r0, #6
	bl sub_08007AC0
	movs r0, #1
	strb r0, [r4]
	b _080373F0
	.align 2, 0
_080373E4: .4byte 0x030013C0
_080373E8: .4byte 0x02034BF0
_080373EC:
	bl sub_08036FD8
_080373F0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080373F8
sub_080373F8: @ 0x080373F8
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _0803742C @ =0x030013C0
	ldr r0, [r5]
	movs r1, #0x16
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	movs r1, #0
	strb r1, [r0]
	strh r1, [r0, #2]
	ldr r0, [r5]
	movs r1, #0x16
	ldrsh r0, [r0, r1]
	ldr r1, _08037430 @ =0x080881B4
	lsls r4, r4, #2
	adds r4, r4, r1
	ldr r1, [r4]
	bl sub_08007B84
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803742C: .4byte 0x030013C0
_08037430: .4byte 0x080881B4

	thumb_func_start sub_08037434
sub_08037434: @ 0x08037434
	push {lr}
	movs r0, #0
	bl sub_080373F8
	pop {r0}
	bx r0

	thumb_func_start sub_08037440
sub_08037440: @ 0x08037440
	push {r4, r5, lr}
	movs r4, #0
	ldr r5, _08037464 @ =0x030013C0
_08037446:
	ldr r0, [r5]
	lsls r1, r4, #2
	adds r0, #0x78
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0
	bl sub_08009A34
	adds r4, #1
	cmp r4, #4
	ble _08037446
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08037464: .4byte 0x030013C0

	thumb_func_start sub_08037468
sub_08037468: @ 0x08037468
	push {r4, lr}
	ldr r4, _080374CC @ =0x030013C0
	ldr r0, [r4]
	ldr r0, [r0, #0x78]
	movs r1, #5
	bl sub_08009AFC
	ldr r0, [r4]
	ldr r0, [r0, #0x78]
	movs r1, #1
	bl sub_08009A34
	ldr r0, [r4]
	ldr r0, [r0, #0x7c]
	movs r1, #0
	bl sub_08009A34
	ldr r0, [r4]
	adds r0, #0x80
	ldr r0, [r0]
	movs r1, #0
	bl sub_08009A34
	ldr r0, [r4]
	adds r0, #0x88
	ldr r0, [r0]
	movs r1, #4
	bl sub_08009AFC
	ldr r0, [r4]
	adds r0, #0x88
	ldr r0, [r0]
	movs r1, #1
	bl sub_08009A34
	ldr r0, [r4]
	adds r0, #0x84
	ldr r0, [r0]
	movs r1, #3
	bl sub_08009AFC
	ldr r0, [r4]
	adds r0, #0x84
	ldr r0, [r0]
	movs r1, #1
	bl sub_08009A34
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080374CC: .4byte 0x030013C0

	thumb_func_start sub_080374D0
sub_080374D0: @ 0x080374D0
	push {r4, lr}
	ldr r0, _080374F8 @ =0x02034BF0
	ldr r0, [r0, #0x1c]
	ldrh r1, [r0, #2]
	movs r0, #7
	ands r0, r1
	cmp r0, #3
	bne _08037500
	ldr r4, _080374FC @ =0x030013C0
	ldr r0, [r4]
	ldr r0, [r0, #0x78]
	movs r1, #0xa
	bl sub_08009AFC
	ldr r0, [r4]
	ldr r0, [r0, #0x78]
	movs r1, #1
	bl sub_08009A34
	b _0803750C
	.align 2, 0
_080374F8: .4byte 0x02034BF0
_080374FC: .4byte 0x030013C0
_08037500:
	ldr r0, _08037534 @ =0x030013C0
	ldr r0, [r0]
	ldr r0, [r0, #0x78]
	movs r1, #0
	bl sub_08009A34
_0803750C:
	ldr r0, _08037538 @ =0x02034BF0
	ldrh r0, [r0, #2]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1c
	cmp r0, #0
	beq _0803753C
	ldr r4, _08037534 @ =0x030013C0
	ldr r0, [r4]
	adds r0, #0x88
	ldr r0, [r0]
	movs r1, #9
	bl sub_08009AFC
	ldr r0, [r4]
	ldr r0, [r0, #0x7c]
	movs r1, #1
	bl sub_08009A34
	b _08037548
	.align 2, 0
_08037534: .4byte 0x030013C0
_08037538: .4byte 0x02034BF0
_0803753C:
	ldr r0, _08037598 @ =0x030013C0
	ldr r0, [r0]
	ldr r0, [r0, #0x7c]
	movs r1, #0
	bl sub_08009A34
_08037548:
	ldr r4, _08037598 @ =0x030013C0
	ldr r0, [r4]
	adds r0, #0x80
	ldr r0, [r0]
	movs r1, #1
	bl sub_08009AFC
	ldr r0, [r4]
	adds r0, #0x80
	ldr r0, [r0]
	movs r1, #1
	bl sub_08009A34
	ldr r0, [r4]
	adds r0, #0x88
	ldr r0, [r0]
	movs r1, #4
	bl sub_08009AFC
	ldr r0, [r4]
	adds r0, #0x88
	ldr r0, [r0]
	movs r1, #1
	bl sub_08009A34
	ldr r0, [r4]
	adds r0, #0x84
	ldr r0, [r0]
	movs r1, #3
	bl sub_08009AFC
	ldr r0, [r4]
	adds r0, #0x84
	ldr r0, [r0]
	movs r1, #1
	bl sub_08009A34
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08037598: .4byte 0x030013C0

	thumb_func_start sub_0803759C
sub_0803759C: @ 0x0803759C
	push {r4, lr}
	ldr r4, _08037600 @ =0x030013C0
	ldr r0, [r4]
	ldr r0, [r0, #0x78]
	movs r1, #8
	bl sub_08009AFC
	ldr r0, [r4]
	ldr r0, [r0, #0x78]
	movs r1, #1
	bl sub_08009A34
	ldr r0, [r4]
	adds r0, #0x88
	ldr r0, [r0]
	movs r1, #9
	bl sub_08009AFC
	ldr r0, [r4]
	ldr r0, [r0, #0x7c]
	movs r1, #1
	bl sub_08009A34
	ldr r0, [r4]
	adds r0, #0x80
	ldr r0, [r0]
	movs r1, #0
	bl sub_08009AFC
	ldr r0, [r4]
	adds r0, #0x80
	ldr r0, [r0]
	movs r1, #1
	bl sub_08009A34
	ldr r0, [r4]
	adds r0, #0x88
	ldr r0, [r0]
	movs r1, #0
	bl sub_08009A34
	ldr r0, [r4]
	adds r0, #0x84
	ldr r0, [r0]
	movs r1, #0
	bl sub_08009A34
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08037600: .4byte 0x030013C0

	thumb_func_start sub_08037604
sub_08037604: @ 0x08037604
	push {r4, lr}
	ldr r4, _08037668 @ =0x030013C0
	ldr r0, [r4]
	ldr r0, [r0, #0x78]
	movs r1, #6
	bl sub_08009AFC
	ldr r0, [r4]
	ldr r0, [r0, #0x78]
	movs r1, #1
	bl sub_08009A34
	ldr r0, [r4]
	adds r0, #0x88
	ldr r0, [r0]
	movs r1, #9
	bl sub_08009AFC
	ldr r0, [r4]
	ldr r0, [r0, #0x7c]
	movs r1, #1
	bl sub_08009A34
	ldr r0, [r4]
	adds r0, #0x80
	ldr r0, [r0]
	movs r1, #2
	bl sub_08009AFC
	ldr r0, [r4]
	adds r0, #0x80
	ldr r0, [r0]
	movs r1, #1
	bl sub_08009A34
	ldr r0, [r4]
	adds r0, #0x88
	ldr r0, [r0]
	movs r1, #0
	bl sub_08009A34
	ldr r0, [r4]
	adds r0, #0x84
	ldr r0, [r0]
	movs r1, #0
	bl sub_08009A34
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08037668: .4byte 0x030013C0

	thumb_func_start sub_0803766C
sub_0803766C: @ 0x0803766C
	push {r4, r5, lr}
	movs r4, #0
	ldr r5, _0803768C @ =0x030013C0
_08037672:
	ldr r0, [r5]
	lsls r1, r4, #2
	adds r0, #0x78
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_08009A00
	adds r4, #1
	cmp r4, #4
	ble _08037672
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803768C: .4byte 0x030013C0

	thumb_func_start sub_08037690
sub_08037690: @ 0x08037690
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	movs r6, #0
	ldr r0, _0803773C @ =0x030013C0
	mov r8, r0
	ldr r7, _08037740 @ =0x080873E8
_0803769E:
	movs r0, #1
	movs r1, #0x20
	bl sub_080099E0
	adds r4, r0, #0
	movs r1, #0
	bl sub_08009A34
	lsls r5, r6, #2
	movs r0, #0
	ldrsh r1, [r7, r0]
	movs r0, #2
	ldrsh r2, [r7, r0]
	adds r0, r4, #0
	bl sub_08009A70
	mov r1, r8
	ldr r0, [r1]
	movs r1, #0xac
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl sub_08009A78
	adds r0, r4, #0
	movs r1, #2
	bl sub_08009AB4
	ldr r1, _08037744 @ =0x080FE2F8
	ldr r0, _08037748 @ =0x03004400
	ldrb r2, [r0, #0x14]
	lsls r2, r2, #2
	adds r1, r2, r1
	ldr r1, [r1]
	ldr r0, _0803774C @ =0x080FE2EC
	adds r2, r2, r0
	ldr r2, [r2]
	ldr r3, _08037750 @ =0x080873FC
	lsls r0, r6, #1
	adds r0, r0, r3
	ldrb r3, [r0]
	adds r0, r4, #0
	bl sub_08009ACC
	adds r0, r4, #0
	movs r1, #0
	bl sub_08009B40
	mov r1, r8
	ldr r0, [r1]
	adds r0, #0x78
	adds r0, r0, r5
	str r4, [r0]
	adds r7, #4
	adds r6, #1
	cmp r6, #4
	ble _0803769E
	ldr r0, _08037754 @ =0x02034BF0
	ldrb r0, [r0, #0xb]
	cmp r0, #0xb
	bne _0803771E
	bl sub_08037604
_0803771E:
	ldr r0, _0803773C @ =0x030013C0
	ldr r0, [r0]
	movs r1, #0x16
	ldrsh r0, [r0, r1]
	ldr r1, _08037758 @ =sub_0803766C
	bl sub_08007BA0
	bl sub_08037434
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803773C: .4byte 0x030013C0
_08037740: .4byte 0x080873E8
_08037744: .4byte 0x080FE2F8
_08037748: .4byte 0x03004400
_0803774C: .4byte 0x080FE2EC
_08037750: .4byte 0x080873FC
_08037754: .4byte 0x02034BF0
_08037758: .4byte sub_0803766C

	thumb_func_start sub_0803775C
sub_0803775C: @ 0x0803775C
	bx lr
	.align 2, 0

	thumb_func_start sub_08037760
sub_08037760: @ 0x08037760
	push {r4, r5, r6, lr}
	bl sub_08007BD4
	adds r4, r0, #0
	ldrb r5, [r4, #1]
	cmp r5, #1
	beq _08037814
	cmp r5, #1
	bgt _08037778
	cmp r5, #0
	beq _0803777E
	b _08037854
_08037778:
	cmp r5, #2
	beq _0803784A
	b _08037854
_0803777E:
	ldr r6, _08037808 @ =0x02034BF0
	ldrb r0, [r6, #4]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1d
	cmp r0, #2
	ble _080377A2
	movs r0, #7
	strh r0, [r4, #2]
	ldr r0, [r4, #4]
	movs r1, #1
	bl sub_08009A34
	ldrb r1, [r4]
	movs r0, #8
	subs r0, r0, r1
	lsls r0, r0, #1
	bl sub_08007AC0
_080377A2:
	ldr r1, _0803780C @ =0x08088218
	ldrb r0, [r6, #4]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1b
	subs r0, #4
	adds r0, r0, r1
	ldr r2, [r0]
	ldrb r0, [r4]
	lsls r0, r0, #2
	adds r2, r2, r0
	movs r1, #0
	ldrsh r0, [r2, r1]
	ldrh r3, [r4, #2]
	muls r0, r3, r0
	movs r6, #0xf0
	lsls r6, r6, #2
	adds r1, r0, r6
	cmp r1, #0
	bge _080377CC
	adds r6, #7
	adds r1, r0, r6
_080377CC:
	asrs r1, r1, #3
	movs r6, #2
	ldrsh r0, [r2, r6]
	muls r0, r3, r0
	movs r3, #0x98
	lsls r3, r3, #1
	adds r2, r0, r3
	cmp r2, #0
	bge _080377E2
	ldr r6, _08037810 @ =0x00000137
	adds r2, r0, r6
_080377E2:
	ldr r0, [r4, #4]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	lsls r2, r2, #0xd
	asrs r2, r2, #0x10
	bl sub_08009A70
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #7
	bls _08037854
	strh r5, [r4, #2]
	movs r0, #1
	strb r0, [r4, #1]
	b _08037854
	.align 2, 0
_08037808: .4byte 0x02034BF0
_0803780C: .4byte 0x08088218
_08037810: .4byte 0x00000137
_08037814:
	ldrh r0, [r4, #2]
	lsrs r0, r0, #2
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0803782A
	ldr r0, [r4, #4]
	movs r1, #1
	bl sub_08009A34
	b _08037832
_0803782A:
	ldr r0, [r4, #4]
	movs r1, #0
	bl sub_08009A34
_08037832:
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x17
	bls _08037854
	movs r0, #0
	strh r0, [r4, #2]
	movs r0, #2
	strb r0, [r4, #1]
	b _08037854
_0803784A:
	ldr r0, [r4, #4]
	bl sub_08009A00
	bl sub_08007A64
_08037854:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0803785C
sub_0803785C: @ 0x0803785C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	movs r6, #0
	ldr r0, _08037908 @ =0x08088228
	mov r8, r0
	ldr r7, _0803790C @ =0x02034BF0
_0803786A:
	ldr r0, _08037910 @ =sub_08037760
	movs r1, #0x43
	movs r2, #0
	bl sub_08007968
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #1
	movs r1, #0x1f
	bl sub_080099E0
	adds r5, r0, #0
	movs r1, #1
	bl sub_08009A34
	adds r0, r5, #0
	movs r1, #0x78
	movs r2, #0x26
	bl sub_08009A70
	ldr r0, _08037914 @ =0x030013C0
	ldr r0, [r0]
	movs r1, #0xae
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r5, #0
	bl sub_08009A78
	adds r0, r5, #0
	movs r1, #3
	bl sub_08009AB4
	ldrb r0, [r7, #4]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1c
	subs r0, #2
	add r0, r8
	ldrb r3, [r0]
	adds r0, r5, #0
	ldr r1, _08037918 @ =0x080ABFE8
	ldr r2, _0803791C @ =0x080ABF30
	bl sub_08009ACC
	adds r0, r5, #0
	movs r1, #0xff
	bl sub_08009B40
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r4, #0
	bl sub_08007BBC
	movs r1, #0
	strb r1, [r0, #1]
	strh r1, [r0, #2]
	str r5, [r0, #4]
	strb r6, [r0]
	ldrb r0, [r7, #4]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1d
	cmp r0, #2
	ble _080378F8
	adds r0, r5, #0
	bl sub_08009A34
	lsls r1, r6, #1
	adds r0, r4, #0
	bl sub_08007AD8
_080378F8:
	adds r6, #1
	cmp r6, #7
	ble _0803786A
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08037908: .4byte 0x08088228
_0803790C: .4byte 0x02034BF0
_08037910: .4byte sub_08037760
_08037914: .4byte 0x030013C0
_08037918: .4byte 0x080ABFE8
_0803791C: .4byte 0x080ABF30

	thumb_func_start sub_08037920
sub_08037920: @ 0x08037920
	push {r4, r5, lr}
	bl sub_08007BD4
	adds r5, r0, #0
	ldrb r0, [r5]
	cmp r0, #0
	beq _08037934
	cmp r0, #1
	beq _08037984
	b _080379B4
_08037934:
	ldr r0, _0803797C @ =0x030013C0
	ldr r1, [r0]
	movs r0, #0xb9
	lsls r0, r0, #1
	adds r2, r1, r0
	ldrh r0, [r2]
	strh r0, [r5, #2]
	movs r0, #0xba
	lsls r0, r0, #1
	adds r4, r1, r0
	ldrh r0, [r4]
	strh r0, [r5, #4]
	ldr r0, [r5, #8]
	ldr r3, _08037980 @ =0x02034BF0
	ldrh r1, [r2]
	ldrh r2, [r3, #0xe]
	subs r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldrh r2, [r4]
	ldrh r3, [r3, #0x10]
	subs r2, r2, r3
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl sub_08009A70
	ldr r0, [r5, #8]
	movs r1, #1
	bl sub_08009A34
	ldr r0, [r5, #8]
	bl sub_08009BA0
	movs r0, #1
	strb r0, [r5]
	b _080379B4
	.align 2, 0
_0803797C: .4byte 0x030013C0
_08037980: .4byte 0x02034BF0
_08037984:
	ldr r0, [r5, #8]
	ldr r3, _080379BC @ =0x02034BF0
	ldrh r1, [r5, #2]
	ldrh r2, [r3, #0xe]
	subs r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldrh r2, [r5, #4]
	ldrh r3, [r3, #0x10]
	subs r2, r2, r3
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl sub_08009A70
	ldr r1, [r5, #8]
	ldrb r0, [r1, #1]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _080379B4
	adds r0, r1, #0
	bl sub_08009A00
	bl sub_08007A64
_080379B4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080379BC: .4byte 0x02034BF0

	thumb_func_start sub_080379C0
sub_080379C0: @ 0x080379C0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r7, #0
	ldr r0, _08037A98 @ =0x030013C0
	mov sb, r0
	movs r1, #0xba
	lsls r1, r1, #1
	mov sl, r1
	ldr r2, _08037A9C @ =0x02034BF0
	mov r8, r2
_080379DA:
	ldr r0, _08037AA0 @ =sub_08037920
	movs r1, #0x43
	movs r2, #0
	bl sub_08007968
	adds r5, r0, #0
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	adds r0, r5, #0
	bl sub_08007BBC
	adds r6, r0, #0
	mov r3, sb
	ldr r1, [r3]
	movs r2, #0xb9
	lsls r2, r2, #1
	adds r0, r1, r2
	ldrh r0, [r0]
	strh r0, [r6, #2]
	add r1, sl
	ldrh r0, [r1]
	strh r0, [r6, #4]
	movs r0, #2
	movs r1, #0x81
	bl sub_080099E0
	adds r4, r0, #0
	movs r1, #0
	bl sub_08009A34
	mov r3, sb
	ldr r2, [r3]
	movs r1, #0xb9
	lsls r1, r1, #1
	adds r0, r2, r1
	ldrh r1, [r0]
	mov r3, r8
	ldrh r0, [r3, #0xe]
	subs r1, r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add r2, sl
	ldrh r2, [r2]
	ldrh r0, [r3, #0x10]
	subs r2, r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r4, #0
	bl sub_08009A70
	mov r1, sb
	ldr r0, [r1]
	movs r2, #0xb0
	lsls r2, r2, #1
	adds r0, r0, r2
	ldr r1, [r0]
	adds r0, r4, #0
	bl sub_08009A78
	adds r0, r4, #0
	movs r1, #1
	bl sub_08009AB4
	ldr r1, _08037AA4 @ =0x080873CC
	mov r3, r8
	ldrb r0, [r3]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	adds r0, r0, r1
	ldrb r3, [r0]
	adds r0, r4, #0
	ldr r1, _08037AA8 @ =0x080B6DA8
	ldr r2, _08037AAC @ =0x080B6D44
	bl sub_08009ACC
	adds r0, r4, #0
	movs r1, #0
	bl sub_08009B40
	str r4, [r6, #8]
	lsls r1, r7, #3
	adds r0, r5, #0
	bl sub_08007AD8
	adds r7, #1
	cmp r7, #1
	ble _080379DA
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08037A98: .4byte 0x030013C0
_08037A9C: .4byte 0x02034BF0
_08037AA0: .4byte sub_08037920
_08037AA4: .4byte 0x080873CC
_08037AA8: .4byte 0x080B6DA8
_08037AAC: .4byte 0x080B6D44

	thumb_func_start sub_08037AB0
sub_08037AB0: @ 0x08037AB0
	lsls r0, r0, #0x18
	ldr r2, _08037AC0 @ =0x02034BF0
	ldr r1, _08037AC4 @ =0x08088230
	lsrs r0, r0, #0x16
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r2, #0x1c]
	bx lr
	.align 2, 0
_08037AC0: .4byte 0x02034BF0
_08037AC4: .4byte 0x08088230

	thumb_func_start sub_08037AC8
sub_08037AC8: @ 0x08037AC8
	ldr r1, _08037AD0 @ =0x02034BF0
	ldr r0, _08037AD4 @ =0x0808BE00
	str r0, [r1, #0x1c]
	bx lr
	.align 2, 0
_08037AD0: .4byte 0x02034BF0
_08037AD4: .4byte 0x0808BE00

	thumb_func_start sub_08037AD8
sub_08037AD8: @ 0x08037AD8
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _08037B0C @ =0x030013C0
	ldr r0, [r5]
	movs r1, #0x18
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	movs r1, #0
	strb r1, [r0]
	strh r1, [r0, #2]
	ldr r0, [r5]
	movs r1, #0x18
	ldrsh r0, [r0, r1]
	ldr r1, _08037B10 @ =0x0808827C
	lsls r4, r4, #2
	adds r4, r4, r1
	ldr r1, [r4]
	bl sub_08007B84
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08037B0C: .4byte 0x030013C0
_08037B10: .4byte 0x0808827C

	thumb_func_start sub_08037B14
sub_08037B14: @ 0x08037B14
	push {lr}
	ldr r0, _08037B30 @ =0x030013C0
	ldr r1, [r0]
	adds r1, #0x68
	ldrb r2, [r1]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	movs r0, #0
	bl sub_08037AD8
	pop {r0}
	bx r0
	.align 2, 0
_08037B30: .4byte 0x030013C0

	thumb_func_start sub_08037B34
sub_08037B34: @ 0x08037B34
	push {lr}
	ldr r0, _08037B50 @ =0x030013C0
	ldr r1, [r0]
	adds r1, #0x68
	ldrb r0, [r1]
	movs r2, #0x40
	orrs r0, r2
	strb r0, [r1]
	movs r0, #1
	bl sub_08037AD8
	pop {r0}
	bx r0
	.align 2, 0
_08037B50: .4byte 0x030013C0

	thumb_func_start sub_08037B54
sub_08037B54: @ 0x08037B54
	push {r4, lr}
	ldr r4, _08037B98 @ =0x030013C0
	ldr r0, [r4]
	movs r1, #0x18
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	ldr r2, _08037B9C @ =0x02034BF0
	movs r1, #0x90
	lsls r1, r1, #1
	adds r2, r2, r1
	ldr r1, [r2]
	ldrb r1, [r1]
	lsls r1, r1, #3
	adds r1, #0x10
	strh r1, [r0, #4]
	ldr r1, [r2]
	ldrb r1, [r1, #1]
	lsls r1, r1, #3
	adds r1, #0x18
	strh r1, [r0, #6]
	ldr r1, [r4]
	adds r1, #0x68
	ldrb r0, [r1]
	movs r2, #0x40
	orrs r0, r2
	strb r0, [r1]
	movs r0, #2
	bl sub_08037AD8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08037B98: .4byte 0x030013C0
_08037B9C: .4byte 0x02034BF0

	thumb_func_start sub_08037BA0
sub_08037BA0: @ 0x08037BA0
	push {lr}
	ldr r0, _08037BB4 @ =0x030013C0
	ldr r0, [r0]
	adds r0, #0xb8
	ldr r0, [r0]
	bl sub_08009A00
	pop {r0}
	bx r0
	.align 2, 0
_08037BB4: .4byte 0x030013C0

	thumb_func_start sub_08037BB8
sub_08037BB8: @ 0x08037BB8
	push {r4, r5, r6, lr}
	movs r0, #2
	movs r1, #0x60
	bl sub_080099E0
	adds r5, r0, #0
	ldr r4, _08037C00 @ =0x02034BF0
	movs r0, #0x90
	lsls r0, r0, #1
	adds r6, r4, r0
	ldr r0, [r6]
	cmp r0, #0
	beq _08037C04
	adds r0, r5, #0
	movs r1, #1
	bl sub_08009A34
	ldr r2, [r6]
	ldrb r1, [r2]
	lsls r1, r1, #3
	ldrh r0, [r4, #0xe]
	subs r0, #0x10
	subs r1, r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldrb r2, [r2, #1]
	lsls r2, r2, #3
	ldrh r0, [r4, #0x10]
	subs r0, #0x18
	subs r2, r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r5, #0
	bl sub_08009A70
	b _08037C0C
	.align 2, 0
_08037C00: .4byte 0x02034BF0
_08037C04:
	adds r0, r5, #0
	movs r1, #0
	bl sub_08009A34
_08037C0C:
	ldr r4, _08037C58 @ =0x030013C0
	ldr r0, [r4]
	movs r1, #0xb2
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r5, #0
	bl sub_08009A78
	adds r0, r5, #0
	movs r1, #0xb
	bl sub_08009AB4
	ldr r1, _08037C5C @ =0x080FCC18
	ldr r2, _08037C60 @ =0x080FCC10
	adds r0, r5, #0
	movs r3, #0
	bl sub_08009ACC
	adds r0, r5, #0
	movs r1, #0xff
	bl sub_08009B40
	ldr r1, [r4]
	adds r0, r1, #0
	adds r0, #0xb8
	str r5, [r0]
	movs r2, #0x18
	ldrsh r0, [r1, r2]
	ldr r1, _08037C64 @ =sub_08037BA0
	bl sub_08007BA0
	bl sub_08037B14
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08037C58: .4byte 0x030013C0
_08037C5C: .4byte 0x080FCC18
_08037C60: .4byte 0x080FCC10
_08037C64: .4byte sub_08037BA0

	thumb_func_start sub_08037C68
sub_08037C68: @ 0x08037C68
	push {r4, lr}
	ldr r4, _08037CA8 @ =0x02034BF0
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r3, [r0]
	cmp r3, #0
	beq _08037CA0
	ldr r0, _08037CAC @ =0x030013C0
	ldr r0, [r0]
	adds r0, #0xb8
	ldr r0, [r0]
	ldrb r1, [r3]
	lsls r1, r1, #3
	ldrh r2, [r4, #0xe]
	subs r2, #0x10
	subs r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldrb r2, [r3, #1]
	lsls r2, r2, #3
	ldrh r3, [r4, #0x10]
	subs r3, #0x18
	subs r2, r2, r3
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl sub_08009A70
_08037CA0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08037CA8: .4byte 0x02034BF0
_08037CAC: .4byte 0x030013C0

	thumb_func_start sub_08037CB0
sub_08037CB0: @ 0x08037CB0
	push {r4, r5, r6, lr}
	bl sub_08007BD4
	adds r5, r0, #0
	ldrb r0, [r5]
	cmp r0, #4
	bls _08037CC0
	b _08037DCA
_08037CC0:
	lsls r0, r0, #2
	ldr r1, _08037CCC @ =_08037CD0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08037CCC: .4byte _08037CD0
_08037CD0: @ jump table
	.4byte _08037CE4 @ case 0
	.4byte _08037D24 @ case 1
	.4byte _08037D58 @ case 2
	.4byte _08037DBC @ case 3
	.4byte _08037DC6 @ case 4
_08037CE4:
	ldr r4, _08037D1C @ =0x030013C0
	ldr r0, [r4]
	adds r0, #0xb8
	ldr r0, [r0]
	movs r1, #1
	bl sub_08009A34
	ldr r0, [r4]
	adds r0, #0xb8
	ldr r0, [r0]
	ldr r2, _08037D20 @ =0x02034BF0
	movs r3, #0x90
	lsls r3, r3, #1
	adds r1, r2, r3
	ldr r1, [r1]
	ldrb r1, [r1]
	lsls r1, r1, #3
	ldrh r2, [r2, #0xe]
	subs r2, #0x10
	subs r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0
	bl sub_08009A70
	movs r0, #1
	strb r0, [r5]
	b _08037DCA
	.align 2, 0
_08037D1C: .4byte 0x030013C0
_08037D20: .4byte 0x02034BF0
_08037D24:
	ldr r0, _08037DB4 @ =0x030013C0
	ldr r0, [r0]
	adds r0, #0xb8
	ldr r0, [r0]
	movs r4, #8
	ldrsh r3, [r0, r4]
	ldr r2, _08037DB8 @ =0x02034BF0
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r2, r1
	ldr r0, [r0]
	ldrb r1, [r0, #1]
	lsls r1, r1, #3
	movs r4, #0x10
	ldrsh r0, [r2, r4]
	adds r0, #0x14
	subs r1, r1, r0
	cmp r3, r1
	blt _08037D58
	movs r0, #0xfb
	bl m4aSongNumStart
	bl sub_080380B8
	movs r0, #2
	strb r0, [r5]
_08037D58:
	ldr r6, _08037DB4 @ =0x030013C0
	ldr r0, [r6]
	adds r0, #0xb8
	ldr r0, [r0]
	movs r1, #8
	ldrsh r4, [r0, r1]
	ldrh r1, [r5, #2]
	adds r0, r1, #1
	strh r0, [r5, #2]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xf
	adds r1, #1
	lsls r0, r1, #3
	adds r0, r0, r1
	movs r1, #0x78
	bl __divsi3
	adds r4, r4, r0
	ldr r2, _08037DB8 @ =0x02034BF0
	movs r3, #0x90
	lsls r3, r3, #1
	adds r0, r2, r3
	ldr r0, [r0]
	ldrb r1, [r0, #1]
	lsls r1, r1, #3
	movs r3, #0x10
	ldrsh r0, [r2, r3]
	subs r0, #0x18
	subs r1, r1, r0
	cmp r4, r1
	blt _08037DA0
	adds r4, r1, #0
	movs r0, #0
	strh r0, [r5, #2]
	movs r0, #3
	strb r0, [r5]
_08037DA0:
	ldr r0, [r6]
	adds r0, #0xb8
	ldr r0, [r0]
	movs r2, #6
	ldrsh r1, [r0, r2]
	lsls r2, r4, #0x10
	asrs r2, r2, #0x10
	bl sub_08009A70
	b _08037DCA
	.align 2, 0
_08037DB4: .4byte 0x030013C0
_08037DB8: .4byte 0x02034BF0
_08037DBC:
	bl sub_08037EC4
	movs r0, #4
	strb r0, [r5]
	b _08037DCA
_08037DC6:
	bl sub_08037B14
_08037DCA:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08037DD0
sub_08037DD0: @ 0x08037DD0
	push {r4, r5, r6, r7, lr}
	bl sub_08007BD4
	adds r7, r0, #0
	ldrb r6, [r7]
	cmp r6, #1
	beq _08037E20
	cmp r6, #1
	bgt _08037DE8
	cmp r6, #0
	beq _08037DEE
	b _08037E78
_08037DE8:
	cmp r6, #2
	beq _08037E74
	b _08037E78
_08037DEE:
	ldr r5, _08037E1C @ =0x030013C0
	ldr r0, [r5]
	adds r0, #0xb8
	ldr r4, [r0]
	bl sub_08009DDC
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_08009B9C
	ldr r0, [r5]
	adds r0, #0xb8
	ldr r0, [r0]
	movs r2, #8
	rsbs r2, r2, #0
	movs r1, #0
	bl sub_08009C14
	strh r6, [r7, #2]
	movs r0, #1
	strb r0, [r7]
	b _08037E78
	.align 2, 0
_08037E1C: .4byte 0x030013C0
_08037E20:
	ldr r4, _08037E6C @ =0x030013C0
	ldr r0, [r4]
	adds r0, #0xb8
	ldr r0, [r0]
	ldr r0, [r0, #0x24]
	ldr r2, _08037E70 @ =0x08088250
	ldrh r1, [r7, #2]
	lsls r1, r1, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r1, r2, #0
	bl sub_08009E84
	ldrh r0, [r7, #2]
	adds r0, #1
	strh r0, [r7, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x14
	bls _08037E78
	ldr r0, [r4]
	adds r0, #0xb8
	ldr r0, [r0]
	ldr r0, [r0, #0x24]
	bl sub_08009E54
	ldr r0, [r4]
	adds r0, #0xb8
	ldr r0, [r0]
	movs r1, #0
	bl sub_08009A34
	movs r0, #0
	strh r0, [r7, #2]
	movs r0, #2
	strb r0, [r7]
	b _08037E78
	.align 2, 0
_08037E6C: .4byte 0x030013C0
_08037E70: .4byte 0x08088250
_08037E74:
	bl sub_08037B14
_08037E78:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08037E80
sub_08037E80: @ 0x08037E80
	push {r4, lr}
	bl sub_08007BD4
	adds r4, r0, #0
	ldr r0, [r4, #4]
	ldr r3, _08037EC0 @ =0x02034BF0
	ldrh r1, [r4]
	ldrh r2, [r3, #0xe]
	subs r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldrh r2, [r4, #2]
	ldrh r3, [r3, #0x10]
	subs r2, r2, r3
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl sub_08009A70
	ldr r1, [r4, #4]
	ldrb r0, [r1, #1]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _08037EB8
	adds r0, r1, #0
	bl sub_08009A00
	bl sub_08007A64
_08037EB8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08037EC0: .4byte 0x02034BF0

	thumb_func_start sub_08037EC4
sub_08037EC4: @ 0x08037EC4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _08037FF8 @ =sub_08037E80
	movs r1, #0x43
	movs r2, #0
	bl sub_08007968
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl sub_08007BBC
	adds r6, r0, #0
	ldr r5, _08037FFC @ =0x030013C0
	ldr r1, [r5]
	adds r1, #0xb8
	ldr r2, [r1]
	ldr r4, _08038000 @ =0x02034BF0
	ldrh r0, [r4, #0xe]
	ldrh r2, [r2, #6]
	adds r0, r0, r2
	subs r0, #6
	strh r0, [r6]
	ldr r1, [r1]
	ldrh r0, [r4, #0x10]
	ldrh r1, [r1, #8]
	adds r0, r0, r1
	subs r0, #4
	strh r0, [r6, #2]
	movs r0, #2
	movs r1, #0x5f
	bl sub_080099E0
	adds r7, r0, #0
	movs r1, #1
	bl sub_08009A34
	ldrh r1, [r6]
	ldrh r0, [r4, #0xe]
	subs r1, r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldrh r2, [r6, #2]
	ldrh r0, [r4, #0x10]
	subs r2, r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r7, #0
	bl sub_08009A70
	ldr r0, [r5]
	movs r1, #0xb0
	lsls r1, r1, #1
	mov sl, r1
	add r0, sl
	ldr r1, [r0]
	adds r0, r7, #0
	bl sub_08009A78
	adds r0, r7, #0
	movs r1, #1
	bl sub_08009AB4
	ldr r0, _08038004 @ =0x080B6DA8
	mov r8, r0
	ldr r1, _08038008 @ =0x080B6D44
	mov sb, r1
	adds r0, r7, #0
	mov r1, r8
	mov r2, sb
	movs r3, #3
	bl sub_08009ACC
	adds r0, r7, #0
	movs r1, #0
	bl sub_08009B40
	str r7, [r6, #4]
	ldr r0, _08037FF8 @ =sub_08037E80
	movs r1, #0x43
	movs r2, #0
	bl sub_08007968
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl sub_08007BBC
	adds r6, r0, #0
	ldr r1, [r5]
	adds r1, #0xb8
	ldr r2, [r1]
	ldrh r0, [r4, #0xe]
	ldrh r2, [r2, #6]
	adds r0, r0, r2
	adds r0, #6
	strh r0, [r6]
	ldr r1, [r1]
	ldrh r0, [r4, #0x10]
	ldrh r1, [r1, #8]
	adds r0, r0, r1
	subs r0, #4
	strh r0, [r6, #2]
	movs r0, #2
	movs r1, #0x5f
	bl sub_080099E0
	adds r7, r0, #0
	movs r1, #1
	bl sub_08009A34
	ldrh r1, [r6]
	ldrh r0, [r4, #0xe]
	subs r1, r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldrh r2, [r6, #2]
	ldrh r0, [r4, #0x10]
	subs r2, r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r7, #0
	bl sub_08009A70
	ldr r0, [r5]
	add r0, sl
	ldr r1, [r0]
	adds r0, r7, #0
	bl sub_08009A78
	adds r0, r7, #0
	movs r1, #1
	bl sub_08009AB4
	adds r0, r7, #0
	mov r1, r8
	mov r2, sb
	movs r3, #2
	bl sub_08009ACC
	adds r0, r7, #0
	movs r1, #0
	bl sub_08009B40
	str r7, [r6, #4]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08037FF8: .4byte sub_08037E80
_08037FFC: .4byte 0x030013C0
_08038000: .4byte 0x02034BF0
_08038004: .4byte 0x080B6DA8
_08038008: .4byte 0x080B6D44

	thumb_func_start sub_0803800C
sub_0803800C: @ 0x0803800C
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _08038040 @ =0x030013C0
	ldr r0, [r5]
	movs r1, #0x1a
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	movs r1, #0
	strb r1, [r0]
	strh r1, [r0, #2]
	ldr r0, [r5]
	movs r1, #0x1a
	ldrsh r0, [r0, r1]
	ldr r1, _08038044 @ =0x080882E4
	lsls r4, r4, #2
	adds r4, r4, r1
	ldr r1, [r4]
	bl sub_08007B84
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08038040: .4byte 0x030013C0
_08038044: .4byte 0x080882E4

	thumb_func_start sub_08038048
sub_08038048: @ 0x08038048
	push {lr}
	ldr r0, _08038064 @ =0x030013C0
	ldr r1, [r0]
	adds r1, #0x68
	ldrb r2, [r1]
	movs r0, #0x7f
	ands r0, r2
	strb r0, [r1]
	movs r0, #0
	bl sub_0803800C
	pop {r0}
	bx r0
	.align 2, 0
_08038064: .4byte 0x030013C0

	thumb_func_start sub_08038068
sub_08038068: @ 0x08038068
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _08038094 @ =0x030013C0
	ldr r0, [r4]
	movs r1, #0x1a
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	str r5, [r0, #4]
	ldr r1, [r4]
	adds r1, #0x68
	ldrb r0, [r1]
	movs r2, #0x80
	orrs r0, r2
	strb r0, [r1]
	movs r0, #1
	bl sub_0803800C
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08038094: .4byte 0x030013C0

	thumb_func_start sub_08038098
sub_08038098: @ 0x08038098
	push {lr}
	ldr r0, _080380B4 @ =0x030013C0
	ldr r1, [r0]
	adds r1, #0x68
	ldrb r0, [r1]
	movs r2, #0x80
	orrs r0, r2
	strb r0, [r1]
	movs r0, #2
	bl sub_0803800C
	pop {r0}
	bx r0
	.align 2, 0
_080380B4: .4byte 0x030013C0

	thumb_func_start sub_080380B8
sub_080380B8: @ 0x080380B8
	push {lr}
	ldr r0, _080380D4 @ =0x030013C0
	ldr r1, [r0]
	adds r1, #0x68
	ldrb r0, [r1]
	movs r2, #0x80
	orrs r0, r2
	strb r0, [r1]
	movs r0, #3
	bl sub_0803800C
	pop {r0}
	bx r0
	.align 2, 0
_080380D4: .4byte 0x030013C0

	thumb_func_start sub_080380D8
sub_080380D8: @ 0x080380D8
	push {lr}
	ldr r0, _080380EC @ =0x030013C0
	ldr r0, [r0]
	adds r0, #0xbc
	ldr r0, [r0]
	bl sub_08009A00
	pop {r0}
	bx r0
	.align 2, 0
_080380EC: .4byte 0x030013C0

	thumb_func_start sub_080380F0
sub_080380F0: @ 0x080380F0
	push {r4, r5, r6, r7, lr}
	movs r0, #2
	movs r1, #0x70
	bl sub_080099E0
	adds r4, r0, #0
	movs r1, #0
	bl sub_08009A34
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	bl sub_08009A70
	ldr r1, _080381C4 @ =0x06011000
	adds r0, r4, #0
	bl sub_08009A78
	ldr r7, _080381C8 @ =0x030013C0
	ldr r0, [r7]
	ldr r1, [r0, #0x3c]
	adds r0, r4, #0
	movs r2, #0
	bl sub_08009BBC
	adds r0, r4, #0
	movs r1, #0xd
	bl sub_08009AB4
	ldr r1, _080381CC @ =0x080F9C24
	ldr r2, _080381D0 @ =0x080F9BE0
	adds r0, r4, #0
	movs r3, #0
	bl sub_08009ACC
	adds r0, r4, #0
	movs r1, #0xff
	bl sub_08009B40
	ldr r1, [r7]
	adds r0, r1, #0
	adds r0, #0xbc
	str r4, [r0]
	movs r2, #0x1a
	ldrsh r0, [r1, r2]
	ldr r1, _080381D4 @ =sub_080380D8
	bl sub_08007BA0
	bl sub_08038048
	ldr r6, _080381D8 @ =0x02034BF0
	ldrb r0, [r6, #0xb]
	cmp r0, #0x15
	bne _080381BE
	ldrb r0, [r6, #7]
	lsrs r0, r0, #7
	cmp r0, #0
	bne _080381BE
	ldr r0, [r7]
	adds r0, #0xbc
	ldr r0, [r0]
	movs r1, #1
	bl sub_08009A34
	ldr r0, [r7]
	adds r0, #0xbc
	ldr r0, [r0]
	ldr r5, [r6, #0x1c]
	ldrb r1, [r5]
	ldr r4, _080381DC @ =0x08088288
	ldrb r3, [r6]
	lsls r3, r3, #0x1e
	lsrs r3, r3, #0x1c
	adds r2, r3, r4
	lsls r1, r1, #3
	ldrh r2, [r2]
	adds r1, r1, r2
	ldrh r2, [r6, #0xe]
	subs r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldrb r2, [r5, #1]
	adds r4, #2
	adds r3, r3, r4
	lsls r2, r2, #3
	ldrh r3, [r3]
	adds r2, r2, r3
	ldrh r3, [r6, #0x10]
	subs r2, r2, r3
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl sub_08009A70
	ldr r0, [r7]
	adds r0, #0xbc
	ldr r0, [r0]
	movs r1, #0xa
	bl sub_08009AFC
	ldr r0, _080381E0 @ =0x080F9A08
	ldr r1, _080381E4 @ =0x050003A0
	bl sub_08008348
_080381BE:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080381C4: .4byte 0x06011000
_080381C8: .4byte 0x030013C0
_080381CC: .4byte 0x080F9C24
_080381D0: .4byte 0x080F9BE0
_080381D4: .4byte sub_080380D8
_080381D8: .4byte 0x02034BF0
_080381DC: .4byte 0x08088288
_080381E0: .4byte 0x080F9A08
_080381E4: .4byte 0x050003A0

	thumb_func_start sub_080381E8
sub_080381E8: @ 0x080381E8
	bx lr
	.align 2, 0

	thumb_func_start sub_080381EC
sub_080381EC: @ 0x080381EC
	push {r4, r5, r6, r7, lr}
	bl sub_08007BD4
	adds r7, r0, #0
	ldrb r0, [r7]
	cmp r0, #1
	beq _080382DC
	cmp r0, #1
	bgt _08038204
	cmp r0, #0
	beq _08038212
	b _08038354
_08038204:
	cmp r0, #2
	bne _0803820A
	b _0803832C
_0803820A:
	cmp r0, #3
	bne _08038210
	b _08038350
_08038210:
	b _08038354
_08038212:
	ldr r4, _08038268 @ =0x030013C0
	ldr r0, [r4]
	adds r0, #0xbc
	ldr r0, [r0]
	movs r1, #1
	bl sub_08009A34
	ldr r4, [r4]
	ldrb r0, [r4]
	cmp r0, #0x14
	bne _08038274
	adds r0, r4, #0
	adds r0, #0xbc
	ldr r0, [r0]
	ldr r6, [r7, #4]
	ldrb r1, [r6]
	ldr r4, _0803826C @ =0x08088288
	ldr r5, _08038270 @ =0x02034BF0
	ldrb r3, [r5]
	lsls r3, r3, #0x1e
	lsrs r3, r3, #0x1c
	adds r2, r3, r4
	lsls r1, r1, #3
	ldrh r2, [r2]
	adds r1, r1, r2
	ldrh r2, [r5, #0xe]
	subs r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldrb r2, [r6, #1]
	adds r4, #2
	adds r3, r3, r4
	lsls r2, r2, #3
	ldrh r3, [r3]
	adds r2, r2, r3
	ldrh r3, [r5, #0x10]
	subs r2, r2, r3
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl sub_08009A70
	b _0803829E
	.align 2, 0
_08038268: .4byte 0x030013C0
_0803826C: .4byte 0x08088288
_08038270: .4byte 0x02034BF0
_08038274:
	adds r0, r4, #0
	adds r0, #0xbc
	ldr r0, [r0]
	ldr r4, [r7, #4]
	ldrb r1, [r4]
	lsls r1, r1, #3
	ldr r3, _08038320 @ =0x02034BF0
	ldrh r2, [r3, #0xe]
	subs r2, #0x10
	subs r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldrb r2, [r4, #1]
	lsls r2, r2, #3
	ldrh r3, [r3, #0x10]
	subs r3, #0x14
	subs r2, r2, r3
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl sub_08009A70
_0803829E:
	ldr r5, _08038324 @ =0x030013C0
	ldr r0, [r5]
	adds r0, #0xbc
	ldr r0, [r0]
	movs r1, #9
	bl sub_08009AFC
	ldr r0, [r5]
	adds r0, #0xbc
	ldr r4, [r0]
	bl sub_08009DDC
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_08009B9C
	ldr r1, [r5]
	adds r0, r1, #0
	adds r0, #0xbc
	ldr r0, [r0]
	ldr r1, [r1, #0x3c]
	movs r2, #0
	bl sub_08009BBC
	bl sub_080384F4
	movs r0, #0xfa
	bl m4aSongNumStart
	movs r0, #1
	strb r0, [r7]
_080382DC:
	ldr r4, _08038324 @ =0x030013C0
	ldr r0, [r4]
	adds r0, #0xbc
	ldr r0, [r0]
	ldr r0, [r0, #0x24]
	movs r1, #0x80
	lsls r1, r1, #1
	ldr r3, _08038328 @ =0x08088298
	ldrh r2, [r7, #2]
	lsls r2, r2, #1
	adds r2, r2, r3
	movs r3, #0
	ldrsh r2, [r2, r3]
	bl sub_08009E84
	ldrh r0, [r7, #2]
	adds r0, #1
	strh r0, [r7, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #7
	bls _08038354
	movs r0, #0
	strh r0, [r7, #2]
	movs r0, #2
	strb r0, [r7]
	ldr r0, [r4]
	adds r0, #0xbc
	ldr r0, [r0]
	ldr r0, [r0, #0x24]
	bl sub_08009E54
	b _08038354
	.align 2, 0
_08038320: .4byte 0x02034BF0
_08038324: .4byte 0x030013C0
_08038328: .4byte 0x08088298
_0803832C:
	ldr r0, _0803834C @ =0x030013C0
	ldr r0, [r0]
	adds r0, #0xbc
	ldr r1, [r0]
	ldrb r0, [r1, #1]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _08038354
	adds r0, r1, #0
	movs r1, #0xa
	bl sub_08009AFC
	movs r0, #3
	strb r0, [r7]
	b _08038354
	.align 2, 0
_0803834C: .4byte 0x030013C0
_08038350:
	bl sub_08038048
_08038354:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0803835C
sub_0803835C: @ 0x0803835C
	push {r4, r5, lr}
	bl sub_08007BD4
	adds r5, r0, #0
	ldrb r0, [r5]
	cmp r0, #1
	beq _080383B0
	cmp r0, #1
	bgt _08038374
	cmp r0, #0
	beq _0803837A
	b _08038418
_08038374:
	cmp r0, #2
	beq _08038414
	b _08038418
_0803837A:
	ldr r4, _080383AC @ =0x030013C0
	ldr r0, [r4]
	adds r0, #0xbc
	ldr r0, [r0]
	movs r1, #0xb
	bl sub_08009AFC
	ldr r0, [r4]
	adds r0, #0xbc
	ldr r4, [r0]
	bl sub_08009DDC
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_08009B9C
	movs r0, #0xfa
	bl m4aSongNumStart
	bl sub_080384F4
	movs r0, #1
	strb r0, [r5]
	b _08038418
	.align 2, 0
_080383AC: .4byte 0x030013C0
_080383B0:
	ldr r4, _0803840C @ =0x030013C0
	ldr r0, [r4]
	adds r0, #0xbc
	ldr r0, [r0]
	ldr r0, [r0, #0x24]
	ldr r2, _08038410 @ =0x080882A8
	ldrh r1, [r5, #2]
	adds r1, #1
	strh r1, [r5, #2]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xf
	adds r1, r1, r2
	movs r2, #0
	ldrsh r1, [r1, r2]
	movs r2, #0x80
	lsls r2, r2, #1
	bl sub_08009E84
	ldr r0, [r4]
	adds r0, #0xbc
	ldr r1, [r0]
	ldrb r0, [r1, #1]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _08038418
	ldr r0, [r1, #0x24]
	bl sub_08009E54
	ldr r0, [r4]
	adds r0, #0xbc
	ldr r0, [r0]
	movs r1, #0
	bl sub_08009A34
	ldr r0, [r4]
	adds r0, #0xbc
	ldr r2, [r0]
	ldrb r1, [r2, #2]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #2]
	movs r0, #2
	strb r0, [r5]
	b _08038418
	.align 2, 0
_0803840C: .4byte 0x030013C0
_08038410: .4byte 0x080882A8
_08038414:
	bl sub_08038048
_08038418:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08038420
sub_08038420: @ 0x08038420
	push {r4, r5, r6, lr}
	bl sub_08007BD4
	adds r6, r0, #0
	ldrb r5, [r6]
	cmp r5, #1
	beq _08038460
	cmp r5, #1
	bgt _08038438
	cmp r5, #0
	beq _0803843E
	b _080384CC
_08038438:
	cmp r5, #2
	beq _080384C8
	b _080384CC
_0803843E:
	ldr r0, _0803845C @ =0x030013C0
	ldr r0, [r0]
	adds r0, #0xbc
	ldr r4, [r0]
	bl sub_08009DDC
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_08009B9C
	strh r5, [r6, #2]
	movs r0, #1
	strb r0, [r6]
	b _080384CC
	.align 2, 0
_0803845C: .4byte 0x030013C0
_08038460:
	ldr r4, _080384C0 @ =0x030013C0
	ldr r0, [r4]
	adds r0, #0xbc
	ldr r0, [r0]
	ldr r0, [r0, #0x24]
	movs r1, #0x80
	lsls r1, r1, #1
	ldr r3, _080384C4 @ =0x080882D4
	ldrh r2, [r6, #2]
	lsls r2, r2, #1
	adds r2, r2, r3
	movs r3, #0
	ldrsh r2, [r2, r3]
	bl sub_08009E84
	ldrh r0, [r6, #2]
	adds r0, #1
	strh r0, [r6, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #7
	bls _080384CC
	movs r0, #0
	strh r0, [r6, #2]
	ldr r0, [r4]
	adds r0, #0xbc
	ldr r0, [r0]
	ldr r0, [r0, #0x24]
	bl sub_08009E54
	ldr r0, [r4]
	adds r0, #0xbc
	ldr r0, [r0]
	movs r1, #0
	bl sub_08009A34
	ldr r0, [r4]
	adds r0, #0xbc
	ldr r2, [r0]
	ldrb r1, [r2, #2]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #2]
	movs r0, #2
	strb r0, [r6]
	b _080384CC
	.align 2, 0
_080384C0: .4byte 0x030013C0
_080384C4: .4byte 0x080882D4
_080384C8:
	bl sub_08038048
_080384CC:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080384D4
sub_080384D4: @ 0x080384D4
	push {lr}
	bl sub_08007BD4
	ldr r1, [r0]
	ldrb r0, [r1, #1]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _080384EE
	adds r0, r1, #0
	bl sub_08009A00
	bl sub_08007A64
_080384EE:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080384F4
sub_080384F4: @ 0x080384F4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _080385E8 @ =sub_080384D4
	mov sb, r0
	movs r1, #0x43
	movs r2, #0
	bl sub_08007968
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl sub_08007BBC
	adds r6, r0, #0
	movs r0, #2
	movs r1, #0x6f
	bl sub_080099E0
	adds r7, r0, #0
	movs r1, #1
	bl sub_08009A34
	ldr r4, _080385EC @ =0x030013C0
	ldr r0, [r4]
	adds r0, #0xbc
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	subs r1, #2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r3, #8
	ldrsh r2, [r0, r3]
	adds r0, r7, #0
	bl sub_08009A70
	ldr r0, [r4]
	movs r5, #0xb0
	lsls r5, r5, #1
	adds r0, r0, r5
	ldr r1, [r0]
	adds r0, r7, #0
	bl sub_08009A78
	adds r0, r7, #0
	movs r1, #1
	bl sub_08009AB4
	ldr r0, _080385F0 @ =0x080B6DA8
	mov sl, r0
	ldr r3, _080385F4 @ =0x080B6D44
	mov r8, r3
	adds r0, r7, #0
	mov r1, sl
	mov r2, r8
	movs r3, #3
	bl sub_08009ACC
	adds r0, r7, #0
	movs r1, #0
	bl sub_08009B40
	str r7, [r6]
	mov r0, sb
	movs r1, #0x43
	movs r2, #0
	bl sub_08007968
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl sub_08007BBC
	adds r6, r0, #0
	movs r0, #2
	movs r1, #0x6f
	bl sub_080099E0
	adds r7, r0, #0
	movs r1, #1
	bl sub_08009A34
	ldr r0, [r4]
	adds r0, #0xbc
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	adds r1, #2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r3, #8
	ldrsh r2, [r0, r3]
	adds r0, r7, #0
	bl sub_08009A70
	ldr r0, [r4]
	adds r0, r0, r5
	ldr r1, [r0]
	adds r0, r7, #0
	bl sub_08009A78
	adds r0, r7, #0
	movs r1, #1
	bl sub_08009AB4
	adds r0, r7, #0
	mov r1, sl
	mov r2, r8
	movs r3, #2
	bl sub_08009ACC
	adds r0, r7, #0
	movs r1, #0
	bl sub_08009B40
	str r7, [r6]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080385E8: .4byte sub_080384D4
_080385EC: .4byte 0x030013C0
_080385F0: .4byte 0x080B6DA8
_080385F4: .4byte 0x080B6D44

	thumb_func_start sub_080385F8
sub_080385F8: @ 0x080385F8
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _0803862C @ =0x030013C0
	ldr r0, [r5]
	movs r1, #0x2e
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	movs r1, #0
	strb r1, [r0]
	strh r1, [r0, #2]
	ldr r0, [r5]
	movs r1, #0x2e
	ldrsh r0, [r0, r1]
	ldr r1, _08038630 @ =0x08088304
	lsls r4, r4, #2
	adds r4, r4, r1
	ldr r1, [r4]
	bl sub_08007B84
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803862C: .4byte 0x030013C0
_08038630: .4byte 0x08088304

	thumb_func_start sub_08038634
sub_08038634: @ 0x08038634
	push {lr}
	ldr r0, _08038650 @ =0x030013C0
	ldr r1, [r0]
	adds r1, #0x68
	ldrb r2, [r1]
	movs r0, #0x7f
	ands r0, r2
	strb r0, [r1]
	movs r0, #0
	bl sub_080385F8
	pop {r0}
	bx r0
	.align 2, 0
_08038650: .4byte 0x030013C0

	thumb_func_start sub_08038654
sub_08038654: @ 0x08038654
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _08038680 @ =0x030013C0
	ldr r0, [r4]
	movs r1, #0x2e
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	str r5, [r0, #4]
	ldr r1, [r4]
	adds r1, #0x68
	ldrb r0, [r1]
	movs r2, #0x80
	orrs r0, r2
	strb r0, [r1]
	movs r0, #1
	bl sub_080385F8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08038680: .4byte 0x030013C0

	thumb_func_start sub_08038684
sub_08038684: @ 0x08038684
	push {lr}
	ldr r0, _080386A0 @ =0x030013C0
	ldr r1, [r0]
	adds r1, #0x68
	ldrb r0, [r1]
	movs r2, #0x80
	orrs r0, r2
	strb r0, [r1]
	movs r0, #2
	bl sub_080385F8
	pop {r0}
	bx r0
	.align 2, 0
_080386A0: .4byte 0x030013C0

	thumb_func_start sub_080386A4
sub_080386A4: @ 0x080386A4
	push {lr}
	ldr r0, _080386BC @ =0x030013C0
	ldr r0, [r0]
	movs r1, #0x92
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_08009A00
	pop {r0}
	bx r0
	.align 2, 0
_080386BC: .4byte 0x030013C0

	thumb_func_start sub_080386C0
sub_080386C0: @ 0x080386C0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	movs r0, #2
	movs r1, #0x70
	bl sub_080099E0
	adds r4, r0, #0
	movs r1, #0
	bl sub_08009A34
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	bl sub_08009A70
	ldr r1, _080387A8 @ =0x06011000
	adds r0, r4, #0
	bl sub_08009A78
	ldr r0, _080387AC @ =0x030013C0
	mov r8, r0
	ldr r0, [r0]
	ldr r1, [r0, #0x64]
	adds r0, r4, #0
	movs r2, #0
	bl sub_08009BBC
	adds r0, r4, #0
	movs r1, #0xd
	bl sub_08009AB4
	ldr r1, _080387B0 @ =0x080912A8
	ldr r2, _080387B4 @ =0x0809126C
	adds r0, r4, #0
	movs r3, #3
	bl sub_08009ACC
	adds r0, r4, #0
	movs r1, #0xff
	bl sub_08009B40
	mov r2, r8
	ldr r1, [r2]
	movs r7, #0x92
	lsls r7, r7, #1
	adds r0, r1, r7
	str r4, [r0]
	movs r2, #0x2e
	ldrsh r0, [r1, r2]
	ldr r1, _080387B8 @ =sub_080386A4
	bl sub_08007BA0
	bl sub_08038634
	ldr r6, _080387BC @ =0x02034BF0
	ldrb r0, [r6, #0xb]
	cmp r0, #0x15
	bne _0803879E
	ldrb r0, [r6, #7]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _0803879E
	mov r1, r8
	ldr r0, [r1]
	adds r0, r0, r7
	ldr r0, [r0]
	movs r1, #1
	bl sub_08009A34
	mov r2, r8
	ldr r0, [r2]
	adds r0, r0, r7
	ldr r0, [r0]
	ldr r5, [r6, #0x1c]
	ldrb r1, [r5]
	ldr r4, _080387C0 @ =0x080882F4
	ldrb r3, [r6]
	lsls r3, r3, #0x1e
	lsrs r3, r3, #0x1c
	adds r2, r3, r4
	lsls r1, r1, #3
	ldrh r2, [r2]
	adds r1, r1, r2
	ldrh r2, [r6, #0xe]
	subs r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldrb r2, [r5, #1]
	adds r4, #2
	adds r3, r3, r4
	lsls r2, r2, #3
	ldrh r3, [r3]
	adds r2, r2, r3
	ldrh r3, [r6, #0x10]
	subs r2, r2, r3
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl sub_08009A70
	mov r1, r8
	ldr r0, [r1]
	adds r0, r0, r7
	ldr r0, [r0]
	movs r1, #3
	bl sub_08009AFC
	ldr r0, _080387C4 @ =0x08090EEC
	ldr r1, _080387C8 @ =0x050003A0
	bl sub_08008348
_0803879E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080387A8: .4byte 0x06011000
_080387AC: .4byte 0x030013C0
_080387B0: .4byte 0x080912A8
_080387B4: .4byte 0x0809126C
_080387B8: .4byte sub_080386A4
_080387BC: .4byte 0x02034BF0
_080387C0: .4byte 0x080882F4
_080387C4: .4byte 0x08090EEC
_080387C8: .4byte 0x050003A0

	thumb_func_start sub_080387CC
sub_080387CC: @ 0x080387CC
	bx lr
	.align 2, 0

	thumb_func_start sub_080387D0
sub_080387D0: @ 0x080387D0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	bl sub_08007BD4
	adds r7, r0, #0
	ldrb r0, [r7]
	mov sl, r0
	cmp r0, #1
	bne _080387EC
	b _08038900
_080387EC:
	cmp r0, #1
	bgt _080387F6
	cmp r0, #0
	beq _08038800
	b _080389B4
_080387F6:
	mov r1, sl
	cmp r1, #2
	bne _080387FE
	b _080389B0
_080387FE:
	b _080389B4
_08038800:
	ldr r2, _080388F0 @ =0x030013C0
	ldr r0, [r2]
	movs r5, #0x92
	lsls r5, r5, #1
	mov r8, r5
	add r0, r8
	ldr r0, [r0]
	movs r1, #1
	bl sub_08009A34
	ldr r0, _080388F0 @ =0x030013C0
	ldr r1, [r0]
	adds r0, r1, r5
	ldr r0, [r0]
	ldr r1, [r1, #0x64]
	movs r2, #0
	bl sub_08009BBC
	ldr r1, _080388F0 @ =0x030013C0
	ldr r0, [r1]
	add r0, r8
	ldr r0, [r0]
	movs r1, #3
	bl sub_08009AFC
	ldr r3, [r7, #4]
	ldrb r5, [r3]
	lsls r5, r5, #3
	ldr r2, _080388F4 @ =0x080882F4
	ldr r6, _080388F8 @ =0x02034BF0
	ldrb r0, [r6]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1c
	adds r0, r0, r2
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r5, r5, r0
	movs r1, #0xe
	ldrsh r0, [r6, r1]
	subs r5, r5, r0
	lsls r5, r5, #8
	str r5, [r7, #8]
	ldrb r4, [r3, #1]
	lsls r4, r4, #3
	ldrb r0, [r6]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1c
	adds r1, r2, #2
	mov sb, r1
	add r0, sb
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r4, r4, r0
	movs r1, #0x10
	ldrsh r0, [r6, r1]
	adds r0, #0x70
	subs r4, r4, r0
	lsls r4, r4, #8
	str r4, [r7, #0xc]
	ldrb r0, [r3]
	lsls r0, r0, #3
	ldrb r1, [r6]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1c
	adds r1, r1, r2
	movs r2, #0
	ldrsh r1, [r1, r2]
	adds r0, r0, r1
	movs r2, #0xe
	ldrsh r1, [r6, r2]
	subs r0, r0, r1
	lsls r0, r0, #8
	subs r0, r0, r5
	movs r1, #0x30
	str r3, [sp]
	bl __divsi3
	str r0, [r7, #0x10]
	ldr r3, [sp]
	ldrb r0, [r3, #1]
	lsls r0, r0, #3
	ldrb r1, [r6]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1c
	add r1, sb
	movs r2, #0
	ldrsh r1, [r1, r2]
	adds r0, r0, r1
	movs r2, #0x10
	ldrsh r1, [r6, r2]
	subs r0, r0, r1
	lsls r0, r0, #8
	subs r0, r0, r4
	movs r1, #0x30
	bl __divsi3
	ldr r1, _080388FC @ =0x000003EB
	adds r0, r0, r1
	str r0, [r7, #0x14]
	movs r0, #1
	strb r0, [r7]
	mov r2, sl
	strh r2, [r7, #2]
	ldr r1, _080388F0 @ =0x030013C0
	ldr r0, [r1]
	add r0, r8
	ldr r0, [r0]
	lsls r5, r5, #8
	asrs r5, r5, #0x10
	lsls r4, r4, #8
	asrs r4, r4, #0x10
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_08009A70
	movs r0, #0xff
	lsls r0, r0, #2
	bl m4aSongNumStart
	b _080389B4
	.align 2, 0
_080388F0: .4byte 0x030013C0
_080388F4: .4byte 0x080882F4
_080388F8: .4byte 0x02034BF0
_080388FC: .4byte 0x000003EB
_08038900:
	ldr r0, [r7, #8]
	ldr r1, [r7, #0x10]
	adds r0, r0, r1
	str r0, [r7, #8]
	ldrh r4, [r7, #2]
	adds r4, #1
	strh r4, [r7, #2]
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r0, #1
	lsls r0, r0, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	subs r0, r0, r1
	lsls r1, r0, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	rsbs r0, r0, #0
	movs r1, #0x78
	bl __divsi3
	ldr r1, [r7, #0x14]
	adds r1, r1, r0
	ldr r0, [r7, #0xc]
	adds r0, r0, r1
	str r0, [r7, #0xc]
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	cmp r4, #0x2f
	bls _08038984
	ldr r4, [r7, #4]
	ldrb r1, [r4]
	lsls r1, r1, #3
	ldr r2, _080389A4 @ =0x080882F4
	ldr r3, _080389A8 @ =0x02034BF0
	ldrb r0, [r3]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1c
	adds r0, r0, r2
	movs r5, #0
	ldrsh r0, [r0, r5]
	adds r1, r1, r0
	movs r5, #0xe
	ldrsh r0, [r3, r5]
	subs r1, r1, r0
	lsls r1, r1, #8
	str r1, [r7, #8]
	ldrb r1, [r4, #1]
	lsls r1, r1, #3
	ldrb r0, [r3]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1c
	adds r2, #2
	adds r0, r0, r2
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r1, r1, r0
	movs r5, #0x10
	ldrsh r0, [r3, r5]
	subs r1, r1, r0
	lsls r1, r1, #8
	str r1, [r7, #0xc]
	movs r0, #0
	strh r0, [r7, #2]
	movs r0, #2
	strb r0, [r7]
_08038984:
	ldr r0, _080389AC @ =0x030013C0
	ldr r0, [r0]
	movs r1, #0x92
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, [r7, #8]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	ldr r2, [r7, #0xc]
	lsls r2, r2, #8
	asrs r2, r2, #0x10
	bl sub_08009A70
	b _080389B4
	.align 2, 0
_080389A4: .4byte 0x080882F4
_080389A8: .4byte 0x02034BF0
_080389AC: .4byte 0x030013C0
_080389B0:
	bl sub_08038634
_080389B4:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080389C4
sub_080389C4: @ 0x080389C4
	push {r4, r5, r6, r7, lr}
	bl sub_08007BD4
	adds r6, r0, #0
	ldrb r7, [r6]
	cmp r7, #1
	beq _08038A34
	cmp r7, #1
	bgt _080389DC
	cmp r7, #0
	beq _080389E2
	b _08038AC0
_080389DC:
	cmp r7, #2
	beq _08038ABC
	b _08038AC0
_080389E2:
	ldr r5, _08038A30 @ =0x030013C0
	ldr r0, [r5]
	movs r4, #0x92
	lsls r4, r4, #1
	adds r0, r0, r4
	ldr r0, [r0]
	movs r1, #3
	bl sub_08009AFC
	ldr r1, [r5]
	adds r1, r1, r4
	ldr r0, [r1]
	movs r2, #6
	ldrsh r0, [r0, r2]
	lsls r0, r0, #8
	str r0, [r6, #8]
	ldr r0, [r1]
	movs r1, #8
	ldrsh r0, [r0, r1]
	lsls r0, r0, #8
	str r0, [r6, #0xc]
	str r7, [r6, #0x10]
	rsbs r0, r0, #0
	cmp r0, #0
	bge _08038A16
	adds r0, #0x1f
_08038A16:
	asrs r0, r0, #5
	movs r2, #0xa7
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r6, #0x14]
	movs r0, #1
	strb r0, [r6]
	strh r7, [r6, #2]
	movs r0, #0xff
	lsls r0, r0, #2
	bl m4aSongNumStart
	b _08038AC0
	.align 2, 0
_08038A30: .4byte 0x030013C0
_08038A34:
	ldr r0, [r6, #8]
	ldr r1, [r6, #0x10]
	adds r0, r0, r1
	str r0, [r6, #8]
	ldrh r4, [r6, #2]
	adds r4, #1
	strh r4, [r6, #2]
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r0, #1
	lsls r0, r0, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	subs r0, r0, r1
	lsls r1, r0, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	rsbs r0, r0, #0
	movs r1, #0x78
	bl __divsi3
	ldr r1, [r6, #0x14]
	adds r1, r1, r0
	ldr r0, [r6, #0xc]
	adds r0, r0, r1
	str r0, [r6, #0xc]
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	cmp r4, #0x1f
	bls _08038A9A
	ldr r4, _08038AB8 @ =0x030013C0
	ldr r0, [r4]
	movs r1, #0x92
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0
	bl sub_08009A34
	ldr r0, [r4]
	adds r0, #0xbc
	ldr r2, [r0]
	ldrb r1, [r2, #2]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #2]
	movs r0, #0
	strh r0, [r6, #2]
	movs r0, #2
	strb r0, [r6]
_08038A9A:
	ldr r0, _08038AB8 @ =0x030013C0
	ldr r0, [r0]
	movs r2, #0x92
	lsls r2, r2, #1
	adds r0, r0, r2
	ldr r0, [r0]
	ldr r1, [r6, #8]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	ldr r2, [r6, #0xc]
	lsls r2, r2, #8
	asrs r2, r2, #0x10
	bl sub_08009A70
	b _08038AC0
	.align 2, 0
_08038AB8: .4byte 0x030013C0
_08038ABC:
	bl sub_08038634
_08038AC0:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08038AC8
sub_08038AC8: @ 0x08038AC8
	push {r4, r5, lr}
	ldr r4, _08038AFC @ =0x030013C0
	ldr r0, [r4]
	adds r0, #0xc0
	ldr r0, [r0]
	bl sub_08009A00
	ldr r0, [r4]
	adds r0, #0xc4
	ldr r0, [r0]
	bl sub_08009A00
	movs r5, #0
_08038AE2:
	ldr r0, [r4]
	lsls r1, r5, #2
	adds r0, #0xc8
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_08009A00
	adds r5, #1
	cmp r5, #0xe
	ble _08038AE2
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08038AFC: .4byte 0x030013C0

	thumb_func_start sub_08038B00
sub_08038B00: @ 0x08038B00
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	bl sub_08007BD4
	adds r6, r0, #0
	ldr r0, [r6, #4]
	ldrb r1, [r0]
	lsls r1, r1, #3
	adds r1, #0x10
	str r1, [sp]
	ldrb r0, [r0, #1]
	lsls r0, r0, #3
	adds r0, #0x10
	str r0, [sp, #4]
	ldrb r0, [r6]
	cmp r0, #1
	beq _08038BE4
	cmp r0, #1
	bgt _08038B34
	cmp r0, #0
	beq _08038B3A
	b _08038C5C
_08038B34:
	cmp r0, #2
	beq _08038C14
	b _08038C5C
_08038B3A:
	ldr r0, _08038BDC @ =0x080B4A68
	movs r1, #0xe9
	lsls r1, r1, #1
	bl sub_08009554
	ldr r0, _08038BE0 @ =0x030013C0
	ldr r1, [r0]
	adds r0, r1, #0
	adds r0, #0xc4
	ldr r0, [r0]
	ldr r1, [r1, #0x6c]
	ldr r1, [r1, #0x20]
	ldrh r2, [r1, #2]
	lsrs r1, r2, #8
	movs r3, #3
	ands r1, r3
	adds r2, #1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	bl sub_08009A0C
	movs r5, #0
_08038B66:
	ldr r7, _08038BE0 @ =0x030013C0
	ldr r2, [r7]
	lsls r1, r5, #2
	adds r0, r2, #0
	adds r0, #0xc8
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, [r2, #0x6c]
	ldr r1, [r1, #0x20]
	ldrh r2, [r1, #2]
	lsrs r1, r2, #8
	movs r4, #3
	ands r1, r4
	adds r2, #1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	bl sub_08009A0C
	adds r5, #1
	cmp r5, #0xe
	ble _08038B66
	ldr r1, [r7]
	adds r0, r1, #0
	adds r0, #0xc0
	ldr r0, [r0]
	ldr r1, [r1, #0x6c]
	ldr r1, [r1, #0x20]
	ldrh r2, [r1, #2]
	lsrs r1, r2, #8
	ands r1, r4
	adds r2, #1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	bl sub_08009A0C
	ldr r0, [r7]
	adds r0, #0xc4
	ldr r0, [r0]
	movs r1, #1
	bl sub_08009A34
	ldr r0, [r7]
	adds r0, #0xc0
	ldr r0, [r0]
	movs r1, #1
	bl sub_08009A34
	movs r0, #0
	strh r0, [r6, #2]
	mov r0, sp
	ldrh r0, [r0]
	strh r0, [r6, #8]
	mov r1, sp
	ldrh r1, [r1, #4]
	strh r1, [r6, #0xa]
	movs r0, #1
	strb r0, [r6]
	b _08038C5C
	.align 2, 0
_08038BDC: .4byte 0x080B4A68
_08038BE0: .4byte 0x030013C0
_08038BE4:
	ldrh r0, [r6, #2]
	adds r0, #1
	strh r0, [r6, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xf
	adds r0, #1
	movs r1, #0xc
	bl __divsi3
	subs r0, #4
	ldrh r1, [r6, #0xa]
	adds r1, r1, r0
	strh r1, [r6, #0xa]
	cmp r0, #0
	ble _08038C5C
	movs r2, #0xa
	ldrsh r0, [r6, r2]
	ldr r3, [sp, #4]
	cmp r0, r3
	blt _08038C5C
	strh r3, [r6, #0xa]
	movs r0, #2
	strb r0, [r6]
	b _08038C5C
_08038C14:
	ldr r4, _08038C54 @ =0x030013C0
	ldr r0, [r4]
	adds r0, #0xc4
	ldr r0, [r0]
	movs r1, #0
	bl sub_08009A34
	ldr r0, [r4]
	adds r0, #0xc0
	ldr r0, [r0]
	movs r1, #0
	bl sub_08009A34
	movs r5, #0
_08038C30:
	ldr r0, [r4]
	lsls r1, r5, #2
	adds r0, #0xc8
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0
	bl sub_08009A34
	adds r5, #1
	cmp r5, #0xe
	ble _08038C30
	ldr r0, _08038C58 @ =0x080B4A68
	bl sub_080095E0
	bl sub_08007A64
	b _08038D18
	.align 2, 0
_08038C54: .4byte 0x030013C0
_08038C58: .4byte 0x080B4A68
_08038C5C:
	ldr r5, _08038CCC @ =0x030013C0
	ldr r0, [r5]
	adds r0, #0xc0
	ldr r0, [r0]
	ldr r4, _08038CD0 @ =0x02034BF0
	ldrh r1, [r6, #8]
	ldrh r2, [r4, #0xe]
	subs r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldrh r2, [r6, #0xa]
	ldrh r3, [r4, #0x10]
	subs r2, r2, r3
	subs r2, #4
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl sub_08009A70
	ldr r0, [r5]
	adds r0, #0xc4
	ldr r0, [r0]
	ldrh r1, [r4, #0xe]
	ldr r2, [sp]
	subs r1, r2, r1
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldrh r2, [r4, #0x10]
	ldr r3, [sp, #4]
	subs r2, r3, r2
	adds r2, #6
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl sub_08009A70
	mov sb, r5
	mov sl, r4
	movs r4, #0
	ldr r0, [sp, #4]
	adds r0, #2
	mov r8, r0
	ldr r7, [sp, #4]
	movs r5, #0xe
_08038CB0:
	movs r1, #0xa
	ldrsh r0, [r6, r1]
	cmp r8, r0
	bge _08038CD4
	mov r2, sb
	ldr r0, [r2]
	adds r0, #0xc8
	adds r0, r0, r4
	ldr r0, [r0]
	movs r1, #0
	bl sub_08009A34
	b _08038D08
	.align 2, 0
_08038CCC: .4byte 0x030013C0
_08038CD0: .4byte 0x02034BF0
_08038CD4:
	mov r3, sb
	ldr r0, [r3]
	adds r0, #0xc8
	adds r0, r0, r4
	ldr r0, [r0]
	movs r1, #1
	bl sub_08009A34
	mov r1, sb
	ldr r0, [r1]
	adds r0, #0xc8
	adds r0, r0, r4
	ldr r0, [r0]
	mov r2, sl
	ldrh r1, [r2, #0xe]
	ldr r3, [sp]
	subs r1, r3, r1
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldrh r2, [r2, #0x10]
	subs r2, r7, r2
	subs r2, #2
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl sub_08009A70
_08038D08:
	adds r4, #4
	movs r0, #8
	rsbs r0, r0, #0
	add r8, r0
	subs r7, #8
	subs r5, #1
	cmp r5, #0
	bge _08038CB0
_08038D18:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08038D28
sub_08038D28: @ 0x08038D28
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, _08038E4C @ =sub_08038B00
	movs r1, #0x43
	movs r2, #0
	bl sub_08007968
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	asrs r0, r0, #0x10
	bl sub_08007BBC
	movs r1, #0
	strb r1, [r0]
	strh r1, [r0, #2]
	str r4, [r0, #4]
	movs r0, #2
	bl sub_080099E0
	adds r5, r0, #0
	movs r1, #0
	bl sub_08009A34
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	bl sub_08009A70
	ldr r4, _08038E50 @ =0x030013C0
	ldr r0, [r4]
	movs r1, #0xb4
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r5, #0
	bl sub_08009A78
	adds r0, r5, #0
	movs r1, #0xd
	bl sub_08009AB4
	ldr r1, _08038E54 @ =0x080B4AB8
	ldr r2, _08038E58 @ =0x080B4AA8
	adds r0, r5, #0
	movs r3, #0
	bl sub_08009ACC
	adds r0, r5, #0
	movs r1, #0xff
	bl sub_08009B40
	ldr r0, [r4]
	adds r0, #0xc0
	str r5, [r0]
	movs r6, #0
_08038D96:
	movs r0, #2
	movs r1, #0
	bl sub_080099E0
	adds r5, r0, #0
	movs r1, #0
	bl sub_08009A34
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	bl sub_08009A70
	ldr r0, [r4]
	movs r1, #0xb4
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r5, #0
	bl sub_08009A78
	adds r0, r5, #0
	movs r1, #0xd
	bl sub_08009AB4
	adds r0, r5, #0
	ldr r1, _08038E54 @ =0x080B4AB8
	ldr r2, _08038E58 @ =0x080B4AA8
	movs r3, #1
	bl sub_08009ACC
	adds r0, r5, #0
	movs r1, #0xff
	bl sub_08009B40
	ldr r0, [r4]
	lsls r1, r6, #2
	adds r0, #0xc8
	adds r0, r0, r1
	str r5, [r0]
	adds r6, #1
	cmp r6, #0xe
	ble _08038D96
	movs r0, #2
	movs r1, #0
	bl sub_080099E0
	adds r5, r0, #0
	movs r1, #0
	bl sub_08009A34
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	bl sub_08009A70
	ldr r4, _08038E50 @ =0x030013C0
	ldr r0, [r4]
	movs r1, #0xb4
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r5, #0
	bl sub_08009A78
	adds r0, r5, #0
	movs r1, #0xd
	bl sub_08009AB4
	ldr r1, _08038E54 @ =0x080B4AB8
	ldr r2, _08038E58 @ =0x080B4AA8
	adds r0, r5, #0
	movs r3, #2
	bl sub_08009ACC
	adds r0, r5, #0
	movs r1, #0xff
	bl sub_08009B40
	ldr r0, [r4]
	adds r0, #0xc4
	str r5, [r0]
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	ldr r1, _08038E5C @ =sub_08038AC8
	bl sub_08007BA0
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08038E4C: .4byte sub_08038B00
_08038E50: .4byte 0x030013C0
_08038E54: .4byte 0x080B4AB8
_08038E58: .4byte 0x080B4AA8
_08038E5C: .4byte sub_08038AC8

	thumb_func_start sub_08038E60
sub_08038E60: @ 0x08038E60
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _08038E94 @ =0x030013C0
	ldr r0, [r5]
	movs r1, #0x1e
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	movs r1, #0
	strb r1, [r0]
	strh r1, [r0, #2]
	ldr r0, [r5]
	movs r1, #0x1e
	ldrsh r0, [r0, r1]
	ldr r1, _08038E98 @ =0x08088368
	lsls r4, r4, #2
	adds r4, r4, r1
	ldr r1, [r4]
	bl sub_08007B84
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08038E94: .4byte 0x030013C0
_08038E98: .4byte 0x08088368

	thumb_func_start sub_08038E9C
sub_08038E9C: @ 0x08038E9C
	push {lr}
	ldr r0, _08038EB8 @ =0x030013C0
	ldr r1, [r0]
	adds r1, #0x69
	ldrb r2, [r1]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	movs r0, #0
	bl sub_08038E60
	pop {r0}
	bx r0
	.align 2, 0
_08038EB8: .4byte 0x030013C0

	thumb_func_start sub_08038EBC
sub_08038EBC: @ 0x08038EBC
	push {lr}
	ldr r0, _08038ED8 @ =0x030013C0
	ldr r1, [r0]
	adds r1, #0x69
	ldrb r0, [r1]
	movs r2, #0x20
	orrs r0, r2
	strb r0, [r1]
	movs r0, #1
	bl sub_08038E60
	pop {r0}
	bx r0
	.align 2, 0
_08038ED8: .4byte 0x030013C0

	thumb_func_start sub_08038EDC
sub_08038EDC: @ 0x08038EDC
	push {lr}
	ldr r0, _08038EF8 @ =0x030013C0
	ldr r1, [r0]
	adds r1, #0x69
	ldrb r0, [r1]
	movs r2, #0x20
	orrs r0, r2
	strb r0, [r1]
	movs r0, #2
	bl sub_08038E60
	pop {r0}
	bx r0
	.align 2, 0
_08038EF8: .4byte 0x030013C0

	thumb_func_start sub_08038EFC
sub_08038EFC: @ 0x08038EFC
	push {lr}
	bl sub_08038EBC
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08038F08
sub_08038F08: @ 0x08038F08
	bx lr
	.align 2, 0

	thumb_func_start sub_08038F0C
sub_08038F0C: @ 0x08038F0C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	bl sub_08007BD4
	adds r5, r0, #0
	ldrb r6, [r5]
	cmp r6, #1
	bne _08038F24
	b _080390B4
_08038F24:
	cmp r6, #1
	bgt _08038F2E
	cmp r6, #0
	beq _08038F36
	b _080390F4
_08038F2E:
	cmp r6, #2
	bne _08038F34
	b _080390F0
_08038F34:
	b _080390F4
_08038F36:
	movs r0, #2
	movs r1, #0x40
	bl sub_080099E0
	adds r4, r0, #0
	movs r1, #0
	bl sub_08009A34
	adds r0, r4, #0
	movs r1, #0x78
	movs r2, #0x58
	bl sub_08009A70
	ldr r1, _08039018 @ =0x06010400
	adds r0, r4, #0
	bl sub_08009A78
	ldr r7, _0803901C @ =0x030013C0
	ldr r0, [r7]
	ldr r1, [r0, #0x44]
	adds r0, r4, #0
	movs r2, #0
	bl sub_08009BBC
	adds r0, r4, #0
	movs r1, #0xc
	bl sub_08009AB4
	ldr r0, _08039020 @ =0x08087650
	mov sl, r0
	ldr r1, _08039024 @ =0x08087990
	mov sb, r1
	ldr r0, [r7]
	movs r2, #0x90
	lsls r2, r2, #2
	mov r8, r2
	add r0, r8
	ldrb r0, [r0]
	lsls r0, r0, #2
	add r0, sb
	ldr r3, [r0]
	ldrb r0, [r3, #2]
	lsls r0, r0, #2
	add r0, sl
	ldr r0, [r0]
	ldr r1, [r0, #8]
	ldr r2, [r0, #4]
	ldrb r3, [r3, #3]
	adds r0, r4, #0
	bl sub_08009ACC
	adds r0, r4, #0
	movs r1, #0xff
	bl sub_08009B40
	str r4, [r5, #4]
	str r6, [r5, #8]
	ldr r0, [r7]
	add r0, r8
	ldrb r0, [r0]
	lsls r0, r0, #2
	add r0, sb
	ldr r1, [r0]
	ldrb r0, [r1, #2]
	cmp r0, #0x1c
	bne _0803902C
	movs r0, #2
	movs r1, #0x40
	bl sub_080099E0
	adds r4, r0, #0
	movs r1, #0
	bl sub_08009A34
	ldr r0, [r5, #4]
	movs r3, #6
	ldrsh r1, [r0, r3]
	movs r3, #8
	ldrsh r2, [r0, r3]
	adds r0, r4, #0
	bl sub_08009A70
	ldr r1, _08039028 @ =0x06011000
	adds r0, r4, #0
	bl sub_08009A78
	ldr r0, [r7]
	ldr r1, [r0, #0x44]
	adds r0, r4, #0
	movs r2, #0
	bl sub_08009BBC
	adds r0, r4, #0
	movs r1, #0xc
	bl sub_08009AB4
	ldr r0, [r7]
	movs r1, #0x90
	lsls r1, r1, #2
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #2
	add r0, sb
	ldr r0, [r0]
	ldrb r0, [r0, #2]
	lsls r0, r0, #2
	add r0, sl
	ldr r0, [r0]
	ldr r1, [r0, #8]
	ldr r2, [r0, #4]
	adds r0, r4, #0
	movs r3, #6
	b _0803908E
	.align 2, 0
_08039018: .4byte 0x06010400
_0803901C: .4byte 0x030013C0
_08039020: .4byte 0x08087650
_08039024: .4byte 0x08087990
_08039028: .4byte 0x06011000
_0803902C:
	ldrb r0, [r1, #2]
	cmp r0, #0xd
	bne _0803909C
	movs r0, #2
	movs r1, #0x40
	bl sub_080099E0
	adds r4, r0, #0
	movs r1, #0
	bl sub_08009A34
	ldr r0, [r5, #4]
	movs r2, #6
	ldrsh r1, [r0, r2]
	movs r3, #8
	ldrsh r2, [r0, r3]
	adds r0, r4, #0
	bl sub_08009A70
	ldr r1, _080390A8 @ =0x06011000
	adds r0, r4, #0
	bl sub_08009A78
	ldr r0, [r7]
	ldr r1, [r0, #0x4c]
	adds r0, r4, #0
	movs r2, #0
	bl sub_08009BBC
	adds r0, r4, #0
	movs r1, #0xd
	bl sub_08009AB4
	ldr r0, _080390AC @ =0x080876D4
	ldr r1, [r0, #8]
	ldr r2, [r0, #4]
	ldr r3, _080390B0 @ =0x08087798
	ldr r0, [r7]
	add r0, r8
	ldrb r0, [r0]
	lsls r0, r0, #2
	add r0, sb
	ldr r0, [r0]
	ldrb r0, [r0, #5]
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	ldrb r3, [r0, #2]
	adds r0, r4, #0
_0803908E:
	bl sub_08009ACC
	adds r0, r4, #0
	movs r1, #0xff
	bl sub_08009B40
	str r4, [r5, #8]
_0803909C:
	movs r0, #0
	strh r0, [r5, #2]
	movs r0, #1
	strb r0, [r5]
	b _080390F4
	.align 2, 0
_080390A8: .4byte 0x06011000
_080390AC: .4byte 0x080876D4
_080390B0: .4byte 0x08087798
_080390B4:
	ldr r0, [r5, #4]
	ldr r4, _080390EC @ =0x08088310
	ldrh r1, [r5, #2]
	lsls r1, r1, #1
	adds r1, r1, r4
	ldrb r1, [r1]
	bl sub_08009A34
	ldr r2, [r5, #8]
	cmp r2, #0
	beq _080390D8
	ldrh r0, [r5, #2]
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrb r1, [r0]
	adds r0, r2, #0
	bl sub_08009A34
_080390D8:
	ldrh r0, [r5, #2]
	adds r0, #1
	strh r0, [r5, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x2a
	bls _080390F4
	movs r0, #2
	strb r0, [r5]
	b _080390F4
	.align 2, 0
_080390EC: .4byte 0x08088310
_080390F0:
	bl sub_08038E9C
_080390F4:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08039104
sub_08039104: @ 0x08039104
	push {r4, r5, r6, lr}
	bl sub_08007BD4
	adds r4, r0, #0
	ldrb r0, [r4]
	cmp r0, #0
	beq _08039118
	cmp r0, #1
	beq _0803915C
	b _08039170
_08039118:
	ldr r0, [r4, #4]
	ldr r6, _08039158 @ =0x08088310
	ldrh r1, [r4, #2]
	movs r5, #0x2a
	subs r1, r5, r1
	lsls r1, r1, #1
	adds r1, r1, r6
	ldrb r1, [r1]
	bl sub_08009A34
	ldr r2, [r4, #8]
	cmp r2, #0
	beq _08039142
	ldrh r0, [r4, #2]
	subs r0, r5, r0
	lsls r0, r0, #1
	adds r0, r0, r6
	ldrb r1, [r0]
	adds r0, r2, #0
	bl sub_08009A34
_08039142:
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x2a
	bls _08039170
	movs r0, #1
	strb r0, [r4]
	b _08039170
	.align 2, 0
_08039158: .4byte 0x08088310
_0803915C:
	ldr r0, [r4, #4]
	bl sub_08009A00
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0803916C
	bl sub_08009A00
_0803916C:
	bl sub_08038E9C
_08039170:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08039178
sub_08039178: @ 0x08039178
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _080391AC @ =0x030013C0
	ldr r0, [r5]
	movs r1, #0x20
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	movs r1, #0
	strb r1, [r0]
	strh r1, [r0, #2]
	ldr r0, [r5]
	movs r1, #0x20
	ldrsh r0, [r0, r1]
	ldr r1, _080391B0 @ =0x08088384
	lsls r4, r4, #2
	adds r4, r4, r1
	ldr r1, [r4]
	bl sub_08007B84
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080391AC: .4byte 0x030013C0
_080391B0: .4byte 0x08088384

	thumb_func_start sub_080391B4
sub_080391B4: @ 0x080391B4
	push {lr}
	movs r0, #0
	bl sub_08039178
	pop {r0}
	bx r0

	thumb_func_start sub_080391C0
sub_080391C0: @ 0x080391C0
	push {lr}
	ldr r0, _080391DC @ =0x030013C0
	ldr r0, [r0]
	movs r1, #0x20
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	ldr r1, _080391E0 @ =0x0000FFFF
	strh r1, [r0, #0xc]
	movs r0, #1
	bl sub_08039178
	pop {r0}
	bx r0
	.align 2, 0
_080391DC: .4byte 0x030013C0
_080391E0: .4byte 0x0000FFFF

	thumb_func_start sub_080391E4
sub_080391E4: @ 0x080391E4
	push {lr}
	movs r0, #2
	bl sub_08039178
	pop {r0}
	bx r0

	thumb_func_start sub_080391F0
sub_080391F0: @ 0x080391F0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r6, _08039238 @ =0x030013C0
	ldr r0, [r6]
	movs r1, #0x20
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	adds r5, r0, #0
	ldr r0, _0803923C @ =0x080876E4
	mov sb, r0
	ldr r1, _08039240 @ =0x08087990
	mov r8, r1
	ldr r0, [r6]
	movs r7, #0x90
	lsls r7, r7, #2
	adds r0, r0, r7
	ldrb r0, [r0]
	lsls r0, r0, #2
	add r0, r8
	ldr r0, [r0]
	ldrb r1, [r0, #4]
	lsls r0, r1, #2
	add r0, sb
	ldr r0, [r0]
	cmp r0, #0
	beq _08039230
	cmp r1, #2
	bne _08039244
	movs r0, #0
_08039230:
	str r0, [r5, #8]
	bl sub_080391B4
	b _080392C0
	.align 2, 0
_08039238: .4byte 0x030013C0
_0803923C: .4byte 0x080876E4
_08039240: .4byte 0x08087990
_08039244:
	movs r0, #2
	movs r1, #0x3f
	bl sub_080099E0
	adds r4, r0, #0
	movs r1, #0
	bl sub_08009A34
	ldr r0, [r6]
	adds r0, r0, r7
	ldrb r0, [r0]
	lsls r0, r0, #2
	add r0, r8
	ldr r0, [r0]
	movs r1, #6
	ldrsb r1, [r0, r1]
	adds r1, #0x78
	movs r2, #7
	ldrsb r2, [r0, r2]
	adds r2, #0x58
	adds r0, r4, #0
	bl sub_08009A70
	ldr r1, _080392CC @ =0x06010C00
	adds r0, r4, #0
	bl sub_08009A78
	ldr r0, [r6]
	ldr r1, [r0, #0x4c]
	adds r0, r4, #0
	movs r2, #0
	bl sub_08009BBC
	adds r0, r4, #0
	movs r1, #0xd
	bl sub_08009AB4
	ldr r0, [r6]
	adds r0, r0, r7
	ldrb r0, [r0]
	lsls r0, r0, #2
	add r0, r8
	ldr r0, [r0]
	ldrb r0, [r0, #4]
	lsls r0, r0, #2
	add r0, sb
	ldr r0, [r0]
	ldr r1, [r0, #8]
	ldr r2, [r0, #4]
	adds r0, r4, #0
	movs r3, #0
	bl sub_08009ACC
	adds r0, r4, #0
	movs r1, #0xff
	bl sub_08009B40
	str r4, [r5, #8]
	movs r0, #0
	strb r0, [r5, #4]
	bl sub_080391B4
_080392C0:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080392CC: .4byte 0x06010C00

	thumb_func_start sub_080392D0
sub_080392D0: @ 0x080392D0
	bx lr
	.align 2, 0

	thumb_func_start sub_080392D4
sub_080392D4: @ 0x080392D4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	bl sub_08007BD4
	adds r5, r0, #0
	ldr r0, [r5, #8]
	cmp r0, #0
	bne _080392EE
	bl sub_080391B4
	b _08039498
_080392EE:
	ldr r1, _08039340 @ =0x08087798
	ldr r0, _08039344 @ =0x08087990
	mov sb, r0
	ldr r7, _08039348 @ =0x030013C0
	ldr r0, [r7]
	movs r2, #0x90
	lsls r2, r2, #2
	mov r8, r2
	add r0, r8
	ldrb r0, [r0]
	lsls r0, r0, #2
	add r0, sb
	ldr r0, [r0]
	ldrb r0, [r0, #5]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r4, [r0]
	ldrb r1, [r5, #4]
	lsls r0, r1, #3
	adds r4, r4, r0
	ldrb r2, [r4]
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bge _0803932C
	adds r0, r1, r2
	strb r0, [r5, #4]
	movs r0, #0
	ldrsb r0, [r4, r0]
	lsls r0, r0, #3
	adds r4, r4, r0
_0803932C:
	ldrb r6, [r5]
	cmp r6, #1
	bne _08039334
	b _08039430
_08039334:
	cmp r6, #1
	bgt _0803934C
	cmp r6, #0
	beq _08039354
	b _08039498
	.align 2, 0
_08039340: .4byte 0x08087798
_08039344: .4byte 0x08087990
_08039348: .4byte 0x030013C0
_0803934C:
	cmp r6, #2
	bne _08039352
	b _0803947C
_08039352:
	b _08039498
_08039354:
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #1
	beq _08039368
	cmp r0, #1
	bgt _08039362
	b _08039498
_08039362:
	cmp r0, #2
	beq _080393E0
	b _08039498
_08039368:
	ldr r0, [r5, #8]
	movs r1, #1
	bl sub_08009A34
	ldr r0, [r5, #8]
	ldr r1, [r7]
	add r1, r8
	ldrb r1, [r1]
	lsls r1, r1, #2
	add r1, sb
	ldr r2, [r1]
	movs r1, #6
	ldrsb r1, [r2, r1]
	adds r1, #0x78
	ldrb r2, [r2, #7]
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	ldr r3, _080393DC @ =0x08088374
	ldrh r3, [r3]
	adds r3, #0x58
	adds r2, r2, r3
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl sub_08009A70
	ldr r0, [r5, #8]
	ldrb r1, [r4, #2]
	bl sub_08009AFC
	ldr r0, [r5, #8]
	ldrb r1, [r4, #1]
	bl sub_08009B40
	strb r6, [r5]
	ldrh r0, [r4, #4]
	strh r0, [r5, #0xc]
	movs r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #0
	blt _080393D0
	ldr r0, [r7]
	add r0, r8
	ldrb r0, [r0]
	lsls r0, r0, #2
	add r0, sb
	ldr r0, [r0]
	ldrb r0, [r0, #5]
	cmp r0, #0
	beq _080393D0
	ldrh r0, [r4, #4]
	bl m4aSongNumStart
_080393D0:
	ldrb r0, [r5, #4]
	adds r0, #1
	movs r1, #0
	strb r0, [r5, #4]
	strh r1, [r5, #2]
	b _08039498
	.align 2, 0
_080393DC: .4byte 0x08088374
_080393E0:
	ldr r0, [r7]
	add r0, r8
	ldrb r0, [r0]
	lsls r0, r0, #2
	add r0, sb
	ldr r0, [r0]
	ldrb r0, [r0, #5]
	cmp r0, #0
	bne _08039406
	ldrh r0, [r5, #2]
	adds r0, #1
	strh r0, [r5, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x56
	bne _08039406
	ldrh r0, [r4, #4]
	bl m4aSongNumStart
_08039406:
	ldr r0, [r5, #8]
	ldrb r0, [r0, #1]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _08039498
	movs r2, #0xc
	ldrsh r0, [r5, r2]
	cmp r0, #0
	blt _0803941E
	ldrh r0, [r5, #0xc]
	bl m4aSongNumStop
_0803941E:
	ldr r0, [r5, #8]
	movs r1, #0
	bl sub_08009A34
	movs r0, #0
	strh r0, [r5, #2]
	movs r0, #2
	strb r0, [r5]
	b _08039498
_08039430:
	ldr r0, [r5, #8]
	ldr r1, [r7]
	add r1, r8
	ldrb r1, [r1]
	lsls r1, r1, #2
	add r1, sb
	ldr r2, [r1]
	movs r1, #6
	ldrsb r1, [r2, r1]
	adds r1, #0x78
	ldrb r2, [r2, #7]
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	ldr r4, _08039478 @ =0x08088374
	ldrh r3, [r5, #2]
	lsls r3, r3, #1
	adds r3, r3, r4
	ldrh r3, [r3]
	adds r3, #0x58
	adds r2, r2, r3
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl sub_08009A70
	ldrh r0, [r5, #2]
	adds r0, #1
	strh r0, [r5, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #7
	bls _08039498
	movs r0, #0
	strb r0, [r5]
	movs r0, #0
	strh r0, [r5, #2]
	b _08039492
	.align 2, 0
_08039478: .4byte 0x08088374
_0803947C:
	ldrh r0, [r5, #2]
	adds r0, #1
	strh r0, [r5, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrb r4, [r4, #1]
	cmp r0, r4
	blo _08039498
	movs r0, #0
	strh r0, [r5, #2]
	strb r0, [r5]
_08039492:
	ldrb r0, [r5, #4]
	adds r0, #1
	strb r0, [r5, #4]
_08039498:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080394A4
sub_080394A4: @ 0x080394A4
	push {r4, lr}
	bl sub_08007BD4
	adds r4, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _080394CC
	movs r1, #0
	bl sub_08009A34
	ldr r0, [r4, #8]
	bl sub_08009A00
	movs r1, #0xc
	ldrsh r0, [r4, r1]
	cmp r0, #0
	blt _080394CC
	ldrh r0, [r4, #0xc]
	bl m4aSongNumStop
_080394CC:
	bl sub_080391B4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080394D8
sub_080394D8: @ 0x080394D8
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _0803950C @ =0x030013C0
	ldr r0, [r5]
	movs r1, #0x22
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	movs r1, #0
	strb r1, [r0]
	strh r1, [r0, #2]
	ldr r0, [r5]
	movs r1, #0x22
	ldrsh r0, [r0, r1]
	ldr r1, _08039510 @ =0x08088390
	lsls r4, r4, #2
	adds r4, r4, r1
	ldr r1, [r4]
	bl sub_08007B84
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803950C: .4byte 0x030013C0
_08039510: .4byte 0x08088390

	thumb_func_start sub_08039514
sub_08039514: @ 0x08039514
	push {lr}
	ldr r0, _08039530 @ =0x030013C0
	ldr r1, [r0]
	adds r1, #0x69
	ldrb r2, [r1]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	movs r0, #0
	bl sub_080394D8
	pop {r0}
	bx r0
	.align 2, 0
_08039530: .4byte 0x030013C0

	thumb_func_start sub_08039534
sub_08039534: @ 0x08039534
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _080395AC @ =0x030013C0
	mov r8, r0
	ldr r0, [r0]
	movs r1, #0x22
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	ldr r6, _080395B0 @ =0x0808D4A0
	ldr r4, _080395B4 @ =0x02034BF0
	ldr r5, [r4, #0x1c]
	ldrh r1, [r5, #2]
	movs r3, #0xfc
	lsls r3, r3, #1
	adds r2, r3, #0
	ands r2, r1
	lsrs r2, r2, #3
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #3
	adds r1, r1, r6
	ldrb r1, [r1, #8]
	lsls r1, r1, #3
	movs r7, #0xe
	ldrsh r2, [r4, r7]
	subs r1, r1, r2
	adds r1, #0xc
	str r1, [r0, #4]
	ldrh r1, [r5, #2]
	ands r3, r1
	lsrs r3, r3, #3
	lsls r1, r3, #1
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r1, r1, r6
	ldrb r1, [r1, #9]
	lsls r1, r1, #3
	movs r3, #0x10
	ldrsh r2, [r4, r3]
	subs r1, r1, r2
	adds r1, #0xc
	str r1, [r0, #8]
	mov r7, r8
	ldr r1, [r7]
	adds r1, #0x69
	ldrb r0, [r1]
	movs r2, #0x40
	orrs r0, r2
	strb r0, [r1]
	movs r0, #1
	bl sub_080394D8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080395AC: .4byte 0x030013C0
_080395B0: .4byte 0x0808D4A0
_080395B4: .4byte 0x02034BF0

	thumb_func_start sub_080395B8
sub_080395B8: @ 0x080395B8
	push {lr}
	ldr r0, _080395D0 @ =0x030013C0
	ldr r0, [r0]
	movs r1, #0x84
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_08009A00
	pop {r0}
	bx r0
	.align 2, 0
_080395D0: .4byte 0x030013C0

	thumb_func_start sub_080395D4
sub_080395D4: @ 0x080395D4
	push {r4, r5, r6, r7, lr}
	movs r0, #1
	movs r1, #0x20
	bl sub_080099E0
	adds r5, r0, #0
	ldr r6, _080395F8 @ =0x02034BF0
	movs r0, #8
	ldrsb r0, [r6, r0]
	movs r7, #1
	rsbs r7, r7, #0
	cmp r0, r7
	bne _080395FC
	adds r0, r5, #0
	movs r1, #0
	bl sub_08009A34
	b _0803966C
	.align 2, 0
_080395F8: .4byte 0x02034BF0
_080395FC:
	movs r0, #8
	ldrsb r0, [r6, r0]
	bl sub_0800693C
	adds r4, r0, #0
	lsls r4, r4, #0x18
	asrs r4, r4, #0x18
	adds r0, r5, #0
	movs r1, #1
	bl sub_08009A34
	adds r0, r5, #0
	movs r1, #1
	movs r2, #1
	bl sub_08009A70
	ldr r0, _0803968C @ =0x030013C0
	ldr r0, [r0]
	movs r1, #0xb6
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r5, #0
	bl sub_08009A78
	adds r0, r5, #0
	movs r1, #0xc
	bl sub_08009AB4
	ldr r0, _08039690 @ =0x08087B0C
	lsls r4, r4, #2
	adds r0, r4, r0
	ldr r1, [r0]
	ldr r0, _08039694 @ =0x08087AE8
	adds r4, r4, r0
	ldr r2, [r4]
	adds r0, r5, #0
	movs r3, #0
	bl sub_08009ACC
	adds r0, r5, #0
	movs r1, #0
	bl sub_08009B40
	movs r1, #8
	ldrsb r1, [r6, r1]
	cmp r1, r7
	beq _0803966C
	movs r0, #9
	ldrsb r0, [r6, r0]
	cmp r1, r0
	beq _0803966C
	adds r0, r5, #0
	movs r1, #0
	bl sub_08009A34
_0803966C:
	ldr r0, _0803968C @ =0x030013C0
	ldr r1, [r0]
	movs r2, #0x84
	lsls r2, r2, #1
	adds r0, r1, r2
	str r5, [r0]
	movs r2, #0x22
	ldrsh r0, [r1, r2]
	ldr r1, _08039698 @ =sub_080395B8
	bl sub_08007BA0
	bl sub_08039514
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803968C: .4byte 0x030013C0
_08039690: .4byte 0x08087B0C
_08039694: .4byte 0x08087AE8
_08039698: .4byte sub_080395B8

	thumb_func_start sub_0803969C
sub_0803969C: @ 0x0803969C
	bx lr
	.align 2, 0

	thumb_func_start sub_080396A0
sub_080396A0: @ 0x080396A0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	bl sub_08007BD4
	adds r7, r0, #0
	ldrb r0, [r7]
	mov r8, r0
	cmp r0, #1
	beq _08039714
	cmp r0, #1
	bgt _080396C0
	cmp r0, #0
	beq _080396D0
	b _08039890
_080396C0:
	mov r1, r8
	cmp r1, #2
	bne _080396C8
	b _08039820
_080396C8:
	cmp r1, #3
	bne _080396CE
	b _0803988C
_080396CE:
	b _08039890
_080396D0:
	movs r0, #0xd8
	lsls r0, r0, #7
	str r0, [r7, #4]
	movs r0, #0xd0
	lsls r0, r0, #6
	str r0, [r7, #8]
	ldr r5, _08039710 @ =0x030013C0
	ldr r0, [r5]
	movs r4, #0x84
	lsls r4, r4, #1
	adds r0, r0, r4
	ldr r0, [r0]
	movs r1, #0x6c
	movs r2, #0x34
	bl sub_08009A70
	ldr r0, [r5]
	adds r0, r0, r4
	ldr r0, [r0]
	movs r1, #1
	bl sub_08009A34
	mov r2, r8
	strh r2, [r7, #2]
	movs r0, #1
	strb r0, [r7]
	movs r0, #0x86
	lsls r0, r0, #1
	bl m4aSongNumStart
	b _08039890
	.align 2, 0
_08039710: .4byte 0x030013C0
_08039714:
	ldr r0, [r7, #4]
	ldr r3, _0803980C @ =0xFFFF9400
	adds r0, r0, r3
	str r0, [r7, #4]
	ldr r1, [r7, #8]
	ldr r2, _08039810 @ =0xFFFFBC00
	adds r1, r1, r2
	str r1, [r7, #8]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r5, _08039814 @ =0x0807F240
	adds r1, r5, #0
	adds r1, #0xa2
	movs r2, #0
	ldrsh r3, [r1, r2]
	mov sb, r3
	mov r1, sb
	bl sub_08007E64
	adds r4, r0, #0
	movs r3, #8
	ldrsh r0, [r7, r3]
	movs r1, #0x22
	ldrsh r5, [r5, r1]
	adds r1, r5, #0
	bl sub_08007E64
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r6, r4, r0
	movs r2, #4
	ldrsh r0, [r7, r2]
	adds r1, r5, #0
	bl sub_08007E64
	adds r4, r0, #0
	movs r3, #8
	ldrsh r0, [r7, r3]
	mov r1, sb
	bl sub_08007E64
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r4, r4, r0
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	movs r1, #0xe6
	bl sub_08007E64
	lsls r0, r0, #0x10
	asrs r6, r0, #0x10
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	movs r1, #0xe6
	bl sub_08007E64
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	movs r0, #0xd8
	lsls r0, r0, #7
	adds r1, r6, r0
	str r1, [r7, #4]
	movs r3, #0x88
	lsls r3, r3, #7
	adds r2, r4, r3
	str r2, [r7, #8]
	ldr r4, _08039818 @ =0x030013C0
	ldr r0, [r4]
	movs r3, #0x84
	lsls r3, r3, #1
	adds r0, r0, r3
	ldr r0, [r0]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	lsls r2, r2, #8
	asrs r2, r2, #0x10
	bl sub_08009A70
	ldrh r0, [r7, #2]
	adds r0, #1
	strh r0, [r7, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x1d
	bls _08039890
	movs r0, #0
	strh r0, [r7, #2]
	movs r0, #2
	strb r0, [r7]
	ldr r0, [r4]
	movs r1, #0x84
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r0, [r0]
	movs r2, #6
	ldrsh r6, [r0, r2]
	movs r3, #8
	ldrsh r4, [r0, r3]
	lsls r0, r6, #8
	str r0, [r7, #4]
	lsls r0, r4, #8
	str r0, [r7, #8]
	mov r1, r8
	subs r0, r1, r6
	lsls r0, r0, #8
	movs r1, #0x1e
	bl __divsi3
	str r0, [r7, #0xc]
	mov r2, r8
	subs r0, r2, r4
	lsls r0, r0, #8
	movs r1, #0x1e
	bl __divsi3
	ldr r3, _0803981C @ =0xFFFFFD8D
	adds r0, r0, r3
	str r0, [r7, #0x10]
	b _08039890
	.align 2, 0
_0803980C: .4byte 0xFFFF9400
_08039810: .4byte 0xFFFFBC00
_08039814: .4byte 0x0807F240
_08039818: .4byte 0x030013C0
_0803981C: .4byte 0xFFFFFD8D
_08039820:
	ldr r4, [r7, #4]
	ldr r0, [r7, #0xc]
	adds r4, r4, r0
	str r4, [r7, #4]
	ldrh r0, [r7, #2]
	adds r0, #1
	strh r0, [r7, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xf
	subs r0, #1
	ldr r1, _08039884 @ =0x000009CC
	muls r0, r1, r0
	movs r1, #0x78
	bl __divsi3
	ldr r1, [r7, #0x10]
	adds r1, r1, r0
	ldr r2, [r7, #8]
	adds r2, r2, r1
	str r2, [r7, #8]
	ldr r5, _08039888 @ =0x030013C0
	ldr r0, [r5]
	movs r1, #0x84
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r0, [r0]
	lsls r4, r4, #8
	asrs r4, r4, #0x10
	lsls r2, r2, #8
	asrs r2, r2, #0x10
	adds r1, r4, #0
	bl sub_08009A70
	ldrh r0, [r7, #2]
	cmp r0, #0x1d
	bls _08039890
	movs r0, #0
	strh r0, [r7, #2]
	movs r0, #3
	strb r0, [r7]
	ldr r0, [r5]
	movs r2, #0x84
	lsls r2, r2, #1
	adds r0, r0, r2
	ldr r0, [r0]
	movs r1, #1
	movs r2, #1
	bl sub_08009A70
	b _08039890
	.align 2, 0
_08039884: .4byte 0x000009CC
_08039888: .4byte 0x030013C0
_0803988C:
	bl sub_08039514
_08039890:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0803989C
sub_0803989C: @ 0x0803989C
	push {r4, r5, r6, lr}
	bl sub_08007BD4
	adds r6, r0, #0
	ldrb r0, [r6]
	cmp r0, #1
	beq _080398C0
	cmp r0, #1
	bgt _080398B4
	cmp r0, #0
	beq _080398BA
	b _0803992E
_080398B4:
	cmp r0, #2
	beq _08039918
	b _0803992E
_080398BA:
	strh r0, [r6, #2]
	movs r0, #1
	strb r0, [r6]
_080398C0:
	ldrh r5, [r6, #2]
	movs r0, #0x6b
	muls r0, r5, r0
	movs r1, #0x1e
	bl __divsi3
	adds r4, r0, #0
	adds r4, #1
	lsls r0, r5, #4
	adds r0, r0, r5
	lsls r0, r0, #2
	subs r0, r0, r5
	movs r1, #0x1e
	bl __divsi3
	adds r2, r0, #0
	adds r2, #1
	ldr r0, _08039914 @ =0x030013C0
	ldr r0, [r0]
	movs r1, #0x84
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r0, [r0]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r1, r4, #0
	bl sub_08009A70
	ldrh r0, [r6, #2]
	adds r0, #1
	strh r0, [r6, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x1e
	bls _0803992E
	movs r0, #0
	strh r0, [r6, #2]
	movs r0, #2
	strb r0, [r6]
	b _0803992E
	.align 2, 0
_08039914: .4byte 0x030013C0
_08039918:
	ldr r0, _08039934 @ =0x030013C0
	ldr r0, [r0]
	movs r1, #0x84
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0
	bl sub_08009A34
	bl sub_08039514
_0803992E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08039934: .4byte 0x030013C0

	thumb_func_start sub_08039938
sub_08039938: @ 0x08039938
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _0803996C @ =0x030013C0
	ldr r0, [r5]
	movs r1, #0x24
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	movs r1, #0
	strb r1, [r0]
	strh r1, [r0, #2]
	ldr r0, [r5]
	movs r1, #0x24
	ldrsh r0, [r0, r1]
	ldr r1, _08039970 @ =0x080883CC
	lsls r4, r4, #2
	adds r4, r4, r1
	ldr r1, [r4]
	bl sub_08007B84
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803996C: .4byte 0x030013C0
_08039970: .4byte 0x080883CC

	thumb_func_start sub_08039974
sub_08039974: @ 0x08039974
	push {lr}
	ldr r0, _08039990 @ =0x030013C0
	ldr r1, [r0]
	adds r1, #0x69
	ldrb r2, [r1]
	movs r0, #0x7f
	ands r0, r2
	strb r0, [r1]
	movs r0, #0
	bl sub_08039938
	pop {r0}
	bx r0
	.align 2, 0
_08039990: .4byte 0x030013C0

	thumb_func_start sub_08039994
sub_08039994: @ 0x08039994
	push {lr}
	ldr r0, _080399B0 @ =0x030013C0
	ldr r1, [r0]
	adds r1, #0x69
	ldrb r0, [r1]
	movs r2, #0x80
	orrs r0, r2
	strb r0, [r1]
	movs r0, #1
	bl sub_08039938
	pop {r0}
	bx r0
	.align 2, 0
_080399B0: .4byte 0x030013C0

	thumb_func_start sub_080399B4
sub_080399B4: @ 0x080399B4
	push {lr}
	ldr r0, _080399D0 @ =0x030013C0
	ldr r1, [r0]
	adds r1, #0x69
	ldrb r0, [r1]
	movs r2, #0x80
	orrs r0, r2
	strb r0, [r1]
	movs r0, #2
	bl sub_08039938
	pop {r0}
	bx r0
	.align 2, 0
_080399D0: .4byte 0x030013C0

	thumb_func_start sub_080399D4
sub_080399D4: @ 0x080399D4
	push {lr}
	bl sub_08039974
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080399E0
sub_080399E0: @ 0x080399E0
	bx lr
	.align 2, 0

	thumb_func_start sub_080399E4
sub_080399E4: @ 0x080399E4
	push {r4, lr}
	ldr r4, _08039A1C @ =0x030024E0
	ldr r0, _08039A20 @ =0x030013C0
	ldr r2, [r0]
	movs r0, #0xb0
	lsls r0, r0, #2
	adds r3, r2, r0
	ldrh r1, [r3]
	movs r0, #0xff
	ands r0, r1
	lsls r0, r0, #8
	ldrh r1, [r3]
	lsrs r1, r1, #8
	orrs r0, r1
	strh r0, [r4, #0x3c]
	ldr r1, _08039A24 @ =0x040000B0
	ldr r0, _08039A28 @ =0x000002C2
	adds r2, r2, r0
	str r2, [r1]
	ldr r0, _08039A2C @ =0x04000040
	str r0, [r1, #4]
	ldr r0, _08039A30 @ =0xA2400001
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08039A1C: .4byte 0x030024E0
_08039A20: .4byte 0x030013C0
_08039A24: .4byte 0x040000B0
_08039A28: .4byte 0x000002C2
_08039A2C: .4byte 0x04000040
_08039A30: .4byte 0xA2400001

	thumb_func_start sub_08039A34
sub_08039A34: @ 0x08039A34
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	bl sub_08007BD4
	adds r5, r0, #0
	ldrb r4, [r5]
	cmp r4, #1
	beq _08039AB0
	cmp r4, #1
	bgt _08039A50
	cmp r4, #0
	beq _08039A56
	b _08039B50
_08039A50:
	cmp r4, #2
	beq _08039B4C
	b _08039B50
_08039A56:
	ldr r0, _08039B30 @ =0x030024E0
	mov ip, r0
	ldrh r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r2, r1, #0
	movs r3, #0
	orrs r2, r0
	mov r0, ip
	strh r4, [r0, #0x3c]
	mov r1, ip
	adds r1, #0x40
	movs r0, #0xa0
	strh r0, [r1]
	mov r0, ip
	adds r0, #0x44
	movs r1, #1
	strb r1, [r0]
	adds r0, #2
	strb r3, [r0]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r0, r3, #0
	orrs r2, r0
	mov r0, ip
	strh r2, [r0]
	strh r4, [r5, #2]
	strb r1, [r5]
	ldr r2, _08039B34 @ =0x08087B40
	ldr r1, _08039B38 @ =0x03004400
	ldrb r0, [r1, #0xe]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r1, [r1, #0x14]
	ldr r0, [r0]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	movs r1, #0xd1
	bl sub_08009554
	ldr r0, _08039B3C @ =sub_080399E4
	movs r1, #0xff
	bl sub_08009460
_08039AB0:
	ldrh r0, [r5, #2]
	lsls r0, r0, #8
	movs r1, #0x1e
	bl __divsi3
	adds r6, r0, #0
	movs r4, #0
	ldr r1, _08039B40 @ =0x0808839C
	mov r8, r1
	ldr r7, _08039B44 @ =0x030013C0
_08039AC4:
	adds r0, r4, #0
	movs r1, #0x18
	bl __modsi3
	lsls r0, r0, #1
	add r0, r8
	movs r3, #0
	ldrsh r0, [r0, r3]
	adds r2, r6, r0
	cmp r2, #0
	bge _08039ADC
	movs r2, #0
_08039ADC:
	cmp r2, #0xef
	ble _08039AE2
	movs r2, #0xf0
_08039AE2:
	ldr r1, [r7]
	lsls r0, r4, #1
	movs r3, #0xb0
	lsls r3, r3, #2
	adds r1, r1, r3
	adds r1, r1, r0
	movs r0, #0xff
	ands r2, r0
	ldrh r0, [r1]
	strh r2, [r1]
	adds r4, #1
	cmp r4, #0x9f
	ble _08039AC4
	ldrh r0, [r5, #2]
	adds r0, #1
	strh r0, [r5, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x1e
	bls _08039B50
	ldr r0, _08039B3C @ =sub_080399E4
	bl sub_080094F4
	movs r0, #0
	strh r0, [r5, #2]
	ldr r1, _08039B30 @ =0x030024E0
	ldrh r2, [r1]
	ldr r0, _08039B48 @ =0x0000DFFF
	ands r0, r2
	strh r0, [r1]
	adds r1, #0x46
	movs r0, #1
	strb r0, [r1]
	movs r0, #0
	bl sub_08007AC0
	movs r0, #2
	strb r0, [r5]
	b _08039B50
	.align 2, 0
_08039B30: .4byte 0x030024E0
_08039B34: .4byte 0x08087B40
_08039B38: .4byte 0x03004400
_08039B3C: .4byte sub_080399E4
_08039B40: .4byte 0x0808839C
_08039B44: .4byte 0x030013C0
_08039B48: .4byte 0x0000DFFF
_08039B4C:
	bl sub_08039974
_08039B50:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08039B5C
sub_08039B5C: @ 0x08039B5C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	bl sub_08007BD4
	adds r5, r0, #0
	ldrb r1, [r5]
	cmp r1, #1
	beq _08039BB0
	cmp r1, #1
	bgt _08039B78
	cmp r1, #0
	beq _08039B7E
	b _08039C64
_08039B78:
	cmp r1, #2
	beq _08039C60
	b _08039C64
_08039B7E:
	strh r1, [r5, #2]
	movs r0, #1
	strb r0, [r5]
	ldr r2, _08039C40 @ =0x030024E0
	strh r1, [r2, #0x3c]
	adds r1, r2, #0
	adds r1, #0x40
	movs r0, #0xa0
	strh r0, [r1]
	adds r1, #4
	movs r0, #0xfe
	strb r0, [r1]
	adds r1, #2
	movs r0, #0x3f
	strb r0, [r1]
	ldrh r1, [r2]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _08039C44 @ =sub_080399E4
	movs r1, #0xff
	bl sub_08009460
_08039BB0:
	ldrh r0, [r5, #2]
	lsls r0, r0, #8
	movs r1, #0x18
	bl __divsi3
	adds r6, r0, #0
	movs r4, #0
	ldr r0, _08039C48 @ =0x0808839C
	mov r8, r0
	ldr r7, _08039C4C @ =0x030013C0
_08039BC4:
	adds r0, r4, #0
	movs r1, #0x18
	bl __modsi3
	lsls r0, r0, #1
	add r0, r8
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r2, r6, r0
	cmp r2, #0
	bge _08039BDC
	movs r2, #0
_08039BDC:
	cmp r2, #0xef
	ble _08039BE2
	movs r2, #0xf0
_08039BE2:
	ldr r1, [r7]
	lsls r0, r4, #1
	movs r3, #0xb0
	lsls r3, r3, #2
	adds r1, r1, r3
	adds r1, r1, r0
	movs r0, #0xff
	ands r2, r0
	ldrh r0, [r1]
	strh r2, [r1]
	adds r4, #1
	cmp r4, #0x9f
	ble _08039BC4
	ldrh r0, [r5, #2]
	adds r0, #1
	strh r0, [r5, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x18
	bls _08039C64
	ldr r0, _08039C44 @ =sub_080399E4
	bl sub_080094F4
	movs r0, #0
	strh r0, [r5, #2]
	movs r0, #2
	strb r0, [r5]
	ldr r2, _08039C40 @ =0x030024E0
	ldrh r1, [r2]
	ldr r0, _08039C50 @ =0x0000DFFF
	ands r0, r1
	ldr r1, _08039C54 @ =0x0000FEFF
	ands r0, r1
	strh r0, [r2]
	ldr r2, _08039C58 @ =0x08087B40
	ldr r1, _08039C5C @ =0x03004400
	ldrb r0, [r1, #0xe]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r1, [r1, #0x14]
	ldr r0, [r0]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	bl sub_080095E0
	b _08039C64
	.align 2, 0
_08039C40: .4byte 0x030024E0
_08039C44: .4byte sub_080399E4
_08039C48: .4byte 0x0808839C
_08039C4C: .4byte 0x030013C0
_08039C50: .4byte 0x0000DFFF
_08039C54: .4byte 0x0000FEFF
_08039C58: .4byte 0x08087B40
_08039C5C: .4byte 0x03004400
_08039C60:
	bl sub_08039974
_08039C64:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08039C70
sub_08039C70: @ 0x08039C70
	push {r4, lr}
	ldr r4, _08039C9C @ =0x030013C0
	ldr r0, [r4]
	movs r1, #0x26
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	adds r1, r0, #0
	ldr r2, _08039CA0 @ =0x030024E0
	ldr r0, [r4]
	movs r3, #0xb0
	lsls r3, r3, #2
	adds r0, r0, r3
	ldrh r0, [r0]
	strh r0, [r2, #0xa]
	ldrb r0, [r1, #0x10]
	cmp r0, #0
	beq _08039CA4
	ldrh r1, [r1, #6]
	movs r0, #8
	subs r0, r0, r1
	b _08039CA8
	.align 2, 0
_08039C9C: .4byte 0x030013C0
_08039CA0: .4byte 0x030024E0
_08039CA4:
	ldrh r0, [r1, #6]
	rsbs r0, r0, #0
_08039CA8:
	strh r0, [r2, #0x12]
	ldr r1, _08039CC8 @ =0x040000B0
	ldr r0, _08039CCC @ =0x030013C0
	ldr r0, [r0]
	movs r2, #0xb0
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldr r0, _08039CD0 @ =0x04000010
	str r0, [r1, #4]
	ldr r0, _08039CD4 @ =0xA2400001
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08039CC8: .4byte 0x040000B0
_08039CCC: .4byte 0x030013C0
_08039CD0: .4byte 0x04000010
_08039CD4: .4byte 0xA2400001

	thumb_func_start sub_08039CD8
sub_08039CD8: @ 0x08039CD8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	ldr r4, _08039D34 @ =0x030013C0
	ldr r1, [r4]
	movs r0, #0xc6
	lsls r0, r0, #3
	mov r8, r0
	adds r0, r1, r0
	ldrb r0, [r0]
	cmp r0, #0
	bne _08039D2A
	adds r0, r1, #0
	adds r0, #0x6a
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _08039D2A
	movs r2, #0x26
	ldrsh r0, [r1, r2]
	bl sub_08007BBC
	strb r5, [r0, #1]
	strh r7, [r0, #4]
	strh r6, [r0, #6]
	ldr r1, [r4]
	adds r1, #0x6a
	ldrb r0, [r1]
	movs r2, #1
	orrs r0, r2
	strb r0, [r1]
	ldr r0, [r4]
	add r0, r8
	movs r1, #1
	strb r1, [r0]
_08039D2A:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08039D34: .4byte 0x030013C0

	thumb_func_start sub_08039D38
sub_08039D38: @ 0x08039D38
	push {lr}
	adds r2, r1, #0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	movs r1, #0
	bl sub_08039CD8
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08039D50
sub_08039D50: @ 0x08039D50
	push {lr}
	adds r2, r1, #0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	movs r1, #1
	bl sub_08039CD8
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08039D68
sub_08039D68: @ 0x08039D68
	push {lr}
	ldr r0, _08039D90 @ =0x030013C0
	ldr r1, [r0]
	adds r0, r1, #0
	adds r0, #0x6a
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	lsrs r2, r0, #0x1f
	cmp r2, #0
	bne _08039D8A
	movs r0, #0xc6
	lsls r0, r0, #3
	adds r1, r1, r0
	ldrb r0, [r1]
	cmp r0, #0
	beq _08039D8A
	strb r2, [r1]
_08039D8A:
	pop {r0}
	bx r0
	.align 2, 0
_08039D90: .4byte 0x030013C0

	thumb_func_start sub_08039D94
sub_08039D94: @ 0x08039D94
	push {r4, lr}
	ldr r4, _08039DD4 @ =0x030013C0
	ldr r0, [r4]
	movs r1, #0x26
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	movs r1, #0
	strb r1, [r0]
	movs r2, #0
	strh r1, [r0, #2]
	ldr r0, [r4]
	movs r1, #0xc6
	lsls r1, r1, #3
	adds r0, r0, r1
	strb r2, [r0]
	ldr r1, [r4]
	adds r1, #0x6a
	ldrb r2, [r1]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	ldr r0, [r4]
	movs r1, #0x26
	ldrsh r0, [r0, r1]
	ldr r1, _08039DD8 @ =sub_08039DDC
	bl sub_08007B84
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08039DD4: .4byte 0x030013C0
_08039DD8: .4byte sub_08039DDC

	thumb_func_start sub_08039DDC
sub_08039DDC: @ 0x08039DDC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x14
	bl sub_08007BD4
	adds r7, r0, #0
	ldrb r0, [r7]
	cmp r0, #8
	bls _08039DF4
	b _0803A2E2
_08039DF4:
	lsls r0, r0, #2
	ldr r1, _08039E00 @ =_08039E04
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08039E00: .4byte _08039E04
_08039E04: @ jump table
	.4byte _08039E28 @ case 0
	.4byte _08039E74 @ case 1
	.4byte _08039FA4 @ case 2
	.4byte _0803A004 @ case 3
	.4byte _0803A0EC @ case 4
	.4byte _0803A16A @ case 5
	.4byte _0803A234 @ case 6
	.4byte _0803A250 @ case 7
	.4byte _0803A2B4 @ case 8
_08039E28:
	ldr r0, _08039E68 @ =0x030013C0
	ldr r2, [r0]
	movs r1, #0xc6
	lsls r1, r1, #3
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08039E3A
	b _0803A2E2
_08039E3A:
	adds r2, #0x6a
	ldrb r0, [r2]
	movs r1, #1
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _08039E6C @ =0x030024E0
	ldrh r1, [r0, #2]
	ldrh r2, [r7, #8]
	strh r1, [r7, #8]
	ldrh r1, [r0, #0xa]
	ldrh r2, [r7, #0xa]
	strh r1, [r7, #0xa]
	ldrh r0, [r0, #0x12]
	ldrh r1, [r7, #0xc]
	strh r0, [r7, #0xc]
	movs r0, #1
	strb r0, [r7]
	ldr r0, _08039E70 @ =0x080B4CB8
	movs r1, #0xe2
	bl sub_08009554
	b _0803A2E2
	.align 2, 0
_08039E68: .4byte 0x030013C0
_08039E6C: .4byte 0x030024E0
_08039E70: .4byte 0x080B4CB8
_08039E74:
	movs r4, #0
	str r4, [sp, #4]
	ldr r1, _08039E94 @ =0x0600B000
	ldr r2, _08039E98 @ =0x01000020
	add r0, sp, #4
	bl CpuFastSet
	strb r4, [r7, #0x10]
	ldrh r0, [r7, #4]
	cmp r0, #7
	bne _08039EA4
	ldr r3, _08039E9C @ =0x08087418
	movs r1, #5
	ldr r4, _08039EA0 @ =0x0600B016
	b _08039EEA
	.align 2, 0
_08039E94: .4byte 0x0600B000
_08039E98: .4byte 0x01000020
_08039E9C: .4byte 0x08087418
_08039EA0: .4byte 0x0600B016
_08039EA4:
	cmp r0, #0x13
	bne _08039EB0
	ldr r3, _08039EAC @ =0x08087440
	b _08039EC0
	.align 2, 0
_08039EAC: .4byte 0x08087440
_08039EB0:
	cmp r0, #0x31
	bne _08039ED0
	ldrh r0, [r7, #4]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #3
	ldr r0, _08039EC8 @ =0x0808D4AC
	adds r3, r1, r0
_08039EC0:
	movs r1, #3
	ldr r4, _08039ECC @ =0x0600B018
	b _08039EEA
	.align 2, 0
_08039EC8: .4byte 0x0808D4AC
_08039ECC: .4byte 0x0600B018
_08039ED0:
	ldrh r1, [r7, #4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	ldr r1, _08039F58 @ =0x0808D4AC
	adds r3, r0, r1
	movs r1, #1
	ldr r4, _08039F5C @ =0x0600B01C
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #0
	bge _08039EEA
	strb r1, [r7, #0x10]
_08039EEA:
	movs r0, #0
	str r0, [r7, #0x14]
	cmp r1, #0
	ble _08039F98
	adds r5, r1, #0
	movs r2, #0x42
	adds r2, r2, r4
	mov r8, r2
	adds r2, r4, #0
	adds r2, #0x40
_08039EFE:
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #0
	blt _08039F8A
	ldr r6, _08039F60 @ =0x02034E14
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r6, #0
	str r2, [sp, #0xc]
	str r3, [sp, #0x10]
	bl sub_0800B87C
	lsls r0, r0, #0x18
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x10]
	cmp r0, #0
	beq _08039F3A
	ldrb r0, [r7, #1]
	cmp r0, #0
	beq _08039F68
	movs r1, #0
	ldrsb r1, [r3, r1]
	subs r0, r6, #4
	ldrb r0, [r0]
	adds r0, r6, r0
	subs r0, #4
	ldrb r0, [r0]
	cmp r1, r0
	bne _08039F68
_08039F3A:
	ldrb r0, [r7, #1]
	cmp r0, #0
	beq _08039F54
	movs r1, #0
	ldrsb r1, [r3, r1]
	subs r0, r6, #4
	ldrb r0, [r0]
	adds r0, r6, r0
	subs r0, #4
	ldrb r0, [r0]
	cmp r1, r0
	bne _08039F54
	str r4, [r7, #0x14]
_08039F54:
	ldr r1, _08039F64 @ =0x0000E148
	b _08039F6A
	.align 2, 0
_08039F58: .4byte 0x0808D4AC
_08039F5C: .4byte 0x0600B01C
_08039F60: .4byte 0x02034E14
_08039F64: .4byte 0x0000E148
_08039F68:
	ldr r1, _08039FA0 @ =0x0000E14C
_08039F6A:
	adds r0, r1, #0
	strh r0, [r4]
	adds r1, #1
	adds r0, r1, #0
	strh r0, [r4, #2]
	adds r1, #1
	adds r0, r1, #0
	strh r0, [r2]
	adds r1, #1
	adds r0, r1, #0
	mov r1, r8
	strh r0, [r1]
	movs r0, #4
	add r8, r0
	adds r2, #4
	adds r4, #4
_08039F8A:
	ldrh r0, [r7, #4]
	cmp r0, #0x31
	beq _08039F92
	adds r3, #8
_08039F92:
	subs r5, #1
	cmp r5, #0
	bne _08039EFE
_08039F98:
	movs r0, #2
	strb r0, [r7]
	b _0803A2E2
	.align 2, 0
_08039FA0: .4byte 0x0000E14C
_08039FA4:
	ldr r6, _08039FF8 @ =0x0600AA00
	movs r5, #0
	str r5, [sp, #8]
	add r0, sp, #8
	ldr r2, _08039FFC @ =0x01000150
	adds r1, r6, #0
	bl CpuFastSet
	ldr r4, _0803A000 @ =0x0808D4A0
	ldrh r1, [r7, #4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r4, #0x14
	adds r0, r0, r4
	ldr r0, [r0]
	bl sub_08006828
	adds r1, r0, #0
	str r5, [sp]
	adds r0, r6, #0
	movs r2, #1
	movs r3, #0
	bl sub_08004D94
	ldrh r1, [r7, #4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r4
	ldr r0, [r0]
	bl sub_08006828
	movs r1, #0
	bl sub_080045FC
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	strh r0, [r7, #0xe]
	movs r0, #3
	strb r0, [r7]
	b _0803A2E2
	.align 2, 0
_08039FF8: .4byte 0x0600AA00
_08039FFC: .4byte 0x01000150
_0803A000: .4byte 0x0808D4A0
_0803A004:
	ldr r2, _0803A038 @ =0x030024E0
	movs r1, #0
	ldr r0, _0803A03C @ =0x00001608
	strh r0, [r2, #2]
	ldrh r0, [r7, #6]
	rsbs r0, r0, #0
	strh r0, [r2, #0x12]
	strh r1, [r2, #0xa]
	movs r5, #0
	adds r4, r2, #0
	ldr r1, _0803A040 @ =sub_08039C70
	mov sb, r1
	ldr r2, _0803A044 @ =0x030013C0
	mov r8, r2
	movs r6, #0xb0
	lsls r6, r6, #2
	movs r3, #0xf0
	mov ip, r3
	movs r3, #0
_0803A02A:
	ldrb r2, [r7, #0x10]
	cmp r2, #0
	beq _0803A048
	mov r1, r8
	ldr r0, [r1]
	b _0803A062
	.align 2, 0
_0803A038: .4byte 0x030024E0
_0803A03C: .4byte 0x00001608
_0803A040: .4byte sub_08039C70
_0803A044: .4byte 0x030013C0
_0803A048:
	ldrh r0, [r7, #6]
	adds r0, #0x10
	cmp r5, r0
	bge _0803A05E
	mov r1, r8
	ldr r0, [r1]
	adds r0, r0, r6
	adds r0, r0, r3
	ldrh r1, [r0]
	strh r2, [r0]
	b _0803A076
_0803A05E:
	mov r2, r8
	ldr r0, [r2]
_0803A062:
	adds r0, r0, r6
	adds r0, r0, r3
	ldrh r1, [r7, #0xe]
	lsls r1, r1, #3
	mov r2, ip
	subs r1, r2, r1
	asrs r1, r1, #1
	rsbs r1, r1, #0
	ldrh r2, [r0]
	strh r1, [r0]
_0803A076:
	adds r3, #2
	adds r5, #1
	cmp r5, #0x9f
	ble _0803A02A
	adds r1, r4, #0
	adds r1, #0x45
	movs r0, #0x3f
	strb r0, [r1]
	adds r1, #1
	movs r0, #0xde
	strb r0, [r1]
	movs r0, #0xf0
	strh r0, [r4, #0x3e]
	ldrh r0, [r7, #6]
	adds r0, #0x10
	lsls r1, r0, #8
	orrs r1, r0
	adds r0, r4, #0
	adds r0, #0x42
	strh r1, [r0]
	ldrh r1, [r4]
	movs r3, #0x80
	lsls r3, r3, #7
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r4]
	adds r1, r4, #0
	adds r1, #0x4a
	movs r0, #0xdc
	strh r0, [r1]
	adds r1, #4
	movs r0, #6
	strb r0, [r1]
	mov r0, sb
	movs r1, #0xff
	bl sub_08009460
	ldrb r0, [r7, #1]
	cmp r0, #0
	bne _0803A0DC
	ldr r0, _0803A0D8 @ =0x030013C0
	ldr r1, [r0]
	adds r1, #0x6a
	ldrb r2, [r1]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	b _0803A0E2
	.align 2, 0
_0803A0D8: .4byte 0x030013C0
_0803A0DC:
	ldrh r0, [r7, #4]
	bl sub_08035294
_0803A0E2:
	movs r1, #0
	movs r0, #4
	strb r0, [r7]
	strh r1, [r7, #2]
	b _0803A2E2
_0803A0EC:
	ldrb r0, [r7, #1]
	ldr r1, _0803A158 @ =0x030013C0
	cmp r0, #0
	beq _0803A102
	ldr r0, [r1]
	adds r0, #0x68
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bge _0803A102
	b _0803A2E2
_0803A102:
	ldr r0, [r1]
	movs r1, #0xc6
	lsls r1, r1, #3
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803A112
	b _0803A244
_0803A112:
	ldrh r0, [r7, #2]
	adds r0, #1
	strh r0, [r7, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xb
	movs r1, #6
	bl __divsi3
	adds r5, r0, #0
	ldrh r1, [r7, #6]
	asrs r0, r5, #1
	subs r0, #0x10
	subs r1, r1, r0
	ldr r2, _0803A15C @ =0x030024E0
	lsls r0, r1, #8
	adds r1, r1, r5
	orrs r0, r1
	adds r2, #0x42
	strh r0, [r2]
	ldrh r0, [r7, #2]
	cmp r0, #5
	bhi _0803A140
	b _0803A2E2
_0803A140:
	movs r0, #0
	strh r0, [r7, #2]
	ldrb r0, [r7, #1]
	cmp r0, #0
	beq _0803A164
	ldr r0, _0803A160 @ =0x0000010D
	bl m4aSongNumStart
	movs r0, #5
	strb r0, [r7]
	b _0803A2E2
	.align 2, 0
_0803A158: .4byte 0x030013C0
_0803A15C: .4byte 0x030024E0
_0803A160: .4byte 0x0000010D
_0803A164:
	movs r0, #6
	strb r0, [r7]
	b _0803A2E2
_0803A16A:
	ldr r4, [r7, #0x14]
	ldrh r5, [r7, #2]
	adds r0, r5, #0
	movs r1, #6
	bl __umodsi3
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0803A208
	adds r0, r5, #0
	movs r1, #0xc
	bl __umodsi3
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0803A1B4
	ldr r2, _0803A1A8 @ =0x0000E14C
	adds r0, r2, #0
	strh r0, [r4]
	ldr r3, _0803A1AC @ =0x0000E14D
	adds r0, r3, #0
	strh r0, [r4, #2]
	adds r2, r4, #0
	adds r2, #0x40
	ldr r1, _0803A1B0 @ =0x0000E14E
	adds r0, r1, #0
	strh r0, [r2]
	adds r1, r4, #0
	adds r1, #0x42
	adds r3, #2
	b _0803A1D0
	.align 2, 0
_0803A1A8: .4byte 0x0000E14C
_0803A1AC: .4byte 0x0000E14D
_0803A1B0: .4byte 0x0000E14E
_0803A1B4:
	ldr r1, _0803A228 @ =0x0000E148
	adds r0, r1, #0
	strh r0, [r4]
	ldr r2, _0803A22C @ =0x0000E149
	adds r0, r2, #0
	strh r0, [r4, #2]
	adds r2, r4, #0
	adds r2, #0x40
	ldr r3, _0803A230 @ =0x0000E14A
	adds r0, r3, #0
	strh r0, [r2]
	adds r1, r4, #0
	adds r1, #0x42
	adds r3, #1
_0803A1D0:
	adds r0, r3, #0
	strh r0, [r1]
	adds r3, r2, #0
	adds r5, r1, #0
	ldrh r0, [r7, #4]
	cmp r0, #0x31
	bne _0803A208
	subs r1, r4, #4
	adds r2, r4, #0
	subs r2, #8
	ldrh r0, [r4]
	strh r0, [r2]
	ldrh r0, [r2]
	strh r0, [r1]
	subs r2, r4, #2
	subs r1, r4, #6
	ldrh r0, [r4, #2]
	strh r0, [r1]
	ldrh r0, [r1]
	strh r0, [r2]
	ldrh r0, [r3]
	strh r0, [r4, #0x38]
	ldrh r0, [r4, #0x38]
	strh r0, [r4, #0x3c]
	ldrh r0, [r5]
	strh r0, [r4, #0x3a]
	ldrh r0, [r4, #0x3a]
	strh r0, [r4, #0x3e]
_0803A208:
	ldrh r0, [r7, #2]
	adds r0, #1
	strh r0, [r7, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x47
	bls _0803A2E2
	movs r0, #0
	strh r0, [r7, #2]
	movs r0, #7
	strb r0, [r7]
	movs r0, #0x3c
	bl sub_08007AC0
	b _0803A2E2
	.align 2, 0
_0803A228: .4byte 0x0000E148
_0803A22C: .4byte 0x0000E149
_0803A230: .4byte 0x0000E14A
_0803A234:
	ldr r0, _0803A24C @ =0x030013C0
	ldr r0, [r0]
	movs r1, #0xc6
	lsls r1, r1, #3
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803A2E2
_0803A244:
	movs r0, #7
	strb r0, [r7]
	b _0803A2E2
	.align 2, 0
_0803A24C: .4byte 0x030013C0
_0803A250:
	ldr r0, _0803A28C @ =sub_08039C70
	bl sub_080094F4
	ldr r0, _0803A290 @ =0x080B4CB8
	bl sub_080095E0
	ldr r1, _0803A294 @ =0x030024E0
	ldrh r2, [r1]
	ldr r0, _0803A298 @ =0x0000BFFF
	ands r0, r2
	movs r3, #0
	movs r2, #0
	strh r0, [r1]
	ldrh r0, [r7, #8]
	strh r0, [r1, #2]
	ldrh r0, [r7, #0xa]
	strh r0, [r1, #0xa]
	ldrh r0, [r7, #0xc]
	strh r0, [r1, #0x12]
	adds r1, #0x4a
	strh r2, [r1]
	ldrb r0, [r7, #1]
	cmp r0, #0
	beq _0803A29C
	bl sub_080352C8
	movs r0, #8
	strb r0, [r7]
	b _0803A2E2
	.align 2, 0
_0803A28C: .4byte sub_08039C70
_0803A290: .4byte 0x080B4CB8
_0803A294: .4byte 0x030024E0
_0803A298: .4byte 0x0000BFFF
_0803A29C:
	strh r0, [r7, #2]
	strb r3, [r7]
	ldr r1, _0803A2B0 @ =0x030013C0
	ldr r0, [r1]
	movs r2, #0xc6
	lsls r2, r2, #3
	adds r0, r0, r2
	strb r3, [r0]
	ldr r1, [r1]
	b _0803A2D6
	.align 2, 0
_0803A2B0: .4byte 0x030013C0
_0803A2B4:
	ldr r2, _0803A2F0 @ =0x030013C0
	ldr r0, [r2]
	adds r0, #0x68
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1f
	cmp r0, #0
	bne _0803A2E2
	movs r1, #0
	strh r0, [r7, #2]
	strb r1, [r7]
	ldr r0, [r2]
	movs r3, #0xc6
	lsls r3, r3, #3
	adds r0, r0, r3
	strb r1, [r0]
	ldr r1, [r2]
_0803A2D6:
	adds r1, #0x6a
	ldrb r2, [r1]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
_0803A2E2:
	add sp, #0x14
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803A2F0: .4byte 0x030013C0

	thumb_func_start sub_0803A2F4
sub_0803A2F4: @ 0x0803A2F4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _0803A36C @ =0x080AB6BC
	ldr r4, _0803A370 @ =0x030013C0
	ldr r1, [r4]
	ldr r5, _0803A374 @ =0x00000401
	adds r1, r1, r5
	bl sub_08008374
	adds r7, r4, #0
	mov r8, r7
	ldr r6, _0803A378 @ =0x080883D8
	ldr r4, _0803A37C @ =0x00000604
	movs r0, #4
	mov ip, r0
	movs r3, #3
_0803A316:
	ldr r2, [r7]
	adds r2, r2, r4
	mov r1, ip
	strb r1, [r2]
	ldrh r1, [r6]
	adds r1, r1, r5
	ldr r0, [r7]
	adds r0, r0, r1
	str r0, [r2, #4]
	adds r6, #2
	adds r4, #8
	subs r3, #1
	cmp r3, #0
	bge _0803A316
	mov r2, r8
	ldr r0, [r2]
	ldr r1, _0803A380 @ =0x00000624
	adds r0, r0, r1
	movs r1, #0
	movs r2, #4
	strb r2, [r0]
	strb r1, [r0, #1]
	movs r1, #0xe
	strh r1, [r0, #2]
	strh r2, [r0, #4]
	mov r2, r8
	ldr r1, [r2]
	ldr r2, _0803A37C @ =0x00000604
	adds r1, r1, r2
	str r1, [r0, #8]
	bl sub_0800BA44
	mov r2, r8
	ldr r1, [r2]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r1, r1, r2
	strb r0, [r1]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803A36C: .4byte 0x080AB6BC
_0803A370: .4byte 0x030013C0
_0803A374: .4byte 0x00000401
_0803A378: .4byte 0x080883D8
_0803A37C: .4byte 0x00000604
_0803A380: .4byte 0x00000624

	thumb_func_start sub_0803A384
sub_0803A384: @ 0x0803A384
	push {lr}
	ldr r0, _0803A39C @ =0x030013C0
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r0, r1
	ldrb r0, [r0]
	bl sub_0800BAC0
	pop {r0}
	bx r0
	.align 2, 0
_0803A39C: .4byte 0x030013C0

	thumb_func_start sub_0803A3A0
sub_0803A3A0: @ 0x0803A3A0
	push {lr}
	ldr r0, _0803A3B8 @ =0x030013C0
	ldr r0, [r0]
	movs r1, #0x86
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_08009A00
	pop {r0}
	bx r0
	.align 2, 0
_0803A3B8: .4byte 0x030013C0

	thumb_func_start sub_0803A3BC
sub_0803A3BC: @ 0x0803A3BC
	bx lr
	.align 2, 0

	thumb_func_start sub_0803A3C0
sub_0803A3C0: @ 0x0803A3C0
	push {r4, r5, r6, lr}
	movs r0, #1
	movs r1, #0x30
	bl sub_080099E0
	adds r4, r0, #0
	movs r1, #1
	bl sub_08009A34
	adds r0, r4, #0
	movs r1, #0xf0
	movs r2, #0x1a
	bl sub_08009A70
	ldr r1, _0803A48C @ =0x06011400
	adds r0, r4, #0
	bl sub_08009A78
	ldr r5, _0803A490 @ =0x030013C0
	ldr r0, [r5]
	ldr r1, [r0, #0x54]
	adds r0, r4, #0
	movs r2, #0
	bl sub_08009BBC
	adds r0, r4, #0
	movs r1, #2
	bl sub_08009AB4
	ldr r1, _0803A494 @ =0x080FE2F8
	ldr r0, _0803A498 @ =0x03004400
	ldrb r0, [r0, #0x14]
	lsls r0, r0, #2
	adds r1, r0, r1
	ldr r1, [r1]
	ldr r2, _0803A49C @ =0x080FE2F0
	adds r0, r0, r2
	ldr r2, [r0]
	ldr r3, _0803A4A0 @ =0x080883E0
	ldr r0, [r5]
	ldr r6, _0803A4A4 @ =0x00000684
	adds r0, r0, r6
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r3
	ldrb r3, [r0]
	adds r0, r4, #0
	bl sub_08009ACC
	adds r0, r4, #0
	movs r1, #0
	bl sub_08009B40
	ldr r1, [r5]
	movs r2, #0x86
	lsls r2, r2, #1
	adds r0, r1, r2
	str r4, [r0]
	movs r6, #0x28
	ldrsh r0, [r1, r6]
	bl sub_08007BBC
	movs r1, #0
	strb r1, [r0]
	strh r1, [r0, #2]
	ldr r1, _0803A4A8 @ =0x02034BF0
	ldrb r0, [r1, #3]
	lsls r0, r0, #0x1d
	cmp r0, #0
	blt _0803A456
	ldrb r0, [r1, #0xb]
	cmp r0, #0
	beq _0803A456
	cmp r0, #0x17
	bne _0803A46C
_0803A456:
	ldr r0, _0803A4AC @ =0x02031050
	movs r1, #0x89
	lsls r1, r1, #4
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0803A46C
	bl sub_0803A5D0
_0803A46C:
	ldr r4, _0803A490 @ =0x030013C0
	ldr r0, [r4]
	movs r2, #0x28
	ldrsh r0, [r0, r2]
	ldr r1, _0803A4B0 @ =sub_0803A3A0
	bl sub_08007BA0
	ldr r0, [r4]
	movs r6, #0x28
	ldrsh r0, [r0, r6]
	ldr r1, _0803A4B4 @ =sub_0803A3BC
	bl sub_08007B84
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803A48C: .4byte 0x06011400
_0803A490: .4byte 0x030013C0
_0803A494: .4byte 0x080FE2F8
_0803A498: .4byte 0x03004400
_0803A49C: .4byte 0x080FE2F0
_0803A4A0: .4byte 0x080883E0
_0803A4A4: .4byte 0x00000684
_0803A4A8: .4byte 0x02034BF0
_0803A4AC: .4byte 0x02031050
_0803A4B0: .4byte sub_0803A3A0
_0803A4B4: .4byte sub_0803A3BC

	thumb_func_start sub_0803A4B8
sub_0803A4B8: @ 0x0803A4B8
	push {r4, r5, r6, r7, lr}
	bl sub_08007BD4
	adds r6, r0, #0
	ldrb r7, [r6]
	cmp r7, #1
	beq _0803A51C
	cmp r7, #1
	bgt _0803A4D0
	cmp r7, #0
	beq _0803A4D6
	b _0803A576
_0803A4D0:
	cmp r7, #2
	beq _0803A568
	b _0803A576
_0803A4D6:
	ldr r5, _0803A514 @ =0x030013C0
	ldr r0, [r5]
	movs r4, #0x86
	lsls r4, r4, #1
	adds r0, r0, r4
	ldr r0, [r0]
	movs r1, #0xb4
	lsls r1, r1, #1
	movs r2, #0x1a
	bl sub_08009A70
	ldr r0, [r5]
	adds r0, r0, r4
	ldr r0, [r0]
	ldr r2, _0803A518 @ =0x080883E0
	ldrb r1, [r6, #1]
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrb r1, [r1]
	bl sub_08009AFC
	ldr r0, [r5]
	adds r0, r0, r4
	ldr r0, [r0]
	movs r1, #1
	bl sub_08009A34
	movs r0, #1
	strb r0, [r6]
	strh r7, [r6, #2]
	b _0803A576
	.align 2, 0
_0803A514: .4byte 0x030013C0
_0803A518: .4byte 0x080883E0
_0803A51C:
	ldrh r1, [r6, #2]
	adds r1, #1
	strh r1, [r6, #2]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	rsbs r0, r0, #0
	movs r1, #0x12
	bl __divsi3
	adds r1, r0, #0
	movs r0, #0xb4
	lsls r0, r0, #1
	adds r1, r1, r0
	ldr r0, _0803A564 @ =0x030013C0
	ldr r0, [r0]
	movs r2, #0x86
	lsls r2, r2, #1
	adds r0, r0, r2
	ldr r0, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0x1a
	bl sub_08009A70
	ldrh r0, [r6, #2]
	cmp r0, #0x11
	bls _0803A576
	movs r0, #0
	strh r0, [r6, #2]
	movs r0, #2
	strb r0, [r6]
	b _0803A576
	.align 2, 0
_0803A564: .4byte 0x030013C0
_0803A568:
	ldr r0, _0803A57C @ =0x030013C0
	ldr r0, [r0]
	movs r1, #0x28
	ldrsh r0, [r0, r1]
	ldr r1, _0803A580 @ =sub_0803A3BC
	bl sub_08007B84
_0803A576:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803A57C: .4byte 0x030013C0
_0803A580: .4byte sub_0803A3BC

	thumb_func_start sub_0803A584
sub_0803A584: @ 0x0803A584
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, _0803A5C4 @ =0x030013C0
	ldr r1, [r5]
	ldr r2, _0803A5C8 @ =0x00000684
	adds r0, r1, r2
	ldrb r0, [r0]
	ldrh r2, [r4, #0x14]
	cmp r0, r2
	beq _0803A5BE
	movs r2, #0x28
	ldrsh r0, [r1, r2]
	bl sub_08007BBC
	ldrh r2, [r4, #0x14]
	movs r1, #0
	strb r2, [r0, #1]
	strb r1, [r0]
	strh r1, [r0, #2]
	ldr r0, [r5]
	ldr r1, _0803A5C8 @ =0x00000684
	adds r0, r0, r1
	strb r2, [r0]
	ldr r0, [r5]
	movs r2, #0x28
	ldrsh r0, [r0, r2]
	ldr r1, _0803A5CC @ =sub_0803A4B8
	bl sub_08007B84
_0803A5BE:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803A5C4: .4byte 0x030013C0
_0803A5C8: .4byte 0x00000684
_0803A5CC: .4byte sub_0803A4B8

	thumb_func_start sub_0803A5D0
sub_0803A5D0: @ 0x0803A5D0
	push {lr}
	ldr r0, _0803A5E8 @ =0x030013C0
	ldr r0, [r0]
	movs r1, #0x86
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0
	bl sub_08009A34
	pop {r0}
	bx r0
	.align 2, 0
_0803A5E8: .4byte 0x030013C0

	thumb_func_start sub_0803A5EC
sub_0803A5EC: @ 0x0803A5EC
	push {lr}
	ldr r0, _0803A604 @ =0x030013C0
	ldr r0, [r0]
	movs r1, #0x86
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #1
	bl sub_08009A34
	pop {r0}
	bx r0
	.align 2, 0
_0803A604: .4byte 0x030013C0

	thumb_func_start sub_0803A608
sub_0803A608: @ 0x0803A608
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _0803A63C @ =0x030013C0
	ldr r0, [r5]
	movs r1, #0x2a
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	movs r1, #0
	strb r1, [r0]
	strh r1, [r0, #4]
	ldr r0, [r5]
	movs r1, #0x2a
	ldrsh r0, [r0, r1]
	ldr r1, _0803A640 @ =0x0808846C
	lsls r4, r4, #2
	adds r4, r4, r1
	ldr r1, [r4]
	bl sub_08007B84
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803A63C: .4byte 0x030013C0
_0803A640: .4byte 0x0808846C

	thumb_func_start sub_0803A644
sub_0803A644: @ 0x0803A644
	push {lr}
	ldr r0, _0803A660 @ =0x030013C0
	ldr r1, [r0]
	adds r1, #0x6a
	ldrb r2, [r1]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	movs r0, #0
	bl sub_0803A608
	pop {r0}
	bx r0
	.align 2, 0
_0803A660: .4byte 0x030013C0

	thumb_func_start sub_0803A664
sub_0803A664: @ 0x0803A664
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r5, r0, #0
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	lsls r0, r5, #0x18
	asrs r1, r0, #0x18
	cmp r1, #0
	beq _0803A6AE
	ldr r0, _0803A6B4 @ =0x02034BF0
	ldrb r0, [r0, #0xd]
	cmp r0, #0
	bne _0803A684
	cmp r1, #0
	blt _0803A6AE
_0803A684:
	cmp r0, #0x63
	bne _0803A68C
	cmp r1, #0
	bgt _0803A6AE
_0803A68C:
	ldr r4, _0803A6B8 @ =0x030013C0
	ldr r0, [r4]
	movs r1, #0x2a
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	strb r5, [r0, #1]
	strb r6, [r0, #2]
	ldr r1, [r4]
	adds r1, #0x6a
	ldrb r0, [r1]
	movs r2, #2
	orrs r0, r2
	strb r0, [r1]
	movs r0, #1
	bl sub_0803A608
_0803A6AE:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803A6B4: .4byte 0x02034BF0
_0803A6B8: .4byte 0x030013C0

	thumb_func_start sub_0803A6BC
sub_0803A6BC: @ 0x0803A6BC
	push {lr}
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #1
	bl sub_0803A664
	pop {r0}
	bx r0

	thumb_func_start sub_0803A6CC
sub_0803A6CC: @ 0x0803A6CC
	push {lr}
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #0
	bl sub_0803A664
	pop {r0}
	bx r0

	thumb_func_start sub_0803A6DC
sub_0803A6DC: @ 0x0803A6DC
	push {r4, lr}
	ldr r4, _0803A738 @ =0x030013C0
	ldr r0, [r4]
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #1
	bl sub_08009A34
	ldr r0, [r4]
	movs r1, #0x88
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #1
	bl sub_08009A34
	ldr r0, [r4]
	movs r1, #0x8a
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #1
	bl sub_08009A34
	ldr r0, [r4]
	movs r1, #0x8c
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #1
	bl sub_08009A34
	ldr r0, [r4]
	movs r1, #0x8e
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #1
	bl sub_08009A34
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803A738: .4byte 0x030013C0

	thumb_func_start sub_0803A73C
sub_0803A73C: @ 0x0803A73C
	push {r4, lr}
	ldr r4, _0803A798 @ =0x030013C0
	ldr r0, [r4]
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0
	bl sub_08009A34
	ldr r0, [r4]
	movs r1, #0x88
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0
	bl sub_08009A34
	ldr r0, [r4]
	movs r1, #0x8a
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0
	bl sub_08009A34
	ldr r0, [r4]
	movs r1, #0x8c
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0
	bl sub_08009A34
	ldr r0, [r4]
	movs r1, #0x8e
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0
	bl sub_08009A34
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803A798: .4byte 0x030013C0

	thumb_func_start sub_0803A79C
sub_0803A79C: @ 0x0803A79C
	push {r4, lr}
	ldr r4, _0803A7EC @ =0x030013C0
	ldr r0, [r4]
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_08009A00
	ldr r0, [r4]
	movs r1, #0x88
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_08009A00
	ldr r0, [r4]
	movs r1, #0x8a
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_08009A00
	ldr r0, [r4]
	movs r1, #0x8c
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_08009A00
	ldr r0, [r4]
	movs r1, #0x8e
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_08009A00
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803A7EC: .4byte 0x030013C0

	thumb_func_start sub_0803A7F0
sub_0803A7F0: @ 0x0803A7F0
	bx lr
	.align 2, 0

	thumb_func_start sub_0803A7F4
sub_0803A7F4: @ 0x0803A7F4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	movs r0, #1
	movs r1, #0x42
	bl sub_080099E0
	adds r7, r0, #0
	movs r1, #1
	bl sub_08009A34
	adds r0, r7, #0
	movs r1, #0xa0
	movs r2, #8
	bl sub_08009A70
	ldr r4, _0803A94C @ =0x030013C0
	ldr r0, [r4]
	movs r5, #0xae
	lsls r5, r5, #1
	adds r0, r0, r5
	ldr r1, [r0]
	adds r0, r7, #0
	bl sub_08009A78
	adds r0, r7, #0
	movs r1, #3
	bl sub_08009AB4
	ldr r6, _0803A950 @ =0x080ABFE8
	ldr r0, _0803A954 @ =0x080ABF30
	mov r8, r0
	adds r0, r7, #0
	adds r1, r6, #0
	mov r2, r8
	movs r3, #0x28
	bl sub_08009ACC
	adds r0, r7, #0
	movs r1, #0
	bl sub_08009B40
	ldr r0, [r4]
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r0, r1
	str r7, [r0]
	movs r0, #1
	movs r1, #0x40
	bl sub_080099E0
	adds r7, r0, #0
	movs r1, #1
	bl sub_08009A34
	adds r0, r7, #0
	movs r1, #0xb4
	movs r2, #0x18
	bl sub_08009A70
	ldr r0, [r4]
	adds r0, r0, r5
	ldr r1, [r0]
	adds r0, r7, #0
	bl sub_08009A78
	adds r0, r7, #0
	movs r1, #3
	bl sub_08009AB4
	adds r0, r7, #0
	adds r1, r6, #0
	mov r2, r8
	movs r3, #0x29
	bl sub_08009ACC
	adds r0, r7, #0
	movs r1, #0
	bl sub_08009B40
	ldr r0, [r4]
	movs r2, #0x88
	lsls r2, r2, #1
	adds r0, r0, r2
	str r7, [r0]
	movs r0, #1
	movs r1, #0x41
	bl sub_080099E0
	adds r7, r0, #0
	movs r1, #1
	bl sub_08009A34
	adds r0, r7, #0
	movs r1, #0xc7
	movs r2, #0x10
	bl sub_08009A70
	ldr r0, [r4]
	adds r0, r0, r5
	ldr r1, [r0]
	adds r0, r7, #0
	bl sub_08009A78
	adds r0, r7, #0
	movs r1, #3
	bl sub_08009AB4
	adds r0, r7, #0
	adds r1, r6, #0
	mov r2, r8
	movs r3, #0x27
	bl sub_08009ACC
	adds r0, r7, #0
	movs r1, #0
	bl sub_08009B40
	ldr r0, [r4]
	movs r1, #0x8a
	lsls r1, r1, #1
	adds r0, r0, r1
	str r7, [r0]
	movs r4, #0
_0803A8EC:
	movs r0, #1
	movs r1, #0x41
	bl sub_080099E0
	adds r7, r0, #0
	movs r1, #1
	bl sub_08009A34
	ldr r1, _0803A958 @ =0x080883EC
	lsls r0, r4, #1
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r0, r7, #0
	movs r2, #0x10
	bl sub_08009A70
	ldr r0, _0803A94C @ =0x030013C0
	ldr r0, [r0]
	movs r1, #0xae
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r7, #0
	bl sub_08009A78
	adds r0, r7, #0
	movs r1, #3
	bl sub_08009AB4
	cmp r4, #0
	beq _0803A960
	ldr r0, _0803A95C @ =0x02034BF0
	ldrb r0, [r0, #0xd]
	movs r1, #0xa
	bl __umodsi3
	adds r3, r0, #0
	adds r3, #0x14
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	adds r0, r7, #0
	ldr r1, _0803A950 @ =0x080ABFE8
	ldr r2, _0803A954 @ =0x080ABF30
	bl sub_08009ACC
	b _0803A97C
	.align 2, 0
_0803A94C: .4byte 0x030013C0
_0803A950: .4byte 0x080ABFE8
_0803A954: .4byte 0x080ABF30
_0803A958: .4byte 0x080883EC
_0803A95C: .4byte 0x02034BF0
_0803A960:
	ldr r0, _0803A9E0 @ =0x02034BF0
	ldrb r0, [r0, #0xd]
	movs r1, #0xa
	bl __udivsi3
	adds r3, r0, #0
	adds r3, #0x14
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	adds r0, r7, #0
	ldr r1, _0803A9E4 @ =0x080ABFE8
	ldr r2, _0803A9E8 @ =0x080ABF30
	bl sub_08009ACC
_0803A97C:
	adds r0, r7, #0
	movs r1, #0
	bl sub_08009B40
	ldr r0, _0803A9EC @ =0x030013C0
	ldr r0, [r0]
	lsls r1, r4, #2
	movs r2, #0x8c
	lsls r2, r2, #1
	adds r0, r0, r2
	adds r0, r0, r1
	str r7, [r0]
	adds r4, #1
	cmp r4, #1
	ble _0803A8EC
	ldr r1, _0803A9E0 @ =0x02034BF0
	ldrb r0, [r1, #3]
	lsls r0, r0, #0x1d
	cmp r0, #0
	blt _0803A9AE
	ldrb r0, [r1, #0xb]
	cmp r0, #0
	beq _0803A9AE
	cmp r0, #0x17
	bne _0803A9C4
_0803A9AE:
	ldr r0, _0803A9F0 @ =0x02031050
	movs r1, #0x89
	lsls r1, r1, #4
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0803A9C4
	bl sub_0803A73C
_0803A9C4:
	ldr r0, _0803A9EC @ =0x030013C0
	ldr r0, [r0]
	movs r2, #0x2a
	ldrsh r0, [r0, r2]
	ldr r1, _0803A9F4 @ =sub_0803A79C
	bl sub_08007BA0
	bl sub_0803A644
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803A9E0: .4byte 0x02034BF0
_0803A9E4: .4byte 0x080ABFE8
_0803A9E8: .4byte 0x080ABF30
_0803A9EC: .4byte 0x030013C0
_0803A9F0: .4byte 0x02031050
_0803A9F4: .4byte sub_0803A79C

	thumb_func_start sub_0803A9F8
sub_0803A9F8: @ 0x0803A9F8
	push {r4, r5, r6, r7, lr}
	bl sub_08007BD4
	adds r7, r0, #0
	ldrb r0, [r7]
	cmp r0, #4
	bls _0803AA08
	b _0803AD04
_0803AA08:
	lsls r0, r0, #2
	ldr r1, _0803AA14 @ =_0803AA18
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0803AA14: .4byte _0803AA18
_0803AA18: @ jump table
	.4byte _0803AA2C @ case 0
	.4byte _0803AAAC @ case 1
	.4byte _0803AB30 @ case 2
	.4byte _0803AC90 @ case 3
	.4byte _0803AD00 @ case 4
_0803AA2C:
	ldr r1, _0803AA50 @ =0x02034BF0
	movs r0, #1
	ldrsb r0, [r7, r0]
	ldrb r2, [r1, #0xd]
	adds r0, r0, r2
	cmp r0, #0
	bge _0803AA3C
	movs r0, #0
_0803AA3C:
	cmp r0, #0x62
	ble _0803AA42
	movs r0, #0x63
_0803AA42:
	strb r0, [r7, #6]
	ldrb r1, [r1, #0xd]
	cmp r0, r1
	bne _0803AA54
	movs r0, #0
	b _0803AA5E
	.align 2, 0
_0803AA50: .4byte 0x02034BF0
_0803AA54:
	cmp r0, r1
	ble _0803AA5C
	movs r0, #1
	b _0803AA5E
_0803AA5C:
	movs r0, #0xff
_0803AA5E:
	strb r0, [r7, #1]
	ldrb r0, [r7, #2]
	cmp r0, #0
	beq _0803AAAC
	ldr r6, _0803AB10 @ =0x030013C0
	ldr r0, [r6]
	movs r5, #0x88
	lsls r5, r5, #1
	adds r0, r0, r5
	ldr r0, [r0]
	movs r1, #1
	bl sub_08009B84
	ldr r0, [r6]
	adds r0, r0, r5
	ldr r4, [r0]
	bl sub_08009DDC
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_08009B9C
	ldr r0, [r6]
	adds r0, r0, r5
	ldr r0, [r0]
	movs r2, #0xb
	rsbs r2, r2, #0
	movs r1, #0
	bl sub_08009C14
	ldr r0, [r6]
	adds r0, r0, r5
	ldr r0, [r0]
	ldr r0, [r0, #0x24]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r2, #0
	bl sub_08009E84
_0803AAAC:
	ldr r4, _0803AB14 @ =0x02034BF0
	ldrb r0, [r7, #1]
	ldrb r1, [r4, #0xd]
	adds r0, r0, r1
	strb r0, [r4, #0xd]
	ldr r6, _0803AB10 @ =0x030013C0
	ldr r0, [r6]
	movs r2, #0x8c
	lsls r2, r2, #1
	adds r0, r0, r2
	ldr r5, [r0]
	ldrb r0, [r4, #0xd]
	movs r1, #0xa
	bl __udivsi3
	adds r1, r0, #0
	adds r1, #0x14
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r5, #0
	bl sub_08009AFC
	ldr r0, [r6]
	movs r1, #0x8e
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r5, [r0]
	ldrb r0, [r4, #0xd]
	movs r1, #0xa
	bl __umodsi3
	adds r1, r0, #0
	adds r1, #0x14
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r5, #0
	bl sub_08009AFC
	ldrb r0, [r7, #2]
	cmp r0, #0
	beq _0803AB22
	movs r0, #1
	ldrsb r0, [r7, r0]
	cmp r0, #0
	bge _0803AB1C
	ldr r0, _0803AB18 @ =0x000003F3
	bl m4aSongNumStart
	b _0803AB22
	.align 2, 0
_0803AB10: .4byte 0x030013C0
_0803AB14: .4byte 0x02034BF0
_0803AB18: .4byte 0x000003F3
_0803AB1C:
	ldr r0, _0803AB2C @ =0x000003FD
	bl m4aSongNumStart
_0803AB22:
	movs r0, #0
	strh r0, [r7, #4]
	movs r0, #2
	strb r0, [r7]
	b _0803AD04
	.align 2, 0
_0803AB2C: .4byte 0x000003FD
_0803AB30:
	movs r5, #0xc
	ldr r0, _0803AB5C @ =0x02034BF0
	ldrb r3, [r0, #0xd]
	ldrb r1, [r7, #6]
	cmp r3, r1
	beq _0803AB3E
	movs r5, #6
_0803AB3E:
	ldrb r0, [r7, #2]
	cmp r0, #0
	beq _0803ABA4
	ldrh r2, [r7, #4]
	cmp r2, r5
	bge _0803ABA4
	movs r0, #1
	ldrsb r0, [r7, r0]
	cmp r0, #0
	bge _0803AB78
	cmp r3, r1
	bne _0803AB64
	ldr r1, _0803AB60 @ =0x080883F0
	b _0803AB66
	.align 2, 0
_0803AB5C: .4byte 0x02034BF0
_0803AB60: .4byte 0x080883F0
_0803AB64:
	ldr r1, _0803AB74 @ =0x08088408
_0803AB66:
	lsls r0, r2, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #2
	subs r2, r0, r1
	b _0803AB8C
	.align 2, 0
_0803AB74: .4byte 0x08088408
_0803AB78:
	cmp r3, r1
	bne _0803AB84
	ldr r1, _0803AB80 @ =0x080883F0
	b _0803AB86
	.align 2, 0
_0803AB80: .4byte 0x080883F0
_0803AB84:
	ldr r1, _0803ABF4 @ =0x08088408
_0803AB86:
	lsls r0, r2, #1
	adds r0, r0, r1
	ldrh r2, [r0]
_0803AB8C:
	ldr r0, _0803ABF8 @ =0x030013C0
	ldr r0, [r0]
	movs r1, #0x88
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r0, [r0, #0x24]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r1, r2, #0
	bl sub_08009E84
_0803ABA4:
	ldr r0, _0803ABFC @ =0x02034BF0
	ldrb r0, [r0, #0xd]
	ldrb r2, [r7, #6]
	cmp r0, r2
	bne _0803AC08
	ldr r4, _0803ABF8 @ =0x030013C0
	ldr r0, [r4]
	movs r1, #0x8c
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r2, _0803AC00 @ =0x08088424
	ldrh r1, [r7, #4]
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r2, [r1]
	adds r2, #0x10
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r1, #0xd4
	bl sub_08009A70
	ldr r0, [r4]
	movs r2, #0x8e
	lsls r2, r2, #1
	adds r0, r0, r2
	ldr r0, [r0]
	ldr r2, _0803AC04 @ =0x0808843C
	ldrh r1, [r7, #4]
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r2, [r1]
	adds r2, #0x10
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r1, #0xe4
	bl sub_08009A70
	b _0803AC4A
	.align 2, 0
_0803ABF4: .4byte 0x08088408
_0803ABF8: .4byte 0x030013C0
_0803ABFC: .4byte 0x02034BF0
_0803AC00: .4byte 0x08088424
_0803AC04: .4byte 0x0808843C
_0803AC08:
	ldr r4, _0803AC74 @ =0x030013C0
	ldr r0, [r4]
	movs r1, #0x8c
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r2, _0803AC78 @ =0x08088454
	ldrh r1, [r7, #4]
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r2, [r1]
	adds r2, #0x10
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r1, #0xd4
	bl sub_08009A70
	ldr r0, [r4]
	movs r2, #0x8e
	lsls r2, r2, #1
	adds r0, r0, r2
	ldr r0, [r0]
	ldr r2, _0803AC7C @ =0x08088460
	ldrh r1, [r7, #4]
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r2, [r1]
	adds r2, #0x10
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r1, #0xe4
	bl sub_08009A70
_0803AC4A:
	ldrh r0, [r7, #4]
	adds r0, #1
	strh r0, [r7, #4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r5
	blt _0803AD04
	movs r0, #0
	strh r0, [r7, #4]
	ldr r0, _0803AC80 @ =0x02034BF0
	ldrb r0, [r0, #0xd]
	ldrb r1, [r7, #6]
	cmp r0, r1
	bne _0803AC8A
	ldrb r0, [r7, #2]
	cmp r0, #0
	beq _0803AC84
	movs r0, #3
	strb r0, [r7]
	b _0803AD04
	.align 2, 0
_0803AC74: .4byte 0x030013C0
_0803AC78: .4byte 0x08088454
_0803AC7C: .4byte 0x08088460
_0803AC80: .4byte 0x02034BF0
_0803AC84:
	movs r0, #4
	strb r0, [r7]
	b _0803AD04
_0803AC8A:
	movs r0, #1
	strb r0, [r7]
	b _0803AD04
_0803AC90:
	movs r0, #1
	ldrsb r0, [r7, r0]
	cmp r0, #0
	bge _0803ACB0
	ldr r1, _0803ACAC @ =0x08088414
	ldrh r0, [r7, #4]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #2
	subs r2, r0, r1
	b _0803ACBA
	.align 2, 0
_0803ACAC: .4byte 0x08088414
_0803ACB0:
	ldr r1, _0803ACF8 @ =0x08088414
	ldrh r0, [r7, #4]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r2, [r0]
_0803ACBA:
	ldr r4, _0803ACFC @ =0x030013C0
	ldr r0, [r4]
	movs r1, #0x88
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r0, [r0, #0x24]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r1, r2, #0
	bl sub_08009E84
	ldrh r0, [r7, #4]
	adds r0, #1
	strh r0, [r7, #4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #7
	bls _0803AD04
	movs r0, #4
	strb r0, [r7]
	ldr r0, [r4]
	movs r2, #0x88
	lsls r2, r2, #1
	adds r0, r0, r2
	ldr r0, [r0]
	ldr r0, [r0, #0x24]
	bl sub_08009E54
	b _0803AD04
	.align 2, 0
_0803ACF8: .4byte 0x08088414
_0803ACFC: .4byte 0x030013C0
_0803AD00:
	bl sub_0803A644
_0803AD04:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0803AD0C
sub_0803AD0C: @ 0x0803AD0C
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _0803AD40 @ =0x030013C0
	ldr r0, [r5]
	movs r1, #0x2c
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	movs r1, #0
	strb r1, [r0]
	strh r1, [r0, #4]
	ldr r0, [r5]
	movs r1, #0x2c
	ldrsh r0, [r0, r1]
	ldr r1, _0803AD44 @ =0x0808847C
	lsls r4, r4, #2
	adds r4, r4, r1
	ldr r1, [r4]
	bl sub_08007B84
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803AD40: .4byte 0x030013C0
_0803AD44: .4byte 0x0808847C

	thumb_func_start sub_0803AD48
sub_0803AD48: @ 0x0803AD48
	push {lr}
	ldr r0, _0803AD64 @ =0x030013C0
	ldr r1, [r0]
	adds r1, #0x6a
	ldrb r2, [r1]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	movs r0, #0
	bl sub_0803AD0C
	pop {r0}
	bx r0
	.align 2, 0
_0803AD64: .4byte 0x030013C0

	thumb_func_start sub_0803AD68
sub_0803AD68: @ 0x0803AD68
	push {lr}
	ldr r0, _0803AD84 @ =0x030013C0
	ldr r1, [r0]
	adds r1, #0x6a
	ldrb r0, [r1]
	movs r2, #4
	orrs r0, r2
	strb r0, [r1]
	movs r0, #1
	bl sub_0803AD0C
	pop {r0}
	bx r0
	.align 2, 0
_0803AD84: .4byte 0x030013C0

	thumb_func_start sub_0803AD88
sub_0803AD88: @ 0x0803AD88
	push {lr}
	ldr r0, _0803ADA4 @ =0x030013C0
	ldr r1, [r0]
	adds r1, #0x6a
	ldrb r0, [r1]
	movs r2, #4
	orrs r0, r2
	strb r0, [r1]
	movs r0, #2
	bl sub_0803AD0C
	pop {r0}
	bx r0
	.align 2, 0
_0803ADA4: .4byte 0x030013C0

	thumb_func_start sub_0803ADA8
sub_0803ADA8: @ 0x0803ADA8
	push {lr}
	ldr r0, _0803ADC4 @ =0x030013C0
	ldr r1, [r0]
	adds r1, #0x6a
	ldrb r0, [r1]
	movs r2, #4
	orrs r0, r2
	strb r0, [r1]
	movs r0, #3
	bl sub_0803AD0C
	pop {r0}
	bx r0
	.align 2, 0
_0803ADC4: .4byte 0x030013C0

	thumb_func_start sub_0803ADC8
sub_0803ADC8: @ 0x0803ADC8
	bx lr
	.align 2, 0

	thumb_func_start sub_0803ADCC
sub_0803ADCC: @ 0x0803ADCC
	push {lr}
	bl sub_0803AD48
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0803ADD8
sub_0803ADD8: @ 0x0803ADD8
	push {r4, r5, r6, lr}
	bl sub_08007BD4
	adds r5, r0, #0
	ldrb r0, [r5]
	cmp r0, #1
	beq _0803AE1C
	cmp r0, #1
	bgt _0803ADF0
	cmp r0, #0
	beq _0803ADFA
	b _0803AE90
_0803ADF0:
	cmp r0, #2
	beq _0803AE54
	cmp r0, #3
	beq _0803AE8C
	b _0803AE90
_0803ADFA:
	ldr r1, _0803AE18 @ =0x030024E0
	ldrh r2, [r1]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r3, #0
	orrs r0, r2
	strh r0, [r1]
	movs r0, #0x78
	strh r0, [r1, #0x14]
	adds r0, #0xf4
	bl m4aSongNumStart
	movs r0, #1
	strb r0, [r5]
	b _0803AE90
	.align 2, 0
_0803AE18: .4byte 0x030024E0
_0803AE1C:
	ldr r6, _0803AE4C @ =0x030024E0
	ldrh r4, [r6, #0x14]
	ldrh r0, [r5, #4]
	adds r0, #1
	strh r0, [r5, #4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xf
	subs r0, #1
	movs r1, #0xc
	bl __divsi3
	subs r4, r4, r0
	cmp r4, #2
	bgt _0803AE48
	ldr r0, _0803AE50 @ =0x000003F9
	bl m4aSongNumStart
	movs r0, #0
	strh r0, [r5, #4]
	movs r0, #2
	strb r0, [r5]
	movs r4, #2
_0803AE48:
	strh r4, [r6, #0x14]
	b _0803AE90
	.align 2, 0
_0803AE4C: .4byte 0x030024E0
_0803AE50: .4byte 0x000003F9
_0803AE54:
	ldr r2, _0803AE84 @ =0x030024E0
	ldr r1, _0803AE88 @ =0x08088474
	ldrh r0, [r5, #4]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r0, #2
	subs r0, r0, r1
	strh r0, [r2, #0x14]
	ldrh r0, [r5, #4]
	adds r0, #1
	strh r0, [r5, #4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #3
	bls _0803AE90
	movs r0, #0
	strh r0, [r5, #4]
	movs r0, #3
	strb r0, [r5]
	movs r0, #0x1e
	bl sub_08007AC0
	b _0803AE90
	.align 2, 0
_0803AE84: .4byte 0x030024E0
_0803AE88: .4byte 0x08088474
_0803AE8C:
	bl sub_0803AD48
_0803AE90:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0803AE98
sub_0803AE98: @ 0x0803AE98
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x10
	bl sub_08007BD4
	adds r7, r0, #0
	ldrb r0, [r7]
	cmp r0, #7
	bls _0803AEAE
	b _0803B218
_0803AEAE:
	lsls r0, r0, #2
	ldr r1, _0803AEB8 @ =_0803AEBC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0803AEB8: .4byte _0803AEBC
_0803AEBC: @ jump table
	.4byte _0803AEDC @ case 0
	.4byte _0803AF54 @ case 1
	.4byte _0803AFBC @ case 2
	.4byte _0803B020 @ case 3
	.4byte _0803B088 @ case 4
	.4byte _0803B10C @ case 5
	.4byte _0803B168 @ case 6
	.4byte _0803B214 @ case 7
_0803AEDC:
	ldr r4, _0803AF48 @ =0x02034BF0
	ldr r1, _0803AF4C @ =0x0000022F
	adds r0, r4, r1
	ldrb r0, [r0]
	strb r0, [r7, #1]
	movs r0, #3
	bl sub_0800B828
	strb r0, [r7, #2]
	movs r2, #0xfc
	lsls r2, r2, #1
	adds r0, r4, r2
	ldr r6, _0803AF50 @ =0x08087218
	ldrb r1, [r7, #2]
	adds r2, #0x34
	adds r5, r4, r2
	adds r1, r1, r5
	ldrb r2, [r1]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r6
	ldrh r1, [r1]
	bl sub_0800B87C
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803AF34
	movs r1, #0xf4
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrb r1, [r7, #2]
	adds r1, r1, r5
	ldrb r2, [r1]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r6
	ldrh r1, [r1]
	bl sub_0800B87C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0803AF3C
_0803AF34:
	movs r0, #3
	bl sub_0800B828
	strb r0, [r7, #2]
_0803AF3C:
	movs r1, #0
	movs r0, #1
	strb r0, [r7]
	strh r1, [r7, #4]
	b _0803B218
	.align 2, 0
_0803AF48: .4byte 0x02034BF0
_0803AF4C: .4byte 0x0000022F
_0803AF50: .4byte 0x08087218
_0803AF54:
	ldrh r0, [r7, #4]
	movs r1, #6
	bl __umodsi3
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0803AF92
	ldrb r0, [r7, #1]
	adds r0, #1
	movs r1, #3
	bl __modsi3
	strb r0, [r7, #1]
	ldr r2, _0803AFAC @ =0x08087460
	ldr r0, _0803AFB0 @ =0x02034BF0
	ldrb r1, [r0, #7]
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x1f
	lsls r0, r1, #1
	orrs r0, r1
	ldrb r1, [r7, #1]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	ldr r1, _0803AFB4 @ =0x05000180
	bl sub_08008348
	ldr r0, _0803AFB8 @ =0x000003F7
	bl m4aSongNumStart
_0803AF92:
	ldrh r0, [r7, #4]
	adds r0, #1
	strh r0, [r7, #4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x59
	bhi _0803AFA2
	b _0803B218
_0803AFA2:
	movs r0, #0
	strh r0, [r7, #4]
	movs r0, #2
	strb r0, [r7]
	b _0803B218
	.align 2, 0
_0803AFAC: .4byte 0x08087460
_0803AFB0: .4byte 0x02034BF0
_0803AFB4: .4byte 0x05000180
_0803AFB8: .4byte 0x000003F7
_0803AFBC:
	ldrh r0, [r7, #4]
	movs r1, #0xc
	bl __umodsi3
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0803AFFA
	ldrb r0, [r7, #1]
	adds r0, #1
	movs r1, #3
	bl __modsi3
	strb r0, [r7, #1]
	ldr r2, _0803B010 @ =0x08087460
	ldr r0, _0803B014 @ =0x02034BF0
	ldrb r1, [r0, #7]
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x1f
	lsls r0, r1, #1
	orrs r0, r1
	ldrb r1, [r7, #1]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	ldr r1, _0803B018 @ =0x05000180
	bl sub_08008348
	ldr r0, _0803B01C @ =0x000003F7
	bl m4aSongNumStart
_0803AFFA:
	ldrh r0, [r7, #4]
	adds r0, #1
	strh r0, [r7, #4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x59
	bhi _0803B00A
	b _0803B218
_0803B00A:
	movs r0, #3
	strb r0, [r7]
	b _0803B218
	.align 2, 0
_0803B010: .4byte 0x08087460
_0803B014: .4byte 0x02034BF0
_0803B018: .4byte 0x05000180
_0803B01C: .4byte 0x000003F7
_0803B020:
	ldrh r0, [r7, #4]
	movs r1, #0xc
	bl __umodsi3
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	bne _0803B080
	ldrb r0, [r7, #1]
	adds r0, #1
	movs r1, #3
	bl __modsi3
	strb r0, [r7, #1]
	ldr r2, _0803B070 @ =0x08087460
	ldr r0, _0803B074 @ =0x02034BF0
	ldrb r1, [r0, #7]
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x1f
	lsls r0, r1, #1
	orrs r0, r1
	ldrb r1, [r7, #1]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	ldr r1, _0803B078 @ =0x05000180
	bl sub_08008348
	ldr r0, _0803B07C @ =0x000003F7
	bl m4aSongNumStart
	ldrb r0, [r7, #1]
	ldrb r2, [r7, #2]
	cmp r0, r2
	bne _0803B080
	movs r0, #4
	strb r0, [r7]
	strh r4, [r7, #4]
	b _0803B218
	.align 2, 0
_0803B070: .4byte 0x08087460
_0803B074: .4byte 0x02034BF0
_0803B078: .4byte 0x05000180
_0803B07C: .4byte 0x000003F7
_0803B080:
	ldrh r0, [r7, #4]
	adds r0, #1
	strh r0, [r7, #4]
	b _0803B218
_0803B088:
	ldr r4, _0803B0F4 @ =0x02034BF0
	ldrb r0, [r7, #2]
	ldr r1, _0803B0F8 @ =0x0000022F
	adds r6, r4, r1
	strb r0, [r6]
	movs r2, #0xfc
	lsls r2, r2, #1
	adds r0, r4, r2
	ldr r3, _0803B0FC @ =0x08087218
	ldrb r1, [r6]
	adds r2, #0x34
	adds r2, r2, r4
	mov r8, r2
	add r1, r8
	ldrb r2, [r1]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r3
	ldrh r1, [r1]
	bl sub_0800B844
	ldr r0, _0803B100 @ =0x00000233
	adds r5, r4, r0
	movs r1, #0
	ldrsb r1, [r5, r1]
	movs r2, #0x8c
	lsls r2, r2, #2
	adds r4, r4, r2
	adds r1, r1, r4
	ldrb r0, [r6]
	add r0, r8
	ldrb r0, [r0]
	strb r0, [r1]
	movs r0, #0
	ldrsb r0, [r5, r0]
	adds r0, #1
	movs r1, #3
	bl __modsi3
	strb r0, [r5]
	ldrb r0, [r6]
	ldr r1, _0803B104 @ =0x030013C0
	ldr r1, [r1]
	ldr r2, _0803B108 @ =0x000006A4
	adds r1, r1, r2
	bl sub_080339F0
	movs r0, #5
	strb r0, [r7]
	movs r0, #0x30
	bl sub_08007AC0
	b _0803B218
	.align 2, 0
_0803B0F4: .4byte 0x02034BF0
_0803B0F8: .4byte 0x0000022F
_0803B0FC: .4byte 0x08087218
_0803B100: .4byte 0x00000233
_0803B104: .4byte 0x030013C0
_0803B108: .4byte 0x000006A4
_0803B10C:
	ldr r0, _0803B154 @ =0x030013C0
	ldr r0, [r0]
	ldr r1, _0803B158 @ =0x000006A4
	adds r0, r0, r1
	str r0, [sp, #4]
	ldr r0, _0803B15C @ =0x02034BF0
	ldr r2, _0803B160 @ =0x0000022F
	adds r0, r0, r2
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #8
	ldr r1, _0803B164 @ =0x0600A000
	adds r0, r0, r1
	str r0, [sp, #8]
	mov r1, sp
	movs r5, #0
	movs r4, #0
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r1, #0xc]
	mov r0, sp
	strb r5, [r0]
	strh r4, [r0, #0xe]
	bl sub_08009F6C
	movs r0, #6
	strb r0, [r7]
	strh r4, [r7, #4]
	strb r5, [r7, #1]
	movs r0, #0xfe
	lsls r0, r0, #2
	bl m4aSongNumStart
	b _0803B218
	.align 2, 0
_0803B154: .4byte 0x030013C0
_0803B158: .4byte 0x000006A4
_0803B15C: .4byte 0x02034BF0
_0803B160: .4byte 0x0000022F
_0803B164: .4byte 0x0600A000
_0803B168:
	ldrh r0, [r7, #4]
	movs r1, #6
	bl __umodsi3
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0803B1CA
	ldrb r0, [r7, #1]
	movs r1, #1
	eors r0, r1
	strb r0, [r7, #1]
	cmp r0, #0
	beq _0803B1A8
	ldr r1, _0803B19C @ =0x08087458
	ldr r0, _0803B1A0 @ =0x02034BF0
	ldrb r0, [r0, #7]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1f
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _0803B1A4 @ =0x05000180
	bl sub_08008348
	b _0803B1CA
	.align 2, 0
_0803B19C: .4byte 0x08087458
_0803B1A0: .4byte 0x02034BF0
_0803B1A4: .4byte 0x05000180
_0803B1A8:
	ldr r3, _0803B204 @ =0x08087460
	ldr r0, _0803B208 @ =0x02034BF0
	ldr r1, _0803B20C @ =0x0000022F
	adds r2, r0, r1
	ldrb r1, [r0, #7]
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x1f
	lsls r0, r1, #1
	orrs r0, r1
	ldrb r2, [r2]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	ldr r1, _0803B210 @ =0x05000180
	bl sub_08008348
_0803B1CA:
	ldrh r0, [r7, #4]
	adds r0, #1
	strh r0, [r7, #4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x48
	bls _0803B218
	ldr r3, _0803B204 @ =0x08087460
	ldr r0, _0803B208 @ =0x02034BF0
	ldr r1, _0803B20C @ =0x0000022F
	adds r2, r0, r1
	ldrb r1, [r0, #7]
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x1f
	lsls r0, r1, #1
	orrs r0, r1
	ldrb r2, [r2]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	ldr r1, _0803B210 @ =0x05000180
	bl sub_08008348
	movs r0, #0
	strh r0, [r7, #4]
	movs r0, #7
	strb r0, [r7]
	b _0803B218
	.align 2, 0
_0803B204: .4byte 0x08087460
_0803B208: .4byte 0x02034BF0
_0803B20C: .4byte 0x0000022F
_0803B210: .4byte 0x05000180
_0803B214:
	bl sub_0803AD48
_0803B218:
	add sp, #0x10
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0803B224
sub_0803B224: @ 0x0803B224
	push {r4, lr}
	bl sub_08007BD4
	adds r4, r0, #0
	ldrb r0, [r4]
	cmp r0, #1
	beq _0803B254
	cmp r0, #1
	bgt _0803B23C
	cmp r0, #0
	beq _0803B242
	b _0803B288
_0803B23C:
	cmp r0, #2
	beq _0803B284
	b _0803B288
_0803B242:
	ldr r0, _0803B250 @ =0x0000016B
	bl m4aSongNumStart
	movs r0, #1
	strb r0, [r4]
	b _0803B288
	.align 2, 0
_0803B250: .4byte 0x0000016B
_0803B254:
	ldr r2, _0803B27C @ =0x030024E0
	ldrh r0, [r2, #0x14]
	adds r0, #3
	strh r0, [r2, #0x14]
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x27
	bls _0803B288
	ldrh r1, [r2]
	ldr r0, _0803B280 @ =0x0000FDFF
	ands r0, r1
	strh r0, [r2]
	movs r0, #0
	strh r0, [r4, #4]
	movs r0, #2
	strb r0, [r4]
	b _0803B288
	.align 2, 0
_0803B27C: .4byte 0x030024E0
_0803B280: .4byte 0x0000FDFF
_0803B284:
	bl sub_0803AD48
_0803B288:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0803B290
sub_0803B290: @ 0x0803B290
	push {r4, r5, lr}
	bl sub_08007BD4
	adds r5, r0, #0
	ldrb r0, [r5]
	cmp r0, #0
	beq _0803B2A4
	cmp r0, #1
	beq _0803B2C0
	b _0803B31E
_0803B2A4:
	strh r0, [r5, #2]
	ldr r4, [r5, #4]
	bl sub_08009DDC
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_08009B9C
	ldr r0, [r5, #4]
	movs r1, #1
	bl sub_08009A34
	movs r0, #1
	strb r0, [r5]
_0803B2C0:
	ldr r0, _0803B324 @ =0x0808848C
	ldrh r1, [r5, #2]
	lsls r1, r1, #1
	adds r1, r1, r0
	ldr r0, [r5, #4]
	ldr r0, [r0, #0x24]
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r1, r2, #0
	bl sub_08009E84
	ldrh r0, [r5, #2]
	adds r0, #1
	strh r0, [r5, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #6
	bne _0803B2F6
	ldr r0, _0803B328 @ =0x030013C0
	ldr r0, [r0]
	ldr r0, [r0, #0x70]
	ldr r1, _0803B32C @ =0x02034BF0
	ldrb r1, [r1, #1]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1c
	bl sub_08009AFC
_0803B2F6:
	ldrh r0, [r5, #2]
	cmp r0, #0xe
	bls _0803B31E
	ldr r0, [r5, #4]
	ldr r0, [r0, #0x24]
	bl sub_08009E54
	ldr r0, [r5, #4]
	bl sub_08009A00
	ldr r0, _0803B328 @ =0x030013C0
	ldr r1, [r0]
	adds r1, #0x6a
	ldrb r2, [r1]
	movs r0, #9
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	bl sub_08007A64
_0803B31E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803B324: .4byte 0x0808848C
_0803B328: .4byte 0x030013C0
_0803B32C: .4byte 0x02034BF0

	thumb_func_start sub_0803B330
sub_0803B330: @ 0x0803B330
	push {r4, r5, r6, lr}
	ldr r0, _0803B3B0 @ =sub_0803B290
	movs r1, #0x43
	movs r2, #0
	bl sub_08007968
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl sub_08007BBC
	adds r5, r0, #0
	movs r0, #0
	strb r0, [r5]
	strh r0, [r5, #2]
	movs r0, #1
	movs r1, #0x1f
	bl sub_080099E0
	adds r4, r0, #0
	movs r1, #0
	bl sub_08009A34
	adds r0, r4, #0
	movs r1, #0x78
	movs r2, #0x26
	bl sub_08009A70
	ldr r6, _0803B3B4 @ =0x030013C0
	ldr r0, [r6]
	movs r1, #0xae
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl sub_08009A78
	adds r0, r4, #0
	movs r1, #3
	bl sub_08009AB4
	ldr r1, _0803B3B8 @ =0x080ABFE8
	ldr r2, _0803B3BC @ =0x080ABF30
	adds r0, r4, #0
	movs r3, #0x2a
	bl sub_08009ACC
	adds r0, r4, #0
	movs r1, #1
	bl sub_08009B84
	adds r0, r4, #0
	movs r1, #0xff
	bl sub_08009B40
	str r4, [r5, #4]
	ldr r1, [r6]
	adds r1, #0x6a
	ldrb r0, [r1]
	movs r2, #8
	orrs r0, r2
	strb r0, [r1]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803B3B0: .4byte sub_0803B290
_0803B3B4: .4byte 0x030013C0
_0803B3B8: .4byte 0x080ABFE8
_0803B3BC: .4byte 0x080ABF30

	thumb_func_start sub_0803B3C0
sub_0803B3C0: @ 0x0803B3C0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	bl sub_08007BD4
	mov sl, r0
	ldrb r0, [r0]
	cmp r0, #4
	bls _0803B3DA
	b _0803B780
_0803B3DA:
	lsls r0, r0, #2
	ldr r1, _0803B3E4 @ =_0803B3E8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0803B3E4: .4byte _0803B3E8
_0803B3E8: @ jump table
	.4byte _0803B3FC @ case 0
	.4byte _0803B4F8 @ case 1
	.4byte _0803B5BC @ case 2
	.4byte _0803B690 @ case 3
	.4byte _0803B74C @ case 4
_0803B3FC:
	movs r0, #0
	mov sb, r0
	ldr r7, _0803B4D4 @ =0x030013C0
	movs r1, #0x94
	lsls r1, r1, #1
	mov r8, r1
_0803B408:
	movs r0, #0xa
	bl sub_0800B828
	lsls r0, r0, #0x13
	movs r2, #0x80
	lsls r2, r2, #0xf
	adds r6, r0, r2
	asrs r6, r6, #0x10
	ldr r1, _0803B4D8 @ =0x0808850A
	mov r3, sb
	lsls r0, r3, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #8
	movs r1, #0xb4
	lsls r1, r1, #1
	bl __divsi3
	adds r4, r0, #0
	adds r0, #0x40
	lsls r0, r0, #1
	ldr r2, _0803B4DC @ =0x0807F240
	adds r0, r0, r2
	movs r3, #0
	ldrsh r1, [r0, r3]
	adds r0, r6, #0
	bl sub_08007E64
	ldr r1, [r7]
	mov r2, sb
	lsls r5, r2, #2
	ldr r3, _0803B4E0 @ =0x000009A4
	adds r1, r1, r3
	adds r1, r1, r5
	adds r0, #0x78
	strh r0, [r1]
	lsls r4, r4, #1
	ldr r0, _0803B4DC @ =0x0807F240
	adds r4, r4, r0
	movs r2, #0
	ldrsh r1, [r4, r2]
	adds r0, r6, #0
	bl sub_08007E64
	ldr r1, [r7]
	ldr r3, _0803B4E4 @ =0x000009A6
	adds r2, r1, r3
	adds r2, r2, r5
	adds r0, #0x50
	strh r0, [r2]
	mov r3, r8
	adds r0, r1, r3
	adds r0, r0, r5
	ldr r0, [r0]
	ldr r3, _0803B4E0 @ =0x000009A4
	adds r1, r1, r3
	adds r1, r1, r5
	movs r3, #0
	ldrsh r1, [r1, r3]
	movs r3, #0
	ldrsh r2, [r2, r3]
	bl sub_08009A70
	ldr r0, [r7]
	add r0, r8
	adds r0, r0, r5
	ldr r0, [r0]
	movs r1, #1
	bl sub_08009A34
	movs r0, #1
	add sb, r0
	mov r1, sb
	cmp r1, #0xb
	ble _0803B408
	movs r4, #0
	movs r0, #0
	mov r2, sl
	strh r0, [r2, #2]
	movs r0, #1
	strb r0, [r2]
	ldr r0, _0803B4E8 @ =0x000003FA
	bl m4aSongNumStart
	ldr r0, _0803B4EC @ =0x030056F0
	movs r1, #3
	bl m4aMPlayFadeOut
	ldr r1, _0803B4F0 @ =0x030024E0
	adds r2, r1, #0
	adds r2, #0x4a
	ldr r0, _0803B4F4 @ =0x00000CDC
	strh r0, [r2]
	adds r0, r1, #0
	adds r0, #0x4e
	strb r4, [r0]
	adds r1, #0x4c
	movs r0, #0x10
	strh r0, [r1]
	b _0803B780
	.align 2, 0
_0803B4D4: .4byte 0x030013C0
_0803B4D8: .4byte 0x0808850A
_0803B4DC: .4byte 0x0807F240
_0803B4E0: .4byte 0x000009A4
_0803B4E4: .4byte 0x000009A6
_0803B4E8: .4byte 0x000003FA
_0803B4EC: .4byte 0x030056F0
_0803B4F0: .4byte 0x030024E0
_0803B4F4: .4byte 0x00000CDC
_0803B4F8:
	mov r3, sl
	ldrh r0, [r3, #2]
	adds r0, #1
	strh r0, [r3, #2]
	ldr r4, _0803B5A8 @ =0x030024E0
	ldrh r0, [r3, #2]
	movs r1, #6
	bl __divsi3
	movs r1, #0x1f
	ands r0, r1
	adds r4, #0x4e
	strb r0, [r4]
	movs r0, #0
	mov sb, r0
	ldr r1, _0803B5AC @ =0x080884AA
	str r1, [sp]
_0803B51A:
	ldr r0, _0803B5B0 @ =0x030013C0
	ldr r4, [r0]
	mov r2, sb
	lsls r2, r2, #2
	mov r8, r2
	ldr r3, _0803B5B4 @ =0x000009A4
	adds r0, r4, r3
	add r0, r8
	movs r1, #0
	ldrsh r5, [r0, r1]
	ldr r2, [sp]
	movs r3, #0
	ldrsh r0, [r2, r3]
	subs r0, r0, r5
	mov r1, sl
	ldrh r6, [r1, #2]
	muls r0, r6, r0
	movs r1, #0x30
	bl __divsi3
	adds r7, r5, r0
	ldr r2, _0803B5B8 @ =0x000009A6
	adds r0, r4, r2
	add r0, r8
	movs r3, #0
	ldrsh r5, [r0, r3]
	ldr r1, [sp]
	movs r2, #2
	ldrsh r0, [r1, r2]
	subs r0, r0, r5
	muls r0, r6, r0
	movs r1, #0x30
	bl __divsi3
	adds r2, r5, r0
	movs r3, #0x94
	lsls r3, r3, #1
	adds r4, r4, r3
	add r4, r8
	ldr r0, [r4]
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl sub_08009A70
	ldr r0, [sp]
	adds r0, #4
	str r0, [sp]
	movs r1, #1
	add sb, r1
	mov r2, sb
	cmp r2, #0xb
	ble _0803B51A
	mov r3, sl
	ldrh r0, [r3, #2]
	cmp r0, #0x2f
	bhi _0803B590
	b _0803B780
_0803B590:
	movs r0, #0
	strh r0, [r3, #2]
	movs r0, #2
	strb r0, [r3]
	movs r0, #0x56
	bl m4aSongNumStart
	movs r0, #0xc
	bl sub_08007AC0
	b _0803B780
	.align 2, 0
_0803B5A8: .4byte 0x030024E0
_0803B5AC: .4byte 0x080884AA
_0803B5B0: .4byte 0x030013C0
_0803B5B4: .4byte 0x000009A4
_0803B5B8: .4byte 0x000009A6
_0803B5BC:
	ldr r1, _0803B66C @ =0x030024E0
	adds r2, r1, #0
	adds r2, #0x4a
	movs r0, #0
	strh r0, [r2]
	ldrh r2, [r1]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r3, #0
	orrs r0, r2
	strh r0, [r1]
	ldr r1, _0803B670 @ =0x081006BC
	ldr r0, _0803B674 @ =0x03004400
	ldrb r0, [r0, #0x14]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0xc1
	bl sub_08009554
	ldr r0, _0803B678 @ =0x000003FB
	bl m4aSongNumStart
	movs r0, #3
	mov r1, sl
	strb r0, [r1]
	movs r2, #0
	mov sb, r2
	ldr r3, _0803B67C @ =0x0807F240
	mov r8, r3
	movs r0, #0xb4
	lsls r0, r0, #1
	mov sl, r0
	ldr r7, _0803B680 @ =0x030013C0
_0803B600:
	movs r0, #0xf
	bl sub_0800B828
	lsls r0, r0, #0x13
	movs r1, #0xc8
	lsls r1, r1, #0xf
	adds r5, r0, r1
	asrs r5, r5, #0x10
	ldr r1, _0803B684 @ =0x0808850A
	mov r2, sb
	lsls r0, r2, #1
	adds r0, r0, r1
	movs r3, #0
	ldrsh r0, [r0, r3]
	lsls r0, r0, #8
	mov r1, sl
	bl __divsi3
	adds r4, r0, #0
	adds r0, #0x40
	lsls r0, r0, #1
	add r0, r8
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r0, r5, #0
	bl sub_08007E64
	ldr r1, [r7]
	mov r3, sb
	lsls r6, r3, #2
	ldr r2, _0803B688 @ =0x000009A4
	adds r1, r1, r2
	adds r1, r1, r6
	adds r0, #0x78
	strh r0, [r1]
	lsls r4, r4, #1
	add r4, r8
	movs r3, #0
	ldrsh r1, [r4, r3]
	adds r0, r5, #0
	bl sub_08007E64
	ldr r1, [r7]
	ldr r2, _0803B68C @ =0x000009A6
	adds r1, r1, r2
	adds r1, r1, r6
	adds r0, #0x50
	strh r0, [r1]
	movs r3, #1
	add sb, r3
	mov r0, sb
	cmp r0, #0xb
	ble _0803B600
	b _0803B780
	.align 2, 0
_0803B66C: .4byte 0x030024E0
_0803B670: .4byte 0x081006BC
_0803B674: .4byte 0x03004400
_0803B678: .4byte 0x000003FB
_0803B67C: .4byte 0x0807F240
_0803B680: .4byte 0x030013C0
_0803B684: .4byte 0x0808850A
_0803B688: .4byte 0x000009A4
_0803B68C: .4byte 0x000009A6
_0803B690:
	mov r1, sl
	ldrh r0, [r1, #2]
	adds r0, #1
	strh r0, [r1, #2]
	movs r2, #0
	mov sb, r2
	ldr r5, _0803B73C @ =0x080884AA
_0803B69E:
	mov r3, sb
	lsls r6, r3, #2
	movs r0, #0
	ldrsh r1, [r5, r0]
	ldr r2, _0803B740 @ =0x030013C0
	mov r8, r2
	ldr r3, [r2]
	ldr r2, _0803B744 @ =0x000009A4
	adds r0, r3, r2
	adds r0, r0, r6
	movs r2, #0
	ldrsh r0, [r0, r2]
	subs r0, r0, r1
	mov r2, sl
	ldrh r4, [r2, #2]
	muls r0, r4, r0
	cmp r0, #0
	bge _0803B6C4
	adds r0, #0x1f
_0803B6C4:
	asrs r0, r0, #5
	adds r7, r1, r0
	movs r0, #2
	ldrsh r2, [r5, r0]
	ldr r1, _0803B748 @ =0x000009A6
	adds r0, r3, r1
	adds r0, r0, r6
	movs r1, #0
	ldrsh r0, [r0, r1]
	subs r0, r0, r2
	muls r0, r4, r0
	cmp r0, #0
	bge _0803B6E0
	adds r0, #0x1f
_0803B6E0:
	asrs r0, r0, #5
	adds r2, r2, r0
	movs r1, #0x94
	lsls r1, r1, #1
	adds r0, r3, r1
	adds r0, r0, r6
	ldr r0, [r0]
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl sub_08009A70
	adds r5, #4
	movs r2, #1
	add sb, r2
	mov r3, sb
	cmp r3, #0xb
	ble _0803B69E
	mov r1, sl
	ldrh r0, [r1, #2]
	cmp r0, #0x1f
	bls _0803B780
	movs r0, #0
	strh r0, [r1, #2]
	movs r0, #4
	strb r0, [r1]
	movs r2, #0
	mov sb, r2
	mov r4, r8
_0803B71C:
	ldr r0, [r4]
	mov r3, sb
	lsls r1, r3, #2
	movs r2, #0x94
	lsls r2, r2, #1
	adds r0, r0, r2
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_08009A00
	movs r3, #1
	add sb, r3
	mov r0, sb
	cmp r0, #0xb
	ble _0803B71C
	b _0803B780
	.align 2, 0
_0803B73C: .4byte 0x080884AA
_0803B740: .4byte 0x030013C0
_0803B744: .4byte 0x000009A4
_0803B748: .4byte 0x000009A6
_0803B74C:
	ldr r5, _0803B790 @ =0x081006BC
	ldr r4, _0803B794 @ =0x03004400
	ldrb r0, [r4, #0x14]
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	bl sub_0800963C
	cmp r0, #0
	beq _0803B780
	ldrb r0, [r4, #0x14]
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	bl sub_080095E0
	ldr r0, _0803B798 @ =0x030013C0
	ldr r1, [r0]
	adds r1, #0x6a
	ldrb r2, [r1]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	bl sub_08007A64
_0803B780:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803B790: .4byte 0x081006BC
_0803B794: .4byte 0x03004400
_0803B798: .4byte 0x030013C0

	thumb_func_start sub_0803B79C
sub_0803B79C: @ 0x0803B79C
	push {r4, r5, r6, lr}
	ldr r0, _0803B830 @ =sub_0803B3C0
	movs r1, #0x43
	movs r2, #0
	bl sub_08007968
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl sub_08007BBC
	movs r1, #0
	strb r1, [r0]
	strh r1, [r0, #2]
	movs r5, #0
	ldr r6, _0803B834 @ =0x030013C0
_0803B7BA:
	movs r0, #2
	movs r1, #0
	bl sub_080099E0
	adds r4, r0, #0
	movs r1, #0
	bl sub_08009A34
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	bl sub_08009A70
	ldr r0, [r6]
	movs r1, #0xae
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl sub_08009A78
	adds r0, r4, #0
	movs r1, #3
	bl sub_08009AB4
	adds r0, r4, #0
	ldr r1, _0803B838 @ =0x080ABFE8
	ldr r2, _0803B83C @ =0x080ABF30
	movs r3, #0x23
	bl sub_08009ACC
	adds r0, r4, #0
	movs r1, #0xff
	bl sub_08009B40
	adds r0, r4, #0
	movs r1, #1
	bl sub_08009B6C
	ldr r0, [r6]
	lsls r1, r5, #2
	movs r2, #0x94
	lsls r2, r2, #1
	adds r0, r0, r2
	adds r0, r0, r1
	str r4, [r0]
	adds r5, #1
	cmp r5, #0xb
	ble _0803B7BA
	ldr r0, _0803B834 @ =0x030013C0
	ldr r1, [r0]
	adds r1, #0x6a
	ldrb r0, [r1]
	movs r2, #0x10
	orrs r0, r2
	strb r0, [r1]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803B830: .4byte sub_0803B3C0
_0803B834: .4byte 0x030013C0
_0803B838: .4byte 0x080ABFE8
_0803B83C: .4byte 0x080ABF30

	thumb_func_start sub_0803B840
sub_0803B840: @ 0x0803B840
	push {lr}
	movs r0, #0x20
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl sub_08008AF4
	movs r0, #1
	bl sub_08002B98
	b _0803B85C
_0803B856:
	movs r0, #1
	bl sub_08002B98
_0803B85C:
	bl sub_08008BBC
	cmp r0, #0
	beq _0803B856
	pop {r0}
	bx r0

	thumb_func_start sub_0803B868
sub_0803B868: @ 0x0803B868
	push {lr}
	movs r0, #0x20
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl sub_080089E8
	movs r0, #1
	bl sub_08002B98
	b _0803B884
_0803B87E:
	movs r0, #1
	bl sub_08002B98
_0803B884:
	bl sub_08008BBC
	cmp r0, #0
	beq _0803B87E
	pop {r0}
	bx r0

	thumb_func_start sub_0803B890
sub_0803B890: @ 0x0803B890
	push {lr}
	ldr r1, _0803B8A8 @ =0x00007FFF
	movs r0, #0x40
	movs r2, #0x1f
	movs r3, #0xf
	bl sub_080089E8
	movs r0, #1
	bl sub_08002B98
	b _0803B8B2
	.align 2, 0
_0803B8A8: .4byte 0x00007FFF
_0803B8AC:
	movs r0, #1
	bl sub_08002B98
_0803B8B2:
	bl sub_08008BBC
	cmp r0, #0
	beq _0803B8AC
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0803B8C0
sub_0803B8C0: @ 0x0803B8C0
	push {lr}
	ldr r1, _0803B8D8 @ =0x00007FFF
	movs r0, #0x40
	movs r2, #0x1f
	movs r3, #0xf
	bl sub_08008AF4
	movs r0, #1
	bl sub_08002B98
	b _0803B8E2
	.align 2, 0
_0803B8D8: .4byte 0x00007FFF
_0803B8DC:
	movs r0, #1
	bl sub_08002B98
_0803B8E2:
	bl sub_08008BBC
	cmp r0, #0
	beq _0803B8DC
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0803B8F0
sub_0803B8F0: @ 0x0803B8F0
	push {lr}
	sub sp, #0xc
	movs r3, #0x80
	lsls r3, r3, #1
	movs r0, #0
	str r0, [sp]
	movs r0, #0x78
	str r0, [sp, #4]
	movs r0, #0x50
	str r0, [sp, #8]
	movs r0, #0
	movs r1, #0
	movs r2, #0x3c
	bl sub_08008D4C
	b _0803B916
_0803B910:
	movs r0, #1
	bl sub_08002B98
_0803B916:
	bl sub_08008E9C
	cmp r0, #0
	beq _0803B910
	add sp, #0xc
	pop {r0}
	bx r0

	thumb_func_start sub_0803B924
sub_0803B924: @ 0x0803B924
	push {lr}
	sub sp, #0xc
	movs r3, #0x80
	lsls r3, r3, #1
	movs r0, #0
	str r0, [sp]
	movs r0, #0x78
	str r0, [sp, #4]
	movs r0, #0x50
	str r0, [sp, #8]
	movs r0, #0
	movs r1, #1
	movs r2, #0x3c
	bl sub_08008D4C
	b _0803B94A
_0803B944:
	movs r0, #1
	bl sub_08002B98
_0803B94A:
	bl sub_08008E9C
	cmp r0, #0
	beq _0803B944
	add sp, #0xc
	pop {r0}
	bx r0

	thumb_func_start sub_0803B958
sub_0803B958: @ 0x0803B958
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r5, _0803BC34 @ =0x030013C4
	ldr r4, _0803BC38 @ =0x0000041C
	adds r0, r4, #0
	bl sub_08007CE8
	adds r1, r0, #0
	str r1, [r5]
	movs r0, #0
	adds r2, r4, #0
	bl sub_08007EFC
	movs r6, #0
	mov ip, r5
	ldr r0, _0803BC3C @ =0x02034BF0
	movs r1, #0xf4
	lsls r1, r1, #1
	adds r4, r0, r1
	movs r5, #0xc1
	lsls r5, r5, #2
	movs r7, #0xc5
	lsls r7, r7, #2
_0803B986:
	mov r0, ip
	ldr r2, [r0]
	lsls r3, r6, #2
	adds r0, r2, r5
	adds r0, r0, r3
	ldr r1, [r4, #0x10]
	str r1, [r0]
	adds r2, r2, r7
	adds r2, r2, r3
	ldr r1, [r4]
	ldr r0, [r4, #0x10]
	bics r0, r1
	str r0, [r2]
	adds r4, #4
	adds r6, #1
	cmp r6, #3
	ble _0803B986
	bl sub_0803CF98
	ldr r1, _0803BC34 @ =0x030013C4
	ldr r1, [r1]
	movs r2, #0xc9
	lsls r2, r2, #2
	adds r1, r1, r2
	str r0, [r1]
	movs r6, #0
_0803B9BA:
	lsls r1, r6, #0x10
	lsrs r1, r1, #0x10
	ldr r0, _0803BC40 @ =0x02034DE8
	bl sub_0800B87C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0803B9D2
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	bl sub_08001A24
_0803B9D2:
	adds r6, #1
	cmp r6, #0x7b
	ble _0803B9BA
	movs r6, #0
_0803B9DA:
	lsls r0, r6, #0x10
	lsrs r4, r0, #0x10
	ldr r0, _0803BC44 @ =0x02034E14
	adds r1, r4, #0
	bl sub_0800B87C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0803B9F4
	ldr r0, _0803BC48 @ =0x020318E4
	adds r1, r4, #0
	bl sub_0800B844
_0803B9F4:
	adds r6, #1
	cmp r6, #0x31
	ble _0803B9DA
	movs r6, #0
_0803B9FC:
	lsls r0, r6, #0x10
	lsrs r4, r0, #0x10
	ldr r0, _0803BC4C @ =0x02034E08
	adds r1, r4, #0
	bl sub_0800B87C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0803BA16
	ldr r0, _0803BC50 @ =0x020318EC
	adds r1, r4, #0
	bl sub_0800B844
_0803BA16:
	adds r6, #1
	cmp r6, #0x33
	ble _0803B9FC
	ldr r4, _0803BC54 @ =0x060109C0
	ldr r1, _0803BC58 @ =0x080FE918
	ldr r6, _0803BC5C @ =0x03004400
	ldrb r0, [r6, #0x14]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _0803BC60 @ =0x05000200
	bl sub_08008308
	ldr r5, _0803BC34 @ =0x030013C4
	ldr r0, [r5]
	str r4, [r0, #0x5c]
	ldr r1, _0803BC64 @ =0x080FE91C
	ldrb r0, [r6, #0x14]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	adds r1, r4, #0
	bl sub_08008374
	adds r4, r0, r4
	ldr r0, _0803BC68 @ =0x0812D534
	ldr r1, _0803BC6C @ =0x05000220
	bl sub_08008308
	ldr r0, [r5]
	str r4, [r0, #0x60]
	ldr r0, _0803BC70 @ =0x0812D5C0
	adds r1, r4, #0
	bl sub_08008374
	adds r4, r4, r0
	ldr r1, _0803BC74 @ =0x080FE928
	ldrb r0, [r6, #0x14]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _0803BC78 @ =0x05000240
	bl sub_08008308
	ldr r0, [r5]
	str r4, [r0, #0x64]
	ldr r1, _0803BC7C @ =0x080FE92C
	ldrb r0, [r6, #0x14]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	adds r1, r4, #0
	bl sub_08008374
	ldr r0, _0803BC80 @ =0x081045C0
	movs r1, #0xa0
	lsls r1, r1, #0x13
	bl sub_08008308
	ldr r0, _0803BC84 @ =0x08104DD4
	movs r1, #0xc0
	lsls r1, r1, #0x13
	bl sub_08008374
	ldr r0, _0803BC88 @ =0x08104730
	ldr r1, _0803BC8C @ =0x0600F800
	movs r2, #0
	movs r3, #0
	bl sub_080083CC
	ldr r4, _0803BC90 @ =0x030024E0
	ldr r0, _0803BC94 @ =0x00001F03
	strh r0, [r4, #8]
	ldr r0, _0803BC98 @ =0x08104C50
	ldr r1, _0803BC9C @ =0x0600F000
	movs r2, #0
	movs r3, #0
	bl sub_080083CC
	ldr r0, _0803BCA0 @ =0x00001E02
	strh r0, [r4, #6]
	ldr r0, _0803BCA4 @ =0x08104D18
	ldr r1, _0803BCA8 @ =0x0600E000
	movs r2, #0
	movs r3, #0
	bl sub_080083CC
	ldr r0, _0803BCAC @ =0x00005C01
	strh r0, [r4, #4]
	movs r3, #0x80
	lsls r3, r3, #2
	ldr r0, _0803BCB0 @ =sub_0803D1C0
	mov ip, r0
	movs r1, #0x80
	lsls r1, r1, #6
	adds r5, r1, #0
	ldr r7, _0803BCB4 @ =0x08089CCC
	movs r6, #3
_0803BADA:
	ldr r2, [r7]
	movs r4, #0xf
_0803BADE:
	adds r0, r3, #0
	orrs r0, r5
	strh r0, [r2]
	adds r3, #1
	adds r1, r2, #0
	adds r1, #0x40
	adds r0, r3, #0
	orrs r0, r5
	strh r0, [r1]
	adds r3, #1
	adds r2, #2
	subs r4, #1
	cmp r4, #0
	bge _0803BADE
	adds r7, #4
	subs r6, #1
	cmp r6, #0
	bge _0803BADA
	mov r0, ip
	movs r1, #0x41
	movs r2, #0
	bl sub_08007968
	ldr r2, _0803BC34 @ =0x030013C4
	ldr r1, [r2]
	strh r0, [r1, #0xa]
	movs r6, #0
	adds r7, r2, #0
_0803BB16:
	ldr r0, _0803BCB8 @ =0x08089F34
	lsls r4, r6, #2
	adds r0, r4, r0
	ldr r0, [r0]
	movs r1, #0x41
	movs r2, #0
	bl sub_08007968
	ldr r1, [r7]
	lsls r5, r6, #1
	adds r1, #0xc
	adds r1, r1, r5
	strh r0, [r1]
	ldr r0, _0803BCBC @ =0x08089F70
	adds r0, r4, r0
	ldr r0, [r0]
	movs r1, #0x42
	movs r2, #0
	bl sub_08007968
	ldr r1, [r7]
	adds r1, #0x16
	adds r1, r1, r5
	strh r0, [r1]
	ldr r0, _0803BCC0 @ =0x08089F98
	adds r4, r4, r0
	ldr r0, [r4]
	movs r1, #0x42
	movs r2, #0
	bl sub_08007968
	ldr r1, [r7]
	adds r1, #0x1e
	adds r1, r1, r5
	strh r0, [r1]
	adds r6, #1
	cmp r6, #3
	ble _0803BB16
	ldr r0, _0803BCC4 @ =sub_0803C59C
	movs r1, #0x42
	movs r2, #0
	bl sub_08007968
	ldr r4, _0803BC34 @ =0x030013C4
	ldr r1, [r4]
	strh r0, [r1, #8]
	ldr r0, _0803BCC8 @ =sub_0803D33C
	movs r1, #0x42
	movs r2, #0
	bl sub_08007968
	ldr r1, [r4]
	strh r0, [r1, #0x26]
	ldr r0, _0803BCCC @ =sub_0803D4C0
	movs r1, #0x42
	movs r2, #0
	bl sub_08007968
	ldr r1, [r4]
	strh r0, [r1, #0x28]
	ldr r0, _0803BCD0 @ =sub_0803D750
	movs r1, #0x42
	movs r2, #0
	bl sub_08007968
	ldr r1, [r4]
	strh r0, [r1, #0x2a]
	ldr r0, _0803BCD4 @ =sub_0803C710
	movs r1, #0x43
	movs r2, #0
	bl sub_08007968
	ldr r1, [r4]
	strh r0, [r1, #0x14]
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
	movs r1, #0x1b
	movs r2, #0xe
	movs r3, #0
	bl sub_08004028
	bl sub_080057C0
	movs r0, #1
	bl sub_08005A88
	bl sub_08004460
	movs r6, #0
	movs r7, #0
_0803BBDE:
	ldr r0, _0803BCD8 @ =0x08089F00
	lsls r4, r6, #2
	adds r0, r4, r0
	ldr r5, [r0]
	adds r0, r5, #0
	bl sub_08006828
	movs r1, #0
	bl sub_080045FC
	ldr r1, _0803BC34 @ =0x030013C4
	ldr r1, [r1]
	movs r2, #0xca
	lsls r2, r2, #2
	adds r1, r1, r2
	adds r1, r1, r6
	strb r0, [r1]
	adds r0, r5, #0
	bl sub_08006828
	adds r1, r0, #0
	ldr r0, _0803BCDC @ =0x08089EE4
	adds r4, r4, r0
	ldr r0, [r4]
	str r7, [sp]
	movs r2, #2
	movs r3, #0
	bl sub_08004D94
	adds r6, #1
	cmp r6, #2
	ble _0803BBDE
	bl sub_0800446C
	ldr r0, _0803BCE0 @ =0x08104714
	movs r1, #1
	bl sub_08009554
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803BC34: .4byte 0x030013C4
_0803BC38: .4byte 0x0000041C
_0803BC3C: .4byte 0x02034BF0
_0803BC40: .4byte 0x02034DE8
_0803BC44: .4byte 0x02034E14
_0803BC48: .4byte 0x020318E4
_0803BC4C: .4byte 0x02034E08
_0803BC50: .4byte 0x020318EC
_0803BC54: .4byte 0x060109C0
_0803BC58: .4byte 0x080FE918
_0803BC5C: .4byte 0x03004400
_0803BC60: .4byte 0x05000200
_0803BC64: .4byte 0x080FE91C
_0803BC68: .4byte 0x0812D534
_0803BC6C: .4byte 0x05000220
_0803BC70: .4byte 0x0812D5C0
_0803BC74: .4byte 0x080FE928
_0803BC78: .4byte 0x05000240
_0803BC7C: .4byte 0x080FE92C
_0803BC80: .4byte 0x081045C0
_0803BC84: .4byte 0x08104DD4
_0803BC88: .4byte 0x08104730
_0803BC8C: .4byte 0x0600F800
_0803BC90: .4byte 0x030024E0
_0803BC94: .4byte 0x00001F03
_0803BC98: .4byte 0x08104C50
_0803BC9C: .4byte 0x0600F000
_0803BCA0: .4byte 0x00001E02
_0803BCA4: .4byte 0x08104D18
_0803BCA8: .4byte 0x0600E000
_0803BCAC: .4byte 0x00005C01
_0803BCB0: .4byte sub_0803D1C0
_0803BCB4: .4byte 0x08089CCC
_0803BCB8: .4byte 0x08089F34
_0803BCBC: .4byte 0x08089F70
_0803BCC0: .4byte 0x08089F98
_0803BCC4: .4byte sub_0803C59C
_0803BCC8: .4byte sub_0803D33C
_0803BCCC: .4byte sub_0803D4C0
_0803BCD0: .4byte sub_0803D750
_0803BCD4: .4byte sub_0803C710
_0803BCD8: .4byte 0x08089F00
_0803BCDC: .4byte 0x08089EE4
_0803BCE0: .4byte 0x08104714

	thumb_func_start sub_0803BCE4
sub_0803BCE4: @ 0x0803BCE4
	push {r4, r5, r6, lr}
	bl sub_080058A4
	ldr r4, _0803BD6C @ =0x030013C4
	ldr r0, [r4]
	movs r1, #0xa
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	movs r5, #0
	adds r6, r4, #0
_0803BCFA:
	ldr r0, [r6]
	lsls r4, r5, #1
	adds r0, #0xc
	adds r0, r0, r4
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	ldr r0, [r6]
	adds r0, #0x16
	adds r0, r0, r4
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	ldr r0, [r6]
	adds r0, #0x1e
	adds r0, r0, r4
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	adds r5, #1
	cmp r5, #3
	ble _0803BCFA
	ldr r4, _0803BD6C @ =0x030013C4
	ldr r0, [r4]
	movs r1, #8
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	ldr r0, [r4]
	movs r1, #0x26
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	ldr r0, [r4]
	movs r1, #0x28
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	ldr r0, [r4]
	movs r1, #0x2a
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	ldr r0, [r4]
	movs r1, #0x14
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	ldr r0, _0803BD70 @ =0x08104714
	bl sub_080095E0
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803BD6C: .4byte 0x030013C4
_0803BD70: .4byte 0x08104714

	thumb_func_start sub_0803BD74
sub_0803BD74: @ 0x0803BD74
	push {r4, r5, lr}
	movs r0, #0
	bl sub_080081A0
	bl sub_0803B958
	movs r0, #1
	bl sub_08002B98
	ldr r4, _0803BDB0 @ =0x030013C4
	ldr r0, [r4]
	movs r1, #0xc5
	lsls r1, r1, #2
	adds r0, r0, r1
	movs r1, #0
	movs r2, #0x7c
	bl sub_0800B8A4
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0803BDD4
	ldr r5, _0803BDB4 @ =0x08089F1C
_0803BDA0:
	ldr r1, [r4]
	ldrh r0, [r1, #6]
	cmp r0, #0
	beq _0803BDB8
	subs r0, #1
	strh r0, [r1, #6]
	b _0803BDC4
	.align 2, 0
_0803BDB0: .4byte 0x030013C4
_0803BDB4: .4byte 0x08089F1C
_0803BDB8:
	ldrb r0, [r1, #1]
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	bl call_via_r0
_0803BDC4:
	ldr r0, [r4]
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803BDD4
	movs r0, #1
	bl sub_08002B98
	b _0803BDA0
_0803BDD4:
	bl sub_0803BCE4
	movs r0, #1
	bl sub_08002B98
	movs r0, #0x23
	bl sub_08008790
	movs r0, #0x20
	bl sub_080072F4
	ldr r0, _0803BE00 @ =0x030013C4
	ldr r0, [r0]
	bl sub_08007CF8
	bl m4aMPlayAllStop
	bl sub_08002B0C
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803BE00: .4byte 0x030013C4

	thumb_func_start sub_0803BE04
sub_0803BE04: @ 0x0803BE04
	ldr r1, _0803BE18 @ =0x030013C4
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
_0803BE18: .4byte 0x030013C4

	thumb_func_start sub_0803BE1C
sub_0803BE1C: @ 0x0803BE1C
	push {lr}
	bl sub_08008174
	ldr r2, _0803BE5C @ =0x030024E0
	ldrh r1, [r2]
	movs r3, #0x80
	lsls r3, r3, #4
	adds r0, r3, #0
	orrs r0, r1
	movs r3, #0x80
	lsls r3, r3, #2
	adds r1, r3, #0
	orrs r0, r1
	movs r3, #0x80
	lsls r3, r3, #1
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	adds r2, #0x4f
	movs r0, #1
	strb r0, [r2]
	movs r0, #0xa
	bl m4aSongNumStart
	bl sub_0803B840
	movs r0, #2
	bl sub_0803BE04
	pop {r0}
	bx r0
	.align 2, 0
_0803BE5C: .4byte 0x030024E0

	thumb_func_start sub_0803BE60
sub_0803BE60: @ 0x0803BE60
	push {r4, lr}
	ldr r4, _0803BE74 @ =0x030013C4
	ldr r1, [r4]
	ldrb r0, [r1, #2]
	cmp r0, #0
	beq _0803BE78
	cmp r0, #1
	beq _0803BE90
	b _0803BE92
	.align 2, 0
_0803BE74: .4byte 0x030013C4
_0803BE78:
	ldr r0, _0803BE8C @ =0x030056F0
	movs r1, #4
	bl m4aMPlayFadeOut
	bl sub_0803B868
	ldr r1, [r4]
	movs r0, #1
	strb r0, [r1, #2]
	b _0803BE92
	.align 2, 0
_0803BE8C: .4byte 0x030056F0
_0803BE90:
	strb r0, [r1]
_0803BE92:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0803BE98
sub_0803BE98: @ 0x0803BE98
	push {r4, lr}
	ldr r4, _0803BEB0 @ =0x030013C4
	ldr r1, [r4]
	ldrb r0, [r1, #2]
	cmp r0, #1
	beq _0803BECA
	cmp r0, #1
	bgt _0803BEB4
	cmp r0, #0
	beq _0803BEBA
	b _0803BF12
	.align 2, 0
_0803BEB0: .4byte 0x030013C4
_0803BEB4:
	cmp r0, #2
	beq _0803BF00
	b _0803BF12
_0803BEBA:
	bl sub_0803D1A0
	bl sub_0803D2F8
	ldr r1, [r4]
	movs r0, #1
	strb r0, [r1, #2]
	b _0803BF12
_0803BECA:
	adds r0, r1, #0
	adds r0, #0x30
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _0803BF12
	movs r2, #0xc5
	lsls r2, r2, #2
	adds r0, r1, r2
	movs r1, #0x44
	movs r2, #0x7c
	bl sub_0800B8A4
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0803BEF8
	movs r0, #0
	bl sub_0803D46C
	ldr r1, [r4]
	movs r0, #2
	strb r0, [r1, #2]
	b _0803BF12
_0803BEF8:
	movs r0, #4
	bl sub_0803BE04
	b _0803BF12
_0803BF00:
	adds r0, r1, #0
	adds r0, #0x30
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	cmp r0, #0
	blt _0803BF12
	movs r0, #3
	bl sub_0803BE04
_0803BF12:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0803BF18
sub_0803BF18: @ 0x0803BF18
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	ldr r1, _0803BF3C @ =0x030013C4
	ldr r0, [r1]
	ldrb r0, [r0, #2]
	adds r4, r1, #0
	cmp r0, #5
	bls _0803BF30
	b _0803C174
_0803BF30:
	lsls r0, r0, #2
	ldr r1, _0803BF40 @ =_0803BF44
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0803BF3C: .4byte 0x030013C4
_0803BF40: .4byte _0803BF44
_0803BF44: @ jump table
	.4byte _0803BF5C @ case 0
	.4byte _0803BFA0 @ case 1
	.4byte _0803C0B8 @ case 2
	.4byte _0803C0D0 @ case 3
	.4byte _0803C0F8 @ case 4
	.4byte _0803C12E @ case 5
_0803BF5C:
	ldr r0, [r4]
	movs r1, #0xc5
	lsls r1, r1, #2
	adds r0, r0, r1
	movs r1, #0x44
	movs r2, #0x7c
	bl sub_0800B8A4
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	ldr r1, [r4]
	subs r0, r7, #1
	cmp r0, #0
	bge _0803BF7A
	adds r0, r7, #2
_0803BF7A:
	asrs r0, r0, #2
	adds r0, #1
	adds r1, #0x68
	strb r0, [r1]
	ldr r1, [r4]
	adds r0, r7, #0
	asrs r0, r0, #2
	lsls r0, r0, #2
	subs r0, r7, r0
	adds r1, #0x6a
	strb r0, [r1]
	ldr r0, [r4]
	adds r0, #0x69
	movs r1, #0
	strb r1, [r0]
	ldr r1, [r4]
	movs r0, #1
	strb r0, [r1, #2]
	b _0803C174
_0803BFA0:
	ldr r2, [r4]
	adds r0, r2, #0
	adds r0, #0x69
	ldrb r1, [r0]
	subs r0, #1
	ldrb r0, [r0]
	subs r0, #1
	movs r7, #4
	cmp r1, r0
	bne _0803BFC0
	adds r1, r2, #0
	adds r1, #0x6a
	ldrb r0, [r1]
	cmp r0, #0
	beq _0803BFC0
	adds r7, r0, #0
_0803BFC0:
	movs r6, #0
	lsls r5, r7, #0x18
	cmp r6, r7
	bge _0803C02A
	ldr r2, _0803C0A4 @ =0x08089CF4
	mov r8, r2
_0803BFCC:
	ldr r0, _0803C0A8 @ =0x88888888
	str r0, [sp, #4]
	ldr r1, _0803C0AC @ =0x08089CE4
	lsls r0, r6, #2
	adds r0, r0, r1
	ldr r4, [r0]
	add r0, sp, #4
	adds r1, r4, #0
	ldr r2, _0803C0B0 @ =0x01000100
	bl CpuFastSet
	ldr r0, _0803C0B4 @ =0x030013C4
	ldr r1, [r0]
	movs r2, #0xc5
	lsls r2, r2, #2
	adds r0, r1, r2
	adds r1, #0x69
	ldrb r1, [r1]
	lsls r1, r1, #2
	adds r1, r1, r6
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r2, #0x44
	movs r3, #0x7c
	bl sub_0800B908
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	add r0, r8
	ldr r0, [r0]
	bl sub_08006828
	adds r1, r0, #0
	adds r4, #0x80
	movs r0, #0
	str r0, [sp]
	adds r0, r4, #0
	movs r2, #1
	movs r3, #8
	bl sub_08004D94
	movs r0, #1
	bl sub_08002B98
	adds r6, #1
	cmp r6, r7
	blt _0803BFCC
_0803C02A:
	lsrs r0, r5, #0x18
	bl sub_0803C800
	movs r6, #0
	cmp r6, r7
	bge _0803C098
	ldr r0, _0803C0B4 @ =0x030013C4
	mov sb, r0
	movs r1, #0xc5
	lsls r1, r1, #2
	mov r8, r1
_0803C040:
	mov r2, sb
	ldr r1, [r2]
	mov r2, r8
	adds r0, r1, r2
	adds r1, #0x69
	ldrb r1, [r1]
	lsls r1, r1, #2
	adds r1, r1, r6
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r2, #0x44
	movs r3, #0x7c
	bl sub_0800B908
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r0, r6, #0x18
	lsrs r5, r0, #0x18
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	bl sub_0803CE88
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r5, #0
	bl sub_0803CCAC
	mov r1, sb
	ldr r0, [r1]
	add r0, r8
	adds r1, r4, #0
	bl sub_0800B87C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0803C092
	adds r0, r5, #0
	bl sub_0803CA8C
_0803C092:
	adds r6, #1
	cmp r6, r7
	blt _0803C040
_0803C098:
	ldr r0, _0803C0B4 @ =0x030013C4
	ldr r1, [r0]
	movs r0, #2
	strb r0, [r1, #2]
	b _0803C174
	.align 2, 0
_0803C0A4: .4byte 0x08089CF4
_0803C0A8: .4byte 0x88888888
_0803C0AC: .4byte 0x08089CE4
_0803C0B0: .4byte 0x01000100
_0803C0B4: .4byte 0x030013C4
_0803C0B8:
	ldr r1, [r4]
	adds r0, r1, #0
	adds r0, #0x30
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1c
	cmp r0, #0
	bne _0803C174
	strh r0, [r1, #6]
	movs r0, #3
	strb r0, [r1, #2]
	b _0803C174
_0803C0D0:
	ldr r0, _0803C0F0 @ =0x030024B0
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0803C174
	movs r0, #0xcd
	bl m4aSongNumStart
	bl sub_0803C874
	ldr r0, _0803C0F4 @ =0x030013C4
	ldr r1, [r0]
	movs r0, #4
	strb r0, [r1, #2]
	b _0803C174
	.align 2, 0
_0803C0F0: .4byte 0x030024B0
_0803C0F4: .4byte 0x030013C4
_0803C0F8:
	ldr r1, [r4]
	adds r0, r1, #0
	adds r0, #0x30
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1c
	cmp r0, #0
	bne _0803C174
	adds r0, r1, #0
	adds r0, #0x69
	ldrb r1, [r0]
	adds r1, #1
	strb r1, [r0]
	ldr r2, [r4]
	adds r0, r2, #0
	adds r0, #0x68
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldrb r0, [r0]
	cmp r1, r0
	blo _0803C128
	movs r0, #5
	strb r0, [r2, #2]
	b _0803C174
_0803C128:
	movs r0, #1
	strb r0, [r2, #2]
	b _0803C174
_0803C12E:
	bl sub_0803D4A0
	ldr r4, _0803C154 @ =0x030013C4
	ldr r0, [r4]
	movs r2, #0xc5
	lsls r2, r2, #2
	adds r0, r0, r2
	movs r1, #0
	movs r2, #0x44
	bl sub_0800B8A4
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0803C158
	movs r0, #4
	bl sub_0803BE04
	b _0803C174
	.align 2, 0
_0803C154: .4byte 0x030013C4
_0803C158:
	ldr r0, [r4]
	movs r1, #0xc9
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _0803C16E
	movs r0, #5
	bl sub_0803BE04
	b _0803C174
_0803C16E:
	movs r0, #1
	bl sub_0803BE04
_0803C174:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0803C184
sub_0803C184: @ 0x0803C184
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	ldr r1, _0803C1A4 @ =0x030013C4
	ldr r0, [r1]
	ldrb r0, [r0, #2]
	adds r4, r1, #0
	cmp r0, #5
	bls _0803C19A
	b _0803C3AE
_0803C19A:
	lsls r0, r0, #2
	ldr r1, _0803C1A8 @ =_0803C1AC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0803C1A4: .4byte 0x030013C4
_0803C1A8: .4byte _0803C1AC
_0803C1AC: @ jump table
	.4byte _0803C1C4 @ case 0
	.4byte _0803C20E @ case 1
	.4byte _0803C310 @ case 2
	.4byte _0803C328 @ case 3
	.4byte _0803C350 @ case 4
	.4byte _0803C386 @ case 5
_0803C1C4:
	ldr r0, [r4]
	movs r1, #0xc5
	lsls r1, r1, #2
	adds r0, r0, r1
	movs r1, #0
	movs r2, #0x44
	bl sub_0800B8A4
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	movs r0, #1
	bl sub_0803D46C
	ldr r1, [r4]
	subs r0, r6, #1
	cmp r0, #0
	bge _0803C1E8
	adds r0, r6, #2
_0803C1E8:
	asrs r0, r0, #2
	adds r0, #1
	adds r1, #0x68
	strb r0, [r1]
	ldr r1, [r4]
	adds r0, r6, #0
	asrs r0, r0, #2
	lsls r0, r0, #2
	subs r0, r6, r0
	adds r1, #0x6a
	strb r0, [r1]
	ldr r0, [r4]
	adds r0, #0x69
	movs r1, #0
	strb r1, [r0]
	ldr r1, [r4]
	movs r0, #1
	strb r0, [r1, #2]
	b _0803C3AE
_0803C20E:
	ldr r2, [r4]
	adds r0, r2, #0
	adds r0, #0x30
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	cmp r0, #0
	bge _0803C21E
	b _0803C3AE
_0803C21E:
	adds r0, r2, #0
	adds r0, #0x69
	ldrb r1, [r0]
	subs r0, #1
	ldrb r0, [r0]
	subs r0, #1
	movs r6, #4
	cmp r1, r0
	bne _0803C23C
	adds r1, r2, #0
	adds r1, #0x6a
	ldrb r0, [r1]
	cmp r0, #0
	beq _0803C23C
	adds r6, r0, #0
_0803C23C:
	movs r5, #0
	lsls r7, r6, #0x18
	cmp r5, r6
	bge _0803C2A6
	ldr r2, _0803C2FC @ =0x08089CF4
	mov r8, r2
_0803C248:
	ldr r0, _0803C300 @ =0x88888888
	str r0, [sp, #4]
	ldr r1, _0803C304 @ =0x08089CE4
	lsls r0, r5, #2
	adds r0, r0, r1
	ldr r4, [r0]
	add r0, sp, #4
	adds r1, r4, #0
	ldr r2, _0803C308 @ =0x01000100
	bl CpuFastSet
	ldr r0, _0803C30C @ =0x030013C4
	ldr r1, [r0]
	movs r2, #0xc5
	lsls r2, r2, #2
	adds r0, r1, r2
	adds r1, #0x69
	ldrb r1, [r1]
	lsls r1, r1, #2
	adds r1, r1, r5
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r2, #0
	movs r3, #0x44
	bl sub_0800B908
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	add r0, r8
	ldr r0, [r0]
	bl sub_08006828
	adds r1, r0, #0
	adds r4, #0x80
	movs r0, #0
	str r0, [sp]
	adds r0, r4, #0
	movs r2, #1
	movs r3, #8
	bl sub_08004D94
	movs r0, #1
	bl sub_08002B98
	adds r5, #1
	cmp r5, r6
	blt _0803C248
_0803C2A6:
	lsrs r0, r7, #0x18
	bl sub_0803C800
	movs r5, #0
	cmp r5, r6
	bge _0803C2F2
	ldr r7, _0803C30C @ =0x030013C4
	movs r4, #0xc5
	lsls r4, r4, #2
_0803C2B8:
	ldr r1, [r7]
	adds r0, r1, r4
	adds r1, #0x69
	ldrb r1, [r1]
	lsls r1, r1, #2
	adds r1, r1, r5
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r2, #0
	movs r3, #0x44
	bl sub_0800B908
	adds r1, r0, #0
	ldr r0, [r7]
	adds r0, r0, r4
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_0800B87C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0803C2EC
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	bl sub_0803CA8C
_0803C2EC:
	adds r5, #1
	cmp r5, r6
	blt _0803C2B8
_0803C2F2:
	ldr r0, _0803C30C @ =0x030013C4
	ldr r1, [r0]
	movs r0, #2
	strb r0, [r1, #2]
	b _0803C3AE
	.align 2, 0
_0803C2FC: .4byte 0x08089CF4
_0803C300: .4byte 0x88888888
_0803C304: .4byte 0x08089CE4
_0803C308: .4byte 0x01000100
_0803C30C: .4byte 0x030013C4
_0803C310:
	ldr r1, [r4]
	adds r0, r1, #0
	adds r0, #0x30
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1c
	cmp r0, #0
	bne _0803C3AE
	strh r0, [r1, #6]
	movs r0, #3
	strb r0, [r1, #2]
	b _0803C3AE
_0803C328:
	ldr r0, _0803C348 @ =0x030024B0
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0803C3AE
	movs r0, #0xcd
	bl m4aSongNumStart
	bl sub_0803C874
	ldr r0, _0803C34C @ =0x030013C4
	ldr r1, [r0]
	movs r0, #4
	strb r0, [r1, #2]
	b _0803C3AE
	.align 2, 0
_0803C348: .4byte 0x030024B0
_0803C34C: .4byte 0x030013C4
_0803C350:
	ldr r1, [r4]
	adds r0, r1, #0
	adds r0, #0x30
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1c
	cmp r0, #0
	bne _0803C3AE
	adds r0, r1, #0
	adds r0, #0x69
	ldrb r1, [r0]
	adds r1, #1
	strb r1, [r0]
	ldr r2, [r4]
	adds r0, r2, #0
	adds r0, #0x68
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldrb r0, [r0]
	cmp r1, r0
	blo _0803C380
	movs r0, #5
	strb r0, [r2, #2]
	b _0803C3AE
_0803C380:
	movs r0, #1
	strb r0, [r2, #2]
	b _0803C3AE
_0803C386:
	bl sub_0803D4A0
	ldr r0, _0803C3A4 @ =0x030013C4
	ldr r0, [r0]
	movs r1, #0xc9
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _0803C3A8
	movs r0, #5
	bl sub_0803BE04
	b _0803C3AE
	.align 2, 0
_0803C3A4: .4byte 0x030013C4
_0803C3A8:
	movs r0, #1
	bl sub_0803BE04
_0803C3AE:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0803C3BC
sub_0803C3BC: @ 0x0803C3BC
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r5, _0803C3D4 @ =0x030013C4
	ldr r0, [r5]
	ldrb r4, [r0, #2]
	cmp r4, #1
	beq _0803C40E
	cmp r4, #1
	bgt _0803C3D8
	cmp r4, #0
	beq _0803C3E6
	b _0803C564
	.align 2, 0
_0803C3D4: .4byte 0x030013C4
_0803C3D8:
	cmp r4, #2
	bne _0803C3DE
	b _0803C4F4
_0803C3DE:
	cmp r4, #3
	bne _0803C3E4
	b _0803C55A
_0803C3E4:
	b _0803C564
_0803C3E6:
	movs r1, #0xc9
	lsls r1, r1, #2
	adds r0, r0, r1
	movs r1, #0
	movs r2, #4
	bl sub_0800B8A4
	ldr r1, [r5]
	adds r1, #0x68
	strb r0, [r1]
	ldr r0, [r5]
	adds r0, #0x69
	strb r4, [r0]
	movs r0, #2
	bl sub_0803D46C
	ldr r1, [r5]
	movs r0, #1
	strb r0, [r1, #2]
	b _0803C564
_0803C40E:
	adds r0, #0x30
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	cmp r0, #0
	bge _0803C41A
	b _0803C564
_0803C41A:
	ldr r0, _0803C484 @ =0x88888888
	str r0, [sp, #4]
	ldr r0, _0803C488 @ =0x08089CE4
	ldr r7, [r0, #4]
	ldr r2, _0803C48C @ =0x01000100
	add r0, sp, #4
	adds r1, r7, #0
	bl CpuFastSet
	ldr r0, _0803C490 @ =0x03004400
	ldrb r0, [r0, #0x14]
	cmp r0, #0
	bne _0803C498
	ldr r1, [r5]
	movs r2, #0xc9
	lsls r2, r2, #2
	adds r0, r1, r2
	adds r1, #0x69
	ldrb r1, [r1]
	movs r2, #0
	movs r3, #4
	bl sub_0800B908
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0
	bne _0803C498
	ldr r4, _0803C494 @ =0x08089EF0
	ldr r1, [r5]
	movs r2, #0xc9
	lsls r2, r2, #2
	adds r0, r1, r2
	adds r1, #0x69
	ldrb r1, [r1]
	movs r2, #0
	movs r3, #4
	bl sub_0800B908
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	adds r0, r0, r4
	ldr r0, [r0]
	bl sub_08006828
	adds r1, r0, #0
	str r6, [sp]
	adds r0, r7, #0
	movs r2, #1
	movs r3, #8
	bl sub_08004D94
	b _0803C4D0
	.align 2, 0
_0803C484: .4byte 0x88888888
_0803C488: .4byte 0x08089CE4
_0803C48C: .4byte 0x01000100
_0803C490: .4byte 0x03004400
_0803C494: .4byte 0x08089EF0
_0803C498:
	ldr r4, _0803C4E8 @ =0x08089EF0
	ldr r0, _0803C4EC @ =0x030013C4
	ldr r1, [r0]
	movs r2, #0xc9
	lsls r2, r2, #2
	adds r0, r1, r2
	adds r1, #0x69
	ldrb r1, [r1]
	movs r2, #0
	movs r3, #4
	bl sub_0800B908
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	adds r0, r0, r4
	ldr r0, [r0]
	bl sub_08006828
	adds r1, r0, #0
	ldr r0, _0803C4F0 @ =0x08089CE4
	ldr r0, [r0, #4]
	adds r0, #0x80
	movs r2, #0
	str r2, [sp]
	movs r2, #1
	movs r3, #8
	bl sub_08004D94
_0803C4D0:
	movs r0, #1
	bl sub_08002B98
	movs r0, #1
	bl sub_0803C7C8
	ldr r0, _0803C4EC @ =0x030013C4
	ldr r1, [r0]
	movs r0, #2
	strb r0, [r1, #2]
	b _0803C564
	.align 2, 0
_0803C4E8: .4byte 0x08089EF0
_0803C4EC: .4byte 0x030013C4
_0803C4F0: .4byte 0x08089CE4
_0803C4F4:
	adds r0, #0x30
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1c
	cmp r0, #0
	bne _0803C564
	bl sub_08005934
	ldr r4, _0803C550 @ =0x08089F0C
	ldr r1, [r5]
	movs r2, #0xc9
	lsls r2, r2, #2
	adds r0, r1, r2
	adds r1, #0x69
	ldrb r1, [r1]
	movs r2, #0
	movs r3, #4
	bl sub_0800B908
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	adds r0, r0, r4
	ldr r0, [r0]
	bl sub_080062D0
	bl sub_08005A2C
	movs r0, #1
	bl sub_0803C83C
	ldr r1, [r5]
	adds r1, #0x69
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r2, [r5]
	adds r1, r2, #0
	adds r1, #0x68
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r1, [r1]
	cmp r0, r1
	blo _0803C554
	movs r0, #3
	strb r0, [r2, #2]
	b _0803C564
	.align 2, 0
_0803C550: .4byte 0x08089F0C
_0803C554:
	movs r0, #1
	strb r0, [r2, #2]
	b _0803C564
_0803C55A:
	bl sub_0803D4A0
	movs r0, #1
	bl sub_0803BE04
_0803C564:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0803C56C
sub_0803C56C: @ 0x0803C56C
	push {lr}
	bl sub_08007BD4
	adds r3, r0, #0
	ldrh r0, [r3]
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _0803C586
	ldr r1, _0803C598 @ =0x030024E0
	ldrh r0, [r1, #0x18]
	adds r0, #1
	strh r0, [r1, #0x18]
_0803C586:
	ldrh r1, [r3]
	adds r2, r1, #1
	adds r0, r2, #0
	asrs r0, r0, #2
	lsls r0, r0, #2
	subs r0, r2, r0
	strh r0, [r3]
	pop {r0}
	bx r0
	.align 2, 0
_0803C598: .4byte 0x030024E0

	thumb_func_start sub_0803C59C
sub_0803C59C: @ 0x0803C59C
	push {r4, lr}
	ldr r4, _0803C5C0 @ =0x030013C4
	ldr r0, [r4]
	movs r1, #8
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	movs r1, #0
	strh r1, [r0]
	ldr r0, [r4]
	movs r1, #8
	ldrsh r0, [r0, r1]
	ldr r1, _0803C5C4 @ =sub_0803C56C
	bl sub_08007B84
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803C5C0: .4byte 0x030013C4
_0803C5C4: .4byte sub_0803C56C

	thumb_func_start sub_0803C5C8
sub_0803C5C8: @ 0x0803C5C8
	push {r4, r5, lr}
	ldr r2, _0803C608 @ =0x030024E0
	ldr r0, _0803C60C @ =0x030013C4
	ldr r3, [r0]
	adds r4, r3, #0
	adds r4, #0x80
	ldrb r0, [r4]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #6
	movs r5, #0xe0
	lsls r5, r5, #1
	adds r0, r3, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0xc]
	ldr r2, _0803C610 @ =0x040000B0
	ldrb r1, [r4]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #6
	adds r0, #0x82
	adds r3, r3, r0
	str r3, [r2]
	ldr r0, _0803C614 @ =0x04000014
	str r0, [r2, #4]
	ldr r0, _0803C618 @ =0xA2400001
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803C608: .4byte 0x030024E0
_0803C60C: .4byte 0x030013C4
_0803C610: .4byte 0x040000B0
_0803C614: .4byte 0x04000014
_0803C618: .4byte 0xA2400001

	thumb_func_start sub_0803C61C
sub_0803C61C: @ 0x0803C61C
	push {lr}
	ldr r0, _0803C628 @ =sub_0803C5C8
	bl sub_080094F4
	pop {r0}
	bx r0
	.align 2, 0
_0803C628: .4byte sub_0803C5C8

	thumb_func_start sub_0803C62C
sub_0803C62C: @ 0x0803C62C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r2, _0803C704 @ =0x030013C4
	ldr r0, [r2]
	adds r0, #0x80
	ldrb r1, [r0]
	movs r0, #1
	adds r3, r0, #0
	eors r3, r1
	mov sb, r3
	movs r6, #0
	ldr r0, _0803C708 @ =0x08089CB8
	movs r4, #0
	ldrsh r1, [r0, r4]
	cmp r6, r1
	bge _0803C680
	lsls r0, r3, #2
	add r0, sb
	lsls r5, r0, #6
	ldr r7, _0803C70C @ =0x0000FF10
_0803C65C:
	ldr r0, _0803C704 @ =0x030013C4
	ldr r4, [r0]
	adds r0, r6, #0
	adds r0, #0x9f
	movs r1, #0xa0
	bl __modsi3
	lsls r0, r0, #1
	adds r0, r0, r5
	adds r4, #0x82
	adds r4, r4, r0
	strh r7, [r4]
	adds r6, #1
	ldr r1, _0803C708 @ =0x08089CB8
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r6, r0
	blt _0803C65C
_0803C680:
	movs r6, #0
	ldr r3, _0803C708 @ =0x08089CB8
	mov sl, r3
	mov r4, sb
	lsls r0, r4, #2
	add r0, sb
	str r0, [sp]
_0803C68E:
	lsls r2, r6, #1
	mov r1, sl
	adds r0, r2, r1
	movs r3, #0
	ldrsh r5, [r0, r3]
	adds r1, r6, #1
	lsls r3, r1, #1
	mov r4, sl
	adds r0, r3, r4
	movs r4, #0
	ldrsh r0, [r0, r4]
	mov r8, r1
	cmp r5, r0
	bge _0803C6E2
	ldr r0, [sp]
	lsls r7, r0, #6
	ldr r1, _0803C708 @ =0x08089CB8
	adds r0, r3, r1
	movs r3, #0
	ldrsh r6, [r0, r3]
_0803C6B6:
	ldr r0, _0803C704 @ =0x030013C4
	ldr r4, [r0]
	adds r0, r5, #0
	adds r0, #0x9f
	movs r1, #0xa0
	str r2, [sp, #4]
	bl __modsi3
	lsls r0, r0, #1
	adds r0, r0, r7
	adds r1, r4, #0
	adds r1, #0x82
	adds r1, r1, r0
	adds r4, #0x6c
	ldr r2, [sp, #4]
	adds r4, r4, r2
	ldrh r0, [r4]
	rsbs r0, r0, #0
	strh r0, [r1]
	adds r5, #1
	cmp r5, r6
	blt _0803C6B6
_0803C6E2:
	mov r6, r8
	cmp r6, #3
	ble _0803C68E
	ldr r1, _0803C704 @ =0x030013C4
	ldr r0, [r1]
	adds r0, #0x80
	mov r2, sb
	strb r2, [r0]
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803C704: .4byte 0x030013C4
_0803C708: .4byte 0x08089CB8
_0803C70C: .4byte 0x0000FF10

	thumb_func_start sub_0803C710
sub_0803C710: @ 0x0803C710
	push {r4, lr}
	ldr r4, _0803C73C @ =0x030013C4
	ldr r0, [r4]
	movs r1, #0x14
	ldrsh r0, [r0, r1]
	ldr r1, _0803C740 @ =sub_0803C61C
	bl sub_08007BA0
	ldr r0, [r4]
	movs r1, #0x14
	ldrsh r0, [r0, r1]
	ldr r1, _0803C744 @ =sub_0803C62C
	bl sub_08007B84
	ldr r0, _0803C748 @ =sub_0803C5C8
	movs r1, #0xff
	bl sub_08009460
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803C73C: .4byte 0x030013C4
_0803C740: .4byte sub_0803C61C
_0803C744: .4byte sub_0803C62C
_0803C748: .4byte sub_0803C5C8

	thumb_func_start sub_0803C74C
sub_0803C74C: @ 0x0803C74C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	lsls r5, r5, #0x18
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r6, _0803C78C @ =0x030013C4
	ldr r0, [r6]
	lsrs r5, r5, #0x17
	adds r0, #0xc
	adds r0, r0, r5
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	movs r1, #0
	strb r1, [r0, #1]
	strh r1, [r0, #2]
	ldr r0, [r6]
	adds r0, #0xc
	adds r0, r0, r5
	movs r1, #0
	ldrsh r0, [r0, r1]
	ldr r1, _0803C790 @ =0x08089F54
	lsls r4, r4, #2
	adds r4, r4, r1
	ldr r1, [r4]
	bl sub_08007B84
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803C78C: .4byte 0x030013C4
_0803C790: .4byte 0x08089F54

	thumb_func_start sub_0803C794
sub_0803C794: @ 0x0803C794
	push {r4, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _0803C7C4 @ =0x030013C4
	ldr r3, [r1]
	adds r3, #0x30
	ldrb r4, [r3]
	lsls r2, r4, #0x1b
	lsrs r2, r2, #0x1c
	movs r1, #1
	lsls r1, r0
	bics r2, r1
	lsls r2, r2, #1
	movs r1, #0x1f
	rsbs r1, r1, #0
	ands r1, r4
	orrs r1, r2
	strb r1, [r3]
	movs r1, #0
	bl sub_0803C74C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803C7C4: .4byte 0x030013C4

	thumb_func_start sub_0803C7C8
sub_0803C7C8: @ 0x0803C7C8
	push {r4, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _0803C7FC @ =0x030013C4
	ldr r3, [r1]
	adds r3, #0x30
	ldrb r4, [r3]
	lsls r2, r4, #0x1b
	lsrs r2, r2, #0x1c
	movs r1, #1
	lsls r1, r0
	orrs r2, r1
	movs r1, #0xf
	ands r2, r1
	lsls r2, r2, #1
	movs r1, #0x1f
	rsbs r1, r1, #0
	ands r1, r4
	orrs r1, r2
	strb r1, [r3]
	movs r1, #1
	bl sub_0803C74C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803C7FC: .4byte 0x030013C4

	thumb_func_start sub_0803C800
sub_0803C800: @ 0x0803C800
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	movs r4, #0
	cmp r4, r6
	bge _0803C832
	movs r5, #0
_0803C80E:
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	bl sub_0803C7C8
	ldr r0, _0803C838 @ =0x030013C4
	ldr r0, [r0]
	lsls r1, r4, #1
	adds r0, #0xc
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r1, r5, #0
	bl sub_08007AD8
	adds r5, #6
	adds r4, #1
	cmp r4, r6
	blt _0803C80E
_0803C832:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803C838: .4byte 0x030013C4

	thumb_func_start sub_0803C83C
sub_0803C83C: @ 0x0803C83C
	push {r4, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _0803C870 @ =0x030013C4
	ldr r3, [r1]
	adds r3, #0x30
	ldrb r4, [r3]
	lsls r2, r4, #0x1b
	lsrs r2, r2, #0x1c
	movs r1, #1
	lsls r1, r0
	orrs r2, r1
	movs r1, #0xf
	ands r2, r1
	lsls r2, r2, #1
	movs r1, #0x1f
	rsbs r1, r1, #0
	ands r1, r4
	orrs r1, r2
	strb r1, [r3]
	movs r1, #2
	bl sub_0803C74C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803C870: .4byte 0x030013C4

	thumb_func_start sub_0803C874
sub_0803C874: @ 0x0803C874
	push {r4, lr}
	movs r4, #0
_0803C878:
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	bl sub_0803C83C
	adds r4, #1
	cmp r4, #3
	ble _0803C878
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0803C88C
sub_0803C88C: @ 0x0803C88C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _0803C8C0 @ =0x030013C4
	ldr r0, [r5]
	lsls r6, r4, #1
	adds r0, #0xc
	adds r0, r0, r6
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	strb r4, [r0]
	ldr r0, [r5]
	adds r0, #0x6c
	adds r0, r0, r6
	movs r1, #0xf0
	strh r1, [r0]
	adds r0, r4, #0
	bl sub_0803C794
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803C8C0: .4byte 0x030013C4

	thumb_func_start sub_0803C8C4
sub_0803C8C4: @ 0x0803C8C4
	push {lr}
	movs r0, #0
	bl sub_0803C88C
	pop {r0}
	bx r0

	thumb_func_start sub_0803C8D0
sub_0803C8D0: @ 0x0803C8D0
	push {lr}
	movs r0, #1
	bl sub_0803C88C
	pop {r0}
	bx r0

	thumb_func_start sub_0803C8DC
sub_0803C8DC: @ 0x0803C8DC
	push {lr}
	movs r0, #2
	bl sub_0803C88C
	pop {r0}
	bx r0

	thumb_func_start sub_0803C8E8
sub_0803C8E8: @ 0x0803C8E8
	push {lr}
	movs r0, #3
	bl sub_0803C88C
	pop {r0}
	bx r0

	thumb_func_start sub_0803C8F4
sub_0803C8F4: @ 0x0803C8F4
	bx lr
	.align 2, 0

	thumb_func_start sub_0803C8F8
sub_0803C8F8: @ 0x0803C8F8
	push {r4, r5, r6, r7, lr}
	bl sub_08007BD4
	adds r4, r0, #0
	ldrb r0, [r4, #1]
	cmp r0, #1
	beq _0803C944
	cmp r0, #1
	bgt _0803C910
	cmp r0, #0
	beq _0803C91A
	b _0803C9FA
_0803C910:
	cmp r0, #2
	beq _0803C994
	cmp r0, #3
	beq _0803C9F4
	b _0803C9FA
_0803C91A:
	ldr r0, _0803C93C @ =0x030013C4
	ldr r2, [r0]
	ldrb r0, [r4]
	lsls r0, r0, #1
	adds r2, #0x6c
	adds r2, r2, r0
	ldr r1, _0803C940 @ =0x08089CC2
	adds r0, r0, r1
	ldrh r1, [r1]
	subs r1, #0xf0
	ldrh r0, [r0]
	subs r0, r0, r1
	strh r0, [r2]
	movs r0, #1
	strb r0, [r4, #1]
	b _0803C9FA
	.align 2, 0
_0803C93C: .4byte 0x030013C4
_0803C940: .4byte 0x08089CC2
_0803C944:
	ldr r0, _0803C988 @ =0x030013C4
	ldr r2, [r0]
	ldrb r1, [r4]
	lsls r1, r1, #1
	adds r2, #0x6c
	adds r1, r2, r1
	ldrh r0, [r1]
	subs r0, #8
	strh r0, [r1]
	ldrb r0, [r4]
	lsls r0, r0, #1
	adds r5, r2, r0
	movs r1, #0
	ldrsh r2, [r5, r1]
	ldr r1, _0803C98C @ =0x08089CC2
	adds r3, r0, r1
	movs r7, #0
	ldrsh r0, [r3, r7]
	ldr r6, _0803C990 @ =0x08089F44
	movs r7, #0
	ldrsh r1, [r6, r7]
	adds r0, r0, r1
	cmp r2, r0
	bgt _0803C9FA
	ldrh r0, [r6]
	ldrh r3, [r3]
	adds r0, r0, r3
	strh r0, [r5]
	movs r0, #0
	strh r0, [r4, #2]
	movs r0, #2
	strb r0, [r4, #1]
	b _0803C9FA
	.align 2, 0
_0803C988: .4byte 0x030013C4
_0803C98C: .4byte 0x08089CC2
_0803C990: .4byte 0x08089F44
_0803C994:
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #6
	bls _0803C9C4
	ldr r0, _0803C9BC @ =0x030013C4
	ldr r2, [r0]
	ldrb r0, [r4]
	lsls r0, r0, #1
	adds r2, #0x6c
	adds r2, r2, r0
	ldr r1, _0803C9C0 @ =0x08089CC2
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2]
	movs r0, #3
	strb r0, [r4, #1]
	b _0803C9FA
	.align 2, 0
_0803C9BC: .4byte 0x030013C4
_0803C9C0: .4byte 0x08089CC2
_0803C9C4:
	ldr r0, _0803C9E8 @ =0x030013C4
	ldr r2, [r0]
	ldrb r1, [r4]
	lsls r1, r1, #1
	adds r2, #0x6c
	adds r2, r2, r1
	ldr r0, _0803C9EC @ =0x08089CC2
	adds r1, r1, r0
	ldr r3, _0803C9F0 @ =0x08089F44
	ldrh r0, [r4, #2]
	lsls r0, r0, #1
	adds r0, r0, r3
	ldrh r0, [r0]
	ldrh r1, [r1]
	adds r0, r0, r1
	strh r0, [r2]
	b _0803C9FA
	.align 2, 0
_0803C9E8: .4byte 0x030013C4
_0803C9EC: .4byte 0x08089CC2
_0803C9F0: .4byte 0x08089F44
_0803C9F4:
	ldrb r0, [r4]
	bl sub_0803C794
_0803C9FA:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0803CA00
sub_0803CA00: @ 0x0803CA00
	push {r4, lr}
	bl sub_08007BD4
	adds r4, r0, #0
	ldr r0, _0803CA30 @ =0x030013C4
	ldr r1, [r0]
	ldrb r0, [r4]
	lsls r0, r0, #1
	adds r1, #0x6c
	adds r1, r1, r0
	movs r0, #0xf0
	strh r0, [r1]
	ldrb r0, [r4]
	bl sub_0803C794
	ldrb r0, [r4]
	bl sub_0803CA9C
	ldrb r0, [r4]
	bl sub_0803CCE4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803CA30: .4byte 0x030013C4

	thumb_func_start sub_0803CA34
sub_0803CA34: @ 0x0803CA34
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	lsls r5, r5, #0x18
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r6, _0803CA74 @ =0x030013C4
	ldr r0, [r6]
	lsrs r5, r5, #0x17
	adds r0, #0x16
	adds r0, r0, r5
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	movs r1, #0
	strb r1, [r0, #1]
	strh r1, [r0, #2]
	ldr r0, [r6]
	adds r0, #0x16
	adds r0, r0, r5
	movs r1, #0
	ldrsh r0, [r0, r1]
	ldr r1, _0803CA78 @ =0x08089F80
	lsls r4, r4, #2
	adds r4, r4, r1
	ldr r1, [r4]
	bl sub_08007B84
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803CA74: .4byte 0x030013C4
_0803CA78: .4byte 0x08089F80

	thumb_func_start sub_0803CA7C
sub_0803CA7C: @ 0x0803CA7C
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0
	bl sub_0803CA34
	pop {r0}
	bx r0

	thumb_func_start sub_0803CA8C
sub_0803CA8C: @ 0x0803CA8C
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #1
	bl sub_0803CA34
	pop {r0}
	bx r0

	thumb_func_start sub_0803CA9C
sub_0803CA9C: @ 0x0803CA9C
	push {r4, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _0803CAC4 @ =0x030013C4
	ldr r0, [r0]
	lsls r1, r4, #2
	adds r0, #0x38
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0
	bl sub_08009A34
	adds r0, r4, #0
	bl sub_0803CA7C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803CAC4: .4byte 0x030013C4

	thumb_func_start sub_0803CAC8
sub_0803CAC8: @ 0x0803CAC8
	push {lr}
	lsls r0, r0, #0x18
	ldr r1, _0803CAE0 @ =0x030013C4
	ldr r1, [r1]
	lsrs r0, r0, #0x16
	adds r1, #0x38
	adds r1, r1, r0
	ldr r0, [r1]
	bl sub_08009A00
	pop {r0}
	bx r0
	.align 2, 0
_0803CAE0: .4byte 0x030013C4

	thumb_func_start sub_0803CAE4
sub_0803CAE4: @ 0x0803CAE4
	push {lr}
	movs r0, #0
	bl sub_0803CAC8
	pop {r0}
	bx r0

	thumb_func_start sub_0803CAF0
sub_0803CAF0: @ 0x0803CAF0
	push {lr}
	movs r0, #1
	bl sub_0803CAC8
	pop {r0}
	bx r0

	thumb_func_start sub_0803CAFC
sub_0803CAFC: @ 0x0803CAFC
	push {lr}
	movs r0, #2
	bl sub_0803CAC8
	pop {r0}
	bx r0

	thumb_func_start sub_0803CB08
sub_0803CB08: @ 0x0803CB08
	push {lr}
	movs r0, #3
	bl sub_0803CAC8
	pop {r0}
	bx r0

	thumb_func_start sub_0803CB14
sub_0803CB14: @ 0x0803CB14
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	adds r5, r0, #0
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	ldr r6, _0803CBB4 @ =0x030013C4
	ldr r0, [r6]
	lsls r1, r5, #1
	mov r8, r1
	adds r0, #0x16
	add r0, r8
	movs r3, #0
	ldrsh r0, [r0, r3]
	bl sub_08007BBC
	strb r5, [r0]
	movs r0, #1
	movs r1, #0x80
	bl sub_080099E0
	adds r4, r0, #0
	movs r1, #0
	bl sub_08009A34
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	bl sub_08009A70
	ldr r0, [r6]
	ldr r1, [r0, #0x5c]
	adds r0, r4, #0
	bl sub_08009A78
	adds r0, r4, #0
	movs r1, #0
	bl sub_08009AB4
	ldr r1, _0803CBB8 @ =0x080FE924
	ldr r0, _0803CBBC @ =0x03004400
	ldrb r0, [r0, #0x14]
	lsls r0, r0, #2
	adds r1, r0, r1
	ldr r1, [r1]
	ldr r2, _0803CBC0 @ =0x080FE920
	adds r0, r0, r2
	ldr r2, [r0]
	adds r0, r4, #0
	movs r3, #1
	bl sub_08009ACC
	adds r0, r4, #0
	movs r1, #0xff
	bl sub_08009B40
	ldr r1, [r6]
	lsls r2, r5, #2
	adds r0, r1, #0
	adds r0, #0x38
	adds r0, r0, r2
	str r4, [r0]
	adds r1, #0x16
	add r1, r8
	movs r3, #0
	ldrsh r0, [r1, r3]
	ldr r1, _0803CBC4 @ =0x08089F60
	adds r2, r2, r1
	ldr r1, [r2]
	bl sub_08007BA0
	adds r0, r5, #0
	bl sub_0803CA7C
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803CBB4: .4byte 0x030013C4
_0803CBB8: .4byte 0x080FE924
_0803CBBC: .4byte 0x03004400
_0803CBC0: .4byte 0x080FE920
_0803CBC4: .4byte 0x08089F60

	thumb_func_start sub_0803CBC8
sub_0803CBC8: @ 0x0803CBC8
	push {lr}
	movs r0, #0
	bl sub_0803CB14
	pop {r0}
	bx r0

	thumb_func_start sub_0803CBD4
sub_0803CBD4: @ 0x0803CBD4
	push {lr}
	movs r0, #1
	bl sub_0803CB14
	pop {r0}
	bx r0

	thumb_func_start sub_0803CBE0
sub_0803CBE0: @ 0x0803CBE0
	push {lr}
	movs r0, #2
	bl sub_0803CB14
	pop {r0}
	bx r0

	thumb_func_start sub_0803CBEC
sub_0803CBEC: @ 0x0803CBEC
	push {lr}
	movs r0, #3
	bl sub_0803CB14
	pop {r0}
	bx r0

	thumb_func_start sub_0803CBF8
sub_0803CBF8: @ 0x0803CBF8
	bx lr
	.align 2, 0

	thumb_func_start sub_0803CBFC
sub_0803CBFC: @ 0x0803CBFC
	push {r4, r5, lr}
	bl sub_08007BD4
	adds r5, r0, #0
	ldr r4, _0803CC4C @ =0x030013C4
	ldr r1, [r4]
	ldrb r0, [r5]
	lsls r0, r0, #2
	adds r1, #0x38
	adds r1, r1, r0
	ldr r0, [r1]
	movs r1, #1
	bl sub_08009A34
	ldr r1, [r4]
	ldrb r3, [r5]
	lsls r2, r3, #2
	adds r0, r1, #0
	adds r0, #0x38
	adds r0, r0, r2
	ldr r0, [r0]
	lsls r3, r3, #1
	adds r1, #0x6c
	adds r1, r1, r3
	ldrh r1, [r1]
	adds r1, #0x78
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r2, _0803CC50 @ =0x08089CB8
	adds r3, r3, r2
	ldrh r2, [r3]
	adds r2, #1
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl sub_08009A70
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803CC4C: .4byte 0x030013C4
_0803CC50: .4byte 0x08089CB8

	thumb_func_start sub_0803CC54
sub_0803CC54: @ 0x0803CC54
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	lsls r5, r5, #0x18
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r6, _0803CC94 @ =0x030013C4
	ldr r0, [r6]
	lsrs r5, r5, #0x17
	adds r0, #0x1e
	adds r0, r0, r5
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	movs r1, #0
	strb r1, [r0, #1]
	strh r1, [r0, #2]
	ldr r0, [r6]
	adds r0, #0x1e
	adds r0, r0, r5
	movs r1, #0
	ldrsh r0, [r0, r1]
	ldr r1, _0803CC98 @ =0x08089FA8
	lsls r4, r4, #2
	adds r4, r4, r1
	ldr r1, [r4]
	bl sub_08007B84
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803CC94: .4byte 0x030013C4
_0803CC98: .4byte 0x08089FA8

	thumb_func_start sub_0803CC9C
sub_0803CC9C: @ 0x0803CC9C
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0
	bl sub_0803CC54
	pop {r0}
	bx r0

	thumb_func_start sub_0803CCAC
sub_0803CCAC: @ 0x0803CCAC
	push {r4, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	lsls r1, r1, #0x18
	ldr r0, _0803CCDC @ =0x030013C4
	ldr r0, [r0]
	lsls r2, r4, #2
	adds r0, #0x48
	adds r0, r0, r2
	ldr r0, [r0]
	ldr r2, _0803CCE0 @ =0x08089CDC
	lsrs r1, r1, #0x17
	adds r1, r1, r2
	ldrb r1, [r1]
	bl sub_08009AFC
	adds r0, r4, #0
	movs r1, #1
	bl sub_0803CC54
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803CCDC: .4byte 0x030013C4
_0803CCE0: .4byte 0x08089CDC

	thumb_func_start sub_0803CCE4
sub_0803CCE4: @ 0x0803CCE4
	push {r4, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _0803CD0C @ =0x030013C4
	ldr r0, [r0]
	lsls r1, r4, #2
	adds r0, #0x48
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0
	bl sub_08009A34
	adds r0, r4, #0
	bl sub_0803CC9C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803CD0C: .4byte 0x030013C4

	thumb_func_start sub_0803CD10
sub_0803CD10: @ 0x0803CD10
	push {lr}
	lsls r0, r0, #0x18
	ldr r1, _0803CD28 @ =0x030013C4
	ldr r1, [r1]
	lsrs r0, r0, #0x16
	adds r1, #0x48
	adds r1, r1, r0
	ldr r0, [r1]
	bl sub_08009A00
	pop {r0}
	bx r0
	.align 2, 0
_0803CD28: .4byte 0x030013C4

	thumb_func_start sub_0803CD2C
sub_0803CD2C: @ 0x0803CD2C
	push {lr}
	movs r0, #0
	bl sub_0803CD10
	pop {r0}
	bx r0

	thumb_func_start sub_0803CD38
sub_0803CD38: @ 0x0803CD38
	push {lr}
	movs r0, #1
	bl sub_0803CD10
	pop {r0}
	bx r0

	thumb_func_start sub_0803CD44
sub_0803CD44: @ 0x0803CD44
	push {lr}
	movs r0, #2
	bl sub_0803CD10
	pop {r0}
	bx r0

	thumb_func_start sub_0803CD50
sub_0803CD50: @ 0x0803CD50
	push {lr}
	movs r0, #3
	bl sub_0803CD10
	pop {r0}
	bx r0

	thumb_func_start sub_0803CD5C
sub_0803CD5C: @ 0x0803CD5C
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	adds r5, r0, #0
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	ldr r6, _0803CDEC @ =0x030013C4
	ldr r0, [r6]
	lsls r1, r5, #1
	mov r8, r1
	adds r0, #0x1e
	add r0, r8
	movs r3, #0
	ldrsh r0, [r0, r3]
	bl sub_08007BBC
	strb r5, [r0]
	movs r0, #1
	movs r1, #0x80
	bl sub_080099E0
	adds r4, r0, #0
	movs r1, #0
	bl sub_08009A34
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	bl sub_08009A70
	ldr r0, [r6]
	ldr r1, [r0, #0x60]
	adds r0, r4, #0
	bl sub_08009A78
	adds r0, r4, #0
	movs r1, #1
	bl sub_08009AB4
	ldr r1, _0803CDF0 @ =0x0812D5AC
	ldr r2, _0803CDF4 @ =0x0812D598
	adds r0, r4, #0
	movs r3, #0
	bl sub_08009ACC
	adds r0, r4, #0
	movs r1, #0xff
	bl sub_08009B40
	ldr r1, [r6]
	lsls r2, r5, #2
	adds r0, r1, #0
	adds r0, #0x48
	adds r0, r0, r2
	str r4, [r0]
	adds r1, #0x1e
	add r1, r8
	movs r3, #0
	ldrsh r0, [r1, r3]
	ldr r1, _0803CDF8 @ =0x08089F88
	adds r2, r2, r1
	ldr r1, [r2]
	bl sub_08007BA0
	adds r0, r5, #0
	bl sub_0803CC9C
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803CDEC: .4byte 0x030013C4
_0803CDF0: .4byte 0x0812D5AC
_0803CDF4: .4byte 0x0812D598
_0803CDF8: .4byte 0x08089F88

	thumb_func_start sub_0803CDFC
sub_0803CDFC: @ 0x0803CDFC
	push {lr}
	movs r0, #0
	bl sub_0803CD5C
	pop {r0}
	bx r0

	thumb_func_start sub_0803CE08
sub_0803CE08: @ 0x0803CE08
	push {lr}
	movs r0, #1
	bl sub_0803CD5C
	pop {r0}
	bx r0

	thumb_func_start sub_0803CE14
sub_0803CE14: @ 0x0803CE14
	push {lr}
	movs r0, #2
	bl sub_0803CD5C
	pop {r0}
	bx r0

	thumb_func_start sub_0803CE20
sub_0803CE20: @ 0x0803CE20
	push {lr}
	movs r0, #3
	bl sub_0803CD5C
	pop {r0}
	bx r0

	thumb_func_start sub_0803CE2C
sub_0803CE2C: @ 0x0803CE2C
	bx lr
	.align 2, 0

	thumb_func_start sub_0803CE30
sub_0803CE30: @ 0x0803CE30
	push {r4, r5, lr}
	bl sub_08007BD4
	adds r5, r0, #0
	ldr r4, _0803CE80 @ =0x030013C4
	ldr r1, [r4]
	ldrb r0, [r5]
	lsls r0, r0, #2
	adds r1, #0x48
	adds r1, r1, r0
	ldr r0, [r1]
	movs r1, #1
	bl sub_08009A34
	ldr r1, [r4]
	ldrb r3, [r5]
	lsls r2, r3, #2
	adds r0, r1, #0
	adds r0, #0x48
	adds r0, r0, r2
	ldr r0, [r0]
	lsls r3, r3, #1
	adds r1, #0x6c
	adds r1, r1, r3
	ldrh r1, [r1]
	adds r1, #4
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r2, _0803CE84 @ =0x08089CB8
	adds r3, r3, r2
	ldrh r2, [r3]
	adds r2, #1
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl sub_08009A70
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803CE80: .4byte 0x030013C4
_0803CE84: .4byte 0x08089CB8

	thumb_func_start sub_0803CE88
sub_0803CE88: @ 0x0803CE88
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	subs r0, #0x44
	cmp r0, #0x37
	bls _0803CE96
	b _0803CF90
_0803CE96:
	lsls r0, r0, #2
	ldr r1, _0803CEA0 @ =_0803CEA4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0803CEA0: .4byte _0803CEA4
_0803CEA4: @ jump table
	.4byte _0803CF90 @ case 0
	.4byte _0803CF90 @ case 1
	.4byte _0803CF90 @ case 2
	.4byte _0803CF90 @ case 3
	.4byte _0803CF90 @ case 4
	.4byte _0803CF90 @ case 5
	.4byte _0803CF90 @ case 6
	.4byte _0803CF90 @ case 7
	.4byte _0803CF90 @ case 8
	.4byte _0803CF90 @ case 9
	.4byte _0803CF90 @ case 10
	.4byte _0803CF90 @ case 11
	.4byte _0803CF90 @ case 12
	.4byte _0803CF90 @ case 13
	.4byte _0803CF90 @ case 14
	.4byte _0803CF90 @ case 15
	.4byte _0803CF90 @ case 16
	.4byte _0803CF90 @ case 17
	.4byte _0803CF90 @ case 18
	.4byte _0803CF90 @ case 19
	.4byte _0803CF90 @ case 20
	.4byte _0803CF90 @ case 21
	.4byte _0803CF90 @ case 22
	.4byte _0803CF90 @ case 23
	.4byte _0803CF90 @ case 24
	.4byte _0803CF90 @ case 25
	.4byte _0803CF90 @ case 26
	.4byte _0803CF90 @ case 27
	.4byte _0803CF90 @ case 28
	.4byte _0803CF90 @ case 29
	.4byte _0803CF90 @ case 30
	.4byte _0803CF90 @ case 31
	.4byte _0803CF90 @ case 32
	.4byte _0803CF84 @ case 33
	.4byte _0803CF84 @ case 34
	.4byte _0803CF84 @ case 35
	.4byte _0803CF84 @ case 36
	.4byte _0803CF84 @ case 37
	.4byte _0803CF84 @ case 38
	.4byte _0803CF84 @ case 39
	.4byte _0803CF88 @ case 40
	.4byte _0803CF88 @ case 41
	.4byte _0803CF88 @ case 42
	.4byte _0803CF88 @ case 43
	.4byte _0803CF88 @ case 44
	.4byte _0803CF88 @ case 45
	.4byte _0803CF90 @ case 46
	.4byte _0803CF8C @ case 47
	.4byte _0803CF8C @ case 48
	.4byte _0803CF90 @ case 49
	.4byte _0803CF8C @ case 50
	.4byte _0803CF8C @ case 51
	.4byte _0803CF8C @ case 52
	.4byte _0803CF8C @ case 53
	.4byte _0803CF90 @ case 54
	.4byte _0803CF84 @ case 55
_0803CF84:
	movs r0, #1
	b _0803CF92
_0803CF88:
	movs r0, #3
	b _0803CF92
_0803CF8C:
	movs r0, #2
	b _0803CF92
_0803CF90:
	movs r0, #0
_0803CF92:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0803CF98
sub_0803CF98: @ 0x0803CF98
	push {r4, r5, r6, r7, lr}
	movs r7, #0
	movs r6, #0
	movs r4, #0x44
_0803CFA0:
	lsls r1, r4, #0x10
	lsrs r1, r1, #0x10
	ldr r0, _0803D13C @ =0x02034DD8
	bl sub_0800B87C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0803CFB2
	adds r6, #1
_0803CFB2:
	adds r4, #1
	cmp r4, #0x7b
	ble _0803CFA0
	movs r5, #0
	movs r4, #0x44
_0803CFBC:
	ldr r0, _0803D140 @ =0x030013C4
	ldr r0, [r0]
	movs r1, #0xc5
	lsls r1, r1, #2
	adds r0, r0, r1
	lsls r1, r4, #0x10
	lsrs r1, r1, #0x10
	bl sub_0800B87C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0803CFD6
	adds r5, #1
_0803CFD6:
	adds r4, #1
	cmp r4, #0x7b
	ble _0803CFBC
	cmp r6, #0xe
	bgt _0803CFEA
	adds r0, r6, r5
	cmp r0, #0xe
	ble _0803CFEA
	movs r0, #1
	orrs r7, r0
_0803CFEA:
	movs r6, #0
	movs r4, #0x44
_0803CFEE:
	lsls r1, r4, #0x10
	lsrs r1, r1, #0x10
	ldr r0, _0803D13C @ =0x02034DD8
	bl sub_0800B87C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0803D010
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	bl sub_0803CE88
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #2
	bne _0803D010
	adds r6, #1
_0803D010:
	adds r4, #1
	cmp r4, #0x7b
	ble _0803CFEE
	movs r5, #0
	movs r4, #0x44
_0803D01A:
	ldr r0, _0803D140 @ =0x030013C4
	ldr r0, [r0]
	movs r1, #0xc5
	lsls r1, r1, #2
	adds r0, r0, r1
	lsls r1, r4, #0x10
	lsrs r1, r1, #0x10
	bl sub_0800B87C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0803D044
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	bl sub_0803CE88
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #2
	bne _0803D044
	adds r5, #1
_0803D044:
	adds r4, #1
	cmp r4, #0x7b
	ble _0803D01A
	cmp r6, #0
	bne _0803D056
	cmp r5, #0
	beq _0803D056
	movs r0, #8
	orrs r7, r0
_0803D056:
	movs r6, #0
	movs r4, #0x44
_0803D05A:
	lsls r1, r4, #0x10
	lsrs r1, r1, #0x10
	ldr r0, _0803D13C @ =0x02034DD8
	bl sub_0800B87C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0803D07C
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	bl sub_0803CE88
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bne _0803D07C
	adds r6, #1
_0803D07C:
	adds r4, #1
	cmp r4, #0x7b
	ble _0803D05A
	movs r5, #0
	movs r4, #0x44
_0803D086:
	ldr r0, _0803D140 @ =0x030013C4
	ldr r0, [r0]
	movs r1, #0xc5
	lsls r1, r1, #2
	adds r0, r0, r1
	lsls r1, r4, #0x10
	lsrs r1, r1, #0x10
	bl sub_0800B87C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0803D0B0
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	bl sub_0803CE88
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bne _0803D0B0
	adds r5, #1
_0803D0B0:
	adds r4, #1
	cmp r4, #0x7b
	ble _0803D086
	cmp r6, #2
	bgt _0803D0C4
	adds r0, r6, r5
	cmp r0, #2
	ble _0803D0C4
	movs r0, #2
	orrs r7, r0
_0803D0C4:
	movs r6, #0
	movs r4, #0x44
_0803D0C8:
	lsls r1, r4, #0x10
	lsrs r1, r1, #0x10
	ldr r0, _0803D13C @ =0x02034DD8
	bl sub_0800B87C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0803D0EA
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	bl sub_0803CE88
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #3
	bne _0803D0EA
	adds r6, #1
_0803D0EA:
	adds r4, #1
	cmp r4, #0x7b
	ble _0803D0C8
	movs r5, #0
	movs r4, #0x44
_0803D0F4:
	ldr r0, _0803D140 @ =0x030013C4
	ldr r0, [r0]
	movs r1, #0xc5
	lsls r1, r1, #2
	adds r0, r0, r1
	lsls r1, r4, #0x10
	lsrs r1, r1, #0x10
	bl sub_0800B87C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0803D11E
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	bl sub_0803CE88
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #3
	bne _0803D11E
	adds r5, #1
_0803D11E:
	adds r4, #1
	cmp r4, #0x7b
	ble _0803D0F4
	cmp r6, #5
	bgt _0803D132
	adds r0, r6, r5
	cmp r0, #5
	ble _0803D132
	movs r0, #4
	orrs r7, r0
_0803D132:
	adds r0, r7, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0803D13C: .4byte 0x02034DD8
_0803D140: .4byte 0x030013C4

	thumb_func_start sub_0803D144
sub_0803D144: @ 0x0803D144
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _0803D178 @ =0x030013C4
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
	ldr r1, _0803D17C @ =0x08089FC0
	lsls r4, r4, #2
	adds r4, r4, r1
	ldr r1, [r4]
	bl sub_08007B84
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803D178: .4byte 0x030013C4
_0803D17C: .4byte 0x08089FC0

	thumb_func_start sub_0803D180
sub_0803D180: @ 0x0803D180
	push {lr}
	ldr r0, _0803D19C @ =0x030013C4
	ldr r1, [r0]
	adds r1, #0x30
	ldrb r2, [r1]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	movs r0, #0
	bl sub_0803D144
	pop {r0}
	bx r0
	.align 2, 0
_0803D19C: .4byte 0x030013C4

	thumb_func_start sub_0803D1A0
sub_0803D1A0: @ 0x0803D1A0
	push {lr}
	ldr r0, _0803D1BC @ =0x030013C4
	ldr r1, [r0]
	adds r1, #0x30
	ldrb r0, [r1]
	movs r2, #1
	orrs r0, r2
	strb r0, [r1]
	movs r0, #1
	bl sub_0803D144
	pop {r0}
	bx r0
	.align 2, 0
_0803D1BC: .4byte 0x030013C4

	thumb_func_start sub_0803D1C0
sub_0803D1C0: @ 0x0803D1C0
	push {lr}
	ldr r0, _0803D1DC @ =0x030013C4
	ldr r1, [r0]
	adds r2, r1, #0
	adds r2, #0x7c
	movs r0, #0
	strh r0, [r2]
	adds r1, #0x7e
	movs r0, #0xa0
	strh r0, [r1]
	bl sub_0803D180
	pop {r0}
	bx r0
	.align 2, 0
_0803D1DC: .4byte 0x030013C4

	thumb_func_start sub_0803D1E0
sub_0803D1E0: @ 0x0803D1E0
	bx lr
	.align 2, 0

	thumb_func_start sub_0803D1E4
sub_0803D1E4: @ 0x0803D1E4
	push {r4, r5, lr}
	bl sub_08007BD4
	adds r3, r0, #0
	ldrb r0, [r3]
	cmp r0, #1
	beq _0803D21C
	cmp r0, #1
	bgt _0803D1FC
	cmp r0, #0
	beq _0803D206
	b _0803D294
_0803D1FC:
	cmp r0, #2
	beq _0803D250
	cmp r0, #3
	beq _0803D290
	b _0803D294
_0803D206:
	ldr r0, _0803D218 @ =0x030013C4
	ldr r0, [r0]
	adds r0, #0x7e
	movs r1, #0xa0
	strh r1, [r0]
	movs r0, #1
	strb r0, [r3]
	b _0803D294
	.align 2, 0
_0803D218: .4byte 0x030013C4
_0803D21C:
	ldr r0, _0803D248 @ =0x030013C4
	ldr r0, [r0]
	adds r2, r0, #0
	adds r2, #0x7e
	ldrh r0, [r2]
	subs r0, #8
	strh r0, [r2]
	ldr r1, _0803D24C @ =0x08089FB0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r4, [r1]
	movs r5, #0
	ldrsh r1, [r1, r5]
	cmp r0, r1
	bgt _0803D294
	strh r4, [r2]
	movs r0, #0
	strh r0, [r3, #2]
	movs r0, #2
	strb r0, [r3]
	b _0803D294
	.align 2, 0
_0803D248: .4byte 0x030013C4
_0803D24C: .4byte 0x08089FB0
_0803D250:
	ldrh r0, [r3, #2]
	adds r0, #1
	strh r0, [r3, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #6
	bls _0803D274
	ldr r0, _0803D270 @ =0x030013C4
	ldr r0, [r0]
	adds r0, #0x7e
	movs r1, #0
	strh r1, [r0]
	movs r0, #3
	strb r0, [r3]
	b _0803D294
	.align 2, 0
_0803D270: .4byte 0x030013C4
_0803D274:
	ldr r0, _0803D288 @ =0x030013C4
	ldr r1, [r0]
	ldr r2, _0803D28C @ =0x08089FB0
	ldrh r0, [r3, #2]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	adds r1, #0x7e
	strh r0, [r1]
	b _0803D294
	.align 2, 0
_0803D288: .4byte 0x030013C4
_0803D28C: .4byte 0x08089FB0
_0803D290:
	bl sub_0803D180
_0803D294:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0803D29C
sub_0803D29C: @ 0x0803D29C
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _0803D2D0 @ =0x030013C4
	ldr r0, [r5]
	movs r1, #0x26
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	movs r1, #0
	strb r1, [r0]
	strh r1, [r0, #2]
	ldr r0, [r5]
	movs r1, #0x26
	ldrsh r0, [r0, r1]
	ldr r1, _0803D2D4 @ =0x08089FC8
	lsls r4, r4, #2
	adds r4, r4, r1
	ldr r1, [r4]
	bl sub_08007B84
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803D2D0: .4byte 0x030013C4
_0803D2D4: .4byte 0x08089FC8

	thumb_func_start sub_0803D2D8
sub_0803D2D8: @ 0x0803D2D8
	push {lr}
	ldr r0, _0803D2F4 @ =0x030013C4
	ldr r1, [r0]
	adds r1, #0x30
	ldrb r2, [r1]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	movs r0, #0
	bl sub_0803D29C
	pop {r0}
	bx r0
	.align 2, 0
_0803D2F4: .4byte 0x030013C4

	thumb_func_start sub_0803D2F8
sub_0803D2F8: @ 0x0803D2F8
	push {lr}
	ldr r0, _0803D320 @ =0x030013C4
	ldr r1, [r0]
	adds r1, #0x30
	ldrb r0, [r1]
	movs r2, #0x20
	orrs r0, r2
	strb r0, [r1]
	ldr r2, _0803D324 @ =0x030024E0
	ldrh r1, [r2]
	movs r3, #0x80
	lsls r3, r3, #3
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2]
	movs r0, #1
	bl sub_0803D29C
	pop {r0}
	bx r0
	.align 2, 0
_0803D320: .4byte 0x030013C4
_0803D324: .4byte 0x030024E0

	thumb_func_start sub_0803D328
sub_0803D328: @ 0x0803D328
	push {lr}
	ldr r0, _0803D338 @ =0x030013C4
	ldr r0, [r0]
	ldr r0, [r0, #0x34]
	bl sub_08009A00
	pop {r0}
	bx r0
	.align 2, 0
_0803D338: .4byte 0x030013C4

	thumb_func_start sub_0803D33C
sub_0803D33C: @ 0x0803D33C
	push {r4, r5, lr}
	movs r0, #2
	movs r1, #0x80
	bl sub_080099E0
	adds r4, r0, #0
	movs r1, #0
	bl sub_08009A34
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	bl sub_08009A70
	ldr r5, _0803D3A8 @ =0x030013C4
	ldr r0, [r5]
	ldr r1, [r0, #0x5c]
	adds r0, r4, #0
	bl sub_08009A78
	adds r0, r4, #0
	movs r1, #0
	bl sub_08009AB4
	ldr r1, _0803D3AC @ =0x080FE924
	ldr r0, _0803D3B0 @ =0x03004400
	ldrb r0, [r0, #0x14]
	lsls r0, r0, #2
	adds r1, r0, r1
	ldr r1, [r1]
	ldr r2, _0803D3B4 @ =0x080FE920
	adds r0, r0, r2
	ldr r2, [r0]
	adds r0, r4, #0
	movs r3, #0
	bl sub_08009ACC
	adds r0, r4, #0
	movs r1, #0xff
	bl sub_08009B40
	ldr r0, [r5]
	str r4, [r0, #0x34]
	movs r1, #0x26
	ldrsh r0, [r0, r1]
	ldr r1, _0803D3B8 @ =sub_0803D328
	bl sub_08007BA0
	bl sub_0803D2D8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803D3A8: .4byte 0x030013C4
_0803D3AC: .4byte 0x080FE924
_0803D3B0: .4byte 0x03004400
_0803D3B4: .4byte 0x080FE920
_0803D3B8: .4byte sub_0803D328

	thumb_func_start sub_0803D3BC
sub_0803D3BC: @ 0x0803D3BC
	bx lr
	.align 2, 0

	thumb_func_start sub_0803D3C0
sub_0803D3C0: @ 0x0803D3C0
	push {r4, lr}
	ldr r4, _0803D408 @ =0x030013C4
	ldr r0, [r4]
	ldr r0, [r0, #0x34]
	movs r1, #1
	bl sub_08009A34
	ldr r2, [r4]
	ldr r0, [r2, #0x34]
	adds r1, r2, #0
	adds r1, #0x7c
	ldrh r1, [r1]
	adds r1, #0x78
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r2, #0x7e
	ldrh r2, [r2]
	adds r2, #0x1e
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl sub_08009A70
	ldr r2, _0803D40C @ =0x030024E0
	ldr r1, [r4]
	adds r0, r1, #0
	adds r0, #0x7c
	ldrh r0, [r0]
	rsbs r0, r0, #0
	strh r0, [r2, #0xe]
	adds r1, #0x7e
	ldrh r0, [r1]
	rsbs r0, r0, #0
	strh r0, [r2, #0x16]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803D408: .4byte 0x030013C4
_0803D40C: .4byte 0x030024E0

	thumb_func_start sub_0803D410
sub_0803D410: @ 0x0803D410
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _0803D444 @ =0x030013C4
	ldr r0, [r5]
	movs r1, #0x28
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	movs r1, #0
	strb r1, [r0, #1]
	strh r1, [r0, #2]
	ldr r0, [r5]
	movs r1, #0x28
	ldrsh r0, [r0, r1]
	ldr r1, _0803D448 @ =0x08089FE0
	lsls r4, r4, #2
	adds r4, r4, r1
	ldr r1, [r4]
	bl sub_08007B84
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803D444: .4byte 0x030013C4
_0803D448: .4byte 0x08089FE0

	thumb_func_start sub_0803D44C
sub_0803D44C: @ 0x0803D44C
	push {lr}
	ldr r0, _0803D468 @ =0x030013C4
	ldr r1, [r0]
	adds r1, #0x30
	ldrb r2, [r1]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	movs r0, #0
	bl sub_0803D410
	pop {r0}
	bx r0
	.align 2, 0
_0803D468: .4byte 0x030013C4

	thumb_func_start sub_0803D46C
sub_0803D46C: @ 0x0803D46C
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _0803D49C @ =0x030013C4
	ldr r0, [r5]
	movs r1, #0x28
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	strb r4, [r0]
	ldr r1, [r5]
	adds r1, #0x30
	ldrb r0, [r1]
	movs r2, #0x40
	orrs r0, r2
	strb r0, [r1]
	movs r0, #1
	bl sub_0803D410
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803D49C: .4byte 0x030013C4

	thumb_func_start sub_0803D4A0
sub_0803D4A0: @ 0x0803D4A0
	push {lr}
	ldr r0, _0803D4BC @ =0x030013C4
	ldr r1, [r0]
	adds r1, #0x30
	ldrb r0, [r1]
	movs r2, #0x40
	orrs r0, r2
	strb r0, [r1]
	movs r0, #2
	bl sub_0803D410
	pop {r0}
	bx r0
	.align 2, 0
_0803D4BC: .4byte 0x030013C4

	thumb_func_start sub_0803D4C0
sub_0803D4C0: @ 0x0803D4C0
	push {lr}
	bl sub_0803D44C
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0803D4CC
sub_0803D4CC: @ 0x0803D4CC
	bx lr
	.align 2, 0

	thumb_func_start sub_0803D4D0
sub_0803D4D0: @ 0x0803D4D0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	bl sub_08007BD4
	adds r6, r0, #0
	ldrb r3, [r6, #1]
	cmp r3, #1
	beq _0803D5D0
	cmp r3, #1
	bgt _0803D4F0
	cmp r3, #0
	beq _0803D4F8
	b _0803D6D4
_0803D4F0:
	cmp r3, #2
	bne _0803D4F6
	b _0803D6D0
_0803D4F6:
	b _0803D6D4
_0803D4F8:
	ldr r4, _0803D5C0 @ =0x030013C4
	ldr r2, [r4]
	ldrb r0, [r6]
	movs r1, #0xca
	lsls r1, r1, #2
	adds r2, r2, r1
	adds r0, r2, r0
	ldrb r1, [r0]
	lsls r1, r1, #3
	movs r0, #0xf0
	subs r0, r0, r1
	asrs r1, r0, #1
	str r3, [r6, #4]
	movs r5, #0
	ldrb r0, [r6]
	adds r2, r2, r0
	ldrb r2, [r2]
	cmp r5, r2
	bge _0803D5B8
	mov sb, r4
	mov r8, r5
	lsls r7, r1, #0x10
_0803D524:
	movs r0, #1
	movs r1, #0x80
	bl sub_08009890
	adds r4, r0, #0
	movs r1, #0
	bl sub_080098BC
	asrs r1, r7, #0x10
	adds r0, r4, #0
	movs r2, #0x20
	bl sub_080098D4
	ldr r1, _0803D5C4 @ =0x08089EE4
	ldrb r0, [r6]
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r2, r5, #5
	ldr r1, [r0]
	adds r1, r1, r2
	adds r0, r4, #0
	bl sub_080098DC
	adds r0, r4, #0
	movs r1, #0
	bl sub_08009918
	adds r0, r4, #0
	movs r1, #0
	bl sub_08009934
	mov r3, sb
	ldr r2, [r3]
	lsls r1, r5, #2
	movs r3, #0xcb
	lsls r3, r3, #2
	adds r0, r2, r3
	adds r0, r0, r1
	str r4, [r0]
	movs r1, #0xe5
	lsls r1, r1, #2
	adds r0, r2, r1
	adds r0, r0, r5
	mov r2, r8
	strb r2, [r0]
	mov r3, sb
	ldr r2, [r3]
	lsls r1, r5, #1
	ldr r3, _0803D5C8 @ =0x000003E2
	adds r0, r2, r3
	adds r0, r0, r1
	mov r3, r8
	strh r3, [r0]
	ldr r3, _0803D5CC @ =0x000003AE
	adds r0, r2, r3
	adds r0, r0, r1
	strh r5, [r0]
	movs r1, #1
	lsls r1, r5
	ldr r0, [r6, #4]
	orrs r0, r1
	str r0, [r6, #4]
	movs r0, #0x80
	lsls r0, r0, #0xc
	adds r7, r7, r0
	adds r5, #1
	movs r1, #0xca
	lsls r1, r1, #2
	adds r2, r2, r1
	ldrb r3, [r6]
	adds r2, r2, r3
	ldrb r2, [r2]
	cmp r5, r2
	blt _0803D524
_0803D5B8:
	movs r0, #1
	strb r0, [r6, #1]
	b _0803D6D4
	.align 2, 0
_0803D5C0: .4byte 0x030013C4
_0803D5C4: .4byte 0x08089EE4
_0803D5C8: .4byte 0x000003E2
_0803D5CC: .4byte 0x000003AE
_0803D5D0:
	movs r5, #0
	ldr r1, _0803D604 @ =0x030013C4
	ldr r0, [r1]
	movs r2, #0xca
	lsls r2, r2, #2
	adds r0, r0, r2
	ldrb r3, [r6]
	adds r0, r0, r3
	ldrb r0, [r0]
	cmp r5, r0
	bge _0803D6B8
	mov sl, r1
	mov sb, r5
_0803D5EA:
	mov r0, sl
	ldr r2, [r0]
	lsls r4, r5, #1
	ldr r1, _0803D608 @ =0x000003AE
	adds r0, r2, r1
	adds r1, r0, r4
	ldrh r0, [r1]
	mov r8, r0
	cmp r0, #0
	beq _0803D60C
	subs r0, #1
	strh r0, [r1]
	b _0803D69E
	.align 2, 0
_0803D604: .4byte 0x030013C4
_0803D608: .4byte 0x000003AE
_0803D60C:
	movs r7, #0xe5
	lsls r7, r7, #2
	adds r0, r2, r7
	adds r0, r0, r5
	ldrb r0, [r0]
	cmp r0, #1
	beq _0803D640
	cmp r0, #1
	bgt _0803D69E
	cmp r0, #0
	bne _0803D69E
	movs r3, #0xcb
	lsls r3, r3, #2
	adds r0, r2, r3
	add r0, sb
	ldr r0, [r0]
	movs r1, #1
	bl sub_080098BC
	mov r0, sl
	ldr r1, [r0]
	adds r1, r1, r7
	adds r1, r1, r5
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_0803D640:
	mov r1, sl
	ldr r2, [r1]
	movs r3, #0xcb
	lsls r3, r3, #2
	adds r0, r2, r3
	add r0, sb
	ldr r0, [r0]
	movs r3, #6
	ldrsh r1, [r0, r3]
	ldr r3, _0803D6C4 @ =0x08089FD0
	mov ip, r3
	ldr r3, _0803D6C8 @ =0x000003E2
	adds r2, r2, r3
	adds r2, r2, r4
	ldrh r2, [r2]
	lsls r2, r2, #1
	add r2, ip
	ldrh r2, [r2]
	adds r2, #0x20
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl sub_080098D4
	mov r0, sl
	ldr r1, [r0]
	ldr r2, _0803D6C8 @ =0x000003E2
	adds r0, r1, r2
	adds r2, r0, r4
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #7
	bls _0803D69E
	mov r3, r8
	strh r3, [r2]
	adds r1, r1, r7
	adds r1, r1, r5
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	movs r1, #1
	lsls r1, r5
	ldr r0, [r6, #4]
	bics r0, r1
	str r0, [r6, #4]
_0803D69E:
	movs r0, #4
	add sb, r0
	adds r5, #1
	ldr r1, _0803D6CC @ =0x030013C4
	ldr r0, [r1]
	movs r2, #0xca
	lsls r2, r2, #2
	adds r0, r0, r2
	ldrb r3, [r6]
	adds r0, r0, r3
	ldrb r0, [r0]
	cmp r5, r0
	blt _0803D5EA
_0803D6B8:
	ldr r0, [r6, #4]
	cmp r0, #0
	bne _0803D6D4
	movs r0, #2
	strb r0, [r6, #1]
	b _0803D6D4
	.align 2, 0
_0803D6C4: .4byte 0x08089FD0
_0803D6C8: .4byte 0x000003E2
_0803D6CC: .4byte 0x030013C4
_0803D6D0:
	bl sub_0803D44C
_0803D6D4:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0803D6E4
sub_0803D6E4: @ 0x0803D6E4
	push {r4, r5, r6, lr}
	bl sub_08007BD4
	adds r6, r0, #0
	movs r4, #0
	ldr r1, _0803D734 @ =0x030013C4
	ldr r0, [r1]
	movs r2, #0xca
	lsls r2, r2, #2
	adds r0, r0, r2
	ldrb r2, [r6]
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r4, r0
	bge _0803D72A
	adds r5, r1, #0
_0803D704:
	ldr r0, [r5]
	lsls r1, r4, #2
	movs r2, #0xcb
	lsls r2, r2, #2
	adds r0, r0, r2
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_080098B0
	adds r4, #1
	ldr r0, [r5]
	movs r1, #0xca
	lsls r1, r1, #2
	adds r0, r0, r1
	ldrb r2, [r6]
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r4, r0
	blt _0803D704
_0803D72A:
	bl sub_0803D44C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803D734: .4byte 0x030013C4

	thumb_func_start sub_0803D738
sub_0803D738: @ 0x0803D738
	push {lr}
	ldr r0, _0803D748 @ =0x030013C4

	thumb_func_start sub_0803D73C
sub_0803D73C: @ 0x0803D73C
	ldr r0, [r0]
	ldr r0, [r0, #0x58]

	thumb_func_start sub_0803D740
sub_0803D740: @ 0x0803D740
	bl sub_08009A00
	pop {r0}
	bx r0
	.align 2, 0
_0803D748: .4byte 0x030013C4

	thumb_func_start sub_0803D74C
sub_0803D74C: @ 0x0803D74C
	bx lr
	.align 2, 0

	thumb_func_start sub_0803D750
sub_0803D750: @ 0x0803D750
	push {r4, r5, lr}
	movs r0, #1
	movs r1, #0x80
	bl sub_080099E0
	adds r4, r0, #0
	movs r1, #1
	bl sub_08009A34
	adds r0, r4, #0
	movs r1, #0x58
	movs r2, #0x90
	bl sub_08009A70
	ldr r5, _0803D7C4 @ =0x030013C4
	ldr r0, [r5]
	ldr r1, [r0, #0x64]
	adds r0, r4, #0
	bl sub_08009A78
	adds r0, r4, #0
	movs r1, #2
	bl sub_08009AB4
	ldr r1, _0803D7C8 @ =0x080FE934
	ldr r0, _0803D7CC @ =0x03004400
	ldrb r0, [r0, #0x14]
	lsls r0, r0, #2
	adds r1, r0, r1
	ldr r1, [r1]
	ldr r2, _0803D7D0 @ =0x080FE930
	adds r0, r0, r2
	ldr r2, [r0]
	adds r0, r4, #0
	movs r3, #2
	bl sub_08009ACC
	adds r0, r4, #0
	movs r1, #0xff
	bl sub_08009B40
	ldr r0, [r5]
	str r4, [r0, #0x58]
	movs r1, #0x2a
	ldrsh r0, [r0, r1]
	ldr r1, _0803D7D4 @ =sub_0803D738
	bl sub_08007BA0
	ldr r0, [r5]
	movs r1, #0x2a
	ldrsh r0, [r0, r1]
	ldr r1, _0803D7D8 @ =sub_0803D74C
	bl sub_08007B84
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803D7C4: .4byte 0x030013C4
_0803D7C8: .4byte 0x080FE934
_0803D7CC: .4byte 0x03004400
_0803D7D0: .4byte 0x080FE930
_0803D7D4: .4byte sub_0803D738
_0803D7D8: .4byte sub_0803D74C

	thumb_func_start sub_0803D7DC
sub_0803D7DC: @ 0x0803D7DC
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
	movs r1, #0x1f
	movs r2, #0xe
	movs r3, #0
	bl sub_08004028
	bl sub_080057C0
	movs r0, #1
	bl sub_08005A88
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0803D814
sub_0803D814: @ 0x0803D814
	push {lr}
	bl sub_080058A4
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0803D820
sub_0803D820: @ 0x0803D820
	push {r4, r5, lr}
	movs r0, #0
	bl sub_080081A0
	ldr r4, _0803D860 @ =0x030013C8
	movs r0, #0xc
	bl sub_08007CE8
	adds r1, r0, #0
	str r1, [r4]
	movs r0, #0
	movs r2, #0xc
	bl sub_08007EFC
	ldr r1, [r4]
	ldr r0, _0803D864 @ =0x03004400
	ldrb r0, [r0, #9]
	strb r0, [r1, #8]
	bl sub_0803D7DC
	movs r0, #1
	bl sub_08002B98
	ldr r5, _0803D868 @ =0x08089FEC
_0803D850:
	ldr r0, _0803D860 @ =0x030013C8
	ldr r1, [r0]
	ldrh r0, [r1, #6]
	cmp r0, #0
	beq _0803D86C
	subs r0, #1
	strh r0, [r1, #6]
	b _0803D878
	.align 2, 0
_0803D860: .4byte 0x030013C8
_0803D864: .4byte 0x03004400
_0803D868: .4byte 0x08089FEC
_0803D86C:
	ldrb r0, [r1, #1]
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	bl call_via_r0
_0803D878:
	ldr r4, _0803D88C @ =0x030013C8
	ldr r0, [r4]
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803D890
	movs r0, #1
	bl sub_08002B98
	b _0803D850
	.align 2, 0
_0803D88C: .4byte 0x030013C8
_0803D890:
	bl sub_0803D814
	movs r0, #1
	bl sub_08002B98
	ldr r0, [r4]
	ldrb r0, [r0, #8]
	bl sub_08008790
	ldr r0, [r4]
	bl sub_08007CF8
	bl sub_08002B0C
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0803D8B4
sub_0803D8B4: @ 0x0803D8B4
	push {r4, lr}
	ldr r4, _0803D8CC @ =0x030013C8
	ldr r1, [r4]
	ldrb r0, [r1, #2]
	cmp r0, #1
	beq _0803D8F8
	cmp r0, #1
	bgt _0803D8D0
	cmp r0, #0
	beq _0803D8D6
	b _0803D95C
	.align 2, 0
_0803D8CC: .4byte 0x030013C8
_0803D8D0:
	cmp r0, #2
	beq _0803D958
	b _0803D95C
_0803D8D6:
	bl sub_08008174
	ldr r1, _0803D8F4 @ =0x030024E0
	ldrh r2, [r1]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r3, #0
	orrs r0, r2
	strh r0, [r1]
	adds r1, #0x4f
	movs r2, #1
	strb r2, [r1]
	ldr r0, [r4]
	strb r2, [r0, #2]
	b _0803D95C
	.align 2, 0
_0803D8F4: .4byte 0x030024E0
_0803D8F8:
	ldr r0, _0803D91C @ =0x004D0007
	bl sub_0800648C
	bl sub_080064F8
	lsls r0, r0, #0x18
	asrs r1, r0, #0x18
	cmp r1, #0
	beq _0803D944
	cmp r1, #0
	bgt _0803D924
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0803D8F8
	ldr r2, _0803D920 @ =0x030013C8
	b _0803D94C
	.align 2, 0
_0803D91C: .4byte 0x004D0007
_0803D920: .4byte 0x030013C8
_0803D924:
	cmp r1, #1
	beq _0803D938
	ldr r2, _0803D934 @ =0x030013C8
	cmp r1, #2
	bne _0803D94C
	ldr r1, [r2]
	movs r0, #0x24
	b _0803D94A
	.align 2, 0
_0803D934: .4byte 0x030013C8
_0803D938:
	ldr r2, _0803D940 @ =0x030013C8
	ldr r1, [r2]
	movs r0, #2
	b _0803D94A
	.align 2, 0
_0803D940: .4byte 0x030013C8
_0803D944:
	ldr r2, _0803D954 @ =0x030013C8
	ldr r1, [r2]
	movs r0, #3
_0803D94A:
	strb r0, [r1, #8]
_0803D94C:
	ldr r1, [r2]
	movs r0, #2
	strb r0, [r1, #2]
	b _0803D95C
	.align 2, 0
_0803D954: .4byte 0x030013C8
_0803D958:
	movs r0, #1
	strb r0, [r1]
_0803D95C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0803D964
sub_0803D964: @ 0x0803D964
	push {r4, r5, r6, lr}
	sub sp, #0xc
	ldr r0, _0803DB60 @ =0x08190EF8
	ldr r1, _0803DB64 @ =0x05000200
	bl sub_08008308
	ldr r0, _0803DB68 @ =0x081924C8
	add r1, sp, #4
	bl sub_08008380
	ldr r5, _0803DB6C @ =0x030013CC
	ldr r1, [r5]
	str r0, [r1, #0x2c]
	ldr r0, [sp, #4]
	str r0, [r1, #0x30]
	ldr r0, _0803DB70 @ =0x08197550
	ldr r1, _0803DB74 @ =0x05000220
	bl sub_08008308
	ldr r0, _0803DB78 @ =0x08197794
	add r1, sp, #4
	bl sub_08008380
	ldr r1, [r5]
	str r0, [r1, #0x34]
	ldr r0, [sp, #4]
	str r0, [r1, #0x38]
	ldr r1, _0803DB7C @ =0x080FE2DC
	ldr r4, _0803DB80 @ =0x03004400
	ldrb r0, [r4, #0x14]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _0803DB84 @ =0x05000240
	bl sub_08008308
	ldr r1, _0803DB88 @ =0x080FE2E0
	ldrb r0, [r4, #0x14]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	add r1, sp, #4
	bl sub_08008380
	ldr r1, [r5]
	str r0, [r1, #0x3c]
	ldr r0, [sp, #4]
	str r0, [r1, #0x40]
	ldr r4, _0803DB8C @ =0x06011600
	ldr r0, _0803DB90 @ =0x0811AC00
	ldr r1, _0803DB94 @ =0x05000260
	bl sub_08008308
	ldr r0, [r5]
	adds r0, #0xa0
	str r4, [r0]
	ldr r0, _0803DB98 @ =0x0811C72C
	adds r1, r4, #0
	bl sub_08008374
	adds r4, r0, r4
	ldr r0, _0803DB9C @ =0x0811C90C
	ldr r1, _0803DBA0 @ =0x050002E0
	bl sub_08008308
	ldr r0, [r5]
	adds r0, #0xa4
	str r4, [r0]
	ldr r0, _0803DBA4 @ =0x0811CE70
	adds r1, r4, #0
	bl sub_08008374
	adds r4, r4, r0
	ldr r0, _0803DBA8 @ =0x080FCBDC
	ldr r1, _0803DBAC @ =0x05000300
	bl sub_08008308
	ldr r0, [r5]
	adds r0, #0xa8
	str r4, [r0]
	ldr r0, _0803DBB0 @ =0x080FCC20
	adds r1, r4, #0
	bl sub_08008374
	adds r4, r4, r0
	ldr r0, _0803DBB4 @ =0x0809CA60
	ldr r1, _0803DBB8 @ =0x05000320
	bl sub_08008308
	ldr r0, [r5]
	adds r0, #0xac
	str r4, [r0]
	ldr r0, _0803DBBC @ =0x0809CAA4
	adds r1, r4, #0
	bl sub_08008374
	ldr r0, _0803DBC0 @ =0x0811768C
	movs r1, #0xa0
	lsls r1, r1, #0x13
	bl sub_08008308
	ldr r0, _0803DBC4 @ =0x08118410
	movs r1, #0xc0
	lsls r1, r1, #0x13
	bl sub_08008374
	ldr r0, _0803DBC8 @ =0x08117AB4
	ldr r1, _0803DBCC @ =0x0600F000
	movs r2, #0
	movs r3, #0
	bl sub_080083CC
	ldr r0, _0803DBD0 @ =0x08117EC4
	ldr r1, _0803DBD4 @ =0x0600E800
	movs r2, #0
	movs r3, #0
	bl sub_080083CC
	ldr r0, _0803DBD8 @ =0x081180B4
	ldr r1, _0803DBDC @ =0x0600E000
	movs r2, #0
	movs r3, #0
	bl sub_080083CC
	ldr r1, _0803DBE0 @ =0x030024E0
	ldr r0, _0803DBE4 @ =0x00001E03
	strh r0, [r1, #8]
	ldr r0, _0803DBE8 @ =0x00001D02
	strh r0, [r1, #6]
	ldr r0, _0803DBEC @ =0x00001C01
	strh r0, [r1, #4]
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
	movs r1, #0x1f
	movs r2, #7
	movs r3, #0
	bl sub_08004028
	bl sub_080057C0
	movs r0, #1
	bl sub_08005A88
	ldr r0, _0803DBF0 @ =sub_0803EBEC
	movs r1, #0x41
	movs r2, #0
	bl sub_08007968
	ldr r1, [r5]
	strh r0, [r1, #8]
	ldr r0, _0803DBF4 @ =sub_0803EF08
	movs r1, #0x42
	movs r2, #0
	bl sub_08007968
	ldr r1, [r5]
	strh r0, [r1, #0xa]
	ldr r0, _0803DBF8 @ =sub_0803F01C
	movs r1, #0x42
	movs r2, #0
	bl sub_08007968
	ldr r1, [r5]
	strh r0, [r1, #0xc]
	ldr r0, _0803DBFC @ =sub_0803F2BC
	movs r1, #0x42
	movs r2, #0
	bl sub_08007968
	ldr r1, [r5]
	strh r0, [r1, #0xe]
	ldr r0, _0803DC00 @ =sub_0803F3A4
	movs r1, #0x42
	movs r2, #0
	bl sub_08007968
	ldr r1, [r5]
	strh r0, [r1, #0x10]
	movs r4, #0
	ldr r6, _0803DC04 @ =0x0808A1A8
_0803DAE0:
	ldm r6!, {r0}
	movs r1, #0x42
	movs r2, #0
	bl sub_08007968
	ldr r5, _0803DB6C @ =0x030013CC
	ldr r1, [r5]
	lsls r2, r4, #1
	adds r1, #0x12
	adds r1, r1, r2
	strh r0, [r1]
	adds r4, #1
	cmp r4, #7
	ble _0803DAE0
	ldr r0, _0803DC08 @ =sub_0803FD0C
	movs r1, #0x42
	movs r2, #0
	bl sub_08007968
	ldr r1, [r5]
	movs r4, #0
	strh r0, [r1, #0x22]
	ldr r0, _0803DC0C @ =sub_0803FEC4
	movs r1, #0x42
	movs r2, #0
	bl sub_08007968
	ldr r1, [r5]
	strh r0, [r1, #0x26]
	ldr r0, _0803DC10 @ =sub_08040214
	movs r1, #0x42
	movs r2, #0
	bl sub_08007968
	ldr r1, [r5]
	strh r0, [r1, #0x24]
	ldr r0, _0803DC14 @ =sub_080403D0
	movs r1, #0x42
	movs r2, #0
	bl sub_08007968
	ldr r1, [r5]
	strh r0, [r1, #0x28]
	adds r1, #0xb7
	strb r4, [r1]
	movs r4, #0
	ldr r3, _0803DC18 @ =0x02034E25
	ldr r2, _0803DC1C @ =0x08089FF0
	adds r1, r5, #0
_0803DB42:
	ldrb r0, [r2, #4]
	ldrb r5, [r3]
	cmp r0, r5
	bne _0803DB50
	ldr r0, [r1]
	adds r0, #0xb7
	strb r4, [r0]
_0803DB50:
	adds r2, #0x10
	adds r4, #1
	cmp r4, #7
	ble _0803DB42
	add sp, #0xc
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803DB60: .4byte 0x08190EF8
_0803DB64: .4byte 0x05000200
_0803DB68: .4byte 0x081924C8
_0803DB6C: .4byte 0x030013CC
_0803DB70: .4byte 0x08197550
_0803DB74: .4byte 0x05000220
_0803DB78: .4byte 0x08197794
_0803DB7C: .4byte 0x080FE2DC
_0803DB80: .4byte 0x03004400
_0803DB84: .4byte 0x05000240
_0803DB88: .4byte 0x080FE2E0
_0803DB8C: .4byte 0x06011600
_0803DB90: .4byte 0x0811AC00
_0803DB94: .4byte 0x05000260
_0803DB98: .4byte 0x0811C72C
_0803DB9C: .4byte 0x0811C90C
_0803DBA0: .4byte 0x050002E0
_0803DBA4: .4byte 0x0811CE70
_0803DBA8: .4byte 0x080FCBDC
_0803DBAC: .4byte 0x05000300
_0803DBB0: .4byte 0x080FCC20
_0803DBB4: .4byte 0x0809CA60
_0803DBB8: .4byte 0x05000320
_0803DBBC: .4byte 0x0809CAA4
_0803DBC0: .4byte 0x0811768C
_0803DBC4: .4byte 0x08118410
_0803DBC8: .4byte 0x08117AB4
_0803DBCC: .4byte 0x0600F000
_0803DBD0: .4byte 0x08117EC4
_0803DBD4: .4byte 0x0600E800
_0803DBD8: .4byte 0x081180B4
_0803DBDC: .4byte 0x0600E000
_0803DBE0: .4byte 0x030024E0
_0803DBE4: .4byte 0x00001E03
_0803DBE8: .4byte 0x00001D02
_0803DBEC: .4byte 0x00001C01
_0803DBF0: .4byte sub_0803EBEC
_0803DBF4: .4byte sub_0803EF08
_0803DBF8: .4byte sub_0803F01C
_0803DBFC: .4byte sub_0803F2BC
_0803DC00: .4byte sub_0803F3A4
_0803DC04: .4byte 0x0808A1A8
_0803DC08: .4byte sub_0803FD0C
_0803DC0C: .4byte sub_0803FEC4
_0803DC10: .4byte sub_08040214
_0803DC14: .4byte sub_080403D0
_0803DC18: .4byte 0x02034E25
_0803DC1C: .4byte 0x08089FF0

	thumb_func_start sub_0803DC20
sub_0803DC20: @ 0x0803DC20
	push {r4, r5, lr}
	bl sub_080058A4
	ldr r4, _0803DCA4 @ =0x030013CC
	ldr r0, [r4]
	movs r1, #8
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
	ldr r0, [r4]
	movs r1, #0xe
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	ldr r0, [r4]
	movs r1, #0x10
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	movs r5, #0
_0803DC5C:
	ldr r0, [r4]
	lsls r1, r5, #1
	adds r0, #0x12
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	adds r5, #1
	cmp r5, #7
	ble _0803DC5C
	ldr r4, _0803DCA4 @ =0x030013CC
	ldr r0, [r4]
	movs r1, #0x22
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	ldr r0, [r4]
	movs r1, #0x26
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	ldr r0, [r4]
	movs r1, #0x24
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	ldr r0, [r4]
	movs r1, #0x28
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803DCA4: .4byte 0x030013CC

	thumb_func_start sub_0803DCA8
sub_0803DCA8: @ 0x0803DCA8
	push {r4, r5, lr}
	ldr r0, _0803DD10 @ =0x02034BF0
	ldrb r0, [r0, #5]
	lsls r0, r0, #0x1c
	cmp r0, #0
	bge _0803DCBE
	movs r0, #0x21
	bl sub_08008790
	bl sub_08002B0C
_0803DCBE:
	movs r0, #0
	bl sub_080081A0
	ldr r4, _0803DD14 @ =0x030013CC
	movs r0, #0xb8
	bl sub_08007CE8
	adds r1, r0, #0
	str r1, [r4]
	movs r0, #0
	movs r2, #0xb8
	bl sub_08007EFC
	ldr r0, [r4]
	ldr r1, _0803DD18 @ =0x03004400
	ldrb r1, [r1, #9]
	adds r0, #0xb4
	strb r1, [r0]
	bl sub_08008174
	bl sub_0803D964
	movs r0, #1
	bl sub_08002B98
	ldr r0, [r4]
	ldrb r0, [r0, #2]
	cmp r0, #0
	bne _0803DD32
	ldr r5, _0803DD1C @ =0x0808A0E0
_0803DCFA:
	ldr r1, [r4]
	ldrh r0, [r1, #6]
	cmp r0, #0
	bne _0803DD20
	ldrb r0, [r1]
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	bl call_via_r0
	b _0803DD24
	.align 2, 0
_0803DD10: .4byte 0x02034BF0
_0803DD14: .4byte 0x030013CC
_0803DD18: .4byte 0x03004400
_0803DD1C: .4byte 0x0808A0E0
_0803DD20:
	subs r0, #1
	strh r0, [r1, #6]
_0803DD24:
	movs r0, #1
	bl sub_08002B98
	ldr r0, [r4]
	ldrb r0, [r0, #2]
	cmp r0, #0
	beq _0803DCFA
_0803DD32:
	ldr r0, _0803DD60 @ =0x030013CC
	ldr r0, [r0]
	adds r0, #0xb4
	ldrb r0, [r0]
	bl sub_08008790
	bl m4aMPlayAllStop
	bl sub_0803DC20
	movs r0, #1
	bl sub_08002B98
	ldr r0, _0803DD64 @ =0x02034BF0
	ldr r1, _0803DD68 @ =0x00000236
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #3
	bne _0803DD6C
	movs r0, #0x2d
	bl sub_0802D7CC
	b _0803DD72
	.align 2, 0
_0803DD60: .4byte 0x030013CC
_0803DD64: .4byte 0x02034BF0
_0803DD68: .4byte 0x00000236
_0803DD6C:
	movs r0, #0xb
	bl sub_0802D7CC
_0803DD72:
	ldr r4, _0803DD9C @ =0x030013CC
	ldr r0, [r4]
	ldr r0, [r0, #0x2c]
	bl sub_08007CF8
	ldr r0, [r4]
	ldr r0, [r0, #0x34]
	bl sub_08007CF8
	ldr r0, [r4]
	ldr r0, [r0, #0x3c]
	bl sub_08007CF8
	ldr r0, [r4]
	bl sub_08007CF8
	bl sub_08002B0C
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803DD9C: .4byte 0x030013CC

	thumb_func_start sub_0803DDA0
sub_0803DDA0: @ 0x0803DDA0
	ldr r1, _0803DDB4 @ =0x030013CC
	ldr r3, [r1]
	movs r2, #0
	strb r0, [r3]
	ldr r0, [r1]
	strb r2, [r0, #1]
	ldr r0, [r1]
	strh r2, [r0, #4]
	strh r2, [r0, #6]
	bx lr
	.align 2, 0
_0803DDB4: .4byte 0x030013CC

	thumb_func_start sub_0803DDB8
sub_0803DDB8: @ 0x0803DDB8
	push {lr}
	ldr r0, _0803DDD0 @ =0x030013CC
	ldr r2, [r0]
	ldrb r1, [r2, #1]
	cmp r1, #1
	beq _0803DDE0
	cmp r1, #1
	bgt _0803DDD4
	cmp r1, #0
	beq _0803DDDA
	b _0803DE6A
	.align 2, 0
_0803DDD0: .4byte 0x030013CC
_0803DDD4:
	cmp r1, #2
	beq _0803DE1C
	b _0803DE6A
_0803DDDA:
	movs r0, #1
	strb r0, [r2, #1]
	b _0803DE6A
_0803DDE0:
	ldr r0, _0803DDFC @ =0x030024E0
	adds r0, #0x4f
	strb r1, [r0]
	movs r0, #0x55
	bl m4aSongNumStart
	movs r0, #0x20
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl sub_08008AF4
	b _0803DE06
	.align 2, 0
_0803DDFC: .4byte 0x030024E0
_0803DE00:
	movs r0, #1
	bl sub_08002B98
_0803DE06:
	bl sub_08008BBC
	cmp r0, #0
	beq _0803DE00
	ldr r0, _0803DE18 @ =0x030013CC
	ldr r1, [r0]
	movs r0, #2
	strb r0, [r1, #1]
	b _0803DE6A
	.align 2, 0
_0803DE18: .4byte 0x030013CC
_0803DE1C:
	ldr r0, _0803DE34 @ =0x02034BF0
	ldr r1, _0803DE38 @ =0x00000236
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #1
	beq _0803DE4E
	cmp r0, #1
	bgt _0803DE3C
	cmp r0, #0
	beq _0803DE46
	b _0803DE64
	.align 2, 0
_0803DE34: .4byte 0x02034BF0
_0803DE38: .4byte 0x00000236
_0803DE3C:
	cmp r0, #2
	beq _0803DE56
	cmp r0, #3
	beq _0803DE5E
	b _0803DE64
_0803DE46:
	movs r0, #2
	bl sub_0803DDA0
	b _0803DE64
_0803DE4E:
	movs r0, #3
	bl sub_0803DDA0
	b _0803DE64
_0803DE56:
	movs r0, #4
	bl sub_0803DDA0
	b _0803DE64
_0803DE5E:
	movs r0, #5
	bl sub_0803DDA0
_0803DE64:
	ldr r0, _0803DE70 @ =0x00000303
	bl m4aSongNumStart
_0803DE6A:
	pop {r0}
	bx r0
	.align 2, 0
_0803DE70: .4byte 0x00000303

	thumb_func_start sub_0803DE74
sub_0803DE74: @ 0x0803DE74
	push {lr}
	ldr r0, _0803DE88 @ =0x030013CC
	ldr r0, [r0]
	ldrb r1, [r0, #1]
	cmp r1, #0
	beq _0803DE8C
	cmp r1, #1
	beq _0803DEC4
	b _0803DEC6
	.align 2, 0
_0803DE88: .4byte 0x030013CC
_0803DE8C:
	ldr r0, _0803DEA4 @ =0x030056F0
	movs r1, #3
	bl m4aMPlayFadeOut
	movs r0, #0x30
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl sub_080089E8
	b _0803DEAE
	.align 2, 0
_0803DEA4: .4byte 0x030056F0
_0803DEA8:
	movs r0, #1
	bl sub_08002B98
_0803DEAE:
	bl sub_08008BBC
	cmp r0, #0
	beq _0803DEA8
	ldr r0, _0803DEC0 @ =0x030013CC
	ldr r1, [r0]
	movs r0, #1
	strb r0, [r1, #1]
	b _0803DEC6
	.align 2, 0
_0803DEC0: .4byte 0x030013CC
_0803DEC4:
	strb r1, [r0, #2]
_0803DEC6:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0803DECC
sub_0803DECC: @ 0x0803DECC
	push {r4, r5, lr}
	ldr r1, _0803DEE8 @ =0x030013CC
	ldr r0, [r1]
	ldrb r0, [r0, #1]
	adds r5, r1, #0
	cmp r0, #5
	bls _0803DEDC
	b _0803E096
_0803DEDC:
	lsls r0, r0, #2
	ldr r1, _0803DEEC @ =_0803DEF0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0803DEE8: .4byte 0x030013CC
_0803DEEC: .4byte _0803DEF0
_0803DEF0: @ jump table
	.4byte _0803DF08 @ case 0
	.4byte _0803DF1C @ case 1
	.4byte _0803DF3C @ case 2
	.4byte _0803DFB0 @ case 3
	.4byte _0803DFC6 @ case 4
	.4byte _0803E088 @ case 5
_0803DF08:
	bl sub_0803EB34
	ldr r0, _0803DF18 @ =0x030013CC
	ldr r1, [r0]
	movs r0, #1
	strb r0, [r1, #1]
	b _0803E096
	.align 2, 0
_0803DF18: .4byte 0x030013CC
_0803DF1C:
	ldr r0, [r5]
	adds r0, #0x44
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	lsrs r4, r0, #0x1f
	cmp r4, #0
	beq _0803DF2C
	b _0803E096
_0803DF2C:
	bl sub_0803FCD4
	ldr r0, [r5]
	movs r1, #2
	strb r1, [r0, #1]
	ldr r0, [r5]
	strh r4, [r0, #4]
	b _0803E096
_0803DF3C:
	ldr r1, [r5]
	ldrh r0, [r1, #4]
	adds r0, #1
	strh r0, [r1, #4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x20
	bne _0803DF52
	ldr r0, _0803DFA4 @ =0x000003EE
	bl m4aSongNumStart
_0803DF52:
	ldr r0, [r5]
	adds r0, #0x45
	ldrb r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r4, r0, #0x1f
	cmp r4, #0
	beq _0803DF62
	b _0803E096
_0803DF62:
	ldr r0, _0803DFA8 @ =0x000003E9
	bl m4aSongNumStart
	ldr r0, [r5]
	strh r4, [r0, #4]
	bl sub_0803FCE4
	bl sub_0803EBCC
	movs r5, #0
_0803DF76:
	lsls r4, r5, #0x18
	lsrs r4, r4, #0x18
	movs r0, #5
	bl sub_0800B828
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x18
	adds r0, r4, #0
	bl sub_0803F58C
	adds r5, #1
	cmp r5, #7
	ble _0803DF76
	ldr r0, _0803DFAC @ =0x030013CC
	ldr r1, [r0]
	movs r0, #3
	strb r0, [r1, #1]
	b _0803E096
	.align 2, 0
_0803DFA4: .4byte 0x000003EE
_0803DFA8: .4byte 0x000003E9
_0803DFAC: .4byte 0x030013CC
_0803DFB0:
	ldr r1, [r5]
	adds r0, r1, #0
	adds r0, #0x44
	ldrh r0, [r0]
	lsls r0, r0, #0x13
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _0803E096
	movs r0, #4
	strb r0, [r1, #1]
	b _0803E096
_0803DFC6:
	ldr r0, _0803E00C @ =0x03004400
	ldrb r1, [r0, #0xe]
	movs r0, #8
	bl sub_08005BE0
	ldr r0, _0803E010 @ =0x08087BB0
	ldrh r1, [r0]
	subs r1, #1
	movs r0, #0
	bl sub_08005C10
	bl sub_08005934
	ldr r0, _0803E014 @ =0x0808A958
	ldr r4, _0803E018 @ =0x030013CC
	ldr r1, [r4]
	adds r1, #0x88
	ldr r1, [r1]
	movs r2, #0
	bl sub_080004D4
	bl sub_080064F8
	lsls r0, r0, #0x18
	asrs r1, r0, #0x18
	cmp r1, #0
	beq _0803E022
	cmp r1, #0
	bgt _0803E01C
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0803E038
	b _0803E06E
	.align 2, 0
_0803E00C: .4byte 0x03004400
_0803E010: .4byte 0x08087BB0
_0803E014: .4byte 0x0808A958
_0803E018: .4byte 0x030013CC
_0803E01C:
	cmp r1, #1
	beq _0803E038
	b _0803E06E
_0803E022:
	ldr r0, _0803E034 @ =0x0808A978
	ldr r1, [r4]
	adds r1, #0x88
	ldr r1, [r1]
	movs r2, #0
	bl sub_080004D4
	b _0803E06E
	.align 2, 0
_0803E034: .4byte 0x0808A978
_0803E038:
	ldr r4, _0803E07C @ =0x030013CC
	ldr r0, [r4]
	adds r0, #0x88
	ldr r0, [r0]
	movs r1, #0
	bl sub_08009B40
	ldr r0, _0803E080 @ =0x0808A994
	ldr r1, [r4]
	adds r1, #0x88
	ldr r1, [r1]
	movs r2, #0
	bl sub_080004D4
	ldr r0, [r4]
	adds r0, #0x88
	ldr r0, [r0]
	movs r1, #0xff
	bl sub_08009B40
	ldr r0, _0803E084 @ =0x0808A99C
	ldr r1, [r4]
	adds r1, #0x88
	ldr r1, [r1]
	movs r2, #0
	bl sub_080004D4
_0803E06E:
	bl sub_08005A2C
	ldr r0, _0803E07C @ =0x030013CC
	ldr r1, [r0]
	movs r0, #5
	strb r0, [r1, #1]
	b _0803E096
	.align 2, 0
_0803E07C: .4byte 0x030013CC
_0803E080: .4byte 0x0808A994
_0803E084: .4byte 0x0808A99C
_0803E088:
	ldr r0, [r5]
	adds r0, #0xb4
	movs r1, #3
	strb r1, [r0]
	movs r0, #1
	bl sub_0803DDA0
_0803E096:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_0803E09C
sub_0803E09C: @ 0x0803E09C
	push {r4, r5, r6, lr}
	ldr r1, _0803E0B8 @ =0x030013CC
	ldr r0, [r1]
	ldrb r0, [r0, #1]
	adds r4, r1, #0
	cmp r0, #9
	bls _0803E0AC
	b _0803E33A
_0803E0AC:
	lsls r0, r0, #2
	ldr r1, _0803E0BC @ =_0803E0C0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0803E0B8: .4byte 0x030013CC
_0803E0BC: .4byte _0803E0C0
_0803E0C0: @ jump table
	.4byte _0803E0E8 @ case 0
	.4byte _0803E0FC @ case 1
	.4byte _0803E112 @ case 2
	.4byte _0803E18C @ case 3
	.4byte _0803E1AC @ case 4
	.4byte _0803E1E0 @ case 5
	.4byte _0803E208 @ case 6
	.4byte _0803E222 @ case 7
	.4byte _0803E264 @ case 8
	.4byte _0803E30C @ case 9
_0803E0E8:
	bl sub_0803EB34
	ldr r0, _0803E0F8 @ =0x030013CC
	ldr r1, [r0]
	movs r0, #1
	strb r0, [r1, #1]
	b _0803E33A
	.align 2, 0
_0803E0F8: .4byte 0x030013CC
_0803E0FC:
	ldr r1, [r4]
	adds r0, r1, #0
	adds r0, #0x44
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _0803E10C
	b _0803E33A
_0803E10C:
	movs r0, #2
	strb r0, [r1, #1]
	b _0803E33A
_0803E112:
	ldr r6, _0803E180 @ =0x02034E14
	adds r0, r6, #0
	movs r1, #0
	movs r2, #0x32
	bl sub_0800B8A4
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	movs r0, #0
	bl sub_08005C10
	bl sub_08005934
	ldr r5, _0803E184 @ =0x030013CC
	ldr r0, [r5]
	adds r0, #0x88
	ldr r0, [r0]
	movs r1, #0xff
	bl sub_08009B40
	ldr r4, _0803E188 @ =0x0808A080
	ldrb r0, [r6, #0x11]
	lsls r0, r0, #3
	adds r0, r0, r4
	ldr r0, [r0]
	ldr r1, [r5]
	adds r1, #0x88
	ldr r1, [r1]
	movs r2, #0
	bl sub_080004D4
	ldr r0, [r5]
	adds r0, #0x88
	ldr r0, [r0]
	movs r1, #0
	bl sub_08009B40
	ldrb r0, [r6, #0x11]
	lsls r0, r0, #3
	adds r4, #4
	adds r0, r0, r4
	ldr r0, [r0]
	ldr r1, [r5]
	adds r1, #0x88
	ldr r1, [r1]
	movs r2, #0
	bl sub_080004D4
	bl sub_08005A2C
	ldr r1, [r5]
	movs r0, #3
	strb r0, [r1, #1]
	b _0803E33A
	.align 2, 0
_0803E180: .4byte 0x02034E14
_0803E184: .4byte 0x030013CC
_0803E188: .4byte 0x0808A080
_0803E18C:
	ldr r1, _0803E1A8 @ =0x030024E0
	adds r5, r1, #0
	adds r5, #0x4a
	movs r2, #0
	movs r3, #0
	movs r0, #0x9e
	strh r0, [r5]
	adds r1, #0x4e
	strb r2, [r1]
	ldr r1, [r4]
	strh r3, [r1, #4]
	movs r0, #4
	strb r0, [r1, #1]
	b _0803E33A
	.align 2, 0
_0803E1A8: .4byte 0x030024E0
_0803E1AC:
	ldr r2, _0803E1DC @ =0x030024E0
	ldr r1, [r4]
	ldrh r0, [r1, #4]
	adds r0, #1
	strh r0, [r1, #4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	movs r1, #0x1f
	ands r0, r1
	adds r2, #0x4e
	strb r0, [r2]
	ldr r1, [r4]
	ldrh r0, [r1, #4]
	cmp r0, #3
	bhi _0803E1CC
	b _0803E33A
_0803E1CC:
	movs r0, #0
	strh r0, [r1, #4]
	movs r0, #6
	strh r0, [r1, #6]
	movs r0, #5
	strb r0, [r1, #1]
	b _0803E33A
	.align 2, 0
_0803E1DC: .4byte 0x030024E0
_0803E1E0:
	ldr r1, _0803E204 @ =0x030024E0
	adds r2, r1, #0
	adds r2, #0x4a
	movs r0, #0xce
	strh r0, [r2]
	adds r1, #0x4e
	movs r0, #8
	strb r0, [r1]
	ldr r0, [r4]
	adds r0, #0xb7
	ldrb r0, [r0]
	bl sub_0803F550
	ldr r1, [r4]
	movs r0, #6
	strb r0, [r1, #1]
	b _0803E33A
	.align 2, 0
_0803E204: .4byte 0x030024E0
_0803E208:
	ldr r1, [r4]
	adds r0, r1, #0
	adds r0, #0x44
	ldrh r0, [r0]
	lsls r0, r0, #0x13
	lsrs r0, r0, #0x18
	cmp r0, #0
	beq _0803E21A
	b _0803E33A
_0803E21A:
	strh r0, [r1, #4]
	movs r0, #7
	strb r0, [r1, #1]
	b _0803E33A
_0803E222:
	ldr r3, _0803E260 @ =0x030024E0
	ldr r1, [r4]
	ldrh r0, [r1, #4]
	adds r0, #1
	movs r2, #0
	strh r0, [r1, #4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xd
	rsbs r0, r0, #0
	cmp r0, #0
	bge _0803E23A
	adds r0, #7
_0803E23A:
	asrs r0, r0, #3
	adds r0, #8
	movs r1, #0x1f
	ands r0, r1
	adds r1, r3, #0
	adds r1, #0x4e
	strb r0, [r1]
	ldr r1, [r4]
	ldrh r0, [r1, #4]
	cmp r0, #7
	bls _0803E33A
	strh r2, [r1, #4]
	movs r0, #8
	strb r0, [r1, #1]
	adds r0, r3, #0
	adds r0, #0x4a
	strh r2, [r0]
	b _0803E33A
	.align 2, 0
_0803E260: .4byte 0x030024E0
_0803E264:
	ldr r1, _0803E290 @ =0x02034BF0
	ldr r0, _0803E294 @ =0x00000235
	adds r4, r1, r0
	ldrb r0, [r4]
	cmp r0, #7
	bne _0803E298
	movs r2, #0x89
	lsls r2, r2, #2
	adds r0, r1, r2
	movs r1, #0
	movs r2, #0x32
	bl sub_0800B8A4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x31
	subs r1, r1, r0
	movs r0, #0
	bl sub_08005C10
	b _0803E2BE
	.align 2, 0
_0803E290: .4byte 0x02034BF0
_0803E294: .4byte 0x00000235
_0803E298:
	movs r2, #0x89
	lsls r2, r2, #2
	adds r0, r1, r2
	movs r1, #0
	movs r2, #0x32
	bl sub_0800B8A4
	ldr r2, _0803E2F8 @ =0x08087BB0
	ldrb r1, [r4]
	adds r1, #1
	lsls r1, r1, #2
	adds r1, r1, r2
	ldrh r1, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	subs r1, r1, r0
	movs r0, #0
	bl sub_08005C10
_0803E2BE:
	bl sub_08005934
	ldr r4, _0803E2FC @ =0x030013CC
	ldr r0, [r4]
	adds r0, #0x88
	ldr r0, [r0]
	movs r1, #0xff
	bl sub_08009B40
	ldr r1, _0803E300 @ =0x0808A0C0
	ldr r0, _0803E304 @ =0x02034BF0
	ldr r2, _0803E308 @ =0x00000235
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, [r4]
	adds r1, #0x88
	ldr r1, [r1]
	movs r2, #0
	bl sub_080004D4
	bl sub_08005A2C
	ldr r1, [r4]
	movs r0, #9
	strb r0, [r1, #1]
	b _0803E33A
	.align 2, 0
_0803E2F8: .4byte 0x08087BB0
_0803E2FC: .4byte 0x030013CC
_0803E300: .4byte 0x0808A0C0
_0803E304: .4byte 0x02034BF0
_0803E308: .4byte 0x00000235
_0803E30C:
	ldr r2, _0803E340 @ =0x02034BF0
	movs r0, #0x8d
	lsls r0, r0, #2
	adds r2, r2, r0
	ldr r1, _0803E344 @ =0x08089FF0
	ldr r0, [r4]
	adds r0, #0xb7
	ldrb r0, [r0]
	lsls r0, r0, #4
	adds r0, r0, r1
	movs r1, #1
	ldrb r0, [r0, #4]
	lsls r1, r0
	ldrb r0, [r2]
	orrs r1, r0
	strb r1, [r2]
	ldr r0, [r4]
	adds r0, #0xb4
	movs r1, #3
	strb r1, [r0]
	movs r0, #1
	bl sub_0803DDA0
_0803E33A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803E340: .4byte 0x02034BF0
_0803E344: .4byte 0x08089FF0

	thumb_func_start sub_0803E348
sub_0803E348: @ 0x0803E348
	push {r4, r5, lr}
	ldr r1, _0803E364 @ =0x030013CC
	ldr r0, [r1]
	ldrb r0, [r0, #1]
	adds r4, r1, #0
	cmp r0, #0xa
	bls _0803E358
	b _0803E57E
_0803E358:
	lsls r0, r0, #2
	ldr r1, _0803E368 @ =_0803E36C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0803E364: .4byte 0x030013CC
_0803E368: .4byte _0803E36C
_0803E36C: @ jump table
	.4byte _0803E398 @ case 0
	.4byte _0803E3AC @ case 1
	.4byte _0803E40C @ case 2
	.4byte _0803E43C @ case 3
	.4byte _0803E470 @ case 4
	.4byte _0803E490 @ case 5
	.4byte _0803E4B2 @ case 6
	.4byte _0803E4F4 @ case 7
	.4byte _0803E50C @ case 8
	.4byte _0803E54C @ case 9
	.4byte _0803E570 @ case 10
_0803E398:
	bl sub_0803EB34
	ldr r0, _0803E3A8 @ =0x030013CC
	ldr r1, [r0]
	movs r0, #1
	strb r0, [r1, #1]
	b _0803E57E
	.align 2, 0
_0803E3A8: .4byte 0x030013CC
_0803E3AC:
	ldr r0, [r4]
	adds r0, #0x44
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _0803E3BA
	b _0803E57E
_0803E3BA:
	bl sub_08005934
	ldr r0, [r4]
	adds r0, #0x88
	ldr r0, [r0]
	movs r1, #0xff
	bl sub_08009B40
	ldr r0, _0803E404 @ =0x0808AB84
	ldr r1, [r4]
	adds r1, #0x88
	ldr r1, [r1]
	movs r2, #0
	bl sub_080004D4
	ldr r0, [r4]
	adds r0, #0x88
	ldr r0, [r0]
	movs r1, #0
	bl sub_08009B40
	ldr r0, _0803E408 @ =0x0808AB94
	ldr r1, [r4]
	adds r1, #0x88
	ldr r1, [r1]
	movs r2, #0
	bl sub_080004D4
	bl sub_08005A2C
	bl sub_0803EB54
	ldr r1, [r4]
	movs r0, #2
	strb r0, [r1, #1]
	b _0803E57E
	.align 2, 0
_0803E404: .4byte 0x0808AB84
_0803E408: .4byte 0x0808AB94
_0803E40C:
	ldr r0, [r4]
	adds r0, #0x44
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	lsrs r3, r0, #0x1f
	cmp r3, #0
	beq _0803E41C
	b _0803E57E
_0803E41C:
	ldr r1, _0803E438 @ =0x030024E0
	adds r5, r1, #0
	adds r5, #0x4a
	movs r2, #0
	movs r0, #0x9e
	strh r0, [r5]
	adds r1, #0x4e
	strb r2, [r1]
	ldr r1, [r4]
	strh r3, [r1, #4]
	movs r0, #3
	strb r0, [r1, #1]
	b _0803E57E
	.align 2, 0
_0803E438: .4byte 0x030024E0
_0803E43C:
	ldr r2, _0803E46C @ =0x030024E0
	ldr r1, [r4]
	ldrh r0, [r1, #4]
	adds r0, #1
	strh r0, [r1, #4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	movs r1, #0x1f
	ands r0, r1
	adds r2, #0x4e
	strb r0, [r2]
	ldr r1, [r4]
	ldrh r0, [r1, #4]
	cmp r0, #3
	bhi _0803E45C
	b _0803E57E
_0803E45C:
	movs r0, #0
	strh r0, [r1, #4]
	movs r0, #6
	strh r0, [r1, #6]
	movs r0, #4
	strb r0, [r1, #1]
	b _0803E57E
	.align 2, 0
_0803E46C: .4byte 0x030024E0
_0803E470:
	ldr r0, _0803E488 @ =0x030024E0
	adds r0, #0x4a
	movs r1, #0
	strh r1, [r0]
	bl sub_0803EFFC
	ldr r0, _0803E48C @ =0x030013CC
	ldr r1, [r0]
	movs r0, #5
	strb r0, [r1, #1]
	b _0803E57E
	.align 2, 0
_0803E488: .4byte 0x030024E0
_0803E48C: .4byte 0x030013CC
_0803E490:
	ldr r0, [r4]
	adds r0, #0x44
	ldrb r0, [r0]
	lsls r0, r0, #0x1d
	lsrs r5, r0, #0x1f
	cmp r5, #0
	bne _0803E57E
	bl sub_0803EBA4
	ldr r1, [r4]
	movs r0, #0x3c
	strh r0, [r1, #6]
	movs r0, #6
	strb r0, [r1, #1]
	ldr r0, [r4]
	strh r5, [r0, #4]
	b _0803E57E
_0803E4B2:
	ldr r3, _0803E4F0 @ =0x030024E0
	ldr r1, [r4]
	ldrh r0, [r1, #4]
	adds r0, #1
	movs r2, #0
	strh r0, [r1, #4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xd
	rsbs r0, r0, #0
	cmp r0, #0
	bge _0803E4CA
	adds r0, #7
_0803E4CA:
	asrs r0, r0, #3
	adds r0, #8
	movs r1, #0x1f
	ands r0, r1
	adds r1, r3, #0
	adds r1, #0x4e
	strb r0, [r1]
	ldr r1, [r4]
	ldrh r0, [r1, #4]
	cmp r0, #7
	bls _0803E57E
	adds r0, r3, #0
	adds r0, #0x4a
	strh r2, [r0]
	strh r2, [r1, #4]
	movs r0, #7
	strb r0, [r1, #1]
	b _0803E57E
	.align 2, 0
_0803E4F0: .4byte 0x030024E0
_0803E4F4:
	ldr r0, [r4]
	adds r0, #0x44
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _0803E57E
	bl sub_0803EB34
	ldr r1, [r4]
	movs r0, #8
	strb r0, [r1, #1]
	b _0803E57E
_0803E50C:
	ldr r0, [r4]
	adds r0, #0x44
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _0803E57E
	bl sub_08005934
	ldr r0, [r4]
	adds r0, #0x88
	ldr r0, [r0]
	movs r1, #0xff
	bl sub_08009B40
	ldr r0, _0803E548 @ =0x0808AB9C
	ldr r1, [r4]
	adds r1, #0x88
	ldr r1, [r1]
	movs r2, #0
	bl sub_080004D4
	bl sub_08005A2C
	bl sub_0803EB54
	ldr r1, [r4]
	movs r0, #9
	strb r0, [r1, #1]
	b _0803E57E
	.align 2, 0
_0803E548: .4byte 0x0808AB9C
_0803E54C:
	ldr r0, [r4]
	adds r0, #0x44
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _0803E57E
	ldr r0, _0803E56C @ =0x00000303
	bl m4aSongNumStart
	ldr r1, [r4]
	movs r0, #0x3c
	strh r0, [r1, #6]
	movs r0, #0xa
	strb r0, [r1, #1]
	b _0803E57E
	.align 2, 0
_0803E56C: .4byte 0x00000303
_0803E570:
	ldr r0, [r4]
	adds r0, #0xb4
	movs r1, #3
	strb r1, [r0]
	movs r0, #1
	bl sub_0803DDA0
_0803E57E:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_0803E584
sub_0803E584: @ 0x0803E584
	push {r4, r5, r6, r7, lr}
	movs r4, #0
	ldr r1, _0803E5A0 @ =0x030013CC
	ldr r0, [r1]
	ldrb r0, [r0, #1]
	adds r5, r1, #0
	cmp r0, #9
	bls _0803E596
	b _0803EAD2
_0803E596:
	lsls r0, r0, #2
	ldr r1, _0803E5A4 @ =_0803E5A8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0803E5A0: .4byte 0x030013CC
_0803E5A4: .4byte _0803E5A8
_0803E5A8: @ jump table
	.4byte _0803E5D0 @ case 0
	.4byte _0803E5E4 @ case 1
	.4byte _0803E5FA @ case 2
	.4byte _0803E748 @ case 3
	.4byte _0803E968 @ case 4
	.4byte _0803E970 @ case 5
	.4byte _0803E9D6 @ case 6
	.4byte _0803EA78 @ case 7
	.4byte _0803EA94 @ case 8
	.4byte _0803EACC @ case 9
_0803E5D0:
	bl sub_0803EB34
	ldr r0, _0803E5E0 @ =0x030013CC
	ldr r1, [r0]
	movs r0, #1
	strb r0, [r1, #1]
	b _0803EAD2
	.align 2, 0
_0803E5E0: .4byte 0x030013CC
_0803E5E4:
	ldr r1, [r5]
	adds r0, r1, #0
	adds r0, #0x44
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _0803E5F4
	b _0803EAD2
_0803E5F4:
	movs r0, #2
	strb r0, [r1, #1]
	b _0803EAD2
_0803E5FA:
	bl sub_08005934
	ldr r1, _0803E638 @ =0x02034BF0
	movs r2, #0x8d
	lsls r2, r2, #2
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803E64C
	subs r2, #0x10
	adds r0, r1, r2
	movs r1, #0
	movs r2, #0x32
	bl sub_0800B8A4
	ldr r1, _0803E63C @ =0x08087BB0
	ldrh r1, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	subs r4, r1, r0
	cmp r4, #0
	bge _0803E628
	movs r4, #0
_0803E628:
	movs r0, #0
	adds r1, r4, #0
	bl sub_08005C10
	cmp r4, #1
	bgt _0803E644
	ldr r0, _0803E640 @ =0x0808AB1C
	b _0803E700
	.align 2, 0
_0803E638: .4byte 0x02034BF0
_0803E63C: .4byte 0x08087BB0
_0803E640: .4byte 0x0808AB1C
_0803E644:
	ldr r0, _0803E648 @ =0x0808ABAC
	b _0803E700
	.align 2, 0
_0803E648: .4byte 0x0808ABAC
_0803E64C:
	cmp r0, #0xff
	bne _0803E6BC
	ldr r2, _0803E674 @ =0x00000237
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803E684
	subs r2, #0x13
	adds r0, r1, r2
	movs r1, #0
	movs r2, #0x32
	bl sub_0800B8A4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x32
	bne _0803E67C
	ldr r0, _0803E678 @ =0x0808AB5C
	b _0803E700
	.align 2, 0
_0803E674: .4byte 0x00000237
_0803E678: .4byte 0x0808AB5C
_0803E67C:
	ldr r0, _0803E680 @ =0x0808AB50
	b _0803E700
	.align 2, 0
_0803E680: .4byte 0x0808AB50
_0803E684:
	movs r2, #0x89
	lsls r2, r2, #2
	adds r0, r1, r2
	movs r1, #0
	movs r2, #0x32
	bl sub_0800B8A4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x31
	subs r4, r1, r0
	cmp r4, #0
	bge _0803E6A0
	movs r4, #0
_0803E6A0:
	movs r0, #0
	adds r1, r4, #0
	bl sub_08005C10
	cmp r4, #1
	bgt _0803E6B4
	ldr r0, _0803E6B0 @ =0x0808AB40
	b _0803E700
	.align 2, 0
_0803E6B0: .4byte 0x0808AB40
_0803E6B4:
	ldr r0, _0803E6B8 @ =0x0808ABD0
	b _0803E700
	.align 2, 0
_0803E6B8: .4byte 0x0808ABD0
_0803E6BC:
	movs r2, #0x89
	lsls r2, r2, #2
	adds r0, r1, r2
	movs r1, #0
	movs r2, #0x32
	bl sub_0800B8A4
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r3, #0
	ldr r0, _0803E6D4 @ =0x08087BB0
	b _0803E6E4
	.align 2, 0
_0803E6D4: .4byte 0x08087BB0
_0803E6D8:
	adds r3, #1
	cmp r3, #7
	bgt _0803E6EC
	ldr r1, _0803E710 @ =0x08087BB0
	lsls r0, r3, #2
	adds r0, r0, r1
_0803E6E4:
	ldrh r0, [r0]
	cmp r0, r4
	ble _0803E6D8
	subs r4, r0, r4
_0803E6EC:
	cmp r4, #0
	bge _0803E6F2
	movs r4, #0
_0803E6F2:
	movs r0, #0
	adds r1, r4, #0
	bl sub_08005C10
	cmp r4, #1
	bgt _0803E71C
	ldr r0, _0803E714 @ =0x0808AB30
_0803E700:
	ldr r1, _0803E718 @ =0x030013CC
	ldr r1, [r1]
	adds r1, #0x98
	ldr r1, [r1]
	movs r2, #0
	bl sub_080004D4
	b _0803E72C
	.align 2, 0
_0803E710: .4byte 0x08087BB0
_0803E714: .4byte 0x0808AB30
_0803E718: .4byte 0x030013CC
_0803E71C:
	ldr r0, _0803E740 @ =0x0808ABC0
	ldr r1, _0803E744 @ =0x030013CC
	ldr r1, [r1]
	adds r1, #0x98
	ldr r1, [r1]
	movs r2, #0
	bl sub_080004D4
_0803E72C:
	bl sub_08005A2C
	bl sub_080401A0
	bl sub_08040388
	ldr r0, _0803E744 @ =0x030013CC
	ldr r1, [r0]
	b _0803E99A
	.align 2, 0
_0803E740: .4byte 0x0808ABC0
_0803E744: .4byte 0x030013CC
_0803E748:
	ldr r3, [r5]
	adds r0, r3, #0
	adds r0, #0x45
	ldrb r0, [r0]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _0803E758
	b _0803EAD2
_0803E758:
	ldr r1, _0803E7E0 @ =0x030024B0
	ldrh r2, [r1]
	movs r7, #1
	adds r0, r7, #0
	ands r0, r2
	adds r6, r1, #0
	cmp r0, #0
	bne _0803E76A
	b _0803E898
_0803E76A:
	adds r2, r3, #0
	adds r2, #0xb5
	ldrb r0, [r2]
	cmp r0, #7
	bhi _0803E824
	ldr r0, _0803E7E4 @ =0x02034BF0
	movs r1, #0x8d
	lsls r1, r1, #2
	adds r0, r0, r1
	ldrb r1, [r0]
	ldr r5, _0803E7E8 @ =0x08089FF0
	ldrb r0, [r2]
	lsls r0, r0, #4
	adds r0, r0, r5
	ldrb r0, [r0, #4]
	asrs r1, r0
	ands r1, r7
	cmp r1, #0
	bne _0803E830
	movs r0, #0xd2
	bl m4aSongNumStart
	bl sub_08005934
	movs r3, #0
	adds r7, r5, #0
	ldr r5, _0803E7EC @ =0x08087BB0
	adds r6, r5, #0
_0803E7A2:
	ldr r0, _0803E7F0 @ =0x030013CC
	ldr r0, [r0]
	adds r0, #0xb5
	ldrb r1, [r0]
	lsls r1, r1, #4
	adds r1, r1, r7
	lsls r2, r3, #2
	adds r0, r6, #2
	adds r2, r2, r0
	ldrb r0, [r1, #4]
	ldrh r2, [r2]
	cmp r0, r2
	bne _0803E7F8
	ldr r0, _0803E7F4 @ =0x02034E14
	movs r1, #0
	movs r2, #0x32
	bl sub_0800B8A4
	ldrh r1, [r5]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	subs r4, r1, r0
	cmp r4, #0
	bge _0803E7D4
	movs r4, #0
_0803E7D4:
	movs r0, #0
	adds r1, r4, #0
	bl sub_08005C10
	b _0803E800
	.align 2, 0
_0803E7E0: .4byte 0x030024B0
_0803E7E4: .4byte 0x02034BF0
_0803E7E8: .4byte 0x08089FF0
_0803E7EC: .4byte 0x08087BB0
_0803E7F0: .4byte 0x030013CC
_0803E7F4: .4byte 0x02034E14
_0803E7F8:
	adds r5, #4
	adds r3, #1
	cmp r3, #7
	ble _0803E7A2
_0803E800:
	cmp r4, #1
	bgt _0803E814
	ldr r0, _0803E80C @ =0x0808AB7C
	ldr r1, _0803E810 @ =0x030013CC
	ldr r1, [r1]
	b _0803E870
	.align 2, 0
_0803E80C: .4byte 0x0808AB7C
_0803E810: .4byte 0x030013CC
_0803E814:
	ldr r0, _0803E81C @ =0x0808ABE0
	ldr r1, _0803E820 @ =0x030013CC
	ldr r1, [r1]
	b _0803E884
	.align 2, 0
_0803E81C: .4byte 0x0808ABE0
_0803E820: .4byte 0x030013CC
_0803E824:
	ldr r4, _0803E838 @ =0x02034BF0
	ldr r2, _0803E83C @ =0x00000237
	adds r0, r4, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803E840
_0803E830:
	movs r0, #5
	strb r0, [r3, #1]
	b _0803EAD2
	.align 2, 0
_0803E838: .4byte 0x02034BF0
_0803E83C: .4byte 0x00000237
_0803E840:
	movs r0, #0xd2
	bl m4aSongNumStart
	bl sub_08005934
	movs r1, #0x89
	lsls r1, r1, #2
	adds r0, r4, r1
	movs r1, #0
	movs r2, #0x32
	bl sub_0800B8A4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x31
	subs r4, r1, r0
	movs r0, #0
	adds r1, r4, #0
	bl sub_08005C10
	cmp r4, #1
	bgt _0803E880
	ldr r0, _0803E87C @ =0x0808AB7C
	ldr r1, [r5]
_0803E870:
	adds r1, #0x98
	ldr r1, [r1]
	movs r2, #0
	bl sub_080004D4
	b _0803E88E
	.align 2, 0
_0803E87C: .4byte 0x0808AB7C
_0803E880:
	ldr r0, _0803E894 @ =0x0808ABE0
	ldr r1, [r5]
_0803E884:
	adds r1, #0x98
	ldr r1, [r1]
	movs r2, #0
	bl sub_080004D4
_0803E88E:
	bl sub_08005A2C
	b _0803EAD2
	.align 2, 0
_0803E894: .4byte 0x0808ABE0
_0803E898:
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _0803E8B2
	movs r0, #0xce
	bl m4aSongNumStart
	bl sub_080403A0
	ldr r1, [r5]
	movs r0, #4
	strb r0, [r1, #1]
	b _0803EAD2
_0803E8B2:
	adds r0, r3, #0
	adds r0, #0xb5
	ldrb r4, [r0]
	ldrh r2, [r6, #4]
	movs r0, #0x30
	ands r0, r2
	cmp r0, #0
	beq _0803E902
	adds r1, r4, #0
	cmp r1, #7
	bhi _0803E902
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0
	beq _0803E8DC
	cmp r1, #0
	beq _0803E8DC
	cmp r1, #4
	beq _0803E8DC
	subs r4, #1
	b _0803E8F8
_0803E8DC:
	ldrh r1, [r6, #4]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0803E8F8
	ldr r0, [r5]
	adds r0, #0xb5
	ldrb r1, [r0]
	cmp r1, #3
	beq _0803E8F8
	cmp r1, #7
	beq _0803E8F8
	adds r0, r1, #0
	adds r4, r0, #1
_0803E8F8:
	ldr r0, [r5]
	adds r0, #0xb5
	ldrb r0, [r0]
	cmp r4, r0
	bne _0803E95E
_0803E902:
	ldr r3, [r5]
	movs r2, #0xb5
	adds r2, r2, r3
	mov ip, r2
	ldrb r4, [r2]
	ldrh r1, [r6, #4]
	movs r0, #0xc0
	ands r0, r1
	cmp r0, #0
	bne _0803E918
	b _0803EAD2
_0803E918:
	adds r2, r4, #0
	cmp r2, #8
	bne _0803E92E
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0803E952
	adds r0, r3, #0
	adds r0, #0xb6
	ldrb r4, [r0]
	b _0803E952
_0803E92E:
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0803E94C
	cmp r2, #3
	bhi _0803E948
	movs r4, #8
	mov r0, ip
	ldrb r1, [r0]
	adds r0, r3, #0
	adds r0, #0xb6
	strb r1, [r0]
	b _0803E952
_0803E948:
	subs r4, #4
	b _0803E952
_0803E94C:
	cmp r2, #3
	bhi _0803E952
	adds r4, #4
_0803E952:
	ldr r0, [r5]
	adds r0, #0xb5
	ldrb r0, [r0]
	cmp r4, r0
	bne _0803E95E
	b _0803EAD2
_0803E95E:
	lsls r1, r4, #0x18
	lsrs r1, r1, #0x18
	bl sub_08040338
	b _0803EAD2
_0803E968:
	ldr r0, [r5]
	adds r0, #0xb4
	movs r1, #3
	b _0803EABC
_0803E970:
	movs r0, #0xcc
	bl m4aSongNumStart
	bl sub_08005934
	ldr r0, _0803E9A0 @ =0x0808AB68
	ldr r4, _0803E9A4 @ =0x030013CC
	ldr r1, [r4]
	adds r1, #0x98
	ldr r1, [r1]
	movs r2, #0
	bl sub_080004D4
	bl sub_080064F8
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0803E9A8
	bl sub_08005A2C
	ldr r1, [r4]
_0803E99A:
	movs r0, #3
	strb r0, [r1, #1]
	b _0803EAD2
	.align 2, 0
_0803E9A0: .4byte 0x0808AB68
_0803E9A4: .4byte 0x030013CC
_0803E9A8:
	ldr r0, _0803E9CC @ =0x0808AB74
	ldr r1, [r4]
	adds r1, #0x98
	ldr r1, [r1]
	movs r2, #0
	bl sub_080004D4
	bl sub_08005A2C
	ldr r1, [r4]
	adds r0, r1, #0
	adds r0, #0xb5
	ldrb r0, [r0]
	cmp r0, #7
	bhi _0803E9D0
	movs r0, #6
	strb r0, [r1, #1]
	b _0803EAD2
	.align 2, 0
_0803E9CC: .4byte 0x0808AB74
_0803E9D0:
	movs r0, #7
	strb r0, [r1, #1]
	b _0803EAD2
_0803E9D6:
	movs r0, #0xf6
	bl m4aSongNumStart
	ldr r2, _0803EA04 @ =0x030013CC
	ldr r0, [r2]
	adds r0, #0xb4
	movs r1, #3
	strb r1, [r0]
	ldr r1, _0803EA08 @ =0x08089FF0
	ldr r0, [r2]
	adds r0, #0xb5
	ldrb r0, [r0]
	lsls r0, r0, #4
	adds r0, r0, r1
	ldrb r0, [r0, #4]
	cmp r0, #7
	bhi _0803EA6E
	lsls r0, r0, #2
	ldr r1, _0803EA0C @ =_0803EA10
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0803EA04: .4byte 0x030013CC
_0803EA08: .4byte 0x08089FF0
_0803EA0C: .4byte _0803EA10
_0803EA10: @ jump table
	.4byte _0803EA58 @ case 0
	.4byte _0803EA50 @ case 1
	.4byte _0803EA30 @ case 2
	.4byte _0803EA40 @ case 3
	.4byte _0803EA68 @ case 4
	.4byte _0803EA38 @ case 5
	.4byte _0803EA48 @ case 6
	.4byte _0803EA60 @ case 7
_0803EA30:
	movs r0, #0
	bl sub_08037AB0
	b _0803EA6E
_0803EA38:
	movs r0, #1
	bl sub_08037AB0
	b _0803EA6E
_0803EA40:
	movs r0, #2
	bl sub_08037AB0
	b _0803EA6E
_0803EA48:
	movs r0, #3
	bl sub_08037AB0
	b _0803EA6E
_0803EA50:
	movs r0, #4
	bl sub_08037AB0
	b _0803EA6E
_0803EA58:
	movs r0, #5
	bl sub_08037AB0
	b _0803EA6E
_0803EA60:
	movs r0, #6
	bl sub_08037AB0
	b _0803EA6E
_0803EA68:
	movs r0, #7
	bl sub_08037AB0
_0803EA6E:
	ldr r0, _0803EA74 @ =0x030013CC
	ldr r1, [r0]
	b _0803EAC0
	.align 2, 0
_0803EA74: .4byte 0x030013CC
_0803EA78:
	bl sub_080403A0
	bl sub_080401C8
	bl sub_0803EB54
	ldr r0, _0803EA90 @ =0x030013CC
	ldr r1, [r0]
	movs r0, #8
	strb r0, [r1, #1]
	b _0803EAD2
	.align 2, 0
_0803EA90: .4byte 0x030013CC
_0803EA94:
	ldr r0, [r5]
	adds r0, #0x44
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _0803EAD2
	ldr r0, _0803EAC8 @ =0x00000303
	bl m4aSongNumStart
	ldr r1, [r5]
	movs r0, #0x3c
	strh r0, [r1, #6]
	movs r0, #0x27
	movs r1, #0
	movs r2, #0x26
	bl sub_080068B4
	ldr r0, [r5]
	adds r0, #0xb4
	movs r1, #8
_0803EABC:
	strb r1, [r0]
	ldr r1, [r5]
_0803EAC0:
	movs r0, #9
	strb r0, [r1, #1]
	b _0803EAD2
	.align 2, 0
_0803EAC8: .4byte 0x00000303
_0803EACC:
	movs r0, #1
	bl sub_0803DDA0
_0803EAD2:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0803EAD8
sub_0803EAD8: @ 0x0803EAD8
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _0803EB0C @ =0x030013CC
	ldr r0, [r5]
	movs r1, #8
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	movs r1, #0
	strb r1, [r0]
	strh r1, [r0, #2]
	ldr r0, [r5]
	movs r1, #8
	ldrsh r0, [r0, r1]
	ldr r1, _0803EB10 @ =0x0808A144
	lsls r4, r4, #2
	adds r4, r4, r1
	ldr r1, [r4]
	bl sub_08007B84
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803EB0C: .4byte 0x030013CC
_0803EB10: .4byte 0x0808A144

	thumb_func_start sub_0803EB14
sub_0803EB14: @ 0x0803EB14
	push {lr}
	ldr r0, _0803EB30 @ =0x030013CC
	ldr r1, [r0]
	adds r1, #0x44
	ldrb r2, [r1]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	movs r0, #0
	bl sub_0803EAD8
	pop {r0}
	bx r0
	.align 2, 0
_0803EB30: .4byte 0x030013CC

	thumb_func_start sub_0803EB34
sub_0803EB34: @ 0x0803EB34
	push {lr}
	ldr r0, _0803EB50 @ =0x030013CC
	ldr r1, [r0]
	adds r1, #0x44
	ldrb r0, [r1]
	movs r2, #1
	orrs r0, r2
	strb r0, [r1]
	movs r0, #1
	bl sub_0803EAD8
	pop {r0}
	bx r0
	.align 2, 0
_0803EB50: .4byte 0x030013CC

	thumb_func_start sub_0803EB54
sub_0803EB54: @ 0x0803EB54
	push {lr}
	ldr r0, _0803EB70 @ =0x030013CC
	ldr r1, [r0]
	adds r1, #0x44
	ldrb r0, [r1]
	movs r2, #1
	orrs r0, r2
	strb r0, [r1]
	movs r0, #2
	bl sub_0803EAD8
	pop {r0}
	bx r0
	.align 2, 0
_0803EB70: .4byte 0x030013CC

	thumb_func_start sub_0803EB74
sub_0803EB74: @ 0x0803EB74
	push {r4, lr}
	ldr r4, _0803EBA0 @ =0x030013CC
	ldr r0, [r4]
	movs r1, #8
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	ldr r2, [r4]
	adds r2, #0x44
	ldrb r3, [r2]
	movs r1, #2
	rsbs r1, r1, #0
	ands r1, r3
	strb r1, [r2]
	movs r1, #0
	strb r1, [r0, #1]
	movs r0, #3
	bl sub_0803EAD8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803EBA0: .4byte 0x030013CC

	thumb_func_start sub_0803EBA4
sub_0803EBA4: @ 0x0803EBA4
	push {r4, lr}
	ldr r4, _0803EBC8 @ =0x030013CC
	ldr r0, [r4]
	movs r1, #8
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	ldr r2, [r4]
	adds r2, #0x44
	ldrb r1, [r2]
	movs r3, #1
	orrs r1, r3
	strb r1, [r2]
	movs r1, #1
	strb r1, [r0, #1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803EBC8: .4byte 0x030013CC

	thumb_func_start sub_0803EBCC
sub_0803EBCC: @ 0x0803EBCC
	push {lr}
	ldr r0, _0803EBE8 @ =0x030013CC
	ldr r1, [r0]
	adds r1, #0x44
	ldrb r0, [r1]
	movs r2, #1
	orrs r0, r2
	strb r0, [r1]
	movs r0, #4
	bl sub_0803EAD8
	pop {r0}
	bx r0
	.align 2, 0
_0803EBE8: .4byte 0x030013CC

	thumb_func_start sub_0803EBEC
sub_0803EBEC: @ 0x0803EBEC
	push {lr}
	ldr r0, _0803EC08 @ =0x030013CC
	ldr r0, [r0]
	adds r1, r0, #0
	adds r1, #0xb0
	movs r2, #8
	strh r2, [r1]
	adds r0, #0xb2
	strh r2, [r0]
	bl sub_0803EB14
	pop {r0}
	bx r0
	.align 2, 0
_0803EC08: .4byte 0x030013CC

	thumb_func_start sub_0803EC0C
sub_0803EC0C: @ 0x0803EC0C
	bx lr
	.align 2, 0

	thumb_func_start sub_0803EC10
sub_0803EC10: @ 0x0803EC10
	push {r4, r5, lr}
	bl sub_08007BD4
	adds r5, r0, #0
	ldrb r0, [r5]
	cmp r0, #1
	beq _0803EC3E
	cmp r0, #1
	bgt _0803EC28
	cmp r0, #0
	beq _0803EC32
	b _0803ECBC
_0803EC28:
	cmp r0, #2
	beq _0803EC68
	cmp r0, #3
	beq _0803ECB8
	b _0803ECBC
_0803EC32:
	movs r0, #0x28
	bl sub_08007AC0
	movs r0, #1
	strb r0, [r5]
	b _0803ECBC
_0803EC3E:
	movs r0, #0x80
	lsls r0, r0, #4
	str r0, [r5, #4]
	str r0, [r5, #8]
	ldr r0, _0803EC64 @ =0x030013CC
	ldr r1, [r0]
	movs r2, #8
	adds r0, r1, #0
	adds r0, #0xb0
	movs r3, #0
	strh r2, [r0]
	ldr r0, [r5, #8]
	asrs r0, r0, #8
	adds r1, #0xb2
	strh r0, [r1]
	strh r3, [r5, #2]
	movs r0, #2
	strb r0, [r5]
	b _0803ECBC
	.align 2, 0
_0803EC64: .4byte 0x030013CC
_0803EC68:
	ldr r4, [r5, #8]
	movs r0, #0xd5
	lsls r0, r0, #1
	adds r4, r4, r0
	ldrh r0, [r5, #2]
	adds r0, #1
	strh r0, [r5, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #7
	ldr r1, _0803ECAC @ =0xFFFFFF00
	adds r0, r0, r1
	rsbs r0, r0, #0
	movs r1, #0x78
	bl __divsi3
	adds r4, r4, r0
	str r4, [r5, #8]
	ldr r0, _0803ECB0 @ =0x000057FF
	cmp r4, r0
	ble _0803EC9C
	adds r0, #1
	str r0, [r5, #8]
	movs r0, #3
	strb r0, [r5]
	movs r0, #0
	strh r0, [r5, #2]
_0803EC9C:
	ldr r0, _0803ECB4 @ =0x030013CC
	ldr r1, [r0]
	ldr r0, [r5, #8]
	asrs r0, r0, #8
	adds r1, #0xb2
	strh r0, [r1]
	b _0803ECBC
	.align 2, 0
_0803ECAC: .4byte 0xFFFFFF00
_0803ECB0: .4byte 0x000057FF
_0803ECB4: .4byte 0x030013CC
_0803ECB8:
	bl sub_0803EB14
_0803ECBC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0803ECC4
sub_0803ECC4: @ 0x0803ECC4
	push {r4, r5, lr}
	bl sub_08007BD4
	adds r5, r0, #0
	ldrb r3, [r5]
	cmp r3, #1
	beq _0803ED10
	cmp r3, #1
	bgt _0803ECDC
	cmp r3, #0
	beq _0803ECE2
	b _0803ED60
_0803ECDC:
	cmp r3, #2
	beq _0803ED5C
	b _0803ED60
_0803ECE2:
	movs r0, #0x80
	lsls r0, r0, #4
	str r0, [r5, #4]
	movs r0, #0xb0
	lsls r0, r0, #7
	str r0, [r5, #8]
	ldr r0, _0803ED0C @ =0x030013CC
	ldr r1, [r0]
	movs r2, #8
	adds r0, r1, #0
	adds r0, #0xb0
	strh r2, [r0]
	ldr r0, [r5, #8]
	asrs r0, r0, #8
	adds r1, #0xb2
	strh r0, [r1]
	strh r3, [r5, #2]
	movs r0, #1
	strb r0, [r5]
	b _0803ED60
	.align 2, 0
_0803ED0C: .4byte 0x030013CC
_0803ED10:
	ldr r4, [r5, #8]
	ldr r0, _0803ED50 @ =0xFFFFFE2B
	adds r4, r4, r0
	ldrh r0, [r5, #2]
	adds r0, #1
	strh r0, [r5, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #7
	ldr r1, _0803ED54 @ =0xFFFFFF00
	adds r0, r0, r1
	movs r1, #0x78
	bl __divsi3
	adds r4, r4, r0
	str r4, [r5, #8]
	movs r0, #0x80
	lsls r0, r0, #4
	cmp r4, r0
	bgt _0803ED40
	str r0, [r5, #8]
	movs r0, #2
	strb r0, [r5]
	movs r0, #0
	strh r0, [r5, #2]
_0803ED40:
	ldr r0, _0803ED58 @ =0x030013CC
	ldr r1, [r0]
	ldr r0, [r5, #8]
	asrs r0, r0, #8
	adds r1, #0xb2
	strh r0, [r1]
	b _0803ED60
	.align 2, 0
_0803ED50: .4byte 0xFFFFFE2B
_0803ED54: .4byte 0xFFFFFF00
_0803ED58: .4byte 0x030013CC
_0803ED5C:
	bl sub_0803EB14
_0803ED60:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0803ED68
sub_0803ED68: @ 0x0803ED68
	push {r4, r5, lr}
	bl sub_08007BD4
	adds r4, r0, #0
	ldrb r3, [r4]
	cmp r3, #1
	beq _0803EDE0
	cmp r3, #1
	bgt _0803ED80
	cmp r3, #0
	beq _0803ED86
	b _0803EE40
_0803ED80:
	cmp r3, #2
	beq _0803EE3C
	b _0803EE40
_0803ED86:
	ldr r0, _0803EDD0 @ =0x030013CC
	ldr r2, [r0]
	ldr r1, _0803EDD4 @ =0x0808A11C
	ldr r0, _0803EDD8 @ =0x03004400
	ldr r0, [r0]
	movs r3, #1
	ands r0, r3
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r0, #8
	adds r1, r2, #0
	adds r1, #0xb2
	strh r0, [r1]
	ldr r1, _0803EDDC @ =0x0808A0F8
	ldrh r0, [r4, #2]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r0, #8
	adds r2, #0xb0
	strh r0, [r2]
	ldrh r1, [r4, #2]
	adds r2, r1, #1
	adds r0, r2, #0
	asrs r0, r0, #3
	lsls r0, r0, #3
	subs r1, r2, r0
	strh r1, [r4, #2]
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _0803EE40
	lsls r0, r1, #0x10
	cmp r0, #0
	bne _0803EE40
	strb r3, [r4]
	b _0803EE40
	.align 2, 0
_0803EDD0: .4byte 0x030013CC
_0803EDD4: .4byte 0x0808A11C
_0803EDD8: .4byte 0x03004400
_0803EDDC: .4byte 0x0808A0F8
_0803EDE0:
	ldr r5, _0803EE2C @ =0x030013CC
	ldr r2, [r5]
	ldr r1, _0803EE30 @ =0x0808A11C
	ldr r0, _0803EE34 @ =0x03004400
	ldr r0, [r0]
	ands r0, r3
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r0, #8
	adds r1, r2, #0
	adds r1, #0xb2
	strh r0, [r1]
	ldr r1, _0803EE38 @ =0x0808A108
	ldrh r0, [r4, #2]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r0, #8
	adds r2, #0xb0
	strh r0, [r2]
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #9
	bls _0803EE40
	movs r0, #0
	strh r0, [r4, #2]
	movs r0, #2
	strb r0, [r4]
	ldr r0, [r5]
	adds r0, #0xb0
	movs r1, #8
	strh r1, [r0]
	b _0803EE40
	.align 2, 0
_0803EE2C: .4byte 0x030013CC
_0803EE30: .4byte 0x0808A11C
_0803EE34: .4byte 0x03004400
_0803EE38: .4byte 0x0808A108
_0803EE3C:
	bl sub_0803EB14
_0803EE40:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0803EE48
sub_0803EE48: @ 0x0803EE48
	push {r4, lr}
	bl sub_08007BD4
	adds r3, r0, #0
	ldrb r4, [r3]
	cmp r4, #0
	beq _0803EE5C
	cmp r4, #1
	beq _0803EE90
	b _0803EE94
_0803EE5C:
	ldr r0, _0803EE88 @ =0x030013CC
	ldr r1, [r0]
	ldr r2, _0803EE8C @ =0x0808A120
	ldrh r0, [r3, #2]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	adds r0, #0x58
	adds r1, #0xb2
	strh r0, [r1]
	ldrh r0, [r3, #2]
	adds r0, #1
	strh r0, [r3, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x11
	bls _0803EE94
	strh r4, [r3, #2]
	movs r0, #1
	strb r0, [r3]
	b _0803EE94
	.align 2, 0
_0803EE88: .4byte 0x030013CC
_0803EE8C: .4byte 0x0808A120
_0803EE90:
	bl sub_0803EB14
_0803EE94:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0803EE9C
sub_0803EE9C: @ 0x0803EE9C
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _0803EED0 @ =0x030013CC
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
	ldr r1, _0803EED4 @ =0x0808A158
	lsls r4, r4, #2
	adds r4, r4, r1
	ldr r1, [r4]
	bl sub_08007B84
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803EED0: .4byte 0x030013CC
_0803EED4: .4byte 0x0808A158

	thumb_func_start sub_0803EED8
sub_0803EED8: @ 0x0803EED8
	push {lr}
	ldr r0, _0803EEF4 @ =0x030013CC
	ldr r1, [r0]
	adds r1, #0x44
	ldrb r2, [r1]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	movs r0, #0
	bl sub_0803EE9C
	pop {r0}
	bx r0
	.align 2, 0
_0803EEF4: .4byte 0x030013CC

	thumb_func_start sub_0803EEF8
sub_0803EEF8: @ 0x0803EEF8
	push {lr}
	ldr r0, _0803EF04 @ =0x08117A90
	bl sub_080095E0
	pop {r0}
	bx r0
	.align 2, 0
_0803EF04: .4byte 0x08117A90

	thumb_func_start sub_0803EF08
sub_0803EF08: @ 0x0803EF08
	push {r4, lr}
	ldr r2, _0803EF48 @ =0x030024E0
	ldrh r1, [r2]
	movs r3, #0x80
	lsls r3, r3, #4
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r4, _0803EF4C @ =0x030013CC
	ldr r0, [r4]
	adds r1, r0, #0
	adds r1, #0xb0
	ldrh r1, [r1]
	strh r1, [r2, #0x10]
	adds r0, #0xb2
	ldrh r0, [r0]
	strh r0, [r2, #0x18]
	ldr r0, _0803EF50 @ =0x08117A90
	movs r1, #1
	bl sub_08009554
	ldr r0, [r4]
	movs r1, #0xa
	ldrsh r0, [r0, r1]
	ldr r1, _0803EF54 @ =sub_0803EEF8
	bl sub_08007BA0
	bl sub_0803EED8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803EF48: .4byte 0x030024E0
_0803EF4C: .4byte 0x030013CC
_0803EF50: .4byte 0x08117A90
_0803EF54: .4byte sub_0803EEF8

	thumb_func_start sub_0803EF58
sub_0803EF58: @ 0x0803EF58
	ldr r2, _0803EF78 @ =0x030024E0
	ldr r0, _0803EF7C @ =0x030013CC
	ldr r1, [r0]
	adds r0, r1, #0
	adds r0, #0xb0
	movs r3, #0
	ldrsh r0, [r0, r3]
	subs r0, #8
	asrs r0, r0, #1
	adds r0, #8
	strh r0, [r2, #0x10]
	adds r1, #0xb2
	ldrh r0, [r1]
	strh r0, [r2, #0x18]
	bx lr
	.align 2, 0
_0803EF78: .4byte 0x030024E0
_0803EF7C: .4byte 0x030013CC

	thumb_func_start sub_0803EF80
sub_0803EF80: @ 0x0803EF80
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _0803EFB4 @ =0x030013CC
	ldr r0, [r5]
	movs r1, #0xc
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	movs r1, #0
	strb r1, [r0]
	strh r1, [r0, #2]
	ldr r0, [r5]
	movs r1, #0xc
	ldrsh r0, [r0, r1]
	ldr r1, _0803EFB8 @ =0x0808A174
	lsls r4, r4, #2
	adds r4, r4, r1
	ldr r1, [r4]
	bl sub_08007B84
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803EFB4: .4byte 0x030013CC
_0803EFB8: .4byte 0x0808A174

	thumb_func_start sub_0803EFBC
sub_0803EFBC: @ 0x0803EFBC
	push {lr}
	ldr r0, _0803EFD8 @ =0x030013CC
	ldr r1, [r0]
	adds r1, #0x44
	ldrb r2, [r1]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	movs r0, #0
	bl sub_0803EF80
	pop {r0}
	bx r0
	.align 2, 0
_0803EFD8: .4byte 0x030013CC

	thumb_func_start sub_0803EFDC
sub_0803EFDC: @ 0x0803EFDC
	push {lr}
	ldr r0, _0803EFF8 @ =0x030013CC
	ldr r1, [r0]
	adds r1, #0x44
	ldrb r2, [r1]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	movs r0, #1
	bl sub_0803EF80
	pop {r0}
	bx r0
	.align 2, 0
_0803EFF8: .4byte 0x030013CC

	thumb_func_start sub_0803EFFC
sub_0803EFFC: @ 0x0803EFFC
	push {lr}
	ldr r0, _0803F018 @ =0x030013CC
	ldr r1, [r0]
	adds r1, #0x44
	ldrb r0, [r1]
	movs r2, #4
	orrs r0, r2
	strb r0, [r1]
	movs r0, #2
	bl sub_0803EF80
	pop {r0}
	bx r0
	.align 2, 0
_0803F018: .4byte 0x030013CC

	thumb_func_start sub_0803F01C
sub_0803F01C: @ 0x0803F01C
	push {lr}
	ldr r2, _0803F05C @ =0x030024E0
	ldrh r1, [r2]
	movs r3, #0x80
	lsls r3, r3, #3
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _0803F060 @ =0x030013CC
	ldr r0, [r0]
	adds r1, r0, #0
	adds r1, #0xb0
	ldrh r1, [r1]
	strh r1, [r2, #0xe]
	adds r0, #0xb2
	ldrh r0, [r0]
	strh r0, [r2, #0x16]
	ldr r1, _0803F064 @ =0x02034BF0
	ldr r2, _0803F068 @ =0x00000236
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #3
	bne _0803F070
	ldr r3, _0803F06C @ =0x00000237
	adds r0, r1, r3
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803F070
	bl sub_0803EFDC
	b _0803F074
	.align 2, 0
_0803F05C: .4byte 0x030024E0
_0803F060: .4byte 0x030013CC
_0803F064: .4byte 0x02034BF0
_0803F068: .4byte 0x00000236
_0803F06C: .4byte 0x00000237
_0803F070:
	bl sub_0803EFBC
_0803F074:
	pop {r0}
	bx r0

	thumb_func_start sub_0803F078
sub_0803F078: @ 0x0803F078
	ldr r2, _0803F090 @ =0x030024E0
	ldr r0, _0803F094 @ =0x030013CC
	ldr r0, [r0]
	adds r1, r0, #0
	adds r1, #0xb0
	ldrh r1, [r1]
	strh r1, [r2, #0xe]
	adds r0, #0xb2
	ldrh r0, [r0]
	strh r0, [r2, #0x16]
	bx lr
	.align 2, 0
_0803F090: .4byte 0x030024E0
_0803F094: .4byte 0x030013CC

	thumb_func_start sub_0803F098
sub_0803F098: @ 0x0803F098
	ldr r2, _0803F0B0 @ =0x030024E0
	ldr r0, _0803F0B4 @ =0x030013CC
	ldr r0, [r0]
	adds r1, r0, #0
	adds r1, #0xb0
	ldrh r1, [r1]
	strh r1, [r2, #0xe]
	adds r0, #0xb2
	ldrh r0, [r0]
	subs r0, #0x54
	strh r0, [r2, #0x16]
	bx lr
	.align 2, 0
_0803F0B0: .4byte 0x030024E0
_0803F0B4: .4byte 0x030013CC

	thumb_func_start sub_0803F0B8
sub_0803F0B8: @ 0x0803F0B8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	bl sub_08007BD4
	adds r7, r0, #0
	ldrb r0, [r7]
	cmp r0, #1
	beq _0803F18C
	cmp r0, #1
	bgt _0803F0D6
	cmp r0, #0
	beq _0803F0DE
	b _0803F24C
_0803F0D6:
	cmp r0, #2
	bne _0803F0DC
	b _0803F1E0
_0803F0DC:
	b _0803F24C
_0803F0DE:
	ldr r0, _0803F178 @ =0x030013CC
	mov r8, r0
	adds r1, r7, #4
	mov sb, r1
	ldr r6, _0803F17C @ =0x0808A15C
	movs r5, #5
_0803F0EA:
	movs r0, #2
	movs r1, #0xff
	bl sub_080099E0
	adds r4, r0, #0
	movs r1, #1
	bl sub_08009A34
	mov r0, r8
	ldr r3, [r0]
	adds r0, r3, #0
	adds r0, #0xb0
	ldrh r1, [r6]
	ldrh r0, [r0]
	subs r1, r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r3, #0xb2
	ldrh r2, [r6, #2]
	ldrh r0, [r3]
	subs r2, r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r4, #0
	bl sub_08009A70
	mov r1, r8
	ldr r0, [r1]
	adds r0, #0xa4
	ldr r1, [r0]
	adds r0, r4, #0
	bl sub_08009A78
	adds r0, r4, #0
	movs r1, #7
	bl sub_08009AB4
	adds r0, r4, #0
	ldr r1, _0803F180 @ =0x0811CE60
	ldr r2, _0803F184 @ =0x0811CDD4
	movs r3, #1
	bl sub_08009ACC
	adds r0, r4, #0
	movs r1, #0
	bl sub_08009B40
	mov r0, sb
	adds r0, #4
	mov sb, r0
	subs r0, #4
	stm r0!, {r4}
	adds r6, #4
	subs r5, #1
	cmp r5, #0
	bge _0803F0EA
	ldr r1, _0803F188 @ =0x030024E0
	adds r2, r1, #0
	adds r2, #0x4a
	movs r0, #0xca
	strh r0, [r2]
	adds r1, #0x4e
	movs r0, #8
	strb r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #3
	bl m4aSongNumStart
	movs r0, #1
	strb r0, [r7]
	b _0803F24C
	.align 2, 0
_0803F178: .4byte 0x030013CC
_0803F17C: .4byte 0x0808A15C
_0803F180: .4byte 0x0811CE60
_0803F184: .4byte 0x0811CDD4
_0803F188: .4byte 0x030024E0
_0803F18C:
	movs r6, #0
	adds r1, r7, #4
	mov r8, r1
	mov r4, r8
	movs r5, #5
_0803F196:
	ldr r1, [r4]
	ldrb r0, [r1, #1]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _0803F1AA
	adds r0, r1, #0
	movs r1, #0
	bl sub_08009A34
	adds r6, #1
_0803F1AA:
	adds r4, #4
	subs r5, #1
	cmp r5, #0
	bge _0803F196
	cmp r6, #6
	bne _0803F24C
	movs r1, #0
	movs r0, #2
	strb r0, [r7]
	strh r1, [r7, #2]
	mov r4, r8
	movs r5, #5
_0803F1C2:
	ldm r4!, {r0}
	bl sub_08009A00
	subs r5, #1
	cmp r5, #0
	bge _0803F1C2
	bl sub_0803EB74
	ldr r0, _0803F1DC @ =0x00000401
	bl m4aSongNumStart
	b _0803F24C
	.align 2, 0
_0803F1DC: .4byte 0x00000401
_0803F1E0:
	ldrh r0, [r7, #2]
	movs r1, #3
	bl __umodsi3
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0803F214
	movs r0, #0x50
	bl sub_0800B828
	adds r4, r0, #0
	adds r4, #0x58
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	movs r0, #0xc
	bl sub_0800B828
	adds r1, r0, #0
	adds r1, #0x7e
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	movs r2, #0xff
	movs r3, #0
	bl sub_0804007C
_0803F214:
	ldrh r4, [r7, #2]
	adds r4, #1
	strh r4, [r7, #2]
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x54
	muls r0, r1, r0
	movs r1, #0xf0
	bl __divsi3
	adds r6, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	cmp r4, #0xef
	bls _0803F236
	bl sub_0803EFDC
_0803F236:
	ldr r2, _0803F258 @ =0x030024E0
	ldr r0, _0803F25C @ =0x030013CC
	ldr r0, [r0]
	adds r1, r0, #0
	adds r1, #0xb0
	ldrh r1, [r1]
	strh r1, [r2, #0xe]
	adds r0, #0xb2
	ldrh r0, [r0]
	subs r0, r0, r6
	strh r0, [r2, #0x16]
_0803F24C:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803F258: .4byte 0x030024E0
_0803F25C: .4byte 0x030013CC

	thumb_func_start sub_0803F260
sub_0803F260: @ 0x0803F260
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _0803F294 @ =0x030013CC
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
	ldr r1, _0803F298 @ =0x0808A180
	lsls r4, r4, #2
	adds r4, r4, r1
	ldr r1, [r4]
	bl sub_08007B84
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803F294: .4byte 0x030013CC
_0803F298: .4byte 0x0808A180

	thumb_func_start sub_0803F29C
sub_0803F29C: @ 0x0803F29C
	push {lr}
	ldr r0, _0803F2B8 @ =0x030013CC
	ldr r1, [r0]
	adds r1, #0x44
	ldrb r2, [r1]
	movs r0, #9
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	movs r0, #0
	bl sub_0803F260
	pop {r0}
	bx r0
	.align 2, 0
_0803F2B8: .4byte 0x030013CC

	thumb_func_start sub_0803F2BC
sub_0803F2BC: @ 0x0803F2BC
	push {lr}
	ldr r2, _0803F2E8 @ =0x030024E0
	ldrh r1, [r2]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _0803F2EC @ =0x030013CC
	ldr r0, [r0]
	adds r1, r0, #0
	adds r1, #0xb0
	ldrh r1, [r1]
	strh r1, [r2, #0xc]
	adds r0, #0xb2
	ldrh r0, [r0]
	strh r0, [r2, #0x14]
	bl sub_0803F29C
	pop {r0}
	bx r0
	.align 2, 0
_0803F2E8: .4byte 0x030024E0
_0803F2EC: .4byte 0x030013CC

	thumb_func_start sub_0803F2F0
sub_0803F2F0: @ 0x0803F2F0
	ldr r2, _0803F308 @ =0x030024E0
	ldr r0, _0803F30C @ =0x030013CC
	ldr r0, [r0]
	adds r1, r0, #0
	adds r1, #0xb0
	ldrh r1, [r1]
	strh r1, [r2, #0xc]
	adds r0, #0xb2
	ldrh r0, [r0]
	strh r0, [r2, #0x14]
	bx lr
	.align 2, 0
_0803F308: .4byte 0x030024E0
_0803F30C: .4byte 0x030013CC

	thumb_func_start sub_0803F310
sub_0803F310: @ 0x0803F310
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _0803F344 @ =0x030013CC
	ldr r0, [r5]
	movs r1, #0x10
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	movs r1, #0
	strb r1, [r0]
	strh r1, [r0, #2]
	ldr r0, [r5]
	movs r1, #0x10
	ldrsh r0, [r0, r1]
	ldr r1, _0803F348 @ =0x0808A184
	lsls r4, r4, #2
	adds r4, r4, r1
	ldr r1, [r4]
	bl sub_08007B84
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803F344: .4byte 0x030013CC
_0803F348: .4byte 0x0808A184

	thumb_func_start sub_0803F34C
sub_0803F34C: @ 0x0803F34C
	push {lr}
	ldr r0, _0803F368 @ =0x030013CC
	ldr r1, [r0]
	adds r1, #0x44
	ldrb r2, [r1]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	movs r0, #0
	bl sub_0803F310
	pop {r0}
	bx r0
	.align 2, 0
_0803F368: .4byte 0x030013CC

	thumb_func_start sub_0803F36C
sub_0803F36C: @ 0x0803F36C
	push {r4, r5, lr}
	movs r4, #0
	ldr r0, _0803F39C @ =0x08089FF0
	adds r5, r0, #0
	adds r5, #8
_0803F376:
	ldr r0, _0803F3A0 @ =0x030013CC
	ldr r0, [r0]
	lsls r1, r4, #2
	adds r0, #0x48
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_08009A00
	ldr r0, [r5]
	bl sub_080095E0
	adds r5, #0x10
	adds r4, #1
	cmp r4, #7
	ble _0803F376
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803F39C: .4byte 0x08089FF0
_0803F3A0: .4byte 0x030013CC

	thumb_func_start sub_0803F3A4
sub_0803F3A4: @ 0x0803F3A4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	movs r6, #0
	ldr r7, _0803F46C @ =0x030013CC
	ldr r5, _0803F470 @ =0x08089FF0
	ldr r0, _0803F474 @ =0x02034E14
	mov r8, r0
_0803F3B4:
	ldrb r1, [r5, #2]
	movs r0, #1
	bl sub_080099E0
	adds r4, r0, #0
	movs r1, #1
	bl sub_08009A34
	ldrb r1, [r5]
	ldr r3, [r7]
	adds r0, r3, #0
	adds r0, #0xb0
	ldrh r0, [r0]
	subs r1, r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldrb r2, [r5, #1]
	adds r3, #0xb2
	ldrh r0, [r3]
	subs r2, r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r4, #0
	bl sub_08009A70
	ldr r0, [r7]
	adds r0, #0xa0
	ldr r1, [r0]
	adds r0, r4, #0
	bl sub_08009A78
	adds r0, r4, #0
	movs r1, #3
	bl sub_08009AB4
	ldrb r3, [r5, #3]
	adds r0, r4, #0
	ldr r1, _0803F478 @ =0x0811C704
	ldr r2, _0803F47C @ =0x0811C6E0
	bl sub_08009ACC
	adds r0, r4, #0
	movs r1, #0xff
	bl sub_08009B40
	ldr r0, [r7]
	lsls r1, r6, #2
	adds r0, #0x48
	adds r0, r0, r1
	str r4, [r0]
	ldrb r1, [r5, #5]
	mov r0, r8
	bl sub_0800B87C
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803F446
	mov r1, r8
	ldrb r0, [r1, #0x10]
	ldrb r2, [r5, #4]
	asrs r0, r2
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0803F446
	ldr r0, [r5, #8]
	movs r2, #0x98
	lsls r2, r2, #1
	adds r1, r2, #0
	ldrb r2, [r5, #0xc]
	adds r1, r1, r2
	bl sub_08009554
_0803F446:
	adds r5, #0x10
	adds r6, #1
	cmp r6, #7
	ble _0803F3B4
	ldr r0, _0803F46C @ =0x030013CC
	ldr r0, [r0]
	movs r1, #0x10
	ldrsh r0, [r0, r1]
	ldr r1, _0803F480 @ =sub_0803F36C
	bl sub_08007BA0
	bl sub_0803F34C
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803F46C: .4byte 0x030013CC
_0803F470: .4byte 0x08089FF0
_0803F474: .4byte 0x02034E14
_0803F478: .4byte 0x0811C704
_0803F47C: .4byte 0x0811C6E0
_0803F480: .4byte sub_0803F36C

	thumb_func_start sub_0803F484
sub_0803F484: @ 0x0803F484
	push {r4, lr}
	movs r4, #0
_0803F488:
	ldr r0, _0803F4C8 @ =0x030013CC
	ldr r0, [r0]
	mov ip, r0
	lsls r1, r4, #2
	adds r0, #0x48
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _0803F4CC @ =0x08089FF0
	lsls r3, r4, #4
	adds r3, r3, r1
	ldrb r1, [r3]
	mov r2, ip
	adds r2, #0xb0
	ldrh r2, [r2]
	subs r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldrb r2, [r3, #1]
	mov r3, ip
	adds r3, #0xb2
	ldrh r3, [r3]
	subs r2, r2, r3
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl sub_08009A70
	adds r4, #1
	cmp r4, #7
	ble _0803F488
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803F4C8: .4byte 0x030013CC
_0803F4CC: .4byte 0x08089FF0

	thumb_func_start sub_0803F4D0
sub_0803F4D0: @ 0x0803F4D0
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	lsls r5, r5, #0x18
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r6, _0803F510 @ =0x030013CC
	ldr r0, [r6]
	lsrs r5, r5, #0x17
	adds r0, #0x12
	adds r0, r0, r5
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	movs r1, #0
	strb r1, [r0, #1]
	strh r1, [r0, #2]
	ldr r0, [r6]
	adds r0, #0x12
	adds r0, r0, r5
	movs r1, #0
	ldrsh r0, [r0, r1]
	ldr r1, _0803F514 @ =0x0808A1F8
	lsls r4, r4, #2
	adds r4, r4, r1
	ldr r1, [r4]
	bl sub_08007B84
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803F510: .4byte 0x030013CC
_0803F514: .4byte 0x0808A1F8

	thumb_func_start sub_0803F518
sub_0803F518: @ 0x0803F518
	push {r4, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _0803F548 @ =0x030013CC
	ldr r3, [r1]
	adds r3, #0x44
	ldrh r4, [r3]
	lsls r2, r4, #0x13
	lsrs r2, r2, #0x18
	movs r1, #1
	lsls r1, r0
	bics r2, r1
	lsls r2, r2, #5
	ldr r1, _0803F54C @ =0xFFFFE01F
	ands r1, r4
	orrs r1, r2
	strh r1, [r3]
	movs r1, #0
	bl sub_0803F4D0
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803F548: .4byte 0x030013CC
_0803F54C: .4byte 0xFFFFE01F

	thumb_func_start sub_0803F550
sub_0803F550: @ 0x0803F550
	push {r4, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _0803F584 @ =0x030013CC
	ldr r3, [r1]
	adds r3, #0x44
	ldrh r4, [r3]
	lsls r2, r4, #0x13
	lsrs r2, r2, #0x18
	movs r1, #1
	lsls r1, r0
	orrs r2, r1
	movs r1, #0xff
	ands r2, r1
	lsls r2, r2, #5
	ldr r1, _0803F588 @ =0xFFFFE01F
	ands r1, r4
	orrs r1, r2
	strh r1, [r3]
	movs r1, #1
	bl sub_0803F4D0
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803F584: .4byte 0x030013CC
_0803F588: .4byte 0xFFFFE01F

	thumb_func_start sub_0803F58C
sub_0803F58C: @ 0x0803F58C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r0, _0803F5D8 @ =0x030013CC
	ldr r3, [r0]
	adds r6, r3, #0
	adds r6, #0x44
	ldrh r5, [r6]
	lsls r2, r5, #0x13
	lsrs r2, r2, #0x18
	movs r0, #1
	lsls r0, r4
	orrs r2, r0
	movs r0, #0xff
	ands r2, r0
	lsls r2, r2, #5
	ldr r0, _0803F5DC @ =0xFFFFE01F
	ands r0, r5
	orrs r0, r2
	strh r0, [r6]
	lsls r0, r4, #1
	adds r3, #0x12
	adds r3, r3, r0
	movs r2, #0
	ldrsh r0, [r3, r2]
	bl sub_08007AD8
	adds r0, r4, #0
	movs r1, #2
	bl sub_0803F4D0
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803F5D8: .4byte 0x030013CC
_0803F5DC: .4byte 0xFFFFE01F

	thumb_func_start sub_0803F5E0
sub_0803F5E0: @ 0x0803F5E0
	push {lr}
	lsls r0, r0, #0x18
	ldr r1, _0803F5F8 @ =0x030013CC
	ldr r1, [r1]
	lsrs r0, r0, #0x16
	adds r1, #0x68
	adds r1, r1, r0
	ldr r0, [r1]
	bl sub_08009A00
	pop {r0}
	bx r0
	.align 2, 0
_0803F5F8: .4byte 0x030013CC

	thumb_func_start sub_0803F5FC
sub_0803F5FC: @ 0x0803F5FC
	push {lr}
	movs r0, #0
	bl sub_0803F5E0
	pop {r0}
	bx r0

	thumb_func_start sub_0803F608
sub_0803F608: @ 0x0803F608
	push {lr}
	movs r0, #1
	bl sub_0803F5E0
	pop {r0}
	bx r0

	thumb_func_start sub_0803F614
sub_0803F614: @ 0x0803F614
	push {lr}
	movs r0, #2
	bl sub_0803F5E0
	pop {r0}
	bx r0

	thumb_func_start sub_0803F620
sub_0803F620: @ 0x0803F620
	push {lr}
	movs r0, #3
	bl sub_0803F5E0
	pop {r0}
	bx r0

	thumb_func_start sub_0803F62C
sub_0803F62C: @ 0x0803F62C
	push {lr}
	movs r0, #4
	bl sub_0803F5E0
	pop {r0}
	bx r0

	thumb_func_start sub_0803F638
sub_0803F638: @ 0x0803F638
	push {lr}
	movs r0, #5
	bl sub_0803F5E0
	pop {r0}
	bx r0

	thumb_func_start sub_0803F644
sub_0803F644: @ 0x0803F644
	push {lr}
	movs r0, #6
	bl sub_0803F5E0
	pop {r0}
	bx r0

	thumb_func_start sub_0803F650
sub_0803F650: @ 0x0803F650
	push {lr}
	movs r0, #7
	bl sub_0803F5E0
	pop {r0}
	bx r0

	thumb_func_start sub_0803F65C
sub_0803F65C: @ 0x0803F65C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	ldr r0, _0803F750 @ =0x08089FF0
	lsls r1, r5, #4
	mov sb, r1
	add sb, r0
	mov r2, sb
	ldrb r1, [r2, #2]
	subs r1, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r0, #1
	bl sub_080099E0
	adds r7, r0, #0
	movs r1, #1
	bl sub_08009A34
	mov r3, sb
	ldrb r1, [r3]
	ldr r0, _0803F754 @ =0x030013CC
	mov r8, r0
	ldr r3, [r0]
	adds r0, r3, #0
	adds r0, #0xb0
	ldrh r0, [r0]
	subs r1, r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r0, sb
	ldrb r2, [r0, #1]
	adds r3, #0xb2
	ldrh r0, [r3]
	subs r2, r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r7, #0
	bl sub_08009A70
	mov r1, r8
	ldr r0, [r1]
	adds r0, #0xa8
	ldr r1, [r0]
	adds r0, r7, #0
	bl sub_08009A78
	adds r0, r7, #0
	movs r1, #8
	bl sub_08009AB4
	ldr r1, _0803F758 @ =0x080FCC18
	ldr r2, _0803F75C @ =0x080FCC10
	adds r0, r7, #0
	movs r3, #0
	bl sub_08009ACC
	adds r0, r7, #0
	movs r1, #0xff
	bl sub_08009B40
	mov r2, r8
	ldr r1, [r2]
	lsls r4, r5, #2
	adds r0, r1, #0
	adds r0, #0x68
	adds r0, r0, r4
	str r7, [r0]
	lsls r6, r5, #1
	adds r1, #0x12
	adds r1, r1, r6
	movs r3, #0
	ldrsh r0, [r1, r3]
	bl sub_08007BBC
	strb r5, [r0]
	mov r1, r8
	ldr r0, [r1]
	adds r0, #0x12
	adds r0, r0, r6
	movs r2, #0
	ldrsh r0, [r0, r2]
	ldr r1, _0803F760 @ =0x0808A188
	adds r4, r4, r1
	ldr r1, [r4]
	bl sub_08007BA0
	adds r0, r5, #0
	bl sub_0803F518
	ldr r2, _0803F764 @ =0x02034BF0
	movs r3, #0x8d
	lsls r3, r3, #2
	adds r0, r2, r3
	ldrb r0, [r0]
	mov r1, sb
	ldrb r1, [r1, #4]
	asrs r0, r1
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0803F73A
	adds r3, #2
	adds r0, r2, r3
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803F742
_0803F73A:
	adds r0, r7, #0
	movs r1, #0
	bl sub_08009A34
_0803F742:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803F750: .4byte 0x08089FF0
_0803F754: .4byte 0x030013CC
_0803F758: .4byte 0x080FCC18
_0803F75C: .4byte 0x080FCC10
_0803F760: .4byte 0x0808A188
_0803F764: .4byte 0x02034BF0

	thumb_func_start sub_0803F768
sub_0803F768: @ 0x0803F768
	push {lr}
	movs r0, #0
	bl sub_0803F65C
	pop {r0}
	bx r0

	thumb_func_start sub_0803F774
sub_0803F774: @ 0x0803F774
	push {lr}
	movs r0, #1
	bl sub_0803F65C
	pop {r0}
	bx r0

	thumb_func_start sub_0803F780
sub_0803F780: @ 0x0803F780
	push {lr}
	movs r0, #2
	bl sub_0803F65C
	pop {r0}
	bx r0

	thumb_func_start sub_0803F78C
sub_0803F78C: @ 0x0803F78C
	push {lr}
	movs r0, #3
	bl sub_0803F65C
	pop {r0}
	bx r0

	thumb_func_start sub_0803F798
sub_0803F798: @ 0x0803F798
	push {lr}
	movs r0, #4
	bl sub_0803F65C
	pop {r0}
	bx r0

	thumb_func_start sub_0803F7A4
sub_0803F7A4: @ 0x0803F7A4
	push {lr}
	movs r0, #5
	bl sub_0803F65C
	pop {r0}
	bx r0

	thumb_func_start sub_0803F7B0
sub_0803F7B0: @ 0x0803F7B0
	push {lr}
	movs r0, #6
	bl sub_0803F65C
	pop {r0}
	bx r0

	thumb_func_start sub_0803F7BC
sub_0803F7BC: @ 0x0803F7BC
	push {lr}
	movs r0, #7
	bl sub_0803F65C
	pop {r0}
	bx r0

	thumb_func_start sub_0803F7C8
sub_0803F7C8: @ 0x0803F7C8
	push {lr}
	bl sub_08007BD4
	ldr r1, _0803F80C @ =0x030013CC
	ldr r1, [r1]
	mov ip, r1
	ldrb r3, [r0]
	lsls r1, r3, #2
	mov r0, ip
	adds r0, #0x68
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _0803F810 @ =0x08089FF0
	lsls r3, r3, #4
	adds r3, r3, r1
	ldrb r1, [r3]
	mov r2, ip
	adds r2, #0xb0
	ldrh r2, [r2]
	subs r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldrb r2, [r3, #1]
	mov r3, ip
	adds r3, #0xb2
	ldrh r3, [r3]
	subs r2, r2, r3
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl sub_08009A70
	pop {r0}
	bx r0
	.align 2, 0
_0803F80C: .4byte 0x030013CC
_0803F810: .4byte 0x08089FF0

	thumb_func_start sub_0803F814
sub_0803F814: @ 0x0803F814
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x18
	movs r5, #0
	ldr r1, _0803F850 @ =0x08089FF0
	lsrs r0, r0, #0x14
	adds r4, r0, r1
	ldrb r6, [r4]
_0803F822:
	ldr r0, _0803F854 @ =0x0808A1C8
	lsls r2, r5, #3
	adds r2, r2, r0
	ldrh r0, [r2]
	adds r0, r6, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r2, #2]
	ldrb r3, [r4, #1]
	adds r1, r1, r3
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldrb r3, [r2, #4]
	ldrb r2, [r4, #2]
	bl sub_0804007C
	adds r5, #1
	cmp r5, #2
	ble _0803F822
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803F850: .4byte 0x08089FF0
_0803F854: .4byte 0x0808A1C8

	thumb_func_start sub_0803F858
sub_0803F858: @ 0x0803F858
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	bl sub_08007BD4
	adds r6, r0, #0
	ldrb r5, [r6, #1]
	cmp r5, #1
	beq _0803F924
	cmp r5, #1
	bgt _0803F874
	cmp r5, #0
	beq _0803F882
	b _0803FA90
_0803F874:
	cmp r5, #2
	bne _0803F87A
	b _0803FA28
_0803F87A:
	cmp r5, #3
	bne _0803F880
	b _0803FA7C
_0803F880:
	b _0803FA90
_0803F882:
	ldr r5, _0803F910 @ =0x030013CC
	ldr r1, [r5]
	ldrb r0, [r6]
	lsls r0, r0, #2
	adds r1, #0x68
	adds r1, r1, r0
	ldr r0, [r1]
	ldr r0, [r0, #0x20]
	ldrb r1, [r0, #2]
	subs r1, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r0, #1
	bl sub_080099E0
	adds r4, r0, #0
	movs r1, #1
	bl sub_08009A34
	ldr r0, _0803F914 @ =0x08089FF0
	ldrb r2, [r6]
	lsls r2, r2, #4
	adds r2, r2, r0
	ldrb r1, [r2]
	ldr r3, [r5]
	adds r0, r3, #0
	adds r0, #0xb0
	ldrh r0, [r0]
	subs r1, r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldrb r2, [r2, #1]
	adds r3, #0xb2
	ldrh r0, [r3]
	subs r2, r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r4, #0
	bl sub_08009A70
	ldr r0, [r5]
	adds r0, #0xa4
	ldr r1, [r0]
	adds r0, r4, #0
	bl sub_08009A78
	adds r0, r4, #0
	movs r1, #7
	bl sub_08009AB4
	ldr r1, _0803F918 @ =0x0811CE60
	ldr r2, _0803F91C @ =0x0811CDD4
	adds r0, r4, #0
	movs r3, #1
	bl sub_08009ACC
	adds r0, r4, #0
	movs r1, #0
	bl sub_08009B40
	str r4, [r6, #4]
	movs r0, #1
	strb r0, [r6, #1]
	ldr r0, _0803F920 @ =0x000003FE
	bl m4aSongNumStart
	movs r0, #6
	bl sub_08007AC0
	b _0803FA90
	.align 2, 0
_0803F910: .4byte 0x030013CC
_0803F914: .4byte 0x08089FF0
_0803F918: .4byte 0x0811CE60
_0803F91C: .4byte 0x0811CDD4
_0803F920: .4byte 0x000003FE
_0803F924:
	ldr r7, _0803FA0C @ =0x030013CC
	ldr r3, [r7]
	ldrb r1, [r6]
	lsls r2, r1, #2
	adds r0, r3, #0
	adds r0, #0x68
	adds r0, r0, r2
	ldr r0, [r0]
	ldr r2, _0803FA10 @ =0x08089FF0
	mov r8, r2
	lsls r1, r1, #4
	add r1, r8
	ldrb r1, [r1]
	adds r3, #0xb0
	ldrh r4, [r3]
	ldr r3, _0803FA14 @ =0x0808A1E0
	ldr r2, _0803FA18 @ =0x03004400
	ldr r2, [r2]
	ands r2, r5
	lsls r2, r2, #1
	adds r2, r2, r3
	subs r1, r1, r4
	ldrh r2, [r2]
	adds r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r3, #8
	ldrsh r2, [r0, r3]
	bl sub_08009A70
	ldr r0, [r6, #4]
	ldrb r0, [r0, #1]
	lsrs r0, r0, #7
	cmp r0, #0
	bne _0803F96C
	b _0803FA90
_0803F96C:
	bl sub_0803EBCC
	ldr r0, [r6, #4]
	bl sub_08009A00
	ldr r4, [r7]
	ldrb r3, [r6]
	lsls r1, r3, #2
	adds r0, r4, #0
	adds r0, #0x68
	adds r0, r0, r1
	ldr r0, [r0]
	lsls r3, r3, #4
	add r3, r8
	ldrb r1, [r3]
	adds r2, r4, #0
	adds r2, #0xb0
	ldrh r2, [r2]
	subs r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldrb r2, [r3, #1]
	adds r3, r4, #0
	adds r3, #0xb2
	ldrh r3, [r3]
	subs r2, r2, r3
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl sub_08009A70
	ldr r2, [r7]
	ldrb r1, [r6]
	lsls r1, r1, #2
	adds r0, r2, #0
	adds r0, #0x68
	adds r0, r0, r1
	ldr r0, [r0]
	adds r2, #0xa4
	ldr r1, [r2]
	bl sub_08009A78
	ldr r1, [r7]
	ldrb r0, [r6]
	lsls r0, r0, #2
	adds r1, #0x68
	adds r1, r1, r0
	ldr r0, [r1]
	ldr r1, _0803FA1C @ =0x0811CE60
	ldr r2, _0803FA20 @ =0x0811CDD4
	movs r3, #2
	bl sub_08009ACC
	ldr r1, [r7]
	ldrb r0, [r6]
	lsls r0, r0, #2
	adds r1, #0x68
	adds r1, r1, r0
	ldr r0, [r1]
	movs r1, #7
	bl sub_08009AB4
	ldr r1, [r7]
	ldrb r0, [r6]
	lsls r0, r0, #2
	adds r1, #0x68
	adds r1, r1, r0
	ldr r0, [r1]
	movs r1, #0
	bl sub_08009B40
	ldrb r0, [r6]
	bl sub_0803F814
	ldr r0, _0803FA24 @ =0x000003FF
	bl m4aSongNumStart
	movs r0, #2
	strb r0, [r6, #1]
	b _0803FA90
	.align 2, 0
_0803FA0C: .4byte 0x030013CC
_0803FA10: .4byte 0x08089FF0
_0803FA14: .4byte 0x0808A1E0
_0803FA18: .4byte 0x03004400
_0803FA1C: .4byte 0x0811CE60
_0803FA20: .4byte 0x0811CDD4
_0803FA24: .4byte 0x000003FF
_0803FA28:
	ldr r4, _0803FA74 @ =0x030013CC
	ldr r0, [r4]
	ldrb r2, [r6]
	lsls r1, r2, #2
	adds r0, #0x68
	adds r0, r0, r1
	ldr r0, [r0]
	ldrb r0, [r0, #1]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _0803FA90
	ldr r1, _0803FA78 @ =0x08089FF0
	lsls r2, r2, #4
	adds r0, r1, #0
	adds r0, #8
	adds r0, r2, r0
	ldr r0, [r0]
	adds r2, r2, r1
	movs r3, #0x98
	lsls r3, r3, #1
	adds r1, r3, #0
	ldrb r2, [r2, #0xc]
	adds r1, r1, r2
	bl sub_08009554
	ldr r1, [r4]
	ldrb r0, [r6]
	lsls r0, r0, #2
	adds r1, #0x68
	adds r1, r1, r0
	ldr r0, [r1]
	movs r1, #0
	bl sub_08009A34
	movs r0, #3
	strb r0, [r6, #1]
	b _0803FA90
	.align 2, 0
_0803FA74: .4byte 0x030013CC
_0803FA78: .4byte 0x08089FF0
_0803FA7C:
	ldr r0, _0803FA9C @ =0x030013CC
	ldr r0, [r0]
	adds r0, #0x44
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _0803FA90
	ldrb r0, [r6]
	bl sub_0803F518
_0803FA90:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803FA9C: .4byte 0x030013CC

	thumb_func_start sub_0803FAA0
sub_0803FAA0: @ 0x0803FAA0
	push {r4, r5, lr}
	bl sub_08007BD4
	adds r5, r0, #0
	ldrb r2, [r5, #1]
	cmp r2, #1
	beq _0803FAF2
	cmp r2, #1
	bgt _0803FAB8
	cmp r2, #0
	beq _0803FAC0
	b _0803FC22
_0803FAB8:
	cmp r2, #2
	bne _0803FABE
	b _0803FBBC
_0803FABE:
	b _0803FC22
_0803FAC0:
	ldr r1, _0803FBB4 @ =0x08089FF0
	ldrb r0, [r5]
	lsls r0, r0, #4
	adds r0, r0, r1
	ldrb r0, [r0]
	str r0, [r5, #8]
	ldrb r0, [r5]
	lsls r0, r0, #4
	adds r0, r0, r1
	ldrb r0, [r0, #1]
	subs r0, #0x58
	str r0, [r5, #0xc]
	movs r0, #1
	strb r0, [r5, #1]
	strh r2, [r5, #2]
	ldr r0, _0803FBB8 @ =0x030013CC
	ldr r1, [r0]
	ldrb r0, [r5]
	lsls r0, r0, #2
	adds r1, #0x68
	adds r1, r1, r0
	ldr r0, [r1]
	movs r1, #1
	bl sub_08009A34
_0803FAF2:
	ldrh r0, [r5, #2]
	adds r0, #1
	strh r0, [r5, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xf
	subs r0, #1
	movs r1, #0xc
	bl __divsi3
	ldr r1, [r5, #0xc]
	adds r1, r1, r0
	str r1, [r5, #0xc]
	ldr r2, _0803FBB4 @ =0x08089FF0
	ldrb r0, [r5]
	lsls r0, r0, #4
	adds r0, r0, r2
	ldrb r0, [r0, #1]
	cmp r1, r0
	blt _0803FB82
	movs r0, #0
	strh r0, [r5, #2]
	ldrb r0, [r5]
	lsls r0, r0, #4
	adds r0, r0, r2
	ldrb r1, [r0, #1]
	str r1, [r5, #0xc]
	movs r0, #2
	strb r0, [r5, #1]
	ldr r0, [r5, #8]
	subs r0, #8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r4, _0803FBB8 @ =0x030013CC
	ldr r3, [r4]
	ldrb r2, [r5]
	lsls r2, r2, #2
	adds r3, #0x68
	adds r3, r3, r2
	ldr r2, [r3]
	ldr r2, [r2, #0x20]
	ldrb r2, [r2, #2]
	subs r2, #1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	movs r3, #0
	bl sub_0804007C
	ldr r0, [r5, #8]
	adds r0, #8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [r5, #0xc]
	subs r1, #4
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r3, [r4]
	ldrb r2, [r5]
	lsls r2, r2, #2
	adds r3, #0x68
	adds r3, r3, r2
	ldr r2, [r3]
	ldr r2, [r2, #0x20]
	ldrb r2, [r2, #2]
	subs r2, #1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	movs r3, #3
	bl sub_0804007C
	movs r0, #0xfb
	bl m4aSongNumStart
_0803FB82:
	ldr r0, _0803FBB8 @ =0x030013CC
	ldr r3, [r0]
	ldrb r1, [r5]
	lsls r1, r1, #2
	adds r0, r3, #0
	adds r0, #0x68
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, [r5, #8]
	adds r2, r3, #0
	adds r2, #0xb0
	ldrh r2, [r2]
	subs r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r2, [r5, #0xc]
	adds r3, #0xb2
	ldrh r3, [r3]
	subs r2, r2, r3
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl sub_08009A70
	b _0803FC22
	.align 2, 0
_0803FBB4: .4byte 0x08089FF0
_0803FBB8: .4byte 0x030013CC
_0803FBBC:
	ldr r3, _0803FC28 @ =0x08089FF0
	ldrb r1, [r5]
	lsls r1, r1, #4
	adds r1, r1, r3
	ldr r2, _0803FC2C @ =0x0808A1E4
	ldrh r0, [r5, #2]
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r2, #0
	ldrsh r0, [r0, r2]
	ldrb r1, [r1, #1]
	adds r0, r0, r1
	str r0, [r5, #0xc]
	ldrh r0, [r5, #2]
	adds r0, #1
	strh r0, [r5, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #8
	bls _0803FBF4
	ldrb r0, [r5]
	lsls r0, r0, #4
	adds r0, r0, r3
	ldrb r0, [r0, #1]
	str r0, [r5, #0xc]
	ldrb r0, [r5]
	bl sub_0803F518
_0803FBF4:
	ldr r0, _0803FC30 @ =0x030013CC
	ldr r3, [r0]
	ldrb r1, [r5]
	lsls r1, r1, #2
	adds r0, r3, #0
	adds r0, #0x68
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, [r5, #8]
	adds r2, r3, #0
	adds r2, #0xb0
	ldrh r2, [r2]
	subs r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r2, [r5, #0xc]
	adds r3, #0xb2
	ldrh r3, [r3]
	subs r2, r2, r3
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl sub_08009A70
_0803FC22:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803FC28: .4byte 0x08089FF0
_0803FC2C: .4byte 0x0808A1E4
_0803FC30: .4byte 0x030013CC

	thumb_func_start sub_0803FC34
sub_0803FC34: @ 0x0803FC34
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _0803FC68 @ =0x030013CC
	ldr r0, [r5]
	movs r1, #0x22
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	movs r1, #0
	strb r1, [r0]
	strh r1, [r0, #2]
	ldr r0, [r5]
	movs r1, #0x22
	ldrsh r0, [r0, r1]
	ldr r1, _0803FC6C @ =0x0808A204
	lsls r4, r4, #2
	adds r4, r4, r1
	ldr r1, [r4]
	bl sub_08007B84
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803FC68: .4byte 0x030013CC
_0803FC6C: .4byte 0x0808A204

	thumb_func_start sub_0803FC70
sub_0803FC70: @ 0x0803FC70
	push {lr}
	ldr r0, _0803FC8C @ =0x030013CC
	ldr r1, [r0]
	adds r1, #0x45
	ldrb r2, [r1]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	movs r0, #0
	bl sub_0803FC34
	pop {r0}
	bx r0
	.align 2, 0
_0803FC8C: .4byte 0x030013CC

	thumb_func_start sub_0803FC90
sub_0803FC90: @ 0x0803FC90
	push {r4, r5, lr}
	adds r3, r0, #0
	adds r5, r1, #0
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	ldr r4, _0803FCD0 @ =0x030013CC
	ldr r1, [r4]
	adds r1, #0x45
	ldrb r0, [r1]
	movs r2, #0x20
	orrs r0, r2
	strb r0, [r1]
	ldr r0, [r4]
	adds r0, #0x88
	ldr r0, [r0]
	adds r1, r3, #0
	bl sub_08009AFC
	ldr r0, [r4]
	adds r0, #0x88
	ldr r0, [r0]
	adds r1, r5, #0
	bl sub_08009B40
	movs r0, #1
	bl sub_0803FC34
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803FCD0: .4byte 0x030013CC

	thumb_func_start sub_0803FCD4
sub_0803FCD4: @ 0x0803FCD4
	push {lr}
	movs r0, #0xe
	movs r1, #0
	bl sub_0803FC90
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0803FCE4
sub_0803FCE4: @ 0x0803FCE4
	push {lr}
	movs r0, #0
	movs r1, #0xff
	bl sub_0803FC90
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0803FCF4
sub_0803FCF4: @ 0x0803FCF4
	push {lr}
	ldr r0, _0803FD08 @ =0x030013CC
	ldr r0, [r0]
	adds r0, #0x88
	ldr r0, [r0]
	bl sub_08009A00
	pop {r0}
	bx r0
	.align 2, 0
_0803FD08: .4byte 0x030013CC

	thumb_func_start sub_0803FD0C
sub_0803FD0C: @ 0x0803FD0C
	push {r4, r5, lr}
	movs r0, #1
	movs r1, #0xc0
	bl sub_080099E0
	adds r4, r0, #0
	movs r1, #1
	bl sub_08009A34
	ldr r5, _0803FDA8 @ =0x030013CC
	ldr r2, [r5]
	adds r0, r2, #0
	adds r0, #0xb0
	ldrh r0, [r0]
	movs r1, #0x80
	subs r1, r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r2, #0xb2
	ldrh r0, [r2]
	movs r2, #0x98
	subs r2, r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r4, #0
	bl sub_08009A70
	ldr r1, _0803FDAC @ =0x06010000
	adds r0, r4, #0
	bl sub_08009A78
	ldr r0, [r5]
	ldr r1, [r0, #0x30]
	adds r0, r4, #0
	movs r2, #0
	bl sub_08009BBC
	adds r0, r4, #0
	movs r1, #0
	bl sub_08009AB4
	ldr r1, _0803FDB0 @ =0x08192488
	ldr r2, _0803FDB4 @ =0x081923EC
	adds r0, r4, #0
	movs r3, #0
	bl sub_08009ACC
	adds r0, r4, #0
	movs r1, #0xff
	bl sub_08009B40
	ldr r1, [r5]
	adds r0, r1, #0
	adds r0, #0x88
	str r4, [r0]
	movs r2, #0x22
	ldrsh r0, [r1, r2]
	ldr r1, _0803FDB8 @ =sub_0803FCF4
	bl sub_08007BA0
	bl sub_0803FC70
	ldr r0, _0803FDBC @ =0x02034BF0
	ldr r1, _0803FDC0 @ =0x00000236
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #3
	bne _0803FDA0
	ldr r0, [r5]
	adds r0, #0x88
	ldr r0, [r0]
	movs r1, #0
	bl sub_08009A34
_0803FDA0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803FDA8: .4byte 0x030013CC
_0803FDAC: .4byte 0x06010000
_0803FDB0: .4byte 0x08192488
_0803FDB4: .4byte 0x081923EC
_0803FDB8: .4byte sub_0803FCF4
_0803FDBC: .4byte 0x02034BF0
_0803FDC0: .4byte 0x00000236

	thumb_func_start sub_0803FDC4
sub_0803FDC4: @ 0x0803FDC4
	push {lr}
	ldr r0, _0803FDF4 @ =0x030013CC
	ldr r3, [r0]
	adds r0, r3, #0
	adds r0, #0x88
	ldr r0, [r0]
	adds r1, r3, #0
	adds r1, #0xb0
	ldrh r2, [r1]
	movs r1, #0x80
	subs r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r2, r3, #0
	adds r2, #0xb2
	ldrh r3, [r2]
	movs r2, #0x98
	subs r2, r2, r3
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl sub_08009A70
	pop {r0}
	bx r0
	.align 2, 0
_0803FDF4: .4byte 0x030013CC

	thumb_func_start sub_0803FDF8
sub_0803FDF8: @ 0x0803FDF8
	push {r4, lr}
	ldr r4, _0803FE4C @ =0x030013CC
	ldr r3, [r4]
	adds r0, r3, #0
	adds r0, #0x88
	ldr r0, [r0]
	adds r1, r3, #0
	adds r1, #0xb0
	ldrh r2, [r1]
	movs r1, #0x80
	subs r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r2, r3, #0
	adds r2, #0xb2
	ldrh r3, [r2]
	movs r2, #0x98
	subs r2, r2, r3
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl sub_08009A70
	ldr r2, [r4]
	adds r0, r2, #0
	adds r0, #0x88
	ldr r0, [r0]
	ldrb r0, [r0, #1]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _0803FE44
	adds r2, #0x45
	ldrb r1, [r2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	bl sub_0803FC70
_0803FE44:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803FE4C: .4byte 0x030013CC

	thumb_func_start sub_0803FE50
sub_0803FE50: @ 0x0803FE50
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _0803FE84 @ =0x030013CC
	ldr r0, [r5]
	movs r1, #0x26
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	movs r1, #0
	strb r1, [r0]
	strh r1, [r0, #2]
	ldr r0, [r5]
	movs r1, #0x26
	ldrsh r0, [r0, r1]
	ldr r1, _0803FE88 @ =0x0808A20C
	lsls r4, r4, #2
	adds r4, r4, r1
	ldr r1, [r4]
	bl sub_08007B84
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803FE84: .4byte 0x030013CC
_0803FE88: .4byte 0x0808A20C

	thumb_func_start sub_0803FE8C
sub_0803FE8C: @ 0x0803FE8C
	push {lr}
	ldr r0, _0803FEA8 @ =0x030013CC
	ldr r1, [r0]
	adds r1, #0x45
	ldrb r2, [r1]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	movs r0, #0
	bl sub_0803FE50
	pop {r0}
	bx r0
	.align 2, 0
_0803FEA8: .4byte 0x030013CC

	thumb_func_start sub_0803FEAC
sub_0803FEAC: @ 0x0803FEAC
	push {lr}
	ldr r0, _0803FEC0 @ =0x030013CC
	ldr r0, [r0]
	adds r0, #0x98
	ldr r0, [r0]
	bl sub_08009A00
	pop {r0}
	bx r0
	.align 2, 0
_0803FEC0: .4byte 0x030013CC

	thumb_func_start sub_0803FEC4
sub_0803FEC4: @ 0x0803FEC4
	push {r4, r5, lr}
	movs r0, #1
	movs r1, #0xc0
	bl sub_080099E0
	adds r4, r0, #0
	movs r1, #1
	bl sub_08009A34
	ldr r5, _0803FF60 @ =0x030013CC
	ldr r2, [r5]
	adds r0, r2, #0
	adds r0, #0xb0
	ldrh r0, [r0]
	movs r1, #0x80
	subs r1, r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r2, #0xb2
	ldrh r0, [r2]
	movs r2, #0x98
	subs r2, r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r4, #0
	bl sub_08009A70
	ldr r1, _0803FF64 @ =0x06010C00
	adds r0, r4, #0
	bl sub_08009A78
	ldr r0, [r5]
	ldr r1, [r0, #0x38]
	adds r0, r4, #0
	movs r2, #0
	bl sub_08009BBC
	adds r0, r4, #0
	movs r1, #1
	bl sub_08009AB4
	ldr r1, _0803FF68 @ =0x0819775C
	ldr r2, _0803FF6C @ =0x08197704
	adds r0, r4, #0
	movs r3, #0
	bl sub_08009ACC
	adds r0, r4, #0
	movs r1, #0xff
	bl sub_08009B40
	ldr r1, [r5]
	adds r0, r1, #0
	adds r0, #0x98
	str r4, [r0]
	movs r2, #0x26
	ldrsh r0, [r1, r2]
	ldr r1, _0803FF70 @ =sub_0803FEAC
	bl sub_08007BA0
	bl sub_0803FE8C
	ldr r0, _0803FF74 @ =0x02034BF0
	ldr r1, _0803FF78 @ =0x00000236
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #3
	beq _0803FF58
	ldr r0, [r5]
	adds r0, #0x98
	ldr r0, [r0]
	movs r1, #0
	bl sub_08009A34
_0803FF58:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803FF60: .4byte 0x030013CC
_0803FF64: .4byte 0x06010C00
_0803FF68: .4byte 0x0819775C
_0803FF6C: .4byte 0x08197704
_0803FF70: .4byte sub_0803FEAC
_0803FF74: .4byte 0x02034BF0
_0803FF78: .4byte 0x00000236

	thumb_func_start sub_0803FF7C
sub_0803FF7C: @ 0x0803FF7C
	push {lr}
	ldr r0, _0803FFAC @ =0x030013CC
	ldr r3, [r0]
	adds r0, r3, #0
	adds r0, #0x98
	ldr r0, [r0]
	adds r1, r3, #0
	adds r1, #0xb0
	ldrh r2, [r1]
	movs r1, #0x80
	subs r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r2, r3, #0
	adds r2, #0xb2
	ldrh r3, [r2]
	movs r2, #0x98
	subs r2, r2, r3
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl sub_08009A70
	pop {r0}
	bx r0
	.align 2, 0
_0803FFAC: .4byte 0x030013CC

	thumb_func_start sub_0803FFB0
sub_0803FFB0: @ 0x0803FFB0
	push {r4, lr}
	ldr r4, _08040004 @ =0x030013CC
	ldr r3, [r4]
	adds r0, r3, #0
	adds r0, #0x98
	ldr r0, [r0]
	adds r1, r3, #0
	adds r1, #0xb0
	ldrh r2, [r1]
	movs r1, #0x80
	subs r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r2, r3, #0
	adds r2, #0xb2
	ldrh r3, [r2]
	movs r2, #0x98
	subs r2, r2, r3
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl sub_08009A70
	ldr r2, [r4]
	adds r0, r2, #0
	adds r0, #0x98
	ldr r0, [r0]
	ldrb r0, [r0, #1]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _0803FFFC
	adds r2, #0x45
	ldrb r1, [r2]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	bl sub_0803FE8C
_0803FFFC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08040004: .4byte 0x030013CC
