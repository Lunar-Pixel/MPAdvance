#include "global.h"
#include "m4a.h"
#include "gba/gba.h"
#include "gba/syscall.h"

void sub_0805AA84(void) {
    s32 sp4[2];
    void*temp_r4;

    LoadPalette_08008308(&gUnknown_0810E26C, 0x05000200);
    gUnknown_03001630->unk8 = sub_08008380(&gUnknown_0810E2C4, &sp4[0]);
    gUnknown_03001630->unkC = sp4[0];
    LoadPalette_08008308(&gUnknown_081106D0, 0x05000220);
    gUnknown_03001630->unk10 = sub_08008380(&gUnknown_08110728, &sp4[0]);
    gUnknown_03001630->unk14 = sp4[0];
    LoadPalette_08008308(&gUnknown_08112B34, 0x05000240);
    gUnknown_03001630->unk18 = sub_08008380(&gUnknown_08112B8C, &sp4[0]);
    gUnknown_03001630->unk1C = sp4[0];
    LoadPalette_08008308(&gUnknown_08114F98, 0x05000260);
    gUnknown_03001630->unk20 = sub_08008380(&gUnknown_08114FF0, &sp4[0]);
    gUnknown_03001630->unk24 = sp4[0];
    temp_r4 = (s32*)0x06014000;
    LoadPalette_08008308(&gUnknown_0814F318, 0x05000280);
    gUnknown_03001630->unk38 = 0x06014000;
    temp_r4 += (u32)DecompressData_08008374(&gUnknown_0814F4A4, 0x06014000);
    LoadPalette_08008308(&gUnknown_0814F234, 0x050002A0);
    gUnknown_03001630->unk3C = temp_r4;
    DecompressData_08008374(&gUnknown_0814F2A8, (u32)gUnknown_03001630->unk3C);
    LoadPalette_08008308(&gUnknown_08107C48, 0x05000000);
    DecompressData_08008374(&gUnknown_08108E90, 0x06000000);
    LoadTileMap_080083CC(&gUnknown_08107D8C, 0x0600F800, 0, 0);
    gUnknown_030024E0.BG3CNT = 0x1F03;
    LoadTileMap_080083CC(&gUnknown_081088E4, 0x0600F000, 0, 0);
    gUnknown_030024E0.BG2CNT = 0x1E02;
    LoadTileMap_080083CC(&gUnknown_08108338, 0x0600E000, 0, 0);
    gUnknown_030024E0.BG1CNT = 0x5C01;
    gUnknown_03001630->unk2A = sub_08007968((void*)sub_0805B6B4, 0x42, 0);
    gUnknown_03001630->unk28 = sub_08007968((void*)sub_0805B4A8, 0x42, 0);
    gUnknown_03001630->unk2C = sub_08007968((void*)sub_0805B7D0, 0x42, 0);
    sub_08006BE8(0x3C0, 0x400);
    sub_08003F9C();
    sub_08004028(2, 0x1B, 0xA, 0, 0x100);
    sub_080057C0();
    sub_08005A88(1);
    sub_08005AC0(1);
}

void sub_0805AC4C(void) {
	
	sub_080058A4();
	sub_08007A08(gUnknown_03001630->unk2A);
	sub_08007A08(gUnknown_03001630->unk28);
	sub_08007A08(gUnknown_03001630->unk2C);
	sub_08007CF8((u32*)gUnknown_03001630->unk8);
	sub_08007CF8((u32*)gUnknown_03001630->unk10);
	sub_08007CF8((u32*)gUnknown_03001630->unk18);
	sub_08007CF8((u32*)gUnknown_03001630->unk20);
}

