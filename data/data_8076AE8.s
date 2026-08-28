	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .rodata
	@.SECTION .text

	.GLOBAL game_data_08076ae8
game_data_08076ae8:
	.INCBIN "us_baserom.gba", 0x76ae8, 0x77248-0x76ae8

	.GLOBAL gMinigameInfoBtnTileIndex_08077248
gMinigameInfoBtnTileIndex_08077248:
	.2byte 0x0006
	.2byte 0x000A
	.2byte 0x000E
	.2byte 0x0012
	.2byte 0x0016
	.2byte 0x001A
	.2byte 0x001C
	.2byte 0x001E

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

	.GLOBAL gMinigameInfo_08077448
gMinigameInfo_08077448:
	.byte 0x00 @ does minigame use packed data 
	.byte 0x00 @ minigame flags for menu (game type, show high score)
	.byte 0x00 @ minigame ID
	.byte 0x01 @ icon ID
	.2byte 0x0000 @ minigame name text ID
	.2byte 0x0001 @ minigame description text ID
	.2byte 0x0002 @ minigame input 1 text ID
	.byte 0x02 @ minigame input 1 button ID
	.byte 0x00
	.2byte 0x0000 @ minigame input 2 text ID
	.byte 0x00 @ minigame input 2 button ID
	.byte 0x00
	.2byte 0x0000 @ minigame input 3 text ID
	.byte 0x00    @minigame input 3 button ID
	.byte 0x00
	.2byte 0x0000 @ minigame input 4 text ID
	.byte 0x00 @ minigame input 4 button ID
	.byte 0x00
	.2byte 0x0000 @ minigame input 5 text ID
	.byte 0x00 @ minigame input 5 button ID
	.byte 0x00

	.byte 0x00 @ does minigame use packed data 
	.byte 0x00 @ minigame flags for menu (game type, show high score)
	.byte 0x00 @ minigame ID
	.byte 0x00 @ icon ID
	.2byte 0x0000 @ minigame name text ID
	.2byte 0x0000 @ minigame description text ID
	.2byte 0x0000 @ minigame input 1 text ID
	.byte 0x00 @ minigame input 1 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 2 text ID
	.byte 0x00 @ minigame input 2 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 3 text ID
	.byte 0x00    @minigame input 3 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 4 text ID
	.byte 0x00 @ minigame input 4 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 5 text ID
	.byte 0x00 @ minigame input 5 button ID
	.byte 0x00

	.byte 0x00 @ does minigame use packed data 
	.byte 0x00 @ minigame flags for menu (game type, show high score)
	.byte 0x02 @ minigame ID
	.byte 0x03 @ icon ID
	.2byte 0x0005 @ minigame name text ID
	.2byte 0x0006 @ minigame description text ID
	.2byte 0x0007 @ minigame input 1 text ID
	.byte 0x01 @ minigame input 1 button ID
	.byte 0x00    
	.2byte 0x0008 @ minigame input 2 text ID
	.byte 0x02 @ minigame input 2 button ID
	.byte 0x00    
	.2byte 0x0009 @ minigame input 3 text ID
	.byte 0x03    @minigame input 3 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 4 text ID
	.byte 0x00 @ minigame input 4 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 5 text ID
	.byte 0x00 @ minigame input 5 button ID
	.byte 0x00

	.byte 0x00 @ does minigame use packed data 
	.byte 0x00 @ minigame flags for menu (game type, show high score)
	.byte 0x03 @ minigame ID
	.byte 0x04 @ icon ID
	.2byte 0x000A @ minigame name text ID
	.2byte 0x000B @ minigame description text ID
	.2byte 0x000C @ minigame input 1 text ID
	.byte 0x01 @ minigame input 1 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 2 text ID
	.byte 0x00 @ minigame input 2 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 3 text ID
	.byte 0x00    @minigame input 3 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 4 text ID
	.byte 0x00 @ minigame input 4 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 5 text ID
	.byte 0x00 @ minigame input 5 button ID
	.byte 0x00

	.byte 0x00 @ does minigame use packed data 
	.byte 0x00 @ minigame flags for menu (game type, show high score)
	.byte 0x04 @ minigame ID
	.byte 0x05 @ icon ID
	.2byte 0x000D @ minigame name text ID
	.2byte 0x000E @ minigame description text ID
	.2byte 0x000F @ minigame input 1 text ID
	.byte 0x91 @ minigame input 1 button ID
	.byte 0x00    
	.2byte 0x0010 @ minigame input 2 text ID
	.byte 0xB2 @ minigame input 2 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 3 text ID
	.byte 0x00    @minigame input 3 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 4 text ID
	.byte 0x00 @ minigame input 4 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 5 text ID
	.byte 0x00 @ minigame input 5 button ID
	.byte 0x00

	.byte 0x00 @ does minigame use packed data 
	.byte 0x00 @ minigame flags for menu (game type, show high score)
	.byte 0x05 @ minigame ID
	.byte 0x06 @ icon ID
	.2byte 0x0011 @ minigame name text ID
	.2byte 0x0012 @ minigame description text ID
	.2byte 0x0000 @ minigame input 1 text ID
	.byte 0x00 @ minigame input 1 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 2 text ID
	.byte 0x00 @ minigame input 2 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 3 text ID
	.byte 0x00    @minigame input 3 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 4 text ID
	.byte 0x00 @ minigame input 4 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 5 text ID
	.byte 0x00 @ minigame input 5 button ID
	.byte 0x00

	.byte 0x00 @ does minigame use packed data 
	.byte 0x00 @ minigame flags for menu (game type, show high score)
	.byte 0x06 @ minigame ID
	.byte 0x07 @ icon ID
	.2byte 0x0013 @ minigame name text ID
	.2byte 0x0014 @ minigame description text ID
	.2byte 0x0015 @ minigame input 1 text ID
	.byte 0x02 @ minigame input 1 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 2 text ID
	.byte 0x00 @ minigame input 2 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 3 text ID
	.byte 0x00    @minigame input 3 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 4 text ID
	.byte 0x00 @ minigame input 4 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 5 text ID
	.byte 0x00 @ minigame input 5 button ID
	.byte 0x00

	.byte 0x00 @ does minigame use packed data 
	.byte 0x00 @ minigame flags for menu (game type, show high score)
	.byte 0x07 @ minigame ID
	.byte 0x08 @ icon ID
	.2byte 0x0016 @ minigame name text ID
	.2byte 0x0017 @ minigame description text ID
	.2byte 0x0018 @ minigame input 1 text ID
	.byte 0x01 @ minigame input 1 button ID
	.byte 0x00    
	.2byte 0x0019 @ minigame input 2 text ID
	.byte 0x02 @ minigame input 2 button ID
	.byte 0x00    
	.2byte 0x001A @ minigame input 3 text ID
	.byte 0x03    @minigame input 3 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 4 text ID
	.byte 0x00 @ minigame input 4 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 5 text ID
	.byte 0x00 @ minigame input 5 button ID
	.byte 0x00

	.byte 0x00 @ does minigame use packed data 
	.byte 0x00 @ minigame flags for menu (game type, show high score)
	.byte 0x08 @ minigame ID
	.byte 0x09 @ icon ID
	.2byte 0x001B @ minigame name text ID
	.2byte 0x001C @ minigame description text ID
	.2byte 0x001D @ minigame input 1 text ID
	.byte 0x01 @ minigame input 1 button ID
	.byte 0x00    
	.2byte 0x001E @ minigame input 2 text ID
	.byte 0x02 @ minigame input 2 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 3 text ID
	.byte 0x00    @minigame input 3 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 4 text ID
	.byte 0x00 @ minigame input 4 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 5 text ID
	.byte 0x00 @ minigame input 5 button ID
	.byte 0x00

	.byte 0x00 @ does minigame use packed data 
	.byte 0x00 @ minigame flags for menu (game type, show high score)
	.byte 0x09 @ minigame ID
	.byte 0x0A @ icon ID
	.2byte 0x001F @ minigame name text ID
	.2byte 0x0020 @ minigame description text ID
	.2byte 0x0021 @ minigame input 1 text ID
	.byte 0x02 @ minigame input 1 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 2 text ID
	.byte 0x00 @ minigame input 2 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 3 text ID
	.byte 0x00    @minigame input 3 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 4 text ID
	.byte 0x00 @ minigame input 4 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 5 text ID
	.byte 0x00 @ minigame input 5 button ID
	.byte 0x00

	.byte 0x00 @ does minigame use packed data 
	.byte 0x00 @ minigame flags for menu (game type, show high score)
	.byte 0x0A @ minigame ID
	.byte 0x0B @ icon ID
	.2byte 0x0022 @ minigame name text ID
	.2byte 0x0023 @ minigame description text ID
	.2byte 0x0024 @ minigame input 1 text ID
	.byte 0x02 @ minigame input 1 button ID
	.byte 0x00    
	.2byte 0x0025 @ minigame input 2 text ID
	.byte 0x03 @ minigame input 2 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 3 text ID
	.byte 0x00    @minigame input 3 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 4 text ID
	.byte 0x00 @ minigame input 4 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 5 text ID
	.byte 0x00 @ minigame input 5 button ID
	.byte 0x00

	.byte 0x00 @ does minigame use packed data 
	.byte 0x00 @ minigame flags for menu (game type, show high score)
	.byte 0x0B @ minigame ID
	.byte 0x0C @ icon ID
	.2byte 0x0026 @ minigame name text ID
	.2byte 0x0027 @ minigame description text ID
	.2byte 0x0028 @ minigame input 1 text ID
	.byte 0x01 @ minigame input 1 button ID
	.byte 0x00    
	.2byte 0x0029 @ minigame input 2 text ID
	.byte 0xBC @ minigame input 2 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 3 text ID
	.byte 0x00    @minigame input 3 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 4 text ID
	.byte 0x00 @ minigame input 4 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 5 text ID
	.byte 0x00 @ minigame input 5 button ID
	.byte 0x00

	.byte 0x00 @ does minigame use packed data 
	.byte 0x00 @ minigame flags for menu (game type, show high score)
	.byte 0x0C @ minigame ID
	.byte 0x0D @ icon ID
	.2byte 0x002A @ minigame name text ID
	.2byte 0x002B @ minigame description text ID
	.2byte 0x002C @ minigame input 1 text ID
	.byte 0x02 @ minigame input 1 button ID
	.byte 0x00    
	.2byte 0x002D @ minigame input 2 text ID
	.byte 0x02 @ minigame input 2 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 3 text ID
	.byte 0x00    @minigame input 3 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 4 text ID
	.byte 0x00 @ minigame input 4 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 5 text ID
	.byte 0x00 @ minigame input 5 button ID
	.byte 0x00

	.byte 0x00 @ does minigame use packed data 
	.byte 0x00 @ minigame flags for menu (game type, show high score)
	.byte 0x0D @ minigame ID
	.byte 0x0E @ icon ID
	.2byte 0x002E @ minigame name text ID
	.2byte 0x002F @ minigame description text ID
	.2byte 0x0000 @ minigame input 1 text ID
	.byte 0x00 @ minigame input 1 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 2 text ID
	.byte 0x00 @ minigame input 2 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 3 text ID
	.byte 0x00    @minigame input 3 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 4 text ID
	.byte 0x00 @ minigame input 4 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 5 text ID
	.byte 0x00 @ minigame input 5 button ID
	.byte 0x00

	.byte 0x00 @ does minigame use packed data 
	.byte 0x00 @ minigame flags for menu (game type, show high score)
	.byte 0x0E @ minigame ID
	.byte 0x0F @ icon ID
	.2byte 0x0030 @ minigame name text ID
	.2byte 0x0031 @ minigame description text ID
	.2byte 0x0032 @ minigame input 1 text ID
	.byte 0x01 @ minigame input 1 button ID
	.byte 0x00    
	.2byte 0x0033 @ minigame input 2 text ID
	.byte 0x02 @ minigame input 2 button ID
	.byte 0x00    
	.2byte 0x0034 @ minigame input 3 text ID
	.byte 0xBC    @minigame input 3 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 4 text ID
	.byte 0x00 @ minigame input 4 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 5 text ID
	.byte 0x00 @ minigame input 5 button ID
	.byte 0x00

	.byte 0x00 @ does minigame use packed data 
	.byte 0x00 @ minigame flags for menu (game type, show high score)
	.byte 0x0F @ minigame ID
	.byte 0x10 @ icon ID
	.2byte 0x0035 @ minigame name text ID
	.2byte 0x0036 @ minigame description text ID
	.2byte 0x0037 @ minigame input 1 text ID
	.byte 0x02 @ minigame input 1 button ID
	.byte 0x00    
	.2byte 0x0038 @ minigame input 2 text ID
	.byte 0x03 @ minigame input 2 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 3 text ID
	.byte 0x00    @minigame input 3 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 4 text ID
	.byte 0x00 @ minigame input 4 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 5 text ID
	.byte 0x00 @ minigame input 5 button ID
	.byte 0x00

	.byte 0x00 @ does minigame use packed data 
	.byte 0x00 @ minigame flags for menu (game type, show high score)
	.byte 0x10 @ minigame ID
	.byte 0x11 @ icon ID
	.2byte 0x0039 @ minigame name text ID
	.2byte 0x003A @ minigame description text ID
	.2byte 0x003B @ minigame input 1 text ID
	.byte 0x01 @ minigame input 1 button ID
	.byte 0x00    
	.2byte 0x003C @ minigame input 2 text ID
	.byte 0x02 @ minigame input 2 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 3 text ID
	.byte 0x00    @minigame input 3 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 4 text ID
	.byte 0x00 @ minigame input 4 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 5 text ID
	.byte 0x00 @ minigame input 5 button ID
	.byte 0x00

	.byte 0x00 @ does minigame use packed data 
	.byte 0x00 @ minigame flags for menu (game type, show high score)
	.byte 0x11 @ minigame ID
	.byte 0x12 @ icon ID
	.2byte 0x003D @ minigame name text ID
	.2byte 0x003E @ minigame description text ID
	.2byte 0x003F @ minigame input 1 text ID
	.byte 0x02 @ minigame input 1 button ID
	.byte 0x00    
	.2byte 0x0040 @ minigame input 2 text ID
	.byte 0x04 @ minigame input 2 button ID
	.byte 0x00    
	.2byte 0x0041 @ minigame input 3 text ID
	.byte 0x05    @minigame input 3 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 4 text ID
	.byte 0x00 @ minigame input 4 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 5 text ID
	.byte 0x00 @ minigame input 5 button ID
	.byte 0x00

	.byte 0x00 @ does minigame use packed data 
	.byte 0x00 @ minigame flags for menu (game type, show high score)
	.byte 0x12 @ minigame ID
	.byte 0x13 @ icon ID
	.2byte 0x0042 @ minigame name text ID
	.2byte 0x0043 @ minigame description text ID
	.2byte 0x0044 @ minigame input 1 text ID
	.byte 0x01 @ minigame input 1 button ID
	.byte 0x00    
	.2byte 0x0045 @ minigame input 2 text ID
	.byte 0x7A @ minigame input 2 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 3 text ID
	.byte 0x00    @minigame input 3 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 4 text ID
	.byte 0x00 @ minigame input 4 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 5 text ID
	.byte 0x00 @ minigame input 5 button ID
	.byte 0x00

	.byte 0x00 @ does minigame use packed data 
	.byte 0x00 @ minigame flags for menu (game type, show high score)
	.byte 0x13 @ minigame ID
	.byte 0x14 @ icon ID
	.2byte 0x0046 @ minigame name text ID
	.2byte 0x0047 @ minigame description text ID
	.2byte 0x0048 @ minigame input 1 text ID
	.byte 0x01 @ minigame input 1 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 2 text ID
	.byte 0x00 @ minigame input 2 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 3 text ID
	.byte 0x00    @minigame input 3 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 4 text ID
	.byte 0x00 @ minigame input 4 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 5 text ID
	.byte 0x00 @ minigame input 5 button ID
	.byte 0x00

	.byte 0x00 @ does minigame use packed data 
	.byte 0x00 @ minigame flags for menu (game type, show high score)
	.byte 0x14 @ minigame ID
	.byte 0x15 @ icon ID
	.2byte 0x0049 @ minigame name text ID
	.2byte 0x004A @ minigame description text ID
	.2byte 0x004B @ minigame input 1 text ID
	.byte 0x01 @ minigame input 1 button ID
	.byte 0x00    
	.2byte 0x004C @ minigame input 2 text ID
	.byte 0x01 @ minigame input 2 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 3 text ID
	.byte 0x00    @minigame input 3 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 4 text ID
	.byte 0x00 @ minigame input 4 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 5 text ID
	.byte 0x00 @ minigame input 5 button ID
	.byte 0x00

	.byte 0x00 @ does minigame use packed data 
	.byte 0x00 @ minigame flags for menu (game type, show high score)
	.byte 0x15 @ minigame ID
	.byte 0x16 @ icon ID
	.2byte 0x004D @ minigame name text ID
	.2byte 0x004E @ minigame description text ID
	.2byte 0x004F @ minigame input 1 text ID
	.byte 0x01 @ minigame input 1 button ID
	.byte 0x00    
	.2byte 0x0050 @ minigame input 2 text ID
	.byte 0x02 @ minigame input 2 button ID
	.byte 0x00    
	.2byte 0x0051 @ minigame input 3 text ID
	.byte 0x03    @minigame input 3 button ID
	.byte 0x00    
	.2byte 0x0052 @ minigame input 4 text ID
	.byte 0x04 @ minigame input 4 button ID
	.byte 0x00    
	.2byte 0x0053 @ minigame input 5 text ID
	.byte 0x05 @ minigame input 5 button ID
	.byte 0x00

	.byte 0x00 @ does minigame use packed data 
	.byte 0x00 @ minigame flags for menu (game type, show high score)
	.byte 0x16 @ minigame ID
	.byte 0x17 @ icon ID
	.2byte 0x0054 @ minigame name text ID
	.2byte 0x0055 @ minigame description text ID
	.2byte 0x0056 @ minigame input 1 text ID
	.byte 0x01 @ minigame input 1 button ID
	.byte 0x00    
	.2byte 0x0057 @ minigame input 2 text ID
	.byte 0x7A @ minigame input 2 button ID
	.byte 0x00    
	.2byte 0x0058 @ minigame input 3 text ID
	.byte 0x04    @minigame input 3 button ID
	.byte 0x00    
	.2byte 0x0059 @ minigame input 4 text ID
	.byte 0x05 @ minigame input 4 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 5 text ID
	.byte 0x00 @ minigame input 5 button ID
	.byte 0x00

	.byte 0x00 @ does minigame use packed data 
	.byte 0x00 @ minigame flags for menu (game type, show high score)
	.byte 0x17 @ minigame ID
	.byte 0x18 @ icon ID
	.2byte 0x005A @ minigame name text ID
	.2byte 0x005B @ minigame description text ID
	.2byte 0x005C @ minigame input 1 text ID
	.byte 0x01 @ minigame input 1 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 2 text ID
	.byte 0x00 @ minigame input 2 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 3 text ID
	.byte 0x00    @minigame input 3 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 4 text ID
	.byte 0x00 @ minigame input 4 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 5 text ID
	.byte 0x00 @ minigame input 5 button ID
	.byte 0x00

	.byte 0x00 @ does minigame use packed data 
	.byte 0x00 @ minigame flags for menu (game type, show high score)
	.byte 0x18 @ minigame ID
	.byte 0x19 @ icon ID
	.2byte 0x005D @ minigame name text ID
	.2byte 0x005E @ minigame description text ID
	.2byte 0x005F @ minigame input 1 text ID
	.byte 0x01 @ minigame input 1 button ID
	.byte 0x00    
	.2byte 0x0060 @ minigame input 2 text ID
	.byte 0x05 @ minigame input 2 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 3 text ID
	.byte 0x00    @minigame input 3 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 4 text ID
	.byte 0x00 @ minigame input 4 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 5 text ID
	.byte 0x00 @ minigame input 5 button ID
	.byte 0x00

	.byte 0x00 @ does minigame use packed data 
	.byte 0x00 @ minigame flags for menu (game type, show high score)
	.byte 0x19 @ minigame ID
	.byte 0x1A @ icon ID
	.2byte 0x0061 @ minigame name text ID
	.2byte 0x0062 @ minigame description text ID
	.2byte 0x0063 @ minigame input 1 text ID
	.byte 0x01 @ minigame input 1 button ID
	.byte 0x00    
	.2byte 0x0064 @ minigame input 2 text ID
	.byte 0x02 @ minigame input 2 button ID
	.byte 0x00    
	.2byte 0x0065 @ minigame input 3 text ID
	.byte 0x03    @minigame input 3 button ID
	.byte 0x00    
	.2byte 0x0066 @ minigame input 4 text ID
	.byte 0xBC @ minigame input 4 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 5 text ID
	.byte 0x00 @ minigame input 5 button ID
	.byte 0x00

	.byte 0x00 @ does minigame use packed data 
	.byte 0x00 @ minigame flags for menu (game type, show high score)
	.byte 0x1A @ minigame ID
	.byte 0x1B @ icon ID
	.2byte 0x0067 @ minigame name text ID
	.2byte 0x0068 @ minigame description text ID
	.2byte 0x0069 @ minigame input 1 text ID
	.byte 0x01 @ minigame input 1 button ID
	.byte 0x00    
	.2byte 0x006A @ minigame input 2 text ID
	.byte 0x7A @ minigame input 2 button ID
	.byte 0x00    
	.2byte 0x006B @ minigame input 3 text ID
	.byte 0x04    @minigame input 3 button ID
	.byte 0x00    
	.2byte 0x006C @ minigame input 4 text ID
	.byte 0x05 @ minigame input 4 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 5 text ID
	.byte 0x00 @ minigame input 5 button ID
	.byte 0x00

	.byte 0x00 @ does minigame use packed data 
	.byte 0x00 @ minigame flags for menu (game type, show high score)
	.byte 0x1B @ minigame ID
	.byte 0x1C @ icon ID
	.2byte 0x006D @ minigame name text ID
	.2byte 0x006E @ minigame description text ID
	.2byte 0x006F @ minigame input 1 text ID
	.byte 0x02 @ minigame input 1 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 2 text ID
	.byte 0x00 @ minigame input 2 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 3 text ID
	.byte 0x00    @minigame input 3 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 4 text ID
	.byte 0x00 @ minigame input 4 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 5 text ID
	.byte 0x00 @ minigame input 5 button ID
	.byte 0x00

	.byte 0x00 @ does minigame use packed data 
	.byte 0x00 @ minigame flags for menu (game type, show high score)
	.byte 0x1C @ minigame ID
	.byte 0x1D @ icon ID
	.2byte 0x0070 @ minigame name text ID
	.2byte 0x0071 @ minigame description text ID
	.2byte 0x0072 @ minigame input 1 text ID
	.byte 0x02 @ minigame input 1 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 2 text ID
	.byte 0x00 @ minigame input 2 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 3 text ID
	.byte 0x00    @minigame input 3 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 4 text ID
	.byte 0x00 @ minigame input 4 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 5 text ID
	.byte 0x00 @ minigame input 5 button ID
	.byte 0x00

	.byte 0x00 @ does minigame use packed data 
	.byte 0x00 @ minigame flags for menu (game type, show high score)
	.byte 0x1D @ minigame ID
	.byte 0x1E @ icon ID
	.2byte 0x0073 @ minigame name text ID
	.2byte 0x0074 @ minigame description text ID
	.2byte 0x0075 @ minigame input 1 text ID
	.byte 0x01 @ minigame input 1 button ID
	.byte 0x00    
	.2byte 0x0076 @ minigame input 2 text ID
	.byte 0x02 @ minigame input 2 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 3 text ID
	.byte 0x00    @minigame input 3 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 4 text ID
	.byte 0x00 @ minigame input 4 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 5 text ID
	.byte 0x00 @ minigame input 5 button ID
	.byte 0x00

	.byte 0x00 @ does minigame use packed data 
	.byte 0x00 @ minigame flags for menu (game type, show high score)
	.byte 0x1E @ minigame ID
	.byte 0x1F @ icon ID
	.2byte 0x0077 @ minigame name text ID
	.2byte 0x0078 @ minigame description text ID
	.2byte 0x0079 @ minigame input 1 text ID
	.byte 0x01 @ minigame input 1 button ID
	.byte 0x00    
	.2byte 0x007A @ minigame input 2 text ID
	.byte 0x02 @ minigame input 2 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 3 text ID
	.byte 0x00    @minigame input 3 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 4 text ID
	.byte 0x00 @ minigame input 4 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 5 text ID
	.byte 0x00 @ minigame input 5 button ID
	.byte 0x00

	.byte 0x00 @ does minigame use packed data 
	.byte 0x00 @ minigame flags for menu (game type, show high score)
	.byte 0x1F @ minigame ID
	.byte 0x20 @ icon ID
	.2byte 0x007B @ minigame name text ID
	.2byte 0x007C @ minigame description text ID
	.2byte 0x007D @ minigame input 1 text ID
	.byte 0x01 @ minigame input 1 button ID
	.byte 0x00    
	.2byte 0x007E @ minigame input 2 text ID
	.byte 0x02 @ minigame input 2 button ID
	.byte 0x00    
	.2byte 0x007F @ minigame input 3 text ID
	.byte 0x04    @minigame input 3 button ID
	.byte 0x00    
	.2byte 0x0080 @ minigame input 4 text ID
	.byte 0x05 @ minigame input 4 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 5 text ID
	.byte 0x00 @ minigame input 5 button ID
	.byte 0x00

	.byte 0x00 @ does minigame use packed data 
	.byte 0x00 @ minigame flags for menu (game type, show high score)
	.byte 0x20 @ minigame ID
	.byte 0x21 @ icon ID
	.2byte 0x0081 @ minigame name text ID
	.2byte 0x0082 @ minigame description text ID
	.2byte 0x0083 @ minigame input 1 text ID
	.byte 0x02 @ minigame input 1 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 2 text ID
	.byte 0x00 @ minigame input 2 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 3 text ID
	.byte 0x00    @minigame input 3 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 4 text ID
	.byte 0x00 @ minigame input 4 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 5 text ID
	.byte 0x00 @ minigame input 5 button ID
	.byte 0x00

	.byte 0x00 @ does minigame use packed data 
	.byte 0x00 @ minigame flags for menu (game type, show high score)
	.byte 0x21 @ minigame ID
	.byte 0x22 @ icon ID
	.2byte 0x0084 @ minigame name text ID
	.2byte 0x0085 @ minigame description text ID
	.2byte 0x0086 @ minigame input 1 text ID
	.byte 0xAC @ minigame input 1 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 2 text ID
	.byte 0x00 @ minigame input 2 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 3 text ID
	.byte 0x00    @minigame input 3 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 4 text ID
	.byte 0x00 @ minigame input 4 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 5 text ID
	.byte 0x00 @ minigame input 5 button ID
	.byte 0x00

	.byte 0x00 @ does minigame use packed data 
	.byte 0x00 @ minigame flags for menu (game type, show high score)
	.byte 0x22 @ minigame ID
	.byte 0x23 @ icon ID
	.2byte 0x0087 @ minigame name text ID
	.2byte 0x0088 @ minigame description text ID
	.2byte 0x0089 @ minigame input 1 text ID
	.byte 0x02 @ minigame input 1 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 2 text ID
	.byte 0x00 @ minigame input 2 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 3 text ID
	.byte 0x00    @minigame input 3 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 4 text ID
	.byte 0x00 @ minigame input 4 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 5 text ID
	.byte 0x00 @ minigame input 5 button ID
	.byte 0x00

	.byte 0x00 @ does minigame use packed data 
	.byte 0x00 @ minigame flags for menu (game type, show high score)
	.byte 0x23 @ minigame ID
	.byte 0x24 @ icon ID
	.2byte 0x008A @ minigame name text ID
	.2byte 0x008B @ minigame description text ID
	.2byte 0x008C @ minigame input 1 text ID
	.byte 0x01 @ minigame input 1 button ID
	.byte 0x00    
	.2byte 0x008D @ minigame input 2 text ID
	.byte 0x7A @ minigame input 2 button ID
	.byte 0x00    
	.2byte 0x008E @ minigame input 3 text ID
	.byte 0x04    @minigame input 3 button ID
	.byte 0x00    
	.2byte 0x008F @ minigame input 4 text ID
	.byte 0x05 @ minigame input 4 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 5 text ID
	.byte 0x00 @ minigame input 5 button ID
	.byte 0x00

	.byte 0x00 @ does minigame use packed data 
	.byte 0x00 @ minigame flags for menu (game type, show high score)
	.byte 0x24 @ minigame ID
	.byte 0x25 @ icon ID
	.2byte 0x0090 @ minigame name text ID
	.2byte 0x0091 @ minigame description text ID
	.2byte 0x0092 @ minigame input 1 text ID
	.byte 0x02 @ minigame input 1 button ID
	.byte 0x00    
	.2byte 0x0093 @ minigame input 2 text ID
	.byte 0x04 @ minigame input 2 button ID
	.byte 0x00    
	.2byte 0x0094 @ minigame input 3 text ID
	.byte 0x05    @minigame input 3 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 4 text ID
	.byte 0x00 @ minigame input 4 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 5 text ID
	.byte 0x00 @ minigame input 5 button ID
	.byte 0x00

	.byte 0x00 @ does minigame use packed data 
	.byte 0x00 @ minigame flags for menu (game type, show high score)
	.byte 0x25 @ minigame ID
	.byte 0x26 @ icon ID
	.2byte 0x0095 @ minigame name text ID
	.2byte 0x0096 @ minigame description text ID
	.2byte 0x0097 @ minigame input 1 text ID
	.byte 0x01 @ minigame input 1 button ID
	.byte 0x00    
	.2byte 0x0098 @ minigame input 2 text ID
	.byte 0x7A @ minigame input 2 button ID
	.byte 0x00    
	.2byte 0x0099 @ minigame input 3 text ID
	.byte 0x04    @minigame input 3 button ID
	.byte 0x00    
	.2byte 0x009A @ minigame input 4 text ID
	.byte 0x05 @ minigame input 4 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 5 text ID
	.byte 0x00 @ minigame input 5 button ID
	.byte 0x00

	.byte 0x00 @ does minigame use packed data 
	.byte 0x00 @ minigame flags for menu (game type, show high score)
	.byte 0x26 @ minigame ID
	.byte 0x27 @ icon ID
	.2byte 0x009B @ minigame name text ID
	.2byte 0x009C @ minigame description text ID
	.2byte 0x009D @ minigame input 1 text ID
	.byte 0x02 @ minigame input 1 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 2 text ID
	.byte 0x00 @ minigame input 2 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 3 text ID
	.byte 0x00    @minigame input 3 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 4 text ID
	.byte 0x00 @ minigame input 4 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 5 text ID
	.byte 0x00 @ minigame input 5 button ID
	.byte 0x00

	.byte 0x00 @ does minigame use packed data 
	.byte 0x00 @ minigame flags for menu (game type, show high score)
	.byte 0x27 @ minigame ID
	.byte 0x28 @ icon ID
	.2byte 0x009E @ minigame name text ID
	.2byte 0x009F @ minigame description text ID
	.2byte 0x00A0 @ minigame input 1 text ID
	.byte 0x01 @ minigame input 1 button ID
	.byte 0x00    
	.2byte 0x00A1 @ minigame input 2 text ID
	.byte 0x7A @ minigame input 2 button ID
	.byte 0x00    
	.2byte 0x00A2 @ minigame input 3 text ID
	.byte 0x04    @minigame input 3 button ID
	.byte 0x00    
	.2byte 0x00A3 @ minigame input 4 text ID
	.byte 0x05 @ minigame input 4 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 5 text ID
	.byte 0x00 @ minigame input 5 button ID
	.byte 0x00

	.byte 0x00 @ does minigame use packed data 
	.byte 0x00 @ minigame flags for menu (game type, show high score)
	.byte 0x00 @ minigame ID
	.byte 0x00 @ icon ID
	.2byte 0x0000 @ minigame name text ID
	.2byte 0x0000 @ minigame description text ID
	.2byte 0x0000 @ minigame input 1 text ID
	.byte 0x00 @ minigame input 1 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 2 text ID
	.byte 0x00 @ minigame input 2 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 3 text ID
	.byte 0x00    @minigame input 3 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 4 text ID
	.byte 0x00 @ minigame input 4 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 5 text ID
	.byte 0x00 @ minigame input 5 button ID
	.byte 0x00

	.byte 0x00 @ does minigame use packed data 
	.byte 0x00 @ minigame flags for menu (game type, show high score)
	.byte 0x29 @ minigame ID
	.byte 0x2A @ icon ID
	.2byte 0x00A7 @ minigame name text ID
	.2byte 0x00A8 @ minigame description text ID
	.2byte 0x00A9 @ minigame input 1 text ID
	.byte 0x02 @ minigame input 1 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 2 text ID
	.byte 0x00 @ minigame input 2 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 3 text ID
	.byte 0x00    @minigame input 3 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 4 text ID
	.byte 0x00 @ minigame input 4 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 5 text ID
	.byte 0x00 @ minigame input 5 button ID
	.byte 0x00

	.byte 0x00 @ does minigame use packed data 
	.byte 0x00 @ minigame flags for menu (game type, show high score)
	.byte 0x00 @ minigame ID
	.byte 0x00 @ icon ID
	.2byte 0x0000 @ minigame name text ID
	.2byte 0x0000 @ minigame description text ID
	.2byte 0x0000 @ minigame input 1 text ID
	.byte 0x00 @ minigame input 1 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 2 text ID
	.byte 0x00 @ minigame input 2 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 3 text ID
	.byte 0x00    @minigame input 3 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 4 text ID
	.byte 0x00 @ minigame input 4 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 5 text ID
	.byte 0x00 @ minigame input 5 button ID
	.byte 0x00

	.byte 0x00 @ does minigame use packed data 
	.byte 0x01 @ minigame flags for menu (game type, show high score)
	.byte 0x2B @ minigame ID
	.byte 0x2C @ icon ID
	.2byte 0x00AD @ minigame name text ID
	.2byte 0x0000 @ minigame description text ID
	.2byte 0x0000 @ minigame input 1 text ID
	.byte 0x00 @ minigame input 1 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 2 text ID
	.byte 0x00 @ minigame input 2 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 3 text ID
	.byte 0x00    @minigame input 3 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 4 text ID
	.byte 0x00 @ minigame input 4 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 5 text ID
	.byte 0x00 @ minigame input 5 button ID
	.byte 0x00

	.byte 0x00 @ does minigame use packed data 
	.byte 0x00 @ minigame flags for menu (game type, show high score)
	.byte 0x00 @ minigame ID
	.byte 0x00 @ icon ID
	.2byte 0x0000 @ minigame name text ID
	.2byte 0x0000 @ minigame description text ID
	.2byte 0x0000 @ minigame input 1 text ID
	.byte 0x00 @ minigame input 1 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 2 text ID
	.byte 0x00 @ minigame input 2 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 3 text ID
	.byte 0x00    @minigame input 3 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 4 text ID
	.byte 0x00 @ minigame input 4 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 5 text ID
	.byte 0x00 @ minigame input 5 button ID
	.byte 0x00

	.byte 0x00 @ does minigame use packed data 
	.byte 0x01 @ minigame flags for menu (game type, show high score)
	.byte 0x2D @ minigame ID
	.byte 0x2E @ icon ID
	.2byte 0x00AF @ minigame name text ID
	.2byte 0x0000 @ minigame description text ID
	.2byte 0x0000 @ minigame input 1 text ID
	.byte 0x00 @ minigame input 1 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 2 text ID
	.byte 0x00 @ minigame input 2 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 3 text ID
	.byte 0x00    @minigame input 3 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 4 text ID
	.byte 0x00 @ minigame input 4 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 5 text ID
	.byte 0x00 @ minigame input 5 button ID
	.byte 0x00

	.byte 0x00 @ does minigame use packed data 
	.byte 0x01 @ minigame flags for menu (game type, show high score)
	.byte 0x2E @ minigame ID
	.byte 0x2F @ icon ID
	.2byte 0x00B0 @ minigame name text ID
	.2byte 0x0000 @ minigame description text ID
	.2byte 0x0000 @ minigame input 1 text ID
	.byte 0x00 @ minigame input 1 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 2 text ID
	.byte 0x00 @ minigame input 2 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 3 text ID
	.byte 0x00    @minigame input 3 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 4 text ID
	.byte 0x00 @ minigame input 4 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 5 text ID
	.byte 0x00 @ minigame input 5 button ID
	.byte 0x00

	.byte 0x00 @ does minigame use packed data 
	.byte 0x02 @ minigame flags for menu (game type, show high score)
	.byte 0x2F @ minigame ID
	.byte 0x30 @ icon ID
	.2byte 0x00B1 @ minigame name text ID
	.2byte 0x0000 @ minigame description text ID
	.2byte 0x0000 @ minigame input 1 text ID
	.byte 0x00 @ minigame input 1 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 2 text ID
	.byte 0x00 @ minigame input 2 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 3 text ID
	.byte 0x00    @minigame input 3 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 4 text ID
	.byte 0x00 @ minigame input 4 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 5 text ID
	.byte 0x00 @ minigame input 5 button ID
	.byte 0x00

	.byte 0x00 @ does minigame use packed data 
	.byte 0x03 @ minigame flags for menu (game type, show high score)
	.byte 0x30 @ minigame ID
	.byte 0x31 @ icon ID
	.2byte 0x00B2 @ minigame name text ID
	.2byte 0x0000 @ minigame description text ID
	.2byte 0x0000 @ minigame input 1 text ID
	.byte 0x00 @ minigame input 1 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 2 text ID
	.byte 0x00 @ minigame input 2 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 3 text ID
	.byte 0x00    @minigame input 3 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 4 text ID
	.byte 0x00 @ minigame input 4 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 5 text ID
	.byte 0x00 @ minigame input 5 button ID
	.byte 0x00

	.byte 0x00 @ does minigame use packed data 
	.byte 0x00 @ minigame flags for menu (game type, show high score)
	.byte 0x31 @ minigame ID
	.byte 0x32 @ icon ID
	.2byte 0x00B3 @ minigame name text ID
	.2byte 0x00B4 @ minigame description text ID
	.2byte 0x00B5 @ minigame input 1 text ID
	.byte 0x01 @ minigame input 1 button ID
	.byte 0x00    
	.2byte 0x00B6 @ minigame input 2 text ID
	.byte 0x01 @ minigame input 2 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 3 text ID
	.byte 0x00    @minigame input 3 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 4 text ID
	.byte 0x00 @ minigame input 4 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 5 text ID
	.byte 0x00 @ minigame input 5 button ID
	.byte 0x00

	.byte 0x00 @ does minigame use packed data 
	.byte 0x00 @ minigame flags for menu (game type, show high score)
	.byte 0x32 @ minigame ID
	.byte 0x33 @ icon ID
	.2byte 0x00B7 @ minigame name text ID
	.2byte 0x00B8 @ minigame description text ID
	.2byte 0x00B9 @ minigame input 1 text ID
	.byte 0x01 @ minigame input 1 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 2 text ID
	.byte 0x00 @ minigame input 2 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 3 text ID
	.byte 0x00    @minigame input 3 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 4 text ID
	.byte 0x00 @ minigame input 4 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 5 text ID
	.byte 0x00 @ minigame input 5 button ID
	.byte 0x00

	.byte 0x00 @ does minigame use packed data 
	.byte 0x00 @ minigame flags for menu (game type, show high score)
	.byte 0x00 @ minigame ID
	.byte 0x00 @ icon ID
	.2byte 0x0000 @ minigame name text ID
	.2byte 0x0000 @ minigame description text ID
	.2byte 0x0000 @ minigame input 1 text ID
	.byte 0x00 @ minigame input 1 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 2 text ID
	.byte 0x00 @ minigame input 2 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 3 text ID
	.byte 0x00    @minigame input 3 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 4 text ID
	.byte 0x00 @ minigame input 4 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 5 text ID
	.byte 0x00 @ minigame input 5 button ID
	.byte 0x00

	.byte 0x00 @ does minigame use packed data 
	.byte 0x00 @ minigame flags for menu (game type, show high score)
	.byte 0x00 @ minigame ID
	.byte 0x00 @ icon ID
	.2byte 0x0000 @ minigame name text ID
	.2byte 0x0000 @ minigame description text ID
	.2byte 0x0000 @ minigame input 1 text ID
	.byte 0x00 @ minigame input 1 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 2 text ID
	.byte 0x00 @ minigame input 2 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 3 text ID
	.byte 0x00    @minigame input 3 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 4 text ID
	.byte 0x00 @ minigame input 4 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 5 text ID
	.byte 0x00 @ minigame input 5 button ID
	.byte 0x00

	.byte 0x00 @ does minigame use packed data 
	.byte 0x00 @ minigame flags for menu (game type, show high score)
	.byte 0x35 @ minigame ID
	.byte 0x36 @ icon ID
	.2byte 0x00BE @ minigame name text ID
	.2byte 0x00BF @ minigame description text ID
	.2byte 0x00C0 @ minigame input 1 text ID
	.byte 0x02 @ minigame input 1 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 2 text ID
	.byte 0x00 @ minigame input 2 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 3 text ID
	.byte 0x00    @minigame input 3 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 4 text ID
	.byte 0x00 @ minigame input 4 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 5 text ID
	.byte 0x00 @ minigame input 5 button ID
	.byte 0x00

	.byte 0x00 @ does minigame use packed data 
	.byte 0x00 @ minigame flags for menu (game type, show high score)
	.byte 0x36 @ minigame ID
	.byte 0x37 @ icon ID
	.2byte 0x00C1 @ minigame name text ID
	.2byte 0x00C2 @ minigame description text ID
	.2byte 0x00C3 @ minigame input 1 text ID
	.byte 0x01 @ minigame input 1 button ID
	.byte 0x00    
	.2byte 0x00C4 @ minigame input 2 text ID
	.byte 0x02 @ minigame input 2 button ID
	.byte 0x00    
	.2byte 0x00C5 @ minigame input 3 text ID
	.byte 0x04    @minigame input 3 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 4 text ID
	.byte 0x00 @ minigame input 4 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 5 text ID
	.byte 0x00 @ minigame input 5 button ID
	.byte 0x00

	.byte 0x00 @ does minigame use packed data 
	.byte 0x00 @ minigame flags for menu (game type, show high score)
	.byte 0x37 @ minigame ID
	.byte 0x38 @ icon ID
	.2byte 0x00C6 @ minigame name text ID
	.2byte 0x00C7 @ minigame description text ID
	.2byte 0x00C8 @ minigame input 1 text ID
	.byte 0x01 @ minigame input 1 button ID
	.byte 0x00    
	.2byte 0x00C9 @ minigame input 2 text ID
	.byte 0x02 @ minigame input 2 button ID
	.byte 0x00    
	.2byte 0x00CA @ minigame input 3 text ID
	.byte 0x03    @minigame input 3 button ID
	.byte 0x00    
	.2byte 0x00CB @ minigame input 4 text ID
	.byte 0xBC @ minigame input 4 button ID
	.byte 0x00    
	.2byte 0x00CC @ minigame input 5 text ID
	.byte 0xBC @ minigame input 5 button ID
	.byte 0x00

	.byte 0x00 @ does minigame use packed data 
	.byte 0x00 @ minigame flags for menu (game type, show high score)
	.byte 0x38 @ minigame ID
	.byte 0x39 @ icon ID
	.2byte 0x00CD @ minigame name text ID
	.2byte 0x00CE @ minigame description text ID
	.2byte 0x00CF @ minigame input 1 text ID
	.byte 0x99 @ minigame input 1 button ID
	.byte 0x00    
	.2byte 0x00D0 @ minigame input 2 text ID
	.byte 0x7A @ minigame input 2 button ID
	.byte 0x00    
	.2byte 0x00D0 @ minigame input 3 text ID
	.byte 0x05    @minigame input 3 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 4 text ID
	.byte 0x00 @ minigame input 4 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 5 text ID
	.byte 0x00 @ minigame input 5 button ID
	.byte 0x00

	.byte 0x00 @ does minigame use packed data 
	.byte 0x00 @ minigame flags for menu (game type, show high score)
	.byte 0x39 @ minigame ID
	.byte 0x3A @ icon ID
	.2byte 0x00D1 @ minigame name text ID
	.2byte 0x00D2 @ minigame description text ID
	.2byte 0x00D3 @ minigame input 1 text ID
	.byte 0x01 @ minigame input 1 button ID
	.byte 0x00    
	.2byte 0x00D4 @ minigame input 2 text ID
	.byte 0x02 @ minigame input 2 button ID
	.byte 0x00    
	.2byte 0x00D5 @ minigame input 3 text ID
	.byte 0x03    @minigame input 3 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 4 text ID
	.byte 0x00 @ minigame input 4 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 5 text ID
	.byte 0x00 @ minigame input 5 button ID
	.byte 0x00

	.byte 0x00 @ does minigame use packed data 
	.byte 0x00 @ minigame flags for menu (game type, show high score)
	.byte 0x3A @ minigame ID
	.byte 0x3B @ icon ID
	.2byte 0x00D6 @ minigame name text ID
	.2byte 0x00D7 @ minigame description text ID
	.2byte 0x00D8 @ minigame input 1 text ID
	.byte 0x01 @ minigame input 1 button ID
	.byte 0x00    
	.2byte 0x00D9 @ minigame input 2 text ID
	.byte 0x02 @ minigame input 2 button ID
	.byte 0x00    
	.2byte 0x00DA @ minigame input 3 text ID
	.byte 0x03    @minigame input 3 button ID
	.byte 0x00    
	.2byte 0x00DB @ minigame input 4 text ID
	.byte 0xBC @ minigame input 4 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 5 text ID
	.byte 0x00 @ minigame input 5 button ID
	.byte 0x00

	.byte 0x00 @ does minigame use packed data 
	.byte 0x00 @ minigame flags for menu (game type, show high score)
	.byte 0x3B @ minigame ID
	.byte 0x3C @ icon ID
	.2byte 0x00DC @ minigame name text ID
	.2byte 0x00DD @ minigame description text ID
	.2byte 0x00DE @ minigame input 1 text ID
	.byte 0x02 @ minigame input 1 button ID
	.byte 0x00    
	.2byte 0x00DF @ minigame input 2 text ID
	.byte 0x04 @ minigame input 2 button ID
	.byte 0x00    
	.2byte 0x00E0 @ minigame input 3 text ID
	.byte 0x05    @minigame input 3 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 4 text ID
	.byte 0x00 @ minigame input 4 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 5 text ID
	.byte 0x00 @ minigame input 5 button ID
	.byte 0x00

	.byte 0x00 @ does minigame use packed data 
	.byte 0x00 @ minigame flags for menu (game type, show high score)
	.byte 0x3C @ minigame ID
	.byte 0x3D @ icon ID
	.2byte 0x00E1 @ minigame name text ID
	.2byte 0x00E2 @ minigame description text ID
	.2byte 0x0000 @ minigame input 1 text ID
	.byte 0x00 @ minigame input 1 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 2 text ID
	.byte 0x00 @ minigame input 2 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 3 text ID
	.byte 0x00    @minigame input 3 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 4 text ID
	.byte 0x00 @ minigame input 4 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 5 text ID
	.byte 0x00 @ minigame input 5 button ID
	.byte 0x00

	.byte 0x00 @ does minigame use packed data 
	.byte 0x00 @ minigame flags for menu (game type, show high score)
	.byte 0x00 @ minigame ID
	.byte 0x00 @ icon ID
	.2byte 0x0000 @ minigame name text ID
	.2byte 0x0000 @ minigame description text ID
	.2byte 0x0000 @ minigame input 1 text ID
	.byte 0x00 @ minigame input 1 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 2 text ID
	.byte 0x00 @ minigame input 2 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 3 text ID
	.byte 0x00    @minigame input 3 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 4 text ID
	.byte 0x00 @ minigame input 4 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 5 text ID
	.byte 0x00 @ minigame input 5 button ID
	.byte 0x00

	.byte 0x00 @ does minigame use packed data 
	.byte 0x01 @ minigame flags for menu (game type, show high score)
	.byte 0x3E @ minigame ID
	.byte 0x3F @ icon ID
	.2byte 0x00E4 @ minigame name text ID
	.2byte 0x0000 @ minigame description text ID
	.2byte 0x0000 @ minigame input 1 text ID
	.byte 0x00 @ minigame input 1 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 2 text ID
	.byte 0x00 @ minigame input 2 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 3 text ID
	.byte 0x00    @minigame input 3 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 4 text ID
	.byte 0x00 @ minigame input 4 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 5 text ID
	.byte 0x00 @ minigame input 5 button ID
	.byte 0x00

	.byte 0x00 @ does minigame use packed data 
	.byte 0x01 @ minigame flags for menu (game type, show high score)
	.byte 0x3F @ minigame ID
	.byte 0x40 @ icon ID
	.2byte 0x00E5 @ minigame name text ID
	.2byte 0x0000 @ minigame description text ID
	.2byte 0x0000 @ minigame input 1 text ID
	.byte 0x00 @ minigame input 1 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 2 text ID
	.byte 0x00 @ minigame input 2 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 3 text ID
	.byte 0x00    @minigame input 3 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 4 text ID
	.byte 0x00 @ minigame input 4 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 5 text ID
	.byte 0x00 @ minigame input 5 button ID
	.byte 0x00

	.byte 0x00 @ does minigame use packed data 
	.byte 0x01 @ minigame flags for menu (game type, show high score)
	.byte 0x40 @ minigame ID
	.byte 0x41 @ icon ID
	.2byte 0x00E6 @ minigame name text ID
	.2byte 0x0000 @ minigame description text ID
	.2byte 0x0000 @ minigame input 1 text ID
	.byte 0x00 @ minigame input 1 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 2 text ID
	.byte 0x00 @ minigame input 2 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 3 text ID
	.byte 0x00    @minigame input 3 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 4 text ID
	.byte 0x00 @ minigame input 4 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 5 text ID
	.byte 0x00 @ minigame input 5 button ID
	.byte 0x00

	.byte 0x00 @ does minigame use packed data 
	.byte 0x01 @ minigame flags for menu (game type, show high score)
	.byte 0x41 @ minigame ID
	.byte 0x42 @ icon ID
	.2byte 0x00E7 @ minigame name text ID
	.2byte 0x0000 @ minigame description text ID
	.2byte 0x0000 @ minigame input 1 text ID
	.byte 0x00 @ minigame input 1 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 2 text ID
	.byte 0x00 @ minigame input 2 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 3 text ID
	.byte 0x00    @minigame input 3 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 4 text ID
	.byte 0x00 @ minigame input 4 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 5 text ID
	.byte 0x00 @ minigame input 5 button ID
	.byte 0x00

	.byte 0x00 @ does minigame use packed data 
	.byte 0x01 @ minigame flags for menu (game type, show high score)
	.byte 0x42 @ minigame ID
	.byte 0x43 @ icon ID
	.2byte 0x00E8 @ minigame name text ID
	.2byte 0x0000 @ minigame description text ID
	.2byte 0x0000 @ minigame input 1 text ID
	.byte 0x00 @ minigame input 1 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 2 text ID
	.byte 0x00 @ minigame input 2 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 3 text ID
	.byte 0x00    @minigame input 3 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 4 text ID
	.byte 0x00 @ minigame input 4 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 5 text ID
	.byte 0x00 @ minigame input 5 button ID
	.byte 0x00

	.byte 0x00 @ does minigame use packed data 
	.byte 0x00 @ minigame flags for menu (game type, show high score)
	.byte 0x43 @ minigame ID
	.byte 0x44 @ icon ID
	.2byte 0x00EF @ minigame name text ID
	.2byte 0x00F0 @ minigame description text ID
	.2byte 0x00F1 @ minigame input 1 text ID
	.byte 0x01 @ minigame input 1 button ID
	.byte 0x00    
	.2byte 0x00F2 @ minigame input 2 text ID
	.byte 0x02 @ minigame input 2 button ID
	.byte 0x00    
	.2byte 0x00F3 @ minigame input 3 text ID
	.byte 0x03    @minigame input 3 button ID
	.byte 0x00    
	.2byte 0x00F4 @ minigame input 4 text ID
	.byte 0x04 @ minigame input 4 button ID
	.byte 0x00    
	.2byte 0x00F5 @ minigame input 5 text ID
	.byte 0x05 @ minigame input 5 button ID
	.byte 0x00

	.byte 0x01 @ does minigame use packed data 
	.byte 0x10 @ minigame flags for menu (game type, show high score)
	.byte 0x44 @ minigame ID
	.byte 0x01 @ icon ID
	.2byte 0x0000 @ minigame name text ID
	.2byte 0x0001 @ minigame description text ID
	.2byte 0x0002 @ minigame input 1 text ID
	.byte 0x01 @ minigame input 1 button ID
	.byte 0x00    
	.2byte 0x0003 @ minigame input 2 text ID
	.byte 0x02 @ minigame input 2 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 3 text ID
	.byte 0x00    @minigame input 3 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 4 text ID
	.byte 0x00 @ minigame input 4 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 5 text ID
	.byte 0x00 @ minigame input 5 button ID
	.byte 0x00

	.byte 0x01 @ does minigame use packed data 
	.byte 0x10 @ minigame flags for menu (game type, show high score)
	.byte 0x45 @ minigame ID
	.byte 0x02 @ icon ID
	.2byte 0x0004 @ minigame name text ID
	.2byte 0x0005 @ minigame description text ID
	.2byte 0x0006 @ minigame input 1 text ID
	.byte 0x01 @ minigame input 1 button ID
	.byte 0x00    
	.2byte 0x0007 @ minigame input 2 text ID
	.byte 0x02 @ minigame input 2 button ID
	.byte 0x00    
	.2byte 0x0008 @ minigame input 3 text ID
	.byte 0x03    @minigame input 3 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 4 text ID
	.byte 0x00 @ minigame input 4 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 5 text ID
	.byte 0x00 @ minigame input 5 button ID
	.byte 0x00

	.byte 0x01 @ does minigame use packed data 
	.byte 0x10 @ minigame flags for menu (game type, show high score)
	.byte 0x46 @ minigame ID
	.byte 0x03 @ icon ID
	.2byte 0x0009 @ minigame name text ID
	.2byte 0x000A @ minigame description text ID
	.2byte 0x000B @ minigame input 1 text ID
	.byte 0x01 @ minigame input 1 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 2 text ID
	.byte 0x00 @ minigame input 2 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 3 text ID
	.byte 0x00    @minigame input 3 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 4 text ID
	.byte 0x00 @ minigame input 4 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 5 text ID
	.byte 0x00 @ minigame input 5 button ID
	.byte 0x00

	.byte 0x01 @ does minigame use packed data 
	.byte 0x20 @ minigame flags for menu (game type, show high score)
	.byte 0x47 @ minigame ID
	.byte 0x04 @ icon ID
	.2byte 0x000C @ minigame name text ID
	.2byte 0x000D @ minigame description text ID
	.2byte 0x000E @ minigame input 1 text ID
	.byte 0x01 @ minigame input 1 button ID
	.byte 0x00    
	.2byte 0x000F @ minigame input 2 text ID
	.byte 0x02 @ minigame input 2 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 3 text ID
	.byte 0x00    @minigame input 3 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 4 text ID
	.byte 0x00 @ minigame input 4 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 5 text ID
	.byte 0x00 @ minigame input 5 button ID
	.byte 0x00

	.byte 0x01 @ does minigame use packed data 
	.byte 0x20 @ minigame flags for menu (game type, show high score)
	.byte 0x48 @ minigame ID
	.byte 0x05 @ icon ID
	.2byte 0x0010 @ minigame name text ID
	.2byte 0x0011 @ minigame description text ID
	.2byte 0x0012 @ minigame input 1 text ID
	.byte 0x01 @ minigame input 1 button ID
	.byte 0x00    
	.2byte 0x0013 @ minigame input 2 text ID
	.byte 0x02 @ minigame input 2 button ID
	.byte 0x00    
	.2byte 0x0014 @ minigame input 3 text ID
	.byte 0x03    @minigame input 3 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 4 text ID
	.byte 0x00 @ minigame input 4 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 5 text ID
	.byte 0x00 @ minigame input 5 button ID
	.byte 0x00

	.byte 0x01 @ does minigame use packed data 
	.byte 0x10 @ minigame flags for menu (game type, show high score)
	.byte 0x49 @ minigame ID
	.byte 0x06 @ icon ID
	.2byte 0x0015 @ minigame name text ID
	.2byte 0x0016 @ minigame description text ID
	.2byte 0x0017 @ minigame input 1 text ID
	.byte 0x01 @ minigame input 1 button ID
	.byte 0x00    
	.2byte 0x0018 @ minigame input 2 text ID
	.byte 0x02 @ minigame input 2 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 3 text ID
	.byte 0x00    @minigame input 3 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 4 text ID
	.byte 0x00 @ minigame input 4 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 5 text ID
	.byte 0x00 @ minigame input 5 button ID
	.byte 0x00

	.byte 0x01 @ does minigame use packed data 
	.byte 0x10 @ minigame flags for menu (game type, show high score)
	.byte 0x4A @ minigame ID
	.byte 0x07 @ icon ID
	.2byte 0x0019 @ minigame name text ID
	.2byte 0x001A @ minigame description text ID
	.2byte 0x001B @ minigame input 1 text ID
	.byte 0x01 @ minigame input 1 button ID
	.byte 0x00    
	.2byte 0x001C @ minigame input 2 text ID
	.byte 0x01 @ minigame input 2 button ID
	.byte 0x00    
	.2byte 0x001D @ minigame input 3 text ID
	.byte 0x02    @minigame input 3 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 4 text ID
	.byte 0x00 @ minigame input 4 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 5 text ID
	.byte 0x00 @ minigame input 5 button ID
	.byte 0x00

	.byte 0x01 @ does minigame use packed data 
	.byte 0x20 @ minigame flags for menu (game type, show high score)
	.byte 0x4B @ minigame ID
	.byte 0x08 @ icon ID
	.2byte 0x001E @ minigame name text ID
	.2byte 0x001F @ minigame description text ID
	.2byte 0x0020 @ minigame input 1 text ID
	.byte 0x01 @ minigame input 1 button ID
	.byte 0x00    
	.2byte 0x0021 @ minigame input 2 text ID
	.byte 0x02 @ minigame input 2 button ID
	.byte 0x00    
	.2byte 0x0022 @ minigame input 3 text ID
	.byte 0x52    @minigame input 3 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 4 text ID
	.byte 0x00 @ minigame input 4 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 5 text ID
	.byte 0x00 @ minigame input 5 button ID
	.byte 0x00

	.byte 0x01 @ does minigame use packed data 
	.byte 0x10 @ minigame flags for menu (game type, show high score)
	.byte 0x4C @ minigame ID
	.byte 0x09 @ icon ID
	.2byte 0x0023 @ minigame name text ID
	.2byte 0x0024 @ minigame description text ID
	.2byte 0x0025 @ minigame input 1 text ID
	.byte 0x01 @ minigame input 1 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 2 text ID
	.byte 0x00 @ minigame input 2 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 3 text ID
	.byte 0x00    @minigame input 3 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 4 text ID
	.byte 0x00 @ minigame input 4 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 5 text ID
	.byte 0x00 @ minigame input 5 button ID
	.byte 0x00

	.byte 0x01 @ does minigame use packed data 
	.byte 0x10 @ minigame flags for menu (game type, show high score)
	.byte 0x4D @ minigame ID
	.byte 0x0A @ icon ID
	.2byte 0x0026 @ minigame name text ID
	.2byte 0x0027 @ minigame description text ID
	.2byte 0x0028 @ minigame input 1 text ID
	.byte 0x01 @ minigame input 1 button ID
	.byte 0x00    
	.2byte 0x0029 @ minigame input 2 text ID
	.byte 0x01 @ minigame input 2 button ID
	.byte 0x00    
	.2byte 0x002A @ minigame input 3 text ID
	.byte 0x6A    @minigame input 3 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 4 text ID
	.byte 0x00 @ minigame input 4 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 5 text ID
	.byte 0x00 @ minigame input 5 button ID
	.byte 0x00

	.byte 0x01 @ does minigame use packed data 
	.byte 0x10 @ minigame flags for menu (game type, show high score)
	.byte 0x4E @ minigame ID
	.byte 0x0B @ icon ID
	.2byte 0x002B @ minigame name text ID
	.2byte 0x002C @ minigame description text ID
	.2byte 0x002D @ minigame input 1 text ID
	.byte 0x01 @ minigame input 1 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 2 text ID
	.byte 0x00 @ minigame input 2 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 3 text ID
	.byte 0x00    @minigame input 3 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 4 text ID
	.byte 0x00 @ minigame input 4 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 5 text ID
	.byte 0x00 @ minigame input 5 button ID
	.byte 0x00

	.byte 0x01 @ does minigame use packed data 
	.byte 0x10 @ minigame flags for menu (game type, show high score)
	.byte 0x4F @ minigame ID
	.byte 0x0C @ icon ID
	.2byte 0x002E @ minigame name text ID
	.2byte 0x002F @ minigame description text ID
	.2byte 0x0030 @ minigame input 1 text ID
	.byte 0x01 @ minigame input 1 button ID
	.byte 0x00    
	.2byte 0x0031 @ minigame input 2 text ID
	.byte 0x02 @ minigame input 2 button ID
	.byte 0x00    
	.2byte 0x0032 @ minigame input 3 text ID
	.byte 0x03    @minigame input 3 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 4 text ID
	.byte 0x00 @ minigame input 4 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 5 text ID
	.byte 0x00 @ minigame input 5 button ID
	.byte 0x00

	.byte 0x01 @ does minigame use packed data 
	.byte 0x10 @ minigame flags for menu (game type, show high score)
	.byte 0x50 @ minigame ID
	.byte 0x0D @ icon ID
	.2byte 0x0033 @ minigame name text ID
	.2byte 0x0034 @ minigame description text ID
	.2byte 0x0035 @ minigame input 1 text ID
	.byte 0x01 @ minigame input 1 button ID
	.byte 0x00    
	.2byte 0x0036 @ minigame input 2 text ID
	.byte 0x04 @ minigame input 2 button ID
	.byte 0x00    
	.2byte 0x0037 @ minigame input 3 text ID
	.byte 0x05    @minigame input 3 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 4 text ID
	.byte 0x00 @ minigame input 4 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 5 text ID
	.byte 0x00 @ minigame input 5 button ID
	.byte 0x00

	.byte 0x01 @ does minigame use packed data 
	.byte 0x10 @ minigame flags for menu (game type, show high score)
	.byte 0x51 @ minigame ID
	.byte 0x0E @ icon ID
	.2byte 0x0038 @ minigame name text ID
	.2byte 0x0039 @ minigame description text ID
	.2byte 0x003A @ minigame input 1 text ID
	.byte 0x02 @ minigame input 1 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 2 text ID
	.byte 0x00 @ minigame input 2 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 3 text ID
	.byte 0x00    @minigame input 3 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 4 text ID
	.byte 0x00 @ minigame input 4 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 5 text ID
	.byte 0x00 @ minigame input 5 button ID
	.byte 0x00

	.byte 0x01 @ does minigame use packed data 
	.byte 0x10 @ minigame flags for menu (game type, show high score)
	.byte 0x52 @ minigame ID
	.byte 0x0F @ icon ID
	.2byte 0x003B @ minigame name text ID
	.2byte 0x003C @ minigame description text ID
	.2byte 0x003D @ minigame input 1 text ID
	.byte 0x01 @ minigame input 1 button ID
	.byte 0x00    
	.2byte 0x003E @ minigame input 2 text ID
	.byte 0x02 @ minigame input 2 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 3 text ID
	.byte 0x00    @minigame input 3 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 4 text ID
	.byte 0x00 @ minigame input 4 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 5 text ID
	.byte 0x00 @ minigame input 5 button ID
	.byte 0x00

	.byte 0x01 @ does minigame use packed data 
	.byte 0x10 @ minigame flags for menu (game type, show high score)
	.byte 0x53 @ minigame ID
	.byte 0x10 @ icon ID
	.2byte 0x003F @ minigame name text ID
	.2byte 0x0040 @ minigame description text ID
	.2byte 0x0041 @ minigame input 1 text ID
	.byte 0x01 @ minigame input 1 button ID
	.byte 0x00    
	.2byte 0x0042 @ minigame input 2 text ID
	.byte 0x02 @ minigame input 2 button ID
	.byte 0x00    
	.2byte 0x0043 @ minigame input 3 text ID
	.byte 0x03    @minigame input 3 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 4 text ID
	.byte 0x00 @ minigame input 4 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 5 text ID
	.byte 0x00 @ minigame input 5 button ID
	.byte 0x00

	.byte 0x01 @ does minigame use packed data 
	.byte 0x10 @ minigame flags for menu (game type, show high score)
	.byte 0x54 @ minigame ID
	.byte 0x11 @ icon ID
	.2byte 0x0044 @ minigame name text ID
	.2byte 0x0045 @ minigame description text ID
	.2byte 0x0046 @ minigame input 1 text ID
	.byte 0x01 @ minigame input 1 button ID
	.byte 0x00    
	.2byte 0x0047 @ minigame input 2 text ID
	.byte 0x02 @ minigame input 2 button ID
	.byte 0x00    
	.2byte 0x0048 @ minigame input 3 text ID
	.byte 0x03    @minigame input 3 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 4 text ID
	.byte 0x00 @ minigame input 4 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 5 text ID
	.byte 0x00 @ minigame input 5 button ID
	.byte 0x00

	.byte 0x01 @ does minigame use packed data 
	.byte 0x10 @ minigame flags for menu (game type, show high score)
	.byte 0x55 @ minigame ID
	.byte 0x12 @ icon ID
	.2byte 0x0049 @ minigame name text ID
	.2byte 0x004A @ minigame description text ID
	.2byte 0x004B @ minigame input 1 text ID
	.byte 0x01 @ minigame input 1 button ID
	.byte 0x00    
	.2byte 0x004C @ minigame input 2 text ID
	.byte 0x03 @ minigame input 2 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 3 text ID
	.byte 0x00    @minigame input 3 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 4 text ID
	.byte 0x00 @ minigame input 4 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 5 text ID
	.byte 0x00 @ minigame input 5 button ID
	.byte 0x00

	.byte 0x01 @ does minigame use packed data 
	.byte 0x10 @ minigame flags for menu (game type, show high score)
	.byte 0x56 @ minigame ID
	.byte 0x13 @ icon ID
	.2byte 0x004D @ minigame name text ID
	.2byte 0x004E @ minigame description text ID
	.2byte 0x004F @ minigame input 1 text ID
	.byte 0x01 @ minigame input 1 button ID
	.byte 0x00    
	.2byte 0x0050 @ minigame input 2 text ID
	.byte 0x02 @ minigame input 2 button ID
	.byte 0x00    
	.2byte 0x0051 @ minigame input 3 text ID
	.byte 0x03    @minigame input 3 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 4 text ID
	.byte 0x00 @ minigame input 4 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 5 text ID
	.byte 0x00 @ minigame input 5 button ID
	.byte 0x00

	.byte 0x01 @ does minigame use packed data 
	.byte 0x10 @ minigame flags for menu (game type, show high score)
	.byte 0x57 @ minigame ID
	.byte 0x14 @ icon ID
	.2byte 0x0052 @ minigame name text ID
	.2byte 0x0053 @ minigame description text ID
	.2byte 0x0054 @ minigame input 1 text ID
	.byte 0x01 @ minigame input 1 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 2 text ID
	.byte 0x00 @ minigame input 2 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 3 text ID
	.byte 0x00    @minigame input 3 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 4 text ID
	.byte 0x00 @ minigame input 4 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 5 text ID
	.byte 0x00 @ minigame input 5 button ID
	.byte 0x00

	.byte 0x00 @ does minigame use packed data 
	.byte 0x00 @ minigame flags for menu (game type, show high score)
	.byte 0x00 @ minigame ID
	.byte 0x00 @ icon ID
	.2byte 0x0000 @ minigame name text ID
	.2byte 0x0000 @ minigame description text ID
	.2byte 0x0000 @ minigame input 1 text ID
	.byte 0x00 @ minigame input 1 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 2 text ID
	.byte 0x00 @ minigame input 2 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 3 text ID
	.byte 0x00    @minigame input 3 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 4 text ID
	.byte 0x00 @ minigame input 4 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 5 text ID
	.byte 0x00 @ minigame input 5 button ID
	.byte 0x00

	.byte 0x01 @ does minigame use packed data 
	.byte 0x10 @ minigame flags for menu (game type, show high score)
	.byte 0x59 @ minigame ID
	.byte 0x16 @ icon ID
	.2byte 0x0056 @ minigame name text ID
	.2byte 0x0057 @ minigame description text ID
	.2byte 0x0058 @ minigame input 1 text ID
	.byte 0x01 @ minigame input 1 button ID
	.byte 0x00    
	.2byte 0x0059 @ minigame input 2 text ID
	.byte 0x02 @ minigame input 2 button ID
	.byte 0x00    
	.2byte 0x005A @ minigame input 3 text ID
	.byte 0x03    @minigame input 3 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 4 text ID
	.byte 0x00 @ minigame input 4 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 5 text ID
	.byte 0x00 @ minigame input 5 button ID
	.byte 0x00

	.byte 0x01 @ does minigame use packed data 
	.byte 0x10 @ minigame flags for menu (game type, show high score)
	.byte 0x5A @ minigame ID
	.byte 0x17 @ icon ID
	.2byte 0x005B @ minigame name text ID
	.2byte 0x005C @ minigame description text ID
	.2byte 0x005D @ minigame input 1 text ID
	.byte 0x01 @ minigame input 1 button ID
	.byte 0x00    
	.2byte 0x005E @ minigame input 2 text ID
	.byte 0x02 @ minigame input 2 button ID
	.byte 0x00    
	.2byte 0x005F @ minigame input 3 text ID
	.byte 0x03    @minigame input 3 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 4 text ID
	.byte 0x00 @ minigame input 4 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 5 text ID
	.byte 0x00 @ minigame input 5 button ID
	.byte 0x00

	.byte 0x01 @ does minigame use packed data 
	.byte 0x20 @ minigame flags for menu (game type, show high score)
	.byte 0x5B @ minigame ID
	.byte 0x18 @ icon ID
	.2byte 0x0060 @ minigame name text ID
	.2byte 0x0061 @ minigame description text ID
	.2byte 0x0062 @ minigame input 1 text ID
	.byte 0x01 @ minigame input 1 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 2 text ID
	.byte 0x00 @ minigame input 2 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 3 text ID
	.byte 0x00    @minigame input 3 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 4 text ID
	.byte 0x00 @ minigame input 4 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 5 text ID
	.byte 0x00 @ minigame input 5 button ID
	.byte 0x00

	.byte 0x01 @ does minigame use packed data 
	.byte 0x10 @ minigame flags for menu (game type, show high score)
	.byte 0x5C @ minigame ID
	.byte 0x19 @ icon ID
	.2byte 0x0063 @ minigame name text ID
	.2byte 0x0064 @ minigame description text ID
	.2byte 0x0065 @ minigame input 1 text ID
	.byte 0x01 @ minigame input 1 button ID
	.byte 0x00    
	.2byte 0x0066 @ minigame input 2 text ID
	.byte 0x02 @ minigame input 2 button ID
	.byte 0x00    
	.2byte 0x0067 @ minigame input 3 text ID
	.byte 0x03    @minigame input 3 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 4 text ID
	.byte 0x00 @ minigame input 4 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 5 text ID
	.byte 0x00 @ minigame input 5 button ID
	.byte 0x00

	.byte 0x01 @ does minigame use packed data 
	.byte 0x20 @ minigame flags for menu (game type, show high score)
	.byte 0x5D @ minigame ID
	.byte 0x1A @ icon ID
	.2byte 0x0068 @ minigame name text ID
	.2byte 0x0069 @ minigame description text ID
	.2byte 0x006A @ minigame input 1 text ID
	.byte 0x01 @ minigame input 1 button ID
	.byte 0x00    
	.2byte 0x006B @ minigame input 2 text ID
	.byte 0x02 @ minigame input 2 button ID
	.byte 0x00    
	.2byte 0x006C @ minigame input 3 text ID
	.byte 0x00    @minigame input 3 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 4 text ID
	.byte 0x00 @ minigame input 4 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 5 text ID
	.byte 0x00 @ minigame input 5 button ID
	.byte 0x00

	.byte 0x01 @ does minigame use packed data 
	.byte 0x20 @ minigame flags for menu (game type, show high score)
	.byte 0x5E @ minigame ID
	.byte 0x1B @ icon ID
	.2byte 0x006D @ minigame name text ID
	.2byte 0x006E @ minigame description text ID
	.2byte 0x006F @ minigame input 1 text ID
	.byte 0x01 @ minigame input 1 button ID
	.byte 0x00    
	.2byte 0x0070 @ minigame input 2 text ID
	.byte 0x02 @ minigame input 2 button ID
	.byte 0x00    
	.2byte 0x0071 @ minigame input 3 text ID
	.byte 0x03    @minigame input 3 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 4 text ID
	.byte 0x00 @ minigame input 4 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 5 text ID
	.byte 0x00 @ minigame input 5 button ID
	.byte 0x00

	.byte 0x01 @ does minigame use packed data 
	.byte 0x10 @ minigame flags for menu (game type, show high score)
	.byte 0x5F @ minigame ID
	.byte 0x1C @ icon ID
	.2byte 0x0072 @ minigame name text ID
	.2byte 0x0073 @ minigame description text ID
	.2byte 0x0074 @ minigame input 1 text ID
	.byte 0x01 @ minigame input 1 button ID
	.byte 0x00    
	.2byte 0x0075 @ minigame input 2 text ID
	.byte 0x02 @ minigame input 2 button ID
	.byte 0x00    
	.2byte 0x0076 @ minigame input 3 text ID
	.byte 0x05    @minigame input 3 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 4 text ID
	.byte 0x00 @ minigame input 4 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 5 text ID
	.byte 0x00 @ minigame input 5 button ID
	.byte 0x00

	.byte 0x01 @ does minigame use packed data 
	.byte 0x20 @ minigame flags for menu (game type, show high score)
	.byte 0x60 @ minigame ID
	.byte 0x1D @ icon ID
	.2byte 0x0077 @ minigame name text ID
	.2byte 0x0078 @ minigame description text ID
	.2byte 0x0079 @ minigame input 1 text ID
	.byte 0x01 @ minigame input 1 button ID
	.byte 0x00    
	.2byte 0x007A @ minigame input 2 text ID
	.byte 0x02 @ minigame input 2 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 3 text ID
	.byte 0x00    @minigame input 3 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 4 text ID
	.byte 0x00 @ minigame input 4 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 5 text ID
	.byte 0x00 @ minigame input 5 button ID
	.byte 0x00

	.byte 0x01 @ does minigame use packed data 
	.byte 0x20 @ minigame flags for menu (game type, show high score)
	.byte 0x61 @ minigame ID
	.byte 0x1E @ icon ID
	.2byte 0x007B @ minigame name text ID
	.2byte 0x007C @ minigame description text ID
	.2byte 0x007D @ minigame input 1 text ID
	.byte 0x01 @ minigame input 1 button ID
	.byte 0x00    
	.2byte 0x007E @ minigame input 2 text ID
	.byte 0x02 @ minigame input 2 button ID
	.byte 0x00    
	.2byte 0x007F @ minigame input 3 text ID
	.byte 0x03    @minigame input 3 button ID
	.byte 0x00    
	.2byte 0x0080 @ minigame input 4 text ID
	.byte 0x6A @ minigame input 4 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 5 text ID
	.byte 0x00 @ minigame input 5 button ID
	.byte 0x00

	.byte 0x01 @ does minigame use packed data 
	.byte 0x10 @ minigame flags for menu (game type, show high score)
	.byte 0x62 @ minigame ID
	.byte 0x1F @ icon ID
	.2byte 0x0081 @ minigame name text ID
	.2byte 0x0082 @ minigame description text ID
	.2byte 0x0083 @ minigame input 1 text ID
	.byte 0x01 @ minigame input 1 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 2 text ID
	.byte 0x00 @ minigame input 2 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 3 text ID
	.byte 0x00    @minigame input 3 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 4 text ID
	.byte 0x00 @ minigame input 4 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 5 text ID
	.byte 0x00 @ minigame input 5 button ID
	.byte 0x00

	.byte 0x00 @ does minigame use packed data 
	.byte 0x00 @ minigame flags for menu (game type, show high score)
	.byte 0x00 @ minigame ID
	.byte 0x00 @ icon ID
	.2byte 0x0000 @ minigame name text ID
	.2byte 0x0000 @ minigame description text ID
	.2byte 0x0000 @ minigame input 1 text ID
	.byte 0x00 @ minigame input 1 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 2 text ID
	.byte 0x00 @ minigame input 2 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 3 text ID
	.byte 0x00    @minigame input 3 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 4 text ID
	.byte 0x00 @ minigame input 4 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 5 text ID
	.byte 0x00 @ minigame input 5 button ID
	.byte 0x00

	.byte 0x00 @ does minigame use packed data 
	.byte 0x00 @ minigame flags for menu (game type, show high score)
	.byte 0x00 @ minigame ID
	.byte 0x00 @ icon ID
	.2byte 0x0000 @ minigame name text ID
	.2byte 0x0000 @ minigame description text ID
	.2byte 0x0000 @ minigame input 1 text ID
	.byte 0x00 @ minigame input 1 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 2 text ID
	.byte 0x00 @ minigame input 2 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 3 text ID
	.byte 0x00    @minigame input 3 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 4 text ID
	.byte 0x00 @ minigame input 4 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 5 text ID
	.byte 0x00 @ minigame input 5 button ID
	.byte 0x00

	.byte 0x01 @ does minigame use packed data 
	.byte 0x01 @ minigame flags for menu (game type, show high score)
	.byte 0x65 @ minigame ID
	.byte 0x22 @ icon ID
	.2byte 0x0086 @ minigame name text ID
	.2byte 0x0087 @ minigame description text ID
	.2byte 0x0088 @ minigame input 1 text ID
	.byte 0x01 @ minigame input 1 button ID
	.byte 0x00    
	.2byte 0x0089 @ minigame input 2 text ID
	.byte 0x02 @ minigame input 2 button ID
	.byte 0x00    
	.2byte 0x008A @ minigame input 3 text ID
	.byte 0x02    @minigame input 3 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 4 text ID
	.byte 0x00 @ minigame input 4 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 5 text ID
	.byte 0x00 @ minigame input 5 button ID
	.byte 0x00

	.byte 0x01 @ does minigame use packed data 
	.byte 0x01 @ minigame flags for menu (game type, show high score)
	.byte 0x66 @ minigame ID
	.byte 0x23 @ icon ID
	.2byte 0x008B @ minigame name text ID
	.2byte 0x008C @ minigame description text ID
	.2byte 0x008D @ minigame input 1 text ID
	.byte 0x01 @ minigame input 1 button ID
	.byte 0x00    
	.2byte 0x008E @ minigame input 2 text ID
	.byte 0x02 @ minigame input 2 button ID
	.byte 0x00    
	.2byte 0x008F @ minigame input 3 text ID
	.byte 0x03    @minigame input 3 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 4 text ID
	.byte 0x00 @ minigame input 4 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 5 text ID
	.byte 0x00 @ minigame input 5 button ID
	.byte 0x00

	.byte 0x01 @ does minigame use packed data 
	.byte 0x01 @ minigame flags for menu (game type, show high score)
	.byte 0x67 @ minigame ID
	.byte 0x24 @ icon ID
	.2byte 0x0090 @ minigame name text ID
	.2byte 0x0091 @ minigame description text ID
	.2byte 0x0092 @ minigame input 1 text ID
	.byte 0x02 @ minigame input 1 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 2 text ID
	.byte 0x00 @ minigame input 2 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 3 text ID
	.byte 0x00    @minigame input 3 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 4 text ID
	.byte 0x00 @ minigame input 4 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 5 text ID
	.byte 0x00 @ minigame input 5 button ID
	.byte 0x00

	.byte 0x01 @ does minigame use packed data 
	.byte 0x01 @ minigame flags for menu (game type, show high score)
	.byte 0x68 @ minigame ID
	.byte 0x25 @ icon ID
	.2byte 0x0093 @ minigame name text ID
	.2byte 0x0094 @ minigame description text ID
	.2byte 0x0095 @ minigame input 1 text ID
	.byte 0x02 @ minigame input 1 button ID
	.byte 0x00    
	.2byte 0x0096 @ minigame input 2 text ID
	.byte 0x03 @ minigame input 2 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 3 text ID
	.byte 0x00    @minigame input 3 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 4 text ID
	.byte 0x00 @ minigame input 4 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 5 text ID
	.byte 0x00 @ minigame input 5 button ID
	.byte 0x00

	.byte 0x01 @ does minigame use packed data 
	.byte 0x01 @ minigame flags for menu (game type, show high score)
	.byte 0x69 @ minigame ID
	.byte 0x26 @ icon ID
	.2byte 0x0097 @ minigame name text ID
	.2byte 0x0098 @ minigame description text ID
	.2byte 0x0099 @ minigame input 1 text ID
	.byte 0x04 @ minigame input 1 button ID
	.byte 0x00    
	.2byte 0x009A @ minigame input 2 text ID
	.byte 0x05 @ minigame input 2 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 3 text ID
	.byte 0x00    @minigame input 3 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 4 text ID
	.byte 0x00 @ minigame input 4 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 5 text ID
	.byte 0x00 @ minigame input 5 button ID
	.byte 0x00

	.byte 0x01 @ does minigame use packed data 
	.byte 0x01 @ minigame flags for menu (game type, show high score)
	.byte 0x6A @ minigame ID
	.byte 0x27 @ icon ID
	.2byte 0x009B @ minigame name text ID
	.2byte 0x009C @ minigame description text ID
	.2byte 0x009D @ minigame input 1 text ID
	.byte 0x01 @ minigame input 1 button ID
	.byte 0x00    
	.2byte 0x009E @ minigame input 2 text ID
	.byte 0x02 @ minigame input 2 button ID
	.byte 0x00    
	.2byte 0x009F @ minigame input 3 text ID
	.byte 0x03    @minigame input 3 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 4 text ID
	.byte 0x00 @ minigame input 4 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 5 text ID
	.byte 0x00 @ minigame input 5 button ID
	.byte 0x00

	.byte 0x01 @ does minigame use packed data 
	.byte 0x01 @ minigame flags for menu (game type, show high score)
	.byte 0x6B @ minigame ID
	.byte 0x28 @ icon ID
	.2byte 0x00A0 @ minigame name text ID
	.2byte 0x00A1 @ minigame description text ID
	.2byte 0x00A2 @ minigame input 1 text ID
	.byte 0x01 @ minigame input 1 button ID
	.byte 0x00    
	.2byte 0x00A3 @ minigame input 2 text ID
	.byte 0x02 @ minigame input 2 button ID
	.byte 0x00    
	.2byte 0x00A4 @ minigame input 3 text ID
	.byte 0x05    @minigame input 3 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 4 text ID
	.byte 0x00 @ minigame input 4 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 5 text ID
	.byte 0x00 @ minigame input 5 button ID
	.byte 0x00

	.byte 0x00 @ does minigame use packed data 
	.byte 0x02 @ minigame flags for menu (game type, show high score)
	.byte 0x6C @ minigame ID
	.byte 0x29 @ icon ID
	.2byte 0x00A5 @ minigame name text ID
	.2byte 0x00A6 @ minigame description text ID
	.2byte 0x00A7 @ minigame input 1 text ID
	.byte 0x02 @ minigame input 1 button ID
	.byte 0x00    
	.2byte 0x00A8 @ minigame input 2 text ID
	.byte 0x03 @ minigame input 2 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 3 text ID
	.byte 0x00    @minigame input 3 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 4 text ID
	.byte 0x00 @ minigame input 4 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 5 text ID
	.byte 0x00 @ minigame input 5 button ID
	.byte 0x00

	.byte 0x00 @ does minigame use packed data 
	.byte 0x02 @ minigame flags for menu (game type, show high score)
	.byte 0x6D @ minigame ID
	.byte 0x2A @ icon ID
	.2byte 0x00A9 @ minigame name text ID
	.2byte 0x00AA @ minigame description text ID
	.2byte 0x00AB @ minigame input 1 text ID
	.byte 0x01 @ minigame input 1 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 2 text ID
	.byte 0x00 @ minigame input 2 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 3 text ID
	.byte 0x00    @minigame input 3 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 4 text ID
	.byte 0x00 @ minigame input 4 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 5 text ID
	.byte 0x00 @ minigame input 5 button ID
	.byte 0x00

	.byte 0x00 @ does minigame use packed data 
	.byte 0x02 @ minigame flags for menu (game type, show high score)
	.byte 0x6E @ minigame ID
	.byte 0x2B @ icon ID
	.2byte 0x00AC @ minigame name text ID
	.2byte 0x00AD @ minigame description text ID
	.2byte 0x00AE @ minigame input 1 text ID
	.byte 0x01 @ minigame input 1 button ID
	.byte 0x00    
	.2byte 0x00AF @ minigame input 2 text ID
	.byte 0x03 @ minigame input 2 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 3 text ID
	.byte 0x00    @minigame input 3 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 4 text ID
	.byte 0x00 @ minigame input 4 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 5 text ID
	.byte 0x00 @ minigame input 5 button ID
	.byte 0x00

	.byte 0x00 @ does minigame use packed data 
	.byte 0x02 @ minigame flags for menu (game type, show high score)
	.byte 0x6F @ minigame ID
	.byte 0x2C @ icon ID
	.2byte 0x00B0 @ minigame name text ID
	.2byte 0x00B1 @ minigame description text ID
	.2byte 0x00B2 @ minigame input 1 text ID
	.byte 0x01 @ minigame input 1 button ID
	.byte 0x00    
	.2byte 0x00B3 @ minigame input 2 text ID
	.byte 0x02 @ minigame input 2 button ID
	.byte 0x00    
	.2byte 0x00B4 @ minigame input 3 text ID
	.byte 0x03    @minigame input 3 button ID
	.byte 0x00    
	.2byte 0x00B5 @ minigame input 4 text ID
	.byte 0x05 @ minigame input 4 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 5 text ID
	.byte 0x00 @ minigame input 5 button ID
	.byte 0x00

	.byte 0x00 @ does minigame use packed data 
	.byte 0x02 @ minigame flags for menu (game type, show high score)
	.byte 0x70 @ minigame ID
	.byte 0x2D @ icon ID
	.2byte 0x00B6 @ minigame name text ID
	.2byte 0x00B7 @ minigame description text ID
	.2byte 0x00B8 @ minigame input 1 text ID
	.byte 0x02 @ minigame input 1 button ID
	.byte 0x00    
	.2byte 0x00B9 @ minigame input 2 text ID
	.byte 0x03 @ minigame input 2 button ID
	.byte 0x00    
	.2byte 0x00BA @ minigame input 3 text ID
	.byte 0x05    @minigame input 3 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 4 text ID
	.byte 0x00 @ minigame input 4 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 5 text ID
	.byte 0x00 @ minigame input 5 button ID
	.byte 0x00

	.byte 0x00 @ does minigame use packed data 
	.byte 0x02 @ minigame flags for menu (game type, show high score)
	.byte 0x71 @ minigame ID
	.byte 0x2E @ icon ID
	.2byte 0x00BB @ minigame name text ID
	.2byte 0x00BC @ minigame description text ID
	.2byte 0x00BD @ minigame input 1 text ID
	.byte 0x02 @ minigame input 1 button ID
	.byte 0x00    
	.2byte 0x00BE @ minigame input 2 text ID
	.byte 0x03 @ minigame input 2 button ID
	.byte 0x00    
	.2byte 0x00BF @ minigame input 3 text ID
	.byte 0x04    @minigame input 3 button ID
	.byte 0x00    
	.2byte 0x00C0 @ minigame input 4 text ID
	.byte 0x05 @ minigame input 4 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 5 text ID
	.byte 0x00 @ minigame input 5 button ID
	.byte 0x00

	.byte 0x00 @ does minigame use packed data 
	.byte 0x00 @ minigame flags for menu (game type, show high score)
	.byte 0x00 @ minigame ID
	.byte 0x00 @ icon ID
	.2byte 0x0000 @ minigame name text ID
	.2byte 0x0000 @ minigame description text ID
	.2byte 0x0000 @ minigame input 1 text ID
	.byte 0x00 @ minigame input 1 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 2 text ID
	.byte 0x00 @ minigame input 2 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 3 text ID
	.byte 0x00    @minigame input 3 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 4 text ID
	.byte 0x00 @ minigame input 4 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 5 text ID
	.byte 0x00 @ minigame input 5 button ID
	.byte 0x00

	.byte 0x00 @ does minigame use packed data 
	.byte 0x03 @ minigame flags for menu (game type, show high score)
	.byte 0x73 @ minigame ID
	.byte 0x30 @ icon ID
	.2byte 0x00C2 @ minigame name text ID
	.2byte 0x00C3 @ minigame description text ID
	.2byte 0x00C4 @ minigame input 1 text ID
	.byte 0x01 @ minigame input 1 button ID
	.byte 0x00    
	.2byte 0x00C5 @ minigame input 2 text ID
	.byte 0x02 @ minigame input 2 button ID
	.byte 0x00    
	.2byte 0x00C6 @ minigame input 3 text ID
	.byte 0x02    @minigame input 3 button ID
	.byte 0x00    
	.2byte 0x00C7 @ minigame input 4 text ID
	.byte 0xBC @ minigame input 4 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 5 text ID
	.byte 0x00 @ minigame input 5 button ID
	.byte 0x00

	.byte 0x00 @ does minigame use packed data 
	.byte 0x03 @ minigame flags for menu (game type, show high score)
	.byte 0x74 @ minigame ID
	.byte 0x31 @ icon ID
	.2byte 0x00C8 @ minigame name text ID
	.2byte 0x00C9 @ minigame description text ID
	.2byte 0x00CA @ minigame input 1 text ID
	.byte 0x01 @ minigame input 1 button ID
	.byte 0x00    
	.2byte 0x00CB @ minigame input 2 text ID
	.byte 0x02 @ minigame input 2 button ID
	.byte 0x00    
	.2byte 0x00CC @ minigame input 3 text ID
	.byte 0x02    @minigame input 3 button ID
	.byte 0x00    
	.2byte 0x00CD @ minigame input 4 text ID
	.byte 0xBC @ minigame input 4 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 5 text ID
	.byte 0x00 @ minigame input 5 button ID
	.byte 0x00

	.byte 0x00 @ does minigame use packed data 
	.byte 0x00 @ minigame flags for menu (game type, show high score)
	.byte 0x00 @ minigame ID
	.byte 0x00 @ icon ID
	.2byte 0x0000 @ minigame name text ID
	.2byte 0x0000 @ minigame description text ID
	.2byte 0x0000 @ minigame input 1 text ID
	.byte 0x00 @ minigame input 1 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 2 text ID
	.byte 0x00 @ minigame input 2 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 3 text ID
	.byte 0x00    @minigame input 3 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 4 text ID
	.byte 0x00 @ minigame input 4 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 5 text ID
	.byte 0x00 @ minigame input 5 button ID
	.byte 0x00

	.byte 0x00 @ does minigame use packed data 
	.byte 0x03 @ minigame flags for menu (game type, show high score)
	.byte 0x76 @ minigame ID
	.byte 0x33 @ icon ID
	.2byte 0x00CF @ minigame name text ID
	.2byte 0x00D0 @ minigame description text ID
	.2byte 0x00D1 @ minigame input 1 text ID
	.byte 0x01 @ minigame input 1 button ID
	.byte 0x00    
	.2byte 0x00D2 @ minigame input 2 text ID
	.byte 0x01 @ minigame input 2 button ID
	.byte 0x00    
	.2byte 0x00D3 @ minigame input 3 text ID
	.byte 0x02    @minigame input 3 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 4 text ID
	.byte 0x00 @ minigame input 4 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 5 text ID
	.byte 0x00 @ minigame input 5 button ID
	.byte 0x00

	.byte 0x00 @ does minigame use packed data 
	.byte 0x03 @ minigame flags for menu (game type, show high score)
	.byte 0x77 @ minigame ID
	.byte 0x34 @ icon ID
	.2byte 0x00D4 @ minigame name text ID
	.2byte 0x00D5 @ minigame description text ID
	.2byte 0x00D6 @ minigame input 1 text ID
	.byte 0x02 @ minigame input 1 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 2 text ID
	.byte 0x00 @ minigame input 2 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 3 text ID
	.byte 0x00    @minigame input 3 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 4 text ID
	.byte 0x00 @ minigame input 4 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 5 text ID
	.byte 0x00 @ minigame input 5 button ID
	.byte 0x00

	.byte 0x00 @ does minigame use packed data 
	.byte 0x03 @ minigame flags for menu (game type, show high score)
	.byte 0x78 @ minigame ID
	.byte 0x35 @ icon ID
	.2byte 0x00D7 @ minigame name text ID
	.2byte 0x00D8 @ minigame description text ID
	.2byte 0x00D9 @ minigame input 1 text ID
	.byte 0x01 @ minigame input 1 button ID
	.byte 0x00    
	.2byte 0x00DA @ minigame input 2 text ID
	.byte 0x01 @ minigame input 2 button ID
	.byte 0x00    
	.2byte 0x00DB @ minigame input 3 text ID
	.byte 0x02    @minigame input 3 button ID
	.byte 0x00    
	.2byte 0x00DC @ minigame input 4 text ID
	.byte 0x02 @ minigame input 4 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 5 text ID
	.byte 0x00 @ minigame input 5 button ID
	.byte 0x00

	.byte 0x00 @ does minigame use packed data 
	.byte 0x03 @ minigame flags for menu (game type, show high score)
	.byte 0x79 @ minigame ID
	.byte 0x36 @ icon ID
	.2byte 0x00DD @ minigame name text ID
	.2byte 0x00DE @ minigame description text ID
	.2byte 0x00DF @ minigame input 1 text ID
	.byte 0x01 @ minigame input 1 button ID
	.byte 0x00    
	.2byte 0x00E0 @ minigame input 2 text ID
	.byte 0x01 @ minigame input 2 button ID
	.byte 0x00    
	.2byte 0x00E1 @ minigame input 3 text ID
	.byte 0x02    @minigame input 3 button ID
	.byte 0x00    
	.2byte 0x00E2 @ minigame input 4 text ID
	.byte 0x02 @ minigame input 4 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 5 text ID
	.byte 0x00 @ minigame input 5 button ID
	.byte 0x00

	.byte 0x00 @ does minigame use packed data 
	.byte 0x00 @ minigame flags for menu (game type, show high score)
	.byte 0x00 @ minigame ID
	.byte 0x00 @ icon ID
	.2byte 0x0000 @ minigame name text ID
	.2byte 0x0000 @ minigame description text ID
	.2byte 0x0000 @ minigame input 1 text ID
	.byte 0x00 @ minigame input 1 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 2 text ID
	.byte 0x00 @ minigame input 2 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 3 text ID
	.byte 0x00    @minigame input 3 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 4 text ID
	.byte 0x00 @ minigame input 4 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 5 text ID
	.byte 0x00 @ minigame input 5 button ID
	.byte 0x00

	.byte 0x01 @ does minigame use packed data 
	.byte 0x01 @ minigame flags for menu (game type, show high score)
	.byte 0x7B @ minigame ID
	.byte 0x21 @ icon ID
	.2byte 0x00E4 @ minigame name text ID
	.2byte 0x00E5 @ minigame description text ID
	.2byte 0x00E6 @ minigame input 1 text ID
	.byte 0x02 @ minigame input 1 button ID
	.byte 0x00    
	.2byte 0x00E7 @ minigame input 2 text ID
	.byte 0x03 @ minigame input 2 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 3 text ID
	.byte 0x00    @minigame input 3 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 4 text ID
	.byte 0x00 @ minigame input 4 button ID
	.byte 0x00    
	.2byte 0x0000 @ minigame input 5 text ID
	.byte 0x00 @ minigame input 5 button ID
	.byte 0x00

	
	.GLOBAL game_data_080781D8
