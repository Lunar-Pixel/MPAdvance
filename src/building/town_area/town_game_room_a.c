#include "global.h"
#include "gba/gba.h"

void TownGameRoomA_ScriptIntro_08043980(void) {
    EventSleep_08040690(60);
    EventAnimateChara_080418C8(0, 0, 0, 0); // monty mole standing facing camera
    EventWinInit_08040fe8();
    EventWinSpeakerSet_08041018(0x2A); // monty mole dialouge portrait
    EventWinMesSet_08041058(0x1F0000); // "This game room is the best in town!" (dialouge bank 0x1f, entry 0)
    EventWinMesSet_08041058(0x1F0001); // "You win more here than you can next door." (dialouge bank 0x1f, entry 1)
    EventWinMesSet_08041058(0x1F0002); // "But enough about that. I need your help!" (dialouge bank 0x1f, entry 2)
    EventWinChoice_0804106C(0x1F0003); // "Why not!"/"Why bother?" (dialouge bank 0x1f, entry 3)
    if ((EventWinChoiceGet_08041088() << 0x18) != 0) {
        EventAnimateChara_080418C8(0, 0, 4, 0xFF); // monty mole crying
        EventWinMesSet_08041058(0x1F0004); // "Aah! You won't help!? I'm finished!!" (selecting "Why bother!") (dialouge bank 0x1f, entry 4)
        return;
    }
    if ((EventQuestTitle_080408C4(0x1E, 0x1F0005) << 0x18) != 0) { // title card "Winners Keepers" (dialouge bank 0x1f, entry 5)
        EventBGMPlay_080410A8(BGM_GAMBA_QUEST);
        EventWinInit_08040fe8();
        EventWinSpeakerSet_08041018(0x2A); // monty mole dialouge portrait
        EventAnimateChara_080418C8(0, 0, 4, 0xFF); // monty mole crying
        EventWinMesSet_08041058(0x1F0006); // "Great! You're such a down-to-earth person!" (dialouge bank 0x1f, entry 6)
        EventAnimateChara_080418C8(0, 0, 0, 0); // monty mole standing facing camera
        EventWinMesSet_08041058(0x1F0007); // "I've been playing games here for a bit." (dialouge bank 0x1f, entry 7)
        EventAnimateChara_080418C8(0, 0, 4, 0xFF); // monty mole crying
        EventWinMesSet_08041058(0x1F0008); // "The thing is, I'm in a terrible slump!" (dialouge bank 0x1f, entry 8)
        EventWinMesSet_08041058(0x1F0009); // "Think you can beat this game and end my slump?" (dialouge bank 0x1f, entry 9)
        EventWinChoice_0804106C(0x1F000A); // "Sure."/"I'm ready!" (dialouge bank 0x1f, entry 10)
        if ((EventWinChoiceGet_08041088() << 0x18) == 0) {
            EventAnimateChara_080418C8(0, 0, 3, 0); // monty mole with arms up facing camera
            EventWinMesSet_08041058(0x1F000B); // "Oh, thank you, thank you, thank you!" (dialouge bank 0x1f, entry 11)
            EventWinMesSet_08041058(0x1F000C); // "Here's what I want you to do. Play this game." (dialouge bank 0x1f, entry 12)
            EventWinMesSet_08041058(0x1F000D); // "If you can beat it, you can keep it." (dialouge bank 0x1f, entry 13)
        } else {
            EventAnimateChara_080418C8(0, 0, 3, 0); // monty mole with arms up facing camera
            EventWinMesSet_08041058(0x1F0010); // "Super! I like your attitude, friend!" (dialouge bank 0x1f, entry 16)
            EventWinMesSet_08041058(0x1F0011); // "People lack your kind of enthusiasm!" (dialouge bank 0x1f, entry 17)
            EventWinMesSet_08041058(0x1F0012); // "Here's what I want you to do. Play this game." (dialouge bank 0x1f, entry 18)
            EventWinMesSet_08041058(0x1F0013); // "If you can beat it, you can keep it." (dialouge bank 0x1f, entry 19)
        }
        EventWinMesSet_08041058(0x1F000E); // "Eh? Do you want the mini-game?" (dialouge bank 0x1f, entry 14)
        EventMgSpecialGoal_080427E0(0x73, 0x46002D); // "Game: Scratch 'Em"   "Goal: Win at least 1 coin more than you started with!" (dialouge bank 0x46, entry 45)
        EventWinSpeakerSet_08041018(0x2A); // monty mole dialouge portrait
        EventWinMesSet_08041058(0x1F000F); // "Go to it! And have fun, you dig?" (dialouge bank 0x1f, entry 15)
        EventSetFlag_080406E4(0x7B);
        SetCharacterMetFlag_0802D7CC(0x16);
    }
}

