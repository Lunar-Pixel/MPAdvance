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
    u16 DISPCNT;
    u16 BG0CNT;
    u16 BG1CNT;
    u16 BG2CNT;
    u16 BG3CNT;
    u16 BG0HOFS;
    u16 BG0VOFS;
    u16 BG1HOFS;
    u16 BG1VOFS;
    u16 BG2HOFS;
    u16 BG2VOFS;
    u16 BG3HOFS;
    u16 BG3VOFS;
    u16 BG2PA;
    u16 BG2PB;
    u16 BG2PC;
    u16 BG2PD;
    u16 unk22;
    u32 BG2X;
    u32 BG2Y;
    u16 BG3PA;
    u16 BG3PB;
    u16 BG3PC;
    u16 BG3PD;
    u32 BG3X;
    u32 BG3Y;
    u16 WIN0H;
    u16 WIN1H;
    u16 WIN0V;
    u16 WIN1V;
    u8 WININ_1;
    u8 WININ_2;
    u8 WINOUT_1;
    u8 WINOUT_2;
    u8 MOSAIC_1;
    u8 MOSAIC_2;
    u16 BLDCNT;
    u16 BLDALPHA;
    u8 BLDY_1;
    u8 BLDY_2;
};

extern struct struct_030024E0 gUnknown_030024E0;

struct struct_03004400  {
    u32 unk0;
    u8 unk4;
    u8 unk5;
    u8 unk6;
    u8 unk7;
    u8 unk8;  
    u8 unk9;  
    u8 unkA;
    u8 unkB;
    u8 unkC;
    u8 currentMinigameID;
    
    
};

extern struct struct_03004400 gUnknown_03004400;

struct minigame_info_thing {
    u16 input_1_text_id;
    u8 input_1_btn_id;
    u8 unkB;
};

struct minigame_info {

    u8 game_uses_pack_data;
    u8 menu_flags;
    u8 minigame_id;
    u8 icon_id;
    u16 game_text_id;
    u16 game_desc_id;
	struct minigame_info_thing thing[5];
};

extern struct minigame_info gMinigameInfo_08077448[];

struct struct_03001630_sub34 {
    u16 unk0;
    u16 unk2;
    u16 unk4;
    s16 unk6;
    u16 unk8;
    u16 unkA;
};

struct struct_03001630 {
    u8 unk0;
    u8 unk1;
    u8 unk2;
    u8 unk3;
    u16 unk4;
    u16 unk6;
    u32 unk8;
    u32 unkC;
    u32 unk10;
    u32 unk14;
    u32 unk18;
    u32 unk1C;
    u32 unk20;
    u32 unk24;
    s16 unk28;
    s16 unk2A;
    s16 unk2C;
    s16 unk2E;
    u8 unk30_0:1;
    u8 unk30_1:1;
    u8 unk30_2:1;
    u8 unk31;
    u8 unk32;
    u8 unk33;
    struct struct_03001630_sub34* unk34;
    u32 unk38;
    u32 *unk3C;
    u8 unk40;
};

extern struct struct_03001630* gUnknown_03001630;

struct struct_030024B0 {
	s16 unk0;
	u16 unk2;
	
};

extern struct struct_030024B0 gUnknown_030024B0;

struct sceneData {

    u32 textBankID;
    u8 unk4;
    u8 portraitID;
    u16 unk6;
    u16 padA;
    u16 padC;
    u16 padE;
};

struct sceneData_base {
    struct sceneData sceneData;
    u32 unk4;
};

extern struct sceneData_base gUnknown_0808F1B4;
extern struct sceneData_base gUnknown_0808F1BC;
extern struct sceneData_base gUnknown_0808F1C4;
extern struct sceneData_base gUnknown_0808F1CC;
extern struct sceneData_base gUnknown_0808F1D4;
extern struct sceneData_base gUnknown_0808F1DC;
extern struct sceneData_base gUnknown_0808F1E4;

