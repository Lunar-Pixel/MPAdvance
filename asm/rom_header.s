@-------------------------------------------------------------------------------
@ Game Boy Advance ROM Header Filled by GBAFIX, see makefile for the data here
@-------------------------------------------------------------------------------

start:
	b init

@ Nintendo Logo
	.space 156

@ Game Title
	.space 12

@ Game Code
	.space 4

@ Maker Code
	.space 2

@ ROM Header Magic Value
	.byte 0

@ Main Unit Code
	.byte 0

@ Device Type
	.byte 0

@ Reserved Area
	.space 7

@ Software Version
	.byte 0

@ Header Checksum
	.byte 0

@ Reserved Area
	.space 2
