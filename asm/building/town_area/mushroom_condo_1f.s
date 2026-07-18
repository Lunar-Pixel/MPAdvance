	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .text
	.ARM
	.syntax unified

	thumb_func_start sub_08044058
sub_08044058: @ 0x08044058
	push {lr}
	ldr r2, _080440E8 @ =0x0808E6BC
	movs r0, #1
	movs r1, #0
	bl LoadCharSprite_080415A0
	movs r0, #1
	movs r1, #0
	bl sub_08041734
	movs r0, #1
	movs r1, #0x80
	movs r2, #0x3c
	bl EventPlaceChara_08041894
	ldr r0, _080440EC @ =0x0000011F
	bl EventPlaySFX_080410E0
	movs r0, #0x3c
	bl EventSleep_08040690
	movs r0, #1
	bl sub_080417E0
	movs r0, #1
	movs r1, #0
	bl sub_08041684
	movs r0, #0
	movs r1, #0
	movs r2, #2
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #6
	bl EventSleep_08040690
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #6
	bl EventSleep_08040690
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #6
	bl EventSleep_08040690
	movs r0, #0
	movs r1, #0
	movs r2, #7
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #6
	bl EventSleep_08040690
	bl EventWinInit_08040fe8
	movs r0, #0x39
	bl EventWinSpeakerSet_08041018
	pop {r0}
	bx r0
	.align 2, 0
_080440E8: .4byte 0x0808E6BC
_080440EC: .4byte 0x0000011F

	thumb_func_start sub_080440F0
sub_080440F0: @ 0x080440F0
	push {lr}
	bl sub_08044058
	movs r0, #0x12
	bl EventWinMesSet_08041058
	movs r0, #0x13
	bl EventWinMesSet_08041058
	movs r0, #0x14
	bl EventWinMesSet_08041058
	movs r0, #0x15
	bl EventWinMesSet_08041058
	movs r0, #0x16
	bl EventWinMesSet_08041058
	bl sub_08041008
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0x10
	bl EventSleep_08040690
	movs r0, #0
	movs r1, #0
	movs r2, #2
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0x10
	bl EventSleep_08040690
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0x3c
	bl EventSleep_08040690
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08044154
sub_08044154: @ 0x08044154
	push {lr}
	bl sub_08044058
	ldr r0, _080441A0 @ =0x001B0016
	bl EventWinMesSet_08041058
	ldr r0, _080441A4 @ =0x001B0017
	bl EventWinMesSet_08041058
_08044166:
	movs r0, #0
	movs r1, #0
	movs r2, #7
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _080441A8 @ =0x001B0018
	bl EventWinMesSet_08041058
	ldr r0, _080441AC @ =0x001B0019
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _080441B4
	cmp r0, #1
	beq _08044224
	ldr r0, _080441B0 @ =0x001B0026
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08044166
	b _08044278
	.align 2, 0
_080441A0: .4byte 0x001B0016
_080441A4: .4byte 0x001B0017
_080441A8: .4byte 0x001B0018
_080441AC: .4byte 0x001B0019
_080441B0: .4byte 0x001B0026
_080441B4:
	movs r0, #0
	movs r1, #0
	movs r2, #6
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _08044210 @ =0x001B001A
	bl EventWinMesSet_08041058
	ldr r0, _08044214 @ =0x001B001B
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #7
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _08044218 @ =0x001B001C
	bl EventWinMesSet_08041058
	ldr r0, _0804421C @ =0x001B001D
	bl EventWinMesSet_08041058
	bl sub_08041008
	movs r0, #0x1e
	bl EventSleep_08040690
	movs r0, #2
	movs r1, #1
	bl sub_08041808
	movs r0, #0x94
	lsls r0, r0, #1
	bl EventPlaySFX_080410E0
	bl EventWinInit_08040fe8
	ldr r0, _08044220 @ =0x001B001E
	bl EventWinMesSet_08041058
	movs r0, #0x6b
	bl EventSetFlag_080406E4
	b _08044278
	.align 2, 0
_08044210: .4byte 0x001B001A
_08044214: .4byte 0x001B001B
_08044218: .4byte 0x001B001C
_0804421C: .4byte 0x001B001D
_08044220: .4byte 0x001B001E
_08044224:
	movs r0, #0
	movs r1, #0
	movs r2, #6
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _0804425C @ =0x001B001F
	bl EventWinMesSet_08041058
	ldr r0, _08044260 @ =0x001B0020
	bl EventWinMesSet_08041058
	ldr r0, _08044264 @ =0x001B0021
	bl EventWinMesSet_08041058
	ldr r0, _08044268 @ =0x001B0022
	bl EventWinMesSet_08041058
	ldr r0, _0804426C @ =0x001B0023
	bl EventWinMesSet_08041058
	ldr r0, _08044270 @ =0x001B0024
	bl EventWinMesSet_08041058
	ldr r0, _08044274 @ =0x001B0025
	bl EventWinMesSet_08041058
	b _08044166
	.align 2, 0
_0804425C: .4byte 0x001B001F
_08044260: .4byte 0x001B0020
_08044264: .4byte 0x001B0021
_08044268: .4byte 0x001B0022
_0804426C: .4byte 0x001B0023
_08044270: .4byte 0x001B0024
_08044274: .4byte 0x001B0025
_08044278:
	pop {r0}
	bx r0

	thumb_func_start sub_0804427C
