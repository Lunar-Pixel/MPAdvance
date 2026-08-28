#ifndef GUARD_EWRAM_GLOBAL_H
#define GUARD_EWRAM_GLOBAL_H

struct struct02030000 {
    u8 unk0;
    u8 unk1;
    u8 unk2;
    u8 unk3;
    u32 minigameID;
};

extern struct struct02030000 gUnknown_02030000;

struct struct_02037EB0 {
    u32 unk0;
    u8 unk4;
};

extern struct struct_02037EB0 gUnknown_02037EB0;

#define ARRAY_COUNT(array) (sizeof(array) / sizeof((array)[0]))

#endif  // GUARD_EWRAM_GLOBAL_H