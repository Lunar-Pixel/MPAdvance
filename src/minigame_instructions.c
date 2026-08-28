#include "global.h"
#include "ewram_global.h"
#include "gba/gba.h"
#include "gba/syscall.h"
#include "m4a.h"


void sub_08001F48(u8 minigameID) {
    gUnknown_02030000.minigameID = sub_08007760(minigameID);
}

void sub_08001F60(void) {
    CpuFill16(0, (void*)VRAM, 0x03e8000);
    gUnknown_030024E0.unk0 = 0x300;
    gUnknown_030024E0.unk2 = 0x800;
    gUnknown_030024E0.unk4 = 0x901;
    gUnknown_030024E0.unk6 = 0;
    gUnknown_030024E0.unk8 = 0;
    gUnknown_030024E0.unk12 = 0;
    gUnknown_030024E0.unkA = 0;
    gUnknown_030024E0.unk14 = 0;
    gUnknown_030024E0.unkC = 0;
    gUnknown_030024E0.unk16 = 0;
    gUnknown_030024E0.unkE = 0;
    gUnknown_030024E0.unk18 = 0;
    gUnknown_030024E0.unk10 = 0;
}

void sub_08001FB0(u16 btn_tile_index, u16 palette, u8 btn_x_pos, u8 btn_y_pos, u8 width, u8 height) {
    int row;
    int col;
    u16 *vram_ptr = (u16*)VRAM + 0x2000 + btn_y_pos * 32 + btn_x_pos;
    
    palette <<= 12;
    
    for (row = 0; row < height; row++) {
        for (col = 0; col < width; col++) {
            *vram_ptr++ = (btn_tile_index++) | (palette);
        }
        
        vram_ptr += (32 - width);
    } 
}

void sub_0800201C(u16 tile_index, u16 palette, u8 x_pos, u8 y_pos, u8 width, u8 height) {
    int row;
    int col;
    u16 *vram_ptr = (u16*)VRAM + 0x2000 + y_pos * 32 + x_pos;
    u16 *next = vram_ptr + 32;
    
    palette <<= 12;

    for (row = 0; row < height; row++) {
        for (col = 0; col < width; col++) {
            *vram_ptr++ = (tile_index) | (palette);
            *next++ = (tile_index+1) | (palette);
            tile_index += 2;
        }
        
        vram_ptr += (64 - width);
        next = vram_ptr + 32;
    }
}

void sub_08002098(u8 minigameID) {
    u16 sp8[8];
    struct minigame_info *sp18;
    s32 sp1C;
    s32 temp_r0_2;
    u16 temp_r4;
    u16 tmp;
    
    memcpy(&sp8, &gMinigameInfoBtnTileIndex_08077248, 0x10);
    sp18 = &gMinigameInfo_08077448[minigameID];
    LoadPalette_08008308(&gMinigameInstructionsBG0Pal_0813A8AC, PLTT);
    LoadPalette_08008308(&gMinigameInstructionsBG1Pal_0813AF7C, PLTT + 0x20);
    CpuCopy16(&gMinigameInstructionsTextPal_0807E848, (void*)PLTT + 0x40, 0x18);
    CpuCopy16(&gMinigameInstructionsTextPal_0807E848, (void*)PLTT + 0x60, 0x18);
    DecompressData_08008374(&gMinigameInstructionsGFX1_0813A984, VRAM);
    DecompressData_08008374(&gMinigameInstructionsGFX2_0813AFA0, VRAM + 0x400);
    LoadTileMap_080083CC(&gMinigameInstructionsMap_0813A8D0, VRAM + 0x4800, 0, 0);
    temp_r0_2 = sub_0800193C(minigameID, sp18->game_text_id);
    tmp = ((6 - (sub_080045FC(temp_r0_2, 0) / 2)) * 2) + 0x60;
    sub_08004D94(VRAM + (tmp << 5), temp_r0_2, 7, 0, 0);
    sub_0800201C(0x60, 2, 9, 0, 0xC, 1);

    for (sp1C = 0; sp1C <= 4; sp1C++) {
        if (sp18->thing[sp1C].input_1_text_id == 0) {
            continue;
        }

        if (!((sp18->thing[sp1C].input_1_btn_id >> 3) & 3)) {
            temp_r4 = sp18->thing[sp1C].input_1_btn_id & 7;
            if (temp_r4 != 0) {
                temp_r4 -= 1;
                sub_08001FB0(sp8[temp_r4], 0, 9, 2 + sp1C * 2, 2, 2);
            }
        } else {
            temp_r4 = sp18->thing[sp1C].input_1_btn_id & 7;
            if (temp_r4 != 0) {
                temp_r4 -= 1;
                sub_08001FB0(sp8[temp_r4], 0, 6, 2 + sp1C * 2, 2, 2);
            }

            temp_r4 = (sp18->thing[sp1C].input_1_btn_id >> 3) & 3;
            if (temp_r4 != 0) { 
                temp_r4 += 1;
                temp_r4 += 1;
                temp_r4 += 2;
                sub_08001FB0(sp8[temp_r4], 0, 8, 2 + sp1C * 2, 1, 2);
            }

            temp_r4 = (sp18->thing[sp1C].input_1_btn_id >> 5) & 7;
            if (temp_r4 != 0) {
                temp_r4 -= 1;
                sub_08001FB0(sp8[temp_r4], 0, 9, 2 + sp1C * 2, 2, 2);
            }
        }

        temp_r4 = 0x78 + sp1C * 0x18;
        sub_08004D94(VRAM + (temp_r4 << 5), sub_0800193C(minigameID, sp18->thing[sp1C].input_1_text_id), 1, 0, 0);
        sub_0800201C(temp_r4, 2, 0xB, 2 + sp1C * 2, 0xC, 1);
    }

    if (sp18->game_desc_id != 0) {
        sub_08004E6C(VRAM + 0x1E00, sub_0800193C(minigameID, sp18->game_desc_id), 1, 0, 0, 0x1A);
        sub_0800201C(0xF0, 2, 2, 0xC, 0x1A, 3);
    }
}

