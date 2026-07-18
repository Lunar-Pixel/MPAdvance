	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .text
	.ARM
	.syntax unified

	thumb_func_start sub_08046834
sub_08046834: @ 0x08046834
	push {lr}
	sub sp, #4
	ldr r1, _08046850 @ =0x0808DC24
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
_08046850: .4byte 0x0808DC24

	thumb_func_start sub_08046854
sub_08046854: @ 0x08046854
	push {r4, lr}
	sub sp, #0xc
	movs r0, #0
	movs r1, #0
	movs r2, #6
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #0x68
	bl EventPlaceChara_08041894
	bl sub_080407FC
	mov r1, sp
	ldr r0, _080468B4 @ =0x0808DC28
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	movs r0, #0
	movs r1, #0
	mov r2, sp
	bl sub_08041D0C
	bl EventWinInit_08040fe8
	movs r0, #9
	bl EventWinSpeakerSet_08041018
	movs r0, #0x80
	lsls r0, r0, #9
	bl EventWinMesSet_08041058
	ldr r0, _080468B8 @ =0x00010001
	bl EventWinMesSet_08041058
	ldr r0, _080468BC @ =0x00010002
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080468C4
	ldr r0, _080468C0 @ =0x00010003
	bl EventWinMesSet_08041058
	b _08046C90
	.align 2, 0
_080468B4: .4byte 0x0808DC28
_080468B8: .4byte 0x00010001
_080468BC: .4byte 0x00010002
_080468C0: .4byte 0x00010003
_080468C4:
	movs r0, #0
	bl sub_08041DE0
	ldr r1, _08046BD0 @ =0x00010004
	movs r0, #0
	bl EventQuestTitle_080408C4
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080468DA
	b _08046C90
