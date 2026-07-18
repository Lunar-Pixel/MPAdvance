	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .text
	.ARM
	.syntax unified

	thumb_func_start sub_080489A8
sub_080489A8: @ 0x080489A8
	push {lr}
	movs r0, #0
	movs r1, #0
	movs r2, #5
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #5
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #2
	movs r1, #0
	movs r2, #1
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	bl sub_080407FC
	bl EventWinInit_08040fe8
	movs r0, #3
	movs r1, #0xb0
	movs r2, #0x20
	bl EventPlaceChara_08041894
	movs r0, #3
	movs r1, #0
	movs r2, #2
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #3
	movs r1, #1
	bl sub_08041808
	movs r0, #0x91
	lsls r0, r0, #1
	bl EventPlaySFX_080410E0
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	movs r0, #0xc0
	lsls r0, r0, #0xb
	bl EventWinMesSet_08041058
	movs r0, #3
	movs r1, #0
	bl sub_08041808
	movs r0, #3
	movs r1, #0x58
	movs r2, #0x50
	bl EventPlaceChara_08041894
	movs r0, #3
	movs r1, #0
	movs r2, #6
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #3
	movs r1, #1
	bl sub_08041808
	ldr r0, _08048C5C @ =0x00000129
	bl EventPlaySFX_080410E0
	movs r0, #0x3c
	bl EventSleep_08040690
	movs r0, #3
	movs r1, #0
	bl sub_08041808
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
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0x1e
	bl EventSleep_08040690
	movs r0, #0
	movs r1, #0
	movs r2, #0xc
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0x36
	bl EventWinSpeakerSet_08041018
	ldr r0, _08048C60 @ =0x00060001
	bl EventWinMesSet_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	bl GetCharacterID_080408B8
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r0, #8
	bl sub_08005BE0
	ldr r0, _08048C64 @ =0x00060002
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _08048C68 @ =0x00060003
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0xe
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0x36
	bl EventWinSpeakerSet_08041018
	ldr r0, _08048C6C @ =0x00060004
	bl EventWinMesSet_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08048C70 @ =0x00060005
	bl EventWinMesSet_08041058
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
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0x36
	bl EventWinSpeakerSet_08041018
	bl GetCharacterID_080408B8
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r0, #8
	bl sub_08005BE0
	ldr r0, _08048C74 @ =0x00060006
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0xc
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _08048C78 @ =0x00060007
	bl EventWinMesSet_08041058
	ldr r0, _08048C7C @ =0x00060008
	bl EventWinMesSet_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08048C80 @ =0x00060009
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _08048C84 @ =0x0006000A
	bl EventWinMesSet_08041058
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
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	bl GetCharacterID_080408B8
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r0, #8
	bl sub_08005BE0
	ldr r0, _08048C88 @ =0x0006000B
	bl EventWinMesSet_08041058
	ldr r0, _08048C8C @ =0x0006000C
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08048CA4
	movs r0, #3
	movs r1, #0xb0
	movs r2, #0x20
	bl EventPlaceChara_08041894
	movs r0, #3
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #3
	movs r1, #1
	bl sub_08041808
	ldr r0, _08048C90 @ =0x0000011F
	bl EventPlaySFX_080410E0
	movs r0, #0x3c
	bl EventSleep_08040690
	movs r0, #3
	movs r1, #0
	bl sub_08041808
	ldr r0, _08048C94 @ =0x0006000D
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _08048C98 @ =0x0006000E
	bl EventWinMesSet_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08048C9C @ =0x0006000F
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #8
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #0xe
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0x36
	bl EventWinSpeakerSet_08041018
	ldr r0, _08048CA0 @ =0x00060010
	bl EventWinMesSet_08041058
	b _08048E3A
	.align 2, 0
