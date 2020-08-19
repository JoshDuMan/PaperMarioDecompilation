#include "common.h"

void nuGfxSwapCfbFuncSet(NUGfxSwapCfbFunc func) {
    OSIntMask intMask;

    intMask = osSetIntMask(1);
    nuGfxSwapCfbFunc = func;
    osSetIntMask(intMask);
}
