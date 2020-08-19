.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel __osGetSR
    mfc0  $v0, $12
    jr    $ra
    nop   
