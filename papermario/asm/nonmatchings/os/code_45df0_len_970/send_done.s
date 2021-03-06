.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel send_done
.L8006AFC4:
/* 0463C4 8006AFC4 2401FFFF */  addiu $at, $zero, -1
/* 0463C8 8006AFC8 15810004 */  bne   $t4, $at, .L8006AFDC
/* 0463CC 8006AFCC 3C018000 */   lui   $at, 0x8000
/* 0463D0 8006AFD0 15A10002 */  bne   $t5, $at, .L8006AFDC
/* 0463D4 8006AFD4 00000000 */   nop   
/* 0463D8 8006AFD8 0006000D */  break 6
.L8006AFDC:
/* 0463DC 8006AFDC 00006810 */  mfhi  $t5
/* 0463E0 8006AFE0 8D2C0014 */  lw    $t4, 0x14($t1)
/* 0463E4 8006AFE4 24010004 */  addiu $at, $zero, 4
/* 0463E8 8006AFE8 01A10018 */  mult  $t5, $at
/* 0463EC 8006AFEC 00006812 */  mflo  $t5
/* 0463F0 8006AFF0 018D6021 */  addu  $t4, $t4, $t5
/* 0463F4 8006AFF4 8D4D0004 */  lw    $t5, 4($t2)
/* 0463F8 8006AFF8 AD8D0000 */  sw    $t5, ($t4)
/* 0463FC 8006AFFC 256A0001 */  addiu $t2, $t3, 1
/* 046400 8006B000 AD2A0008 */  sw    $t2, 8($t1)
/* 046404 8006B004 8D2A0000 */  lw    $t2, ($t1)
/* 046408 8006B008 8D4B0000 */  lw    $t3, ($t2)
/* 04640C 8006B00C 11600008 */  beqz  $t3, .L8006B030
/* 046410 8006B010 00000000 */   nop   
/* 046414 8006B014 0C01AC6F */  jal   osPopThread
/* 046418 8006B018 01202021 */   addu  $a0, $t1, $zero
/* 04641C 8006B01C 00405021 */  addu  $t2, $v0, $zero
/* 046420 8006B020 01402821 */  addu  $a1, $t2, $zero
/* 046424 8006B024 3C048009 */  lui   $a0, 0x8009
/* 046428 8006B028 0C01AC5D */  jal   osEnqueueThread
/* 04642C 8006B02C 24844658 */   addiu $a0, $a0, 0x4658
.L8006B030:
/* 046430 8006B030 02400008 */  jr    $s2
/* 046434 8006B034 00000000 */   nop   