extern u16 gUnknown_0300252C;

extern u8 gUnknown_0300252F;
extern u16 gUnknown_0300252A;

extern u8 gUnknown_03001400;

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

extern u32 gHudsonLogoGFX_0811E60C;
extern u32 gHudsonLogoMap_0811E470;
extern u16 gHudsonLogoPal_0811E42C;
extern u32 gNintendoLogoGFX_0811DFE8;
extern u32 gNintendoLogoMap_0811DE98;
extern u16 gNintendoLogoPal_0811DE50;

extern u16 gMinigameInfoBtnTileIndex_08077248[8];


extern u16 gMinigameInstructionsBG0Pal_0813A8AC;
extern u16 gMinigameInstructionsBG1Pal_0813AF7C;
extern u32 gMinigameInstructionsGFX1_0813A984;
extern u32 gMinigameInstructionsGFX2_0813AFA0;
extern u32 gMinigameInstructionsMap_0813A8D0;
extern u32 gMinigameInstructionsTextPal_0807E848;

extern u32 *gUnknown_0814F490[5]; // sprite animation data?
extern u32 *gUnknown_0814F468[10]; // sprite animation oam and sprite construction pointers

extern const u16 gUnknown_0808F1F8[60]; // star bobbing Y position frame data

extern u16 gUnknown_08107C48;
extern u32 gUnknown_08107D8C;
extern u32 gUnknown_08108338; //tilemap
extern u32 gUnknown_081088E4; //tilemap
extern u32 gUnknown_08108E90;
extern u16 gUnknown_0810E26C;
extern u16 gUnknown_0810E2C4;
extern u16 gUnknown_081106D0;
extern u16 gUnknown_08110728;
extern u16 gUnknown_08112B34;
extern u16 gUnknown_08112B8C;
extern u16 gUnknown_08114F98;
extern u16 gUnknown_08114FF0;
extern u16 gUnknown_0814F234;
extern u32 gUnknown_0814F2A8;
extern u16 gUnknown_0814F318;
extern u32 gUnknown_0814F4A4;

void *DecompressData_08008374(s32*, s32);
void LoadPalette_08008308(u16*, s32);
void LoadTileMap_080083CC(s32*, s32, s32, s32);
void sub_080072F4(s32);

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

s32 sub_0800193C(u8, u16);
void sub_08001FB0(u16, u16, u8, u8, u8, u8);
void sub_0800201C(u16, u16, u8, u8, u8, u8);
u8 sub_080045FC(s32, s32);
void sub_08004D94(s32, s32, s32, s32, s32);
void sub_08004E6C(s32, s32, s32, s32, s32, s32);

void sub_080034DC();
void sub_080057D0();
void sub_080038F4(s32, s8*, s32);
void sub_08003938(s32, s32, s8*, s32);
void sub_08003A30(s32);
u8 sub_08007310();
u8 sub_080038E8();
void sub_080077EC(s32, s32);

u32 sub_08007760(u8);

void sub_0805B4A8();
void sub_0805B6B4();
void sub_0805B7D0();
void sub_08003F9C();
void sub_08004028(s32, s32, s32, s32, s32);
void sub_080057C0();
void sub_08005A88(s32);
void sub_08005AC0(s32);
void sub_08006BE8(s32, s32);
s16 sub_08007968(u32*, u32, u32);
s32 sub_08008380(void*, s32*);

void sub_080058A4();
void sub_08007A08(s16);

void sub_08005A2C();
void* sub_08007CE8(s32);
void sub_08007CF8(void*);
void sub_08007EFC(s32, void*, s32);
void sub_080081A0(s32);
void sub_08008174();
void sub_0800B7F8();

s32 sub_08008BBC();

