	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .rodata

	.align 2, 0

	.GLOBAL game_text_pack_082aba28 @ houses the compressed game text
game_text_082aba28:
	.INCBIN "baserom.gba", 0x2aba28, 0x2d26d0-0x2aba28


@ gaddgets
	.GLOBAL gSnoozeEwesCmprCode
gSnoozeEwesCmprCode:
	.INCBIN "subgame/gaddget/snooze_ewes.lz"

	.GLOBAL gPortagustCmprCode
gPortagustCmprCode:
	.INCBIN "subgame/gaddget/portagust.lz"

	.GLOBAL gMagicLampCmprCode
gMagicLampCmprCode:
	.INCBIN "subgame/gaddget/magic_lamp.lz"

	.GLOBAL gCompatIComCmprCode
gCompatIComCmprCode:
	.INCBIN "subgame/gaddget/compat_i_com.lz"

	.GLOBAL gPowerStarCmprCode
gPowerStarCmprCode:
	.INCBIN "subgame/gaddget/power_star.lz"

	.GLOBAL gDesktopGolfCmprCode
gDesktopGolfCmprCode:
	.INCBIN "subgame/gaddget/desktop_golf.lz"

	.GLOBAL gShroomSlideCmprCode
gShroomSlideCmprCode:
	.INCBIN "subgame/gaddget/shroom_slide.lz"

	.GLOBAL gStickToItCmprCode
gStickToItCmprCode:
	.INCBIN "subgame/gaddget/stick_to_it.lz"

	.GLOBAL gBaitNWaitCmprCode
gBaitNWaitCmprCode:
	.INCBIN "subgame/gaddget/bait_n_wait.lz"

	.GLOBAL gDigitizerCmprCode
gDigitizerCmprCode:
	.INCBIN "subgame/gaddget/digitizer.lz"

	.GLOBAL gLipSyncCmprCode
gLipSyncCmprCode:
	.INCBIN "subgame/gaddget/lip_sync.lz"

	.GLOBAL gShroomBloomCmprCode
gShroomBloomCmprCode:
	.INCBIN "subgame/gaddget/shroom_bloom.lz"

	.GLOBAL gPoochyPalCmprCode
gPoochyPalCmprCode:
	.INCBIN "subgame/gaddget/poochy_pal.lz"

	.GLOBAL gBullseyeCmprCode
gBullseyeCmprCode:
	.INCBIN "subgame/gaddget/bulls_eye.lz"

	.GLOBAL gSoilSonarCmprCode
gSoilSonarCmprCode:
	.INCBIN "subgame/gaddget/soil_sonar.lz"

	.GLOBAL gMiniSluggerCmprCode
gMiniSluggerCmprCode:
	.INCBIN "subgame/gaddget/mini_slugger.lz"

	.GLOBAL gTapTapSumoCmprCode
gTapTapSumoCmprCode:
	.INCBIN "subgame/gaddget/tap_tap_sumo.lz"

	.GLOBAL gEggRollCmprCode
gEggRollCmprCode:
	.INCBIN "subgame/gaddget/egg_roll.lz"

	.GLOBAL gShroomDropCmprCode
gShroomDropCmprCode:
	.INCBIN "subgame/gaddget/shroom_drop.lz"

	.GLOBAL gMorseMakerCmprCode
gMorseMakerCmprCode:
	.INCBIN "subgame/gaddget/morse_maker.lz"

	.GLOBAL g4PPinballCmprCode
g4PPinballCmprCode:
	.INCBIN "subgame/gaddget/4p_pinball.lz"

	.GLOBAL gSnowGlobeCmprCode
gSnowGlobeCmprCode:
	.INCBIN "subgame/gaddget/snow_globe.lz"

	.GLOBAL gTileTrialCmprCode
gTileTrialCmprCode:
	.INCBIN "subgame/gaddget/tile_trial.lz"

	.GLOBAL gMapMakerCmprCode
gMapMakerCmprCode:
	.INCBIN "subgame/gaddget/map_maker.lz"

	.GLOBAL gAttackFrogCmprCode
