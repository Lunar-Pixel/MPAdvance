#ifndef GUARD_GLOBAL_H
#define GUARD_GLOBAL_H

#include "gba/gba.h"

enum CharacterID {
	CHARACTER_MARIO = 0,
	CHARACTER_LUIGI = 1,
	CHARACTER_PEACH = 2,
	CHARACTER_YOSHI = 3
};

typedef enum SongID {
    BGM_DUMMY=0,
    BGM_OPENING=1,
    BGM_TITLE=2,
    BGM_PASSPORT_SETUP=3,
    BGM_PASSPORT_VIEW=4,
    BGM_MAIN_MENU=5,
    BGM_CHALLENGE_LAND=6,
    BGM_PLAY_LAND=7,
    BGM_PARTY_LAND=8,
    BGM_UNUSED_PASSPORT=9,
    BGM_FREE_PLAY_RESULTS=10,
    BGM_SHROOM_CITY_SETUP=11,
    BGM_FREE_PLAY=12,
    BGM_SHROOM_CITY_CHAR_CREDITS=13,
    BGM_CREDITS=14,
    BGM_SHROOM_CITY_MAIN=15,
    BGM_MYSTERY_QUEST=16,
    BGM_LOVE_QUEST=17,
    BGM_SPORT_QUEST=18,
    BGM_ADVENTURE_QUEST=19,
    BGM_BOMB_QUEST=20,
    BGM_TOAD_FORCE_V=21,
    BGM_GAMBA_QUEST=22,
    BGM_DUEL_QUEST=23,
    BGM_ITEM_SEARCH_QUEST=24,
    BGM_TOWN_AREA_BUILDING=25,
    BGM_HORROR_AREA_BUILDING=26,
    BGM_SNOW_AREA_BUILDING=27,
    BGM_DESERT_AREA_BUILDING=28,
    BGM_JUNGLE_AREA_BUILDING=29,
    BGM_SEASIDE_AREA_BUILDING=30,
    BGM_MINIGAME_1=31,
    BGM_DUMMY_2=32,
    BGM_MINIGAME_2=33,
    BGM_MINIGAME_3=34,
    BGM_MINIGAME_4=35,
    BGM_MINIGAME_5=36,
    BGM_DUMMY_3=37,
    BGM_MINIGAME_6=38,
    BGM_MINIGAME_7=39,
    BGM_DUMMY_4=40,
    BGM_DUMMY_5=41,
    BGM_DUMMY_6=42,
    BGM_GAMBA_MINIGAME=43,
    BGM_BOWSER_MINIGAME=44,
    BGM_DUMMY_7=45,
    BGM_MINIGAME_8=46,
    BGM_DUMMY_8=47,
    BGM_MINIGAME_9=48,
    BGM_MINIGAME_10=49,
    BGM_DUMMY_9=50,
    BGM_FIND_FAKE_BOO=51,
    BGM_SEARCH_FOR_CLUES=52,
    BGM_JUNGLE_DANCING=53,
    BGM_CALL_UFO=54,
    BGM_RACE_BULLET_BILL=55,
    BGM_RACE_CHEEP_CHEEP=56,
    BGM_BASEBALL_PRACTICE=57,
    BGM_HAMMER_THROW_COMPETITION=58,
    BGM_GUESS_CODE=59,
    BGM_BIG_BOMB_BATTLE=60,
    BGM_BOWSER_CARD_GAME=61,
    BGM_LISTEN_COMEDIAN=62,
    BGM_BOWSER_SOCCER=63,
    BGM_MINIGAME_ATTACK=64,
    BGM_MINIGAME_ATT_5_W=65,
    BGM_MINIGAME_ATT_10_W=66,
    BGM_MINIGAME_ATT_15_W=67,
    BGM_BOWSER_LAND_MINIGAME_RESULTS=68,
    BGM_BOWSER_LAND_COMPLETE=69,
    BGM_BOWSER_LAND=70,
    BGM_BOWSER_LAND_SETUP=71,
    BGM_DUEL_DASH=72,
    BGM_DUEL_DASH_COMPLETE=73,
    BGM_GAME_ROOM_SETUP=74,
    BGM_GAME_ROOM=75,
    BGM_BOWSER_RAMPAGE=76,
    BGM_PARTY_WORLD_ATTACKED=77,
    BGM_UNUSED_DRUMS_1=78,
    BGM_UNUSED_DRUMS_2=79,
    BGM_UNUSED_DRUMS_3=80,
    BGM_UNUSED_DRUMS_4=81,
    BGM_BOWSER_SHOWDOWN=82,
    BGM_DUMMY_10=83,
    BGM_UNUSED_SHROOM_CITY=84,
    BGM_BOWSER_PIPE_HOUSE=85,
    BGM_QUEST_COMPLETE=86,
    BGM_DUMMY_11=87,
    BGM_DUMMY_12=88,
    BGM_DUMMY_13=89,
    BGM_DUMMY_14=90,
    BGM_DUMMY_15=91,
    BGM_DUMMY_16=92,
    BGM_DUMMY_17=93,
    BGM_DUMMY_18=94,
    BGM_DUMMY_19=95,
    BGM_DUMMY_20=96,
    BGM_DUMMY_21=97,
    BGM_DUMMY_22=98,
    BGM_DUMMY_23=99,
    BGM_MINIGAME_WIN=100,
    BGM_MINIGAME_LOSE=101,
    BGM_MINIGAME_NEW_RECORD=102,
    BGM_QUEST_TITLE=103,
    BGM_TASK_COMPLETE=104,
    BGM_MINIGAME_ATTACK_WIN=105,
    BGM_MINIGAME_ATTACK_LOSE=106,
    BGM_BOWSER_LAND_WIN=107,
    BGM_BOWSER_LAND_LOSE=108,
    BGM_DUEL_DASH_WIN=109,
    BGM_DUEL_DASH_LOSE=110,
    BGM_GADDGET_SNOOZE_EWES=111,
    BGM_SHROOM_CITY_FIRST_ROLL=112,
    BGM_SECRET_BATTLE_WIN=113,
    BGM_SECRET_BATTLE_LOSE=114,
    BGM_SHROOM_CITY_GAMEOVER=115,
    BGM_DUMMY_24=116
} SongID;


