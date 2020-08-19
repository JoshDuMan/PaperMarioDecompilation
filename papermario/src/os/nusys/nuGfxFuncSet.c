#include "common.h"

void nuGfxFuncSet(NUGfxFunc func) {
    OSIntMask intMask;

    nuGfxTaskAllEndWait();
    intMask = osSetIntMask(1);
    nuGfxFunc = func;
    osSetIntMask(intMask);
}
