#include "common.h"

void nuGfxPreNMIFuncSet(NUGfxPreNMIFunc func) {
    OSIntMask intMask;

    intMask = osSetIntMask(1);
    nuGfxPreNMIFunc = func;
    osSetIntMask(intMask);
}
