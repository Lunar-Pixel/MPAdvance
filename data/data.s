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
	.INCBIN "baserom.gba", 0x77448, 0x7f4c0-0x77448
	
	.GLOBAL gMenuScrollSpeed_0807F4C0
gMenuScrollSpeed_0807F4C0:
	.INCBIN "baserom.gba", 0x7f4c0, 0x7f4c4-0x7f4c0	@ 15 frames, 10 frames, 5 frames , 5 frames

	.GLOBAL gGameStateInitFuncs_0807F4C4
gGameStateInitFuncs_0807F4C4:
	.4byte sub_080089DC  @ unknown/unused
	.4byte sub_080605B4  @ title screen logos
	.4byte sub_0802EB88  @ shroom city - setup
	.4byte sub_08030220  @ shroom city - gameplay
	.4byte sub_0802A03C  @ shroom city - map
	.4byte sub_0802B67C  @ shroom city - quests menu
	.4byte sub_0802CC2C  @ shroom city - characters menu
	.4byte sub_0802E274  @ shroom city - character credits/diary? -- game shows what you did, no clue when this is used
	.4byte sub_08006B48  @ shroom city - quest building
	.4byte sub_08019290  @ shroom city - quest game 
	.4byte sub_0800C0F0  @ minigame attack
	.4byte sub_0800FD18  @ game room setup
	.4byte sub_08011664  @ game room interior
	.4byte sub_08012848  @ duel dash
	.4byte sub_08015420  @ bowser land
	.4byte sub_08017504  @ bowser land coaster
	.4byte sub_08019264  @ unknown/unused
	.4byte sub_08002358  @ minigame instructions?
	.4byte sub_08058BFC  @ title screen
	.4byte sub_0805AC9C  @ intro
	.4byte sub_08062C78  @ play land - free play
	.4byte sub_08063444  @ play land - minigame giveaway (link cable download play)
	.4byte sub_080631F0  @ play land - minigame results
	.4byte sub_0806A768  @ party land - duel link
	.4byte sub_0806DCD4  @ party land - secret battle
	.4byte sub_0806C570  @ party land - koopa kid battle
	.4byte sub_0805E434  @ play land - gaddgets menu
	.4byte sub_0805E7D0  @ play land - gaddget giveaway (link cable download play)
	.4byte sub_0805E11C  @ gaddget shop
	.4byte sub_08066484  @ inital passport setup screen
	.4byte sub_08066874  @ passport menu
	.4byte sub_0803BD74  @ shroom city - game end saving screen
	.4byte sub_0803D820  @ shroom city - quit game/game over options
	.4byte sub_0805BE1C  @ shroom city - credits related 1 (used when you beat final showdown)
	.4byte sub_08006E64  @ save file initalization/save file loading (shows saving screen if you have no save data) -- BIG NOTE: if the game doesnt do this, itll act like no save data exists
	.4byte sub_080071B0  @ minigame result saving screen
	.4byte sub_08064040  @ main menu
	.4byte sub_0805DB0C  @ bonus board
	.4byte sub_0803DCA8  @ shroom city - credits related 2 (used when you beat final showdown)
	.4byte sub_0806A424  @ credits
	.4byte sub_0805F494  @ party land 100 player battle
	.4byte sub_0805F898  @ party land 100 player attack
	.4byte sub_08060474  @ party land - menu
	.4byte sub_08060518  @ challenge land - menu
	.4byte sub_080603BC  @ play land - menu
	.4byte sub_08068BC4  @ play land - penguin race
	.4byte sub_0806E6F4  @ health safety screen
	.4byte 0x00000000

	.GLOBAL game_data_0807f584
game_data_0807f584:
	.INCBIN "baserom.gba", 0x7f584, 0x87d60-0x7f584
	
	.GLOBAL gShroomSityStateTable_08087D60
gShroomSityStateTable_08087D60:
	.4byte sub_0803034C @ return from game
	.4byte sub_0803042C @ save from menu -- fun little note: if you put this pointer to the koopa kid ones below, the game will reboot and send you to the health/safety screen when you find where a koopa kid wouldve been
	.4byte sub_080308C0 @ begin turn 1
	.4byte sub_080309B4 @ begin turn 2
	.4byte sub_08030AB4 @ roll the dice state
	.4byte sub_08030E78 @ movement state
	.4byte sub_080313D0 @ currently moving
	.4byte sub_080316B8 @ enter building dialouge
	.4byte sub_08031B00 @ go back a space
	.4byte sub_08031CC8 @ minus space
	.4byte sub_08031F34 @ extra roll space
	.4byte sub_08032088 @ menu
	.4byte sub_080325C8 @ koopa kid appears - rock paper scissors/rochambeau
	.4byte sub_08032A88 @ koopa kid appears - warp
	.4byte sub_08032D04 @ uncleared quest alert
	.4byte sub_08032F20 @ initial roll opening
	.4byte sub_08033018 @ out of mushrooms
	.4byte sub_08033304 @ quest complete
	.4byte sub_08033ABC @ minigame wheel spin
	.4byte sub_08033C98 @ minigame win
	.4byte sub_08033DB8 @ koopa kid minigame
	.4byte sub_0803402C @ koopa kid minigame win
	.4byte sub_08034204 @ pipe house cutcene
	.4byte sub_08034284 @ quest complete -- doesnt pan to the spot you completed seemingly (its not a unused one of these)

	.GLOBAL game_data_08087dc0