gAttackFrogCmprCode:
	.INCBIN "subgame/gaddget/attack_frog.lz"

	.GLOBAL gMiniMazeCmprCode
gMiniMazeCmprCode:
	.INCBIN "subgame/gaddget/mini_maze.lz"

	.GLOBAL gFauxFlameCmprCode
gFauxFlameCmprCode:
	.INCBIN "subgame/gaddget/faux_flame.lz"

	.GLOBAL gStressPressCmprCode
gStressPressCmprCode:
	.INCBIN "subgame/gaddget/stress_press.lz"

	.GLOBAL gBombGameCmprCode
gBombGameCmprCode:
	.INCBIN "subgame/gaddget/bomb_game.lz"

	.GLOBAL gHourglassCmprCode
gHourglassCmprCode:
	.INCBIN "subgame/gaddget/hourglass.lz"

	.GLOBAL gRochambeauCmprCode
gRochambeauCmprCode:
	.INCBIN "subgame/gaddget/rochambeau.lz"

	.GLOBAL gEggPanicCmprCode
gEggPanicCmprCode:
	.INCBIN "subgame/gaddget/egg_panic.lz"

	.GLOBAL gBlockPunchCmprCode
gBlockPunchCmprCode:
	.INCBIN "subgame/gaddget/block_punch.lz"

	.GLOBAL gToadForceVCmprCode
gToadForceVCmprCode:
	.INCBIN "subgame/gaddget/toad_force_v.lz"

	.GLOBAL gDartAttackCmprCode
gDartAttackCmprCode:
	.INCBIN "subgame/gaddget/dart_attack.lz"

	.GLOBAL gBreezeBuddyCmprCode
gBreezeBuddyCmprCode:
	.INCBIN "subgame/gaddget/breeze_buddy.lz"

	.GLOBAL gChickenRaceCmprCode
gChickenRaceCmprCode:
	.INCBIN "subgame/gaddget/chicken_race.lz"

	.GLOBAL gLoveMeNotCmprCode
gLoveMeNotCmprCode:
	.INCBIN "subgame/gaddget/love_me_not.lz"

	.GLOBAL gMiniBowlingCmprCode
gMiniBowlingCmprCode:
	.INCBIN "subgame/gaddget/mini_bowling.lz"

	.GLOBAL gMiniBBallCmprCode
gMiniBBallCmprCode:
	.INCBIN "subgame/gaddget/mini_b_ball.lz"

	.GLOBAL gScreenCleanCmprCode
gScreenCleanCmprCode:
	.INCBIN "subgame/gaddget/screen_clean.lz"

	.GLOBAL gPredictotronCmprCode
gPredictotronCmprCode:
	.INCBIN "subgame/gaddget/predictotron.lz"

	.GLOBAL gCakeMakerCmprCode
gCakeMakerCmprCode:
	.INCBIN "subgame/gaddget/cake_maker.lz"

	.GLOBAL gMiniSoccerCmprCode
gMiniSoccerCmprCode:
	.INCBIN "subgame/gaddget/mini_soccer.lz"

	.GLOBAL gDessertMenuCmprCode
gDessertMenuCmprCode:
	.INCBIN "subgame/gaddget/dessert_menu.lz"

	.GLOBAL gBeadMachineCmprCode
gBeadMachineCmprCode:
	.INCBIN "subgame/gaddget/bead_machine.lz"

	.GLOBAL gJewelryCaseCmprCode
gJewelryCaseCmprCode:
	.INCBIN "subgame/gaddget/jewelry_case.lz"

	.GLOBAL gCastleNightCmprCode
gCastleNightCmprCode:
	.INCBIN "subgame/gaddget/castle_night.lz"

	.GLOBAL gHopeChestCmprCode
gHopeChestCmprCode:
	.INCBIN "subgame/gaddget/hope_chest.lz"

	.GLOBAL gEyeExamCmprCode
gEyeExamCmprCode:
	.INCBIN "subgame/gaddget/eye_exam.lz"

	.GLOBAL gCardTrickCmprCode
gCardTrickCmprCode:
	.INCBIN "subgame/gaddget/card_trick.lz"