game_data_080781D8:
	.INCBIN "us_baserom.gba", 0x781D8, 0x7E846-0x781D8
	.2byte 0x0000
		
	.GLOBAL gMinigameInstructionsTextPal_0807E848
gMinigameInstructionsTextPal_0807E848:
	.INCBIN "us_baserom.gba", 0x7E848, 0x7f4c0-0x7E848
	
	.GLOBAL gMenuScrollSpeed_0807F4C0
gMenuScrollSpeed_0807F4C0:
	.byte 15
	.byte 10
	.byte 5
	.byte 5

	.GLOBAL gGameStateInitFuncs_0807F4C4
gGameStateInitFuncs_0807F4C4:
	.4byte sub_080089DC  @ unknown/unused
	.4byte BootLogos_080605B4  @ title screen logos
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
	.INCBIN "us_baserom.gba", 0x7f584, 0x87d60-0x7f584
	
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
	.INCBIN "us_baserom.gba", 0x87dc0, 0x8db10-0x87dc0

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
	.INCBIN "us_baserom.gba", 0x8dc00, 0x8DD54-0x8dc00

	.GLOBAL gUnknown_0808DD54
gUnknown_0808DD54:
	.INCBIN "us_baserom.gba", 0x8DD54, 0x8DD7C-0x8DD54

	.GLOBAL gUnknown_0808DD7C @ Town Game Room B background pointers
