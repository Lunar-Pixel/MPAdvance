	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .text
	.ARM
	.syntax unified

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
	bl EventPlaceChara_08041894
	movs r0, #1
	movs r1, #0
	movs r2, #5
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	mov r1, sp
	ldr r0, _08055BD8 @ =0x0808DC60
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	movs r0, #1
	movs r1, #0
	mov r2, sp
	bl sub_08041D0C
	bl sub_080407FC
	bl EventWinInit_08040fe8
	movs r0, #0xe
	bl EventWinSpeakerSet_08041018
	movs r0, #0xa0
	lsls r0, r0, #0xb
	bl EventWinMesSet_08041058
	ldr r0, _08055BDC @ =0x00050001
	bl EventWinMesSet_08041058
	ldr r0, _08055BE0 @ =0x00050002
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
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
	bl EventAnimateChara_080418C8
	movs r0, #3
	movs r1, #0x88
	movs r2, #0x38
	bl EventPlaceChara_08041894
	movs r0, #3
	movs r1, #0
	movs r2, #2
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #3
	movs r1, #1
	bl sub_08041808
	movs r0, #0x91
	lsls r0, r0, #1
	bl EventPlaySFX_080410E0
	ldr r0, _08055BE4 @ =0x00050003
	bl EventWinMesSet_08041058
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
	bl EventQuestTitle_080408C4
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08055C00
	b _08055F14
_08055C00:
	movs r0, #0x10
	bl EventBGMPlay_080410A8
	movs r0, #1
	bl sub_08041DE0
	movs r0, #1
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	bl EventWinInit_08040fe8
	movs r0, #0xe
	bl EventWinSpeakerSet_08041018
	ldr r0, _08055E14 @ =0x00050005
	bl EventWinMesSet_08041058
	ldr r0, _08055E18 @ =0x00050006
	bl EventWinMesSet_08041058
	movs r0, #0x36
	bl EventWinSpeakerSet_08041018
	ldr r0, _08055E1C @ =0x00050007
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #4
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _08055E20 @ =0x0000011B
	bl EventPlaySFX_080410E0
	movs r0, #2
	movs r1, #0x40
	movs r2, #0
	movs r3, #0x10
	bl sub_08041938
	movs r0, #0x3c
	bl EventSleep_08040690
	movs r0, #2
	movs r1, #0x40
	movs r2, #0x38
	movs r3, #0xc
	bl sub_08041938
	movs r0, #0x8f
	lsls r0, r0, #1
	bl EventPlaySFX_080410E0
	movs r0, #0xe
	bl EventWinSpeakerSet_08041018
	ldr r0, _08055E24 @ =0x00050008
	bl EventWinMesSet_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #0xc
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0x36
	bl EventWinSpeakerSet_08041018
	ldr r0, _08055E28 @ =0x00050009
	bl EventWinMesSet_08041058
	ldr r0, _08055E2C @ =0x0005000A
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #9
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0xe
	bl EventWinSpeakerSet_08041018
	ldr r0, _08055E30 @ =0x0005000B
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #8
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0x36
	bl EventWinSpeakerSet_08041018
	ldr r0, _08055E34 @ =0x0005000C
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #9
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0xe
	bl EventWinSpeakerSet_08041018
	ldr r0, _08055E38 @ =0x0005000D
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #8
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0x36
	bl EventWinSpeakerSet_08041018
	ldr r0, _08055E3C @ =0x0005000E
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #9
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0xe
	bl EventWinSpeakerSet_08041018
	ldr r0, _08055E40 @ =0x0005000F
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #8
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0x36
	bl EventWinSpeakerSet_08041018
	ldr r0, _08055E44 @ =0x00050010
	bl EventWinMesSet_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #0xc
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _08055E48 @ =0x00050011
	bl EventWinMesSet_08041058
	movs r0, #3
	movs r1, #0x70
	movs r2, #0x48
	bl EventPlaceChara_08041894
	movs r0, #3
	movs r1, #0
	movs r2, #6
	movs r3, #1
	bl EventAnimateChara_080418C8
	movs r0, #3
	movs r1, #1
	bl sub_08041808
	ldr r0, _08055E4C @ =0x00000129
	bl EventPlaySFX_080410E0
	movs r0, #0x3c
	bl EventSleep_08040690
	movs r0, #3
	movs r1, #0
	bl sub_08041808
	movs r0, #1
	movs r1, #0
	movs r2, #9
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0xe
	bl EventWinSpeakerSet_08041018
	ldr r0, _08055E50 @ =0x00050012
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #8
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	movs r1, #0
	movs r2, #0xd
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0x36
	bl EventWinSpeakerSet_08041018
	ldr r0, _08055E54 @ =0x00050013
	bl EventWinMesSet_08041058
	ldr r0, _08055E58 @ =0x00050014
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #6
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	bl GetCharacterID_080408B8
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r0, #8
	bl sub_08005BE0
	ldr r0, _08055E5C @ =0x00050015
	bl EventWinMesSet_08041058
	ldr r0, _08055E60 @ =0x00050016
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08055E68
	movs r0, #2
	movs r1, #0
	movs r2, #0xc
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _08055E64 @ =0x00050017
	bl EventWinMesSet_08041058
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
	bl EventWinMesSet_08041058