void sub_0805AC9C(void) {
    sub_080081A0(0);
    sub_08008174();
    gUnknown_03001630 = sub_08007CE8(0x44);
    sub_08007EFC(0, gUnknown_03001630, 0x44);
    sub_0805AA84();
    ProcSleep_08002B98(1);
    sub_0800B7F8();

    while (1) {
        if (gUnknown_030024B0.unk0 & 9) {
            sub_08005A2C();
            break;
        }
        if (gUnknown_03001630->unk6 != 0) {
            gUnknown_03001630->unk6--;
        } else {
            gUnknown_0808F1EC[gUnknown_03001630->unk1]();
        }
        if (gUnknown_03001630->unk0 != 0) {
            break;
        }
        ProcSleep_08002B98(1);
    }

    sub_0805AC4C();
    ProcSleep_08002B98(1);
    sub_08007CF8(gUnknown_03001630);
    m4aMPlayAllStop();
    sub_08002B0C();
}

void sub_0805AD38(u8 param_1) {
	
	gUnknown_03001630->unk1 = param_1;
	gUnknown_03001630->unk2 = 0;
	gUnknown_03001630->unk4 = 0;
	gUnknown_03001630->unk6 = 0;
}

void sub_0805AD50(void) {

    sub_08008174();
    gUnknown_030024E0.DISPCNT = gUnknown_030024E0.DISPCNT | 0x800;
    gUnknown_030024E0.DISPCNT = gUnknown_030024E0.DISPCNT | 0x100;
    m4aSongNumStart(BGM_OPENING);
    gUnknown_030024E0.BLDY_2 = 1;
    FadeIn_08008AF4(0x20, 0, 0x1F, 0xF);
    ProcSleep_08002B98(1);

    while (sub_08008BBC() == 0) {
        ProcSleep_08002B98(1);
    }
    sub_0805AD38(1);
}

