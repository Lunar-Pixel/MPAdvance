#include "global.h"
#include "gba/gba.h"

void TownGameRoomB_ScriptIntro_08043D38(void) {
    EventSleep_08040690(60);
    EventAnimateChara_080418C8(0, 0, 0, 0xFF);
    EventWinInit_08040fe8();
    EventWinSpeakerSet_08041018(0x2B); // amp dialouge portrait
    EventWinMesSet_08041058(0x200000); // "There's a lot of buzz about this game room." (dialouge bank 0x20, entry 0)
    EventWinMesSet_08041058(0x200001); // "I hear you can win a ton here! Shocking!" (dialouge bank 0x20, entry 1)
    EventWinMesSet_08041058(0x200002); // "But listen, I really need some help here." (dialouge bank 0x20, entry 2)
    EventWinChoice_0804106C(0x200003); // "Sure, I'll help."/"I'm gonna bolt." (dialouge bank 0x20, entry 3)
    if ((EventWinChoiceGet_08041088() << 0x18) != 0) {
        EventWinMesSet_08041058(0x200004); // "Hey, I'm harmless! No kidding!" (selecting "I'm gonna bolt.") (dialouge bank 0x20, entry 4)
        return;
    }
    if ((EventQuestTitle_080408C4(0x1F, 0x200005) << 0x18) != 0) { // title card "Losing Streak" (dialouge bank 0x20, entry 5)
        EventBGMPlay_080410A8(BGM_GAMBA_QUEST);
        EventWinInit_08040fe8();
        EventWinSpeakerSet_08041018(0x2B); // amp dialouge portrait
        EventWinMesSet_08041058(0x200006); // "You're going to help me? That's great." (dialouge bank 0x20, entry 6)
        EventWinMesSet_08041058(0x200007); // "See, I've just been playing games here." (dialouge bank 0x20, entry 7)
        EventWinMesSet_08041058(0x200008); // "The thing is, I just keep losing. Really." (dialouge bank 0x20, entry 8)
        EventWinMesSet_08041058(0x200009); // "If you could win once, my luck might change." (dialouge bank 0x20, entry 9)
        EventWinChoice_0804106C(0x20000A); // "Sounds Good" (option 1), "Oh, yeah!" (option 2) (dialouge bank 0x20, entry 10)
        if ((EventWinChoiceGet_08041088() << 0x18) == 0) {
            EventWinMesSet_08041058(0x20000B); // "Oh great. Perfect. This'll be a blast!" (selecting option 1) (dialouge bank 0x20, entry 11)
        } else {
            EventWinMesSet_08041058(0x200010); // "You sound really amped up about this!" (selecting option 2) (dialouge bank 0x20, entry 16)
        }
        EventWinMesSet_08041058(0x20000C); // "Just play this game until you beat it." (dialouge bank 0x20, entry 12)
        EventWinMesSet_08041058(0x20000D); // "If you can pull it off, you can keep the game." (dialouge bank 0x20, entry 13)
        EventWinMesSet_08041058(0x20000E); // "Not a bad deal, right?" (dialouge bank 0x20, entry 14)
        EventMgSpecialGoal_080427E0(0x74, 0x46002E); // "Game: Match 'Em"   "Goal: Win at least 1 coin more than you started with!" (dialouge bank 0x46, entry 46)
        EventWinSpeakerSet_08041018(0x2B); // amp dialouge portrait
        EventWinMesSet_08041058(0x20000F);  // "Great. Beat this game, and I'm ohm free!" (dialouge bank 0x20, entry 15)
        EventSetFlag_080406E4(0x7E);
        SetCharacterMetFlag_0802D7CC(0x23);
    }
}


