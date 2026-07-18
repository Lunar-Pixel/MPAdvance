	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .text
	.ARM
	.syntax unified

	thumb_func_start sub_08045E58
sub_08045E58: @ 0x08045E58
	push {lr}
	movs r0, #0xf
	bl EventWinMesSet_08041058
	movs r0, #0x10
	bl EventWinMesSet_08041058
	movs r0, #0x11
	bl EventWinMesSet_08041058
	pop {r0}
	bx r0

	thumb_func_start sub_08045E70
sub_08045E70: @ 0x08045E70
	push {lr}
	ldr r0, _08045E9C @ =0x00010037
	bl EventWinMesSet_08041058
	ldr r0, _08045EA0 @ =0x00010038
	bl EventWinMesSet_08041058
_08045E7E:
	bl sub_08041048
	ldr r0, _08045EA4 @ =0x00010027
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _08045EA8
	cmp r0, #1
	beq _08045F0C
	b _08045F28
	.align 2, 0
_08045E9C: .4byte 0x00010037
_08045EA0: .4byte 0x00010038
_08045EA4: .4byte 0x00010027
_08045EA8:
	movs r0, #0x21
	bl EventWinSpeakerSet_08041018
	ldr r0, _08045EF8 @ =0x00010039
	bl EventWinMesSet_08041058
	ldr r0, _08045EFC @ =0x0001003A
	bl EventWinMesSet_08041058
	movs r0, #1
	movs r1, #0
	movs r2, #6
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #1
	movs r1, #1
	bl sub_08041808
	ldr r0, _08045F00 @ =0x00000129
	bl EventPlaySFX_080410E0
	movs r0, #0x5a
	bl EventSleep_08040690
	movs r0, #1
	movs r1, #0
	bl sub_08041808
	ldr r0, _08045F04 @ =0x0001003B
	bl EventWinMesSet_08041058
	ldr r0, _08045F08 @ =0x0001003C
	bl EventWinMesSet_08041058
	movs r0, #3
	bl EventSetFlag_080406E4
	b _08045E7E
	.align 2, 0
_08045EF8: .4byte 0x00010039
_08045EFC: .4byte 0x0001003A
_08045F00: .4byte 0x00000129
_08045F04: .4byte 0x0001003B
_08045F08: .4byte 0x0001003C
_08045F0C:
	movs r0, #0x21
	bl EventWinSpeakerSet_08041018
	ldr r0, _08045F20 @ =0x0001003D
	bl EventWinMesSet_08041058
	ldr r0, _08045F24 @ =0x0001003E
	bl EventWinMesSet_08041058
	b _08045E7E
	.align 2, 0
_08045F20: .4byte 0x0001003D
_08045F24: .4byte 0x0001003E
_08045F28:
	ldr r0, _08045F40 @ =0x0001002F
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	beq _08045E7E
	pop {r0}
	bx r0
	.align 2, 0
_08045F40: .4byte 0x0001002F

	thumb_func_start sub_08045F44
sub_08045F44: @ 0x08045F44
	push {lr}
	ldr r0, _08045FC4 @ =0x000B0026
	bl EventWinMesSet_08041058
	ldr r0, _08045FC8 @ =0x000B0027
	bl EventWinMesSet_08041058
	ldr r0, _08045FCC @ =0x000B0028
	bl EventWinMesSet_08041058
_08045F58:
	bl sub_08041048
	ldr r0, _08045FD0 @ =0x000B0029
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _08045FE4
	cmp r0, #1
	beq _08046050
	movs r0, #0x21
	bl EventWinSpeakerSet_08041018
	ldr r0, _08045FD4 @ =0x000B0030
	bl EventWinMesSet_08041058
	ldr r0, _08045FD8 @ =0x000B002B
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08045F58
	ldr r0, _08045FDC @ =0x000B002C
	bl EventWinMesSet_08041058
	bl sub_08041008
	movs r0, #0x1e
	bl EventSleep_08040690
	movs r0, #3
	movs r1, #0
	movs r2, #2
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #3
	movs r1, #1
	bl sub_08041808
	movs r0, #0x94
	lsls r0, r0, #1
	bl EventPlaySFX_080410E0
	bl EventWinInit_08040fe8
	ldr r0, _08045FE0 @ =0x000B0031
	b _080460A0
	.align 2, 0
