.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel func_800E0580
/* 079A30 800E0580 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 079A34 800E0584 3C038011 */  lui   $v1, 0x8011
/* 079A38 800E0588 2463EFC8 */  addiu $v1, $v1, -0x1038
/* 079A3C 800E058C AFBF0014 */  sw    $ra, 0x14($sp)
/* 079A40 800E0590 AFB00010 */  sw    $s0, 0x10($sp)
/* 079A44 800E0594 8C620004 */  lw    $v0, 4($v1)
/* 079A48 800E0598 30420100 */  andi  $v0, $v0, 0x100
/* 079A4C 800E059C 1440002A */  bnez  $v0, .L800E0648
/* 079A50 800E05A0 00000000 */   nop   
/* 079A54 800E05A4 3C028011 */  lui   $v0, 0x8011
/* 079A58 800E05A8 8C42C958 */  lw    $v0, -0x36a8($v0)
/* 079A5C 800E05AC 14400026 */  bnez  $v0, .L800E0648
/* 079A60 800E05B0 00000000 */   nop   
/* 079A64 800E05B4 3C028011 */  lui   $v0, 0x8011
/* 079A68 800E05B8 8C42C920 */  lw    $v0, -0x36e0($v0)
/* 079A6C 800E05BC 14400022 */  bnez  $v0, .L800E0648
/* 079A70 800E05C0 00000000 */   nop   
/* 079A74 800E05C4 3C108011 */  lui   $s0, 0x8011
/* 079A78 800E05C8 2610C940 */  addiu $s0, $s0, -0x36c0
/* 079A7C 800E05CC 8E020000 */  lw    $v0, ($s0)
/* 079A80 800E05D0 14400019 */  bnez  $v0, .L800E0638
/* 079A84 800E05D4 00000000 */   nop   
/* 079A88 800E05D8 80620015 */  lb    $v0, 0x15($v1)
/* 079A8C 800E05DC 1440001A */  bnez  $v0, .L800E0648
/* 079A90 800E05E0 00000000 */   nop   
/* 079A94 800E05E4 8C620000 */  lw    $v0, ($v1)
/* 079A98 800E05E8 30420020 */  andi  $v0, $v0, 0x20
/* 079A9C 800E05EC 14400016 */  bnez  $v0, .L800E0648
/* 079AA0 800E05F0 00000000 */   nop   
/* 079AA4 800E05F4 0C03814E */  jal   func_800E0538
/* 079AA8 800E05F8 00000000 */   nop   
/* 079AAC 800E05FC 14400003 */  bnez  $v0, .L800E060C
/* 079AB0 800E0600 3C06802B */   lui   $a2, 0x802b
/* 079AB4 800E0604 08038192 */  j     .L800E0648
/* 079AB8 800E0608 AE000000 */   sw    $zero, ($s0)

.L800E060C:
/* 079ABC 800E060C 34C67000 */  ori   $a2, $a2, 0x7000
/* 079AC0 800E0610 3C0400E2 */  lui   $a0, 0xe2
/* 079AC4 800E0614 24840EB0 */  addiu $a0, $a0, 0xeb0
/* 079AC8 800E0618 3C0500E2 */  lui   $a1, 0xe2
/* 079ACC 800E061C 24A51870 */  addiu $a1, $a1, 0x1870
/* 079AD0 800E0620 0C00A5CF */  jal   dma_copy
/* 079AD4 800E0624 AE000000 */   sw    $zero, ($s0)
/* 079AD8 800E0628 3C02802B */  lui   $v0, 0x802b
/* 079ADC 800E062C 244270B4 */  addiu $v0, $v0, 0x70b4
/* 079AE0 800E0630 10400005 */  beqz  $v0, .L800E0648
/* 079AE4 800E0634 AE020000 */   sw    $v0, ($s0)
.L800E0638:
/* 079AE8 800E0638 3C028011 */  lui   $v0, 0x8011
/* 079AEC 800E063C 8C42C940 */  lw    $v0, -0x36c0($v0)
/* 079AF0 800E0640 0040F809 */  jalr  $v0
/* 079AF4 800E0644 00000000 */  nop   
.L800E0648:
/* 079AF8 800E0648 8FBF0014 */  lw    $ra, 0x14($sp)
/* 079AFC 800E064C 8FB00010 */  lw    $s0, 0x10($sp)
/* 079B00 800E0650 03E00008 */  jr    $ra
/* 079B04 800E0654 27BD0018 */   addiu $sp, $sp, 0x18

