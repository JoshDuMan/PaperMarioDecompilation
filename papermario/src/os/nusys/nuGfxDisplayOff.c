#include "common.h"

void nuGfxDisplayOff(void) {
    D_8009A5F8 = 0;
    osViBlack(1);
}