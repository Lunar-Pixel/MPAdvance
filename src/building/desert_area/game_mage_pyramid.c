#include "global.h"
#include "gba/gba.h"

void sub_0804EAD8(void) {
    EventWinInit_08040fe8();
    EventWinSpeakerSet_08041018(0x27);
    EventWinMesSet_08041058(0x230008);
    EventAnimateChara_080418C8(0, 0, 3, 0);
    EventWinMesSet_08041058(0x230009);
    if ((EventQuestTitle_080408C4(0x22, 0x230007) << 0x18) != 0) {
        EventBGMPlay_080410A8(0x16);
        EventWinInit_08040fe8();
        EventWinSpeakerSet_08041018(0x27);
        EventAnimateChara_080418C8(0, 0, 0, 0);
        EventWinMesSet_08041058(0x23000A);
        EventWinMesSet_08041058(0x23000B);
        EventWinMesSet_08041058(0x23000C);
        EventWinMesSet_08041058(0x23000D);
        EventWinMesSet_08041058(0x23000E);
        EventWinMesSet_08041058(0x23000F);
        EventMgSpecialGoal_080427E0(0x79, 0x460032);
        EventAnimateChara_080418C8(0, 0, 6, 0);
        EventWinSpeakerSet_08041018(0x27);
        EventWinMesSet_08041058(0x230010);
        EventSetFlag_080406E4(0x88);
        SetCharacterMetFlag_0802D7CC(5);
    }
}

void sub_0804EBA8(void) {
    if (TestQuestFlag_08040714(0x8A) == 1) {
        PlayJingle_08041100(0x68);
        EventWaitForJingle_08041138();
        EventBGMPlay_080410A8(0x16);
        EventWinInit_08040fe8();
        EventWinSpeakerSet_08041018(0x27);
        EventAnimateChara_080418C8(0, 0, 6, 0);
        EventWinMesSet_08041058(0x230011);
        EventAnimateChara_080418C8(0, 0, 0, 0);
        EventWinMesSet_08041058(0x230012);
        EventWinMesSet_08041058(0x230013);
        EventWinMesSet_08041058(0x230014);
        EventWinMesSet_08041058(0x230015);
        EventWinMesSet_08041058(0x230016);
        EventWinMesSet_08041058(0x230017);
        EventAnimateChara_080418C8(0, 0, 3, 0);
        EventWinMesSet_08041058(0x230018);
        EventSetMinigame_08040B84(0x79);
        SetEventFlag_080406BC(0x8B);
        return;
    }
    EventWinInit_08040fe8();
    EventWinSpeakerSet_08041018(0x27);
    EventWinMesSet_08041058(0x230019);
    EventWinMesSet_08041058(0x23001A);
    EventWinMesSet_08041058(0x23001B);
    EventWinMesSet_08041058(0x23001C);
    EventUnsetFlag_080406FC(0x87);
    EventUnsetFlag_080406FC(0x88);
    EventUnsetFlag_080406FC(0x89);
    EventUnsetFlag_080406FC(0x8A);
    UnsetEventFlag_080406D0(0x8B);
}

void sub_0804ECA8(void) {
    s8 temp_r0;

    EventInit_080405B8();
    LoadBuildingBG_0804115C((u32*)0x0808E18C);
    LoadCharSprite_080415A0(0, 0, (u32*)0x0808E97C);
    sub_08041734(0, 0);
    EventPlaceChara_08041894(0, 0x78, 0x58);
    sub_080407FC();
    if ((sub_08040B0C() << 0x18) == 0) {
        EventBGMPlay_080410A8(0x1C);
        RunEventScript_0804066C(&sub_0804EAD8);
        if ((TestQuestFlag_08040714(0x88) << 0x18) != 0) {
            EventQuestBegin_080406D0(0x79);
        } else {
            sub_080405AC();
            goto end;
        }
    } else {
        temp_r0 = EventQuestFailRetry_08040A6C(0x16);
        if (temp_r0 != 1) {
            if (temp_r0 > 1) {
                if (temp_r0 == 2) {
                    goto retry_yes;
                }
            }
            goto end;
        } else {
            EventSetFlag_080406E4(0x8A);
        }

retry_yes:
        RunEventScript_0804066C(&sub_0804EBA8);
        sub_080405AC();
    }
    
end:
    sub_080410D0();
    sub_08041008();
    sub_08040820();
    sub_080417E0(0);
    sub_08041684(0, 0);
    sub_0804062C();
}