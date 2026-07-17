	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .text
	.ARM
	.syntax unified

	thumb_func_start sub_080605B4
sub_080605B4: @ 0x080605B4
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	sub sp, #4
	movs r4, #0
	str r4, [sp]
	movs r6, #0xc0
	lsls r6, r6, #0x13
	ldr r2, _080606A0 @ =0x01006000
	mov r0, sp
	adds r1, r6, #0
	bl CpuFastSet
	ldr r5, _080606A4 @ =0x030024E0
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r5]
	movs r0, #0x80
	lsls r0, r0, #5
	strh r0, [r5, #2]
	strh r4, [r5, #0xa]
	strh r4, [r5, #0x12]
	ldr r0, _080606A8 @ =0x0811DE50
	movs r1, #0xa0
	lsls r1, r1, #0x13
	mov sl, r1
	bl LoadPalette_08008308
	ldr r0, _080606AC @ =0x0811DFE8
	adds r1, r6, #0
	bl DecompressData_08008374
	ldr r0, _080606B0 @ =0x0811DE98
	ldr r1, _080606B4 @ =0x06008000
	mov sb, r1
	movs r2, #0
	movs r3, #0
	bl LoadTileMap_080083CC
	ldr r4, _080606B8 @ =0x00007FFF
	movs r0, #0x1e
	adds r1, r4, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl FadeIn_08008AF4
	adds r5, #0x4f
	movs r0, #1
	mov r8, r0
	mov r1, r8
	strb r1, [r5]
	bl sub_08008D34
	movs r0, #0x3c
	bl ProcSleep_08002B98
	movs r0, #0x1e
	adds r1, r4, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl FadeOut_080089E8
	bl sub_08008D34
	ldr r0, _080606BC @ =0x0811E42C
	mov r1, sl
	bl LoadPalette_08008308
	ldr r0, _080606C0 @ =0x0811E60C
	adds r1, r6, #0
	bl DecompressData_08008374
	ldr r0, _080606C4 @ =0x0811E470
	mov r1, sb
	movs r2, #0
	movs r3, #0
	bl LoadTileMap_080083CC
	movs r0, #0x1e
	adds r1, r4, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl FadeIn_08008AF4
	mov r0, r8
	strb r0, [r5]
	bl sub_08008D34
	movs r0, #0x3c
	bl ProcSleep_08002B98
	movs r0, #0x1e
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl FadeOut_080089E8
	bl sub_08008D34
	movs r0, #0x13
	bl sub_080072F4
	movs r0, #0x22
	bl ChangeGameState_08008790
	bl sub_08002B0C
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080606A0: .4byte 0x01006000
_080606A4: .4byte 0x030024E0
_080606A8: .4byte 0x0811DE50
_080606AC: .4byte 0x0811DFE8
_080606B0: .4byte 0x0811DE98
_080606B4: .4byte 0x06008000
_080606B8: .4byte 0x00007FFF
_080606BC: .4byte 0x0811E42C
_080606C0: .4byte 0x0811E60C
_080606C4: .4byte 0x0811E470
