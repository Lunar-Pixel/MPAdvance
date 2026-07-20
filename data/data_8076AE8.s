	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .rodata
	@.SECTION .text

	.GLOBAL game_data_08076ae8
game_data_08076ae8:
	.INCBIN "baserom.gba", 0x76ae8, 0x77258-0x76ae8

	.GLOBAL gCmprGameGaddgetCode_08077258
gCmprGameGaddgetCode_08077258:
	@ Gaddgets
	.4byte gSnoozeEwesCmprCode
	.4byte 0x00000000	@ blank/unused
	.4byte gPortagustCmprCode
	.4byte gMagicLampCmprCode
	.4byte gCompatIComCmprCode
	.4byte gPowerStarCmprCode
	.4byte gDesktopGolfCmprCode
	.4byte gShroomSlideCmprCode
	.4byte gStickToItCmprCode
	.4byte gBaitNWaitCmprCode
	.4byte gDigitizerCmprCode
	.4byte gLipSyncCmprCode
	.4byte gShroomBloomCmprCode
	.4byte gPoochyPalCmprCode
	.4byte gBullseyeCmprCode
	.4byte gSoilSonarCmprCode
	.4byte gEyeExamCmprCode
	.4byte gMiniSluggerCmprCode
	.4byte gTapTapSumoCmprCode
	.4byte gEggRollCmprCode
	.4byte gShroomDropCmprCode
	.4byte gMorseMakerCmprCode
	.4byte g4PPinballCmprCode
	.4byte gSnowGlobeCmprCode
	.4byte gTileTrialCmprCode
	.4byte gMapMakerCmprCode
	.4byte gAttackFrogCmprCode
	.4byte gMiniMazeCmprCode
	.4byte gFauxFlameCmprCode
	.4byte gStressPressCmprCode
	.4byte gBombGameCmprCode
	.4byte gCardTrickCmprCode
	.4byte gHourglassCmprCode
	.4byte gRochambeauCmprCode
	.4byte gEggPanicCmprCode
	.4byte gBlockPunchCmprCode
	.4byte gToadForceVCmprCode	@ cant get to this via the gaddgets menu, but is accessable (has a unused icon for the gaddgets menu though)
	.4byte gDartAttackCmprCode
	.4byte gBreezeBuddyCmprCode
	.4byte gChickenRaceCmprCode
	.4byte 0x00000000	@ blank/unused
	.4byte gLoveMeNotCmprCode
	.4byte 0x00000000	@ blank/unused
	.4byte 0x00000000	@ blank/unused
	.4byte 0x00000000	@ blank/unused
	.4byte 0x00000000	@ blank/unused
	.4byte 0x00000000	@ blank/unused
	.4byte 0x00000000	@ blank/unused
	.4byte 0x00000000	@ blank/unused
	.4byte gMiniBowlingCmprCode
	.4byte gMiniBBallCmprCode
	.4byte 0x00000000	@ blank/unused
	.4byte 0x00000000	@ blank/unused
	.4byte gScreenCleanCmprCode
	.4byte gPredictotronCmprCode
	.4byte gCakeMakerCmprCode
	.4byte gMiniSoccerCmprCode
	.4byte gDessertMenuCmprCode
	.4byte gBeadMachineCmprCode
	.4byte gJewelryCaseCmprCode
	.4byte gCastleNightCmprCode
	.4byte 0x00000000	@ blank/unused
	.4byte 0x00000000	@ blank/unused
	.4byte 0x00000000	@ blank/unused
	.4byte 0x00000000	@ blank/unused
	.4byte 0x00000000	@ blank/unused
	.4byte 0x00000000	@ blank/unused
	.4byte gHopeChestCmprCode
	@ Minigames
	.4byte gBooByeCmprCode
	.4byte gGrabbitCmprCode
	.4byte gChompWalkerCmprCode
	.4byte gCloudClimbCmprCode
	.4byte gBarrelPerilCmprCode
	.4byte gBigPopperCmprCode
	.4byte gForestJumpCmprCode
	.4byte gSwitchWayCmprCode
	.4byte gAmplifriedCmprCode
	.4byte gFlingshotCmprCode
	.4byte gSpookySpikeCmprCode
	.4byte gBobOOOMCmprCode
	.4byte gReelCheepCmprCode
	.4byte gShellStackCmprCode
	.4byte gBillBounceCmprCode
	.4byte gBunnyBeltCmprCode
	.4byte gPestAsideCmprCode
	.4byte gMelonFollyCmprCode
	.4byte gSortStackCmprCode
	.4byte gOnTheSpotCmprCode
	.4byte 0x00000000	@ blank/unused
	.4byte gKoopaKrunchCmprCode
	.4byte gFloorItCmprCode
	.4byte gDreadmillCmprCode
	.4byte gStompbotXLCmprCode
	.4byte gGoGoPogoCmprCode
	.4byte gSledSlideCmprCode
	.4byte gFlippinOutCmprCode
	.4byte gSeeMonkeyCmprCode
	.4byte gOuttaMyWayCmprCode
	.4byte gBroomZoomCmprCode
	.4byte 0x00000000	@ blank/unused
	.4byte 0x00000000	@ blank/unused
	.4byte gTankDownCmprCode
	.4byte gHammergeddonCmprCode
	.4byte gStairScareCmprCode
	.4byte gChickenCmprCode
	.4byte gChainSawCmprCode
	.4byte gVolleybombCmprCode
	.4byte gKoopaCurlCmprCode
	.4byte gMushRushCmprCode
	.4byte gCrushedIceCmprCode
	.4byte gPeekNSeekCmprCode
	.4byte gSplatterballCmprCode
	.4byte gTrapFloorCmprCode
	.4byte gKoopaKappaCmprCode
	.4byte 0x00000000	@ blank/unused
	.4byte gScratchEmCmprCode
	.4byte gMatchEmCmprCode
	.4byte 0x00000000	@ blank/unused
	.4byte gWatchEmCmprCode
	.4byte gDropEmCmprCode
	.4byte gStopEmCmprCode
	.4byte gPairEmCmprCode
	.4byte 0x00000000	@ blank/unused
	.4byte gSlammerCmprCode	@ slammer game code

	.GLOBAL game_data_08077448
