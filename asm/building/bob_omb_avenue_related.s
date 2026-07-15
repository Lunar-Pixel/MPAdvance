	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .text
	.ARM
	.syntax unified

	thumb_func_start sub_080425A4
sub_080425A4: @ 0x080425A4
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	ldr r7, _080425E0 @ =0x020335D0
	ldr r0, [r7, #0x14]
	cmp r0, #0
	beq _080425BA
	bl sub_080425EC
_080425BA:
	ldr r5, _080425E4 @ =0x081969AC
	cmp r6, #0
	bne _080425C2
	ldr r5, _080425E8 @ =0x08196144
_080425C2:
	movs r0, #0xf
	ands r4, r0
	lsls r1, r4, #4
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r2, #0
	orrs r1, r0
	adds r0, r5, #0
	bl sub_08009554
	str r5, [r7, #0x14]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080425E0: .4byte 0x020335D0
_080425E4: .4byte 0x081969AC
_080425E8: .4byte 0x08196144

	thumb_func_start sub_080425EC
sub_080425EC: @ 0x080425EC
	push {r4, lr}
	ldr r4, _08042604 @ =0x020335D0
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _080425FE
	bl sub_080095E0
	movs r0, #0
	str r0, [r4, #0x14]
_080425FE:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08042604: .4byte 0x020335D0
