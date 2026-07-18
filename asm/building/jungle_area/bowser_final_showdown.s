	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .text
	.ARM
	.syntax unified

	thumb_func_start sub_08053D08
sub_08053D08: @ 0x08053D08
	push {lr}
	bl EventWinInit_08040fe8
	movs r0, #1
	movs r1, #0
	movs r2, #9
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
	movs r0, #0xc8
	lsls r0, r0, #0xe
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _08053DBC @ =0x00320001
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08053DC0 @ =0x00320002
	bl EventWinMesSet_08041058
	ldr r0, _08053DC4 @ =0x00320003
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08053DD4
	ldr r0, _08053DC8 @ =0x00320004
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _08053DCC @ =0x00320005
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0xc
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08053DD0 @ =0x00320006
	bl EventWinMesSet_08041058
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
	bl EventQuestTitle_080408C4
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08053DEC
	b _08054004
_08053DEC:
	movs r0, #0x52
	bl EventBGMPlay_080410A8
	bl EventWinInit_08040fe8
	movs r0, #1
	movs r1, #0
	movs r2, #7
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08053EBC @ =0x00320008
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _08053EC0 @ =0x00320009
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08053EC4 @ =0x0032000A
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #9
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _08053EC8 @ =0x0032000B
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _08053ECC @ =0x0032000C
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _08053ED0 @ =0x0032000D
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08053ED8
	movs r0, #1
	movs r1, #0
	movs r2, #9
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08053ED4 @ =0x0032000E
	bl EventWinMesSet_08041058
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
	bl EventWinSpeakerSet_08041018
	ldr r0, _08054008 @ =0x00320016
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _0805400C @ =0x00320017
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #9
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08054010 @ =0x00320018
	bl EventWinMesSet_08041058
_08053F20:
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _08054014 @ =0x0032000F
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #7
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08054018 @ =0x00320010
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _0805401C @ =0x00320011
	bl EventWinMesSet_08041058
	ldr r1, _08054020 @ =0x0046002B
	movs r0, #0x70
	bl EventMgSpecialGoal_080427E0
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08054024 @ =0x00320012
	bl EventWinMesSet_08041058
	bl sub_08040BB8
	movs r0, #1
	movs r1, #0
	movs r2, #9
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _08054028 @ =0x00320013
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _0805402C @ =0x00320014
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #9
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08054030 @ =0x00320015
	bl EventWinMesSet_08041058
	movs r0, #0xba
	bl EventSetFlag_080406E4
	movs r0, #0xb
	bl SetCharacterMetFlag_0802D7CC
	movs r0, #0x2d
	bl SetCharacterMetFlag_0802D7CC
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
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08054046
	b _08054238
