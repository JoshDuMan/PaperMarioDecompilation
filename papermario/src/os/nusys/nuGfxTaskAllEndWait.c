#include "common.h"

void nuGfxTaskAllEndWait(void) {
    while (nuGfxTaskSpool) {
    }
}