_080468DA:
	movs r0, #0x10
	bl EventBGMPlay_080410A8
	movs r0, #0
	movs r1, #0
	movs r2, #7
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0
	bl EventSetFlag_080406E4
	bl EventWinInit_08040fe8
	movs r0, #9
	bl EventWinSpeakerSet_08041018
	ldr r0, _08046BD4 @ =0x00010005
	bl EventWinMesSet_08041058
	ldr r0, _08046BD8 @ =0x00010006
	bl EventWinMesSet_08041058
	movs r0, #0x36
	bl EventWinSpeakerSet_08041018
	ldr r0, _08046BDC @ =0x00010007
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r4, _08046BE0 @ =0x0000011B
	adds r0, r4, #0
	bl EventPlaySFX_080410E0
	movs r0, #0
	movs r1, #0x78
	movs r2, #0x58
	movs r3, #8
	bl sub_08041938
	movs r0, #0
	movs r1, #0x78
	movs r2, #0x68
	movs r3, #8
	bl sub_08041938
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #0xb
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #1
	movs r1, #0x58
	movs r2, #0x68
	movs r3, #0x78
	bl sub_08041938
	movs r0, #1
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _08046BE4 @ =0x00010008
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #5
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #9
	bl EventWinSpeakerSet_08041018
	ldr r0, _08046BE8 @ =0x00010009
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #0xc
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0x36
	bl EventWinSpeakerSet_08041018
	ldr r0, _08046BEC @ =0x0001000A
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #5
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #9
	bl EventWinSpeakerSet_08041018
	ldr r0, _08046BF0 @ =0x0001000B
	bl EventWinMesSet_08041058
	ldr r0, _08046BF4 @ =0x0001000C
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0x36
	bl EventWinSpeakerSet_08041018
	ldr r0, _08046BF8 @ =0x0001000D
	bl EventWinMesSet_08041058
	movs r0, #9
	bl EventWinSpeakerSet_08041018
	ldr r0, _08046BFC @ =0x0001000E
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0xd
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0x36
	bl EventWinSpeakerSet_08041018
	ldr r0, _08046C00 @ =0x0001000F
	bl EventWinMesSet_08041058
	movs r0, #9
	bl EventWinSpeakerSet_08041018
	ldr r0, _08046C04 @ =0x00010010
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #5
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _08046C08 @ =0x00010011
	bl EventWinMesSet_08041058
	movs r0, #3
	movs r1, #0x60
	movs r2, #0x40
	bl EventPlaceChara_08041894
	movs r0, #3
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #3
	movs r1, #1
	bl sub_08041808
	movs r0, #0x78
	bl EventSleep_08040690
	movs r0, #3
	movs r1, #0
	bl sub_08041808
	movs r0, #1
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0x36
	bl EventWinSpeakerSet_08041018
	ldr r0, _08046C0C @ =0x00010012
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #9
	bl EventWinSpeakerSet_08041018
	ldr r0, _08046C10 @ =0x00010013
	bl EventWinMesSet_08041058
	ldr r0, _08046C14 @ =0x00010014
	bl EventWinMesSet_08041058
	ldr r0, _08046C18 @ =sub_08046834
	bl RunEventScript_0804066C
	movs r0, #0x3c
	bl EventSleep_08040690
	movs r0, #1
	movs r1, #0
	movs r2, #0xd
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0x36
	bl EventWinSpeakerSet_08041018
	ldr r0, _08046C1C @ =0x00010015
	bl EventWinMesSet_08041058
	bl sub_08041F3C
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	adds r0, r4, #0
	bl EventPlaySFX_080410E0
	movs r0, #0
	movs r1, #0x78
	movs r2, #0x58
	movs r3, #8
	bl sub_08041938
	movs r0, #0
	movs r1, #0x78
	movs r2, #0x68
	movs r3, #8
	bl sub_08041938
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #9
	bl EventWinSpeakerSet_08041018
	ldr r0, _08046C20 @ =0x00010016
	bl EventWinMesSet_08041058
	movs r0, #0x36
	bl EventWinSpeakerSet_08041018
	ldr r0, _08046C24 @ =0x00010017
	bl EventWinMesSet_08041058
	movs r0, #9
	bl EventWinSpeakerSet_08041018
	ldr r0, _08046C28 @ =0x00010018
	bl EventWinMesSet_08041058
	movs r0, #0x36
	bl EventWinSpeakerSet_08041018
	ldr r0, _08046C2C @ =0x00010019
	bl EventWinMesSet_08041058
	movs r0, #3
	movs r1, #0x60
	movs r2, #0x40
	bl EventPlaceChara_08041894
	movs r0, #3
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #3
	movs r1, #1
	bl sub_08041808
	movs r0, #0x78
	bl EventSleep_08040690
	movs r0, #3
	movs r1, #0
	bl sub_08041808
	movs r0, #1
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _08046C30 @ =0x0001001A
	bl EventWinMesSet_08041058
	movs r0, #9
	bl EventWinSpeakerSet_08041018
	ldr r0, _08046C34 @ =0x0001001B
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0x36
	bl EventWinSpeakerSet_08041018
	bl GetCharacterID_080408B8
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r0, #8
	bl sub_08005BE0
	ldr r0, _08046C38 @ =0x0001001C
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0xc
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _08046C3C @ =0x0001001D
	bl EventWinMesSet_08041058
	ldr r0, _08046C40 @ =0x0001001E
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08046C48
	movs r0, #1
	movs r1, #0
	movs r2, #0xc
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _08046C44 @ =0x0001001F
	bl EventWinMesSet_08041058
	b _08046C60
	.align 2, 0
_08046BD0: .4byte 0x00010004
_08046BD4: .4byte 0x00010005
_08046BD8: .4byte 0x00010006
_08046BDC: .4byte 0x00010007
_08046BE0: .4byte 0x0000011B
_08046BE4: .4byte 0x00010008
_08046BE8: .4byte 0x00010009
_08046BEC: .4byte 0x0001000A
_08046BF0: .4byte 0x0001000B
_08046BF4: .4byte 0x0001000C
_08046BF8: .4byte 0x0001000D
_08046BFC: .4byte 0x0001000E
_08046C00: .4byte 0x0001000F
_08046C04: .4byte 0x00010010
_08046C08: .4byte 0x00010011
_08046C0C: .4byte 0x00010012
_08046C10: .4byte 0x00010013
_08046C14: .4byte 0x00010014
_08046C18: .4byte sub_08046834
_08046C1C: .4byte 0x00010015
_08046C20: .4byte 0x00010016
_08046C24: .4byte 0x00010017
_08046C28: .4byte 0x00010018
_08046C2C: .4byte 0x00010019
_08046C30: .4byte 0x0001001A
_08046C34: .4byte 0x0001001B
_08046C38: .4byte 0x0001001C
_08046C3C: .4byte 0x0001001D
_08046C40: .4byte 0x0001001E
_08046C44: .4byte 0x0001001F
_08046C48:
	movs r0, #1
	movs r1, #0
	movs r2, #0xe
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _08046C98 @ =0x00010022
	bl EventWinMesSet_08041058
	ldr r0, _08046C9C @ =0x00010023
	bl EventWinMesSet_08041058
