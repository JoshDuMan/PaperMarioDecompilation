.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel func_80048140
/* 023540 80048140 00041040 */  sll   $v0, $a0, 1
/* 023544 80048144 00441021 */  addu  $v0, $v0, $a0
/* 023548 80048148 00021080 */  sll   $v0, $v0, 2
/* 02354C 8004814C 00441023 */  subu  $v0, $v0, $a0
/* 023550 80048150 3C03800A */  lui   $v1, 0x800a
/* 023554 80048154 8C630F44 */  lw    $v1, 0xf44($v1)
/* 023558 80048158 00021100 */  sll   $v0, $v0, 4
/* 02355C 8004815C 00621821 */  addu  $v1, $v1, $v0
/* 023560 80048160 8C620000 */  lw    $v0, ($v1)
/* 023564 80048164 34420400 */  ori   $v0, $v0, 0x400
/* 023568 80048168 03E00008 */  jr    $ra
/* 02356C 8004816C AC620000 */   sw    $v0, ($v1)