struct BuildingRelatedStruct {
    u32 unk0;
    u32 unk4;
};

struct struct_030024E0 {
    u16 unk0;
    u16 unk2;
    u16 unk4;
    u16 unk6;
    u16 unk8;
    u16 unkA;
    u16 unkC;
    u16 unkE;
    u16 unk10;
    u16 unk12;
    u16 unk14;
    u8 pad16[0x4A - 0x16];
    u16 unk4A;
    u16 unk4C;
    u8 unk4E;
    u8 unk4F;
};

extern struct struct_030024E0 gUnknown_030024E0;

struct struct_03004400  {
    u32 unk0;
    u8 unk4;
    u8 unk5;
    
};

extern struct struct_03004400 gUnknown_03004400;

extern u16 gUnknown_0300252C;
extern u16 gUnknown_030024B0;
extern u8 gUnknown_0300252F;
extern u16 gUnknown_0300252A;

extern u32 gUnknown_0814F72C;
extern u32 gUnknown_0814F70C;






extern u32 gUnknown_0808DD7C;
extern u32 gUnknown_0808E9BC;
extern struct BuildingRelatedStruct gUnknown_0808DBF8;
extern u32 gUnknown_0808DD54;
extern u32 gUnknown_0808E9AC;
extern u32 gUnknown_0808E6BC;
extern u32 gUnknown_0808E99C;
extern u32 gUnknown_0808E22C;
extern u32 gUnknown_0808E204;
extern u32 gUnknown_0808E86C;


extern u32 gUnknown_0808E254;
extern u32 gUnknown_0808E62C;
extern u32 gUnknown_0808E7BC;
extern u32 gUnknown_0808E7CC;
extern u32 gUnknown_0808E70C;
extern u32 gUnknown_0808E72C;
extern u32 gUnknown_0808EA6C;


void PlayJingle_08041100(s32);
void EventSetMinigame_08040B84(u32);
void EventWaitForJingle_08041138(void);
void SetEventFlag_080406BC(u32);
void UnsetEventFlag_080406D0(u32);
void EventUnsetFlag_080406FC(u32);
void sub_08041D0C(s32, s32, u32*);
void EventSleep_08040690(u32);
void EventAnimateChara_080418C8(u32, u32, u32, u32);
void EventWinInit_08040fe8();
void EventWinSpeakerSet_08041018(u32);
void EventWinMesSet_08041058(u32);
void EventWinChoice_0804106C(u32);
void QuestFinish_08042814(u32, u32);
s8 EventWinChoiceGet_08041088();
u32 EventQuestTitle_080408C4(u32, u32);
void EventBGMPlay_080410A8(u32);
void SetCharacterMetFlag_0802D7CC(u32);
void EventSetFlag_080406E4(u32);
void EventMgSpecialGoal_080427E0(u32, u32);
void EventPlaySFX_080410E0(s32);
void sub_08041808(s32, s32);

void EventInit_080405B8();
void LoadBuildingBG_0804115C(u32 *);
void EventBGMPlay_080410A8(u32);
void RunEventScript_0804066C(void *);
u8 TestQuestFlag_08040714(u32);
void sub_0804062C();
void sub_080407FC();
void sub_08040820();
s8 EventQuestFailRetry_08040A6C(u32);
u32 sub_08040B0C();
void sub_08040B28();
void EventQuestBegin_080406D0(u32);
void sub_08041008();
void sub_080410D0();
void LoadCharSprite_080415A0(u32, u32, u32 *);
void sub_08041684(u32, u32);
void sub_08041734(u32, u32);
void sub_080417E0(u32);
void EventPlaceChara_08041894(u32, u32, u32);
void sub_080418C8(u32, u32, u32, u32);
void sub_08041808(s32, s32);

void EventMoveChara_08041938(u8, u8, u8, u8);
void sub_080454C4();

void EventSetupQuestMinigame_08040F18();
s32 sub_08040EF0();
void sub_08040F0C();
u8 sub_08040F38();
void sub_08040BB8();

void EventWaitForJingle_08041138();
void EventSetMinigame_08040B84();
void SetEventFlag_080406BC();
void EventUnsetFlag_080406FC();
void UnsetEventFlag_080406D0();

void DisplayGFX_080414B4(s32*, s32, s32);
void sub_080412A0(s32, s32, s32);
void sub_08041864(s8, s8);
void sub_08041560();
void sub_08041310();

void FadeIn_08008AF4(s32, s32, s32, s32);
void FadeOut_080089E8(s32, s32, s32, s32);

void ProcSleep_08002B98(s32);
void sub_08002B0C();
void sub_08008D34();
void ChangeGameState_08008790(s32);

extern void sub_080405AC();
extern void sub_08043980();
extern void sub_08043B04();
extern void sub_08043BF4();
extern void sub_08050390();
extern void sub_080504CC();
extern void sub_08050580();
extern void sub_0804FF04();
extern void sub_080500D8();
extern void sub_08050220();
extern void sub_080506E4();
extern void sub_08050AAC();
extern void sub_08050EBC();
extern void sub_0805114C();

#define ARRAY_COUNT(array) (sizeof(array) / sizeof((array)[0]))

#endif  // GUARD_GLOBAL_H