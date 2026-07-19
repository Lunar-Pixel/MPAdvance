	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .rodata

	.align 2, 0

	.GLOBAL game_text_pack_082aba28 @ houses the compressed game text
game_text_082aba28:
	.INCBIN "baserom.gba", 0x2aba28, 0x2d26d0-0x2aba28

	.GLOBAL gaddget_code_082d26d0 @ houses the gaddgets compressed code
gaddget_code_082d26d0:
	.INCBIN "baserom.gba", 0x2d26d0, 0x492044-0x2d26d0
	
	.GLOBAL gamba_code_08492044 @ houses the gamba games compressed code
gamba_code_08492044:
	.INCBIN "baserom.gba", 0x492044, 0x4ed8c0-0x492044

	.GLOBAL koopa_kid_code_084ed8c0 @ houses the koopa kid games compressed code
koopa_kid_code_084ed8c0:
	.INCBIN "baserom.gba", 0x4ed8c0, 0x54f2dc-0x4ed8c0
	
	.GLOBAL minigame_data_pack_0854f2dc @ houses all the assets for minigames below 
minigame_data_pack_0854f2dc:
	.INCBIN "baserom.gba", 0x54f2dc, 0x64d96c-0x54f2dc	

	.GLOBAL minigame_code_0864d96c @ houses the compressed code for minigames that use data from minigame_data_pack_0854f2dc
minigame_code_0864d96c:
	.INCBIN "baserom.gba", 0x64d96c, 0x76f2c4-0x64d96c
	
	.GLOBAL battle_game_code_0876f2c4 @ houses the compressed code for battle minigames that use data from minigame_data_pack_0854f2dc 
battle_game_code_0876f2c4:
	.INCBIN "baserom.gba", 0x76f2c4, 0x7c5434-0x76f2c4

	.GLOBAL game_data_087c5434
game_data_087c5434:
	.INCBIN "baserom.gba", 0x7c5434, 0x7c7168-0x7c5434