void TownGameRoomA_ScriptAfterGame_08043B04(void) {
	
	if	(TestQuestFlag_08040714(0x7C) == 1) { // check if minigame was won, else go to loss dialouge
		PlayJingle_08041100(BGM_TASK_COMPLETE);
		EventWaitForJingle_08041138();
		EventBGMPlay_080410A8(BGM_GAMBA_QUEST);
		EventWinInit_08040fe8();
		EventWinSpeakerSet_08041018(0x2A); // monty mole dialouge portrait
		EventAnimateChara_080418C8(0, 0, 3, 0); // monty mole with arms up facing camera
		EventWinMesSet_08041058(0x001F0014); // "Hooray! You won for me! My slump is over!" (dialouge bank 0x1f, entry 20)
		EventWinMesSet_08041058(0x001F0015); // "You get to keep this mini-game!" (dialouge bank 0x1f, entry 21)
		EventWinMesSet_08041058(0x001F0016); // "You're collecting them right? OK." (dialouge bank 0x1f, entry 22)
		EventAnimateChara_080418C8(0, 0, 4, 0xFF); // monty mole crying
		EventWinMesSet_08041058(0x001F0017); // "I have tears of joy going on here!" (dialouge bank 0x1f, entry 23)
		EventWinMesSet_08041058(0x001F0018); // "You might even outgame the Game Mage!" (dialouge bank 0x1f, entry 24)
		EventSetMinigame_08040B84(0x73);
		SetEventFlag_080406BC(0x7D);
	}
	else {	
		EventWinInit_08040fe8();
		EventWinSpeakerSet_08041018(0x2A);
		EventAnimateChara_080418C8(0, 0, 0, 0); // monty mole standing facing camera
		EventWinMesSet_08041058(0x1F0019); // "Oh, oh, oh! And you were so close too!" (dialouge bank 0x1f, entry 25)
		EventWinMesSet_08041058(0x1F001A); // "Sigh... I'm sorry, but you've failed." (dialouge bank 0x1f, entry 26)
		EventWinMesSet_08041058(0x1F001B); // "My slump's never going to end, is it?" (dialouge bank 0x1f, entry 27)
		EventWinMesSet_08041058(0x1F001C); // "You can try again if you want." (dialouge bank 0x1f, entry 28)
		EventAnimateChara_080418C8(0, 0, 4, 0xFF); // monty mole crying
		EventWinMesSet_08041058(0x1F001D); // "I'm feeling really low right now." (dialouge bank 0x1f, entry 29)
		EventUnsetFlag_080406D0(0x7B);
		EventUnsetFlag_080406D0(0x7C);
		UnsetEventFlag_080406D0(0x7D);
	}
	
}

void sub_08043BF4(void) {
	
	EventSleep_08040690(60);
	EventAnimateChara_080418C8(0, 0, 3, 0); // monty mole with arms up facing camera
	EventWinInit_08040fe8();
	EventWinSpeakerSet_08041018(0x2A); // monty mole dialouge portrait
	EventWinMesSet_08041058(0x001F001E); // "" (dialouge bank 0x1f, entry 30)
	EventAnimateChara_080418C8(0, 0, 0, 0); // monty mole standing facing camera
	EventWinMesSet_08041058(0x001F001F); // "" (dialouge bank 0x1f, entry 31)
	EventWinMesSet_08041058(0x001F0020); // "" (dialouge bank 0x1f, entry 32)
	EventAnimateChara_080418C8(0, 0, 4, 0xFF); // monty mole crying
	EventWinMesSet_08041058(0x001F0021); // "" (dialouge bank 0x1f, entry 33)
}


void TownGameRoomAInit_08043C58(void) {
    EventInit_080405B8();
    LoadBuildingBG_0804115C(&gUnknown_0808DD54);
    LoadCharSprite_080415A0(0, 0, &gUnknown_0808E9AC);
    sub_08041734(0, 0);
    EventPlaceChara_08041894(0, 0x78, 0x58);
    EventAnimateChara_080418C8(0, 0, 1, 0); // monty mole facing left
    sub_080407FC();
    if (TestQuestFlag_08040714(0x7D) == 1) {
        EventBGMPlay_080410A8(BGM_TOWN_AREA_BUILDING);
        RunEventScript_0804066C(&sub_08043BF4);
    } else if ((sub_08040B0C() << 0x18) == 0) {
        EventBGMPlay_080410A8(BGM_TOWN_AREA_BUILDING);
        RunEventScript_0804066C(&TownGameRoomA_ScriptIntro_08043980);
        if ((TestQuestFlag_08040714(0x7B) << 0x18) != 0) {
            EventQuestBegin_080406D0(0x73);
        }
    } else {
        switch (EventQuestFailRetry_08040A6C(0x16))
        {
            case 0:
                break;
            case 1: // game win
                EventSetFlag_080406E4(0x7C); // set flag 0x7C
            case 2:
                RunEventScript_0804066C(&TownGameRoomA_ScriptAfterGame_08043B04);
                sub_08040B28();
                break;
        }
        
    }
    sub_080410D0();
    sub_08041008();
    sub_08040820();
    sub_080417E0(0);
    sub_08041684(0, 0);
    sub_0804062C();
}