void sub_0805ADAC(void) {
    u8 temp_r0;
    u8 temp_r1;

    temp_r0 = gUnknown_03001630->unk2;
    switch ((u32) temp_r0) {                        /* irregular */
    case 0:
        sub_0805B31C();
        sub_0805B6F8(0x78);
        gUnknown_03001630->unk2 = 1U;
        return;
    case 1:
        if ((gUnknown_03001630->unk30_0 << 0x1F) != 0) {
            return;
        }
        sub_0805BC30();
        sub_08005934();
        sub_080004D4(&gUnknown_0808F1B4.sceneData, 0, 0);
        gUnknown_03001630->unk2 = 2U;
        return;
    case 2:
        if ((gUnknown_03001630->unk30_1 << 0x1f) < 0) {
            return;
        }
        sub_0805B35C();
        sub_0805B6F8(0x2A);
        sub_08005A2C();
        gUnknown_03001630->unk2 = 3U;
        return;
    case 3:
        if ((s32) (gUnknown_03001630->unk30_1 <<0x1f) < 0) {
            return;
        }
        sub_0805B790();
        gUnknown_03001630->unk2 = 4U;
        return;
    case 4:
        temp_r1 = (s32)gUnknown_03001630->unk30_2;
        if ((s32) (temp_r1 << 0x1F) < 0) {
            return;
        }
        temp_r1 = (s32)gUnknown_03001630->unk30_0;
        if ((temp_r1 << 0x1F) != 0) {
            return;
        }
        sub_08005934();
        sub_080004D4(&gUnknown_0808F1BC.sceneData, 0, 0);
        sub_0805B6F8(0xA2);
        gUnknown_03001630->unk2 = 5U;
        return;
    case 5:
        if ((s32) (gUnknown_03001630->unk30_1 << 0x1F) < 0) {
            return;
        }
        sub_0805BAB8();
        sub_0805B6F8(0x78);
        gUnknown_03001630->unk2 = 6U;
        return;
    case 6:
        if ((s32) (gUnknown_03001630->unk30_1 << 0x1F) < 0) {
            return;
        }
        sub_0805B390();
        sub_0805B6F8(0x12);
        sub_08005A2C();
        gUnknown_03001630->unk2 = 7U;
        return;
    case 7:
        if ((s32) (gUnknown_03001630->unk30_1 << 0x1F) < 0) {
            return;
        }
        sub_08005934();
        sub_080004D4(&gUnknown_0808F1C4.sceneData, 0, 0);
        sub_0805B6F8(0xA2);
        gUnknown_03001630->unk2 = 8U;
        return;
    case 8:
        if ((s32) (gUnknown_03001630->unk30_1 << 0x1F) < 0) {
            return;
        }
        sub_0805BAC4();
        sub_0805B6F8(0x78);
        gUnknown_03001630->unk2 = 9U;
        return;
    case 9:
        if ((s32) (gUnknown_03001630->unk30_1 << 0x1F) < 0) {
            return;
        }
        sub_0805B3C4();
        sub_0805B6F8(0x12);
        sub_08005A2C();
        gUnknown_03001630->unk2 = 0xAU;
        return;
    case 10:
        if ((s32) (gUnknown_03001630->unk30_1 << 0x1F) < 0) {
            return;
        }
        sub_08005934();
        sub_080004D4(&gUnknown_0808F1CC.sceneData, 0, 0);
        sub_0805B6F8(0xA2);
        gUnknown_03001630->unk2 = 0xBU;
        return;
    case 11:
        if ((s32) (gUnknown_03001630->unk30_1 << 0x1F) < 0) {
            return;
        }
        sub_0805BAD0();
        sub_0805B6F8(0x78);
        gUnknown_03001630->unk2 = 0xCU;
        return;
    case 12:
        if ((s32) (gUnknown_03001630->unk30_1 << 0x1F) < 0) {
            return;
        }
        sub_0805B3F8();
        sub_0805B6F8(0x12);
        sub_08005A2C();
        gUnknown_03001630->unk2 = 0xDU;
        return;
    case 13:
        if ((s32) (gUnknown_03001630->unk30_1 << 0x1F) < 0) {
            return;
        }
        sub_08005934();
        sub_080004D4(&gUnknown_0808F1D4.sceneData, 0, 0);
        sub_0805B6F8(0xA2);
        gUnknown_03001630->unk2 = 0xEU;
        return;
    case 14:
        if ((s32) (gUnknown_03001630->unk30_1 << 0x1F) < 0) {
            return;
        }
        sub_0805BADC();
        sub_0805B6F8(0x78);
        gUnknown_03001630->unk2 = 0xFU;
        return;
    case 15:
        if ((s32) (gUnknown_03001630->unk30_1 << 0x1F) < 0) {
            return;
        }
        sub_0805B42C();
        sub_0805B6F8(0x12);
        sub_08005A2C();
        gUnknown_03001630->unk2 = 0x10U;
        return;
    case 16:
        temp_r1 = (s32)gUnknown_03001630->unk30_1;
        if ((s32) (gUnknown_03001630->unk30_1 << 0x1F) >= 0) {
            sub_08005934();
            sub_080004D4(&gUnknown_0808F1DC.sceneData, 0, 0);
            sub_0805B6F8(0xF0);
            gUnknown_03001630->unk2 = 0x11U;
            return;
        }
        return;
    case 17:
        if ((s32) (gUnknown_03001630->unk30_1 << 0x1F) >= 0) {
            sub_0805B6F8(0x2A);
            gUnknown_03001630->unk2 = 0x12U;
            return;
        }
        break;
    case 18:
        if ((s32) (gUnknown_03001630->unk30_1 << 0x1F) >= 0) {
            sub_0805B460();
            sub_0805B6F8(0x12);
            sub_08005A2C();
            gUnknown_03001630->unk2 = 0x13U;
            return;
        }
        break;
    case 19:
        if ((s32) (gUnknown_03001630->unk30_1 << 0x1F) >= 0) {
            sub_08005934();
            sub_080004D4(&gUnknown_0808F1E4.sceneData, 0, 0);
            sub_0805B6F8(0xB4);
            gUnknown_03001630->unk2 = 0x14U;
            return;
        }
        break;
    case 20:
        if ((s32) (gUnknown_03001630->unk30_1 << 0x1F) >= 0) {
            sub_08005A2C();
            sub_0805B7B0();
            sub_0805B6F8(0xB4);
            gUnknown_03001630->unk2 = 0x15U;
            return;
        }
        break;
    case 21:
        if ((s32) (gUnknown_03001630->unk30_2 << 0x1F) >= 0) {
            sub_08007A08(gUnknown_03001630->unk2E);
            sub_0805B260();
            gUnknown_03001630->unk2 = 0x16U;
            return;
        }
        break;
    case 22:
        if ((gUnknown_03001630->unk30_0 << 0x1F) == 0) {
            gUnknown_03001630->unk2 = 0x17U;
            return;
        }
        break;
    case 23:
        if ((s32) (gUnknown_03001630->unk30_1 << 0x1F) >= 0) {
            sub_0805AD38(2);
        }
        break;
    }
}