gUnknown_0808DD7C:
	.INCBIN "us_baserom.gba", 0x8DD7C, 0x8E204-0x8DD7C
	
	.GLOBAL gUnknown_0808E204 @ Ice Game Room background pointers
gUnknown_0808E204:
	.INCBIN "us_baserom.gba", 0x8E204, 0x8E22C-0x8E204	
	
	.GLOBAL gUnknown_0808E22C @ Ice Stadium background pointers
gUnknown_0808E22C:
	.INCBIN "us_baserom.gba", 0x8E22C, 0x8E254-0x8E22C	
	
	.GLOBAL gUnknown_0808E254
gUnknown_0808E254:
	.INCBIN "us_baserom.gba", 0x8E254, 0x8E62C-0x8E254
	
	.GLOBAL gUnknown_0808E62C
gUnknown_0808E62C:
	.INCBIN "us_baserom.gba", 0x8E62C, 0x8E6BC-0x8E62C
	
	.GLOBAL gUnknown_0808E6BC @ Character particles sprite pointers
gUnknown_0808E6BC:
	.INCBIN "us_baserom.gba", 0x8E6BC, 0x8E70C-0x8E6BC	

	.GLOBAL gUnknown_0808E70C
gUnknown_0808E70C:
	.INCBIN "us_baserom.gba", 0x8E70C, 0x8E72C-0x8E70C
	
	.GLOBAL gUnknown_0808E72C