_08048C5C: .4byte 0x00000129
_08048C60: .4byte 0x00060001
_08048C64: .4byte 0x00060002
_08048C68: .4byte 0x00060003
_08048C6C: .4byte 0x00060004
_08048C70: .4byte 0x00060005
_08048C74: .4byte 0x00060006
_08048C78: .4byte 0x00060007
_08048C7C: .4byte 0x00060008
_08048C80: .4byte 0x00060009
_08048C84: .4byte 0x0006000A
_08048C88: .4byte 0x0006000B
_08048C8C: .4byte 0x0006000C
_08048C90: .4byte 0x0000011F
_08048C94: .4byte 0x0006000D
_08048C98: .4byte 0x0006000E
_08048C9C: .4byte 0x0006000F
_08048CA0: .4byte 0x00060010
_08048CA4:
	ldr r1, _08048D5C @ =0x00060011
	movs r0, #5
	bl EventQuestTitle_080408C4
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08048CB4
	b _08048E3A
_08048CB4:
	movs r0, #0x10
	bl EventBGMPlay_080410A8
	bl EventWinInit_08040fe8
	movs r0, #2
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08048D60 @ =0x00060012
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _08048D64 @ =0x00060013
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08048D68 @ =0x00060014
	bl EventWinMesSet_08041058
	ldr r0, _08048D6C @ =0x00060015
	bl EventWinMesSet_08041058
	ldr r0, _08048D70 @ =0x00060016
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08048D7C
	movs r0, #2
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08048D74 @ =0x00060017
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _08048D78 @ =0x00060018
	bl EventWinMesSet_08041058
	b _08048DAC
	.align 2, 0
_08048D5C: .4byte 0x00060011
_08048D60: .4byte 0x00060012
_08048D64: .4byte 0x00060013
_08048D68: .4byte 0x00060014
_08048D6C: .4byte 0x00060015
_08048D70: .4byte 0x00060016
_08048D74: .4byte 0x00060017
_08048D78: .4byte 0x00060018
_08048D7C:
	movs r0, #2
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08048E40 @ =0x0006001F
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _08048E44 @ =0x00060020
	bl EventWinMesSet_08041058
_08048DAC:
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08048E48 @ =0x00060019
	bl EventWinMesSet_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #2
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _08048E4C @ =0x0006001A
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #6
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _08048E50 @ =0x0006001B
	bl EventWinMesSet_08041058
	movs r0, #0x36
	bl EventWinSpeakerSet_08041018
	ldr r0, _08048E54 @ =0x0006001C
	bl EventWinMesSet_08041058
	ldr r0, _08048E58 @ =0x0006001D
	bl EventWinMesSet_08041058
	bl GetCharacterID_080408B8
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r0, #8
	bl sub_08005BE0
	ldr r0, _08048E5C @ =0x0006001E
	bl EventWinMesSet_08041058
	movs r0, #0x16
	bl EventSetFlag_080406E4
	movs r0, #7
	bl SetCharacterMetFlag_0802D7CC
	movs r0, #0xb
	bl SetCharacterMetFlag_0802D7CC
	movs r0, #0x2d
	bl SetCharacterMetFlag_0802D7CC
_08048E3A:
	pop {r0}
	bx r0
	.align 2, 0
_08048E40: .4byte 0x0006001F
_08048E44: .4byte 0x00060020
_08048E48: .4byte 0x00060019
_08048E4C: .4byte 0x0006001A
_08048E50: .4byte 0x0006001B
_08048E54: .4byte 0x0006001C
_08048E58: .4byte 0x0006001D
_08048E5C: .4byte 0x0006001E

	thumb_func_start sub_08048E60
sub_08048E60: @ 0x08048E60
	push {lr}
_08048E62:
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08048EA4 @ =0x00060021
	bl EventWinMesSet_08041058
	ldr r0, _08048EA8 @ =0x00060022
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	beq _08048F3C
	cmp r0, #1
	bgt _08048EAC
	cmp r0, #0
	beq _08048EB4
	b _080490A4
	.align 2, 0