void sub_0805B18C(void) {
    m4aMPlayFadeOut(&gMplayInfo, 2);
    FadeOut_080089E8(0x20, 0, 0x1F, 0xF);
    ProcSleep_08002B98(1);

    while (sub_08008BBC() == 0) {
        ProcSleep_08002B98(1);
    }
    gUnknown_03001630->unk0 = 1;
}

void sub_0805B1D0(u8 arg0) {
    struct some_returned_struct *temp_r0;

    temp_r0 = sub_08007BBC(gUnknown_03001630->unk28);
    temp_r0->unk0 = 0;
    temp_r0->unk2 = 0;
    sub_08007B84(gUnknown_03001630->unk28, *gUnknown_0808F270[arg0]);
}

void sub_0805B20C(void) {

    gUnknown_03001630->unk30_0 = -2 & (s8)gUnknown_03001630->unk30_0;
    sub_0805B1D0(0);
}

void sub_0805B22C(s32 arg0, s32 arg1) {
    struct some_returned_struct* temp_r0;

    temp_r0 = sub_08007BBC(gUnknown_03001630->unk28);
    temp_r0->unk4 = arg0;
    temp_r0->unk8 = arg1;
    gUnknown_03001630->unk30_0 = (s8)gUnknown_03001630->unk30_0 & -2 ;
    sub_0805B1D0(1);
}

void sub_0805B260(void) {

    u8 temp_r0;
    temp_r0 = gUnknown_03001630->unk30_0;
    gUnknown_03001630->unk30_0 = (u8)(gUnknown_03001630->unk30_0 | -1);
    sub_0805B1D0(2);
}

void sub_0805B280(s32 arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4, s32 arg5) {
    u8 temp_r4;
    struct some_returned_struct* temp_r0;
    u8 temp_r0_1;

    temp_r4 = (u8) arg5;
    temp_r0 = sub_08007BBC(gUnknown_03001630->unk28);
    temp_r0->unk4 = (s32) (arg0 << 8);
    temp_r0->unk8 = (s32) (arg1 << 8);
    temp_r0->unk18 = (s32) (arg2 << 8);
    temp_r0->unk1C = (s32) (arg3 << 8);
    temp_r0->unk14 = arg4;
    temp_r0->unk1 = temp_r4;
    temp_r0->unkC = (s32) ((s32) ((arg2 - arg0) << 8) / (s32) temp_r4);
    temp_r0->unk10 = (s32) (((s32) ((arg3 - arg1) << 8) / (s32) temp_r4) - ((s32) (arg4 * temp_r0->unk1) / 120));
    temp_r0_1 = gUnknown_03001630->unk30_0;
    gUnknown_03001630->unk30_0 = (u8)(gUnknown_03001630->unk30_0 | -1);
    sub_0805B1D0(3);
}

void sub_0805B31C(void) {

    u8 temp_r0;
    sub_08009A34((u32)gUnknown_03001630->unk34, 1);
    temp_r0 = gUnknown_03001630->unk30_0;
    gUnknown_03001630->unk30_0 = (u8)(gUnknown_03001630->unk30_0 | -1);
    sub_0805B280(0x78, 0, 0x78, 0x5C, 0x9CC, 0x12);
}

void sub_0805B35C(void) {

    u8 temp_r0;
    temp_r0 = gUnknown_03001630->unk30_0;
    gUnknown_03001630->unk30_0 = (u8)(gUnknown_03001630->unk30_0 | -1);
    sub_0805B280(0x78, 0x5C, 0x18, 0x30, 0x9CC, 0x12);
}

