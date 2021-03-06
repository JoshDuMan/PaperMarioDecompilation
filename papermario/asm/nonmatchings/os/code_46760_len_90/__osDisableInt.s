.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel __osDisableInt
/* 046760 8006B360 3C0A8009 */  lui   $t2, 0x8009
/* 046764 8006B364 254A5900 */  addiu $t2, $t2, 0x5900
/* 046768 8006B368 8D4B0000 */  lw    $t3, ($t2)
/* 04676C 8006B36C 316BFF00 */  andi  $t3, $t3, 0xff00
/* 046770 8006B370 40086000 */  mfc0  $t0, $12
/* 046774 8006B374 2401FFFE */  addiu $at, $zero, -2
/* 046778 8006B378 01014824 */  and   $t1, $t0, $at
/* 04677C 8006B37C 40896000 */  mtc0  $t1, $12
/* 046780 8006B380 31020001 */  andi  $v0, $t0, 1
/* 046784 8006B384 8D480000 */  lw    $t0, ($t2)
/* 046788 8006B388 3108FF00 */  andi  $t0, $t0, 0xff00
/* 04678C 8006B38C 110B000E */  beq   $t0, $t3, .L8006B3C8
/* 046790 8006B390 3C0A8009 */   lui   $t2, 0x8009
/* 046794 8006B394 254A4660 */  addiu $t2, $t2, 0x4660
/* 046798 8006B398 8D490118 */  lw    $t1, 0x118($t2)
/* 04679C 8006B39C 312AFF00 */  andi  $t2, $t1, 0xff00
/* 0467A0 8006B3A0 01485024 */  and   $t2, $t2, $t0
/* 0467A4 8006B3A4 3C01FFFF */  lui   $at, 0xffff
/* 0467A8 8006B3A8 342100FF */  ori   $at, $at, 0xff
/* 0467AC 8006B3AC 01214824 */  and   $t1, $t1, $at
/* 0467B0 8006B3B0 012A4825 */  or    $t1, $t1, $t2
/* 0467B4 8006B3B4 2401FFFE */  addiu $at, $zero, -2
/* 0467B8 8006B3B8 01214824 */  and   $t1, $t1, $at
/* 0467BC 8006B3BC 40896000 */  mtc0  $t1, $12
/* 0467C0 8006B3C0 00000000 */  nop   
/* 0467C4 8006B3C4 00000000 */  nop   
.L8006B3C8:
/* 0467C8 8006B3C8 03E00008 */  jr    $ra
/* 0467CC 8006B3CC 00000000 */   nop   