_08048EA4: .4byte 0x00060021
_08048EA8: .4byte 0x00060022
_08048EAC:
	cmp r0, #2
	bne _08048EB2
	b _08048FE8
_08048EB2:
	b _080490A4
_08048EB4:
	ldr r0, _08048F24 @ =0x00060023
	bl EventWinMesSet_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _08048F28 @ =0x00060024
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _08048F2C @ =0x00060025
	bl EventWinMesSet_08041058
	ldr r0, _08048F30 @ =0x00060026
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08048F34 @ =0x00060027
	bl EventWinMesSet_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _08048F38 @ =0x00060028
	bl EventWinMesSet_08041058
	b _08048E62
	.align 2, 0
_08048F24: .4byte 0x00060023
_08048F28: .4byte 0x00060024
_08048F2C: .4byte 0x00060025
_08048F30: .4byte 0x00060026
_08048F34: .4byte 0x00060027
_08048F38: .4byte 0x00060028
_08048F3C:
	movs r0, #2
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _08048FD0 @ =0x00060029
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _08048FD4 @ =0x0006002A
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08048FD8 @ =0x0006002B
	bl EventWinMesSet_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _08048FDC @ =0x0006002C
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _08048FE0 @ =0x0006002D
	bl EventWinMesSet_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08048FE4 @ =0x0006002E
	bl EventWinMesSet_08041058
	b _08048E62
	.align 2, 0
_08048FD0: .4byte 0x00060029
_08048FD4: .4byte 0x0006002A
_08048FD8: .4byte 0x0006002B
_08048FDC: .4byte 0x0006002C
_08048FE0: .4byte 0x0006002D
_08048FE4: .4byte 0x0006002E
_08048FE8:
	movs r0, #2
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _08049088 @ =0x0006002F
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804908C @ =0x00060030
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08049090 @ =0x00060031
	bl EventWinMesSet_08041058
	ldr r0, _08049094 @ =0x00060032
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _08049098 @ =0x00060033
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804909C @ =0x00060034
	bl EventWinMesSet_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _080490A0 @ =0x00060035
	bl EventWinMesSet_08041058
	b _08048E62
	.align 2, 0
_08049088: .4byte 0x0006002F
_0804908C: .4byte 0x00060030
_08049090: .4byte 0x00060031
_08049094: .4byte 0x00060032
_08049098: .4byte 0x00060033
_0804909C: .4byte 0x00060034
_080490A0: .4byte 0x00060035
_080490A4:
	ldr r0, _080490BC @ =0x00060036
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	bne _080490B8
	b _08048E62
_080490B8:
	pop {r0}
	bx r0
	.align 2, 0
_080490BC: .4byte 0x00060036

	thumb_func_start sub_080490C0
sub_080490C0: @ 0x080490C0
	push {r4, lr}
	movs r0, #0x36
	bl EventWinSpeakerSet_08041018
	ldr r0, _080494B4 @ =0x00060037
	bl EventWinMesSet_08041058
	ldr r0, _080494B8 @ =0x00060038
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	beq _080490E2
	b _08049560