void sub_080004D4(struct sceneData*, s32, s32);
void sub_08005934();
void sub_08005A2C();
void sub_0805B260();
void sub_0805B31C();
void sub_0805B35C();
void sub_0805B390();
void sub_0805B3C4();
void sub_0805B3F8();
void sub_0805B42C();
void sub_0805B460();
void sub_0805B6F8(s32);
void sub_0805B790();
void sub_0805B7B0();
void sub_0805BAB8();
void sub_0805BAC4();
void sub_0805BAD0();
void sub_0805BADC();
void sub_0805BC30();

void sub_08009A34(s32, s32); 
void sub_08009A00(u32);

void sub_08007BA0(s16, void*);
s32 sub_080099E0(s32, s32);
void sub_08009A70(void*, s16, s16);
void sub_08009A78(s32, u32);
void sub_08009AB4(s32, u8);
void sub_08009ACC(s32, u32*, u32*, s32); // 2nd and 3rd param are sprite construction oam and animation data, TODO: give structure pointers later instead of u32s
void sub_08009B40(s32, s32);
void sub_0805B20C();

extern void (*gUnknown_0808F1EC[3])(); // function pointers to `sub_0805AD50, `sub_0805ADAC`, and `sub_0805B18C`


void sub_08007B84(s16, void *);
extern void (*gUnknown_0808F270[4])(); // function pointers to `sub_0805B514`, `sub_0805B518`, `sub_0805B55C`, and `sub_0805B60C`
extern void (*gUnknown_0808F280[3])(); // function pointers to `sub_0805B7DC`, `sub_0805B7E0` and `sub_0805B878`
extern s16 gIntroCharCutoutStartPos_0808F2CC[4][2];
extern s16 gIntroCharCutoutEndPos_0808F2DC[4][2];


struct some_returned_struct {
    u8 unk0;
    u8 unk1;
    u16 unk2;
    u32 unk4;
    u32 unk8;
    u32 unkC;
    u32 unk10;
    u32 unk14;
    u32 unk18;
    u32 unk1C;
};

struct some_returned_struct2 {
    u32 unk0;
    u32 unk4;
    u32 unk8;
    u32 unkC;
    u32 unk10;
    u32 unk14;
    u32 unk18;
    u32 unk1C;
};

void * sub_08007BBC(s16);
void* sub_08007BD4();
void sub_08007A64();

void* sub_08007BBC(s16);
void sub_08009BBC(s32, s32, s32);

extern u32 gUnknown_0808F28C[4];
extern u32 gUnknown_0808F29C[4];
extern u32* gUnknown_0808F2AC[4];
extern u32* gUnknown_0808F2BC[4];


void sub_0805B920(void);

void sub_0805B9C4(u8);

struct Sub0805BAE8_Child {
    u8 unk0;
    u8 unk1;
    u16 unk2;
    u16 unk4;
    s16 unk6;
    s16 unk8;
};

struct Sub0805BAE8_Parent {
    u8 unk0;
    u8 unk1;
    s16 unk2;
    struct Sub0805BAE8_Child* unk4;
    s16 unk8;
    s16 unkA;
};

struct struct_0814F2A0 {

    u32 * temp[2]; // star sparkle data struct pointer (note: placeholder)
};
struct struct_0814F28C {

    u32 * temp[5]; // star sparkle OAM pointers, with 2 extra bytes at the start for number of sprites in the object (note: placeholder)
};

extern s32 sub_0800B828(s32);
extern struct struct_0814F28C *gUnknown_0814F28C; // star sparkle oam pointers
extern struct struct_0814F2A0 *gUnknown_0814F2A0; // star sparkle data pointer

extern u16 gUnknown_0808F2EC[];

struct struct_0805BBD4 {
    u8 unk0;
    u8 unk1;
    u16 unk2;
    u16 unk4;
    u16 unk6;
    u32 unk8;
    u32 unkC;
    u32 unk10;
    u32 unk14;
    u32 unk18;
    u32 unk1C;
};

#define ARRAY_COUNT(array) (sizeof(array) / sizeof((array)[0]))

#endif  // GUARD_GLOBAL_H