void sub_080022F4(u8 arg0) {

    if (arg0 & 1) {
        sub_08001FB0(0x20, 1, 20, 18, 8, 2);
    }
    if (arg0 & 2) {
        sub_08001FB0(0x30, 1, 2, 18, 8, 2);
    }
    if (arg0 & 4) {
        sub_08001FB0(0x40, 1, 10, 18, 10, 2);
    }
}

void sub_08002358(void) {
    s8 sp0;
    s32 var_r4;
    s32 var_r6;

    sp0 = 0;
    sub_080057D0();
    sub_08001F60();
    sub_08002098(gUnknown_03004400.currentMinigameID);
    if (gUnknown_03004400.unkA == 0x23) {
        gUnknown_03004400.unkA = sub_08007310();
    }
    switch (gUnknown_03004400.unkA) {
    default:
        sub_080022F4(3);
        var_r6 = 2;
        break;
    case 23:
    case 24:
    case 25:
        if (sub_080038E8() != 0) {
            sub_080022F4(4);
            var_r6 = 0;
        } else {
            sub_080022F4(1);
            var_r6 = 0;
        }
        break;
    case 3:
    case 8:
    case 13:
    case 14:
    case 15:
    case 37:
    case 40:
    case 41:
        sub_080022F4(1);
        var_r6 = 0;
        break;
    }

    FadeIn_08008AF4(0x20, 0, 0x1F, 0xF);
    gUnknown_030024E0.unk4F = 1;
    sub_08008D34();

    while (1) {
        ProcSleep_08002B98(1);
        if (gUnknown_02037EB0.unk4 != 0) {
            if (sub_080038E8() == 0) {
                u32 flag;
                if ((s16)var_r6 & gUnknown_030024B0) {
                    sp0 = -1;
                    flag = 1;
                } else if (gUnknown_030024B0 & 1 ) {
                    sp0 = 1;
                    flag = 1;                    
                } else {
                    flag = 0;
                }
                if (flag) {
                    for (var_r4 = 0; var_r4 < 10; var_r4++) {
                        sub_080038F4(0x1111, &sp0, 1);
                        ProcSleep_08002B98(1);
                    }
                }
            } else {
                sub_08003938(0, 0x1111, &sp0, 1);
            }
        } else if ((s16)var_r6 & gUnknown_030024B0) {
            sp0 = -1;
        } else if (gUnknown_030024B0 & 1) {
            sp0 = 1;
        }

        if (sp0 == -1) {
            gUnknown_03004400.unkB = gUnknown_03004400.unkA;
            m4aSongNumStart(0xCE);
            gUnknown_03001400 = 0;
            break;
        } else if (sp0 == 1) {
            m4aSongNumStart(0xCC);
            gUnknown_03001400 = 1;
            break;
        }
    }

    if (gUnknown_02037EB0.unk4 != 0) {
        sub_08003A30(0x6602);
    }
    if (gUnknown_03001400 == 1) {
        sub_080077EC(0, 0x20);
    }
    FadeOut_080089E8(0x20, 0, 0x1F, 0xF);
    sub_08008D34();
    if (gUnknown_02037EB0.unk4 != 0) {
        sub_080034DC();
    }
    if (gUnknown_03001400 == 1) {
        if ((gUnknown_03004400.unkA == 0x14) || (gUnknown_03004400.unkA == 0x16)) {
            sub_08001F48(gUnknown_03004400.currentMinigameID);
        }
        gUnknown_03004400.unkC = 1;
    }
    ChangeGameState_08008790(gUnknown_03004400.unkB);
    sub_08002B0C();
}