_080490E2:
	bl sub_08041008
	movs r0, #0
	movs r1, #0
	movs r2, #0xd
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #3
	movs r1, #0x5c
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
	movs r0, #0xb4
	bl EventSleep_08040690
	movs r0, #3
	movs r1, #0
	movs r2, #0xa
	movs r3, #1
	bl EventAnimateChara_080418C8
	movs r0, #0x56
	bl EventSleep_08040690
	ldr r0, _080494BC @ =0x00000125
	bl EventPlaySFX_080410E0
	movs r0, #0x3c
	bl EventSleep_08040690
	movs r0, #3
	movs r1, #0
	bl sub_08041808
	bl EventWinInit_08040fe8
	movs r0, #0x36
	bl EventWinSpeakerSet_08041018
	movs r0, #0
	movs r1, #0
	movs r2, #0xc
	movs r3, #1
	bl EventAnimateChara_080418C8
	ldr r0, _080494C0 @ =0x00060039
	bl EventWinMesSet_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #2
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _080494C4 @ =0x0006003A
	bl EventWinMesSet_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _080494C8 @ =0x0006003B
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #2
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0x36
	bl EventWinSpeakerSet_08041018
	ldr r0, _080494CC @ =0x0006003C
	bl EventWinMesSet_08041058
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _080494D0 @ =0x0006003D
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _080494D4 @ =0x0006003E
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #2
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0x36
	bl EventWinSpeakerSet_08041018
	ldr r0, _080494D8 @ =0x0006003F
	bl EventWinMesSet_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #2
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _080494DC @ =0x00060040
	bl EventWinMesSet_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0x36
	bl EventWinSpeakerSet_08041018
	ldr r0, _080494E0 @ =0x00060041
	bl EventWinMesSet_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #2
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _080494E4 @ =0x00060042
	bl EventWinMesSet_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0x36
	bl EventWinSpeakerSet_08041018
	ldr r0, _080494E8 @ =0x00060043
	bl EventWinMesSet_08041058
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _080494EC @ =0x00060044
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _080494F0 @ =0x00060045
	bl EventWinMesSet_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _080494F4 @ =0x00060046
	bl EventWinMesSet_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #2
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0x36
	bl EventWinSpeakerSet_08041018
	ldr r0, _080494F8 @ =0x00060047
	bl EventWinMesSet_08041058
	movs r0, #3
	movs r1, #0xb0
	movs r2, #0x28
	bl EventPlaceChara_08041894
	movs r0, #3
	movs r1, #0
	movs r2, #5
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #3
	movs r1, #1
	bl sub_08041808
	movs r0, #2
	movs r1, #0
	movs r2, #4
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _080494FC @ =0x00060048
	bl EventWinMesSet_08041058
	movs r0, #0x36
	bl EventWinSpeakerSet_08041018
	ldr r0, _08049500 @ =0x00060049
	bl EventWinMesSet_08041058
	ldr r0, _08049504 @ =0x0006004A
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0xe
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _08049508 @ =0x0006004B
	bl EventWinMesSet_08041058
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r4, _0804950C @ =0x0006004C
	adds r0, r4, #0
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #8
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	adds r0, r4, #0
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0x36
	bl EventWinSpeakerSet_08041018
	ldr r0, _08049510 @ =0x0006004E
	bl EventWinMesSet_08041058
	movs r0, #3
	movs r1, #0
	bl sub_08041808
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08049514 @ =0x0006004F
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _08049518 @ =0x00060050
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #2
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0x36
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804951C @ =0x00060051
	bl EventWinMesSet_08041058
	movs r0, #3
	movs r1, #0xb0
	movs r2, #0x20
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
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08049520 @ =0x00060052
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _08049524 @ =0x00060053
	bl EventWinMesSet_08041058
	ldr r0, _08049528 @ =0x0000011B
	bl EventPlaySFX_080410E0
	movs r0, #1
	movs r1, #0x3c
	movs r2, #0x58
	movs r3, #8
	bl sub_08041938
	movs r0, #1
	movs r1, #0x3c
	movs r2, #0x68
	movs r3, #8
	bl sub_08041938
	movs r0, #1
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #0x68
	movs r3, #0xc
	bl sub_08041938
	movs r0, #0
	movs r1, #0
	movs r2, #0xc
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0x36
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804952C @ =0x00060054
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #7
	movs r3, #8
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #0x68
	movs r3, #0x78
	bl sub_08041938
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	bl GetCharacterID_080408B8
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r0, #8
	bl sub_08005BE0
	ldr r0, _08049530 @ =0x00060055
	bl EventWinMesSet_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _08049534 @ =0x00060056
	bl EventWinMesSet_08041058
	ldr r0, _08049538 @ =0x00060057
	bl EventWinMesSet_08041058
	ldr r0, _0804953C @ =0x00060058
	bl EventWinMesSet_08041058
	ldr r1, _08049540 @ =0x00460027
	movs r0, #0x6c
	bl EventMgSpecialGoal_080427E0
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08049544 @ =0x00060059
	bl EventWinMesSet_08041058
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
	b _08049548
	.align 2, 0