void sub_0805B390(void) {

    u8 temp_r0;
    temp_r0 = gUnknown_03001630->unk30_0;
    gUnknown_03001630->unk30_0 = (u8)(gUnknown_03001630->unk30_0 | -1);
    sub_0805B280(0x18, 0x30, 0xAA, 0x46, 0x9CC, 0x12);
}

void sub_0805B3C4(void) {

    u8 temp_r0;
    temp_r0 = gUnknown_03001630->unk30_0;
    gUnknown_03001630->unk30_0 = (u8)(gUnknown_03001630->unk30_0 | -1);
    sub_0805B280(0xAA, 0x46, 0x46, 0x46, -0x9CC, 0x12);
}

void sub_0805B3F8(void) {

    u8 temp_r0;
    temp_r0 = gUnknown_03001630->unk30_0;
    gUnknown_03001630->unk30_0 = (u8)(gUnknown_03001630->unk30_0 | -1);
    sub_0805B280(0x46, 0x46, 0xAA, 0x46, -0x9CC, 0x12);
}

void sub_0805B42C(void) {

    u8 temp_r0;
    temp_r0 = gUnknown_03001630->unk30_0;
    gUnknown_03001630->unk30_0 = (u8)(gUnknown_03001630->unk30_0 | -1);
    sub_0805B280(0xAA, 0x46, 0x46, 0x46, 0x9CC, 0x12);
}

void sub_0805B460(void) {

    u8 temp_r0;
    temp_r0 = gUnknown_03001630->unk30_0;
    gUnknown_03001630->unk30_0 = (u8)(gUnknown_03001630->unk30_0 | -1);
    sub_0805B280(0x46, 0x46, 0x78, 0x50, 0x9CC, 0x12);
}

void sub_0805B494(void) {
	
	sub_08009A00((u32)gUnknown_03001630->unk34);
}

void sub_0805B4A8(void) {
    s32 temp_r0;

    temp_r0 = sub_080099E0(1, 0x40);
    sub_08009A34(temp_r0, 0);
    sub_08009A70((void*)temp_r0, 0, 0);
    sub_08009A78(temp_r0, gUnknown_03001630->unk38);
    sub_08009AB4(temp_r0, 4);
    sub_08009ACC(temp_r0, (u32*)gUnknown_0814F490, (u32*)gUnknown_0814F468, 0);
    sub_08009B40(temp_r0, 0xFF);
    (u32)gUnknown_03001630->unk34 = (u32)temp_r0;
    sub_08007BA0(gUnknown_03001630->unk28, &sub_0805B494);
    sub_0805B20C();
}

void sub_0805B514(void) {
	
	return;
}

void sub_0805B518(void) {
    struct some_returned_struct* temp_r0;
    struct struct_03001630_sub34* temp_r0_2;

    temp_r0 = sub_08007BD4();
    temp_r0_2 = gUnknown_03001630->unk34;
    sub_08009A70(temp_r0_2, temp_r0_2->unk6, (s16)(temp_r0->unk8 + gUnknown_0808F1F8[temp_r0->unk2]));
    temp_r0->unk2 = (u16)((s32)(temp_r0->unk2 + 1) % 60);
}

void sub_0805B55C(void) {
    struct some_returned_struct* temp_r0;
    struct struct_030024E0* unknown_030024E0;
    u32 temp_r0_2;
    u32 temp_r1;

    temp_r0 = sub_08007BD4();
    switch (temp_r0->unk0) {
    case 0:
        gUnknown_03001630->unk40 = 1;
        gUnknown_030024E0.BLDCNT = 0x450;
        gUnknown_030024E0.BLDALPHA = 0x10;
        temp_r0->unk0 = 1;
        break;
    case 1:
        temp_r0_2 = -(++temp_r0->unk2 * 0x10) / 0x40;
        unknown_030024E0 = &gUnknown_030024E0;
        temp_r1 = temp_r0_2 + 0x10;
        unknown_030024E0->BLDALPHA = ((-temp_r0_2 % 0x20) << 8) | (temp_r1 % 0x20);
        if (temp_r0->unk2 >= 0x40) {
            temp_r0->unk2 = 0;
            temp_r0->unk0 = 2;
            unknown_030024E0->BLDCNT = 0;
            sub_08009A34((u32)gUnknown_03001630->unk34, 0);
        }
        break;
    case 2:
        sub_0805B20C();
        break;
    }
}

