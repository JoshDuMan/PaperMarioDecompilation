.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel func_800E0374
/* 079824 800E0374 3C02800F */  lui   $v0, 0x800f
/* 079828 800E0378 8C427B30 */  lw    $v0, 0x7b30($v0)
/* 07982C 800E037C 8C430004 */  lw    $v1, 4($v0)
/* 079830 800E0380 2404FEFF */  addiu $a0, $zero, -0x101
/* 079834 800E0384 3C018011 */  lui   $at, 0x8011
/* 079838 800E0388 AC20C93C */  sw    $zero, -0x36c4($at)
/* 07983C 800E038C 00641824 */  and   $v1, $v1, $a0
/* 079840 800E0390 03E00008 */  jr    $ra
/* 079844 800E0394 AC430004 */   sw    $v1, 4($v0)