_08055E6E:
	movs r0, #2
	movs r1, #0
	movs r2, #0xe
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _08055F20 @ =0x00050018
	bl EventWinMesSet_08041058
	movs r0, #0x3c
	bl EventSleep_08040690
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0xe
	bl EventWinSpeakerSet_08041018
	ldr r0, _08055F24 @ =0x00050019
	bl EventWinMesSet_08041058
	ldr r0, _08055F28 @ =0x0005001A
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #6
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _08055F2C @ =sub_08055B14
	bl RunEventScript_0804066C
	movs r0, #0x78
	bl EventSleep_08040690
	bl sub_08041F3C
	movs r0, #2
	movs r1, #0
	movs r2, #0xc
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0x36
	bl EventWinSpeakerSet_08041018
	ldr r0, _08055F30 @ =0x0005001B
	bl EventWinMesSet_08041058
	ldr r0, _08055F34 @ =0x0005001C
	bl EventWinMesSet_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _08055F38 @ =0x0005001D
	bl EventWinMesSet_08041058
	movs r0, #0x12
	bl EventSetFlag_080406E4
	movs r0, #7
	bl SetCharacterMetFlag_0802D7CC
	movs r0, #0x2a
	bl SetCharacterMetFlag_0802D7CC
	movs r0, #3
	bl SetCharacterMetFlag_0802D7CC
	movs r0, #0xe
	bl SetCharacterMetFlag_0802D7CC
	movs r0, #0x24
	bl SetCharacterMetFlag_0802D7CC
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
	bl EventAnimateChara_080418C8
	movs r0, #0xe
	bl EventWinSpeakerSet_08041018
	ldr r0, _08055F8C @ =0x00050027
	bl EventWinMesSet_08041058
	ldr r0, _08055F90 @ =0x00050028
	bl EventWinMesSet_08041058
	ldr r0, _08055F94 @ =0x00050029
	bl EventWinMesSet_08041058
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
	bl EventAnimateChara_080418C8
	movs r0, #0xe
	bl EventWinSpeakerSet_08041018
	ldr r0, _08055FC4 @ =0x0005001F
	bl EventWinMesSet_08041058
	ldr r0, _08055FC8 @ =0x00050020
	bl EventWinMesSet_08041058
	ldr r0, _08055FCC @ =0x00050021
	bl EventWinMesSet_08041058
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
	bl EventAnimateChara_080418C8
	movs r0, #0xe
	bl EventWinSpeakerSet_08041018
	ldr r0, _08056040 @ =0x00050023
	bl EventWinMesSet_08041058
	ldr r0, _08056044 @ =0x00050024
	bl EventWinMesSet_08041058
	ldr r0, _08056048 @ =0x00050025
	bl EventWinMesSet_08041058
	ldr r0, _0805604C @ =0x00050026
_08055FFA:
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #6
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0x36
	bl EventWinSpeakerSet_08041018
	ldr r0, _08056050 @ =0x0005002B
	bl EventWinMesSet_08041058
	ldr r0, _08056054 @ =0x0005002C
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	beq _08055F4A
	ldr r0, _08056058 @ =0x0005002D
	bl EventWinMesSet_08041058
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
	bl EventWinMesSet_08041058
	mov r0, sp
	movs r1, #3
	bl sub_08041F9C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08056080
	b _0805645C
