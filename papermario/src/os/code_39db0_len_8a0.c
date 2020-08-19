#include "common.h"

void INCLUDE_ASM(os/code_39db0_len_8a0, nuScCreateScheduler, u8 videoMode, u8 numFields);

INCLUDE_ASM(os/code_39db0_len_8a0, nuScExecuteAudio);

INCLUDE_ASM(os/code_39db0_len_8a0, nuScExecuteGraphics);

void INCLUDE_ASM(os/code_39db0_len_8a0, nuScAddClient, NUScClient *c, OSMesgQueue *mq, NUScMsg msgType);

void INCLUDE_ASM(os/code_39db0_len_8a0, nuScRemoveClient, NUScClient *client);

INCLUDE_ASM(os/code_39db0_len_8a0, nuScResetClientMesgType);

OSMesgQueue* INCLUDE_ASM(os/code_39db0_len_8a0, nuScGetGfxMQ, void);

OSMesgQueue* INCLUDE_ASM(os/code_39db0_len_8a0, nuScGetAudioMQ, void);

INCLUDE_ASM(os/code_39db0_len_8a0, nuScSetFrameBufferNum);

INCLUDE_ASM(os/code_39db0_len_8a0, nuScGetFrameRate);

INCLUDE_ASM(os/code_39db0_len_8a0, nuScEventHandler);

INCLUDE_ASM(os/code_39db0_len_8a0, nuScEventBroadcast);

INCLUDE_ASM(os/code_39db0_len_8a0, nuScWaitTaskReady);