_08046C60:
	ldr r0, _08046CA0 @ =0x00010020
	bl EventWinMesSet_08041058
	ldr r0, _08046CA4 @ =sub_08046834
	bl RunEventScript_0804066C
	ldr r0, _08046CA8 @ =0x00010021
	bl EventWinMesSet_08041058
	movs r0, #7
	bl SetCharacterMetFlag_0802D7CC
	movs r0, #0x1a
	bl SetCharacterMetFlag_0802D7CC
	movs r0, #0xd
	bl SetCharacterMetFlag_0802D7CC
	movs r0, #0x1b
	bl SetCharacterMetFlag_0802D7CC
	movs r0, #0
	bl SetCharacterMetFlag_0802D7CC
_08046C90:
	add sp, #0xc
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08046C98: .4byte 0x00010022
_08046C9C: .4byte 0x00010023
_08046CA0: .4byte 0x00010020
_08046CA4: .4byte sub_08046834
_08046CA8: .4byte 0x00010021

	thumb_func_start sub_08046CAC
sub_08046CAC: @ 0x08046CAC
	push {lr}
	movs r0, #1
	movs r1, #0x58
	movs r2, #0x68
	bl EventPlaceChara_08041894
	bl sub_080407FC
	bl EventWinInit_08040fe8
	movs r0, #0x36
	bl EventWinSpeakerSet_08041018
	ldr r0, _08046D14 @ =0x00010024
	bl EventWinMesSet_08041058
	movs r0, #3
	movs r1, #0x60
	movs r2, #0x40
	bl EventPlaceChara_08041894
	movs r0, #3
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #3
	movs r1, #1
	bl sub_08041808
	ldr r0, _08046D18 @ =0x0000011F
	bl EventPlaySFX_080410E0
	movs r0, #0x5a
	bl EventSleep_08040690
	movs r0, #3
	movs r1, #0
	bl sub_08041808
	ldr r0, _08046D1C @ =0x00010025
	bl EventWinMesSet_08041058
	ldr r0, _08046D20 @ =sub_08046834
	bl RunEventScript_0804066C
	ldr r0, _08046D24 @ =0x00010021
	bl EventWinMesSet_08041058
	pop {r0}
	bx r0
	.align 2, 0
_08046D14: .4byte 0x00010024
_08046D18: .4byte 0x0000011F
_08046D1C: .4byte 0x00010025
_08046D20: .4byte sub_08046834
_08046D24: .4byte 0x00010021

	thumb_func_start sub_08046D28
sub_08046D28: @ 0x08046D28
	push {r4, lr}
	sub sp, #4
	ldr r1, _08047114 @ =0x0808DC24
	mov r0, sp
	movs r2, #3
	bl memcpy
	ldr r2, _08047118 @ =0x0808E92C
	movs r0, #2
	movs r1, #0
	bl LoadCharSprite_080415A0
	movs r0, #2
	movs r1, #0
	bl sub_08041734
	movs r0, #2
	movs r1, #0
	movs r2, #0x50
	bl EventPlaceChara_08041894
	movs r0, #2
	movs r1, #0
	movs r2, #2
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #1
	movs r1, #0x58
	movs r2, #0x68
	bl EventPlaceChara_08041894
	movs r0, #1
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl EventAnimateChara_080418C8
	bl sub_080407FC
	movs r0, #0x3c
	bl EventSleep_08040690
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	bl EventWinInit_08040fe8
	movs r0, #0
	movs r1, #0
	movs r2, #4
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #9
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804711C @ =0x0001003F
	bl EventWinMesSet_08041058
	movs r0, #0x36
	bl EventWinSpeakerSet_08041018
	ldr r0, _08047120 @ =0x00010040
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #0xd
	movs r3, #0
	bl EventAnimateChara_080418C8
	bl sub_08041008
	movs r0, #3
	movs r1, #0x60
	movs r2, #0x40
	bl EventPlaceChara_08041894
	movs r0, #3
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #3
	movs r1, #1
	bl sub_08041808
	movs r0, #0xa0
	bl EventSleep_08040690
	movs r0, #3
	movs r1, #0
	bl sub_08041808
	bl EventWinInit_08040fe8
	movs r0, #0x36
	bl EventWinSpeakerSet_08041018
	ldr r0, _08047124 @ =0x00010041
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r4, _08047128 @ =0x0000011B
	adds r0, r4, #0
	bl EventPlaySFX_080410E0
	movs r0, #0
	movs r1, #0x78
	movs r2, #0x58
	movs r3, #8
	bl sub_08041938
	movs r0, #0
	movs r1, #0x78
	movs r2, #0x68
	movs r3, #8
	bl sub_08041938
	movs r0, #9
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804712C @ =0x00010042
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0x36
	bl EventWinSpeakerSet_08041018
	ldr r0, _08047130 @ =0x00010043
	bl EventWinMesSet_08041058
	bl GetCharacterID_080408B8
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r0, #8
	bl sub_08005BE0
	movs r0, #1
	movs r1, #0
	movs r2, #0xc
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _08047134 @ =0x00010044
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0xd
	movs r3, #0
	bl EventAnimateChara_080418C8
	mov r0, sp
	movs r1, #3
	bl sub_08041F9C
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	beq _08046EB2
	b _08047260