void sub_0805B60C(void) {
    struct some_returned_struct* temp_r0;

    temp_r0 = sub_08007BD4();
    switch (temp_r0->unk0) {
    case 0:
        temp_r0->unk4 += temp_r0->unkC;
        temp_r0->unk8 += (temp_r0->unk10 + ((s32)(temp_r0->unk14 * ((++temp_r0->unk2 * 2) - 1)) / 120));
        if (temp_r0->unk2 >= temp_r0->unk1) {
            temp_r0->unk2 = 0;
            temp_r0->unk0 = 1;
            temp_r0->unk4 = temp_r0->unk18;
            temp_r0->unk8 = temp_r0->unk1C;
        }
        sub_08009A70(gUnknown_03001630->unk34, (s16)(temp_r0->unk4 >> 8), (s16)(temp_r0->unk8 >> 8));
        break;
    case 1:
        if ((temp_r0->unk18 == 0x7800) && (temp_r0->unk1C == 0x5000)) {
            sub_0805B20C();
        } else {
            sub_0805B22C((s16)gUnknown_03001630->unk34->unk6, (s16)gUnknown_03001630->unk34->unk8);
        }
        break;
    }
}

void sub_0805B6B4(void) {
	
	return;
}

void sub_0805B6B8(void) {
    struct some_returned_struct2* temp_r0;
    u32 temp_r0_2;

    temp_r0 = sub_08007BD4();
    temp_r0_2 = (u32)temp_r0->unk0 + 1;
    temp_r0->unk0 = temp_r0_2;
    if (temp_r0_2 >= (u32) temp_r0->unk4) {
        temp_r0->unk0 = 0U;
        (s8)gUnknown_03001630->unk30_1 &= -2;
        sub_08007B84(gUnknown_03001630->unk2A, &sub_0805B6B4);
    }
}

void sub_0805B6F8(s32 arg0) {
    struct some_returned_struct2* temp_r0;
    u8 temp0;
    
    temp_r0 = sub_08007BBC(gUnknown_03001630->unk2A);
    gUnknown_03001630->unk30_1 = 1;
    temp_r0->unk4 = arg0;
    temp_r0->unk0 = 0;
    sub_08007B84(gUnknown_03001630->unk2A, &sub_0805B6B8);
}

void sub_0805B734(u8 arg0) {
    struct some_returned_struct* temp_r0;

    temp_r0 = sub_08007BBC(gUnknown_03001630->unk2C);
    temp_r0->unk0 = 0;
    temp_r0->unk2 = 0;
    sub_08007B84(gUnknown_03001630->unk2C, *gUnknown_0808F280[arg0]);
}

void sub_0805B770(void) {
    gUnknown_03001630->unk30_2 = (u8) (-4 & gUnknown_03001630->unk30_2);
    sub_0805B734(0);
}

void sub_0805B790(void) {
    gUnknown_03001630->unk30_2 |= (-1 | gUnknown_03001630->unk30_2);
    sub_0805B734(1);
}

void sub_0805B7B0(void) {
    gUnknown_03001630->unk30_2 |= (-1 | gUnknown_03001630->unk30_2);
    sub_0805B734(2);
}

void sub_0805B7D0(void) {
	
	sub_0805B770();
}

void sub_0805B7DC(void) {
	
	return;
}

void sub_0805B7E0(void) {
    struct some_returned_struct* temp_r0;
    u32 temp1;
    u32 temp2;

    temp_r0 = sub_08007BD4();
    switch (temp_r0->unk0) {
    case 0:
        gUnknown_030024E0.DISPCNT |= 0x200;
        gUnknown_030024E0.BG0VOFS = 0xFF10;
        gUnknown_030024E0.BG2VOFS = 0xFFB0;
        temp_r0->unk2 = 0;
        temp_r0->unk0 = 1;
        break;
    case 1:
        temp_r0->unk2++;

        temp1 = (temp_r0->unk2 * -0xF0) / 18 + 0xF0;
        temp2 = (temp_r0->unk2 * -0x50) / 18 + 0x50;
        
        if (temp_r0->unk2 > 0x11) {
            temp_r0->unk2 = 0;
            temp_r0->unk0 = 2;
        }
        
        gUnknown_030024E0.BG0VOFS = -temp1;
        gUnknown_030024E0.BG2VOFS = -temp2;
        break;
    case 2:
        sub_0805B770();
        break;
    }
}

