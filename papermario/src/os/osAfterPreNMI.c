#include "common.h"

#ifdef NON_MATCHING
// Function matches with this, but the "mov" pseudo-instruction is
// expanded incorrectly. Likely an assembler issue.
s32 osAfterPreNMI(void) {
    return osSpSetPc(0);
}
#else
s32 INCLUDE_ASM(os/code_45a30_len_20, osAfterPreNMI, void);
#endif

