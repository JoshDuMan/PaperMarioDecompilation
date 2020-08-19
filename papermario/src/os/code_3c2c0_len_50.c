#include "common.h"

#ifdef NON_MATCHING
// Doesn't match due to move issues, likely assembler issues.
s32 osEPiLinkHandle(OSPiHandle *handle) {
    u32 temp_a0;

    temp_a0 = __osDisableInt();

    handle->next = D_80093D6C;
    D_80093D6C = handle;

    __osRestoreInt(temp_a0);

    return 0;
}
#else
s32 INCLUDE_ASM(os/code_3c2c0_len_50, osEPiLinkHandle, OSPiHandle *handle);
#endif