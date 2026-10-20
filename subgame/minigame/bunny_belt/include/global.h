#ifndef GUARD_GLOBAL_H
#define GUARD_GLOBAL_H

#include "gba/gba.h"


void sub_020001EC();
void paletteFlashWhite_02000214();
void sub_0200022C();
s16 sub_020002C4();
void sub_02000384(s8);
void sub_020004BC(s32, s32, s32, s32);
void sub_0200052C(s32, s32, s32, s32);
void sub_0200054C(s32, s32, s32, s32);
void sub_0200392C(void);
void sub_02003FB8(s32, s16, s16);
s16 sub_02004380(s32);
void sub_02004390(s32, u16);
void sub_020043DC(s32, s32, s32);
void sub_02004740(s32);
void sub_02004AE8(s32);
struct struct_02004D44* sub_02004D44(s32, s32, s32, s32, s32);
void sub_02005790(void*, s16);
void sub_020057A0(void*, u8);
void sub_020057B0(void*, s32);
void sub_020058E0(void*, s32);
void sub_02005A88();
void sub_02005CCC(void);
void sub_02006C14(u32, u32, u32, u8, u8);
void sub_02006D58(s32, s32, s32, s32, s32);
void LoadTileMapFromPack_02006E68(s32, s32, s32, u16, u8, s32, s32, s32, s32);
s16 sub_02007E94(u16);
s16 sub_02007EA8(u16);
void sub_02007EDC(s32);
u32 sub_0200800C();
void sub_02008764();
void sub_020087C4(s32);

struct struct_02004D44{
  u32 unk0;  
  u32 unk4;  
  u32 unk8;  
};

struct struct_020285D0_sub28 {
    u32 unk0;
    struct struct_02004D44 *unk4;
    s32 unk8;
    s32 unkC;
    u32 unk10;
    u32 unk14;
    s16 unk18;
    s16 unk1A;
    s32 unk1C;
    s32 unk20;
};

struct struct_020285D0 {
    u32 unk0;
    u32 gameDataPtr;
    u32 unk8;
    s16 unkC;
    s16 unkE;
    s16 unk10;
    s16 unk12;
    s16 unk14;
    s16 unk16;
    u32 unk18;
    u32 unk1C;
    u16 unk20;
    u16 unk22;
    s16 unk24;
    s16 unk26;
    struct struct_020285D0_sub28 unk28[3];
};

struct struct_020285D0 gUnknown_020285D0;
s16 gPaletteCopy_02028060[0x200];

#define ARRAY_COUNT(array) (sizeof(array) / sizeof((array)[0]))

#endif  // GUARD_GLOBAL_H