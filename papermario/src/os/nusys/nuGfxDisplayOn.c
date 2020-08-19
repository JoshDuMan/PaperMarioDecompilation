#include "common.h"

void nuGfxDisplayOn(void) {
    D_8009A5F8 = 0x80;

    // Required for the above to not be optimized out. In-lining?
    return;
}