void sub_0805B878(void) {
    u32 temp_r0_4;
    u32 temp_r1;
    struct some_returned_struct* temp_r0;
    struct struct_030024E0* unknown_030024E0;

    temp_r0 = sub_08007BD4();
    switch (temp_r0->unk0) {
    case 0:
        gUnknown_030024E0.DISPCNT |= 0x400;
        gUnknown_030024E0.BLDCNT = 0xC42;
        gUnknown_030024E0.BLDALPHA = 0x10;
        temp_r0->unk0 = 1;
        break;
    case 1:
        temp_r0_4 = -(++temp_r0->unk2 * 0x10) / 0x40;
        unknown_030024E0 = &gUnknown_030024E0;
        temp_r1 = temp_r0_4 + 0x10;
        unknown_030024E0->BLDALPHA =  ((-temp_r0_4 % 0x20) << 8) | (temp_r1 % 0x20);
        if (temp_r0->unk2 >= 0x40) {
            temp_r0->unk2 = 0;
            temp_r0->unk0 = 2;
            gUnknown_030024E0.DISPCNT &= ~0x200;
            gUnknown_030024E0.BLDCNT = 0;
            return;
        }
        break;
    case 2:
        sub_0805B770();
        break;
    }
}

void sub_0805B920(void) {
    s32 x_pos;
    s32 y_pos;
    struct some_returned_struct* temp_r0;

    temp_r0 = sub_08007BD4();
    temp_r0->unk2 += 1;
    x_pos = gIntroCharCutoutStartPos_0808F2CC[temp_r0->unk0][0] + (((gIntroCharCutoutEndPos_0808F2DC[temp_r0->unk0][0] - gIntroCharCutoutStartPos_0808F2CC[temp_r0->unk0][0]) * temp_r0->unk2) / 360);
    y_pos = gIntroCharCutoutStartPos_0808F2CC[temp_r0->unk0][1] + (((gIntroCharCutoutEndPos_0808F2DC[temp_r0->unk0][1] - gIntroCharCutoutStartPos_0808F2CC[temp_r0->unk0][1]) * temp_r0->unk2) / 360);
    sub_08009A70((u32*)temp_r0->unk4, x_pos, y_pos);
    if (temp_r0->unk2 >= 360) {
        sub_08009A00(temp_r0->unk4);
        sub_08007A64();
    }
}

void sub_0805B9C4(u8 arg0) {
    s32 temp_r0_2;
    s32 temp_r2;
    s32 temp_r4;
    s32 var_r1;
    u8 temp_r6;
    struct some_returned_struct* temp_r0;

    temp_r6 = arg0;
    temp_r0 = sub_08007BBC(sub_08007968((u32*)sub_0805B920, 0x42, 0));
    temp_r0->unk2 = 0;
    temp_r0->unk0 = temp_r6;
    temp_r0_2 = sub_080099E0(1, 0x80);
    sub_08009A34(temp_r0_2, 1);
    temp_r4 = temp_r6;
    sub_08009A70((u32*)temp_r0_2, gIntroCharCutoutStartPos_0808F2CC[temp_r6][0], gIntroCharCutoutStartPos_0808F2CC[temp_r4][1]);
    sub_08009A78(temp_r0_2, gUnknown_0808F28C[temp_r4]);
    sub_08009AB4(temp_r0_2, gUnknown_0808F29C[temp_r4]);
    switch (temp_r6) {                              /* irregular */
    case 0:
        var_r1 = gUnknown_03001630->unk14;
        break;
    case 1:
        var_r1 = gUnknown_03001630->unk1C;
        break;
    case 2:
        var_r1 = gUnknown_03001630->unkC;
        break;
    case 3:
        var_r1 = gUnknown_03001630->unk24;
        break;
    default:
        var_r1 = 0;
        break;
    }
    sub_08009BBC(temp_r0_2, var_r1, 0);
    temp_r2 = temp_r6;
    sub_08009ACC(temp_r0_2, gUnknown_0808F2AC[temp_r2], gUnknown_0808F2BC[temp_r2], 0);
    sub_08009B40(temp_r0_2, 0xFF);
    temp_r0->unk4 = temp_r0_2;
}