gUnknown_0808E72C:
	.INCBIN "us_baserom.gba", 0x8E72C, 0x8E7BC-0x8E72C
	
	.GLOBAL gUnknown_0808E7BC
gUnknown_0808E7BC:
	.INCBIN "us_baserom.gba", 0x8E7BC, 0x8E7CC-0x8E7BC
	
	.GLOBAL gUnknown_0808E7CC
gUnknown_0808E7CC:
	.INCBIN "us_baserom.gba", 0x8E7CC, 0x8E86C-0x8E7CC

	.GLOBAL gUnknown_0808E86C @ Ice Game Room Penguin sprite pointers
gUnknown_0808E86C:
	.INCBIN "us_baserom.gba", 0x8E86C, 0x8E99C-0x8E86C
	
	.GLOBAL gUnknown_0808E99C @ Ice Stadium Snowman sprite pointers
gUnknown_0808E99C:
	.INCBIN "us_baserom.gba", 0x8E99C, 0x8E9AC-0x8E99C
	
	.GLOBAL gUnknown_0808E9AC
gUnknown_0808E9AC:
	.INCBIN "us_baserom.gba", 0x8E9AC, 0x8E9BC-0x8E9AC	
	 
	.GLOBAL gUnknown_0808E9BC @ Town Game Room B amp sprite pointers