void TownGameRoomB_ScriptAfterGame_08043E54(void) {
    EventAnimateChara_080418C8(0, 0, 0, 0xFF);
    if (TestQuestFlag_08040714(0x7F) == 1) { // check if minigame was won, else go to loss dialouge
        PlayJingle_08041100(0x68);
        EventWaitForJingle_08041138();
        EventBGMPlay_080410A8(BGM_GAMBA_QUEST);
        EventWinInit_08040fe8();
        EventWinSpeakerSet_08041018(0x2B); // amp dialouge portrait
        EventWinMesSet_08041058(0x200011); // "Hey, you won! My luck's finally gonna change!"  (dialouge bank 0x20, entry 17)
        EventWinMesSet_08041058(0x200012); // "Here, you get to keep this mini-game." (dialouge bank 0x20, entry 18)
        EventWinMesSet_08041058(0x200013); // "And you've helped me out of my bad streak!" (dialouge bank 0x20, entry 19)
        EventWinMesSet_08041058(0x200014); // "One good thing after another, eh?" (dialouge bank 0x20, entry 20)
        EventWinMesSet_08041058(0x200015); // "Say, you're not...the Game Mage, are you?" (dialouge bank 0x20, entry 21)
        EventWinMesSet_08041058(0x200016); // "Hm... Maybe not. Forget I said anything." (dialouge bank 0x20, entry 22)
        EventSetMinigame_08040B84(0x74);
        SetEventFlag_080406BC(0x80);
        return;
    }
    EventWinInit_08040fe8();
    EventWinSpeakerSet_08041018(0x2B); // amp dialouge portrait
    EventWinMesSet_08041058(0x200017); // "Oh, How re-volting! You lost!?" (dialouge bank 0x20, entry 23)
    EventWinMesSet_08041058(0x200018); // "Sorry, I can't give it to you." (dialouge bank 0x20, entry 24)
    EventWinMesSet_08041058(0x200019); // "I'm a loser, and you messed up this quest." (dialouge bank 0x20, entry 25)
    EventWinMesSet_08041058(0x20001A); // "You can always start all over, of course." (dialouge bank 0x20, entry 26)
    EventUnsetFlag_080406D0(0x7E);
    EventUnsetFlag_080406D0(0x7F);
    UnsetEventFlag_080406D0(0x80);
}

void sub_08043F1C(void) {
	EventSleep_08040690(60);
    EventAnimateChara_080418C8(0, 0, 0, 0xFF);
    EventWinInit_08040fe8();
	EventWinSpeakerSet_08041018(0x2B); // amp dialouge portrait
    EventWinMesSet_08041058(0x20001b); // "Hey, buddy, Long time, no see. Guess watt!"  (dialouge bank 0x20, entry 27)
    EventWinMesSet_08041058(0x20001c); // "I'm on another losing streak. It's brutal!" (dialouge bank 0x20, entry 28)
    EventWinMesSet_08041058(0x20001d); // "I could really use a little help again..." (dialouge bank 0x20, entry 29)
}

void TownGameRoomBInit_08043F5C(void) {
    struct BuildingRelatedStruct temp_0808DBF8;

    EventInit_080405B8();
    LoadBuildingBG_0804115C(&gUnknown_0808DD7C);
    LoadCharSprite_080415A0(0, 0, &gUnknown_0808E9BC);
    sub_08041734(0, 0);
    EventPlaceChara_08041894(0, 0x78, 0x50);
    EventAnimateChara_080418C8(0, 0, 2, 0xFF);
    temp_0808DBF8 = gUnknown_0808DBF8; 
    sub_08041D0C(0, 1, &temp_0808DBF8.unk0);
    sub_080407FC();
    if (TestQuestFlag_08040714(0x80) == 1) {
        EventBGMPlay_080410A8(BGM_TOWN_AREA_BUILDING);
        RunEventScript_0804066C(&sub_08043F1C); // long time no see
    } else if ((sub_08040B0C() << 0x18) == 0) {
        EventBGMPlay_080410A8(BGM_TOWN_AREA_BUILDING);
        RunEventScript_0804066C(&TownGameRoomB_ScriptIntro_08043D38); // quest intro
        if ((TestQuestFlag_08040714(0x7E) << 0x18) != 0) {
            EventQuestBegin_080406D0(0x74);
        }
    } else {
        switch (EventQuestFailRetry_08040A6C(0x16))
        {
            case 0:
                break;
			case 1: // game win
				EventSetFlag_080406E4(0x7F); // set flag 0x7F 
			case 2:
				RunEventScript_0804066C(&TownGameRoomB_ScriptAfterGame_08043E54); // quest win/fail
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