_08046EB2:
	movs r0, #0x3c
	bl EventSleep_08040690
	movs r0, #3
	movs r1, #0x60
	movs r2, #0x40
	bl EventPlaceChara_08041894
	movs r0, #3
	movs r1, #0
	movs r2, #0xa
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #3
	movs r1, #1
	bl sub_08041808
	movs r0, #0x56
	bl EventSleep_08040690
	ldr r0, _08047138 @ =0x00000125
	bl EventPlaySFX_080410E0
	movs r0, #0x3c
	bl EventSleep_08040690
	movs r0, #3
	movs r1, #0
	bl sub_08041808
	movs r0, #0x36
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804713C @ =0x00010045
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	adds r0, r4, #0
	bl EventPlaySFX_080410E0
	movs r0, #0
	movs r1, #0x78
	movs r2, #0x58
	movs r3, #8
	bl sub_08041938
	movs r0, #0
	movs r1, #0x78
	movs r2, #0x68
	movs r3, #8
	bl sub_08041938
	movs r0, #9
	bl EventWinSpeakerSet_08041018
	ldr r0, _08047140 @ =0x00010046
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0x36
	bl EventWinSpeakerSet_08041018
	ldr r0, _08047144 @ =0x00010047
	bl EventWinMesSet_08041058
	movs r0, #9
	bl EventWinSpeakerSet_08041018
	ldr r0, _08047148 @ =0x00010048
	bl EventWinMesSet_08041058
	movs r0, #0x36
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804714C @ =0x00010049
	bl EventWinMesSet_08041058
	ldr r0, _08047150 @ =0x0001004A
	bl EventWinMesSet_08041058
	ldr r0, _08047154 @ =0x0001004B
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	adds r0, r4, #0
	bl EventPlaySFX_080410E0
	movs r0, #0
	movs r1, #0x78
	movs r2, #0x58
	movs r3, #8
	bl sub_08041938
	movs r0, #0
	movs r1, #0x78
	movs r2, #0x68
	movs r3, #8
	bl sub_08041938
	movs r0, #9
	bl EventWinSpeakerSet_08041018
	ldr r0, _08047158 @ =0x0001004C
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0xc
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0x36
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804715C @ =0x0001004D
	bl EventWinMesSet_08041058
	bl sub_08041008
	movs r0, #2
	movs r1, #0x3c
	movs r2, #0x50
	movs r3, #0x20
	bl sub_08041938
	bl EventWinInit_08040fe8
	movs r0, #0x21
	bl EventWinSpeakerSet_08041018
	ldr r0, _08047160 @ =0x0001004E
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _08047164 @ =0x0001004F
	bl EventWinMesSet_08041058
	ldr r0, _08047168 @ =0x00010050
	bl EventWinMesSet_08041058
	bl sub_08041008
	movs r0, #3
	movs r1, #0x7c
	movs r2, #0x40
	bl EventPlaceChara_08041894
	movs r0, #3
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #3
	movs r1, #1
	bl sub_08041808
	movs r0, #0xa0
	bl EventSleep_08040690
	movs r0, #3
	movs r1, #0
	bl sub_08041808
	movs r0, #0
	movs r1, #0x78
	movs r2, #0x58
	movs r3, #8
	bl sub_08041938
	movs r0, #0
	movs r1, #0x78
	movs r2, #0x68
	movs r3, #8
	bl sub_08041938
	bl EventWinInit_08040fe8
	movs r0, #9
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804716C @ =0x00010051
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _08047170 @ =0x00010052
	bl EventWinMesSet_08041058
	movs r0, #0x21
	bl EventWinSpeakerSet_08041018
	movs r0, #2
	movs r1, #0
	movs r2, #2
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _08047174 @ =0x00010053
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0xc
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0x36
	bl EventWinSpeakerSet_08041018
	ldr r0, _08047178 @ =0x00010054
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #7
	movs r3, #1
	bl EventAnimateChara_080418C8
	movs r0, #9
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804717C @ =0x00010055
	bl EventWinMesSet_08041058
	movs r0, #0x36
	bl EventWinSpeakerSet_08041018
	ldr r0, _08047180 @ =0x00010056
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #7
	movs r3, #1
	bl EventAnimateChara_080418C8
	movs r0, #9
	bl EventWinSpeakerSet_08041018
	ldr r0, _08047184 @ =0x00010057
	bl EventWinMesSet_08041058
	movs r0, #0x21
	bl EventWinSpeakerSet_08041018
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	movs r1, #0
	movs r2, #3
	movs r3, #1
	bl EventAnimateChara_080418C8
	ldr r0, _08047188 @ =0x00010058
	bl EventWinMesSet_08041058
	bl sub_08041008
	movs r0, #2
	movs r1, #0
	movs r2, #1
	movs r3, #0xff
	b _0804718C
	.align 2, 0
