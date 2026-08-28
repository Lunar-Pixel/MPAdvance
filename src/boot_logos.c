#include "global.h"
#include "gba/gba.h"
#include "gba/syscall.h"

void BootLogos_080605B4(void) {

	CpuFastFill16(0, (u8*)VRAM, VRAM_SIZE);
    gUnknown_030024E0.unk0 = 0x100;
    gUnknown_030024E0.unk2 = 0x1000;
    gUnknown_030024E0.unkA = 0;
    gUnknown_030024E0.unk12 = 0;
    LoadPalette_08008308(&gNintendoLogoPal_0811DE50, 0x05000000);
    DecompressData_08008374(&gNintendoLogoGFX_0811DFE8, 0x06000000);
    LoadTileMap_080083CC(&gNintendoLogoMap_0811DE98, 0x06008000, 0, 0);
    FadeIn_08008AF4(0x1E, 0x7FFF, 0x1F, 0xF);
    gUnknown_030024E0.unk4F = 1;
    sub_08008D34();
    ProcSleep_08002B98(0x3C);
    FadeOut_080089E8(0x1E, 0x7FFF, 0x1F, 0xF);
    sub_08008D34();
    LoadPalette_08008308(&gHudsonLogoPal_0811E42C, 0x05000000);
    DecompressData_08008374(&gHudsonLogoGFX_0811E60C, 0x06000000);
    LoadTileMap_080083CC(&gHudsonLogoMap_0811E470, 0x06008000, 0, 0);
    FadeIn_08008AF4(0x1E, 0x7FFF, 0x1F, 0xF);
    gUnknown_030024E0.unk4F = 1;
    sub_08008D34();
    ProcSleep_08002B98(0x3C);
    FadeOut_080089E8(0x1E, 0, 0x1F, 0xF);
    sub_08008D34();
    sub_080072F4(0x13);
    ChangeGameState_08008790(0x22);
    sub_08002B0C();
}
