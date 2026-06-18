	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .data
	@.SECTION .text

	.GLOBAL game_data_08076ae8
game_data_08076ae8:
	.INCBIN "baserom.gba", 0x76ae8, 0x77258-0x76ae8
	
	.GLOBAL gCmprGameGaddgetCode_08077258
gCmprGameGaddgetCode_08077258:
	@ Gaddgets
	.4byte 0x082D26D0	@ snooze ewes gaddget code
	.4byte 0x00000000	@ blank/unused
	.4byte 0x082D9854	@ portagust gaddget code
	.4byte 0x082E6AD8	@ magic lamp gaddget code
	.4byte 0x082F1D44	@ compat i com gaddget code
	.4byte 0x082FAE9C	@ power star gaddget code
	.4byte 0x0830246C	@ desktop golf gaddget code
	.4byte 0x0830B9B8	@ shroom slide gaddget code
	.4byte 0x083157B4	@ stick to it gaddget code
	.4byte 0x0832020C	@ bait n wait gaddget code
	.4byte 0x0832D228	@ digitizer gaddget code
	.4byte 0x08334BF8	@ lip sync gaddget code
	.4byte 0x0833FE0C	@ shroom bloom gaddget code
	.4byte 0x0834B0DC	@ poochy pal gaddget code
	.4byte 0x08356748	@ bulls eye gaddget code
	.4byte 0x0835CEDC	@ soil sonar gaddget code
	.4byte 0x084812F4	@ eye exam gaddget code
	.4byte 0x083680E8	@ mini slugger gaddget code
	.4byte 0x0836EAF8	@ tap tap sumo gaddget code
	.4byte 0x08376FE4	@ egg roll gaddget code
	.4byte 0x0837F134	@ shroom drop gaddget code
	.4byte 0x08383ED0	@ morse maker gaddget code
	.4byte 0x0838E074	@ 4-p pinball gaddget code
	.4byte 0x08398C70	@ snow globe gaddget code
	.4byte 0x0839FFC4	@ tile trial gaddget code
	.4byte 0x083A5ECC	@ map maker gaddget code
	.4byte 0x083AD030	@ attack frog gaddget code
	.4byte 0x083B5988	@ mini maze gaddget code
	.4byte 0x083BAAA4	@ faux flame gaddget code
	.4byte 0x083C1410	@ stress press gaddget code
	.4byte 0x083CCA14	@ bomb game gaddget code
	.4byte 0x08489554	@ card trick gaddget code
	.4byte 0x083D4C2C	@ hourglass gaddget code
	.4byte 0x083DBC5C	@ rochambeau gaddget code
	.4byte 0x083E2958	@ egg panic gaddget code
	.4byte 0x083ED7E0	@ block punch gaddget code
	.4byte 0x083F9ADC	@ toad force v gaddget code (cant get to via gaddgets menu)
	.4byte 0x08400200	@ dart attack gaddget code
	.4byte 0x0840757C	@ breeze buddy gaddget code
	.4byte 0x0840D08C	@ chicken race gaddget code
	.4byte 0x00000000	@ blank/unused
	.4byte 0x08417E90	@ love me not gaddget code
	.4byte 0x00000000	@ blank/unused
	.4byte 0x00000000	@ blank/unused
	.4byte 0x00000000	@ blank/unused
	.4byte 0x00000000	@ blank/unused
	.4byte 0x00000000	@ blank/unused
	.4byte 0x00000000	@ blank/unused
	.4byte 0x00000000	@ blank/unused
	.4byte 0x0841F3C8	@ mini bowling gaddget code
	.4byte 0x08426A44	@ mini b ball gaddget code
	.4byte 0x00000000	@ blank/unused
	.4byte 0x00000000	@ blank/unused
	.4byte 0x0842E8E4	@ screen clean gaddget code
	.4byte 0x084378EC	@ predictotron gaddget code
	.4byte 0x084401D4	@ cake maker gaddget code
	.4byte 0x08448E90	@ mini soccer gaddget code
	.4byte 0x0845214C	@ desert menu gaddget code
	.4byte 0x0845FDBC	@ bead machine gaddget code
	.4byte 0x08466410	@ jewelry case gaddget code
	.4byte 0x0847121C	@ castle night gaddget code
	.4byte 0x00000000	@ blank/unused
	.4byte 0x00000000	@ blank/unused
	.4byte 0x00000000	@ blank/unused
	.4byte 0x00000000	@ blank/unused
	.4byte 0x00000000	@ blank/unused
	.4byte 0x00000000	@ blank/unused
	.4byte 0x084788B0	@ hope chest gaddget code
	@ Minigames
	.4byte 0x0864D96C	@ boo bye game code
	.4byte 0x08657FC4	@ grabbit game code
	.4byte 0x08663068	@ chomp walker game code
	.4byte 0x0866E140	@ cloud climb game code
	.4byte 0x08677A94	@ barrel peril game code
	.4byte 0x08680D4C	@ big popper game code
	.4byte 0x086896DC	@ forest jump game code
	.4byte 0x08693EA0	@ switch way game code
	.4byte 0x0869E07C	@ amplifried game code
	.4byte 0x086A7AE4	@ flingshot game code
	.4byte 0x086B0F80	@ spooky spike game code
	.4byte 0x086B9A34	@ bob-ooom game code
	.4byte 0x086C2AF0	@ reel cheep game code
	.4byte 0x086CC178	@ shell stack game code
	.4byte 0x086D4C70	@ bill bounce game code
	.4byte 0x086DD77C	@ bunny belt game code
	.4byte 0x086E5C84	@ pest aside game code
	.4byte 0x086EE3B8	@ melon folly game code
	.4byte 0x086F7874	@ sort stack game code
	.4byte 0x08700FB8	@ on the spot game code
	.4byte 0x00000000	@ blank/unused
	.4byte 0x08709AFC	@ koopa crunch game code
	.4byte 0x08713D6C	@ floor it game code
	.4byte 0x0871D6B8	@ dreadmill game code
	.4byte 0x08727194	@ stompbot xl game code
	.4byte 0x08730F24	@ go go pogo game code
	.4byte 0x0873B66C	@ sled slide game code
	.4byte 0x08746410	@ flippin out game code
	.4byte 0x08750604	@ see monkey minigame code
	.4byte 0x0875A8E4	@ outta my way game code
	.4byte 0x08765C3C	@ broom zoom game code
	.4byte 0x00000000	@ blank/unused
	.4byte 0x00000000	@ blank/unused
	.4byte 0x0876F2C4	@ tank down game code
	.4byte 0x0877C19C	@ hammergeddon game code
	.4byte 0x08787530	@ stair scare game code
	.4byte 0x08792294	@ chicken game code
	.4byte 0x0879B980	@ chain saw game code
	.4byte 0x087A52A8	@ volleybomb game code
	.4byte 0x087AFFF8	@ koopa kurl game code
	.4byte 0x08500A24	@ mush rush game code
	.4byte 0x084ED8C0	@ crushed ice game code
	.4byte 0x08512C4C	@ peek-n-seek game code
	.4byte 0x0852326C	@ splatterball game code
	.4byte 0x0852FC00	@ trap floor game code
	.4byte 0x0853F7BC	@ koopa kappa game code
	.4byte 0x00000000	@ blank/unused
	.4byte 0x08492044	@ scratch em game code
	.4byte 0x084A1154	@ match em game code
	.4byte 0x00000000	@ blank/unused
	.4byte 0x084B1768	@ watch em game code
	.4byte 0x084C1FF4	@ drop em game code
	.4byte 0x084CF478	@ stop em game code
	.4byte 0x084DF354	@ pair em game code
	.4byte 0x00000000	@ blank/unused
	.4byte 0x087BB1CC	@ slammer game code

	.GLOBAL game_data_08077448
game_data_08077448:
	.INCBIN "baserom.gba", 0x77448, 0x7c7168-0x77448
