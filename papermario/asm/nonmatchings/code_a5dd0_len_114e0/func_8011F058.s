.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel func_8011F058
/* 0B5758 8011F058 27BDFFA0 */  addiu $sp, $sp, -0x60
/* 0B575C 8011F05C AFB00050 */  sw    $s0, 0x50($sp)
/* 0B5760 8011F060 0080802D */  daddu $s0, $a0, $zero
/* 0B5764 8011F064 AFBF0058 */  sw    $ra, 0x58($sp)
/* 0B5768 8011F068 AFB10054 */  sw    $s1, 0x54($sp)
/* 0B576C 8011F06C 8E020010 */  lw    $v0, 0x10($s0)
/* 0B5770 8011F070 10400024 */  beqz  $v0, .L8011F104
/* 0B5774 8011F074 00A0882D */   daddu $s1, $a1, $zero
/* 0B5778 8011F078 8E020000 */  lw    $v0, ($s0)
/* 0B577C 8011F07C 30430700 */  andi  $v1, $v0, 0x700
/* 0B5780 8011F080 24020200 */  addiu $v0, $zero, 0x200
/* 0B5784 8011F084 10620010 */  beq   $v1, $v0, .L8011F0C8
/* 0B5788 8011F088 2C620201 */   sltiu $v0, $v1, 0x201
/* 0B578C 8011F08C 10400005 */  beqz  $v0, .L8011F0A4
/* 0B5790 8011F090 24020100 */   addiu $v0, $zero, 0x100
/* 0B5794 8011F094 10620008 */  beq   $v1, $v0, .L8011F0B8
/* 0B5798 8011F098 00000000 */   nop   
/* 0B579C 8011F09C 08047C3A */  j     .L8011F0E8
/* 0B57A0 8011F0A0 00000000 */   nop   

.L8011F0A4:
/* 0B57A4 8011F0A4 24020400 */  addiu $v0, $zero, 0x400
/* 0B57A8 8011F0A8 1062000B */  beq   $v1, $v0, .L8011F0D8
/* 0B57AC 8011F0AC 00000000 */   nop   
/* 0B57B0 8011F0B0 08047C3A */  j     .L8011F0E8
/* 0B57B4 8011F0B4 00000000 */   nop   

.L8011F0B8:
/* 0B57B8 8011F0B8 0C0477F4 */  jal   func_8011DFD0
/* 0B57BC 8011F0BC 27A40010 */   addiu $a0, $sp, 0x10
/* 0B57C0 8011F0C0 08047C3D */  j     .L8011F0F4
/* 0B57C4 8011F0C4 0200202D */   daddu $a0, $s0, $zero

.L8011F0C8:
/* 0B57C8 8011F0C8 0C047805 */  jal   func_8011E014
/* 0B57CC 8011F0CC 27A40010 */   addiu $a0, $sp, 0x10
/* 0B57D0 8011F0D0 08047C3D */  j     .L8011F0F4
/* 0B57D4 8011F0D4 0200202D */   daddu $a0, $s0, $zero

.L8011F0D8:
/* 0B57D8 8011F0D8 0C047816 */  jal   func_8011E058
/* 0B57DC 8011F0DC 27A40010 */   addiu $a0, $sp, 0x10
/* 0B57E0 8011F0E0 08047C3D */  j     .L8011F0F4
/* 0B57E4 8011F0E4 0200202D */   daddu $a0, $s0, $zero

.L8011F0E8:
/* 0B57E8 8011F0E8 0C047827 */  jal   func_8011E09C
/* 0B57EC 8011F0EC 27A40010 */   addiu $a0, $sp, 0x10
/* 0B57F0 8011F0F0 0200202D */  daddu $a0, $s0, $zero
.L8011F0F4:
/* 0B57F4 8011F0F4 27A50010 */  addiu $a1, $sp, 0x10
/* 0B57F8 8011F0F8 8C860010 */  lw    $a2, 0x10($a0)
/* 0B57FC 8011F0FC 0C047C46 */  jal   func_8011F118
/* 0B5800 8011F100 0220382D */   daddu $a3, $s1, $zero
.L8011F104:
/* 0B5804 8011F104 8FBF0058 */  lw    $ra, 0x58($sp)
/* 0B5808 8011F108 8FB10054 */  lw    $s1, 0x54($sp)
/* 0B580C 8011F10C 8FB00050 */  lw    $s0, 0x50($sp)
/* 0B5810 8011F110 03E00008 */  jr    $ra
/* 0B5814 8011F114 27BD0060 */   addiu $sp, $sp, 0x60