_080494B4: .4byte 0x00060037
_080494B8: .4byte 0x00060038
_080494BC: .4byte 0x00000125
_080494C0: .4byte 0x00060039
_080494C4: .4byte 0x0006003A
_080494C8: .4byte 0x0006003B
_080494CC: .4byte 0x0006003C
_080494D0: .4byte 0x0006003D
_080494D4: .4byte 0x0006003E
_080494D8: .4byte 0x0006003F
_080494DC: .4byte 0x00060040
_080494E0: .4byte 0x00060041
_080494E4: .4byte 0x00060042
_080494E8: .4byte 0x00060043
_080494EC: .4byte 0x00060044
_080494F0: .4byte 0x00060045
_080494F4: .4byte 0x00060046
_080494F8: .4byte 0x00060047
_080494FC: .4byte 0x00060048
_08049500: .4byte 0x00060049
_08049504: .4byte 0x0006004A
_08049508: .4byte 0x0006004B
_0804950C: .4byte 0x0006004C
_08049510: .4byte 0x0006004E
_08049514: .4byte 0x0006004F
_08049518: .4byte 0x00060050
_0804951C: .4byte 0x00060051
_08049520: .4byte 0x00060052
_08049524: .4byte 0x00060053
_08049528: .4byte 0x0000011B
_0804952C: .4byte 0x00060054
_08049530: .4byte 0x00060055
_08049534: .4byte 0x00060056
_08049538: .4byte 0x00060057
_0804953C: .4byte 0x00060058
_08049540: .4byte 0x00460027
_08049544: .4byte 0x00060059
_08049548:
	bl sub_08040BB8
	ldr r0, _0804955C @ =0x0006005B
	bl EventWinMesSet_08041058
	movs r0, #0x17
	bl EventSetFlag_080406E4
	b _0804964C
	.align 2, 0
_0804955C: .4byte 0x0006005B
_08049560:
	movs r0, #0
	movs r1, #0
	movs r2, #0xd
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #3
	movs r1, #0x5c
	movs r2, #0x40
	bl EventPlaceChara_08041894
	movs r0, #3
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #3
	movs r1, #1
	bl sub_08041808
	ldr r0, _08049654 @ =0x0000011F
	bl EventPlaySFX_080410E0
	movs r0, #0x5a
	bl EventSleep_08040690
	movs r0, #3
	movs r1, #0
	bl sub_08041808
	ldr r0, _08049658 @ =0x00060067
	bl EventWinMesSet_08041058
	ldr r0, _0804965C @ =0x00060068
	bl EventWinMesSet_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #2
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08049660 @ =0x00060069
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #5
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _08049664 @ =0x0006006A
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08049668 @ =0x0006006B
	bl EventWinMesSet_08041058
	ldr r0, _0804966C @ =0x0006006C
	bl EventWinMesSet_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #2
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08049670 @ =0x0006006D
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _08049674 @ =0x0006006E
	bl EventWinMesSet_08041058
	movs r0, #0x16
	bl EventUnsetFlag_080406D0
	movs r0, #0x17
	bl EventUnsetFlag_080406D0
	movs r0, #0x18
	bl EventUnsetFlag_080406D0
	movs r0, #0x19
	bl UnsetEventFlag_080406D0