_08047114: .4byte 0x0808DC24
_08047118: .4byte 0x0808E92C
_0804711C: .4byte 0x0001003F
_08047120: .4byte 0x00010040
_08047124: .4byte 0x00010041
_08047128: .4byte 0x0000011B
_0804712C: .4byte 0x00010042
_08047130: .4byte 0x00010043
_08047134: .4byte 0x00010044
_08047138: .4byte 0x00000125
_0804713C: .4byte 0x00010045
_08047140: .4byte 0x00010046
_08047144: .4byte 0x00010047
_08047148: .4byte 0x00010048
_0804714C: .4byte 0x00010049
_08047150: .4byte 0x0001004A
_08047154: .4byte 0x0001004B
_08047158: .4byte 0x0001004C
_0804715C: .4byte 0x0001004D
_08047160: .4byte 0x0001004E
_08047164: .4byte 0x0001004F
_08047168: .4byte 0x00010050
_0804716C: .4byte 0x00010051
_08047170: .4byte 0x00010052
_08047174: .4byte 0x00010053
_08047178: .4byte 0x00010054
_0804717C: .4byte 0x00010055
_08047180: .4byte 0x00010056
_08047184: .4byte 0x00010057
_08047188: .4byte 0x00010058
_0804718C:
	bl EventAnimateChara_080418C8
	movs r0, #2
	movs r1, #0
	movs r2, #0x50
	movs r3, #0x20
	bl sub_08041938
	movs r0, #2
	bl sub_080417E0
	movs r0, #2
	movs r1, #0
	bl sub_08041684
	bl EventWinInit_08040fe8
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0x36
	bl EventWinSpeakerSet_08041018
	ldr r0, _08047250 @ =0x00010059
	bl EventWinMesSet_08041058
	ldr r0, _08047254 @ =0x0001005A
	bl EventWinMesSet_08041058
	bl sub_08041008
	movs r0, #1
	movs r1, #0
	movs r2, #7
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #0x68
	movs r3, #0x78
	bl sub_08041938
	movs r0, #1
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #7
	movs r3, #1
	bl EventAnimateChara_080418C8
	bl EventWinInit_08040fe8
	movs r0, #9
	bl EventWinSpeakerSet_08041018
	ldr r0, _08047258 @ =0x0001005B
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0x1f
	movs r1, #0x10
	bl QuestFinish_08042814
	movs r0, #9
	bl EventWinSpeakerSet_08041018
	movs r0, #0
	movs r1, #0
	movs r2, #7
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _0804725C @ =0x0001005C
	bl EventWinMesSet_08041058
	movs r0, #6
	bl SetEventFlag_080406BC
	b _080472F8
	.align 2, 0
