.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel get_model_property
/* 0AC20C 80115B0C 8C870008 */  lw    $a3, 8($a0)
/* 0AC210 80115B10 8C83000C */  lw    $v1, 0xc($a0)
/* 0AC214 80115B14 18E00009 */  blez  $a3, .L80115B3C
/* 0AC218 80115B18 0000302D */   daddu $a2, $zero, $zero
.L80115B1C:
/* 0AC21C 80115B1C 8C620000 */  lw    $v0, ($v1)
/* 0AC220 80115B20 14450003 */  bne   $v0, $a1, .L80115B30
/* 0AC224 80115B24 24C60001 */   addiu $a2, $a2, 1
/* 0AC228 80115B28 03E00008 */  jr    $ra
/* 0AC22C 80115B2C 0060102D */   daddu $v0, $v1, $zero

.L80115B30:
/* 0AC230 80115B30 00C7102A */  slt   $v0, $a2, $a3
/* 0AC234 80115B34 1440FFF9 */  bnez  $v0, .L80115B1C
/* 0AC238 80115B38 2463000C */   addiu $v1, $v1, 0xc
.L80115B3C:
/* 0AC23C 80115B3C 03E00008 */  jr    $ra
/* 0AC240 80115B40 0000102D */   daddu $v0, $zero, $zero