_08045FC4: .4byte 0x000B0026
_08045FC8: .4byte 0x000B0027
_08045FCC: .4byte 0x000B0028
_08045FD0: .4byte 0x000B0029
_08045FD4: .4byte 0x000B0030
_08045FD8: .4byte 0x000B002B
_08045FDC: .4byte 0x000B002C
_08045FE0: .4byte 0x000B0031
_08045FE4:
	movs r0, #0x21
	bl EventWinSpeakerSet_08041018
	ldr r0, _08046040 @ =0x000B002A
	bl EventWinMesSet_08041058
	ldr r0, _08046044 @ =0x000B002B
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08045F58
	ldr r0, _08046048 @ =0x000B002C
	bl EventWinMesSet_08041058
	bl sub_08041008
	movs r0, #0x1e
	bl EventSleep_08040690
	movs r0, #3
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #3
	movs r1, #1
	bl sub_08041808
	movs r0, #0x94
	lsls r0, r0, #1
	bl EventPlaySFX_080410E0
	bl EventWinInit_08040fe8
	ldr r0, _0804604C @ =0x000B002D
	bl EventWinMesSet_08041058
	movs r0, #0x2a
	bl EventSetFlag_080406E4
	movs r0, #0x2b
	b _080460A6
	.align 2, 0
_08046040: .4byte 0x000B002A
_08046044: .4byte 0x000B002B
_08046048: .4byte 0x000B002C
_0804604C: .4byte 0x000B002D
_08046050:
	movs r0, #0x21
	bl EventWinSpeakerSet_08041018
	ldr r0, _080460B0 @ =0x000B002E
	bl EventWinMesSet_08041058
	ldr r0, _080460B4 @ =0x000B002B
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0804606E
	b _08045F58
_0804606E:
	ldr r0, _080460B8 @ =0x000B002C
	bl EventWinMesSet_08041058
	bl sub_08041008
	movs r0, #0x1e
	bl EventSleep_08040690
	movs r0, #3
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl EventAnimateChara_080418C8
	movs r0, #3
	movs r1, #1
	bl sub_08041808
	movs r0, #0x94
	lsls r0, r0, #1
	bl EventPlaySFX_080410E0
	bl EventWinInit_08040fe8
	ldr r0, _080460BC @ =0x000B002F
_080460A0:
	bl EventWinMesSet_08041058
	movs r0, #0x2a
_080460A6:
	bl EventSetFlag_080406E4
	pop {r0}
	bx r0
	.align 2, 0
_080460B0: .4byte 0x000B002E
_080460B4: .4byte 0x000B002B
_080460B8: .4byte 0x000B002C
_080460BC: .4byte 0x000B002F

	thumb_func_start sub_080460C0
sub_080460C0: @ 0x080460C0
	push {lr}
	ldr r0, _080460E8 @ =0x00170019
	bl EventWinMesSet_08041058
	ldr r0, _080460EC @ =0x0017001A
	bl EventWinMesSet_08041058
_080460CE:
	ldr r0, _080460F0 @ =0x0017001B
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _080460F4
	cmp r0, #1
	beq _08046120
	b _08046164
	.align 2, 0
_080460E8: .4byte 0x00170019
_080460EC: .4byte 0x0017001A
_080460F0: .4byte 0x0017001B
_080460F4:
	ldr r0, _08046110 @ =0x0017001C
	bl EventWinMesSet_08041058
	ldr r0, _08046114 @ =0x0017001D
	bl EventWinMesSet_08041058
	ldr r0, _08046118 @ =0x0017001E
	bl EventWinMesSet_08041058
	ldr r0, _0804611C @ =0x0017001F
	bl EventWinMesSet_08041058
	b _080460CE
	.align 2, 0
_08046110: .4byte 0x0017001C
_08046114: .4byte 0x0017001D
_08046118: .4byte 0x0017001E
_0804611C: .4byte 0x0017001F
_08046120:
	ldr r0, _0804614C @ =0x00170020
	bl EventWinMesSet_08041058
	ldr r0, _08046150 @ =0x00170021
	bl EventWinMesSet_08041058
	ldr r0, _08046154 @ =0x00170022
	bl EventWinMesSet_08041058
	ldr r0, _08046158 @ =0x00170023
	bl EventWinMesSet_08041058
	ldr r0, _0804615C @ =0x00170024
	bl EventWinMesSet_08041058
	ldr r0, _08046160 @ =0x00170025
	bl EventWinMesSet_08041058
	movs r0, #0x5a
	bl EventSetFlag_080406E4
	b _080460CE
	.align 2, 0