_08054046:
	movs r0, #0x68
	bl PlayJingle_08041100
	bl EventWaitForJingle_08041138
	movs r0, #0x52
	bl EventBGMPlay_080410A8
	bl EventWinInit_08040fe8
	movs r0, #1
	movs r1, #0
	movs r2, #0xc
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _080541F0 @ =0x00320019
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #8
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _080541F4 @ =0x0032001A
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #9
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _080541F8 @ =0x0032001B
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #2
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _080541FC @ =0x0032001C
	bl EventWinMesSet_08041058
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08054200 @ =0x0032001D
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _08054204 @ =0x0032001E
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #7
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _08054208 @ =0x0032001F
	bl EventWinMesSet_08041058
	movs r0, #0x3f
	movs r1, #0x52
	bl QuestFinish_08042814
	movs r0, #1
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _0805420C @ =0x00320020
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #7
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _08054210 @ =0x00320021
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _08054214 @ =0x00320022
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #1
	movs r1, #0
	movs r2, #0xc
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08054218 @ =0x00320023
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _0805421C @ =0x00320024
	bl EventWinMesSet_08041058
	ldr r0, _08054220 @ =0x00320025
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _08054224 @ =0x00320026
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08054228 @ =0x00320027
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #7
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _0805422C @ =0x00320028
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _08054230 @ =0x00320029
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #9
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08054234 @ =0x0032002A
	bl EventWinMesSet_08041058
	movs r0, #0x70
	bl EventSetMinigame_08040B84
	movs r0, #0xbc
	bl SetEventFlag_080406BC
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
	bl EventBGMPlay_080410A8
	bl EventWinInit_08040fe8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _080542F0 @ =0x0032002B
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _080542F4 @ =0x0032002C
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0xc
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _080542F8 @ =0x0032002D
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #8
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _080542FC @ =0x0032002E
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08054300 @ =0x0032002F
	bl EventWinMesSet_08041058
	ldr r0, _08054304 @ =0x00320030
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _08054308 @ =0x00320031
	bl EventWinMesSet_08041058
	movs r0, #0xba
	bl EventUnsetFlag_080406D0
	movs r0, #0xbb
	bl EventUnsetFlag_080406D0
	movs r0, #0xbc
	bl UnsetEventFlag_080406D0
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
	bl EventWinInit_08040fe8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08054388 @ =0x00320032
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _0805438C @ =0x00320033
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08054390 @ =0x00320034
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #0xc
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r0, _08054394 @ =0x00320035
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #8
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _08054398 @ =0x00320036
	bl EventWinMesSet_08041058
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
	bl EventWinInit_08040fe8
	movs r0, #1
	movs r1, #0
	movs r2, #9
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _0805442C @ =0x00320037
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _08054430 @ =0x00320038
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _08054434 @ =0x00320039
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #2
	bl EventWinSpeakerSet_08041018
	ldr r0, _08054438 @ =0x0032003A
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #9
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _0805443C @ =0x0032003B
	bl EventWinMesSet_08041058
	movs r0, #0
	movs r1, #0
	movs r2, #3
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #0xa
	bl EventWinSpeakerSet_08041018
	ldr r0, _08054440 @ =0x0032003C
	bl EventWinMesSet_08041058
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
	bl EventInit_080405B8
	ldr r0, _080544F0 @ =0x0808E394
	bl LoadBuildingBG_0804115C
	ldr r0, _080544F4 @ =0x0817D8A4
	movs r1, #0
	movs r2, #1
	bl sub_08041464
	ldr r0, _080544F8 @ =0x0808E66C
	movs r1, #0x78
	movs r2, #0x38
	bl DisplayGFX_080414B4
	ldr r2, _080544FC @ =0x0808E7BC
	movs r0, #0
	movs r1, #0
	bl LoadCharSprite_080415A0
	movs r0, #0
	movs r1, #0
	bl sub_08041734
	movs r0, #0
	movs r1, #0x48
	movs r2, #0x59
	bl EventPlaceChara_08041894
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	ldr r2, _08054500 @ =0x0808E70C
	movs r0, #1
	movs r1, #0
	bl LoadCharSprite_080415A0
	movs r0, #1
	movs r1, #0
	bl sub_08041734
	movs r0, #1
	movs r1, #0x78
	movs r2, #0x4e
	bl EventPlaceChara_08041894
	movs r0, #1
	movs r1, #0
	movs r2, #3
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r2, _08054504 @ =0x0808E6BC
	movs r0, #2
	movs r1, #0
	bl LoadCharSprite_080415A0
	movs r0, #2
	movs r1, #0
	bl sub_08041734
	movs r0, #2
	movs r1, #0
	bl sub_08041808
	bl sub_080407FC
	movs r0, #0xbc
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0805450C
	movs r0, #0x52
	bl EventBGMPlay_080410A8
	ldr r0, _08054508 @ =sub_0805430C
	bl RunEventScript_0804066C
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
	bl EventPlaySFX_080410E0
	ldr r0, _08054538 @ =sub_08053D08
	bl RunEventScript_0804066C
	movs r0, #0xba
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08054558
	movs r0, #0x70
	bl EventQuestBegin_080406D0
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
	bl EventSetFlag_080406E4
_0805454E:
	ldr r0, _080545A8 @ =sub_08054034
	bl RunEventScript_0804066C
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
