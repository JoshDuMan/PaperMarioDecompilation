#include "common.h"

// void INCLUDE_ASM(os/code_3a850_le_a40, nuGfxInit, void);

void nuGfxInit(void) {
    Gfx gfx[0x100];
    Gfx* ptr;

    nuGfxThreadStart();
    nuGfxSetCfb(&D_80093BA8, 3);
    D_8009A5DC = NU_GFX_ZBUFFER_ADDR;
    nuGfxSwapCfbFuncSet(&D_80060350);
    D_8009A610 = &D_80093BA0;
    nuGfxTaskMgrInit();

    ptr = gfx;
    // TODO: Verify that this macro call works in PM64.
    gSPDisplayList(ptr++, OS_K0_TO_PHYSICAL(&D_80093BB8));
    gDPFullSync(ptr++);
    gSPEndDisplayList(ptr++);

    nuGfxTaskStart(&gfx, (s32)(ptr - gfx) * sizeof(Gfx), NU_GFX_UCODE_F3DEX, NU_SC_NOSWAPBUFFER);
    nuGfxTaskAllEndWait();
}