@ coin games
	.GLOBAL gScratchEmCmprCode
gScratchEmCmprCode:
	.INCBIN "subgame/coin_game/scratch_em.lz"

	.GLOBAL gMatchEmCmprCode
gMatchEmCmprCode:
	.INCBIN "subgame/coin_game/match_em.lz"

	.GLOBAL gWatchEmCmprCode
gWatchEmCmprCode:
	.INCBIN "subgame/coin_game/watch_em.lz"

	.GLOBAL gDropEmCmprCode
gDropEmCmprCode:
	.INCBIN "subgame/coin_game/drop_em.lz"

	.GLOBAL gStopEmCmprCode
gStopEmCmprCode:
	.INCBIN "subgame/coin_game/stop_em.lz"

	.GLOBAL gPairEmCmprCode
gPairEmCmprCode:
	.INCBIN "subgame/coin_game/pair_em.lz"


@ koopa kid games
	.GLOBAL gCrushedIceCmprCode
gCrushedIceCmprCode:
	.INCBIN "subgame/koopa_kid/crushed_ice.lz"

	.GLOBAL gMushRushCmprCode
gMushRushCmprCode:
	.INCBIN "subgame/koopa_kid/mush_rush.lz"

	.GLOBAL gPeekNSeekCmprCode
gPeekNSeekCmprCode:
	.INCBIN "subgame/koopa_kid/peek_n_seek.lz"

	.GLOBAL gSplatterballCmprCode
gSplatterballCmprCode:
	.INCBIN "subgame/koopa_kid/splatterball.lz"

	.GLOBAL gTrapFloorCmprCode
gTrapFloorCmprCode:
	.INCBIN "subgame/koopa_kid/trap_floor.lz"

	.GLOBAL gKoopaKappaCmprCode
gKoopaKappaCmprCode:
	.INCBIN "subgame/koopa_kid/koopa_kappa.lz"
	
	.GLOBAL minigame_data_pack_0854f2dc @ houses all the assets for minigames below 
minigame_data_pack_0854f2dc:
	.INCBIN "baserom.gba", 0x54f2dc, 0x64d96c-0x54f2dc	


@ minigames that use data from minigame_data_pack_0854f2dc
	.GLOBAL gBooByeCmprCode
gBooByeCmprCode:
	.INCBIN "subgame/minigame/boo_bye.lz"

	.GLOBAL gGrabbitCmprCode
gGrabbitCmprCode:
	.INCBIN "subgame/minigame/grabbit.lz"

	.GLOBAL gChompWalkerCmprCode
gChompWalkerCmprCode:
	.INCBIN "subgame/minigame/chomp_walker.lz"

	.GLOBAL gCloudClimbCmprCode
gCloudClimbCmprCode:
	.INCBIN "subgame/minigame/cloud_climb.lz"

	.GLOBAL gBarrelPerilCmprCode
gBarrelPerilCmprCode:
	.INCBIN "subgame/minigame/barrel_peril.lz"

	.GLOBAL gBigPopperCmprCode
gBigPopperCmprCode:
	.INCBIN "subgame/minigame/big_popper.lz"

	.GLOBAL gForestJumpCmprCode
gForestJumpCmprCode:
	.INCBIN "subgame/minigame/forest_jump.lz"

	.GLOBAL gSwitchWayCmprCode
gSwitchWayCmprCode:
	.INCBIN "subgame/minigame/switch_way.lz"

	.GLOBAL gAmplifriedCmprCode
gAmplifriedCmprCode:
	.INCBIN "subgame/minigame/amplifried.lz"

	.GLOBAL gFlingshotCmprCode
gFlingshotCmprCode:
	.INCBIN "subgame/minigame/flingshot.lz"

	.GLOBAL gSpookySpikeCmprCode
gSpookySpikeCmprCode:
	.INCBIN "subgame/minigame/spooky_spike.lz"

	.GLOBAL gBobOOOMCmprCode
gBobOOOMCmprCode:
	.INCBIN "subgame/minigame/bob_ooom.lz"

	.GLOBAL gReelCheepCmprCode