game_data_08077448:
	.INCBIN "baserom.gba", 0x77448, 0x7f4c0-0x77448
	
	.GLOBAL gMenuScrollSpeed_0807F4C0
gMenuScrollSpeed_0807F4C0:
	.byte 15
	.byte 10
	.byte 5
	.byte 5

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
	.4byte HealthSafetyScreen_0806E6F4  @ health safety screen
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
	.4byte sub_08042DCC @ shroomlock house
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
	.4byte IceGameRoomInit_0805027C @ ice game room
	.4byte IceStadiumInit_080505E0 @ ice stadium
	.4byte MtFrostbiteInit_0805119C @ mt. frostbite
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
	.4byte sub_080575AC @ mushroom pool
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
	.INCBIN "baserom.gba", 0x8DD7C, 0x8E204-0x8DD7C
	
	.GLOBAL gUnknown_0808E204 @ Ice Game Room background pointers
gUnknown_0808E204:
	.INCBIN "baserom.gba", 0x8E204, 0x8E22C-0x8E204	
	
	.GLOBAL gUnknown_0808E22C @ Ice Stadium background pointers
gUnknown_0808E22C:
	.INCBIN "baserom.gba", 0x8E22C, 0x8E254-0x8E22C	
	
	.GLOBAL gUnknown_0808E254
gUnknown_0808E254:
	.INCBIN "baserom.gba", 0x8E254, 0x8E62C-0x8E254
	
	.GLOBAL gUnknown_0808E62C
gUnknown_0808E62C:
	.INCBIN "baserom.gba", 0x8E62C, 0x8E6BC-0x8E62C
	
	.GLOBAL gUnknown_0808E6BC @ Character particles sprite pointers
gUnknown_0808E6BC:
	.INCBIN "baserom.gba", 0x8E6BC, 0x8E70C-0x8E6BC	

	.GLOBAL gUnknown_0808E70C
gUnknown_0808E70C:
	.INCBIN "baserom.gba", 0x8E70C, 0x8E72C-0x8E70C
	
	.GLOBAL gUnknown_0808E72C
gUnknown_0808E72C:
	.INCBIN "baserom.gba", 0x8E72C, 0x8E7BC-0x8E72C
	
	.GLOBAL gUnknown_0808E7BC
gUnknown_0808E7BC:
	.INCBIN "baserom.gba", 0x8E7BC, 0x8E7CC-0x8E7BC
	
	.GLOBAL gUnknown_0808E7CC
gUnknown_0808E7CC:
	.INCBIN "baserom.gba", 0x8E7CC, 0x8E86C-0x8E7CC

	.GLOBAL gUnknown_0808E86C @ Ice Game Room Penguin sprite pointers
gUnknown_0808E86C:
	.INCBIN "baserom.gba", 0x8E86C, 0x8E99C-0x8E86C
	
	.GLOBAL gUnknown_0808E99C @ Ice Stadium Snowman sprite pointers
gUnknown_0808E99C:
	.INCBIN "baserom.gba", 0x8E99C, 0x8E9AC-0x8E99C
	
	.GLOBAL gUnknown_0808E9AC
gUnknown_0808E9AC:
	.INCBIN "baserom.gba", 0x8E9AC, 0x8E9BC-0x8E9AC	
	 
	.GLOBAL gUnknown_0808E9BC @ Town Game Room B amp sprite pointers
gUnknown_0808E9BC:
	.INCBIN "baserom.gba", 0x8E9BC, 0x8EA6C-0x8E9BC
	
	.GLOBAL gUnknown_0808EA6C
gUnknown_0808EA6C:
	.INCBIN "baserom.gba", 0x8EA6C, 0x14F70C-0x8EA6C
	 
	.GLOBAL gUnknown_0814F70C
gUnknown_0814F70C:
	.INCBIN "baserom.gba", 0x14F70C, 0x14F72C-0x14F70C
	 
	.GLOBAL gUnknown_0814F72C
gUnknown_0814F72C:
	.INCBIN "baserom.gba", 0x14F72C, 0x1AEE9C-0x14F72C
