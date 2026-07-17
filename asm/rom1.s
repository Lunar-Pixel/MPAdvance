	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .text
	.ARM
	.syntax unified

	thumb_func_start sub_080100AC
sub_080100AC: @ 0x080100AC
	push {lr}
	ldr r1, _080100C4 @ =0x030013B0
	ldr r0, [r1]
	ldrb r0, [r0, #1]
	adds r2, r1, #0
	cmp r0, #5
	bhi _08010196
	lsls r0, r0, #2
	ldr r1, _080100C8 @ =_080100CC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080100C4: .4byte 0x030013B0
_080100C8: .4byte _080100CC
_080100CC: @ jump table
	.4byte _080100E4 @ case 0
	.4byte _080100FC @ case 1
	.4byte _08010128 @ case 2
	.4byte _08010196 @ case 3
	.4byte _08010146 @ case 4
	.4byte _08010174 @ case 5
_080100E4:
	ldr r0, _080100F4 @ =0x03004400
	ldr r0, [r0, #0x10]
	cmp r0, #0
	bne _080100F8
	ldr r1, [r2]
	movs r0, #1
	strb r0, [r1, #1]
	b _08010196
	.align 2, 0
_080100F4: .4byte 0x03004400
_080100F8:
	ldr r1, [r2]
	b _08010140
_080100FC:
	bl sub_08005934
	ldr r0, _08010120 @ =0x08082DC4
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	bl sub_08005A2C
	bl sub_08010B20
	bl sub_08010EEC
	ldr r0, _08010124 @ =0x030013B0
	ldr r1, [r0]
	movs r0, #2
	strb r0, [r1, #1]
	b _08010196
	.align 2, 0
_08010120: .4byte 0x08082DC4
_08010124: .4byte 0x030013B0
_08010128:
	ldr r1, [r2]
	adds r2, r1, #0
	adds r2, #0xc8
	ldrh r0, [r2]
	lsls r0, r0, #0x13
	lsrs r0, r0, #0x16
	cmp r0, #0
	bne _08010196
	ldrb r0, [r2]
	lsls r0, r0, #0x1d
	cmp r0, #0
	blt _08010196
_08010140:
	movs r0, #4
	strb r0, [r1, #1]
	b _08010196
_08010146:
	bl sub_08011274
	bl sub_08005934
	ldr r0, _0801016C @ =0x08082DD8
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	bl sub_08005A2C
	bl sub_08010B40
	ldr r0, _08010170 @ =0x030013B0
	ldr r1, [r0]
	movs r0, #5
	strb r0, [r1, #1]
	b _08010196
	.align 2, 0
_0801016C: .4byte 0x08082DD8
_08010170: .4byte 0x030013B0
_08010174:
	ldr r0, [r2]
	adds r0, #0xc8
	ldrb r0, [r0]
	lsls r0, r0, #0x1d
	cmp r0, #0
	blt _08010196
	ldr r0, _0801019C @ =0x03004440
	ldrb r1, [r0]
	movs r2, #1
	orrs r1, r2
	strb r1, [r0]
	movs r0, #0xc
	bl ChangeGameState_08008790
	movs r0, #7
	bl sub_0800FD90
_08010196:
	pop {r0}
	bx r0
	.align 2, 0
_0801019C: .4byte 0x03004440

	thumb_func_start sub_080101A0
sub_080101A0: @ 0x080101A0
	push {lr}
	ldr r0, _080101B8 @ =0x030013B0
	ldr r0, [r0]
	ldrb r0, [r0, #1]
	cmp r0, #0
	bne _080101B2
	movs r0, #6
	bl sub_0800FD90
_080101B2:
	pop {r0}
	bx r0
	.align 2, 0
_080101B8: .4byte 0x030013B0

	thumb_func_start sub_080101BC
sub_080101BC: @ 0x080101BC
	push {r4, lr}
	ldr r4, _080101D0 @ =0x030013B0
	ldr r0, [r4]
	ldrb r0, [r0, #1]
	cmp r0, #0
	beq _080101D4
	cmp r0, #1
	beq _080101F8
	b _08010204
	.align 2, 0
_080101D0: .4byte 0x030013B0
_080101D4:
	bl sub_08011274
	bl sub_08005934
	ldr r0, _080101F4 @ =0x08082E34
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	bl sub_08005A2C
	ldr r1, [r4]
	movs r0, #1
	strb r0, [r1, #1]
	b _08010204
	.align 2, 0
_080101F4: .4byte 0x08082E34
_080101F8:
	movs r0, #0x2b
	bl ChangeGameState_08008790
	movs r0, #7
	bl sub_0800FD90
_08010204:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0801020C
sub_0801020C: @ 0x0801020C
	push {r4, lr}
	ldr r4, _08010220 @ =0x030013B0
	ldr r1, [r4]
	ldrb r0, [r1, #1]
	cmp r0, #0
	beq _08010224
	cmp r0, #1
	beq _0801023C
	b _0801023E
	.align 2, 0
_08010220: .4byte 0x030013B0
_08010224:
	ldr r0, _08010238 @ =0x030056F0
	movs r1, #5
	bl m4aMPlayFadeOut
	bl sub_0800B700
	ldr r1, [r4]
	movs r0, #1
	strb r0, [r1, #1]
	b _0801023E
	.align 2, 0
_08010238: .4byte 0x030056F0
_0801023C:
	strb r0, [r1, #6]
_0801023E:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08010244
sub_08010244: @ 0x08010244
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _08010278 @ =0x030013B0
	ldr r0, [r5]
	movs r1, #8
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	adds r6, r0, #0
	ldr r0, [r5]
	movs r1, #8
	ldrsh r0, [r0, r1]
	ldr r1, _0801027C @ =0x080802D0
	lsls r4, r4, #2
	adds r4, r4, r1
	ldr r1, [r4]
	bl sub_08007B84
	movs r0, #0
	strb r0, [r6]
	strh r0, [r6, #2]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08010278: .4byte 0x030013B0
_0801027C: .4byte 0x080802D0

	thumb_func_start sub_08010280
sub_08010280: @ 0x08010280
	push {lr}
	ldr r0, _0801029C @ =0x030013B0
	ldr r1, [r0]
	adds r1, #0xc8
	ldrb r2, [r1]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	movs r0, #0
	bl sub_08010244
	pop {r0}
	bx r0
	.align 2, 0
_0801029C: .4byte 0x030013B0

	thumb_func_start sub_080102A0
sub_080102A0: @ 0x080102A0
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r0, _080102C0 @ =0x030013B0
	ldr r0, [r0]
	movs r1, #8
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	adds r2, r0, #0
	cmp r5, r4
	bne _080102C4
	bl sub_08010280
	b _080102F6
	.align 2, 0
_080102C0: .4byte 0x030013B0
_080102C4:
	str r5, [r2, #4]
	str r4, [r2, #8]
	subs r0, r5, r4
	adds r1, r0, #0
	cmp r0, #0
	bge _080102D2
	rsbs r1, r0, #0
_080102D2:
	cmp r1, #0x77
	bhi _080102DE
	cmp r0, #0
	bge _080102E0
	rsbs r0, r0, #0
	b _080102E0
_080102DE:
	movs r0, #0x78
_080102E0:
	strh r0, [r2, #0xc]
	ldr r0, _080102FC @ =0x030013B0
	ldr r1, [r0]
	adds r1, #0xc8
	ldrb r0, [r1]
	movs r2, #1
	orrs r0, r2
	strb r0, [r1]
	movs r0, #1
	bl sub_08010244
_080102F6:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080102FC: .4byte 0x030013B0

	thumb_func_start sub_08010300
sub_08010300: @ 0x08010300
	push {r4, r5, lr}
	ldr r4, _08010328 @ =0x030013B0
	ldr r0, [r4]
	ldr r0, [r0, #0x30]
	bl sub_08009A00
	movs r5, #0
_0801030E:
	ldr r0, [r4]
	lsls r1, r5, #2
	adds r0, #0x34
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_08009A00
	adds r5, #1
	cmp r5, #5
	ble _0801030E
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08010328: .4byte 0x030013B0

	thumb_func_start sub_0801032C
sub_0801032C: @ 0x0801032C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	bl sub_08007BD4
	movs r0, #2
	movs r1, #0x80
	bl sub_080099E0
	adds r6, r0, #0
	movs r1, #1
	bl sub_08009A34
	adds r0, r6, #0
	movs r1, #0x50
	movs r2, #0
	bl sub_08009A70
	ldr r4, _08010410 @ =0x030013B0
	ldr r0, [r4]
	adds r0, #0xd0
	ldr r1, [r0]
	adds r0, r6, #0
	bl sub_08009A78
	adds r0, r6, #0
	movs r1, #7
	bl sub_08009AB4
	ldr r1, _08010414 @ =0x0809C860
	ldr r2, _08010418 @ =0x0809C830
	adds r0, r6, #0
	movs r3, #0xa
	bl sub_08009ACC
	adds r0, r6, #0
	movs r1, #0
	bl sub_08009B40
	ldr r0, [r4]
	str r6, [r0, #0x30]
	movs r0, #0
	mov sl, r0
	ldr r0, _0801041C @ =0x03004400
	ldr r0, [r0, #0x10]
	mov r8, r0
	movs r7, #0
	movs r2, #0
	mov sb, r2
_08010392:
	cmp r7, #5
	bne _0801039A
	movs r0, #1
	mov sl, r0
_0801039A:
	ldr r0, _08010420 @ =0x08083A18
	add r0, sb
	ldr r4, [r0]
	mov r0, r8
	adds r1, r4, #0
	bl __udivsi3
	adds r5, r0, #0
	mov r0, r8
	adds r1, r4, #0
	bl __umodsi3
	mov r8, r0
	movs r0, #2
	movs r1, #0x80
	bl sub_080099E0
	adds r6, r0, #0
	ldr r1, _08010424 @ =0x08083A0C
	lsls r0, r7, #1
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r0, r6, #0
	movs r2, #4
	bl sub_08009A70
	ldr r0, _08010410 @ =0x030013B0
	ldr r0, [r0]
	adds r0, #0xd0
	ldr r1, [r0]
	adds r0, r6, #0
	bl sub_08009A78
	adds r0, r6, #0
	movs r1, #7
	bl sub_08009AB4
	lsls r3, r5, #0x18
	lsrs r3, r3, #0x18
	adds r0, r6, #0
	ldr r1, _08010414 @ =0x0809C860
	ldr r2, _08010418 @ =0x0809C830
	bl sub_08009ACC
	adds r0, r6, #0
	movs r1, #0
	bl sub_08009B40
	cmp r5, #0
	bne _08010428
	mov r0, sl
	cmp r0, #0
	bne _08010428
	adds r0, r6, #0
	movs r1, #0
	bl sub_08009A34
	b _08010434
	.align 2, 0
_08010410: .4byte 0x030013B0
_08010414: .4byte 0x0809C860
_08010418: .4byte 0x0809C830
_0801041C: .4byte 0x03004400
_08010420: .4byte 0x08083A18
_08010424: .4byte 0x08083A0C
_08010428:
	movs r2, #1
	mov sl, r2
	adds r0, r6, #0
	movs r1, #1
	bl sub_08009A34
_08010434:
	ldr r0, _08010468 @ =0x030013B0
	ldr r1, [r0]
	adds r0, r1, #0
	adds r0, #0x34
	add r0, sb
	str r6, [r0]
	movs r0, #4
	add sb, r0
	adds r7, #1
	cmp r7, #5
	ble _08010392
	movs r2, #8
	ldrsh r0, [r1, r2]
	ldr r1, _0801046C @ =sub_08010300
	bl sub_08007BA0
	bl sub_08010280
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08010468: .4byte 0x030013B0
_0801046C: .4byte sub_08010300

	thumb_func_start sub_08010470
sub_08010470: @ 0x08010470
	bx lr
	.align 2, 0

	thumb_func_start sub_08010474
sub_08010474: @ 0x08010474
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	bl sub_08007BD4
	adds r6, r0, #0
	ldrb r0, [r6]
	cmp r0, #0
	beq _08010490
	cmp r0, #1
	beq _08010544
	b _08010548
_08010490:
	ldr r1, [r6, #8]
	ldr r4, [r6, #4]
	subs r1, r1, r4
	ldrh r0, [r6, #2]
	adds r0, #1
	strh r0, [r6, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	muls r0, r1, r0
	ldrh r1, [r6, #0xc]
	bl __udivsi3
	adds r4, r4, r0
	mov r8, r4
	movs r0, #0
	mov sl, r0
	mov sb, r0
	movs r7, #0
_080104B4:
	ldr r0, _08010504 @ =0x08083A18
	adds r0, r7, r0
	ldr r4, [r0]
	mov r0, r8
	adds r1, r4, #0
	bl __udivsi3
	adds r5, r0, #0
	mov r0, r8
	adds r1, r4, #0
	bl __umodsi3
	mov r8, r0
	mov r1, sb
	cmp r1, #5
	bne _080104D8
	movs r0, #1
	mov sl, r0
_080104D8:
	ldr r4, _08010508 @ =0x030013B0
	ldr r0, [r4]
	adds r0, #0x34
	adds r0, r0, r7
	ldr r0, [r0]
	lsls r1, r5, #0x18
	lsrs r1, r1, #0x18
	bl sub_08009AFC
	cmp r5, #0
	bne _0801050C
	mov r1, sl
	cmp r1, #0
	bne _0801050C
	ldr r0, [r4]
	adds r0, #0x34
	adds r0, r0, r7
	ldr r0, [r0]
	movs r1, #0
	bl sub_08009A34
	b _08010520
	.align 2, 0
_08010504: .4byte 0x08083A18
_08010508: .4byte 0x030013B0
_0801050C:
	ldr r0, _08010540 @ =0x030013B0
	ldr r0, [r0]
	adds r0, #0x34
	adds r0, r0, r7
	ldr r0, [r0]
	movs r1, #1
	bl sub_08009A34
	movs r0, #1
	mov sl, r0
_08010520:
	adds r7, #4
	movs r1, #1
	add sb, r1
	mov r0, sb
	cmp r0, #5
	ble _080104B4
	ldrh r0, [r6, #2]
	ldrh r1, [r6, #0xc]
	cmp r0, r1
	blo _08010548
	movs r0, #0
	strh r0, [r6, #2]
	movs r0, #1
	strb r0, [r6]
	b _08010548
	.align 2, 0
_08010540: .4byte 0x030013B0
_08010544:
	bl sub_08010280
_08010548:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08010558
sub_08010558: @ 0x08010558
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _0801058C @ =0x030013B0
	ldr r0, [r5]
	movs r1, #0xa
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	adds r6, r0, #0
	ldr r0, [r5]
	movs r1, #0xa
	ldrsh r0, [r0, r1]
	ldr r1, _08010590 @ =0x080802D8
	lsls r4, r4, #2
	adds r4, r4, r1
	ldr r1, [r4]
	bl sub_08007B84
	movs r0, #0
	strb r0, [r6]
	strh r0, [r6, #2]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801058C: .4byte 0x030013B0
_08010590: .4byte 0x080802D8

	thumb_func_start sub_08010594
sub_08010594: @ 0x08010594
	push {lr}
	ldr r0, _080105B0 @ =0x030013B0
	ldr r1, [r0]
	adds r1, #0xc8
	ldrb r2, [r1]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	movs r0, #0
	bl sub_08010558
	pop {r0}
	bx r0
	.align 2, 0
_080105B0: .4byte 0x030013B0

	thumb_func_start sub_080105B4
sub_080105B4: @ 0x080105B4
	push {r4, lr}
	ldr r4, _080105E0 @ =0x030013B0
	ldr r0, [r4]
	ldr r0, [r0, #0x4c]
	bl sub_08009A00
	ldr r0, [r4]
	ldr r0, [r0, #0x50]
	bl sub_08009A00
	ldr r0, [r4]
	ldr r0, [r0, #0x54]
	bl sub_08009A00
	ldr r0, [r4]
	ldr r0, [r0, #0x58]
	bl sub_08009A00
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080105E0: .4byte 0x030013B0

	thumb_func_start sub_080105E4
sub_080105E4: @ 0x080105E4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	bl sub_08007BD4
	str r0, [sp]
	movs r6, #0
	movs r7, #0
_080105FA:
	movs r5, #0
	lsls r0, r7, #1
	lsls r1, r7, #3
	mov sb, r1
	adds r2, r7, #1
	mov sl, r2
	ldr r1, _08010658 @ =0x0808029A
	adds r0, r0, r1
	mov r8, r0
_0801060C:
	movs r0, #2
	movs r1, #0xff
	bl sub_080099E0
	adds r4, r0, #0
	movs r1, #1
	bl sub_08009A34
	mov r2, r8
	movs r0, #0
	ldrsh r1, [r2, r0]
	lsls r0, r5, #5
	movs r2, #0x28
	subs r2, r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r4, #0
	bl sub_08009A70
	ldr r0, _0801065C @ =0x030013B0
	ldr r0, [r0]
	adds r0, #0xcc
	ldr r1, [r0]
	adds r0, r4, #0
	bl sub_08009A78
	adds r0, r4, #0
	movs r1, #2
	bl sub_08009AB4
	cmp r5, #0
	bne _08010660
	movs r0, #3
	bl sub_0800B828
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	b _0801067C
	.align 2, 0
_08010658: .4byte 0x0808029A
_0801065C: .4byte 0x030013B0
_08010660:
	movs r0, #2
	bl sub_0800B828
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r0, r6, r0
	adds r0, #1
	movs r1, #3
	bl __modsi3
	adds r6, r0, #0
	ldr r1, [sp]
	adds r0, r1, r7
	strb r6, [r0, #4]
_0801067C:
	ldr r1, _080106EC @ =0x08080294
	lsls r0, r6, #1
	adds r0, r0, r1
	ldrb r3, [r0]
	adds r0, r4, #0
	ldr r1, _080106F0 @ =0x080E65D4
	ldr r2, _080106F4 @ =0x080E6580
	bl sub_08009ACC
	adds r0, r4, #0
	movs r1, #0
	bl sub_08009B40
	adds r0, r4, #0
	movs r1, #1
	bl sub_08009B6C
	ldr r0, _080106F8 @ =0x030013B0
	ldr r2, [r0]
	lsls r1, r5, #2
	add r1, sb
	adds r0, r2, #0
	adds r0, #0x4c
	adds r0, r0, r1
	str r4, [r0]
	adds r5, #1
	cmp r5, #1
	ble _0801060C
	mov r7, sl
	cmp r7, #1
	ble _080105FA
	ldr r1, _080106FC @ =0x030024E0
	adds r3, r1, #0
	adds r3, #0x4a
	movs r0, #0xc4
	lsls r0, r0, #4
	strh r0, [r3]
	adds r1, #0x4c
	movs r0, #0x10
	strh r0, [r1]
	movs r1, #0xa
	ldrsh r0, [r2, r1]
	ldr r1, _08010700 @ =sub_080105B4
	bl sub_08007BA0
	bl sub_08010594
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080106EC: .4byte 0x08080294
_080106F0: .4byte 0x080E65D4
_080106F4: .4byte 0x080E6580
_080106F8: .4byte 0x030013B0
_080106FC: .4byte 0x030024E0
_08010700: .4byte sub_080105B4

	thumb_func_start sub_08010704
sub_08010704: @ 0x08010704
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	bl sub_08007BD4
	adds r6, r0, #0
	movs r7, #0
	movs r0, #0
	mov sl, r0
	ldrh r0, [r6, #2]
	adds r0, #1
	strh r0, [r6, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x1f
	bls _0801072E
	strh r7, [r6, #2]
	movs r1, #1
	mov sl, r1
_0801072E:
	movs r2, #0
	mov r8, r2
_08010732:
	movs r5, #0
	movs r0, #1
	add r0, r8
	mov sb, r0
	mov r1, r8
	lsls r4, r1, #3
_0801073E:
	mov r2, sl
	cmp r2, #0
	beq _08010782
	cmp r5, #0
	bne _08010750
	mov r1, r8
	adds r0, r6, r1
	ldrb r7, [r0, #4]
	b _0801076C
_08010750:
	movs r0, #2
	bl sub_0800B828
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r0, r7, r0
	adds r0, #1
	movs r1, #3
	bl __modsi3
	adds r7, r0, #0
	mov r2, r8
	adds r0, r6, r2
	strb r7, [r0, #4]
_0801076C:
	ldr r0, _080107C0 @ =0x030013B0
	ldr r0, [r0]
	adds r0, #0x4c
	adds r0, r0, r4
	ldr r0, [r0]
	ldr r2, _080107C4 @ =0x08080294
	lsls r1, r7, #1
	adds r1, r1, r2
	ldrb r1, [r1]
	bl sub_08009AFC
_08010782:
	ldr r0, _080107C0 @ =0x030013B0
	ldr r0, [r0]
	adds r0, #0x4c
	adds r0, r0, r4
	ldr r0, [r0]
	movs r2, #6
	ldrsh r1, [r0, r2]
	ldrh r2, [r6, #2]
	adds r2, #0x28
	lsls r3, r5, #5
	subs r2, r2, r3
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl sub_08009A70
	adds r4, #4
	adds r5, #1
	cmp r5, #1
	ble _0801073E
	mov r8, sb
	mov r0, r8
	cmp r0, #1
	ble _08010732
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080107C0: .4byte 0x030013B0
_080107C4: .4byte 0x08080294

	thumb_func_start sub_080107C8
sub_080107C8: @ 0x080107C8
	ldr r0, _080107F0 @ =0x030013B0
	ldr r2, [r0]
	adds r2, #0xe8
	ldr r1, [r2]
	ldr r0, _080107F4 @ =0x030024E0
	movs r3, #0x9f
	lsls r3, r3, #1
	adds r1, r1, r3
	ldrh r1, [r1]
	adds r0, #0x4c
	strh r1, [r0]
	ldr r1, _080107F8 @ =0x040000B0
	ldr r0, [r2]
	str r0, [r1]
	ldr r0, _080107FC @ =0x04000052
	str r0, [r1, #4]
	ldr r0, _08010800 @ =0xA2400001
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	bx lr
	.align 2, 0
_080107F0: .4byte 0x030013B0
_080107F4: .4byte 0x030024E0
_080107F8: .4byte 0x040000B0
_080107FC: .4byte 0x04000052
_08010800: .4byte 0xA2400001

	thumb_func_start sub_08010804
sub_08010804: @ 0x08010804
	push {lr}
	ldr r0, _0801081C @ =sub_080107C8
	bl sub_080094F4
	ldr r0, _08010820 @ =0x030013B0
	ldr r0, [r0]
	adds r0, #0xe8
	ldr r0, [r0]
	bl sub_08007CF8
	pop {r0}
	bx r0
	.align 2, 0
_0801081C: .4byte sub_080107C8
_08010820: .4byte 0x030013B0

	thumb_func_start sub_08010824
sub_08010824: @ 0x08010824
	push {r4, r5, r6, lr}
	sub sp, #4
	movs r0, #0xa0
	lsls r0, r0, #1
	bl sub_08007CE8
	adds r1, r0, #0
	ldr r4, _0801089C @ =0x030013B0
	ldr r0, [r4]
	adds r0, #0xe8
	str r1, [r0]
	mov r2, sp
	movs r3, #0x80
	lsls r3, r3, #5
	adds r0, r3, #0
	strh r0, [r2]
	ldr r2, _080108A0 @ =0x010000A0
	mov r0, sp
	bl CpuSet
	ldr r0, [r4]
	adds r0, #0xe8
	ldr r6, [r0]
	movs r4, #0
	ldr r5, _080108A4 @ =0x080802DC
_08010856:
	adds r0, r4, #0
	adds r0, #0xc7
	movs r1, #0xa0
	bl __modsi3
	lsls r0, r0, #1
	adds r0, r0, r6
	ldrh r1, [r5]
	strh r1, [r0]
	adds r5, #2
	adds r4, #1
	cmp r4, #0x1f
	ble _08010856
	ldr r4, _0801089C @ =0x030013B0
	ldr r0, [r4]
	movs r1, #0xc
	ldrsh r0, [r0, r1]
	ldr r1, _080108A8 @ =sub_08010804
	bl sub_08007BA0
	ldr r0, [r4]
	movs r3, #0xc
	ldrsh r0, [r0, r3]
	ldr r1, _080108AC @ =sub_080108B4
	bl sub_08007B84
	ldr r0, _080108B0 @ =sub_080107C8
	movs r1, #0xff
	bl sub_08009460
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801089C: .4byte 0x030013B0
_080108A0: .4byte 0x010000A0
_080108A4: .4byte 0x080802DC
_080108A8: .4byte sub_08010804
_080108AC: .4byte sub_080108B4
_080108B0: .4byte sub_080107C8

	thumb_func_start sub_080108B4
sub_080108B4: @ 0x080108B4
	bx lr
	.align 2, 0

	thumb_func_start sub_080108B8
sub_080108B8: @ 0x080108B8
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	adds r5, r0, #0
	adds r4, r1, #0
	lsls r5, r5, #0x18
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r6, _08010904 @ =0x030013B0
	ldr r0, [r6]
	lsrs r5, r5, #0x17
	adds r0, #0xe
	adds r0, r0, r5
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	mov r8, r0
	ldr r0, [r6]
	adds r0, #0xe
	adds r0, r0, r5
	movs r1, #0
	ldrsh r0, [r0, r1]
	ldr r1, _08010908 @ =0x0808031C
	lsls r4, r4, #2
	adds r4, r4, r1
	ldr r1, [r4]
	bl sub_08007B84
	movs r0, #0
	mov r1, r8
	strb r0, [r1, #1]
	strh r0, [r1, #2]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08010904: .4byte 0x030013B0
_08010908: .4byte 0x0808031C

	thumb_func_start sub_0801090C
sub_0801090C: @ 0x0801090C
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0
	bl sub_080108B8
	pop {r0}
	bx r0

	thumb_func_start sub_0801091C
sub_0801091C: @ 0x0801091C
	push {r4, r5, lr}
	movs r4, #0
	ldr r5, _0801093C @ =0x030013B0
_08010922:
	ldr r0, [r5]
	lsls r1, r4, #2
	adds r0, #0x5c
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_08009A00
	adds r4, #1
	cmp r4, #3
	ble _08010922
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801093C: .4byte 0x030013B0

	thumb_func_start sub_08010940
sub_08010940: @ 0x08010940
	push {r4, r5, r6, lr}
	bl sub_08007BD4
	adds r5, r0, #0
	movs r0, #3
	movs r1, #0xff
	bl sub_080099E0
	adds r4, r0, #0
	movs r1, #1
	bl sub_08009A34
	ldr r2, _080109B8 @ =0x0808029E
	ldrb r0, [r5]
	lsls r0, r0, #2
	adds r1, r0, r2
	movs r3, #0
	ldrsh r1, [r1, r3]
	adds r2, #2
	adds r0, r0, r2
	movs r3, #0
	ldrsh r2, [r0, r3]
	adds r0, r4, #0
	bl sub_08009A70
	ldr r6, _080109BC @ =0x030013B0
	ldr r0, [r6]
	adds r0, #0xcc
	ldr r1, [r0]
	adds r0, r4, #0
	bl sub_08009A78
	adds r0, r4, #0
	movs r1, #2
	bl sub_08009AB4
	ldr r1, _080109C0 @ =0x080E65D4
	ldr r2, _080109C4 @ =0x080E6580
	ldrb r3, [r5]
	lsrs r3, r3, #1
	adds r3, #3
	adds r0, r4, #0
	bl sub_08009ACC
	adds r0, r4, #0
	movs r1, #0
	bl sub_08009B40
	ldr r1, [r6]
	ldrb r0, [r5]
	lsls r0, r0, #2
	adds r1, #0x5c
	adds r1, r1, r0
	str r4, [r1]
	ldrb r0, [r5]
	bl sub_0801090C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080109B8: .4byte 0x0808029E
_080109BC: .4byte 0x030013B0
_080109C0: .4byte 0x080E65D4
_080109C4: .4byte 0x080E6580

	thumb_func_start sub_080109C8
sub_080109C8: @ 0x080109C8
	push {r4, r5, lr}
	movs r4, #0
_080109CC:
	ldr r0, _08010A04 @ =sub_08010940
	movs r1, #0x45
	movs r2, #0
	bl sub_08007968
	ldr r5, _08010A08 @ =0x030013B0
	ldr r1, [r5]
	lsls r2, r4, #1
	adds r1, #0xe
	adds r1, r1, r2
	strh r0, [r1]
	movs r2, #0
	ldrsh r0, [r1, r2]
	bl sub_08007BBC
	strb r4, [r0]
	adds r4, #1
	cmp r4, #3
	ble _080109CC
	ldr r0, [r5]
	movs r1, #0xe
	ldrsh r0, [r0, r1]
	ldr r1, _08010A0C @ =sub_0801091C
	bl sub_08007BA0
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08010A04: .4byte sub_08010940
_08010A08: .4byte 0x030013B0
_08010A0C: .4byte sub_0801091C

	thumb_func_start sub_08010A10
sub_08010A10: @ 0x08010A10
	push {r4, r5, r6, lr}
	bl sub_08007BD4
	adds r4, r0, #0
	ldr r0, _08010A34 @ =0x030013B0
	ldr r0, [r0]
	ldrb r2, [r4]
	lsls r1, r2, #2
	adds r0, #0x5c
	adds r0, r0, r1
	ldr r6, [r0]
	ldrb r5, [r4, #1]
	cmp r5, #0
	beq _08010A38
	cmp r5, #1
	beq _08010A5A
	b _08010A94
	.align 2, 0
_08010A34: .4byte 0x030013B0
_08010A38:
	adds r0, r1, r2
	lsls r0, r0, #2
	bl sub_08007AC0
	movs r0, #6
	ldrsh r1, [r6, r0]
	adds r0, r6, #0
	movs r2, #0x68
	bl sub_08009A70
	strh r5, [r4, #2]
	movs r0, #1
	strb r0, [r4, #1]
	movs r0, #0xd0
	lsls r0, r0, #7
	str r0, [r4, #4]
	b _08010A94
_08010A5A:
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #7
	ldr r1, _08010A9C @ =0xFFFFFF00
	adds r0, r0, r1
	movs r1, #0x78
	bl __divsi3
	ldr r1, [r4, #4]
	subs r1, r1, r0
	str r1, [r4, #4]
	ldr r0, _08010AA0 @ =0xFFFFD600
	cmp r1, r0
	bgt _08010A84
	movs r0, #0
	strh r0, [r4, #2]
	movs r0, #0xd0
	lsls r0, r0, #7
	str r0, [r4, #4]
_08010A84:
	movs r0, #6
	ldrsh r1, [r6, r0]
	ldr r2, [r4, #4]
	lsls r2, r2, #8
	asrs r2, r2, #0x10
	adds r0, r6, #0
	bl sub_08009A70
_08010A94:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08010A9C: .4byte 0xFFFFFF00
_08010AA0: .4byte 0xFFFFD600

	thumb_func_start sub_08010AA4
sub_08010AA4: @ 0x08010AA4
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _08010AD8 @ =0x030013B0
	ldr r0, [r5]
	movs r1, #0x16
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	adds r6, r0, #0
	ldr r0, [r5]
	movs r1, #0x16
	ldrsh r0, [r0, r1]
	ldr r1, _08010ADC @ =0x08080320
	lsls r4, r4, #2
	adds r4, r4, r1
	ldr r1, [r4]
	bl sub_08007B84
	movs r0, #0
	strb r0, [r6]
	strh r0, [r6, #2]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08010AD8: .4byte 0x030013B0
_08010ADC: .4byte 0x08080320

	thumb_func_start sub_08010AE0
sub_08010AE0: @ 0x08010AE0
	push {lr}
	ldr r0, _08010AFC @ =0x030013B0
	ldr r1, [r0]
	adds r1, #0xc8
	ldrb r2, [r1]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	movs r0, #0
	bl sub_08010AA4
	pop {r0}
	bx r0
	.align 2, 0
_08010AFC: .4byte 0x030013B0

	thumb_func_start sub_08010B00
sub_08010B00: @ 0x08010B00
	push {lr}
	ldr r0, _08010B1C @ =0x030013B0
	ldr r1, [r0]
	adds r1, #0xc8
	ldrb r0, [r1]
	movs r2, #4
	orrs r0, r2
	strb r0, [r1]
	movs r0, #1
	bl sub_08010AA4
	pop {r0}
	bx r0
	.align 2, 0
_08010B1C: .4byte 0x030013B0

	thumb_func_start sub_08010B20
sub_08010B20: @ 0x08010B20
	push {lr}
	ldr r0, _08010B3C @ =0x030013B0
	ldr r1, [r0]
	adds r1, #0xc8
	ldrb r0, [r1]
	movs r2, #4
	orrs r0, r2
	strb r0, [r1]
	movs r0, #2
	bl sub_08010AA4
	pop {r0}
	bx r0
	.align 2, 0
_08010B3C: .4byte 0x030013B0

	thumb_func_start sub_08010B40
sub_08010B40: @ 0x08010B40
	push {lr}
	ldr r0, _08010B5C @ =0x030013B0
	ldr r1, [r0]
	adds r1, #0xc8
	ldrb r0, [r1]
	movs r2, #4
	orrs r0, r2
	strb r0, [r1]
	movs r0, #3
	bl sub_08010AA4
	pop {r0}
	bx r0
	.align 2, 0
_08010B5C: .4byte 0x030013B0

	thumb_func_start sub_08010B60
sub_08010B60: @ 0x08010B60
	push {r4, lr}
	ldr r4, _08010B7C @ =0x030013B0
	ldr r0, [r4]
	ldr r0, [r0, #0x6c]
	bl sub_08009A00
	ldr r0, [r4]
	adds r0, #0xc0
	ldr r0, [r0]
	bl sub_08009A00
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08010B7C: .4byte 0x030013B0

	thumb_func_start sub_08010B80
sub_08010B80: @ 0x08010B80
	push {r4, r5, lr}
	ldr r0, _08010C18 @ =0x03004440
	ldrb r1, [r0]
	movs r0, #5
	ands r0, r1
	cmp r0, #0
	beq _08010B9E
	bl sub_08010C30
	ldr r0, _08010C1C @ =0x030013B0
	ldr r0, [r0]
	ldr r0, [r0, #0x6c]
	movs r1, #1
	bl sub_08009A34
_08010B9E:
	ldr r0, _08010C20 @ =0x08080320
	ldr r0, [r0]
	movs r1, #0x41
	movs r2, #0
	bl sub_08007968
	ldr r5, _08010C1C @ =0x030013B0
	ldr r1, [r5]
	strh r0, [r1, #0x16]
	movs r2, #0x16
	ldrsh r0, [r1, r2]
	bl sub_08007BBC
	ldr r0, [r5]
	movs r1, #0x16
	ldrsh r0, [r0, r1]
	ldr r1, _08010C24 @ =sub_08010B60
	bl sub_08007BA0
	bl sub_08010AE0
	movs r0, #2
	movs r1, #0xff
	bl sub_080099E0
	adds r4, r0, #0
	movs r1, #1
	bl sub_08009A34
	adds r0, r4, #0
	movs r1, #0x78
	movs r2, #0x47
	bl sub_08009A70
	ldr r0, [r5]
	adds r0, #0xcc
	ldr r1, [r0]
	adds r0, r4, #0
	bl sub_08009A78
	adds r0, r4, #0
	movs r1, #2
	bl sub_08009AB4
	ldr r1, _08010C28 @ =0x080E65D4
	ldr r2, _08010C2C @ =0x080E6580
	adds r0, r4, #0
	movs r3, #7
	bl sub_08009ACC
	adds r0, r4, #0
	movs r1, #0
	bl sub_08009B40
	ldr r0, [r5]
	adds r0, #0xc0
	str r4, [r0]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08010C18: .4byte 0x03004440
_08010C1C: .4byte 0x030013B0
_08010C20: .4byte 0x08080320
_08010C24: .4byte sub_08010B60
_08010C28: .4byte 0x080E65D4
_08010C2C: .4byte 0x080E6580

	thumb_func_start sub_08010C30
sub_08010C30: @ 0x08010C30
	push {r4, r5, lr}
	movs r0, #2
	movs r1, #0x80
	bl sub_080099E0
	adds r4, r0, #0
	movs r1, #0
	bl sub_08009A34
	adds r0, r4, #0
	movs r1, #0x28
	movs r2, #0x70
	bl sub_08009A70
	ldr r1, _08010CA0 @ =0x06010000
	adds r0, r4, #0
	bl sub_08009A78
	ldr r5, _08010CA4 @ =0x030013B0
	ldr r0, [r5]
	adds r0, #0xdc
	ldr r1, [r0]
	adds r0, r4, #0
	movs r2, #0
	bl sub_08009BBC
	adds r0, r4, #0
	movs r1, #0
	bl sub_08009AB4
	ldr r1, _08010CA8 @ =0x080839DC
	ldr r0, _08010CAC @ =0x03004440
	ldrb r2, [r0]
	lsls r2, r2, #0x1b
	lsrs r0, r2, #0x1e
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, _08010CB0 @ =0x080839FC
	lsrs r2, r2, #0x1e
	lsls r2, r2, #2
	adds r2, r2, r0
	ldr r2, [r2]
	adds r0, r4, #0
	movs r3, #1
	bl sub_08009ACC
	adds r0, r4, #0
	movs r1, #0xff
	bl sub_08009B40
	ldr r0, [r5]
	str r4, [r0, #0x6c]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08010CA0: .4byte 0x06010000
_08010CA4: .4byte 0x030013B0
_08010CA8: .4byte 0x080839DC
_08010CAC: .4byte 0x03004440
_08010CB0: .4byte 0x080839FC

	thumb_func_start sub_08010CB4
sub_08010CB4: @ 0x08010CB4
	bx lr
	.align 2, 0

	thumb_func_start sub_08010CB8
sub_08010CB8: @ 0x08010CB8
	push {r4, r5, r6, lr}
	bl sub_08007BD4
	adds r6, r0, #0
	ldr r0, _08010CD8 @ =0x030013B0
	ldr r0, [r0]
	ldr r5, [r0, #0x6c]
	ldrb r0, [r6]
	cmp r0, #1
	beq _08010D0A
	cmp r0, #1
	bgt _08010CDC
	cmp r0, #0
	beq _08010CE6
	b _08010D58
	.align 2, 0
_08010CD8: .4byte 0x030013B0
_08010CDC:
	cmp r0, #2
	beq _08010D3E
	cmp r0, #3
	beq _08010D54
	b _08010D58
_08010CE6:
	adds r0, r5, #0
	movs r1, #1
	bl sub_08009A34
	movs r1, #0xc
	rsbs r1, r1, #0
	movs r0, #8
	ldrsh r2, [r5, r0]
	adds r0, r5, #0
	bl sub_08009A70
	adds r0, r5, #0
	movs r1, #3
	bl sub_08009AFC
	movs r0, #1
	strb r0, [r6]
	b _08010D58
_08010D0A:
	movs r0, #6
	ldrsh r4, [r5, r0]
	adds r4, #1
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	movs r0, #8
	ldrsh r2, [r5, r0]
	adds r0, r5, #0
	bl sub_08009A70
	cmp r4, #0x28
	bne _08010D58
	adds r0, r5, #0
	movs r1, #5
	bl sub_08009AFC
	adds r0, r5, #0
	movs r1, #0
	bl sub_08009B40
	movs r0, #0x3c
	bl sub_08007AC0
	movs r0, #2
	strb r0, [r6]
	b _08010D58
_08010D3E:
	adds r0, r5, #0
	movs r1, #1
	bl sub_08009AFC
	adds r0, r5, #0
	movs r1, #0xff
	bl sub_08009B40
	movs r0, #3
	strb r0, [r6]
	b _08010D58
_08010D54:
	bl sub_08010AE0
_08010D58:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08010D60
sub_08010D60: @ 0x08010D60
	push {r4, r5, lr}
	bl sub_08007BD4
	adds r5, r0, #0
	ldr r0, _08010D80 @ =0x030013B0
	ldr r0, [r0]
	ldr r4, [r0, #0x6c]
	ldrb r0, [r5]
	cmp r0, #4
	bhi _08010DF4
	lsls r0, r0, #2
	ldr r1, _08010D84 @ =_08010D88
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08010D80: .4byte 0x030013B0
_08010D84: .4byte _08010D88
_08010D88: @ jump table
	.4byte _08010D9C @ case 0
	.4byte _08010DB2 @ case 1
	.4byte _08010DC6 @ case 2
	.4byte _08010DDC @ case 3
	.4byte _08010DF0 @ case 4
_08010D9C:
	adds r0, r4, #0
	movs r1, #7
	bl sub_08009AFC
	adds r0, r4, #0
	movs r1, #0
	bl sub_08009B40
	movs r0, #1
	strb r0, [r5]
	b _08010DF4
_08010DB2:
	ldrb r0, [r4, #1]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _08010DF4
	movs r0, #0x3c
	bl sub_08007AC0
	movs r0, #2
	strb r0, [r5]
	b _08010DF4
_08010DC6:
	adds r0, r4, #0
	movs r1, #1
	bl sub_08009AFC
	adds r0, r4, #0
	movs r1, #0xff
	bl sub_08009B40
	movs r0, #3
	strb r0, [r5]
	b _08010DF4
_08010DDC:
	ldrb r0, [r4, #1]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _08010DF4
	movs r0, #0xf
	bl sub_08007AC0
	movs r0, #4
	strb r0, [r5]
	b _08010DF4
_08010DF0:
	bl sub_08010AE0
_08010DF4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08010DFC
sub_08010DFC: @ 0x08010DFC
	push {r4, r5, r6, lr}
	bl sub_08007BD4
	adds r4, r0, #0
	ldr r6, _08010E18 @ =0x030013B0
	ldr r0, [r6]
	ldr r5, [r0, #0x6c]
	ldrb r1, [r4]
	cmp r1, #0
	beq _08010E1C
	cmp r1, #1
	beq _08010E34
	b _08010E5A
	.align 2, 0
_08010E18: .4byte 0x030013B0
_08010E1C:
	adds r0, #0xc0
	ldr r0, [r0]
	movs r1, #8
	bl sub_08009AFC
	adds r0, r5, #0
	movs r1, #3
	bl sub_08009AFC
	movs r0, #1
	strb r0, [r4]
	b _08010E5A
_08010E34:
	movs r0, #6
	ldrsh r4, [r5, r0]
	adds r4, #1
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	movs r0, #8
	ldrsh r2, [r5, r0]
	adds r0, r5, #0
	bl sub_08009A70
	cmp r4, #0x46
	ble _08010E5A
	ldr r0, [r6]
	adds r0, #0xc8
	ldrb r2, [r0]
	movs r1, #5
	rsbs r1, r1, #0
	ands r1, r2
	strb r1, [r0]
_08010E5A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08010E60
sub_08010E60: @ 0x08010E60
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	adds r5, r0, #0
	adds r4, r1, #0
	lsls r5, r5, #0x18
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r6, _08010EAC @ =0x030013B0
	ldr r0, [r6]
	lsrs r5, r5, #0x17
	adds r0, #0x18
	adds r0, r0, r5
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	mov r8, r0
	ldr r0, [r6]
	adds r0, #0x18
	adds r0, r0, r5
	movs r1, #0
	ldrsh r0, [r0, r1]
	ldr r1, _08010EB0 @ =0x08080330
	lsls r4, r4, #2
	adds r4, r4, r1
	ldr r1, [r4]
	bl sub_08007B84
	movs r0, #0
	mov r1, r8
	strb r0, [r1, #1]
	strh r0, [r1, #2]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08010EAC: .4byte 0x030013B0
_08010EB0: .4byte 0x08080330

	thumb_func_start sub_08010EB4
sub_08010EB4: @ 0x08010EB4
	push {r4, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _08010EE4 @ =0x030013B0
	ldr r3, [r1]
	adds r3, #0xc8
	ldrh r4, [r3]
	lsls r2, r4, #0x13
	lsrs r2, r2, #0x16
	movs r1, #1
	lsls r1, r0
	bics r2, r1
	lsls r2, r2, #3
	ldr r1, _08010EE8 @ =0xFFFFE007
	ands r1, r4
	orrs r1, r2
	strh r1, [r3]
	movs r1, #0
	bl sub_08010E60
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08010EE4: .4byte 0x030013B0
_08010EE8: .4byte 0xFFFFE007

	thumb_func_start sub_08010EEC
sub_08010EEC: @ 0x08010EEC
	push {r4, r5, r6, r7, lr}
	movs r4, #0
	ldr r6, _08010F40 @ =0x030013B0
	movs r5, #0
_08010EF4:
	ldr r3, [r6]
	adds r3, #0xc8
	ldrh r2, [r3]
	lsls r1, r2, #0x13
	lsrs r1, r1, #0x16
	movs r0, #1
	lsls r0, r4
	orrs r1, r0
	ldr r7, _08010F44 @ =0x000003FF
	adds r0, r7, #0
	ands r1, r0
	lsls r1, r1, #3
	ldr r7, _08010F48 @ =0xFFFFE007
	adds r0, r7, #0
	ands r2, r0
	orrs r2, r1
	strh r2, [r3]
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	movs r1, #1
	bl sub_08010E60
	ldr r0, [r6]
	lsls r1, r4, #1
	adds r0, #0x18
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r1, r5, #0
	bl sub_08007AD8
	adds r5, #6
	adds r4, #1
	cmp r4, #9
	ble _08010EF4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08010F40: .4byte 0x030013B0
_08010F44: .4byte 0x000003FF
_08010F48: .4byte 0xFFFFE007

	thumb_func_start sub_08010F4C
sub_08010F4C: @ 0x08010F4C
	push {r4, r5, r6, lr}
	movs r5, #0
	ldr r6, _08010F78 @ =0x030013B0
_08010F52:
	ldr r0, [r6]
	lsls r4, r5, #2
	adds r0, #0x70
	adds r0, r0, r4
	ldr r0, [r0]
	bl sub_08009A00
	ldr r0, [r6]
	adds r0, #0x98
	adds r0, r0, r4
	ldr r0, [r0]
	bl sub_08009A00
	adds r5, #1
	cmp r5, #9
	ble _08010F52
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08010F78: .4byte 0x030013B0

	thumb_func_start sub_08010F7C
sub_08010F7C: @ 0x08010F7C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	bl sub_08007BD4
	adds r5, r0, #0
	movs r0, #2
	movs r1, #0x40
	bl sub_080099E0
	adds r7, r0, #0
	movs r1, #0
	bl sub_08009A34
	movs r2, #0x10
	rsbs r2, r2, #0
	adds r0, r7, #0
	movs r1, #0x20
	bl sub_08009A70
	ldr r4, _08011038 @ =0x030013B0
	ldr r0, [r4]
	adds r0, #0xcc
	ldr r1, [r0]
	adds r0, r7, #0
	bl sub_08009A78
	adds r0, r7, #0
	movs r1, #2
	bl sub_08009AB4
	ldr r6, _0801103C @ =0x080E65D4
	ldr r0, _08011040 @ =0x080E6580
	mov r8, r0
	adds r0, r7, #0
	adds r1, r6, #0
	mov r2, r8
	movs r3, #5
	bl sub_08009ACC
	adds r0, r7, #0
	movs r1, #0xff
	bl sub_08009B40
	ldr r1, [r4]
	ldrb r0, [r5]
	lsls r0, r0, #2
	adds r1, #0x70
	adds r1, r1, r0
	str r7, [r1]
	movs r0, #2
	movs r1, #0x40
	bl sub_080099E0
	adds r7, r0, #0
	movs r1, #0
	bl sub_08009A34
	adds r0, r7, #0
	movs r1, #0x28
	movs r2, #0x5e
	bl sub_08009A70
	ldr r0, [r4]
	adds r0, #0xcc
	ldr r1, [r0]
	adds r0, r7, #0
	bl sub_08009A78
	adds r0, r7, #0
	movs r1, #2
	bl sub_08009AB4
	adds r0, r7, #0
	adds r1, r6, #0
	mov r2, r8
	movs r3, #6
	bl sub_08009ACC
	ldr r1, [r4]
	ldrb r0, [r5]
	lsls r0, r0, #2
	adds r1, #0x98
	adds r1, r1, r0
	str r7, [r1]
	ldrb r0, [r5]
	bl sub_08010EB4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08011038: .4byte 0x030013B0
_0801103C: .4byte 0x080E65D4
_08011040: .4byte 0x080E6580

	thumb_func_start sub_08011044
sub_08011044: @ 0x08011044
	push {r4, r5, lr}
	movs r4, #0
_08011048:
	ldr r0, _08011080 @ =sub_08010F7C
	movs r1, #0x40
	movs r2, #0
	bl sub_08007968
	ldr r5, _08011084 @ =0x030013B0
	ldr r1, [r5]
	lsls r2, r4, #1
	adds r1, #0x18
	adds r1, r1, r2
	strh r0, [r1]
	movs r2, #0
	ldrsh r0, [r1, r2]
	bl sub_08007BBC
	strb r4, [r0]
	adds r4, #1
	cmp r4, #9
	ble _08011048
	ldr r0, [r5]
	movs r1, #0x18
	ldrsh r0, [r0, r1]
	ldr r1, _08011088 @ =sub_08010F4C
	bl sub_08007BA0
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08011080: .4byte sub_08010F7C
_08011084: .4byte 0x030013B0
_08011088: .4byte sub_08010F4C

	thumb_func_start sub_0801108C
sub_0801108C: @ 0x0801108C
	bx lr
	.align 2, 0

	thumb_func_start sub_08011090
sub_08011090: @ 0x08011090
	push {r4, r5, r6, r7, lr}
	bl sub_08007BD4
	adds r6, r0, #0
	ldrb r7, [r6, #1]
	cmp r7, #1
	beq _08011110
	cmp r7, #1
	bgt _080110A8
	cmp r7, #0
	beq _080110B6
	b _0801120C
_080110A8:
	cmp r7, #2
	bne _080110AE
	b _080111D0
_080110AE:
	cmp r7, #3
	bne _080110B4
	b _080111F8
_080110B4:
	b _0801120C
_080110B6:
	strh r7, [r6, #4]
	ldr r4, _0801110C @ =0x030013B0
	ldr r1, [r4]
	ldrb r0, [r6]
	lsls r0, r0, #2
	adds r1, #0x70
	adds r1, r1, r0
	ldr r0, [r1]
	movs r1, #1
	bl sub_08009A34
	ldr r1, [r4]
	ldrb r0, [r6]
	lsls r0, r0, #2
	adds r1, #0x70
	adds r1, r1, r0
	ldr r5, [r1]
	movs r0, #7
	bl sub_0800B828
	adds r1, r0, #0
	adds r1, #0x1d
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldrh r2, [r6, #4]
	subs r2, #0x10
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r5, #0
	bl sub_08009A70
	ldr r1, [r4]
	ldrb r0, [r6]
	lsls r0, r0, #2
	adds r1, #0x70
	adds r1, r1, r0
	ldr r0, [r1]
	bl sub_08009BA0
	movs r0, #1
	strb r0, [r6, #1]
	strh r7, [r6, #2]
	b _0801120C
	.align 2, 0
_0801110C: .4byte 0x030013B0
_08011110:
	ldrh r0, [r6, #2]
	adds r0, #1
	strh r0, [r6, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xf
	subs r0, #1
	movs r1, #0xc
	bl __divsi3
	ldrh r1, [r6, #4]
	adds r2, r1, r0
	strh r2, [r6, #4]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x5e
	ble _080111AC
	ldr r4, _080111A4 @ =0x030013B0
	ldr r1, [r4]
	ldrb r0, [r6]
	lsls r0, r0, #2
	adds r1, #0x70
	adds r1, r1, r0
	ldr r0, [r1]
	movs r1, #0
	bl sub_08009A34
	ldr r1, [r4]
	ldrb r2, [r6]
	lsls r2, r2, #2
	adds r0, r1, #0
	adds r0, #0x98
	adds r0, r0, r2
	ldr r0, [r0]
	adds r1, #0x70
	adds r1, r1, r2
	ldr r1, [r1]
	movs r2, #6
	ldrsh r1, [r1, r2]
	movs r2, #0x5e
	bl sub_08009A70
	ldr r1, [r4]
	ldrb r0, [r6]
	lsls r0, r0, #2
	adds r1, #0x98
	adds r1, r1, r0
	ldr r0, [r1]
	movs r1, #1
	bl sub_08009A34
	ldr r1, [r4]
	ldrb r0, [r6]
	lsls r0, r0, #2
	adds r1, #0x98
	adds r1, r1, r0
	ldr r0, [r1]
	bl sub_08009BA0
	ldr r4, _080111A8 @ =0x03004400
	ldr r0, [r4, #0x10]
	adds r1, r0, #1
	bl sub_080102A0
	ldr r0, [r4, #0x10]
	adds r0, #1
	bl sub_0800B6DC
	movs r0, #0xdf
	bl m4aSongNumStart
	movs r0, #2
	strb r0, [r6, #1]
	b _0801120C
	.align 2, 0
_080111A4: .4byte 0x030013B0
_080111A8: .4byte 0x03004400
_080111AC:
	ldr r0, _080111CC @ =0x030013B0
	ldr r1, [r0]
	ldrb r0, [r6]
	lsls r0, r0, #2
	adds r1, #0x70
	adds r1, r1, r0
	ldr r0, [r1]
	movs r3, #6
	ldrsh r1, [r0, r3]
	subs r2, #0x10
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl sub_08009A70
	b _0801120C
	.align 2, 0
_080111CC: .4byte 0x030013B0
_080111D0:
	ldr r0, _080111F4 @ =0x030013B0
	ldr r1, [r0]
	ldrb r0, [r6]
	lsls r0, r0, #2
	adds r1, #0x98
	adds r1, r1, r0
	ldr r1, [r1]
	ldrb r0, [r1, #1]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _0801120C
	adds r0, r1, #0
	movs r1, #0
	bl sub_08009A34
	movs r0, #3
	strb r0, [r6, #1]
	b _0801120C
	.align 2, 0
_080111F4: .4byte 0x030013B0
_080111F8:
	ldr r0, _08011214 @ =0x030013B0
	ldr r0, [r0]
	adds r0, #0xc8
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _0801120C
	ldrb r0, [r6]
	bl sub_08010EB4
_0801120C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08011214: .4byte 0x030013B0

	thumb_func_start sub_08011218
sub_08011218: @ 0x08011218
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _0801124C @ =0x030013B0
	ldr r0, [r5]
	movs r1, #0x2c
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	movs r1, #0
	strb r1, [r0]
	strh r1, [r0, #2]
	ldr r0, [r5]
	movs r1, #0x2c
	ldrsh r0, [r0, r1]
	ldr r1, _08011250 @ =0x08080338
	lsls r4, r4, #2
	adds r4, r4, r1
	ldr r1, [r4]
	bl sub_08007B84
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801124C: .4byte 0x030013B0
_08011250: .4byte 0x08080338

	thumb_func_start sub_08011254
sub_08011254: @ 0x08011254
	push {lr}
	ldr r0, _08011270 @ =0x030013B0
	ldr r1, [r0]
	adds r1, #0xc9
	ldrb r2, [r1]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	movs r0, #0
	bl sub_08011218
	pop {r0}
	bx r0
	.align 2, 0
_08011270: .4byte 0x030013B0

	thumb_func_start sub_08011274
sub_08011274: @ 0x08011274
	push {lr}
	ldr r0, _08011290 @ =0x030013B0
	ldr r1, [r0]
	adds r1, #0xc9
	ldrb r0, [r1]
	movs r2, #0x20
	orrs r0, r2
	strb r0, [r1]
	movs r0, #1
	bl sub_08011218
	pop {r0}
	bx r0
	.align 2, 0
_08011290: .4byte 0x030013B0

	thumb_func_start sub_08011294
sub_08011294: @ 0x08011294
	push {lr}
	ldr r0, _080112B0 @ =0x030013B0
	ldr r1, [r0]
	adds r1, #0xc9
	ldrb r0, [r1]
	movs r2, #0x20
	orrs r0, r2
	strb r0, [r1]
	movs r0, #2
	bl sub_08011218
	pop {r0}
	bx r0
	.align 2, 0
_080112B0: .4byte 0x030013B0

	thumb_func_start sub_080112B4
sub_080112B4: @ 0x080112B4
	push {lr}
	ldr r0, _080112C8 @ =0x030013B0
	ldr r0, [r0]
	adds r0, #0xc4
	ldr r0, [r0]
	bl sub_08009A00
	pop {r0}
	bx r0
	.align 2, 0
_080112C8: .4byte 0x030013B0

	thumb_func_start sub_080112CC
sub_080112CC: @ 0x080112CC
	push {r4, r5, lr}
	movs r0, #2
	movs r1, #0x80
	bl sub_080099E0
	adds r4, r0, #0
	movs r1, #1
	bl sub_08009A34
	adds r0, r4, #0
	movs r1, #0xc0
	movs r2, #0x70
	bl sub_08009A70
	ldr r1, _08011338 @ =0x06010400
	adds r0, r4, #0
	bl sub_08009A78
	ldr r5, _0801133C @ =0x030013B0
	ldr r0, [r5]
	adds r0, #0xe4
	ldr r1, [r0]
	adds r0, r4, #0
	movs r2, #0
	bl sub_08009BBC
	adds r0, r4, #0
	movs r1, #1
	bl sub_08009AB4
	ldr r1, _08011340 @ =0x08091B14
	ldr r2, _08011344 @ =0x08091A84
	adds r0, r4, #0
	movs r3, #3
	bl sub_08009ACC
	adds r0, r4, #0
	movs r1, #0xff
	bl sub_08009B40
	ldr r1, [r5]
	adds r0, r1, #0
	adds r0, #0xc4
	str r4, [r0]
	movs r2, #0x2c
	ldrsh r0, [r1, r2]
	ldr r1, _08011348 @ =sub_080112B4
	bl sub_08007BA0
	bl sub_08011254
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08011338: .4byte 0x06010400
_0801133C: .4byte 0x030013B0
_08011340: .4byte 0x08091B14
_08011344: .4byte 0x08091A84
_08011348: .4byte sub_080112B4

	thumb_func_start sub_0801134C
sub_0801134C: @ 0x0801134C
	bx lr
	.align 2, 0

	thumb_func_start sub_08011350
sub_08011350: @ 0x08011350
	push {r4, r5, lr}
	bl sub_08007BD4
	adds r5, r0, #0
	ldrb r0, [r5]
	cmp r0, #1
	beq _08011394
	cmp r0, #1
	bgt _08011368
	cmp r0, #0
	beq _0801136E
	b _080113C8
_08011368:
	cmp r0, #2
	beq _080113C4
	b _080113C8
_0801136E:
	ldr r4, _08011390 @ =0x030013B0
	ldr r0, [r4]
	adds r0, #0xc4
	ldr r0, [r0]
	movs r1, #6
	bl sub_08009AFC
	ldr r0, [r4]
	adds r0, #0xc4
	ldr r0, [r0]
	movs r1, #1
	bl sub_08009B40
	movs r0, #1
	strb r0, [r5]
	b _080113C8
	.align 2, 0
_08011390: .4byte 0x030013B0
_08011394:
	ldr r4, _080113C0 @ =0x030013B0
	ldr r0, [r4]
	adds r0, #0xc4
	ldr r1, [r0]
	ldrb r0, [r1, #1]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _080113C8
	adds r0, r1, #0
	movs r1, #3
	bl sub_08009AFC
	ldr r0, [r4]
	adds r0, #0xc4
	ldr r0, [r0]
	movs r1, #0xff
	bl sub_08009B40
	movs r0, #2
	strb r0, [r5]
	b _080113C8
	.align 2, 0
_080113C0: .4byte 0x030013B0
_080113C4:
	bl sub_08011254
_080113C8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080113D0
sub_080113D0: @ 0x080113D0
	push {r4, lr}
	bl sub_08007BD4
	adds r4, r0, #0
	ldrb r0, [r4]
	cmp r0, #1
	beq _08011408
	cmp r0, #1
	bgt _080113E8
	cmp r0, #0
	beq _080113EE
	b _08011430
_080113E8:
	cmp r0, #2
	beq _0801142C
	b _08011430
_080113EE:
	ldr r0, _08011404 @ =0x030013B0
	ldr r0, [r0]
	adds r0, #0xc4
	ldr r0, [r0]
	movs r1, #7
	bl sub_08009AFC
	movs r0, #1
	strb r0, [r4]
	b _08011430
	.align 2, 0
_08011404: .4byte 0x030013B0
_08011408:
	ldr r0, _08011428 @ =0x030013B0
	ldr r0, [r0]
	adds r0, #0xc4
	ldr r1, [r0]
	ldrb r0, [r1, #1]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _08011430
	adds r0, r1, #0
	movs r1, #3
	bl sub_08009AFC
	movs r0, #2
	strb r0, [r4]
	b _08011430
	.align 2, 0
_08011428: .4byte 0x030013B0
_0801142C:
	bl sub_08011254
_08011430:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08011438
sub_08011438: @ 0x08011438
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r4, #0
_08011444:
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	bl sub_08012444
	adds r1, r4, #1
	mov sb, r1
	cmp r0, #0
	beq _080114A4
	movs r3, #0
	lsls r0, r4, #2
	ldr r2, _080114B8 @ =0x08080494
	adds r1, r2, #2
	adds r1, r1, r0
	mov r8, r1
	adds r0, r0, r2
	ldrh r0, [r0]
	mov sl, r0
_08011466:
	movs r4, #0
	adds r6, r3, #1
	mov r2, r8
	ldrh r0, [r2]
	adds r0, r0, r3
	lsls r5, r0, #0x10
_08011472:
	mov r7, sl
	adds r1, r7, r4
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r0, #0
	lsrs r2, r5, #0x10
	bl sub_0800B2F4
	ldrh r3, [r0]
	ldr r2, _080114BC @ =0x000003FF
	adds r1, r2, #0
	ands r1, r3
	adds r1, #0x60
	movs r7, #0xfc
	lsls r7, r7, #8
	adds r2, r7, #0
	ands r3, r2
	orrs r1, r3
	strh r1, [r0]
	adds r4, #1
	cmp r4, #6
	ble _08011472
	adds r3, r6, #0
	cmp r3, #6
	ble _08011466
_080114A4:
	mov r4, sb
	cmp r4, #5
	ble _08011444
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080114B8: .4byte 0x08080494
_080114BC: .4byte 0x000003FF

	thumb_func_start sub_080114C0
sub_080114C0: @ 0x080114C0
	push {r4, r5, r6, lr}
	sub sp, #0xc
	ldr r5, _080115D0 @ =0x030013B4
	movs r0, #0x74
	bl sub_08007CE8
	adds r1, r0, #0
	str r1, [r5]
	movs r0, #0
	movs r2, #0x74
	bl sub_08007EFC
	ldr r1, _080115D4 @ =0x080839CC
	ldr r6, _080115D8 @ =0x03004440
	ldrb r0, [r6]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1e
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _080115DC @ =0x05000200
	bl LoadPalette_08008308
	ldr r1, _080115E0 @ =0x080839EC
	ldrb r0, [r6]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1e
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	add r1, sp, #4
	bl sub_08008380
	ldr r1, [r5]
	str r0, [r1, #0x60]
	ldr r0, [sp, #4]
	str r0, [r1, #0x64]
	ldr r4, _080115E4 @ =0x06010400
	ldr r0, _080115E8 @ =0x080E84C4
	ldr r1, _080115EC @ =0x05000220
	bl LoadPalette_08008308
	ldr r0, [r5]
	str r4, [r0, #0x58]
	ldr r0, _080115F0 @ =0x080E8674
	adds r1, r4, #0
	bl DecompressData_08008374
	adds r4, r0, r4
	ldr r0, _080115F4 @ =0x0809C73C
	ldr r1, _080115F8 @ =0x050002E0
	bl LoadPalette_08008308
	ldr r0, [r5]
	str r4, [r0, #0x5c]
	ldr r0, _080115FC @ =0x0809C890
	adds r1, r4, #0
	bl DecompressData_08008374
	ldr r0, _08011600 @ =0x0808037C
	bl sub_0800B02C
	bl sub_08011438
	ldr r0, _08011604 @ =0x080803A0
	bl sub_0800BA44
	ldr r1, [r5]
	adds r1, #0x70
	strb r0, [r1]
	ldr r0, _08011608 @ =sub_08011A38
	movs r1, #0x43
	movs r2, #0
	bl sub_08007968
	ldr r1, [r5]
	strh r0, [r1, #8]
	ldr r0, _0801160C @ =sub_08011C0C
	movs r1, #0x40
	movs r2, #0
	bl sub_08007968
	ldr r1, [r5]
	strh r0, [r1, #0xa]
	ldr r0, _08011610 @ =sub_080120BC
	movs r1, #0x41
	movs r2, #0
	bl sub_08007968
	ldr r1, [r5]
	strh r0, [r1, #0xc]
	ldr r0, _08011614 @ =sub_08012124
	movs r1, #0x42
	movs r2, #0
	bl sub_08007968
	ldr r1, [r5]
	strh r0, [r1, #0xe]
	bl sub_080122D8
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
	movs r1, #0x1d
	movs r2, #4
	movs r3, #0
	bl sub_08004028
	bl sub_080057C0
	movs r0, #1
	bl sub_08005A88
	ldrb r1, [r6]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080115C6
	ldr r0, _08011618 @ =0x02030000
	ldr r0, [r0, #0xc]
	bl sub_0800B6DC
_080115C6:
	add sp, #0xc
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080115D0: .4byte 0x030013B4
_080115D4: .4byte 0x080839CC
_080115D8: .4byte 0x03004440
_080115DC: .4byte 0x05000200
_080115E0: .4byte 0x080839EC
_080115E4: .4byte 0x06010400
_080115E8: .4byte 0x080E84C4
_080115EC: .4byte 0x05000220
_080115F0: .4byte 0x080E8674
_080115F4: .4byte 0x0809C73C
_080115F8: .4byte 0x050002E0
_080115FC: .4byte 0x0809C890
_08011600: .4byte 0x0808037C
_08011604: .4byte 0x080803A0
_08011608: .4byte sub_08011A38
_0801160C: .4byte sub_08011C0C
_08011610: .4byte sub_080120BC
_08011614: .4byte sub_08012124
_08011618: .4byte 0x02030000

	thumb_func_start sub_0801161C
sub_0801161C: @ 0x0801161C
	push {r4, lr}
	bl sub_080058A4
	bl sub_0800B17C
	ldr r4, _08011660 @ =0x030013B4
	ldr r0, [r4]
	adds r0, #0x70
	ldrb r0, [r0]
	bl sub_0800BAC0
	ldr r0, [r4]
	movs r1, #8
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	ldr r0, [r4]
	movs r1, #0xc
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	ldr r0, [r4]
	movs r1, #0xa
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	ldr r0, [r4]
	movs r1, #0xe
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08011660: .4byte 0x030013B4

	thumb_func_start sub_08011664
sub_08011664: @ 0x08011664
	push {r4, r5, lr}
	movs r0, #0
	bl sub_080081A0
	bl sub_08008174
	bl sub_080114C0
	movs r0, #1
	bl ProcSleep_08002B98
	ldr r4, _0801168C @ =0x030013B4
	ldr r5, _08011690 @ =0x080804AC
_0801167E:
	ldr r1, [r4]
	ldrh r0, [r1, #4]
	cmp r0, #0
	beq _08011694
	subs r0, #1
	strh r0, [r1, #4]
	b _080116A8
	.align 2, 0
_0801168C: .4byte 0x030013B4
_08011690: .4byte 0x080804AC
_08011694:
	ldrb r0, [r1]
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	bl call_via_r0
	ldr r0, [r4]
	ldrb r0, [r0, #6]
	cmp r0, #0
	bne _080116B0
_080116A8:
	movs r0, #1
	bl ProcSleep_08002B98
	b _0801167E
_080116B0:
	bl sub_0801161C
	movs r0, #1
	bl ProcSleep_08002B98
	bl m4aMPlayAllStop
	ldr r4, _080116D8 @ =0x030013B4
	ldr r0, [r4]
	ldr r0, [r0, #0x60]
	bl sub_08007CF8
	ldr r0, [r4]
	bl sub_08007CF8
	bl sub_08002B0C
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080116D8: .4byte 0x030013B4

	thumb_func_start sub_080116DC
sub_080116DC: @ 0x080116DC
	ldr r1, _080116F0 @ =0x030013B4
	ldr r2, [r1]
	movs r3, #0
	strb r0, [r2]
	ldr r0, [r1]
	strb r3, [r0, #1]
	ldr r0, [r1]
	strh r3, [r0, #2]
	bx lr
	.align 2, 0
_080116F0: .4byte 0x030013B4

	thumb_func_start sub_080116F4
sub_080116F4: @ 0x080116F4
	push {r4, r5, r6, lr}
	ldr r6, _08011708 @ =0x030013B4
	ldr r0, [r6]
	ldrb r0, [r0, #1]
	cmp r0, #0
	beq _0801170C
	cmp r0, #1
	beq _08011750
	b _0801177A
	.align 2, 0
_08011708: .4byte 0x030013B4
_0801170C:
	bl sub_08008174
	ldr r4, _0801174C @ =0x030024E0
	ldrh r1, [r4]
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r2, #0
	orrs r0, r1
	movs r2, #0x80
	lsls r2, r2, #3
	adds r1, r2, #0
	orrs r0, r1
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4]
	movs r0, #1
	bl sub_08004124
	adds r4, #0x4f
	movs r5, #1
	strb r5, [r4]
	movs r0, #0x4b
	bl m4aSongNumStart
	bl sub_0800B770
	ldr r0, [r6]
	strb r5, [r0, #1]
	b _0801177A
	.align 2, 0
_0801174C: .4byte 0x030024E0
_08011750:
	ldr r4, _08011770 @ =0x03004440
	ldrb r1, [r4]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08011774
	movs r0, #3
	bl sub_080116DC
	ldrb r1, [r4]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4]
	b _0801177A
	.align 2, 0
_08011770: .4byte 0x03004440
_08011774:
	movs r0, #1
	bl sub_080116DC
_0801177A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08011780
sub_08011780: @ 0x08011780
	push {r4, lr}
	ldr r4, _08011798 @ =0x030013B4
	ldr r2, [r4]
	ldrb r0, [r2, #1]
	cmp r0, #1
	beq _080117B2
	cmp r0, #1
	bgt _0801179C
	cmp r0, #0
	beq _080117A6
	b _080117EC
	.align 2, 0
_08011798: .4byte 0x030013B4
_0801179C:
	cmp r0, #2
	beq _080117DE
	cmp r0, #3
	beq _080117E6
	b _080117EC
_080117A6:
	bl sub_08011BD4
	ldr r1, [r4]
	movs r0, #1
	strb r0, [r1, #1]
	b _080117EC
_080117B2:
	adds r0, r2, #0
	adds r0, #0x55
	ldrb r0, [r0]
	cmp r0, #0
	bne _080117EC
	ldr r0, _080117D4 @ =0x03004440
	ldrh r1, [r0]
	movs r0, #0xf0
	lsls r0, r0, #3
	ands r0, r1
	movs r1, #0xc0
	lsls r1, r1, #2
	cmp r0, r1
	bne _080117D8
	movs r0, #2
	strb r0, [r2, #1]
	b _080117EC
	.align 2, 0
_080117D4: .4byte 0x03004440
_080117D8:
	movs r0, #3
	strb r0, [r2, #1]
	b _080117EC
_080117DE:
	movs r0, #4
	bl sub_080116DC
	b _080117EC
_080117E6:
	movs r0, #2
	bl sub_080116DC
_080117EC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080117F4
sub_080117F4: @ 0x080117F4
	push {r4, r5, lr}
	ldr r5, _0801180C @ =0x030013B4
	ldr r2, [r5]
	ldrb r0, [r2, #1]
	cmp r0, #1
	beq _08011868
	cmp r0, #1
	bgt _08011810
	cmp r0, #0
	beq _08011816
	b _080118D4
	.align 2, 0
_0801180C: .4byte 0x030013B4
_08011810:
	cmp r0, #2
	beq _08011880
	b _080118D4
_08011816:
	bl sub_08005934
	ldr r1, _08011850 @ =0x08080458
	ldr r0, _08011854 @ =0x03004440
	ldrh r0, [r0]
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1c
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	bl sub_080064F8
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801185C
	ldr r0, _08011858 @ =0x08082E5C
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	ldr r1, [r5]
	movs r0, #1
	strb r0, [r1, #1]
	b _08011862
	.align 2, 0
_08011850: .4byte 0x08080458
_08011854: .4byte 0x03004440
_08011858: .4byte 0x08082E5C
_0801185C:
	movs r0, #1
	bl sub_080116DC
_08011862:
	bl sub_08005A2C
	b _080118D4
_08011868:
	ldr r0, _0801187C @ =0x030056F0
	movs r1, #5
	bl m4aMPlayFadeOut
	bl sub_0800B700
	ldr r1, [r5]
	movs r0, #2
	strb r0, [r1, #1]
	b _080118D4
	.align 2, 0
_0801187C: .4byte 0x030056F0
_08011880:
	ldr r4, _080118DC @ =0x03004440
	adds r0, r2, #0
	adds r0, #0x68
	ldrh r0, [r0]
	strh r0, [r4, #2]
	adds r0, r2, #0
	adds r0, #0x6a
	ldrh r0, [r0]
	strh r0, [r4, #4]
	ldrb r0, [r4]
	movs r1, #2
	orrs r0, r1
	strb r0, [r4]
	adds r0, r2, #0
	adds r0, #0x70
	ldrb r0, [r0]
	bl sub_0800BAC0
	ldr r1, _080118E0 @ =0x0808044C
	ldrh r0, [r4]
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1c
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	ldrb r1, [r4]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1e
	ldr r4, _080118E4 @ =0x03004400
	ldr r2, [r4, #0x10]
	movs r3, #2
	bl sub_08001C84
	ldrb r0, [r4, #8]
	bl sub_08001930
	movs r0, #0x11
	bl ChangeGameState_08008790
	ldr r1, [r5]
	movs r0, #1
	strb r0, [r1, #6]
_080118D4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080118DC: .4byte 0x03004440
_080118E0: .4byte 0x0808044C
_080118E4: .4byte 0x03004400

	thumb_func_start sub_080118E8
sub_080118E8: @ 0x080118E8
	push {lr}
	ldr r0, _08011900 @ =0x030013B4
	ldr r0, [r0]
	ldrb r0, [r0, #1]
	cmp r0, #0
	bne _080118FA
	movs r0, #1
	bl sub_080116DC
_080118FA:
	pop {r0}
	bx r0
	.align 2, 0
_08011900: .4byte 0x030013B4

	thumb_func_start sub_08011904
sub_08011904: @ 0x08011904
	push {r4, lr}
	ldr r4, _0801191C @ =0x030013B4
	ldr r0, [r4]
	ldrb r1, [r0, #1]
	cmp r1, #1
	beq _08011960
	cmp r1, #1
	bgt _08011920
	cmp r1, #0
	beq _08011926
	b _08011976
	.align 2, 0
_0801191C: .4byte 0x030013B4
_08011920:
	cmp r1, #2
	beq _08011970
	b _08011976
_08011926:
	bl sub_08005934
	ldr r0, _0801194C @ =0x08082E28
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	bl sub_080064F8
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08011950
	bl sub_08005A2C
	ldr r1, [r4]
	movs r0, #2
	strb r0, [r1, #1]
	b _08011976
	.align 2, 0
_0801194C: .4byte 0x08082E28
_08011950:
	bl sub_08005A2C
	bl sub_08011BF0
	ldr r1, [r4]
	movs r0, #1
	strb r0, [r1, #1]
	b _08011976
_08011960:
	adds r0, #0x55
	ldrb r0, [r0]
	cmp r0, #0
	bne _08011976
	movs r0, #1
	bl sub_080116DC
	b _08011976
_08011970:
	movs r0, #5
	bl sub_080116DC
_08011976:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0801197C
sub_0801197C: @ 0x0801197C
	push {r4, lr}
	ldr r4, _08011990 @ =0x030013B4
	ldr r1, [r4]
	ldrb r0, [r1, #1]
	cmp r0, #0
	beq _08011994
	cmp r0, #1
	beq _080119AC
	b _080119AE
	.align 2, 0
_08011990: .4byte 0x030013B4
_08011994:
	ldr r0, _080119A8 @ =0x030056F0
	movs r1, #5
	bl m4aMPlayFadeOut
	bl sub_0800B700
	ldr r1, [r4]
	movs r0, #1
	strb r0, [r1, #1]
	b _080119AE
	.align 2, 0
_080119A8: .4byte 0x030056F0
_080119AC:
	strb r0, [r1, #6]
_080119AE:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080119B4
sub_080119B4: @ 0x080119B4
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _080119E8 @ =0x030013B4
	ldr r0, [r5]
	movs r1, #8
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	adds r6, r0, #0
	ldr r0, [r5]
	movs r1, #8
	ldrsh r0, [r0, r1]
	ldr r1, _080119EC @ =0x080804C4
	lsls r4, r4, #2
	adds r4, r4, r1
	ldr r1, [r4]
	bl sub_08007B84
	movs r0, #0
	strb r0, [r6]
	strh r0, [r6, #2]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080119E8: .4byte 0x030013B4
_080119EC: .4byte 0x080804C4

	thumb_func_start sub_080119F0
sub_080119F0: @ 0x080119F0
	push {lr}
	ldr r0, _08011A08 @ =0x030013B4
	ldr r0, [r0]
	adds r0, #0x54
	movs r1, #0
	strb r1, [r0]
	movs r0, #0
	bl sub_080119B4
	pop {r0}
	bx r0
	.align 2, 0
_08011A08: .4byte 0x030013B4

	thumb_func_start sub_08011A0C
sub_08011A0C: @ 0x08011A0C
	push {r4, r5, lr}
	ldr r4, _08011A34 @ =0x030013B4
	ldr r0, [r4]
	ldr r0, [r0, #0x1c]
	bl sub_08009A00
	movs r5, #0
_08011A1A:
	ldr r0, [r4]
	lsls r1, r5, #2
	adds r0, #0x20
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_08009A00
	adds r5, #1
	cmp r5, #5
	ble _08011A1A
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08011A34: .4byte 0x030013B4

	thumb_func_start sub_08011A38
sub_08011A38: @ 0x08011A38
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	bl sub_08007BD4
	movs r0, #2
	movs r1, #0x40
	bl sub_080099E0
	adds r6, r0, #0
	movs r1, #1
	bl sub_08009A34
	adds r0, r6, #0
	movs r1, #0x50
	movs r2, #0
	bl sub_08009A70
	ldr r4, _08011B18 @ =0x030013B4
	ldr r0, [r4]
	ldr r1, [r0, #0x5c]
	adds r0, r6, #0
	bl sub_08009A78
	adds r0, r6, #0
	movs r1, #7
	bl sub_08009AB4
	ldr r1, _08011B1C @ =0x0809C860
	ldr r2, _08011B20 @ =0x0809C830
	adds r0, r6, #0
	movs r3, #0xa
	bl sub_08009ACC
	adds r0, r6, #0
	movs r1, #0
	bl sub_08009B40
	ldr r0, [r4]
	str r6, [r0, #0x1c]
	movs r0, #0
	mov sl, r0
	ldr r0, _08011B24 @ =0x03004400
	ldr r0, [r0, #0x10]
	mov r8, r0
	movs r7, #0
	movs r2, #0
	mov sb, r2
_08011A9C:
	cmp r7, #5
	bne _08011AA4
	movs r0, #1
	mov sl, r0
_08011AA4:
	ldr r0, _08011B28 @ =0x08080470
	add r0, sb
	ldr r4, [r0]
	mov r0, r8
	adds r1, r4, #0
	bl __udivsi3
	adds r5, r0, #0
	mov r0, r8
	adds r1, r4, #0
	bl __umodsi3
	mov r8, r0
	movs r0, #2
	movs r1, #0x40
	bl sub_080099E0
	adds r6, r0, #0
	ldr r1, _08011B2C @ =0x08080488
	lsls r0, r7, #1
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r0, r6, #0
	movs r2, #4
	bl sub_08009A70
	ldr r0, _08011B18 @ =0x030013B4
	ldr r0, [r0]
	ldr r1, [r0, #0x5c]
	adds r0, r6, #0
	bl sub_08009A78
	adds r0, r6, #0
	movs r1, #7
	bl sub_08009AB4
	lsls r3, r5, #0x18
	lsrs r3, r3, #0x18
	adds r0, r6, #0
	ldr r1, _08011B1C @ =0x0809C860
	ldr r2, _08011B20 @ =0x0809C830
	bl sub_08009ACC
	adds r0, r6, #0
	movs r1, #0
	bl sub_08009B40
	cmp r5, #0
	bne _08011B30
	mov r0, sl
	cmp r0, #0
	bne _08011B30
	adds r0, r6, #0
	movs r1, #0
	bl sub_08009A34
	b _08011B3C
	.align 2, 0
_08011B18: .4byte 0x030013B4
_08011B1C: .4byte 0x0809C860
_08011B20: .4byte 0x0809C830
_08011B24: .4byte 0x03004400
_08011B28: .4byte 0x08080470
_08011B2C: .4byte 0x08080488
_08011B30:
	movs r2, #1
	mov sl, r2
	adds r0, r6, #0
	movs r1, #1
	bl sub_08009A34
_08011B3C:
	ldr r0, _08011B70 @ =0x030013B4
	ldr r1, [r0]
	adds r0, r1, #0
	adds r0, #0x20
	add r0, sb
	str r6, [r0]
	movs r0, #4
	add sb, r0
	adds r7, #1
	cmp r7, #5
	ble _08011A9C
	movs r2, #8
	ldrsh r0, [r1, r2]
	ldr r1, _08011B74 @ =sub_08011A0C
	bl sub_08007BA0
	bl sub_080119F0
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08011B70: .4byte 0x030013B4
_08011B74: .4byte sub_08011A0C

	thumb_func_start sub_08011B78
sub_08011B78: @ 0x08011B78
	bx lr
	.align 2, 0

	thumb_func_start sub_08011B7C
sub_08011B7C: @ 0x08011B7C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _08011BB0 @ =0x030013B4
	ldr r0, [r5]
	movs r1, #0xa
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	adds r6, r0, #0
	ldr r0, [r5]
	movs r1, #0xa
	ldrsh r0, [r0, r1]
	ldr r1, _08011BB4 @ =0x080804C8
	lsls r4, r4, #2
	adds r4, r4, r1
	ldr r1, [r4]
	bl sub_08007B84
	movs r0, #0
	strb r0, [r6]
	strh r0, [r6, #2]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08011BB0: .4byte 0x030013B4
_08011BB4: .4byte 0x080804C8

	thumb_func_start sub_08011BB8
sub_08011BB8: @ 0x08011BB8
	push {lr}
	ldr r0, _08011BD0 @ =0x030013B4
	ldr r0, [r0]
	adds r0, #0x55
	movs r1, #0
	strb r1, [r0]
	movs r0, #0
	bl sub_08011B7C
	pop {r0}
	bx r0
	.align 2, 0
_08011BD0: .4byte 0x030013B4

	thumb_func_start sub_08011BD4
sub_08011BD4: @ 0x08011BD4
	push {lr}
	ldr r0, _08011BEC @ =0x030013B4
	ldr r0, [r0]
	adds r0, #0x55
	movs r1, #1
	strb r1, [r0]
	movs r0, #1
	bl sub_08011B7C
	pop {r0}
	bx r0
	.align 2, 0
_08011BEC: .4byte 0x030013B4

	thumb_func_start sub_08011BF0
sub_08011BF0: @ 0x08011BF0
	push {lr}
	ldr r0, _08011C08 @ =0x030013B4
	ldr r0, [r0]
	adds r0, #0x55
	movs r1, #1
	strb r1, [r0]
	movs r0, #2
	bl sub_08011B7C
	pop {r0}
	bx r0
	.align 2, 0
_08011C08: .4byte 0x030013B4

	thumb_func_start sub_08011C0C
sub_08011C0C: @ 0x08011C0C
	push {lr}
	ldr r3, _08011C4C @ =0x03004440
	ldrb r1, [r3]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08011C54
	ldr r0, _08011C50 @ =0x030013B4
	ldr r1, [r0]
	adds r2, r1, #0
	adds r2, #0x68
	movs r0, #0xf0
	lsls r0, r0, #1
	strh r0, [r2]
	adds r1, #0x6a
	adds r0, #0xa0
	strh r0, [r1]
	ldrb r1, [r3]
	movs r0, #0x61
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r3]
	ldrh r0, [r3]
	movs r2, #0xf0
	lsls r2, r2, #3
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r3]
	b _08011C66
	.align 2, 0
_08011C4C: .4byte 0x03004440
_08011C50: .4byte 0x030013B4
_08011C54:
	ldr r0, _08011C70 @ =0x030013B4
	ldr r1, [r0]
	ldrh r2, [r3, #2]
	adds r0, r1, #0
	adds r0, #0x68
	strh r2, [r0]
	ldrh r0, [r3, #4]
	adds r1, #0x6a
	strh r0, [r1]
_08011C66:
	bl sub_08011BB8
	pop {r0}
	bx r0
	.align 2, 0
_08011C70: .4byte 0x030013B4

	thumb_func_start sub_08011C74
sub_08011C74: @ 0x08011C74
	bx lr
	.align 2, 0

	thumb_func_start sub_08011C78
sub_08011C78: @ 0x08011C78
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r3, _08011CA4 @ =0x080803BC
	movs r1, #0
_08011C82:
	ldrh r2, [r3]
	cmp r5, r2
	blt _08011CA8
	ldrh r0, [r3, #4]
	adds r0, r2, r0
	cmp r5, r0
	bge _08011CA8
	ldrh r2, [r3, #2]
	cmp r4, r2
	blt _08011CA8
	ldrh r0, [r3, #6]
	adds r0, r2, r0
	cmp r4, r0
	bge _08011CA8
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	b _08011CB2
	.align 2, 0
_08011CA4: .4byte 0x080803BC
_08011CA8:
	adds r1, #1
	adds r3, #8
	cmp r1, #0xe
	ble _08011C82
	movs r0, #0xf
_08011CB2:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_08011CB8
sub_08011CB8: @ 0x08011CB8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	bl sub_08007BD4
	mov r8, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _08011CD2
	cmp r0, #1
	bne _08011CD0
	b _08011FB8
_08011CD0:
	b _08011FBC
_08011CD2:
	ldr r0, _08011D24 @ =0x030013B4
	ldr r1, [r0]
	adds r0, r1, #0
	adds r0, #0x68
	movs r2, #0
	ldrsh r5, [r0, r2]
	adds r0, #2
	movs r2, #0
	ldrsh r4, [r0, r2]
	ldr r3, _08011D28 @ =0x030024B0
	ldrh r2, [r3, #2]
	movs r0, #0xf0
	ands r0, r2
	cmp r0, #0
	bne _08011CF2
	b _08011F10
_08011CF2:
	ldr r6, _08011D2C @ =0x03004440
	ldrb r1, [r6]
	movs r7, #0x60
	movs r0, #0x60
	ands r0, r1
	cmp r0, #0x20
	beq _08011D04
	cmp r0, #0x60
	bne _08011D78
_08011D04:
	ldrh r3, [r3]
	movs r0, #0xc0
	ands r0, r3
	cmp r0, #0
	beq _08011D3A
	movs r0, #0x40
	ands r0, r3
	cmp r0, #0
	beq _08011D30
	subs r4, #4
	movs r0, #0x61
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	b _08011DDC
	.align 2, 0
_08011D24: .4byte 0x030013B4
_08011D28: .4byte 0x030024B0
_08011D2C: .4byte 0x03004440
_08011D30:
	adds r4, #4
	movs r0, #0x61
	rsbs r0, r0, #0
	ands r0, r1
	b _08011DDC
_08011D3A:
	movs r0, #0x30
	ands r0, r2
	cmp r0, #0
	beq _08011D58
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0
	beq _08011DD6
	subs r5, #4
	movs r0, #0x61
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	b _08011DDC
_08011D58:
	movs r0, #0x40
	ands r0, r2
	cmp r0, #0
	beq _08011D6E
	subs r4, #4
	movs r0, #0x61
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	b _08011DDC
_08011D6E:
	adds r4, #4
	movs r0, #0x61
	rsbs r0, r0, #0
	ands r0, r1
	b _08011DDC
_08011D78:
	ldrh r3, [r3]
	movs r0, #0x30
	ands r0, r3
	cmp r0, #0
	beq _08011D98
	movs r0, #0x20
	ands r0, r3
	cmp r0, #0
	beq _08011DD6
	subs r5, #4
	movs r0, #0x61
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	b _08011DDC
_08011D98:
	movs r0, #0xc0
	ands r0, r2
	cmp r0, #0
	beq _08011DC0
	movs r0, #0x40
	ands r0, r2
	cmp r0, #0
	beq _08011DB6
	subs r4, #4
	movs r0, #0x61
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	b _08011DDC
_08011DB6:
	adds r4, #4
	movs r0, #0x61
	rsbs r0, r0, #0
	ands r0, r1
	b _08011DDC
_08011DC0:
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0
	beq _08011DD6
	subs r5, #4
	movs r0, #0x61
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	b _08011DDC
_08011DD6:
	adds r5, #4
	adds r0, r1, #0
	orrs r0, r7
_08011DDC:
	strb r0, [r6]
	asrs r0, r5, #1
	asrs r1, r4, #1
	bl sub_08011C78
	ldr r6, _08011E44 @ =0x03004440
	movs r1, #0xf
	ands r1, r0
	lsls r3, r1, #7
	ldrh r2, [r6]
	ldr r0, _08011E48 @ =0xFFFFF87F
	ands r0, r2
	orrs r0, r3
	strh r0, [r6]
	cmp r1, #0xe
	bhi _08011ECA
	ldr r0, _08011E4C @ =0x030013B4
	ldr r0, [r0]
	adds r1, r0, #0
	adds r1, #0x68
	movs r2, #0
	ldrsh r5, [r1, r2]
	adds r0, #0x6a
	movs r1, #0
	ldrsh r4, [r0, r1]
	ldrb r2, [r6]
	lsls r0, r2, #0x19
	lsrs r7, r0, #0x1e
	movs r0, #0x60
	ands r0, r2
	cmp r0, #0x20
	beq _08011E20
	cmp r0, #0x60
	bne _08011E5E
_08011E20:
	ldr r0, _08011E50 @ =0x030024B0
	ldrh r1, [r0, #2]
	movs r0, #0xc0
	ands r0, r1
	cmp r0, #0
	beq _08011ECA
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08011E54
	subs r4, #4
	movs r0, #0x61
	rsbs r0, r0, #0
	ands r0, r2
	movs r1, #0x40
	orrs r0, r1
	b _08011E8A
	.align 2, 0
_08011E44: .4byte 0x03004440
_08011E48: .4byte 0xFFFFF87F
_08011E4C: .4byte 0x030013B4
_08011E50: .4byte 0x030024B0
_08011E54:
	adds r4, #4
	movs r0, #0x61
	rsbs r0, r0, #0
	ands r0, r2
	b _08011E8A
_08011E5E:
	ldr r0, _08011E80 @ =0x030024B0
	ldrh r1, [r0, #2]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	beq _08011ECA
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08011E84
	subs r5, #4
	movs r0, #0x61
	rsbs r0, r0, #0
	ands r0, r2
	movs r1, #0x20
	orrs r0, r1
	b _08011E8A
	.align 2, 0
_08011E80: .4byte 0x030024B0
_08011E84:
	adds r5, #4
	movs r0, #0x60
	orrs r0, r2
_08011E8A:
	strb r0, [r6]
	asrs r0, r5, #1
	asrs r1, r4, #1
	bl sub_08011C78
	ldr r6, _08011F00 @ =0x03004440
	movs r1, #0xf
	ands r1, r0
	lsls r3, r1, #7
	ldrh r2, [r6]
	ldr r0, _08011F04 @ =0xFFFFF87F
	ands r0, r2
	orrs r0, r3
	strh r0, [r6]
	cmp r1, #0xe
	bhi _08011ECA
	ldr r0, _08011F08 @ =0x030013B4
	ldr r0, [r0]
	adds r1, r0, #0
	adds r1, #0x68
	movs r2, #0
	ldrsh r5, [r1, r2]
	adds r0, #0x6a
	movs r1, #0
	ldrsh r4, [r0, r1]
	lsls r2, r7, #5
	ldrb r1, [r6]
	movs r0, #0x61
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r6]
_08011ECA:
	ldr r0, _08011F08 @ =0x030013B4
	ldr r1, [r0]
	adds r0, r1, #0
	adds r0, #0x68
	strh r5, [r0]
	adds r0, #2
	strh r4, [r0]
	ldr r3, [r1, #0x38]
	ldr r4, _08011F0C @ =0x080803B4
	ldr r0, _08011F00 @ =0x03004440
	ldrb r0, [r0]
	lsls r2, r0, #0x19
	lsrs r0, r2, #0x1e
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrb r1, [r3, #0x10]
	ldrh r0, [r0]
	cmp r1, r0
	beq _08011F26
	lsrs r0, r2, #0x1e
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrb r1, [r0]
	adds r0, r3, #0
	bl sub_08009AFC
	b _08011F26
	.align 2, 0
_08011F00: .4byte 0x03004440
_08011F04: .4byte 0xFFFFF87F
_08011F08: .4byte 0x030013B4
_08011F0C: .4byte 0x080803B4
_08011F10:
	ldr r0, [r1, #0x38]
	ldr r2, _08011F58 @ =0x080803AC
	ldr r1, _08011F5C @ =0x03004440
	ldrb r1, [r1]
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x1e
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrb r1, [r1]
	bl sub_08009AFC
_08011F26:
	ldr r4, _08011F5C @ =0x03004440
	ldrh r2, [r4]
	movs r0, #0xf0
	lsls r0, r0, #3
	ands r0, r2
	movs r1, #0xc0
	lsls r1, r1, #2
	cmp r0, r1
	bne _08011F64
	ldr r0, _08011F60 @ =0x030013B4
	ldr r0, [r0]
	ldr r0, [r0, #0x38]
	ldr r2, _08011F58 @ =0x080803AC
	ldrb r1, [r4]
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x1e
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrb r1, [r1]
	bl sub_08009AFC
	movs r0, #1
	mov r2, r8
	strb r0, [r2]
	b _08011FBC
	.align 2, 0
_08011F58: .4byte 0x080803AC
_08011F5C: .4byte 0x03004440
_08011F60: .4byte 0x030013B4
_08011F64:
	ldr r0, _08011FA8 @ =0x030024B0
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08011FBC
	lsls r1, r2, #0x15
	lsrs r0, r1, #0x1c
	cmp r0, #5
	bhi _08011FBC
	bl sub_08012444
	cmp r0, #0
	beq _08011FBC
	ldr r0, _08011FAC @ =0x03004400
	ldr r0, [r0, #0x10]
	cmp r0, #0
	beq _08011FBC
	ldr r0, _08011FB0 @ =0x030013B4
	ldr r0, [r0]
	ldr r0, [r0, #0x38]
	ldr r2, _08011FB4 @ =0x080803AC
	ldrb r1, [r4]
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x1e
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrb r1, [r1]
	bl sub_08009AFC
	movs r0, #1
	mov r1, r8
	strb r0, [r1]
	b _08011FBC
	.align 2, 0
_08011FA8: .4byte 0x030024B0
_08011FAC: .4byte 0x03004400
_08011FB0: .4byte 0x030013B4
_08011FB4: .4byte 0x080803AC
_08011FB8:
	bl sub_08011BB8
_08011FBC:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08011FC8
sub_08011FC8: @ 0x08011FC8
	push {r4, r5, lr}
	bl sub_08007BD4
	adds r5, r0, #0
	ldrb r4, [r5]
	cmp r4, #1
	beq _08012020
	cmp r4, #1
	bgt _08011FE0
	cmp r4, #0
	beq _08011FE6
	b _0801206C
_08011FE0:
	cmp r4, #2
	beq _08012068
	b _0801206C
_08011FE6:
	ldr r2, _08012014 @ =0x03004440
	ldrh r0, [r2]
	movs r3, #0xf0
	lsls r3, r3, #3
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _08012018 @ =0x030013B4
	ldr r0, [r0]
	ldr r0, [r0, #0x38]
	ldr r3, _0801201C @ =0x080803B4
	ldrb r1, [r2]
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x1e
	lsls r1, r1, #1
	adds r1, r1, r3
	ldrb r1, [r1]
	bl sub_08009AFC
	movs r0, #1
	strb r0, [r5]
	strh r4, [r5, #2]
	b _0801206C
	.align 2, 0
_08012014: .4byte 0x03004440
_08012018: .4byte 0x030013B4
_0801201C: .4byte 0x080803B4
_08012020:
	ldr r0, _0801205C @ =0x030013B4
	ldr r2, [r0]
	adds r1, r2, #0
	adds r1, #0x6a
	ldrh r0, [r1]
	subs r0, #4
	strh r0, [r1]
	ldrh r0, [r5, #2]
	adds r0, #1
	strh r0, [r5, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xc
	bls _0801206C
	ldr r0, [r2, #0x38]
	ldr r2, _08012060 @ =0x080803AC
	ldr r1, _08012064 @ =0x03004440
	ldrb r1, [r1]
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x1e
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrb r1, [r1]
	bl sub_08009AFC
	movs r0, #2
	strb r0, [r5]
	movs r0, #0
	strh r0, [r5, #2]
	b _0801206C
	.align 2, 0
_0801205C: .4byte 0x030013B4
_08012060: .4byte 0x080803AC
_08012064: .4byte 0x03004440
_08012068:
	bl sub_08011BB8
_0801206C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08012074
sub_08012074: @ 0x08012074
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _080120A8 @ =0x030013B4
	ldr r0, [r5]
	movs r1, #0xc
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	adds r6, r0, #0
	ldr r0, [r5]
	movs r1, #0xc
	ldrsh r0, [r0, r1]
	ldr r1, _080120AC @ =0x080804D4
	lsls r4, r4, #2
	adds r4, r4, r1
	ldr r1, [r4]
	bl sub_08007B84
	movs r0, #0
	strb r0, [r6]
	strh r0, [r6, #2]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080120A8: .4byte 0x030013B4
_080120AC: .4byte 0x080804D4

	thumb_func_start sub_080120B0
sub_080120B0: @ 0x080120B0
	push {lr}
	movs r0, #0
	bl sub_08012074
	pop {r0}
	bx r0

	thumb_func_start sub_080120BC
sub_080120BC: @ 0x080120BC
	push {lr}
	ldr r0, _080120E4 @ =0x030013B4
	ldr r1, [r0]
	adds r0, r1, #0
	adds r0, #0x68
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	subs r0, #0x78
	adds r1, #0x6a
	ldrh r1, [r1]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x11
	subs r1, #0x62
	bl sub_0800B278
	bl sub_080120B0
	pop {r0}
	bx r0
	.align 2, 0
_080120E4: .4byte 0x030013B4

	thumb_func_start sub_080120E8
sub_080120E8: @ 0x080120E8
	push {lr}
	ldr r0, _0801210C @ =0x030013B4
	ldr r1, [r0]
	adds r0, r1, #0
	adds r0, #0x68
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	subs r0, #0x78
	adds r1, #0x6a
	ldrh r1, [r1]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x11
	subs r1, #0x62
	bl sub_0800B278
	pop {r0}
	bx r0
	.align 2, 0
_0801210C: .4byte 0x030013B4

	thumb_func_start sub_08012110
sub_08012110: @ 0x08012110
	push {lr}
	ldr r0, _08012120 @ =0x030013B4
	ldr r0, [r0]
	ldr r0, [r0, #0x38]
	bl sub_08009A00
	pop {r0}
	bx r0
	.align 2, 0
_08012120: .4byte 0x030013B4

	thumb_func_start sub_08012124
sub_08012124: @ 0x08012124
	push {r4, r5, r6, lr}
	movs r0, #2
	movs r1, #0x80
	bl sub_080099E0
	adds r5, r0, #0
	movs r1, #1
	bl sub_08009A34
	bl sub_0800B2BC
	ldr r6, _080121D8 @ =0x030013B4
	ldr r1, [r6]
	adds r1, #0x68
	ldrh r4, [r1]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x11
	subs r4, r4, r0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	bl sub_0800B2C8
	ldr r1, [r6]
	adds r1, #0x6a
	ldrh r2, [r1]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x11
	subs r2, r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08009A70
	ldr r1, _080121DC @ =0x06010000
	adds r0, r5, #0
	bl sub_08009A78
	ldr r0, [r6]
	ldr r1, [r0, #0x64]
	adds r0, r5, #0
	movs r2, #0
	bl sub_08009BBC
	adds r0, r5, #0
	movs r1, #0
	bl sub_08009AB4
	ldr r1, _080121E0 @ =0x080839DC
	ldr r0, _080121E4 @ =0x03004440
	ldrb r3, [r0]
	lsls r2, r3, #0x1b
	lsrs r0, r2, #0x1e
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, _080121E8 @ =0x080839FC
	lsrs r2, r2, #0x1e
	lsls r2, r2, #2
	adds r2, r2, r0
	ldr r2, [r2]
	ldr r0, _080121EC @ =0x080803AC
	lsls r3, r3, #0x19
	lsrs r3, r3, #0x1e
	lsls r3, r3, #1
	adds r3, r3, r0
	ldrb r3, [r3]
	adds r0, r5, #0
	bl sub_08009ACC
	adds r0, r5, #0
	movs r1, #0xff
	bl sub_08009B40
	ldr r0, [r6]
	str r5, [r0, #0x38]
	movs r1, #0xe
	ldrsh r0, [r0, r1]
	ldr r1, _080121F0 @ =sub_08012110
	bl sub_08007BA0
	ldr r0, [r6]
	movs r1, #0xe
	ldrsh r0, [r0, r1]
	ldr r1, _080121F4 @ =sub_080121F8
	bl sub_08007B84
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080121D8: .4byte 0x030013B4
_080121DC: .4byte 0x06010000
_080121E0: .4byte 0x080839DC
_080121E4: .4byte 0x03004440
_080121E8: .4byte 0x080839FC
_080121EC: .4byte 0x080803AC
_080121F0: .4byte sub_08012110
_080121F4: .4byte sub_080121F8

	thumb_func_start sub_080121F8
sub_080121F8: @ 0x080121F8
	push {r4, r5, r6, lr}
	ldr r5, _08012238 @ =0x030013B4
	ldr r0, [r5]
	ldr r6, [r0, #0x38]
	bl sub_0800B2BC
	ldr r1, [r5]
	adds r1, #0x68
	ldrh r4, [r1]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x11
	subs r4, r4, r0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	bl sub_0800B2C8
	ldr r1, [r5]
	adds r1, #0x6a
	ldrh r2, [r1]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x11
	subs r2, r2, r0
	adds r2, #1
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_08009A70
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08012238: .4byte 0x030013B4

	thumb_func_start sub_0801223C
sub_0801223C: @ 0x0801223C
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	adds r5, r0, #0
	adds r4, r1, #0
	lsls r5, r5, #0x18
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r6, _08012288 @ =0x030013B4
	ldr r0, [r6]
	lsrs r5, r5, #0x17
	adds r0, #0x10
	adds r0, r0, r5
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	mov r8, r0
	ldr r0, [r6]
	adds r0, #0x10
	adds r0, r0, r5
	movs r1, #0
	ldrsh r0, [r0, r1]
	ldr r1, _0801228C @ =0x080804D8
	lsls r4, r4, #2
	adds r4, r4, r1
	ldr r1, [r4]
	bl sub_08007B84
	movs r0, #0
	mov r1, r8
	strb r0, [r1, #1]
	strh r0, [r1, #2]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08012288: .4byte 0x030013B4
_0801228C: .4byte 0x080804D8

	thumb_func_start sub_08012290
sub_08012290: @ 0x08012290
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _080122B0 @ =0x030013B4
	ldr r3, [r1]
	adds r3, #0x57
	movs r2, #1
	lsls r2, r0
	ldrb r1, [r3]
	bics r1, r2
	strb r1, [r3]
	movs r1, #0
	bl sub_0801223C
	pop {r0}
	bx r0
	.align 2, 0
_080122B0: .4byte 0x030013B4

	thumb_func_start sub_080122B4
sub_080122B4: @ 0x080122B4
	push {r4, r5, lr}
	movs r4, #0
	ldr r5, _080122D4 @ =0x030013B4
_080122BA:
	ldr r0, [r5]
	lsls r1, r4, #2
	adds r0, #0x3c
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_08009A00
	adds r4, #1
	cmp r4, #5
	ble _080122BA
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080122D4: .4byte 0x030013B4

	thumb_func_start sub_080122D8
sub_080122D8: @ 0x080122D8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r7, #0
	ldr r0, _08012310 @ =0x030013B4
	mov sl, r0
	movs r1, #0
	mov sb, r1
	ldr r2, _08012314 @ =0x08080434
	mov r8, r2
_080122F0:
	movs r0, #2
	movs r1, #0x80
	bl sub_080099E0
	adds r6, r0, #0
	mov r1, sb
	lsrs r0, r1, #0x18
	bl sub_08012444
	cmp r0, #0
	beq _08012318
	adds r0, r6, #0
	movs r1, #1
	bl sub_08009A34
	b _08012320
	.align 2, 0
_08012310: .4byte 0x030013B4
_08012314: .4byte 0x08080434
_08012318:
	adds r0, r6, #0
	movs r1, #0
	bl sub_08009A34
_08012320:
	bl sub_0800B2BC
	lsls r5, r7, #2
	mov r2, r8
	ldrh r4, [r2]
	subs r4, r4, r0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	bl sub_0800B2C8
	mov r1, r8
	ldrh r2, [r1, #2]
	subs r2, r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_08009A70
	mov r2, sl
	ldr r0, [r2]
	ldr r1, [r0, #0x58]
	adds r0, r6, #0
	bl sub_08009A78
	adds r0, r6, #0
	movs r1, #1
	bl sub_08009AB4
	mov r0, sb
	lsrs r4, r0, #0x18
	adds r0, r6, #0
	ldr r1, _080123D0 @ =0x080E8658
	ldr r2, _080123D4 @ =0x080E863C
	adds r3, r4, #0
	bl sub_08009ACC
	adds r0, r6, #0
	movs r1, #0xff
	bl sub_08009B40
	mov r1, sl
	ldr r0, [r1]
	adds r0, #0x3c
	adds r0, r0, r5
	str r6, [r0]
	ldr r0, _080123D8 @ =0x080804D8
	ldr r0, [r0]
	movs r1, #0x44
	movs r2, #0
	bl sub_08007968
	mov r2, sl
	ldr r1, [r2]
	lsls r2, r7, #1
	adds r1, #0x10
	adds r1, r1, r2
	strh r0, [r1]
	movs r2, #0
	ldrsh r0, [r1, r2]
	bl sub_08007BBC
	strb r7, [r0]
	adds r0, r4, #0
	bl sub_08012290
	movs r0, #0x80
	lsls r0, r0, #0x11
	add sb, r0
	movs r1, #4
	add r8, r1
	adds r7, #1
	cmp r7, #5
	ble _080122F0
	ldr r0, _080123DC @ =0x030013B4
	ldr r0, [r0]
	movs r2, #0x10
	ldrsh r0, [r0, r2]
	ldr r1, _080123E0 @ =sub_080122B4
	bl sub_08007BA0
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080123D0: .4byte 0x080E8658
_080123D4: .4byte 0x080E863C
_080123D8: .4byte 0x080804D8
_080123DC: .4byte 0x030013B4
_080123E0: .4byte sub_080122B4

	thumb_func_start sub_080123E4
sub_080123E4: @ 0x080123E4
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	bl sub_08007BD4
	adds r6, r0, #0
	ldr r0, _0801243C @ =0x030013B4
	ldr r1, [r0]
	ldrb r0, [r6]
	lsls r0, r0, #2
	adds r1, #0x3c
	adds r1, r1, r0
	ldr r1, [r1]
	mov r8, r1
	bl sub_0800B2BC
	ldr r5, _08012440 @ =0x08080434
	ldrb r1, [r6]
	lsls r1, r1, #2
	adds r1, r1, r5
	ldrh r4, [r1]
	subs r4, r4, r0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	bl sub_0800B2C8
	ldrb r1, [r6]
	lsls r1, r1, #2
	adds r5, #2
	adds r1, r1, r5
	ldrh r2, [r1]
	subs r2, r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	mov r0, r8
	adds r1, r4, #0
	bl sub_08009A70
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801243C: .4byte 0x030013B4
_08012440: .4byte 0x08080434

	thumb_func_start sub_08012444
sub_08012444: @ 0x08012444
	push {lr}
	lsls r0, r0, #0x18
	ldr r1, _08012460 @ =0x0808044C
	lsrs r0, r0, #0x17
	adds r0, r0, r1
	ldrb r0, [r0]
	bl sub_08001A00
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08012464
	movs r0, #0
	b _08012466
	.align 2, 0
_08012460: .4byte 0x0808044C
_08012464:
	movs r0, #1
_08012466:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0801246C
sub_0801246C: @ 0x0801246C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _08012534 @ =0x03004400
	ldr r0, [r0]
	bl sub_0800B80C
	ldr r4, _08012538 @ =0x03004450
	movs r0, #0
	adds r1, r4, #0
	movs r2, #0x14
	bl sub_08007EFC
	ldrb r1, [r4]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4]
	movs r0, #0
	mov r8, r0
	ldr r7, _0801253C @ =0x080805F8
	adds r4, #2
	movs r6, #7
_080124A0:
	ldrh r5, [r7]
	ldrb r0, [r7]
	bl sub_08001A00
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080124B6
	strh r5, [r4]
	adds r4, #2
	movs r0, #1
	add r8, r0
_080124B6:
	adds r7, #2
	subs r6, #1
	cmp r6, #0
	bge _080124A0
	mov r0, r8
	cmp r0, #0
	ble _080124EC
	ldr r0, _08012538 @ =0x03004450
	adds r5, r0, #2
	mov sb, r5
	mov r0, r8
	lsls r7, r0, #0x10
	mov r6, r8
_080124D0:
	ldrh r4, [r5]
	lsrs r0, r7, #0x10
	bl sub_0800B828
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xf
	add r0, sb
	ldrh r1, [r0]
	strh r1, [r5]
	strh r4, [r0]
	adds r5, #2
	subs r6, #1
	cmp r6, #0
	bne _080124D0
_080124EC:
	ldr r2, _08012538 @ =0x03004450
	ldrb r1, [r2, #1]
	movs r0, #0x1f
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #1]
	movs r6, #0
	adds r4, r2, #0
	ldr r3, _08012540 @ =0x08080608
	movs r7, #1
	movs r5, #0x1f
_08012504:
	ldrh r0, [r3]
	cmp r8, r0
	blt _0801251E
	ldrb r2, [r4, #1]
	lsrs r1, r2, #5
	adds r0, r7, #0
	lsls r0, r6
	orrs r1, r0
	lsls r1, r1, #5
	adds r0, r5, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #1]
_0801251E:
	adds r3, #2
	adds r6, #1
	cmp r6, #2
	ble _08012504
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08012534: .4byte 0x03004400
_08012538: .4byte 0x03004450
_0801253C: .4byte 0x080805F8
_08012540: .4byte 0x08080608

	thumb_func_start sub_08012544
sub_08012544: @ 0x08012544
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r6, _08012734 @ =0x030013B8
	movs r0, #0xcc
	bl sub_08007CE8
	adds r1, r0, #0
	str r1, [r6]
	movs r0, #0
	movs r2, #0xcc
	bl sub_08007EFC
	ldr r7, _08012738 @ =0x03004450
	ldrb r1, [r7]
	movs r0, #0xc0
	ands r0, r1
	cmp r0, #0
	beq _080125D0
	ldr r5, _0801273C @ =0x080839CC
	ldrb r0, [r7, #1]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1e
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldr r1, _08012740 @ =0x05000200
	bl LoadPalette_08008308
	ldr r4, _08012744 @ =0x080839EC
	ldrb r0, [r7, #1]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1e
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	add r1, sp, #4
	bl sub_08008380
	ldr r1, [r6]
	adds r2, r1, #0
	adds r2, #0xb4
	str r0, [r2]
	adds r1, #0xb8
	ldr r0, [sp, #4]
	str r0, [r1]
	ldrb r0, [r7, #1]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1e
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldr r1, _08012748 @ =0x05000220
	bl LoadPalette_08008308
	ldrb r0, [r7, #1]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1e
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	add r1, sp, #4
	bl sub_08008380
	ldr r1, [r6]
	adds r2, r1, #0
	adds r2, #0xbc
	str r0, [r2]
	adds r1, #0xc0
	ldr r0, [sp, #4]
	str r0, [r1]
_080125D0:
	ldr r0, _0801274C @ =0x080F7F9C
	ldr r1, _08012750 @ =0x05000240
	bl LoadPalette_08008308
	ldr r0, _08012754 @ =0x080F8200
	add r1, sp, #4
	bl sub_08008380
	ldr r1, [r6]
	adds r2, r1, #0
	adds r2, #0xc4
	str r0, [r2]
	adds r1, #0xc8
	ldr r0, [sp, #4]
	str r0, [r1]
	ldr r4, _08012758 @ =0x06010C00
	ldr r0, _0801275C @ =0x080E9F34
	ldr r1, _08012760 @ =0x05000260
	bl LoadPalette_08008308
	ldr r0, [r6]
	adds r0, #0xa0
	str r4, [r0]
	ldr r0, _08012764 @ =0x080EA24C
	adds r1, r4, #0
	bl DecompressData_08008374
	adds r4, r0, r4
	ldr r0, _08012768 @ =0x080F3010
	ldr r1, _0801276C @ =0x05000320
	bl LoadPalette_08008308
	ldr r0, [r6]
	adds r0, #0xa4
	str r4, [r0]
	ldr r0, _08012770 @ =0x080F305C
	adds r1, r4, #0
	bl DecompressData_08008374
	adds r4, r4, r0
	ldr r0, _08012774 @ =0x080F3D18
	ldr r1, _08012778 @ =0x05000300
	bl LoadPalette_08008308
	ldr r0, [r6]
	adds r0, #0xa8
	str r4, [r0]
	ldr r0, _0801277C @ =0x080F3E34
	adds r1, r4, #0
	bl DecompressData_08008374
	adds r4, r4, r0
	ldr r0, _08012780 @ =0x0809C73C
	ldr r1, _08012784 @ =0x050002E0
	bl LoadPalette_08008308
	ldr r0, [r6]
	adds r0, #0xac
	str r4, [r0]
	ldr r0, _08012788 @ =0x0809C890
	adds r1, r4, #0
	bl DecompressData_08008374
	adds r4, r4, r0
	ldr r0, [r6]
	adds r0, #0xb0
	str r4, [r0]
	ldr r0, _0801278C @ =0x080E91B4
	movs r1, #0xa0
	lsls r1, r1, #0x13
	bl LoadPalette_08008308
	ldr r0, _08012790 @ =0x080E96DC
	movs r1, #0xc0
	lsls r1, r1, #0x13
	bl DecompressData_08008374
	ldr r0, _08012794 @ =0x080E9288
	ldr r1, _08012798 @ =0x0600F800
	movs r2, #0
	movs r3, #0
	bl LoadTileMap_080083CC
	ldr r0, _0801279C @ =0x080E9560
	ldr r1, _080127A0 @ =0x0600F000
	movs r2, #0
	movs r3, #0
	bl LoadTileMap_080083CC
	ldr r0, _080127A4 @ =0x080E9278
	movs r1, #3
	bl sub_08009554
	ldr r0, _080127A8 @ =sub_080134A8
	movs r1, #0x44
	movs r2, #0
	bl sub_08007968
	ldr r1, [r6]
	strh r0, [r1, #8]
	ldr r0, _080127AC @ =sub_080136F0
	movs r1, #0x45
	movs r2, #0
	bl sub_08007968
	ldr r1, [r6]
	strh r0, [r1, #0xa]
	bl sub_08013B94
	ldr r0, _080127B0 @ =sub_08013F34
	movs r1, #0x46
	movs r2, #0
	bl sub_08007968
	ldr r1, [r6]
	strh r0, [r1, #0x12]
	ldr r0, _080127B4 @ =sub_080143AC
	movs r1, #0x47
	movs r2, #0
	bl sub_08007968
	ldr r1, [r6]
	strh r0, [r1, #0x14]
	bl sub_08014A94
	ldr r0, _080127B8 @ =sub_08014F1C
	movs r1, #0x42
	movs r2, #0
	bl sub_08007968
	ldr r1, [r6]
	strh r0, [r1, #0x1a]
	ldr r0, _080127BC @ =sub_08015038
	movs r1, #0x49
	movs r2, #0
	bl sub_08007968
	ldr r1, [r6]
	strh r0, [r1, #0x1c]
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
	movs r1, #0x1d
	movs r2, #3
	movs r3, #0
	bl sub_08004028
	bl sub_080057C0
	movs r0, #1
	bl sub_08005A88
	ldrb r1, [r7, #1]
	lsls r1, r1, #0x1d
	lsrs r1, r1, #0x1e
	movs r0, #8
	bl sub_08005BE0
	ldrb r1, [r7, #1]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1e
	movs r0, #9
	bl sub_08005BE0
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08012734: .4byte 0x030013B8
_08012738: .4byte 0x03004450
_0801273C: .4byte 0x080839CC
_08012740: .4byte 0x05000200
_08012744: .4byte 0x080839EC
_08012748: .4byte 0x05000220
_0801274C: .4byte 0x080F7F9C
_08012750: .4byte 0x05000240
_08012754: .4byte 0x080F8200
_08012758: .4byte 0x06010C00
_0801275C: .4byte 0x080E9F34
_08012760: .4byte 0x05000260
_08012764: .4byte 0x080EA24C
_08012768: .4byte 0x080F3010
_0801276C: .4byte 0x05000320
_08012770: .4byte 0x080F305C
_08012774: .4byte 0x080F3D18
_08012778: .4byte 0x05000300
_0801277C: .4byte 0x080F3E34
_08012780: .4byte 0x0809C73C
_08012784: .4byte 0x050002E0
_08012788: .4byte 0x0809C890
_0801278C: .4byte 0x080E91B4
_08012790: .4byte 0x080E96DC
_08012794: .4byte 0x080E9288
_08012798: .4byte 0x0600F800
_0801279C: .4byte 0x080E9560
_080127A0: .4byte 0x0600F000
_080127A4: .4byte 0x080E9278
_080127A8: .4byte sub_080134A8
_080127AC: .4byte sub_080136F0
_080127B0: .4byte sub_08013F34
_080127B4: .4byte sub_080143AC
_080127B8: .4byte sub_08014F1C
_080127BC: .4byte sub_08015038

	thumb_func_start sub_080127C0
sub_080127C0: @ 0x080127C0
	push {r4, r5, lr}
	bl sub_080058A4
	ldr r0, _08012840 @ =0x080E9278
	bl sub_080095E0
	ldr r4, _08012844 @ =0x030013B8
	ldr r0, [r4]
	movs r1, #8
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	ldr r0, [r4]
	movs r1, #0xa
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	movs r5, #0
_080127E4:
	ldr r0, [r4]
	lsls r1, r5, #1
	adds r0, #0xc
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	adds r5, #1
	cmp r5, #2
	ble _080127E4
	ldr r4, _08012844 @ =0x030013B8
	ldr r0, [r4]
	movs r1, #0x12
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
	movs r1, #0x1c
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08012840: .4byte 0x080E9278
_08012844: .4byte 0x030013B8

	thumb_func_start sub_08012848
sub_08012848: @ 0x08012848
	push {r4, r5, lr}
	movs r0, #0
	bl sub_080081A0
	bl sub_08012544
	ldr r4, _08012868 @ =0x030013B8
	ldr r5, _0801286C @ =0x08080628
_08012858:
	ldr r1, [r4]
	ldrh r0, [r1, #4]
	cmp r0, #0
	beq _08012870
	subs r0, #1
	strh r0, [r1, #4]
	b _08012884
	.align 2, 0
_08012868: .4byte 0x030013B8
_0801286C: .4byte 0x08080628
_08012870:
	ldrb r0, [r1]
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	bl call_via_r0
	ldr r0, [r4]
	ldrb r0, [r0, #6]
	cmp r0, #0
	bne _0801288C
_08012884:
	movs r0, #1
	bl ProcSleep_08002B98
	b _08012858
_0801288C:
	bl sub_080127C0
	movs r0, #1
	bl ProcSleep_08002B98
	bl m4aMPlayAllStop
	ldr r4, _080128D4 @ =0x030013B8
	ldr r0, [r4]
	adds r0, #0xb4
	ldr r0, [r0]
	cmp r0, #0
	beq _080128AA
	bl sub_08007CF8
_080128AA:
	ldr r0, [r4]
	adds r0, #0xbc
	ldr r0, [r0]
	cmp r0, #0
	beq _080128B8
	bl sub_08007CF8
_080128B8:
	ldr r0, [r4]
	adds r0, #0xc4
	ldr r0, [r0]
	bl sub_08007CF8
	ldr r0, [r4]
	bl sub_08007CF8
	bl sub_08002B0C
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080128D4: .4byte 0x030013B8

	thumb_func_start sub_080128D8
sub_080128D8: @ 0x080128D8
	ldr r1, _080128EC @ =0x030013B8
	ldr r2, [r1]
	movs r3, #0
	strb r0, [r2]
	ldr r0, [r1]
	strb r3, [r0, #1]
	ldr r0, [r1]
	strh r3, [r0, #2]
	bx lr
	.align 2, 0
_080128EC: .4byte 0x030013B8

	thumb_func_start sub_080128F0
sub_080128F0: @ 0x080128F0
	push {r4, r5, r6, lr}
	ldr r6, _08012904 @ =0x030013B8
	ldr r0, [r6]
	ldrb r0, [r0, #1]
	cmp r0, #0
	beq _08012908
	cmp r0, #1
	beq _0801296C
	b _0801299A
	.align 2, 0
_08012904: .4byte 0x030013B8
_08012908:
	bl sub_08008174
	ldr r4, _0801295C @ =0x030024E0
	ldr r0, _08012960 @ =0x00001F03
	strh r0, [r4, #8]
	ldrh r0, [r4]
	movs r2, #0x80
	lsls r2, r2, #4
	adds r1, r2, #0
	orrs r0, r1
	ldr r1, _08012964 @ =0x00001E02
	strh r1, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r1, r2, #0
	orrs r0, r1
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4]
	movs r0, #1
	bl sub_08004124
	adds r4, #0x4f
	movs r5, #1
	strb r5, [r4]
	ldr r0, _08012968 @ =0x03004450
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _08012950
	movs r0, #0x48
	bl m4aSongNumStartOrContinue
_08012950:
	bl sub_0800B770
	ldr r0, [r6]
	strb r5, [r0, #1]
	b _0801299A
	.align 2, 0
_0801295C: .4byte 0x030024E0
_08012960: .4byte 0x00001F03
_08012964: .4byte 0x00001E02
_08012968: .4byte 0x03004450
_0801296C:
	ldr r0, _08012980 @ =0x03004450
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08012984
	movs r0, #6
	bl sub_080128D8
	b _0801299A
	.align 2, 0
_08012980: .4byte 0x03004450
_08012984:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08012994
	movs r0, #2
	bl sub_080128D8
	b _0801299A
_08012994:
	movs r0, #1
	bl sub_080128D8
_0801299A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080129A0
sub_080129A0: @ 0x080129A0
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #0x10
	ldr r1, _080129C4 @ =0x030013B8
	ldr r0, [r1]
	ldrb r0, [r0, #1]
	adds r4, r1, #0
	cmp r0, #5
	bls _080129B8
	b _08012BAA
_080129B8:
	lsls r0, r0, #2
	ldr r1, _080129C8 @ =_080129CC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080129C4: .4byte 0x030013B8
_080129C8: .4byte _080129CC
_080129CC: @ jump table
	.4byte _080129E4 @ case 0
	.4byte _080129EC @ case 1
	.4byte _08012A0C @ case 2
	.4byte _08012A70 @ case 3
	.4byte _08012ACE @ case 4
	.4byte _08012B80 @ case 5
_080129E4:
	ldr r1, [r4]
	movs r0, #1
	strb r0, [r1, #1]
	b _08012BAA
_080129EC:
	bl sub_08005934
	ldr r0, _08012A04 @ =0x08082988
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	bl sub_08005A2C
	ldr r0, _08012A08 @ =0x030013B8
	ldr r1, [r0]
	b _08012AA2
	.align 2, 0
_08012A04: .4byte 0x08082988
_08012A08: .4byte 0x030013B8
_08012A0C:
	ldr r0, [r4]
	adds r0, #0xb0
	ldr r2, [r0]
	ldr r0, _08012A48 @ =0xF9FF0000
	adds r2, r2, r0
	lsls r2, r2, #0xb
	lsrs r2, r2, #0x10
	add r0, sp, #4
	movs r1, #2
	movs r3, #8
	bl sub_0800A16C
	add r0, sp, #4
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _08012A4C
	ldr r0, [r4]
	adds r1, r0, #0
	adds r1, #0xb4
	movs r2, #0
	str r2, [r1]
	adds r0, #0xbc
	str r2, [r0]
	movs r0, #8
	bl sub_080128D8
	b _08012BAA
	.align 2, 0
_08012A48: .4byte 0xF9FF0000
_08012A4C:
	ldr r3, _08012A6C @ =0x03004450
	add r0, sp, #4
	movs r2, #3
	ldrb r1, [r0]
	ands r1, r2
	lsls r1, r1, #1
	ldrb r2, [r3, #1]
	movs r0, #7
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #1]
	ldr r1, [r4]
	movs r0, #3
	strb r0, [r1, #1]
	b _08012BAA
	.align 2, 0
_08012A6C: .4byte 0x03004450
_08012A70:
	ldr r0, [r4]
	adds r0, #0xb0
	ldr r2, [r0]
	ldr r0, _08012AA8 @ =0xF9FF0000
	adds r2, r2, r0
	lsls r2, r2, #0xb
	lsrs r2, r2, #0x10
	ldr r5, _08012AAC @ =0x03004450
	ldrb r0, [r5, #1]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1e
	str r0, [sp]
	add r0, sp, #4
	movs r1, #2
	movs r3, #8
	bl sub_0800A194
	add r0, sp, #4
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _08012AB0
	ldr r1, [r4]
_08012AA2:
	movs r0, #2
	strb r0, [r1, #1]
	b _08012BAA
	.align 2, 0
_08012AA8: .4byte 0xF9FF0000
_08012AAC: .4byte 0x03004450
_08012AB0:
	add r0, sp, #4
	movs r2, #3
	ldrb r1, [r0]
	ands r1, r2
	lsls r1, r1, #3
	ldrb r2, [r5, #1]
	movs r0, #0x19
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r5, #1]
	ldr r1, [r4]
	movs r0, #4
	strb r0, [r1, #1]
	b _08012BAA
_08012ACE:
	ldr r0, _08012B68 @ =0x080839CC
	mov sb, r0
	ldr r4, _08012B6C @ =0x03004450
	ldrb r0, [r4, #1]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1e
	lsls r0, r0, #2
	add r0, sb
	ldr r0, [r0]
	ldr r1, _08012B70 @ =0x05000200
	bl LoadPalette_08008308
	ldr r0, _08012B74 @ =0x080839EC
	mov r8, r0
	ldrb r0, [r4, #1]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1e
	lsls r0, r0, #2
	add r0, r8
	ldr r0, [r0]
	add r6, sp, #8
	adds r1, r6, #0
	bl sub_08008380
	ldr r5, _08012B78 @ =0x030013B8
	ldr r1, [r5]
	adds r2, r1, #0
	adds r2, #0xb4
	str r0, [r2]
	adds r1, #0xb8
	ldr r0, [sp, #8]
	str r0, [r1]
	movs r0, #1
	bl ProcSleep_08002B98
	ldrb r0, [r4, #1]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1e
	lsls r0, r0, #2
	add r0, sb
	ldr r0, [r0]
	ldr r1, _08012B7C @ =0x05000220
	bl LoadPalette_08008308
	ldrb r0, [r4, #1]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1e
	lsls r0, r0, #2
	add r0, r8
	ldr r0, [r0]
	adds r1, r6, #0
	bl sub_08008380
	ldr r1, [r5]
	adds r2, r1, #0
	adds r2, #0xbc
	str r0, [r2]
	adds r1, #0xc0
	ldr r0, [sp, #8]
	str r0, [r1]
	movs r0, #1
	bl ProcSleep_08002B98
	bl sub_08014B30
	movs r0, #0
	bl sub_080149AC
	bl sub_08014BB8
	movs r0, #1
	bl sub_080149AC
	ldr r1, [r5]
	movs r0, #5
	strb r0, [r1, #1]
	b _08012BAA
	.align 2, 0
_08012B68: .4byte 0x080839CC
_08012B6C: .4byte 0x03004450
_08012B70: .4byte 0x05000200
_08012B74: .4byte 0x080839EC
_08012B78: .4byte 0x030013B8
_08012B7C: .4byte 0x05000220
_08012B80:
	ldr r0, [r4]
	adds r0, #0x9d
	ldrb r0, [r0]
	cmp r0, #0
	bne _08012BAA
	ldr r4, _08012BB8 @ =0x03004450
	ldrb r1, [r4, #1]
	lsls r1, r1, #0x1d
	lsrs r1, r1, #0x1e
	movs r0, #8
	bl sub_08005BE0
	ldrb r1, [r4, #1]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1e
	movs r0, #9
	bl sub_08005BE0
	movs r0, #2
	bl sub_080128D8
_08012BAA:
	add sp, #0x10
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08012BB8: .4byte 0x03004450

	thumb_func_start sub_08012BBC
sub_08012BBC: @ 0x08012BBC
	push {lr}
	ldr r1, _08012BD4 @ =0x030013B8
	ldr r0, [r1]
	ldrb r0, [r0, #1]
	adds r2, r1, #0
	cmp r0, #4
	bhi _08012C90
	lsls r0, r0, #2
	ldr r1, _08012BD8 @ =_08012BDC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08012BD4: .4byte 0x030013B8
_08012BD8: .4byte _08012BDC
_08012BDC: @ jump table
	.4byte _08012BF0 @ case 0
	.4byte _08012BF8 @ case 1
	.4byte _08012C1C @ case 2
	.4byte _08012C60 @ case 3
	.4byte _08012C7C @ case 4
_08012BF0:
	ldr r1, [r2]
	movs r0, #1
	strb r0, [r1, #1]
	b _08012C90
_08012BF8:
	bl sub_08005934
	ldr r0, _08012C14 @ =0x08082994
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	bl sub_080064F8
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08012C30
	ldr r0, _08012C18 @ =0x080829A4
	b _08012C46
	.align 2, 0
_08012C14: .4byte 0x08082994
_08012C18: .4byte 0x080829A4
_08012C1C:
	ldr r0, _08012C3C @ =0x080829AC
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	bl sub_080064F8
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08012C44
_08012C30:
	ldr r0, _08012C40 @ =0x030013B8
	ldr r1, [r0]
	movs r0, #4
	strb r0, [r1, #1]
	b _08012C90
	.align 2, 0
_08012C3C: .4byte 0x080829AC
_08012C40: .4byte 0x030013B8
_08012C44:
	ldr r0, _08012C58 @ =0x080829B8
_08012C46:
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	ldr r0, _08012C5C @ =0x030013B8
	ldr r1, [r0]
	movs r0, #3
	strb r0, [r1, #1]
	b _08012C90
	.align 2, 0
_08012C58: .4byte 0x080829B8
_08012C5C: .4byte 0x030013B8
_08012C60:
	ldr r0, _08012C74 @ =0x08082B5C
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	ldr r0, _08012C78 @ =0x030013B8
	ldr r1, [r0]
	movs r0, #2
	strb r0, [r1, #1]
	b _08012C90
	.align 2, 0
_08012C74: .4byte 0x08082B5C
_08012C78: .4byte 0x030013B8
_08012C7C:
	ldr r0, _08012C94 @ =0x080829C0
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	bl sub_08005A2C
	movs r0, #3
	bl sub_080128D8
_08012C90:
	pop {r0}
	bx r0
	.align 2, 0
_08012C94: .4byte 0x080829C0

	thumb_func_start sub_08012C98
sub_08012C98: @ 0x08012C98
	push {lr}
	movs r0, #4
	bl sub_080128D8
	pop {r0}
	bx r0

	thumb_func_start sub_08012CA4
sub_08012CA4: @ 0x08012CA4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r1, _08012CC4 @ =0x030013B8
	ldr r0, [r1]
	ldrb r0, [r0, #1]
	adds r4, r1, #0
	cmp r0, #5
	bls _08012CB8
	b _0801300E
_08012CB8:
	lsls r0, r0, #2
	ldr r1, _08012CC8 @ =_08012CCC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08012CC4: .4byte 0x030013B8
_08012CC8: .4byte _08012CCC
_08012CCC: @ jump table
	.4byte _08012CE4 @ case 0
	.4byte _08012CEC @ case 1
	.4byte _08012D0C @ case 2
	.4byte _08012DB8 @ case 3
	.4byte _08012F84 @ case 4
	.4byte _08012FE0 @ case 5
_08012CE4:
	ldr r1, [r4]
	movs r0, #1
	strb r0, [r1, #1]
	b _0801300E
_08012CEC:
	movs r4, #0
_08012CEE:
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	bl sub_080139D0
	adds r4, #1
	cmp r4, #2
	ble _08012CEE
	ldr r0, _08012D08 @ =0x030013B8
	ldr r1, [r0]
	movs r0, #2
	strb r0, [r1, #1]
	b _0801300E
	.align 2, 0
_08012D08: .4byte 0x030013B8
_08012D0C:
	ldr r0, [r4]
	adds r0, #0x9a
	ldrb r0, [r0]
	cmp r0, #0
	beq _08012D18
	b _0801300E
_08012D18:
	bl sub_08005934
	ldr r0, _08012D84 @ =0x080829C8
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	ldr r0, [r4]
	ldr r4, _08012D88 @ =0x03004450
	ldrb r1, [r4]
	lsls r1, r1, #0x1e
	lsrs r2, r1, #0x1c
	adds r0, #0x44
	adds r0, r0, r2
	ldr r0, [r0]
	ldr r2, _08012D8C @ =0x08080508
	lsrs r1, r1, #0x1c
	adds r2, #2
	adds r1, r1, r2
	ldrb r1, [r1]
	bl sub_08009AFC
	bl sub_080067F0
	movs r0, #1
	bl sub_08005AC0
	ldr r1, _08012D90 @ =0x08080528
	ldrb r0, [r4]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1c
	adds r0, r0, r1
	ldr r1, [r0]
	movs r0, #2
	bl sub_08005BE0
	ldrb r0, [r4, #1]
	lsrs r0, r0, #5
	ldrb r1, [r4]
	lsls r2, r1, #0x1e
	lsrs r1, r2, #0x1e
	asrs r0, r1
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08012D98
	ldr r0, _08012D94 @ =0x08080610
	lsrs r1, r2, #0x1c
	adds r1, r1, r0
	ldr r0, [r1]
	bl sub_080062D0
	b _08012DA4
	.align 2, 0
_08012D84: .4byte 0x080829C8
_08012D88: .4byte 0x03004450
_08012D8C: .4byte 0x08080508
_08012D90: .4byte 0x08080528
_08012D94: .4byte 0x08080610
_08012D98:
	ldr r0, _08012DB0 @ =0x0808061C
	lsrs r1, r2, #0x1c
	adds r1, r1, r0
	ldr r0, [r1]
	bl sub_080062D0
_08012DA4:
	ldr r0, _08012DB4 @ =0x030013B8
	ldr r1, [r0]
	movs r0, #3
	strb r0, [r1, #1]
	b _0801300E
	.align 2, 0
_08012DB0: .4byte 0x0808061C
_08012DB4: .4byte 0x030013B8
_08012DB8:
	ldr r2, _08012DE8 @ =0x030024B0
	ldrh r1, [r2]
	movs r0, #1
	mov r8, r0
	ands r0, r1
	adds r3, r2, #0
	cmp r0, #0
	beq _08012E14
	ldr r0, _08012DEC @ =0x03004450
	ldrb r1, [r0, #1]
	lsrs r1, r1, #5
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	asrs r1, r0
	mov r0, r8
	ands r1, r0
	cmp r1, #0
	bne _08012DF0
	movs r0, #0xd2
	bl m4aSongNumStart
	b _0801300E
	.align 2, 0
_08012DE8: .4byte 0x030024B0
_08012DEC: .4byte 0x03004450
_08012DF0:
	bl sub_08005ACC
	movs r0, #0
	bl sub_08005AC0
	bl sub_08005B18
	ldr r0, _08012E10 @ =0x030013B8
	ldr r1, [r0]
	movs r0, #4
	strb r0, [r1, #1]
	movs r0, #0xcd
	bl m4aSongNumStart
	b _0801300E
	.align 2, 0
_08012E10: .4byte 0x030013B8
_08012E14:
	ldr r2, _08012EB0 @ =0x03004450
	ldrb r1, [r2]
	movs r0, #3
	ands r0, r1
	adds r7, r2, #0
	cmp r0, #0
	beq _08012EC4
	ldrh r1, [r3, #4]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08012EC4
	movs r0, #0xcb
	bl m4aSongNumStart
	ldr r6, _08012EB4 @ =0x030013B8
	ldr r0, [r6]
	ldrb r1, [r7]
	lsls r1, r1, #0x1e
	lsrs r2, r1, #0x1c
	adds r0, #0x44
	adds r0, r0, r2
	ldr r0, [r0]
	ldr r4, _08012EB8 @ =0x08080508
	adds r1, r2, #0
	adds r1, r1, r4
	ldrb r1, [r1]
	bl sub_08009AFC
	ldrb r5, [r7]
	lsls r0, r5, #0x1e
	lsrs r0, r0, #0x1e
	adds r0, #2
	movs r1, #3
	bl __modsi3
	movs r1, #3
	ands r0, r1
	movs r1, #4
	rsbs r1, r1, #0
	ands r1, r5
	orrs r1, r0
	strb r1, [r7]
	ldr r0, [r6]
	lsls r1, r1, #0x1e
	lsrs r2, r1, #0x1c
	adds r0, #0x44
	adds r0, r0, r2
	ldr r0, [r0]
	adds r1, r2, #0
	adds r4, #2
	adds r1, r1, r4
	ldrb r1, [r1]
	bl sub_08009AFC
	bl sub_08013678
	ldr r1, _08012EBC @ =0x08080528
	ldrb r0, [r7]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1c
	adds r0, r0, r1
	ldr r1, [r0]
	movs r0, #2
	bl sub_08005BE0
	ldrb r0, [r7, #1]
	lsrs r0, r0, #5
	ldrb r1, [r7]
	lsls r2, r1, #0x1e
	lsrs r1, r2, #0x1e
	asrs r0, r1
	mov r1, r8
	ands r0, r1
	cmp r0, #0
	beq _08012F70
	ldr r0, _08012EC0 @ =0x08080610
	b _08012F72
	.align 2, 0
_08012EB0: .4byte 0x03004450
_08012EB4: .4byte 0x030013B8
_08012EB8: .4byte 0x08080508
_08012EBC: .4byte 0x08080528
_08012EC0: .4byte 0x08080610
_08012EC4:
	ldrb r1, [r7]
	movs r0, #3
	ands r0, r1
	cmp r0, #2
	bne _08012ED0
	b _0801300E
_08012ED0:
	ldrh r1, [r3, #4]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _08012EDC
	b _0801300E
_08012EDC:
	movs r0, #0xcb
	bl m4aSongNumStart
	ldr r6, _08012F60 @ =0x030013B8
	ldr r0, [r6]
	ldrb r1, [r7]
	lsls r1, r1, #0x1e
	lsrs r2, r1, #0x1c
	adds r0, #0x44
	adds r0, r0, r2
	ldr r0, [r0]
	ldr r4, _08012F64 @ =0x08080508
	adds r1, r2, #0
	adds r1, r1, r4
	ldrb r1, [r1]
	bl sub_08009AFC
	ldrb r5, [r7]
	lsls r0, r5, #0x1e
	lsrs r0, r0, #0x1e
	adds r0, #1
	movs r1, #3
	bl __modsi3
	movs r1, #3
	ands r0, r1
	movs r1, #4
	rsbs r1, r1, #0
	ands r1, r5
	orrs r1, r0
	strb r1, [r7]
	ldr r0, [r6]
	lsls r1, r1, #0x1e
	lsrs r2, r1, #0x1c
	adds r0, #0x44
	adds r0, r0, r2
	ldr r0, [r0]
	adds r1, r2, #0
	adds r4, #2
	adds r1, r1, r4
	ldrb r1, [r1]
	bl sub_08009AFC
	bl sub_08013678
	ldr r1, _08012F68 @ =0x08080528
	ldrb r0, [r7]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1c
	adds r0, r0, r1
	ldr r1, [r0]
	movs r0, #2
	bl sub_08005BE0
	ldrb r0, [r7, #1]
	lsrs r0, r0, #5
	ldrb r1, [r7]
	lsls r2, r1, #0x1e
	lsrs r1, r2, #0x1e
	asrs r0, r1
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08012F70
	ldr r0, _08012F6C @ =0x08080610
	b _08012F72
	.align 2, 0
_08012F60: .4byte 0x030013B8
_08012F64: .4byte 0x08080508
_08012F68: .4byte 0x08080528
_08012F6C: .4byte 0x08080610
_08012F70:
	ldr r0, _08012F80 @ =0x0808061C
_08012F72:
	lsrs r1, r2, #0x1c
	adds r1, r1, r0
	ldr r0, [r1]
	bl sub_080062D0
	b _0801300E
	.align 2, 0
_08012F80: .4byte 0x0808061C
_08012F84:
	ldr r1, _08012FB8 @ =0x08080548
	ldr r0, _08012FBC @ =0x03004450
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1c
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	bl sub_08005A2C
	movs r4, #0
	movs r5, #0
_08012FA2:
	ldr r0, _08012FBC @ =0x03004450
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	cmp r4, r0
	bne _08012FC0
	lsrs r0, r5, #0x18
	bl sub_08013A18
	b _08012FC6
	.align 2, 0
_08012FB8: .4byte 0x08080548
_08012FBC: .4byte 0x03004450
_08012FC0:
	lsrs r0, r5, #0x18
	bl sub_080139F4
_08012FC6:
	movs r0, #0x80
	lsls r0, r0, #0x11
	adds r5, r5, r0
	adds r4, #1
	cmp r4, #2
	ble _08012FA2
	ldr r0, _08012FDC @ =0x030013B8
	ldr r1, [r0]
	movs r0, #5
	strb r0, [r1, #1]
	b _0801300E
	.align 2, 0
_08012FDC: .4byte 0x030013B8
_08012FE0:
	ldr r0, [r4]
	adds r0, #0x9a
	ldrb r0, [r0]
	cmp r0, #0
	bne _0801300E
	bl sub_08005934
	ldr r1, _08013018 @ =0x080805EC
	ldr r0, _0801301C @ =0x03004450
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1c
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	bl sub_08005A2C
	movs r0, #5
	bl sub_080128D8
_0801300E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08013018: .4byte 0x080805EC
_0801301C: .4byte 0x03004450

	thumb_func_start sub_08013020
sub_08013020: @ 0x08013020
	push {r4, r5, lr}
	sub sp, #4
	ldr r5, _08013038 @ =0x030013B8
	ldr r0, [r5]
	ldrb r1, [r0, #1]
	cmp r1, #1
	beq _08013090
	cmp r1, #1
	bgt _0801303C
	cmp r1, #0
	beq _08013046
	b _0801310C
	.align 2, 0
_08013038: .4byte 0x030013B8
_0801303C:
	cmp r1, #2
	beq _080130A4
	cmp r1, #3
	beq _080130C4
	b _0801310C
_08013046:
	bl sub_08013640
	bl sub_08014EE8
	bl sub_08005934
	ldr r1, _08013088 @ =0x08080594
	ldr r0, _0801308C @ =0x03004450
	ldrb r2, [r0]
	lsls r0, r2, #0x1e
	lsrs r0, r0, #0x1c
	adds r0, r0, r1
	movs r1, #0x3c
	ldr r0, [r0]
	ands r1, r2
	adds r1, r1, r0
	ldr r0, [r1]
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	bl sub_08005A2C
	ldr r1, [r5]
	movs r0, #1
	strb r0, [r1, #1]
	movs r0, #0
	bl sub_080149D0
	movs r0, #1
	bl sub_080149D0
	b _0801310C
	.align 2, 0
_08013088: .4byte 0x08080594
_0801308C: .4byte 0x03004450
_08013090:
	adds r0, #0x9d
	ldrb r0, [r0]
	cmp r0, #0
	bne _0801310C
	bl sub_08013478
	ldr r1, [r5]
	movs r0, #2
	strb r0, [r1, #1]
	b _0801310C
_080130A4:
	adds r0, #0x98
	ldrb r0, [r0]
	cmp r0, #0
	bne _0801310C
	ldr r0, _080130C0 @ =0x030056F0
	movs r1, #5
	bl m4aMPlayFadeOut
	bl sub_0800B700
	ldr r1, [r5]
	movs r0, #3
	strb r0, [r1, #1]
	b _0801310C
	.align 2, 0
_080130C0: .4byte 0x030056F0
_080130C4:
	ldr r1, _08013114 @ =0x03004450
	ldrb r3, [r1]
	movs r0, #0x40
	orrs r3, r0
	strb r3, [r1]
	ldrb r0, [r1, #1]
	movs r2, #2
	rsbs r2, r2, #0
	ands r2, r0
	strb r2, [r1, #1]
	lsls r0, r3, #0x1a
	lsrs r0, r0, #0x1c
	lsls r0, r0, #1
	adds r1, #2
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r1, r2, #0x1d
	lsrs r1, r1, #0x1e
	lsls r2, r2, #0x1b
	lsrs r2, r2, #0x1e
	lsls r3, r3, #0x1e
	lsrs r3, r3, #0x1e
	movs r4, #2
	str r4, [sp]
	bl sub_08001CEC
	ldr r0, _08013118 @ =0x03004400
	ldrb r0, [r0, #8]
	bl sub_08001930
	movs r0, #0x11
	bl ChangeGameState_08008790
	ldr r1, [r5]
	movs r0, #1
	strb r0, [r1, #6]
_0801310C:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08013114: .4byte 0x03004450
_08013118: .4byte 0x03004400

	thumb_func_start sub_0801311C
sub_0801311C: @ 0x0801311C
	push {r4, r5, lr}
	ldr r5, _08013134 @ =0x030013B8
	ldr r1, [r5]
	ldrb r0, [r1, #1]
	cmp r0, #1
	beq _080131EA
	cmp r0, #1
	bgt _08013138
	cmp r0, #0
	beq _08013146
	b _080132A6
	.align 2, 0
_08013134: .4byte 0x030013B8
_08013138:
	cmp r0, #2
	bne _0801313E
	b _08013234
_0801313E:
	cmp r0, #3
	bne _08013144
	b _08013284
_08013144:
	b _080132A6
_08013146:
	ldr r4, _0801319C @ =0x03004450
	ldrb r1, [r4]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4]
	ldrb r1, [r4, #1]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #1]
	bl sub_08001F2C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0801316E
	ldrb r0, [r4, #1]
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #1]
_0801316E:
	ldrb r1, [r4, #1]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080131CC
	ldrb r0, [r4]
	lsls r1, r0, #0x1a
	lsrs r1, r1, #0x1c
	ldr r2, _080131A0 @ =0x08080608
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1d
	adds r0, r0, r2
	ldrh r0, [r0]
	subs r0, #1
	cmp r1, r0
	bge _080131A4
	movs r0, #0x6d
	movs r1, #0x48
	movs r2, #0x48
	bl sub_080150AC
	b _080131AE
	.align 2, 0
_0801319C: .4byte 0x03004450
_080131A0: .4byte 0x08080608
_080131A4:
	movs r0, #0x6d
	movs r1, #0x48
	movs r2, #0x49
	bl sub_080150AC
_080131AE:
	movs r0, #0
	bl sub_080149F4
	movs r0, #1
	bl sub_08014A30
	bl sub_0801365C
	ldr r0, _080131C8 @ =0x030013B8
	ldr r1, [r0]
	movs r0, #1
	strb r0, [r1, #1]
	b _080132A6
	.align 2, 0
_080131C8: .4byte 0x030013B8
_080131CC:
	movs r0, #0x6e
	movs r1, #0x48
	movs r2, #0x48
	bl sub_080150AC
	movs r0, #0
	bl sub_08014A30
	movs r0, #1
	bl sub_080149F4
	ldr r1, [r5]
	movs r0, #3
	strb r0, [r1, #1]
	b _080132A6
_080131EA:
	adds r0, r1, #0
	adds r0, #0x99
	ldrb r0, [r0]
	cmp r0, #0
	bne _080132A6
	adds r0, r1, #0
	adds r0, #0x9d
	ldrb r0, [r0]
	cmp r0, #0
	bne _080132A6
	bl sub_08005934
	ldr r1, _0801322C @ =0x080805E0
	ldr r0, _08013230 @ =0x03004450
	ldrb r2, [r0]
	lsls r0, r2, #0x1e
	lsrs r0, r0, #0x1c
	adds r0, r0, r1
	movs r1, #0x3c
	ldr r0, [r0]
	ands r1, r2
	adds r1, r1, r0
	ldr r0, [r1]
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	bl sub_08005A2C
	ldr r1, [r5]
	movs r0, #2
	strb r0, [r1, #1]
	b _080132A6
	.align 2, 0
_0801322C: .4byte 0x080805E0
_08013230: .4byte 0x03004450
_08013234:
	ldr r2, _08013274 @ =0x03004450
	ldrb r1, [r2, #1]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #1]
	ldrb r3, [r2]
	lsls r1, r3, #0x1a
	lsrs r1, r1, #0x1c
	adds r1, #1
	movs r0, #0xf
	ands r1, r0
	lsls r1, r1, #2
	movs r0, #0x3d
	rsbs r0, r0, #0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2]
	lsls r1, r0, #0x1a
	ldr r2, _08013278 @ =0x08080608
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1d
	adds r0, r0, r2
	lsrs r1, r1, #0x1c
	ldrh r0, [r0]
	cmp r1, r0
	blo _0801327C
	movs r0, #7
	bl sub_080128D8
	b _080132A6
	.align 2, 0
_08013274: .4byte 0x03004450
_08013278: .4byte 0x08080608
_0801327C:
	movs r0, #5
	bl sub_080128D8
	b _080132A6
_08013284:
	adds r0, r1, #0
	adds r0, #0x9d
	ldrb r0, [r0]
	cmp r0, #0
	bne _080132A6
	bl sub_08005934
	ldr r0, _080132AC @ =0x08082B40
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	bl sub_08005A2C
	movs r0, #8
	bl sub_080128D8
_080132A6:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080132AC: .4byte 0x08082B40

	thumb_func_start sub_080132B0
sub_080132B0: @ 0x080132B0
	push {r4, r5, r6, lr}
	ldr r1, _080132CC @ =0x030013B8
	ldr r0, [r1]
	ldrb r0, [r0, #1]
	adds r6, r1, #0
	cmp r0, #5
	bls _080132C0
	b _080133E2
_080132C0:
	lsls r0, r0, #2
	ldr r1, _080132D0 @ =_080132D4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080132CC: .4byte 0x030013B8
_080132D0: .4byte _080132D4
_080132D4: @ jump table
	.4byte _080132EC @ case 0
	.4byte _080132F4 @ case 1
	.4byte _08013348 @ case 2
	.4byte _0801338C @ case 3
	.4byte _080133A8 @ case 4
	.4byte _080133D0 @ case 5
_080132EC:
	ldr r1, [r6]
	movs r0, #1
	strb r0, [r1, #1]
	b _080133E2
_080132F4:
	ldr r5, _08013338 @ =0x08080528
	ldr r4, _0801333C @ =0x03004450
	ldrb r0, [r4]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1c
	adds r0, r0, r5
	ldr r1, [r0]
	movs r0, #2
	bl sub_08005BE0
	bl sub_08005934
	ldr r0, _08013340 @ =0x08082B2C
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	bl sub_08005A2C
	bl sub_08014EE8
	ldrb r0, [r4]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1c
	adds r0, r0, r5
	ldr r0, [r0]
	bl sub_08013EDC
	ldr r0, _08013344 @ =0x030013B8
	ldr r1, [r0]
	movs r0, #2
	strb r0, [r1, #1]
	b _080133E2
	.align 2, 0
_08013338: .4byte 0x08080528
_0801333C: .4byte 0x03004450
_08013340: .4byte 0x08082B2C
_08013344: .4byte 0x030013B8
_08013348:
	ldr r0, [r6]
	adds r0, #0x9b
	ldrb r0, [r0]
	cmp r0, #0
	bne _080133E2
	ldr r4, _08013380 @ =0x03004400
	ldr r5, [r4, #0x10]
	ldr r1, _08013384 @ =0x08080528
	ldr r0, _08013388 @ =0x03004450
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1c
	adds r0, r0, r1
	ldr r0, [r0]
	adds r0, r5, r0
	bl sub_0800B6DC
	ldr r1, [r4, #0x10]
	adds r0, r5, #0
	bl sub_08014324
	movs r0, #0
	bl sub_080149F4
	ldr r1, [r6]
	movs r0, #3
	strb r0, [r1, #1]
	b _080133E2
	.align 2, 0
_08013380: .4byte 0x03004400
_08013384: .4byte 0x08080528
_08013388: .4byte 0x03004450
_0801338C:
	ldr r1, [r6]
	adds r0, r1, #0
	adds r0, #0x9c
	ldrb r0, [r0]
	cmp r0, #0
	bne _080133E2
	adds r0, r1, #0
	adds r0, #0x9d
	ldrb r0, [r0]
	cmp r0, #0
	bne _080133E2
	movs r0, #4
	strb r0, [r1, #1]
	b _080133E2
_080133A8:
	bl sub_08014ECC
	bl sub_08005934
	ldr r0, _080133C8 @ =0x08082B38
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	bl sub_08005A2C
	ldr r0, _080133CC @ =0x030013B8
	ldr r1, [r0]
	movs r0, #5
	strb r0, [r1, #1]
	b _080133E2
	.align 2, 0
_080133C8: .4byte 0x08082B38
_080133CC: .4byte 0x030013B8
_080133D0:
	movs r0, #0x23
	bl ChangeGameState_08008790
	movs r0, #0x2b
	bl sub_080072F4
	movs r0, #8
	bl sub_080128D8
_080133E2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080133E8
sub_080133E8: @ 0x080133E8
	push {r4, lr}
	ldr r4, _080133FC @ =0x030013B8
	ldr r1, [r4]
	ldrb r0, [r1, #1]
	cmp r0, #0
	beq _08013400
	cmp r0, #1
	beq _08013418
	b _0801341A
	.align 2, 0
_080133FC: .4byte 0x030013B8
_08013400:
	ldr r0, _08013414 @ =0x030056F0
	movs r1, #5
	bl m4aMPlayFadeOut
	bl sub_0800B700
	ldr r1, [r4]
	movs r0, #1
	strb r0, [r1, #1]
	b _0801341A
	.align 2, 0
_08013414: .4byte 0x030056F0
_08013418:
	strb r0, [r1, #6]
_0801341A:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08013420
sub_08013420: @ 0x08013420
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _08013454 @ =0x030013B8
	ldr r0, [r5]
	movs r1, #8
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	adds r6, r0, #0
	ldr r0, [r5]
	movs r1, #8
	ldrsh r0, [r0, r1]
	ldr r1, _08013458 @ =0x0808064C
	lsls r4, r4, #2
	adds r4, r4, r1
	ldr r1, [r4]
	bl sub_08007B84
	movs r0, #0
	strb r0, [r6]
	strh r0, [r6, #2]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08013454: .4byte 0x030013B8
_08013458: .4byte 0x0808064C

	thumb_func_start sub_0801345C
sub_0801345C: @ 0x0801345C
	push {lr}
	ldr r0, _08013474 @ =0x030013B8
	ldr r0, [r0]
	adds r0, #0x98
	movs r1, #0
	strb r1, [r0]
	movs r0, #0
	bl sub_08013420
	pop {r0}
	bx r0
	.align 2, 0
_08013474: .4byte 0x030013B8

	thumb_func_start sub_08013478
sub_08013478: @ 0x08013478
	push {lr}
	ldr r0, _08013490 @ =0x030013B8
	ldr r0, [r0]
	adds r0, #0x98
	movs r1, #1
	strb r1, [r0]
	movs r0, #1
	bl sub_08013420
	pop {r0}
	bx r0
	.align 2, 0
_08013490: .4byte 0x030013B8

	thumb_func_start sub_08013494
sub_08013494: @ 0x08013494
	push {lr}
	ldr r0, _080134A4 @ =0x030013B8
	ldr r0, [r0]
	ldr r0, [r0, #0x20]
	bl sub_08009A00
	pop {r0}
	bx r0
	.align 2, 0
_080134A4: .4byte 0x030013B8

	thumb_func_start sub_080134A8
sub_080134A8: @ 0x080134A8
	push {r4, r5, lr}
	movs r0, #3
	movs r1, #0xff
	bl sub_080099E0
	adds r4, r0, #0
	movs r1, #1
	bl sub_08009A34
	adds r0, r4, #0
	movs r1, #0x78
	movs r2, #0x50
	bl sub_08009A70
	ldr r5, _08013508 @ =0x030013B8
	ldr r0, [r5]
	adds r0, #0xa0
	ldr r1, [r0]
	adds r0, r4, #0
	bl sub_08009A78
	adds r0, r4, #0
	movs r1, #3
	bl sub_08009AB4
	ldr r1, _0801350C @ =0x080EA208
	ldr r2, _08013510 @ =0x080EA1C0
	adds r0, r4, #0
	movs r3, #1
	bl sub_08009ACC
	adds r0, r4, #0
	movs r1, #0
	bl sub_08009B40
	ldr r0, [r5]
	str r4, [r0, #0x20]
	movs r1, #8
	ldrsh r0, [r0, r1]
	ldr r1, _08013514 @ =sub_08013494
	bl sub_08007BA0
	bl sub_0801345C
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08013508: .4byte 0x030013B8
_0801350C: .4byte 0x080EA208
_08013510: .4byte 0x080EA1C0
_08013514: .4byte sub_08013494

	thumb_func_start sub_08013518
sub_08013518: @ 0x08013518
	bx lr
	.align 2, 0

	thumb_func_start sub_0801351C
sub_0801351C: @ 0x0801351C
	push {r4, r5, lr}
	bl sub_08007BD4
	adds r4, r0, #0
	ldrb r0, [r4]
	cmp r0, #5
	bhi _080135E0
	lsls r0, r0, #2
	ldr r1, _08013534 @ =_08013538
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08013534: .4byte _08013538
_08013538: @ jump table
	.4byte _08013550 @ case 0
	.4byte _08013568 @ case 1
	.4byte _08013598 @ case 2
	.4byte _080135B0 @ case 3
	.4byte _080135C8 @ case 4
	.4byte _080135DC @ case 5
_08013550:
	ldr r0, _08013564 @ =0x030013B8
	ldr r0, [r0]
	ldr r0, [r0, #0x20]
	movs r1, #0
	bl sub_08009AFC
	movs r0, #1
	strb r0, [r4]
	b _080135E0
	.align 2, 0
_08013564: .4byte 0x030013B8
_08013568:
	ldr r5, _08013590 @ =0x030013B8
	ldr r0, [r5]
	ldr r0, [r0, #0x20]
	ldrb r0, [r0, #1]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _080135E0
	ldr r0, _08013594 @ =0x00000177
	bl m4aSongNumStart
	bl sub_080146D8
	ldr r0, [r5]
	ldr r0, [r0, #0x20]
	movs r1, #2
	bl sub_08009AFC
	movs r0, #2
	strb r0, [r4]
	b _080135E0
	.align 2, 0
_08013590: .4byte 0x030013B8
_08013594: .4byte 0x00000177
_08013598:
	ldr r0, _080135AC @ =0x030013B8
	ldr r0, [r0]
	ldr r0, [r0, #0x20]
	ldrb r0, [r0, #1]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _080135E0
	movs r0, #3
	strb r0, [r4]
	b _080135E0
	.align 2, 0
_080135AC: .4byte 0x030013B8
_080135B0:
	ldr r1, _080135C4 @ =0x00007FFF
	movs r0, #0x40
	movs r2, #0x1f
	movs r3, #0xf
	bl FadeOut_080089E8
	movs r0, #4
	strb r0, [r4]
	b _080135E0
	.align 2, 0
_080135C4: .4byte 0x00007FFF
_080135C8:
	bl sub_08008BBC
	cmp r0, #0
	beq _080135E0
	movs r0, #0xf
	bl sub_08007AC0
	movs r0, #5
	strb r0, [r4]
	b _080135E0
_080135DC:
	bl sub_0801345C
_080135E0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080135E8
sub_080135E8: @ 0x080135E8
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _0801361C @ =0x030013B8
	ldr r0, [r5]
	movs r1, #0xa
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	adds r6, r0, #0
	ldr r0, [r5]
	movs r1, #0xa
	ldrsh r0, [r0, r1]
	ldr r1, _08013620 @ =0x08080654
	lsls r4, r4, #2
	adds r4, r4, r1
	ldr r1, [r4]
	bl sub_08007B84
	movs r0, #0
	strb r0, [r6]
	strh r0, [r6, #2]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801361C: .4byte 0x030013B8
_08013620: .4byte 0x08080654

	thumb_func_start sub_08013624
sub_08013624: @ 0x08013624
	push {lr}
	ldr r0, _0801363C @ =0x030013B8
	ldr r0, [r0]
	adds r0, #0x99
	movs r1, #0
	strb r1, [r0]
	movs r0, #0
	bl sub_080135E8
	pop {r0}
	bx r0
	.align 2, 0
_0801363C: .4byte 0x030013B8

	thumb_func_start sub_08013640
sub_08013640: @ 0x08013640
	push {lr}
	ldr r0, _08013658 @ =0x030013B8
	ldr r0, [r0]
	adds r0, #0x99
	movs r1, #0
	strb r1, [r0]
	movs r0, #1
	bl sub_080135E8
	pop {r0}
	bx r0
	.align 2, 0
_08013658: .4byte 0x030013B8

	thumb_func_start sub_0801365C
sub_0801365C: @ 0x0801365C
	push {lr}
	ldr r0, _08013674 @ =0x030013B8
	ldr r0, [r0]
	adds r0, #0x99
	movs r1, #1
	strb r1, [r0]
	movs r0, #2
	bl sub_080135E8
	pop {r0}
	bx r0
	.align 2, 0
_08013674: .4byte 0x030013B8

	thumb_func_start sub_08013678
sub_08013678: @ 0x08013678
	push {r4, r5, r6, r7, lr}
	movs r5, #0
	ldr r7, _080136A4 @ =0x08080608
	ldr r6, _080136A8 @ =0x030013B8
	movs r4, #0
_08013682:
	ldr r0, _080136AC @ =0x03004450
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1d
	adds r0, r0, r7
	ldrh r0, [r0]
	cmp r5, r0
	blt _080136B0
	ldr r0, [r6]
	adds r0, #0x24
	adds r0, r0, r4
	ldr r0, [r0]
	movs r1, #0xf
	bl sub_08009AFC
	b _080136BE
	.align 2, 0
_080136A4: .4byte 0x08080608
_080136A8: .4byte 0x030013B8
_080136AC: .4byte 0x03004450
_080136B0:
	ldr r0, [r6]
	adds r0, #0x24
	adds r0, r0, r4
	ldr r0, [r0]
	movs r1, #9
	bl sub_08009AFC
_080136BE:
	adds r4, #4
	adds r5, #1
	cmp r5, #7
	ble _08013682
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080136CC
sub_080136CC: @ 0x080136CC
	push {r4, r5, lr}
	movs r4, #0
	ldr r5, _080136EC @ =0x030013B8
_080136D2:
	ldr r0, [r5]
	lsls r1, r4, #2
	adds r0, #0x24
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_08009A00
	adds r4, #1
	cmp r4, #7
	ble _080136D2
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080136EC: .4byte 0x030013B8

	thumb_func_start sub_080136F0
sub_080136F0: @ 0x080136F0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	movs r5, #0
	movs r7, #0
	ldr r6, _08013754 @ =0x080804DC
	ldr r0, _08013758 @ =0x08080608
	mov r8, r0
_08013700:
	movs r0, #3
	movs r1, #0xc0
	bl sub_080099E0
	adds r4, r0, #0
	movs r1, #1
	bl sub_08009A34
	movs r2, #0
	ldrsh r1, [r6, r2]
	movs r0, #2
	ldrsh r2, [r6, r0]
	adds r0, r4, #0
	bl sub_08009A70
	ldr r0, _0801375C @ =0x030013B8
	ldr r0, [r0]
	adds r0, #0xa0
	ldr r1, [r0]
	adds r0, r4, #0
	bl sub_08009A78
	adds r0, r4, #0
	movs r1, #3
	bl sub_08009AB4
	ldr r0, _08013760 @ =0x03004450
	ldrb r1, [r0]
	lsls r0, r1, #0x1e
	lsrs r0, r0, #0x1d
	add r0, r8
	ldrh r0, [r0]
	cmp r5, r0
	blt _0801376C
	adds r0, r4, #0
	ldr r1, _08013764 @ =0x080EA208
	ldr r2, _08013768 @ =0x080EA1C0
	movs r3, #0xf
	bl sub_08009ACC
	b _08013798
	.align 2, 0
_08013754: .4byte 0x080804DC
_08013758: .4byte 0x08080608
_0801375C: .4byte 0x030013B8
_08013760: .4byte 0x03004450
_08013764: .4byte 0x080EA208
_08013768: .4byte 0x080EA1C0
_0801376C:
	lsls r0, r1, #0x1a
	lsrs r0, r0, #0x1c
	cmp r5, r0
	bge _0801378C
	adds r0, r4, #0
	ldr r1, _08013784 @ =0x080EA208
	ldr r2, _08013788 @ =0x080EA1C0
	movs r3, #0xa
	bl sub_08009ACC
	b _08013798
	.align 2, 0
_08013784: .4byte 0x080EA208
_08013788: .4byte 0x080EA1C0
_0801378C:
	adds r0, r4, #0
	ldr r1, _080137D4 @ =0x080EA208
	ldr r2, _080137D8 @ =0x080EA1C0
	movs r3, #9
	bl sub_08009ACC
_08013798:
	adds r0, r4, #0
	movs r1, #0
	bl sub_08009B40
	ldr r0, _080137DC @ =0x030013B8
	ldr r1, [r0]
	adds r0, r1, #0
	adds r0, #0x24
	adds r0, r0, r7
	str r4, [r0]
	adds r7, #4
	adds r6, #4
	adds r5, #1
	cmp r5, #7
	ble _08013700
	movs r2, #0xa
	ldrsh r0, [r1, r2]
	ldr r1, _080137E0 @ =sub_080136CC
	bl sub_08007BA0
	ldr r0, _080137E4 @ =0x03004450
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080137E8
	bl sub_08013640
	b _080137EC
	.align 2, 0
_080137D4: .4byte 0x080EA208
_080137D8: .4byte 0x080EA1C0
_080137DC: .4byte 0x030013B8
_080137E0: .4byte sub_080136CC
_080137E4: .4byte 0x03004450
_080137E8:
	bl sub_08013624
_080137EC:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080137F8
sub_080137F8: @ 0x080137F8
	bx lr
	.align 2, 0

	thumb_func_start sub_080137FC
sub_080137FC: @ 0x080137FC
	push {lr}
	bl sub_08007BD4
	ldrh r1, [r0, #2]
	adds r2, r1, #1
	strh r2, [r0, #2]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x15
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _08013838
	ldr r0, _08013830 @ =0x030013B8
	ldr r1, [r0]
	ldr r0, _08013834 @ =0x03004450
	ldrb r2, [r0]
	movs r0, #0x3c
	ands r0, r2
	adds r1, #0x24
	adds r1, r1, r0
	ldr r0, [r1]
	movs r1, #0xa
	bl sub_08009AFC
	b _08013850
	.align 2, 0
_08013830: .4byte 0x030013B8
_08013834: .4byte 0x03004450
_08013838:
	ldr r0, _08013854 @ =0x030013B8
	ldr r1, [r0]
	ldr r0, _08013858 @ =0x03004450
	ldrb r2, [r0]
	movs r0, #0x3c
	ands r0, r2
	adds r1, #0x24
	adds r1, r1, r0
	ldr r0, [r1]
	movs r1, #9
	bl sub_08009AFC
_08013850:
	pop {r0}
	bx r0
	.align 2, 0
_08013854: .4byte 0x030013B8
_08013858: .4byte 0x03004450

	thumb_func_start sub_0801385C
sub_0801385C: @ 0x0801385C
	push {r4, lr}
	bl sub_08007BD4
	adds r4, r0, #0
	ldrb r0, [r4]
	cmp r0, #0xa
	bhi _08013950
	lsls r0, r0, #2
	ldr r1, _08013874 @ =_08013878
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08013874: .4byte _08013878
_08013878: @ jump table
	.4byte _080138A4 @ case 0
	.4byte _080138B0 @ case 1
	.4byte _080138B0 @ case 2
	.4byte _080138B0 @ case 3
	.4byte _080138B0 @ case 4
	.4byte _080138E0 @ case 5
	.4byte _080138E0 @ case 6
	.4byte _080138E0 @ case 7
	.4byte _080138E0 @ case 8
	.4byte _0801391A @ case 9
	.4byte _0801394C @ case 10
_080138A4:
	movs r0, #0xbc
	lsls r0, r0, #1
	bl m4aSongNumStart
	movs r0, #1
	strb r0, [r4]
_080138B0:
	ldr r0, _080138D8 @ =0x030013B8
	ldr r1, [r0]
	ldr r0, _080138DC @ =0x03004450
	ldrb r2, [r0]
	movs r0, #0x3c
	ands r0, r2
	adds r1, #0x24
	adds r1, r1, r0
	ldr r0, [r1]
	movs r1, #0xa
	bl sub_08009AFC
	movs r0, #4
	bl sub_08007AC0
	ldrb r0, [r4]
	adds r0, #4
	strb r0, [r4]
	b _08013950
	.align 2, 0
_080138D8: .4byte 0x030013B8
_080138DC: .4byte 0x03004450
_080138E0:
	ldr r0, _0801390C @ =0x030013B8
	ldr r1, [r0]
	ldr r0, _08013910 @ =0x03004450
	ldrb r2, [r0]
	movs r0, #0x3c
	ands r0, r2
	adds r1, #0x24
	adds r1, r1, r0
	ldr r0, [r1]
	movs r1, #9
	bl sub_08009AFC
	movs r0, #4
	bl sub_08007AC0
	ldrb r0, [r4]
	cmp r0, #8
	bne _08013914
	movs r0, #9
	strb r0, [r4]
	b _08013950
	.align 2, 0
_0801390C: .4byte 0x030013B8
_08013910: .4byte 0x03004450
_08013914:
	adds r0, #0xfd
	strb r0, [r4]
	b _08013950
_0801391A:
	ldr r0, _08013944 @ =0x030013B8
	ldr r1, [r0]
	ldr r0, _08013948 @ =0x03004450
	ldrb r2, [r0]
	movs r0, #0x3c
	ands r0, r2
	adds r1, #0x24
	adds r1, r1, r0
	ldr r0, [r1]
	movs r1, #0xa
	bl sub_08009AFC
	bl sub_080148FC
	movs r0, #0xa
	strb r0, [r4]
	movs r0, #0x18
	bl sub_08007AC0
	b _08013950
	.align 2, 0
_08013944: .4byte 0x030013B8
_08013948: .4byte 0x03004450
_0801394C:
	bl sub_08013624
_08013950:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08013958
sub_08013958: @ 0x08013958
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	adds r5, r0, #0
	adds r4, r1, #0
	lsls r5, r5, #0x18
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r6, _080139A4 @ =0x030013B8
	ldr r0, [r6]
	lsrs r5, r5, #0x17
	adds r0, #0xc
	adds r0, r0, r5
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	mov r8, r0
	ldr r0, [r6]
	adds r0, #0xc
	adds r0, r0, r5
	movs r1, #0
	ldrsh r0, [r0, r1]
	ldr r1, _080139A8 @ =0x080806B0
	lsls r4, r4, #2
	adds r4, r4, r1
	ldr r1, [r4]
	bl sub_08007B84
	movs r0, #0
	mov r1, r8
	strb r0, [r1, #1]
	strh r0, [r1, #2]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080139A4: .4byte 0x030013B8
_080139A8: .4byte 0x080806B0

	thumb_func_start sub_080139AC
sub_080139AC: @ 0x080139AC
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _080139CC @ =0x030013B8
	ldr r3, [r1]
	adds r3, #0x9a
	movs r2, #1
	lsls r2, r0
	ldrb r1, [r3]
	bics r1, r2
	strb r1, [r3]
	movs r1, #0
	bl sub_08013958
	pop {r0}
	bx r0
	.align 2, 0
_080139CC: .4byte 0x030013B8

	thumb_func_start sub_080139D0
sub_080139D0: @ 0x080139D0
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _080139F0 @ =0x030013B8
	ldr r3, [r1]
	adds r3, #0x9a
	movs r1, #1
	lsls r1, r0
	ldrb r2, [r3]
	orrs r1, r2
	strb r1, [r3]
	movs r1, #1
	bl sub_08013958
	pop {r0}
	bx r0
	.align 2, 0
_080139F0: .4byte 0x030013B8

	thumb_func_start sub_080139F4
sub_080139F4: @ 0x080139F4
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _08013A14 @ =0x030013B8
	ldr r3, [r1]
	adds r3, #0x9a
	movs r1, #1
	lsls r1, r0
	ldrb r2, [r3]
	orrs r1, r2
	strb r1, [r3]
	movs r1, #2
	bl sub_08013958
	pop {r0}
	bx r0
	.align 2, 0
_08013A14: .4byte 0x030013B8

	thumb_func_start sub_08013A18
sub_08013A18: @ 0x08013A18
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _08013A38 @ =0x030013B8
	ldr r3, [r1]
	adds r3, #0x9a
	movs r1, #1
	lsls r1, r0
	ldrb r2, [r3]
	orrs r1, r2
	strb r1, [r3]
	movs r1, #3
	bl sub_08013958
	pop {r0}
	bx r0
	.align 2, 0
_08013A38: .4byte 0x030013B8

	thumb_func_start sub_08013A3C
sub_08013A3C: @ 0x08013A3C
	push {r4, r5, lr}
	movs r4, #0
	ldr r5, _08013A68 @ =0x030013B8
_08013A42:
	ldr r0, [r5]
	lsls r1, r4, #2
	adds r0, #0x44
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_08009A00
	adds r4, #1
	cmp r4, #7
	ble _08013A42
	ldr r0, _08013A68 @ =0x030013B8
	ldr r0, [r0]
	ldr r0, [r0, #0x50]
	bl sub_08009A00
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08013A68: .4byte 0x030013B8

	thumb_func_start sub_08013A6C
sub_08013A6C: @ 0x08013A6C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	bl sub_08007BD4
	mov sb, r0
	ldrb r0, [r0]
	cmp r0, #0
	bne _08013B6C
	movs r7, #0
	ldr r0, _08013B08 @ =0x030013B8
	mov r8, r0
	ldr r6, _08013B0C @ =0x080804FC
_08013A88:
	movs r0, #2
	movs r1, #0x40
	bl sub_080099E0
	adds r5, r0, #0
	movs r1, #0
	bl sub_08009A34
	lsls r4, r7, #2
	movs r0, #0
	ldrsh r1, [r6, r0]
	movs r0, #2
	ldrsh r2, [r6, r0]
	adds r0, r5, #0
	bl sub_08009A70
	mov r1, r8
	ldr r0, [r1]
	adds r0, #0xa0
	ldr r1, [r0]
	adds r0, r5, #0
	bl sub_08009A78
	adds r0, r5, #0
	movs r1, #3
	bl sub_08009AB4
	ldr r0, _08013B10 @ =0x08080508
	adds r0, r4, r0
	ldrb r3, [r0]
	adds r0, r5, #0
	ldr r1, _08013B14 @ =0x080EA208
	ldr r2, _08013B18 @ =0x080EA1C0
	bl sub_08009ACC
	adds r0, r5, #0
	movs r1, #0
	bl sub_08009B40
	mov r1, r8
	ldr r0, [r1]
	adds r0, #0x44
	adds r0, r0, r4
	str r5, [r0]
	adds r6, #4
	adds r7, #1
	cmp r7, #2
	ble _08013A88
	movs r0, #2
	movs r1, #0x40
	bl sub_080099E0
	adds r5, r0, #0
	ldr r0, _08013B1C @ =0x03004450
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08013B20
	adds r0, r5, #0
	movs r1, #1
	bl sub_08009A34
	b _08013B28
	.align 2, 0
_08013B08: .4byte 0x030013B8
_08013B0C: .4byte 0x080804FC
_08013B10: .4byte 0x08080508
_08013B14: .4byte 0x080EA208
_08013B18: .4byte 0x080EA1C0
_08013B1C: .4byte 0x03004450
_08013B20:
	adds r0, r5, #0
	movs r1, #0
	bl sub_08009A34
_08013B28:
	adds r0, r5, #0
	movs r1, #6
	movs r2, #6
	bl sub_08009A70
	ldr r4, _08013B80 @ =0x030013B8
	ldr r0, [r4]
	adds r0, #0xa0
	ldr r1, [r0]
	adds r0, r5, #0
	bl sub_08009A78
	adds r0, r5, #0
	movs r1, #3
	bl sub_08009AB4
	ldr r1, _08013B84 @ =0x080EA208
	ldr r2, _08013B88 @ =0x080EA1C0
	ldr r3, _08013B8C @ =0x08080514
	ldr r0, _08013B90 @ =0x03004450
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1d
	adds r0, r0, r3
	ldrb r3, [r0]
	adds r0, r5, #0
	bl sub_08009ACC
	adds r0, r5, #0
	movs r1, #0
	bl sub_08009B40
	ldr r0, [r4]
	str r5, [r0, #0x50]
_08013B6C:
	mov r1, sb
	ldrb r0, [r1]
	bl sub_080139AC
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08013B80: .4byte 0x030013B8
_08013B84: .4byte 0x080EA208
_08013B88: .4byte 0x080EA1C0
_08013B8C: .4byte 0x08080514
_08013B90: .4byte 0x03004450

	thumb_func_start sub_08013B94
sub_08013B94: @ 0x08013B94
	push {r4, r5, lr}
	movs r4, #0
_08013B98:
	ldr r0, _08013BD0 @ =sub_08013A6C
	movs r1, #0x43
	movs r2, #0
	bl sub_08007968
	ldr r5, _08013BD4 @ =0x030013B8
	ldr r1, [r5]
	lsls r2, r4, #1
	adds r1, #0xc
	adds r1, r1, r2
	strh r0, [r1]
	movs r2, #0
	ldrsh r0, [r1, r2]
	bl sub_08007BBC
	strb r4, [r0]
	adds r4, #1
	cmp r4, #2
	ble _08013B98
	ldr r0, [r5]
	movs r1, #0xc
	ldrsh r0, [r0, r1]
	ldr r1, _08013BD8 @ =sub_08013A3C
	bl sub_08007BA0
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08013BD0: .4byte sub_08013A6C
_08013BD4: .4byte 0x030013B8
_08013BD8: .4byte sub_08013A3C

	thumb_func_start sub_08013BDC
sub_08013BDC: @ 0x08013BDC
	bx lr
	.align 2, 0

	thumb_func_start sub_08013BE0
sub_08013BE0: @ 0x08013BE0
	push {r4, r5, r6, lr}
	bl sub_08007BD4
	adds r6, r0, #0
	ldr r0, _08013C08 @ =0x030013B8
	ldr r0, [r0]
	ldrb r1, [r6]
	lsls r2, r1, #2
	adds r0, #0x44
	adds r0, r0, r2
	ldr r5, [r0]
	ldrb r4, [r6, #1]
	cmp r4, #1
	beq _08013C44
	cmp r4, #1
	bgt _08013C0C
	cmp r4, #0
	beq _08013C12
	b _08013C7E
	.align 2, 0
_08013C08: .4byte 0x030013B8
_08013C0C:
	cmp r4, #2
	beq _08013C78
	b _08013C7E
_08013C12:
	adds r0, r5, #0
	movs r1, #1
	bl sub_08009A34
	ldr r2, _08013C40 @ =0x080804FC
	ldrb r0, [r6]
	lsls r0, r0, #2
	adds r1, r0, r2
	movs r3, #0
	ldrsh r1, [r1, r3]
	adds r2, #2
	adds r0, r0, r2
	ldrh r2, [r0]
	subs r2, #0x48
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r5, #0
	bl sub_08009A70
	strh r4, [r6, #2]
	movs r0, #1
	strb r0, [r6, #1]
	b _08013C7E
	.align 2, 0
_08013C40: .4byte 0x080804FC
_08013C44:
	ldrh r0, [r5, #8]
	adds r0, #2
	lsls r0, r0, #0x10
	ldr r1, _08013C74 @ =0x080804FC
	adds r1, #2
	adds r3, r2, r1
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	movs r4, #0
	ldrsh r1, [r3, r4]
	cmp r0, r1
	blt _08013C62
	ldrh r2, [r3]
	movs r0, #2
	strb r0, [r6, #1]
_08013C62:
	movs r0, #6
	ldrsh r1, [r5, r0]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r5, #0
	bl sub_08009A70
	b _08013C7E
	.align 2, 0
_08013C74: .4byte 0x080804FC
_08013C78:
	adds r0, r1, #0
	bl sub_080139AC
_08013C7E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08013C84
sub_08013C84: @ 0x08013C84
	push {r4, r5, r6, lr}
	bl sub_08007BD4
	adds r5, r0, #0
	ldr r0, _08013CAC @ =0x030013B8
	ldr r0, [r0]
	ldrb r1, [r5]
	lsls r2, r1, #2
	adds r0, #0x44
	adds r0, r0, r2
	ldr r4, [r0]
	ldrb r0, [r5, #1]
	cmp r0, #1
	beq _08013CBE
	cmp r0, #1
	bgt _08013CB0
	cmp r0, #0
	beq _08013CB6
	b _08013CFA
	.align 2, 0
_08013CAC: .4byte 0x030013B8
_08013CB0:
	cmp r0, #2
	beq _08013CF4
	b _08013CFA
_08013CB6:
	strh r0, [r5, #2]
	movs r0, #1
	strb r0, [r5, #1]
	b _08013CFA
_08013CBE:
	ldrh r0, [r4, #8]
	subs r0, #4
	lsls r0, r0, #0x10
	asrs r6, r0, #0x10
	ldr r0, _08013CF0 @ =0x080804FC
	adds r0, #2
	adds r0, r2, r0
	movs r1, #0
	ldrsh r0, [r0, r1]
	subs r0, #0x48
	cmp r6, r0
	bgt _08013CE2
	adds r0, r4, #0
	movs r1, #0
	bl sub_08009A34
	movs r0, #2
	strb r0, [r5, #1]
_08013CE2:
	movs r0, #6
	ldrsh r1, [r4, r0]
	adds r0, r4, #0
	adds r2, r6, #0
	bl sub_08009A70
	b _08013CFA
	.align 2, 0
_08013CF0: .4byte 0x080804FC
_08013CF4:
	adds r0, r1, #0
	bl sub_080139AC
_08013CFA:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08013D00
sub_08013D00: @ 0x08013D00
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	bl sub_08007BD4
	adds r4, r0, #0
	ldr r7, _08013D2C @ =0x030013B8
	ldr r3, [r7]
	ldrb r2, [r4]
	lsls r1, r2, #2
	adds r0, r3, #0
	adds r0, #0x44
	adds r0, r0, r1
	ldr r5, [r0]
	ldrb r0, [r4, #1]
	cmp r0, #1
	beq _08013D58
	cmp r0, #1
	bgt _08013D30
	cmp r0, #0
	beq _08013D3C
	b _08013E7A
	.align 2, 0
_08013D2C: .4byte 0x030013B8
_08013D30:
	cmp r0, #2
	beq _08013E2C
	cmp r0, #3
	bne _08013D3A
	b _08013E74
_08013D3A:
	b _08013E7A
_08013D3C:
	bl sub_08009DDC
	adds r1, r0, #0
	adds r0, r5, #0
	bl sub_08009B9C
	adds r0, r5, #0
	movs r1, #0x10
	movs r2, #0x10
	bl sub_08009C14
	movs r0, #1
	strb r0, [r4, #1]
	b _08013E7A
_08013D58:
	ldr r0, _08013E18 @ =0x080804FC
	adds r2, r1, r0
	movs r1, #0
	ldrsh r0, [r2, r1]
	movs r3, #2
	mov r8, r3
	subs r0, r3, r0
	ldrh r3, [r4, #2]
	muls r0, r3, r0
	cmp r0, #0
	bge _08013D70
	adds r0, #0xf
_08013D70:
	asrs r1, r0, #4
	ldrh r2, [r2]
	adds r1, r1, r2
	ldr r0, _08013E1C @ =0x08080660
	lsls r3, r3, #1
	adds r0, r3, r0
	ldrh r2, [r0]
	adds r2, #2
	ldr r0, _08013E20 @ =0x08080680
	adds r3, r3, r0
	ldrh r6, [r3]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r5, #0
	bl sub_08009A70
	ldr r0, [r5, #0x24]
	lsls r2, r6, #0x10
	asrs r2, r2, #0x10
	adds r1, r2, #0
	bl sub_08009E84
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xf
	bls _08013E7A
	movs r0, #0
	strh r0, [r4, #2]
	mov r0, r8
	strb r0, [r4, #1]
	ldr r0, [r5, #0x24]
	bl sub_08009E54
	adds r0, r5, #0
	movs r1, #0
	bl sub_08009B9C
	adds r0, r5, #0
	movs r1, #0
	bl sub_08009A34
	ldr r0, [r7]
	ldr r0, [r0, #0x50]
	movs r1, #1
	bl sub_08009A34
	ldr r0, [r7]
	ldr r4, [r0, #0x50]
	bl sub_08009DDC
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_08009B9C
	ldr r0, [r7]
	ldr r0, [r0, #0x50]
	movs r1, #0xc
	movs r2, #0xc
	bl sub_08009C14
	ldr r0, [r7]
	ldr r0, [r0, #0x50]
	ldr r2, _08013E24 @ =0x08080514
	ldr r1, _08013E28 @ =0x03004450
	ldrb r1, [r1]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1d
	adds r1, r1, r2
	ldrb r1, [r1]
	bl sub_08009AFC
	ldr r0, [r7]
	ldr r0, [r0, #0x50]
	ldr r0, [r0, #0x24]
	movs r1, #0xc0
	movs r2, #0xc0
	bl sub_08009E84
	b _08013E7A
	.align 2, 0
_08013E18: .4byte 0x080804FC
_08013E1C: .4byte 0x08080660
_08013E20: .4byte 0x08080680
_08013E24: .4byte 0x08080514
_08013E28: .4byte 0x03004450
_08013E2C:
	ldr r0, _08013E70 @ =0x080806A0
	ldrh r1, [r4, #2]
	lsls r1, r1, #1
	adds r1, r1, r0
	ldr r0, [r3, #0x50]
	ldr r0, [r0, #0x24]
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r1, r2, #0
	bl sub_08009E84
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #7
	bls _08013E7A
	movs r0, #0
	strh r0, [r4, #2]
	movs r0, #3
	strb r0, [r4, #1]
	ldr r0, [r7]
	ldr r0, [r0, #0x50]
	ldr r0, [r0, #0x24]
	bl sub_08009E54
	ldr r0, [r7]
	ldr r0, [r0, #0x50]
	movs r1, #0
	bl sub_08009B9C
	b _08013E7A
	.align 2, 0
_08013E70: .4byte 0x080806A0
_08013E74:
	adds r0, r2, #0
	bl sub_080139AC
_08013E7A:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08013E84
sub_08013E84: @ 0x08013E84
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _08013EB8 @ =0x030013B8
	ldr r0, [r5]
	movs r1, #0x12
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	adds r6, r0, #0
	ldr r0, [r5]
	movs r1, #0x12
	ldrsh r0, [r0, r1]
	ldr r1, _08013EBC @ =0x08080790
	lsls r4, r4, #2
	adds r4, r4, r1
	ldr r1, [r4]
	bl sub_08007B84
	movs r0, #0
	strb r0, [r6]
	strh r0, [r6, #2]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08013EB8: .4byte 0x030013B8
_08013EBC: .4byte 0x08080790

	thumb_func_start sub_08013EC0
sub_08013EC0: @ 0x08013EC0
	push {lr}
	ldr r0, _08013ED8 @ =0x030013B8
	ldr r0, [r0]
	adds r0, #0x9b
	movs r1, #0
	strb r1, [r0]
	movs r0, #0
	bl sub_08013E84
	pop {r0}
	bx r0
	.align 2, 0
_08013ED8: .4byte 0x030013B8

	thumb_func_start sub_08013EDC
sub_08013EDC: @ 0x08013EDC
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _08013F04 @ =0x030013B8
	ldr r0, [r4]
	movs r1, #0x12
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	str r5, [r0, #4]
	ldr r0, [r4]
	adds r0, #0x9b
	movs r1, #1
	strb r1, [r0]
	movs r0, #1
	bl sub_08013E84
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08013F04: .4byte 0x030013B8

	thumb_func_start sub_08013F08
sub_08013F08: @ 0x08013F08
	push {r4, r5, lr}
	ldr r4, _08013F30 @ =0x030013B8
	ldr r0, [r4]
	ldr r0, [r0, #0x54]
	bl sub_08009A00
	movs r5, #0
_08013F16:
	ldr r0, [r4]
	lsls r1, r5, #2
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_08009A00
	adds r5, #1
	cmp r5, #5
	ble _08013F16
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08013F30: .4byte 0x030013B8

	thumb_func_start sub_08013F34
sub_08013F34: @ 0x08013F34
	push {r4, r5, r6, r7, lr}
	bl sub_08007BD4
	movs r0, #2
	movs r1, #0x40
	bl sub_080099E0
	adds r5, r0, #0
	movs r1, #0
	bl sub_08009A34
	adds r0, r5, #0
	movs r1, #0x78
	movs r2, #0x20
	bl sub_08009A70
	ldr r4, _08014010 @ =0x030013B8
	ldr r0, [r4]
	adds r0, #0xa4
	ldr r1, [r0]
	adds r0, r5, #0
	bl sub_08009A78
	adds r0, r5, #0
	movs r1, #9
	bl sub_08009AB4
	ldr r1, _08014014 @ =0x080F3054
	ldr r2, _08014018 @ =0x080F304C
	adds r0, r5, #0
	movs r3, #0
	bl sub_08009ACC
	adds r0, r5, #0
	movs r1, #0
	bl sub_08009B40
	ldr r0, [r4]
	str r5, [r0, #0x54]
	movs r6, #0
	adds r7, r4, #0
_08013F86:
	movs r0, #2
	movs r1, #0x3f
	bl sub_080099E0
	adds r5, r0, #0
	movs r1, #0
	bl sub_08009A34
	ldr r1, _0801401C @ =0x0808051A
	lsls r0, r6, #1
	adds r0, r0, r1
	ldrh r4, [r0]
	adds r1, r4, #0
	adds r1, #0x78
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r5, #0
	movs r2, #0x18
	bl sub_08009A70
	ldr r0, [r7]
	adds r0, #0xa8
	ldr r1, [r0]
	adds r0, r5, #0
	bl sub_08009A78
	adds r0, r5, #0
	movs r1, #8
	bl sub_08009AB4
	adds r0, r5, #0
	ldr r1, _08014020 @ =0x080F3E08
	ldr r2, _08014024 @ =0x080F3DDC
	movs r3, #0
	bl sub_08009ACC
	adds r0, r5, #0
	movs r1, #0
	bl sub_08009B40
	rsbs r4, r4, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #8
	bl sub_08009C14
	ldr r0, [r7]
	lsls r1, r6, #2
	adds r0, #0x58
	adds r0, r0, r1
	str r5, [r0]
	adds r6, #1
	cmp r6, #5
	ble _08013F86
	ldr r0, _08014010 @ =0x030013B8
	ldr r0, [r0]
	movs r1, #0x12
	ldrsh r0, [r0, r1]
	ldr r1, _08014028 @ =sub_08013F08
	bl sub_08007BA0
	bl sub_08013EC0
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08014010: .4byte 0x030013B8
_08014014: .4byte 0x080F3054
_08014018: .4byte 0x080F304C
_0801401C: .4byte 0x0808051A
_08014020: .4byte 0x080F3E08
_08014024: .4byte 0x080F3DDC
_08014028: .4byte sub_08013F08

	thumb_func_start sub_0801402C
sub_0801402C: @ 0x0801402C
	bx lr
	.align 2, 0

	thumb_func_start sub_08014030
sub_08014030: @ 0x08014030
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	bl sub_08007BD4
	adds r7, r0, #0
	ldrb r0, [r7]
	cmp r0, #5
	bls _0801404A
	b _080142BC
_0801404A:
	lsls r0, r0, #2
	ldr r1, _08014054 @ =_08014058
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08014054: .4byte _08014058
_08014058: @ jump table
	.4byte _08014070 @ case 0
	.4byte _0801414C @ case 1
	.4byte _080141B0 @ case 2
	.4byte _080141BA @ case 3
	.4byte _08014264 @ case 4
	.4byte _080142B8 @ case 5
_08014070:
	ldr r5, _08014144 @ =0x030013B8
	ldr r0, [r5]
	ldr r0, [r0, #0x54]
	movs r1, #1
	bl sub_08009A34
	ldr r0, [r5]
	ldr r4, [r0, #0x54]
	bl sub_08009DDC
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_08009B9C
	ldr r0, [r5]
	ldr r0, [r0, #0x54]
	movs r1, #1
	bl sub_08009B84
	ldr r0, [r7, #4]
	mov r8, r0
	movs r1, #0
	str r1, [sp]
	movs r6, #0
	mov sb, r5
_080140A2:
	ldr r0, _08014148 @ =0x08083A18
	lsls r4, r6, #2
	adds r0, r4, r0
	ldr r5, [r0]
	mov r0, r8
	adds r1, r5, #0
	bl __udivsi3
	mov sl, r0
	cmp r6, #5
	bne _080140BC
	movs r2, #1
	str r2, [sp]
_080140BC:
	cmp r0, #0
	bne _080140C6
	ldr r3, [sp]
	cmp r3, #0
	beq _0801411C
_080140C6:
	movs r0, #1
	str r0, [sp]
	mov r1, sb
	ldr r0, [r1]
	adds r0, #0x58
	adds r0, r0, r4
	ldr r0, [r0]
	movs r1, #1
	bl sub_08009A34
	mov r2, sb
	ldr r0, [r2]
	adds r0, #0x58
	adds r0, r0, r4
	ldr r0, [r0]
	movs r1, #1
	bl sub_08009B84
	mov r3, sb
	ldr r1, [r3]
	adds r0, r1, #0
	adds r0, #0x58
	adds r0, r0, r4
	ldr r0, [r0]
	ldr r1, [r1, #0x54]
	ldr r1, [r1, #0x24]
	bl sub_08009B9C
	mov r1, sb
	ldr r0, [r1]
	adds r0, #0x58
	adds r0, r0, r4
	ldr r0, [r0]
	mov r2, sl
	lsls r1, r2, #0x18
	lsrs r1, r1, #0x18
	bl sub_08009AFC
	mov r0, r8
	adds r1, r5, #0
	bl __umodsi3
	mov r8, r0
_0801411C:
	adds r6, #1
	cmp r6, #5
	ble _080140A2
	ldr r0, _08014144 @ =0x030013B8
	ldr r0, [r0]
	ldr r0, [r0, #0x54]
	ldr r0, [r0, #0x24]
	movs r1, #0x80
	movs r2, #0x80
	bl sub_08009E84
	movs r0, #0xdd
	bl m4aSongNumStart
	movs r1, #0
	movs r0, #1
	strb r0, [r7]
	strh r1, [r7, #2]
	b _080142BC
	.align 2, 0
_08014144: .4byte 0x030013B8
_08014148: .4byte 0x08083A18
_0801414C:
	ldr r4, _080141A8 @ =0x030013B8
	ldr r0, [r4]
	ldr r0, [r0, #0x54]
	ldr r0, [r0, #0x24]
	ldr r2, _080141AC @ =0x080806C0
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
	cmp r0, #7
	bhi _08014176
	b _080142BC
_08014176:
	movs r0, #0
	strh r0, [r7, #2]
	movs r0, #2
	strb r0, [r7]
	movs r0, #0x3c
	bl sub_08007AC0
	ldr r0, [r4]
	ldr r0, [r0, #0x54]
	movs r1, #0
	bl sub_08009B84
	movs r6, #0
_08014190:
	ldr r0, [r4]
	lsls r1, r6, #2
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0
	bl sub_08009B84
	adds r6, #1
	cmp r6, #5
	ble _08014190
	b _080142BC
	.align 2, 0
_080141A8: .4byte 0x030013B8
_080141AC: .4byte 0x080806C0
_080141B0:
	movs r0, #0xde
	bl m4aSongNumStart
	movs r0, #3
	strb r0, [r7]
_080141BA:
	ldr r0, _08014258 @ =0x030013B8
	ldr r0, [r0]
	ldr r0, [r0, #0x54]
	ldr r3, _0801425C @ =0x080806D0
	ldrh r1, [r7, #2]
	lsls r2, r1, #1
	adds r2, r2, r1
	lsls r2, r2, #1
	adds r1, r2, r3
	ldrh r1, [r1]
	adds r1, #0x78
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r3, #2
	adds r2, r2, r3
	ldrh r2, [r2]
	adds r2, #0x20
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl sub_08009A70
	movs r6, #0
	ldr r4, _08014260 @ =0x0808051A
_080141E8:
	ldr r5, _08014258 @ =0x030013B8
	ldr r2, [r5]
	lsls r1, r6, #2
	adds r0, r2, #0
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r2, [r2, #0x54]
	ldrh r1, [r4]
	ldrh r3, [r2, #6]
	adds r1, r1, r3
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldrh r2, [r2, #8]
	subs r2, #8
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl sub_08009A70
	adds r4, #2
	adds r6, #1
	cmp r6, #5
	ble _080141E8
	ldr r0, [r5]
	ldr r0, [r0, #0x54]
	ldr r0, [r0, #0x24]
	ldr r3, _0801425C @ =0x080806D0
	ldrh r2, [r7, #2]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #1
	adds r3, #4
	adds r1, r1, r3
	movs r3, #0x80
	lsls r3, r3, #1
	adds r2, r3, #0
	ldrh r1, [r1]
	adds r2, r2, r1
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r1, r2, #0
	bl sub_08009E84
	ldrh r0, [r7, #2]
	adds r0, #1
	strh r0, [r7, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x1f
	bls _080142BC
	movs r0, #0
	strh r0, [r7, #2]
	movs r0, #4
	strb r0, [r7]
	b _080142BC
	.align 2, 0
_08014258: .4byte 0x030013B8
_0801425C: .4byte 0x080806D0
_08014260: .4byte 0x0808051A
_08014264:
	ldr r4, _080142B4 @ =0x030013B8
	ldr r0, [r4]
	ldr r0, [r0, #0x54]
	ldr r0, [r0, #0x24]
	bl sub_08009E54
	ldr r0, [r4]
	ldr r0, [r0, #0x54]
	movs r1, #0
	bl sub_08009B9C
	ldr r0, [r4]
	ldr r0, [r0, #0x54]
	movs r1, #0
	bl sub_08009A34
	movs r6, #0
	adds r5, r4, #0
_08014288:
	ldr r0, [r5]
	lsls r4, r6, #2
	adds r0, #0x58
	adds r0, r0, r4
	ldr r0, [r0]
	movs r1, #0
	bl sub_08009A34
	ldr r0, [r5]
	adds r0, #0x58
	adds r0, r0, r4
	ldr r0, [r0]
	movs r1, #0
	bl sub_08009B9C
	adds r6, #1
	cmp r6, #5
	ble _08014288
	movs r0, #5
	strb r0, [r7]
	b _080142BC
	.align 2, 0
_080142B4: .4byte 0x030013B8
_080142B8:
	bl sub_08013EC0
_080142BC:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080142CC
sub_080142CC: @ 0x080142CC
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _08014300 @ =0x030013B8
	ldr r0, [r5]
	movs r1, #0x14
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	adds r6, r0, #0
	ldr r0, [r5]
	movs r1, #0x14
	ldrsh r0, [r0, r1]
	ldr r1, _08014304 @ =0x08080798
	lsls r4, r4, #2
	adds r4, r4, r1
	ldr r1, [r4]
	bl sub_08007B84
	movs r0, #0
	strb r0, [r6]
	strh r0, [r6, #2]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08014300: .4byte 0x030013B8
_08014304: .4byte 0x08080798

	thumb_func_start sub_08014308
sub_08014308: @ 0x08014308
	push {lr}
	ldr r0, _08014320 @ =0x030013B8
	ldr r0, [r0]
	adds r0, #0x9c
	movs r1, #0
	strb r1, [r0]
	movs r0, #0
	bl sub_080142CC
	pop {r0}
	bx r0
	.align 2, 0
_08014320: .4byte 0x030013B8

	thumb_func_start sub_08014324
sub_08014324: @ 0x08014324
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r0, _08014344 @ =0x030013B8
	ldr r0, [r0]
	movs r1, #0x14
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	adds r2, r0, #0
	cmp r5, r4
	bne _08014348
	bl sub_08014308
	b _08014376
	.align 2, 0
_08014344: .4byte 0x030013B8
_08014348:
	str r5, [r2, #4]
	str r4, [r2, #8]
	subs r0, r5, r4
	adds r1, r0, #0
	cmp r0, #0
	bge _08014356
	rsbs r1, r0, #0
_08014356:
	cmp r1, #0x77
	bhi _08014362
	cmp r0, #0
	bge _08014364
	rsbs r0, r0, #0
	b _08014364
_08014362:
	movs r0, #0x78
_08014364:
	strh r0, [r2, #0xc]
	ldr r0, _0801437C @ =0x030013B8
	ldr r0, [r0]
	adds r0, #0x9c
	movs r1, #1
	strb r1, [r0]
	movs r0, #1
	bl sub_080142CC
_08014376:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801437C: .4byte 0x030013B8

	thumb_func_start sub_08014380
sub_08014380: @ 0x08014380
	push {r4, r5, lr}
	ldr r4, _080143A8 @ =0x030013B8
	ldr r0, [r4]
	ldr r0, [r0, #0x70]
	bl sub_08009A00
	movs r5, #0
_0801438E:
	ldr r0, [r4]
	lsls r1, r5, #2
	adds r0, #0x74
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_08009A00
	adds r5, #1
	cmp r5, #5
	ble _0801438E
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080143A8: .4byte 0x030013B8

	thumb_func_start sub_080143AC
sub_080143AC: @ 0x080143AC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	bl sub_08007BD4
	movs r0, #2
	movs r1, #0x80
	bl sub_080099E0
	adds r6, r0, #0
	movs r1, #1
	bl sub_08009A34
	adds r0, r6, #0
	movs r1, #0x50
	movs r2, #0
	bl sub_08009A70
	ldr r4, _08014490 @ =0x030013B8
	ldr r0, [r4]
	adds r0, #0xac
	ldr r1, [r0]
	adds r0, r6, #0
	bl sub_08009A78
	adds r0, r6, #0
	movs r1, #7
	bl sub_08009AB4
	ldr r1, _08014494 @ =0x0809C860
	ldr r2, _08014498 @ =0x0809C830
	adds r0, r6, #0
	movs r3, #0xa
	bl sub_08009ACC
	adds r0, r6, #0
	movs r1, #0
	bl sub_08009B40
	ldr r0, [r4]
	str r6, [r0, #0x70]
	movs r0, #0
	mov sl, r0
	ldr r0, _0801449C @ =0x03004400
	ldr r0, [r0, #0x10]
	mov r8, r0
	movs r7, #0
	movs r2, #0
	mov sb, r2
_08014412:
	cmp r7, #5
	bne _0801441A
	movs r0, #1
	mov sl, r0
_0801441A:
	ldr r0, _080144A0 @ =0x08083A18
	add r0, sb
	ldr r4, [r0]
	mov r0, r8
	adds r1, r4, #0
	bl __udivsi3
	adds r5, r0, #0
	mov r0, r8
	adds r1, r4, #0
	bl __umodsi3
	mov r8, r0
	movs r0, #2
	movs r1, #0x80
	bl sub_080099E0
	adds r6, r0, #0
	ldr r1, _080144A4 @ =0x08083A0C
	lsls r0, r7, #1
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r0, r6, #0
	movs r2, #4
	bl sub_08009A70
	ldr r0, _08014490 @ =0x030013B8
	ldr r0, [r0]
	adds r0, #0xac
	ldr r1, [r0]
	adds r0, r6, #0
	bl sub_08009A78
	adds r0, r6, #0
	movs r1, #7
	bl sub_08009AB4
	lsls r3, r5, #0x18
	lsrs r3, r3, #0x18
	adds r0, r6, #0
	ldr r1, _08014494 @ =0x0809C860
	ldr r2, _08014498 @ =0x0809C830
	bl sub_08009ACC
	adds r0, r6, #0
	movs r1, #0
	bl sub_08009B40
	cmp r5, #0
	bne _080144A8
	mov r0, sl
	cmp r0, #0
	bne _080144A8
	adds r0, r6, #0
	movs r1, #0
	bl sub_08009A34
	b _080144B4
	.align 2, 0
_08014490: .4byte 0x030013B8
_08014494: .4byte 0x0809C860
_08014498: .4byte 0x0809C830
_0801449C: .4byte 0x03004400
_080144A0: .4byte 0x08083A18
_080144A4: .4byte 0x08083A0C
_080144A8:
	movs r2, #1
	mov sl, r2
	adds r0, r6, #0
	movs r1, #1
	bl sub_08009A34
_080144B4:
	ldr r0, _080144E8 @ =0x030013B8
	ldr r1, [r0]
	adds r0, r1, #0
	adds r0, #0x74
	add r0, sb
	str r6, [r0]
	movs r0, #4
	add sb, r0
	adds r7, #1
	cmp r7, #5
	ble _08014412
	movs r2, #0x14
	ldrsh r0, [r1, r2]
	ldr r1, _080144EC @ =sub_08014380
	bl sub_08007BA0
	bl sub_08014308
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080144E8: .4byte 0x030013B8
_080144EC: .4byte sub_08014380

	thumb_func_start sub_080144F0
sub_080144F0: @ 0x080144F0
	bx lr
	.align 2, 0

	thumb_func_start sub_080144F4
sub_080144F4: @ 0x080144F4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	bl sub_08007BD4
	adds r6, r0, #0
	ldrb r0, [r6]
	cmp r0, #1
	beq _08014524
	cmp r0, #1
	bgt _08014514
	cmp r0, #0
	beq _0801451A
	b _080145E2
_08014514:
	cmp r0, #2
	beq _080145D8
	b _080145E2
_0801451A:
	movs r0, #0xe0
	bl m4aSongNumStart
	movs r0, #1
	strb r0, [r6]
_08014524:
	ldr r1, [r6, #8]
	ldr r4, [r6, #4]
	subs r1, r1, r4
	ldrh r0, [r6, #2]
	adds r0, #1
	strh r0, [r6, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	muls r0, r1, r0
	ldrh r1, [r6, #0xc]
	bl __udivsi3
	adds r4, r4, r0
	mov r8, r4
	movs r0, #0
	mov sl, r0
	mov sb, r0
	movs r7, #0
_08014548:
	ldr r0, _08014598 @ =0x08083A18
	adds r0, r7, r0
	ldr r4, [r0]
	mov r0, r8
	adds r1, r4, #0
	bl __udivsi3
	adds r5, r0, #0
	mov r0, r8
	adds r1, r4, #0
	bl __umodsi3
	mov r8, r0
	mov r1, sb
	cmp r1, #5
	bne _0801456C
	movs r0, #1
	mov sl, r0
_0801456C:
	ldr r4, _0801459C @ =0x030013B8
	ldr r0, [r4]
	adds r0, #0x74
	adds r0, r0, r7
	ldr r0, [r0]
	lsls r1, r5, #0x18
	lsrs r1, r1, #0x18
	bl sub_08009AFC
	cmp r5, #0
	bne _080145A0
	mov r1, sl
	cmp r1, #0
	bne _080145A0
	ldr r0, [r4]
	adds r0, #0x74
	adds r0, r0, r7
	ldr r0, [r0]
	movs r1, #0
	bl sub_08009A34
	b _080145B4
	.align 2, 0
_08014598: .4byte 0x08083A18
_0801459C: .4byte 0x030013B8
_080145A0:
	ldr r0, _080145D4 @ =0x030013B8
	ldr r0, [r0]
	adds r0, #0x74
	adds r0, r0, r7
	ldr r0, [r0]
	movs r1, #1
	bl sub_08009A34
	movs r0, #1
	mov sl, r0
_080145B4:
	adds r7, #4
	movs r1, #1
	add sb, r1
	mov r0, sb
	cmp r0, #5
	ble _08014548
	ldrh r0, [r6, #2]
	ldrh r1, [r6, #0xc]
	cmp r0, r1
	blo _080145E2
	movs r0, #0
	strh r0, [r6, #2]
	movs r0, #2
	strb r0, [r6]
	b _080145E2
	.align 2, 0
_080145D4: .4byte 0x030013B8
_080145D8:
	movs r0, #0xe0
	bl m4aSongNumStop
	bl sub_08014308
_080145E2:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080145F0
sub_080145F0: @ 0x080145F0
	push {r4, r5, r6, lr}
	bl sub_08007BD4
	adds r5, r0, #0
	ldrb r6, [r5, #1]
	cmp r6, #1
	beq _08014668
	cmp r6, #1
	bgt _08014608
	cmp r6, #0
	beq _0801460E
	b _080146D2
_08014608:
	cmp r6, #2
	beq _080146C8
	b _080146D2
_0801460E:
	movs r0, #2
	movs r1, #0
	bl sub_080099E0
	adds r4, r0, #0
	movs r1, #1
	bl sub_08009A34
	adds r0, r4, #0
	movs r1, #0x78
	movs r2, #0x50
	bl sub_08009A70
	ldr r0, _0801465C @ =0x030013B8
	ldr r0, [r0]
	adds r0, #0xa0
	ldr r1, [r0]
	adds r0, r4, #0
	bl sub_08009A78
	adds r0, r4, #0
	movs r1, #3
	bl sub_08009AB4
	ldr r1, _08014660 @ =0x080EA208
	ldr r2, _08014664 @ =0x080EA1C0
	adds r0, r4, #0
	movs r3, #0xb
	bl sub_08009ACC
	adds r0, r4, #0
	movs r1, #0
	bl sub_08009B40
	str r4, [r5, #4]
	strh r6, [r5, #2]
	movs r0, #1
	strb r0, [r5, #1]
	b _080146D2
	.align 2, 0
_0801465C: .4byte 0x030013B8
_08014660: .4byte 0x080EA208
_08014664: .4byte 0x080EA1C0
_08014668:
	ldr r4, _080146C4 @ =0x080807A0
	ldrb r0, [r5]
	lsls r2, r0, #2
	adds r0, r2, r4
	movs r1, #0
	ldrsh r0, [r0, r1]
	ldrh r3, [r5, #2]
	muls r0, r3, r0
	cmp r0, #0
	bge _0801467E
	adds r0, #0x1f
_0801467E:
	asrs r0, r0, #5
	adds r1, r0, #0
	adds r1, #0x78
	adds r0, r4, #2
	adds r0, r2, r0
	movs r2, #0
	ldrsh r0, [r0, r2]
	muls r0, r3, r0
	cmp r0, #0
	bge _08014694
	adds r0, #0x1f
_08014694:
	asrs r0, r0, #5
	adds r2, r0, #0
	adds r2, #0x50
	lsls r0, r3, #2
	adds r0, #0x80
	ldr r0, [r5, #4]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl sub_08009A70
	ldrh r0, [r5, #2]
	adds r1, r0, #1
	strh r1, [r5, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x1f
	bls _080146D2
	movs r0, #0
	strh r0, [r5, #2]
	movs r0, #2
	strb r0, [r5, #1]
	b _080146D2
	.align 2, 0
_080146C4: .4byte 0x080807A0
_080146C8:
	ldr r0, [r5, #4]
	bl sub_08009A00
	bl sub_08007A64
_080146D2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080146D8
sub_080146D8: @ 0x080146D8
	push {r4, r5, lr}
	movs r4, #0
_080146DC:
	ldr r0, _0801472C @ =sub_080145F0
	movs r1, #0x48
	movs r2, #0
	bl sub_08007968
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	adds r0, r5, #0
	bl sub_08007BBC
	adds r1, r0, #0
	movs r0, #0
	strb r0, [r1, #1]
	strh r0, [r1, #2]
	adds r0, r4, #0
	cmp r4, #0
	bge _08014700
	adds r0, r4, #7
_08014700:
	asrs r0, r0, #3
	lsls r0, r0, #3
	subs r0, r4, r0
	strb r0, [r1]
	adds r1, r4, #0
	cmp r4, #0
	bge _08014710
	adds r1, r4, #3
_08014710:
	asrs r1, r1, #2
	lsls r1, r1, #2
	subs r1, r4, r1
	lsls r1, r1, #2
	adds r0, r5, #0
	bl sub_08007AD8
	adds r4, #1
	cmp r4, #7
	ble _080146DC
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801472C: .4byte sub_080145F0

	thumb_func_start sub_08014730
sub_08014730: @ 0x08014730
	push {r4, r5, r6, r7, lr}
	bl sub_08007BD4
	adds r5, r0, #0
	ldrb r6, [r5, #1]
	cmp r6, #1
	beq _080147DC
	cmp r6, #1
	bgt _08014748
	cmp r6, #0
	beq _08014756
	b _080148F6
_08014748:
	cmp r6, #2
	bne _0801474E
	b _08014864
_0801474E:
	cmp r6, #3
	bne _08014754
	b _080148EC
_08014754:
	b _080148F6
_08014756:
	movs r0, #2
	movs r1, #0x7f
	bl sub_080099E0
	adds r4, r0, #0
	movs r1, #1
	bl sub_08009A34
	ldr r3, _080147C8 @ =0x080804DC
	ldr r0, _080147CC @ =0x03004450
	ldrb r2, [r0]
	lsls r2, r2, #0x1a
	lsrs r0, r2, #0x1c
	lsls r0, r0, #2
	adds r0, r0, r3
	ldrh r1, [r0]
	adds r1, #0xc
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	lsrs r2, r2, #0x1c
	lsls r2, r2, #2
	adds r3, #2
	adds r2, r2, r3
	ldrh r2, [r2]
	adds r2, #0xc
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r4, #0
	bl sub_08009A70
	ldr r0, _080147D0 @ =0x030013B8
	ldr r0, [r0]
	adds r0, #0xa0
	ldr r1, [r0]
	adds r0, r4, #0
	bl sub_08009A78
	adds r0, r4, #0
	movs r1, #3
	bl sub_08009AB4
	ldr r1, _080147D4 @ =0x080EA208
	ldr r2, _080147D8 @ =0x080EA1C0
	adds r0, r4, #0
	movs r3, #0xb
	bl sub_08009ACC
	adds r0, r4, #0
	movs r1, #0
	bl sub_08009B40
	str r4, [r5, #4]
	strh r6, [r5, #2]
	movs r0, #1
	strb r0, [r5, #1]
	b _080148F6
	.align 2, 0
_080147C8: .4byte 0x080804DC
_080147CC: .4byte 0x03004450
_080147D0: .4byte 0x030013B8
_080147D4: .4byte 0x080EA208
_080147D8: .4byte 0x080EA1C0
_080147DC:
	ldr r0, _08014858 @ =0x080804DC
	mov ip, r0
	ldr r0, _0801485C @ =0x03004450
	ldrb r0, [r0]
	lsls r6, r0, #0x1a
	lsrs r0, r6, #0x1c
	lsls r0, r0, #2
	add r0, ip
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r7, _08014860 @ =0x080807C0
	ldrb r0, [r5]
	lsls r4, r0, #2
	adds r0, r4, r7
	movs r2, #0
	ldrsh r0, [r0, r2]
	ldrh r2, [r5, #2]
	muls r0, r2, r0
	cmp r0, #0
	bge _08014806
	adds r0, #0xf
_08014806:
	asrs r0, r0, #4
	adds r0, #0xc
	adds r3, r1, r0
	lsrs r0, r6, #0x1c
	lsls r0, r0, #2
	mov r1, ip
	adds r1, #2
	adds r0, r0, r1
	movs r6, #0
	ldrsh r1, [r0, r6]
	adds r0, r7, #2
	adds r0, r4, r0
	movs r4, #0
	ldrsh r0, [r0, r4]
	muls r0, r2, r0
	cmp r0, #0
	bge _0801482A
	adds r0, #0xf
_0801482A:
	asrs r0, r0, #4
	adds r0, #0xc
	adds r2, r1, r0
	ldr r0, [r5, #4]
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl sub_08009A70
	ldrh r0, [r5, #2]
	adds r0, #1
	strh r0, [r5, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xd
	bne _080148F6
	movs r0, #0x18
	strh r0, [r5, #2]
	movs r0, #2
	strb r0, [r5, #1]
	b _080148F6
	.align 2, 0
_08014858: .4byte 0x080804DC
_0801485C: .4byte 0x03004450
_08014860: .4byte 0x080807C0
_08014864:
	ldr r6, _080148E0 @ =0x080804DC
	mov ip, r6
	ldr r0, _080148E4 @ =0x03004450
	ldrb r0, [r0]
	lsls r6, r0, #0x1a
	lsrs r0, r6, #0x1c
	lsls r0, r0, #2
	add r0, ip
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r7, _080148E8 @ =0x080807C0
	ldrb r0, [r5]
	lsls r4, r0, #2
	adds r0, r4, r7
	movs r2, #0
	ldrsh r0, [r0, r2]
	ldrh r2, [r5, #2]
	muls r0, r2, r0
	cmp r0, #0
	bge _0801488E
	adds r0, #0x1f
_0801488E:
	asrs r0, r0, #5
	adds r0, #0xc
	adds r3, r1, r0
	lsrs r0, r6, #0x1c
	lsls r0, r0, #2
	mov r1, ip
	adds r1, #2
	adds r0, r0, r1
	movs r6, #0
	ldrsh r1, [r0, r6]
	adds r0, r7, #2
	adds r0, r4, r0
	movs r4, #0
	ldrsh r0, [r0, r4]
	muls r0, r2, r0
	cmp r0, #0
	bge _080148B2
	adds r0, #0x1f
_080148B2:
	asrs r0, r0, #5
	adds r0, #0xc
	adds r2, r1, r0
	ldr r0, [r5, #4]
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl sub_08009A70
	ldrh r0, [r5, #2]
	adds r1, r0, #1
	strh r1, [r5, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x1f
	bls _080148F6
	movs r0, #0
	strh r0, [r5, #2]
	movs r0, #3
	strb r0, [r5, #1]
	b _080148F6
	.align 2, 0
_080148E0: .4byte 0x080804DC
_080148E4: .4byte 0x03004450
_080148E8: .4byte 0x080807C0
_080148EC:
	ldr r0, [r5, #4]
	bl sub_08009A00
	bl sub_08007A64
_080148F6:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080148FC
sub_080148FC: @ 0x080148FC
	push {r4, r5, r6, lr}
	movs r5, #0
	movs r6, #0
_08014902:
	ldr r0, _08014930 @ =sub_08014730
	movs r1, #0x48
	movs r2, #0
	bl sub_08007968
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl sub_08007BBC
	adds r4, r0, #0
	strb r6, [r4, #1]
	strh r6, [r4, #2]
	adds r0, r5, #0
	movs r1, #6
	bl __modsi3
	strb r0, [r4]
	adds r5, #1
	cmp r5, #5
	ble _08014902
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08014930: .4byte sub_08014730

	thumb_func_start sub_08014934
sub_08014934: @ 0x08014934
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	adds r5, r0, #0
	adds r4, r1, #0
	lsls r5, r5, #0x18
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r6, _08014980 @ =0x030013B8
	ldr r0, [r6]
	lsrs r5, r5, #0x17
	adds r0, #0x16
	adds r0, r0, r5
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	mov r8, r0
	ldr r0, [r6]
	adds r0, #0x16
	adds r0, r0, r5
	movs r1, #0
	ldrsh r0, [r0, r1]
	ldr r1, _08014984 @ =0x080807E0
	lsls r4, r4, #2
	adds r4, r4, r1
	ldr r1, [r4]
	bl sub_08007B84
	movs r0, #0
	mov r1, r8
	strb r0, [r1, #1]
	strh r0, [r1, #2]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08014980: .4byte 0x030013B8
_08014984: .4byte 0x080807E0

	thumb_func_start sub_08014988
sub_08014988: @ 0x08014988
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _080149A8 @ =0x030013B8
	ldr r3, [r1]
	adds r3, #0x9d
	movs r2, #1
	lsls r2, r0
	ldrb r1, [r3]
	bics r1, r2
	strb r1, [r3]
	movs r1, #0
	bl sub_08014934
	pop {r0}
	bx r0
	.align 2, 0
_080149A8: .4byte 0x030013B8

	thumb_func_start sub_080149AC
sub_080149AC: @ 0x080149AC
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _080149CC @ =0x030013B8
	ldr r3, [r1]
	adds r3, #0x9d
	movs r1, #1
	lsls r1, r0
	ldrb r2, [r3]
	orrs r1, r2
	strb r1, [r3]
	movs r1, #1
	bl sub_08014934
	pop {r0}
	bx r0
	.align 2, 0
_080149CC: .4byte 0x030013B8

	thumb_func_start sub_080149D0
sub_080149D0: @ 0x080149D0
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _080149F0 @ =0x030013B8
	ldr r3, [r1]
	adds r3, #0x9d
	movs r1, #1
	lsls r1, r0
	ldrb r2, [r3]
	orrs r1, r2
	strb r1, [r3]
	movs r1, #2
	bl sub_08014934
	pop {r0}
	bx r0
	.align 2, 0
_080149F0: .4byte 0x030013B8

	thumb_func_start sub_080149F4
sub_080149F4: @ 0x080149F4
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _08014A2C @ =0x030013B8
	ldr r0, [r5]
	lsls r1, r4, #1
	adds r0, #0x16
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	movs r1, #1
	strb r1, [r0, #4]
	ldr r2, [r5]
	adds r2, #0x9d
	lsls r1, r4
	ldrb r0, [r2]
	orrs r1, r0
	strb r1, [r2]
	adds r0, r4, #0
	movs r1, #3
	bl sub_08014934
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08014A2C: .4byte 0x030013B8

	thumb_func_start sub_08014A30
sub_08014A30: @ 0x08014A30
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _08014A6C @ =0x030013B8
	ldr r0, [r5]
	lsls r1, r4, #1
	adds r0, #0x16
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	movs r1, #0
	strb r1, [r0, #4]
	ldr r2, [r5]
	adds r2, #0x9d
	movs r0, #1
	lsls r0, r4
	ldrb r1, [r2]
	orrs r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	movs r1, #3
	bl sub_08014934
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08014A6C: .4byte 0x030013B8

	thumb_func_start sub_08014A70
sub_08014A70: @ 0x08014A70
	push {r4, lr}
	ldr r4, _08014A90 @ =0x030013B8
	ldr r0, [r4]
	adds r0, #0x8c
	ldr r0, [r0]
	bl sub_08009A00
	ldr r0, [r4]
	adds r0, #0x90
	ldr r0, [r0]
	bl sub_08009A00
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08014A90: .4byte 0x030013B8

	thumb_func_start sub_08014A94
sub_08014A94: @ 0x08014A94
	push {r4, r5, r6, lr}
	ldr r0, _08014B20 @ =0x03004450
	ldrb r1, [r0]
	movs r0, #0xc0
	ands r0, r1
	cmp r0, #0
	beq _08014AC4
	bl sub_08014B30
	ldr r4, _08014B24 @ =0x030013B8
	ldr r0, [r4]
	adds r0, #0x8c
	ldr r0, [r0]
	movs r1, #1
	bl sub_08009A34
	bl sub_08014BB8
	ldr r0, [r4]
	adds r0, #0x90
	ldr r0, [r0]
	movs r1, #1
	bl sub_08009A34
_08014AC4:
	ldr r0, _08014B28 @ =0x080807E0
	ldr r6, [r0]
	adds r0, r6, #0
	movs r1, #0x40
	movs r2, #0
	bl sub_08007968
	ldr r4, _08014B24 @ =0x030013B8
	ldr r1, [r4]
	movs r5, #0
	strh r0, [r1, #0x16]
	movs r2, #0x16
	ldrsh r0, [r1, r2]
	bl sub_08007BBC
	adds r1, r0, #0
	strb r5, [r1]
	adds r0, r6, #0
	movs r1, #0x40
	movs r2, #0
	bl sub_08007968
	ldr r1, [r4]
	strh r0, [r1, #0x18]
	movs r2, #0x18
	ldrsh r0, [r1, r2]
	bl sub_08007BBC
	adds r1, r0, #0
	movs r0, #1
	strb r0, [r1]
	ldr r0, [r4]
	movs r1, #0x16
	ldrsh r0, [r0, r1]
	ldr r1, _08014B2C @ =sub_08014A70
	bl sub_08007BA0
	movs r0, #0
	bl sub_08014988
	movs r0, #1
	bl sub_08014988
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08014B20: .4byte 0x03004450
_08014B24: .4byte 0x030013B8
_08014B28: .4byte 0x080807E0
_08014B2C: .4byte sub_08014A70

	thumb_func_start sub_08014B30
sub_08014B30: @ 0x08014B30
	push {r4, r5, lr}
	movs r0, #2
	movs r1, #0x80
	bl sub_080099E0
	adds r4, r0, #0
	movs r1, #0
	bl sub_08009A34
	adds r0, r4, #0
	movs r1, #0x28
	movs r2, #0x70
	bl sub_08009A70
	ldr r1, _08014BA4 @ =0x06010000
	adds r0, r4, #0
	bl sub_08009A78
	ldr r5, _08014BA8 @ =0x030013B8
	ldr r0, [r5]
	adds r0, #0xb8
	ldr r1, [r0]
	adds r0, r4, #0
	movs r2, #0
	bl sub_08009BBC
	adds r0, r4, #0
	movs r1, #0
	bl sub_08009AB4
	ldr r1, _08014BAC @ =0x080839DC
	ldr r0, _08014BB0 @ =0x03004450
	ldrb r2, [r0, #1]
	lsls r2, r2, #0x1d
	lsrs r0, r2, #0x1e
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, _08014BB4 @ =0x080839FC
	lsrs r2, r2, #0x1e
	lsls r2, r2, #2
	adds r2, r2, r0
	ldr r2, [r2]
	adds r0, r4, #0
	movs r3, #1
	bl sub_08009ACC
	adds r0, r4, #0
	movs r1, #0xff
	bl sub_08009B40
	ldr r0, [r5]
	adds r0, #0x8c
	str r4, [r0]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08014BA4: .4byte 0x06010000
_08014BA8: .4byte 0x030013B8
_08014BAC: .4byte 0x080839DC
_08014BB0: .4byte 0x03004450
_08014BB4: .4byte 0x080839FC

	thumb_func_start sub_08014BB8
sub_08014BB8: @ 0x08014BB8
	push {r4, r5, lr}
	movs r0, #2
	movs r1, #0x80
	bl sub_080099E0
	adds r4, r0, #0
	movs r1, #0
	bl sub_08009A34
	adds r0, r4, #0
	movs r1, #0xc8
	movs r2, #0x70
	bl sub_08009A70
	ldr r1, _08014C2C @ =0x06010400
	adds r0, r4, #0
	bl sub_08009A78
	ldr r5, _08014C30 @ =0x030013B8
	ldr r0, [r5]
	adds r0, #0xc0
	ldr r1, [r0]
	adds r0, r4, #0
	movs r2, #0
	bl sub_08009BBC
	adds r0, r4, #0
	movs r1, #1
	bl sub_08009AB4
	ldr r1, _08014C34 @ =0x080839DC
	ldr r0, _08014C38 @ =0x03004450
	ldrb r2, [r0, #1]
	lsls r2, r2, #0x1b
	lsrs r0, r2, #0x1e
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, _08014C3C @ =0x080839FC
	lsrs r2, r2, #0x1e
	lsls r2, r2, #2
	adds r2, r2, r0
	ldr r2, [r2]
	adds r0, r4, #0
	movs r3, #2
	bl sub_08009ACC
	adds r0, r4, #0
	movs r1, #0xff
	bl sub_08009B40
	ldr r0, [r5]
	adds r0, #0x90
	str r4, [r0]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08014C2C: .4byte 0x06010400
_08014C30: .4byte 0x030013B8
_08014C34: .4byte 0x080839DC
_08014C38: .4byte 0x03004450
_08014C3C: .4byte 0x080839FC

	thumb_func_start sub_08014C40
sub_08014C40: @ 0x08014C40
	bx lr
	.align 2, 0

	thumb_func_start sub_08014C44
sub_08014C44: @ 0x08014C44
	push {r4, r5, r6, lr}
	bl sub_08007BD4
	adds r6, r0, #0
	ldr r0, _08014C6C @ =0x030013B8
	ldr r0, [r0]
	ldrb r2, [r6]
	lsls r1, r2, #2
	adds r0, #0x8c
	adds r0, r0, r1
	ldr r5, [r0]
	ldrb r0, [r6, #1]
	cmp r0, #1
	beq _08014CB8
	cmp r0, #1
	bgt _08014C70
	cmp r0, #0
	beq _08014C7A
	b _08014D3A
	.align 2, 0
_08014C6C: .4byte 0x030013B8
_08014C70:
	cmp r0, #2
	beq _08014D14
	cmp r0, #3
	beq _08014D34
	b _08014D3A
_08014C7A:
	adds r0, r5, #0
	movs r1, #1
	bl sub_08009A34
	ldr r1, _08014CB0 @ =0x080807D8
	ldrb r0, [r6]
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r0, #8
	ldrsh r2, [r5, r0]
	adds r0, r5, #0
	bl sub_08009A70
	ldr r1, _08014CB4 @ =0x08080540
	ldrb r0, [r6]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r0, r5, #0
	bl sub_08009AFC
	movs r0, #1
	strb r0, [r6, #1]
	b _08014D3A
	.align 2, 0
_08014CB0: .4byte 0x080807D8
_08014CB4: .4byte 0x08080540
_08014CB8:
	movs r1, #6
	ldrsh r4, [r5, r1]
	ldr r1, _08014D08 @ =0x080807DC
	lsls r0, r2, #1
	adds r0, r0, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r4, r4, r0
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	movs r0, #8
	ldrsh r2, [r5, r0]
	adds r0, r5, #0
	bl sub_08009A70
	ldr r1, _08014D0C @ =0x08080534
	ldrb r2, [r6]
	lsls r0, r2, #2
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r4, r0
	bne _08014D3A
	ldr r1, _08014D10 @ =0x08080544
	lsls r0, r2, #1
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r0, r5, #0
	bl sub_08009AFC
	adds r0, r5, #0
	movs r1, #0
	bl sub_08009B40
	movs r0, #0x3c
	bl sub_08007AC0
	movs r0, #2
	strb r0, [r6, #1]
	b _08014D3A
	.align 2, 0
_08014D08: .4byte 0x080807DC
_08014D0C: .4byte 0x08080534
_08014D10: .4byte 0x08080544
_08014D14:
	ldr r1, _08014D30 @ =0x0808053C
	lsls r0, r2, #1
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r0, r5, #0
	bl sub_08009AFC
	adds r0, r5, #0
	movs r1, #0xff
	bl sub_08009B40
	movs r0, #3
	strb r0, [r6, #1]
	b _08014D3A
	.align 2, 0
_08014D30: .4byte 0x0808053C
_08014D34:
	adds r0, r2, #0
	bl sub_08014988
_08014D3A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08014D40
sub_08014D40: @ 0x08014D40
	push {r4, r5, lr}
	bl sub_08007BD4
	adds r5, r0, #0
	ldr r0, _08014D68 @ =0x030013B8
	ldr r0, [r0]
	ldrb r2, [r5]
	lsls r1, r2, #2
	adds r0, #0x8c
	adds r0, r0, r1
	ldr r4, [r0]
	ldrb r0, [r5, #1]
	cmp r0, #1
	beq _08014D94
	cmp r0, #1
	bgt _08014D6C
	cmp r0, #0
	beq _08014D72
	b _08014DAE
	.align 2, 0
_08014D68: .4byte 0x030013B8
_08014D6C:
	cmp r0, #2
	beq _08014DA8
	b _08014DAE
_08014D72:
	ldr r1, _08014D90 @ =0x08080544
	lsls r0, r2, #1
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r0, r4, #0
	bl sub_08009AFC
	adds r0, r4, #0
	movs r1, #0
	bl sub_08009B40
	movs r0, #1
	strb r0, [r5, #1]
	b _08014DAE
	.align 2, 0
_08014D90: .4byte 0x08080544
_08014D94:
	ldrb r0, [r4, #1]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _08014DAE
	movs r0, #0x1e
	bl sub_08007AC0
	movs r0, #2
	strb r0, [r5, #1]
	b _08014DAE
_08014DA8:
	adds r0, r2, #0
	bl sub_08014988
_08014DAE:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08014DB4
sub_08014DB4: @ 0x08014DB4
	push {r4, r5, lr}
	bl sub_08007BD4
	adds r5, r0, #0
	ldr r0, _08014DDC @ =0x030013B8
	ldr r1, [r0]
	ldrb r0, [r5]
	lsls r0, r0, #2
	adds r1, #0x8c
	adds r1, r1, r0
	ldr r4, [r1]
	ldrb r0, [r5, #1]
	cmp r0, #4
	bhi _08014E6E
	lsls r0, r0, #2
	ldr r1, _08014DE0 @ =_08014DE4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08014DDC: .4byte 0x030013B8
_08014DE0: .4byte _08014DE4
_08014DE4: @ jump table
	.4byte _08014DF8 @ case 0
	.4byte _08014E1E @ case 1
	.4byte _08014E32 @ case 2
	.4byte _08014E54 @ case 3
	.4byte _08014E68 @ case 4
_08014DF8:
	ldrb r0, [r5, #4]
	cmp r0, #0
	beq _08014E08
	adds r0, r4, #0
	movs r1, #7
	bl sub_08009AFC
	b _08014E10
_08014E08:
	adds r0, r4, #0
	movs r1, #8
	bl sub_08009AFC
_08014E10:
	adds r0, r4, #0
	movs r1, #0
	bl sub_08009B40
	movs r0, #1
	strb r0, [r5, #1]
	b _08014E6E
_08014E1E:
	ldrb r0, [r4, #1]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _08014E6E
	movs r0, #0x3c
	bl sub_08007AC0
	movs r0, #2
	strb r0, [r5, #1]
	b _08014E6E
_08014E32:
	ldr r1, _08014E50 @ =0x0808053C
	ldrb r0, [r5]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r0, r4, #0
	bl sub_08009AFC
	adds r0, r4, #0
	movs r1, #0xff
	bl sub_08009B40
	movs r0, #3
	strb r0, [r5, #1]
	b _08014E6E
	.align 2, 0
_08014E50: .4byte 0x0808053C
_08014E54:
	ldrb r0, [r4, #1]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _08014E6E
	movs r0, #0xf
	bl sub_08007AC0
	movs r0, #4
	strb r0, [r5, #1]
	b _08014E6E
_08014E68:
	ldrb r0, [r5]
	bl sub_08014988
_08014E6E:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08014E74
sub_08014E74: @ 0x08014E74
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _08014EA8 @ =0x030013B8
	ldr r0, [r5]
	movs r1, #0x1a
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	adds r6, r0, #0
	ldr r0, [r5]
	movs r1, #0x1a
	ldrsh r0, [r0, r1]
	ldr r1, _08014EAC @ =0x080807F0
	lsls r4, r4, #2
	adds r4, r4, r1
	ldr r1, [r4]
	bl sub_08007B84
	movs r0, #0
	strb r0, [r6]
	strh r0, [r6, #2]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08014EA8: .4byte 0x030013B8
_08014EAC: .4byte 0x080807F0

	thumb_func_start sub_08014EB0
sub_08014EB0: @ 0x08014EB0
	push {lr}
	ldr r0, _08014EC8 @ =0x030013B8
	ldr r0, [r0]
	adds r0, #0x9e
	movs r1, #1
	strb r1, [r0]
	movs r0, #0
	bl sub_08014E74
	pop {r0}
	bx r0
	.align 2, 0
_08014EC8: .4byte 0x030013B8

	thumb_func_start sub_08014ECC
sub_08014ECC: @ 0x08014ECC
	push {lr}
	ldr r0, _08014EE4 @ =0x030013B8
	ldr r0, [r0]
	adds r0, #0x9e
	movs r1, #1
	strb r1, [r0]
	movs r0, #1
	bl sub_08014E74
	pop {r0}
	bx r0
	.align 2, 0
_08014EE4: .4byte 0x030013B8

	thumb_func_start sub_08014EE8
sub_08014EE8: @ 0x08014EE8
	push {lr}
	ldr r0, _08014F00 @ =0x030013B8
	ldr r0, [r0]
	adds r0, #0x9e
	movs r1, #1
	strb r1, [r0]
	movs r0, #2
	bl sub_08014E74
	pop {r0}
	bx r0
	.align 2, 0
_08014F00: .4byte 0x030013B8

	thumb_func_start sub_08014F04
sub_08014F04: @ 0x08014F04
	push {lr}
	ldr r0, _08014F18 @ =0x030013B8
	ldr r0, [r0]
	adds r0, #0x94
	ldr r0, [r0]
	bl sub_08009A00
	pop {r0}
	bx r0
	.align 2, 0
_08014F18: .4byte 0x030013B8

	thumb_func_start sub_08014F1C
sub_08014F1C: @ 0x08014F1C
	push {r4, r5, lr}
	movs r0, #2
	movs r1, #0x80
	bl sub_080099E0
	adds r4, r0, #0
	movs r1, #1
	bl sub_08009A34
	adds r0, r4, #0
	movs r1, #0x78
	movs r2, #0x70
	bl sub_08009A70
	ldr r1, _08014F88 @ =0x06010800
	adds r0, r4, #0
	bl sub_08009A78
	ldr r5, _08014F8C @ =0x030013B8
	ldr r0, [r5]
	adds r0, #0xc8
	ldr r1, [r0]
	adds r0, r4, #0
	movs r2, #0
	bl sub_08009BBC
	adds r0, r4, #0
	movs r1, #2
	bl sub_08009AB4
	ldr r1, _08014F90 @ =0x080F81E8
	ldr r2, _08014F94 @ =0x080F81B0
	adds r0, r4, #0
	movs r3, #1
	bl sub_08009ACC
	adds r0, r4, #0
	movs r1, #0xff
	bl sub_08009B40
	ldr r1, [r5]
	adds r0, r1, #0
	adds r0, #0x94
	str r4, [r0]
	movs r2, #0x1a
	ldrsh r0, [r1, r2]
	ldr r1, _08014F98 @ =sub_08014F04
	bl sub_08007BA0
	bl sub_08014EB0
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08014F88: .4byte 0x06010800
_08014F8C: .4byte 0x030013B8
_08014F90: .4byte 0x080F81E8
_08014F94: .4byte 0x080F81B0
_08014F98: .4byte sub_08014F04

	thumb_func_start sub_08014F9C
sub_08014F9C: @ 0x08014F9C
	bx lr
	.align 2, 0

	thumb_func_start sub_08014FA0
sub_08014FA0: @ 0x08014FA0
	push {r4, lr}
	ldr r4, _08014FC8 @ =0x030013B8
	ldr r0, [r4]
	adds r0, #0x94
	ldr r0, [r0]
	movs r1, #1
	bl sub_08009AFC
	ldr r0, [r4]
	adds r0, #0x94
	ldr r0, [r0]
	movs r1, #0xff
	bl sub_08009B40
	bl sub_08014EB0
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08014FC8: .4byte 0x030013B8

	thumb_func_start sub_08014FCC
sub_08014FCC: @ 0x08014FCC
	push {r4, r5, lr}
	bl sub_08007BD4
	adds r5, r0, #0
	ldrb r0, [r5]
	cmp r0, #1
	beq _08015010
	cmp r0, #1
	bgt _08014FE4
	cmp r0, #0
	beq _08014FEA
	b _08015030
_08014FE4:
	cmp r0, #2
	beq _0801502C
	b _08015030
_08014FEA:
	ldr r4, _0801500C @ =0x030013B8
	ldr r0, [r4]
	adds r0, #0x94
	ldr r0, [r0]
	movs r1, #2
	bl sub_08009AFC
	ldr r0, [r4]
	adds r0, #0x94
	ldr r0, [r0]
	movs r1, #0
	bl sub_08009B40
	movs r0, #1
	strb r0, [r5]
	b _08015030
	.align 2, 0
_0801500C: .4byte 0x030013B8
_08015010:
	ldr r0, _08015028 @ =0x030013B8
	ldr r0, [r0]
	adds r0, #0x94
	ldr r0, [r0]
	ldrb r0, [r0, #1]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _08015030
	movs r0, #2
	strb r0, [r5]
	b _08015030
	.align 2, 0
_08015028: .4byte 0x030013B8
_0801502C:
	bl sub_08014EB0
_08015030:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08015038
sub_08015038: @ 0x08015038
	bx lr
	.align 2, 0

	thumb_func_start sub_0801503C
sub_0801503C: @ 0x0801503C
	push {r4, lr}
	bl sub_08007BD4
	adds r4, r0, #0
	ldrb r0, [r4]
	cmp r0, #1
	beq _0801506A
	cmp r0, #1
	bgt _08015054
	cmp r0, #0
	beq _0801505E
	b _0801509E
_08015054:
	cmp r0, #2
	beq _08015076
	cmp r0, #3
	beq _08015090
	b _0801509E
_0801505E:
	ldrh r0, [r4, #4]
	bl m4aSongNumStop
	movs r0, #1
	strb r0, [r4]
	b _0801509E
_0801506A:
	ldrh r0, [r4, #6]
	bl m4aSongNumStart
	movs r0, #2
	strb r0, [r4]
	b _0801509E
_08015076:
	ldr r0, _0801508C @ =0x03005730
	ldr r0, [r0, #4]
	cmp r0, #0
	bge _0801509E
	ldrh r0, [r4, #8]
	bl m4aSongNumStartOrContinue
	movs r0, #3
	strb r0, [r4]
	b _0801509E
	.align 2, 0
_0801508C: .4byte 0x03005730
_08015090:
	ldr r0, _080150A4 @ =0x030013B8
	ldr r0, [r0]
	movs r1, #0x1c
	ldrsh r0, [r0, r1]
	ldr r1, _080150A8 @ =sub_08015038
	bl sub_08007B84
_0801509E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080150A4: .4byte 0x030013B8
_080150A8: .4byte sub_08015038

	thumb_func_start sub_080150AC
sub_080150AC: @ 0x080150AC
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	ldr r0, _080150F8 @ =0x030013B8
	mov r8, r0
	ldr r0, [r0]
	movs r1, #0x1c
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	movs r1, #0
	strb r1, [r0]
	strh r1, [r0, #2]
	strh r4, [r0, #4]
	strh r5, [r0, #8]
	strh r6, [r0, #6]
	mov r1, r8
	ldr r0, [r1]
	movs r1, #0x1c
	ldrsh r0, [r0, r1]
	ldr r1, _080150FC @ =sub_0801503C
	bl sub_08007B84
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080150F8: .4byte 0x030013B8
_080150FC: .4byte sub_0801503C

	thumb_func_start sub_08015100
sub_08015100: @ 0x08015100
	push {r4, r5, r6, lr}
	ldr r0, _08015154 @ =0x03004400
	ldr r0, [r0]
	bl sub_0800B80C
	ldr r4, _08015158 @ =0x03004470
	movs r0, #0
	adds r1, r4, #0
	movs r2, #0x14
	bl sub_08007EFC
	ldr r2, _0801515C @ =0x080807FC
	adds r1, r4, #6
	movs r4, #5
_0801511C:
	ldrh r0, [r2]
	strh r0, [r1]
	adds r2, #2
	adds r1, #2
	subs r4, #1
	cmp r4, #0
	bge _0801511C
	ldr r0, _08015158 @ =0x03004470
	adds r5, r0, #6
	adds r6, r5, #0
	movs r4, #5
_08015132:
	movs r0, #6
	bl sub_0800B828
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xf
	adds r0, r0, r6
	ldrh r2, [r0]
	ldrh r1, [r5]
	strh r1, [r0]
	strh r2, [r5]
	adds r5, #2
	subs r4, #1
	cmp r4, #0
	bge _08015132
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08015154: .4byte 0x03004400
_08015158: .4byte 0x03004470
_0801515C: .4byte 0x080807FC

	thumb_func_start sub_08015160
sub_08015160: @ 0x08015160
	push {r4, r5, r6, lr}
	sub sp, #0xc
	ldr r5, _08015324 @ =0x030013BC
	movs r0, #0xa8
	bl sub_08007CE8
	adds r1, r0, #0
	str r1, [r5]
	movs r0, #0
	movs r2, #0xa8
	bl sub_08007EFC
	ldr r6, _08015328 @ =0x03004470
	ldrb r0, [r6, #4]
	cmp r0, #0
	beq _080151B2
	ldr r1, _0801532C @ =0x080839CC
	ldrb r0, [r6]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1c
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _08015330 @ =0x05000200
	bl LoadPalette_08008308
	ldr r1, _08015334 @ =0x080839EC
	ldrb r0, [r6]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1c
	adds r0, r0, r1
	ldr r0, [r0]
	add r1, sp, #4
	bl sub_08008380
	ldr r1, [r5]
	adds r2, r1, #0
	adds r2, #0x88
	str r0, [r2]
	adds r1, #0x8c
	ldr r0, [sp, #4]
	str r0, [r1]
_080151B2:
	ldr r0, _08015338 @ =0x080F85AC
	ldr r1, _0801533C @ =0x05000220
	bl LoadPalette_08008308
	ldr r0, _08015340 @ =0x080F8E60
	add r1, sp, #4
	bl sub_08008380
	ldr r1, [r5]
	adds r2, r1, #0
	adds r2, #0x90
	str r0, [r2]
	adds r1, #0x94
	ldr r0, [sp, #4]
	str r0, [r1]
	ldr r0, _08015344 @ =0x080F9A08
	ldr r1, _08015348 @ =0x05000240
	bl LoadPalette_08008308
	ldr r0, _0801534C @ =0x080F9C58
	add r1, sp, #4
	bl sub_08008380
	ldr r1, [r5]
	adds r2, r1, #0
	adds r2, #0x98
	str r0, [r2]
	adds r1, #0x9c
	ldr r0, [sp, #4]
	str r0, [r1]
	ldr r4, _08015350 @ =0x06011400
	ldr r0, _08015354 @ =0x080ECDC0
	ldr r1, _08015358 @ =0x05000260
	bl LoadPalette_08008308
	ldr r0, [r5]
	str r4, [r0, #0x74]
	ldr r0, _0801535C @ =0x080ECFE0
	adds r1, r4, #0
	bl DecompressData_08008374
	adds r4, r0, r4
	ldr r0, _08015360 @ =0x0809C73C
	ldr r1, _08015364 @ =0x050002C0
	bl LoadPalette_08008308
	ldr r0, [r5]
	adds r0, #0x80
	str r4, [r0]
	ldr r0, _08015368 @ =0x0809C890
	adds r1, r4, #0
	bl DecompressData_08008374
	adds r4, r4, r0
	ldr r0, _0801536C @ =0x080F3900
	ldr r1, _08015370 @ =0x05000300
	bl LoadPalette_08008308
	ldr r0, [r5]
	str r4, [r0, #0x78]
	ldr r0, _08015374 @ =0x080F394C
	adds r1, r4, #0
	bl DecompressData_08008374
	adds r4, r4, r0
	ldr r0, _08015378 @ =0x080F3D18
	ldr r1, _0801537C @ =0x050002E0
	bl LoadPalette_08008308
	ldr r0, [r5]
	str r4, [r0, #0x7c]
	ldr r0, _08015380 @ =0x080F3E34
	adds r1, r4, #0
	bl DecompressData_08008374
	adds r4, r4, r0
	ldr r0, [r5]
	adds r0, #0x84
	str r4, [r0]
	ldr r0, _08015384 @ =0x080EB724
	movs r1, #0xa0
	lsls r1, r1, #0x13
	bl LoadPalette_08008308
	ldr r0, _08015388 @ =0x080EBBC8
	movs r1, #0xc0
	lsls r1, r1, #0x13
	bl DecompressData_08008374
	ldr r0, _0801538C @ =0x080EB870
	ldr r1, _08015390 @ =0x0600F800
	movs r2, #0
	movs r3, #0
	bl LoadTileMap_080083CC
	ldr r0, _08015394 @ =0x080EB9EC
	ldr r1, _08015398 @ =0x0600F000
	movs r2, #0
	movs r3, #0
	bl LoadTileMap_080083CC
	ldr r0, _0801539C @ =sub_08015F08
	movs r1, #0x43
	movs r2, #0
	bl sub_08007968
	ldr r1, [r5]
	strh r0, [r1, #8]
	bl sub_080161F0
	ldr r0, _080153A0 @ =sub_08016434
	movs r1, #0x44
	movs r2, #0
	bl sub_08007968
	ldr r1, [r5]
	strh r0, [r1, #0xc]
	ldr r0, _080153A4 @ =sub_08016588
	movs r1, #0x45
	movs r2, #0
	bl sub_08007968
	ldr r1, [r5]
	strh r0, [r1, #0xe]
	ldr r0, _080153A8 @ =sub_08016AFC
	movs r1, #0x46
	movs r2, #0
	bl sub_08007968
	ldr r1, [r5]
	strh r0, [r1, #0x10]
	ldr r0, _080153AC @ =sub_08016EA8
	movs r1, #0x41
	movs r2, #0
	bl sub_08007968
	ldr r1, [r5]
	strh r0, [r1, #0x12]
	ldr r0, _080153B0 @ =sub_0801717C
	movs r1, #0x47
	movs r2, #0
	bl sub_08007968
	ldr r1, [r5]
	strh r0, [r1, #0x14]
	ldr r0, _080153B4 @ =0x080EB860
	movs r1, #0x17
	bl sub_08009554
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
	movs r1, #0x1d
	movs r2, #6
	movs r3, #0
	bl sub_08004028
	bl sub_080057C0
	movs r0, #1
	bl sub_08005A88
	ldrb r1, [r6]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	movs r0, #8
	bl sub_08005BE0
	ldr r0, _080153B8 @ =0x03004400
	ldr r0, [r0]
	bl sub_0800B80C
	add sp, #0xc
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08015324: .4byte 0x030013BC
_08015328: .4byte 0x03004470
_0801532C: .4byte 0x080839CC
_08015330: .4byte 0x05000200
_08015334: .4byte 0x080839EC
_08015338: .4byte 0x080F85AC
_0801533C: .4byte 0x05000220
_08015340: .4byte 0x080F8E60
_08015344: .4byte 0x080F9A08
_08015348: .4byte 0x05000240
_0801534C: .4byte 0x080F9C58
_08015350: .4byte 0x06011400
_08015354: .4byte 0x080ECDC0
_08015358: .4byte 0x05000260
_0801535C: .4byte 0x080ECFE0
_08015360: .4byte 0x0809C73C
_08015364: .4byte 0x050002C0
_08015368: .4byte 0x0809C890
_0801536C: .4byte 0x080F3900
_08015370: .4byte 0x05000300
_08015374: .4byte 0x080F394C
_08015378: .4byte 0x080F3D18
_0801537C: .4byte 0x050002E0
_08015380: .4byte 0x080F3E34
_08015384: .4byte 0x080EB724
_08015388: .4byte 0x080EBBC8
_0801538C: .4byte 0x080EB870
_08015390: .4byte 0x0600F800
_08015394: .4byte 0x080EB9EC
_08015398: .4byte 0x0600F000
_0801539C: .4byte sub_08015F08
_080153A0: .4byte sub_08016434
_080153A4: .4byte sub_08016588
_080153A8: .4byte sub_08016AFC
_080153AC: .4byte sub_08016EA8
_080153B0: .4byte sub_0801717C
_080153B4: .4byte 0x080EB860
_080153B8: .4byte 0x03004400

	thumb_func_start sub_080153BC
sub_080153BC: @ 0x080153BC
	push {r4, lr}
	bl sub_080058A4
	ldr r0, _08015418 @ =0x080EB860
	bl sub_080095E0
	ldr r4, _0801541C @ =0x030013BC
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
	movs r1, #0x12
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	ldr r0, [r4]
	movs r1, #0x14
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08015418: .4byte 0x080EB860
_0801541C: .4byte 0x030013BC

	thumb_func_start sub_08015420
sub_08015420: @ 0x08015420
	push {r4, r5, lr}
	movs r0, #0
	bl sub_080081A0
	bl sub_08015160
	ldr r4, _08015440 @ =0x030013BC
	ldr r5, _08015444 @ =0x080809B8
_08015430:
	ldr r1, [r4]
	ldrh r0, [r1, #4]
	cmp r0, #0
	beq _08015448
	subs r0, #1
	strh r0, [r1, #4]
	b _0801545C
	.align 2, 0
_08015440: .4byte 0x030013BC
_08015444: .4byte 0x080809B8
_08015448:
	ldrb r0, [r1]
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	bl call_via_r0
	ldr r0, [r4]
	ldrb r0, [r0, #6]
	cmp r0, #0
	bne _08015464
_0801545C:
	movs r0, #1
	bl ProcSleep_08002B98
	b _08015430
_08015464:
	bl sub_080153BC
	movs r0, #1
	bl ProcSleep_08002B98
	ldr r5, _080154E0 @ =0x03004470
	ldrb r0, [r5, #4]
	cmp r0, #6
	beq _0801547A
	bl m4aMPlayAllStop
_0801547A:
	ldr r4, _080154E4 @ =0x030013BC
	ldr r0, [r4]
	adds r0, #0x88
	ldr r0, [r0]
	cmp r0, #0
	beq _0801548A
	bl sub_08007CF8
_0801548A:
	ldr r0, [r4]
	adds r0, #0x90
	ldr r0, [r0]
	bl sub_08007CF8
	ldr r0, [r4]
	adds r0, #0x98
	ldr r0, [r0]
	bl sub_08007CF8
	ldr r0, [r4]
	bl sub_08007CF8
	ldrb r0, [r5, #4]
	cmp r0, #6
	bne _080154D4
	ldrb r1, [r5]
	lsls r0, r1, #0x1b
	lsrs r0, r0, #0x1d
	subs r0, #1
	lsls r0, r0, #1
	adds r2, r5, #6
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	ldrb r2, [r5, #5]
	movs r3, #2
	bl sub_08001C14
	ldr r0, _080154E8 @ =0x03004400
	ldrb r0, [r0, #8]
	bl sub_08001930
	movs r0, #0x11
	bl ChangeGameState_08008790
_080154D4:
	bl sub_08002B0C
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080154E0: .4byte 0x03004470
_080154E4: .4byte 0x030013BC
_080154E8: .4byte 0x03004400

	thumb_func_start sub_080154EC
sub_080154EC: @ 0x080154EC
	ldr r1, _08015500 @ =0x030013BC
	ldr r2, [r1]
	movs r3, #0
	strb r0, [r2]
	ldr r0, [r1]
	strb r3, [r0, #1]
	ldr r0, [r1]
	strh r3, [r0, #2]
	bx lr
	.align 2, 0
_08015500: .4byte 0x030013BC

	thumb_func_start sub_08015504
sub_08015504: @ 0x08015504
	push {r4, lr}
	ldr r0, _08015518 @ =0x030013BC
	ldr r0, [r0]
	ldrb r0, [r0, #1]
	cmp r0, #0
	beq _0801551C
	cmp r0, #1
	beq _0801559C
	b _080155B6
	.align 2, 0
_08015518: .4byte 0x030013BC
_0801551C:
	bl sub_08008174
	ldr r4, _08015568 @ =0x030024E0
	ldr r0, _0801556C @ =0x00001F03
	strh r0, [r4, #8]
	ldrh r0, [r4]
	movs r2, #0x80
	lsls r2, r2, #4
	adds r1, r2, #0
	orrs r0, r1
	ldr r1, _08015570 @ =0x00001E02
	strh r1, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r1, r2, #0
	orrs r0, r1
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4]
	movs r0, #1
	bl sub_08004124
	adds r4, #0x4f
	movs r0, #1
	strb r0, [r4]
	ldr r1, _08015574 @ =0x03004470
	ldrb r0, [r1]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1d
	cmp r0, #7
	bne _08015578
	movs r0, #0x45
	bl m4aSongNumStartOrContinue
	b _0801558A
	.align 2, 0
_08015568: .4byte 0x030024E0
_0801556C: .4byte 0x00001F03
_08015570: .4byte 0x00001E02
_08015574: .4byte 0x03004470
_08015578:
	ldrb r0, [r1, #4]
	subs r0, #5
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _0801558A
	movs r0, #0x47
	bl m4aSongNumStartOrContinue
_0801558A:
	bl sub_0800B770
	ldr r0, _08015598 @ =0x030013BC
	ldr r1, [r0]
	movs r0, #1
	strb r0, [r1, #1]
	b _080155B6
	.align 2, 0
_08015598: .4byte 0x030013BC
_0801559C:
	ldr r1, _080155AC @ =0x03004470
	ldrb r0, [r1, #4]
	cmp r0, #0
	beq _080155B0
	bl sub_080154EC
	b _080155B6
	.align 2, 0
_080155AC: .4byte 0x03004470
_080155B0:
	movs r0, #1
	bl sub_080154EC
_080155B6:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080155BC
sub_080155BC: @ 0x080155BC
	push {r4, lr}
	sub sp, #0x14
	ldr r1, _080155D8 @ =0x030013BC
	ldr r0, [r1]
	ldrb r0, [r0, #1]
	adds r4, r1, #0
	cmp r0, #4
	bls _080155CE
	b _0801570A
_080155CE:
	lsls r0, r0, #2
	ldr r1, _080155DC @ =_080155E0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080155D8: .4byte 0x030013BC
_080155DC: .4byte _080155E0
_080155E0: @ jump table
	.4byte _080155F4 @ case 0
	.4byte _080155FC @ case 1
	.4byte _08015624 @ case 2
	.4byte _0801568C @ case 3
	.4byte _080156EC @ case 4
_080155F4:
	ldr r1, [r4]
	movs r0, #1
	strb r0, [r1, #1]
	b _0801570A
_080155FC:
	bl sub_08005934
	ldr r0, _0801561C @ =0x08081FC4
	ldr r4, _08015620 @ =0x030013BC
	ldr r2, [r4]
	ldr r1, [r2, #0x64]
	ldr r2, [r2, #0x68]
	bl sub_080004D4
	bl sub_08005A2C
	ldr r1, [r4]
	movs r0, #2
	strb r0, [r1, #1]
	b _0801570A
	.align 2, 0
_0801561C: .4byte 0x08081FC4
_08015620: .4byte 0x030013BC
_08015624:
	ldr r1, [r4]
	adds r0, r1, #0
	adds r0, #0x84
	ldr r2, [r0]
	ldr r0, _08015664 @ =0xF9FF0000
	adds r2, r2, r0
	lsls r2, r2, #0xb
	lsrs r2, r2, #0x10
	ldr r0, [r1, #0x64]
	str r0, [sp]
	ldr r0, [r1, #0x68]
	str r0, [sp, #4]
	add r0, sp, #8
	movs r1, #2
	movs r3, #7
	bl sub_0800A1C0
	add r0, sp, #8
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _08015668
	ldr r0, [r4]
	adds r0, #0x88
	movs r1, #0
	str r1, [r0]
	movs r0, #8
	bl sub_080154EC
	b _0801570A
	.align 2, 0
_08015664: .4byte 0xF9FF0000
_08015668:
	ldr r3, _08015688 @ =0x03004470
	add r0, sp, #8
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r0, #3
	ands r1, r0
	ldrb r2, [r3]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	ldr r1, [r4]
	movs r0, #3
	strb r0, [r1, #1]
	b _0801570A
	.align 2, 0
_08015688: .4byte 0x03004470
_0801568C:
	ldr r1, _080156D8 @ =0x080839CC
	ldr r4, _080156DC @ =0x03004470
	ldrb r0, [r4]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1c
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _080156E0 @ =0x05000200
	bl LoadPalette_08008308
	ldr r1, _080156E4 @ =0x080839EC
	ldrb r0, [r4]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1c
	adds r0, r0, r1
	ldr r0, [r0]
	add r1, sp, #0xc
	bl sub_08008380
	ldr r4, _080156E8 @ =0x030013BC
	ldr r1, [r4]
	adds r2, r1, #0
	adds r2, #0x88
	str r0, [r2]
	adds r1, #0x8c
	ldr r0, [sp, #0xc]
	str r0, [r1]
	movs r0, #1
	bl ProcSleep_08002B98
	bl sub_08016254
	bl sub_080161A4
	ldr r1, [r4]
	movs r0, #4
	strb r0, [r1, #1]
	b _0801570A
	.align 2, 0
_080156D8: .4byte 0x080839CC
_080156DC: .4byte 0x03004470
_080156E0: .4byte 0x05000200
_080156E4: .4byte 0x080839EC
_080156E8: .4byte 0x030013BC
_080156EC:
	ldr r0, [r4]
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #0
	bne _0801570A
	ldr r0, _08015714 @ =0x03004470
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	movs r0, #8
	bl sub_08005BE0
	movs r0, #2
	bl sub_080154EC
_0801570A:
	add sp, #0x14
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08015714: .4byte 0x03004470

	thumb_func_start sub_08015718
sub_08015718: @ 0x08015718
	push {r4, lr}
	ldr r1, _08015730 @ =0x030013BC
	ldr r0, [r1]
	ldrb r0, [r0, #1]
	adds r4, r1, #0
	cmp r0, #4
	bhi _080157FA
	lsls r0, r0, #2
	ldr r1, _08015734 @ =_08015738
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08015730: .4byte 0x030013BC
_08015734: .4byte _08015738
_08015738: @ jump table
	.4byte _0801574C @ case 0
	.4byte _08015752 @ case 1
	.4byte _080157B8 @ case 2
	.4byte _08015794 @ case 3
	.4byte _080157AC @ case 4
_0801574C:
	ldr r1, [r4]
	movs r0, #1
	b _080157F8
_08015752:
	bl sub_08005934
	ldr r0, _08015780 @ =0x08081FD8
	ldr r4, _08015784 @ =0x030013BC
	ldr r2, [r4]
	ldr r1, [r2, #0x64]
	ldr r2, [r2, #0x68]
	bl sub_080004D4
	bl sub_080064F8
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801578C
	ldr r0, _08015788 @ =0x08082030
	ldr r2, [r4]
	ldr r1, [r2, #0x64]
	ldr r2, [r2, #0x68]
	bl sub_080004D4
	ldr r1, [r4]
	movs r0, #4
	b _080157F8
	.align 2, 0
_08015780: .4byte 0x08081FD8
_08015784: .4byte 0x030013BC
_08015788: .4byte 0x08082030
_0801578C:
	ldr r0, _08015790 @ =0x08081FF0
	b _080157EA
	.align 2, 0
_08015790: .4byte 0x08081FF0
_08015794:
	ldr r0, _080157A8 @ =0x08082480
	ldr r2, [r4]
	ldr r1, [r2, #0x64]
	ldr r2, [r2, #0x68]
	bl sub_080004D4
	ldr r1, [r4]
	movs r0, #2
	b _080157F8
	.align 2, 0
_080157A8: .4byte 0x08082480
_080157AC:
	bl sub_08005A2C
	movs r0, #3
	bl sub_080154EC
	b _080157FA
_080157B8:
	ldr r0, _080157E0 @ =0x08082004
	ldr r2, [r4]
	ldr r1, [r2, #0x64]
	ldr r2, [r2, #0x68]
	bl sub_080004D4
	bl sub_080064F8
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080157E8
	ldr r0, _080157E4 @ =0x0808201C
	ldr r2, [r4]
	ldr r1, [r2, #0x64]
	ldr r2, [r2, #0x68]
	bl sub_080004D4
	ldr r1, [r4]
	movs r0, #4
	b _080157F8
	.align 2, 0
_080157E0: .4byte 0x08082004
_080157E4: .4byte 0x0808201C
_080157E8:
	ldr r0, _08015800 @ =0x08082010
_080157EA:
	ldr r2, [r4]
	ldr r1, [r2, #0x64]
	ldr r2, [r2, #0x68]
	bl sub_080004D4
	ldr r1, [r4]
	movs r0, #3
_080157F8:
	strb r0, [r1, #1]
_080157FA:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08015800: .4byte 0x08082010

	thumb_func_start sub_08015804
sub_08015804: @ 0x08015804
	push {lr}
	ldr r0, _08015818 @ =0x03004470
	ldrb r0, [r0, #2]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bge _0801581C
	movs r0, #2
	bl sub_080154EC
	b _08015822
	.align 2, 0
_08015818: .4byte 0x03004470
_0801581C:
	movs r0, #4
	bl sub_080154EC
_08015822:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08015828
sub_08015828: @ 0x08015828
	push {lr}
	ldr r0, _08015840 @ =0x030013BC
	ldr r1, [r0]
	ldrb r0, [r1, #1]
	cmp r0, #1
	beq _08015850
	cmp r0, #1
	bgt _08015844
	cmp r0, #0
	beq _0801584A
	b _08015868
	.align 2, 0
_08015840: .4byte 0x030013BC
_08015844:
	cmp r0, #2
	beq _08015856
	b _08015868
_0801584A:
	movs r0, #1
	strb r0, [r1, #1]
	b _08015868
_08015850:
	movs r0, #2
	strb r0, [r1, #1]
	b _08015868
_08015856:
	ldr r1, _0801586C @ =0x03004470
	movs r0, #5
	strb r0, [r1, #4]
	movs r0, #0xf
	bl ChangeGameState_08008790
	movs r0, #8
	bl sub_080154EC
_08015868:
	pop {r0}
	bx r0
	.align 2, 0
_0801586C: .4byte 0x03004470

	thumb_func_start sub_08015870
sub_08015870: @ 0x08015870
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #5
	bhi _08015884
	ldr r0, _08015880 @ =0x080820B8
	b _080158F6
	.align 2, 0
_08015880: .4byte 0x080820B8
_08015884:
	cmp r0, #0xf
	bhi _08015890
	ldr r0, _0801588C @ =0x080820C8
	b _080158F6
	.align 2, 0
_0801588C: .4byte 0x080820C8
_08015890:
	cmp r0, #0x1e
	bhi _0801589C
	ldr r0, _08015898 @ =0x080820D8
	b _080158F6
	.align 2, 0
_08015898: .4byte 0x080820D8
_0801589C:
	cmp r0, #0x28
	bhi _080158A8
	ldr r0, _080158A4 @ =0x080820E4
	b _080158F6
	.align 2, 0
_080158A4: .4byte 0x080820E4
_080158A8:
	cmp r0, #0x32
	bhi _080158B4
	ldr r0, _080158B0 @ =0x080820F0
	b _080158F6
	.align 2, 0
_080158B0: .4byte 0x080820F0
_080158B4:
	cmp r0, #0x3c
	bhi _080158C0
	ldr r0, _080158BC @ =0x080820FC
	b _080158F6
	.align 2, 0
_080158BC: .4byte 0x080820FC
_080158C0:
	cmp r0, #0x46
	bhi _080158CC
	ldr r0, _080158C8 @ =0x08082108
	b _080158F6
	.align 2, 0
_080158C8: .4byte 0x08082108
_080158CC:
	cmp r0, #0x4c
	bls _080158E0
	cmp r0, #0x4d
	bne _080158DC
	ldr r0, _080158D8 @ =0x08082120
	b _080158F6
	.align 2, 0
_080158D8: .4byte 0x08082120
_080158DC:
	cmp r0, #0x50
	bhi _080158E8
_080158E0:
	ldr r0, _080158E4 @ =0x08082114
	b _080158F6
	.align 2, 0
_080158E4: .4byte 0x08082114
_080158E8:
	cmp r0, #0x5a
	bls _080158F4
	ldr r0, _080158F0 @ =0x08082138
	b _080158F6
	.align 2, 0
_080158F0: .4byte 0x08082138
_080158F4:
	ldr r0, _080158FC @ =0x0808212C
_080158F6:
	pop {r1}
	bx r1
	.align 2, 0
_080158FC: .4byte 0x0808212C

	thumb_func_start sub_08015900
sub_08015900: @ 0x08015900
	push {r4, r5, lr}
	ldr r5, _08015918 @ =0x030013BC
	ldr r1, [r5]
	ldrb r0, [r1, #1]
	cmp r0, #1
	beq _0801594E
	cmp r0, #1
	bgt _0801591C
	cmp r0, #0
	beq _08015926
	b _080159E8
	.align 2, 0
_08015918: .4byte 0x030013BC
_0801591C:
	cmp r0, #2
	beq _080159A4
	cmp r0, #3
	beq _080159DC
	b _080159E8
_08015926:
	ldr r2, _08015944 @ =0x03004470
	ldrh r0, [r2]
	lsls r0, r0, #0x17
	lsrs r0, r0, #0x1c
	cmp r0, #6
	bgt _0801593C
	ldrb r0, [r2]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1d
	cmp r0, #7
	bne _08015948
_0801593C:
	movs r0, #7
	bl sub_080154EC
	b _080159E8
	.align 2, 0
_08015944: .4byte 0x03004470
_08015948:
	movs r0, #1
	strb r0, [r1, #1]
	b _080159E8
_0801594E:
	bl sub_08005934
	ldr r1, _08015998 @ =0x080808D4
	ldr r4, _0801599C @ =0x03004470
	ldr r0, [r4]
	lsls r0, r0, #0xf
	lsrs r0, r0, #0x1d
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r2, [r5]
	ldr r1, [r2, #0x64]
	ldr r2, [r2, #0x68]
	bl sub_080004D4
	ldr r2, [r4]
	lsls r0, r2, #0xf
	lsrs r0, r0, #0x1d
	cmp r0, #3
	bgt _08015986
	adds r0, #1
	movs r1, #7
	ands r0, r1
	lsls r0, r0, #0xe
	ldr r1, _080159A0 @ =0xFFFE3FFF
	ands r1, r2
	orrs r1, r0
	str r1, [r4]
_08015986:
	bl sub_08005A2C
	bl sub_08016AB4
	ldr r1, [r5]
	movs r0, #2
	strb r0, [r1, #1]
	b _080159E8
	.align 2, 0
_08015998: .4byte 0x080808D4
_0801599C: .4byte 0x03004470
_080159A0: .4byte 0xFFFE3FFF
_080159A4:
	adds r0, r1, #0
	adds r0, #0x6f
	ldrb r0, [r0]
	cmp r0, #0
	bne _080159E8
	movs r0, #0x3c
	bl ProcSleep_08002B98
	bl sub_08005934
	ldr r0, _080159D8 @ =0x03004470
	ldrb r0, [r0, #5]
	bl sub_08015870
	ldr r2, [r5]
	ldr r1, [r2, #0x64]
	ldr r2, [r2, #0x68]
	bl sub_080004D4
	bl sub_08005A2C
	ldr r1, [r5]
	movs r0, #3
	strb r0, [r1, #1]
	b _080159E8
	.align 2, 0
_080159D8: .4byte 0x03004470
_080159DC:
	ldr r1, _080159F0 @ =0x03004470
	movs r0, #6
	strb r0, [r1, #4]
	movs r0, #8
	bl sub_080154EC
_080159E8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080159F0: .4byte 0x03004470

	thumb_func_start sub_080159F4
sub_080159F4: @ 0x080159F4
	push {r4, r5, lr}
	ldr r5, _08015A0C @ =0x030013BC
	ldr r0, [r5]
	ldrb r0, [r0, #1]
	cmp r0, #1
	beq _08015A84
	cmp r0, #1
	bgt _08015A10
	cmp r0, #0
	beq _08015A1C
	b _08015B5A
	.align 2, 0
_08015A0C: .4byte 0x030013BC
_08015A10:
	cmp r0, #2
	beq _08015AD0
	cmp r0, #3
	bne _08015A1A
	b _08015B54
_08015A1A:
	b _08015B5A
_08015A1C:
	ldr r4, _08015A4C @ =0x03004470
	ldrb r0, [r4, #1]
	movs r1, #3
	rsbs r1, r1, #0
	ands r1, r0
	strb r1, [r4, #1]
	bl sub_08001F2C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08015A3A
	ldrb r0, [r4, #1]
	movs r1, #2
	orrs r0, r1
	strb r0, [r4, #1]
_08015A3A:
	ldrb r0, [r4, #1]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bge _08015A50
	movs r0, #0x6b
	movs r1, #0x44
	bl sub_080172E8
	b _08015A58
	.align 2, 0
_08015A4C: .4byte 0x03004470
_08015A50:
	movs r0, #0x6c
	movs r1, #0x44
	bl sub_080172E8
_08015A58:
	ldr r0, _08015A6C @ =0x03004470
	ldrb r0, [r0, #1]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _08015A74
	ldr r0, _08015A70 @ =0x030013BC
	ldr r1, [r0]
	movs r0, #2
	strb r0, [r1, #1]
	b _08015B5A
	.align 2, 0
_08015A6C: .4byte 0x03004470
_08015A70: .4byte 0x030013BC
_08015A74:
	ldr r0, _08015A80 @ =0x030013BC
	ldr r1, [r0]
	movs r0, #1
	strb r0, [r1, #1]
	b _08015B5A
	.align 2, 0
_08015A80: .4byte 0x030013BC
_08015A84:
	bl sub_08005934
	ldr r2, _08015AC8 @ =0x080808F4
	ldr r4, _08015ACC @ =0x03004470
	ldrb r1, [r4, #1]
	movs r0, #0xc
	ands r0, r1
	adds r0, r0, r2
	ldr r0, [r0]
	ldr r2, [r5]
	ldr r1, [r2, #0x64]
	ldr r2, [r2, #0x68]
	bl sub_080004D4
	bl sub_08005A2C
	ldrb r2, [r4, #1]
	lsls r0, r2, #0x1c
	lsrs r0, r0, #0x1e
	cmp r0, #1
	bgt _08015AC0
	adds r0, #1
	movs r1, #3
	ands r0, r1
	lsls r0, r0, #2
	movs r1, #0xd
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r4, #1]
_08015AC0:
	ldr r1, [r5]
	movs r0, #3
	strb r0, [r1, #1]
	b _08015B5A
	.align 2, 0
_08015AC8: .4byte 0x080808F4
_08015ACC: .4byte 0x03004470
_08015AD0:
	bl sub_08005934
	ldr r1, _08015B2C @ =0x080808E8
	ldr r4, _08015B30 @ =0x03004470
	ldrb r0, [r4, #1]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r2, [r5]
	ldr r1, [r2, #0x64]
	ldr r2, [r2, #0x68]
	bl sub_080004D4
	bl sub_080064F8
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _08015AFE
	cmp r0, #1
	beq _08015B34
_08015AFE:
	ldrb r2, [r4, #1]
	lsls r0, r2, #0x1a
	lsrs r0, r0, #0x1e
	cmp r0, #1
	bgt _08015B1A
	adds r0, #1
	movs r1, #3
	ands r0, r1
	lsls r0, r0, #4
	movs r1, #0x31
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r4, #1]
_08015B1A:
	ldrb r1, [r4]
	movs r0, #0x1d
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4]
	ldr r1, [r5]
	movs r0, #3
	strb r0, [r1, #1]
	b _08015B48
	.align 2, 0
_08015B2C: .4byte 0x080808E8
_08015B30: .4byte 0x03004470
_08015B34:
	ldr r0, _08015B50 @ =0x080821AC
	ldr r2, [r5]
	ldr r1, [r2, #0x64]
	ldr r2, [r2, #0x68]
	bl sub_080004D4
	movs r0, #8
	strb r0, [r4, #4]
	bl sub_080154EC
_08015B48:
	bl sub_08005A2C
	b _08015B5A
	.align 2, 0
_08015B50: .4byte 0x080821AC
_08015B54:
	movs r0, #4
	bl sub_080154EC
_08015B5A:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08015B60
sub_08015B60: @ 0x08015B60
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r4, _08015BE8 @ =0x08080834
	ldr r5, _08015BEC @ =0x03004470
	ldrh r0, [r5]
	lsls r0, r0, #0x17
	lsrs r0, r0, #0x1c
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r0, r4, #0
	adds r0, #0x12
	adds r0, r1, r0
	adds r1, r1, r4
	ldrh r0, [r0]
	ldrh r1, [r1]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_0800B828
	ldr r6, _08015BF0 @ =0x030013BC
	ldr r3, [r6]
	ldrh r2, [r5]
	lsls r2, r2, #0x17
	lsrs r2, r2, #0x1c
	lsls r1, r2, #2
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r4
	ldrb r1, [r1]
	adds r0, r0, r1
	adds r3, #0xa0
	strb r0, [r3]
	movs r7, #0
	adds r0, r4, #2
	mov ip, r0
	mov r8, r6
_08015BAE:
	mov r1, r8
	ldr r3, [r1]
	adds r2, r3, #0
	adds r2, #0xa0
	ldrh r1, [r5]
	lsls r1, r1, #0x17
	lsrs r1, r1, #0x1c
	lsls r0, r1, #2
	adds r0, r0, r1
	adds r0, r0, r7
	lsls r1, r0, #2
	adds r0, r1, r4
	ldrb r2, [r2]
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	movs r6, #0
	ldrsh r0, [r0, r6]
	cmp r2, r0
	blt _08015BF4
	mov r6, ip
	adds r0, r1, r6
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r2, r0
	bgt _08015BF4
	adds r0, r3, #0
	adds r0, #0xa1
	strb r7, [r0]
	b _08015BFA
	.align 2, 0
_08015BE8: .4byte 0x08080834
_08015BEC: .4byte 0x03004470
_08015BF0: .4byte 0x030013BC
_08015BF4:
	adds r7, #1
	cmp r7, #4
	ble _08015BAE
_08015BFA:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08015C04
sub_08015C04: @ 0x08015C04
	push {lr}
	ldr r2, _08015C2C @ =0x08080808
	ldr r0, _08015C30 @ =0x03004470
	ldrh r1, [r0]
	lsls r1, r1, #0x17
	lsrs r1, r1, #0x1c
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r0, _08015C34 @ =0x030013BC
	ldr r0, [r0]
	adds r0, #0xa0
	movs r2, #0
	ldrsb r2, [r0, r2]
	ldr r0, [r1]
	muls r0, r2, r0
	movs r1, #0x64
	bl Div
	pop {r1}
	bx r1
	.align 2, 0
_08015C2C: .4byte 0x08080808
_08015C30: .4byte 0x03004470
_08015C34: .4byte 0x030013BC

	thumb_func_start sub_08015C38
sub_08015C38: @ 0x08015C38
	push {r4, r5, r6, lr}
	ldr r1, _08015C54 @ =0x030013BC
	ldr r0, [r1]
	ldrb r0, [r0, #1]
	adds r6, r1, #0
	cmp r0, #7
	bls _08015C48
	b _08015DDA
_08015C48:
	lsls r0, r0, #2
	ldr r1, _08015C58 @ =_08015C5C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08015C54: .4byte 0x030013BC
_08015C58: .4byte _08015C5C
_08015C5C: @ jump table
	.4byte _08015C7C @ case 0
	.4byte _08015C94 @ case 1
	.4byte _08015CA8 @ case 2
	.4byte _08015D2C @ case 3
	.4byte _08015D4A @ case 4
	.4byte _08015D80 @ case 5
	.4byte _08015D9C @ case 6
	.4byte _08015DC4 @ case 7
_08015C7C:
	bl sub_08015B60
	bl sub_080161A4
	ldr r0, _08015C90 @ =0x030013BC
	ldr r1, [r0]
	movs r0, #1
	strb r0, [r1, #1]
	b _08015DDA
	.align 2, 0
_08015C90: .4byte 0x030013BC
_08015C94:
	ldr r1, [r6]
	adds r0, r1, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #0
	beq _08015CA2
	b _08015DDA
_08015CA2:
	movs r0, #2
	strb r0, [r1, #1]
	b _08015DDA
_08015CA8:
	bl sub_08005934
	ldr r1, _08015D18 @ =0x08080900
	ldr r5, _08015D1C @ =0x03004470
	ldrh r0, [r5]
	lsls r0, r0, #0x17
	lsrs r0, r0, #0x1c
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r4, _08015D20 @ =0x030013BC
	ldr r2, [r4]
	ldr r1, [r2, #0x64]
	ldr r2, [r2, #0x68]
	bl sub_080004D4
	ldr r1, _08015D24 @ =0x08080998
	ldrh r0, [r5]
	lsls r0, r0, #0x17
	lsrs r0, r0, #0x1c
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r2, [r4]
	adds r1, r2, #0
	adds r1, #0xa1
	ldrb r1, [r1]
	ldr r0, [r0]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	ldr r1, [r2, #0x64]
	ldr r2, [r2, #0x68]
	bl sub_080004D4
	bl sub_08005A2C
	bl sub_08015C04
	adds r3, r0, #0
	ldr r1, [r4]
	adds r1, #0xa4
	ldr r2, _08015D28 @ =0x08080808
	ldrh r0, [r5]
	lsls r0, r0, #0x17
	lsrs r0, r0, #0x1c
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r3
	str r0, [r1]
	bl sub_08016504
	ldr r1, [r4]
	movs r0, #3
	strb r0, [r1, #1]
	b _08015DDA
	.align 2, 0
_08015D18: .4byte 0x08080900
_08015D1C: .4byte 0x03004470
_08015D20: .4byte 0x030013BC
_08015D24: .4byte 0x08080998
_08015D28: .4byte 0x08080808
_08015D2C:
	ldr r1, [r6]
	adds r0, r1, #0
	adds r0, #0x6e
	ldrb r0, [r0]
	cmp r0, #0
	bne _08015DDA
	adds r0, r1, #0
	adds r0, #0xa4
	ldr r0, [r0]
	bl sub_08016530
	ldr r1, [r6]
	movs r0, #4
	strb r0, [r1, #1]
	b _08015DDA
_08015D4A:
	ldr r1, [r6]
	adds r0, r1, #0
	adds r0, #0x6e
	ldrb r0, [r0]
	cmp r0, #0
	bne _08015DDA
	ldr r4, _08015D7C @ =0x03004400
	ldr r5, [r4, #0x10]
	adds r0, r1, #0
	adds r0, #0xa4
	ldr r0, [r0]
	adds r0, r5, r0
	bl sub_0800B6DC
	ldr r1, [r4, #0x10]
	adds r0, r5, #0
	bl sub_08015E80
	bl sub_080161C0
	ldr r1, [r6]
	movs r0, #5
	strb r0, [r1, #1]
	b _08015DDA
	.align 2, 0
_08015D7C: .4byte 0x03004400
_08015D80:
	ldr r1, [r6]
	adds r0, r1, #0
	adds r0, #0x6c
	ldrb r0, [r0]
	cmp r0, #0
	bne _08015DDA
	adds r0, r1, #0
	adds r0, #0x6d
	ldrb r0, [r0]
	cmp r0, #0
	bne _08015DDA
	movs r0, #6
	strb r0, [r1, #1]
	b _08015DDA
_08015D9C:
	bl sub_08005934
	ldr r0, _08015DBC @ =0x0808246C
	ldr r4, _08015DC0 @ =0x030013BC
	ldr r2, [r4]
	ldr r1, [r2, #0x64]
	ldr r2, [r2, #0x68]
	bl sub_080004D4
	bl sub_08005A2C
	ldr r1, [r4]
	movs r0, #7
	strb r0, [r1, #1]
	b _08015DDA
	.align 2, 0
_08015DBC: .4byte 0x0808246C
_08015DC0: .4byte 0x030013BC
_08015DC4:
	movs r0, #0x23
	bl ChangeGameState_08008790
	movs r0, #0x2b
	bl sub_080072F4
	ldr r1, _08015DE0 @ =0x03004470
	movs r0, #8
	strb r0, [r1, #4]
	bl sub_080154EC
_08015DDA:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08015DE0: .4byte 0x03004470

	thumb_func_start sub_08015DE4
sub_08015DE4: @ 0x08015DE4
	push {r4, lr}
	ldr r4, _08015DF8 @ =0x030013BC
	ldr r1, [r4]
	ldrb r0, [r1, #1]
	cmp r0, #0
	beq _08015DFC
	cmp r0, #1
	beq _08015E20
	b _08015E22
	.align 2, 0
_08015DF8: .4byte 0x030013BC
_08015DFC:
	ldr r0, _08015E18 @ =0x030056F0
	movs r1, #5
	bl m4aMPlayFadeOut
	ldr r0, _08015E1C @ =0x03005730
	movs r1, #5
	bl m4aMPlayFadeOut
	bl sub_0800B700
	ldr r1, [r4]
	movs r0, #1
	strb r0, [r1, #1]
	b _08015E22
	.align 2, 0
_08015E18: .4byte 0x030056F0
_08015E1C: .4byte 0x03005730
_08015E20:
	strb r0, [r1, #6]
_08015E22:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08015E28
sub_08015E28: @ 0x08015E28
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _08015E5C @ =0x030013BC
	ldr r0, [r5]
	movs r1, #8
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	adds r6, r0, #0
	ldr r0, [r5]
	movs r1, #8
	ldrsh r0, [r0, r1]
	ldr r1, _08015E60 @ =0x080809DC
	lsls r4, r4, #2
	adds r4, r4, r1
	ldr r1, [r4]
	bl sub_08007B84
	movs r0, #0
	strb r0, [r6]
	strh r0, [r6, #2]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08015E5C: .4byte 0x030013BC
_08015E60: .4byte 0x080809DC

	thumb_func_start sub_08015E64
sub_08015E64: @ 0x08015E64
	push {lr}
	ldr r0, _08015E7C @ =0x030013BC
	ldr r0, [r0]
	adds r0, #0x6c
	movs r1, #0
	strb r1, [r0]
	movs r0, #0
	bl sub_08015E28
	pop {r0}
	bx r0
	.align 2, 0
_08015E7C: .4byte 0x030013BC

	thumb_func_start sub_08015E80
sub_08015E80: @ 0x08015E80
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r0, _08015EA0 @ =0x030013BC
	ldr r0, [r0]
	movs r1, #8
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	adds r2, r0, #0
	cmp r5, r4
	bne _08015EA4
	bl sub_08015E64
	b _08015ED2
	.align 2, 0
_08015EA0: .4byte 0x030013BC
_08015EA4:
	str r5, [r2, #4]
	str r4, [r2, #8]
	subs r0, r5, r4
	adds r1, r0, #0
	cmp r0, #0
	bge _08015EB2
	rsbs r1, r0, #0
_08015EB2:
	cmp r1, #0x77
	bhi _08015EBE
	cmp r0, #0
	bge _08015EC0
	rsbs r0, r0, #0
	b _08015EC0
_08015EBE:
	movs r0, #0x78
_08015EC0:
	strh r0, [r2, #0xc]
	ldr r0, _08015ED8 @ =0x030013BC
	ldr r0, [r0]
	adds r0, #0x6c
	movs r1, #1
	strb r1, [r0]
	movs r0, #1
	bl sub_08015E28
_08015ED2:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08015ED8: .4byte 0x030013BC

	thumb_func_start sub_08015EDC
sub_08015EDC: @ 0x08015EDC
	push {r4, r5, lr}
	ldr r4, _08015F04 @ =0x030013BC
	ldr r0, [r4]
	ldr r0, [r0, #0x18]
	bl sub_08009A00
	movs r5, #0
_08015EEA:
	ldr r0, [r4]
	lsls r1, r5, #2
	adds r0, #0x1c
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_08009A00
	adds r5, #1
	cmp r5, #5
	ble _08015EEA
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08015F04: .4byte 0x030013BC

	thumb_func_start sub_08015F08
sub_08015F08: @ 0x08015F08
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	bl sub_08007BD4
	movs r0, #2
	movs r1, #0x80
	bl sub_080099E0
	adds r6, r0, #0
	movs r1, #1
	bl sub_08009A34
	adds r0, r6, #0
	movs r1, #0x50
	movs r2, #0
	bl sub_08009A70
	ldr r4, _08015FEC @ =0x030013BC
	ldr r0, [r4]
	adds r0, #0x80
	ldr r1, [r0]
	adds r0, r6, #0
	bl sub_08009A78
	adds r0, r6, #0
	movs r1, #6
	bl sub_08009AB4
	ldr r1, _08015FF0 @ =0x0809C860
	ldr r2, _08015FF4 @ =0x0809C830
	adds r0, r6, #0
	movs r3, #0xa
	bl sub_08009ACC
	adds r0, r6, #0
	movs r1, #0
	bl sub_08009B40
	ldr r0, [r4]
	str r6, [r0, #0x18]
	movs r0, #0
	mov sl, r0
	ldr r0, _08015FF8 @ =0x03004400
	ldr r0, [r0, #0x10]
	mov r8, r0
	movs r7, #0
	movs r2, #0
	mov sb, r2
_08015F6E:
	cmp r7, #5
	bne _08015F76
	movs r0, #1
	mov sl, r0
_08015F76:
	ldr r0, _08015FFC @ =0x08083A18
	add r0, sb
	ldr r4, [r0]
	mov r0, r8
	adds r1, r4, #0
	bl __udivsi3
	adds r5, r0, #0
	mov r0, r8
	adds r1, r4, #0
	bl __umodsi3
	mov r8, r0
	movs r0, #2
	movs r1, #0x80
	bl sub_080099E0
	adds r6, r0, #0
	ldr r1, _08016000 @ =0x08083A0C
	lsls r0, r7, #1
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r0, r6, #0
	movs r2, #4
	bl sub_08009A70
	ldr r0, _08015FEC @ =0x030013BC
	ldr r0, [r0]
	adds r0, #0x80
	ldr r1, [r0]
	adds r0, r6, #0
	bl sub_08009A78
	adds r0, r6, #0
	movs r1, #6
	bl sub_08009AB4
	lsls r3, r5, #0x18
	lsrs r3, r3, #0x18
	adds r0, r6, #0
	ldr r1, _08015FF0 @ =0x0809C860
	ldr r2, _08015FF4 @ =0x0809C830
	bl sub_08009ACC
	adds r0, r6, #0
	movs r1, #0
	bl sub_08009B40
	cmp r5, #0
	bne _08016004
	mov r0, sl
	cmp r0, #0
	bne _08016004
	adds r0, r6, #0
	movs r1, #0
	bl sub_08009A34
	b _08016010
	.align 2, 0
_08015FEC: .4byte 0x030013BC
_08015FF0: .4byte 0x0809C860
_08015FF4: .4byte 0x0809C830
_08015FF8: .4byte 0x03004400
_08015FFC: .4byte 0x08083A18
_08016000: .4byte 0x08083A0C
_08016004:
	movs r2, #1
	mov sl, r2
	adds r0, r6, #0
	movs r1, #1
	bl sub_08009A34
_08016010:
	ldr r0, _08016044 @ =0x030013BC
	ldr r1, [r0]
	adds r0, r1, #0
	adds r0, #0x1c
	add r0, sb
	str r6, [r0]
	movs r0, #4
	add sb, r0
	adds r7, #1
	cmp r7, #5
	ble _08015F6E
	movs r2, #8
	ldrsh r0, [r1, r2]
	ldr r1, _08016048 @ =sub_08015EDC
	bl sub_08007BA0
	bl sub_08015E64
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08016044: .4byte 0x030013BC
_08016048: .4byte sub_08015EDC

	thumb_func_start sub_0801604C
sub_0801604C: @ 0x0801604C
	bx lr
	.align 2, 0

	thumb_func_start sub_08016050
sub_08016050: @ 0x08016050
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	bl sub_08007BD4
	adds r6, r0, #0
	ldrb r0, [r6]
	cmp r0, #1
	beq _08016080
	cmp r0, #1
	bgt _08016070
	cmp r0, #0
	beq _08016076
	b _0801613E
_08016070:
	cmp r0, #2
	beq _08016134
	b _0801613E
_08016076:
	movs r0, #0xe0
	bl m4aSongNumStart
	movs r0, #1
	strb r0, [r6]
_08016080:
	ldr r1, [r6, #8]
	ldr r4, [r6, #4]
	subs r1, r1, r4
	ldrh r0, [r6, #2]
	adds r0, #1
	strh r0, [r6, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	muls r0, r1, r0
	ldrh r1, [r6, #0xc]
	bl __udivsi3
	adds r4, r4, r0
	mov r8, r4
	movs r0, #0
	mov sl, r0
	mov sb, r0
	movs r7, #0
_080160A4:
	ldr r0, _080160F4 @ =0x08083A18
	adds r0, r7, r0
	ldr r4, [r0]
	mov r0, r8
	adds r1, r4, #0
	bl __udivsi3
	adds r5, r0, #0
	mov r0, r8
	adds r1, r4, #0
	bl __umodsi3
	mov r8, r0
	mov r1, sb
	cmp r1, #5
	bne _080160C8
	movs r0, #1
	mov sl, r0
_080160C8:
	ldr r4, _080160F8 @ =0x030013BC
	ldr r0, [r4]
	adds r0, #0x1c
	adds r0, r0, r7
	ldr r0, [r0]
	lsls r1, r5, #0x18
	lsrs r1, r1, #0x18
	bl sub_08009AFC
	cmp r5, #0
	bne _080160FC
	mov r1, sl
	cmp r1, #0
	bne _080160FC
	ldr r0, [r4]
	adds r0, #0x1c
	adds r0, r0, r7
	ldr r0, [r0]
	movs r1, #0
	bl sub_08009A34
	b _08016110
	.align 2, 0
_080160F4: .4byte 0x08083A18
_080160F8: .4byte 0x030013BC
_080160FC:
	ldr r0, _08016130 @ =0x030013BC
	ldr r0, [r0]
	adds r0, #0x1c
	adds r0, r0, r7
	ldr r0, [r0]
	movs r1, #1
	bl sub_08009A34
	movs r0, #1
	mov sl, r0
_08016110:
	adds r7, #4
	movs r1, #1
	add sb, r1
	mov r0, sb
	cmp r0, #5
	ble _080160A4
	ldrh r0, [r6, #2]
	ldrh r1, [r6, #0xc]
	cmp r0, r1
	blo _0801613E
	movs r0, #0
	strh r0, [r6, #2]
	movs r0, #2
	strb r0, [r6]
	b _0801613E
	.align 2, 0
_08016130: .4byte 0x030013BC
_08016134:
	movs r0, #0xe0
	bl m4aSongNumStop
	bl sub_08015E64
_0801613E:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0801614C
sub_0801614C: @ 0x0801614C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _08016180 @ =0x030013BC
	ldr r0, [r5]
	movs r1, #0xa
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	adds r6, r0, #0
	ldr r0, [r5]
	movs r1, #0xa
	ldrsh r0, [r0, r1]
	ldr r1, _08016184 @ =0x080809E4
	lsls r4, r4, #2
	adds r4, r4, r1
	ldr r1, [r4]
	bl sub_08007B84
	movs r0, #0
	strb r0, [r6]
	strh r0, [r6, #2]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08016180: .4byte 0x030013BC
_08016184: .4byte 0x080809E4

	thumb_func_start sub_08016188
sub_08016188: @ 0x08016188
	push {lr}
	ldr r0, _080161A0 @ =0x030013BC
	ldr r0, [r0]
	adds r0, #0x6d
	movs r1, #0
	strb r1, [r0]
	movs r0, #0
	bl sub_0801614C
	pop {r0}
	bx r0
	.align 2, 0
_080161A0: .4byte 0x030013BC

	thumb_func_start sub_080161A4
sub_080161A4: @ 0x080161A4
	push {lr}
	ldr r0, _080161BC @ =0x030013BC
	ldr r0, [r0]
	adds r0, #0x6d
	movs r1, #1
	strb r1, [r0]
	movs r0, #1
	bl sub_0801614C
	pop {r0}
	bx r0
	.align 2, 0
_080161BC: .4byte 0x030013BC

	thumb_func_start sub_080161C0
sub_080161C0: @ 0x080161C0
	push {lr}
	ldr r0, _080161D8 @ =0x030013BC
	ldr r0, [r0]
	adds r0, #0x6d
	movs r1, #1
	strb r1, [r0]
	movs r0, #2
	bl sub_0801614C
	pop {r0}
	bx r0
	.align 2, 0
_080161D8: .4byte 0x030013BC

	thumb_func_start sub_080161DC
sub_080161DC: @ 0x080161DC
	push {lr}
	ldr r0, _080161EC @ =0x030013BC
	ldr r0, [r0]
	ldr r0, [r0, #0x34]
	bl sub_08009A00
	pop {r0}
	bx r0
	.align 2, 0
_080161EC: .4byte 0x030013BC

	thumb_func_start sub_080161F0
sub_080161F0: @ 0x080161F0
	push {r4, lr}
	ldr r4, _08016244 @ =0x03004470
	ldrb r0, [r4, #4]
	cmp r0, #0
	beq _08016214
	bl sub_08016254
	ldrb r0, [r4, #4]
	cmp r0, #4
	bgt _08016214
	cmp r0, #3
	blt _08016214
	ldr r0, _08016248 @ =0x030013BC
	ldr r0, [r0]
	ldr r0, [r0, #0x34]
	movs r1, #1
	bl sub_08009A34
_08016214:
	ldr r0, _0801624C @ =0x080809E4
	ldr r0, [r0]
	movs r1, #0x40
	movs r2, #0
	bl sub_08007968
	ldr r4, _08016248 @ =0x030013BC
	ldr r1, [r4]
	strh r0, [r1, #0xa]
	movs r2, #0xa
	ldrsh r0, [r1, r2]
	bl sub_08007BBC
	ldr r0, [r4]
	movs r1, #0xa
	ldrsh r0, [r0, r1]
	ldr r1, _08016250 @ =sub_080161DC
	bl sub_08007BA0
	bl sub_08016188
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08016244: .4byte 0x03004470
_08016248: .4byte 0x030013BC
_0801624C: .4byte 0x080809E4
_08016250: .4byte sub_080161DC

	thumb_func_start sub_08016254
sub_08016254: @ 0x08016254
	push {r4, r5, lr}
	movs r0, #2
	movs r1, #0x80
	bl sub_080099E0
	adds r4, r0, #0
	movs r1, #0
	bl sub_08009A34
	adds r0, r4, #0
	movs r1, #0x28
	movs r2, #0x70
	bl sub_08009A70
	ldr r1, _080162C0 @ =0x06010000
	adds r0, r4, #0
	bl sub_08009A78
	ldr r5, _080162C4 @ =0x030013BC
	ldr r0, [r5]
	adds r0, #0x8c
	ldr r1, [r0]
	adds r0, r4, #0
	movs r2, #0
	bl sub_08009BBC
	adds r0, r4, #0
	movs r1, #0
	bl sub_08009AB4
	ldr r1, _080162C8 @ =0x080839DC
	ldr r0, _080162CC @ =0x03004470
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1c
	adds r1, r0, r1
	ldr r1, [r1]
	ldr r2, _080162D0 @ =0x080839FC
	adds r0, r0, r2
	ldr r2, [r0]
	adds r0, r4, #0
	movs r3, #1
	bl sub_08009ACC
	adds r0, r4, #0
	movs r1, #0xff
	bl sub_08009B40
	ldr r0, [r5]
	str r4, [r0, #0x34]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080162C0: .4byte 0x06010000
_080162C4: .4byte 0x030013BC
_080162C8: .4byte 0x080839DC
_080162CC: .4byte 0x03004470
_080162D0: .4byte 0x080839FC

	thumb_func_start sub_080162D4
sub_080162D4: @ 0x080162D4
	bx lr
	.align 2, 0

	thumb_func_start sub_080162D8
sub_080162D8: @ 0x080162D8
	push {r4, r5, r6, lr}
	bl sub_08007BD4
	adds r6, r0, #0
	ldr r0, _080162F8 @ =0x030013BC
	ldr r0, [r0]
	ldr r5, [r0, #0x34]
	ldrb r0, [r6]
	cmp r0, #1
	beq _0801632A
	cmp r0, #1
	bgt _080162FC
	cmp r0, #0
	beq _08016306
	b _08016378
	.align 2, 0
_080162F8: .4byte 0x030013BC
_080162FC:
	cmp r0, #2
	beq _0801635E
	cmp r0, #3
	beq _08016374
	b _08016378
_08016306:
	adds r0, r5, #0
	movs r1, #1
	bl sub_08009A34
	movs r1, #0xc
	rsbs r1, r1, #0
	movs r0, #8
	ldrsh r2, [r5, r0]
	adds r0, r5, #0
	bl sub_08009A70
	adds r0, r5, #0
	movs r1, #3
	bl sub_08009AFC
	movs r0, #1
	strb r0, [r6]
	b _08016378
_0801632A:
	movs r0, #6
	ldrsh r4, [r5, r0]
	adds r4, #1
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	movs r0, #8
	ldrsh r2, [r5, r0]
	adds r0, r5, #0
	bl sub_08009A70
	cmp r4, #0x28
	bne _08016378
	adds r0, r5, #0
	movs r1, #5
	bl sub_08009AFC
	adds r0, r5, #0
	movs r1, #0
	bl sub_08009B40
	movs r0, #0x3c
	bl sub_08007AC0
	movs r0, #2
	strb r0, [r6]
	b _08016378
_0801635E:
	adds r0, r5, #0
	movs r1, #1
	bl sub_08009AFC
	adds r0, r5, #0
	movs r1, #0xff
	bl sub_08009B40
	movs r0, #3
	strb r0, [r6]
	b _08016378
_08016374:
	bl sub_08016188
_08016378:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08016380
sub_08016380: @ 0x08016380
	push {r4, r5, lr}
	bl sub_08007BD4
	adds r5, r0, #0
	ldr r0, _080163A0 @ =0x030013BC
	ldr r0, [r0]
	ldr r4, [r0, #0x34]
	ldrb r0, [r5]
	cmp r0, #4
	bhi _08016414
	lsls r0, r0, #2
	ldr r1, _080163A4 @ =_080163A8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080163A0: .4byte 0x030013BC
_080163A4: .4byte _080163A8
_080163A8: @ jump table
	.4byte _080163BC @ case 0
	.4byte _080163D2 @ case 1
	.4byte _080163E6 @ case 2
	.4byte _080163FC @ case 3
	.4byte _08016410 @ case 4
_080163BC:
	adds r0, r4, #0
	movs r1, #7
	bl sub_08009AFC
	adds r0, r4, #0
	movs r1, #0
	bl sub_08009B40
	movs r0, #1
	strb r0, [r5]
	b _08016414
_080163D2:
	ldrb r0, [r4, #1]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _08016414
	movs r0, #0x3c
	bl sub_08007AC0
	movs r0, #2
	strb r0, [r5]
	b _08016414
_080163E6:
	adds r0, r4, #0
	movs r1, #1
	bl sub_08009AFC
	adds r0, r4, #0
	movs r1, #0xff
	bl sub_08009B40
	movs r0, #3
	strb r0, [r5]
	b _08016414
_080163FC:
	ldrb r0, [r4, #1]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _08016414
	movs r0, #0xf
	bl sub_08007AC0
	movs r0, #4
	strb r0, [r5]
	b _08016414
_08016410:
	bl sub_08016188
_08016414:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0801641C
sub_0801641C: @ 0x0801641C
	push {lr}
	ldr r0, _0801642C @ =0x030013BC
	ldr r0, [r0]
	ldr r0, [r0, #0x38]
	bl sub_08009A00
	pop {r0}
	bx r0
	.align 2, 0
_0801642C: .4byte 0x030013BC

	thumb_func_start sub_08016430
sub_08016430: @ 0x08016430
	bx lr
	.align 2, 0

	thumb_func_start sub_08016434
sub_08016434: @ 0x08016434
	push {r4, r5, lr}
	movs r0, #2
	movs r1, #0xff
	bl sub_080099E0
	adds r4, r0, #0
	movs r1, #1
	bl sub_08009A34
	adds r0, r4, #0
	movs r1, #0x78
	movs r2, #0x50
	bl sub_08009A70
	ldr r5, _08016498 @ =0x030013BC
	ldr r0, [r5]
	ldr r1, [r0, #0x74]
	adds r0, r4, #0
	bl sub_08009A78
	adds r0, r4, #0
	movs r1, #3
	bl sub_08009AB4
	ldr r1, _0801649C @ =0x080ECFA4
	ldr r2, _080164A0 @ =0x080ECF58
	adds r0, r4, #0
	movs r3, #0
	bl sub_08009ACC
	adds r0, r4, #0
	movs r1, #0xff
	bl sub_08009B40
	ldr r0, [r5]
	str r4, [r0, #0x38]
	movs r1, #0xc
	ldrsh r0, [r0, r1]
	ldr r1, _080164A4 @ =sub_0801641C
	bl sub_08007BA0
	ldr r0, [r5]
	movs r1, #0xc
	ldrsh r0, [r0, r1]
	ldr r1, _080164A8 @ =sub_08016430
	bl sub_08007B84
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08016498: .4byte 0x030013BC
_0801649C: .4byte 0x080ECFA4
_080164A0: .4byte 0x080ECF58
_080164A4: .4byte sub_0801641C
_080164A8: .4byte sub_08016430

	thumb_func_start sub_080164AC
sub_080164AC: @ 0x080164AC
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _080164E0 @ =0x030013BC
	ldr r0, [r5]
	movs r1, #0xe
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	adds r6, r0, #0
	ldr r0, [r5]
	movs r1, #0xe
	ldrsh r0, [r0, r1]
	ldr r1, _080164E4 @ =0x08080AC0
	lsls r4, r4, #2
	adds r4, r4, r1
	ldr r1, [r4]
	bl sub_08007B84
	movs r0, #0
	strb r0, [r6]
	strh r0, [r6, #2]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080164E0: .4byte 0x030013BC
_080164E4: .4byte 0x08080AC0

	thumb_func_start sub_080164E8
sub_080164E8: @ 0x080164E8
	push {lr}
	ldr r0, _08016500 @ =0x030013BC
	ldr r0, [r0]
	adds r0, #0x6e
	movs r1, #0
	strb r1, [r0]
	movs r0, #0
	bl sub_080164AC
	pop {r0}
	bx r0
	.align 2, 0
_08016500: .4byte 0x030013BC

	thumb_func_start sub_08016504
sub_08016504: @ 0x08016504
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _0801652C @ =0x030013BC
	ldr r0, [r4]
	movs r1, #0xe
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	str r5, [r0, #4]
	ldr r0, [r4]
	adds r0, #0x6e
	movs r1, #1
	strb r1, [r0]
	movs r0, #1
	bl sub_080164AC
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801652C: .4byte 0x030013BC

	thumb_func_start sub_08016530
sub_08016530: @ 0x08016530
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _08016558 @ =0x030013BC
	ldr r0, [r4]
	movs r1, #0xe
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	str r5, [r0, #8]
	ldr r0, [r4]
	adds r0, #0x6e
	movs r1, #1
	strb r1, [r0]
	movs r0, #2
	bl sub_080164AC
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08016558: .4byte 0x030013BC

	thumb_func_start sub_0801655C
sub_0801655C: @ 0x0801655C
	push {r4, r5, lr}
	ldr r4, _08016584 @ =0x030013BC
	ldr r0, [r4]
	ldr r0, [r0, #0x3c]
	bl sub_08009A00
	movs r5, #0
_0801656A:
	ldr r0, [r4]
	lsls r1, r5, #2
	adds r0, #0x40
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_08009A00
	adds r5, #1
	cmp r5, #5
	ble _0801656A
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08016584: .4byte 0x030013BC

	thumb_func_start sub_08016588
sub_08016588: @ 0x08016588
	push {r4, r5, r6, r7, lr}
	bl sub_08007BD4
	movs r0, #2
	movs r1, #0x40
	bl sub_080099E0
	adds r5, r0, #0
	movs r1, #0
	bl sub_08009A34
	adds r0, r5, #0
	movs r1, #0x78
	movs r2, #0x20
	bl sub_08009A70
	ldr r4, _08016660 @ =0x030013BC
	ldr r0, [r4]
	ldr r1, [r0, #0x78]
	adds r0, r5, #0
	bl sub_08009A78
	adds r0, r5, #0
	movs r1, #8
	bl sub_08009AB4
	ldr r1, _08016664 @ =0x080F3944
	ldr r2, _08016668 @ =0x080F393C
	adds r0, r5, #0
	movs r3, #0
	bl sub_08009ACC
	adds r0, r5, #0
	movs r1, #0
	bl sub_08009B40
	ldr r0, [r4]
	str r5, [r0, #0x3c]
	movs r6, #0
	adds r7, r4, #0
_080165D8:
	movs r0, #2
	movs r1, #0x3f
	bl sub_080099E0
	adds r5, r0, #0
	movs r1, #0
	bl sub_08009A34
	ldr r1, _0801666C @ =0x08080828
	lsls r0, r6, #1
	adds r0, r0, r1
	ldrh r4, [r0]
	adds r1, r4, #0
	adds r1, #0x78
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r5, #0
	movs r2, #0x18
	bl sub_08009A70
	ldr r0, [r7]
	ldr r1, [r0, #0x7c]
	adds r0, r5, #0
	bl sub_08009A78
	adds r0, r5, #0
	movs r1, #7
	bl sub_08009AB4
	adds r0, r5, #0
	ldr r1, _08016670 @ =0x080F3E08
	ldr r2, _08016674 @ =0x080F3DDC
	movs r3, #0
	bl sub_08009ACC
	adds r0, r5, #0
	movs r1, #0
	bl sub_08009B40
	rsbs r4, r4, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #8
	bl sub_08009C14
	ldr r0, [r7]
	lsls r1, r6, #2
	adds r0, #0x40
	adds r0, r0, r1
	str r5, [r0]
	adds r6, #1
	cmp r6, #5
	ble _080165D8
	ldr r0, _08016660 @ =0x030013BC
	ldr r0, [r0]
	movs r1, #0xe
	ldrsh r0, [r0, r1]
	ldr r1, _08016678 @ =sub_0801655C
	bl sub_08007BA0
	bl sub_080164E8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08016660: .4byte 0x030013BC
_08016664: .4byte 0x080F3944
_08016668: .4byte 0x080F393C
_0801666C: .4byte 0x08080828
_08016670: .4byte 0x080F3E08
_08016674: .4byte 0x080F3DDC
_08016678: .4byte sub_0801655C

	thumb_func_start sub_0801667C
sub_0801667C: @ 0x0801667C
	bx lr
	.align 2, 0

	thumb_func_start sub_08016680
sub_08016680: @ 0x08016680
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	bl sub_08007BD4
	mov r8, r0
	ldrb r0, [r0]
	cmp r0, #1
	beq _08016788
	cmp r0, #1
	bgt _080166A2
	cmp r0, #0
	beq _080166AA
	b _080167F4
_080166A2:
	cmp r0, #2
	bne _080166A8
	b _080167F0
_080166A8:
	b _080167F4
_080166AA:
	ldr r5, _08016780 @ =0x030013BC
	ldr r0, [r5]
	ldr r0, [r0, #0x3c]
	movs r1, #1
	bl sub_08009A34
	ldr r0, [r5]
	ldr r4, [r0, #0x3c]
	bl sub_08009DDC
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_08009B9C
	ldr r0, [r5]
	ldr r0, [r0, #0x3c]
	movs r1, #1
	bl sub_08009B84
	mov r0, r8
	ldr r7, [r0, #4]
	movs r1, #0
	str r1, [sp]
	movs r6, #0
	mov sb, r5
_080166DC:
	ldr r0, _08016784 @ =0x08083A18
	lsls r4, r6, #2
	adds r0, r4, r0
	ldr r5, [r0]
	adds r0, r7, #0
	adds r1, r5, #0
	bl __udivsi3
	mov sl, r0
	cmp r6, #5
	bne _080166F6
	movs r2, #1
	str r2, [sp]
_080166F6:
	cmp r0, #0
	bne _08016700
	ldr r3, [sp]
	cmp r3, #0
	beq _08016756
_08016700:
	movs r0, #1
	str r0, [sp]
	mov r1, sb
	ldr r0, [r1]
	adds r0, #0x40
	adds r0, r0, r4
	ldr r0, [r0]
	movs r1, #1
	bl sub_08009A34
	mov r2, sb
	ldr r0, [r2]
	adds r0, #0x40
	adds r0, r0, r4
	ldr r0, [r0]
	movs r1, #1
	bl sub_08009B84
	mov r3, sb
	ldr r1, [r3]
	adds r0, r1, #0
	adds r0, #0x40
	adds r0, r0, r4
	ldr r0, [r0]
	ldr r1, [r1, #0x3c]
	ldr r1, [r1, #0x24]
	bl sub_08009B9C
	mov r1, sb
	ldr r0, [r1]
	adds r0, #0x40
	adds r0, r0, r4
	ldr r0, [r0]
	mov r2, sl
	lsls r1, r2, #0x18
	lsrs r1, r1, #0x18
	bl sub_08009AFC
	adds r0, r7, #0
	adds r1, r5, #0
	bl __umodsi3
	adds r7, r0, #0
_08016756:
	adds r6, #1
	cmp r6, #5
	ble _080166DC
	ldr r0, _08016780 @ =0x030013BC
	ldr r0, [r0]
	ldr r0, [r0, #0x3c]
	ldr r0, [r0, #0x24]
	movs r1, #0x80
	movs r2, #0x80
	bl sub_08009E84
	movs r0, #0xdd
	bl m4aSongNumStart
	movs r1, #0
	movs r0, #1
	mov r3, r8
	strb r0, [r3]
	strh r1, [r3, #2]
	b _080167F4
	.align 2, 0
_08016780: .4byte 0x030013BC
_08016784: .4byte 0x08083A18
_08016788:
	ldr r4, _080167E8 @ =0x030013BC
	ldr r0, [r4]
	ldr r0, [r0, #0x3c]
	ldr r0, [r0, #0x24]
	ldr r2, _080167EC @ =0x080809F0
	mov r3, r8
	ldrh r1, [r3, #2]
	lsls r1, r1, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r1, r2, #0
	bl sub_08009E84
	mov r1, r8
	ldrh r0, [r1, #2]
	adds r0, #1
	strh r0, [r1, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #7
	bls _080167F4
	movs r0, #0
	strh r0, [r1, #2]
	movs r0, #2
	strb r0, [r1]
	movs r0, #0x3c
	bl sub_08007AC0
	ldr r0, [r4]
	ldr r0, [r0, #0x3c]
	movs r1, #0
	bl sub_08009B84
	movs r6, #0
_080167CE:
	ldr r0, [r4]
	lsls r1, r6, #2
	adds r0, #0x40
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0
	bl sub_08009B84
	adds r6, #1
	cmp r6, #5
	ble _080167CE
	b _080167F4
	.align 2, 0
_080167E8: .4byte 0x030013BC
_080167EC: .4byte 0x080809F0
_080167F0:
	bl sub_080164E8
_080167F4:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08016804
sub_08016804: @ 0x08016804
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	bl sub_08007BD4
	adds r6, r0, #0
	ldrb r0, [r6]
	cmp r0, #4
	bls _0801681C
	b _08016A4C
_0801681C:
	lsls r0, r0, #2
	ldr r1, _08016828 @ =_0801682C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08016828: .4byte _0801682C
_0801682C: @ jump table
	.4byte _08016840 @ case 0
	.4byte _0801687E @ case 1
	.4byte _0801694A @ case 2
	.4byte _080169F4 @ case 3
	.4byte _08016A48 @ case 4
_08016840:
	ldr r2, [r6, #4]
	ldr r1, [r6, #8]
	cmp r2, r1
	bne _08016854
	movs r0, #0xde
	bl m4aSongNumStart
	movs r0, #2
	strb r0, [r6]
	b _08016A4C
_08016854:
	subs r0, r1, r2
	adds r3, r0, #0
	cmp r0, #0
	bge _0801685E
	rsbs r3, r0, #0
_0801685E:
	cmp r3, #0x77
	bls _0801686A
	movs r1, #0x78
	bl Div
	b _08016876
_0801686A:
	cmp r1, r2
	bls _08016872
	movs r0, #1
	b _08016876
_08016872:
	movs r0, #1
	rsbs r0, r0, #0
_08016876:
	str r0, [r6, #0xc]
	movs r0, #1
	strb r0, [r6]
	b _08016A4C
_0801687E:
	ldr r0, [r6, #4]
	ldr r2, [r6, #0xc]
	adds r0, r0, r2
	str r0, [r6, #4]
	cmp r2, #0
	bge _08016890
	ldr r1, [r6, #8]
	cmp r0, r1
	bls _0801689A
_08016890:
	cmp r2, #0
	ble _080168A6
	ldr r1, [r6, #8]
	cmp r0, r1
	blo _080168A6
_0801689A:
	str r1, [r6, #4]
	movs r0, #0x3c
	bl sub_08007AC0
	movs r0, #2
	strb r0, [r6]
_080168A6:
	ldr r6, [r6, #4]
	mov r8, r6
	movs r0, #0
	mov sl, r0
	ldr r3, _080168E8 @ =0x08083A18
	mov sb, r3
	ldr r7, _080168EC @ =0x030013BC
	movs r5, #0
	mov r4, sb
_080168B8:
	ldr r1, [r4]
	mov r0, r8
	bl __udivsi3
	adds r6, r0, #0
	mov r0, sb
	adds r0, #0x14
	cmp r4, r0
	bne _080168CE
	movs r0, #1
	mov sl, r0
_080168CE:
	cmp r6, #0
	bne _080168F0
	mov r3, sl
	cmp r3, #0
	bne _080168F0
	ldr r0, [r7]
	adds r0, #0x40
	adds r0, r0, r5
	ldr r0, [r0]
	movs r1, #0
	bl sub_08009A34
	b _0801693C
	.align 2, 0
_080168E8: .4byte 0x08083A18
_080168EC: .4byte 0x030013BC
_080168F0:
	movs r0, #1
	mov sl, r0
	ldr r0, [r7]
	adds r0, #0x40
	adds r0, r0, r5
	ldr r0, [r0]
	movs r1, #1
	bl sub_08009A34
	ldr r0, [r7]
	adds r0, #0x40
	adds r0, r0, r5
	ldr r0, [r0]
	movs r1, #1
	bl sub_08009B84
	ldr r1, [r7]
	adds r0, r1, #0
	adds r0, #0x40
	adds r0, r0, r5
	ldr r0, [r0]
	ldr r1, [r1, #0x3c]
	ldr r1, [r1, #0x24]
	bl sub_08009B9C
	ldr r0, [r7]
	adds r0, #0x40
	adds r0, r0, r5
	ldr r0, [r0]
	lsls r1, r6, #0x18
	lsrs r1, r1, #0x18
	bl sub_08009AFC
	ldr r1, [r4]
	mov r0, r8
	bl __umodsi3
	mov r8, r0
_0801693C:
	adds r5, #4
	adds r4, #4
	mov r0, sb
	adds r0, #0x14
	cmp r4, r0
	ble _080168B8
	b _08016A4C
_0801694A:
	ldr r0, _080169E8 @ =0x030013BC
	ldr r0, [r0]
	ldr r0, [r0, #0x3c]
	ldr r3, _080169EC @ =0x08080A00
	ldrh r1, [r6, #2]
	lsls r2, r1, #1
	adds r2, r2, r1
	lsls r2, r2, #1
	adds r1, r2, r3
	ldrh r1, [r1]
	adds r1, #0x78
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r3, #2
	adds r2, r2, r3
	ldrh r2, [r2]
	adds r2, #0x20
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl sub_08009A70
	movs r5, #0
	ldr r4, _080169F0 @ =0x08080828
_08016978:
	ldr r7, _080169E8 @ =0x030013BC
	ldr r2, [r7]
	lsls r1, r5, #2
	adds r0, r2, #0
	adds r0, #0x40
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r2, [r2, #0x3c]
	ldrh r1, [r4]
	ldrh r3, [r2, #6]
	adds r1, r1, r3
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldrh r2, [r2, #8]
	subs r2, #8
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl sub_08009A70
	adds r4, #2
	adds r5, #1
	cmp r5, #5
	ble _08016978
	ldr r0, [r7]
	ldr r0, [r0, #0x3c]
	ldr r0, [r0, #0x24]
	ldr r3, _080169EC @ =0x08080A00
	ldrh r2, [r6, #2]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #1
	adds r3, #4
	adds r1, r1, r3
	movs r3, #0x80
	lsls r3, r3, #1
	adds r2, r3, #0
	ldrh r1, [r1]
	adds r2, r2, r1
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r1, r2, #0
	bl sub_08009E84
	ldrh r0, [r6, #2]
	adds r0, #1
	strh r0, [r6, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x1f
	bls _08016A4C
	movs r0, #0
	strh r0, [r6, #2]
	movs r0, #3
	strb r0, [r6]
	b _08016A4C
	.align 2, 0
_080169E8: .4byte 0x030013BC
_080169EC: .4byte 0x08080A00
_080169F0: .4byte 0x08080828
_080169F4:
	ldr r4, _08016A44 @ =0x030013BC
	ldr r0, [r4]
	ldr r0, [r0, #0x3c]
	ldr r0, [r0, #0x24]
	bl sub_08009E54
	ldr r0, [r4]
	ldr r0, [r0, #0x3c]
	movs r1, #0
	bl sub_08009B9C
	ldr r0, [r4]
	ldr r0, [r0, #0x3c]
	movs r1, #0
	bl sub_08009A34
	movs r5, #0
	adds r7, r4, #0
_08016A18:
	ldr r0, [r7]
	lsls r4, r5, #2
	adds r0, #0x40
	adds r0, r0, r4
	ldr r0, [r0]
	movs r1, #0
	bl sub_08009A34
	ldr r0, [r7]
	adds r0, #0x40
	adds r0, r0, r4
	ldr r0, [r0]
	movs r1, #0
	bl sub_08009B9C
	adds r5, #1
	cmp r5, #5
	ble _08016A18
	movs r0, #4
	strb r0, [r6]
	b _08016A4C
	.align 2, 0
_08016A44: .4byte 0x030013BC
_08016A48:
	bl sub_080164E8
_08016A4C:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08016A5C
sub_08016A5C: @ 0x08016A5C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _08016A90 @ =0x030013BC
	ldr r0, [r5]
	movs r1, #0x10
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	adds r6, r0, #0
	ldr r0, [r5]
	movs r1, #0x10
	ldrsh r0, [r0, r1]
	ldr r1, _08016A94 @ =0x08080AE0
	lsls r4, r4, #2
	adds r4, r4, r1
	ldr r1, [r4]
	bl sub_08007B84
	movs r0, #0
	strb r0, [r6]
	strh r0, [r6, #2]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08016A90: .4byte 0x030013BC
_08016A94: .4byte 0x08080AE0

	thumb_func_start sub_08016A98
sub_08016A98: @ 0x08016A98
	push {lr}
	ldr r0, _08016AB0 @ =0x030013BC
	ldr r0, [r0]
	adds r0, #0x6f
	movs r1, #0
	strb r1, [r0]
	movs r0, #0
	bl sub_08016A5C
	pop {r0}
	bx r0
	.align 2, 0
_08016AB0: .4byte 0x030013BC

	thumb_func_start sub_08016AB4
sub_08016AB4: @ 0x08016AB4
	push {lr}
	ldr r0, _08016ACC @ =0x030013BC
	ldr r0, [r0]
	adds r0, #0x6f
	movs r1, #1
	strb r1, [r0]
	movs r0, #1
	bl sub_08016A5C
	pop {r0}
	bx r0
	.align 2, 0
_08016ACC: .4byte 0x030013BC

	thumb_func_start sub_08016AD0
sub_08016AD0: @ 0x08016AD0
	push {r4, r5, lr}
	ldr r4, _08016AF8 @ =0x030013BC
	ldr r0, [r4]
	ldr r0, [r0, #0x58]
	bl sub_08009A00
	movs r5, #0
_08016ADE:
	ldr r0, [r4]
	lsls r1, r5, #2
	adds r0, #0x5c
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_08009A00
	adds r5, #1
	cmp r5, #1
	ble _08016ADE
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08016AF8: .4byte 0x030013BC

	thumb_func_start sub_08016AFC
sub_08016AFC: @ 0x08016AFC
	push {r4, r5, r6, lr}
	movs r5, #0
	ldr r1, _08016BC0 @ =0x03004470
	ldrb r0, [r1, #4]
	cmp r0, #5
	bne _08016B1E
	ldrb r0, [r1]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1d
	cmp r0, #6
	bgt _08016B1E
	ldrh r0, [r1]
	lsls r0, r0, #0x17
	lsrs r0, r0, #0x1c
	cmp r0, #6
	bgt _08016B1E
	movs r5, #1
_08016B1E:
	movs r0, #2
	movs r1, #0x40
	bl sub_080099E0
	adds r6, r0, #0
	lsls r5, r5, #0x18
	lsrs r1, r5, #0x18
	bl sub_08009A34
	adds r0, r6, #0
	movs r1, #0x18
	movs r2, #0x32
	bl sub_08009A70
	ldr r4, _08016BC4 @ =0x030013BC
	ldr r0, [r4]
	ldr r1, [r0, #0x74]
	adds r0, r6, #0
	bl sub_08009A78
	adds r0, r6, #0
	movs r1, #3
	bl sub_08009AB4
	ldr r1, _08016BC8 @ =0x080ECFA4
	ldr r2, _08016BCC @ =0x080ECF58
	adds r0, r6, #0
	movs r3, #0xc
	bl sub_08009ACC
	adds r0, r6, #0
	movs r1, #0xff
	bl sub_08009B40
	ldr r0, [r4]
	str r6, [r0, #0x58]
	movs r4, #0
_08016B68:
	movs r0, #2
	movs r1, #0x3f
	bl sub_080099E0
	adds r6, r0, #0
	lsrs r1, r5, #0x18
	bl sub_08009A34
	lsls r1, r4, #0x13
	movs r0, #0x80
	lsls r0, r0, #0xe
	adds r1, r1, r0
	asrs r1, r1, #0x10
	adds r0, r6, #0
	movs r2, #0x3a
	bl sub_08009A70
	ldr r0, _08016BC4 @ =0x030013BC
	ldr r0, [r0]
	ldr r1, [r0, #0x74]
	adds r0, r6, #0
	bl sub_08009A78
	adds r0, r6, #0
	movs r1, #3
	bl sub_08009AB4
	cmp r4, #0
	beq _08016BD0
	ldr r0, _08016BC0 @ =0x03004470
	ldrb r0, [r0, #5]
	movs r1, #0xa
	bl __umodsi3
	adds r3, r0, #0
	adds r3, #2
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	adds r0, r6, #0
	ldr r1, _08016BC8 @ =0x080ECFA4
	ldr r2, _08016BCC @ =0x080ECF58
	bl sub_08009ACC
	b _08016BEC
	.align 2, 0
_08016BC0: .4byte 0x03004470
_08016BC4: .4byte 0x030013BC
_08016BC8: .4byte 0x080ECFA4
_08016BCC: .4byte 0x080ECF58
_08016BD0:
	ldr r0, _08016C1C @ =0x03004470
	ldrb r0, [r0, #5]
	movs r1, #0xa
	bl __udivsi3
	adds r3, r0, #0
	adds r3, #2
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	adds r0, r6, #0
	ldr r1, _08016C20 @ =0x080ECFA4
	ldr r2, _08016C24 @ =0x080ECF58
	bl sub_08009ACC
_08016BEC:
	adds r0, r6, #0
	movs r1, #0xff
	bl sub_08009B40
	ldr r0, _08016C28 @ =0x030013BC
	ldr r2, [r0]
	lsls r1, r4, #2
	adds r0, r2, #0
	adds r0, #0x5c
	adds r0, r0, r1
	str r6, [r0]
	adds r4, #1
	cmp r4, #1
	ble _08016B68
	movs r1, #0x10
	ldrsh r0, [r2, r1]
	ldr r1, _08016C2C @ =sub_08016AD0
	bl sub_08007BA0
	bl sub_08016A98
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08016C1C: .4byte 0x03004470
_08016C20: .4byte 0x080ECFA4
_08016C24: .4byte 0x080ECF58
_08016C28: .4byte 0x030013BC
_08016C2C: .4byte sub_08016AD0

	thumb_func_start sub_08016C30
sub_08016C30: @ 0x08016C30
	bx lr
	.align 2, 0

	thumb_func_start sub_08016C34
sub_08016C34: @ 0x08016C34
	push {r4, r5, r6, r7, lr}
	bl sub_08007BD4
	adds r6, r0, #0
	ldrb r0, [r6]
	cmp r0, #4
	bls _08016C44
	b _08016E08
_08016C44:
	lsls r0, r0, #2
	ldr r1, _08016C50 @ =_08016C54
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08016C50: .4byte _08016C54
_08016C54: @ jump table
	.4byte _08016C68 @ case 0
	.4byte _08016C8C @ case 1
	.4byte _08016D00 @ case 2
	.4byte _08016D90 @ case 3
	.4byte _08016DF8 @ case 4
_08016C68:
	movs r1, #0
	movs r0, #1
	strb r0, [r6]
	strh r1, [r6, #2]
	movs r0, #0x95
	lsls r0, r0, #1
	bl m4aSongNumStart
	ldr r0, _08016C88 @ =0x030013BC
	ldr r0, [r0]
	ldr r0, [r0, #0x58]
	movs r1, #1
	bl sub_08009AFC
	b _08016E08
	.align 2, 0
_08016C88: .4byte 0x030013BC
_08016C8C:
	movs r0, #0x62
	bl sub_0800B828
	ldr r7, _08016CF8 @ =0x03004470
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrb r1, [r7, #5]
	adds r0, r0, r1
	adds r0, #1
	movs r1, #0x63
	bl __modsi3
	adds r0, #1
	strb r0, [r7, #5]
	ldrh r0, [r6, #2]
	adds r0, #1
	strh r0, [r6, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x3c
	bls _08016CBE
	bl sub_08016E6C
	movs r0, #2
	strb r0, [r6]
_08016CBE:
	ldr r5, _08016CFC @ =0x030013BC
	ldr r0, [r5]
	ldr r4, [r0, #0x5c]
	ldrb r0, [r7, #5]
	movs r1, #0xa
	bl __udivsi3
	adds r1, r0, #0
	adds r1, #2
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r4, #0
	bl sub_08009AFC
	ldr r0, [r5]
	ldr r4, [r0, #0x60]
	ldrb r0, [r7, #5]
	movs r1, #0xa
	bl __umodsi3
	adds r1, r0, #0
	adds r1, #2
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r4, #0
	bl sub_08009AFC
	b _08016E08
	.align 2, 0
_08016CF8: .4byte 0x03004470
_08016CFC: .4byte 0x030013BC
_08016D00:
	movs r0, #0x62
	bl sub_0800B828
	ldr r4, _08016D84 @ =0x03004470
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrb r2, [r4, #5]
	adds r0, r0, r2
	adds r0, #1
	movs r1, #0x63
	bl __modsi3
	adds r0, #1
	strb r0, [r4, #5]
	ldr r7, _08016D88 @ =0x030013BC
	ldr r0, [r7]
	ldr r5, [r0, #0x5c]
	ldrb r0, [r4, #5]
	movs r1, #0xa
	bl __udivsi3
	adds r1, r0, #0
	adds r1, #2
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r5, #0
	bl sub_08009AFC
	ldr r0, [r7]
	ldr r5, [r0, #0x60]
	ldrb r0, [r4, #5]
	movs r1, #0xa
	bl __umodsi3
	adds r1, r0, #0
	adds r1, #2
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r5, #0
	bl sub_08009AFC
	ldr r0, [r7]
	adds r0, #0x70
	ldrb r4, [r0]
	cmp r4, #0
	bne _08016E08
	movs r0, #0x95
	lsls r0, r0, #1
	bl m4aSongNumStop
	ldr r0, _08016D8C @ =0x0000012B
	bl m4aSongNumStart
	ldr r0, [r7]
	ldr r0, [r0, #0x58]
	movs r1, #0xc
	bl sub_08009AFC
	strh r4, [r6, #2]
	movs r0, #3
	strb r0, [r6]
	ldr r0, [r7]
	adds r0, #0x70
	movs r1, #1
	strb r1, [r0]
	b _08016E08
	.align 2, 0
_08016D84: .4byte 0x03004470
_08016D88: .4byte 0x030013BC
_08016D8C: .4byte 0x0000012B
_08016D90:
	ldr r4, _08016DF0 @ =0x030013BC
	ldr r0, [r4]
	ldr r0, [r0, #0x58]
	movs r3, #6
	ldrsh r1, [r0, r3]
	ldr r3, _08016DF4 @ =0x08080ACC
	ldrh r2, [r6, #2]
	lsls r2, r2, #1
	adds r2, r2, r3
	ldrh r2, [r2]
	adds r2, #0x32
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl sub_08009A70
	ldr r2, [r4]
	ldr r0, [r2, #0x5c]
	movs r3, #6
	ldrsh r1, [r0, r3]
	ldr r2, [r2, #0x58]
	ldrh r2, [r2, #8]
	adds r2, #8
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl sub_08009A70
	ldr r2, [r4]
	ldr r0, [r2, #0x60]
	movs r3, #6
	ldrsh r1, [r0, r3]
	ldr r2, [r2, #0x5c]
	movs r3, #8
	ldrsh r2, [r2, r3]
	bl sub_08009A70
	ldrh r0, [r6, #2]
	adds r0, #1
	strh r0, [r6, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #8
	bls _08016E08
	movs r0, #0
	strh r0, [r6, #2]
	movs r0, #4
	strb r0, [r6]
	b _08016E08
	.align 2, 0
_08016DF0: .4byte 0x030013BC
_08016DF4: .4byte 0x08080ACC
_08016DF8:
	ldr r0, _08016E10 @ =0x030013BC
	ldr r0, [r0]
	adds r0, #0x70
	ldrb r0, [r0]
	cmp r0, #0
	bne _08016E08
	bl sub_08016A98
_08016E08:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08016E10: .4byte 0x030013BC

	thumb_func_start sub_08016E14
sub_08016E14: @ 0x08016E14
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _08016E48 @ =0x030013BC
	ldr r0, [r5]
	movs r1, #0x12
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	adds r6, r0, #0
	ldr r0, [r5]
	movs r1, #0x12
	ldrsh r0, [r0, r1]
	ldr r1, _08016E4C @ =0x08080AE8
	lsls r4, r4, #2
	adds r4, r4, r1
	ldr r1, [r4]
	bl sub_08007B84
	movs r0, #0
	strb r0, [r6]
	strh r0, [r6, #2]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08016E48: .4byte 0x030013BC
_08016E4C: .4byte 0x08080AE8

	thumb_func_start sub_08016E50
sub_08016E50: @ 0x08016E50
	push {lr}
	ldr r0, _08016E68 @ =0x030013BC
	ldr r0, [r0]
	adds r0, #0x70
	movs r1, #0
	strb r1, [r0]
	movs r0, #0
	bl sub_08016E14
	pop {r0}
	bx r0
	.align 2, 0
_08016E68: .4byte 0x030013BC

	thumb_func_start sub_08016E6C
sub_08016E6C: @ 0x08016E6C
	push {lr}
	ldr r0, _08016E84 @ =0x030013BC
	ldr r0, [r0]
	adds r0, #0x70
	movs r1, #1
	strb r1, [r0]
	movs r0, #1
	bl sub_08016E14
	pop {r0}
	bx r0
	.align 2, 0
_08016E84: .4byte 0x030013BC

	thumb_func_start sub_08016E88
sub_08016E88: @ 0x08016E88
	push {r4, lr}
	ldr r4, _08016EA4 @ =0x030013BC
	ldr r0, [r4]
	ldr r0, [r0, #0x64]
	bl sub_08009A00
	ldr r0, [r4]
	ldr r0, [r0, #0x68]
	bl sub_08009A00
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08016EA4: .4byte 0x030013BC

	thumb_func_start sub_08016EA8
sub_08016EA8: @ 0x08016EA8
	push {r4, r5, lr}
	movs r0, #2
	movs r1, #0x80
	bl sub_080099E0
	adds r5, r0, #0
	movs r1, #1
	bl sub_08009A34
	adds r0, r5, #0
	movs r1, #0xc0
	movs r2, #0x6b
	bl sub_08009A70
	ldr r1, _08016F98 @ =0x06010400
	adds r0, r5, #0
	bl sub_08009A78
	ldr r4, _08016F9C @ =0x030013BC
	ldr r0, [r4]
	adds r0, #0x94
	ldr r1, [r0]
	adds r0, r5, #0
	movs r2, #0
	bl sub_08009BBC
	adds r0, r5, #0
	movs r1, #1
	bl sub_08009AB4
	ldr r1, _08016FA0 @ =0x080F8E44
	ldr r2, _08016FA4 @ =0x080F8E04
	adds r0, r5, #0
	movs r3, #0
	bl sub_08009ACC
	adds r0, r5, #0
	movs r1, #0xff
	bl sub_08009B40
	ldr r0, [r4]
	str r5, [r0, #0x64]
	movs r0, #2
	movs r1, #0x80
	bl sub_080099E0
	adds r5, r0, #0
	movs r1, #1
	bl sub_08009A34
	adds r0, r5, #0
	movs r1, #0x90
	movs r2, #0x70
	bl sub_08009A70
	ldr r1, _08016FA8 @ =0x06011000
	adds r0, r5, #0
	bl sub_08009A78
	ldr r0, [r4]
	adds r0, #0x9c
	ldr r1, [r0]
	adds r0, r5, #0
	movs r2, #0
	bl sub_08009BBC
	adds r0, r5, #0
	movs r1, #2
	bl sub_08009AB4
	ldr r1, _08016FAC @ =0x080F9C24
	ldr r2, _08016FB0 @ =0x080F9BE0
	adds r0, r5, #0
	movs r3, #1
	bl sub_08009ACC
	adds r0, r5, #0
	movs r1, #0xff
	bl sub_08009B40
	ldr r1, _08016FB4 @ =0x03004470
	ldrb r0, [r1, #4]
	cmp r0, #5
	bne _08016F64
	ldrb r0, [r1]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1d
	cmp r0, #7
	beq _08016F64
	ldrh r0, [r1]
	lsls r0, r0, #0x17
	lsrs r0, r0, #0x1c
	cmp r0, #6
	ble _08016F6C
_08016F64:
	ldr r0, _08016FB4 @ =0x03004470
	ldrb r0, [r0, #4]
	cmp r0, #6
	bne _08016F7E
_08016F6C:
	adds r0, r5, #0
	movs r1, #0x28
	movs r2, #0x70
	bl sub_08009A70
	adds r0, r5, #0
	movs r1, #2
	bl sub_08009AFC
_08016F7E:
	ldr r0, _08016F9C @ =0x030013BC
	ldr r0, [r0]
	str r5, [r0, #0x68]
	movs r1, #0x12
	ldrsh r0, [r0, r1]
	ldr r1, _08016FB8 @ =sub_08016E88
	bl sub_08007BA0
	bl sub_08016E50
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08016F98: .4byte 0x06010400
_08016F9C: .4byte 0x030013BC
_08016FA0: .4byte 0x080F8E44
_08016FA4: .4byte 0x080F8E04
_08016FA8: .4byte 0x06011000
_08016FAC: .4byte 0x080F9C24
_08016FB0: .4byte 0x080F9BE0
_08016FB4: .4byte 0x03004470
_08016FB8: .4byte sub_08016E88

	thumb_func_start sub_08016FBC
sub_08016FBC: @ 0x08016FBC
	bx lr
	.align 2, 0

	thumb_func_start sub_08016FC0
sub_08016FC0: @ 0x08016FC0
	push {r4, lr}
	bl sub_08007BD4
	adds r4, r0, #0
	ldrb r0, [r4]
	cmp r0, #1
	beq _08016FF4
	cmp r0, #1
	bgt _08016FD8
	cmp r0, #0
	beq _08016FDE
	b _08017036
_08016FD8:
	cmp r0, #2
	beq _0801701C
	b _08017036
_08016FDE:
	ldr r0, _08016FF0 @ =0x030013BC
	ldr r0, [r0]
	ldr r0, [r0, #0x68]
	movs r1, #7
	bl sub_08009AFC
	movs r0, #1
	strb r0, [r4]
	b _08017036
	.align 2, 0
_08016FF0: .4byte 0x030013BC
_08016FF4:
	ldr r2, _08017018 @ =0x030013BC
	ldr r1, [r2]
	ldr r0, [r1, #0x68]
	ldrb r0, [r0, #1]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _08017036
	adds r1, #0x70
	movs r0, #0
	strb r0, [r1]
	ldr r0, [r2]
	ldr r0, [r0, #0x68]
	movs r1, #8
	bl sub_08009AFC
	movs r0, #2
	strb r0, [r4]
	b _08017036
	.align 2, 0
_08017018: .4byte 0x030013BC
_0801701C:
	ldr r0, _0801703C @ =0x030013BC
	ldr r0, [r0]
	ldr r1, [r0, #0x68]
	ldrb r0, [r1, #1]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _08017036
	adds r0, r1, #0
	movs r1, #0
	bl sub_08009AFC
	bl sub_08016E50
_08017036:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801703C: .4byte 0x030013BC

	thumb_func_start sub_08017040
sub_08017040: @ 0x08017040
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	bl sub_08007BD4
	adds r7, r0, #0
	ldrb r0, [r7]
	cmp r0, #0
	beq _08017058
	cmp r0, #1
	beq _08017062
	b _080170AE
_08017058:
	ldr r0, [r7, #8]
	bl sub_08009BA0
	movs r0, #1
	strb r0, [r7]
_08017062:
	ldr r0, [r7, #8]
	mov r8, r0
	movs r1, #6
	ldrsh r4, [r0, r1]
	movs r1, #4
	ldrsh r0, [r7, r1]
	adds r4, r4, r0
	mov r0, r8
	movs r1, #8
	ldrsh r6, [r0, r1]
	movs r0, #6
	ldrsh r5, [r7, r0]
	ldrh r0, [r7, #2]
	adds r1, r0, #1
	strh r1, [r7, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xf
	adds r0, #1
	movs r1, #0xf
	bl __divsi3
	adds r5, r5, r0
	adds r6, r6, r5
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	lsls r2, r6, #0x10
	asrs r2, r2, #0x10
	mov r0, r8
	adds r1, r4, #0
	bl sub_08009A70
	cmp r6, #0x77
	ble _080170AE
	ldr r0, [r7, #8]
	bl sub_08009A00
	bl sub_08007A64
_080170AE:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080170B8
sub_080170B8: @ 0x080170B8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sl, r2
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov sb, r3
	movs r7, #0
	lsls r0, r0, #0x10
	mov r8, r0
_080170DC:
	ldr r0, _0801716C @ =sub_08017040
	movs r1, #0x48
	movs r2, #0
	bl sub_08007968
	adds r6, r0, #0
	lsls r6, r6, #0x10
	asrs r6, r6, #0x10
	adds r0, r6, #0
	bl sub_08007BBC
	adds r5, r0, #0
	movs r0, #0
	strb r0, [r5]
	strh r0, [r5, #2]
	mov r0, sl
	strh r0, [r5, #4]
	mov r3, sb
	strh r3, [r5, #6]
	movs r0, #3
	movs r1, #0xff
	bl sub_080099E0
	adds r4, r0, #0
	movs r1, #1
	bl sub_08009A34
	ldr r0, [sp]
	lsls r2, r0, #0x10
	adds r0, r4, #0
	mov r3, r8
	asrs r1, r3, #0x10
	asrs r2, r2, #0x10
	bl sub_08009A70
	ldr r0, _08017170 @ =0x030013BC
	ldr r0, [r0]
	ldr r1, [r0, #0x74]
	adds r0, r4, #0
	bl sub_08009A78
	adds r0, r4, #0
	movs r1, #3
	bl sub_08009AB4
	adds r0, r4, #0
	ldr r1, _08017174 @ =0x080ECFA4
	ldr r2, _08017178 @ =0x080ECF58
	movs r3, #0xd
	bl sub_08009ACC
	adds r0, r4, #0
	movs r1, #0xff
	bl sub_08009B40
	str r4, [r5, #8]
	lsls r1, r7, #2
	adds r0, r6, #0
	bl sub_08007AD8
	adds r7, #1
	cmp r7, #7
	ble _080170DC
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801716C: .4byte sub_08017040
_08017170: .4byte 0x030013BC
_08017174: .4byte 0x080ECFA4
_08017178: .4byte 0x080ECF58

	thumb_func_start sub_0801717C
sub_0801717C: @ 0x0801717C
	push {r4, lr}
	ldr r4, _080171A4 @ =0x030013BC
	ldr r0, [r4]
	movs r1, #0x14
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	movs r1, #0
	strb r1, [r0]
	strh r1, [r0, #2]
	ldr r0, [r4]
	movs r1, #0x14
	ldrsh r0, [r0, r1]
	ldr r1, _080171A8 @ =sub_080171AC
	bl sub_08007B84
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080171A4: .4byte 0x030013BC
_080171A8: .4byte sub_080171AC

	thumb_func_start sub_080171AC
sub_080171AC: @ 0x080171AC
	push {r4, r5, r6, lr}
	bl sub_08007BD4
	adds r6, r0, #0
	ldrb r0, [r6]
	cmp r0, #0
	beq _080171C0
	cmp r0, #1
	beq _08017218
	b _08017268
_080171C0:
	movs r0, #3
	bl sub_0800B828
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r4, _0801720C @ =0x08080AF0
	movs r0, #4
	bl sub_0800B828
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xf
	adds r0, r0, r4
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r0, _08017210 @ =0x08080B04
	lsls r3, r5, #2
	adds r2, r3, r0
	movs r4, #0
	ldrsh r2, [r2, r4]
	adds r0, #2
	adds r3, r3, r0
	movs r0, #0
	ldrsh r3, [r3, r0]
	movs r0, #0xc
	bl sub_080170B8
	ldr r4, _08017214 @ =0x08080AF8
	movs r0, #3
	bl sub_0800B828
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xf
	adds r0, r0, r4
	ldrh r0, [r0]
	bl sub_08007AC0
	movs r0, #1
	b _08017266
	.align 2, 0
_0801720C: .4byte 0x08080AF0
_08017210: .4byte 0x08080B04
_08017214: .4byte 0x08080AF8
_08017218:
	movs r0, #3
	bl sub_0800B828
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r4, _08017270 @ =0x08080AF0
	movs r0, #4
	bl sub_0800B828
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xf
	adds r0, r0, r4
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r3, _08017274 @ =0x08080B04
	lsls r4, r5, #2
	adds r0, r4, r3
	ldrh r2, [r0]
	rsbs r2, r2, #0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r3, #2
	adds r4, r4, r3
	movs r0, #0
	ldrsh r3, [r4, r0]
	movs r0, #0xe4
	bl sub_080170B8
	ldr r4, _08017278 @ =0x08080AFE
	movs r0, #3
	bl sub_0800B828
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xf
	adds r0, r0, r4
	ldrh r0, [r0]
	bl sub_08007AC0
	movs r0, #0
_08017266:
	strb r0, [r6]
_08017268:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08017270: .4byte 0x08080AF0
_08017274: .4byte 0x08080B04
_08017278: .4byte 0x08080AFE

	thumb_func_start sub_0801727C
sub_0801727C: @ 0x0801727C
	push {r4, lr}
	bl sub_08007BD4
	adds r4, r0, #0
	ldrb r0, [r4]
	cmp r0, #1
	beq _080172AA
	cmp r0, #1
	bgt _08017294
	cmp r0, #0
	beq _0801729E
	b _080172E0
_08017294:
	cmp r0, #2
	beq _080172B6
	cmp r0, #3
	beq _080172DC
	b _080172E0
_0801729E:
	ldrh r0, [r4, #4]
	bl m4aSongNumStop
	movs r0, #1
	strb r0, [r4]
	b _080172E0
_080172AA:
	ldrh r0, [r4, #6]
	bl m4aSongNumStart
	movs r0, #2
	strb r0, [r4]
	b _080172E0
_080172B6:
	ldr r0, _080172D4 @ =0x03005730
	ldr r0, [r0, #4]
	cmp r0, #0
	bge _080172E0
	ldr r0, _080172D8 @ =0x030013BC
	ldr r0, [r0]
	ldrb r0, [r0]
	cmp r0, #8
	beq _080172CE
	ldrh r0, [r4, #4]
	bl m4aSongNumStart
_080172CE:
	movs r0, #3
	strb r0, [r4]
	b _080172E0
	.align 2, 0
_080172D4: .4byte 0x03005730
_080172D8: .4byte 0x030013BC
_080172DC:
	bl sub_08007A64
_080172E0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080172E8
sub_080172E8: @ 0x080172E8
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r0, _08017318 @ =sub_0801727C
	movs r1, #0x48
	movs r2, #0
	bl sub_08007968
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl sub_08007BBC
	movs r1, #0
	strb r1, [r0]
	strh r1, [r0, #2]
	strh r4, [r0, #4]
	strh r5, [r0, #6]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08017318: .4byte sub_0801727C

	thumb_func_start sub_0801731C
sub_0801731C: @ 0x0801731C
	push {r4, r5, lr}
	sub sp, #8
	ldr r5, _08017430 @ =0x030013C0
	movs r4, #0xde
	lsls r4, r4, #1
	adds r0, r4, #0
	bl sub_08007CE8
	adds r1, r0, #0
	str r1, [r5]
	movs r0, #0
	adds r2, r4, #0
	bl sub_08007EFC
	ldr r1, _08017434 @ =0x08080D20
	ldr r4, _08017438 @ =0x03004470
	ldrb r0, [r4]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1c
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _0801743C @ =0x05000200
	bl LoadPalette_08008308
	ldr r1, _08017440 @ =0x08080D40
	ldrb r0, [r4]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1c
	adds r0, r0, r1
	ldr r0, [r0]
	mov r1, sp
	bl sub_08008380
	ldr r1, [r5]
	str r0, [r1, #0x68]
	ldr r0, [sp]
	str r0, [r1, #0x6c]
	ldr r4, _08017444 @ =0x06010400
	ldr r0, _08017448 @ =0x080F1850
	ldr r1, _0801744C @ =0x05000260
	bl LoadPalette_08008308
	ldr r0, [r5]
	str r4, [r0, #0x5c]
	ldr r0, _08017450 @ =0x080F1BF8
	adds r1, r4, #0
	bl DecompressData_08008374
	adds r4, r0, r4
	ldr r0, _08017454 @ =0x080FC7D0
	ldr r1, _08017458 @ =0x05000240
	bl LoadPalette_08008308
	ldr r0, [r5]
	str r4, [r0, #0x60]
	ldr r0, _0801745C @ =0x080FC99C
	adds r1, r4, #0
	bl DecompressData_08008374
	adds r4, r4, r0
	ldr r0, _08017460 @ =0x080F9A08
	ldr r1, _08017464 @ =0x050002E0
	bl LoadPalette_08008308
	ldr r0, [r5]
	str r4, [r0, #0x64]
	ldr r0, _08017468 @ =0x080F9C58
	adds r1, r4, #0
	bl DecompressData_08008374
	ldr r0, _0801746C @ =0x08080B80
	bl sub_0800B02C
	ldr r0, _08017470 @ =sub_08017A70
	movs r1, #0x40
	movs r2, #0
	bl sub_08007968
	ldr r1, [r5]
	strh r0, [r1, #8]
	ldr r0, _08017474 @ =sub_08017EB0
	movs r1, #0x41
	movs r2, #0
	bl sub_08007968
	ldr r1, [r5]
	strh r0, [r1, #0xa]
	ldr r0, _08017478 @ =sub_08017FC8
	movs r1, #0x42
	movs r2, #0
	bl sub_08007968
	ldr r1, [r5]
	strh r0, [r1, #0xc]
	ldr r0, _0801747C @ =sub_0801836C
	movs r1, #0x43
	movs r2, #0
	bl sub_08007968
	ldr r1, [r5]
	strh r0, [r1, #0xe]
	ldr r0, _08017480 @ =sub_08018508
	movs r1, #0x44
	movs r2, #0
	bl sub_08007968
	ldr r1, [r5]
	strh r0, [r1, #0x10]
	ldr r0, _08017484 @ =sub_080184C4
	movs r1, #0x46
	movs r2, #0
	bl sub_08007968
	ldr r1, [r5]
	strh r0, [r1, #0x12]
	ldr r0, _08017488 @ =sub_08019160
	movs r1, #0x48
	movs r2, #0
	bl sub_08007968
	ldr r1, [r5]
	strh r0, [r1, #0x14]
	ldr r0, _0801748C @ =0x080ED8E4
	movs r1, #0x36
	bl sub_08009554
	ldr r0, _08017490 @ =0x080ED998
	movs r1, #0x41
	bl sub_08009554
	ldr r0, _08017494 @ =0x03004400
	ldr r0, [r0]
	bl sub_0800B80C
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08017430: .4byte 0x030013C0
_08017434: .4byte 0x08080D20
_08017438: .4byte 0x03004470
_0801743C: .4byte 0x05000200
_08017440: .4byte 0x08080D40
_08017444: .4byte 0x06010400
_08017448: .4byte 0x080F1850
_0801744C: .4byte 0x05000260
_08017450: .4byte 0x080F1BF8
_08017454: .4byte 0x080FC7D0
_08017458: .4byte 0x05000240
_0801745C: .4byte 0x080FC99C
_08017460: .4byte 0x080F9A08
_08017464: .4byte 0x050002E0
_08017468: .4byte 0x080F9C58
_0801746C: .4byte 0x08080B80
_08017470: .4byte sub_08017A70
_08017474: .4byte sub_08017EB0
_08017478: .4byte sub_08017FC8
_0801747C: .4byte sub_0801836C
_08017480: .4byte sub_08018508
_08017484: .4byte sub_080184C4
_08017488: .4byte sub_08019160
_0801748C: .4byte 0x080ED8E4
_08017490: .4byte 0x080ED998
_08017494: .4byte 0x03004400

	thumb_func_start sub_08017498
sub_08017498: @ 0x08017498
	push {r4, lr}
	bl sub_0800B17C
	ldr r0, _080174F8 @ =0x080ED8E4
	bl sub_080095E0
	ldr r0, _080174FC @ =0x080ED998
	bl sub_080095E0
	ldr r4, _08017500 @ =0x030013C0
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
	movs r1, #0x12
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	ldr r0, [r4]
	movs r1, #0x14
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080174F8: .4byte 0x080ED8E4
_080174FC: .4byte 0x080ED998
_08017500: .4byte 0x030013C0

	thumb_func_start sub_08017504
sub_08017504: @ 0x08017504
	push {r4, r5, lr}
	movs r0, #0
	bl sub_080081A0
	bl sub_0801731C
	movs r0, #1
	bl ProcSleep_08002B98
	ldr r4, _08017528 @ =0x030013C0
	ldr r5, _0801752C @ =0x08080D7C
_0801751A:
	ldr r1, [r4]
	ldrh r0, [r1, #4]
	cmp r0, #0
	beq _08017530
	subs r0, #1
	strh r0, [r1, #4]
	b _08017544
	.align 2, 0
_08017528: .4byte 0x030013C0
_0801752C: .4byte 0x08080D7C
_08017530:
	ldrb r0, [r1]
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	bl call_via_r0
	ldr r0, [r4]
	ldrb r0, [r0, #6]
	cmp r0, #0
	bne _0801754C
_08017544:
	movs r0, #1
	bl ProcSleep_08002B98
	b _0801751A
_0801754C:
	bl sub_08017498
	movs r0, #1
	bl ProcSleep_08002B98
	ldr r5, _08017598 @ =0x03004470
	ldrb r0, [r5]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1d
	cmp r0, #7
	bne _08017566
	bl m4aMPlayAllStop
_08017566:
	ldr r4, _0801759C @ =0x030013C0
	ldr r0, [r4]
	ldr r0, [r0, #0x68]
	bl sub_08007CF8
	ldr r0, [r4]
	bl sub_08007CF8
	ldrh r2, [r5]
	lsls r1, r2, #0x17
	lsrs r1, r1, #0x1c
	adds r1, #1
	movs r0, #0xf
	ands r1, r0
	lsls r1, r1, #5
	ldr r0, _080175A0 @ =0xFFFFFE1F
	ands r0, r2
	orrs r0, r1
	strh r0, [r5]
	bl sub_08002B0C
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08017598: .4byte 0x03004470
_0801759C: .4byte 0x030013C0
_080175A0: .4byte 0xFFFFFE1F

	thumb_func_start sub_080175A4
sub_080175A4: @ 0x080175A4
	ldr r1, _080175B8 @ =0x030013C0
	ldr r2, [r1]
	movs r3, #0
	strb r0, [r2]
	ldr r0, [r1]
	strb r3, [r0, #1]
	ldr r0, [r1]
	strh r3, [r0, #2]
	bx lr
	.align 2, 0
_080175B8: .4byte 0x030013C0

	thumb_func_start sub_080175BC
sub_080175BC: @ 0x080175BC
	push {r4, r5, lr}
	ldr r5, _080175D0 @ =0x030013C0
	ldr r0, [r5]
	ldrb r0, [r0, #1]
	cmp r0, #0
	beq _080175D4
	cmp r0, #1
	beq _08017614
	b _0801761A
	.align 2, 0
_080175D0: .4byte 0x030013C0
_080175D4:
	bl sub_08008174
	ldr r2, _08017610 @ =0x030024E0
	ldrh r1, [r2]
	movs r3, #0x80
	lsls r3, r3, #4
	adds r0, r3, #0
	orrs r0, r1
	movs r3, #0x80
	lsls r3, r3, #3
	adds r1, r3, #0
	orrs r0, r1
	movs r3, #0x80
	lsls r3, r3, #2
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	adds r2, #0x4f
	movs r4, #1
	strb r4, [r2]
	movs r0, #0x46
	bl m4aSongNumStart
	bl sub_0801919C
	bl sub_0800B770
	ldr r0, [r5]
	strb r4, [r0, #1]
	b _0801761A
	.align 2, 0
_08017610: .4byte 0x030024E0
_08017614:
	movs r0, #1
	bl sub_080175A4
_0801761A:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08017620
sub_08017620: @ 0x08017620
	push {r4, lr}
	ldr r0, _08017638 @ =0x030013C0
	ldr r3, [r0]
	ldrb r2, [r3, #1]
	adds r4, r0, #0
	cmp r2, #1
	beq _0801764E
	cmp r2, #1
	bgt _0801763C
	cmp r2, #0
	beq _08017642
	b _08017694
	.align 2, 0
_08017638: .4byte 0x030013C0
_0801763C:
	cmp r2, #2
	beq _0801768A
	b _08017694
_08017642:
	bl sub_08017F58
	ldr r1, [r4]
	movs r0, #1
	strb r0, [r1, #1]
	b _08017694
_0801764E:
	adds r0, r3, #0
	adds r0, #0x59
	ldrb r0, [r0]
	cmp r0, #0
	bne _08017694
	ldr r0, _08017678 @ =0x03004470
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	adds r1, r3, #0
	adds r1, #0x78
	lsrs r0, r0, #0x1d
	ldrb r1, [r1]
	adds r1, r0, r1
	cmp r1, #6
	ble _0801767C
	adds r1, r3, #0
	adds r1, #0x76
	movs r0, #7
	strb r0, [r1]
	b _08017682
	.align 2, 0
_08017678: .4byte 0x03004470
_0801767C:
	adds r0, r3, #0
	adds r0, #0x76
	strb r1, [r0]
_08017682:
	ldr r1, [r4]
	movs r0, #2
	strb r0, [r1, #1]
	b _08017694
_0801768A:
	bl sub_080191B8
	movs r0, #2
	bl sub_080175A4
_08017694:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0801769C
sub_0801769C: @ 0x0801769C
	push {r4, lr}
	ldr r4, _080176B4 @ =0x030013C0
	ldr r1, [r4]
	ldrb r0, [r1, #1]
	cmp r0, #1
	beq _080176CA
	cmp r0, #1
	bgt _080176B8
	cmp r0, #0
	beq _080176BE
	b _08017706
	.align 2, 0
_080176B4: .4byte 0x030013C0
_080176B8:
	cmp r0, #2
	beq _08017700
	b _08017706
_080176BE:
	bl sub_080177AC
	ldr r1, [r4]
	movs r0, #1
	strb r0, [r1, #1]
	b _08017706
_080176CA:
	adds r0, r1, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, #0
	bne _08017706
	ldr r3, _080176FC @ =0x03004470
	adds r0, r1, #0
	adds r0, #0x76
	ldrb r1, [r0]
	movs r0, #7
	ands r1, r0
	lsls r1, r1, #2
	ldrb r2, [r3]
	movs r0, #0x1d
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	bl sub_0801919C
	ldr r1, [r4]
	movs r0, #2
	strb r0, [r1, #1]
	b _08017706
	.align 2, 0
_080176FC: .4byte 0x03004470
_08017700:
	movs r0, #3
	bl sub_080175A4
_08017706:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0801770C
sub_0801770C: @ 0x0801770C
	push {r4, lr}
	ldr r4, _08017720 @ =0x030013C0
	ldr r1, [r4]
	ldrb r0, [r1, #1]
	cmp r0, #0
	beq _08017724
	cmp r0, #1
	beq _0801774C
	b _0801774E
	.align 2, 0
_08017720: .4byte 0x030013C0
_08017724:
	ldr r0, _08017744 @ =0x03004470
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1d
	cmp r0, #7
	bne _08017738
	ldr r0, _08017748 @ =0x030056F0
	movs r1, #5
	bl m4aMPlayFadeOut
_08017738:
	bl sub_0800B700
	ldr r1, [r4]
	movs r0, #1
	strb r0, [r1, #1]
	b _0801774E
	.align 2, 0
_08017744: .4byte 0x03004470
_08017748: .4byte 0x030056F0
_0801774C:
	strb r0, [r1, #6]
_0801774E:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08017754
sub_08017754: @ 0x08017754
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _08017788 @ =0x030013C0
	ldr r0, [r5]
	movs r1, #8
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	adds r6, r0, #0
	ldr r0, [r5]
	movs r1, #8
	ldrsh r0, [r0, r1]
	ldr r1, _0801778C @ =0x08080F24
	lsls r4, r4, #2
	adds r4, r4, r1
	ldr r1, [r4]
	bl sub_08007B84
	movs r0, #0
	strb r0, [r6]
	strh r0, [r6, #2]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08017788: .4byte 0x030013C0
_0801778C: .4byte 0x08080F24

	thumb_func_start sub_08017790
sub_08017790: @ 0x08017790
	push {lr}
	ldr r0, _080177A8 @ =0x030013C0
	ldr r0, [r0]
	adds r0, #0x58
	movs r1, #0
	strb r1, [r0]
	movs r0, #0
	bl sub_08017754
	pop {r0}
	bx r0
	.align 2, 0
_080177A8: .4byte 0x030013C0

	thumb_func_start sub_080177AC
sub_080177AC: @ 0x080177AC
	push {lr}
	ldr r0, _080177C4 @ =0x030013C0
	ldr r0, [r0]
	adds r0, #0x58
	movs r1, #1
	strb r1, [r0]
	movs r0, #1
	bl sub_08017754
	pop {r0}
	bx r0
	.align 2, 0
_080177C4: .4byte 0x030013C0

	thumb_func_start sub_080177C8
sub_080177C8: @ 0x080177C8
	push {r4, lr}
	ldr r4, _08017808 @ =0x030013C0
	ldr r0, [r4]
	adds r0, #0x58
	movs r1, #1
	strb r1, [r0]
	movs r0, #2
	bl sub_08017754
	ldr r0, [r4]
	ldr r1, [r0, #0x18]
	ldrb r0, [r1, #0x10]
	cmp r0, #1
	beq _08017800
	adds r0, r1, #0
	movs r1, #1
	bl sub_08009AFC
	ldr r0, [r4]
	ldr r0, [r0, #0x1c]
	movs r1, #0
	bl sub_08009AFC
	ldr r0, [r4]
	ldr r0, [r0, #0x1c]
	movs r1, #1
	bl sub_08009A34
_08017800:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08017808: .4byte 0x030013C0

	thumb_func_start sub_0801780C
sub_0801780C: @ 0x0801780C
	push {r4, lr}
	ldr r4, _0801784C @ =0x030013C0
	ldr r0, [r4]
	adds r0, #0x58
	movs r1, #1
	strb r1, [r0]
	movs r0, #3
	bl sub_08017754
	ldr r0, [r4]
	ldr r1, [r0, #0x18]
	ldrb r0, [r1, #0x10]
	cmp r0, #3
	beq _08017844
	adds r0, r1, #0
	movs r1, #3
	bl sub_08009AFC
	ldr r0, [r4]
	ldr r0, [r0, #0x1c]
	movs r1, #2
	bl sub_08009AFC
	ldr r0, [r4]
	ldr r0, [r0, #0x1c]
	movs r1, #1
	bl sub_08009A34
_08017844:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801784C: .4byte 0x030013C0

	thumb_func_start sub_08017850
sub_08017850: @ 0x08017850
	push {r4, lr}
	ldr r4, _08017890 @ =0x030013C0
	ldr r0, [r4]
	adds r0, #0x58
	movs r1, #1
	strb r1, [r0]
	movs r0, #4
	bl sub_08017754
	ldr r0, [r4]
	ldr r1, [r0, #0x18]
	ldrb r0, [r1, #0x10]
	cmp r0, #2
	beq _08017888
	adds r0, r1, #0
	movs r1, #2
	bl sub_08009AFC
	ldr r0, [r4]
	ldr r0, [r0, #0x1c]
	movs r1, #1
	bl sub_08009AFC
	ldr r0, [r4]
	ldr r0, [r0, #0x1c]
	movs r1, #1
	bl sub_08009A34
_08017888:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08017890: .4byte 0x030013C0

	thumb_func_start sub_08017894
sub_08017894: @ 0x08017894
	push {lr}
	ldr r0, _080178AC @ =0x030013C0
	ldr r0, [r0]
	adds r0, #0x58
	movs r1, #1
	strb r1, [r0]
	movs r0, #7
	bl sub_08017754
	pop {r0}
	bx r0
	.align 2, 0
_080178AC: .4byte 0x030013C0

	thumb_func_start sub_080178B0
sub_080178B0: @ 0x080178B0
	push {lr}
	ldr r0, _080178CC @ =0x030013C0
	ldr r0, [r0]
	adds r0, #0x58
	movs r1, #1
	strb r1, [r0]
	ldr r0, _080178D0 @ =0x00000175
	bl m4aSongNumStart
	movs r0, #5
	bl sub_08017754
	pop {r0}
	bx r0
	.align 2, 0
_080178CC: .4byte 0x030013C0
_080178D0: .4byte 0x00000175

	thumb_func_start sub_080178D4
sub_080178D4: @ 0x080178D4
	push {lr}
	ldr r0, _080178F0 @ =0x030013C0
	ldr r0, [r0]
	adds r0, #0x58
	movs r1, #1
	strb r1, [r0]
	ldr r0, _080178F4 @ =0x00000175
	bl m4aSongNumStart
	movs r0, #6
	bl sub_08017754
	pop {r0}
	bx r0
	.align 2, 0
_080178F0: .4byte 0x030013C0
_080178F4: .4byte 0x00000175

	thumb_func_start sub_080178F8
sub_080178F8: @ 0x080178F8
	push {r4, r5, r6, r7, lr}
	ldr r0, _08017924 @ =0x030013C0
	ldr r2, [r0]
	adds r5, r2, #0
	adds r5, #0x70
	movs r0, #0
	ldrsh r1, [r5, r0]
	ldr r0, _08017928 @ =0x08080B94
	mov ip, r0
	adds r0, r2, #0
	adds r0, #0x76
	ldrb r4, [r0]
	lsls r0, r4, #2
	add r0, ip
	ldrh r0, [r0]
	subs r0, #0x20
	cmp r1, r0
	blt _08017936
	bl sub_08017894
	b _08017A66
	.align 2, 0
_08017924: .4byte 0x030013C0
_08017928: .4byte 0x08080B94
_0801792C:
	lsls r0, r3, #0x18
	lsrs r0, r0, #0x18
	bl sub_08017F74
	b _08017976
_08017936:
	ldr r0, _080179B4 @ =0x03004470
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1d
	adds r3, r0, #1
	cmp r3, r4
	bge _08017976
	adds r0, r2, #0
	adds r0, #0x59
	ldrb r7, [r0]
	adds r6, r5, #0
	adds r5, r4, #0
	lsls r0, r3, #2
	mov r1, ip
	adds r4, r0, r1
_08017954:
	cmp r7, #0
	bne _0801796E
	movs r2, #0
	ldrsh r0, [r6, r2]
	adds r2, r0, #0
	adds r2, #0x10
	ldrh r1, [r4]
	subs r0, r1, #2
	cmp r2, r0
	blt _0801796E
	adds r0, r1, #2
	cmp r2, r0
	ble _0801792C
_0801796E:
	adds r4, #4
	adds r3, #1
	cmp r3, r5
	blt _08017954
_08017976:
	ldr r2, _080179B8 @ =0x08080CFC
	ldr r7, _080179BC @ =0x030013C0
	ldr r4, [r7]
	adds r0, r4, #0
	adds r0, #0x74
	ldrb r1, [r0]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r3, [r1]
	movs r0, #0x75
	adds r0, r0, r4
	mov ip, r0
	ldrb r6, [r0]
	lsls r2, r6, #3
	adds r0, r2, #0
	adds r0, #8
	adds r3, r3, r0
	ldr r5, [r1]
	adds r5, r5, r2
	ldrb r0, [r3]
	cmp r0, #5
	bne _080179C0
	movs r0, #0
	mov r1, ip
	strb r0, [r1]
	ldr r1, [r7]
	adds r1, #0x74
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	b _08017A66
	.align 2, 0
_080179B4: .4byte 0x03004470
_080179B8: .4byte 0x08080CFC
_080179BC: .4byte 0x030013C0
_080179C0:
	ldrh r0, [r3, #2]
	adds r1, r4, #0
	adds r1, #0x70
	movs r2, #0
	ldrsh r1, [r1, r2]
	cmp r0, r1
	bgt _08017A66
	adds r0, r6, #1
	mov r1, ip
	strb r0, [r1]
	ldr r1, [r7]
	ldrh r2, [r3, #2]
	adds r0, r1, #0
	adds r0, #0x70
	strh r2, [r0]
	ldrh r0, [r3, #4]
	adds r1, #0x72
	strh r0, [r1]
	ldrb r0, [r3]
	cmp r0, #4
	bhi _08017A66
	lsls r0, r0, #2
	ldr r1, _080179F4 @ =_080179F8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080179F4: .4byte _080179F8
_080179F8: @ jump table
	.4byte _08017A0C @ case 0
	.4byte _08017A3C @ case 1
	.4byte _08017A2C @ case 2
	.4byte _08017A5C @ case 3
	.4byte _08017A4C @ case 4
_08017A0C:
	bl sub_080177C8
	ldrb r0, [r5]
	subs r0, #3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _08017A66
	ldr r0, _08017A28 @ =0x0000016F
	bl m4aSongNumStart
	bl sub_08018F84
	b _08017A66
	.align 2, 0
_08017A28: .4byte 0x0000016F
_08017A2C:
	bl sub_0801780C
	ldrb r0, [r5]
	cmp r0, #2
	beq _08017A66
	bl sub_08018F84
	b _08017A66
_08017A3C:
	bl sub_08017850
	ldrb r0, [r5]
	cmp r0, #1
	beq _08017A66
	bl sub_08018F84
	b _08017A66
_08017A4C:
	ldr r0, _08017A58 @ =0x0000016F
	bl m4aSongNumStop
	bl sub_080178D4
	b _08017A66
	.align 2, 0
_08017A58: .4byte 0x0000016F
_08017A5C:
	ldr r0, _08017A6C @ =0x0000016F
	bl m4aSongNumStop
	bl sub_080178B0
_08017A66:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08017A6C: .4byte 0x0000016F

	thumb_func_start sub_08017A70
sub_08017A70: @ 0x08017A70
	push {r4, r5, lr}
	ldr r4, _08017ABC @ =0x030013C0
	ldr r0, [r4]
	mov ip, r0
	ldr r2, _08017AC0 @ =0x08080B94
	ldr r3, _08017AC4 @ =0x03004470
	ldrb r1, [r3]
	movs r0, #0x1c
	ands r0, r1
	adds r0, r0, r2
	ldrh r1, [r0]
	mov r0, ip
	adds r0, #0x70
	movs r5, #0
	strh r1, [r0]
	ldrb r1, [r3]
	movs r0, #0x1c
	ands r0, r1
	adds r2, #2
	adds r0, r0, r2
	ldrh r0, [r0]
	mov r1, ip
	adds r1, #0x72
	strh r0, [r1]
	ldrb r0, [r3]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1d
	adds r1, #2
	strb r0, [r1]
	ldr r0, [r4]
	adds r0, #0x75
	strb r5, [r0]
	bl sub_08017790
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08017ABC: .4byte 0x030013C0
_08017AC0: .4byte 0x08080B94
_08017AC4: .4byte 0x03004470

	thumb_func_start sub_08017AC8
sub_08017AC8: @ 0x08017AC8
	bx lr
	.align 2, 0

	thumb_func_start sub_08017ACC
sub_08017ACC: @ 0x08017ACC
	push {r4, r5, lr}
	bl sub_08007BD4
	adds r5, r0, #0
	ldrb r0, [r5]
	cmp r0, #0
	beq _08017AE0
	cmp r0, #1
	beq _08017B18
	b _08017B40
_08017AE0:
	ldr r0, _08017B10 @ =0x0000016F
	bl m4aSongNumStart
	ldr r4, _08017B14 @ =0x030013C0
	ldr r0, [r4]
	ldr r0, [r0, #0x18]
	movs r1, #1
	bl sub_08009AFC
	ldr r0, [r4]
	ldr r0, [r0, #0x1c]
	movs r1, #0
	bl sub_08009AFC
	ldr r0, [r4]
	ldr r0, [r0, #0x1c]
	movs r1, #1
	bl sub_08009A34
	bl sub_08017EA4
	movs r0, #1
	strb r0, [r5]
	b _08017B40
	.align 2, 0
_08017B10: .4byte 0x0000016F
_08017B14: .4byte 0x030013C0
_08017B18:
	ldr r0, _08017B48 @ =0x030013C0
	ldr r1, [r0]
	adds r1, #0x70
	ldr r2, _08017B4C @ =0x08080D8C
	ldrh r0, [r5, #2]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	ldrh r0, [r5, #2]
	adds r0, #1
	strh r0, [r5, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x1f
	bls _08017B40
	bl sub_080177C8
_08017B40:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08017B48: .4byte 0x030013C0
_08017B4C: .4byte 0x08080D8C

	thumb_func_start sub_08017B50
sub_08017B50: @ 0x08017B50
	push {lr}
	ldr r0, _08017B68 @ =0x030013C0
	ldr r1, [r0]
	adds r1, #0x70
	ldrh r0, [r1]
	adds r0, #4
	strh r0, [r1]
	bl sub_080178F8
	pop {r0}
	bx r0
	.align 2, 0
_08017B68: .4byte 0x030013C0

	thumb_func_start sub_08017B6C
sub_08017B6C: @ 0x08017B6C
	push {lr}
	ldr r0, _08017B8C @ =0x030013C0
	ldr r1, [r0]
	adds r2, r1, #0
	adds r2, #0x70
	ldrh r0, [r2]
	adds r0, #3
	strh r0, [r2]
	adds r1, #0x72
	ldrh r0, [r1]
	subs r0, #3
	strh r0, [r1]
	bl sub_080178F8
	pop {r0}
	bx r0
	.align 2, 0
_08017B8C: .4byte 0x030013C0

	thumb_func_start sub_08017B90
sub_08017B90: @ 0x08017B90
	push {lr}
	ldr r0, _08017BB0 @ =0x030013C0
	ldr r1, [r0]
	adds r2, r1, #0
	adds r2, #0x70
	ldrh r0, [r2]
	adds r0, #3
	strh r0, [r2]
	adds r1, #0x72
	ldrh r0, [r1]
	adds r0, #3
	strh r0, [r1]
	bl sub_080178F8
	pop {r0}
	bx r0
	.align 2, 0
_08017BB0: .4byte 0x030013C0

	thumb_func_start sub_08017BB4
sub_08017BB4: @ 0x08017BB4
	push {r4, r5, lr}
	bl sub_08007BD4
	adds r4, r0, #0
	ldr r5, _08017C34 @ =0x030013C0
	ldr r0, [r5]
	ldr r1, [r0, #0x18]
	ldrb r0, [r1, #0x10]
	cmp r0, #0
	beq _08017BE0
	adds r0, r1, #0
	movs r1, #0
	bl sub_08009AFC
	ldr r0, [r5]
	ldr r0, [r0, #0x1c]
	movs r1, #0
	bl sub_08009A34
	ldr r0, _08017C38 @ =0x0000016F
	bl m4aSongNumStop
_08017BE0:
	ldr r1, _08017C3C @ =0x08080CFC
	ldr r5, [r5]
	mov ip, r5
	mov r0, ip
	adds r0, #0x74
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r3, [r0]
	mov r0, ip
	adds r0, #0x75
	ldrb r0, [r0]
	lsls r0, r0, #3
	adds r3, r3, r0
	ldr r2, _08017C40 @ =0x08080DCC
	ldrh r0, [r4, #2]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrh r0, [r0]
	ldrh r1, [r3, #2]
	adds r0, r0, r1
	mov r1, ip
	adds r1, #0x70
	strh r0, [r1]
	ldrh r0, [r4, #2]
	lsls r0, r0, #2
	adds r2, #2
	adds r0, r0, r2
	ldrh r0, [r0]
	ldrh r3, [r3, #4]
	adds r0, r0, r3
	adds r1, #2
	strh r0, [r1]
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	bl sub_080178F8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08017C34: .4byte 0x030013C0
_08017C38: .4byte 0x0000016F
_08017C3C: .4byte 0x08080CFC
_08017C40: .4byte 0x08080DCC

	thumb_func_start sub_08017C44
sub_08017C44: @ 0x08017C44
	push {r4, r5, r6, r7, lr}
	bl sub_08007BD4
	adds r4, r0, #0
	ldr r1, _08017C78 @ =0x08080CFC
	ldr r7, _08017C7C @ =0x030013C0
	ldr r3, [r7]
	adds r0, r3, #0
	adds r0, #0x74
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r5, [r0]
	adds r0, r3, #0
	adds r0, #0x75
	ldrb r0, [r0]
	lsls r0, r0, #3
	adds r5, r5, r0
	ldrb r6, [r4]
	cmp r6, #1
	beq _08017CDC
	cmp r6, #1
	bgt _08017C80
	cmp r6, #0
	beq _08017C86
	b _08017D48
	.align 2, 0
_08017C78: .4byte 0x08080CFC
_08017C7C: .4byte 0x030013C0
_08017C80:
	cmp r6, #2
	beq _08017D1C
	b _08017D48
_08017C86:
	ldr r0, [r3, #0x18]
	movs r1, #0
	bl sub_08009AFC
	ldr r0, [r7]
	ldr r0, [r0, #0x1c]
	movs r1, #0
	bl sub_08009A34
	ldr r3, [r7]
	ldr r2, _08017CD8 @ =0x08080E30
	ldrh r0, [r4, #2]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrh r0, [r0]
	ldrh r1, [r5, #2]
	adds r0, r0, r1
	adds r1, r3, #0
	adds r1, #0x70
	strh r0, [r1]
	ldrh r0, [r4, #2]
	lsls r0, r0, #2
	adds r2, #2
	adds r0, r0, r2
	ldrh r0, [r0]
	ldrh r5, [r5, #4]
	adds r0, r0, r5
	adds r3, #0x72
	strh r0, [r3]
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x26
	bls _08017D48
	strh r6, [r4, #2]
	movs r0, #1
	strb r0, [r4]
	b _08017D48
	.align 2, 0
_08017CD8: .4byte 0x08080E30
_08017CDC:
	adds r1, r3, #0
	adds r1, #0x72
	ldrh r0, [r1]
	subs r0, #4
	strh r0, [r1]
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x27
	bls _08017D48
	movs r0, #0
	strh r0, [r4, #2]
	movs r0, #2
	strb r0, [r4]
	ldr r0, [r7]
	ldr r0, [r0, #0x18]
	movs r1, #1
	bl sub_08009AFC
	ldr r0, [r7]
	ldr r0, [r0, #0x1c]
	movs r1, #0
	bl sub_08009AFC
	ldr r0, [r7]
	ldr r0, [r0, #0x1c]
	movs r1, #1
	bl sub_08009A34
	b _08017D48
_08017D1C:
	ldr r2, _08017D54 @ =0x08080ECC
	ldrh r0, [r4, #2]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrh r0, [r0]
	ldrh r1, [r5, #2]
	adds r0, r0, r1
	adds r1, r3, #0
	adds r1, #0x70
	strh r0, [r1]
	ldrh r0, [r4, #2]
	lsls r0, r0, #2
	adds r2, #2
	adds r0, r0, r2
	ldrh r0, [r0]
	ldrh r5, [r5, #4]
	adds r0, r0, r5
	adds r1, #2
	strh r0, [r1]
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
_08017D48:
	bl sub_080178F8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08017D54: .4byte 0x08080ECC

	thumb_func_start sub_08017D58
sub_08017D58: @ 0x08017D58
	push {r4, r5, lr}
	bl sub_08007BD4
	adds r5, r0, #0
	ldrb r0, [r5]
	cmp r0, #1
	beq _08017DAE
	cmp r0, #1
	bgt _08017D70
	cmp r0, #0
	beq _08017D7A
	b _08017E54
_08017D70:
	cmp r0, #2
	beq _08017DF8
	cmp r0, #3
	beq _08017E50
	b _08017E54
_08017D7A:
	ldr r0, _08017D98 @ =0x0000016F
	bl m4aSongNumStop
	ldr r0, _08017D9C @ =0x030013C0
	ldr r0, [r0]
	adds r0, #0x76
	ldrb r0, [r0]
	cmp r0, #7
	beq _08017DA0
	movs r0, #0xb8
	lsls r0, r0, #1
	bl m4aSongNumStart
	b _08017DA6
	.align 2, 0
_08017D98: .4byte 0x0000016F
_08017D9C: .4byte 0x030013C0
_08017DA0:
	ldr r0, _08017DE8 @ =0x00000171
	bl m4aSongNumStart
_08017DA6:
	bl sub_08018F84
	movs r0, #1
	strb r0, [r5]
_08017DAE:
	ldr r0, _08017DEC @ =0x030013C0
	ldr r2, [r0]
	ldr r0, _08017DF0 @ =0x08080B94
	adds r1, r2, #0
	adds r1, #0x76
	ldrb r1, [r1]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r3, _08017DF4 @ =0x08080EF4
	ldrh r0, [r5, #2]
	lsls r0, r0, #1
	adds r0, r0, r3
	ldrh r0, [r0]
	ldrh r1, [r1]
	adds r0, r0, r1
	adds r2, #0x70
	strh r0, [r2]
	ldrh r0, [r5, #2]
	adds r0, #1
	strh r0, [r5, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x17
	bls _08017E54
	movs r0, #0
	strh r0, [r5, #2]
	movs r0, #2
	strb r0, [r5]
	b _08017E54
	.align 2, 0
_08017DE8: .4byte 0x00000171
_08017DEC: .4byte 0x030013C0
_08017DF0: .4byte 0x08080B94
_08017DF4: .4byte 0x08080EF4
_08017DF8:
	bl sub_08017E98
	ldr r4, _08017E48 @ =0x030013C0
	ldr r3, [r4]
	ldr r2, _08017E4C @ =0x08080B94
	movs r0, #0x76
	adds r0, r0, r3
	mov ip, r0
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrh r1, [r0]
	adds r0, r3, #0
	adds r0, #0x70
	strh r1, [r0]
	mov r1, ip
	ldrb r0, [r1]
	lsls r0, r0, #2
	adds r2, #2
	adds r0, r0, r2
	ldrh r0, [r0]
	adds r1, r3, #0
	adds r1, #0x72
	strh r0, [r1]
	ldr r0, [r3, #0x18]
	movs r1, #0
	bl sub_08009AFC
	ldr r0, [r4]
	ldr r0, [r0, #0x1c]
	movs r1, #0
	bl sub_08009A34
	movs r0, #0x3c
	bl sub_08007AC0
	movs r0, #3
	strb r0, [r5]
	b _08017E54
	.align 2, 0
_08017E48: .4byte 0x030013C0
_08017E4C: .4byte 0x08080B94
_08017E50:
	bl sub_08017790
_08017E54:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08017E5C
sub_08017E5C: @ 0x08017E5C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _08017E90 @ =0x030013C0
	ldr r0, [r5]
	movs r1, #0xa
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	adds r6, r0, #0
	ldr r0, [r5]
	movs r1, #0xa
	ldrsh r0, [r0, r1]
	ldr r1, _08017E94 @ =0x08080F44
	lsls r4, r4, #2
	adds r4, r4, r1
	ldr r1, [r4]
	bl sub_08007B84
	movs r0, #0
	strb r0, [r6]
	strh r0, [r6, #2]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08017E90: .4byte 0x030013C0
_08017E94: .4byte 0x08080F44

	thumb_func_start sub_08017E98
sub_08017E98: @ 0x08017E98
	push {lr}
	movs r0, #0
	bl sub_08017E5C
	pop {r0}
	bx r0

	thumb_func_start sub_08017EA4
sub_08017EA4: @ 0x08017EA4
	push {lr}
	movs r0, #1
	bl sub_08017E5C
	pop {r0}
	bx r0

	thumb_func_start sub_08017EB0
sub_08017EB0: @ 0x08017EB0
	push {lr}
	ldr r0, _08017ED4 @ =0x030013C0
	ldr r1, [r0]
	adds r0, r1, #0
	adds r0, #0x70
	movs r2, #0
	ldrsh r0, [r0, r2]
	subs r0, #0x78
	adds r1, #0x72
	movs r2, #0
	ldrsh r1, [r1, r2]
	subs r1, #0x50
	bl sub_0800B278
	bl sub_08017EA4
	pop {r0}
	bx r0
	.align 2, 0
_08017ED4: .4byte 0x030013C0

	thumb_func_start sub_08017ED8
sub_08017ED8: @ 0x08017ED8
	bx lr
	.align 2, 0

	thumb_func_start sub_08017EDC
sub_08017EDC: @ 0x08017EDC
	push {lr}
	ldr r0, _08017EFC @ =0x030013C0
	ldr r1, [r0]
	adds r0, r1, #0
	adds r0, #0x70
	movs r2, #0
	ldrsh r0, [r0, r2]
	subs r0, #0x78
	adds r1, #0x72
	movs r2, #0
	ldrsh r1, [r1, r2]
	subs r1, #0x50
	bl sub_0800B278
	pop {r0}
	bx r0
	.align 2, 0
_08017EFC: .4byte 0x030013C0

	thumb_func_start sub_08017F00
sub_08017F00: @ 0x08017F00
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _08017F34 @ =0x030013C0
	ldr r0, [r5]
	movs r1, #0xc
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	adds r6, r0, #0
	ldr r0, [r5]
	movs r1, #0xc
	ldrsh r0, [r0, r1]
	ldr r1, _08017F38 @ =0x08080F8C
	lsls r4, r4, #2
	adds r4, r4, r1
	ldr r1, [r4]
	bl sub_08007B84
	movs r0, #0
	strb r0, [r6, #1]
	strh r0, [r6, #2]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08017F34: .4byte 0x030013C0
_08017F38: .4byte 0x08080F8C

	thumb_func_start sub_08017F3C
sub_08017F3C: @ 0x08017F3C
	push {lr}
	ldr r0, _08017F54 @ =0x030013C0
	ldr r0, [r0]
	adds r0, #0x59
	movs r1, #0
	strb r1, [r0]
	movs r0, #0
	bl sub_08017F00
	pop {r0}
	bx r0
	.align 2, 0
_08017F54: .4byte 0x030013C0

	thumb_func_start sub_08017F58
sub_08017F58: @ 0x08017F58
	push {lr}
	ldr r0, _08017F70 @ =0x030013C0
	ldr r0, [r0]
	adds r0, #0x59
	movs r1, #1
	strb r1, [r0]
	movs r0, #1
	bl sub_08017F00
	pop {r0}
	bx r0
	.align 2, 0
_08017F70: .4byte 0x030013C0

	thumb_func_start sub_08017F74
sub_08017F74: @ 0x08017F74
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _08017FA0 @ =0x030013C0
	ldr r0, [r5]
	movs r1, #0xc
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	strb r4, [r0]
	ldr r0, [r5]
	adds r0, #0x59
	movs r1, #1
	strb r1, [r0]
	movs r0, #2
	bl sub_08017F00
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08017FA0: .4byte 0x030013C0

	thumb_func_start sub_08017FA4
sub_08017FA4: @ 0x08017FA4
	push {r4, r5, lr}
	movs r4, #0
	ldr r5, _08017FC4 @ =0x030013C0
_08017FAA:
	ldr r0, [r5]
	lsls r1, r4, #2
	adds r0, #0x20
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_08009A00
	adds r4, #1
	cmp r4, #7
	ble _08017FAA
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08017FC4: .4byte 0x030013C0

	thumb_func_start sub_08017FC8
sub_08017FC8: @ 0x08017FC8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	movs r0, #0
	mov r8, r0
	ldr r1, _08018070 @ =0x030013C0
	mov sb, r1
	ldr r7, _08018074 @ =0x08080B94
_08017FDA:
	movs r0, #2
	movs r1, #0xff
	bl sub_080099E0
	adds r5, r0, #0
	movs r1, #1
	bl sub_08009A34
	bl sub_0800B2BC
	mov r1, r8
	lsls r6, r1, #2
	ldrh r4, [r7]
	subs r4, #0x10
	subs r4, r4, r0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	bl sub_0800B2C8
	ldrh r2, [r7, #2]
	subs r2, #0x42
	subs r2, r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08009A70
	mov r1, sb
	ldr r0, [r1]
	ldr r1, [r0, #0x5c]
	adds r0, r5, #0
	bl sub_08009A78
	adds r0, r5, #0
	movs r1, #3
	bl sub_08009AB4
	adds r0, r5, #0
	ldr r1, _08018078 @ =0x080F1BB4
	ldr r2, _0801807C @ =0x080F1B4C
	movs r3, #7
	bl sub_08009ACC
	adds r0, r5, #0
	movs r1, #0
	bl sub_08009B40
	mov r1, sb
	ldr r0, [r1]
	adds r0, #0x20
	adds r0, r0, r6
	str r5, [r0]
	adds r7, #4
	movs r0, #1
	add r8, r0
	mov r1, r8
	cmp r1, #7
	ble _08017FDA
	ldr r0, _08018070 @ =0x030013C0
	ldr r0, [r0]
	movs r1, #0xc
	ldrsh r0, [r0, r1]
	ldr r1, _08018080 @ =sub_08017FA4
	bl sub_08007BA0
	bl sub_08017F3C
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08018070: .4byte 0x030013C0
_08018074: .4byte 0x08080B94
_08018078: .4byte 0x080F1BB4
_0801807C: .4byte 0x080F1B4C
_08018080: .4byte sub_08017FA4

	thumb_func_start sub_08018084
sub_08018084: @ 0x08018084
	push {r4, r5, r6, r7, lr}
	movs r7, #0
	ldr r6, _080180C8 @ =0x08080B94
_0801808A:
	ldr r0, _080180CC @ =0x030013C0
	ldr r0, [r0]
	lsls r1, r7, #2
	adds r0, #0x20
	adds r0, r0, r1
	ldr r5, [r0]
	bl sub_0800B2BC
	ldrh r4, [r6]
	subs r4, #0x10
	subs r4, r4, r0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	bl sub_0800B2C8
	ldrh r2, [r6, #2]
	subs r2, #0x42
	subs r2, r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08009A70
	adds r6, #4
	adds r7, #1
	cmp r7, #7
	ble _0801808A
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080180C8: .4byte 0x08080B94
_080180CC: .4byte 0x030013C0

	thumb_func_start sub_080180D0
sub_080180D0: @ 0x080180D0
	push {r4, r5, r6, lr}
	bl sub_08007BD4
	adds r5, r0, #0
	ldrb r0, [r5, #1]
	cmp r0, #1
	beq _080180FA
	cmp r0, #1
	bgt _080180E8
	cmp r0, #0
	beq _080180F4
	b _0801823E
_080180E8:
	cmp r0, #2
	beq _08018178
	cmp r0, #3
	bne _080180F2
	b _080181F0
_080180F2:
	b _0801823E
_080180F4:
	movs r0, #1
	strb r0, [r5, #1]
	b _0801823E
_080180FA:
	movs r0, #5
	bl sub_0800B828
	ldr r6, _0801816C @ =0x030013C0
	ldr r4, [r6]
	adds r4, #0x78
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	subs r0, #1
	ldrb r1, [r4]
	adds r0, r0, r1
	adds r0, #1
	movs r1, #6
	bl __modsi3
	adds r0, #1
	strb r0, [r4]
	movs r0, #0xb9
	lsls r0, r0, #1
	bl m4aSongNumStart
	ldr r1, _08018170 @ =0x08080F4C
	ldrh r0, [r5, #2]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	bl sub_08007AC0
	ldrh r0, [r5, #2]
	adds r0, #1
	strh r0, [r5, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x1f
	bls _08018148
	movs r0, #2
	strb r0, [r5, #1]
	movs r0, #0
	strh r0, [r5, #2]
_08018148:
	ldr r2, [r6]
	ldr r0, _08018174 @ =0x03004470
	ldrb r0, [r0]
	movs r1, #0x1c
	ands r1, r0
	adds r0, r2, #0
	adds r0, #0x20
	adds r0, r0, r1
	ldr r0, [r0]
	adds r2, #0x78
	ldrb r1, [r2]
	subs r1, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl sub_08009AFC
	b _0801823E
	.align 2, 0
_0801816C: .4byte 0x030013C0
_08018170: .4byte 0x08080F4C
_08018174: .4byte 0x03004470
_08018178:
	ldr r6, _080181E4 @ =0x030013C0
	ldr r1, [r6]
	ldr r4, _080181E8 @ =0x03004470
	ldrb r2, [r4]
	movs r0, #0x1c
	ands r0, r2
	adds r1, #0x20
	adds r1, r1, r0
	ldr r0, [r1]
	ldrh r1, [r5, #2]
	lsrs r1, r1, #3
	movs r3, #1
	movs r2, #1
	ands r1, r2
	eors r1, r3
	bl sub_08009A34
	ldrh r1, [r5, #2]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	bne _080181AA
	ldr r0, _080181EC @ =0x00000173
	bl m4aSongNumStart
_080181AA:
	ldrh r0, [r5, #2]
	adds r0, #1
	strh r0, [r5, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x5f
	bls _0801823E
	movs r0, #0
	strh r0, [r5, #2]
	movs r0, #3
	strb r0, [r5, #1]
	ldr r1, [r6]
	ldrb r2, [r4]
	movs r0, #0x1c
	ands r0, r2
	adds r1, #0x20
	adds r1, r1, r0
	ldr r0, [r1]
	movs r1, #1
	bl sub_08009A34
	ldr r0, _080181EC @ =0x00000173
	bl m4aSongNumStart
	movs r0, #0x30
	bl sub_08007AC0
	b _0801823E
	.align 2, 0
_080181E4: .4byte 0x030013C0
_080181E8: .4byte 0x03004470
_080181EC: .4byte 0x00000173
_080181F0:
	movs r5, #0
	movs r4, #0
_080181F4:
	ldr r0, _0801821C @ =0x030013C0
	ldr r2, [r0]
	adds r1, r2, #0
	adds r1, #0x78
	ldr r0, _08018220 @ =0x03004470
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1d
	ldrb r1, [r1]
	adds r0, r0, r1
	cmp r5, r0
	bge _08018224
	adds r0, r2, #0
	adds r0, #0x20
	adds r0, r0, r4
	ldr r0, [r0]
	movs r1, #6
	bl sub_08009AFC
	b _08018232
	.align 2, 0
_0801821C: .4byte 0x030013C0
_08018220: .4byte 0x03004470
_08018224:
	adds r0, r2, #0
	adds r0, #0x20
	adds r0, r0, r4
	ldr r0, [r0]
	movs r1, #7
	bl sub_08009AFC
_08018232:
	adds r4, #4
	adds r5, #1
	cmp r5, #6
	ble _080181F4
	bl sub_08017F3C
_0801823E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08018244
sub_08018244: @ 0x08018244
	push {r4, r5, r6, r7, lr}
	bl sub_08007BD4
	adds r5, r0, #0
	ldrb r4, [r5, #1]
	cmp r4, #1
	beq _08018292
	cmp r4, #1
	bgt _0801825C
	cmp r4, #0
	beq _08018262
	b _0801830E
_0801825C:
	cmp r4, #2
	beq _080182E4
	b _0801830E
_08018262:
	ldr r0, _080182DC @ =0x030013C0
	ldr r3, [r0]
	ldrb r1, [r5]
	lsls r2, r1, #2
	adds r0, r3, #0
	adds r0, #0x20
	adds r0, r0, r2
	ldr r0, [r0]
	adds r3, #0x78
	ldr r2, _080182E0 @ =0x03004470
	ldrb r2, [r2]
	lsls r2, r2, #0x1b
	lsrs r2, r2, #0x1d
	subs r1, r1, r2
	mvns r1, r1
	ldrb r3, [r3]
	adds r1, r1, r3
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl sub_08009AFC
	movs r0, #1
	strb r0, [r5, #1]
	strh r4, [r5, #2]
_08018292:
	ldr r0, _080182DC @ =0x030013C0
	ldr r1, [r0]
	ldrb r0, [r5]
	lsls r0, r0, #2
	adds r1, #0x20
	adds r1, r1, r0
	ldr r0, [r1]
	ldrh r1, [r5, #2]
	lsrs r1, r1, #2
	movs r3, #1
	movs r2, #1
	ands r1, r2
	eors r1, r3
	bl sub_08009A34
	ldrh r1, [r5, #2]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _080182C2
	movs r0, #0xb9
	lsls r0, r0, #1
	bl m4aSongNumStart
_080182C2:
	ldrh r0, [r5, #2]
	adds r0, #1
	strh r0, [r5, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x17
	bls _0801830E
	movs r0, #0
	strh r0, [r5, #2]
	movs r0, #2
	strb r0, [r5, #1]
	b _0801830E
	.align 2, 0
_080182DC: .4byte 0x030013C0
_080182E0: .4byte 0x03004470
_080182E4:
	ldr r4, _08018350 @ =0x030013C0
	ldr r1, [r4]
	ldrb r0, [r5]
	lsls r0, r0, #2
	adds r1, #0x20
	adds r1, r1, r0
	ldr r0, [r1]
	movs r1, #6
	bl sub_08009AFC
	ldr r1, [r4]
	ldrb r0, [r5]
	lsls r0, r0, #2
	adds r1, #0x20
	adds r1, r1, r0
	ldr r0, [r1]
	movs r1, #1
	bl sub_08009A34
	bl sub_08017F3C
_0801830E:
	movs r7, #0
	ldr r6, _08018354 @ =0x08080B94
_08018312:
	ldr r0, _08018350 @ =0x030013C0
	ldr r0, [r0]
	lsls r1, r7, #2
	adds r0, #0x20
	adds r0, r0, r1
	ldr r5, [r0]
	bl sub_0800B2BC
	ldrh r4, [r6]
	subs r4, #0x10
	subs r4, r4, r0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	bl sub_0800B2C8
	ldrh r2, [r6, #2]
	subs r2, #0x42
	subs r2, r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08009A70
	adds r6, #4
	adds r7, #1
	cmp r7, #7
	ble _08018312
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08018350: .4byte 0x030013C0
_08018354: .4byte 0x08080B94

	thumb_func_start sub_08018358
sub_08018358: @ 0x08018358
	push {lr}
	ldr r0, _08018368 @ =0x030013C0
	ldr r0, [r0]
	ldr r0, [r0, #0x18]
	bl sub_08009A00
	pop {r0}
	bx r0
	.align 2, 0
_08018368: .4byte 0x030013C0

	thumb_func_start sub_0801836C
sub_0801836C: @ 0x0801836C
	push {r4, r5, r6, lr}
	movs r0, #2
	movs r1, #0x80
	bl sub_080099E0
	adds r6, r0, #0
	movs r1, #1
	bl sub_08009A34
	bl sub_0800B2BC
	ldr r5, _08018454 @ =0x030013C0
	ldr r1, [r5]
	adds r1, #0x70
	ldrh r4, [r1]
	subs r4, r4, r0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	bl sub_0800B2C8
	ldr r1, [r5]
	adds r1, #0x72
	ldrh r2, [r1]
	subs r2, r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_08009A70
	ldr r1, _08018458 @ =0x06010000
	adds r0, r6, #0
	bl sub_08009A78
	ldr r0, [r5]
	ldr r1, [r0, #0x6c]
	adds r0, r6, #0
	movs r2, #0
	bl sub_08009BBC
	adds r0, r6, #0
	movs r1, #0
	bl sub_08009AB4
	ldr r1, _0801845C @ =0x08080D30
	ldr r0, _08018460 @ =0x03004470
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1c
	adds r1, r0, r1
	ldr r1, [r1]
	ldr r2, _08018464 @ =0x08080D50
	adds r0, r0, r2
	ldr r2, [r0]
	adds r0, r6, #0
	movs r3, #0
	bl sub_08009ACC
	adds r0, r6, #0
	movs r1, #0xff
	bl sub_08009B40
	ldr r0, [r5]
	str r6, [r0, #0x18]
	movs r0, #2
	movs r1, #0x81
	bl sub_080099E0
	adds r6, r0, #0
	movs r1, #0
	bl sub_08009A34
	ldr r0, [r5]
	ldr r0, [r0, #0x18]
	movs r2, #6
	ldrsh r1, [r0, r2]
	movs r3, #8
	ldrsh r2, [r0, r3]
	adds r0, r6, #0
	bl sub_08009A70
	ldr r0, [r5]
	ldr r1, [r0, #0x60]
	adds r0, r6, #0
	bl sub_08009A78
	adds r0, r6, #0
	movs r1, #2
	bl sub_08009AB4
	ldr r1, _08018468 @ =0x080FC980
	ldr r2, _0801846C @ =0x080FC934
	adds r0, r6, #0
	movs r3, #0
	bl sub_08009ACC
	adds r0, r6, #0
	movs r1, #0xff
	bl sub_08009B40
	ldr r0, [r5]
	str r6, [r0, #0x1c]
	movs r1, #0xe
	ldrsh r0, [r0, r1]
	ldr r1, _08018470 @ =sub_08018358
	bl sub_08007BA0
	ldr r0, [r5]
	movs r2, #0xe
	ldrsh r0, [r0, r2]
	ldr r1, _08018474 @ =sub_08018478
	bl sub_08007B84
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08018454: .4byte 0x030013C0
_08018458: .4byte 0x06010000
_0801845C: .4byte 0x08080D30
_08018460: .4byte 0x03004470
_08018464: .4byte 0x08080D50
_08018468: .4byte 0x080FC980
_0801846C: .4byte 0x080FC934
_08018470: .4byte sub_08018358
_08018474: .4byte sub_08018478

	thumb_func_start sub_08018478
sub_08018478: @ 0x08018478
	push {r4, r5, r6, lr}
	ldr r5, _080184C0 @ =0x030013C0
	ldr r0, [r5]
	ldr r6, [r0, #0x18]
	bl sub_0800B2BC
	ldr r1, [r5]
	adds r1, #0x70
	ldrh r4, [r1]
	subs r4, r4, r0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	bl sub_0800B2C8
	ldr r1, [r5]
	adds r1, #0x72
	ldrh r2, [r1]
	subs r2, r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_08009A70
	ldr r1, [r5]
	ldr r0, [r1, #0x1c]
	ldr r2, [r1, #0x18]
	movs r3, #6
	ldrsh r1, [r2, r3]
	movs r3, #8
	ldrsh r2, [r2, r3]
	bl sub_08009A70
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080184C0: .4byte 0x030013C0

	thumb_func_start sub_080184C4
sub_080184C4: @ 0x080184C4
	bx lr
	.align 2, 0

	thumb_func_start sub_080184C8
sub_080184C8: @ 0x080184C8
	push {r4, lr}
	ldr r4, _08018504 @ =0x030013C0
	ldr r0, [r4]
	ldr r0, [r0, #0x40]
	bl sub_08009A00
	ldr r0, [r4]
	ldr r0, [r0, #0x44]
	bl sub_08009A00
	ldr r0, [r4]
	ldr r0, [r0, #0x48]
	bl sub_08009A00
	ldr r0, [r4]
	ldr r0, [r0, #0x4c]
	bl sub_08009A00
	ldr r0, [r4]
	ldr r0, [r0, #0x50]
	bl sub_08009A00
	ldr r0, [r4]
	ldr r0, [r0, #0x54]
	bl sub_08009A00
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08018504: .4byte 0x030013C0

	thumb_func_start sub_08018508
sub_08018508: @ 0x08018508
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	bl sub_08007BD4
	ldr r2, _08018638 @ =0x030013C0
	ldr r1, [r2]
	adds r1, #0x70
	ldrh r1, [r1]
	strh r1, [r0]
	movs r7, #0
	adds r5, r2, #0
_08018522:
	movs r0, #2
	movs r1, #0x40
	bl sub_080099E0
	adds r6, r0, #0
	movs r1, #1
	bl sub_08009A34
	bl sub_0800B2BC
	ldr r2, _0801863C @ =0x08080D1C
	lsls r1, r7, #1
	adds r1, r1, r2
	ldrh r4, [r1]
	subs r4, r4, r0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	bl sub_0800B2C8
	movs r2, #0xd8
	subs r2, r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_08009A70
	ldr r0, [r5]
	ldr r1, [r0, #0x5c]
	adds r0, r6, #0
	bl sub_08009A78
	adds r0, r6, #0
	movs r1, #3
	bl sub_08009AB4
	adds r0, r6, #0
	ldr r1, _08018640 @ =0x080F1BB4
	ldr r2, _08018644 @ =0x080F1B4C
	movs r3, #0xd
	bl sub_08009ACC
	adds r0, r6, #0
	movs r1, #0xff
	bl sub_08009B40
	ldr r0, [r5]
	lsls r1, r7, #2
	adds r0, #0x40
	adds r0, r0, r1
	str r6, [r0]
	adds r7, #1
	cmp r7, #1
	ble _08018522
	movs r7, #0
	ldr r0, _08018638 @ =0x030013C0
	mov sb, r0
	ldr r1, _08018648 @ =0x08080D60
	mov r8, r1
_08018598:
	movs r0, #3
	movs r1, #0x80
	bl sub_080099E0
	adds r6, r0, #0
	movs r1, #1
	bl sub_08009A34
	bl sub_0800B2BC
	lsls r5, r7, #2
	mov r1, r8
	ldrh r4, [r1]
	subs r4, r4, r0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	bl sub_0800B2C8
	mov r1, r8
	ldrh r2, [r1, #2]
	subs r2, r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_08009A70
	mov r1, sb
	ldr r0, [r1]
	ldr r1, [r0, #0x64]
	adds r0, r6, #0
	bl sub_08009A78
	adds r0, r6, #0
	movs r1, #7
	bl sub_08009AB4
	ldr r1, _0801864C @ =0x08080D70
	lsls r0, r7, #1
	adds r0, r0, r1
	ldrb r3, [r0]
	adds r0, r6, #0
	ldr r1, _08018650 @ =0x080F9C24
	ldr r2, _08018654 @ =0x080F9BE0
	bl sub_08009ACC
	adds r0, r6, #0
	movs r1, #0xff
	bl sub_08009B40
	mov r1, sb
	ldr r0, [r1]
	adds r0, #0x48
	adds r0, r0, r5
	str r6, [r0]
	movs r0, #4
	add r8, r0
	adds r7, #1
	cmp r7, #3
	ble _08018598
	ldr r4, _08018638 @ =0x030013C0
	ldr r0, [r4]
	movs r1, #0x10
	ldrsh r0, [r0, r1]
	ldr r1, _08018658 @ =sub_080184C8
	bl sub_08007BA0
	ldr r0, [r4]
	movs r1, #0x10
	ldrsh r0, [r0, r1]
	ldr r1, _0801865C @ =sub_08018660
	bl sub_08007B84
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08018638: .4byte 0x030013C0
_0801863C: .4byte 0x08080D1C
_08018640: .4byte 0x080F1BB4
_08018644: .4byte 0x080F1B4C
_08018648: .4byte 0x08080D60
_0801864C: .4byte 0x08080D70
_08018650: .4byte 0x080F9C24
_08018654: .4byte 0x080F9BE0
_08018658: .4byte sub_080184C8
_0801865C: .4byte sub_08018660

	thumb_func_start sub_08018660
sub_08018660: @ 0x08018660
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	bl sub_08007BD4
	adds r5, r0, #0
	ldr r4, _08018734 @ =0x08080F98
	movs r6, #0xd
_08018670:
	movs r1, #0
	ldrsh r0, [r5, r1]
	ldrh r1, [r4]
	cmp r0, r1
	bge _0801868E
	ldr r0, _08018738 @ =0x030013C0
	ldr r0, [r0]
	adds r0, #0x70
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r1, r0
	bgt _0801868E
	ldr r0, [r4, #4]
	bl call_via_r0
_0801868E:
	subs r6, #1
	adds r4, #8
	cmp r6, #0
	bge _08018670
	ldr r0, _08018738 @ =0x030013C0
	mov r8, r0
	ldr r1, [r0]
	adds r0, r1, #0
	adds r0, #0x70
	ldrh r0, [r0]
	strh r0, [r5]
	ldr r6, [r1, #0x40]
	bl sub_0800B2BC
	ldr r1, _0801873C @ =0x000008F8
	adds r4, r1, #0
	subs r4, r4, r0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	bl sub_0800B2C8
	adds r2, r0, #0
	movs r5, #0xd8
	subs r2, r5, r2
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_08009A70
	mov r2, r8
	ldr r0, [r2]
	ldr r6, [r0, #0x44]
	bl sub_0800B2BC
	ldr r1, _08018740 @ =0x00000968
	adds r4, r1, #0
	subs r4, r4, r0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	bl sub_0800B2C8
	subs r5, r5, r0
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_08009A70
	movs r6, #0
	ldr r7, _08018744 @ =0x08080D60
_080186F6:
	ldr r0, _08018738 @ =0x030013C0
	ldr r0, [r0]
	lsls r1, r6, #2
	adds r0, #0x48
	adds r0, r0, r1
	ldr r5, [r0]
	bl sub_0800B2BC
	ldrh r4, [r7]
	subs r4, r4, r0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	bl sub_0800B2C8
	ldrh r2, [r7, #2]
	subs r2, r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08009A70
	adds r7, #4
	adds r6, #1
	cmp r6, #3
	ble _080186F6
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08018734: .4byte 0x08080F98
_08018738: .4byte 0x030013C0
_0801873C: .4byte 0x000008F8
_08018740: .4byte 0x00000968
_08018744: .4byte 0x08080D60

	thumb_func_start sub_08018748
sub_08018748: @ 0x08018748
	push {r4, r5, r6, r7, lr}
	bl sub_08007BD4
	adds r6, r0, #0
	ldrb r7, [r6]
	cmp r7, #1
	beq _080187A4
	cmp r7, #1
	bgt _08018760
	cmp r7, #0
	beq _08018766
	b _080187EE
_08018760:
	cmp r7, #2
	beq _080187E4
	b _080187EE
_08018766:
	ldrh r0, [r6, #6]
	subs r0, #4
	strh r0, [r6, #6]
	ldr r5, [r6, #8]
	bl sub_0800B2BC
	ldrh r4, [r6, #4]
	subs r4, r4, r0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	bl sub_0800B2C8
	ldrh r2, [r6, #6]
	subs r2, r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08009A70
	ldrh r0, [r6, #2]
	adds r0, #1
	strh r0, [r6, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x27
	bls _080187EE
	strh r7, [r6, #2]
	movs r0, #1
	strb r0, [r6]
	b _080187EE
_080187A4:
	ldrh r0, [r6, #6]
	adds r0, #4
	strh r0, [r6, #6]
	ldr r5, [r6, #8]
	bl sub_0800B2BC
	ldrh r4, [r6, #4]
	subs r4, r4, r0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	bl sub_0800B2C8
	ldrh r2, [r6, #6]
	subs r2, r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08009A70
	ldrh r0, [r6, #2]
	adds r0, #1
	strh r0, [r6, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x27
	bls _080187EE
	movs r0, #0
	strh r0, [r6, #2]
	movs r0, #2
	strb r0, [r6]
	b _080187EE
_080187E4:
	ldr r0, [r6, #8]
	bl sub_08009A00
	bl sub_08007A64
_080187EE:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080187F4
sub_080187F4: @ 0x080187F4
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	ldr r0, _08018898 @ =sub_08018748
	movs r1, #0x45
	movs r2, #0
	bl sub_08007968
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl sub_08007BBC
	adds r6, r0, #0
	movs r0, #0
	strb r0, [r6]
	strh r0, [r6, #2]
	ldr r0, _0801889C @ =0x030013C0
	mov r8, r0
	ldr r0, [r0]
	adds r1, r0, #0
	adds r1, #0x70
	ldrh r1, [r1]
	strh r1, [r6, #4]
	adds r0, #0x72
	ldrh r0, [r0]
	adds r0, #0x60
	strh r0, [r6, #6]
	movs r0, #2
	movs r1, #0xff
	bl sub_080099E0
	adds r5, r0, #0
	movs r1, #1
	bl sub_08009A34
	bl sub_0800B2BC
	ldrh r4, [r6, #4]
	subs r4, r4, r0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	bl sub_0800B2C8
	ldrh r2, [r6, #6]
	subs r2, r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08009A70
	mov r1, r8
	ldr r0, [r1]
	ldr r1, [r0, #0x5c]
	adds r0, r5, #0
	bl sub_08009A78
	adds r0, r5, #0
	movs r1, #3
	bl sub_08009AB4
	ldr r1, _080188A0 @ =0x080F1BB4
	ldr r2, _080188A4 @ =0x080F1B4C
	adds r0, r5, #0
	movs r3, #0xf
	bl sub_08009ACC
	adds r0, r5, #0
	movs r1, #0xff
	bl sub_08009B40
	str r5, [r6, #8]
	movs r0, #0xbb
	lsls r0, r0, #1
	bl m4aSongNumStart
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08018898: .4byte sub_08018748
_0801889C: .4byte 0x030013C0
_080188A0: .4byte 0x080F1BB4
_080188A4: .4byte 0x080F1B4C

	thumb_func_start sub_080188A8
sub_080188A8: @ 0x080188A8
	push {r4, r5, r6, r7, lr}
	bl sub_08007BD4
	adds r7, r0, #0
	ldrb r0, [r7]
	cmp r0, #0
	beq _080188BC
	cmp r0, #1
	beq _08018954
	b _08018964
_080188BC:
	ldr r6, _080188F8 @ =0x030013C0
	ldr r0, [r6]
	adds r0, #0x72
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r0, _080188FC @ =0x00000121
	cmp r1, r0
	ble _08018900
	ldr r5, [r7, #4]
	bl sub_0800B2BC
	ldr r1, [r6]
	adds r1, #0x70
	ldrh r4, [r1]
	subs r4, r4, r0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	bl sub_0800B2C8
	movs r1, #0x84
	lsls r1, r1, #1
	adds r2, r1, #0
	subs r2, r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08009A70
	b _08018930
	.align 2, 0
_080188F8: .4byte 0x030013C0
_080188FC: .4byte 0x00000121
_08018900:
	ldr r5, [r7, #4]
	bl sub_0800B2BC
	ldr r1, [r6]
	adds r1, #0x70
	ldrh r4, [r1]
	subs r4, r4, r0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	bl sub_0800B2C8
	ldr r1, _08018948 @ =0x0000022A
	adds r2, r1, #0
	subs r2, r2, r0
	ldr r0, [r6]
	adds r0, #0x72
	ldrh r0, [r0]
	subs r2, r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08009A70
_08018930:
	ldr r0, _0801894C @ =0x030013C0
	ldr r0, [r0]
	adds r0, #0x70
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r0, _08018950 @ =0x00000C07
	cmp r1, r0
	ble _08018964
	movs r0, #1
	strb r0, [r7]
	b _08018964
	.align 2, 0
_08018948: .4byte 0x0000022A
_0801894C: .4byte 0x030013C0
_08018950: .4byte 0x00000C07
_08018954:
	ldr r0, _0801896C @ =0x0000016F
	bl m4aSongNumStart
	ldr r0, [r7, #4]
	bl sub_08009A00
	bl sub_08007A64
_08018964:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801896C: .4byte 0x0000016F

	thumb_func_start sub_08018970
sub_08018970: @ 0x08018970
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	ldr r0, _08018A14 @ =sub_080188A8
	movs r1, #0x45
	movs r2, #0
	bl sub_08007968
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl sub_08007BBC
	mov r8, r0
	movs r0, #0
	mov r1, r8
	strb r0, [r1]
	strh r0, [r1, #2]
	movs r0, #2
	movs r1, #0
	bl sub_080099E0
	adds r5, r0, #0
	movs r1, #1
	bl sub_08009A34
	bl sub_0800B2BC
	ldr r6, _08018A18 @ =0x030013C0
	ldr r1, [r6]
	adds r1, #0x70
	ldrh r4, [r1]
	subs r4, r4, r0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	bl sub_0800B2C8
	ldr r1, _08018A1C @ =0x0000022A
	adds r2, r1, #0
	subs r2, r2, r0
	ldr r0, [r6]
	adds r0, #0x72
	ldrh r0, [r0]
	subs r2, r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08009A70
	ldr r0, [r6]
	ldr r1, [r0, #0x5c]
	adds r0, r5, #0
	bl sub_08009A78
	adds r0, r5, #0
	movs r1, #3
	bl sub_08009AB4
	ldr r1, _08018A20 @ =0x080F1BB4
	ldr r2, _08018A24 @ =0x080F1B4C
	adds r0, r5, #0
	movs r3, #0xe
	bl sub_08009ACC
	adds r0, r5, #0
	movs r1, #0xff
	bl sub_08009B40
	mov r0, r8
	str r5, [r0, #4]
	ldr r0, _08018A28 @ =0x0000016F
	bl m4aSongNumStop
	movs r0, #0xba
	lsls r0, r0, #1
	bl m4aSongNumStart
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08018A14: .4byte sub_080188A8
_08018A18: .4byte 0x030013C0
_08018A1C: .4byte 0x0000022A
_08018A20: .4byte 0x080F1BB4
_08018A24: .4byte 0x080F1B4C
_08018A28: .4byte 0x0000016F

	thumb_func_start sub_08018A2C
sub_08018A2C: @ 0x08018A2C
	push {r4, r5, r6, lr}
	bl sub_08007BD4
	adds r6, r0, #0
	ldrb r0, [r6, #1]
	cmp r0, #1
	beq _08018AA0
	cmp r0, #1
	bgt _08018A44
	cmp r0, #0
	beq _08018A4E
	b _08018B4A
_08018A44:
	cmp r0, #2
	beq _08018AE8
	cmp r0, #3
	beq _08018B40
	b _08018B4A
_08018A4E:
	ldr r4, _08018A98 @ =0x030013C0
	ldr r1, [r4]
	ldrb r2, [r6]
	adds r0, r2, #1
	lsls r0, r0, #2
	adds r1, #0x48
	adds r1, r1, r0
	ldr r0, [r1]
	ldr r1, _08018A9C @ =0x08080D78
	lsls r2, r2, #1
	adds r2, r2, r1
	ldrb r1, [r2]
	bl sub_08009AFC
	ldr r1, [r4]
	ldrb r0, [r6]
	adds r0, #1
	lsls r0, r0, #2
	adds r1, #0x48
	adds r1, r1, r0
	ldr r0, [r1]
	movs r1, #0
	bl sub_08009B40
	ldr r1, [r4]
	ldrb r0, [r6]
	lsls r0, r0, #2
	adds r1, #0x40
	adds r1, r1, r0
	ldr r0, [r1]
	movs r1, #0xb
	bl sub_08009AFC
	movs r0, #1
	strb r0, [r6, #1]
	b _08018B4A
	.align 2, 0
_08018A98: .4byte 0x030013C0
_08018A9C: .4byte 0x08080D78
_08018AA0:
	ldr r4, _08018AE4 @ =0x030013C0
	ldr r1, [r4]
	ldrb r0, [r6]
	lsls r0, r0, #2
	adds r1, #0x40
	adds r1, r1, r0
	ldr r1, [r1]
	ldrb r0, [r1, #1]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _08018B4A
	adds r0, r1, #0
	movs r1, #0xc
	bl sub_08009AFC
	ldr r1, [r4]
	ldrb r0, [r6]
	lsls r0, r0, #2
	adds r1, #0x40
	adds r1, r1, r0
	ldr r0, [r1]
	movs r1, #0
	bl sub_08009B40
	ldr r0, [r6, #8]
	movs r1, #1
	bl sub_08009A34
	movs r1, #0
	movs r0, #2
	strb r0, [r6, #1]
	strh r1, [r6, #2]
	b _08018B4A
	.align 2, 0
_08018AE4: .4byte 0x030013C0
_08018AE8:
	ldrh r0, [r6, #2]
	adds r0, #1
	strh r0, [r6, #2]
	ldrh r4, [r6, #4]
	subs r4, #5
	ldrh r0, [r6, #2]
	lsls r0, r0, #1
	subs r0, #1
	movs r1, #0xc
	bl __divsi3
	adds r4, r4, r0
	strh r4, [r6, #4]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #0xaf
	ble _08018B0E
	movs r0, #3
	strb r0, [r6, #1]
_08018B0E:
	ldr r5, [r6, #8]
	bl sub_0800B2BC
	ldr r2, _08018B3C @ =0x08080D1C
	ldrb r1, [r6]
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r4, [r1]
	subs r4, r4, r0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	bl sub_0800B2C8
	ldrh r2, [r6, #4]
	subs r2, r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08009A70
	b _08018B4A
	.align 2, 0
_08018B3C: .4byte 0x08080D1C
_08018B40:
	ldr r0, [r6, #8]
	bl sub_08009A00
	bl sub_08007A64
_08018B4A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08018B50
sub_08018B50: @ 0x08018B50
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _08018BE0 @ =sub_08018A2C
	movs r1, #0x45
	movs r2, #0
	bl sub_08007968
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl sub_08007BBC
	adds r6, r0, #0
	movs r0, #0
	strb r0, [r6, #1]
	strh r0, [r6, #2]
	strb r4, [r6]
	movs r0, #0xb0
	strh r0, [r6, #4]
	movs r0, #2
	movs r1, #0x41
	bl sub_080099E0
	adds r5, r0, #0
	movs r1, #0
	bl sub_08009A34
	bl sub_0800B2BC
	ldr r2, _08018BE4 @ =0x08080D1C
	ldrb r1, [r6]
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r4, [r1]
	subs r4, r4, r0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	bl sub_0800B2C8
	movs r2, #0xd8
	subs r2, r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08009A70
	ldr r0, _08018BE8 @ =0x030013C0
	ldr r0, [r0]
	ldr r1, [r0, #0x5c]
	adds r0, r5, #0
	bl sub_08009A78
	adds r0, r5, #0
	movs r1, #3
	bl sub_08009AB4
	ldr r1, _08018BEC @ =0x080F1BB4
	ldr r2, _08018BF0 @ =0x080F1B4C
	adds r0, r5, #0
	movs r3, #0xa
	bl sub_08009ACC
	adds r0, r5, #0
	movs r1, #0xff
	bl sub_08009B40
	str r5, [r6, #8]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08018BE0: .4byte sub_08018A2C
_08018BE4: .4byte 0x08080D1C
_08018BE8: .4byte 0x030013C0
_08018BEC: .4byte 0x080F1BB4
_08018BF0: .4byte 0x080F1B4C

	thumb_func_start sub_08018BF4
sub_08018BF4: @ 0x08018BF4
	push {lr}
	movs r0, #0
	bl sub_08018B50
	pop {r0}
	bx r0

	thumb_func_start sub_08018C00
sub_08018C00: @ 0x08018C00
	push {lr}
	movs r0, #1
	bl sub_08018B50
	pop {r0}
	bx r0

	thumb_func_start sub_08018C0C
sub_08018C0C: @ 0x08018C0C
	push {r4, r5, r6, lr}
	bl sub_08007BD4
	adds r6, r0, #0
	ldrb r0, [r6, #1]
	cmp r0, #0
	beq _08018C20
	cmp r0, #1
	beq _08018C78
	b _08018C82
_08018C20:
	ldrh r0, [r6, #2]
	adds r0, #1
	strh r0, [r6, #2]
	ldrh r0, [r6, #2]
	lsls r0, r0, #1
	subs r0, #1
	movs r1, #0xc
	bl __divsi3
	ldrh r1, [r6, #4]
	adds r1, r1, r0
	strh r1, [r6, #4]
	lsls r1, r1, #0x10
	ldr r0, _08018C70 @ =0x013F0000
	cmp r1, r0
	ble _08018C44
	movs r0, #1
	strb r0, [r6, #1]
_08018C44:
	ldr r5, [r6, #8]
	bl sub_0800B2BC
	ldr r2, _08018C74 @ =0x08081008
	ldrb r1, [r6]
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r4, [r1]
	subs r4, r4, r0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	bl sub_0800B2C8
	ldrh r2, [r6, #4]
	subs r2, r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08009A70
	b _08018C82
	.align 2, 0
_08018C70: .4byte 0x013F0000
_08018C74: .4byte 0x08081008
_08018C78:
	ldr r0, [r6, #8]
	bl sub_08009A00
	bl sub_08007A64
_08018C82:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08018C88
sub_08018C88: @ 0x08018C88
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _08018D18 @ =sub_08018C0C
	movs r1, #0x45
	movs r2, #0
	bl sub_08007968
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl sub_08007BBC
	adds r6, r0, #0
	movs r0, #0
	strb r0, [r6, #1]
	strh r0, [r6, #2]
	strb r4, [r6]
	movs r0, #8
	strh r0, [r6, #4]
	movs r0, #3
	movs r1, #0
	bl sub_080099E0
	adds r5, r0, #0
	movs r1, #1
	bl sub_08009A34
	bl sub_0800B2BC
	ldr r2, _08018D1C @ =0x08081008
	ldrb r1, [r6]
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r4, [r1]
	subs r4, r4, r0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	bl sub_0800B2C8
	ldrh r2, [r6, #4]
	subs r2, r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08009A70
	ldr r0, _08018D20 @ =0x030013C0
	ldr r0, [r0]
	ldr r1, [r0, #0x5c]
	adds r0, r5, #0
	bl sub_08009A78
	adds r0, r5, #0
	movs r1, #3
	bl sub_08009AB4
	ldr r1, _08018D24 @ =0x080F1BB4
	ldr r2, _08018D28 @ =0x080F1B4C
	adds r0, r5, #0
	movs r3, #9
	bl sub_08009ACC
	adds r0, r5, #0
	movs r1, #0xff
	bl sub_08009B40
	str r5, [r6, #8]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08018D18: .4byte sub_08018C0C
_08018D1C: .4byte 0x08081008
_08018D20: .4byte 0x030013C0
_08018D24: .4byte 0x080F1BB4
_08018D28: .4byte 0x080F1B4C

	thumb_func_start sub_08018D2C
sub_08018D2C: @ 0x08018D2C
	push {lr}
	movs r0, #0
	bl sub_08018C88
	pop {r0}
	bx r0

	thumb_func_start sub_08018D38
sub_08018D38: @ 0x08018D38
	push {lr}
	movs r0, #1
	bl sub_08018C88
	pop {r0}
	bx r0

	thumb_func_start sub_08018D44
sub_08018D44: @ 0x08018D44
	push {lr}
	movs r0, #2
	bl sub_08018C88
	pop {r0}
	bx r0

	thumb_func_start sub_08018D50
sub_08018D50: @ 0x08018D50
	push {lr}
	movs r0, #3
	bl sub_08018C88
	pop {r0}
	bx r0

	thumb_func_start sub_08018D5C
sub_08018D5C: @ 0x08018D5C
	push {lr}
	movs r0, #4
	bl sub_08018C88
	pop {r0}
	bx r0

	thumb_func_start sub_08018D68
sub_08018D68: @ 0x08018D68
	push {lr}
	movs r0, #5
	bl sub_08018C88
	pop {r0}
	bx r0

	thumb_func_start sub_08018D74
sub_08018D74: @ 0x08018D74
	push {r4, r5, r6, lr}
	bl sub_08007BD4
	adds r6, r0, #0
	ldrb r0, [r6, #1]
	cmp r0, #0
	beq _08018D88
	cmp r0, #1
	beq _08018DE4
	b _08018DEE
_08018D88:
	ldrh r0, [r6, #2]
	adds r0, #1
	strh r0, [r6, #2]
	movs r1, #0
	ldrsb r1, [r6, r1]
	lsls r0, r1, #1
	adds r0, r0, r1
	ldrh r1, [r6, #8]
	adds r0, r0, r1
	strh r0, [r6, #8]
	ldrh r4, [r6, #0xa]
	subs r4, #3
	ldrh r0, [r6, #2]
	lsls r0, r0, #1
	subs r0, #1
	movs r1, #0xc
	bl __divsi3
	adds r4, r4, r0
	strh r4, [r6, #0xa]
	lsls r4, r4, #0x10
	ldr r0, _08018DE0 @ =0x013F0000
	cmp r4, r0
	ble _08018DBC
	movs r0, #1
	strb r0, [r6, #1]
_08018DBC:
	ldr r5, [r6, #4]
	bl sub_0800B2BC
	ldrh r4, [r6, #8]
	subs r4, r4, r0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	bl sub_0800B2C8
	ldrh r2, [r6, #0xa]
	subs r2, r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08009A70
	b _08018DEE
	.align 2, 0
_08018DE0: .4byte 0x013F0000
_08018DE4:
	ldr r0, [r6, #4]
	bl sub_08009A00
	bl sub_08007A64
_08018DEE:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08018DF4
sub_08018DF4: @ 0x08018DF4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	lsls r0, r0, #0x18
	movs r1, #0
	mov sb, r1
	ldr r1, _08018EC0 @ =0x08081014
	lsrs r0, r0, #0x15
	adds r7, r0, r1
	movs r0, #0
	mov sl, r0
_08018E0E:
	ldr r0, _08018EC4 @ =sub_08018D74
	movs r1, #0x45
	movs r2, #0
	bl sub_08007968
	mov r8, r0
	mov r1, r8
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r8, r1
	mov r0, r8
	bl sub_08007BBC
	adds r6, r0, #0
	movs r0, #0
	strb r0, [r6, #1]
	strh r0, [r6, #2]
	ldrb r0, [r7, #4]
	strb r0, [r6]
	ldrh r0, [r7]
	strh r0, [r6, #8]
	ldrh r0, [r7, #2]
	strh r0, [r6, #0xa]
	mov r0, sb
	lsls r1, r0, #0x18
	lsrs r1, r1, #0x18
	movs r0, #2
	bl sub_080099E0
	adds r5, r0, #0
	movs r1, #1
	bl sub_08009A34
	bl sub_0800B2BC
	ldrh r4, [r6, #8]
	subs r4, r4, r0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	bl sub_0800B2C8
	ldrh r2, [r6, #0xa]
	subs r2, r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08009A70
	ldr r0, _08018EC8 @ =0x030013C0
	ldr r0, [r0]
	ldr r1, [r0, #0x5c]
	adds r0, r5, #0
	bl sub_08009A78
	adds r0, r5, #0
	movs r1, #3
	bl sub_08009AB4
	adds r0, r5, #0
	ldr r1, _08018ECC @ =0x080F1BB4
	ldr r2, _08018ED0 @ =0x080F1B4C
	movs r3, #8
	bl sub_08009ACC
	adds r0, r5, #0
	movs r1, #0xff
	bl sub_08009B40
	str r5, [r6, #4]
	mov r0, r8
	mov r1, sl
	bl sub_08007AD8
	movs r1, #3
	add sl, r1
	movs r0, #1
	add sb, r0
	mov r1, sb
	cmp r1, #7
	ble _08018E0E
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08018EC0: .4byte 0x08081014
_08018EC4: .4byte sub_08018D74
_08018EC8: .4byte 0x030013C0
_08018ECC: .4byte 0x080F1BB4
_08018ED0: .4byte 0x080F1B4C

	thumb_func_start sub_08018ED4
sub_08018ED4: @ 0x08018ED4
	push {lr}
	movs r0, #0
	bl sub_08018DF4
	pop {r0}
	bx r0

	thumb_func_start sub_08018EE0
sub_08018EE0: @ 0x08018EE0
	push {lr}
	movs r0, #1
	bl sub_08018DF4
	pop {r0}
	bx r0

	thumb_func_start sub_08018EEC
sub_08018EEC: @ 0x08018EEC
	push {lr}
	movs r0, #2
	bl sub_08018DF4
	pop {r0}
	bx r0

	thumb_func_start sub_08018EF8
sub_08018EF8: @ 0x08018EF8
	push {lr}
	movs r0, #3
	bl sub_08018DF4
	pop {r0}
	bx r0

	thumb_func_start sub_08018F04
sub_08018F04: @ 0x08018F04
	push {r4, lr}
	bl sub_08007BD4
	adds r4, r0, #0
	ldr r0, [r4, #4]
	movs r1, #1
	bl sub_08009A34
	ldr r0, _08018F2C @ =0x030013C0
	ldr r0, [r0]
	ldr r0, [r0, #0x18]
	ldrb r0, [r0, #0x10]
	cmp r0, #2
	beq _08018F3E
	cmp r0, #2
	ble _08018F30
	cmp r0, #3
	beq _08018F48
	b _08018F50
	.align 2, 0
_08018F2C: .4byte 0x030013C0
_08018F30:
	cmp r0, #0
	blt _08018F50
	ldr r0, [r4, #4]
	movs r1, #3
	bl sub_08009B28
	b _08018F50
_08018F3E:
	ldr r0, [r4, #4]
	movs r1, #4
	bl sub_08009B28
	b _08018F50
_08018F48:
	ldr r0, [r4, #4]
	movs r1, #5
	bl sub_08009B28
_08018F50:
	ldr r0, [r4, #4]
	ldr r1, _08018F80 @ =0x030013C0
	ldr r1, [r1]
	ldr r2, [r1, #0x18]
	movs r3, #6
	ldrsh r1, [r2, r3]
	movs r3, #8
	ldrsh r2, [r2, r3]
	bl sub_08009A70
	ldr r1, [r4, #4]
	ldrb r0, [r1, #1]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _08018F78
	adds r0, r1, #0
	bl sub_08009A00
	bl sub_08007A64
_08018F78:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08018F80: .4byte 0x030013C0

	thumb_func_start sub_08018F84
sub_08018F84: @ 0x08018F84
	push {r4, r5, r6, lr}
	ldr r0, _08018FF4 @ =sub_08018F04
	movs r1, #0x47
	movs r2, #0
	bl sub_08007968
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl sub_08007BBC
	adds r6, r0, #0
	movs r0, #2
	movs r1, #0x7f
	bl sub_080099E0
	adds r4, r0, #0
	movs r1, #0
	bl sub_08009A34
	ldr r5, _08018FF8 @ =0x030013C0
	ldr r0, [r5]
	ldr r0, [r0, #0x18]
	movs r2, #6
	ldrsh r1, [r0, r2]
	movs r3, #8
	ldrsh r2, [r0, r3]
	adds r0, r4, #0
	bl sub_08009A70
	ldr r0, [r5]
	ldr r1, [r0, #0x60]
	adds r0, r4, #0
	bl sub_08009A78
	adds r0, r4, #0
	movs r1, #2
	bl sub_08009AB4
	ldr r1, _08018FFC @ =0x080FC980
	ldr r2, _08019000 @ =0x080FC934
	adds r0, r4, #0
	movs r3, #3
	bl sub_08009ACC
	adds r0, r4, #0
	movs r1, #1
	bl sub_08009B40
	str r4, [r6, #4]
	movs r0, #0
	strb r0, [r6]
	strh r0, [r6, #2]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08018FF4: .4byte sub_08018F04
_08018FF8: .4byte 0x030013C0
_08018FFC: .4byte 0x080FC980
_08019000: .4byte 0x080FC934

	thumb_func_start sub_08019004
sub_08019004: @ 0x08019004
	push {r4, r5, r6, lr}
	bl sub_08007BD4
	adds r6, r0, #0
	ldrb r0, [r6]
	cmp r0, #0
	beq _08019018
	cmp r0, #1
	beq _08019024
	b _08019072
_08019018:
	ldr r0, [r6, #8]
	movs r1, #1
	bl sub_08009A34
	movs r0, #1
	strb r0, [r6]
_08019024:
	ldrh r0, [r6, #2]
	adds r0, #1
	strh r0, [r6, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xf
	adds r0, #1
	movs r1, #0xc
	bl __divsi3
	ldrh r1, [r6, #6]
	adds r1, r1, r0
	strh r1, [r6, #6]
	ldr r5, [r6, #8]
	bl sub_0800B2BC
	ldrh r4, [r6, #4]
	subs r4, r4, r0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	bl sub_0800B2C8
	ldrh r2, [r6, #6]
	subs r2, r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08009A70
	movs r0, #6
	ldrsh r1, [r6, r0]
	ldr r0, _08019078 @ =0x0000013F
	cmp r1, r0
	ble _08019072
	ldr r0, [r6, #8]
	bl sub_08009A00
	bl sub_08007A64
_08019072:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08019078: .4byte 0x0000013F

	thumb_func_start sub_0801907C
sub_0801907C: @ 0x0801907C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	movs r7, #0
	movs r0, #0
	mov sb, r0
	mov sl, r0
_08019096:
	ldr r0, _0801914C @ =sub_08019004
	movs r1, #0x49
	movs r2, #0
	bl sub_08007968
	mov r8, r0
	mov r3, r8
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	mov r8, r3
	mov r0, r8
	bl sub_08007BBC
	adds r6, r0, #0
	mov r0, sb
	strb r0, [r6]
	mov r3, sb
	strh r3, [r6, #2]
	ldr r2, _08019150 @ =0x08081034
	lsls r0, r7, #1
	ldr r3, [sp]
	lsls r1, r3, #2
	adds r0, r0, r1
	adds r0, r0, r2
	ldrh r0, [r0]
	strh r0, [r6, #4]
	mov r0, sb
	strh r0, [r6, #6]
	movs r0, #3
	movs r1, #0xff
	bl sub_080099E0
	adds r5, r0, #0
	movs r1, #0
	bl sub_08009A34
	bl sub_0800B2BC
	ldrh r4, [r6, #4]
	subs r4, r4, r0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	bl sub_0800B2C8
	ldrh r2, [r6, #6]
	subs r2, r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08009A70
	ldr r0, _08019154 @ =0x030013C0
	ldr r0, [r0]
	ldr r1, [r0, #0x5c]
	adds r0, r5, #0
	bl sub_08009A78
	adds r0, r5, #0
	movs r1, #3
	bl sub_08009AB4
	adds r0, r5, #0
	ldr r1, _08019158 @ =0x080F1BB4
	ldr r2, _0801915C @ =0x080F1B4C
	movs r3, #9
	bl sub_08009ACC
	adds r0, r5, #0
	movs r1, #0xff
	bl sub_08009B40
	str r5, [r6, #8]
	mov r0, r8
	mov r1, sl
	bl sub_08007AD8
	movs r3, #0x1e
	add sl, r3
	adds r7, #1
	cmp r7, #1
	ble _08019096
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801914C: .4byte sub_08019004
_08019150: .4byte 0x08081034
_08019154: .4byte 0x030013C0
_08019158: .4byte 0x080F1BB4
_0801915C: .4byte 0x080F1B4C

	thumb_func_start sub_08019160
sub_08019160: @ 0x08019160
	push {lr}
	ldr r0, _08019174 @ =0x030013C0
	ldr r0, [r0]
	movs r1, #0x14
	ldrsh r0, [r0, r1]
	ldr r1, _08019178 @ =sub_0801917C
	bl sub_08007B84
	pop {r0}
	bx r0
	.align 2, 0
_08019174: .4byte 0x030013C0
_08019178: .4byte sub_0801917C

	thumb_func_start sub_0801917C
sub_0801917C: @ 0x0801917C
	bx lr
	.align 2, 0

	thumb_func_start sub_08019180
sub_08019180: @ 0x08019180
	push {lr}
	ldr r0, _08019198 @ =0x03004470
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1d
	bl sub_0801907C
	movs r0, #0xb4
	bl sub_08007AC0
	pop {r0}
	bx r0
	.align 2, 0
_08019198: .4byte 0x03004470

	thumb_func_start sub_0801919C
sub_0801919C: @ 0x0801919C
	push {lr}
	ldr r0, _080191B0 @ =0x030013C0
	ldr r0, [r0]
	movs r1, #0x14
	ldrsh r0, [r0, r1]
	ldr r1, _080191B4 @ =sub_08019180
	bl sub_08007B84
	pop {r0}
	bx r0
	.align 2, 0
_080191B0: .4byte 0x030013C0
_080191B4: .4byte sub_08019180

	thumb_func_start sub_080191B8
sub_080191B8: @ 0x080191B8
	push {lr}
	ldr r0, _080191CC @ =0x030013C0
	ldr r0, [r0]
	movs r1, #0x14
	ldrsh r0, [r0, r1]
	ldr r1, _080191D0 @ =sub_0801917C
	bl sub_08007B84
	pop {r0}
	bx r0
	.align 2, 0
_080191CC: .4byte 0x030013C0
_080191D0: .4byte sub_0801917C

	thumb_func_start sub_080191D4
sub_080191D4: @ 0x080191D4
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r0, #0
	cmp r0, #0xb
	beq _08019200
	cmp r0, #0xb
	bgt _080191EA
	cmp r0, #0xa
	beq _080191F4
	b _08019224
_080191EA:
	cmp r1, #0xd
	beq _0801920C
	cmp r1, #0xe
	beq _08019218
	b _08019224
_080191F4:
	ldr r1, _080191FC @ =0x03004484
	movs r0, #0
	strb r0, [r1]
	b _0801922A
	.align 2, 0
_080191FC: .4byte 0x03004484
_08019200:
	ldr r1, _08019208 @ =0x03004484
	movs r0, #1
	strb r0, [r1]
	b _0801922A
	.align 2, 0
_08019208: .4byte 0x03004484
_0801920C:
	ldr r1, _08019214 @ =0x03004484
	movs r0, #2
	strb r0, [r1]
	b _0801922A
	.align 2, 0
_08019214: .4byte 0x03004484
_08019218:
	ldr r1, _08019220 @ =0x03004484
	movs r0, #3
	strb r0, [r1]
	b _0801922A
	.align 2, 0
_08019220: .4byte 0x03004484
_08019224:
	movs r0, #0x2e
	bl ChangeGameState_08008790
_0801922A:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08019230
sub_08019230: @ 0x08019230
	push {r4, lr}
	ldr r4, _0801924C @ =0x030013C4
	movs r0, #4
	bl sub_08007CE8
	adds r1, r0, #0
	str r1, [r4]
	movs r0, #0
	movs r2, #4
	bl sub_08007EFC
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801924C: .4byte 0x030013C4

	thumb_func_start sub_08019250
sub_08019250: @ 0x08019250
	push {lr}
	ldr r0, _08019260 @ =0x030013C4
	ldr r0, [r0]
	bl sub_08007CF8
	pop {r0}
	bx r0
	.align 2, 0
_08019260: .4byte 0x030013C4

	thumb_func_start sub_08019264
sub_08019264: @ 0x08019264
	push {lr}
	movs r0, #0
	bl sub_080081A0
	bl sub_08008174
	bl sub_08019230
	movs r0, #1
	bl ProcSleep_08002B98
	ldr r0, _0801928C @ =0x030024E0
	adds r0, #0x4f
	movs r1, #1
	strb r1, [r0]
_08019282:
	movs r0, #1
	bl ProcSleep_08002B98
	b _08019282
	.align 2, 0
_0801928C: .4byte 0x030024E0

	thumb_func_start sub_08019290
sub_08019290: @ 0x08019290
	push {r4, r5, lr}
	movs r0, #0
	bl sub_080081A0
	ldr r5, _080192D8 @ =0x030013B4
	movs r4, #0x86
	lsls r4, r4, #1
	adds r0, r4, #0
	bl sub_08007CE8
	adds r1, r0, #0
	str r1, [r5]
	movs r0, #0
	adds r2, r4, #0
	bl sub_08007EFC
	ldr r0, _080192DC @ =0x03004400
	ldr r0, [r0]
	bl sub_0800B80C
	ldr r1, _080192E0 @ =0x08083A30
	ldr r4, _080192E4 @ =0x0300448C
	ldrb r0, [r4]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _08019302
	bl call_via_r0
	movs r0, #1
	bl ProcSleep_08002B98
	ldr r5, _080192E8 @ =0x08083A68
	b _080192F2
	.align 2, 0
_080192D8: .4byte 0x030013B4
_080192DC: .4byte 0x03004400
_080192E0: .4byte 0x08083A30
_080192E4: .4byte 0x0300448C
_080192E8: .4byte 0x08083A68
_080192EC:
	movs r0, #1
	bl ProcSleep_08002B98
_080192F2:
	ldrb r0, [r4]
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	bl call_via_r0
	cmp r0, #0
	beq _080192EC
_08019302:
	bl m4aMPlayAllStop
	ldr r0, _08019320 @ =0x03004490
	ldrb r0, [r0]
	bl ChangeGameState_08008790
	ldr r0, _08019324 @ =0x030013B4
	ldr r0, [r0]
	bl sub_08007CF8
	bl sub_08002B0C
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08019320: .4byte 0x03004490
_08019324: .4byte 0x030013B4

	thumb_func_start sub_08019328
sub_08019328: @ 0x08019328
	ldr r3, _0801933C @ =0x0300448C
	strb r0, [r3]
	ldr r0, _08019340 @ =0x03004490
	strb r1, [r0]
	ldr r0, _08019344 @ =0x03004488
	strb r2, [r0]
	ldr r1, _08019348 @ =0x03004494
	movs r0, #0
	strb r0, [r1]
	bx lr
	.align 2, 0
_0801933C: .4byte 0x0300448C
_08019340: .4byte 0x03004490
_08019344: .4byte 0x03004488
_08019348: .4byte 0x03004494

	thumb_func_start sub_0801934C
sub_0801934C: @ 0x0801934C
	push {lr}
	movs r1, #0
	ldr r0, _08019364 @ =0x0300448C
	ldrb r0, [r0]
	cmp r0, #0xd
	bhi _080193A8
	lsls r0, r0, #2
	ldr r1, _08019368 @ =_0801936C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08019364: .4byte 0x0300448C
_08019368: .4byte _0801936C
_0801936C: @ jump table
	.4byte _080193A4 @ case 0
	.4byte _080193A4 @ case 1
	.4byte _080193A4 @ case 2
	.4byte _080193A4 @ case 3
	.4byte _080193A4 @ case 4
	.4byte _080193A4 @ case 5
	.4byte _080193A4 @ case 6
	.4byte _080193A4 @ case 7
	.4byte _080193A4 @ case 8
	.4byte _080193A4 @ case 9
	.4byte _080193A4 @ case 10
	.4byte _080193A4 @ case 11
	.4byte _080193A4 @ case 12
	.4byte _080193A4 @ case 13
_080193A4:
	ldr r0, _080193B0 @ =0x030013B4
	ldr r1, [r0]
_080193A8:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0
_080193B0: .4byte 0x030013B4

	thumb_func_start sub_080193B4
sub_080193B4: @ 0x080193B4
	ldr r1, _080193BC @ =0x03004494
	movs r0, #1
	strb r0, [r1]
	bx lr
	.align 2, 0
_080193BC: .4byte 0x03004494

	thumb_func_start sub_080193C0
sub_080193C0: @ 0x080193C0
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #0xc
	ldr r6, _0801950C @ =0x030013B8
	bl sub_0801934C
	adds r1, r0, #0
	str r1, [r6]
	movs r0, #0
	movs r2, #0x88
	bl sub_08007EFC
	ldr r0, _08019510 @ =0x08083BCC
	ldr r0, [r0]
	movs r1, #0x40
	movs r2, #0
	bl sub_08007968
	ldr r1, [r6]
	movs r2, #0
	mov sb, r2
	movs r2, #0
	mov r8, r2
	strh r0, [r1]
	ldr r0, _08019514 @ =sub_08019E10
	movs r1, #0x41
	bl sub_08007968
	ldr r1, [r6]
	strh r0, [r1, #2]
	movs r2, #2
	ldrsh r0, [r1, r2]
	ldr r1, _08019518 @ =sub_0801A0F4
	bl sub_08007BA0
	ldr r0, _0801951C @ =sub_08019AB8
	movs r1, #0x41
	movs r2, #0
	bl sub_08007968
	ldr r1, [r6]
	strh r0, [r1, #4]
	movs r2, #4
	ldrsh r0, [r1, r2]
	ldr r1, _08019520 @ =sub_08019C5C
	bl sub_08007BA0
	ldr r0, _08019524 @ =0x080CD798
	ldr r1, _08019528 @ =0x05000240
	bl LoadPalette_08008308
	ldr r0, _0801952C @ =0x080CDB5C
	add r1, sp, #4
	bl sub_08008380
	ldr r1, [r6]
	str r0, [r1, #0x74]
	ldr r0, [sp, #4]
	str r0, [r1, #0x78]
	ldr r4, _08019530 @ =0x06011000
	ldr r0, _08019534 @ =0x0809CA60
	ldr r1, _08019538 @ =0x05000260
	bl LoadPalette_08008308
	ldr r0, [r6]
	str r4, [r0, #0x58]
	ldr r0, _0801953C @ =0x0809CAA4
	adds r1, r4, #0
	bl DecompressData_08008374
	adds r4, r0, r4
	ldr r0, _08019540 @ =0x080CAC38
	ldr r1, _08019544 @ =0x05000280
	bl LoadPalette_08008308
	ldr r0, [r6]
	str r4, [r0, #0x5c]
	ldr r0, _08019548 @ =0x080CAD1C
	adds r1, r4, #0
	bl DecompressData_08008374
	adds r4, r4, r0
	ldr r1, _0801954C @ =0x080B85E8
	ldr r5, _08019550 @ =0x03004400
	ldrb r0, [r5, #0x14]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _08019554 @ =0x050002A0
	bl LoadPalette_08008308
	ldr r0, [r6]
	str r4, [r0, #0x60]
	ldr r1, _08019558 @ =0x080B8624
	ldrb r0, [r5, #0x14]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r0, [r0]
	adds r1, r4, #0
	bl DecompressData_08008374
	ldr r0, _0801955C @ =0x080B8668
	movs r1, #0xa0
	lsls r1, r1, #0x13
	bl LoadPalette_08008308
	ldr r0, _08019560 @ =0x080B86AC
	movs r1, #0xc0
	lsls r1, r1, #0x13
	bl DecompressData_08008374
	ldr r0, _08019564 @ =0x080B962C
	ldr r1, _08019568 @ =0x0600F800
	movs r2, #0
	movs r3, #0
	bl LoadTileMap_080083CC
	mov r0, r8
	str r0, [sp]
	movs r0, #1
	movs r1, #3
	movs r2, #0
	movs r3, #0x1d
	bl sub_08000268
	movs r0, #0xf0
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #3
	bl sub_08006BE8
	bl sub_08003F9C
	movs r0, #0x80
	lsls r0, r0, #1
	str r0, [sp]
	movs r0, #1
	movs r1, #0x1e
	movs r2, #3
	movs r3, #0
	bl sub_08004028
	bl sub_080057C0
	bl sub_08005AA0
	movs r0, #4
	bl sub_0800B828
	ldr r1, [r6]
	adds r1, #0x84
	strb r0, [r1]
	ldr r0, [r6]
	adds r0, #0x7c
	mov r1, sb
	strb r1, [r0]
	add sp, #0xc
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801950C: .4byte 0x030013B8
_08019510: .4byte 0x08083BCC
_08019514: .4byte sub_08019E10
_08019518: .4byte sub_0801A0F4
_0801951C: .4byte sub_08019AB8
_08019520: .4byte sub_08019C5C
_08019524: .4byte 0x080CD798
_08019528: .4byte 0x05000240
_0801952C: .4byte 0x080CDB5C
_08019530: .4byte 0x06011000
_08019534: .4byte 0x0809CA60
_08019538: .4byte 0x05000260
_0801953C: .4byte 0x0809CAA4
_08019540: .4byte 0x080CAC38
_08019544: .4byte 0x05000280
_08019548: .4byte 0x080CAD1C
_0801954C: .4byte 0x080B85E8
_08019550: .4byte 0x03004400
_08019554: .4byte 0x050002A0
_08019558: .4byte 0x080B8624
_0801955C: .4byte 0x080B8668
_08019560: .4byte 0x080B86AC
_08019564: .4byte 0x080B962C
_08019568: .4byte 0x0600F800

	thumb_func_start sub_0801956C
sub_0801956C: @ 0x0801956C
	push {r4, lr}
	ldr r1, _0801958C @ =0x08083BB8
	ldr r4, _08019590 @ =0x030013B8
	ldr r0, [r4]
	ldrb r0, [r0, #0xd]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl call_via_r0
	ldr r0, [r4]
	ldrb r0, [r0, #0xc]
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0801958C: .4byte 0x08083BB8
_08019590: .4byte 0x030013B8

	thumb_func_start sub_08019594
sub_08019594: @ 0x08019594
	ldr r1, _080195A8 @ =0x030013B8
	ldr r2, [r1]
	movs r3, #0
	strb r0, [r2, #0xd]
	ldr r0, [r1]
	strb r3, [r0, #0xe]
	ldr r0, [r1]
	strh r3, [r0, #0x10]
	bx lr
	.align 2, 0
_080195A8: .4byte 0x030013B8

	thumb_func_start sub_080195AC
sub_080195AC: @ 0x080195AC
	push {r4, r5, r6, lr}
	ldr r6, _080195C0 @ =0x030013B8
	ldr r0, [r6]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080195C4
	cmp r0, #1
	beq _0801960C
	b _08019624
	.align 2, 0
_080195C0: .4byte 0x030013B8
_080195C4:
	bl sub_08008174
	ldr r4, _08019604 @ =0x030024E0
	ldr r0, _08019608 @ =0x00001F03
	strh r0, [r4, #8]
	ldrh r0, [r4]
	movs r2, #0x80
	lsls r2, r2, #4
	adds r1, r2, #0
	orrs r0, r1
	movs r2, #0x80
	lsls r2, r2, #2
	adds r1, r2, #0
	orrs r0, r1
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4]
	movs r0, #1
	bl sub_08004124
	adds r4, #0x4f
	movs r5, #1
	strb r5, [r4]
	movs r0, #0x33
	bl m4aSongNumStart
	ldr r0, [r6]
	strb r5, [r0, #0xe]
	b _08019624
	.align 2, 0
_08019604: .4byte 0x030024E0
_08019608: .4byte 0x00001F03
_0801960C:
	bl sub_080003D0
	cmp r0, #0
	beq _08019624
	ldr r2, _0801962C @ =0x030024E0
	ldrh r1, [r2]
	ldr r0, _08019630 @ =0x0000FDFF
	ands r0, r1
	strh r0, [r2]
	movs r0, #1
	bl sub_08019594
_08019624:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801962C: .4byte 0x030024E0
_08019630: .4byte 0x0000FDFF

	thumb_func_start sub_08019634
sub_08019634: @ 0x08019634
	push {r4, r5, lr}
	ldr r5, _0801964C @ =0x030013B8
	ldr r3, [r5]
	ldrb r4, [r3, #0xe]
	cmp r4, #1
	beq _08019666
	cmp r4, #1
	bgt _08019650
	cmp r4, #0
	beq _08019656
	b _080196BE
	.align 2, 0
_0801964C: .4byte 0x030013B8
_08019650:
	cmp r4, #2
	beq _080196B8
	b _080196BE
_08019656:
	bl sub_08019CB4
	ldr r0, [r5]
	movs r1, #1
	strb r1, [r0, #0xe]
	ldr r0, [r5]
	strh r4, [r0, #0x10]
	b _080196BE
_08019666:
	ldr r0, _080196B0 @ =0x08083B80
	ldrh r1, [r3, #0x10]
	adds r2, r1, #1
	strh r2, [r3, #0x10]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0xf
	adds r1, r1, r0
	movs r0, #0
	ldrsh r1, [r1, r0]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	cmp r2, #0x1b
	bls _08019688
	movs r0, #0
	strh r0, [r3, #0x10]
	movs r0, #2
	strb r0, [r3, #0xe]
_08019688:
	movs r4, #0
	adds r0, r1, #0
	adds r0, #0x60
	lsls r5, r0, #0x10
_08019690:
	ldr r0, _080196B4 @ =0x030013B8
	ldr r0, [r0]
	lsls r1, r4, #2
	adds r0, #0x2c
	adds r0, r0, r1
	ldr r0, [r0]
	movs r2, #6
	ldrsh r1, [r0, r2]
	asrs r2, r5, #0x10
	bl sub_08009A70
	adds r4, #1
	cmp r4, #3
	ble _08019690
	b _080196BE
	.align 2, 0
_080196B0: .4byte 0x08083B80
_080196B4: .4byte 0x030013B8
_080196B8:
	movs r0, #2
	bl sub_08019594
_080196BE:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080196C4
sub_080196C4: @ 0x080196C4
	push {r4, r5, r6, lr}
	ldr r4, _080196DC @ =0x030013B8
	ldr r1, [r4]
	ldrb r0, [r1, #0xe]
	cmp r0, #1
	beq _080196F8
	cmp r0, #1
	bgt _080196E0
	cmp r0, #0
	beq _080196E6
	b _080197A2
	.align 2, 0
_080196DC: .4byte 0x030013B8
_080196E0:
	cmp r0, #2
	beq _0801974C
	b _080197A2
_080196E6:
	bl sub_08019D84
	ldr r1, [r4]
	movs r0, #1
	strb r0, [r1, #0xe]
	movs r0, #0xf
	bl ProcSleep_08002B98
	b _080197A2
_080196F8:
	movs r0, #2
	strb r0, [r1, #0xe]
	movs r5, #0
	adds r6, r4, #0
	movs r4, #0
_08019702:
	ldr r1, [r6]
	adds r0, r1, #0
	adds r0, #0x84
	ldrb r0, [r0]
	cmp r5, r0
	bne _0801971E
	adds r0, r1, #0
	adds r0, #0x2c
	adds r0, r0, r4
	ldr r0, [r0]
	movs r1, #3
	bl sub_08009AFC
	b _0801972C
_0801971E:
	adds r0, r1, #0
	adds r0, #0x2c
	adds r0, r0, r4
	ldr r0, [r0]
	movs r1, #0
	bl sub_08009AFC
_0801972C:
	ldr r0, [r6]
	adds r0, #0x2c
	adds r0, r0, r4
	ldr r0, [r0]
	movs r1, #0xff
	bl sub_08009B40
	adds r4, #4
	adds r5, #1
	cmp r5, #3
	ble _08019702
	bl sub_08019A1C
	bl sub_08019DA0
	b _080197A2
_0801974C:
	movs r0, #3
	bl sub_0800B828
	ldr r1, [r4]
	adds r1, #0x85
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r0, #1
	ldrb r3, [r1]
	adds r2, r0, r3
	adds r0, r2, #0
	asrs r0, r0, #2
	lsls r0, r0, #2
	subs r0, r2, r0
	strb r0, [r1]
	bl sub_08005934
	ldr r1, _080197A8 @ =0x08083B30
	ldr r0, [r4]
	adds r0, #0x85
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	bl sub_08005A2C
	movs r0, #0x3c
	bl ProcSleep_08002B98
	ldr r0, [r4]
	adds r0, #0x7d
	ldrb r0, [r0]
	cmp r0, #0
	bne _080197A2
	bl sub_08019D04
	movs r0, #3
	bl sub_08019594
_080197A2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080197A8: .4byte 0x08083B30

	thumb_func_start sub_080197AC
sub_080197AC: @ 0x080197AC
	push {r4, r5, r6, lr}
	ldr r1, _080197C8 @ =0x030013B8
	ldr r0, [r1]
	ldrb r0, [r0, #0xe]
	adds r2, r1, #0
	cmp r0, #4
	bls _080197BC
	b _0801993C
_080197BC:
	lsls r0, r0, #2
	ldr r1, _080197CC @ =_080197D0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080197C8: .4byte 0x030013B8
_080197CC: .4byte _080197D0
_080197D0: @ jump table
	.4byte _080197E4 @ case 0
	.4byte _0801982C @ case 1
	.4byte _08019846 @ case 2
	.4byte _080198F8 @ case 3
	.4byte _0801991C @ case 4
_080197E4:
	ldr r0, [r2]
	ldr r0, [r0, #0x2c]
	ldrb r0, [r0, #1]
	lsrs r0, r0, #7
	cmp r0, #0
	bne _080197F2
	b _0801993C
_080197F2:
	movs r5, #0
	adds r6, r2, #0
_080197F6:
	ldr r0, [r6]
	lsls r4, r5, #2
	adds r0, #0x2c
	adds r0, r0, r4
	ldr r0, [r0]
	movs r1, #4
	bl sub_08009AFC
	ldr r0, [r6]
	adds r0, #0x2c
	adds r0, r0, r4
	ldr r0, [r0]
	movs r1, #0
	bl sub_08009B40
	adds r5, #1
	cmp r5, #3
	ble _080197F6
	bl sub_08019A10
	ldr r0, _08019828 @ =0x030013B8
	ldr r1, [r0]
	movs r0, #1
	strb r0, [r1, #0xe]
	b _0801993C
	.align 2, 0
_08019828: .4byte 0x030013B8
_0801982C:
	ldr r1, [r2]
	ldr r0, [r1, #0x2c]
	ldrb r0, [r0, #1]
	lsrs r0, r0, #7
	cmp r0, #0
	bne _0801983A
	b _0801993C
_0801983A:
	movs r0, #2
	strb r0, [r1, #0xe]
	movs r0, #0x1e
	bl ProcSleep_08002B98
	b _0801993C
_08019846:
	ldr r0, _0801986C @ =0x030013B8
	ldr r3, [r0]
	adds r2, r3, #0
	adds r2, #0x84
	adds r1, r3, #0
	adds r1, #0x7c
	ldrb r0, [r2]
	ldrb r1, [r1]
	cmp r0, r1
	bne _08019870
	lsls r0, r0, #2
	adds r1, r3, #0
	adds r1, #0x2c
	adds r1, r1, r0
	ldr r0, [r1]
	movs r1, #6
	bl sub_08009AFC
	b _08019882
	.align 2, 0
_0801986C: .4byte 0x030013B8
_08019870:
	ldrb r0, [r2]
	lsls r0, r0, #2
	adds r1, r3, #0
	adds r1, #0x2c
	adds r1, r1, r0
	ldr r0, [r1]
	movs r1, #5
	bl sub_08009AFC
_08019882:
	ldr r4, _080198D0 @ =0x030013B8
	ldr r1, [r4]
	adds r0, r1, #0
	adds r0, #0x84
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r1, #0x2c
	adds r1, r1, r0
	ldr r0, [r1]
	movs r1, #0
	bl sub_08009B40
	bl sub_08005934
	ldr r0, [r4]
	adds r1, r0, #0
	adds r1, #0x84
	adds r0, #0x7c
	ldrb r1, [r1]
	ldrb r0, [r0]
	cmp r1, r0
	beq _080198C4
	ldr r0, _080198D4 @ =0x00000159
	bl m4aSongNumStart
	ldr r0, [r4]
	adds r1, r0, #0
	adds r1, #0x84
	adds r0, #0x7c
	ldrb r1, [r1]
	ldrb r0, [r0]
	cmp r1, r0
	bne _080198DC
_080198C4:
	ldr r0, _080198D8 @ =0x08083B20
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	b _080198E6
	.align 2, 0
_080198D0: .4byte 0x030013B8
_080198D4: .4byte 0x00000159
_080198D8: .4byte 0x08083B20
_080198DC:
	ldr r0, _080198F0 @ =0x08083B28
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
_080198E6:
	ldr r0, _080198F4 @ =0x030013B8
	ldr r1, [r0]
	movs r0, #3
	strb r0, [r1, #0xe]
	b _0801993C
	.align 2, 0
_080198F0: .4byte 0x08083B28
_080198F4: .4byte 0x030013B8
_080198F8:
	ldr r2, [r2]
	adds r0, r2, #0
	adds r0, #0x84
	ldrb r1, [r0]
	lsls r1, r1, #2
	subs r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0]
	ldrb r0, [r0, #1]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _0801993C
	movs r0, #4
	strb r0, [r2, #0xe]
	movs r0, #0x3c
	bl ProcSleep_08002B98
	b _0801993C
_0801991C:
	ldr r0, [r2]
	adds r1, r0, #0
	adds r1, #0x84
	adds r0, #0x7c
	ldrb r2, [r1]
	ldrb r0, [r0]
	cmp r2, r0
	bne _08019932
	ldr r1, _08019944 @ =0x03004494
	adds r0, r2, #1
	strb r0, [r1]
_08019932:
	bl sub_08005A2C
	movs r0, #4
	bl sub_08019594
_0801993C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08019944: .4byte 0x03004494

	thumb_func_start sub_08019948
sub_08019948: @ 0x08019948
	push {r4, r5, lr}
	sub sp, #4
	ldr r5, _0801995C @ =0x030013B8
	ldr r0, [r5]
	ldrb r4, [r0, #0xe]
	cmp r4, #0
	beq _08019960
	cmp r4, #1
	beq _08019994
	b _080199CA
	.align 2, 0
_0801995C: .4byte 0x030013B8
_08019960:
	str r4, [sp]
	movs r0, #1
	movs r1, #3
	movs r2, #0
	movs r3, #0x1d
	bl sub_0800031C
	ldr r2, _0801998C @ =0x030024E0
	ldrh r1, [r2]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, [r5]
	movs r0, #1
	strb r0, [r1, #0xe]
	ldr r0, _08019990 @ =0x030056F0
	movs r1, #4
	bl m4aMPlayFadeOut
	b _080199CA
	.align 2, 0
_0801998C: .4byte 0x030024E0
_08019990: .4byte 0x030056F0
_08019994:
	bl sub_080003D0
	cmp r0, #0
	beq _080199CA
	bl sub_080058A4
	ldr r0, [r5]
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	ldr r0, [r5]
	movs r3, #4
	ldrsh r0, [r0, r3]
	bl sub_08007A08
	ldr r0, [r5]
	movs r1, #2
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	ldr r0, [r5]
	ldr r0, [r0, #0x74]
	bl sub_08007CF8
	ldr r0, [r5]
	strb r4, [r0, #0xc]
_080199CA:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080199D4
sub_080199D4: @ 0x080199D4
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _08019A08 @ =0x030013B8
	ldr r0, [r5]
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	adds r6, r0, #0
	ldr r0, [r5]
	movs r1, #0
	ldrsh r0, [r0, r1]
	ldr r1, _08019A0C @ =0x08083BCC
	lsls r4, r4, #2
	adds r4, r4, r1
	ldr r1, [r4]
	bl sub_08007B84
	movs r0, #0
	strb r0, [r6]
	strh r0, [r6, #2]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08019A08: .4byte 0x030013B8
_08019A0C: .4byte 0x08083BCC

	thumb_func_start sub_08019A10
sub_08019A10: @ 0x08019A10
	push {lr}
	movs r0, #1
	bl sub_080199D4
	pop {r0}
	bx r0

	thumb_func_start sub_08019A1C
sub_08019A1C: @ 0x08019A1C
	push {lr}
	movs r0, #2
	bl sub_080199D4
	pop {r0}
	bx r0

	thumb_func_start sub_08019A28
sub_08019A28: @ 0x08019A28
	push {lr}
	bl sub_08019A10
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08019A34
sub_08019A34: @ 0x08019A34
	bx lr
	.align 2, 0

	thumb_func_start sub_08019A38
sub_08019A38: @ 0x08019A38
	push {r4, r5, lr}
	ldr r4, _08019A68 @ =0x030013B8
	ldr r0, [r4]
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	adds r5, r0, #0
	ldr r1, [r4]
	adds r0, r1, #0
	adds r0, #0x84
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r1, #0x2c
	adds r1, r1, r0
	ldr r1, [r1]
	ldrb r0, [r5]
	cmp r0, #1
	beq _08019A88
	cmp r0, #1
	bgt _08019A6C
	cmp r0, #0
	beq _08019A72
	b _08019AB2
	.align 2, 0
_08019A68: .4byte 0x030013B8
_08019A6C:
	cmp r0, #2
	beq _08019A9E
	b _08019AB2
_08019A72:
	ldrb r0, [r1, #1]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _08019AB2
	adds r0, r1, #0
	movs r1, #1
	bl sub_08009AFC
	ldrb r0, [r5]
	adds r0, #1
	b _08019AB0
_08019A88:
	ldrb r0, [r1, #1]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _08019AB2
	adds r0, r1, #0
	movs r1, #2
	bl sub_08009AFC
	ldrb r0, [r5]
	adds r0, #1
	b _08019AB0
_08019A9E:
	ldrb r0, [r1, #1]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _08019AB2
	adds r0, r1, #0
	movs r1, #3
	bl sub_08009AFC
	movs r0, #0
_08019AB0:
	strb r0, [r5]
_08019AB2:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08019AB8
sub_08019AB8: @ 0x08019AB8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	movs r6, #0
	ldr r4, _08019B18 @ =0x030013B8
_08019AC2:
	movs r0, #3
	movs r1, #0xc0
	bl sub_080099E0
	adds r5, r0, #0
	movs r1, #1
	bl sub_08009A34
	ldr r1, _08019B1C @ =0x08083BE0
	lsls r0, r6, #1
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r0, r5, #0
	movs r2, #0x60
	bl sub_08009A70
	ldr r0, [r4]
	ldr r1, [r0, #0x78]
	adds r0, r5, #0
	movs r2, #0
	bl sub_08009BBC
	adds r0, r5, #0
	movs r1, #2
	bl sub_08009AB4
	adds r0, r5, #0
	ldr r1, _08019B20 @ =0x080CDB3C
	ldr r2, _08019B24 @ =0x080CDAF0
	movs r3, #4
	bl sub_08009ACC
	ldr r0, [r4]
	adds r0, #0x84
	ldrb r0, [r0]
	cmp r6, r0
	bne _08019B2C
	adds r0, r5, #0
	ldr r1, _08019B28 @ =0x06010C00
	bl sub_08009A78
	b _08019B34
	.align 2, 0
_08019B18: .4byte 0x030013B8
_08019B1C: .4byte 0x08083BE0
_08019B20: .4byte 0x080CDB3C
_08019B24: .4byte 0x080CDAF0
_08019B28: .4byte 0x06010C00
_08019B2C:
	adds r0, r5, #0
	ldr r1, _08019C2C @ =0x06010800
	bl sub_08009A78
_08019B34:
	adds r0, r5, #0
	movs r1, #0
	bl sub_08009B40
	ldr r0, [r4]
	lsls r1, r6, #2
	adds r0, #0x2c
	adds r0, r0, r1
	str r5, [r0]
	adds r6, #1
	cmp r6, #3
	ble _08019AC2
	movs r6, #0
	ldr r4, _08019C30 @ =0x030013B8
_08019B50:
	movs r0, #3
	movs r1, #0xff
	bl sub_080099E0
	adds r5, r0, #0
	movs r1, #1
	bl sub_08009A34
	ldr r1, _08019C34 @ =0x08083BE0
	lsls r0, r6, #1
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r0, r5, #0
	movs r2, #0x60
	bl sub_08009A70
	ldr r0, [r4]
	ldr r1, [r0, #0x5c]
	adds r0, r5, #0
	bl sub_08009A78
	adds r0, r5, #0
	movs r1, #4
	bl sub_08009AB4
	adds r0, r5, #0
	ldr r1, _08019C38 @ =0x080CAD0C
	ldr r2, _08019C3C @ =0x080CACE0
	movs r3, #1
	bl sub_08009ACC
	adds r0, r5, #0
	movs r1, #0
	bl sub_08009B40
	ldr r0, [r4]
	lsls r1, r6, #2
	adds r0, #0x40
	adds r0, r0, r1
	str r5, [r0]
	adds r6, #1
	cmp r6, #3
	ble _08019B50
	movs r6, #0
	ldr r7, _08019C30 @ =0x030013B8
	ldr r0, _08019C40 @ =0x080B8664
	mov r8, r0
_08019BB0:
	movs r0, #3
	movs r1, #0
	bl sub_080099E0
	adds r5, r0, #0
	movs r1, #0
	bl sub_08009A34
	ldr r0, _08019C44 @ =0x08083BD8
	lsls r4, r6, #1
	adds r0, r4, r0
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r0, r5, #0
	movs r2, #0x64
	bl sub_08009A70
	ldr r0, [r7]
	ldr r1, [r0, #0x60]
	adds r0, r5, #0
	bl sub_08009A78
	adds r0, r5, #0
	movs r1, #5
	bl sub_08009AB4
	ldr r0, _08019C48 @ =0x03004400
	ldrb r2, [r0, #0x14]
	lsls r2, r2, #2
	mov r1, r8
	adds r0, r2, r1
	ldr r1, [r0]
	ldr r0, _08019C4C @ =0x080B8660
	adds r2, r2, r0
	ldr r0, [r2]
	ldr r2, [r0]
	ldr r0, _08019C50 @ =0x08083BDC
	adds r4, r4, r0
	ldrb r3, [r4]
	adds r0, r5, #0
	bl sub_08009ACC
	ldr r0, [r7]
	lsls r1, r6, #2
	adds r0, #0x50
	adds r0, r0, r1
	str r5, [r0]
	adds r6, #1
	cmp r6, #1
	ble _08019BB0
	ldr r0, _08019C30 @ =0x030013B8
	ldr r0, [r0]
	movs r2, #4
	ldrsh r0, [r0, r2]
	ldr r1, _08019C54 @ =sub_08019C58
	bl sub_08007B84
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08019C2C: .4byte 0x06010800
_08019C30: .4byte 0x030013B8
_08019C34: .4byte 0x08083BE0
_08019C38: .4byte 0x080CAD0C
_08019C3C: .4byte 0x080CACE0
_08019C40: .4byte 0x080B8664
_08019C44: .4byte 0x08083BD8
_08019C48: .4byte 0x03004400
_08019C4C: .4byte 0x080B8660
_08019C50: .4byte 0x08083BDC
_08019C54: .4byte sub_08019C58

	thumb_func_start sub_08019C58
sub_08019C58: @ 0x08019C58
	bx lr
	.align 2, 0

	thumb_func_start sub_08019C5C
sub_08019C5C: @ 0x08019C5C
	push {r4, r5, r6, lr}
	movs r5, #0
	ldr r6, _08019CB0 @ =0x030013B8
_08019C62:
	ldr r0, [r6]
	lsls r4, r5, #2
	adds r0, #0x2c
	adds r0, r0, r4
	ldr r0, [r0]
	bl sub_08009A00
	ldr r0, [r6]
	adds r0, #0x40
	adds r0, r0, r4
	ldr r0, [r0]
	bl sub_08009A00
	adds r5, #1
	cmp r5, #3
	ble _08019C62
	movs r5, #0
	ldr r4, _08019CB0 @ =0x030013B8
_08019C86:
	ldr r0, [r4]
	lsls r1, r5, #2
	adds r0, #0x50
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_08009A00
	ldr r0, [r4]
	lsls r1, r5, #1
	adds r0, #6
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	adds r5, #1
	cmp r5, #1
	ble _08019C86
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08019CB0: .4byte 0x030013B8

	thumb_func_start sub_08019CB4
sub_08019CB4: @ 0x08019CB4
	push {r4, r5, r6, lr}
	sub sp, #4
	movs r5, #0
	ldr r6, _08019CF8 @ =0x030013B8
_08019CBC:
	ldr r0, [r6]
	lsls r1, r5, #2
	adds r0, #0x50
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _08019CFC @ =0x08083BDC
	lsls r4, r5, #1
	adds r1, r4, r1
	ldrh r1, [r1]
	ldr r2, _08019D00 @ =0x08083BD8
	adds r2, r4, r2
	movs r3, #0
	ldrsh r2, [r2, r3]
	movs r3, #0x41
	str r3, [sp]
	movs r3, #0x64
	bl sub_08029D88
	ldr r1, [r6]
	adds r1, #6
	adds r1, r1, r4
	strh r0, [r1]
	adds r5, #1
	cmp r5, #1
	ble _08019CBC
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08019CF8: .4byte 0x030013B8
_08019CFC: .4byte 0x08083BDC
_08019D00: .4byte 0x08083BD8

	thumb_func_start sub_08019D04
sub_08019D04: @ 0x08019D04
	push {r4, r5, lr}
	movs r4, #0
	ldr r5, _08019D28 @ =0x030013B8
_08019D0A:
	ldr r0, [r5]
	lsls r1, r4, #2
	adds r0, #0x50
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0
	bl sub_08009A34
	adds r4, #1
	cmp r4, #1
	ble _08019D0A
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08019D28: .4byte 0x030013B8

	thumb_func_start sub_08019D2C
sub_08019D2C: @ 0x08019D2C
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _08019D60 @ =0x030013B8
	ldr r0, [r5]
	movs r1, #2
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	movs r1, #0
	strb r1, [r0]
	strh r1, [r0, #2]
	ldr r0, [r5]
	movs r1, #2
	ldrsh r0, [r0, r1]
	ldr r1, _08019D64 @ =0x08083C88
	lsls r4, r4, #2
	adds r4, r4, r1
	ldr r1, [r4]
	bl sub_08007B84
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08019D60: .4byte 0x030013B8
_08019D64: .4byte 0x08083C88

	thumb_func_start sub_08019D68
sub_08019D68: @ 0x08019D68
	push {lr}
	ldr r0, _08019D80 @ =0x030013B8
	ldr r0, [r0]
	adds r0, #0x7d
	movs r1, #0
	strb r1, [r0]
	movs r0, #1
	bl sub_08019D2C
	pop {r0}
	bx r0
	.align 2, 0
_08019D80: .4byte 0x030013B8

	thumb_func_start sub_08019D84
sub_08019D84: @ 0x08019D84
	push {lr}
	ldr r0, _08019D9C @ =0x030013B8
	ldr r0, [r0]
	adds r0, #0x7d
	movs r1, #1
	strb r1, [r0]
	movs r0, #2
	bl sub_08019D2C
	pop {r0}
	bx r0
	.align 2, 0
_08019D9C: .4byte 0x030013B8

	thumb_func_start sub_08019DA0
sub_08019DA0: @ 0x08019DA0
	push {lr}
	ldr r0, _08019DB8 @ =0x030013B8
	ldr r0, [r0]
	adds r0, #0x7d
	movs r1, #1
	strb r1, [r0]
	movs r0, #3
	bl sub_08019D2C
	pop {r0}
	bx r0
	.align 2, 0
_08019DB8: .4byte 0x030013B8

	thumb_func_start sub_08019DBC
sub_08019DBC: @ 0x08019DBC
	push {lr}
	ldr r0, _08019DD4 @ =0x030013B8
	ldr r0, [r0]
	adds r0, #0x7d
	movs r1, #1
	strb r1, [r0]
	movs r0, #4
	bl sub_08019D2C
	pop {r0}
	bx r0
	.align 2, 0
_08019DD4: .4byte 0x030013B8

	thumb_func_start sub_08019DD8
sub_08019DD8: @ 0x08019DD8
	push {lr}
	ldr r0, _08019DF0 @ =0x030013B8
	ldr r0, [r0]
	adds r0, #0x7d
	movs r1, #1
	strb r1, [r0]
	movs r0, #5
	bl sub_08019D2C
	pop {r0}
	bx r0
	.align 2, 0
_08019DF0: .4byte 0x030013B8

	thumb_func_start sub_08019DF4
sub_08019DF4: @ 0x08019DF4
	push {lr}
	ldr r0, _08019E0C @ =0x030013B8
	ldr r0, [r0]
	adds r0, #0x7d
	movs r1, #1
	strb r1, [r0]
	movs r0, #6
	bl sub_08019D2C
	pop {r0}
	bx r0
	.align 2, 0
_08019E0C: .4byte 0x030013B8

	thumb_func_start sub_08019E10
sub_08019E10: @ 0x08019E10
	push {r4, r5, lr}
	movs r0, #3
	movs r1, #0xbf
	bl sub_080099E0
	adds r4, r0, #0
	movs r1, #0
	bl sub_08009A34
	ldr r1, _08019E74 @ =0x08083BE0
	ldr r5, _08019E78 @ =0x030013B8
	ldr r0, [r5]
	adds r0, #0x7c
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	subs r1, #0x18
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	movs r2, #0x10
	bl sub_08009A70
	ldr r0, [r5]
	ldr r1, [r0, #0x58]
	adds r0, r4, #0
	bl sub_08009A78
	adds r0, r4, #0
	movs r1, #3
	bl sub_08009AB4
	ldr r1, _08019E7C @ =0x0809CA9C
	ldr r2, _08019E80 @ =0x0809CA94
	adds r0, r4, #0
	movs r3, #0
	bl sub_08009ACC
	adds r0, r4, #0
	movs r1, #0xff
	bl sub_08009B40
	ldr r0, [r5]
	str r4, [r0, #0x3c]
	bl sub_08019D68
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08019E74: .4byte 0x08083BE0
_08019E78: .4byte 0x030013B8
_08019E7C: .4byte 0x0809CA9C
_08019E80: .4byte 0x0809CA94

	thumb_func_start sub_08019E84
sub_08019E84: @ 0x08019E84
	bx lr
	.align 2, 0

	thumb_func_start sub_08019E88
sub_08019E88: @ 0x08019E88
	push {lr}
	ldr r0, _08019EA0 @ =0x030013B8
	ldr r0, [r0]
	ldr r0, [r0, #0x3c]
	movs r1, #1
	bl sub_08009A34
	bl sub_08019D68
	pop {r0}
	bx r0
	.align 2, 0
_08019EA0: .4byte 0x030013B8

	thumb_func_start sub_08019EA4
sub_08019EA4: @ 0x08019EA4
	push {lr}
	ldr r2, _08019EC0 @ =0x030024B0
	ldrh r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08019EC4
	movs r0, #0xcc
	bl m4aSongNumStart
	bl sub_08019DF4
	b _08019F0C
	.align 2, 0
_08019EC0: .4byte 0x030024B0
_08019EC4:
	ldrh r1, [r2, #4]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08019EEC
	ldr r0, _08019EE8 @ =0x030013B8
	ldr r0, [r0]
	adds r0, #0x7c
	ldrb r0, [r0]
	cmp r0, #0
	beq _08019EEC
	movs r0, #0xca
	bl m4aSongNumStart
	bl sub_08019DD8
	b _08019F0C
	.align 2, 0
_08019EE8: .4byte 0x030013B8
_08019EEC:
	ldrh r1, [r2, #4]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08019F0C
	ldr r0, _08019F10 @ =0x030013B8
	ldr r0, [r0]
	adds r0, #0x7c
	ldrb r0, [r0]
	cmp r0, #2
	bhi _08019F0C
	movs r0, #0xca
	bl m4aSongNumStart
	bl sub_08019DBC
_08019F0C:
	pop {r0}
	bx r0
	.align 2, 0
_08019F10: .4byte 0x030013B8

	thumb_func_start sub_08019F14
sub_08019F14: @ 0x08019F14
	push {r4, r5, lr}
	bl sub_08007BD4
	adds r3, r0, #0
	ldrb r2, [r3]
	cmp r2, #0
	beq _08019F28
	cmp r2, #1
	beq _08019F50
	b _08019FA4
_08019F28:
	ldr r1, _08019F4C @ =0x030013B8
	ldr r0, [r1]
	adds r0, #0x7e
	strb r2, [r0]
	ldr r1, [r1]
	ldr r0, [r1, #0x3c]
	ldrh r2, [r0, #6]
	adds r0, r1, #0
	adds r0, #0x80
	strh r2, [r0]
	ldr r0, [r1, #0x3c]
	ldrh r0, [r0, #8]
	adds r1, #0x82
	strh r0, [r1]
	movs r0, #1
	strb r0, [r3]
	b _08019FA4
	.align 2, 0
_08019F4C: .4byte 0x030013B8
_08019F50:
	ldr r5, _08019FAC @ =0x030013B8
	ldr r4, [r5]
	ldr r0, [r4, #0x3c]
	adds r2, r4, #0
	adds r2, #0x80
	ldr r1, _08019FB0 @ =0x08083BE8
	adds r3, r4, #0
	adds r3, #0x7e
	ldrb r3, [r3]
	lsls r3, r3, #1
	adds r1, r3, r1
	ldrh r1, [r1]
	ldrh r2, [r2]
	adds r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r4, #0x82
	ldr r2, _08019FB4 @ =0x08083BF8
	adds r3, r3, r2
	ldrh r2, [r4]
	ldrh r3, [r3]
	subs r2, r2, r3
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl sub_08009A70
	ldr r1, [r5]
	adds r1, #0x7e
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #7
	bls _08019FA4
	ldr r1, [r5]
	adds r1, #0x7c
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	bl sub_08019DA0
_08019FA4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08019FAC: .4byte 0x030013B8
_08019FB0: .4byte 0x08083BE8
_08019FB4: .4byte 0x08083BF8

	thumb_func_start sub_08019FB8
sub_08019FB8: @ 0x08019FB8
	push {r4, r5, lr}
	bl sub_08007BD4
	adds r3, r0, #0
	ldrb r2, [r3]
	cmp r2, #0
	beq _08019FCC
	cmp r2, #1
	beq _08019FF4
	b _0801A048
_08019FCC:
	ldr r1, _08019FF0 @ =0x030013B8
	ldr r0, [r1]
	adds r0, #0x7e
	strb r2, [r0]
	ldr r1, [r1]
	ldr r0, [r1, #0x3c]
	ldrh r2, [r0, #6]
	adds r0, r1, #0
	adds r0, #0x80
	strh r2, [r0]
	ldr r0, [r1, #0x3c]
	ldrh r0, [r0, #8]
	adds r1, #0x82
	strh r0, [r1]
	movs r0, #1
	strb r0, [r3]
	b _0801A048
	.align 2, 0
_08019FF0: .4byte 0x030013B8
_08019FF4:
	ldr r5, _0801A050 @ =0x030013B8
	ldr r4, [r5]
	ldr r0, [r4, #0x3c]
	adds r1, r4, #0
	adds r1, #0x80
	ldr r2, _0801A054 @ =0x08083BE8
	adds r3, r4, #0
	adds r3, #0x7e
	ldrb r3, [r3]
	lsls r3, r3, #1
	adds r2, r3, r2
	ldrh r1, [r1]
	ldrh r2, [r2]
	subs r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r4, #0x82
	ldr r2, _0801A058 @ =0x08083BF8
	adds r3, r3, r2
	ldrh r2, [r4]
	ldrh r3, [r3]
	subs r2, r2, r3
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl sub_08009A70
	ldr r1, [r5]
	adds r1, #0x7e
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #7
	bls _0801A048
	ldr r1, [r5]
	adds r1, #0x7c
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	bl sub_08019DA0
_0801A048:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801A050: .4byte 0x030013B8
_0801A054: .4byte 0x08083BE8
_0801A058: .4byte 0x08083BF8

	thumb_func_start sub_0801A05C
sub_0801A05C: @ 0x0801A05C
	push {r4, r5, lr}
	bl sub_08007BD4
	adds r3, r0, #0
	ldrb r2, [r3]
	cmp r2, #0
	beq _0801A070
	cmp r2, #1
	beq _0801A098
	b _0801A0E2
_0801A070:
	ldr r1, _0801A094 @ =0x030013B8
	ldr r0, [r1]
	adds r0, #0x7e
	strb r2, [r0]
	ldr r1, [r1]
	ldr r0, [r1, #0x3c]
	ldrh r2, [r0, #6]
	adds r0, r1, #0
	adds r0, #0x80
	strh r2, [r0]
	ldr r0, [r1, #0x3c]
	ldrh r0, [r0, #8]
	adds r1, #0x82
	strh r0, [r1]
	movs r0, #1
	strb r0, [r3]
	b _0801A0E2
	.align 2, 0
_0801A094: .4byte 0x030013B8
_0801A098:
	ldr r5, _0801A0E8 @ =0x030013B8
	ldr r4, [r5]
	ldr r0, [r4, #0x3c]
	adds r2, r4, #0
	adds r2, #0x80
	ldr r1, _0801A0EC @ =0x08083C08
	adds r3, r4, #0
	adds r3, #0x7e
	ldrb r3, [r3]
	lsls r3, r3, #1
	adds r1, r3, r1
	ldrh r1, [r1]
	ldrh r2, [r2]
	adds r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r4, #0x82
	ldr r2, _0801A0F0 @ =0x08083C48
	adds r3, r3, r2
	ldrh r2, [r3]
	ldrh r4, [r4]
	adds r2, r2, r4
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl sub_08009A70
	ldr r1, [r5]
	adds r1, #0x7e
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1f
	bls _0801A0E2
	bl sub_08019D68
_0801A0E2:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801A0E8: .4byte 0x030013B8
_0801A0EC: .4byte 0x08083C08
_0801A0F0: .4byte 0x08083C48

	thumb_func_start sub_0801A0F4
sub_0801A0F4: @ 0x0801A0F4
	push {lr}
	ldr r0, _0801A104 @ =0x030013B8
	ldr r0, [r0]
	ldr r0, [r0, #0x3c]
	bl sub_08009A00
	pop {r0}
	bx r0
	.align 2, 0
_0801A104: .4byte 0x030013B8

	thumb_func_start sub_0801A108
sub_0801A108: @ 0x0801A108
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0xc
	ldr r5, _0801A22C @ =0x030013BC
	bl sub_0801934C
	adds r1, r0, #0
	str r1, [r5]
	movs r0, #0
	movs r2, #0x3c
	bl sub_08007EFC
	ldr r0, _0801A230 @ =sub_0801A7FC
	movs r1, #0x40
	movs r2, #0
	bl sub_08007968
	ldr r1, [r5]
	movs r2, #0
	mov r8, r2
	strh r0, [r1]
	movs r2, #0
	ldrsh r0, [r1, r2]
	ldr r1, _0801A234 @ =sub_0801A880
	bl sub_08007BA0
	ldr r0, _0801A238 @ =sub_0801A5EC
	movs r1, #0x40
	movs r2, #0
	bl sub_08007968
	ldr r1, [r5]
	strh r0, [r1, #2]
	movs r2, #2
	ldrsh r0, [r1, r2]
	ldr r1, _0801A23C @ =sub_0801A6F4
	bl sub_08007BA0
	ldr r0, _0801A240 @ =0x080CE114
	ldr r1, _0801A244 @ =0x05000200
	bl LoadPalette_08008308
	ldr r0, _0801A248 @ =0x080CE158
	add r1, sp, #4
	bl sub_08008380
	ldr r1, [r5]
	str r0, [r1, #0x34]
	ldr r0, [sp, #4]
	str r0, [r1, #0x38]
	ldr r4, _0801A24C @ =0x06010400
	ldr r0, _0801A250 @ =0x0809CA60
	ldr r1, _0801A254 @ =0x05000220
	bl LoadPalette_08008308
	ldr r0, [r5]
	str r4, [r0, #0x28]
	ldr r0, _0801A258 @ =0x0809CAA4
	adds r1, r4, #0
	bl DecompressData_08008374
	adds r4, r0, r4
	ldr r0, _0801A25C @ =0x080CAC38
	ldr r1, _0801A260 @ =0x05000240
	bl LoadPalette_08008308
	ldr r0, [r5]
	str r4, [r0, #0x2c]
	ldr r0, _0801A264 @ =0x080CAD1C
	adds r1, r4, #0
	bl DecompressData_08008374
	adds r4, r4, r0
	ldr r1, _0801A268 @ =0x080B85E8
	ldr r6, _0801A26C @ =0x03004400
	ldrb r0, [r6, #0x14]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _0801A270 @ =0x05000260
	bl LoadPalette_08008308
	ldr r0, [r5]
	str r4, [r0, #0x30]
	ldr r1, _0801A274 @ =0x080B8624
	ldrb r0, [r6, #0x14]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r0, [r0, #4]
	adds r1, r4, #0
	bl DecompressData_08008374
	ldr r0, _0801A278 @ =0x080B9924
	movs r1, #0xa0
	lsls r1, r1, #0x13
	bl LoadPalette_08008308
	ldr r0, _0801A27C @ =0x080B99C8
	movs r1, #0xc0
	lsls r1, r1, #0x13
	bl DecompressData_08008374
	ldr r0, _0801A280 @ =0x080BA4DC
	ldr r1, _0801A284 @ =0x0600F800
	movs r2, #0
	movs r3, #0
	bl LoadTileMap_080083CC
	movs r0, #0xf0
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #3
	bl sub_08006BE8
	bl sub_08003F9C
	movs r0, #0x80
	lsls r0, r0, #1
	str r0, [sp]
	movs r0, #1
	movs r1, #0x1e
	movs r2, #5
	movs r3, #0
	bl sub_08004028
	bl sub_080057C0
	bl sub_08005AA0
	mov r0, r8
	str r0, [sp]
	movs r0, #1
	movs r1, #3
	movs r2, #0
	movs r3, #0x1d
	bl sub_08000268
	add sp, #0xc
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801A22C: .4byte 0x030013BC
_0801A230: .4byte sub_0801A7FC
_0801A234: .4byte sub_0801A880
_0801A238: .4byte sub_0801A5EC
_0801A23C: .4byte sub_0801A6F4
_0801A240: .4byte 0x080CE114
_0801A244: .4byte 0x05000200
_0801A248: .4byte 0x080CE158
_0801A24C: .4byte 0x06010400
_0801A250: .4byte 0x0809CA60
_0801A254: .4byte 0x05000220
_0801A258: .4byte 0x0809CAA4
_0801A25C: .4byte 0x080CAC38
_0801A260: .4byte 0x05000240
_0801A264: .4byte 0x080CAD1C
_0801A268: .4byte 0x080B85E8
_0801A26C: .4byte 0x03004400
_0801A270: .4byte 0x05000260
_0801A274: .4byte 0x080B8624
_0801A278: .4byte 0x080B9924
_0801A27C: .4byte 0x080B99C8
_0801A280: .4byte 0x080BA4DC
_0801A284: .4byte 0x0600F800

	thumb_func_start sub_0801A288
sub_0801A288: @ 0x0801A288
	push {r4, lr}
	ldr r1, _0801A2A8 @ =0x08083DF4
	ldr r4, _0801A2AC @ =0x030013BC
	ldr r0, [r4]
	ldrb r0, [r0, #9]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl call_via_r0
	ldr r0, [r4]
	ldrb r0, [r0, #8]
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0801A2A8: .4byte 0x08083DF4
_0801A2AC: .4byte 0x030013BC

	thumb_func_start sub_0801A2B0
sub_0801A2B0: @ 0x0801A2B0
	ldr r1, _0801A2C4 @ =0x030013BC
	ldr r2, [r1]
	movs r3, #0
	strb r0, [r2, #9]
	ldr r0, [r1]
	strb r3, [r0, #0xa]
	ldr r0, [r1]
	strh r3, [r0, #0xc]
	bx lr
	.align 2, 0
_0801A2C4: .4byte 0x030013BC

	thumb_func_start sub_0801A2C8
sub_0801A2C8: @ 0x0801A2C8
	push {r4, r5, r6, lr}
	ldr r6, _0801A2DC @ =0x030013BC
	ldr r0, [r6]
	ldrb r0, [r0, #0xa]
	cmp r0, #0
	beq _0801A2E0
	cmp r0, #1
	beq _0801A328
	b _0801A340
	.align 2, 0
_0801A2DC: .4byte 0x030013BC
_0801A2E0:
	bl sub_08008174
	ldr r4, _0801A320 @ =0x030024E0
	ldr r0, _0801A324 @ =0x00001F03
	strh r0, [r4, #8]
	ldrh r0, [r4]
	movs r2, #0x80
	lsls r2, r2, #4
	adds r1, r2, #0
	orrs r0, r1
	movs r2, #0x80
	lsls r2, r2, #2
	adds r1, r2, #0
	orrs r0, r1
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4]
	movs r0, #1
	bl sub_08004124
	adds r4, #0x4f
	movs r5, #1
	strb r5, [r4]
	movs r0, #0x34
	bl m4aSongNumStart
	ldr r0, [r6]
	strb r5, [r0, #0xa]
	b _0801A340
	.align 2, 0
_0801A320: .4byte 0x030024E0
_0801A324: .4byte 0x00001F03
_0801A328:
	bl sub_080003D0
	cmp r0, #0
	beq _0801A340
	ldr r2, _0801A348 @ =0x030024E0
	ldrh r1, [r2]
	ldr r0, _0801A34C @ =0x0000FDFF
	ands r0, r1
	strh r0, [r2]
	movs r0, #1
	bl sub_0801A2B0
_0801A340:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801A348: .4byte 0x030024E0
_0801A34C: .4byte 0x0000FDFF

	thumb_func_start sub_0801A350
sub_0801A350: @ 0x0801A350
	push {r4, lr}
	ldr r4, _0801A364 @ =0x030013BC
	ldr r1, [r4]
	ldrb r0, [r1, #0xa]
	cmp r0, #0
	beq _0801A368
	cmp r0, #1
	beq _0801A380
	b _0801A386
	.align 2, 0
_0801A364: .4byte 0x030013BC
_0801A368:
	strb r0, [r1, #0x10]
	ldr r1, [r4]
	movs r0, #0x78
	strh r0, [r1, #0x14]
	movs r0, #0x48
	strh r0, [r1, #0x16]
	bl sub_0801A730
	ldr r1, [r4]
	movs r0, #1
	strb r0, [r1, #0xa]
	b _0801A386
_0801A380:
	movs r0, #2
	bl sub_0801A2B0
_0801A386:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0801A38C
sub_0801A38C: @ 0x0801A38C
	push {r4, r5, lr}
	ldr r5, _0801A3A4 @ =0x030013BC
	ldr r2, [r5]
	ldrb r1, [r2, #0xa]
	cmp r1, #1
	beq _0801A3C0
	cmp r1, #1
	bgt _0801A3A8
	cmp r1, #0
	beq _0801A3B4
	b _0801A4F2
	.align 2, 0
_0801A3A4: .4byte 0x030013BC
_0801A3A8:
	cmp r1, #2
	beq _0801A482
	cmp r1, #3
	bne _0801A3B2
	b _0801A4E8
_0801A3B2:
	b _0801A4F2
_0801A3B4:
	ldr r0, [r2, #0x1c]
	movs r1, #1
	bl sub_08009A34
	ldr r1, [r5]
	b _0801A4DC
_0801A3C0:
	ldr r0, _0801A3EC @ =0x030024B0
	ldrh r0, [r0]
	ands r1, r0
	cmp r1, #0
	beq _0801A3F0
	movs r1, #0x14
	ldrsh r0, [r2, r1]
	movs r3, #0x16
	ldrsh r1, [r2, r3]
	bl sub_0801A5A0
	ldr r1, [r5]
	strb r0, [r1, #0x10]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #5
	bhi _0801A3F0
	ldr r1, [r5]
	movs r0, #2
	strb r0, [r1, #0xa]
	b _0801A4F2
	.align 2, 0
_0801A3EC: .4byte 0x030024B0
_0801A3F0:
	ldr r2, _0801A414 @ =0x030013BC
	ldr r0, [r2]
	ldrh r3, [r0, #0x14]
	ldrh r4, [r0, #0x16]
	ldr r1, _0801A418 @ =0x030024B0
	ldrh r5, [r1, #2]
	movs r0, #0x30
	ands r0, r5
	cmp r0, #0
	beq _0801A42A
	movs r0, #0x20
	ands r0, r5
	cmp r0, #0
	beq _0801A420
	lsls r0, r3, #0x10
	ldr r3, _0801A41C @ =0xFFFF0000
	b _0801A426
	.align 2, 0
_0801A414: .4byte 0x030013BC
_0801A418: .4byte 0x030024B0
_0801A41C: .4byte 0xFFFF0000
_0801A420:
	lsls r0, r3, #0x10
	movs r3, #0x80
	lsls r3, r3, #9
_0801A426:
	adds r0, r0, r3
	lsrs r3, r0, #0x10
_0801A42A:
	ldrh r1, [r1, #2]
	movs r0, #0xc0
	ands r0, r1
	cmp r0, #0
	beq _0801A452
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0801A448
	lsls r0, r4, #0x10
	ldr r1, _0801A444 @ =0xFFFF0000
	b _0801A44E
	.align 2, 0
_0801A444: .4byte 0xFFFF0000
_0801A448:
	lsls r0, r4, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
_0801A44E:
	adds r0, r0, r1
	lsrs r4, r0, #0x10
_0801A452:
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xf
	bgt _0801A45C
	movs r3, #0x10
_0801A45C:
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xef
	ble _0801A466
	movs r3, #0xef
_0801A466:
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xf
	bgt _0801A470
	movs r4, #0x10
_0801A470:
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x9f
	ble _0801A47A
	movs r4, #0x9f
_0801A47A:
	ldr r0, [r2]
	strh r3, [r0, #0x14]
	strh r4, [r0, #0x16]
	b _0801A4F2
_0801A482:
	ldrb r0, [r2, #0x11]
	cmp r0, #0
	bne _0801A4F2
	bl sub_08005934
	ldr r1, _0801A4C8 @ =0x08083DDC
	ldr r0, [r5]
	ldrb r0, [r0, #0x10]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	bl sub_08005A2C
	ldr r1, [r5]
	ldrb r4, [r1, #0x10]
	cmp r4, #3
	bne _0801A4DC
	bl sub_080064F8
	lsls r0, r0, #0x18
	asrs r1, r0, #0x18
	cmp r1, #0
	beq _0801A4D2
	cmp r1, #0
	bgt _0801A4CC
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0801A4D8
	b _0801A4F2
	.align 2, 0
_0801A4C8: .4byte 0x08083DDC
_0801A4CC:
	cmp r1, #1
	beq _0801A4D8
	b _0801A4F2
_0801A4D2:
	ldr r0, [r5]
	strb r4, [r0, #0xa]
	b _0801A4F2
_0801A4D8:
	ldr r0, _0801A4E4 @ =0x030013BC
	ldr r1, [r0]
_0801A4DC:
	movs r0, #1
	strb r0, [r1, #0xa]
	b _0801A4F2
	.align 2, 0
_0801A4E4: .4byte 0x030013BC
_0801A4E8:
	bl sub_0801A780
	movs r0, #3
	bl sub_0801A2B0
_0801A4F2:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_0801A4F8
sub_0801A4F8: @ 0x0801A4F8
	push {lr}
	ldr r0, _0801A50C @ =0x030013BC
	ldr r1, [r0]
	ldrb r0, [r1, #0xa]
	cmp r0, #0
	beq _0801A510
	cmp r0, #1
	beq _0801A516
	b _0801A51C
	.align 2, 0
_0801A50C: .4byte 0x030013BC
_0801A510:
	movs r0, #1
	strb r0, [r1, #0xa]
	b _0801A51C
_0801A516:
	movs r0, #4
	bl sub_0801A2B0
_0801A51C:
	pop {r0}
	bx r0

	thumb_func_start sub_0801A520
sub_0801A520: @ 0x0801A520
	push {r4, r5, lr}
	sub sp, #4
	ldr r5, _0801A534 @ =0x030013BC
	ldr r0, [r5]
	ldrb r4, [r0, #0xa]
	cmp r4, #0
	beq _0801A538
	cmp r4, #1
	beq _0801A56C
	b _0801A598
	.align 2, 0
_0801A534: .4byte 0x030013BC
_0801A538:
	str r4, [sp]
	movs r0, #1
	movs r1, #3
	movs r2, #0
	movs r3, #0x1d
	bl sub_0800031C
	ldr r2, _0801A564 @ =0x030024E0
	ldrh r1, [r2]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, [r5]
	movs r0, #1
	strb r0, [r1, #0xa]
	ldr r0, _0801A568 @ =0x030056F0
	movs r1, #4
	bl m4aMPlayFadeOut
	b _0801A598
	.align 2, 0
_0801A564: .4byte 0x030024E0
_0801A568: .4byte 0x030056F0
_0801A56C:
	bl sub_080003D0
	cmp r0, #0
	beq _0801A598
	bl sub_080058A4
	ldr r0, [r5]
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	ldr r0, [r5]
	movs r3, #2
	ldrsh r0, [r0, r3]
	bl sub_08007A08
	ldr r0, [r5]
	ldr r0, [r0, #0x34]
	bl sub_08007CF8
	ldr r0, [r5]
	strb r4, [r0, #8]
_0801A598:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_0801A5A0
sub_0801A5A0: @ 0x0801A5A0
	push {r4, r5, r6, r7, lr}
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	movs r5, #6
	ldr r3, _0801A5E8 @ =0x08083CA4
	movs r1, #0
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
_0801A5B0:
	movs r2, #0
	ldrsh r0, [r3, r2]
	cmp r4, r0
	blt _0801A5D8
	lsls r0, r6, #0x10
	asrs r2, r0, #0x10
	movs r7, #2
	ldrsh r0, [r3, r7]
	cmp r2, r0
	blt _0801A5D8
	movs r7, #4
	ldrsh r0, [r3, r7]
	cmp r4, r0
	bgt _0801A5D8
	movs r7, #6
	ldrsh r0, [r3, r7]
	cmp r2, r0
	bgt _0801A5D8
	lsls r0, r1, #0x18
	lsrs r5, r0, #0x18
_0801A5D8:
	adds r1, #1
	adds r3, #8
	cmp r1, #5
	ble _0801A5B0
	adds r0, r5, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0801A5E8: .4byte 0x08083CA4

	thumb_func_start sub_0801A5EC
sub_0801A5EC: @ 0x0801A5EC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	movs r0, #3
	movs r1, #0x80
	bl sub_080099E0
	adds r5, r0, #0
	movs r1, #1
	bl sub_08009A34
	adds r0, r5, #0
	movs r1, #0x78
	movs r2, #0x58
	bl sub_08009A70
	ldr r1, _0801A6C8 @ =0x06010000
	adds r0, r5, #0
	bl sub_08009A78
	ldr r4, _0801A6CC @ =0x030013BC
	ldr r0, [r4]
	ldr r1, [r0, #0x38]
	adds r0, r5, #0
	movs r2, #0
	bl sub_08009BBC
	adds r0, r5, #0
	movs r1, #0
	bl sub_08009AB4
	ldr r1, _0801A6D0 @ =0x080CE150
	ldr r2, _0801A6D4 @ =0x080CE148
	adds r0, r5, #0
	movs r3, #0
	bl sub_08009ACC
	adds r0, r5, #0
	movs r1, #0xff
	bl sub_08009B40
	ldr r0, [r4]
	str r5, [r0, #0x18]
	movs r6, #0
	adds r7, r4, #0
	ldr r0, _0801A6D8 @ =0x080B8664
	mov r8, r0
_0801A64A:
	movs r0, #3
	movs r1, #0
	bl sub_080099E0
	adds r5, r0, #0
	movs r1, #0
	bl sub_08009A34
	ldr r0, _0801A6DC @ =0x08083E08
	lsls r4, r6, #1
	adds r0, r4, r0
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r0, r5, #0
	movs r2, #0x64
	bl sub_08009A70
	ldr r0, [r7]
	ldr r1, [r0, #0x30]
	adds r0, r5, #0
	bl sub_08009A78
	adds r0, r5, #0
	movs r1, #3
	bl sub_08009AB4
	ldr r0, _0801A6E0 @ =0x03004400
	ldrb r2, [r0, #0x14]
	lsls r2, r2, #2
	mov r1, r8
	adds r0, r2, r1
	ldr r1, [r0]
	ldr r0, _0801A6E4 @ =0x080B8660
	adds r2, r2, r0
	ldr r0, [r2]
	ldr r2, [r0, #4]
	ldr r0, _0801A6E8 @ =0x08083E0C
	adds r4, r4, r0
	ldrb r3, [r4]
	adds r0, r5, #0
	bl sub_08009ACC
	ldr r0, [r7]
	lsls r1, r6, #2
	adds r0, #0x20
	adds r0, r0, r1
	str r5, [r0]
	adds r6, #1
	cmp r6, #1
	ble _0801A64A
	ldr r0, _0801A6CC @ =0x030013BC
	ldr r0, [r0]
	movs r2, #2
	ldrsh r0, [r0, r2]
	ldr r1, _0801A6EC @ =sub_0801A6F0
	bl sub_08007B84
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801A6C8: .4byte 0x06010000
_0801A6CC: .4byte 0x030013BC
_0801A6D0: .4byte 0x080CE150
_0801A6D4: .4byte 0x080CE148
_0801A6D8: .4byte 0x080B8664
_0801A6DC: .4byte 0x08083E08
_0801A6E0: .4byte 0x03004400
_0801A6E4: .4byte 0x080B8660
_0801A6E8: .4byte 0x08083E0C
_0801A6EC: .4byte sub_0801A6F0

	thumb_func_start sub_0801A6F0
sub_0801A6F0: @ 0x0801A6F0
	bx lr
	.align 2, 0

	thumb_func_start sub_0801A6F4
sub_0801A6F4: @ 0x0801A6F4
	push {r4, r5, lr}
	ldr r4, _0801A72C @ =0x030013BC
	ldr r0, [r4]
	ldr r0, [r0, #0x18]
	bl sub_08009A00
	movs r5, #0
_0801A702:
	ldr r0, [r4]
	lsls r1, r5, #2
	adds r0, #0x20
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_08009A00
	ldr r0, [r4]
	lsls r1, r5, #1
	adds r0, #4
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	adds r5, #1
	cmp r5, #1
	ble _0801A702
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801A72C: .4byte 0x030013BC

	thumb_func_start sub_0801A730
sub_0801A730: @ 0x0801A730
	push {r4, r5, r6, lr}
	sub sp, #4
	movs r5, #0
	ldr r6, _0801A774 @ =0x030013BC
_0801A738:
	ldr r0, [r6]
	lsls r1, r5, #2
	adds r0, #0x20
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _0801A778 @ =0x08083E0C
	lsls r4, r5, #1
	adds r1, r4, r1
	ldrh r1, [r1]
	ldr r2, _0801A77C @ =0x08083E08
	adds r2, r4, r2
	movs r3, #0
	ldrsh r2, [r2, r3]
	movs r3, #0x40
	str r3, [sp]
	movs r3, #0x64
	bl sub_08029D88
	ldr r1, [r6]
	adds r1, #4
	adds r1, r1, r4
	strh r0, [r1]
	adds r5, #1
	cmp r5, #1
	ble _0801A738
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801A774: .4byte 0x030013BC
_0801A778: .4byte 0x08083E0C
_0801A77C: .4byte 0x08083E08

	thumb_func_start sub_0801A780
sub_0801A780: @ 0x0801A780
	push {r4, r5, lr}
	movs r4, #0
	ldr r5, _0801A7A4 @ =0x030013BC
_0801A786:
	ldr r0, [r5]
	lsls r1, r4, #2
	adds r0, #0x20
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0
	bl sub_08009A34
	adds r4, #1
	cmp r4, #1
	ble _0801A786
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801A7A4: .4byte 0x030013BC

	thumb_func_start sub_0801A7A8
sub_0801A7A8: @ 0x0801A7A8
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _0801A7DC @ =0x030013BC
	ldr r0, [r5]
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	movs r1, #0
	strb r1, [r0]
	strh r1, [r0, #2]
	ldr r0, [r5]
	movs r1, #0
	ldrsh r0, [r0, r1]
	ldr r1, _0801A7E0 @ =0x08083E10
	lsls r4, r4, #2
	adds r4, r4, r1
	ldr r1, [r4]
	bl sub_08007B84
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801A7DC: .4byte 0x030013BC
_0801A7E0: .4byte 0x08083E10

	thumb_func_start sub_0801A7E4
sub_0801A7E4: @ 0x0801A7E4
	push {lr}
	ldr r0, _0801A7F8 @ =0x030013BC
	ldr r1, [r0]
	movs r0, #0
	strb r0, [r1, #0x11]
	movs r0, #1
	bl sub_0801A7A8
	pop {r0}
	bx r0
	.align 2, 0
_0801A7F8: .4byte 0x030013BC

	thumb_func_start sub_0801A7FC
sub_0801A7FC: @ 0x0801A7FC
	push {r4, r5, lr}
	movs r0, #3
	movs r1, #0x40
	bl sub_080099E0
	adds r4, r0, #0
	movs r1, #0
	bl sub_08009A34
	adds r0, r4, #0
	movs r1, #0x68
	movs r2, #0x38
	bl sub_08009A70
	ldr r5, _0801A850 @ =0x030013BC
	ldr r0, [r5]
	ldr r1, [r0, #0x28]
	adds r0, r4, #0
	bl sub_08009A78
	adds r0, r4, #0
	movs r1, #1
	bl sub_08009AB4
	ldr r1, _0801A854 @ =0x0809CA9C
	ldr r2, _0801A858 @ =0x0809CA94
	adds r0, r4, #0
	movs r3, #0
	bl sub_08009ACC
	adds r0, r4, #0
	movs r1, #0xff
	bl sub_08009B40
	ldr r0, [r5]
	str r4, [r0, #0x1c]
	bl sub_0801A7E4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801A850: .4byte 0x030013BC
_0801A854: .4byte 0x0809CA9C
_0801A858: .4byte 0x0809CA94

	thumb_func_start sub_0801A85C
sub_0801A85C: @ 0x0801A85C
	push {lr}
	ldr r0, _0801A87C @ =0x030013BC
	ldr r2, [r0]
	ldr r0, [r2, #0x1c]
	ldrh r1, [r2, #0x14]
	subs r1, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldrh r2, [r2, #0x16]
	subs r2, #0x10
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl sub_08009A70
	pop {r0}
	bx r0
	.align 2, 0
_0801A87C: .4byte 0x030013BC

	thumb_func_start sub_0801A880
sub_0801A880: @ 0x0801A880
	push {lr}
	ldr r0, _0801A890 @ =0x030013BC
	ldr r0, [r0]
	ldr r0, [r0, #0x1c]
	bl sub_08009A00
	pop {r0}
	bx r0
	.align 2, 0
_0801A890: .4byte 0x030013BC

	thumb_func_start sub_0801A894
sub_0801A894: @ 0x0801A894
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0xc
	ldr r6, _0801AA40 @ =0x030013C0
	bl sub_0801934C
	adds r1, r0, #0
	str r1, [r6]
	movs r0, #0
	movs r2, #0x8c
	bl sub_08007EFC
	ldr r0, _0801AA44 @ =0x08083F8C
	ldr r4, [r0]
	adds r0, r4, #0
	movs r1, #0x40
	movs r2, #0
	bl sub_08007968
	ldr r1, [r6]
	movs r2, #0
	mov r8, r2
	strh r0, [r1]
	movs r0, #0
	bl sub_0801AEE8
	adds r0, r4, #0
	movs r1, #0x41
	movs r2, #0
	bl sub_08007968
	ldr r1, [r6]
	strh r0, [r1, #2]
	movs r0, #1
	bl sub_0801AEE8
	ldr r0, _0801AA48 @ =0x08083F98
	ldr r0, [r0]
	movs r1, #0x42
	movs r2, #0
	bl sub_08007968
	ldr r1, [r6]
	strh r0, [r1, #4]
	movs r2, #4
	ldrsh r0, [r1, r2]
	ldr r1, _0801AA4C @ =sub_0801B188
	bl sub_08007BA0
	ldr r0, _0801AA50 @ =0x08083FB4
	ldr r0, [r0]
	movs r1, #0x42
	movs r2, #0
	bl sub_08007968
	ldr r1, [r6]
	strh r0, [r1, #0xe]
	movs r2, #0xe
	ldrsh r0, [r1, r2]
	ldr r1, _0801AA54 @ =sub_0801B370
	bl sub_08007BA0
	ldr r0, _0801AA58 @ =sub_0801B390
	movs r1, #0x42
	movs r2, #0
	bl sub_08007968
	ldr r1, [r6]
	strh r0, [r1, #6]
	movs r2, #6
	ldrsh r0, [r1, r2]
	ldr r1, _0801AA5C @ =sub_0801B4A4
	bl sub_08007BA0
	ldr r1, _0801AA60 @ =0x08083EC8
	ldr r4, _0801AA64 @ =0x03004488
	ldrb r0, [r4]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _0801AA68 @ =0x05000200
	bl LoadPalette_08008308
	ldr r1, _0801AA6C @ =0x08083ED8
	ldrb r0, [r4]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	add r1, sp, #4
	bl sub_08008380
	ldr r1, [r6]
	str r0, [r1, #0x54]
	ldr r0, [sp, #4]
	str r0, [r1, #0x58]
	ldr r0, _0801AA70 @ =0x080D2644
	ldr r1, _0801AA74 @ =0x05000220
	bl LoadPalette_08008308
	ldr r0, _0801AA78 @ =0x080D2884
	add r1, sp, #4
	bl sub_08008380
	ldr r1, [r6]
	str r0, [r1, #0x5c]
	ldr r0, [sp, #4]
	str r0, [r1, #0x60]
	ldr r0, _0801AA7C @ =0x080D2FFC
	ldr r1, _0801AA80 @ =0x05000240
	bl LoadPalette_08008308
	ldr r0, _0801AA84 @ =0x080D30EC
	add r1, sp, #4
	bl sub_08008380
	ldr r1, [r6]
	str r0, [r1, #0x64]
	ldr r0, [sp, #4]
	str r0, [r1, #0x68]
	ldr r4, _0801AA88 @ =0x06010C00
	ldr r0, _0801AA8C @ =0x080BBDA4
	ldr r1, _0801AA90 @ =0x05000260
	bl LoadPalette_08008308
	ldr r0, [r6]
	str r4, [r0, #0x48]
	ldr r0, _0801AA94 @ =0x080BBE64
	adds r1, r4, #0
	bl DecompressData_08008374
	adds r4, r0, r4
	ldr r0, _0801AA98 @ =0x080CAC38
	ldr r1, _0801AA9C @ =0x05000280
	bl LoadPalette_08008308
	ldr r0, [r6]
	str r4, [r0, #0x4c]
	ldr r0, _0801AAA0 @ =0x080CAD1C
	adds r1, r4, #0
	bl DecompressData_08008374
	adds r4, r4, r0
	ldr r1, _0801AAA4 @ =0x080B85E8
	ldr r5, _0801AAA8 @ =0x03004400
	ldrb r0, [r5, #0x14]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _0801AAAC @ =0x050002A0
	bl LoadPalette_08008308
	ldr r0, [r6]
	str r4, [r0, #0x50]
	ldr r1, _0801AAB0 @ =0x080B8624
	ldrb r0, [r5, #0x14]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r0, [r0, #8]
	adds r1, r4, #0
	bl DecompressData_08008374
	ldr r0, _0801AAB4 @ =0x080BA774
	movs r1, #0xa0
	lsls r1, r1, #0x13
	bl LoadPalette_08008308
	ldr r0, _0801AAB8 @ =0x080BA818
	movs r1, #0xc0
	lsls r1, r1, #0x13
	bl DecompressData_08008374
	ldr r0, _0801AABC @ =0x080BB8B4
	ldr r1, _0801AAC0 @ =0x0600F800
	movs r2, #0
	movs r3, #0
	bl LoadTileMap_080083CC
	movs r0, #0xf0
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #3
	bl sub_08006BE8
	bl sub_08003F9C
	movs r0, #0x80
	lsls r0, r0, #1
	str r0, [sp]
	movs r0, #1
	movs r1, #0x1e
	movs r2, #5
	movs r3, #0
	bl sub_08004028
	bl sub_080057C0
	bl sub_08005AA0
	mov r0, r8
	str r0, [sp]
	movs r0, #1
	movs r1, #3
	movs r2, #0
	movs r3, #0x1d
	bl sub_08000268
	add sp, #0xc
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801AA40: .4byte 0x030013C0
_0801AA44: .4byte 0x08083F8C
_0801AA48: .4byte 0x08083F98
_0801AA4C: .4byte sub_0801B188
_0801AA50: .4byte 0x08083FB4
_0801AA54: .4byte sub_0801B370
_0801AA58: .4byte sub_0801B390
_0801AA5C: .4byte sub_0801B4A4
_0801AA60: .4byte 0x08083EC8
_0801AA64: .4byte 0x03004488
_0801AA68: .4byte 0x05000200
_0801AA6C: .4byte 0x08083ED8
_0801AA70: .4byte 0x080D2644
_0801AA74: .4byte 0x05000220
_0801AA78: .4byte 0x080D2884
_0801AA7C: .4byte 0x080D2FFC
_0801AA80: .4byte 0x05000240
_0801AA84: .4byte 0x080D30EC
_0801AA88: .4byte 0x06010C00
_0801AA8C: .4byte 0x080BBDA4
_0801AA90: .4byte 0x05000260
_0801AA94: .4byte 0x080BBE64
_0801AA98: .4byte 0x080CAC38
_0801AA9C: .4byte 0x05000280
_0801AAA0: .4byte 0x080CAD1C
_0801AAA4: .4byte 0x080B85E8
_0801AAA8: .4byte 0x03004400
_0801AAAC: .4byte 0x050002A0
_0801AAB0: .4byte 0x080B8624
_0801AAB4: .4byte 0x080BA774
_0801AAB8: .4byte 0x080BA818
_0801AABC: .4byte 0x080BB8B4
_0801AAC0: .4byte 0x0600F800

	thumb_func_start sub_0801AAC4
sub_0801AAC4: @ 0x0801AAC4
	push {r4, lr}
	ldr r1, _0801AAE4 @ =0x08083F78
	ldr r4, _0801AAE8 @ =0x030013C0
	ldr r0, [r4]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl call_via_r0
	ldr r0, [r4]
	ldrb r0, [r0, #0x10]
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0801AAE4: .4byte 0x08083F78
_0801AAE8: .4byte 0x030013C0

	thumb_func_start sub_0801AAEC
sub_0801AAEC: @ 0x0801AAEC
	ldr r1, _0801AB00 @ =0x030013C0
	ldr r2, [r1]
	movs r3, #0
	strb r0, [r2, #0x11]
	ldr r0, [r1]
	strb r3, [r0, #0x12]
	ldr r0, [r1]
	strh r3, [r0, #0x14]
	bx lr
	.align 2, 0
_0801AB00: .4byte 0x030013C0

	thumb_func_start sub_0801AB04
sub_0801AB04: @ 0x0801AB04
	push {r4, r5, r6, lr}
	ldr r6, _0801AB18 @ =0x030013C0
	ldr r0, [r6]
	ldrb r0, [r0, #0x12]
	cmp r0, #0
	beq _0801AB1C
	cmp r0, #1
	beq _0801AB64
	b _0801AB7C
	.align 2, 0
_0801AB18: .4byte 0x030013C0
_0801AB1C:
	bl sub_08008174
	ldr r4, _0801AB5C @ =0x030024E0
	ldr r0, _0801AB60 @ =0x00001F03
	strh r0, [r4, #8]
	ldrh r0, [r4]
	movs r2, #0x80
	lsls r2, r2, #4
	adds r1, r2, #0
	orrs r0, r1
	movs r2, #0x80
	lsls r2, r2, #2
	adds r1, r2, #0
	orrs r0, r1
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4]
	movs r0, #1
	bl sub_08004124
	adds r4, #0x4f
	movs r5, #1
	strb r5, [r4]
	movs r0, #0x35
	bl m4aSongNumStart
	ldr r0, [r6]
	strb r5, [r0, #0x12]
	b _0801AB7C
	.align 2, 0
_0801AB5C: .4byte 0x030024E0
_0801AB60: .4byte 0x00001F03
_0801AB64:
	bl sub_080003D0
	cmp r0, #0
	beq _0801AB7C
	ldr r2, _0801AB84 @ =0x030024E0
	ldrh r1, [r2]
	ldr r0, _0801AB88 @ =0x0000FDFF
	ands r0, r1
	strh r0, [r2]
	movs r0, #1
	bl sub_0801AAEC
_0801AB7C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801AB84: .4byte 0x030024E0
_0801AB88: .4byte 0x0000FDFF

	thumb_func_start sub_0801AB8C
sub_0801AB8C: @ 0x0801AB8C
	push {lr}
	ldr r0, _0801ABB8 @ =0x030013C0
	ldr r0, [r0]
	adds r0, #0x6c
	movs r1, #0
	strb r1, [r0]
	bl sub_0801B4F0
	bl sub_08005934
	ldr r0, _0801ABBC @ =0x08083E88
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	bl sub_08005A2C
	movs r0, #2
	bl sub_0801AAEC
	pop {r0}
	bx r0
	.align 2, 0
_0801ABB8: .4byte 0x030013C0
_0801ABBC: .4byte 0x08083E88

	thumb_func_start sub_0801ABC0
sub_0801ABC0: @ 0x0801ABC0
	push {r4, r5, r6, lr}
	ldr r1, _0801ABDC @ =0x030013C0
	ldr r0, [r1]
	ldrb r0, [r0, #0x12]
	adds r6, r1, #0
	cmp r0, #4
	bls _0801ABD0
	b _0801ADA6
_0801ABD0:
	lsls r0, r0, #2
	ldr r1, _0801ABE0 @ =_0801ABE4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0801ABDC: .4byte 0x030013C0
_0801ABE0: .4byte _0801ABE4
_0801ABE4: @ jump table
	.4byte _0801ABF8 @ case 0
	.4byte _0801AC06 @ case 1
	.4byte _0801AC88 @ case 2
	.4byte _0801AD68 @ case 3
	.4byte _0801AD74 @ case 4
_0801ABF8:
	ldr r1, [r6]
	movs r2, #0
	movs r0, #1
	strb r0, [r1, #0x12]
	ldr r0, [r6]
	strh r2, [r0, #0x14]
	b _0801ADA6
_0801AC06:
	ldr r3, [r6]
	ldrh r0, [r3, #0x14]
	adds r0, #1
	movs r4, #0
	strh r0, [r3, #0x14]
	ldr r2, _0801AC7C @ =0x08083F0E
	adds r1, r3, #0
	adds r1, #0x6c
	ldrb r1, [r1]
	lsls r1, r1, #1
	adds r1, r1, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r1]
	cmp r0, r1
	bhs _0801AC28
	b _0801ADA6
_0801AC28:
	strh r4, [r3, #0x14]
	movs r0, #3
	bl sub_0800B828
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r0, [r6]
	adds r1, r0, #0
	adds r1, #0x6c
	adds r0, #0x7c
	ldrb r1, [r1]
	adds r0, r0, r1
	strb r5, [r0]
	ldr r0, [r6]
	adds r1, r0, #0
	adds r1, #0x6c
	adds r0, #0x6d
	ldrb r1, [r1]
	adds r0, r0, r1
	movs r1, #3
	strb r1, [r0]
	ldr r1, _0801AC80 @ =0x08083F4A
	lsls r0, r5, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	bl sub_0801B1F4
	bl sub_08005934
	ldr r1, _0801AC84 @ =0x08083EBC
	lsls r0, r5, #2
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	ldr r1, [r6]
	strh r4, [r1, #0x14]
	movs r0, #2
	b _0801ADA4
	.align 2, 0
_0801AC7C: .4byte 0x08083F0E
_0801AC80: .4byte 0x08083F4A
_0801AC84: .4byte 0x08083EBC
_0801AC88:
	ldr r2, [r6]
	ldr r1, _0801ACC0 @ =0x08083F2C
	adds r0, r2, #0
	adds r0, #0x6c
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r3, r0, r1
	ldrh r0, [r2, #0x14]
	ldrh r1, [r3]
	cmp r0, r1
	blo _0801ACC4
	bl sub_0801B24C
	bl sub_08005A2C
	ldr r0, [r6]
	adds r1, r0, #0
	adds r1, #0x6c
	adds r0, #0x7c
	ldrb r1, [r1]
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #1
	bl sub_0801AF74
	ldr r1, [r6]
	movs r0, #4
	b _0801ADA4
	.align 2, 0
_0801ACC0: .4byte 0x08083F2C
_0801ACC4:
	ldr r4, _0801ACF0 @ =0x030024B0
	ldrh r1, [r4]
	movs r0, #0xf3
	ands r0, r1
	cmp r0, #0
	beq _0801AD50
	bl sub_0801B24C
	bl sub_08005A2C
	ldrh r1, [r4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0801ACF4
	movs r5, #1
	movs r0, #0x9c
	lsls r0, r0, #1
	bl m4aSongNumStart
	b _0801AD14
	.align 2, 0
_0801ACF0: .4byte 0x030024B0
_0801ACF4:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0801AD0C
	movs r5, #2
	ldr r0, _0801AD08 @ =0x00000139
	bl m4aSongNumStart
	b _0801AD14
	.align 2, 0
_0801AD08: .4byte 0x00000139
_0801AD0C:
	movs r5, #0
	ldr r0, _0801AD48 @ =0x00000137
	bl m4aSongNumStart
_0801AD14:
	ldr r4, _0801AD4C @ =0x030013C0
	ldr r0, [r4]
	adds r1, r0, #0
	adds r1, #0x6c
	adds r0, #0x6d
	ldrb r1, [r1]
	adds r0, r0, r1
	strb r5, [r0]
	movs r0, #0
	adds r1, r5, #0
	bl sub_0801AF74
	ldr r0, [r4]
	adds r1, r0, #0
	adds r1, #0x6c
	adds r0, #0x7c
	ldrb r1, [r1]
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #1
	bl sub_0801AF74
	ldr r1, [r4]
	movs r0, #4
	b _0801ADA4
	.align 2, 0
_0801AD48: .4byte 0x00000137
_0801AD4C: .4byte 0x030013C0
_0801AD50:
	ldrh r1, [r2, #0x14]
	ldrh r0, [r3]
	subs r0, #3
	cmp r1, r0
	bne _0801AD5E
	bl sub_0801B240
_0801AD5E:
	ldr r1, [r6]
	ldrh r0, [r1, #0x14]
	adds r0, #1
	strh r0, [r1, #0x14]
	b _0801ADA6
_0801AD68:
	ldr r1, [r6]
	ldrb r0, [r1, #0x1c]
	cmp r0, #0
	bne _0801ADA6
	movs r0, #4
	b _0801ADA4
_0801AD74:
	ldr r1, [r6]
	ldrb r4, [r1, #0x1c]
	cmp r4, #0
	bne _0801ADA6
	adds r1, #0x6c
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r1, [r6]
	adds r0, r1, #0
	adds r0, #0x6c
	ldrb r0, [r0]
	cmp r0, #0xe
	bls _0801ADA0
	bl sub_0801B540
	ldr r0, [r6]
	strh r4, [r0, #0x14]
	movs r0, #3
	bl sub_0801AAEC
	b _0801ADA6
_0801ADA0:
	strh r4, [r1, #0x14]
	movs r0, #1
_0801ADA4:
	strb r0, [r1, #0x12]
_0801ADA6:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_0801ADAC
sub_0801ADAC: @ 0x0801ADAC
	push {r4, lr}
	ldr r0, _0801ADC0 @ =0x030013C0
	ldr r1, [r0]
	ldrb r2, [r1, #0x12]
	cmp r2, #0
	beq _0801ADC4
	cmp r2, #1
	beq _0801AE2C
	b _0801AE32
	.align 2, 0
_0801ADC0: .4byte 0x030013C0
_0801ADC4:
	ldrh r0, [r1, #0x14]
	adds r0, #1
	strh r0, [r1, #0x14]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x3b
	bls _0801AE32
	strh r2, [r1, #0x14]
	movs r4, #0
	adds r1, #0x6d
	movs r2, #0xe
_0801ADDA:
	ldrb r0, [r1, #0xf]
	ldrb r3, [r1]
	cmp r0, r3
	bne _0801ADE4
	adds r4, #1
_0801ADE4:
	adds r1, #1
	subs r2, #1
	cmp r2, #0
	bge _0801ADDA
	bl sub_08005934
	cmp r4, #9
	ble _0801AE08
	bl sub_080193B4
	ldr r0, _0801AE04 @ =0x08083EAC
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	b _0801AE12
	.align 2, 0
_0801AE04: .4byte 0x08083EAC
_0801AE08:
	ldr r0, _0801AE24 @ =0x08083EB4
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
_0801AE12:
	bl sub_08005A2C
	ldr r0, _0801AE28 @ =0x030013C0
	ldr r1, [r0]
	ldrb r0, [r1, #0x12]
	adds r0, #1
	strb r0, [r1, #0x12]
	b _0801AE32
	.align 2, 0
_0801AE24: .4byte 0x08083EB4
_0801AE28: .4byte 0x030013C0
_0801AE2C:
	movs r0, #4
	bl sub_0801AAEC
_0801AE32:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0801AE38
sub_0801AE38: @ 0x0801AE38
	push {r4, r5, lr}
	sub sp, #4
	ldr r4, _0801AE4C @ =0x030013C0
	ldr r0, [r4]
	ldrb r5, [r0, #0x12]
	cmp r5, #0
	beq _0801AE50
	cmp r5, #1
	beq _0801AE84
	b _0801AEDE
	.align 2, 0
_0801AE4C: .4byte 0x030013C0
_0801AE50:
	str r5, [sp]
	movs r0, #1
	movs r1, #3
	movs r2, #0
	movs r3, #0x1d
	bl sub_0800031C
	ldr r2, _0801AE7C @ =0x030024E0
	ldrh r1, [r2]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, [r4]
	movs r0, #1
	strb r0, [r1, #0x12]
	ldr r0, _0801AE80 @ =0x030056F0
	movs r1, #4
	bl m4aMPlayFadeOut
	b _0801AEDE
	.align 2, 0
_0801AE7C: .4byte 0x030024E0
_0801AE80: .4byte 0x030056F0
_0801AE84:
	bl sub_080003D0
	cmp r0, #0
	beq _0801AEDE
	bl sub_080058A4
	ldr r0, [r4]
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	ldr r0, [r4]
	movs r3, #2
	ldrsh r0, [r0, r3]
	bl sub_08007A08
	ldr r0, [r4]
	movs r1, #6
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	ldr r0, [r4]
	movs r3, #4
	ldrsh r0, [r0, r3]
	bl sub_08007A08
	ldr r0, [r4]
	movs r1, #0xe
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	ldr r0, [r4]
	ldr r0, [r0, #0x54]
	bl sub_08007CF8
	ldr r0, [r4]
	ldr r0, [r0, #0x5c]
	bl sub_08007CF8
	ldr r0, [r4]
	ldr r0, [r0, #0x64]
	bl sub_08007CF8
	ldr r0, [r4]
	strb r5, [r0, #0x10]
_0801AEDE:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0801AEE8
sub_0801AEE8: @ 0x0801AEE8
	push {r4, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _0801AF08 @ =0x030013C0
	ldr r0, [r0]
	lsls r1, r4, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	strb r4, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801AF08: .4byte 0x030013C0

	thumb_func_start sub_0801AF0C
sub_0801AF0C: @ 0x0801AF0C
	push {r4, r5, r6, lr}
	adds r4, r1, #0
	lsls r0, r0, #0x18
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r6, _0801AF4C @ =0x030013C0
	ldr r1, [r6]
	lsrs r0, r0, #0x17
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	bl sub_08007BBC
	adds r5, r0, #0
	ldr r1, [r6]
	ldrb r0, [r5]
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	ldr r1, _0801AF50 @ =0x08083F8C
	lsls r4, r4, #2
	adds r4, r4, r1
	ldr r1, [r4]
	bl sub_08007B84
	movs r0, #0
	strb r0, [r5, #1]
	strh r0, [r5, #2]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801AF4C: .4byte 0x030013C0
_0801AF50: .4byte 0x08083F8C

	thumb_func_start sub_0801AF54
sub_0801AF54: @ 0x0801AF54
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _0801AF70 @ =0x030013C0
	ldr r1, [r1]
	lsls r2, r0, #2
	adds r1, r1, r2
	movs r2, #0
	strb r2, [r1, #0x18]
	movs r1, #1
	bl sub_0801AF0C
	pop {r0}
	bx r0
	.align 2, 0
_0801AF70: .4byte 0x030013C0

	thumb_func_start sub_0801AF74
sub_0801AF74: @ 0x0801AF74
	push {r4, r5, r6, r7, lr}
	adds r6, r1, #0
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r5, _0801AFCC @ =0x030013C0
	ldr r0, [r5]
	lsls r4, r7, #1
	adds r0, r0, r4
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	ldr r0, [r5]
	lsls r2, r7, #2
	adds r0, r0, r2
	movs r1, #1
	strb r1, [r0, #0x18]
	ldr r0, [r5]
	adds r0, #0x20
	adds r0, r0, r2
	ldr r0, [r0]
	ldr r1, _0801AFD0 @ =0x08083F50
	adds r4, r4, r7
	adds r4, r4, r6
	lsls r4, r4, #1
	adds r4, r4, r1
	ldrb r1, [r4]
	bl sub_08009AFC
	adds r0, r7, #0
	movs r1, #2
	bl sub_0801AF0C
	cmp r6, #0
	bne _0801AFC4
	adds r0, r7, #0
	bl sub_0801B6AC
_0801AFC4:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801AFCC: .4byte 0x030013C0
_0801AFD0: .4byte 0x08083F50

	thumb_func_start sub_0801AFD4
sub_0801AFD4: @ 0x0801AFD4
	push {lr}
	bl sub_08007BD4
	ldrb r0, [r0]
	bl sub_0801AF54
	pop {r0}
	bx r0

	thumb_func_start sub_0801AFE4
sub_0801AFE4: @ 0x0801AFE4
	bx lr
	.align 2, 0

	thumb_func_start sub_0801AFE8
sub_0801AFE8: @ 0x0801AFE8
	push {r4, lr}
	bl sub_08007BD4
	adds r4, r0, #0
	ldr r0, _0801B020 @ =0x030013C0
	ldr r0, [r0]
	ldrb r2, [r4]
	lsls r1, r2, #2
	adds r0, #0x20
	adds r0, r0, r1
	ldr r3, [r0]
	ldrb r0, [r3, #1]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _0801B01A
	ldr r1, _0801B024 @ =0x08083F5C
	lsls r0, r2, #1
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r0, r3, #0
	bl sub_08009AFC
	ldrb r0, [r4]
	bl sub_0801AF54
_0801B01A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801B020: .4byte 0x030013C0
_0801B024: .4byte 0x08083F5C

	thumb_func_start sub_0801B028
sub_0801B028: @ 0x0801B028
	push {r4, r5, r6, lr}
	movs r0, #3
	movs r1, #0x80
	bl sub_080099E0
	adds r5, r0, #0
	movs r1, #1
	bl sub_08009A34
	adds r0, r5, #0
	movs r1, #0x94
	movs r2, #0x59
	bl sub_08009A70
	ldr r1, _0801B150 @ =0x06010000
	adds r0, r5, #0
	bl sub_08009A78
	ldr r4, _0801B154 @ =0x030013C0
	ldr r0, [r4]
	ldr r1, [r0, #0x58]
	adds r0, r5, #0
	movs r2, #0
	bl sub_08009BBC
	adds r0, r5, #0
	movs r1, #0
	bl sub_08009AB4
	ldr r1, _0801B158 @ =0x08083EE8
	ldr r0, _0801B15C @ =0x03004488
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r1, r0, r1
	ldr r1, [r1]
	ldr r2, _0801B160 @ =0x08083EF8
	adds r0, r0, r2
	ldr r2, [r0]
	adds r0, r5, #0
	movs r3, #0
	bl sub_08009ACC
	adds r0, r5, #0
	movs r1, #0xff
	bl sub_08009B40
	ldr r0, [r4]
	str r5, [r0, #0x20]
	movs r0, #3
	movs r1, #0x80
	bl sub_080099E0
	adds r5, r0, #0
	movs r1, #1
	bl sub_08009A34
	adds r0, r5, #0
	movs r1, #0x5c
	movs r2, #0x59
	bl sub_08009A70
	ldr r1, _0801B164 @ =0x06010400
	adds r0, r5, #0
	bl sub_08009A78
	ldr r0, [r4]
	ldr r1, [r0, #0x60]
	adds r0, r5, #0
	movs r2, #0
	bl sub_08009BBC
	adds r0, r5, #0
	movs r1, #1
	bl sub_08009AB4
	ldr r1, _0801B168 @ =0x080D2870
	ldr r2, _0801B16C @ =0x080D2824
	adds r0, r5, #0
	movs r3, #0
	bl sub_08009ACC
	adds r0, r5, #0
	movs r1, #0xff
	bl sub_08009B40
	ldr r0, [r4]
	str r5, [r0, #0x24]
	movs r6, #0
_0801B0D8:
	movs r0, #3
	movs r1, #0x40
	bl sub_080099E0
	adds r5, r0, #0
	movs r1, #0
	bl sub_08009A34
	ldr r1, _0801B170 @ =0x08083F72
	lsls r0, r6, #1
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r0, r5, #0
	movs r2, #0x7c
	bl sub_08009A70
	adds r0, r5, #0
	ldr r1, _0801B174 @ =0x06010800
	bl sub_08009A78
	ldr r0, [r4]
	ldr r1, [r0, #0x68]
	adds r0, r5, #0
	movs r2, #0
	bl sub_08009BBC
	adds r0, r5, #0
	movs r1, #2
	bl sub_08009AB4
	adds r0, r5, #0
	ldr r1, _0801B178 @ =0x080D30E0
	ldr r2, _0801B17C @ =0x080D30C0
	movs r3, #1
	bl sub_08009ACC
	adds r0, r5, #0
	movs r1, #0xff
	bl sub_08009B40
	ldr r0, [r4]
	lsls r1, r6, #2
	adds r0, #0x40
	adds r0, r0, r1
	str r5, [r0]
	adds r6, #1
	cmp r6, #1
	ble _0801B0D8
	ldr r0, _0801B154 @ =0x030013C0
	ldr r0, [r0]
	movs r1, #4
	ldrsh r0, [r0, r1]
	ldr r1, _0801B180 @ =0x08083F98
	ldr r1, [r1, #4]
	bl sub_08007B84
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801B150: .4byte 0x06010000
_0801B154: .4byte 0x030013C0
_0801B158: .4byte 0x08083EE8
_0801B15C: .4byte 0x03004488
_0801B160: .4byte 0x08083EF8
_0801B164: .4byte 0x06010400
_0801B168: .4byte 0x080D2870
_0801B16C: .4byte 0x080D2824
_0801B170: .4byte 0x08083F72
_0801B174: .4byte 0x06010800
_0801B178: .4byte 0x080D30E0
_0801B17C: .4byte 0x080D30C0
_0801B180: .4byte 0x08083F98

	thumb_func_start sub_0801B184
sub_0801B184: @ 0x0801B184
	bx lr
	.align 2, 0

	thumb_func_start sub_0801B188
sub_0801B188: @ 0x0801B188
	push {r4, r5, lr}
	ldr r4, _0801B1B8 @ =0x030013C0
	ldr r0, [r4]
	ldr r0, [r0, #0x20]
	bl sub_08009A00
	ldr r0, [r4]
	ldr r0, [r0, #0x24]
	bl sub_08009A00
	movs r5, #0
_0801B19E:
	ldr r0, [r4]
	lsls r1, r5, #2
	adds r0, #0x40
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_08009A00
	adds r5, #1
	cmp r5, #1
	ble _0801B19E
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801B1B8: .4byte 0x030013C0

	thumb_func_start sub_0801B1BC
sub_0801B1BC: @ 0x0801B1BC
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _0801B1EC @ =0x030013C0
	ldr r0, [r5]
	movs r1, #0xe
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	movs r1, #0
	strh r1, [r0]
	ldr r0, [r5]
	movs r1, #0xe
	ldrsh r0, [r0, r1]
	ldr r1, _0801B1F0 @ =0x08083FB4
	lsls r4, r4, #2
	adds r4, r4, r1
	ldr r1, [r4]
	bl sub_08007B84
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801B1EC: .4byte 0x030013C0
_0801B1F0: .4byte 0x08083FB4

	thumb_func_start sub_0801B1F4
sub_0801B1F4: @ 0x0801B1F4
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _0801B23C @ =0x030013C0
	ldr r0, [r5]
	ldr r0, [r0, #0x34]
	movs r1, #1
	bl sub_08009A34
	ldr r0, [r5]
	ldr r0, [r0, #0x34]
	adds r1, r4, #0
	bl sub_08009AFC
	ldr r0, [r5]
	ldr r0, [r0, #0x34]
	movs r1, #0x10
	movs r2, #0x10
	bl sub_08009C14
	ldr r0, [r5]
	ldr r0, [r0, #0x34]
	ldr r0, [r0, #0x24]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r2, #0
	bl sub_08009E84
	movs r0, #2
	bl sub_0801B1BC
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801B23C: .4byte 0x030013C0

	thumb_func_start sub_0801B240
sub_0801B240: @ 0x0801B240
	push {lr}
	movs r0, #3
	bl sub_0801B1BC
	pop {r0}
	bx r0

	thumb_func_start sub_0801B24C
sub_0801B24C: @ 0x0801B24C
	push {lr}
	ldr r0, _0801B264 @ =0x030013C0
	ldr r0, [r0]
	ldr r0, [r0, #0x34]
	movs r1, #0
	bl sub_08009A34
	movs r0, #1
	bl sub_0801B1BC
	pop {r0}
	bx r0
	.align 2, 0
_0801B264: .4byte 0x030013C0

	thumb_func_start sub_0801B268
sub_0801B268: @ 0x0801B268
	push {r4, r5, r6, lr}
	bl sub_08009DDC
	adds r6, r0, #0
	movs r0, #3
	movs r1, #0x80
	bl sub_080099E0
	adds r4, r0, #0
	movs r1, #0
	bl sub_08009A34
	adds r0, r4, #0
	movs r1, #0x4c
	movs r2, #0x17
	bl sub_08009A70
	ldr r5, _0801B2CC @ =0x030013C0
	ldr r0, [r5]
	ldr r1, [r0, #0x48]
	adds r0, r4, #0
	bl sub_08009A78
	adds r0, r4, #0
	movs r1, #3
	bl sub_08009AB4
	ldr r1, _0801B2D0 @ =0x080BBE50
	ldr r2, _0801B2D4 @ =0x080BBE34
	adds r0, r4, #0
	movs r3, #3
	bl sub_08009ACC
	adds r0, r4, #0
	movs r1, #0
	bl sub_08009B40
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08009B9C
	ldr r0, [r5]
	str r4, [r0, #0x34]
	movs r0, #1
	bl sub_0801B1BC
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801B2CC: .4byte 0x030013C0
_0801B2D0: .4byte 0x080BBE50
_0801B2D4: .4byte 0x080BBE34

	thumb_func_start sub_0801B2D8
sub_0801B2D8: @ 0x0801B2D8
	bx lr
	.align 2, 0

	thumb_func_start sub_0801B2DC
sub_0801B2DC: @ 0x0801B2DC
	push {r4, lr}
	bl sub_08007BD4
	adds r4, r0, #0
	ldr r0, _0801B318 @ =0x030013C0
	ldr r0, [r0]
	ldr r0, [r0, #0x34]
	ldr r0, [r0, #0x24]
	ldr r2, _0801B31C @ =0x08083FA6
	ldrh r1, [r4]
	lsls r1, r1, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r1, r2, #0
	bl sub_08009E84
	ldrh r0, [r4]
	adds r0, #1
	strh r0, [r4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #5
	bls _0801B312
	movs r0, #1
	bl sub_0801B1BC
_0801B312:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801B318: .4byte 0x030013C0
_0801B31C: .4byte 0x08083FA6

	thumb_func_start sub_0801B320
sub_0801B320: @ 0x0801B320
	push {r4, r5, lr}
	bl sub_08007BD4
	adds r4, r0, #0
	ldr r5, _0801B368 @ =0x030013C0
	ldr r0, [r5]
	ldr r0, [r0, #0x34]
	ldr r0, [r0, #0x24]
	ldr r2, _0801B36C @ =0x08083FA0
	ldrh r1, [r4]
	lsls r1, r1, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r1, r2, #0
	bl sub_08009E84
	ldrh r0, [r4]
	adds r0, #1
	strh r0, [r4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #2
	bls _0801B360
	ldr r0, [r5]
	ldr r0, [r0, #0x34]
	movs r1, #0
	bl sub_08009A34
	movs r0, #1
	bl sub_0801B1BC
_0801B360:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801B368: .4byte 0x030013C0
_0801B36C: .4byte 0x08083FA0

	thumb_func_start sub_0801B370
sub_0801B370: @ 0x0801B370
	push {r4, lr}
	ldr r4, _0801B38C @ =0x030013C0
	ldr r0, [r4]
	ldr r0, [r0, #0x34]
	ldr r0, [r0, #0x24]
	bl sub_08009E54
	ldr r0, [r4]
	ldr r0, [r0, #0x34]
	bl sub_08009A00
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801B38C: .4byte 0x030013C0

	thumb_func_start sub_0801B390
sub_0801B390: @ 0x0801B390
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	movs r6, #0
	ldr r4, _0801B478 @ =0x030013C0
_0801B39A:
	movs r0, #3
	movs r1, #0xff
	bl sub_080099E0
	adds r5, r0, #0
	movs r1, #1
	bl sub_08009A34
	ldr r1, _0801B47C @ =0x08083F66
	lsls r0, r6, #1
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r0, r5, #0
	movs r2, #0x48
	bl sub_08009A70
	ldr r0, [r4]
	ldr r1, [r0, #0x48]
	adds r0, r5, #0
	bl sub_08009A78
	adds r0, r5, #0
	movs r1, #3
	bl sub_08009AB4
	adds r0, r5, #0
	ldr r1, _0801B480 @ =0x080BBE50
	ldr r2, _0801B484 @ =0x080BBE34
	movs r3, #0
	bl sub_08009ACC
	adds r0, r5, #0
	movs r1, #0xff
	bl sub_08009B40
	ldr r0, [r4]
	lsls r1, r6, #2
	adds r0, #0x38
	adds r0, r0, r1
	str r5, [r0]
	adds r6, #1
	cmp r6, #1
	ble _0801B39A
	movs r6, #0
	ldr r7, _0801B478 @ =0x030013C0
	ldr r0, _0801B488 @ =0x080B8664
	mov r8, r0
_0801B3FA:
	movs r0, #3
	movs r1, #0
	bl sub_080099E0
	adds r5, r0, #0
	movs r1, #0
	bl sub_08009A34
	ldr r0, _0801B48C @ =0x08083F60
	lsls r4, r6, #1
	adds r0, r4, r0
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r0, r5, #0
	movs r2, #0x64
	bl sub_08009A70
	ldr r0, [r7]
	ldr r1, [r0, #0x50]
	adds r0, r5, #0
	bl sub_08009A78
	adds r0, r5, #0
	movs r1, #5
	bl sub_08009AB4
	ldr r0, _0801B490 @ =0x03004400
	ldrb r2, [r0, #0x14]
	lsls r2, r2, #2
	mov r1, r8
	adds r0, r2, r1
	ldr r1, [r0]
	ldr r0, _0801B494 @ =0x080B8660
	adds r2, r2, r0
	ldr r0, [r2]
	ldr r2, [r0, #8]
	ldr r0, _0801B498 @ =0x08083F08
	adds r4, r4, r0
	ldrb r3, [r4]
	adds r0, r5, #0
	bl sub_08009ACC
	ldr r0, [r7]
	lsls r1, r6, #2
	adds r0, #0x28
	adds r0, r0, r1
	str r5, [r0]
	adds r6, #1
	cmp r6, #2
	ble _0801B3FA
	ldr r0, _0801B478 @ =0x030013C0
	ldr r0, [r0]
	movs r2, #6
	ldrsh r0, [r0, r2]
	ldr r1, _0801B49C @ =sub_0801B4A0
	bl sub_08007B84
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801B478: .4byte 0x030013C0
_0801B47C: .4byte 0x08083F66
_0801B480: .4byte 0x080BBE50
_0801B484: .4byte 0x080BBE34
_0801B488: .4byte 0x080B8664
_0801B48C: .4byte 0x08083F60
_0801B490: .4byte 0x03004400
_0801B494: .4byte 0x080B8660
_0801B498: .4byte 0x08083F08
_0801B49C: .4byte sub_0801B4A0

	thumb_func_start sub_0801B4A0
sub_0801B4A0: @ 0x0801B4A0
	bx lr
	.align 2, 0

	thumb_func_start sub_0801B4A4
sub_0801B4A4: @ 0x0801B4A4
	push {r4, r5, lr}
	movs r4, #0
	ldr r5, _0801B4EC @ =0x030013C0
_0801B4AA:
	ldr r0, [r5]
	lsls r1, r4, #2
	adds r0, #0x38
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_08009A00
	adds r4, #1
	cmp r4, #1
	ble _0801B4AA
	movs r4, #0
	ldr r5, _0801B4EC @ =0x030013C0
_0801B4C2:
	ldr r0, [r5]
	lsls r1, r4, #2
	adds r0, #0x28
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_08009A00
	ldr r0, [r5]
	lsls r1, r4, #1
	adds r0, #8
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	adds r4, #1
	cmp r4, #2
	ble _0801B4C2
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801B4EC: .4byte 0x030013C0

	thumb_func_start sub_0801B4F0
sub_0801B4F0: @ 0x0801B4F0
	push {r4, r5, r6, lr}
	sub sp, #4
	movs r5, #0
	ldr r6, _0801B534 @ =0x030013C0
_0801B4F8:
	ldr r0, [r6]
	lsls r1, r5, #2
	adds r0, #0x28
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _0801B538 @ =0x08083F08
	lsls r4, r5, #1
	adds r1, r4, r1
	ldrh r1, [r1]
	ldr r2, _0801B53C @ =0x08083F60
	adds r2, r4, r2
	movs r3, #0
	ldrsh r2, [r2, r3]
	movs r3, #0x42
	str r3, [sp]
	movs r3, #0x64
	bl sub_08029D88
	ldr r1, [r6]
	adds r1, #8
	adds r1, r1, r4
	strh r0, [r1]
	adds r5, #1
	cmp r5, #2
	ble _0801B4F8
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801B534: .4byte 0x030013C0
_0801B538: .4byte 0x08083F08
_0801B53C: .4byte 0x08083F60

	thumb_func_start sub_0801B540
sub_0801B540: @ 0x0801B540
	push {r4, r5, lr}
	movs r4, #0
	ldr r5, _0801B564 @ =0x030013C0
_0801B546:
	ldr r0, [r5]
	lsls r1, r4, #2
	adds r0, #0x28
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0
	bl sub_08009A34
	adds r4, #1
	cmp r4, #2
	ble _0801B546
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801B564: .4byte 0x030013C0

	thumb_func_start sub_0801B568
sub_0801B568: @ 0x0801B568
	push {r4, r5, r6, r7, lr}
	bl sub_08007BD4
	adds r6, r0, #0
	ldrb r0, [r6]
	cmp r0, #0
	beq _0801B57C
	cmp r0, #1
	beq _0801B610
	b _0801B6A6
_0801B57C:
	movs r5, #0
	adds r7, r6, #4
_0801B580:
	movs r0, #3
	movs r1, #0x80
	bl sub_080099E0
	adds r4, r0, #0
	movs r1, #1
	bl sub_08009A34
	ldr r0, _0801B5F8 @ =0x08083F6A
	ldrb r2, [r6, #2]
	lsls r2, r2, #1
	adds r0, r2, r0
	movs r3, #0
	ldrsh r1, [r0, r3]
	ldr r0, _0801B5FC @ =0x08083F6E
	adds r2, r2, r0
	movs r0, #0
	ldrsh r2, [r2, r0]
	adds r0, r4, #0
	bl sub_08009A70
	ldr r0, _0801B600 @ =0x030013C0
	ldr r0, [r0]
	ldr r1, [r0, #0x4c]
	adds r0, r4, #0
	bl sub_08009A78
	adds r0, r4, #0
	movs r1, #4
	bl sub_08009AB4
	adds r0, r4, #0
	ldr r1, _0801B604 @ =0x080CAD0C
	ldr r2, _0801B608 @ =0x080CACE0
	movs r3, #0
	bl sub_08009ACC
	cmp r5, #0
	beq _0801B5E6
	bl sub_08009DDC
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_08009B9C
	ldr r0, [r4, #0x24]
	ldr r1, _0801B60C @ =0xFFFFFF00
	movs r2, #0x80
	lsls r2, r2, #1
	bl sub_08009E84
_0801B5E6:
	stm r7!, {r4}
	adds r5, #1
	cmp r5, #1
	ble _0801B580
	movs r1, #0
	movs r0, #1
	strb r0, [r6]
	strb r1, [r6, #1]
	b _0801B6A6
	.align 2, 0
_0801B5F8: .4byte 0x08083F6A
_0801B5FC: .4byte 0x08083F6E
_0801B600: .4byte 0x030013C0
_0801B604: .4byte 0x080CAD0C
_0801B608: .4byte 0x080CACE0
_0801B60C: .4byte 0xFFFFFF00
_0801B610:
	ldr r0, [r6, #4]
	ldr r4, _0801B684 @ =0x08083F6A
	ldrb r3, [r6, #2]
	lsls r3, r3, #1
	adds r1, r3, r4
	ldrb r2, [r6, #1]
	lsrs r2, r2, #2
	ldrh r1, [r1]
	subs r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r5, _0801B688 @ =0x08083F6E
	adds r3, r3, r5
	movs r7, #0
	ldrsh r2, [r3, r7]
	bl sub_08009A70
	ldr r0, [r6, #8]
	ldrb r2, [r6, #2]
	lsls r2, r2, #1
	adds r4, r2, r4
	ldrb r1, [r6, #1]
	lsrs r1, r1, #2
	ldrh r4, [r4]
	adds r1, r1, r4
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r2, r2, r5
	movs r3, #0
	ldrsh r2, [r2, r3]
	bl sub_08009A70
	ldrb r0, [r6, #1]
	adds r0, #1
	strb r0, [r6, #1]
	ldr r2, [r6, #4]
	ldrb r0, [r2, #1]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _0801B694
	ldr r1, [r6, #8]
	ldrb r0, [r1, #1]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _0801B68C
	ldr r0, [r1, #0x24]
	bl sub_08009E54
	ldr r0, [r6, #4]
	bl sub_08009A00
	ldr r0, [r6, #8]
	bl sub_08009A00
	bl sub_08007A64
	b _0801B6A6
	.align 2, 0
_0801B684: .4byte 0x08083F6A
_0801B688: .4byte 0x08083F6E
_0801B68C:
	adds r0, r2, #0
	movs r1, #0
	bl sub_08009A34
_0801B694:
	ldr r1, [r6, #8]
	ldrb r0, [r1, #1]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _0801B6A6
	adds r0, r1, #0
	movs r1, #0
	bl sub_08009A34
_0801B6A6:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0801B6AC
sub_0801B6AC: @ 0x0801B6AC
	push {r4, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _0801B6D4 @ =sub_0801B568
	movs r1, #0x42
	movs r2, #0
	bl sub_08007968
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl sub_08007BBC
	movs r1, #0
	strb r1, [r0]
	strb r4, [r0, #2]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801B6D4: .4byte sub_0801B568

	thumb_func_start sub_0801B6D8
sub_0801B6D8: @ 0x0801B6D8
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0xc
	ldr r5, _0801B8A8 @ =0x030013C4
	bl sub_0801934C
	adds r1, r0, #0
	str r1, [r5]
	movs r0, #0
	movs r2, #0x90
	bl sub_08007EFC
	ldr r0, _0801B8AC @ =0x080840DC
	ldr r4, [r0]
	adds r0, r4, #0
	movs r1, #0x41
	movs r2, #0
	bl sub_08007968
	ldr r1, [r5]
	movs r2, #0
	mov r8, r2
	strh r0, [r1]
	movs r0, #0
	bl sub_0801BD58
	adds r0, r4, #0
	movs r1, #0x42
	movs r2, #0
	bl sub_08007968
	ldr r1, [r5]
	strh r0, [r1, #2]
	movs r0, #1
	bl sub_0801BD58
	ldr r0, _0801B8B0 @ =0x080840E4
	ldr r0, [r0]
	movs r1, #0x43
	movs r2, #0
	bl sub_08007968
	ldr r1, [r5]
	strh r0, [r1, #4]
	ldr r0, _0801B8B4 @ =0x080840F8
	ldr r0, [r0]
	movs r1, #0x44
	movs r2, #0
	bl sub_08007968
	ldr r1, [r5]
	strh r0, [r1, #6]
	ldr r0, _0801B8B8 @ =0x08084138
	ldr r0, [r0]
	movs r1, #0x45
	movs r2, #0
	bl sub_08007968
	ldr r1, [r5]
	strh r0, [r1, #8]
	movs r2, #8
	ldrsh r0, [r1, r2]
	ldr r1, _0801B8BC @ =sub_0801C42C
	bl sub_08007BA0
	ldr r0, _0801B8C0 @ =0x08084140
	ldr r0, [r0]
	movs r1, #0x45
	movs r2, #0
	bl sub_08007968
	ldr r1, [r5]
	strh r0, [r1, #0xa]
	movs r2, #0xa
	ldrsh r0, [r1, r2]
	ldr r1, _0801B8C4 @ =sub_0801C5B8
	bl sub_08007BA0
	ldr r0, _0801B8C8 @ =sub_0801C5D8
	movs r1, #0x45
	movs r2, #0
	bl sub_08007968
	ldr r1, [r5]
	strh r0, [r1, #0xc]
	movs r2, #0xc
	ldrsh r0, [r1, r2]
	ldr r1, _0801B8CC @ =sub_0801C688
	bl sub_08007BA0
	ldr r1, _0801B8D0 @ =0x08084080
	ldr r4, _0801B8D4 @ =0x03004488
	ldrb r0, [r4]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _0801B8D8 @ =0x05000200
	bl LoadPalette_08008308
	ldr r1, _0801B8DC @ =0x08084090
	ldrb r0, [r4]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	add r1, sp, #4
	bl sub_08008380
	ldr r1, [r5]
	str r0, [r1, #0x64]
	ldr r0, [sp, #4]
	str r0, [r1, #0x68]
	ldr r0, _0801B8E0 @ =0x080DFCDC
	ldr r1, _0801B8E4 @ =0x05000240
	bl LoadPalette_08008308
	ldr r0, _0801B8E8 @ =0x080DFEF0
	add r1, sp, #4
	bl sub_08008380
	ldr r1, [r5]
	str r0, [r1, #0x6c]
	ldr r0, [sp, #4]
	str r0, [r1, #0x70]
	ldr r4, _0801B8EC @ =0x06010840
	ldr r0, _0801B8F0 @ =0x080BDAF0
	ldr r1, _0801B8F4 @ =0x05000280
	bl LoadPalette_08008308
	ldr r0, [r5]
	str r4, [r0, #0x54]
	ldr r0, _0801B8F8 @ =0x080BDB54
	adds r1, r4, #0
	bl DecompressData_08008374
	adds r4, r0, r4
	ldr r0, _0801B8FC @ =0x080CAC38
	ldr r1, _0801B900 @ =0x050002A0
	bl LoadPalette_08008308
	ldr r0, [r5]
	str r4, [r0, #0x58]
	ldr r0, _0801B904 @ =0x080CAD1C
	adds r1, r4, #0
	bl DecompressData_08008374
	adds r4, r4, r0
	ldr r1, _0801B908 @ =0x080B85E8
	ldr r6, _0801B90C @ =0x03004400
	ldrb r0, [r6, #0x14]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _0801B910 @ =0x050002C0
	bl LoadPalette_08008308
	ldr r0, [r5]
	str r4, [r0, #0x5c]
	ldr r1, _0801B914 @ =0x080B8624
	ldrb r0, [r6, #0x14]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r0, [r0, #0xc]
	adds r1, r4, #0
	bl DecompressData_08008374
	ldr r0, _0801B918 @ =0x080BC23C
	movs r1, #0xa0
	lsls r1, r1, #0x13
	bl LoadPalette_08008308
	ldr r0, _0801B91C @ =0x080BC3F0
	movs r1, #0xc0
	lsls r1, r1, #0x13
	bl DecompressData_08008374
	ldr r0, _0801B920 @ =0x080BD5C0
	ldr r1, _0801B924 @ =0x0600F800
	movs r2, #0
	movs r3, #0
	bl LoadTileMap_080083CC
	ldr r0, _0801B928 @ =0x080BD8F4
	ldr r1, _0801B92C @ =0x0600F000
	movs r2, #0
	movs r3, #0
	bl LoadTileMap_080083CC
	ldr r0, _0801B930 @ =0x080BC338
	movs r1, #0x2c
	bl sub_08009554
	ldr r0, _0801B934 @ =0x080BC3DC
	movs r1, #0x28
	bl sub_08009554
	movs r0, #0xf0
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #3
	bl sub_08006BE8
	bl sub_08003F9C
	movs r0, #0x80
	lsls r0, r0, #1
	str r0, [sp]
	movs r0, #1
	movs r1, #0x1d
	movs r2, #3
	movs r3, #0
	bl sub_08004028
	bl sub_080057C0
	bl sub_08005AA0
	mov r0, r8
	str r0, [sp]
	movs r0, #1
	movs r1, #3
	movs r2, #0
	movs r3, #0x1c
	bl sub_08000268
	add sp, #0xc
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801B8A8: .4byte 0x030013C4
_0801B8AC: .4byte 0x080840DC
_0801B8B0: .4byte 0x080840E4
_0801B8B4: .4byte 0x080840F8
_0801B8B8: .4byte 0x08084138
_0801B8BC: .4byte sub_0801C42C
_0801B8C0: .4byte 0x08084140
_0801B8C4: .4byte sub_0801C5B8
_0801B8C8: .4byte sub_0801C5D8
_0801B8CC: .4byte sub_0801C688
_0801B8D0: .4byte 0x08084080
_0801B8D4: .4byte 0x03004488
_0801B8D8: .4byte 0x05000200
_0801B8DC: .4byte 0x08084090
_0801B8E0: .4byte 0x080DFCDC
_0801B8E4: .4byte 0x05000240
_0801B8E8: .4byte 0x080DFEF0
_0801B8EC: .4byte 0x06010840
_0801B8F0: .4byte 0x080BDAF0
_0801B8F4: .4byte 0x05000280
_0801B8F8: .4byte 0x080BDB54
_0801B8FC: .4byte 0x080CAC38
_0801B900: .4byte 0x050002A0
_0801B904: .4byte 0x080CAD1C
_0801B908: .4byte 0x080B85E8
_0801B90C: .4byte 0x03004400
_0801B910: .4byte 0x050002C0
_0801B914: .4byte 0x080B8624
_0801B918: .4byte 0x080BC23C
_0801B91C: .4byte 0x080BC3F0
_0801B920: .4byte 0x080BD5C0
_0801B924: .4byte 0x0600F800
_0801B928: .4byte 0x080BD8F4
_0801B92C: .4byte 0x0600F000
_0801B930: .4byte 0x080BC338
_0801B934: .4byte 0x080BC3DC

	thumb_func_start sub_0801B938
sub_0801B938: @ 0x0801B938
	push {r4, lr}
	ldr r1, _0801B958 @ =0x080840C8
	ldr r4, _0801B95C @ =0x030013C4
	ldr r0, [r4]
	ldrb r0, [r0, #0x15]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl call_via_r0
	ldr r0, [r4]
	ldrb r0, [r0, #0x14]
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0801B958: .4byte 0x080840C8
_0801B95C: .4byte 0x030013C4

	thumb_func_start sub_0801B960
sub_0801B960: @ 0x0801B960
	ldr r1, _0801B974 @ =0x030013C4
	ldr r2, [r1]
	movs r3, #0
	strb r0, [r2, #0x15]
	ldr r0, [r1]
	strb r3, [r0, #0x16]
	ldr r0, [r1]
	strh r3, [r0, #0x18]
	bx lr
	.align 2, 0
_0801B974: .4byte 0x030013C4

	thumb_func_start sub_0801B978
sub_0801B978: @ 0x0801B978
	push {r4, r5, r6, r7, lr}
	ldr r7, _0801B98C @ =0x030013C4
	ldr r0, [r7]
	ldrb r6, [r0, #0x16]
	cmp r6, #0
	beq _0801B990
	cmp r6, #1
	bne _0801B98A
	b _0801BA84
_0801B98A:
	b _0801BA9C
	.align 2, 0
_0801B98C: .4byte 0x030013C4
_0801B990:
	bl sub_08008174
	ldr r1, [r7]
	adds r3, r1, #0
	adds r3, #0x23
	ldrb r2, [r3]
	movs r4, #0x10
	rsbs r4, r4, #0
	adds r0, r4, #0
	ands r0, r2
	strb r0, [r3]
	adds r1, #0x22
	ldrb r2, [r1]
	adds r0, r4, #0
	ands r0, r2
	strb r0, [r1]
	ldr r1, [r7]
	adds r5, r1, #0
	adds r5, #0x24
	ldrb r2, [r5]
	movs r3, #0xf
	adds r0, r3, #0
	ands r0, r2
	strb r0, [r5]
	adds r1, #0x23
	ldrb r2, [r1]
	adds r0, r3, #0
	ands r0, r2
	strb r0, [r1]
	ldr r1, [r7]
	adds r5, r1, #0
	adds r5, #0x2f
	ldrb r2, [r5]
	adds r0, r4, #0
	ands r0, r2
	strb r0, [r5]
	adds r1, #0x2e
	ldrb r0, [r1]
	ands r4, r0
	strb r4, [r1]
	ldr r1, [r7]
	adds r4, r1, #0
	adds r4, #0x30
	ldrb r2, [r4]
	adds r0, r3, #0
	ands r0, r2
	strb r0, [r4]
	adds r1, #0x2f
	ldrb r0, [r1]
	ands r3, r0
	strb r3, [r1]
	ldr r2, [r7]
	adds r0, r2, #0
	adds r0, #0x7e
	strh r6, [r0]
	adds r0, #2
	strh r6, [r0]
	ldr r5, _0801BA78 @ =0x030024E0
	ldr r0, _0801BA7C @ =0x00001F03
	strh r0, [r5, #8]
	ldr r0, _0801BA80 @ =0x00001E02
	strh r0, [r5, #6]
	ldrh r0, [r5]
	movs r3, #0x80
	lsls r3, r3, #4
	adds r1, r3, #0
	orrs r0, r1
	movs r3, #0x80
	lsls r3, r3, #3
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r5]
	strh r6, [r5, #0xe]
	movs r0, #0x38
	strh r0, [r5, #0x16]
	adds r1, r5, #0
	adds r1, #0x4a
	movs r0, #0xfd
	lsls r0, r0, #6
	strh r0, [r1]
	adds r1, r2, #0
	adds r1, #0x76
	movs r0, #0x78
	strh r0, [r1]
	adds r1, #2
	movs r0, #0x5c
	strh r0, [r1]
	adds r0, r2, #0
	adds r0, #0x7a
	movs r4, #0x80
	lsls r4, r4, #2
	strh r4, [r0]
	adds r0, #2
	strh r6, [r0]
	bl sub_0801BE38
	ldrh r0, [r5]
	orrs r4, r0
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r1, #0
	orrs r4, r0
	strh r4, [r5]
	movs r0, #1
	bl sub_08004124
	adds r5, #0x4f
	movs r4, #1
	strb r4, [r5]
	movs r0, #0x36
	bl m4aSongNumStart
	ldr r0, [r7]
	strb r4, [r0, #0x16]
	b _0801BA9C
	.align 2, 0
_0801BA78: .4byte 0x030024E0
_0801BA7C: .4byte 0x00001F03
_0801BA80: .4byte 0x00001E02
_0801BA84:
	bl sub_080003D0
	cmp r0, #0
	beq _0801BA9C
	ldr r2, _0801BAA4 @ =0x030024E0
	ldrh r1, [r2]
	ldr r0, _0801BAA8 @ =0x0000FDFF
	ands r0, r1
	strh r0, [r2]
	movs r0, #1
	bl sub_0801B960
_0801BA9C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801BAA4: .4byte 0x030024E0
_0801BAA8: .4byte 0x0000FDFF

	thumb_func_start sub_0801BAAC
sub_0801BAAC: @ 0x0801BAAC
	push {lr}
	ldr r2, _0801BB18 @ =0x030013C4
	ldr r0, [r2]
	mov ip, r0
	adds r0, #0x84
	movs r3, #0
	movs r1, #0
	strh r1, [r0]
	mov r0, ip
	adds r0, #0x8c
	strh r1, [r0]
	adds r0, #2
	strb r3, [r0]
	ldr r0, [r2]
	mov ip, r0
	adds r0, #0x86
	strh r1, [r0]
	mov r0, ip
	adds r0, #0x88
	strh r1, [r0]
	adds r0, #2
	strb r3, [r0]
	ldr r0, [r2]
	adds r2, r0, #0
	adds r2, #0x7e
	strh r1, [r2]
	adds r0, #0x80
	strh r1, [r0]
	bl sub_0801BE54
	movs r0, #2
	bl sub_0801B960
	movs r0, #0
	movs r1, #9
	bl sub_0801C6AC
	movs r0, #1
	movs r1, #7
	bl sub_0801C6AC
	bl sub_08005934
	ldr r0, _0801BB1C @ =0x08084044
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	bl sub_08005A2C
	bl sub_0801CB9C
	pop {r0}
	bx r0
	.align 2, 0
_0801BB18: .4byte 0x030013C4
_0801BB1C: .4byte 0x08084044

	thumb_func_start sub_0801BB20
sub_0801BB20: @ 0x0801BB20
	push {lr}
	ldr r0, _0801BB48 @ =0x030013C4
	ldr r0, [r0]
	adds r1, r0, #0
	adds r1, #0x7e
	adds r0, #0x80
	ldrh r1, [r1]
	ldrh r0, [r0]
	cmp r1, r0
	bls _0801BB84
	ldr r2, _0801BB4C @ =0x0000059F
	cmp r1, r2
	bls _0801BB54
	cmp r0, r2
	bhi _0801BB54
	bl sub_08005934
	ldr r0, _0801BB50 @ =0x08084058
	b _0801BB98
	.align 2, 0
_0801BB48: .4byte 0x030013C4
_0801BB4C: .4byte 0x0000059F
_0801BB50: .4byte 0x08084058
_0801BB54:
	ldr r0, _0801BB78 @ =0x030013C4
	ldr r1, [r0]
	adds r0, r1, #0
	adds r0, #0x7e
	ldrh r0, [r0]
	ldr r2, _0801BB7C @ =0x000001DF
	cmp r0, r2
	bls _0801BBDC
	adds r0, r1, #0
	adds r0, #0x80
	ldrh r0, [r0]
	cmp r0, r2
	bhi _0801BBDC
	bl sub_08005934
	ldr r0, _0801BB80 @ =0x08084050
	b _0801BB98
	.align 2, 0
_0801BB78: .4byte 0x030013C4
_0801BB7C: .4byte 0x000001DF
_0801BB80: .4byte 0x08084050
_0801BB84:
	cmp r1, r0
	bhs _0801BBDC
	ldr r2, _0801BBA8 @ =0x000003BF
	cmp r1, r2
	bhi _0801BBB0
	cmp r0, r2
	bls _0801BBB0
	bl sub_08005934
	ldr r0, _0801BBAC @ =0x08084068
_0801BB98:
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	bl sub_08005A2C
	b _0801BBDC
	.align 2, 0
_0801BBA8: .4byte 0x000003BF
_0801BBAC: .4byte 0x08084068
_0801BBB0:
	ldr r0, _0801BBF4 @ =0x030013C4
	ldr r1, [r0]
	adds r0, r1, #0
	adds r0, #0x7e
	ldrh r0, [r0]
	ldr r2, _0801BBF8 @ =0x0000077F
	cmp r0, r2
	bhi _0801BBDC
	adds r0, r1, #0
	adds r0, #0x80
	ldrh r0, [r0]
	cmp r0, r2
	bls _0801BBDC
	bl sub_08005934
	ldr r0, _0801BBFC @ =0x08084060
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	bl sub_08005A2C
_0801BBDC:
	ldr r0, _0801BBF4 @ =0x030013C4
	ldr r0, [r0]
	adds r0, #0x8f
	ldrb r0, [r0]
	cmp r0, #0
	bne _0801BBEE
	movs r0, #3
	bl sub_0801B960
_0801BBEE:
	pop {r0}
	bx r0
	.align 2, 0
_0801BBF4: .4byte 0x030013C4
_0801BBF8: .4byte 0x0000077F
_0801BBFC: .4byte 0x08084060

	thumb_func_start sub_0801BC00
sub_0801BC00: @ 0x0801BC00
	push {lr}
	ldr r0, _0801BC18 @ =0x030013C4
	ldr r0, [r0]
	ldrb r0, [r0, #0x16]
	cmp r0, #1
	beq _0801BC5C
	cmp r0, #1
	bgt _0801BC1C
	cmp r0, #0
	beq _0801BC22
	b _0801BC82
	.align 2, 0
_0801BC18: .4byte 0x030013C4
_0801BC1C:
	cmp r0, #2
	beq _0801BC7C
	b _0801BC82
_0801BC22:
	bl sub_08005934
	ldr r0, _0801BC3C @ =0x03004494
	ldrb r0, [r0]
	cmp r0, #1
	bne _0801BC44
	ldr r0, _0801BC40 @ =0x08084070
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	b _0801BC4E
	.align 2, 0
_0801BC3C: .4byte 0x03004494
_0801BC40: .4byte 0x08084070
_0801BC44:
	ldr r0, _0801BC74 @ =0x08084078
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
_0801BC4E:
	bl sub_08005A2C
	ldr r0, _0801BC78 @ =0x030013C4
	ldr r1, [r0]
	ldrb r0, [r1, #0x16]
	adds r0, #1
	strb r0, [r1, #0x16]
_0801BC5C:
	ldr r0, _0801BC78 @ =0x030013C4
	ldr r1, [r0]
	adds r0, r1, #0
	adds r0, #0x74
	ldrb r0, [r0]
	cmp r0, #0
	bne _0801BC82
	ldrb r0, [r1, #0x16]
	adds r0, #1
	strb r0, [r1, #0x16]
	b _0801BC82
	.align 2, 0
_0801BC74: .4byte 0x08084078
_0801BC78: .4byte 0x030013C4
_0801BC7C:
	movs r0, #4
	bl sub_0801B960
_0801BC82:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0801BC88
sub_0801BC88: @ 0x0801BC88
	push {r4, r5, lr}
	sub sp, #4
	ldr r4, _0801BC9C @ =0x030013C4
	ldr r0, [r4]
	ldrb r5, [r0, #0x16]
	cmp r5, #0
	beq _0801BCA0
	cmp r5, #1
	beq _0801BCD4
	b _0801BD46
	.align 2, 0
_0801BC9C: .4byte 0x030013C4
_0801BCA0:
	str r5, [sp]
	movs r0, #1
	movs r1, #3
	movs r2, #0
	movs r3, #0x1c
	bl sub_0800031C
	ldr r2, _0801BCCC @ =0x030024E0
	ldrh r1, [r2]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, [r4]
	movs r0, #1
	strb r0, [r1, #0x16]
	ldr r0, _0801BCD0 @ =0x030056F0
	movs r1, #4
	bl m4aMPlayFadeOut
	b _0801BD46
	.align 2, 0
_0801BCCC: .4byte 0x030024E0
_0801BCD0: .4byte 0x030056F0
_0801BCD4:
	bl sub_080003D0
	cmp r0, #0
	beq _0801BD46
	bl sub_080058A4
	ldr r0, _0801BD50 @ =0x080BC338
	bl sub_080095E0
	ldr r0, _0801BD54 @ =0x080BC3DC
	bl sub_080095E0
	ldr r0, [r4]
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	ldr r0, [r4]
	movs r3, #2
	ldrsh r0, [r0, r3]
	bl sub_08007A08
	ldr r0, [r4]
	movs r1, #4
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	ldr r0, [r4]
	movs r3, #6
	ldrsh r0, [r0, r3]
	bl sub_08007A08
	ldr r0, [r4]
	movs r1, #8
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	ldr r0, [r4]
	movs r3, #0xa
	ldrsh r0, [r0, r3]
	bl sub_08007A08
	ldr r0, [r4]
	movs r1, #0xc
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	ldr r0, [r4]
	ldr r0, [r0, #0x64]
	bl sub_08007CF8
	ldr r0, [r4]
	ldr r0, [r0, #0x6c]
	bl sub_08007CF8
	ldr r0, [r4]
	strb r5, [r0, #0x14]
_0801BD46:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801BD50: .4byte 0x080BC338
_0801BD54: .4byte 0x080BC3DC

	thumb_func_start sub_0801BD58
sub_0801BD58: @ 0x0801BD58
	push {r4, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _0801BD78 @ =0x030013C4
	ldr r0, [r0]
	lsls r1, r4, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	strb r4, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801BD78: .4byte 0x030013C4

	thumb_func_start sub_0801BD7C
sub_0801BD7C: @ 0x0801BD7C
	push {r4, r5, r6, lr}
	adds r4, r1, #0
	lsls r0, r0, #0x18
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r6, _0801BDBC @ =0x030013C4
	ldr r1, [r6]
	lsrs r0, r0, #0x17
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	bl sub_08007BBC
	adds r5, r0, #0
	ldr r1, [r6]
	ldrb r0, [r5]
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	ldr r1, _0801BDC0 @ =0x080840DC
	lsls r4, r4, #2
	adds r4, r4, r1
	ldr r1, [r4]
	bl sub_08007B84
	movs r0, #0
	strb r0, [r5, #1]
	strh r0, [r5, #2]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801BDBC: .4byte 0x030013C4
_0801BDC0: .4byte 0x080840DC

	thumb_func_start sub_0801BDC4
sub_0801BDC4: @ 0x0801BDC4
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _0801BDE4 @ =0x030013C4
	ldr r2, [r1]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r2, r2, r1
	movs r1, #0
	strb r1, [r2, #0x1c]
	movs r1, #1
	bl sub_0801BD7C
	pop {r0}
	bx r0
	.align 2, 0
_0801BDE4: .4byte 0x030013C4

	thumb_func_start sub_0801BDE8
sub_0801BDE8: @ 0x0801BDE8
	push {lr}
	bl sub_08007BD4
	ldrb r0, [r0]
	bl sub_0801BDC4
	pop {r0}
	bx r0

	thumb_func_start sub_0801BDF8
sub_0801BDF8: @ 0x0801BDF8
	bx lr
	.align 2, 0

	thumb_func_start sub_0801BDFC
sub_0801BDFC: @ 0x0801BDFC
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _0801BE30 @ =0x030013C4
	ldr r0, [r5]
	movs r1, #4
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	adds r6, r0, #0
	ldr r0, [r5]
	movs r1, #4
	ldrsh r0, [r0, r1]
	ldr r1, _0801BE34 @ =0x080840E4
	lsls r4, r4, #2
	adds r4, r4, r1
	ldr r1, [r4]
	bl sub_08007B84
	movs r0, #0
	strb r0, [r6]
	strh r0, [r6, #2]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801BE30: .4byte 0x030013C4
_0801BE34: .4byte 0x080840E4

	thumb_func_start sub_0801BE38
sub_0801BE38: @ 0x0801BE38
	push {lr}
	ldr r0, _0801BE50 @ =0x030013C4
	ldr r0, [r0]
	adds r0, #0x74
	movs r1, #0
	strb r1, [r0]
	movs r0, #1
	bl sub_0801BDFC
	pop {r0}
	bx r0
	.align 2, 0
_0801BE50: .4byte 0x030013C4

	thumb_func_start sub_0801BE54
sub_0801BE54: @ 0x0801BE54
	push {lr}
	ldr r0, _0801BE6C @ =0x030013C4
	ldr r0, [r0]
	adds r0, #0x74
	movs r1, #0
	strb r1, [r0]
	movs r0, #2
	bl sub_0801BDFC
	pop {r0}
	bx r0
	.align 2, 0
_0801BE6C: .4byte 0x030013C4

	thumb_func_start sub_0801BE70
sub_0801BE70: @ 0x0801BE70
	push {lr}
	ldr r0, _0801BE88 @ =0x030013C4
	ldr r0, [r0]
	adds r0, #0x74
	movs r1, #1
	strb r1, [r0]
	movs r0, #3
	bl sub_0801BDFC
	pop {r0}
	bx r0
	.align 2, 0
_0801BE88: .4byte 0x030013C4

	thumb_func_start sub_0801BE8C
sub_0801BE8C: @ 0x0801BE8C
	push {lr}
	ldr r0, _0801BEA4 @ =0x030013C4
	ldr r0, [r0]
	adds r0, #0x74
	movs r1, #1
	strb r1, [r0]
	movs r0, #4
	bl sub_0801BDFC
	pop {r0}
	bx r0
	.align 2, 0
_0801BEA4: .4byte 0x030013C4

	thumb_func_start sub_0801BEA8
sub_0801BEA8: @ 0x0801BEA8
	push {lr}
	bl sub_08007BD4
	ldr r0, _0801BEC0 @ =0x030024E0
	adds r0, #0x4c
	movs r1, #0x80
	lsls r1, r1, #5
	strh r1, [r0]
	bl sub_0801BE38
	pop {r0}
	bx r0
	.align 2, 0
_0801BEC0: .4byte 0x030024E0

	thumb_func_start sub_0801BEC4
sub_0801BEC4: @ 0x0801BEC4
	bx lr
	.align 2, 0

	thumb_func_start sub_0801BEC8
sub_0801BEC8: @ 0x0801BEC8
	push {r4, lr}
	bl sub_08007BD4
	ldr r0, _0801BF10 @ =0x030013C4
	ldr r4, [r0]
	adds r0, r4, #0
	adds r0, #0x7e
	ldrh r1, [r0]
	adds r0, r1, #0
	movs r1, #5
	bl __udivsi3
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldr r0, _0801BF14 @ =0x000001DF
	cmp r1, r0
	bls _0801BEEE
	movs r1, #0xf0
	lsls r1, r1, #1
_0801BEEE:
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #0xa
	movs r1, #0xf0
	lsls r1, r1, #1
	bl __divsi3
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r1, r4, #0
	adds r1, #0x7a
	strh r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801BF10: .4byte 0x030013C4
_0801BF14: .4byte 0x000001DF

	thumb_func_start sub_0801BF18
sub_0801BF18: @ 0x0801BF18
	push {r4, r5, lr}
	bl sub_08007BD4
	adds r5, r0, #0
	ldrb r4, [r5]
	cmp r4, #1
	beq _0801BF5C
	cmp r4, #1
	bgt _0801BF30
	cmp r4, #0
	beq _0801BF3A
	b _0801BFD8
_0801BF30:
	cmp r4, #2
	beq _0801BF84
	cmp r4, #3
	beq _0801BFD4
	b _0801BFD8
_0801BF3A:
	bl sub_080193B4
	movs r0, #1
	strb r0, [r5]
	strh r4, [r5, #2]
	movs r0, #0x3c
	bl sub_08007AC0
	ldr r0, _0801BF58 @ =0x030013C4
	ldr r0, [r0]
	ldr r0, [r0, #0x34]
	movs r1, #0
	bl sub_08009AFC
	b _0801BFD8
	.align 2, 0
_0801BF58: .4byte 0x030013C4
_0801BF5C:
	ldr r4, _0801BF80 @ =0x030013C4
	ldr r0, [r4]
	ldr r0, [r0, #0x34]
	movs r1, #4
	bl sub_08009AFC
	ldr r0, [r4]
	ldr r0, [r0, #0x38]
	movs r1, #0
	bl sub_08009AFC
	movs r0, #2
	strb r0, [r5]
	movs r0, #0x9e
	lsls r0, r0, #1
	bl m4aSongNumStart
	b _0801BFD8
	.align 2, 0
_0801BF80: .4byte 0x030013C4
_0801BF84:
	ldr r4, _0801BFC8 @ =0x030013C4
	ldr r0, [r4]
	adds r2, r0, #0
	adds r2, #0x7c
	ldrh r0, [r2]
	adds r0, #0x20
	strh r0, [r2]
	lsls r0, r0, #0x10
	ldr r1, _0801BFCC @ =0x37FF0000
	cmp r0, r1
	bls _0801BFAA
	movs r0, #0xe0
	lsls r0, r0, #6
	strh r0, [r2]
	movs r0, #0x78
	bl sub_08007AC0
	movs r0, #3
	strb r0, [r5]
_0801BFAA:
	ldr r0, [r4]
	adds r2, r0, #0
	adds r2, #0x7a
	ldrh r0, [r2]
	adds r0, #2
	strh r0, [r2]
	lsls r0, r0, #0x10
	ldr r1, _0801BFD0 @ =0x1FFF0000
	cmp r0, r1
	bls _0801BFD8
	movs r0, #0x80
	lsls r0, r0, #6
	strh r0, [r2]
	b _0801BFD8
	.align 2, 0
_0801BFC8: .4byte 0x030013C4
_0801BFCC: .4byte 0x37FF0000
_0801BFD0: .4byte 0x1FFF0000
_0801BFD4:
	bl sub_0801BE38
_0801BFD8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0801BFE0
sub_0801BFE0: @ 0x0801BFE0
	push {lr}
	bl sub_08007BD4
	adds r2, r0, #0
	ldrb r1, [r2]
	cmp r1, #1
	beq _0801C00C
	cmp r1, #1
	bgt _0801BFF8
	cmp r1, #0
	beq _0801BFFE
	b _0801C042
_0801BFF8:
	cmp r1, #2
	beq _0801C03E
	b _0801C042
_0801BFFE:
	movs r0, #1
	strb r0, [r2]
	strh r1, [r2, #2]
	movs r0, #0x5a
	bl sub_08007AC0
	b _0801C042
_0801C00C:
	ldrh r0, [r2, #2]
	adds r0, #1
	strh r0, [r2, #2]
	lsls r0, r0, #0x10
	movs r1, #0x96
	lsls r1, r1, #0x11
	cmp r0, r1
	bls _0801C020
	movs r0, #2
	strb r0, [r2]
_0801C020:
	ldr r0, _0801C034 @ =0x030013C4
	ldr r0, [r0]
	adds r1, r0, #0
	adds r1, #0x7a
	ldrh r0, [r1]
	cmp r0, #0
	beq _0801C038
	subs r0, #0x10
	strh r0, [r1]
	b _0801C042
	.align 2, 0
_0801C034: .4byte 0x030013C4
_0801C038:
	movs r0, #2
	strb r0, [r2]
	b _0801C042
_0801C03E:
	bl sub_0801BE38
_0801C042:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0801C048
sub_0801C048: @ 0x0801C048
	push {lr}
	ldr r0, _0801C06C @ =0x030013C4
	ldr r2, [r0]
	adds r0, r2, #0
	adds r0, #0x60
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	movs r1, #6
	ldrsh r0, [r2, r1]
	ldr r1, _0801C070 @ =0x080840F8
	ldr r1, [r1, #4]
	bl sub_08007B84
	pop {r0}
	bx r0
	.align 2, 0
_0801C06C: .4byte 0x030013C4
_0801C070: .4byte 0x080840F8

	thumb_func_start sub_0801C074
sub_0801C074: @ 0x0801C074
	bx lr
	.align 2, 0

	thumb_func_start sub_0801C078
sub_0801C078: @ 0x0801C078
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r0, #3
	movs r1, #0x80
	bl sub_080099E0
	adds r7, r0, #0
	movs r1, #1
	bl sub_08009A34
	ldr r6, _0801C2A8 @ =0x030013C4
	ldr r2, [r6]
	adds r0, r2, #0
	adds r0, #0x60
	ldrh r1, [r0]
	movs r4, #0xa0
	subs r1, r4, r1
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r2, #0x62
	ldrh r2, [r2]
	movs r0, #0x5c
	mov r8, r0
	mov r0, r8
	subs r2, r0, r2
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r7, #0
	bl sub_08009A70
	ldr r1, _0801C2AC @ =0x06010000
	adds r0, r7, #0
	bl sub_08009A78
	ldr r0, [r6]
	ldr r1, [r0, #0x68]
	adds r0, r7, #0
	movs r2, #0
	bl sub_08009BBC
	adds r0, r7, #0
	movs r1, #0
	bl sub_08009AB4
	ldr r1, _0801C2B0 @ =0x080840A0
	ldr r0, _0801C2B4 @ =0x03004488
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r1, r0, r1
	ldr r1, [r1]
	ldr r2, _0801C2B8 @ =0x080840B0
	adds r0, r0, r2
	ldr r2, [r0]
	adds r0, r7, #0
	movs r3, #0
	bl sub_08009ACC
	adds r0, r7, #0
	movs r1, #0
	bl sub_08009B40
	ldr r0, [r6]
	str r7, [r0, #0x34]
	movs r0, #3
	movs r1, #0xf0
	bl sub_080099E0
	adds r7, r0, #0
	movs r1, #1
	bl sub_08009A34
	ldr r1, [r6]
	adds r0, r1, #0
	adds r0, #0x60
	ldrh r0, [r0]
	subs r4, r4, r0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r1, #0x62
	ldrh r2, [r1]
	mov r1, r8
	subs r2, r1, r2
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_08009A70
	ldr r0, [r6]
	ldr r1, [r0, #0x54]
	adds r0, r7, #0
	bl sub_08009A78
	adds r0, r7, #0
	movs r1, #4
	bl sub_08009AB4
	adds r0, r7, #0
	ldr r1, _0801C2BC @ =0x080BDB48
	ldr r2, _0801C2C0 @ =0x080BDB3C
	movs r3, #1
	bl sub_08009ACC
	adds r0, r7, #0
	movs r1, #0
	bl sub_08009B40
	ldr r0, [r6]
	str r7, [r0, #0x4c]
	movs r0, #3
	movs r1, #0x80
	bl sub_080099E0
	adds r7, r0, #0
	movs r1, #1
	bl sub_08009A34
	ldr r2, [r6]
	adds r0, r2, #0
	adds r0, #0x60
	ldrh r1, [r0]
	movs r4, #0x50
	subs r1, r4, r1
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r2, #0x62
	ldrh r2, [r2]
	movs r5, #0x54
	subs r2, r5, r2
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r7, #0
	bl sub_08009A70
	ldr r1, _0801C2C4 @ =0x06010400
	adds r0, r7, #0
	bl sub_08009A78
	ldr r0, [r6]
	ldr r1, [r0, #0x70]
	adds r0, r7, #0
	movs r2, #0
	bl sub_08009BBC
	adds r0, r7, #0
	movs r1, #2
	bl sub_08009AB4
	ldr r2, _0801C2C8 @ =0x080DFEC4
	mov sb, r2
	ldr r0, _0801C2CC @ =0x080DFE94
	mov sl, r0
	adds r0, r7, #0
	mov r1, sb
	mov r2, sl
	movs r3, #0
	bl sub_08009ACC
	adds r0, r7, #0
	movs r1, #0
	bl sub_08009B40
	ldr r0, [r6]
	str r7, [r0, #0x38]
	movs r0, #3
	movs r1, #0xf0
	bl sub_080099E0
	adds r7, r0, #0
	movs r1, #1
	bl sub_08009A34
	ldr r2, [r6]
	adds r0, r2, #0
	adds r0, #0x60
	ldrh r1, [r0]
	subs r1, r4, r1
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r2, #0x62
	ldrh r0, [r2]
	mov r2, r8
	subs r0, r2, r0
	mov r8, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r8, r0
	adds r0, r7, #0
	mov r2, r8
	bl sub_08009A70
	ldr r0, [r6]
	ldr r1, [r0, #0x54]
	adds r0, r7, #0
	bl sub_08009A78
	adds r0, r7, #0
	movs r1, #4
	bl sub_08009AB4
	adds r0, r7, #0
	ldr r1, _0801C2BC @ =0x080BDB48
	ldr r2, _0801C2C0 @ =0x080BDB3C
	movs r3, #1
	bl sub_08009ACC
	adds r0, r7, #0
	movs r1, #0
	bl sub_08009B40
	ldr r0, [r6]
	str r7, [r0, #0x50]
	movs r0, #3
	movs r1, #0x7f
	bl sub_080099E0
	adds r7, r0, #0
	movs r1, #1
	bl sub_08009A34
	ldr r1, [r6]
	adds r0, r1, #0
	adds r0, #0x60
	ldrh r0, [r0]
	subs r4, r4, r0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r1, #0x62
	ldrh r0, [r1]
	subs r5, r5, r0
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	adds r0, r7, #0
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_08009A70
	ldr r1, _0801C2D0 @ =0x06010800
	adds r0, r7, #0
	bl sub_08009A78
	ldr r0, [r6]
	ldr r1, [r0, #0x70]
	adds r0, r7, #0
	movs r2, #0
	bl sub_08009BBC
	adds r0, r7, #0
	movs r1, #2
	bl sub_08009AB4
	adds r0, r7, #0
	mov r1, sb
	mov r2, sl
	movs r3, #9
	bl sub_08009ACC
	adds r0, r7, #0
	movs r1, #0xff
	bl sub_08009B40
	ldr r0, [r6]
	str r7, [r0, #0x40]
	movs r1, #8
	ldrsh r0, [r0, r1]
	ldr r1, _0801C2D4 @ =0x08084138
	ldr r1, [r1, #4]
	bl sub_08007B84
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801C2A8: .4byte 0x030013C4
_0801C2AC: .4byte 0x06010000
_0801C2B0: .4byte 0x080840A0
_0801C2B4: .4byte 0x03004488
_0801C2B8: .4byte 0x080840B0
_0801C2BC: .4byte 0x080BDB48
_0801C2C0: .4byte 0x080BDB3C
_0801C2C4: .4byte 0x06010400
_0801C2C8: .4byte 0x080DFEC4
_0801C2CC: .4byte 0x080DFE94
_0801C2D0: .4byte 0x06010800
_0801C2D4: .4byte 0x08084138

	thumb_func_start sub_0801C2D8
sub_0801C2D8: @ 0x0801C2D8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r0, #0
	mov r8, r0
	ldr r1, _0801C41C @ =0x030013C4
	mov sl, r1
	mov r7, sl
	mov sb, r0
	movs r6, #0
_0801C2F0:
	ldr r4, [r7]
	adds r2, r4, r6
	adds r0, r2, #0
	adds r0, #0x23
	ldrb r3, [r0]
	lsls r1, r3, #0x1c
	subs r0, #1
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r5, r1, #0x1c
	cmp r1, r0
	bne _0801C316
	adds r0, r2, #0
	adds r0, #0x24
	ldrb r0, [r0]
	lsrs r0, r0, #4
	lsrs r1, r3, #4
	cmp r0, r1
	beq _0801C3C6
_0801C316:
	mov r3, r8
	lsls r1, r3, #2
	adds r0, r4, #0
	adds r0, #0x34
	adds r0, r0, r1
	ldr r0, [r0]
	adds r1, r2, #0
	adds r1, #0x24
	ldrb r2, [r1]
	lsrs r2, r2, #4
	lsls r1, r5, #1
	adds r1, r1, r5
	adds r1, r1, r2
	lsls r1, r1, #1
	add r1, sb
	ldr r4, _0801C420 @ =0x0808410C
	adds r1, r1, r4
	ldrb r1, [r1]
	bl sub_08009AFC
	ldr r0, [r7]
	adds r0, r0, r6
	adds r1, r0, #0
	adds r1, #0x23
	ldrb r1, [r1]
	lsls r1, r1, #0x1c
	adds r4, r0, #0
	adds r4, #0x22
	ldrb r3, [r4]
	lsls r0, r3, #0x1c
	lsrs r2, r0, #0x1c
	cmp r1, r0
	beq _0801C384
	lsls r1, r2, #4
	movs r0, #0xf
	ands r0, r3
	orrs r0, r1
	strb r0, [r4]
	ldr r3, [r7]
	adds r3, r3, r6
	adds r0, r3, #0
	adds r0, #0x23
	ldrb r1, [r0]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1c
	adds r3, #0x22
	movs r0, #0xf
	ands r1, r0
	ldrb r0, [r3]
	movs r4, #0x10
	rsbs r4, r4, #0
	adds r2, r4, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
_0801C384:
	ldr r0, [r7]
	adds r0, r0, r6
	adds r4, r0, #0
	adds r4, #0x24
	ldrb r3, [r4]
	lsrs r1, r3, #4
	adds r0, #0x23
	ldrb r0, [r0]
	lsrs r2, r0, #4
	ldr r0, _0801C41C @ =0x030013C4
	mov sl, r0
	cmp r1, r2
	beq _0801C3C6
	movs r1, #0xf
	ands r2, r1
	subs r1, #0x1f
	adds r0, r1, #0
	ands r0, r3
	orrs r0, r2
	strb r0, [r4]
	ldr r1, [r7]
	adds r1, r1, r6
	adds r0, r1, #0
	adds r0, #0x24
	ldrb r2, [r0]
	lsrs r2, r2, #4
	adds r1, #0x23
	lsls r2, r2, #4
	ldrb r3, [r1]
	movs r0, #0xf
	ands r0, r3
	orrs r0, r2
	strb r0, [r1]
_0801C3C6:
	movs r2, #0x12
	add sb, r2
	adds r6, #0xc
	movs r3, #1
	add r8, r3
	mov r4, r8
	cmp r4, #1
	ble _0801C2F0
	mov r1, sl
	ldr r0, [r1]
	ldr r0, [r0, #0x38]
	ldr r3, _0801C424 @ =0x08084130
	ldr r1, _0801C428 @ =0x03004400
	ldr r1, [r1]
	lsrs r1, r1, #5
	movs r2, #3
	ands r1, r2
	lsls r1, r1, #1
	adds r1, r1, r3
	ldrh r2, [r1]
	adds r2, #0x54
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r1, #0x50
	bl sub_08009A70
	mov r2, sl
	ldr r1, [r2]
	ldr r0, [r1, #0x40]
	ldr r2, [r1, #0x38]
	movs r3, #6
	ldrsh r1, [r2, r3]
	movs r4, #8
	ldrsh r2, [r2, r4]
	bl sub_08009A70
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801C41C: .4byte 0x030013C4
_0801C420: .4byte 0x0808410C
_0801C424: .4byte 0x08084130
_0801C428: .4byte 0x03004400

	thumb_func_start sub_0801C42C
sub_0801C42C: @ 0x0801C42C
	push {r4, lr}
	ldr r4, _0801C460 @ =0x030013C4
	ldr r0, [r4]
	ldr r0, [r0, #0x34]
	bl sub_08009A00
	ldr r0, [r4]
	ldr r0, [r0, #0x38]
	bl sub_08009A00
	ldr r0, [r4]
	ldr r0, [r0, #0x4c]
	bl sub_08009A00
	ldr r0, [r4]
	ldr r0, [r0, #0x50]
	bl sub_08009A00
	ldr r0, [r4]
	ldr r0, [r0, #0x40]
	bl sub_08009A00
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801C460: .4byte 0x030013C4

	thumb_func_start sub_0801C464
sub_0801C464: @ 0x0801C464
	push {r4, r5, r6, lr}
	bl sub_08009DDC
	adds r6, r0, #0
	movs r1, #0x20
	movs r2, #0x20
	bl sub_08009E84
	movs r0, #3
	movs r1, #0xff
	bl sub_080099E0
	adds r4, r0, #0
	movs r1, #1
	bl sub_08009A34
	ldr r5, _0801C514 @ =0x030013C4
	ldr r2, [r5]
	adds r0, r2, #0
	adds r0, #0x60
	ldrh r0, [r0]
	movs r1, #0x78
	subs r1, r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r2, #0x62
	ldrh r0, [r2]
	movs r2, #0x5c
	subs r2, r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r4, #0
	bl sub_08009A70
	ldr r0, [r5]
	ldr r1, [r0, #0x54]
	adds r0, r4, #0
	bl sub_08009A78
	adds r0, r4, #0
	movs r1, #4
	bl sub_08009AB4
	ldr r1, _0801C518 @ =0x080BDB48
	ldr r2, _0801C51C @ =0x080BDB3C
	adds r0, r4, #0
	movs r3, #0
	bl sub_08009ACC
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08009B9C
	adds r0, r4, #0
	movs r1, #1
	bl sub_08009B6C
	adds r0, r4, #0
	movs r1, #1
	bl sub_08009B84
	adds r0, r4, #0
	movs r1, #0xff
	bl sub_08009B40
	ldr r0, _0801C520 @ =0x030024E0
	adds r0, #0x4c
	ldr r1, _0801C524 @ =0x00000808
	strh r1, [r0]
	ldr r2, [r5]
	str r4, [r2, #0x3c]
	adds r1, r2, #0
	adds r1, #0x76
	movs r0, #0x78
	strh r0, [r1]
	adds r1, #2
	movs r0, #0x5c
	strh r0, [r1]
	movs r1, #0xa
	ldrsh r0, [r2, r1]
	ldr r1, _0801C528 @ =0x08084140
	ldr r1, [r1, #4]
	bl sub_08007B84
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801C514: .4byte 0x030013C4
_0801C518: .4byte 0x080BDB48
_0801C51C: .4byte 0x080BDB3C
_0801C520: .4byte 0x030024E0
_0801C524: .4byte 0x00000808
_0801C528: .4byte 0x08084140

	thumb_func_start sub_0801C52C
sub_0801C52C: @ 0x0801C52C
	push {r4, r5, r6, r7, lr}
	ldr r4, _0801C5AC @ =0x030013C4
	ldr r5, [r4]
	adds r7, r5, #0
	adds r7, #0x7a
	ldrh r0, [r7]
	ldr r1, _0801C5B0 @ =0xFFFFFE00
	adds r0, r0, r1
	movs r1, #0xe0
	lsls r1, r1, #2
	bl __divsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r6, _0801C5B4 @ =0x030024E0
	movs r2, #0x10
	subs r2, r2, r0
	movs r1, #0x1f
	ands r2, r1
	lsls r2, r2, #8
	movs r1, #0x1f
	ands r1, r0
	orrs r2, r1
	adds r0, r6, #0
	adds r0, #0x4c
	strh r2, [r0]
	ldr r0, [r5, #0x3c]
	ldr r0, [r0, #0x24]
	ldrh r2, [r7]
	lsrs r2, r2, #4
	adds r1, r2, #0
	bl sub_08009E84
	ldr r3, [r4]
	ldr r0, [r3, #0x3c]
	adds r1, r3, #0
	adds r1, #0x76
	adds r2, r3, #0
	adds r2, #0x60
	ldrh r1, [r1]
	ldrh r2, [r2]
	subs r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r2, r3, #0
	adds r2, #0x78
	adds r3, #0x62
	ldrh r2, [r2]
	ldrh r3, [r3]
	subs r2, r2, r3
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl sub_08009A70
	ldr r0, [r4]
	adds r0, #0x7c
	ldrh r1, [r0]
	lsrs r1, r1, #8
	movs r0, #0x38
	subs r0, r0, r1
	strh r0, [r6, #0x16]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801C5AC: .4byte 0x030013C4
_0801C5B0: .4byte 0xFFFFFE00
_0801C5B4: .4byte 0x030024E0

	thumb_func_start sub_0801C5B8
sub_0801C5B8: @ 0x0801C5B8
	push {r4, lr}
	ldr r4, _0801C5D4 @ =0x030013C4
	ldr r0, [r4]
	ldr r0, [r0, #0x3c]
	ldr r0, [r0, #0x24]
	bl sub_08009E54
	ldr r0, [r4]
	ldr r0, [r0, #0x3c]
	bl sub_08009A00
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801C5D4: .4byte 0x030013C4

	thumb_func_start sub_0801C5D8
sub_0801C5D8: @ 0x0801C5D8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	movs r6, #0
	ldr r7, _0801C668 @ =0x030013C4
	ldr r0, _0801C66C @ =0x080B8664
	mov r8, r0
_0801C5E6:
	movs r0, #2
	movs r1, #0
	bl sub_080099E0
	adds r4, r0, #0
	movs r1, #0
	bl sub_08009A34
	ldr r0, _0801C670 @ =0x08084148
	lsls r5, r6, #1
	adds r0, r5, r0
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r0, r4, #0
	movs r2, #0x64
	bl sub_08009A70
	ldr r0, [r7]
	ldr r1, [r0, #0x5c]
	adds r0, r4, #0
	bl sub_08009A78
	adds r0, r4, #0
	movs r1, #6
	bl sub_08009AB4
	ldr r0, _0801C674 @ =0x03004400
	ldrb r2, [r0, #0x14]
	lsls r2, r2, #2
	mov r1, r8
	adds r0, r2, r1
	ldr r1, [r0]
	ldr r0, _0801C678 @ =0x080B8660
	adds r2, r2, r0
	ldr r0, [r2]
	ldr r2, [r0, #0xc]
	adds r0, r4, #0
	movs r3, #7
	bl sub_08009ACC
	ldr r1, [r7]
	lsls r2, r6, #2
	adds r0, r1, #0
	adds r0, #0x44
	adds r0, r0, r2
	str r4, [r0]
	adds r1, #0xe
	adds r1, r1, r5
	ldr r0, _0801C67C @ =0x0000FFFF
	strh r0, [r1]
	adds r6, #1
	cmp r6, #1
	ble _0801C5E6
	ldr r0, _0801C668 @ =0x030013C4
	ldr r0, [r0]
	movs r2, #0xc
	ldrsh r0, [r0, r2]
	ldr r1, _0801C680 @ =sub_0801C684
	bl sub_08007B84
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801C668: .4byte 0x030013C4
_0801C66C: .4byte 0x080B8664
_0801C670: .4byte 0x08084148
_0801C674: .4byte 0x03004400
_0801C678: .4byte 0x080B8660
_0801C67C: .4byte 0x0000FFFF
_0801C680: .4byte sub_0801C684

	thumb_func_start sub_0801C684
sub_0801C684: @ 0x0801C684
	bx lr
	.align 2, 0

	thumb_func_start sub_0801C688
sub_0801C688: @ 0x0801C688
	push {r4, r5, lr}
	movs r4, #0
	ldr r5, _0801C6A8 @ =0x030013C4
_0801C68E:
	ldr r0, [r5]
	lsls r1, r4, #2
	adds r0, #0x44
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_08009A00
	adds r4, #1
	cmp r4, #1
	ble _0801C68E
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801C6A8: .4byte 0x030013C4

	thumb_func_start sub_0801C6AC
sub_0801C6AC: @ 0x0801C6AC
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r4, r0, #0
	lsls r1, r1, #0x18
	lsrs r7, r1, #0x18
	ldr r6, _0801C70C @ =0x030013C4
	ldr r0, [r6]
	lsls r5, r4, #1
	adds r0, #0xe
	adds r1, r0, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0
	blt _0801C6D0
	bl sub_08007A08
_0801C6D0:
	ldr r0, [r6]
	lsls r4, r4, #2
	adds r0, #0x44
	adds r0, r0, r4
	ldr r0, [r0]
	movs r1, #1
	bl sub_08009A34
	ldr r0, [r6]
	adds r0, #0x44
	adds r0, r0, r4
	ldr r0, [r0]
	ldr r1, _0801C710 @ =0x08084148
	adds r1, r5, r1
	movs r3, #0
	ldrsh r2, [r1, r3]
	movs r1, #0x45
	str r1, [sp]
	adds r1, r7, #0
	movs r3, #0x64
	bl sub_08029D88
	ldr r1, [r6]
	adds r1, #0xe
	adds r1, r1, r5
	strh r0, [r1]
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801C70C: .4byte 0x030013C4
_0801C710: .4byte 0x08084148

	thumb_func_start sub_0801C714
sub_0801C714: @ 0x0801C714
	push {r4, r5, lr}
	movs r4, #0
	ldr r5, _0801C738 @ =0x030013C4
_0801C71A:
	ldr r0, [r5]
	lsls r1, r4, #2
	adds r0, #0x44
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0
	bl sub_08009A34
	adds r4, #1
	cmp r4, #1
	ble _0801C71A
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801C738: .4byte 0x030013C4

	thumb_func_start sub_0801C73C
sub_0801C73C: @ 0x0801C73C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	bl sub_08007BD4
	mov r8, r0
	ldr r0, _0801C784 @ =0x030024B0
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0801C7A2
	ldr r0, _0801C788 @ =0x0000013B
	bl m4aSongNumStart
	ldr r0, _0801C78C @ =0x030013C4
	ldr r2, [r0]
	adds r0, r2, #0
	adds r0, #0x23
	ldrb r0, [r0]
	lsrs r0, r0, #4
	cmp r0, #0
	bne _0801C790
	adds r2, #0x24
	ldrb r1, [r2]
	movs r0, #0xf
	ands r0, r1
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2]
	movs r0, #1
	movs r1, #8
	bl sub_0801C6AC
	b _0801C7A2
	.align 2, 0
_0801C784: .4byte 0x030024B0
_0801C788: .4byte 0x0000013B
_0801C78C: .4byte 0x030013C4
_0801C790:
	adds r2, #0x24
	ldrb r1, [r2]
	movs r0, #0xf
	ands r0, r1
	strb r0, [r2]
	movs r0, #1
	movs r1, #7
	bl sub_0801C6AC
_0801C7A2:
	ldr r0, _0801C7E0 @ =0x030024B0
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0801C800
	ldr r0, _0801C7E4 @ =0x0000013B
	bl m4aSongNumStart
	ldr r0, _0801C7E8 @ =0x030013C4
	ldr r2, [r0]
	adds r0, r2, #0
	adds r0, #0x22
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	cmp r0, #0
	bne _0801C7EC
	adds r2, #0x23
	ldrb r1, [r2]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0
	movs r1, #0xa
	bl sub_0801C6AC
	b _0801C800
	.align 2, 0
_0801C7E0: .4byte 0x030024B0
_0801C7E4: .4byte 0x0000013B
_0801C7E8: .4byte 0x030013C4
_0801C7EC:
	adds r2, #0x23
	ldrb r1, [r2]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	movs r0, #0
	movs r1, #9
	bl sub_0801C6AC
_0801C800:
	ldr r0, _0801C868 @ =0x030013C4
	ldr r0, [r0]
	adds r5, r0, #0
	adds r5, #0x8e
	ldrb r7, [r5]
	adds r6, r7, #0
	adds r4, r0, #0
	adds r4, #0x8c
	ldrh r3, [r4]
	cmp r3, #0
	bne _0801C846
	ldr r2, _0801C86C @ =0x0808414C
	ldrb r7, [r2, #8]
	adds r0, #0x84
	ldrh r1, [r0]
	ldr r0, _0801C870 @ =0x0000059F
	cmp r1, r0
	bhi _0801C826
	ldrb r7, [r2, #6]
_0801C826:
	ldr r0, _0801C874 @ =0x00000437
	cmp r1, r0
	bhi _0801C82E
	ldrb r7, [r2, #4]
_0801C82E:
	ldr r0, _0801C878 @ =0x000002CF
	cmp r1, r0
	bhi _0801C836
	ldrb r7, [r2, #2]
_0801C836:
	ldr r0, _0801C87C @ =0x00000167
	cmp r1, r0
	bhi _0801C83E
	ldrb r7, [r2]
_0801C83E:
	cmp r6, r7
	beq _0801C846
	strh r3, [r4]
	strb r7, [r5]
_0801C846:
	ldr r6, _0801C868 @ =0x030013C4
	ldr r2, [r6]
	adds r3, r2, #0
	adds r3, #0x7e
	ldrh r1, [r3]
	adds r0, r2, #0
	adds r0, #0x80
	strh r1, [r0]
	mov r0, r8
	ldrb r5, [r0]
	cmp r5, #0
	beq _0801C880
	cmp r5, #1
	bne _0801C864
	b _0801CA36
_0801C864:
	b _0801CB00
	.align 2, 0
_0801C868: .4byte 0x030013C4
_0801C86C: .4byte 0x0808414C
_0801C870: .4byte 0x0000059F
_0801C874: .4byte 0x00000437
_0801C878: .4byte 0x000002CF
_0801C87C: .4byte 0x00000167
_0801C880:
	ldrh r1, [r3]
	ldr r0, _0801C894 @ =0x0000095F
	cmp r1, r0
	bls _0801C898
	bl sub_0801C714
	bl sub_0801BE70
	b _0801CB7E
	.align 2, 0
_0801C894: .4byte 0x0000095F
_0801C898:
	movs r0, #3
	bl sub_0800B828
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r2, [r6]
	adds r0, r2, #0
	adds r0, #0x8c
	ldrh r0, [r0]
	cmp r0, #0
	beq _0801C8B2
	b _0801CB00
_0801C8B2:
	adds r0, r2, #0
	adds r0, #0x84
	ldrh r1, [r0]
	ldr r0, _0801C8F8 @ =0x00000707
	cmp r1, r0
	bls _0801C8FC
	adds r2, #0x24
	ldrb r1, [r2]
	movs r3, #0xf
	adds r0, r3, #0
	ands r0, r1
	strb r0, [r2]
	ldr r1, [r6]
	adds r1, #0x23
	ldrb r4, [r1]
	movs r2, #0x10
	rsbs r2, r2, #0
	adds r0, r2, #0
	ands r0, r4
	strb r0, [r1]
	ldr r0, [r6]
	adds r0, #0x30
	ldrb r1, [r0]
	ands r3, r1
	strb r3, [r0]
	ldr r0, [r6]
	adds r0, #0x2f
	ldrb r1, [r0]
	ands r2, r1
	strb r2, [r0]
	bl sub_0801BE8C
	bl sub_0801C714
	b _0801CB7E
	.align 2, 0
_0801C8F8: .4byte 0x00000707
_0801C8FC:
	adds r0, r2, #0
	adds r0, #0x23
	ldrb r1, [r0]
	lsrs r1, r1, #4
	adds r0, #0xc
	ldrb r0, [r0]
	lsrs r0, r0, #4
	cmp r1, r0
	bne _0801C918
	movs r0, #1
	ands r0, r4
	cmp r0, #0
	bne _0801C964
	b _0801C920
_0801C918:
	movs r0, #1
	ands r0, r4
	cmp r0, #0
	beq _0801C964
_0801C920:
	ldr r0, _0801C940 @ =0x030013C4
	ldr r0, [r0]
	adds r1, r0, #0
	adds r1, #0x22
	ldrb r1, [r1]
	lsls r1, r1, #0x1c
	adds r0, #0x2e
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	cmp r1, r0
	bne _0801C944
	movs r0, #2
	ands r0, r4
	cmp r0, #0
	bne _0801C964
	b _0801C94C
	.align 2, 0
_0801C940: .4byte 0x030013C4
_0801C944:
	movs r0, #2
	ands r0, r4
	cmp r0, #0
	beq _0801C964
_0801C94C:
	movs r0, #2
	bl sub_0800B828
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r0, r4, r0
	movs r1, #3
	bl __modsi3
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_0801C964:
	ldr r3, _0801C9B4 @ =0x030013C4
	ldr r2, [r3]
	adds r0, r2, #0
	adds r0, #0x84
	ldrh r1, [r0]
	ldr r0, _0801C9B8 @ =0x00000167
	cmp r1, r0
	bls _0801C9BC
	movs r5, #1
	adds r0, r4, #0
	ands r0, r5
	cmp r0, #0
	bne _0801C98C
	adds r2, #0x30
	ldrb r1, [r2]
	movs r0, #0xf
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
_0801C98C:
	movs r0, #2
	ands r0, r4
	cmp r0, #0
	bne _0801C9A6
	ldr r2, [r3]
	adds r2, #0x2f
	ldrb r1, [r2]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
_0801C9A6:
	ldr r0, [r3]
	adds r0, #0x8b
	strb r4, [r0]
	mov r1, r8
	strb r5, [r1]
	b _0801CB00
	.align 2, 0
_0801C9B4: .4byte 0x030013C4
_0801C9B8: .4byte 0x00000167
_0801C9BC:
	movs r0, #1
	ands r0, r4
	cmp r0, #0
	beq _0801C9F0
	adds r0, r2, #0
	adds r0, #0x2f
	ldrb r0, [r0]
	lsrs r0, r0, #4
	cmp r0, #0
	bne _0801C9DE
	adds r2, #0x30
	ldrb r1, [r2]
	movs r0, #0xf
	ands r0, r1
	movs r1, #0x10
	orrs r0, r1
	b _0801C9E6
_0801C9DE:
	adds r2, #0x30
	ldrb r1, [r2]
	movs r0, #0xf
	ands r0, r1
_0801C9E6:
	strb r0, [r2]
	movs r0, #0x9d
	lsls r0, r0, #1
	bl m4aSongNumStart
_0801C9F0:
	movs r0, #2
	ands r4, r0
	cmp r4, #0
	bne _0801C9FA
	b _0801CAF6
_0801C9FA:
	ldr r0, _0801CA1C @ =0x030013C4
	ldr r2, [r0]
	adds r0, r2, #0
	adds r0, #0x2e
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	cmp r0, #0
	bne _0801CA20
	adds r2, #0x2f
	ldrb r1, [r2]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	b _0801CA2A
	.align 2, 0
_0801CA1C: .4byte 0x030013C4
_0801CA20:
	adds r2, #0x2f
	ldrb r1, [r2]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
_0801CA2A:
	strb r0, [r2]
	movs r0, #0x9d
	lsls r0, r0, #1
	bl m4aSongNumStart
	b _0801CAF6
_0801CA36:
	ldrh r0, [r2, #0x18]
	adds r0, #1
	strh r0, [r2, #0x18]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #5
	bls _0801CB00
	movs r0, #0
	strh r0, [r2, #0x18]
	adds r0, r2, #0
	adds r0, #0x8b
	ldrb r4, [r0]
	subs r0, #0x5c
	ldrb r0, [r0]
	lsrs r0, r0, #4
	cmp r0, #2
	bne _0801CA6A
	adds r3, r2, #0
	adds r3, #0x30
	ldrb r2, [r3]
	lsls r1, r2, #0x1c
	lsrs r1, r1, #0x18
	movs r0, #0xf
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
_0801CA6A:
	ldr r2, [r6]
	adds r0, r2, #0
	adds r0, #0x2e
	ldrb r3, [r0]
	lsls r0, r3, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #2
	bne _0801CA8A
	adds r2, #0x2f
	lsrs r3, r3, #4
	ldrb r1, [r2]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2]
_0801CA8A:
	ands r5, r4
	cmp r5, #0
	beq _0801CAB6
	ldr r0, [r6]
	adds r2, r0, #0
	adds r2, #0x30
	ldrb r1, [r2]
	lsrs r0, r1, #4
	cmp r0, #0
	bne _0801CAA8
	movs r0, #0xf
	ands r0, r1
	movs r1, #0x10
	orrs r0, r1
	b _0801CAAC
_0801CAA8:
	movs r0, #0xf
	ands r0, r1
_0801CAAC:
	strb r0, [r2]
	movs r0, #0x9d
	lsls r0, r0, #1
	bl m4aSongNumStart
_0801CAB6:
	movs r0, #2
	ands r4, r0
	cmp r4, #0
	beq _0801CAF0
	ldr r0, _0801CADC @ =0x030013C4
	ldr r0, [r0]
	adds r2, r0, #0
	adds r2, #0x2f
	ldrb r1, [r2]
	lsls r0, r1, #0x1c
	cmp r0, #0
	bne _0801CAE0
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	b _0801CAE6
	.align 2, 0
_0801CADC: .4byte 0x030013C4
_0801CAE0:
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
_0801CAE6:
	strb r0, [r2]
	movs r0, #0x9d
	lsls r0, r0, #1
	bl m4aSongNumStart
_0801CAF0:
	movs r0, #0
	mov r1, r8
	strb r0, [r1]
_0801CAF6:
	ldr r0, _0801CB48 @ =0x030013C4
	ldr r0, [r0]
	adds r0, #0x8a
	movs r1, #1
	strb r1, [r0]
_0801CB00:
	ldr r1, _0801CB48 @ =0x030013C4
	ldr r3, [r1]
	adds r0, r3, #0
	adds r0, #0x23
	adds r2, r3, #0
	adds r2, #0x2f
	ldrb r0, [r0]
	adds r4, r1, #0
	ldrb r2, [r2]
	cmp r0, r2
	bne _0801CB4C
	movs r0, #0x8a
	adds r0, r0, r3
	mov ip, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801CB32
	adds r0, r3, #0
	adds r0, #0x88
	ldrh r1, [r0]
	adds r1, #1
	movs r2, #0
	strh r1, [r0]
	mov r1, ip
	strb r2, [r1]
_0801CB32:
	ldr r0, [r4]
	adds r2, r0, #0
	adds r2, #0x86
	ldrh r1, [r2]
	adds r1, #1
	strh r1, [r2]
	adds r0, #0x7e
	ldrh r1, [r0]
	adds r1, #5
	strh r1, [r0]
	b _0801CB5E
	.align 2, 0
_0801CB48: .4byte 0x030013C4
_0801CB4C:
	adds r1, r3, #0
	adds r1, #0x7e
	ldrh r0, [r1]
	cmp r0, #1
	bls _0801CB5A
	subs r0, #1
	b _0801CB5C
_0801CB5A:
	movs r0, #0
_0801CB5C:
	strh r0, [r1]
_0801CB5E:
	ldr r4, [r4]
	adds r1, r4, #0
	adds r1, #0x84
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	adds r4, #0x8c
	ldrh r0, [r4]
	adds r0, #1
	adds r1, r7, #0
	bl __modsi3
	strh r0, [r4]
	movs r0, #0
	cmp r0, #0
	beq _0801CB8C
_0801CB7E:
	ldr r0, _0801CB98 @ =0x030013C4
	ldr r0, [r0]
	adds r0, #0x8f
	movs r1, #0
	strb r1, [r0]
	bl sub_08007A64
_0801CB8C:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801CB98: .4byte 0x030013C4

	thumb_func_start sub_0801CB9C
sub_0801CB9C: @ 0x0801CB9C
	push {lr}
	ldr r0, _0801CBC4 @ =sub_0801C73C
	movs r1, #0x40
	movs r2, #0
	bl sub_08007968
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl sub_08007BBC
	movs r1, #0
	strb r1, [r0]
	strh r1, [r0, #2]
	ldr r0, _0801CBC8 @ =0x030013C4
	ldr r0, [r0]
	adds r0, #0x8f
	movs r1, #1
	strb r1, [r0]
	pop {r0}
	bx r0
	.align 2, 0
_0801CBC4: .4byte sub_0801C73C
_0801CBC8: .4byte 0x030013C4

	thumb_func_start sub_0801CBCC
sub_0801CBCC: @ 0x0801CBCC
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0xc
	ldr r5, _0801CD6C @ =0x030013C8
	bl sub_0801934C
	adds r1, r0, #0
	str r1, [r5]
	movs r0, #0
	movs r2, #0xf4
	bl sub_08007EFC
	ldr r0, _0801CD70 @ =0x08084308
	ldr r4, [r0]
	adds r0, r4, #0
	movs r1, #0x41
	movs r2, #0
	bl sub_08007968
	ldr r1, [r5]
	movs r2, #0
	mov r8, r2
	strh r0, [r1]
	movs r0, #0
	bl sub_0801D358
	adds r0, r4, #0
	movs r1, #0x42
	movs r2, #0
	bl sub_08007968
	ldr r1, [r5]
	strh r0, [r1, #2]
	movs r0, #1
	bl sub_0801D358
	ldr r0, _0801CD74 @ =0x0808431C
	ldr r0, [r0]
	movs r1, #0x43
	movs r2, #0
	bl sub_08007968
	ldr r1, [r5]
	strh r0, [r1, #4]
	ldr r0, _0801CD78 @ =0x08084330
	ldr r0, [r0]
	movs r1, #0x44
	movs r2, #0
	bl sub_08007968
	ldr r1, [r5]
	strh r0, [r1, #6]
	movs r2, #6
	ldrsh r0, [r1, r2]
	ldr r1, _0801CD7C @ =sub_0801DBB8
	bl sub_08007BA0
	ldr r0, _0801CD80 @ =sub_0801DBE8
	movs r1, #0x44
	movs r2, #0
	bl sub_08007968
	ldr r1, [r5]
	strh r0, [r1, #8]
	movs r2, #8
	ldrsh r0, [r1, r2]
	ldr r1, _0801CD84 @ =sub_0801DF80
	bl sub_08007BA0
	ldr r1, _0801CD88 @ =0x0808425C
	ldr r4, _0801CD8C @ =0x03004488
	ldrb r0, [r4]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _0801CD90 @ =0x05000200
	bl LoadPalette_08008308
	ldr r1, _0801CD94 @ =0x0808426C
	ldrb r0, [r4]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	add r1, sp, #4
	bl sub_08008380
	ldr r1, [r5]
	adds r2, r1, #0
	adds r2, #0xcc
	str r0, [r2]
	adds r1, #0xd0
	ldr r0, [sp, #4]
	str r0, [r1]
	ldr r0, _0801CD98 @ =0x080CF6E8
	ldr r1, _0801CD9C @ =0x05000220
	bl LoadPalette_08008308
	ldr r0, _0801CDA0 @ =0x080CF828
	add r1, sp, #4
	bl sub_08008380
	ldr r1, [r5]
	adds r2, r1, #0
	adds r2, #0xd4
	str r0, [r2]
	adds r1, #0xd8
	ldr r0, [sp, #4]
	str r0, [r1]
	ldr r1, _0801CDA4 @ =0x08085A50
	ldrb r0, [r4]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	add r1, sp, #4
	bl sub_08008380
	ldr r1, [r5]
	adds r2, r1, #0
	adds r2, #0xdc
	str r0, [r2]
	adds r1, #0xe0
	ldr r0, [sp, #4]
	str r0, [r1]
	ldr r4, _0801CDA8 @ =0x06010800
	ldr r0, _0801CDAC @ =0x080BE2E8
	ldr r1, _0801CDB0 @ =0x05000260
	bl LoadPalette_08008308
	ldr r0, [r5]
	adds r0, #0xbc
	str r4, [r0]
	ldr r0, _0801CDB4 @ =0x080BE3B8
	adds r1, r4, #0
	bl DecompressData_08008374
	adds r4, r0, r4
	ldr r0, _0801CDB8 @ =0x080CAC38
	ldr r1, _0801CDBC @ =0x05000240
	bl LoadPalette_08008308
	ldr r0, [r5]
	adds r0, #0xc0
	str r4, [r0]
	ldr r0, _0801CDC0 @ =0x080CAD1C
	adds r1, r4, #0
	bl DecompressData_08008374
	adds r4, r4, r0
	ldr r1, _0801CDC4 @ =0x080B85E8
	ldr r6, _0801CDC8 @ =0x03004400
	ldrb r0, [r6, #0x14]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _0801CDCC @ =0x05000280
	bl LoadPalette_08008308
	ldr r0, [r5]
	adds r0, #0xc4
	str r4, [r0]
	ldr r1, _0801CDD0 @ =0x080B8624
	ldrb r0, [r6, #0x14]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r0, [r0, #0x10]
	adds r1, r4, #0
	bl DecompressData_08008374
	ldr r0, _0801CDD4 @ =0x08084190
	bl sub_0800B02C
	movs r0, #0xf0
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #3
	bl sub_08006BE8
	bl sub_08003F9C
	movs r0, #0x80
	lsls r0, r0, #1
	str r0, [sp]
	movs r0, #1
	movs r1, #0x1e
	movs r2, #3
	movs r3, #0
	bl sub_08004028
	bl sub_080057C0
	bl sub_08005AA0
	mov r0, r8
	str r0, [sp]
	movs r0, #1
	movs r1, #3
	movs r2, #0
	movs r3, #0x1d
	bl sub_08000268
	add sp, #0xc
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801CD6C: .4byte 0x030013C8
_0801CD70: .4byte 0x08084308
_0801CD74: .4byte 0x0808431C
_0801CD78: .4byte 0x08084330
_0801CD7C: .4byte sub_0801DBB8
_0801CD80: .4byte sub_0801DBE8
_0801CD84: .4byte sub_0801DF80
_0801CD88: .4byte 0x0808425C
_0801CD8C: .4byte 0x03004488
_0801CD90: .4byte 0x05000200
_0801CD94: .4byte 0x0808426C
_0801CD98: .4byte 0x080CF6E8
_0801CD9C: .4byte 0x05000220
_0801CDA0: .4byte 0x080CF828
_0801CDA4: .4byte 0x08085A50
_0801CDA8: .4byte 0x06010800
_0801CDAC: .4byte 0x080BE2E8
_0801CDB0: .4byte 0x05000260
_0801CDB4: .4byte 0x080BE3B8
_0801CDB8: .4byte 0x080CAC38
_0801CDBC: .4byte 0x05000240
_0801CDC0: .4byte 0x080CAD1C
_0801CDC4: .4byte 0x080B85E8
_0801CDC8: .4byte 0x03004400
_0801CDCC: .4byte 0x05000280
_0801CDD0: .4byte 0x080B8624
_0801CDD4: .4byte 0x08084190

	thumb_func_start sub_0801CDD8
sub_0801CDD8: @ 0x0801CDD8
	push {r4, lr}
	ldr r1, _0801CDF8 @ =0x080842B4
	ldr r4, _0801CDFC @ =0x030013C8
	ldr r0, [r4]
	ldrb r0, [r0, #0xd]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl call_via_r0
	ldr r0, [r4]
	ldrb r0, [r0, #0xc]
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0801CDF8: .4byte 0x080842B4
_0801CDFC: .4byte 0x030013C8

	thumb_func_start sub_0801CE00
sub_0801CE00: @ 0x0801CE00
	ldr r1, _0801CE14 @ =0x030013C8
	ldr r2, [r1]
	movs r3, #0
	strb r0, [r2, #0xd]
	ldr r0, [r1]
	strb r3, [r0, #0xe]
	ldr r0, [r1]
	strh r3, [r0, #0x10]
	bx lr
	.align 2, 0
_0801CE14: .4byte 0x030013C8

	thumb_func_start sub_0801CE18
sub_0801CE18: @ 0x0801CE18
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r7, #0
	ldr r0, _0801CE50 @ =0x030013C8
	mov sb, r0
	movs r1, #0
	mov sl, r1
_0801CE2C:
	movs r2, #0
	mov r8, r2
	cmp r7, #0
	bne _0801CE84
	ldr r0, _0801CE54 @ =0x030024B0
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0801CE58
	movs r3, #1
	mov r8, r3
	mov r5, sb
	ldr r0, [r5]
	adds r0, #0x2e
	strb r7, [r0]
	b _0801CEE4
	.align 2, 0
_0801CE50: .4byte 0x030013C8
_0801CE54: .4byte 0x030024B0
_0801CE58:
	mov r1, sb
	ldr r0, [r1]
	adds r0, #0x2e
	ldrb r1, [r0]
	adds r1, #1
	strb r1, [r0]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r0, _0801CE80 @ =0x080842A0
	ldrh r0, [r0, #0x12]
	adds r0, #1
	cmp r1, r0
	blt _0801CEE4
	mov r2, sb
	ldr r0, [r2]
	adds r0, #0x2e
	strb r7, [r0]
	movs r3, #1
	mov r8, r3
	b _0801CEE4
	.align 2, 0
_0801CE80: .4byte 0x080842A0
_0801CE84:
	ldr r2, _0801CEA4 @ =0x080842A0
	ldrh r4, [r2, #0x12]
	movs r3, #8
	mov r5, sb
	ldr r1, [r5]
	ldr r0, [r1, #0x28]
	ldr r5, _0801CEA8 @ =0xFFFFC800
	adds r0, r0, r5
	ldr r1, [r1, #0x34]
	adds r5, r2, #0
	ldr r6, _0801CEAC @ =0x03004400
	cmp r1, r0
	bge _0801CEB0
	ldrh r4, [r5]
	b _0801CED4
	.align 2, 0
_0801CEA4: .4byte 0x080842A0
_0801CEA8: .4byte 0xFFFFC800
_0801CEAC: .4byte 0x03004400
_0801CEB0:
	subs r3, #1
	cmp r3, #0
	blt _0801CED4
	mov r0, sb
	ldr r2, [r0]
	lsls r0, r3, #0xb
	ldr r1, _0801CF14 @ =0xFFFFF800
	adds r0, r0, r1
	ldr r1, [r2, #0x28]
	subs r1, r1, r0
	ldr r0, [r2, #0x34]
	cmp r0, r1
	bge _0801CEB0
	movs r0, #8
	subs r0, r0, r3
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r4, [r0]
_0801CED4:
	ldr r0, [r6]
	adds r1, r4, #0
	bl __umodsi3
	cmp r0, #0
	bne _0801CEE4
	movs r2, #1
	mov r8, r2
_0801CEE4:
	mov r3, sb
	ldr r0, [r3]
	mov r5, sl
	adds r1, r0, r5
	ldrh r4, [r1, #0x24]
	mov r0, r8
	cmp r0, #0
	beq _0801CF18
	adds r0, r1, #0
	adds r0, #0x2c
	ldrb r2, [r0]
	cmp r2, #0
	bne _0801CF18
	adds r4, #8
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r4, r0
	ble _0801CF0A
	adds r4, r0, #0
_0801CF0A:
	adds r0, r1, #0
	adds r0, #0x26
	strb r2, [r0]
	b _0801CF60
	.align 2, 0
_0801CF14: .4byte 0xFFFFF800
_0801CF18:
	mov r2, sb
	ldr r1, [r2]
	add r1, sl
	adds r1, #0x26
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r1, [r2]
	mov r3, sl
	adds r2, r1, r3
	adds r0, r2, #0
	adds r0, #0x2c
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801CF46
	lsls r0, r7, #3
	adds r0, r1, r0
	movs r5, #0x16
	ldrsh r1, [r0, r5]
	ldr r0, _0801D008 @ =0x00000647
	cmp r1, r0
	ble _0801CF5A
	subs r4, #0x10
_0801CF46:
	adds r0, r2, #0
	adds r0, #0x26
	ldrb r1, [r0]
	movs r0, #0x62
	muls r0, r1, r0
	movs r1, #0x96
	lsls r1, r1, #2
	bl __divsi3
	subs r4, r4, r0
_0801CF5A:
	cmp r4, #0
	bge _0801CF60
	movs r4, #0
_0801CF60:
	mov r1, sb
	ldr r0, [r1]
	add r0, sl
	strh r4, [r0, #0x24]
	movs r2, #0xc
	add sl, r2
	adds r7, #1
	cmp r7, #1
	bgt _0801CF74
	b _0801CE2C
_0801CF74:
	movs r7, #0
	ldr r6, _0801D00C @ =0x030013C8
	movs r5, #0
	movs r3, #1
	mov r8, r3
_0801CF7E:
	movs r3, #0
	ldr r0, [r6]
	adds r1, r0, r5
	ldrh r0, [r1, #0x24]
	cmp r0, #0
	beq _0801CF94
	asrs r0, r0, #5
	adds r3, r0, #1
	cmp r3, #0x1f
	bls _0801CF94
	movs r3, #0x20
_0801CF94:
	lsls r0, r3, #0x10
	cmp r0, #0
	bge _0801CFA8
	ldr r0, [r6]
	adds r0, r0, r5
	adds r0, #0x2c
	ldrb r0, [r0]
	cmp r0, #0
	bne _0801CFA8
	movs r3, #0
_0801CFA8:
	ldr r0, [r6]
	adds r0, r0, r5
	adds r0, #0x2d
	strb r3, [r0]
	ldr r4, [r6]
	adds r2, r4, #0
	adds r2, #0x28
	adds r2, r2, r5
	lsls r0, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #4
	ldr r1, [r2]
	adds r1, r1, r0
	str r1, [r2]
	ldr r0, _0801D010 @ =0x0005FFFF
	cmp r1, r0
	bls _0801CFF2
	adds r0, r4, r5
	adds r0, #0x2c
	mov r1, r8
	strb r1, [r0]
	mov r3, sb
	ldr r2, [r3]
	adds r1, r7, #0
	mov r0, r8
	eors r1, r0
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r2, r0
	adds r0, #0x2c
	ldrb r0, [r0]
	cmp r0, #0
	bne _0801CFF2
	adds r0, r2, #0
	adds r0, #0xec
	strb r7, [r0]
_0801CFF2:
	adds r5, #0xc
	adds r7, #1
	cmp r7, #1
	ble _0801CF7E
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801D008: .4byte 0x00000647
_0801D00C: .4byte 0x030013C8
_0801D010: .4byte 0x0005FFFF

	thumb_func_start sub_0801D014
sub_0801D014: @ 0x0801D014
	push {r4, r5, r6, lr}
	ldr r6, _0801D028 @ =0x030013C8
	ldr r0, [r6]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _0801D02C
	cmp r0, #1
	beq _0801D06C
	b _0801D084
	.align 2, 0
_0801D028: .4byte 0x030013C8
_0801D02C:
	bl sub_08008174
	ldr r4, _0801D068 @ =0x030024E0
	ldrh r1, [r4]
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r2, #0
	orrs r0, r1
	movs r2, #0x80
	lsls r2, r2, #2
	adds r1, r2, #0
	orrs r0, r1
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4]
	movs r0, #1
	bl sub_08004124
	adds r4, #0x4f
	movs r5, #1
	strb r5, [r4]
	movs r0, #0x37
	bl m4aSongNumStart
	ldr r0, [r6]
	strb r5, [r0, #0xe]
	b _0801D084
	.align 2, 0
_0801D068: .4byte 0x030024E0
_0801D06C:
	bl sub_080003D0
	cmp r0, #0
	beq _0801D084
	ldr r2, _0801D08C @ =0x030024E0
	ldrh r1, [r2]
	ldr r0, _0801D090 @ =0x0000FDFF
	ands r0, r1
	strh r0, [r2]
	movs r0, #1
	bl sub_0801CE00
_0801D084:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801D08C: .4byte 0x030024E0
_0801D090: .4byte 0x0000FDFF

	thumb_func_start sub_0801D094
sub_0801D094: @ 0x0801D094
	push {r4, r5, r6, r7, lr}
	ldr r4, _0801D0AC @ =0x030013C8
	ldr r0, [r4]
	ldrb r0, [r0, #0xe]
	cmp r0, #1
	beq _0801D130
	cmp r0, #1
	bgt _0801D0B0
	cmp r0, #0
	beq _0801D0BA
	b _0801D158
	.align 2, 0
_0801D0AC: .4byte 0x030013C8
_0801D0B0:
	cmp r0, #2
	beq _0801D144
	cmp r0, #3
	beq _0801D152
	b _0801D158
_0801D0BA:
	bl sub_0801DFEC
	movs r0, #0
	bl sub_0801D3F0
	movs r0, #1
	bl sub_0801D3F0
	bl sub_0801D854
	adds r3, r4, #0
	movs r4, #0
	movs r6, #0
	adds r7, r3, #0
	movs r2, #0
	movs r5, #1
_0801D0DA:
	ldr r0, [r3]
	adds r0, r0, r2
	strh r6, [r0, #0x24]
	adds r0, #0x26
	strb r4, [r0]
	ldr r1, [r3]
	adds r0, r1, #0
	adds r0, #0x28
	adds r0, r0, r2
	str r6, [r0]
	adds r1, r1, r2
	adds r1, #0x2c
	strb r4, [r1]
	ldr r0, [r3]
	adds r0, r0, r2
	adds r0, #0x2d
	strb r4, [r0]
	ldr r0, [r3]
	adds r0, r0, r2
	adds r0, #0x2e
	strb r4, [r0]
	adds r2, #0xc
	subs r5, #1
	cmp r5, #0
	bge _0801D0DA
	ldr r1, [r7]
	adds r1, #0xed
	ldrb r2, [r1]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	ldr r1, [r7]
	adds r1, #0xed
	ldrb r2, [r1]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	ldr r1, [r7]
	movs r0, #1
	strb r0, [r1, #0xe]
	b _0801D158
_0801D130:
	movs r0, #1
	bl sub_0801D430
	ldr r1, [r4]
	movs r0, #2
	strb r0, [r1, #0xe]
	movs r0, #0x14
	bl ProcSleep_08002B98
	b _0801D158
_0801D144:
	movs r0, #0
	bl sub_0801D430
	ldr r1, [r4]
	movs r0, #3
	strb r0, [r1, #0xe]
	b _0801D158
_0801D152:
	movs r0, #2
	bl sub_0801CE00
_0801D158:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0801D160
sub_0801D160: @ 0x0801D160
	push {r4, r5, lr}
	ldr r5, _0801D174 @ =0x030013C8
	ldr r1, [r5]
	ldrb r4, [r1, #0xe]
	cmp r4, #0
	beq _0801D178
	cmp r4, #1
	beq _0801D1C4
	b _0801D220
	.align 2, 0
_0801D174: .4byte 0x030013C8
_0801D178:
	ldrb r0, [r1, #0x14]
	cmp r0, #0
	bne _0801D220
	bl sub_08005934
	ldr r0, _0801D1BC @ =0x08084224
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	bl sub_0801D874
	ldr r0, [r5]
	strh r4, [r0, #0x10]
	movs r0, #0
	bl sub_0801D450
	movs r0, #1
	bl sub_0801D450
	bl sub_0801E274
	ldr r1, [r5]
	movs r0, #1
	strb r0, [r1, #0xe]
	ldr r0, _0801D1C0 @ =0x08084234
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	bl sub_08005A2C
	b _0801D220
	.align 2, 0
_0801D1BC: .4byte 0x08084224
_0801D1C0: .4byte 0x08084234
_0801D1C4:
	adds r3, r1, #0
	adds r3, #0xf0
	ldrb r0, [r3]
	cmp r0, #0
	bne _0801D20E
	ldr r0, [r1, #0x28]
	ldr r2, _0801D1F8 @ =0x0002FFFF
	cmp r0, r2
	bhi _0801D1DC
	ldr r0, [r1, #0x34]
	cmp r0, r2
	bls _0801D20E
_0801D1DC:
	strb r4, [r3]
	bl sub_08005934
	ldr r0, [r5]
	ldr r1, [r0, #0x28]
	ldr r0, [r0, #0x34]
	cmp r1, r0
	blo _0801D200
	ldr r0, _0801D1FC @ =0x0808423C
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	b _0801D20A
	.align 2, 0
_0801D1F8: .4byte 0x0002FFFF
_0801D1FC: .4byte 0x0808423C
_0801D200:
	ldr r0, _0801D228 @ =0x08084244
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
_0801D20A:
	bl sub_08005A2C
_0801D20E:
	ldr r0, _0801D22C @ =0x030013C8
	ldr r0, [r0]
	adds r0, #0xf1
	ldrb r0, [r0]
	cmp r0, #0
	bne _0801D220
	movs r0, #3
	bl sub_0801CE00
_0801D220:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801D228: .4byte 0x08084244
_0801D22C: .4byte 0x030013C8

	thumb_func_start sub_0801D230
sub_0801D230: @ 0x0801D230
	push {r4, lr}
	sub sp, #4
	ldr r4, _0801D248 @ =0x030013C8
	ldr r0, [r4]
	ldrb r0, [r0, #0xe]
	cmp r0, #1
	beq _0801D290
	cmp r0, #1
	bgt _0801D24C
	cmp r0, #0
	beq _0801D252
	b _0801D2E4
	.align 2, 0
_0801D248: .4byte 0x030013C8
_0801D24C:
	cmp r0, #2
	beq _0801D2C8
	b _0801D2E4
_0801D252:
	bl sub_08005934
	ldr r0, [r4]
	adds r0, #0xec
	ldrb r0, [r0]
	cmp r0, #0
	bne _0801D270
	ldr r0, _0801D26C @ =0x0808424C
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	b _0801D27A
	.align 2, 0
_0801D26C: .4byte 0x0808424C
_0801D270:
	ldr r0, _0801D288 @ =0x08084254
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
_0801D27A:
	bl sub_08005A2C
	ldr r0, _0801D28C @ =0x030013C8
	ldr r1, [r0]
	movs r0, #1
	strb r0, [r1, #0xe]
	b _0801D2E4
	.align 2, 0
_0801D288: .4byte 0x08084254
_0801D28C: .4byte 0x030013C8
_0801D290:
	movs r0, #0
	str r0, [sp]
	movs r0, #1
	movs r1, #3
	movs r2, #0
	movs r3, #0x1d
	bl sub_0800031C
	ldr r2, _0801D2C0 @ =0x030024E0
	ldrh r1, [r2]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, [r4]
	movs r0, #2
	strb r0, [r1, #0xe]
	ldr r0, _0801D2C4 @ =0x030056F0
	movs r1, #4
	bl m4aMPlayFadeOut
	b _0801D2E4
	.align 2, 0
_0801D2C0: .4byte 0x030024E0
_0801D2C4: .4byte 0x030056F0
_0801D2C8:
	bl sub_080003D0
	cmp r0, #0
	beq _0801D2E4
	ldr r0, [r4]
	adds r0, #0xec
	ldrb r0, [r0]
	cmp r0, #0
	bne _0801D2DE
	bl sub_080193B4
_0801D2DE:
	movs r0, #4
	bl sub_0801CE00
_0801D2E4:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0801D2EC
sub_0801D2EC: @ 0x0801D2EC
	push {r4, lr}
	bl sub_0800B17C
	bl sub_080058A4
	ldr r4, _0801D354 @ =0x030013C8
	ldr r0, [r4]
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	ldr r0, [r4]
	movs r1, #2
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	ldr r0, [r4]
	movs r1, #4
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	ldr r0, [r4]
	movs r1, #6
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	ldr r0, [r4]
	movs r1, #8
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	ldr r0, [r4]
	adds r0, #0xcc
	ldr r0, [r0]
	bl sub_08007CF8
	ldr r0, [r4]
	adds r0, #0xd4
	ldr r0, [r0]
	bl sub_08007CF8
	ldr r0, [r4]
	adds r0, #0xdc
	ldr r0, [r0]
	bl sub_08007CF8
	ldr r1, [r4]
	movs r0, #1
	strb r0, [r1, #0xc]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801D354: .4byte 0x030013C8

	thumb_func_start sub_0801D358
sub_0801D358: @ 0x0801D358
	push {r4, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _0801D378 @ =0x030013C8
	ldr r0, [r0]
	lsls r1, r4, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	strb r4, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801D378: .4byte 0x030013C8

	thumb_func_start sub_0801D37C
sub_0801D37C: @ 0x0801D37C
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r7, _0801D3D0 @ =0x030013C8
	ldr r0, [r7]
	lsls r1, r5, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	adds r6, r0, #0
	ldr r1, [r7]
	ldrb r0, [r6]
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	ldr r1, _0801D3D4 @ =0x08084308
	lsls r4, r4, #2
	adds r4, r4, r1
	ldr r1, [r4]
	bl sub_08007B84
	movs r0, #0
	strb r0, [r6, #1]
	strh r0, [r6, #2]
	cmp r5, #0
	bne _0801D3D8
	ldr r0, [r7]
	ldr r1, [r0, #0x3c]
	ldrb r0, [r1, #0x10]
	strb r0, [r6, #5]
	ldrb r0, [r1, #0x10]
	strb r0, [r6, #4]
	ldr r0, [r7]
	ldr r0, [r0, #0x3c]
	b _0801D3E8
	.align 2, 0
_0801D3D0: .4byte 0x030013C8
_0801D3D4: .4byte 0x08084308
_0801D3D8:
	ldr r0, [r7]
	ldr r1, [r0, #0x40]
	ldrb r0, [r1, #0x10]
	strb r0, [r6, #5]
	ldrb r0, [r1, #0x10]
	strb r0, [r6, #4]
	ldr r0, [r7]
	ldr r0, [r0, #0x40]
_0801D3E8:
	str r0, [r6, #8]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0801D3F0
sub_0801D3F0: @ 0x0801D3F0
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _0801D40C @ =0x030013C8
	ldr r1, [r1]
	lsls r2, r0, #3
	adds r1, r1, r2
	movs r2, #0
	strb r2, [r1, #0x14]
	movs r1, #0
	bl sub_0801D37C
	pop {r0}
	bx r0
	.align 2, 0
_0801D40C: .4byte 0x030013C8

	thumb_func_start sub_0801D410
sub_0801D410: @ 0x0801D410
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _0801D42C @ =0x030013C8
	ldr r1, [r1]
	lsls r2, r0, #3
	adds r1, r1, r2
	movs r2, #0
	strb r2, [r1, #0x14]
	movs r1, #1
	bl sub_0801D37C
	pop {r0}
	bx r0
	.align 2, 0
_0801D42C: .4byte 0x030013C8

	thumb_func_start sub_0801D430
sub_0801D430: @ 0x0801D430
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _0801D44C @ =0x030013C8
	ldr r1, [r1]
	lsls r2, r0, #3
	adds r1, r1, r2
	movs r2, #1
	strb r2, [r1, #0x14]
	movs r1, #2
	bl sub_0801D37C
	pop {r0}
	bx r0
	.align 2, 0
_0801D44C: .4byte 0x030013C8

	thumb_func_start sub_0801D450
sub_0801D450: @ 0x0801D450
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _0801D46C @ =0x030013C8
	ldr r1, [r1]
	lsls r2, r0, #3
	adds r1, r1, r2
	movs r2, #0
	strb r2, [r1, #0x14]
	movs r1, #3
	bl sub_0801D37C
	pop {r0}
	bx r0
	.align 2, 0
_0801D46C: .4byte 0x030013C8

	thumb_func_start sub_0801D470
sub_0801D470: @ 0x0801D470
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _0801D48C @ =0x030013C8
	ldr r1, [r1]
	lsls r2, r0, #3
	adds r1, r1, r2
	movs r2, #0
	strb r2, [r1, #0x14]
	movs r1, #4
	bl sub_0801D37C
	pop {r0}
	bx r0
	.align 2, 0
_0801D48C: .4byte 0x030013C8

	thumb_func_start sub_0801D490
sub_0801D490: @ 0x0801D490
	push {r4, lr}
	bl sub_08007BD4
	adds r4, r0, #0
	ldrb r2, [r4]
	cmp r2, #0
	bne _0801D4E0
	ldr r0, _0801D4D0 @ =0x030013C8
	ldr r1, [r0]
	adds r0, r2, #0
	lsls r0, r0, #3
	adds r0, r1, r0
	strh r2, [r0, #0x16]
	ldrb r0, [r4]
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r0, #0x5c
	strh r0, [r1, #0x18]
	ldr r0, [r4, #8]
	ldr r3, _0801D4D4 @ =0x0808427C
	ldr r1, _0801D4D8 @ =0x03004488
	ldrb r2, [r1]
	lsls r2, r2, #2
	adds r3, r2, r3
	ldr r1, [r3]
	ldr r3, _0801D4DC @ =0x0808428C
	adds r2, r2, r3
	ldr r2, [r2]
	movs r3, #0
	bl sub_08009ACC
	b _0801D504
	.align 2, 0
_0801D4D0: .4byte 0x030013C8
_0801D4D4: .4byte 0x0808427C
_0801D4D8: .4byte 0x03004488
_0801D4DC: .4byte 0x0808428C
_0801D4E0:
	ldr r0, _0801D530 @ =0x030013C8
	ldr r2, [r0]
	ldrb r0, [r4]
	lsls r0, r0, #3
	adds r0, r2, r0
	movs r1, #0
	strh r1, [r0, #0x16]
	ldrb r0, [r4]
	lsls r0, r0, #3
	adds r2, r2, r0
	movs r0, #0x36
	strh r0, [r2, #0x18]
	ldr r0, [r4, #8]
	ldr r1, _0801D534 @ =0x080CF80C
	ldr r2, _0801D538 @ =0x080CF7E4
	movs r3, #0
	bl sub_08009ACC
_0801D504:
	ldr r0, [r4, #8]
	ldr r1, _0801D530 @ =0x030013C8
	ldr r2, [r1]
	ldrb r1, [r4]
	lsls r1, r1, #3
	adds r2, #0xd0
	adds r2, r2, r1
	ldr r1, [r2]
	movs r2, #0
	bl sub_08009BBC
	ldr r0, [r4, #8]
	movs r1, #0xff
	bl sub_08009B40
	ldrb r0, [r4]
	bl sub_0801D410
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801D530: .4byte 0x030013C8
_0801D534: .4byte 0x080CF80C
_0801D538: .4byte 0x080CF7E4

	thumb_func_start sub_0801D53C
sub_0801D53C: @ 0x0801D53C
	bx lr
	.align 2, 0

	thumb_func_start sub_0801D540
sub_0801D540: @ 0x0801D540
	push {r4, r5, lr}
	bl sub_08007BD4
	adds r4, r0, #0
	ldrb r2, [r4, #1]
	cmp r2, #1
	beq _0801D5BC
	cmp r2, #1
	bgt _0801D558
	cmp r2, #0
	beq _0801D55E
	b _0801D61E
_0801D558:
	cmp r2, #2
	beq _0801D5FC
	b _0801D61E
_0801D55E:
	ldrb r0, [r4]
	cmp r0, #0
	bne _0801D580
	ldr r0, _0801D57C @ =0x030013C8
	ldr r1, [r0]
	ldrb r0, [r4]
	lsls r0, r0, #3
	adds r0, r1, r0
	strh r2, [r0, #0x16]
	ldrb r0, [r4]
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r0, #0x5c
	b _0801D594
	.align 2, 0
_0801D57C: .4byte 0x030013C8
_0801D580:
	ldr r0, _0801D5B4 @ =0x030013C8
	ldr r1, [r0]
	ldrb r0, [r4]
	lsls r0, r0, #3
	adds r0, r1, r0
	strh r2, [r0, #0x16]
	ldrb r0, [r4]
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r0, #0x36
_0801D594:
	strh r0, [r1, #0x18]
	ldr r0, [r4, #8]
	ldr r2, _0801D5B8 @ =0x0808429E
	ldrb r1, [r4]
	adds r1, r1, r2
	ldrb r1, [r1]
	bl sub_08009AFC
	ldrb r0, [r4]
	movs r1, #1
	bl sub_0801E16C
	movs r0, #1
	strb r0, [r4, #1]
	b _0801D61E
	.align 2, 0
_0801D5B4: .4byte 0x030013C8
_0801D5B8: .4byte 0x0808429E
_0801D5BC:
	ldr r3, _0801D5F8 @ =0x030013C8
	ldr r0, [r3]
	ldrb r1, [r4]
	lsls r1, r1, #3
	adds r0, r0, r1
	movs r5, #0x16
	ldrsh r2, [r0, r5]
	adds r2, #1
	cmp r2, #0x30
	ble _0801D5D6
	movs r2, #0x30
	movs r0, #2
	strb r0, [r4, #1]
_0801D5D6:
	ldr r0, [r3]
	adds r0, r0, r1
	strh r2, [r0, #0x16]
	ldr r0, [r4, #8]
	ldrb r0, [r0, #1]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _0801D61E
	ldrb r0, [r4, #1]
	cmp r0, #2
	beq _0801D61E
	ldrb r0, [r4]
	movs r1, #1
	bl sub_0801E16C
	b _0801D61E
	.align 2, 0
_0801D5F8: .4byte 0x030013C8
_0801D5FC:
	ldr r0, _0801D624 @ =0x030013C8
	ldr r1, [r0]
	ldrb r0, [r4]
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r0, #0x30
	strh r0, [r1, #0x16]
	ldr r0, [r4, #8]
	ldr r2, _0801D628 @ =0x0808429C
	ldrb r1, [r4]
	adds r1, r1, r2
	ldrb r1, [r1]
	bl sub_08009AFC
	ldrb r0, [r4]
	bl sub_0801D410
_0801D61E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801D624: .4byte 0x030013C8
_0801D628: .4byte 0x0808429C

	thumb_func_start sub_0801D62C
sub_0801D62C: @ 0x0801D62C
	push {r4, lr}
	bl sub_08007BD4
	adds r4, r0, #0
	ldr r0, _0801D674 @ =0x030013C8
	ldr r3, [r0]
	ldrb r0, [r4]
	lsls r2, r0, #3
	adds r2, r3, r2
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r0, r3, #0
	adds r0, #0x28
	adds r0, r0, r1
	ldr r0, [r0]
	lsrs r0, r0, #8
	adds r0, #0x30
	strh r0, [r2, #0x16]
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r3, r3, r0
	adds r3, #0x2d
	ldrb r0, [r3]
	cmp r0, #0
	beq _0801D67C
	ldr r0, _0801D678 @ =0x080842C8
	lsls r1, r1, #5
	subs r1, #1
	ldrb r3, [r3]
	adds r1, r1, r3
	adds r1, r1, r0
	ldrb r0, [r1]
	b _0801D682
	.align 2, 0
_0801D674: .4byte 0x030013C8
_0801D678: .4byte 0x080842C8
_0801D67C:
	ldr r0, _0801D6C8 @ =0x0808429C
	adds r0, r1, r0
	ldrb r0, [r0]
_0801D682:
	strb r0, [r4, #5]
	ldr r1, [r4, #8]
	ldrb r0, [r1, #1]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _0801D726
	ldrb r0, [r4]
	cmp r0, #0
	bne _0801D6A0
	ldrb r0, [r1, #0x10]
	cmp r0, #0
	beq _0801D6A0
	ldr r0, _0801D6CC @ =0x0000013D
	bl m4aSongNumStart
_0801D6A0:
	ldr r0, _0801D6C8 @ =0x0808429C
	ldrb r2, [r4]
	adds r0, r2, r0
	ldrb r3, [r4, #5]
	adds r1, r3, #0
	ldrb r0, [r0]
	cmp r1, r0
	beq _0801D6D4
	ldr r0, _0801D6D0 @ =0x0808429E
	adds r0, r2, r0
	ldrb r1, [r0]
	subs r1, #1
	subs r1, r3, r1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r2, #0
	bl sub_0801E16C
	b _0801D6E2
	.align 2, 0
_0801D6C8: .4byte 0x0808429C
_0801D6CC: .4byte 0x0000013D
_0801D6D0: .4byte 0x0808429E
_0801D6D4:
	ldrb r0, [r4, #4]
	cmp r0, r1
	beq _0801D6E2
	adds r0, r2, #0
	movs r1, #0
	bl sub_0801E16C
_0801D6E2:
	ldr r2, [r4, #8]
	ldrb r0, [r2, #1]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _0801D726
	ldrb r0, [r4, #5]
	ldrb r1, [r4, #4]
	cmp r0, r1
	beq _0801D726
	strb r0, [r4, #4]
	ldrb r1, [r4, #4]
	adds r0, r2, #0
	bl sub_08009AFC
	ldr r0, _0801D72C @ =0x0808429C
	ldrb r2, [r4]
	adds r0, r2, r0
	ldrb r1, [r4, #4]
	ldrb r0, [r0]
	cmp r1, r0
	bne _0801D726
	ldr r0, _0801D730 @ =0x030013C8
	ldr r1, [r0]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r1, r1, r0
	adds r1, #0x2c
	ldrb r0, [r1]
	cmp r0, #0
	beq _0801D726
	adds r0, r2, #0
	bl sub_0801D470
_0801D726:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801D72C: .4byte 0x0808429C
_0801D730: .4byte 0x030013C8

	thumb_func_start sub_0801D734
sub_0801D734: @ 0x0801D734
	push {r4, r5, lr}
	bl sub_08007BD4
	adds r5, r0, #0
	ldrb r0, [r5, #1]
	cmp r0, #1
	beq _0801D762
	cmp r0, #1
	bgt _0801D74C
	cmp r0, #0
	beq _0801D756
	b _0801D848
_0801D74C:
	cmp r0, #2
	beq _0801D80E
	cmp r0, #3
	beq _0801D81E
	b _0801D848
_0801D756:
	movs r0, #0x1e
	bl sub_08007AC0
	movs r0, #1
	strb r0, [r5, #1]
	b _0801D848
_0801D762:
	ldrb r1, [r5]
	cmp r1, #0
	bne _0801D7DC
	ldr r0, [r5, #8]
	ldr r4, _0801D7A4 @ =0x030013C8
	ldr r2, [r4]
	lsls r1, r1, #3
	adds r2, #0xe0
	adds r2, r2, r1
	ldr r1, [r2]
	movs r2, #0
	bl sub_08009BE4
	ldr r0, [r4]
	adds r0, #0xec
	ldrb r0, [r0]
	ldrb r1, [r5]
	cmp r0, r1
	bne _0801D7B4
	ldr r0, [r5, #8]
	ldr r3, _0801D7A8 @ =0x08085A40
	ldr r1, _0801D7AC @ =0x03004488
	ldrb r2, [r1]
	lsls r2, r2, #2
	adds r3, r2, r3
	ldr r1, [r3]
	ldr r3, _0801D7B0 @ =0x08085A60
	adds r2, r2, r3
	ldr r2, [r2]
	movs r3, #0
	bl sub_08009ACC
	b _0801D800
	.align 2, 0
_0801D7A4: .4byte 0x030013C8
_0801D7A8: .4byte 0x08085A40
_0801D7AC: .4byte 0x03004488
_0801D7B0: .4byte 0x08085A60
_0801D7B4:
	ldr r0, [r5, #8]
	ldr r3, _0801D7D0 @ =0x08085A40
	ldr r1, _0801D7D4 @ =0x03004488
	ldrb r2, [r1]
	lsls r2, r2, #2
	adds r3, r2, r3
	ldr r1, [r3]
	ldr r3, _0801D7D8 @ =0x08085A60
	adds r2, r2, r3
	ldr r2, [r2]
	movs r3, #1
	bl sub_08009ACC
	b _0801D800
	.align 2, 0
_0801D7D0: .4byte 0x08085A40
_0801D7D4: .4byte 0x03004488
_0801D7D8: .4byte 0x08085A60
_0801D7DC:
	ldr r0, _0801D7F4 @ =0x030013C8
	ldr r0, [r0]
	adds r0, #0xec
	ldrb r0, [r0]
	cmp r0, r1
	bne _0801D7F8
	ldr r0, [r5, #8]
	movs r1, #4
	bl sub_08009AFC
	b _0801D800
	.align 2, 0
_0801D7F4: .4byte 0x030013C8
_0801D7F8:
	ldr r0, [r5, #8]
	movs r1, #5
	bl sub_08009AFC
_0801D800:
	ldr r0, [r5, #8]
	movs r1, #0
	bl sub_08009B40
	movs r0, #2
	strb r0, [r5, #1]
	b _0801D848
_0801D80E:
	ldr r0, [r5, #8]
	ldrb r0, [r0, #1]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _0801D848
	movs r0, #3
	strb r0, [r5, #1]
	b _0801D848
_0801D81E:
	ldrb r0, [r5]
	cmp r0, #0
	bne _0801D834
	ldr r0, _0801D830 @ =0x030013C8
	ldr r1, [r0]
	adds r1, #0xed
	ldrb r0, [r1]
	movs r2, #1
	b _0801D83E
	.align 2, 0
_0801D830: .4byte 0x030013C8
_0801D834:
	ldr r0, _0801D850 @ =0x030013C8
	ldr r1, [r0]
	adds r1, #0xed
	ldrb r0, [r1]
	movs r2, #2
_0801D83E:
	orrs r0, r2
	strb r0, [r1]
	ldrb r0, [r5]
	bl sub_0801D410
_0801D848:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801D850: .4byte 0x030013C8

	thumb_func_start sub_0801D854
sub_0801D854: @ 0x0801D854
	push {lr}
	ldr r0, _0801D86C @ =0x030013C8
	ldr r0, [r0]
	movs r1, #4
	ldrsh r0, [r0, r1]
	ldr r1, _0801D870 @ =0x0808431C
	ldr r1, [r1]
	bl sub_08007B84
	pop {r0}
	bx r0
	.align 2, 0
_0801D86C: .4byte 0x030013C8
_0801D870: .4byte 0x0808431C

	thumb_func_start sub_0801D874
sub_0801D874: @ 0x0801D874
	push {lr}
	ldr r0, _0801D88C @ =0x030013C8
	ldr r0, [r0]
	movs r1, #4
	ldrsh r0, [r0, r1]
	ldr r1, _0801D890 @ =0x0808431C
	ldr r1, [r1, #4]
	bl sub_08007B84
	pop {r0}
	bx r0
	.align 2, 0
_0801D88C: .4byte 0x030013C8
_0801D890: .4byte 0x0808431C

	thumb_func_start sub_0801D894
sub_0801D894: @ 0x0801D894
	push {r4, lr}
	bl sub_0800B2BC
	ldr r4, _0801D8B4 @ =0x030013C8
	ldr r1, [r4]
	adds r1, #0xc8
	strh r0, [r1]
	bl sub_0800B2C8
	ldr r1, [r4]
	adds r1, #0xca
	strh r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801D8B4: .4byte 0x030013C8

	thumb_func_start sub_0801D8B8
sub_0801D8B8: @ 0x0801D8B8
	push {lr}
	movs r0, #0
	movs r1, #0
	bl sub_0800B278
	ldr r0, _0801D8DC @ =0x030013C8
	ldr r0, [r0]
	movs r1, #4
	ldrsh r0, [r0, r1]
	ldr r1, _0801D8E0 @ =0x0808431C
	ldr r1, [r1, #8]
	bl sub_08007B84
	bl sub_0801D894
	pop {r0}
	bx r0
	.align 2, 0
_0801D8DC: .4byte 0x030013C8
_0801D8E0: .4byte 0x0808431C

	thumb_func_start sub_0801D8E4
sub_0801D8E4: @ 0x0801D8E4
	push {lr}
	ldr r0, _0801D900 @ =0x030013C8
	ldr r0, [r0]
	movs r1, #0x16
	ldrsh r0, [r0, r1]
	subs r0, #0x70
	movs r1, #0
	bl sub_0800B278
	bl sub_0801D894
	pop {r0}
	bx r0
	.align 2, 0
_0801D900: .4byte 0x030013C8

	thumb_func_start sub_0801D904
sub_0801D904: @ 0x0801D904
	push {lr}
	bl sub_0801D894
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0801D910
sub_0801D910: @ 0x0801D910
	push {r4, r5, r6, r7, lr}
	movs r0, #3
	movs r1, #0x80
	bl sub_080099E0
	adds r7, r0, #0
	movs r1, #1
	bl sub_08009A34
	ldr r4, _0801DACC @ =0x030013C8
	ldr r2, [r4]
	adds r0, r2, #0
	adds r0, #0xc8
	ldrh r1, [r2, #0x16]
	ldrh r0, [r0]
	subs r1, r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r2, #0
	adds r0, #0xca
	ldrh r2, [r2, #0x18]
	ldrh r0, [r0]
	subs r2, r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r7, #0
	bl sub_08009A70
	ldr r1, _0801DAD0 @ =0x06010000
	adds r0, r7, #0
	bl sub_08009A78
	ldr r0, [r4]
	adds r0, #0xd0
	ldr r1, [r0]
	adds r0, r7, #0
	movs r2, #0
	bl sub_08009BBC
	adds r0, r7, #0
	movs r1, #0
	bl sub_08009AB4
	ldr r1, _0801DAD4 @ =0x0808427C
	ldr r0, _0801DAD8 @ =0x03004488
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r1, r0, r1
	ldr r1, [r1]
	ldr r2, _0801DADC @ =0x0808428C
	adds r0, r0, r2
	ldr r2, [r0]
	adds r0, r7, #0
	movs r3, #0
	bl sub_08009ACC
	adds r0, r7, #0
	movs r1, #0xff
	bl sub_08009B40
	ldr r0, [r4]
	str r7, [r0, #0x3c]
	movs r0, #3
	movs r1, #0x81
	bl sub_080099E0
	adds r7, r0, #0
	movs r1, #1
	bl sub_08009A34
	ldr r2, [r4]
	adds r0, r2, #0
	adds r0, #0xc8
	ldrh r1, [r2, #0x16]
	ldrh r0, [r0]
	subs r1, r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r2, #0
	adds r0, #0xca
	ldrh r2, [r2, #0x18]
	ldrh r0, [r0]
	subs r2, r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r7, #0
	bl sub_08009A70
	ldr r0, [r4]
	adds r0, #0xc0
	ldr r1, [r0]
	adds r0, r7, #0
	bl sub_08009A78
	adds r0, r7, #0
	movs r1, #2
	bl sub_08009AB4
	ldr r5, _0801DAE0 @ =0x080CAD0C
	ldr r6, _0801DAE4 @ =0x080CACE0
	adds r0, r7, #0
	adds r1, r5, #0
	adds r2, r6, #0
	movs r3, #1
	bl sub_08009ACC
	adds r0, r7, #0
	movs r1, #0xff
	bl sub_08009B40
	ldr r0, [r4]
	str r7, [r0, #0x54]
	movs r0, #3
	movs r1, #0xc0
	bl sub_080099E0
	adds r7, r0, #0
	movs r1, #1
	bl sub_08009A34
	ldr r2, [r4]
	adds r0, r2, #0
	adds r0, #0xc8
	ldrh r1, [r2, #0x1e]
	ldrh r0, [r0]
	subs r1, r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r2, #0
	adds r0, #0xca
	ldrh r2, [r2, #0x20]
	ldrh r0, [r0]
	subs r2, r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r7, #0
	bl sub_08009A70
	ldr r1, _0801DAE8 @ =0x06010400
	adds r0, r7, #0
	bl sub_08009A78
	ldr r0, [r4]
	adds r0, #0xd8
	ldr r1, [r0]
	adds r0, r7, #0
	movs r2, #0
	bl sub_08009BBC
	adds r0, r7, #0
	movs r1, #1
	bl sub_08009AB4
	ldr r1, _0801DAEC @ =0x080CF80C
	ldr r2, _0801DAF0 @ =0x080CF7E4
	adds r0, r7, #0
	movs r3, #0
	bl sub_08009ACC
	adds r0, r7, #0
	movs r1, #0xff
	bl sub_08009B40
	ldr r0, [r4]
	str r7, [r0, #0x40]
	movs r0, #3
	movs r1, #0xc1
	bl sub_080099E0
	adds r7, r0, #0
	movs r1, #1
	bl sub_08009A34
	ldr r2, [r4]
	adds r0, r2, #0
	adds r0, #0xc8
	ldrh r1, [r2, #0x1e]
	ldrh r0, [r0]
	subs r1, r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r2, #0
	adds r0, #0xca
	ldrh r2, [r2, #0x20]
	ldrh r0, [r0]
	subs r2, r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r7, #0
	bl sub_08009A70
	ldr r0, [r4]
	adds r0, #0xc0
	ldr r1, [r0]
	adds r0, r7, #0
	bl sub_08009A78
	adds r0, r7, #0
	movs r1, #2
	bl sub_08009AB4
	adds r0, r7, #0
	adds r1, r5, #0
	adds r2, r6, #0
	movs r3, #1
	bl sub_08009ACC
	adds r0, r7, #0
	movs r1, #0xff
	bl sub_08009B40
	ldr r0, [r4]
	str r7, [r0, #0x58]
	movs r1, #6
	ldrsh r0, [r0, r1]
	ldr r1, _0801DAF4 @ =0x08084330
	ldr r1, [r1, #4]
	bl sub_08007B84
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801DACC: .4byte 0x030013C8
_0801DAD0: .4byte 0x06010000
_0801DAD4: .4byte 0x0808427C
_0801DAD8: .4byte 0x03004488
_0801DADC: .4byte 0x0808428C
_0801DAE0: .4byte 0x080CAD0C
_0801DAE4: .4byte 0x080CACE0
_0801DAE8: .4byte 0x06010400
_0801DAEC: .4byte 0x080CF80C
_0801DAF0: .4byte 0x080CF7E4
_0801DAF4: .4byte 0x08084330

	thumb_func_start sub_0801DAF8
sub_0801DAF8: @ 0x0801DAF8
	push {r4, r5, r6, r7, lr}
	ldr r4, _0801DBAC @ =0x030013C8
	ldr r3, [r4]
	ldr r0, [r3, #0x3c]
	ldr r6, _0801DBB0 @ =0x08084328
	ldr r5, _0801DBB4 @ =0x03004488
	ldrb r1, [r5]
	lsls r1, r1, #1
	adds r1, r1, r6
	ldrh r1, [r1]
	ldrh r2, [r3, #0x16]
	adds r1, r1, r2
	adds r2, r3, #0
	adds r2, #0xc8
	ldrh r2, [r2]
	subs r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r7, #0xca
	ldrh r2, [r3, #0x18]
	ldrh r3, [r7, r3]
	subs r2, r2, r3
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl sub_08009A70
	ldr r3, [r4]
	ldr r0, [r3, #0x54]
	ldrb r1, [r5]
	lsls r1, r1, #1
	adds r1, r1, r6
	ldrh r1, [r1]
	ldrh r2, [r3, #0x16]
	adds r1, r1, r2
	adds r2, r3, #0
	adds r2, #0xc8
	ldrh r2, [r2]
	subs r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r5, r3, #0
	adds r5, #0xca
	ldrh r2, [r3, #0x18]
	ldrh r3, [r5]
	subs r2, r2, r3
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl sub_08009A70
	ldr r3, [r4]
	ldr r0, [r3, #0x40]
	adds r1, r3, #0
	adds r1, #0xc8
	ldrh r2, [r1]
	adds r2, #0xd
	ldrh r1, [r3, #0x1e]
	subs r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r5, r3, #0
	adds r5, #0xca
	ldrh r2, [r3, #0x20]
	ldrh r3, [r5]
	subs r2, r2, r3
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl sub_08009A70
	ldr r3, [r4]
	ldr r0, [r3, #0x58]
	adds r1, r3, #0
	adds r1, #0xc8
	ldrh r2, [r1]
	adds r2, #0xd
	ldrh r1, [r3, #0x1e]
	subs r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r5, r3, #0
	adds r5, #0xca
	ldrh r2, [r3, #0x20]
	ldrh r3, [r5]
	subs r2, r2, r3
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl sub_08009A70
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801DBAC: .4byte 0x030013C8
_0801DBB0: .4byte 0x08084328
_0801DBB4: .4byte 0x03004488

	thumb_func_start sub_0801DBB8
sub_0801DBB8: @ 0x0801DBB8
	push {r4, lr}
	ldr r4, _0801DBE4 @ =0x030013C8
	ldr r0, [r4]
	ldr r0, [r0, #0x3c]
	bl sub_08009A00
	ldr r0, [r4]
	ldr r0, [r0, #0x40]
	bl sub_08009A00
	ldr r0, [r4]
	ldr r0, [r0, #0x54]
	bl sub_08009A00
	ldr r0, [r4]
	ldr r0, [r0, #0x58]
	bl sub_08009A00
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801DBE4: .4byte 0x030013C8

	thumb_func_start sub_0801DBE8
sub_0801DBE8: @ 0x0801DBE8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x14
	movs r0, #3
	movs r1, #0xf0
	bl sub_080099E0
	adds r7, r0, #0
	movs r1, #1
	bl sub_08009A34
	ldr r5, _0801DE64 @ =0x030013C8
	ldr r2, [r5]
	adds r0, r2, #0
	adds r0, #0xc8
	ldrh r0, [r0]
	movs r1, #0x30
	subs r1, r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r2, #0xca
	ldrh r2, [r2]
	movs r0, #0x20
	mov sb, r0
	mov r3, sb
	subs r2, r3, r2
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r7, #0
	bl sub_08009A70
	ldr r0, [r5]
	adds r0, #0xbc
	ldr r1, [r0]
	adds r0, r7, #0
	bl sub_08009A78
	adds r0, r7, #0
	movs r1, #3
	bl sub_08009AB4
	ldr r6, _0801DE68 @ =0x080BE3A4
	ldr r0, _0801DE6C @ =0x080BE390
	mov r8, r0
	adds r0, r7, #0
	adds r1, r6, #0
	mov r2, r8
	movs r3, #0
	bl sub_08009ACC
	ldr r0, [r5]
	str r7, [r0, #0x44]
	movs r0, #3
	movs r1, #0xf0
	bl sub_080099E0
	adds r7, r0, #0
	movs r1, #1
	bl sub_08009A34
	ldr r2, [r5]
	adds r0, r2, #0
	adds r0, #0xc8
	ldrh r0, [r0]
	movs r3, #0xc6
	lsls r3, r3, #3
	adds r1, r3, #0
	subs r1, r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r2, #0xca
	ldrh r2, [r2]
	mov r0, sb
	subs r2, r0, r2
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r7, #0
	bl sub_08009A70
	ldr r0, [r5]
	adds r0, #0xbc
	ldr r1, [r0]
	adds r0, r7, #0
	bl sub_08009A78
	adds r0, r7, #0
	movs r1, #3
	bl sub_08009AB4
	adds r0, r7, #0
	adds r1, r6, #0
	mov r2, r8
	movs r3, #0
	bl sub_08009ACC
	ldr r0, [r5]
	str r7, [r0, #0x48]
	movs r0, #3
	movs r1, #0xf0
	bl sub_080099E0
	adds r7, r0, #0
	movs r1, #1
	bl sub_08009A34
	ldr r2, [r5]
	adds r0, r2, #0
	adds r0, #0xc8
	ldrh r0, [r0]
	ldr r3, _0801DE70 @ =0x00000504
	adds r1, r3, #0
	subs r1, r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r2, #0xca
	ldrh r0, [r2]
	mov r2, sb
	subs r0, r2, r0
	lsls r3, r0, #0x10
	asrs r0, r3, #0x10
	str r0, [sp, #4]
	adds r0, r7, #0
	ldr r2, [sp, #4]
	bl sub_08009A70
	ldr r0, [r5]
	adds r0, #0xbc
	ldr r1, [r0]
	adds r0, r7, #0
	bl sub_08009A78
	adds r0, r7, #0
	movs r1, #3
	bl sub_08009AB4
	adds r0, r7, #0
	adds r1, r6, #0
	mov r2, r8
	movs r3, #3
	bl sub_08009ACC
	ldr r0, [r5]
	str r7, [r0, #0x50]
	movs r6, #0
	adds r4, r5, #0
	ldr r5, _0801DE74 @ =0x08084338
_0801DD10:
	movs r0, #3
	movs r1, #0xf0
	bl sub_080099E0
	adds r7, r0, #0
	movs r1, #1
	bl sub_08009A34
	lsls r1, r6, #2
	str r1, [sp, #0xc]
	ldr r3, [r4]
	adds r0, r3, #0
	adds r0, #0xc8
	ldrh r1, [r5]
	ldrh r0, [r0]
	subs r1, r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r3, #0xca
	ldrh r2, [r5, #2]
	ldrh r0, [r3]
	subs r2, r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r7, #0
	bl sub_08009A70
	ldr r0, [r4]
	adds r0, #0xbc
	ldr r1, [r0]
	adds r0, r7, #0
	bl sub_08009A78
	adds r0, r7, #0
	movs r1, #3
	bl sub_08009AB4
	adds r0, r7, #0
	ldr r1, _0801DE68 @ =0x080BE3A4
	ldr r2, _0801DE6C @ =0x080BE390
	movs r3, #1
	bl sub_08009ACC
	ldr r0, [r4]
	adds r0, #0x60
	ldr r2, [sp, #0xc]
	adds r0, r0, r2
	str r7, [r0]
	adds r5, #4
	adds r6, #1
	cmp r6, #7
	ble _0801DD10
	movs r6, #0
	ldr r3, _0801DE64 @ =0x030013C8
	mov r8, r3
	ldr r5, _0801DE78 @ =0x08084358
_0801DD80:
	movs r0, #3
	movs r1, #0xf0
	bl sub_080099E0
	adds r7, r0, #0
	movs r1, #1
	bl sub_08009A34
	lsls r0, r6, #2
	str r0, [sp, #0x10]
	mov r1, r8
	ldr r3, [r1]
	adds r0, r3, #0
	adds r0, #0xc8
	ldrh r1, [r5]
	ldrh r0, [r0]
	subs r1, r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r3, #0xca
	ldrh r2, [r5, #2]
	ldrh r0, [r3]
	subs r2, r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r7, #0
	bl sub_08009A70
	mov r2, r8
	ldr r0, [r2]
	adds r0, #0xbc
	ldr r1, [r0]
	adds r0, r7, #0
	bl sub_08009A78
	adds r0, r7, #0
	movs r1, #3
	bl sub_08009AB4
	adds r0, r7, #0
	ldr r1, _0801DE68 @ =0x080BE3A4
	ldr r2, _0801DE6C @ =0x080BE390
	movs r3, #2
	bl sub_08009ACC
	mov r3, r8
	ldr r0, [r3]
	adds r0, #0x80
	ldr r1, [sp, #0x10]
	adds r0, r0, r1
	str r7, [r0]
	adds r5, #4
	adds r6, #1
	cmp r6, #0xd
	ble _0801DD80
	movs r0, #2
	movs r1, #0
	bl sub_080099E0
	adds r7, r0, #0
	movs r1, #0
	bl sub_08009A34
	adds r0, r7, #0
	movs r1, #0xa0
	movs r2, #0x64
	bl sub_08009A70
	ldr r5, _0801DE64 @ =0x030013C8
	ldr r0, [r5]
	adds r0, #0xc4
	ldr r1, [r0]
	adds r0, r7, #0
	bl sub_08009A78
	adds r0, r7, #0
	movs r1, #4
	bl sub_08009AB4
	ldr r1, _0801DE7C @ =0x080B8664
	ldr r0, _0801DE80 @ =0x03004400
	ldrb r0, [r0, #0x14]
	lsls r0, r0, #2
	adds r1, r0, r1
	ldr r1, [r1]
	ldr r2, _0801DE84 @ =0x080B8660
	adds r0, r0, r2
	ldr r0, [r0]
	ldr r2, [r0, #0x10]
	adds r0, r7, #0
	movs r3, #0xb
	bl sub_08009ACC
	adds r0, r7, #0
	movs r1, #1
	bl sub_08009B84
	ldr r1, [r5]
	adds r0, r1, #0
	adds r0, #0xb8
	str r7, [r0]
	movs r2, #8
	ldrsh r0, [r1, r2]
	ldr r1, _0801DE88 @ =sub_0801DE8C
	bl sub_08007B84
	add sp, #0x14
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801DE64: .4byte 0x030013C8
_0801DE68: .4byte 0x080BE3A4
_0801DE6C: .4byte 0x080BE390
_0801DE70: .4byte 0x00000504
_0801DE74: .4byte 0x08084338
_0801DE78: .4byte 0x08084358
_0801DE7C: .4byte 0x080B8664
_0801DE80: .4byte 0x03004400
_0801DE84: .4byte 0x080B8660
_0801DE88: .4byte sub_0801DE8C

	thumb_func_start sub_0801DE8C
sub_0801DE8C: @ 0x0801DE8C
	push {r4, r5, r6, lr}
	ldr r5, _0801DF70 @ =0x030013C8
	ldr r2, [r5]
	ldr r0, [r2, #0x44]
	adds r1, r2, #0
	adds r1, #0xc8
	ldrh r3, [r1]
	movs r1, #0x30
	subs r1, r1, r3
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r2, #0xca
	ldrh r2, [r2]
	movs r4, #0x20
	subs r2, r4, r2
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl sub_08009A70
	ldr r2, [r5]
	ldr r0, [r2, #0x48]
	adds r1, r2, #0
	adds r1, #0xc8
	ldrh r3, [r1]
	movs r6, #0xc6
	lsls r6, r6, #3
	adds r1, r6, #0
	subs r1, r1, r3
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r2, #0xca
	ldrh r2, [r2]
	subs r2, r4, r2
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl sub_08009A70
	ldr r2, [r5]
	ldr r0, [r2, #0x50]
	adds r1, r2, #0
	adds r1, #0xc8
	ldrh r3, [r1]
	ldr r5, _0801DF74 @ =0x00000504
	adds r1, r5, #0
	subs r1, r1, r3
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r2, #0xca
	ldrh r2, [r2]
	subs r4, r4, r2
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r2, r4, #0
	bl sub_08009A70
	movs r4, #0
	ldr r5, _0801DF78 @ =0x08084338
_0801DEFE:
	ldr r0, _0801DF70 @ =0x030013C8
	ldr r3, [r0]
	lsls r1, r4, #2
	adds r0, r3, #0
	adds r0, #0x60
	adds r0, r0, r1
	ldr r0, [r0]
	adds r2, r3, #0
	adds r2, #0xc8
	ldrh r1, [r5]
	ldrh r2, [r2]
	subs r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r3, #0xca
	ldrh r2, [r5, #2]
	ldrh r3, [r3]
	subs r2, r2, r3
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl sub_08009A70
	adds r5, #4
	adds r4, #1
	cmp r4, #7
	ble _0801DEFE
	movs r4, #0
	ldr r5, _0801DF7C @ =0x08084358
_0801DF36:
	ldr r0, _0801DF70 @ =0x030013C8
	ldr r3, [r0]
	lsls r1, r4, #2
	adds r0, r3, #0
	adds r0, #0x80
	adds r0, r0, r1
	ldr r0, [r0]
	adds r2, r3, #0
	adds r2, #0xc8
	ldrh r1, [r5]
	ldrh r2, [r2]
	subs r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r3, #0xca
	ldrh r2, [r5, #2]
	ldrh r3, [r3]
	subs r2, r2, r3
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl sub_08009A70
	adds r5, #4
	adds r4, #1
	cmp r4, #0xd
	ble _0801DF36
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801DF70: .4byte 0x030013C8
_0801DF74: .4byte 0x00000504
_0801DF78: .4byte 0x08084338
_0801DF7C: .4byte 0x08084358

	thumb_func_start sub_0801DF80
sub_0801DF80: @ 0x0801DF80
	push {r4, r5, lr}
	ldr r4, _0801DFE8 @ =0x030013C8
	ldr r0, [r4]
	ldr r0, [r0, #0x44]
	bl sub_08009A00
	ldr r0, [r4]
	ldr r0, [r0, #0x48]
	bl sub_08009A00
	ldr r0, [r4]
	ldr r0, [r0, #0x50]
	bl sub_08009A00
	movs r5, #0
_0801DF9E:
	ldr r0, [r4]
	lsls r1, r5, #2
	adds r0, #0x60
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_08009A00
	adds r5, #1
	cmp r5, #7
	ble _0801DF9E
	movs r5, #0
	ldr r4, _0801DFE8 @ =0x030013C8
_0801DFB6:
	ldr r0, [r4]
	lsls r1, r5, #2
	adds r0, #0x80
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_08009A00
	adds r5, #1
	cmp r5, #0xd
	ble _0801DFB6
	ldr r4, _0801DFE8 @ =0x030013C8
	ldr r0, [r4]
	adds r0, #0xb8
	ldr r0, [r0]
	bl sub_08009A00
	ldr r0, [r4]
	movs r1, #0xa
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801DFE8: .4byte 0x030013C8

	thumb_func_start sub_0801DFEC
sub_0801DFEC: @ 0x0801DFEC
	push {r4, lr}
	sub sp, #4
	ldr r4, _0801E020 @ =0x030013C8
	ldr r0, [r4]
	adds r0, #0xb8
	ldr r0, [r0]
	movs r1, #1
	bl sub_08009A34
	ldr r0, [r4]
	adds r0, #0xb8
	ldr r0, [r0]
	movs r1, #0x44
	str r1, [sp]
	movs r1, #0xb
	movs r2, #0xa0
	movs r3, #0x64
	bl sub_08029D88
	ldr r1, [r4]
	strh r0, [r1, #0xa]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801E020: .4byte 0x030013C8

	thumb_func_start sub_0801E024
sub_0801E024: @ 0x0801E024
	push {r4, r5, lr}
	movs r4, #0
	ldr r5, _0801E048 @ =0x030013C8
_0801E02A:
	ldr r0, [r5]
	lsls r1, r4, #2
	adds r0, #0xb8
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0
	bl sub_08009A34
	adds r4, #1
	cmp r4, #0
	ble _0801E02A
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801E048: .4byte 0x030013C8

	thumb_func_start sub_0801E04C
sub_0801E04C: @ 0x0801E04C
	push {r4, r5, r6, lr}
	bl sub_08007BD4
	adds r5, r0, #0
	ldr r6, [r5, #8]
	ldrb r0, [r5]
	cmp r0, #1
	beq _0801E124
	cmp r0, #1
	ble _0801E062
	b _0801E15C
_0801E062:
	cmp r0, #0
	bne _0801E15C
	ldrb r1, [r5, #0xc]
	movs r0, #3
	bl sub_080099E0
	adds r6, r0, #0
	str r6, [r5, #8]
	cmp r6, #0
	beq _0801E150
	ldr r0, _0801E0A4 @ =0x030013C8
	ldr r1, [r0]
	ldrb r0, [r5, #1]
	lsls r0, r0, #3
	adds r0, r1, r0
	ldrh r2, [r0, #0x16]
	strh r2, [r5, #2]
	ldrb r0, [r5, #1]
	lsls r0, r0, #3
	adds r1, r1, r0
	ldrh r1, [r1, #0x18]
	strh r1, [r5, #4]
	ldrb r0, [r5, #1]
	cmp r0, #0
	bne _0801E0B0
	ldr r1, _0801E0A8 @ =0x08084328
	ldr r0, _0801E0AC @ =0x03004488
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r0, r2, r0
	b _0801E0BA
	.align 2, 0
_0801E0A4: .4byte 0x030013C8
_0801E0A8: .4byte 0x08084328
_0801E0AC: .4byte 0x03004488
_0801E0B0:
	adds r0, r1, #0
	subs r0, #0x10
	strh r0, [r5, #4]
	adds r0, r2, #0
	subs r0, #0x19
_0801E0BA:
	strh r0, [r5, #2]
	adds r0, r6, #0
	movs r1, #1
	bl sub_08009A34
	ldr r4, _0801E118 @ =0x030013C8
	ldr r3, [r4]
	adds r0, r3, #0
	adds r0, #0xc8
	ldrh r1, [r5, #2]
	ldrh r0, [r0]
	subs r1, r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r3, #0xca
	ldrh r2, [r5, #4]
	ldrh r0, [r3]
	subs r2, r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r6, #0
	bl sub_08009A70
	ldr r0, [r4]
	adds r0, #0xc0
	ldr r1, [r0]
	adds r0, r6, #0
	bl sub_08009A78
	adds r0, r6, #0
	movs r1, #2
	bl sub_08009AB4
	ldr r1, _0801E11C @ =0x080CAD0C
	ldr r2, _0801E120 @ =0x080CACE0
	adds r0, r6, #0
	movs r3, #0
	bl sub_08009ACC
	adds r0, r6, #0
	movs r1, #0
	bl sub_08009B40
	movs r0, #1
	strb r0, [r5]
	b _0801E166
	.align 2, 0
_0801E118: .4byte 0x030013C8
_0801E11C: .4byte 0x080CAD0C
_0801E120: .4byte 0x080CACE0
_0801E124:
	ldr r0, _0801E158 @ =0x030013C8
	ldr r3, [r0]
	adds r0, r3, #0
	adds r0, #0xc8
	ldrh r1, [r5, #2]
	ldrh r0, [r0]
	subs r1, r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r3, #0xca
	ldrh r2, [r5, #4]
	ldrh r0, [r3]
	subs r2, r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r6, #0
	bl sub_08009A70
	ldrb r0, [r6, #1]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _0801E166
_0801E150:
	movs r0, #3
	strb r0, [r5]
	b _0801E166
	.align 2, 0
_0801E158: .4byte 0x030013C8
_0801E15C:
	ldr r0, [r5, #8]
	bl sub_08009A00
	bl sub_08007A64
_0801E166:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_0801E16C
sub_0801E16C: @ 0x0801E16C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	ldr r0, _0801E1A0 @ =sub_0801E04C
	movs r1, #0x44
	movs r2, #0
	bl sub_08007968
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	blt _0801E230
	bl sub_08007BBC
	adds r1, r0, #0
	movs r0, #0
	strb r0, [r1]
	strb r5, [r1, #1]
	cmp r5, #0
	bne _0801E1A4
	movs r0, #0x7f
	b _0801E1A6
	.align 2, 0
_0801E1A0: .4byte sub_0801E04C
_0801E1A4:
	movs r0, #0xbf
_0801E1A6:
	strb r0, [r1, #0xc]
	cmp r6, #0
	beq _0801E230
	ldr r0, _0801E23C @ =sub_0801E04C
	mov r8, r0
	movs r1, #0x44
	movs r2, #0
	bl sub_08007968
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	cmp r4, #0
	blt _0801E230
	adds r0, r4, #0
	bl sub_08007BBC
	adds r1, r0, #0
	movs r7, #0
	strb r7, [r1]
	strb r5, [r1, #1]
	adds r0, r4, #0
	movs r1, #6
	bl sub_08007AD8
	cmp r5, #1
	beq _0801E230
	mov r0, r8
	movs r1, #0x44
	movs r2, #0
	bl sub_08007968
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	cmp r4, #0
	blt _0801E230
	adds r0, r4, #0
	bl sub_08007BBC
	adds r1, r0, #0
	strb r7, [r1]
	strb r5, [r1, #1]
	ldr r0, _0801E240 @ =0x08084390
	subs r1, r6, #1
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r6, [r1]
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08007AD8
	mov r0, r8
	movs r1, #0x44
	movs r2, #0
	bl sub_08007968
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	cmp r4, #0
	blt _0801E230
	adds r0, r4, #0
	bl sub_08007BBC
	adds r1, r0, #0
	strb r7, [r1]
	strb r5, [r1, #1]
	adds r1, r6, #6
	adds r0, r4, #0
	bl sub_08007AD8
_0801E230:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801E23C: .4byte sub_0801E04C
_0801E240: .4byte 0x08084390

	thumb_func_start sub_0801E244
sub_0801E244: @ 0x0801E244
	push {r4, lr}
	bl sub_0801CE18
	ldr r4, _0801E270 @ =0x030013C8
	ldr r0, [r4]
	adds r0, #0xed
	ldrb r1, [r0]
	movs r0, #3
	ands r0, r1
	cmp r0, #3
	bne _0801E26A
	bl sub_0801E024
	ldr r0, [r4]
	adds r0, #0xf1
	movs r1, #0
	strb r1, [r0]
	bl sub_08007A64
_0801E26A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801E270: .4byte 0x030013C8

	thumb_func_start sub_0801E274
sub_0801E274: @ 0x0801E274
	push {lr}
	ldr r0, _0801E290 @ =sub_0801E244
	movs r1, #0x40
	movs r2, #0
	bl sub_08007968
	ldr r0, _0801E294 @ =0x030013C8
	ldr r0, [r0]
	adds r0, #0xf1
	movs r1, #1
	strb r1, [r0]
	pop {r0}
	bx r0
	.align 2, 0
_0801E290: .4byte sub_0801E244
_0801E294: .4byte 0x030013C8

	thumb_func_start sub_0801E298
sub_0801E298: @ 0x0801E298
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0xc
	ldr r5, _0801E418 @ =0x030013CC
	bl sub_0801934C
	adds r1, r0, #0
	str r1, [r5]
	movs r0, #0
	movs r2, #0x80
	bl sub_08007EFC
	ldr r0, _0801E41C @ =0x0808456C
	ldr r4, [r0]
	adds r0, r4, #0
	movs r1, #0x41
	movs r2, #0
	bl sub_08007968
	ldr r1, [r5]
	movs r2, #0
	mov r8, r2
	strh r0, [r1]
	movs r0, #0
	bl sub_0801EA04
	adds r0, r4, #0
	movs r1, #0x42
	movs r2, #0
	bl sub_08007968
	ldr r1, [r5]
	strh r0, [r1, #2]
	movs r0, #1
	bl sub_0801EA04
	ldr r0, _0801E420 @ =0x08084584
	ldr r0, [r0]
	movs r1, #0x43
	movs r2, #0
	bl sub_08007968
	ldr r1, [r5]
	strh r0, [r1, #4]
	ldr r0, _0801E424 @ =0x08084598
	ldr r0, [r0]
	movs r1, #0x44
	movs r2, #0
	bl sub_08007968
	ldr r1, [r5]
	strh r0, [r1, #6]
	movs r2, #6
	ldrsh r0, [r1, r2]
	ldr r1, _0801E428 @ =sub_0801F194
	bl sub_08007BA0
	ldr r0, _0801E42C @ =sub_0801F1C4
	movs r1, #0x44
	movs r2, #0
	bl sub_08007968
	ldr r1, [r5]
	strh r0, [r1, #8]
	movs r2, #8
	ldrsh r0, [r1, r2]
	ldr r1, _0801E430 @ =sub_0801F2D4
	bl sub_08007BA0
	ldr r1, _0801E434 @ =0x080844C0
	ldr r4, _0801E438 @ =0x03004488
	ldrb r0, [r4]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _0801E43C @ =0x05000200
	bl LoadPalette_08008308
	ldr r1, _0801E440 @ =0x080844D0
	ldrb r0, [r4]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	add r1, sp, #4
	bl sub_08008380
	ldr r1, [r5]
	str r0, [r1, #0x64]
	ldr r0, [sp, #4]
	str r0, [r1, #0x68]
	ldr r0, _0801E444 @ =0x080DA698
	ldr r1, _0801E448 @ =0x05000220
	bl LoadPalette_08008308
	ldr r0, _0801E44C @ =0x080DA90C
	add r1, sp, #4
	bl sub_08008380
	ldr r1, [r5]
	str r0, [r1, #0x6c]
	ldr r0, [sp, #4]
	str r0, [r1, #0x70]
	ldr r4, _0801E450 @ =0x06010800
	ldr r0, _0801E454 @ =0x080BEEB0
	ldr r1, _0801E458 @ =0x05000240
	bl LoadPalette_08008308
	ldr r0, [r5]
	str r4, [r0, #0x58]
	ldr r0, _0801E45C @ =0x080BEF14
	adds r1, r4, #0
	bl DecompressData_08008374
	adds r4, r0, r4
	ldr r0, _0801E460 @ =0x080CADC8
	ldr r1, _0801E464 @ =0x05000260
	bl LoadPalette_08008308
	ldr r0, [r5]
	str r4, [r0, #0x54]
	ldr r0, _0801E468 @ =0x080CAFD0
	adds r1, r4, #0
	bl DecompressData_08008374
	adds r4, r4, r0
	ldr r1, _0801E46C @ =0x080B85E8
	ldr r6, _0801E470 @ =0x03004400
	ldrb r0, [r6, #0x14]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _0801E474 @ =0x05000280
	bl LoadPalette_08008308
	ldr r0, [r5]
	str r4, [r0, #0x5c]
	ldr r1, _0801E478 @ =0x080B8624
	ldrb r0, [r6, #0x14]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r0, [r0, #0x14]
	adds r1, r4, #0
	bl DecompressData_08008374
	ldr r0, _0801E47C @ =0x080843CC
	bl sub_0800B02C
	ldr r0, _0801E480 @ =0x080BE690
	movs r1, #0x42
	bl sub_08009554
	ldr r0, _0801E484 @ =0x080BE6EC
	movs r1, #0x19
	bl sub_08009554
	mov r0, r8
	str r0, [sp]
	movs r0, #1
	movs r1, #3
	movs r2, #0
	movs r3, #0x1d
	bl sub_08000268
	movs r0, #0xf0
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #3
	bl sub_08006BE8
	bl sub_08003F9C
	movs r0, #0x80
	lsls r0, r0, #1
	str r0, [sp]
	movs r0, #1
	movs r1, #0x1e
	movs r2, #5
	movs r3, #0
	bl sub_08004028
	bl sub_080057C0
	bl sub_08005AA0
	add sp, #0xc
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801E418: .4byte 0x030013CC
_0801E41C: .4byte 0x0808456C
_0801E420: .4byte 0x08084584
_0801E424: .4byte 0x08084598
_0801E428: .4byte sub_0801F194
_0801E42C: .4byte sub_0801F1C4
_0801E430: .4byte sub_0801F2D4
_0801E434: .4byte 0x080844C0
_0801E438: .4byte 0x03004488
_0801E43C: .4byte 0x05000200
_0801E440: .4byte 0x080844D0
_0801E444: .4byte 0x080DA698
_0801E448: .4byte 0x05000220
_0801E44C: .4byte 0x080DA90C
_0801E450: .4byte 0x06010800
_0801E454: .4byte 0x080BEEB0
_0801E458: .4byte 0x05000240
_0801E45C: .4byte 0x080BEF14
_0801E460: .4byte 0x080CADC8
_0801E464: .4byte 0x05000260
_0801E468: .4byte 0x080CAFD0
_0801E46C: .4byte 0x080B85E8
_0801E470: .4byte 0x03004400
_0801E474: .4byte 0x05000280
_0801E478: .4byte 0x080B8624
_0801E47C: .4byte 0x080843CC
_0801E480: .4byte 0x080BE690
_0801E484: .4byte 0x080BE6EC

	thumb_func_start sub_0801E488
sub_0801E488: @ 0x0801E488
	push {r4, lr}
	ldr r1, _0801E4A8 @ =0x0808450C
	ldr r4, _0801E4AC @ =0x030013CC
	ldr r0, [r4]
	ldrb r0, [r0, #0xd]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl call_via_r0
	ldr r0, [r4]
	ldrb r0, [r0, #0xc]
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0801E4A8: .4byte 0x0808450C
_0801E4AC: .4byte 0x030013CC

	thumb_func_start sub_0801E4B0
sub_0801E4B0: @ 0x0801E4B0
	ldr r1, _0801E4C4 @ =0x030013CC
	ldr r2, [r1]
	movs r3, #0
	strb r0, [r2, #0xd]
	ldr r0, [r1]
	strb r3, [r0, #0xe]
	ldr r0, [r1]
	strh r3, [r0, #0x10]
	bx lr
	.align 2, 0
_0801E4C4: .4byte 0x030013CC

	thumb_func_start sub_0801E4C8
sub_0801E4C8: @ 0x0801E4C8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r1, _0801E530 @ =0x030013CC
	ldr r2, [r1]
	ldr r0, [r2, #0x34]
	asrs r4, r0, #8
	ldr r0, [r2, #0x28]
	asrs r0, r0, #8
	subs r4, r4, r0
	adds r0, r4, #0
	mov r8, r1
	cmp r4, #0
	bge _0801E4E6
	rsbs r0, r4, #0
_0801E4E6:
	cmp r0, #0x78
	ble _0801E51C
	adds r1, r2, #0
	adds r1, #0x38
	ldrb r0, [r1]
	movs r3, #1
	orrs r0, r3
	strb r0, [r1]
	mov r0, r8
	ldr r1, [r0]
	adds r1, #0x38
	ldrb r0, [r1]
	movs r2, #2
	orrs r0, r2
	strb r0, [r1]
	mov r0, r8
	ldr r1, [r0]
	adds r1, #0x2c
	ldrb r0, [r1]
	orrs r0, r3
	strb r0, [r1]
	mov r0, r8
	ldr r1, [r0]
	adds r1, #0x2c
	ldrb r0, [r1]
	orrs r0, r2
	strb r0, [r1]
_0801E51C:
	movs r7, #0
	movs r6, #0
_0801E520:
	movs r5, #0
	cmp r7, #0
	bne _0801E538
	ldr r0, _0801E534 @ =0x030024B0
	ldrh r0, [r0]
	movs r5, #1
	ands r5, r0
	b _0801E5C8
	.align 2, 0
_0801E530: .4byte 0x030013CC
_0801E534: .4byte 0x030024B0
_0801E538:
	ldr r3, _0801E548 @ =0x030013CC
	ldr r2, [r3]
	ldr r1, [r2, #0x34]
	ldr r0, _0801E54C @ =0x000077FF
	cmp r1, r0
	bgt _0801E550
	movs r4, #8
	b _0801E5B4
	.align 2, 0
_0801E548: .4byte 0x030013CC
_0801E54C: .4byte 0x000077FF
_0801E550:
	adds r1, r2, #0
	adds r1, #0x75
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x78
	bls _0801E578
	ldr r0, [r3]
	adds r0, #0x75
	strb r5, [r0]
	ldr r2, [r3]
	adds r2, #0x74
	ldrb r1, [r2]
	adds r1, #1
	lsrs r0, r1, #1
	lsls r0, r0, #1
	subs r1, r1, r0
	strb r1, [r2]
_0801E578:
	ldr r0, [r3]
	adds r0, #0x74
	ldrb r0, [r0]
	cmp r0, #1
	beq _0801E59C
	cmp r0, #1
	bgt _0801E58C
	cmp r0, #0
	beq _0801E592
	b _0801E5B4
_0801E58C:
	cmp r0, #2
	beq _0801E5A4
	b _0801E5B4
_0801E592:
	ldr r4, _0801E598 @ =0x08084502
	b _0801E5A6
	.align 2, 0
_0801E598: .4byte 0x08084502
_0801E59C:
	ldr r4, _0801E5A0 @ =0x08084508
	b _0801E5A6
	.align 2, 0
_0801E5A0: .4byte 0x08084508
_0801E5A4:
	ldr r4, _0801E5F8 @ =0x08084505
_0801E5A6:
	movs r0, #3
	bl sub_0800B828
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r0, r0, r4
	ldrb r4, [r0]
_0801E5B4:
	ldr r0, _0801E5FC @ =0x03004400
	ldr r0, [r0]
	adds r1, r4, #0
	bl __umodsi3
	ldr r1, _0801E600 @ =0x030013CC
	mov r8, r1
	cmp r0, #0
	bne _0801E5C8
	movs r5, #1
_0801E5C8:
	mov r1, r8
	ldr r0, [r1]
	adds r1, r0, r6
	ldrh r4, [r1, #0x26]
	cmp r5, #0
	beq _0801E604
	adds r0, r1, #0
	adds r0, #0x2c
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	lsrs r2, r0, #0x1f
	cmp r2, #0
	bne _0801E604
	adds r4, #8
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r4, r0
	ble _0801E5EE
	adds r4, r0, #0
_0801E5EE:
	adds r0, r1, #0
	adds r0, #0x25
	strb r2, [r0]
	b _0801E64A
	.align 2, 0
_0801E5F8: .4byte 0x08084505
_0801E5FC: .4byte 0x03004400
_0801E600: .4byte 0x030013CC
_0801E604:
	mov r0, r8
	ldr r1, [r0]
	adds r1, r1, r6
	adds r1, #0x25
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	mov r1, r8
	ldr r0, [r1]
	adds r2, r0, r6
	adds r0, r2, #0
	adds r0, #0x2c
	ldrb r1, [r0]
	lsls r0, r1, #0x1f
	cmp r0, #0
	beq _0801E62C
	lsls r0, r1, #0x1e
	cmp r0, #0
	bge _0801E642
	subs r4, #0x10
_0801E62C:
	adds r0, r2, #0
	adds r0, #0x25
	ldrb r1, [r0]
	movs r0, #0x62
	muls r0, r1, r0
	movs r1, #0x96
	lsls r1, r1, #2
	bl __divsi3
	subs r4, r4, r0
	b _0801E644
_0801E642:
	movs r4, #0
_0801E644:
	cmp r4, #0
	bge _0801E64A
	movs r4, #0
_0801E64A:
	mov r1, r8
	ldr r0, [r1]
	adds r0, r0, r6
	strh r4, [r0, #0x26]
	adds r6, #0xc
	adds r7, #1
	cmp r7, #1
	bgt _0801E65C
	b _0801E520
_0801E65C:
	movs r7, #0
	ldr r6, _0801E6F4 @ =0x030013CC
	movs r5, #0
_0801E662:
	movs r4, #0
	ldr r0, [r6]
	adds r1, r0, r5
	ldrh r0, [r1, #0x26]
	cmp r0, #0
	beq _0801E672
	asrs r0, r0, #5
	adds r4, r0, #1
_0801E672:
	ldr r0, [r6]
	adds r0, r0, r5
	adds r0, #0x2c
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _0801E686
	cmp r4, #0
	bne _0801E686
	movs r4, #1
_0801E686:
	ldr r0, [r6]
	adds r0, r0, r5
	adds r0, #0x24
	strb r4, [r0]
	ldr r3, [r6]
	adds r2, r3, #0
	adds r2, #0x28
	adds r2, r2, r5
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	ldr r1, [r2]
	adds r1, r1, r0
	str r1, [r2]
	ldr r0, _0801E6F8 @ =0x000647FF
	cmp r1, r0
	bls _0801E6E0
	adds r2, r3, r5
	adds r2, #0x2c
	ldrb r0, [r2]
	movs r1, #1
	orrs r0, r1
	strb r0, [r2]
	mov r0, r8
	ldr r2, [r0]
	adds r0, r2, #0
	adds r0, #0x28
	adds r0, r0, r5
	movs r1, #0xc9
	lsls r1, r1, #0xb
	str r1, [r0]
	movs r1, #1
	eors r1, r7
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r2, r0
	adds r0, #0x2c
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _0801E6E0
	adds r0, r2, #0
	adds r0, #0x78
	strb r7, [r0]
_0801E6E0:
	adds r5, #0xc
	adds r7, #1
	cmp r7, #1
	ble _0801E662
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801E6F4: .4byte 0x030013CC
_0801E6F8: .4byte 0x000647FF

	thumb_func_start sub_0801E6FC
sub_0801E6FC: @ 0x0801E6FC
	push {r4, r5, lr}
	ldr r5, _0801E710 @ =0x030013CC
	ldr r0, [r5]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _0801E714
	cmp r0, #1
	beq _0801E754
	b _0801E76C
	.align 2, 0
_0801E710: .4byte 0x030013CC
_0801E714:
	bl sub_08008174
	ldr r4, _0801E750 @ =0x030024E0
	ldrh r1, [r4]
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r2, #0
	orrs r0, r1
	movs r2, #0x80
	lsls r2, r2, #2
	adds r1, r2, #0
	orrs r0, r1
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4]
	movs r0, #1
	bl sub_08004124
	movs r0, #0x38
	bl m4aSongNumStart
	adds r4, #0x4f
	movs r1, #1
	strb r1, [r4]
	ldr r0, [r5]
	strb r1, [r0, #0xe]
	b _0801E76C
	.align 2, 0
_0801E750: .4byte 0x030024E0
_0801E754:
	bl sub_080003D0
	cmp r0, #0
	beq _0801E76C
	ldr r2, _0801E774 @ =0x030024E0
	ldrh r1, [r2]
	ldr r0, _0801E778 @ =0x0000FDFF
	ands r0, r1
	strh r0, [r2]
	movs r0, #1
	bl sub_0801E4B0
_0801E76C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801E774: .4byte 0x030024E0
_0801E778: .4byte 0x0000FDFF

	thumb_func_start sub_0801E77C
sub_0801E77C: @ 0x0801E77C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r4, _0801E820 @ =0x030013CC
	ldr r0, [r4]
	adds r0, #0x74
	movs r1, #0
	strb r1, [r0]
	ldr r0, [r4]
	adds r0, #0x75
	strb r1, [r0]
	movs r0, #0
	bl sub_0801EAA0
	movs r0, #1
	bl sub_0801EAA0
	bl sub_0801EE64
	movs r5, #0
	movs r0, #0
	mov r8, r0
	movs r6, #0
	movs r1, #2
	rsbs r1, r1, #0
	mov ip, r1
	movs r7, #3
	rsbs r7, r7, #0
	movs r3, #0
	mov sb, r4
_0801E7BA:
	ldr r0, [r4]
	adds r0, r0, r3
	strh r6, [r0, #0x26]
	adds r0, #0x25
	mov r2, r8
	strb r2, [r0]
	ldr r1, [r4]
	adds r0, r1, #0
	adds r0, #0x28
	adds r0, r0, r3
	str r6, [r0]
	adds r1, r1, r3
	adds r1, #0x2c
	ldrb r2, [r1]
	mov r0, ip
	ands r0, r2
	strb r0, [r1]
	ldr r1, [r4]
	adds r1, r1, r3
	adds r1, #0x2c
	ldrb r2, [r1]
	adds r0, r7, #0
	ands r0, r2
	strb r0, [r1]
	ldr r1, [r4]
	lsls r0, r5, #3
	adds r1, r1, r0
	ldrb r2, [r1, #0x14]
	adds r0, r7, #0
	ands r0, r2
	strb r0, [r1, #0x14]
	adds r3, #0xc
	adds r5, #1
	cmp r5, #1
	ble _0801E7BA
	movs r1, #0
	mov r2, sb
	ldr r0, [r2]
	adds r0, #0x78
	strb r1, [r0]
	bl sub_0801F2FC
	movs r0, #2
	bl sub_0801E4B0
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801E820: .4byte 0x030013CC

	thumb_func_start sub_0801E824
sub_0801E824: @ 0x0801E824
	push {r4, r5, lr}
	ldr r5, _0801E838 @ =0x030013CC
	ldr r0, [r5]
	ldrb r4, [r0, #0xe]
	cmp r4, #0
	beq _0801E83C
	cmp r4, #1
	beq _0801E880
	b _0801E88E
	.align 2, 0
_0801E838: .4byte 0x030013CC
_0801E83C:
	bl sub_08005934
	ldr r0, _0801E878 @ =0x08084480
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	bl sub_0801EE84
	ldr r0, [r5]
	strh r4, [r0, #0x10]
	movs r0, #0
	bl sub_0801EAF0
	movs r0, #1
	bl sub_0801EAF0
	bl sub_0801F394
	ldr r0, _0801E87C @ =0x08084490
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	bl sub_08005A2C
	ldr r1, [r5]
	movs r0, #1
	strb r0, [r1, #0xe]
	b _0801E88E
	.align 2, 0
_0801E878: .4byte 0x08084480
_0801E87C: .4byte 0x08084490
_0801E880:
	adds r0, #0x7c
	ldrb r0, [r0]
	cmp r0, #0
	bne _0801E88E
	movs r0, #3
	bl sub_0801E4B0
_0801E88E:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_0801E894
sub_0801E894: @ 0x0801E894
	push {r4, lr}
	sub sp, #4
	ldr r4, _0801E8AC @ =0x030013CC
	ldr r2, [r4]
	ldrb r0, [r2, #0xe]
	cmp r0, #1
	beq _0801E934
	cmp r0, #1
	bgt _0801E8B0
	cmp r0, #0
	beq _0801E8B6
	b _0801E988
	.align 2, 0
_0801E8AC: .4byte 0x030013CC
_0801E8B0:
	cmp r0, #2
	beq _0801E96C
	b _0801E988
_0801E8B6:
	ldrb r1, [r2, #0x14]
	movs r3, #1
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _0801E988
	ldrb r1, [r2, #0x1c]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _0801E988
	bl sub_08005934
	ldr r2, [r4]
	adds r0, r2, #0
	adds r0, #0x38
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0801E8F8
	ldr r1, [r2, #0x34]
	ldr r0, [r2, #0x28]
	cmp r1, r0
	bls _0801E8F0
	ldr r0, _0801E8EC @ =0x08084498
	b _0801E904
	.align 2, 0
_0801E8EC: .4byte 0x08084498
_0801E8F0:
	ldr r0, _0801E8F4 @ =0x080844A4
	b _0801E904
	.align 2, 0
_0801E8F4: .4byte 0x080844A4
_0801E8F8:
	adds r0, r2, #0
	adds r0, #0x78
	ldrb r0, [r0]
	cmp r0, #1
	bne _0801E914
	ldr r0, _0801E910 @ =0x080844B0
_0801E904:
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	b _0801E91E
	.align 2, 0
_0801E910: .4byte 0x080844B0
_0801E914:
	ldr r0, _0801E92C @ =0x080844B8
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
_0801E91E:
	bl sub_08005A2C
	ldr r0, _0801E930 @ =0x030013CC
	ldr r1, [r0]
	movs r0, #1
	strb r0, [r1, #0xe]
	b _0801E988
	.align 2, 0
_0801E92C: .4byte 0x080844B8
_0801E930: .4byte 0x030013CC
_0801E934:
	movs r0, #0
	str r0, [sp]
	movs r0, #1
	movs r1, #3
	movs r2, #0
	movs r3, #0x1d
	bl sub_0800031C
	ldr r2, _0801E964 @ =0x030024E0
	ldrh r1, [r2]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, [r4]
	movs r0, #2
	strb r0, [r1, #0xe]
	ldr r0, _0801E968 @ =0x030056F0
	movs r1, #4
	bl m4aMPlayFadeOut
	b _0801E988
	.align 2, 0
_0801E964: .4byte 0x030024E0
_0801E968: .4byte 0x030056F0
_0801E96C:
	bl sub_080003D0
	cmp r0, #0
	beq _0801E988
	ldr r0, [r4]
	adds r0, #0x78
	ldrb r0, [r0]
	cmp r0, #1
	bne _0801E982
	bl sub_080193B4
_0801E982:
	movs r0, #4
	bl sub_0801E4B0
_0801E988:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0801E990
sub_0801E990: @ 0x0801E990
	push {r4, lr}
	bl sub_080058A4
	bl sub_0800B17C
	ldr r0, _0801E9F8 @ =0x080BE690
	bl sub_080095E0
	ldr r0, _0801E9FC @ =0x080BE6EC
	bl sub_080095E0
	ldr r4, _0801EA00 @ =0x030013CC
	ldr r0, [r4]
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	ldr r0, [r4]
	movs r1, #2
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	ldr r0, [r4]
	movs r1, #4
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	ldr r0, [r4]
	movs r1, #6
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	ldr r0, [r4]
	movs r1, #8
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	ldr r0, [r4]
	ldr r0, [r0, #0x64]
	bl sub_08007CF8
	ldr r0, [r4]
	ldr r0, [r0, #0x6c]
	bl sub_08007CF8
	ldr r1, [r4]
	movs r0, #1
	strb r0, [r1, #0xc]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801E9F8: .4byte 0x080BE690
_0801E9FC: .4byte 0x080BE6EC
_0801EA00: .4byte 0x030013CC

	thumb_func_start sub_0801EA04
sub_0801EA04: @ 0x0801EA04
	push {r4, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _0801EA24 @ =0x030013CC
	ldr r0, [r0]
	lsls r1, r4, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	strb r4, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801EA24: .4byte 0x030013CC

	thumb_func_start sub_0801EA28
sub_0801EA28: @ 0x0801EA28
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	adds r5, r0, #0
	adds r4, r1, #0
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _0801EA98 @ =0x030013CC
	mov r8, r0
	ldr r0, [r0]
	lsls r1, r5, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	adds r6, r0, #0
	mov r2, r8
	ldr r1, [r2]
	ldrb r0, [r6]
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	ldr r1, _0801EA9C @ =0x0808456C
	lsls r4, r4, #2
	adds r4, r4, r1
	ldr r1, [r4]
	bl sub_08007B84
	movs r0, #0
	strb r0, [r6, #1]
	strh r0, [r6, #2]
	mov r1, r8
	ldr r0, [r1]
	lsls r5, r5, #2
	adds r0, #0x3c
	adds r0, r0, r5
	ldr r1, [r0]
	ldrb r0, [r1, #0x10]
	strb r0, [r6, #5]
	ldrb r0, [r1, #0x10]
	strb r0, [r6, #4]
	mov r2, r8
	ldr r0, [r2]
	adds r0, #0x3c
	adds r0, r0, r5
	ldr r0, [r0]
	str r0, [r6, #8]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801EA98: .4byte 0x030013CC
_0801EA9C: .4byte 0x0808456C

	thumb_func_start sub_0801EAA0
sub_0801EAA0: @ 0x0801EAA0
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _0801EAC4 @ =0x030013CC
	ldr r2, [r1]
	lsls r1, r0, #3
	adds r2, r2, r1
	ldrb r3, [r2, #0x14]
	movs r1, #2
	rsbs r1, r1, #0
	ands r1, r3
	strb r1, [r2, #0x14]
	movs r1, #0
	bl sub_0801EA28
	pop {r0}
	bx r0
	.align 2, 0
_0801EAC4: .4byte 0x030013CC

	thumb_func_start sub_0801EAC8
sub_0801EAC8: @ 0x0801EAC8
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _0801EAEC @ =0x030013CC
	ldr r2, [r1]
	lsls r1, r0, #3
	adds r2, r2, r1
	ldrb r3, [r2, #0x14]
	movs r1, #2
	rsbs r1, r1, #0
	ands r1, r3
	strb r1, [r2, #0x14]
	movs r1, #1
	bl sub_0801EA28
	pop {r0}
	bx r0
	.align 2, 0
_0801EAEC: .4byte 0x030013CC

	thumb_func_start sub_0801EAF0
sub_0801EAF0: @ 0x0801EAF0
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _0801EB14 @ =0x030013CC
	ldr r2, [r1]
	lsls r1, r0, #3
	adds r2, r2, r1
	ldrb r3, [r2, #0x14]
	movs r1, #2
	rsbs r1, r1, #0
	ands r1, r3
	strb r1, [r2, #0x14]
	movs r1, #2
	bl sub_0801EA28
	pop {r0}
	bx r0
	.align 2, 0
_0801EB14: .4byte 0x030013CC

	thumb_func_start sub_0801EB18
sub_0801EB18: @ 0x0801EB18
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _0801EB38 @ =0x030013CC
	ldr r3, [r1]
	lsls r1, r0, #3
	adds r3, r3, r1
	ldrb r1, [r3, #0x14]
	movs r2, #1
	orrs r1, r2
	strb r1, [r3, #0x14]
	movs r1, #3
	bl sub_0801EA28
	pop {r0}
	bx r0
	.align 2, 0
_0801EB38: .4byte 0x030013CC

	thumb_func_start sub_0801EB3C
sub_0801EB3C: @ 0x0801EB3C
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _0801EB5C @ =0x030013CC
	ldr r3, [r1]
	lsls r1, r0, #3
	adds r3, r3, r1
	ldrb r1, [r3, #0x14]
	movs r2, #1
	orrs r1, r2
	strb r1, [r3, #0x14]
	movs r1, #4
	bl sub_0801EA28
	pop {r0}
	bx r0
	.align 2, 0
_0801EB5C: .4byte 0x030013CC

	thumb_func_start sub_0801EB60
sub_0801EB60: @ 0x0801EB60
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _0801EB80 @ =0x030013CC
	ldr r3, [r1]
	lsls r1, r0, #3
	adds r3, r3, r1
	ldrb r1, [r3, #0x14]
	movs r2, #1
	orrs r1, r2
	strb r1, [r3, #0x14]
	movs r1, #5
	bl sub_0801EA28
	pop {r0}
	bx r0
	.align 2, 0
_0801EB80: .4byte 0x030013CC

	thumb_func_start sub_0801EB84
sub_0801EB84: @ 0x0801EB84
	push {lr}
	bl sub_08007BD4
	adds r3, r0, #0
	ldrb r0, [r3]
	cmp r0, #0
	bne _0801EBB0
	ldr r0, _0801EBAC @ =0x030013CC
	ldr r2, [r0]
	ldrb r0, [r3]
	lsls r0, r0, #3
	adds r0, r2, r0
	movs r1, #0x68
	strh r1, [r0, #0x16]
	ldrb r0, [r3]
	lsls r0, r0, #3
	adds r2, r2, r0
	movs r0, #0x5c
	b _0801EBC6
	.align 2, 0
_0801EBAC: .4byte 0x030013CC
_0801EBB0:
	ldr r0, _0801EBD4 @ =0x030013CC
	ldr r2, [r0]
	ldrb r0, [r3]
	lsls r0, r0, #3
	adds r0, r2, r0
	movs r1, #0x68
	strh r1, [r0, #0x16]
	ldrb r0, [r3]
	lsls r0, r0, #3
	adds r2, r2, r0
	movs r0, #0x36
_0801EBC6:
	strh r0, [r2, #0x18]
	ldrb r0, [r3]
	bl sub_0801EAC8
	pop {r0}
	bx r0
	.align 2, 0
_0801EBD4: .4byte 0x030013CC

	thumb_func_start sub_0801EBD8
sub_0801EBD8: @ 0x0801EBD8
	bx lr
	.align 2, 0

	thumb_func_start sub_0801EBDC
sub_0801EBDC: @ 0x0801EBDC
	push {r4, r5, lr}
	bl sub_08007BD4
	adds r4, r0, #0
	ldr r0, _0801EC24 @ =0x030013CC
	ldr r3, [r0]
	ldrb r0, [r4]
	lsls r2, r0, #3
	adds r2, r3, r2
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r0, r3, #0
	adds r0, #0x28
	adds r0, r0, r1
	ldr r0, [r0]
	lsrs r0, r0, #8
	adds r0, #0x68
	strh r0, [r2, #0x16]
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r3, r3, r0
	adds r3, #0x24
	ldrb r0, [r3]
	cmp r0, #0
	beq _0801EC2C
	ldr r0, _0801EC28 @ =0x08084520
	lsls r1, r1, #5
	subs r1, #1
	ldrb r3, [r3]
	adds r1, r1, r3
	adds r1, r1, r0
	ldrb r0, [r1]
	b _0801EC32
	.align 2, 0
_0801EC24: .4byte 0x030013CC
_0801EC28: .4byte 0x08084520
_0801EC2C:
	ldr r0, _0801ECA4 @ =0x08084500
	adds r0, r1, r0
	ldrb r0, [r0]
_0801EC32:
	strb r0, [r4, #5]
	ldr r0, [r4, #8]
	ldrb r0, [r0, #1]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _0801ED22
	ldrb r0, [r4]
	cmp r0, #0
	bne _0801EC4A
	ldr r0, _0801ECA8 @ =0x0000013F
	bl m4aSongNumStart
_0801EC4A:
	ldr r2, [r4, #8]
	ldrb r0, [r2, #1]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _0801ED22
	ldrb r0, [r4, #5]
	ldrb r1, [r4, #4]
	cmp r0, r1
	beq _0801ED22
	strb r0, [r4, #4]
	ldrb r1, [r4, #4]
	adds r0, r2, #0
	bl sub_08009AFC
	ldr r0, _0801ECAC @ =0x030013CC
	ldr r3, [r0]
	ldrb r2, [r4]
	lsls r5, r2, #1
	adds r0, r5, r2
	lsls r0, r0, #2
	adds r1, r3, r0
	adds r0, r1, #0
	adds r0, #0x24
	ldrb r0, [r0]
	cmp r0, #0
	bne _0801ECCC
	adds r0, r1, #0
	adds r0, #0x2c
	ldrb r1, [r0]
	lsls r0, r1, #0x1f
	cmp r0, #0
	beq _0801ECCC
	lsls r0, r1, #0x1e
	cmp r0, #0
	bge _0801ECB4
	ldr r0, [r4, #8]
	ldr r1, _0801ECB0 @ =0x08084568
	adds r1, r5, r1
	ldrb r1, [r1]
	bl sub_08009AFC
	ldrb r0, [r4]
	bl sub_0801EB60
	b _0801ECCC
	.align 2, 0
_0801ECA4: .4byte 0x08084500
_0801ECA8: .4byte 0x0000013F
_0801ECAC: .4byte 0x030013CC
_0801ECB0: .4byte 0x08084568
_0801ECB4:
	adds r0, r3, #0
	adds r0, #0x78
	ldrb r0, [r0]
	cmp r0, r2
	bne _0801ECC6
	adds r0, r2, #0
	bl sub_0801EB18
	b _0801ECCC
_0801ECC6:
	adds r0, r2, #0
	bl sub_0801EB3C
_0801ECCC:
	ldrb r5, [r4, #4]
	ldr r0, _0801ED04 @ =0x08084560
	ldrb r1, [r4]
	lsls r2, r1, #1
	adds r0, r2, r0
	ldrh r4, [r0]
	adds r3, r5, #0
	cmp r3, r4
	blo _0801ED10
	ldr r0, _0801ED08 @ =0x08084564
	adds r0, r2, r0
	ldrh r0, [r0]
	cmp r3, r0
	bhi _0801ED10
	ldr r0, _0801ED0C @ =0x030013CC
	ldr r0, [r0]
	lsls r1, r1, #2
	adds r0, #0x44
	adds r0, r0, r1
	ldr r0, [r0]
	subs r1, r5, r4
	adds r1, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl sub_08009AFC
	b _0801ED22
	.align 2, 0
_0801ED04: .4byte 0x08084560
_0801ED08: .4byte 0x08084564
_0801ED0C: .4byte 0x030013CC
_0801ED10:
	ldr r0, _0801ED28 @ =0x030013CC
	ldr r0, [r0]
	lsls r1, r1, #2
	adds r0, #0x44
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0
	bl sub_08009AFC
_0801ED22:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801ED28: .4byte 0x030013CC

	thumb_func_start sub_0801ED2C
sub_0801ED2C: @ 0x0801ED2C
	push {r4, lr}
	bl sub_08007BD4
	adds r4, r0, #0
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _0801ED40
	cmp r0, #1
	beq _0801ED64
	b _0801ED86
_0801ED40:
	ldr r1, [r4, #8]
	ldrb r0, [r1, #1]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _0801ED86
	ldrb r0, [r4]
	cmp r0, #0
	bne _0801ED56
	adds r0, r1, #0
	movs r1, #5
	b _0801ED5A
_0801ED56:
	adds r0, r1, #0
	movs r1, #6
_0801ED5A:
	bl sub_08009AFC
	movs r0, #1
	strb r0, [r4, #1]
	b _0801ED86
_0801ED64:
	ldr r0, [r4, #8]
	ldrb r0, [r0, #1]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _0801ED86
	ldr r0, _0801ED8C @ =0x030013CC
	ldr r2, [r0]
	ldrb r0, [r4]
	lsls r0, r0, #3
	adds r2, r2, r0
	ldrb r0, [r2, #0x14]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2, #0x14]
	ldrb r0, [r4]
	bl sub_0801EAC8
_0801ED86:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801ED8C: .4byte 0x030013CC

	thumb_func_start sub_0801ED90
sub_0801ED90: @ 0x0801ED90
	push {r4, lr}
	bl sub_08007BD4
	adds r4, r0, #0
	ldrb r0, [r4, #1]
	cmp r0, #1
	beq _0801EDDE
	cmp r0, #1
	bgt _0801EDA8
	cmp r0, #0
	beq _0801EDAE
	b _0801EE30
_0801EDA8:
	cmp r0, #2
	beq _0801EE0E
	b _0801EE30
_0801EDAE:
	ldr r1, [r4, #8]
	ldrb r0, [r1, #1]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _0801EE30
	ldrb r0, [r4]
	cmp r0, #0
	bne _0801EDC8
	adds r0, r1, #0
	movs r1, #5
	bl sub_08009AFC
	b _0801EE08
_0801EDC8:
	adds r0, r1, #0
	movs r1, #7
	bl sub_08009AFC
	ldr r0, [r4, #8]
	movs r1, #0
	bl sub_08009B40
	movs r0, #1
	strb r0, [r4, #1]
	b _0801EE30
_0801EDDE:
	ldr r1, [r4, #8]
	ldrb r0, [r1, #1]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _0801EE30
	ldrb r0, [r4]
	cmp r0, #0
	bne _0801EDF8
	adds r0, r1, #0
	movs r1, #9
	bl sub_08009AFC
	b _0801EE00
_0801EDF8:
	adds r0, r1, #0
	movs r1, #8
	bl sub_08009AFC
_0801EE00:
	ldr r0, [r4, #8]
	movs r1, #0xff
	bl sub_08009B40
_0801EE08:
	movs r0, #2
	strb r0, [r4, #1]
	b _0801EE30
_0801EE0E:
	ldr r0, [r4, #8]
	ldrb r0, [r0, #1]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _0801EE30
	ldr r0, _0801EE38 @ =0x030013CC
	ldr r2, [r0]
	ldrb r0, [r4]
	lsls r0, r0, #3
	adds r2, r2, r0
	ldrb r0, [r2, #0x14]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2, #0x14]
	ldrb r0, [r4]
	bl sub_0801EAC8
_0801EE30:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801EE38: .4byte 0x030013CC

	thumb_func_start sub_0801EE3C
sub_0801EE3C: @ 0x0801EE3C
	push {lr}
	bl sub_08007BD4
	ldr r1, _0801EE60 @ =0x030013CC
	ldr r3, [r1]
	ldrb r1, [r0]
	lsls r1, r1, #3
	adds r3, r3, r1
	ldrb r1, [r3, #0x14]
	movs r2, #2
	orrs r1, r2
	strb r1, [r3, #0x14]
	ldrb r0, [r0]
	bl sub_0801EAC8
	pop {r0}
	bx r0
	.align 2, 0
_0801EE60: .4byte 0x030013CC

	thumb_func_start sub_0801EE64
sub_0801EE64: @ 0x0801EE64
	push {lr}
	ldr r0, _0801EE7C @ =0x030013CC
	ldr r0, [r0]
	movs r1, #4
	ldrsh r0, [r0, r1]
	ldr r1, _0801EE80 @ =0x08084584
	ldr r1, [r1]
	bl sub_08007B84
	pop {r0}
	bx r0
	.align 2, 0
_0801EE7C: .4byte 0x030013CC
_0801EE80: .4byte 0x08084584

	thumb_func_start sub_0801EE84
sub_0801EE84: @ 0x0801EE84
	push {lr}
	ldr r0, _0801EE9C @ =0x030013CC
	ldr r0, [r0]
	movs r1, #4
	ldrsh r0, [r0, r1]
	ldr r1, _0801EEA0 @ =0x08084584
	ldr r1, [r1, #4]
	bl sub_08007B84
	pop {r0}
	bx r0
	.align 2, 0
_0801EE9C: .4byte 0x030013CC
_0801EEA0: .4byte 0x08084584

	thumb_func_start sub_0801EEA4
sub_0801EEA4: @ 0x0801EEA4
	push {r4, lr}
	bl sub_0800B2BC
	ldr r4, _0801EEC4 @ =0x030013CC
	ldr r1, [r4]
	adds r1, #0x60
	strh r0, [r1]
	bl sub_0800B2C8
	ldr r1, [r4]
	adds r1, #0x62
	strh r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801EEC4: .4byte 0x030013CC

	thumb_func_start sub_0801EEC8
sub_0801EEC8: @ 0x0801EEC8
	push {lr}
	movs r0, #0
	movs r1, #0
	bl sub_0800B278
	ldr r0, _0801EEEC @ =0x030013CC
	ldr r0, [r0]
	movs r1, #4
	ldrsh r0, [r0, r1]
	ldr r1, _0801EEF0 @ =0x08084584
	ldr r1, [r1, #8]
	bl sub_08007B84
	bl sub_0801EEA4
	pop {r0}
	bx r0
	.align 2, 0
_0801EEEC: .4byte 0x030013CC
_0801EEF0: .4byte 0x08084584

	thumb_func_start sub_0801EEF4
sub_0801EEF4: @ 0x0801EEF4
	push {lr}
	ldr r0, _0801EF10 @ =0x030013CC
	ldr r0, [r0]
	movs r1, #0x16
	ldrsh r0, [r0, r1]
	subs r0, #0x78
	movs r1, #0
	bl sub_0800B278
	bl sub_0801EEA4
	pop {r0}
	bx r0
	.align 2, 0
_0801EF10: .4byte 0x030013CC

	thumb_func_start sub_0801EF14
sub_0801EF14: @ 0x0801EF14
	push {lr}
	bl sub_0801EEA4
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0801EF20
sub_0801EF20: @ 0x0801EF20
	push {r4, r5, r6, r7, lr}
	movs r0, #3
	movs r1, #0x80
	bl sub_080099E0
	adds r7, r0, #0
	movs r1, #1
	bl sub_08009A34
	ldr r4, _0801F0D4 @ =0x030013CC
	ldr r2, [r4]
	adds r0, r2, #0
	adds r0, #0x60
	ldrh r1, [r2, #0x16]
	ldrh r0, [r0]
	subs r1, r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r2, #0
	adds r0, #0x62
	ldrh r2, [r2, #0x18]
	ldrh r0, [r0]
	subs r2, r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r7, #0
	bl sub_08009A70
	ldr r1, _0801F0D8 @ =0x06010000
	adds r0, r7, #0
	bl sub_08009A78
	ldr r0, [r4]
	ldr r1, [r0, #0x68]
	adds r0, r7, #0
	movs r2, #0
	bl sub_08009BBC
	adds r0, r7, #0
	movs r1, #0
	bl sub_08009AB4
	ldr r1, _0801F0DC @ =0x080844E0
	ldr r0, _0801F0E0 @ =0x03004488
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r1, r0, r1
	ldr r1, [r1]
	ldr r2, _0801F0E4 @ =0x080844F0
	adds r0, r0, r2
	ldr r2, [r0]
	adds r0, r7, #0
	movs r3, #0
	bl sub_08009ACC
	adds r0, r7, #0
	movs r1, #0xff
	bl sub_08009B40
	ldr r0, [r4]
	str r7, [r0, #0x3c]
	movs r0, #3
	movs r1, #0xc0
	bl sub_080099E0
	adds r7, r0, #0
	movs r1, #1
	bl sub_08009A34
	ldr r2, [r4]
	adds r0, r2, #0
	adds r0, #0x60
	ldrh r1, [r2, #0x1e]
	ldrh r0, [r0]
	subs r1, r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r2, #0
	adds r0, #0x62
	ldrh r2, [r2, #0x20]
	ldrh r0, [r0]
	subs r2, r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r7, #0
	bl sub_08009A70
	ldr r1, _0801F0E8 @ =0x06010400
	adds r0, r7, #0
	bl sub_08009A78
	ldr r0, [r4]
	ldr r1, [r0, #0x70]
	adds r0, r7, #0
	movs r2, #0
	bl sub_08009BBC
	adds r0, r7, #0
	movs r1, #1
	bl sub_08009AB4
	ldr r1, _0801F0EC @ =0x080DA8E4
	ldr r2, _0801F0F0 @ =0x080DA894
	adds r0, r7, #0
	movs r3, #0
	bl sub_08009ACC
	adds r0, r7, #0
	movs r1, #0xff
	bl sub_08009B40
	ldr r0, [r4]
	str r7, [r0, #0x40]
	movs r0, #3
	movs r1, #0x7f
	bl sub_080099E0
	adds r7, r0, #0
	movs r1, #1
	bl sub_08009A34
	ldr r2, [r4]
	adds r0, r2, #0
	adds r0, #0x60
	ldrh r1, [r2, #0x16]
	ldrh r0, [r0]
	subs r1, r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r2, #0
	adds r0, #0x62
	ldrh r2, [r2, #0x18]
	ldrh r0, [r0]
	subs r2, r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r7, #0
	bl sub_08009A70
	ldr r0, [r4]
	ldr r1, [r0, #0x54]
	adds r0, r7, #0
	bl sub_08009A78
	adds r0, r7, #0
	movs r1, #3
	bl sub_08009AB4
	ldr r5, _0801F0F4 @ =0x080CAFB8
	ldr r6, _0801F0F8 @ =0x080CAF64
	adds r0, r7, #0
	adds r1, r5, #0
	adds r2, r6, #0
	movs r3, #0
	bl sub_08009ACC
	adds r0, r7, #0
	movs r1, #0xff
	bl sub_08009B40
	ldr r0, [r4]
	str r7, [r0, #0x44]
	movs r0, #3
	movs r1, #0xbf
	bl sub_080099E0
	adds r7, r0, #0
	movs r1, #1
	bl sub_08009A34
	ldr r2, [r4]
	adds r0, r2, #0
	adds r0, #0x60
	ldrh r1, [r2, #0x1e]
	ldrh r0, [r0]
	subs r1, r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r2, #0
	adds r0, #0x62
	ldrh r2, [r2, #0x20]
	ldrh r0, [r0]
	subs r2, r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r7, #0
	bl sub_08009A70
	ldr r0, [r4]
	ldr r1, [r0, #0x54]
	adds r0, r7, #0
	bl sub_08009A78
	adds r0, r7, #0
	movs r1, #3
	bl sub_08009AB4
	adds r0, r7, #0
	adds r1, r5, #0
	adds r2, r6, #0
	movs r3, #0
	bl sub_08009ACC
	adds r0, r7, #0
	movs r1, #0xff
	bl sub_08009B40
	ldr r0, [r4]
	str r7, [r0, #0x48]
	movs r1, #6
	ldrsh r0, [r0, r1]
	ldr r1, _0801F0FC @ =0x08084598
	ldr r1, [r1, #4]
	bl sub_08007B84
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801F0D4: .4byte 0x030013CC
_0801F0D8: .4byte 0x06010000
_0801F0DC: .4byte 0x080844E0
_0801F0E0: .4byte 0x03004488
_0801F0E4: .4byte 0x080844F0
_0801F0E8: .4byte 0x06010400
_0801F0EC: .4byte 0x080DA8E4
_0801F0F0: .4byte 0x080DA894
_0801F0F4: .4byte 0x080CAFB8
_0801F0F8: .4byte 0x080CAF64
_0801F0FC: .4byte 0x08084598

	thumb_func_start sub_0801F100
sub_0801F100: @ 0x0801F100
	push {r4, r5, lr}
	ldr r4, _0801F188 @ =0x030013CC
	ldr r3, [r4]
	ldr r0, [r3, #0x3c]
	ldr r2, _0801F18C @ =0x08084590
	ldr r1, _0801F190 @ =0x03004488
	ldrb r1, [r1]
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r1, [r1]
	ldrh r2, [r3, #0x16]
	adds r1, r1, r2
	adds r2, r3, #0
	adds r2, #0x60
	ldrh r2, [r2]
	subs r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r5, #0x62
	ldrh r2, [r3, #0x18]
	ldrh r3, [r5, r3]
	subs r2, r2, r3
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl sub_08009A70
	ldr r3, [r4]
	ldr r0, [r3, #0x40]
	adds r1, r3, #0
	adds r1, #0x60
	ldrh r2, [r1]
	adds r2, #8
	ldrh r1, [r3, #0x1e]
	subs r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0x62
	adds r2, r2, r3
	mov ip, r2
	ldrh r2, [r3, #0x20]
	mov r5, ip
	ldrh r3, [r5]
	subs r2, r2, r3
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl sub_08009A70
	ldr r1, [r4]
	ldr r0, [r1, #0x44]
	ldr r2, [r1, #0x3c]
	movs r3, #6
	ldrsh r1, [r2, r3]
	movs r5, #8
	ldrsh r2, [r2, r5]
	bl sub_08009A70
	ldr r1, [r4]
	ldr r0, [r1, #0x48]
	ldr r2, [r1, #0x40]
	movs r3, #6
	ldrsh r1, [r2, r3]
	movs r5, #8
	ldrsh r2, [r2, r5]
	bl sub_08009A70
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801F188: .4byte 0x030013CC
_0801F18C: .4byte 0x08084590
_0801F190: .4byte 0x03004488

	thumb_func_start sub_0801F194
sub_0801F194: @ 0x0801F194
	push {r4, lr}
	ldr r4, _0801F1C0 @ =0x030013CC
	ldr r0, [r4]
	ldr r0, [r0, #0x3c]
	bl sub_08009A00
	ldr r0, [r4]
	ldr r0, [r0, #0x40]
	bl sub_08009A00
	ldr r0, [r4]
	ldr r0, [r0, #0x44]
	bl sub_08009A00
	ldr r0, [r4]
	ldr r0, [r0, #0x48]
	bl sub_08009A00
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801F1C0: .4byte 0x030013CC

	thumb_func_start sub_0801F1C4
sub_0801F1C4: @ 0x0801F1C4
	push {r4, r5, lr}
	movs r0, #3
	movs r1, #0xf0
	bl sub_080099E0
	adds r5, r0, #0
	movs r1, #1
	bl sub_08009A34
	ldr r4, _0801F27C @ =0x030013CC
	ldr r2, [r4]
	adds r0, r2, #0
	adds r0, #0x60
	ldrh r0, [r0]
	ldr r3, _0801F280 @ =0x00000584
	adds r1, r3, #0
	subs r1, r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r2, #0x62
	ldrh r0, [r2]
	movs r2, #0x18
	subs r2, r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r5, #0
	bl sub_08009A70
	ldr r0, [r4]
	ldr r1, [r0, #0x58]
	adds r0, r5, #0
	bl sub_08009A78
	adds r0, r5, #0
	movs r1, #2
	bl sub_08009AB4
	ldr r1, _0801F284 @ =0x080BEF0C
	ldr r2, _0801F288 @ =0x080BEF04
	adds r0, r5, #0
	movs r3, #0
	bl sub_08009ACC
	ldr r0, [r4]
	str r5, [r0, #0x50]
	movs r0, #2
	movs r1, #0
	bl sub_080099E0
	adds r5, r0, #0
	movs r1, #0
	bl sub_08009A34
	adds r0, r5, #0
	movs r1, #0xa0
	movs r2, #0x64
	bl sub_08009A70
	ldr r0, [r4]
	ldr r1, [r0, #0x5c]
	adds r0, r5, #0
	bl sub_08009A78
	adds r0, r5, #0
	movs r1, #4
	bl sub_08009AB4
	ldr r1, _0801F28C @ =0x080B8664
	ldr r0, _0801F290 @ =0x03004400
	ldrb r0, [r0, #0x14]
	lsls r0, r0, #2
	adds r1, r0, r1
	ldr r1, [r1]
	ldr r2, _0801F294 @ =0x080B8660
	adds r0, r0, r2
	ldr r0, [r0]
	ldr r2, [r0, #0x14]
	adds r0, r5, #0
	movs r3, #0xc
	bl sub_08009ACC
	ldr r0, [r4]
	str r5, [r0, #0x4c]
	movs r1, #8
	ldrsh r0, [r0, r1]
	ldr r1, _0801F298 @ =sub_0801F29C
	bl sub_08007B84
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801F27C: .4byte 0x030013CC
_0801F280: .4byte 0x00000584
_0801F284: .4byte 0x080BEF0C
_0801F288: .4byte 0x080BEF04
_0801F28C: .4byte 0x080B8664
_0801F290: .4byte 0x03004400
_0801F294: .4byte 0x080B8660
_0801F298: .4byte sub_0801F29C

	thumb_func_start sub_0801F29C
sub_0801F29C: @ 0x0801F29C
	push {r4, lr}
	ldr r0, _0801F2CC @ =0x030013CC
	ldr r2, [r0]
	ldr r0, [r2, #0x50]
	adds r1, r2, #0
	adds r1, #0x60
	ldrh r3, [r1]
	ldr r4, _0801F2D0 @ =0x00000584
	adds r1, r4, #0
	subs r1, r1, r3
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r2, #0x62
	ldrh r3, [r2]
	movs r2, #0x18
	subs r2, r2, r3
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl sub_08009A70
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801F2CC: .4byte 0x030013CC
_0801F2D0: .4byte 0x00000584

	thumb_func_start sub_0801F2D4
sub_0801F2D4: @ 0x0801F2D4
	push {r4, lr}
	ldr r4, _0801F2F8 @ =0x030013CC
	ldr r0, [r4]
	ldr r0, [r0, #0x4c]
	bl sub_08009A00
	ldr r0, [r4]
	movs r1, #0xa
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	ldr r0, [r4]
	ldr r0, [r0, #0x50]
	bl sub_08009A00
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801F2F8: .4byte 0x030013CC

	thumb_func_start sub_0801F2FC
sub_0801F2FC: @ 0x0801F2FC
	push {r4, lr}
	sub sp, #4
	ldr r4, _0801F32C @ =0x030013CC
	ldr r0, [r4]
	ldr r0, [r0, #0x4c]
	movs r1, #1
	bl sub_08009A34
	ldr r0, [r4]
	ldr r0, [r0, #0x4c]
	movs r1, #0x44
	str r1, [sp]
	movs r1, #0xc
	movs r2, #0xa0
	movs r3, #0x64
	bl sub_08029D88
	ldr r1, [r4]
	strh r0, [r1, #0xa]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801F32C: .4byte 0x030013CC

	thumb_func_start sub_0801F330
sub_0801F330: @ 0x0801F330
	push {r4, r5, lr}
	movs r4, #0
	ldr r5, _0801F354 @ =0x030013CC
_0801F336:
	ldr r0, [r5]
	lsls r1, r4, #2
	adds r0, #0x4c
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0
	bl sub_08009A34
	adds r4, #1
	cmp r4, #0
	ble _0801F336
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801F354: .4byte 0x030013CC

	thumb_func_start sub_0801F358
sub_0801F358: @ 0x0801F358
	push {r4, lr}
	bl sub_0801E4C8
	ldr r4, _0801F390 @ =0x030013CC
	ldr r2, [r4]
	ldrb r1, [r2, #0x14]
	movs r3, #2
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _0801F388
	ldrb r1, [r2, #0x1c]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _0801F388
	bl sub_0801F330
	ldr r0, [r4]
	adds r0, #0x7c
	movs r1, #0
	strb r1, [r0]
	bl sub_08007A64
_0801F388:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801F390: .4byte 0x030013CC

	thumb_func_start sub_0801F394
sub_0801F394: @ 0x0801F394
	push {lr}
	ldr r0, _0801F3B0 @ =sub_0801F358
	movs r1, #0x40
	movs r2, #0
	bl sub_08007968
	ldr r0, _0801F3B4 @ =0x030013CC
	ldr r0, [r0]
	adds r0, #0x7c
	movs r1, #1
	strb r1, [r0]
	pop {r0}
	bx r0
	.align 2, 0
_0801F3B0: .4byte sub_0801F358
_0801F3B4: .4byte 0x030013CC

	thumb_func_start sub_0801F3B8
sub_0801F3B8: @ 0x0801F3B8
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0xc
	ldr r5, _0801F568 @ =0x030013D0
	bl sub_0801934C
	adds r1, r0, #0
	str r1, [r5]
	movs r0, #0
	movs r2, #0xac
	bl sub_08007EFC
	ldr r0, _0801F56C @ =0x080846E8
	ldr r4, [r0]
	adds r0, r4, #0
	movs r1, #0x40
	movs r2, #0
	bl sub_08007968
	ldr r1, [r5]
	movs r2, #0
	mov r8, r2
	strh r0, [r1]
	movs r0, #0
	bl sub_0801FCB8
	adds r0, r4, #0
	movs r1, #0x41
	movs r2, #0
	bl sub_08007968
	ldr r1, [r5]
	strh r0, [r1, #2]
	movs r0, #1
	bl sub_0801FCB8
	ldr r0, _0801F570 @ =0x080846F0
	ldr r0, [r0]
	movs r1, #0x42
	movs r2, #0
	bl sub_08007968
	ldr r1, [r5]
	strh r0, [r1, #4]
	ldr r0, _0801F574 @ =0x080846FC
	ldr r0, [r0]
	movs r1, #0x43
	movs r2, #0
	bl sub_08007968
	ldr r1, [r5]
	strh r0, [r1, #6]
	ldr r0, _0801F578 @ =0x08084704
	ldr r0, [r0]
	movs r1, #0x44
	movs r2, #0
	bl sub_08007968
	ldr r1, [r5]
	strh r0, [r1, #8]
	movs r2, #8
	ldrsh r0, [r1, r2]
	ldr r1, _0801F57C @ =sub_080201B4
	bl sub_08007BA0
	ldr r0, _0801F580 @ =0x0808470C
	ldr r0, [r0]
	movs r1, #0x44
	movs r2, #0
	bl sub_08007968
	ldr r1, [r5]
	strh r0, [r1, #0xa]
	movs r2, #0xa
	ldrsh r0, [r1, r2]
	ldr r1, _0801F584 @ =sub_080203D0
	bl sub_08007BA0
	ldr r0, _0801F588 @ =sub_080204A0
	movs r1, #0x44
	movs r2, #0
	bl sub_08007968
	ldr r1, [r5]
	strh r0, [r1, #0xc]
	movs r2, #0xc
	ldrsh r0, [r1, r2]
	ldr r1, _0801F58C @ =sub_08020518
	bl sub_08007BA0
	ldr r4, _0801F590 @ =0x080845A0
	ldr r1, _0801F594 @ =0x05000200
	adds r0, r4, #0
	bl LoadPalette_08008308
	ldr r1, _0801F598 @ =0x08084680
	ldr r6, _0801F59C @ =0x03004488
	ldrb r0, [r6]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	add r1, sp, #4
	bl sub_08008380
	ldr r1, [r5]
	str r0, [r1, #0x5c]
	ldr r0, [sp, #4]
	str r0, [r1, #0x60]
	ldr r1, _0801F5A0 @ =0x05000220
	adds r0, r4, #0
	bl LoadPalette_08008308
	ldr r0, _0801F5A4 @ =0x080D7B80
	add r1, sp, #4
	bl sub_08008380
	ldr r1, [r5]
	str r0, [r1, #0x64]
	ldr r0, [sp, #4]
	str r0, [r1, #0x68]
	ldr r1, _0801F5A8 @ =0x08085A50
	ldrb r0, [r6]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	add r1, sp, #4
	bl sub_08008380
	ldr r1, [r5]
	str r0, [r1, #0x6c]
	ldr r0, [sp, #4]
	str r0, [r1, #0x70]
	ldr r4, _0801F5AC @ =0x06010800
	ldr r0, _0801F5B0 @ =0x080C01DC
	ldr r1, _0801F5B4 @ =0x05000240
	bl LoadPalette_08008308
	ldr r0, [r5]
	str r4, [r0, #0x50]
	ldr r0, _0801F5B8 @ =0x080C029C
	adds r1, r4, #0
	bl DecompressData_08008374
	adds r4, r0, r4
	ldr r1, _0801F5BC @ =0x080B85E8
	ldr r6, _0801F5C0 @ =0x03004400
	ldrb r0, [r6, #0x14]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _0801F5C4 @ =0x05000260
	bl LoadPalette_08008308
	ldr r0, [r5]
	str r4, [r0, #0x54]
	ldr r1, _0801F5C8 @ =0x080B8624
	ldrb r0, [r6, #0x14]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r0, [r0, #0x18]
	adds r1, r4, #0
	bl DecompressData_08008374
	ldr r0, _0801F5CC @ =0x080BEFC8
	movs r1, #0xa0
	lsls r1, r1, #0x13
	bl LoadPalette_08008308
	ldr r0, _0801F5D0 @ =0x080BEFEC
	movs r1, #0xc0
	lsls r1, r1, #0x13
	bl DecompressData_08008374
	ldr r0, _0801F5D4 @ =0x080BFD40
	ldr r1, _0801F5D8 @ =0x0600F800
	movs r2, #0
	movs r3, #0
	bl LoadTileMap_080083CC
	mov r0, r8
	str r0, [sp]
	movs r0, #1
	movs r1, #3
	movs r2, #0
	movs r3, #0x1d
	bl sub_08000268
	movs r0, #0xf0
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #3
	bl sub_08006BE8
	bl sub_08003F9C
	movs r0, #0x80
	lsls r0, r0, #1
	str r0, [sp]
	movs r0, #1
	movs r1, #0x1e
	movs r2, #1
	movs r3, #0
	bl sub_08004028
	bl sub_080057C0
	bl sub_08005AA0
	add sp, #0xc
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801F568: .4byte 0x030013D0
_0801F56C: .4byte 0x080846E8
_0801F570: .4byte 0x080846F0
_0801F574: .4byte 0x080846FC
_0801F578: .4byte 0x08084704
_0801F57C: .4byte sub_080201B4
_0801F580: .4byte 0x0808470C
_0801F584: .4byte sub_080203D0
_0801F588: .4byte sub_080204A0
_0801F58C: .4byte sub_08020518
_0801F590: .4byte 0x080845A0
_0801F594: .4byte 0x05000200
_0801F598: .4byte 0x08084680
_0801F59C: .4byte 0x03004488
_0801F5A0: .4byte 0x05000220
_0801F5A4: .4byte 0x080D7B80
_0801F5A8: .4byte 0x08085A50
_0801F5AC: .4byte 0x06010800
_0801F5B0: .4byte 0x080C01DC
_0801F5B4: .4byte 0x05000240
_0801F5B8: .4byte 0x080C029C
_0801F5BC: .4byte 0x080B85E8
_0801F5C0: .4byte 0x03004400
_0801F5C4: .4byte 0x05000260
_0801F5C8: .4byte 0x080B8624
_0801F5CC: .4byte 0x080BEFC8
_0801F5D0: .4byte 0x080BEFEC
_0801F5D4: .4byte 0x080BFD40
_0801F5D8: .4byte 0x0600F800

	thumb_func_start sub_0801F5DC
sub_0801F5DC: @ 0x0801F5DC
	push {r4, lr}
	ldr r1, _0801F5FC @ =0x080846D4
	ldr r4, _0801F600 @ =0x030013D0
	ldr r0, [r4]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl call_via_r0
	ldr r0, [r4]
	ldrb r0, [r0, #0x10]
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0801F5FC: .4byte 0x080846D4
_0801F600: .4byte 0x030013D0

	thumb_func_start sub_0801F604
sub_0801F604: @ 0x0801F604
	ldr r1, _0801F618 @ =0x030013D0
	ldr r2, [r1]
	movs r3, #0
	strb r0, [r2, #0x11]
	ldr r0, [r1]
	strb r3, [r0, #0x12]
	ldr r0, [r1]
	strh r3, [r0, #0x14]
	bx lr
	.align 2, 0
_0801F618: .4byte 0x030013D0

	thumb_func_start sub_0801F61C
sub_0801F61C: @ 0x0801F61C
	push {r4, r5, lr}
	ldr r5, _0801F630 @ =0x030013D0
	ldr r0, [r5]
	ldrb r0, [r0, #0x12]
	cmp r0, #0
	beq _0801F634
	cmp r0, #1
	beq _0801F67C
	b _0801F6B0
	.align 2, 0
_0801F630: .4byte 0x030013D0
_0801F634:
	bl sub_08008174
	ldr r4, _0801F674 @ =0x030024E0
	ldr r0, _0801F678 @ =0x00001F03
	strh r0, [r4, #8]
	ldrh r0, [r4]
	movs r2, #0x80
	lsls r2, r2, #4
	adds r1, r2, #0
	orrs r0, r1
	movs r2, #0x80
	lsls r2, r2, #2
	adds r1, r2, #0
	orrs r0, r1
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4]
	movs r0, #1
	bl sub_08004124
	movs r0, #0x39
	bl m4aSongNumStart
	adds r4, #0x4f
	movs r1, #1
	strb r1, [r4]
	ldr r0, [r5]
	strb r1, [r0, #0x12]
	b _0801F6B0
	.align 2, 0
_0801F674: .4byte 0x030024E0
_0801F678: .4byte 0x00001F03
_0801F67C:
	bl sub_080003D0
	cmp r0, #0
	beq _0801F6B0
	ldr r2, _0801F6B8 @ =0x030024E0
	ldrh r1, [r2]
	ldr r0, _0801F6BC @ =0x0000FDFF
	ands r0, r1
	strh r0, [r2]
	movs r0, #1
	bl sub_0801F604
	bl sub_08020538
	bl sub_08005934
	ldr r0, _0801F6C0 @ =0x08084634
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	bl sub_08005A2C
	movs r0, #0x3c
	bl ProcSleep_08002B98
_0801F6B0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801F6B8: .4byte 0x030024E0
_0801F6BC: .4byte 0x0000FDFF
_0801F6C0: .4byte 0x08084634

	thumb_func_start sub_0801F6C4
sub_0801F6C4: @ 0x0801F6C4
	push {r4, lr}
	ldr r4, _0801F710 @ =0x030013D0
	ldr r0, [r4]
	ldr r0, [r0, #0x30]
	movs r1, #1
	bl sub_08009AFC
	ldr r0, [r4]
	ldr r0, [r0, #0x30]
	movs r1, #0
	bl sub_08009A34
	ldr r2, [r4]
	adds r1, r2, #0
	adds r1, #0x84
	movs r0, #0xc0
	lsls r0, r0, #0x10
	str r0, [r1]
	adds r1, #4
	movs r0, #0x98
	lsls r0, r0, #0xf
	str r0, [r1]
	adds r0, r2, #0
	adds r0, #0x7c
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801F7BA
	adds r0, r2, #0
	adds r0, #0xa6
	ldrb r0, [r0]
	subs r0, #1
	cmp r0, #4
	bhi _0801F7B0
	lsls r0, r0, #2
	ldr r1, _0801F714 @ =_0801F718
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0801F710: .4byte 0x030013D0
_0801F714: .4byte _0801F718
_0801F718: @ jump table
	.4byte _0801F77E @ case 0
	.4byte _0801F790 @ case 1
	.4byte _0801F7A0 @ case 2
	.4byte _0801F72C @ case 3
	.4byte _0801F72C @ case 4
_0801F72C:
	ldr r4, _0801F744 @ =0x030013D0
	ldr r0, [r4]
	adds r0, #0x81
	ldrb r0, [r0]
	cmp r0, #1
	beq _0801F74E
	cmp r0, #1
	bgt _0801F748
	cmp r0, #0
	beq _0801F7BA
	b _0801F7E4
	.align 2, 0
_0801F744: .4byte 0x030013D0
_0801F748:
	cmp r0, #2
	beq _0801F766
	b _0801F7E4
_0801F74E:
	movs r0, #2
	bl sub_0800B828
	ldr r4, [r4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r0, #1
	movs r1, #3
	bl __modsi3
	adds r4, #0x81
	b _0801F7E2
_0801F766:
	movs r0, #2
	bl sub_0800B828
	ldr r4, [r4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r0, #2
	movs r1, #3
	bl __modsi3
	adds r4, #0x81
	b _0801F7E2
_0801F77E:
	ldr r0, _0801F78C @ =0x030013D0
	ldr r4, [r0]
	adds r4, #0x81
	ldrb r0, [r4]
	adds r0, #1
	b _0801F7DC
	.align 2, 0
_0801F78C: .4byte 0x030013D0
_0801F790:
	movs r0, #2
	bl sub_0800B828
	ldr r1, _0801F79C @ =0x030013D0
	ldr r4, [r1]
	b _0801F7D0
	.align 2, 0
_0801F79C: .4byte 0x030013D0
_0801F7A0:
	movs r0, #2
	bl sub_0800B828
	ldr r1, _0801F7AC @ =0x030013D0
	ldr r4, [r1]
	b _0801F7D0
	.align 2, 0
_0801F7AC: .4byte 0x030013D0
_0801F7B0:
	adds r0, r2, #0
	adds r0, #0x81
	ldrb r0, [r0]
	cmp r0, #2
	bne _0801F7C8
_0801F7BA:
	movs r0, #3
	bl sub_0800B828
	ldr r1, [r4]
	adds r1, #0x81
	strb r0, [r1]
	b _0801F7E4
_0801F7C8:
	movs r0, #2
	bl sub_0800B828
	ldr r4, [r4]
_0801F7D0:
	adds r4, #0x81
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r0, #1
	ldrb r1, [r4]
	adds r0, r0, r1
_0801F7DC:
	movs r1, #3
	bl __modsi3
_0801F7E2:
	strb r0, [r4]
_0801F7E4:
	ldr r0, _0801F7FC @ =0x030013D0
	ldr r1, [r0]
	adds r1, #0x7c
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	movs r0, #2
	bl sub_0801F604
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801F7FC: .4byte 0x030013D0

	thumb_func_start sub_0801F800
sub_0801F800: @ 0x0801F800
	push {r4, r5, lr}
	ldr r1, _0801F81C @ =0x030013D0
	ldr r0, [r1]
	ldrb r0, [r0, #0x12]
	adds r5, r1, #0
	cmp r0, #5
	bls _0801F810
	b _0801FB38
_0801F810:
	lsls r0, r0, #2
	ldr r1, _0801F820 @ =_0801F824
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0801F81C: .4byte 0x030013D0
_0801F820: .4byte _0801F824
_0801F824: @ jump table
	.4byte _0801F83C @ case 0
	.4byte _0801F8A4 @ case 1
	.4byte _0801F8E4 @ case 2
	.4byte _0801F948 @ case 3
	.4byte _0801F9F2 @ case 4
	.4byte _0801FAAC @ case 5
_0801F83C:
	bl sub_08005934
	ldr r4, _0801F858 @ =0x030013D0
	ldr r1, [r4]
	adds r0, r1, #0
	adds r0, #0x7c
	ldrb r0, [r0]
	cmp r0, #1
	bne _0801F85C
	adds r1, #0xa8
	movs r0, #0
	strb r0, [r1]
	b _0801F878
	.align 2, 0
_0801F858: .4byte 0x030013D0
_0801F85C:
	movs r0, #2
	bl sub_0800B828
	ldr r4, [r4]
	adds r4, #0xa8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r0, #1
	ldrb r1, [r4]
	adds r0, r0, r1
	movs r1, #3
	bl __modsi3
	strb r0, [r4]
_0801F878:
	ldr r1, _0801F89C @ =0x08084664
	ldr r4, _0801F8A0 @ =0x030013D0
	ldr r0, [r4]
	adds r0, #0xa8
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	bl sub_08005A2C
	ldr r1, [r4]
	movs r0, #1
	strb r0, [r1, #0x12]
	b _0801FB38
	.align 2, 0
_0801F89C: .4byte 0x08084664
_0801F8A0: .4byte 0x030013D0
_0801F8A4:
	ldr r1, [r5]
	ldr r0, [r1, #0x28]
	ldrb r0, [r0, #1]
	lsrs r0, r0, #7
	cmp r0, #0
	bne _0801F8B2
	b _0801FB38
_0801F8B2:
	ldr r2, [r1, #0x2c]
	ldrb r0, [r2, #1]
	lsrs r0, r0, #7
	cmp r0, #0
	bne _0801F8BE
	b _0801FB38
_0801F8BE:
	ldrh r0, [r1, #0x14]
	adds r0, #1
	strh r0, [r1, #0x14]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x3b
	bhi _0801F8CE
	b _0801FB38
_0801F8CE:
	adds r0, r2, #0
	movs r1, #1
	bl sub_08009AFC
	ldr r1, [r5]
	movs r0, #2
	strb r0, [r1, #0x12]
	ldr r1, [r5]
	movs r0, #0
	strh r0, [r1, #0x14]
	b _0801FB38
_0801F8E4:
	ldr r0, [r5]
	ldr r1, [r0, #0x2c]
	ldrb r0, [r1, #1]
	lsrs r0, r0, #7
	cmp r0, #0
	bne _0801F8F2
	b _0801FB38
_0801F8F2:
	adds r0, r1, #0
	movs r1, #2
	bl sub_08009AFC
	ldr r0, [r5]
	adds r0, #0xa6
	movs r4, #0
	strb r4, [r0]
	ldr r1, [r5]
	ldr r0, [r1, #0x30]
	adds r1, #0x81
	ldrb r1, [r1]
	adds r1, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl sub_08009AFC
	ldr r0, [r5]
	ldr r0, [r0, #0x30]
	movs r1, #1
	bl sub_08009A34
	bl sub_0801FDB0
	ldr r0, [r5]
	adds r1, r0, #0
	adds r1, #0xa4
	strh r4, [r1]
	ldr r1, _0801F944 @ =0x080846CE
	adds r0, #0x81
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	bl m4aSongNumStart
	ldr r1, [r5]
	movs r0, #3
	strb r0, [r1, #0x12]
	b _0801FB38
	.align 2, 0
_0801F944: .4byte 0x080846CE
_0801F948:
	ldr r2, [r5]
	adds r1, r2, #0
	adds r1, #0xa4
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	ldr r0, _0801F9A0 @ =0x030024B0
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0801F9E0
	movs r4, #4
	strb r4, [r2, #0x12]
	ldr r0, [r5]
	ldr r0, [r0, #0x28]
	movs r1, #1
	bl sub_08009AFC
	ldr r0, [r5]
	ldr r0, [r0, #0x28]
	movs r1, #0
	bl sub_08009B40
	ldr r2, [r5]
	adds r0, r2, #0
	adds r0, #0xa4
	ldrh r0, [r0]
	adds r3, r0, #6
	ldr r1, _0801F9A4 @ =0x080846C8
	adds r0, r2, #0
	adds r0, #0x81
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	subs r0, r1, #5
	cmp r3, r0
	bge _0801F9A8
	adds r1, r2, #0
	adds r1, #0xa6
	movs r0, #1
	strb r0, [r1]
	b _0801FB38
	.align 2, 0
_0801F9A0: .4byte 0x030024B0
_0801F9A4: .4byte 0x080846C8
_0801F9A8:
	subs r0, r1, #1
	cmp r3, r0
	bge _0801F9B8
	adds r1, r2, #0
	adds r1, #0xa6
	movs r0, #2
	strb r0, [r1]
	b _0801FB38
_0801F9B8:
	adds r0, r1, #1
	cmp r3, r0
	bgt _0801F9C8
	adds r1, r2, #0
	adds r1, #0xa6
	movs r0, #3
	strb r0, [r1]
	b _0801FB38
_0801F9C8:
	adds r0, r1, #5
	cmp r3, r0
	bgt _0801F9D6
	adds r0, r2, #0
	adds r0, #0xa6
	strb r4, [r0]
	b _0801FB38
_0801F9D6:
	adds r1, r2, #0
	adds r1, #0xa6
	movs r0, #5
	strb r0, [r1]
	b _0801FB38
_0801F9E0:
	adds r0, r2, #0
	adds r0, #0x80
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801F9EC
	b _0801FB38
_0801F9EC:
	movs r0, #5
	strb r0, [r2, #0x12]
	b _0801FB38
_0801F9F2:
	ldr r3, [r5]
	adds r1, r3, #0
	adds r1, #0xa4
	ldrh r0, [r1]
	adds r4, r0, #1
	strh r4, [r1]
	adds r0, r3, #0
	adds r0, #0xa6
	ldrb r0, [r0]
	cmp r0, #3
	beq _0801FA18
	cmp r0, #3
	bgt _0801FA12
	cmp r0, #2
	beq _0801FA50
	b _0801FAA0
_0801FA12:
	cmp r0, #4
	beq _0801FA70
	b _0801FAA0
_0801FA18:
	ldr r2, _0801FA48 @ =0x080846C8
	adds r0, r3, #0
	adds r0, #0x81
	ldrb r1, [r0]
	lsls r1, r1, #1
	adds r1, r1, r2
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r1]
	cmp r0, r1
	beq _0801FA30
	b _0801FB38
_0801FA30:
	bl sub_0801FE14
	ldr r0, [r5]
	ldr r0, [r0, #0x30]
	movs r1, #1
	bl sub_08009AFC
	bl sub_08020420
	ldr r0, _0801FA4C @ =0x00000143
	b _0801FA9C
	.align 2, 0
_0801FA48: .4byte 0x080846C8
_0801FA4C: .4byte 0x00000143
_0801FA50:
	ldrh r2, [r1]
	ldr r1, _0801FA6C @ =0x080846C8
	adds r0, r3, #0
	adds r0, #0x81
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	subs r0, #2
	cmp r2, r0
	bne _0801FB38
	bl sub_0801FEB0
	b _0801FA8A
	.align 2, 0
_0801FA6C: .4byte 0x080846C8
_0801FA70:
	ldrh r2, [r1]
	ldr r1, _0801FAA8 @ =0x080846C8
	adds r0, r3, #0
	adds r0, #0x81
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r0, #2
	cmp r2, r0
	bne _0801FB38
	bl sub_0801FE64
_0801FA8A:
	bl sub_08020420
	ldr r0, [r5]
	ldr r0, [r0, #0x30]
	movs r1, #1
	bl sub_08009AFC
	movs r0, #0xa2
	lsls r0, r0, #1
_0801FA9C:
	bl m4aSongNumStart
_0801FAA0:
	ldr r1, [r5]
	movs r0, #5
	strb r0, [r1, #0x12]
	b _0801FB38
	.align 2, 0
_0801FAA8: .4byte 0x080846C8
_0801FAAC:
	adds r3, r5, #0
	ldr r1, [r3]
	adds r0, r1, #0
	adds r0, #0x80
	ldrb r2, [r0]
	cmp r2, #0
	bne _0801FB38
	ldr r0, [r1, #0x28]
	ldrb r0, [r0, #1]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _0801FB38
	ldr r0, [r1, #0x2c]
	ldrb r0, [r0, #1]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _0801FB38
	ldrh r0, [r1, #0x14]
	adds r0, #1
	strh r0, [r1, #0x14]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x1d
	bls _0801FB38
	strh r2, [r1, #0x14]
	adds r0, r1, #0
	adds r0, #0xa6
	ldrb r0, [r0]
	cmp r0, #3
	bne _0801FAF0
	adds r1, #0x7d
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_0801FAF0:
	ldr r1, [r3]
	adds r0, r1, #0
	adds r0, #0x7c
	ldrb r0, [r0]
	cmp r0, #4
	bhi _0801FB06
	adds r0, r1, #0
	adds r0, #0xa6
	ldrb r0, [r0]
	cmp r0, #3
	bne _0801FB12
_0801FB06:
	bl sub_0802056C
	movs r0, #3
	bl sub_0801F604
	b _0801FB2A
_0801FB12:
	movs r0, #1
	bl sub_0801F604
	ldr r0, [r5]
	ldr r1, [r0, #0x28]
	ldrb r0, [r1, #0x10]
	cmp r0, #1
	bne _0801FB2A
	adds r0, r1, #0
	movs r1, #2
	bl sub_08009AFC
_0801FB2A:
	ldr r0, _0801FB40 @ =0x030013D0
	ldr r0, [r0]
	adds r1, r0, #0
	adds r1, #0x7c
	ldrb r1, [r1]
	adds r0, #0x7e
	strb r1, [r0]
_0801FB38:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801FB40: .4byte 0x030013D0

	thumb_func_start sub_0801FB44
sub_0801FB44: @ 0x0801FB44
	push {r4, lr}
	sub sp, #4
	ldr r4, _0801FB5C @ =0x030013D0
	ldr r1, [r4]
	ldrb r0, [r1, #0x12]
	cmp r0, #1
	beq _0801FBA8
	cmp r0, #1
	bgt _0801FB60
	cmp r0, #0
	beq _0801FB66
	b _0801FC36
	.align 2, 0
_0801FB5C: .4byte 0x030013D0
_0801FB60:
	cmp r0, #2
	beq _0801FC28
	b _0801FC36
_0801FB66:
	adds r0, r1, #0
	adds r0, #0x7d
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801FB80
	bl sub_080193B4
	ldr r0, [r4]
	ldr r0, [r0, #0x2c]
	movs r1, #4
	bl sub_08009AFC
	b _0801FB92
_0801FB80:
	ldr r0, [r1, #0x2c]
	movs r1, #3
	bl sub_08009AFC
	ldr r0, [r4]
	ldr r0, [r0, #0x2c]
	movs r1, #2
	bl sub_08009B40
_0801FB92:
	ldr r2, _0801FBA4 @ =0x030013D0
	ldr r1, [r2]
	movs r3, #0
	movs r0, #1
	strb r0, [r1, #0x12]
	ldr r0, [r2]
	strh r3, [r0, #0x14]
	b _0801FC36
	.align 2, 0
_0801FBA4: .4byte 0x030013D0
_0801FBA8:
	ldr r0, [r1, #0x28]
	ldrb r0, [r0, #1]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _0801FC36
	ldr r0, [r1, #0x2c]
	ldrb r0, [r0, #1]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _0801FC36
	movs r0, #0
	strh r0, [r1, #0x14]
	adds r0, r1, #0
	adds r0, #0x7d
	ldrb r0, [r0]
	cmp r0, #0
	bne _0801FBE4
	bl sub_08005934
	ldr r0, _0801FBE0 @ =0x08084658
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	bl sub_08005A2C
	b _0801FBEA
	.align 2, 0
_0801FBE0: .4byte 0x08084658
_0801FBE4:
	movs r0, #0x5a
	bl ProcSleep_08002B98
_0801FBEA:
	movs r0, #0
	str r0, [sp]
	movs r0, #1
	movs r1, #3
	movs r2, #0
	movs r3, #0x1d
	bl sub_0800031C
	ldr r2, _0801FC1C @ =0x030024E0
	ldrh r1, [r2]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _0801FC20 @ =0x030013D0
	ldr r1, [r0]
	movs r0, #2
	strb r0, [r1, #0x12]
	ldr r0, _0801FC24 @ =0x030056F0
	movs r1, #4
	bl m4aMPlayFadeOut
	b _0801FC36
	.align 2, 0
_0801FC1C: .4byte 0x030024E0
_0801FC20: .4byte 0x030013D0
_0801FC24: .4byte 0x030056F0
_0801FC28:
	bl sub_080003D0
	cmp r0, #0
	beq _0801FC36
	movs r0, #4
	bl sub_0801F604
_0801FC36:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0801FC40
sub_0801FC40: @ 0x0801FC40
	push {r4, lr}
	bl sub_080058A4
	ldr r4, _0801FCB4 @ =0x030013D0
	ldr r0, [r4]
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	ldr r0, [r4]
	movs r1, #2
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	ldr r0, [r4]
	movs r1, #4
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	ldr r0, [r4]
	movs r1, #6
	ldrsh r0, [r0, r1]
	bl sub_08007A08
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
	ldr r0, [r0, #0x5c]
	bl sub_08007CF8
	ldr r0, [r4]
	ldr r0, [r0, #0x64]
	bl sub_08007CF8
	ldr r0, [r4]
	ldr r0, [r0, #0x6c]
	bl sub_08007CF8
	ldr r1, [r4]
	movs r0, #1
	strb r0, [r1, #0x10]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801FCB4: .4byte 0x030013D0

	thumb_func_start sub_0801FCB8
sub_0801FCB8: @ 0x0801FCB8
	push {r4, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _0801FCD8 @ =0x030013D0
	ldr r0, [r0]
	lsls r1, r4, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	strb r4, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801FCD8: .4byte 0x030013D0

	thumb_func_start sub_0801FCDC
sub_0801FCDC: @ 0x0801FCDC
	push {r4, r5, r6, lr}
	adds r4, r1, #0
	lsls r0, r0, #0x18
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r6, _0801FD1C @ =0x030013D0
	ldr r1, [r6]
	lsrs r0, r0, #0x17
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	bl sub_08007BBC
	adds r5, r0, #0
	ldr r1, [r6]
	ldrb r0, [r5]
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	ldr r1, _0801FD20 @ =0x080846E8
	lsls r4, r4, #2
	adds r4, r4, r1
	ldr r1, [r4]
	bl sub_08007B84
	movs r0, #0
	strb r0, [r5, #1]
	strh r0, [r5, #2]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801FD1C: .4byte 0x030013D0
_0801FD20: .4byte 0x080846E8

	thumb_func_start sub_0801FD24
sub_0801FD24: @ 0x0801FD24
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _0801FD40 @ =0x030013D0
	ldr r1, [r1]
	lsls r2, r0, #3
	adds r1, r1, r2
	movs r2, #0
	strb r2, [r1, #0x18]
	movs r1, #1
	bl sub_0801FCDC
	pop {r0}
	bx r0
	.align 2, 0
_0801FD40: .4byte 0x030013D0

	thumb_func_start sub_0801FD44
sub_0801FD44: @ 0x0801FD44
	push {lr}
	bl sub_08007BD4
	ldrb r0, [r0]
	bl sub_0801FD24
	pop {r0}
	bx r0

	thumb_func_start sub_0801FD54
sub_0801FD54: @ 0x0801FD54
	bx lr
	.align 2, 0

	thumb_func_start sub_0801FD58
sub_0801FD58: @ 0x0801FD58
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _0801FD8C @ =0x030013D0
	ldr r0, [r5]
	movs r1, #4
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	adds r6, r0, #0
	ldr r0, [r5]
	movs r1, #4
	ldrsh r0, [r0, r1]
	ldr r1, _0801FD90 @ =0x080846F0
	lsls r4, r4, #2
	adds r4, r4, r1
	ldr r1, [r4]
	bl sub_08007B84
	movs r0, #0
	strb r0, [r6]
	strh r0, [r6, #2]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801FD8C: .4byte 0x030013D0
_0801FD90: .4byte 0x080846F0

	thumb_func_start sub_0801FD94
sub_0801FD94: @ 0x0801FD94
	push {lr}
	ldr r0, _0801FDAC @ =0x030013D0
	ldr r0, [r0]
	adds r0, #0x80
	movs r1, #0
	strb r1, [r0]
	movs r0, #1
	bl sub_0801FD58
	pop {r0}
	bx r0
	.align 2, 0
_0801FDAC: .4byte 0x030013D0

	thumb_func_start sub_0801FDB0
sub_0801FDB0: @ 0x0801FDB0
	push {lr}
	ldr r2, _0801FE08 @ =0x030013D0
	ldr r0, [r2]
	adds r0, #0x80
	movs r3, #0
	movs r1, #1
	strb r1, [r0]
	ldr r2, [r2]
	mov ip, r2
	mov r0, ip
	adds r0, #0x94
	str r3, [r0]
	adds r0, #4
	str r3, [r0]
	mov r1, ip
	adds r1, #0x8c
	movs r0, #0xc0
	lsls r0, r0, #0x10
	str r0, [r1]
	adds r1, #4
	movs r0, #0x98
	lsls r0, r0, #0xf
	str r0, [r1]
	adds r2, #0x9c
	ldr r1, _0801FE0C @ =0x080846B0
	mov r3, ip
	adds r3, #0x81
	ldrb r0, [r3]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r2]
	adds r2, #4
	ldr r1, _0801FE10 @ =0x080846BC
	ldrb r0, [r3]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r2]
	movs r0, #2
	bl sub_0801FD58
	pop {r0}
	bx r0
	.align 2, 0
_0801FE08: .4byte 0x030013D0
_0801FE0C: .4byte 0x080846B0
_0801FE10: .4byte 0x080846BC

	thumb_func_start sub_0801FE14
sub_0801FE14: @ 0x0801FE14
	push {lr}
	ldr r2, _0801FE58 @ =0x030013D0
	ldr r0, [r2]
	adds r0, #0x80
	movs r3, #0
	movs r1, #1
	strb r1, [r0]
	ldr r2, [r2]
	adds r0, r2, #0
	adds r0, #0x94
	str r3, [r0]
	adds r0, #4
	str r3, [r0]
	adds r1, r2, #0
	adds r1, #0x8c
	subs r0, #0x14
	ldr r0, [r0]
	str r0, [r1]
	adds r1, #4
	adds r0, r2, #0
	adds r0, #0x88
	ldr r0, [r0]
	str r0, [r1]
	adds r1, #0xc
	ldr r0, _0801FE5C @ =0xFFFA0000
	str r0, [r1]
	adds r1, #4
	ldr r0, _0801FE60 @ =0x0004DA6D
	str r0, [r1]
	movs r0, #2
	bl sub_0801FD58
	pop {r0}
	bx r0
	.align 2, 0
_0801FE58: .4byte 0x030013D0
_0801FE5C: .4byte 0xFFFA0000
_0801FE60: .4byte 0x0004DA6D

	thumb_func_start sub_0801FE64
sub_0801FE64: @ 0x0801FE64
	push {lr}
	ldr r2, _0801FEA8 @ =0x030013D0
	ldr r0, [r2]
	adds r0, #0x80
	movs r3, #0
	movs r1, #1
	strb r1, [r0]
	ldr r2, [r2]
	adds r0, r2, #0
	adds r0, #0x94
	str r3, [r0]
	adds r0, #4
	str r3, [r0]
	adds r1, r2, #0
	adds r1, #0x8c
	movs r0, #0xa0
	lsls r0, r0, #0xe
	str r0, [r1]
	adds r1, #4
	movs r0, #0xa8
	lsls r0, r0, #0xf
	str r0, [r1]
	adds r1, #0xc
	movs r0, #0x80
	lsls r0, r0, #0xa
	str r0, [r1]
	adds r1, #4
	ldr r0, _0801FEAC @ =0x0004DA6D
	str r0, [r1]
	movs r0, #2
	bl sub_0801FD58
	pop {r0}
	bx r0
	.align 2, 0
_0801FEA8: .4byte 0x030013D0
_0801FEAC: .4byte 0x0004DA6D

	thumb_func_start sub_0801FEB0
sub_0801FEB0: @ 0x0801FEB0
	push {lr}
	ldr r2, _0801FEF4 @ =0x030013D0
	ldr r0, [r2]
	adds r0, #0x80
	movs r3, #0
	movs r1, #1
	strb r1, [r0]
	ldr r2, [r2]
	adds r0, r2, #0
	adds r0, #0x94
	str r3, [r0]
	adds r0, #4
	str r3, [r0]
	adds r1, r2, #0
	adds r1, #0x8c
	subs r0, #0x14
	ldr r0, [r0]
	str r0, [r1]
	adds r1, #4
	adds r0, r2, #0
	adds r0, #0x88
	ldr r0, [r0]
	str r0, [r1]
	adds r1, #0xc
	ldr r0, _0801FEF8 @ =0xFFFC0000
	str r0, [r1]
	adds r1, #4
	ldr r0, _0801FEFC @ =0xFFFF206A
	str r0, [r1]
	movs r0, #2
	bl sub_0801FD58
	pop {r0}
	bx r0
	.align 2, 0
_0801FEF4: .4byte 0x030013D0
_0801FEF8: .4byte 0xFFFC0000
_0801FEFC: .4byte 0xFFFF206A

	thumb_func_start sub_0801FF00
sub_0801FF00: @ 0x0801FF00
	push {lr}
	bl sub_08007BD4
	ldr r0, _0801FF24 @ =0x030013D0
	ldr r1, [r0]
	adds r2, r1, #0
	adds r2, #0x84
	movs r0, #0xc0
	lsls r0, r0, #0x10
	str r0, [r2]
	adds r1, #0x88
	movs r0, #0x98
	lsls r0, r0, #0xf
	str r0, [r1]
	bl sub_0801FD94
	pop {r0}
	bx r0
	.align 2, 0
_0801FF24: .4byte 0x030013D0

	thumb_func_start sub_0801FF28
sub_0801FF28: @ 0x0801FF28
	bx lr
	.align 2, 0

	thumb_func_start sub_0801FF2C
sub_0801FF2C: @ 0x0801FF2C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	bl sub_08007BD4
	adds r7, r0, #0
	ldrh r0, [r7, #2]
	adds r0, #1
	movs r1, #0
	mov sl, r1
	strh r0, [r7, #2]
	ldr r2, _08020030 @ =0x030013D0
	ldr r2, [r2]
	mov ip, r2
	mov r3, ip
	adds r3, #0x84
	ldr r0, [r3]
	mov sb, r0
	mov r4, ip
	adds r4, #0x88
	ldr r1, [r4]
	mov r8, r1
	mov r0, ip
	adds r0, #0x9c
	ldr r0, [r0]
	mov r6, ip
	adds r6, #0x94
	ldr r1, [r6]
	subs r1, r1, r0
	str r1, [r6]
	mov r0, ip
	adds r0, #0x8c
	ldr r0, [r0]
	adds r0, r0, r1
	str r0, [r3]
	mov r0, ip
	adds r0, #0xa0
	ldr r0, [r0]
	mov r5, ip
	adds r5, #0x98
	ldr r2, [r5]
	adds r2, r2, r0
	str r2, [r5]
	ldrh r0, [r7, #2]
	lsls r0, r0, #1
	subs r0, #1
	ldr r1, _08020034 @ =0x000010B9
	muls r0, r1, r0
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	subs r2, r2, r0
	str r2, [r5]
	mov r0, ip
	adds r0, #0x90
	ldr r0, [r0]
	subs r2, r0, r2
	str r2, [r4]
	ldr r1, [r3]
	mov r0, sb
	subs r0, r1, r0
	mov sb, r0
	mov r0, r8
	subs r0, r2, r0
	mov r8, r0
	movs r4, #0xb8
	lsls r4, r4, #0xf
	cmp r2, r4
	ble _08020038
	mov r1, sl
	strh r1, [r7, #2]
	mov r2, sl
	str r2, [r6]
	str r2, [r5]
	mov r1, sb
	lsls r0, r1, #3
	movs r1, #0xa
	bl Div
	ldr r2, _08020030 @ =0x030013D0
	ldr r1, [r2]
	adds r1, #0x9c
	rsbs r0, r0, #0
	str r0, [r1]
	mov r1, r8
	lsls r0, r1, #1
	add r0, r8
	movs r1, #0xa
	bl Div
	ldr r1, _08020030 @ =0x030013D0
	ldr r2, [r1]
	adds r1, r2, #0
	adds r1, #0xa0
	rsbs r0, r0, #0
	str r0, [r1]
	subs r1, #0x14
	adds r0, r2, #0
	adds r0, #0x84
	ldr r0, [r0]
	str r0, [r1]
	adds r0, r2, #0
	adds r0, #0x90
	str r4, [r0]
	mov r0, sb
	cmp r0, #0
	bge _08020008
	rsbs r0, r0, #0
_08020008:
	asrs r0, r0, #0x10
	cmp r0, #0
	bne _08020020
	mov r0, r8
	cmp r0, #0
	bge _08020016
	rsbs r0, r0, #0
_08020016:
	asrs r0, r0, #0x10
	cmp r0, #0
	bne _08020020
	bl sub_0801FD94
_08020020:
	ldr r0, _08020030 @ =0x030013D0
	ldr r0, [r0]
	ldr r0, [r0, #0x30]
	movs r1, #1
	bl sub_08009AFC
	b _0802005A
	.align 2, 0
_08020030: .4byte 0x030013D0
_08020034: .4byte 0x000010B9
_08020038:
	movs r0, #0x80
	lsls r0, r0, #0xc
	adds r1, r1, r0
	movs r0, #0x80
	lsls r0, r0, #0x11
	cmp r1, r0
	bhi _0802004C
	ldr r0, _08020068 @ =0xFFF80000
	cmp r2, r0
	bge _0802005A
_0802004C:
	mov r1, ip
	ldr r0, [r1, #0x30]
	movs r1, #1
	bl sub_08009AFC
	bl sub_0801FD94
_0802005A:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08020068: .4byte 0xFFF80000