gReelCheepCmprCode:
	.INCBIN "subgame/minigame/reel_cheep.lz"

	.GLOBAL gShellStackCmprCode
gShellStackCmprCode:
	.INCBIN "subgame/minigame/shell_stack.lz"

	.GLOBAL gBillBounceCmprCode
gBillBounceCmprCode:
	.INCBIN "subgame/minigame/bill_bounce.lz"

	.GLOBAL gBunnyBeltCmprCode
gBunnyBeltCmprCode:
	.INCBIN "subgame/minigame/bunny_belt.lz"

	.GLOBAL gPestAsideCmprCode
gPestAsideCmprCode:
	.INCBIN "subgame/minigame/pest_aside.lz"

	.GLOBAL gMelonFollyCmprCode
gMelonFollyCmprCode:
	.INCBIN "subgame/minigame/melon_folly.lz"

	.GLOBAL gSortStackCmprCode
gSortStackCmprCode:
	.INCBIN "subgame/minigame/sort_stack.lz"

	.GLOBAL gOnTheSpotCmprCode
gOnTheSpotCmprCode:
	.INCBIN "subgame/minigame/on_the_spot.lz"

	.GLOBAL gKoopaKrunchCmprCode
gKoopaKrunchCmprCode:
	.INCBIN "subgame/minigame/koopa_krunch.lz"

	.GLOBAL gFloorItCmprCode
gFloorItCmprCode:
	.INCBIN "subgame/minigame/floor_it.lz"

	.GLOBAL gDreadmillCmprCode
gDreadmillCmprCode:
	.INCBIN "subgame/minigame/dreadmill.lz"

	.GLOBAL gStompbotXLCmprCode
gStompbotXLCmprCode:
	.INCBIN "subgame/minigame/stompbot_xl.lz"

	.GLOBAL gGoGoPogoCmprCode
gGoGoPogoCmprCode:
	.INCBIN "subgame/minigame/go_go_pogo.lz"

	.GLOBAL gSledSlideCmprCode
gSledSlideCmprCode:
	.INCBIN "subgame/minigame/sled_slide.lz"

	.GLOBAL gFlippinOutCmprCode
gFlippinOutCmprCode:
	.INCBIN "subgame/minigame/flippin_out.lz"

	.GLOBAL gSeeMonkeyCmprCode
gSeeMonkeyCmprCode:
	.INCBIN "subgame/minigame/see_monkey.lz"

	.GLOBAL gOuttaMyWayCmprCode
gOuttaMyWayCmprCode:
	.INCBIN "subgame/minigame/outta_my_way.lz"

	.GLOBAL gBroomZoomCmprCode
gBroomZoomCmprCode:
	.INCBIN "subgame/minigame/broom_zoom.lz"


@ battle games that use data from minigame_data_pack_0854f2dc 
	.GLOBAL gTankDownCmprCode
gTankDownCmprCode:
	.INCBIN "subgame/battle/tank_down.lz"

	.GLOBAL gHammergeddonCmprCode
gHammergeddonCmprCode:
	.INCBIN "subgame/battle/hammergeddon.lz"

	.GLOBAL gStairScareCmprCode
gStairScareCmprCode:
	.INCBIN "subgame/battle/stair_scare.lz"

	.GLOBAL gChickenCmprCode
gChickenCmprCode:
	.INCBIN "subgame/battle/chicken.lz"

	.GLOBAL gChainSawCmprCode
gChainSawCmprCode:
	.INCBIN "subgame/battle/chain_saw.lz"

	.GLOBAL gVolleybombCmprCode
gVolleybombCmprCode:
	.INCBIN "subgame/battle/volleybomb.lz"

	.GLOBAL gKoopaCurlCmprCode
gKoopaCurlCmprCode:
	.INCBIN "subgame/battle/koopa_curl.lz"

	.GLOBAL gSlammerCmprCode
gSlammerCmprCode:
	.INCBIN "subgame/battle/slammer.lz"


	.GLOBAL game_data_087c5434
game_data_087c5434:
	.INCBIN "baserom.gba", 0x7c5434, 0x7c7168-0x7c5434