_0804614C: .4byte 0x00170020
_08046150: .4byte 0x00170021
_08046154: .4byte 0x00170022
_08046158: .4byte 0x00170023
_0804615C: .4byte 0x00170024
_08046160: .4byte 0x00170025
_08046164:
	ldr r0, _08046178 @ =0x00170026
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080460CE
	pop {r0}
	bx r0
	.align 2, 0
_08046178: .4byte 0x00170026

	thumb_func_start sub_0804617C
sub_0804617C: @ 0x0804617C
	push {lr}
	ldr r0, _080461A4 @ =0x001D0011
	bl EventWinMesSet_08041058
_08046184:
	ldr r0, _080461A8 @ =0x001D0012
	bl EventWinMesSet_08041058
	ldr r0, _080461AC @ =0x001D0013
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _080461B0
	cmp r0, #1
	beq _08046244
	b _0804628C
	.align 2, 0
_080461A4: .4byte 0x001D0011
_080461A8: .4byte 0x001D0012
_080461AC: .4byte 0x001D0013
_080461B0:
	ldr r0, _08046230 @ =0x001D0014
	bl EventWinMesSet_08041058
	ldr r0, _08046234 @ =0x001D0015
	bl EventWinMesSet_08041058
	movs r0, #0x74
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08046262
	ldr r0, _08046238 @ =0x001D0016
	bl EventWinMesSet_08041058
	bl sub_08041008
	ldr r2, _0804623C @ =0x0808E6CC
	movs r0, #2
	movs r1, #0
	bl LoadCharSprite_080415A0
	movs r0, #2
	movs r1, #0
	bl sub_08041734
	movs r0, #2
	movs r1, #0
	movs r2, #8
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	movs r0, #2
	movs r1, #0x78
	movs r2, #0x48
	bl EventPlaceChara_08041894
	movs r0, #0x94
	lsls r0, r0, #1
	bl EventPlaySFX_080410E0
	bl EventWinInit_08040fe8
	ldr r0, _08046240 @ =0x001D0018
	bl EventWinMesSet_08041058
	bl sub_08041008
	movs r0, #2
	bl sub_080417E0
	movs r0, #2
	movs r1, #0
	bl sub_08041684
	bl EventWinInit_08040fe8
	movs r0, #0x74
	bl EventSetFlag_080406E4
	movs r0, #0x21
	bl EventWinSpeakerSet_08041018
	b _08046184
	.align 2, 0
_08046230: .4byte 0x001D0014
_08046234: .4byte 0x001D0015
_08046238: .4byte 0x001D0016
_0804623C: .4byte 0x0808E6CC
_08046240: .4byte 0x001D0018
_08046244:
	ldr r0, _08046270 @ =0x001D0019
	bl EventWinMesSet_08041058
	ldr r0, _08046274 @ =0x001D001A
	bl EventWinMesSet_08041058
	ldr r0, _08046278 @ =0x001D001B
	bl EventWinMesSet_08041058
	ldr r0, _0804627C @ =0x001D001C
	bl EventWinMesSet_08041058
	ldr r0, _08046280 @ =0x001D001D
	bl EventWinMesSet_08041058
_08046262:
	ldr r0, _08046284 @ =0x001D001E
	bl EventWinMesSet_08041058
	ldr r0, _08046288 @ =0x001D001F
	bl EventWinMesSet_08041058
	b _08046184
	.align 2, 0
_08046270: .4byte 0x001D0019
_08046274: .4byte 0x001D001A
_08046278: .4byte 0x001D001B
_0804627C: .4byte 0x001D001C
_08046280: .4byte 0x001D001D
_08046284: .4byte 0x001D001E
_08046288: .4byte 0x001D001F
_0804628C:
	ldr r0, _080462A4 @ =0x001D0020
	bl EventWinChoice_0804106C
	bl EventWinChoiceGet_08041088
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0804629E
	b _08046184
