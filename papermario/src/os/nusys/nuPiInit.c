#include "common.h"

void nuPiInit(void) {
    osCreatePiManager(0x96, &D_800AC5D0, &D_800AC5E8, 0x32);
    D_8009A638 = osCartRomInit();
}