gUnknown_0808E9BC:
	.INCBIN "us_baserom.gba", 0x8E9BC, 0x8EA6C-0x8E9BC
	
	.GLOBAL gUnknown_0808EA6C
gUnknown_0808EA6C:
	.INCBIN "us_baserom.gba", 0x8EA6C, 0x11DE50-0x8EA6C


@ nintendo logo
	.GLOBAL gNintendoLogoPal_0811DE50
gNintendoLogoPal_0811DE50:
	.INCBIN "assets/boot_logos/nintendo_logo_pal.bin"

	.GLOBAL gNintendoLogoMap_0811DE98
gNintendoLogoMap_0811DE98:
	.INCBIN "assets/boot_logos/nintendo_logo_tile_map.lz"

	.GLOBAL gNintendoLogoGFX_0811DFE8
gNintendoLogoGFX_0811DFE8:
	.INCBIN "assets/boot_logos/nintendo_logo_gfx.lz"
	
@ hudson logo
	.GLOBAL gHudsonLogoPal_0811E42C
gHudsonLogoPal_0811E42C:
	.INCBIN "assets/boot_logos/hudson_logo_pal.bin"

	.GLOBAL gHudsonLogoMap_0811E470
gHudsonLogoMap_0811E470:
	.INCBIN "assets/boot_logos/hudson_logo_tile_map.lz"

	.GLOBAL gHudsonLogoGFX_0811E60C
