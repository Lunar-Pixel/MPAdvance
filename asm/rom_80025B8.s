	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .text
	.ARM
	.syntax unified

	thumb_func_start sub_080025B8
sub_080025B8: @ 0x080025B8
	ldr r0, _080025C0 @ =0x03001400
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_080025C0: .4byte 0x03001400

	thumb_func_start sub_080025C4
sub_080025C4: @ 0x080025C4
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r0, r1
	bx lr
	.align 2, 0

	thumb_func_start sub_080025D0
sub_080025D0: @ 0x080025D0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	str r0, [sp, #4]
	str r1, [sp, #8]
	str r3, [sp, #0xc]
	ldr r0, _08002620 @ =0x0203A220
	lsls r2, r2, #2
	adds r2, r2, r0
	ldr r2, [r2]
	str r2, [sp, #0x18]
	movs r0, #0
	str r0, [sp, #0x10]
	mov r8, r0
	ldrh r0, [r2]
	ldr r1, _08002624 @ =0x0000FFFF
	cmp r0, r1
	beq _080026C8
	mov r7, sp
	ldr r0, _08002628 @ =0x00003FFF
	mov sl, r0
_08002600:
	ldrh r0, [r2]
	movs r1, #0xc0
	lsls r1, r1, #8
	ands r1, r0
	movs r3, #0x80
	lsls r3, r3, #8
	adds r4, r0, #0
	cmp r1, r3
	beq _0800264A
	cmp r1, r3
	bgt _0800262C
	movs r0, #0x80
	lsls r0, r0, #7
	cmp r1, r0
	beq _08002636
	b _08002684
	.align 2, 0
_08002620: .4byte 0x0203A220
_08002624: .4byte 0x0000FFFF
_08002628: .4byte 0x00003FFF
_0800262C:
	movs r0, #0xc0
	lsls r0, r0, #8
	cmp r1, r0
	beq _08002670
	b _08002684
_08002636:
	movs r3, #1
	ldr r1, [sp, #0xc]
	lsls r0, r1, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	mov r1, sl
	ands r0, r1
	strh r0, [r7]
	adds r2, #6
	b _0800268C
_0800264A:
	movs r3, #2
	ldr r1, [sp, #0xc]
	lsls r0, r1, #1
	adds r0, r0, r2
	ldrh r1, [r0]
	ldr r0, _0800266C @ =0x00003FFF
	ands r0, r1
	strh r0, [r7]
	ldr r1, [sp, #0x40]
	lsls r0, r1, #1
	adds r0, r0, r2
	ldrh r1, [r0]
	ldr r0, _0800266C @ =0x00003FFF
	ands r0, r1
	strh r0, [r7, #2]
	adds r2, #6
	b _0800268C
	.align 2, 0
_0800266C: .4byte 0x00003FFF
_08002670:
	movs r3, #1
	ldr r1, [sp, #0x44]
	lsls r0, r1, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	mov r1, sl
	ands r0, r1
	strh r0, [r7]
	adds r2, #0xc
	b _0800268C
_08002684:
	movs r3, #1
	mov r0, sl
	ands r0, r4
	strh r0, [r7]
_0800268C:
	adds r2, #2
	mov sb, r2
	cmp r3, #0
	beq _080026BE
	mov r5, sp
	adds r6, r3, #0
_08002698:
	ldrh r1, [r5]
	adds r1, #1
	ldr r0, [sp, #8]
	bl sub_080025C4
	adds r4, r0, #0
	ldrh r1, [r5]
	ldr r0, [sp, #8]
	bl sub_080025C4
	subs r4, r4, r0
	add r8, r4
	ldr r2, [sp, #0x10]
	adds r2, #1
	str r2, [sp, #0x10]
	adds r5, #2
	subs r6, #1
	cmp r6, #0
	bne _08002698
_080026BE:
	mov r2, sb
	ldrh r0, [r2]
	ldr r1, _08002708 @ =0x0000FFFF
	cmp r0, r1
	bne _08002600
_080026C8:
	ldr r2, [sp, #0x10]
	lsls r0, r2, #2
	mov r1, r8
	adds r1, r1, r0
	str r1, [sp, #0x14]
	ldr r2, [sp, #4]
	adds r7, r2, r0
	ldr r2, [sp, #0x18]
	movs r0, #0
	str r0, [sp, #0x10]
	ldrh r0, [r2]
	ldr r1, _08002708 @ =0x0000FFFF
	cmp r0, r1
	bne _080026E6
	b _080027EC
_080026E6:
	mov sl, sp
_080026E8:
	ldrh r0, [r2]
	movs r1, #0xc0
	lsls r1, r1, #8
	ands r1, r0
	movs r3, #0x80
	lsls r3, r3, #8
	adds r4, r0, #0
	cmp r1, r3
	beq _08002730
	cmp r1, r3
	bgt _0800270C
	movs r0, #0x80
	lsls r0, r0, #7
	cmp r1, r0
	beq _08002716
	b _08002778
	.align 2, 0
_08002708: .4byte 0x0000FFFF
_0800270C:
	movs r0, #0xc0
	lsls r0, r0, #8
	cmp r1, r0
	beq _0800275C
	b _08002778
_08002716:
	movs r3, #1
	ldr r1, [sp, #0xc]
	lsls r0, r1, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	ldr r1, _0800272C @ =0x00003FFF
	ands r0, r1
	mov r1, sl
	strh r0, [r1]
	adds r2, #6
	b _08002782
	.align 2, 0
_0800272C: .4byte 0x00003FFF
_08002730:
	movs r3, #2
	ldr r1, [sp, #0xc]
	lsls r0, r1, #1
	adds r0, r0, r2
	ldrh r1, [r0]
	ldr r0, _08002758 @ =0x00003FFF
	ands r0, r1
	mov r1, sl
	strh r0, [r1]
	ldr r1, [sp, #0x40]
	lsls r0, r1, #1
	adds r0, r0, r2
	ldrh r1, [r0]
	ldr r0, _08002758 @ =0x00003FFF
	ands r0, r1
	mov r1, sl
	strh r0, [r1, #2]
	adds r2, #6
	b _08002782
	.align 2, 0
_08002758: .4byte 0x00003FFF
_0800275C:
	movs r3, #1
	ldr r1, [sp, #0x44]
	lsls r0, r1, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	ldr r1, _08002774 @ =0x00003FFF
	ands r0, r1
	mov r1, sl
	strh r0, [r1]
	adds r2, #0xc
	b _08002782
	.align 2, 0
_08002774: .4byte 0x00003FFF
_08002778:
	movs r3, #1
	ldr r0, _08002800 @ =0x00003FFF
	ands r0, r4
	mov r1, sl
	strh r0, [r1]
_08002782:
	movs r6, #0
	adds r2, #2
	mov sb, r2
	cmp r6, r3
	bge _080027E0
_0800278C:
	ldr r2, [sp, #0x10]
	lsls r0, r2, #2
	ldr r1, [sp, #4]
	adds r0, r0, r1
	subs r1, r7, r1
	str r1, [r0]
	lsls r0, r6, #1
	mov r2, sp
	adds r4, r2, r0
	ldrh r1, [r4]
	ldr r0, [sp, #8]
	str r3, [sp, #0x1c]
	bl sub_080025C4
	adds r5, r0, #0
	ldrh r1, [r4]
	adds r1, #1
	ldr r0, [sp, #8]
	bl sub_080025C4
	subs r0, r0, r5
	mov r8, r0
	ldr r1, [sp, #0x10]
	adds r1, #1
	adds r2, r6, #1
	ldr r3, [sp, #0x1c]
	cmp r0, #0
	beq _080027D8
_080027C4:
	ldrb r0, [r5]
	strb r0, [r7]
	adds r5, #1
	adds r7, #1
	movs r0, #1
	rsbs r0, r0, #0
	add r8, r0
	mov r0, r8
	cmp r0, #0
	bne _080027C4
_080027D8:
	str r1, [sp, #0x10]
	adds r6, r2, #0
	cmp r6, r3
	blt _0800278C
_080027E0:
	mov r2, sb
	ldrh r0, [r2]
	ldr r1, _08002804 @ =0x0000FFFF
	cmp r0, r1
	beq _080027EC
	b _080026E8
_080027EC:
	ldr r0, [sp, #0x14]
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08002800: .4byte 0x00003FFF
_08002804: .4byte 0x0000FFFF

	thumb_func_start sub_08002808
sub_08002808: @ 0x08002808
	push {lr}
	cmp r0, #0
	beq _08002828
	ldr r1, [r0, #0x48]
	cmp r1, #0
	beq _08002828
	ldr r0, [r0, #0x24]
	cmp r1, r0
	bhs _08002822
	ldr r1, [r1]
	ldr r0, _08002824 @ =0x12345678
	cmp r1, r0
	beq _08002828
_08002822:
	b _08002822
	.align 2, 0
_08002824: .4byte 0x12345678
_08002828:
	pop {r0}
	bx r0

	thumb_func_start sub_0800282C
sub_0800282C: @ 0x0800282C
	push {r4, r5, r6, lr}
	sub sp, #8
	movs r4, #0
	str r4, [sp]
	ldr r1, _08002894 @ =0x030022E0
	ldr r2, _08002898 @ =0x0500000B
	mov r0, sp
	bl CpuSet
	add r0, sp, #4
	movs r5, #0
	strh r4, [r0]
	ldr r6, _0800289C @ =0x02030130
	ldr r2, _080028A0 @ =0x01000360
	adds r1, r6, #0
	bl CpuSet
	str r4, [r6, #0x2c]
	adds r0, r6, #0
	adds r0, #0x6c
	str r0, [r6, #0x30]
	subs r0, #0x38
	strb r5, [r0]
	adds r1, r6, #0
	adds r1, #0x35
	movs r0, #0xff
	strb r0, [r1]
	movs r2, #1
	rsbs r2, r2, #0
	str r2, [r6, #0x38]
	adds r0, r6, #0
	adds r0, #0x98
	str r6, [r0]
	adds r0, #4
	str r4, [r0]
	adds r1, #0x6b
	adds r0, r2, #0
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r0, r6, #0
	adds r0, #0xa4
	str r2, [r0]
	ldr r0, _080028A4 @ =0x020376A0
	str r4, [r0]
	ldr r1, _080028A8 @ =0x02033788
	movs r0, #2
	strb r0, [r1]
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08002894: .4byte 0x030022E0
_08002898: .4byte 0x0500000B
_0800289C: .4byte 0x02030130
_080028A0: .4byte 0x01000360
_080028A4: .4byte 0x020376A0
_080028A8: .4byte 0x02033788

	thumb_func_start sub_080028AC
sub_080028AC: @ 0x080028AC
	bx lr
	.align 2, 0

	thumb_func_start sub_080028B0
sub_080028B0: @ 0x080028B0
	push {r4, lr}
	ldr r4, _080028CC @ =0x02030130
	ldr r0, _080028D0 @ =0x02033788
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800294E
	ldr r0, _080028D4 @ =0x030022E0
	bl sub_08076AD8
	cmp r0, #0
	beq _08002944
	ldr r0, _080028D8 @ =0x020376A0
	ldr r4, [r0]
	b _08002944
	.align 2, 0
_080028CC: .4byte 0x02030130
_080028D0: .4byte 0x02033788
_080028D4: .4byte 0x030022E0
_080028D8: .4byte 0x020376A0
_080028DC:
	ldr r4, [r4, #0x30]
	ldr r0, _0800291C @ =0x020376A0
	str r4, [r0]
	adds r1, r0, #0
	cmp r4, #0
	beq _0800294A
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	beq _08002944
	adds r0, r4, #0
	adds r0, #0x34
	ldrb r0, [r0]
	cmp r0, #0
	beq _08002944
	cmp r0, #0xff
	beq _08002944
	adds r2, r4, #0
	adds r2, #0x35
	ldrb r1, [r2]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08002944
	ldrb r1, [r2]
	movs r0, #0x81
	rsbs r0, r0, #0
	ands r1, r0
	cmp r1, #1
	beq _08002920
	cmp r1, #2
	beq _08002924
	b _08002944
	.align 2, 0
_0800291C: .4byte 0x020376A0
_08002920:
	movs r0, #2
	strb r0, [r2]
_08002924:
	ldr r0, [r4, #0x38]
	cmp r0, #0
	blt _08002944
	cmp r0, #0
	beq _08002936
	subs r0, #1
	str r0, [r4, #0x38]
	cmp r0, #0
	bgt _08002944
_08002936:
	adds r0, r4, #0
	bl sub_08002808
	adds r0, r4, #0
	movs r1, #1
	bl sub_08076AE0
_08002944:
	ldr r1, _08002954 @ =0x020376A0
	cmp r4, #0
	bne _080028DC
_0800294A:
	movs r0, #0
	str r0, [r1]
_0800294E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08002954: .4byte 0x020376A0

	thumb_func_start sub_08002958
sub_08002958: @ 0x08002958
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r6, r0, #0
	adds r7, r2, #0
	mov sb, r3
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r8, r1
	cmp r6, #0
	beq _080029AC
	cmp r7, #0
	beq _080029AC
	movs r5, #0
	movs r2, #0
	ldr r0, _0800298C @ =0x02030130
	adds r1, r0, #0
	adds r1, #0x35
	ldrb r1, [r1]
	adds r3, r0, #0
	cmp r1, #0
	bne _08002990
	adds r5, r3, #0
	b _080029A8
	.align 2, 0
_0800298C: .4byte 0x02030130
_08002990:
	adds r2, #1
	cmp r2, #0xf
	bgt _080029A8
	movs r0, #0x6c
	muls r0, r2, r0
	adds r1, r0, r3
	adds r0, r1, #0
	adds r0, #0x35
	ldrb r0, [r0]
	cmp r0, #0
	bne _08002990
	adds r5, r1, #0
_080029A8:
	cmp r5, #0
	bne _080029B0
_080029AC:
	movs r0, #0
	b _08002A24
_080029B0:
	movs r4, #0
	str r4, [sp]
	ldr r2, _08002A34 @ =0x0500001B
	mov r0, sp
	adds r1, r5, #0
	bl CpuSet
	adds r1, r5, #0
	adds r1, #0x34
	mov r0, r8
	strb r0, [r1]
	adds r2, r5, #0
	adds r2, #0x35
	movs r0, #1
	strb r0, [r2]
	str r0, [r5, #0x38]
	str r6, [r5, #0x3c]
	str r4, [r5, #0x40]
	mov r0, sb
	str r0, [r5, #0x44]
	str r7, [r5, #0x48]
	ldr r2, _08002A38 @ =0x02030130
	adds r0, r2, #0
	adds r0, #0x34
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bhs _080029F4
_080029E8:
	ldr r2, [r2, #0x30]
	adds r0, r2, #0
	adds r0, #0x34
	ldrb r0, [r0]
	cmp r0, r1
	blo _080029E8
_080029F4:
	ldr r0, [r2, #0x2c]
	str r5, [r0, #0x30]
	ldr r0, [r2, #0x2c]
	str r0, [r5, #0x2c]
	str r5, [r2, #0x2c]
	str r2, [r5, #0x30]
	ldr r1, [r5, #0x48]
	ldr r0, _08002A3C @ =0x12345678
	str r0, [r1]
	adds r0, r5, #0
	bl sub_08076AD8
	ldr r0, [r5, #0x48]
	ldr r1, [r5, #0x44]
	adds r0, r0, r1
	subs r0, #4
	str r0, [r5, #0x24]
	ldr r0, [r5, #0x3c]
	str r0, [r5, #0x28]
	ldr r1, _08002A40 @ =0x02033788
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	adds r0, r5, #0
_08002A24:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08002A34: .4byte 0x0500001B
_08002A38: .4byte 0x02030130
_08002A3C: .4byte 0x12345678
_08002A40: .4byte 0x02033788

	thumb_func_start sub_08002A44
sub_08002A44: @ 0x08002A44
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r7, r0, #0
	adds r5, r2, #0
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	ldr r0, _08002A7C @ =0x000003FF
	cmp r5, r0
	bls _08002A78
	adds r0, r5, #0
	bl sub_08007CE8
	adds r4, r0, #0
	movs r0, #0
	str r0, [sp]
	lsls r2, r5, #9
	lsrs r2, r2, #0xb
	movs r0, #0xa0
	lsls r0, r0, #0x13
	orrs r2, r0
	mov r0, sp
	adds r1, r4, #0
	bl CpuSet
	cmp r4, #0
	bne _08002A80
_08002A78:
	movs r0, #0
	b _08002A9A
	.align 2, 0
_08002A7C: .4byte 0x000003FF
_08002A80:
	adds r0, r7, #0
	adds r1, r6, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_08002958
	adds r5, r0, #0
	cmp r5, #0
	bne _08002A98
	adds r0, r4, #0
	bl sub_08007CF8
_08002A98:
	adds r0, r5, #0
_08002A9A:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08002AA4
sub_08002AA4: @ 0x08002AA4
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	cmp r4, #0
	beq _08002AF6
	ldr r0, [r4, #0x40]
	cmp r0, #0
	beq _08002AB8
	bl _call_via_r0
_08002AB8:
	ldr r1, [r4, #0x2c]
	ldr r0, [r4, #0x30]
	str r0, [r1, #0x30]
	ldr r1, [r4, #0x30]
	ldr r0, [r4, #0x2c]
	str r0, [r1, #0x2c]
	ldr r1, [r4, #0x48]
	cmp r1, #0
	beq _08002AE0
	ldr r0, _08002B00 @ =0x02000000
	cmp r1, r0
	blo _08002AE0
	movs r2, #0xc0
	lsls r2, r2, #0xa
	adds r0, r0, r2
	cmp r1, r0
	bhs _08002AE0
	adds r0, r1, #0
	bl sub_08007CF8
_08002AE0:
	movs r0, #0
	str r0, [sp]
	ldr r2, _08002B04 @ =0x0500001B
	mov r0, sp
	adds r1, r4, #0
	bl CpuSet
	ldr r1, _08002B08 @ =0x02033788
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
_08002AF6:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08002B00: .4byte 0x02000000
_08002B04: .4byte 0x0500001B
_08002B08: .4byte 0x02033788

	thumb_func_start sub_08002B0C
sub_08002B0C: @ 0x08002B0C
	push {lr}
	ldr r0, _08002B20 @ =0x020376A0
	ldr r0, [r0]
	bl sub_08002AA4
	bl sub_08002B6C
	pop {r0}
	bx r0
	.align 2, 0
_08002B20: .4byte 0x020376A0

	thumb_func_start sub_08002B24
sub_08002B24: @ 0x08002B24
	push {lr}
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl sub_08002958
	bl sub_08002B4C
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08002B38
sub_08002B38: @ 0x08002B38
	push {lr}
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl sub_08002A44
	bl sub_08002B4C
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08002B4C
sub_08002B4C: @ 0x08002B4C
	push {r4, lr}
	cmp r0, #0
	beq _08002B66
	adds r0, #0x35
	ldrb r1, [r0]
	adds r4, r0, #0
	cmp r1, #0
	beq _08002B66
_08002B5C:
	bl sub_08002B6C
	ldrb r0, [r4]
	cmp r0, #0
	bne _08002B5C
_08002B66:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08002B6C
sub_08002B6C: @ 0x08002B6C
	push {r4, lr}
	ldr r4, _08002B90 @ =0x020376A0
	ldr r0, [r4]
	bl sub_08002808
	ldr r0, [r4]
	bl sub_08076AD8
	cmp r0, #0
	bne _08002B88
	ldr r0, _08002B94 @ =0x030022E0
	movs r1, #1
	bl sub_08076AE0
_08002B88:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08002B90: .4byte 0x020376A0
_08002B94: .4byte 0x030022E0

	thumb_func_start ProcSleep_08002B98
ProcSleep_08002B98: @ 0x08002B98
	push {lr}
	adds r1, r0, #0
	ldr r0, _08002BB0 @ =0x020376A0
	ldr r0, [r0]
	cmp r0, #0
	beq _08002BAA
	str r1, [r0, #0x38]
	bl sub_08002B6C
_08002BAA:
	pop {r0}
	bx r0
	.align 2, 0
_08002BB0: .4byte 0x020376A0

	thumb_func_start sub_08002BB4
sub_08002BB4: @ 0x08002BB4
	push {lr}
	cmp r0, #0
	beq _08002BBC
	str r1, [r0, #0x38]
_08002BBC:
	pop {r0}
	bx r0

	thumb_func_start sub_08002BC0
sub_08002BC0: @ 0x08002BC0
	push {lr}
	adds r1, r0, #0
	cmp r1, #0
	beq _08002BD2
	ldr r0, [r1, #0x38]
	cmp r0, #0
	bgt _08002BD2
	movs r0, #1
	str r0, [r1, #0x38]
_08002BD2:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08002BD8
sub_08002BD8: @ 0x08002BD8
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r4, _08002BE4 @ =0x0203019C
	b _08002BFA
	.align 2, 0
_08002BE4: .4byte 0x0203019C
_08002BE8:
	ldrb r0, [r1]
	cmp r0, #0
	beq _08002BF8
	cmp r0, #0xff
	beq _08002BF8
	adds r0, r4, #0
	bl sub_08002AA4
_08002BF8:
	ldr r4, [r4, #0x2c]
_08002BFA:
	adds r1, r4, #0
	adds r1, #0x34
	ldrb r0, [r1]
	cmp r0, r5
	bhs _08002BE8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08002C0C
sub_08002C0C: @ 0x08002C0C
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r3, _08002C1C @ =0x0203019C
	b _08002C48
	.align 2, 0
_08002C1C: .4byte 0x0203019C
_08002C20:
	ldrb r0, [r1]
	cmp r0, #0
	beq _08002C46
	cmp r0, #0xff
	beq _08002C46
	cmp r5, #0
	beq _08002C3A
	adds r2, r3, #0
	adds r2, #0x35
	ldrb r1, [r2]
	movs r0, #0x80
	orrs r0, r1
	b _08002C44
_08002C3A:
	adds r2, r3, #0
	adds r2, #0x35
	ldrb r1, [r2]
	movs r0, #0x7f
	ands r0, r1
_08002C44:
	strb r0, [r2]
_08002C46:
	ldr r3, [r3, #0x2c]
_08002C48:
	adds r1, r3, #0
	adds r1, #0x34
	ldrb r0, [r1]
	cmp r0, r4
	bhs _08002C20
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08002C58
sub_08002C58: @ 0x08002C58
	push {lr}
	cmp r0, #0
	beq _08002C64
	cmp r1, #0
	beq _08002C64
	str r1, [r0, #0x40]
_08002C64:
	pop {r0}
	bx r0

	thumb_func_start sub_08002C68
sub_08002C68: @ 0x08002C68
	push {lr}
	cmp r0, #0
	beq _08002C72
	adds r0, #0x4c
	b _08002C74
_08002C72:
	movs r0, #0
_08002C74:
	pop {r1}
	bx r1

	thumb_func_start sub_08002C78
sub_08002C78: @ 0x08002C78
	push {lr}
	ldr r0, _08002C88 @ =0x020376A0
	ldr r0, [r0]
	cmp r0, #0
	beq _08002C8C
	adds r0, #0x4c
	b _08002C8E
	.align 2, 0
_08002C88: .4byte 0x020376A0
_08002C8C:
	movs r0, #0
_08002C8E:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08002C94
sub_08002C94: @ 0x08002C94
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x10
	movs r4, #0
	add r7, sp, #8
	add r0, sp, #0xc
	mov r8, r0
_08002CA4:
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	movs r1, #8
	bl sub_080077EC
	adds r4, #1
	cmp r4, #6
	ble _08002CA4
	movs r0, #8
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl FadeOut_080089E8
	bl sub_08008D34
	bl sub_08005A2C
	bl sub_0800580C
	bl sub_08003FE4
	movs r4, #0
	str r4, [sp, #4]
	movs r6, #0xc0
	lsls r6, r6, #0x13
	ldr r2, _08002DD4 @ =0x01006000
	add r0, sp, #4
	adds r1, r6, #0
	bl CpuFastSet
	ldr r5, _08002DD8 @ =0x030024E0
	movs r0, #0x90
	lsls r0, r0, #4
	strh r0, [r5]
	ldr r0, _08002DDC @ =0x00001E03
	strh r0, [r5, #8]
	strh r4, [r5, #0x18]
	strh r4, [r5, #0x10]
	movs r0, #1
	bl ProcSleep_08002B98
	bl sub_08003F9C
	movs r0, #0x80
	str r0, [sp]
	movs r0, #3
	movs r1, #0x1f
	movs r2, #0xe
	movs r3, #0
	bl sub_08004028
	bl sub_080057D0
	ldr r0, _08002DE0 @ =0x08133834
	movs r1, #0xa0
	lsls r1, r1, #0x13
	bl LoadPalette_08008308
	ldr r0, _08002DE4 @ =0x081339C8
	adds r1, r6, #0
	bl DecompressData_08008374
	ldr r0, _08002DE8 @ =0x08133910
	ldr r1, _08002DEC @ =0x0600F000
	movs r2, #0
	movs r3, #0
	bl LoadTileMap_080083CC
	ldr r0, _08002DF0 @ =0x004F0008
	bl sub_08006828
	adds r4, r0, #0
	adds r1, r7, #0
	bl sub_080045FC
	add r0, sp, #8
	ldrb r1, [r0]
	lsls r1, r1, #0x10
	ldr r2, _08002DF4 @ =0xFF00FFFF
	ldr r0, [sp, #0xc]
	ands r0, r2
	orrs r0, r1
	str r0, [sp, #0xc]
	ldrb r1, [r7, #1]
	lsls r1, r1, #0x18
	ldr r2, _08002DF8 @ =0x00FFFFFF
	ands r2, r0
	orrs r2, r1
	lsls r0, r2, #8
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
	ldr r1, _08002DFC @ =0xFFFFFF00
	ands r2, r1
	orrs r2, r0
	ldr r0, _08002E00 @ =0xFFFF00FF
	ands r2, r0
	movs r0, #0x80
	lsls r0, r0, #4
	orrs r2, r0
	str r2, [sp, #0xc]
	mov r0, r8
	movs r1, #0
	bl sub_08004300
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	movs r0, #8
	movs r1, #0
	bl sub_080044C0
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	adds r1, r4, #0
	bl sub_08004C50
	movs r0, #4
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl FadeIn_08008AF4
	adds r5, #0x4f
	movs r0, #1
	strb r0, [r5]
	bl sub_08008D34
_08002DB2:
	ldr r0, _08002E04 @ =0x030024B0
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08002EA4
	ldr r0, _08002E08 @ =0x03004400
	ldrb r0, [r0, #8]
	subs r0, #0x11
	cmp r0, #0x1c
	bhi _08002E9C
	lsls r0, r0, #2
	ldr r1, _08002E0C @ =_08002E10
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08002DD4: .4byte 0x01006000
_08002DD8: .4byte 0x030024E0
_08002DDC: .4byte 0x00001E03
_08002DE0: .4byte 0x08133834
_08002DE4: .4byte 0x081339C8
_08002DE8: .4byte 0x08133910
_08002DEC: .4byte 0x0600F000
_08002DF0: .4byte 0x004F0008
_08002DF4: .4byte 0xFF00FFFF
_08002DF8: .4byte 0x00FFFFFF
_08002DFC: .4byte 0xFFFFFF00
_08002E00: .4byte 0xFFFF00FF
_08002E04: .4byte 0x030024B0
_08002E08: .4byte 0x03004400
_08002E0C: .4byte _08002E10
_08002E10: @ jump table
	.4byte _08002E8C @ case 0
	.4byte _08002E9C @ case 1
	.4byte _08002E9C @ case 2
	.4byte _08002E9C @ case 3
	.4byte _08002E84 @ case 4
	.4byte _08002E9C @ case 5
	.4byte _08002E8C @ case 6
	.4byte _08002E8C @ case 7
	.4byte _08002E8C @ case 8
	.4byte _08002E9C @ case 9
	.4byte _08002E84 @ case 10
	.4byte _08002E9C @ case 11
	.4byte _08002E9C @ case 12
	.4byte _08002E94 @ case 13
	.4byte _08002E9C @ case 14
	.4byte _08002E9C @ case 15
	.4byte _08002E9C @ case 16
	.4byte _08002E9C @ case 17
	.4byte _08002E9C @ case 18
	.4byte _08002E9C @ case 19
	.4byte _08002E9C @ case 20
	.4byte _08002E9C @ case 21
	.4byte _08002E9C @ case 22
	.4byte _08002E9C @ case 23
	.4byte _08002E9C @ case 24
	.4byte _08002E9C @ case 25
	.4byte _08002E9C @ case 26
	.4byte _08002E9C @ case 27
	.4byte _08002E84 @ case 28
_08002E84:
	movs r0, #0x2c
	bl ChangeGameState_08008790
	b _08002EAC
_08002E8C:
	movs r0, #0x2a
	bl ChangeGameState_08008790
	b _08002EAC
_08002E94:
	movs r0, #0x1e
	bl ChangeGameState_08008790
	b _08002EAC
_08002E9C:
	movs r0, #0x12
	bl ChangeGameState_08008790
	b _08002EAC
_08002EA4:
	movs r0, #1
	bl ProcSleep_08002B98
	b _08002DB2
_08002EAC:
	movs r0, #4
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl FadeOut_080089E8
	bl sub_08008D34
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	bl sub_080043F0
	ldr r0, _08002EDC @ =0x03002530
	ldr r0, [r0]
	bl sub_08002AA4
	bl sub_08002B0C
	add sp, #0x10
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08002EDC: .4byte 0x03002530

	thumb_func_start sub_08002EE0
sub_08002EE0: @ 0x08002EE0
	push {r4, lr}
	ldr r4, _08002F00 @ =0x02037EB0
	ldr r0, [r4]
	cmp r0, #0
	beq _08002EF2
	movs r1, #1
	rsbs r1, r1, #0
	bl sub_08002BB4
_08002EF2:
	ldrb r0, [r4, #5]
	cmp r0, #2
	bne _08002F04
	bl sub_08003B08
	b _08002F08
	.align 2, 0
_08002F00: .4byte 0x02037EB0
_08002F04:
	bl sub_080034DC
_08002F08:
	bl sub_080056C0
	bl sub_08005918
	bl sub_08007CD4
	ldr r0, _08002F28 @ =sub_08002C94
	movs r2, #0x80
	lsls r2, r2, #3
	movs r1, #0x40
	bl sub_08002A44
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08002F28: .4byte sub_08002C94

	thumb_func_start sub_08002F2C
sub_08002F2C: @ 0x08002F2C
	push {r4, r5, r6, lr}
	sub sp, #4
	ldr r4, _08002F7C @ =0x02037ED4
	adds r0, r4, #0
	bl sub_08000DC4
	adds r5, r4, #0
	subs r5, #0x24
	str r0, [r4, #0x6c]
	bl sub_08000D58
	adds r2, r4, #0
	adds r2, #0x74
	ldrb r0, [r2]
	cmp r0, #0
	bne _08002F84
	ldr r0, [r4, #0x6c]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08002F92
	ldrb r0, [r5, #7]
	adds r1, r0, #1
	strb r1, [r5, #7]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bls _08002F92
	ldr r0, _08002F80 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	adds r1, r4, #0
	adds r1, #0x75
	strb r0, [r1]
	movs r0, #1
	strb r0, [r2]
	b _08002F92
	.align 2, 0
_08002F7C: .4byte 0x02037ED4
_08002F80: .4byte 0x04000128
_08002F84:
	ldr r0, _08002FCC @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	adds r1, r4, #0
	adds r1, #0x75
	strb r0, [r1]
_08002F92:
	ldr r1, _08002FD0 @ =0x02037EB0
	ldrb r0, [r1, #6]
	mov ip, r1
	cmp r0, #0
	beq _0800301C
	mov r3, ip
	adds r3, #0x84
	ldr r1, [r3]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0800301C
	mov r0, ip
	adds r0, #0x90
	ldr r2, [r0]
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _08002FC8
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08002FD4
_08002FC8:
	str r1, [r3]
	b _0800301C
	.align 2, 0
_08002FCC: .4byte 0x04000128
_08002FD0: .4byte 0x02037EB0
_08002FD4:
	movs r4, #0x80
	lsls r4, r4, #8
	adds r0, r2, #0
	ands r0, r4
	cmp r0, #0
	beq _08002FF0
	lsls r1, r2, #0x1c
	lsrs r1, r1, #0x1c
	lsls r0, r2, #0x14
	lsrs r0, r0, #0x1c
	cmp r1, r0
	beq _08002FF0
	str r4, [r3]
	b _0800301C
_08002FF0:
	mov r1, ip
	ldrb r0, [r1, #0xa]
	cmp r0, #0
	beq _0800301C
	mov r0, ip
	adds r0, #0x90
	ldr r1, [r0]
	lsls r0, r1, #0x1c
	lsrs r2, r0, #0x1c
	mov r3, ip
	ldrb r3, [r3, #0xa]
	cmp r2, r3
	bne _08003012
	lsls r0, r1, #0x14
	lsrs r0, r0, #0x1c
	cmp r0, r2
	beq _0800301C
_08003012:
	mov r1, ip
	adds r1, #0x84
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [r1]
_0800301C:
	movs r3, #0
	ldr r4, _080030A0 @ =0x0203A300
	ldr r6, _080030A4 @ =0x02037EBC
	adds r1, r6, #0
	movs r2, #0xb
_08003026:
	ldrh r0, [r1]
	orrs r3, r0
	adds r1, #2
	subs r2, #1
	cmp r2, #0
	bge _08003026
	cmp r3, #0
	bne _0800303C
	movs r0, #0xc8
	mov r1, ip
	strh r0, [r1, #0xc]
_0800303C:
	ldrb r0, [r4]
	cmp r0, #0
	beq _0800304A
	ldr r0, _080030A8 @ =0x02034E98
	ldrh r0, [r0, #6]
	mov r3, ip
	strh r0, [r3, #0x22]
_0800304A:
	adds r4, r6, #0
	adds r0, r4, #0
	movs r1, #0
	bl sub_08000F34
	mov r0, sp
	movs r5, #0
	strh r5, [r0]
	ldr r2, _080030AC @ =0x0100000C
	adds r1, r4, #0
	bl CpuSet
	adds r2, r4, #0
	adds r2, #0x84
	ldr r0, [r2]
	lsls r1, r0, #0x1c
	lsrs r1, r1, #0x1c
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x1c
	cmp r1, r0
	bne _0800307E
	ldrh r1, [r2]
	ldr r0, _080030B0 @ =0x00000F0F
	ands r0, r1
	cmp r0, #0
	bne _080030B4
_0800307E:
	subs r4, #0xc
	ldrb r0, [r4, #9]
	adds r0, #1
	strb r0, [r4, #9]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3c
	bls _080030BA
	movs r0, #0
	bl sub_08000C64
	bl sub_08000D58
	strb r5, [r4, #9]
	strb r5, [r4, #8]
	b _080030BA
	.align 2, 0
_080030A0: .4byte 0x0203A300
_080030A4: .4byte 0x02037EBC
_080030A8: .4byte 0x02034E98
_080030AC: .4byte 0x0100000C
_080030B0: .4byte 0x00000F0F
_080030B4:
	adds r0, r6, #0
	subs r0, #0xc
	strb r5, [r0, #9]
_080030BA:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080030C4
sub_080030C4: @ 0x080030C4
	push {r4, r5, lr}
	ldr r0, _080030DC @ =0x02037EB0
	adds r0, #0x88
	ldr r0, [r0]
	cmp r0, #5
	bls _080030D2
	b _0800328E
_080030D2:
	lsls r0, r0, #2
	ldr r1, _080030E0 @ =_080030E4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080030DC: .4byte 0x02037EB0
_080030E0: .4byte _080030E4
_080030E4: @ jump table
	.4byte _080030FC @ case 0
	.4byte _0800310A @ case 1
	.4byte _08003148 @ case 2
	.4byte _08003178 @ case 3
	.4byte _0800321C @ case 4
	.4byte _0800326C @ case 5
_080030FC:
	ldr r2, _0800313C @ =0x02037EB0
	adds r1, r2, #0
	adds r1, #0x94
	movs r0, #0
	str r0, [r1]
	movs r0, #0xc8
	strh r0, [r2, #0xc]
_0800310A:
	ldr r0, _08003140 @ =0x03006011
	movs r1, #0
	bl sub_080092F0
	ldr r4, _0800313C @ =0x02037EB0
	adds r0, r4, #0
	adds r0, #0x94
	ldr r0, [r0]
	movs r1, #0xf0
	lsls r1, r1, #4
	ands r0, r1
	lsrs r0, r0, #8
	bl sub_08000C64
	adds r1, r4, #0
	adds r1, #0xa9
	movs r0, #0
	strb r0, [r1]
	subs r1, #0x21
	ldr r0, [r1]
	cmp r0, #0
	bne _08003144
	movs r0, #3
	b _0800328C
	.align 2, 0
_0800313C: .4byte 0x02037EB0
_08003140: .4byte 0x03006011
_08003144:
	movs r0, #2
	b _0800328C
_08003148:
	ldr r2, _08003214 @ =0x02037EB0
	adds r0, r2, #0
	adds r0, #0x90
	ldr r1, [r0]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08003174
	movs r0, #0x40
	ands r1, r0
	cmp r1, #0
	beq _0800316C
	adds r0, r2, #0
	adds r0, #0xac
	ldr r1, [r0]
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_0800316C:
	adds r1, r2, #0
	adds r1, #0x88
	movs r0, #3
	str r0, [r1]
_08003174:
	bl sub_08000D58
_08003178:
	ldr r2, _08003214 @ =0x02037EB0
	adds r0, r2, #0
	adds r0, #0x90
	ldr r1, [r0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080031B2
	movs r0, #0x80
	ands r1, r0
	cmp r1, #0
	beq _080031AA
	adds r0, r2, #0
	adds r0, #0xb0
	ldrb r1, [r0]
	subs r0, #0x14
	ldr r0, [r0]
	lsrs r0, r0, #0xf
	cmp r1, r0
	blo _080031AA
	adds r0, r2, #0
	adds r0, #0xa8
	ldrb r0, [r0]
	cmp r0, #0
	beq _080031B2
_080031AA:
	adds r1, r2, #0
	adds r1, #0x88
	movs r0, #4
	str r0, [r1]
_080031B2:
	ldr r2, _08003214 @ =0x02037EB0
	adds r0, r2, #0
	adds r0, #0xb1
	ldrb r0, [r0]
	cmp r0, #0
	beq _080031D4
	adds r0, r2, #0
	adds r0, #0x90
	ldr r0, [r0]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080031D4
	adds r1, r2, #0
	adds r1, #0xa9
	movs r0, #1
	strb r0, [r1]
_080031D4:
	ldr r4, _08003218 @ =0x02037ED4
	adds r0, r4, #0
	bl sub_08000DC4
	str r0, [r4, #0x6c]
	adds r0, r4, #0
	adds r0, #0x84
	ldrb r0, [r0]
	cmp r0, #0
	beq _080031EC
	bl sub_08000D58
_080031EC:
	adds r3, r4, #0
	adds r3, #0x8c
	ldrb r2, [r4, #1]
	ldrb r0, [r3]
	cmp r0, r2
	beq _08003202
	movs r1, #0
	strb r2, [r3]
	adds r0, r4, #0
	adds r0, #0x90
	str r1, [r0]
_08003202:
	adds r2, r4, #0
	adds r2, #0x80
	ldrb r1, [r3]
	lsls r1, r1, #0xf
	ldr r0, [r4, #0x7c]
	adds r0, r0, r1
	str r0, [r2]
	b _0800328E
	.align 2, 0
_08003214: .4byte 0x02037EB0
_08003218: .4byte 0x02037ED4
_0800321C:
	bl sub_08000D74
	ldr r4, _08003240 @ =0x02037EB0
	adds r0, r4, #0
	adds r0, #0xb0
	ldrb r1, [r0]
	subs r0, #0x14
	ldr r0, [r0]
	lsrs r0, r0, #0xf
	cmp r1, r0
	bne _08003244
	adds r1, r4, #0
	adds r1, #0xaa
	movs r0, #1
	strb r0, [r1]
	subs r1, #0x22
	movs r0, #6
	b _0800328C
	.align 2, 0
_08003240: .4byte 0x02037EB0
_08003244:
	ldr r0, _08003268 @ =0x03006011
	movs r1, #0
	bl sub_080092F0
	adds r0, r4, #0
	adds r0, #0x90
	ldr r0, [r0]
	movs r1, #0x80
	ands r0, r1
	adds r1, r4, #0
	adds r1, #0xa4
	ldr r1, [r1]
	bl sub_08001304
	adds r1, r4, #0
	adds r1, #0x88
	movs r0, #5
	b _0800328C
	.align 2, 0
_08003268: .4byte 0x03006011
_0800326C:
	ldr r4, _080032C4 @ =0x02037F64
	adds r0, r4, #0
	bl sub_080013B4
	cmp r0, #0
	beq _0800328E
	adds r2, r4, #0
	subs r2, #0x20
	adds r1, r4, #0
	subs r1, #0x24
	ldr r0, [r1]
	str r0, [r2]
	movs r0, #0
	str r0, [r1]
	subs r1, #8
	movs r0, #1
_0800328C:
	str r0, [r1]
_0800328E:
	ldr r2, _080032C8 @ =0x02037EB0
	adds r5, r2, #0
	adds r5, #0x84
	ldr r1, [r5]
	movs r0, #1
	rsbs r0, r0, #0
	adds r3, r2, #0
	cmp r1, r0
	beq _080032EE
	adds r0, r3, #0
	adds r0, #0x90
	ldr r2, [r0]
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _080032BE
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _080032CC
_080032BE:
	str r1, [r5]
	b _080032EE
	.align 2, 0
_080032C4: .4byte 0x02037F64
_080032C8: .4byte 0x02037EB0
_080032CC:
	movs r4, #0x80
	lsls r4, r4, #8
	adds r0, r2, #0
	ands r0, r4
	lsls r1, r2, #0x1c
	lsrs r1, r1, #0x1c
	lsls r0, r2, #0x14
	lsrs r0, r0, #0x1c
	cmp r1, r0
	beq _080032EE
	adds r0, r3, #0
	adds r0, #0x88
	ldr r0, [r0]
	subs r0, #2
	cmp r0, #1
	bhi _080032EE
	str r4, [r5]
_080032EE:
	adds r2, r3, #0
	adds r2, #0x98
	ldrb r0, [r2]
	cmp r0, #0
	bne _08003320
	adds r0, r3, #0
	adds r0, #0x90
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0800332E
	ldr r0, _0800331C @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	adds r1, r3, #0
	adds r1, #0x99
	strb r0, [r1]
	movs r0, #1
	strb r0, [r2]
	b _0800332E
	.align 2, 0
_0800331C: .4byte 0x04000128
_08003320:
	ldr r0, _08003340 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	adds r1, r3, #0
	adds r1, #0x99
	strb r0, [r1]
_0800332E:
	ldr r0, _08003344 @ =0x02037EBC
	adds r1, r0, #0
	adds r1, #0x9d
	ldrb r1, [r1]
	bl sub_08000F34
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08003340: .4byte 0x04000128
_08003344: .4byte 0x02037EBC

	thumb_func_start sub_08003348
sub_08003348: @ 0x08003348
	push {lr}
	ldr r1, _08003360 @ =0x02037EB0
	ldrb r0, [r1, #4]
	cmp r0, #0
	beq _080033AC
	ldrb r0, [r1, #5]
	cmp r0, #1
	beq _08003364
	cmp r0, #2
	beq _0800336A
	b _0800336E
	.align 2, 0
_08003360: .4byte 0x02037EB0
_08003364:
	bl sub_08002F2C
	b _0800336E
_0800336A:
	bl sub_080030C4
_0800336E:
	ldr r0, _08003394 @ =0x02037EB0
	ldrb r1, [r0, #4]
	adds r2, r0, #0
	cmp r1, #1
	bne _08003398
	adds r0, #0x84
	ldr r0, [r0]
	cmp r0, #0
	beq _08003398
	ldrb r0, [r2, #8]
	adds r0, #1
	strb r0, [r2, #8]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1e
	bls _0800339C
_0800338E:
	bl sub_08002EE0
	b _080033AC
	.align 2, 0
_08003394: .4byte 0x02037EB0
_08003398:
	movs r0, #0
	strb r0, [r2, #8]
_0800339C:
	adds r2, #0x84
	ldr r1, [r2]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0800338E
	movs r0, #0
	str r0, [r2]
_080033AC:
	pop {r0}
	bx r0

	thumb_func_start sub_080033B0
sub_080033B0: @ 0x080033B0
	push {r4, r5, r6, lr}
	sub sp, #0xc
	bl sub_08006828
	adds r6, r0, #0
	mov r5, sp
	mov r1, sp
	bl sub_080045FC
	ldr r3, _08003448 @ =0xFFFFFF00
	ldr r0, [sp, #4]
	ands r0, r3
	movs r1, #5
	orrs r0, r1
	ldr r4, _0800344C @ =0xFFFF00FF
	ands r0, r4
	movs r1, #0xc0
	lsls r1, r1, #3
	orrs r0, r1
	ldr r1, _08003450 @ =0xFF00FFFF
	ands r0, r1
	movs r1, #0xa0
	lsls r1, r1, #0xd
	orrs r0, r1
	ldr r1, _08003454 @ =0x00FFFFFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x14
	orrs r0, r1
	str r0, [sp, #4]
	mov r0, sp
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsrs r0, r1, #0x1f
	adds r1, r1, r0
	asrs r1, r1, #1
	movs r0, #9
	subs r0, r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, [sp, #8]
	ands r2, r3
	orrs r2, r0
	str r2, [sp, #8]
	movs r1, #1
	ldrsb r1, [r5, r1]
	lsrs r0, r1, #0x1f
	adds r1, r1, r0
	asrs r1, r1, #1
	movs r0, #3
	subs r0, r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x10
	ands r2, r4
	orrs r2, r0
	str r2, [sp, #8]
	add r0, sp, #4
	movs r1, #1
	bl sub_08004300
	adds r4, r0, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	add r1, sp, #8
	adds r0, r4, #0
	bl sub_08004568
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08004C50
	adds r0, r4, #0
	add sp, #0xc
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08003448: .4byte 0xFFFFFF00
_0800344C: .4byte 0xFFFF00FF
_08003450: .4byte 0xFF00FFFF
_08003454: .4byte 0x00FFFFFF

	thumb_func_start sub_08003458
sub_08003458: @ 0x08003458
	push {lr}
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl sub_080043F0
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08003468
sub_08003468: @ 0x08003468
	push {r4, r5, lr}
	sub sp, #4
	mov r0, sp
	movs r4, #0
	strh r4, [r0]
	ldr r5, _080034CC @ =0x02037EBC
	ldr r2, _080034D0 @ =0x0100000C
	adds r1, r5, #0
	bl CpuSet
	mov r0, sp
	adds r0, #2
	strh r4, [r0]
	adds r1, r5, #0
	adds r1, #0x18
	ldr r2, _080034D4 @ =0x01000030
	bl CpuSet
	adds r2, r5, #0
	subs r2, #0xc
	movs r1, #0
	str r1, [r5, #0x78]
	movs r0, #2
	str r0, [r5, #0x7c]
	adds r0, r5, #0
	adds r0, #0x84
	str r1, [r0]
	adds r0, #8
	strb r4, [r0]
	adds r0, #1
	strb r4, [r0]
	strb r4, [r2, #4]
	movs r0, #1
	strb r0, [r2, #5]
	strb r4, [r2, #6]
	strb r4, [r2, #7]
	strb r4, [r2, #8]
	strb r4, [r2, #9]
	movs r0, #3
	strb r0, [r2, #0xa]
	ldr r0, _080034D8 @ =0x0203A300
	strb r4, [r0]
	movs r0, #0
	bl sub_08000C64
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080034CC: .4byte 0x02037EBC
_080034D0: .4byte 0x0100000C
_080034D4: .4byte 0x01000030
_080034D8: .4byte 0x0203A300

	thumb_func_start sub_080034DC
sub_080034DC: @ 0x080034DC
	push {r4, lr}
	ldr r4, _08003508 @ =0x02037EB0
	ldrb r0, [r4, #4]
	cmp r0, #0
	beq _08003500
	bl sub_08000D74
	adds r2, r4, #0
	adds r2, #0x8c
	adds r1, r4, #0
	adds r1, #0x88
	ldr r0, [r1]
	str r0, [r2]
	movs r0, #0
	str r0, [r1]
	strb r0, [r4, #4]
	ldr r1, _0800350C @ =0x0203A300
	strb r0, [r1]
_08003500:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08003508: .4byte 0x02037EB0
_0800350C: .4byte 0x0203A300

	thumb_func_start sub_08003510
sub_08003510: @ 0x08003510
	ldr r1, _08003528 @ =0x02037EB0
	ldr r0, _0800352C @ =0x020376A0
	ldr r0, [r0]
	str r0, [r1]
	adds r2, r1, #0
	adds r2, #0x88
	movs r0, #2
	str r0, [r2]
	movs r0, #1
	strb r0, [r1, #4]
	bx lr
	.align 2, 0
_08003528: .4byte 0x02037EB0
_0800352C: .4byte 0x020376A0

	thumb_func_start sub_08003530
sub_08003530: @ 0x08003530
	ldr r1, _08003538 @ =0x02037EB0
	movs r0, #2
	strb r0, [r1, #4]
	bx lr
	.align 2, 0
_08003538: .4byte 0x02037EB0

	thumb_func_start sub_0800353C
sub_0800353C: @ 0x0800353C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	mov r0, sp
	mov r1, r8
	strb r1, [r0]
	movs r7, #0
	ldr r1, _080035D4 @ =0x0203A300
	movs r0, #1
	strb r0, [r1]
	ldr r6, _080035D8 @ =0x02037EB0
_0800355A:
	movs r0, #1
	bl ProcSleep_08002B98
	adds r0, r6, #0
	adds r0, #0x98
	ldrb r0, [r0]
	cmp r0, #0
	beq _08003618
	adds r0, r6, #0
	adds r0, #0x90
	ldr r1, [r0]
	lsls r0, r1, #0x1c
	lsrs r2, r0, #0x1c
	ldrb r0, [r6, #0xa]
	cmp r2, r0
	bne _08003618
	lsls r0, r1, #0x14
	lsrs r0, r0, #0x1c
	cmp r0, r2
	bne _08003618
	ldr r5, _080035DC @ =0x00009999
	adds r0, r5, #0
	mov r1, sp
	movs r2, #1
	bl sub_080038F4
	movs r1, #0
	adds r0, r6, #0
	adds r0, #0x99
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800359C
	movs r1, #1
_0800359C:
	mov r4, sp
	adds r4, #1
	adds r0, r1, #0
	adds r1, r5, #0
	adds r2, r4, #0
	movs r3, #1
	bl sub_08003938
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r5
	bne _080035E6
	ldrb r0, [r4]
	cmp r0, r8
	bne _080035E0
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #0xa
	bls _080035E8
	movs r0, #0
	movs r1, #1
	strb r1, [r6, #6]
	ldr r1, _080035D4 @ =0x0203A300
	strb r0, [r1]
	movs r0, #1
	b _08003684
	.align 2, 0
_080035D4: .4byte 0x0203A300
_080035D8: .4byte 0x02037EB0
_080035DC: .4byte 0x00009999
_080035E0:
	bl sub_0800386C
	b _080035E8
_080035E6:
	movs r7, #0
_080035E8:
	ldr r3, _08003610 @ =0x02034E98
	ldr r2, _08003614 @ =0x02037EB0
	adds r0, r2, #0
	adds r0, #0x99
	ldrb r0, [r0]
	movs r1, #0
	cmp r0, #0
	bne _080035FA
	movs r1, #0x18
_080035FA:
	adds r0, r2, #0
	adds r0, #0x3a
	adds r0, r1, r0
	ldrh r1, [r3, #6]
	ldrh r0, [r0]
	cmp r1, r0
	beq _0800361A
	bl sub_0800386C
	b _0800361A
	.align 2, 0
_08003610: .4byte 0x02034E98
_08003614: .4byte 0x02037EB0
_08003618:
	movs r7, #0
_0800361A:
	ldr r0, _08003630 @ =0x030024B0
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08003638
	ldr r1, _08003634 @ =0x0203A300
	movs r0, #0
	strb r0, [r1]
	movs r0, #0
	b _08003684
	.align 2, 0
_08003630: .4byte 0x030024B0
_08003634: .4byte 0x0203A300
_08003638:
	ldr r2, _0800367C @ =0x02037EB0
	adds r0, r2, #0
	adds r0, #0x98
	ldrb r0, [r0]
	cmp r0, #0
	beq _08003666
	adds r0, r2, #0
	adds r0, #0x90
	ldr r3, [r0]
	lsls r1, r3, #0x1c
	lsrs r1, r1, #0x1c
	ldrb r0, [r2, #0xa]
	mvns r2, r0
	ands r1, r2
	cmp r1, #0
	bne _08003662
	lsls r0, r3, #0x14
	lsrs r0, r0, #0x1c
	ands r0, r2
	cmp r0, #0
	beq _08003666
_08003662:
	bl sub_0800386C
_08003666:
	ldr r0, _08003680 @ =0x02037F40
	ldrb r1, [r0, #1]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	bne _08003674
	b _0800355A
_08003674:
	bl sub_0800386C
	b _0800355A
	.align 2, 0
_0800367C: .4byte 0x02037EB0
_08003680: .4byte 0x02037F40
_08003684:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08003690
sub_08003690: @ 0x08003690
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #4]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #8]
	movs r0, #0
	mov sl, r0
	movs r1, #0
	str r1, [sp, #0xc]
	mov r0, sp
	ldrb r2, [r0, #4]
	strb r2, [r0]
	mov r8, r1
	ldr r1, _0800374C @ =0x0203A300
	movs r0, #1
	strb r0, [r1]
	ldr r7, _08003750 @ =0x02037EB0
	movs r0, #0x90
	adds r0, r0, r7
	mov sb, r0
_080036C6:
	movs r0, #1
	bl ProcSleep_08002B98
	adds r0, r7, #0
	adds r0, #0x98
	ldrb r0, [r0]
	cmp r0, #0
	beq _08003790
	mov r2, sb
	ldr r1, [r2]
	lsls r0, r1, #0x1c
	lsrs r2, r0, #0x1c
	ldrb r0, [r7, #0xa]
	cmp r2, r0
	bne _08003790
	lsls r0, r1, #0x14
	lsrs r0, r0, #0x1c
	cmp r0, r2
	bne _08003790
	ldr r5, _08003754 @ =0x00009999
	adds r0, r5, #0
	mov r1, sp
	movs r2, #1
	bl sub_080038F4
	movs r1, #0
	adds r6, r7, #0
	adds r6, #0x99
	ldrb r0, [r6]
	cmp r0, #0
	bne _08003706
	movs r1, #1
_08003706:
	mov r4, sp
	adds r4, #1
	adds r0, r1, #0
	adds r1, r5, #0
	adds r2, r4, #0
	movs r3, #1
	bl sub_08003938
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r5
	bne _0800375E
	ldrb r0, [r4]
	ldr r1, [sp, #4]
	cmp r0, r1
	bne _08003758
	ldrb r0, [r6]
	ldr r2, [sp, #8]
	cmp r0, r2
	bne _08003758
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	cmp r0, #0xa
	bls _08003762
	movs r0, #0
	movs r1, #1
	strb r1, [r7, #6]
	ldr r1, _0800374C @ =0x0203A300
	strb r0, [r1]
	movs r0, #1
	b _08003850
	.align 2, 0
_0800374C: .4byte 0x0203A300
_08003750: .4byte 0x02037EB0
_08003754: .4byte 0x00009999
_08003758:
	bl sub_0800386C
	b _08003762
_0800375E:
	movs r0, #0
	mov r8, r0
_08003762:
	ldr r3, _08003788 @ =0x02034E98
	ldr r2, _0800378C @ =0x02037EB0
	adds r0, r2, #0
	adds r0, #0x99
	ldrb r0, [r0]
	movs r1, #0
	cmp r0, #0
	bne _08003774
	movs r1, #0x18
_08003774:
	adds r0, r2, #0
	adds r0, #0x3a
	adds r0, r1, r0
	ldrh r1, [r3, #6]
	ldrh r0, [r0]
	cmp r1, r0
	beq _08003794
	bl sub_0800386C
	b _08003794
	.align 2, 0
_08003788: .4byte 0x02034E98
_0800378C: .4byte 0x02037EB0
_08003790:
	movs r1, #0
	mov r8, r1
_08003794:
	ldr r0, _080037BC @ =0x03004400
	ldrb r1, [r0, #8]
	adds r2, r0, #0
	cmp r1, #0x19
	bne _080037D2
	ldr r0, [sp, #0xc]
	cmp r0, #0x3c
	bls _080037C8
	ldr r0, _080037C0 @ =0x030024B0
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080037D2
	ldr r1, _080037C4 @ =0x0203A300
	movs r0, #0
	strb r0, [r1]
	movs r0, #0
	b _08003850
	.align 2, 0
_080037BC: .4byte 0x03004400
_080037C0: .4byte 0x030024B0
_080037C4: .4byte 0x0203A300
_080037C8:
	ldr r0, [sp, #0xc]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xc]
_080037D2:
	ldrb r0, [r2, #8]
	cmp r0, #0x18
	bne _0800380A
	mov r2, sb
	ldr r1, [r2]
	lsls r0, r1, #0x1c
	lsrs r2, r0, #0x1c
	ldrb r0, [r7, #0xa]
	cmp r2, r0
	bne _080037EE
	lsls r0, r1, #0x14
	lsrs r0, r0, #0x1c
	cmp r0, r2
	beq _08003806
_080037EE:
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	movs r0, #0xe1
	lsls r0, r0, #2
	cmp sl, r0
	bls _0800380A
	bl sub_0800386C
	b _0800380A
_08003806:
	movs r1, #0
	mov sl, r1
_0800380A:
	ldr r2, _0800384C @ =0x02037EB0
	adds r0, r2, #0
	adds r0, #0x98
	ldrb r0, [r0]
	cmp r0, #0
	beq _08003836
	mov r0, sb
	ldr r3, [r0]
	lsls r1, r3, #0x1c
	lsrs r1, r1, #0x1c
	ldrb r0, [r2, #0xa]
	mvns r2, r0
	ands r1, r2
	cmp r1, #0
	bne _08003832
	lsls r0, r3, #0x14
	lsrs r0, r0, #0x1c
	ands r0, r2
	cmp r0, #0
	beq _08003836
_08003832:
	bl sub_0800386C
_08003836:
	mov r2, sb
	ldrb r1, [r2, #1]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	bne _08003844
	b _080036C6
_08003844:
	bl sub_0800386C
	b _080036C6
	.align 2, 0
_0800384C: .4byte 0x02037EB0
_08003850:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08003860
sub_08003860: @ 0x08003860
	ldr r1, _08003868 @ =0x02037EB0
	strb r0, [r1, #0xa]
	bx lr
	.align 2, 0
_08003868: .4byte 0x02037EB0

	thumb_func_start sub_0800386C
sub_0800386C: @ 0x0800386C
	push {lr}
	ldr r2, _08003898 @ =0x02037EB0
	ldr r0, [r2]
	cmp r0, #0
	bne _0800387C
	ldr r0, _0800389C @ =0x020376A0
	ldr r0, [r0]
	str r0, [r2]
_0800387C:
	adds r1, r2, #0
	adds r1, #0x88
	movs r0, #6
	str r0, [r1]
	subs r1, #4
	subs r0, #7
	str r0, [r1]
	movs r0, #1
	strb r0, [r2, #4]
_0800388E:
	movs r0, #1
	bl ProcSleep_08002B98
	b _0800388E
	.align 2, 0
_08003898: .4byte 0x02037EB0
_0800389C: .4byte 0x020376A0

	thumb_func_start sub_080038A0
sub_080038A0: @ 0x080038A0
	ldr r0, _080038AC @ =0x02037F40
	ldr r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	bx lr
	.align 2, 0
_080038AC: .4byte 0x02037F40

	thumb_func_start sub_080038B0
sub_080038B0: @ 0x080038B0
	ldr r0, _080038BC @ =0x02037F40
	ldr r0, [r0]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x1c
	bx lr
	.align 2, 0
_080038BC: .4byte 0x02037F40

	thumb_func_start sub_080038C0
sub_080038C0: @ 0x080038C0
	ldr r0, _080038CC @ =0x02037F40
	ldr r0, [r0]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x1f
	bx lr
	.align 2, 0
_080038CC: .4byte 0x02037F40

	thumb_func_start sub_080038D0
sub_080038D0: @ 0x080038D0
	ldr r0, _080038D8 @ =0x02037EB0
	adds r0, #0x84
	ldr r0, [r0]
	bx lr
	.align 2, 0
_080038D8: .4byte 0x02037EB0

	thumb_func_start sub_080038DC
sub_080038DC: @ 0x080038DC
	ldr r0, _080038E4 @ =0x02037EB0
	adds r0, #0x98
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_080038E4: .4byte 0x02037EB0

	thumb_func_start sub_080038E8
sub_080038E8: @ 0x080038E8
	ldr r0, _080038F0 @ =0x02037EB0
	adds r0, #0x99
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_080038F0: .4byte 0x02037EB0

	thumb_func_start sub_080038F4
sub_080038F4: @ 0x080038F4
	push {r4, r5, lr}
	adds r4, r1, #0
	lsls r3, r0, #0x10
	lsrs r5, r3, #0x10
	ldr r1, _08003934 @ =0x02037EBC
	adds r0, r1, #0
	subs r0, #0xc
	ldrb r0, [r0, #4]
	cmp r0, #0
	beq _0800392C
	cmp r2, #0x15
	bls _0800390E
	movs r2, #0x16
_0800390E:
	strb r5, [r1]
	adds r1, #1
	lsrs r0, r3, #0x18
	strb r0, [r1]
	adds r1, #1
	movs r3, #0
	cmp r3, r2
	bhs _0800392C
_0800391E:
	ldrb r0, [r4]
	strb r0, [r1]
	adds r4, #1
	adds r1, #1
	adds r3, #1
	cmp r3, r2
	blo _0800391E
_0800392C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08003934: .4byte 0x02037EBC

	thumb_func_start sub_08003938
sub_08003938: @ 0x08003938
	push {r4, r5, r6, lr}
	adds r4, r2, #0
	adds r5, r3, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x10
	lsrs r2, r1, #0x10
	adds r6, r2, #0
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #3
	ldr r0, _08003960 @ =0x02037ED4
	adds r1, r1, r0
	subs r0, #0x24
	ldrb r0, [r0, #4]
	cmp r0, #0
	bne _08003964
	adds r0, r2, #0
	b _08003990
	.align 2, 0
_08003960: .4byte 0x02037ED4
_08003964:
	cmp r5, #0x15
	bls _0800396A
	movs r5, #0x16
_0800396A:
	ldrb r3, [r1]
	adds r1, #1
	ldrb r0, [r1]
	lsls r0, r0, #8
	orrs r3, r0
	adds r1, #1
	cmp r3, r6
	bne _0800398E
	movs r2, #0
	cmp r2, r5
	bhs _0800398E
_08003980:
	ldrb r0, [r1]
	strb r0, [r4]
	adds r1, #1
	adds r4, #1
	adds r2, #1
	cmp r2, r5
	blo _08003980
_0800398E:
	adds r0, r3, #0
_08003990:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08003998
sub_08003998: @ 0x08003998
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov r8, r1
	adds r7, r2, #0
	adds r6, r3, #0
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r0, _080039B8 @ =0x02037EB0
	ldrb r0, [r0, #4]
	cmp r0, #0
	beq _08003A1A
	b _08003A16
	.align 2, 0
_080039B8: .4byte 0x02037EB0
_080039BC:
	cmp r6, #0x15
	bhi _080039C8
	lsls r0, r6, #0x10
	lsrs r4, r0, #0x10
	movs r6, #0
	b _080039CC
_080039C8:
	movs r4, #0x16
	subs r6, #0x16
_080039CC:
	movs r0, #0x16
	add r0, r8
	mov sl, r0
	adds r1, r7, #0
	adds r1, #0x16
	str r1, [sp]
	adds r2, r5, #1
	mov sb, r2
_080039DC:
	movs r0, #1
	bl ProcSleep_08002B98
	adds r0, r5, #0
	mov r1, r8
	adds r2, r4, #0
	bl sub_080038F4
	movs r1, #0
	ldr r2, _08003A2C @ =0x02037F49
	ldrb r0, [r2]
	cmp r0, #0
	bne _080039F8
	movs r1, #1
_080039F8:
	adds r0, r1, #0
	adds r1, r5, #0
	adds r2, r7, #0
	adds r3, r4, #0
	bl sub_08003938
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r5, r0
	bne _080039DC
	mov r8, sl
	ldr r7, [sp]
	mov r1, sb
	lsls r0, r1, #0x10
	lsrs r5, r0, #0x10
_08003A16:
	cmp r6, #0
	bne _080039BC
_08003A1A:
	movs r0, #0
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08003A2C: .4byte 0x02037F49

	thumb_func_start sub_08003A30
sub_08003A30: @ 0x08003A30
	push {r4, r5, lr}
	sub sp, #4
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r1, _08003A7C @ =0x02037EB0
	ldrb r0, [r1, #4]
	cmp r0, #0
	beq _08003A74
	adds r5, r1, #0
	adds r5, #0x99
_08003A44:
	movs r0, #1
	bl ProcSleep_08002B98
	adds r0, r4, #0
	mov r1, sp
	movs r2, #1
	bl sub_080038F4
	movs r1, #0
	ldrb r0, [r5]
	cmp r0, #0
	bne _08003A5E
	movs r1, #1
_08003A5E:
	adds r0, r1, #0
	adds r1, r4, #0
	mov r2, sp
	adds r2, #1
	movs r3, #1
	bl sub_08003938
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r4, r0
	bne _08003A44
_08003A74:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08003A7C: .4byte 0x02037EB0

	thumb_func_start sub_08003A80
sub_08003A80: @ 0x08003A80
	push {r4, r5, lr}
	sub sp, #4
	mov r0, sp
	movs r4, #0
	strh r4, [r0]
	ldr r5, _08003AF8 @ =0x02037EBC
	ldr r2, _08003AFC @ =0x0100000C
	adds r1, r5, #0
	bl CpuSet
	mov r0, sp
	adds r0, #2
	strh r4, [r0]
	adds r1, r5, #0
	adds r1, #0x18
	ldr r2, _08003B00 @ =0x01000030
	bl CpuSet
	adds r3, r5, #0
	subs r3, #0xc
	movs r2, #0
	str r2, [r5, #0x78]
	str r2, [r5, #0x7c]
	adds r0, r5, #0
	adds r0, #0x90
	str r2, [r0]
	adds r0, #4
	str r2, [r0]
	adds r0, #4
	str r2, [r0]
	adds r0, #4
	strb r4, [r0]
	adds r0, #1
	strb r4, [r0]
	adds r0, #1
	strb r4, [r0]
	adds r1, r5, #0
	adds r1, #0xa0
	adds r0, r5, #1
	str r0, [r1]
	adds r0, #0xa3
	strb r4, [r0]
	adds r0, #1
	movs r1, #1
	strb r1, [r0]
	adds r0, #3
	str r2, [r0]
	strb r1, [r3, #4]
	movs r0, #2
	strb r0, [r3, #5]
	strb r4, [r3, #6]
	strb r4, [r3, #7]
	strb r4, [r3, #8]
	ldr r0, _08003B04 @ =0x0203A300
	strb r4, [r0]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08003AF8: .4byte 0x02037EBC
_08003AFC: .4byte 0x0100000C
_08003B00: .4byte 0x01000030
_08003B04: .4byte 0x0203A300

	thumb_func_start sub_08003B08
sub_08003B08: @ 0x08003B08
	ldr r3, _08003B24 @ =0x02037EB0
	adds r2, r3, #0
	adds r2, #0x8c
	adds r1, r3, #0
	adds r1, #0x88
	ldr r0, [r1]
	str r0, [r2]
	movs r0, #0
	str r0, [r1]
	strb r0, [r3, #4]
	ldr r1, _08003B28 @ =0x0203A300
	strb r0, [r1]
	bx lr
	.align 2, 0
_08003B24: .4byte 0x02037EB0
_08003B28: .4byte 0x0203A300

	thumb_func_start sub_08003B2C
sub_08003B2C: @ 0x08003B2C
	push {lr}
	adds r2, r0, #0
	adds r3, r1, #0
	cmp r2, #0
	beq _08003B42
	ldr r0, _08003B48 @ =0x02037EB0
	adds r1, r0, #0
	adds r1, #0xa0
	str r2, [r1]
	adds r0, #0x9c
	str r3, [r0]
_08003B42:
	pop {r0}
	bx r0
	.align 2, 0
_08003B48: .4byte 0x02037EB0

	thumb_func_start sub_08003B4C
sub_08003B4C: @ 0x08003B4C
	ldr r1, _08003B5C @ =0x02037EB0
	ldr r0, _08003B60 @ =0x020376A0
	ldr r0, [r0]
	str r0, [r1]
	adds r1, #0xa8
	movs r0, #1
	strb r0, [r1]
	bx lr
	.align 2, 0
_08003B5C: .4byte 0x02037EB0
_08003B60: .4byte 0x020376A0

	thumb_func_start sub_08003B64
sub_08003B64: @ 0x08003B64
	ldr r1, _08003B6C @ =0x02037EB0
	adds r1, #0xb1
	strb r0, [r1]
	bx lr
	.align 2, 0
_08003B6C: .4byte 0x02037EB0

	thumb_func_start sub_08003B70
sub_08003B70: @ 0x08003B70
	ldr r0, _08003B78 @ =0x02037EB0
	adds r0, #0xaa
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_08003B78: .4byte 0x02037EB0

	thumb_func_start sub_08003B7C
sub_08003B7C: @ 0x08003B7C
	ldr r0, _08003B84 @ =0x02037EB0
	adds r0, #0xb0
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_08003B84: .4byte 0x02037EB0

	thumb_func_start sub_08003B88
sub_08003B88: @ 0x08003B88
	ldr r0, _08003B90 @ =0x02037EB0
	adds r0, #0xb4
	ldr r0, [r0]
	bx lr
	.align 2, 0
_08003B90: .4byte 0x02037EB0

	thumb_func_start sub_08003B94
sub_08003B94: @ 0x08003B94
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	movs r0, #0
	mov r8, r0
	movs r6, #0
	movs r7, #0
	bl m4aMPlayAllStop
	bl m4aSoundVSyncOff
	add r0, sp, #4
	movs r5, #0
	strh r7, [r0]
	ldr r4, _08003C14 @ =0x03006470
	ldr r2, _08003C18 @ =0x01000026
	adds r1, r4, #0
	bl CpuSet
	ldr r0, _08003C1C @ =0x03006458
	ldr r1, _08003C20 @ =0x082CC3CC
	str r1, [r0]
	ldr r2, _08003C24 @ =0x0300645C
	ldr r0, _08003C28 @ =0x082D26D0
	subs r0, r0, r1
	str r0, [r2]
	str r1, [r4, #0x28]
	adds r0, r4, #0
	adds r0, #0x4b
	strb r5, [r0]
	adds r0, r4, #0
	bl sub_080005B0

	thumb_func_start sub_08003BD8
sub_08003BD8: @ 0x08003BD8
	ldr r0, _08003C2C @ =0x02037EB0
	strb r5, [r0, #5]
	adds r5, r4, #0
_08003BDE:
	bl VBlankIntrWait
	ldr r0, _08003C30 @ =0x04000130
	ldrh r0, [r0]
	ldr r2, _08003C34 @ =0x000003FF
	adds r1, r2, #0
	eors r1, r0
	ldr r3, _08003C38 @ =0x03006466
	ldr r2, _08003C3C @ =0x03006464
	ldrh r0, [r2]
	adds r4, r1, #0
	bics r4, r0
	strh r4, [r3]
	strh r1, [r2]
	ldrb r0, [r5, #0x18]
	cmp r0, #0
	bne _08003C66
	ldrb r0, [r5, #0x1e]
	cmp r0, #0
	bne _08003C40
	movs r0, #2
	ands r4, r0
	cmp r4, #0
	beq _08003C40
	movs r7, #0
	b _08003D4E
	.align 2, 0
_08003C14: .4byte 0x03006470
_08003C18: .4byte 0x01000026
_08003C1C: .4byte 0x03006458
_08003C20: .4byte 0x082CC3CC
_08003C24: .4byte 0x0300645C
_08003C28: .4byte 0x082D26D0
_08003C2C: .4byte 0x02037EB0
_08003C30: .4byte 0x04000130
_08003C34: .4byte 0x000003FF
_08003C38: .4byte 0x03006466
_08003C3C: .4byte 0x03006464
_08003C40:
	ldr r3, _08003CDC @ =0x03006470
	ldrb r0, [r3, #0x18]
	cmp r0, #0
	bne _08003C66
	ldrb r0, [r3, #0x1e]
	cmp r0, #0
	beq _08003C66
	ldr r0, _08003CE0 @ =0x03006458
	ldr r1, [r0]
	adds r1, #0xc0
	ldr r0, _08003CE4 @ =0x0300645C
	ldr r2, [r0]
	subs r2, #0xc0
	movs r0, #1
	str r0, [sp]
	adds r0, r3, #0
	movs r3, #4
	bl sub_08000A4C
_08003C66:
	ldr r0, _08003CDC @ =0x03006470
	bl sub_080005EC
	adds r1, r0, #0
	ldr r0, _08003CE8 @ =0x03006460
	str r1, [r0]
	cmp r1, #4
	beq _08003CAE
	cmp r1, #8
	beq _08003CAE
	cmp r1, #0xc
	beq _08003CAE
	cmp r1, #0x40
	beq _08003CAE
	cmp r1, #0x44
	beq _08003CAE
	cmp r1, #0x48
	beq _08003CAE
	cmp r1, #0x4c
	beq _08003CAE
	cmp r1, #0x80
	beq _08003CAE
	cmp r1, #0x84
	beq _08003CAE
	cmp r1, #0x88
	beq _08003CAE
	cmp r1, #0x8c
	beq _08003CAE
	cmp r1, #0x50
	beq _08003CAE
	cmp r1, #0x60
	beq _08003CAE
	cmp r1, #0x70
	beq _08003CAE
	cmp r1, #0x71
	bne _08003CEC
_08003CAE:
	mov r1, r8
	lsls r0, r1, #0x10
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r0, r2
	lsrs r1, r0, #0x10
	mov r8, r1
	asrs r0, r0, #0x10
	cmp r0, #0xa
	ble _08003CF0
	ldr r1, _08003CDC @ =0x03006470
	ldrb r0, [r1, #0x18]
	cmp r0, #0
	bne _08003CF0
	ldrb r0, [r1, #0x1e]
	cmp r0, #0
	bne _08003CF0
	bl m4aSoundVSyncOn
	bl sub_0800386C
	b _08003CF0
	.align 2, 0
_08003CDC: .4byte 0x03006470
_08003CE0: .4byte 0x03006458
_08003CE4: .4byte 0x0300645C
_08003CE8: .4byte 0x03006460
_08003CEC:
	movs r2, #0
	mov r8, r2
_08003CF0:
	adds r0, r5, #0
	adds r0, #0x49
	ldrb r0, [r0]
	ldrb r1, [r5, #0x1d]
	cmp r0, r1
	bne _08003D00
	cmp r0, #0
	bne _08003D1C
_08003D00:
	lsls r1, r6, #0x10
	movs r2, #0x80
	lsls r2, r2, #9
	adds r1, r1, r2
	lsrs r6, r1, #0x10
	movs r0, #0xe1
	lsls r0, r0, #0x12
	cmp r1, r0
	ble _08003D1E
	bl m4aSoundVSyncOn
	bl sub_0800386C
	b _08003D1E
_08003D1C:
	movs r6, #0
_08003D1E:
	ldr r0, _08003D8C @ =0x03004400
	ldrb r0, [r0, #8]
	cmp r0, #0x17
	bne _08003D40
	ldr r1, _08003D90 @ =0x03006470
	ldrb r0, [r1, #0x18]
	cmp r0, #0
	bne _08003D40
	ldrb r1, [r1, #0x1e]
	movs r0, #0xc
	ands r0, r1
	cmp r0, #0
	beq _08003D40
	bl m4aSoundVSyncOn
	bl sub_0800386C
_08003D40:
	ldr r0, _08003D90 @ =0x03006470
	bl sub_08000B10
	cmp r0, #0
	bne _08003D4C
	b _08003BDE
_08003D4C:
	movs r7, #1
_08003D4E:
	ldr r0, _08003D94 @ =0x02037EB0
	movs r1, #0
	strb r1, [r0, #5]
	ldr r3, _08003D98 @ =0x04000200
	ldrh r0, [r3]
	mov r8, r0
	ldr r5, _08003D9C @ =0x04000202
	ldr r2, _08003DA0 @ =0x04000004
	ldrh r6, [r2]
	ldr r4, _08003DA4 @ =0x04000208
	strh r1, [r4]
	strh r1, [r2]
	strh r1, [r3]
	ldr r1, _08003DA8 @ =0x0000FFFF
	adds r0, r1, #0
	strh r0, [r5]
	mov r0, r8
	strh r0, [r3]
	strh r6, [r2]
	movs r0, #1
	strh r0, [r4]
	bl m4aSoundVSyncOn
	adds r0, r7, #0
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08003D8C: .4byte 0x03004400
_08003D90: .4byte 0x03006470
_08003D94: .4byte 0x02037EB0
_08003D98: .4byte 0x04000200
_08003D9C: .4byte 0x04000202
_08003DA0: .4byte 0x04000004
_08003DA4: .4byte 0x04000208
_08003DA8: .4byte 0x0000FFFF

	thumb_func_start sub_08003DAC
sub_08003DAC: @ 0x08003DAC
	push {r4, lr}
	ldr r4, _08003DD4 @ =0x020376A4
	ldrb r0, [r4]
	cmp r0, #0
	beq _08003DCE
	ldr r0, _08003DD8 @ =0x02030850
	ldr r1, _08003DDC @ =0x020335C0
	ldrb r1, [r1, #1]
	lsls r1, r1, #0xb
	movs r2, #0xc0
	lsls r2, r2, #0x13
	adds r1, r1, r2
	ldr r2, _08003DE0 @ =0x04000200
	bl CpuSet
	movs r0, #0
	strb r0, [r4]
_08003DCE:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08003DD4: .4byte 0x020376A4
_08003DD8: .4byte 0x02030850
_08003DDC: .4byte 0x020335C0
_08003DE0: .4byte 0x04000200

	thumb_func_start sub_08003DE4
sub_08003DE4: @ 0x08003DE4
	push {r4, lr}
	sub sp, #8
	ldr r0, _08003E1C @ =0x020376A4
	movs r1, #0
	strb r1, [r0]
	ldr r0, _08003E20 @ =0x02034E90
	strb r1, [r0]
	movs r4, #0
	str r4, [sp]
	ldr r1, _08003E24 @ =0x02030850
	ldr r2, _08003E28 @ =0x01000200
	mov r0, sp
	bl CpuFastSet
	str r4, [sp, #4]
	add r0, sp, #4
	ldr r1, _08003E2C @ =0x02033840
	ldr r2, _08003E30 @ =0x01000020
	bl CpuFastSet
	ldr r0, _08003E34 @ =sub_08003DAC
	movs r1, #0x10
	bl sub_08009460
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08003E1C: .4byte 0x020376A4
_08003E20: .4byte 0x02034E90
_08003E24: .4byte 0x02030850
_08003E28: .4byte 0x01000200
_08003E2C: .4byte 0x02033840
_08003E30: .4byte 0x01000020
_08003E34: .4byte sub_08003DAC

	thumb_func_start sub_08003E38
sub_08003E38: @ 0x08003E38
	push {r4, lr}
	sub sp, #8
	movs r4, #0
	str r4, [sp]
	ldr r1, _08003E64 @ =0x02030850
	ldr r2, _08003E68 @ =0x01000200
	mov r0, sp
	bl CpuFastSet
	str r4, [sp, #4]
	add r0, sp, #4
	ldr r1, _08003E6C @ =0x02033840
	ldr r2, _08003E70 @ =0x01000020
	bl CpuFastSet
	ldr r0, _08003E74 @ =sub_08003DAC
	bl sub_080094F4
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08003E64: .4byte 0x02030850
_08003E68: .4byte 0x01000200
_08003E6C: .4byte 0x02033840
_08003E70: .4byte 0x01000020
_08003E74: .4byte sub_08003DAC

	thumb_func_start sub_08003E78
sub_08003E78: @ 0x08003E78
	push {r4, r5, r6, r7, lr}
	adds r3, r1, #0
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r1, _08003EDC @ =0x020376A4
	movs r0, #0
	strb r0, [r1]
	movs r4, #0
	movs r0, #3
	ldrsb r0, [r3, r0]
	adds r7, r1, #0
	cmp r4, r0
	bge _08003ED0
	ldr r6, _08003EE0 @ =0x02030850
_08003E94:
	movs r0, #1
	ldrsb r0, [r3, r0]
	adds r0, r0, r4
	lsls r0, r0, #6
	movs r1, #0
	ldrsb r1, [r3, r1]
	lsls r1, r1, #1
	adds r1, r1, r6
	adds r1, r0, r1
	movs r2, #0
	movs r0, #2
	ldrsb r0, [r3, r0]
	adds r4, #1
	cmp r2, r0
	bge _08003EC4
_08003EB2:
	strh r5, [r1]
	adds r1, #2
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	movs r0, #2
	ldrsb r0, [r3, r0]
	cmp r2, r0
	blt _08003EB2
_08003EC4:
	lsls r0, r4, #0x18
	lsrs r4, r0, #0x18
	movs r0, #3
	ldrsb r0, [r3, r0]
	cmp r4, r0
	blt _08003E94
_08003ED0:
	movs r0, #1
	strb r0, [r7]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08003EDC: .4byte 0x020376A4
_08003EE0: .4byte 0x02030850

	thumb_func_start sub_08003EE4
sub_08003EE4: @ 0x08003EE4
	push {r4, lr}
	sub sp, #4
	ldr r4, _08003F08 @ =0x020376A4
	movs r0, #0
	strb r0, [r4]
	movs r0, #0
	str r0, [sp]
	ldr r1, _08003F0C @ =0x02030850
	ldr r2, _08003F10 @ =0x01000200
	mov r0, sp
	bl CpuFastSet
	movs r0, #1
	strb r0, [r4]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08003F08: .4byte 0x020376A4
_08003F0C: .4byte 0x02030850
_08003F10: .4byte 0x01000200

	thumb_func_start sub_08003F14
sub_08003F14: @ 0x08003F14
	push {r4, lr}
	sub sp, #4
	lsls r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r3, r1, #0x18
	movs r2, #0
	ldr r4, _08003F48 @ =0x02033840
	movs r1, #0xf0
	lsls r1, r1, #0x14
	ands r1, r0
	lsrs r1, r1, #0x18
	movs r0, #7
_08003F2C:
	lsls r2, r2, #4
	orrs r2, r1
	subs r0, #1
	cmp r0, #0
	bge _08003F2C
	cmp r3, #0
	bne _08003F50
	str r2, [sp]
	ldr r2, _08003F4C @ =0x01000020
	mov r0, sp
	adds r1, r4, #0
	bl CpuFastSet
	b _08003F6A
	.align 2, 0
_08003F48: .4byte 0x02033840
_08003F4C: .4byte 0x01000020
_08003F50:
	str r2, [sp]
	lsls r1, r3, #2
	adds r1, r1, r4
	movs r2, #0x20
	subs r2, r2, r3
	ldr r0, _08003F74 @ =0x001FFFFF
	ands r2, r0
	movs r0, #0xa0
	lsls r0, r0, #0x13
	orrs r2, r0
	mov r0, sp
	bl CpuSet
_08003F6A:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08003F74: .4byte 0x001FFFFF

	thumb_func_start sub_08003F78
sub_08003F78: @ 0x08003F78
	push {lr}
	lsls r1, r0, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #3
	bhi _08003F94
	asrs r1, r1, #0x10
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08003F90 @ =0x02034E40
	adds r0, r0, r1
	b _08003F96
	.align 2, 0
_08003F90: .4byte 0x02034E40
_08003F94:
	movs r0, #0
_08003F96:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08003F9C
sub_08003F9C: @ 0x08003F9C
	push {r4, lr}
	sub sp, #4
	bl sub_08003DE4
	mov r0, sp
	movs r4, #0
	strh r4, [r0]
	ldr r1, _08003FD0 @ =0x020335C0
	ldr r2, _08003FD4 @ =0x01000006
	bl CpuSet
	mov r0, sp
	adds r0, #2
	strh r4, [r0]
	ldr r1, _08003FD8 @ =0x02034E40
	ldr r2, _08003FDC @ =0x01000028
	bl CpuSet
	ldr r0, _08003FE0 @ =0x020335B4
	strb r4, [r0]
	bl sub_08004504
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08003FD0: .4byte 0x020335C0
_08003FD4: .4byte 0x01000006
_08003FD8: .4byte 0x02034E40
_08003FDC: .4byte 0x01000028
_08003FE0: .4byte 0x020335B4

	thumb_func_start sub_08003FE4
sub_08003FE4: @ 0x08003FE4
	push {r4, lr}
	sub sp, #4
	bl sub_08003E38
	mov r0, sp
	movs r4, #0
	strh r4, [r0]
	ldr r1, _08004014 @ =0x020335C0
	ldr r2, _08004018 @ =0x01000006
	bl CpuSet
	mov r0, sp
	adds r0, #2
	strh r4, [r0]
	ldr r1, _0800401C @ =0x02034E40
	ldr r2, _08004020 @ =0x01000028
	bl CpuSet
	ldr r0, _08004024 @ =0x020335B4
	strb r4, [r0]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08004014: .4byte 0x020335C0
_08004018: .4byte 0x01000006
_0800401C: .4byte 0x02034E40
_08004020: .4byte 0x01000028
_08004024: .4byte 0x020335B4

	thumb_func_start sub_08004028
sub_08004028: @ 0x08004028
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #4
	ldr r4, [sp, #0x18]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	ldr r6, _080040A4 @ =0x000003FF
	ands r4, r6
	mov r8, r4
	ldr r5, _080040A8 @ =0x020335C0
	movs r4, #3
	ands r0, r4
	movs r4, #0
	strb r0, [r5]
	movs r0, #0x1f
	ands r1, r0
	strb r1, [r5, #1]
	movs r0, #0xf
	ands r2, r0
	strb r2, [r5, #2]
	strb r4, [r5, #3]
	ands r6, r3
	adds r6, #0x13
	strh r6, [r5, #4]
	mov r0, r8
	strh r0, [r5, #6]
	strh r6, [r5, #8]
	str r4, [sp]
	ldrb r0, [r5]
	lsls r0, r0, #0xe
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r1, r0, r1
	ldrh r0, [r5, #6]
	lsls r0, r0, #5
	lsrs r2, r0, #2
	movs r0, #0x80
	lsls r0, r0, #0x11
	orrs r2, r0
	mov r0, sp
	bl CpuFastSet
	bl sub_080040AC
	movs r0, #0xff
	movs r1, #0
	bl sub_08003F14
	movs r0, #1
	bl sub_08004124
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080040A4: .4byte 0x000003FF
_080040A8: .4byte 0x020335C0

	thumb_func_start sub_080040AC
sub_080040AC: @ 0x080040AC
	push {r4, lr}
	ldr r0, _080040DC @ =0x08141BF8
	ldr r4, _080040E0 @ =0x020335C0
	ldrb r1, [r4, #2]
	lsls r1, r1, #5
	movs r2, #0xa0
	lsls r2, r2, #0x13
	adds r1, r1, r2
	bl LoadPalette_08008308
	ldr r0, _080040E4 @ =0x08141C3C
	ldrb r1, [r4]
	lsls r1, r1, #0xe
	ldr r2, _080040E8 @ =0x06000020
	adds r1, r1, r2
	bl DecompressData_08008374
	ldrb r0, [r4, #2]
	bl sub_080040EC
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080040DC: .4byte 0x08141BF8
_080040E0: .4byte 0x020335C0
_080040E4: .4byte 0x08141C3C
_080040E8: .4byte 0x06000020

	thumb_func_start sub_080040EC
sub_080040EC: @ 0x080040EC
	push {r4, r5, r6, lr}
	adds r1, r0, #0
	lsls r1, r1, #0x18
	ldr r6, _08004120 @ =0x0807E848
	movs r0, #0x80
	lsls r0, r0, #0x11
	adds r4, r1, r0
	lsrs r4, r4, #0x18
	lsrs r1, r1, #0x13
	movs r5, #0xa0
	lsls r5, r5, #0x13
	adds r1, r1, r5
	adds r0, r6, #0
	movs r2, #0xc
	bl CpuSet
	lsls r4, r4, #5
	adds r4, r4, r5
	adds r0, r6, #0
	adds r1, r4, #0
	movs r2, #0xc
	bl CpuSet
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08004120: .4byte 0x0807E848

	thumb_func_start sub_08004124
sub_08004124: @ 0x08004124
	push {r4, lr}
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #1
	bne _08004154
	ldr r2, _0800414C @ =0x030024E0
	ldrh r1, [r2]
	movs r4, #0x80
	lsls r4, r4, #1
	adds r0, r4, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _08004150 @ =0x020335C0
	ldrb r1, [r0]
	lsls r1, r1, #2
	ldrb r0, [r0, #1]
	lsls r0, r0, #8
	orrs r1, r0
	strh r1, [r2, #2]
	b _08004164
	.align 2, 0
_0800414C: .4byte 0x030024E0
_08004150: .4byte 0x020335C0
_08004154:
	ldr r1, _08004170 @ =0x030024E0
	ldrh r2, [r1]
	ldr r0, _08004174 @ =0x0000FEFF
	ands r0, r2
	movs r3, #0
	movs r2, #0
	strh r0, [r1]
	strh r2, [r1, #2]
_08004164:
	ldr r0, _08004178 @ =0x020376A4
	strb r3, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08004170: .4byte 0x030024E0
_08004174: .4byte 0x0000FEFF
_08004178: .4byte 0x020376A4

	thumb_func_start sub_0800417C
sub_0800417C: @ 0x0800417C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r3, r0, #0
	movs r0, #0
	mov ip, r0
	movs r7, #0
	ldr r1, _080041A4 @ =0x020376A4
	strb r7, [r1]
	ldrb r0, [r3, #0xc]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1e
	mov sb, r1
	cmp r0, #1
	beq _080041A8
	cmp r0, #2
	beq _080041B8
	b _080041C2
	.align 2, 0
_080041A4: .4byte 0x020376A4
_080041A8:
	movs r1, #0
	mov ip, r1
	ldr r0, _080041B4 @ =0x020335C0
	ldrb r7, [r0, #2]
	b _080041C2
	.align 2, 0
_080041B4: .4byte 0x020335C0
_080041B8:
	movs r6, #9
	mov ip, r6
	ldr r0, _08004204 @ =0x020335C0
	ldrb r0, [r0, #2]
	adds r7, r0, #1
_080041C2:
	lsls r0, r7, #0x1c
	lsrs r7, r0, #0x10
	movs r5, #0
	movs r0, #3
	ldrsb r0, [r3, r0]
	cmp r5, r0
	bge _08004274
	ldr r0, _08004208 @ =0x02030850
	mov r8, r0
_080041D4:
	movs r0, #1
	ldrsb r0, [r3, r0]
	adds r0, r0, r5
	lsls r0, r0, #5
	movs r1, #0
	ldrsb r1, [r3, r1]
	adds r0, r0, r1
	lsls r0, r0, #1
	mov r1, r8
	adds r4, r0, r1
	movs r2, #0
	movs r0, #2
	ldrsb r0, [r3, r0]
	adds r6, r5, #1
	mov sl, r6
	cmp r2, r0
	bge _0800426A
_080041F6:
	cmp r5, #0
	bne _0800421C
	cmp r2, #0
	bne _0800420C
	movs r1, #1
	b _08004254
	.align 2, 0
_08004204: .4byte 0x020335C0
_08004208: .4byte 0x02030850
_0800420C:
	movs r0, #2
	ldrsb r0, [r3, r0]
	subs r0, #1
	movs r1, #2
	cmp r2, r0
	bne _08004254
	movs r1, #3
	b _08004254
_0800421C:
	movs r0, #3
	ldrsb r0, [r3, r0]
	subs r0, #1
	cmp r5, r0
	bne _0800423E
	cmp r2, #0
	bne _0800422E
	movs r1, #4
	b _08004254
_0800422E:
	movs r0, #2
	ldrsb r0, [r3, r0]
	subs r0, #1
	movs r1, #5
	cmp r2, r0
	bne _08004254
	movs r1, #6
	b _08004254
_0800423E:
	cmp r2, #0
	bne _08004246
	movs r1, #7
	b _08004254
_08004246:
	movs r0, #2
	ldrsb r0, [r3, r0]
	subs r0, #1
	movs r1, #0
	cmp r2, r0
	bne _08004254
	movs r1, #8
_08004254:
	mov r6, ip
	adds r0, r6, r1
	adds r0, #1
	orrs r0, r7
	strh r0, [r4]
	adds r4, #2
	adds r2, #1
	movs r0, #2
	ldrsb r0, [r3, r0]
	cmp r2, r0
	blt _080041F6
_0800426A:
	mov r5, sl
	movs r0, #3
	ldrsb r0, [r3, r0]
	cmp r5, r0
	blt _080041D4
_08004274:
	movs r0, #1
	mov r1, sb
	strb r0, [r1]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08004288
sub_08004288: @ 0x08004288
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	ldr r2, _080042F8 @ =0x020335C0
	ldrh r3, [r2, #4]
	ldr r4, _080042FC @ =0x02034E40
	movs r5, #0
	ldrb r1, [r4, #0xc]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080042C4
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	cmp r5, r0
	beq _080042C4
	ldrh r1, [r4, #0xe]
	cmp r3, r1
	bge _080042B8
	subs r0, r1, r3
	cmp r6, r0
	ble _080042EC
_080042B8:
	ldrh r0, [r4, #0x12]
	adds r3, r1, r0
	ldrh r0, [r2, #6]
	cmp r3, r0
	blt _080042C4
	ldrh r3, [r2, #4]
_080042C4:
	adds r5, #1
	adds r4, #0x14
	cmp r5, #3
	bgt _080042EC
	ldrb r1, [r4, #0xc]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080042C4
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	cmp r5, r0
	beq _080042C4
	ldrh r0, [r4, #0xe]
	adds r1, r0, #0
	cmp r3, r0
	bge _080042B8
	subs r0, r0, r3
	cmp r6, r0
	bgt _080042B8
_080042EC:
	lsls r0, r3, #0x10
	lsrs r0, r0, #0x10
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080042F8: .4byte 0x020335C0
_080042FC: .4byte 0x02034E40

	thumb_func_start sub_08004300
sub_08004300: @ 0x08004300
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	mov r8, r0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	movs r6, #0
	movs r7, #0
	ldr r1, _08004320 @ =0x02034E40
	ldrb r0, [r1, #0xc]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _08004324
	adds r6, r1, #0
	b _0800433C
	.align 2, 0
_08004320: .4byte 0x02034E40
_08004324:
	adds r7, #1
	cmp r7, #3
	bgt _0800433C
	lsls r0, r7, #2
	adds r0, r0, r7
	lsls r0, r0, #2
	adds r2, r0, r1
	ldrb r0, [r2, #0xc]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _08004324
	adds r6, r2, #0
_0800433C:
	cmp r6, #0
	bne _08004346
	movs r0, #1
	rsbs r0, r0, #0
	b _080043D6
_08004346:
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r2, _080043E4 @ =0x0100000A
	mov r0, sp
	adds r1, r6, #0
	bl CpuSet
	ldr r4, _080043E8 @ =0x04000001
	mov r0, r8
	adds r1, r6, #0
	adds r2, r4, #0
	bl CpuSet
	adds r1, r6, #4
	mov r0, r8
	adds r2, r4, #0
	bl CpuSet
	cmp r5, #0
	beq _08004388
	ldrb r0, [r6, #4]
	adds r0, #1
	strb r0, [r6, #4]
	ldrb r0, [r6, #5]
	adds r0, #1
	strb r0, [r6, #5]
	ldrb r0, [r6, #6]
	subs r0, #2
	strb r0, [r6, #6]
	ldrb r0, [r6, #7]
	subs r0, #2
	strb r0, [r6, #7]
_08004388:
	ldrb r0, [r6, #0xc]
	movs r1, #1
	orrs r0, r1
	movs r2, #3
	adds r1, r5, #0
	ands r1, r2
	lsls r1, r1, #1
	movs r2, #7
	rsbs r2, r2, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r6, #0xc]
	cmp r5, #0
	beq _080043AA
	adds r0, r6, #0
	bl sub_0800417C
_080043AA:
	movs r1, #6
	ldrsb r1, [r6, r1]
	movs r0, #7
	ldrsb r0, [r6, r0]
	adds r5, r1, #0
	muls r5, r0, r5
	lsls r4, r7, #0x10
	asrs r4, r4, #0x10
	lsls r1, r5, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_08004288
	movs r1, #0
	strh r0, [r6, #0xe]
	strh r1, [r6, #0x10]
	strh r5, [r6, #0x12]
	ldr r1, _080043EC @ =0x020335B4
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	adds r0, r4, #0
_080043D6:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080043E4: .4byte 0x0100000A
_080043E8: .4byte 0x04000001
_080043EC: .4byte 0x020335B4

	thumb_func_start sub_080043F0
sub_080043F0: @ 0x080043F0
	push {r4, lr}
	sub sp, #4
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl sub_08003F78
	adds r4, r0, #0
	cmp r4, #0
	beq _08004422
	movs r0, #0
	adds r1, r4, #0
	bl sub_08003E78
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r2, _0800442C @ =0x0100000A
	mov r0, sp
	adds r1, r4, #0
	bl CpuSet
	ldr r1, _08004430 @ =0x020335B4
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
_08004422:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800442C: .4byte 0x0100000A
_08004430: .4byte 0x020335B4

	thumb_func_start sub_08004434
sub_08004434: @ 0x08004434
	push {r4, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r4, #0
	bl sub_08003F78
	bl sub_0800417C
	adds r0, r4, #0
	bl sub_08004514
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08004454
sub_08004454: @ 0x08004454
	ldr r0, _0800445C @ =0x020335C0
	ldrb r0, [r0, #3]
	bx lr
	.align 2, 0
_0800445C: .4byte 0x020335C0

	thumb_func_start sub_08004460
sub_08004460: @ 0x08004460
	ldr r1, _08004468 @ =0x020335C0
	movs r0, #1
	strb r0, [r1, #3]
	bx lr
	.align 2, 0
_08004468: .4byte 0x020335C0

	thumb_func_start sub_0800446C
sub_0800446C: @ 0x0800446C
	ldr r1, _08004474 @ =0x020335C0
	movs r0, #0
	strb r0, [r1, #3]
	bx lr
	.align 2, 0
_08004474: .4byte 0x020335C0

	thumb_func_start sub_08004478
sub_08004478: @ 0x08004478
	push {r4, lr}
	adds r4, r1, #0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl sub_08003F78
	cmp r0, #0
	beq _08004496
	cmp r4, #0
	beq _08004496
	adds r1, r0, #4
	adds r0, r4, #0
	movs r2, #2
	bl CpuSet
_08004496:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0800449C
sub_0800449C: @ 0x0800449C
	push {r4, lr}
	adds r4, r1, #0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl sub_08003F78
	cmp r0, #0
	beq _080044BA
	cmp r4, #0
	beq _080044BA
	adds r0, #4
	adds r1, r4, #0
	movs r2, #2
	bl CpuSet
_080044BA:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080044C0
sub_080044C0: @ 0x080044C0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r3, _080044D8 @ =0x020335C0
	movs r2, #0xf
	ands r0, r2
	strb r0, [r3, #0xa]
	ands r1, r2
	strb r1, [r3, #0xb]
	bx lr
	.align 2, 0
_080044D8: .4byte 0x020335C0

	thumb_func_start sub_080044DC
sub_080044DC: @ 0x080044DC
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _080044EC @ =0x020335C0
	movs r1, #0xf
	ands r0, r1
	strb r0, [r2, #0xa]
	bx lr
	.align 2, 0
_080044EC: .4byte 0x020335C0

	thumb_func_start sub_080044F0
sub_080044F0: @ 0x080044F0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _08004500 @ =0x020335C0
	movs r1, #0xf
	ands r0, r1
	strb r0, [r2, #0xb]
	bx lr
	.align 2, 0
_08004500: .4byte 0x020335C0

	thumb_func_start sub_08004504
sub_08004504: @ 0x08004504
	ldr r0, _08004510 @ =0x020335C0
	movs r1, #1
	strb r1, [r0, #0xa]
	movs r1, #0xff
	strb r1, [r0, #0xb]
	bx lr
	.align 2, 0
_08004510: .4byte 0x020335C0

	thumb_func_start sub_08004514
sub_08004514: @ 0x08004514
	push {r4, lr}
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl sub_08003F78
	adds r4, r0, #0
	movs r2, #0
	movs r1, #0
	cmp r4, #0
	beq _0800455E
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1e
	cmp r0, #1
	beq _08004538
	cmp r0, #2
	beq _08004544
	b _0800454C
_08004538:
	movs r2, #1
	ldr r0, _08004540 @ =0x020335C0
	ldrb r1, [r0, #2]
	b _0800454C
	.align 2, 0
_08004540: .4byte 0x020335C0
_08004544:
	movs r2, #0xa
	ldr r0, _08004564 @ =0x020335C0
	ldrb r0, [r0, #2]
	adds r1, r0, #1
_0800454C:
	lsls r0, r1, #0x1c
	lsrs r0, r0, #0x10
	orrs r0, r2
	adds r1, r4, #4
	bl sub_08003E78
	movs r0, #0
	strb r0, [r4, #8]
	strb r0, [r4, #9]
_0800455E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08004564: .4byte 0x020335C0

	thumb_func_start sub_08004568
sub_08004568: @ 0x08004568
	push {r4, lr}
	adds r4, r1, #0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl sub_08003F78
	adds r1, r0, #0
	cmp r1, #0
	beq _08004586
	cmp r4, #0
	beq _08004586
	ldrb r0, [r4]
	strb r0, [r1, #8]
	ldrb r0, [r4, #1]
	strb r0, [r1, #9]
_08004586:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0800458C
sub_0800458C: @ 0x0800458C
	push {r4, r5, r6, r7, lr}
	adds r3, r0, #0
	adds r6, r1, #0
	movs r5, #0
	movs r1, #0
	movs r7, #0
	movs r0, #0
	mov ip, r0
	movs r4, #0
	b _080045D8
_080045A0:
	ldrb r2, [r3]
	cmp r5, #0
	bne _080045D0
	adds r0, r2, #0
	subs r0, #0x81
	cmp r0, #0x1e
	bls _080045CC
	subs r0, #0x5f
	cmp r0, #0xa
	bls _080045CC
	cmp r2, #0xa
	bne _080045C6
	cmp r7, r1
	bge _080045BE
	adds r7, r1, #0
_080045BE:
	movs r0, #2
	add ip, r0
	movs r1, #0
	b _080045D6
_080045C6:
	adds r4, #1
	adds r1, #1
	b _080045D6
_080045CC:
	adds r5, r2, #0
	b _080045D6
_080045D0:
	adds r4, #1
	adds r1, #1
	movs r5, #0
_080045D6:
	adds r3, #1
_080045D8:
	ldrb r0, [r3]
	cmp r0, #0
	bne _080045A0
	cmp r6, #0
	beq _080045F2
	adds r0, r7, #0
	cmp r0, r1
	bge _080045EA
	adds r0, r1, #0
_080045EA:
	strb r0, [r6]
	mov r0, ip
	adds r0, #2
	strb r0, [r6, #1]
_080045F2:
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_080045FC
sub_080045FC: @ 0x080045FC
	push {r4, r5, r6, r7, lr}
	adds r2, r0, #0
	adds r6, r1, #0
	movs r4, #0
	movs r7, #0
	movs r3, #0
	movs r5, #0
	b _080046BA
_0800460C:
	ldrb r0, [r2]
	ldrb r1, [r2, #1]
	cmp r0, #0xff
	beq _080046B8
	cmp r0, #0x2f
	bgt _080046AA
	subs r0, #0xa
	cmp r0, #0x16
	bhi _080046B8
	lsls r0, r0, #2
	ldr r1, _08004628 @ =_0800462C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08004628: .4byte _0800462C
_0800462C: @ jump table
	.4byte _08004688 @ case 0
	.4byte _080046B8 @ case 1
	.4byte _080046B8 @ case 2
	.4byte _080046B8 @ case 3
	.4byte _080046B8 @ case 4
	.4byte _080046B8 @ case 5
	.4byte _080046B4 @ case 6
	.4byte _080046B8 @ case 7
	.4byte _080046B8 @ case 8
	.4byte _080046B8 @ case 9
	.4byte _080046B8 @ case 10
	.4byte _080046B8 @ case 11
	.4byte _080046B8 @ case 12
	.4byte _080046B8 @ case 13
	.4byte _080046B8 @ case 14
	.4byte _080046B8 @ case 15
	.4byte _080046B8 @ case 16
	.4byte _080046B8 @ case 17
	.4byte _080046B8 @ case 18
	.4byte _080046B8 @ case 19
	.4byte _080046A6 @ case 20
	.4byte _080046B8 @ case 21
	.4byte _080046B4 @ case 22
_08004688:
	cmp r7, r4
	bge _0800468E
	adds r7, r4, #0
_0800468E:
	ldr r0, _0800469C @ =0x020335C0
	ldrb r0, [r0, #3]
	cmp r0, #0
	beq _080046A0
	adds r3, #1
	b _080046A2
	.align 2, 0
_0800469C: .4byte 0x020335C0
_080046A0:
	adds r3, #2
_080046A2:
	movs r4, #0
	b _080046B8
_080046A6:
	adds r2, #1
	b _080046B8
_080046AA:
	adds r0, r1, #0
	subs r0, #0x80
	cmp r0, #1
	bhi _080046B4
	adds r2, #1
_080046B4:
	adds r5, #1
	adds r4, #1
_080046B8:
	adds r2, #1
_080046BA:
	ldrb r0, [r2]
	cmp r0, #0
	bne _0800460C
	cmp r6, #0
	beq _080046E2
	ldr r0, _080046D0 @ =0x020335C0
	ldrb r0, [r0, #3]
	cmp r0, #0
	beq _080046D4
	adds r3, #1
	b _080046D6
	.align 2, 0
_080046D0: .4byte 0x020335C0
_080046D4:
	adds r3, #2
_080046D6:
	adds r0, r7, #0
	cmp r0, r4
	bge _080046DE
	adds r0, r4, #0
_080046DE:
	strb r0, [r6]
	strb r3, [r6, #1]
_080046E2:
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_080046EC
sub_080046EC: @ 0x080046EC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r5, r0, #0
	movs r6, #0
	movs r4, #0
	movs r0, #1
	bl ProcSleep_08002B98
	ldr r0, _08004714 @ =0x020376A4
	strb r6, [r0]
	ldrb r0, [r5, #0xc]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1e
	cmp r0, #1
	beq _08004718
	cmp r0, #2
	beq _08004724
	b _0800472C
	.align 2, 0
_08004714: .4byte 0x020376A4
_08004718:
	movs r6, #1
	ldr r0, _08004720 @ =0x020335C0
	ldrb r4, [r0, #2]
	b _0800472C
	.align 2, 0
_08004720: .4byte 0x020335C0
_08004724:
	movs r6, #0xa
	ldr r0, _080047BC @ =0x020335C0
	ldrb r0, [r0, #2]
	adds r4, r0, #1
_0800472C:
	lsls r0, r4, #0x1c
	lsrs r4, r0, #0x10
	movs r1, #9
	ldrsb r1, [r5, r1]
	movs r3, #7
	ldrsb r3, [r5, r3]
	subs r0, r3, #1
	cmp r1, r0
	blt _080047A8
	orrs r6, r4
	mov r8, r6
	ldr r7, _080047C0 @ =0x001FFFFF
_08004744:
	movs r2, #5
	ldrsb r2, [r5, r2]
	lsls r2, r2, #6
	movs r0, #4
	ldrsb r0, [r5, r0]
	lsls r0, r0, #1
	ldr r1, _080047C4 @ =0x02030850
	adds r0, r0, r1
	adds r1, r2, r0
	movs r6, #0
	subs r0, r3, #1
	cmp r6, r0
	bge _0800477C
_0800475E:
	movs r2, #6
	ldrsb r2, [r5, r2]
	ands r2, r7
	adds r4, r1, #0
	adds r4, #0x40
	adds r0, r4, #0
	bl CpuSet
	adds r1, r4, #0
	adds r6, #1
	movs r0, #7
	ldrsb r0, [r5, r0]
	subs r0, #1
	cmp r6, r0
	blt _0800475E
_0800477C:
	mov r0, sp
	mov r2, r8
	strh r2, [r0]
	movs r2, #6
	ldrsb r2, [r5, r2]
	ands r2, r7
	movs r0, #0x80
	lsls r0, r0, #0x11
	orrs r2, r0
	mov r0, sp
	bl CpuSet
	ldrb r0, [r5, #9]
	subs r0, #1
	strb r0, [r5, #9]
	movs r1, #9
	ldrsb r1, [r5, r1]
	movs r3, #7
	ldrsb r3, [r5, r3]
	subs r0, r3, #1
	cmp r1, r0
	bge _08004744
_080047A8:
	ldr r1, _080047C8 @ =0x020376A4
	movs r0, #1
	strb r0, [r1]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080047BC: .4byte 0x020335C0
_080047C0: .4byte 0x001FFFFF
_080047C4: .4byte 0x02030850
_080047C8: .4byte 0x020376A4

	thumb_func_start sub_080047CC
sub_080047CC: @ 0x080047CC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl sub_08003F78
	adds r4, r0, #0
	adds r0, r4, #4
	str r0, [sp]
	movs r1, #8
	adds r1, r1, r4
	mov r8, r1
	ldr r1, _08004854 @ =0x020376A4
	movs r0, #0
	strb r0, [r1]
	ldrh r0, [r4, #0x10]
	ldrh r2, [r4, #0xe]
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	ldr r5, _08004858 @ =0x020335C0
	ldrb r0, [r5, #2]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
	ldr r0, [sp]
	movs r2, #1
	ldrsb r2, [r0, r2]
	mov r1, r8
	movs r0, #1
	ldrsb r0, [r1, r0]
	adds r2, r2, r0
	lsls r2, r2, #6
	movs r0, #4
	ldrsb r0, [r4, r0]
	movs r1, #8
	ldrsb r1, [r4, r1]
	adds r0, r0, r1
	lsls r0, r0, #1
	ldr r1, _0800485C @ =0x02030850
	adds r0, r0, r1
	adds r7, r2, r0
	ldrb r2, [r5]
	lsls r2, r2, #0xe
	mov r1, sb
	lsls r0, r1, #5
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r0, r0, r1
	adds r2, r2, r0
	mov sl, r2
	cmp r6, #0xff
	bhi _08004860
	ldrb r1, [r5, #0xa]
	ldrb r2, [r5, #0xb]
	adds r0, r6, #0
	bl sub_080051CC
	movs r5, #1
	b _08004876
	.align 2, 0
_08004854: .4byte 0x020376A4
_08004858: .4byte 0x020335C0
_0800485C: .4byte 0x02030850
_08004860:
	ldrb r1, [r5, #3]
	adds r0, r6, #0
	bl sub_08005120
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrb r1, [r5, #0xa]
	ldrb r2, [r5, #0xb]
	bl sub_0800527C
	movs r5, #2
_08004876:
	ldr r0, _080048E4 @ =0x02033840
	lsls r2, r5, #3
	mov r1, sl
	bl CpuFastSet
	ldrh r0, [r4, #0x10]
	adds r0, r0, r5
	strh r0, [r4, #0x10]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r2, [r4, #0x12]
	cmp r0, r2
	blo _08004894
	movs r0, #0
	strh r0, [r4, #0x10]
_08004894:
	mov r0, sb
	ldr r1, [sp, #4]
	orrs r0, r1
	strh r0, [r7]
	cmp r5, #2
	bne _080048AA
	adds r7, #0x40
	mov r0, sb
	adds r0, #1
	orrs r0, r1
	strh r0, [r7]
_080048AA:
	mov r2, r8
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldr r2, [sp]
	movs r1, #2
	ldrsb r1, [r2, r1]
	cmp r0, r1
	ble _080048CC
	movs r0, #0
	mov r1, r8
	strb r0, [r1]
	ldrb r0, [r1, #1]
	adds r0, r5, r0
	strb r0, [r1, #1]
_080048CC:
	ldr r1, _080048E8 @ =0x020376A4
	movs r0, #1
	strb r0, [r1]
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080048E4: .4byte 0x02033840
_080048E8: .4byte 0x020376A4

	thumb_func_start sub_080048EC
sub_080048EC: @ 0x080048EC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0
	ldr r0, [sp, #0x1c]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov ip, r1
	lsls r2, r2, #0x18
	lsrs r5, r2, #0x18
	mov sb, r5
	lsls r3, r3, #0x18
	lsrs r4, r3, #0x18
	mov r8, r4
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	ldr r0, _08004924 @ =0x020335C0
	ldrb r0, [r0, #3]
	cmp r0, #0
	beq _08004928
	adds r0, r1, #0
	movs r1, #1
	bl sub_08005120
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	b _0800492E
	.align 2, 0
_08004924: .4byte 0x020335C0
_08004928:
	cmp r1, #0xff
	bhi _0800493A
	adds r0, r1, #0
_0800492E:
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_080051CC
	movs r5, #1
	b _0800495C
_0800493A:
	mov r0, ip
	movs r1, #0
	bl sub_08005120
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r1, sb
	mov r2, r8
	bl sub_0800527C
	cmp r7, #0
	beq _08004956
	cmp r7, #1
	beq _0800495A
_08004956:
	movs r5, #2
	b _0800495C
_0800495A:
	movs r5, #0x81
_0800495C:
	movs r0, #0x80
	ands r0, r5
	cmp r0, #0
	beq _08004988
	ldr r4, _08004984 @ =0x02033840
	adds r0, r4, #0
	adds r1, r6, #0
	movs r2, #8
	bl CpuFastSet
	movs r0, #0x80
	lsls r0, r0, #3
	adds r6, r6, r0
	adds r4, #0x20
	adds r0, r4, #0
	adds r1, r6, #0
	movs r2, #8
	bl CpuFastSet
	b _08004992
	.align 2, 0
_08004984: .4byte 0x02033840
_08004988:
	ldr r0, _080049A4 @ =0x02033840
	lsls r2, r5, #3
	adds r1, r6, #0
	bl CpuFastSet
_08004992:
	movs r0, #0x7f
	ands r5, r0
	adds r0, r5, #0
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080049A4: .4byte 0x02033840

	thumb_func_start sub_080049A8
sub_080049A8: @ 0x080049A8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r1, #0
	lsls r4, r0, #0x10
	asrs r0, r4, #0x10
	bl sub_08003F78
	adds r5, r0, #0
	cmp r5, #0
	beq _08004A1A
	movs r7, #0
	ldrb r0, [r6]
	cmp r0, #0
	beq _08004A1A
	mov r8, r4
_080049C8:
	ldrb r4, [r6]
	movs r1, #9
	ldrsb r1, [r5, r1]
	movs r0, #7
	ldrsb r0, [r5, r0]
	cmp r1, r0
	blt _080049DC
	adds r0, r5, #0
	bl sub_080046EC
_080049DC:
	cmp r7, #0
	bne _08004A00
	adds r0, r4, #0
	subs r0, #0x81
	cmp r0, #0x1e
	bls _080049FC
	subs r0, #0x5f
	cmp r0, #0xa
	bls _080049FC
	cmp r4, #0xa
	bne _08004A04
	strb r7, [r5, #8]
	ldrb r0, [r5, #9]
	adds r0, #2
	strb r0, [r5, #9]
	b _08004A12
_080049FC:
	adds r7, r4, #0
	b _08004A12
_08004A00:
	lsls r0, r7, #8
	orrs r4, r0
_08004A04:
	lsls r1, r4, #0x10
	lsrs r1, r1, #0x10
	mov r2, r8
	asrs r0, r2, #0x10
	bl sub_080047CC
	movs r7, #0
_08004A12:
	adds r6, #1
	ldrb r0, [r6]
	cmp r0, #0
	bne _080049C8
_08004A1A:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08004A24
sub_08004A24: @ 0x08004A24
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r0, [sp, #0x20]
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov sb, r2
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov r8, r3
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	movs r6, #0
	movs r2, #0
	b _08004A84
_08004A4A:
	ldrb r1, [r4]
	cmp r2, #0
	bne _08004A62
	adds r0, r1, #0
	subs r0, #0x81
	cmp r0, #0x1e
	bls _08004A5E
	subs r0, #0x5f
	cmp r0, #0xa
	bhi _08004A66
_08004A5E:
	adds r2, r1, #0
	b _08004A82
_08004A62:
	lsls r0, r2, #8
	orrs r1, r0
_08004A66:
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r7, [sp]
	adds r0, r5, #0
	mov r2, sb
	mov r3, r8
	bl sub_080048EC
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r0, #5
	adds r5, r5, r1
	adds r6, r6, r0
	movs r2, #0
_08004A82:
	adds r4, #1
_08004A84:
	ldrb r0, [r4]
	cmp r0, #0
	bne _08004A4A
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08004A9C
sub_08004A9C: @ 0x08004A9C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl sub_08003F78
	adds r4, r0, #0
	adds r0, r4, #4
	str r0, [sp]
	movs r1, #8
	adds r1, r1, r4
	mov r8, r1
	ldr r1, _08004B2C @ =0x020376A4
	movs r0, #0
	strb r0, [r1]
	ldrh r0, [r4, #0x10]
	ldrh r2, [r4, #0xe]
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	ldr r5, _08004B30 @ =0x020335C0
	ldrb r0, [r5, #2]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
	ldr r0, [sp]
	movs r2, #1
	ldrsb r2, [r0, r2]
	mov r1, r8
	movs r0, #1
	ldrsb r0, [r1, r0]
	adds r2, r2, r0
	lsls r2, r2, #6
	movs r0, #4
	ldrsb r0, [r4, r0]
	movs r1, #8
	ldrsb r1, [r4, r1]
	adds r0, r0, r1
	lsls r0, r0, #1
	ldr r1, _08004B34 @ =0x02030850
	adds r0, r0, r1
	adds r7, r2, r0
	ldrb r2, [r5]
	lsls r2, r2, #0xe
	mov r1, sb
	lsls r0, r1, #5
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r0, r0, r1
	adds r2, r2, r0
	mov sl, r2
	ldrb r0, [r5, #3]
	cmp r0, #0
	beq _08004B38
	adds r0, r6, #0
	bl sub_080050DC
	adds r6, r0, #0
	ldrb r1, [r5, #0xa]
	ldrb r2, [r5, #0xb]
	adds r0, r6, #0
	bl sub_080051CC
	movs r5, #1
	b _08004B44
	.align 2, 0
_08004B2C: .4byte 0x020376A4
_08004B30: .4byte 0x020335C0
_08004B34: .4byte 0x02030850
_08004B38:
	ldrb r1, [r5, #0xa]
	ldrb r2, [r5, #0xb]
	adds r0, r6, #0
	bl sub_0800527C
	movs r5, #2
_08004B44:
	ldr r0, _08004BB0 @ =0x02033840
	lsls r2, r5, #3
	mov r1, sl
	bl CpuFastSet
	ldrh r0, [r4, #0x10]
	adds r0, r0, r5
	strh r0, [r4, #0x10]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r2, [r4, #0x12]
	cmp r0, r2
	blo _08004B62
	movs r0, #0
	strh r0, [r4, #0x10]
_08004B62:
	mov r0, sb
	ldr r1, [sp, #4]
	orrs r0, r1
	strh r0, [r7]
	cmp r5, #2
	bne _08004B78
	adds r7, #0x40
	mov r0, sb
	adds r0, #1
	orrs r0, r1
	strh r0, [r7]
_08004B78:
	mov r2, r8
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldr r2, [sp]
	movs r1, #2
	ldrsb r1, [r2, r1]
	cmp r0, r1
	ble _08004B9A
	movs r0, #0
	mov r1, r8
	strb r0, [r1]
	ldrb r0, [r1, #1]
	adds r0, r5, r0
	strb r0, [r1, #1]
_08004B9A:
	ldr r1, _08004BB4 @ =0x020376A4
	movs r0, #1
	strb r0, [r1]
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08004BB0: .4byte 0x02033840
_08004BB4: .4byte 0x020376A4

	thumb_func_start sub_08004BB8
sub_08004BB8: @ 0x08004BB8
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r0, [sp, #0x14]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x18
	lsrs r5, r2, #0x18
	lsls r3, r3, #0x18
	lsrs r7, r3, #0x18
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r0, _08004BEC @ =0x020335C0
	ldrb r0, [r0, #3]
	cmp r0, #0
	beq _08004BF0
	adds r0, r1, #0
	bl sub_080050DC
	adds r1, r0, #0
	adds r0, r1, #0
	adds r1, r5, #0
	adds r2, r7, #0
	bl sub_080051CC
	movs r5, #1
	b _08004C08
	.align 2, 0
_08004BEC: .4byte 0x020335C0
_08004BF0:
	adds r0, r1, #0
	adds r1, r5, #0
	adds r2, r7, #0
	bl sub_0800527C
	cmp r4, #0
	beq _08004C02
	cmp r4, #1
	beq _08004C06
_08004C02:
	movs r5, #2
	b _08004C08
_08004C06:
	movs r5, #0x81
_08004C08:
	movs r0, #0x80
	ands r0, r5
	cmp r0, #0
	beq _08004C34
	ldr r4, _08004C30 @ =0x02033840
	adds r0, r4, #0
	adds r1, r6, #0
	movs r2, #8
	bl CpuFastSet
	movs r0, #0x80
	lsls r0, r0, #3
	adds r6, r6, r0
	adds r4, #0x20
	adds r0, r4, #0
	adds r1, r6, #0
	movs r2, #8
	bl CpuFastSet
	b _08004C3E
	.align 2, 0
_08004C30: .4byte 0x02033840
_08004C34:
	ldr r0, _08004C4C @ =0x02033840
	lsls r2, r5, #3
	adds r1, r6, #0
	bl CpuFastSet
_08004C3E:
	movs r0, #0x7f
	ands r5, r0
	adds r0, r5, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08004C4C: .4byte 0x02033840

	thumb_func_start sub_08004C50
sub_08004C50: @ 0x08004C50
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r1, #0
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	asrs r0, r0, #0x10
	bl sub_08003F78
	adds r5, r0, #0
	ldr r0, _08004C70 @ =0x020335C0
	ldrb r7, [r0, #0xa]
	ldrb r0, [r0, #0xb]
	mov r8, r0
	b _08004D74
	.align 2, 0
_08004C70: .4byte 0x020335C0
_08004C74:
	ldrb r1, [r4]
	ldrb r2, [r4, #1]
	cmp r1, #0xff
	beq _08004D72
	cmp r1, #0x2f
	bhi _08004D48
	adds r0, r1, #0
	subs r0, #0xa
	cmp r0, #0x16
	bhi _08004D40
	lsls r0, r0, #2
	ldr r1, _08004C94 @ =_08004C98
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08004C94: .4byte _08004C98
_08004C98: @ jump table
	.4byte _08004CF4 @ case 0
	.4byte _08004D14 @ case 1
	.4byte _08004D40 @ case 2
	.4byte _08004D40 @ case 3
	.4byte _08004D40 @ case 4
	.4byte _08004D40 @ case 5
	.4byte _08004D44 @ case 6
	.4byte _08004D40 @ case 7
	.4byte _08004D40 @ case 8
	.4byte _08004D40 @ case 9
	.4byte _08004D40 @ case 10
	.4byte _08004D40 @ case 11
	.4byte _08004D40 @ case 12
	.4byte _08004D40 @ case 13
	.4byte _08004D40 @ case 14
	.4byte _08004D40 @ case 15
	.4byte _08004D40 @ case 16
	.4byte _08004D40 @ case 17
	.4byte _08004D40 @ case 18
	.4byte _08004D40 @ case 19
	.4byte _08004D1E @ case 20
	.4byte _08004D32 @ case 21
	.4byte _08004D44 @ case 22
_08004CF4:
	movs r0, #0
	strb r0, [r5, #8]
	ldr r0, _08004D08 @ =0x020335C0
	ldrb r0, [r0, #3]
	cmp r0, #0
	beq _08004D0C
	ldrb r0, [r5, #9]
	adds r0, #1
	strb r0, [r5, #9]
	b _08004D72
	.align 2, 0
_08004D08: .4byte 0x020335C0
_08004D0C:
	ldrb r0, [r5, #9]
	adds r0, #2
	strb r0, [r5, #9]
	b _08004D72
_08004D14:
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	bl sub_08004514
	b _08004D72
_08004D1E:
	cmp r2, #8
	bne _08004D2A
	adds r0, r7, #0
	bl sub_080044DC
	b _08004D40
_08004D2A:
	adds r0, r2, #0
	bl sub_080044DC
	b _08004D40
_08004D32:
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	subs r1, r2, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl sub_08005DC4
_08004D40:
	adds r4, #1
	b _08004D72
_08004D44:
	movs r1, #0x10
	b _08004D6A
_08004D48:
	adds r0, r2, #0
	subs r0, #0x80
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bhi _08004D62
	adds r0, r1, #0
	adds r1, r2, #0
	bl sub_08005080
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r4, #1
_08004D62:
	adds r0, r1, #0
	subs r0, #0x30
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
_08004D6A:
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	bl sub_08004A9C
_08004D72:
	adds r4, #1
_08004D74:
	ldrb r0, [r4]
	cmp r0, #0
	beq _08004D7C
	b _08004C74
_08004D7C:
	ldr r0, _08004D90 @ =0x020335C0
	strb r7, [r0, #0xa]
	mov r1, r8
	strb r1, [r0, #0xb]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08004D90: .4byte 0x020335C0

	thumb_func_start sub_08004D94
sub_08004D94: @ 0x08004D94
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r0, [sp, #0x28]
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov sl, r2
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov sb, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r0, _08004DC4 @ =0x020335C0
	ldrb r6, [r0, #0xa]
	ldrb r0, [r0, #0xb]
	str r0, [sp, #4]
	movs r7, #0
	b _08004E44
	.align 2, 0
_08004DC4: .4byte 0x020335C0
_08004DC8:
	ldrb r1, [r4]
	ldrb r0, [r4, #1]
	adds r2, r0, #0
	cmp r1, #0xff
	beq _08004E42
	cmp r1, #0x2f
	bhi _08004E08
	cmp r1, #0x1e
	beq _08004DEE
	cmp r1, #0x1e
	bgt _08004DE4
	cmp r1, #0x10
	beq _08004E00
	b _08004E04
_08004DE4:
	cmp r1, #0x1f
	beq _08004E04
	cmp r1, #0x20
	beq _08004E00
	b _08004E04
_08004DEE:
	cmp r0, #8
	bne _08004DFA
	adds r0, r6, #0
	bl sub_080044DC
	b _08004E04
_08004DFA:
	bl sub_080044DC
	b _08004E04
_08004E00:
	movs r1, #0x10
	b _08004E2A
_08004E04:
	adds r4, #1
	b _08004E42
_08004E08:
	adds r0, r2, #0
	subs r0, #0x80
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bhi _08004E22
	adds r0, r1, #0
	adds r1, r2, #0
	bl sub_08005080
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r4, #1
_08004E22:
	adds r0, r1, #0
	subs r0, #0x30
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
_08004E2A:
	mov r0, r8
	str r0, [sp]
	adds r0, r5, #0
	mov r2, sl
	mov r3, sb
	bl sub_08004BB8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r0, #5
	adds r5, r5, r1
	adds r7, r7, r0
_08004E42:
	adds r4, #1
_08004E44:
	ldrb r0, [r4]
	cmp r0, #0
	bne _08004DC8
	ldr r0, _08004E68 @ =0x020335C0
	strb r6, [r0, #0xa]
	mov r1, sp
	ldrb r1, [r1, #4]
	strb r1, [r0, #0xb]
	lsls r0, r7, #0x18
	lsrs r0, r0, #0x18
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08004E68: .4byte 0x020335C0

	thumb_func_start sub_08004E6C
sub_08004E6C: @ 0x08004E6C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	adds r6, r0, #0
	adds r4, r1, #0
	ldr r0, [sp, #0x34]
	ldr r1, [sp, #0x38]
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	str r2, [sp, #4]
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r3, [sp, #8]
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #0xc]
	ldr r0, _08004EA8 @ =0x020335C0
	ldrb r1, [r0, #0xa]
	mov r8, r1
	ldrb r0, [r0, #0xb]
	str r0, [sp, #0x10]
	movs r5, #0
	mov sl, r5
	mov sb, r5
	b _08004FA4
	.align 2, 0
_08004EA8: .4byte 0x020335C0
_08004EAC:
	ldrb r1, [r4]
	ldrb r2, [r4, #1]
	cmp r1, #0xff
	beq _08004FA2
	cmp r1, #0x2f
	bhi _08004F66
	adds r0, r1, #0
	subs r0, #0xa
	cmp r0, #0x16
	bhi _08004FA2
	lsls r0, r0, #2
	ldr r1, _08004ECC @ =_08004ED0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08004ECC: .4byte _08004ED0
_08004ED0: @ jump table
	.4byte _08004F2C @ case 0
	.4byte _08004FA2 @ case 1
	.4byte _08004FA2 @ case 2
	.4byte _08004FA2 @ case 3
	.4byte _08004FA2 @ case 4
	.4byte _08004FA2 @ case 5
	.4byte _08004F62 @ case 6
	.4byte _08004FA2 @ case 7
	.4byte _08004FA2 @ case 8
	.4byte _08004FA2 @ case 9
	.4byte _08004FA2 @ case 10
	.4byte _08004FA2 @ case 11
	.4byte _08004FA2 @ case 12
	.4byte _08004FA2 @ case 13
	.4byte _08004FA2 @ case 14
	.4byte _08004FA2 @ case 15
	.4byte _08004FA2 @ case 16
	.4byte _08004FA2 @ case 17
	.4byte _08004FA2 @ case 18
	.4byte _08004FA2 @ case 19
	.4byte _08004F4C @ case 20
	.4byte _08004F5E @ case 21
	.4byte _08004F62 @ case 22
_08004F2C:
	cmp r7, #0
	bne _08004F34
	movs r5, #2
	b _08004F3A
_08004F34:
	cmp r7, #1
	bne _08004F3A
	movs r5, #1
_08004F3A:
	ldr r2, [sp, #0xc]
	mov r1, sb
	subs r0, r2, r1
	muls r0, r5, r0
	lsls r0, r0, #5
	adds r6, r6, r0
	movs r2, #0
	mov sb, r2
	b _08004FA2
_08004F4C:
	cmp r2, #8
	bne _08004F58
	mov r0, r8
	bl sub_080044DC
	b _08004F5E
_08004F58:
	adds r0, r2, #0
	bl sub_080044DC
_08004F5E:
	adds r4, #1
	b _08004FA2
_08004F62:
	movs r1, #0x10
	b _08004F88
_08004F66:
	adds r0, r2, #0
	subs r0, #0x80
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bhi _08004F80
	adds r0, r1, #0
	adds r1, r2, #0
	bl sub_08005080
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r4, #1
_08004F80:
	adds r0, r1, #0
	subs r0, #0x30
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
_08004F88:
	str r7, [sp]
	adds r0, r6, #0
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
	bl sub_08004BB8
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	lsls r0, r5, #5
	adds r6, r6, r0
	add sl, r5
	movs r0, #1
	add sb, r0
_08004FA2:
	adds r4, #1
_08004FA4:
	ldrb r0, [r4]
	cmp r0, #0
	beq _08004FAC
	b _08004EAC
_08004FAC:
	ldr r0, _08004FD0 @ =0x020335C0
	mov r1, r8
	strb r1, [r0, #0xa]
	mov r2, sp
	ldrb r2, [r2, #0x10]
	strb r2, [r0, #0xb]
	mov r1, sl
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08004FD0: .4byte 0x020335C0

	thumb_func_start sub_08004FD4
sub_08004FD4: @ 0x08004FD4
	push {r4, r5, r6, lr}
	ldr r4, [sp, #0x10]
	ldr r5, [sp, #0x14]
	lsls r0, r0, #0x18
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	lsls r2, r2, #0x18
	lsls r3, r3, #0x18
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	lsrs r0, r0, #0xd
	lsrs r3, r3, #0x12
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r3, r3, r1
	adds r0, r0, r3
	lsrs r2, r2, #0x17
	adds r2, r0, r2
	ldr r0, _08005024 @ =0x020335C0
	ldrb r0, [r0, #2]
	lsls r0, r0, #0x1c
	lsrs r3, r0, #0x10
	cmp r4, #0
	beq _0800503E
_08005008:
	adds r0, r6, #0
	orrs r0, r3
	strh r0, [r2]
	adds r1, r2, #0
	adds r1, #0x40
	cmp r5, #0
	beq _0800501A
	cmp r5, #1
	beq _08005028
_0800501A:
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r0, r6, #0
	b _0800502C
	.align 2, 0
_08005024: .4byte 0x020335C0
_08005028:
	adds r0, r6, #0
	adds r0, #0x20
_0800502C:
	orrs r0, r3
	strh r0, [r1]
	adds r2, #2
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	subs r4, #1
	cmp r4, #0
	bne _08005008
_0800503E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08005044
sub_08005044: @ 0x08005044
	push {r4, r5, lr}
	ldr r4, [sp, #0xc]
	lsls r0, r0, #0x18
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	lsls r2, r2, #0x18
	lsls r3, r3, #0x18
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	lsrs r0, r0, #0xd
	lsrs r3, r3, #0x12
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r3, r3, r1
	adds r0, r0, r3
	lsrs r2, r2, #0x17
	adds r1, r0, r2
	cmp r4, #0
	beq _0800507A
_0800506A:
	strh r5, [r1]
	adds r0, r1, #0
	adds r0, #0x40
	strh r5, [r0]
	adds r1, #2
	subs r4, #1
	cmp r4, #0
	bne _0800506A
_0800507A:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08005080
sub_08005080: @ 0x08005080
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0x80
	bne _080050C2
	cmp r0, #0x9a
	bhi _08005096
	adds r0, #0x6a
	b _080050D4
_08005096:
	cmp r0, #0x9f
	bhi _0800509E
	adds r0, #0x6a
	b _080050D4
_0800509E:
	cmp r0, #0xa4
	bhi _080050A6
	adds r0, #0x6a
	b _080050D4
_080050A6:
	cmp r0, #0xae
	bhi _080050AE
	adds r0, #0x65
	b _080050D4
_080050AE:
	cmp r0, #0xda
	bls _080050D2
	cmp r0, #0xdf
	bls _080050D2
	cmp r0, #0xe4
	bls _080050D2
	cmp r0, #0xee
	bhi _080050D8
	adds r0, #0x3e
	b _080050D4
_080050C2:
	cmp r1, #0x81
	bne _080050D8
	cmp r0, #0xae
	bhi _080050CE
	adds r0, #0x6a
	b _080050D4
_080050CE:
	cmp r0, #0xee
	bhi _080050D8
_080050D2:
	adds r0, #0x43
_080050D4:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
_080050D8:
	pop {r1}
	bx r1

	thumb_func_start sub_080050DC
sub_080050DC: @ 0x080050DC
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _080050E8 @ =0x0807EB5C
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_080050E8: .4byte 0x0807EB5C

	thumb_func_start sub_080050EC
sub_080050EC: @ 0x080050EC
	push {lr}
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r1, r2, #0
	movs r0, #0xff
	ands r2, r0
	ldr r0, _0800511C @ =0x0807EC5E
	adds r0, r2, r0
	ldrb r2, [r0]
	subs r1, #0x3e
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #1
	bhi _08005114
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r1, #0
	adds r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_08005114:
	adds r0, r2, #0
	pop {r1}
	bx r1
	.align 2, 0
_0800511C: .4byte 0x0807EC5E

	thumb_func_start sub_08005120
sub_08005120: @ 0x08005120
	push {lr}
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r0, _0800513C @ =0x0000839E
	cmp r3, r0
	bls _08005140
	movs r1, #0x80
	lsls r1, r1, #8
	adds r0, r1, #0
	orrs r3, r0
	b _080051BE
	.align 2, 0
_0800513C: .4byte 0x0000839E
_08005140:
	cmp r3, #0xff
	bls _080051BE
	ldr r2, _08005154 @ =0x00007EC0
	adds r0, r3, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x6f
	bhi _08005158
	adds r2, r0, #0
	b _0800518E
	.align 2, 0
_08005154: .4byte 0x00007EC0
_08005158:
	ldr r2, _08005168 @ =0x00007DB1
	adds r0, r3, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xa2
	bhi _0800516C
	adds r2, #0x70
	b _0800517A
	.align 2, 0
_08005168: .4byte 0x00007DB1
_0800516C:
	ldr r2, _08005184 @ =0x00007CC0
	adds r0, r3, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x56
	bhi _0800518C
	ldr r2, _08005188 @ =0x00007DD3
_0800517A:
	adds r0, r3, r2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	b _0800518E
	.align 2, 0
_08005184: .4byte 0x00007CC0
_08005188: .4byte 0x00007DD3
_0800518C:
	movs r2, #0
_0800518E:
	cmp r1, #0
	beq _080051A0
	ldr r0, _0800519C @ =0x0807E888
	adds r0, r2, r0
	ldrb r2, [r0]
	b _080051BC
	.align 2, 0
_0800519C: .4byte 0x0807E888
_080051A0:
	ldr r0, _080051C4 @ =0x0807E9F2
	adds r0, r2, r0
	ldrb r2, [r0]
	ldr r0, _080051C8 @ =0x00008379
	cmp r3, r0
	beq _080051B2
	adds r0, #3
	cmp r3, r0
	bne _080051BC
_080051B2:
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r2, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_080051BC:
	adds r3, r2, #0
_080051BE:
	adds r0, r3, #0
	pop {r1}
	bx r1
	.align 2, 0
_080051C4: .4byte 0x0807E9F2
_080051C8: .4byte 0x00008379

	thumb_func_start sub_080051CC
sub_080051CC: @ 0x080051CC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #0x10]
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov sb, r2
	ldr r1, _08005204 @ =0x0807E860
	mov r0, sp
	movs r2, #0x10
	bl memcpy
	ldr r0, _08005208 @ =0x02033840
	mov sl, r0
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r4
	cmp r0, #0
	beq _0800520C
	mov r5, sp
	b _08005212
	.align 2, 0
_08005204: .4byte 0x0807E860
_08005208: .4byte 0x02033840
_0800520C:
	lsls r1, r4, #4
	ldr r0, _08005278 @ =0x08125AB8
	adds r5, r1, r0
_08005212:
	mov r0, sb
	movs r1, #0
	bl sub_08003F14
	movs r0, #0
_0800521C:
	movs r4, #0
	mov r6, sl
	ldm r6!, {r2}
	adds r0, #1
	mov r8, r0
	movs r3, #1
_08005228:
	lsls r4, r4, #8
	ldrb r0, [r5]
	orrs r4, r0
	adds r5, #1
	subs r3, #1
	cmp r3, #0
	bge _08005228
	movs r1, #3
	mov ip, r1
	movs r7, #0xf
	movs r3, #7
_0800523E:
	adds r0, r4, #0
	mov r1, ip
	ands r0, r1
	lsrs r4, r4, #2
	lsls r2, r2, #4
	ldr r1, [sp, #0x10]
	cmp r0, #0
	bne _08005250
	mov r1, sb
_08005250:
	ands r1, r7
	orrs r2, r1
	subs r3, #1
	cmp r3, #0
	bge _0800523E
	mov r0, sl
	str r2, [r0]
	mov sl, r6
	mov r0, r8
	cmp r0, #7
	ble _0800521C
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08005278: .4byte 0x08125AB8

	thumb_func_start sub_0800527C
sub_0800527C: @ 0x0800527C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsls r1, r1, #0x18
	lsrs r7, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov sb, r2
	ldr r1, _080052B4 @ =0x0807E870
	mov r0, sp
	movs r2, #0x18
	bl memcpy
	ldr r0, _080052B8 @ =0x02033840
	mov sl, r0
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r4
	cmp r0, #0
	beq _080052BC
	mov r6, sp
	b _080052C6
	.align 2, 0
_080052B4: .4byte 0x0807E870
_080052B8: .4byte 0x02033840
_080052BC:
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #3
	ldr r1, _0800534C @ =0x08126B78
	adds r6, r0, r1
_080052C6:
	mov r0, sb
	movs r1, #0
	bl sub_08003F14
	movs r1, #0
_080052D0:
	movs r5, #0
	mov ip, sl
	mov r0, ip
	adds r0, #4
	mov ip, r0
	subs r0, #4
	ldm r0!, {r3}
	subs r0, r1, #2
	adds r1, #1
	mov r8, r1
	cmp r0, #0xb
	bhi _080052F8
	movs r4, #1
_080052EA:
	lsls r5, r5, #8
	ldrb r0, [r6]
	orrs r5, r0
	adds r6, #1
	subs r4, #1
	cmp r4, #0
	bge _080052EA
_080052F8:
	movs r4, #7
_080052FA:
	movs r0, #3
	adds r2, r5, #0
	ands r2, r0
	lsrs r5, r5, #2
	lsls r3, r3, #4
	mov r1, sb
	cmp r2, #0
	beq _08005324
	adds r1, r7, #0
	cmp r2, #1
	beq _08005324
	movs r1, #0xb
	cmp r7, #8
	beq _08005324
	movs r1, #0xa
	cmp r7, #2
	beq _08005324
	movs r1, #1
	cmp r7, #1
	bne _08005324
	movs r1, #9
_08005324:
	movs r0, #0xf
	ands r1, r0
	orrs r3, r1
	subs r4, #1
	cmp r4, #0
	bge _080052FA
	mov r0, sl
	str r3, [r0]
	mov sl, ip
	mov r1, r8
	cmp r1, #0xf
	ble _080052D0
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800534C: .4byte 0x08126B78

	thumb_func_start sub_08005350
sub_08005350: @ 0x08005350
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r2, #0
	adds r5, r3, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	ldr r0, _08005398 @ =0x03002310
	strb r4, [r0]
	strb r1, [r0, #1]
	strb r6, [r0, #2]
	strh r5, [r0, #4]
	ldr r0, _0800539C @ =0x08125620
	lsls r4, r4, #5
	movs r1, #0xa0
	lsls r1, r1, #0x13
	adds r4, r4, r1
	adds r1, r4, #0
	bl LoadPalette_08008308
	ldr r0, _080053A0 @ =0x08125644
	lsls r6, r6, #0xe
	lsls r5, r5, #5
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r5, r5, r1
	adds r6, r6, r5
	adds r1, r6, #0
	bl DecompressData_08008374
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08005398: .4byte 0x03002310
_0800539C: .4byte 0x08125620
_080053A0: .4byte 0x08125644

	thumb_func_start sub_080053A4
sub_080053A4: @ 0x080053A4
	push {lr}
	sub sp, #4
	movs r0, #0
	str r0, [sp]
	ldr r0, _080053C8 @ =0x03002310
	ldrb r1, [r0, #1]
	lsls r1, r1, #0xb
	movs r0, #0xc0
	lsls r0, r0, #0x13
	adds r1, r1, r0
	ldr r2, _080053CC @ =0x01000200
	mov r0, sp
	bl CpuFastSet
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_080053C8: .4byte 0x03002310
_080053CC: .4byte 0x01000200

	thumb_func_start sub_080053D0
sub_080053D0: @ 0x080053D0
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	lsls r1, r1, #0x18
	lsls r2, r2, #0x18
	ldr r5, _08005404 @ =0x03002310
	ldrb r4, [r5, #1]
	lsls r4, r4, #0xb
	lsrs r2, r2, #0x12
	movs r3, #0xc0
	lsls r3, r3, #0x13
	adds r2, r2, r3
	adds r4, r4, r2
	lsrs r1, r1, #0x17
	adds r4, r4, r1
	lsrs r0, r0, #0x10
	ldrh r1, [r5, #4]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	ldrb r1, [r5]
	lsls r1, r1, #0x1c
	orrs r1, r0
	lsrs r1, r1, #0x10
	strh r1, [r4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08005404: .4byte 0x03002310

	thumb_func_start sub_08005408
sub_08005408: @ 0x08005408
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r8, r1
	lsls r2, r2, #0x18
	lsrs r6, r2, #0x18
	ldr r1, _0800543C @ =0x03002310
	ldrb r0, [r1]
	lsls r0, r0, #0x1c
	lsrs r7, r0, #0x10
_08005422:
	ldrb r2, [r1, #1]
	lsls r2, r2, #0xb
	lsls r0, r6, #6
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r0, r0, r1
	adds r2, r2, r0
	mov r1, r8
	lsls r0, r1, #1
	adds r5, r2, r0
	movs r2, #0
	b _0800548E
	.align 2, 0
_0800543C: .4byte 0x03002310
_08005440:
	ldrb r1, [r4]
	cmp r2, #0
	bne _0800546C
	adds r0, r1, #0
	subs r0, #0x81
	cmp r0, #0x1e
	bls _08005468
	subs r0, #0x5f
	cmp r0, #0xa
	bls _08005468
	cmp r1, #0xa
	bne _08005470
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	ldr r1, _08005464 @ =0x03002310
	b _08005422
	.align 2, 0
_08005464: .4byte 0x03002310
_08005468:
	adds r2, r1, #0
	b _0800548C
_0800546C:
	lsls r0, r2, #8
	orrs r1, r0
_08005470:
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	movs r1, #1
	bl sub_08005120
	lsls r0, r0, #0x10
	ldr r1, _080054A0 @ =0x03002310
	lsrs r0, r0, #0x10
	ldrh r1, [r1, #4]
	adds r0, r0, r1
	orrs r0, r7
	strh r0, [r5]
	adds r5, #2
	movs r2, #0
_0800548C:
	adds r4, #1
_0800548E:
	ldrb r0, [r4]
	cmp r0, #0
	bne _08005440
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080054A0: .4byte 0x03002310

	thumb_func_start sub_080054A4
sub_080054A4: @ 0x080054A4
	bx lr
	.align 2, 0

	thumb_func_start sub_080054A8
sub_080054A8: @ 0x080054A8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r8, r1
	lsls r2, r2, #0x18
	lsrs r6, r2, #0x18
	ldr r1, _080054D8 @ =0x03002310
	ldrb r0, [r1]
	lsls r0, r0, #0x1c
	lsrs r7, r0, #0x10
_080054C2:
	ldrb r2, [r1, #1]
	lsls r2, r2, #0xb
	lsls r0, r6, #6
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r0, r0, r1
	adds r2, r2, r0
	mov r1, r8
	lsls r0, r1, #1
	adds r5, r2, r0
	b _080055AE
	.align 2, 0
_080054D8: .4byte 0x03002310
_080054DC:
	ldrb r1, [r4]
	ldrb r2, [r4, #1]
	cmp r1, #0xff
	beq _080055AC
	cmp r1, #0x2f
	bgt _0800557A
	adds r0, r1, #0
	subs r0, #0xa
	cmp r0, #0x16
	bhi _080055AC
	lsls r0, r0, #2
	ldr r1, _080054FC @ =_08005500
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080054FC: .4byte _08005500
_08005500: @ jump table
	.4byte _0800555C @ case 0
	.4byte _080055AC @ case 1
	.4byte _080055AC @ case 2
	.4byte _080055AC @ case 3
	.4byte _080055AC @ case 4
	.4byte _080055AC @ case 5
	.4byte _08005576 @ case 6
	.4byte _080055AC @ case 7
	.4byte _080055AC @ case 8
	.4byte _080055AC @ case 9
	.4byte _080055AC @ case 10
	.4byte _080055AC @ case 11
	.4byte _080055AC @ case 12
	.4byte _080055AC @ case 13
	.4byte _080055AC @ case 14
	.4byte _080055AC @ case 15
	.4byte _080055AC @ case 16
	.4byte _080055AC @ case 17
	.4byte _080055AC @ case 18
	.4byte _080055AC @ case 19
	.4byte _0800556C @ case 20
	.4byte _08005572 @ case 21
	.4byte _08005576 @ case 22
_0800555C:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	ldr r1, _08005568 @ =0x03002310
	b _080054C2
	.align 2, 0
_08005568: .4byte 0x03002310
_0800556C:
	adds r0, r2, #0
	bl sub_080044DC
_08005572:
	adds r4, #1
	b _080055AC
_08005576:
	movs r1, #0x10
	b _08005594
_0800557A:
	adds r0, r2, #0
	subs r0, #0x80
	cmp r0, #1
	bhi _08005592
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	adds r1, r2, #0
	bl sub_08005080
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r4, #1
_08005592:
	subs r1, #0x30
_08005594:
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	bl sub_080050DC
	lsls r0, r0, #0x10
	ldr r1, _080055C0 @ =0x03002310
	lsrs r0, r0, #0x10
	ldrh r1, [r1, #4]
	adds r0, r0, r1
	orrs r0, r7
	strh r0, [r5]
	adds r5, #2
_080055AC:
	adds r4, #1
_080055AE:
	ldrb r0, [r4]
	cmp r0, #0
	bne _080054DC
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080055C0: .4byte 0x03002310

	thumb_func_start sub_080055C4
sub_080055C4: @ 0x080055C4
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r4, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r6, r2, #0x18
	lsls r3, r3, #0x18
	lsrs r5, r3, #0x18
	cmp r1, #4
	beq _080055EC
	cmp r1, #4
	bgt _080055FC
	cmp r1, #2
	bne _080055FC
	ldr r1, _080055E8 @ =0x0807ED60
	b _080055EE
	.align 2, 0
_080055E8: .4byte 0x0807ED60
_080055EC:
	ldr r1, _080055F8 @ =0x0807ED68
_080055EE:
	mov r0, sp
	adds r2, r4, #0
	bl sprintf
	b _08005606
	.align 2, 0
_080055F8: .4byte 0x0807ED68
_080055FC:
	ldr r1, _08005618 @ =0x0807ED70
	mov r0, sp
	adds r2, r4, #0
	bl sprintf
_08005606:
	mov r0, sp
	adds r1, r6, #0
	adds r2, r5, #0
	bl sub_08005408
	add sp, #0x10
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08005618: .4byte 0x0807ED70

	thumb_func_start sub_0800561C
sub_0800561C: @ 0x0800561C
	push {r4, r5, lr}
	sub sp, #0x10
	adds r3, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	ldr r1, _0800564C @ =0x0807ED78
	mov r0, sp
	adds r2, r3, #0
	bl sprintf
	mov r0, sp
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_08005408
	add sp, #0x10
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800564C: .4byte 0x0807ED78
