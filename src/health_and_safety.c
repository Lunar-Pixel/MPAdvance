#include "global.h"
#include "gba/gba.h"
#include "gba/syscall.h"

void HealthSafetyScreen_0806E6F4(void) {
    s32 var_r3;
    s16 var_r4;
    s16* var_r1;
    s32 var_r0;
    s32 var_r2;
    s32 var_r6;
    s32 var_r7;
	u16 temp1;

    gUnknown_03004400.unk5 = 1;
    CpuFastFill16(0, (void*)VRAM, VRAM_SIZE);
    CpuFastFill16(0, (void*)PLTT, PLTT_SIZE);
    gUnknown_030024E0.unk0 = 0x300;
    gUnknown_030024E0.unk2 = 0x1001;
    gUnknown_030024E0.unk4 = 0x1100;
    gUnknown_030024E0.unkC = 0;
    gUnknown_030024E0.unkA = 0;
    gUnknown_030024E0.unk14 = 0;
    gUnknown_030024E0.unk12 = 0;
    LZ77UnCompVram(&gUnknown_0814F72C, (void*)0x06000020);
    CpuCopy16(&gUnknown_0814F70C, (void*)PLTT, 0x20);

    var_r1 = (s16* )0x06008000;
    var_r3 = 1;
    for (var_r2 = 0; var_r2 <= 0x13; var_r2 += 1) {
        for (var_r0 = 0; var_r0 < 0x20; var_r0++) {
            if (var_r0 <= 0x1D) {
                *var_r1 = var_r3;
                var_r3++;
            } else {
                *var_r1 = 0;
            }
            var_r1++;
        }
    }

    var_r1 = (s16* )0x06008C00;
    for (var_r2 = 0; var_r2 <= 3; var_r2 += 1) {
        for (var_r0 = 0; var_r0 < 0x20; var_r0++) {
            if (var_r0 <= 0x1D) {
                *var_r1 = 1;
            } else {
                *var_r1 = 0;
            }
            var_r1++;
        }
    }

    FadeIn_08008AF4(0x1E, 0x7FFF, 0x1F, 0xF);
    gUnknown_030024E0.unk4F = 1;
    sub_08008D34();
    ProcSleep_08002B98(90);
    gUnknown_030024E0.unk4A = 0x142;

    var_r4 = 0x1000;
    var_r7 = 1;
	temp1 = (u16)gUnknown_030024B0;
    if (temp1 == 0) {
        for (var_r6 = 0xE0F; var_r6 != 0; var_r6--) {
            gUnknown_030024E0.unk4C = ((var_r4 >> 8) & 0x1F) | 0x1000;
            if (var_r7 == 0) {
                var_r4 += 0x88;
                if (var_r4 > 0x1000) {
                    var_r4 = 0x1000;
                    var_r7 = 1;
                }
            } else {
                var_r4 -= 0x88;
                if (var_r4 < 0) {
                    var_r4 = 0;
                    var_r7 ^= 1;
                }
            }
            ProcSleep_08002B98(1);
            temp1 = (u16)gUnknown_030024B0;
            if (temp1 != 0) {
                break;
            }
        }
    }

    gUnknown_030024E0.unk4C = 0x1000;
    FadeOut_080089E8(0x1E, 0x7FFF, 0x1F, 0xF);
    sub_08008D34();
    ChangeGameState_08008790(1);
    gUnknown_03004400.unk5 = 0;
    sub_08002B0C();
}
