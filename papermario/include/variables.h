#ifndef _VARIABLES_H_
#define _VARIABLES_H_

#include "nu/nusys.h"
#include "ultra64.h"
#include "common_structs.h"

extern ui_status gUIStatus;
extern player_data gPlayerData;
extern game_status* gGameStatusPtr[1];
extern item_table_entry gItemTable[364];
extern s16* D_80151328;
extern s16 D_8010CD10;
extern s16 D_8010CD12;

extern u32 D_800773F0;
extern u32 D_8009A5F0;
extern u32 D_8009A5F8;
extern u32 D_8009A64C;
extern OSPiHandle* D_80093D6C;

extern OSMesgQueue D_800AC5D0;
extern OSMesg D_800AC5E8;
extern OSPiHandle* D_8009A638;
extern s32 D_8009A5DC;
extern u16* D_80093BA8;
extern NUGfxSwapCfbFunc D_80060350;
extern s32 D_8009A610;
extern s32 D_80093BA0;
extern s32* D_80093BB8;

#endif
