	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"
	.INCLUDE "m4a_constants.inc"

	.SECTION .text
	.ARM
	.syntax unified

	@ libagbsyscall.s

	thumb_func_start CpuFastSet
CpuFastSet: @ 0x08070B30
	svc #0xc
	bx lr

	thumb_func_start CpuSet
CpuSet: @ 0x08070B34
	svc #0xb
	bx lr

	thumb_func_start Diff16bitUnFilter
Diff16bitUnFilter: @ 0x08070B38
	svc #0x18
	bx lr

	thumb_func_start Diff8bitUnFilterWrite8bit
Diff8bitUnFilterWrite8bit: @ 0x08070B3C
	svc #0x16
	bx lr

	thumb_func_start Div
Div: @ 0x08070B40
	svc #6
	bx lr

	thumb_func_start Mod
Mod: @ 0x08070B44
	svc #6
	adds r0, r1, #0
	bx lr
	.align 2, 0

	thumb_func_start HuffUnCompReadNormal
HuffUnCompReadNormal: @ 0x08070B4C
	svc #0x13
	bx lr

	thumb_func_start IntrWait
IntrWait: @ 0x08070B50
	movs r2, #0
	svc #4
	bx lr
	.align 2, 0

	thumb_func_start LZ77UnCompReadNormalWrite16bit
LZ77UnCompReadNormalWrite16bit: @ 0x08070B58
	svc #0x12
	bx lr

	thumb_func_start LZ77UnCompReadNormalWrite8bit
LZ77UnCompReadNormalWrite8bit: @ 0x08070B5C
	svc #0x11
	bx lr

	thumb_func_start MultiBoot
MultiBoot: @ 0x08070B60
	movs r1, #1
	svc #0x25
	bx lr
	.align 2, 0

	thumb_func_start HuffUnCompReadByCallback
HuffUnCompReadByCallback: @ 0x08070B68
	svc #0x14
	bx lr

	thumb_func_start RegisterRamReset
RegisterRamReset: @ 0x08070B6C
	svc #1
	bx lr

	thumb_func_start SoftReset
SoftReset: @ 0x08070B70
	ldr r3, _08070B80 @ =0x04000208
	movs r2, #0
	strb r2, [r3]
	ldr r1, _08070B84 @ =0x03007F00
	mov sp, r1
	svc #1
	svc #0
	movs r0, r0
	.align 2, 0
_08070B80: .4byte 0x04000208
_08070B84: .4byte 0x03007F00

	thumb_func_start Sqrt
Sqrt: @ 0x08070B88
	svc #8
	bx lr

	thumb_func_start VBlankIntrWait
VBlankIntrWait: @ 0x08070B8C
	movs r2, #0
	svc #5
	bx lr
	.align 2, 0

	@ eeprom.c

	thumb_func_start EEPROMConfigure
EEPROMConfigure: @ 0x08070B94
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r2, #0
	cmp r0, #4
	bne _08070BB0
	ldr r1, _08070BA8 @ =0x03005840
	ldr r0, _08070BAC @ =0x082AB7C4
	str r0, [r1]
	b _08070BCC
	.align 2, 0
_08070BA8: .4byte 0x03005840
_08070BAC: .4byte 0x082AB7C4
_08070BB0:
	cmp r0, #0x40
	bne _08070BC4
	ldr r1, _08070BBC @ =0x03005840
	ldr r0, _08070BC0 @ =0x082AB7D0
	str r0, [r1]
	b _08070BCC
	.align 2, 0
_08070BBC: .4byte 0x03005840
_08070BC0: .4byte 0x082AB7D0
_08070BC4:
	ldr r1, _08070BD4 @ =0x03005840
	ldr r0, _08070BD8 @ =0x082AB7C4
	str r0, [r1]
	movs r2, #1
_08070BCC:
	adds r0, r2, #0
	pop {r1}
	bx r1
	.align 2, 0
_08070BD4: .4byte 0x03005840
_08070BD8: .4byte 0x082AB7C4

	thumb_func_start DMA3Transfer
DMA3Transfer: @ 0x08070BDC
	push {r4, r5, r6, lr}
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldr r4, _08070C3C @ =0x04000208
	ldrh r3, [r4]
	adds r6, r3, #0
	movs r3, #0
	strh r3, [r4]
	ldr r5, _08070C40 @ =0x04000204
	ldrh r4, [r5]
	ldr r3, _08070C44 @ =0x0000F8FF
	ands r4, r3
	ldr r3, _08070C48 @ =0x03005840
	ldr r3, [r3]
	ldrh r3, [r3, #6]
	orrs r4, r3
	strh r4, [r5]
	ldr r3, _08070C4C @ =0x040000D4
	str r0, [r3]
	ldr r0, _08070C50 @ =0x040000D8
	str r1, [r0]
	ldr r1, _08070C54 @ =0x040000DC
	movs r0, #0x80
	lsls r0, r0, #0x18
	orrs r2, r0
	str r2, [r1]
	adds r1, #2
	movs r2, #0x80
	lsls r2, r2, #8
	adds r0, r2, #0
	ldrh r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _08070C30
	ldr r2, _08070C58 @ =0x040000DE
	movs r0, #0x80
	lsls r0, r0, #8
	adds r1, r0, #0
_08070C28:
	ldrh r0, [r2]
	ands r0, r1
	cmp r0, #0
	bne _08070C28
_08070C30:
	ldr r0, _08070C3C @ =0x04000208
	strh r6, [r0]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08070C3C: .4byte 0x04000208
_08070C40: .4byte 0x04000204
_08070C44: .4byte 0x0000F8FF
_08070C48: .4byte 0x03005840
_08070C4C: .4byte 0x040000D4
_08070C50: .4byte 0x040000D8
_08070C54: .4byte 0x040000DC
_08070C58: .4byte 0x040000DE

	thumb_func_start EEPROMRead
EEPROMRead: @ 0x08070C5C
	push {r4, r5, r6, lr}
	sub sp, #0x88
	adds r5, r1, #0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r0, _08070C74 @ =0x03005840
	ldr r0, [r0]
	ldrh r0, [r0, #4]
	cmp r3, r0
	blo _08070C7C
	ldr r0, _08070C78 @ =0x000080FF
	b _08070CFE
	.align 2, 0
_08070C74: .4byte 0x03005840
_08070C78: .4byte 0x000080FF
_08070C7C:
	ldr r0, _08070D08 @ =0x03005840
	adds r6, r0, #0
	ldr r0, [r0]
	ldrb r1, [r0, #8]
	lsls r0, r1, #1
	mov r4, sp
	adds r2, r0, r4
	adds r2, #2
	movs r4, #0
	cmp r4, r1
	bhs _08070CA6
_08070C92:
	strh r3, [r2]
	subs r2, #2
	lsrs r3, r3, #1
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r0, [r6]
	ldrb r0, [r0, #8]
	cmp r4, r0
	blo _08070C92
_08070CA6:
	movs r0, #1
	strh r0, [r2]
	subs r2, #2
	strh r0, [r2]
	movs r4, #0xd0
	lsls r4, r4, #0x14
	ldr r0, _08070D08 @ =0x03005840
	ldr r0, [r0]
	ldrb r2, [r0, #8]
	adds r2, #3
	mov r0, sp
	adds r1, r4, #0
	bl DMA3Transfer
	adds r0, r4, #0
	mov r1, sp
	movs r2, #0x44
	bl DMA3Transfer
	add r2, sp, #8
	adds r5, #6
	movs r4, #0
	movs r6, #1
_08070CD4:
	movs r1, #0
	movs r3, #0
_08070CD8:
	lsls r1, r1, #0x11
	ldrh r0, [r2]
	ands r0, r6
	lsrs r1, r1, #0x10
	orrs r1, r0
	adds r2, #2
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0xf
	bls _08070CD8
	strh r1, [r5]
	subs r5, #2
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _08070CD4
	movs r0, #0
_08070CFE:
	add sp, #0x88
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08070D08: .4byte 0x03005840

	thumb_func_start EEPROMWrite1
EEPROMWrite1: @ 0x08070D0C
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r2, #1
	bl EEPROMWrite
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	pop {r1}
	bx r1

	thumb_func_start EEPROMWrite
EEPROMWrite: @ 0x08070D20
	push {r4, r5, r6, r7, lr}
	sub sp, #0xb0
	adds r5, r1, #0
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	lsls r2, r2, #0x18
	lsrs r7, r2, #0x18
	ldr r0, _08070D3C @ =0x03005840
	ldr r0, [r0]
	ldrh r0, [r0, #4]
	cmp r1, r0
	blo _08070D44
	ldr r0, _08070D40 @ =0x000080FF
	b _08070E78
	.align 2, 0
_08070D3C: .4byte 0x03005840
_08070D40: .4byte 0x000080FF
_08070D44:
	ldr r0, _08070D84 @ =0x03005840
	ldr r0, [r0]
	ldrb r0, [r0, #8]
	lsls r0, r0, #1
	mov r2, sp
	adds r3, r0, r2
	adds r3, #0x84
	movs r0, #0
	strh r0, [r3]
	subs r3, #2
	movs r4, #0
_08070D5A:
	ldrh r2, [r5]
	adds r5, #2
	movs r0, #0
_08070D60:
	strh r2, [r3]
	subs r3, #2
	lsrs r2, r2, #1
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xf
	bls _08070D60
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _08070D5A
	movs r4, #0
	ldr r0, _08070D84 @ =0x03005840
	adds r2, r0, #0
	ldr r0, [r0]
	b _08070D96
	.align 2, 0
_08070D84: .4byte 0x03005840
_08070D88:
	strh r1, [r3]
	subs r3, #2
	lsrs r1, r1, #1
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r0, [r2]
_08070D96:
	ldrb r0, [r0, #8]
	cmp r4, r0
	blo _08070D88
	movs r0, #0
	strh r0, [r3]
	subs r3, #2
	movs r6, #1
	strh r6, [r3]
	movs r4, #0xd0
	lsls r4, r4, #0x14
	ldr r0, _08070E08 @ =0x03005840
	ldr r0, [r0]
	ldrb r2, [r0, #8]
	adds r2, #0x43
	mov r0, sp
	adds r1, r4, #0
	bl DMA3Transfer
	movs r5, #0
	add r2, sp, #0xa4
	strh r5, [r2]
	mov r1, sp
	adds r1, #0xa6
	ldr r0, _08070E0C @ =0x04000006
	ldrh r0, [r0]
	strh r0, [r1]
	add r0, sp, #0xac
	str r5, [r0]
	ldrh r0, [r2]
	cmp r0, #0
	bne _08070DDC
	ldrh r0, [r4]
	ands r0, r6
	cmp r0, #0
	bne _08070E6C
_08070DDC:
	add r3, sp, #0xa8
	ldr r0, _08070E0C @ =0x04000006
	ldrh r0, [r0]
	strh r0, [r3]
	mov r4, sp
	adds r4, #0xa6
	ldrh r1, [r3]
	ldrh r0, [r4]
	cmp r1, r0
	beq _08070E56
	ldrh r1, [r3]
	ldrh r0, [r4]
	cmp r1, r0
	bls _08070E10
	add r2, sp, #0xac
	ldrh r1, [r3]
	ldrh r0, [r4]
	subs r1, r1, r0
	ldr r0, [r2]
	adds r1, r1, r0
	str r1, [r2]
	b _08070E26
	.align 2, 0
_08070E08: .4byte 0x03005840
_08070E0C: .4byte 0x04000006
_08070E10:
	add r2, sp, #0xac
	add r0, sp, #0xa8
	ldrh r0, [r0]
	adds r0, #0xe4
	mov r1, sp
	adds r1, #0xa6
	ldrh r1, [r1]
	subs r0, r0, r1
	ldr r1, [r2]
	adds r0, r0, r1
	str r0, [r2]
_08070E26:
	add r0, sp, #0xac
	ldr r0, [r0]
	cmp r0, #0x88
	bls _08070E4C
	add r0, sp, #0xa4
	ldrh r0, [r0]
	cmp r0, #0
	bne _08070E76
	movs r0, #0xd0
	lsls r0, r0, #0x14
	ldrh r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08070E76
	ldr r5, _08070E48 @ =0x0000C001
	b _08070E76
	.align 2, 0
_08070E48: .4byte 0x0000C001
_08070E4C:
	mov r0, sp
	adds r0, #0xa6
	add r1, sp, #0xa8
	ldrh r1, [r1]
	strh r1, [r0]
_08070E56:
	add r2, sp, #0xa4
	ldrh r0, [r2]
	cmp r0, #0
	bne _08070DDC
	movs r0, #0xd0
	lsls r0, r0, #0x14
	movs r1, #1
	ldrh r0, [r0]
	ands r1, r0
	cmp r1, #0
	beq _08070DDC
_08070E6C:
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
	cmp r7, #0
	bne _08070DDC
_08070E76:
	adds r0, r5, #0
_08070E78:
	add sp, #0xb0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start EEPROMCompare
EEPROMCompare: @ 0x08070E80
	push {r4, r5, lr}
	sub sp, #8
	adds r4, r1, #0
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	movs r5, #0
	ldr r0, _08070E9C @ =0x03005840
	ldr r0, [r0]
	ldrh r0, [r0, #4]
	cmp r1, r0
	blo _08070EA4
	ldr r0, _08070EA0 @ =0x000080FF
	b _08070ECE
	.align 2, 0
_08070E9C: .4byte 0x03005840
_08070EA0: .4byte 0x000080FF
_08070EA4:
	adds r0, r1, #0
	mov r1, sp
	bl EEPROMRead
	mov r2, sp
	movs r3, #0
	b _08070EBC
_08070EB2:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #3
	bhi _08070ECC
_08070EBC:
	ldrh r1, [r4]
	ldrh r0, [r2]
	adds r2, #2
	adds r4, #2
	cmp r1, r0
	beq _08070EB2
	movs r5, #0x80
	lsls r5, r5, #8
_08070ECC:
	adds r0, r5, #0
_08070ECE:
	add sp, #8
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start EEPROMWrite1_check
EEPROMWrite1_check: @ 0x08070ED8
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r6, #0
	b _08070EEA
_08070EE4:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_08070EEA:
	cmp r6, #2
	bhi _08070F0E
	adds r0, r4, #0
	adds r1, r5, #0
	bl EEPROMWrite1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	bne _08070EE4
	adds r0, r4, #0
	adds r1, r5, #0
	bl EEPROMCompare
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	bne _08070EE4
_08070F0E:
	adds r0, r2, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start EEPROMWrite0_8k
EEPROMWrite0_8k: @ 0x08070F18
	push {lr}
	adds r3, r1, #0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r0, _08070F40 @ =0x03005840
	ldr r0, [r0]
	ldr r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r1, r0
	beq _08070F44
	adds r0, r2, #0
	adds r1, r3, #0
	movs r2, #0
	bl EEPROMWrite
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	b _08070F46
	.align 2, 0
_08070F40: .4byte 0x03005840
_08070F44:
	ldr r0, _08070F4C @ =0x00008080
_08070F46:
	pop {r1}
	bx r1
	.align 2, 0
_08070F4C: .4byte 0x00008080

	thumb_func_start EEPROMWrite0_8k_Check
EEPROMWrite0_8k_Check: @ 0x08070F50
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r6, #0
	b _08070F62
_08070F5C:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_08070F62:
	cmp r6, #2
	bhi _08070F86
	adds r0, r4, #0
	adds r1, r5, #0
	bl EEPROMWrite0_8k
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	bne _08070F5C
	adds r0, r4, #0
	adds r1, r5, #0
	bl EEPROMCompare
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	bne _08070F5C
_08070F86:
	adds r0, r2, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	@ libgcc/_call_via_rX

	thumb_func_start _call_via_r0
_call_via_r0: @ 0x08070F90
	bx r0
	nop

	thumb_func_start _call_via_r1
_call_via_r1: @ 0x08070F94
	bx r1
	nop

	thumb_func_start _call_via_r2
_call_via_r2: @ 0x08070F98
	bx r2
	nop

	thumb_func_start _call_via_r3
_call_via_r3: @ 0x08070F9C
	bx r3
	nop

	thumb_func_start _call_via_r4
_call_via_r4: @ 0x08070FA0
	bx r4
	nop

	thumb_func_start _call_via_r5
_call_via_r5: @ 0x08070FA4
	bx r5
	nop

	thumb_func_start _call_via_r6
_call_via_r6: @ 0x08070FA8
	bx r6
	nop

	thumb_func_start _call_via_r7
_call_via_r7: @ 0x08070FAC
	bx r7
	nop

	thumb_func_start _call_via_r8
_call_via_r8: @ 0x08070FB0
	bx r8
	nop

	thumb_func_start _call_via_r9
_call_via_r9: @ 0x08070FB4
	bx sb
	nop

	thumb_func_start _call_via_r10
_call_via_r10: @ 0x08070FB8
	bx sl
	nop

	thumb_func_start _call_via_r11
_call_via_r11: @ 0x08070FBC
	bx fp
	nop

	thumb_func_start _call_via_r12
_call_via_r12: @ 0x08070FC0
	bx ip
	nop

	thumb_func_start _call_via_sp
_call_via_sp: @ 0x08070FC4
	bx sp
	nop

	thumb_func_start _call_via_lr
_call_via_lr: @ 0x08070FC8
	bx lr
	nop

	@ libgcc/_divsi3.o

	thumb_func_start __divsi3
__divsi3: @ 0x08070FCC
	cmp r1, #0
	beq _08071054
	push {r4}
	adds r4, r0, #0
	eors r4, r1
	mov ip, r4
	movs r3, #1
	movs r2, #0
	cmp r1, #0
	bpl _08070FE2
	rsbs r1, r1, #0
_08070FE2:
	cmp r0, #0
	bpl _08070FE8
	rsbs r0, r0, #0
_08070FE8:
	cmp r0, r1
	blo _08071046
	movs r4, #1
	lsls r4, r4, #0x1c
_08070FF0:
	cmp r1, r4
	bhs _08070FFE
	cmp r1, r0
	bhs _08070FFE
	lsls r1, r1, #4
	lsls r3, r3, #4
	b _08070FF0
_08070FFE:
	lsls r4, r4, #3
_08071000:
	cmp r1, r4
	bhs _0807100E
	cmp r1, r0
	bhs _0807100E
	lsls r1, r1, #1
	lsls r3, r3, #1
	b _08071000
_0807100E:
	cmp r0, r1
	blo _08071016
	subs r0, r0, r1
	orrs r2, r3
_08071016:
	lsrs r4, r1, #1
	cmp r0, r4
	blo _08071022
	subs r0, r0, r4
	lsrs r4, r3, #1
	orrs r2, r4
_08071022:
	lsrs r4, r1, #2
	cmp r0, r4
	blo _0807102E
	subs r0, r0, r4
	lsrs r4, r3, #2
	orrs r2, r4
_0807102E:
	lsrs r4, r1, #3
	cmp r0, r4
	blo _0807103A
	subs r0, r0, r4
	lsrs r4, r3, #3
	orrs r2, r4
_0807103A:
	cmp r0, #0
	beq _08071046
	lsrs r3, r3, #4
	beq _08071046
	lsrs r1, r1, #4
	b _0807100E
_08071046:
	adds r0, r2, #0
	mov r4, ip
	cmp r4, #0
	bpl _08071050
	rsbs r0, r0, #0
_08071050:
	pop {r4}
	mov pc, lr
_08071054:
	push {lr}
	bl __div0
	movs r0, #0
	pop {pc}
	.align 2, 0

	@ libgcc/_dvmd_tls.o

	thumb_func_start __div0
__div0: @ 0x08071060
	mov pc, lr
	.align 2, 0

	@ libgcc/_modsi3.o

	thumb_func_start __modsi3
__modsi3: @ 0x08071064
	movs r3, #1
	cmp r1, #0
	beq _08071128
	bpl _0807106E
	rsbs r1, r1, #0
_0807106E:
	push {r4}
	push {r0}
	cmp r0, #0
	bpl _08071078
	rsbs r0, r0, #0
_08071078:
	cmp r0, r1
	blo _0807111C
	movs r4, #1
	lsls r4, r4, #0x1c
_08071080:
	cmp r1, r4
	bhs _0807108E
	cmp r1, r0
	bhs _0807108E
	lsls r1, r1, #4
	lsls r3, r3, #4
	b _08071080
_0807108E:
	lsls r4, r4, #3
_08071090:
	cmp r1, r4
	bhs _0807109E
	cmp r1, r0
	bhs _0807109E
	lsls r1, r1, #1
	lsls r3, r3, #1
	b _08071090
_0807109E:
	movs r2, #0
	cmp r0, r1
	blo _080710A6
	subs r0, r0, r1
_080710A6:
	lsrs r4, r1, #1
	cmp r0, r4
	blo _080710B8
	subs r0, r0, r4
	mov ip, r3
	movs r4, #1
	rors r3, r4
	orrs r2, r3
	mov r3, ip
_080710B8:
	lsrs r4, r1, #2
	cmp r0, r4
	blo _080710CA
	subs r0, r0, r4
	mov ip, r3
	movs r4, #2
	rors r3, r4
	orrs r2, r3
	mov r3, ip
_080710CA:
	lsrs r4, r1, #3
	cmp r0, r4
	blo _080710DC
	subs r0, r0, r4
	mov ip, r3
	movs r4, #3
	rors r3, r4
	orrs r2, r3
	mov r3, ip
_080710DC:
	mov ip, r3
	cmp r0, #0
	beq _080710EA
	lsrs r3, r3, #4
	beq _080710EA
	lsrs r1, r1, #4
	b _0807109E
_080710EA:
	movs r4, #0xe
	lsls r4, r4, #0x1c
	ands r2, r4
	beq _0807111C
	mov r3, ip
	movs r4, #3
	rors r3, r4
	tst r2, r3
	beq _08071100
	lsrs r4, r1, #3
	adds r0, r0, r4
_08071100:
	mov r3, ip
	movs r4, #2
	rors r3, r4
	tst r2, r3
	beq _0807110E
	lsrs r4, r1, #2
	adds r0, r0, r4
_0807110E:
	mov r3, ip
	movs r4, #1
	rors r3, r4
	tst r2, r3
	beq _0807111C
	lsrs r4, r1, #1
	adds r0, r0, r4
_0807111C:
	pop {r4}
	cmp r4, #0
	bpl _08071124
	rsbs r0, r0, #0
_08071124:
	pop {r4}
	mov pc, lr
_08071128:
	push {lr}
	bl __div0
	movs r0, #0
	pop {pc}
	.align 2, 0

	@ libgcc/_udivsi3.o

	thumb_func_start __udivsi3
__udivsi3: @ 0x08071134
	cmp r1, #0
	beq _080711A2
	movs r3, #1
	movs r2, #0
	push {r4}
	cmp r0, r1
	blo _0807119C
	movs r4, #1
	lsls r4, r4, #0x1c
_08071146:
	cmp r1, r4
	bhs _08071154
	cmp r1, r0
	bhs _08071154
	lsls r1, r1, #4
	lsls r3, r3, #4
	b _08071146
_08071154:
	lsls r4, r4, #3
_08071156:
	cmp r1, r4
	bhs _08071164
	cmp r1, r0
	bhs _08071164
	lsls r1, r1, #1
	lsls r3, r3, #1
	b _08071156
_08071164:
	cmp r0, r1
	blo _0807116C
	subs r0, r0, r1
	orrs r2, r3
_0807116C:
	lsrs r4, r1, #1
	cmp r0, r4
	blo _08071178
	subs r0, r0, r4
	lsrs r4, r3, #1
	orrs r2, r4
_08071178:
	lsrs r4, r1, #2
	cmp r0, r4
	blo _08071184
	subs r0, r0, r4
	lsrs r4, r3, #2
	orrs r2, r4
_08071184:
	lsrs r4, r1, #3
	cmp r0, r4
	blo _08071190
	subs r0, r0, r4
	lsrs r4, r3, #3
	orrs r2, r4
_08071190:
	cmp r0, #0
	beq _0807119C
	lsrs r3, r3, #4
	beq _0807119C
	lsrs r1, r1, #4
	b _08071164
_0807119C:
	adds r0, r2, #0
	pop {r4}
	mov pc, lr
_080711A2:
	push {lr}
	bl __div0
	movs r0, #0
	pop {pc}

	@ libgcc/_umodsi3.o

	thumb_func_start __umodsi3
__umodsi3: @ 0x080711AC
	cmp r1, #0
	beq _08071262
	movs r3, #1
	cmp r0, r1
	bhs _080711B8
	mov pc, lr
_080711B8:
	push {r4}
	movs r4, #1
	lsls r4, r4, #0x1c
_080711BE:
	cmp r1, r4
	bhs _080711CC
	cmp r1, r0
	bhs _080711CC
	lsls r1, r1, #4
	lsls r3, r3, #4
	b _080711BE
_080711CC:
	lsls r4, r4, #3
_080711CE:
	cmp r1, r4
	bhs _080711DC
	cmp r1, r0
	bhs _080711DC
	lsls r1, r1, #1
	lsls r3, r3, #1
	b _080711CE
_080711DC:
	movs r2, #0
	cmp r0, r1
	blo _080711E4
	subs r0, r0, r1
_080711E4:
	lsrs r4, r1, #1
	cmp r0, r4
	blo _080711F6
	subs r0, r0, r4
	mov ip, r3
	movs r4, #1
	rors r3, r4
	orrs r2, r3
	mov r3, ip
_080711F6:
	lsrs r4, r1, #2
	cmp r0, r4
	blo _08071208
	subs r0, r0, r4
	mov ip, r3
	movs r4, #2
	rors r3, r4
	orrs r2, r3
	mov r3, ip
_08071208:
	lsrs r4, r1, #3
	cmp r0, r4
	blo _0807121A
	subs r0, r0, r4
	mov ip, r3
	movs r4, #3
	rors r3, r4
	orrs r2, r3
	mov r3, ip
_0807121A:
	mov ip, r3
	cmp r0, #0
	beq _08071228
	lsrs r3, r3, #4
	beq _08071228
	lsrs r1, r1, #4
	b _080711DC
_08071228:
	movs r4, #0xe
	lsls r4, r4, #0x1c
	ands r2, r4
	bne _08071234
	pop {r4}
	mov pc, lr
_08071234:
	mov r3, ip
	movs r4, #3
	rors r3, r4
	tst r2, r3
	beq _08071242
	lsrs r4, r1, #3
	adds r0, r0, r4
_08071242:
	mov r3, ip
	movs r4, #2
	rors r3, r4
	tst r2, r3
	beq _08071250
	lsrs r4, r1, #2
	adds r0, r0, r4
_08071250:
	mov r3, ip
	movs r4, #1
	rors r3, r4
	tst r2, r3
	beq _0807125E
	lsrs r4, r1, #1
	adds r0, r0, r4
_0807125E:
	pop {r4}
	mov pc, lr
_08071262:
	push {lr}
	bl __div0
	movs r0, #0
	pop {pc}

	@ libgcc/dp-bit.o

	thumb_func_start __pack_d
__pack_d: @ 0x0807126C
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r1, r0, #0
	ldr r4, [r1, #0xc]
	ldr r5, [r1, #0x10]
	ldr r7, [r1, #4]
	movs r6, #0
	movs r2, #0
	ldr r0, [r1]
	cmp r0, #1
	bhi _08071284
	movs r2, #1
_08071284:
	cmp r2, #0
	beq _080712A4
	ldr r6, _08071298 @ =0x000007FF
	ldr r2, _0807129C @ =0x00000000
	ldr r3, _080712A0 @ =0x00080000
	adds r0, r4, #0
	adds r1, r5, #0
	orrs r1, r3
	b _0807135C
	.align 2, 0
_08071298: .4byte 0x000007FF
_0807129C: .4byte 0x00000000
_080712A0: .4byte 0x00080000
_080712A4:
	movs r2, #0
	cmp r0, #4
	bne _080712AC
	movs r2, #1
_080712AC:
	cmp r2, #0
	bne _080712F8
	movs r2, #0
	cmp r0, #2
	bne _080712B8
	movs r2, #1
_080712B8:
	cmp r2, #0
	beq _080712C2
	movs r4, #0
	movs r5, #0
	b _08071360
_080712C2:
	adds r0, r5, #0
	orrs r0, r4
	cmp r0, #0
	beq _08071360
	ldr r2, [r1, #8]
	ldr r0, _080712E0 @ =0xFFFFFC02
	cmp r2, r0
	bge _080712F2
	subs r2, r0, r2
	cmp r2, #0x38
	ble _080712E4
	movs r4, #0
	movs r5, #0
	b _08071352
	.align 2, 0
_080712E0: .4byte 0xFFFFFC02
_080712E4:
	adds r1, r5, #0
	adds r0, r4, #0
	bl __lshrdi3
	adds r5, r1, #0
	adds r4, r0, #0
	b _08071352
_080712F2:
	ldr r0, _08071300 @ =0x000003FF
	cmp r2, r0
	ble _08071308
_080712F8:
	ldr r6, _08071304 @ =0x000007FF
	movs r4, #0
	movs r5, #0
	b _08071360
	.align 2, 0
_08071300: .4byte 0x000003FF
_08071304: .4byte 0x000007FF
_08071308:
	ldr r0, _08071330 @ =0x000003FF
	adds r6, r2, r0
	movs r0, #0xff
	adds r1, r4, #0
	ands r1, r0
	movs r2, #0
	cmp r1, #0x80
	bne _08071334
	cmp r2, #0
	bne _08071334
	adds r0, #1
	adds r1, r4, #0
	ands r1, r0
	adds r0, r2, #0
	orrs r0, r1
	cmp r0, #0
	beq _0807133C
	movs r0, #0x80
	movs r1, #0
	b _08071338
	.align 2, 0
_08071330: .4byte 0x000003FF
_08071334:
	movs r0, #0x7f
	movs r1, #0
_08071338:
	adds r4, r4, r0
	adcs r5, r1
_0807133C:
	ldr r0, _080713A0 @ =0x1FFFFFFF
	cmp r5, r0
	bls _08071352
	lsls r3, r5, #0x1f
	lsrs r2, r4, #1
	adds r0, r3, #0
	orrs r0, r2
	lsrs r1, r5, #1
	adds r5, r1, #0
	adds r4, r0, #0
	adds r6, #1
_08071352:
	lsls r3, r5, #0x18
	lsrs r2, r4, #8
	adds r0, r3, #0
	orrs r0, r2
	lsrs r1, r5, #8
_0807135C:
	adds r5, r1, #0
	adds r4, r0, #0
_08071360:
	str r4, [sp]
	ldr r2, _080713A4 @ =0x000FFFFF
	ands r2, r5
	ldr r0, [sp, #4]
	ldr r1, _080713A8 @ =0xFFF00000
	ands r0, r1
	orrs r0, r2
	str r0, [sp, #4]
	mov r2, sp
	ldr r1, _080713AC @ =0x000007FF
	adds r0, r1, #0
	ands r6, r0
	lsls r1, r6, #4
	ldr r0, _080713B0 @ =0xFFFF800F
	ldrh r3, [r2, #6]
	ands r0, r3
	orrs r0, r1
	strh r0, [r2, #6]
	lsls r1, r7, #7
	movs r0, #0x7f
	ldrb r3, [r2, #7]
	ands r0, r3
	orrs r0, r1
	strb r0, [r2, #7]
	ldr r1, [sp]
	ldr r0, [sp, #4]
	str r0, [sp]
	str r1, [sp, #4]
	ldr r0, [sp]
	ldr r1, [sp, #4]
	add sp, #8
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080713A0: .4byte 0x1FFFFFFF
_080713A4: .4byte 0x000FFFFF
_080713A8: .4byte 0xFFF00000
_080713AC: .4byte 0x000007FF
_080713B0: .4byte 0xFFFF800F

	thumb_func_start __unpack_d
__unpack_d: @ 0x080713B4
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r2, r0, #0
	adds r6, r1, #0
	ldr r1, [r2, #4]
	str r1, [sp]
	ldr r0, [r2]
	str r0, [sp, #4]
	mov r2, sp
	adds r4, r1, #0
	lsls r0, r0, #0xc
	lsrs r5, r0, #0xc
	ldrh r3, [r2, #6]
	lsls r0, r3, #0x11
	lsrs r3, r0, #0x15
	ldrb r2, [r2, #7]
	lsrs r0, r2, #7
	str r0, [r6, #4]
	cmp r3, #0
	bne _08071428
	orrs r1, r5
	cmp r1, #0
	bne _080713E8
	movs r0, #2
	str r0, [r6]
	b _0807147C
_080713E8:
	ldr r0, _08071420 @ =0xFFFFFC02
	str r0, [r6, #8]
	lsrs r3, r4, #0x18
	lsls r2, r5, #8
	adds r1, r3, #0
	orrs r1, r2
	lsls r0, r4, #8
	adds r5, r1, #0
	adds r4, r0, #0
	movs r0, #3
	str r0, [r6]
	ldr r0, _08071424 @ =0x0FFFFFFF
	cmp r5, r0
	bhi _08071458
	adds r7, r0, #0
_08071406:
	lsrs r3, r4, #0x1f
	lsls r2, r5, #1
	adds r1, r3, #0
	orrs r1, r2
	lsls r0, r4, #1
	adds r5, r1, #0
	adds r4, r0, #0
	ldr r0, [r6, #8]
	subs r0, #1
	str r0, [r6, #8]
	cmp r5, r7
	bls _08071406
	b _08071458
	.align 2, 0
_08071420: .4byte 0xFFFFFC02
_08071424: .4byte 0x0FFFFFFF
_08071428:
	ldr r0, _0807143C @ =0x000007FF
	cmp r3, r0
	bne _0807145E
	orrs r1, r5
	cmp r1, #0
	bne _08071440
	movs r0, #4
	str r0, [r6]
	b _0807147C
	.align 2, 0
_0807143C: .4byte 0x000007FF
_08071440:
	movs r2, #0x80
	lsls r2, r2, #0xc
	movs r0, #0
	adds r1, r5, #0
	ands r1, r2
	orrs r1, r0
	cmp r1, #0
	beq _08071456
	movs r0, #1
	str r0, [r6]
	b _08071458
_08071456:
	str r1, [r6]
_08071458:
	str r4, [r6, #0xc]
	str r5, [r6, #0x10]
	b _0807147C
_0807145E:
	ldr r1, _08071480 @ =0xFFFFFC01
	adds r0, r3, r1
	str r0, [r6, #8]
	movs r0, #3
	str r0, [r6]
	lsrs r3, r4, #0x18
	lsls r2, r5, #8
	adds r1, r3, #0
	orrs r1, r2
	lsls r0, r4, #8
	ldr r2, _08071484 @ =0x00000000
	ldr r3, _08071488 @ =0x10000000
	orrs r1, r3
	str r0, [r6, #0xc]
	str r1, [r6, #0x10]
_0807147C:
	add sp, #8
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08071480: .4byte 0xFFFFFC01
_08071484: .4byte 0x00000000
_08071488: .4byte 0x10000000

	thumb_func_start _fpadd_parts
_fpadd_parts: @ 0x0807148C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r3, r0, #0
	adds r4, r1, #0
	mov sl, r2
	movs r0, #0
	ldr r2, [r3]
	cmp r2, #1
	bhi _080714A8
	movs r0, #1
_080714A8:
	cmp r0, #0
	beq _080714B0
_080714AC:
	adds r0, r3, #0
	b _080716E8
_080714B0:
	movs r1, #0
	ldr r0, [r4]
	cmp r0, #1
	bhi _080714BA
	movs r1, #1
_080714BA:
	cmp r1, #0
	bne _08071532
	movs r1, #0
	cmp r2, #4
	bne _080714C6
	movs r1, #1
_080714C6:
	cmp r1, #0
	beq _080714E8
	movs r1, #0
	cmp r0, #4
	bne _080714D2
	movs r1, #1
_080714D2:
	cmp r1, #0
	beq _080714AC
	ldr r1, [r3, #4]
	ldr r0, [r4, #4]
	cmp r1, r0
	beq _080714AC
	ldr r0, _080714E4 @ =0x03001E08
	b _080716E8
	.align 2, 0
_080714E4: .4byte 0x03001E08
_080714E8:
	movs r1, #0
	cmp r0, #4
	bne _080714F0
	movs r1, #1
_080714F0:
	cmp r1, #0
	bne _08071532
	movs r1, #0
	cmp r0, #2
	bne _080714FC
	movs r1, #1
_080714FC:
	cmp r1, #0
	beq _08071524
	movs r0, #0
	cmp r2, #2
	bne _08071508
	movs r0, #1
_08071508:
	cmp r0, #0
	beq _080714AC
	mov r1, sl
	adds r0, r3, #0
	ldm r0!, {r2, r5, r6}
	stm r1!, {r2, r5, r6}
	ldm r0!, {r2, r5}
	stm r1!, {r2, r5}
	ldr r0, [r3, #4]
	ldr r1, [r4, #4]
	ands r0, r1
	mov r6, sl
	str r0, [r6, #4]
	b _080716E6
_08071524:
	movs r1, #0
	ldr r0, [r3]
	cmp r0, #2
	bne _0807152E
	movs r1, #1
_0807152E:
	cmp r1, #0
	beq _08071536
_08071532:
	adds r0, r4, #0
	b _080716E8
_08071536:
	ldr r0, [r3, #8]
	mov sb, r0
	ldr r1, [r4, #8]
	mov r8, r1
	ldr r6, [r3, #0xc]
	ldr r7, [r3, #0x10]
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #0x10]
	str r0, [sp]
	str r1, [sp, #4]
	mov r1, sb
	mov r2, r8
	subs r0, r1, r2
	cmp r0, #0
	bge _08071556
	rsbs r0, r0, #0
_08071556:
	cmp r0, #0x3f
	bgt _080715D4
	ldr r3, [r3, #4]
	mov ip, r3
	ldr r4, [r4, #4]
	str r4, [sp, #8]
	cmp sb, r8
	ble _080715A0
	mov r3, sb
	mov r4, r8
	subs r3, r3, r4
	mov r8, r3
_0807156E:
	movs r5, #1
	rsbs r5, r5, #0
	add r8, r5
	ldr r2, [sp]
	movs r0, #1
	ands r2, r0
	movs r3, #0
	ldr r1, [sp, #4]
	lsls r5, r1, #0x1f
	ldr r0, [sp]
	lsrs r4, r0, #1
	adds r0, r5, #0
	orrs r0, r4
	adds r4, r1, #0
	lsrs r1, r4, #1
	adds r5, r2, #0
	orrs r5, r0
	str r5, [sp]
	adds r4, r3, #0
	orrs r4, r1
	str r4, [sp, #4]
	mov r5, r8
	cmp r5, #0
	bne _0807156E
	mov r8, sb
_080715A0:
	cmp r8, sb
	ble _080715F0
	mov r0, r8
	mov r1, sb
	subs r0, r0, r1
	mov sb, r0
_080715AC:
	movs r2, #1
	rsbs r2, r2, #0
	add sb, r2
	movs r2, #1
	ands r2, r6
	movs r3, #0
	lsls r5, r7, #0x1f
	lsrs r4, r6, #1
	adds r0, r5, #0
	orrs r0, r4
	lsrs r1, r7, #1
	adds r6, r2, #0
	orrs r6, r0
	adds r7, r3, #0
	orrs r7, r1
	mov r3, sb
	cmp r3, #0
	bne _080715AC
	mov sb, r8
	b _080715F0
_080715D4:
	cmp sb, r8
	ble _080715E2
	movs r0, #0
	movs r1, #0
	str r0, [sp]
	str r1, [sp, #4]
	b _080715E8
_080715E2:
	mov sb, r8
	movs r6, #0
	movs r7, #0
_080715E8:
	ldr r3, [r3, #4]
	mov ip, r3
	ldr r4, [r4, #4]
	str r4, [sp, #8]
_080715F0:
	ldr r1, [sp, #8]
	cmp ip, r1
	beq _08071698
	mov r2, ip
	cmp r2, #0
	beq _08071612
	adds r1, r7, #0
	adds r0, r6, #0
	bl __negdi2
	adds r3, r1, #0
	adds r2, r0, #0
	ldr r4, [sp]
	ldr r5, [sp, #4]
	adds r2, r2, r4
	adcs r3, r5
	b _0807161E
_08071612:
	adds r3, r7, #0
	adds r2, r6, #0
	ldr r0, [sp]
	ldr r1, [sp, #4]
	subs r2, r2, r0
	sbcs r3, r1
_0807161E:
	cmp r3, #0
	blt _08071634
	movs r0, #0
	mov r1, sl
	str r0, [r1, #4]
	mov r4, sb
	str r4, [r1, #8]
	mov r5, sl
	str r2, [r5, #0xc]
	str r3, [r5, #0x10]
	b _0807164C
_08071634:
	movs r0, #1
	mov r6, sl
	str r0, [r6, #4]
	mov r0, sb
	str r0, [r6, #8]
	adds r1, r3, #0
	adds r0, r2, #0
	bl __negdi2
	mov r2, sl
	str r0, [r2, #0xc]
	str r1, [r2, #0x10]
_0807164C:
	mov r4, sl
	ldr r2, [r4, #0xc]
	ldr r3, [r4, #0x10]
	movs r0, #1
	rsbs r0, r0, #0
	asrs r1, r0, #0x1f
_08071658:
	adds r2, r2, r0
	adcs r3, r1
	ldr r0, _08071694 @ =0x0FFFFFFF
	cmp r3, r0
	bhi _080716B0
	cmp r3, r0
	bne _0807166E
	movs r0, #2
	rsbs r0, r0, #0
	cmp r2, r0
	bhi _080716B0
_0807166E:
	mov r5, sl
	ldr r0, [r5, #0xc]
	ldr r1, [r5, #0x10]
	lsrs r3, r0, #0x1f
	lsls r2, r1, #1
	adds r1, r3, #0
	orrs r1, r2
	lsls r0, r0, #1
	mov r6, sl
	str r0, [r6, #0xc]
	str r1, [r6, #0x10]
	ldr r2, [r6, #8]
	subs r2, #1
	str r2, [r6, #8]
	movs r2, #1
	rsbs r2, r2, #0
	asrs r3, r2, #0x1f
	b _08071658
	.align 2, 0
_08071694: .4byte 0x0FFFFFFF
_08071698:
	mov r0, ip
	mov r1, sl
	str r0, [r1, #4]
	mov r2, sb
	str r2, [r1, #8]
	ldr r3, [sp]
	ldr r4, [sp, #4]
	adds r6, r6, r3
	adcs r7, r4
	mov r4, sl
	str r6, [r4, #0xc]
	str r7, [r4, #0x10]
_080716B0:
	movs r0, #3
	mov r5, sl
	str r0, [r5]
	ldr r1, [r5, #0x10]
	ldr r0, _080716F4 @ =0x1FFFFFFF
	cmp r1, r0
	bls _080716E6
	ldr r4, [r5, #0xc]
	ldr r5, [r5, #0x10]
	movs r2, #1
	adds r0, r4, #0
	ands r0, r2
	movs r1, #0
	lsls r6, r5, #0x1f
	mov r8, r6
	lsrs r6, r4, #1
	mov r2, r8
	orrs r2, r6
	lsrs r3, r5, #1
	orrs r0, r2
	orrs r1, r3
	mov r2, sl
	str r0, [r2, #0xc]
	str r1, [r2, #0x10]
	ldr r0, [r2, #8]
	adds r0, #1
	str r0, [r2, #8]
_080716E6:
	mov r0, sl
_080716E8:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080716F4: .4byte 0x1FFFFFFF

	thumb_func_start __adddf3
__adddf3: @ 0x080716F8
	push {r4, lr}
	sub sp, #0x4c
	str r0, [sp, #0x3c]
	str r1, [sp, #0x40]
	str r2, [sp, #0x44]
	str r3, [sp, #0x48]
	add r0, sp, #0x3c
	mov r1, sp
	bl __unpack_d
	add r0, sp, #0x44
	add r4, sp, #0x14
	adds r1, r4, #0
	bl __unpack_d
	add r2, sp, #0x28
	mov r0, sp
	adds r1, r4, #0
	bl _fpadd_parts
	bl __pack_d
	add sp, #0x4c
	pop {r4, pc}

	thumb_func_start __subdf3
__subdf3: @ 0x08071728
	push {r4, lr}
	sub sp, #0x4c
	str r0, [sp, #0x3c]
	str r1, [sp, #0x40]
	str r2, [sp, #0x44]
	str r3, [sp, #0x48]
	add r0, sp, #0x3c
	mov r1, sp
	bl __unpack_d
	add r0, sp, #0x44
	add r4, sp, #0x14
	adds r1, r4, #0
	bl __unpack_d
	ldr r0, [r4, #4]
	movs r1, #1
	eors r0, r1
	str r0, [r4, #4]
	add r2, sp, #0x28
	mov r0, sp
	adds r1, r4, #0
	bl _fpadd_parts
	bl __pack_d
	add sp, #0x4c
	pop {r4, pc}

	thumb_func_start __muldf3
__muldf3: @ 0x08071760
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x74
	str r0, [sp, #0x3c]
	str r1, [sp, #0x40]
	str r2, [sp, #0x44]
	str r3, [sp, #0x48]
	add r0, sp, #0x3c
	mov r1, sp
	bl __unpack_d
	add r0, sp, #0x44
	add r4, sp, #0x14
	adds r1, r4, #0
	bl __unpack_d
	mov r8, sp
	add r0, sp, #0x28
	mov sl, r0
	movs r0, #0
	ldr r1, [sp]
	cmp r1, #1
	bhi _08071796
	movs r0, #1
_08071796:
	cmp r0, #0
	bne _080717FA
	movs r2, #0
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bhi _080717A4
	movs r2, #1
_080717A4:
	cmp r2, #0
	beq _080717AC
	ldr r0, [sp, #4]
	b _0807181C
_080717AC:
	movs r2, #0
	cmp r1, #4
	bne _080717B4
	movs r2, #1
_080717B4:
	cmp r2, #0
	beq _080717C6
	movs r1, #0
	cmp r0, #2
	bne _080717C0
	movs r1, #1
_080717C0:
	cmp r1, #0
	bne _080717DE
	b _080717FA
_080717C6:
	movs r2, #0
	cmp r0, #4
	bne _080717CE
	movs r2, #1
_080717CE:
	cmp r2, #0
	beq _080717EE
	movs r0, #0
	cmp r1, #2
	bne _080717DA
	movs r0, #1
_080717DA:
	cmp r0, #0
	beq _080717E8
_080717DE:
	ldr r0, _080717E4 @ =0x03001E08
	b _080719E6
	.align 2, 0
_080717E4: .4byte 0x03001E08
_080717E8:
	mov r1, r8
	ldr r0, [r1, #4]
	b _0807181C
_080717EE:
	movs r2, #0
	cmp r1, #2
	bne _080717F6
	movs r2, #1
_080717F6:
	cmp r2, #0
	beq _0807180C
_080717FA:
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x18]
	eors r0, r1
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r1, r1, #0x1f
	str r1, [sp, #4]
	mov r0, sp
	b _080719E6
_0807180C:
	movs r1, #0
	cmp r0, #2
	bne _08071814
	movs r1, #1
_08071814:
	cmp r1, #0
	beq _0807182C
	mov r2, r8
	ldr r0, [r2, #4]
_0807181C:
	ldr r1, [sp, #0x18]
	eors r0, r1
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r1, r1, #0x1f
	str r1, [sp, #0x18]
	adds r0, r4, #0
	b _080719E6
_0807182C:
	mov r4, r8
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #0x10]
	adds r6, r0, #0
	movs r7, #0
	str r1, [sp, #0x4c]
	movs r5, #0
	str r5, [sp, #0x50]
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x24]
	adds r4, r0, #0
	str r1, [sp, #0x54]
	movs r0, #0
	str r0, [sp, #0x58]
	adds r1, r5, #0
	adds r0, r4, #0
	adds r3, r7, #0
	adds r2, r6, #0
	bl __muldi3
	str r0, [sp, #0x5c]
	str r1, [sp, #0x60]
	ldr r0, [sp, #0x54]
	ldr r1, [sp, #0x58]
	adds r3, r7, #0
	adds r2, r6, #0
	bl __muldi3
	adds r7, r1, #0
	adds r6, r0, #0
	adds r1, r5, #0
	adds r0, r4, #0
	ldr r2, [sp, #0x4c]
	ldr r3, [sp, #0x50]
	bl __muldi3
	adds r5, r1, #0
	adds r4, r0, #0
	ldr r0, [sp, #0x54]
	ldr r1, [sp, #0x58]
	ldr r2, [sp, #0x4c]
	ldr r3, [sp, #0x50]
	bl __muldi3
	str r0, [sp, #0x64]
	str r1, [sp, #0x68]
	movs r1, #0
	movs r2, #0
	str r1, [sp, #0x6c]
	str r2, [sp, #0x70]
	adds r3, r7, #0
	adds r2, r6, #0
	adds r2, r2, r4
	adcs r3, r5
	cmp r7, r3
	bhi _080718A4
	cmp r7, r3
	bne _080718AC
	cmp r6, r2
	bls _080718AC
_080718A4:
	ldr r5, _080719FC @ =0x00000001
	ldr r4, _080719F8 @ =0x00000000
	str r4, [sp, #0x6c]
	str r5, [sp, #0x70]
_080718AC:
	adds r1, r2, #0
	movs r6, #0
	adds r7, r1, #0
	ldr r0, [sp, #0x5c]
	ldr r1, [sp, #0x60]
	adds r6, r6, r0
	adcs r7, r1
	cmp r1, r7
	bhi _080718C8
	ldr r1, [sp, #0x60]
	cmp r1, r7
	bne _080718D8
	cmp r0, r6
	bls _080718D8
_080718C8:
	movs r0, #1
	movs r1, #0
	ldr r4, [sp, #0x6c]
	ldr r5, [sp, #0x70]
	adds r4, r4, r0
	adcs r5, r1
	str r4, [sp, #0x6c]
	str r5, [sp, #0x70]
_080718D8:
	adds r0, r3, #0
	adds r2, r0, #0
	movs r3, #0
	adds r5, r3, #0
	adds r4, r2, #0
	ldr r0, [sp, #0x64]
	ldr r1, [sp, #0x68]
	adds r4, r4, r0
	adcs r5, r1
	ldr r1, [sp, #0x6c]
	ldr r2, [sp, #0x70]
	adds r4, r4, r1
	adcs r5, r2
	mov r0, r8
	ldr r2, [r0, #8]
	ldr r0, [sp, #0x1c]
	adds r2, r2, r0
	str r2, [sp, #0x30]
	mov r0, r8
	ldr r1, [r0, #4]
	ldr r0, [sp, #0x18]
	eors r1, r0
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	str r0, [sp, #0x2c]
	adds r2, #4
	str r2, [sp, #0x30]
	ldr r0, _08071A00 @ =0x1FFFFFFF
	cmp r5, r0
	bls _0807195A
	movs r1, #1
	mov sb, r1
	mov r8, r0
	mov ip, r2
_0807191E:
	movs r2, #1
	add ip, r2
	mov r0, sb
	ands r0, r4
	cmp r0, #0
	beq _08071944
	lsls r3, r7, #0x1f
	lsrs r2, r6, #1
	adds r0, r3, #0
	orrs r0, r2
	lsrs r1, r7, #1
	adds r7, r1, #0
	adds r6, r0, #0
	adds r0, r6, #0
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r1, r7
	adds r7, r1, #0
	adds r6, r0, #0
_08071944:
	lsls r3, r5, #0x1f
	lsrs r2, r4, #1
	adds r0, r3, #0
	orrs r0, r2
	lsrs r1, r5, #1
	adds r5, r1, #0
	adds r4, r0, #0
	cmp r5, r8
	bhi _0807191E
	mov r0, ip
	str r0, [sp, #0x30]
_0807195A:
	ldr r0, _08071A04 @ =0x0FFFFFFF
	cmp r5, r0
	bhi _080719AC
	movs r1, #0x80
	lsls r1, r1, #0x18
	mov sb, r1
	mov r8, r0
	ldr r2, [sp, #0x30]
	mov ip, r2
_0807196C:
	movs r0, #1
	rsbs r0, r0, #0
	add ip, r0
	lsrs r3, r4, #0x1f
	lsls r2, r5, #1
	adds r1, r3, #0
	orrs r1, r2
	lsls r0, r4, #1
	adds r5, r1, #0
	adds r4, r0, #0
	movs r0, #0
	mov r1, sb
	ands r1, r7
	orrs r0, r1
	cmp r0, #0
	beq _08071996
	movs r0, #1
	orrs r0, r4
	adds r1, r5, #0
	adds r5, r1, #0
	adds r4, r0, #0
_08071996:
	lsrs r3, r6, #0x1f
	lsls r2, r7, #1
	adds r1, r3, #0
	orrs r1, r2
	lsls r0, r6, #1
	adds r7, r1, #0
	adds r6, r0, #0
	cmp r5, r8
	bls _0807196C
	mov r1, ip
	str r1, [sp, #0x30]
_080719AC:
	movs r0, #0xff
	adds r1, r4, #0
	ands r1, r0
	movs r2, #0
	cmp r1, #0x80
	bne _080719DA
	cmp r2, #0
	bne _080719DA
	adds r0, #1
	adds r1, r4, #0
	ands r1, r0
	adds r0, r2, #0
	orrs r0, r1
	cmp r0, #0
	bne _080719D2
	adds r0, r7, #0
	orrs r0, r6
	cmp r0, #0
	beq _080719DA
_080719D2:
	movs r0, #0x80
	movs r1, #0
	adds r4, r4, r0
	adcs r5, r1
_080719DA:
	str r4, [sp, #0x34]
	str r5, [sp, #0x38]
	movs r0, #3
	mov r2, sl
	str r0, [r2]
	add r0, sp, #0x28
_080719E6:
	bl __pack_d
	add sp, #0x74
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080719F8: .4byte 0x00000000
_080719FC: .4byte 0x00000001
_08071A00: .4byte 0x1FFFFFFF
_08071A04: .4byte 0x0FFFFFFF

	thumb_func_start __divdf3
__divdf3: @ 0x08071A08
	push {r4, r5, r6, r7, lr}
	sub sp, #0x48
	str r0, [sp, #0x28]
	str r1, [sp, #0x2c]
	str r2, [sp, #0x30]
	str r3, [sp, #0x34]
	add r0, sp, #0x28
	mov r1, sp
	bl __unpack_d
	add r0, sp, #0x30
	add r4, sp, #0x14
	adds r1, r4, #0
	bl __unpack_d
	mov ip, sp
	movs r0, #0
	ldr r3, [sp]
	cmp r3, #1
	bhi _08071A32
	movs r0, #1
_08071A32:
	cmp r0, #0
	beq _08071A3A
	mov r1, sp
	b _08071B7C
_08071A3A:
	movs r0, #0
	ldr r2, [sp, #0x14]
	adds r5, r2, #0
	cmp r2, #1
	bhi _08071A46
	movs r0, #1
_08071A46:
	cmp r0, #0
	beq _08071A4E
	adds r1, r4, #0
	b _08071B7C
_08071A4E:
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x18]
	eors r0, r1
	str r0, [sp, #4]
	movs r0, #0
	cmp r3, #4
	bne _08071A5E
	movs r0, #1
_08071A5E:
	cmp r0, #0
	bne _08071A6E
	movs r4, #0
	cmp r3, #2
	bne _08071A6A
	movs r4, #1
_08071A6A:
	cmp r4, #0
	beq _08071A80
_08071A6E:
	mov r1, ip
	ldr r0, [r1]
	cmp r0, r5
	beq _08071A78
	b _08071B7C
_08071A78:
	ldr r1, _08071A7C @ =0x03001E08
	b _08071B7C
	.align 2, 0
_08071A7C: .4byte 0x03001E08
_08071A80:
	movs r0, #0
	cmp r2, #4
	bne _08071A88
	movs r0, #1
_08071A88:
	cmp r0, #0
	beq _08071A9A
	movs r0, #0
	movs r1, #0
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	str r4, [sp, #8]
	mov r1, sp
	b _08071B7C
_08071A9A:
	movs r0, #0
	cmp r2, #2
	bne _08071AA2
	movs r0, #1
_08071AA2:
	cmp r0, #0
	beq _08071AAE
	movs r0, #4
	mov r2, ip
	str r0, [r2]
	b _08071B7A
_08071AAE:
	mov r3, ip
	ldr r1, [r3, #8]
	ldr r0, [sp, #0x1c]
	subs r6, r1, r0
	str r6, [r3, #8]
	ldr r4, [r3, #0xc]
	ldr r5, [r3, #0x10]
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x24]
	str r0, [sp, #0x38]
	str r1, [sp, #0x3c]
	cmp r1, r5
	bhi _08071AD2
	ldr r1, [sp, #0x3c]
	cmp r1, r5
	bne _08071AE6
	cmp r0, r4
	bls _08071AE6
_08071AD2:
	lsrs r3, r4, #0x1f
	lsls r2, r5, #1
	adds r1, r3, #0
	orrs r1, r2
	lsls r0, r4, #1
	adds r5, r1, #0
	adds r4, r0, #0
	subs r0, r6, #1
	mov r2, ip
	str r0, [r2, #8]
_08071AE6:
	ldr r7, _08071B8C @ =0x10000000
	ldr r6, _08071B88 @ =0x00000000
	movs r0, #0
	movs r1, #0
	str r0, [sp, #0x40]
	str r1, [sp, #0x44]
_08071AF2:
	ldr r1, [sp, #0x3c]
	cmp r1, r5
	bhi _08071B16
	cmp r1, r5
	bne _08071B02
	ldr r2, [sp, #0x38]
	cmp r2, r4
	bhi _08071B16
_08071B02:
	ldr r0, [sp, #0x40]
	orrs r0, r6
	ldr r1, [sp, #0x44]
	orrs r1, r7
	str r0, [sp, #0x40]
	str r1, [sp, #0x44]
	ldr r0, [sp, #0x38]
	ldr r1, [sp, #0x3c]
	subs r4, r4, r0
	sbcs r5, r1
_08071B16:
	lsls r3, r7, #0x1f
	lsrs r2, r6, #1
	adds r0, r3, #0
	orrs r0, r2
	lsrs r1, r7, #1
	adds r7, r1, #0
	adds r6, r0, #0
	lsrs r3, r4, #0x1f
	lsls r2, r5, #1
	adds r1, r3, #0
	orrs r1, r2
	lsls r0, r4, #1
	adds r5, r1, #0
	adds r4, r0, #0
	adds r0, r7, #0
	orrs r0, r6
	cmp r0, #0
	bne _08071AF2
	movs r0, #0xff
	ldr r1, [sp, #0x40]
	ands r1, r0
	movs r2, #0
	cmp r1, #0x80
	bne _08071B70
	cmp r2, #0
	bne _08071B70
	adds r0, #1
	ldr r1, [sp, #0x40]
	ands r1, r0
	adds r0, r2, #0
	orrs r0, r1
	cmp r0, #0
	bne _08071B60
	adds r0, r5, #0
	orrs r0, r4
	cmp r0, #0
	beq _08071B70
_08071B60:
	movs r0, #0x80
	movs r1, #0
	ldr r2, [sp, #0x40]
	ldr r3, [sp, #0x44]
	adds r2, r2, r0
	adcs r3, r1
	str r2, [sp, #0x40]
	str r3, [sp, #0x44]
_08071B70:
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	mov r2, ip
	str r0, [r2, #0xc]
	str r1, [r2, #0x10]
_08071B7A:
	mov r1, ip
_08071B7C:
	adds r0, r1, #0
	bl __pack_d
	add sp, #0x48
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08071B88: .4byte 0x00000000
_08071B8C: .4byte 0x10000000

	thumb_func_start __fpcmp_parts_d
__fpcmp_parts_d: @ 0x08071B90
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	movs r0, #0
	ldr r1, [r5]
	cmp r1, #1
	bhi _08071BA0
	movs r0, #1
_08071BA0:
	cmp r0, #0
	bne _08071BB2
	movs r0, #0
	ldr r2, [r6]
	cmp r2, #1
	bhi _08071BAE
	movs r0, #1
_08071BAE:
	cmp r0, #0
	beq _08071BB6
_08071BB2:
	movs r0, #1
	b _08071C8C
_08071BB6:
	movs r0, #0
	cmp r1, #4
	bne _08071BBE
	movs r0, #1
_08071BBE:
	cmp r0, #0
	beq _08071BD6
	movs r0, #0
	cmp r2, #4
	bne _08071BCA
	movs r0, #1
_08071BCA:
	cmp r0, #0
	beq _08071BD6
	ldr r0, [r6, #4]
	ldr r1, [r5, #4]
	subs r0, r0, r1
	b _08071C8C
_08071BD6:
	movs r1, #0
	ldr r0, [r5]
	cmp r0, #4
	bne _08071BE0
	movs r1, #1
_08071BE0:
	cmp r1, #0
	bne _08071C2E
	movs r1, #0
	cmp r2, #4
	bne _08071BEC
	movs r1, #1
_08071BEC:
	cmp r1, #0
	beq _08071BFE
_08071BF0:
	ldr r0, [r6, #4]
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, #0
	beq _08071C38
	movs r1, #1
	b _08071C38
_08071BFE:
	movs r1, #0
	cmp r0, #2
	bne _08071C06
	movs r1, #1
_08071C06:
	cmp r1, #0
	beq _08071C16
	movs r1, #0
	cmp r2, #2
	bne _08071C12
	movs r1, #1
_08071C12:
	cmp r1, #0
	bne _08071C8A
_08071C16:
	movs r1, #0
	cmp r0, #2
	bne _08071C1E
	movs r1, #1
_08071C1E:
	cmp r1, #0
	bne _08071BF0
	movs r0, #0
	cmp r2, #2
	bne _08071C2A
	movs r0, #1
_08071C2A:
	cmp r0, #0
	beq _08071C3C
_08071C2E:
	ldr r0, [r5, #4]
	movs r1, #1
	cmp r0, #0
	beq _08071C38
	subs r1, #2
_08071C38:
	adds r0, r1, #0
	b _08071C8C
_08071C3C:
	ldr r0, [r6, #4]
	ldr r4, [r5, #4]
	cmp r4, r0
	beq _08071C4E
_08071C44:
	movs r0, #1
	cmp r4, #0
	beq _08071C8C
	subs r0, #2
	b _08071C8C
_08071C4E:
	ldr r1, [r5, #8]
	ldr r0, [r6, #8]
	cmp r1, r0
	bgt _08071C44
	cmp r1, r0
	bge _08071C66
_08071C5A:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r4, #0
	beq _08071C8C
	movs r0, #1
	b _08071C8C
_08071C66:
	ldr r3, [r5, #0x10]
	ldr r2, [r6, #0x10]
	cmp r3, r2
	bhi _08071C44
	cmp r3, r2
	bne _08071C7A
	ldr r1, [r5, #0xc]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	bhi _08071C44
_08071C7A:
	cmp r2, r3
	bhi _08071C5A
	cmp r2, r3
	bne _08071C8A
	ldr r1, [r6, #0xc]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	bhi _08071C5A
_08071C8A:
	movs r0, #0
_08071C8C:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start __cmpdf2
__cmpdf2: @ 0x08071C90
	push {r4, lr}
	sub sp, #0x38
	str r0, [sp, #0x28]
	str r1, [sp, #0x2c]
	str r2, [sp, #0x30]
	str r3, [sp, #0x34]
	add r0, sp, #0x28
	mov r1, sp
	bl __unpack_d
	add r0, sp, #0x30
	add r4, sp, #0x14
	adds r1, r4, #0
	bl __unpack_d
	mov r0, sp
	adds r1, r4, #0
	bl __fpcmp_parts_d
	add sp, #0x38
	pop {r4, pc}
	.align 2, 0

	thumb_func_start __eqdf2
__eqdf2: @ 0x08071CBC
	push {r4, lr}
	sub sp, #0x38
	str r0, [sp, #0x28]
	str r1, [sp, #0x2c]
	str r2, [sp, #0x30]
	str r3, [sp, #0x34]
	add r0, sp, #0x28
	mov r1, sp
	bl __unpack_d
	add r0, sp, #0x30
	add r4, sp, #0x14
	adds r1, r4, #0
	bl __unpack_d
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _08071CE4
	movs r1, #1
_08071CE4:
	cmp r1, #0
	bne _08071CF6
	movs r1, #0
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bhi _08071CF2
	movs r1, #1
_08071CF2:
	cmp r1, #0
	beq _08071CFA
_08071CF6:
	movs r0, #1
	b _08071D02
_08071CFA:
	mov r0, sp
	adds r1, r4, #0
	bl __fpcmp_parts_d
_08071D02:
	add sp, #0x38
	pop {r4, pc}
	.align 2, 0

	thumb_func_start __nedf2
__nedf2: @ 0x08071D08
	push {r4, lr}
	sub sp, #0x38
	str r0, [sp, #0x28]
	str r1, [sp, #0x2c]
	str r2, [sp, #0x30]
	str r3, [sp, #0x34]
	add r0, sp, #0x28
	mov r1, sp
	bl __unpack_d
	add r0, sp, #0x30
	add r4, sp, #0x14
	adds r1, r4, #0
	bl __unpack_d
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _08071D30
	movs r1, #1
_08071D30:
	cmp r1, #0
	bne _08071D42
	movs r1, #0
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bhi _08071D3E
	movs r1, #1
_08071D3E:
	cmp r1, #0
	beq _08071D46
_08071D42:
	movs r0, #1
	b _08071D4E
_08071D46:
	mov r0, sp
	adds r1, r4, #0
	bl __fpcmp_parts_d
_08071D4E:
	add sp, #0x38
	pop {r4, pc}
	.align 2, 0

	thumb_func_start __gtdf2
__gtdf2: @ 0x08071D54
	push {r4, lr}
	sub sp, #0x38
	str r0, [sp, #0x28]
	str r1, [sp, #0x2c]
	str r2, [sp, #0x30]
	str r3, [sp, #0x34]
	add r0, sp, #0x28
	mov r1, sp
	bl __unpack_d
	add r0, sp, #0x30
	add r4, sp, #0x14
	adds r1, r4, #0
	bl __unpack_d
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _08071D7C
	movs r1, #1
_08071D7C:
	cmp r1, #0
	bne _08071D8E
	movs r1, #0
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bhi _08071D8A
	movs r1, #1
_08071D8A:
	cmp r1, #0
	beq _08071D94
_08071D8E:
	movs r0, #1
	rsbs r0, r0, #0
	b _08071D9C
_08071D94:
	mov r0, sp
	adds r1, r4, #0
	bl __fpcmp_parts_d
_08071D9C:
	add sp, #0x38
	pop {r4, pc}

	thumb_func_start __gedf2
__gedf2: @ 0x08071DA0
	push {r4, lr}
	sub sp, #0x38
	str r0, [sp, #0x28]
	str r1, [sp, #0x2c]
	str r2, [sp, #0x30]
	str r3, [sp, #0x34]
	add r0, sp, #0x28
	mov r1, sp
	bl __unpack_d
	add r0, sp, #0x30
	add r4, sp, #0x14
	adds r1, r4, #0
	bl __unpack_d
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _08071DC8
	movs r1, #1
_08071DC8:
	cmp r1, #0
	bne _08071DDA
	movs r1, #0
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bhi _08071DD6
	movs r1, #1
_08071DD6:
	cmp r1, #0
	beq _08071DE0
_08071DDA:
	movs r0, #1
	rsbs r0, r0, #0
	b _08071DE8
_08071DE0:
	mov r0, sp
	adds r1, r4, #0
	bl __fpcmp_parts_d
_08071DE8:
	add sp, #0x38
	pop {r4, pc}

	thumb_func_start __ltdf2
__ltdf2: @ 0x08071DEC
	push {r4, lr}
	sub sp, #0x38
	str r0, [sp, #0x28]
	str r1, [sp, #0x2c]
	str r2, [sp, #0x30]
	str r3, [sp, #0x34]
	add r0, sp, #0x28
	mov r1, sp
	bl __unpack_d
	add r0, sp, #0x30
	add r4, sp, #0x14
	adds r1, r4, #0
	bl __unpack_d
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _08071E14
	movs r1, #1
_08071E14:
	cmp r1, #0
	bne _08071E26
	movs r1, #0
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bhi _08071E22
	movs r1, #1
_08071E22:
	cmp r1, #0
	beq _08071E2A
_08071E26:
	movs r0, #1
	b _08071E32
_08071E2A:
	mov r0, sp
	adds r1, r4, #0
	bl __fpcmp_parts_d
_08071E32:
	add sp, #0x38
	pop {r4, pc}
	.align 2, 0

	thumb_func_start __ledf2
__ledf2: @ 0x08071E38
	push {r4, lr}
	sub sp, #0x38
	str r0, [sp, #0x28]
	str r1, [sp, #0x2c]
	str r2, [sp, #0x30]
	str r3, [sp, #0x34]
	add r0, sp, #0x28
	mov r1, sp
	bl __unpack_d
	add r0, sp, #0x30
	add r4, sp, #0x14
	adds r1, r4, #0
	bl __unpack_d
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _08071E60
	movs r1, #1
_08071E60:
	cmp r1, #0
	bne _08071E72
	movs r1, #0
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bhi _08071E6E
	movs r1, #1
_08071E6E:
	cmp r1, #0
	beq _08071E76
_08071E72:
	movs r0, #1
	b _08071E7E
_08071E76:
	mov r0, sp
	adds r1, r4, #0
	bl __fpcmp_parts_d
_08071E7E:
	add sp, #0x38
	pop {r4, pc}
	.align 2, 0

	thumb_func_start __floatsidf
__floatsidf: @ 0x08071E84
	push {r4, r5, lr}
	sub sp, #0x14
	adds r2, r0, #0
	movs r0, #3
	str r0, [sp]
	lsrs r1, r2, #0x1f
	str r1, [sp, #4]
	cmp r2, #0
	bne _08071E9C
	movs r0, #2
	str r0, [sp]
	b _08071EF2
_08071E9C:
	movs r0, #0x3c
	str r0, [sp, #8]
	cmp r1, #0
	beq _08071EC2
	movs r0, #0x80
	lsls r0, r0, #0x18
	cmp r2, r0
	bne _08071EBC
	ldr r1, _08071EB8 @ =0x00000000
	ldr r0, _08071EB4 @ =0xC1E00000
	b _08071EF8
	.align 2, 0
_08071EB4: .4byte 0xC1E00000
_08071EB8: .4byte 0x00000000
_08071EBC:
	rsbs r0, r2, #0
	asrs r1, r0, #0x1f
	b _08071EC6
_08071EC2:
	adds r0, r2, #0
	asrs r1, r2, #0x1f
_08071EC6:
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	ldr r0, [sp, #0x10]
	ldr r1, _08071EFC @ =0x0FFFFFFF
	cmp r0, r1
	bhi _08071EF2
	adds r5, r1, #0
	ldr r4, [sp, #8]
_08071ED6:
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	lsrs r3, r0, #0x1f
	lsls r2, r1, #1
	adds r1, r3, #0
	orrs r1, r2
	lsls r0, r0, #1
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	subs r4, #1
	ldr r0, [sp, #0x10]
	cmp r0, r5
	bls _08071ED6
	str r4, [sp, #8]
_08071EF2:
	mov r0, sp
	bl __pack_d
_08071EF8:
	add sp, #0x14
	pop {r4, r5, pc}
	.align 2, 0
_08071EFC: .4byte 0x0FFFFFFF

	thumb_func_start __fixdfsi
__fixdfsi: @ 0x08071F00
	push {lr}
	sub sp, #0x1c
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	add r0, sp, #0x14
	mov r1, sp
	bl __unpack_d
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #2
	bne _08071F1A
	movs r1, #1
_08071F1A:
	cmp r1, #0
	bne _08071F4E
	movs r1, #0
	cmp r0, #1
	bhi _08071F26
	movs r1, #1
_08071F26:
	cmp r1, #0
	bne _08071F4E
	movs r1, #0
	cmp r0, #4
	bne _08071F32
	movs r1, #1
_08071F32:
	cmp r1, #0
	beq _08071F48
_08071F36:
	ldr r0, [sp, #4]
	ldr r1, _08071F44 @ =0x7FFFFFFF
	cmp r0, #0
	beq _08071F6C
	adds r1, #1
	b _08071F6C
	.align 2, 0
_08071F44: .4byte 0x7FFFFFFF
_08071F48:
	ldr r0, [sp, #8]
	cmp r0, #0
	bge _08071F52
_08071F4E:
	movs r0, #0
	b _08071F6E
_08071F52:
	cmp r0, #0x1e
	bgt _08071F36
	movs r2, #0x3c
	subs r2, r2, r0
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	bl __lshrdi3
	adds r1, r0, #0
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _08071F6C
	rsbs r1, r1, #0
_08071F6C:
	adds r0, r1, #0
_08071F6E:
	add sp, #0x1c
	pop {pc}
	.align 2, 0

	thumb_func_start __negdf2
__negdf2: @ 0x08071F74
	push {lr}
	sub sp, #0x1c
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	add r0, sp, #0x14
	mov r1, sp
	bl __unpack_d
	movs r1, #0
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _08071F8E
	movs r1, #1
_08071F8E:
	str r1, [sp, #4]
	mov r0, sp
	bl __pack_d
	add sp, #0x1c
	pop {pc}
	.align 2, 0

	thumb_func_start __make_dp
__make_dp: @ 0x08071F9C
	sub sp, #4
	push {r4, lr}
	sub sp, #0x14
	str r3, [sp, #0x1c]
	ldr r3, [sp, #0x1c]
	ldr r4, [sp, #0x20]
	str r0, [sp]
	str r1, [sp, #4]
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	str r4, [sp, #0x10]
	mov r0, sp
	bl __pack_d
	add sp, #0x14
	pop {r4}
	pop {r3}
	add sp, #4
	bx r3
	.align 2, 0

	thumb_func_start __truncdfsf2
__truncdfsf2: @ 0x08071FC4
	push {r4, r5, lr}
	sub sp, #0x1c
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	add r0, sp, #0x14
	mov r1, sp
	bl __unpack_d
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x10]
	lsls r5, r3, #2
	lsrs r4, r2, #0x1e
	adds r0, r5, #0
	orrs r0, r4
	adds r5, r0, #0
	ldr r4, _08072004 @ =0x3FFFFFFF
	adds r0, r2, #0
	ands r0, r4
	movs r1, #0
	orrs r0, r1
	cmp r0, #0
	beq _08071FF4
	movs r0, #1
	orrs r5, r0
_08071FF4:
	ldr r0, [sp]
	ldr r1, [sp, #4]
	ldr r2, [sp, #8]
	adds r3, r5, #0
	bl __make_fp
	add sp, #0x1c
	pop {r4, r5, pc}
	.align 2, 0
_08072004: .4byte 0x3FFFFFFF

	@ libgcc/fp-bit.o

	thumb_func_start __pack_f
__pack_f: @ 0x08072008
	push {r4, r5, r6, lr}
	ldr r2, [r0, #0xc]
	ldr r6, [r0, #4]
	movs r5, #0
	movs r1, #0
	ldr r3, [r0]
	cmp r3, #1
	bhi _0807201A
	movs r1, #1
_0807201A:
	cmp r1, #0
	beq _08072028
	movs r5, #0xff
	movs r0, #0x80
	lsls r0, r0, #0xd
	orrs r2, r0
	b _0807208E
_08072028:
	movs r1, #0
	cmp r3, #4
	bne _08072030
	movs r1, #1
_08072030:
	cmp r1, #0
	bne _08072064
	movs r1, #0
	cmp r3, #2
	bne _0807203C
	movs r1, #1
_0807203C:
	cmp r1, #0
	beq _08072044
	movs r2, #0
	b _0807208E
_08072044:
	cmp r2, #0
	beq _0807208E
	ldr r0, [r0, #8]
	movs r3, #0x7e
	rsbs r3, r3, #0
	cmp r0, r3
	bge _08072060
	subs r0, r3, r0
	cmp r0, #0x19
	ble _0807205C
	movs r2, #0
	b _0807208C
_0807205C:
	lsrs r2, r0
	b _0807208C
_08072060:
	cmp r0, #0x7f
	ble _0807206A
_08072064:
	movs r5, #0xff
	movs r2, #0
	b _0807208E
_0807206A:
	adds r5, r0, #0
	adds r5, #0x7f
	movs r0, #0x7f
	ands r0, r2
	cmp r0, #0x40
	bne _08072082
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	beq _08072084
	adds r2, #0x40
	b _08072084
_08072082:
	adds r2, #0x3f
_08072084:
	cmp r2, #0
	bge _0807208C
	lsrs r2, r2, #1
	adds r5, #1
_0807208C:
	lsrs r2, r2, #7
_0807208E:
	ldr r0, _080720B0 @ =0x007FFFFF
	ands r2, r0
	ldr r0, _080720B4 @ =0xFF800000
	ands r4, r0
	orrs r4, r2
	movs r0, #0xff
	ands r5, r0
	lsls r1, r5, #0x17
	ldr r0, _080720B8 @ =0x807FFFFF
	ands r4, r0
	orrs r4, r1
	lsls r1, r6, #0x1f
	ldr r0, _080720BC @ =0x7FFFFFFF
	ands r4, r0
	orrs r4, r1
	adds r0, r4, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_080720B0: .4byte 0x007FFFFF
_080720B4: .4byte 0xFF800000
_080720B8: .4byte 0x807FFFFF
_080720BC: .4byte 0x7FFFFFFF

	thumb_func_start __unpack_f
__unpack_f: @ 0x080720C0
	push {r4, lr}
	adds r3, r1, #0
	ldr r0, [r0]
	lsls r1, r0, #9
	lsrs r2, r1, #9
	lsls r1, r0, #1
	lsrs r1, r1, #0x18
	lsrs r0, r0, #0x1f
	str r0, [r3, #4]
	cmp r1, #0
	bne _08072104
	cmp r2, #0
	bne _080720E0
	movs r0, #2
	str r0, [r3]
	b _08072138
_080720E0:
	adds r4, r1, #0
	subs r4, #0x7e
	str r4, [r3, #8]
	lsls r2, r2, #7
	movs r0, #3
	str r0, [r3]
	ldr r1, _08072100 @ =0x3FFFFFFF
	cmp r2, r1
	bhi _08072120
	adds r0, r4, #0
_080720F4:
	lsls r2, r2, #1
	subs r0, #1
	cmp r2, r1
	bls _080720F4
	str r0, [r3, #8]
	b _08072120
	.align 2, 0
_08072100: .4byte 0x3FFFFFFF
_08072104:
	cmp r1, #0xff
	bne _08072124
	cmp r2, #0
	bne _08072112
	movs r0, #4
	str r0, [r3]
	b _08072138
_08072112:
	movs r0, #0x80
	lsls r0, r0, #0xd
	ands r0, r2
	cmp r0, #0
	beq _0807211E
	movs r0, #1
_0807211E:
	str r0, [r3]
_08072120:
	str r2, [r3, #0xc]
	b _08072138
_08072124:
	adds r0, r1, #0
	subs r0, #0x7f
	str r0, [r3, #8]
	movs r0, #3
	str r0, [r3]
	lsls r0, r2, #7
	movs r1, #0x80
	lsls r1, r1, #0x17
	orrs r0, r1
	str r0, [r3, #0xc]
_08072138:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start _fpadd_parts_0
_fpadd_parts_0: @ 0x0807213C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	adds r7, r1, #0
	adds r5, r2, #0
	movs r0, #0
	ldr r2, [r6]
	cmp r2, #1
	bhi _08072152
	movs r0, #1
_08072152:
	cmp r0, #0
	beq _0807215A
_08072156:
	adds r0, r6, #0
	b _080722B0
_0807215A:
	movs r1, #0
	ldr r0, [r7]
	cmp r0, #1
	bhi _08072164
	movs r1, #1
_08072164:
	cmp r1, #0
	bne _080721D8
	movs r1, #0
	cmp r2, #4
	bne _08072170
	movs r1, #1
_08072170:
	cmp r1, #0
	beq _08072190
	movs r1, #0
	cmp r0, #4
	bne _0807217C
	movs r1, #1
_0807217C:
	cmp r1, #0
	beq _08072156
	ldr r1, [r6, #4]
	ldr r0, [r7, #4]
	cmp r1, r0
	beq _08072156
	ldr r0, _0807218C @ =0x03001E20
	b _080722B0
	.align 2, 0
_0807218C: .4byte 0x03001E20
_08072190:
	movs r1, #0
	cmp r0, #4
	bne _08072198
	movs r1, #1
_08072198:
	cmp r1, #0
	bne _080721D8
	movs r1, #0
	cmp r0, #2
	bne _080721A4
	movs r1, #1
_080721A4:
	cmp r1, #0
	beq _080721CA
	movs r0, #0
	cmp r2, #2
	bne _080721B0
	movs r0, #1
_080721B0:
	cmp r0, #0
	beq _08072156
	adds r1, r5, #0
	adds r0, r6, #0
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldr r0, [r0]
	str r0, [r1]
	ldr r0, [r6, #4]
	ldr r1, [r7, #4]
	ands r0, r1
	str r0, [r5, #4]
	b _080722AE
_080721CA:
	movs r1, #0
	ldr r0, [r6]
	cmp r0, #2
	bne _080721D4
	movs r1, #1
_080721D4:
	cmp r1, #0
	beq _080721DC
_080721D8:
	adds r0, r7, #0
	b _080722B0
_080721DC:
	ldr r1, [r6, #8]
	ldr r3, [r7, #8]
	ldr r2, [r6, #0xc]
	ldr r4, [r7, #0xc]
	subs r0, r1, r3
	cmp r0, #0
	bge _080721EC
	rsbs r0, r0, #0
_080721EC:
	cmp r0, #0x1f
	bgt _08072230
	ldr r6, [r6, #4]
	ldr r7, [r7, #4]
	mov r8, r7
	cmp r1, r3
	ble _08072212
	movs r7, #1
	mov ip, r7
	subs r3, r1, r3
_08072200:
	subs r3, #1
	adds r0, r4, #0
	mov r7, ip
	ands r0, r7
	lsrs r4, r4, #1
	orrs r4, r0
	cmp r3, #0
	bne _08072200
	adds r3, r1, #0
_08072212:
	cmp r3, r1
	ble _08072242
	movs r0, #1
	mov ip, r0
	subs r1, r3, r1
_0807221C:
	subs r1, #1
	adds r0, r2, #0
	mov r7, ip
	ands r0, r7
	lsrs r2, r2, #1
	orrs r2, r0
	cmp r1, #0
	bne _0807221C
	adds r1, r3, #0
	b _08072242
_08072230:
	cmp r1, r3
	ble _08072238
	movs r4, #0
	b _0807223C
_08072238:
	adds r1, r3, #0
	movs r2, #0
_0807223C:
	ldr r6, [r6, #4]
	ldr r7, [r7, #4]
	mov r8, r7
_08072242:
	cmp r6, r8
	beq _0807228C
	cmp r6, #0
	beq _0807224E
	subs r3, r4, r2
	b _08072250
_0807224E:
	subs r3, r2, r4
_08072250:
	cmp r3, #0
	blt _0807225E
	movs r0, #0
	str r0, [r5, #4]
	str r1, [r5, #8]
	str r3, [r5, #0xc]
	b _08072268
_0807225E:
	movs r0, #1
	str r0, [r5, #4]
	str r1, [r5, #8]
	rsbs r0, r3, #0
	str r0, [r5, #0xc]
_08072268:
	ldr r1, [r5, #0xc]
	subs r0, r1, #1
	ldr r2, _08072288 @ =0x3FFFFFFE
	cmp r0, r2
	bhi _08072294
_08072272:
	lsls r0, r1, #1
	str r0, [r5, #0xc]
	ldr r1, [r5, #8]
	subs r1, #1
	str r1, [r5, #8]
	adds r1, r0, #0
	subs r0, r1, #1
	cmp r0, r2
	bls _08072272
	b _08072294
	.align 2, 0
_08072288: .4byte 0x3FFFFFFE
_0807228C:
	str r6, [r5, #4]
	str r1, [r5, #8]
	adds r0, r2, r4
	str r0, [r5, #0xc]
_08072294:
	movs r0, #3
	str r0, [r5]
	ldr r1, [r5, #0xc]
	cmp r1, #0
	bge _080722AE
	movs r0, #1
	ands r0, r1
	lsrs r1, r1, #1
	orrs r0, r1
	str r0, [r5, #0xc]
	ldr r0, [r5, #8]
	adds r0, #1
	str r0, [r5, #8]
_080722AE:
	adds r0, r5, #0
_080722B0:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start __addsf3
__addsf3: @ 0x080722B8
	push {r4, lr}
	sub sp, #0x38
	str r0, [sp, #0x30]
	str r1, [sp, #0x34]
	add r0, sp, #0x30
	mov r1, sp
	bl __unpack_f
	add r0, sp, #0x34
	add r4, sp, #0x10
	adds r1, r4, #0
	bl __unpack_f
	add r2, sp, #0x20
	mov r0, sp
	adds r1, r4, #0
	bl _fpadd_parts_0
	bl __pack_f
	add sp, #0x38
	pop {r4, pc}

	thumb_func_start __subsf3
__subsf3: @ 0x080722E4
	push {r4, lr}
	sub sp, #0x38
	str r0, [sp, #0x30]
	str r1, [sp, #0x34]
	add r0, sp, #0x30
	mov r1, sp
	bl __unpack_f
	add r0, sp, #0x34
	add r4, sp, #0x10
	adds r1, r4, #0
	bl __unpack_f
	ldr r0, [r4, #4]
	movs r1, #1
	eors r0, r1
	str r0, [r4, #4]
	add r2, sp, #0x20
	mov r0, sp
	adds r1, r4, #0
	bl _fpadd_parts_0
	bl __pack_f
	add sp, #0x38
	pop {r4, pc}

	thumb_func_start __mulsf3
__mulsf3: @ 0x08072318
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x38
	str r0, [sp, #0x30]
	str r1, [sp, #0x34]
	add r0, sp, #0x30
	mov r1, sp
	bl __unpack_f
	add r0, sp, #0x34
	add r4, sp, #0x10
	adds r1, r4, #0
	bl __unpack_f
	mov r7, sp
	add r0, sp, #0x20
	mov r8, r0
	movs r0, #0
	ldr r1, [sp]
	mov sb, r8
	cmp r1, #1
	bhi _0807234A
	movs r0, #1
_0807234A:
	cmp r0, #0
	bne _080723A8
	movs r2, #0
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bhi _08072358
	movs r2, #1
_08072358:
	cmp r2, #0
	beq _08072360
	ldr r0, [sp, #4]
	b _080723C8
_08072360:
	movs r2, #0
	cmp r1, #4
	bne _08072368
	movs r2, #1
_08072368:
	cmp r2, #0
	beq _0807237A
	movs r1, #0
	cmp r0, #2
	bne _08072374
	movs r1, #1
_08072374:
	cmp r1, #0
	bne _08072392
	b _080723A8
_0807237A:
	movs r2, #0
	cmp r0, #4
	bne _08072382
	movs r2, #1
_08072382:
	cmp r2, #0
	beq _0807239C
	movs r0, #0
	cmp r1, #2
	bne _0807238E
	movs r0, #1
_0807238E:
	cmp r0, #0
	beq _080723C6
_08072392:
	ldr r0, _08072398 @ =0x03001E20
	b _0807246A
	.align 2, 0
_08072398: .4byte 0x03001E20
_0807239C:
	movs r2, #0
	cmp r1, #2
	bne _080723A4
	movs r2, #1
_080723A4:
	cmp r2, #0
	beq _080723BA
_080723A8:
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x14]
	eors r0, r1
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r1, r1, #0x1f
	str r1, [sp, #4]
	mov r0, sp
	b _0807246A
_080723BA:
	movs r1, #0
	cmp r0, #2
	bne _080723C2
	movs r1, #1
_080723C2:
	cmp r1, #0
	beq _080723D8
_080723C6:
	ldr r0, [r7, #4]
_080723C8:
	ldr r1, [sp, #0x14]
	eors r0, r1
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r1, r1, #0x1f
	str r1, [sp, #0x14]
	adds r0, r4, #0
	b _0807246A
_080723D8:
	ldr r0, [r7, #0xc]
	movs r1, #0
	ldr r2, [sp, #0x1c]
	movs r3, #0
	bl __muldi3
	adds r2, r1, #0
	adds r5, r2, #0
	adds r6, r0, #0
	ldr r4, [r7, #8]
	ldr r0, [sp, #0x18]
	adds r4, r4, r0
	str r4, [sp, #0x28]
	ldr r1, [r7, #4]
	ldr r0, [sp, #0x14]
	eors r1, r0
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	str r0, [sp, #0x24]
	adds r4, #2
	str r4, [sp, #0x28]
	cmp r2, #0
	bge _08072424
	movs r2, #1
	movs r1, #0x80
	lsls r1, r1, #0x18
_0807240E:
	adds r4, #1
	adds r0, r5, #0
	ands r0, r2
	cmp r0, #0
	beq _0807241C
	lsrs r6, r6, #1
	orrs r6, r1
_0807241C:
	lsrs r5, r5, #1
	cmp r5, #0
	blt _0807240E
	str r4, [sp, #0x28]
_08072424:
	ldr r0, _08072478 @ =0x3FFFFFFF
	cmp r5, r0
	bhi _0807244A
	movs r4, #0x80
	lsls r4, r4, #0x18
	movs r3, #1
	adds r2, r0, #0
	ldr r1, [sp, #0x28]
_08072434:
	subs r1, #1
	lsls r5, r5, #1
	adds r0, r6, #0
	ands r0, r4
	cmp r0, #0
	beq _08072442
	orrs r5, r3
_08072442:
	lsls r6, r6, #1
	cmp r5, r2
	bls _08072434
	str r1, [sp, #0x28]
_0807244A:
	movs r0, #0x7f
	ands r0, r5
	cmp r0, #0x40
	bne _08072460
	movs r0, #0x80
	ands r0, r5
	cmp r0, #0
	bne _0807245E
	cmp r6, #0
	beq _08072460
_0807245E:
	adds r5, #0x40
_08072460:
	str r5, [sp, #0x2c]
	movs r0, #3
	mov r1, r8
	str r0, [r1]
	mov r0, sb
_0807246A:
	bl __pack_f
	add sp, #0x38
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08072478: .4byte 0x3FFFFFFF

	thumb_func_start __divsf3
__divsf3: @ 0x0807247C
	push {r4, r5, r6, lr}
	sub sp, #0x28
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	add r0, sp, #0x20
	mov r1, sp
	bl __unpack_f
	add r0, sp, #0x24
	add r5, sp, #0x10
	adds r1, r5, #0
	bl __unpack_f
	mov r4, sp
	movs r0, #0
	ldr r3, [sp]
	cmp r3, #1
	bhi _080724A2
	movs r0, #1
_080724A2:
	cmp r0, #0
	beq _080724AA
	mov r1, sp
	b _0807255C
_080724AA:
	movs r0, #0
	ldr r2, [sp, #0x10]
	adds r6, r2, #0
	cmp r2, #1
	bhi _080724B6
	movs r0, #1
_080724B6:
	cmp r0, #0
	beq _080724BE
	adds r1, r5, #0
	b _0807255C
_080724BE:
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x14]
	eors r0, r1
	str r0, [sp, #4]
	movs r0, #0
	cmp r3, #4
	bne _080724CE
	movs r0, #1
_080724CE:
	cmp r0, #0
	bne _080724DE
	movs r0, #0
	cmp r3, #2
	bne _080724DA
	movs r0, #1
_080724DA:
	cmp r0, #0
	beq _080724F0
_080724DE:
	ldr r0, [r4]
	adds r1, r4, #0
	cmp r0, r6
	bne _0807255C
	ldr r1, _080724EC @ =0x03001E20
	b _0807255C
	.align 2, 0
_080724EC: .4byte 0x03001E20
_080724F0:
	movs r1, #0
	cmp r2, #4
	bne _080724F8
	movs r1, #1
_080724F8:
	cmp r1, #0
	beq _08072504
	str r0, [sp, #0xc]
	str r0, [sp, #8]
	mov r1, sp
	b _0807255C
_08072504:
	movs r0, #0
	cmp r2, #2
	bne _0807250C
	movs r0, #1
_0807250C:
	cmp r0, #0
	beq _08072516
	movs r0, #4
	str r0, [r4]
	b _0807255A
_08072516:
	ldr r1, [r4, #8]
	ldr r0, [sp, #0x18]
	subs r0, r1, r0
	str r0, [r4, #8]
	ldr r2, [r4, #0xc]
	ldr r3, [sp, #0x1c]
	cmp r2, r3
	bhs _0807252C
	lsls r2, r2, #1
	subs r0, #1
	str r0, [r4, #8]
_0807252C:
	movs r0, #0x80
	lsls r0, r0, #0x17
	movs r1, #0
_08072532:
	cmp r2, r3
	blo _0807253A
	orrs r1, r0
	subs r2, r2, r3
_0807253A:
	lsrs r0, r0, #1
	lsls r2, r2, #1
	cmp r0, #0
	bne _08072532
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0x40
	bne _08072558
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08072556
	cmp r2, #0
	beq _08072558
_08072556:
	adds r1, #0x40
_08072558:
	str r1, [r4, #0xc]
_0807255A:
	adds r1, r4, #0
_0807255C:
	adds r0, r1, #0
	bl __pack_f
	add sp, #0x28
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start __fpcmp_parts_f
__fpcmp_parts_f: @ 0x08072568
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	ldr r2, [r4]
	cmp r2, #1
	bhi _08072576
	movs r0, #1
_08072576:
	cmp r0, #0
	bne _08072588
	movs r0, #0
	ldr r3, [r1]
	cmp r3, #1
	bhi _08072584
	movs r0, #1
_08072584:
	cmp r0, #0
	beq _0807258C
_08072588:
	movs r0, #1
	b _0807264A
_0807258C:
	movs r0, #0
	cmp r2, #4
	bne _08072594
	movs r0, #1
_08072594:
	cmp r0, #0
	beq _080725AC
	movs r0, #0
	cmp r3, #4
	bne _080725A0
	movs r0, #1
_080725A0:
	cmp r0, #0
	beq _080725AC
	ldr r0, [r1, #4]
	ldr r1, [r4, #4]
	subs r0, r0, r1
	b _0807264A
_080725AC:
	movs r2, #0
	ldr r0, [r4]
	cmp r0, #4
	bne _080725B6
	movs r2, #1
_080725B6:
	cmp r2, #0
	bne _08072604
	movs r2, #0
	cmp r3, #4
	bne _080725C2
	movs r2, #1
_080725C2:
	cmp r2, #0
	beq _080725D4
_080725C6:
	ldr r0, [r1, #4]
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, #0
	beq _0807260E
	movs r1, #1
	b _0807260E
_080725D4:
	movs r2, #0
	cmp r0, #2
	bne _080725DC
	movs r2, #1
_080725DC:
	cmp r2, #0
	beq _080725EC
	movs r2, #0
	cmp r3, #2
	bne _080725E8
	movs r2, #1
_080725E8:
	cmp r2, #0
	bne _08072648
_080725EC:
	movs r2, #0
	cmp r0, #2
	bne _080725F4
	movs r2, #1
_080725F4:
	cmp r2, #0
	bne _080725C6
	movs r0, #0
	cmp r3, #2
	bne _08072600
	movs r0, #1
_08072600:
	cmp r0, #0
	beq _08072612
_08072604:
	ldr r0, [r4, #4]
	movs r1, #1
	cmp r0, #0
	beq _0807260E
	subs r1, #2
_0807260E:
	adds r0, r1, #0
	b _0807264A
_08072612:
	ldr r3, [r4, #4]
	ldr r0, [r1, #4]
	cmp r3, r0
	beq _08072624
_0807261A:
	movs r0, #1
	cmp r3, #0
	beq _0807264A
	subs r0, #2
	b _0807264A
_08072624:
	ldr r2, [r4, #8]
	ldr r0, [r1, #8]
	cmp r2, r0
	bgt _0807261A
	cmp r2, r0
	bge _0807263C
_08072630:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r3, #0
	beq _0807264A
	movs r0, #1
	b _0807264A
_0807263C:
	ldr r0, [r4, #0xc]
	ldr r1, [r1, #0xc]
	cmp r0, r1
	bhi _0807261A
	cmp r0, r1
	blo _08072630
_08072648:
	movs r0, #0
_0807264A:
	pop {r4, pc}

	thumb_func_start __cmpsf2
__cmpsf2: @ 0x0807264C
	push {r4, lr}
	sub sp, #0x28
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	add r0, sp, #0x20
	mov r1, sp
	bl __unpack_f
	add r0, sp, #0x24
	add r4, sp, #0x10
	adds r1, r4, #0
	bl __unpack_f
	mov r0, sp
	adds r1, r4, #0
	bl __fpcmp_parts_f
	add sp, #0x28
	pop {r4, pc}
	.align 2, 0

	thumb_func_start __eqsf2
__eqsf2: @ 0x08072674
	push {r4, lr}
	sub sp, #0x28
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	add r0, sp, #0x20
	mov r1, sp
	bl __unpack_f
	add r0, sp, #0x24
	add r4, sp, #0x10
	adds r1, r4, #0
	bl __unpack_f
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _08072698
	movs r1, #1
_08072698:
	cmp r1, #0
	bne _080726AA
	movs r1, #0
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bhi _080726A6
	movs r1, #1
_080726A6:
	cmp r1, #0
	beq _080726AE
_080726AA:
	movs r0, #1
	b _080726B6
_080726AE:
	mov r0, sp
	adds r1, r4, #0
	bl __fpcmp_parts_f
_080726B6:
	add sp, #0x28
	pop {r4, pc}
	.align 2, 0

	thumb_func_start __nesf2
__nesf2: @ 0x080726BC
	push {r4, lr}
	sub sp, #0x28
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	add r0, sp, #0x20
	mov r1, sp
	bl __unpack_f
	add r0, sp, #0x24
	add r4, sp, #0x10
	adds r1, r4, #0
	bl __unpack_f
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _080726E0
	movs r1, #1
_080726E0:
	cmp r1, #0
	bne _080726F2
	movs r1, #0
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bhi _080726EE
	movs r1, #1
_080726EE:
	cmp r1, #0
	beq _080726F6
_080726F2:
	movs r0, #1
	b _080726FE
_080726F6:
	mov r0, sp
	adds r1, r4, #0
	bl __fpcmp_parts_f
_080726FE:
	add sp, #0x28
	pop {r4, pc}
	.align 2, 0

	thumb_func_start __gtsf2
__gtsf2: @ 0x08072704
	push {r4, lr}
	sub sp, #0x28
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	add r0, sp, #0x20
	mov r1, sp
	bl __unpack_f
	add r0, sp, #0x24
	add r4, sp, #0x10
	adds r1, r4, #0
	bl __unpack_f
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _08072728
	movs r1, #1
_08072728:
	cmp r1, #0
	bne _0807273A
	movs r1, #0
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bhi _08072736
	movs r1, #1
_08072736:
	cmp r1, #0
	beq _08072740
_0807273A:
	movs r0, #1
	rsbs r0, r0, #0
	b _08072748
_08072740:
	mov r0, sp
	adds r1, r4, #0
	bl __fpcmp_parts_f
_08072748:
	add sp, #0x28
	pop {r4, pc}

	thumb_func_start __gesf2
__gesf2: @ 0x0807274C
	push {r4, lr}
	sub sp, #0x28
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	add r0, sp, #0x20
	mov r1, sp
	bl __unpack_f
	add r0, sp, #0x24
	add r4, sp, #0x10
	adds r1, r4, #0
	bl __unpack_f
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _08072770
	movs r1, #1
_08072770:
	cmp r1, #0
	bne _08072782
	movs r1, #0
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bhi _0807277E
	movs r1, #1
_0807277E:
	cmp r1, #0
	beq _08072788
_08072782:
	movs r0, #1
	rsbs r0, r0, #0
	b _08072790
_08072788:
	mov r0, sp
	adds r1, r4, #0
	bl __fpcmp_parts_f
_08072790:
	add sp, #0x28
	pop {r4, pc}

	thumb_func_start __ltsf2
__ltsf2: @ 0x08072794
	push {r4, lr}
	sub sp, #0x28
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	add r0, sp, #0x20
	mov r1, sp
	bl __unpack_f
	add r0, sp, #0x24
	add r4, sp, #0x10
	adds r1, r4, #0
	bl __unpack_f
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _080727B8
	movs r1, #1
_080727B8:
	cmp r1, #0
	bne _080727CA
	movs r1, #0
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bhi _080727C6
	movs r1, #1
_080727C6:
	cmp r1, #0
	beq _080727CE
_080727CA:
	movs r0, #1
	b _080727D6
_080727CE:
	mov r0, sp
	adds r1, r4, #0
	bl __fpcmp_parts_f
_080727D6:
	add sp, #0x28
	pop {r4, pc}
	.align 2, 0

	thumb_func_start __lesf2
__lesf2: @ 0x080727DC
	push {r4, lr}
	sub sp, #0x28
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	add r0, sp, #0x20
	mov r1, sp
	bl __unpack_f
	add r0, sp, #0x24
	add r4, sp, #0x10
	adds r1, r4, #0
	bl __unpack_f
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _08072800
	movs r1, #1
_08072800:
	cmp r1, #0
	bne _08072812
	movs r1, #0
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bhi _0807280E
	movs r1, #1
_0807280E:
	cmp r1, #0
	beq _08072816
_08072812:
	movs r0, #1
	b _0807281E
_08072816:
	mov r0, sp
	adds r1, r4, #0
	bl __fpcmp_parts_f
_0807281E:
	add sp, #0x28
	pop {r4, pc}
	.align 2, 0

	thumb_func_start __floatsisf
__floatsisf: @ 0x08072824
	push {lr}
	sub sp, #0x10
	adds r1, r0, #0
	movs r0, #3
	str r0, [sp]
	lsrs r2, r1, #0x1f
	str r2, [sp, #4]
	cmp r1, #0
	bne _0807283C
	movs r0, #2
	str r0, [sp]
	b _08072874
_0807283C:
	movs r0, #0x1e
	str r0, [sp, #8]
	cmp r2, #0
	beq _0807285A
	movs r0, #0x80
	lsls r0, r0, #0x18
	cmp r1, r0
	bne _08072854
	ldr r0, _08072850 @ =0xCF000000
	b _0807287A
	.align 2, 0
_08072850: .4byte 0xCF000000
_08072854:
	rsbs r0, r1, #0
	str r0, [sp, #0xc]
	b _0807285C
_0807285A:
	str r1, [sp, #0xc]
_0807285C:
	ldr r2, [sp, #0xc]
	ldr r3, _08072880 @ =0x3FFFFFFF
	cmp r2, r3
	bhi _08072874
	ldr r1, [sp, #8]
_08072866:
	lsls r0, r2, #1
	subs r1, #1
	adds r2, r0, #0
	cmp r0, r3
	bls _08072866
	str r1, [sp, #8]
	str r0, [sp, #0xc]
_08072874:
	mov r0, sp
	bl __pack_f
_0807287A:
	add sp, #0x10
	pop {pc}
	.align 2, 0
_08072880: .4byte 0x3FFFFFFF

	thumb_func_start __fixsfsi
__fixsfsi: @ 0x08072884
	push {lr}
	sub sp, #0x14
	str r0, [sp, #0x10]
	add r0, sp, #0x10
	mov r1, sp
	bl __unpack_f
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #2
	bne _0807289C
	movs r1, #1
_0807289C:
	cmp r1, #0
	bne _080728CE
	movs r1, #0
	cmp r0, #1
	bhi _080728A8
	movs r1, #1
_080728A8:
	cmp r1, #0
	bne _080728CE
	movs r1, #0
	cmp r0, #4
	bne _080728B4
	movs r1, #1
_080728B4:
	cmp r1, #0
	beq _080728C8
_080728B8:
	ldr r0, [sp, #4]
	ldr r1, _080728C4 @ =0x7FFFFFFF
	cmp r0, #0
	beq _080728E6
	adds r1, #1
	b _080728E6
	.align 2, 0
_080728C4: .4byte 0x7FFFFFFF
_080728C8:
	ldr r1, [sp, #8]
	cmp r1, #0
	bge _080728D2
_080728CE:
	movs r0, #0
	b _080728E8
_080728D2:
	cmp r1, #0x1e
	bgt _080728B8
	movs r0, #0x1e
	subs r0, r0, r1
	ldr r1, [sp, #0xc]
	lsrs r1, r0
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _080728E6
	rsbs r1, r1, #0
_080728E6:
	adds r0, r1, #0
_080728E8:
	add sp, #0x14
	pop {pc}

	thumb_func_start __negsf2
__negsf2: @ 0x080728EC
	push {lr}
	sub sp, #0x14
	str r0, [sp, #0x10]
	add r0, sp, #0x10
	mov r1, sp
	bl __unpack_f
	movs r1, #0
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _08072904
	movs r1, #1
_08072904:
	str r1, [sp, #4]
	mov r0, sp
	bl __pack_f
	add sp, #0x14
	pop {pc}

	thumb_func_start __make_fp
__make_fp: @ 0x08072910
	push {lr}
	sub sp, #0x10
	str r0, [sp]
	str r1, [sp, #4]
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	mov r0, sp
	bl __pack_f
	add sp, #0x10
	pop {pc}
	.align 2, 0

	thumb_func_start __extendsfdf2
__extendsfdf2: @ 0x08072928
	push {r4, r5, r6, lr}
	sub sp, #0x18
	str r0, [sp, #0x14]
	add r0, sp, #0x14
	add r1, sp, #4
	bl __unpack_f
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x10]
	movs r4, #0
	lsrs r6, r3, #2
	lsls r5, r4, #0x1e
	adds r4, r6, #0
	orrs r4, r5
	lsls r3, r3, #0x1e
	str r4, [sp]
	bl __make_dp
	add sp, #0x18
	pop {r4, r5, r6, pc}

	@ libgcc/_lshrdi3.o

	thumb_func_start __lshrdi3
__lshrdi3: @ 0x08072954
	push {r4, r5, r6, lr}
	adds r6, r1, #0
	adds r5, r0, #0
	cmp r2, #0
	beq _08072984
	movs r0, #0x20
	subs r0, r0, r2
	cmp r0, #0
	bgt _08072970
	movs r4, #0
	rsbs r0, r0, #0
	adds r3, r6, #0
	lsrs r3, r0
	b _08072980
_08072970:
	adds r1, r6, #0
	lsls r1, r0
	adds r4, r6, #0
	lsrs r4, r2
	adds r0, r5, #0
	lsrs r0, r2
	adds r3, r0, #0
	orrs r3, r1
_08072980:
	adds r1, r4, #0
	adds r0, r3, #0
_08072984:
	pop {r4, r5, r6, pc}
	.align 2, 0

	@ libgcc/_muldi3.o

	thumb_func_start __muldi3
__muldi3: @ 0x08072988
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp]
	str r1, [sp, #4]
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	ldr r3, [sp]
	ldr r0, _080729F4 @ =0x0000FFFF
	mov ip, r0
	adds r2, r3, #0
	ands r2, r0
	lsrs r3, r3, #0x10
	ldr r1, [sp, #8]
	adds r0, r1, #0
	mov r4, ip
	ands r0, r4
	lsrs r1, r1, #0x10
	adds r5, r2, #0
	muls r5, r0, r5
	adds r4, r2, #0
	muls r4, r1, r4
	adds r2, r3, #0
	muls r2, r0, r2
	muls r3, r1, r3
	lsrs r0, r5, #0x10
	adds r4, r4, r0
	adds r4, r4, r2
	cmp r4, r2
	bhs _080729C8
	movs r0, #0x80
	lsls r0, r0, #9
	adds r3, r3, r0
_080729C8:
	lsrs r0, r4, #0x10
	adds r7, r3, r0
	mov r1, ip
	ands r4, r1
	lsls r0, r4, #0x10
	ands r5, r1
	adds r6, r0, #0
	orrs r6, r5
	adds r1, r7, #0
	adds r0, r6, #0
	ldr r3, [sp]
	ldr r4, [sp, #0xc]
	adds r2, r3, #0
	muls r2, r4, r2
	ldr r5, [sp, #4]
	ldr r4, [sp, #8]
	adds r3, r5, #0
	muls r3, r4, r3
	adds r2, r2, r3
	adds r1, r7, r2
	add sp, #0x10
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080729F4: .4byte 0x0000FFFF

	@ libgcc/_negdi2.o

	thumb_func_start __negdi2
__negdi2: @ 0x080729F8
	push {r4, lr}
	rsbs r2, r0, #0
	adds r3, r2, #0
	rsbs r1, r1, #0
	cmp r2, #0
	beq _08072A06
	subs r1, #1
_08072A06:
	adds r4, r1, #0
	adds r1, r4, #0
	adds r0, r3, #0
	pop {r4, pc}
	.align 2, 0

	@ string/memcpy.o

	thumb_func_start memcpy
memcpy: @ 0x08072A10
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r5, #0
	adds r3, r1, #0
	cmp r2, #0xf
	bls _08072A50
	adds r0, r3, #0
	orrs r0, r5
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _08072A50
	adds r1, r5, #0
_08072A2A:
	ldm r3!, {r0}
	stm r1!, {r0}
	ldm r3!, {r0}
	stm r1!, {r0}
	ldm r3!, {r0}
	stm r1!, {r0}
	ldm r3!, {r0}
	stm r1!, {r0}
	subs r2, #0x10
	cmp r2, #0xf
	bhi _08072A2A
	cmp r2, #3
	bls _08072A4E
_08072A44:
	ldm r3!, {r0}
	stm r1!, {r0}
	subs r2, #4
	cmp r2, #3
	bhi _08072A44
_08072A4E:
	adds r4, r1, #0
_08072A50:
	subs r2, #1
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	beq _08072A6A
	adds r1, r0, #0
_08072A5C:
	ldrb r0, [r3]
	strb r0, [r4]
	adds r3, #1
	adds r4, #1
	subs r2, #1
	cmp r2, r1
	bne _08072A5C
_08072A6A:
	adds r0, r5, #0
	pop {r4, r5, pc}
	.align 2, 0

	@ string/memset.o

	thumb_func_start memset
memset: @ 0x08072A70
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r3, r5, #0
	cmp r2, #3
	bls _08072AB6
	movs r0, #3
	ands r0, r5
	cmp r0, #0
	bne _08072AB6
	adds r1, r5, #0
	movs r0, #0xff
	ands r4, r0
	lsls r3, r4, #8
	orrs r3, r4
	lsls r0, r3, #0x10
	orrs r3, r0
	cmp r2, #0xf
	bls _08072AAA
_08072A96:
	stm r1!, {r3}
	stm r1!, {r3}
	stm r1!, {r3}
	stm r1!, {r3}
	subs r2, #0x10
	cmp r2, #0xf
	bhi _08072A96
	b _08072AAA
_08072AA6:
	stm r1!, {r3}
	subs r2, #4
_08072AAA:
	cmp r2, #3
	bhi _08072AA6
	adds r3, r1, #0
	b _08072AB6
_08072AB2:
	strb r4, [r3]
	adds r3, #1
_08072AB6:
	adds r0, r2, #0
	subs r2, #1
	cmp r0, #0
	bne _08072AB2
	adds r0, r5, #0
	pop {r4, r5, pc}
	.align 2, 0

	@ stdlib/rand.o

	thumb_func_start srand
srand: @ 0x08072AC4
	ldr r1, _08072ACC @ =0x0203A74C
	ldr r1, [r1]
	str r0, [r1, #0x58]
	bx lr
	.align 2, 0
_08072ACC: .4byte 0x0203A74C

	thumb_func_start rand
rand: @ 0x08072AD0
	ldr r0, _08072AE8 @ =0x0203A74C
	ldr r2, [r0]
	ldr r1, [r2, #0x58]
	ldr r0, _08072AEC @ =0x41C64E6D
	muls r0, r1, r0
	ldr r1, _08072AF0 @ =0x00003039
	adds r0, r0, r1
	str r0, [r2, #0x58]
	ldr r1, _08072AF4 @ =0x7FFFFFFF
	ands r0, r1
	bx lr
	.align 2, 0
_08072AE8: .4byte 0x0203A74C
_08072AEC: .4byte 0x41C64E6D
_08072AF0: .4byte 0x00003039
_08072AF4: .4byte 0x7FFFFFFF

	@ stdio/sprintf.o

	thumb_func_start _sprintf_r
_sprintf_r: @ 0x08072AF8
	push {r2, r3}
	push {r4, r5, lr}
	sub sp, #0x58
	ldr r4, [sp, #0x64]
	mov r3, sp
	movs r5, #0
	movs r2, #0x82
	lsls r2, r2, #2
	strh r2, [r3, #0xc]
	str r1, [sp]
	str r1, [sp, #0x10]
	ldr r1, _08072B30 @ =0x7FFFFFFF
	str r1, [sp, #8]
	str r1, [sp, #0x14]
	str r0, [sp, #0x54]
	add r2, sp, #0x68
	mov r0, sp
	adds r1, r4, #0
	bl vfprintf
	ldr r1, [sp]
	strb r5, [r1]
	add sp, #0x58
	pop {r4, r5}
	pop {r3}
	add sp, #8
	bx r3
	.align 2, 0
_08072B30: .4byte 0x7FFFFFFF

	thumb_func_start sprintf
sprintf: @ 0x08072B34
	push {r1, r2, r3}
	push {r4, lr}
	sub sp, #0x58
	ldr r1, [sp, #0x60]
	mov r3, sp
	movs r4, #0
	movs r2, #0x82
	lsls r2, r2, #2
	strh r2, [r3, #0xc]
	str r0, [sp]
	str r0, [sp, #0x10]
	ldr r0, _08072B6C @ =0x7FFFFFFF
	str r0, [sp, #8]
	str r0, [sp, #0x14]
	ldr r0, _08072B70 @ =0x0203A74C
	ldr r0, [r0]
	str r0, [sp, #0x54]
	add r2, sp, #0x64
	mov r0, sp
	bl vfprintf
	ldr r1, [sp]
	strb r4, [r1]
	add sp, #0x58
	pop {r4}
	pop {r3}
	add sp, #0xc
	bx r3
	.align 2, 0
_08072B6C: .4byte 0x7FFFFFFF
_08072B70: .4byte 0x0203A74C

	@ stdio/vfprintf.o

	thumb_func_start __sprint
__sprint: @ 0x08072B74
	push {r4, lr}
	adds r4, r1, #0
	ldr r1, [r4, #8]
	cmp r1, #0
	beq _08072B8C
	adds r1, r4, #0
	bl __sfvwrite
	movs r1, #0
	str r1, [r4, #8]
	str r1, [r4, #4]
	b _08072B90
_08072B8C:
	str r1, [r4, #4]
	movs r0, #0
_08072B90:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start __sbprintf
__sbprintf: @ 0x08072B94
	push {r4, r5, lr}
	ldr r4, _08072C04 @ =0xFFFFFBA8
	add sp, r4
	adds r5, r0, #0
	ldr r0, [r5, #0x54]
	str r0, [sp, #0x54]
	mov r3, sp
	movs r0, #3
	rsbs r0, r0, #0
	ldrh r4, [r5, #0xc]
	ands r0, r4
	movs r4, #0
	strh r0, [r3, #0xc]
	ldrh r0, [r5, #0xe]
	strh r0, [r3, #0xe]
	ldr r0, [r5, #0x1c]
	str r0, [sp, #0x1c]
	ldr r0, [r5, #0x24]
	str r0, [sp, #0x24]
	add r0, sp, #0x58
	str r0, [sp]
	str r0, [sp, #0x10]
	movs r0, #0x80
	lsls r0, r0, #3
	str r0, [sp, #8]
	str r0, [sp, #0x14]
	str r4, [sp, #0x18]
	mov r0, sp
	bl vfprintf
	adds r4, r0, #0
	cmp r4, #0
	blt _08072BE4
	mov r0, sp
	bl fflush
	cmp r0, #0
	beq _08072BE4
	movs r4, #1
	rsbs r4, r4, #0
_08072BE4:
	mov r1, sp
	movs r0, #0x40
	ldrh r1, [r1, #0xc]
	ands r0, r1
	cmp r0, #0
	beq _08072BF8
	movs r0, #0x40
	ldrh r1, [r5, #0xc]
	orrs r0, r1
	strh r0, [r5, #0xc]
_08072BF8:
	adds r0, r4, #0
	movs r3, #0x8b
	lsls r3, r3, #3
	add sp, r3
	pop {r4, r5, pc}
	.align 2, 0
_08072C04: .4byte 0xFFFFFBA8

	thumb_func_start vfprintf
vfprintf: @ 0x08072C08
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r3, r2, #0
	ldr r0, [r4, #0x54]
	adds r1, r4, #0
	adds r2, r5, #0
	bl _vfprintf_r
	pop {r4, r5, pc}

	thumb_func_start _vfprintf_r
_vfprintf_r: @ 0x08072C1C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r4, _08072C84 @ =0xFFFFFDE0
	add sp, r4
	str r0, [sp, #0x1dc]
	str r1, [sp, #0x1e0]
	adds r4, r2, #0
	mov sl, r3
	bl localeconv
	ldr r0, [r0]
	str r0, [sp, #0x1f8]
	movs r1, #0
	add r0, sp, #0x1d0
	str r1, [r0]
	ldr r1, [sp, #0x1e0]
	ldr r0, [r1, #0x54]
	cmp r0, #0
	bne _08072C4E
	ldr r0, _08072C88 @ =0x0203A74C
	ldr r0, [r0]
	str r0, [r1, #0x54]
_08072C4E:
	ldr r2, [sp, #0x1e0]
	ldr r1, [r2, #0x54]
	ldr r0, [r1, #0x38]
	cmp r0, #0
	bne _08072C5E
	adds r0, r1, #0
	bl __sinit
_08072C5E:
	movs r0, #8
	ldr r1, [sp, #0x1e0]
	ldrh r1, [r1, #0xc]
	ands r0, r1
	cmp r0, #0
	beq _08072C72
	ldr r2, [sp, #0x1e0]
	ldr r0, [r2, #0x10]
	cmp r0, #0
	bne _08072C8C
_08072C72:
	ldr r0, [sp, #0x1e0]
	bl __swsetup
	cmp r0, #0
	beq _08072C8C
	movs r0, #1
	rsbs r0, r0, #0
	bl _08073B6C
	.align 2, 0
_08072C84: .4byte 0xFFFFFDE0
_08072C88: .4byte 0x0203A74C
_08072C8C:
	movs r0, #0x1a
	ldr r1, [sp, #0x1e0]
	ldrh r1, [r1, #0xc]
	ands r0, r1
	cmp r0, #0xa
	bne _08072CB0
	ldr r2, [sp, #0x1e0]
	movs r1, #0xe
	ldrsh r0, [r2, r1]
	cmp r0, #0
	blt _08072CB0
	adds r0, r2, #0
	adds r1, r4, #0
	mov r2, sl
	bl __sbprintf
	bl _08073B6C
_08072CB0:
	str r4, [sp, #0x1e4]
	add r1, sp, #0x1c
	add r5, sp, #0x28
	str r5, [sp, #0x1c]
	movs r0, #0
	str r0, [r1, #8]
	str r0, [r1, #4]
	movs r2, #0
	str r2, [sp, #0x1f0]
	mov sb, r1
	movs r4, #0xe6
	lsls r4, r4, #1
	add r4, sp
	str r4, [sp, #0x214]
	movs r0, #0xe8
	lsls r0, r0, #1
	add r0, sp
	str r0, [sp, #0x218]
_08072CD4:
	ldr r1, [sp, #0x1e4]
	mov r8, r1
_08072CD8:
	ldr r0, _08072D84 @ =0x0203A74C
	ldr r0, [r0]
	ldr r1, _08072D88 @ =0x0203A750
	ldr r3, [r1]
	ldr r2, [sp, #0x218]
	str r2, [sp]
	ldr r1, [sp, #0x214]
	ldr r2, [sp, #0x1e4]
	bl _mbtowc_r
	adds r4, r0, #0
	cmp r4, #0
	ble _08072D06
	ldr r0, [sp, #0x1e4]
	adds r0, r0, r4
	str r0, [sp, #0x1e4]
	add r0, sp, #0x1cc
	ldr r0, [r0]
	cmp r0, #0x25
	bne _08072CD8
	ldr r1, [sp, #0x1e4]
	subs r1, #1
	str r1, [sp, #0x1e4]
_08072D06:
	ldr r2, [sp, #0x1e4]
	mov r0, r8
	subs r6, r2, r0
	cmp r6, #0
	beq _08072D3E
	str r0, [r5]
	str r6, [r5, #4]
	mov r1, sb
	ldr r0, [r1, #8]
	adds r0, r0, r6
	str r0, [r1, #8]
	adds r5, #8
	ldr r0, [r1, #4]
	adds r0, #1
	str r0, [r1, #4]
	cmp r0, #7
	ble _08072D38
	ldr r0, [sp, #0x1e0]
	bl __sprint
	cmp r0, #0
	beq _08072D36
	bl _08073B58
_08072D36:
	add r5, sp, #0x28
_08072D38:
	ldr r2, [sp, #0x1f0]
	adds r2, r2, r6
	str r2, [sp, #0x1f0]
_08072D3E:
	cmp r4, #0
	bgt _08072D46
	bl _08073B40
_08072D46:
	ldr r4, [sp, #0x1e4]
	adds r4, #1
	str r4, [sp, #0x1e4]
	movs r0, #0
	str r0, [sp, #0x1ec]
	movs r1, #0
	str r1, [sp, #0x208]
	movs r2, #0
	str r2, [sp, #0x1f4]
	movs r6, #1
	rsbs r6, r6, #0
	ldr r0, _08072D8C @ =0x000001C9
	add r0, sp
	strb r2, [r0]
_08072D62:
	ldr r0, [sp, #0x1e4]
	ldrb r0, [r0]
	str r0, [sp, #0x1e8]
	ldr r1, [sp, #0x1e4]
	adds r1, #1
	str r1, [sp, #0x1e4]
_08072D6E:
	ldr r0, [sp, #0x1e8]
	subs r0, #0x20
	cmp r0, #0x58
	bls _08072D78
	b _0807342A
_08072D78:
	lsls r0, r0, #2
	ldr r1, _08072D90 @ =_08072D94
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08072D84: .4byte 0x0203A74C
_08072D88: .4byte 0x0203A750
_08072D8C: .4byte 0x000001C9
_08072D90: .4byte _08072D94
_08072D94: @ jump table
	.4byte _08072EF8 @ case 0
	.4byte _0807342A @ case 1
	.4byte _0807342A @ case 2
	.4byte _08072F10 @ case 3
	.4byte _0807342A @ case 4
	.4byte _0807342A @ case 5
	.4byte _0807342A @ case 6
	.4byte _0807342A @ case 7
	.4byte _0807342A @ case 8
	.4byte _0807342A @ case 9
	.4byte _08072F14 @ case 10
	.4byte _08072F2E @ case 11
	.4byte _0807342A @ case 12
	.4byte _08072F2A @ case 13
	.4byte _08072F3C @ case 14
	.4byte _0807342A @ case 15
	.4byte _08072F9C @ case 16
	.4byte _08072FA0 @ case 17
	.4byte _08072FA0 @ case 18
	.4byte _08072FA0 @ case 19
	.4byte _08072FA0 @ case 20
	.4byte _08072FA0 @ case 21
	.4byte _08072FA0 @ case 22
	.4byte _08072FA0 @ case 23
	.4byte _08072FA0 @ case 24
	.4byte _08072FA0 @ case 25
	.4byte _0807342A @ case 26
	.4byte _0807342A @ case 27
	.4byte _0807342A @ case 28
	.4byte _0807342A @ case 29
	.4byte _0807342A @ case 30
	.4byte _0807342A @ case 31
	.4byte _0807342A @ case 32
	.4byte _0807342A @ case 33
	.4byte _0807342A @ case 34
	.4byte _0807342A @ case 35
	.4byte _0807300A @ case 36
	.4byte _0807305C @ case 37
	.4byte _0807342A @ case 38
	.4byte _0807305C @ case 39
	.4byte _0807342A @ case 40
	.4byte _0807342A @ case 41
	.4byte _0807342A @ case 42
	.4byte _0807342A @ case 43
	.4byte _08072FC4 @ case 44
	.4byte _0807342A @ case 45
	.4byte _0807342A @ case 46
	.4byte _08073212 @ case 47
	.4byte _0807342A @ case 48
	.4byte _0807342A @ case 49
	.4byte _0807342A @ case 50
	.4byte _0807342A @ case 51
	.4byte _0807342A @ case 52
	.4byte _080732AA @ case 53
	.4byte _0807342A @ case 54
	.4byte _0807342A @ case 55
	.4byte _080732E6 @ case 56
	.4byte _0807342A @ case 57
	.4byte _0807342A @ case 58
	.4byte _0807342A @ case 59
	.4byte _0807342A @ case 60
	.4byte _0807342A @ case 61
	.4byte _0807342A @ case 62
	.4byte _0807342A @ case 63
	.4byte _0807342A @ case 64
	.4byte _0807342A @ case 65
	.4byte _0807342A @ case 66
	.4byte _08072FF8 @ case 67
	.4byte _08073012 @ case 68
	.4byte _0807305C @ case 69
	.4byte _0807305C @ case 70
	.4byte _0807305C @ case 71
	.4byte _08072FC8 @ case 72
	.4byte _08073012 @ case 73
	.4byte _0807342A @ case 74
	.4byte _0807342A @ case 75
	.4byte _08072FCC @ case 76
	.4byte _0807342A @ case 77
	.4byte _080731CC @ case 78
	.4byte _0807321A @ case 79
	.4byte _08073248 @ case 80
	.4byte _08072FEE @ case 81
	.4byte _0807342A @ case 82
	.4byte _08073268 @ case 83
	.4byte _0807342A @ case 84
	.4byte _080732B2 @ case 85
	.4byte _0807342A @ case 86
	.4byte _0807342A @ case 87
	.4byte _080732F0 @ case 88
_08072EF8:
	ldr r1, _08072F0C @ =0x000001C9
	add r1, sp
	ldrb r0, [r1]
	cmp r0, #0
	beq _08072F04
	b _08072D62
_08072F04:
	movs r0, #0x20
	strb r0, [r1]
	b _08072D62
	.align 2, 0
_08072F0C: .4byte 0x000001C9
_08072F10:
	movs r0, #1
	b _08072FDC
_08072F14:
	movs r4, #4
	add sl, r4
	mov r0, sl
	subs r0, #4
	ldr r0, [r0]
	str r0, [sp, #0x1f4]
	cmp r0, #0
	blt _08072F26
	b _08072D62
_08072F26:
	rsbs r0, r0, #0
	str r0, [sp, #0x1f4]
_08072F2A:
	movs r0, #4
	b _08072FF0
_08072F2E:
	ldr r1, _08072F38 @ =0x000001C9
	add r1, sp
	movs r0, #0x2b
	strb r0, [r1]
	b _08072D62
	.align 2, 0
_08072F38: .4byte 0x000001C9
_08072F3C:
	ldr r2, [sp, #0x1e4]
	ldrb r2, [r2]
	str r2, [sp, #0x1e8]
	ldr r4, [sp, #0x1e4]
	adds r4, #1
	str r4, [sp, #0x1e4]
	cmp r2, #0x2a
	bne _08072F66
	movs r0, #4
	add sl, r0
	mov r0, sl
	subs r0, #4
	ldr r4, [r0]
	adds r6, r4, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r6, r0
	blt _08072F62
	b _08072D62
_08072F62:
	adds r6, r0, #0
	b _08072D62
_08072F66:
	movs r4, #0
	ldr r0, [sp, #0x1e8]
	b _08072F86
_08072F6C:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #1
	subs r0, #0x30
	ldr r1, [sp, #0x1e8]
	adds r4, r0, r1
	ldr r2, [sp, #0x1e4]
	ldrb r2, [r2]
	str r2, [sp, #0x1e8]
	ldr r0, [sp, #0x1e4]
	adds r0, #1
	str r0, [sp, #0x1e4]
	adds r0, r2, #0
_08072F86:
	subs r0, #0x30
	cmp r0, #9
	bls _08072F6C
	adds r6, r4, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r6, r0
	blt _08072F98
	b _08072D6E
_08072F98:
	adds r6, r0, #0
	b _08072D6E
_08072F9C:
	movs r0, #0x80
	b _08072FF0
_08072FA0:
	movs r4, #0
_08072FA2:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #1
	subs r0, #0x30
	ldr r2, [sp, #0x1e8]
	adds r4, r0, r2
	ldr r0, [sp, #0x1e4]
	ldrb r0, [r0]
	str r0, [sp, #0x1e8]
	ldr r1, [sp, #0x1e4]
	adds r1, #1
	str r1, [sp, #0x1e4]
	subs r0, #0x30
	cmp r0, #9
	bls _08072FA2
	str r4, [sp, #0x1f4]
	b _08072D6E
_08072FC4:
	movs r0, #8
	b _08072FDC
_08072FC8:
	movs r0, #0x40
	b _08072FE6
_08072FCC:
	ldr r0, [sp, #0x1e4]
	ldrb r0, [r0]
	cmp r0, #0x6c
	bne _08072FE4
	ldr r1, [sp, #0x1e4]
	adds r1, #1
	str r1, [sp, #0x1e4]
	movs r0, #0x20
_08072FDC:
	ldr r2, [sp, #0x1ec]
	orrs r2, r0
	str r2, [sp, #0x1ec]
	b _08072D62
_08072FE4:
	movs r0, #0x10
_08072FE6:
	ldr r4, [sp, #0x1ec]
	orrs r4, r0
	str r4, [sp, #0x1ec]
	b _08072D62
_08072FEE:
	movs r0, #0x20
_08072FF0:
	ldr r1, [sp, #0x1ec]
	orrs r1, r0
	str r1, [sp, #0x1ec]
	b _08072D62
_08072FF8:
	add r2, sp, #0x68
	mov r8, r2
	movs r4, #4
	add sl, r4
	mov r0, sl
	subs r0, #4
	ldr r0, [r0]
	strb r0, [r2]
	b _08073438
_0807300A:
	movs r0, #0x10
	ldr r1, [sp, #0x1ec]
	orrs r1, r0
	str r1, [sp, #0x1ec]
_08073012:
	movs r0, #0x10
	ldr r2, [sp, #0x1ec]
	ands r0, r2
	cmp r0, #0
	beq _08073022
	movs r4, #4
	add sl, r4
	b _0807303E
_08073022:
	movs r0, #0x40
	ldr r1, [sp, #0x1ec]
	ands r0, r1
	cmp r0, #0
	beq _0807303A
	movs r2, #4
	add sl, r2
	mov r0, sl
	subs r0, #4
	movs r1, #0
	ldrsh r4, [r0, r1]
	b _08073044
_0807303A:
	movs r2, #4
	add sl, r2
_0807303E:
	mov r0, sl
	subs r0, #4
	ldr r4, [r0]
_08073044:
	cmp r4, #0
	bge _08073052
	rsbs r4, r4, #0
	ldr r1, _08073058 @ =0x000001C9
	add r1, sp
	movs r0, #0x2d
	strb r0, [r1]
_08073052:
	movs r2, #1
	b _0807333E
	.align 2, 0
_08073058: .4byte 0x000001C9
_0807305C:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r6, r0
	bne _08073068
	movs r6, #6
	b _08073078
_08073068:
	ldr r4, [sp, #0x1e8]
	cmp r4, #0x67
	beq _08073072
	cmp r4, #0x47
	bne _08073078
_08073072:
	cmp r6, #0
	bne _08073078
	movs r6, #1
_08073078:
	movs r0, #8
	ldr r1, [sp, #0x1ec]
	ands r0, r1
	movs r2, #8
	add sl, r2
	mov r0, sl
	subs r0, #8
	ldr r1, [r0]
	ldr r2, [r0, #4]
	str r1, [sp, #0x1fc]
	str r2, [sp, #0x200]
	ldr r0, [sp, #0x1fc]
	ldr r1, [sp, #0x200]
	bl isinf
	cmp r0, #0
	beq _080730CC
	ldr r3, _080730C0 @ =0x00000000
	ldr r2, _080730BC @ =0x00000000
	ldr r0, [sp, #0x1fc]
	ldr r1, [sp, #0x200]
	bl __ltdf2
	cmp r0, #0
	bge _080730B2
	ldr r1, _080730C4 @ =0x000001C9
	add r1, sp
	movs r0, #0x2d
	strb r0, [r1]
_080730B2:
	ldr r2, _080730C8 @ =0x082AB82C
	mov r8, r2
	movs r3, #3
	b _08073442
	.align 2, 0
_080730BC: .4byte 0x00000000
_080730C0: .4byte 0x00000000
_080730C4: .4byte 0x000001C9
_080730C8: .4byte 0x082AB82C
_080730CC:
	ldr r0, [sp, #0x1fc]
	ldr r1, [sp, #0x200]
	bl isnan
	cmp r0, #0
	beq _080730E4
	ldr r4, _080730E0 @ =0x082AB830
	mov r8, r4
	movs r3, #3
	b _08073442
	.align 2, 0
_080730E0: .4byte 0x082AB830
_080730E4:
	movs r0, #0x80
	lsls r0, r0, #1
	ldr r1, [sp, #0x1ec]
	orrs r1, r0
	str r1, [sp, #0x1ec]
	str r1, [sp]
	add r0, sp, #0x1c8
	str r0, [sp, #4]
	add r0, sp, #0x1d4
	str r0, [sp, #8]
	ldr r2, [sp, #0x1e8]
	str r2, [sp, #0xc]
	add r0, sp, #0x1d8
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x1dc]
	ldr r1, [sp, #0x1fc]
	ldr r2, [sp, #0x200]
	adds r3, r6, #0
	bl cvt
	mov r8, r0
	ldr r4, [sp, #0x1e8]
	cmp r4, #0x67
	beq _08073118
	cmp r4, #0x47
	bne _0807313A
_08073118:
	add r0, sp, #0x1d4
	ldr r1, [r0]
	movs r0, #4
	rsbs r0, r0, #0
	cmp r1, r0
	ble _08073128
	cmp r1, r6
	ble _08073136
_08073128:
	movs r0, #0x45
	ldr r1, [sp, #0x1e8]
	cmp r1, #0x67
	bne _08073132
	movs r0, #0x65
_08073132:
	str r0, [sp, #0x1e8]
	b _0807313A
_08073136:
	movs r2, #0x67
	str r2, [sp, #0x1e8]
_0807313A:
	ldr r4, [sp, #0x1e8]
	cmp r4, #0x65
	bgt _08073160
	add r0, sp, #0x1d4
	ldr r1, [r0]
	subs r1, #1
	str r1, [r0]
	add r0, sp, #0x14
	ldr r2, [sp, #0x1e8]
	bl exponent
	str r0, [sp, #0x204]
	add r0, sp, #0x1d8
	ldr r0, [r0]
	ldr r1, [sp, #0x204]
	adds r3, r1, r0
	cmp r0, #1
	bgt _080731A0
	b _08073196
_08073160:
	ldr r4, [sp, #0x1e8]
	cmp r4, #0x66
	bne _08073188
	add r0, sp, #0x1d4
	ldr r0, [r0]
	cmp r0, #0
	ble _08073184
	adds r3, r0, #0
	cmp r6, #0
	bne _0807317E
	movs r0, #1
	ldr r1, [sp, #0x1ec]
	ands r0, r1
	cmp r0, #0
	beq _080731B0
_0807317E:
	adds r0, r3, #1
	adds r3, r0, r6
	b _080731B0
_08073184:
	adds r3, r6, #2
	b _080731B0
_08073188:
	add r0, sp, #0x1d4
	ldr r1, [r0]
	add r0, sp, #0x1d8
	ldr r0, [r0]
	cmp r1, r0
	blt _080731A4
	adds r3, r1, #0
_08073196:
	movs r0, #1
	ldr r2, [sp, #0x1ec]
	ands r0, r2
	cmp r0, #0
	beq _080731B0
_080731A0:
	adds r3, #1
	b _080731B0
_080731A4:
	cmp r1, #0
	bgt _080731AE
	adds r0, #2
	subs r3, r0, r1
	b _080731B0
_080731AE:
	adds r3, r0, #1
_080731B0:
	add r0, sp, #0x1c8
	ldrb r0, [r0]
	adds r7, r5, #0
	adds r7, #8
	cmp r0, #0
	bne _080731BE
	b _08073446
_080731BE:
	ldr r1, _080731C8 @ =0x000001C9
	add r1, sp
	movs r0, #0x2d
	strb r0, [r1]
	b _08073446
	.align 2, 0
_080731C8: .4byte 0x000001C9
_080731CC:
	movs r0, #0x10
	ldr r4, [sp, #0x1ec]
	ands r0, r4
	cmp r0, #0
	beq _080731E6
	movs r0, #4
	add sl, r0
	mov r0, sl
	subs r0, #4
	ldr r0, [r0]
	ldr r1, [sp, #0x1f0]
	str r1, [r0]
	b _08072CD4
_080731E6:
	movs r0, #0x40
	ldr r2, [sp, #0x1ec]
	ands r2, r0
	cmp r2, #0
	beq _08073202
	movs r4, #4
	add sl, r4
	mov r0, sl
	subs r0, #4
	ldr r0, [r0]
	add r1, sp, #0x1f0
	ldrh r1, [r1]
	strh r1, [r0]
	b _08072CD4
_08073202:
	movs r2, #4
	add sl, r2
	mov r0, sl
	subs r0, #4
	ldr r0, [r0]
	ldr r4, [sp, #0x1f0]
	str r4, [r0]
	b _08072CD4
_08073212:
	movs r0, #0x10
	ldr r1, [sp, #0x1ec]
	orrs r1, r0
	str r1, [sp, #0x1ec]
_0807321A:
	movs r0, #0x10
	ldr r2, [sp, #0x1ec]
	ands r0, r2
	cmp r0, #0
	bne _0807323A
	movs r0, #0x40
	ldr r1, [sp, #0x1ec]
	ands r0, r1
	cmp r0, #0
	beq _0807323A
	movs r2, #4
	add sl, r2
	mov r0, sl
	subs r0, #4
	ldrh r4, [r0]
	b _08073244
_0807323A:
	movs r4, #4
	add sl, r4
	mov r0, sl
	subs r0, #4
	ldr r4, [r0]
_08073244:
	movs r2, #0
	b _08073336
_08073248:
	movs r0, #4
	add sl, r0
	mov r0, sl
	subs r0, #4
	ldr r4, [r0]
	movs r2, #2
	ldr r1, _08073264 @ =0x082AB834
	str r1, [sp, #0x210]
	ldr r0, [sp, #0x1ec]
	orrs r0, r2
	str r0, [sp, #0x1ec]
	movs r1, #0x78
	str r1, [sp, #0x1e8]
	b _08073336
	.align 2, 0
_08073264: .4byte 0x082AB834
_08073268:
	movs r2, #4
	add sl, r2
	mov r0, sl
	subs r0, #4
	ldr r0, [r0]
	mov r8, r0
	cmp r0, #0
	bne _0807327C
	ldr r4, _0807329C @ =0x082AB848
	mov r8, r4
_0807327C:
	cmp r6, #0
	blt _080732A0
	mov r0, r8
	movs r1, #0
	adds r2, r6, #0
	bl memchr
	cmp r0, #0
	beq _08073298
	mov r1, r8
	subs r3, r0, r1
	cmp r3, r6
	bgt _08073298
	b _0807343A
_08073298:
	adds r3, r6, #0
	b _0807343A
	.align 2, 0
_0807329C: .4byte 0x082AB848
_080732A0:
	mov r0, r8
	bl strlen
	adds r3, r0, #0
	b _0807343A
_080732AA:
	movs r0, #0x10
	ldr r2, [sp, #0x1ec]
	orrs r2, r0
	str r2, [sp, #0x1ec]
_080732B2:
	movs r0, #0x10
	ldr r4, [sp, #0x1ec]
	ands r0, r4
	cmp r0, #0
	beq _080732C2
	movs r0, #4
	add sl, r0
	b _080732DC
_080732C2:
	movs r0, #0x40
	ldr r1, [sp, #0x1ec]
	ands r0, r1
	cmp r0, #0
	beq _080732D8
	movs r2, #4
	add sl, r2
	mov r0, sl
	subs r0, #4
	ldrh r4, [r0]
	b _080732E2
_080732D8:
	movs r4, #4
	add sl, r4
_080732DC:
	mov r0, sl
	subs r0, #4
	ldr r4, [r0]
_080732E2:
	movs r2, #1
	b _08073336
_080732E6:
	ldr r0, _080732EC @ =0x082AB850
	str r0, [sp, #0x210]
	b _080732F4
	.align 2, 0
_080732EC: .4byte 0x082AB850
_080732F0:
	ldr r1, _08073314 @ =0x082AB834
	str r1, [sp, #0x210]
_080732F4:
	movs r0, #0x10
	ldr r2, [sp, #0x1ec]
	ands r0, r2
	cmp r0, #0
	bne _08073318
	movs r0, #0x40
	ldr r1, [sp, #0x1ec]
	ands r0, r1
	cmp r0, #0
	beq _08073318
	movs r2, #4
	add sl, r2
	mov r0, sl
	subs r0, #4
	ldrh r4, [r0]
	b _08073322
	.align 2, 0
_08073314: .4byte 0x082AB834
_08073318:
	movs r4, #4
	add sl, r4
	mov r0, sl
	subs r0, #4
	ldr r4, [r0]
_08073322:
	movs r2, #2
	movs r0, #1
	ldr r1, [sp, #0x1ec]
	ands r0, r1
	cmp r0, #0
	beq _08073336
	cmp r4, #0
	beq _08073336
	orrs r1, r2
	str r1, [sp, #0x1ec]
_08073336:
	ldr r1, _08073380 @ =0x000001C9
	add r1, sp
	movs r0, #0
	strb r0, [r1]
_0807333E:
	str r6, [sp, #0x208]
	cmp r6, #0
	blt _0807334E
	movs r0, #0x81
	rsbs r0, r0, #0
	ldr r1, [sp, #0x1ec]
	ands r1, r0
	str r1, [sp, #0x1ec]
_0807334E:
	movs r0, #0xe2
	lsls r0, r0, #1
	add r0, sp
	mov r8, r0
	cmp r4, #0
	bne _08073364
	adds r7, r5, #0
	adds r7, #8
	ldr r1, [sp, #0x208]
	cmp r1, #0
	beq _0807341C
_08073364:
	cmp r2, #1
	beq _080733C2
	cmp r2, #1
	blo _08073388
	cmp r2, #2
	beq _080733FC
	ldr r2, _08073384 @ =0x082AB864
	mov r8, r2
	mov r0, r8
	bl strlen
	adds r3, r0, #0
	b _08073442
	.align 2, 0
_08073380: .4byte 0x000001C9
_08073384: .4byte 0x082AB864
_08073388:
	adds r7, r5, #0
	adds r7, #8
	movs r2, #7
_0807338E:
	movs r0, #1
	rsbs r0, r0, #0
	add r8, r0
	adds r0, r4, #0
	ands r0, r2
	adds r1, r0, #0
	adds r1, #0x30
	mov r0, r8
	strb r1, [r0]
	lsrs r4, r4, #3
	cmp r4, #0
	bne _0807338E
	movs r0, #1
	ldr r2, [sp, #0x1ec]
	ands r0, r2
	cmp r0, #0
	beq _0807341C
	cmp r1, #0x30
	beq _0807341C
	movs r4, #1
	rsbs r4, r4, #0
	add r8, r4
	movs r0, #0x30
	mov r1, r8
	strb r0, [r1]
	b _0807341C
_080733C2:
	adds r7, r5, #0
	adds r7, #8
	cmp r4, #9
	bls _080733EC
_080733CA:
	movs r2, #1
	rsbs r2, r2, #0
	add r8, r2
	adds r0, r4, #0
	movs r1, #0xa
	bl __umodsi3
	adds r0, #0x30
	mov r1, r8
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #0xa
	bl __udivsi3
	adds r4, r0, #0
	cmp r4, #9
	bhi _080733CA
_080733EC:
	movs r2, #1
	rsbs r2, r2, #0
	add r8, r2
	adds r0, r4, #0
	adds r0, #0x30
	mov r4, r8
	strb r0, [r4]
	b _0807341C
_080733FC:
	adds r7, r5, #0
	adds r7, #8
	movs r1, #0xf
_08073402:
	movs r0, #1
	rsbs r0, r0, #0
	add r8, r0
	adds r0, r4, #0
	ands r0, r1
	ldr r2, [sp, #0x210]
	adds r0, r2, r0
	ldrb r0, [r0]
	mov r2, r8
	strb r0, [r2]
	lsrs r4, r4, #4
	cmp r4, #0
	bne _08073402
_0807341C:
	add r4, sp, #0x14
	mov r1, r8
	subs r0, r4, r1
	movs r2, #0xd8
	lsls r2, r2, #1
	adds r3, r0, r2
	b _08073446
_0807342A:
	ldr r4, [sp, #0x1e8]
	cmp r4, #0
	bne _08073432
	b _08073B40
_08073432:
	add r0, sp, #0x68
	mov r8, r0
	strb r4, [r0]
_08073438:
	movs r3, #1
_0807343A:
	ldr r1, _08073464 @ =0x000001C9
	add r1, sp
	movs r0, #0
	strb r0, [r1]
_08073442:
	adds r7, r5, #0
	adds r7, #8
_08073446:
	str r3, [sp, #0x20c]
	ldr r2, [sp, #0x208]
	cmp r3, r2
	bge _08073450
	str r2, [sp, #0x20c]
_08073450:
	ldr r0, _08073464 @ =0x000001C9
	add r0, sp
	ldrb r0, [r0]
	cmp r0, #0
	beq _08073468
	ldr r4, [sp, #0x20c]
	adds r4, #1
	str r4, [sp, #0x20c]
	b _08073478
	.align 2, 0
_08073464: .4byte 0x000001C9
_08073468:
	movs r0, #2
	ldr r1, [sp, #0x1ec]
	ands r0, r1
	cmp r0, #0
	beq _08073478
	ldr r2, [sp, #0x20c]
	adds r2, #2
	str r2, [sp, #0x20c]
_08073478:
	movs r0, #0x84
	ldr r4, [sp, #0x1ec]
	ands r0, r4
	cmp r0, #0
	bne _080734F8
	ldr r0, [sp, #0x1f4]
	ldr r1, [sp, #0x20c]
	subs r4, r0, r1
	cmp r4, #0
	ble _080734F8
	ldr r1, _08073524 @ =0x082AB80C
	cmp r4, #0x10
	ble _080734CC
	mov r6, sb
_08073494:
	str r1, [r5]
	movs r0, #0x10
	str r0, [r5, #4]
	ldr r0, [r6, #8]
	adds r0, #0x10
	str r0, [r6, #8]
	adds r5, r7, #0
	ldr r0, [r6, #4]
	adds r0, #1
	str r0, [r6, #4]
	cmp r0, #7
	ble _080734C2
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	str r3, [sp, #0x21c]
	bl __sprint
	ldr r3, [sp, #0x21c]
	cmp r0, #0
	beq _080734BE
	b _08073B58
_080734BE:
	add r5, sp, #0x28
	ldr r1, _08073524 @ =0x082AB80C
_080734C2:
	subs r4, #0x10
	adds r7, r5, #0
	adds r7, #8
	cmp r4, #0x10
	bgt _08073494
_080734CC:
	str r1, [r5]
	str r4, [r5, #4]
	mov r2, sb
	ldr r0, [r2, #8]
	adds r0, r0, r4
	str r0, [r2, #8]
	adds r5, r7, #0
	ldr r0, [r2, #4]
	adds r0, #1
	str r0, [r2, #4]
	cmp r0, #7
	ble _080734F8
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	str r3, [sp, #0x21c]
	bl __sprint
	ldr r3, [sp, #0x21c]
	cmp r0, #0
	beq _080734F6
	b _08073B58
_080734F6:
	add r5, sp, #0x28
_080734F8:
	ldr r1, _08073528 @ =0x000001C9
	add r1, sp
	ldrb r0, [r1]
	cmp r0, #0
	beq _0807352C
	str r1, [r5]
	movs r0, #1
	str r0, [r5, #4]
	mov r4, sb
	ldr r0, [r4, #8]
	adds r0, #1
	str r0, [r4, #8]
	adds r5, #8
	ldr r0, [r4, #4]
	adds r0, #1
	str r0, [r4, #4]
	cmp r0, #7
	ble _0807356C
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	b _0807355C
	.align 2, 0
_08073524: .4byte 0x082AB80C
_08073528: .4byte 0x000001C9
_0807352C:
	movs r2, #2
	ldr r0, [sp, #0x1ec]
	ands r0, r2
	cmp r0, #0
	beq _0807356C
	add r1, sp, #0x1c4
	movs r0, #0x30
	strb r0, [r1]
	add r0, sp, #0x1e8
	ldrb r0, [r0]
	strb r0, [r1, #1]
	str r1, [r5]
	str r2, [r5, #4]
	mov r1, sb
	ldr r0, [r1, #8]
	adds r0, #2
	str r0, [r1, #8]
	adds r5, #8
	ldr r0, [r1, #4]
	adds r0, #1
	str r0, [r1, #4]
	cmp r0, #7
	ble _0807356C
	ldr r0, [sp, #0x1e0]
_0807355C:
	str r3, [sp, #0x21c]
	bl __sprint
	ldr r3, [sp, #0x21c]
	cmp r0, #0
	beq _0807356A
	b _08073B58
_0807356A:
	add r5, sp, #0x28
_0807356C:
	movs r0, #0x84
	ldr r2, [sp, #0x1ec]
	ands r0, r2
	cmp r0, #0x80
	bne _080735E8
	ldr r0, [sp, #0x1f4]
	ldr r1, [sp, #0x20c]
	subs r4, r0, r1
	cmp r4, #0
	ble _080735E8
	ldr r1, _08073684 @ =0x082AB81C
	cmp r4, #0x10
	ble _080735BC
	mov r6, sb
_08073588:
	str r1, [r5]
	movs r0, #0x10
	str r0, [r5, #4]
	ldr r0, [r6, #8]
	adds r0, #0x10
	str r0, [r6, #8]
	adds r5, #8
	ldr r0, [r6, #4]
	adds r0, #1
	str r0, [r6, #4]
	cmp r0, #7
	ble _080735B6
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	str r3, [sp, #0x21c]
	bl __sprint
	ldr r3, [sp, #0x21c]
	cmp r0, #0
	beq _080735B2
	b _08073B58
_080735B2:
	add r5, sp, #0x28
	ldr r1, _08073684 @ =0x082AB81C
_080735B6:
	subs r4, #0x10
	cmp r4, #0x10
	bgt _08073588
_080735BC:
	str r1, [r5]
	str r4, [r5, #4]
	mov r2, sb
	ldr r0, [r2, #8]
	adds r0, r0, r4
	str r0, [r2, #8]
	adds r5, #8
	ldr r0, [r2, #4]
	adds r0, #1
	str r0, [r2, #4]
	cmp r0, #7
	ble _080735E8
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	str r3, [sp, #0x21c]
	bl __sprint
	ldr r3, [sp, #0x21c]
	cmp r0, #0
	beq _080735E6
	b _08073B58
_080735E6:
	add r5, sp, #0x28
_080735E8:
	ldr r0, [sp, #0x208]
	subs r4, r0, r3
	cmp r4, #0
	ble _08073656
	ldr r1, _08073684 @ =0x082AB81C
	cmp r4, #0x10
	ble _0807362C
	mov r6, sb
_080735F8:
	str r1, [r5]
	movs r0, #0x10
	str r0, [r5, #4]
	ldr r0, [r6, #8]
	adds r0, #0x10
	str r0, [r6, #8]
	adds r5, #8
	ldr r0, [r6, #4]
	adds r0, #1
	str r0, [r6, #4]
	cmp r0, #7
	ble _08073626
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	str r3, [sp, #0x21c]
	bl __sprint
	ldr r3, [sp, #0x21c]
	cmp r0, #0
	beq _08073622
	b _08073B58
_08073622:
	add r5, sp, #0x28
	ldr r1, _08073684 @ =0x082AB81C
_08073626:
	subs r4, #0x10
	cmp r4, #0x10
	bgt _080735F8
_0807362C:
	str r1, [r5]
	str r4, [r5, #4]
	mov r1, sb
	ldr r0, [r1, #8]
	adds r0, r0, r4
	str r0, [r1, #8]
	adds r5, #8
	ldr r0, [r1, #4]
	adds r0, #1
	str r0, [r1, #4]
	cmp r0, #7
	ble _08073656
	ldr r0, [sp, #0x1e0]
	str r3, [sp, #0x21c]
	bl __sprint
	ldr r3, [sp, #0x21c]
	cmp r0, #0
	beq _08073654
	b _08073B58
_08073654:
	add r5, sp, #0x28
_08073656:
	movs r0, #0x80
	lsls r0, r0, #1
	ldr r2, [sp, #0x1ec]
	ands r0, r2
	cmp r0, #0
	bne _08073688
	mov r4, r8
	str r4, [r5]
	str r3, [r5, #4]
	mov r1, sb
	ldr r0, [r1, #8]
	adds r0, r0, r3
	str r0, [r1, #8]
	adds r5, #8
	ldr r0, [r1, #4]
	adds r0, #1
	str r0, [r1, #4]
	cmp r0, #7
	bgt _0807367E
	b _08073A9E
_0807367E:
	ldr r0, [sp, #0x1e0]
	b _08073A94
	.align 2, 0
_08073684: .4byte 0x082AB81C
_08073688:
	ldr r2, [sp, #0x1e8]
	cmp r2, #0x65
	bgt _08073690
	b _08073974
_08073690:
	ldr r3, _0807375C @ =0x00000000
	ldr r2, _08073758 @ =0x00000000
	ldr r0, [sp, #0x1fc]
	ldr r1, [sp, #0x200]
	bl __eqdf2
	cmp r0, #0
	bne _08073768
	ldr r0, _08073760 @ =0x082AB880
	str r0, [r5]
	movs r6, #1
	str r6, [r5, #4]
	mov r4, sb
	ldr r0, [r4, #8]
	adds r0, #1
	str r0, [r4, #8]
	adds r5, #8
	ldr r0, [r4, #4]
	adds r0, #1
	str r0, [r4, #4]
	cmp r0, #7
	ble _080736CC
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	bl __sprint
	cmp r0, #0
	beq _080736CA
	b _08073B58
_080736CA:
	add r5, sp, #0x28
_080736CC:
	add r0, sp, #0x1d4
	ldr r1, [r0]
	add r4, sp, #0x1d8
	ldr r0, [r4]
	cmp r1, r0
	blt _080736E2
	ldr r0, [sp, #0x1ec]
	ands r0, r6
	cmp r0, #0
	bne _080736E2
	b _08073A9E
_080736E2:
	ldr r0, [sp, #0x1f8]
	str r0, [r5]
	str r6, [r5, #4]
	mov r1, sb
	ldr r0, [r1, #8]
	adds r0, #1
	str r0, [r1, #8]
	adds r5, #8
	ldr r0, [r1, #4]
	adds r0, #1
	str r0, [r1, #4]
	cmp r0, #7
	ble _0807370A
	ldr r0, [sp, #0x1e0]
	bl __sprint
	cmp r0, #0
	beq _08073708
	b _08073B58
_08073708:
	add r5, sp, #0x28
_0807370A:
	ldr r0, [r4]
	subs r4, r0, #1
	cmp r4, #0
	bgt _08073714
	b _08073A9E
_08073714:
	ldr r1, _08073764 @ =0x082AB81C
	cmp r4, #0x10
	ble _0807374C
	mov r6, sb
_0807371C:
	str r1, [r5]
	movs r0, #0x10
	str r0, [r5, #4]
	ldr r0, [r6, #8]
	adds r0, #0x10
	str r0, [r6, #8]
	adds r5, #8
	ldr r0, [r6, #4]
	adds r0, #1
	str r0, [r6, #4]
	cmp r0, #7
	ble _08073746
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	bl __sprint
	cmp r0, #0
	beq _08073742
	b _08073B58
_08073742:
	add r5, sp, #0x28
	ldr r1, _08073764 @ =0x082AB81C
_08073746:
	subs r4, #0x10
	cmp r4, #0x10
	bgt _0807371C
_0807374C:
	str r1, [r5]
	str r4, [r5, #4]
	mov r2, sb
	ldr r0, [r2, #8]
	adds r0, r0, r4
	b _08073A82
	.align 2, 0
_08073758: .4byte 0x00000000
_0807375C: .4byte 0x00000000
_08073760: .4byte 0x082AB880
_08073764: .4byte 0x082AB81C
_08073768:
	add r6, sp, #0x1d4
	ldr r2, [r6]
	cmp r2, #0
	bgt _08073850
	ldr r0, _08073848 @ =0x082AB880
	str r0, [r5]
	movs r4, #1
	str r4, [r5, #4]
	mov r1, sb
	ldr r0, [r1, #8]
	adds r0, #1
	str r0, [r1, #8]
	adds r5, #8
	ldr r0, [r1, #4]
	adds r0, #1
	str r0, [r1, #4]
	cmp r0, #7
	ble _0807379A
	ldr r0, [sp, #0x1e0]
	bl __sprint
	cmp r0, #0
	beq _08073798
	b _08073B58
_08073798:
	add r5, sp, #0x28
_0807379A:
	ldr r2, [sp, #0x1f8]
	str r2, [r5]
	str r4, [r5, #4]
	mov r4, sb
	ldr r0, [r4, #8]
	adds r0, #1
	str r0, [r4, #8]
	adds r5, #8
	ldr r0, [r4, #4]
	adds r0, #1
	str r0, [r4, #4]
	cmp r0, #7
	ble _080737C4
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	bl __sprint
	cmp r0, #0
	beq _080737C2
	b _08073B58
_080737C2:
	add r5, sp, #0x28
_080737C4:
	ldr r0, [r6]
	rsbs r4, r0, #0
	cmp r4, #0
	ble _0807382A
	ldr r1, _0807384C @ =0x082AB81C
	cmp r4, #0x10
	ble _08073804
	mov r6, sb
_080737D4:
	str r1, [r5]
	movs r0, #0x10
	str r0, [r5, #4]
	ldr r0, [r6, #8]
	adds r0, #0x10
	str r0, [r6, #8]
	adds r5, #8
	ldr r0, [r6, #4]
	adds r0, #1
	str r0, [r6, #4]
	cmp r0, #7
	ble _080737FE
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	bl __sprint
	cmp r0, #0
	beq _080737FA
	b _08073B58
_080737FA:
	add r5, sp, #0x28
	ldr r1, _0807384C @ =0x082AB81C
_080737FE:
	subs r4, #0x10
	cmp r4, #0x10
	bgt _080737D4
_08073804:
	str r1, [r5]
	str r4, [r5, #4]
	mov r1, sb
	ldr r0, [r1, #8]
	adds r0, r0, r4
	str r0, [r1, #8]
	adds r5, #8
	ldr r0, [r1, #4]
	adds r0, #1
	str r0, [r1, #4]
	cmp r0, #7
	ble _0807382A
	ldr r0, [sp, #0x1e0]
	bl __sprint
	cmp r0, #0
	beq _08073828
	b _08073B58
_08073828:
	add r5, sp, #0x28
_0807382A:
	mov r2, r8
	str r2, [r5]
	add r0, sp, #0x1d8
	ldr r1, [r0]
	str r1, [r5, #4]
	mov r4, sb
	ldr r0, [r4, #8]
	adds r0, r0, r1
	str r0, [r4, #8]
	adds r5, #8
	ldr r0, [r4, #4]
	adds r0, #1
	str r0, [r4, #4]
	b _08073A8C
	.align 2, 0
_08073848: .4byte 0x082AB880
_0807384C: .4byte 0x082AB81C
_08073850:
	add r4, sp, #0x1d8
	ldr r1, [r4]
	cmp r2, r1
	blt _0807390C
	mov r0, r8
	str r0, [r5]
	str r1, [r5, #4]
	mov r2, sb
	ldr r0, [r2, #8]
	adds r0, r0, r1
	str r0, [r2, #8]
	adds r5, #8
	ldr r0, [r2, #4]
	adds r0, #1
	str r0, [r2, #4]
	cmp r0, #7
	ble _08073882
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	bl __sprint
	cmp r0, #0
	beq _08073880
	b _08073B58
_08073880:
	add r5, sp, #0x28
_08073882:
	ldr r1, [r6]
	ldr r0, [r4]
	subs r4, r1, r0
	cmp r4, #0
	ble _080738EA
	ldr r1, _08073904 @ =0x082AB81C
	cmp r4, #0x10
	ble _080738C4
	mov r6, sb
_08073894:
	str r1, [r5]
	movs r0, #0x10
	str r0, [r5, #4]
	ldr r0, [r6, #8]
	adds r0, #0x10
	str r0, [r6, #8]
	adds r5, #8
	ldr r0, [r6, #4]
	adds r0, #1
	str r0, [r6, #4]
	cmp r0, #7
	ble _080738BE
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	bl __sprint
	cmp r0, #0
	beq _080738BA
	b _08073B58
_080738BA:
	add r5, sp, #0x28
	ldr r1, _08073904 @ =0x082AB81C
_080738BE:
	subs r4, #0x10
	cmp r4, #0x10
	bgt _08073894
_080738C4:
	str r1, [r5]
	str r4, [r5, #4]
	mov r1, sb
	ldr r0, [r1, #8]
	adds r0, r0, r4
	str r0, [r1, #8]
	adds r5, #8
	ldr r0, [r1, #4]
	adds r0, #1
	str r0, [r1, #4]
	cmp r0, #7
	ble _080738EA
	ldr r0, [sp, #0x1e0]
	bl __sprint
	cmp r0, #0
	beq _080738E8
	b _08073B58
_080738E8:
	add r5, sp, #0x28
_080738EA:
	movs r1, #1
	ldr r0, [sp, #0x1ec]
	ands r0, r1
	cmp r0, #0
	bne _080738F6
	b _08073A9E
_080738F6:
	ldr r0, _08073908 @ =0x082AB884
	str r0, [r5]
	str r1, [r5, #4]
	mov r2, sb
	ldr r0, [r2, #8]
	adds r0, #1
	b _08073A82
	.align 2, 0
_08073904: .4byte 0x082AB81C
_08073908: .4byte 0x082AB884
_0807390C:
	mov r0, r8
	str r0, [r5]
	str r2, [r5, #4]
	mov r1, sb
	ldr r0, [r1, #8]
	adds r0, r0, r2
	str r0, [r1, #8]
	adds r5, #8
	ldr r0, [r1, #4]
	adds r0, #1
	str r0, [r1, #4]
	cmp r0, #7
	ble _08073934
	ldr r0, [sp, #0x1e0]
	bl __sprint
	cmp r0, #0
	beq _08073932
	b _08073B58
_08073932:
	add r5, sp, #0x28
_08073934:
	ldr r0, [r6]
	add r8, r0
	ldr r0, _08073970 @ =0x082AB884
	str r0, [r5]
	movs r0, #1
	str r0, [r5, #4]
	mov r2, sb
	ldr r0, [r2, #8]
	adds r0, #1
	str r0, [r2, #8]
	adds r5, #8
	ldr r0, [r2, #4]
	adds r0, #1
	str r0, [r2, #4]
	cmp r0, #7
	ble _08073964
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	bl __sprint
	cmp r0, #0
	beq _08073962
	b _08073B58
_08073962:
	add r5, sp, #0x28
_08073964:
	mov r0, r8
	str r0, [r5]
	ldr r1, [r4]
	ldr r0, [r6]
	subs r1, r1, r0
	b _08073A7A
	.align 2, 0
_08073970: .4byte 0x082AB884
_08073974:
	add r4, sp, #0x1d8
	ldr r0, [r4]
	cmp r0, #1
	bgt _08073986
	movs r1, #1
	ldr r0, [sp, #0x1ec]
	ands r0, r1
	cmp r0, #0
	beq _08073A4C
_08073986:
	add r1, sp, #0x1c4
	mov r2, r8
	ldrb r0, [r2]
	strb r0, [r1]
	movs r0, #1
	add r8, r0
	movs r0, #0x2e
	strb r0, [r1, #1]
	str r1, [r5]
	movs r0, #2
	str r0, [r5, #4]
	mov r1, sb
	ldr r0, [r1, #8]
	adds r0, #2
	str r0, [r1, #8]
	adds r5, #8
	ldr r0, [r1, #4]
	adds r0, #1
	str r0, [r1, #4]
	cmp r0, #7
	ble _080739BE
	ldr r0, [sp, #0x1e0]
	bl __sprint
	cmp r0, #0
	beq _080739BC
	b _08073B58
_080739BC:
	add r5, sp, #0x28
_080739BE:
	ldr r3, _080739E8 @ =0x00000000
	ldr r2, _080739E4 @ =0x00000000
	ldr r0, [sp, #0x1fc]
	ldr r1, [sp, #0x200]
	bl __nedf2
	cmp r0, #0
	beq _080739EC
	mov r2, r8
	str r2, [r5]
	ldr r1, [r4]
	subs r0, r1, #1
	str r0, [r5, #4]
	mov r4, sb
	ldr r0, [r4, #8]
	subs r0, #1
	adds r0, r0, r1
	b _08073A58
	.align 2, 0
_080739E4: .4byte 0x00000000
_080739E8: .4byte 0x00000000
_080739EC:
	ldr r0, [r4]
	subs r4, r0, #1
	cmp r4, #0
	ble _08073A74
	ldr r1, _08073A48 @ =0x082AB81C
	cmp r4, #0x10
	ble _08073A2C
	mov r6, sb
_080739FC:
	str r1, [r5]
	movs r0, #0x10
	str r0, [r5, #4]
	ldr r0, [r6, #8]
	adds r0, #0x10
	str r0, [r6, #8]
	adds r5, #8
	ldr r0, [r6, #4]
	adds r0, #1
	str r0, [r6, #4]
	cmp r0, #7
	ble _08073A26
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	bl __sprint
	cmp r0, #0
	beq _08073A22
	b _08073B58
_08073A22:
	add r5, sp, #0x28
	ldr r1, _08073A48 @ =0x082AB81C
_08073A26:
	subs r4, #0x10
	cmp r4, #0x10
	bgt _080739FC
_08073A2C:
	str r1, [r5]
	str r4, [r5, #4]
	mov r1, sb
	ldr r0, [r1, #8]
	adds r0, r0, r4
	str r0, [r1, #8]
	adds r5, #8
	ldr r0, [r1, #4]
	adds r0, #1
	str r0, [r1, #4]
	cmp r0, #7
	ble _08073A74
	ldr r0, [sp, #0x1e0]
	b _08073A6A
	.align 2, 0
_08073A48: .4byte 0x082AB81C
_08073A4C:
	mov r2, r8
	str r2, [r5]
	str r1, [r5, #4]
	mov r4, sb
	ldr r0, [r4, #8]
	adds r0, #1
_08073A58:
	str r0, [r4, #8]
	adds r5, #8
	ldr r0, [r4, #4]
	adds r0, #1
	str r0, [r4, #4]
	cmp r0, #7
	ble _08073A74
	ldr r0, [sp, #0x1e0]
	mov r1, sb
_08073A6A:
	bl __sprint
	cmp r0, #0
	bne _08073B58
	add r5, sp, #0x28
_08073A74:
	add r0, sp, #0x14
	str r0, [r5]
	ldr r1, [sp, #0x204]
_08073A7A:
	str r1, [r5, #4]
	mov r2, sb
	ldr r0, [r2, #8]
	adds r0, r0, r1
_08073A82:
	str r0, [r2, #8]
	adds r5, #8
	ldr r0, [r2, #4]
	adds r0, #1
	str r0, [r2, #4]
_08073A8C:
	cmp r0, #7
	ble _08073A9E
	ldr r0, [sp, #0x1e0]
	mov r1, sb
_08073A94:
	bl __sprint
	cmp r0, #0
	bne _08073B58
	add r5, sp, #0x28
_08073A9E:
	movs r0, #4
	ldr r4, [sp, #0x1ec]
	ands r4, r0
	cmp r4, #0
	beq _08073B0A
	ldr r0, [sp, #0x1f4]
	ldr r1, [sp, #0x20c]
	subs r4, r0, r1
	cmp r4, #0
	ble _08073B0A
	ldr r1, _08073B3C @ =0x082AB80C
	cmp r4, #0x10
	ble _08073AE8
	mov r6, sb
_08073ABA:
	str r1, [r5]
	movs r0, #0x10
	str r0, [r5, #4]
	ldr r0, [r6, #8]
	adds r0, #0x10
	str r0, [r6, #8]
	adds r5, #8
	ldr r0, [r6, #4]
	adds r0, #1
	str r0, [r6, #4]
	cmp r0, #7
	ble _08073AE2
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	bl __sprint
	cmp r0, #0
	bne _08073B58
	add r5, sp, #0x28
	ldr r1, _08073B3C @ =0x082AB80C
_08073AE2:
	subs r4, #0x10
	cmp r4, #0x10
	bgt _08073ABA
_08073AE8:
	str r1, [r5]
	str r4, [r5, #4]
	mov r2, sb
	ldr r0, [r2, #8]
	adds r0, r0, r4
	str r0, [r2, #8]
	ldr r0, [r2, #4]
	adds r0, #1
	str r0, [r2, #4]
	cmp r0, #7
	ble _08073B0A
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	bl __sprint
	cmp r0, #0
	bne _08073B58
_08073B0A:
	ldr r0, [sp, #0x20c]
	ldr r4, [sp, #0x1f4]
	cmp r0, r4
	bge _08073B14
	adds r0, r4, #0
_08073B14:
	ldr r1, [sp, #0x1f0]
	adds r1, r1, r0
	str r1, [sp, #0x1f0]
	mov r2, sb
	ldr r0, [r2, #8]
	cmp r0, #0
	beq _08073B2E
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	bl __sprint
	cmp r0, #0
	bne _08073B58
_08073B2E:
	movs r0, #0
	mov r4, sb
	str r0, [r4, #4]
	add r5, sp, #0x28
	bl _08072CD4
	.align 2, 0
_08073B3C: .4byte 0x082AB80C
_08073B40:
	mov r1, sb
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _08073B52
	ldr r0, [sp, #0x1e0]
	bl __sprint
	cmp r0, #0
	bne _08073B58
_08073B52:
	movs r0, #0
	mov r1, sb
	str r0, [r1, #4]
_08073B58:
	movs r0, #0x40
	ldr r2, [sp, #0x1e0]
	ldrh r2, [r2, #0xc]
	ands r0, r2
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, #0
	bne _08073B6A
	ldr r1, [sp, #0x1f0]
_08073B6A:
	adds r0, r1, #0
_08073B6C:
	movs r3, #0x88
	lsls r3, r3, #2
	add sp, r3
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}

	thumb_func_start cvt
cvt: @ 0x08073B7C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	str r0, [sp, #0x18]
	adds r5, r2, #0
	adds r4, r1, #0
	mov r8, r3
	ldr r6, [sp, #0x3c]
	ldr r0, [sp, #0x44]
	mov sl, r0
	ldr r1, [sp, #0x48]
	mov sb, r1
	cmp r1, #0x66
	bne _08073BA2
	movs r7, #3
	b _08073BB2
_08073BA2:
	mov r0, sb
	cmp r0, #0x65
	beq _08073BAC
	cmp r0, #0x45
	bne _08073BB0
_08073BAC:
	movs r1, #1
	add r8, r1
_08073BB0:
	movs r7, #2
_08073BB2:
	lsls r0, r4, #0x1f
	lsrs r0, r0, #0x1f
	cmp r0, #0
	beq _08073BC8
	adds r1, r5, #0
	adds r0, r4, #0
	bl __negdf2
	adds r5, r1, #0
	adds r4, r0, #0
	movs r0, #0x2d
_08073BC8:
	ldr r1, [sp, #0x40]
	strb r0, [r1]
	mov r0, r8
	str r0, [sp]
	mov r1, sl
	str r1, [sp, #4]
	add r0, sp, #0x10
	str r0, [sp, #8]
	add r0, sp, #0x14
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x18]
	adds r2, r5, #0
	adds r1, r4, #0
	adds r3, r7, #0
	bl _dtoa_r
	adds r7, r0, #0
	mov r1, sb
	cmp r1, #0x67
	beq _08073BF4
	cmp r1, #0x47
	bne _08073BFC
_08073BF4:
	movs r0, #1
	ands r6, r0
	cmp r6, #0
	beq _08073C50
_08073BFC:
	mov r0, r8
	adds r6, r7, r0
	mov r1, sb
	cmp r1, #0x66
	bne _08073C2C
	ldrb r0, [r7]
	cmp r0, #0x30
	bne _08073C26
	ldr r3, _08073C6C @ =0x00000000
	ldr r2, _08073C68 @ =0x00000000
	adds r1, r5, #0
	adds r0, r4, #0
	bl __nedf2
	cmp r0, #0
	beq _08073C26
	mov r1, r8
	rsbs r0, r1, #0
	adds r0, #1
	mov r1, sl
	str r0, [r1]
_08073C26:
	mov r1, sl
	ldr r0, [r1]
	adds r6, r6, r0
_08073C2C:
	ldr r3, _08073C6C @ =0x00000000
	ldr r2, _08073C68 @ =0x00000000
	adds r1, r5, #0
	adds r0, r4, #0
	bl __eqdf2
	cmp r0, #0
	bne _08073C3E
	str r6, [sp, #0x14]
_08073C3E:
	ldr r0, [sp, #0x14]
	cmp r0, r6
	bhs _08073C50
	movs r1, #0x30
_08073C46:
	strb r1, [r0]
	adds r0, #1
	str r0, [sp, #0x14]
	cmp r0, r6
	blo _08073C46
_08073C50:
	ldr r0, [sp, #0x14]
	subs r0, r0, r7
	ldr r1, [sp, #0x4c]
	str r0, [r1]
	adds r0, r7, #0
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08073C68: .4byte 0x00000000
_08073C6C: .4byte 0x00000000

	thumb_func_start exponent
exponent: @ 0x08073C70
	push {r4, r5, r6, r7, lr}
	sub sp, #0x134
	adds r7, r0, #0
	adds r6, r1, #0
	strb r2, [r7]
	adds r5, r7, #1
	cmp r6, #0
	bge _08073C86
	rsbs r6, r6, #0
	movs r0, #0x2d
	b _08073C88
_08073C86:
	movs r0, #0x2b
_08073C88:
	strb r0, [r7, #1]
	adds r5, #1
	add r4, sp, #0x134
	cmp r6, #9
	ble _08073CCA
_08073C92:
	subs r4, #1
	adds r0, r6, #0
	movs r1, #0xa
	bl __modsi3
	adds r0, #0x30
	strb r0, [r4]
	adds r0, r6, #0
	movs r1, #0xa
	bl __divsi3
	adds r6, r0, #0
	cmp r6, #9
	bgt _08073C92
	subs r4, #1
	adds r0, #0x30
	strb r0, [r4]
	add r0, sp, #0x134
	cmp r4, r0
	bhs _08073CD8
	adds r1, r0, #0
_08073CBC:
	ldrb r0, [r4]
	strb r0, [r5]
	adds r4, #1
	adds r5, #1
	cmp r4, r1
	blo _08073CBC
	b _08073CD8
_08073CCA:
	movs r0, #0x30
	strb r0, [r5]
	adds r5, #1
	adds r0, r6, #0
	adds r0, #0x30
	strb r0, [r5]
	adds r5, #1
_08073CD8:
	subs r0, r5, r7
	add sp, #0x134
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	@ stdio/wsetup.o

	thumb_func_start __swsetup
__swsetup: @ 0x08073CE0
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x54]
	cmp r0, #0
	bne _08073CF0
	ldr r0, _08073D1C @ =0x0203A74C
	ldr r0, [r0]
	str r0, [r4, #0x54]
_08073CF0:
	ldr r1, [r4, #0x54]
	ldr r0, [r1, #0x38]
	cmp r0, #0
	bne _08073CFE
	adds r0, r1, #0
	bl __sinit
_08073CFE:
	ldrh r1, [r4, #0xc]
	movs r0, #8
	ands r0, r1
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	cmp r5, #0
	bne _08073D58
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _08073D20
	movs r0, #1
	rsbs r0, r0, #0
	b _08073D8A
	.align 2, 0
_08073D1C: .4byte 0x0203A74C
_08073D20:
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08073D50
	ldr r1, [r4, #0x30]
	cmp r1, #0
	beq _08073D3E
	adds r0, r4, #0
	adds r0, #0x40
	cmp r1, r0
	beq _08073D3C
	ldr r0, [r4, #0x54]
	bl _free_r
_08073D3C:
	str r5, [r4, #0x30]
_08073D3E:
	movs r0, #0x25
	rsbs r0, r0, #0
	ldrh r1, [r4, #0xc]
	ands r0, r1
	movs r1, #0
	strh r0, [r4, #0xc]
	str r1, [r4, #4]
	ldr r0, [r4, #0x10]
	str r0, [r4]
_08073D50:
	movs r0, #8
	ldrh r1, [r4, #0xc]
	orrs r0, r1
	strh r0, [r4, #0xc]
_08073D58:
	ldr r0, [r4, #0x10]
	cmp r0, #0
	bne _08073D64
	adds r0, r4, #0
	bl __smakebuf
_08073D64:
	ldrh r1, [r4, #0xc]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08073D7A
	movs r0, #0
	str r0, [r4, #8]
	ldr r0, [r4, #0x14]
	rsbs r0, r0, #0
	str r0, [r4, #0x18]
	b _08073D88
_08073D7A:
	movs r0, #2
	ands r0, r1
	movs r1, #0
	cmp r0, #0
	bne _08073D86
	ldr r1, [r4, #0x14]
_08073D86:
	str r1, [r4, #8]
_08073D88:
	movs r0, #0
_08073D8A:
	pop {r4, r5, pc}

	@ stdlib/dtoa.o

	thumb_func_start quorem
quorem: @ 0x08073D8C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	str r0, [sp]
	str r1, [sp, #4]
	ldr r7, [r1, #0x10]
	ldr r0, [r0, #0x10]
	cmp r0, r7
	bge _08073DA8
	movs r0, #0
	b _08073EDC
_08073DA8:
	ldr r0, [sp, #4]
	adds r0, #0x14
	mov r8, r0
	subs r7, #1
	lsls r0, r7, #2
	mov r1, r8
	adds r1, r1, r0
	str r1, [sp, #0xc]
	ldr r4, [sp]
	adds r4, #0x14
	adds r5, r4, r0
	ldr r1, [r1]
	adds r1, #1
	ldr r2, [r5]
	mov sl, r2
	mov r0, sl
	bl __udivsi3
	str r0, [sp, #8]
	mov r3, r8
	str r3, [sp, #0x14]
	str r4, [sp, #0x10]
	cmp r0, #0
	beq _08073E52
	movs r6, #0
	mov sb, r6
	ldr r0, _08073E3C @ =0x0000FFFF
	mov ip, r0
_08073DE0:
	mov r2, r8
	adds r2, #4
	mov r8, r2
	subs r2, #4
	ldm r2!, {r1}
	adds r0, r1, #0
	mov r3, ip
	ands r0, r3
	ldr r2, [sp, #8]
	muls r0, r2, r0
	mov r3, sb
	adds r2, r0, r3
	lsrs r0, r1, #0x10
	ldr r3, [sp, #8]
	adds r1, r0, #0
	muls r1, r3, r1
	lsrs r0, r2, #0x10
	adds r3, r1, r0
	lsrs r0, r3, #0x10
	mov sb, r0
	ldr r0, [r4]
	mov r1, ip
	ands r0, r1
	ands r2, r1
	subs r0, r0, r2
	adds r2, r0, r6
	asrs r6, r2, #0x10
	ldr r0, [r4]
	lsrs r1, r0, #0x10
	mov r0, ip
	ands r3, r0
	subs r1, r1, r3
	adds r0, r1, r6
	asrs r6, r0, #0x10
	strh r0, [r4]
	strh r2, [r4, #2]
	adds r4, #4
	ldr r1, [sp, #0xc]
	cmp r8, r1
	bls _08073DE0
	mov r2, sl
	cmp r2, #0
	bne _08073E52
	ldr r4, [sp, #0x10]
	b _08073E42
	.align 2, 0
_08073E3C: .4byte 0x0000FFFF
_08073E40:
	subs r7, #1
_08073E42:
	subs r5, #4
	cmp r5, r4
	bls _08073E4E
	ldr r0, [r5]
	cmp r0, #0
	beq _08073E40
_08073E4E:
	ldr r3, [sp]
	str r7, [r3, #0x10]
_08073E52:
	ldr r0, [sp]
	ldr r1, [sp, #4]
	bl __mcmp
	cmp r0, #0
	blt _08073EDA
	ldr r0, [sp, #8]
	adds r0, #1
	str r0, [sp, #8]
	movs r6, #0
	mov sb, r6
	ldr r4, [sp, #0x10]
	ldr r1, [sp, #0x14]
	mov r8, r1
	lsls r2, r7, #2
	mov sl, r2
	ldr r5, _08073EC4 @ =0x0000FFFF
_08073E74:
	mov r3, r8
	adds r3, #4
	mov r8, r3
	subs r3, #4
	ldm r3!, {r1}
	adds r0, r1, #0
	ands r0, r5
	mov r3, sb
	adds r2, r0, r3
	lsrs r1, r1, #0x10
	lsrs r0, r2, #0x10
	adds r3, r1, r0
	lsrs r0, r3, #0x10
	mov sb, r0
	ldr r1, [r4]
	adds r0, r1, #0
	ands r0, r5
	ands r2, r5
	subs r0, r0, r2
	adds r2, r0, r6
	asrs r6, r2, #0x10
	lsrs r1, r1, #0x10
	ands r3, r5
	subs r1, r1, r3
	adds r0, r1, r6
	asrs r6, r0, #0x10
	strh r0, [r4]
	strh r2, [r4, #2]
	adds r4, #4
	ldr r1, [sp, #0xc]
	cmp r8, r1
	bls _08073E74
	ldr r4, [sp, #0x10]
	mov r2, sl
	adds r5, r4, r2
	ldr r0, [r5]
	cmp r0, #0
	bne _08073EDA
	b _08073ECA
	.align 2, 0
_08073EC4: .4byte 0x0000FFFF
_08073EC8:
	subs r7, #1
_08073ECA:
	subs r5, #4
	cmp r5, r4
	bls _08073ED6
	ldr r0, [r5]
	cmp r0, #0
	beq _08073EC8
_08073ED6:
	ldr r3, [sp]
	str r7, [r3, #0x10]
_08073EDA:
	ldr r0, [sp, #8]
_08073EDC:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}

	thumb_func_start _dtoa_r
_dtoa_r: @ 0x08073EE8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x84
	mov sl, r0
	str r3, [sp, #0xc]
	ldr r4, [sp, #0xac]
	str r1, [sp, #0x40]
	str r2, [sp, #0x44]
	ldr r2, [r0, #0x40]
	cmp r2, #0
	beq _08073F20
	ldr r0, [r0, #0x44]
	str r0, [r2, #4]
	mov r0, sl
	ldr r1, [r0, #0x44]
	movs r0, #1
	lsls r0, r1
	str r0, [r2, #8]
	mov r0, sl
	adds r1, r2, #0
	bl _Bfree
	movs r0, #0
	mov r1, sl
	str r0, [r1, #0x40]
_08073F20:
	movs r0, #0x80
	lsls r0, r0, #0x18
	ldr r1, [sp, #0x40]
	ands r0, r1
	cmp r0, #0
	beq _08073F3C
	movs r0, #1
	str r0, [r4]
	ldr r0, _08073F38 @ =0x7FFFFFFF
	ands r1, r0
	str r1, [sp, #0x40]
	b _08073F3E
	.align 2, 0
_08073F38: .4byte 0x7FFFFFFF
_08073F3C:
	str r0, [r4]
_08073F3E:
	ldr r1, _08073F80 @ =0x7FF00000
	ldr r2, [sp, #0x40]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, r1
	bne _08073F94
	ldr r0, _08073F84 @ =0x0000270F
	ldr r3, [sp, #0xa8]
	str r0, [r3]
	ldr r0, _08073F88 @ =0x082AB894
	mov sb, r0
	ldr r1, [sp, #0x44]
	cmp r1, #0
	bne _08073F66
	ldr r0, _08073F8C @ =0x000FFFFF
	ands r2, r0
	cmp r2, #0
	bne _08073F66
	ldr r2, _08073F90 @ =0x082AB888
	mov sb, r2
_08073F66:
	ldr r3, [sp, #0xb0]
	cmp r3, #0
	beq _08073FB8
	mov r1, sb
	ldrb r0, [r1, #3]
	adds r1, #3
	cmp r0, #0
	beq _08073F78
	adds r1, #5
_08073F78:
	ldr r2, [sp, #0xb0]
	str r1, [r2]
	b _08073FB8
	.align 2, 0
_08073F80: .4byte 0x7FF00000
_08073F84: .4byte 0x0000270F
_08073F88: .4byte 0x082AB894
_08073F8C: .4byte 0x000FFFFF
_08073F90: .4byte 0x082AB888
_08073F94:
	ldr r3, _08073FC4 @ =0x00000000
	ldr r2, _08073FC0 @ =0x00000000
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	bl __eqdf2
	cmp r0, #0
	bne _08073FCC
	movs r0, #1
	ldr r3, [sp, #0xa8]
	str r0, [r3]
	ldr r0, _08073FC8 @ =0x082AB898
	mov sb, r0
	ldr r1, [sp, #0xb0]
	cmp r1, #0
	beq _08073FB8
	adds r0, #1
	str r0, [r1]
_08073FB8:
	mov r0, sb
	bl _08074BD2
	.align 2, 0
_08073FC0: .4byte 0x00000000
_08073FC4: .4byte 0x00000000
_08073FC8: .4byte 0x082AB898
_08073FCC:
	add r0, sp, #8
	str r0, [sp]
	mov r0, sl
	ldr r1, [sp, #0x40]
	ldr r2, [sp, #0x44]
	add r3, sp, #4
	bl _d2b
	str r0, [sp, #0x5c]
	ldr r2, [sp, #0x40]
	lsls r0, r2, #1
	lsrs r0, r0, #0x15
	mov r8, r0
	cmp r0, #0
	beq _0807401C
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	str r0, [sp, #0x48]
	str r1, [sp, #0x4c]
	ldr r0, _08074010 @ =0x000FFFFF
	ldr r1, [sp, #0x48]
	ands r1, r0
	str r1, [sp, #0x48]
	ldr r0, _08074014 @ =0x3FF00000
	adds r2, r1, #0
	orrs r2, r0
	str r2, [sp, #0x48]
	ldr r3, _08074018 @ =0xFFFFFC01
	add r8, r3
	movs r0, #0
	str r0, [sp, #0x58]
	ldr r6, [sp, #8]
	b _0807407C
	.align 2, 0
_08074010: .4byte 0x000FFFFF
_08074014: .4byte 0x3FF00000
_08074018: .4byte 0xFFFFFC01
_0807401C:
	ldr r1, [sp, #8]
	ldr r0, [sp, #4]
	adds r2, r1, r0
	ldr r3, _08074044 @ =0x00000432
	adds r3, r3, r2
	mov r8, r3
	adds r6, r1, #0
	cmp r3, #0x20
	ble _0807404C
	movs r0, #0x40
	subs r0, r0, r3
	ldr r4, [sp, #0x40]
	lsls r4, r0
	ldr r1, _08074048 @ =0x00000412
	adds r0, r2, r1
	ldr r2, [sp, #0x44]
	lsrs r2, r0
	adds r0, r2, #0
	orrs r4, r0
	b _08074056
	.align 2, 0
_08074044: .4byte 0x00000432
_08074048: .4byte 0x00000412
_0807404C:
	movs r0, #0x20
	mov r3, r8
	subs r0, r0, r3
	ldr r4, [sp, #0x44]
	lsls r4, r0
_08074056:
	adds r0, r4, #0
	bl __floatsidf
	cmp r4, #0
	bge _08074068
	ldr r3, _0807412C @ =0x00000000
	ldr r2, _08074128 @ =0x41F00000
	bl __adddf3
_08074068:
	str r0, [sp, #0x48]
	str r1, [sp, #0x4c]
	ldr r1, _08074130 @ =0xFE100000
	ldr r0, [sp, #0x48]
	adds r1, r0, r1
	str r1, [sp, #0x48]
	ldr r2, _08074134 @ =0xFFFFFBCD
	add r8, r2
	movs r3, #1
	str r3, [sp, #0x58]
_0807407C:
	ldr r2, _08074138 @ =0x3FF80000
	ldr r3, _0807413C @ =0x00000000
	ldr r0, [sp, #0x48]
	ldr r1, [sp, #0x4c]
	bl __subdf3
	ldr r2, _08074140 @ =0x3FD287A7
	ldr r3, _08074144 @ =0x636F4361
	bl __muldf3
	ldr r2, _08074148 @ =0x3FC68A28
	ldr r3, _0807414C @ =0x8B60C8B3
	bl __adddf3
	adds r5, r1, #0
	adds r4, r0, #0
	mov r0, r8
	bl __floatsidf
	ldr r2, _08074150 @ =0x3FD34413
	ldr r3, _08074154 @ =0x509F79FB
	bl __muldf3
	adds r3, r1, #0
	adds r2, r0, #0
	adds r1, r5, #0
	adds r0, r4, #0
	bl __adddf3
	str r0, [sp, #0x6c]
	str r1, [sp, #0x70]
	bl __fixdfsi
	str r0, [sp, #0x24]
	ldr r2, _08074158 @ =0x00000000
	ldr r3, _0807415C @ =0x00000000
	ldr r0, [sp, #0x6c]
	ldr r1, [sp, #0x70]
	bl __ltdf2
	cmp r0, #0
	bge _080740EC
	ldr r0, [sp, #0x24]
	bl __floatsidf
	adds r3, r1, #0
	adds r2, r0, #0
	ldr r0, [sp, #0x6c]
	ldr r1, [sp, #0x70]
	bl __nedf2
	cmp r0, #0
	beq _080740EC
	ldr r0, [sp, #0x24]
	subs r0, #1
	str r0, [sp, #0x24]
_080740EC:
	movs r1, #1
	str r1, [sp, #0x2c]
	ldr r2, [sp, #0x24]
	cmp r2, #0x16
	bhi _08074116
	ldr r1, _08074160 @ =0x082AB8E8
	lsls r0, r2, #3
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r3, [r0, #4]
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	bl __ltdf2
	cmp r0, #0
	bge _08074112
	ldr r3, [sp, #0x24]
	subs r3, #1
	str r3, [sp, #0x24]
_08074112:
	movs r0, #0
	str r0, [sp, #0x2c]
_08074116:
	mov r1, r8
	subs r0, r6, r1
	subs r4, r0, #1
	cmp r4, #0
	blt _08074164
	movs r2, #0
	str r2, [sp, #0x10]
	str r4, [sp, #0x34]
	b _0807416C
	.align 2, 0
_08074128: .4byte 0x41F00000
_0807412C: .4byte 0x00000000
_08074130: .4byte 0xFE100000
_08074134: .4byte 0xFFFFFBCD
_08074138: .4byte 0x3FF80000
_0807413C: .4byte 0x00000000
_08074140: .4byte 0x3FD287A7
_08074144: .4byte 0x636F4361
_08074148: .4byte 0x3FC68A28
_0807414C: .4byte 0x8B60C8B3
_08074150: .4byte 0x3FD34413
_08074154: .4byte 0x509F79FB
_08074158: .4byte 0x00000000
_0807415C: .4byte 0x00000000
_08074160: .4byte 0x082AB8E8
_08074164:
	rsbs r4, r4, #0
	str r4, [sp, #0x10]
	movs r3, #0
	str r3, [sp, #0x34]
_0807416C:
	ldr r0, [sp, #0x24]
	cmp r0, #0
	blt _08074180
	movs r1, #0
	str r1, [sp, #0x14]
	str r0, [sp, #0x38]
	ldr r2, [sp, #0x34]
	adds r2, r2, r0
	str r2, [sp, #0x34]
	b _08074190
_08074180:
	ldr r3, [sp, #0x10]
	ldr r0, [sp, #0x24]
	subs r3, r3, r0
	str r3, [sp, #0x10]
	rsbs r1, r0, #0
	str r1, [sp, #0x14]
	movs r2, #0
	str r2, [sp, #0x38]
_08074190:
	ldr r3, [sp, #0xc]
	cmp r3, #9
	bls _0807419A
	movs r0, #0
	str r0, [sp, #0xc]
_0807419A:
	movs r5, #1
	ldr r1, [sp, #0xc]
	cmp r1, #5
	ble _080741A8
	subs r1, #4
	str r1, [sp, #0xc]
	movs r5, #0
_080741A8:
	movs r2, #1
	str r2, [sp, #0x30]
	ldr r3, [sp, #0xc]
	cmp r3, #5
	bhi _08074222
	lsls r0, r3, #2
	ldr r1, _080741BC @ =_080741C0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080741BC: .4byte _080741C0
_080741C0: @ jump table
	.4byte _080741D8 @ case 0
	.4byte _080741D8 @ case 1
	.4byte _080741EA @ case 2
	.4byte _08074206 @ case 3
	.4byte _080741EE @ case 4
	.4byte _0807420A @ case 5
_080741D8:
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [sp, #0x18]
	str r0, [sp, #0x20]
	movs r1, #0x12
	mov r8, r1
	movs r2, #0
	str r2, [sp, #0xa4]
	b _08074222
_080741EA:
	movs r3, #0
	str r3, [sp, #0x30]
_080741EE:
	ldr r0, [sp, #0xa4]
	cmp r0, #0
	bgt _080741F8
	movs r1, #1
	str r1, [sp, #0xa4]
_080741F8:
	ldr r2, [sp, #0xa4]
	mov r8, r2
	mov r3, r8
	str r3, [sp, #0x20]
	mov r0, r8
	str r0, [sp, #0x18]
	b _08074222
_08074206:
	movs r1, #0
	str r1, [sp, #0x30]
_0807420A:
	ldr r2, [sp, #0xa4]
	ldr r3, [sp, #0x24]
	adds r0, r2, r3
	adds r1, r0, #1
	mov r8, r1
	mov r2, r8
	str r2, [sp, #0x18]
	str r0, [sp, #0x20]
	cmp r1, #0
	bgt _08074222
	movs r3, #1
	mov r8, r3
_08074222:
	movs r4, #4
	movs r0, #0
	mov r1, sl
	str r0, [r1, #0x44]
	mov r2, r8
	cmp r2, #0x17
	bls _08074242
	movs r1, #0
_08074232:
	adds r1, #1
	lsls r4, r4, #1
	adds r0, r4, #0
	adds r0, #0x14
	cmp r0, r8
	bls _08074232
	mov r3, sl
	str r1, [r3, #0x44]
_08074242:
	mov r0, sl
	ldr r1, [r0, #0x44]
	bl _Balloc
	mov r1, sl
	str r0, [r1, #0x40]
	str r0, [sp, #0x74]
	mov sb, r0
	ldr r2, [sp, #0x18]
	cmp r2, #0xe
	bls _0807425A
	b _080745CC
_0807425A:
	cmp r5, #0
	bne _08074260
	b _080745CC
_08074260:
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	str r0, [sp, #0x78]
	str r1, [sp, #0x7c]
	str r0, [sp, #0x48]
	str r1, [sp, #0x4c]
	ldr r1, [sp, #0x24]
	str r1, [sp, #0x28]
	str r2, [sp, #0x1c]
	movs r7, #2
	cmp r1, #0
	ble _080742F0
	ldr r0, _080742E8 @ =0x082AB8E8
	movs r2, #0xf
	ands r1, r2
	lsls r1, r1, #3
	adds r3, r1, r0
	ldr r0, [r3]
	ldr r1, [r3, #4]
	str r0, [sp, #0x6c]
	str r1, [sp, #0x70]
	ldr r1, [sp, #0x24]
	asrs r4, r1, #4
	movs r0, #0x10
	ands r0, r4
	cmp r0, #0
	beq _080742AC
	ands r4, r2
	ldr r0, _080742EC @ =0x082AB9B0
	ldr r2, [r0, #0x20]
	ldr r3, [r0, #0x24]
	ldr r0, [sp, #0x78]
	ldr r1, [sp, #0x7c]
	bl __divdf3
	str r0, [sp, #0x40]
	str r1, [sp, #0x44]
	movs r7, #3
_080742AC:
	cmp r4, #0
	beq _080742D4
	ldr r5, _080742EC @ =0x082AB9B0
_080742B2:
	movs r0, #1
	ands r0, r4
	cmp r0, #0
	beq _080742CC
	adds r7, #1
	ldr r2, [r5]
	ldr r3, [r5, #4]
	ldr r0, [sp, #0x6c]
	ldr r1, [sp, #0x70]
	bl __muldf3
	str r0, [sp, #0x6c]
	str r1, [sp, #0x70]
_080742CC:
	asrs r4, r4, #1
	adds r5, #8
	cmp r4, #0
	bne _080742B2
_080742D4:
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	ldr r2, [sp, #0x6c]
	ldr r3, [sp, #0x70]
	bl __divdf3
	str r0, [sp, #0x40]
	str r1, [sp, #0x44]
	b _0807433C
	.align 2, 0
_080742E8: .4byte 0x082AB8E8
_080742EC: .4byte 0x082AB9B0
_080742F0:
	ldr r2, [sp, #0x24]
	rsbs r6, r2, #0
	cmp r6, #0
	beq _0807433C
	ldr r1, _080743E4 @ =0x082AB8E8
	movs r0, #0xf
	ands r0, r6
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r1, [r0, #4]
	ldr r0, [r0]
	ldr r2, [sp, #0x78]
	ldr r3, [sp, #0x7c]
	bl __muldf3
	str r0, [sp, #0x40]
	str r1, [sp, #0x44]
	asrs r4, r6, #4
	cmp r4, #0
	beq _0807433C
	ldr r5, _080743E8 @ =0x082AB9B0
_0807431A:
	movs r0, #1
	ands r0, r4
	cmp r0, #0
	beq _08074334
	adds r7, #1
	ldr r0, [r5]
	ldr r1, [r5, #4]
	ldr r2, [sp, #0x40]
	ldr r3, [sp, #0x44]
	bl __muldf3
	str r0, [sp, #0x40]
	str r1, [sp, #0x44]
_08074334:
	asrs r4, r4, #1
	adds r5, #8
	cmp r4, #0
	bne _0807431A
_0807433C:
	ldr r3, [sp, #0x2c]
	cmp r3, #0
	beq _0807437A
	ldr r2, _080743EC @ =0x3FF00000
	ldr r3, _080743F0 @ =0x00000000
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	bl __ltdf2
	cmp r0, #0
	bge _0807437A
	ldr r0, [sp, #0x18]
	cmp r0, #0
	ble _0807437A
	ldr r1, [sp, #0x20]
	cmp r1, #0
	bgt _08074360
	b _080745B8
_08074360:
	str r1, [sp, #0x18]
	ldr r2, [sp, #0x24]
	subs r2, #1
	str r2, [sp, #0x24]
	ldr r0, _080743F4 @ =0x40240000
	ldr r1, _080743F8 @ =0x00000000
	ldr r2, [sp, #0x40]
	ldr r3, [sp, #0x44]
	bl __muldf3
	str r0, [sp, #0x40]
	str r1, [sp, #0x44]
	adds r7, #1
_0807437A:
	adds r0, r7, #0
	bl __floatsidf
	ldr r2, [sp, #0x40]
	ldr r3, [sp, #0x44]
	bl __muldf3
	ldr r2, _080743FC @ =0x401C0000
	ldr r3, _08074400 @ =0x00000000
	bl __adddf3
	str r0, [sp, #0x50]
	str r1, [sp, #0x54]
	ldr r0, _08074404 @ =0xFCC00000
	ldr r3, [sp, #0x50]
	adds r0, r3, r0
	str r0, [sp, #0x50]
	ldr r1, [sp, #0x18]
	cmp r1, #0
	bne _08074410
	movs r2, #0
	str r2, [sp, #0x64]
	movs r3, #0
	str r3, [sp, #0x68]
	ldr r2, _08074408 @ =0x40140000
	ldr r3, _0807440C @ =0x00000000
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	bl __subdf3
	adds r5, r1, #0
	adds r4, r0, #0
	ldr r2, [sp, #0x50]
	ldr r3, [sp, #0x54]
	bl __gtdf2
	cmp r0, #0
	ble _080743C8
	b _08074942
_080743C8:
	ldr r0, [sp, #0x50]
	ldr r1, [sp, #0x54]
	bl __negdf2
	adds r3, r1, #0
	adds r2, r0, #0
	adds r1, r5, #0
	adds r0, r4, #0
	bl __ltdf2
	cmp r0, #0
	bge _080743E2
	b _0807493A
_080743E2:
	b _080745B8
	.align 2, 0
_080743E4: .4byte 0x082AB8E8
_080743E8: .4byte 0x082AB9B0
_080743EC: .4byte 0x3FF00000
_080743F0: .4byte 0x00000000
_080743F4: .4byte 0x40240000
_080743F8: .4byte 0x00000000
_080743FC: .4byte 0x401C0000
_08074400: .4byte 0x00000000
_08074404: .4byte 0xFCC00000
_08074408: .4byte 0x40140000
_0807440C: .4byte 0x00000000
_08074410:
	ldr r0, [sp, #0x30]
	cmp r0, #0
	beq _080744E0
	ldr r1, _08074440 @ =0x082AB8E8
	ldr r0, [sp, #0x18]
	subs r0, #1
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r3, [r0, #4]
	ldr r0, _08074444 @ =0x3FE00000
	ldr r1, _08074448 @ =0x00000000
	bl __divdf3
	ldr r2, [sp, #0x50]
	ldr r3, [sp, #0x54]
	bl __subdf3
	str r0, [sp, #0x50]
	str r1, [sp, #0x54]
	movs r1, #0
	mov r8, r1
	b _0807446C
	.align 2, 0
_08074440: .4byte 0x082AB8E8
_08074444: .4byte 0x3FE00000
_08074448: .4byte 0x00000000
_0807444C:
	ldr r1, _080744D4 @ =0x00000000
	ldr r0, _080744D0 @ =0x40240000
	ldr r2, [sp, #0x50]
	ldr r3, [sp, #0x54]
	bl __muldf3
	str r0, [sp, #0x50]
	str r1, [sp, #0x54]
	ldr r1, _080744D4 @ =0x00000000
	ldr r0, _080744D0 @ =0x40240000
	adds r3, r5, #0
	adds r2, r4, #0
	bl __muldf3
	str r0, [sp, #0x40]
	str r1, [sp, #0x44]
_0807446C:
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	bl __fixdfsi
	adds r6, r0, #0
	bl __floatsidf
	adds r3, r1, #0
	adds r2, r0, #0
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	bl __subdf3
	adds r5, r1, #0
	adds r4, r0, #0
	adds r0, r6, #0
	adds r0, #0x30
	mov r2, sb
	strb r0, [r2]
	movs r3, #1
	add sb, r3
	adds r1, r5, #0
	adds r0, r4, #0
	ldr r2, [sp, #0x50]
	ldr r3, [sp, #0x54]
	bl __ltdf2
	cmp r0, #0
	bge _080744A8
	b _08074BB2
_080744A8:
	ldr r0, _080744D8 @ =0x3FF00000
	ldr r1, _080744DC @ =0x00000000
	adds r3, r5, #0
	adds r2, r4, #0
	bl __subdf3
	ldr r2, [sp, #0x50]
	ldr r3, [sp, #0x54]
	bl __ltdf2
	cmp r0, #0
	bge _080744C2
	b _080746CC
_080744C2:
	movs r0, #1
	add r8, r0
	ldr r1, [sp, #0x18]
	cmp r8, r1
	blt _0807444C
	b _080745B8
	.align 2, 0
_080744D0: .4byte 0x40240000
_080744D4: .4byte 0x00000000
_080744D8: .4byte 0x3FF00000
_080744DC: .4byte 0x00000000
_080744E0:
	ldr r1, _08074500 @ =0x082AB8E8
	ldr r0, [sp, #0x18]
	subs r0, #1
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r1, [r0, #4]
	ldr r0, [r0]
	ldr r2, [sp, #0x50]
	ldr r3, [sp, #0x54]
	bl __muldf3
	str r0, [sp, #0x50]
	str r1, [sp, #0x54]
	movs r2, #1
	mov r8, r2
	b _08074518
	.align 2, 0
_08074500: .4byte 0x082AB8E8
_08074504:
	movs r3, #1
	add r8, r3
	ldr r1, _080745AC @ =0x00000000
	ldr r0, _080745A8 @ =0x40240000
	adds r3, r5, #0
	adds r2, r4, #0
	bl __muldf3
	str r0, [sp, #0x40]
	str r1, [sp, #0x44]
_08074518:
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	bl __fixdfsi
	adds r6, r0, #0
	bl __floatsidf
	adds r3, r1, #0
	adds r2, r0, #0
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	bl __subdf3
	adds r5, r1, #0
	adds r4, r0, #0
	adds r0, r6, #0
	adds r0, #0x30
	mov r1, sb
	strb r0, [r1]
	movs r2, #1
	add sb, r2
	ldr r3, [sp, #0x18]
	cmp r8, r3
	bne _08074504
	ldr r6, _080745B0 @ =0x3FE00000
	ldr r7, _080745B4 @ =0x00000000
	adds r1, r7, #0
	adds r0, r6, #0
	ldr r2, [sp, #0x50]
	ldr r3, [sp, #0x54]
	bl __adddf3
	adds r3, r1, #0
	adds r2, r0, #0
	adds r1, r5, #0
	adds r0, r4, #0
	bl __gtdf2
	cmp r0, #0
	ble _0807456A
	b _080746CC
_0807456A:
	adds r1, r7, #0
	adds r0, r6, #0
	ldr r2, [sp, #0x50]
	ldr r3, [sp, #0x54]
	bl __subdf3
	adds r3, r1, #0
	adds r2, r0, #0
	adds r1, r5, #0
	adds r0, r4, #0
	bl __ltdf2
	cmp r0, #0
	bge _080745B8
	movs r0, #1
	rsbs r0, r0, #0
	add sb, r0
	mov r1, sb
	ldrb r1, [r1]
	cmp r1, #0x30
	beq _08074596
	b _080746F2
_08074596:
	movs r2, #1
	rsbs r2, r2, #0
	add sb, r2
	mov r3, sb
	ldrb r3, [r3]
	cmp r3, #0x30
	beq _08074596
	b _080746F2
	.align 2, 0
_080745A8: .4byte 0x40240000
_080745AC: .4byte 0x00000000
_080745B0: .4byte 0x3FE00000
_080745B4: .4byte 0x00000000
_080745B8:
	ldr r1, [sp, #0x74]
	mov sb, r1
	ldr r2, [sp, #0x48]
	ldr r3, [sp, #0x4c]
	str r2, [sp, #0x40]
	str r3, [sp, #0x44]
	ldr r3, [sp, #0x28]
	str r3, [sp, #0x24]
	ldr r0, [sp, #0x1c]
	str r0, [sp, #0x18]
_080745CC:
	ldr r0, [sp, #4]
	cmp r0, #0
	bge _080745D4
	b _08074708
_080745D4:
	ldr r1, [sp, #0x24]
	cmp r1, #0xe
	ble _080745DC
	b _08074708
_080745DC:
	ldr r1, _08074628 @ =0x082AB8E8
	ldr r2, [sp, #0x24]
	lsls r0, r2, #3
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r2, [r0, #4]
	str r1, [sp, #0x6c]
	str r2, [sp, #0x70]
	ldr r2, [sp, #0xa4]
	cmp r2, #0
	bge _08074634
	ldr r3, [sp, #0x18]
	cmp r3, #0
	bgt _08074634
	movs r0, #0
	str r0, [sp, #0x64]
	movs r1, #0
	str r1, [sp, #0x68]
	cmp r3, #0
	bge _08074606
	b _0807493A
_08074606:
	ldr r2, _0807462C @ =0x40140000
	ldr r3, _08074630 @ =0x00000000
	ldr r0, [sp, #0x6c]
	ldr r1, [sp, #0x70]
	bl __muldf3
	adds r3, r1, #0
	adds r2, r0, #0
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	bl __ledf2
	cmp r0, #0
	bgt _08074624
	b _0807493A
_08074624:
	b _08074942
	.align 2, 0
_08074628: .4byte 0x082AB8E8
_0807462C: .4byte 0x40140000
_08074630: .4byte 0x00000000
_08074634:
	movs r2, #1
	mov r8, r2
	b _08074658
_0807463A:
	ldr r1, _080746FC @ =0x00000000
	ldr r0, _080746F8 @ =0x40240000
	bl __muldf3
	str r0, [sp, #0x40]
	str r1, [sp, #0x44]
	ldr r2, _08074700 @ =0x00000000
	ldr r3, _08074704 @ =0x00000000
	bl __eqdf2
	cmp r0, #0
	bne _08074654
	b _08074BB2
_08074654:
	movs r3, #1
	add r8, r3
_08074658:
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	ldr r2, [sp, #0x6c]
	ldr r3, [sp, #0x70]
	bl __divdf3
	bl __fixdfsi
	adds r6, r0, #0
	bl __floatsidf
	ldr r2, [sp, #0x6c]
	ldr r3, [sp, #0x70]
	bl __muldf3
	adds r3, r1, #0
	adds r2, r0, #0
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	bl __subdf3
	adds r3, r1, #0
	adds r2, r0, #0
	adds r0, r6, #0
	adds r0, #0x30
	mov r1, sb
	strb r0, [r1]
	movs r0, #1
	add sb, r0
	ldr r1, [sp, #0x18]
	cmp r8, r1
	bne _0807463A
	adds r1, r3, #0
	adds r0, r2, #0
	bl __adddf3
	adds r5, r1, #0
	adds r4, r0, #0
	ldr r2, [sp, #0x6c]
	ldr r3, [sp, #0x70]
	bl __gtdf2
	cmp r0, #0
	bgt _080746CC
	adds r1, r5, #0
	adds r0, r4, #0
	ldr r2, [sp, #0x6c]
	ldr r3, [sp, #0x70]
	bl __eqdf2
	cmp r0, #0
	beq _080746C2
	b _08074BB2
_080746C2:
	movs r0, #1
	ands r0, r6
	cmp r0, #0
	bne _080746CC
	b _08074BB2
_080746CC:
	movs r0, #0x30
_080746CE:
	movs r2, #1
	rsbs r2, r2, #0
	add sb, r2
	mov r3, sb
	ldrb r3, [r3]
	cmp r3, #0x39
	bne _080746EA
	ldr r1, [sp, #0x74]
	cmp sb, r1
	bne _080746CE
	ldr r2, [sp, #0x24]
	adds r2, #1
	str r2, [sp, #0x24]
	strb r0, [r1]
_080746EA:
	mov r3, sb
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
_080746F2:
	movs r0, #1
	add sb, r0
	b _08074BB2
	.align 2, 0
_080746F8: .4byte 0x40240000
_080746FC: .4byte 0x00000000
_08074700: .4byte 0x00000000
_08074704: .4byte 0x00000000
_08074708:
	ldr r5, [sp, #0x10]
	ldr r6, [sp, #0x14]
	movs r1, #0
	str r1, [sp, #0x60]
	movs r2, #0
	str r2, [sp, #0x64]
	ldr r3, [sp, #0x30]
	cmp r3, #0
	beq _0807477E
	ldr r1, [sp, #0xc]
	cmp r1, #1
	bgt _0807473C
	ldr r2, [sp, #0x58]
	cmp r2, #0
	beq _08074734
	ldr r3, _08074730 @ =0x00000433
	adds r3, r3, r0
	mov r8, r3
	b _08074768
	.align 2, 0
_08074730: .4byte 0x00000433
_08074734:
	ldr r1, [sp, #8]
	movs r0, #0x36
	subs r0, r0, r1
	b _08074766
_0807473C:
	ldr r4, [sp, #0x18]
	subs r4, #1
	ldr r0, [sp, #0x14]
	cmp r0, r4
	blt _0807474A
	subs r6, r0, r4
	b _0807475A
_0807474A:
	ldr r1, [sp, #0x14]
	subs r4, r4, r1
	ldr r2, [sp, #0x38]
	adds r2, r2, r4
	str r2, [sp, #0x38]
	adds r1, r1, r4
	str r1, [sp, #0x14]
	movs r6, #0
_0807475A:
	ldr r3, [sp, #0x18]
	mov r8, r3
	cmp r3, #0
	bge _08074768
	subs r5, r5, r3
	movs r0, #0
_08074766:
	mov r8, r0
_08074768:
	ldr r1, [sp, #0x10]
	add r1, r8
	str r1, [sp, #0x10]
	ldr r2, [sp, #0x34]
	add r2, r8
	str r2, [sp, #0x34]
	mov r0, sl
	movs r1, #1
	bl _i2b
	str r0, [sp, #0x64]
_0807477E:
	cmp r5, #0
	ble _080747A0
	ldr r3, [sp, #0x34]
	cmp r3, #0
	ble _080747A0
	mov r8, r3
	cmp r8, r5
	ble _08074790
	mov r8, r5
_08074790:
	ldr r0, [sp, #0x10]
	mov r1, r8
	subs r0, r0, r1
	str r0, [sp, #0x10]
	subs r5, r5, r1
	ldr r2, [sp, #0x34]
	subs r2, r2, r1
	str r2, [sp, #0x34]
_080747A0:
	ldr r3, [sp, #0x14]
	cmp r3, #0
	ble _080747EE
	ldr r0, [sp, #0x30]
	cmp r0, #0
	beq _080747E2
	cmp r6, #0
	ble _080747D2
	mov r0, sl
	ldr r1, [sp, #0x64]
	adds r2, r6, #0
	bl _pow5mult
	str r0, [sp, #0x64]
	mov r0, sl
	ldr r1, [sp, #0x64]
	ldr r2, [sp, #0x5c]
	bl _multiply
	adds r4, r0, #0
	mov r0, sl
	ldr r1, [sp, #0x5c]
	bl _Bfree
	str r4, [sp, #0x5c]
_080747D2:
	ldr r1, [sp, #0x14]
	subs r4, r1, r6
	cmp r4, #0
	beq _080747EE
	mov r0, sl
	ldr r1, [sp, #0x5c]
	adds r2, r4, #0
	b _080747E8
_080747E2:
	mov r0, sl
	ldr r1, [sp, #0x5c]
	ldr r2, [sp, #0x14]
_080747E8:
	bl _pow5mult
	str r0, [sp, #0x5c]
_080747EE:
	mov r0, sl
	movs r1, #1
	bl _i2b
	str r0, [sp, #0x68]
	ldr r2, [sp, #0x38]
	cmp r2, #0
	ble _08074808
	mov r0, sl
	ldr r1, [sp, #0x68]
	bl _pow5mult
	str r0, [sp, #0x68]
_08074808:
	ldr r3, [sp, #0xc]
	cmp r3, #1
	bgt _08074844
	ldr r0, [sp, #0x44]
	cmp r0, #0
	bne _08074840
	ldr r0, _08074838 @ =0x000FFFFF
	ldr r1, [sp, #0x40]
	ands r0, r1
	cmp r0, #0
	bne _08074840
	ldr r0, _0807483C @ =0x7FF00000
	ands r1, r0
	cmp r1, #0
	beq _08074840
	ldr r1, [sp, #0x10]
	adds r1, #1
	str r1, [sp, #0x10]
	ldr r2, [sp, #0x34]
	adds r2, #1
	str r2, [sp, #0x34]
	movs r3, #1
	str r3, [sp, #0x3c]
	b _08074844
	.align 2, 0
_08074838: .4byte 0x000FFFFF
_0807483C: .4byte 0x7FF00000
_08074840:
	movs r0, #0
	str r0, [sp, #0x3c]
_08074844:
	ldr r1, [sp, #0x38]
	cmp r1, #0
	beq _08074870
	ldr r2, [sp, #0x68]
	ldr r1, [r2, #0x10]
	subs r1, #1
	lsls r1, r1, #2
	adds r0, r2, #0
	adds r0, #0x14
	adds r0, r0, r1
	ldr r0, [r0]
	bl _hi0bits
	ldr r1, [sp, #0x34]
	adds r1, #0x20
	subs r1, r1, r0
	mov r8, r1
	movs r0, #0x1f
	mov r3, r8
	ands r3, r0
	mov r8, r3
	b _0807487E
_08074870:
	ldr r0, [sp, #0x34]
	adds r0, #1
	mov r8, r0
	movs r0, #0x1f
	mov r1, r8
	ands r1, r0
	mov r8, r1
_0807487E:
	mov r2, r8
	cmp r2, #0
	beq _0807488A
	movs r0, #0x20
	subs r2, r0, r2
	mov r8, r2
_0807488A:
	mov r3, r8
	cmp r3, #4
	ble _08074896
	movs r0, #4
	rsbs r0, r0, #0
	b _0807489E
_08074896:
	mov r3, r8
	cmp r3, #3
	bgt _080748AE
	movs r0, #0x1c
_0807489E:
	add r8, r0
	ldr r1, [sp, #0x10]
	add r1, r8
	str r1, [sp, #0x10]
	add r5, r8
	ldr r2, [sp, #0x34]
	add r2, r8
	str r2, [sp, #0x34]
_080748AE:
	ldr r3, [sp, #0x10]
	cmp r3, #0
	ble _080748C0
	mov r0, sl
	ldr r1, [sp, #0x5c]
	adds r2, r3, #0
	bl _lshift
	str r0, [sp, #0x5c]
_080748C0:
	ldr r0, [sp, #0x34]
	cmp r0, #0
	ble _080748D2
	mov r0, sl
	ldr r1, [sp, #0x68]
	ldr r2, [sp, #0x34]
	bl _lshift
	str r0, [sp, #0x68]
_080748D2:
	ldr r1, [sp, #0x2c]
	cmp r1, #0
	beq _08074910
	ldr r0, [sp, #0x5c]
	ldr r1, [sp, #0x68]
	bl __mcmp
	cmp r0, #0
	bge _08074910
	ldr r2, [sp, #0x24]
	subs r2, #1
	str r2, [sp, #0x24]
	mov r0, sl
	ldr r1, [sp, #0x5c]
	movs r2, #0xa
	movs r3, #0
	bl _multadd
	str r0, [sp, #0x5c]
	ldr r3, [sp, #0x30]
	cmp r3, #0
	beq _0807490C
	mov r0, sl
	ldr r1, [sp, #0x64]
	movs r2, #0xa
	movs r3, #0
	bl _multadd
	str r0, [sp, #0x64]
_0807490C:
	ldr r0, [sp, #0x20]
	str r0, [sp, #0x18]
_08074910:
	ldr r1, [sp, #0x18]
	cmp r1, #0
	bgt _08074954
	ldr r2, [sp, #0xc]
	cmp r2, #2
	ble _08074954
	cmp r1, #0
	blt _0807493A
	mov r0, sl
	ldr r1, [sp, #0x68]
	movs r2, #5
	movs r3, #0
	bl _multadd
	str r0, [sp, #0x68]
	ldr r0, [sp, #0x5c]
	ldr r1, [sp, #0x68]
	bl __mcmp
	cmp r0, #0
	bgt _08074942
_0807493A:
	ldr r3, [sp, #0xa4]
	mvns r3, r3
	str r3, [sp, #0x24]
	b _08074B8A
_08074942:
	movs r0, #0x31
	mov r1, sb
	strb r0, [r1]
	movs r2, #1
	add sb, r2
	ldr r3, [sp, #0x24]
	adds r3, #1
	str r3, [sp, #0x24]
	b _08074B8A
_08074954:
	ldr r0, [sp, #0x30]
	cmp r0, #0
	bne _0807495C
	b _08074AD2
_0807495C:
	cmp r5, #0
	ble _0807496C
	mov r0, sl
	ldr r1, [sp, #0x64]
	adds r2, r5, #0
	bl _lshift
	str r0, [sp, #0x64]
_0807496C:
	ldr r1, [sp, #0x64]
	str r1, [sp, #0x60]
	ldr r2, [sp, #0x3c]
	cmp r2, #0
	beq _0807499E
	ldr r1, [r1, #4]
	mov r0, sl
	bl _Balloc
	str r0, [sp, #0x64]
	adds r0, #0xc
	ldr r1, [sp, #0x60]
	adds r1, #0xc
	ldr r3, [sp, #0x60]
	ldr r2, [r3, #0x10]
	lsls r2, r2, #2
	adds r2, #8
	bl memcpy
	mov r0, sl
	ldr r1, [sp, #0x64]
	movs r2, #1
	bl _lshift
	str r0, [sp, #0x64]
_0807499E:
	movs r0, #1
	mov r8, r0
	mov r1, r8
	ldr r2, [sp, #0x44]
	ands r2, r1
	str r2, [sp, #0x80]
	b _080749F4
_080749AC:
	mov r0, sl
	ldr r1, [sp, #0x5c]
	movs r2, #0xa
	movs r3, #0
	bl _multadd
	str r0, [sp, #0x5c]
	ldr r3, [sp, #0x60]
	ldr r0, [sp, #0x64]
	cmp r3, r0
	bne _080749D4
	mov r0, sl
	ldr r1, [sp, #0x64]
	movs r2, #0xa
	movs r3, #0
	bl _multadd
	str r0, [sp, #0x64]
	str r0, [sp, #0x60]
	b _080749F0
_080749D4:
	mov r0, sl
	ldr r1, [sp, #0x60]
	movs r2, #0xa
	movs r3, #0
	bl _multadd
	str r0, [sp, #0x60]
	mov r0, sl
	ldr r1, [sp, #0x64]
	movs r2, #0xa
	movs r3, #0
	bl _multadd
	str r0, [sp, #0x64]
_080749F0:
	movs r1, #1
	add r8, r1
_080749F4:
	ldr r0, [sp, #0x5c]
	ldr r1, [sp, #0x68]
	bl quorem
	adds r7, r0, #0
	adds r7, #0x30
	ldr r0, [sp, #0x5c]
	ldr r1, [sp, #0x60]
	bl __mcmp
	adds r4, r0, #0
	mov r0, sl
	ldr r1, [sp, #0x68]
	ldr r2, [sp, #0x64]
	bl __mdiff
	adds r5, r0, #0
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _08074A28
	ldr r0, [sp, #0x5c]
	adds r1, r5, #0
	bl __mcmp
	adds r6, r0, #0
	b _08074A2A
_08074A28:
	movs r6, #1
_08074A2A:
	mov r0, sl
	adds r1, r5, #0
	bl _Bfree
	cmp r6, #0
	bne _08074A56
	ldr r2, [sp, #0xc]
	cmp r2, #0
	bne _08074A56
	ldr r3, [sp, #0x80]
	cmp r3, #0
	bne _08074A56
	cmp r7, #0x39
	beq _08074AA8
	cmp r4, #0
	ble _08074A4C
	adds r7, #1
_08074A4C:
	mov r0, sb
	strb r7, [r0]
	movs r1, #1
	add sb, r1
	b _08074B8A
_08074A56:
	cmp r4, #0
	blt _08074A6A
	cmp r4, #0
	bne _08074AA0
	ldr r2, [sp, #0xc]
	cmp r2, #0
	bne _08074AA0
	ldr r3, [sp, #0x80]
	cmp r3, #0
	bne _08074AA0
_08074A6A:
	cmp r6, #0
	ble _08074A9A
	mov r0, sl
	ldr r1, [sp, #0x5c]
	movs r2, #1
	bl _lshift
	str r0, [sp, #0x5c]
	ldr r1, [sp, #0x68]
	bl __mcmp
	adds r6, r0, #0
	cmp r6, #0
	bgt _08074A94
	cmp r6, #0
	bne _08074A9A
	adds r0, r7, #0
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08074A9A
_08074A94:
	adds r7, #1
	cmp r7, #0x3a
	beq _08074AA8
_08074A9A:
	mov r2, sb
	strb r7, [r2]
	b _08074B52
_08074AA0:
	cmp r6, #0
	ble _08074AC0
	cmp r7, #0x39
	bne _08074AB4
_08074AA8:
	movs r0, #0x39
	mov r1, sb
	strb r0, [r1]
	movs r2, #1
	add sb, r2
	b _08074B28
_08074AB4:
	adds r0, r7, #1
	mov r3, sb
	strb r0, [r3]
	movs r0, #1
	add sb, r0
	b _08074B8A
_08074AC0:
	mov r1, sb
	strb r7, [r1]
	movs r2, #1
	add sb, r2
	ldr r3, [sp, #0x18]
	cmp r8, r3
	beq _08074AD0
	b _080749AC
_08074AD0:
	b _08074B04
_08074AD2:
	movs r0, #1
	mov r8, r0
	b _08074AEA
_08074AD8:
	mov r0, sl
	ldr r1, [sp, #0x5c]
	movs r2, #0xa
	movs r3, #0
	bl _multadd
	str r0, [sp, #0x5c]
	movs r1, #1
	add r8, r1
_08074AEA:
	ldr r0, [sp, #0x5c]
	ldr r1, [sp, #0x68]
	bl quorem
	adds r7, r0, #0
	adds r7, #0x30
	mov r2, sb
	strb r7, [r2]
	movs r3, #1
	add sb, r3
	ldr r0, [sp, #0x18]
	cmp r8, r0
	blt _08074AD8
_08074B04:
	mov r0, sl
	ldr r1, [sp, #0x5c]
	movs r2, #1
	bl _lshift
	str r0, [sp, #0x5c]
	ldr r1, [sp, #0x68]
	bl __mcmp
	adds r4, r0, #0
	cmp r4, #0
	bgt _08074B28
	cmp r4, #0
	bne _08074B6A
	movs r0, #1
	ands r7, r0
	cmp r7, #0
	beq _08074B6A
_08074B28:
	movs r1, #1
	rsbs r1, r1, #0
	add sb, r1
	mov r2, sb
	ldrb r2, [r2]
	cmp r2, #0x39
	bne _08074B4A
_08074B36:
	ldr r3, [sp, #0x74]
	cmp sb, r3
	beq _08074B58
	movs r0, #1
	rsbs r0, r0, #0
	add sb, r0
	mov r1, sb
	ldrb r1, [r1]
	cmp r1, #0x39
	beq _08074B36
_08074B4A:
	mov r2, sb
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
_08074B52:
	movs r3, #1
	add sb, r3
	b _08074B8A
_08074B58:
	ldr r0, [sp, #0x24]
	adds r0, #1
	str r0, [sp, #0x24]
	movs r0, #0x31
	ldr r1, [sp, #0x74]
	strb r0, [r1]
	adds r1, #1
	mov sb, r1
	b _08074B8A
_08074B6A:
	movs r2, #1
	rsbs r2, r2, #0
	add sb, r2
	mov r3, sb
	ldrb r3, [r3]
	cmp r3, #0x30
	bne _08074B86
_08074B78:
	movs r0, #1
	rsbs r0, r0, #0
	add sb, r0
	mov r1, sb
	ldrb r1, [r1]
	cmp r1, #0x30
	beq _08074B78
_08074B86:
	movs r2, #1
	add sb, r2
_08074B8A:
	mov r0, sl
	ldr r1, [sp, #0x68]
	bl _Bfree
	ldr r3, [sp, #0x64]
	cmp r3, #0
	beq _08074BB2
	ldr r0, [sp, #0x60]
	cmp r0, #0
	beq _08074BAA
	cmp r0, r3
	beq _08074BAA
	mov r0, sl
	ldr r1, [sp, #0x60]
	bl _Bfree
_08074BAA:
	mov r0, sl
	ldr r1, [sp, #0x64]
	bl _Bfree
_08074BB2:
	mov r0, sl
	ldr r1, [sp, #0x5c]
	bl _Bfree
	movs r0, #0
	mov r1, sb
	strb r0, [r1]
	ldr r0, [sp, #0x24]
	adds r0, #1
	ldr r2, [sp, #0xa8]
	str r0, [r2]
	ldr r3, [sp, #0xb0]
	cmp r3, #0
	beq _08074BD0
	str r1, [r3]
_08074BD0:
	ldr r0, [sp, #0x74]
_08074BD2:
	add sp, #0x84
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	@ stdio/fflush.o

	thumb_func_start fflush
fflush: @ 0x08074BE0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	cmp r4, #0
	bne _08074BFC
	ldr r0, _08074BF4 @ =0x0203A74C
	ldr r0, [r0]
	ldr r1, _08074BF8 @ =fflush
	bl _fwalk
	b _08074C72
	.align 2, 0
_08074BF4: .4byte 0x0203A74C
_08074BF8: .4byte fflush
_08074BFC:
	ldr r0, [r4, #0x54]
	cmp r0, #0
	bne _08074C08
	ldr r0, _08074C3C @ =0x0203A74C
	ldr r0, [r0]
	str r0, [r4, #0x54]
_08074C08:
	ldr r1, [r4, #0x54]
	ldr r0, [r1, #0x38]
	cmp r0, #0
	bne _08074C16
	adds r0, r1, #0
	bl __sinit
_08074C16:
	movs r0, #0xc
	ldrsh r1, [r4, r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08074C70
	ldr r6, [r4, #0x10]
	cmp r6, #0
	beq _08074C70
	ldr r0, [r4]
	subs r5, r0, r6
	str r6, [r4]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _08074C4E
	ldr r0, [r4, #0x14]
	b _08074C50
	.align 2, 0
_08074C3C: .4byte 0x0203A74C
_08074C40:
	movs r0, #0x40
	ldrh r1, [r4, #0xc]
	orrs r0, r1
	strh r0, [r4, #0xc]
	movs r0, #1
	rsbs r0, r0, #0
	b _08074C72
_08074C4E:
	movs r0, #0
_08074C50:
	str r0, [r4, #8]
	cmp r5, #0
	ble _08074C70
_08074C56:
	ldr r0, [r4, #0x1c]
	ldr r3, [r4, #0x24]
	adds r1, r6, #0
	adds r2, r5, #0
	bl _call_via_r3
	adds r1, r0, #0
	cmp r1, #0
	ble _08074C40
	adds r6, r6, r1
	subs r5, r5, r1
	cmp r5, #0
	bgt _08074C56
_08074C70:
	movs r0, #0
_08074C72:
	pop {r4, r5, r6, pc}

	@ stdio/findfp.o

	thumb_func_start std
std: @ 0x08074C74
	push {r4, lr}
	movs r4, #0
	str r4, [r0]
	str r4, [r0, #4]
	str r4, [r0, #8]
	strh r1, [r0, #0xc]
	strh r2, [r0, #0xe]
	str r4, [r0, #0x10]
	str r4, [r0, #0x18]
	str r0, [r0, #0x1c]
	ldr r1, _08074C9C @ =__sread
	str r1, [r0, #0x20]
	ldr r1, _08074CA0 @ =__swrite
	str r1, [r0, #0x24]
	ldr r1, _08074CA4 @ =__sseek
	str r1, [r0, #0x28]
	ldr r1, _08074CA8 @ =__sclose
	str r1, [r0, #0x2c]
	str r3, [r0, #0x54]
	pop {r4, pc}
	.align 2, 0
_08074C9C: .4byte __sread
_08074CA0: .4byte __swrite
_08074CA4: .4byte __sseek
_08074CA8: .4byte __sclose

	thumb_func_start __sfmoreglue
__sfmoreglue: @ 0x08074CAC
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	movs r1, #0x58
	adds r6, r5, #0
	muls r6, r1, r6
	adds r1, r6, #0
	adds r1, #0xc
	bl _malloc_r
	adds r4, r0, #0
	cmp r4, #0
	beq _08074CD8
	adds r0, #0xc
	movs r1, #0
	str r1, [r4]
	str r5, [r4, #4]
	str r0, [r4, #8]
	adds r2, r6, #0
	bl memset
	adds r0, r4, #0
	b _08074CDA
_08074CD8:
	movs r0, #0
_08074CDA:
	pop {r4, r5, r6, pc}

	thumb_func_start __sfp
__sfp: @ 0x08074CDC
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x38]
	cmp r0, #0
	bne _08074CEC
	adds r0, r5, #0
	bl __sinit
_08074CEC:
	movs r0, #0xec
	lsls r0, r0, #1
	adds r4, r5, r0
	b _08074CF6
_08074CF4:
	ldr r4, [r4]
_08074CF6:
	ldr r2, [r4, #8]
	ldr r0, [r4, #4]
	b _08074D06
_08074CFC:
	movs r3, #0xc
	ldrsh r1, [r2, r3]
	cmp r1, #0
	beq _08074D28
	adds r2, #0x58
_08074D06:
	subs r0, #1
	cmp r0, #0
	bge _08074CFC
	ldr r0, [r4]
	cmp r0, #0
	bne _08074CF4
	adds r0, r5, #0
	movs r1, #4
	bl __sfmoreglue
	str r0, [r4]
	cmp r0, #0
	bne _08074CF4
	movs r0, #0xc
	str r0, [r5]
	movs r0, #0
	b _08074D48
_08074D28:
	movs r0, #1
	strh r0, [r2, #0xc]
	str r1, [r2]
	str r1, [r2, #8]
	str r1, [r2, #4]
	str r1, [r2, #0x10]
	str r1, [r2, #0x14]
	str r1, [r2, #0x18]
	ldr r0, _08074D4C @ =0x0000FFFF
	strh r0, [r2, #0xe]
	str r1, [r2, #0x30]
	str r1, [r2, #0x34]
	str r1, [r2, #0x44]
	str r1, [r2, #0x48]
	str r5, [r2, #0x54]
	adds r0, r2, #0
_08074D48:
	pop {r4, r5, pc}
	.align 2, 0
_08074D4C: .4byte 0x0000FFFF

	thumb_func_start _cleanup_r
_cleanup_r: @ 0x08074D50
	push {lr}
	ldr r1, _08074D5C @ =fflush
	bl _fwalk
	pop {pc}
	.align 2, 0
_08074D5C: .4byte fflush

	thumb_func_start _cleanup
_cleanup: @ 0x08074D60
	push {lr}
	ldr r0, _08074D6C @ =0x0203A74C
	ldr r0, [r0]
	bl _cleanup_r
	pop {pc}
	.align 2, 0
_08074D6C: .4byte 0x0203A74C

	thumb_func_start __sinit
__sinit: @ 0x08074D70
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _08074DCC @ =_cleanup_r
	str r0, [r5, #0x3c]
	movs r0, #1
	str r0, [r5, #0x38]
	movs r0, #0xf2
	lsls r0, r0, #1
	adds r4, r5, r0
	adds r0, r4, #0
	movs r1, #4
	movs r2, #0
	adds r3, r5, #0
	bl std
	movs r1, #0x8f
	lsls r1, r1, #2
	adds r0, r5, r1
	movs r1, #9
	movs r2, #1
	adds r3, r5, #0
	bl std
	movs r1, #0xa5
	lsls r1, r1, #2
	adds r0, r5, r1
	movs r1, #0xa
	movs r2, #2
	adds r3, r5, #0
	bl std
	movs r0, #0xec
	lsls r0, r0, #1
	adds r1, r5, r0
	movs r0, #0
	str r0, [r1]
	movs r0, #0xee
	lsls r0, r0, #1
	adds r1, r5, r0
	movs r0, #3
	str r0, [r1]
	movs r1, #0xf0
	lsls r1, r1, #1
	adds r0, r5, r1
	str r4, [r0]
	pop {r4, r5, pc}
	.align 2, 0
_08074DCC: .4byte _cleanup_r

	@ stdlib/freer.o

	thumb_func_start _free_r
_free_r: @ 0x08074DD0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov sb, r0
	adds r4, r1, #0
	cmp r4, #0
	bne _08074DE2
	b _08074F86
_08074DE2:
	bl __malloc_lock
	adds r5, r4, #0
	subs r5, #8
	ldr r1, [r5, #4]
	movs r6, #2
	rsbs r6, r6, #0
	ands r6, r1
	adds r7, r5, r6
	ldr r4, [r7, #4]
	movs r0, #4
	rsbs r0, r0, #0
	ands r4, r0
	ldr r0, _08074E44 @ =0x0203A764
	mov ip, r0
	ldr r0, [r0, #8]
	cmp r7, r0
	bne _08074E50
	adds r6, r6, r4
	movs r4, #1
	ands r1, r4
	cmp r1, #0
	bne _08074E1E
	ldr r0, [r5]
	subs r5, r5, r0
	adds r6, r6, r0
	ldr r3, [r5, #0xc]
	ldr r2, [r5, #8]
	str r3, [r2, #0xc]
	str r2, [r3, #8]
_08074E1E:
	adds r0, r6, #0
	orrs r0, r4
	str r0, [r5, #4]
	mov r2, ip
	str r5, [r2, #8]
	ldr r0, _08074E48 @ =0x0203AB6C
	ldr r0, [r0]
	cmp r6, r0
	blo _08074E3A
	ldr r0, _08074E4C @ =0x0203AB70
	ldr r1, [r0]
	mov r0, sb
	bl _malloc_trim_r
_08074E3A:
	mov r0, sb
	bl __malloc_unlock
	b _08074F86
	.align 2, 0
_08074E44: .4byte 0x0203A764
_08074E48: .4byte 0x0203AB6C
_08074E4C: .4byte 0x0203AB70
_08074E50:
	str r4, [r7, #4]
	movs r0, #0
	mov r8, r0
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	bne _08074E7C
	ldr r0, [r5]
	subs r5, r5, r0
	adds r6, r6, r0
	ldr r1, [r5, #8]
	mov r0, ip
	adds r0, #8
	cmp r1, r0
	bne _08074E74
	movs r2, #1
	mov r8, r2
	b _08074E7C
_08074E74:
	ldr r3, [r5, #0xc]
	adds r2, r1, #0
	str r3, [r2, #0xc]
	str r2, [r3, #8]
_08074E7C:
	adds r0, r7, r4
	ldr r0, [r0, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08074EB4
	adds r6, r6, r4
	ldr r1, [r7, #8]
	mov r0, r8
	cmp r0, #0
	bne _08074EAC
	ldr r0, _08074EA8 @ =0x0203A76C
	cmp r1, r0
	bne _08074EAC
	movs r2, #1
	mov r8, r2
	str r5, [r1, #0xc]
	str r5, [r1, #8]
	str r1, [r5, #0xc]
	str r1, [r5, #8]
	b _08074EB4
	.align 2, 0
_08074EA8: .4byte 0x0203A76C
_08074EAC:
	ldr r3, [r7, #0xc]
	adds r2, r1, #0
	str r3, [r2, #0xc]
	str r2, [r3, #8]
_08074EB4:
	movs r1, #1
	adds r0, r6, #0
	orrs r0, r1
	str r0, [r5, #4]
	adds r0, r5, r6
	str r6, [r0]
	mov r0, r8
	cmp r0, #0
	bne _08074F80
	ldr r0, _08074EE4 @ =0x000001FF
	cmp r6, r0
	bhi _08074EEC
	lsrs r4, r6, #3
	ldr r2, _08074EE8 @ =0x0203A764
	adds r0, r4, #0
	asrs r0, r0, #2
	lsls r1, r0
	ldr r0, [r2, #4]
	orrs r0, r1
	str r0, [r2, #4]
	lsls r0, r4, #3
	adds r3, r0, r2
	ldr r2, [r3, #8]
	b _08074F78
	.align 2, 0
_08074EE4: .4byte 0x000001FF
_08074EE8: .4byte 0x0203A764
_08074EEC:
	lsrs r1, r6, #9
	cmp r1, #0
	bne _08074EF6
	lsrs r4, r6, #3
	b _08074F3E
_08074EF6:
	cmp r1, #4
	bhi _08074F02
	lsrs r0, r6, #6
	adds r4, r0, #0
	adds r4, #0x38
	b _08074F3E
_08074F02:
	cmp r1, #0x14
	bhi _08074F0C
	adds r4, r1, #0
	adds r4, #0x5b
	b _08074F3E
_08074F0C:
	cmp r1, #0x54
	bhi _08074F18
	lsrs r0, r6, #0xc
	adds r4, r0, #0
	adds r4, #0x6e
	b _08074F3E
_08074F18:
	movs r0, #0xaa
	lsls r0, r0, #1
	cmp r1, r0
	bhi _08074F28
	lsrs r0, r6, #0xf
	adds r4, r0, #0
	adds r4, #0x77
	b _08074F3E
_08074F28:
	ldr r0, _08074F38 @ =0x00000554
	cmp r1, r0
	bhi _08074F3C
	lsrs r0, r6, #0x12
	adds r4, r0, #0
	adds r4, #0x7c
	b _08074F3E
	.align 2, 0
_08074F38: .4byte 0x00000554
_08074F3C:
	movs r4, #0x7e
_08074F3E:
	lsls r0, r4, #3
	ldr r7, _08074F5C @ =0x0203A764
	adds r3, r0, r7
	ldr r2, [r3, #8]
	cmp r2, r3
	bne _08074F60
	adds r0, r4, #0
	asrs r0, r0, #2
	movs r1, #1
	lsls r1, r0
	ldr r0, [r7, #4]
	orrs r0, r1
	str r0, [r7, #4]
	b _08074F78
	.align 2, 0
_08074F5C: .4byte 0x0203A764
_08074F60:
	ldr r0, [r2, #4]
	movs r1, #4
	rsbs r1, r1, #0
	b _08074F70
_08074F68:
	ldr r2, [r2, #8]
	cmp r2, r3
	beq _08074F76
	ldr r0, [r2, #4]
_08074F70:
	ands r0, r1
	cmp r6, r0
	blo _08074F68
_08074F76:
	ldr r3, [r2, #0xc]
_08074F78:
	str r3, [r5, #0xc]
	str r2, [r5, #8]
	str r5, [r3, #8]
	str r5, [r2, #0xc]
_08074F80:
	mov r0, sb
	bl __malloc_unlock
_08074F86:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start _malloc_trim_r
_malloc_trim_r: @ 0x08074F90
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	adds r4, r1, #0
	bl __malloc_lock
	ldr r0, _08075018 @ =0x0203A764
	mov r8, r0
	ldr r0, [r0, #8]
	ldr r6, [r0, #4]
	movs r0, #4
	rsbs r0, r0, #0
	ands r6, r0
	subs r4, r6, r4
	movs r5, #0x80
	lsls r5, r5, #5
	ldr r1, _0807501C @ =0x00000FEF
	adds r4, r4, r1
	adds r0, r4, #0
	adds r1, r5, #0
	bl __udivsi3
	subs r0, #1
	lsls r4, r0, #0xc
	cmp r4, r5
	blt _0807500E
	adds r0, r7, #0
	movs r1, #0
	bl _sbrk_r
	adds r2, r0, #0
	mov r1, r8
	ldr r0, [r1, #8]
	adds r0, r0, r6
	cmp r2, r0
	bne _0807500E
	rsbs r1, r4, #0
	adds r0, r7, #0
	bl _sbrk_r
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _08075028
	adds r0, r7, #0
	movs r1, #0
	bl _sbrk_r
	adds r2, r0, #0
	mov r0, r8
	ldr r3, [r0, #8]
	subs r6, r2, r3
	cmp r6, #0xf
	ble _0807500E
	ldr r1, _08075020 @ =0x0203AB80
	ldr r0, _08075024 @ =0x0203AB74
	ldr r0, [r0]
	subs r0, r2, r0
	str r0, [r1]
	movs r0, #1
	orrs r6, r0
	str r6, [r3, #4]
_0807500E:
	adds r0, r7, #0
	bl __malloc_unlock
	movs r0, #0
	b _08075044
	.align 2, 0
_08075018: .4byte 0x0203A764
_0807501C: .4byte 0x00000FEF
_08075020: .4byte 0x0203AB80
_08075024: .4byte 0x0203AB74
_08075028:
	mov r1, r8
	ldr r2, [r1, #8]
	subs r0, r6, r4
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #4]
	ldr r1, _0807504C @ =0x0203AB80
	ldr r0, [r1]
	subs r0, r0, r4
	str r0, [r1]
	adds r0, r7, #0
	bl __malloc_unlock
	movs r0, #1
_08075044:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0807504C: .4byte 0x0203AB80

	@ stdio/fvwrite.o

	thumb_func_start __sfvwrite
__sfvwrite: @ 0x08075050
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r5, r0, #0
	mov sl, r1
	ldr r6, [r1, #8]
	cmp r6, #0
	bne _08075068
	b _0807525E
_08075068:
	movs r0, #8
	ldrh r1, [r5, #0xc]
	ands r0, r1
	cmp r0, #0
	beq _08075078
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _08075084
_08075078:
	adds r0, r5, #0
	bl __swsetup
	cmp r0, #0
	beq _08075084
	b _0807526A
_08075084:
	mov r2, sl
	ldr r2, [r2]
	mov r8, r2
	movs r6, #0
	ldrh r1, [r5, #0xc]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080750D8
_08075096:
	ldr r0, [r5, #0x1c]
	ldr r3, [r5, #0x24]
	cmp r6, #0
	bne _080750AC
_0807509E:
	mov r1, r8
	ldr r7, [r1]
	ldr r6, [r1, #4]
	movs r2, #8
	add r8, r2
	cmp r6, #0
	beq _0807509E
_080750AC:
	adds r2, r6, #0
	movs r1, #0x80
	lsls r1, r1, #3
	cmp r6, r1
	bls _080750B8
	adds r2, r1, #0
_080750B8:
	adds r1, r7, #0
	bl _call_via_r3
	adds r4, r0, #0
	cmp r4, #0
	bgt _080750C6
	b _08075262
_080750C6:
	adds r7, r7, r4
	subs r6, r6, r4
	mov r1, sl
	ldr r0, [r1, #8]
	subs r0, r0, r4
	str r0, [r1, #8]
	cmp r0, #0
	bne _08075096
	b _0807525E
_080750D8:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08075192
_080750E0:
	ldrh r1, [r5, #0xc]
	ldr r0, [r5, #8]
	ldr r3, [r5]
	cmp r6, #0
	bne _080750F8
_080750EA:
	mov r2, r8
	ldr r7, [r2]
	ldr r6, [r2, #4]
	movs r2, #8
	add r8, r2
	cmp r6, #0
	beq _080750EA
_080750F8:
	adds r4, r0, #0
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08075126
	cmp r6, r4
	bhs _0807510C
	adds r4, r6, #0
_0807510C:
	adds r0, r3, #0
	adds r1, r7, #0
	adds r2, r4, #0
	bl memmove
	ldr r0, [r5, #8]
	subs r0, r0, r4
	str r0, [r5, #8]
	ldr r0, [r5]
	adds r0, r0, r4
	str r0, [r5]
	adds r4, r6, #0
	b _08075180
_08075126:
	ldr r0, [r5, #0x10]
	cmp r3, r0
	bls _0807514E
	cmp r6, r4
	bls _0807514E
	adds r0, r3, #0
	adds r1, r7, #0
	adds r2, r4, #0
	bl memmove
	ldr r0, [r5]
	adds r0, r0, r4
	str r0, [r5]
	adds r0, r5, #0
	bl fflush
	cmp r0, #0
	beq _0807514C
	b _08075262
_0807514C:
	b _08075180
_0807514E:
	ldr r4, [r5, #0x14]
	cmp r6, r4
	blo _08075168
	ldr r0, [r5, #0x1c]
	ldr r3, [r5, #0x24]
	adds r1, r7, #0
	adds r2, r4, #0
	bl _call_via_r3
	adds r4, r0, #0
	cmp r4, #0
	ble _08075262
	b _08075180
_08075168:
	adds r4, r6, #0
	adds r0, r3, #0
	adds r1, r7, #0
	adds r2, r4, #0
	bl memmove
	ldr r0, [r5, #8]
	subs r0, r0, r4
	str r0, [r5, #8]
	ldr r0, [r5]
	adds r0, r0, r4
	str r0, [r5]
_08075180:
	adds r7, r7, r4
	subs r6, r6, r4
	mov r1, sl
	ldr r0, [r1, #8]
	subs r0, r0, r4
	str r0, [r1, #8]
	cmp r0, #0
	bne _080750E0
	b _0807525E
_08075192:
	movs r2, #0
	str r2, [sp]
_08075196:
	cmp r6, #0
	bne _080751AC
	movs r0, #0
	str r0, [sp]
_0807519E:
	mov r1, r8
	ldr r7, [r1]
	ldr r6, [r1, #4]
	movs r2, #8
	add r8, r2
	cmp r6, #0
	beq _0807519E
_080751AC:
	ldr r0, [sp]
	cmp r0, #0
	bne _080751D0
	adds r0, r7, #0
	movs r1, #0xa
	adds r2, r6, #0
	bl memchr
	adds r1, r0, #0
	cmp r1, #0
	beq _080751C8
	subs r0, r7, #1
	subs r1, r1, r0
	b _080751CA
_080751C8:
	adds r1, r6, #1
_080751CA:
	mov sb, r1
	movs r2, #1
	str r2, [sp]
_080751D0:
	mov r2, sb
	cmp sb, r6
	bls _080751D8
	adds r2, r6, #0
_080751D8:
	ldr r0, [r5, #8]
	ldr r1, [r5, #0x14]
	adds r4, r0, r1
	ldr r0, [r5, #0x10]
	ldr r3, [r5]
	cmp r3, r0
	bls _08075206
	cmp r2, r4
	ble _08075206
	adds r0, r3, #0
	adds r1, r7, #0
	adds r2, r4, #0
	bl memmove
	ldr r0, [r5]
	adds r0, r0, r4
	str r0, [r5]
	adds r0, r5, #0
	bl fflush
	cmp r0, #0
	bne _08075262
	b _08075236
_08075206:
	adds r4, r1, #0
	cmp r2, r4
	blt _08075220
	ldr r0, [r5, #0x1c]
	ldr r3, [r5, #0x24]
	adds r1, r7, #0
	adds r2, r4, #0
	bl _call_via_r3
	adds r4, r0, #0
	cmp r4, #0
	ble _08075262
	b _08075236
_08075220:
	adds r4, r2, #0
	adds r0, r3, #0
	adds r1, r7, #0
	bl memmove
	ldr r0, [r5, #8]
	subs r0, r0, r4
	str r0, [r5, #8]
	ldr r0, [r5]
	adds r0, r0, r4
	str r0, [r5]
_08075236:
	mov r0, sb
	subs r0, r0, r4
	mov sb, r0
	cmp r0, #0
	bne _0807524E
	adds r0, r5, #0
	bl fflush
	cmp r0, #0
	bne _08075262
	movs r1, #0
	str r1, [sp]
_0807524E:
	adds r7, r7, r4
	subs r6, r6, r4
	mov r2, sl
	ldr r0, [r2, #8]
	subs r0, r0, r4
	str r0, [r2, #8]
	cmp r0, #0
	bne _08075196
_0807525E:
	movs r0, #0
	b _0807526E
_08075262:
	movs r0, #0x40
	ldrh r1, [r5, #0xc]
	orrs r0, r1
	strh r0, [r5, #0xc]
_0807526A:
	movs r0, #1
	rsbs r0, r0, #0
_0807526E:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	@ stdio/fwalk.o

	thumb_func_start _fwalk
_fwalk: @ 0x0807527C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r1
	movs r7, #0
	movs r1, #0xec
	lsls r1, r1, #1
	adds r6, r0, r1
	cmp r6, #0
	beq _080752B4
_08075290:
	ldr r5, [r6, #8]
	ldr r4, [r6, #4]
	b _080752A8
_08075296:
	movs r1, #0xc
	ldrsh r0, [r5, r1]
	cmp r0, #0
	beq _080752A6
	adds r0, r5, #0
	bl _call_via_r8
	orrs r7, r0
_080752A6:
	adds r5, #0x58
_080752A8:
	subs r4, #1
	cmp r4, #0
	bge _08075296
	ldr r6, [r6]
	cmp r6, #0
	bne _08075290
_080752B4:
	adds r0, r7, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}

	@ locale/locale.o

	thumb_func_start _setlocale_r
_setlocale_r: @ 0x080752BC
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r4, r2, #0
	cmp r4, #0
	beq _080752F0
	ldr r1, _080752E4 @ =0x082AB8D8
	adds r0, r4, #0
	bl strcmp
	cmp r0, #0
	beq _080752EC
	ldr r1, _080752E8 @ =0x082AB8D0
	adds r0, r4, #0
	bl strcmp
	cmp r0, #0
	beq _080752EC
	movs r0, #0
	b _080752F2
	.align 2, 0
_080752E4: .4byte 0x082AB8D8
_080752E8: .4byte 0x082AB8D0
_080752EC:
	str r6, [r5, #0x30]
	str r4, [r5, #0x34]
_080752F0:
	ldr r0, _080752F4 @ =0x082AB8D8
_080752F2:
	pop {r4, r5, r6, pc}
	.align 2, 0
_080752F4: .4byte 0x082AB8D8

	thumb_func_start _localeconv_r
_localeconv_r: @ 0x080752F8
	ldr r0, _080752FC @ =0x082AB8A0
	bx lr
	.align 2, 0
_080752FC: .4byte 0x082AB8A0

	thumb_func_start setlocale
setlocale: @ 0x08075300
	push {lr}
	adds r3, r0, #0
	adds r2, r1, #0
	ldr r0, _08075314 @ =0x0203A74C
	ldr r0, [r0]
	adds r1, r3, #0
	bl _setlocale_r
	pop {pc}
	.align 2, 0
_08075314: .4byte 0x0203A74C

	thumb_func_start localeconv
localeconv: @ 0x08075318
	push {lr}
	ldr r0, _08075324 @ =0x0203A74C
	ldr r0, [r0]
	bl _localeconv_r
	pop {pc}
	.align 2, 0
_08075324: .4byte 0x0203A74C

	@ stdio/makebuf

	thumb_func_start __smakebuf
__smakebuf: @ 0x08075328
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	adds r4, r0, #0
	movs r0, #2
	ldrh r1, [r4, #0xc]
	ands r0, r1
	cmp r0, #0
	bne _080753BE
	movs r2, #0xe
	ldrsh r0, [r4, r2]
	cmp r0, #0
	blt _08075350
	ldr r0, [r4, #0x54]
	movs r2, #0xe
	ldrsh r1, [r4, r2]
	mov r2, sp
	bl _fstat_r
	cmp r0, #0
	bge _08075362
_08075350:
	movs r7, #0
	movs r6, #0x80
	lsls r6, r6, #3
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r1, #0
	ldrh r2, [r4, #0xc]
	orrs r0, r2
	b _080753A6
_08075362:
	movs r7, #0
	ldr r1, [sp, #4]
	movs r0, #0xf0
	lsls r0, r0, #8
	ands r1, r0
	movs r0, #0x80
	lsls r0, r0, #6
	cmp r1, r0
	bne _08075376
	movs r7, #1
_08075376:
	movs r6, #0x80
	lsls r6, r6, #3
	movs r0, #0x80
	lsls r0, r0, #8
	cmp r1, r0
	bne _0807539C
	ldr r1, [r4, #0x28]
	ldr r0, _08075398 @ =__sseek
	cmp r1, r0
	bne _0807539C
	adds r0, r6, #0
	ldrh r1, [r4, #0xc]
	orrs r0, r1
	strh r0, [r4, #0xc]
	str r6, [r4, #0x4c]
	b _080753A8
	.align 2, 0
_08075398: .4byte __sseek
_0807539C:
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r2, #0
	ldrh r1, [r4, #0xc]
	orrs r0, r1
_080753A6:
	strh r0, [r4, #0xc]
_080753A8:
	ldr r0, [r4, #0x54]
	adds r1, r6, #0
	bl _malloc_r
	adds r2, r0, #0
	cmp r2, #0
	bne _080753CC
	movs r0, #2
	ldrh r2, [r4, #0xc]
	orrs r0, r2
	strh r0, [r4, #0xc]
_080753BE:
	adds r0, r4, #0
	adds r0, #0x43
	str r0, [r4]
	str r0, [r4, #0x10]
	movs r0, #1
	str r0, [r4, #0x14]
	b _080753FA
_080753CC:
	ldr r1, [r4, #0x54]
	ldr r0, _08075400 @ =_cleanup_r
	str r0, [r1, #0x3c]
	movs r0, #0x80
	movs r5, #0
	ldrh r1, [r4, #0xc]
	orrs r0, r1
	strh r0, [r4, #0xc]
	str r2, [r4]
	str r2, [r4, #0x10]
	str r6, [r4, #0x14]
	cmp r7, #0
	beq _080753FA
	movs r2, #0xe
	ldrsh r0, [r4, r2]
	bl isatty
	cmp r0, #0
	beq _080753FA
	movs r0, #1
	ldrh r1, [r4, #0xc]
	orrs r0, r1
	strh r0, [r4, #0xc]
_080753FA:
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08075400: .4byte _cleanup_r

	@ stdlib/mallocr.o

	thumb_func_start malloc_extend_top
malloc_extend_top: @ 0x08075404
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	str r0, [sp]
	ldr r0, _08075478 @ =0x0203A764
	ldr r0, [r0, #8]
	mov r8, r0
	ldr r7, [r0, #4]
	movs r0, #4
	rsbs r0, r0, #0
	ands r7, r0
	mov r2, r8
	adds r4, r2, r7
	ldr r0, _0807547C @ =0x0203AB70
	ldr r0, [r0]
	adds r1, r1, r0
	adds r6, r1, #0
	adds r6, #0x10
	ldr r3, _08075480 @ =0x0203AB74
	mov sl, r3
	ldr r0, [r3]
	movs r2, #1
	rsbs r2, r2, #0
	mov sb, r2
	cmp r0, sb
	beq _08075446
	ldr r3, _08075484 @ =0x0000100F
	adds r6, r1, r3
	ldr r0, _08075488 @ =0xFFFFF000
	ands r6, r0
_08075446:
	ldr r0, [sp]
	adds r1, r6, #0
	bl _sbrk_r
	adds r5, r0, #0
	cmp r5, sb
	beq _08075548
	cmp r5, r4
	bhs _0807545E
	ldr r0, _08075478 @ =0x0203A764
	cmp r8, r0
	bne _08075548
_0807545E:
	ldr r1, _0807548C @ =0x0203AB80
	ldr r0, [r1]
	adds r2, r0, r6
	str r2, [r1]
	cmp r5, r4
	bne _08075490
	adds r2, r6, r7
	ldr r3, _08075478 @ =0x0203A764
	ldr r1, [r3, #8]
	movs r0, #1
	orrs r2, r0
	str r2, [r1, #4]
	b _08075530
	.align 2, 0
_08075478: .4byte 0x0203A764
_0807547C: .4byte 0x0203AB70
_08075480: .4byte 0x0203AB74
_08075484: .4byte 0x0000100F
_08075488: .4byte 0xFFFFF000
_0807548C: .4byte 0x0203AB80
_08075490:
	mov r3, sl
	ldr r0, [r3]
	cmp r0, sb
	bne _0807549C
	str r5, [r3]
	b _080754A2
_0807549C:
	subs r0, r5, r4
	adds r0, r2, r0
	str r0, [r1]
_080754A2:
	adds r1, r5, #0
	adds r1, #8
	movs r0, #7
	ands r1, r0
	cmp r1, #0
	beq _080754B6
	movs r0, #8
	subs r4, r0, r1
	adds r5, r5, r4
	b _080754B8
_080754B6:
	movs r4, #0
_080754B8:
	adds r0, r5, r6
	movs r1, #0x80
	lsls r1, r1, #5
	subs r1, #1
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #5
	subs r0, r1, r0
	adds r4, r4, r0
	ldr r0, [sp]
	adds r1, r4, #0
	bl _sbrk_r
	adds r2, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	beq _08075548
	ldr r1, _08075500 @ =0x0203AB80
	ldr r0, [r1]
	adds r0, r0, r4
	str r0, [r1]
	ldr r1, _08075504 @ =0x0203A764
	str r5, [r1, #8]
	subs r0, r2, r5
	adds r2, r0, r4
	movs r3, #1
	orrs r2, r3
	str r2, [r5, #4]
	cmp r8, r1
	beq _08075530
	cmp r7, #0xf
	bhi _08075508
	str r3, [r5, #4]
	b _08075548
	.align 2, 0
_08075500: .4byte 0x0203AB80
_08075504: .4byte 0x0203A764
_08075508:
	subs r7, #0xc
	movs r0, #8
	rsbs r0, r0, #0
	ands r7, r0
	mov r2, r8
	ldr r0, [r2, #4]
	ands r0, r3
	orrs r0, r7
	str r0, [r2, #4]
	adds r1, r2, r7
	movs r0, #5
	str r0, [r1, #4]
	str r0, [r1, #8]
	cmp r7, #0xf
	bls _08075530
	mov r1, r8
	adds r1, #8
	ldr r0, [sp]
	bl _free_r
_08075530:
	ldr r0, _08075554 @ =0x0203AB80
	ldr r2, _08075558 @ =0x0203AB78
	ldr r1, [r0]
	ldr r0, [r2]
	cmp r1, r0
	bls _0807553E
	str r1, [r2]
_0807553E:
	ldr r2, _0807555C @ =0x0203AB7C
	ldr r0, [r2]
	cmp r1, r0
	bls _08075548
	str r1, [r2]
_08075548:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08075554: .4byte 0x0203AB80
_08075558: .4byte 0x0203AB78
_0807555C: .4byte 0x0203AB7C

	thumb_func_start _malloc_r
_malloc_r: @ 0x08075560
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	str r0, [sp]
	adds r1, #0xb
	cmp r1, #0x16
	ble _08075582
	movs r0, #8
	rsbs r0, r0, #0
	mov r8, r0
	mov r2, r8
	ands r2, r1
	mov r8, r2
	b _08075586
_08075582:
	movs r3, #0x10
	mov r8, r3
_08075586:
	ldr r0, [sp]
	bl __malloc_lock
	ldr r0, _080755CC @ =0x000001F7
	cmp r8, r0
	bhi _080755DA
	mov r4, r8
	lsrs r4, r4, #3
	mov ip, r4
	ldr r0, _080755D0 @ =0x0203A764
	mov r7, r8
	adds r2, r7, r0
	ldr r5, [r2, #0xc]
	cmp r5, r2
	bne _080755AE
	adds r2, r5, #0
	adds r2, #8
	ldr r5, [r2, #0xc]
	cmp r5, r2
	beq _080755D4
_080755AE:
	ldr r2, [r5, #4]
	movs r0, #4
	rsbs r0, r0, #0
	ands r2, r0
	ldr r6, [r5, #0xc]
	ldr r4, [r5, #8]
	str r6, [r4, #0xc]
	str r4, [r6, #8]
	adds r2, r5, r2
	ldr r0, [r2, #4]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #4]
	b _08075906
	.align 2, 0
_080755CC: .4byte 0x000001F7
_080755D0: .4byte 0x0203A764
_080755D4:
	movs r0, #2
	add ip, r0
	b _08075686
_080755DA:
	mov r2, r8
	lsrs r1, r2, #9
	cmp r1, #0
	bne _080755E6
	lsrs r2, r2, #3
	b _08075636
_080755E6:
	cmp r1, #4
	bhi _080755F4
	mov r3, r8
	lsrs r0, r3, #6
	adds r0, #0x38
	mov ip, r0
	b _08075638
_080755F4:
	cmp r1, #0x14
	bhi _080755FE
	adds r1, #0x5b
	mov ip, r1
	b _08075638
_080755FE:
	cmp r1, #0x54
	bhi _0807560C
	mov r4, r8
	lsrs r0, r4, #0xc
	adds r0, #0x6e
	mov ip, r0
	b _08075638
_0807560C:
	movs r0, #0xaa
	lsls r0, r0, #1
	cmp r1, r0
	bhi _0807561E
	mov r7, r8
	lsrs r0, r7, #0xf
	adds r0, #0x77
	mov ip, r0
	b _08075638
_0807561E:
	ldr r0, _08075630 @ =0x00000554
	cmp r1, r0
	bhi _08075634
	mov r1, r8
	lsrs r0, r1, #0x12
	adds r0, #0x7c
	mov ip, r0
	b _08075638
	.align 2, 0
_08075630: .4byte 0x00000554
_08075634:
	movs r2, #0x7e
_08075636:
	mov ip, r2
_08075638:
	mov r3, ip
	lsls r0, r3, #3
	ldr r1, _0807565C @ =0x0203A764
	adds r4, r0, r1
	ldr r5, [r4, #0xc]
	cmp r5, r4
	beq _08075682
	ldr r1, [r5, #4]
	movs r0, #4
	rsbs r0, r0, #0
	ands r1, r0
	mov r7, r8
	subs r3, r1, r7
	cmp r3, #0xf
	ble _08075660
	adds r0, #3
	add ip, r0
	b _08075682
	.align 2, 0
_0807565C: .4byte 0x0203A764
_08075660:
	cmp r3, #0
	blt _08075666
	b _080758A0
_08075666:
	ldr r5, [r5, #0xc]
	cmp r5, r4
	beq _08075682
	ldr r1, [r5, #4]
	movs r0, #4
	rsbs r0, r0, #0
	ands r1, r0
	mov r2, r8
	subs r3, r1, r2
	cmp r3, #0xf
	ble _08075660
	movs r3, #1
	rsbs r3, r3, #0
	add ip, r3
_08075682:
	movs r4, #1
	add ip, r4
_08075686:
	ldr r0, _080756C4 @ =0x0203A76C
	ldr r5, [r0, #8]
	mov sl, r0
	cmp r5, sl
	bne _08075692
	b _08075794
_08075692:
	ldr r1, [r5, #4]
	movs r0, #4
	rsbs r0, r0, #0
	ands r1, r0
	mov r7, r8
	subs r3, r1, r7
	cmp r3, #0xf
	ble _080756C8
	adds r2, r5, r7
	movs r1, #1
	adds r0, r7, #0
	orrs r0, r1
	str r0, [r5, #4]
	mov r4, sl
	str r2, [r4, #0xc]
	str r2, [r4, #8]
	str r4, [r2, #0xc]
	str r4, [r2, #8]
	adds r0, r3, #0
	orrs r0, r1
	str r0, [r2, #4]
	adds r0, r2, r3
	str r3, [r0]
	b _08075906
	.align 2, 0
_080756C4: .4byte 0x0203A76C
_080756C8:
	mov r7, sl
	str r7, [r7, #0xc]
	str r7, [r7, #8]
	cmp r3, #0
	blt _080756DE
	adds r2, r5, r1
	ldr r0, [r2, #4]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #4]
	b _08075906
_080756DE:
	ldr r0, _08075700 @ =0x000001FF
	cmp r1, r0
	bhi _08075704
	lsrs r2, r1, #3
	mov r3, sl
	subs r3, #8
	adds r0, r2, #0
	asrs r0, r0, #2
	movs r1, #1
	lsls r1, r0
	ldr r0, [r3, #4]
	orrs r0, r1
	str r0, [r3, #4]
	lsls r0, r2, #3
	adds r6, r0, r3
	ldr r4, [r6, #8]
	b _0807578C
	.align 2, 0
_08075700: .4byte 0x000001FF
_08075704:
	lsrs r2, r1, #9
	cmp r2, #0
	bne _0807570E
	lsrs r2, r1, #3
	b _08075752
_0807570E:
	cmp r2, #4
	bhi _0807571A
	lsrs r0, r1, #6
	adds r2, r0, #0
	adds r2, #0x38
	b _08075752
_0807571A:
	cmp r2, #0x14
	bhi _08075722
	adds r2, #0x5b
	b _08075752
_08075722:
	cmp r2, #0x54
	bhi _0807572E
	lsrs r0, r1, #0xc
	adds r2, r0, #0
	adds r2, #0x6e
	b _08075752
_0807572E:
	movs r0, #0xaa
	lsls r0, r0, #1
	cmp r2, r0
	bhi _0807573E
	lsrs r0, r1, #0xf
	adds r2, r0, #0
	adds r2, #0x77
	b _08075752
_0807573E:
	ldr r0, _0807574C @ =0x00000554
	cmp r2, r0
	bhi _08075750
	lsrs r0, r1, #0x12
	adds r2, r0, #0
	adds r2, #0x7c
	b _08075752
	.align 2, 0
_0807574C: .4byte 0x00000554
_08075750:
	movs r2, #0x7e
_08075752:
	lsls r0, r2, #3
	ldr r3, _08075770 @ =0x0203A764
	adds r6, r0, r3
	ldr r4, [r6, #8]
	cmp r4, r6
	bne _08075774
	adds r0, r2, #0
	asrs r0, r0, #2
	movs r1, #1
	lsls r1, r0
	ldr r7, _08075770 @ =0x0203A764
	ldr r0, [r7, #4]
	orrs r0, r1
	str r0, [r7, #4]
	b _0807578C
	.align 2, 0
_08075770: .4byte 0x0203A764
_08075774:
	ldr r0, [r4, #4]
	movs r2, #4
	rsbs r2, r2, #0
	b _08075784
_0807577C:
	ldr r4, [r4, #8]
	cmp r4, r6
	beq _0807578A
	ldr r0, [r4, #4]
_08075784:
	ands r0, r2
	cmp r1, r0
	blo _0807577C
_0807578A:
	ldr r6, [r4, #0xc]
_0807578C:
	str r6, [r5, #0xc]
	str r4, [r5, #8]
	str r5, [r6, #8]
	str r5, [r4, #0xc]
_08075794:
	mov r0, ip
	cmp r0, #0
	bge _0807579C
	adds r0, #3
_0807579C:
	asrs r0, r0, #2
	movs r6, #1
	lsls r6, r0
	ldr r0, _080757C0 @ =0x0203A764
	ldr r1, [r0, #4]
	cmp r6, r1
	bhi _0807585E
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	bne _080757D2
	movs r0, #4
	rsbs r0, r0, #0
	mov r2, ip
	ands r0, r2
	adds r0, #4
	mov ip, r0
	b _080757C8
	.align 2, 0
_080757C0: .4byte 0x0203A764
_080757C4:
	movs r3, #4
	add ip, r3
_080757C8:
	lsls r6, r6, #1
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _080757C4
_080757D2:
	ldr r4, _08075850 @ =0x0203A764
	mov sb, r4
_080757D6:
	mov r7, ip
	str r7, [sp, #4]
	mov r1, ip
	lsls r0, r1, #3
	mov r3, sb
	adds r2, r0, r3
	adds r4, r2, #0
_080757E4:
	ldr r5, [r4, #0xc]
	cmp r5, r4
	beq _08075804
	movs r0, #4
	rsbs r0, r0, #0
_080757EE:
	ldr r1, [r5, #4]
	ands r1, r0
	mov r7, r8
	subs r3, r1, r7
	cmp r3, #0xf
	bgt _080758B4
	cmp r3, #0
	bge _080758DC
	ldr r5, [r5, #0xc]
	cmp r5, r4
	bne _080757EE
_08075804:
	adds r4, #8
	movs r0, #1
	add ip, r0
	mov r0, ip
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _080757E4
_08075814:
	ldr r0, [sp, #4]
	ands r0, r1
	cmp r0, #0
	beq _08075854
	ldr r3, [sp, #4]
	subs r3, #1
	str r3, [sp, #4]
	subs r2, #8
	ldr r0, [r2, #8]
	cmp r0, r2
	beq _08075814
_0807582A:
	lsls r6, r6, #1
	mov r4, sb
	ldr r1, [r4, #4]
	cmp r6, r1
	bhi _0807585E
	cmp r6, #0
	beq _0807585E
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	bne _080757D6
_08075840:
	movs r7, #4
	add ip, r7
	lsls r6, r6, #1
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _08075840
	b _080757D6
	.align 2, 0
_08075850: .4byte 0x0203A764
_08075854:
	mov r1, sb
	ldr r0, [r1, #4]
	bics r0, r6
	str r0, [r1, #4]
	b _0807582A
_0807585E:
	ldr r2, _0807589C @ =0x0203A764
	ldr r0, [r2, #8]
	ldr r0, [r0, #4]
	movs r4, #4
	rsbs r4, r4, #0
	ands r0, r4
	mov r7, r8
	subs r3, r0, r7
	cmp r0, r8
	blo _08075876
	cmp r3, #0xf
	bgt _080758F0
_08075876:
	ldr r0, [sp]
	mov r1, r8
	bl malloc_extend_top
	ldr r1, _0807589C @ =0x0203A764
	ldr r0, [r1, #8]
	ldr r0, [r0, #4]
	ands r0, r4
	mov r2, r8
	subs r3, r0, r2
	cmp r0, r8
	blo _08075892
	cmp r3, #0xf
	bgt _080758F0
_08075892:
	ldr r0, [sp]
	bl __malloc_unlock
	movs r0, #0
	b _08075910
	.align 2, 0
_0807589C: .4byte 0x0203A764
_080758A0:
	ldr r6, [r5, #0xc]
	ldr r4, [r5, #8]
	str r6, [r4, #0xc]
	str r4, [r6, #8]
	adds r2, r5, r1
	ldr r0, [r2, #4]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #4]
	b _08075906
_080758B4:
	mov r4, r8
	adds r2, r5, r4
	movs r1, #1
	orrs r4, r1
	str r4, [r5, #4]
	ldr r6, [r5, #0xc]
	ldr r4, [r5, #8]
	str r6, [r4, #0xc]
	str r4, [r6, #8]
	mov r7, sl
	str r2, [r7, #0xc]
	str r2, [r7, #8]
	str r7, [r2, #0xc]
	str r7, [r2, #8]
	adds r0, r3, #0
	orrs r0, r1
	str r0, [r2, #4]
	adds r0, r2, r3
	str r3, [r0]
	b _08075906
_080758DC:
	adds r2, r5, r1
	ldr r0, [r2, #4]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #4]
	ldr r6, [r5, #0xc]
	ldr r4, [r5, #8]
	str r6, [r4, #0xc]
	str r4, [r6, #8]
	b _08075906
_080758F0:
	ldr r2, _0807591C @ =0x0203A764
	ldr r5, [r2, #8]
	movs r1, #1
	mov r0, r8
	orrs r0, r1
	str r0, [r5, #4]
	mov r4, r8
	adds r0, r5, r4
	str r0, [r2, #8]
	orrs r3, r1
	str r3, [r0, #4]
_08075906:
	ldr r0, [sp]
	bl __malloc_unlock
	adds r0, r5, #0
	adds r0, #8
_08075910:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0807591C: .4byte 0x0203A764

	@ stdlib/mbtowc_r.o

	thumb_func_start _mbtowc_r
_mbtowc_r: @ 0x08075920
	sub sp, #4
	cmp r1, #0
	bne _08075928
	mov r1, sp
_08075928:
	cmp r2, #0
	beq _08075944
	cmp r3, #0
	bne _08075936
	movs r0, #1
	rsbs r0, r0, #0
	b _08075946
_08075936:
	ldrb r0, [r2]
	str r0, [r1]
	ldrb r0, [r2]
	cmp r0, #0
	beq _08075944
	movs r0, #1
	b _08075946
_08075944:
	movs r0, #0
_08075946:
	add sp, #4
	bx lr
	.align 2, 0

	@ string/memchr.o

	thumb_func_start memchr
memchr: @ 0x0807594C
	push {r4, r5, r6, r7, lr}
	adds r5, r1, #0
	adds r1, r0, #0
	movs r0, #0xff
	ands r5, r0
	cmp r2, #3
	bls _080759C0
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _080759C0
	adds r4, r1, #0
	movs r6, #0
	movs r1, #0
_08075968:
	lsls r0, r6, #8
	adds r6, r0, r5
	adds r1, #1
	cmp r1, #3
	bls _08075968
	cmp r2, #3
	bls _080759A6
	ldr r0, _080759AC @ =0xFEFEFEFF
	mov ip, r0
	ldr r7, _080759B0 @ =0x80808080
_0807597C:
	ldr r1, [r4]
	eors r1, r6
	mov r3, ip
	adds r0, r1, r3
	bics r0, r1
	ands r0, r7
	cmp r0, #0
	beq _0807599E
	adds r1, r4, #0
	movs r3, #0
_08075990:
	ldrb r0, [r1]
	cmp r0, r5
	beq _080759BA
	adds r1, #1
	adds r3, #1
	cmp r3, #3
	bls _08075990
_0807599E:
	subs r2, #4
	adds r4, #4
	cmp r2, #3
	bhi _0807597C
_080759A6:
	adds r1, r4, #0
	b _080759C0
	.align 2, 0
_080759AC: .4byte 0xFEFEFEFF
_080759B0: .4byte 0x80808080
_080759B4:
	ldrb r0, [r1]
	cmp r0, r5
	bne _080759BE
_080759BA:
	adds r0, r1, #0
	b _080759CA
_080759BE:
	adds r1, #1
_080759C0:
	adds r0, r2, #0
	subs r2, #1
	cmp r0, #0
	bne _080759B4
	movs r0, #0
_080759CA:
	pop {r4, r5, r6, r7, pc}

	@ string/memmove.o

	thumb_func_start memmove
memmove: @ 0x080759CC
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r5, #0
	adds r3, r1, #0
	cmp r3, r5
	bhs _080759FE
	adds r0, r3, r2
	cmp r5, r0
	bhs _080759FE
	adds r3, r0, #0
	adds r4, r5, r2
	subs r2, #1
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	beq _08075A50
	adds r1, r0, #0
_080759EE:
	subs r4, #1
	subs r3, #1
	ldrb r0, [r3]
	strb r0, [r4]
	subs r2, #1
	cmp r2, r1
	bne _080759EE
	b _08075A50
_080759FE:
	cmp r2, #0xf
	bls _08075A36
	adds r0, r3, #0
	orrs r0, r4
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _08075A36
	adds r1, r3, #0
_08075A10:
	ldm r1!, {r0}
	stm r4!, {r0}
	ldm r1!, {r0}
	stm r4!, {r0}
	ldm r1!, {r0}
	stm r4!, {r0}
	ldm r1!, {r0}
	stm r4!, {r0}
	subs r2, #0x10
	cmp r2, #0xf
	bhi _08075A10
	cmp r2, #3
	bls _08075A34
_08075A2A:
	ldm r1!, {r0}
	stm r4!, {r0}
	subs r2, #4
	cmp r2, #3
	bhi _08075A2A
_08075A34:
	adds r3, r1, #0
_08075A36:
	subs r2, #1
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	beq _08075A50
	adds r1, r0, #0
_08075A42:
	ldrb r0, [r3]
	strb r0, [r4]
	adds r3, #1
	adds r4, #1
	subs r2, #1
	cmp r2, r1
	bne _08075A42
_08075A50:
	adds r0, r5, #0
	pop {r4, r5, pc}

	@ stdlib/mlock.o

	thumb_func_start __malloc_lock
__malloc_lock: @ 0x08075A54
	bx lr
	.align 2, 0

	thumb_func_start __malloc_unlock
__malloc_unlock: @ 0x08075A58
	bx lr
	.align 2, 0

	@ stdlib/mprec.o

	thumb_func_start _Balloc
_Balloc: @ 0x08075A5C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	ldr r0, [r4, #0x4c]
	cmp r0, #0
	bne _08075A78
	adds r0, r4, #0
	movs r1, #4
	movs r2, #0x10
	bl _calloc_r
	str r0, [r4, #0x4c]
	cmp r0, #0
	beq _08075AA0
_08075A78:
	ldr r1, [r4, #0x4c]
	lsls r0, r6, #2
	adds r2, r0, r1
	ldr r1, [r2]
	cmp r1, #0
	beq _08075A8A
	ldr r0, [r1]
	str r0, [r2]
	b _08075AA8
_08075A8A:
	movs r5, #1
	lsls r5, r6
	lsls r2, r5, #2
	adds r2, #0x14
	adds r0, r4, #0
	movs r1, #1
	bl _calloc_r
	adds r1, r0, #0
	cmp r1, #0
	bne _08075AA4
_08075AA0:
	movs r0, #0
	b _08075AB0
_08075AA4:
	str r6, [r1, #4]
	str r5, [r1, #8]
_08075AA8:
	movs r0, #0
	str r0, [r1, #0x10]
	str r0, [r1, #0xc]
	adds r0, r1, #0
_08075AB0:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start _Bfree
_Bfree: @ 0x08075AB4
	adds r3, r0, #0
	adds r2, r1, #0
	cmp r2, #0
	beq _08075ACA
	ldr r0, [r2, #4]
	ldr r1, [r3, #0x4c]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	str r1, [r2]
	str r2, [r0]
_08075ACA:
	bx lr

	thumb_func_start _multadd
_multadd: @ 0x08075ACC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov sb, r0
	adds r5, r1, #0
	adds r4, r2, #0
	mov r8, r3
	ldr r6, [r5, #0x10]
	adds r3, r5, #0
	adds r3, #0x14
	movs r7, #0
	ldr r0, _08075B60 @ =0x0000FFFF
	mov ip, r0
_08075AE8:
	ldr r1, [r3]
	adds r0, r1, #0
	mov r2, ip
	ands r0, r2
	adds r2, r0, #0
	muls r2, r4, r2
	add r2, r8
	lsrs r1, r1, #0x10
	adds r0, r1, #0
	muls r0, r4, r0
	lsrs r1, r2, #0x10
	adds r0, r0, r1
	lsrs r1, r0, #0x10
	mov r8, r1
	lsls r0, r0, #0x10
	mov r1, ip
	ands r2, r1
	adds r0, r0, r2
	stm r3!, {r0}
	adds r7, #1
	cmp r7, r6
	blt _08075AE8
	mov r2, r8
	cmp r2, #0
	beq _08075B56
	ldr r0, [r5, #8]
	cmp r6, r0
	blt _08075B46
	ldr r1, [r5, #4]
	adds r1, #1
	mov r0, sb
	bl _Balloc
	adds r4, r0, #0
	adds r0, #0xc
	adds r1, r5, #0
	adds r1, #0xc
	ldr r2, [r5, #0x10]
	lsls r2, r2, #2
	adds r2, #8
	bl memcpy
	mov r0, sb
	adds r1, r5, #0
	bl _Bfree
	adds r5, r4, #0
_08075B46:
	lsls r1, r6, #2
	adds r0, r5, #0
	adds r0, #0x14
	adds r0, r0, r1
	mov r1, r8
	str r1, [r0]
	adds r6, #1
	str r6, [r5, #0x10]
_08075B56:
	adds r0, r5, #0
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08075B60: .4byte 0x0000FFFF

	thumb_func_start _s2b
_s2b: @ 0x08075B64
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	mov r8, r3
	mov r0, r8
	adds r0, #8
	movs r1, #9
	bl __divsi3
	movs r1, #0
	movs r2, #1
	cmp r0, #1
	ble _08075B8C
_08075B84:
	lsls r2, r2, #1
	adds r1, #1
	cmp r0, r2
	bgt _08075B84
_08075B8C:
	adds r0, r7, #0
	bl _Balloc
	adds r1, r0, #0
	ldr r0, [sp, #0x18]
	str r0, [r1, #0x14]
	movs r0, #1
	str r0, [r1, #0x10]
	movs r5, #9
	cmp r6, #9
	ble _08075BBE
	adds r4, #9
_08075BA4:
	ldrb r3, [r4]
	subs r3, #0x30
	adds r4, #1
	adds r0, r7, #0
	movs r2, #0xa
	bl _multadd
	adds r1, r0, #0
	adds r5, #1
	cmp r5, r6
	blt _08075BA4
	adds r4, #1
	b _08075BC0
_08075BBE:
	adds r4, #0xa
_08075BC0:
	cmp r5, r8
	bge _08075BDE
	mov r0, r8
	subs r5, r0, r5
_08075BC8:
	ldrb r3, [r4]
	subs r3, #0x30
	adds r4, #1
	adds r0, r7, #0
	movs r2, #0xa
	bl _multadd
	adds r1, r0, #0
	subs r5, #1
	cmp r5, #0
	bne _08075BC8
_08075BDE:
	adds r0, r1, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start _hi0bits
_hi0bits: @ 0x08075BE8
	adds r1, r0, #0
	movs r2, #0
	ldr r0, _08075C38 @ =0xFFFF0000
	ands r0, r1
	cmp r0, #0
	bne _08075BF8
	movs r2, #0x10
	lsls r1, r1, #0x10
_08075BF8:
	movs r0, #0xff
	lsls r0, r0, #0x18
	ands r0, r1
	cmp r0, #0
	bne _08075C06
	adds r2, #8
	lsls r1, r1, #8
_08075C06:
	movs r0, #0xf0
	lsls r0, r0, #0x18
	ands r0, r1
	cmp r0, #0
	bne _08075C14
	adds r2, #4
	lsls r1, r1, #4
_08075C14:
	movs r0, #0xc0
	lsls r0, r0, #0x18
	ands r0, r1
	cmp r0, #0
	bne _08075C22
	adds r2, #2
	lsls r1, r1, #2
_08075C22:
	cmp r1, #0
	blt _08075C3C
	adds r2, #1
	movs r0, #0x80
	lsls r0, r0, #0x17
	ands r0, r1
	cmp r0, #0
	bne _08075C3C
	movs r0, #0x20
	b _08075C3E
	.align 2, 0
_08075C38: .4byte 0xFFFF0000
_08075C3C:
	adds r0, r2, #0
_08075C3E:
	bx lr

	thumb_func_start _lo0bits
_lo0bits: @ 0x08075C40
	adds r3, r0, #0
	ldr r1, [r3]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	beq _08075C70
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08075C58
	movs r0, #0
	b _08075CC0
_08075C58:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08075C68
	lsrs r0, r1, #1
	str r0, [r3]
	movs r0, #1
	b _08075CC0
_08075C68:
	lsrs r0, r1, #2
	str r0, [r3]
	movs r0, #2
	b _08075CC0
_08075C70:
	movs r2, #0
	ldr r0, _08075CB8 @ =0x0000FFFF
	ands r0, r1
	cmp r0, #0
	bne _08075C7E
	movs r2, #0x10
	lsrs r1, r1, #0x10
_08075C7E:
	movs r0, #0xff
	ands r0, r1
	cmp r0, #0
	bne _08075C8A
	adds r2, #8
	lsrs r1, r1, #8
_08075C8A:
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	bne _08075C96
	adds r2, #4
	lsrs r1, r1, #4
_08075C96:
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _08075CA2
	adds r2, #2
	lsrs r1, r1, #2
_08075CA2:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08075CBC
	adds r2, #1
	lsrs r1, r1, #1
	cmp r1, #0
	bne _08075CBC
	movs r0, #0x20
	b _08075CC0
	.align 2, 0
_08075CB8: .4byte 0x0000FFFF
_08075CBC:
	str r1, [r3]
	adds r0, r2, #0
_08075CC0:
	bx lr
	.align 2, 0

	thumb_func_start _i2b
_i2b: @ 0x08075CC4
	push {r4, lr}
	adds r4, r1, #0
	movs r1, #1
	bl _Balloc
	str r4, [r0, #0x14]
	movs r1, #1
	str r1, [r0, #0x10]
	pop {r4, pc}
	.align 2, 0

	thumb_func_start _multiply
_multiply: @ 0x08075CD8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	adds r3, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	ldr r1, [r4, #0x10]
	ldr r0, [r5, #0x10]
	cmp r1, r0
	bge _08075CF8
	str r4, [sp]
	adds r4, r5, #0
	ldr r5, [sp]
_08075CF8:
	ldr r1, [r4, #4]
	ldr r6, [r4, #0x10]
	ldr r0, [r5, #0x10]
	mov r8, r0
	mov r2, r8
	adds r2, r6, r2
	str r2, [sp, #4]
	ldr r0, [r4, #8]
	cmp r2, r0
	ble _08075D0E
	adds r1, #1
_08075D0E:
	adds r0, r3, #0
	bl _Balloc
	str r0, [sp]
	adds r7, r0, #0
	adds r7, #0x14
	ldr r1, [sp, #4]
	lsls r0, r1, #2
	adds r2, r7, r0
	str r2, [sp, #8]
	str r0, [sp, #0x18]
	adds r1, r4, #0
	adds r1, #0x14
	lsls r3, r6, #2
	adds r2, r5, #0
	adds r2, #0x14
	mov r5, r8
	lsls r4, r5, #2
	ldr r0, [sp, #8]
	cmp r7, r0
	bhs _08075D42
	movs r0, #0
_08075D3A:
	stm r7!, {r0}
	ldr r5, [sp, #8]
	cmp r7, r5
	blo _08075D3A
_08075D42:
	str r1, [sp, #8]
	adds r3, r1, r3
	str r3, [sp, #0xc]
	mov r8, r2
	add r4, r8
	str r4, [sp, #0x10]
	ldr r0, [sp]
	adds r0, #0x14
	mov sb, r0
	mov r1, sb
	str r1, [sp, #0x20]
	cmp r8, r4
	bhs _08075E0A
_08075D5C:
	mov r2, r8
	ldm r2!, {r6}
	str r2, [sp, #0x14]
	ldr r0, _08075E18 @ =0x0000FFFF
	ands r6, r0
	mov r4, sb
	adds r4, #4
	str r4, [sp, #0x1c]
	cmp r6, #0
	beq _08075DB4
	ldr r7, [sp, #8]
	mov r5, sb
	movs r1, #0
	mov ip, r1
	mov sl, r0
_08075D7A:
	ldm r7!, {r3}
	adds r0, r3, #0
	mov r2, sl
	ands r0, r2
	adds r1, r0, #0
	muls r1, r6, r1
	ldr r2, [r5]
	adds r0, r2, #0
	mov r4, sl
	ands r0, r4
	adds r1, r1, r0
	mov r0, ip
	adds r4, r1, r0
	lsrs r1, r4, #0x10
	lsrs r3, r3, #0x10
	adds r0, r3, #0
	muls r0, r6, r0
	lsrs r2, r2, #0x10
	adds r0, r0, r2
	adds r2, r0, r1
	lsrs r0, r2, #0x10
	mov ip, r0
	strh r2, [r5]
	strh r4, [r5, #2]
	adds r5, #4
	ldr r1, [sp, #0xc]
	cmp r7, r1
	blo _08075D7A
	str r0, [r5]
_08075DB4:
	mov r2, r8
	ldrh r6, [r2, #2]
	cmp r6, #0
	beq _08075DFC
	ldr r7, [sp, #8]
	mov r5, sb
	movs r4, #0
	mov ip, r4
	ldr r2, [r5]
	ldr r3, _08075E18 @ =0x0000FFFF
_08075DC8:
	ldm r7!, {r1}
	adds r0, r1, #0
	ands r0, r3
	muls r0, r6, r0
	ldrh r4, [r5, #2]
	adds r4, r4, r0
	mov r8, r4
	add r4, ip
	lsrs r0, r4, #0x10
	mov ip, r0
	strh r4, [r5]
	strh r2, [r5, #2]
	adds r5, #4
	lsrs r1, r1, #0x10
	muls r1, r6, r1
	ldr r0, [r5]
	ands r0, r3
	adds r1, r1, r0
	mov r4, ip
	adds r2, r1, r4
	lsrs r0, r2, #0x10
	mov ip, r0
	ldr r1, [sp, #0xc]
	cmp r7, r1
	blo _08075DC8
	str r2, [r5]
_08075DFC:
	ldr r2, [sp, #0x14]
	mov r8, r2
	ldr r4, [sp, #0x1c]
	mov sb, r4
	ldr r5, [sp, #0x10]
	cmp r8, r5
	blo _08075D5C
_08075E0A:
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x18]
	adds r5, r0, r1
	ldr r2, [sp, #4]
	cmp r2, #0
	ble _08075E2E
	b _08075E26
	.align 2, 0
_08075E18: .4byte 0x0000FFFF
_08075E1C:
	ldr r4, [sp, #4]
	subs r4, #1
	str r4, [sp, #4]
	cmp r4, #0
	ble _08075E2E
_08075E26:
	subs r5, #4
	ldr r0, [r5]
	cmp r0, #0
	beq _08075E1C
_08075E2E:
	ldr r5, [sp, #4]
	ldr r0, [sp]
	str r5, [r0, #0x10]
	ldr r0, [sp]
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start _pow5mult
_pow5mult: @ 0x08075E44
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	adds r7, r1, #0
	adds r6, r2, #0
	movs r1, #3
	ands r1, r6
	cmp r1, #0
	beq _08075E6E
	ldr r0, _08075E90 @ =0x082AB8DC
	subs r1, #1
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r2, [r1]
	mov r0, r8
	adds r1, r7, #0
	movs r3, #0
	bl _multadd
	adds r7, r0, #0
_08075E6E:
	asrs r6, r6, #2
	cmp r6, #0
	beq _08075ED4
	mov r0, r8
	ldr r5, [r0, #0x48]
	adds r4, r5, #0
	cmp r5, #0
	bne _08075EB0
	ldr r1, _08075E94 @ =0x00000271
	bl _i2b
	mov r1, r8
	str r0, [r1, #0x48]
	adds r5, r0, #0
	str r4, [r5]
	b _08075EB0
	.align 2, 0
_08075E90: .4byte 0x082AB8DC
_08075E94: .4byte 0x00000271
_08075E98:
	ldr r0, [r5]
	adds r4, r0, #0
	cmp r0, #0
	bne _08075EAE
	mov r0, r8
	adds r1, r5, #0
	adds r2, r5, #0
	bl _multiply
	str r0, [r5]
	str r4, [r0]
_08075EAE:
	adds r5, r0, #0
_08075EB0:
	movs r0, #1
	ands r0, r6
	cmp r0, #0
	beq _08075ECE
	mov r0, r8
	adds r1, r7, #0
	adds r2, r5, #0
	bl _multiply
	adds r4, r0, #0
	mov r0, r8
	adds r1, r7, #0
	bl _Bfree
	adds r7, r4, #0
_08075ECE:
	asrs r6, r6, #1
	cmp r6, #0
	bne _08075E98
_08075ED4:
	adds r0, r7, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}

	thumb_func_start _lshift
_lshift: @ 0x08075EDC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sl, r0
	mov r8, r1
	adds r5, r2, #0
	asrs r6, r5, #5
	ldr r1, [r1, #4]
	mov r2, r8
	ldr r0, [r2, #0x10]
	adds r0, r6, r0
	adds r7, r0, #1
	ldr r2, [r2, #8]
	cmp r7, r2
	ble _08075F06
_08075EFE:
	adds r1, #1
	lsls r2, r2, #1
	cmp r7, r2
	bgt _08075EFE
_08075F06:
	mov r0, sl
	bl _Balloc
	mov sb, r0
	mov r4, sb
	adds r4, #0x14
	mov r0, r8
	adds r0, #0x14
	cmp r6, #0
	ble _08075F26
	movs r1, #0
	adds r2, r6, #0
_08075F1E:
	stm r4!, {r1}
	subs r2, #1
	cmp r2, #0
	bne _08075F1E
_08075F26:
	adds r3, r0, #0
	mov r1, r8
	ldr r0, [r1, #0x10]
	lsls r0, r0, #2
	adds r6, r3, r0
	movs r0, #0x1f
	ands r5, r0
	cmp r5, #0
	beq _08075F58
	movs r0, #0x20
	subs r1, r0, r5
	movs r2, #0
_08075F3E:
	ldr r0, [r3]
	lsls r0, r5
	orrs r0, r2
	stm r4!, {r0}
	ldm r3!, {r2}
	lsrs r2, r1
	cmp r3, r6
	blo _08075F3E
	str r2, [r4]
	cmp r2, #0
	beq _08075F60
	adds r7, #1
	b _08075F60
_08075F58:
	ldm r3!, {r0}
	stm r4!, {r0}
	cmp r3, r6
	blo _08075F58
_08075F60:
	subs r0, r7, #1
	mov r2, sb
	str r0, [r2, #0x10]
	mov r0, sl
	mov r1, r8
	bl _Bfree
	mov r0, sb
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start __mcmp
__mcmp: @ 0x08075F7C
	push {r4, r5, lr}
	adds r2, r0, #0
	adds r5, r1, #0
	ldr r0, [r2, #0x10]
	ldr r1, [r5, #0x10]
	subs r0, r0, r1
	cmp r0, #0
	bne _08075FB8
	adds r4, r2, #0
	adds r4, #0x14
	lsls r1, r1, #2
	adds r3, r4, r1
	adds r0, r5, #0
	adds r0, #0x14
	adds r1, r0, r1
_08075F9A:
	subs r3, #4
	subs r1, #4
	ldr r0, [r3]
	ldr r2, [r1]
	cmp r0, r2
	beq _08075FB2
	movs r1, #1
	cmp r0, r2
	bhs _08075FAE
	subs r1, #2
_08075FAE:
	adds r0, r1, #0
	b _08075FB8
_08075FB2:
	cmp r3, r4
	bhi _08075F9A
	movs r0, #0
_08075FB8:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start __mdiff
__mdiff: @ 0x08075FBC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r6, r0, #0
	adds r5, r1, #0
	mov r8, r2
	adds r0, r5, #0
	mov r1, r8
	bl __mcmp
	adds r4, r0, #0
	cmp r4, #0
	bne _08075FEE
	adds r0, r6, #0
	movs r1, #0
	bl _Balloc
	adds r7, r0, #0
	movs r0, #1
	str r0, [r7, #0x10]
	str r4, [r7, #0x14]
	b _0807609E
_08075FEE:
	cmp r4, #0
	bge _08075FFC
	adds r7, r5, #0
	mov r5, r8
	mov r8, r7
	movs r4, #1
	b _08075FFE
_08075FFC:
	movs r4, #0
_08075FFE:
	ldr r1, [r5, #4]
	adds r0, r6, #0
	bl _Balloc
	adds r7, r0, #0
	str r4, [r7, #0xc]
	ldr r0, [r5, #0x10]
	mov sb, r0
	adds r6, r5, #0
	adds r6, #0x14
	lsls r0, r0, #2
	adds r0, r0, r6
	mov sl, r0
	mov r1, r8
	ldr r0, [r1, #0x10]
	movs r3, #0x14
	add r3, r8
	mov ip, r3
	lsls r0, r0, #2
	add r0, ip
	str r0, [sp]
	adds r4, r7, #0
	adds r4, #0x14
	movs r5, #0
	ldr r0, _08076088 @ =0x0000FFFF
	mov r8, r0
_08076032:
	ldm r6!, {r1}
	str r1, [sp, #4]
	mov r3, r8
	ands r1, r3
	mov r0, ip
	adds r0, #4
	mov ip, r0
	subs r0, #4
	ldm r0!, {r2}
	adds r0, r2, #0
	ands r0, r3
	subs r1, r1, r0
	adds r0, r1, r5
	asrs r5, r0, #0x10
	ldr r1, [sp, #4]
	lsrs r3, r1, #0x10
	lsrs r2, r2, #0x10
	subs r3, r3, r2
	adds r1, r3, r5
	asrs r5, r1, #0x10
	strh r1, [r4]
	strh r0, [r4, #2]
	adds r4, #4
	ldr r3, [sp]
	cmp ip, r3
	blo _08076032
	cmp r6, sl
	bhs _08076092
	ldr r2, _08076088 @ =0x0000FFFF
_0807606C:
	ldm r6!, {r1}
	adds r0, r1, #0
	ands r0, r2
	adds r0, r0, r5
	asrs r5, r0, #0x10
	lsrs r1, r1, #0x10
	adds r1, r1, r5
	asrs r5, r1, #0x10
	strh r1, [r4]
	strh r0, [r4, #2]
	adds r4, #4
	cmp r6, sl
	blo _0807606C
	b _08076092
	.align 2, 0
_08076088: .4byte 0x0000FFFF
_0807608C:
	movs r0, #1
	rsbs r0, r0, #0
	add sb, r0
_08076092:
	subs r4, #4
	ldr r0, [r4]
	cmp r0, #0
	beq _0807608C
	mov r1, sb
	str r1, [r7, #0x10]
_0807609E:
	adds r0, r7, #0
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}

	thumb_func_start _ulp
_ulp: @ 0x080760AC
	push {r4, lr}
	ldr r2, _080760C0 @ =0x7FF00000
	ands r2, r0
	ldr r0, _080760C4 @ =0xFCC00000
	adds r2, r2, r0
	cmp r2, #0
	ble _080760C8
	adds r3, r2, #0
	movs r4, #0
	b _080760F2
	.align 2, 0
_080760C0: .4byte 0x7FF00000
_080760C4: .4byte 0xFCC00000
_080760C8:
	rsbs r0, r2, #0
	asrs r2, r0, #0x14
	cmp r2, #0x13
	bgt _080760DC
	movs r0, #0x80
	lsls r0, r0, #0xc
	adds r3, r0, #0
	asrs r3, r2
	movs r4, #0
	b _080760F2
_080760DC:
	movs r3, #0
	subs r2, #0x14
	cmp r2, #0x1e
	bgt _080760EE
	movs r0, #0x1f
	subs r0, r0, r2
	movs r1, #1
	lsls r1, r0
	b _080760F0
_080760EE:
	movs r1, #1
_080760F0:
	adds r4, r1, #0
_080760F2:
	adds r1, r4, #0
	adds r0, r3, #0
	pop {r4, pc}

	thumb_func_start _b2d
_b2d: @ 0x080760F8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r4, r1, #0
	movs r1, #0x14
	adds r1, r1, r0
	mov r8, r1
	ldr r0, [r0, #0x10]
	lsls r0, r0, #2
	adds r5, r1, r0
	subs r5, #4
	ldr r2, [r5]
	adds r0, r2, #0
	str r2, [sp]
	bl _hi0bits
	adds r3, r0, #0
	movs r0, #0x20
	subs r0, r0, r3
	str r0, [r4]
	ldr r2, [sp]
	cmp r3, #0xa
	bgt _08076158
	movs r0, #0xb
	subs r0, r0, r3
	adds r1, r2, #0
	lsrs r1, r0
	ldr r0, _08076140 @ =0x3FF00000
	adds r6, r1, #0
	orrs r6, r0
	cmp r5, r8
	bls _08076144
	subs r5, #4
	ldr r1, [r5]
	b _08076146
	.align 2, 0
_08076140: .4byte 0x3FF00000
_08076144:
	movs r1, #0
_08076146:
	adds r0, r3, #0
	adds r0, #0x15
	lsls r2, r0
	movs r0, #0xb
	subs r0, r0, r3
	lsrs r1, r0
	adds r7, r2, #0
	orrs r7, r1
	b _080761A4
_08076158:
	cmp r5, r8
	bls _08076162
	subs r5, #4
	ldr r4, [r5]
	b _08076164
_08076162:
	movs r4, #0
_08076164:
	subs r3, #0xb
	cmp r3, #0
	beq _0807619C
	lsls r2, r3
	movs r0, #0x20
	subs r0, r0, r3
	adds r1, r4, #0
	lsrs r1, r0
	ldr r0, _08076188 @ =0x3FF00000
	orrs r1, r0
	adds r6, r2, #0
	orrs r6, r1
	cmp r5, r8
	bls _0807618C
	subs r5, #4
	ldr r2, [r5]
	b _0807618E
	.align 2, 0
_08076188: .4byte 0x3FF00000
_0807618C:
	movs r2, #0
_0807618E:
	lsls r4, r3
	movs r0, #0x20
	subs r0, r0, r3
	lsrs r2, r0
	adds r7, r4, #0
	orrs r7, r2
	b _080761A4
_0807619C:
	ldr r0, _080761B0 @ =0x3FF00000
	adds r6, r2, #0
	orrs r6, r0
	adds r7, r4, #0
_080761A4:
	adds r1, r7, #0
	adds r0, r6, #0
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080761B0: .4byte 0x3FF00000

	thumb_func_start _d2b
_d2b: @ 0x080761B4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sb, r3
	ldr r3, [sp, #0x28]
	mov sl, r3
	adds r5, r2, #0
	adds r4, r1, #0
	movs r1, #1
	bl _Balloc
	adds r6, r0, #0
	movs r0, #0x14
	adds r0, r0, r6
	mov r8, r0
	ldr r2, _0807621C @ =0x000FFFFF
	adds r1, r4, #0
	ands r2, r1
	str r2, [sp, #4]
	ldr r0, _08076220 @ =0x7FFFFFFF
	ands r4, r0
	lsrs r7, r4, #0x14
	cmp r7, #0
	beq _080761F2
	movs r0, #0x80
	lsls r0, r0, #0xd
	orrs r0, r2
	str r0, [sp, #4]
_080761F2:
	str r5, [sp]
	cmp r5, #0
	beq _0807623C
	mov r0, sp
	bl _lo0bits
	adds r2, r0, #0
	cmp r2, #0
	beq _08076224
	movs r0, #0x20
	subs r0, r0, r2
	ldr r1, [sp, #4]
	lsls r1, r0
	ldr r0, [sp]
	orrs r0, r1
	str r0, [r6, #0x14]
	ldr r0, [sp, #4]
	lsrs r0, r2
	str r0, [sp, #4]
	b _08076228
	.align 2, 0
_0807621C: .4byte 0x000FFFFF
_08076220: .4byte 0x7FFFFFFF
_08076224:
	ldr r0, [sp]
	str r0, [r6, #0x14]
_08076228:
	ldr r0, [sp, #4]
	mov r1, r8
	str r0, [r1, #4]
	movs r1, #1
	cmp r0, #0
	beq _08076236
	movs r1, #2
_08076236:
	str r1, [r6, #0x10]
	adds r4, r1, #0
	b _08076250
_0807623C:
	add r0, sp, #4
	bl _lo0bits
	adds r2, r0, #0
	ldr r0, [sp, #4]
	str r0, [r6, #0x14]
	movs r0, #1
	str r0, [r6, #0x10]
	movs r4, #1
	adds r2, #0x20
_08076250:
	cmp r7, #0
	beq _0807626C
	ldr r3, _08076268 @ =0xFFFFFBCD
	adds r0, r2, r3
	adds r0, r7, r0
	mov r1, sb
	str r0, [r1]
	movs r0, #0x35
	subs r0, r0, r2
	mov r3, sl
	str r0, [r3]
	b _08076288
	.align 2, 0
_08076268: .4byte 0xFFFFFBCD
_0807626C:
	ldr r1, _08076298 @ =0xFFFFFBCE
	adds r0, r2, r1
	mov r3, sb
	str r0, [r3]
	lsls r0, r4, #2
	add r0, r8
	subs r0, #4
	ldr r0, [r0]
	bl _hi0bits
	lsls r1, r4, #5
	subs r1, r1, r0
	mov r0, sl
	str r1, [r0]
_08076288:
	adds r0, r6, #0
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08076298: .4byte 0xFFFFFBCE

	thumb_func_start _ratio
_ratio: @ 0x0807629C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r4, r0, #0
	adds r5, r1, #0
	mov r1, sp
	bl _b2d
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	add r1, sp, #4
	adds r0, r5, #0
	bl _b2d
	adds r7, r1, #0
	adds r6, r0, #0
	ldr r2, [sp]
	ldr r0, [sp, #4]
	subs r2, r2, r0
	ldr r0, [r4, #0x10]
	ldr r1, [r5, #0x10]
	subs r0, r0, r1
	lsls r0, r0, #5
	adds r0, r2, r0
	cmp r0, #0
	ble _080762D8
	lsls r0, r0, #0x14
	ldr r1, [sp, #8]
	adds r0, r1, r0
	str r0, [sp, #8]
	b _080762DC
_080762D8:
	lsls r0, r0, #0x14
	subs r6, r6, r0
_080762DC:
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	adds r3, r7, #0
	adds r2, r6, #0
	bl __divdf3
	add sp, #0x10
	pop {r4, r5, r6, r7, pc}

	thumb_func_start _mprec_log10
_mprec_log10: @ 0x080762EC
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08076308 @ =0x00000000
	ldr r0, _08076304 @ =0x3FF00000
	cmp r4, #0x17
	bgt _08076310
	ldr r0, _0807630C @ =0x082AB8E8
	lsls r1, r4, #3
	adds r1, r1, r0
	ldr r0, [r1]
	ldr r1, [r1, #4]
	b _08076322
	.align 2, 0
_08076304: .4byte 0x3FF00000
_08076308: .4byte 0x00000000
_0807630C: .4byte 0x082AB8E8
_08076310:
	cmp r4, #0
	ble _08076322
_08076314:
	ldr r3, _08076328 @ =0x00000000
	ldr r2, _08076324 @ =0x40240000
	bl __muldf3
	subs r4, #1
	cmp r4, #0
	bgt _08076314
_08076322:
	pop {r4, pc}
	.align 2, 0
_08076324: .4byte 0x40240000
_08076328: .4byte 0x00000000

	@ math/s_isinf.o

	thumb_func_start isinf
isinf: @ 0x0807632C
	ldr r3, _08076348 @ =0x7FFFFFFF
	ands r3, r0
	rsbs r2, r1, #0
	orrs r2, r1
	lsrs r2, r2, #0x1f
	orrs r3, r2
	ldr r0, _0807634C @ =0x7FF00000
	subs r3, r0, r3
	rsbs r0, r3, #0
	orrs r3, r0
	lsrs r3, r3, #0x1f
	movs r0, #1
	subs r0, r0, r3
	bx lr
	.align 2, 0
_08076348: .4byte 0x7FFFFFFF
_0807634C: .4byte 0x7FF00000

	@ math/s_isnan.o

	thumb_func_start isnan
isnan: @ 0x08076350
	ldr r3, _08076368 @ =0x7FFFFFFF
	ands r3, r0
	rsbs r2, r1, #0
	orrs r2, r1
	lsrs r2, r2, #0x1f
	orrs r3, r2
	ldr r0, _0807636C @ =0x7FF00000
	subs r3, r0, r3
	lsrs r3, r3, #0x1f
	adds r0, r3, #0
	bx lr
	.align 2, 0
_08076368: .4byte 0x7FFFFFFF
_0807636C: .4byte 0x7FF00000

	@ reent/sbrkr.o

	thumb_func_start _sbrk_r
_sbrk_r: @ 0x08076370
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, r1, #0
	ldr r4, _08076398 @ =0x03005844
	movs r1, #0
	str r1, [r4]
	bl _sbrk
	adds r1, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _08076392
	ldr r0, [r4]
	cmp r0, #0
	beq _08076392
	str r0, [r5]
_08076392:
	adds r0, r1, #0
	pop {r4, r5, pc}
	.align 2, 0
_08076398: .4byte 0x03005844

	@ stdio/stdio.o

	thumb_func_start __sread
__sread: @ 0x0807639C
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r3, r2, #0
	ldr r0, [r5, #0x54]
	movs r2, #0xe
	ldrsh r1, [r5, r2]
	adds r2, r4, #0
	bl _read_r
	adds r1, r0, #0
	cmp r1, #0
	blt _080763BE
	ldr r0, [r5, #0x50]
	adds r0, r0, r1
	str r0, [r5, #0x50]
	b _080763C6
_080763BE:
	ldr r0, _080763CC @ =0xFFFFEFFF
	ldrh r2, [r5, #0xc]
	ands r0, r2
	strh r0, [r5, #0xc]
_080763C6:
	adds r0, r1, #0
	pop {r4, r5, pc}
	.align 2, 0
_080763CC: .4byte 0xFFFFEFFF

	thumb_func_start __swrite
__swrite: @ 0x080763D0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	movs r0, #0x80
	lsls r0, r0, #1
	ldrh r1, [r4, #0xc]
	ands r0, r1
	cmp r0, #0
	beq _080763F2
	ldr r0, [r4, #0x54]
	movs r2, #0xe
	ldrsh r1, [r4, r2]
	movs r2, #0
	movs r3, #2
	bl _lseek_r
_080763F2:
	ldr r0, _0807640C @ =0xFFFFEFFF
	ldrh r1, [r4, #0xc]
	ands r0, r1
	strh r0, [r4, #0xc]
	ldr r0, [r4, #0x54]
	movs r2, #0xe
	ldrsh r1, [r4, r2]
	adds r2, r5, #0
	adds r3, r6, #0
	bl _write_r
	pop {r4, r5, r6, pc}
	.align 2, 0
_0807640C: .4byte 0xFFFFEFFF

	thumb_func_start __sseek
__sseek: @ 0x08076410
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r3, r2, #0
	ldr r0, [r5, #0x54]
	movs r2, #0xe
	ldrsh r1, [r5, r2]
	adds r2, r4, #0
	bl _lseek_r
	adds r1, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0807643C
	ldr r0, _08076438 @ =0xFFFFEFFF
	ldrh r2, [r5, #0xc]
	ands r0, r2
	strh r0, [r5, #0xc]
	b _0807644A
	.align 2, 0
_08076438: .4byte 0xFFFFEFFF
_0807643C:
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	ldrh r2, [r5, #0xc]
	orrs r0, r2
	strh r0, [r5, #0xc]
	str r1, [r5, #0x50]
_0807644A:
	adds r0, r1, #0
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start __sclose
__sclose: @ 0x08076450
	push {lr}
	ldr r2, [r0, #0x54]
	movs r3, #0xe
	ldrsh r1, [r0, r3]
	adds r0, r2, #0
	bl _close_r
	pop {pc}

	@ string/strcmp.o

	thumb_func_start strcmp
strcmp: @ 0x08076460
	push {r4, r5, lr}
	adds r2, r0, #0
	adds r3, r1, #0
	orrs r0, r3
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _080764A6
	ldr r1, [r2]
	ldr r0, [r3]
	cmp r1, r0
	bne _080764A6
	ldr r5, _0807648C @ =0xFEFEFEFF
	ldr r4, _08076490 @ =0x80808080
_0807647C:
	ldr r1, [r2]
	adds r0, r1, r5
	bics r0, r1
	ands r0, r4
	cmp r0, #0
	beq _08076494
	movs r0, #0
	b _080764B8
	.align 2, 0
_0807648C: .4byte 0xFEFEFEFF
_08076490: .4byte 0x80808080
_08076494:
	adds r2, #4
	adds r3, #4
	ldr r1, [r2]
	ldr r0, [r3]
	cmp r1, r0
	beq _0807647C
	b _080764A6
_080764A2:
	adds r2, #1
	adds r3, #1
_080764A6:
	ldrb r0, [r2]
	cmp r0, #0
	beq _080764B2
	ldrb r1, [r3]
	cmp r0, r1
	beq _080764A2
_080764B2:
	ldrb r2, [r2]
	ldrb r3, [r3]
	subs r0, r2, r3
_080764B8:
	pop {r4, r5, pc}
	.align 2, 0

	@ string/strlen.o

	thumb_func_start strlen
strlen: @ 0x080764BC
	push {r4, r5, lr}
	adds r1, r0, #0
	adds r5, r1, #0
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _080764F4
	adds r2, r1, #0
	ldr r1, [r2]
	ldr r4, _080764D8 @ =0xFEFEFEFF
	adds r0, r1, r4
	bics r0, r1
	ldr r3, _080764DC @ =0x80808080
	b _080764E8
	.align 2, 0
_080764D8: .4byte 0xFEFEFEFF
_080764DC: .4byte 0x80808080
_080764E0:
	adds r2, #4
	ldr r1, [r2]
	adds r0, r1, r4
	bics r0, r1
_080764E8:
	ands r0, r3
	cmp r0, #0
	beq _080764E0
	adds r1, r2, #0
	b _080764F4
_080764F2:
	adds r1, #1
_080764F4:
	ldrb r0, [r1]
	cmp r0, #0
	bne _080764F2
	subs r0, r1, r5
	pop {r4, r5, pc}
	.align 2, 0

	@ arm/syscalls.o

	thumb_func_start findslot
findslot: @ 0x08076500
	adds r3, r0, #0
	movs r1, #0
	ldr r2, _08076508 @ =0x03001E40
	b _08076514
	.align 2, 0
_08076508: .4byte 0x03001E40
_0807650C:
	adds r2, #8
	adds r1, #1
	cmp r1, #0x13
	bgt _0807651A
_08076514:
	ldr r0, [r2]
	cmp r0, r3
	bne _0807650C
_0807651A:
	adds r0, r1, #0
	bx lr
	.align 2, 0

	thumb_func_start remap_handle
remap_handle: @ 0x08076520
	adds r2, r0, #0
	ldr r0, _08076534 @ =0x0203A74C
	ldr r1, [r0]
	ldr r0, [r1, #4]
	movs r3, #0xe
	ldrsh r0, [r0, r3]
	cmp r2, r0
	bne _0807653C
	ldr r0, _08076538 @ =0x03001E34
	b _08076562
	.align 2, 0
_08076534: .4byte 0x0203A74C
_08076538: .4byte 0x03001E34
_0807653C:
	ldr r0, [r1, #8]
	movs r3, #0xe
	ldrsh r0, [r0, r3]
	cmp r2, r0
	bne _08076550
	ldr r0, _0807654C @ =0x03001E38
	b _08076562
	.align 2, 0
_0807654C: .4byte 0x03001E38
_08076550:
	ldr r0, [r1, #0xc]
	movs r1, #0xe
	ldrsh r0, [r0, r1]
	cmp r2, r0
	beq _08076560
	adds r0, r2, #0
	subs r0, #0x20
	b _08076564
_08076560:
	ldr r0, _08076568 @ =0x03001E3C
_08076562:
	ldr r0, [r0]
_08076564:
	bx lr
	.align 2, 0
_08076568: .4byte 0x03001E3C

	thumb_func_start initialise_monitor_handles
initialise_monitor_handles: @ 0x0807656C
	push {r4, r5, lr}
	sub sp, #0xc
	ldr r4, _080765C8 @ =0x082ABA00
	str r4, [sp]
	movs r3, #3
	str r3, [sp, #8]
	movs r0, #0
	str r0, [sp, #4]
	movs r5, #1
	adds r0, r5, #0
	mov r1, sp
	svc #0xab
	adds r2, r0, #0
	ldr r5, _080765CC @ =0x03001E34
	str r2, [r5]
	str r4, [sp]
	str r3, [sp, #8]
	movs r0, #4
	str r0, [sp, #4]
	ldr r3, _080765D0 @ =0x03001E38
	movs r4, #1
	adds r0, r4, #0
	mov r1, sp
	svc #0xab
	adds r2, r0, #0
	ldr r0, _080765D4 @ =0x03001E3C
	str r2, [r0]
	str r2, [r3]
	ldr r2, _080765D8 @ =0x03001E40
	adds r1, r2, #0
	subs r4, #2
	adds r0, r2, #0
	adds r0, #0x98
_080765AE:
	str r4, [r0]
	subs r0, #8
	cmp r0, r1
	bge _080765AE
	movs r0, #0
	ldr r1, [r5]
	str r1, [r2]
	str r0, [r2, #4]
	ldr r1, [r3]
	str r1, [r2, #8]
	str r0, [r2, #0xc]
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
_080765C8: .4byte 0x082ABA00
_080765CC: .4byte 0x03001E34
_080765D0: .4byte 0x03001E38
_080765D4: .4byte 0x03001E3C
_080765D8: .4byte 0x03001E40

	thumb_func_start get_errno
get_errno: @ 0x080765DC
	push {r4, lr}
	movs r3, #0x13
	movs r4, #0
	adds r0, r3, #0
	adds r1, r4, #0
	svc #0xab
	adds r2, r0, #0
	adds r0, r2, #0
	pop {r4, pc}
	.align 2, 0

	thumb_func_start error
error: @ 0x080765F0
	push {r4, r5, lr}
	adds r5, r0, #0
	bl __errno
	adds r4, r0, #0
	bl get_errno
	str r0, [r4]
	adds r0, r5, #0
	pop {r4, r5, pc}

	thumb_func_start wrap
wrap: @ 0x08076604
	push {lr}
	adds r1, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08076614
	adds r0, r1, #0
	b _0807661A
_08076614:
	adds r0, r1, #0
	bl error
_0807661A:
	pop {pc}

	thumb_func_start _swiread
_swiread: @ 0x0807661C
	push {r4, r5, lr}
	sub sp, #0xc
	adds r4, r1, #0
	adds r5, r2, #0
	bl remap_handle
	str r0, [sp]
	str r4, [sp, #4]
	str r5, [sp, #8]
	movs r3, #6
	adds r0, r3, #0
	mov r1, sp
	svc #0xab
	adds r2, r0, #0
	adds r0, r2, #0
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start _read
_read: @ 0x08076640
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r7, r2, #0
	bl remap_handle
	bl findslot
	adds r6, r0, #0
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r7, #0
	bl _swiread
	cmp r0, #0
	bge _0807666A
	movs r0, #1
	rsbs r0, r0, #0
	bl error
	b _08076680
_0807666A:
	subs r2, r7, r0
	cmp r6, #0x14
	beq _0807667E
	ldr r0, _08076684 @ =0x03001E40
	lsls r1, r6, #3
	adds r0, #4
	adds r1, r1, r0
	ldr r0, [r1]
	adds r0, r0, r2
	str r0, [r1]
_0807667E:
	adds r0, r2, #0
_08076680:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08076684: .4byte 0x03001E40

	thumb_func_start _swilseek
_swilseek: @ 0x08076688
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	mov r8, r0
	adds r5, r1, #0
	adds r4, r2, #0
	bl remap_handle
	adds r7, r0, #0
	bl findslot
	adds r6, r0, #0
	cmp r4, #1
	bne _080766BE
	cmp r6, #0x14
	bne _080766B0
	movs r0, #1
	rsbs r0, r0, #0
	b _08076700
_080766B0:
	ldr r0, _08076708 @ =0x03001E40
	lsls r1, r6, #3
	adds r0, #4
	adds r1, r1, r0
	ldr r0, [r1]
	adds r5, r5, r0
	movs r4, #0
_080766BE:
	cmp r4, #2
	bne _080766D0
	str r7, [sp]
	movs r3, #0xc
	adds r0, r3, #0
	mov r1, sp
	svc #0xab
	adds r2, r0, #0
	adds r5, r5, r2
_080766D0:
	mov r0, r8
	bl remap_handle
	str r0, [sp]
	str r5, [sp, #4]
	movs r3, #0xa
	adds r0, r3, #0
	mov r1, sp
	svc #0xab
	adds r2, r0, #0
	cmp r6, #0x14
	beq _080766F6
	cmp r2, #0
	bne _080766F6
	ldr r0, _08076708 @ =0x03001E40
	lsls r1, r6, #3
	adds r0, #4
	adds r1, r1, r0
	str r5, [r1]
_080766F6:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, #0
	bne _08076700
	adds r0, r5, #0
_08076700:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08076708: .4byte 0x03001E40

	thumb_func_start _lseek
_lseek: @ 0x0807670C
	push {lr}
	bl _swilseek
	bl wrap
	pop {pc}

	thumb_func_start _swiwrite
_swiwrite: @ 0x08076718
	push {r4, r5, lr}
	sub sp, #0xc
	adds r4, r1, #0
	adds r5, r2, #0
	bl remap_handle
	str r0, [sp]
	str r4, [sp, #4]
	str r5, [sp, #8]
	movs r3, #5
	adds r0, r3, #0
	mov r1, sp
	svc #0xab
	adds r2, r0, #0
	adds r0, r2, #0
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start _write
_write: @ 0x0807673C
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	bl remap_handle
	bl findslot
	adds r7, r0, #0
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl _swiwrite
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _08076764
	cmp r0, r6
	bne _0807676C
_08076764:
	adds r0, r1, #0
	bl error
	b _08076782
_0807676C:
	subs r2, r6, r0
	cmp r7, #0x14
	beq _08076780
	ldr r0, _08076784 @ =0x03001E40
	lsls r1, r7, #3
	adds r0, #4
	adds r1, r1, r0
	ldr r0, [r1]
	adds r0, r0, r2
	str r0, [r1]
_08076780:
	adds r0, r2, #0
_08076782:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08076784: .4byte 0x03001E40

	thumb_func_start _swiopen
_swiopen: @ 0x08076788
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0xc
	adds r7, r0, #0
	adds r4, r1, #0
	movs r5, #0
	movs r6, #1
	rsbs r6, r6, #0
	adds r0, r6, #0
	bl findslot
	mov r8, r0
	cmp r0, #0x14
	bne _080767AA
	adds r0, r6, #0
	b _0807681E
_080767AA:
	movs r0, #2
	ands r0, r4
	cmp r0, #0
	beq _080767B4
	movs r5, #2
_080767B4:
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r4
	cmp r0, #0
	beq _080767C2
	movs r0, #4
	orrs r5, r0
_080767C2:
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r4
	cmp r0, #0
	beq _080767D0
	movs r0, #4
	orrs r5, r0
_080767D0:
	movs r1, #8
	ands r4, r1
	cmp r4, #0
	beq _080767E0
	movs r0, #5
	rsbs r0, r0, #0
	ands r5, r0
	orrs r5, r1
_080767E0:
	str r7, [sp]
	adds r0, r7, #0
	bl strlen
	str r0, [sp, #8]
	str r5, [sp, #4]
	movs r2, #1
	adds r0, r2, #0
	mov r1, sp
	svc #0xab
	adds r3, r0, #0
	cmp r3, #0
	blt _08076818
	ldr r0, _08076814 @ =0x03001E40
	mov r1, r8
	lsls r2, r1, #3
	adds r1, r2, r0
	str r3, [r1]
	adds r0, #4
	adds r2, r2, r0
	movs r0, #0
	str r0, [r2]
	adds r0, r3, #0
	adds r0, #0x20
	b _0807681E
	.align 2, 0
_08076814: .4byte 0x03001E40
_08076818:
	adds r0, r3, #0
	bl error
_0807681E:
	add sp, #0xc
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start _open
_open: @ 0x08076828
	push {r1, r2, r3}
	push {lr}
	ldr r1, [sp, #4]
	bl _swiopen
	bl wrap
	pop {r3}
	add sp, #0xc
	bx r3

	thumb_func_start _swiclose
_swiclose: @ 0x0807683C
	push {lr}
	sub sp, #4
	bl remap_handle
	str r0, [sp]
	bl findslot
	adds r1, r0, #0
	cmp r1, #0x14
	beq _0807685C
	ldr r0, _0807686C @ =0x03001E40
	lsls r1, r1, #3
	adds r1, r1, r0
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r1]
_0807685C:
	movs r3, #2
	adds r0, r3, #0
	mov r1, sp
	svc #0xab
	adds r2, r0, #0
	adds r0, r2, #0
	add sp, #4
	pop {pc}
	.align 2, 0
_0807686C: .4byte 0x03001E40

	thumb_func_start _close
_close: @ 0x08076870
	push {lr}
	bl _swiclose
	bl wrap
	pop {pc}

	thumb_func_start _exit
_exit: @ 0x0807687C
	mov ip, r3
	mov r3, r8
	push {r3}
	mov r3, ip
	movs r2, #0x18
	ldr r3, _08076898 @ =0x00020026
	adds r0, r2, #0
	adds r1, r3, #0
	svc #0xab
	mov r8, r0
	pop {r3}
	mov r8, r3
	bx lr
	.align 2, 0
_08076898: .4byte 0x00020026

	thumb_func_start _kill
_kill: @ 0x0807689C
	mov ip, r3
	mov r3, r8
	push {r3}
	mov r3, ip
	movs r2, #0x18
	ldr r3, _080768B8 @ =0x00020026
	adds r0, r2, #0
	adds r1, r3, #0
	svc #0xab
	mov r8, r0
	pop {r3}
	mov r8, r3
	bx lr
	.align 2, 0
_080768B8: .4byte 0x00020026

	thumb_func_start _getpid
_getpid: @ 0x080768BC
	movs r0, #1
	bx lr

	thumb_func_start _sbrk
_sbrk: @ 0x080768C0
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r4, _080768F0 @ =0x03001E30
	ldr r0, [r4]
	cmp r0, #0
	bne _080768D0
	ldr r0, _080768F4 @ =0x03005848
	str r0, [r4]
_080768D0:
	ldr r5, [r4]
	adds r0, r5, r6
	.2byte 0x4568 @cmp r0, sp --use of r13 is deprecated
	bls _080768E6
	ldr r1, _080768F8 @ =0x082ABA04
	movs r0, #1
	movs r2, #0x20
	bl _write
	bl abort
_080768E6:
	ldr r0, [r4]
	adds r0, r0, r6
	str r0, [r4]
	adds r0, r5, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_080768F0: .4byte 0x03001E30
_080768F4: .4byte 0x03005848
_080768F8: .4byte 0x082ABA04

	thumb_func_start _fstat
_fstat: @ 0x080768FC
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r1, #4]
	movs r0, #0
	bx lr
	.align 2, 0

	thumb_func_start _unlink
_unlink: @ 0x08076908
	movs r0, #1
	rsbs r0, r0, #0
	bx lr
	.align 2, 0

	thumb_func_start _raise
_raise: @ 0x08076910
	bx lr
	.align 2, 0

	thumb_func_start _gettimeofday
_gettimeofday: @ 0x08076914
	push {r4, r5, lr}
	adds r2, r0, #0
	adds r3, r1, #0
	cmp r2, #0
	beq _08076932
	movs r4, #0x11
	movs r5, #0
	adds r0, r4, #0
	adds r1, r5, #0
	svc #0xab
	adds r5, r0, #0
	adds r4, r5, #0
	str r4, [r2]
	movs r0, #0
	str r0, [r2, #4]
_08076932:
	cmp r3, #0
	beq _0807693C
	movs r0, #0
	str r0, [r3]
	str r0, [r3, #4]
_0807693C:
	movs r0, #0
	pop {r4, r5, pc}

	thumb_func_start _times
_times: @ 0x08076940
	push {r4, r5, lr}
	adds r2, r0, #0
	movs r4, #0x10
	movs r5, #0
	adds r0, r4, #0
	adds r1, r5, #0
	svc #0xab
	adds r3, r0, #0
	cmp r2, #0
	beq _0807695E
	str r3, [r2]
	movs r0, #0
	str r0, [r2, #4]
	str r0, [r2, #8]
	str r0, [r2, #0xc]
_0807695E:
	adds r0, r3, #0
	pop {r4, r5, pc}
	.align 2, 0

	@ reent/writer.o

	thumb_func_start _write_r
_write_r: @ 0x08076964
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, r1, #0
	adds r1, r2, #0
	adds r2, r3, #0
	ldr r4, _08076990 @ =0x03005844
	movs r3, #0
	str r3, [r4]
	bl _write
	adds r1, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0807698A
	ldr r0, [r4]
	cmp r0, #0
	beq _0807698A
	str r0, [r5]
_0807698A:
	adds r0, r1, #0
	pop {r4, r5, pc}
	.align 2, 0
_08076990: .4byte 0x03005844

	@ stdlib/callocr

	thumb_func_start _calloc_r
_calloc_r: @ 0x08076994
	push {r4, lr}
	muls r1, r2, r1
	bl _malloc_r
	adds r4, r0, #0
	cmp r4, #0
	bne _080769A6
	movs r0, #0
	b _080769EA
_080769A6:
	adds r0, r4, #0
	subs r0, #8
	ldr r0, [r0, #4]
	movs r1, #4
	rsbs r1, r1, #0
	ands r0, r1
	subs r2, r0, #4
	cmp r2, #0x24
	bhi _080769E0
	adds r1, r4, #0
	cmp r2, #0x13
	bls _080769D6
	movs r0, #0
	stm r1!, {r0}
	str r0, [r4, #4]
	adds r1, #4
	cmp r2, #0x1b
	bls _080769D6
	stm r1!, {r0}
	stm r1!, {r0}
	cmp r2, #0x23
	bls _080769D6
	stm r1!, {r0}
	stm r1!, {r0}
_080769D6:
	movs r0, #0
	stm r1!, {r0}
	stm r1!, {r0}
	str r0, [r1]
	b _080769E8
_080769E0:
	adds r0, r4, #0
	movs r1, #0
	bl memset
_080769E8:
	adds r0, r4, #0
_080769EA:
	pop {r4, pc}

	@ reent/closer.o

	thumb_func_start _close_r
_close_r: @ 0x080769EC
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, r1, #0
	ldr r4, _08076A14 @ =0x03005844
	movs r1, #0
	str r1, [r4]
	bl _close
	adds r1, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _08076A0E
	ldr r0, [r4]
	cmp r0, #0
	beq _08076A0E
	str r0, [r5]
_08076A0E:
	adds r0, r1, #0
	pop {r4, r5, pc}
	.align 2, 0
_08076A14: .4byte 0x03005844

	@ errno/errno.o

	thumb_func_start __errno
__errno: @ 0x08076A18
	ldr r0, _08076A20 @ =0x0203A74C
	ldr r0, [r0]
	bx lr
	.align 2, 0
_08076A20: .4byte 0x0203A74C

	@ reent/fstatr.o

	thumb_func_start _fstat_r
_fstat_r: @ 0x08076A24
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, r1, #0
	adds r1, r2, #0
	ldr r4, _08076A4C @ =0x03005844
	movs r2, #0
	str r2, [r4]
	bl _fstat
	adds r1, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _08076A48
	ldr r0, [r4]
	cmp r0, #0
	beq _08076A48
	str r0, [r5]
_08076A48:
	adds r0, r1, #0
	pop {r4, r5, pc}
	.align 2, 0
_08076A4C: .4byte 0x03005844

	@ arm/libcfunc.o

	thumb_func_start abort
abort: @ 0x08076A50
	mov ip, r3
	mov r3, r8
	push {r3}
	mov r3, ip
	movs r2, #0x18
	ldr r3, _08076A6C @ =0x00020022
	adds r0, r2, #0
	adds r1, r3, #0
	svc #0xab
	mov r8, r0
	pop {r3}
	mov r8, r3
	bx lr
	.align 2, 0
_08076A6C: .4byte 0x00020022

	thumb_func_start isatty
isatty: @ 0x08076A70
	movs r0, #1
	bx lr

	thumb_func_start alarm
alarm: @ 0x08076A74
	bx lr
	.align 2, 0

	@ reent/lseekr.o

	thumb_func_start _lseek_r
_lseek_r: @ 0x08076A78
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, r1, #0
	adds r1, r2, #0
	adds r2, r3, #0
	ldr r4, _08076AA4 @ =0x03005844
	movs r3, #0
	str r3, [r4]
	bl _lseek
	adds r1, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _08076A9E
	ldr r0, [r4]
	cmp r0, #0
	beq _08076A9E
	str r0, [r5]
_08076A9E:
	adds r0, r1, #0
	pop {r4, r5, pc}
	.align 2, 0
_08076AA4: .4byte 0x03005844

	@ reent/readr.o

	thumb_func_start _read_r
_read_r: @ 0x08076AA8
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, r1, #0
	adds r1, r2, #0
	adds r2, r3, #0
	ldr r4, _08076AD4 @ =0x03005844
	movs r3, #0
	str r3, [r4]
	bl _read
	adds r1, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _08076ACE
	ldr r0, [r4]
	cmp r0, #0
	beq _08076ACE
	str r0, [r5]
_08076ACE:
	adds r0, r1, #0
	pop {r4, r5, pc}
	.align 2, 0
_08076AD4: .4byte 0x03005844

	@ Veneers

	thumb_func_start sub_08076AD8
sub_08076AD8: @ 0x08076AD8
	bx pc
	nop

	arm_func_start sub_08076ADC
sub_08076ADC: @ 0x08076ADC
	b sub_0800020C

	thumb_func_start sub_08076AE0
sub_08076AE0: @ 0x08076AE0
	bx pc
	nop

	arm_func_start sub_08076AE4
sub_08076AE4: @ 0x08076AE4
	b sub_08000218
