#include "global.h"
#include "gba/gba.h"

void sub_020001C0(void) {
	sub_0200392C();
};

void sub_020001CC(void) {
    struct struct_020285D0 *temp_r0;
    struct struct_020285D0_sub28 *temp_r1;

    temp_r0 = &gUnknown_020285D0;
    temp_r1 = &temp_r0->unk28[1];
    if (temp_r1->unk0 != 0) {
        if (temp_r1->unk4 != 0) {
            sub_02005CCC();
        }
    }
}

void sub_020001EC(void) {
    s16* PalettePointer;
    s32 PaletteID;

    PaletteID = 0;
    PalettePointer = &gPaletteCopy_02028060[PaletteID];
    do {
        *PalettePointer = sub_02004380(PaletteID);
        PalettePointer ++;
        PaletteID ++;
    } while (PaletteID <= 0x1FF);
}

void paletteFlashWhite_02000214(void) {
    sub_020043DC(0, 0x200, 0x7FFF);
}

void sub_0200022C(void) {
    s32 PaletteID;
    u16* PalettePointer;

    PaletteID = 0;
    PalettePointer = &gPaletteCopy_02028060[PaletteID];
    do {
        sub_02004390(PaletteID, *PalettePointer);
        PalettePointer++;
        PaletteID++;
    } while (PaletteID <= 0x1FF);
}

void sub_02000254(u16 arg0, s32 arg1) {
    u16 temp_r6;

    temp_r6 = arg0;
    sub_02008764();
    if (temp_r6 != 0) {
        sub_020087C4(0x66);
    } else {
        sub_020087C4(0x64);
    }
    gUnknown_020285D0.unk0 = 1;
    gUnknown_020285D0.unk20 = temp_r6;
    gUnknown_020285D0.unk1C = arg1;
    sub_02006D58(gUnknown_020285D0.unk12 << 5, gUnknown_020285D0.gameDataPtr, arg1 + 0x13, 0, 1);
    sub_02006D58((gUnknown_020285D0.unk16 << 5) + 0x200, gUnknown_020285D0.gameDataPtr, 0x1A, 0, 1);
    sub_0200054C(0, 1, 0, 0);
}

s16 sub_020002C4(void) {
    return gUnknown_020285D0.unk24;
}

s16 sub_020002D0(void) {
    switch (sub_020002C4())
    {
        case 0:
            return 0;
        case 1:
            return 1;
        case 2:
            return 2;
    }
}

void sub_02000300(s32 arg0, s16 arg1, s16 arg2, s16 arg3, s16 arg4, u32 arg5, u32 arg6, u16 arg7, s16 arg8) {

    struct struct_020285D0 *temp_r0;

    temp_r0 = &gUnknown_020285D0;
    if (arg0 != -1) {
        temp_r0->unk8 = arg0;
    }
    if (arg1 != -1) {
        temp_r0->unkC = arg1;
    }
    if (arg2 != -1) {
        temp_r0->unkE = arg2;
    }
    if (arg3 != -1) {
        temp_r0->unk10 = arg3;
    }
    if (arg4 != -1) {
        temp_r0->unk12 = arg4;
    }
    if ((s16)arg7 != -1) {
        temp_r0->unk14 = arg7;
    }
    if (arg8 != -1) {
        temp_r0->unk16 = arg8;
    }
}

void sub_02000384(s8 arg0) {
    struct struct_020285D0 *temp_r0;

    temp_r0 = &gUnknown_020285D0;
    switch (arg0) {
    case 0:
        sub_02006C14(temp_r0->unk8 + (temp_r0->unkC << 5), temp_r0->gameDataPtr, 0xC, 1,1);
        break;

    case 1:
        sub_02006C14(temp_r0->unk8 + (temp_r0->unk10 << 5), temp_r0->gameDataPtr, temp_r0->unk1C + 0x11, 1,1);
        break;
        
    case 2:
        sub_02006C14(temp_r0->unk8 + ((temp_r0->unk10 + 8) << 5), temp_r0->gameDataPtr, temp_r0->unk1C + 0x12, 1,1);
        break;

    case 3:
        sub_02006C14(0x10000 + (temp_r0->unk14 << 5), temp_r0->gameDataPtr, 0x19, 1, 1);
        break;
    }
}

void sub_02000414(s32 arg0) {
    struct struct_020285D0_sub28 *temp_r1;
    struct struct_020285D0 *temp_r2;

    temp_r2 = &gUnknown_020285D0;
    temp_r1 = &temp_r2->unk28[arg0];
    temp_r1->unk0 = 0;
    temp_r1->unk4 = 0;
    temp_r1->unk8 = 0;
    temp_r1->unkC = 0;
    temp_r1->unk10 = 0;
    temp_r1->unk14 = 0;
    temp_r1->unk18 = 0;
    temp_r1->unk1A = 0;
    temp_r1->unk1C = 0;
    temp_r1->unk20 = 0;
}

void sub_0200043C(s32 arg0) {
    struct struct_020285D0_sub28 *temp_r1;
    struct struct_020285D0 *temp_r0;

    temp_r0 = &gUnknown_020285D0;
    temp_r1 = &temp_r0->unk28[arg0];

    if (temp_r1->unk0 != 0) {
        if (temp_r1->unk4 != 0) {
            sub_02005A88();
        }
        sub_02000414(arg0);
    }
}

