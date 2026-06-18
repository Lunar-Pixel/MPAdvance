	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .text
	.ARM
	.syntax unified

	thumb_func_start sub_080500D8
sub_080500D8: @ 0x080500D8
	push {lr}
	movs r0, #0x85
	bl sub_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080501A0
	movs r0, #0x68
	bl sub_08041100
	bl sub_08041138
	movs r0, #0x16
	bl sub_080410A8
	bl sub_08040FE8
	movs r0, #0x14
	bl sub_08041018
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _08050180 @ =0x00220014
	bl sub_08041058
	ldr r0, _08050184 @ =0x00220015
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #7
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #1
	movs r1, #1
	bl sub_08041808
	ldr r0, _08050188 @ =0x00000123
	bl sub_080410E0
	ldr r0, _0805018C @ =0x00220016
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	bl sub_08041808
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	ldr r0, _08050190 @ =0x00220017
	bl sub_08041058
	ldr r0, _08050194 @ =0x00220018
	bl sub_08041058
	ldr r0, _08050198 @ =0x00220019
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _0805019C @ =0x0022001A
	bl sub_08041058
	movs r0, #0x77
	bl sub_08040B84
	movs r0, #0x86
	bl sub_080406BC
	b _08050202
	.align 2, 0
_08050180: .4byte 0x00220014
_08050184: .4byte 0x00220015
_08050188: .4byte 0x00000123
_0805018C: .4byte 0x00220016
_08050190: .4byte 0x00220017
_08050194: .4byte 0x00220018
_08050198: .4byte 0x00220019
_0805019C: .4byte 0x0022001A
_080501A0:
	movs r0, #1
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #1
	movs r1, #1
	bl sub_08041808
	ldr r0, _08050208 @ =0x00000121
	bl sub_080410E0
	movs r0, #0x78
	bl sub_08040690
	movs r0, #1
	movs r1, #0
	bl sub_08041808
	bl sub_08040FE8
	movs r0, #0x14
	bl sub_08041018
	ldr r0, _0805020C @ =0x0022001B
	bl sub_08041058
	ldr r0, _08050210 @ =0x0022001C
	bl sub_08041058
	ldr r0, _08050214 @ =0x0022001D
	bl sub_08041058
	ldr r0, _08050218 @ =0x0022001E
	bl sub_08041058
	ldr r0, _0805021C @ =0x0022001F
	bl sub_08041058
	movs r0, #0x84
	bl sub_080406FC
	movs r0, #0x85
	bl sub_080406FC
	movs r0, #0x86
	bl sub_080406D0
_08050202:
	pop {r0}
	bx r0
	.align 2, 0
_08050208: .4byte 0x00000121
_0805020C: .4byte 0x0022001B
_08050210: .4byte 0x0022001C
_08050214: .4byte 0x0022001D
_08050218: .4byte 0x0022001E
_0805021C: .4byte 0x0022001F

	thumb_func_start sub_08050220
sub_08050220: @ 0x08050220
	push {lr}
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl sub_080418C8
	bl sub_080407FC
	movs r0, #0x3c
	bl sub_08040690
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	bl sub_08040FE8
	movs r0, #0x14
	bl sub_08041018
	ldr r0, _0805026C @ =0x00220020
	bl sub_08041058
	ldr r0, _08050270 @ =0x00220021
	bl sub_08041058
	ldr r0, _08050274 @ =0x00220022
	bl sub_08041058
	ldr r0, _08050278 @ =0x00220023
	bl sub_08041058
	pop {r0}
	bx r0
	.align 2, 0
_0805026C: .4byte 0x00220020
_08050270: .4byte 0x00220021
_08050274: .4byte 0x00220022
_08050278: .4byte 0x00220023

	thumb_func_start sub_0805027C
sub_0805027C: @ 0x0805027C
	push {lr}
	bl sub_080405B8
	ldr r0, _080502E4 @ =0x0808E204
	bl sub_0804115C
	ldr r2, _080502E8 @ =0x0808E86C
	movs r0, #0
	movs r1, #0
	bl sub_080415A0
	movs r0, #0
	movs r1, #0
	bl sub_08041734
	movs r0, #0
	movs r1, #0x78
	movs r2, #0x68
	bl sub_08041894
	ldr r2, _080502EC @ =0x0808E6BC
	movs r0, #1
	movs r1, #0
	bl sub_080415A0
	movs r0, #1
	movs r1, #0
	bl sub_08041734
	movs r0, #1
	movs r1, #0x7c
	movs r2, #0x34
	bl sub_08041894
	movs r0, #1
	movs r1, #0
	bl sub_08041808
	movs r0, #0x86
	bl sub_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080502F4
	movs r0, #0x1b
	bl sub_080410A8
	ldr r0, _080502F0 @ =sub_08050220
	bl sub_0804066C
	b _0805035C
	.align 2, 0
_080502E4: .4byte 0x0808E204
_080502E8: .4byte 0x0808E86C
_080502EC: .4byte 0x0808E6BC
_080502F0: .4byte sub_08050220
_080502F4:
	bl sub_08040B0C
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08050324
	movs r0, #0x1b
	bl sub_080410A8
	ldr r0, _08050320 @ =sub_0804FF04
	bl sub_0804066C
	movs r0, #0x84
	bl sub_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0805035C
	movs r0, #0x77
	bl sub_08040B34
	b _0805035C
	.align 2, 0
_08050320: .4byte sub_0804FF04
_08050324:
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	bl sub_080407FC
	movs r0, #0x16
	bl sub_08040A6C
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	beq _0805034C
	cmp r0, #1
	ble _0805035C
	cmp r0, #2
	beq _08050352
	b _0805035C
_0805034C:
	movs r0, #0x85
	bl sub_080406E4
_08050352:
	ldr r0, _0805038C @ =sub_080500D8
	bl sub_0804066C
	bl sub_08040B28
_0805035C:
	bl sub_080410D0
	bl sub_08041008
	bl sub_08040820
	movs r0, #0
	bl sub_080417E0
	movs r0, #0
	movs r1, #0
	bl sub_08041684
	movs r0, #1
	bl sub_080417E0
	movs r0, #1
	movs r1, #0
	bl sub_08041684
	bl sub_0804062C
	pop {r0}
	bx r0
	.align 2, 0
_0805038C: .4byte sub_080500D8

	thumb_func_start sub_08050390
sub_08050390: @ 0x08050390
	push {lr}
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0x78
	bl sub_08040690
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0x78
	bl sub_08040690
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #0x1e
	bl sub_08040690
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #1
	movs r1, #1
	bl sub_08041808
	ldr r0, _08050424 @ =0x0000011F
	bl sub_080410E0
	movs r0, #0x3c
	bl sub_08040690
	movs r0, #1
	movs r1, #0
	bl sub_08041808
	bl sub_08040FE8
	movs r0, #0x29
	bl sub_08041018
	movs r0, #0xf0
	lsls r0, r0, #0xc
	bl sub_08041058
	ldr r0, _08050428 @ =0x000F0001
	bl sub_08041058
	ldr r0, _0805042C @ =0x000F0002
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	bne _08050434
	ldr r0, _08050430 @ =0x000F0003
	bl sub_08041058
	b _080504B8
	.align 2, 0
_08050424: .4byte 0x0000011F
_08050428: .4byte 0x000F0001
_0805042C: .4byte 0x000F0002
_08050430: .4byte 0x000F0003
_08050434:
	ldr r1, _0805047C @ =0x000F0004
	movs r0, #0xe
	bl sub_080408C4
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080504B8
	movs r0, #0x12
	bl sub_080410A8
	bl sub_08040FE8
	movs r0, #0x29
	bl sub_08041018
	ldr r0, _08050480 @ =0x000F0005
	bl sub_08041058
	ldr r0, _08050484 @ =0x000F0006
	bl sub_08041058
	ldr r0, _08050488 @ =0x000F0007
	bl sub_08041058
	ldr r0, _0805048C @ =0x000F0008
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08050494
	ldr r0, _08050490 @ =0x000F0009
	bl sub_08041058
	b _080504A0
	.align 2, 0
_0805047C: .4byte 0x000F0004
_08050480: .4byte 0x000F0005
_08050484: .4byte 0x000F0006
_08050488: .4byte 0x000F0007
_0805048C: .4byte 0x000F0008
_08050490: .4byte 0x000F0009
_08050494:
	ldr r0, _080504BC @ =0x000F000C
	bl sub_08041058
	ldr r0, _080504C0 @ =0x000F000D
	bl sub_08041058
_080504A0:
	ldr r0, _080504C4 @ =0x000F000A
	bl sub_08041058
	ldr r0, _080504C8 @ =0x000F000B
	bl sub_08041058
	movs r0, #0x3a
	bl sub_080406E4
	movs r0, #0x14
	bl sub_0802D7CC
_080504B8:
	pop {r0}
	bx r0
	.align 2, 0
_080504BC: .4byte 0x000F000C
_080504C0: .4byte 0x000F000D
_080504C4: .4byte 0x000F000A
_080504C8: .4byte 0x000F000B

	thumb_func_start sub_080504CC
sub_080504CC: @ 0x080504CC
	push {lr}
	bl sub_08040FE8
	movs r0, #0x29
	bl sub_08041018
	movs r0, #0x3b
	bl sub_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08050530
	ldr r0, _0805051C @ =0x000F000E
	bl sub_08041058
	ldr r0, _08050520 @ =0x000F000F
	bl sub_08041058
	ldr r0, _08050524 @ =0x000F0010
	bl sub_08041058
	movs r0, #0x11
	movs r1, #0x12
	bl sub_08042814
	movs r0, #0x29
	bl sub_08041018
	ldr r0, _08050528 @ =0x000F0011
	bl sub_08041058
	ldr r0, _0805052C @ =0x000F0012
	bl sub_08041058
	movs r0, #0x3d
	bl sub_080406BC
	b _08050566
	.align 2, 0
_0805051C: .4byte 0x000F000E
_08050520: .4byte 0x000F000F
_08050524: .4byte 0x000F0010
_08050528: .4byte 0x000F0011
_0805052C: .4byte 0x000F0012
_08050530:
	ldr r0, _0805056C @ =0x000F0013
	bl sub_08041058
	ldr r0, _08050570 @ =0x000F0014
	bl sub_08041058
	ldr r0, _08050574 @ =0x000F0015
	bl sub_08041058
	ldr r0, _08050578 @ =0x000F0016
	bl sub_08041058
	ldr r0, _0805057C @ =0x000F0017
	bl sub_08041058
	movs r0, #0x3a
	bl sub_080406FC
	movs r0, #0x3b
	bl sub_080406FC
	movs r0, #0x3c
	bl sub_080406FC
	movs r0, #0x3d
	bl sub_080406D0
_08050566:
	pop {r0}
	bx r0
	.align 2, 0
_0805056C: .4byte 0x000F0013
_08050570: .4byte 0x000F0014
_08050574: .4byte 0x000F0015
_08050578: .4byte 0x000F0016
_0805057C: .4byte 0x000F0017

	thumb_func_start sub_08050580
sub_08050580: @ 0x08050580
	push {lr}
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0x78
	bl sub_08040690
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0x78
	bl sub_08040690
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	bl sub_08040FE8
	movs r0, #0x29
	bl sub_08041018
	ldr r0, _080505D4 @ =0x000F0018
	bl sub_08041058
	ldr r0, _080505D8 @ =0x000F0019
	bl sub_08041058
	ldr r0, _080505DC @ =0x000F001A
	bl sub_08041058
	pop {r0}
	bx r0
	.align 2, 0
_080505D4: .4byte 0x000F0018
_080505D8: .4byte 0x000F0019
_080505DC: .4byte 0x000F001A

	thumb_func_start sub_080505E0
sub_080505E0: @ 0x080505E0
	push {lr}
	bl sub_080405B8
	ldr r0, _0805064C @ =0x0808E22C
	bl sub_0804115C
	ldr r2, _08050650 @ =0x0808E99C
	movs r0, #0
	movs r1, #0
	bl sub_080415A0
	movs r0, #0
	movs r1, #0
	bl sub_08041734
	movs r0, #0
	movs r1, #0x78
	movs r2, #0x68
	bl sub_08041894
	ldr r2, _08050654 @ =0x0808E6BC
	movs r0, #1
	movs r1, #0
	bl sub_080415A0
	movs r0, #1
	movs r1, #0
	bl sub_08041734
	movs r0, #1
	movs r1, #0x7c
	movs r2, #0x38
	bl sub_08041894
	movs r0, #1
	movs r1, #0
	bl sub_08041808
	bl sub_080407FC
	movs r0, #0x3d
	bl sub_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0805065C
	movs r0, #0x1b
	bl sub_080410A8
	ldr r0, _08050658 @ =sub_08050580
	bl sub_0804066C
	b _080506AE
	.align 2, 0
_0805064C: .4byte 0x0808E22C
_08050650: .4byte 0x0808E99C
_08050654: .4byte 0x0808E6BC
_08050658: .4byte sub_08050580
_0805065C:
	bl sub_08040EF0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805068C
	movs r0, #0x1b
	bl sub_080410A8
	ldr r0, _08050688 @ =sub_08050390
	bl sub_0804066C
	movs r0, #0x3a
	bl sub_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080506AE
	movs r0, #6
	bl sub_08040F18
	b _080506AE
	.align 2, 0
_08050688: .4byte sub_08050390
_0805068C:
	movs r0, #0x12
	bl sub_080410A8
	bl sub_08040F38
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080506A4
	movs r0, #0x3b
	bl sub_080406E4
_080506A4:
	ldr r0, _080506E0 @ =sub_080504CC
	bl sub_0804066C
	bl sub_08040F0C
_080506AE:
	bl sub_080410D0
	bl sub_08041008
	bl sub_08040820
	movs r0, #0
	bl sub_080417E0
	movs r0, #0
	movs r1, #0
	bl sub_08041684
	movs r0, #1
	bl sub_080417E0
	movs r0, #1
	movs r1, #0
	bl sub_08041684
	bl sub_0804062C
	pop {r0}
	bx r0
	.align 2, 0
_080506E0: .4byte sub_080504CC

	thumb_func_start sub_080506E4
sub_080506E4: @ 0x080506E4
	push {lr}
	bl sub_080407FC
	ldr r0, _08050878 @ =0x0000011B
	bl sub_080410E0
	movs r0, #0
	movs r1, #0
	movs r2, #0xf
	movs r3, #0
	bl sub_080418C8
	movs r0, #0
	movs r1, #0x30
	movs r2, #0x68
	movs r3, #0x10
	bl sub_08041938
	movs r0, #0x8f
	lsls r0, r0, #1
	bl sub_080410E0
	bl sub_080454C4
	movs r0, #0
	movs r1, #0
	movs r2, #0xc
	movs r3, #0
	bl sub_080418C8
	movs r0, #0x31
	bl sub_08040690
	movs r0, #0x96
	lsls r0, r0, #1
	bl sub_080410E0
	bl sub_08040FE8
	movs r0, #0x38
	bl sub_08041018
	movs r0, #0xb0
	lsls r0, r0, #0xd
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0xd
	movs r3, #0
	bl sub_080418C8
	ldr r0, _0805087C @ =0x00160001
	bl sub_08041058
	ldr r0, _08050880 @ =0x00160002
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl sub_080418C8
	movs r0, #0x1e
	bl sub_08040690
	movs r0, #0
	movs r1, #0
	movs r2, #0x10
	movs r3, #0
	bl sub_080418C8
	ldr r0, _08050884 @ =0x00160003
	bl sub_08041058
	bl sub_08041008
	movs r0, #0
	movs r1, #0x30
	movs r2, #0x58
	movs r3, #8
	bl sub_08041938
	movs r0, #0
	movs r1, #0x30
	movs r2, #0x68
	movs r3, #8
	bl sub_08041938
	movs r0, #0
	movs r1, #0
	movs r2, #0xf
	movs r3, #8
	bl sub_080418C8
	movs r0, #0x8e
	lsls r0, r0, #1
	bl sub_080410E0
	movs r0, #0
	movs r1, #0
	movs r2, #0x68
	movs r3, #8
	bl sub_08041938
	movs r0, #0x78
	bl sub_08040690
	movs r0, #0
	bl sub_080417E0
	movs r0, #0
	movs r1, #0
	bl sub_08041684
	bl sub_08040FE8
	movs r0, #2
	bl sub_08041018
	ldr r0, _08050888 @ =0x00160004
	bl sub_08041058
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _0805088C @ =0x00160005
	bl sub_08041058
	movs r0, #2
	bl sub_08041018
	ldr r0, _08050890 @ =0x00160006
	bl sub_08041058
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _08050894 @ =0x00160007
	bl sub_08041058
	movs r0, #2
	bl sub_08041018
	ldr r0, _08050898 @ =0x00160008
	bl sub_08041058
	ldr r0, _0805089C @ =0x00160009
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080508B0
	ldr r0, _080508A0 @ =0x0016000A
	bl sub_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #4
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _080508A4 @ =0x0016000B
	bl sub_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #9
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #4
	movs r1, #0
	movs r2, #9
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _080508A8 @ =0x0016000C
	bl sub_08041058
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _080508AC @ =0x0016000D
	bl sub_08041058
	b _080509DC
	.align 2, 0
_08050878: .4byte 0x0000011B
_0805087C: .4byte 0x00160001
_08050880: .4byte 0x00160002
_08050884: .4byte 0x00160003
_08050888: .4byte 0x00160004
_0805088C: .4byte 0x00160005
_08050890: .4byte 0x00160006
_08050894: .4byte 0x00160007
_08050898: .4byte 0x00160008
_0805089C: .4byte 0x00160009
_080508A0: .4byte 0x0016000A
_080508A4: .4byte 0x0016000B
_080508A8: .4byte 0x0016000C
_080508AC: .4byte 0x0016000D
_080508B0:
	ldr r1, _08050950 @ =0x0016000E
	movs r0, #0x15
	bl sub_080408C4
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080508C0
	b _080509DC
_080508C0:
	movs r0, #0x13
	bl sub_080410A8
	bl sub_08040FE8
	movs r0, #2
	bl sub_08041018
	ldr r0, _08050954 @ =0x0016000F
	bl sub_08041058
	ldr r0, _08050958 @ =0x00160010
	bl sub_08041058
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _0805095C @ =0x00160011
	bl sub_08041058
	movs r0, #2
	bl sub_08041018
	ldr r0, _08050960 @ =0x00160012
	bl sub_08041058
	ldr r0, _08050964 @ =0x00160013
	bl sub_08041058
	ldr r0, _08050968 @ =0x00160014
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08050988
	ldr r0, _0805096C @ =0x00160015
	bl sub_08041058
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _08050970 @ =0x00160016
	bl sub_08041058
	movs r0, #2
	bl sub_08041018
	ldr r0, _08050974 @ =0x00160017
	bl sub_08041058
	ldr r0, _08050978 @ =0x00160018
	bl sub_08041058
	ldr r0, _0805097C @ =0x00160019
	bl sub_08041058
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _08050980 @ =0x0016001A
	bl sub_08041058
	movs r0, #2
	bl sub_08041018
	ldr r0, _08050984 @ =0x0016001B
	bl sub_08041058
	b _080509CA
	.align 2, 0
_08050950: .4byte 0x0016000E
_08050954: .4byte 0x0016000F
_08050958: .4byte 0x00160010
_0805095C: .4byte 0x00160011
_08050960: .4byte 0x00160012
_08050964: .4byte 0x00160013
_08050968: .4byte 0x00160014
_0805096C: .4byte 0x00160015
_08050970: .4byte 0x00160016
_08050974: .4byte 0x00160017
_08050978: .4byte 0x00160018
_0805097C: .4byte 0x00160019
_08050980: .4byte 0x0016001A
_08050984: .4byte 0x0016001B
_08050988:
	ldr r0, _080509E0 @ =0x0016001C
	bl sub_08041058
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _080509E4 @ =0x0016001D
	bl sub_08041058
	movs r0, #2
	bl sub_08041018
	ldr r0, _080509E8 @ =0x0016001E
	bl sub_08041058
	ldr r0, _080509EC @ =0x0016001F
	bl sub_08041058
	ldr r0, _080509F0 @ =0x00160020
	bl sub_08041058
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _080509F4 @ =0x00160021
	bl sub_08041058
	movs r0, #2
	bl sub_08041018
	ldr r0, _080509F8 @ =0x00160022
	bl sub_08041058
_080509CA:
	movs r0, #0x55
	bl sub_080406E4
	movs r0, #0xb
	bl sub_0802D7CC
	movs r0, #0x2d
	bl sub_0802D7CC
_080509DC:
	pop {r0}
	bx r0
	.align 2, 0
_080509E0: .4byte 0x0016001C
_080509E4: .4byte 0x0016001D
_080509E8: .4byte 0x0016001E
_080509EC: .4byte 0x0016001F
_080509F0: .4byte 0x00160020
_080509F4: .4byte 0x00160021
_080509F8: .4byte 0x00160022

	thumb_func_start sub_080509FC
sub_080509FC: @ 0x080509FC
	push {lr}
	movs r0, #3
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #5
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	ldr r0, _08050A98 @ =0x00160025
	bl sub_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #4
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _08050A9C @ =0x00160026
	bl sub_08041058
	movs r0, #3
	movs r1, #0
	movs r2, #0xd
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #5
	movs r1, #0
	movs r2, #0xd
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #2
	movs r1, #0
	movs r2, #9
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #4
	movs r1, #0
	movs r2, #9
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _08050AA0 @ =0x00160027
	bl sub_08041058
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _08050AA4 @ =0x00160028
	bl sub_08041058
	movs r0, #2
	bl sub_08041018
	ldr r0, _08050AA8 @ =0x00160029
	bl sub_08041058
	pop {r0}
	bx r0
	.align 2, 0
_08050A98: .4byte 0x00160025
_08050A9C: .4byte 0x00160026
_08050AA0: .4byte 0x00160027
_08050AA4: .4byte 0x00160028
_08050AA8: .4byte 0x00160029

	thumb_func_start sub_08050AAC
sub_08050AAC: @ 0x08050AAC
	push {lr}
	movs r0, #2
	bl sub_08041018
	ldr r0, _08050C40 @ =0x00160023
	bl sub_08041058
	ldr r0, _08050C44 @ =0x00160024
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	beq _08050ACE
	b _08050C36
_08050ACE:
	movs r0, #3
	movs r1, #0
	movs r2, #8
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #5
	movs r1, #0
	movs r2, #8
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #2
	movs r1, #0
	movs r2, #6
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #4
	movs r1, #0
	movs r2, #6
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _08050C48 @ =0x0016002A
	bl sub_08041058
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _08050C4C @ =0x0016002B
	bl sub_08041058
	movs r0, #2
	bl sub_08041018
	ldr r0, _08050C50 @ =0x0016002C
	bl sub_08041058
	movs r0, #3
	movs r1, #0
	movs r2, #0xd
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #5
	movs r1, #0
	movs r2, #0xd
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #2
	movs r1, #0
	movs r2, #9
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #4
	movs r1, #0
	movs r2, #9
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _08050C54 @ =0x0016002D
	bl sub_08041058
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _08050C58 @ =0x0016002E
	bl sub_08041058
	movs r0, #2
	bl sub_08041018
	ldr r0, _08050C5C @ =0x0016002F
	bl sub_08041058
	ldr r0, _08050C60 @ =0x00160030
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _08050C36
	movs r0, #3
	movs r1, #0
	movs r2, #8
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #5
	movs r1, #0
	movs r2, #8
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #2
	movs r1, #0
	movs r2, #6
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #4
	movs r1, #0
	movs r2, #6
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _08050C64 @ =0x00160031
	bl sub_08041058
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _08050C68 @ =0x00160032
	bl sub_08041058
	movs r0, #3
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #5
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #4
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _08050C6C @ =0x00160033
	bl sub_08041058
	ldr r0, _08050C70 @ =0x00160034
	bl sub_08041058
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _08050C74 @ =0x00160035
	bl sub_08041058
	movs r0, #2
	bl sub_08041018
	ldr r0, _08050C78 @ =0x00160036
	bl sub_08041058
	ldr r0, _08050C7C @ =0x00160037
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	beq _08050C84
_08050C36:
	ldr r0, _08050C80 @ =sub_080509FC
	bl sub_0804066C
	b _08050E7C
	.align 2, 0
_08050C40: .4byte 0x00160023
_08050C44: .4byte 0x00160024
_08050C48: .4byte 0x0016002A
_08050C4C: .4byte 0x0016002B
_08050C50: .4byte 0x0016002C
_08050C54: .4byte 0x0016002D
_08050C58: .4byte 0x0016002E
_08050C5C: .4byte 0x0016002F
_08050C60: .4byte 0x00160030
_08050C64: .4byte 0x00160031
_08050C68: .4byte 0x00160032
_08050C6C: .4byte 0x00160033
_08050C70: .4byte 0x00160034
_08050C74: .4byte 0x00160035
_08050C78: .4byte 0x00160036
_08050C7C: .4byte 0x00160037
_08050C80: .4byte sub_080509FC
_08050C84:
	movs r0, #3
	movs r1, #0
	movs r2, #8
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #5
	movs r1, #0
	movs r2, #8
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #2
	movs r1, #0
	movs r2, #6
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #4
	movs r1, #0
	movs r2, #6
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _08050E80 @ =0x00160038
	bl sub_08041058
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _08050E84 @ =0x00160039
	bl sub_08041058
	movs r0, #3
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #5
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #4
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _08050E88 @ =0x0016003A
	bl sub_08041058
	ldr r0, _08050E8C @ =0x0016003B
	bl sub_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #4
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _08050E90 @ =0x0016003C
	bl sub_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #4
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _08050E94 @ =0x0016003D
	bl sub_08041058
	ldr r0, _08050E98 @ =0x0016003E
	bl sub_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #4
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _08050E9C @ =0x0016003F
	bl sub_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #4
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _08050EA0 @ =0x00160040
	bl sub_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #4
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _08050EA4 @ =0x00160041
	bl sub_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #4
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	ldr r1, _08050EA8 @ =0x00460028
	movs r0, #0x6d
	bl sub_080427E0
	movs r0, #2
	bl sub_08041018
	ldr r0, _08050EAC @ =0x00160042
	bl sub_08041058
	bl sub_08040BB8
	movs r0, #3
	movs r1, #0
	movs r2, #8
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #5
	movs r1, #0
	movs r2, #8
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _08050EB0 @ =0x00160043
	bl sub_08041058
	movs r0, #3
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #5
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #2
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #4
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _08050EB4 @ =0x00160044
	bl sub_08041058
	movs r0, #3
	movs r1, #0
	movs r2, #8
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #5
	movs r1, #0
	movs r2, #8
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _08050EB8 @ =0x00160045
	bl sub_08041058
	movs r0, #0x56
	bl sub_080406E4
_08050E7C:
	pop {r0}
	bx r0
	.align 2, 0
_08050E80: .4byte 0x00160038
_08050E84: .4byte 0x00160039
_08050E88: .4byte 0x0016003A
_08050E8C: .4byte 0x0016003B
_08050E90: .4byte 0x0016003C
_08050E94: .4byte 0x0016003D
_08050E98: .4byte 0x0016003E
_08050E9C: .4byte 0x0016003F
_08050EA0: .4byte 0x00160040
_08050EA4: .4byte 0x00160041
_08050EA8: .4byte 0x00460028
_08050EAC: .4byte 0x00160042
_08050EB0: .4byte 0x00160043
_08050EB4: .4byte 0x00160044
_08050EB8: .4byte 0x00160045

	thumb_func_start sub_08050EBC
sub_08050EBC: @ 0x08050EBC
	push {lr}
	movs r0, #0x57
	bl sub_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08050ECE
	b _0805106C
_08050ECE:
	movs r0, #0x68
	bl sub_08041100
	bl sub_08041138
	movs r0, #0x13
	bl sub_080410A8
	bl sub_08040FE8
	movs r0, #2
	bl sub_08041018
	ldr r0, _08051044 @ =0x00160046
	bl sub_08041058
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _08051048 @ =0x00160047
	bl sub_08041058
	movs r0, #3
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #5
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #4
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _0805104C @ =0x00160048
	bl sub_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #4
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _08051050 @ =0x00160049
	bl sub_08041058
	movs r0, #0x26
	movs r1, #0x13
	bl sub_08042814
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #4
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _08051054 @ =0x0016004A
	bl sub_08041058
	ldr r0, _08051058 @ =0x0016004B
	bl sub_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #4
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _0805105C @ =0x0016004C
	bl sub_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #4
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _08051060 @ =0x0016004D
	bl sub_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #4
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _08051064 @ =0x0016004E
	bl sub_08041058
	movs r0, #3
	movs r1, #0
	movs r2, #0xd
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #5
	movs r1, #0
	movs r2, #0xd
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #2
	movs r1, #0
	movs r2, #9
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #4
	movs r1, #0
	movs r2, #9
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _08051068 @ =0x0016004F
	bl sub_08041058
	movs r0, #0x6d
	bl sub_08040B84
	movs r0, #0x58
	bl sub_080406BC
	b _0805112A
	.align 2, 0
_08051044: .4byte 0x00160046
_08051048: .4byte 0x00160047
_0805104C: .4byte 0x00160048
_08051050: .4byte 0x00160049
_08051054: .4byte 0x0016004A
_08051058: .4byte 0x0016004B
_0805105C: .4byte 0x0016004C
_08051060: .4byte 0x0016004D
_08051064: .4byte 0x0016004E
_08051068: .4byte 0x0016004F
_0805106C:
	bl sub_08040FE8
	movs r0, #2
	bl sub_08041018
	ldr r0, _08051130 @ =0x00160050
	bl sub_08041058
	ldr r0, _08051134 @ =0x00160051
	bl sub_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #4
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _08051138 @ =0x00160052
	bl sub_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #4
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _0805113C @ =0x00160053
	bl sub_08041058
	ldr r0, _08051140 @ =0x00160054
	bl sub_08041058
	movs r0, #3
	movs r1, #0
	movs r2, #8
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #5
	movs r1, #0
	movs r2, #8
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _08051144 @ =0x00160055
	bl sub_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #4
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _08051148 @ =0x00160056
	bl sub_08041058
	movs r0, #0x55
	bl sub_080406FC
	movs r0, #0x56
	bl sub_080406FC
	movs r0, #0x57
	bl sub_080406FC
	movs r0, #0x58
	bl sub_080406D0
_0805112A:
	pop {r0}
	bx r0
	.align 2, 0
_08051130: .4byte 0x00160050
_08051134: .4byte 0x00160051
_08051138: .4byte 0x00160052
_0805113C: .4byte 0x00160053
_08051140: .4byte 0x00160054
_08051144: .4byte 0x00160055
_08051148: .4byte 0x00160056

	thumb_func_start sub_0805114C
sub_0805114C: @ 0x0805114C
	push {lr}
	bl sub_080407FC
	bl sub_08040FE8
	movs r0, #2
	bl sub_08041018
	ldr r0, _0805118C @ =0x00160057
	bl sub_08041058
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _08051190 @ =0x00160058
	bl sub_08041058
	movs r0, #2
	bl sub_08041018
	ldr r0, _08051194 @ =0x00160059
	bl sub_08041058
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _08051198 @ =0x0016005A
	bl sub_08041058
	pop {r0}
	bx r0
	.align 2, 0
_0805118C: .4byte 0x00160057
_08051190: .4byte 0x00160058
_08051194: .4byte 0x00160059
_08051198: .4byte 0x0016005A

	thumb_func_start sub_0805119C
sub_0805119C: @ 0x0805119C
	push {lr}
	bl sub_080405B8
	ldr r0, _080512C4 @ =0x0808E254
	bl sub_0804115C
	movs r1, #0x80
	lsls r1, r1, #0xb
	movs r0, #0
	movs r2, #0
	bl sub_080412A0
	ldr r0, _080512C8 @ =0x0808E62C
	movs r1, #0x78
	movs r2, #0x68
	bl sub_080414B4
	ldr r2, _080512CC @ =0x0808E7BC
	movs r0, #2
	movs r1, #0
	bl sub_080415A0
	movs r0, #2
	movs r1, #0
	bl sub_08041734
	movs r0, #2
	movs r1, #3
	bl sub_08041864
	movs r0, #2
	movs r1, #0x9c
	movs r2, #0x68
	bl sub_08041894
	ldr r2, _080512D0 @ =0x0808E7CC
	movs r0, #4
	movs r1, #0
	bl sub_080415A0
	movs r0, #4
	movs r1, #0
	bl sub_08041734
	movs r0, #4
	movs r1, #3
	bl sub_08041864
	movs r0, #4
	movs r1, #0x9c
	movs r2, #0x68
	bl sub_08041894
	ldr r2, _080512D4 @ =0x0808E70C
	movs r0, #3
	movs r1, #0
	bl sub_080415A0
	movs r0, #3
	movs r1, #0
	bl sub_08041734
	movs r0, #3
	movs r1, #3
	bl sub_08041864
	movs r0, #3
	movs r1, #0x60
	movs r2, #0x68
	bl sub_08041894
	ldr r2, _080512D8 @ =0x0808E72C
	movs r0, #5
	movs r1, #0
	bl sub_080415A0
	movs r0, #5
	movs r1, #0
	bl sub_08041734
	movs r0, #5
	movs r1, #3
	bl sub_08041864
	movs r0, #5
	movs r1, #0x60
	movs r2, #0x68
	bl sub_08041894
	movs r0, #3
	movs r1, #0
	movs r2, #0xd
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #5
	movs r1, #0
	movs r2, #0xd
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #2
	movs r1, #0
	movs r2, #9
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #4
	movs r1, #0
	movs r2, #9
	movs r3, #0xff
	bl sub_080418C8
	ldr r2, _080512DC @ =0x0808EA6C
	movs r0, #0
	movs r1, #0
	bl sub_080415A0
	movs r0, #0
	movs r1, #0
	bl sub_08041734
	movs r0, #0
	movs r1, #0
	movs r2, #0x48
	bl sub_08041894
	movs r0, #0
	movs r1, #2
	bl sub_08041864
	ldr r0, _080512E0 @ =0x0000012F
	bl sub_080410E0
	movs r0, #0x58
	bl sub_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080512E8
	movs r0, #0x1b
	bl sub_080410A8
	ldr r0, _080512E4 @ =sub_0805114C
	bl sub_0804066C
	b _080513A2
	.align 2, 0
_080512C4: .4byte 0x0808E254
_080512C8: .4byte 0x0808E62C
_080512CC: .4byte 0x0808E7BC
_080512D0: .4byte 0x0808E7CC
_080512D4: .4byte 0x0808E70C
_080512D8: .4byte 0x0808E72C
_080512DC: .4byte 0x0808EA6C
_080512E0: .4byte 0x0000012F
_080512E4: .4byte sub_0805114C
_080512E8:
	bl sub_08040B0C
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08051346
	movs r0, #0x1b
	bl sub_080410A8
	ldr r0, _08051324 @ =sub_080506E4
	bl sub_0804066C
	movs r0, #0x55
	bl sub_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080513A2
	ldr r0, _08051328 @ =sub_08050AAC
	bl sub_0804066C
	movs r0, #0x56
	bl sub_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0805132C
	movs r0, #0x6d
	bl sub_08040B34
	b _080513A2
	.align 2, 0
_08051324: .4byte sub_080506E4
_08051328: .4byte sub_08050AAC
_0805132C:
	movs r0, #0x55
	bl sub_080406FC
	movs r0, #0x56
	bl sub_080406FC
	movs r0, #0x57
	bl sub_080406FC
	movs r0, #0x58
	bl sub_080406D0
	b _080513A2
_08051346:
	movs r0, #3
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #5
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #4
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	bl sub_080407FC
	movs r0, #0x13
	bl sub_08040A6C
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	beq _08051392
	cmp r0, #1
	ble _080513A2
	cmp r0, #2
	beq _08051398
	b _080513A2
_08051392:
	movs r0, #0x57
	bl sub_080406E4
_08051398:
	ldr r0, _08051404 @ =sub_08050EBC
	bl sub_0804066C
	bl sub_08040B28
_080513A2:
	bl sub_080410D0
	bl sub_08041008
	bl sub_08040820
	movs r0, #2
	bl sub_080417E0
	movs r0, #2
	movs r1, #0
	bl sub_08041684
	movs r0, #4
	bl sub_080417E0
	movs r0, #4
	movs r1, #0
	bl sub_08041684
	movs r0, #3
	bl sub_080417E0
	movs r0, #3
	movs r1, #0
	bl sub_08041684
	movs r0, #5
	bl sub_080417E0
	movs r0, #5
	movs r1, #0
	bl sub_08041684
	movs r0, #0
	bl sub_080417E0
	movs r0, #0
	movs r1, #0
	bl sub_08041684
	bl sub_08041560
	bl sub_08041310
	bl sub_0804062C
	pop {r0}
	bx r0
	.align 2, 0
_08051404: .4byte sub_08050EBC

	thumb_func_start sub_08051408
sub_08051408: @ 0x08051408
	push {lr}
	movs r0, #2
	movs r1, #0xc0
	movs r2, #0
	bl sub_08041894
	bl sub_080407FC
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #2
	bl sub_080418C8
	movs r0, #0x50
	bl sub_08040690
	movs r0, #0
	movs r1, #0
	movs r2, #4
	movs r3, #0xff
	bl sub_080418C8
	bl sub_08040FE8
	movs r0, #0x1d
	bl sub_08041018
	movs r0, #0xc0
	lsls r0, r0, #0xa
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #4
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _08051480 @ =0x00030001
	bl sub_08041058
	ldr r0, _08051484 @ =0x00030002
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0805148C
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _08051488 @ =0x00030003
	bl sub_08041058
	b _080517C4
	.align 2, 0
_08051480: .4byte 0x00030001
_08051484: .4byte 0x00030002
_08051488: .4byte 0x00030003
_0805148C:
	ldr r1, _080516E0 @ =0x00030004
	movs r0, #2
	bl sub_080408C4
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805149C
	b _080517C4
_0805149C:
	movs r0, #0x10
	bl sub_080410A8
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	bl sub_08040FE8
	movs r0, #0x1d
	bl sub_08041018
	ldr r0, _080516E4 @ =0x00030005
	bl sub_08041058
	movs r0, #0x36
	bl sub_08041018
	ldr r0, _080516E8 @ =0x00030006
	bl sub_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	movs r1, #0xc0
	movs r2, #0x2c
	movs r3, #0x5a
	bl sub_08041938
	movs r0, #0x3c
	bl sub_08040690
	movs r0, #2
	movs r1, #0xc0
	movs r2, #0x58
	movs r3, #0x5a
	bl sub_08041938
	movs r0, #2
	movs r1, #0
	movs r2, #7
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #2
	movs r1, #0xa0
	movs r2, #0x58
	movs r3, #0x78
	bl sub_08041938
	movs r0, #2
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl sub_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #2
	movs r3, #0
	bl sub_080418C8
	movs r0, #0x1d
	bl sub_08041018
	ldr r0, _080516EC @ =0x00030007
	bl sub_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #0xc
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0x36
	bl sub_08041018
	ldr r0, _080516F0 @ =0x00030008
	bl sub_08041058
	ldr r0, _080516F4 @ =0x00030009
	bl sub_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl sub_080418C8
	movs r0, #0x1d
	bl sub_08041018
	ldr r0, _080516F8 @ =0x0003000A
	bl sub_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #0xe
	movs r3, #0
	bl sub_080418C8
	movs r0, #0x36
	bl sub_08041018
	ldr r0, _080516FC @ =0x0003000B
	bl sub_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl sub_080418C8
	movs r0, #0x1d
	bl sub_08041018
	ldr r0, _08051700 @ =0x0003000C
	bl sub_08041058
	ldr r0, _08051704 @ =0x0003000D
	bl sub_08041058
	ldr r0, _08051708 @ =0x0003000E
	bl sub_08041058
	ldr r0, _0805170C @ =0x0808E63C
	movs r1, #0x78
	movs r2, #0x40
	bl sub_080414B4
	movs r0, #0
	movs r1, #0
	movs r2, #6
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _08051710 @ =0x0003000F
	bl sub_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #7
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #2
	movs r1, #0x98
	movs r2, #0x58
	movs r3, #0x3c
	bl sub_08041938
	movs r0, #0
	movs r1, #0
	movs r2, #2
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	movs r1, #0x90
	movs r2, #0x58
	movs r3, #0x3c
	bl sub_08041938
	bl sub_08041560
	movs r0, #2
	movs r1, #0
	movs r2, #0xd
	movs r3, #0
	bl sub_080418C8
	movs r0, #0x36
	bl sub_08041018
	ldr r0, _08051714 @ =0x00030010
	bl sub_08041058
	bl sub_08041008
	movs r0, #3
	movs r1, #0x94
	movs r2, #0x30
	bl sub_08041894
	movs r0, #3
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl sub_080418C8
	movs r0, #3
	movs r1, #1
	bl sub_08041808
	movs r0, #0xf0
	bl sub_08040690
	movs r0, #3
	movs r1, #0
	bl sub_08041808
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	bl sub_08040FE8
	movs r0, #0x36
	bl sub_08041018
	ldr r0, _08051718 @ =0x00030011
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #6
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0x1d
	bl sub_08041018
	ldr r0, _0805171C @ =0x00030012
	bl sub_08041058
	ldr r0, _08051720 @ =0x00030013
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #2
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl sub_080418C8
	movs r0, #0x36
	bl sub_08041018
	ldr r0, _08051724 @ =0x00030014
	bl sub_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	bl sub_080408B8
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r0, #8
	bl sub_08005BE0
	ldr r0, _08051728 @ =0x00030015
	bl sub_08041058
	ldr r0, _0805172C @ =0x00030016
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08051734
	movs r0, #2
	movs r1, #0
	movs r2, #0xc
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _08051730 @ =0x00030017
	bl sub_08041058
	b _08051746
	.align 2, 0
_080516E0: .4byte 0x00030004
_080516E4: .4byte 0x00030005
_080516E8: .4byte 0x00030006
_080516EC: .4byte 0x00030007
_080516F0: .4byte 0x00030008
_080516F4: .4byte 0x00030009
_080516F8: .4byte 0x0003000A
_080516FC: .4byte 0x0003000B
_08051700: .4byte 0x0003000C
_08051704: .4byte 0x0003000D
_08051708: .4byte 0x0003000E
_0805170C: .4byte 0x0808E63C
_08051710: .4byte 0x0003000F
_08051714: .4byte 0x00030010
_08051718: .4byte 0x00030011
_0805171C: .4byte 0x00030012
_08051720: .4byte 0x00030013
_08051724: .4byte 0x00030014
_08051728: .4byte 0x00030015
_0805172C: .4byte 0x00030016
_08051730: .4byte 0x00030017
_08051734:
	movs r0, #2
	movs r1, #0
	movs r2, #0xc
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _080517C8 @ =0x00030020
	bl sub_08041058
_08051746:
	ldr r0, _080517CC @ =0x00030018
	bl sub_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	ldr r0, _080517D0 @ =0x00030019
	bl sub_08041058
	ldr r0, _080517D4 @ =0x0003001A
	bl sub_08041058
	ldr r0, _080517D8 @ =0x0003001B
	bl sub_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #0xd
	movs r3, #0
	bl sub_080418C8
	ldr r0, _080517DC @ =0x0003001C
	bl sub_08041058
	ldr r0, _080517E0 @ =0x0003001D
	bl sub_0804106C
	movs r0, #2
	movs r1, #0
	movs r2, #0xc
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _080517E4 @ =0x0003001E
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #0x1d
	bl sub_08041018
	ldr r0, _080517E8 @ =0x0003001F
	bl sub_08041058
	movs r0, #0xb
	bl sub_080406E4
	movs r0, #7
	bl sub_0802D7CC
	movs r0, #4
	bl sub_0802D7CC
	movs r0, #0x32
	bl sub_0802D7CC
_080517C4:
	pop {r0}
	bx r0
	.align 2, 0
_080517C8: .4byte 0x00030020
_080517CC: .4byte 0x00030018
_080517D0: .4byte 0x00030019
_080517D4: .4byte 0x0003001A
_080517D8: .4byte 0x0003001B
_080517DC: .4byte 0x0003001C
_080517E0: .4byte 0x0003001D
_080517E4: .4byte 0x0003001E
_080517E8: .4byte 0x0003001F

	thumb_func_start sub_080517EC
sub_080517EC: @ 0x080517EC
	push {lr}
	movs r0, #2
	movs r1, #0x90
	movs r2, #0x58
	bl sub_08041894
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	bl sub_080407FC
	bl sub_08040FE8
	movs r0, #0x36
	bl sub_08041018
	ldr r0, _08051884 @ =0x00030021
	bl sub_08041058
	ldr r0, _08051888 @ =0x00030022
	bl sub_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #0xd
	movs r3, #0
	bl sub_080418C8
	ldr r0, _0805188C @ =0x0003001C
	bl sub_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	ldr r0, _08051890 @ =0x0003001D
	bl sub_0804106C
	movs r0, #0x1d
	bl sub_08041018
	ldr r0, _08051894 @ =0x00030023
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #2
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	movs r1, #0
	movs r2, #0xe
	movs r3, #0
	bl sub_080418C8
	movs r0, #0x36
	bl sub_08041018
	ldr r0, _08051898 @ =0x0003000B
	bl sub_08041058
	pop {r0}
	bx r0
	.align 2, 0
_08051884: .4byte 0x00030021
_08051888: .4byte 0x00030022
_0805188C: .4byte 0x0003001C
_08051890: .4byte 0x0003001D
_08051894: .4byte 0x00030023
_08051898: .4byte 0x0003000B

	thumb_func_start sub_0805189C
sub_0805189C: @ 0x0805189C
	push {lr}
	movs r0, #2
	movs r1, #0
	movs r2, #0
	bl sub_08041894
	movs r0, #0
	movs r1, #0x60
	movs r2, #0x58
	bl sub_08041894
	movs r0, #1
	movs r1, #0x88
	movs r2, #0x58
	bl sub_08041894
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #1
	bl sub_080418C8
	bl sub_080407FC
	bl sub_08040FE8
	movs r0, #0x1d
	bl sub_08041018
	ldr r0, _08051930 @ =0x00030031
	bl sub_08041058
	ldr r0, _08051934 @ =0x00030032
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #3
	movs r3, #1
	bl sub_080418C8
	ldr r0, _08051938 @ =0x00030033
	bl sub_08041058
	ldr r0, _0805193C @ =0x00030034
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _08051940 @ =0x00030035
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0x78
	bl sub_08040690
	pop {r0}
	bx r0
	.align 2, 0
_08051930: .4byte 0x00030031
_08051934: .4byte 0x00030032
_08051938: .4byte 0x00030033
_0805193C: .4byte 0x00030034
_08051940: .4byte 0x00030035

	thumb_func_start sub_08051944
sub_08051944: @ 0x08051944
	push {r4, lr}
	bl sub_080405B8
	ldr r0, _080519D4 @ =0x0808E27C
	bl sub_0804115C
	ldr r4, _080519D8 @ =0x0808E8EC
	movs r0, #0
	movs r1, #0
	adds r2, r4, #0
	bl sub_080415A0
	movs r0, #0
	movs r1, #0
	bl sub_08041734
	movs r0, #0
	movs r1, #0x78
	movs r2, #0x58
	bl sub_08041894
	movs r0, #1
	movs r1, #0
	adds r2, r4, #0
	bl sub_080415A0
	movs r0, #1
	movs r1, #0
	bl sub_08041734
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl sub_08041894
	ldr r2, _080519DC @ =0x0808EA4C
	movs r0, #2
	movs r1, #0
	bl sub_080415A0
	movs r0, #2
	movs r1, #0
	bl sub_08041734
	ldr r2, _080519E0 @ =0x0808E6BC
	movs r0, #3
	movs r1, #0
	bl sub_080415A0
	movs r0, #3
	movs r1, #0
	bl sub_08041734
	movs r0, #3
	movs r1, #0
	bl sub_08041808
	movs r0, #0xd
	bl sub_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080519E8
	movs r0, #0x1d
	bl sub_080410A8
	ldr r0, _080519E4 @ =sub_0805189C
	bl sub_0804066C
	b _08051A14
	.align 2, 0
_080519D4: .4byte 0x0808E27C
_080519D8: .4byte 0x0808E8EC
_080519DC: .4byte 0x0808EA4C
_080519E0: .4byte 0x0808E6BC
_080519E4: .4byte sub_0805189C
_080519E8:
	movs r0, #0xb
	bl sub_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08051A08
	movs r0, #0x1d
	bl sub_080410A8
	ldr r0, _08051A04 @ =sub_08051408
	bl sub_0804066C
	b _08051A14
	.align 2, 0
_08051A04: .4byte sub_08051408
_08051A08:
	movs r0, #0x10
	bl sub_080410A8
	ldr r0, _08051A64 @ =sub_080517EC
	bl sub_0804066C
_08051A14:
	bl sub_080410D0
	bl sub_08041008
	bl sub_08040820
	movs r0, #0
	bl sub_080417E0
	movs r0, #0
	movs r1, #0
	bl sub_08041684
	movs r0, #1
	bl sub_080417E0
	movs r0, #1
	movs r1, #0
	bl sub_08041684
	movs r0, #2
	bl sub_080417E0
	movs r0, #2
	movs r1, #0
	bl sub_08041684
	movs r0, #3
	bl sub_080417E0
	movs r0, #3
	movs r1, #0
	bl sub_08041684
	bl sub_0804062C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08051A64: .4byte sub_080517EC

	thumb_func_start sub_08051A68
sub_08051A68: @ 0x08051A68
	push {lr}
	movs r0, #0
	movs r1, #0
	movs r2, #8
	movs r3, #0
	bl sub_080418C8
	movs r0, #0x1e
	bl sub_08040690
	movs r0, #0
	movs r1, #0
	movs r2, #9
	movs r3, #0
	bl sub_080418C8
	movs r0, #0
	movs r1, #0x78
	movs r2, #0x64
	movs r3, #2
	bl sub_08041938
	movs r0, #2
	bl sub_08040690
	movs r0, #0
	movs r1, #0
	movs r2, #0xa
	movs r3, #0
	bl sub_080418C8
	movs r0, #0
	movs r1, #0x78
	movs r2, #0x60
	movs r3, #2
	bl sub_08041938
	movs r0, #2
	bl sub_08040690
	movs r0, #0
	movs r1, #0
	movs r2, #0xb
	movs r3, #0
	bl sub_080418C8
	movs r0, #0
	movs r1, #0x78
	movs r2, #0x5c
	movs r3, #2
	bl sub_08041938
	movs r0, #2
	bl sub_08040690
	movs r0, #0
	movs r1, #0
	movs r2, #0xc
	movs r3, #0
	bl sub_080418C8
	movs r0, #0
	movs r1, #0x78
	movs r2, #0x58
	movs r3, #2
	bl sub_08041938
	movs r0, #2
	bl sub_08040690
	movs r0, #0
	movs r1, #0
	movs r2, #0xd
	movs r3, #0
	bl sub_080418C8
	movs r0, #0
	movs r1, #0x78
	movs r2, #0x5c
	movs r3, #2
	bl sub_08041938
	movs r0, #2
	bl sub_08040690
	movs r0, #0
	movs r1, #0
	movs r2, #0xe
	movs r3, #0
	bl sub_080418C8
	movs r0, #0
	movs r1, #0x78
	movs r2, #0x60
	movs r3, #2
	bl sub_08041938
	movs r0, #2
	bl sub_08040690
	movs r0, #0
	movs r1, #0
	movs r2, #0xf
	movs r3, #0
	bl sub_080418C8
	movs r0, #0
	movs r1, #0x78
	movs r2, #0x64
	movs r3, #2
	bl sub_08041938
	movs r0, #2
	bl sub_08040690
	movs r0, #0
	movs r1, #0
	movs r2, #8
	movs r3, #0
	bl sub_080418C8
	movs r0, #0
	movs r1, #0x78
	movs r2, #0x68
	movs r3, #2
	bl sub_08041938
	movs r0, #0x1e
	bl sub_08040690
	pop {r0}
	bx r0

	thumb_func_start sub_08051B70
sub_08051B70: @ 0x08051B70
	push {lr}
	bl sub_08051A68
	bl sub_08051A68
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #1
	movs r1, #1
	bl sub_08041808
	ldr r0, _08051BDC @ =0x0000011F
	bl sub_080410E0
	movs r0, #0x3c
	bl sub_08040690
	movs r0, #1
	movs r1, #0
	bl sub_08041808
	bl sub_08040FE8
	movs r0, #0x1e
	bl sub_08041018
	movs r0, #0xd0
	lsls r0, r0, #0xc
	bl sub_08041058
	ldr r0, _08051BE0 @ =0x000D0001
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	bne _08051BE8
	ldr r0, _08051BE4 @ =0x000D0002
	bl sub_08041058
	b _08051CCC
	.align 2, 0
_08051BDC: .4byte 0x0000011F
_08051BE0: .4byte 0x000D0001
_08051BE4: .4byte 0x000D0002
_08051BE8:
	ldr r1, _08051C60 @ =0x000D0003
	movs r0, #0xc
	bl sub_080408C4
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08051CCC
	movs r0, #0x12
	bl sub_080410A8
	bl sub_08040FE8
	movs r0, #0x1e
	bl sub_08041018
	ldr r0, _08051C64 @ =0x000D0004
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0x10
	movs r3, #0
	bl sub_080418C8
	ldr r0, _08051C68 @ =0x000D0005
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0x11
	movs r3, #0
	bl sub_080418C8
	ldr r0, _08051C6C @ =0x000D0006
	bl sub_08041058
	ldr r0, _08051C70 @ =0x000D0007
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08051C78
	movs r0, #0
	movs r1, #0
	movs r2, #0x12
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _08051C74 @ =0x000D0008
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	b _08051C84
	.align 2, 0
_08051C60: .4byte 0x000D0003
_08051C64: .4byte 0x000D0004
_08051C68: .4byte 0x000D0005
_08051C6C: .4byte 0x000D0006
_08051C70: .4byte 0x000D0007
_08051C74: .4byte 0x000D0008
_08051C78:
	ldr r0, _08051CD0 @ =0x000D000C
	bl sub_08041058
	ldr r0, _08051CD4 @ =0x000D000D
	bl sub_08041058
_08051C84:
	movs r0, #0
	movs r1, #0
	movs r2, #0x10
	movs r3, #0
	bl sub_080418C8
	ldr r0, _08051CD8 @ =0x000D0009
	bl sub_08041058
	ldr r0, _08051CDC @ =0x000D000A
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0x11
	movs r3, #0
	bl sub_080418C8
	ldr r0, _08051CE0 @ =0x000D000B
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0x10
	movs r3, #0
	bl sub_080418C8
	movs r0, #0x1e
	bl sub_08040690
	movs r0, #0x32
	bl sub_080406E4
	movs r0, #0x20
	bl sub_0802D7CC
_08051CCC:
	pop {r0}
	bx r0
	.align 2, 0
_08051CD0: .4byte 0x000D000C
_08051CD4: .4byte 0x000D000D
_08051CD8: .4byte 0x000D0009
_08051CDC: .4byte 0x000D000A
_08051CE0: .4byte 0x000D000B

	thumb_func_start sub_08051CE4
sub_08051CE4: @ 0x08051CE4
	push {lr}
	bl sub_08040FE8
	movs r0, #0x1e
	bl sub_08041018
	movs r0, #0x33
	bl sub_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08051D6C
	movs r0, #0
	movs r1, #0
	movs r2, #0x12
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _08051D5C @ =0x000D000E
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	ldr r0, _08051D60 @ =0x000D000F
	bl sub_08041058
	movs r0, #0x31
	movs r1, #0x12
	bl sub_08042814
	movs r0, #0x1e
	bl sub_08041018
	movs r0, #0
	movs r1, #0
	movs r2, #0x12
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _08051D64 @ =0x000D0010
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0x10
	movs r3, #0
	bl sub_080418C8
	ldr r0, _08051D68 @ =0x000D0011
	bl sub_08041058
	movs r0, #0x35
	bl sub_080406BC
	b _08051DAE
	.align 2, 0
_08051D5C: .4byte 0x000D000E
_08051D60: .4byte 0x000D000F
_08051D64: .4byte 0x000D0010
_08051D68: .4byte 0x000D0011
_08051D6C:
	ldr r0, _08051DB4 @ =0x000D0012
	bl sub_08041058
	ldr r0, _08051DB8 @ =0x000D0013
	bl sub_08041058
	ldr r0, _08051DBC @ =0x000D0014
	bl sub_08041058
	ldr r0, _08051DC0 @ =0x000D0015
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0x10
	movs r3, #0
	bl sub_080418C8
	ldr r0, _08051DC4 @ =0x000D0016
	bl sub_08041058
	movs r0, #0x32
	bl sub_080406FC
	movs r0, #0x33
	bl sub_080406FC
	movs r0, #0x34
	bl sub_080406FC
	movs r0, #0x35
	bl sub_080406D0
_08051DAE:
	pop {r0}
	bx r0
	.align 2, 0
_08051DB4: .4byte 0x000D0012
_08051DB8: .4byte 0x000D0013
_08051DBC: .4byte 0x000D0014
_08051DC0: .4byte 0x000D0015
_08051DC4: .4byte 0x000D0016

	thumb_func_start sub_08051DC8
sub_08051DC8: @ 0x08051DC8
	push {lr}
	bl sub_08051A68
	bl sub_08051A68
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #0x1e
	bl sub_08040690
	bl sub_08040FE8
	movs r0, #0x1e
	bl sub_08041018
	ldr r0, _08051E10 @ =0x000D0017
	bl sub_08041058
	ldr r0, _08051E14 @ =0x000D0018
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0x12
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _08051E18 @ =0x000D0019
	bl sub_08041058
	pop {r0}
	bx r0
	.align 2, 0
_08051E10: .4byte 0x000D0017
_08051E14: .4byte 0x000D0018
_08051E18: .4byte 0x000D0019

	thumb_func_start sub_08051E1C
sub_08051E1C: @ 0x08051E1C
	push {r4, lr}
	bl sub_080405B8
	ldr r0, _08051EDC @ =0x0808E2A4
	bl sub_0804115C
	ldr r4, _08051EE0 @ =0x0808E8FC
	movs r0, #0
	movs r1, #0
	adds r2, r4, #0
	bl sub_080415A0
	movs r0, #0
	movs r1, #0
	bl sub_08041734
	movs r0, #0
	movs r1, #0x78
	movs r2, #0x68
	bl sub_08041894
	ldr r2, _08051EE4 @ =0x0808E6BC
	movs r0, #1
	movs r1, #0
	bl sub_080415A0
	movs r0, #1
	movs r1, #0
	bl sub_08041734
	movs r0, #1
	movs r1, #0x7c
	movs r2, #0x44
	bl sub_08041894
	movs r0, #1
	movs r1, #0
	bl sub_08041808
	movs r0, #2
	movs r1, #0
	adds r2, r4, #0
	bl sub_080415A0
	movs r0, #2
	movs r1, #0
	bl sub_08041734
	movs r0, #2
	movs r1, #0x40
	movs r2, #0x68
	bl sub_08041894
	movs r0, #2
	movs r1, #0
	movs r2, #0x13
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #3
	movs r1, #0
	adds r2, r4, #0
	bl sub_080415A0
	movs r0, #3
	movs r1, #0
	bl sub_08041734
	movs r0, #3
	movs r1, #0xb0
	movs r2, #0x68
	bl sub_08041894
	movs r0, #3
	movs r1, #0
	movs r2, #0x13
	movs r3, #0xff
	bl sub_080418C8
	bl sub_080407FC
	movs r0, #0x35
	bl sub_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08051EEC
	movs r0, #0x1d
	bl sub_080410A8
	ldr r0, _08051EE8 @ =sub_08051DC8
	bl sub_0804066C
	b _08051F3E
	.align 2, 0
_08051EDC: .4byte 0x0808E2A4
_08051EE0: .4byte 0x0808E8FC
_08051EE4: .4byte 0x0808E6BC
_08051EE8: .4byte sub_08051DC8
_08051EEC:
	bl sub_08040EF0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08051F1C
	movs r0, #0x1d
	bl sub_080410A8
	ldr r0, _08051F18 @ =sub_08051B70
	bl sub_0804066C
	movs r0, #0x32
	bl sub_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08051F3E
	movs r0, #2
	bl sub_08040F18
	b _08051F3E
	.align 2, 0
_08051F18: .4byte sub_08051B70
_08051F1C:
	movs r0, #0x12
	bl sub_080410A8
	bl sub_08040F38
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08051F34
	movs r0, #0x33
	bl sub_080406E4
_08051F34:
	ldr r0, _08051F8C @ =sub_08051CE4
	bl sub_0804066C
	bl sub_08040F0C
_08051F3E:
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
	movs r0, #3
	bl sub_080417E0
	movs r0, #3
	movs r1, #0
	bl sub_08041684
	movs r0, #1
	bl sub_080417E0
	movs r0, #1
	movs r1, #0
	bl sub_08041684
	bl sub_0804062C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08051F8C: .4byte sub_08051CE4

	thumb_func_start sub_08051F90
sub_08051F90: @ 0x08051F90
	push {lr}
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #1
	bl sub_080418C8
	movs r0, #0x30
	bl sub_08040690
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	bl sub_08040FE8
	movs r0, #0x2f
	bl sub_08041018
	movs r0, #0x84
	lsls r0, r0, #0xe
	bl sub_08041058
	ldr r0, _08051FE0 @ =0x00210001
	bl sub_08041058
	ldr r0, _08051FE4 @ =0x00210002
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08051FEC
	ldr r0, _08051FE8 @ =0x00210003
	bl sub_08041058
	b _0805210E
	.align 2, 0
_08051FE0: .4byte 0x00210001
_08051FE4: .4byte 0x00210002
_08051FE8: .4byte 0x00210003
_08051FEC:
	ldr r1, _08052084 @ =0x00210004
	movs r0, #0x20
	bl sub_080408C4
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08051FFC
	b _0805210E
_08051FFC:
	movs r0, #0x16
	bl sub_080410A8
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #1
	bl sub_080418C8
	movs r0, #0x30
	bl sub_08040690
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	bl sub_08040FE8
	movs r0, #0x2f
	bl sub_08041018
	ldr r0, _08052088 @ =0x00210005
	bl sub_08041058
	ldr r0, _0805208C @ =0x00210006
	bl sub_08041058
	ldr r0, _08052090 @ =0x00210007
	bl sub_08041058
	ldr r0, _08052094 @ =0x00210008
	bl sub_08041058
	ldr r0, _08052098 @ =0x00210009
	bl sub_08041058
	ldr r0, _0805209C @ =0x0021000A
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080520A8
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #1
	bl sub_080418C8
	movs r0, #0x30
	bl sub_08040690
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	ldr r0, _080520A0 @ =0x0021000B
	bl sub_08041058
	ldr r0, _080520A4 @ =0x0021000C
	bl sub_08041058
	b _080520E2
	.align 2, 0
_08052084: .4byte 0x00210004
_08052088: .4byte 0x00210005
_0805208C: .4byte 0x00210006
_08052090: .4byte 0x00210007
_08052094: .4byte 0x00210008
_08052098: .4byte 0x00210009
_0805209C: .4byte 0x0021000A
_080520A0: .4byte 0x0021000B
_080520A4: .4byte 0x0021000C
_080520A8:
	movs r0, #0x1e
	bl sub_08040690
	movs r0, #1
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #1
	movs r1, #1
	bl sub_08041808
	ldr r0, _08052114 @ =0x00000121
	bl sub_080410E0
	movs r0, #0x78
	bl sub_08040690
	movs r0, #1
	movs r1, #0
	bl sub_08041808
	ldr r0, _08052118 @ =0x00210010
	bl sub_08041058
	ldr r0, _0805211C @ =0x00210011
	bl sub_08041058
_080520E2:
	ldr r0, _08052120 @ =0x0021000D
	bl sub_08041058
	ldr r0, _08052124 @ =0x0021000E
	bl sub_08041058
	ldr r1, _08052128 @ =0x00460031
	movs r0, #0x78
	bl sub_080427E0
	movs r0, #0x2f
	bl sub_08041018
	ldr r0, _0805212C @ =0x0021000F
	bl sub_08041058
	movs r0, #0x81
	bl sub_080406E4
	movs r0, #0x25
	bl sub_0802D7CC
_0805210E:
	pop {r0}
	bx r0
	.align 2, 0
_08052114: .4byte 0x00000121
_08052118: .4byte 0x00210010
_0805211C: .4byte 0x00210011
_08052120: .4byte 0x0021000D
_08052124: .4byte 0x0021000E
_08052128: .4byte 0x00460031
_0805212C: .4byte 0x0021000F

	thumb_func_start sub_08052130
sub_08052130: @ 0x08052130
	push {lr}
	movs r0, #0x82
	bl sub_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080521D4
	movs r0, #0x68
	bl sub_08041100
	bl sub_08041138
	movs r0, #0x16
	bl sub_080410A8
	bl sub_08040FE8
	movs r0, #0x2f
	bl sub_08041018
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _080521B8 @ =0x00210012
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #2
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _080521BC @ =0x00210013
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	ldr r0, _080521C0 @ =0x00210014
	bl sub_08041058
	ldr r0, _080521C4 @ =0x00210015
	bl sub_08041058
	ldr r0, _080521C8 @ =0x00210016
	bl sub_08041058
	ldr r0, _080521CC @ =0x00210017
	bl sub_08041058
	ldr r0, _080521D0 @ =0x00210018
	bl sub_08041058
	movs r0, #0x78
	bl sub_08040B84
	movs r0, #0x83
	bl sub_080406BC
	b _0805223E
	.align 2, 0
_080521B8: .4byte 0x00210012
_080521BC: .4byte 0x00210013
_080521C0: .4byte 0x00210014
_080521C4: .4byte 0x00210015
_080521C8: .4byte 0x00210016
_080521CC: .4byte 0x00210017
_080521D0: .4byte 0x00210018
_080521D4:
	movs r0, #0x1e
	bl sub_08040690
	movs r0, #1
	movs r1, #0
	movs r2, #8
	movs r3, #0
	bl sub_080418C8
	movs r0, #1
	movs r1, #1
	bl sub_08041808
	movs r0, #0x14
	bl sub_08040690
	movs r0, #0x92
	lsls r0, r0, #1
	bl sub_080410E0
	movs r0, #0x3c
	bl sub_08040690
	movs r0, #1
	movs r1, #0
	bl sub_08041808
	bl sub_08040FE8
	movs r0, #0x2f
	bl sub_08041018
	ldr r0, _08052244 @ =0x00210019
	bl sub_08041058
	ldr r0, _08052248 @ =0x0021001A
	bl sub_08041058
	ldr r0, _0805224C @ =0x0021001B
	bl sub_08041058
	ldr r0, _08052250 @ =0x0021001C
	bl sub_08041058
	movs r0, #0x81
	bl sub_080406FC
	movs r0, #0x82
	bl sub_080406FC
	movs r0, #0x83
	bl sub_080406D0
_0805223E:
	pop {r0}
	bx r0
	.align 2, 0
_08052244: .4byte 0x00210019
_08052248: .4byte 0x0021001A
_0805224C: .4byte 0x0021001B
_08052250: .4byte 0x0021001C

	thumb_func_start sub_08052254
sub_08052254: @ 0x08052254
	push {lr}
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #1
	bl sub_080418C8
	movs r0, #0x30
	bl sub_08040690
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	bl sub_08040FE8
	movs r0, #0x2f
	bl sub_08041018
	ldr r0, _080522A8 @ =0x0021001D
	bl sub_08041058
	ldr r0, _080522AC @ =0x0021001E
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #2
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _080522B0 @ =0x0021001F
	bl sub_08041058
	ldr r0, _080522B4 @ =0x00210020
	bl sub_08041058
	pop {r0}
	bx r0
	.align 2, 0
_080522A8: .4byte 0x0021001D
_080522AC: .4byte 0x0021001E
_080522B0: .4byte 0x0021001F
_080522B4: .4byte 0x00210020

	thumb_func_start sub_080522B8
sub_080522B8: @ 0x080522B8
	push {lr}
	bl sub_080405B8
	ldr r0, _08052324 @ =0x0808E2CC
	bl sub_0804115C
	ldr r2, _08052328 @ =0x0808E9FC
	movs r0, #0
	movs r1, #0
	bl sub_080415A0
	movs r0, #0
	movs r1, #0
	bl sub_08041734
	movs r0, #0
	movs r1, #0x78
	movs r2, #0x50
	bl sub_08041894
	ldr r2, _0805232C @ =0x0808E6BC
	movs r0, #1
	movs r1, #0
	bl sub_080415A0
	movs r0, #1
	movs r1, #0
	bl sub_08041734
	movs r0, #1
	movs r1, #0x7c
	movs r2, #0x30
	bl sub_08041894
	movs r0, #1
	movs r1, #0
	bl sub_08041808
	bl sub_080407FC
	movs r0, #0x83
	bl sub_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08052334
	movs r0, #0x1d
	bl sub_080410A8
	ldr r0, _08052330 @ =sub_08052254
	bl sub_0804066C
	b _0805238C
	.align 2, 0
_08052324: .4byte 0x0808E2CC
_08052328: .4byte 0x0808E9FC
_0805232C: .4byte 0x0808E6BC
_08052330: .4byte sub_08052254
_08052334:
	bl sub_08040B0C
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08052364
	movs r0, #0x1d
	bl sub_080410A8
	ldr r0, _08052360 @ =sub_08051F90
	bl sub_0804066C
	movs r0, #0x81
	bl sub_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0805238C
	movs r0, #0x78
	bl sub_08040B34
	b _0805238C
	.align 2, 0
_08052360: .4byte sub_08051F90
_08052364:
	movs r0, #0x16
	bl sub_08040A6C
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	beq _0805237C
	cmp r0, #1
	ble _0805238C
	cmp r0, #2
	beq _08052382
	b _0805238C
_0805237C:
	movs r0, #0x82
	bl sub_080406E4
_08052382:
	ldr r0, _080523BC @ =sub_08052130
	bl sub_0804066C
	bl sub_08040B28
_0805238C:
	bl sub_080410D0
	bl sub_08041008
	bl sub_08040820
	movs r0, #0
	bl sub_080417E0
	movs r0, #0
	movs r1, #0
	bl sub_08041684
	movs r0, #1
	bl sub_080417E0
	movs r0, #1
	movs r1, #0
	bl sub_08041684
	bl sub_0804062C
	pop {r0}
	bx r0
	.align 2, 0
_080523BC: .4byte sub_08052130

	thumb_func_start sub_080523C0
sub_080523C0: @ 0x080523C0
	push {r4, lr}
	bl sub_08040FE8
	movs r0, #0x11
	bl sub_08041018
	movs r0, #1
	movs r1, #0x7c
	movs r2, #0x3c
	bl sub_08041894
	movs r0, #1
	movs r1, #0
	movs r2, #7
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #1
	movs r1, #1
	bl sub_08041808
	ldr r4, _080524A4 @ =0x00000123
	adds r0, r4, #0
	bl sub_080410E0
	movs r0, #0x80
	lsls r0, r0, #0xc
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	bl sub_08041808
	movs r0, #2
	movs r1, #0
	movs r2, #9
	movs r3, #0
	bl sub_080418C8
	movs r0, #4
	bl sub_08040690
	movs r0, #2
	movs r1, #0
	movs r2, #0xa
	movs r3, #0
	bl sub_080418C8
	movs r0, #4
	bl sub_08040690
	movs r0, #2
	movs r1, #0
	movs r2, #0xb
	movs r3, #0
	bl sub_080418C8
	movs r0, #4
	bl sub_08040690
	movs r0, #2
	movs r1, #0
	movs r2, #0xc
	movs r3, #0
	bl sub_080418C8
	movs r0, #4
	bl sub_08040690
	movs r0, #2
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl sub_080418C8
	ldr r0, _080524A8 @ =0x00080001
	bl sub_08041058
	ldr r0, _080524AC @ =0x00080002
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	bne _080524B4
	movs r0, #1
	movs r1, #0
	movs r2, #8
	movs r3, #0
	bl sub_080418C8
	movs r0, #1
	movs r1, #1
	bl sub_08041808
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #0x14
	bl sub_08040690
	movs r0, #0x92
	lsls r0, r0, #1
	bl sub_080410E0
	ldr r0, _080524B0 @ =0x00080003
	bl sub_08041058
	b _080525F2
	.align 2, 0
_080524A4: .4byte 0x00000123
_080524A8: .4byte 0x00080001
_080524AC: .4byte 0x00080002
_080524B0: .4byte 0x00080003
_080524B4:
	ldr r1, _08052564 @ =0x00080004
	movs r0, #7
	bl sub_080408C4
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080524C4
	b _080525F2
_080524C4:
	movs r0, #0x11
	bl sub_080410A8
	bl sub_08040FE8
	movs r0, #0x11
	bl sub_08041018
	movs r0, #2
	movs r1, #0
	movs r2, #0xd
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _08052568 @ =0x00080005
	bl sub_08041058
	movs r0, #0x90
	lsls r0, r0, #1
	bl sub_080410E0
	movs r0, #1
	movs r1, #0
	movs r2, #7
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #1
	movs r1, #1
	bl sub_08041808
	adds r0, r4, #0
	bl sub_080410E0
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	ldr r0, _0805256C @ =0x00080006
	bl sub_08041058
	ldr r0, _08052570 @ =0x00080007
	bl sub_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl sub_080418C8
	ldr r0, _08052574 @ =0x00080008
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	bl sub_08041808
	ldr r0, _08052578 @ =0x00080009
	bl sub_08041058
	ldr r0, _0805257C @ =0x0008000A
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08052584
	movs r0, #2
	movs r1, #0
	movs r2, #0xd
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _08052580 @ =0x0008000B
	bl sub_08041058
	b _0805259E
	.align 2, 0
_08052564: .4byte 0x00080004
_08052568: .4byte 0x00080005
_0805256C: .4byte 0x00080006
_08052570: .4byte 0x00080007
_08052574: .4byte 0x00080008
_08052578: .4byte 0x00080009
_0805257C: .4byte 0x0008000A
_08052580: .4byte 0x0008000B
_08052584:
	bl sub_08044B74
	bl sub_08044B74
	movs r0, #2
	movs r1, #0
	movs r2, #5
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _080525F8 @ =0x00080011
	bl sub_08041058
_0805259E:
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	ldr r0, _080525FC @ =0x0008000C
	bl sub_08041058
	ldr r0, _08052600 @ =0x0008000D
	bl sub_08041058
	ldr r0, _08052604 @ =0x0008000E
	bl sub_08041058
	ldr r0, _08052608 @ =0x0008000F
	bl sub_08041058
	ldr r0, _0805260C @ =0x0808E64C
	movs r1, #0x78
	movs r2, #0x48
	bl sub_080414B4
	movs r0, #0x94
	lsls r0, r0, #1
	bl sub_080410E0
	movs r0, #2
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl sub_080418C8
	ldr r0, _08052610 @ =0x00080010
	bl sub_08041058
	movs r0, #0x1e
	bl sub_080406E4
	movs r0, #0x26
	bl sub_0802D7CC
_080525F2:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080525F8: .4byte 0x00080011
_080525FC: .4byte 0x0008000C
_08052600: .4byte 0x0008000D
_08052604: .4byte 0x0008000E
_08052608: .4byte 0x0008000F
_0805260C: .4byte 0x0808E64C
_08052610: .4byte 0x00080010

	thumb_func_start sub_08052614
sub_08052614: @ 0x08052614
	push {lr}
	movs r0, #2
	movs r1, #0
	movs r2, #9
	movs r3, #0
	bl sub_080418C8
	movs r0, #4
	bl sub_08040690
	movs r0, #2
	movs r1, #0
	movs r2, #0xa
	movs r3, #0
	bl sub_080418C8
	movs r0, #4
	bl sub_08040690
	movs r0, #2
	movs r1, #0
	movs r2, #0xb
	movs r3, #0
	bl sub_080418C8
	movs r0, #4
	bl sub_08040690
	movs r0, #2
	movs r1, #0
	movs r2, #0xc
	movs r3, #0
	bl sub_080418C8
	movs r0, #4
	bl sub_08040690
	movs r0, #2
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl sub_080418C8
	bl sub_08040FE8
	movs r0, #0x11
	bl sub_08041018
	ldr r0, _0805268C @ =0x00080012
	bl sub_08041058
	ldr r0, _08052690 @ =0x0008000F
	bl sub_08041058
	ldr r0, _08052694 @ =0x00080013
	bl sub_08041058
	pop {r0}
	bx r0
	.align 2, 0
_0805268C: .4byte 0x00080012
_08052690: .4byte 0x0008000F
_08052694: .4byte 0x00080013

	thumb_func_start sub_08052698
sub_08052698: @ 0x08052698
	push {lr}
	movs r0, #2
	movs r1, #0
	movs r2, #9
	movs r3, #0
	bl sub_080418C8
	movs r0, #4
	bl sub_08040690
	movs r0, #2
	movs r1, #0
	movs r2, #0xa
	movs r3, #0
	bl sub_080418C8
	movs r0, #4
	bl sub_08040690
	movs r0, #2
	movs r1, #0
	movs r2, #0xb
	movs r3, #0
	bl sub_080418C8
	movs r0, #4
	bl sub_08040690
	movs r0, #2
	movs r1, #0
	movs r2, #0xc
	movs r3, #0
	bl sub_080418C8
	movs r0, #4
	bl sub_08040690
	movs r0, #2
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl sub_080418C8
	bl sub_08040FE8
	movs r0, #0x11
	bl sub_08041018
	ldr r0, _0805272C @ =0x0008002D
	bl sub_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	ldr r0, _08052730 @ =0x0008002E
	bl sub_08041058
	ldr r0, _08052734 @ =0x0008002F
	bl sub_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl sub_080418C8
	ldr r0, _08052738 @ =0x00080030
	bl sub_08041058
	pop {r0}
	bx r0
	.align 2, 0
_0805272C: .4byte 0x0008002D
_08052730: .4byte 0x0008002E
_08052734: .4byte 0x0008002F
_08052738: .4byte 0x00080030

	thumb_func_start sub_0805273C
sub_0805273C: @ 0x0805273C
	push {lr}
	bl sub_080405B8
	ldr r0, _080527A8 @ =0x0808E2F4
	bl sub_0804115C
	ldr r2, _080527AC @ =0x0808E6BC
	movs r0, #1
	movs r1, #0
	bl sub_080415A0
	movs r0, #1
	movs r1, #0
	bl sub_08041734
	movs r0, #1
	movs r1, #0
	bl sub_08041808
	ldr r2, _080527B0 @ =0x0808E83C
	movs r0, #2
	movs r1, #0
	bl sub_080415A0
	movs r0, #2
	movs r1, #0
	bl sub_08041734
	movs r0, #2
	movs r1, #0x78
	movs r2, #0x68
	bl sub_08041894
	movs r0, #2
	movs r1, #0
	movs r2, #9
	movs r3, #0
	bl sub_080418C8
	bl sub_080407FC
	movs r0, #0x21
	bl sub_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080527B8
	movs r0, #0x1d
	bl sub_080410A8
	ldr r0, _080527B4 @ =sub_08052698
	bl sub_0804066C
	b _080527E8
	.align 2, 0
_080527A8: .4byte 0x0808E2F4
_080527AC: .4byte 0x0808E6BC
_080527B0: .4byte 0x0808E83C
_080527B4: .4byte sub_08052698
_080527B8:
	movs r0, #0x1e
	bl sub_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080527D8
	movs r0, #0x11
	bl sub_080410A8
	ldr r0, _080527D4 @ =sub_08052614
	bl sub_0804066C
	b _080527E8
	.align 2, 0
_080527D4: .4byte sub_08052614
_080527D8:
	movs r0, #0x1d
	bl sub_080410A8
	ldr r0, _08052818 @ =sub_080523C0
	bl sub_0804066C
	bl sub_08041560
_080527E8:
	bl sub_080410D0
	bl sub_08041008
	bl sub_08040820
	movs r0, #1
	bl sub_080417E0
	movs r0, #1
	movs r1, #0
	bl sub_08041684
	movs r0, #2
	bl sub_080417E0
	movs r0, #2
	movs r1, #0
	bl sub_08041684
	bl sub_0804062C
	pop {r0}
	bx r0
	.align 2, 0
_08052818: .4byte sub_080523C0

	thumb_func_start sub_0805281C
sub_0805281C: @ 0x0805281C
	push {r4, r5, lr}
	movs r0, #0
	movs r1, #3
	bl sub_08041864
	bl sub_080407FC
	ldr r5, _080528A4 @ =0x0808E65C
	adds r0, r5, #0
	movs r1, #0x9c
	movs r2, #0x68
	bl sub_080414B4
	ldr r4, _080528A8 @ =0x00000212
	adds r0, r4, #0
	bl sub_080410E0
	movs r0, #0x30
	bl sub_08040690
	bl sub_08041560
	movs r0, #0x30
	bl sub_08040690
	adds r0, r5, #0
	movs r1, #0x9c
	movs r2, #0x68
	bl sub_080414B4
	adds r0, r4, #0
	bl sub_080410E0
	movs r0, #0
	movs r1, #0x8c
	movs r2, #0x68
	bl sub_08041894
	movs r0, #0x3c
	bl sub_08040690
	movs r0, #0
	movs r1, #2
	bl sub_08041864
	movs r0, #0
	movs r1, #0x8c
	movs r2, #0x48
	bl sub_08041894
	movs r0, #0
	movs r1, #0x78
	movs r2, #0x68
	movs r3, #0xa
	bl sub_08041938
	movs r0, #0x8f
	lsls r0, r0, #1
	bl sub_080410E0
	bl sub_08041560
	movs r0, #0x1e
	bl sub_08040690
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080528A4: .4byte 0x0808E65C
_080528A8: .4byte 0x00000212

	thumb_func_start sub_080528AC
sub_080528AC: @ 0x080528AC
	push {lr}
	bl sub_0805281C
	bl sub_08040FE8
	movs r0, #0x34
	bl sub_08041018
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0xa0
	lsls r0, r0, #0xe
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	ldr r0, _0805292C @ =0x00280001
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _08052930 @ =0x00280002
	bl sub_08041058
	ldr r0, _08052934 @ =0x00280003
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08052940
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _08052938 @ =0x00280004
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	ldr r0, _0805293C @ =0x00280005
	bl sub_08041058
	b _080529C0
	.align 2, 0
_0805292C: .4byte 0x00280001
_08052930: .4byte 0x00280002
_08052934: .4byte 0x00280003
_08052938: .4byte 0x00280004
_0805293C: .4byte 0x00280005
_08052940:
	movs r0, #0
	movs r1, #0
	movs r2, #2
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _080529C4 @ =0x00280006
	bl sub_08041058
	ldr r1, _080529C8 @ =0x00280007
	movs r0, #0x27
	bl sub_080408C4
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080529C0
	movs r0, #0x17
	bl sub_080410A8
	bl sub_08040FE8
	movs r0, #0x34
	bl sub_08041018
	ldr r0, _080529CC @ =0x00280008
	bl sub_08041058
	ldr r0, _080529D0 @ =0x00280009
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	bne _08052994
	ldr r0, _080529D4 @ =0x0028000D
	bl sub_08041058
	ldr r0, _080529D8 @ =0x0028000E
	bl sub_08041058
_08052994:
	ldr r0, _080529DC @ =0x0028000A
	bl sub_08041058
	ldr r0, _080529E0 @ =0x0028000B
	bl sub_08041058
	ldr r1, _080529E4 @ =0x00460020
	movs r0, #0x65
	bl sub_080427E0
	movs r0, #0x34
	bl sub_08041018
	ldr r0, _080529E8 @ =0x0028000C
	bl sub_08041058
	movs r0, #0x96
	bl sub_080406E4
	movs r0, #0x30
	bl sub_0802D7CC
_080529C0:
	pop {r0}
	bx r0
	.align 2, 0
_080529C4: .4byte 0x00280006
_080529C8: .4byte 0x00280007
_080529CC: .4byte 0x00280008
_080529D0: .4byte 0x00280009
_080529D4: .4byte 0x0028000D
_080529D8: .4byte 0x0028000E
_080529DC: .4byte 0x0028000A
_080529E0: .4byte 0x0028000B
_080529E4: .4byte 0x00460020
_080529E8: .4byte 0x0028000C

	thumb_func_start sub_080529EC
sub_080529EC: @ 0x080529EC
	push {lr}
	movs r0, #0x97
	bl sub_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08052A58
	movs r0, #0x68
	bl sub_08041100
	bl sub_08041138
	movs r0, #0x17
	bl sub_080410A8
	bl sub_08040FE8
	movs r0, #0x34
	bl sub_08041018
	ldr r0, _08052A48 @ =0x0028000F
	bl sub_08041058
	ldr r0, _08052A4C @ =0x00280010
	bl sub_08041058
	ldr r0, _08052A50 @ =0x00280011
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _08052A54 @ =0x00280012
	bl sub_08041058
	movs r0, #0x65
	bl sub_08040B84
	movs r0, #0x98
	bl sub_080406BC
	b _08052AC0
	.align 2, 0
_08052A48: .4byte 0x0028000F
_08052A4C: .4byte 0x00280010
_08052A50: .4byte 0x00280011
_08052A54: .4byte 0x00280012
_08052A58:
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #1
	movs r1, #1
	bl sub_08041808
	ldr r0, _08052AC4 @ =0x0000011F
	bl sub_080410E0
	movs r0, #0x3c
	bl sub_08040690
	movs r0, #1
	movs r1, #0
	bl sub_08041808
	bl sub_08040FE8
	movs r0, #0x34
	bl sub_08041018
	ldr r0, _08052AC8 @ =0x00280013
	bl sub_08041058
	ldr r0, _08052ACC @ =0x00280014
	bl sub_08041058
	ldr r0, _08052AD0 @ =0x00280015
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _08052AD4 @ =0x00280016
	bl sub_08041058
	movs r0, #0x96
	bl sub_080406FC
	movs r0, #0x97
	bl sub_080406FC
	movs r0, #0x98
	bl sub_080406D0
_08052AC0:
	pop {r0}
	bx r0
	.align 2, 0
_08052AC4: .4byte 0x0000011F
_08052AC8: .4byte 0x00280013
_08052ACC: .4byte 0x00280014
_08052AD0: .4byte 0x00280015
_08052AD4: .4byte 0x00280016

	thumb_func_start sub_08052AD8
sub_08052AD8: @ 0x08052AD8
	push {lr}
	bl sub_0805281C
	bl sub_08040FE8
	movs r0, #0x34
	bl sub_08041018
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0xa0
	lsls r0, r0, #0xe
	bl sub_08041058
	ldr r0, _08052B0C @ =0x00280017
	bl sub_08041058
	ldr r0, _08052B10 @ =0x00280018
	bl sub_08041058
	pop {r0}
	bx r0
	.align 2, 0
_08052B0C: .4byte 0x00280017
_08052B10: .4byte 0x00280018

	thumb_func_start sub_08052B14
sub_08052B14: @ 0x08052B14
	push {lr}
	bl sub_0805281C
	bl sub_08040FE8
	movs r0, #0x34
	bl sub_08041018
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0xa0
	lsls r0, r0, #0xe
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	ldr r0, _08052B84 @ =0x00280019
	bl sub_08041058
	ldr r0, _08052B88 @ =0x0028001A
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #2
	movs r3, #0
	bl sub_080418C8
	movs r0, #1
	movs r1, #1
	bl sub_08041808
	movs r0, #0x91
	lsls r0, r0, #1
	bl sub_080410E0
	movs r0, #0
	movs r1, #0
	movs r2, #2
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _08052B8C @ =0x0028001B
	bl sub_08041058
	pop {r0}
	bx r0
	.align 2, 0
_08052B84: .4byte 0x00280019
_08052B88: .4byte 0x0028001A
_08052B8C: .4byte 0x0028001B

	thumb_func_start sub_08052B90
sub_08052B90: @ 0x08052B90
	push {lr}
	bl sub_080405B8
	ldr r0, _08052BF8 @ =0x0808E31C
	bl sub_0804115C
	ldr r2, _08052BFC @ =0x0808EA3C
	movs r0, #0
	movs r1, #0
	bl sub_080415A0
	movs r0, #0
	movs r1, #0
	bl sub_08041734
	movs r0, #0
	movs r1, #0x78
	movs r2, #0x68
	bl sub_08041894
	ldr r2, _08052C00 @ =0x0808E6BC
	movs r0, #1
	movs r1, #0
	bl sub_080415A0
	movs r0, #1
	movs r1, #0
	bl sub_08041734
	movs r0, #1
	movs r1, #0x7c
	movs r2, #0x3c
	bl sub_08041894
	movs r0, #1
	movs r1, #0
	bl sub_08041808
	bl sub_080408B8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08052C08
	movs r0, #0x1d
	bl sub_080410A8
	ldr r0, _08052C04 @ =sub_08052B14
	bl sub_0804066C
	b _08052C84
	.align 2, 0
_08052BF8: .4byte 0x0808E31C
_08052BFC: .4byte 0x0808EA3C
_08052C00: .4byte 0x0808E6BC
_08052C04: .4byte sub_08052B14
_08052C08:
	movs r0, #0x98
	bl sub_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08052C28
	movs r0, #0x1d
	bl sub_080410A8
	ldr r0, _08052C24 @ =sub_08052AD8
	bl sub_0804066C
	b _08052C84
	.align 2, 0
_08052C24: .4byte sub_08052AD8
_08052C28:
	bl sub_08040B0C
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08052C58
	movs r0, #0x1d
	bl sub_080410A8
	ldr r0, _08052C54 @ =sub_080528AC
	bl sub_0804066C
	movs r0, #0x96
	bl sub_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08052C84
	movs r0, #0x65
	bl sub_08040B34
	b _08052C84
	.align 2, 0
_08052C54: .4byte sub_080528AC
_08052C58:
	bl sub_080407FC
	movs r0, #0x17
	bl sub_08040A6C
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	beq _08052C74
	cmp r0, #1
	ble _08052C84
	cmp r0, #2
	beq _08052C7A
	b _08052C84
_08052C74:
	movs r0, #0x97
	bl sub_080406E4
_08052C7A:
	ldr r0, _08052CB8 @ =sub_080529EC
	bl sub_0804066C
	bl sub_08040B28
_08052C84:
	bl sub_080410D0
	bl sub_08041008
	bl sub_08040820
	movs r0, #0
	bl sub_080417E0
	movs r0, #0
	movs r1, #0
	bl sub_08041684
	movs r0, #1
	bl sub_080417E0
	movs r0, #1
	movs r1, #0
	bl sub_08041684
	bl sub_08041560
	bl sub_0804062C
	pop {r0}
	bx r0
	.align 2, 0
_08052CB8: .4byte sub_080529EC

	thumb_func_start sub_08052CBC
sub_08052CBC: @ 0x08052CBC
	push {lr}
	movs r0, #0x98
	lsls r0, r0, #1
	bl sub_080410E0
	movs r0, #1
	movs r1, #0x78
	movs r2, #0xc8
	movs r3, #0x78
	bl sub_08041938
	movs r0, #1
	movs r1, #0x78
	movs r2, #0xb4
	movs r3, #0x64
	bl sub_08041938
	movs r0, #1
	movs r1, #0x78
	movs r2, #0x96
	movs r3, #0x50
	bl sub_08041938
	movs r0, #1
	movs r1, #0x78
	movs r2, #0x82
	movs r3, #0x3c
	bl sub_08041938
	movs r0, #1
	movs r1, #0x78
	movs r2, #0x78
	movs r3, #0x28
	bl sub_08041938
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08052D08
sub_08052D08: @ 0x08052D08
	push {r4, lr}
	movs r0, #2
	movs r1, #0xf0
	movs r2, #0x40
	bl sub_08041894
	movs r0, #2
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl sub_080418C8
	bl sub_080407FC
	movs r0, #0x78
	bl sub_08040690
	movs r0, #2
	movs r1, #0xc0
	movs r2, #0x58
	movs r3, #0x10
	bl sub_08041938
	movs r0, #2
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl sub_080418C8
	bl sub_08040FE8
	movs r0, #0x1d
	bl sub_08041018
	ldr r0, _08052E14 @ =0x00030024
	bl sub_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #3
	movs r1, #0xc2
	movs r2, #0x34
	bl sub_08041894
	ldr r4, _08052E18 @ =0x0000011F
	adds r0, r4, #0
	bl sub_080410E0
	movs r0, #3
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #3
	movs r1, #1
	bl sub_08041808
	adds r0, r4, #0
	bl sub_080410E0
	ldr r0, _08052E1C @ =0x00030025
	bl sub_08041058
	movs r0, #3
	movs r1, #0
	bl sub_08041808
	ldr r0, _08052E20 @ =0x00030026
	bl sub_08041058
	ldr r0, _08052E24 @ =0x00030027
	bl sub_08041058
	ldr r0, _08052E28 @ =0x00030028
	bl sub_08041058
	ldr r0, _08052E2C @ =0x00030029
	bl sub_08041058
	ldr r0, _08052E30 @ =0x0003002A
	bl sub_08041058
	ldr r0, _08052E34 @ =0x0003002C
	bl sub_08041058
	ldr r0, _08052E38 @ =0x0003002D
	bl sub_08041058
	movs r0, #0x1b
	movs r1, #0x10
	bl sub_08042814
	movs r0, #0x1d
	bl sub_08041018
	movs r0, #2
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _08052E3C @ =0x0003002E
	bl sub_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	ldr r0, _08052E40 @ =0x0003002F
	bl sub_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _08052E44 @ =0x00030030
	bl sub_08041058
	movs r0, #0xd
	bl sub_080406BC
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08052E14: .4byte 0x00030024
_08052E18: .4byte 0x0000011F
_08052E1C: .4byte 0x00030025
_08052E20: .4byte 0x00030026
_08052E24: .4byte 0x00030027
_08052E28: .4byte 0x00030028
_08052E2C: .4byte 0x00030029
_08052E30: .4byte 0x0003002A
_08052E34: .4byte 0x0003002C
_08052E38: .4byte 0x0003002D
_08052E3C: .4byte 0x0003002E
_08052E40: .4byte 0x0003002F
_08052E44: .4byte 0x00030030

	thumb_func_start sub_08052E48
sub_08052E48: @ 0x08052E48
	push {lr}
	movs r0, #1
	movs r1, #0x78
	movs r2, #0xc8
	bl sub_08041894
	bl sub_080407FC
	ldr r0, _08052F40 @ =0x0000011B
	bl sub_080410E0
	movs r0, #0
	movs r1, #0
	movs r2, #0xf
	movs r3, #0
	bl sub_080418C8
	movs r0, #0
	movs r1, #0x30
	movs r2, #0x58
	movs r3, #0x10
	bl sub_08041938
	movs r0, #0x8f
	lsls r0, r0, #1
	bl sub_080410E0
	bl sub_080454C4
	movs r0, #0
	movs r1, #0
	movs r2, #0xc
	movs r3, #0
	bl sub_080418C8
	movs r0, #0x31
	bl sub_08040690
	movs r0, #0x96
	lsls r0, r0, #1
	bl sub_080410E0
	bl sub_08040FE8
	movs r0, #0x38
	bl sub_08041018
	movs r0, #0xa8
	lsls r0, r0, #0xd
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0xd
	movs r3, #0
	bl sub_080418C8
	ldr r0, _08052F44 @ =0x00150001
	bl sub_08041058
	bl sub_08052CBC
	movs r0, #0
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl sub_080418C8
	movs r0, #0x1e
	bl sub_08040690
	movs r0, #0
	movs r1, #0
	movs r2, #0x10
	movs r3, #0
	bl sub_080418C8
	ldr r0, _08052F48 @ =0x00150002
	bl sub_08041058
	bl sub_08041008
	movs r0, #0
	movs r1, #0x30
	movs r2, #0x48
	movs r3, #8
	bl sub_08041938
	movs r0, #0
	movs r1, #0x30
	movs r2, #0x5a
	movs r3, #8
	bl sub_08041938
	movs r0, #0
	movs r1, #0
	movs r2, #0xf
	movs r3, #8
	bl sub_080418C8
	movs r0, #0x8e
	lsls r0, r0, #1
	bl sub_080410E0
	movs r0, #0
	movs r1, #0
	movs r2, #0x5a
	movs r3, #8
	bl sub_08041938
	movs r0, #0x3c
	bl sub_08040690
	bl sub_08040FE8
	movs r0, #9
	bl sub_0802D7CC
	movs r0, #0x18
	bl sub_0802D7CC
	pop {r0}
	bx r0
	.align 2, 0
_08052F40: .4byte 0x0000011B
_08052F44: .4byte 0x00150001
_08052F48: .4byte 0x00150002

	thumb_func_start sub_08052F4C
sub_08052F4C: @ 0x08052F4C
	push {lr}
	movs r0, #0x32
	bl sub_08041018
	ldr r0, _08052F90 @ =0x00150003
	bl sub_08041058
	ldr r0, _08052F94 @ =0x00150004
	bl sub_08041058
	ldr r0, _08052F98 @ =0x00150005
	bl sub_08041058
	ldr r0, _08052F9C @ =0x00150006
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08052FA8
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl sub_080418C8
	ldr r0, _08052FA0 @ =0x00150007
	bl sub_08041058
	ldr r0, _08052FA4 @ =0x00150008
	bl sub_08041058
	b _08053004
	.align 2, 0
_08052F90: .4byte 0x00150003
_08052F94: .4byte 0x00150004
_08052F98: .4byte 0x00150005
_08052F9C: .4byte 0x00150006
_08052FA0: .4byte 0x00150007
_08052FA4: .4byte 0x00150008
_08052FA8:
	ldr r1, _08053008 @ =0x00150009
	movs r0, #0x14
	bl sub_080408C4
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08053004
	movs r0, #0x13
	bl sub_080410A8
	bl sub_08040FE8
	movs r0, #0x32
	bl sub_08041018
	ldr r0, _0805300C @ =0x0015000A
	bl sub_08041058
	ldr r0, _08053010 @ =0x0015000B
	bl sub_08041058
	ldr r0, _08053014 @ =0x0015000C
	bl sub_08041058
	movs r0, #0xf
	movs r1, #0x13
	bl sub_08042814
	movs r0, #0x32
	bl sub_08041018
	ldr r0, _08053018 @ =0x0015000D
	bl sub_08041058
	ldr r0, _0805301C @ =0x0015000E
	bl sub_08041058
	movs r0, #0x54
	bl sub_080406BC
	movs r0, #9
	bl sub_0802D7CC
	movs r0, #0x18
	bl sub_0802D7CC
_08053004:
	pop {r0}
	bx r0
	.align 2, 0
_08053008: .4byte 0x00150009
_0805300C: .4byte 0x0015000A
_08053010: .4byte 0x0015000B
_08053014: .4byte 0x0015000C
_08053018: .4byte 0x0015000D
_0805301C: .4byte 0x0015000E

	thumb_func_start sub_08053020
sub_08053020: @ 0x08053020
	push {lr}
	movs r0, #0x32
	bl sub_08041018
	ldr r0, _08053060 @ =0x0015000F
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl sub_080418C8
	ldr r0, _08053064 @ =0x00150010
	bl sub_08041058
	ldr r0, _08053068 @ =0x00150011
	bl sub_08041058
	ldr r0, _0805306C @ =0x00150012
	bl sub_08041058
	bl sub_08041008
	movs r0, #1
	movs r1, #0x78
	movs r2, #0xc8
	movs r3, #0x78
	bl sub_08041938
	pop {r0}
	bx r0
	.align 2, 0
_08053060: .4byte 0x0015000F
_08053064: .4byte 0x00150010
_08053068: .4byte 0x00150011
_0805306C: .4byte 0x00150012

	thumb_func_start sub_08053070
sub_08053070: @ 0x08053070
	push {lr}
	movs r0, #1
	movs r1, #0x78
	movs r2, #0xc8
	bl sub_08041894
	bl sub_080407FC
	bl sub_08052CBC
	bl sub_08040FE8
	movs r0, #0x32
	bl sub_08041018
	ldr r0, _080530A4 @ =0x00150013
	bl sub_08041058
	ldr r0, _080530A8 @ =0x00150014
	bl sub_08041058
	ldr r0, _080530AC @ =0x00150015
	bl sub_08041058
	pop {r0}
	bx r0
	.align 2, 0
_080530A4: .4byte 0x00150013
_080530A8: .4byte 0x00150014
_080530AC: .4byte 0x00150015

	thumb_func_start sub_080530B0
sub_080530B0: @ 0x080530B0
	push {lr}
	bl sub_080405B8
	ldr r0, _08053140 @ =0x0808E344
	bl sub_0804115C
	ldr r2, _08053144 @ =0x0808EA6C
	movs r0, #0
	movs r1, #0
	bl sub_080415A0
	movs r0, #0
	movs r1, #0
	bl sub_08041734
	movs r0, #0
	movs r1, #0
	movs r2, #0x40
	bl sub_08041894
	ldr r2, _08053148 @ =0x0808EA2C
	movs r0, #1
	movs r1, #0
	bl sub_080415A0
	movs r0, #1
	movs r1, #0
	bl sub_08041734
	ldr r2, _0805314C @ =0x0808E8EC
	movs r0, #2
	movs r1, #0
	bl sub_080415A0
	movs r0, #2
	movs r1, #0
	bl sub_08041734
	ldr r2, _08053150 @ =0x0808E6BC
	movs r0, #3
	movs r1, #0
	bl sub_080415A0
	movs r0, #3
	movs r1, #0
	bl sub_08041734
	movs r0, #3
	movs r1, #0
	bl sub_08041808
	movs r0, #0xb
	bl sub_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08053158
	movs r0, #0xd
	bl sub_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08053158
	movs r0, #0x10
	bl sub_080410A8
	ldr r0, _08053154 @ =sub_08052D08
	bl sub_0804066C
	b _080531B2
	.align 2, 0
_08053140: .4byte 0x0808E344
_08053144: .4byte 0x0808EA6C
_08053148: .4byte 0x0808EA2C
_0805314C: .4byte 0x0808E8EC
_08053150: .4byte 0x0808E6BC
_08053154: .4byte sub_08052D08
_08053158:
	bl sub_080408B8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	beq _08053180
	movs r0, #0x1d
	bl sub_080410A8
	ldr r0, _08053178 @ =sub_08052E48
	bl sub_0804066C
	ldr r0, _0805317C @ =sub_08053020
	bl sub_0804066C
	b _080531B2
	.align 2, 0
_08053178: .4byte sub_08052E48
_0805317C: .4byte sub_08053020
_08053180:
	movs r0, #0x54
	bl sub_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080531A0
	movs r0, #0x1d
	bl sub_080410A8
	ldr r0, _0805319C @ =sub_08053070
	bl sub_0804066C
	b _080531B2
	.align 2, 0
_0805319C: .4byte sub_08053070
_080531A0:
	movs r0, #0x1d
	bl sub_080410A8
	ldr r0, _08053200 @ =sub_08052E48
	bl sub_0804066C
	ldr r0, _08053204 @ =sub_08052F4C
	bl sub_0804066C
_080531B2:
	bl sub_080410D0
	bl sub_08041008
	bl sub_08040820
	movs r0, #0
	bl sub_080417E0
	movs r0, #0
	movs r1, #0
	bl sub_08041684
	movs r0, #1
	bl sub_080417E0
	movs r0, #1
	movs r1, #0
	bl sub_08041684
	movs r0, #2
	bl sub_080417E0
	movs r0, #2
	movs r1, #0
	bl sub_08041684
	movs r0, #3
	bl sub_080417E0
	movs r0, #3
	movs r1, #0
	bl sub_08041684
	bl sub_0804062C
	pop {r0}
	bx r0
	.align 2, 0
_08053200: .4byte sub_08052E48
_08053204: .4byte sub_08052F4C

	thumb_func_start sub_08053208
sub_08053208: @ 0x08053208
	push {lr}
	bl sub_08040FE8
	movs r0, #1
	movs r1, #0
	movs r2, #2
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	movs r0, #0xd0
	lsls r0, r0, #0xd
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #6
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _08053368 @ =0x001A0001
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _0805336C @ =0x001A0002
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _08053370 @ =0x001A0003
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl sub_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _08053374 @ =0x001A0004
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _08053378 @ =0x001A0005
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _0805337C @ =0x001A0006
	bl sub_08041058
	ldr r0, _08053380 @ =0x001A0007
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08053394
	movs r0, #2
	movs r1, #0xb0
	movs r2, #0x20
	bl sub_08041894
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	movs r1, #1
	bl sub_08041808
	ldr r0, _08053384 @ =0x0000011F
	bl sub_080410E0
	movs r0, #0x3c
	bl sub_08040690
	movs r0, #2
	movs r1, #0
	bl sub_08041808
	movs r0, #2
	bl sub_08041018
	ldr r0, _08053388 @ =0x001A0008
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _0805338C @ =0x001A0009
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _08053390 @ =0x001A000A
	bl sub_08041058
	b _08053586
	.align 2, 0
_08053368: .4byte 0x001A0001
_0805336C: .4byte 0x001A0002
_08053370: .4byte 0x001A0003
_08053374: .4byte 0x001A0004
_08053378: .4byte 0x001A0005
_0805337C: .4byte 0x001A0006
_08053380: .4byte 0x001A0007
_08053384: .4byte 0x0000011F
_08053388: .4byte 0x001A0008
_0805338C: .4byte 0x001A0009
_08053390: .4byte 0x001A000A
_08053394:
	ldr r1, _0805348C @ =0x001A000B
	movs r0, #0x19
	bl sub_080408C4
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080533A4
	b _08053586
_080533A4:
	movs r0, #0x14
	bl sub_080410A8
	bl sub_08040FE8
	movs r0, #1
	movs r1, #0
	movs r2, #2
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _08053490 @ =0x001A000C
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _08053494 @ =0x001A000D
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _08053498 @ =0x001A000E
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl sub_080418C8
	ldr r0, _0805349C @ =0x001A000F
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _080534A0 @ =0x001A0010
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _080534A4 @ =0x001A0011
	bl sub_08041058
	ldr r0, _080534A8 @ =0x001A0012
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080534B4
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl sub_080418C8
	ldr r0, _080534AC @ =0x001A0013
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _080534B0 @ =0x001A0014
	bl sub_08041058
	b _080534DE
	.align 2, 0
_0805348C: .4byte 0x001A000B
_08053490: .4byte 0x001A000C
_08053494: .4byte 0x001A000D
_08053498: .4byte 0x001A000E
_0805349C: .4byte 0x001A000F
_080534A0: .4byte 0x001A0010
_080534A4: .4byte 0x001A0011
_080534A8: .4byte 0x001A0012
_080534AC: .4byte 0x001A0013
_080534B0: .4byte 0x001A0014
_080534B4:
	movs r0, #1
	movs r1, #0
	movs r2, #2
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _0805358C @ =0x001A001C
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _08053590 @ =0x001A001D
	bl sub_08041058
_080534DE:
	movs r0, #1
	movs r1, #0
	movs r2, #2
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _08053594 @ =0x001A0015
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _08053598 @ =0x001A0016
	bl sub_08041058
	ldr r0, _0805359C @ =0x001A0017
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _080535A0 @ =0x001A0018
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _080535A4 @ =0x001A0019
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl sub_080418C8
	ldr r0, _080535A8 @ =0x001A001A
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _080535AC @ =0x001A001B
	bl sub_08041058
	movs r0, #0x66
	bl sub_080406E4
	movs r0, #0xb
	bl sub_0802D7CC
	movs r0, #0x2d
	bl sub_0802D7CC
_08053586:
	pop {r0}
	bx r0
	.align 2, 0
_0805358C: .4byte 0x001A001C
_08053590: .4byte 0x001A001D
_08053594: .4byte 0x001A0015
_08053598: .4byte 0x001A0016
_0805359C: .4byte 0x001A0017
_080535A0: .4byte 0x001A0018
_080535A4: .4byte 0x001A0019
_080535A8: .4byte 0x001A001A
_080535AC: .4byte 0x001A001B

	thumb_func_start sub_080535B0
sub_080535B0: @ 0x080535B0
	push {lr}
	bl sub_08040FE8
	movs r0, #0x67
	bl sub_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080535C4
	b _080536F4
_080535C4:
	movs r0, #1
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _080536C4 @ =0x001A001E
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _080536C8 @ =0x001A001F
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _080536CC @ =0x001A0020
	bl sub_08041058
	ldr r0, _080536D0 @ =0x001A0021
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _080536D4 @ =0x001A0022
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _080536D8 @ =0x001A0023
	bl sub_08041058
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _080536DC @ =0x001A0024
	bl sub_08041058
	ldr r1, _080536E0 @ =0x0046002C
	movs r0, #0x71
	bl sub_080427E0
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _080536E4 @ =0x001A0025
	bl sub_08041058
	bl sub_08040BB8
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _080536E8 @ =0x001A0026
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _080536EC @ =0x001A0027
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _080536F0 @ =0x001A0028
	bl sub_08041058
	b _080537A2
	.align 2, 0
_080536C4: .4byte 0x001A001E
_080536C8: .4byte 0x001A001F
_080536CC: .4byte 0x001A0020
_080536D0: .4byte 0x001A0021
_080536D4: .4byte 0x001A0022
_080536D8: .4byte 0x001A0023
_080536DC: .4byte 0x001A0024
_080536E0: .4byte 0x0046002C
_080536E4: .4byte 0x001A0025
_080536E8: .4byte 0x001A0026
_080536EC: .4byte 0x001A0027
_080536F0: .4byte 0x001A0028
_080536F4:
	movs r0, #1
	movs r1, #0
	movs r2, #2
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #6
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _080537A8 @ =0x001A003C
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _080537AC @ =0x001A003D
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _080537B0 @ =0x001A003E
	bl sub_08041058
	ldr r0, _080537B4 @ =0x001A003F
	bl sub_08041058
	ldr r0, _080537B8 @ =0x001A0039
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #2
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _080537BC @ =0x001A003A
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _080537C0 @ =0x001A003B
	bl sub_08041058
	movs r0, #0x66
	bl sub_080406FC
	movs r0, #0x67
	bl sub_080406FC
	movs r0, #0x68
	bl sub_080406FC
	movs r0, #0x69
	bl sub_080406D0
_080537A2:
	pop {r0}
	bx r0
	.align 2, 0
_080537A8: .4byte 0x001A003C
_080537AC: .4byte 0x001A003D
_080537B0: .4byte 0x001A003E
_080537B4: .4byte 0x001A003F
_080537B8: .4byte 0x001A0039
_080537BC: .4byte 0x001A003A
_080537C0: .4byte 0x001A003B

	thumb_func_start sub_080537C4
sub_080537C4: @ 0x080537C4
	push {lr}
	movs r0, #0x68
	bl sub_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080537D6
	b _08053984
_080537D6:
	movs r0, #0x68
	bl sub_08041100
	bl sub_08041138
	movs r0, #0x14
	bl sub_080410A8
	bl sub_08040FE8
	movs r0, #1
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _08053954 @ =0x001A0029
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _08053958 @ =0x001A002A
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _0805395C @ =0x001A002B
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _08053960 @ =0x001A002C
	bl sub_08041058
	bl sub_08041008
	movs r0, #0x14
	bl sub_080410C0
	movs r0, #0x68
	bl sub_08041100
	bl sub_08041138
	bl sub_08040FE8
	movs r0, #4
	movs r1, #0x1c
	bl sub_08005BE0
	movs r0, #0x52
	bl sub_08041058
	movs r0, #0x1c
	bl sub_08040B84
	movs r0, #4
	movs r1, #0x20
	bl sub_08005BE0
	movs r0, #0x52
	bl sub_08041058
	movs r0, #0x20
	bl sub_08040B84
	movs r0, #0x14
	bl sub_080410A8
	bl sub_08041008
	bl sub_08040FE8
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _08053964 @ =0x001A002D
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl sub_080418C8
	ldr r0, _08053968 @ =0x001A002E
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _0805396C @ =0x001A002F
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _08053970 @ =0x001A0030
	bl sub_08041058
	ldr r0, _08053974 @ =0x001A0031
	bl sub_08041058
	ldr r0, _08053978 @ =0x001A0032
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _0805397C @ =0x001A0033
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _08053980 @ =0x001A0034
	bl sub_08041058
	movs r0, #0x71
	bl sub_08040B84
	movs r0, #0x69
	bl sub_080406BC
	b _08053A42
	.align 2, 0
_08053954: .4byte 0x001A0029
_08053958: .4byte 0x001A002A
_0805395C: .4byte 0x001A002B
_08053960: .4byte 0x001A002C
_08053964: .4byte 0x001A002D
_08053968: .4byte 0x001A002E
_0805396C: .4byte 0x001A002F
_08053970: .4byte 0x001A0030
_08053974: .4byte 0x001A0031
_08053978: .4byte 0x001A0032
_0805397C: .4byte 0x001A0033
_08053980: .4byte 0x001A0034
_08053984:
	bl sub_08040FE8
	movs r0, #1
	movs r1, #0
	movs r2, #2
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #6
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _08053A48 @ =0x001A0035
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	ldr r0, _08053A4C @ =0x001A0036
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _08053A50 @ =0x001A0037
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _08053A54 @ =0x001A0038
	bl sub_08041058
	ldr r0, _08053A58 @ =0x001A0039
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #2
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _08053A5C @ =0x001A003A
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _08053A60 @ =0x001A003B
	bl sub_08041058
	movs r0, #0x66
	bl sub_080406FC
	movs r0, #0x67
	bl sub_080406FC
	movs r0, #0x68
	bl sub_080406FC
	movs r0, #0x69
	bl sub_080406D0
_08053A42:
	pop {r0}
	bx r0
	.align 2, 0
_08053A48: .4byte 0x001A0035
_08053A4C: .4byte 0x001A0036
_08053A50: .4byte 0x001A0037
_08053A54: .4byte 0x001A0038
_08053A58: .4byte 0x001A0039
_08053A5C: .4byte 0x001A003A
_08053A60: .4byte 0x001A003B

	thumb_func_start sub_08053A64
sub_08053A64: @ 0x08053A64
	push {lr}
	movs r0, #0x3c
	bl sub_08040690
	movs r0, #2
	movs r1, #0xb0
	movs r2, #0x20
	bl sub_08041894
	movs r0, #2
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	movs r1, #1
	bl sub_08041808
	movs r0, #0x90
	lsls r0, r0, #1
	bl sub_080410E0
	movs r0, #0x3c
	bl sub_08040690
	movs r0, #2
	movs r1, #0
	bl sub_08041808
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	bl sub_08040FE8
	movs r0, #2
	bl sub_08041018
	ldr r0, _08053B58 @ =0x001A0040
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _08053B5C @ =0x001A0041
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _08053B60 @ =0x001A0042
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _08053B64 @ =0x001A0043
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _08053B68 @ =0x001A0044
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _08053B6C @ =0x001A0045
	bl sub_08041058
	ldr r0, _08053B70 @ =0x001A0046
	bl sub_08041058
	pop {r0}
	bx r0
	.align 2, 0
_08053B58: .4byte 0x001A0040
_08053B5C: .4byte 0x001A0041
_08053B60: .4byte 0x001A0042
_08053B64: .4byte 0x001A0043
_08053B68: .4byte 0x001A0044
_08053B6C: .4byte 0x001A0045
_08053B70: .4byte 0x001A0046

	thumb_func_start sub_08053B74
sub_08053B74: @ 0x08053B74
	push {lr}
	bl sub_080405B8
	ldr r0, _08053C14 @ =0x0808E36C
	bl sub_0804115C
	ldr r2, _08053C18 @ =0x0808E7BC
	movs r0, #0
	movs r1, #0
	bl sub_080415A0
	movs r0, #0
	movs r1, #0
	bl sub_08041734
	movs r0, #0
	movs r1, #0x30
	movs r2, #0x50
	bl sub_08041894
	ldr r2, _08053C1C @ =0x0808E71C
	movs r0, #1
	movs r1, #0
	bl sub_080415A0
	movs r0, #1
	movs r1, #0
	bl sub_08041734
	movs r0, #1
	movs r1, #0xb0
	movs r2, #0x63
	bl sub_08041894
	ldr r2, _08053C20 @ =0x0808E6BC
	movs r0, #2
	movs r1, #0
	bl sub_080415A0
	movs r0, #2
	movs r1, #0
	bl sub_08041734
	movs r0, #2
	movs r1, #0
	bl sub_08041808
	movs r0, #0x68
	bl sub_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08053BF4
	movs r0, #0
	movs r1, #0
	movs r2, #2
	movs r3, #0
	bl sub_080418C8
	movs r0, #0
	movs r1, #0x78
	movs r2, #0x68
	bl sub_08041894
_08053BF4:
	bl sub_080407FC
	movs r0, #0x68
	bl sub_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08053C28
	movs r0, #0x14
	bl sub_080410A8
	ldr r0, _08053C24 @ =sub_08053A64
	bl sub_0804066C
	b _08053CC6
	.align 2, 0
_08053C14: .4byte 0x0808E36C
_08053C18: .4byte 0x0808E7BC
_08053C1C: .4byte 0x0808E71C
_08053C20: .4byte 0x0808E6BC
_08053C24: .4byte sub_08053A64
_08053C28:
	movs r0, #0x67
	bl sub_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08053C64
	movs r0, #0x14
	bl sub_08040A6C
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	beq _08053C4E
	cmp r0, #1
	ble _08053CC6
	cmp r0, #2
	beq _08053C54
	b _08053CC6
_08053C4E:
	movs r0, #0x68
	bl sub_080406E4
_08053C54:
	ldr r0, _08053C60 @ =sub_080537C4
	bl sub_0804066C
	bl sub_08040B28
	b _08053CC6
	.align 2, 0
_08053C60: .4byte sub_080537C4
_08053C64:
	movs r0, #0x14
	bl sub_080410A8
	bl sub_08040EF0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08053C94
	ldr r0, _08053C90 @ =sub_08053208
	bl sub_0804066C
	movs r0, #0x66
	bl sub_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08053CC6
	movs r0, #0xa
	bl sub_08040F18
	b _08053CC6
	.align 2, 0
_08053C90: .4byte sub_08053208
_08053C94:
	bl sub_08040F38
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08053CBC
	movs r0, #0x67
	bl sub_080406E4
	ldr r0, _08053CB8 @ =sub_080535B0
	bl sub_0804066C
	bl sub_08040F0C
	movs r0, #0x71
	bl sub_08040B34
	b _08053CC6
	.align 2, 0
_08053CB8: .4byte sub_080535B0
_08053CBC:
	ldr r0, _08053D04 @ =sub_080535B0
	bl sub_0804066C
	bl sub_08040F0C
_08053CC6:
	bl sub_080410D0
	bl sub_08041008
	bl sub_08040820
	movs r0, #0
	bl sub_080417E0
	movs r0, #0
	movs r1, #0
	bl sub_08041684
	movs r0, #1
	bl sub_080417E0
	movs r0, #1
	movs r1, #0
	bl sub_08041684
	movs r0, #2
	bl sub_080417E0
	movs r0, #2
	movs r1, #0
	bl sub_08041684
	bl sub_0804062C
	pop {r0}
	bx r0
	.align 2, 0
_08053D04: .4byte sub_080535B0

	thumb_func_start sub_08053D08
sub_08053D08: @ 0x08053D08
	push {lr}
	bl sub_08040FE8
	movs r0, #1
	movs r1, #0
	movs r2, #9
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	bl sub_080408B8
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r0, #8
	bl sub_08005BE0
	movs r0, #0xc8
	lsls r0, r0, #0xe
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _08053DBC @ =0x00320001
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _08053DC0 @ =0x00320002
	bl sub_08041058
	ldr r0, _08053DC4 @ =0x00320003
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08053DD4
	ldr r0, _08053DC8 @ =0x00320004
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _08053DCC @ =0x00320005
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0xc
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _08053DD0 @ =0x00320006
	bl sub_08041058
	b _08054004
	.align 2, 0
_08053DBC: .4byte 0x00320001
_08053DC0: .4byte 0x00320002
_08053DC4: .4byte 0x00320003
_08053DC8: .4byte 0x00320004
_08053DCC: .4byte 0x00320005
_08053DD0: .4byte 0x00320006
_08053DD4:
	movs r0, #0x9a
	lsls r0, r0, #1
	bl sub_080410F0
	ldr r1, _08053EB8 @ =0x00320007
	movs r0, #0x31
	bl sub_080408C4
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08053DEC
	b _08054004
_08053DEC:
	movs r0, #0x52
	bl sub_080410A8
	bl sub_08040FE8
	movs r0, #1
	movs r1, #0
	movs r2, #7
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _08053EBC @ =0x00320008
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _08053EC0 @ =0x00320009
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _08053EC4 @ =0x0032000A
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #9
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _08053EC8 @ =0x0032000B
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _08053ECC @ =0x0032000C
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	ldr r0, _08053ED0 @ =0x0032000D
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08053ED8
	movs r0, #1
	movs r1, #0
	movs r2, #9
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _08053ED4 @ =0x0032000E
	bl sub_08041058
	b _08053F20
	.align 2, 0
_08053EB8: .4byte 0x00320007
_08053EBC: .4byte 0x00320008
_08053EC0: .4byte 0x00320009
_08053EC4: .4byte 0x0032000A
_08053EC8: .4byte 0x0032000B
_08053ECC: .4byte 0x0032000C
_08053ED0: .4byte 0x0032000D
_08053ED4: .4byte 0x0032000E
_08053ED8:
	movs r0, #2
	bl sub_08041018
	ldr r0, _08054008 @ =0x00320016
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _0805400C @ =0x00320017
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #9
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _08054010 @ =0x00320018
	bl sub_08041058
_08053F20:
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _08054014 @ =0x0032000F
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #7
	movs r3, #0
	bl sub_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _08054018 @ =0x00320010
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _0805401C @ =0x00320011
	bl sub_08041058
	ldr r1, _08054020 @ =0x0046002B
	movs r0, #0x70
	bl sub_080427E0
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _08054024 @ =0x00320012
	bl sub_08041058
	bl sub_08040BB8
	movs r0, #1
	movs r1, #0
	movs r2, #9
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _08054028 @ =0x00320013
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _0805402C @ =0x00320014
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #9
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _08054030 @ =0x00320015
	bl sub_08041058
	movs r0, #0xba
	bl sub_080406E4
	movs r0, #0xb
	bl sub_0802D7CC
	movs r0, #0x2d
	bl sub_0802D7CC
_08054004:
	pop {r0}
	bx r0
	.align 2, 0
_08054008: .4byte 0x00320016
_0805400C: .4byte 0x00320017
_08054010: .4byte 0x00320018
_08054014: .4byte 0x0032000F
_08054018: .4byte 0x00320010
_0805401C: .4byte 0x00320011
_08054020: .4byte 0x0046002B
_08054024: .4byte 0x00320012
_08054028: .4byte 0x00320013
_0805402C: .4byte 0x00320014
_08054030: .4byte 0x00320015

	thumb_func_start sub_08054034
sub_08054034: @ 0x08054034
	push {lr}
	movs r0, #0xbb
	bl sub_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08054046
	b _08054238
_08054046:
	movs r0, #0x68
	bl sub_08041100
	bl sub_08041138
	movs r0, #0x52
	bl sub_080410A8
	bl sub_08040FE8
	movs r0, #1
	movs r1, #0
	movs r2, #0xc
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _080541F0 @ =0x00320019
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #8
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _080541F4 @ =0x0032001A
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #9
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _080541F8 @ =0x0032001B
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #2
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _080541FC @ =0x0032001C
	bl sub_08041058
	movs r0, #2
	bl sub_08041018
	ldr r0, _08054200 @ =0x0032001D
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _08054204 @ =0x0032001E
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #7
	movs r3, #0
	bl sub_080418C8
	ldr r0, _08054208 @ =0x0032001F
	bl sub_08041058
	movs r0, #0x3f
	movs r1, #0x52
	bl sub_08042814
	movs r0, #1
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _0805420C @ =0x00320020
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #7
	movs r3, #0
	bl sub_080418C8
	ldr r0, _08054210 @ =0x00320021
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _08054214 @ =0x00320022
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #0xc
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _08054218 @ =0x00320023
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _0805421C @ =0x00320024
	bl sub_08041058
	ldr r0, _08054220 @ =0x00320025
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _08054224 @ =0x00320026
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _08054228 @ =0x00320027
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #7
	movs r3, #0
	bl sub_080418C8
	ldr r0, _0805422C @ =0x00320028
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _08054230 @ =0x00320029
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #9
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _08054234 @ =0x0032002A
	bl sub_08041058
	movs r0, #0x70
	bl sub_08040B84
	movs r0, #0xbc
	bl sub_080406BC
	b _080542EA
	.align 2, 0
_080541F0: .4byte 0x00320019
_080541F4: .4byte 0x0032001A
_080541F8: .4byte 0x0032001B
_080541FC: .4byte 0x0032001C
_08054200: .4byte 0x0032001D
_08054204: .4byte 0x0032001E
_08054208: .4byte 0x0032001F
_0805420C: .4byte 0x00320020
_08054210: .4byte 0x00320021
_08054214: .4byte 0x00320022
_08054218: .4byte 0x00320023
_0805421C: .4byte 0x00320024
_08054220: .4byte 0x00320025
_08054224: .4byte 0x00320026
_08054228: .4byte 0x00320027
_0805422C: .4byte 0x00320028
_08054230: .4byte 0x00320029
_08054234: .4byte 0x0032002A
_08054238:
	movs r0, #0x52
	bl sub_080410A8
	bl sub_08040FE8
	movs r0, #2
	bl sub_08041018
	ldr r0, _080542F0 @ =0x0032002B
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _080542F4 @ =0x0032002C
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0xc
	movs r3, #0
	bl sub_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _080542F8 @ =0x0032002D
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #8
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _080542FC @ =0x0032002E
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _08054300 @ =0x0032002F
	bl sub_08041058
	ldr r0, _08054304 @ =0x00320030
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _08054308 @ =0x00320031
	bl sub_08041058
	movs r0, #0xba
	bl sub_080406FC
	movs r0, #0xbb
	bl sub_080406FC
	movs r0, #0xbc
	bl sub_080406D0
_080542EA:
	pop {r0}
	bx r0
	.align 2, 0
_080542F0: .4byte 0x0032002B
_080542F4: .4byte 0x0032002C
_080542F8: .4byte 0x0032002D
_080542FC: .4byte 0x0032002E
_08054300: .4byte 0x0032002F
_08054304: .4byte 0x00320030
_08054308: .4byte 0x00320031

	thumb_func_start sub_0805430C
sub_0805430C: @ 0x0805430C
	push {lr}
	bl sub_08040FE8
	movs r0, #2
	bl sub_08041018
	ldr r0, _08054388 @ =0x00320032
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _0805438C @ =0x00320033
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _08054390 @ =0x00320034
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0xc
	movs r3, #0
	bl sub_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	ldr r0, _08054394 @ =0x00320035
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #8
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _08054398 @ =0x00320036
	bl sub_08041058
	pop {r0}
	bx r0
	.align 2, 0
_08054388: .4byte 0x00320032
_0805438C: .4byte 0x00320033
_08054390: .4byte 0x00320034
_08054394: .4byte 0x00320035
_08054398: .4byte 0x00320036

	thumb_func_start sub_0805439C
sub_0805439C: @ 0x0805439C
	push {lr}
	bl sub_08040FE8
	movs r0, #1
	movs r1, #0
	movs r2, #9
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _0805442C @ =0x00320037
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _08054430 @ =0x00320038
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _08054434 @ =0x00320039
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _08054438 @ =0x0032003A
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #9
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _0805443C @ =0x0032003B
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _08054440 @ =0x0032003C
	bl sub_08041058
	pop {r0}
	bx r0
	.align 2, 0
_0805442C: .4byte 0x00320037
_08054430: .4byte 0x00320038
_08054434: .4byte 0x00320039
_08054438: .4byte 0x0032003A
_0805443C: .4byte 0x0032003B
_08054440: .4byte 0x0032003C

	thumb_func_start sub_08054444
sub_08054444: @ 0x08054444
	push {lr}
	bl sub_080405B8
	ldr r0, _080544F0 @ =0x0808E394
	bl sub_0804115C
	ldr r0, _080544F4 @ =0x0817D8A4
	movs r1, #0
	movs r2, #1
	bl sub_08041464
	ldr r0, _080544F8 @ =0x0808E66C
	movs r1, #0x78
	movs r2, #0x38
	bl sub_080414B4
	ldr r2, _080544FC @ =0x0808E7BC
	movs r0, #0
	movs r1, #0
	bl sub_080415A0
	movs r0, #0
	movs r1, #0
	bl sub_08041734
	movs r0, #0
	movs r1, #0x48
	movs r2, #0x59
	bl sub_08041894
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	ldr r2, _08054500 @ =0x0808E70C
	movs r0, #1
	movs r1, #0
	bl sub_080415A0
	movs r0, #1
	movs r1, #0
	bl sub_08041734
	movs r0, #1
	movs r1, #0x78
	movs r2, #0x4e
	bl sub_08041894
	movs r0, #1
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl sub_080418C8
	ldr r2, _08054504 @ =0x0808E6BC
	movs r0, #2
	movs r1, #0
	bl sub_080415A0
	movs r0, #2
	movs r1, #0
	bl sub_08041734
	movs r0, #2
	movs r1, #0
	bl sub_08041808
	bl sub_080407FC
	movs r0, #0xbc
	bl sub_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0805450C
	movs r0, #0x52
	bl sub_080410A8
	ldr r0, _08054508 @ =sub_0805430C
	bl sub_0804066C
	b _08054558
	.align 2, 0
_080544F0: .4byte 0x0808E394
_080544F4: .4byte 0x0817D8A4
_080544F8: .4byte 0x0808E66C
_080544FC: .4byte 0x0808E7BC
_08054500: .4byte 0x0808E70C
_08054504: .4byte 0x0808E6BC
_08054508: .4byte sub_0805430C
_0805450C:
	bl sub_08040B0C
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805453C
	movs r0, #0x9a
	lsls r0, r0, #1
	bl sub_080410E0
	ldr r0, _08054538 @ =sub_08053D08
	bl sub_0804066C
	movs r0, #0xba
	bl sub_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08054558
	movs r0, #0x70
	bl sub_08040B34
	b _08054558
	.align 2, 0
_08054538: .4byte sub_08053D08
_0805453C:
	bl sub_08040B58
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0805454E
	movs r0, #0xbb
	bl sub_080406E4
_0805454E:
	ldr r0, _080545A8 @ =sub_08054034
	bl sub_0804066C
	bl sub_08040B28
_08054558:
	movs r0, #0x9a
	lsls r0, r0, #1
	bl sub_080410F0
	bl sub_080410D0
	bl sub_08041008
	bl sub_08040820
	movs r0, #0
	bl sub_080417E0
	movs r0, #0
	movs r1, #0
	bl sub_08041684
	movs r0, #1
	bl sub_080417E0
	movs r0, #1
	movs r1, #0
	bl sub_08041684
	movs r0, #2
	bl sub_080417E0
	movs r0, #2
	movs r1, #0
	bl sub_08041684
	bl sub_08041560
	bl sub_08041498
	bl sub_0804062C
	pop {r0}
	bx r0
	.align 2, 0
_080545A8: .4byte sub_08054034

	thumb_func_start sub_080545AC
sub_080545AC: @ 0x080545AC
	push {r4, r5, lr}
	ldr r0, _080545F8 @ =0x00000133
	bl sub_080410E0
	movs r0, #2
	movs r1, #2
	movs r2, #0xe0
	bl sub_080413C0
	movs r5, #0
_080545C0:
	movs r4, #0xc8
	subs r4, r4, r5
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	movs r0, #0
	movs r1, #0x50
	adds r2, r4, #0
	bl sub_08041894
	movs r0, #1
	movs r1, #0x70
	adds r2, r4, #0
	bl sub_08041894
	movs r0, #2
	movs r1, #0x90
	adds r2, r4, #0
	bl sub_08041894
	movs r0, #2
	bl sub_08040690
	adds r5, #1
	cmp r5, #0x6f
	ble _080545C0
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080545F8: .4byte 0x00000133

	thumb_func_start sub_080545FC
sub_080545FC: @ 0x080545FC
	push {r4, r5, r6, lr}
	ldr r0, _0805464C @ =0x000003DF
	bl sub_080410E0
	movs r0, #2
	movs r1, #2
	movs r2, #0xb4
	bl sub_080413C0
	movs r6, #0
	movs r5, #0xb0
	lsls r5, r5, #0xf
_08054614:
	asrs r4, r5, #0x10
	movs r0, #0
	movs r1, #0x50
	adds r2, r4, #0
	bl sub_08041894
	movs r0, #1
	movs r1, #0x70
	adds r2, r4, #0
	bl sub_08041894
	movs r0, #2
	movs r1, #0x90
	adds r2, r4, #0
	bl sub_08041894
	movs r0, #1
	bl sub_08040690
	movs r0, #0x80
	lsls r0, r0, #9
	adds r5, r5, r0
	adds r6, #1
	cmp r6, #0xb3
	ble _08054614
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805464C: .4byte 0x000003DF

	thumb_func_start sub_08054650
sub_08054650: @ 0x08054650
	push {r4, lr}
	movs r4, #0
_08054654:
	movs r1, #0xf0
	subs r1, r1, r4
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r0, #0
	movs r2, #0x68
	bl sub_08041894
	movs r0, #0x84
	lsls r0, r0, #1
	adds r1, r0, #0
	subs r1, r1, r4
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r0, #1
	movs r2, #0x68
	bl sub_08041894
	movs r0, #0x8c
	lsls r0, r0, #1
	adds r1, r0, #0
	subs r1, r1, r4
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r0, #2
	movs r2, #0x68
	bl sub_08041894
	movs r0, #0x94
	lsls r0, r0, #1
	adds r1, r0, #0
	subs r1, r1, r4
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r0, #5
	movs r2, #0x68
	bl sub_08041894
	movs r0, #0x9c
	lsls r0, r0, #1
	adds r1, r0, #0
	subs r1, r1, r4
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r0, #6
	movs r2, #0x68
	bl sub_08041894
	movs r0, #2
	bl sub_08040690
	adds r4, #1
	cmp r4, #0x8b
	ble _08054654
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080546C8
sub_080546C8: @ 0x080546C8
	push {r4, lr}
	movs r4, #0
_080546CC:
	movs r1, #0x5a
	subs r1, r1, r4
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r0, #0
	movs r2, #0x68
	bl sub_08041894
	movs r1, #0x72
	subs r1, r1, r4
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r0, #1
	movs r2, #0x68
	bl sub_08041894
	movs r1, #0x82
	subs r1, r1, r4
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r0, #2
	movs r2, #0x68
	bl sub_08041894
	movs r1, #0x92
	subs r1, r1, r4
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r0, #5
	movs r2, #0x68
	bl sub_08041894
	movs r1, #0xa2
	subs r1, r1, r4
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r0, #6
	movs r2, #0x68
	bl sub_08041894
	movs r0, #2
	bl sub_08040690
	adds r4, #1
	cmp r4, #0xa1
	ble _080546CC
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08054730
sub_08054730: @ 0x08054730
	push {r4, lr}
	bl sub_080407FC
	bl sub_08040FE8
	movs r0, #4
	movs r1, #0
	movs r2, #8
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	movs r0, #0xac
	lsls r0, r0, #0xe
	bl sub_08041058
	movs r0, #3
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _08054848 @ =0x002B0001
	bl sub_08041058
	movs r0, #4
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl sub_080418C8
	movs r0, #3
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _0805484C @ =0x002B0002
	bl sub_08041058
	movs r0, #3
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _08054850 @ =0x002B0003
	bl sub_08041058
	movs r0, #4
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #3
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _08054854 @ =0x002B0004
	bl sub_08041058
	ldr r0, _08054858 @ =0x002B0005
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0805486C
	movs r0, #7
	movs r1, #0xac
	movs r2, #0x26
	bl sub_08041894
	movs r0, #7
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #7
	movs r1, #1
	bl sub_08041808
	ldr r0, _0805485C @ =0x0000011F
	bl sub_080410E0
	movs r0, #0x3c
	bl sub_08040690
	movs r0, #7
	movs r1, #0
	bl sub_08041808
	ldr r0, _08054860 @ =0x002B0006
	bl sub_08041058
	movs r0, #3
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _08054864 @ =0x002B0007
	bl sub_08041058
	movs r0, #4
	movs r1, #0
	movs r2, #0xb
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _08054868 @ =0x002B0008
	bl sub_08041058
	b _08054E04
	.align 2, 0
_08054848: .4byte 0x002B0001
_0805484C: .4byte 0x002B0002
_08054850: .4byte 0x002B0003
_08054854: .4byte 0x002B0004
_08054858: .4byte 0x002B0005
_0805485C: .4byte 0x0000011F
_08054860: .4byte 0x002B0006
_08054864: .4byte 0x002B0007
_08054868: .4byte 0x002B0008
_0805486C:
	ldr r1, _08054AE8 @ =0x002B0009
	movs r0, #0x2a
	bl sub_080408C4
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805487C
	b _08054E04
_0805487C:
	movs r0, #0x17
	bl sub_080410A8
	movs r0, #0xb
	bl sub_0802D7CC
	movs r0, #0x2d
	bl sub_0802D7CC
	bl sub_08040FE8
	movs r0, #2
	bl sub_08041018
	ldr r0, _08054AEC @ =0x002B000A
	bl sub_08041058
	movs r0, #4
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl sub_080418C8
	ldr r0, _08054AF0 @ =0x002B000B
	bl sub_08041058
	movs r0, #3
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _08054AF4 @ =0x002B000C
	bl sub_08041058
	movs r0, #4
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #3
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _08054AF8 @ =0x002B000D
	bl sub_08041058
	ldr r0, _08054AFC @ =0x002B000E
	bl sub_08041058
	movs r0, #3
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _08054B00 @ =0x002B000F
	bl sub_08041058
	movs r0, #3
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _08054B04 @ =0x002B0010
	bl sub_08041058
	ldr r0, _08054B08 @ =0x002B0011
	bl sub_08041058
	ldr r0, _08054B0C @ =0x002B0012
	bl sub_08041058
	ldr r0, _08054B10 @ =0x002B0013
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08054940
	b _08054B40
_08054940:
	bl sub_08041008
	movs r0, #7
	movs r1, #0xac
	movs r2, #0x26
	bl sub_08041894
	movs r0, #7
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl sub_080418C8
	movs r0, #7
	movs r1, #1
	bl sub_08041808
	movs r0, #0x78
	bl sub_08040690
	movs r0, #7
	movs r1, #0
	bl sub_08041808
	bl sub_08040FE8
	movs r0, #2
	bl sub_08041018
	ldr r0, _08054B14 @ =0x002B0014
	bl sub_08041058
	ldr r0, _08054B18 @ =0x002B0015
	bl sub_08041058
	movs r0, #3
	movs r1, #0
	movs r2, #9
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _08054B1C @ =0x002B0016
	bl sub_08041058
	movs r0, #4
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl sub_080418C8
	movs r0, #3
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _08054B20 @ =0x002B0017
	bl sub_08041058
	bl sub_08041008
	movs r0, #0x1e
	bl sub_08040690
	ldr r4, _08054B24 @ =0x0808E9EC
	movs r0, #0
	movs r1, #0
	adds r2, r4, #0
	bl sub_080415A0
	movs r0, #0
	movs r1, #0
	bl sub_08041734
	movs r0, #0
	movs r1, #3
	bl sub_08041864
	movs r0, #0
	movs r1, #0x50
	movs r2, #0xc8
	bl sub_08041894
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #1
	movs r1, #0
	adds r2, r4, #0
	bl sub_080415A0
	movs r0, #1
	movs r1, #0
	bl sub_08041734
	movs r0, #1
	movs r1, #3
	bl sub_08041864
	movs r0, #1
	movs r1, #0x70
	movs r2, #0xc8
	bl sub_08041894
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #2
	movs r1, #0
	adds r2, r4, #0
	bl sub_080415A0
	movs r0, #2
	movs r1, #0
	bl sub_08041734
	movs r0, #2
	movs r1, #3
	bl sub_08041864
	movs r0, #2
	movs r1, #0x90
	movs r2, #0xc8
	bl sub_08041894
	movs r0, #2
	movs r1, #0
	movs r2, #2
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0x3c
	bl sub_08040690
	bl sub_080545AC
	bl sub_08040FE8
	movs r0, #4
	movs r1, #0
	movs r2, #8
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #3
	movs r1, #0
	movs r2, #9
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _08054B28 @ =0x002B0018
	bl sub_08041058
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _08054B2C @ =0x002B0019
	bl sub_08041058
	movs r0, #4
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _08054B30 @ =0x002B001A
	bl sub_08041058
	ldr r1, _08054B34 @ =0x00460026
	movs r0, #0x6b
	bl sub_080427E0
	movs r0, #4
	movs r1, #0
	movs r2, #8
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _08054B38 @ =0x002B001B
	bl sub_08041058
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _08054B3C @ =0x002B001C
	bl sub_08041058
	movs r0, #0x9f
	bl sub_080406E4
	b _08054DF8
	.align 2, 0
_08054AE8: .4byte 0x002B0009
_08054AEC: .4byte 0x002B000A
_08054AF0: .4byte 0x002B000B
_08054AF4: .4byte 0x002B000C
_08054AF8: .4byte 0x002B000D
_08054AFC: .4byte 0x002B000E
_08054B00: .4byte 0x002B000F
_08054B04: .4byte 0x002B0010
_08054B08: .4byte 0x002B0011
_08054B0C: .4byte 0x002B0012
_08054B10: .4byte 0x002B0013
_08054B14: .4byte 0x002B0014
_08054B18: .4byte 0x002B0015
_08054B1C: .4byte 0x002B0016
_08054B20: .4byte 0x002B0017
_08054B24: .4byte 0x0808E9EC
_08054B28: .4byte 0x002B0018
_08054B2C: .4byte 0x002B0019
_08054B30: .4byte 0x002B001A
_08054B34: .4byte 0x00460026
_08054B38: .4byte 0x002B001B
_08054B3C: .4byte 0x002B001C
_08054B40:
	bl sub_08041008
	movs r0, #7
	movs r1, #0xac
	movs r2, #0x26
	bl sub_08041894
	movs r0, #7
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl sub_080418C8
	movs r0, #7
	movs r1, #1
	bl sub_08041808
	movs r0, #0x78
	bl sub_08040690
	movs r0, #7
	movs r1, #0
	bl sub_08041808
	bl sub_08040FE8
	movs r0, #2
	bl sub_08041018
	ldr r0, _08054E0C @ =0x002B0014
	bl sub_08041058
	ldr r0, _08054E10 @ =0x002B001D
	bl sub_08041058
	movs r0, #3
	movs r1, #0
	movs r2, #9
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _08054E14 @ =0x002B001E
	bl sub_08041058
	movs r0, #4
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _08054E18 @ =0x002B001F
	bl sub_08041058
	movs r0, #3
	movs r1, #0
	movs r2, #9
	movs r3, #0
	bl sub_080418C8
	bl sub_08041008
	movs r0, #0x3c
	bl sub_08040690
	ldr r4, _08054E1C @ =0x0808E8DC
	movs r0, #0
	movs r1, #0
	adds r2, r4, #0
	bl sub_080415A0
	movs r0, #0
	movs r1, #0
	bl sub_08041734
	movs r0, #0
	movs r1, #0xf0
	movs r2, #0x68
	bl sub_08041894
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #1
	movs r1, #0
	adds r2, r4, #0
	bl sub_080415A0
	movs r0, #1
	movs r1, #0
	bl sub_08041734
	movs r1, #0x80
	lsls r1, r1, #1
	movs r0, #1
	movs r2, #0x68
	bl sub_08041894
	movs r0, #1
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #2
	movs r1, #0
	adds r2, r4, #0
	bl sub_080415A0
	movs r0, #2
	movs r1, #0
	bl sub_08041734
	movs r1, #0x88
	lsls r1, r1, #1
	movs r0, #2
	movs r2, #0x68
	bl sub_08041894
	movs r0, #2
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #5
	movs r1, #0
	adds r2, r4, #0
	bl sub_080415A0
	movs r0, #5
	movs r1, #0
	bl sub_08041734
	movs r1, #0x90
	lsls r1, r1, #1
	movs r0, #5
	movs r2, #0x68
	bl sub_08041894
	movs r0, #5
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #6
	movs r1, #0
	adds r2, r4, #0
	bl sub_080415A0
	movs r0, #6
	movs r1, #0
	bl sub_08041734
	movs r1, #0x98
	lsls r1, r1, #1
	movs r0, #6
	movs r2, #0x68
	bl sub_08041894
	movs r0, #6
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl sub_080418C8
	bl sub_08054650
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #2
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	movs r1, #0
	movs r2, #2
	movs r3, #0
	bl sub_080418C8
	movs r0, #5
	movs r1, #0
	movs r2, #2
	movs r3, #0
	bl sub_080418C8
	movs r0, #6
	movs r1, #0
	movs r2, #2
	movs r3, #0
	bl sub_080418C8
	movs r0, #0x3c
	bl sub_08040690
	bl sub_08040FE8
	movs r0, #0x1c
	bl sub_08041018
	ldr r0, _08054E20 @ =0x002B0023
	bl sub_08041058
	bl sub_08041008
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #2
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #5
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #6
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl sub_080418C8
	bl sub_080546C8
	movs r0, #0x3c
	bl sub_08040690
	movs r0, #7
	movs r1, #0xac
	movs r2, #0x26
	bl sub_08041894
	movs r0, #7
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl sub_080418C8
	movs r0, #7
	movs r1, #1
	bl sub_08041808
	movs r0, #0x78
	bl sub_08040690
	movs r0, #7
	movs r1, #0
	bl sub_08041808
	movs r0, #0x3c
	bl sub_08040690
	bl sub_08040FE8
	movs r0, #4
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #3
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _08054E24 @ =0x002B0024
	bl sub_08041058
	movs r0, #3
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _08054E28 @ =0x002B0025
	bl sub_08041058
	movs r0, #3
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _08054E2C @ =0x002B0026
	bl sub_08041058
	movs r0, #0xa
	bl sub_08041018
	movs r0, #3
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	ldr r0, _08054E30 @ =0x002B0027
	bl sub_08041058
	movs r0, #0x9f
	bl sub_080406FC
	movs r0, #0xa0
	bl sub_080406FC
	movs r0, #0xa1
	bl sub_080406D0
	movs r0, #0xb
	bl sub_0802D7CC
_08054DF8:
	movs r0, #0xb
	bl sub_0802D7CC
	movs r0, #0x2d
	bl sub_0802D7CC
_08054E04:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08054E0C: .4byte 0x002B0014
_08054E10: .4byte 0x002B001D
_08054E14: .4byte 0x002B001E
_08054E18: .4byte 0x002B001F
_08054E1C: .4byte 0x0808E8DC
_08054E20: .4byte 0x002B0023
_08054E24: .4byte 0x002B0024
_08054E28: .4byte 0x002B0025
_08054E2C: .4byte 0x002B0026
_08054E30: .4byte 0x002B0027

	thumb_func_start sub_08054E34
sub_08054E34: @ 0x08054E34
	push {lr}
	movs r0, #0xa0
	bl sub_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08054E46
	b _08054FAC
_08054E46:
	movs r0, #0x68
	bl sub_08041100
	bl sub_08041138
	movs r0, #0x17
	bl sub_080410A8
	movs r0, #0x3c
	bl sub_08040690
	bl sub_080545FC
	movs r0, #0x3c
	bl sub_08040690
	movs r0, #4
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #3
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	bl sub_08040FE8
	movs r0, #2
	bl sub_08041018
	ldr r0, _08054F84 @ =0x002B0028
	bl sub_08041058
	movs r0, #3
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _08054F88 @ =0x002B0029
	bl sub_08041058
	movs r0, #3
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _08054F8C @ =0x002B002A
	bl sub_08041058
	movs r0, #3
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _08054F90 @ =0x002B002B
	bl sub_08041058
	movs r0, #3
	movs r1, #0x17
	bl sub_08042814
	movs r0, #3
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _08054F94 @ =0x002B002C
	bl sub_08041058
	movs r0, #4
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl sub_080418C8
	ldr r0, _08054F98 @ =0x002B002D
	bl sub_08041058
	movs r0, #3
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _08054F9C @ =0x002B002E
	bl sub_08041058
	movs r0, #3
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #4
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _08054FA0 @ =0x002B002F
	bl sub_08041058
	movs r0, #4
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _08054FA4 @ =0x002B0030
	bl sub_08041058
	movs r0, #3
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _08054FA8 @ =0x002B0031
	bl sub_08041058
	movs r0, #0x6b
	bl sub_08040B84
	movs r0, #0xa1
	bl sub_080406BC
	b _08055046
	.align 2, 0
_08054F84: .4byte 0x002B0028
_08054F88: .4byte 0x002B0029
_08054F8C: .4byte 0x002B002A
_08054F90: .4byte 0x002B002B
_08054F94: .4byte 0x002B002C
_08054F98: .4byte 0x002B002D
_08054F9C: .4byte 0x002B002E
_08054FA0: .4byte 0x002B002F
_08054FA4: .4byte 0x002B0030
_08054FA8: .4byte 0x002B0031
_08054FAC:
	bl sub_08040FE8
	movs r0, #4
	movs r1, #0
	movs r2, #8
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #3
	movs r1, #0
	movs r2, #9
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _0805504C @ =0x002B0032
	bl sub_08041058
	movs r0, #4
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _08055050 @ =0x002B0033
	bl sub_08041058
	movs r0, #4
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _08055054 @ =0x002B0034
	bl sub_08041058
	movs r0, #4
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _08055058 @ =0x002B0035
	bl sub_08041058
	movs r0, #4
	movs r1, #0
	movs r2, #8
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _0805505C @ =0x002B0036
	bl sub_08041058
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _08055060 @ =0x002B0037
	bl sub_08041058
	movs r0, #0x9f
	bl sub_080406FC
	movs r0, #0xa0
	bl sub_080406FC
	movs r0, #0xa1
	bl sub_080406D0
_08055046:
	pop {r0}
	bx r0
	.align 2, 0
_0805504C: .4byte 0x002B0032
_08055050: .4byte 0x002B0033
_08055054: .4byte 0x002B0034
_08055058: .4byte 0x002B0035
_0805505C: .4byte 0x002B0036
_08055060: .4byte 0x002B0037

	thumb_func_start sub_08055064
sub_08055064: @ 0x08055064
	push {lr}
	bl sub_080407FC
	bl sub_08040FE8
	movs r0, #2
	bl sub_08041018
	ldr r0, _08055110 @ =0x002B0038
	bl sub_08041058
	movs r0, #3
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _08055114 @ =0x002B0039
	bl sub_08041058
	movs r0, #4
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl sub_080418C8
	movs r0, #3
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _08055118 @ =0x002B003A
	bl sub_08041058
	movs r0, #3
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _0805511C @ =0x002B003B
	bl sub_08041058
	movs r0, #4
	movs r1, #0
	movs r2, #8
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #3
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _08055120 @ =0x002B003C
	bl sub_08041058
	movs r0, #3
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _08055124 @ =0x002B003D
	bl sub_08041058
	pop {r0}
	bx r0
	.align 2, 0
_08055110: .4byte 0x002B0038
_08055114: .4byte 0x002B0039
_08055118: .4byte 0x002B003A
_0805511C: .4byte 0x002B003B
_08055120: .4byte 0x002B003C
_08055124: .4byte 0x002B003D

	thumb_func_start sub_08055128
sub_08055128: @ 0x08055128
	push {r4, lr}
	bl sub_080405B8
	ldr r0, _080551AC @ =0x0808E3BC
	bl sub_0804115C
	ldr r0, _080551B0 @ =0x0808E67C
	movs r1, #0x10
	movs r2, #0x30
	bl sub_080414B4
	ldr r2, _080551B4 @ =0x0808E7BC
	movs r0, #3
	movs r1, #0
	bl sub_080415A0
	movs r0, #3
	movs r1, #0
	bl sub_08041734
	movs r0, #3
	movs r1, #0x48
	movs r2, #0x68
	bl sub_08041894
	ldr r2, _080551B8 @ =0x0808E70C
	movs r0, #4
	movs r1, #0
	bl sub_080415A0
	movs r0, #4
	movs r1, #0
	bl sub_08041734
	movs r0, #4
	movs r1, #0xa8
	movs r2, #0x68
	bl sub_08041894
	ldr r2, _080551BC @ =0x0808E6BC
	movs r0, #7
	movs r1, #0
	bl sub_080415A0
	movs r0, #7
	movs r1, #0
	bl sub_08041734
	movs r0, #7
	movs r1, #0
	bl sub_08041808
	movs r0, #0xa1
	bl sub_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080551C4
	movs r0, #0x1d
	bl sub_080410A8
	ldr r0, _080551C0 @ =sub_08055064
	bl sub_0804066C
	b _080552B8
	.align 2, 0
_080551AC: .4byte 0x0808E3BC
_080551B0: .4byte 0x0808E67C
_080551B4: .4byte 0x0808E7BC
_080551B8: .4byte 0x0808E70C
_080551BC: .4byte 0x0808E6BC
_080551C0: .4byte sub_08055064
_080551C4:
	bl sub_08040B0C
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080551F4
	movs r0, #0x1d
	bl sub_080410A8
	ldr r0, _080551F0 @ =sub_08054730
	bl sub_0804066C
	movs r0, #0x9f
	bl sub_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080552B8
	movs r0, #0x6b
	bl sub_08040B34
	b _080552B8
	.align 2, 0
_080551F0: .4byte sub_08054730
_080551F4:
	ldr r4, _080552A4 @ =0x0808E9EC
	movs r0, #0
	movs r1, #0
	adds r2, r4, #0
	bl sub_080415A0
	movs r0, #0
	movs r1, #0
	bl sub_08041734
	movs r0, #0
	movs r1, #3
	bl sub_08041864
	movs r0, #0
	movs r1, #0x50
	movs r2, #0x58
	bl sub_08041894
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #1
	movs r1, #0
	adds r2, r4, #0
	bl sub_080415A0
	movs r0, #1
	movs r1, #0
	bl sub_08041734
	movs r0, #1
	movs r1, #3
	bl sub_08041864
	movs r0, #1
	movs r1, #0x70
	movs r2, #0x58
	bl sub_08041894
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #2
	movs r1, #0
	adds r2, r4, #0
	bl sub_080415A0
	movs r0, #2
	movs r1, #0
	bl sub_08041734
	movs r0, #2
	movs r1, #3
	bl sub_08041864
	movs r0, #2
	movs r1, #0x90
	movs r2, #0x58
	bl sub_08041894
	movs r0, #2
	movs r1, #0
	movs r2, #2
	movs r3, #0xff
	bl sub_080418C8
	bl sub_080407FC
	movs r0, #0x17
	bl sub_08040A6C
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	beq _080552A8
	cmp r0, #1
	ble _080552B8
	cmp r0, #2
	beq _080552AE
	b _080552B8
	.align 2, 0
_080552A4: .4byte 0x0808E9EC
_080552A8:
	movs r0, #0xa0
	bl sub_080406E4
_080552AE:
	ldr r0, _0805536C @ =sub_08054E34
	bl sub_0804066C
	bl sub_08040B28
_080552B8:
	bl sub_080410D0
	bl sub_08041008
	bl sub_08040820
	movs r0, #3
	bl sub_080417E0
	movs r0, #3
	movs r1, #0
	bl sub_08041684
	movs r0, #4
	bl sub_080417E0
	movs r0, #4
	movs r1, #0
	bl sub_08041684
	movs r0, #0
	bl sub_080417E0
	movs r0, #0
	movs r1, #0
	bl sub_08041684
	movs r0, #1
	bl sub_080417E0
	movs r0, #1
	movs r1, #0
	bl sub_08041684
	movs r0, #2
	bl sub_080417E0
	movs r0, #2
	movs r1, #0
	bl sub_08041684
	movs r0, #0
	bl sub_080417E0
	movs r0, #0
	movs r1, #0
	bl sub_08041684
	movs r0, #1
	bl sub_080417E0
	movs r0, #1
	movs r1, #0
	bl sub_08041684
	movs r0, #2
	bl sub_080417E0
	movs r0, #2
	movs r1, #0
	bl sub_08041684
	movs r0, #5
	bl sub_080417E0
	movs r0, #5
	movs r1, #0
	bl sub_08041684
	movs r0, #6
	bl sub_080417E0
	movs r0, #6
	movs r1, #0
	bl sub_08041684
	movs r0, #7
	bl sub_080417E0
	movs r0, #7
	movs r1, #0
	bl sub_08041684
	bl sub_08041560
	bl sub_0804062C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805536C: .4byte sub_08054E34

	thumb_func_start sub_08055370
sub_08055370: @ 0x08055370
	push {lr}
	bl sub_08040FE8
	movs r0, #1
	movs r1, #0
	movs r2, #8
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	movs r0, #0x90
	lsls r0, r0, #0xe
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _080554C8 @ =0x00240001
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #8
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _080554CC @ =0x00240002
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _080554D0 @ =0x00240003
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	movs r1, #0x78
	movs r2, #0x20
	bl sub_08041894
	movs r0, #2
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	movs r1, #1
	bl sub_08041808
	movs r0, #0x90
	lsls r0, r0, #1
	bl sub_080410E0
	movs r0, #0x3c
	bl sub_08040690
	movs r0, #2
	movs r1, #0
	bl sub_08041808
	movs r0, #2
	bl sub_08041018
	ldr r0, _080554D4 @ =0x00240004
	bl sub_08041058
	ldr r0, _080554D8 @ =0x00240005
	bl sub_08041058
	ldr r0, _080554DC @ =0x00240006
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080554F0
	movs r0, #2
	movs r1, #0x78
	movs r2, #0x20
	bl sub_08041894
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	movs r1, #1
	bl sub_08041808
	ldr r0, _080554E0 @ =0x0000011F
	bl sub_080410E0
	movs r0, #0x3c
	bl sub_08040690
	movs r0, #2
	movs r1, #0
	bl sub_08041808
	ldr r0, _080554E4 @ =0x00240007
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _080554E8 @ =0x00240008
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0xb
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _080554EC @ =0x00240009
	bl sub_08041058
	b _0805567E
	.align 2, 0
_080554C8: .4byte 0x00240001
_080554CC: .4byte 0x00240002
_080554D0: .4byte 0x00240003
_080554D4: .4byte 0x00240004
_080554D8: .4byte 0x00240005
_080554DC: .4byte 0x00240006
_080554E0: .4byte 0x0000011F
_080554E4: .4byte 0x00240007
_080554E8: .4byte 0x00240008
_080554EC: .4byte 0x00240009
_080554F0:
	ldr r1, _080555D0 @ =0x0024000A
	movs r0, #0x23
	bl sub_080408C4
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08055500
	b _0805567E
_08055500:
	movs r0, #0x16
	bl sub_080410A8
	bl sub_08040FE8
	movs r0, #1
	movs r1, #0
	movs r2, #8
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _080555D4 @ =0x0024000B
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _080555D8 @ =0x0024000C
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _080555DC @ =0x0024000D
	bl sub_08041058
	ldr r0, _080555E0 @ =0x0024000E
	bl sub_08041058
	ldr r0, _080555E4 @ =0x0024000F
	bl sub_08041058
	ldr r0, _080555E8 @ =0x00240010
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080555F8
	movs r0, #1
	movs r1, #0
	movs r2, #8
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _080555EC @ =0x00240011
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _080555F0 @ =0x00240012
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _080555F4 @ =0x00240013
	bl sub_08041058
	b _08055634
	.align 2, 0
_080555D0: .4byte 0x0024000A
_080555D4: .4byte 0x0024000B
_080555D8: .4byte 0x0024000C
_080555DC: .4byte 0x0024000D
_080555E0: .4byte 0x0024000E
_080555E4: .4byte 0x0024000F
_080555E8: .4byte 0x00240010
_080555EC: .4byte 0x00240011
_080555F0: .4byte 0x00240012
_080555F4: .4byte 0x00240013
_080555F8:
	movs r0, #2
	bl sub_08041018
	ldr r0, _08055684 @ =0x00240016
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _08055688 @ =0x00240017
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _0805568C @ =0x00240018
	bl sub_08041058
_08055634:
	ldr r1, _08055690 @ =0x0046002F
	movs r0, #0x76
	bl sub_080427E0
	movs r0, #1
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _08055694 @ =0x00240014
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _08055698 @ =0x00240015
	bl sub_08041058
	movs r0, #0x8c
	bl sub_080406E4
	movs r0, #0xb
	bl sub_0802D7CC
	movs r0, #0x2d
	bl sub_0802D7CC
_0805567E:
	pop {r0}
	bx r0
	.align 2, 0
_08055684: .4byte 0x00240016
_08055688: .4byte 0x00240017
_0805568C: .4byte 0x00240018
_08055690: .4byte 0x0046002F
_08055694: .4byte 0x00240014
_08055698: .4byte 0x00240015

	thumb_func_start sub_0805569C
sub_0805569C: @ 0x0805569C
	push {lr}
	movs r0, #0x8d
	bl sub_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080556AE
	b _08055840
_080556AE:
	movs r0, #0x68
	bl sub_08041100
	bl sub_08041138
	movs r0, #0x16
	bl sub_080410A8
	bl sub_08040FE8
	movs r0, #1
	movs r1, #0
	movs r2, #0xb
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _08055810 @ =0x00240019
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #8
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _08055814 @ =0x0024001A
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl sub_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _08055818 @ =0x0024001B
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _0805581C @ =0x0024001C
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _08055820 @ =0x0024001D
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _08055824 @ =0x0024001E
	bl sub_08041058
	movs r0, #0x3b
	movs r1, #0x16
	bl sub_08042814
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _08055828 @ =0x0024001F
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl sub_080418C8
	ldr r0, _0805582C @ =0x00240020
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _08055830 @ =0x00240021
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _08055834 @ =0x00240022
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl sub_080418C8
	ldr r0, _08055838 @ =0x00240023
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _0805583C @ =0x00240024
	bl sub_08041058
	movs r0, #0x76
	bl sub_08040B84
	movs r0, #0x8e
	bl sub_080406BC
	b _08055922
	.align 2, 0
_08055810: .4byte 0x00240019
_08055814: .4byte 0x0024001A
_08055818: .4byte 0x0024001B
_0805581C: .4byte 0x0024001C
_08055820: .4byte 0x0024001D
_08055824: .4byte 0x0024001E
_08055828: .4byte 0x0024001F
_0805582C: .4byte 0x00240020
_08055830: .4byte 0x00240021
_08055834: .4byte 0x00240022
_08055838: .4byte 0x00240023
_0805583C: .4byte 0x00240024
_08055840:
	bl sub_08040FE8
	movs r0, #1
	movs r1, #0
	movs r2, #8
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #6
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _08055928 @ =0x00240025
	bl sub_08041058
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _0805592C @ =0x00240026
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _08055930 @ =0x00240027
	bl sub_08041058
	ldr r0, _08055934 @ =0x00240028
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl sub_080418C8
	ldr r0, _08055938 @ =0x00240029
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _0805593C @ =0x0024002A
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl sub_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _08055940 @ =0x0024002B
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _08055944 @ =0x0024002C
	bl sub_08041058
	movs r0, #0x8c
	bl sub_080406FC
	movs r0, #0x8d
	bl sub_080406FC
	movs r0, #0x8e
	bl sub_080406D0
_08055922:
	pop {r0}
	bx r0
	.align 2, 0
_08055928: .4byte 0x00240025
_0805592C: .4byte 0x00240026
_08055930: .4byte 0x00240027
_08055934: .4byte 0x00240028
_08055938: .4byte 0x00240029
_0805593C: .4byte 0x0024002A
_08055940: .4byte 0x0024002B
_08055944: .4byte 0x0024002C

	thumb_func_start sub_08055948
sub_08055948: @ 0x08055948
	push {lr}
	bl sub_08040FE8
	movs r0, #2
	bl sub_08041018
	ldr r0, _080559C0 @ =0x0024002D
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _080559C4 @ =0x0024002E
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #0xb
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	bl sub_08041018
	ldr r0, _080559C8 @ =0x0024002F
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	bl sub_08041018
	ldr r0, _080559CC @ =0x00240030
	bl sub_08041058
	movs r0, #2
	bl sub_08041018
	ldr r0, _080559D0 @ =0x00240031
	bl sub_08041058
	pop {r0}
	bx r0
	.align 2, 0
_080559C0: .4byte 0x0024002D
_080559C4: .4byte 0x0024002E
_080559C8: .4byte 0x0024002F
_080559CC: .4byte 0x00240030
_080559D0: .4byte 0x00240031

	thumb_func_start sub_080559D4
sub_080559D4: @ 0x080559D4
	push {lr}
	bl sub_080405B8
	ldr r0, _08055A5C @ =0x0808E3E4
	bl sub_0804115C
	ldr r0, _08055A60 @ =0x0818043C
	movs r1, #0
	movs r2, #0x3c
	bl sub_08041464
	ldr r2, _08055A64 @ =0x0808E7BC
	movs r0, #0
	movs r1, #0
	bl sub_080415A0
	movs r0, #0
	movs r1, #0
	bl sub_08041734
	movs r0, #0
	movs r1, #0x48
	movs r2, #0x68
	bl sub_08041894
	ldr r2, _08055A68 @ =0x0808E70C
	movs r0, #1
	movs r1, #0
	bl sub_080415A0
	movs r0, #1
	movs r1, #0
	bl sub_08041734
	movs r0, #1
	movs r1, #0x78
	movs r2, #0x5c
	bl sub_08041894
	ldr r2, _08055A6C @ =0x0808E6BC
	movs r0, #2
	movs r1, #0
	bl sub_080415A0
	movs r0, #2
	movs r1, #0
	bl sub_08041734
	movs r0, #2
	movs r1, #0
	bl sub_08041808
	bl sub_080407FC
	movs r0, #0x8e
	bl sub_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08055A74
	movs r0, #0x1e
	bl sub_080410A8
	ldr r0, _08055A70 @ =sub_08055948
	bl sub_0804066C
	b _08055ACC
	.align 2, 0
_08055A5C: .4byte 0x0808E3E4
_08055A60: .4byte 0x0818043C
_08055A64: .4byte 0x0808E7BC
_08055A68: .4byte 0x0808E70C
_08055A6C: .4byte 0x0808E6BC
_08055A70: .4byte sub_08055948
_08055A74:
	bl sub_08040B0C
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08055AA4
	movs r0, #0x1e
	bl sub_080410A8
	ldr r0, _08055AA0 @ =sub_08055370
	bl sub_0804066C
	movs r0, #0x8c
	bl sub_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08055ACC
	movs r0, #0x76
	bl sub_08040B34
	b _08055ACC
	.align 2, 0
_08055AA0: .4byte sub_08055370
_08055AA4:
	movs r0, #0x16
	bl sub_08040A6C
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	beq _08055ABC
	cmp r0, #1
	ble _08055ACC
	cmp r0, #2
	beq _08055AC2
	b _08055ACC
_08055ABC:
	movs r0, #0x8d
	bl sub_080406E4
_08055AC2:
	ldr r0, _08055B10 @ =sub_0805569C
	bl sub_0804066C
	bl sub_08040B28
_08055ACC:
	bl sub_080410D0
	bl sub_08041008
	bl sub_08040820
	movs r0, #0
	bl sub_080417E0
	movs r0, #0
	movs r1, #0
	bl sub_08041684
	movs r0, #1
	bl sub_080417E0
	movs r0, #1
	movs r1, #0
	bl sub_08041684
	movs r0, #2
	bl sub_080417E0
	movs r0, #2
	movs r1, #0
	bl sub_08041684
	bl sub_08041498
	bl sub_0804062C
	pop {r0}
	bx r0
	.align 2, 0
_08055B10: .4byte sub_0805569C

	thumb_func_start sub_08055B14
sub_08055B14: @ 0x08055B14
	push {lr}
	sub sp, #4
	ldr r1, _08055B30 @ =0x0808DC5C
	mov r0, sp
	movs r2, #3
	bl memcpy
	mov r0, sp
	movs r1, #3
	bl sub_08041E18
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_08055B30: .4byte 0x0808DC5C

	thumb_func_start sub_08055B34
sub_08055B34: @ 0x08055B34
	push {r4, lr}
	sub sp, #0xc
	movs r0, #2
	movs r1, #0x40
	movs r2, #0x88
	bl sub_08041894
	movs r0, #1
	movs r1, #0
	movs r2, #5
	movs r3, #0xff
	bl sub_080418C8
	mov r1, sp
	ldr r0, _08055BD8 @ =0x0808DC60
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	movs r0, #1
	movs r1, #0
	mov r2, sp
	bl sub_08041D0C
	bl sub_080407FC
	bl sub_08040FE8
	movs r0, #0xe
	bl sub_08041018
	movs r0, #0xa0
	lsls r0, r0, #0xb
	bl sub_08041058
	ldr r0, _08055BDC @ =0x00050001
	bl sub_08041058
	ldr r0, _08055BE0 @ =0x00050002
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	bne _08055BE8
	movs r0, #1
	bl sub_08041DE0
	movs r0, #1
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #3
	movs r1, #0x88
	movs r2, #0x38
	bl sub_08041894
	movs r0, #3
	movs r1, #0
	movs r2, #2
	movs r3, #0
	bl sub_080418C8
	movs r0, #3
	movs r1, #1
	bl sub_08041808
	movs r0, #0x91
	lsls r0, r0, #1
	bl sub_080410E0
	ldr r0, _08055BE4 @ =0x00050003
	bl sub_08041058
	movs r0, #0x99
	lsls r0, r0, #1
	bl sub_080410F0
	b _08055F14
	.align 2, 0
_08055BD8: .4byte 0x0808DC60
_08055BDC: .4byte 0x00050001
_08055BE0: .4byte 0x00050002
_08055BE4: .4byte 0x00050003
_08055BE8:
	movs r0, #0x99
	lsls r0, r0, #1
	bl sub_080410F0
	ldr r1, _08055E10 @ =0x00050004
	movs r0, #4
	bl sub_080408C4
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08055C00
	b _08055F14
_08055C00:
	movs r0, #0x10
	bl sub_080410A8
	movs r0, #1
	bl sub_08041DE0
	movs r0, #1
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl sub_080418C8
	bl sub_08040FE8
	movs r0, #0xe
	bl sub_08041018
	ldr r0, _08055E14 @ =0x00050005
	bl sub_08041058
	ldr r0, _08055E18 @ =0x00050006
	bl sub_08041058
	movs r0, #0x36
	bl sub_08041018
	ldr r0, _08055E1C @ =0x00050007
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #4
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _08055E20 @ =0x0000011B
	bl sub_080410E0
	movs r0, #2
	movs r1, #0x40
	movs r2, #0
	movs r3, #0x10
	bl sub_08041938
	movs r0, #0x3c
	bl sub_08040690
	movs r0, #2
	movs r1, #0x40
	movs r2, #0x38
	movs r3, #0xc
	bl sub_08041938
	movs r0, #0x8f
	lsls r0, r0, #1
	bl sub_080410E0
	movs r0, #0xe
	bl sub_08041018
	ldr r0, _08055E24 @ =0x00050008
	bl sub_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #0xc
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0x36
	bl sub_08041018
	ldr r0, _08055E28 @ =0x00050009
	bl sub_08041058
	ldr r0, _08055E2C @ =0x0005000A
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #9
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0xe
	bl sub_08041018
	ldr r0, _08055E30 @ =0x0005000B
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #8
	movs r3, #0
	bl sub_080418C8
	movs r0, #0x36
	bl sub_08041018
	ldr r0, _08055E34 @ =0x0005000C
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #9
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0xe
	bl sub_08041018
	ldr r0, _08055E38 @ =0x0005000D
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #8
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl sub_080418C8
	movs r0, #0x36
	bl sub_08041018
	ldr r0, _08055E3C @ =0x0005000E
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #9
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0xe
	bl sub_08041018
	ldr r0, _08055E40 @ =0x0005000F
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #8
	movs r3, #0
	bl sub_080418C8
	movs r0, #0x36
	bl sub_08041018
	ldr r0, _08055E44 @ =0x00050010
	bl sub_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #0xc
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _08055E48 @ =0x00050011
	bl sub_08041058
	movs r0, #3
	movs r1, #0x70
	movs r2, #0x48
	bl sub_08041894
	movs r0, #3
	movs r1, #0
	movs r2, #6
	movs r3, #1
	bl sub_080418C8
	movs r0, #3
	movs r1, #1
	bl sub_08041808
	ldr r0, _08055E4C @ =0x00000129
	bl sub_080410E0
	movs r0, #0x3c
	bl sub_08040690
	movs r0, #3
	movs r1, #0
	bl sub_08041808
	movs r0, #1
	movs r1, #0
	movs r2, #9
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0xe
	bl sub_08041018
	ldr r0, _08055E50 @ =0x00050012
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #8
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	movs r1, #0
	movs r2, #0xd
	movs r3, #0
	bl sub_080418C8
	movs r0, #0x36
	bl sub_08041018
	ldr r0, _08055E54 @ =0x00050013
	bl sub_08041058
	ldr r0, _08055E58 @ =0x00050014
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #6
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	bl sub_080408B8
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r0, #8
	bl sub_08005BE0
	ldr r0, _08055E5C @ =0x00050015
	bl sub_08041058
	ldr r0, _08055E60 @ =0x00050016
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08055E68
	movs r0, #2
	movs r1, #0
	movs r2, #0xc
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _08055E64 @ =0x00050017
	bl sub_08041058
	b _08055E6E
	.align 2, 0
_08055E10: .4byte 0x00050004
_08055E14: .4byte 0x00050005
_08055E18: .4byte 0x00050006
_08055E1C: .4byte 0x00050007
_08055E20: .4byte 0x0000011B
_08055E24: .4byte 0x00050008
_08055E28: .4byte 0x00050009
_08055E2C: .4byte 0x0005000A
_08055E30: .4byte 0x0005000B
_08055E34: .4byte 0x0005000C
_08055E38: .4byte 0x0005000D
_08055E3C: .4byte 0x0005000E
_08055E40: .4byte 0x0005000F
_08055E44: .4byte 0x00050010
_08055E48: .4byte 0x00050011
_08055E4C: .4byte 0x00000129
_08055E50: .4byte 0x00050012
_08055E54: .4byte 0x00050013
_08055E58: .4byte 0x00050014
_08055E5C: .4byte 0x00050015
_08055E60: .4byte 0x00050016
_08055E64: .4byte 0x00050017
_08055E68:
	ldr r0, _08055F1C @ =0x0005001E
	bl sub_08041058
_08055E6E:
	movs r0, #2
	movs r1, #0
	movs r2, #0xe
	movs r3, #0
	bl sub_080418C8
	ldr r0, _08055F20 @ =0x00050018
	bl sub_08041058
	movs r0, #0x3c
	bl sub_08040690
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0xe
	bl sub_08041018
	ldr r0, _08055F24 @ =0x00050019
	bl sub_08041058
	ldr r0, _08055F28 @ =0x0005001A
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #6
	movs r3, #0
	bl sub_080418C8
	ldr r0, _08055F2C @ =sub_08055B14
	bl sub_0804066C
	movs r0, #0x78
	bl sub_08040690
	bl sub_08041F3C
	movs r0, #2
	movs r1, #0
	movs r2, #0xc
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0x36
	bl sub_08041018
	ldr r0, _08055F30 @ =0x0005001B
	bl sub_08041058
	ldr r0, _08055F34 @ =0x0005001C
	bl sub_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	ldr r0, _08055F38 @ =0x0005001D
	bl sub_08041058
	movs r0, #0x12
	bl sub_080406E4
	movs r0, #7
	bl sub_0802D7CC
	movs r0, #0x2a
	bl sub_0802D7CC
	movs r0, #3
	bl sub_0802D7CC
	movs r0, #0xe
	bl sub_0802D7CC
	movs r0, #0x24
	bl sub_0802D7CC
_08055F14:
	add sp, #0xc
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08055F1C: .4byte 0x0005001E
_08055F20: .4byte 0x00050018
_08055F24: .4byte 0x00050019
_08055F28: .4byte 0x0005001A
_08055F2C: .4byte sub_08055B14
_08055F30: .4byte 0x0005001B
_08055F34: .4byte 0x0005001C
_08055F38: .4byte 0x0005001D

	thumb_func_start sub_08055F3C
sub_08055F3C: @ 0x08055F3C
	push {lr}
	sub sp, #4
	ldr r1, _08055F88 @ =0x0808DC5C
	mov r0, sp
	movs r2, #3
	bl memcpy
_08055F4A:
	mov r0, sp
	movs r1, #3
	bl sub_08041F9C
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _08055F9C
	cmp r0, #1
	beq _08055FD4
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0xe
	bl sub_08041018
	ldr r0, _08055F8C @ =0x00050027
	bl sub_08041058
	ldr r0, _08055F90 @ =0x00050028
	bl sub_08041058
	ldr r0, _08055F94 @ =0x00050029
	bl sub_08041058
	ldr r0, _08055F98 @ =0x0005002A
	b _08055FFA
	.align 2, 0
_08055F88: .4byte 0x0808DC5C
_08055F8C: .4byte 0x00050027
_08055F90: .4byte 0x00050028
_08055F94: .4byte 0x00050029
_08055F98: .4byte 0x0005002A
_08055F9C:
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0xe
	bl sub_08041018
	ldr r0, _08055FC4 @ =0x0005001F
	bl sub_08041058
	ldr r0, _08055FC8 @ =0x00050020
	bl sub_08041058
	ldr r0, _08055FCC @ =0x00050021
	bl sub_08041058
	ldr r0, _08055FD0 @ =0x00050022
	b _08055FFA
	.align 2, 0
_08055FC4: .4byte 0x0005001F
_08055FC8: .4byte 0x00050020
_08055FCC: .4byte 0x00050021
_08055FD0: .4byte 0x00050022
_08055FD4:
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0xe
	bl sub_08041018
	ldr r0, _08056040 @ =0x00050023
	bl sub_08041058
	ldr r0, _08056044 @ =0x00050024
	bl sub_08041058
	ldr r0, _08056048 @ =0x00050025
	bl sub_08041058
	ldr r0, _0805604C @ =0x00050026
_08055FFA:
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #6
	movs r3, #0
	bl sub_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #0x36
	bl sub_08041018
	ldr r0, _08056050 @ =0x0005002B
	bl sub_08041058
	ldr r0, _08056054 @ =0x0005002C
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	beq _08055F4A
	ldr r0, _08056058 @ =0x0005002D
	bl sub_08041058
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_08056040: .4byte 0x00050023
_08056044: .4byte 0x00050024
_08056048: .4byte 0x00050025
_0805604C: .4byte 0x00050026
_08056050: .4byte 0x0005002B
_08056054: .4byte 0x0005002C
_08056058: .4byte 0x0005002D

	thumb_func_start sub_0805605C
sub_0805605C: @ 0x0805605C
	push {lr}
	sub sp, #4
	ldr r1, _080563F0 @ =0x0808DC5C
	mov r0, sp
	movs r2, #3
	bl memcpy
	ldr r0, _080563F4 @ =0x0005002E
	bl sub_08041058
	mov r0, sp
	movs r1, #3
	bl sub_08041F9C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08056080
	b _0805645C
_08056080:
	ldr r0, _080563F8 @ =0x0005002F
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl sub_080418C8
	movs r0, #0
	movs r1, #0xb4
	movs r2, #0x70
	movs r3, #0xa
	bl sub_08041938
	ldr r0, _080563FC @ =0x0000011B
	bl sub_080410E0
	movs r0, #0x3c
	bl sub_08040690
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0
	movs r1, #0xb4
	movs r2, #0x68
	bl sub_08041894
	movs r0, #2
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl sub_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #7
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xf
	bl sub_08041018
	ldr r0, _08056400 @ =0x00050030
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl sub_080418C8
	ldr r0, _08056404 @ =0x00050031
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #6
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	movs r1, #0
	movs r2, #0xd
	movs r3, #0
	bl sub_080418C8
	movs r0, #0x36
	bl sub_08041018
	ldr r0, _08056408 @ =0x00050032
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #7
	movs r3, #0
	bl sub_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0xf
	bl sub_08041018
	ldr r0, _0805640C @ =0x00050033
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #6
	movs r3, #0
	bl sub_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl sub_080418C8
	movs r0, #0x36
	bl sub_08041018
	ldr r0, _08056410 @ =0x00050034
	bl sub_08041058
	ldr r0, _08056414 @ =0x00050035
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #7
	movs r3, #0
	bl sub_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0xf
	bl sub_08041018
	ldr r0, _08056418 @ =0x00050036
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #6
	movs r3, #0
	bl sub_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	movs r1, #0
	movs r2, #0xe
	movs r3, #0
	bl sub_080418C8
	movs r0, #0x36
	bl sub_08041018
	ldr r0, _0805641C @ =0x00050037
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #7
	movs r3, #0
	bl sub_080418C8
	movs r0, #3
	movs r1, #0xb8
	movs r2, #0x40
	bl sub_08041894
	movs r0, #3
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl sub_080418C8
	movs r0, #3
	movs r1, #1
	bl sub_08041808
	movs r0, #0x90
	lsls r0, r0, #1
	bl sub_080410E0
	movs r0, #0xf
	bl sub_08041018
	ldr r0, _08056420 @ =0x00050038
	bl sub_08041058
	movs r0, #3
	movs r1, #0
	bl sub_08041808
	movs r0, #1
	movs r1, #0
	movs r2, #6
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl sub_080418C8
	movs r0, #0x36
	bl sub_08041018
	ldr r0, _08056424 @ =0x00050039
	bl sub_08041058
	movs r0, #3
	movs r1, #0xbc
	movs r2, #0x40
	bl sub_08041894
	movs r0, #3
	movs r1, #0
	movs r2, #5
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #3
	movs r1, #1
	bl sub_08041808
	movs r0, #1
	movs r1, #0
	movs r2, #7
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xf
	bl sub_08041018
	ldr r0, _08056428 @ =0x0005003A
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _0805642C @ =0x0005003B
	bl sub_08041058
	ldr r0, _08056430 @ =0x0005003C
	bl sub_08041058
	ldr r0, _08056434 @ =0x0005003D
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #6
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	movs r1, #0
	movs r2, #0xe
	movs r3, #0
	bl sub_080418C8
	movs r0, #0x36
	bl sub_08041018
	ldr r0, _08056438 @ =0x0005003E
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #7
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xf
	bl sub_08041018
	ldr r0, _0805643C @ =0x0005003F
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #6
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl sub_080418C8
	movs r0, #0x36
	bl sub_08041018
	ldr r0, _08056440 @ =0x00050040
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #7
	movs r3, #0
	bl sub_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl sub_080418C8
	movs r0, #3
	movs r1, #0
	bl sub_08041808
	movs r0, #0xf
	bl sub_08041018
	ldr r0, _08056444 @ =0x00050041
	bl sub_08041058
	bl sub_08041008
	movs r0, #0x8e
	lsls r0, r0, #1
	bl sub_080410E0
	movs r0, #0
	movs r1, #0
	movs r2, #2
	movs r3, #0
	bl sub_080418C8
	movs r1, #0x82
	lsls r1, r1, #1
	movs r0, #0
	movs r2, #0x68
	movs r3, #0x10
	bl sub_08041938
	bl sub_08040FE8
	movs r0, #1
	movs r1, #0
	movs r2, #6
	movs r3, #0
	bl sub_080418C8
	movs r0, #2
	movs r1, #0
	movs r2, #0xc
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0x36
	bl sub_08041018
	ldr r0, _08056448 @ =0x00050042
	bl sub_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	ldr r0, _0805644C @ =0x00050043
	bl sub_08041058
	bl sub_08041008
	movs r0, #2
	movs r1, #0
	movs r2, #7
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #2
	movs r1, #0
	movs r2, #0x38
	movs r3, #0x78
	bl sub_08041938
	movs r0, #2
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl sub_080418C8
	bl sub_08040FE8
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0xe
	bl sub_08041018
	ldr r0, _08056450 @ =0x00050044
	bl sub_08041058
	ldr r0, _08056454 @ =0x00050045
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xa
	movs r1, #0x10
	bl sub_08042814
	movs r0, #0xe
	bl sub_08041018
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _08056458 @ =0x00050046
	bl sub_08041058
	movs r0, #0x15
	bl sub_080406BC
	b _080564C8
	.align 2, 0
_080563F0: .4byte 0x0808DC5C
_080563F4: .4byte 0x0005002E
_080563F8: .4byte 0x0005002F
_080563FC: .4byte 0x0000011B
_08056400: .4byte 0x00050030
_08056404: .4byte 0x00050031
_08056408: .4byte 0x00050032
_0805640C: .4byte 0x00050033
_08056410: .4byte 0x00050034
_08056414: .4byte 0x00050035
_08056418: .4byte 0x00050036
_0805641C: .4byte 0x00050037
_08056420: .4byte 0x00050038
_08056424: .4byte 0x00050039
_08056428: .4byte 0x0005003A
_0805642C: .4byte 0x0005003B
_08056430: .4byte 0x0005003C
_08056434: .4byte 0x0005003D
_08056438: .4byte 0x0005003E
_0805643C: .4byte 0x0005003F
_08056440: .4byte 0x00050040
_08056444: .4byte 0x00050041
_08056448: .4byte 0x00050042
_0805644C: .4byte 0x00050043
_08056450: .4byte 0x00050044
_08056454: .4byte 0x00050045
_08056458: .4byte 0x00050046
_0805645C:
	movs r0, #2
	movs r1, #0
	movs r2, #0xd
	movs r3, #0
	bl sub_080418C8
	movs r0, #0x36
	bl sub_08041018
	ldr r0, _080564D0 @ =0x00050047
	bl sub_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #0xe
	movs r3, #0
	bl sub_080418C8
	ldr r0, _080564D4 @ =0x00050048
	bl sub_08041058
	movs r0, #0x3c
	bl sub_08040690
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0xe
	bl sub_08041018
	ldr r0, _080564D8 @ =0x00050049
	bl sub_08041058
	ldr r0, _080564DC @ =0x0005004A
	bl sub_08041058
	ldr r0, _080564E0 @ =0x0005004B
	bl sub_08041058
	movs r0, #0x12
	bl sub_080406FC
	movs r0, #0x13
	bl sub_080406FC
	movs r0, #0x14
	bl sub_080406FC
	movs r0, #0x15
	bl sub_080406D0
_080564C8:
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_080564D0: .4byte 0x00050047
_080564D4: .4byte 0x00050048
_080564D8: .4byte 0x00050049
_080564DC: .4byte 0x0005004A
_080564E0: .4byte 0x0005004B

	thumb_func_start sub_080564E4
sub_080564E4: @ 0x080564E4
	push {lr}
	movs r0, #1
	movs r1, #0
	movs r2, #2
	movs r3, #0xff
	bl sub_080418C8
	bl sub_080407FC
	bl sub_08040FE8
	movs r0, #0xe
	bl sub_08041018
	ldr r0, _0805653C @ =0x0005004C
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _08056540 @ =0x0005004D
	bl sub_08041058
	ldr r0, _08056544 @ =0x0005004E
	bl sub_08041058
	ldr r0, _08056548 @ =0x0005004F
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #2
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _0805654C @ =0x00050050
	bl sub_08041058
	pop {r0}
	bx r0
	.align 2, 0
_0805653C: .4byte 0x0005004C
_08056540: .4byte 0x0005004D
_08056544: .4byte 0x0005004E
_08056548: .4byte 0x0005004F
_0805654C: .4byte 0x00050050

	thumb_func_start sub_08056550
sub_08056550: @ 0x08056550
	push {lr}
	bl sub_080405B8
	ldr r0, _08056608 @ =0x0808E40C
	bl sub_0804115C
	ldr r0, _0805660C @ =0x0808E68C
	movs r1, #0x78
	movs r2, #0x68
	bl sub_080414B4
	ldr r2, _08056610 @ =0x0808E80C
	movs r0, #1
	movs r1, #0
	bl sub_080415A0
	movs r0, #1
	movs r1, #0
	bl sub_08041734
	movs r0, #1
	movs r1, #0x78
	movs r2, #0x68
	bl sub_08041894
	movs r0, #1
	movs r1, #0xc8
	bl sub_08041830
	ldr r2, _08056614 @ =0x0808EA4C
	movs r0, #2
	movs r1, #0
	bl sub_080415A0
	movs r0, #2
	movs r1, #0
	bl sub_08041734
	movs r0, #1
	movs r1, #0xc9
	bl sub_08041830
	ldr r2, _08056618 @ =0x0808E81C
	movs r0, #0
	movs r1, #0
	bl sub_080415A0
	movs r0, #0
	movs r1, #0
	bl sub_08041734
	movs r0, #0
	movs r1, #0xb4
	movs r2, #0x8c
	bl sub_08041894
	movs r0, #0
	movs r1, #0xca
	bl sub_08041830
	ldr r2, _0805661C @ =0x0808E6BC
	movs r0, #3
	movs r1, #0
	bl sub_080415A0
	movs r0, #3
	movs r1, #0
	bl sub_08041734
	movs r0, #3
	movs r1, #0x7c
	movs r2, #0x44
	bl sub_08041894
	movs r0, #3
	movs r1, #0
	bl sub_08041808
	movs r0, #0x15
	bl sub_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08056624
	movs r0, #0x1e
	bl sub_080410A8
	ldr r0, _08056620 @ =sub_080564E4
	bl sub_0804066C
	b _0805664A
	.align 2, 0
_08056608: .4byte 0x0808E40C
_0805660C: .4byte 0x0808E68C
_08056610: .4byte 0x0808E80C
_08056614: .4byte 0x0808EA4C
_08056618: .4byte 0x0808E81C
_0805661C: .4byte 0x0808E6BC
_08056620: .4byte sub_080564E4
_08056624:
	movs r0, #0x99
	lsls r0, r0, #1
	bl sub_080410E0
	ldr r0, _0805669C @ =sub_08055B34
	bl sub_0804066C
	movs r0, #0x12
	bl sub_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0805664A
	ldr r0, _080566A0 @ =sub_08055F3C
	bl sub_0804066C
	ldr r0, _080566A4 @ =sub_0805605C
	bl sub_0804066C
_0805664A:
	bl sub_080410D0
	bl sub_08041008
	bl sub_08040820
	movs r0, #1
	bl sub_080417E0
	movs r0, #1
	movs r1, #0
	bl sub_08041684
	movs r0, #2
	bl sub_080417E0
	movs r0, #2
	movs r1, #0
	bl sub_08041684
	movs r0, #0
	bl sub_080417E0
	movs r0, #0
	movs r1, #0
	bl sub_08041684
	movs r0, #3
	bl sub_080417E0
	movs r0, #3
	movs r1, #0
	bl sub_08041684
	bl sub_08041560
	bl sub_0804062C
	pop {r0}
	bx r0
	.align 2, 0
_0805669C: .4byte sub_08055B34
_080566A0: .4byte sub_08055F3C
_080566A4: .4byte sub_0805605C

	thumb_func_start sub_080566A8
sub_080566A8: @ 0x080566A8
	push {lr}
	bl sub_08040FE8
	movs r0, #9
	bl sub_08041058
	movs r0, #0xa
	bl sub_08041058
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080566C0
sub_080566C0: @ 0x080566C0
	push {lr}
	bl sub_08040FE8
	ldr r0, _08056708 @ =0x000A0015
	bl sub_08041058
	ldr r0, _0805670C @ =0x000A0016
	bl sub_08041058
_080566D2:
	ldr r0, _08056710 @ =0x000A0017
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805671C
	ldr r0, _08056714 @ =0x0808E69C
	movs r1, #0x78
	movs r2, #0x45
	bl sub_080414B4
	movs r0, #0x94
	lsls r0, r0, #1
	bl sub_080410E0
	ldr r0, _08056718 @ =0x000A0018
	bl sub_08041058
	bl sub_08041560
	movs r0, #0x26
	bl sub_080406E4
	b _0805672C
	.align 2, 0
_08056708: .4byte 0x000A0015
_0805670C: .4byte 0x000A0016
_08056710: .4byte 0x000A0017
_08056714: .4byte 0x0808E69C
_08056718: .4byte 0x000A0018
_0805671C:
	ldr r0, _08056730 @ =0x000A0019
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080566D2
_0805672C:
	pop {r0}
	bx r0
	.align 2, 0
_08056730: .4byte 0x000A0019

	thumb_func_start sub_08056734
sub_08056734: @ 0x08056734
	push {lr}
	bl sub_080405B8
	ldr r0, _08056770 @ =0x0808E434
	bl sub_0804115C
	ldr r0, _08056774 @ =0x00000131
	bl sub_080410E0
	bl sub_080407FC
	movs r0, #0x25
	bl sub_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0805677C
	movs r0, #0x26
	bl sub_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805677C
	movs r0, #0x11
	bl sub_080410A8
	ldr r0, _08056778 @ =sub_080566C0
	bl sub_0804066C
	b _08056788
	.align 2, 0
_08056770: .4byte 0x0808E434
_08056774: .4byte 0x00000131
_08056778: .4byte sub_080566C0
_0805677C:
	movs r0, #0x1e
	bl sub_080410A8
	ldr r0, _080567A4 @ =sub_080566A8
	bl sub_0804066C
_08056788:
	ldr r0, _080567A8 @ =0x00000131
	bl sub_080410F0
	bl sub_080410D0
	bl sub_08041008
	bl sub_08040820
	bl sub_0804062C
	pop {r0}
	bx r0
	.align 2, 0
_080567A4: .4byte sub_080566A8
_080567A8: .4byte 0x00000131

	thumb_func_start sub_080567AC
sub_080567AC: @ 0x080567AC
	push {lr}
	bl sub_08040FE8
	movs r0, #0xb
	bl sub_08041018
	movs r0, #0
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl sub_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0xe0
	lsls r0, r0, #0xd
	bl sub_08041058
	ldr r0, _08056810 @ =0x001C0001
	bl sub_08041058
	ldr r0, _08056814 @ =0x001C0002
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0805681C
	movs r0, #0
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl sub_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #2
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _08056818 @ =0x001C0003
	bl sub_08041058
	b _08056980
	.align 2, 0
_08056810: .4byte 0x001C0001
_08056814: .4byte 0x001C0002
_08056818: .4byte 0x001C0003
_0805681C:
	ldr r1, _080568E0 @ =0x001C0004
	movs r0, #0x1b
	bl sub_080408C4
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805682C
	b _08056980
_0805682C:
	movs r0, #0x15
	bl sub_080410A8
	bl sub_08040FE8
	movs r0, #0xb
	bl sub_08041018
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _080568E4 @ =0x001C0005
	bl sub_08041058
	ldr r0, _080568E8 @ =0x001C0006
	bl sub_08041058
	ldr r0, _080568EC @ =0x001C0007
	bl sub_08041058
	ldr r0, _080568F0 @ =0x001C0008
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl sub_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _080568F4 @ =0x001C0009
	bl sub_08041058
	ldr r0, _080568F8 @ =0x001C000A
	bl sub_08041058
	ldr r0, _080568FC @ =0x001C000B
	bl sub_08041058
	ldr r0, _08056900 @ =0x001C000C
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08056908
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _08056904 @ =0x001C000D
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl sub_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0xff
	bl sub_080418C8
	b _08056944
	.align 2, 0
_080568E0: .4byte 0x001C0004
_080568E4: .4byte 0x001C0005
_080568E8: .4byte 0x001C0006
_080568EC: .4byte 0x001C0007
_080568F0: .4byte 0x001C0008
_080568F4: .4byte 0x001C0009
_080568F8: .4byte 0x001C000A
_080568FC: .4byte 0x001C000B
_08056900: .4byte 0x001C000C
_08056904: .4byte 0x001C000D
_08056908:
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _08056984 @ =0x001C0012
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl sub_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _08056988 @ =0x001C0013
	bl sub_08041058
_08056944:
	ldr r0, _0805698C @ =0x001C000E
	bl sub_08041058
	ldr r0, _08056990 @ =0x001C000F
	bl sub_08041058
	ldr r0, _08056994 @ =0x001C0010
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl sub_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _08056998 @ =0x001C0011
	bl sub_08041058
	movs r0, #0x6e
	bl sub_080406E4
	movs r0, #0x13
	bl sub_0802D7CC
_08056980:
	pop {r0}
	bx r0
	.align 2, 0
_08056984: .4byte 0x001C0012
_08056988: .4byte 0x001C0013
_0805698C: .4byte 0x001C000E
_08056990: .4byte 0x001C000F
_08056994: .4byte 0x001C0010
_08056998: .4byte 0x001C0011

	thumb_func_start sub_0805699C
sub_0805699C: @ 0x0805699C
	push {lr}
	bl sub_08040FE8
	movs r0, #0xb
	bl sub_08041018
	ldr r0, _080569D8 @ =0x001C0014
	bl sub_08041058
	ldr r0, _080569DC @ =0x001C0015
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl sub_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _080569E0 @ =0x001C0011
	bl sub_08041058
	pop {r0}
	bx r0
	.align 2, 0
_080569D8: .4byte 0x001C0014
_080569DC: .4byte 0x001C0015
_080569E0: .4byte 0x001C0011

	thumb_func_start sub_080569E4
sub_080569E4: @ 0x080569E4
	push {lr}
	bl sub_08040FE8
	movs r0, #0xb
	bl sub_08041018
	ldr r0, _08056A84 @ =0x001C0027
	bl sub_08041058
	ldr r0, _08056A88 @ =0x001C0028
	bl sub_08041058
	ldr r0, _08056A8C @ =0x001C0029
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	beq _08056AA8
	ldr r0, _08056A90 @ =0x001C0030
	bl sub_08041058
	ldr r0, _08056A94 @ =0x001C0031
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl sub_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #2
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _08056A98 @ =0x001C0032
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl sub_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _08056A9C @ =0x001C0033
	bl sub_08041058
	ldr r0, _08056AA0 @ =0x001C0034
	bl sub_08041058
	ldr r0, _08056AA4 @ =0x001C0035
	bl sub_08041058
	movs r0, #0x6e
	bl sub_080406FC
	movs r0, #0x6f
	bl sub_080406FC
	movs r0, #0x70
	bl sub_080406FC
	movs r0, #0x71
	bl sub_080406FC
	movs r0, #0x72
	bl sub_080406D0
	b _08056B28
	.align 2, 0
_08056A84: .4byte 0x001C0027
_08056A88: .4byte 0x001C0028
_08056A8C: .4byte 0x001C0029
_08056A90: .4byte 0x001C0030
_08056A94: .4byte 0x001C0031
_08056A98: .4byte 0x001C0032
_08056A9C: .4byte 0x001C0033
_08056AA0: .4byte 0x001C0034
_08056AA4: .4byte 0x001C0035
_08056AA8:
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _08056B2C @ =0x001C002A
	bl sub_08041058
	ldr r0, _08056B30 @ =0x001C002B
	bl sub_08041058
	ldr r0, _08056B34 @ =0x001C002C
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl sub_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _08056B38 @ =0x001C002D
	bl sub_08041058
	movs r0, #9
	movs r1, #0x15
	bl sub_08042814
	movs r0, #0xb
	bl sub_08041018
	ldr r0, _08056B3C @ =0x001C002E
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl sub_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _08056B40 @ =0x001C002F
	bl sub_08041058
	movs r0, #0x72
	bl sub_080406BC
_08056B28:
	pop {r0}
	bx r0
	.align 2, 0
_08056B2C: .4byte 0x001C002A
_08056B30: .4byte 0x001C002B
_08056B34: .4byte 0x001C002C
_08056B38: .4byte 0x001C002D
_08056B3C: .4byte 0x001C002E
_08056B40: .4byte 0x001C002F

	thumb_func_start sub_08056B44
sub_08056B44: @ 0x08056B44
	push {lr}
	bl sub_08040FE8
	movs r0, #0xb
	bl sub_08041018
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _08056B80 @ =0x001C0036
	bl sub_08041058
	ldr r0, _08056B84 @ =0x001C0037
	bl sub_08041058
	ldr r0, _08056B88 @ =0x001C0038
	bl sub_08041058
	pop {r0}
	bx r0
	.align 2, 0
_08056B80: .4byte 0x001C0036
_08056B84: .4byte 0x001C0037
_08056B88: .4byte 0x001C0038

	thumb_func_start sub_08056B8C
sub_08056B8C: @ 0x08056B8C
	push {lr}
	sub sp, #8
	bl sub_080405B8
	ldr r0, _08056C28 @ =0x0808E45C
	bl sub_0804115C
	ldr r2, _08056C2C @ =0x0808E7DC
	movs r0, #0
	movs r1, #0
	bl sub_080415A0
	movs r0, #0
	movs r1, #0
	bl sub_08041734
	movs r0, #0
	movs r1, #0x80
	movs r2, #0x48
	bl sub_08041894
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl sub_080418C8
	ldr r2, _08056C30 @ =0x0808E6CC
	movs r0, #1
	movs r1, #0
	bl sub_080415A0
	movs r0, #1
	movs r1, #0
	bl sub_08041734
	movs r0, #1
	movs r1, #0x80
	movs r2, #0x48
	bl sub_08041894
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _08056C34 @ =0x0808DC6C
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [sp]
	str r1, [sp, #4]
	movs r0, #0
	movs r1, #1
	mov r2, sp
	bl sub_08041D0C
	movs r0, #1
	movs r1, #1
	mov r2, sp
	bl sub_08041D0C
	bl sub_080407FC
	movs r0, #0x72
	bl sub_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08056C3C
	movs r0, #0x1e
	bl sub_080410A8
	ldr r0, _08056C38 @ =sub_08056B44
	bl sub_0804066C
	b _08056C88
	.align 2, 0
_08056C28: .4byte 0x0808E45C
_08056C2C: .4byte 0x0808E7DC
_08056C30: .4byte 0x0808E6CC
_08056C34: .4byte 0x0808DC6C
_08056C38: .4byte sub_08056B44
_08056C3C:
	movs r0, #0x6f
	bl sub_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08056C5C
	movs r0, #0x15
	bl sub_080410A8
	ldr r0, _08056C58 @ =sub_080569E4
	bl sub_0804066C
	b _08056C88
	.align 2, 0
_08056C58: .4byte sub_080569E4
_08056C5C:
	movs r0, #0x6e
	bl sub_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08056C7C
	movs r0, #0x15
	bl sub_080410A8
	ldr r0, _08056C78 @ =sub_0805699C
	bl sub_0804066C
	b _08056C88
	.align 2, 0
_08056C78: .4byte sub_0805699C
_08056C7C:
	movs r0, #0x1e
	bl sub_080410A8
	ldr r0, _08056CBC @ =sub_080567AC
	bl sub_0804066C
_08056C88:
	bl sub_080410D0
	bl sub_08041008
	bl sub_08040820
	movs r0, #0
	bl sub_080417E0
	movs r0, #0
	movs r1, #0
	bl sub_08041684
	movs r0, #1
	bl sub_080417E0
	movs r0, #1
	movs r1, #0
	bl sub_08041684
	bl sub_0804062C
	add sp, #8
	pop {r0}
	bx r0
	.align 2, 0
_08056CBC: .4byte sub_080567AC

	thumb_func_start sub_08056CC0
sub_08056CC0: @ 0x08056CC0
	push {lr}
	bl sub_08040FE8
	movs r0, #0x2d
	bl sub_08041018
	movs r0, #0xbc
	lsls r0, r0, #0xe
	bl sub_08041058
	ldr r0, _08056D4C @ =0x002F0001
	bl sub_08041058
	ldr r0, _08056D50 @ =0x002F0002
	bl sub_08041058
	ldr r0, _08056D54 @ =0x002F0003
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl sub_080418C8
	movs r0, #1
	movs r1, #1
	bl sub_08041808
	movs r0, #0x78
	bl sub_08040690
	movs r0, #1
	movs r1, #0
	bl sub_08041808
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #0x3c
	bl sub_08040690
	ldr r0, _08056D58 @ =0x002F0004
	bl sub_08041058
	ldr r0, _08056D5C @ =0x002F0005
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08056D68
	ldr r0, _08056D60 @ =0x002F0006
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl sub_080418C8
	ldr r0, _08056D64 @ =0x002F0007
	bl sub_08041058
	b _08056E56
	.align 2, 0
_08056D4C: .4byte 0x002F0001
_08056D50: .4byte 0x002F0002
_08056D54: .4byte 0x002F0003
_08056D58: .4byte 0x002F0004
_08056D5C: .4byte 0x002F0005
_08056D60: .4byte 0x002F0006
_08056D64: .4byte 0x002F0007
_08056D68:
	ldr r1, _08056DE8 @ =0x002F0008
	movs r0, #0x2e
	bl sub_080408C4
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08056E56
	movs r0, #0x18
	bl sub_080410A8
	bl sub_08040FE8
	movs r0, #0x2d
	bl sub_08041018
	ldr r0, _08056DEC @ =0x002F0009
	bl sub_08041058
	ldr r0, _08056DF0 @ =0x002F000A
	bl sub_08041058
	ldr r0, _08056DF4 @ =0x002F000B
	bl sub_08041058
	ldr r0, _08056DF8 @ =0x002F000C
	bl sub_08041058
	ldr r0, _08056DFC @ =0x002F000D
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08056E14
	ldr r0, _08056E00 @ =0x0000011B
	bl sub_080410E0
	movs r0, #0
	movs r1, #0x7a
	movs r2, #0x46
	movs r3, #8
	bl sub_08041938
	movs r0, #0
	movs r1, #0x7a
	movs r2, #0x56
	movs r3, #8
	bl sub_08041938
	ldr r0, _08056E04 @ =0x002F000E
	bl sub_08041058
	ldr r0, _08056E08 @ =0x002F000F
	bl sub_08041058
	ldr r0, _08056E0C @ =0x002F0010
	bl sub_08041058
	ldr r0, _08056E10 @ =0x002F0011
	bl sub_08041058
	b _08056E4A
	.align 2, 0
_08056DE8: .4byte 0x002F0008
_08056DEC: .4byte 0x002F0009
_08056DF0: .4byte 0x002F000A
_08056DF4: .4byte 0x002F000B
_08056DF8: .4byte 0x002F000C
_08056DFC: .4byte 0x002F000D
_08056E00: .4byte 0x0000011B
_08056E04: .4byte 0x002F000E
_08056E08: .4byte 0x002F000F
_08056E0C: .4byte 0x002F0010
_08056E10: .4byte 0x002F0011
_08056E14:
	ldr r0, _08056E5C @ =0x0000011B
	bl sub_080410E0
	movs r0, #0
	movs r1, #0x7a
	movs r2, #0x46
	movs r3, #8
	bl sub_08041938
	movs r0, #0
	movs r1, #0x7a
	movs r2, #0x56
	movs r3, #8
	bl sub_08041938
	ldr r0, _08056E60 @ =0x002F0012
	bl sub_08041058
	ldr r0, _08056E64 @ =0x002F0013
	bl sub_08041058
	ldr r0, _08056E68 @ =0x002F0014
	bl sub_08041058
	ldr r0, _08056E6C @ =0x002F0015
	bl sub_08041058
_08056E4A:
	movs r0, #0xae
	bl sub_080406E4
	movs r0, #0x2f
	bl sub_0802D7CC
_08056E56:
	pop {r0}
	bx r0
	.align 2, 0
_08056E5C: .4byte 0x0000011B
_08056E60: .4byte 0x002F0012
_08056E64: .4byte 0x002F0013
_08056E68: .4byte 0x002F0014
_08056E6C: .4byte 0x002F0015

	thumb_func_start sub_08056E70
sub_08056E70: @ 0x08056E70
	push {r4, r5, lr}
	bl sub_08040FE8
	movs r0, #0x2d
	bl sub_08041018
	ldr r0, _08056EB4 @ =0x002F0016
	bl sub_08041058
	ldr r0, _08056EB8 @ =0x002F0017
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	beq _08056ECC
	movs r0, #0xd2
	bl sub_080410E0
	ldr r0, _08056EBC @ =0x002F0018
	bl sub_08041058
	ldr r0, _08056EC0 @ =0x002F0019
	bl sub_08041058
	ldr r0, _08056EC4 @ =0x002F001A
	bl sub_08041058
	ldr r0, _08056EC8 @ =0x002F001B
	bl sub_08041058
	b _0805706A
	.align 2, 0
_08056EB4: .4byte 0x002F0016
_08056EB8: .4byte 0x002F0017
_08056EBC: .4byte 0x002F0018
_08056EC0: .4byte 0x002F0019
_08056EC4: .4byte 0x002F001A
_08056EC8: .4byte 0x002F001B
_08056ECC:
	ldr r5, _08056F34 @ =0x0000014B
	adds r0, r5, #0
	bl sub_080410E0
	ldr r4, _08056F38 @ =0x0000011B
	adds r0, r4, #0
	bl sub_080410E0
	movs r0, #0
	movs r1, #0x7a
	movs r2, #0x46
	movs r3, #8
	bl sub_08041938
	movs r0, #0
	movs r1, #0x7a
	movs r2, #0x56
	movs r3, #8
	bl sub_08041938
	ldr r0, _08056F3C @ =0x002F001C
	bl sub_08041058
	ldr r0, _08056F40 @ =0x002F001D
	bl sub_08041058
	ldr r0, _08056F44 @ =0x002F001E
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	beq _08056F58
	movs r0, #0xd2
	bl sub_080410E0
	ldr r0, _08056F48 @ =0x002F001F
	bl sub_08041058
	ldr r0, _08056F4C @ =0x002F0020
	bl sub_08041058
	ldr r0, _08056F50 @ =0x002F0021
	bl sub_08041058
	ldr r0, _08056F54 @ =0x002F0022
	bl sub_08041058
	b _0805706A
	.align 2, 0
_08056F34: .4byte 0x0000014B
_08056F38: .4byte 0x0000011B
_08056F3C: .4byte 0x002F001C
_08056F40: .4byte 0x002F001D
_08056F44: .4byte 0x002F001E
_08056F48: .4byte 0x002F001F
_08056F4C: .4byte 0x002F0020
_08056F50: .4byte 0x002F0021
_08056F54: .4byte 0x002F0022
_08056F58:
	adds r0, r5, #0
	bl sub_080410E0
	adds r0, r4, #0
	bl sub_080410E0
	movs r0, #0
	movs r1, #0x7a
	movs r2, #0x46
	movs r3, #8
	bl sub_08041938
	movs r0, #0
	movs r1, #0x7a
	movs r2, #0x56
	movs r3, #8
	bl sub_08041938
	ldr r0, _08056FBC @ =0x002F0023
	bl sub_08041058
	ldr r0, _08056FC0 @ =0x002F0024
	bl sub_08041058
	ldr r0, _08056FC4 @ =0x002F0025
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	beq _08056FD8
	movs r0, #0xd2
	bl sub_080410E0
	ldr r0, _08056FC8 @ =0x002F0026
	bl sub_08041058
	ldr r0, _08056FCC @ =0x002F0027
	bl sub_08041058
	ldr r0, _08056FD0 @ =0x002F0028
	bl sub_08041058
	ldr r0, _08056FD4 @ =0x002F0029
	bl sub_08041058
	b _0805706A
	.align 2, 0
_08056FBC: .4byte 0x002F0023
_08056FC0: .4byte 0x002F0024
_08056FC4: .4byte 0x002F0025
_08056FC8: .4byte 0x002F0026
_08056FCC: .4byte 0x002F0027
_08056FD0: .4byte 0x002F0028
_08056FD4: .4byte 0x002F0029
_08056FD8:
	adds r0, r5, #0
	bl sub_080410E0
	adds r0, r4, #0
	bl sub_080410E0
	movs r0, #0
	movs r1, #0x7a
	movs r2, #0x46
	movs r3, #8
	bl sub_08041938
	movs r0, #0
	movs r1, #0x7a
	movs r2, #0x56
	movs r3, #8
	bl sub_08041938
	adds r0, r4, #0
	bl sub_080410E0
	movs r0, #0
	movs r1, #0x7a
	movs r2, #0x46
	movs r3, #8
	bl sub_08041938
	movs r0, #0
	movs r1, #0x7a
	movs r2, #0x56
	movs r3, #8
	bl sub_08041938
	ldr r0, _08057070 @ =0x002F002A
	bl sub_08041058
	ldr r0, _08057074 @ =0x002F002B
	bl sub_08041058
	ldr r0, _08057078 @ =0x002F002C
	bl sub_08041058
	ldr r0, _0805707C @ =0x002F002D
	bl sub_08041058
	ldr r0, _08057080 @ =0x002F002E
	bl sub_08041058
	movs r0, #0x3c
	movs r1, #0x18
	bl sub_08042814
	movs r0, #0x2d
	bl sub_08041018
	ldr r0, _08057084 @ =0x002F002F
	bl sub_08041058
	ldr r0, _08057088 @ =0x002F0030
	bl sub_08041058
	ldr r0, _0805708C @ =0x002F0031
	bl sub_08041058
	ldr r0, _08057090 @ =0x002F0032
	bl sub_08041058
	movs r0, #0xaf
	bl sub_080406E4
	movs r0, #0xb1
	bl sub_080406BC
_0805706A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08057070: .4byte 0x002F002A
_08057074: .4byte 0x002F002B
_08057078: .4byte 0x002F002C
_0805707C: .4byte 0x002F002D
_08057080: .4byte 0x002F002E
_08057084: .4byte 0x002F002F
_08057088: .4byte 0x002F0030
_0805708C: .4byte 0x002F0031
_08057090: .4byte 0x002F0032

	thumb_func_start sub_08057094
sub_08057094: @ 0x08057094
	push {lr}
	movs r0, #0x78
	bl sub_08040690
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl sub_080418C8
	movs r0, #1
	movs r1, #1
	bl sub_08041808
	movs r0, #0x78
	bl sub_08040690
	movs r0, #1
	movs r1, #0
	bl sub_08041808
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	bl sub_08040FE8
	movs r0, #0x2d
	bl sub_08041018
	ldr r0, _080570FC @ =0x002F0033
	bl sub_08041058
	ldr r0, _08057100 @ =0x002F0034
	bl sub_08041058
	ldr r0, _08057104 @ =0x002F0035
	bl sub_08041058
	ldr r0, _08057108 @ =0x002F0036
	bl sub_08041058
	ldr r0, _0805710C @ =0x002F0037
	bl sub_08041058
	ldr r0, _08057110 @ =0x002F0038
	bl sub_08041058
	pop {r0}
	bx r0
	.align 2, 0
_080570FC: .4byte 0x002F0033
_08057100: .4byte 0x002F0034
_08057104: .4byte 0x002F0035
_08057108: .4byte 0x002F0036
_0805710C: .4byte 0x002F0037
_08057110: .4byte 0x002F0038

	thumb_func_start sub_08057114
sub_08057114: @ 0x08057114
	push {lr}
	bl sub_080405B8
	ldr r0, _08057194 @ =0x0808E484
	bl sub_0804115C
	ldr r2, _08057198 @ =0x0808E9DC
	movs r0, #0
	movs r1, #0
	bl sub_080415A0
	movs r0, #0
	movs r1, #0
	bl sub_08041734
	movs r0, #0
	movs r1, #0x7a
	movs r2, #0x56
	bl sub_08041894
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl sub_080418C8
	movs r0, #0
	movs r1, #3
	bl sub_08041864
	ldr r2, _0805719C @ =0x0808E6BC
	movs r0, #1
	movs r1, #0
	bl sub_080415A0
	movs r0, #1
	movs r1, #0
	bl sub_08041734
	movs r0, #1
	movs r1, #0x7a
	movs r2, #0x36
	bl sub_08041894
	movs r0, #1
	movs r1, #0
	bl sub_08041808
	bl sub_080407FC
	movs r0, #0xb1
	bl sub_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080571A4
	movs r0, #0x1e
	bl sub_080410A8
	ldr r0, _080571A0 @ =sub_08057094
	bl sub_0804066C
	b _080571E6
	.align 2, 0
_08057194: .4byte 0x0808E484
_08057198: .4byte 0x0808E9DC
_0805719C: .4byte 0x0808E6BC
_080571A0: .4byte sub_08057094
_080571A4:
	movs r0, #0x1e
	bl sub_080410A8
	ldr r0, _08057218 @ =sub_08056CC0
	bl sub_0804066C
	movs r0, #0xae
	bl sub_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080571E6
	ldr r0, _0805721C @ =sub_08056E70
	bl sub_0804066C
	movs r0, #0xaf
	bl sub_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080571E6
	movs r0, #0xae
	bl sub_080406FC
	movs r0, #0xaf
	bl sub_080406FC
	movs r0, #0xb0
	bl sub_080406FC
	movs r0, #0xb1
	bl sub_080406D0
_080571E6:
	bl sub_080410D0
	bl sub_08041008
	bl sub_08040820
	movs r0, #0
	bl sub_080417E0
	movs r0, #0
	movs r1, #0
	bl sub_08041684
	movs r0, #1
	bl sub_080417E0
	movs r0, #1
	movs r1, #0
	bl sub_08041684
	bl sub_0804062C
	pop {r0}
	bx r0
	.align 2, 0
_08057218: .4byte sub_08056CC0
_0805721C: .4byte sub_08056E70

	thumb_func_start sub_08057220
sub_08057220: @ 0x08057220
	push {r4, lr}
	sub sp, #0xc
	movs r0, #0
	movs r1, #0
	movs r2, #6
	movs r3, #0xff
	bl sub_080418C8
	mov r1, sp
	ldr r0, _0805724C @ =0x0808DC74
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	movs r0, #0
	movs r1, #0
	mov r2, sp
	bl sub_08041D0C
	add sp, #0xc
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805724C: .4byte 0x0808DC74

	thumb_func_start sub_08057250
sub_08057250: @ 0x08057250
	push {r4, lr}
	sub sp, #0xc
	movs r0, #0
	movs r1, #0
	movs r2, #4
	movs r3, #0xff
	bl sub_080418C8
	mov r1, sp
	ldr r0, _080572D8 @ =0x0808DC80
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	movs r0, #0
	movs r1, #0
	mov r2, sp
	bl sub_08041D0C
	movs r0, #1
	movs r1, #0
	movs r2, #2
	movs r3, #0xff
	bl sub_080418C8
	bl sub_080407FC
	movs r0, #0x3c
	bl sub_08040690
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0x1e
	bl sub_08040690
	bl sub_08040FE8
	movs r0, #0xd
	bl sub_08041018
	movs r0, #0x80
	lsls r0, r0, #0xd
	bl sub_08041058
	ldr r0, _080572DC @ =0x00100001
	bl sub_08041058
	ldr r0, _080572E0 @ =0x00100002
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	bne _080572E8
	movs r0, #1
	movs r1, #0
	movs r2, #8
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _080572E4 @ =0x00100003
	bl sub_08041058
	b _080573B0
	.align 2, 0
_080572D8: .4byte 0x0808DC80
_080572DC: .4byte 0x00100001
_080572E0: .4byte 0x00100002
_080572E4: .4byte 0x00100003
_080572E8:
	ldr r1, _08057348 @ =0x00100004
	movs r0, #0xf
	bl sub_080408C4
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080573B0
	movs r0, #0x12
	bl sub_080410A8
	bl sub_08040FE8
	movs r0, #0xd
	bl sub_08041018
	ldr r0, _0805734C @ =0x00100005
	bl sub_08041058
	ldr r0, _08057350 @ =0x00100006
	bl sub_08041058
	ldr r0, _08057354 @ =0x00100007
	bl sub_08041058
	ldr r0, _08057358 @ =0x00100008
	bl sub_08041058
	ldr r0, _0805735C @ =0x00100009
	bl sub_08041058
	ldr r0, _08057360 @ =0x0010000A
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08057368
	movs r0, #1
	movs r1, #0
	movs r2, #7
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _08057364 @ =0x0010000B
	bl sub_08041058
	b _08057380
	.align 2, 0
_08057348: .4byte 0x00100004
_0805734C: .4byte 0x00100005
_08057350: .4byte 0x00100006
_08057354: .4byte 0x00100007
_08057358: .4byte 0x00100008
_0805735C: .4byte 0x00100009
_08057360: .4byte 0x0010000A
_08057364: .4byte 0x0010000B
_08057368:
	movs r0, #1
	movs r1, #0
	movs r2, #7
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _080573B8 @ =0x0010000F
	bl sub_08041058
	ldr r0, _080573BC @ =0x00100010
	bl sub_08041058
_08057380:
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _080573C0 @ =0x0010000C
	bl sub_08041058
	ldr r0, _080573C4 @ =0x0010000D
	bl sub_08041058
	ldr r0, _080573C8 @ =0x0010000E
	bl sub_08041058
	movs r0, #0x3e
	bl sub_080406E4
	movs r0, #0x24
	bl sub_0802D7CC
	movs r0, #0xf
	bl sub_0802D7CC
_080573B0:
	add sp, #0xc
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080573B8: .4byte 0x0010000F
_080573BC: .4byte 0x00100010
_080573C0: .4byte 0x0010000C
_080573C4: .4byte 0x0010000D
_080573C8: .4byte 0x0010000E

	thumb_func_start sub_080573CC
sub_080573CC: @ 0x080573CC
	push {lr}
	bl sub_080407FC
	bl sub_08040FE8
	movs r0, #0xc
	bl sub_08041018
	movs r0, #0x3f
	bl sub_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080574DC
	movs r0, #1
	movs r1, #0
	movs r2, #7
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #7
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _080574B4 @ =0x00100011
	bl sub_08041058
	movs r0, #0xd
	bl sub_08041018
	movs r0, #1
	movs r1, #0
	movs r2, #2
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _080574B8 @ =0x00100012
	bl sub_08041058
	movs r0, #0xc
	bl sub_08041018
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _080574BC @ =0x00100013
	bl sub_08041058
	movs r0, #0xd
	bl sub_08041018
	ldr r0, _080574C0 @ =0x00100014
	bl sub_08041058
	movs r0, #0xc
	bl sub_08041018
	ldr r0, _080574C4 @ =0x00100015
	bl sub_08041058
	bl sub_08057220
	movs r0, #0xd
	bl sub_08041018
	movs r0, #1
	movs r1, #0
	movs r2, #7
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _080574C8 @ =0x00100016
	bl sub_08041058
	ldr r0, _080574CC @ =0x00100017
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _080574D0 @ =0x00100018
	bl sub_08041058
	movs r0, #6
	movs r1, #0x12
	bl sub_08042814
	movs r0, #0xd
	bl sub_08041018
	ldr r0, _080574D4 @ =0x00100019
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #7
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _080574D8 @ =0x0010001A
	bl sub_08041058
	movs r0, #0x41
	bl sub_080406BC
	b _08057530
	.align 2, 0
_080574B4: .4byte 0x00100011
_080574B8: .4byte 0x00100012
_080574BC: .4byte 0x00100013
_080574C0: .4byte 0x00100014
_080574C4: .4byte 0x00100015
_080574C8: .4byte 0x00100016
_080574CC: .4byte 0x00100017
_080574D0: .4byte 0x00100018
_080574D4: .4byte 0x00100019
_080574D8: .4byte 0x0010001A
_080574DC:
	movs r0, #1
	movs r1, #0
	movs r2, #8
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #8
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _08057534 @ =0x0010001B
	bl sub_08041058
	movs r0, #0xd
	bl sub_08041018
	ldr r0, _08057538 @ =0x0010001C
	bl sub_08041058
	ldr r0, _0805753C @ =0x0010001D
	bl sub_08041058
	ldr r0, _08057540 @ =0x0010001E
	bl sub_08041058
	ldr r0, _08057544 @ =0x0010001F
	bl sub_08041058
	movs r0, #0x3e
	bl sub_080406FC
	movs r0, #0x3f
	bl sub_080406FC
	movs r0, #0x40
	bl sub_080406FC
	movs r0, #0x41
	bl sub_080406D0
_08057530:
	pop {r0}
	bx r0
	.align 2, 0
_08057534: .4byte 0x0010001B
_08057538: .4byte 0x0010001C
_0805753C: .4byte 0x0010001D
_08057540: .4byte 0x0010001E
_08057544: .4byte 0x0010001F

	thumb_func_start sub_08057548
sub_08057548: @ 0x08057548
	push {lr}
	bl sub_08057220
	bl sub_080407FC
	bl sub_08040FE8
	movs r0, #0xd
	bl sub_08041018
	movs r0, #1
	movs r1, #0
	movs r2, #7
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _0805759C @ =0x00100020
	bl sub_08041058
	ldr r0, _080575A0 @ =0x00100021
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #2
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _080575A4 @ =0x00100022
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #7
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _080575A8 @ =0x00100023
	bl sub_08041058
	pop {r0}
	bx r0
	.align 2, 0
_0805759C: .4byte 0x00100020
_080575A0: .4byte 0x00100021
_080575A4: .4byte 0x00100022
_080575A8: .4byte 0x00100023

	thumb_func_start sub_080575AC
sub_080575AC: @ 0x080575AC
	push {lr}
	bl sub_080405B8
	ldr r0, _08057618 @ =0x0808E4AC
	bl sub_0804115C
	ldr r2, _0805761C @ =0x0808E7EC
	movs r0, #0
	movs r1, #0
	bl sub_080415A0
	movs r0, #0
	movs r1, #0
	bl sub_08041734
	movs r0, #0
	movs r1, #0x8c
	movs r2, #0x60
	bl sub_08041894
	ldr r2, _08057620 @ =0x0808E7FC
	movs r0, #1
	movs r1, #0
	bl sub_080415A0
	movs r0, #1
	movs r1, #0
	bl sub_08041734
	movs r0, #1
	movs r1, #0x38
	movs r2, #0x60
	bl sub_08041894
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0x41
	bl sub_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08057628
	movs r0, #0x1e
	bl sub_080410A8
	ldr r0, _08057624 @ =sub_08057548
	bl sub_0804066C
	b _0805767A
	.align 2, 0
_08057618: .4byte 0x0808E4AC
_0805761C: .4byte 0x0808E7EC
_08057620: .4byte 0x0808E7FC
_08057624: .4byte sub_08057548
_08057628:
	bl sub_08040EF0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08057658
	movs r0, #0x1e
	bl sub_080410A8
	ldr r0, _08057654 @ =sub_08057250
	bl sub_0804066C
	movs r0, #0x3e
	bl sub_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0805767A
	movs r0, #5
	bl sub_08040F18
	b _0805767A
	.align 2, 0
_08057654: .4byte sub_08057250
_08057658:
	movs r0, #0x12
	bl sub_080410A8
	bl sub_08040F38
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08057670
	movs r0, #0x3f
	bl sub_080406E4
_08057670:
	ldr r0, _080576B0 @ =sub_080573CC
	bl sub_0804066C
	bl sub_08040F0C
_0805767A:
	bl sub_080410D0
	bl sub_08041008
	bl sub_08040820
	movs r0, #0
	bl sub_080417E0
	movs r0, #0
	movs r1, #0
	bl sub_08041684
	movs r0, #0
	bl sub_08041DB8
	movs r0, #1
	bl sub_080417E0
	movs r0, #1
	movs r1, #0
	bl sub_08041684
	bl sub_0804062C
	pop {r0}
	bx r0
	.align 2, 0
_080576B0: .4byte sub_080573CC

	thumb_func_start sub_080576B4
sub_080576B4: @ 0x080576B4
	push {lr}
	bl sub_08040FE8
	movs r0, #0xf
	bl sub_08041018
	movs r0, #0xa4
	lsls r0, r0, #0xe
	bl sub_08041058
	ldr r0, _080576F8 @ =0x00290001
	bl sub_08041058
	ldr r0, _080576FC @ =0x00290002
	bl sub_08041058
	ldr r0, _08057700 @ =0x00290003
	bl sub_08041058
	ldr r0, _08057704 @ =0x00290004
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08057710
	ldr r0, _08057708 @ =0x00290005
	bl sub_08041058
	ldr r0, _0805770C @ =0x00290006
	bl sub_08041058
	b _080577A0
	.align 2, 0
_080576F8: .4byte 0x00290001
_080576FC: .4byte 0x00290002
_08057700: .4byte 0x00290003
_08057704: .4byte 0x00290004
_08057708: .4byte 0x00290005
_0805770C: .4byte 0x00290006
_08057710:
	ldr r0, _08057754 @ =0x00290007
	bl sub_08041058
	ldr r1, _08057758 @ =0x00290008
	movs r0, #0x28
	bl sub_080408C4
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080577A0
	movs r0, #0x17
	bl sub_080410A8
	bl sub_08040FE8
	movs r0, #0xf
	bl sub_08041018
	ldr r0, _0805775C @ =0x00290009
	bl sub_08041058
	ldr r0, _08057760 @ =0x0029000A
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08057768
	ldr r0, _08057764 @ =0x0029000B
	bl sub_08041058
	b _0805776E
	.align 2, 0
_08057754: .4byte 0x00290007
_08057758: .4byte 0x00290008
_0805775C: .4byte 0x00290009
_08057760: .4byte 0x0029000A
_08057764: .4byte 0x0029000B
_08057768:
	ldr r0, _080577A4 @ =0x00290010
	bl sub_08041058
_0805776E:
	ldr r0, _080577A8 @ =0x0029000C
	bl sub_08041058
	ldr r0, _080577AC @ =0x0029000D
	bl sub_08041058
	ldr r0, _080577B0 @ =0x0029000E
	bl sub_08041058
	ldr r1, _080577B4 @ =0x00460021
	movs r0, #0x66
	bl sub_080427E0
	movs r0, #0xf
	bl sub_08041018
	ldr r0, _080577B8 @ =0x0029000F
	bl sub_08041058
	movs r0, #0x99
	bl sub_080406E4
	movs r0, #0xe
	bl sub_0802D7CC
_080577A0:
	pop {r0}
	bx r0
	.align 2, 0
_080577A4: .4byte 0x00290010
_080577A8: .4byte 0x0029000C
_080577AC: .4byte 0x0029000D
_080577B0: .4byte 0x0029000E
_080577B4: .4byte 0x00460021
_080577B8: .4byte 0x0029000F

	thumb_func_start sub_080577BC
sub_080577BC: @ 0x080577BC
	push {lr}
	movs r0, #0x9a
	bl sub_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08057830
	movs r0, #0x68
	bl sub_08041100
	bl sub_08041138
	movs r0, #0x17
	bl sub_080410A8
	bl sub_08040FE8
	movs r0, #0xf
	bl sub_08041018
	ldr r0, _08057818 @ =0x00290011
	bl sub_08041058
	ldr r0, _0805781C @ =0x00290012
	bl sub_08041058
	ldr r0, _08057820 @ =0x00290013
	bl sub_08041058
	ldr r0, _08057824 @ =0x00290014
	bl sub_08041058
	ldr r0, _08057828 @ =0x00290015
	bl sub_08041058
	ldr r0, _0805782C @ =0x00290016
	bl sub_08041058
	movs r0, #0x66
	bl sub_08040B84
	movs r0, #0x9b
	bl sub_080406BC
	b _0805786A
	.align 2, 0
_08057818: .4byte 0x00290011
_0805781C: .4byte 0x00290012
_08057820: .4byte 0x00290013
_08057824: .4byte 0x00290014
_08057828: .4byte 0x00290015
_0805782C: .4byte 0x00290016
_08057830:
	bl sub_08040FE8
	movs r0, #0xf
	bl sub_08041018
	ldr r0, _08057870 @ =0x00290017
	bl sub_08041058
	ldr r0, _08057874 @ =0x00290018
	bl sub_08041058
	ldr r0, _08057878 @ =0x00290019
	bl sub_08041058
	ldr r0, _0805787C @ =0x0029001A
	bl sub_08041058
	ldr r0, _08057880 @ =0x0029001B
	bl sub_08041058
	movs r0, #0x99
	bl sub_080406FC
	movs r0, #0x9a
	bl sub_080406FC
	movs r0, #0x9b
	bl sub_080406D0
_0805786A:
	pop {r0}
	bx r0
	.align 2, 0
_08057870: .4byte 0x00290017
_08057874: .4byte 0x00290018
_08057878: .4byte 0x00290019
_0805787C: .4byte 0x0029001A
_08057880: .4byte 0x0029001B

	thumb_func_start sub_08057884
sub_08057884: @ 0x08057884
	push {lr}
	bl sub_08040FE8
	movs r0, #0xf
	bl sub_08041018
	ldr r0, _080578AC @ =0x0029001C
	bl sub_08041058
	ldr r0, _080578B0 @ =0x0029001D
	bl sub_08041058
	ldr r0, _080578B4 @ =0x0029001E
	bl sub_08041058
	ldr r0, _080578B8 @ =0x0029001F
	bl sub_08041058
	pop {r0}
	bx r0
	.align 2, 0
_080578AC: .4byte 0x0029001C
_080578B0: .4byte 0x0029001D
_080578B4: .4byte 0x0029001E
_080578B8: .4byte 0x0029001F

	thumb_func_start sub_080578BC
sub_080578BC: @ 0x080578BC
	push {lr}
	bl sub_080405B8
	ldr r0, _08057940 @ =0x0808E4D4
	bl sub_0804115C
	bl sub_080426DC
	ldr r2, _08057944 @ =0x0808E81C
	movs r0, #0
	movs r1, #0
	bl sub_080415A0
	movs r0, #0
	movs r1, #0
	bl sub_08041734
	movs r0, #0
	movs r1, #0x78
	movs r2, #0x60
	bl sub_08041894
	movs r0, #0
	movs r1, #0
	movs r2, #5
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0
	movs r1, #3
	bl sub_08041864
	ldr r2, _08057948 @ =0x0808E6BC
	movs r0, #1
	movs r1, #0
	bl sub_080415A0
	movs r0, #1
	movs r1, #0
	bl sub_08041734
	movs r0, #1
	movs r1, #0x7c
	movs r2, #0x30
	bl sub_08041894
	movs r0, #1
	movs r1, #0
	bl sub_08041808
	bl sub_080407FC
	movs r0, #0x9b
	bl sub_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08057950
	movs r0, #0x1e
	bl sub_080410A8
	ldr r0, _0805794C @ =sub_08057884
	bl sub_0804066C
	b _080579A8
	.align 2, 0
_08057940: .4byte 0x0808E4D4
_08057944: .4byte 0x0808E81C
_08057948: .4byte 0x0808E6BC
_0805794C: .4byte sub_08057884
_08057950:
	bl sub_08040B0C
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08057980
	movs r0, #0x1e
	bl sub_080410A8
	ldr r0, _0805797C @ =sub_080576B4
	bl sub_0804066C
	movs r0, #0x99
	bl sub_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080579A8
	movs r0, #0x66
	bl sub_08040B34
	b _080579A8
	.align 2, 0
_0805797C: .4byte sub_080576B4
_08057980:
	movs r0, #0x17
	bl sub_08040A6C
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	beq _08057998
	cmp r0, #1
	ble _080579A8
	cmp r0, #2
	beq _0805799E
	b _080579A8
_08057998:
	movs r0, #0x9a
	bl sub_080406E4
_0805799E:
	ldr r0, _080579DC @ =sub_080577BC
	bl sub_0804066C
	bl sub_08040B28
_080579A8:
	bl sub_080410D0
	bl sub_08041008
	bl sub_08040820
	bl sub_080426E0
	movs r0, #0
	bl sub_080417E0
	movs r0, #0
	movs r1, #0
	bl sub_08041684
	movs r0, #1
	bl sub_080417E0
	movs r0, #1
	movs r1, #0
	bl sub_08041684
	bl sub_0804062C
	pop {r0}
	bx r0
	.align 2, 0
_080579DC: .4byte sub_080577BC

	thumb_func_start sub_080579E0
sub_080579E0: @ 0x080579E0
	push {lr}
	movs r0, #0
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl sub_080418C8
	bl sub_080407FC
	movs r0, #0x1e
	bl sub_08040690
	movs r0, #1
	movs r1, #0
	movs r2, #8
	movs r3, #0
	bl sub_080418C8
	movs r0, #1
	movs r1, #1
	bl sub_08041808
	movs r0, #0x14
	bl sub_08040690
	movs r0, #0x92
	lsls r0, r0, #1
	bl sub_080410E0
	movs r0, #0x3c
	bl sub_08040690
	movs r0, #1
	movs r1, #0
	bl sub_08041808
	bl sub_08040FE8
	movs r0, #0x20
	bl sub_08041018
	movs r0, #0xc0
	lsls r0, r0, #0xe
	bl sub_08041058
	ldr r0, _08057A58 @ =0x00300001
	bl sub_08041058
	ldr r0, _08057A5C @ =0x00300002
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08057A64
	ldr r0, _08057A60 @ =0x00300003
	bl sub_08041058
	b _08057B38
	.align 2, 0
_08057A58: .4byte 0x00300001
_08057A5C: .4byte 0x00300002
_08057A60: .4byte 0x00300003
_08057A64:
	ldr r1, _08057ACC @ =0x00300004
	movs r0, #0x2f
	bl sub_080408C4
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08057B38
	movs r0, #0x18
	bl sub_080410A8
	movs r0, #0
	movs r1, #0
	movs r2, #4
	movs r3, #0xff
	bl sub_080418C8
	bl sub_08040FE8
	movs r0, #0x20
	bl sub_08041018
	ldr r0, _08057AD0 @ =0x00300005
	bl sub_08041058
	ldr r0, _08057AD4 @ =0x00300006
	bl sub_08041058
	ldr r0, _08057AD8 @ =0x00300007
	bl sub_08041058
	ldr r0, _08057ADC @ =0x00300008
	bl sub_08041058
	ldr r0, _08057AE0 @ =0x00300009
	bl sub_08041058
	ldr r0, _08057AE4 @ =0x0030000A
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08057AF0
	ldr r0, _08057AE8 @ =0x0030000B
	bl sub_08041058
	ldr r0, _08057AEC @ =0x0030000C
	bl sub_08041058
	b _08057B0E
	.align 2, 0
_08057ACC: .4byte 0x00300004
_08057AD0: .4byte 0x00300005
_08057AD4: .4byte 0x00300006
_08057AD8: .4byte 0x00300007
_08057ADC: .4byte 0x00300008
_08057AE0: .4byte 0x00300009
_08057AE4: .4byte 0x0030000A
_08057AE8: .4byte 0x0030000B
_08057AEC: .4byte 0x0030000C
_08057AF0:
	movs r0, #0
	movs r1, #0
	movs r2, #4
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _08057B3C @ =0x00300012
	bl sub_08041058
	ldr r0, _08057B40 @ =0x00300013
	bl sub_08041058
	ldr r0, _08057B44 @ =0x00300014
	bl sub_08041058
_08057B0E:
	ldr r0, _08057B48 @ =0x0030000D
	bl sub_08041058
	ldr r0, _08057B4C @ =0x0030000E
	bl sub_08041058
	ldr r0, _08057B50 @ =0x0030000F
	bl sub_08041058
	ldr r0, _08057B54 @ =0x00300010
	bl sub_08041058
	ldr r0, _08057B58 @ =0x00300011
	bl sub_08041058
	movs r0, #0xb2
	bl sub_080406E4
	movs r0, #3
	bl sub_0802D7CC
_08057B38:
	pop {r0}
	bx r0
	.align 2, 0
_08057B3C: .4byte 0x00300012
_08057B40: .4byte 0x00300013
_08057B44: .4byte 0x00300014
_08057B48: .4byte 0x0030000D
_08057B4C: .4byte 0x0030000E
_08057B50: .4byte 0x0030000F
_08057B54: .4byte 0x00300010
_08057B58: .4byte 0x00300011

	thumb_func_start sub_08057B5C
sub_08057B5C: @ 0x08057B5C
	push {lr}
	movs r0, #0xb3
	bl sub_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08057BE4
	movs r0, #0
	movs r1, #0
	movs r2, #6
	movs r3, #0xff
	bl sub_080418C8
	bl sub_080407FC
	bl sub_08040FE8
	movs r0, #0x20
	bl sub_08041018
	ldr r0, _08057BC8 @ =0x00300015
	bl sub_08041058
	ldr r0, _08057BCC @ =0x00300016
	bl sub_08041058
	ldr r0, _08057BD0 @ =0x00300017
	bl sub_08041058
	ldr r0, _08057BD4 @ =0x00300018
	bl sub_08041058
	ldr r0, _08057BD8 @ =0x00300019
	bl sub_08041058
	movs r0, #0x17
	movs r1, #0x18
	bl sub_08042814
	movs r0, #0x20
	bl sub_08041018
	ldr r0, _08057BDC @ =0x0030001A
	bl sub_08041058
	ldr r0, _08057BE0 @ =0x0030001B
	bl sub_08041058
	movs r0, #0xb5
	bl sub_080406BC
	b _08057C34
	.align 2, 0
_08057BC8: .4byte 0x00300015
_08057BCC: .4byte 0x00300016
_08057BD0: .4byte 0x00300017
_08057BD4: .4byte 0x00300018
_08057BD8: .4byte 0x00300019
_08057BDC: .4byte 0x0030001A
_08057BE0: .4byte 0x0030001B
_08057BE4:
	movs r0, #0
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl sub_080418C8
	bl sub_080407FC
	bl sub_08040FE8
	movs r0, #0x20
	bl sub_08041018
	ldr r0, _08057C38 @ =0x0030001C
	bl sub_08041058
	ldr r0, _08057C3C @ =0x0030001D
	bl sub_08041058
	ldr r0, _08057C40 @ =0x0030001E
	bl sub_08041058
	ldr r0, _08057C44 @ =0x0030001F
	bl sub_08041058
	ldr r0, _08057C48 @ =0x00300020
	bl sub_08041058
	movs r0, #0xb2
	bl sub_080406FC
	movs r0, #0xb3
	bl sub_080406FC
	movs r0, #0xb4
	bl sub_080406FC
	movs r0, #0xb5
	bl sub_080406D0
_08057C34:
	pop {r0}
	bx r0
	.align 2, 0
_08057C38: .4byte 0x0030001C
_08057C3C: .4byte 0x0030001D
_08057C40: .4byte 0x0030001E
_08057C44: .4byte 0x0030001F
_08057C48: .4byte 0x00300020

	thumb_func_start sub_08057C4C
sub_08057C4C: @ 0x08057C4C
	push {lr}
	movs r0, #0
	movs r1, #0
	movs r2, #6
	movs r3, #0xff
	bl sub_080418C8
	bl sub_080407FC
	bl sub_08040FE8
	movs r0, #0x20
	bl sub_08041018
	ldr r0, _08057C80 @ =0x00300021
	bl sub_08041058
	ldr r0, _08057C84 @ =0x00300022
	bl sub_08041058
	ldr r0, _08057C88 @ =0x00300023
	bl sub_08041058
	pop {r0}
	bx r0
	.align 2, 0
_08057C80: .4byte 0x00300021
_08057C84: .4byte 0x00300022
_08057C88: .4byte 0x00300023

	thumb_func_start sub_08057C8C
sub_08057C8C: @ 0x08057C8C
	push {lr}
	bl sub_080405B8
	ldr r0, _08057D14 @ =0x0808E4FC
	bl sub_0804115C
	movs r0, #0
	movs r1, #2
	movs r2, #0xf0
	bl sub_080420E0
	ldr r2, _08057D18 @ =0x0808E91C
	movs r0, #0
	movs r1, #0
	bl sub_080415A0
	movs r0, #0
	movs r1, #0
	bl sub_08041734
	movs r0, #0
	movs r1, #0x78
	movs r2, #0x64
	bl sub_08041894
	movs r0, #0
	movs r1, #3
	bl sub_08041864
	movs r0, #0
	movs r1, #0
	movs r2, #4
	movs r3, #0xff
	bl sub_080418C8
	ldr r2, _08057D1C @ =0x0808E6BC
	movs r0, #1
	movs r1, #0
	bl sub_080415A0
	movs r0, #1
	movs r1, #0
	bl sub_08041734
	movs r0, #1
	movs r1, #0x7c
	movs r2, #0x38
	bl sub_08041894
	movs r0, #1
	movs r1, #0
	bl sub_08041808
	movs r0, #0xb5
	bl sub_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08057D24
	movs r0, #0x1e
	bl sub_080410A8
	ldr r0, _08057D20 @ =sub_08057C4C
	bl sub_0804066C
	b _08057D76
	.align 2, 0
_08057D14: .4byte 0x0808E4FC
_08057D18: .4byte 0x0808E91C
_08057D1C: .4byte 0x0808E6BC
_08057D20: .4byte sub_08057C4C
_08057D24:
	bl sub_08040EF0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08057D54
	movs r0, #0x1e
	bl sub_080410A8
	ldr r0, _08057D50 @ =sub_080579E0
	bl sub_0804066C
	movs r0, #0xb2
	bl sub_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08057D76
	movs r0, #0xb
	bl sub_08040F18
	b _08057D76
	.align 2, 0
_08057D50: .4byte sub_080579E0
_08057D54:
	movs r0, #0x18
	bl sub_080410A8
	bl sub_08040F38
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08057D6C
	movs r0, #0xb3
	bl sub_080406E4
_08057D6C:
	ldr r0, _08057DAC @ =sub_08057B5C
	bl sub_0804066C
	bl sub_08040F0C
_08057D76:
	bl sub_080410D0
	bl sub_08041008
	bl sub_08040820
	movs r0, #0
	bl sub_080417E0
	movs r0, #0
	movs r1, #0
	bl sub_08041684
	movs r0, #1
	bl sub_080417E0
	movs r0, #1
	movs r1, #0
	bl sub_08041684
	bl sub_08042168
	bl sub_0804062C
	pop {r0}
	bx r0
	.align 2, 0
_08057DAC: .4byte sub_08057B5C

	thumb_func_start sub_08057DB0
sub_08057DB0: @ 0x08057DB0
	push {r4, lr}
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0xff
	bl sub_080418C8
	bl sub_080407FC
	bl sub_08040FE8
	movs r0, #0x19
	bl sub_08041018
	movs r0, #0x98
	lsls r0, r0, #0xe
	bl sub_08041058
	ldr r0, _08057E14 @ =0x00260001
	bl sub_08041058
	ldr r0, _08057E18 @ =0x00260002
	bl sub_08041058
	ldr r0, _08057E1C @ =0x00260003
	bl sub_08041058
	ldr r0, _08057E20 @ =0x00260004
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	beq _08057E2C
	movs r0, #0
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl sub_080418C8
	ldr r0, _08057E24 @ =0x00260005
	bl sub_08041058
	ldr r0, _08057E28 @ =0x00260006
	bl sub_08041058
	b _08057F8C
	.align 2, 0
_08057E14: .4byte 0x00260001
_08057E18: .4byte 0x00260002
_08057E1C: .4byte 0x00260003
_08057E20: .4byte 0x00260004
_08057E24: .4byte 0x00260005
_08057E28: .4byte 0x00260006
_08057E2C:
	ldr r0, _08057F94 @ =0x00260007
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	ldr r0, _08057F98 @ =0x00260008
	bl sub_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0xff
	bl sub_080418C8
	ldr r1, _08057F9C @ =0x00260009
	movs r0, #0x25
	bl sub_080408C4
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08057E60
	b _08057F8C
_08057E60:
	movs r0, #0x17
	bl sub_080410A8
	bl sub_08040FE8
	movs r0, #0x19
	bl sub_08041018
	ldr r0, _08057FA0 @ =0x0026000A
	bl sub_08041058
	ldr r0, _08057FA4 @ =0x0026000B
	bl sub_08041058
	ldr r0, _08057FA8 @ =0x0026000C
	bl sub_08041058
	ldr r0, _08057FAC @ =0x0026000D
	bl sub_08041058
	ldr r0, _08057FB0 @ =0x0026000E
	bl sub_08041058
	bl sub_08041008
	movs r0, #0
	movs r1, #0
	movs r2, #5
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0xe
	bl sub_08040690
	ldr r0, _08057FB4 @ =0x0000011B
	bl sub_080410E0
	movs r0, #0
	movs r1, #0x78
	movs r2, #0
	movs r3, #0x28
	bl sub_08041938
	movs r0, #0x78
	bl sub_08040690
	ldr r0, _08057FB8 @ =0x0000011D
	bl sub_080410E0
	movs r0, #1
	movs r1, #0x78
	movs r2, #0x68
	movs r3, #0x10
	bl sub_08041938
	ldr r0, _08057FBC @ =0x000002B1
	bl sub_080410E0
	movs r0, #2
	movs r1, #2
	movs r2, #0x18
	bl sub_080413C0
	bl sub_08041430
	movs r0, #0x3c
	bl sub_08040690
	bl sub_08040FE8
	movs r0, #0x13
	bl sub_08041018
	ldr r4, _08057FC0 @ =0x000002B2
	adds r0, r4, #0
	bl sub_080410E0
	movs r0, #1
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	ldr r0, _08057FC4 @ =0x0026000F
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	ldr r0, _08057FC8 @ =0x00260010
	bl sub_08041058
	ldr r0, _08057FCC @ =0x00260011
	bl sub_08041058
	ldr r0, _08057FD0 @ =0x00260012
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	bne _08057F3C
	ldr r0, _08057FD4 @ =0x00260018
	bl sub_08041058
_08057F3C:
	ldr r0, _08057FD8 @ =0x00260013
	bl sub_08041058
	ldr r0, _08057FDC @ =0x00260014
	bl sub_08041058
	ldr r0, _08057FE0 @ =0x00260015
	bl sub_08041058
	ldr r0, _08057FE4 @ =0x00260016
	bl sub_08041058
	ldr r1, _08057FE8 @ =0x00460022
	movs r0, #0x67
	bl sub_080427E0
	movs r0, #1
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #0x13
	bl sub_08041018
	adds r0, r4, #0
	bl sub_080410E0
	ldr r0, _08057FEC @ =0x00260017
	bl sub_08041058
	movs r0, #0x91
	bl sub_080406E4
	movs r0, #0x15
	bl sub_0802D7CC
	movs r0, #0x1e
	bl sub_0802D7CC
_08057F8C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08057F94: .4byte 0x00260007
_08057F98: .4byte 0x00260008
_08057F9C: .4byte 0x00260009
_08057FA0: .4byte 0x0026000A
_08057FA4: .4byte 0x0026000B
_08057FA8: .4byte 0x0026000C
_08057FAC: .4byte 0x0026000D
_08057FB0: .4byte 0x0026000E
_08057FB4: .4byte 0x0000011B
_08057FB8: .4byte 0x0000011D
_08057FBC: .4byte 0x000002B1
_08057FC0: .4byte 0x000002B2
_08057FC4: .4byte 0x0026000F
_08057FC8: .4byte 0x00260010
_08057FCC: .4byte 0x00260011
_08057FD0: .4byte 0x00260012
_08057FD4: .4byte 0x00260018
_08057FD8: .4byte 0x00260013
_08057FDC: .4byte 0x00260014
_08057FE0: .4byte 0x00260015
_08057FE4: .4byte 0x00260016
_08057FE8: .4byte 0x00460022
_08057FEC: .4byte 0x00260017

	thumb_func_start sub_08057FF0
sub_08057FF0: @ 0x08057FF0
	push {lr}
	movs r0, #0x92
	bl sub_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0805805C
	movs r0, #0x68
	bl sub_08041100
	bl sub_08041138
	movs r0, #0x17
	bl sub_080410A8
	bl sub_08040FE8
	movs r0, #0x13
	bl sub_08041018
	ldr r0, _08058044 @ =0x000002B2
	bl sub_080410E0
	ldr r0, _08058048 @ =0x00260019
	bl sub_08041058
	ldr r0, _0805804C @ =0x0026001A
	bl sub_08041058
	ldr r0, _08058050 @ =0x0026001B
	bl sub_08041058
	ldr r0, _08058054 @ =0x0026001C
	bl sub_08041058
	ldr r0, _08058058 @ =0x0026001D
	bl sub_08041058
	bl sub_080406AC
	b _080580A8
	.align 2, 0
_08058044: .4byte 0x000002B2
_08058048: .4byte 0x00260019
_0805804C: .4byte 0x0026001A
_08058050: .4byte 0x0026001B
_08058054: .4byte 0x0026001C
_08058058: .4byte 0x0026001D
_0805805C:
	bl sub_08040FE8
	movs r0, #0x13
	bl sub_08041018
	ldr r0, _080580AC @ =0x000002B2
	bl sub_080410E0
	ldr r0, _080580B0 @ =0x0026001E
	bl sub_08041058
	ldr r0, _080580B4 @ =0x0026001F
	bl sub_08041058
	ldr r0, _080580B8 @ =0x00260020
	bl sub_08041058
	ldr r0, _080580BC @ =0x00260021
	bl sub_08041058
	ldr r0, _080580C0 @ =0x00260022
	bl sub_08041058
	movs r0, #0x90
	bl sub_080406FC
	movs r0, #0x92
	bl sub_080406FC
	movs r0, #0x95
	bl sub_080406FC
	movs r0, #0x91
	bl sub_080406FC
	movs r0, #0x93
	bl sub_080406D0
_080580A8:
	pop {r0}
	bx r0
	.align 2, 0
_080580AC: .4byte 0x000002B2
_080580B0: .4byte 0x0026001E
_080580B4: .4byte 0x0026001F
_080580B8: .4byte 0x00260020
_080580BC: .4byte 0x00260021
_080580C0: .4byte 0x00260022

	thumb_func_start sub_080580C4
sub_080580C4: @ 0x080580C4
	push {lr}
	bl sub_080407FC
	bl sub_08040FE8
	movs r0, #0x19
	bl sub_08041018
	ldr r0, _080580EC @ =0x00260023
	bl sub_08041058
	ldr r0, _080580F0 @ =0x00260024
	bl sub_08041058
	ldr r0, _080580F4 @ =0x00260025
	bl sub_08041058
	pop {r0}
	bx r0
	.align 2, 0
_080580EC: .4byte 0x00260023
_080580F0: .4byte 0x00260024
_080580F4: .4byte 0x00260025

	thumb_func_start sub_080580F8
sub_080580F8: @ 0x080580F8
	push {lr}
	bl sub_080405B8
	ldr r0, _0805815C @ =0x0808E524
	bl sub_0804115C
	ldr r2, _08058160 @ =0x0808E8AC
	movs r0, #0
	movs r1, #0
	bl sub_080415A0
	movs r0, #0
	movs r1, #0
	bl sub_08041734
	movs r0, #0
	movs r1, #0x78
	movs r2, #0x68
	bl sub_08041894
	ldr r2, _08058164 @ =0x0808E85C
	movs r0, #1
	movs r1, #0
	bl sub_080415A0
	movs r0, #1
	movs r1, #0
	bl sub_08041734
	movs r0, #1
	movs r1, #0x78
	movs r2, #0
	bl sub_08041894
	movs r0, #0x93
	bl sub_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0805816C
	movs r0, #0x17
	bl sub_080410A8
	ldr r0, _08058168 @ =sub_080580C4
	bl sub_0804066C
_08058156:
	bl sub_080410D0
	b _080581FA
	.align 2, 0
_0805815C: .4byte 0x0808E524
_08058160: .4byte 0x0808E8AC
_08058164: .4byte 0x0808E85C
_08058168: .4byte sub_080580C4
_0805816C:
	bl sub_08040B0C
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805819C
	movs r0, #0x17
	bl sub_080410A8
	ldr r0, _08058198 @ =sub_08057DB0
	bl sub_0804066C
	movs r0, #0x91
	bl sub_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08058156
	movs r0, #0x67
	bl sub_08040B34
	b _08058156
	.align 2, 0
_08058198: .4byte sub_08057DB0
_0805819C:
	movs r0, #0
	movs r1, #0x78
	movs r2, #0
	bl sub_08041894
	movs r0, #1
	movs r1, #0x78
	movs r2, #0x68
	bl sub_08041894
	bl sub_080407FC
	movs r0, #0x17
	bl sub_08040A6C
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	beq _080581D2
	cmp r0, #1
	bgt _080581CC
	cmp r0, #0
	beq _08058156
	b _080581FA
_080581CC:
	cmp r0, #2
	beq _080581EC
	b _080581FA
_080581D2:
	movs r0, #0x92
	bl sub_080406E4
	ldr r0, _080581E8 @ =sub_08057FF0
	bl sub_0804066C
	movs r0, #0x38
	movs r1, #8
	bl sub_080068A0
	b _080581FA
	.align 2, 0
_080581E8: .4byte sub_08057FF0
_080581EC:
	ldr r0, _08058228 @ =sub_08057FF0
	bl sub_0804066C
	bl sub_08040B28
	bl sub_080410D0
_080581FA:
	bl sub_08041008
	bl sub_08040820
	movs r0, #0
	bl sub_080417E0
	movs r0, #0
	movs r1, #0
	bl sub_08041684
	movs r0, #1
	bl sub_080417E0
	movs r0, #1
	movs r1, #0
	bl sub_08041684
	bl sub_0804062C
	pop {r0}
	bx r0
	.align 2, 0
_08058228: .4byte sub_08057FF0

	thumb_func_start sub_0805822C
sub_0805822C: @ 0x0805822C
	push {lr}
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0x78
	bl sub_08040690
	bl sub_080407FC
	bl sub_08040FE8
	movs r0, #0x19
	bl sub_08041018
	movs r0, #0x94
	lsls r0, r0, #0xe
	bl sub_08041058
	ldr r0, _080583C0 @ =0x00250001
	bl sub_08041058
	ldr r1, _080583C4 @ =0x00250002
	movs r0, #0x24
	bl sub_080408C4
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805826C
	b _080583BA
_0805826C:
	movs r0, #0x17
	bl sub_080410A8
	bl sub_08040FE8
	movs r0, #0x19
	bl sub_08041018
	ldr r0, _080583C8 @ =0x00250003
	bl sub_08041058
	ldr r0, _080583CC @ =0x00250004
	bl sub_08041058
	ldr r0, _080583D0 @ =0x00250005
	bl sub_08041058
	ldr r0, _080583D4 @ =0x00250006
	bl sub_08041058
	bl sub_08041008
	movs r0, #0
	movs r1, #0
	movs r2, #5
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0xe
	bl sub_08040690
	ldr r0, _080583D8 @ =0x0000011B
	bl sub_080410E0
	movs r0, #0
	movs r1, #0x78
	movs r2, #0
	movs r3, #0x28
	bl sub_08041938
	movs r0, #0x78
	bl sub_08040690
	ldr r0, _080583DC @ =0x0000011D
	bl sub_080410E0
	movs r0, #1
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #1
	movs r1, #0x78
	movs r2, #0x59
	movs r3, #0x10
	bl sub_08041938
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _080583E0 @ =0x00000127
	bl sub_080410E0
	movs r0, #2
	movs r1, #2
	movs r2, #0x18
	bl sub_080413C0
	bl sub_08041430
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	movs r0, #0x3c
	bl sub_08040690
	bl sub_08040FE8
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0x30
	bl sub_08041018
	ldr r0, _080583E4 @ =0x00250007
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	ldr r0, _080583E8 @ =0x00250008
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #2
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _080583EC @ =0x00250009
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080418C8
	ldr r0, _080583F0 @ =0x0025000A
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	bne _08058376
	ldr r0, _080583F4 @ =0x00250010
	bl sub_08041058
_08058376:
	ldr r0, _080583F8 @ =0x0025000B
	bl sub_08041058
	ldr r0, _080583FC @ =0x0025000C
	bl sub_08041058
	ldr r0, _08058400 @ =0x0025000D
	bl sub_08041058
	ldr r0, _08058404 @ =0x0025000E
	bl sub_08041058
	ldr r1, _08058408 @ =0x00460025
	movs r0, #0x6a
	bl sub_080427E0
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0xff
	bl sub_080418C8
	movs r0, #0x30
	bl sub_08041018
	ldr r0, _0805840C @ =0x0025000F
	bl sub_08041058
	movs r0, #0x8f
	bl sub_080406E4
	movs r0, #0x22
	bl sub_0802D7CC
_080583BA:
	pop {r0}
	bx r0
	.align 2, 0
_080583C0: .4byte 0x00250001
_080583C4: .4byte 0x00250002
_080583C8: .4byte 0x00250003
_080583CC: .4byte 0x00250004
_080583D0: .4byte 0x00250005
_080583D4: .4byte 0x00250006
_080583D8: .4byte 0x0000011B
_080583DC: .4byte 0x0000011D
_080583E0: .4byte 0x00000127
_080583E4: .4byte 0x00250007
_080583E8: .4byte 0x00250008
_080583EC: .4byte 0x00250009
_080583F0: .4byte 0x0025000A
_080583F4: .4byte 0x00250010
_080583F8: .4byte 0x0025000B
_080583FC: .4byte 0x0025000C
_08058400: .4byte 0x0025000D
_08058404: .4byte 0x0025000E
_08058408: .4byte 0x00460025
_0805840C: .4byte 0x0025000F

	thumb_func_start sub_08058410
sub_08058410: @ 0x08058410
	push {lr}
	movs r0, #0x90
	bl sub_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08058474
	movs r0, #0x68
	bl sub_08041100
	bl sub_08041138
	movs r0, #0x17
	bl sub_080410A8
	bl sub_08040FE8
	movs r0, #0x30
	bl sub_08041018
	ldr r0, _08058460 @ =0x00250011
	bl sub_08041058
	ldr r0, _08058464 @ =0x00250012
	bl sub_08041058
	ldr r0, _08058468 @ =0x00250013
	bl sub_08041058
	ldr r0, _0805846C @ =0x00250014
	bl sub_08041058
	ldr r0, _08058470 @ =0x00250015
	bl sub_08041058
	bl sub_080406AC
	b _080584C6
	.align 2, 0
_08058460: .4byte 0x00250011
_08058464: .4byte 0x00250012
_08058468: .4byte 0x00250013
_0805846C: .4byte 0x00250014
_08058470: .4byte 0x00250015
_08058474:
	bl sub_08040FE8
	movs r0, #0x30
	bl sub_08041018
	ldr r0, _080584CC @ =0x00250016
	bl sub_08041058
	ldr r0, _080584D0 @ =0x00250017
	bl sub_08041058
	ldr r0, _080584D4 @ =0x00250018
	bl sub_08041058
	ldr r0, _080584D8 @ =0x00250019
	bl sub_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _080584DC @ =0x0025001A
	bl sub_08041058
	movs r0, #0x90
	bl sub_080406FC
	movs r0, #0x92
	bl sub_080406FC
	movs r0, #0x95
	bl sub_080406FC
	movs r0, #0x91
	bl sub_080406FC
	movs r0, #0x93
	bl sub_080406D0
_080584C6:
	pop {r0}
	bx r0
	.align 2, 0
_080584CC: .4byte 0x00250016
_080584D0: .4byte 0x00250017
_080584D4: .4byte 0x00250018
_080584D8: .4byte 0x00250019
_080584DC: .4byte 0x0025001A

	thumb_func_start sub_080584E0
sub_080584E0: @ 0x080584E0
	push {lr}
	bl sub_080405B8
	ldr r0, _08058548 @ =0x0808E54C
	bl sub_0804115C
	ldr r2, _0805854C @ =0x0808E8AC
	movs r0, #0
	movs r1, #0
	bl sub_080415A0
	movs r0, #0
	movs r1, #0
	bl sub_08041734
	movs r0, #0
	movs r1, #0x78
	movs r2, #0x59
	bl sub_08041894
	ldr r2, _08058550 @ =0x0808EA0C
	movs r0, #1
	movs r1, #0
	bl sub_080415A0
	movs r0, #1
	movs r1, #0
	bl sub_08041734
	movs r0, #1
	movs r1, #0x78
	movs r2, #0
	bl sub_08041894
	bl sub_08040B0C
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08058558
	ldr r0, _08058554 @ =sub_0805822C
	bl sub_0804066C
	movs r0, #0x8f
	bl sub_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0805858E
	movs r0, #0x6a
	bl sub_08040B34
	b _0805858E
	.align 2, 0
_08058548: .4byte 0x0808E54C
_0805854C: .4byte 0x0808E8AC
_08058550: .4byte 0x0808EA0C
_08058554: .4byte sub_0805822C
_08058558:
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl sub_08041894
	movs r0, #1
	movs r1, #0x78
	movs r2, #0x59
	bl sub_08041894
	bl sub_080407FC
	movs r0, #0x17
	bl sub_08040A6C
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	beq _08058594
	cmp r0, #1
	bgt _08058588
	cmp r0, #0
	beq _0805858E
	b _080585C2
_08058588:
	cmp r0, #2
	beq _080585B0
	b _080585C2
_0805858E:
	bl sub_080410D0
	b _080585C2
_08058594:
	movs r0, #0x90
	bl sub_080406E4
	ldr r0, _080585AC @ =sub_08058410
	bl sub_0804066C
	movs r0, #0x39
	movs r1, #8
	bl sub_080068A0
	b _080585C2
	.align 2, 0
_080585AC: .4byte sub_08058410
_080585B0:
	ldr r0, _080585F4 @ =sub_08058410
	bl sub_0804066C
	bl sub_08040B28
	bl sub_080405AC
	bl sub_080410D0
_080585C2:
	bl sub_08041008
	bl sub_08040820
	movs r0, #0
	bl sub_080417E0
	movs r0, #0
	movs r1, #0
	bl sub_08041684
	movs r0, #1
	bl sub_080417E0
	movs r0, #1
	movs r1, #0
	bl sub_08041684
	bl sub_0804062C
	bl sub_080406AC
	pop {r0}
	bx r0
	.align 2, 0
_080585F4: .4byte sub_08058410

	thumb_func_start sub_080585F8
sub_080585F8: @ 0x080585F8
	push {lr}
	movs r0, #0x78
	bl sub_08040690
	bl sub_080407FC
	bl sub_08040FE8
	movs r0, #0x19
	bl sub_08041018
	movs r0, #0x9c
	lsls r0, r0, #0xe
	bl sub_08041058
	ldr r0, _08058704 @ =0x00270001
	bl sub_08041058
	ldr r0, _08058708 @ =0x00270002
	bl sub_08041058
	ldr r1, _0805870C @ =0x00270003
	movs r0, #0x26
	bl sub_080408C4
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080586FE
	movs r0, #0x17
	bl sub_080410A8
	bl sub_08040FE8
	movs r0, #0x19
	bl sub_08041018
	ldr r0, _08058710 @ =0x00270004
	bl sub_08041058
	ldr r0, _08058714 @ =0x00270005
	bl sub_08041058
	ldr r0, _08058718 @ =0x00270006
	bl sub_08041058
	ldr r0, _0805871C @ =0x00270007
	bl sub_08041058
	ldr r0, _08058720 @ =0x00270008
	bl sub_08041058
	bl sub_08041008
	movs r0, #0
	movs r1, #0
	movs r2, #6
	movs r3, #0
	bl sub_080418C8
	movs r0, #0xf0
	bl sub_08040690
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	bl sub_08040FE8
	movs r0, #0x19
	bl sub_08041018
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	ldr r0, _08058724 @ =0x00270009
	bl sub_08041058
	ldr r0, _08058728 @ =0x0027000A
	bl sub_08041058
	ldr r0, _0805872C @ =0x0027000B
	bl sub_0804106C
	bl sub_08041088
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	bne _080586BA
	ldr r0, _08058730 @ =0x00270010
	bl sub_08041058
_080586BA:
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0xff
	bl sub_080418C8
	ldr r0, _08058734 @ =0x0027000C
	bl sub_08041058
	ldr r0, _08058738 @ =0x0027000D
	bl sub_08041058
	ldr r0, _0805873C @ =0x0027000E
	bl sub_08041058
	ldr r1, _08058740 @ =0x00460023
	movs r0, #0x68
	bl sub_080427E0
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl sub_080418C8
	movs r0, #0x19
	bl sub_08041018
	ldr r0, _08058744 @ =0x0027000F
	bl sub_08041058
	movs r0, #0x94
	bl sub_080406E4
_080586FE:
	pop {r0}
	bx r0
	.align 2, 0
_08058704: .4byte 0x00270001
_08058708: .4byte 0x00270002
_0805870C: .4byte 0x00270003
_08058710: .4byte 0x00270004
_08058714: .4byte 0x00270005
_08058718: .4byte 0x00270006
_0805871C: .4byte 0x00270007
_08058720: .4byte 0x00270008
_08058724: .4byte 0x00270009
_08058728: .4byte 0x0027000A
_0805872C: .4byte 0x0027000B
_08058730: .4byte 0x00270010
_08058734: .4byte 0x0027000C
_08058738: .4byte 0x0027000D
_0805873C: .4byte 0x0027000E
_08058740: .4byte 0x00460023
_08058744: .4byte 0x0027000F

	thumb_func_start sub_08058748
sub_08058748: @ 0x08058748
	push {lr}
	movs r0, #0x95
	bl sub_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080587D4
	movs r0, #0x68
	bl sub_08041100
	bl sub_08041138
	movs r0, #0x17
	bl sub_080410A8
	bl sub_08040FE8
	movs r0, #0x19
	bl sub_08041018
	ldr r0, _080587B8 @ =0x00270011
	bl sub_08041058
	ldr r0, _080587BC @ =0x00270012
	bl sub_08041058
	ldr r0, _080587C0 @ =0x00270013
	bl sub_08041058
	ldr r0, _080587C4 @ =0x00270014
	bl sub_08041058
	ldr r0, _080587C8 @ =0x00270015
	bl sub_08041058
	ldr r0, _080587CC @ =0x00270016
	bl sub_08041058
	ldr r0, _080587D0 @ =0x00270017
	bl sub_08041058
	movs r0, #0x67
	bl sub_08040B84
	movs r0, #0x6a
	bl sub_08040B84
	movs r0, #0x68
	bl sub_08040B84
	movs r0, #0x93
	bl sub_080406BC
	b _08058814
	.align 2, 0
_080587B8: .4byte 0x00270011
_080587BC: .4byte 0x00270012
_080587C0: .4byte 0x00270013
_080587C4: .4byte 0x00270014
_080587C8: .4byte 0x00270015
_080587CC: .4byte 0x00270016
_080587D0: .4byte 0x00270017
_080587D4:
	bl sub_08040FE8
	movs r0, #0x19
	bl sub_08041018
	ldr r0, _08058818 @ =0x00270018
	bl sub_08041058
	ldr r0, _0805881C @ =0x00270019
	bl sub_08041058
	ldr r0, _08058820 @ =0x0027001A
	bl sub_08041058
	ldr r0, _08058824 @ =0x0027001B
	bl sub_08041058
	movs r0, #0x90
	bl sub_080406FC
	movs r0, #0x92
	bl sub_080406FC
	movs r0, #0x95
	bl sub_080406FC
	movs r0, #0x91
	bl sub_080406FC
	movs r0, #0x93
	bl sub_080406D0
_08058814:
	pop {r0}
	bx r0
	.align 2, 0
_08058818: .4byte 0x00270018
_0805881C: .4byte 0x00270019
_08058820: .4byte 0x0027001A
_08058824: .4byte 0x0027001B

	thumb_func_start sub_08058828
sub_08058828: @ 0x08058828
	push {lr}
	bl sub_080405B8
	ldr r0, _0805888C @ =0x0808E574
	bl sub_0804115C
	ldr r0, _08058890 @ =0x0818B5C0
	movs r1, #0
	movs r2, #0x21
	bl sub_08041464
	ldr r2, _08058894 @ =0x0808E8AC
	movs r0, #0
	movs r1, #0
	bl sub_080415A0
	movs r0, #0
	movs r1, #0
	bl sub_08041734
	movs r0, #0
	movs r1, #0x78
	movs r2, #0x40
	bl sub_08041894
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0xff
	bl sub_080418C8
	bl sub_08040B0C
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805889C
	ldr r0, _08058898 @ =sub_080585F8
	bl sub_0804066C
	movs r0, #0x94
	bl sub_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080588CC
	movs r0, #0x68
	bl sub_08040B34
	b _080588CC
	.align 2, 0
_0805888C: .4byte 0x0808E574
_08058890: .4byte 0x0818B5C0
_08058894: .4byte 0x0808E8AC
_08058898: .4byte sub_080585F8
_0805889C:
	bl sub_080407FC
	movs r0, #0x17
	bl sub_08040A6C
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	beq _080588B8
	cmp r0, #1
	ble _080588CC
	cmp r0, #2
	beq _080588BE
	b _080588CC
_080588B8:
	movs r0, #0x95
	bl sub_080406E4
_080588BE:
	ldr r0, _080588F4 @ =sub_08058748
	bl sub_0804066C
	bl sub_08040B28
	bl sub_080405AC
_080588CC:
	bl sub_080410D0
	bl sub_08041008
	bl sub_08040820
	movs r0, #0
	bl sub_080417E0
	movs r0, #0
	movs r1, #0
	bl sub_08041684
	bl sub_08041498
	bl sub_0804062C
	pop {r0}
	bx r0
	.align 2, 0
_080588F4: .4byte sub_08058748

	thumb_func_start sub_080588F8
sub_080588F8: @ 0x080588F8
	push {r4, r5, r6, lr}
	sub sp, #8
	ldr r0, _08058AE4 @ =0x08091534
	ldr r1, _08058AE8 @ =0x05000200
	bl sub_08008308
	ldr r0, _08058AEC @ =0x08091B4C
	mov r1, sp
	bl sub_08008380
	ldr r5, _08058AF0 @ =0x0300162C
	ldr r1, [r5]
	str r0, [r1, #0x70]
	ldr r0, [sp]
	str r0, [r1, #0x74]
	ldr r0, _08058AF4 @ =0x08190EF8
	ldr r1, _08058AF8 @ =0x05000220
	bl sub_08008308
	ldr r0, _08058AFC @ =0x081924C8
	mov r1, sp
	bl sub_08008380
	ldr r1, [r5]
	str r0, [r1, #0x78]
	ldr r0, [sp]
	str r0, [r1, #0x7c]
	ldr r0, _08058B00 @ =0x08197550
	ldr r1, _08058B04 @ =0x05000240
	bl sub_08008308
	ldr r0, _08058B08 @ =0x08197794
	mov r1, sp
	bl sub_08008380
	ldr r1, [r5]
	adds r2, r1, #0
	adds r2, #0x80
	str r0, [r2]
	adds r1, #0x84
	ldr r0, [sp]
	str r0, [r1]
	ldr r4, _08058B0C @ =0x06011400
	ldr r0, _08058B10 @ =0x0809B574
	ldr r1, _08058B14 @ =0x05000280
	bl sub_08008308
	ldr r0, [r5]
	str r4, [r0, #0x20]
	ldr r0, _08058B18 @ =0x0809C0D4
	adds r1, r4, #0
	bl sub_08008374
	adds r4, r0, r4
	ldr r0, [r5]
	str r4, [r0, #0x24]
	ldr r1, _08058B1C @ =0x0808EE1C
	adds r0, #0x8c
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	adds r1, r4, #0
	bl sub_08008374
	adds r4, r4, r0
	ldr r1, _08058B20 @ =0x080954C8
	ldr r6, _08058B24 @ =0x03004400
	ldrb r0, [r6, #0x14]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _08058B28 @ =0x050002E0
	bl sub_08008308
	ldr r0, [r5]
	str r4, [r0, #0x28]
	ldr r1, _08058B2C @ =0x080954CC
	ldrb r0, [r6, #0x14]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	adds r1, r4, #0
	bl sub_08008374
	adds r4, r4, r0
	ldr r1, _08058B30 @ =0x080954D8
	ldrb r0, [r6, #0x14]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _08058B34 @ =0x00000171
	bl sub_08009554
	ldr r0, _08058B38 @ =0x080906B0
	ldr r1, _08058B3C @ =0x05000340
	bl sub_08008308
	ldr r0, [r5]
	str r4, [r0, #0x2c]
	ldr r0, _08058B40 @ =0x080909B8
	adds r1, r4, #0
	bl sub_08008374
	ldr r1, _08058B44 @ =0x080943E8
	ldrb r0, [r6, #0x14]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0xa0
	lsls r1, r1, #0x13
	bl sub_08008308
	ldr r1, _08058B48 @ =0x080943EC
	ldrb r0, [r6, #0x14]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	bl sub_08008374
	ldr r1, _08058B4C @ =0x080943F0
	ldrb r0, [r6, #0x14]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _08058B50 @ =0x06003800
	movs r2, #0
	movs r3, #0
	bl sub_080083CC
	ldr r1, _08058B54 @ =0x030024E0
	movs r0, #0xe0
	lsls r0, r0, #3
	strh r0, [r1, #2]
	ldr r1, _08058B58 @ =0x0808EDD4
	ldr r0, [r5]
	adds r0, #0x8c
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_0800B02C
	ldr r0, [r5]
	adds r2, r0, #0
	adds r2, #0x8c
	ldrb r0, [r2]
	cmp r0, #0
	beq _08058A48
	ldr r1, _08058B5C @ =0x0808EDEC
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _08058B60 @ =0x050000E0
	bl sub_08008308
	ldr r1, _08058B64 @ =0x0808EE04
	ldr r0, [r5]
	adds r0, #0x8c
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _08058B68 @ =0x050001A0
	bl sub_08008308
_08058A48:
	ldr r0, _08058B6C @ =sub_08059404
	movs r1, #0x41
	movs r2, #0
	bl sub_08007968
	ldr r1, [r5]
	strh r0, [r1, #8]
	ldr r0, _08058B70 @ =sub_080596F8
	movs r1, #0x42
	movs r2, #0
	bl sub_08007968
	ldr r1, [r5]
	strh r0, [r1, #0xc]
	ldr r0, _08058B74 @ =sub_080594F8
	movs r1, #0x42
	movs r2, #0
	bl sub_08007968
	ldr r1, [r5]
	strh r0, [r1, #0xa]
	ldr r0, _08058B78 @ =sub_08059928
	movs r1, #0x42
	movs r2, #0
	bl sub_08007968
	ldr r1, [r5]
	strh r0, [r1, #0x10]
	ldr r0, _08058B7C @ =sub_08059CF8
	movs r1, #0x42
	movs r2, #0
	bl sub_08007968
	ldr r1, [r5]
	strh r0, [r1, #0x12]
	ldr r0, _08058B80 @ =sub_08059FC8
	movs r1, #0x42
	movs r2, #0
	bl sub_08007968
	ldr r1, [r5]
	strh r0, [r1, #0x14]
	ldr r0, _08058B84 @ =sub_0805A41C
	movs r1, #0x42
	movs r2, #0
	bl sub_08007968
	ldr r1, [r5]
	strh r0, [r1, #0x16]
	movs r0, #0xf0
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #3
	bl sub_08006BE8
	bl sub_080057C0
	ldr r0, [r5]
	ldrb r1, [r6, #9]
	adds r0, #0x88
	strb r1, [r0]
	ldrb r0, [r6, #0xa]
	cmp r0, #0x23
	bne _08058ADC
	bl sub_08007310
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1d
	bne _08058ADC
	ldr r0, [r5]
	adds r0, #0x8e
	movs r1, #1
	strb r1, [r0]
_08058ADC:
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08058AE4: .4byte 0x08091534
_08058AE8: .4byte 0x05000200
_08058AEC: .4byte 0x08091B4C
_08058AF0: .4byte 0x0300162C
_08058AF4: .4byte 0x08190EF8
_08058AF8: .4byte 0x05000220
_08058AFC: .4byte 0x081924C8
_08058B00: .4byte 0x08197550
_08058B04: .4byte 0x05000240
_08058B08: .4byte 0x08197794
_08058B0C: .4byte 0x06011400
_08058B10: .4byte 0x0809B574
_08058B14: .4byte 0x05000280
_08058B18: .4byte 0x0809C0D4
_08058B1C: .4byte 0x0808EE1C
_08058B20: .4byte 0x080954C8
_08058B24: .4byte 0x03004400
_08058B28: .4byte 0x050002E0
_08058B2C: .4byte 0x080954CC
_08058B30: .4byte 0x080954D8
_08058B34: .4byte 0x00000171
_08058B38: .4byte 0x080906B0
_08058B3C: .4byte 0x05000340
_08058B40: .4byte 0x080909B8
_08058B44: .4byte 0x080943E8
_08058B48: .4byte 0x080943EC
_08058B4C: .4byte 0x080943F0
_08058B50: .4byte 0x06003800
_08058B54: .4byte 0x030024E0
_08058B58: .4byte 0x0808EDD4
_08058B5C: .4byte 0x0808EDEC
_08058B60: .4byte 0x050000E0
_08058B64: .4byte 0x0808EE04
_08058B68: .4byte 0x050001A0
_08058B6C: .4byte sub_08059404
_08058B70: .4byte sub_080596F8
_08058B74: .4byte sub_080594F8
_08058B78: .4byte sub_08059928
_08058B7C: .4byte sub_08059CF8
_08058B80: .4byte sub_08059FC8
_08058B84: .4byte sub_0805A41C

	thumb_func_start sub_08058B88
sub_08058B88: @ 0x08058B88
	push {r4, lr}
	ldr r1, _08058BF0 @ =0x080954D8
	ldr r0, _08058BF4 @ =0x03004400
	ldrb r0, [r0, #0x14]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_080095E0
	bl sub_0800585C
	bl sub_0800B17C
	ldr r4, _08058BF8 @ =0x0300162C
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
	ldr r0, [r4]
	movs r1, #0x16
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08058BF0: .4byte 0x080954D8
_08058BF4: .4byte 0x03004400
_08058BF8: .4byte 0x0300162C

	thumb_func_start sub_08058BFC
sub_08058BFC: @ 0x08058BFC
	push {r4, r5, lr}
	movs r0, #0
	bl sub_080081A0
	bl sub_08008174
	ldr r4, _08058C4C @ =0x0300162C
	movs r0, #0x90
	bl sub_08007CE8
	adds r1, r0, #0
	str r1, [r4]
	movs r0, #0
	movs r2, #0x90
	bl sub_08007EFC
	bl sub_08007418
	ldr r1, [r4]
	adds r1, #0x8c
	strb r0, [r1]
	bl sub_080588F8
	ldr r0, [r4]
	ldrb r0, [r0, #6]
	cmp r0, #0
	bne _08058C66
	ldr r5, _08058C50 @ =0x0808EE84
_08058C34:
	ldr r1, [r4]
	ldrh r0, [r1, #4]
	cmp r0, #0
	bne _08058C54
	ldrb r0, [r1]
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	bl call_via_r0
	b _08058C58
	.align 2, 0
_08058C4C: .4byte 0x0300162C
_08058C50: .4byte 0x0808EE84
_08058C54:
	subs r0, #1
	strh r0, [r1, #4]
_08058C58:
	movs r0, #1
	bl sub_08002B98
	ldr r0, [r4]
	ldrb r0, [r0, #6]
	cmp r0, #0
	beq _08058C34
_08058C66:
	ldr r4, _08058CA0 @ =0x0300162C
	ldr r0, [r4]
	adds r0, #0x88
	ldrb r0, [r0]
	bl sub_08008790
	bl sub_08058B88
	ldr r0, [r4]
	ldr r0, [r0, #0x70]
	bl sub_08007CF8
	ldr r0, [r4]
	ldr r0, [r0, #0x78]
	bl sub_08007CF8
	ldr r0, [r4]
	adds r0, #0x80
	ldr r0, [r0]
	bl sub_08007CF8
	ldr r0, [r4]
	bl sub_08007CF8
	bl sub_08002B0C
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08058CA0: .4byte 0x0300162C

	thumb_func_start sub_08058CA4
sub_08058CA4: @ 0x08058CA4
	ldr r1, _08058CB8 @ =0x0300162C
	ldr r3, [r1]
	movs r2, #0
	strb r0, [r3]
	ldr r0, [r1]
	strb r2, [r0, #1]
	ldr r0, [r1]
	strh r2, [r0, #2]
	strh r2, [r0, #4]
	bx lr
	.align 2, 0
_08058CB8: .4byte 0x0300162C

	thumb_func_start sub_08058CBC
sub_08058CBC: @ 0x08058CBC
	push {r4, r5, r6, lr}
	ldr r5, _08058CD0 @ =0x0300162C
	ldr r2, [r5]
	ldrb r0, [r2, #1]
	cmp r0, #0
	beq _08058CD4
	cmp r0, #1
	beq _08058D30
	b _08058D48
	.align 2, 0
_08058CD0: .4byte 0x0300162C
_08058CD4:
	ldr r3, _08058D2C @ =0x030024E0
	ldrh r1, [r3]
	movs r4, #0x80
	lsls r4, r4, #4
	adds r0, r4, #0
	orrs r1, r0
	movs r6, #0x80
	lsls r6, r6, #3
	adds r0, r6, #0
	orrs r1, r0
	movs r4, #0
	movs r6, #0x80
	lsls r6, r6, #2
	adds r0, r6, #0
	orrs r1, r0
	orrs r1, r4
	strh r1, [r3]
	adds r0, r2, #0
	adds r0, #0x8e
	ldrb r0, [r0]
	cmp r0, #0
	bne _08058D0A
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r2, #0
	orrs r1, r0
	strh r1, [r3]
_08058D0A:
	adds r0, r3, #0
	adds r0, #0x4f
	movs r4, #1
	strb r4, [r0]
	ldr r0, [r5]
	adds r0, #0x8e
	ldrb r0, [r0]
	cmp r0, #0
	beq _08058D22
	movs r0, #5
	bl m4aSongNumStart
_08058D22:
	bl sub_0803B840
	ldr r0, [r5]
	strb r4, [r0, #1]
	b _08058D48
	.align 2, 0
_08058D2C: .4byte 0x030024E0
_08058D30:
	adds r0, r2, #0
	adds r0, #0x8e
	ldrb r0, [r0]
	cmp r0, #0
	beq _08058D42
	movs r0, #5
	bl sub_08058CA4
	b _08058D48
_08058D42:
	movs r0, #2
	bl sub_08058CA4
_08058D48:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08058D50
sub_08058D50: @ 0x08058D50
	push {r4, lr}
	sub sp, #0xc
	ldr r0, _08058D64 @ =0x0300162C
	ldr r0, [r0]
	ldrb r4, [r0, #1]
	cmp r4, #0
	beq _08058D68
	cmp r4, #1
	beq _08058DE0
	b _08058DE2
	.align 2, 0
_08058D64: .4byte 0x0300162C
_08058D68:
	adds r0, #0x88
	ldrb r0, [r0]
	cmp r0, #0x24
	bne _08058DC0
	ldr r0, _08058DA8 @ =0x02031050
	movs r1, #0x89
	lsls r1, r1, #4
	adds r0, r0, r1
	ldr r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r1, #0
	blt _08058D8E
	orrs r1, r2
	str r1, [r0]
	ldr r0, _08058DAC @ =0x030056F0
	movs r1, #4
	bl m4aMPlayFadeOut
_08058D8E:
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
	b _08058DB6
	.align 2, 0
_08058DA8: .4byte 0x02031050
_08058DAC: .4byte 0x030056F0
_08058DB0:
	movs r0, #1
	bl sub_08002B98
_08058DB6:
	bl sub_08008E9C
	cmp r0, #0
	beq _08058DB0
	b _08058DCC
_08058DC0:
	ldr r0, _08058DD8 @ =0x030056F0
	movs r1, #2
	bl m4aMPlayFadeOut
	bl sub_0803B868
_08058DCC:
	ldr r0, _08058DDC @ =0x0300162C
	ldr r1, [r0]
	movs r0, #1
	strb r0, [r1, #1]
	b _08058DE2
	.align 2, 0
_08058DD8: .4byte 0x030056F0
_08058DDC: .4byte 0x0300162C
_08058DE0:
	strb r4, [r0, #6]
_08058DE2:
	add sp, #0xc
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08058DEC
sub_08058DEC: @ 0x08058DEC
	push {r4, lr}
	ldr r4, _08058E04 @ =0x0300162C
	ldr r2, [r4]
	ldrb r0, [r2, #1]
	cmp r0, #1
	beq _08058E26
	cmp r0, #1
	bgt _08058E08
	cmp r0, #0
	beq _08058E12
	b _08058E9C
	.align 2, 0
_08058E04: .4byte 0x0300162C
_08058E08:
	cmp r0, #2
	beq _08058E3C
	cmp r0, #3
	beq _08058E7C
	b _08058E9C
_08058E12:
	adds r1, r2, #0
	adds r1, #0x8a
	strh r0, [r1]
	strh r0, [r2, #2]
	bl sub_080598DC
	ldr r1, [r4]
	movs r0, #1
	strb r0, [r1, #1]
	b _08058E9C
_08058E26:
	ldrb r0, [r2, #0x18]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _08058E9C
	movs r0, #2
	bl m4aSongNumStart
	ldr r1, [r4]
	movs r0, #2
	strb r0, [r1, #1]
	b _08058E9C
_08058E3C:
	ldr r0, _08058E58 @ =0x030024B0
	ldrh r1, [r0]
	movs r0, #9
	ands r0, r1
	cmp r0, #0
	beq _08058E5C
	movs r0, #0xc9
	bl m4aSongNumStart
	ldr r1, [r4]
	movs r0, #3
	strb r0, [r1, #1]
	b _08058E9C
	.align 2, 0
_08058E58: .4byte 0x030024B0
_08058E5C:
	adds r1, r2, #0
	adds r1, #0x8a
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	ldr r1, _08058E78 @ =0x07070000
	cmp r0, r1
	bls _08058E9C
	adds r1, r2, #0
	adds r1, #0x88
	movs r0, #0x13
	strb r0, [r1]
	b _08058E8E
	.align 2, 0
_08058E78: .4byte 0x07070000
_08058E7C:
	bl sub_08007430
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08058E96
	ldr r0, [r4]
	adds r0, #0x88
	movs r1, #0x1d
	strb r1, [r0]
_08058E8E:
	movs r0, #1
	bl sub_08058CA4
	b _08058E9C
_08058E96:
	movs r0, #3
	bl sub_08058CA4
_08058E9C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08058EA4
sub_08058EA4: @ 0x08058EA4
	push {r4, r5, lr}
	ldr r5, _08058EBC @ =0x0300162C
	ldr r0, [r5]
	ldrb r4, [r0, #1]
	cmp r4, #1
	beq _08058EDA
	cmp r4, #1
	bgt _08058EC0
	cmp r4, #0
	beq _08058EC6
	b _08058F3A
	.align 2, 0
_08058EBC: .4byte 0x0300162C
_08058EC0:
	cmp r4, #2
	beq _08058EEE
	b _08058F3A
_08058EC6:
	adds r0, #0x89
	strb r4, [r0]
	bl sub_080598F8
	ldr r1, [r5]
	movs r0, #1
	strb r0, [r1, #1]
	ldr r0, [r5]
	strh r4, [r0, #2]
	b _08058F3A
_08058EDA:
	ldrb r0, [r0, #0x18]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _08058F3A
	bl sub_0800B7F8
	ldr r1, [r5]
	movs r0, #2
	strb r0, [r1, #1]
	b _08058F3A
_08058EEE:
	adds r2, r0, #0
	adds r2, #0x89
	ldrb r2, [r2]
	cmp r2, #1
	beq _08058F1C
	cmp r2, #1
	bgt _08058F02
	cmp r2, #0
	beq _08058F08
	b _08058F3A
_08058F02:
	cmp r2, #2
	beq _08058F2C
	b _08058F3A
_08058F08:
	ldr r0, _08058F18 @ =0x030056F0
	movs r1, #3
	bl m4aMPlayFadeOut
	movs r0, #4
	bl sub_08058CA4
	b _08058F3A
	.align 2, 0
_08058F18: .4byte 0x030056F0
_08058F1C:
	adds r1, r0, #0
	adds r1, #0x88
	movs r0, #0x1e
	strb r0, [r1]
	movs r0, #1
	bl sub_08058CA4
	b _08058F3A
_08058F2C:
	adds r1, r0, #0
	adds r1, #0x88
	movs r0, #0x25
	strb r0, [r1]
	movs r0, #1
	bl sub_08058CA4
_08058F3A:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08058F40
sub_08058F40: @ 0x08058F40
	push {r4, r5, lr}
	ldr r5, _08058F58 @ =0x0300162C
	ldr r3, [r5]
	ldrb r2, [r3, #1]
	cmp r2, #1
	beq _08058F88
	cmp r2, #1
	bgt _08058F5C
	cmp r2, #0
	beq _08058F66
	b _08058FF6
	.align 2, 0
_08058F58: .4byte 0x0300162C
_08058F5C:
	cmp r2, #2
	beq _08058FDC
	cmp r2, #3
	beq _08058FE2
	b _08058FF6
_08058F66:
	ldr r1, _08058F80 @ =0x030024E0
	adds r4, r1, #0
	adds r4, #0x4a
	ldr r0, _08058F84 @ =0x00001E41
	strh r0, [r4]
	adds r1, #0x4c
	movs r0, #0x10
	strh r0, [r1]
	strh r2, [r3, #2]
	movs r0, #1
	strb r0, [r3, #1]
	b _08058FF6
	.align 2, 0
_08058F80: .4byte 0x030024E0
_08058F84: .4byte 0x00001E41
_08058F88:
	ldrh r1, [r3, #2]
	movs r0, #0x10
	subs r4, r0, r1
	cmp r1, #0
	bne _08058F96
	bl sub_080593CC
_08058F96:
	ldr r1, [r5]
	ldrh r0, [r1, #2]
	adds r0, #1
	strh r0, [r1, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r2, _08058FD4 @ =0x030024E0
	cmp r0, #0x10
	bls _08058FBE
	ldrh r1, [r2]
	ldr r0, _08058FD8 @ =0x0000FEFF
	ands r0, r1
	strh r0, [r2]
	adds r1, r2, #0
	adds r1, #0x4a
	movs r0, #0
	strh r0, [r1]
	ldr r1, [r5]
	movs r0, #3
	strb r0, [r1, #1]
_08058FBE:
	movs r0, #0x10
	subs r0, r0, r4
	movs r1, #0x1f
	ands r0, r1
	lsls r0, r0, #8
	ands r4, r1
	orrs r0, r4
	adds r1, r2, #0
	adds r1, #0x4c
	strh r0, [r1]
	b _08058FF6
	.align 2, 0
_08058FD4: .4byte 0x030024E0
_08058FD8: .4byte 0x0000FEFF
_08058FDC:
	movs r0, #3
	strb r0, [r3, #1]
	b _08058FF6
_08058FE2:
	ldrb r0, [r3, #0x18]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _08058FF6
	movs r0, #5
	bl m4aSongNumStartOrContinue
	movs r0, #5
	bl sub_08058CA4
_08058FF6:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08058FFC
sub_08058FFC: @ 0x08058FFC
	push {r4, lr}
	sub sp, #4
	ldr r1, _08059018 @ =0x0300162C
	ldr r0, [r1]
	ldrb r0, [r0, #1]
	adds r4, r1, #0
	cmp r0, #4
	bls _0805900E
	b _08059134
_0805900E:
	lsls r0, r0, #2
	ldr r1, _0805901C @ =_08059020
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08059018: .4byte 0x0300162C
_0805901C: .4byte _08059020
_08059020: @ jump table
	.4byte _08059034 @ case 0
	.4byte _08059070 @ case 1
	.4byte _080590B0 @ case 2
	.4byte _080590F4 @ case 3
	.4byte _0805911A @ case 4
_08059034:
	bl sub_08003F9C
	movs r0, #0x80
	lsls r0, r0, #1
	str r0, [sp]
	movs r0, #3
	movs r1, #0x1c
	movs r2, #0xe
	movs r3, #0
	bl sub_08004028
	movs r0, #1
	bl sub_08004124
	movs r0, #1
	bl sub_08005A88
	ldr r2, _0805906C @ =0x0300162C
	ldr r1, [r2]
	movs r0, #0x3c
	strh r0, [r1, #4]
	movs r0, #1
	strb r0, [r1, #1]
	ldr r0, [r2]
	adds r0, #0x88
	movs r1, #0x24
	strb r1, [r0]
	b _08059134
	.align 2, 0
_0805906C: .4byte 0x0300162C
_08059070:
	bl sub_08005934
	ldr r0, _0805909C @ =0x0808EBFC
	ldr r4, _080590A0 @ =0x0300162C
	ldr r1, [r4]
	ldr r1, [r1, #0x64]
	movs r2, #0
	bl sub_080004D4
	bl sub_08005A2C
	ldr r0, _080590A4 @ =0x02031050
	movs r1, #0x89
	lsls r1, r1, #4
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	bge _080590A8
	movs r0, #1
	bl sub_08058CA4
	b _08059134
	.align 2, 0
_0805909C: .4byte 0x0808EBFC
_080590A0: .4byte 0x0300162C
_080590A4: .4byte 0x02031050
_080590A8:
	ldr r1, [r4]
	movs r0, #2
	strb r0, [r1, #1]
	b _08059134
_080590B0:
	ldr r0, [r4]
	ldr r0, [r0, #0x64]
	ldrb r0, [r0, #1]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _08059134
	bl sub_08005934
	ldr r0, _080590EC @ =0x0808EC04
	ldr r1, [r4]
	ldr r1, [r1, #0x64]
	movs r2, #0
	bl sub_080004D4
	bl sub_08005A2C
	bl sub_0805A974
	ldr r1, [r4]
	movs r0, #0x20
	strh r0, [r1, #4]
	ldr r0, _080590F0 @ =0x030056F0
	movs r1, #8
	bl m4aMPlayFadeOut
	ldr r1, [r4]
	movs r0, #3
	strb r0, [r1, #1]
	b _08059134
	.align 2, 0
_080590EC: .4byte 0x0808EC04
_080590F0: .4byte 0x030056F0
_080590F4:
	ldr r0, [r4]
	ldr r1, [r0, #0x64]
	ldrb r0, [r1, #1]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _08059134
	adds r0, r1, #0
	movs r1, #0xc
	bl sub_08009AFC
	ldr r0, [r4]
	ldr r0, [r0, #0x64]
	movs r1, #2
	bl sub_08009B40
	ldr r1, [r4]
	movs r0, #4
	strb r0, [r1, #1]
	b _08059134
_0805911A:
	ldr r0, [r4]
	ldr r1, [r0, #0x64]
	ldrb r0, [r1, #1]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _08059134
	adds r0, r1, #0
	movs r1, #0xff
	bl sub_08009B40
	movs r0, #6
	bl sub_08058CA4
_08059134:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0805913C
sub_0805913C: @ 0x0805913C
	push {r4, lr}
	ldr r1, _08059158 @ =0x0300162C
	ldr r0, [r1]
	ldrb r0, [r0, #1]
	adds r4, r1, #0
	cmp r0, #0xb
	bls _0805914C
	b _0805936A
_0805914C:
	lsls r0, r0, #2
	ldr r1, _0805915C @ =_08059160
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08059158: .4byte 0x0300162C
_0805915C: .4byte _08059160
_08059160: @ jump table
	.4byte _08059190 @ case 0
	.4byte _080591A4 @ case 1
	.4byte _080591E8 @ case 2
	.4byte _08059220 @ case 3
	.4byte _08059248 @ case 4
	.4byte _08059278 @ case 5
	.4byte _080592A8 @ case 6
	.4byte _080592BC @ case 7
	.4byte _080592FC @ case 8
	.4byte _08059312 @ case 9
	.4byte _08059340 @ case 10
	.4byte _08059364 @ case 11
_08059190:
	bl sub_08059F60
	ldr r0, _080591A0 @ =0x0300162C
	ldr r1, [r0]
	movs r0, #1
	strb r0, [r1, #1]
	b _0805936A
	.align 2, 0
_080591A0: .4byte 0x0300162C
_080591A4:
	ldr r1, [r4]
	ldrb r0, [r1, #0x18]
	lsls r0, r0, #0x1c
	cmp r0, #0
	bge _080591B0
	b _0805936A
_080591B0:
	ldr r0, [r1, #0x64]
	movs r1, #0xa
	bl sub_08009AFC
	ldr r0, [r4]
	ldr r0, [r0, #0x64]
	movs r1, #0
	bl sub_08009B40
	bl sub_08005934
	ldr r0, _080591E4 @ =0x0808EC10
	ldr r1, [r4]
	ldr r1, [r1, #0x68]
	movs r2, #0
	bl sub_080004D4
	bl sub_08005A2C
	bl sub_0805A3B4
	ldr r1, [r4]
	movs r0, #2
	strb r0, [r1, #1]
	b _0805936A
	.align 2, 0
_080591E4: .4byte 0x0808EC10
_080591E8:
	ldr r0, [r4]
	ldrb r0, [r0, #0x18]
	lsls r0, r0, #0x1b
	cmp r0, #0
	bge _080591F4
	b _0805936A
_080591F4:
	bl sub_08005934
	ldr r0, _0805921C @ =0x0808EC18
	ldr r2, [r4]
	ldr r1, [r2, #0x68]
	ldr r2, [r2, #0x6c]
	bl sub_080004D4
	bl sub_08005A2C
	bl sub_08059F7C
	bl sub_0805A3D0
	ldr r1, [r4]
	movs r0, #0x78
	strh r0, [r1, #4]
	movs r0, #3
	strb r0, [r1, #1]
	b _0805936A
	.align 2, 0
_0805921C: .4byte 0x0808EC18
_08059220:
	bl sub_08005934
	ldr r0, _08059240 @ =0x0808EC2C
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	bl sub_08005A2C
	ldr r0, _08059244 @ =0x0300162C
	ldr r1, [r0]
	movs r0, #0x78
	strh r0, [r1, #4]
	movs r0, #4
	strb r0, [r1, #1]
	b _0805936A
	.align 2, 0
_08059240: .4byte 0x0808EC2C
_08059244: .4byte 0x0300162C
_08059248:
	ldr r0, [r4]
	ldr r0, [r0, #0x68]
	ldrb r0, [r0, #1]
	lsrs r0, r0, #7
	cmp r0, #0
	bne _08059256
	b _0805936A
_08059256:
	bl sub_08059F40
	ldr r0, [r4]
	ldr r0, [r0, #0x68]
	movs r1, #0
	bl sub_08009AFC
	bl sub_080593E8
	bl sub_0805A764
	ldr r1, [r4]
	movs r0, #0x3c
	strh r0, [r1, #4]
	movs r0, #5
	strb r0, [r1, #1]
	b _0805936A
_08059278:
	bl sub_08005934
	ldr r0, _080592A0 @ =0x0808EC34
	ldr r4, _080592A4 @ =0x0300162C
	ldr r2, [r4]
	ldr r1, [r2, #0x68]
	ldr r2, [r2, #0x6c]
	bl sub_080004D4
	bl sub_08005A2C
	bl sub_08059F98
	bl sub_0805A998
	ldr r1, [r4]
	movs r0, #6
	strb r0, [r1, #1]
	b _0805936A
	.align 2, 0
_080592A0: .4byte 0x0808EC34
_080592A4: .4byte 0x0300162C
_080592A8:
	ldr r1, [r4]
	ldrb r0, [r1, #0x18]
	lsls r0, r0, #0x1c
	cmp r0, #0
	blt _0805936A
	movs r0, #0x3c
	strh r0, [r1, #4]
	movs r0, #7
	strb r0, [r1, #1]
	b _0805936A
_080592BC:
	ldr r0, [r4]
	ldr r0, [r0, #0x6c]
	ldrb r0, [r0, #1]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _0805936A
	bl sub_08005934
	ldr r0, _080592F4 @ =0x0808EC44
	ldr r1, [r4]
	ldr r1, [r1, #0x6c]
	movs r2, #0
	bl sub_080004D4
	bl sub_0805A3EC
	ldr r0, _080592F8 @ =0x0808EC50
	ldr r1, [r4]
	ldr r1, [r1, #0x6c]
	movs r2, #0
	bl sub_080004D4
	bl sub_08005A2C
	ldr r1, [r4]
	movs r0, #8
	strb r0, [r1, #1]
	b _0805936A
	.align 2, 0
_080592F4: .4byte 0x0808EC44
_080592F8: .4byte 0x0808EC50
_080592FC:
	ldr r0, [r4]
	ldrb r0, [r0, #0x18]
	lsls r0, r0, #0x1b
	cmp r0, #0
	blt _0805936A
	bl sub_08059CC8
	ldr r1, [r4]
	movs r0, #9
	strb r0, [r1, #1]
	b _0805936A
_08059312:
	ldr r0, [r4]
	ldrb r0, [r0, #0x18]
	lsls r0, r0, #0x1d
	cmp r0, #0
	blt _0805936A
	movs r0, #0x4d
	bl m4aSongNumStart
	bl sub_08005934
	ldr r0, _0805933C @ =0x0808EC58
	ldr r1, [r4]
	ldr r1, [r1, #0x64]
	movs r2, #0
	bl sub_080004D4
	ldr r1, [r4]
	movs r0, #0xa
	strb r0, [r1, #1]
	b _0805936A
	.align 2, 0
_0805933C: .4byte 0x0808EC58
_08059340:
	ldr r0, [r4]
	ldr r1, [r0, #0x64]
	ldrb r0, [r1, #1]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _0805936A
	ldr r0, _08059360 @ =0x0808EC64
	movs r2, #0
	bl sub_080004D4
	bl sub_08005A2C
	ldr r1, [r4]
	movs r0, #0xb
	strb r0, [r1, #1]
	b _0805936A
	.align 2, 0
_08059360: .4byte 0x0808EC64
_08059364:
	movs r0, #1
	bl sub_08058CA4
_0805936A:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08059370
sub_08059370: @ 0x08059370
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _080593A4 @ =0x0300162C
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
	ldr r1, _080593A8 @ =0x0808EF34
	lsls r4, r4, #2
	adds r4, r4, r1
	ldr r1, [r4]
	bl sub_08007B84
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080593A4: .4byte 0x0300162C
_080593A8: .4byte 0x0808EF34

	thumb_func_start sub_080593AC
sub_080593AC: @ 0x080593AC
	push {lr}
	ldr r0, _080593C8 @ =0x0300162C
	ldr r2, [r0]
	ldrb r1, [r2, #0x18]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #0x18]
	movs r0, #0
	bl sub_08059370
	pop {r0}
	bx r0
	.align 2, 0
_080593C8: .4byte 0x0300162C

	thumb_func_start sub_080593CC
sub_080593CC: @ 0x080593CC
	push {lr}
	ldr r0, _080593E4 @ =0x0300162C
	ldr r2, [r0]
	ldrb r0, [r2, #0x18]
	movs r1, #1
	orrs r0, r1
	strb r0, [r2, #0x18]
	movs r0, #1
	bl sub_08059370
	pop {r0}
	bx r0
	.align 2, 0
_080593E4: .4byte 0x0300162C

	thumb_func_start sub_080593E8
sub_080593E8: @ 0x080593E8
	push {lr}
	ldr r0, _08059400 @ =0x0300162C
	ldr r2, [r0]
	ldrb r0, [r2, #0x18]
	movs r1, #1
	orrs r0, r1
	strb r0, [r2, #0x18]
	movs r0, #2
	bl sub_08059370
	pop {r0}
	bx r0
	.align 2, 0
_08059400: .4byte 0x0300162C

	thumb_func_start sub_08059404
sub_08059404: @ 0x08059404
	push {lr}
	ldr r0, _0805941C @ =0x0300162C
	ldr r0, [r0]
	adds r0, #0x8e
	ldrb r0, [r0]
	cmp r0, #0
	beq _08059420
	movs r0, #0
	movs r1, #0xa0
	bl sub_0800B278
	b _08059428
	.align 2, 0
_0805941C: .4byte 0x0300162C
_08059420:
	movs r0, #0
	movs r1, #0
	bl sub_0800B278
_08059428:
	bl sub_080593AC
	pop {r0}
	bx r0

	thumb_func_start sub_08059430
sub_08059430: @ 0x08059430
	bx lr
	.align 2, 0

	thumb_func_start sub_08059434
sub_08059434: @ 0x08059434
	push {r4, lr}
	bl sub_08007BD4
	adds r4, r0, #0
	bl sub_0800B2BC
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r2, _0805946C @ =0x0808EEA0
	ldrh r1, [r4, #2]
	lsls r1, r1, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r1, [r1, r2]
	bl sub_0800B278
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x35
	bls _08059466
	bl sub_080593AC
_08059466:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805946C: .4byte 0x0808EEA0

	thumb_func_start sub_08059470
sub_08059470: @ 0x08059470
	push {r4, lr}
	bl sub_08007BD4
	adds r4, r0, #0
	bl sub_0800B2BC
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r2, _080594AC @ =0x0808EF0C
	ldrh r1, [r4, #2]
	lsls r1, r1, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r1, [r1, r2]
	adds r1, #0xa0
	bl sub_0800B278
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x13
	bls _080594A4
	bl sub_080593AC
_080594A4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080594AC: .4byte 0x0808EF0C

	thumb_func_start sub_080594B0
sub_080594B0: @ 0x080594B0
	push {lr}
	ldr r0, _080594C0 @ =0x0300162C
	ldr r0, [r0]
	ldr r0, [r0, #0x30]
	bl sub_08009A00
	pop {r0}
	bx r0
	.align 2, 0
_080594C0: .4byte 0x0300162C

	thumb_func_start sub_080594C4
sub_080594C4: @ 0x080594C4
	push {r4, r5, lr}
	ldr r0, _080594F4 @ =0x0300162C
	ldr r0, [r0]
	ldr r5, [r0, #0x30]
	bl sub_0800B2BC
	movs r4, #0xb8
	subs r4, r4, r0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	bl sub_0800B2C8
	movs r2, #0xc3
	subs r2, r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08009A70
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080594F4: .4byte 0x0300162C

	thumb_func_start sub_080594F8
sub_080594F8: @ 0x080594F8
	push {r4, r5, lr}
	movs r0, #1
	movs r1, #0xff
	bl sub_080099E0
	adds r5, r0, #0
	movs r1, #1
	bl sub_08009A34
	bl sub_0800B2BC
	movs r4, #0xb8
	subs r4, r4, r0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	bl sub_0800B2C8
	movs r2, #0xc3
	subs r2, r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08009A70
	ldr r4, _08059588 @ =0x0300162C
	ldr r0, [r4]
	ldr r1, [r0, #0x20]
	adds r0, r5, #0
	bl sub_08009A78
	adds r0, r5, #0
	movs r1, #4
	bl sub_08009AB4
	ldr r1, _0805958C @ =0x0809B78C
	ldr r2, _08059590 @ =0x0809B620
	adds r0, r5, #0
	movs r3, #0
	bl sub_08009ACC
	adds r0, r5, #0
	movs r1, #0xff
	bl sub_08009B40
	ldr r0, [r4]
	str r5, [r0, #0x30]
	movs r1, #0xa
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	adds r1, r0, #0
	movs r0, #0
	movs r2, #4
	bl sub_08007EFC
	ldr r0, [r4]
	movs r1, #0xa
	ldrsh r0, [r0, r1]
	ldr r1, _08059594 @ =sub_080594B0
	bl sub_08007BA0
	ldr r0, [r4]
	movs r1, #0xa
	ldrsh r0, [r0, r1]
	ldr r1, _08059598 @ =sub_080594C4
	bl sub_08007B84
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08059588: .4byte 0x0300162C
_0805958C: .4byte 0x0809B78C
_08059590: .4byte 0x0809B620
_08059594: .4byte sub_080594B0
_08059598: .4byte sub_080594C4

	thumb_func_start sub_0805959C
sub_0805959C: @ 0x0805959C
	push {r4, r5, lr}
	movs r4, #0
	ldr r5, _080595BC @ =0x0300162C
_080595A2:
	ldr r0, [r5]
	lsls r1, r4, #2
	adds r0, #0x34
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_08009A00
	adds r4, #1
	cmp r4, #6
	ble _080595A2
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080595BC: .4byte 0x0300162C

	thumb_func_start sub_080595C0
sub_080595C0: @ 0x080595C0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	bl sub_08007BD4
	mov sl, r0
	movs r7, #0
_080595D4:
	bl sub_0800B2BC
	adds r4, r0, #0
	mov r0, sl
	adds r0, #0x15
	adds r0, r0, r7
	mov sb, r0
	ldrb r5, [r0]
	lsls r0, r7, #1
	mov r1, sl
	adds r6, r1, r0
	ldrh r0, [r6]
	movs r1, #0xa0
	bl __umodsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xf
	ldr r2, _080596A8 @ =0x0808EF5C
	adds r0, r0, r2
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r5, r5, r0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	subs r5, r5, r4
	str r5, [sp]
	bl sub_0800B2C8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r2, #0xb4
	lsls r2, r2, #1
	subs r0, r2, r0
	ldrh r2, [r6]
	mov r1, sl
	adds r1, #0xe
	adds r1, r1, r7
	ldrb r1, [r1]
	muls r1, r2, r1
	asrs r1, r1, #1
	subs r5, r0, r1
	adds r2, #1
	movs r0, #0
	strh r2, [r6]
	adds r1, r7, #1
	mov r8, r1
	lsls r7, r7, #2
	cmp r5, #0
	bge _080596C4
	strh r0, [r6]
	movs r0, #3
	bl sub_0800B828
	mov r2, r8
	lsls r1, r2, #4
	subs r1, r1, r2
	lsls r1, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xd
	subs r0, #8
	adds r1, r1, r0
	mov r0, sb
	strb r1, [r0]
	bl sub_0800B2C8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0xb4
	lsls r1, r1, #1
	subs r5, r1, r0
	ldr r6, _080596AC @ =0x0300162C
	ldr r0, [r6]
	adds r0, #0x34
	adds r0, r0, r7
	ldr r4, [r0]
	movs r0, #4
	bl sub_0800B828
	ldr r2, _080596B0 @ =0x0808EE5C
	ldr r1, [r6]
	adds r1, #0x8c
	ldrb r1, [r1]
	lsls r1, r1, #2
	adds r1, r1, r2
	lsls r0, r0, #0x10
	ldr r1, [r1]
	lsrs r0, r0, #0xf
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r0, r4, #0
	bl sub_08009AFC
	bl sub_0800B2C8
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080596B4
	ldr r0, [r6]
	adds r0, #0x34
	adds r0, r0, r7
	ldr r0, [r0]
	movs r1, #2
	movs r2, #0xc0
	bl sub_08009A0C
	b _080596C4
	.align 2, 0
_080596A8: .4byte 0x0808EF5C
_080596AC: .4byte 0x0300162C
_080596B0: .4byte 0x0808EE5C
_080596B4:
	ldr r0, [r6]
	adds r0, #0x34
	adds r0, r0, r7
	ldr r0, [r0]
	movs r1, #3
	movs r2, #0xc0
	bl sub_08009A0C
_080596C4:
	ldr r0, _080596F4 @ =0x0300162C
	ldr r0, [r0]
	adds r0, #0x34
	adds r0, r0, r7
	ldr r0, [r0]
	ldr r2, [sp]
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	lsls r2, r5, #0x10
	asrs r2, r2, #0x10
	bl sub_08009A70
	mov r7, r8
	cmp r7, #6
	bgt _080596E4
	b _080595D4
_080596E4:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080596F4: .4byte 0x0300162C

	thumb_func_start sub_080596F8
sub_080596F8: @ 0x080596F8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r4, _08059784 @ =0x0300162C
	ldr r0, [r4]
	movs r1, #0xc
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	mov r8, r0
	movs r0, #0
	mov r1, r8
	movs r2, #0x1c
	bl sub_08007EFC
	movs r6, #0
	mov sl, r4
_08059720:
	lsls r1, r6, #1
	mov r2, r8
	adds r3, r2, r1
	ldr r0, _08059788 @ =0x0808EF40
	adds r0, r1, r0
	ldrh r2, [r0]
	strh r2, [r3]
	mov r4, sl
	ldr r0, [r4]
	adds r0, #0x8e
	ldrb r0, [r0]
	mov sb, r1
	cmp r0, #0
	beq _08059742
	adds r0, r2, #0
	adds r0, #0xa0
	strh r0, [r3]
_08059742:
	mov r5, r8
	adds r5, #0xe
	adds r1, r5, r6
	ldr r0, _0805978C @ =0x0808EF4E
	add r0, sb
	ldrh r0, [r0]
	strb r0, [r1]
	movs r0, #3
	bl sub_0800B828
	mov r4, r8
	adds r4, #0x15
	adds r3, r4, r6
	adds r2, r6, #1
	lsls r1, r2, #4
	subs r1, r1, r2
	lsls r1, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xd
	subs r0, #8
	adds r1, r1, r0
	strb r1, [r3]
	mov r1, sl
	ldr r0, [r1]
	adds r0, #0x8e
	ldrb r0, [r0]
	adds r7, r5, #0
	str r2, [sp]
	cmp r0, #0
	beq _08059790
	movs r0, #2
	b _08059792
	.align 2, 0
_08059784: .4byte 0x0300162C
_08059788: .4byte 0x0808EF40
_0805978C: .4byte 0x0808EF4E
_08059790:
	movs r0, #3
_08059792:
	movs r1, #0xc0
	bl sub_080099E0
	adds r5, r0, #0
	adds r0, r5, #0
	movs r1, #1
	bl sub_08009A34
	bl sub_0800B2BC
	adds r1, r4, r6
	ldrb r4, [r1]
	subs r4, r4, r0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	bl sub_0800B2C8
	movs r3, #0xb4
	lsls r3, r3, #1
	adds r2, r3, #0
	subs r2, r2, r0
	mov r0, r8
	add r0, sb
	ldrh r1, [r0]
	adds r0, r7, r6
	ldrb r0, [r0]
	muls r0, r1, r0
	asrs r0, r0, #1
	subs r2, r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08009A70
	mov r4, sl
	ldr r0, [r4]
	ldr r1, [r0, #0x24]
	adds r0, r5, #0
	bl sub_08009A78
	adds r0, r5, #0
	movs r1, #4
	bl sub_08009AB4
	ldr r1, _08059868 @ =0x0808EE34
	ldr r0, [r4]
	adds r0, #0x8c
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r4, [r0]
	movs r0, #4
	bl sub_0800B828
	ldr r2, _0805986C @ =0x0808EE5C
	mov r3, sl
	ldr r1, [r3]
	adds r1, #0x8c
	ldrb r1, [r1]
	lsls r1, r1, #2
	adds r1, r1, r2
	lsls r0, r0, #0x10
	ldr r1, [r1]
	lsrs r0, r0, #0xf
	adds r0, r0, r1
	ldrb r3, [r0]
	adds r0, r5, #0
	ldr r1, _08059870 @ =0x0809B78C
	adds r2, r4, #0
	bl sub_08009ACC
	adds r0, r5, #0
	movs r1, #0xff
	bl sub_08009B40
	mov r4, sl
	ldr r0, [r4]
	lsls r1, r6, #2
	adds r0, #0x34
	adds r0, r0, r1
	str r5, [r0]
	ldr r6, [sp]
	cmp r6, #6
	bgt _0805983E
	b _08059720
_0805983E:
	ldr r4, _08059874 @ =0x0300162C
	ldr r0, [r4]
	movs r1, #0xc
	ldrsh r0, [r0, r1]
	ldr r1, _08059878 @ =sub_0805959C
	bl sub_08007BA0
	ldr r0, [r4]
	movs r2, #0xc
	ldrsh r0, [r0, r2]
	ldr r1, _0805987C @ =sub_080595C0
	bl sub_08007B84
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08059868: .4byte 0x0808EE34
_0805986C: .4byte 0x0808EE5C
_08059870: .4byte 0x0809B78C
_08059874: .4byte 0x0300162C
_08059878: .4byte sub_0805959C
_0805987C: .4byte sub_080595C0

	thumb_func_start sub_08059880
sub_08059880: @ 0x08059880
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _080598B4 @ =0x0300162C
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
	ldr r1, _080598B8 @ =0x0808F0B0
	lsls r4, r4, #2
	adds r4, r4, r1
	ldr r1, [r4]
	bl sub_08007B84
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080598B4: .4byte 0x0300162C
_080598B8: .4byte 0x0808F0B0

	thumb_func_start sub_080598BC
sub_080598BC: @ 0x080598BC
	push {lr}
	ldr r0, _080598D8 @ =0x0300162C
	ldr r2, [r0]
	ldrb r1, [r2, #0x18]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #0x18]
	movs r0, #0
	bl sub_08059880
	pop {r0}
	bx r0
	.align 2, 0
_080598D8: .4byte 0x0300162C

	thumb_func_start sub_080598DC
sub_080598DC: @ 0x080598DC
	push {lr}
	ldr r0, _080598F4 @ =0x0300162C
	ldr r2, [r0]
	ldrb r0, [r2, #0x18]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2, #0x18]
	movs r0, #1
	bl sub_08059880
	pop {r0}
	bx r0
	.align 2, 0
_080598F4: .4byte 0x0300162C

	thumb_func_start sub_080598F8
sub_080598F8: @ 0x080598F8
	push {lr}
	ldr r0, _08059910 @ =0x0300162C
	ldr r2, [r0]
	ldrb r0, [r2, #0x18]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2, #0x18]
	movs r0, #2
	bl sub_08059880
	pop {r0}
	bx r0
	.align 2, 0
_08059910: .4byte 0x0300162C

	thumb_func_start sub_08059914
sub_08059914: @ 0x08059914
	push {lr}
	ldr r0, _08059924 @ =0x0300162C
	ldr r0, [r0]
	ldr r0, [r0, #0x60]
	bl sub_08009A00
	pop {r0}
	bx r0
	.align 2, 0
_08059924: .4byte 0x0300162C

	thumb_func_start sub_08059928
sub_08059928: @ 0x08059928
	push {r4, r5, lr}
	movs r0, #0
	movs r1, #0x80
	bl sub_080099E0
	adds r4, r0, #0
	movs r1, #0
	bl sub_08009A34
	adds r0, r4, #0
	movs r1, #0x78
	movs r2, #0x50
	bl sub_08009A70
	ldr r5, _08059994 @ =0x0300162C
	ldr r0, [r5]
	ldr r1, [r0, #0x28]
	adds r0, r4, #0
	bl sub_08009A78
	adds r0, r4, #0
	movs r1, #7
	bl sub_08009AB4
	ldr r1, _08059998 @ =0x080954D4
	ldr r0, _0805999C @ =0x03004400
	ldrb r0, [r0, #0x14]
	lsls r0, r0, #2
	adds r1, r0, r1
	ldr r1, [r1]
	ldr r2, _080599A0 @ =0x080954D0
	adds r0, r0, r2
	ldr r2, [r0]
	adds r0, r4, #0
	movs r3, #0
	bl sub_08009ACC
	adds r0, r4, #0
	movs r1, #0xff
	bl sub_08009B40
	ldr r0, [r5]
	str r4, [r0, #0x60]
	movs r1, #0x10
	ldrsh r0, [r0, r1]
	ldr r1, _080599A4 @ =sub_08059914
	bl sub_08007BA0
	bl sub_080598BC
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08059994: .4byte 0x0300162C
_08059998: .4byte 0x080954D4
_0805999C: .4byte 0x03004400
_080599A0: .4byte 0x080954D0
_080599A4: .4byte sub_08059914

	thumb_func_start sub_080599A8
sub_080599A8: @ 0x080599A8
	bx lr
	.align 2, 0

	thumb_func_start sub_080599AC
sub_080599AC: @ 0x080599AC
	push {r4, r5, r6, lr}
	bl sub_08007BD4
	adds r5, r0, #0
	ldrb r6, [r5]
	cmp r6, #1
	beq _08059A10
	cmp r6, #1
	bgt _080599C4
	cmp r6, #0
	beq _080599CA
	b _08059A60
_080599C4:
	cmp r6, #2
	beq _08059A5C
	b _08059A60
_080599CA:
	ldr r4, _08059A08 @ =0x0300162C
	ldr r0, [r4]
	ldr r0, [r0, #0x60]
	movs r1, #0
	bl sub_08009AFC
	ldr r0, [r4]
	ldr r0, [r0, #0x60]
	movs r1, #1
	bl sub_08009A34
	ldr r0, [r4]
	ldr r0, [r0, #0x60]
	movs r1, #1
	bl sub_08009B6C
	ldr r1, _08059A0C @ =0x030024E0
	adds r2, r1, #0
	adds r2, #0x4a
	movs r0, #0xc4
	lsls r0, r0, #4
	strh r0, [r2]
	adds r1, #0x4c
	movs r0, #0x80
	lsls r0, r0, #5
	strh r0, [r1]
	movs r0, #1
	strb r0, [r5]
	strh r6, [r5, #2]
	b _08059A60
	.align 2, 0
_08059A08: .4byte 0x0300162C
_08059A0C: .4byte 0x030024E0
_08059A10:
	ldrh r1, [r5, #2]
	adds r1, #1
	movs r6, #0
	strh r1, [r5, #2]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r4, _08059A54 @ =0x030024E0
	movs r0, #0x10
	subs r0, r0, r1
	movs r2, #0x1f
	ands r0, r2
	lsls r0, r0, #8
	ands r1, r2
	orrs r0, r1
	adds r1, r4, #0
	adds r1, #0x4c
	strh r0, [r1]
	ldrh r0, [r5, #2]
	cmp r0, #0xf
	bls _08059A60
	movs r0, #2
	strb r0, [r5]
	strh r6, [r5, #2]
	ldr r0, _08059A58 @ =0x0300162C
	ldr r0, [r0]
	ldr r0, [r0, #0x60]
	movs r1, #0
	bl sub_08009B6C
	adds r0, r4, #0
	adds r0, #0x4a
	strh r6, [r0]
	b _08059A60
	.align 2, 0
_08059A54: .4byte 0x030024E0
_08059A58: .4byte 0x0300162C
_08059A5C:
	bl sub_080598BC
_08059A60:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08059A68
sub_08059A68: @ 0x08059A68
	push {r4, r5, r6, lr}
	bl sub_08007BD4
	adds r5, r0, #0
	ldrb r0, [r5]
	cmp r0, #4
	bls _08059A78
	b _08059C64
_08059A78:
	lsls r0, r0, #2
	ldr r1, _08059A84 @ =_08059A88
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08059A84: .4byte _08059A88
_08059A88: @ jump table
	.4byte _08059A9C @ case 0
	.4byte _08059B08 @ case 1
	.4byte _08059C18 @ case 2
	.4byte _08059C24 @ case 3
	.4byte _08059C60 @ case 4
_08059A9C:
	ldr r4, _08059AF4 @ =0x0300162C
	ldr r1, [r4]
	ldr r0, [r1, #0x60]
	ldr r2, _08059AF8 @ =0x0808F09C
	adds r1, #0x89
	ldrb r1, [r1]
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrb r1, [r1]
	bl sub_08009AFC
	ldr r0, [r4]
	ldr r0, [r0, #0x60]
	movs r1, #1
	bl sub_08009A34
	ldr r3, _08059AFC @ =0x0808F0A4
	ldr r0, [r4]
	adds r0, #0x89
	ldrb r2, [r0]
	lsls r1, r2, #2
	adds r1, r1, r3
	ldr r0, _08059B00 @ =0x03004400
	ldrb r0, [r0, #0x14]
	ldr r1, [r1]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _08059B04 @ =0x0203A458
	lsls r2, r2, #1
	adds r2, r2, r1
	movs r3, #0xb8
	lsls r3, r3, #1
	adds r1, r3, #0
	ldrb r2, [r2]
	adds r1, r1, r2
	bl sub_08009554
	movs r1, #0
	movs r0, #1
	strb r0, [r5]
	strh r1, [r5, #2]
	b _08059C64
	.align 2, 0
_08059AF4: .4byte 0x0300162C
_08059AF8: .4byte 0x0808F09C
_08059AFC: .4byte 0x0808F0A4
_08059B00: .4byte 0x03004400
_08059B04: .4byte 0x0203A458
_08059B08:
	ldr r2, _08059B20 @ =0x030024B0
	ldrh r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08059B24
	movs r0, #0xcc
	bl m4aSongNumStart
	movs r0, #2
	strb r0, [r5]
	b _08059C64
	.align 2, 0
_08059B20: .4byte 0x030024B0
_08059B24:
	ldrh r1, [r2, #4]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08059B6C
	ldr r6, _08059B60 @ =0x0300162C
	ldr r0, [r6]
	adds r1, r0, #0
	adds r1, #0x89
	ldrb r0, [r1]
	cmp r0, #0
	beq _08059B6C
	ldr r5, _08059B64 @ =0x0808F0A4
	adds r1, r0, #0
	lsls r1, r1, #2
	adds r1, r1, r5
	ldr r4, _08059B68 @ =0x03004400
	ldrb r0, [r4, #0x14]
	ldr r1, [r1]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_080095E0
	ldr r1, [r6]
	adds r1, #0x89
	ldrb r0, [r1]
	subs r0, #1
	b _08059BA4
	.align 2, 0
_08059B60: .4byte 0x0300162C
_08059B64: .4byte 0x0808F0A4
_08059B68: .4byte 0x03004400
_08059B6C:
	ldrh r1, [r2, #4]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08059C64
	ldr r6, _08059BFC @ =0x0300162C
	ldr r0, [r6]
	adds r1, r0, #0
	adds r1, #0x89
	ldrb r0, [r1]
	cmp r0, #1
	bhi _08059C64
	ldr r5, _08059C00 @ =0x0808F0A4
	adds r1, r0, #0
	lsls r1, r1, #2
	adds r1, r1, r5
	ldr r4, _08059C04 @ =0x03004400
	ldrb r0, [r4, #0x14]
	ldr r1, [r1]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_080095E0
	ldr r1, [r6]
	adds r1, #0x89
	ldrb r0, [r1]
	adds r0, #1
_08059BA4:
	strb r0, [r1]
	movs r0, #0xca
	bl m4aSongNumStart
	ldr r1, [r6]
	ldr r0, [r1, #0x60]
	ldr r2, _08059C08 @ =0x0808F09C
	adds r1, #0x89
	ldrb r1, [r1]
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrb r1, [r1]
	bl sub_08009AFC
	ldr r1, _08059C0C @ =0x080954C8
	ldrb r0, [r4, #0x14]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _08059C10 @ =0x050002E0
	bl sub_08008348
	ldr r0, [r6]
	adds r0, #0x89
	ldrb r2, [r0]
	lsls r1, r2, #2
	adds r1, r1, r5
	ldrb r0, [r4, #0x14]
	ldr r1, [r1]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _08059C14 @ =0x0203A458
	lsls r2, r2, #1
	adds r2, r2, r1
	movs r3, #0xb8
	lsls r3, r3, #1
	adds r1, r3, #0
	ldrb r2, [r2]
	adds r1, r1, r2
	bl sub_08009554
	b _08059C64
	.align 2, 0
_08059BFC: .4byte 0x0300162C
_08059C00: .4byte 0x0808F0A4
_08059C04: .4byte 0x03004400
_08059C08: .4byte 0x0808F09C
_08059C0C: .4byte 0x080954C8
_08059C10: .4byte 0x050002E0
_08059C14: .4byte 0x0203A458
_08059C18:
	movs r0, #0x1e
	bl sub_08007AC0
	movs r0, #3
	strb r0, [r5]
	b _08059C64
_08059C24:
	ldr r2, _08059C54 @ =0x0808F0A4
	ldr r4, _08059C58 @ =0x0300162C
	ldr r0, [r4]
	adds r0, #0x89
	ldrb r1, [r0]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r0, _08059C5C @ =0x03004400
	ldrb r0, [r0, #0x14]
	ldr r1, [r1]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_080095E0
	ldr r0, [r4]
	ldr r0, [r0, #0x60]
	movs r1, #0
	bl sub_08009A34
	movs r0, #4
	strb r0, [r5]
	b _08059C64
	.align 2, 0
_08059C54: .4byte 0x0808F0A4
_08059C58: .4byte 0x0300162C
_08059C5C: .4byte 0x03004400
_08059C60:
	bl sub_080598BC
_08059C64:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08059C6C
sub_08059C6C: @ 0x08059C6C
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _08059CA0 @ =0x0300162C
	ldr r0, [r5]
	movs r1, #0x12
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	movs r1, #0
	strb r1, [r0]
	strh r1, [r0, #2]
	ldr r0, [r5]
	movs r1, #0x12
	ldrsh r0, [r0, r1]
	ldr r1, _08059CA4 @ =0x0808F0EC
	lsls r4, r4, #2
	adds r4, r4, r1
	ldr r1, [r4]
	bl sub_08007B84
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08059CA0: .4byte 0x0300162C
_08059CA4: .4byte 0x0808F0EC

	thumb_func_start sub_08059CA8
sub_08059CA8: @ 0x08059CA8
	push {lr}
	ldr r0, _08059CC4 @ =0x0300162C
	ldr r2, [r0]
	ldrb r1, [r2, #0x18]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #0x18]
	movs r0, #0
	bl sub_08059C6C
	pop {r0}
	bx r0
	.align 2, 0
_08059CC4: .4byte 0x0300162C

	thumb_func_start sub_08059CC8
sub_08059CC8: @ 0x08059CC8
	push {lr}
	ldr r0, _08059CE0 @ =0x0300162C
	ldr r2, [r0]
	ldrb r0, [r2, #0x18]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2, #0x18]
	movs r0, #1
	bl sub_08059C6C
	pop {r0}
	bx r0
	.align 2, 0
_08059CE0: .4byte 0x0300162C

	thumb_func_start sub_08059CE4
sub_08059CE4: @ 0x08059CE4
	push {lr}
	ldr r0, _08059CF4 @ =0x0300162C
	ldr r0, [r0]
	ldr r0, [r0, #0x64]
	bl sub_08009A00
	pop {r0}
	bx r0
	.align 2, 0
_08059CF4: .4byte 0x0300162C

	thumb_func_start sub_08059CF8
sub_08059CF8: @ 0x08059CF8
	push {r4, r5, lr}
	movs r0, #1
	movs r1, #0x80
	bl sub_080099E0
	adds r5, r0, #0
	movs r1, #1
	bl sub_08009A34
	bl sub_0800B2BC
	movs r4, #0x78
	subs r4, r4, r0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	bl sub_0800B2C8
	movs r1, #0x82
	lsls r1, r1, #1
	adds r2, r1, #0
	subs r2, r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08009A70
	ldr r1, _08059D78 @ =0x06010000
	adds r0, r5, #0
	bl sub_08009A78
	ldr r4, _08059D7C @ =0x0300162C
	ldr r0, [r4]
	ldr r1, [r0, #0x74]
	adds r0, r5, #0
	movs r2, #0
	bl sub_08009BBC
	adds r0, r5, #0
	movs r1, #0
	bl sub_08009AB4
	ldr r1, _08059D80 @ =0x08091B14
	ldr r2, _08059D84 @ =0x08091A84
	adds r0, r5, #0
	movs r3, #0
	bl sub_08009ACC
	adds r0, r5, #0
	movs r1, #0xff
	bl sub_08009B40
	ldr r0, [r4]
	str r5, [r0, #0x64]
	movs r1, #0x12
	ldrsh r0, [r0, r1]
	ldr r1, _08059D88 @ =sub_08059CE4
	bl sub_08007BA0
	bl sub_08059CA8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08059D78: .4byte 0x06010000
_08059D7C: .4byte 0x0300162C
_08059D80: .4byte 0x08091B14
_08059D84: .4byte 0x08091A84
_08059D88: .4byte sub_08059CE4

	thumb_func_start sub_08059D8C
sub_08059D8C: @ 0x08059D8C
	push {r4, r5, lr}
	ldr r0, _08059DC0 @ =0x0300162C
	ldr r0, [r0]
	ldr r5, [r0, #0x64]
	bl sub_0800B2BC
	movs r4, #0x78
	subs r4, r4, r0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	bl sub_0800B2C8
	movs r1, #0x82
	lsls r1, r1, #1
	adds r2, r1, #0
	subs r2, r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08009A70
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08059DC0: .4byte 0x0300162C

	thumb_func_start sub_08059DC4
sub_08059DC4: @ 0x08059DC4
	push {r4, r5, r6, lr}
	bl sub_08007BD4
	adds r6, r0, #0
	ldr r0, _08059E08 @ =0x0300162C
	ldr r0, [r0]
	ldr r5, [r0, #0x64]
	bl sub_0800B2BC
	movs r4, #0x78
	subs r4, r4, r0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	bl sub_0800B2C8
	movs r1, #0x82
	lsls r1, r1, #1
	adds r2, r1, #0
	subs r2, r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08009A70
	ldrb r0, [r6]
	cmp r0, #5
	bls _08059DFE
	b _08059EFC
_08059DFE:
	lsls r0, r0, #2
	ldr r1, _08059E0C @ =_08059E10
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08059E08: .4byte 0x0300162C
_08059E0C: .4byte _08059E10
_08059E10: @ jump table
	.4byte _08059E28 @ case 0
	.4byte _08059E38 @ case 1
	.4byte _08059E8C @ case 2
	.4byte _08059EB8 @ case 3
	.4byte _08059ED8 @ case 4
	.4byte _08059EF8 @ case 5
_08059E28:
	movs r0, #0x18
	bl sub_08007AC0
	movs r1, #0
	movs r0, #1
	strb r0, [r6]
	strh r1, [r6, #2]
	b _08059EFC
_08059E38:
	ldr r0, _08059E84 @ =0x0300162C
	ldr r0, [r0]
	ldr r5, [r0, #0x64]
	bl sub_0800B2BC
	ldr r2, _08059E88 @ =0x0808F0BC
	ldrh r1, [r6, #2]
	lsls r1, r1, #1
	adds r1, r1, r2
	subs r0, #0x78
	ldrh r4, [r1]
	subs r4, r4, r0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	bl sub_0800B2C8
	movs r1, #0x82
	lsls r1, r1, #1
	adds r2, r1, #0
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
	cmp r0, #0x17
	bls _08059EFC
	movs r0, #0
	strh r0, [r6, #2]
	movs r0, #2
	strb r0, [r6]
	b _08059EFC
	.align 2, 0
_08059E84: .4byte 0x0300162C
_08059E88: .4byte 0x0808F0BC
_08059E8C:
	ldr r0, _08059EB0 @ =0x000003F1
	bl m4aSongNumStart
	ldr r4, _08059EB4 @ =0x0300162C
	ldr r0, [r4]
	ldr r0, [r0, #0x64]
	movs r1, #0xb
	bl sub_08009AFC
	ldr r0, [r4]
	ldr r0, [r0, #0x64]
	movs r1, #0
	bl sub_08009B40
	movs r0, #3
	strb r0, [r6]
	b _08059EFC
	.align 2, 0
_08059EB0: .4byte 0x000003F1
_08059EB4: .4byte 0x0300162C
_08059EB8:
	ldr r0, _08059ED4 @ =0x0300162C
	ldr r0, [r0]
	ldr r0, [r0, #0x64]
	ldrb r0, [r0, #1]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _08059EFC
	movs r0, #0x1e
	bl sub_08007AC0
	movs r0, #4
	strb r0, [r6]
	b _08059EFC
	.align 2, 0
_08059ED4: .4byte 0x0300162C
_08059ED8:
	ldr r4, _08059EF4 @ =0x0300162C
	ldr r0, [r4]
	ldr r0, [r0, #0x64]
	movs r1, #8
	bl sub_08009AFC
	ldr r0, [r4]
	ldr r0, [r0, #0x64]
	movs r1, #0xff
	bl sub_08009B40
	movs r0, #5
	strb r0, [r6]
	b _08059EFC
	.align 2, 0
_08059EF4: .4byte 0x0300162C
_08059EF8:
	bl sub_08059CA8
_08059EFC:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08059F04
sub_08059F04: @ 0x08059F04
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _08059F38 @ =0x0300162C
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
	ldr r1, _08059F3C @ =0x0808F0F4
	lsls r4, r4, #2
	adds r4, r4, r1
	ldr r1, [r4]
	bl sub_08007B84
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08059F38: .4byte 0x0300162C
_08059F3C: .4byte 0x0808F0F4

	thumb_func_start sub_08059F40
sub_08059F40: @ 0x08059F40
	push {lr}
	ldr r0, _08059F5C @ =0x0300162C
	ldr r2, [r0]
	ldrb r1, [r2, #0x18]
	movs r0, #9
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #0x18]
	movs r0, #0
	bl sub_08059F04
	pop {r0}
	bx r0
	.align 2, 0
_08059F5C: .4byte 0x0300162C

	thumb_func_start sub_08059F60
sub_08059F60: @ 0x08059F60
	push {lr}
	ldr r0, _08059F78 @ =0x0300162C
	ldr r2, [r0]
	ldrb r0, [r2, #0x18]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2, #0x18]
	movs r0, #1
	bl sub_08059F04
	pop {r0}
	bx r0
	.align 2, 0
_08059F78: .4byte 0x0300162C

	thumb_func_start sub_08059F7C
sub_08059F7C: @ 0x08059F7C
	push {lr}
	ldr r0, _08059F94 @ =0x0300162C
	ldr r2, [r0]
	ldrb r0, [r2, #0x18]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2, #0x18]
	movs r0, #2
	bl sub_08059F04
	pop {r0}
	bx r0
	.align 2, 0
_08059F94: .4byte 0x0300162C

	thumb_func_start sub_08059F98
sub_08059F98: @ 0x08059F98
	push {lr}
	ldr r0, _08059FB0 @ =0x0300162C
	ldr r2, [r0]
	ldrb r0, [r2, #0x18]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2, #0x18]
	movs r0, #3
	bl sub_08059F04
	pop {r0}
	bx r0
	.align 2, 0
_08059FB0: .4byte 0x0300162C

	thumb_func_start sub_08059FB4
sub_08059FB4: @ 0x08059FB4
	push {lr}
	ldr r0, _08059FC4 @ =0x0300162C
	ldr r0, [r0]
	ldr r0, [r0, #0x68]
	bl sub_08009A00
	pop {r0}
	bx r0
	.align 2, 0
_08059FC4: .4byte 0x0300162C

	thumb_func_start sub_08059FC8
sub_08059FC8: @ 0x08059FC8
	push {r4, r5, lr}
	movs r0, #1
	movs r1, #0x40
	bl sub_080099E0
	adds r5, r0, #0
	movs r1, #0
	bl sub_08009A34
	bl sub_0800B2BC
	movs r4, #0x78
	subs r4, r4, r0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	bl sub_0800B2C8
	movs r1, #0x82
	lsls r1, r1, #1
	adds r2, r1, #0
	subs r2, r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08009A70
	ldr r1, _0805A048 @ =0x06010400
	adds r0, r5, #0
	bl sub_08009A78
	ldr r4, _0805A04C @ =0x0300162C
	ldr r0, [r4]
	ldr r1, [r0, #0x7c]
	adds r0, r5, #0
	movs r2, #0
	bl sub_08009BBC
	adds r0, r5, #0
	movs r1, #1
	bl sub_08009AB4
	ldr r1, _0805A050 @ =0x08192488
	ldr r2, _0805A054 @ =0x081923EC
	adds r0, r5, #0
	movs r3, #0
	bl sub_08009ACC
	adds r0, r5, #0
	movs r1, #0xff
	bl sub_08009B40
	ldr r0, [r4]
	str r5, [r0, #0x68]
	movs r1, #0x14
	ldrsh r0, [r0, r1]
	ldr r1, _0805A058 @ =sub_08059FB4
	bl sub_08007BA0
	bl sub_08059F40
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805A048: .4byte 0x06010400
_0805A04C: .4byte 0x0300162C
_0805A050: .4byte 0x08192488
_0805A054: .4byte 0x081923EC
_0805A058: .4byte sub_08059FB4

	thumb_func_start sub_0805A05C
sub_0805A05C: @ 0x0805A05C
	push {r4, r5, lr}
	ldr r0, _0805A090 @ =0x0300162C
	ldr r0, [r0]
	ldr r5, [r0, #0x68]
	bl sub_0800B2BC
	movs r4, #0x78
	subs r4, r4, r0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	bl sub_0800B2C8
	movs r1, #0x82
	lsls r1, r1, #1
	adds r2, r1, #0
	subs r2, r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08009A70
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805A090: .4byte 0x0300162C

	thumb_func_start sub_0805A094
sub_0805A094: @ 0x0805A094
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	bl sub_08007BD4
	adds r7, r0, #0
	ldrb r6, [r7]
	cmp r6, #1
	beq _0805A104
	cmp r6, #1
	bgt _0805A0B2
	cmp r6, #0
	beq _0805A0B8
	b _0805A1BA
_0805A0B2:
	cmp r6, #2
	beq _0805A180
	b _0805A1BA
_0805A0B8:
	movs r0, #0xfa
	lsls r0, r0, #2
	bl m4aSongNumStart
	ldr r0, _0805A100 @ =0x0300162C
	mov r8, r0
	ldr r0, [r0]
	ldr r5, [r0, #0x68]
	bl sub_0800B2BC
	movs r4, #0x78
	subs r4, r4, r0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	bl sub_0800B2C8
	movs r2, #0xa0
	subs r2, r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08009A70
	mov r1, r8
	ldr r0, [r1]
	ldr r0, [r0, #0x68]
	movs r1, #1
	bl sub_08009A34
	movs r0, #0xa0
	strh r0, [r7, #4]
	strh r6, [r7, #2]
	movs r0, #1
	strb r0, [r7]
	b _0805A1BA
	.align 2, 0
_0805A100: .4byte 0x0300162C
_0805A104:
	ldrh r0, [r7, #2]
	adds r0, #1
	strh r0, [r7, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xf
	adds r0, #1
	movs r1, #0xc
	bl __divsi3
	ldrh r1, [r7, #4]
	adds r1, r1, r0
	strh r1, [r7, #4]
	lsls r1, r1, #0x10
	ldr r0, _0805A174 @ =0x01030000
	cmp r1, r0
	ble _0805A14A
	movs r0, #0x4c
	bl m4aSongNumStart
	ldr r0, _0805A178 @ =0x000003E9
	bl m4aSongNumStart
	movs r4, #0x82
	lsls r4, r4, #1
	strh r4, [r7, #4]
	movs r0, #2
	strb r0, [r7]
	movs r0, #0
	strh r0, [r7, #2]
	bl sub_080593E8
	movs r0, #0x78
	adds r1, r4, #0
	bl sub_0805AA00
_0805A14A:
	ldr r0, _0805A17C @ =0x0300162C
	ldr r0, [r0]
	ldr r6, [r0, #0x68]
	bl sub_0800B2BC
	movs r4, #0x78
	subs r4, r4, r0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	bl sub_0800B2C8
	ldrh r2, [r7, #4]
	subs r2, r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_08009A70
	b _0805A1BA
	.align 2, 0
_0805A174: .4byte 0x01030000
_0805A178: .4byte 0x000003E9
_0805A17C: .4byte 0x0300162C
_0805A180:
	ldr r0, _0805A1C8 @ =0x0300162C
	mov sb, r0
	ldr r0, [r0]
	ldr r0, [r0, #0x68]
	mov r8, r0
	bl sub_0800B2BC
	movs r4, #0x78
	subs r4, r4, r0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	bl sub_0800B2C8
	ldrh r2, [r7, #4]
	subs r2, r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	mov r0, r8
	adds r1, r4, #0
	bl sub_08009A70
	mov r1, sb
	ldr r0, [r1]
	ldrb r0, [r0, #0x18]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _0805A1BA
	bl sub_08059F40
_0805A1BA:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805A1C8: .4byte 0x0300162C

	thumb_func_start sub_0805A1CC
sub_0805A1CC: @ 0x0805A1CC
	push {r4, r5, r6, r7, lr}
	bl sub_08007BD4
	adds r7, r0, #0
	ldrb r4, [r7]
	cmp r4, #1
	beq _0805A204
	cmp r4, #1
	bgt _0805A1E4
	cmp r4, #0
	beq _0805A1EA
	b _0805A270
_0805A1E4:
	cmp r4, #2
	beq _0805A26C
	b _0805A270
_0805A1EA:
	ldr r0, _0805A200 @ =0x0300162C
	ldr r0, [r0]
	ldr r0, [r0, #0x68]
	movs r1, #0xe
	bl sub_08009AFC
	strh r4, [r7, #2]
	movs r0, #1
	strb r0, [r7]
	b _0805A270
	.align 2, 0
_0805A200: .4byte 0x0300162C
_0805A204:
	ldrh r0, [r7, #2]
	adds r0, #1
	strh r0, [r7, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x20
	bne _0805A218
	ldr r0, _0805A264 @ =0x000003EE
	bl m4aSongNumStart
_0805A218:
	ldr r5, _0805A268 @ =0x0300162C
	ldr r0, [r5]
	ldr r6, [r0, #0x68]
	bl sub_0800B2BC
	movs r4, #0x78
	subs r4, r4, r0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	bl sub_0800B2C8
	ldrh r2, [r7, #4]
	subs r2, r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_08009A70
	ldr r0, [r5]
	ldr r0, [r0, #0x68]
	ldrb r0, [r0, #1]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _0805A270
	movs r0, #0
	strh r0, [r7, #2]
	movs r1, #0x82
	lsls r1, r1, #1
	movs r0, #0x78
	bl sub_0805AA00
	bl sub_080593E8
	bl sub_0805A764
	b _0805A270
	.align 2, 0
_0805A264: .4byte 0x000003EE
_0805A268: .4byte 0x0300162C
_0805A26C:
	bl sub_08059F40
_0805A270:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0805A278
sub_0805A278: @ 0x0805A278
	push {r4, r5, r6, lr}
	bl sub_08007BD4
	adds r6, r0, #0
	ldrb r5, [r6]
	cmp r5, #1
	beq _0805A2C4
	cmp r5, #1
	bgt _0805A290
	cmp r5, #0
	beq _0805A29A
	b _0805A350
_0805A290:
	cmp r5, #2
	beq _0805A2E8
	cmp r5, #3
	beq _0805A34C
	b _0805A350
_0805A29A:
	ldr r4, _0805A2C0 @ =0x0300162C
	ldr r0, [r4]
	ldr r0, [r0, #0x68]
	movs r1, #0xe
	bl sub_08009AFC
	ldr r0, [r4]
	ldr r0, [r0, #0x68]
	movs r1, #0
	bl sub_08009B40
	movs r0, #0x82
	lsls r0, r0, #1
	strh r0, [r6, #4]
	movs r0, #1
	strb r0, [r6]
	strh r5, [r6, #2]
	b _0805A350
	.align 2, 0
_0805A2C0: .4byte 0x0300162C
_0805A2C4:
	ldrh r0, [r6, #2]
	adds r0, #1
	strh r0, [r6, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x1f
	bls _0805A350
	ldr r0, _0805A2E4 @ =0x000003EF
	bl m4aSongNumStart
	movs r0, #2
	strb r0, [r6]
	movs r0, #0
	strh r0, [r6, #2]
	b _0805A350
	.align 2, 0
_0805A2E4: .4byte 0x000003EF
_0805A2E8:
	ldrh r4, [r6, #4]
	subs r4, #8
	ldrh r0, [r6, #2]
	adds r0, #1
	strh r0, [r6, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xf
	adds r0, #1
	movs r1, #0xc
	bl __divsi3
	adds r4, r4, r0
	strh r4, [r6, #4]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #0xa0
	bgt _0805A31E
	ldr r0, _0805A348 @ =0x0300162C
	ldr r0, [r0]
	ldr r0, [r0, #0x68]
	movs r1, #0
	bl sub_08009A34
	movs r0, #0
	strh r0, [r6, #2]
	movs r0, #3
	strb r0, [r6]
_0805A31E:
	ldr r0, _0805A348 @ =0x0300162C
	ldr r0, [r0]
	ldr r5, [r0, #0x68]
	bl sub_0800B2BC
	movs r4, #0x78
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
	b _0805A350
	.align 2, 0
_0805A348: .4byte 0x0300162C
_0805A34C:
	bl sub_08059F40
_0805A350:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0805A358
sub_0805A358: @ 0x0805A358
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _0805A38C @ =0x0300162C
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
	ldr r1, _0805A390 @ =0x0808F104
	lsls r4, r4, #2
	adds r4, r4, r1
	ldr r1, [r4]
	bl sub_08007B84
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805A38C: .4byte 0x0300162C
_0805A390: .4byte 0x0808F104

	thumb_func_start sub_0805A394
sub_0805A394: @ 0x0805A394
	push {lr}
	ldr r0, _0805A3B0 @ =0x0300162C
	ldr r2, [r0]
	ldrb r1, [r2, #0x18]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #0x18]
	movs r0, #0
	bl sub_0805A358
	pop {r0}
	bx r0
	.align 2, 0
_0805A3B0: .4byte 0x0300162C

	thumb_func_start sub_0805A3B4
sub_0805A3B4: @ 0x0805A3B4
	push {lr}
	ldr r0, _0805A3CC @ =0x0300162C
	ldr r2, [r0]
	ldrb r0, [r2, #0x18]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x18]
	movs r0, #1
	bl sub_0805A358
	pop {r0}
	bx r0
	.align 2, 0
_0805A3CC: .4byte 0x0300162C

	thumb_func_start sub_0805A3D0
sub_0805A3D0: @ 0x0805A3D0
	push {lr}
	ldr r0, _0805A3E8 @ =0x0300162C
	ldr r2, [r0]
	ldrb r0, [r2, #0x18]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x18]
	movs r0, #2
	bl sub_0805A358
	pop {r0}
	bx r0
	.align 2, 0
_0805A3E8: .4byte 0x0300162C

	thumb_func_start sub_0805A3EC
sub_0805A3EC: @ 0x0805A3EC
	push {lr}
	ldr r0, _0805A404 @ =0x0300162C
	ldr r2, [r0]
	ldrb r0, [r2, #0x18]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x18]
	movs r0, #3
	bl sub_0805A358
	pop {r0}
	bx r0
	.align 2, 0
_0805A404: .4byte 0x0300162C

	thumb_func_start sub_0805A408
sub_0805A408: @ 0x0805A408
	push {lr}
	ldr r0, _0805A418 @ =0x0300162C
	ldr r0, [r0]
	ldr r0, [r0, #0x6c]
	bl sub_08009A00
	pop {r0}
	bx r0
	.align 2, 0
_0805A418: .4byte 0x0300162C

	thumb_func_start sub_0805A41C
sub_0805A41C: @ 0x0805A41C
	push {r4, r5, lr}
	movs r0, #1
	movs r1, #0x20
	bl sub_080099E0
	adds r5, r0, #0
	movs r1, #0
	bl sub_08009A34
	bl sub_0800B2BC
	movs r4, #0x90
	subs r4, r4, r0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	bl sub_0800B2C8
	movs r1, #0x82
	lsls r1, r1, #1
	adds r2, r1, #0
	subs r2, r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08009A70
	ldr r1, _0805A4A0 @ =0x06011000
	adds r0, r5, #0
	bl sub_08009A78
	ldr r4, _0805A4A4 @ =0x0300162C
	ldr r0, [r4]
	adds r0, #0x84
	ldr r1, [r0]
	adds r0, r5, #0
	movs r2, #0
	bl sub_08009BBC
	adds r0, r5, #0
	movs r1, #2
	bl sub_08009AB4
	ldr r1, _0805A4A8 @ =0x0819775C
	ldr r2, _0805A4AC @ =0x08197704
	adds r0, r5, #0
	movs r3, #0
	bl sub_08009ACC
	adds r0, r5, #0
	movs r1, #0xff
	bl sub_08009B40
	ldr r0, [r4]
	str r5, [r0, #0x6c]
	movs r1, #0x16
	ldrsh r0, [r0, r1]
	ldr r1, _0805A4B0 @ =sub_0805A408
	bl sub_08007BA0
	bl sub_0805A394
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805A4A0: .4byte 0x06011000
_0805A4A4: .4byte 0x0300162C
_0805A4A8: .4byte 0x0819775C
_0805A4AC: .4byte 0x08197704
_0805A4B0: .4byte sub_0805A408

	thumb_func_start sub_0805A4B4
sub_0805A4B4: @ 0x0805A4B4
	push {r4, r5, lr}
	ldr r0, _0805A4E8 @ =0x0300162C
	ldr r0, [r0]
	ldr r5, [r0, #0x6c]
	bl sub_0800B2BC
	movs r4, #0x90
	subs r4, r4, r0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	bl sub_0800B2C8
	movs r1, #0x82
	lsls r1, r1, #1
	adds r2, r1, #0
	subs r2, r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08009A70
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805A4E8: .4byte 0x0300162C

	thumb_func_start sub_0805A4EC
sub_0805A4EC: @ 0x0805A4EC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	bl sub_08007BD4
	adds r7, r0, #0
	ldrb r6, [r7]
	cmp r6, #1
	beq _0805A560
	cmp r6, #1
	bgt _0805A508
	cmp r6, #0
	beq _0805A512
	b _0805A5FC
_0805A508:
	cmp r6, #2
	beq _0805A598
	cmp r6, #3
	beq _0805A5F8
	b _0805A5FC
_0805A512:
	ldr r0, _0805A558 @ =0x000003EA
	bl m4aSongNumStart
	ldr r0, _0805A55C @ =0x0300162C
	mov r8, r0
	ldr r0, [r0]
	ldr r5, [r0, #0x6c]
	bl sub_0800B2BC
	movs r4, #0x90
	subs r4, r4, r0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	bl sub_0800B2C8
	movs r2, #0xa0
	subs r2, r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08009A70
	mov r1, r8
	ldr r0, [r1]
	ldr r0, [r0, #0x6c]
	movs r1, #1
	bl sub_08009A34
	movs r0, #0xa0
	strh r0, [r7, #4]
	strh r6, [r7, #2]
	movs r0, #1
	strb r0, [r7]
	b _0805A5FC
	.align 2, 0
_0805A558: .4byte 0x000003EA
_0805A55C: .4byte 0x0300162C
_0805A560:
	ldrh r0, [r7, #2]
	adds r0, #1
	strh r0, [r7, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xf
	adds r0, #1
	movs r1, #0xc
	bl __divsi3
	ldrh r1, [r7, #4]
	adds r1, r1, r0
	strh r1, [r7, #4]
	lsls r1, r1, #0x10
	ldr r0, _0805A594 @ =0x01030000
	cmp r1, r0
	ble _0805A5C8
	movs r0, #0x8f
	lsls r0, r0, #1
	bl m4aSongNumStart
	movs r0, #0x82
	lsls r0, r0, #1
	strh r0, [r7, #4]
	movs r0, #2
	b _0805A5C2
	.align 2, 0
_0805A594: .4byte 0x01030000
_0805A598:
	ldrh r4, [r7, #4]
	subs r4, #1
	ldrh r0, [r7, #2]
	adds r0, #1
	strh r0, [r7, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xf
	adds r0, #1
	movs r1, #0xc
	bl __divsi3
	adds r4, r4, r0
	strh r4, [r7, #4]
	lsls r4, r4, #0x10
	ldr r0, _0805A5F0 @ =0x01030000
	cmp r4, r0
	ble _0805A5C8
	movs r0, #0x82
	lsls r0, r0, #1
	strh r0, [r7, #4]
	movs r0, #3
_0805A5C2:
	strb r0, [r7]
	movs r0, #0
	strh r0, [r7, #2]
_0805A5C8:
	ldr r0, _0805A5F4 @ =0x0300162C
	ldr r0, [r0]
	ldr r6, [r0, #0x6c]
	bl sub_0800B2BC
	movs r4, #0x90
	subs r4, r4, r0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	bl sub_0800B2C8
	ldrh r2, [r7, #4]
	subs r2, r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_08009A70
	b _0805A5FC
	.align 2, 0
_0805A5F0: .4byte 0x01030000
_0805A5F4: .4byte 0x0300162C
_0805A5F8:
	bl sub_0805A394
_0805A5FC:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0805A608
sub_0805A608: @ 0x0805A608
	push {r4, lr}
	bl sub_08007BD4
	adds r4, r0, #0
	ldrb r0, [r4]
	cmp r0, #0
	beq _0805A61C
	cmp r0, #1
	beq _0805A634
	b _0805A638
_0805A61C:
	ldr r0, _0805A630 @ =0x0300162C
	ldr r0, [r0]
	ldr r0, [r0, #0x6c]
	movs r1, #0xc
	bl sub_08009AFC
	movs r0, #1
	strb r0, [r4]
	b _0805A638
	.align 2, 0
_0805A630: .4byte 0x0300162C
_0805A634:
	bl sub_0805A394
_0805A638:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0805A640
sub_0805A640: @ 0x0805A640
	push {r4, r5, r6, lr}
	bl sub_08007BD4
	adds r6, r0, #0
	ldrb r4, [r6]
	cmp r4, #1
	beq _0805A66E
	cmp r4, #1
	bgt _0805A658
	cmp r4, #0
	beq _0805A65E
	b _0805A6D4
_0805A658:
	cmp r4, #2
	beq _0805A6D0
	b _0805A6D4
_0805A65E:
	movs r0, #0xfc
	lsls r0, r0, #2
	bl m4aSongNumStart
	strh r4, [r6, #2]
	movs r0, #1
	strb r0, [r6]
	b _0805A6D4
_0805A66E:
	ldrh r4, [r6, #4]
	subs r4, #8
	ldrh r0, [r6, #2]
	adds r0, #1
	strh r0, [r6, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xf
	adds r0, #1
	movs r1, #0xc
	bl __divsi3
	adds r4, r4, r0
	strh r4, [r6, #4]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #0xa0
	bgt _0805A6A4
	ldr r0, _0805A6CC @ =0x0300162C
	ldr r0, [r0]
	ldr r0, [r0, #0x6c]
	movs r1, #0
	bl sub_08009A34
	movs r0, #0
	strh r0, [r6, #2]
	movs r0, #2
	strb r0, [r6]
_0805A6A4:
	ldr r0, _0805A6CC @ =0x0300162C
	ldr r0, [r0]
	ldr r5, [r0, #0x6c]
	bl sub_0800B2BC
	movs r4, #0x90
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
	b _0805A6D4
	.align 2, 0
_0805A6CC: .4byte 0x0300162C
_0805A6D0:
	bl sub_0805A394
_0805A6D4:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0805A6DC
sub_0805A6DC: @ 0x0805A6DC
	push {r4, r5, lr}
	bl sub_08007BD4
	adds r4, r0, #0
	ldrb r5, [r4]
	cmp r5, #0
	beq _0805A6F0
	cmp r5, #1
	beq _0805A716
	b _0805A75E
_0805A6F0:
	ldr r0, [r4, #0xc]
	movs r1, #1
	bl sub_08009A34
	ldr r0, [r4, #0xc]
	movs r2, #8
	ldrsh r1, [r4, r2]
	movs r3, #0xa
	ldrsh r2, [r4, r3]
	bl sub_08009A70
	ldr r0, [r4, #0xc]
	movs r1, #0
	bl sub_08009AFC
	strh r5, [r4, #2]
	movs r0, #1
	strb r0, [r4]
	b _0805A75E
_0805A716:
	ldrh r0, [r4, #4]
	ldrh r1, [r4, #8]
	adds r0, r0, r1
	strh r0, [r4, #8]
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xf
	adds r0, #1
	movs r1, #0xc
	bl __divsi3
	ldrh r1, [r4, #6]
	adds r1, r1, r0
	ldrh r2, [r4, #0xa]
	adds r1, r1, r2
	strh r1, [r4, #0xa]
	ldr r0, [r4, #0xc]
	movs r3, #8
	ldrsh r1, [r4, r3]
	movs r3, #0xa
	ldrsh r2, [r4, r3]
	bl sub_08009A70
	movs r0, #0xa
	ldrsh r1, [r4, r0]
	movs r0, #0xa4
	lsls r0, r0, #1
	cmp r1, r0
	ble _0805A75E
	ldr r0, [r4, #0xc]
	bl sub_08009A00
	bl sub_08007A64
_0805A75E:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_0805A764
sub_0805A764: @ 0x0805A764
	push {r4, r5, r6, lr}
	movs r0, #2
	bl sub_0800B828
	ldr r5, _0805A808 @ =0x0300162C
	ldr r4, [r5]
	adds r4, #0x8d
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r0, #1
	ldrb r1, [r4]
	adds r0, r0, r1
	movs r1, #3
	bl __modsi3
	strb r0, [r4]
	ldr r1, _0805A80C @ =0x0808F13C
	ldr r0, [r5]
	adds r0, #0x8d
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	bl m4aSongNumStart
	movs r6, #0
_0805A798:
	ldr r0, _0805A810 @ =sub_0805A6DC
	movs r1, #0x42
	movs r2, #0
	bl sub_08007968
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl sub_08007BBC
	adds r5, r0, #0
	movs r0, #1
	movs r1, #0
	bl sub_080099E0
	adds r4, r0, #0
	movs r1, #0
	bl sub_08009A34
	ldr r0, _0805A808 @ =0x0300162C
	ldr r0, [r0]
	ldr r1, [r0, #0x2c]
	adds r0, r4, #0
	bl sub_08009A78
	adds r0, r4, #0
	movs r1, #0xa
	bl sub_08009AB4
	adds r0, r4, #0
	ldr r1, _0805A814 @ =0x080909AC
	ldr r2, _0805A818 @ =0x08090970
	movs r3, #0
	bl sub_08009ACC
	adds r0, r4, #0
	movs r1, #0xff
	bl sub_08009B40
	str r4, [r5, #0xc]
	movs r0, #0
	strb r0, [r5]
	strh r0, [r5, #2]
	movs r0, #0x78
	strh r0, [r5, #8]
	movs r0, #0x68
	strh r0, [r5, #0xa]
	movs r0, #1
	ands r0, r6
	cmp r0, #0
	beq _0805A820
	movs r0, #4
	bl sub_0800B828
	ldr r1, _0805A81C @ =0x0808F114
	b _0805A828
	.align 2, 0
_0805A808: .4byte 0x0300162C
_0805A80C: .4byte 0x0808F13C
_0805A810: .4byte sub_0805A6DC
_0805A814: .4byte 0x080909AC
_0805A818: .4byte 0x08090970
_0805A81C: .4byte 0x0808F114
_0805A820:
	movs r0, #4
	bl sub_0800B828
	ldr r1, _0805A848 @ =0x0808F11C
_0805A828:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xf
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r5, #4]
	lsrs r0, r6, #0x1f
	adds r0, r6, r0
	asrs r0, r0, #1
	cmp r0, #1
	beq _0805A860
	cmp r0, #1
	bgt _0805A84C
	cmp r0, #0
	beq _0805A852
	b _0805A882
	.align 2, 0
_0805A848: .4byte 0x0808F11C
_0805A84C:
	cmp r0, #2
	beq _0805A870
	b _0805A882
_0805A852:
	movs r0, #4
	bl sub_0800B828
	ldr r1, _0805A85C @ =0x0808F124
	b _0805A878
	.align 2, 0
_0805A85C: .4byte 0x0808F124
_0805A860:
	movs r0, #4
	bl sub_0800B828
	ldr r1, _0805A86C @ =0x0808F12C
	b _0805A878
	.align 2, 0
_0805A86C: .4byte 0x0808F12C
_0805A870:
	movs r0, #4
	bl sub_0800B828
	ldr r1, _0805A890 @ =0x0808F134
_0805A878:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xf
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r5, #6]
_0805A882:
	adds r6, #1
	cmp r6, #5
	ble _0805A798
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805A890: .4byte 0x0808F134

	thumb_func_start sub_0805A894
sub_0805A894: @ 0x0805A894
	push {r4, r5, lr}
	bl sub_08007BD4
	adds r4, r0, #0
	ldrb r3, [r4]
	cmp r3, #0
	beq _0805A8A8
	cmp r3, #1
	beq _0805A8C8
	b _0805A8EA
_0805A8A8:
	ldr r1, _0805A8C4 @ =0x030024E0
	movs r0, #0x4a
	adds r0, r0, r1
	mov ip, r0
	movs r2, #0
	movs r0, #0xcc
	mov r5, ip
	strh r0, [r5]
	adds r1, #0x4e
	strb r2, [r1]
	strh r3, [r4, #2]
	movs r0, #1
	strb r0, [r4]
	b _0805A8EA
	.align 2, 0
_0805A8C4: .4byte 0x030024E0
_0805A8C8:
	ldr r2, _0805A8F0 @ =0x030024E0
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	asrs r0, r0, #2
	movs r1, #0x1f
	ands r0, r1
	adds r1, r2, #0
	adds r1, #0x4e
	strb r0, [r1]
	ldrh r0, [r4, #2]
	cmp r0, #0x1f
	bls _0805A8EA
	bl sub_08007A64
_0805A8EA:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805A8F0: .4byte 0x030024E0

	thumb_func_start sub_0805A8F4
sub_0805A8F4: @ 0x0805A8F4
	push {r4, lr}
	bl sub_08007BD4
	adds r3, r0, #0
	ldrb r2, [r3]
	cmp r2, #0
	beq _0805A908
	cmp r2, #1
	beq _0805A928
	b _0805A964
_0805A908:
	ldr r1, _0805A924 @ =0x030024E0
	movs r0, #0x4a
	adds r0, r0, r1
	mov ip, r0
	movs r0, #0xcc
	mov r4, ip
	strh r0, [r4]
	adds r1, #0x4e
	movs r0, #8
	strb r0, [r1]
	strh r2, [r3, #2]
	movs r0, #1
	strb r0, [r3]
	b _0805A964
	.align 2, 0
_0805A924: .4byte 0x030024E0
_0805A928:
	ldr r4, _0805A96C @ =0x030024E0
	ldrh r0, [r3, #2]
	adds r0, #1
	strh r0, [r3, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xd
	rsbs r0, r0, #0
	cmp r0, #0
	bge _0805A93C
	adds r0, #0x1f
_0805A93C:
	asrs r0, r0, #5
	adds r0, #8
	movs r1, #0x1f
	ands r0, r1
	adds r1, r4, #0
	adds r1, #0x4e
	strb r0, [r1]
	ldrh r0, [r3, #2]
	cmp r0, #0x1f
	bls _0805A964
	ldr r0, _0805A970 @ =0x030056F0
	movs r1, #8
	bl m4aMPlayFadeOut
	adds r1, r4, #0
	adds r1, #0x4a
	movs r0, #0
	strh r0, [r1]
	bl sub_08007A64
_0805A964:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805A96C: .4byte 0x030024E0
_0805A970: .4byte 0x030056F0

	thumb_func_start sub_0805A974
sub_0805A974: @ 0x0805A974
	push {lr}
	ldr r0, _0805A994 @ =sub_0805A894
	movs r1, #0x42
	movs r2, #0
	bl sub_08007968
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl sub_08007BBC
	movs r1, #0
	strb r1, [r0]
	strh r1, [r0, #2]
	pop {r0}
	bx r0
	.align 2, 0
_0805A994: .4byte sub_0805A894

	thumb_func_start sub_0805A998
sub_0805A998: @ 0x0805A998
	push {lr}
	ldr r0, _0805A9B8 @ =sub_0805A8F4
	movs r1, #0x42
	movs r2, #0
	bl sub_08007968
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl sub_08007BBC
	movs r1, #0
	strb r1, [r0]
	strh r1, [r0, #2]
	pop {r0}
	bx r0
	.align 2, 0
_0805A9B8: .4byte sub_0805A8F4

	thumb_func_start sub_0805A9BC
sub_0805A9BC: @ 0x0805A9BC
	push {r4, r5, r6, lr}
	bl sub_08007BD4
	adds r5, r0, #0
	ldr r6, [r5, #4]
	bl sub_0800B2BC
	ldrh r4, [r5]
	subs r4, r4, r0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	bl sub_0800B2C8
	ldrh r2, [r5, #2]
	subs r2, r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_08009A70
	ldr r1, [r5, #4]
	ldrb r0, [r1, #1]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _0805A9FA
	adds r0, r1, #0
	bl sub_08009A00
	bl sub_08007A64
_0805A9FA:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_0805AA00
sub_0805AA00: @ 0x0805AA00
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	adds r6, r0, #0
	mov r8, r1
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	mov r0, r8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldr r0, _0805AA74 @ =sub_0805A9BC
	movs r1, #0x42
	movs r2, #0
	bl sub_08007968
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl sub_08007BBC
	adds r5, r0, #0
	movs r0, #1
	movs r1, #0x10
	bl sub_080099E0
	adds r4, r0, #0
	movs r1, #1
	bl sub_08009A34
	ldr r0, _0805AA78 @ =0x0300162C
	ldr r0, [r0]
	ldr r1, [r0, #0x2c]
	adds r0, r4, #0
	bl sub_08009A78
	adds r0, r4, #0
	movs r1, #0xa
	bl sub_08009AB4
	ldr r1, _0805AA7C @ =0x080909AC
	ldr r2, _0805AA80 @ =0x08090970
	adds r0, r4, #0
	movs r3, #1
	bl sub_08009ACC
	adds r0, r4, #0
	movs r1, #0
	bl sub_08009B40
	str r4, [r5, #4]
	strh r6, [r5]
	mov r0, r8
	strh r0, [r5, #2]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805AA74: .4byte sub_0805A9BC
_0805AA78: .4byte 0x0300162C
_0805AA7C: .4byte 0x080909AC
_0805AA80: .4byte 0x08090970

	thumb_func_start sub_0805AA84
sub_0805AA84: @ 0x0805AA84
	push {r4, r5, lr}
	sub sp, #0xc
	ldr r0, _0805ABC0 @ =0x0810E26C
	ldr r1, _0805ABC4 @ =0x05000200
	bl sub_08008308
	ldr r0, _0805ABC8 @ =0x0810E2C4
	add r1, sp, #4
	bl sub_08008380
	ldr r5, _0805ABCC @ =0x03001630
	ldr r1, [r5]
	str r0, [r1, #8]
	ldr r0, [sp, #4]
	str r0, [r1, #0xc]
	ldr r0, _0805ABD0 @ =0x081106D0
	ldr r1, _0805ABD4 @ =0x05000220
	bl sub_08008308
	ldr r0, _0805ABD8 @ =0x08110728
	add r1, sp, #4
	bl sub_08008380
	ldr r1, [r5]
	str r0, [r1, #0x10]
	ldr r0, [sp, #4]
	str r0, [r1, #0x14]
	ldr r0, _0805ABDC @ =0x08112B34
	ldr r1, _0805ABE0 @ =0x05000240
	bl sub_08008308
	ldr r0, _0805ABE4 @ =0x08112B8C
	add r1, sp, #4
	bl sub_08008380
	ldr r1, [r5]
	str r0, [r1, #0x18]
	ldr r0, [sp, #4]
	str r0, [r1, #0x1c]
	ldr r0, _0805ABE8 @ =0x08114F98
	ldr r1, _0805ABEC @ =0x05000260
	bl sub_08008308
	ldr r0, _0805ABF0 @ =0x08114FF0
	add r1, sp, #4
	bl sub_08008380
	ldr r1, [r5]
	str r0, [r1, #0x20]
	ldr r0, [sp, #4]
	str r0, [r1, #0x24]
	ldr r4, _0805ABF4 @ =0x06014000
	ldr r0, _0805ABF8 @ =0x0814F318
	ldr r1, _0805ABFC @ =0x05000280
	bl sub_08008308
	ldr r0, [r5]
	str r4, [r0, #0x38]
	ldr r0, _0805AC00 @ =0x0814F4A4
	adds r1, r4, #0
	bl sub_08008374
	adds r4, r0, r4
	ldr r0, _0805AC04 @ =0x0814F234
	ldr r1, _0805AC08 @ =0x050002A0
	bl sub_08008308
	ldr r0, [r5]
	str r4, [r0, #0x3c]
	ldr r0, _0805AC0C @ =0x0814F2A8
	adds r1, r4, #0
	bl sub_08008374
	ldr r0, _0805AC10 @ =0x08107C48
	movs r1, #0xa0
	lsls r1, r1, #0x13
	bl sub_08008308
	ldr r0, _0805AC14 @ =0x08108E90
	movs r1, #0xc0
	lsls r1, r1, #0x13
	bl sub_08008374
	ldr r0, _0805AC18 @ =0x08107D8C
	ldr r1, _0805AC1C @ =0x0600F800
	movs r2, #0
	movs r3, #0
	bl sub_080083CC
	ldr r4, _0805AC20 @ =0x030024E0
	ldr r0, _0805AC24 @ =0x00001F03
	strh r0, [r4, #8]
	ldr r0, _0805AC28 @ =0x081088E4
	ldr r1, _0805AC2C @ =0x0600F000
	movs r2, #0
	movs r3, #0
	bl sub_080083CC
	ldr r0, _0805AC30 @ =0x00001E02
	strh r0, [r4, #6]
	ldr r0, _0805AC34 @ =0x08108338
	ldr r1, _0805AC38 @ =0x0600E000
	movs r2, #0
	movs r3, #0
	bl sub_080083CC
	ldr r0, _0805AC3C @ =0x00005C01
	strh r0, [r4, #4]
	ldr r0, _0805AC40 @ =sub_0805B6B4
	movs r1, #0x42
	movs r2, #0
	bl sub_08007968
	ldr r1, [r5]
	strh r0, [r1, #0x2a]
	ldr r0, _0805AC44 @ =sub_0805B4A8
	movs r1, #0x42
	movs r2, #0
	bl sub_08007968
	ldr r1, [r5]
	strh r0, [r1, #0x28]
	ldr r0, _0805AC48 @ =sub_0805B7D0
	movs r1, #0x42
	movs r2, #0
	bl sub_08007968
	ldr r1, [r5]
	strh r0, [r1, #0x2c]
	movs r0, #0xf0
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #3
	bl sub_08006BE8
	bl sub_08003F9C
	movs r0, #0x80
	lsls r0, r0, #1
	str r0, [sp]
	movs r0, #2
	movs r1, #0x1b
	movs r2, #0xa
	movs r3, #0
	bl sub_08004028
	bl sub_080057C0
	movs r0, #1
	bl sub_08005A88
	movs r0, #1
	bl sub_08005AC0
	add sp, #0xc
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805ABC0: .4byte 0x0810E26C
_0805ABC4: .4byte 0x05000200
_0805ABC8: .4byte 0x0810E2C4
_0805ABCC: .4byte 0x03001630
_0805ABD0: .4byte 0x081106D0
_0805ABD4: .4byte 0x05000220
_0805ABD8: .4byte 0x08110728
_0805ABDC: .4byte 0x08112B34
_0805ABE0: .4byte 0x05000240
_0805ABE4: .4byte 0x08112B8C
_0805ABE8: .4byte 0x08114F98
_0805ABEC: .4byte 0x05000260
_0805ABF0: .4byte 0x08114FF0
_0805ABF4: .4byte 0x06014000
_0805ABF8: .4byte 0x0814F318
_0805ABFC: .4byte 0x05000280
_0805AC00: .4byte 0x0814F4A4
_0805AC04: .4byte 0x0814F234
_0805AC08: .4byte 0x050002A0
_0805AC0C: .4byte 0x0814F2A8
_0805AC10: .4byte 0x08107C48
_0805AC14: .4byte 0x08108E90
_0805AC18: .4byte 0x08107D8C
_0805AC1C: .4byte 0x0600F800
_0805AC20: .4byte 0x030024E0
_0805AC24: .4byte 0x00001F03
_0805AC28: .4byte 0x081088E4
_0805AC2C: .4byte 0x0600F000
_0805AC30: .4byte 0x00001E02
_0805AC34: .4byte 0x08108338
_0805AC38: .4byte 0x0600E000
_0805AC3C: .4byte 0x00005C01
_0805AC40: .4byte sub_0805B6B4
_0805AC44: .4byte sub_0805B4A8
_0805AC48: .4byte sub_0805B7D0

	thumb_func_start sub_0805AC4C
sub_0805AC4C: @ 0x0805AC4C
	push {r4, lr}
	bl sub_080058A4
	ldr r4, _0805AC98 @ =0x03001630
	ldr r0, [r4]
	movs r1, #0x2a
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	ldr r0, [r4]
	movs r1, #0x28
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	ldr r0, [r4]
	movs r1, #0x2c
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	ldr r0, [r4]
	ldr r0, [r0, #8]
	bl sub_08007CF8
	ldr r0, [r4]
	ldr r0, [r0, #0x10]
	bl sub_08007CF8
	ldr r0, [r4]
	ldr r0, [r0, #0x18]
	bl sub_08007CF8
	ldr r0, [r4]
	ldr r0, [r0, #0x20]
	bl sub_08007CF8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805AC98: .4byte 0x03001630

	thumb_func_start sub_0805AC9C
sub_0805AC9C: @ 0x0805AC9C
	push {r4, r5, lr}
	movs r0, #0
	bl sub_080081A0
	bl sub_08008174
	ldr r4, _0805ACD0 @ =0x03001630
	movs r0, #0x44
	bl sub_08007CE8
	adds r1, r0, #0
	str r1, [r4]
	movs r0, #0
	movs r2, #0x44
	bl sub_08007EFC
	bl sub_0805AA84
	movs r0, #1
	bl sub_08002B98
	bl sub_0800B7F8
	ldr r5, _0805ACD4 @ =0x0808F1EC
	b _0805AD00
	.align 2, 0
_0805ACD0: .4byte 0x03001630
_0805ACD4: .4byte 0x0808F1EC
_0805ACD8:
	ldr r1, [r4]
	ldrh r0, [r1, #6]
	cmp r0, #0
	beq _0805ACE6
	subs r0, #1
	strh r0, [r1, #6]
	b _0805ACF2
_0805ACE6:
	ldrb r0, [r1, #1]
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	bl call_via_r0
_0805ACF2:
	ldr r0, [r4]
	ldrb r0, [r0]
	cmp r0, #0
	bne _0805AD10
	movs r0, #1
	bl sub_08002B98
_0805AD00:
	ldr r0, _0805AD30 @ =0x030024B0
	ldrh r1, [r0]
	movs r0, #9
	ands r0, r1
	cmp r0, #0
	beq _0805ACD8
	bl sub_08005A2C
_0805AD10:
	bl sub_0805AC4C
	movs r0, #1
	bl sub_08002B98
	ldr r0, _0805AD34 @ =0x03001630
	ldr r0, [r0]
	bl sub_08007CF8
	bl m4aMPlayAllStop
	bl sub_08002B0C
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805AD30: .4byte 0x030024B0
_0805AD34: .4byte 0x03001630

	thumb_func_start sub_0805AD38
sub_0805AD38: @ 0x0805AD38
	ldr r1, _0805AD4C @ =0x03001630
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
_0805AD4C: .4byte 0x03001630

	thumb_func_start sub_0805AD50
sub_0805AD50: @ 0x0805AD50
	push {r4, lr}
	bl sub_08008174
	ldr r4, _0805AD8C @ =0x030024E0
	ldrh r1, [r4]
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r2, #0
	orrs r0, r1
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4]
	movs r0, #1
	bl m4aSongNumStart
	adds r4, #0x4f
	movs r0, #1
	strb r0, [r4]
	movs r0, #0x20
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl sub_08008AF4
	movs r0, #1
	bl sub_08002B98
	b _0805AD96
	.align 2, 0
_0805AD8C: .4byte 0x030024E0
_0805AD90:
	movs r0, #1
	bl sub_08002B98
_0805AD96:
	bl sub_08008BBC
	cmp r0, #0
	beq _0805AD90
	movs r0, #1
	bl sub_0805AD38
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0805ADAC
sub_0805ADAC: @ 0x0805ADAC
	push {r4, lr}
	ldr r1, _0805ADC8 @ =0x03001630
	ldr r0, [r1]
	ldrb r0, [r0, #2]
	adds r4, r1, #0
	cmp r0, #0x17
	bls _0805ADBC
	b _0805B186
_0805ADBC:
	lsls r0, r0, #2
	ldr r1, _0805ADCC @ =_0805ADD0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0805ADC8: .4byte 0x03001630
_0805ADCC: .4byte _0805ADD0
_0805ADD0: @ jump table
	.4byte _0805AE30 @ case 0
	.4byte _0805AE48 @ case 1
	.4byte _0805AE74 @ case 2
	.4byte _0805AE98 @ case 3
	.4byte _0805AEB2 @ case 4
	.4byte _0805AEE8 @ case 5
	.4byte _0805AF08 @ case 6
	.4byte _0805AF2C @ case 7
	.4byte _0805AF5C @ case 8
	.4byte _0805AF7C @ case 9
	.4byte _0805AFA0 @ case 10
	.4byte _0805AFD0 @ case 11
	.4byte _0805AFF0 @ case 12
	.4byte _0805B014 @ case 13
	.4byte _0805B044 @ case 14
	.4byte _0805B064 @ case 15
	.4byte _0805B088 @ case 16
	.4byte _0805B0B4 @ case 17
	.4byte _0805B0CE @ case 18
	.4byte _0805B0F0 @ case 19
	.4byte _0805B11C @ case 20
	.4byte _0805B13E @ case 21
	.4byte _0805B160 @ case 22
	.4byte _0805B174 @ case 23
_0805AE30:
	bl sub_0805B31C
	movs r0, #0x78
	bl sub_0805B6F8
	ldr r0, _0805AE44 @ =0x03001630
	ldr r1, [r0]
	movs r0, #1
	strb r0, [r1, #2]
	b _0805B186
	.align 2, 0
_0805AE44: .4byte 0x03001630
_0805AE48:
	ldr r0, [r4]
	adds r0, #0x30
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _0805AE56
	b _0805B186
_0805AE56:
	bl sub_0805BC30
	bl sub_08005934
	ldr r0, _0805AE70 @ =0x0808F1B4
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	ldr r1, [r4]
	movs r0, #2
	strb r0, [r1, #2]
	b _0805B186
	.align 2, 0
_0805AE70: .4byte 0x0808F1B4
_0805AE74:
	ldr r0, [r4]
	adds r0, #0x30
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bge _0805AE82
	b _0805B186
_0805AE82:
	bl sub_0805B35C
	movs r0, #0x2a
	bl sub_0805B6F8
	bl sub_08005A2C
	ldr r1, [r4]
	movs r0, #3
	strb r0, [r1, #2]
	b _0805B186
_0805AE98:
	ldr r0, [r4]
	adds r0, #0x30
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bge _0805AEA6
	b _0805B186
_0805AEA6:
	bl sub_0805B790
	ldr r1, [r4]
	movs r0, #4
	strb r0, [r1, #2]
	b _0805B186
_0805AEB2:
	ldr r0, [r4]
	adds r0, #0x30
	ldrb r1, [r0]
	lsls r0, r1, #0x1d
	cmp r0, #0
	bge _0805AEC0
	b _0805B186
_0805AEC0:
	lsls r0, r1, #0x1f
	cmp r0, #0
	beq _0805AEC8
	b _0805B186
_0805AEC8:
	bl sub_08005934
	ldr r0, _0805AEE4 @ =0x0808F1BC
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	movs r0, #0xa2
	bl sub_0805B6F8
	ldr r1, [r4]
	movs r0, #5
	strb r0, [r1, #2]
	b _0805B186
	.align 2, 0
_0805AEE4: .4byte 0x0808F1BC
_0805AEE8:
	ldr r0, [r4]
	adds r0, #0x30
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bge _0805AEF6
	b _0805B186
_0805AEF6:
	bl sub_0805BAB8
	movs r0, #0x78
	bl sub_0805B6F8
	ldr r1, [r4]
	movs r0, #6
	strb r0, [r1, #2]
	b _0805B186
_0805AF08:
	ldr r0, [r4]
	adds r0, #0x30
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bge _0805AF16
	b _0805B186
_0805AF16:
	bl sub_0805B390
	movs r0, #0x12
	bl sub_0805B6F8
	bl sub_08005A2C
	ldr r1, [r4]
	movs r0, #7
	strb r0, [r1, #2]
	b _0805B186
_0805AF2C:
	ldr r0, [r4]
	adds r0, #0x30
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bge _0805AF3A
	b _0805B186
_0805AF3A:
	bl sub_08005934
	ldr r0, _0805AF58 @ =0x0808F1C4
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	movs r0, #0xa2
	bl sub_0805B6F8
	ldr r1, [r4]
	movs r0, #8
	strb r0, [r1, #2]
	b _0805B186
	.align 2, 0
_0805AF58: .4byte 0x0808F1C4
_0805AF5C:
	ldr r0, [r4]
	adds r0, #0x30
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bge _0805AF6A
	b _0805B186
_0805AF6A:
	bl sub_0805BAC4
	movs r0, #0x78
	bl sub_0805B6F8
	ldr r1, [r4]
	movs r0, #9
	strb r0, [r1, #2]
	b _0805B186
_0805AF7C:
	ldr r0, [r4]
	adds r0, #0x30
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bge _0805AF8A
	b _0805B186
_0805AF8A:
	bl sub_0805B3C4
	movs r0, #0x12
	bl sub_0805B6F8
	bl sub_08005A2C
	ldr r1, [r4]
	movs r0, #0xa
	strb r0, [r1, #2]
	b _0805B186
_0805AFA0:
	ldr r0, [r4]
	adds r0, #0x30
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bge _0805AFAE
	b _0805B186
_0805AFAE:
	bl sub_08005934
	ldr r0, _0805AFCC @ =0x0808F1CC
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	movs r0, #0xa2
	bl sub_0805B6F8
	ldr r1, [r4]
	movs r0, #0xb
	strb r0, [r1, #2]
	b _0805B186
	.align 2, 0
_0805AFCC: .4byte 0x0808F1CC
_0805AFD0:
	ldr r0, [r4]
	adds r0, #0x30
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bge _0805AFDE
	b _0805B186
_0805AFDE:
	bl sub_0805BAD0
	movs r0, #0x78
	bl sub_0805B6F8
	ldr r1, [r4]
	movs r0, #0xc
	strb r0, [r1, #2]
	b _0805B186
_0805AFF0:
	ldr r0, [r4]
	adds r0, #0x30
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bge _0805AFFE
	b _0805B186
_0805AFFE:
	bl sub_0805B3F8
	movs r0, #0x12
	bl sub_0805B6F8
	bl sub_08005A2C
	ldr r1, [r4]
	movs r0, #0xd
	strb r0, [r1, #2]
	b _0805B186
_0805B014:
	ldr r0, [r4]
	adds r0, #0x30
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bge _0805B022
	b _0805B186
_0805B022:
	bl sub_08005934
	ldr r0, _0805B040 @ =0x0808F1D4
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	movs r0, #0xa2
	bl sub_0805B6F8
	ldr r1, [r4]
	movs r0, #0xe
	strb r0, [r1, #2]
	b _0805B186
	.align 2, 0
_0805B040: .4byte 0x0808F1D4
_0805B044:
	ldr r0, [r4]
	adds r0, #0x30
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bge _0805B052
	b _0805B186
_0805B052:
	bl sub_0805BADC
	movs r0, #0x78
	bl sub_0805B6F8
	ldr r1, [r4]
	movs r0, #0xf
	strb r0, [r1, #2]
	b _0805B186
_0805B064:
	ldr r0, [r4]
	adds r0, #0x30
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bge _0805B072
	b _0805B186
_0805B072:
	bl sub_0805B42C
	movs r0, #0x12
	bl sub_0805B6F8
	bl sub_08005A2C
	ldr r1, [r4]
	movs r0, #0x10
	strb r0, [r1, #2]
	b _0805B186
_0805B088:
	ldr r0, [r4]
	adds r0, #0x30
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _0805B186
	bl sub_08005934
	ldr r0, _0805B0B0 @ =0x0808F1DC
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	movs r0, #0xf0
	bl sub_0805B6F8
	ldr r1, [r4]
	movs r0, #0x11
	strb r0, [r1, #2]
	b _0805B186
	.align 2, 0
_0805B0B0: .4byte 0x0808F1DC
_0805B0B4:
	ldr r0, [r4]
	adds r0, #0x30
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _0805B186
	movs r0, #0x2a
	bl sub_0805B6F8
	ldr r1, [r4]
	movs r0, #0x12
	strb r0, [r1, #2]
	b _0805B186
_0805B0CE:
	ldr r0, [r4]
	adds r0, #0x30
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _0805B186
	bl sub_0805B460
	movs r0, #0x12
	bl sub_0805B6F8
	bl sub_08005A2C
	ldr r1, [r4]
	movs r0, #0x13
	strb r0, [r1, #2]
	b _0805B186
_0805B0F0:
	ldr r0, [r4]
	adds r0, #0x30
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _0805B186
	bl sub_08005934
	ldr r0, _0805B118 @ =0x0808F1E4
	movs r1, #0
	movs r2, #0
	bl sub_080004D4
	movs r0, #0xb4
	bl sub_0805B6F8
	ldr r1, [r4]
	movs r0, #0x14
	strb r0, [r1, #2]
	b _0805B186
	.align 2, 0
_0805B118: .4byte 0x0808F1E4
_0805B11C:
	ldr r0, [r4]
	adds r0, #0x30
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _0805B186
	bl sub_08005A2C
	bl sub_0805B7B0
	movs r0, #0xb4
	bl sub_0805B6F8
	ldr r1, [r4]
	movs r0, #0x15
	strb r0, [r1, #2]
	b _0805B186
_0805B13E:
	ldr r1, [r4]
	adds r0, r1, #0
	adds r0, #0x30
	ldrb r0, [r0]
	lsls r0, r0, #0x1d
	cmp r0, #0
	blt _0805B186
	movs r2, #0x2e
	ldrsh r0, [r1, r2]
	bl sub_08007A08
	bl sub_0805B260
	ldr r1, [r4]
	movs r0, #0x16
	strb r0, [r1, #2]
	b _0805B186
_0805B160:
	ldr r1, [r4]
	adds r0, r1, #0
	adds r0, #0x30
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _0805B186
	movs r0, #0x17
	strb r0, [r1, #2]
	b _0805B186
_0805B174:
	ldr r0, [r4]
	adds r0, #0x30
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _0805B186
	movs r0, #2
	bl sub_0805AD38
_0805B186:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0805B18C
sub_0805B18C: @ 0x0805B18C
	push {lr}
	ldr r0, _0805B1AC @ =0x030056F0
	movs r1, #2
	bl m4aMPlayFadeOut
	movs r0, #0x20
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl sub_080089E8
	movs r0, #1
	bl sub_08002B98
	b _0805B1B6
	.align 2, 0
_0805B1AC: .4byte 0x030056F0
_0805B1B0:
	movs r0, #1
	bl sub_08002B98
_0805B1B6:
	bl sub_08008BBC
	cmp r0, #0
	beq _0805B1B0
	ldr r0, _0805B1CC @ =0x03001630
	ldr r1, [r0]
	movs r0, #1
	strb r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_0805B1CC: .4byte 0x03001630

	thumb_func_start sub_0805B1D0
sub_0805B1D0: @ 0x0805B1D0
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _0805B204 @ =0x03001630
	ldr r0, [r5]
	movs r1, #0x28
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	movs r1, #0
	strb r1, [r0]
	strh r1, [r0, #2]
	ldr r0, [r5]
	movs r1, #0x28
	ldrsh r0, [r0, r1]
	ldr r1, _0805B208 @ =0x0808F270
	lsls r4, r4, #2
	adds r4, r4, r1
	ldr r1, [r4]
	bl sub_08007B84
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805B204: .4byte 0x03001630
_0805B208: .4byte 0x0808F270

	thumb_func_start sub_0805B20C
sub_0805B20C: @ 0x0805B20C
	push {lr}
	ldr r0, _0805B228 @ =0x03001630
	ldr r1, [r0]
	adds r1, #0x30
	ldrb r2, [r1]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	movs r0, #0
	bl sub_0805B1D0
	pop {r0}
	bx r0
	.align 2, 0
_0805B228: .4byte 0x03001630

	thumb_func_start sub_0805B22C
sub_0805B22C: @ 0x0805B22C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	ldr r4, _0805B25C @ =0x03001630
	ldr r0, [r4]
	movs r1, #0x28
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	str r5, [r0, #4]
	str r6, [r0, #8]
	ldr r1, [r4]
	adds r1, #0x30
	ldrb r2, [r1]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	movs r0, #1
	bl sub_0805B1D0
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805B25C: .4byte 0x03001630

	thumb_func_start sub_0805B260
sub_0805B260: @ 0x0805B260
	push {lr}
	ldr r0, _0805B27C @ =0x03001630
	ldr r1, [r0]
	adds r1, #0x30
	ldrb r0, [r1]
	movs r2, #1
	orrs r0, r2
	strb r0, [r1]
	movs r0, #2
	bl sub_0805B1D0
	pop {r0}
	bx r0
	.align 2, 0
_0805B27C: .4byte 0x03001630

	thumb_func_start sub_0805B280
sub_0805B280: @ 0x0805B280
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sb, r0
	mov sl, r1
	adds r6, r2, #0
	mov r8, r3
	ldr r7, [sp, #0x20]
	ldr r4, [sp, #0x24]
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r1, _0805B318 @ =0x03001630
	ldr r0, [r1]
	movs r1, #0x28
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	adds r5, r0, #0
	mov r1, sb
	lsls r0, r1, #8
	str r0, [r5, #4]
	mov r1, sl
	lsls r0, r1, #8
	str r0, [r5, #8]
	lsls r0, r6, #8
	str r0, [r5, #0x18]
	mov r1, r8
	lsls r0, r1, #8
	str r0, [r5, #0x1c]
	str r7, [r5, #0x14]
	strb r4, [r5, #1]
	mov r0, sb
	subs r6, r6, r0
	lsls r6, r6, #8
	adds r0, r6, #0
	adds r1, r4, #0
	bl __divsi3
	str r0, [r5, #0xc]
	mov r1, r8
	mov r0, sl
	subs r1, r1, r0
	lsls r1, r1, #8
	mov r8, r1
	mov r0, r8
	adds r1, r4, #0
	bl __divsi3
	adds r4, r0, #0
	ldrb r0, [r5, #1]
	muls r0, r7, r0
	movs r1, #0x78
	bl __divsi3
	subs r4, r4, r0
	str r4, [r5, #0x10]
	ldr r0, _0805B318 @ =0x03001630
	ldr r1, [r0]
	adds r1, #0x30
	ldrb r0, [r1]
	movs r2, #1
	orrs r0, r2
	strb r0, [r1]
	movs r0, #3
	bl sub_0805B1D0
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805B318: .4byte 0x03001630

	thumb_func_start sub_0805B31C
sub_0805B31C: @ 0x0805B31C
	push {r4, lr}
	sub sp, #8
	ldr r4, _0805B354 @ =0x03001630
	ldr r0, [r4]
	ldr r0, [r0, #0x34]
	movs r1, #1
	bl sub_08009A34
	ldr r1, [r4]
	adds r1, #0x30
	ldrb r0, [r1]
	movs r2, #1
	orrs r0, r2
	strb r0, [r1]
	ldr r0, _0805B358 @ =0x000009CC
	str r0, [sp]
	movs r0, #0x12
	str r0, [sp, #4]
	movs r0, #0x78
	movs r1, #0
	movs r2, #0x78
	movs r3, #0x5c
	bl sub_0805B280
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805B354: .4byte 0x03001630
_0805B358: .4byte 0x000009CC

	thumb_func_start sub_0805B35C
sub_0805B35C: @ 0x0805B35C
	push {lr}
	sub sp, #8
	ldr r0, _0805B388 @ =0x03001630
	ldr r1, [r0]
	adds r1, #0x30
	ldrb r0, [r1]
	movs r2, #1
	orrs r0, r2
	strb r0, [r1]
	ldr r0, _0805B38C @ =0x000009CC
	str r0, [sp]
	movs r0, #0x12
	str r0, [sp, #4]
	movs r0, #0x78
	movs r1, #0x5c
	movs r2, #0x18
	movs r3, #0x30
	bl sub_0805B280
	add sp, #8
	pop {r0}
	bx r0
	.align 2, 0
_0805B388: .4byte 0x03001630
_0805B38C: .4byte 0x000009CC

	thumb_func_start sub_0805B390
sub_0805B390: @ 0x0805B390
	push {lr}
	sub sp, #8
	ldr r0, _0805B3BC @ =0x03001630
	ldr r1, [r0]
	adds r1, #0x30
	ldrb r0, [r1]
	movs r2, #1
	orrs r0, r2
	strb r0, [r1]
	ldr r0, _0805B3C0 @ =0x000009CC
	str r0, [sp]
	movs r0, #0x12
	str r0, [sp, #4]
	movs r0, #0x18
	movs r1, #0x30
	movs r2, #0xaa
	movs r3, #0x46
	bl sub_0805B280
	add sp, #8
	pop {r0}
	bx r0
	.align 2, 0
_0805B3BC: .4byte 0x03001630
_0805B3C0: .4byte 0x000009CC

	thumb_func_start sub_0805B3C4
sub_0805B3C4: @ 0x0805B3C4
	push {lr}
	sub sp, #8
	ldr r0, _0805B3F0 @ =0x03001630
	ldr r1, [r0]
	adds r1, #0x30
	ldrb r0, [r1]
	movs r2, #1
	orrs r0, r2
	strb r0, [r1]
	ldr r0, _0805B3F4 @ =0xFFFFF634
	str r0, [sp]
	movs r0, #0x12
	str r0, [sp, #4]
	movs r0, #0xaa
	movs r1, #0x46
	movs r2, #0x46
	movs r3, #0x46
	bl sub_0805B280
	add sp, #8
	pop {r0}
	bx r0
	.align 2, 0
_0805B3F0: .4byte 0x03001630
_0805B3F4: .4byte 0xFFFFF634

	thumb_func_start sub_0805B3F8
sub_0805B3F8: @ 0x0805B3F8
	push {lr}
	sub sp, #8
	ldr r0, _0805B424 @ =0x03001630
	ldr r1, [r0]
	adds r1, #0x30
	ldrb r0, [r1]
	movs r2, #1
	orrs r0, r2
	strb r0, [r1]
	ldr r0, _0805B428 @ =0xFFFFF634
	str r0, [sp]
	movs r0, #0x12
	str r0, [sp, #4]
	movs r0, #0x46
	movs r1, #0x46
	movs r2, #0xaa
	movs r3, #0x46
	bl sub_0805B280
	add sp, #8
	pop {r0}
	bx r0
	.align 2, 0
_0805B424: .4byte 0x03001630
_0805B428: .4byte 0xFFFFF634

	thumb_func_start sub_0805B42C
sub_0805B42C: @ 0x0805B42C
	push {lr}
	sub sp, #8
	ldr r0, _0805B458 @ =0x03001630
	ldr r1, [r0]
	adds r1, #0x30
	ldrb r0, [r1]
	movs r2, #1
	orrs r0, r2
	strb r0, [r1]
	ldr r0, _0805B45C @ =0x000009CC
	str r0, [sp]
	movs r0, #0x12
	str r0, [sp, #4]
	movs r0, #0xaa
	movs r1, #0x46
	movs r2, #0x46
	movs r3, #0x46
	bl sub_0805B280
	add sp, #8
	pop {r0}
	bx r0
	.align 2, 0
_0805B458: .4byte 0x03001630
_0805B45C: .4byte 0x000009CC

	thumb_func_start sub_0805B460
sub_0805B460: @ 0x0805B460
	push {lr}
	sub sp, #8
	ldr r0, _0805B48C @ =0x03001630
	ldr r1, [r0]
	adds r1, #0x30
	ldrb r0, [r1]
	movs r2, #1
	orrs r0, r2
	strb r0, [r1]
	ldr r0, _0805B490 @ =0x000009CC
	str r0, [sp]
	movs r0, #0x12
	str r0, [sp, #4]
	movs r0, #0x46
	movs r1, #0x46
	movs r2, #0x78
	movs r3, #0x50
	bl sub_0805B280
	add sp, #8
	pop {r0}
	bx r0
	.align 2, 0
_0805B48C: .4byte 0x03001630
_0805B490: .4byte 0x000009CC

	thumb_func_start sub_0805B494
sub_0805B494: @ 0x0805B494
	push {lr}
	ldr r0, _0805B4A4 @ =0x03001630
	ldr r0, [r0]
	ldr r0, [r0, #0x34]
	bl sub_08009A00
	pop {r0}
	bx r0
	.align 2, 0
_0805B4A4: .4byte 0x03001630

	thumb_func_start sub_0805B4A8
sub_0805B4A8: @ 0x0805B4A8
	push {r4, r5, lr}
	movs r0, #1
	movs r1, #0x40
	bl sub_080099E0
	adds r4, r0, #0
	movs r1, #0
	bl sub_08009A34
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	bl sub_08009A70
	ldr r5, _0805B504 @ =0x03001630
	ldr r0, [r5]
	ldr r1, [r0, #0x38]
	adds r0, r4, #0
	bl sub_08009A78
	adds r0, r4, #0
	movs r1, #4
	bl sub_08009AB4
	ldr r1, _0805B508 @ =0x0814F490
	ldr r2, _0805B50C @ =0x0814F468
	adds r0, r4, #0
	movs r3, #0
	bl sub_08009ACC
	adds r0, r4, #0
	movs r1, #0xff
	bl sub_08009B40
	ldr r0, [r5]
	str r4, [r0, #0x34]
	movs r1, #0x28
	ldrsh r0, [r0, r1]
	ldr r1, _0805B510 @ =sub_0805B494
	bl sub_08007BA0
	bl sub_0805B20C
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805B504: .4byte 0x03001630
_0805B508: .4byte 0x0814F490
_0805B50C: .4byte 0x0814F468
_0805B510: .4byte sub_0805B494

	thumb_func_start sub_0805B514
sub_0805B514: @ 0x0805B514
	bx lr
	.align 2, 0

	thumb_func_start sub_0805B518
sub_0805B518: @ 0x0805B518
	push {r4, r5, lr}
	bl sub_08007BD4
	adds r5, r0, #0
	ldr r0, _0805B554 @ =0x03001630
	ldr r0, [r0]
	ldr r0, [r0, #0x34]
	movs r2, #6
	ldrsh r1, [r0, r2]
	ldr r2, [r5, #8]
	ldr r4, _0805B558 @ =0x0808F1F8
	ldrh r3, [r5, #2]
	lsls r3, r3, #1
	adds r3, r3, r4
	ldrh r3, [r3]
	adds r2, r2, r3
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl sub_08009A70
	ldrh r0, [r5, #2]
	adds r0, #1
	movs r1, #0x3c
	bl __modsi3
	strh r0, [r5, #2]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805B554: .4byte 0x03001630
_0805B558: .4byte 0x0808F1F8

	thumb_func_start sub_0805B55C
sub_0805B55C: @ 0x0805B55C
	push {r4, r5, lr}
	bl sub_08007BD4
	adds r3, r0, #0
	ldrb r0, [r3]
	cmp r0, #1
	beq _0805B5A8
	cmp r0, #1
	bgt _0805B574
	cmp r0, #0
	beq _0805B57A
	b _0805B604
_0805B574:
	cmp r0, #2
	beq _0805B600
	b _0805B604
_0805B57A:
	ldr r0, _0805B5A0 @ =0x03001630
	ldr r0, [r0]
	adds r0, #0x40
	movs r2, #1
	strb r2, [r0]
	ldr r1, _0805B5A4 @ =0x030024E0
	movs r0, #0x4a
	adds r0, r0, r1
	mov ip, r0
	movs r0, #0x8a
	lsls r0, r0, #3
	mov r4, ip
	strh r0, [r4]
	adds r1, #0x4c
	movs r0, #0x10
	strh r0, [r1]
	strb r2, [r3]
	b _0805B604
	.align 2, 0
_0805B5A0: .4byte 0x03001630
_0805B5A4: .4byte 0x030024E0
_0805B5A8:
	ldrh r0, [r3, #2]
	adds r0, #1
	movs r5, #0
	strh r0, [r3, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xc
	rsbs r0, r0, #0
	cmp r0, #0
	bge _0805B5BC
	adds r0, #0x3f
_0805B5BC:
	asrs r0, r0, #6
	ldr r4, _0805B5F8 @ =0x030024E0
	adds r1, r0, #0
	adds r1, #0x10
	rsbs r0, r0, #0
	movs r2, #0x1f
	ands r0, r2
	lsls r0, r0, #8
	ands r1, r2
	orrs r0, r1
	adds r1, r4, #0
	adds r1, #0x4c
	strh r0, [r1]
	ldrh r0, [r3, #2]
	cmp r0, #0x3f
	bls _0805B604
	strh r5, [r3, #2]
	movs r0, #2
	strb r0, [r3]
	adds r0, r4, #0
	adds r0, #0x4a
	strh r5, [r0]
	ldr r0, _0805B5FC @ =0x03001630
	ldr r0, [r0]
	ldr r0, [r0, #0x34]
	movs r1, #0
	bl sub_08009A34
	b _0805B604
	.align 2, 0
_0805B5F8: .4byte 0x030024E0
_0805B5FC: .4byte 0x03001630
_0805B600:
	bl sub_0805B20C
_0805B604:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0805B60C
sub_0805B60C: @ 0x0805B60C
	push {r4, r5, r6, lr}
	bl sub_08007BD4
	adds r5, r0, #0
	ldrb r6, [r5]
	cmp r6, #0
	beq _0805B620
	cmp r6, #1
	beq _0805B67C
	b _0805B6A8
_0805B620:
	ldr r0, [r5, #4]
	ldr r1, [r5, #0xc]
	adds r0, r0, r1
	str r0, [r5, #4]
	ldrh r4, [r5, #2]
	adds r4, #1
	strh r4, [r5, #2]
	lsls r0, r4, #0x10
	lsrs r0, r0, #0xf
	subs r0, #1
	ldr r1, [r5, #0x14]
	muls r0, r1, r0
	movs r1, #0x78
	bl __divsi3
	ldr r1, [r5, #0x10]
	adds r1, r1, r0
	ldr r0, [r5, #8]
	adds r0, r0, r1
	str r0, [r5, #8]
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldrb r0, [r5, #1]
	cmp r4, r0
	blo _0805B660
	strh r6, [r5, #2]
	movs r0, #1
	strb r0, [r5]
	ldr r0, [r5, #0x18]
	str r0, [r5, #4]
	ldr r0, [r5, #0x1c]
	str r0, [r5, #8]
_0805B660:
	ldr r0, _0805B678 @ =0x03001630
	ldr r0, [r0]
	ldr r0, [r0, #0x34]
	ldr r1, [r5, #4]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	ldr r2, [r5, #8]
	lsls r2, r2, #8
	asrs r2, r2, #0x10
	bl sub_08009A70
	b _0805B6A8
	.align 2, 0
_0805B678: .4byte 0x03001630
_0805B67C:
	ldr r1, [r5, #0x18]
	movs r0, #0xf0
	lsls r0, r0, #7
	cmp r1, r0
	bne _0805B696
	ldr r1, [r5, #0x1c]
	movs r0, #0xa0
	lsls r0, r0, #7
	cmp r1, r0
	bne _0805B696
	bl sub_0805B20C
	b _0805B6A8
_0805B696:
	ldr r0, _0805B6B0 @ =0x03001630
	ldr r0, [r0]
	ldr r1, [r0, #0x34]
	movs r2, #6
	ldrsh r0, [r1, r2]
	movs r2, #8
	ldrsh r1, [r1, r2]
	bl sub_0805B22C
_0805B6A8:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805B6B0: .4byte 0x03001630

	thumb_func_start sub_0805B6B4
sub_0805B6B4: @ 0x0805B6B4
	bx lr
	.align 2, 0

	thumb_func_start sub_0805B6B8
sub_0805B6B8: @ 0x0805B6B8
	push {lr}
	bl sub_08007BD4
	adds r2, r0, #0
	ldr r0, [r2]
	adds r0, #1
	str r0, [r2]
	ldr r1, [r2, #4]
	cmp r0, r1
	blo _0805B6EA
	movs r0, #0
	str r0, [r2]
	ldr r3, _0805B6F0 @ =0x03001630
	ldr r1, [r3]
	adds r1, #0x30
	ldrb r2, [r1]
	subs r0, #3
	ands r0, r2
	strb r0, [r1]
	ldr r0, [r3]
	movs r1, #0x2a
	ldrsh r0, [r0, r1]
	ldr r1, _0805B6F4 @ =sub_0805B6B4
	bl sub_08007B84
_0805B6EA:
	pop {r0}
	bx r0
	.align 2, 0
_0805B6F0: .4byte 0x03001630
_0805B6F4: .4byte sub_0805B6B4

	thumb_func_start sub_0805B6F8
sub_0805B6F8: @ 0x0805B6F8
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _0805B72C @ =0x03001630
	ldr r0, [r4]
	movs r1, #0x2a
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	ldr r2, [r4]
	adds r2, #0x30
	ldrb r1, [r2]
	movs r3, #2
	orrs r1, r3
	strb r1, [r2]
	str r5, [r0, #4]
	movs r1, #0
	str r1, [r0]
	ldr r0, [r4]
	movs r1, #0x2a
	ldrsh r0, [r0, r1]
	ldr r1, _0805B730 @ =sub_0805B6B8
	bl sub_08007B84
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805B72C: .4byte 0x03001630
_0805B730: .4byte sub_0805B6B8

	thumb_func_start sub_0805B734
sub_0805B734: @ 0x0805B734
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _0805B768 @ =0x03001630
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
	ldr r1, _0805B76C @ =0x0808F280
	lsls r4, r4, #2
	adds r4, r4, r1
	ldr r1, [r4]
	bl sub_08007B84
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805B768: .4byte 0x03001630
_0805B76C: .4byte 0x0808F280

	thumb_func_start sub_0805B770
sub_0805B770: @ 0x0805B770
	push {lr}
	ldr r0, _0805B78C @ =0x03001630
	ldr r1, [r0]
	adds r1, #0x30
	ldrb r2, [r1]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	movs r0, #0
	bl sub_0805B734
	pop {r0}
	bx r0
	.align 2, 0
_0805B78C: .4byte 0x03001630

	thumb_func_start sub_0805B790
sub_0805B790: @ 0x0805B790
	push {lr}
	ldr r0, _0805B7AC @ =0x03001630
	ldr r1, [r0]
	adds r1, #0x30
	ldrb r0, [r1]
	movs r2, #4
	orrs r0, r2
	strb r0, [r1]
	movs r0, #1
	bl sub_0805B734
	pop {r0}
	bx r0
	.align 2, 0
_0805B7AC: .4byte 0x03001630

	thumb_func_start sub_0805B7B0
sub_0805B7B0: @ 0x0805B7B0
	push {lr}
	ldr r0, _0805B7CC @ =0x03001630
	ldr r1, [r0]
	adds r1, #0x30
	ldrb r0, [r1]
	movs r2, #4
	orrs r0, r2
	strb r0, [r1]
	movs r0, #2
	bl sub_0805B734
	pop {r0}
	bx r0
	.align 2, 0
_0805B7CC: .4byte 0x03001630

	thumb_func_start sub_0805B7D0
sub_0805B7D0: @ 0x0805B7D0
	push {lr}
	bl sub_0805B770
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0805B7DC
sub_0805B7DC: @ 0x0805B7DC
	bx lr
	.align 2, 0

	thumb_func_start sub_0805B7E0
sub_0805B7E0: @ 0x0805B7E0
	push {r4, r5, r6, lr}
	bl sub_08007BD4
	adds r5, r0, #0
	ldrb r3, [r5]
	cmp r3, #1
	beq _0805B824
	cmp r3, #1
	bgt _0805B7F8
	cmp r3, #0
	beq _0805B7FE
	b _0805B870
_0805B7F8:
	cmp r3, #2
	beq _0805B86C
	b _0805B870
_0805B7FE:
	ldr r1, _0805B81C @ =0x030024E0
	ldrh r2, [r1]
	movs r4, #0x80
	lsls r4, r4, #2
	adds r0, r4, #0
	orrs r0, r2
	strh r0, [r1]
	ldr r0, _0805B820 @ =0x0000FF10
	strh r0, [r1, #0xc]
	adds r0, #0xa0
	strh r0, [r1, #0x14]
	strh r3, [r5, #2]
	movs r0, #1
	strb r0, [r5]
	b _0805B870
	.align 2, 0
_0805B81C: .4byte 0x030024E0
_0805B820: .4byte 0x0000FF10
_0805B824:
	ldrh r0, [r5, #2]
	adds r0, #1
	strh r0, [r5, #2]
	ldrh r4, [r5, #2]
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #4
	rsbs r0, r0, #0
	movs r1, #0x12
	bl __divsi3
	adds r6, r0, #0
	adds r6, #0xf0
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #4
	rsbs r0, r0, #0
	movs r1, #0x12
	bl __divsi3
	adds r2, r0, #0
	adds r2, #0x50
	cmp r4, #0x11
	bls _0805B85C
	movs r0, #0
	strh r0, [r5, #2]
	movs r0, #2
	strb r0, [r5]
_0805B85C:
	ldr r0, _0805B868 @ =0x030024E0
	rsbs r1, r6, #0
	strh r1, [r0, #0xc]
	rsbs r1, r2, #0
	strh r1, [r0, #0x14]
	b _0805B870
	.align 2, 0
_0805B868: .4byte 0x030024E0
_0805B86C:
	bl sub_0805B770
_0805B870:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0805B878
sub_0805B878: @ 0x0805B878
	push {r4, r5, lr}
	bl sub_08007BD4
	adds r3, r0, #0
	ldrb r0, [r3]
	cmp r0, #1
	beq _0805B8C0
	cmp r0, #1
	bgt _0805B890
	cmp r0, #0
	beq _0805B896
	b _0805B918
_0805B890:
	cmp r0, #2
	beq _0805B914
	b _0805B918
_0805B896:
	ldr r1, _0805B8B8 @ =0x030024E0
	ldrh r2, [r1]
	movs r4, #0x80
	lsls r4, r4, #3
	adds r0, r4, #0
	orrs r0, r2
	strh r0, [r1]
	adds r2, r1, #0
	adds r2, #0x4a
	ldr r0, _0805B8BC @ =0x00000C42
	strh r0, [r2]
	adds r1, #0x4c
	movs r0, #0x10
	strh r0, [r1]
	movs r0, #1
	strb r0, [r3]
	b _0805B918
	.align 2, 0
_0805B8B8: .4byte 0x030024E0
_0805B8BC: .4byte 0x00000C42
_0805B8C0:
	ldrh r0, [r3, #2]
	adds r0, #1
	movs r5, #0
	strh r0, [r3, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xc
	rsbs r0, r0, #0
	cmp r0, #0
	bge _0805B8D4
	adds r0, #0x3f
_0805B8D4:
	asrs r0, r0, #6
	ldr r4, _0805B90C @ =0x030024E0
	adds r1, r0, #0
	adds r1, #0x10
	rsbs r0, r0, #0
	movs r2, #0x1f
	ands r0, r2
	lsls r0, r0, #8
	ands r1, r2
	orrs r0, r1
	adds r1, r4, #0
	adds r1, #0x4c
	strh r0, [r1]
	ldrh r0, [r3, #2]
	cmp r0, #0x3f
	bls _0805B918
	strh r5, [r3, #2]
	movs r0, #2
	strb r0, [r3]
	ldrh r1, [r4]
	ldr r0, _0805B910 @ =0x0000FDFF
	ands r0, r1
	strh r0, [r4]
	adds r0, r4, #0
	adds r0, #0x4a
	strh r5, [r0]
	b _0805B918
	.align 2, 0
_0805B90C: .4byte 0x030024E0
_0805B910: .4byte 0x0000FDFF
_0805B914:
	bl sub_0805B770
_0805B918:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0805B920
sub_0805B920: @ 0x0805B920
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	bl sub_08007BD4
	adds r7, r0, #0
	ldrh r0, [r7, #2]
	adds r0, #1
	strh r0, [r7, #2]
	ldr r4, _0805B9B8 @ =0x0808F2CC
	ldrb r5, [r7]
	lsls r5, r5, #2
	adds r0, r5, r4
	movs r1, #0
	ldrsh r6, [r0, r1]
	ldr r2, _0805B9BC @ =0x0808F2DC
	adds r0, r5, r2
	movs r1, #0
	ldrsh r0, [r0, r1]
	subs r0, r0, r6
	ldrh r1, [r7, #2]
	mov r8, r1
	mov r1, r8
	muls r1, r0, r1
	adds r0, r1, #0
	movs r1, #0xb4
	lsls r1, r1, #1
	mov sb, r1
	str r2, [sp]
	bl __divsi3
	adds r6, r6, r0
	adds r4, #2
	adds r4, r5, r4
	movs r0, #0
	ldrsh r4, [r4, r0]
	ldr r2, [sp]
	adds r2, #2
	adds r5, r5, r2
	movs r1, #0
	ldrsh r0, [r5, r1]
	subs r0, r0, r4
	mov r1, r8
	muls r1, r0, r1
	adds r0, r1, #0
	mov r1, sb
	bl __divsi3
	adds r4, r4, r0
	ldr r0, [r7, #4]
	lsls r6, r6, #0x10
	asrs r6, r6, #0x10
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r1, r6, #0
	adds r2, r4, #0
	bl sub_08009A70
	ldrh r1, [r7, #2]
	ldr r0, _0805B9C0 @ =0x00000167
	cmp r1, r0
	bls _0805B9AA
	ldr r0, [r7, #4]
	bl sub_08009A00
	bl sub_08007A64
_0805B9AA:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805B9B8: .4byte 0x0808F2CC
_0805B9BC: .4byte 0x0808F2DC
_0805B9C0: .4byte 0x00000167

	thumb_func_start sub_0805B9C4
sub_0805B9C4: @ 0x0805B9C4
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	ldr r0, _0805BA34 @ =sub_0805B920
	movs r1, #0x42
	movs r2, #0
	bl sub_08007968
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl sub_08007BBC
	adds r7, r0, #0
	movs r0, #0
	strh r0, [r7, #2]
	strb r6, [r7]
	movs r0, #1
	movs r1, #0x80
	bl sub_080099E0
	adds r5, r0, #0
	movs r1, #1
	bl sub_08009A34
	ldr r0, _0805BA38 @ =0x0808F2CC
	lsls r4, r6, #2
	adds r1, r4, r0
	movs r2, #0
	ldrsh r1, [r1, r2]
	adds r0, #2
	adds r0, r4, r0
	movs r3, #0
	ldrsh r2, [r0, r3]
	adds r0, r5, #0
	bl sub_08009A70
	ldr r0, _0805BA3C @ =0x0808F28C
	adds r0, r4, r0
	ldr r1, [r0]
	adds r0, r5, #0
	bl sub_08009A78
	ldr r0, _0805BA40 @ =0x0808F29C
	adds r4, r4, r0
	ldrb r1, [r4]
	adds r0, r5, #0
	bl sub_08009AB4
	cmp r6, #1
	beq _0805BA5C
	cmp r6, #1
	bgt _0805BA44
	cmp r6, #0
	beq _0805BA4E
	b _0805BA80
	.align 2, 0
_0805BA34: .4byte sub_0805B920
_0805BA38: .4byte 0x0808F2CC
_0805BA3C: .4byte 0x0808F28C
_0805BA40: .4byte 0x0808F29C
_0805BA44:
	cmp r6, #2
	beq _0805BA68
	cmp r6, #3
	beq _0805BA74
	b _0805BA80
_0805BA4E:
	ldr r0, _0805BA58 @ =0x03001630
	ldr r0, [r0]
	ldr r1, [r0, #0x14]
	b _0805BA82
	.align 2, 0
_0805BA58: .4byte 0x03001630
_0805BA5C:
	ldr r0, _0805BA64 @ =0x03001630
	ldr r0, [r0]
	ldr r1, [r0, #0x1c]
	b _0805BA82
	.align 2, 0
_0805BA64: .4byte 0x03001630
_0805BA68:
	ldr r0, _0805BA70 @ =0x03001630
	ldr r0, [r0]
	ldr r1, [r0, #0xc]
	b _0805BA82
	.align 2, 0
_0805BA70: .4byte 0x03001630
_0805BA74:
	ldr r0, _0805BA7C @ =0x03001630
	ldr r0, [r0]
	ldr r1, [r0, #0x24]
	b _0805BA82
	.align 2, 0
_0805BA7C: .4byte 0x03001630
_0805BA80:
	movs r1, #0
_0805BA82:
	adds r0, r5, #0
	movs r2, #0
	bl sub_08009BBC
	ldr r0, _0805BAB0 @ =0x0808F2AC
	lsls r2, r6, #2
	adds r0, r2, r0
	ldr r1, [r0]
	ldr r0, _0805BAB4 @ =0x0808F2BC
	adds r2, r2, r0
	ldr r2, [r2]
	adds r0, r5, #0
	movs r3, #0
	bl sub_08009ACC
	adds r0, r5, #0
	movs r1, #0xff
	bl sub_08009B40
	str r5, [r7, #4]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805BAB0: .4byte 0x0808F2AC
_0805BAB4: .4byte 0x0808F2BC

	thumb_func_start sub_0805BAB8
sub_0805BAB8: @ 0x0805BAB8
	push {lr}
	movs r0, #0
	bl sub_0805B9C4
	pop {r0}
	bx r0

	thumb_func_start sub_0805BAC4
sub_0805BAC4: @ 0x0805BAC4
	push {lr}
	movs r0, #1
	bl sub_0805B9C4
	pop {r0}
	bx r0

	thumb_func_start sub_0805BAD0
sub_0805BAD0: @ 0x0805BAD0
	push {lr}
	movs r0, #2
	bl sub_0805B9C4
	pop {r0}
	bx r0

	thumb_func_start sub_0805BADC
sub_0805BADC: @ 0x0805BADC
	push {lr}
	movs r0, #3
	bl sub_0805B9C4
	pop {r0}
	bx r0

	thumb_func_start sub_0805BAE8
sub_0805BAE8: @ 0x0805BAE8
	push {r4, r5, r6, lr}
	bl sub_08007BD4
	adds r5, r0, #0
	ldrb r6, [r5]
	cmp r6, #0
	beq _0805BAFC
	cmp r6, #1
	beq _0805BB64
	b _0805BB8C
_0805BAFC:
	movs r0, #2
	bl sub_0800B828
	adds r1, r0, #0
	adds r1, #0x40
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r0, #1
	bl sub_080099E0
	adds r4, r0, #0
	movs r1, #1
	bl sub_08009A34
	movs r0, #8
	ldrsh r1, [r5, r0]
	movs r3, #0xa
	ldrsh r2, [r5, r3]
	adds r0, r4, #0
	bl sub_08009A70
	ldr r0, _0805BB58 @ =0x03001630
	ldr r0, [r0]
	ldr r1, [r0, #0x3c]
	adds r0, r4, #0
	bl sub_08009A78
	adds r0, r4, #0
	movs r1, #5
	bl sub_08009AB4
	ldr r1, _0805BB5C @ =0x0814F2A0
	ldr r2, _0805BB60 @ =0x0814F28C
	adds r0, r4, #0
	movs r3, #0
	bl sub_08009ACC
	adds r0, r4, #0
	movs r1, #1
	bl sub_08009B40
	str r4, [r5, #4]
	movs r0, #1
	strb r0, [r5]
	strh r6, [r5, #2]
	b _0805BB8C
	.align 2, 0
_0805BB58: .4byte 0x03001630
_0805BB5C: .4byte 0x0814F2A0
_0805BB60: .4byte 0x0814F28C
_0805BB64:
	ldr r0, [r5, #4]
	movs r1, #8
	ldrsh r2, [r0, r1]
	adds r2, #1
	movs r3, #6
	ldrsh r1, [r0, r3]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl sub_08009A70
	ldr r1, [r5, #4]
	ldrb r0, [r1, #1]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _0805BB8C
	adds r0, r1, #0
	bl sub_08009A00
	bl sub_08007A64
_0805BB8C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0805BB94
sub_0805BB94: @ 0x0805BB94
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	ldr r0, _0805BBCC @ =0x03001630
	ldr r0, [r0]
	adds r0, #0x40
	movs r4, #0
	strb r4, [r0]
	ldr r0, _0805BBD0 @ =sub_0805BAE8
	movs r1, #0x43
	movs r2, #0
	bl sub_08007968
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl sub_08007BBC
	strb r4, [r0]
	strh r4, [r0, #2]
	strh r5, [r0, #8]
	strh r6, [r0, #0xa]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805BBCC: .4byte 0x03001630
_0805BBD0: .4byte sub_0805BAE8

	thumb_func_start sub_0805BBD4
sub_0805BBD4: @ 0x0805BBD4
	push {r4, lr}
	bl sub_08007BD4
	adds r4, r0, #0
	ldrh r0, [r4, #2]
	cmp r0, #0
	bne _0805BC14
	ldr r0, _0805BC28 @ =0x03001630
	ldr r0, [r0]
	ldr r2, [r0, #0x34]
	ldr r1, _0805BC2C @ =0x0808F2EC
	ldrh r0, [r4, #4]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	ldrh r1, [r2, #6]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r2, #8]
	subs r1, #4
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0805BB94
	ldrh r1, [r4, #4]
	adds r2, r1, #1
	adds r0, r2, #0
	asrs r0, r0, #2
	lsls r0, r0, #2
	subs r0, r2, r0
	strh r0, [r4, #4]
_0805BC14:
	ldrh r0, [r4, #2]
	adds r0, #1
	movs r1, #0xc
	bl __modsi3
	strh r0, [r4, #2]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805BC28: .4byte 0x03001630
_0805BC2C: .4byte 0x0808F2EC

	thumb_func_start sub_0805BC30
sub_0805BC30: @ 0x0805BC30
	push {r4, r5, lr}
	ldr r0, _0805BC5C @ =sub_0805BBD4
	movs r1, #0x42
	movs r2, #0
	bl sub_08007968
	ldr r1, _0805BC60 @ =0x03001630
	ldr r1, [r1]
	movs r5, #0
	movs r4, #0
	strh r0, [r1, #0x2e]
	movs r2, #0x2e
	ldrsh r0, [r1, r2]
	bl sub_08007BBC
	strb r5, [r0]
	strh r4, [r0, #2]
	strh r4, [r0, #4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805BC5C: .4byte sub_0805BBD4
_0805BC60: .4byte 0x03001630

	thumb_func_start sub_0805BC64
sub_0805BC64: @ 0x0805BC64
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _0805BD80 @ =0x0808D48C
	bl sub_0800B02C
	bl sub_080057D0
	ldr r0, _0805BD84 @ =0x050001C2
	ldr r2, _0805BD88 @ =0x00007FFF
	adds r1, r2, #0
	strh r1, [r0]
	ldr r2, _0805BD8C @ =0x050001D2
	ldr r3, _0805BD90 @ =0x0000318C
	adds r0, r3, #0
	strh r0, [r2]
	ldr r0, _0805BD94 @ =0x050001C4
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	bl sub_0800446C
	ldr r0, _0805BD98 @ =0x03001634
	ldr r0, [r0]
	ldr r2, _0805BD9C @ =0x00000173
	adds r1, r0, r2
	movs r0, #0
	strb r0, [r1]
	movs r5, #0
	ldr r3, _0805BDA0 @ =0x0808F2F4
	mov sb, r3
	ldr r0, _0805BDA4 @ =0x03004400
	mov r8, r0
	mov sl, r5
	ldr r6, _0805BDA8 @ =0x0600A020
_0805BCB0:
	lsls r4, r5, #2
	mov r1, r8
	ldrb r0, [r1, #0xe]
	lsls r0, r0, #4
	adds r0, r4, r0
	add r0, sb
	ldr r0, [r0]
	bl sub_08006828
	movs r1, #0
	bl sub_080045FC
	ldr r7, _0805BD98 @ =0x03001634
	ldr r3, [r7]
	lsls r2, r5, #1
	adds r1, r3, #0
	adds r1, #0x2a
	adds r1, r1, r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	strh r0, [r1]
	ldr r1, _0805BD9C @ =0x00000173
	adds r2, r3, r1
	ldrb r1, [r2]
	adds r1, r1, r0
	strb r1, [r2]
	mov r2, r8
	ldrb r0, [r2, #0xe]
	lsls r0, r0, #4
	adds r4, r4, r0
	add r4, sb
	ldr r0, [r4]
	bl sub_08006828
	adds r1, r0, #0
	mov r3, sl
	str r3, [sp]
	adds r0, r6, #0
	movs r2, #1
	movs r3, #0
	bl sub_08004D94
	movs r0, #0x80
	lsls r0, r0, #4
	adds r6, r6, r0
	adds r5, #1
	cmp r5, #3
	ble _0805BCB0
	ldr r4, _0805BDAC @ =0x030024E0
	ldr r0, _0805BDB0 @ =0x00001B09
	strh r0, [r4, #4]
	ldr r0, _0805BDB4 @ =0x08107B48
	ldr r1, _0805BDB8 @ =0x05000180
	bl sub_08008308
	ldr r0, _0805BDBC @ =0x08107B6C
	ldr r1, _0805BDC0 @ =0x0600D400
	bl sub_08008374
	ldr r0, _0805BDC4 @ =0x08107B94
	ldr r1, _0805BDC8 @ =0x0600E800
	movs r2, #0xa0
	movs r3, #0xc
	bl sub_080083CC
	ldr r0, _0805BDCC @ =0x00001D0C
	strh r0, [r4, #2]
	ldr r0, _0805BDD0 @ =sub_0805C3FC
	movs r1, #0x41
	movs r2, #0
	bl sub_08007968
	ldr r1, [r7]
	strh r0, [r1, #8]
	ldr r0, _0805BDD4 @ =sub_0805CA34
	movs r1, #0x41
	movs r2, #0
	bl sub_08007968
	ldr r1, [r7]
	strh r0, [r1, #0xe]
	ldr r0, _0805BDD8 @ =sub_0805C4F0
	movs r1, #0x42
	movs r2, #0
	bl sub_08007968
	ldr r1, [r7]
	strh r0, [r1, #0xa]
	ldr r0, _0805BDDC @ =sub_0805C5A0
	movs r1, #0x42
	movs r2, #0
	bl sub_08007968
	ldr r1, [r7]
	strh r0, [r1, #0xc]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805BD80: .4byte 0x0808D48C
_0805BD84: .4byte 0x050001C2
_0805BD88: .4byte 0x00007FFF
_0805BD8C: .4byte 0x050001D2
_0805BD90: .4byte 0x0000318C
_0805BD94: .4byte 0x050001C4
_0805BD98: .4byte 0x03001634
_0805BD9C: .4byte 0x00000173
_0805BDA0: .4byte 0x0808F2F4
_0805BDA4: .4byte 0x03004400
_0805BDA8: .4byte 0x0600A020
_0805BDAC: .4byte 0x030024E0
_0805BDB0: .4byte 0x00001B09
_0805BDB4: .4byte 0x08107B48
_0805BDB8: .4byte 0x05000180
_0805BDBC: .4byte 0x08107B6C
_0805BDC0: .4byte 0x0600D400
_0805BDC4: .4byte 0x08107B94
_0805BDC8: .4byte 0x0600E800
_0805BDCC: .4byte 0x00001D0C
_0805BDD0: .4byte sub_0805C3FC
_0805BDD4: .4byte sub_0805CA34
_0805BDD8: .4byte sub_0805C4F0
_0805BDDC: .4byte sub_0805C5A0

	thumb_func_start sub_0805BDE0
sub_0805BDE0: @ 0x0805BDE0
	push {r4, lr}
	bl sub_0800B17C
	ldr r4, _0805BE18 @ =0x03001634
	ldr r0, [r4]
	movs r1, #8
	ldrsh r0, [r0, r1]
	bl sub_08007A08
	ldr r0, [r4]
	movs r1, #0xe
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
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805BE18: .4byte 0x03001634

	thumb_func_start sub_0805BE1C
sub_0805BE1C: @ 0x0805BE1C
	push {r4, r5, lr}
	movs r0, #0
	bl sub_080081A0
	ldr r5, _0805BE58 @ =0x03001634
	movs r4, #0xe8
	lsls r4, r4, #1
	adds r0, r4, #0
	bl sub_08007CE8
	adds r1, r0, #0
	str r1, [r5]
	movs r0, #0
	adds r2, r4, #0
	bl sub_08007EFC
	bl sub_0805BC64
	movs r0, #1
	bl sub_08002B98
	ldr r5, _0805BE5C @ =0x0808FBDC
_0805BE48:
	ldr r0, _0805BE58 @ =0x03001634
	ldr r1, [r0]
	ldrh r0, [r1, #6]
	cmp r0, #0
	beq _0805BE60
	subs r0, #1
	strh r0, [r1, #6]
	b _0805BE6C
	.align 2, 0
_0805BE58: .4byte 0x03001634
_0805BE5C: .4byte 0x0808FBDC
_0805BE60:
	ldrb r0, [r1, #1]
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	bl call_via_r0
_0805BE6C:
	ldr r4, _0805BE80 @ =0x03001634
	ldr r0, [r4]
	ldrb r0, [r0]
	cmp r0, #0
	bne _0805BE84
	movs r0, #1
	bl sub_08002B98
	b _0805BE48
	.align 2, 0
_0805BE80: .4byte 0x03001634
_0805BE84:
	bl sub_0805BDE0
	movs r0, #1
	bl sub_08002B98
	ldr r0, [r4]
	bl sub_08007CF8
	bl sub_08002B0C
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0805BEA0
sub_0805BEA0: @ 0x0805BEA0
	ldr r1, _0805BEB4 @ =0x03001634
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
_0805BEB4: .4byte 0x03001634

	thumb_func_start sub_0805BEB8
sub_0805BEB8: @ 0x0805BEB8
	push {r4, r5, r6, r7, lr}
	ldr r1, _0805BF94 @ =0x030024E0
	ldr r7, _0805BF98 @ =0x03001634
	ldr r3, [r7]
	ldrh r0, [r3, #0x32]
	movs r2, #0
	mov ip, r2
	strh r0, [r1, #0xc]
	ldr r1, _0805BF9C @ =0x040000B0
	adds r0, r3, #0
	adds r0, #0x34
	str r0, [r1]
	ldr r0, _0805BFA0 @ =0x04000014
	str r0, [r1, #4]
	ldr r0, _0805BFA4 @ =0xA2400001
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r1, #0xb9
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805BF8C
	ldr r2, _0805BFA8 @ =0x0808FBD4
	movs r5, #0xbb
	lsls r5, r5, #1
	adds r0, r3, r5
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r2
	ldrh r2, [r0]
	lsls r2, r2, #6
	ldr r0, _0805BFAC @ =0x0600D800
	adds r2, r2, r0
	ldr r4, _0805BFB0 @ =0x00000175
	adds r0, r3, r4
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r2, r2, r0
	lsls r1, r1, #6
	adds r0, #1
	adds r1, r1, r0
	movs r0, #0x80
	lsls r0, r0, #1
	adds r1, r1, r0
	ldr r0, _0805BFB4 @ =0xFFFFE000
	adds r6, r0, #0
	orrs r1, r6
	strh r1, [r2]
	adds r2, #0x40
	ldr r3, [r7]
	adds r0, r3, r5
	ldrb r1, [r0]
	lsls r1, r1, #6
	adds r0, r3, r4
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, #1
	adds r1, r1, r0
	ldr r0, _0805BFB8 @ =0x00000101
	adds r1, r1, r0
	orrs r1, r6
	strh r1, [r2]
	movs r1, #0xb9
	lsls r1, r1, #1
	adds r0, r3, r1
	mov r2, ip
	strb r2, [r0]
	ldr r0, [r7]
	adds r0, r0, r4
	ldrb r1, [r0]
	adds r1, #1
	strb r1, [r0]
	lsls r1, r1, #0x18
	ldr r2, [r7]
	adds r5, r2, r5
	ldrb r0, [r5]
	lsls r3, r0, #1
	adds r0, r2, #0
	adds r0, #0x2a
	adds r0, r0, r3
	lsrs r1, r1, #0x18
	ldrh r0, [r0]
	cmp r1, r0
	blo _0805BF7E
	ldr r0, _0805BFBC @ =0x0808FBCC
	adds r0, r3, r0
	ldrh r0, [r0]
	strh r0, [r2, #6]
	adds r0, r2, r4
	mov r1, ip
	strb r1, [r0]
	ldr r0, [r7]
	movs r2, #0xbb
	lsls r2, r2, #1
	adds r1, r0, r2
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_0805BF7E:
	ldr r1, [r7]
	movs r0, #0xba
	lsls r0, r0, #1
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_0805BF8C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805BF94: .4byte 0x030024E0
_0805BF98: .4byte 0x03001634
_0805BF9C: .4byte 0x040000B0
_0805BFA0: .4byte 0x04000014
_0805BFA4: .4byte 0xA2400001
_0805BFA8: .4byte 0x0808FBD4
_0805BFAC: .4byte 0x0600D800
_0805BFB0: .4byte 0x00000175
_0805BFB4: .4byte 0xFFFFE000
_0805BFB8: .4byte 0x00000101
_0805BFBC: .4byte 0x0808FBCC

	thumb_func_start sub_0805BFC0
sub_0805BFC0: @ 0x0805BFC0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r4, _0805BFE0 @ =0x03001634
	ldr r1, [r4]
	ldrb r3, [r1, #2]
	mov r8, r4
	cmp r3, #1
	beq _0805C0B0
	cmp r3, #1
	bgt _0805BFE4
	cmp r3, #0
	beq _0805BFEC
	b _0805C100
	.align 2, 0
_0805BFE0: .4byte 0x03001634
_0805BFE4:
	cmp r3, #2
	bne _0805BFEA
	b _0805C0F0
_0805BFEA:
	b _0805C100
_0805BFEC:
	movs r2, #0
	movs r3, #0
_0805BFF0:
	ldr r0, [r4]
	lsls r1, r2, #1
	adds r0, #0x32
	adds r0, r0, r1
	ldrh r1, [r0]
	strh r3, [r0]
	adds r2, #1
	cmp r2, #0x9f
	ble _0805BFF0
	movs r2, #0
	ldr r0, _0805C094 @ =0x03001634
	mov ip, r0
	ldr r1, _0805C098 @ =0x0808FBD4
	mov sb, r1
	movs r7, #0xf0
_0805C00E:
	adds r6, r2, #1
	lsls r5, r2, #1
	mov r2, sb
	adds r0, r5, r2
	ldrh r0, [r0]
	lsls r0, r0, #3
	adds r3, r0, #0
	adds r3, #0x1c
	movs r4, #0x17
_0805C020:
	mov r1, ip
	ldr r0, [r1]
	lsls r1, r3, #1
	adds r2, r0, #0
	adds r2, #0x32
	adds r2, r2, r1
	adds r0, #0x2a
	adds r0, r0, r5
	ldrh r0, [r0]
	lsls r0, r0, #3
	subs r0, r7, r0
	asrs r0, r0, #1
	rsbs r0, r0, #0
	ldrh r1, [r2]
	strh r0, [r2]
	adds r3, #1
	subs r4, #1
	cmp r4, #0
	bge _0805C020
	adds r2, r6, #0
	cmp r2, #3
	ble _0805C00E
	mov r2, r8
	ldr r0, [r2]
	ldr r3, _0805C09C @ =0x00000175
	adds r0, r0, r3
	movs r1, #0
	strb r1, [r0]
	ldr r0, [r2]
	movs r5, #0xbb
	lsls r5, r5, #1
	adds r0, r0, r5
	strb r1, [r0]
	bl sub_08008174
	ldr r2, _0805C0A0 @ =0x030024E0
	ldrh r1, [r2]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r3, #0
	orrs r0, r1
	ldr r1, _0805C0A4 @ =0x0000EFFF
	ands r0, r1
	strh r0, [r2]
	ldr r0, _0805C0A8 @ =0x0000FFE4
	strh r0, [r2, #0x14]
	adds r2, #0x4f
	movs r1, #1
	strb r1, [r2]
	mov r5, r8
	ldr r0, [r5]
	strb r1, [r0, #2]
	ldr r0, _0805C0AC @ =sub_0805BEB8
	movs r1, #0xff
	bl sub_08009460
	b _0805C100
	.align 2, 0
_0805C094: .4byte 0x03001634
_0805C098: .4byte 0x0808FBD4
_0805C09C: .4byte 0x00000175
_0805C0A0: .4byte 0x030024E0
_0805C0A4: .4byte 0x0000EFFF
_0805C0A8: .4byte 0x0000FFE4
_0805C0AC: .4byte sub_0805BEB8
_0805C0B0:
	movs r2, #0xba
	lsls r2, r2, #1
	adds r0, r1, r2
	ldr r5, _0805C0CC @ =0x00000173
	adds r2, r1, r5
	ldrb r0, [r0]
	ldrb r2, [r2]
	cmp r0, r2
	blo _0805C0D0
	movs r0, #0x1e
	strh r0, [r1, #6]
	movs r0, #2
	strb r0, [r1, #2]
	b _0805C100
	.align 2, 0
_0805C0CC: .4byte 0x00000173
_0805C0D0:
	ldrh r0, [r1, #4]
	cmp r0, #0
	bne _0805C0DE
	movs r2, #0xb9
	lsls r2, r2, #1
	adds r0, r1, r2
	strb r3, [r0]
_0805C0DE:
	ldr r3, [r4]
	ldrh r1, [r3, #4]
	adds r2, r1, #1
	adds r0, r2, #0
	asrs r0, r0, #3
	lsls r0, r0, #3
	subs r0, r2, r0
	strh r0, [r3, #4]
	b _0805C100
_0805C0F0:
	bl sub_0803B868
	ldr r0, _0805C10C @ =sub_0805BEB8
	bl sub_080094F4
	movs r0, #1
	bl sub_0805BEA0
_0805C100:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805C10C: .4byte sub_0805BEB8

	thumb_func_start sub_0805C110
sub_0805C110: @ 0x0805C110
	push {r4, r5, r6, lr}
	ldr r6, _0805C128 @ =0x03001634
	ldr r2, [r6]
	ldrb r5, [r2, #2]
	cmp r5, #1
	beq _0805C18C
	cmp r5, #1
	bgt _0805C12C
	cmp r5, #0
	beq _0805C132
	b _0805C1CE
	.align 2, 0
_0805C128: .4byte 0x03001634
_0805C12C:
	cmp r5, #2
	beq _0805C1C8
	b _0805C1CE
_0805C132:
	bl sub_08008174
	ldr r4, _0805C184 @ =0x030024E0
	ldrh r1, [r4]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r2, #0
	orrs r0, r1
	movs r2, #0x80
	lsls r2, r2, #4
	adds r1, r2, #0
	orrs r0, r1
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4]
	adds r1, r4, #0
	adds r1, #0x4a
	ldr r0, _0805C188 @ =0x00000CDD
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x4e
	movs r1, #0x10
	strb r1, [r0]
	subs r0, #2
	strh r1, [r0]
	bl sub_0805C45C
	adds r0, r4, #0
	adds r0, #0x4f
	movs r4, #1
	strb r4, [r0]
	movs r0, #0xd
	bl m4aSongNumStart
	ldr r0, [r6]
	strh r5, [r0, #4]
	strb r4, [r0, #2]
	b _0805C1CE
	.align 2, 0
_0805C184: .4byte 0x030024E0
_0805C188: .4byte 0x00000CDD
_0805C18C:
	ldr r3, _0805C1C4 @ =0x030024E0
	ldrh r0, [r2, #4]
	adds r0, #1
	strh r0, [r2, #4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	rsbs r0, r1, #0
	cmp r0, #0
	bge _0805C1A6
	adds r0, #0x1f
_0805C1A6:
	asrs r0, r0, #5
	adds r0, #0x10
	movs r1, #0x1f
	ands r0, r1
	adds r1, r3, #0
	adds r1, #0x4e
	strb r0, [r1]
	ldrh r0, [r2, #4]
	cmp r0, #0x1f
	bls _0805C1CE
	movs r0, #0
	strh r0, [r2, #4]
	movs r0, #2
	strb r0, [r2, #2]
	b _0805C1CE
	.align 2, 0
_0805C1C4: .4byte 0x030024E0
_0805C1C8:
	movs r0, #2
	bl sub_0805BEA0
_0805C1CE:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_0805C1D4
sub_0805C1D4: @ 0x0805C1D4
	push {r4, lr}
	ldr r4, _0805C1EC @ =0x03001634
	ldr r2, [r4]
	ldrb r1, [r2, #2]
	cmp r1, #1
	beq _0805C220
	cmp r1, #1
	bgt _0805C1F0
	cmp r1, #0
	beq _0805C1F6
	b _0805C240
	.align 2, 0
_0805C1EC: .4byte 0x03001634
_0805C1F0:
	cmp r1, #2
	beq _0805C236
	b _0805C240
_0805C1F6:
	ldr r1, _0805C218 @ =0x030024E0
	ldrh r2, [r1]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r3, #0
	orrs r0, r2
	strh r0, [r1]
	ldr r0, _0805C21C @ =0x00001C09
	strh r0, [r1, #4]
	bl sub_08004460
	bl sub_0805CA18
	ldr r1, [r4]
	movs r0, #1
	strb r0, [r1, #2]
	b _0805C240
	.align 2, 0
_0805C218: .4byte 0x030024E0
_0805C21C: .4byte 0x00001C09
_0805C220:
	ldrb r0, [r2, #0x10]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _0805C240
	adds r0, r2, #0
	adds r0, #0x28
	strb r1, [r0]
	ldr r1, [r4]
	movs r0, #2
	strb r0, [r1, #2]
	b _0805C240
_0805C236:
	bl sub_0800446C
	movs r0, #3
	bl sub_0805BEA0
_0805C240:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0805C248
sub_0805C248: @ 0x0805C248
	push {r4, lr}
	ldr r4, _0805C260 @ =0x03001634
	ldr r2, [r4]
	ldrb r0, [r2, #2]
	cmp r0, #1
	beq _0805C276
	cmp r0, #1
	bgt _0805C264
	cmp r0, #0
	beq _0805C26E
	b _0805C2C8
	.align 2, 0
_0805C260: .4byte 0x03001634
_0805C264:
	cmp r0, #2
	beq _0805C2AC
	cmp r0, #3
	beq _0805C2C4
	b _0805C2C8
_0805C26E:
	strh r0, [r2, #4]
	movs r0, #1
	strb r0, [r2, #2]
	b _0805C2C8
_0805C276:
	ldr r3, _0805C2A8 @ =0x030024E0
	ldrh r0, [r2, #4]
	adds r0, #1
	strh r0, [r2, #4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	rsbs r0, r0, #0
	cmp r0, #0
	bge _0805C28A
	adds r0, #0x1f
_0805C28A:
	asrs r0, r0, #5
	adds r0, #4
	movs r1, #0x1f
	ands r0, r1
	adds r1, r3, #0
	adds r1, #0x4e
	strb r0, [r1]
	ldrh r0, [r2, #4]
	cmp r0, #0x1f
	bls _0805C2C8
	movs r0, #0
	strh r0, [r2, #4]
	movs r0, #2
	strb r0, [r2, #2]
	b _0805C2C8
	.align 2, 0
_0805C2A8: .4byte 0x030024E0
_0805C2AC:
	ldr r0, _0805C2C0 @ =0x030056F0
	movs r1, #4
	bl m4aMPlayFadeOut
	bl sub_0803B868
	ldr r1, [r4]
	movs r0, #3
	strb r0, [r1, #2]
	b _0805C2C8
	.align 2, 0
_0805C2C0: .4byte 0x030056F0
_0805C2C4:
	movs r0, #1
	strb r0, [r2]
_0805C2C8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0805C2D0
sub_0805C2D0: @ 0x0805C2D0
	push {r4, lr}
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r1, #0x30
	bl sub_0800B278
	bl sub_0800B2BC
	ldr r4, _0805C308 @ =0x03001634
	ldr r1, [r4]
	movs r2, #0xbe
	lsls r2, r2, #1
	adds r1, r1, r2
	strh r0, [r1]
	bl sub_0800B2C8
	ldr r1, [r4]
	subs r0, #0x30
	movs r2, #0xbf
	lsls r2, r2, #1
	adds r1, r1, r2
	strh r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805C308: .4byte 0x03001634

	thumb_func_start sub_0805C30C
sub_0805C30C: @ 0x0805C30C
	push {r4, r5, r6, lr}
	bl sub_08007BD4
	adds r4, r0, #0
	ldrh r0, [r4, #2]
	adds r0, #1
	movs r1, #3
	bl __modsi3
	strh r0, [r4, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0805C3E4
	ldr r0, _0805C368 @ =0x03001634
	ldr r2, [r0]
	movs r1, #0xbe
	lsls r1, r1, #1
	adds r0, r2, r1
	movs r3, #0
	ldrsh r1, [r0, r3]
	movs r3, #4
	ldrsh r0, [r4, r3]
	adds r6, r1, r0
	movs r3, #0xbf
	lsls r3, r3, #1
	adds r0, r2, r3
	movs r3, #0
	ldrsh r5, [r0, r3]
	adds r0, r2, #0
	adds r0, #0x28
	ldrb r0, [r0]
	cmp r0, #0
	bne _0805C37C
	ldrb r0, [r2, #0x10]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _0805C37C
	movs r2, #4
	ldrsh r0, [r4, r2]
	cmp r0, #0
	blt _0805C370
	adds r1, #0x10
	ldr r0, _0805C36C @ =0x000005EF
	cmp r1, r0
	bgt _0805C378
	b _0805C37C
	.align 2, 0
_0805C368: .4byte 0x03001634
_0805C36C: .4byte 0x000005EF
_0805C370:
	adds r0, r1, #0
	subs r0, #0x10
	cmp r0, #0
	bgt _0805C37C
_0805C378:
	bl sub_0805C4D4
_0805C37C:
	ldr r0, _0805C3EC @ =0x000005EF
	cmp r6, r0
	ble _0805C3A8
	movs r6, #0xbe
	lsls r6, r6, #3
	ldr r0, _0805C3F0 @ =0x03001634
	ldr r1, [r0]
	adds r0, r1, #0
	adds r0, #0x28
	ldrb r0, [r0]
	cmp r0, #0
	bne _0805C3A8
	movs r3, #0xbf
	lsls r3, r3, #1
	adds r0, r1, r3
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r5, r0, #0
	adds r5, #0xf0
	ldrh r0, [r4, #4]
	rsbs r0, r0, #0
	strh r0, [r4, #4]
_0805C3A8:
	cmp r6, #0
	bgt _0805C3D0
	movs r6, #0
	ldr r0, _0805C3F0 @ =0x03001634
	ldr r1, [r0]
	adds r0, r1, #0
	adds r0, #0x28
	ldrb r0, [r0]
	cmp r0, #0
	bne _0805C3D0
	movs r2, #0xbf
	lsls r2, r2, #1
	adds r0, r1, r2
	movs r3, #0
	ldrsh r0, [r0, r3]
	adds r5, r0, #0
	adds r5, #0xf0
	ldrh r0, [r4, #4]
	rsbs r0, r0, #0
	strh r0, [r4, #4]
_0805C3D0:
	ldr r0, _0805C3F4 @ =0x0000037F
	cmp r5, r0
	ble _0805C3D8
	movs r5, #0
_0805C3D8:
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	bl sub_0805C2D0
_0805C3E4:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805C3EC: .4byte 0x000005EF
_0805C3F0: .4byte 0x03001634
_0805C3F4: .4byte 0x0000037F

	thumb_func_start sub_0805C3F8
sub_0805C3F8: @ 0x0805C3F8
	bx lr
	.align 2, 0

	thumb_func_start sub_0805C3FC
sub_0805C3FC: @ 0x0805C3FC
	push {r4, lr}
	ldr r4, _0805C448 @ =0x03001634
	ldr r0, [r4]
	movs r1, #8
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	movs r1, #0
	strb r1, [r0]
	strh r1, [r0, #2]
	movs r1, #1
	strh r1, [r0, #4]
	ldr r1, _0805C44C @ =0x0808D4A0
	adds r0, r1, #0
	adds r0, #0xc8
	ldrb r0, [r0]
	lsls r0, r0, #0x13
	ldr r2, _0805C450 @ =0xFFA00000
	adds r0, r0, r2
	asrs r0, r0, #0x10
	adds r1, #0xc9
	ldrb r1, [r1]
	lsls r1, r1, #0x13
	ldr r2, _0805C454 @ =0xFFC80000
	adds r1, r1, r2
	asrs r1, r1, #0x10
	bl sub_0805C2D0
	ldr r0, [r4]
	movs r1, #8
	ldrsh r0, [r0, r1]
	ldr r1, _0805C458 @ =sub_0805C3F8
	bl sub_08007B84
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805C448: .4byte 0x03001634
_0805C44C: .4byte 0x0808D4A0
_0805C450: .4byte 0xFFA00000
_0805C454: .4byte 0xFFC80000
_0805C458: .4byte sub_0805C3F8

	thumb_func_start sub_0805C45C
sub_0805C45C: @ 0x0805C45C
	push {lr}
	ldr r0, _0805C470 @ =0x03001634
	ldr r0, [r0]
	movs r1, #8
	ldrsh r0, [r0, r1]
	ldr r1, _0805C474 @ =sub_0805C30C
	bl sub_08007B84
	pop {r0}
	bx r0
	.align 2, 0
_0805C470: .4byte 0x03001634
_0805C474: .4byte sub_0805C30C

	thumb_func_start sub_0805C478
sub_0805C478: @ 0x0805C478
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _0805C4AC @ =0x03001634
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
	ldr r1, _0805C4B0 @ =0x0808FBEC
	lsls r4, r4, #2
	adds r4, r4, r1
	ldr r1, [r4]
	bl sub_08007B84
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805C4AC: .4byte 0x03001634
_0805C4B0: .4byte 0x0808FBEC

	thumb_func_start sub_0805C4B4
sub_0805C4B4: @ 0x0805C4B4
	push {lr}
	ldr r0, _0805C4D0 @ =0x03001634
	ldr r2, [r0]
	ldrb r1, [r2, #0x10]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #0x10]
	movs r0, #0
	bl sub_0805C478
	pop {r0}
	bx r0
	.align 2, 0
_0805C4D0: .4byte 0x03001634

	thumb_func_start sub_0805C4D4
sub_0805C4D4: @ 0x0805C4D4
	push {lr}
	ldr r0, _0805C4EC @ =0x03001634
	ldr r2, [r0]
	ldrb r0, [r2, #0x10]
	movs r1, #1
	orrs r0, r1
	strb r0, [r2, #0x10]
	movs r0, #1
	bl sub_0805C478
	pop {r0}
	bx r0
	.align 2, 0
_0805C4EC: .4byte 0x03001634

	thumb_func_start sub_0805C4F0
sub_0805C4F0: @ 0x0805C4F0
	push {lr}
	bl sub_0805C4B4
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0805C4FC
sub_0805C4FC: @ 0x0805C4FC
	bx lr
	.align 2, 0

	thumb_func_start sub_0805C500
sub_0805C500: @ 0x0805C500
	push {r4, r5, lr}
	bl sub_08007BD4
	adds r5, r0, #0
	ldrb r2, [r5]
	cmp r2, #0
	beq _0805C514
	cmp r2, #1
	beq _0805C540
	b _0805C572
_0805C514:
	ldr r3, _0805C53C @ =0x030024E0
	ldrh r0, [r5, #2]
	adds r0, #1
	strh r0, [r5, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	asrs r0, r0, #2
	adds r0, #4
	movs r1, #0x1f
	ands r0, r1
	adds r1, r3, #0
	adds r1, #0x4e
	strb r0, [r1]
	ldrh r0, [r5, #2]
	cmp r0, #0x30
	bne _0805C572
	strh r2, [r5, #2]
	movs r0, #1
	strb r0, [r5]
	b _0805C572
	.align 2, 0
_0805C53C: .4byte 0x030024E0
_0805C540:
	ldr r4, _0805C578 @ =0x030024E0
	ldrh r1, [r5, #2]
	adds r1, #1
	strh r1, [r5, #2]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	rsbs r0, r0, #0
	movs r1, #0x30
	bl __divsi3
	adds r0, #0x10
	movs r1, #0x1f
	ands r0, r1
	adds r4, #0x4e
	strb r0, [r4]
	ldrh r0, [r5, #2]
	cmp r0, #0x30
	bne _0805C572
	movs r0, #0
	strh r0, [r5, #2]
	bl sub_0805C4B4
_0805C572:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805C578: .4byte 0x030024E0

	thumb_func_start sub_0805C57C
sub_0805C57C: @ 0x0805C57C
	push {r4, r5, lr}
	movs r4, #0
	ldr r5, _0805C59C @ =0x03001634
_0805C582:
	ldr r0, [r5]
	lsls r1, r4, #2
	adds r0, #0x14
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_08009A00
	adds r4, #1
	cmp r4, #4
	ble _0805C582
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805C59C: .4byte 0x03001634

	thumb_func_start sub_0805C5A0
sub_0805C5A0: @ 0x0805C5A0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r4, _0805C678 @ =0x03001634
	ldr r0, [r4]
	movs r1, #0xc
	ldrsh r0, [r0, r1]
	bl sub_08007BBC
	adds r7, r0, #0
	movs r0, #0
	strb r0, [r7]
	movs r5, #0
	mov r8, r4
	movs r0, #0xc0
	lsls r0, r0, #1
	mov sb, r0
	mov sl, r8
_0805C5C8:
	adds r2, r7, #6
	adds r2, r2, r5
	adds r0, r7, #1
	adds r0, r0, r5
	movs r1, #0x3a
	strb r1, [r0]
	strb r1, [r2]
	movs r0, #2
	movs r1, #0xff
	bl sub_080099E0
	adds r4, r0, #0
	movs r1, #0
	bl sub_08009A34
	lsls r1, r5, #3
	adds r1, r1, r5
	lsls r1, r1, #7
	ldr r0, _0805C67C @ =0x06011800
	adds r1, r1, r0
	adds r0, r4, #0
	bl sub_08009A78
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	bl sub_08009BBC
	adds r1, r5, #6
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r4, #0
	bl sub_08009AB4
	adds r0, r4, #0
	ldr r1, _0805C680 @ =0x080ACA8C
	ldr r2, _0805C684 @ =0x080ACA84
	movs r3, #0
	bl sub_08009ACC
	adds r0, r4, #0
	movs r1, #0
	bl sub_08009B40
	mov r1, r8
	ldr r0, [r1]
	lsls r1, r5, #2
	adds r0, #0x14
	adds r0, r0, r1
	str r4, [r0]
	adds r4, r5, #1
	ldr r6, _0805C688 @ =0x080ACB30
	lsls r2, r5, #4
	movs r3, #3
_0805C634:
	mov r1, r8
	ldr r0, [r1]
	add r0, sb
	adds r0, r0, r2
	ldm r6!, {r1}
	str r1, [r0]
	adds r2, #4
	subs r3, #1
	cmp r3, #0
	bge _0805C634
	adds r5, r4, #0
	cmp r5, #4
	ble _0805C5C8
	mov r1, sl
	ldr r0, [r1]
	movs r1, #0xc
	ldrsh r0, [r0, r1]
	ldr r1, _0805C68C @ =sub_0805C57C
	bl sub_08007BA0
	mov r1, sl
	ldr r0, [r1]
	movs r1, #0xc
	ldrsh r0, [r0, r1]
	ldr r1, _0805C690 @ =sub_0805C694
	bl sub_08007B84
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805C678: .4byte 0x03001634
_0805C67C: .4byte 0x06011800
_0805C680: .4byte 0x080ACA8C
_0805C684: .4byte 0x080ACA84
_0805C688: .4byte 0x080ACB30
_0805C68C: .4byte sub_0805C57C
_0805C690: .4byte sub_0805C694

	thumb_func_start sub_0805C694
sub_0805C694: @ 0x0805C694
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	bl sub_08007BD4
	mov sb, r0
	movs r0, #0
	mov r8, r0
	movs r1, #6
	add r1, sb
	mov sl, r1
	movs r5, #0
_0805C6B2:
	mov r0, sb
	adds r0, #6
	mov r2, r8
	adds r1, r0, r2
	ldrb r0, [r1]
	cmp r0, #0x39
	bhi _0805C75C
	ldr r2, _0805C71C @ =0x0808D4A0
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #3
	adds r1, r1, r2
	ldrb r2, [r1, #8]
	lsls r2, r2, #3
	ldr r3, _0805C720 @ =0x03001634
	ldr r4, [r3]
	movs r6, #0xbe
	lsls r6, r6, #1
	adds r0, r4, r6
	movs r6, #0
	ldrsh r0, [r0, r6]
	subs r6, r2, r0
	ldrb r1, [r1, #9]
	lsls r1, r1, #3
	movs r2, #0xbf
	lsls r2, r2, #1
	adds r0, r4, r2
	movs r2, #0
	ldrsh r0, [r0, r2]
	subs r2, r1, r0
	adds r0, r6, #0
	adds r0, #0x30
	cmp r0, #0
	ble _0805C724
	cmp r6, #0xef
	bgt _0805C724
	adds r0, r2, #0
	adds r0, #0x30
	cmp r0, #0
	ble _0805C724
	cmp r2, #0x9f
	bgt _0805C724
	adds r0, r4, #0
	adds r0, #0x14
	adds r0, r0, r5
	ldr r0, [r0]
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl sub_08009A70
	b _0805C75C
	.align 2, 0
_0805C71C: .4byte 0x0808D4A0
_0805C720: .4byte 0x03001634
_0805C724:
	mov r1, sl
	add r1, r8
	movs r0, #0x3a
	strb r0, [r1]
	ldr r0, [r3]
	adds r0, #0x14
	adds r0, r0, r5
	ldr r0, [r0]
	movs r1, #0
	str r3, [sp, #0x10]
	bl sub_08009A34
	mov r0, sb
	adds r0, #0xb
	add r0, r8
	ldrb r0, [r0]
	ldr r3, [sp, #0x10]
	cmp r0, #0
	beq _0805C75C
	mov r6, r8
	lsls r1, r6, #4
	movs r0, #0xc0
	lsls r0, r0, #1
	adds r1, r1, r0
	ldr r0, [r3]
	adds r0, r0, r1
	bl sub_080095E0
_0805C75C:
	adds r5, #4
	movs r1, #1
	add r8, r1
	mov r2, r8
	cmp r2, #4
	ble _0805C6B2
	movs r3, #0
	mov r8, r3
_0805C76C:
	mov r6, r8
	adds r6, #1
	str r6, [sp]
	mov r0, r8
	cmp r0, #0x27
	bne _0805C77A
	b _0805C992
_0805C77A:
	ldr r0, _0805C818 @ =0x0808D4A0
	mov r1, r8
	lsls r4, r1, #1
	adds r1, r4, r1
	lsls r1, r1, #3
	adds r1, r1, r0
	ldrb r2, [r1, #8]
	lsls r2, r2, #3
	ldr r3, _0805C81C @ =0x03001634
	ldr r5, [r3]
	movs r6, #0xbe
	lsls r6, r6, #1
	adds r0, r5, r6
	movs r6, #0
	ldrsh r0, [r0, r6]
	subs r6, r2, r0
	ldrb r1, [r1, #9]
	lsls r1, r1, #3
	movs r2, #0xbf
	lsls r2, r2, #1
	adds r0, r5, r2
	movs r2, #0
	ldrsh r0, [r0, r2]
	subs r2, r1, r0
	adds r0, r6, #0
	adds r0, #0x30
	cmp r0, #0
	bgt _0805C7B4
	b _0805C992
_0805C7B4:
	cmp r6, #0xef
	ble _0805C7BA
	b _0805C992
_0805C7BA:
	adds r0, r2, #0
	adds r0, #0x30
	cmp r0, #0
	bgt _0805C7C4
	b _0805C992
_0805C7C4:
	cmp r2, #0x9f
	ble _0805C7CA
	b _0805C992
_0805C7CA:
	movs r7, #0
	mov r1, sl
_0805C7CE:
	adds r0, r1, r7
	ldrb r0, [r0]
	cmp r0, r8
	bne _0805C7D8
	b _0805C992
_0805C7D8:
	adds r7, #1
	cmp r7, #4
	ble _0805C7CE
	movs r7, #0
	mov r1, sb
	ldrb r0, [r1, #6]
	lsls r6, r6, #0x10
	str r6, [sp, #4]
	lsls r2, r2, #0x10
	str r2, [sp, #8]
	mov r2, sb
	adds r2, #0xb
	cmp r0, #0x3a
	beq _0805C804
	mov r1, sl
_0805C7F6:
	adds r7, #1
	cmp r7, #4
	bgt _0805C804
	adds r0, r1, r7
	ldrb r0, [r0]
	cmp r0, #0x3a
	bne _0805C7F6
_0805C804:
	mov r6, r8
	cmp r6, #0x39
	bls _0805C80C
	b _0805C914
_0805C80C:
	lsls r0, r6, #2
	ldr r1, _0805C820 @ =_0805C824
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0805C818: .4byte 0x0808D4A0
_0805C81C: .4byte 0x03001634
_0805C820: .4byte _0805C824
_0805C824: @ jump table
	.4byte _0805C90C @ case 0
	.4byte _0805C914 @ case 1
	.4byte _0805C90C @ case 2
	.4byte _0805C914 @ case 3
	.4byte _0805C914 @ case 4
	.4byte _0805C914 @ case 5
	.4byte _0805C914 @ case 6
	.4byte _0805C914 @ case 7
	.4byte _0805C90C @ case 8
	.4byte _0805C90C @ case 9
	.4byte _0805C914 @ case 10
	.4byte _0805C914 @ case 11
	.4byte _0805C914 @ case 12
	.4byte _0805C914 @ case 13
	.4byte _0805C914 @ case 14
	.4byte _0805C914 @ case 15
	.4byte _0805C914 @ case 16
	.4byte _0805C914 @ case 17
	.4byte _0805C914 @ case 18
	.4byte _0805C914 @ case 19
	.4byte _0805C914 @ case 20
	.4byte _0805C90C @ case 21
	.4byte _0805C914 @ case 22
	.4byte _0805C914 @ case 23
	.4byte _0805C914 @ case 24
	.4byte _0805C914 @ case 25
	.4byte _0805C90C @ case 26
	.4byte _0805C914 @ case 27
	.4byte _0805C914 @ case 28
	.4byte _0805C914 @ case 29
	.4byte _0805C914 @ case 30
	.4byte _0805C914 @ case 31
	.4byte _0805C914 @ case 32
	.4byte _0805C914 @ case 33
	.4byte _0805C914 @ case 34
	.4byte _0805C914 @ case 35
	.4byte _0805C914 @ case 36
	.4byte _0805C914 @ case 37
	.4byte _0805C914 @ case 38
	.4byte _0805C914 @ case 39
	.4byte _0805C914 @ case 40
	.4byte _0805C914 @ case 41
	.4byte _0805C914 @ case 42
	.4byte _0805C914 @ case 43
	.4byte _0805C914 @ case 44
	.4byte _0805C914 @ case 45
	.4byte _0805C914 @ case 46
	.4byte _0805C914 @ case 47
	.4byte _0805C914 @ case 48
	.4byte _0805C914 @ case 49
	.4byte _0805C90C @ case 50
	.4byte _0805C90C @ case 51
	.4byte _0805C90C @ case 52
	.4byte _0805C90C @ case 53
	.4byte _0805C90C @ case 54
	.4byte _0805C90C @ case 55
	.4byte _0805C90C @ case 56
	.4byte _0805C90C @ case 57
_0805C90C:
	adds r1, r2, r7
	movs r0, #0
	strb r0, [r1]
	b _0805C938
_0805C914:
	adds r1, r2, r7
	movs r0, #1
	strb r0, [r1]
	lsls r1, r7, #4
	movs r0, #0xc0
	lsls r0, r0, #1
	adds r1, r1, r0
	ldr r0, [r3]
	adds r0, r0, r1
	adds r1, r7, #6
	movs r2, #0xf
	ands r1, r2
	lsls r1, r1, #4
	ldr r3, _0805C9AC @ =0x00000101
	adds r2, r3, #0
	orrs r1, r2
	bl sub_08009554
_0805C938:
	ldr r2, _0805C9B0 @ =0x0808D4A0
	add r4, r8
	lsls r4, r4, #3
	adds r0, r2, #4
	adds r0, r4, r0
	ldr r0, [r0]
	lsls r1, r7, #5
	ldr r6, _0805C9B4 @ =0x050002C0
	adds r1, r1, r6
	str r2, [sp, #0xc]
	bl sub_08008348
	ldr r5, _0805C9B8 @ =0x03001634
	ldr r0, [r5]
	lsls r6, r7, #2
	adds r0, #0x14
	adds r0, r0, r6
	ldr r0, [r0]
	ldr r2, [sp, #0xc]
	adds r4, r4, r2
	ldr r1, [r4]
	movs r2, #1
	bl sub_08009BE4
	ldr r0, [r5]
	adds r0, #0x14
	adds r0, r0, r6
	ldr r0, [r0]
	ldr r2, [sp, #4]
	asrs r1, r2, #0x10
	ldr r3, [sp, #8]
	asrs r2, r3, #0x10
	bl sub_08009A70
	ldr r0, [r5]
	adds r0, #0x14
	adds r0, r0, r6
	ldr r0, [r0]
	movs r1, #1
	bl sub_08009A34
	mov r6, sl
	adds r0, r6, r7
	mov r1, r8
	strb r1, [r0]
_0805C992:
	ldr r2, [sp]
	mov r8, r2
	cmp r2, #0x39
	bgt _0805C99C
	b _0805C76C
_0805C99C:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805C9AC: .4byte 0x00000101
_0805C9B0: .4byte 0x0808D4A0
_0805C9B4: .4byte 0x050002C0
_0805C9B8: .4byte 0x03001634

	thumb_func_start sub_0805C9BC
sub_0805C9BC: @ 0x0805C9BC
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _0805C9F0 @ =0x03001634
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
	ldr r1, _0805C9F4 @ =0x0808FBF4
	lsls r4, r4, #2
	adds r4, r4, r1
	ldr r1, [r4]
	bl sub_08007B84
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805C9F0: .4byte 0x03001634
_0805C9F4: .4byte 0x0808FBF4

	thumb_func_start sub_0805C9F8
sub_0805C9F8: @ 0x0805C9F8
	push {lr}
	ldr r0, _0805CA14 @ =0x03001634
	ldr r2, [r0]
	ldrb r1, [r2, #0x10]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #0x10]
	movs r0, #0
	bl sub_0805C9BC
	pop {r0}
	bx r0
	.align 2, 0
_0805CA14: .4byte 0x03001634

	thumb_func_start sub_0805CA18
sub_0805CA18: @ 0x0805CA18
	push {lr}
	ldr r0, _0805CA30 @ =0x03001634
	ldr r2, [r0]
	ldrb r0, [r2, #0x10]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2, #0x10]
	movs r0, #1
	bl sub_0805C9BC
	pop {r0}
	bx r0
	.align 2, 0
_0805CA30: .4byte 0x03001634

	thumb_func_start sub_0805CA34
sub_0805CA34: @ 0x0805CA34
	push {lr}
	ldr r0, _0805CA5C @ =0x03001634
	ldr r2, [r0]
	movs r0, #0xbc
	lsls r0, r0, #1
	adds r1, r2, r0
	ldr r0, _0805CA60 @ =0x0000FFFF
	strh r0, [r1]
	movs r1, #0xe
	ldrsh r0, [r2, r1]
	bl sub_08007BBC
	movs r1, #0
	strb r1, [r0]
	strh r1, [r0, #2]
	bl sub_0805C9F8
	pop {r0}
	bx r0
	.align 2, 0
_0805CA5C: .4byte 0x03001634
_0805CA60: .4byte 0x0000FFFF

	thumb_func_start sub_0805CA64
sub_0805CA64: @ 0x0805CA64
	bx lr
	.align 2, 0

	thumb_func_start sub_0805CA68
sub_0805CA68: @ 0x0805CA68
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	bl sub_08007BD4
	mov sb, r0
	ldrb r0, [r0]
	cmp r0, #4
	bls _0805CA82
	b _0805CECC
_0805CA82:
	lsls r0, r0, #2
	ldr r1, _0805CA8C @ =_0805CA90
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0805CA8C: .4byte _0805CA90
_0805CA90: @ jump table
	.4byte _0805CAA4 @ case 0
	.4byte _0805CC30 @ case 1
	.4byte _0805CCC4 @ case 2
	.4byte _0805CDC4 @ case 3
	.4byte _0805CEC8 @ case 4
_0805CAA4:
	mov r1, sb
	ldrh r0, [r1, #2]
	adds r0, #1
	movs r1, #6
	bl __modsi3
	mov r2, sb
	strh r0, [r2, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0805CABC
	b _0805CECC
_0805CABC:
	ldr r0, _0805CC00 @ =0x03001634
	ldr r6, [r0]
	movs r1, #0xbc
	lsls r1, r1, #1
	adds r0, r6, r1
	ldrh r1, [r0]
	adds r5, r1, #1
	strh r5, [r0]
	movs r2, #0
	ldrsh r4, [r0, r2]
	adds r0, r4, #0
	movs r1, #0x38
	bl __modsi3
	lsls r0, r0, #0x10
	asrs r7, r0, #0x10
	cmp r7, #0
	beq _0805CAE2
	b _0805CC1C
_0805CAE2:
	adds r0, r4, #0
	movs r1, #0x38
	bl __divsi3
	movs r2, #0xbd
	lsls r2, r2, #1
	adds r1, r6, r2
	strh r0, [r1]
	ldrh r3, [r1]
	lsls r0, r3, #3
	subs r2, r0, r3
	adds r0, r2, #0
	cmp r2, #0
	bge _0805CB00
	adds r0, #0x1f
_0805CB00:
	asrs r5, r0, #5
	lsls r0, r5, #5
	subs r5, r2, r0
	ldr r4, _0805CC04 @ =0x0808F758
	adds r0, r3, #0
	movs r1, #5
	bl __umodsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	adds r0, r0, r4
	ldr r0, [r0]
	lsls r1, r5, #6
	ldr r4, _0805CC08 @ =0x0600E000
	adds r1, r1, r4
	movs r2, #0x20
	bl CpuSet
	adds r2, r5, #1
	adds r0, r2, #0
	cmp r2, #0
	bge _0805CB30
	adds r0, r5, #0
	adds r0, #0x20
_0805CB30:
	asrs r5, r0, #5
	lsls r0, r5, #5
	subs r5, r2, r0
	add r0, sp, #4
	strh r7, [r0]
	lsls r1, r5, #6
	adds r1, r1, r4
	ldr r2, _0805CC0C @ =0x01000020
	bl CpuSet
	adds r2, r5, #3
	adds r0, r2, #0
	cmp r2, #0
	bge _0805CB50
	adds r0, r5, #0
	adds r0, #0x22
_0805CB50:
	asrs r5, r0, #5
	lsls r0, r5, #5
	subs r5, r2, r0
	mov r0, sp
	adds r0, #6
	add r7, sp, #8
	adds r6, r0, #0
	movs r4, #2
_0805CB60:
	movs r0, #0
	strh r0, [r6]
	lsls r1, r5, #6
	ldr r0, _0805CC08 @ =0x0600E000
	adds r1, r1, r0
	adds r0, r6, #0
	ldr r2, _0805CC0C @ =0x01000020
	bl CpuSet
	adds r1, r5, #1
	adds r0, r1, #0
	cmp r1, #0
	bge _0805CB7E
	adds r0, r5, #0
	adds r0, #0x20
_0805CB7E:
	asrs r5, r0, #5
	lsls r0, r5, #5
	subs r5, r1, r0
	subs r4, #1
	cmp r4, #0
	bge _0805CB60
	movs r1, #0
	mov r8, r1
	movs r0, #1
	mov r2, sb
	strb r0, [r2]
	str r1, [sp, #8]
	ldr r6, _0805CC10 @ =0x0808F35C
	ldr r5, _0805CC00 @ =0x03001634
	ldr r0, [r5]
	movs r4, #0xbd
	lsls r4, r4, #1
	adds r0, r0, r4
	ldrh r0, [r0]
	movs r1, #5
	bl __umodsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	adds r0, r0, r6
	ldr r1, [r0]
	ldr r2, _0805CC14 @ =0x01000068
	adds r0, r7, #0
	bl CpuFastSet
	ldr r0, [r5]
	adds r2, r0, r4
	ldrh r0, [r2]
	cmp r0, #0x35
	bls _0805CBC6
	b _0805CECC
_0805CBC6:
	ldr r1, _0805CC18 @ =0x0808FAF4
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r0, [r0, #4]
	bl sub_08006828
	adds r4, r0, #0
	ldr r0, [r5]
	movs r1, #0xbd
	lsls r1, r1, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	movs r1, #5
	bl __umodsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	adds r0, r0, r6
	ldr r0, [r0]
	mov r2, r8
	str r2, [sp]
	adds r1, r4, #0
	movs r2, #2
	movs r3, #0
	bl sub_08004D94
	b _0805CECC
	.align 2, 0
_0805CC00: .4byte 0x03001634
_0805CC04: .4byte 0x0808F758
_0805CC08: .4byte 0x0600E000
_0805CC0C: .4byte 0x01000020
_0805CC10: .4byte 0x0808F35C
_0805CC14: .4byte 0x01000068
_0805CC18: .4byte 0x0808FAF4
_0805CC1C:
	lsls r1, r5, #0x10
	ldr r0, _0805CC2C @ =0x0C570000
	cmp r1, r0
	bgt _0805CC26
	b _0805CECC
_0805CC26:
	movs r0, #4
	b _0805CDB4
	.align 2, 0
_0805CC2C: .4byte 0x0C570000
_0805CC30:
	ldr r7, _0805CCB0 @ =0x03001634
	ldr r0, [r7]
	movs r2, #0xbd
	lsls r2, r2, #1
	adds r1, r0, r2
	ldrh r0, [r1]
	cmp r0, #0x35
	bhi _0805CCAA
	ldr r4, _0805CCB4 @ =0x0807F048
	ldr r0, _0805CCB8 @ =0x0808FAF4
	mov r8, r0
	ldrh r0, [r1]
	lsls r1, r0, #2
	add r1, r8
	ldr r1, [r1]
	ldr r1, [r1]
	lsls r1, r1, #3
	adds r1, r1, r4
	ldr r6, [r1]
	ldr r5, _0805CCBC @ =0x0808F348
	movs r1, #5
	bl __umodsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	adds r0, r0, r5
	ldr r1, [r0]
	adds r0, r6, #0
	bl sub_08008308
	ldr r0, [r7]
	movs r1, #0xbd
	lsls r1, r1, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r1, r0, #2
	add r1, r8
	ldr r1, [r1]
	ldr r1, [r1]
	lsls r1, r1, #3
	adds r4, #4
	adds r1, r1, r4
	ldr r5, [r1]
	ldr r4, _0805CCC0 @ =0x0808F334
	movs r1, #5
	bl __umodsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl sub_08008374
	ldr r0, [r7]
	movs r2, #0xbd
	lsls r2, r2, #1
	adds r0, r0, r2
	ldrb r0, [r0]
	bl sub_0805CF48
_0805CCAA:
	movs r0, #2
	b _0805CDB4
	.align 2, 0
_0805CCB0: .4byte 0x03001634
_0805CCB4: .4byte 0x0807F048
_0805CCB8: .4byte 0x0808FAF4
_0805CCBC: .4byte 0x0808F348
_0805CCC0: .4byte 0x0808F334
_0805CCC4:
	movs r2, #0
	mov r8, r2
	str r2, [sp, #8]
	add r4, sp, #8
	ldr r0, _0805CD6C @ =0x0808F370
	mov sl, r0
	ldr r7, _0805CD70 @ =0x03001634
	ldr r0, [r7]
	movs r6, #0xbd
	lsls r6, r6, #1
	adds r0, r0, r6
	ldrh r0, [r0]
	movs r1, #5
	bl __umodsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	add r0, sl
	ldr r1, [r0]
	ldr r2, _0805CD74 @ =0x010000B8
	adds r0, r4, #0
	bl CpuFastSet
	ldr r0, [r7]
	adds r1, r0, r6
	ldrh r0, [r1]
	cmp r0, #0x35
	bhi _0805CD84
	ldr r5, _0805CD78 @ =0x0808F76C
	adds r4, r0, #0
	movs r1, #5
	bl __umodsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	adds r0, r0, r5
	ldr r3, [r0]
	lsls r0, r4, #3
	subs r0, r0, r4
	adds r2, r0, #2
	adds r1, r2, #0
	cmp r2, #0
	bge _0805CD1E
	adds r1, r0, #0
	adds r1, #0x21
_0805CD1E:
	asrs r1, r1, #5
	lsls r1, r1, #5
	subs r1, r2, r1
	lsls r1, r1, #6
	ldr r2, _0805CD7C @ =0x0600E000
	adds r1, r1, r2
	adds r0, r3, #0
	movs r2, #0x20
	bl CpuSet
	ldr r1, _0805CD80 @ =0x0808FAF4
	ldr r0, [r7]
	adds r0, r0, r6
	ldrh r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r0, [r0, #8]
	bl sub_08006828
	adds r4, r0, #0
	ldr r0, [r7]
	adds r0, r0, r6
	ldrh r0, [r0]
	movs r1, #5
	bl __umodsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	add r0, sl
	ldr r0, [r0]
	mov r1, r8
	str r1, [sp]
	adds r1, r4, #0
	movs r2, #3
	movs r3, #0
	bl sub_08004D94
	b _0805CDB2
	.align 2, 0
_0805CD6C: .4byte 0x0808F370
_0805CD70: .4byte 0x03001634
_0805CD74: .4byte 0x010000B8
_0805CD78: .4byte 0x0808F76C
_0805CD7C: .4byte 0x0600E000
_0805CD80: .4byte 0x0808FAF4
_0805CD84:
	mov r3, sp
	adds r3, #6
	mov r2, r8
	strh r2, [r3]
	ldrh r1, [r1]
	lsls r0, r1, #3
	subs r0, r0, r1
	adds r2, r0, #2
	adds r1, r2, #0
	cmp r2, #0
	bge _0805CD9E
	adds r1, r0, #0
	adds r1, #0x21
_0805CD9E:
	asrs r1, r1, #5
	lsls r1, r1, #5
	subs r1, r2, r1
	lsls r1, r1, #6
	ldr r0, _0805CDBC @ =0x0600E000
	adds r1, r1, r0
	ldr r2, _0805CDC0 @ =0x01000020
	adds r0, r3, #0
	bl CpuSet
_0805CDB2:
	movs r0, #3
_0805CDB4:
	mov r1, sb
	strb r0, [r1]
	b _0805CECC
	.align 2, 0
_0805CDBC: .4byte 0x0600E000
_0805CDC0: .4byte 0x01000020
_0805CDC4:
	movs r2, #0
	mov r8, r2
	str r2, [sp, #0xc]
	add r4, sp, #0xc
	ldr r0, _0805CE6C @ =0x0808F384
	mov sl, r0
	ldr r7, _0805CE70 @ =0x03001634
	ldr r0, [r7]
	movs r6, #0xbd
	lsls r6, r6, #1
	adds r0, r0, r6
	ldrh r0, [r0]
	movs r1, #5
	bl __umodsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	add r0, sl
	ldr r1, [r0]
	ldr r2, _0805CE74 @ =0x010000B8
	adds r0, r4, #0
	bl CpuFastSet
	ldr r0, [r7]
	adds r1, r0, r6
	ldrh r0, [r1]
	cmp r0, #0x35
	bhi _0805CE84
	ldr r5, _0805CE78 @ =0x0808F780
	adds r4, r0, #0
	movs r1, #5
	bl __umodsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	adds r0, r0, r5
	ldr r3, [r0]
	lsls r0, r4, #3
	subs r0, r0, r4
	adds r2, r0, #3
	adds r1, r2, #0
	cmp r2, #0
	bge _0805CE1E
	adds r1, r0, #0
	adds r1, #0x22
_0805CE1E:
	asrs r1, r1, #5
	lsls r1, r1, #5
	subs r1, r2, r1
	lsls r1, r1, #6
	ldr r2, _0805CE7C @ =0x0600E000
	adds r1, r1, r2
	adds r0, r3, #0
	movs r2, #0x20
	bl CpuSet
	ldr r1, _0805CE80 @ =0x0808FAF4
	ldr r0, [r7]
	adds r0, r0, r6
	ldrh r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r0, [r0, #0xc]
	bl sub_08006828
	adds r4, r0, #0
	ldr r0, [r7]
	adds r0, r0, r6
	ldrh r0, [r0]
	movs r1, #5
	bl __umodsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	add r0, sl
	ldr r0, [r0]
	mov r1, r8
	str r1, [sp]
	adds r1, r4, #0
	movs r2, #3
	movs r3, #0
	bl sub_08004D94
	b _0805CEB2
	.align 2, 0
_0805CE6C: .4byte 0x0808F384
_0805CE70: .4byte 0x03001634
_0805CE74: .4byte 0x010000B8
_0805CE78: .4byte 0x0808F780
_0805CE7C: .4byte 0x0600E000
_0805CE80: .4byte 0x0808FAF4
_0805CE84:
	mov r3, sp
	adds r3, #6
	mov r2, r8
	strh r2, [r3]
	ldrh r1, [r1]
	lsls r0, r1, #3
	subs r0, r0, r1
	adds r2, r0, #3
	adds r1, r2, #0
	cmp r2, #0
	bge _0805CE9E
	adds r1, r0, #0
	adds r1, #0x22
_0805CE9E:
	asrs r1, r1, #5
	lsls r1, r1, #5
	subs r1, r2, r1
	lsls r1, r1, #6
	ldr r0, _0805CEC0 @ =0x0600E000
	adds r1, r1, r0
	ldr r2, _0805CEC4 @ =0x01000020
	adds r0, r3, #0
	bl CpuSet
_0805CEB2:
	movs r1, #0
	movs r0, #3
	mov r2, sb
	strh r0, [r2, #2]
	strb r1, [r2]
	b _0805CECC
	.align 2, 0
_0805CEC0: .4byte 0x0600E000
_0805CEC4: .4byte 0x01000020
_0805CEC8:
	bl sub_0805C9F8
_0805CECC:
	ldr r1, _0805CEF0 @ =0x030024E0
	ldr r0, _0805CEF4 @ =0x03001634
	ldr r0, [r0]
	movs r2, #0xbc
	lsls r2, r2, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	subs r0, #0xa0
	strh r0, [r1, #0x14]
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805CEF0: .4byte 0x030024E0
_0805CEF4: .4byte 0x03001634

	thumb_func_start sub_0805CEF8
sub_0805CEF8: @ 0x0805CEF8
	push {lr}
	bl sub_08007BD4
	adds r3, r0, #0
	ldrb r0, [r3]
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #3
	ldr r0, _0805CF30 @ =0x03001634
	ldr r0, [r0]
	movs r2, #0xbc
	lsls r2, r2, #1
	adds r0, r0, r2
	movs r2, #0
	ldrsh r0, [r0, r2]
	subs r0, #0xa0
	subs r2, r1, r0
	movs r0, #0x20
	rsbs r0, r0, #0
	cmp r2, r0
	bge _0805CF34
	ldr r0, [r3, #4]
	bl sub_08009A00
	bl sub_08007A64
	b _0805CF42
	.align 2, 0
_0805CF30: .4byte 0x03001634
_0805CF34:
	ldr r0, [r3, #4]
	movs r3, #6
	ldrsh r1, [r0, r3]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl sub_08009A70
_0805CF42:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0805CF48
sub_0805CF48: @ 0x0805CF48
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _0805CFF0 @ =sub_0805CEF8
	movs r1, #0x42
	movs r2, #0
	bl sub_08007968
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl sub_08007BBC
	mov r8, r0
	strb r4, [r0]
	movs r0, #1
	movs r1, #0xff
	bl sub_080099E0
	adds r5, r0, #0
	movs r1, #1
	bl sub_08009A34
	mov r1, r8
	ldrb r0, [r1]
	lsls r2, r0, #3
	subs r2, r2, r0
	lsls r2, r2, #3
	ldr r0, _0805CFF4 @ =0x03001634
	ldr r0, [r0]
	movs r1, #0xbc
	lsls r1, r1, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	subs r0, #0xa0
	subs r2, r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r5, #0
	movs r1, #8
	bl sub_08009A70
	adds r0, r5, #0
	movs r1, #1
	bl sub_08009B6C
	ldr r6, _0805CFF8 @ =0x0808F334
	adds r0, r4, #0
	movs r1, #5
	bl __umodsi3
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	lsls r0, r4, #2
	adds r0, r0, r6
	ldr r1, [r0]
	adds r0, r5, #0
	bl sub_08009A78
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08009AB4
	ldr r2, _0805CFFC @ =0x0814348C
	adds r0, r5, #0
	movs r1, #0
	movs r3, #0
	bl sub_08009ACC
	adds r0, r5, #0
	movs r1, #0
	bl sub_08009B40
	mov r0, r8
	str r5, [r0, #4]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805CFF0: .4byte sub_0805CEF8
_0805CFF4: .4byte 0x03001634
_0805CFF8: .4byte 0x0808F334
_0805CFFC: .4byte 0x0814348C

	thumb_func_start sub_0805D000
sub_0805D000: @ 0x0805D000
	push {r4, lr}
	ldr r4, _0805D018 @ =0x030044B0
	movs r0, #0
	strb r0, [r4, #0x10]
	movs r0, #6
	bl sub_0800B828
	strb r0, [r4, #0x11]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805D018: .4byte 0x030044B0

	thumb_func_start sub_0805D01C
sub_0805D01C: @ 0x0805D01C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0xc
	movs r4, #0
	str r4, [sp, #4]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	ldr r2, _0805D074 @ =0x01006000
	add r0, sp, #4
	bl CpuFastSet
	ldr r0, _0805D078 @ =0x030024E0
	movs r1, #0xf2
	lsls r1, r1, #5
	strh r1, [r0]
	ldr r1, _0805D07C @ =0x00005C05
	strh r1, [r0, #4]
	ldr r1, _0805D080 @ =0x00005E02
	strh r1, [r0, #6]
	ldr r1, _0805D084 @ =0x00001B03
	strh r1, [r0, #8]
	strh r4, [r0, #0x12]
	strh r4, [r0, #0xa]
	strh r4, [r0, #0x14]
	strh r4, [r0, #0xc]
	strh r4, [r0, #0x16]
	strh r4, [r0, #0xe]
	strh r4, [r0, #0x18]
	strh r4, [r0, #0x10]
	ldr r0, _0805D088 @ =0x03004400
	ldrb r0, [r0, #0xa]
	add r1, sp, #8
	mov r8, r1
	cmp r0, #0x11
	beq _0805D0E6
	bl sub_0805D000
	movs r5, #0
	ldr r4, _0805D08C @ =0x030044B0
_0805D06C:
	cmp r5, #9
	bgt _0805D090
	strb r5, [r4]
	b _0805D0B6
	.align 2, 0
_0805D074: .4byte 0x01006000
_0805D078: .4byte 0x030024E0
_0805D07C: .4byte 0x00005C05
_0805D080: .4byte 0x00005E02
_0805D084: .4byte 0x00001B03
_0805D088: .4byte 0x03004400
_0805D08C: .4byte 0x030044B0
_0805D090:
	movs r0, #0xa
	bl sub_0800B828
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #2
	bne _0805D0B4
	movs r0, #9
	bl sub_0800B828
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r0, #3
	movs r1, #0xa
	bl __modsi3
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
_0805D0B4:
	strb r2, [r4]
_0805D0B6:
	adds r4, #1
	adds r5, #1
	cmp r5, #0xf
	ble _0805D06C
	movs r7, #0xf
	ldr r6, _0805D138 @ =0x030044B0
	movs r5, #0xf
_0805D0C4:
	bl sub_0800B818
	adds r4, r7, #0
	ands r4, r0
	adds r4, r4, r6
	bl sub_0800B818
	adds r1, r7, #0
	ands r1, r0
	adds r1, r1, r6
	ldrb r2, [r4]
	ldrb r0, [r1]
	strb r0, [r4]
	strb r2, [r1]
	subs r5, #1
	cmp r5, #0
	bge _0805D0C4
_0805D0E6:
	ldr r4, _0805D13C @ =0x030044A0
	movs r0, #0x7c
	bl sub_08007CE8
	adds r1, r0, #0
	str r1, [r4]
	movs r0, #0
	mov r2, r8
	strh r0, [r2]
	ldr r2, _0805D140 @ =0x0100003E
	mov r0, r8
	bl CpuSet
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
	movs r2, #0xa
	movs r3, #0
	bl sub_08004028
	bl sub_080057C0
	movs r0, #3
	bl sub_08005A88
	add sp, #0xc
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805D138: .4byte 0x030044B0
_0805D13C: .4byte 0x030044A0
_0805D140: .4byte 0x0100003E

	thumb_func_start sub_0805D144
sub_0805D144: @ 0x0805D144
	push {r4, lr}
	bl sub_0800580C
	bl sub_08003FE4
	ldr r4, _0805D164 @ =0x030044A0
	ldr r0, [r4]
	cmp r0, #0
	beq _0805D15E
	bl sub_08007CF8
	movs r0, #0
	str r0, [r4]
_0805D15E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805D164: .4byte 0x030044A0

	thumb_func_start sub_0805D168
sub_0805D168: @ 0x0805D168
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	ldr r0, _0805D288 @ =0x08149F88
	movs r1, #0xa0
	lsls r1, r1, #0x13
	bl sub_08008308
	ldr r0, _0805D28C @ =0x0814A464
	movs r1, #0xc0
	lsls r1, r1, #0x13
	bl sub_08008374
	ldr r0, _0805D290 @ =0x0814A0C0
	ldr r1, _0805D294 @ =0x0600D800
	movs r2, #0
	movs r3, #0
	bl sub_080083CC
	ldr r0, _0805D298 @ =0x0814A010
	ldr r1, _0805D29C @ =0x0600F000
	movs r2, #0
	movs r3, #0
	bl sub_080083CC
	movs r6, #0
	ldr r7, _0805D2A0 @ =0x0808FBFC
	mov r8, r7
_0805D1A2:
	lsls r0, r6, #4
	mov r1, r8
	adds r1, #4
	adds r0, r0, r1
	ldr r4, [r0]
	adds r0, r4, #0
	bl sub_08006C14
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r0, [r7]
	ldr r1, _0805D2A4 @ =0x0808FC3C
	adds r1, r6, r1
	ldrb r1, [r1]
	lsls r1, r1, #5
	ldr r2, _0805D2A8 @ =0x05000200
	adds r1, r1, r2
	bl sub_08008308
	lsls r1, r5, #5
	ldr r0, _0805D2AC @ =0x06010000
	adds r1, r1, r0
	adds r0, r4, #0
	bl sub_08008374
	ldr r0, _0805D2B0 @ =0x030044A0
	ldr r0, [r0]
	lsls r1, r6, #1
	adds r0, r0, r1
	strh r5, [r0]
	adds r7, #0x10
	adds r6, #1
	cmp r6, #3
	ble _0805D1A2
	ldr r1, _0805D2B4 @ =0x030024E0
	movs r0, #0xb8
	strh r0, [r1, #0xe]
	ldr r0, _0805D2B8 @ =0x0000FFE8
	strh r0, [r1, #0x16]
	movs r0, #0xa8
	strh r0, [r1, #0xc]
	ldr r0, _0805D2BC @ =0x0000FFF8
	strh r0, [r1, #0x14]
	movs r0, #0xe
	bl sub_080040EC
	movs r6, #0
	movs r1, #0xe0
	lsls r1, r1, #8
	mov r8, r1
	ldr r2, _0805D2C0 @ =0xFFFFE000
	adds r7, r2, #0
_0805D20A:
	lsrs r0, r6, #0x1f
	adds r0, r6, r0
	asrs r0, r0, #1
	lsls r1, r0, #6
	adds r1, #1
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	lsls r0, r0, #1
	subs r0, r6, r0
	lsls r0, r0, #4
	adds r0, r5, r0
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r1, _0805D2C4 @ =0x0808FC5C
	ldr r0, _0805D2C8 @ =0x030044B0
	adds r0, r6, r0
	ldrb r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bl sub_08001980
	adds r1, r0, #0
	lsls r0, r5, #5
	ldr r2, _0805D2CC @ =0x06004000
	adds r0, r0, r2
	movs r2, #1
	str r2, [sp]
	movs r2, #2
	movs r3, #0
	bl sub_08004D94
	lsls r0, r6, #7
	ldr r1, _0805D2D0 @ =0x0600E000
	adds r2, r0, r1
	adds r4, r6, #1
	movs r3, #0xb
_0805D252:
	adds r0, r5, #0
	mov r1, r8
	orrs r0, r1
	strh r0, [r2]
	adds r1, r2, #0
	adds r1, #0x40
	adds r0, r5, #0
	adds r0, #0x20
	orrs r0, r7
	strh r0, [r1]
	adds r2, #2
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	subs r3, #1
	cmp r3, #0
	bge _0805D252
	adds r6, r4, #0
	cmp r6, #0xf
	ble _0805D20A
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805D288: .4byte 0x08149F88
_0805D28C: .4byte 0x0814A464
_0805D290: .4byte 0x0814A0C0
_0805D294: .4byte 0x0600D800
_0805D298: .4byte 0x0814A010
_0805D29C: .4byte 0x0600F000
_0805D2A0: .4byte 0x0808FBFC
_0805D2A4: .4byte 0x0808FC3C
_0805D2A8: .4byte 0x05000200
_0805D2AC: .4byte 0x06010000
_0805D2B0: .4byte 0x030044A0
_0805D2B4: .4byte 0x030024E0
_0805D2B8: .4byte 0x0000FFE8
_0805D2BC: .4byte 0x0000FFF8
_0805D2C0: .4byte 0xFFFFE000
_0805D2C4: .4byte 0x0808FC5C
_0805D2C8: .4byte 0x030044B0
_0805D2CC: .4byte 0x06004000
_0805D2D0: .4byte 0x0600E000

	thumb_func_start sub_0805D2D4
sub_0805D2D4: @ 0x0805D2D4
	push {r4, r5, lr}
	ldr r0, _0805D2F0 @ =0x0808FBFC
	adds r5, r0, #4
	movs r4, #3
_0805D2DC:
	ldr r0, [r5]
	bl sub_08006CA0
	adds r5, #0x10
	subs r4, #1
	cmp r4, #0
	bge _0805D2DC
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805D2F0: .4byte 0x0808FBFC

	thumb_func_start sub_0805D2F4
sub_0805D2F4: @ 0x0805D2F4
	push {r4, r5, r6, lr}
	adds r6, r1, #0
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #8
	bne _0805D304
	movs r1, #0x18
	b _0805D314
_0805D304:
	adds r0, r5, #0
	subs r0, #0xb
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0x10
	cmp r0, #1
	bhi _0805D314
	movs r1, #0x20
_0805D314:
	movs r0, #1
	bl sub_080099E0
	adds r4, r0, #0
	ldr r0, _0805D364 @ =0x030044A0
	ldr r0, [r0]
	ldrh r1, [r0, #2]
	lsls r1, r1, #5
	ldr r0, _0805D368 @ =0x06010000
	adds r1, r1, r0
	adds r0, r4, #0
	bl sub_08009A78
	ldr r0, _0805D36C @ =0x0808FC3C
	ldrb r1, [r0, #1]
	adds r0, r4, #0
	bl sub_08009AB4
	ldr r0, _0805D370 @ =0x0808FBFC
	ldr r2, [r0, #0x18]
	adds r0, r4, #0
	movs r1, #0
	adds r3, r5, #0
	bl sub_08009ACC
	movs r0, #0
	ldrsh r1, [r6, r0]
	movs r0, #2
	ldrsh r2, [r6, r0]
	adds r0, r4, #0
	bl sub_08009A70
	adds r0, r4, #0
	movs r1, #1
	bl sub_08009A34
	adds r0, r4, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0805D364: .4byte 0x030044A0
_0805D368: .4byte 0x06010000
_0805D36C: .4byte 0x0808FC3C
_0805D370: .4byte 0x0808FBFC

	thumb_func_start sub_0805D374
sub_0805D374: @ 0x0805D374
	push {lr}
	lsls r3, r1, #0x18
	lsrs r3, r3, #0x18
	ldr r1, _0805D388 @ =0x0808FBFC
	ldr r2, [r1, #0x18]
	movs r1, #0
	bl sub_08009ACC
	pop {r0}
	bx r0
	.align 2, 0
_0805D388: .4byte 0x0808FBFC

	thumb_func_start sub_0805D38C
sub_0805D38C: @ 0x0805D38C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	ldr r1, _0805D4CC @ =0x0808FC66
	mov r0, sp
	movs r2, #3
	bl memcpy
	ldr r4, _0805D4D0 @ =0x0808FC40
	movs r0, #0
	adds r1, r4, #0
	bl sub_0805D2F4
	ldr r5, _0805D4D4 @ =0x030044A0
	ldr r1, [r5]
	str r0, [r1, #8]
	adds r1, r4, #4
	movs r0, #0xd
	bl sub_0805D2F4
	ldr r1, [r5]
	str r0, [r1, #0xc]
	adds r1, r4, #0
	adds r1, #8
	movs r0, #0xe
	bl sub_0805D2F4
	ldr r1, [r5]
	str r0, [r1, #0x10]
	adds r4, #0xc
	movs r0, #7
	adds r1, r4, #0
	bl sub_0805D2F4
	ldr r1, [r5]
	str r0, [r1, #0x14]
	movs r6, #0
	add r7, sp, #4
_0805D3DA:
	movs r0, #0xf
	cmp r6, #0
	bne _0805D3E2
	movs r0, #6
_0805D3E2:
	lsls r4, r6, #2
	ldr r1, _0805D4D8 @ =0x0808FC50
	adds r1, r4, r1
	bl sub_0805D2F4
	ldr r1, [r5]
	adds r1, #0x18
	adds r1, r1, r4
	str r0, [r1]
	bl sub_08009DDC
	ldr r1, [r5]
	adds r1, #0x24
	adds r1, r1, r4
	str r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r2, #0
	bl sub_08009E84
	ldr r0, [r5]
	adds r0, #0x24
	adds r0, r0, r4
	ldr r0, [r0]
	mov r2, sp
	adds r1, r2, r6
	ldrb r1, [r1]
	bl sub_08009E9C
	ldr r1, [r5]
	adds r0, r1, #0
	adds r0, #0x18
	adds r0, r0, r4
	ldr r0, [r0]
	adds r1, #0x24
	adds r1, r1, r4
	ldr r1, [r1]
	bl sub_08009B9C
	adds r6, #1
	cmp r6, #2
	ble _0805D3DA
	ldr r2, _0805D4DC @ =0xFFFF0000
	ldr r1, _0805D4E0 @ =0x00500078
	str r1, [sp, #4]
	ldrh r0, [r7]
	subs r0, #0xf0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ands r1, r2
	orrs r1, r0
	str r1, [sp, #4]
	add r4, sp, #4
	movs r0, #9
	adds r1, r4, #0
	bl sub_0805D2F4
	ldr r2, _0805D4D4 @ =0x030044A0
	ldr r1, [r2]
	str r0, [r1, #0x34]
	movs r6, #0
	mov r8, r4
	adds r5, r2, #0
_0805D460:
	adds r0, r6, #0
	movs r1, #3
	bl __modsi3
	adds r0, #1
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #2
	strh r1, [r7]
	movs r1, #0x70
	cmp r6, #2
	bgt _0805D47A
	movs r1, #0x30
_0805D47A:
	adds r0, r7, #0
	strh r1, [r0, #2]
	mov r1, r8
	ldrh r0, [r1]
	adds r0, #0xf0
	strh r0, [r1]
	ldr r0, _0805D4E4 @ =0x030044B0
	ldrb r1, [r0, #0x10]
	asrs r1, r6
	movs r0, #1
	ands r1, r0
	movs r0, #0xb
	cmp r1, #0
	beq _0805D498
	movs r0, #0xc
_0805D498:
	adds r1, r7, #0
	bl sub_0805D2F4
	ldr r1, [r5]
	lsls r4, r6, #2
	adds r1, #0x3c
	adds r1, r1, r4
	str r0, [r1]
	movs r0, #0xa
	adds r1, r7, #0
	bl sub_0805D2F4
	ldr r1, [r5]
	adds r1, #0x54
	adds r1, r1, r4
	str r0, [r1]
	adds r6, #1
	cmp r6, #5
	ble _0805D460
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805D4CC: .4byte 0x0808FC66
_0805D4D0: .4byte 0x0808FC40
_0805D4D4: .4byte 0x030044A0
_0805D4D8: .4byte 0x0808FC50
_0805D4DC: .4byte 0xFFFF0000
_0805D4E0: .4byte 0x00500078
_0805D4E4: .4byte 0x030044B0

	thumb_func_start sub_0805D4E8
sub_0805D4E8: @ 0x0805D4E8
	push {r4, r5, r6, lr}
	ldr r4, _0805D574 @ =0x030044A0
	ldr r0, [r4]
	ldr r0, [r0, #8]
	bl sub_08009A00
	ldr r0, [r4]
	ldr r0, [r0, #0xc]
	bl sub_08009A00
	ldr r0, [r4]
	ldr r0, [r0, #0x10]
	bl sub_08009A00
	ldr r0, [r4]
	ldr r0, [r0, #0x14]
	bl sub_08009A00
	movs r5, #0
	adds r6, r4, #0
_0805D510:
	ldr r0, [r6]
	lsls r4, r5, #2
	adds r0, #0x18
	adds r0, r0, r4
	ldr r0, [r0]
	movs r1, #0
	bl sub_08009B9C
	ldr r0, [r6]
	adds r0, #0x18
	adds r0, r0, r4
	ldr r0, [r0]
	bl sub_08009A00
	ldr r0, [r6]
	adds r0, #0x24
	adds r0, r0, r4
	ldr r0, [r0]
	bl sub_08009E54
	adds r5, #1
	cmp r5, #2
	ble _0805D510
	ldr r4, _0805D574 @ =0x030044A0
	ldr r0, [r4]
	ldr r0, [r0, #0x34]
	bl sub_08009A00
	movs r5, #0
	adds r6, r4, #0
_0805D54C:
	ldr r0, [r6]
	lsls r4, r5, #2
	adds r0, #0x3c
	adds r0, r0, r4
	ldr r0, [r0]
	bl sub_08009A00
	ldr r0, [r6]
	adds r0, #0x54
	adds r0, r0, r4
	ldr r0, [r0]
	bl sub_08009A00
	adds r5, #1
	cmp r5, #5
	ble _0805D54C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805D574: .4byte 0x030044A0

	thumb_func_start sub_0805D578
sub_0805D578: @ 0x0805D578
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	movs r1, #0
	str r1, [sp]
	lsls r0, r0, #0x18
	movs r1, #0x10
	cmp r0, #0
	bne _0805D592
	ldr r1, _0805D668 @ =0x0000FFF0
_0805D592:
	lsls r1, r1, #0x10
	mov sl, r1
	mov r2, sl
	asrs r2, r2, #0x10
	mov r8, r2
	ldr r4, _0805D66C @ =0x030024E0
	mov sb, r4
	mov r6, sb
_0805D5A2:
	ldr r0, _0805D670 @ =0x030044A0
	ldr r2, [r0]
	ldr r1, [r2, #8]
	ldrh r0, [r1, #6]
	add r0, r8
	strh r0, [r1, #6]
	ldr r1, [r2, #0xc]
	ldrh r0, [r1, #6]
	add r0, r8
	strh r0, [r1, #6]
	ldr r1, [r2, #0x10]
	ldrh r0, [r1, #6]
	add r0, r8
	strh r0, [r1, #6]
	ldr r1, [r2, #0x14]
	ldrh r0, [r1, #6]
	add r0, r8
	strh r0, [r1, #6]
	movs r4, #0
	mov r1, sl
	asrs r2, r1, #0x10
_0805D5CC:
	ldr r1, _0805D670 @ =0x030044A0
	ldr r0, [r1]
	lsls r1, r4, #2
	adds r0, #0x18
	adds r0, r0, r1
	ldr r1, [r0]
	ldrh r0, [r1, #6]
	adds r0, r2, r0
	strh r0, [r1, #6]
	adds r4, #1
	cmp r4, #2
	ble _0805D5CC
	ldr r2, _0805D670 @ =0x030044A0
	ldr r4, [r2]
	ldr r1, [r4, #0x34]
	ldrh r0, [r1, #6]
	add r0, r8
	movs r5, #0
	strh r0, [r1, #6]
	ldr r0, [r4, #0x34]
	ldrh r3, [r0, #6]
	adds r0, r3, #0
	adds r0, #0x78
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xf0
	bhi _0805D67C
	adds r2, r6, #0
	movs r1, #0x40
	subs r1, r1, r3
	strh r1, [r2, #0xe]
	ldr r0, _0805D674 @ =0x0000FFE8
	strh r0, [r2, #0x16]
	subs r1, #0x10
	strh r1, [r2, #0xc]
	adds r0, #0x10
	strh r0, [r2, #0x14]
	ldr r0, [r4, #0x34]
	ldrh r0, [r0, #6]
	adds r1, r0, #0
	subs r1, #0x30
	lsls r1, r1, #0x10
	adds r0, #0x30
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	lsrs r3, r1, #0x10
	cmp r1, #0
	bge _0805D62E
	movs r3, #0
_0805D62E:
	lsls r0, r2, #0x10
	cmp r0, #0
	bge _0805D636
	movs r2, #1
_0805D636:
	ldrh r0, [r6]
	movs r4, #0x80
	lsls r4, r4, #6
	adds r1, r4, #0
	orrs r0, r1
	strh r0, [r6]
	adds r1, r6, #0
	adds r1, #0x44
	movs r0, #0x3f
	strb r0, [r1]
	adds r1, #2
	movs r0, #0x1d
	strb r0, [r1]
	lsls r1, r3, #0x10
	asrs r1, r1, #8
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	orrs r0, r1
	strh r0, [r6, #0x3c]
	adds r1, r6, #0
	adds r1, #0x40
	ldr r0, _0805D678 @ =0x00002878
	strh r0, [r1]
	b _0805D694
	.align 2, 0
_0805D668: .4byte 0x0000FFF0
_0805D66C: .4byte 0x030024E0
_0805D670: .4byte 0x030044A0
_0805D674: .4byte 0x0000FFE8
_0805D678: .4byte 0x00002878
_0805D67C:
	mov r1, sb
	ldrh r0, [r1]
	ldr r2, _0805D6D4 @ =0x0000DFFF
	adds r1, r2, #0
	ands r0, r1
	mov r4, sb
	strh r0, [r4]
	mov r0, sb
	adds r0, #0x44
	strb r5, [r0]
	adds r0, #2
	strb r5, [r0]
_0805D694:
	movs r4, #0
	ldr r7, _0805D6D8 @ =0x030044A0
	mov r0, sl
	asrs r5, r0, #0x10
_0805D69C:
	ldr r2, [r7]
	lsls r3, r4, #2
	adds r0, r2, #0
	adds r0, #0x3c
	adds r0, r0, r3
	ldr r1, [r0]
	ldrh r0, [r1, #6]
	adds r0, r5, r0
	strh r0, [r1, #6]
	adds r2, #0x54
	adds r2, r2, r3
	ldr r1, [r2]
	ldrh r0, [r1, #6]
	adds r0, r5, r0
	strh r0, [r1, #6]
	adds r4, #1
	cmp r4, #5
	ble _0805D69C
	mov r2, sl
	asrs r1, r2, #0x10
	cmp r1, #0
	bge _0805D6DC
	ldr r4, [sp]
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	b _0805D6E4
	.align 2, 0
_0805D6D4: .4byte 0x0000DFFF
_0805D6D8: .4byte 0x030044A0
_0805D6DC:
	ldr r2, [sp]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
_0805D6E4:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r4, [sp]
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xef
	bgt _0805D6FC
	movs r0, #1
	bl sub_08002B98
	b _0805D5A2
_0805D6FC:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0805D70C
sub_0805D70C: @ 0x0805D70C
	push {r4, r5, lr}
	movs r4, #0
	ldr r5, _0805D730 @ =0x030044A0
_0805D712:
	ldr r0, [r5]
	lsls r1, r4, #2
	adds r0, #0x3c
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0xb
	bl sub_0805D374
	adds r4, #1
	cmp r4, #5
	ble _0805D712
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805D730: .4byte 0x030044A0

	thumb_func_start sub_0805D734
sub_0805D734: @ 0x0805D734
	push {r4, r5, lr}
	ldr r5, _0805D790 @ =0x030044A0
	ldr r0, [r5]
	ldr r0, [r0, #0x74]
	cmp r0, #0
	bne _0805D78A
	movs r0, #1
	movs r1, #8
	bl sub_080099E0
	adds r4, r0, #0
	ldr r0, [r5]
	ldrh r1, [r0]
	lsls r1, r1, #5
	ldr r0, _0805D794 @ =0x06010000
	adds r1, r1, r0
	adds r0, r4, #0
	bl sub_08009A78
	ldr r0, _0805D798 @ =0x0808FC3C
	ldrb r1, [r0]
	adds r0, r4, #0
	bl sub_08009AB4
	ldr r0, _0805D79C @ =0x0808FBFC
	ldr r2, [r0, #8]
	adds r0, r4, #0
	movs r1, #0
	movs r3, #0
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
	str r4, [r0, #0x74]
_0805D78A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805D790: .4byte 0x030044A0
_0805D794: .4byte 0x06010000
_0805D798: .4byte 0x0808FC3C
_0805D79C: .4byte 0x0808FBFC

	thumb_func_start sub_0805D7A0
sub_0805D7A0: @ 0x0805D7A0
	push {r4, lr}
	ldr r4, _0805D7BC @ =0x030044A0
	ldr r0, [r4]
	ldr r0, [r0, #0x74]
	cmp r0, #0
	beq _0805D7B6
	bl sub_08009A00
	ldr r1, [r4]
	movs r0, #0
	str r0, [r1, #0x74]
_0805D7B6:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805D7BC: .4byte 0x030044A0

	thumb_func_start sub_0805D7C0
sub_0805D7C0: @ 0x0805D7C0
	push {r4, lr}
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	ldr r0, _0805D7F0 @ =0x030044A0
	ldr r0, [r0]
	ldr r3, [r0, #0x74]
	cmp r3, #0
	beq _0805D7EA
	lsls r1, r1, #2
	adds r0, #0x54
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	subs r1, #0x18
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r4, #8
	ldrsh r2, [r0, r4]
	adds r0, r3, #0
	bl sub_08009A70
_0805D7EA:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805D7F0: .4byte 0x030044A0

	thumb_func_start sub_0805D7F4
sub_0805D7F4: @ 0x0805D7F4
	push {r4, lr}
	adds r1, r0, #0
	ldr r4, _0805D814 @ =0x030044A0
	ldr r0, [r4]
	ldr r0, [r0, #0x6c]
	cmp r0, #0
	bne _0805D80C
	movs r0, #8
	bl sub_0805D2F4
	ldr r1, [r4]
	str r0, [r1, #0x6c]
_0805D80C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805D814: .4byte 0x030044A0

	thumb_func_start sub_0805D818
sub_0805D818: @ 0x0805D818
	push {r4, lr}
	ldr r4, _0805D834 @ =0x030044A0
	ldr r0, [r4]
	ldr r0, [r0, #0x6c]
	cmp r0, #0
	beq _0805D82E
	bl sub_08009A00
	ldr r1, [r4]
	movs r0, #0
	str r0, [r1, #0x6c]
_0805D82E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805D834: .4byte 0x030044A0

	thumb_func_start sub_0805D838
sub_0805D838: @ 0x0805D838
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	lsls r4, r4, #0x18
	ldr r5, _0805D8B4 @ =0x030044A0
	ldr r0, [r5]
	lsrs r4, r4, #0x16
	adds r0, #0x3c
	adds r0, r0, r4
	ldr r0, [r0]
	movs r1, #0xc
	bl sub_0805D374
	ldr r1, [r5]
	adds r1, #0x54
	adds r1, r1, r4
	ldr r0, [r1]
	ldrh r3, [r0, #6]
	ldr r2, _0805D8B8 @ =0xFFFF0000
	ldr r0, [sp]
	ands r0, r2
	orrs r0, r3
	str r0, [sp]
	ldr r1, [r1]
	ldrh r1, [r1, #8]
	adds r1, #8
	lsls r1, r1, #0x10
	ldr r2, _0805D8BC @ =0x0000FFFF
	ands r0, r2
	orrs r0, r1
	str r0, [sp]
	movs r5, #0
	mov r0, sp
	bl sub_0805D7F4
	mov r4, sp
_0805D880:
	ldrh r0, [r4, #2]
	subs r0, #4
	strh r0, [r4, #2]
	lsls r0, r5, #0x10
	movs r1, #0x80
	lsls r1, r1, #0xb
	adds r0, r0, r1
	lsrs r5, r0, #0x10
	ldr r0, _0805D8B4 @ =0x030044A0
	ldr r0, [r0]
	ldr r0, [r0, #0x6c]
	movs r2, #0
	ldrsh r1, [r4, r2]
	movs r3, #2
	ldrsh r2, [r4, r3]
	bl sub_08009A70
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x1f
	bgt _0805D8C0
	movs r0, #1
	bl sub_08002B98
	b _0805D880
	.align 2, 0
_0805D8B4: .4byte 0x030044A0
_0805D8B8: .4byte 0xFFFF0000
_0805D8BC: .4byte 0x0000FFFF
_0805D8C0:
	movs r0, #0x3c
	bl sub_08002B98
	bl sub_0805D818
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0805D8D4
sub_0805D8D4: @ 0x0805D8D4
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r5, _0805D934 @ =0x030044A0
	ldr r0, [r5]
	ldr r0, [r0, #0x70]
	cmp r0, #0
	bne _0805D92E
	movs r0, #1
	movs r1, #0x18
	bl sub_080099E0
	adds r4, r0, #0
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	lsls r1, r1, #5
	ldr r0, _0805D938 @ =0x06010000
	adds r1, r1, r0
	adds r0, r4, #0
	bl sub_08009A78
	ldr r0, _0805D93C @ =0x0808FC3C
	ldrb r1, [r0, #3]
	adds r0, r4, #0
	bl sub_08009AB4
	ldr r0, _0805D940 @ =0x0808FBFC
	ldr r1, [r0, #0x3c]
	ldr r2, [r0, #0x38]
	adds r0, r4, #0
	movs r3, #0
	bl sub_08009ACC
	movs r0, #0
	ldrsh r1, [r6, r0]
	movs r0, #2
	ldrsh r2, [r6, r0]
	adds r0, r4, #0
	bl sub_08009A70
	adds r0, r4, #0
	movs r1, #1
	bl sub_08009A34
	ldr r0, [r5]
	str r4, [r0, #0x70]
_0805D92E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805D934: .4byte 0x030044A0
_0805D938: .4byte 0x06010000
_0805D93C: .4byte 0x0808FC3C
_0805D940: .4byte 0x0808FBFC

	thumb_func_start sub_0805D944
sub_0805D944: @ 0x0805D944
	push {r4, lr}
	ldr r4, _0805D960 @ =0x030044A0
	ldr r0, [r4]
	ldr r0, [r0, #0x70]
	cmp r0, #0
	beq _0805D95A
	bl sub_08009A00
	ldr r1, [r4]
	movs r0, #0
	str r0, [r1, #0x70]
_0805D95A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805D960: .4byte 0x030044A0

	thumb_func_start sub_0805D964
sub_0805D964: @ 0x0805D964
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	lsls r4, r4, #0x18
	ldr r5, _0805D9DC @ =0x030044A0
	ldr r0, [r5]
	lsrs r4, r4, #0x16
	adds r0, #0x3c
	adds r0, r0, r4
	ldr r0, [r0]
	movs r1, #0xc
	bl sub_0805D374
	ldr r1, [r5]
	adds r1, #0x54
	adds r1, r1, r4
	ldr r0, [r1]
	ldrh r3, [r0, #6]
	ldr r2, _0805D9E0 @ =0xFFFF0000
	ldr r0, [sp]
	ands r0, r2
	orrs r0, r3
	str r0, [sp]
	ldr r1, [r1]
	ldrh r1, [r1, #8]
	adds r1, #8
	lsls r1, r1, #0x10
	ldr r2, _0805D9E4 @ =0x0000FFFF
	ands r0, r2
	orrs r0, r1
	str r0, [sp]
	movs r6, #0
	mov r0, sp
	bl sub_0805D8D4
	mov r4, sp
_0805D9AC:
	ldrh r0, [r4, #2]
	subs r0, #4
	strh r0, [r4, #2]
	lsls r0, r6, #0x10
	movs r1, #0x80
	lsls r1, r1, #0xb
	adds r0, r0, r1
	lsrs r6, r0, #0x10
	ldr r0, [r5]
	ldr r0, [r0, #0x70]
	movs r2, #0
	ldrsh r1, [r4, r2]
	movs r3, #2
	ldrsh r2, [r4, r3]
	bl sub_08009A70
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x17
	bgt _0805D9E8
	movs r0, #1
	bl sub_08002B98
	b _0805D9AC
	.align 2, 0
_0805D9DC: .4byte 0x030044A0
_0805D9E0: .4byte 0xFFFF0000
_0805D9E4: .4byte 0x0000FFFF
_0805D9E8:
	bl sub_0805D7A0
	ldr r1, [r5]
	ldr r0, _0805DA44 @ =0x08149FFC
	str r0, [r1, #0x78]
	movs r1, #0
	bl sub_08009554
	movs r0, #0x3c
	bl sub_08002B98
	ldr r2, _0805DA48 @ =0x030024B0
	ldrh r1, [r2]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0805DA1E
	adds r4, r2, #0
	movs r5, #2
_0805DA0E:
	movs r0, #1
	bl sub_08002B98
	ldrh r1, [r4]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _0805DA0E
_0805DA1E:
	ldr r4, _0805DA4C @ =0x030044A0
	ldr r0, [r4]
	ldr r0, [r0, #0x78]
	bl sub_080095E0
	ldr r1, [r4]
	movs r0, #0
	str r0, [r1, #0x78]
	ldr r0, _0805DA50 @ =0x08149F88
	movs r1, #0xa0
	lsls r1, r1, #0x13
	bl sub_08008308
	bl sub_0805D944
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805DA44: .4byte 0x08149FFC
_0805DA48: .4byte 0x030024B0
_0805DA4C: .4byte 0x030044A0
_0805DA50: .4byte 0x08149F88

	thumb_func_start sub_0805DA54
sub_0805DA54: @ 0x0805DA54
	push {lr}
	ldr r0, _0805DA70 @ =0x030044A0
	ldr r1, [r0]
	ldr r0, [r1, #0x30]
	cmp r0, #0
	bne _0805DA6A
	ldr r0, _0805DA74 @ =0x0814A874
	str r0, [r1, #0x30]
	ldr r1, _0805DA78 @ =0x00000117
	bl sub_08009554
_0805DA6A:
	pop {r0}
	bx r0
	.align 2, 0
_0805DA70: .4byte 0x030044A0
_0805DA74: .4byte 0x0814A874
_0805DA78: .4byte 0x00000117

	thumb_func_start sub_0805DA7C
sub_0805DA7C: @ 0x0805DA7C
	push {r4, lr}
	ldr r4, _0805DA98 @ =0x030044A0
	ldr r0, [r4]
	ldr r0, [r0, #0x30]
	cmp r0, #0
	beq _0805DA92
	bl sub_080095E0
	ldr r1, [r4]
	movs r0, #0
	str r0, [r1, #0x30]
_0805DA92:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805DA98: .4byte 0x030044A0

	thumb_func_start sub_0805DA9C
sub_0805DA9C: @ 0x0805DA9C
	push {r4, r5, r6, r7, lr}
	ldr r2, _0805DB00 @ =0x030024E0
	ldrh r1, [r2, #0x14]
	movs r0, #0xf0
	ands r0, r1
	lsls r0, r0, #0x14
	movs r1, #0x80
	lsls r1, r1, #0x14
	adds r0, r0, r1
	lsrs r3, r0, #0x18
	movs r4, #0
	adds r6, r2, #0
	movs r0, #0xf
	mov ip, r0
	movs r5, #0
	ldr r7, _0805DB04 @ =0x0600E000
_0805DABC:
	adds r0, r3, #0
	mov r1, ip
	ands r0, r1
	lsls r0, r0, #7
	adds r1, r0, r7
	adds r4, #1
	adds r2, r3, #1
	movs r3, #0xf
_0805DACC:
	strh r5, [r1]
	adds r0, r1, #0
	adds r0, #0x40
	strh r5, [r0]
	adds r1, #2
	subs r3, #1
	cmp r3, #0
	bge _0805DACC
	lsls r0, r2, #0x18
	lsrs r3, r0, #0x18
	cmp r4, #0xa
	ble _0805DABC
	ldrh r1, [r6]
	ldr r0, _0805DB08 @ =0x0000DFFF
	ands r0, r1
	movs r1, #0
	strh r0, [r6]
	adds r0, r6, #0
	adds r0, #0x44
	strb r1, [r0]
	adds r0, #2
	strb r1, [r0]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805DB00: .4byte 0x030024E0
_0805DB04: .4byte 0x0600E000
_0805DB08: .4byte 0x0000DFFF

	thumb_func_start sub_0805DB0C
sub_0805DB0C: @ 0x0805DB0C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	movs r0, #0
	mov sb, r0
	movs r1, #0
	str r1, [sp]
	movs r2, #0
	str r2, [sp, #4]
	str r0, [sp, #8]
	bl sub_0805D01C
	ldr r0, _0805DBDC @ =0x03004400
	ldrb r0, [r0, #0xa]
	cmp r0, #0x12
	bne _0805DBA2
	ldr r0, _0805DBE0 @ =0x0814B380
	movs r1, #0xa0
	lsls r1, r1, #0x13
	bl sub_08008308
	ldr r0, _0805DBE4 @ =0x0814B85C
	movs r1, #0xc0
	lsls r1, r1, #0x13
	bl sub_08008374
	ldr r0, _0805DBE8 @ =0x0814B3E4
	ldr r1, _0805DBEC @ =0x0600D800
	movs r2, #0
	movs r3, #0
	bl sub_080083CC
	movs r0, #0xc
	bl sub_080077B4
	movs r0, #0x20
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl sub_08008AF4
	ldr r0, _0805DBF0 @ =0x030024E0
	adds r0, #0x4f
	movs r1, #1
	strb r1, [r0]
	bl sub_08008D34
	bl sub_08005934
	ldr r0, _0805DBF4 @ =0x00470037
	bl sub_080062D0
	ldr r0, _0805DBF8 @ =0x00470038
	bl sub_080062D0
	ldr r0, _0805DBFC @ =0x00470039
	bl sub_080062D0
	bl sub_08005A2C
	movs r0, #0
	movs r1, #0x20
	bl sub_080077EC
	movs r0, #0x20
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl sub_080089E8
	bl sub_08008D34
_0805DBA2:
	bl sub_0805D168
	bl sub_0805D38C
	movs r0, #0x20
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl sub_08008AF4
	ldr r0, _0805DBF0 @ =0x030024E0
	adds r0, #0x4f
	movs r1, #1
	strb r1, [r0]
	bl sub_08008D34
	movs r5, #0
	ldr r1, _0805DC00 @ =0x030044A0
	mov sl, r1
_0805DBC8:
	asrs r2, r5, #0x18
	cmp r2, #1
	bne _0805DBD0
	b _0805DD70
_0805DBD0:
	cmp r2, #1
	bgt _0805DC04
	cmp r2, #0
	beq _0805DC0C
	b _0805DF96
	.align 2, 0
_0805DBDC: .4byte 0x03004400
_0805DBE0: .4byte 0x0814B380
_0805DBE4: .4byte 0x0814B85C
_0805DBE8: .4byte 0x0814B3E4
_0805DBEC: .4byte 0x0600D800
_0805DBF0: .4byte 0x030024E0
_0805DBF4: .4byte 0x00470037
_0805DBF8: .4byte 0x00470038
_0805DBFC: .4byte 0x00470039
_0805DC00: .4byte 0x030044A0
_0805DC04:
	cmp r2, #2
	bne _0805DC0A
	b _0805DE64
_0805DC0A:
	b _0805DF96
_0805DC0C:
	bl sub_0805DA54
	ldr r0, _0805DC20 @ =0x030024B0
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0805DC24
	movs r0, #0x12
	b _0805DE3C
	.align 2, 0
_0805DC20: .4byte 0x030024B0
_0805DC24:
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0805DC32
	movs r0, #0
	str r0, [sp]
	b _0805DC4C
_0805DC32:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0805DC40
	movs r1, #1
	str r1, [sp]
	b _0805DC4C
_0805DC40:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0805DC4C
	movs r2, #2
	str r2, [sp]
_0805DC4C:
	ldr r1, [sp, #4]
	lsls r0, r1, #0x18
	asrs r6, r0, #0x18
	ldr r2, [sp]
	lsls r0, r2, #0x18
	asrs r5, r0, #0x18
	adds r4, r0, #0
	cmp r6, r5
	beq _0805DC8C
	movs r0, #0xca
	bl sub_080077B4
	mov r1, sl
	ldr r0, [r1]
	lsls r1, r5, #2
	adds r0, #0x18
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #6
	bl sub_0805D374
	mov r2, sl
	ldr r0, [r2]
	lsls r1, r6, #2
	adds r0, #0x18
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0xf
	bl sub_0805D374
	lsrs r0, r4, #0x18
	str r0, [sp, #4]
_0805DC8C:
	ldr r0, _0805DCA8 @ =0x030024B0
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0805DC9A
	b _0805DF96
_0805DC9A:
	cmp r5, #1
	beq _0805DD18
	cmp r5, #1
	bgt _0805DCAC
	cmp r5, #0
	beq _0805DCB2
	b _0805DF96
	.align 2, 0
_0805DCA8: .4byte 0x030024B0
_0805DCAC:
	cmp r5, #2
	beq _0805DD3C
	b _0805DF96
_0805DCB2:
	mov r1, sl
	ldr r0, [r1]
	ldr r0, [r0, #0x18]
	movs r1, #0xf
	bl sub_0805D374
	ldr r0, _0805DD0C @ =0x00000402
	bl sub_080077B4
_0805DCC4:
	movs r0, #1
	bl sub_08002B98
	movs r0, #6
	bl sub_0800B828
	adds r1, r0, #0
	mov r2, sl
	ldr r0, [r2]
	ldr r0, [r0, #8]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl sub_0805D374
	ldr r0, _0805DD10 @ =0x030024B0
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0805DCC4
	movs r0, #4
	bl sub_080077D4
	ldr r0, _0805DD14 @ =0x00000403
	bl sub_080077B4
	mov r1, sl
	ldr r0, [r1]
	lsrs r1, r4, #0x16
	adds r0, #0x18
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #6
	bl sub_0805D374
	b _0805DF96
	.align 2, 0
_0805DD0C: .4byte 0x00000402
_0805DD10: .4byte 0x030024B0
_0805DD14: .4byte 0x00000403
_0805DD18:
	movs r0, #0xcc
	bl sub_080077B4
	movs r0, #1
	bl sub_0805D578
	bl sub_0805DA7C
	ldr r0, _0805DD38 @ =0x00000404
	bl sub_080077B4
	movs r2, #1
	mov sb, r2
	movs r0, #0
	str r0, [sp, #8]
	b _0805DF96
	.align 2, 0
_0805DD38: .4byte 0x00000404
_0805DD3C:
	movs r0, #0xcc
	bl sub_080077B4
	movs r0, #0
	bl sub_0805D578
	bl sub_0805DA7C
	movs r1, #2
	mov sb, r1
	movs r2, #0
	str r2, [sp, #8]
	ldr r0, _0805DD68 @ =0xFFFFFF00
	ands r7, r0
	ldr r0, _0805DD6C @ =0xFFFF00FF
	ands r7, r0
	bl sub_0805D734
	movs r0, #0
	bl sub_0805D7C0
	b _0805DF96
	.align 2, 0
_0805DD68: .4byte 0xFFFFFF00
_0805DD6C: .4byte 0xFFFF00FF
_0805DD70:
	ldr r5, _0805DD94 @ =0x030024E0
	ldrh r0, [r5, #0x14]
	subs r0, #8
	strh r0, [r5, #0x14]
	ldr r0, _0805DD98 @ =0x030024B0
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0805DD9C
	movs r0, #4
	bl sub_080077D4
	bl sub_0805DA54
	movs r0, #0
	b _0805DE7A
	.align 2, 0
_0805DD94: .4byte 0x030024E0
_0805DD98: .4byte 0x030024B0
_0805DD9C:
	adds r0, r2, #0
	ands r0, r1
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0805DDA8
	b _0805DF96
_0805DDA8:
	movs r0, #5
	bl sub_08007814
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0805DDB6
	b _0805DF96
_0805DDB6:
	b _0805DDBE
_0805DDB8:
	adds r0, r1, #0
	subs r0, #8
	strh r0, [r5, #0x14]
_0805DDBE:
	movs r0, #1
	bl sub_08002B98
	ldrh r1, [r5, #0x14]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #8
	bne _0805DDB8
	movs r0, #4
	bl sub_080077D4
	movs r0, #0xfe
	lsls r0, r0, #2
	bl sub_080077B4
	mov r2, sl
	ldr r1, [r2]
	ldr r0, _0805DE48 @ =0x0814A8E0
	str r0, [r1, #0x38]
	movs r1, #0x8c
	lsls r1, r1, #1
	bl sub_08009554
	movs r0, #0x3c
	bl sub_08002B98
	ldr r0, _0805DE4C @ =0x0808FBFC
	ldr r0, [r0, #0x10]
	ldr r1, _0805DE50 @ =0x0808FC3C
	ldrb r1, [r1, #1]
	lsls r1, r1, #5
	ldr r2, _0805DE54 @ =0x05000200
	adds r1, r1, r2
	bl sub_08008308
	mov r1, sl
	ldr r0, [r1]
	ldr r0, [r0, #0x38]
	bl sub_080095E0
	bl sub_0805DA9C
	ldr r0, _0805DE58 @ =0x030024E0
	ldrh r0, [r0, #0x14]
	adds r0, #8
	movs r1, #0xf0
	ands r0, r1
	asrs r0, r0, #4
	adds r0, #4
	movs r1, #0xf
	ands r0, r1
	ldr r2, _0805DE5C @ =0x0808FC5C
	ldr r1, _0805DE60 @ =0x030044B0
	adds r0, r0, r1
	ldrb r0, [r0]
	adds r0, r0, r2
	ldrb r0, [r0]
	bl sub_08001B64
	movs r0, #0x25
	bl sub_08001930
	movs r0, #0x11
_0805DE3C:
	bl sub_08008790
	movs r2, #0xff
	mov sb, r2
	b _0805DF96
	.align 2, 0
_0805DE48: .4byte 0x0814A8E0
_0805DE4C: .4byte 0x0808FBFC
_0805DE50: .4byte 0x0808FC3C
_0805DE54: .4byte 0x05000200
_0805DE58: .4byte 0x030024E0
_0805DE5C: .4byte 0x0808FC5C
_0805DE60: .4byte 0x030044B0
_0805DE64:
	ldr r0, _0805DE84 @ =0x030024B0
	ldrh r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _0805DE88
	bl sub_0805D7A0
	bl sub_0805DA54
	movs r0, #1
_0805DE7A:
	bl sub_0805D578
	movs r0, #0
	mov sb, r0
	b _0805DF96
	.align 2, 0
_0805DE84: .4byte 0x030024B0
_0805DE88:
	movs r0, #1
	mov r8, r0
	ands r0, r1
	cmp r0, #0
	beq _0805DF08
	lsls r0, r7, #0x10
	asrs r0, r0, #0x18
	lsls r1, r0, #1
	adds r1, r1, r0
	adds r1, r1, r7
	ldr r6, _0805DEB8 @ =0x030044B0
	ldrb r0, [r6, #0x10]
	lsls r5, r1, #0x18
	asrs r4, r5, #0x18
	asrs r0, r4
	mov r1, r8
	ands r0, r1
	cmp r0, #0
	beq _0805DEBC
	movs r0, #0xd2
	bl sub_080077B4
	b _0805DF96
	.align 2, 0
_0805DEB8: .4byte 0x030044B0
_0805DEBC:
	ldrb r0, [r6, #0x11]
	cmp r0, r4
	bne _0805DEEC
	ldr r0, _0805DEE8 @ =0x00000406
	bl sub_080077B4
	lsrs r0, r5, #0x18
	bl sub_0805D964
	bl sub_0805D000
	bl sub_0805DA54
	movs r0, #1
	bl sub_0805D578
	bl sub_0805D70C
	movs r2, #0
	mov sb, r2
	b _0805DF96
	.align 2, 0
_0805DEE8: .4byte 0x00000406
_0805DEEC:
	ldr r0, _0805DF04 @ =0x00000407
	bl sub_080077B4
	lsrs r0, r5, #0x18
	bl sub_0805D838
	mov r0, r8
	lsls r0, r4
	ldrb r1, [r6, #0x10]
	orrs r0, r1
	strb r0, [r6, #0x10]
	b _0805DF96
	.align 2, 0
_0805DF04: .4byte 0x00000407
_0805DF08:
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0805DF1C
	ldr r0, _0805DF18 @ =0xFFFF00FF
	ands r7, r0
	b _0805DF72
	.align 2, 0
_0805DF18: .4byte 0xFFFF00FF
_0805DF1C:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0805DF34
	ldr r0, _0805DF30 @ =0xFFFF00FF
	ands r7, r0
	movs r0, #0x80
	lsls r0, r0, #1
	orrs r7, r0
	b _0805DF72
	.align 2, 0
_0805DF30: .4byte 0xFFFF00FF
_0805DF34:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0805DF54
	subs r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	ldr r2, _0805DF50 @ =0xFFFFFF00
	ands r7, r2
	orrs r7, r1
	cmp r0, #0
	bge _0805DF72
	ands r7, r2
	b _0805DF72
	.align 2, 0
_0805DF50: .4byte 0xFFFFFF00
_0805DF54:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0805DF72
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	ldr r3, _0805DFB0 @ =0xFFFFFF00
	ands r7, r3
	orrs r7, r1
	asrs r0, r0, #0x18
	cmp r0, #2
	ble _0805DF72
	ands r7, r3
	orrs r7, r2
_0805DF72:
	lsls r0, r7, #0x10
	asrs r0, r0, #0x18
	lsls r1, r0, #1
	adds r1, r1, r0
	adds r1, r1, r7
	ldr r2, [sp, #8]
	lsls r0, r2, #0x18
	lsls r4, r1, #0x18
	cmp r0, r4
	beq _0805DF96
	movs r0, #0xca
	bl sub_080077B4
	lsrs r4, r4, #0x18
	adds r0, r4, #0
	bl sub_0805D7C0
	str r4, [sp, #8]
_0805DF96:
	mov r1, sb
	lsls r0, r1, #0x18
	asrs r2, r0, #0x18
	movs r1, #1
	rsbs r1, r1, #0
	adds r5, r0, #0
	cmp r2, r1
	beq _0805DFB4
	movs r0, #1
	bl sub_08002B98
	b _0805DBC8
	.align 2, 0
_0805DFB0: .4byte 0xFFFFFF00
_0805DFB4:
	ldr r1, _0805DFFC @ =0x030024E0
	ldrh r2, [r1]
	ldr r0, _0805E000 @ =0x0000DFFF
	ands r0, r2
	movs r2, #0
	strh r0, [r1]
	adds r0, r1, #0
	adds r0, #0x44
	strb r2, [r0]
	adds r1, #0x46
	strb r2, [r1]
	movs r0, #0x20
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl sub_080089E8
	bl sub_08008D34
	bl sub_0805D4E8
	bl sub_0805D2D4
	bl sub_0805D144
	bl sub_08002B0C
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805DFFC: .4byte 0x030024E0
_0805E000: .4byte 0x0000DFFF

	thumb_func_start sub_0805E004
sub_0805E004: @ 0x0805E004
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	movs r0, #1
	bl sub_08002B98
	movs r0, #0
	mov r8, r0
	movs r7, #0
	cmp r7, sl
	bge _0805E0A2
_0805E024:
	cmp r7, #0x20
	bne _0805E02C
	movs r1, #0x20
	add r8, r1
_0805E02C:
	ldr r2, _0805E07C @ =0x0808FC6C
	mov sb, r2
	lsls r6, r7, #3
	adds r0, r6, r2
	ldrb r4, [r0]
	adds r0, r4, #0
	bl sub_08001980
	mov r2, r8
	lsls r1, r2, #0x18
	lsrs r5, r1, #0x18
	movs r2, #0
	lsrs r1, r2, #0x18
	adds r2, r5, #0
	bl sub_080054A8
	movs r0, #0xde
	movs r2, #0xd0
	lsls r2, r2, #0x14
	lsrs r1, r2, #0x18
	adds r2, r5, #0
	bl sub_080053D0
	adds r0, r4, #0
	bl sub_08001A00
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805E080
	mov r0, sb
	adds r0, #4
	adds r0, r6, r0
	ldr r0, [r0]
	movs r2, #0xe0
	lsls r2, r2, #0x14
	lsrs r1, r2, #0x18
	adds r2, r5, #0
	bl sub_0800561C
	b _0805E098
	.align 2, 0
_0805E07C: .4byte 0x0808FC6C
_0805E080:
	ldr r0, _0805E0B0 @ =0x0808FCF8
	movs r1, #0xe
	adds r2, r5, #0
	bl sub_08005408
	ldr r0, _0805E0B4 @ =0x003D001C
	bl sub_08006828
	movs r1, #0xe
	adds r2, r5, #0
	bl sub_080054A8
_0805E098:
	movs r0, #1
	add r8, r0
	adds r7, #1
	cmp r7, sl
	blt _0805E024
_0805E0A2:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805E0B0: .4byte 0x0808FCF8
_0805E0B4: .4byte 0x003D001C

	thumb_func_start sub_0805E0B8
sub_0805E0B8: @ 0x0805E0B8
	push {r4, r5, r6, lr}
	sub sp, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r6, _0805E0CC @ =0x0600D000
	cmp r0, #4
	bhi _0805E0D4
	ldr r6, _0805E0D0 @ =0x0600D200
	b _0805E0D8
	.align 2, 0
_0805E0CC: .4byte 0x0600D000
_0805E0D0: .4byte 0x0600D200
_0805E0D4:
	cmp r0, #5
	bls _0805E0EC
_0805E0D8:
	mov r0, sp
	movs r1, #0
	strh r1, [r0]
	ldr r2, _0805E0E8 @ =0x01000040
	adds r1, r6, #0
	bl CpuSet
	b _0805E110
	.align 2, 0
_0805E0E8: .4byte 0x01000040
_0805E0EC:
	mov r0, sp
	movs r4, #0
	strh r4, [r0]
	ldr r5, _0805E118 @ =0x01000020
	adds r1, r6, #0
	adds r2, r5, #0
	bl CpuSet
	movs r0, #0x90
	lsls r0, r0, #2
	adds r6, r6, r0
	mov r0, sp
	adds r0, #2
	strh r4, [r0]
	adds r1, r6, #0
	adds r2, r5, #0
	bl CpuSet
_0805E110:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805E118: .4byte 0x01000020

	thumb_func_start sub_0805E11C
sub_0805E11C: @ 0x0805E11C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	movs r7, #0
	movs r0, #0
	mov r8, r0
	mov sb, r0
	bl sub_08060708
	movs r0, #0xc
	movs r1, #0x1a
	movs r2, #2
	movs r3, #0
	bl sub_08005350
	movs r0, #8
	bl sub_080607FC
	bl sub_08060FC4
	movs r0, #8
	bl sub_0805E004
	bl sub_080614E8
	ldr r0, _0805E1EC @ =0x03004400
	ldr r0, [r0, #0x10]
	bl sub_08061560
	movs r0, #0x50
	movs r1, #0
	bl sub_080615F0
	ldr r4, _0805E1F0 @ =0x030024E0
	ldr r0, _0805E1F4 @ =0x0000FFD8
	strh r0, [r4, #0xc]
	adds r0, #8
	strh r0, [r4, #0x14]
	movs r0, #6
	bl sub_080077C4
	movs r0, #0x20
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl sub_08008AF4
	adds r1, r4, #0
	adds r1, #0x4f
	movs r0, #1
	strb r0, [r1]
	bl sub_08008D34
	ldrh r0, [r4]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4]
	adds r1, r4, #0
	adds r1, #0x44
	movs r0, #0x3f
	strb r0, [r1]
	adds r1, #2
	movs r0, #0x1d
	strb r0, [r1]
	ldr r0, _0805E1F8 @ =0x000018D8
	strh r0, [r4, #0x3c]
	subs r1, #6
	ldr r0, _0805E1FC @ =0x00002060
	strh r0, [r1]
	movs r0, #0xa
	bl sub_0805E004
	movs r0, #1
	bl sub_08005A88
	movs r0, #0x33
	bl sub_080059E4
	movs r0, #0xf4
	lsls r0, r0, #0xe
	bl sub_080062D0
	ldr r0, _0805E200 @ =0x003D0001
	bl sub_080062D0
	ldr r0, _0805E204 @ =0x003D0006
	bl sub_080062D0
	ldr r0, _0805E208 @ =0x003D0007
	bl sub_080062D0
	movs r2, #0x10
	rsbs r2, r2, #0
	movs r0, #1
	adds r1, r2, #0
	bl sub_0806104C
	movs r0, #0
	bl sub_080613CC
	b _0805E396
	.align 2, 0
_0805E1EC: .4byte 0x03004400
_0805E1F0: .4byte 0x030024E0
_0805E1F4: .4byte 0x0000FFD8
_0805E1F8: .4byte 0x000018D8
_0805E1FC: .4byte 0x00002060
_0805E200: .4byte 0x003D0001
_0805E204: .4byte 0x003D0006
_0805E208: .4byte 0x003D0007
_0805E20C:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0805E2BE
	ldr r2, _0805E24C @ =0x0808FC6C
	lsls r1, r7, #0x18
	asrs r1, r1, #0x15
	adds r0, r1, r2
	ldrb r5, [r0]
	adds r2, #4
	adds r1, r1, r2
	ldr r4, [r1]
	adds r0, r5, #0
	bl sub_08001A00
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805E2AC
	ldr r6, _0805E250 @ =0x03004400
	ldr r0, [r6, #0x10]
	cmp r0, r4
	bhs _0805E25C
	movs r0, #0xd2
	bl m4aSongNumStart
	ldr r0, _0805E254 @ =0x003D000A
	bl sub_080062D0
	ldr r0, _0805E258 @ =0x003D000B
	bl sub_080062D0
	b _0805E2B8
	.align 2, 0
_0805E24C: .4byte 0x0808FC6C
_0805E250: .4byte 0x03004400
_0805E254: .4byte 0x003D000A
_0805E258: .4byte 0x003D000B
_0805E25C:
	movs r0, #0xcc
	bl m4aSongNumStart
	movs r0, #4
	adds r1, r5, #0
	bl sub_08005BE0
	movs r0, #3
	adds r1, r4, #0
	bl sub_08005BE0
	ldr r0, _0805E2A4 @ =0x003D0008
	bl sub_080062D0
	ldr r0, _0805E2A8 @ =0x003D0009
	bl sub_0800648C
	bl sub_080064F8
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805E2B8
	adds r0, r5, #0
	bl sub_08001A24
	ldr r0, [r6, #0x10]
	subs r0, r0, r4
	str r0, [r6, #0x10]
	bl sub_08061560
	movs r0, #0xa
	bl sub_0805E004
	movs r0, #1
	mov sb, r0
	b _0805E2B8
	.align 2, 0
_0805E2A4: .4byte 0x003D0008
_0805E2A8: .4byte 0x003D0009
_0805E2AC:
	movs r0, #0xd2
	bl m4aSongNumStart
	ldr r0, _0805E2D4 @ =0x003D001B
	bl sub_080062D0
_0805E2B8:
	ldr r0, _0805E2D8 @ =0x003D0007
	bl sub_080062D0
_0805E2BE:
	ldr r0, _0805E2DC @ =0x030024B0
	ldrh r1, [r0, #4]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0805E2E0
	lsls r0, r7, #0x18
	movs r1, #0xff
	lsls r1, r1, #0x18
	b _0805E2FE
	.align 2, 0
_0805E2D4: .4byte 0x003D001B
_0805E2D8: .4byte 0x003D0007
_0805E2DC: .4byte 0x030024B0
_0805E2E0:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0805E2F0
	lsls r0, r7, #0x18
	movs r2, #0x80
	lsls r2, r2, #0x11
	b _0805E318
_0805E2F0:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0805E30A
	lsls r0, r7, #0x18
	movs r1, #0xf8
	lsls r1, r1, #0x18
_0805E2FE:
	adds r0, r0, r1
	lsrs r7, r0, #0x18
	cmp r0, #0
	bge _0805E324
	movs r7, #0
	b _0805E324
_0805E30A:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0805E324
	lsls r0, r7, #0x18
	movs r2, #0x80
	lsls r2, r2, #0x14
_0805E318:
	adds r0, r0, r2
	lsrs r7, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #9
	ble _0805E324
	movs r7, #9
_0805E324:
	ldr r5, _0805E348 @ =0x030024E0
	ldr r0, _0805E34C @ =0x0000FFD8
	strh r0, [r5, #0xc]
	adds r0, #8
	strh r0, [r5, #0x14]
	lsls r0, r7, #0x18
	asrs r4, r0, #0x18
	cmp r4, #4
	bgt _0805E350
	lsls r1, r4, #0x13
	movs r0, #0x98
	lsls r0, r0, #0xe
	adds r1, r1, r0
	asrs r1, r1, #0x10
	movs r0, #0x1e
	bl sub_08061140
	b _0805E380
	.align 2, 0
_0805E348: .4byte 0x030024E0
_0805E34C: .4byte 0x0000FFD8
_0805E350:
	cmp r4, #5
	ble _0805E36E
	subs r1, r4, #2
	lsls r1, r1, #0x18
	asrs r1, r1, #5
	movs r2, #0x98
	lsls r2, r2, #0xe
	adds r1, r1, r2
	asrs r1, r1, #0x10
	movs r0, #0x1e
	bl sub_08061140
	ldrh r0, [r5, #0x14]
	adds r0, #0x10
	b _0805E37E
_0805E36E:
	movs r0, #0x1e
	movs r1, #0x46
	bl sub_08061140
	subs r0, r4, #4
	lsls r0, r0, #3
	ldrh r1, [r5, #0x14]
	adds r0, r0, r1
_0805E37E:
	strh r0, [r5, #0x14]
_0805E380:
	lsls r4, r7, #0x18
	cmp r8, r7
	beq _0805E390
	movs r0, #0xca
	bl m4aSongNumStart
	lsrs r4, r4, #0x18
	mov r8, r4
_0805E390:
	movs r0, #1
	bl sub_08002B98
_0805E396:
	ldr r0, _0805E410 @ =0x030024B0
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0805E3A4
	b _0805E20C
_0805E3A4:
	movs r0, #0xce
	bl m4aSongNumStart
	bl sub_08005A2C
	bl sub_08061490
	bl sub_08061108
	adds r0, r7, #0
	bl sub_0805E0B8
	ldr r1, _0805E414 @ =0x030024E0
	ldrh r2, [r1]
	ldr r0, _0805E418 @ =0x0000DFFF
	ands r0, r2
	movs r2, #0
	strh r0, [r1]
	adds r0, r1, #0
	adds r0, #0x44
	strb r2, [r0]
	adds r1, #0x46
	strb r2, [r1]
	mov r2, sb
	cmp r2, #0
	beq _0805E3E0
	movs r0, #0
	movs r1, #0x20
	bl sub_080077EC
_0805E3E0:
	movs r0, #0x20
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl sub_080089E8
	bl sub_08008D34
	bl sub_08061534
	bl sub_08060FDC
	bl sub_080607BC
	mov r0, sb
	cmp r0, #0
	beq _0805E41C
	movs r0, #0x2b
	bl sub_080072F4
	movs r0, #0x23
	bl sub_08008790
	b _0805E422
	.align 2, 0
_0805E410: .4byte 0x030024B0
_0805E414: .4byte 0x030024E0
_0805E418: .4byte 0x0000DFFF
_0805E41C:
	movs r0, #0x2b
	bl sub_08008790
_0805E422:
	bl sub_08002B0C
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0805E434
sub_0805E434: @ 0x0805E434
	push {r4, r5, r6, lr}
	bl sub_08060708
	movs r0, #6
	bl sub_080607FC
	bl sub_08060FC4
	ldr r4, _0805E544 @ =0x03004400
	ldrb r0, [r4, #0xa]
	cmp r0, #0x2c
	bne _0805E450
	bl sub_08061D7C
_0805E450:
	movs r0, #1
	bl sub_08061DA0
	movs r0, #7
	bl sub_080077C4
	movs r0, #0x20
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl sub_08008AF4
	ldr r0, _0805E548 @ =0x030024E0
	adds r0, #0x4f
	movs r1, #1
	strb r1, [r0]
	bl sub_08008D34
	ldrb r0, [r4, #0xa]
	cmp r0, #0x2c
	bne _0805E4A2
	movs r0, #1
	bl sub_08005A88
	movs r0, #0x33
	bl sub_080059E4
	ldr r0, _0805E54C @ =0x003D0002
	bl sub_080062D0
	ldr r0, _0805E550 @ =0x003D0003
	bl sub_080062D0
	ldr r0, _0805E554 @ =0x003D0004
	bl sub_080062D0
	ldr r0, _0805E558 @ =0x003D0005
	bl sub_080062D0
	bl sub_08005A2C
_0805E4A2:
	ldr r0, _0805E55C @ =0x0808FCBC
	movs r1, #0x3c
	bl sub_08061FBC
	movs r0, #0
	bl sub_080613CC
	movs r0, #0x33
	bl sub_080059E4
	ldr r0, _0805E560 @ =0x003D000C
	bl sub_080062D0
	bl sub_08062848
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	movs r6, #0xff
_0805E4C6:
	ldr r0, _0805E55C @ =0x0808FCBC
	adds r0, r4, r0
	ldrb r5, [r0]
	cmp r5, #0x2d
	bne _0805E582
	movs r0, #0x71
	bl sub_08001A00
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0805E582
	movs r0, #9
	bl sub_08001A00
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0805E582
	movs r0, #0xd
	bl sub_08001A00
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0805E582
	movs r0, #0x18
	bl sub_08001A00
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0805E582
	ldr r2, _0805E564 @ =0x030024B0
	ldrh r1, [r2, #2]
	movs r0, #0x8c
	ands r0, r1
	cmp r0, #0x8c
	bne _0805E582
	ldrh r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0805E582
	ldr r0, _0805E568 @ =0x00470031
	bl sub_080062D0
	ldr r0, _0805E56C @ =0x00470032
	bl sub_080062D0
	ldr r0, _0805E570 @ =0x00470033
	bl sub_080062D0
	ldr r0, _0805E574 @ =0x00470034
	bl sub_080062D0
	ldr r0, _0805E578 @ =0x00470035
	bl sub_0800648C
	bl sub_080064F8
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805E57C
	movs r0, #0x24
	b _0805E616
	.align 2, 0
_0805E544: .4byte 0x03004400
_0805E548: .4byte 0x030024E0
_0805E54C: .4byte 0x003D0002
_0805E550: .4byte 0x003D0003
_0805E554: .4byte 0x003D0004
_0805E558: .4byte 0x003D0005
_0805E55C: .4byte 0x0808FCBC
_0805E560: .4byte 0x003D000C
_0805E564: .4byte 0x030024B0
_0805E568: .4byte 0x00470031
_0805E56C: .4byte 0x00470032
_0805E570: .4byte 0x00470033
_0805E574: .4byte 0x00470034
_0805E578: .4byte 0x00470035
_0805E57C:
	ldr r0, _0805E59C @ =0x003D000C
	bl sub_080062D0
_0805E582:
	ldr r0, _0805E5A0 @ =0x030024B0
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0805E5A4
	movs r0, #0xce
	bl m4aSongNumStart
	movs r0, #0x2c
	bl sub_08008790
	b _0805E780
	.align 2, 0
_0805E59C: .4byte 0x003D000C
_0805E5A0: .4byte 0x030024B0
_0805E5A4:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0805E5AE
	b _0805E73A
_0805E5AE:
	movs r0, #4
	adds r1, r5, #0
	bl sub_08005BE0
	adds r0, r5, #0
	bl sub_08001A00
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805E5D4
	movs r0, #0xd2
	bl m4aSongNumStart
	ldr r0, _0805E5D0 @ =0x003D001A
	bl sub_080062D0
	b _0805E734
	.align 2, 0
_0805E5D0: .4byte 0x003D001A
_0805E5D4:
	movs r0, #0xcc
	bl m4aSongNumStart
	movs r0, #0
	bl sub_08061124
	cmp r5, #0x30
	bne _0805E5F0
	ldr r0, _0805E5EC @ =0x003D0010
	bl sub_080062D0
	b _0805E72E
	.align 2, 0
_0805E5EC: .4byte 0x003D0010
_0805E5F0:
	adds r0, r5, #0
	bl sub_080019D8
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0
	bne _0805E630
	ldr r0, _0805E628 @ =0x003D000D
	bl sub_080062D0
	ldr r0, _0805E62C @ =0x003D000E
	bl sub_0800648C
	bl sub_080064F8
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805E630
	adds r0, r5, #0
_0805E616:
	bl sub_08001B64
	movs r0, #0x1a
	bl sub_08001930
	movs r0, #0x11
	bl sub_08008790
	b _0805E780
	.align 2, 0
_0805E628: .4byte 0x003D000D
_0805E62C: .4byte 0x003D000E
_0805E630:
	cmp r4, #1
	bne _0805E710
	ldr r0, _0805E658 @ =0x003D000F
	bl sub_080062D0
	ldr r0, _0805E65C @ =0x003D000E
	bl sub_0800648C
	bl sub_080064F8
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805E710
	cmp r5, #0x2d
	bne _0805E660
	movs r0, #0x27
	bl sub_08008790
	b _0805E780
	.align 2, 0
_0805E658: .4byte 0x003D000F
_0805E65C: .4byte 0x003D000E
_0805E660:
	adds r0, r5, #0
	subs r0, #0x2b
	cmp r0, #0x17
	bhi _0805E70E
	lsls r0, r0, #2
	ldr r1, _0805E674 @ =_0805E678
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0805E674: .4byte _0805E678
_0805E678: @ jump table
	.4byte _0805E6D8 @ case 0
	.4byte _0805E70E @ case 1
	.4byte _0805E70E @ case 2
	.4byte _0805E6E0 @ case 3
	.4byte _0805E70E @ case 4
	.4byte _0805E70E @ case 5
	.4byte _0805E70E @ case 6
	.4byte _0805E70E @ case 7
	.4byte _0805E70E @ case 8
	.4byte _0805E70E @ case 9
	.4byte _0805E70E @ case 10
	.4byte _0805E70E @ case 11
	.4byte _0805E70E @ case 12
	.4byte _0805E70E @ case 13
	.4byte _0805E70E @ case 14
	.4byte _0805E70E @ case 15
	.4byte _0805E70E @ case 16
	.4byte _0805E70E @ case 17
	.4byte _0805E70E @ case 18
	.4byte _0805E6E8 @ case 19
	.4byte _0805E708 @ case 20
	.4byte _0805E6F0 @ case 21
	.4byte _0805E6F8 @ case 22
	.4byte _0805E700 @ case 23
_0805E6D8:
	movs r0, #0
	bl sub_0805E9C4
	b _0805E70E
_0805E6E0:
	movs r0, #1
	bl sub_0805E9C4
	b _0805E70E
_0805E6E8:
	movs r0, #2
	bl sub_0805E9C4
	b _0805E70E
_0805E6F0:
	movs r0, #4
	bl sub_0805E9C4
	b _0805E70E
_0805E6F8:
	movs r0, #5
	bl sub_0805E9C4
	b _0805E70E
_0805E700:
	movs r0, #3
	bl sub_0805E9C4
	b _0805E70E
_0805E708:
	movs r0, #0xff
	bl sub_0805E9C4
_0805E70E:
	movs r6, #0xff
_0805E710:
	cmp r4, #2
	bne _0805E72E
	ldr r0, _0805E760 @ =0x003D0011
	bl sub_080062D0
	ldr r0, _0805E764 @ =0x003D000E
	bl sub_0800648C
	bl sub_080064F8
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805E72E
	bl sub_0805EB88
_0805E72E:
	movs r0, #1
	bl sub_08061124
_0805E734:
	ldr r0, _0805E768 @ =0x003D000C
	bl sub_080062D0
_0805E73A:
	bl sub_08062648
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r0, _0805E76C @ =0x0808FCBC
	adds r0, r4, r0
	ldrb r5, [r0]
	cmp r6, r4
	beq _0805E778
	adds r0, r5, #0
	bl sub_08001A00
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805E770
	movs r0, #0xff
	bl sub_0806083C
	b _0805E776
	.align 2, 0
_0805E760: .4byte 0x003D0011
_0805E764: .4byte 0x003D000E
_0805E768: .4byte 0x003D000C
_0805E76C: .4byte 0x0808FCBC
_0805E770:
	adds r0, r5, #0
	bl sub_0806083C
_0805E776:
	adds r6, r4, #0
_0805E778:
	movs r0, #1
	bl sub_08002B98
	b _0805E4C6
_0805E780:
	bl sub_08005A2C
	bl sub_08060950
	bl sub_08061490
	bl sub_08062180
	ldr r0, _0805E7CC @ =0x03004400
	ldrb r0, [r0, #9]
	cmp r0, #0x11
	beq _0805E79C
	cmp r0, #0x27
	bne _0805E7A4
_0805E79C:
	movs r0, #0
	movs r1, #0x20
	bl sub_080077EC
_0805E7A4:
	movs r0, #0x20
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl sub_080089E8
	bl sub_08008D34
	bl sub_08061E30
	bl sub_08060FDC
	bl sub_080607BC
	bl sub_08002B0C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805E7CC: .4byte 0x03004400

	thumb_func_start sub_0805E7D0
sub_0805E7D0: @ 0x0805E7D0
	push {r4, r5, r6, r7, lr}
	movs r5, #0
	movs r7, #1
	bl sub_08060708
	movs r0, #7
	bl sub_080607FC
	bl sub_08060FC4
	bl sub_08061D7C
	movs r0, #1
	bl sub_08061DA0
	movs r0, #7
	bl sub_080077C4
	movs r0, #0x20
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl sub_08008AF4
	ldr r0, _0805E848 @ =0x030024E0
	adds r0, #0x4f
	strb r7, [r0]
	bl sub_08008D34
	movs r0, #1
	bl sub_08005A88
	movs r0, #0x33
	bl sub_080059E4
	ldr r0, _0805E84C @ =0x003D0020
	bl sub_080062D0
	ldr r0, _0805E850 @ =0x003D0021
	bl sub_080062D0
	bl sub_08005A2C
	ldr r4, _0805E854 @ =0x0808FCBC
	adds r0, r4, #0
	movs r1, #0x32
	bl sub_08061FBC
	movs r0, #0
	bl sub_080613CC
	movs r0, #0x33
	bl sub_080059E4
	ldr r0, _0805E858 @ =0x003D0017
	bl sub_080062D0
	adds r6, r4, #0
	b _0805E96A
	.align 2, 0
_0805E848: .4byte 0x030024E0
_0805E84C: .4byte 0x003D0020
_0805E850: .4byte 0x003D0021
_0805E854: .4byte 0x0808FCBC
_0805E858: .4byte 0x003D0017
_0805E85C:
	movs r5, #1
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0805E926
	adds r0, r4, #0
	bl sub_08001A00
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805E884
	movs r0, #0xd2
	bl m4aSongNumStart
	ldr r0, _0805E880 @ =0x003D001A
	bl sub_080062D0
	b _0805E920
	.align 2, 0
_0805E880: .4byte 0x003D001A
_0805E884:
	movs r0, #0xcc
	bl m4aSongNumStart
	movs r0, #0
	bl sub_08061124
	movs r0, #4
	adds r1, r4, #0
	bl sub_08005BE0
	ldr r0, _0805E94C @ =0x003D0018
	bl sub_080062D0
	ldr r0, _0805E950 @ =0x003D0019
	bl sub_0800648C
	bl sub_080064F8
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805E91A
	bl sub_08005A2C
	bl sub_08061490
	bl sub_08062180
	adds r0, r4, #0
	bl sub_08001B64
	movs r0, #0
	movs r1, #0x20
	bl sub_080077EC
	movs r0, #0x20
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl sub_080089E8
	bl sub_08008D34
	adds r0, r4, #0
	movs r1, #1
	bl sub_0806E4F4
	movs r0, #7
	bl sub_080607FC
	movs r0, #7
	bl sub_080077C4
	movs r0, #0x20
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl sub_08008AF4
	ldr r0, _0805E954 @ =0x030024E0
	adds r0, #0x4f
	strb r5, [r0]
	bl sub_08008D34
	bl sub_08061E08
	adds r0, r6, #0
	movs r1, #0x32
	bl sub_08061FBC
	movs r0, #0
	bl sub_080613CC
	movs r0, #0x33
	bl sub_080059E4
_0805E91A:
	movs r0, #1
	bl sub_08061124
_0805E920:
	ldr r0, _0805E958 @ =0x003D0017
	bl sub_080062D0
_0805E926:
	bl sub_08062648
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	adds r0, r5, r6
	ldrb r4, [r0]
	cmp r7, r5
	beq _0805E964
	adds r0, r4, #0
	bl sub_08001A00
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805E95C
	movs r0, #0xff
	bl sub_0806083C
	b _0805E962
	.align 2, 0
_0805E94C: .4byte 0x003D0018
_0805E950: .4byte 0x003D0019
_0805E954: .4byte 0x030024E0
_0805E958: .4byte 0x003D0017
_0805E95C:
	adds r0, r4, #0
	bl sub_0806083C
_0805E962:
	adds r7, r5, #0
_0805E964:
	movs r0, #1
	bl sub_08002B98
_0805E96A:
	adds r0, r5, r6
	ldrb r4, [r0]
	ldr r0, _0805E9C0 @ =0x030024B0
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0805E97C
	b _0805E85C
_0805E97C:
	movs r0, #0xce
	bl m4aSongNumStart
	bl sub_08005A2C
	bl sub_08060950
	bl sub_08061490
	bl sub_08062180
	movs r0, #0x20
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl sub_080089E8
	bl sub_08008D34
	bl sub_08061E30
	bl sub_08060FDC
	bl sub_080607BC
	movs r0, #0x2c
	bl sub_08008790
	bl sub_08002B0C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805E9C0: .4byte 0x030024B0

	thumb_func_start sub_0805E9C4
sub_0805E9C4: @ 0x0805E9C4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x54
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r1, _0805EA3C @ =0x0808FD08
	add r0, sp, #4
	movs r2, #0x48
	bl memcpy
	ldr r4, _0805EA40 @ =0x030024E0
	ldrh r7, [r4]
	ldrh r0, [r4, #4]
	mov r8, r0
	movs r0, #0x20
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl sub_080089E8
	bl sub_08008D34
	movs r1, #0
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r4]
	ldr r0, _0805EA44 @ =0x00001805
	strh r0, [r4, #2]
	ldr r0, _0805EA48 @ =0x00001A0A
	strh r0, [r4, #4]
	strh r1, [r4, #0xc]
	strh r1, [r4, #0xa]
	strh r1, [r4, #0x14]
	strh r1, [r4, #0x12]
	str r1, [sp, #0x4c]
	add r0, sp, #0x4c
	ldr r4, _0805EA4C @ =0x0600C000
	ldr r2, _0805EA50 @ =0x01001000
	adds r1, r4, #0
	bl CpuFastSet
	cmp r5, #0xff
	bne _0805EA6C
	ldr r0, _0805EA54 @ =0x081410E8
	ldr r1, _0805EA58 @ =0x05000100
	bl sub_08008308
	ldr r0, _0805EA5C @ =0x081413B4
	ldr r1, _0805EA60 @ =0x06008000
	bl sub_08008374
	ldr r0, _0805EA64 @ =0x0814110C
	ldr r1, _0805EA68 @ =0x0600D000
	movs r2, #0
	movs r3, #8
	bl sub_080083CC
	b _0805EAC0
	.align 2, 0
_0805EA3C: .4byte 0x0808FD08
_0805EA40: .4byte 0x030024E0
_0805EA44: .4byte 0x00001805
_0805EA48: .4byte 0x00001A0A
_0805EA4C: .4byte 0x0600C000
_0805EA50: .4byte 0x01001000
_0805EA54: .4byte 0x081410E8
_0805EA58: .4byte 0x05000100
_0805EA5C: .4byte 0x081413B4
_0805EA60: .4byte 0x06008000
_0805EA64: .4byte 0x0814110C
_0805EA68: .4byte 0x0600D000
_0805EA6C:
	ldr r0, _0805EB5C @ =0x0813B27C
	movs r1, #0xa0
	lsls r1, r1, #0x13
	bl sub_08008308
	ldr r0, _0805EB60 @ =0x0813B468
	ldr r1, _0805EB64 @ =0x06004000
	bl sub_08008374
	ldr r0, _0805EB68 @ =0x0813B300
	adds r1, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_080083CC
	lsls r4, r5, #1
	adds r4, r4, r5
	lsls r4, r4, #2
	mov r0, sp
	adds r0, r0, r4
	adds r0, #4
	ldr r0, [r0]
	ldr r1, _0805EB6C @ =0x05000100
	bl sub_08008308
	add r0, sp, #8
	adds r0, r0, r4
	ldr r0, [r0]
	ldr r1, _0805EB70 @ =0x06008000
	bl sub_08008374
	add r0, sp, #0xc
	adds r0, r0, r4
	ldr r0, [r0]
	ldr r1, _0805EB74 @ =0x0600D000
	movs r2, #0
	movs r3, #8
	bl sub_080083CC
	adds r0, r5, #0
	bl sub_08007400
_0805EAC0:
	movs r0, #0x20
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl sub_08008AF4
	ldr r0, _0805EB78 @ =0x030024E0
	adds r0, #0x4f
	movs r1, #1
	strb r1, [r0]
	bl sub_08008D34
	add r6, sp, #0x50
	ldr r4, _0805EB7C @ =0x030024B0
	movs r5, #8
_0805EADE:
	movs r0, #1
	bl sub_08002B98
	ldrh r1, [r4]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _0805EADE
	movs r0, #0x20
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl sub_080089E8
	bl sub_08008D34
	ldr r4, _0805EB78 @ =0x030024E0
	movs r5, #0
	strh r7, [r4]
	mov r0, r8
	strh r0, [r4, #4]
	strh r5, [r4, #0xc]
	strh r5, [r4, #0xa]
	strh r5, [r4, #0x14]
	strh r5, [r4, #0x12]
	movs r0, #0x80
	lsls r0, r0, #1
	str r0, [sp]
	movs r0, #1
	movs r1, #0x18
	movs r2, #0xe
	movs r3, #0
	bl sub_08004028
	bl sub_08005B18
	str r5, [sp, #0x50]
	ldr r1, _0805EB80 @ =0x0600C000
	ldr r2, _0805EB84 @ =0x01001000
	adds r0, r6, #0
	bl CpuFastSet
	movs r0, #6
	bl sub_080607FC
	movs r0, #0x20
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl sub_08008AF4
	adds r4, #0x4f
	movs r0, #1
	strb r0, [r4]
	bl sub_08008D34
	add sp, #0x54
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805EB5C: .4byte 0x0813B27C
_0805EB60: .4byte 0x0813B468
_0805EB64: .4byte 0x06004000
_0805EB68: .4byte 0x0813B300
_0805EB6C: .4byte 0x05000100
_0805EB70: .4byte 0x06008000
_0805EB74: .4byte 0x0600D000
_0805EB78: .4byte 0x030024E0
_0805EB7C: .4byte 0x030024B0
_0805EB80: .4byte 0x0600C000
_0805EB84: .4byte 0x01001000

	thumb_func_start sub_0805EB88
sub_0805EB88: @ 0x0805EB88
	push {r4, r5, r6, r7, lr}
	movs r5, #0
	movs r6, #0
	movs r7, #1
	rsbs r7, r7, #0
_0805EB92:
	lsls r0, r5, #0x18
	asrs r4, r0, #0x18
	cmp r4, #0
	beq _0805EBA0
	cmp r4, #1
	beq _0805EBCC
	b _0805EC46
_0805EBA0:
	movs r0, #0
	bl sub_080614BC
	movs r0, #5
	bl sub_08007828
	ldr r0, _0805EBC4 @ =0x003D001D
	bl sub_080062D0
	ldr r0, _0805EBC8 @ =0x000001E1
	bl m4aSongNumStart
	movs r0, #0xa
	bl sub_08002B98
	movs r5, #1
	b _0805EC46
	.align 2, 0
_0805EBC4: .4byte 0x003D001D
_0805EBC8: .4byte 0x000001E1
_0805EBCC:
	movs r0, #0
	bl sub_08007814
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0805EC08
	movs r0, #0xa
	bl sub_08002B98
	movs r0, #1
	bl sub_080614BC
	ldr r0, _0805EC00 @ =0x003D001E
	bl sub_080062D0
	ldr r0, _0805EC04 @ =0x003D001F
	bl sub_0800648C
	bl sub_080064F8
	lsls r0, r0, #0x18
	movs r5, #0xff
	cmp r0, #0
	bne _0805EC46
	movs r5, #0
	b _0805EC46
	.align 2, 0
_0805EC00: .4byte 0x003D001E
_0805EC04: .4byte 0x003D001F
_0805EC08:
	ldr r0, _0805EC18 @ =0x030024B0
	ldrh r1, [r0]
	movs r0, #0xa
	ands r0, r1
	cmp r0, #0
	beq _0805EC1C
	movs r5, #0xff
	b _0805EC46
	.align 2, 0
_0805EC18: .4byte 0x030024B0
_0805EC1C:
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _0805EC46
	lsls r0, r6, #0x18
	adds r4, r0, #0
	cmp r4, #0
	bne _0805EC38
	ldr r0, _0805EC34 @ =0x000001E1
	bl m4aSongNumStop
	b _0805EC3E
	.align 2, 0
_0805EC34: .4byte 0x000001E1
_0805EC38:
	ldr r0, _0805EC58 @ =0x000001E1
	bl m4aSongNumContinue
_0805EC3E:
	movs r0, #0x80
	lsls r0, r0, #0x11
	eors r0, r4
	lsrs r6, r0, #0x18
_0805EC46:
	lsls r0, r5, #0x18
	asrs r0, r0, #0x18
	cmp r0, r7
	beq _0805EC5C
	movs r0, #1
	bl sub_08002B98
	b _0805EB92
	.align 2, 0
_0805EC58: .4byte 0x000001E1
_0805EC5C:
	movs r0, #1
	bl sub_080614BC
	ldr r0, _0805EC74 @ =0x000001E1
	bl m4aSongNumStop
	movs r0, #7
	bl sub_080077C4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805EC74: .4byte 0x000001E1

	thumb_func_start sub_0805EC78
sub_0805EC78: @ 0x0805EC78
	push {lr}
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805EC9C
	ldr r2, _0805EC94 @ =0x030024E0
	ldrh r1, [r2]
	ldr r0, _0805EC98 @ =0x0000FBFF
	ands r0, r1
	movs r3, #0x80
	lsls r3, r3, #2
	adds r1, r3, #0
	orrs r0, r1
	b _0805ECAC
	.align 2, 0
_0805EC94: .4byte 0x030024E0
_0805EC98: .4byte 0x0000FBFF
_0805EC9C:
	ldr r2, _0805ECB4 @ =0x030024E0
	ldrh r1, [r2]
	movs r3, #0x80
	lsls r3, r3, #3
	adds r0, r3, #0
	orrs r0, r1
	ldr r1, _0805ECB8 @ =0x0000FDFF
	ands r0, r1
_0805ECAC:
	strh r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0
_0805ECB4: .4byte 0x030024E0
_0805ECB8: .4byte 0x0000FDFF

	thumb_func_start sub_0805ECBC
sub_0805ECBC: @ 0x0805ECBC
	push {r4, r5, lr}
	ldr r4, _0805ECF8 @ =0x030024E0
	movs r5, #0
	movs r0, #0xf0
	lsls r0, r0, #5
	strh r0, [r4, #6]
	ldr r0, _0805ECFC @ =0x08134860
	ldr r1, _0805ED00 @ =0x05000080
	bl sub_08008308
	ldr r0, _0805ED04 @ =0x0813496C
	ldr r1, _0805ED08 @ =0x06002000
	bl sub_08008374
	ldr r0, _0805ED0C @ =0x08134884
	ldr r1, _0805ED10 @ =0x0600F000
	movs r2, #0x80
	lsls r2, r2, #1
	movs r3, #4
	bl sub_080083CC
	strh r5, [r4, #0xe]
	ldr r0, _0805ED14 @ =0x0000FFE8
	strh r0, [r4, #0x16]
	movs r0, #0
	bl sub_0805EC78
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805ECF8: .4byte 0x030024E0
_0805ECFC: .4byte 0x08134860
_0805ED00: .4byte 0x05000080
_0805ED04: .4byte 0x0813496C
_0805ED08: .4byte 0x06002000
_0805ED0C: .4byte 0x08134884
_0805ED10: .4byte 0x0600F000
_0805ED14: .4byte 0x0000FFE8

	thumb_func_start sub_0805ED18
sub_0805ED18: @ 0x0805ED18
	push {r4, r5, r6, r7, lr}
	ldr r0, _0805ED48 @ =0x0808FD58
	movs r1, #0x1e
	bl sub_08061FBC
	bl sub_080612A4
	movs r0, #0
	bl sub_080613CC
	movs r0, #1
	bl sub_080059E4
	ldr r0, _0805ED4C @ =0x00440023
	bl sub_080062D0
	bl sub_08062848
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	movs r6, #1
	rsbs r6, r6, #0
	ldr r7, _0805ED50 @ =0x03004400
	b _0805EDE8
	.align 2, 0
_0805ED48: .4byte 0x0808FD58
_0805ED4C: .4byte 0x00440023
_0805ED50: .4byte 0x03004400
_0805ED54:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0805EDB8
	adds r0, r4, #0
	bl sub_08001A00
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805ED7C
	movs r0, #0xd2
	bl m4aSongNumStart
	ldr r0, _0805ED78 @ =0x00440036
	bl sub_080062D0
	b _0805EDB2
	.align 2, 0
_0805ED78: .4byte 0x00440036
_0805ED7C:
	movs r0, #0
	bl sub_08061124
	movs r0, #5
	adds r1, r4, #0
	bl sub_08005BE0
	ldr r0, _0805EDA4 @ =0x00440026
	bl sub_080062D0
	ldr r0, _0805EDA8 @ =0x00440027
	bl sub_0800648C
	bl sub_080064F8
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805EDAC
	strb r4, [r7, #0xd]
	b _0805EE04
	.align 2, 0
_0805EDA4: .4byte 0x00440026
_0805EDA8: .4byte 0x00440027
_0805EDAC:
	movs r0, #1
	bl sub_08061124
_0805EDB2:
	ldr r0, _0805EE28 @ =0x00440023
	bl sub_080062D0
_0805EDB8:
	bl sub_08062648
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r0, _0805EE2C @ =0x0808FD58
	adds r0, r4, r0
	ldrb r5, [r0]
	cmp r6, r4
	beq _0805EDE2
	adds r0, r5, #0
	bl sub_08001A00
	lsls r0, r0, #0x18
	movs r1, #0xff
	cmp r0, #0
	beq _0805EDDA
	adds r1, r5, #0
_0805EDDA:
	adds r0, r1, #0
	bl sub_0806083C
	adds r6, r4, #0
_0805EDE2:
	movs r0, #1
	bl sub_08002B98
_0805EDE8:
	ldr r0, _0805EE2C @ =0x0808FD58
	adds r0, r4, r0
	ldrb r4, [r0]
	ldr r0, _0805EE30 @ =0x030024B0
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0805ED54
	movs r0, #0xce
	bl m4aSongNumStart
	movs r0, #0xff
	strb r0, [r7, #0xd]
_0805EE04:
	bl sub_08005A2C
	bl sub_08060950
	bl sub_080612E4
	bl sub_08061490
	bl sub_08062180
	ldr r0, _0805EE34 @ =0x030024E0
	ldr r1, _0805EE38 @ =0x0000FFD0
	strh r1, [r0, #0xc]
	adds r1, #0x18
	strh r1, [r0, #0x14]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805EE28: .4byte 0x00440023
_0805EE2C: .4byte 0x0808FD58
_0805EE30: .4byte 0x030024B0
_0805EE34: .4byte 0x030024E0
_0805EE38: .4byte 0x0000FFD0

	thumb_func_start sub_0805EE3C
sub_0805EE3C: @ 0x0805EE3C
	push {r4, r5, lr}
	sub sp, #4
	movs r4, #0
	ldr r5, _0805EE80 @ =0x0600A000
_0805EE44:
	movs r1, #0x2c
	cmp r4, #0xa
	beq _0805EE52
	adds r1, r4, #0
	cmp r4, #0xb
	bne _0805EE52
	movs r1, #0x2b
_0805EE52:
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r0, #1
	str r0, [sp]
	adds r0, r5, #0
	movs r2, #2
	movs r3, #0
	bl sub_08004BB8
	adds r4, #1
	adds r5, #0x20
	cmp r4, #0xb
	ble _0805EE44
	ldr r0, _0805EE84 @ =0x030024E0
	ldr r1, _0805EE88 @ =0x0000FFD0
	strh r1, [r0, #0xc]
	adds r1, #0x18
	strh r1, [r0, #0x14]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805EE80: .4byte 0x0600A000
_0805EE84: .4byte 0x030024E0
_0805EE88: .4byte 0x0000FFD0

	thumb_func_start sub_0805EE8C
sub_0805EE8C: @ 0x0805EE8C
	push {lr}
	sub sp, #4
	movs r0, #0
	str r0, [sp]
	ldr r1, _0805EEA4 @ =0x0600D000
	ldr r2, _0805EEA8 @ =0x01000200
	mov r0, sp
	bl CpuFastSet
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_0805EEA4: .4byte 0x0600D000
_0805EEA8: .4byte 0x01000200

	thumb_func_start sub_0805EEAC
sub_0805EEAC: @ 0x0805EEAC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov r8, r1
	movs r1, #0xe0
	lsls r1, r1, #8
	mov sl, r1
	ldr r6, _0805EF4C @ =0x00989680
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x12
	ldr r2, _0805EF50 @ =0x0600D014
	adds r5, r0, r2
	movs r0, #0
	mov sb, r0
	movs r7, #0
_0805EECE:
	mov r0, r8
	adds r1, r6, #0
	bl __udivsi3
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	mov r0, r8
	adds r1, r6, #0
	bl __umodsi3
	mov r8, r0
	adds r0, r6, #0
	movs r1, #0xa
	bl __udivsi3
	adds r6, r0, #0
	cmp r4, #0
	beq _0805EEF6
	movs r1, #1
	mov sb, r1
_0805EEF6:
	mov r2, sb
	cmp r2, #0
	bne _0805EF00
	cmp r6, #0
	bne _0805EECE
_0805EF00:
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r4, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r0, r4, #0
	mov r2, sl
	orrs r0, r2
	strh r0, [r5]
	adds r1, r5, #0
	adds r1, #0x40
	adds r0, r4, #0
	adds r0, #0x20
	orrs r0, r2
	strh r0, [r1]
	adds r5, #2
	adds r7, #1
	cmp r6, #0
	bne _0805EECE
	cmp r7, #8
	bgt _0805EF3C
	movs r1, #0
_0805EF2C:
	strh r1, [r5]
	adds r0, r5, #0
	adds r0, #0x40
	strh r1, [r0]
	adds r5, #2
	adds r7, #1
	cmp r7, #8
	ble _0805EF2C
_0805EF3C:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805EF4C: .4byte 0x00989680
_0805EF50: .4byte 0x0600D014

	thumb_func_start sub_0805EF54
sub_0805EF54: @ 0x0805EF54
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	sub sp, #8
	adds r4, r0, #0
	mov sl, r1
	mov r8, r2
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	mov r0, r8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	lsls r6, r4, #6
	adds r6, #1
	add r6, r8
	mov r0, sl
	movs r1, #0
	bl sub_080045FC
	adds r5, r0, #0
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	lsls r0, r6, #5
	ldr r1, _0805EFC4 @ =0x06008000
	adds r0, r0, r1
	movs r1, #1
	mov sb, r1
	str r1, [sp]
	mov r1, sl
	movs r2, #2
	movs r3, #0
	bl sub_08004D94
	lsls r4, r4, #0x19
	lsrs r4, r4, #0x18
	str r5, [sp]
	mov r0, sb
	str r0, [sp, #4]
	movs r0, #0x1a
	adds r1, r6, #0
	mov r2, r8
	adds r3, r4, #0
	bl sub_08004FD4
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805EFC4: .4byte 0x06008000

	thumb_func_start sub_0805EFC8
sub_0805EFC8: @ 0x0805EFC8
	push {r4, r5, r6, lr}
	sub sp, #0x20
	adds r4, r1, #0
	lsls r0, r0, #0x18
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	mov r2, sp
	ldr r1, _0805F008 @ =0x0808FD78
	ldm r1!, {r3, r5, r6}
	stm r2!, {r3, r5, r6}
	ldm r1!, {r3, r5, r6}
	stm r2!, {r3, r5, r6}
	ldm r1!, {r3, r5}
	stm r2!, {r3, r5}
	lsls r1, r4, #2
	lsrs r0, r0, #0x14
	adds r1, r1, r0
	mov r6, sp
	adds r0, r6, r1
	ldr r0, [r0]
	bl sub_08006828
	adds r1, r0, #0
	adds r0, r4, #0
	movs r2, #0
	bl sub_0805EF54
	add sp, #0x20
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805F008: .4byte 0x0808FD78

	thumb_func_start sub_0805F00C
sub_0805F00C: @ 0x0805F00C
	push {r4, lr}
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #1
	bhi _0805F018
	movs r4, #2
_0805F018:
	cmp r4, #0x64
	bls _0805F01E
	movs r4, #0x64
_0805F01E:
	movs r0, #0
	movs r1, #0
	bl sub_0805EFC8
	movs r0, #0
	adds r1, r4, #0
	bl sub_0805EEAC
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0805F034
sub_0805F034: @ 0x0805F034
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #1
	bl sub_0805EFC8
	ldr r0, _0805F058 @ =0x03004400
	ldrb r0, [r0, #0xd]
	bl sub_08001980
	adds r1, r0, #0
	movs r0, #1
	movs r2, #0xa
	bl sub_0805EF54
	pop {r0}
	bx r0
	.align 2, 0
_0805F058: .4byte 0x03004400

	thumb_func_start sub_0805F05C
sub_0805F05C: @ 0x0805F05C
	push {r4, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	movs r1, #3
	bl sub_0805EFC8
	cmp r4, #0
	bne _0805F088
	ldr r0, _0805F084 @ =0x00440018
	bl sub_08006828
	adds r1, r0, #0
	movs r0, #3
	movs r2, #0xa
	bl sub_0805EF54
	b _0805F090
	.align 2, 0
_0805F084: .4byte 0x00440018
_0805F088:
	movs r0, #3
	adds r1, r4, #0
	bl sub_0805EEAC
_0805F090:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0805F098
sub_0805F098: @ 0x0805F098
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r1, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #2
	bl sub_0805EFC8
	ldr r0, _0805F0C4 @ =0x03004400
	ldrb r0, [r0, #0xd]
	bl sub_08001B00
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0805F0C8
	cmp r0, #2
	beq _0805F0D2
	b _0805F1F6
	.align 2, 0
_0805F0C4: .4byte 0x03004400
_0805F0C8:
	movs r0, #2
	adds r1, r6, #0
	bl sub_0805EEAC
	b _0805F1F6
_0805F0D2:
	ldr r0, _0805F204 @ =0x00008C9F
	cmp r6, r0
	bls _0805F0DA
	adds r6, r0, #0
_0805F0DA:
	adds r0, r6, #0
	movs r1, #0x3c
	bl __umodsi3
	ldr r1, _0805F208 @ =0x00000683
	muls r0, r1, r0
	movs r1, #0xfa
	lsls r1, r1, #2
	bl __udivsi3
	mov sb, r0
	cmp r0, #0x62
	bne _0805F0F8
	movs r0, #0x63
	mov sb, r0
_0805F0F8:
	movs r5, #0xe1
	lsls r5, r5, #4
	adds r0, r6, #0
	adds r1, r5, #0
	bl __udivsi3
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r0, r6, #0
	adds r1, r5, #0
	bl __umodsi3
	movs r1, #0x3c
	bl __udivsi3
	adds r5, r0, #0
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	ldr r7, _0805F20C @ =0x0600D114
	movs r1, #0x80
	lsls r1, r1, #1
	mov r8, r1
	mov r1, r8
	orrs r1, r4
	movs r2, #0xe0
	lsls r2, r2, #8
	adds r6, r2, #0
	adds r0, r1, #0
	orrs r0, r6
	strh r0, [r7]
	adds r0, r7, #0
	adds r0, #0x40
	adds r1, #0x20
	ldr r2, _0805F210 @ =0xFFFFE000
	adds r4, r2, #0
	orrs r1, r4
	strh r1, [r0]
	adds r7, #2
	movs r2, #0x85
	lsls r2, r2, #1
	adds r0, r2, #0
	orrs r0, r6
	strh r0, [r7]
	adds r1, r7, #0
	adds r1, #0x40
	adds r0, r2, #0
	adds r0, #0x20
	orrs r0, r4
	strh r0, [r1]
	adds r7, #2
	adds r0, r5, #0
	movs r1, #0xa
	bl __udivsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r1, r8
	orrs r0, r1
	adds r1, r0, #0
	orrs r1, r6
	strh r1, [r7]
	adds r1, r7, #0
	adds r1, #0x40
	adds r0, #0x20
	orrs r0, r4
	strh r0, [r1]
	adds r7, #2
	adds r0, r5, #0
	movs r1, #0xa
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r2, r8
	orrs r0, r2
	adds r1, r0, #0
	orrs r1, r6
	strh r1, [r7]
	adds r1, r7, #0
	adds r1, #0x40
	adds r0, #0x20
	orrs r0, r4
	strh r0, [r1]
	adds r7, #2
	ldr r2, _0805F214 @ =0x0000010B
	adds r0, r2, #0
	orrs r0, r6
	strh r0, [r7]
	adds r1, r7, #0
	adds r1, #0x40
	adds r0, r2, #0
	adds r0, #0x20
	orrs r0, r4
	strh r0, [r1]
	adds r7, #2
	mov r0, sb
	movs r1, #0xa
	bl __udivsi3
	add r0, r8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r0, #0
	orrs r1, r6
	strh r1, [r7]
	adds r1, r7, #0
	adds r1, #0x40
	adds r0, #0x20
	orrs r0, r4
	strh r0, [r1]
	adds r7, #2
	mov r0, sb
	movs r1, #0xa
	bl __umodsi3
	add r0, r8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r0, #0
	orrs r1, r6
	strh r1, [r7]
	adds r1, r7, #0
	adds r1, #0x40
	adds r0, #0x20
	orrs r0, r4
	strh r0, [r1]
_0805F1F6:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805F204: .4byte 0x00008C9F
_0805F208: .4byte 0x00000683
_0805F20C: .4byte 0x0600D114
_0805F210: .4byte 0xFFFFE000
_0805F214: .4byte 0x0000010B

	thumb_func_start sub_0805F218
sub_0805F218: @ 0x0805F218
	push {r4, r5, r6, lr}
	sub sp, #0xc
	movs r5, #0
	movs r4, #0xa0
	lsls r4, r4, #0x13
_0805F222:
	lsrs r2, r4, #0x18
	cmp r5, #0
	bne _0805F22C
	movs r0, #0x10
	b _0805F22E
_0805F22C:
	movs r0, #0x26
_0805F22E:
	str r0, [sp]
	movs r0, #2
	movs r1, #0x64
	movs r3, #0x80
	bl sub_08060D9C
	lsls r1, r5, #2
	add r1, sp
	adds r1, #4
	str r0, [r1]
	lsls r2, r5, #0x18
	lsrs r2, r2, #0x18
	movs r1, #2
	movs r3, #0xff
	bl sub_08060E6C
	movs r0, #0x80
	lsls r0, r0, #0x11
	adds r4, r4, r0
	adds r5, #1
	cmp r5, #1
	ble _0805F222
	movs r5, #2
	movs r4, #2
	ldr r6, _0805F264 @ =0x030024B0
	b _0805F310
	.align 2, 0
_0805F264: .4byte 0x030024B0
_0805F268:
	ldrh r1, [r6, #4]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0805F276
	adds r5, #1
	b _0805F298
_0805F276:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0805F282
	subs r5, #1
	b _0805F298
_0805F282:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0805F28E
	adds r5, #0xa
	b _0805F298
_0805F28E:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0805F298
	subs r5, #0xa
_0805F298:
	cmp r5, #1
	bgt _0805F29E
	movs r5, #2
_0805F29E:
	cmp r5, #0x64
	ble _0805F2A4
	movs r5, #0x64
_0805F2A4:
	ldr r0, [sp, #8]
	movs r2, #2
	eors r2, r5
	rsbs r1, r2, #0
	orrs r1, r2
	lsrs r1, r1, #0x1f
	bl sub_08009A34
	ldr r0, [sp, #4]
	movs r2, #0x64
	eors r2, r5
	rsbs r1, r2, #0
	orrs r1, r2
	lsrs r1, r1, #0x1f
	bl sub_08009A34
	cmp r4, r5
	beq _0805F30A
	movs r0, #0xcb
	bl m4aSongNumStart
	cmp r5, #0x64
	bne _0805F2D6
	movs r1, #8
	b _0805F2E8
_0805F2D6:
	adds r0, r5, #0
	movs r1, #0xa
	bl __divsi3
	rsbs r1, r0, #0
	orrs r1, r0
	asrs r1, r1, #0x1f
	movs r0, #4
	ands r1, r0
_0805F2E8:
	ldr r0, [sp, #4]
	movs r4, #0x80
	orrs r4, r1
	adds r1, r4, #0
	movs r2, #0x10
	bl sub_08009A70
	ldr r0, [sp, #8]
	adds r1, r4, #0
	movs r2, #0x26
	bl sub_08009A70
	movs r0, #0
	adds r1, r5, #0
	bl sub_0805EEAC
	adds r4, r5, #0
_0805F30A:
	movs r0, #1
	bl sub_08002B98
_0805F310:
	ldrh r1, [r6]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0805F324
	movs r0, #0xce
	bl m4aSongNumStart
	movs r5, #0xff
	b _0805F332
_0805F324:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0805F268
	movs r0, #0xcc
	bl m4aSongNumStart
_0805F332:
	lsls r6, r5, #0x18
	add r4, sp, #4
	movs r5, #1
_0805F338:
	ldr r0, [r4]
	cmp r0, #0
	beq _0805F342
	bl sub_08009A00
_0805F342:
	adds r4, #4
	subs r5, #1
	cmp r5, #0
	bge _0805F338
	lsrs r0, r6, #0x18
	add sp, #0xc
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_0805F354
sub_0805F354: @ 0x0805F354
	push {r4, r5, r6, lr}
	sub sp, #0xc
	add r0, sp, #8
	movs r1, #0
	strh r1, [r0]
	ldr r2, _0805F3A4 @ =0x01000004
	mov r1, sp
	bl CpuSet
	movs r6, #0
	movs r5, #0
_0805F36A:
	ldr r0, _0805F3A8 @ =0x0808FD50
	adds r0, r5, r0
	ldrb r4, [r0]
	adds r0, r4, #0
	bl sub_08001A00
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0805F388
	adds r0, r6, #0
	adds r1, r0, #1
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	add r0, sp
	strb r4, [r0]
_0805F388:
	adds r5, #1
	cmp r5, #7
	ble _0805F36A
	adds r0, r6, #0
	bl sub_0800B828
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	add r0, sp
	ldrb r0, [r0]
	add sp, #0xc
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0805F3A4: .4byte 0x01000004
_0805F3A8: .4byte 0x0808FD50

	thumb_func_start sub_0805F3AC
sub_0805F3AC: @ 0x0805F3AC
	push {r4, r5, lr}
	movs r5, #0
	movs r4, #0
_0805F3B2:
	ldr r0, _0805F3D8 @ =0x0808FD50
	adds r0, r4, r0
	ldrb r0, [r0]
	bl sub_08001A00
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0805F3C8
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_0805F3C8:
	adds r4, #1
	cmp r4, #7
	ble _0805F3B2
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0805F3D8: .4byte 0x0808FD50

	thumb_func_start sub_0805F3DC
sub_0805F3DC: @ 0x0805F3DC
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r4, _0805F450 @ =0x0203A1B0
	movs r0, #0
	strb r0, [r4, #9]
	mov r1, sp
	ldr r2, _0805F454 @ =0x0000FFFF
	adds r0, r2, #0
	strh r0, [r1]
	adds r6, r4, #0
	adds r6, #0xa
	ldr r2, _0805F458 @ =0x01000032
	mov r0, sp
	adds r1, r6, #0
	bl CpuSet
	movs r5, #0
	ldrb r0, [r4, #8]
	cmp r5, r0
	bge _0805F416
	adds r3, r4, #0
	adds r2, r6, #0
_0805F408:
	adds r1, r5, r2
	adds r0, r5, #1
	strb r0, [r1]
	adds r5, r0, #0
	ldrb r0, [r3, #8]
	cmp r5, r0
	blt _0805F408
_0805F416:
	movs r5, #0
	ldr r6, _0805F450 @ =0x0203A1B0
	adds r7, r6, #0
	adds r7, #0xa
_0805F41E:
	ldrb r0, [r6, #8]
	bl sub_0800B828
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r4, r4, r7
	ldrb r0, [r6, #8]
	bl sub_0800B828
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r0, r0, r7
	ldrb r2, [r4]
	ldrb r1, [r0]
	strb r1, [r4]
	strb r2, [r0]
	adds r5, #1
	ldr r0, _0805F45C @ =0x000003E7
	cmp r5, r0
	ble _0805F41E
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805F450: .4byte 0x0203A1B0
_0805F454: .4byte 0x0000FFFF
_0805F458: .4byte 0x01000032
_0805F45C: .4byte 0x000003E7

	thumb_func_start sub_0805F460
sub_0805F460: @ 0x0805F460
	push {r4, r5, lr}
	ldr r2, _0805F490 @ =0x0203A1B0
	ldrb r3, [r2, #8]
	adds r5, r2, #0
	adds r5, #0xa
	movs r4, #0
_0805F46C:
	ldrb r0, [r2, #9]
	adds r1, r0, #1
	strb r1, [r2, #9]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r0, r0, r5
	ldrb r0, [r0]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, r3
	blo _0805F484
	strb r4, [r2, #9]
_0805F484:
	ldrb r1, [r2, #4]
	cmp r0, r1
	beq _0805F46C
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0805F490: .4byte 0x0203A1B0

	thumb_func_start sub_0805F494
sub_0805F494: @ 0x0805F494
	push {r4, r5, r6, lr}
	sub sp, #4
	bl sub_08060708
	ldr r1, _0805F51C @ =0x03004400
	ldrb r0, [r1, #0xa]
	movs r5, #0
	cmp r0, #0x11
	bne _0805F4A8
	movs r5, #6
_0805F4A8:
	ldrb r0, [r1, #8]
	strb r0, [r1, #0xa]
	movs r0, #0xd
	bl sub_080607FC
	bl sub_0805ECBC
	bl sub_08060FF4
	bl sub_0805EE3C
	lsls r0, r5, #0x18
	asrs r1, r0, #0x18
	adds r6, r0, #0
	cmp r1, #6
	bne _0805F4E6
	ldr r4, _0805F520 @ =0x0203A1B0
	ldrb r0, [r4, #8]
	bl sub_0805F00C
	movs r0, #0
	bl sub_0805F034
	ldr r1, [r4]
	movs r0, #0
	bl sub_0805F098
	ldrb r1, [r4, #4]
	movs r0, #0
	bl sub_0805F05C
_0805F4E6:
	movs r0, #8
	bl sub_080077C4
	movs r0, #0x20
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl sub_08008AF4
	ldr r0, _0805F524 @ =0x030024E0
	adds r0, #0x4f
	movs r1, #1
	strb r1, [r0]
	bl sub_08008D34
	movs r0, #0
	bl sub_080059E4
_0805F50A:
	asrs r0, r6, #0x18
	cmp r0, #7
	bls _0805F512
	b _0805F844
_0805F512:
	lsls r0, r0, #2
	ldr r1, _0805F528 @ =_0805F52C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0805F51C: .4byte 0x03004400
_0805F520: .4byte 0x0203A1B0
_0805F524: .4byte 0x030024E0
_0805F528: .4byte _0805F52C
_0805F52C: @ jump table
	.4byte _0805F54C @ case 0
	.4byte _0805F5AC @ case 1
	.4byte _0805F618 @ case 2
	.4byte _0805F684 @ case 3
	.4byte _0805F6A8 @ case 4
	.4byte _0805F6C4 @ case 5
	.4byte _0805F70C @ case 6
	.4byte _0805F7CC @ case 7
_0805F54C:
	movs r0, #0x88
	lsls r0, r0, #0xf
	bl sub_080062D0
	ldr r0, _0805F590 @ =0x00440001
	bl sub_080062D0
	ldr r0, _0805F594 @ =0x00440009
	bl sub_0800648C
	bl sub_080064F8
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	beq _0805F584
	ldr r0, _0805F598 @ =0x00440002
	bl sub_080062D0
	ldr r0, _0805F59C @ =0x00440003
	bl sub_080062D0
	ldr r0, _0805F5A0 @ =0x00440004
	bl sub_080062D0
	ldr r0, _0805F5A4 @ =0x00440005
	bl sub_080062D0
_0805F584:
	ldr r0, _0805F5A8 @ =0x00440006
	bl sub_080062D0
	movs r5, #1
	b _0805F844
	.align 2, 0
_0805F590: .4byte 0x00440001
_0805F594: .4byte 0x00440009
_0805F598: .4byte 0x00440002
_0805F59C: .4byte 0x00440003
_0805F5A0: .4byte 0x00440004
_0805F5A4: .4byte 0x00440005
_0805F5A8: .4byte 0x00440006
_0805F5AC:
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r4, _0805F5F8 @ =0x0203A1B0
	ldr r2, _0805F5FC @ =0x01000038
	mov r0, sp
	adds r1, r4, #0
	bl CpuSet
	bl sub_0805EE8C
	ldrb r0, [r4, #8]
	bl sub_0805F00C
_0805F5C8:
	ldr r0, _0805F600 @ =0x00440007
	bl sub_080062D0
	bl sub_0805F218
	ldr r1, _0805F5F8 @ =0x0203A1B0
	strb r0, [r1, #8]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _0805F60C
	ldr r0, _0805F604 @ =0x00440008
	bl sub_080062D0
	ldr r0, _0805F608 @ =0x00440009
	bl sub_0800648C
	bl sub_080064F8
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805F610
	b _0805F83C
	.align 2, 0
_0805F5F8: .4byte 0x0203A1B0
_0805F5FC: .4byte 0x01000038
_0805F600: .4byte 0x00440007
_0805F604: .4byte 0x00440008
_0805F608: .4byte 0x00440009
_0805F60C:
	movs r5, #2
	b _0805F844
_0805F610:
	movs r0, #1
	bl sub_08002B98
	b _0805F5C8
_0805F618:
	bl sub_0805F3DC
	bl sub_0805F354
	ldr r1, _0805F63C @ =0x03004400
	movs r4, #0
	strb r0, [r1, #0xd]
	ldrb r0, [r1, #0xd]
	bl sub_08001B00
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bne _0805F648
	ldr r1, _0805F640 @ =0x0203A1B0
	ldr r0, _0805F644 @ =0x00008C9F
	str r0, [r1]
	b _0805F64C
	.align 2, 0
_0805F63C: .4byte 0x03004400
_0805F640: .4byte 0x0203A1B0
_0805F644: .4byte 0x00008C9F
_0805F648:
	ldr r0, _0805F678 @ =0x0203A1B0
	str r4, [r0]
_0805F64C:
	movs r0, #0
	bl sub_0805F034
	ldr r4, _0805F678 @ =0x0203A1B0
	ldr r1, [r4]
	movs r0, #0
	bl sub_0805F098
	ldrb r1, [r4, #4]
	movs r0, #0
	bl sub_0805F05C
	ldr r0, _0805F67C @ =0x03004400
	ldrb r1, [r0, #0xd]
	movs r0, #5
	bl sub_08005BE0
	ldr r0, _0805F680 @ =0x0044000A
	bl sub_080062D0
	movs r5, #3
	b _0805F844
	.align 2, 0
_0805F678: .4byte 0x0203A1B0
_0805F67C: .4byte 0x03004400
_0805F680: .4byte 0x0044000A
_0805F684:
	bl sub_0805F460
	ldr r1, _0805F6A0 @ =0x0203A1B0
	strb r0, [r1, #6]
	ldrb r1, [r1, #6]
	movs r0, #0
	bl sub_08005C10
	ldr r0, _0805F6A4 @ =0x0044000B
	bl sub_080062D0
	movs r5, #4
	b _0805F844
	.align 2, 0
_0805F6A0: .4byte 0x0203A1B0
_0805F6A4: .4byte 0x0044000B
_0805F6A8:
	movs r0, #1
	bl sub_0805EC78
	ldr r0, _0805F6E4 @ =0x0203A1B0
	ldrb r1, [r0, #6]
	movs r0, #0
	bl sub_08005C10
	ldr r0, _0805F6E8 @ =0x0044001B
	bl sub_080062D0
	movs r0, #0
	bl sub_0805EC78
_0805F6C4:
	ldr r4, _0805F6EC @ =0x03004400
	ldrb r0, [r4, #0xd]
	movs r1, #0
	movs r2, #3
	bl sub_08001BA8
	ldrb r0, [r4, #0xd]
	bl sub_08001B00
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bne _0805F6F8
	ldr r1, _0805F6F0 @ =0x02030000
	ldr r0, _0805F6F4 @ =0x00008C9F
	b _0805F6FC
	.align 2, 0
_0805F6E4: .4byte 0x0203A1B0
_0805F6E8: .4byte 0x0044001B
_0805F6EC: .4byte 0x03004400
_0805F6F0: .4byte 0x02030000
_0805F6F4: .4byte 0x00008C9F
_0805F6F8:
	ldr r1, _0805F708 @ =0x02030000
	movs r0, #0
_0805F6FC:
	str r0, [r1, #4]
	movs r0, #0x28
	bl sub_08001930
	movs r0, #0x11
	b _0805F83E
	.align 2, 0
_0805F708: .4byte 0x02030000
_0805F70C:
	bl sub_08001F3C
	adds r4, r0, #0
	ldr r0, _0805F760 @ =0x03004400
	ldrb r0, [r0, #0xd]
	bl sub_08001B00
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r0, #0
	cmp r1, #1
	bne _0805F72C
	ldr r0, _0805F764 @ =0x0203A1B0
	ldr r0, [r0]
	cmp r0, r4
	blo _0805F738
_0805F72C:
	cmp r1, #2
	bne _0805F76C
	ldr r0, _0805F764 @ =0x0203A1B0
	ldr r0, [r0]
	cmp r0, r4
	bls _0805F76C
_0805F738:
	ldr r0, _0805F768 @ =0x0044000C
	bl sub_080062D0
	bl sub_08001F3C
	adds r1, r0, #0
	ldr r4, _0805F764 @ =0x0203A1B0
	str r1, [r4]
	ldrb r0, [r4, #6]
	movs r2, #0
	strb r0, [r4, #4]
	strb r2, [r4, #5]
	movs r0, #0
	bl sub_0805F098
	ldrb r1, [r4, #4]
	movs r0, #0
	bl sub_0805F05C
	b _0805F7A2
	.align 2, 0
_0805F760: .4byte 0x03004400
_0805F764: .4byte 0x0203A1B0
_0805F768: .4byte 0x0044000C
_0805F76C:
	ldr r0, _0805F78C @ =0x0044000D
	bl sub_080062D0
	ldr r1, _0805F790 @ =0x0203A1B0
	ldrb r0, [r1, #4]
	cmp r0, #0
	beq _0805F7A2
	ldrb r0, [r1, #5]
	adds r0, #1
	strb r0, [r1, #5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _0805F794
	movs r5, #7
	b _0805F844
	.align 2, 0
_0805F78C: .4byte 0x0044000D
_0805F790: .4byte 0x0203A1B0
_0805F794:
	ldrb r1, [r1, #4]
	movs r0, #0
	bl sub_08005C10
	ldr r0, _0805F7C0 @ =0x0044001A
	bl sub_080062D0
_0805F7A2:
	ldr r0, _0805F7C4 @ =0x0044000E
	bl sub_080062D0
	ldr r0, _0805F7C8 @ =0x0044000F
	bl sub_0800648C
	bl sub_080064F8
	lsls r0, r0, #0x18
	movs r5, #7
	cmp r0, #0
	bne _0805F844
	movs r5, #3
	b _0805F844
	.align 2, 0
_0805F7C0: .4byte 0x0044001A
_0805F7C4: .4byte 0x0044000E
_0805F7C8: .4byte 0x0044000F
_0805F7CC:
	ldr r0, _0805F7E4 @ =0x00440010
	bl sub_080062D0
	ldr r4, _0805F7E8 @ =0x0203A1B0
	ldrb r0, [r4, #4]
	cmp r0, #0
	bne _0805F7F0
	ldr r0, _0805F7EC @ =0x00440019
	bl sub_080062D0
	b _0805F81C
	.align 2, 0
_0805F7E4: .4byte 0x00440010
_0805F7E8: .4byte 0x0203A1B0
_0805F7EC: .4byte 0x00440019
_0805F7F0:
	movs r0, #0
	bl sub_080077D4
	movs r0, #0x71
	bl m4aSongNumStart
	movs r0, #1
	bl sub_08007828
	movs r0, #8
	bl sub_080077C4
	ldrb r1, [r4, #4]
	movs r0, #0
	bl sub_08005C10
	ldr r0, _0805F830 @ =0x00440011
	bl sub_080062D0
	ldr r0, _0805F834 @ =0x00440012
	bl sub_080062D0
_0805F81C:
	ldr r0, _0805F838 @ =0x00440013
	bl sub_0800648C
	bl sub_080064F8
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805F83C
	movs r5, #1
	b _0805F844
	.align 2, 0
_0805F830: .4byte 0x00440011
_0805F834: .4byte 0x00440012
_0805F838: .4byte 0x00440013
_0805F83C:
	movs r0, #0x2a
_0805F83E:
	bl sub_08008790
	movs r5, #0xff
_0805F844:
	lsls r0, r5, #0x18
	asrs r2, r0, #0x18
	movs r1, #1
	rsbs r1, r1, #0
	adds r6, r0, #0
	cmp r2, r1
	beq _0805F85A
	movs r0, #1
	bl sub_08002B98
	b _0805F50A
_0805F85A:
	bl sub_08005A2C
	ldr r0, _0805F894 @ =0x03004400
	ldrb r0, [r0, #9]
	cmp r0, #0x11
	bne _0805F86E
	movs r0, #0
	movs r1, #0x20
	bl sub_080077EC
_0805F86E:
	movs r0, #0x20
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl sub_080089E8
	bl sub_08008D34
	bl sub_0806102C
	bl sub_080607BC
	bl sub_08002B0C
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805F894: .4byte 0x03004400

	thumb_func_start sub_0805F898
sub_0805F898: @ 0x0805F898
	push {r4, r5, r6, lr}
	sub sp, #4
	bl sub_08060708
	ldr r1, _0805F8B8 @ =0x03004400
	ldrb r0, [r1, #0xa]
	cmp r0, #0x11
	bne _0805F8C4
	ldrb r0, [r1, #0xd]
	cmp r0, #0x24
	bne _0805F8C0
	ldr r0, _0805F8BC @ =0x020335B8
	ldrb r0, [r0, #7]
	strb r0, [r1, #0xd]
	movs r5, #6
	b _0805F8C6
	.align 2, 0
_0805F8B8: .4byte 0x03004400
_0805F8BC: .4byte 0x020335B8
_0805F8C0:
	movs r5, #4
	b _0805F8C6
_0805F8C4:
	movs r5, #0
_0805F8C6:
	ldr r0, _0805F92C @ =0x03004400
	ldrb r1, [r0, #8]
	strb r1, [r0, #0xa]
	movs r0, #0xe
	bl sub_080607FC
	bl sub_0805ECBC
	bl sub_0805EE3C
	lsls r0, r5, #0x18
	adds r6, r0, #0
	cmp r6, #0
	beq _0805F8FA
	movs r0, #1
	bl sub_0805F034
	ldr r4, _0805F930 @ =0x020335B8
	ldr r1, [r4]
	movs r0, #1
	bl sub_0805F098
	ldrb r1, [r4, #4]
	movs r0, #1
	bl sub_0805F05C
_0805F8FA:
	movs r0, #8
	bl sub_080077C4
	movs r0, #0x20
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl sub_08008AF4
	ldr r0, _0805F934 @ =0x030024E0
	adds r0, #0x4f
	movs r1, #1
	strb r1, [r0]
	bl sub_08008D34
_0805F918:
	asrs r0, r6, #0x18
	cmp r0, #6
	bls _0805F920
	b _0805FC88
_0805F920:
	lsls r0, r0, #2
	ldr r1, _0805F938 @ =_0805F93C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0805F92C: .4byte 0x03004400
_0805F930: .4byte 0x020335B8
_0805F934: .4byte 0x030024E0
_0805F938: .4byte _0805F93C
_0805F93C: @ jump table
	.4byte _0805F958 @ case 0
	.4byte _0805F9C4 @ case 1
	.4byte _0805FA90 @ case 2
	.4byte _0805FAA2 @ case 3
	.4byte _0805FAD0 @ case 4
	.4byte _0805FBC0 @ case 5
	.4byte _0805FC68 @ case 6
_0805F958:
	movs r0, #1
	bl sub_080059E4
	ldr r0, _0805F9A4 @ =0x0044001C
	bl sub_080062D0
	ldr r0, _0805F9A8 @ =0x0044001D
	bl sub_080062D0
	ldr r0, _0805F9AC @ =0x00440025
	bl sub_0800648C
	bl sub_080064F8
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	beq _0805F994
	ldr r0, _0805F9B0 @ =0x0044001E
	bl sub_080062D0
	ldr r0, _0805F9B4 @ =0x0044001F
	bl sub_080062D0
	ldr r0, _0805F9B8 @ =0x00440020
	bl sub_080062D0
	ldr r0, _0805F9BC @ =0x00440021
	bl sub_080062D0
_0805F994:
	ldr r0, _0805F9C0 @ =0x00440022
	bl sub_080062D0
	bl sub_08005A2C
	movs r5, #1
	b _0805FC88
	.align 2, 0
_0805F9A4: .4byte 0x0044001C
_0805F9A8: .4byte 0x0044001D
_0805F9AC: .4byte 0x00440025
_0805F9B0: .4byte 0x0044001E
_0805F9B4: .4byte 0x0044001F
_0805F9B8: .4byte 0x00440020
_0805F9BC: .4byte 0x00440021
_0805F9C0: .4byte 0x00440022
_0805F9C4:
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r4, _0805F9EC @ =0x020335B8
	ldr r2, _0805F9F0 @ =0x01000004
	mov r0, sp
	adds r1, r4, #0
	bl CpuSet
	bl sub_0805EE8C
	bl sub_08060F7C
	bl sub_08061D7C
	movs r0, #0
	bl sub_08061DA0
	ldr r5, _0805F9F4 @ =0x03004400
	b _0805FA50
	.align 2, 0
_0805F9EC: .4byte 0x020335B8
_0805F9F0: .4byte 0x01000004
_0805F9F4: .4byte 0x03004400
_0805F9F8:
	movs r0, #1
	bl sub_08002B98
	ldrb r0, [r5, #0xd]
	bl sub_08001B00
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bne _0805FA14
	ldr r0, _0805FA10 @ =0x00008C9F
	b _0805FA16
	.align 2, 0
_0805FA10: .4byte 0x00008C9F
_0805FA14:
	movs r0, #0
_0805FA16:
	str r0, [r4]
	movs r0, #1
	bl sub_0805F034
	ldr r1, [r4]
	movs r0, #1
	bl sub_0805F098
	ldrb r1, [r4, #4]
	movs r0, #1
	bl sub_0805F05C
	ldrb r1, [r5, #0xd]
	movs r0, #5
	bl sub_08005BE0
	ldr r0, _0805FA48 @ =0x00440028
	bl sub_080062D0
	ldr r0, _0805FA4C @ =0x00440029
	bl sub_080062D0
	movs r5, #3
	b _0805FA7E
	.align 2, 0
_0805FA48: .4byte 0x00440028
_0805FA4C: .4byte 0x00440029
_0805FA50:
	bl sub_0805ED18
	movs r0, #1
	bl sub_080059E4
	ldrb r0, [r5, #0xd]
	cmp r0, #0xff
	bne _0805F9F8
	ldr r0, _0805FA88 @ =0x00440024
	bl sub_080062D0
	ldr r0, _0805FA8C @ =0x00440025
	bl sub_0800648C
	bl sub_080064F8
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805FA50
	movs r0, #0x2a
	bl sub_08008790
	movs r5, #0xff
_0805FA7E:
	bl sub_08061E30
	bl sub_08060FA0
	b _0805FC88
	.align 2, 0
_0805FA88: .4byte 0x00440024
_0805FA8C: .4byte 0x00440025
_0805FA90:
	movs r0, #1
	bl sub_0805EC78
	ldr r0, _0805FAC0 @ =0x0044003E
	bl sub_080062D0
	movs r0, #0
	bl sub_0805EC78
_0805FAA2:
	ldr r0, _0805FAC4 @ =0x03004400
	ldrb r0, [r0, #0xd]
	movs r1, #0
	movs r2, #3
	bl sub_08001BA8
	ldr r1, _0805FAC8 @ =0x02030000
	ldr r0, _0805FACC @ =0x020335B8
	ldr r0, [r0]
	str r0, [r1, #4]
	movs r0, #0x29
	bl sub_08001930
	movs r0, #0x11
	b _0805FC82
	.align 2, 0
_0805FAC0: .4byte 0x0044003E
_0805FAC4: .4byte 0x03004400
_0805FAC8: .4byte 0x02030000
_0805FACC: .4byte 0x020335B8
_0805FAD0:
	movs r0, #1
	bl sub_080059E4
	ldr r5, _0805FB10 @ =0x020335B8
	ldrb r0, [r5, #6]
	cmp r0, #0
	bne _0805FB20
	bl sub_08001F3C
	adds r1, r0, #0
	str r1, [r5]
	movs r0, #1
	bl sub_0805F098
	ldrb r1, [r5, #4]
	movs r0, #1
	bl sub_0805F05C
	ldr r0, _0805FB14 @ =0x00440037
	bl sub_080062D0
	ldr r0, _0805FB18 @ =0x0044002A
	bl sub_080062D0
	ldr r0, _0805FB1C @ =0x0044002B
	bl sub_080062D0
	movs r0, #1
	strb r0, [r5, #6]
	movs r5, #2
	b _0805FC88
	.align 2, 0
_0805FB10: .4byte 0x020335B8
_0805FB14: .4byte 0x00440037
_0805FB18: .4byte 0x0044002A
_0805FB1C: .4byte 0x0044002B
_0805FB20:
	bl sub_08001F3C
	adds r4, r0, #0
	ldr r0, _0805FB58 @ =0x03004400
	ldrb r0, [r0, #0xd]
	bl sub_08001B00
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #1
	bne _0805FB3C
	ldr r0, [r5]
	cmp r0, r4
	blo _0805FB46
_0805FB3C:
	cmp r1, #2
	bne _0805FB64
	ldr r0, [r5]
	cmp r0, r4
	bls _0805FB64
_0805FB46:
	ldr r0, _0805FB5C @ =0x0044002D
	bl sub_080062D0
	ldr r0, _0805FB60 @ =0x00440030
	bl sub_080062D0
_0805FB52:
	movs r5, #5
	b _0805FC88
	.align 2, 0
_0805FB58: .4byte 0x03004400
_0805FB5C: .4byte 0x0044002D
_0805FB60: .4byte 0x00440030
_0805FB64:
	ldr r0, _0805FBAC @ =0x0044002C
	bl sub_080062D0
	ldr r4, _0805FBB0 @ =0x020335B8
	ldrh r1, [r4, #4]
	adds r1, #1
	strh r1, [r4, #4]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r0, #1
	bl sub_0805F05C
	ldrh r1, [r4, #4]
	cmp r1, #0x63
	bhi _0805FB52
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r0, #1
	bl sub_0805F05C
	ldr r0, _0805FBB4 @ =0x0044002E
	bl sub_080062D0
	ldr r0, _0805FBB8 @ =0x0044002F
	bl sub_0800648C
	bl sub_080064F8
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805FB52
	ldr r0, _0805FBBC @ =0x00440038
	bl sub_080062D0
	movs r5, #2
	b _0805FC88
	.align 2, 0
_0805FBAC: .4byte 0x0044002C
_0805FBB0: .4byte 0x020335B8
_0805FBB4: .4byte 0x0044002E
_0805FBB8: .4byte 0x0044002F
_0805FBBC: .4byte 0x00440038
_0805FBC0:
	ldr r4, _0805FBDC @ =0x020335B8
	ldrh r0, [r4, #4]
	cmp r0, #0x63
	bhi _0805FBE8
	adds r1, r0, #0
	movs r0, #0
	bl sub_08005C10
	ldr r0, _0805FBE0 @ =0x00440039
	bl sub_080062D0
	ldr r0, _0805FBE4 @ =0x00440031
	b _0805FC56
	.align 2, 0
_0805FBDC: .4byte 0x020335B8
_0805FBE0: .4byte 0x00440039
_0805FBE4: .4byte 0x00440031
_0805FBE8:
	movs r0, #0
	bl sub_080077D4
	movs r0, #0x71
	bl m4aSongNumStart
	movs r0, #1
	bl sub_08007828
	movs r0, #8
	bl sub_080077C4
	ldr r0, _0805FC40 @ =0x0044003A
	bl sub_080062D0
	ldr r0, _0805FC44 @ =0x0044003B
	bl sub_080062D0
	ldr r0, _0805FC48 @ =0x0044003C
	bl sub_080062D0
	ldr r0, _0805FC4C @ =0x0044002F
	bl sub_0800648C
	bl sub_080064F8
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805FC54
	ldr r0, _0805FC50 @ =0x03004400
	ldrb r0, [r0, #0xd]
	strb r0, [r4, #7]
	movs r0, #0x24
	bl sub_08001B64
	movs r0, #0x29
	bl sub_08001930
	movs r0, #0x11
	bl sub_08008790
	movs r5, #0xff
	b _0805FC5C
	.align 2, 0
_0805FC40: .4byte 0x0044003A
_0805FC44: .4byte 0x0044003B
_0805FC48: .4byte 0x0044003C
_0805FC4C: .4byte 0x0044002F
_0805FC50: .4byte 0x03004400
_0805FC54:
	ldr r0, _0805FC64 @ =0x0044003D
_0805FC56:
	bl sub_080062D0
	movs r5, #6
_0805FC5C:
	bl sub_08005A2C
	b _0805FC88
	.align 2, 0
_0805FC64: .4byte 0x0044003D
_0805FC68:
	ldr r0, _0805FC7C @ =0x00440032
	bl sub_0800648C
	bl sub_080064F8
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805FC80
	movs r5, #1
	b _0805FC88
	.align 2, 0
_0805FC7C: .4byte 0x00440032
_0805FC80:
	movs r0, #0x2a
_0805FC82:
	bl sub_08008790
	movs r5, #0xff
_0805FC88:
	lsls r0, r5, #0x18
	asrs r2, r0, #0x18
	movs r1, #1
	rsbs r1, r1, #0
	adds r6, r0, #0
	cmp r2, r1
	beq _0805FC9E
	movs r0, #1
	bl sub_08002B98
	b _0805F918
_0805FC9E:
	bl sub_08005A2C
	ldr r0, _0805FCD4 @ =0x03004400
	ldrb r0, [r0, #9]
	cmp r0, #0x11
	bne _0805FCB2
	movs r0, #0
	movs r1, #0x20
	bl sub_080077EC
_0805FCB2:
	movs r0, #0x20
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl sub_080089E8
	bl sub_08008D34
	bl sub_080607BC
	bl sub_08002B0C
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805FCD4: .4byte 0x03004400

	thumb_func_start sub_0805FCD8
sub_0805FCD8: @ 0x0805FCD8
	push {r4, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	cmp r0, #1
	bne _0805FD10
	cmp r4, #1
	bls _0805FD5A
	cmp r4, #2
	bne _0805FCFA
	bl sub_08007748
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #5
	bhi _0805FD5A
_0805FCFA:
	subs r0, r4, #3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _0805FD56
	bl sub_0805F3AC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805FD5A
	b _0805FD56
_0805FD10:
	cmp r0, #2
	bne _0805FD5A
	cmp r4, #0
	bne _0805FD24
	bl sub_08007724
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xe
	bhi _0805FD5A
_0805FD24:
	cmp r4, #1
	bne _0805FD32
	bl sub_08007754
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805FD5A
_0805FD32:
	cmp r4, #2
	bne _0805FD42
	bl sub_0800773C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bhi _0805FD5A
_0805FD42:
	cmp r4, #3
	bne _0805FD52
	bl sub_08007748
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #5
	bhi _0805FD5A
_0805FD52:
	cmp r4, #4
	beq _0805FD5A
_0805FD56:
	movs r0, #0
	b _0805FD5C
_0805FD5A:
	movs r0, #1
_0805FD5C:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0805FD64
sub_0805FD64: @ 0x0805FD64
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	adds r4, r1, #0
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r1, _0805FDB0 @ =0x0808FE9C
	mov r0, sp
	movs r2, #3
	bl memcpy
	add r6, sp, #4
	ldr r1, _0805FDB4 @ =0x0808FEA0
	adds r0, r6, #0
	movs r2, #6
	bl memcpy
	add r5, sp, #0xc
	ldr r1, _0805FDB8 @ =0x0808FEA6
	adds r0, r5, #0
	movs r2, #3
	bl memcpy
	mov r8, r4
	movs r0, #0xff
	str r0, [sp, #0x10]
	cmp r7, #1
	beq _0805FDCC
	cmp r7, #1
	bgt _0805FDBC
	cmp r7, #0
	beq _0805FDC2
	b _0805FDC0
	.align 2, 0
_0805FDB0: .4byte 0x0808FE9C
_0805FDB4: .4byte 0x0808FEA0
_0805FDB8: .4byte 0x0808FEA6
_0805FDBC:
	cmp r7, #2
	beq _0805FDD8
_0805FDC0:
	movs r7, #0
_0805FDC2:
	ldr r1, _0805FDC8 @ =0x0808FD98
	mov sl, r1
	b _0805FDDC
	.align 2, 0
_0805FDC8: .4byte 0x0808FD98
_0805FDCC:
	ldr r2, _0805FDD4 @ =0x0808FDE8
	mov sl, r2
	b _0805FDDC
	.align 2, 0
_0805FDD4: .4byte 0x0808FDE8
_0805FDD8:
	ldr r3, _0805FE08 @ =0x0808FE38
	mov sl, r3
_0805FDDC:
	ldr r1, _0805FE0C @ =0x03004400
	movs r0, #0
	strb r0, [r1, #5]
	bl sub_08060708
	mov r1, sp
	adds r0, r1, r7
	ldrb r0, [r0]
	bl sub_080607FC
	bl sub_08060F4C
	bl sub_08061830
	cmp r7, #1
	beq _0805FE44
	cmp r7, #1
	bgt _0805FE10
	cmp r7, #0
	beq _0805FE16
	b _0805FE94
	.align 2, 0
_0805FE08: .4byte 0x0808FE38
_0805FE0C: .4byte 0x03004400
_0805FE10:
	cmp r7, #2
	beq _0805FE7A
	b _0805FE94
_0805FE16:
	movs r0, #0
	bl sub_08060B9C
	movs r0, #0
	movs r1, #0x60
	movs r2, #0x68
	bl sub_08060C3C
	movs r0, #0
	movs r1, #0
	movs r2, #0xff
	bl sub_08060D40
	movs r0, #2
	bl sub_08060B9C
	movs r0, #2
	movs r1, #0x90
	movs r2, #0x68
	bl sub_08060C3C
	movs r0, #2
	b _0805FE70
_0805FE44:
	movs r0, #0
	bl sub_08060B9C
	movs r0, #0
	movs r1, #0x60
	movs r2, #0x68
	bl sub_08060C3C
	movs r0, #0
	movs r1, #0
	movs r2, #0xff
	bl sub_08060D40
	movs r0, #1
	bl sub_08060B9C
	movs r0, #1
	movs r1, #0x90
	movs r2, #0x68
	bl sub_08060C3C
	movs r0, #1
_0805FE70:
	movs r1, #0
	movs r2, #0xff
	bl sub_08060D40
	b _0805FE94
_0805FE7A:
	movs r0, #1
	bl sub_08060B9C
	movs r0, #1
	movs r1, #0x78
	movs r2, #0x68
	bl sub_08060C3C
	movs r0, #1
	movs r1, #0
	movs r2, #0xff
	bl sub_08060D40
_0805FE94:
	cmp r7, #2
	bne _0805FEAC
	bl sub_080614E8
	ldr r0, _0805FEF4 @ =0x03004400
	ldr r0, [r0, #0x10]
	bl sub_08061560
	movs r0, #0x50
	movs r1, #0
	bl sub_080615F0
_0805FEAC:
	movs r0, #1
	bl sub_08005A88
	lsls r0, r7, #1
	adds r0, r6, r0
	ldrh r0, [r0]
	bl sub_080077C4
	movs r0, #0x20
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl sub_08008AF4
	ldr r0, _0805FEF8 @ =0x030024E0
	adds r0, #0x4f
	movs r1, #1
	strb r1, [r0]
	bl sub_08008D34
	ldr r0, _0805FEF4 @ =0x03004400
	ldrb r0, [r0, #0xa]
	cmp r0, #0x24
	beq _0805FEDE
	b _08060048
_0805FEDE:
	adds r0, r5, r7
	ldrb r0, [r0]
	bl sub_080059E4
	cmp r7, #1
	beq _0805FF78
	cmp r7, #1
	bgt _0805FEFC
	cmp r7, #0
	beq _0805FF02
	b _08060044
	.align 2, 0
_0805FEF4: .4byte 0x03004400
_0805FEF8: .4byte 0x030024E0
_0805FEFC:
	cmp r7, #2
	beq _0805FF90
	b _08060044
_0805FF02:
	bl sub_08007718
	adds r4, r0, #0
	bl sub_08007724
	adds r4, r4, r0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _0805FF28 @ =0x00470022
	bl sub_080062D0
	lsls r0, r4, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x1e
	bgt _0805FF30
	ldr r0, _0805FF2C @ =0x00470023
	bl sub_080062D0
	b _08060044
	.align 2, 0
_0805FF28: .4byte 0x00470022
_0805FF2C: .4byte 0x00470023
_0805FF30:
	cmp r0, #0x3c
	bgt _0805FF4C
	ldr r0, _0805FF44 @ =0x00470023
	bl sub_080062D0
	ldr r0, _0805FF48 @ =0x00470024
	bl sub_080062D0
	b _08060044
	.align 2, 0
_0805FF44: .4byte 0x00470023
_0805FF48: .4byte 0x00470024
_0805FF4C:
	cmp r0, #0x5a
	bgt _0805FF5C
	ldr r0, _0805FF58 @ =0x00470025
	bl sub_080062D0
	b _08060044
	.align 2, 0
_0805FF58: .4byte 0x00470025
_0805FF5C:
	cmp r0, #0x6d
	bgt _0805FF6C
	ldr r0, _0805FF68 @ =0x00470026
	bl sub_080062D0
	b _08060044
	.align 2, 0
_0805FF68: .4byte 0x00470026
_0805FF6C:
	ldr r0, _0805FF74 @ =0x00470027
	bl sub_080062D0
	b _08060044
	.align 2, 0
_0805FF74: .4byte 0x00470027
_0805FF78:
	ldr r0, _0805FF88 @ =0x0047002F
	bl sub_080062D0
	ldr r0, _0805FF8C @ =0x00470030
	bl sub_080062D0
	b _08060044
	.align 2, 0
_0805FF88: .4byte 0x0047002F
_0805FF8C: .4byte 0x00470030
_0805FF90:
	bl sub_08007724
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r0, _0805FFAC @ =0x00470028
	bl sub_080062D0
	cmp r4, #0
	bne _0805FFB4
	ldr r0, _0805FFB0 @ =0x00470029
	bl sub_080062D0
	b _0805FFBA
	.align 2, 0
_0805FFAC: .4byte 0x00470028
_0805FFB0: .4byte 0x00470029
_0805FFB4:
	ldr r0, _080600BC @ =0x0047002A
	bl sub_080062D0
_0805FFBA:
	movs r0, #1
	bl sub_080077A4
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805FFDA
	lsls r0, r4, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xe
	ble _0805FFDA
	ldr r0, _080600C0 @ =0x0047002B
	bl sub_080062D0
	movs r0, #1
	bl sub_08007790
_0805FFDA:
	movs r0, #2
	bl sub_080077A4
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805FFFC
	bl sub_08007754
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0805FFFC
	ldr r0, _080600C4 @ =0x0047002C
	bl sub_080062D0
	movs r0, #2
	bl sub_08007790
_0805FFFC:
	movs r0, #4
	bl sub_080077A4
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08060020
	bl sub_0800773C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bls _08060020
	ldr r0, _080600C8 @ =0x0047002D
	bl sub_080062D0
	movs r0, #4
	bl sub_08007790
_08060020:
	movs r0, #8
	bl sub_080077A4
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08060044
	bl sub_08007748
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #5
	bls _08060044
	ldr r0, _080600CC @ =0x0047002E
	bl sub_080062D0
	movs r0, #8
	bl sub_08007790
_08060044:
	bl sub_08005A2C
_08060048:
	movs r5, #0
	mov r2, r8
	lsls r6, r2, #0x18
	ldr r3, _080600D0 @ =0x0808FE88
	mov sb, r3
_08060052:
	lsls r4, r5, #0x18
	lsrs r5, r4, #0x18
	asrs r4, r4, #0x18
	lsls r0, r4, #4
	add r0, sl
	ldrb r1, [r0]
	lsls r0, r4, #2
	add r0, sb
	movs r3, #0
	ldrsh r2, [r0, r3]
	str r2, [sp, #0x14]
	movs r3, #2
	ldrsh r2, [r0, r3]
	mov ip, r2
	adds r0, r5, #0
	ldr r2, [sp, #0x14]
	mov r3, ip
	bl sub_08061890
	adds r0, r5, #0
	bl sub_08061BDC
	adds r4, #1
	lsls r4, r4, #0x18
	lsrs r5, r4, #0x18
	asrs r4, r4, #0x18
	cmp r4, #4
	ble _08060052
	bl sub_08061C0C
	ldr r1, _080600D0 @ =0x0808FE88
	asrs r0, r6, #0x16
	adds r0, r0, r1
	ldrh r1, [r0]
	subs r1, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldrh r2, [r0, #2]
	subs r2, #0x20
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r0, #0
	bl sub_0806104C
	movs r0, #0
	bl sub_080613CC
	bl sub_08005934
	movs r0, #1
	bl sub_08005AC0
	b _0806021E
	.align 2, 0
_080600BC: .4byte 0x0047002A
_080600C0: .4byte 0x0047002B
_080600C4: .4byte 0x0047002C
_080600C8: .4byte 0x0047002D
_080600CC: .4byte 0x0047002E
_080600D0: .4byte 0x0808FE88
_080600D4:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08060156
	lsrs r1, r6, #0x18
	adds r0, r7, #0
	bl sub_0805FCD8
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08060150
	cmp r7, #1
	beq _0806010C
	cmp r7, #1
	bgt _080600F8
	cmp r7, #0
	beq _080600FE
	b _0806013A
_080600F8:
	cmp r7, #2
	beq _08060130
	b _0806013A
_080600FE:
	asrs r0, r6, #0x18
	cmp r0, #1
	bgt _08060108
	movs r0, #0
	b _08060126
_08060108:
	movs r0, #2
	b _08060126
_0806010C:
	asrs r0, r6, #0x18
	cmp r0, #3
	bne _08060116
	movs r0, #0
	b _08060126
_08060116:
	cmp r0, #4
	beq _08060124
	movs r0, #0
	movs r1, #2
	movs r2, #0xff
	bl sub_08060D40
_08060124:
	movs r0, #1
_08060126:
	movs r1, #2
	movs r2, #0xff
	bl sub_08060D40
	b _0806013A
_08060130:
	movs r0, #1
	movs r1, #2
	movs r2, #0xff
	bl sub_08060D40
_0806013A:
	movs r0, #0xcc
	bl m4aSongNumStart
	mov r1, r8
	lsls r0, r1, #0x18
	asrs r0, r0, #0x14
	add r0, sl
	ldrb r0, [r0, #1]
	bl sub_08008790
	b _08060242
_08060150:
	movs r0, #0xd2
	bl m4aSongNumStart
_08060156:
	ldr r0, _08060180 @ =0x030024B0
	ldrh r1, [r0, #4]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08060184
	movs r0, #0xca
	bl m4aSongNumStart
	mov r2, r8
	lsls r0, r2, #0x18
	movs r3, #0xff
	lsls r3, r3, #0x18
	adds r0, r0, r3
	lsrs r1, r0, #0x18
	mov r8, r1
	cmp r0, #0
	bge _080601AA
	movs r2, #4
	mov r8, r2
	b _080601AA
	.align 2, 0
_08060180: .4byte 0x030024B0
_08060184:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080601AA
	movs r0, #0xca
	bl m4aSongNumStart
	mov r3, r8
	lsls r0, r3, #0x18
	movs r1, #0x80
	lsls r1, r1, #0x11
	adds r0, r0, r1
	lsrs r2, r0, #0x18
	mov r8, r2
	asrs r0, r0, #0x18
	cmp r0, #4
	ble _080601AA
	movs r3, #0
	mov r8, r3
_080601AA:
	ldr r0, [sp, #0x10]
	lsls r1, r0, #0x18
	mov r2, r8
	lsls r0, r2, #0x18
	asrs r5, r0, #0x18
	adds r6, r0, #0
	cmp r1, r6
	beq _08060218
	lsrs r0, r1, #0x18
	bl sub_08061C80
	lsrs r4, r6, #0x18
	adds r0, r4, #0
	bl sub_08061C34
	ldr r0, _0806020C @ =0x0808FE88
	lsls r1, r5, #2
	adds r1, r1, r0
	ldrh r0, [r1]
	subs r0, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r1, #2]
	subs r1, #0x20
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_08061140
	lsls r0, r5, #4
	mov r3, sl
	adds r5, r0, r3
	ldrb r0, [r5, #0xc]
	bl sub_08006744
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_0805FCD8
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08060202
	ldr r0, [r5, #8]
	cmp r0, #0
	bne _08060210
_08060202:
	ldr r0, [r5, #4]
	bl sub_080062D0
	b _08060214
	.align 2, 0
_0806020C: .4byte 0x0808FE88
_08060210:
	bl sub_080062D0
_08060214:
	lsrs r0, r6, #0x18
	str r0, [sp, #0x10]
_08060218:
	movs r0, #1
	bl sub_08002B98
_0806021E:
	ldr r0, _0806025C @ =0x030024B0
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0806022C
	b _080600D4
_0806022C:
	movs r0, #0xce
	bl m4aSongNumStart
	mov r0, r8
	bl sub_08061C80
	movs r0, #0x24
	bl sub_08008790
	movs r1, #0xff
	mov r8, r1
_08060242:
	bl sub_08061108
	movs r5, #0
	mov r2, r8
	lsls r6, r2, #0x18
_0806024C:
	lsls r0, r5, #0x18
	cmp r0, r6
	bne _08060260
	lsrs r0, r0, #0x18
	bl sub_08061BFC
	b _08060266
	.align 2, 0
_0806025C: .4byte 0x030024B0
_08060260:
	lsrs r0, r0, #0x18
	bl sub_08061BEC
_08060266:
	lsls r0, r5, #0x18
	movs r3, #0x80
	lsls r3, r3, #0x11
	adds r0, r0, r3
	lsrs r5, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #4
	ble _0806024C
	bl sub_08061C0C
	movs r5, #0
_0806027C:
	lsls r4, r5, #0x18
	lsrs r0, r4, #0x18
	bl sub_08061978
	movs r0, #0x80
	lsls r0, r0, #0x11
	adds r4, r4, r0
	lsrs r5, r4, #0x18
	asrs r4, r4, #0x18
	cmp r4, #4
	ble _0806027C
	bl sub_08005ACC
	bl sub_08005B18
	bl sub_08005A2C
	bl sub_08061490
	ldr r0, _080602B8 @ =0x03004400
	ldrb r0, [r0, #9]
	subs r0, #0xa
	cmp r0, #0x1a
	bhi _08060334
	lsls r0, r0, #2
	ldr r1, _080602BC @ =_080602C0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080602B8: .4byte 0x03004400
_080602BC: .4byte _080602C0
_080602C0: @ jump table
	.4byte _0806032C @ case 0
	.4byte _0806032C @ case 1
	.4byte _08060334 @ case 2
	.4byte _0806032C @ case 3
	.4byte _0806032C @ case 4
	.4byte _08060334 @ case 5
	.4byte _08060334 @ case 6
	.4byte _08060334 @ case 7
	.4byte _08060334 @ case 8
	.4byte _08060334 @ case 9
	.4byte _0806032C @ case 10
	.4byte _0806032C @ case 11
	.4byte _08060334 @ case 12
	.4byte _08060334 @ case 13
	.4byte _08060334 @ case 14
	.4byte _08060334 @ case 15
	.4byte _08060334 @ case 16
	.4byte _08060334 @ case 17
	.4byte _08060334 @ case 18
	.4byte _08060334 @ case 19
	.4byte _08060334 @ case 20
	.4byte _08060334 @ case 21
	.4byte _08060334 @ case 22
	.4byte _08060334 @ case 23
	.4byte _08060334 @ case 24
	.4byte _08060334 @ case 25
	.4byte _0806032C @ case 26
_0806032C:
	movs r0, #0
	movs r1, #0x20
	bl sub_080077EC
_08060334:
	movs r0, #0x20
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl sub_080089E8
	bl sub_08008D34
	cmp r7, #2
	bne _0806034C
	bl sub_08061534
_0806034C:
	cmp r7, #1
	beq _0806037A
	cmp r7, #1
	bgt _0806035A
	cmp r7, #0
	beq _08060360
	b _080603A0
_0806035A:
	cmp r7, #2
	beq _08060394
	b _080603A0
_08060360:
	movs r0, #0
	bl sub_08060CEC
	movs r0, #0
	bl sub_08060C0C
	movs r0, #2
	bl sub_08060CEC
	movs r0, #2
	bl sub_08060C0C
	b _080603A0
_0806037A:
	movs r0, #0
	bl sub_08060CEC
	movs r0, #0
	bl sub_08060C0C
	movs r0, #1
	bl sub_08060CEC
	movs r0, #1
	bl sub_08060C0C
	b _080603A0
_08060394:
	movs r0, #1
	bl sub_08060CEC
	movs r0, #1
	bl sub_08060C0C
_080603A0:
	bl sub_08061874
	bl sub_08060F64
	bl sub_080607BC
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