game_data_08087dc0:
	.INCBIN "baserom.gba", 0x87dc0, 0x8db10-0x87dc0

	.GLOBAL gBuildingFunctions_0808DB10
gBuildingFunctions_0808DB10:
	@ Town Area
	.4byte sub_0804277C @ vending machines
	.4byte sub_08042AA8 @ kind goomba
	.4byte sub_08042DCC @ shroomlocks house
	.4byte sub_080432C8 @ train station
	.4byte sub_0804382C @ bob-omb avenue
	.4byte TownGameRoomAInit_08043C58 @ town game room A
	.4byte TownGameRoomBInit_08043F5C @ town game room B
	.4byte sub_08044388 @ mushroom condos 1F
	.4byte sub_08044864 @ mushroom condos 2F
	.4byte sub_0804535C @ mushroom condos 3F
	.4byte sub_08045D58 @ mushroom condos basement (blank option in the menu)
	.4byte sub_0804599C @ mushroom condos rooftop
	.4byte sub_08045E18 @ UNUSED - Early Pipe House -- final version is in the desert, this plays the town building theme
	.4byte sub_080462A8 @ item shop
	.4byte sub_08046720 @ chain chomp
	.4byte sub_08047384 @ koopa bank
	.4byte sub_08047BFC @ thwomp house
	.4byte sub_080483F0 @ goombob manor
	.4byte sub_08048850 @ bob-omba
	.4byte sub_08049850 @ bowser mansion
	.4byte sub_0804A590 @ bowser toy shop
	.4byte sub_0804B1B4 @ bowser pad
	@ Horror Area
	.4byte sub_0804B870 @ mr i
	.4byte sub_0804BCBC @ horror condo 1F
	.4byte sub_0804C3B8 @ horror condo 2F
	.4byte sub_0804C874 @ horror condo basement
	.4byte sub_0804D8C0 @ boo cemetery
	@ Desert Area
	.4byte sub_0804DB08 @ pirana plant
	.4byte sub_0804E008 @ mushroom stadium 
	.4byte sub_0804E4CC @ mushroom field
	.4byte sub_0804E690 @ the hammer
	.4byte sub_0804E9E0 @ pokey
	.4byte sub_0804ECA8 @ pyramid (gotten to via the hammer)
	.4byte sub_0804F328 @ klepto ruins
	.4byte sub_0804FD88 @ bowser stadium
	@ Snow Area
	.4byte sub_0805027C @ ice game room
	.4byte sub_080505E0 @ ice stadium
	.4byte sub_0805119C @ mt. frostbite
	@ Jungle Area
	.4byte sub_08051944 @ ukiki house
	.4byte sub_08051E1C @ dance stage
	.4byte sub_080522B8 @ jungle game hut
	.4byte sub_0805273C @ petal house
	.4byte sub_08052B90 @ spear thicket
	.4byte sub_080530B0 @ loch dorrie
	.4byte sub_08053B74 @ bowser hideout
	.4byte sub_08054444 @ final bowser showdown -- notibly, its in the desert area as part of the pipe house, thats more a cave or mountain than a house, as evident by the unused pipe house
	.4byte sub_08055128 @ bowser lab
	@ Seaside Area
	.4byte sub_080559D4 @ bowser game hall
	.4byte sub_08056550 @ sushi cliff
	.4byte sub_08056734 @ sandy beach
	.4byte sub_08056B8C @ lakitu house
	.4byte sub_08057114 @ mushroom library
	.4byte sub_080575AC @ mushtoom pool
	.4byte sub_080578BC @ mushroom beacon
	.4byte sub_08057C8C @ mario vaundeville
	.4byte sub_080580F8 @ duel tower 1F
	.4byte sub_080584E0 @ duel tower 2F
	.4byte sub_08058828 @ duel tower 3F

	.GLOBAL gUnknown_0808DBF8 @ Town Game Room B related
gUnknown_0808DBF8:
	.4byte 0x00030001
	.4byte 0x00000002

	.GLOBAL game_data_0808dc00
game_data_0808dc00:
	.INCBIN "baserom.gba", 0x8dc00, 0x8DD54-0x8dc00

	.GLOBAL gUnknown_0808DD54
gUnknown_0808DD54:
	.INCBIN "baserom.gba", 0x8DD54, 0x8DD7C-0x8DD54

	.GLOBAL gUnknown_0808DD7C @ Town Game Room B background pointers
gUnknown_0808DD7C:
	.INCBIN "baserom.gba", 0x8DD7C, 0x8E9AC-0x8DD7C
	
	.GLOBAL gUnknown_0808E9AC
gUnknown_0808E9AC:
	.INCBIN "baserom.gba", 0x8E9AC, 0x8E9BC-0x8E9AC	
	 
	.GLOBAL gUnknown_0808E9BC @ Town Game Room B amp sprite pointers
gUnknown_0808E9BC:
	.INCBIN "baserom.gba", 0x8E9BC, 0x2aba28-0x8E9BC

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
