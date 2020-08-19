#include "common.h"

void nuGfxSwapCfb(NUScTask* task) {
    osViSwapBuffer(task->framebuffer);
}