sub_0804427C: @ 0x0804427C
	push {lr}
	bl sub_08044058
	ldr r0, _080442AC @ =0x001C0016
	bl EventWinMesSet_08041058
	ldr r0, _080442B0 @ =0x001C0017
	bl EventWinMesSet_08041058
_0804428E:
	ldr r0, _080442B4 @ =0x001C0018
	bl EventWinMesSet_08041058
	ldr r0, _080442B8 @ =0x001C0019
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _080442BC
	cmp r0, #1
	beq _08044310
	b _08044370
	.align 2, 0
_080442AC: .4byte 0x001C0016
_080442B0: .4byte 0x001C0017
_080442B4: .4byte 0x001C0018
_080442B8: .4byte 0x001C0019
_080442BC:
	movs r0, #0
	movs r1, #0
	movs r2, #6
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _080442FC @ =0x001C001A
	bl EventWinMesSet_08041058
	ldr r0, _08044300 @ =0x001C001B
	bl EventWinMesSet_08041058
	ldr r0, _08044304 @ =0x001C001C
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #7
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _08044308 @ =0x001C001D
	bl EventWinMesSet_08041058
	ldr r0, _0804430C @ =0x001C001E
	bl EventWinMesSet_08041058
	movs r0, #0x6f
	bl EventSetFlag_080406E4
	b _0804428E
	.align 2, 0
_080442FC: .4byte 0x001C001A
_08044300: .4byte 0x001C001B
_08044304: .4byte 0x001C001C
_08044308: .4byte 0x001C001D
_0804430C: .4byte 0x001C001E
_08044310:
	movs r0, #0
	movs r1, #0
	movs r2, #6
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _08044354 @ =0x001C001F
	bl EventWinMesSet_08041058
	ldr r0, _08044358 @ =0x001C0020
	bl EventWinMesSet_08041058
	ldr r0, _0804435C @ =0x001C0021
	bl EventWinMesSet_08041058
	ldr r0, _08044360 @ =0x001C0022
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #7
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _08044364 @ =0x001C0023
	bl EventWinMesSet_08041058
	ldr r0, _08044368 @ =0x001C0024
	bl EventWinMesSet_08041058
	ldr r0, _0804436C @ =0x001C0025
	bl EventWinMesSet_08041058
	b _0804428E
	.align 2, 0
_08044354: .4byte 0x001C001F
_08044358: .4byte 0x001C0020
_0804435C: .4byte 0x001C0021
_08044360: .4byte 0x001C0022
_08044364: .4byte 0x001C0023
_08044368: .4byte 0x001C0024
_0804436C: .4byte 0x001C0025
_08044370:
	ldr r0, _08044384 @ =0x001C0026
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0804428E
	pop {r0}
	bx r0
	.align 2, 0
_08044384: .4byte 0x001C0026

	thumb_func_start sub_08044388
sub_08044388: @ 0x08044388
	push {lr}
	bl EventInit_080405B8
	ldr r0, _08044418 @ =0x0808DDA4
	bl LoadBuildingBG_0804115C
	ldr r0, _0804441C @ =0x0808E5BC
	movs r1, #0x78
	movs r2, #0x10
	bl DisplayGFX_080414B4
	ldr r2, _08044420 @ =0x0808EA7C
	movs r0, #0
	movs r1, #0
	bl LoadCharSprite_080415A0
	movs r0, #0
	movs r1, #0
	bl sub_08041734
	movs r0, #0
	movs r1, #0x78
	movs r2, #0x68
	bl EventPlaceChara_08041894
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r2, _08044424 @ =0x0808E6FC
	movs r0, #2
	movs r1, #0
	bl LoadCharSprite_080415A0
	movs r0, #2
	movs r1, #0
	bl sub_08041734
	movs r0, #2
	movs r1, #0x78
	movs r2, #0x40
	bl EventPlaceChara_08041894
	movs r0, #2
	movs r1, #0
	bl sub_08041808
	bl sub_080407FC
	movs r0, #0x6a
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0804442C
	movs r0, #0x6b
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0804442C
	movs r0, #0x15
	bl EventBGMPlay_080410A8
	ldr r0, _08044428 @ =sub_08044154
	bl RunEventScript_0804066C
	b _08044464
	.align 2, 0
_08044418: .4byte 0x0808DDA4
_0804441C: .4byte 0x0808E5BC
_08044420: .4byte 0x0808EA7C
_08044424: .4byte 0x0808E6FC
_08044428: .4byte sub_08044154
_0804442C:
	movs r0, #0x6e
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08044458
	movs r0, #0x72
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08044458
	movs r0, #0x15
	bl EventBGMPlay_080410A8
	ldr r0, _08044454 @ =sub_0804427C
	bl RunEventScript_0804066C
	b _08044464
	.align 2, 0
_08044454: .4byte sub_0804427C
_08044458:
	movs r0, #0x19
	bl EventBGMPlay_080410A8
	ldr r0, _080444A0 @ =sub_080440F0
	bl RunEventScript_0804066C
_08044464:
	movs r0, #2
	bl SetCharacterMetFlag_0802D7CC
	bl sub_080410D0
	bl sub_08041008
	bl sub_08040820
	movs r0, #0
	bl sub_080417E0
	movs r0, #0
	movs r1, #0
	bl sub_08041684
	movs r0, #2
	bl sub_080417E0
	movs r0, #2
	movs r1, #0
	bl sub_08041684
	bl sub_08041560
	bl sub_0804062C
	pop {r0}
	bx r0
	.align 2, 0
_080444A0: .4byte sub_080440F0