gHudsonLogoGFX_0811E60C:
	.INCBIN "assets/boot_logos/hudson_logo_gfx.lz"
	

	.GLOBAL gUnknown_0811F790
gUnknown_0811F790:
	.INCBIN "us_baserom.gba", 0x11F790, 0x125644-0x11F790
	
@ gaddget shop small font
	.GLOBAL gUnknown_08125644
gUnknown_08125644:
	.INCBIN "us_baserom.gba", 0x125644, 0x125A98-0x125644
	
	.GLOBAL gUnknown_08125A98
gUnknown_08125A98:
	.INCBIN "us_baserom.gba", 0x125A98, 0x125AB8-0x125A98
	

@ small font, used in character list
	.GLOBAL gUnknown_08125AB8
gUnknown_08125AB8:
	.INCBIN "assets/font/small_font.bin"

	.GLOBAL gUnknown_08126AB8
gUnknown_08126AB8:
	.INCBIN "assets/font/small_font_unused_pal.bin"


@ standard font, used basically everywhere
	.GLOBAL gUnknown_08126B78
gUnknown_08126B78:
	.INCBIN "assets/font/standard_font.bin"

	.GLOBAL gUnknown_081284F8
gUnknown_081284F8:
	.INCBIN "assets/font/standard_font_unused_pal.bin"


	.GLOBAL gUnknown_0812851C