_0804964C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08049654: .4byte 0x0000011F
_08049658: .4byte 0x00060067
_0804965C: .4byte 0x00060068
_08049660: .4byte 0x00060069
_08049664: .4byte 0x0006006A
_08049668: .4byte 0x0006006B
_0804966C: .4byte 0x0006006C
_08049670: .4byte 0x0006006D
_08049674: .4byte 0x0006006E

	thumb_func_start sub_08049678
sub_08049678: @ 0x08049678
	push {lr}
	movs r0, #0x18
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08049708
	movs r0, #0x68
	bl PlayJingle_08041100
	bl EventWaitForJingle_08041138
	movs r0, #0x10
	bl EventBGMPlay_080410A8
	bl EventWinInit_08040fe8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _080496F0 @ =0x0006005C
	bl EventWinMesSet_08041058
	ldr r0, _080496F4 @ =0x0006005D
	bl EventWinMesSet_08041058
	movs r0, #0xb
	movs r1, #0x10
	bl QuestFinish_08042814
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _080496F8 @ =0x0006005E
	bl EventWinMesSet_08041058
	ldr r0, _080496FC @ =0x0006005F
	bl EventWinMesSet_08041058
	ldr r0, _08049700 @ =0x00060060
	bl EventWinMesSet_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _08049704 @ =0x00060061
	bl EventWinMesSet_08041058
	movs r0, #0x6c
	bl EventSetMinigame_08040B84
	movs r0, #0x19
	bl SetEventFlag_080406BC
	b _08049784
	.align 2, 0
_080496F0: .4byte 0x0006005C
_080496F4: .4byte 0x0006005D
_080496F8: .4byte 0x0006005E
_080496FC: .4byte 0x0006005F
_08049700: .4byte 0x00060060
_08049704: .4byte 0x00060061
_08049708:
	bl EventWinInit_08040fe8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	movs r0, #2
	movs r1, #0
	movs r2, #2
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _08049788 @ =0x00060062
	bl EventWinMesSet_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _0804978C @ =0x00060063
	bl EventWinMesSet_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #2
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _08049790 @ =0x00060064
	bl EventWinMesSet_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _08049794 @ =0x00060065
	bl EventWinMesSet_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #2
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _08049798 @ =0x00060066
	bl EventWinMesSet_08041058
	movs r0, #0x16
	bl EventUnsetFlag_080406D0
	movs r0, #0x17
	bl EventUnsetFlag_080406D0
	movs r0, #0x18
	bl EventUnsetFlag_080406D0
	movs r0, #0x19
	bl UnsetEventFlag_080406D0
_08049784:
	pop {r0}
	bx r0
	.align 2, 0
_08049788: .4byte 0x00060062
_0804978C: .4byte 0x00060063
_08049790: .4byte 0x00060064
_08049794: .4byte 0x00060065
_08049798: .4byte 0x00060066

	thumb_func_start sub_0804979C
sub_0804979C: @ 0x0804979C
	push {lr}
	movs r0, #0
	movs r1, #0
	movs r2, #0x68
	bl EventPlaceChara_08041894
	movs r0, #1
	movs r1, #0x3c
	movs r2, #0x68
	bl EventPlaceChara_08041894
	bl sub_080407FC
	movs r0, #3
	movs r1, #0xb0
	movs r2, #0x20
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
	movs r0, #0x5a
	bl EventSleep_08040690
	movs r0, #3
	movs r1, #0
	bl sub_08041808
	bl EventWinInit_08040fe8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08049840 @ =0x0006006F
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _08049844 @ =0x00060070
	bl EventWinMesSet_08041058
	movs r0, #2
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _08049848 @ =0x00060071
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #8
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _0804984C @ =0x00060072
	bl EventWinMesSet_08041058
	pop {r0}
	bx r0
	.align 2, 0
_08049840: .4byte 0x0006006F
_08049844: .4byte 0x00060070
_08049848: .4byte 0x00060071
_0804984C: .4byte 0x00060072

	thumb_func_start sub_08049850
