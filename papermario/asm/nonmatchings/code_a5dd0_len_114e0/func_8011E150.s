.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel func_8011E150
/* 0B4850 8011E150 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0B4854 8011E154 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0B4858 8011E158 AFB20018 */  sw    $s2, 0x18($sp)
/* 0B485C 8011E15C AFB10014 */  sw    $s1, 0x14($sp)
/* 0B4860 8011E160 AFB00010 */  sw    $s0, 0x10($sp)
/* 0B4864 8011E164 8C8200FC */  lw    $v0, 0xfc($a0)
/* 0B4868 8011E168 00A0902D */  daddu $s2, $a1, $zero
/* 0B486C 8011E16C 14520003 */  bne   $v0, $s2, .L8011E17C
/* 0B4870 8011E170 0000882D */   daddu $s1, $zero, $zero
/* 0B4874 8011E174 0804786B */  j     .L8011E1AC
/* 0B4878 8011E178 0080102D */   daddu $v0, $a0, $zero

.L8011E17C:
/* 0B487C 8011E17C 0080802D */  daddu $s0, $a0, $zero
.L8011E180:
/* 0B4880 8011E180 8E040004 */  lw    $a0, 4($s0)
/* 0B4884 8011E184 50800005 */  beql  $a0, $zero, .L8011E19C
/* 0B4888 8011E188 26310001 */   addiu $s1, $s1, 1
/* 0B488C 8011E18C 0C047854 */  jal   func_8011E150
/* 0B4890 8011E190 0240282D */   daddu $a1, $s2, $zero
/* 0B4894 8011E194 14400005 */  bnez  $v0, .L8011E1AC
/* 0B4898 8011E198 26310001 */   addiu $s1, $s1, 1
.L8011E19C:
/* 0B489C 8011E19C 2A220020 */  slti  $v0, $s1, 0x20
/* 0B48A0 8011E1A0 1440FFF7 */  bnez  $v0, .L8011E180
/* 0B48A4 8011E1A4 26100004 */   addiu $s0, $s0, 4
/* 0B48A8 8011E1A8 0000102D */  daddu $v0, $zero, $zero
.L8011E1AC:
/* 0B48AC 8011E1AC 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0B48B0 8011E1B0 8FB20018 */  lw    $s2, 0x18($sp)
/* 0B48B4 8011E1B4 8FB10014 */  lw    $s1, 0x14($sp)
/* 0B48B8 8011E1B8 8FB00010 */  lw    $s0, 0x10($sp)
/* 0B48BC 8011E1BC 03E00008 */  jr    $ra
/* 0B48C0 8011E1C0 27BD0020 */   addiu $sp, $sp, 0x20