gUnknown_0812851C:
	.INCBIN "us_baserom.gba", 0x12851C, 0x13A8AC-0x12851C


	.GLOBAL gMinigameInstructionsBG0Pal_0813A8AC
gMinigameInstructionsBG0Pal_0813A8AC:
	.INCBIN "us_baserom.gba", 0x13A8AC, 0x13A8D0-0x13A8AC

	.GLOBAL gMinigameInstructionsMap_0813A8D0
gMinigameInstructionsMap_0813A8D0:
	.INCBIN "us_baserom.gba", 0x13A8D0, 0x13A984-0x13A8D0

	.GLOBAL gMinigameInstructionsGFX1_0813A984
gMinigameInstructionsGFX1_0813A984:
	.INCBIN "us_baserom.gba", 0x13A984, 0x13AF7C-0x13A984

	.GLOBAL gMinigameInstructionsBG1Pal_0813AF7C
gMinigameInstructionsBG1Pal_0813AF7C:
	.INCBIN "us_baserom.gba", 0x13AF7C, 0x13AFA0-0x13AF7C

	.GLOBAL gMinigameInstructionsGFX2_0813AFA0
gMinigameInstructionsGFX2_0813AFA0:
	.INCBIN "us_baserom.gba", 0x13AFA0, 0x14F70C-0x13AFA0

	.GLOBAL gUnknown_0814F70C
gUnknown_0814F70C:
	.INCBIN "us_baserom.gba", 0x14F70C, 0x14F72C-0x14F70C

	.GLOBAL gUnknown_0814F72C
gUnknown_0814F72C:
	.INCBIN "us_baserom.gba", 0x14F72C, 0x1AEE9C-0x14F72C