sub_08049850: @ 0x08049850
	push {lr}
	bl EventInit_080405B8
	ldr r0, _080498F0 @ =0x0808DF84
	bl LoadBuildingBG_0804115C
	ldr r0, _080498F4 @ =0x0808E5FC
	movs r1, #0x78
	movs r2, #0x45
	bl DisplayGFX_080414B4
	ldr r2, _080498F8 @ =0x0808EA4C
	movs r0, #0
	movs r1, #0
	bl LoadCharSprite_080415A0
	movs r0, #0
	movs r1, #0
	bl sub_08041734
	movs r0, #0
	movs r1, #0x58
	movs r2, #0x68
	bl EventPlaceChara_08041894
	ldr r2, _080498FC @ =0x0808E7BC
	movs r0, #1
	movs r1, #0
	bl LoadCharSprite_080415A0
	movs r0, #1
	movs r1, #0
	bl sub_08041734
	movs r0, #1
	movs r1, #0x38
	movs r2, #0x68
	bl EventPlaceChara_08041894
	ldr r2, _08049900 @ =0x0808E71C
	movs r0, #2
	movs r1, #0
	bl LoadCharSprite_080415A0
	movs r0, #2
	movs r1, #0
	bl sub_08041734
	movs r0, #2
	movs r1, #0xb0
	movs r2, #0x64
	bl EventPlaceChara_08041894
	ldr r2, _08049904 @ =0x0808E6BC
	movs r0, #3
	movs r1, #0
	bl LoadCharSprite_080415A0
	movs r0, #3
	movs r1, #0
	bl sub_08041734
	movs r0, #3
	movs r1, #0
	bl sub_08041808
	movs r0, #0x19
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0804990C
	movs r0, #0x19
	bl EventBGMPlay_080410A8
	ldr r0, _08049908 @ =sub_0804979C
	bl RunEventScript_0804066C
	b _080499A8
	.align 2, 0
_080498F0: .4byte 0x0808DF84
_080498F4: .4byte 0x0808E5FC
_080498F8: .4byte 0x0808EA4C
_080498FC: .4byte 0x0808E7BC
_08049900: .4byte 0x0808E71C
_08049904: .4byte 0x0808E6BC
_08049908: .4byte sub_0804979C
_0804990C:
	bl sub_08040B0C
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0804995C
	movs r0, #0x19
	bl EventBGMPlay_080410A8
	ldr r0, _08049950 @ =sub_080489A8
	bl RunEventScript_0804066C
	movs r0, #0x16
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080499A8
	ldr r0, _08049954 @ =sub_08048E60
	bl RunEventScript_0804066C
	ldr r0, _08049958 @ =sub_080490C0
	bl RunEventScript_0804066C
	movs r0, #0x17
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080499A8
	movs r0, #0x6c
	bl EventQuestBegin_080406D0
	b _080499A8
	.align 2, 0
_08049950: .4byte sub_080489A8
_08049954: .4byte sub_08048E60
_08049958: .4byte sub_080490C0
_0804995C:
	movs r0, #0
	movs r1, #0
	movs r2, #0x68
	bl EventPlaceChara_08041894
	movs r0, #1
	movs r1, #0
	movs r2, #0x68
	bl EventPlaceChara_08041894
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	bl sub_080407FC
	movs r0, #0x10
	bl EventQuestFailRetry_08040A6C
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	beq _08049998
	cmp r0, #1
	ble _080499A8
	cmp r0, #2
	beq _0804999E
	b _080499A8
_08049998:
	movs r0, #0x18
	bl EventSetFlag_080406E4
_0804999E:
	ldr r0, _080499F8 @ =sub_08049678
	bl RunEventScript_0804066C
	bl sub_08040B28
_080499A8:
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
	bl sub_08041560
	bl sub_0804062C
	pop {r0}
	bx r0
	.align 2, 0
_080499F8: .4byte sub_08049678
