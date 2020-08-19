#include "common.h"

void nuGfxRetraceWait(u32 retrace_num) {
    NUScClient client;
    OSMesg mesg;
    OSMesgQueue queue;
    s32 i;

    osCreateMesgQueue(&queue, &mesg, 1);
    nuScAddClient(&client, &queue, 1);
    for(i = retrace_num; i != 0; i--) {
        osRecvMesg(&queue, 0, 1);
    }

    nuScRemoveClient(&client);
}