_08047250: .4byte 0x00010059
_08047254: .4byte 0x0001005A
_08047258: .4byte 0x0001005B
_0804725C: .4byte 0x0001005C
_08047260:
	movs r0, #3
	movs r1, #0x60
	movs r2, #0x40
	bl EventPlaceChara_08041894
	movs r0, #3
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #3
	movs r1, #1
	bl sub_08041808
	ldr r0, _08047300 @ =0x0000011F
	bl EventPlaySFX_080410E0
	movs r0, #0x5a
	bl EventSleep_08040690
	movs r0, #3
	movs r1, #0
	bl sub_08041808
	movs r0, #0x36
	bl EventWinSpeakerSet_08041018
	ldr r0, _08047304 @ =0x0001005D
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0xe
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _08047308 @ =0x0001005E
	bl EventWinMesSet_08041058
	movs r0, #0x3c
	bl EventSleep_08040690
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #9
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804730C @ =0x0001005F
	bl EventWinMesSet_08041058
	ldr r0, _08047310 @ =0x00010060
	bl EventWinMesSet_08041058
	ldr r0, _08047314 @ =0x00010061
	bl EventWinMesSet_08041058
	movs r0, #0
	bl EventUnsetFlag_080406D0
	movs r0, #1
	bl EventUnsetFlag_080406D0
	movs r0, #2
	bl EventUnsetFlag_080406D0
	movs r0, #3
	bl EventUnsetFlag_080406D0
	movs r0, #6
	bl UnsetEventFlag_080406D0
_080472F8:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08047300: .4byte 0x0000011F
_08047304: .4byte 0x0001005D
_08047308: .4byte 0x0001005E
_0804730C: .4byte 0x0001005F
_08047310: .4byte 0x00010060
_08047314: .4byte 0x00010061

	thumb_func_start sub_08047318
sub_08047318: @ 0x08047318
	push {lr}
	bl sub_080407FC
	bl EventWinInit_08040fe8
	movs r0, #9
	bl EventWinSpeakerSet_08041018
	ldr r0, _08047370 @ =0x00010062
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #7
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _08047374 @ =0x00010063
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _08047378 @ =0x00010064
	bl EventWinMesSet_08041058
	ldr r0, _0804737C @ =0x00010065
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #7
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _08047380 @ =0x00010066
	bl EventWinMesSet_08041058
	pop {r0}
	bx r0
	.align 2, 0
_08047370: .4byte 0x00010062
_08047374: .4byte 0x00010063
_08047378: .4byte 0x00010064
_0804737C: .4byte 0x00010065
_08047380: .4byte 0x00010066

	thumb_func_start sub_08047384
sub_08047384: @ 0x08047384
	push {lr}
	bl EventInit_080405B8
	ldr r0, _080473F4 @ =0x0808DEE4
	bl LoadBuildingBG_0804115C
	ldr r2, _080473F8 @ =0x0808E7AC
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
	ldr r2, _080473FC @ =0x0808EA4C
	movs r0, #1
	movs r1, #0
	bl LoadCharSprite_080415A0
	movs r0, #1
	movs r1, #0
	bl sub_08041734
	ldr r2, _08047400 @ =0x0808E6BC
	movs r0, #3
	movs r1, #0
	bl LoadCharSprite_080415A0
	movs r0, #3
	movs r1, #0
	bl sub_08041734
	movs r0, #3
	movs r1, #0
	bl sub_08041808
	movs r0, #6
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08047408
	movs r0, #0x19
	bl EventBGMPlay_080410A8
	ldr r0, _08047404 @ =sub_08047318
	bl RunEventScript_0804066C
	b _0804746C
	.align 2, 0
_080473F4: .4byte 0x0808DEE4
_080473F8: .4byte 0x0808E7AC
_080473FC: .4byte 0x0808EA4C
_08047400: .4byte 0x0808E6BC
_08047404: .4byte sub_08047318
_08047408:
	movs r0, #0
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08047428
	movs r0, #0x19
	bl EventBGMPlay_080410A8
	ldr r0, _08047424 @ =sub_08046854
	bl RunEventScript_0804066C
	b _0804746C
	.align 2, 0
_08047424: .4byte sub_08046854
_08047428:
	movs r0, #1
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08047460
	movs r0, #2
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08047460
	movs r0, #3
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08047460
	movs r0, #0x10
	bl EventBGMPlay_080410A8
	ldr r0, _0804745C @ =sub_08046D28
	bl RunEventScript_0804066C
	b _0804746C
	.align 2, 0
_0804745C: .4byte sub_08046D28
_08047460:
	movs r0, #0x10
	bl EventBGMPlay_080410A8
	ldr r0, _080474AC @ =sub_08046CAC
	bl RunEventScript_0804066C
_0804746C:
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
	movs r0, #3
	bl sub_080417E0
	movs r0, #3
	movs r1, #0
	bl sub_08041684
	bl sub_0804062C
	pop {r0}
	bx r0
	.align 2, 0
_080474AC: .4byte sub_08046CAC
