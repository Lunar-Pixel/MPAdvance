	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .rodata
	@.SECTION .text

	.GLOBAL gUnknown_0200AF24
gUnknown_0200AF24:
	.2byte 0x0040
	.2byte 0x0080
	.2byte 0x0020
	.2byte 0x0010
	.2byte 0x0000

	.GLOBAL gUnknown_0200AF2E
gUnknown_0200AF2E:
	.2byte 0x0000
	.2byte 0x000A
	.2byte 0x000A
	.2byte 0x000A
	.2byte 0x000A
	.2byte 0x000A
	.2byte 0x000A
	.2byte 0x000A
	.2byte 0x000A
	.2byte 0x000A
	.2byte 0x000A

	.GLOBAL gUnknown_0200AF44
gUnknown_0200AF44:
	.2byte 0x0008
	.2byte 0x0014
	.2byte 0x0020
	.2byte 0x002C
	.2byte 0x0038

	.GLOBAL gUnknown_0200AF4E
gUnknown_0200AF4E:
	.byte 0x04, 0x02, 0x04, 0x00
	.byte 0x04, 0x01, 0x04, 0x00
	.byte 0x04, 0x03, 0x04, 0x00
	.byte 0x02, 0x02, 0x02, 0x00
	.byte 0x01, 0x03, 0x01, 0x00
	.byte 0x03, 0x01, 0x03, 0x00

	.GLOBAL gUnknown_0200AF66
gUnknown_0200AF66:
	.2byte 0x0014, 0x0034, 0x0015, 0x0035
	.2byte 0x0016, 0x0036, 0x0017, 0x0037
	.2byte 0x0018, 0x0038, 0x0019, 0x0039
	.2byte 0x001A, 0x003A, 0x001B, 0x003B
	.2byte 0x001C, 0x003C, 0x001D, 0x003D
	.2byte 0x0057, 0x0057

	.GLOBAL gUnknown_0200AF92
gUnknown_0200AF92:
	.2byte 0x0074, 0x0075, 0x0076, 0x0077
	.2byte 0x0078, 0x0079, 0x007A, 0x007B
	.2byte 0x007C, 0x007D, 0x0057, 0x0058
	.2byte 0x0000

	.GLOBAL gUnknown_0200AFAC
gUnknown_0200AFAC:
	.4byte 0x000186A0
	.4byte 0x00002710
	.4byte 0x000003E8
	.4byte 0x00000064
	.4byte 0x0000000A
	.4byte 0x00000000

	.GLOBAL gUnknown_0200AFC4
gUnknown_0200AFC4:
	.4byte sub_020029C0
	.4byte sub_02002C94
	.4byte sub_02002D14
	.4byte sub_02002D54
	.4byte sub_02002E40
	.4byte sub_02002E88
	.4byte sub_02002F1C
	.4byte sub_02002FBC
	.4byte sub_02002FC0
	.4byte sub_02003180

	.GLOBAL gUnknown_0200AFEC
gUnknown_0200AFEC:
	.ASCII "%03d\0\0\0\0"

	.GLOBAL gUnknown_0200AFF4
gUnknown_0200AFF4:
	.ASCII "%02X\0\0\0\0"

	.GLOBAL gUnknown_0200AFFC
gUnknown_0200AFFC:
	.ASCII "(null)\0\0"

	.ASCII "MultiSioSync4Sio32Load010918\0\0\0\0"

	.GLOBAL gUnknown_0200B024
gUnknown_0200B024:
	.ASCII "%03d\0\0\0\0"

	.GLOBAL gUnknown_0200B02C
gUnknown_0200B02C:
	.ASCII "%06X %06X\0\0\0"

	.GLOBAL gUnknown_0200B038
gUnknown_0200B038:
	.ASCII "%06X %06X %06X\0\0"

	.GLOBAL gUnknown_0200B048
gUnknown_0200B048:
	.ASCII "%08X\0\0\0\0"