_0804629E:
	pop {r0}
	bx r0
	.align 2, 0
_080462A4: .4byte 0x001D0020

	thumb_func_start sub_080462A8
sub_080462A8: @ 0x080462A8
	push {lr}
	sub sp, #8
	bl EventInit_080405B8
	ldr r0, _08046370 @ =0x0808DE94
	bl LoadBuildingBG_0804115C
	ldr r2, _08046374 @ =0x0808E92C
	movs r0, #0
	movs r1, #0
	bl LoadCharSprite_080415A0
	movs r0, #0
	movs r1, #0
	bl sub_08041734
	movs r0, #0
	movs r1, #0x78
	movs r2, #0x50
	bl EventPlaceChara_08041894
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0xff
	bl EventAnimateChara_080418C8
	ldr r0, _08046378 @ =0x0808DC1C
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [sp]
	str r1, [sp, #4]
	movs r0, #0
	movs r1, #1
	mov r2, sp
	bl sub_08041D0C
	ldr r2, _0804637C @ =0x0808E6BC
	movs r0, #1
	movs r1, #0
	bl LoadCharSprite_080415A0
	movs r0, #1
	movs r1, #0
	bl sub_08041734
	movs r0, #1
	movs r1, #0x78
	movs r2, #0x30
	bl EventPlaceChara_08041894
	movs r0, #1
	movs r1, #0
	bl sub_08041808
	ldr r2, _08046380 @ =0x0808E6EC
	movs r0, #3
	movs r1, #0
	bl LoadCharSprite_080415A0
	movs r0, #3
	movs r1, #0
	bl sub_08041734
	movs r0, #3
	movs r1, #0x78
	movs r2, #0x40
	bl EventPlaceChara_08041894
	movs r0, #3
	movs r1, #0
	bl sub_08041808
	bl sub_080407FC
	bl EventWinInit_08040fe8
	movs r0, #0x21
	bl EventWinSpeakerSet_08041018
	movs r0, #0x29
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08046388
	movs r0, #0x2a
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08046388
	movs r0, #0x11
	bl EventBGMPlay_080410A8
	ldr r0, _08046384 @ =sub_08045F44
	bl RunEventScript_0804066C
	b _08046418
	.align 2, 0
_08046370: .4byte 0x0808DE94
_08046374: .4byte 0x0808E92C
_08046378: .4byte 0x0808DC1C
_0804637C: .4byte 0x0808E6BC
_08046380: .4byte 0x0808E6EC
_08046384: .4byte sub_08045F44
_08046388:
	movs r0, #0x59
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080463B4
	movs r0, #0x5d
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080463B4
	movs r0, #0x14
	bl EventBGMPlay_080410A8
	ldr r0, _080463B0 @ =sub_080460C0
	bl RunEventScript_0804066C
	b _08046418
	.align 2, 0
_080463B0: .4byte sub_080460C0
_080463B4:
	movs r0, #0x73
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080463E0
	movs r0, #0x74
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080463E0
	movs r0, #0x15
	bl EventBGMPlay_080410A8
	ldr r0, _080463DC @ =sub_0804617C
	bl RunEventScript_0804066C
	b _08046418
	.align 2, 0
_080463DC: .4byte sub_0804617C
_080463E0:
	movs r0, #0
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0804640C
	movs r0, #3
	bl TestQuestFlag_08040714
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0804640C
	movs r0, #0x10
	bl EventBGMPlay_080410A8
	ldr r0, _08046408 @ =sub_08045E70
	bl RunEventScript_0804066C
	b _08046418
	.align 2, 0
_08046408: .4byte sub_08045E70
_0804640C:
	movs r0, #0x19
	bl EventBGMPlay_080410A8
	ldr r0, _08046464 @ =sub_08045E58
	bl RunEventScript_0804066C
_08046418:
	movs r0, #0x1b
	bl SetCharacterMetFlag_0802D7CC
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
	movs r0, #3
	bl sub_080417E0
	movs r0, #3
	movs r1, #0
	bl sub_08041684
	bl sub_0804062C
	add sp, #8
	pop {r0}
	bx r0
	.align 2, 0
_08046464: .4byte sub_08045E58