void sub_0200046C(void) {
    s32 var_r4;

    gUnknown_020285D0.unk0 = 2;
    var_r4 = 0;
    do {
        sub_0200052C(var_r4, 1, 0, 0);
        var_r4 += 1;
    } while (var_r4 <= 0);
}

void sub_02000494(void) {
    s32 var_r4;

    gUnknown_020285D0.unk0 = 3;
    var_r4 = 0;
    do {
        sub_020004BC(var_r4, 1, 0, 0);
        var_r4 += 1;
    } while (var_r4 <= 1);
}

void sub_020004BC(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
    struct struct_020285D0_sub28* temp_r4;
    struct struct_020285D0* temp_r5;
    
    temp_r5 = &gUnknown_020285D0;
    temp_r4 = &temp_r5->unk28[arg0];
    if (arg1 == 1) {
        temp_r4->unk0 = 3;
        if (arg0 == 1) {
            temp_r4->unk4 = sub_02004D44(0, gUnknown_020285D0.gameDataPtr, 0x1B, 0x1C, 0);
            sub_02005790(temp_r4->unk4, gUnknown_020285D0.unk14);
            sub_020057A0(temp_r4->unk4, gUnknown_020285D0.unk16);
            sub_020057B0(temp_r4->unk4, 0);
            temp_r4->unk8 = 0x6000;
            temp_r4->unkC = 0x2000;
            temp_r4->unk4->unk8 = 0x350000;
            sub_020058E0(temp_r4->unk4, -1);
        }
    }
}

void sub_0200052C(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
    struct struct_020285D0_sub28 *temp_r1;
    struct struct_020285D0 *temp_r0;

    temp_r0 = &gUnknown_020285D0;
    temp_r1 = &temp_r0->unk28[arg0];
    if (arg1 == 1) {
        temp_r1->unk0 = 2;
    }
}

void sub_0200054C(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
    struct struct_020285D0* temp_r4;
    struct struct_020285D0_sub28* temp_r5;
    
    temp_r4 = &gUnknown_020285D0;
    temp_r5 = &temp_r4->unk28[arg0];

    if (arg1 == 1) {
        gUnknown_020285D0.unk22 = 0;
        gUnknown_020285D0.unk24 = 1;
        temp_r5->unk0 = 1;
        sub_02000384(0);
        temp_r5->unk8 = 0;
        temp_r5->unkC = 0x5000;
        temp_r5->unk20 = 0x64;
        temp_r5->unk1C = 0x4000;
        sub_02003FB8(0, 0, 0x50);
        temp_r5->unk18 = 0;
    }

    if (arg3 != 1) {
        return;
    }

    switch (temp_r5->unk1A) {

    case 0:
        temp_r5->unk18++;
        switch (temp_r5->unk18) {
        case 3:
            sub_02000384(1);
            break;
        case 5:
            sub_02000384(2);
            break;
        case 7:
            sub_02000384(3);
            break;
        case 10:
            LoadTileMapFromPack_02006E68(0x98, gUnknown_020285D0.gameDataPtr, 0x10, gUnknown_020285D0.unkC, gUnknown_020285D0.unkE * 0x10, -1, 0, 1, 1);
            LoadTileMapFromPack_02006E68(0xDA, gUnknown_020285D0.gameDataPtr, gUnknown_020285D0.unk1C + 0x14, gUnknown_020285D0.unk10, gUnknown_020285D0.unk12 * 0x10, -1, 0, 1, 1);
            temp_r5->unk18 = 0;
            temp_r5->unk1A++;
        }
        break;
    case 1:
        temp_r5->unk8 = (temp_r5->unk20 * sub_02007EA8(temp_r5->unk1C));
        temp_r5->unkC = (temp_r5->unk20 * sub_02007E94(temp_r5->unk1C));

        temp_r5->unk1C -= 0x400;
        if (temp_r5->unk1C < 0) {
            temp_r5->unk1C += 0x10000;
        }

        temp_r5->unk20 -= 1;
        if (temp_r5->unk20 < 0) {
            temp_r5->unk20 = 0;
        }

        if (temp_r5->unk8 > -0x300 && temp_r5->unk8 < 0x300) {
            if (temp_r5->unkC > -0x300) {
                if (temp_r5->unkC < 0x300) {
                    if (temp_r5->unk20 == 0) {
                        temp_r5->unk8 = 0;
                        temp_r5->unkC = 0;
                        sub_020001EC();
                        paletteFlashWhite_02000214();
                        sub_02004AE8(1);
                        sub_02007EDC(2);
                        sub_02004740(1);
                        temp_r5->unk1A++;
                    }
                }
            }
        }
        break;
    case 2:
        if (sub_0200800C() == 0) {
            sub_0200022C();
            sub_02004AE8(0x1E);
            sub_02007EDC(2);
            sub_02004740(0);
            temp_r5->unk1A++;
        }
        break;
    case 3:
        if (sub_0200800C() == 0) {
            temp_r5->unk1A = 0;
            gUnknown_020285D0.unk22 = 1;
        }
        break;
    }
    sub_02003FB8(0, temp_r5->unk8 >> 8, temp_r5->unkC >> 8);
}