void sub_0805BAB8(void) {
	sub_0805B9C4(0);
}

void sub_0805BAC4(void) {
	sub_0805B9C4(1);
}

void sub_0805BAD0(void) {
	sub_0805B9C4(2);
}

void sub_0805BADC(void) {
	sub_0805B9C4(3);
}

void sub_0805BAE8(void) {
    u8 temp_r6;
    struct Sub0805BAE8_Parent* temp_r0;
    struct Sub0805BAE8_Child* temp_r0_child;
    u32 temp_r0_2;
    s32 r2_val;

    temp_r0 = (struct Sub0805BAE8_Parent*)sub_08007BD4();
    temp_r6 = temp_r0->unk0;
    switch (temp_r6) {
    case 0:
        temp_r0_2 = sub_080099E0(1, (u8)(sub_0800B828(2) + 0x40));
        sub_08009A34(temp_r0_2, 1);
        sub_08009A70((u32*)temp_r0_2, temp_r0->unk8, temp_r0->unkA);
        sub_08009A78(temp_r0_2, (u32)gUnknown_03001630->unk3C);
        sub_08009AB4(temp_r0_2, 5);
        sub_08009ACC(temp_r0_2, (u32*)&gUnknown_0814F2A0, (u32*)&gUnknown_0814F28C, 0);
        sub_08009B40(temp_r0_2, 1);
        temp_r0->unk4 = (struct Sub0805BAE8_Child*)temp_r0_2;
        temp_r0->unk0 = 1;
        temp_r0->unk2 = (s16)temp_r6;
        return;
    case 1:
        r2_val = temp_r0->unk4->unk8 + 1;
        sub_08009A70(temp_r0->unk4, temp_r0->unk4->unk6, r2_val);
        temp_r0_child = temp_r0->unk4;
        if ((temp_r0_child->unk1 >> 7) != 0) {
            sub_08009A00((u32)temp_r0_child);
            sub_08007A64();
        }
        return;
    }
}

void sub_0805BB94(s16 arg0, s16 arg1) {
    struct Sub0805BAE8_Parent* temp_r0;

    gUnknown_03001630->unk40 = 0;
    temp_r0 = sub_08007BBC(sub_08007968((u32*)sub_0805BAE8, 0x43, 0));
    temp_r0->unk0 = 0;
    temp_r0->unk2 = 0;
    temp_r0->unk8 = arg0;
    temp_r0->unkA = arg1;
}

void sub_0805BBD4(void) {
    struct struct_0805BBD4* temp_r0;
    struct struct_03001630_sub34* temp_r2;

    temp_r0 = sub_08007BD4();
    if (temp_r0->unk2 == 0) {
        temp_r2 = gUnknown_03001630->unk34;
        sub_0805BB94((temp_r2->unk6 + gUnknown_0808F2EC[temp_r0->unk4]),temp_r2->unk8 - 4);
        temp_r0->unk4 = (u16) ((temp_r0->unk4 + 1) % 4);
    }
    temp_r0->unk2 = ((temp_r0->unk2 + 1) % 12);
}

void sub_0805BC30(void) {
    struct Sub0805BAE8_Child* temp_r0;

    gUnknown_03001630->unk2E = sub_08007968((u32*)sub_0805BBD4, 0x42, 0);
    temp_r0 = sub_08007BBC(gUnknown_03001630->unk2E);
    temp_r0->unk0 = 0;
    temp_r0->unk2 = 0;
    temp_r0->unk4 = 0;
}