_08056080:
	ldr r0, _080563F8 @ =0x0005002F
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #0xb4
	movs r2, #0x70
	movs r3, #0xa
	bl sub_08041938
	ldr r0, _080563FC @ =0x0000011B
	bl EventPlaySFX_080410E0
	movs r0, #0x3c
	bl EventSleep_08040690
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #0xb4
	movs r2, #0x68
	bl EventPlaceChara_08041894
	movs r0, #2
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #7
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xf
	bl EventWinSpeakerSet_08041018
	ldr r0, _08056400 @ =0x00050030
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _08056404 @ =0x00050031
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #6
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	movs r1, #0
	movs r2, #0xd
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0x36
	bl EventWinSpeakerSet_08041018
	ldr r0, _08056408 @ =0x00050032
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #7
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0xf
	bl EventWinSpeakerSet_08041018
	ldr r0, _0805640C @ =0x00050033
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #6
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0x36
	bl EventWinSpeakerSet_08041018
	ldr r0, _08056410 @ =0x00050034
	bl EventWinMesSet_08041058
	ldr r0, _08056414 @ =0x00050035
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #7
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0xf
	bl EventWinSpeakerSet_08041018
	ldr r0, _08056418 @ =0x00050036
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #6
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	movs r1, #0
	movs r2, #0xe
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0x36
	bl EventWinSpeakerSet_08041018
	ldr r0, _0805641C @ =0x00050037
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #7
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #3
	movs r1, #0xb8
	movs r2, #0x40
	bl EventPlaceChara_08041894
	movs r0, #3
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #3
	movs r1, #1
	bl sub_08041808
	movs r0, #0x90
	lsls r0, r0, #1
	bl EventPlaySFX_080410E0
	movs r0, #0xf
	bl EventWinSpeakerSet_08041018
	ldr r0, _08056420 @ =0x00050038
	bl EventWinMesSet_08041058
	movs r0, #3
	movs r1, #0
	bl sub_08041808
	movs r0, #1
	movs r1, #0
	movs r2, #6
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0x36
	bl EventWinSpeakerSet_08041018
	ldr r0, _08056424 @ =0x00050039
	bl EventWinMesSet_08041058
	movs r0, #3
	movs r1, #0xbc
	movs r2, #0x40
	bl EventPlaceChara_08041894
	movs r0, #3
	movs r1, #0
	movs r2, #5
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #3
	movs r1, #1
	bl sub_08041808
	movs r0, #1
	movs r1, #0
	movs r2, #7
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xf
	bl EventWinSpeakerSet_08041018
	ldr r0, _08056428 @ =0x0005003A
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _0805642C @ =0x0005003B
	bl EventWinMesSet_08041058
	ldr r0, _08056430 @ =0x0005003C
	bl EventWinMesSet_08041058
	ldr r0, _08056434 @ =0x0005003D
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #6
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	movs r1, #0
	movs r2, #0xe
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0x36
	bl EventWinSpeakerSet_08041018
	ldr r0, _08056438 @ =0x0005003E
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #7
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xf
	bl EventWinSpeakerSet_08041018
	ldr r0, _0805643C @ =0x0005003F
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #6
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0x36
	bl EventWinSpeakerSet_08041018
	ldr r0, _08056440 @ =0x00050040
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #7
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #3
	movs r1, #0
	bl sub_08041808
	movs r0, #0xf
	bl EventWinSpeakerSet_08041018
	ldr r0, _08056444 @ =0x00050041
	bl EventWinMesSet_08041058
	bl sub_08041008
	movs r0, #0x8e
	lsls r0, r0, #1
	bl EventPlaySFX_080410E0
	movs r0, #0
	movs r1, #0
	movs r2, #2
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r1, #0x82
	lsls r1, r1, #1
	movs r0, #0
	movs r2, #0x68
	movs r3, #0x10
	bl sub_08041938
	bl EventWinInit_08040fe8
	movs r0, #1
	movs r1, #0
	movs r2, #6
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	movs r1, #0
	movs r2, #0xc
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0x36
	bl EventWinSpeakerSet_08041018
	ldr r0, _08056448 @ =0x00050042
	bl EventWinMesSet_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _0805644C @ =0x00050043
	bl EventWinMesSet_08041058
	bl sub_08041008
	movs r0, #2
	movs r1, #0
	movs r2, #7
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #2
	movs r1, #0
	movs r2, #0x38
	movs r3, #0x78
	bl sub_08041938
	movs r0, #2
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl EventAnimateChara_080418C8
	bl EventWinInit_08040fe8
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0xe
	bl EventWinSpeakerSet_08041018
	ldr r0, _08056450 @ =0x00050044
	bl EventWinMesSet_08041058
	ldr r0, _08056454 @ =0x00050045
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	movs r1, #0x10
	bl QuestFinish_08042814
	movs r0, #0xe
	bl EventWinSpeakerSet_08041018
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _08056458 @ =0x00050046
	bl EventWinMesSet_08041058
	movs r0, #0x15
	bl SetEventFlag_080406BC
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
	bl EventAnimateChara_080418C8
	movs r0, #0x36
	bl EventWinSpeakerSet_08041018
	ldr r0, _080564D0 @ =0x00050047
	bl EventWinMesSet_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #0xe
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _080564D4 @ =0x00050048
	bl EventWinMesSet_08041058
	movs r0, #0x3c
	bl EventSleep_08040690
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0xe
	bl EventWinSpeakerSet_08041018
	ldr r0, _080564D8 @ =0x00050049
	bl EventWinMesSet_08041058
	ldr r0, _080564DC @ =0x0005004A
	bl EventWinMesSet_08041058
	ldr r0, _080564E0 @ =0x0005004B
	bl EventWinMesSet_08041058
	movs r0, #0x12
	bl EventUnsetFlag_080406D0
	movs r0, #0x13
	bl EventUnsetFlag_080406D0
	movs r0, #0x14
	bl EventUnsetFlag_080406D0
	movs r0, #0x15
	bl UnsetEventFlag_080406D0
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
	bl EventAnimateChara_080418C8
	bl sub_080407FC
	bl EventWinInit_08040fe8
	movs r0, #0xe
	bl EventWinSpeakerSet_08041018
	ldr r0, _0805653C @ =0x0005004C
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _08056540 @ =0x0005004D
	bl EventWinMesSet_08041058
	ldr r0, _08056544 @ =0x0005004E
	bl EventWinMesSet_08041058
	ldr r0, _08056548 @ =0x0005004F
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #2
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _0805654C @ =0x00050050
	bl EventWinMesSet_08041058
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
	bl EventInit_080405B8
	ldr r0, _08056608 @ =0x0808E40C
	bl LoadBuildingBG_0804115C
	ldr r0, _0805660C @ =0x0808E68C
	movs r1, #0x78
	movs r2, #0x68
	bl DisplayGFX_080414B4
	ldr r2, _08056610 @ =0x0808E80C
	movs r0, #1
	movs r1, #0
	bl LoadCharSprite_080415A0
	movs r0, #1
	movs r1, #0
	bl sub_08041734
	movs r0, #1
	movs r1, #0x78
	movs r2, #0x68
	bl EventPlaceChara_08041894
	movs r0, #1
	movs r1, #0xc8
	bl sub_08041830
	ldr r2, _08056614 @ =0x0808EA4C
	movs r0, #2
	movs r1, #0
	bl LoadCharSprite_080415A0
	movs r0, #2
	movs r1, #0
	bl sub_08041734
	movs r0, #1
	movs r1, #0xc9
	bl sub_08041830
	ldr r2, _08056618 @ =0x0808E81C
	movs r0, #0
	movs r1, #0
	bl LoadCharSprite_080415A0
	movs r0, #0
	movs r1, #0
	bl sub_08041734
	movs r0, #0
	movs r1, #0xb4
	movs r2, #0x8c
	bl EventPlaceChara_08041894
	movs r0, #0
	movs r1, #0xca
	bl sub_08041830
	ldr r2, _0805661C @ =0x0808E6BC
	movs r0, #3
	movs r1, #0
	bl LoadCharSprite_080415A0
	movs r0, #3
	movs r1, #0
	bl sub_08041734
	movs r0, #3
	movs r1, #0x7c
	movs r2, #0x44
	bl EventPlaceChara_08041894
	movs r0, #3
	movs r1, #0
	bl sub_08041808
	movs r0, #0x15
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08056624
	movs r0, #0x1e
	bl EventBGMPlay_080410A8
	ldr r0, _08056620 @ =sub_080564E4
	bl RunEventScript_0804066C
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
	bl EventPlaySFX_080410E0
	ldr r0, _0805669C @ =sub_08055B34
	bl RunEventScript_0804066C
	movs r0, #0x12
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0805664A
	ldr r0, _080566A0 @ =sub_08055F3C
	bl RunEventScript_0804066C
	ldr r0, _080566A4 @ =sub_0805605C
	bl RunEventScript_0804066C
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
