	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .text
	.syntax unified

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
