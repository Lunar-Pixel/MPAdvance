	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .text
	.ARM
	.syntax unified

	thumb_func_start sub_08066F1C
sub_08066F1C: @ 0x08066F1C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	ldr r1, _08067140 @ =0x030024E0
	ldrh r2, [r1]
	movs r3, #0xe0
	lsls r3, r3, #4
	adds r0, r3, #0
	movs r4, #0
	orrs r0, r2
	strh r0, [r1]
	ldr r0, _08067144 @ =0x00001B05
	strh r0, [r1, #4]
	ldr r0, _08067148 @ =0x00001C06
	strh r0, [r1, #6]
	ldr r0, _0806714C @ =0x00005E03
	strh r0, [r1, #8]
	strh r4, [r1, #0x14]
	strh r4, [r1, #0xc]
	strh r4, [r1, #0x16]
	strh r4, [r1, #0xe]
	strh r4, [r1, #0x18]
	strh r4, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	movs r0, #0
	bl sub_08006BE8
	bl sub_08003F9C
	movs r0, #0x80
	lsls r0, r0, #1
	str r0, [sp]
	movs r0, #2
	movs r1, #0x1a
	movs r2, #0xe
	movs r3, #0
	bl sub_08004028
	bl sub_080057C0
	ldr r5, _08067150 @ =0x030044CC
	movs r0, #0xa8
	lsls r0, r0, #1
	bl sub_08007CE8
	adds r1, r0, #0
	str r1, [r5]
	add r0, sp, #8
	strh r4, [r0]
	ldr r2, _08067154 @ =0x010000A8
	bl CpuSet
	ldr r0, _08067158 @ =0x08134D98
	movs r1, #0xa0
	lsls r1, r1, #0x13
	bl LoadPalette_08008308
	ldr r0, _0806715C @ =0x08134E88
	ldr r1, _08067160 @ =0x06004000
	bl DecompressData_08008374
	ldr r0, _08067164 @ =0x08134DBC
	ldr r1, _08067168 @ =0x0600E000
	movs r2, #0
	movs r3, #0
	bl LoadTileMap_080083CC
	ldr r0, _0806716C @ =0x081353AC
	ldr r1, _08067170 @ =0x05000100
	bl LoadPalette_08008308
	ldr r0, _08067174 @ =0x08135B68
	movs r1, #0xc0
	lsls r1, r1, #0x13
	bl DecompressData_08008374
	ldr r0, _08067178 @ =0x081355BC
	add r1, sp, #0xc
	movs r2, #0
	movs r3, #8
	bl sub_08008468
	mov r8, r0
	ldr r7, _0806717C @ =0x0600F000
	ldr r6, _08067180 @ =0x0600F800
	ldr r4, [sp, #0xc]
	movs r5, #0x1f
_08066FD2:
	adds r0, r4, #0
	adds r1, r7, #0
	movs r2, #0x10
	bl CpuFastSet
	adds r0, r4, #0
	adds r0, #0x40
	adds r1, r6, #0
	movs r2, #0x10
	bl CpuFastSet
	adds r7, #0x40
	adds r6, #0x40
	adds r4, #0x80
	subs r5, #1
	cmp r5, #0
	bge _08066FD2
	mov r0, r8
	bl sub_08007CF8
	ldr r4, _08067150 @ =0x030044CC
	ldr r1, [r4]
	movs r0, #0x9e
	lsls r0, r0, #1
	adds r1, r1, r0
	ldr r0, _08067184 @ =0x081355A0
	str r0, [r1]
	movs r1, #0x98
	bl sub_08009554
	ldr r2, _08067188 @ =0x0813511C
	mov r8, r2
	mov r0, r8
	bl sub_08006C14
	ldr r1, [r4]
	movs r5, #0xa0
	lsls r5, r5, #1
	adds r1, r1, r5
	strh r0, [r1]
	ldr r3, _0806718C @ =0x0814CDF8
	mov sl, r3
	mov r0, sl
	bl sub_08006C14
	ldr r1, [r4]
	movs r6, #0xa1
	lsls r6, r6, #1
	adds r1, r1, r6
	strh r0, [r1]
	ldr r0, _08067190 @ =0x0814DA18
	bl sub_08006C14
	ldr r1, [r4]
	movs r2, #0xa2
	lsls r2, r2, #1
	mov sb, r2
	add r1, sb
	strh r0, [r1]
	ldr r0, _08067194 @ =0x081430AC
	bl sub_08006C14
	ldr r1, [r4]
	movs r7, #0xa3
	lsls r7, r7, #1
	adds r1, r1, r7
	strh r0, [r1]
	ldr r0, _08067198 @ =0x08134EC0
	ldr r1, _0806719C @ =0x05000280
	bl LoadPalette_08008308
	ldr r0, _080671A0 @ =0x08134EE4
	ldr r1, _080671A4 @ =0x050002A0
	bl LoadPalette_08008308
	ldr r0, _080671A8 @ =0x08134F08
	ldr r1, _080671AC @ =0x050002C0
	bl LoadPalette_08008308
	ldr r0, _080671B0 @ =0x08134F2C
	ldr r1, _080671B4 @ =0x050002E0
	bl LoadPalette_08008308
	ldr r0, [r4]
	adds r0, r0, r5
	ldrh r1, [r0]
	lsls r1, r1, #5
	ldr r5, _080671B8 @ =0x06010000
	adds r1, r1, r5
	mov r0, r8
	bl DecompressData_08008374
	ldr r0, _080671BC @ =0x0814CCC4
	ldr r1, _080671C0 @ =0x05000300
	bl LoadPalette_08008308
	ldr r0, [r4]
	adds r0, r0, r6
	ldrh r1, [r0]
	lsls r1, r1, #5
	adds r1, r1, r5
	mov r0, sl
	bl DecompressData_08008374
	ldr r0, _080671C4 @ =0x0814CF18
	ldr r1, _080671C8 @ =0x05000200
	bl LoadPalette_08008308
	ldr r0, [r4]
	add r0, sb
	ldrh r1, [r0]
	lsls r1, r1, #5
	adds r1, r1, r5
	ldr r0, _08067190 @ =0x0814DA18
	bl DecompressData_08008374
	ldr r0, _080671CC @ =0x08143000
	ldr r1, _080671D0 @ =0x05000380
	bl LoadPalette_08008308
	ldr r0, [r4]
	adds r0, r0, r7
	ldrh r1, [r0]
	lsls r1, r1, #5
	adds r1, r1, r5
	ldr r0, _08067194 @ =0x081430AC
	bl DecompressData_08008374
	ldr r0, _080671D4 @ =0x0047003A
	bl sub_08006828
	adds r1, r0, #0
	ldr r0, _080671D8 @ =0x06005800
	movs r2, #1
	str r2, [sp]
	movs r3, #0
	bl sub_08004D94
	movs r5, #0
_080670E8:
	lsls r3, r5, #0x1a
	lsrs r3, r3, #0x18
	movs r0, #0xc
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0x1b
	movs r1, #0xc0
	movs r2, #0
	bl sub_08004FD4
	adds r5, #1
	cmp r5, #3
	ble _080670E8
	movs r5, #0
	ldr r4, _080671DC @ =0x06005A00
_08067108:
	movs r1, #0x2c
	cmp r5, #0xa
	beq _08067116
	adds r1, r5, #0
	cmp r5, #0xb
	bne _08067116
	movs r1, #0x2b
_08067116:
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r0, #1
	str r0, [sp]
	adds r0, r4, #0
	movs r2, #1
	movs r3, #0
	bl sub_08004BB8
	adds r5, #1
	adds r4, #0x20
	cmp r5, #0xb
	ble _08067108
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08067140: .4byte 0x030024E0
_08067144: .4byte 0x00001B05
_08067148: .4byte 0x00001C06
_0806714C: .4byte 0x00005E03
_08067150: .4byte 0x030044CC
_08067154: .4byte 0x010000A8
_08067158: .4byte 0x08134D98
_0806715C: .4byte 0x08134E88
_08067160: .4byte 0x06004000
_08067164: .4byte 0x08134DBC
_08067168: .4byte 0x0600E000
_0806716C: .4byte 0x081353AC
_08067170: .4byte 0x05000100
_08067174: .4byte 0x08135B68
_08067178: .4byte 0x081355BC
_0806717C: .4byte 0x0600F000
_08067180: .4byte 0x0600F800
_08067184: .4byte 0x081355A0
_08067188: .4byte 0x0813511C
_0806718C: .4byte 0x0814CDF8
_08067190: .4byte 0x0814DA18
_08067194: .4byte 0x081430AC
_08067198: .4byte 0x08134EC0
_0806719C: .4byte 0x05000280
_080671A0: .4byte 0x08134EE4
_080671A4: .4byte 0x050002A0
_080671A8: .4byte 0x08134F08
_080671AC: .4byte 0x050002C0
_080671B0: .4byte 0x08134F2C
_080671B4: .4byte 0x050002E0
_080671B8: .4byte 0x06010000
_080671BC: .4byte 0x0814CCC4
_080671C0: .4byte 0x05000300
_080671C4: .4byte 0x0814CF18
_080671C8: .4byte 0x05000200
_080671CC: .4byte 0x08143000
_080671D0: .4byte 0x05000380
_080671D4: .4byte 0x0047003A
_080671D8: .4byte 0x06005800
_080671DC: .4byte 0x06005A00

	thumb_func_start sub_080671E0
sub_080671E0: @ 0x080671E0
	push {r4, lr}
	ldr r4, _08067228 @ =0x030044CC
	ldr r0, [r4]
	movs r1, #0x9e
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_080095E0
	ldr r0, _0806722C @ =0x0813511C
	bl sub_08006CA0
	ldr r0, _08067230 @ =0x0814CDF8
	bl sub_08006CA0
	ldr r0, _08067234 @ =0x0814DA18
	bl sub_08006CA0
	ldr r0, _08067238 @ =0x081430AC
	bl sub_08006CA0
	ldr r0, [r4]
	cmp r0, #0
	beq _08067218
	bl sub_08007CF8
	movs r0, #0
	str r0, [r4]
_08067218:
	bl sub_0800580C
	bl sub_08003FE4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08067228: .4byte 0x030044CC
_0806722C: .4byte 0x0813511C
_08067230: .4byte 0x0814CDF8
_08067234: .4byte 0x0814DA18
_08067238: .4byte 0x081430AC

	thumb_func_start sub_0806723C
sub_0806723C: @ 0x0806723C
	push {r4, lr}
	lsls r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r2, r1, #0x10
	lsrs r3, r0, #0x10
	cmp r0, #0
	bge _0806724C
	movs r3, #0
_0806724C:
	lsls r1, r3, #0x10
	ldr r0, _08067284 @ =0x010F0000
	cmp r1, r0
	ble _08067258
	movs r3, #0x88
	lsls r3, r3, #1
_08067258:
	lsls r0, r2, #0x10
	cmp r0, #0
	bge _08067260
	movs r2, #0
_08067260:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x5f
	ble _0806726A
	movs r2, #0x60
_0806726A:
	ldr r0, _08067288 @ =0x030044CC
	ldr r1, [r0]
	movs r4, #0x9a
	lsls r4, r4, #1
	adds r0, r1, r4
	strh r3, [r0]
	movs r3, #0x9b
	lsls r3, r3, #1
	adds r0, r1, r3
	strh r2, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08067284: .4byte 0x010F0000
_08067288: .4byte 0x030044CC

	thumb_func_start sub_0806728C
sub_0806728C: @ 0x0806728C
	push {lr}
	adds r1, r0, #0
	cmp r1, #0
	beq _080672A0
	movs r2, #0
	ldrsh r0, [r1, r2]
	movs r2, #2
	ldrsh r1, [r1, r2]
	bl sub_0806723C
_080672A0:
	pop {r0}
	bx r0

	thumb_func_start sub_080672A4
sub_080672A4: @ 0x080672A4
	push {lr}
	adds r1, r0, #0
	cmp r1, #0
	beq _080672C2
	ldr r0, _080672C8 @ =0x030044CC
	ldr r2, [r0]
	movs r3, #0x9a
	lsls r3, r3, #1
	adds r0, r2, r3
	ldrh r0, [r0]
	strh r0, [r1]
	adds r3, #2
	adds r0, r2, r3
	ldrh r0, [r0]
	strh r0, [r1, #2]
_080672C2:
	pop {r0}
	bx r0
	.align 2, 0
_080672C8: .4byte 0x030044CC

	thumb_func_start sub_080672CC
sub_080672CC: @ 0x080672CC
	ldr r1, _080672DC @ =0x030044CC
	ldr r1, [r1]
	movs r2, #0x98
	lsls r2, r2, #1
	adds r1, r1, r2
	str r0, [r1]
	bx lr
	.align 2, 0
_080672DC: .4byte 0x030044CC

	thumb_func_start sub_080672E0
sub_080672E0: @ 0x080672E0
	push {r4, lr}
	ldr r0, _0806730C @ =0x030044CC
	ldr r0, [r0]
	movs r1, #0x98
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _0806733C
	ldr r4, _08067310 @ =0x0000FFFF
	ldrh r3, [r0, #0xa]
	movs r0, #0xc0
	lsls r0, r0, #0xf
	orrs r3, r0
	lsls r0, r3, #0x10
	asrs r1, r0, #0x10
	ldr r0, _08067314 @ =0x0000014F
	cmp r1, r0
	ble _08067318
	asrs r0, r3, #0x10
	subs r0, #0x50
	b _08067328
	.align 2, 0
_0806730C: .4byte 0x030044CC
_08067310: .4byte 0x0000FFFF
_08067314: .4byte 0x0000014F
_08067318:
	cmp r1, #0xaf
	ble _0806732E
	asrs r0, r3, #0x10
	subs r1, #0xb0
	lsrs r2, r1, #0x1f
	adds r1, r1, r2
	asrs r1, r1, #1
	subs r0, r0, r1
_08067328:
	lsls r0, r0, #0x10
	ands r3, r4
	orrs r3, r0
_0806732E:
	adds r0, r3, #0
	subs r0, #0x78
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	asrs r1, r3, #0x10
	bl sub_0806723C
_0806733C:
	ldr r1, _0806735C @ =0x030024E0
	ldr r0, _08067360 @ =0x030044CC
	ldr r2, [r0]
	movs r3, #0x9a
	lsls r3, r3, #1
	adds r0, r2, r3
	ldrh r0, [r0]
	strh r0, [r1, #0x10]
	adds r3, #2
	adds r0, r2, r3
	ldrh r0, [r0]
	strh r0, [r1, #0x18]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806735C: .4byte 0x030024E0
_08067360: .4byte 0x030044CC

	thumb_func_start sub_08067364
sub_08067364: @ 0x08067364
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	beq _08067374
	bl sub_08009A00
_08067374:
	mov r0, sp
	movs r1, #0
	strh r1, [r0]
	ldr r2, _0806738C @ =0x0100000C
	adds r1, r4, #0
	bl CpuSet
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806738C: .4byte 0x0100000C

	thumb_func_start sub_08067390
sub_08067390: @ 0x08067390
	push {lr}
	adds r3, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldr r0, [r3]
	cmp r0, #0
	beq _080673AA
	lsls r0, r1, #0x10
	str r0, [r3, #8]
	lsls r0, r2, #0x10
	str r0, [r3, #0xc]
_080673AA:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080673B0
sub_080673B0: @ 0x080673B0
	push {lr}
	adds r2, r1, #0
	cmp r2, #0
	beq _080673C4
	movs r3, #0
	ldrsh r1, [r2, r3]
	movs r3, #2
	ldrsh r2, [r2, r3]
	bl sub_08067390
_080673C4:
	pop {r0}
	bx r0

	thumb_func_start sub_080673C8
sub_080673C8: @ 0x080673C8
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2]
	cmp r0, #0
	beq _080673E2
	cmp r1, #0
	beq _080673E2
	movs r3, #0xa
	ldrsh r0, [r2, r3]
	strh r0, [r1]
	movs r3, #0xe
	ldrsh r0, [r2, r3]
	strh r0, [r1, #2]
_080673E2:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080673E8
sub_080673E8: @ 0x080673E8
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2]
	cmp r0, #0
	beq _080673F4
	str r1, [r2, #0x10]
_080673F4:
	pop {r0}
	bx r0

	thumb_func_start sub_080673F8
sub_080673F8: @ 0x080673F8
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2]
	cmp r0, #0
	beq _0806740A
	ldr r0, [r2, #8]
	ldr r1, [r2, #0x10]
	adds r0, r0, r1
	str r0, [r2, #8]
_0806740A:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08067410
sub_08067410: @ 0x08067410
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r7, [r6]
	cmp r7, #0
	beq _0806746A
	ldr r1, _08067470 @ =0xFFFF0000
	ldrh r0, [r6, #0xe]
	lsls r0, r0, #0x10
	ldr r2, _08067474 @ =0x0000FFFF
	ldrh r3, [r6, #0xa]
	orrs r3, r0
	ldr r0, _08067478 @ =0x030044CC
	ldr r4, [r0]
	movs r5, #0x9a
	lsls r5, r5, #1
	adds r0, r4, r5
	ldrh r0, [r0]
	subs r0, r3, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ands r3, r1
	orrs r3, r0
	asrs r0, r3, #0x10
	adds r5, #2
	adds r1, r4, r5
	ldrh r1, [r1]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	ands r3, r2
	orrs r3, r0
	lsls r0, r3, #0x10
	asrs r5, r0, #0x10
	asrs r4, r3, #0x10
	adds r0, r7, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_08009A70
	ldr r0, [r6, #4]
	cmp r0, #0
	beq _0806746A
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_08009A70
_0806746A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08067470: .4byte 0xFFFF0000
_08067474: .4byte 0x0000FFFF
_08067478: .4byte 0x030044CC

	thumb_func_start sub_0806747C
sub_0806747C: @ 0x0806747C
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r1, [r4]
	cmp r1, #0
	bne _080674E6
	mov r0, sp
	strh r1, [r0]
	ldr r2, _080674F0 @ =0x0100000C
	adds r1, r4, #0
	bl CpuSet
	movs r1, #0x10
	subs r1, r1, r5
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r0, #1
	bl sub_080099E0
	str r0, [r4]
	ldr r1, _080674F4 @ =0x030044CC
	ldr r1, [r1]
	movs r2, #0xa2
	lsls r2, r2, #1
	adds r1, r1, r2
	ldrh r1, [r1]
	lsls r1, r1, #5
	ldr r2, _080674F8 @ =0x06010000
	adds r1, r1, r2
	bl sub_08009A78
	ldr r0, [r4]
	adds r1, r5, #0
	bl sub_08009AB4
	ldr r0, [r4]
	ldr r1, _080674FC @ =0x0814D9D0
	ldr r2, _08067500 @ =0x0814D8A4
	movs r3, #0
	bl sub_08009ACC
	ldr r0, [r4]
	movs r2, #0x80
	rsbs r2, r2, #0
	movs r1, #0
	bl sub_08009A70
	ldr r0, [r4]
	movs r1, #1
	bl sub_08009A34
_080674E6:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080674F0: .4byte 0x0100000C
_080674F4: .4byte 0x030044CC
_080674F8: .4byte 0x06010000
_080674FC: .4byte 0x0814D9D0
_08067500: .4byte 0x0814D8A4

	thumb_func_start sub_08067504
sub_08067504: @ 0x08067504
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r4, r2, #0x18
	ldr r3, [r5]
	cmp r3, #0
	beq _08067540
	ldrb r0, [r5, #0x14]
	cmp r0, r6
	beq _08067540
	ldr r1, _08067548 @ =0x0814D9D0
	ldr r2, _0806754C @ =0x0814D8A4
	adds r0, r3, #0
	adds r3, r6, #0
	bl sub_08009ACC
	cmp r4, #0
	beq _08067536
	cmp r4, #0xff
	beq _08067536
	subs r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_08067536:
	ldr r0, [r5]
	adds r1, r4, #0
	bl sub_08009B40
	strb r6, [r5, #0x14]
_08067540:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08067548: .4byte 0x0814D9D0
_0806754C: .4byte 0x0814D8A4

	thumb_func_start sub_08067550
sub_08067550: @ 0x08067550
	push {lr}
	ldr r0, [r0]
	cmp r0, #0
	bne _0806755C
	movs r0, #0
	b _08067560
_0806755C:
	ldrb r0, [r0, #1]
	lsrs r0, r0, #7
_08067560:
	pop {r1}
	bx r1

	thumb_func_start sub_08067564
sub_08067564: @ 0x08067564
	push {r4, r5, lr}
	adds r5, r0, #0
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	movs r1, #0x10
	subs r1, r1, r5
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r0, #1
	bl sub_080099E0
	adds r4, r0, #0
	ldr r0, _080675CC @ =0x030044CC
	ldr r0, [r0]
	movs r1, #0xa2
	lsls r1, r1, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	lsls r1, r1, #5
	ldr r0, _080675D0 @ =0x06010000
	adds r1, r1, r0
	adds r0, r4, #0
	bl sub_08009A78
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08009AB4
	ldr r1, _080675D4 @ =0x0814D9D0
	ldr r2, _080675D8 @ =0x0814D8A4
	adds r0, r4, #0
	movs r3, #0x10
	bl sub_08009ACC
	adds r0, r4, #0
	movs r1, #0xff
	bl sub_08009B40
	movs r2, #0x80
	rsbs r2, r2, #0
	adds r0, r4, #0
	movs r1, #0
	bl sub_08009A70
	adds r0, r4, #0
	movs r1, #1
	bl sub_08009A34
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080675CC: .4byte 0x030044CC
_080675D0: .4byte 0x06010000
_080675D4: .4byte 0x0814D9D0
_080675D8: .4byte 0x0814D8A4

	thumb_func_start sub_080675DC
sub_080675DC: @ 0x080675DC
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r1, [r4]
	cmp r1, #0
	bne _0806763C
	mov r0, sp
	strh r1, [r0]
	ldr r2, _08067644 @ =0x0100000C
	adds r1, r4, #0
	bl CpuSet
	movs r0, #1
	movs r1, #0x20
	bl sub_080099E0
	str r0, [r4]
	ldr r1, _08067648 @ =0x030044CC
	ldr r1, [r1]
	movs r2, #0xa1
	lsls r2, r2, #1
	adds r1, r1, r2
	ldrh r1, [r1]
	lsls r1, r1, #5
	ldr r2, _0806764C @ =0x06010000
	adds r1, r1, r2
	bl sub_08009A78
	ldr r0, [r4]
	movs r1, #8
	bl sub_08009AB4
	ldr r0, [r4]
	ldr r2, _08067650 @ =0x0814CDD4
	movs r1, #0
	movs r3, #0
	bl sub_08009ACC
	ldr r0, [r4]
	movs r2, #0x80
	rsbs r2, r2, #0
	movs r1, #0
	bl sub_08009A70
	ldr r0, [r4]
	movs r1, #1
	bl sub_08009A34
_0806763C:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08067644: .4byte 0x0100000C
_08067648: .4byte 0x030044CC
_0806764C: .4byte 0x06010000
_08067650: .4byte 0x0814CDD4

	thumb_func_start sub_08067654
sub_08067654: @ 0x08067654
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x18
	lsrs r3, r1, #0x18
	ldr r0, [r4]
	cmp r0, #0
	beq _0806768E
	cmp r3, #2
	bhi _0806767C
	ldr r2, _08067678 @ =0x0814CDD4
	movs r1, #0
	bl sub_08009ACC
	ldr r0, [r4]
	movs r1, #0
	bl sub_08009B40
	b _0806768E
	.align 2, 0
_08067678: .4byte 0x0814CDD4
_0806767C:
	ldr r1, _08067694 @ =0x0814CDF0
	ldr r2, _08067698 @ =0x0814CDD4
	movs r3, #0
	bl sub_08009ACC
	ldr r0, [r4]
	movs r1, #0xff
	bl sub_08009B40
_0806768E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08067694: .4byte 0x0814CDF0
_08067698: .4byte 0x0814CDD4

	thumb_func_start sub_0806769C
sub_0806769C: @ 0x0806769C
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	adds r4, r0, #0
	mov sb, r2
	adds r5, r3, #0
	ldr r6, [sp, #0x18]
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r0, sb
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	movs r0, #1
	bl sub_080099E0
	mov r8, r0
	ldr r0, _08067730 @ =0x030044CC
	ldr r0, [r0]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	lsls r1, r1, #5
	ldr r0, _08067734 @ =0x06010000
	adds r1, r1, r0
	mov r0, r8
	bl sub_08009A78
	adds r4, #4
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	mov r0, r8
	adds r1, r4, #0
	bl sub_08009AB4
	ldr r1, _08067738 @ =0x08135104
	ldr r2, _0806773C @ =0x081350B0
	mov r0, r8
	mov r3, sb
	bl sub_08009ACC
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	lsls r6, r6, #0x10
	asrs r6, r6, #0x10
	mov r0, r8
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_08009A70
	mov r0, r8
	movs r1, #0xff
	bl sub_08009B40
	mov r0, r8
	movs r1, #1
	bl sub_08009A34
	mov r0, r8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08067730: .4byte 0x030044CC
_08067734: .4byte 0x06010000
_08067738: .4byte 0x08135104
_0806773C: .4byte 0x081350B0

	thumb_func_start sub_08067740
sub_08067740: @ 0x08067740
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r6, r0, #0
	ldr r0, [sp, #0x1c]
	lsls r1, r1, #0x18
	lsrs r7, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov r8, r2
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r0, [r6]
	cmp r0, #0
	bne _080677AE
	lsls r5, r3, #0x10
	asrs r5, r5, #0x10
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	str r4, [sp]
	adds r0, r7, #0
	movs r1, #0x18
	movs r2, #0
	adds r3, r5, #0
	bl sub_0806769C
	str r0, [r6]
	mov r2, r8
	adds r2, #1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	str r4, [sp]
	adds r0, r7, #0
	movs r1, #0x10
	adds r3, r5, #0
	bl sub_0806769C
	str r0, [r6, #4]
	mov r0, r8
	cmp r0, #0
	bne _080677AE
	ldr r0, _080677BC @ =0x08134F88
	str r0, [r6, #8]
	adds r1, r7, #4
	movs r2, #0xf
	ands r1, r2
	lsls r1, r1, #4
	ldr r3, _080677C0 @ =0x00000103
	adds r2, r3, #0
	orrs r1, r2
	bl sub_08009554
_080677AE:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080677BC: .4byte 0x08134F88
_080677C0: .4byte 0x00000103

	thumb_func_start sub_080677C4
sub_080677C4: @ 0x080677C4
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	beq _080677D6
	bl sub_08009A00
	movs r0, #0
	str r0, [r4]
_080677D6:
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _080677E4
	bl sub_08009A00
	movs r0, #0
	str r0, [r4, #4]
_080677E4:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _080677F2
	bl sub_080095E0
	movs r0, #0
	str r0, [r4, #8]
_080677F2:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080677F8
sub_080677F8: @ 0x080677F8
	push {r4, r5, lr}
	ldr r5, _08067864 @ =0x030044CC
	ldr r0, [r5]
	movs r1, #0x9c
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	bne _0806785C
	movs r0, #1
	movs r1, #0x80
	bl sub_080099E0
	adds r4, r0, #0
	ldr r0, [r5]
	movs r1, #0xa3
	lsls r1, r1, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	lsls r1, r1, #5
	ldr r0, _08067868 @ =0x06010000
	adds r1, r1, r0
	adds r0, r4, #0
	bl sub_08009A78
	adds r0, r4, #0
	movs r1, #0xc
	bl sub_08009AB4
	ldr r2, _0806786C @ =0x08143084
	adds r0, r4, #0
	movs r1, #0
	movs r3, #3
	bl sub_08009ACC
	movs r2, #0x80
	rsbs r2, r2, #0
	adds r0, r4, #0
	movs r1, #0
	bl sub_08009A70
	adds r0, r4, #0
	movs r1, #1
	bl sub_08009A34
	ldr r0, [r5]
	movs r1, #0x9c
	lsls r1, r1, #1
	adds r0, r0, r1
	str r4, [r0]
_0806785C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08067864: .4byte 0x030044CC
_08067868: .4byte 0x06010000
_0806786C: .4byte 0x08143084

	thumb_func_start sub_08067870
sub_08067870: @ 0x08067870
	push {r4, lr}
	ldr r4, _08067898 @ =0x030044CC
	ldr r0, [r4]
	movs r1, #0x9c
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _08067892
	bl sub_08009A00
	ldr r0, [r4]
	movs r1, #0x9c
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r1, #0
	str r1, [r0]
_08067892:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08067898: .4byte 0x030044CC

	thumb_func_start sub_0806789C
sub_0806789C: @ 0x0806789C
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	ldr r1, _080678F4 @ =0x030044CC
	ldr r0, [r1]
	movs r6, #0x9c
	lsls r6, r6, #1
	adds r0, r0, r6
	ldr r4, [r0]
	adds r5, r1, #0
	cmp r4, #0
	beq _08067938
	ldr r1, _080678F8 @ =0x02037EB0
	adds r0, r1, #0
	adds r0, #0x99
	ldrb r0, [r0]
	cmp r0, #0
	bne _08067900
	adds r0, r1, #0
	adds r0, #0x90
	ldr r0, [r0]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08067900
	ldr r2, _080678FC @ =0x08143084
	adds r0, r4, #0
	movs r1, #0
	bl sub_08009ACC
	ldr r0, [r5]
	adds r0, r0, r6
	ldr r0, [r0]
	movs r1, #0x58
	movs r2, #0x90
	bl sub_08009A70
	ldr r0, [r5]
	adds r0, r0, r6
	ldr r0, [r0]
	movs r1, #1
	bl sub_08009A34
	b _08067938
	.align 2, 0
_080678F4: .4byte 0x030044CC
_080678F8: .4byte 0x02037EB0
_080678FC: .4byte 0x08143084
_08067900:
	ldr r0, [r5]
	movs r4, #0x9c
	lsls r4, r4, #1
	adds r0, r0, r4
	ldr r0, [r0]
	ldr r2, _08067940 @ =0x08143084
	movs r1, #0
	movs r3, #3
	bl sub_08009ACC
	ldr r0, [r5]
	adds r0, r0, r4
	ldr r0, [r0]
	movs r1, #0x78
	movs r2, #0x98
	bl sub_08009A70
	ldr r0, [r5]
	adds r0, r0, r4
	ldr r0, [r0]
	ldr r1, _08067944 @ =0x02037EB0
	adds r1, #0x99
	ldrb r2, [r1]
	rsbs r1, r2, #0
	orrs r1, r2
	lsrs r1, r1, #0x1f
	bl sub_08009A34
_08067938:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08067940: .4byte 0x08143084
_08067944: .4byte 0x02037EB0

	thumb_func_start sub_08067948
sub_08067948: @ 0x08067948
	push {r4, r5, r6, lr}
	ldr r6, _08067978 @ =0x030044CC
	movs r5, #0xb8
	movs r4, #3
_08067950:
	ldr r0, [r6]
	adds r0, r0, r5
	bl sub_08067410
	adds r5, #0x18
	subs r4, #1
	cmp r4, #0
	bge _08067950
	ldr r0, _08067978 @ =0x030044CC
	ldr r0, [r0]
	movs r1, #0x8c
	lsls r1, r1, #1
	adds r0, r0, r1
	bl sub_08067410
	bl sub_080672E0
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08067978: .4byte 0x030044CC

	thumb_func_start sub_0806797C
sub_0806797C: @ 0x0806797C
	push {r4, lr}
	lsls r0, r0, #0x10
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r4, r1, #0
	movs r2, #0
	lsrs r3, r0, #0x10
	cmp r0, #0
	bge _08067990
	movs r3, #0
_08067990:
	cmp r1, #1
	beq _080679BC
	cmp r1, #1
	bgt _0806799E
	cmp r1, #0
	beq _080679A4
	b _080679EA
_0806799E:
	cmp r4, #2
	beq _080679D4
	b _080679EA
_080679A4:
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	bl __floatsidf
	ldr r3, _080679B8 @ =0x4039ABF3
	ldr r2, _080679B4 @ =0x3FD54730
	b _080679E0
	.align 2, 0
_080679B4: .4byte 0x3FD54730
_080679B8: .4byte 0x4039ABF3
_080679BC:
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	bl __floatsidf
	ldr r3, _080679D0 @ =0x1BEF49CF
	ldr r2, _080679CC @ =0x3FCE7B5F
	b _080679E0
	.align 2, 0
_080679CC: .4byte 0x3FCE7B5F
_080679D0: .4byte 0x1BEF49CF
_080679D4:
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	bl __floatsidf
	ldr r3, _08067A04 @ =0x2EC6BCE8
	ldr r2, _08067A00 @ =0x3FD3BD51
_080679E0:
	bl __muldf3
	bl __fixdfsi
	adds r2, r0, #0
_080679EA:
	cmp r2, #0
	bge _080679F0
	movs r2, #0
_080679F0:
	cmp r2, #0xff
	ble _080679F6
	movs r2, #0xff
_080679F6:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08067A00: .4byte 0x3FD3BD51
_08067A04: .4byte 0x2EC6BCE8

	thumb_func_start sub_08067A08
sub_08067A08: @ 0x08067A08
	push {r4, lr}
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r0, _08067A3C @ =0x030044CC
	ldr r0, [r0]
	movs r3, #3
	cmp r4, #3
	bge _08067A36
	adds r2, r0, #0
	adds r2, #0x20
	adds r1, r0, #0
	adds r1, #0x16
_08067A20:
	ldrb r0, [r1]
	strb r0, [r1, #1]
	ldrb r0, [r1, #4]
	strb r0, [r1, #5]
	ldrh r0, [r2]
	strh r0, [r2, #2]
	subs r2, #2
	subs r1, #1
	subs r3, #1
	cmp r4, r3
	blt _08067A20
_08067A36:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08067A3C: .4byte 0x030044CC

	thumb_func_start sub_08067A40
sub_08067A40: @ 0x08067A40
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	ldr r0, _08067A8C @ =0x030044CC
	ldr r1, [r0]
	adds r5, r1, #0
	adds r5, #0x14
	movs r3, #0
	mov r8, r0
	movs r0, #0x1c
	adds r0, r0, r1
	mov sb, r0
	adds r4, r5, #0
	adds r6, r1, #0
	adds r6, #0x1c
	movs r2, #0
_08067A6A:
	adds r0, r5, #0
	adds r0, #8
	adds r0, r0, r2
	ldrh r1, [r0]
	cmp r1, #0
	bne _08067A90
_08067A76:
	mov r1, sl
	strb r1, [r4]
	ldr r0, _08067A8C @ =0x030044CC
	ldr r1, [r0]
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r1, r1, r2
	ldrh r1, [r1]
	strh r1, [r6]
	mov r8, r0
	b _08067ABE
	.align 2, 0
_08067A8C: .4byte 0x030044CC
_08067A90:
	mov r7, r8
	ldr r0, [r7]
	movs r7, #0xa4
	lsls r7, r7, #1
	adds r0, r0, r7
	ldrh r0, [r0]
	cmp r1, r0
	bne _08067AB2
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp sl, r0
	bge _08067AB2
	lsls r0, r3, #0x18
	lsrs r0, r0, #0x18
	bl sub_08067A08
	b _08067A76
_08067AB2:
	adds r4, #1
	adds r6, #2
	adds r2, #2
	adds r3, #1
	cmp r3, #3
	ble _08067A6A
_08067ABE:
	movs r4, #0
	movs r3, #0
	strb r3, [r5, #4]
	movs r1, #1
	ldrh r0, [r5, #0xa]
	cmp r0, #0
	beq _08067AF8
	mov r2, sb
	mov ip, r2
	adds r6, r5, #4
_08067AD2:
	lsls r0, r1, #1
	add r0, ip
	ldrh r1, [r2]
	ldrh r0, [r0]
	cmp r1, r0
	beq _08067AE4
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_08067AE4:
	adds r2, #2
	adds r3, #1
	cmp r3, #3
	bgt _08067AF8
	adds r0, r6, r3
	strb r4, [r0]
	adds r1, r3, #1
	ldrh r0, [r2, #2]
	cmp r0, #0
	bne _08067AD2
_08067AF8:
	mov r1, r8
	ldr r0, [r1]
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	strh r0, [r5, #0x10]
	movs r0, #1
	mov r7, sl
	lsls r0, r7
	ldrb r1, [r5, #0x13]
	orrs r0, r1
	strb r0, [r5, #0x13]
	ldrb r0, [r5, #0x12]
	adds r0, #1
	strb r0, [r5, #0x12]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08067B28
sub_08067B28: @ 0x08067B28
	push {r4, lr}
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r0, _08067B50 @ =0x030044CC
	ldr r0, [r0]
	adds r0, #0x14
	movs r2, #0
	movs r1, #0x12
	ldrsb r1, [r0, r1]
	cmp r2, r1
	bge _08067B5C
	adds r3, r1, #0
	adds r1, r0, #0
_08067B42:
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, r4
	bne _08067B54
	ldrb r0, [r1, #4]
	b _08067B5E
	.align 2, 0
_08067B50: .4byte 0x030044CC
_08067B54:
	adds r1, #1
	adds r2, #1
	cmp r2, r3
	blt _08067B42
_08067B5C:
	movs r0, #0
_08067B5E:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_08067B64
sub_08067B64: @ 0x08067B64
	push {r4, r5, lr}
	ldr r5, _08067BA4 @ =0x030044CC
	ldr r0, [r5]
	movs r1, #0x8c
	lsls r1, r1, #1
	adds r4, r0, r1
	ldrb r1, [r4, #0x14]
	cmp r1, #2
	bhi _08067BB6
	ldrb r0, [r4, #0x15]
	adds r0, #1
	strb r0, [r4, #0x15]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3b
	bls _08067BB6
	movs r0, #0
	strb r0, [r4, #0x15]
	adds r0, r1, #1
	strb r0, [r4, #0x14]
	ldrb r1, [r4, #0x14]
	adds r0, r4, #0
	bl sub_08067654
	ldrb r0, [r4, #0x14]
	cmp r0, #3
	bne _08067BAC
	ldr r0, [r5]
	ldr r2, _08067BA8 @ =0x0000014B
	adds r1, r0, r2
	movs r0, #2
	b _08067BB4
	.align 2, 0
_08067BA4: .4byte 0x030044CC
_08067BA8: .4byte 0x0000014B
_08067BAC:
	ldr r0, [r5]
	ldr r2, _08067BBC @ =0x0000014B
	adds r1, r0, r2
	movs r0, #1
_08067BB4:
	strb r0, [r1]
_08067BB6:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08067BBC: .4byte 0x0000014B

	thumb_func_start sub_08067BC0
sub_08067BC0: @ 0x08067BC0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	bl sub_08007BD4
	adds r7, r0, #0
	ldr r3, _08067C00 @ =0x030044CC
	ldrb r1, [r7]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r2, r0, #0
	adds r2, #0x28
	ldr r1, [r3]
	adds r2, r2, r1
	mov r8, r2
	adds r0, #0xb8
	adds r6, r1, r0
	ldr r2, _08067C04 @ =0x0000014B
	adds r0, r1, r2
	ldrb r4, [r0]
	cmp r4, #0
	bne _08067C08
	adds r0, r6, #0
	movs r1, #0
	movs r2, #0xff
	bl sub_08067504
	strb r4, [r7, #1]
	b _08067F16
	.align 2, 0
_08067C00: .4byte 0x030044CC
_08067C04: .4byte 0x0000014B
_08067C08:
	cmp r4, #1
	bne _08067C3E
	ldrb r0, [r6, #0x14]
	cmp r0, #0
	beq _08067C18
	cmp r0, #1
	beq _08067C24
	b _08067F16
_08067C18:
	adds r0, r6, #0
	movs r1, #1
	movs r2, #1
	bl sub_08067504
	b _08067F16
_08067C24:
	adds r0, r6, #0
	bl sub_08067550
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08067C32
	b _08067F16
_08067C32:
	adds r0, r6, #0
	movs r1, #2
	movs r2, #0xff
	bl sub_08067504
	b _08067F16
_08067C3E:
	ldrb r0, [r7, #1]
	cmp r0, #7
	bls _08067C46
	b _08067F16
_08067C46:
	lsls r0, r0, #2
	ldr r1, _08067C50 @ =_08067C54
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08067C50: .4byte _08067C54
_08067C54: @ jump table
	.4byte _08067C74 @ case 0
	.4byte _08067CC8 @ case 1
	.4byte _08067CEA @ case 2
	.4byte _08067D40 @ case 3
	.4byte _08067D80 @ case 4
	.4byte _08067E20 @ case 5
	.4byte _08067E4C @ case 6
	.4byte _08067EB8 @ case 7
_08067C74:
	adds r0, r6, #0
	movs r1, #3
	movs r2, #0xff
	bl sub_08067504
	movs r2, #0x80
	lsls r2, r2, #8
	mov r1, r8
	ldrb r0, [r1, #0x12]
	movs r4, #0xff
	subs r0, r4, r0
	lsls r0, r0, #6
	subs r2, r2, r0
	adds r0, r6, #0
	adds r1, r2, #0
	bl sub_080673E8
	adds r0, r6, #0
	bl sub_080673F8
	adds r0, r6, #0
	mov r1, sp
	bl sub_080673C8
	mov r0, sp
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0x3f
	bgt _08067CB0
	b _08067F16
_08067CB0:
	mov r1, r8
	ldrb r0, [r1, #0x12]
	subs r0, r4, r0
	cmp r0, #0
	bge _08067CBC
	adds r0, #0x3f
_08067CBC:
	asrs r0, r0, #6
	movs r1, #0
	strb r0, [r7, #3]
	strb r1, [r7, #2]
	movs r0, #1
	strb r0, [r7, #1]
_08067CC8:
	ldrb r2, [r7, #3]
	adds r0, r6, #0
	movs r1, #4
	bl sub_08067504
	ldrb r0, [r7, #3]
	cmp r0, #0
	beq _08067CE6
	adds r0, r6, #0
	bl sub_08067550
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08067CE6
	b _08067F16
_08067CE6:
	movs r0, #2
	strb r0, [r7, #1]
_08067CEA:
	adds r0, r6, #0
	movs r1, #5
	movs r2, #1
	bl sub_08067504
	adds r0, r6, #0
	mov r1, sp
	bl sub_080673C8
	mov r0, sp
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldrb r0, [r7, #2]
	lsls r0, r0, #5
	adds r0, #0x60
	cmp r1, r0
	bgt _08067D1C
	movs r1, #0x80
	lsls r1, r1, #8
	adds r0, r6, #0
	bl sub_080673E8
	adds r0, r6, #0
	bl sub_080673F8
_08067D1C:
	adds r0, r6, #0
	bl sub_08067550
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08067D2A
	b _08067F16
_08067D2A:
	ldrb r0, [r7, #2]
	adds r0, #1
	strb r0, [r7, #2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bhi _08067D3C
	movs r0, #1
	b _08067F14
_08067D3C:
	movs r0, #3
	b _08067F14
_08067D40:
	adds r0, r6, #0
	movs r1, #3
	movs r2, #0xff
	bl sub_08067504
	movs r2, #0x80
	lsls r2, r2, #8
	mov r0, r8
	ldrb r1, [r0, #0x12]
	movs r0, #0xff
	subs r0, r0, r1
	lsls r0, r0, #6
	subs r2, r2, r0
	adds r0, r6, #0
	adds r1, r2, #0
	bl sub_080673E8
	adds r0, r6, #0
	bl sub_080673F8
	adds r0, r6, #0
	mov r1, sp
	bl sub_080673C8
	mov r0, sp
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0xaf
	bgt _08067D7C
	b _08067F16
_08067D7C:
	movs r0, #4
	strb r0, [r7, #1]
_08067D80:
	mov r2, r8
	ldrb r0, [r2, #0x13]
	lsls r0, r0, #0x18
	cmp r0, #0
	bge _08067D8E
	movs r1, #6
	b _08067D98
_08067D8E:
	lsrs r0, r0, #0x18
	movs r1, #8
	cmp r0, #0x2f
	bls _08067D98
	movs r1, #7
_08067D98:
	adds r0, r6, #0
	movs r2, #0xff
	bl sub_08067504
	movs r2, #0x80
	lsls r2, r2, #8
	mov r1, r8
	ldrb r0, [r1, #0x13]
	movs r1, #0xff
	subs r1, r1, r0
	lsls r1, r1, #6
	subs r2, r2, r1
	adds r0, r6, #0
	adds r1, r2, #0
	bl sub_080673E8
	adds r0, r6, #0
	bl sub_080673F8
	adds r0, r6, #0
	mov r1, sp
	bl sub_080673C8
	ldrb r0, [r6, #0x14]
	cmp r0, #8
	bne _08067DE4
	mov r0, sp
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0xcf
	ble _08067DE4
	ldr r0, [r6, #4]
	cmp r0, #0
	bne _08067DE4
	ldrb r0, [r7]
	bl sub_08067564
	str r0, [r6, #4]
_08067DE4:
	ldrb r1, [r7]
	lsls r1, r1, #5
	mov r0, sp
	movs r2, #0
	ldrsh r0, [r0, r2]
	subs r0, #0xb0
	lsrs r2, r0, #0x1f
	adds r0, r0, r2
	asrs r0, r0, #1
	subs r0, #0x92
	subs r1, r1, r0
	lsls r1, r1, #0x10
	str r1, [r6, #0xc]
	mov r0, sp
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r0, _08067EC4 @ =0x0000014F
	cmp r1, r0
	bgt _08067E0C
	b _08067F16
_08067E0C:
	ldrb r0, [r6, #0x14]
	cmp r0, #8
	bne _08067E1C
	ldr r0, [r6, #4]
	bl sub_08009A00
	movs r0, #0
	str r0, [r6, #4]
_08067E1C:
	movs r0, #5
	strb r0, [r7, #1]
_08067E20:
	adds r0, r6, #0
	movs r1, #9
	movs r2, #1
	bl sub_08067504
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r6, #0
	adds r1, r2, #0
	bl sub_080673E8
	adds r0, r6, #0
	bl sub_080673F8
	adds r0, r6, #0
	bl sub_08067550
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08067F16
	movs r0, #6
	strb r0, [r7, #1]
_08067E4C:
	adds r0, r6, #0
	movs r1, #0xa
	movs r2, #0xff
	bl sub_08067504
	ldr r0, [r6, #0x10]
	movs r1, #0x80
	lsls r1, r1, #6
	mov sb, r1
	cmp r0, sb
	ble _08067E9A
	bl __floatsidf
	adds r5, r1, #0
	adds r4, r0, #0
	mov r2, r8
	ldrb r1, [r2, #0x14]
	movs r0, #0xff
	subs r0, r0, r1
	bl __floatsidf
	ldr r2, _08067EC8 @ =0x3FF80000
	ldr r3, _08067ECC @ =0x00000000
	bl __muldf3
	adds r3, r1, #0
	adds r2, r0, #0
	adds r1, r5, #0
	adds r0, r4, #0
	bl __subdf3
	bl __fixdfsi
	str r0, [r6, #0x10]
	ldr r1, _08067ED0 @ =0x00001FFF
	cmp r0, r1
	bgt _08067E9A
	mov r0, sb
	str r0, [r6, #0x10]
_08067E9A:
	adds r0, r6, #0
	bl sub_080673F8
	adds r0, r6, #0
	mov r1, sp
	bl sub_080673C8
	mov r0, sp
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r0, _08067ED4 @ =0x000001DF
	cmp r1, r0
	ble _08067F16
	movs r0, #7
	strb r0, [r7, #1]
_08067EB8:
	ldrb r0, [r6, #0x14]
	cmp r0, #0xa
	beq _08067ED8
	cmp r0, #0xb
	beq _08067EEA
	b _08067F16
	.align 2, 0
_08067EC4: .4byte 0x0000014F
_08067EC8: .4byte 0x3FF80000
_08067ECC: .4byte 0x00000000
_08067ED0: .4byte 0x00001FFF
_08067ED4: .4byte 0x000001DF
_08067ED8:
	adds r0, r6, #0
	movs r1, #0xb
	movs r2, #0xff
	bl sub_08067504
	ldrb r0, [r7]
	bl sub_08067A40
	b _08067F16
_08067EEA:
	adds r0, r6, #0
	bl sub_08067550
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08067F16
	ldrb r0, [r7]
	bl sub_08067B28
	adds r1, r0, #0
	lsls r1, r1, #0x18
	movs r0, #0xc0
	lsls r0, r0, #0x14
	adds r1, r1, r0
	lsrs r1, r1, #0x18
	adds r0, r6, #0
	movs r2, #0xff
	bl sub_08067504
	ldrb r0, [r7, #1]
	adds r0, #1
_08067F14:
	strb r0, [r7, #1]
_08067F16:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08067F24
sub_08067F24: @ 0x08067F24
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	lsls r1, r1, #0x18
	lsrs r3, r1, #0x18
	lsls r0, r0, #0x18
	asrs r2, r0, #0x18
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	beq _08067F90
	ldr r1, _08067F88 @ =0x030044CC
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	adds r0, #0x28
	ldr r1, [r1]
	adds r5, r1, r0
	lsls r1, r3, #0x18
	asrs r0, r1, #2
	movs r2, #0x80
	lsls r2, r2, #0x11
	adds r0, r0, r2
	lsrs r7, r0, #0x10
	adds r4, r7, #0
	mov r8, r1
	movs r6, #0xb
_08067F5C:
	ldrb r0, [r5]
	adds r5, #1
	bl sub_080050EC
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r0, r4, #5
	ldr r2, _08067F8C @ =0x06004000
	adds r0, r0, r2
	movs r2, #1
	str r2, [sp]
	movs r3, #0
	bl sub_08004BB8
	subs r6, #1
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r6, #0
	bge _08067F5C
	b _08067F96
	.align 2, 0
_08067F88: .4byte 0x030044CC
_08067F8C: .4byte 0x06004000
_08067F90:
	movs r7, #0xc0
	lsls r3, r3, #0x18
	mov r8, r3
_08067F96:
	mov r0, r8
	lsls r3, r0, #2
	lsrs r3, r3, #0x18
	movs r0, #0xc
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0x1b
	adds r1, r7, #0
	movs r2, #0
	bl sub_08004FD4
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08067FBC
sub_08067FBC: @ 0x08067FBC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _080680E4 @ =0x030044CC
	ldr r0, [r0]
	lsls r1, r1, #0x18
	asrs r4, r1, #0x18
	lsls r1, r4, #1
	adds r0, #0x1c
	adds r0, r0, r1
	ldrh r5, [r0]
	adds r0, r5, #0
	movs r1, #0x3c
	bl __umodsi3
	ldr r1, _080680E8 @ =0x00000683
	muls r0, r1, r0
	movs r1, #0xfa
	lsls r1, r1, #2
	bl __udivsi3
	adds r6, r0, #0
	cmp r6, #0x62
	bne _08067FF0
	movs r6, #0x63
_08067FF0:
	movs r1, #0xe1
	lsls r1, r1, #4
	adds r0, r5, #0
	bl __umodsi3
	movs r1, #0x3c
	bl __udivsi3
	adds r5, r0, #0
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	lsls r4, r4, #0x1a
	movs r0, #0x80
	lsls r0, r0, #0x12
	orrs r4, r0
	asrs r4, r4, #0x12
	ldr r0, _080680EC @ =0x0600D80C
	adds r7, r4, r0
	adds r0, r5, #0
	movs r1, #0xa
	bl __udivsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #8
	movs r1, #0xd0
	lsls r1, r1, #0x10
	adds r0, r0, r1
	lsrs r0, r0, #0x10
	movs r2, #0xe0
	lsls r2, r2, #8
	mov r8, r2
	adds r1, r0, #0
	mov r2, r8
	orrs r1, r2
	strh r1, [r7]
	ldr r2, _080680F0 @ =0x0600D84C
	adds r1, r4, r2
	adds r0, #0x20
	ldr r2, _080680F4 @ =0xFFFFE000
	mov sb, r2
	mov r2, sb
	orrs r0, r2
	strh r0, [r1]
	ldr r0, _080680F8 @ =0x0600D80E
	adds r7, r4, r0
	adds r0, r5, #0
	movs r1, #0xa
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #8
	movs r1, #0xd0
	lsls r1, r1, #0x10
	adds r0, r0, r1
	lsrs r0, r0, #0x10
	adds r1, r0, #0
	mov r2, r8
	orrs r1, r2
	strh r1, [r7]
	ldr r2, _080680FC @ =0x0600D84E
	adds r1, r4, r2
	adds r0, #0x20
	mov r2, sb
	orrs r0, r2
	strh r0, [r1]
	ldr r0, _08068100 @ =0x0600D810
	adds r7, r4, r0
	movs r0, #0xdb
	mov r1, r8
	orrs r0, r1
	strh r0, [r7]
	ldr r2, _08068104 @ =0x0600D850
	adds r1, r4, r2
	movs r0, #0xfb
	mov r2, sb
	orrs r0, r2
	strh r0, [r1]
	ldr r0, _08068108 @ =0x0600D812
	adds r7, r4, r0
	adds r0, r6, #0
	movs r1, #0xa
	bl __udivsi3
	adds r0, #0xd0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r0, #0
	mov r2, r8
	orrs r1, r2
	strh r1, [r7]
	ldr r2, _0806810C @ =0x0600D852
	adds r1, r4, r2
	adds r0, #0x20
	mov r2, sb
	orrs r0, r2
	strh r0, [r1]
	ldr r0, _08068110 @ =0x0600D814
	adds r7, r4, r0
	adds r0, r6, #0
	movs r1, #0xa
	bl __umodsi3
	adds r0, #0xd0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r0, #0
	mov r2, r8
	orrs r1, r2
	strh r1, [r7]
	ldr r1, _08068114 @ =0x0600D854
	adds r4, r4, r1
	adds r0, #0x20
	mov r2, sb
	orrs r0, r2
	strh r0, [r4]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080680E4: .4byte 0x030044CC
_080680E8: .4byte 0x00000683
_080680EC: .4byte 0x0600D80C
_080680F0: .4byte 0x0600D84C
_080680F4: .4byte 0xFFFFE000
_080680F8: .4byte 0x0600D80E
_080680FC: .4byte 0x0600D84E
_08068100: .4byte 0x0600D810
_08068104: .4byte 0x0600D850
_08068108: .4byte 0x0600D812
_0806810C: .4byte 0x0600D852
_08068110: .4byte 0x0600D814
_08068114: .4byte 0x0600D854

	thumb_func_start sub_08068118
sub_08068118: @ 0x08068118
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	movs r5, #0
	movs r4, #1
	ldr r7, _080681A8 @ =0x02037ED6
	movs r0, #0x6a
	adds r0, r0, r7
	mov sl, r0
	movs r1, #0x73
	adds r1, r1, r7
	mov sb, r1
	adds r6, r7, #0
	adds r6, #0x18
	movs r2, #1
_08068142:
	adds r0, r7, #0
	adds r0, #0x72
	ldrb r0, [r0]
	cmp r0, #0
	beq _0806818A
	mov r1, sl
	ldr r0, [r1]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x1c
	asrs r0, r4
	ands r0, r2
	cmp r0, #0
	beq _0806818A
	mov r0, sb
	ldrb r0, [r0]
	cmp r4, r0
	beq _08068176
	ldrb r0, [r6]
	cmp r0, #0
	beq _08068176
	cmp r0, #0x77
	beq _08068176
	str r2, [sp]
	bl sub_0800386C
	ldr r2, [sp]
_08068176:
	ldrb r1, [r6, #1]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, r8
	bne _0806818A
	adds r0, r2, #0
	lsls r0, r4
	orrs r5, r0
	lsls r0, r5, #0x18
	lsrs r5, r0, #0x18
_0806818A:
	adds r6, #0x18
	adds r4, #1
	cmp r4, #3
	ble _08068142
	movs r0, #1
	orrs r5, r0
	adds r0, r5, #0
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080681A8: .4byte 0x02037ED6

	thumb_func_start sub_080681AC
sub_080681AC: @ 0x080681AC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #4]
	movs r0, #0
	mov r8, r0
	movs r1, #1
	mov sb, r1
_080681C6:
	mov r1, r8
	lsls r0, r1, #1
	add r0, r8
	lsls r0, r0, #3
	ldr r1, _0806826C @ =0x02037ED6
	adds r6, r0, r1
	adds r0, #0x28
	ldr r1, _08068270 @ =0x030044CC
	ldr r2, [r1]
	adds r5, r2, r0
	ldr r4, [sp, #4]
	mov r0, r8
	asrs r4, r0
	mov r1, sb
	ands r4, r1
	cmp r4, #0
	beq _08068274
	movs r1, #0xa5
	lsls r1, r1, #1
	adds r0, r2, r1
	ldrb r4, [r0]
	mov r0, r8
	asrs r4, r0
	mov r1, sb
	ands r4, r1
	movs r0, #1
	add r0, r8
	mov sl, r0
	cmp r4, #0
	bne _080682DC
	adds r0, r6, #2
	adds r1, r5, #0
	movs r2, #6
	bl CpuSet
	strh r4, [r5, #0x16]
	movs r7, #0
	adds r2, r5, #0
	adds r2, #0x12
	mov r1, r8
	lsls r3, r1, #0x18
	adds r4, r5, #0
	adds r4, #0xc
	adds r6, #0xe
_0806821E:
	ldrh r0, [r6]
	strh r0, [r4]
	movs r1, #0
	ldrsh r0, [r4, r1]
	lsls r1, r7, #0x18
	lsrs r1, r1, #0x18
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	bl sub_0806797C
	ldr r2, [sp, #8]
	adds r1, r2, r7
	strb r0, [r1]
	ldrh r0, [r4]
	ldrh r1, [r5, #0x16]
	adds r0, r0, r1
	strh r0, [r5, #0x16]
	adds r4, #2
	adds r6, #2
	adds r7, #1
	ldr r3, [sp, #0xc]
	cmp r7, #2
	ble _0806821E
	asrs r1, r3, #0x18
	adds r0, r1, #0
	bl sub_08067F24
	ldr r1, _08068270 @ =0x030044CC
	ldr r0, [r1]
	movs r1, #0xa5
	lsls r1, r1, #1
	adds r2, r0, r1
	mov r0, sb
	mov r1, r8
	lsls r0, r1
	ldrb r1, [r2]
	orrs r0, r1
	b _080682DA
	.align 2, 0
_0806826C: .4byte 0x02037ED6
_08068270: .4byte 0x030044CC
_08068274:
	movs r1, #0xa5
	lsls r1, r1, #1
	adds r0, r2, r1
	ldrb r0, [r0]
	mov r1, r8
	asrs r0, r1
	mov r1, sb
	ands r0, r1
	movs r1, #1
	add r1, r8
	mov sl, r1
	cmp r0, #0
	beq _080682DC
	mov r0, sp
	strh r4, [r0]
	adds r1, r5, #0
	ldr r2, _080682F8 @ =0x01000006
	bl CpuSet
	strh r4, [r5, #0x16]
	movs r7, #0
	mov r0, r8
	lsls r3, r0, #0x18
	movs r6, #0
	movs r4, #0
	adds r2, r5, #0
	adds r2, #0x12
	adds r1, r5, #0
	adds r1, #0xc
_080682AE:
	strh r4, [r1]
	adds r0, r2, r7
	strb r6, [r0]
	adds r1, #2
	adds r7, #1
	cmp r7, #2
	ble _080682AE
	asrs r1, r3, #0x18
	movs r0, #1
	rsbs r0, r0, #0
	bl sub_08067F24
	ldr r1, _080682FC @ =0x030044CC
	ldr r0, [r1]
	movs r1, #0xa5
	lsls r1, r1, #1
	adds r2, r0, r1
	mov r1, sb
	mov r0, r8
	lsls r1, r0
	ldrb r0, [r2]
	bics r0, r1
_080682DA:
	strb r0, [r2]
_080682DC:
	mov r8, sl
	mov r1, r8
	cmp r1, #3
	bgt _080682E6
	b _080681C6
_080682E6:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080682F8: .4byte 0x01000006
_080682FC: .4byte 0x030044CC

	thumb_func_start sub_08068300
sub_08068300: @ 0x08068300
	push {r4, r5, r6, r7, lr}
	movs r4, #0
	ldr r5, _0806836C @ =0x02037EB0
	ldr r7, _08068370 @ =0x02034E98
	adds r6, r5, #0
	adds r6, #0x3a
_0806830C:
	adds r0, r5, #0
	adds r0, #0x99
	ldrb r0, [r0]
	cmp r4, r0
	beq _08068336
	adds r0, r5, #0
	adds r0, #0x90
	ldr r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	asrs r0, r4
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08068336
	ldrh r0, [r7, #6]
	ldrh r1, [r6]
	cmp r0, r1
	beq _08068336
	bl sub_0800386C
_08068336:
	adds r6, #0x18
	adds r4, #1
	cmp r4, #3
	ble _0806830C
	ldr r0, _0806836C @ =0x02037EB0
	adds r0, #0x90
	ldr r1, [r0]
	movs r0, #0xc0
	lsls r0, r0, #6
	ands r1, r0
	cmp r1, #0
	beq _08068378
	ldr r0, _08068374 @ =0x030044CC
	ldr r1, [r0]
	movs r2, #0xa6
	lsls r2, r2, #1
	adds r1, r1, r2
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1e
	bls _08068384
	bl sub_0800386C
	b _08068384
	.align 2, 0
_0806836C: .4byte 0x02037EB0
_08068370: .4byte 0x02034E98
_08068374: .4byte 0x030044CC
_08068378:
	ldr r0, _0806838C @ =0x030044CC
	ldr r0, [r0]
	movs r2, #0xa6
	lsls r2, r2, #1
	adds r0, r0, r2
	strb r1, [r0]
_08068384:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806838C: .4byte 0x030044CC

	thumb_func_start sub_08068390
sub_08068390: @ 0x08068390
	push {lr}
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	ldr r3, _080683B4 @ =0x02037EB0
	adds r0, r3, #0
	adds r0, #0x90
	ldr r0, [r0]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080683B8
	adds r0, r3, #0
	adds r0, #0x99
	ldrb r0, [r0]
	cmp r0, #0
	bne _080683CE
	movs r0, #1
	b _080683D0
	.align 2, 0
_080683B4: .4byte 0x02037EB0
_080683B8:
	adds r1, r3, #0
	adds r1, #0x99
	ldrb r0, [r1]
	cmp r0, #0
	beq _080683CE
	ldrb r1, [r1]
	asrs r2, r1
	movs r0, #1
	ands r2, r0
	cmp r2, #0
	bne _080683D0
_080683CE:
	movs r0, #0
_080683D0:
	pop {r1}
	bx r1

	thumb_func_start sub_080683D4
sub_080683D4: @ 0x080683D4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _08068488 @ =0x02037ED6
	mov sb, r0
	ldr r1, _0806848C @ =0x030024E0
	ldrh r2, [r1]
	movs r3, #0xc0
	lsls r3, r3, #3
	adds r0, r3, #0
	orrs r0, r2
	strh r0, [r1]
	ldr r0, _08068490 @ =0x0000FFA8
	strh r0, [r1, #0xc]
	adds r0, #0x48
	strh r0, [r1, #0x14]
	ldr r4, _08068494 @ =0x030044CC
	ldr r1, [r4]
	movs r0, #0x77
	strb r0, [r1]
	movs r0, #0
	bl sub_0800759C
	ldr r1, [r4]
	adds r1, #2
	movs r2, #6
	bl CpuSet
	ldr r0, [r4]
	adds r0, #0xe
	bl sub_08069E7C
	movs r0, #0
	movs r1, #0
	bl sub_0806723C
	movs r7, #0x28
	movs r5, #0
	mov r8, r4
	movs r6, #0xb8
_08068426:
	mov r1, r8
	ldr r0, [r1]
	adds r0, r0, r6
	lsls r1, r5, #0x18
	lsrs r1, r1, #0x18
	bl sub_0806747C
	mov r3, r8
	ldr r0, [r3]
	adds r0, r0, r6
	lsls r4, r7, #0x10
	asrs r4, r4, #0x10
	movs r1, #0x48
	adds r2, r4, #0
	bl sub_08067390
	adds r6, #0x18
	adds r5, #1
	adds r4, #0x20
	lsls r4, r4, #0x10
	lsrs r7, r4, #0x10
	cmp r5, #3
	ble _08068426
	bl sub_08067948
	movs r0, #7
	bl sub_080077C4
	movs r0, #0x20
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl FadeIn_08008AF4
	ldr r0, _0806848C @ =0x030024E0
	adds r0, #0x4f
	movs r1, #1
	strb r1, [r0]
	bl sub_08008D34
	bl sub_080677F8
	movs r0, #1
	bl sub_08005A88
	movs r0, #0
	bl sub_080059E4
	b _080684B4
	.align 2, 0
_08068488: .4byte 0x02037ED6
_0806848C: .4byte 0x030024E0
_08068490: .4byte 0x0000FFA8
_08068494: .4byte 0x030044CC
_08068498:
	cmp r0, #1
	bne _0806852C
	ldr r0, _08068508 @ =0x0047003D
	bl sub_080062D0
	ldr r0, _0806850C @ =0x0047003E
	bl sub_080062D0
	ldr r0, _08068510 @ =0x0047003F
	bl sub_080062D0
	ldr r0, _08068514 @ =0x00470040
	bl sub_080062D0
_080684B4:
	ldr r0, _08068518 @ =0x0047003B
	bl sub_080062D0
	ldr r0, _0806851C @ =0x0047003C
	bl sub_0800648C
	bl sub_080064F8
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _08068498
	ldr r0, _08068520 @ =0x00470041
	bl sub_080062D0
	ldr r0, _08068524 @ =0x00470042
	bl sub_080062D0
	ldr r0, _08068528 @ =0x00470043
	bl sub_0800648C
	bl sub_080064F8
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080684B4
	movs r4, #0
_080684EA:
	bl sub_08005A2C
	bl sub_08005AB0
	lsls r0, r4, #0x18
	asrs r2, r0, #0x18
	movs r1, #1
	rsbs r1, r1, #0
	adds r7, r0, #0
	cmp r2, r1
	bne _08068540
	bl sub_08067870
	b _080686E2
	.align 2, 0
_08068508: .4byte 0x0047003D
_0806850C: .4byte 0x0047003E
_08068510: .4byte 0x0047003F
_08068514: .4byte 0x00470040
_08068518: .4byte 0x0047003B
_0806851C: .4byte 0x0047003C
_08068520: .4byte 0x00470041
_08068524: .4byte 0x00470042
_08068528: .4byte 0x00470043
_0806852C:
	movs r4, #0xff
	b _080684EA
_08068530:
	movs r0, #0xcc
	bl m4aSongNumStart
	mov r0, sb
	ldrb r4, [r0, #1]
	b _08068694
_0806853C:
	movs r4, #0xff
	b _08068694
_08068540:
	bl sub_08003468
	bl sub_08003510
	ldr r1, _080685AC @ =0x0203A300
	movs r0, #1
	strb r0, [r1]
	ldr r4, _080685B0 @ =0x02037EB0
	adds r5, r4, #0
	adds r5, #0x90
_08068554:
	adds r0, r4, #0
	adds r0, #0x98
	ldrb r0, [r0]
	cmp r0, #0
	beq _08068600
	bl sub_08068300
	adds r0, r4, #0
	adds r0, #0x99
	ldrb r0, [r0]
	cmp r0, #0
	bne _080685C4
	ldr r0, [r5]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080685C4
	movs r0, #1
	bl sub_08068118
	ldr r2, _080685B4 @ =0x030044CC
	ldr r1, [r2]
	movs r3, #0
	strb r0, [r1, #1]
	ldr r0, _080685B8 @ =0x030024B0
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080685CC
	mov r0, sb
	ldrb r1, [r0, #1]
	movs r0, #0xe
	ands r0, r1
	cmp r0, #0
	beq _080685BC
	ldr r0, [r2]
	ldrb r1, [r0, #1]
	movs r3, #0x80
	rsbs r3, r3, #0
	adds r2, r3, #0
	orrs r1, r2
	strb r1, [r0, #1]
	b _080685CC
	.align 2, 0
_080685AC: .4byte 0x0203A300
_080685B0: .4byte 0x02037EB0
_080685B4: .4byte 0x030044CC
_080685B8: .4byte 0x030024B0
_080685BC:
	movs r0, #0xd2
	bl m4aSongNumStart
	b _080685CC
_080685C4:
	ldr r0, _08068678 @ =0x030044CC
	ldr r1, [r0]
	movs r0, #1
	strb r0, [r1, #1]
_080685CC:
	ldr r0, _08068678 @ =0x030044CC
	ldr r1, [r0]
	ldr r0, _0806867C @ =0x00009999
	movs r2, #0x14
	bl sub_080038F4
	mov r0, sb
	ldrb r1, [r0, #1]
	movs r0, #0xf
	ands r0, r1
	bl sub_080681AC
	mov r1, sb
	movs r0, #1
	ldrsb r0, [r1, r0]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08068600
	mov r3, sb
	ldrb r0, [r3, #1]
	bl sub_08068390
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08068530
_08068600:
	ldr r0, _08068680 @ =0x030024B0
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0806864E
	adds r0, r4, #0
	adds r0, #0x99
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r0, #1
	rsbs r0, r0, #0
	bl sub_08067F24
	bl sub_080034DC
	bl sub_08005934
	ldr r0, _08068684 @ =0x00470044
	bl sub_080062D0
	ldr r0, _08068688 @ =0x00470045
	bl sub_0800648C
	bl sub_08005A2C
	bl sub_080064F8
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08068640
	b _0806853C
_08068640:
	bl sub_08003468
	bl sub_08003510
	ldr r1, _0806868C @ =0x0203A300
	movs r0, #1
	strb r0, [r1]
_0806864E:
	movs r0, #1
	bl sub_0806789C
	ldr r0, _08068690 @ =0x02037EB0
	adds r0, #0x99
	ldrb r0, [r0]
	cmp r0, #0
	bne _08068668
	ldr r0, [r5]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0806866E
_08068668:
	movs r0, #0
	mov r1, sb
	strb r0, [r1, #1]
_0806866E:
	movs r0, #1
	bl ProcSleep_08002B98
	b _08068554
	.align 2, 0
_08068678: .4byte 0x030044CC
_0806867C: .4byte 0x00009999
_08068680: .4byte 0x030024B0
_08068684: .4byte 0x00470044
_08068688: .4byte 0x00470045
_0806868C: .4byte 0x0203A300
_08068690: .4byte 0x02037EB0
_08068694:
	bl sub_08067870
	lsls r0, r4, #0x18
	asrs r2, r0, #0x18
	movs r1, #1
	rsbs r1, r1, #0
	adds r7, r0, #0
	cmp r2, r1
	beq _080686E2
	ldr r1, _08068718 @ =0x02037EB0
	adds r0, r1, #0
	adds r0, #0x99
	ldrb r0, [r0]
	cmp r0, #0
	bne _080686C0
	adds r0, r1, #0
	adds r0, #0x90
	ldr r0, [r0]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080686C8
_080686C0:
	ldr r0, _0806871C @ =0x030044CC
	ldr r1, [r0]
	movs r0, #2
	strb r0, [r1, #1]
_080686C8:
	mov r3, sb
	ldrb r1, [r3, #1]
	movs r0, #0xf
	ands r0, r1
	bl sub_08003860
	ldr r1, _08068718 @ =0x02037EB0
	movs r0, #1
	strb r0, [r1, #6]
	movs r0, #0
	movs r1, #0x20
	bl sub_080077EC
_080686E2:
	movs r0, #0x20
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl FadeOut_080089E8
	bl sub_08008D34
	ldr r6, _0806871C @ =0x030044CC
	movs r4, #0xb8
	movs r5, #3
_080686F8:
	ldr r0, [r6]
	adds r0, r0, r4
	bl sub_08067364
	adds r4, #0x18
	subs r5, #1
	cmp r5, #0
	bge _080686F8
	asrs r0, r7, #0x18
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08068718: .4byte 0x02037EB0
_0806871C: .4byte 0x030044CC

	thumb_func_start sub_08068720
sub_08068720: @ 0x08068720
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	movs r0, #0
	str r0, [sp, #4]
	ldr r1, _080688AC @ =0x0600D800
	ldr r2, _080688B0 @ =0x01000200
	add r0, sp, #4
	bl CpuFastSet
	ldr r1, _080688B4 @ =0x030024E0
	ldrh r2, [r1]
	movs r3, #0xc0
	lsls r3, r3, #3
	adds r0, r3, #0
	orrs r0, r2
	strh r0, [r1]
	ldr r0, _080688B8 @ =0x0000FF98
	strh r0, [r1, #0xc]
	adds r0, #0x5c
	strh r0, [r1, #0x14]
	movs r0, #0
	movs r1, #0
	bl sub_0806723C
	movs r5, #0x28
	movs r7, #0
	movs r0, #0
	str r0, [sp, #0xc]
	mov r1, sp
	adds r1, #8
	str r1, [sp, #0x10]
	mov r2, sp
	adds r2, #9
	str r2, [sp, #0x14]
	ldr r3, _080688BC @ =0x030044CC
	mov sl, r3
	movs r0, #0x88
	str r0, [sp, #0x18]
	movs r1, #0xb8
	mov sb, r1
_08068778:
	mov r2, sl
	ldr r1, [r2]
	movs r3, #0xa5
	lsls r3, r3, #1
	adds r0, r1, r3
	ldrb r0, [r0]
	ldr r2, [sp, #0xc]
	asrs r0, r2
	movs r3, #1
	ands r0, r3
	cmp r0, #0
	beq _08068816
	adds r0, r1, #0
	adds r0, #0x14
	adds r0, r0, r7
	ldrb r6, [r0]
	adds r0, r1, #0
	adds r0, #0x18
	adds r0, r0, r7
	ldrb r4, [r0]
	mov r2, sb
	adds r0, r1, r2
	lsls r6, r6, #0x18
	lsrs r3, r6, #0x18
	mov r8, r3
	mov r1, r8
	bl sub_0806747C
	mov r1, sl
	ldr r0, [r1]
	add r0, sb
	lsls r4, r4, #0x18
	movs r2, #0xc0
	lsls r2, r2, #0x14
	adds r1, r4, r2
	lsrs r1, r1, #0x18
	movs r2, #0xff
	bl sub_08067504
	mov r3, sl
	ldr r0, [r3]
	add r0, sb
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	movs r1, #0x58
	adds r2, r5, #0
	bl sub_08067390
	mov r1, sl
	ldr r0, [r1]
	ldr r2, [sp, #0x18]
	adds r0, r0, r2
	lsrs r4, r4, #0x18
	str r5, [sp]
	mov r1, r8
	adds r2, r4, #0
	movs r3, #0x38
	bl sub_08067740
	asrs r6, r6, #0x18
	lsls r4, r7, #0x18
	asrs r4, r4, #0x18
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_08067F24
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_08067FBC
	ldr r3, [sp, #0x18]
	adds r3, #0xc
	str r3, [sp, #0x18]
	movs r0, #0x18
	add sb, r0
	adds r7, #1
	adds r5, #0x20
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
_08068816:
	ldr r1, [sp, #0xc]
	adds r1, #1
	str r1, [sp, #0xc]
	cmp r1, #3
	ble _08068778
	bl sub_08067948
	movs r0, #7
	bl sub_080077C4
	movs r0, #0x20
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl FadeIn_08008AF4
	ldr r0, _080688B4 @ =0x030024E0
	adds r0, #0x4f
	movs r4, #0
	movs r2, #1
	strb r2, [r0]
	bl sub_08008D34
	bl sub_080677F8
	ldr r3, [sp, #0x10]
	strb r4, [r3]
	ldr r0, [sp, #0x14]
	strb r4, [r0]
	ldr r5, _080688C0 @ =0x02037EB0
	adds r6, r5, #0
	adds r6, #0x90
	ldr r4, [sp, #0x14]
_08068858:
	adds r0, r5, #0
	adds r0, #0x99
	ldrb r0, [r0]
	cmp r0, #0
	bne _08068888
	ldr r0, [r6]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08068888
	ldr r0, _080688C4 @ =0x030024B0
	ldrh r1, [r0]
	movs r2, #1
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0806887E
	ldr r1, [sp, #0x10]
	strb r2, [r1]
_0806887E:
	ldr r0, _080688C8 @ =0x00001234
	ldr r1, [sp, #0x10]
	movs r2, #1
	bl sub_080038F4
_08068888:
	movs r0, #0
	ldr r1, _080688C8 @ =0x00001234
	adds r2, r4, #0
	movs r3, #1
	bl sub_08003938
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bne _080688CC
	movs r0, #1
	bl sub_0806789C
	movs r0, #1
	bl ProcSleep_08002B98
	b _08068858
	.align 2, 0
_080688AC: .4byte 0x0600D800
_080688B0: .4byte 0x01000200
_080688B4: .4byte 0x030024E0
_080688B8: .4byte 0x0000FF98
_080688BC: .4byte 0x030044CC
_080688C0: .4byte 0x02037EB0
_080688C4: .4byte 0x030024B0
_080688C8: .4byte 0x00001234
_080688CC:
	movs r0, #0xcc
	bl m4aSongNumStart
	bl sub_08067870
	movs r0, #0x20
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl FadeOut_080089E8
	bl sub_08008D34
	ldr r6, _08068918 @ =0x030044CC
	movs r5, #0x88
	movs r4, #0xb8
	movs r7, #3
_080688EE:
	ldr r0, [r6]
	adds r0, r0, r4
	bl sub_08067364
	ldr r0, [r6]
	adds r0, r0, r5
	bl sub_080677C4
	adds r5, #0xc
	adds r4, #0x18
	subs r7, #1
	cmp r7, #0
	bge _080688EE
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08068918: .4byte 0x030044CC

	thumb_func_start sub_0806891C
sub_0806891C: @ 0x0806891C
	push {r4, r5, lr}
	sub sp, #0xc
	ldr r1, _08068984 @ =0x0809030C
	mov r0, sp
	movs r2, #0xc
	bl memcpy
	movs r3, #0
	movs r1, #0
	ldr r0, _08068988 @ =0x030044CC
	ldr r0, [r0]
	adds r5, r0, #0
	adds r5, #0x34
_08068936:
	lsls r0, r1, #1
	adds r4, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r1, r0, r5
	movs r2, #2
_08068942:
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	ldrh r3, [r1]
	adds r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r1, #2
	subs r2, #1
	cmp r2, #0
	bge _08068942
	adds r1, r4, #0
	cmp r1, #3
	ble _08068936
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	movs r1, #6
	bl __modsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08068970
	rsbs r0, r0, #0
_08068970:
	lsls r0, r0, #0x10
	asrs r0, r0, #0xf
	add r0, sp
	ldrh r0, [r0]
	bl sub_080077C4
	add sp, #0xc
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08068984: .4byte 0x0809030C
_08068988: .4byte 0x030044CC

	thumb_func_start sub_0806898C
sub_0806898C: @ 0x0806898C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r2, _08068AC8 @ =0x030024E0
	ldrh r1, [r2]
	ldr r0, _08068ACC @ =0x0000F9FF
	ands r0, r1
	strh r0, [r2]
	movs r0, #0
	movs r1, #0x60
	bl sub_0806723C
	ldr r4, _08068AD0 @ =0x030044CC
	ldr r0, _08068AD4 @ =0x02037ED6
	adds r0, #0x73
	ldrb r0, [r0]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #3
	adds r1, #0xb8
	ldr r0, [r4]
	adds r0, r0, r1
	bl sub_080672CC
	movs r2, #0x92
	movs r5, #0
	mov sb, r4
	movs r7, #0xb8
	mov r8, r5
_080689CA:
	mov r0, sb
	ldr r1, [r0]
	movs r3, #0xa5
	lsls r3, r3, #1
	adds r0, r1, r3
	ldrb r0, [r0]
	asrs r0, r5
	movs r3, #1
	mov sl, r3
	ands r0, r3
	lsls r6, r2, #0x10
	cmp r0, #0
	beq _08068A26
	adds r0, r1, r7
	lsls r1, r5, #0x18
	lsrs r1, r1, #0x18
	bl sub_0806747C
	mov r1, sb
	ldr r0, [r1]
	adds r0, r0, r7
	asrs r2, r6, #0x10
	movs r1, #0x20
	bl sub_08067390
	adds r1, r5, #0
	subs r1, #0x70
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r0, _08068AD8 @ =sub_08067BC0
	movs r2, #0
	bl sub_08007968
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	bl sub_08007BBC
	movs r1, #0
	strb r5, [r0]
	strb r1, [r0, #1]
	mov r2, sb
	ldr r0, [r2]
	add r0, r8
	adds r0, #0xce
	strh r4, [r0]
_08068A26:
	adds r7, #0x18
	movs r3, #0x18
	add r8, r3
	adds r5, #1
	movs r1, #0x80
	lsls r1, r1, #0xe
	adds r0, r6, r1
	lsrs r2, r0, #0x10
	cmp r5, #3
	ble _080689CA
	ldr r5, _08068AD0 @ =0x030044CC
	ldr r0, [r5]
	movs r4, #0x8c
	lsls r4, r4, #1
	adds r0, r0, r4
	bl sub_080675DC
	ldr r0, [r5]
	adds r0, r0, r4
	movs r1, #0x38
	movs r2, #0x80
	bl sub_08067390
	bl sub_08067948
	bl sub_0806891C
	movs r0, #0x20
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl FadeIn_08008AF4
	ldr r0, _08068AC8 @ =0x030024E0
	adds r0, #0x4f
	mov r2, sl
	strb r2, [r0]
	bl sub_08008D34
	ldr r0, _08068ADC @ =sub_08067B64
	movs r1, #0x90
	movs r2, #0
	bl sub_08007968
	ldr r1, [r5]
	movs r3, #0x97
	lsls r3, r3, #1
	adds r1, r1, r3
	strh r0, [r1]
	movs r5, #0
	ldr r6, _08068AE0 @ =0x02037EB0
	adds r7, r6, #0
	adds r7, #0x90
_08068A90:
	adds r0, r6, #0
	adds r0, #0x99
	ldrb r0, [r0]
	cmp r0, #0
	bne _08068AE6
	ldr r0, [r7]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08068AE6
	ldr r1, _08068AD4 @ =0x02037ED6
	ldrb r0, [r1, #1]
	movs r4, #0x7f
	ands r4, r0
	movs r0, #2
	bl sub_08068118
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r4, r0
	beq _08068AE4
	adds r5, #1
	cmp r5, #0xa
	ble _08068AE6
	bl sub_0800386C
	b _08068AE6
	.align 2, 0
_08068AC8: .4byte 0x030024E0
_08068ACC: .4byte 0x0000F9FF
_08068AD0: .4byte 0x030044CC
_08068AD4: .4byte 0x02037ED6
_08068AD8: .4byte sub_08067BC0
_08068ADC: .4byte sub_08067B64
_08068AE0: .4byte 0x02037EB0
_08068AE4:
	movs r5, #0
_08068AE6:
	ldr r4, _08068B54 @ =0x030044CC
	ldr r1, [r4]
	ldr r0, _08068B58 @ =0x00009999
	movs r2, #0x14
	bl sub_080038F4
	ldr r2, [r4]
	ldr r3, _08068B5C @ =0x0000014B
	adds r0, r2, r3
	ldrb r0, [r0]
	cmp r0, #2
	bne _08068B60
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r2, r1
	ldrh r1, [r0]
	adds r1, #1
	strh r1, [r0]
	adds r0, r2, #0
	adds r0, #0x27
	subs r3, #1
	adds r1, r2, r3
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bne _08068B60
	movs r0, #0xb4
	bl ProcSleep_08002B98
	ldr r0, [r4]
	movs r1, #0x97
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	bl sub_08007A08
	movs r0, #0
	movs r1, #0x20
	bl sub_080077EC
	movs r0, #0x20
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl FadeOut_080089E8
	bl sub_08008D34
	movs r0, #0
	bl sub_080672CC
	movs r5, #0
	b _08068B6C
	.align 2, 0
_08068B54: .4byte 0x030044CC
_08068B58: .4byte 0x00009999
_08068B5C: .4byte 0x0000014B
_08068B60:
	bl sub_08067948
	movs r0, #1
	bl ProcSleep_08002B98
	b _08068A90
_08068B6C:
	ldr r6, _08068BC0 @ =0x030044CC
	ldr r2, [r6]
	movs r3, #0xa5
	lsls r3, r3, #1
	adds r0, r2, r3
	ldrb r0, [r0]
	asrs r0, r5
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08068B9E
	lsls r4, r5, #1
	adds r4, r4, r5
	lsls r4, r4, #3
	adds r0, r2, r4
	adds r0, #0xce
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	adds r4, #0xb8
	ldr r0, [r6]
	adds r0, r0, r4
	bl sub_08067364
_08068B9E:
	adds r5, #1
	cmp r5, #3
	ble _08068B6C
	ldr r0, [r6]
	movs r2, #0x8c
	lsls r2, r2, #1
	adds r0, r0, r2
	bl sub_08067364
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08068BC0: .4byte 0x030044CC

	thumb_func_start sub_08068BC4
sub_08068BC4: @ 0x08068BC4
	push {lr}
	bl sub_08066F1C
	bl sub_080683D4
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _08068BE2
	bl sub_0806898C
	bl sub_08068720
_08068BE2:
	bl sub_080034DC
	bl sub_080671E0
	movs r0, #0x2c
	bl ChangeGameState_08008790
	bl sub_08002B0C
	pop {r0}
	bx r0

	thumb_func_start sub_08068BF8
sub_08068BF8: @ 0x08068BF8
	push {lr}
	adds r2, r0, #0
	cmp r2, #0x64
	bhi _08068C04
	movs r0, #0
	b _08068C9E
_08068C04:
	movs r1, #0xfa
	lsls r1, r1, #2
	cmp r2, r1
	bhi _08068C10
	movs r0, #1
	b _08068C9E
_08068C10:
	ldr r0, _08068C28 @ =0x00002328
	cmp r2, r0
	bhi _08068C30
	ldr r1, _08068C2C @ =0xFFFFFC17
	adds r0, r2, r1
	movs r1, #0xfa
	lsls r1, r1, #3
	bl __udivsi3
	adds r0, #2
	b _08068C7E
	.align 2, 0
_08068C28: .4byte 0x00002328
_08068C2C: .4byte 0xFFFFFC17
_08068C30:
	ldr r0, _08068C44 @ =0x00004E20
	cmp r2, r0
	bhi _08068C4C
	ldr r3, _08068C48 @ =0xFFFFDCD7
	adds r0, r2, r3
	bl __udivsi3
	adds r0, #7
	b _08068C7E
	.align 2, 0
_08068C44: .4byte 0x00004E20
_08068C48: .4byte 0xFFFFDCD7
_08068C4C:
	ldr r0, _08068C64 @ =0x00009C40
	cmp r2, r0
	bhi _08068C6C
	ldr r1, _08068C68 @ =0xFFFFB1DF
	adds r0, r2, r1
	movs r1, #0xfa
	lsls r1, r1, #1
	bl __udivsi3
	adds r0, #0x13
	b _08068C7E
	.align 2, 0
_08068C64: .4byte 0x00009C40
_08068C68: .4byte 0xFFFFB1DF
_08068C6C:
	ldr r0, _08068C84 @ =0x0000C350
	cmp r2, r0
	bhi _08068C8C
	ldr r3, _08068C88 @ =0xFFFF63BF
	adds r0, r2, r3
	movs r1, #0xfa
	bl __udivsi3
	adds r0, #0x3b
_08068C7E:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	b _08068C9E
	.align 2, 0
_08068C84: .4byte 0x0000C350
_08068C88: .4byte 0xFFFF63BF
_08068C8C:
	ldr r0, _08068C98 @ =0x000F423E
	cmp r2, r0
	bls _08068C9C
	movs r0, #0xc8
	b _08068C9E
	.align 2, 0
_08068C98: .4byte 0x000F423E
_08068C9C:
	movs r0, #0x96
_08068C9E:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08068CA4
sub_08068CA4: @ 0x08068CA4
	push {lr}
	cmp r0, #0
	bne _08068CAE
	movs r0, #0
	b _08068CDA
_08068CAE:
	cmp r0, #0xa
	bls _08068CD6
	cmp r0, #0xf
	bhi _08068CC4
	lsls r0, r0, #0x11
	ldr r1, _08068CC0 @ =0xFFF60000
	adds r0, r0, r1
	b _08068CD8
	.align 2, 0
_08068CC0: .4byte 0xFFF60000
_08068CC4:
	cmp r0, #0x14
	bls _08068CCC
	movs r0, #0x32
	b _08068CDA
_08068CCC:
	adds r1, r0, #0
	subs r1, #0x10
	lsls r0, r1, #1
	adds r0, r0, r1
	adds r0, #0x17
_08068CD6:
	lsls r0, r0, #0x10
_08068CD8:
	asrs r0, r0, #0x10
_08068CDA:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08068CE0
sub_08068CE0: @ 0x08068CE0
	push {lr}
	adds r1, r0, #0
	cmp r1, #0x64
	bhi _08068CEC
	movs r0, #0
	b _08068D48
_08068CEC:
	ldr r0, _08068D04 @ =0x000014B4
	cmp r1, r0
	bhi _08068D08
	adds r0, r1, #0
	subs r0, #0x65
	movs r1, #0xc8
	lsls r1, r1, #1
	bl __udivsi3
	adds r0, #1
	b _08068D44
	.align 2, 0
_08068D04: .4byte 0x000014B4
_08068D08:
	ldr r0, _08068D20 @ =0x00002648
	cmp r1, r0
	bhi _08068D28
	ldr r2, _08068D24 @ =0xFFFFEB4B
	adds r0, r1, r2
	movs r1, #0x96
	lsls r1, r1, #1
	bl __udivsi3
	adds r0, #0xe
	b _08068D44
	.align 2, 0
_08068D20: .4byte 0x00002648
_08068D24: .4byte 0xFFFFEB4B
_08068D28:
	ldr r0, _08068D34 @ =0x00002EE0
	cmp r1, r0
	bls _08068D38
	movs r0, #0x32
	b _08068D48
	.align 2, 0
_08068D34: .4byte 0x00002EE0
_08068D38:
	ldr r2, _08068D4C @ =0xFFFFD9B7
	adds r0, r1, r2
	movs r1, #0xc8
	bl __udivsi3
	adds r0, #0x1e
_08068D44:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
_08068D48:
	pop {r1}
	bx r1
	.align 2, 0
_08068D4C: .4byte 0xFFFFD9B7

	thumb_func_start sub_08068D50
sub_08068D50: @ 0x08068D50
	push {lr}
	adds r1, r0, #0
	ldr r0, _08068D60 @ =0x0000464F
	cmp r1, r0
	bls _08068D64
	movs r0, #0
	b _08068DCE
	.align 2, 0
_08068D60: .4byte 0x0000464F
_08068D64:
	ldr r0, _08068D70 @ =0x00001C1F
	cmp r1, r0
	bls _08068D74
	movs r0, #1
	b _08068DCE
	.align 2, 0
_08068D70: .4byte 0x00001C1F
_08068D74:
	ldr r0, _08068D8C @ =0x00000E0F
	cmp r1, r0
	bls _08068D90
	movs r0, #0xe1
	lsls r0, r0, #5
	subs r0, r0, r1
	movs r1, #0x96
	lsls r1, r1, #2
	bl __udivsi3
	adds r0, #2
	b _08068DCA
	.align 2, 0
_08068D8C: .4byte 0x00000E0F
_08068D90:
	ldr r0, _08068DA8 @ =0x00000707
	cmp r1, r0
	bls _08068DAC
	movs r0, #0xe1
	lsls r0, r0, #4
	subs r0, r0, r1
	movs r1, #0x96
	lsls r1, r1, #1
	bl __udivsi3
	adds r0, #9
	b _08068DCA
	.align 2, 0
_08068DA8: .4byte 0x00000707
_08068DAC:
	ldr r0, _08068DB8 @ =0x000004AF
	cmp r1, r0
	bhi _08068DBC
	movs r0, #0x1e
	b _08068DCE
	.align 2, 0
_08068DB8: .4byte 0x000004AF
_08068DBC:
	movs r0, #0xe1
	lsls r0, r0, #3
	subs r0, r0, r1
	movs r1, #0x78
	bl __udivsi3
	adds r0, #0x10
_08068DCA:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
_08068DCE:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08068DD4
sub_08068DD4: @ 0x08068DD4
	push {lr}
	adds r1, r0, #0
	ldr r0, _08068DE4 @ =0x0000464F
	cmp r1, r0
	bls _08068DE8
	movs r0, #0
	b _08068E56
	.align 2, 0
_08068DE4: .4byte 0x0000464F
_08068DE8:
	ldr r0, _08068DF4 @ =0x00002A2F
	cmp r1, r0
	bls _08068DF8
	movs r0, #1
	b _08068E56
	.align 2, 0
_08068DF4: .4byte 0x00002A2F
_08068DF8:
	ldr r0, _08068E10 @ =0x00001C1F
	cmp r1, r0
	bls _08068E18
	ldr r0, _08068E14 @ =0x00002A30
	subs r0, r0, r1
	movs r1, #0x96
	lsls r1, r1, #2
	bl __udivsi3
	adds r0, #2
	b _08068E52
	.align 2, 0
_08068E10: .4byte 0x00001C1F
_08068E14: .4byte 0x00002A30
_08068E18:
	ldr r0, _08068E30 @ =0x00000E0F
	cmp r1, r0
	bls _08068E34
	movs r0, #0xe1
	lsls r0, r0, #5
	subs r0, r0, r1
	movs r1, #0x96
	lsls r1, r1, #1
	bl __udivsi3
	adds r0, #9
	b _08068E52
	.align 2, 0
_08068E30: .4byte 0x00000E0F
_08068E34:
	ldr r0, _08068E40 @ =0x0000095F
	cmp r1, r0
	bhi _08068E44
	movs r0, #0x28
	b _08068E56
	.align 2, 0
_08068E40: .4byte 0x0000095F
_08068E44:
	movs r0, #0xe1
	lsls r0, r0, #4
	subs r0, r0, r1
	movs r1, #0x78
	bl __udivsi3
	adds r0, #0x15
_08068E52:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
_08068E56:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08068E5C
sub_08068E5C: @ 0x08068E5C
	push {lr}
	adds r1, r0, #0
	cmp r1, #0xa
	bhi _08068E68
	movs r0, #0
	b _08068F10
_08068E68:
	ldr r0, _08068E7C @ =0x000007DA
	cmp r1, r0
	bhi _08068E80
	adds r0, r1, #0
	subs r0, #0xb
	movs r1, #0x64
	bl __udivsi3
	adds r0, #1
	b _08068F0C
	.align 2, 0
_08068E7C: .4byte 0x000007DA
_08068E80:
	ldr r0, _08068E94 @ =0x00000EE2
	cmp r1, r0
	bhi _08068E9C
	ldr r2, _08068E98 @ =0xFFFFF825
	adds r0, r1, r2
	movs r1, #0x5a
	bl __udivsi3
	adds r0, #0x15
	b _08068F0C
	.align 2, 0
_08068E94: .4byte 0x00000EE2
_08068E98: .4byte 0xFFFFF825
_08068E9C:
	ldr r0, _08068EB0 @ =0x00001522
	cmp r1, r0
	bhi _08068EB8
	ldr r2, _08068EB4 @ =0xFFFFF11D
	adds r0, r1, r2
	movs r1, #0x50
	bl __udivsi3
	adds r0, #0x29
	b _08068F0C
	.align 2, 0
_08068EB0: .4byte 0x00001522
_08068EB4: .4byte 0xFFFFF11D
_08068EB8:
	ldr r0, _08068ECC @ =0x00001A9A
	cmp r1, r0
	bhi _08068ED4
	ldr r2, _08068ED0 @ =0xFFFFEADD
	adds r0, r1, r2
	movs r1, #0x46
	bl __udivsi3
	adds r0, #0x3d
	b _08068F0C
	.align 2, 0
_08068ECC: .4byte 0x00001A9A
_08068ED0: .4byte 0xFFFFEADD
_08068ED4:
	ldr r0, _08068EE8 @ =0x00001F4A
	cmp r1, r0
	bhi _08068EF0
	ldr r2, _08068EEC @ =0xFFFFE565
	adds r0, r1, r2
	movs r1, #0x3c
	bl __udivsi3
	adds r0, #0x51
	b _08068F0C
	.align 2, 0
_08068EE8: .4byte 0x00001F4A
_08068EEC: .4byte 0xFFFFE565
_08068EF0:
	ldr r0, _08068EFC @ =0x00002332
	cmp r1, r0
	bls _08068F00
	movs r0, #0x96
	b _08068F10
	.align 2, 0
_08068EFC: .4byte 0x00002332
_08068F00:
	ldr r2, _08068F14 @ =0xFFFFE0B5
	adds r0, r1, r2
	movs r1, #0x32
	bl __udivsi3
	adds r0, #0x65
_08068F0C:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
_08068F10:
	pop {r1}
	bx r1
	.align 2, 0
_08068F14: .4byte 0xFFFFE0B5

	thumb_func_start sub_08068F18
sub_08068F18: @ 0x08068F18
	push {lr}
	adds r1, r0, #0
	cmp r1, #0xa
	bhi _08068F24
	movs r0, #0
	b _08068FB0
_08068F24:
	ldr r0, _08068F38 @ =0x000003F2
	cmp r1, r0
	bhi _08068F3C
	adds r0, r1, #0
	subs r0, #0xb
	movs r1, #0x32
	bl __udivsi3
	adds r0, #1
	b _08068FAC
	.align 2, 0
_08068F38: .4byte 0x000003F2
_08068F3C:
	ldr r0, _08068F50 @ =0x00000712
	cmp r1, r0
	bhi _08068F58
	ldr r2, _08068F54 @ =0xFFFFFC0D
	adds r0, r1, r2
	movs r1, #0x28
	bl __udivsi3
	adds r0, #0x15
	b _08068FAC
	.align 2, 0
_08068F50: .4byte 0x00000712
_08068F54: .4byte 0xFFFFFC0D
_08068F58:
	ldr r0, _08068F6C @ =0x0000096A
	cmp r1, r0
	bhi _08068F74
	ldr r2, _08068F70 @ =0xFFFFF8ED
	adds r0, r1, r2
	movs r1, #0x1e
	bl __udivsi3
	adds r0, #0x29
	b _08068FAC
	.align 2, 0
_08068F6C: .4byte 0x0000096A
_08068F70: .4byte 0xFFFFF8ED
_08068F74:
	ldr r0, _08068F88 @ =0x00000AFA
	cmp r1, r0
	bhi _08068F90
	ldr r2, _08068F8C @ =0xFFFFF695
	adds r0, r1, r2
	movs r1, #0x14
	bl __udivsi3
	adds r0, #0x3d
	b _08068FAC
	.align 2, 0
_08068F88: .4byte 0x00000AFA
_08068F8C: .4byte 0xFFFFF695
_08068F90:
	ldr r0, _08068F9C @ =0x00000BC2
	cmp r1, r0
	bls _08068FA0
	movs r0, #0x6e
	b _08068FB0
	.align 2, 0
_08068F9C: .4byte 0x00000BC2
_08068FA0:
	ldr r2, _08068FB4 @ =0xFFFFF505
	adds r0, r1, r2
	movs r1, #0xa
	bl __udivsi3
	adds r0, #0x51
_08068FAC:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
_08068FB0:
	pop {r1}
	bx r1
	.align 2, 0
_08068FB4: .4byte 0xFFFFF505

	thumb_func_start sub_08068FB8
sub_08068FB8: @ 0x08068FB8
	push {lr}
	adds r1, r0, #0
	ldr r0, _08068FC8 @ =0x0000464F
	cmp r1, r0
	bls _08068FCC
	movs r0, #0
	b _0806903A
	.align 2, 0
_08068FC8: .4byte 0x0000464F
_08068FCC:
	ldr r0, _08068FD8 @ =0x00002A2F
	cmp r1, r0
	bls _08068FDC
	movs r0, #1
	b _0806903A
	.align 2, 0
_08068FD8: .4byte 0x00002A2F
_08068FDC:
	ldr r0, _08068FF4 @ =0x00001C1F
	cmp r1, r0
	bls _08068FFC
	ldr r0, _08068FF8 @ =0x00002A30
	subs r0, r0, r1
	movs r1, #0x96
	lsls r1, r1, #2
	bl __udivsi3
	adds r0, #2
	b _08069036
	.align 2, 0
_08068FF4: .4byte 0x00001C1F
_08068FF8: .4byte 0x00002A30
_08068FFC:
	ldr r0, _08069014 @ =0x00000E0F
	cmp r1, r0
	bls _08069018
	movs r0, #0xe1
	lsls r0, r0, #5
	subs r0, r0, r1
	movs r1, #0x96
	lsls r1, r1, #1
	bl __udivsi3
	adds r0, #9
	b _08069036
	.align 2, 0
_08069014: .4byte 0x00000E0F
_08069018:
	ldr r0, _08069024 @ =0x0000095F
	cmp r1, r0
	bhi _08069028
	movs r0, #0x28
	b _0806903A
	.align 2, 0
_08069024: .4byte 0x0000095F
_08069028:
	movs r0, #0xe1
	lsls r0, r0, #4
	subs r0, r0, r1
	movs r1, #0x78
	bl __udivsi3
	adds r0, #0x15
_08069036:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
_0806903A:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08069040
sub_08069040: @ 0x08069040
	push {lr}
	adds r1, r0, #0
	cmp r1, #0x64
	bhi _0806904C
	movs r0, #0
	b _080690E0
_0806904C:
	ldr r0, _08069064 @ =0x00000A28
	cmp r1, r0
	bhi _08069068
	adds r0, r1, #0
	subs r0, #0x65
	movs r1, #0xfa
	lsls r1, r1, #1
	bl __udivsi3
	adds r0, #1
	b _080690DC
	.align 2, 0
_08069064: .4byte 0x00000A28
_08069068:
	ldr r0, _08069080 @ =0x00000ED8
	cmp r1, r0
	bhi _08069088
	ldr r2, _08069084 @ =0xFFFFF5D7
	adds r0, r1, r2
	movs r1, #0x96
	lsls r1, r1, #1
	bl __udivsi3
	adds r0, #6
	b _080690DC
	.align 2, 0
_08069080: .4byte 0x00000ED8
_08069084: .4byte 0xFFFFF5D7
_08069088:
	movs r0, #0x96
	lsls r0, r0, #5
	cmp r1, r0
	bhi _080690A4
	ldr r2, _080690A0 @ =0xFFFFF127
	adds r0, r1, r2
	movs r1, #0xc8
	bl __udivsi3
	adds r0, #0xb
	b _080690DC
	.align 2, 0
_080690A0: .4byte 0xFFFFF127
_080690A4:
	ldr r0, _080690B8 @ =0x000016A8
	cmp r1, r0
	bhi _080690C0
	ldr r2, _080690BC @ =0xFFFFED3F
	adds r0, r1, r2
	movs r1, #0x64
	bl __udivsi3
	adds r0, #0x10
	b _080690DC
	.align 2, 0
_080690B8: .4byte 0x000016A8
_080690BC: .4byte 0xFFFFED3F
_080690C0:
	ldr r0, _080690CC @ =0x0000189C
	cmp r1, r0
	bls _080690D0
	movs r0, #0x32
	b _080690E0
	.align 2, 0
_080690CC: .4byte 0x0000189C
_080690D0:
	ldr r2, _080690E4 @ =0xFFFFE957
	adds r0, r1, r2
	movs r1, #0x32
	bl __udivsi3
	adds r0, #0x1a
_080690DC:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
_080690E0:
	pop {r1}
	bx r1
	.align 2, 0
_080690E4: .4byte 0xFFFFE957

	thumb_func_start sub_080690E8
sub_080690E8: @ 0x080690E8
	push {lr}
	adds r1, r0, #0
	ldr r0, _080690F8 @ =0x000005DC
	cmp r1, r0
	bhi _080690FC
	movs r0, #0
	b _0806919C
	.align 2, 0
_080690F8: .4byte 0x000005DC
_080690FC:
	ldr r0, _08069114 @ =0x0000157C
	cmp r1, r0
	bhi _0806911C
	ldr r2, _08069118 @ =0xFFFFFA23
	adds r0, r1, r2
	movs r1, #0xfa
	lsls r1, r1, #2
	bl __udivsi3
	adds r0, #1
	b _08069198
	.align 2, 0
_08069114: .4byte 0x0000157C
_08069118: .4byte 0xFFFFFA23
_0806911C:
	ldr r0, _08069134 @ =0x0000251C
	cmp r1, r0
	bhi _0806913C
	ldr r2, _08069138 @ =0xFFFFEA83
	adds r0, r1, r2
	movs r1, #0xc8
	lsls r1, r1, #2
	bl __udivsi3
	adds r0, #6
	b _08069198
	.align 2, 0
_08069134: .4byte 0x0000251C
_08069138: .4byte 0xFFFFEA83
_0806913C:
	ldr r0, _08069154 @ =0x00002EE0
	cmp r1, r0
	bhi _0806915C
	ldr r2, _08069158 @ =0xFFFFDAE3
	adds r0, r1, r2
	movs r1, #0xfa
	lsls r1, r1, #1
	bl __udivsi3
	adds r0, #0xb
	b _08069198
	.align 2, 0
_08069154: .4byte 0x00002EE0
_08069158: .4byte 0xFFFFDAE3
_0806915C:
	ldr r0, _08069174 @ =0x00003A98
	cmp r1, r0
	bhi _0806917C
	ldr r2, _08069178 @ =0xFFFFD11F
	adds r0, r1, r2
	movs r1, #0x96
	lsls r1, r1, #1
	bl __udivsi3
	adds r0, #0x10
	b _08069198
	.align 2, 0
_08069174: .4byte 0x00003A98
_08069178: .4byte 0xFFFFD11F
_0806917C:
	ldr r0, _08069188 @ =0x00004268
	cmp r1, r0
	bls _0806918C
	movs r0, #0x32
	b _0806919C
	.align 2, 0
_08069188: .4byte 0x00004268
_0806918C:
	ldr r2, _080691A0 @ =0xFFFFC567
	adds r0, r1, r2
	movs r1, #0xc8
	bl __udivsi3
	adds r0, #0x1a
_08069198:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
_0806919C:
	pop {r1}
	bx r1
	.align 2, 0
_080691A0: .4byte 0xFFFFC567

	thumb_func_start sub_080691A4
sub_080691A4: @ 0x080691A4
	push {lr}
	cmp r0, #0
	bne _080691AE
	movs r0, #0
	b _080691FC
_080691AE:
	cmp r0, #0x28
	bhi _080691BC
	subs r0, #1
	lsrs r0, r0, #2
	adds r0, #1
	lsls r0, r0, #0x10
	b _080691FA
_080691BC:
	cmp r0, #0x46
	bhi _080691CE
	subs r0, #0x29
	movs r1, #3
	bl __udivsi3
	adds r0, #0xb
	lsls r0, r0, #0x10
	b _080691FA
_080691CE:
	cmp r0, #0x5a
	bhi _080691DC
	subs r0, #0x47
	lsrs r0, r0, #1
	adds r0, #0x15
	lsls r0, r0, #0x10
	b _080691FA
_080691DC:
	cmp r0, #0x64
	bhi _080691EC
	ldr r1, _080691E8 @ =0x0000FFC4
	adds r0, r0, r1
	lsls r0, r0, #0x10
	b _080691FA
	.align 2, 0
_080691E8: .4byte 0x0000FFC4
_080691EC:
	cmp r0, #0x6e
	bls _080691F4
	movs r0, #0x46
	b _080691FC
_080691F4:
	lsls r0, r0, #0x11
	ldr r1, _08069200 @ =0xFF600000
	adds r0, r0, r1
_080691FA:
	asrs r0, r0, #0x10
_080691FC:
	pop {r1}
	bx r1
	.align 2, 0
_08069200: .4byte 0xFF600000

	thumb_func_start sub_08069204
sub_08069204: @ 0x08069204
	push {lr}
	adds r1, r0, #0
	cmp r1, #0x64
	bhi _08069210
	movs r0, #0
	b _080692CE
_08069210:
	ldr r0, _08069224 @ =0x00007594
	cmp r1, r0
	bhi _0806922C
	adds r0, r1, #0
	subs r0, #0x65
	ldr r1, _08069228 @ =0x000005DC
	bl __udivsi3
	adds r0, #1
	b _080692CA
	.align 2, 0
_08069224: .4byte 0x00007594
_08069228: .4byte 0x000005DC
_0806922C:
	ldr r0, _08069244 @ =0x0000D354
	cmp r1, r0
	bhi _0806924C
	ldr r2, _08069248 @ =0xFFFF8A6B
	adds r0, r1, r2
	movs r1, #0x96
	lsls r1, r1, #3
	bl __udivsi3
	adds r0, #0x15
	b _080692CA
	.align 2, 0
_08069244: .4byte 0x0000D354
_08069248: .4byte 0xFFFF8A6B
_0806924C:
	ldr r0, _08069264 @ =0x00012174
	cmp r1, r0
	bhi _0806926C
	ldr r2, _08069268 @ =0xFFFF2CAB
	adds r0, r1, r2
	movs r1, #0xfa
	lsls r1, r1, #2
	bl __udivsi3
	adds r0, #0x29
	b _080692CA
	.align 2, 0
_08069264: .4byte 0x00012174
_08069268: .4byte 0xFFFF2CAB
_0806926C:
	ldr r0, _08069284 @ =0x000140B4
	cmp r1, r0
	bhi _0806928C
	ldr r2, _08069288 @ =0xFFFEDE8B
	adds r0, r1, r2
	movs r1, #0xc8
	lsls r1, r1, #2
	bl __udivsi3
	adds r0, #0x3d
	b _080692CA
	.align 2, 0
_08069284: .4byte 0x000140B4
_08069288: .4byte 0xFFFEDE8B
_0806928C:
	ldr r0, _080692A4 @ =0x0001543C
	cmp r1, r0
	bhi _080692AC
	ldr r2, _080692A8 @ =0xFFFEBF4B
	adds r0, r1, r2
	movs r1, #0xfa
	lsls r1, r1, #1
	bl __udivsi3
	adds r0, #0x47
	b _080692CA
	.align 2, 0
_080692A4: .4byte 0x0001543C
_080692A8: .4byte 0xFFFEBF4B
_080692AC:
	ldr r0, _080692B8 @ =0x00015FF4
	cmp r1, r0
	bls _080692BC
	movs r0, #0x64
	b _080692CE
	.align 2, 0
_080692B8: .4byte 0x00015FF4
_080692BC:
	ldr r2, _080692D4 @ =0xFFFEABC3
	adds r0, r1, r2
	movs r1, #0x96
	lsls r1, r1, #1
	bl __udivsi3
	adds r0, #0x51
_080692CA:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
_080692CE:
	pop {r1}
	bx r1
	.align 2, 0
_080692D4: .4byte 0xFFFEABC3

	thumb_func_start sub_080692D8
sub_080692D8: @ 0x080692D8
	push {lr}
	adds r1, r0, #0
	cmp r1, #0xfa
	bhi _080692E4
	movs r0, #0
	b _08069330
_080692E4:
	movs r0, #0xaf
	lsls r0, r0, #2
	cmp r1, r0
	bhi _080692FA
	adds r0, r1, #0
	subs r0, #0xfb
	movs r1, #0x32
	bl __udivsi3
	adds r0, #1
	b _0806932C
_080692FA:
	movs r0, #0xcd
	lsls r0, r0, #2
	cmp r1, r0
	bhi _08069314
	ldr r2, _08069310 @ =0xFFFFFD43
	adds r0, r1, r2
	movs r1, #0x14
	bl __udivsi3
	adds r0, #0xb
	b _0806932C
	.align 2, 0
_08069310: .4byte 0xFFFFFD43
_08069314:
	movs r0, #0xe6
	lsls r0, r0, #2
	cmp r1, r0
	bls _08069320
	movs r0, #0x23
	b _08069330
_08069320:
	ldr r2, _08069334 @ =0xFFFFFCCB
	adds r0, r1, r2
	movs r1, #0xa
	bl __udivsi3
	adds r0, #0x12
_0806932C:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
_08069330:
	pop {r1}
	bx r1
	.align 2, 0
_08069334: .4byte 0xFFFFFCCB

	thumb_func_start sub_08069338
sub_08069338: @ 0x08069338
	push {lr}
	adds r1, r0, #0
	cmp r1, #0
	bne _08069344
	movs r0, #0
	b _0806939A
_08069344:
	cmp r1, #0x64
	bhi _08069354
	subs r0, r1, #1
	movs r1, #5
	bl __udivsi3
	adds r0, #1
	b _08069396
_08069354:
	cmp r1, #0xb4
	bhi _08069362
	adds r0, r1, #0
	subs r0, #0x65
	lsrs r0, r0, #2
	adds r0, #0x15
	b _08069396
_08069362:
	cmp r1, #0xf0
	bhi _08069374
	adds r0, r1, #0
	subs r0, #0xb5
	movs r1, #3
	bl __udivsi3
	adds r0, #0x29
	b _08069396
_08069374:
	movs r0, #0x8c
	lsls r0, r0, #1
	cmp r1, r0
	bhi _08069386
	adds r0, r1, #0
	subs r0, #0xf1
	lsrs r0, r0, #1
	adds r0, #0x3d
	b _08069396
_08069386:
	movs r0, #0x96
	lsls r0, r0, #1
	cmp r1, r0
	bls _08069392
	movs r0, #0x6e
	b _0806939A
_08069392:
	ldr r2, _080693A0 @ =0x0000FF38
	adds r0, r1, r2
_08069396:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
_0806939A:
	pop {r1}
	bx r1
	.align 2, 0
_080693A0: .4byte 0x0000FF38

	thumb_func_start sub_080693A4
sub_080693A4: @ 0x080693A4
	push {lr}
	adds r2, r0, #0
	cmp r2, #0x64
	bhi _080693B0
	movs r0, #0
	b _0806946E
_080693B0:
	movs r1, #0xfa
	lsls r1, r1, #2
	cmp r2, r1
	bhi _080693BC
	movs r0, #1
	b _0806946E
_080693BC:
	ldr r0, _080693D4 @ =0x00002328
	cmp r2, r0
	bhi _080693DC
	ldr r1, _080693D8 @ =0xFFFFFC17
	adds r0, r2, r1
	movs r1, #0xfa
	lsls r1, r1, #3
	bl __udivsi3
	adds r0, #2
	b _0806944A
	.align 2, 0
_080693D4: .4byte 0x00002328
_080693D8: .4byte 0xFFFFFC17
_080693DC:
	ldr r0, _080693F4 @ =0x0000DEA8
	cmp r2, r0
	bhi _080693FC
	ldr r3, _080693F8 @ =0xFFFFDCD7
	adds r0, r2, r3
	movs r1, #0xfa
	lsls r1, r1, #4
	bl __udivsi3
	adds r0, #7
	b _0806944A
	.align 2, 0
_080693F4: .4byte 0x0000DEA8
_080693F8: .4byte 0xFFFFDCD7
_080693FC:
	ldr r0, _08069410 @ =0x000153D8
	cmp r2, r0
	bhi _0806941C
	ldr r1, _08069414 @ =0xFFFF2157
	adds r0, r2, r1
	ldr r1, _08069418 @ =0x000005DC
	bl __udivsi3
	adds r0, #0x12
	b _0806944A
	.align 2, 0
_08069410: .4byte 0x000153D8
_08069414: .4byte 0xFFFF2157
_08069418: .4byte 0x000005DC
_0806941C:
	ldr r0, _08069430 @ =0x000186A0
	cmp r2, r0
	bhi _08069438
	ldr r3, _08069434 @ =0xFFFEAC27
	adds r0, r2, r3
	bl __udivsi3
	adds r0, #0x26
	b _0806944A
	.align 2, 0
_08069430: .4byte 0x000186A0
_08069434: .4byte 0xFFFEAC27
_08069438:
	ldr r0, _08069450 @ =0x00030D40
	cmp r2, r0
	bhi _0806945C
	ldr r1, _08069454 @ =0xFFFE795F
	adds r0, r2, r1
	ldr r1, _08069458 @ =0x00001388
	bl __udivsi3
	adds r0, #0x34
_0806944A:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	b _0806946E
	.align 2, 0
_08069450: .4byte 0x00030D40
_08069454: .4byte 0xFFFE795F
_08069458: .4byte 0x00001388
_0806945C:
	ldr r0, _08069468 @ =0x000F423E
	cmp r2, r0
	bls _0806946C
	movs r0, #0xc8
	b _0806946E
	.align 2, 0
_08069468: .4byte 0x000F423E
_0806946C:
	movs r0, #0x64
_0806946E:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08069474
sub_08069474: @ 0x08069474
	push {lr}
	adds r1, r0, #0
	cmp r1, #0
	bne _08069480
	movs r0, #0
	b _080694D6
_08069480:
	cmp r1, #0x32
	bhi _08069490
	subs r0, r1, #1
	movs r1, #0xa
	bl __udivsi3
	adds r0, #1
	b _080694D2
_08069490:
	cmp r1, #0x64
	bhi _080694A2
	adds r0, r1, #0
	subs r0, #0x33
	movs r1, #5
	bl __udivsi3
	adds r0, #6
	b _080694D2
_080694A2:
	cmp r1, #0xbe
	bhi _080694B4
	adds r0, r1, #0
	subs r0, #0x65
	movs r1, #3
	bl __udivsi3
	adds r0, #0x10
	b _080694D2
_080694B4:
	cmp r1, #0xfa
	bhi _080694C2
	adds r0, r1, #0
	subs r0, #0xbf
	lsrs r0, r0, #1
	adds r0, #0x2e
	b _080694D2
_080694C2:
	movs r0, #0x87
	lsls r0, r0, #1
	cmp r1, r0
	bls _080694CE
	movs r0, #0x6e
	b _080694D6
_080694CE:
	ldr r2, _080694DC @ =0x0000FF51
	adds r0, r1, r2
_080694D2:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
_080694D6:
	pop {r1}
	bx r1
	.align 2, 0
_080694DC: .4byte 0x0000FF51

	thumb_func_start sub_080694E0
sub_080694E0: @ 0x080694E0
	push {lr}
	adds r1, r0, #0
	cmp r1, #0
	bne _080694EC
	movs r0, #0
	b _08069560
_080694EC:
	ldr r0, _08069500 @ =0x000009C4
	cmp r1, r0
	bhi _08069504
	subs r0, r1, #1
	movs r1, #0xfa
	lsls r1, r1, #1
	bl __udivsi3
	adds r0, #1
	b _0806955C
	.align 2, 0
_08069500: .4byte 0x000009C4
_08069504:
	ldr r0, _0806951C @ =0x0000157C
	cmp r1, r0
	bhi _08069524
	ldr r2, _08069520 @ =0xFFFFF63B
	adds r0, r1, r2
	movs r1, #0x96
	lsls r1, r1, #1
	bl __udivsi3
	adds r0, #6
	b _0806955C
	.align 2, 0
_0806951C: .4byte 0x0000157C
_08069520: .4byte 0xFFFFF63B
_08069524:
	ldr r0, _08069538 @ =0x0000251C
	cmp r1, r0
	bhi _08069540
	ldr r2, _0806953C @ =0xFFFFEA83
	adds r0, r1, r2
	movs r1, #0xc8
	bl __udivsi3
	adds r0, #0x10
	b _0806955C
	.align 2, 0
_08069538: .4byte 0x0000251C
_0806953C: .4byte 0xFFFFEA83
_08069540:
	ldr r0, _0806954C @ =0x00002710
	cmp r1, r0
	bls _08069550
	movs r0, #0x32
	b _08069560
	.align 2, 0
_0806954C: .4byte 0x00002710
_08069550:
	ldr r2, _08069564 @ =0xFFFFDAE3
	adds r0, r1, r2
	movs r1, #0x64
	bl __udivsi3
	adds r0, #0x24
_0806955C:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
_08069560:
	pop {r1}
	bx r1
	.align 2, 0
_08069564: .4byte 0xFFFFDAE3

	thumb_func_start sub_08069568
sub_08069568: @ 0x08069568
	push {lr}
	adds r2, r0, #0
	movs r1, #0xfa
	lsls r1, r1, #2
	cmp r2, r1
	bhi _08069578
	movs r0, #0
	b _08069630
_08069578:
	ldr r0, _08069590 @ =0x000061A8
	cmp r2, r0
	bhi _08069598
	ldr r1, _08069594 @ =0xFFFFFC17
	adds r0, r2, r1
	movs r1, #0x96
	lsls r1, r1, #3
	bl __udivsi3
	adds r0, #1
	b _0806962C
	.align 2, 0
_08069590: .4byte 0x000061A8
_08069594: .4byte 0xFFFFFC17
_08069598:
	ldr r0, _080695AC @ =0x0000AFC8
	cmp r2, r0
	bhi _080695B4
	ldr r3, _080695B0 @ =0xFFFF9E57
	adds r0, r2, r3
	bl __udivsi3
	adds r0, #0x15
	b _0806962C
	.align 2, 0
_080695AC: .4byte 0x0000AFC8
_080695B0: .4byte 0xFFFF9E57
_080695B4:
	ldr r0, _080695CC @ =0x0000EE48
	cmp r2, r0
	bhi _080695D4
	ldr r1, _080695D0 @ =0xFFFF5037
	adds r0, r2, r1
	movs r1, #0xc8
	lsls r1, r1, #2
	bl __udivsi3
	adds r0, #0x29
	b _0806962C
	.align 2, 0
_080695CC: .4byte 0x0000EE48
_080695D0: .4byte 0xFFFF5037
_080695D4:
	ldr r0, _080695EC @ =0x00011D28
	cmp r2, r0
	bhi _080695F4
	ldr r3, _080695F0 @ =0xFFFF11B7
	adds r0, r2, r3
	movs r1, #0x96
	lsls r1, r1, #2
	bl __udivsi3
	adds r0, #0x3d
	b _0806962C
	.align 2, 0
_080695EC: .4byte 0x00011D28
_080695F0: .4byte 0xFFFF11B7
_080695F4:
	ldr r0, _08069608 @ =0x00012CC8
	cmp r2, r0
	bhi _08069610
	ldr r1, _0806960C @ =0xFFFEE2D7
	adds r0, r2, r1
	movs r1, #0xc8
	bl __udivsi3
	adds r0, #0x51
	b _0806962C
	.align 2, 0
_08069608: .4byte 0x00012CC8
_0806960C: .4byte 0xFFFEE2D7
_08069610:
	ldr r0, _0806961C @ =0x000130B0
	cmp r2, r0
	bls _08069620
	movs r0, #0x96
	b _08069630
	.align 2, 0
_0806961C: .4byte 0x000130B0
_08069620:
	ldr r3, _08069634 @ =0xFFFED337
	adds r0, r2, r3
	movs r1, #0x64
	bl __udivsi3
	adds r0, #0x65
_0806962C:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
_08069630:
	pop {r1}
	bx r1
	.align 2, 0
_08069634: .4byte 0xFFFED337

	thumb_func_start sub_08069638
sub_08069638: @ 0x08069638
	push {lr}
	adds r1, r0, #0
	movs r0, #0xfa
	lsls r0, r0, #1
	cmp r1, r0
	bhi _08069648
	movs r0, #0
	b _08069668
_08069648:
	ldr r0, _08069654 @ =0x000F423E
	cmp r1, r0
	bls _08069658
	movs r0, #0x96
	b _08069668
	.align 2, 0
_08069654: .4byte 0x000F423E
_08069658:
	ldr r2, _0806966C @ =0xFFFFFE0B
	adds r0, r1, r2
	ldr r1, _08069670 @ =0x00002710
	bl __udivsi3
	adds r0, #1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
_08069668:
	pop {r1}
	bx r1
	.align 2, 0
_0806966C: .4byte 0xFFFFFE0B
_08069670: .4byte 0x00002710

	thumb_func_start sub_08069674
sub_08069674: @ 0x08069674
	push {lr}
	cmp r0, #0
	bne _0806967E
	movs r0, #0
	b _080696CE
_0806967E:
	cmp r0, #0x1e
	bhi _0806968E
	subs r0, #1
	movs r1, #3
	bl __udivsi3
	adds r0, #1
	b _080696CA
_0806968E:
	cmp r0, #0x32
	bhi _0806969A
	subs r0, #0x1f
	lsrs r0, r0, #1
	adds r0, #0xb
	b _080696CA
_0806969A:
	cmp r0, #0x3c
	bhi _080696A8
	ldr r1, _080696A4 @ =0x0000FFE2
	adds r0, r0, r1
	b _080696CA
	.align 2, 0
_080696A4: .4byte 0x0000FFE2
_080696A8:
	cmp r0, #0x46
	bhi _080696B8
	lsls r0, r0, #0x11
	ldr r1, _080696B4 @ =0xFFA60000
	adds r0, r0, r1
	b _080696CC
	.align 2, 0
_080696B4: .4byte 0xFFA60000
_080696B8:
	cmp r0, #0x50
	bls _080696C0
	movs r0, #0x64
	b _080696CE
_080696C0:
	adds r1, r0, #0
	subs r1, #0x47
	lsls r0, r1, #1
	adds r0, r0, r1
	adds r0, #0x35
_080696CA:
	lsls r0, r0, #0x10
_080696CC:
	asrs r0, r0, #0x10
_080696CE:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080696D4
sub_080696D4: @ 0x080696D4
	push {lr}
	adds r1, r0, #0
	cmp r1, #0
	bne _080696E0
	movs r0, #0
	b _080697B8
_080696E0:
	ldr r0, _080696F4 @ =0x00005DC0
	cmp r1, r0
	bhi _080696F8
	subs r0, r1, #1
	movs r1, #0xc8
	lsls r1, r1, #2
	bl __udivsi3
	adds r0, #1
	b _080697B4
	.align 2, 0
_080696F4: .4byte 0x00005DC0
_080696F8:
	ldr r0, _08069710 @ =0x0000AFC8
	cmp r1, r0
	bhi _08069718
	ldr r2, _08069714 @ =0xFFFFA23F
	adds r0, r1, r2
	movs r1, #0xaf
	lsls r1, r1, #2
	bl __udivsi3
	adds r0, #0x1f
	b _080697B4
	.align 2, 0
_08069710: .4byte 0x0000AFC8
_08069714: .4byte 0xFFFFA23F
_08069718:
	ldr r0, _08069730 @ =0x0000DEA8
	cmp r1, r0
	bhi _08069738
	ldr r2, _08069734 @ =0xFFFF5037
	adds r0, r1, r2
	movs r1, #0x96
	lsls r1, r1, #2
	bl __udivsi3
	adds r0, #0x3d
	b _080697B4
	.align 2, 0
_08069730: .4byte 0x0000DEA8
_08069734: .4byte 0xFFFF5037
_08069738:
	ldr r0, _08069750 @ =0x000105B8
	cmp r1, r0
	bhi _08069758
	ldr r2, _08069754 @ =0xFFFF2157
	adds r0, r1, r2
	movs r1, #0xfa
	lsls r1, r1, #1
	bl __udivsi3
	adds r0, #0x51
	b _080697B4
	.align 2, 0
_08069750: .4byte 0x000105B8
_08069754: .4byte 0xFFFF2157
_08069758:
	ldr r0, _08069770 @ =0x00011558
	cmp r1, r0
	bhi _08069778
	ldr r2, _08069774 @ =0xFFFEFA47
	adds r0, r1, r2
	movs r1, #0xc8
	lsls r1, r1, #1
	bl __udivsi3
	adds r0, #0x65
	b _080697B4
	.align 2, 0
_08069770: .4byte 0x00011558
_08069774: .4byte 0xFFFEFA47
_08069778:
	ldr r0, _08069790 @ =0x00012110
	cmp r1, r0
	bhi _08069798
	ldr r2, _08069794 @ =0xFFFEEAA7
	adds r0, r1, r2
	movs r1, #0x96
	lsls r1, r1, #1
	bl __udivsi3
	adds r0, #0x6f
	b _080697B4
	.align 2, 0
_08069790: .4byte 0x00012110
_08069794: .4byte 0xFFFEEAA7
_08069798:
	ldr r0, _080697A4 @ =0x000128E0
	cmp r1, r0
	bls _080697A8
	movs r0, #0x96
	b _080697B8
	.align 2, 0
_080697A4: .4byte 0x000128E0
_080697A8:
	ldr r2, _080697BC @ =0xFFFEDEEF
	adds r0, r1, r2
	movs r1, #0xc8
	bl __udivsi3
	adds r0, #0x79
_080697B4:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
_080697B8:
	pop {r1}
	bx r1
	.align 2, 0
_080697BC: .4byte 0xFFFEDEEF

	thumb_func_start sub_080697C0
sub_080697C0: @ 0x080697C0
	push {lr}
	adds r1, r0, #0
	cmp r1, #0
	bne _080697CC
	movs r0, #0
	b _080698A4
_080697CC:
	ldr r0, _080697E0 @ =0x00005DC0
	cmp r1, r0
	bhi _080697E4
	subs r0, r1, #1
	movs r1, #0xc8
	lsls r1, r1, #2
	bl __udivsi3
	adds r0, #1
	b _080698A0
	.align 2, 0
_080697E0: .4byte 0x00005DC0
_080697E4:
	ldr r0, _080697FC @ =0x0000AFC8
	cmp r1, r0
	bhi _08069804
	ldr r2, _08069800 @ =0xFFFFA23F
	adds r0, r1, r2
	movs r1, #0xaf
	lsls r1, r1, #2
	bl __udivsi3
	adds r0, #0x1f
	b _080698A0
	.align 2, 0
_080697FC: .4byte 0x0000AFC8
_08069800: .4byte 0xFFFFA23F
_08069804:
	ldr r0, _0806981C @ =0x0000DEA8
	cmp r1, r0
	bhi _08069824
	ldr r2, _08069820 @ =0xFFFF5037
	adds r0, r1, r2
	movs r1, #0x96
	lsls r1, r1, #2
	bl __udivsi3
	adds r0, #0x3d
	b _080698A0
	.align 2, 0
_0806981C: .4byte 0x0000DEA8
_08069820: .4byte 0xFFFF5037
_08069824:
	ldr r0, _0806983C @ =0x000105B8
	cmp r1, r0
	bhi _08069844
	ldr r2, _08069840 @ =0xFFFF2157
	adds r0, r1, r2
	movs r1, #0xfa
	lsls r1, r1, #1
	bl __udivsi3
	adds r0, #0x51
	b _080698A0
	.align 2, 0
_0806983C: .4byte 0x000105B8
_08069840: .4byte 0xFFFF2157
_08069844:
	ldr r0, _0806985C @ =0x00011558
	cmp r1, r0
	bhi _08069864
	ldr r2, _08069860 @ =0xFFFEFA47
	adds r0, r1, r2
	movs r1, #0xc8
	lsls r1, r1, #1
	bl __udivsi3
	adds r0, #0x65
	b _080698A0
	.align 2, 0
_0806985C: .4byte 0x00011558
_08069860: .4byte 0xFFFEFA47
_08069864:
	ldr r0, _0806987C @ =0x00012110
	cmp r1, r0
	bhi _08069884
	ldr r2, _08069880 @ =0xFFFEEAA7
	adds r0, r1, r2
	movs r1, #0x96
	lsls r1, r1, #1
	bl __udivsi3
	adds r0, #0x6f
	b _080698A0
	.align 2, 0
_0806987C: .4byte 0x00012110
_08069880: .4byte 0xFFFEEAA7
_08069884:
	ldr r0, _08069890 @ =0x000128E0
	cmp r1, r0
	bls _08069894
	movs r0, #0x96
	b _080698A4
	.align 2, 0
_08069890: .4byte 0x000128E0
_08069894:
	ldr r2, _080698A8 @ =0xFFFEDEEF
	adds r0, r1, r2
	movs r1, #0xc8
	bl __udivsi3
	adds r0, #0x79
_080698A0:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
_080698A4:
	pop {r1}
	bx r1
	.align 2, 0
_080698A8: .4byte 0xFFFEDEEF

	thumb_func_start sub_080698AC
sub_080698AC: @ 0x080698AC
	push {lr}
	adds r1, r0, #0
	ldr r0, _080698BC @ =0x00002A2F
	cmp r1, r0
	bls _080698C0
	movs r0, #0
	b _0806994C
	.align 2, 0
_080698BC: .4byte 0x00002A2F
_080698C0:
	ldr r0, _080698CC @ =0x00000E0F
	cmp r1, r0
	bls _080698D0
	movs r0, #1
	b _0806994C
	.align 2, 0
_080698CC: .4byte 0x00000E0F
_080698D0:
	ldr r0, _080698EC @ =0x0000095F
	cmp r1, r0
	bls _080698F0
	movs r0, #0xe1
	lsls r0, r0, #4
	subs r0, r0, r1
	movs r1, #0x96
	lsls r1, r1, #1
	bl __udivsi3
	adds r0, #2
	lsls r0, r0, #0x10
	b _0806994A
	.align 2, 0
_080698EC: .4byte 0x0000095F
_080698F0:
	ldr r0, _08069908 @ =0x00000707
	cmp r1, r0
	bls _0806990C
	movs r0, #0x96
	lsls r0, r0, #4
	subs r0, r0, r1
	movs r1, #0x78
	bl __udivsi3
	adds r0, #7
	lsls r0, r0, #0x10
	b _0806994A
	.align 2, 0
_08069908: .4byte 0x00000707
_0806990C:
	ldr r0, _08069924 @ =0x000005DB
	cmp r1, r0
	bls _08069928
	movs r0, #0xe1
	lsls r0, r0, #3
	subs r0, r0, r1
	movs r1, #0x3c
	bl __udivsi3
	adds r0, #0xd
	lsls r0, r0, #0x10
	b _0806994A
	.align 2, 0
_08069924: .4byte 0x000005DB
_08069928:
	ldr r0, _08069934 @ =0x000004AF
	cmp r1, r0
	bhi _08069938
	movs r0, #0x23
	b _0806994C
	.align 2, 0
_08069934: .4byte 0x000004AF
_08069938:
	ldr r0, _08069950 @ =0x000005DC
	subs r0, r0, r1
	movs r1, #0x3c
	bl __udivsi3
	lsls r0, r0, #0x11
	movs r1, #0xa0
	lsls r1, r1, #0xd
	adds r0, r0, r1
_0806994A:
	asrs r0, r0, #0x10
_0806994C:
	pop {r1}
	bx r1
	.align 2, 0
_08069950: .4byte 0x000005DC

	thumb_func_start sub_08069954
sub_08069954: @ 0x08069954
	push {lr}
	adds r1, r0, #0
	cmp r1, #0
	bne _08069960
	movs r0, #0
	b _08069A20
_08069960:
	movs r0, #0xfa
	lsls r0, r0, #2
	cmp r1, r0
	bhi _08069974
	subs r0, r1, #1
	movs r1, #0x32
	bl __udivsi3
	adds r0, #1
	b _08069A1C
_08069974:
	movs r0, #0xe1
	lsls r0, r0, #3
	cmp r1, r0
	bhi _08069990
	ldr r2, _0806998C @ =0xFFFFFC17
	adds r0, r1, r2
	movs r1, #0x50
	bl __udivsi3
	adds r0, #0x15
	b _08069A1C
	.align 2, 0
_0806998C: .4byte 0xFFFFFC17
_08069990:
	ldr r0, _080699A4 @ =0x000009C4
	cmp r1, r0
	bhi _080699AC
	ldr r2, _080699A8 @ =0xFFFFF8F7
	adds r0, r1, r2
	movs r1, #0x46
	bl __udivsi3
	adds r0, #0x1f
	b _08069A1C
	.align 2, 0
_080699A4: .4byte 0x000009C4
_080699A8: .4byte 0xFFFFF8F7
_080699AC:
	ldr r0, _080699C0 @ =0x00000C1C
	cmp r1, r0
	bhi _080699C8
	ldr r2, _080699C4 @ =0xFFFFF63B
	adds r0, r1, r2
	movs r1, #0x3c
	bl __udivsi3
	adds r0, #0x29
	b _08069A1C
	.align 2, 0
_080699C0: .4byte 0x00000C1C
_080699C4: .4byte 0xFFFFF63B
_080699C8:
	movs r0, #0xe1
	lsls r0, r0, #4
	cmp r1, r0
	bhi _080699E4
	ldr r2, _080699E0 @ =0xFFFFF3E3
	adds r0, r1, r2
	movs r1, #0x32
	bl __udivsi3
	adds r0, #0x33
	b _08069A1C
	.align 2, 0
_080699E0: .4byte 0xFFFFF3E3
_080699E4:
	movs r0, #0xfa
	lsls r0, r0, #4
	cmp r1, r0
	bhi _08069A00
	ldr r2, _080699FC @ =0xFFFFF1EF
	adds r0, r1, r2
	movs r1, #0x28
	bl __udivsi3
	adds r0, #0x3d
	b _08069A1C
	.align 2, 0
_080699FC: .4byte 0xFFFFF1EF
_08069A00:
	ldr r0, _08069A0C @ =0x000010CC
	cmp r1, r0
	bls _08069A10
	movs r0, #0x64
	b _08069A20
	.align 2, 0
_08069A0C: .4byte 0x000010CC
_08069A10:
	ldr r2, _08069A24 @ =0xFFFFF05F
	adds r0, r1, r2
	movs r1, #0x1e
	bl __udivsi3
	adds r0, #0x47
_08069A1C:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
_08069A20:
	pop {r1}
	bx r1
	.align 2, 0
_08069A24: .4byte 0xFFFFF05F

	thumb_func_start sub_08069A28
sub_08069A28: @ 0x08069A28
	push {lr}
	adds r1, r0, #0
	ldr r0, _08069A38 @ =0x0000464F
	cmp r1, r0
	bls _08069A3C
	movs r0, #0
	b _08069AEC
	.align 2, 0
_08069A38: .4byte 0x0000464F
_08069A3C:
	ldr r0, _08069A48 @ =0x00000E0F
	cmp r1, r0
	bls _08069A4C
	movs r0, #1
	b _08069AEC
	.align 2, 0
_08069A48: .4byte 0x00000E0F
_08069A4C:
	ldr r0, _08069A64 @ =0x0000095F
	cmp r1, r0
	bls _08069A68
	movs r0, #0xe1
	lsls r0, r0, #4
	subs r0, r0, r1
	movs r1, #0x96
	lsls r1, r1, #1
	bl __udivsi3
	adds r0, #2
	b _08069AE8
	.align 2, 0
_08069A64: .4byte 0x0000095F
_08069A68:
	ldr r0, _08069A80 @ =0x00000707
	cmp r1, r0
	bls _08069A84
	movs r0, #0x96
	lsls r0, r0, #4
	subs r0, r0, r1
	movs r1, #0x78
	bl __udivsi3
	adds r0, #7
	b _08069AE8
	.align 2, 0
_08069A80: .4byte 0x00000707
_08069A84:
	ldr r0, _08069A9C @ =0x000005DB
	cmp r1, r0
	bls _08069AA0
	movs r0, #0xe1
	lsls r0, r0, #3
	subs r0, r0, r1
	movs r1, #0x3c
	bl __udivsi3
	adds r0, #0xd
	b _08069AE8
	.align 2, 0
_08069A9C: .4byte 0x000005DB
_08069AA0:
	ldr r0, _08069ABC @ =0x000004AF
	cmp r1, r0
	bls _08069AC4
	ldr r0, _08069AC0 @ =0x000005DC
	subs r0, r0, r1
	movs r1, #0x3c
	bl __udivsi3
	lsls r0, r0, #0x11
	movs r1, #0xa0
	lsls r1, r1, #0xd
	adds r0, r0, r1
	b _08069AEA
	.align 2, 0
_08069ABC: .4byte 0x000004AF
_08069AC0: .4byte 0x000005DC
_08069AC4:
	ldr r0, _08069AD0 @ =0x00000383
	cmp r1, r0
	bhi _08069AD4
	movs r0, #0x37
	b _08069AEC
	.align 2, 0
_08069AD0: .4byte 0x00000383
_08069AD4:
	movs r0, #0x96
	lsls r0, r0, #3
	subs r0, r0, r1
	movs r1, #0x3c
	bl __udivsi3
	adds r1, r0, #0
	lsls r0, r1, #1
	adds r0, r0, r1
	adds r0, #0x21
_08069AE8:
	lsls r0, r0, #0x10
_08069AEA:
	asrs r0, r0, #0x10
_08069AEC:
	pop {r1}
	bx r1

	thumb_func_start sub_08069AF0
sub_08069AF0: @ 0x08069AF0
	push {lr}
	adds r1, r0, #0
	ldr r0, _08069B00 @ =0x0000464F
	cmp r1, r0
	bls _08069B04
	movs r0, #0
	b _08069BAE
	.align 2, 0
_08069B00: .4byte 0x0000464F
_08069B04:
	ldr r0, _08069B10 @ =0x00001C1F
	cmp r1, r0
	bls _08069B14
	movs r0, #1
	b _08069BAE
	.align 2, 0
_08069B10: .4byte 0x00001C1F
_08069B14:
	ldr r0, _08069B2C @ =0x0000176F
	cmp r1, r0
	bls _08069B30
	movs r0, #0xe1
	lsls r0, r0, #5
	subs r0, r0, r1
	movs r1, #0x96
	lsls r1, r1, #1
	bl __udivsi3
	adds r0, #2
	b _08069BAA
	.align 2, 0
_08069B2C: .4byte 0x0000176F
_08069B30:
	ldr r0, _08069B44 @ =0x00001517
	cmp r1, r0
	bls _08069B4C
	ldr r0, _08069B48 @ =0x00001770
	subs r0, r0, r1
	movs r1, #0x78
	bl __udivsi3
	adds r0, #7
	b _08069BAA
	.align 2, 0
_08069B44: .4byte 0x00001517
_08069B48: .4byte 0x00001770
_08069B4C:
	ldr r0, _08069B60 @ =0x000012BF
	cmp r1, r0
	bls _08069B68
	ldr r0, _08069B64 @ =0x00001518
	subs r0, r0, r1
	movs r1, #0x3c
	bl __udivsi3
	adds r0, #0xd
	b _08069BAA
	.align 2, 0
_08069B60: .4byte 0x000012BF
_08069B64: .4byte 0x00001518
_08069B68:
	ldr r0, _08069B84 @ =0x00001067
	cmp r1, r0
	bls _08069B88
	movs r0, #0x96
	lsls r0, r0, #5
	subs r0, r0, r1
	movs r1, #0x3c
	bl __udivsi3
	lsls r0, r0, #0x11
	movs r1, #0xc8
	lsls r1, r1, #0xd
	adds r0, r0, r1
	b _08069BAC
	.align 2, 0
_08069B84: .4byte 0x00001067
_08069B88:
	ldr r0, _08069B94 @ =0x00000E0F
	cmp r1, r0
	bhi _08069B98
	movs r0, #0x55
	b _08069BAE
	.align 2, 0
_08069B94: .4byte 0x00000E0F
_08069B98:
	ldr r0, _08069BB4 @ =0x00001068
	subs r0, r0, r1
	movs r1, #0x3c
	bl __udivsi3
	adds r1, r0, #0
	lsls r0, r1, #1
	adds r0, r0, r1
	adds r0, #0x30
_08069BAA:
	lsls r0, r0, #0x10
_08069BAC:
	asrs r0, r0, #0x10
_08069BAE:
	pop {r1}
	bx r1
	.align 2, 0
_08069BB4: .4byte 0x00001068

	thumb_func_start sub_08069BB8
sub_08069BB8: @ 0x08069BB8
	push {lr}
	adds r1, r0, #0
	cmp r1, #0
	bne _08069BC4
	movs r0, #0
	b _08069C5C
_08069BC4:
	ldr r0, _08069BD8 @ =0x00001770
	cmp r1, r0
	bhi _08069BDC
	subs r0, r1, #1
	movs r1, #0x96
	lsls r1, r1, #2
	bl __udivsi3
	adds r0, #1
	b _08069C58
	.align 2, 0
_08069BD8: .4byte 0x00001770
_08069BDC:
	ldr r0, _08069BF4 @ =0x00002AF8
	cmp r1, r0
	bhi _08069BFC
	ldr r2, _08069BF8 @ =0xFFFFE88F
	adds r0, r1, r2
	movs r1, #0xfa
	lsls r1, r1, #1
	bl __udivsi3
	adds r0, #0xb
	b _08069C58
	.align 2, 0
_08069BF4: .4byte 0x00002AF8
_08069BF8: .4byte 0xFFFFE88F
_08069BFC:
	ldr r0, _08069C14 @ =0x00003A98
	cmp r1, r0
	bhi _08069C1C
	ldr r2, _08069C18 @ =0xFFFFD507
	adds r0, r1, r2
	movs r1, #0xc8
	lsls r1, r1, #1
	bl __udivsi3
	adds r0, #0x15
	b _08069C58
	.align 2, 0
_08069C14: .4byte 0x00003A98
_08069C18: .4byte 0xFFFFD507
_08069C1C:
	ldr r0, _08069C34 @ =0x00004650
	cmp r1, r0
	bhi _08069C3C
	ldr r2, _08069C38 @ =0xFFFFC567
	adds r0, r1, r2
	movs r1, #0x96
	lsls r1, r1, #1
	bl __udivsi3
	adds r0, #0x1f
	b _08069C58
	.align 2, 0
_08069C34: .4byte 0x00004650
_08069C38: .4byte 0xFFFFC567
_08069C3C:
	ldr r0, _08069C48 @ =0x00004E20
	cmp r1, r0
	bls _08069C4C
	movs r0, #0x46
	b _08069C5C
	.align 2, 0
_08069C48: .4byte 0x00004E20
_08069C4C:
	ldr r2, _08069C60 @ =0xFFFFB9AF
	adds r0, r1, r2
	movs r1, #0xc8
	bl __udivsi3
	adds r0, #0x29
_08069C58:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
_08069C5C:
	pop {r1}
	bx r1
	.align 2, 0
_08069C60: .4byte 0xFFFFB9AF

	thumb_func_start sub_08069C64
sub_08069C64: @ 0x08069C64
	push {lr}
	adds r1, r0, #0
	ldr r0, _08069C74 @ =0x00002A2F
	cmp r1, r0
	bls _08069C78
	movs r0, #0
	b _08069D04
	.align 2, 0
_08069C74: .4byte 0x00002A2F
_08069C78:
	ldr r0, _08069C84 @ =0x00000E0F
	cmp r1, r0
	bls _08069C88
	movs r0, #1
	b _08069D04
	.align 2, 0
_08069C84: .4byte 0x00000E0F
_08069C88:
	ldr r0, _08069CA4 @ =0x0000095F
	cmp r1, r0
	bls _08069CA8
	movs r0, #0xe1
	lsls r0, r0, #4
	subs r0, r0, r1
	movs r1, #0x96
	lsls r1, r1, #1
	bl __udivsi3
	adds r0, #2
	lsls r0, r0, #0x10
	b _08069D02
	.align 2, 0
_08069CA4: .4byte 0x0000095F
_08069CA8:
	ldr r0, _08069CC0 @ =0x00000707
	cmp r1, r0
	bls _08069CC4
	movs r0, #0x96
	lsls r0, r0, #4
	subs r0, r0, r1
	movs r1, #0x78
	bl __udivsi3
	adds r0, #7
	lsls r0, r0, #0x10
	b _08069D02
	.align 2, 0
_08069CC0: .4byte 0x00000707
_08069CC4:
	ldr r0, _08069CDC @ =0x000005DB
	cmp r1, r0
	bls _08069CE0
	movs r0, #0xe1
	lsls r0, r0, #3
	subs r0, r0, r1
	movs r1, #0x3c
	bl __udivsi3
	adds r0, #0xd
	lsls r0, r0, #0x10
	b _08069D02
	.align 2, 0
_08069CDC: .4byte 0x000005DB
_08069CE0:
	ldr r0, _08069CEC @ =0x000004AF
	cmp r1, r0
	bhi _08069CF0
	movs r0, #0x23
	b _08069D04
	.align 2, 0
_08069CEC: .4byte 0x000004AF
_08069CF0:
	ldr r0, _08069D08 @ =0x000005DC
	subs r0, r0, r1
	movs r1, #0x3c
	bl __udivsi3
	lsls r0, r0, #0x11
	movs r1, #0xa0
	lsls r1, r1, #0xd
	adds r0, r0, r1
_08069D02:
	asrs r0, r0, #0x10
_08069D04:
	pop {r1}
	bx r1
	.align 2, 0
_08069D08: .4byte 0x000005DC

	thumb_func_start sub_08069D0C
sub_08069D0C: @ 0x08069D0C
	push {lr}
	adds r1, r0, #0
	ldr r0, _08069D1C @ =0x0000464F
	cmp r1, r0
	bls _08069D20
	movs r0, #0
	b _08069D8E
	.align 2, 0
_08069D1C: .4byte 0x0000464F
_08069D20:
	ldr r0, _08069D2C @ =0x00002A2F
	cmp r1, r0
	bls _08069D30
	movs r0, #1
	b _08069D8E
	.align 2, 0
_08069D2C: .4byte 0x00002A2F
_08069D30:
	ldr r0, _08069D48 @ =0x00001C1F
	cmp r1, r0
	bls _08069D50
	ldr r0, _08069D4C @ =0x00002A30
	subs r0, r0, r1
	movs r1, #0x96
	lsls r1, r1, #2
	bl __udivsi3
	adds r0, #2
	b _08069D8A
	.align 2, 0
_08069D48: .4byte 0x00001C1F
_08069D4C: .4byte 0x00002A30
_08069D50:
	ldr r0, _08069D68 @ =0x00000E0F
	cmp r1, r0
	bls _08069D6C
	movs r0, #0xe1
	lsls r0, r0, #5
	subs r0, r0, r1
	movs r1, #0x96
	lsls r1, r1, #1
	bl __udivsi3
	adds r0, #9
	b _08069D8A
	.align 2, 0
_08069D68: .4byte 0x00000E0F
_08069D6C:
	ldr r0, _08069D78 @ =0x0000095F
	cmp r1, r0
	bhi _08069D7C
	movs r0, #0x28
	b _08069D8E
	.align 2, 0
_08069D78: .4byte 0x0000095F
_08069D7C:
	movs r0, #0xe1
	lsls r0, r0, #4
	subs r0, r0, r1
	movs r1, #0x78
	bl __udivsi3
	adds r0, #0x15
_08069D8A:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
_08069D8E:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08069D94
sub_08069D94: @ 0x08069D94
	push {lr}
	adds r1, r0, #0
	ldr r0, _08069DA4 @ =0x00000834
	cmp r1, r0
	bhi _08069DA8
	movs r0, #0
	b _08069E4A
	.align 2, 0
_08069DA4: .4byte 0x00000834
_08069DA8:
	ldr r0, _08069DC0 @ =0x000046B4
	cmp r1, r0
	bhi _08069DC8
	ldr r2, _08069DC4 @ =0xFFFFF7CB
	adds r0, r1, r2
	movs r1, #0xc8
	lsls r1, r1, #2
	bl __udivsi3
	adds r0, #1
	b _08069E46
	.align 2, 0
_08069DC0: .4byte 0x000046B4
_08069DC4: .4byte 0xFFFFF7CB
_08069DC8:
	ldr r0, _08069DE0 @ =0x00007D64
	cmp r1, r0
	bhi _08069DE8
	ldr r2, _08069DE4 @ =0xFFFFB94B
	adds r0, r1, r2
	movs r1, #0xaf
	lsls r1, r1, #2
	bl __udivsi3
	adds r0, #0x15
	b _08069E46
	.align 2, 0
_08069DE0: .4byte 0x00007D64
_08069DE4: .4byte 0xFFFFB94B
_08069DE8:
	ldr r0, _08069E00 @ =0x0000AC44
	cmp r1, r0
	bhi _08069E08
	ldr r2, _08069E04 @ =0xFFFF829B
	adds r0, r1, r2
	movs r1, #0x96
	lsls r1, r1, #2
	bl __udivsi3
	adds r0, #0x29
	b _08069E46
	.align 2, 0
_08069E00: .4byte 0x0000AC44
_08069E04: .4byte 0xFFFF829B
_08069E08:
	ldr r0, _08069E20 @ =0x0000D354
	cmp r1, r0
	bhi _08069E28
	ldr r2, _08069E24 @ =0xFFFF53BB
	adds r0, r1, r2
	movs r1, #0xfa
	lsls r1, r1, #1
	bl __udivsi3
	adds r0, #0x3d
	b _08069E46
	.align 2, 0
_08069E20: .4byte 0x0000D354
_08069E24: .4byte 0xFFFF53BB
_08069E28:
	ldr r0, _08069E34 @ =0x0000E2F4
	cmp r1, r0
	bls _08069E38
	movs r0, #0x6e
	b _08069E4A
	.align 2, 0
_08069E34: .4byte 0x0000E2F4
_08069E38:
	ldr r2, _08069E50 @ =0xFFFF2CAB
	adds r0, r1, r2
	movs r1, #0xc8
	lsls r1, r1, #1
	bl __udivsi3
	adds r0, #0x51
_08069E46:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
_08069E4A:
	pop {r1}
	bx r1
	.align 2, 0
_08069E50: .4byte 0xFFFF2CAB

	thumb_func_start sub_08069E54
sub_08069E54: @ 0x08069E54
	push {lr}
	lsls r0, r0, #0x18
	ldr r2, _08069E74 @ =0x08090318
	lsrs r0, r0, #0x16
	ldr r3, _08069E78 @ =0xFFFFFEF0
	adds r0, r0, r3
	adds r0, r0, r2
	ldr r2, [r0]
	adds r0, r1, #0
	bl _call_via_r2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	pop {r1}
	bx r1
	.align 2, 0
_08069E74: .4byte 0x08090318
_08069E78: .4byte 0xFFFFFEF0

	thumb_func_start sub_08069E7C
sub_08069E7C: @ 0x08069E7C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sl, r0
	movs r1, #0
_08069E8A:
	movs r7, #0
	lsls r0, r1, #2
	lsls r2, r1, #1
	mov r8, r2
	adds r2, r1, #1
	mov sb, r2
	adds r0, r0, r1
	lsls r0, r0, #1
	ldr r1, _08069EE8 @ =0x08090394
	adds r5, r0, r1
	movs r6, #9
_08069EA0:
	ldrb r4, [r5]
	adds r0, r4, #0
	bl sub_08001A00
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08069EC6
	adds r0, r4, #0
	bl sub_08001B28
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_08069E54
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
_08069EC6:
	adds r5, #1
	subs r6, #1
	cmp r6, #0
	bge _08069EA0
	mov r0, r8
	add r0, sl
	strh r7, [r0]
	mov r1, sb
	cmp r1, #2
	ble _08069E8A
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08069EE8: .4byte 0x08090394
