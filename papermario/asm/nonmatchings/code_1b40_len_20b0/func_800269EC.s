.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel func_800269EC
/* 001DEC 800269EC 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 001DF0 800269F0 AFB20018 */  sw    $s2, 0x18($sp)
/* 001DF4 800269F4 3C120001 */  lui   $s2, 1
/* 001DF8 800269F8 36520630 */  ori   $s2, $s2, 0x630
/* 001DFC 800269FC AFB10014 */  sw    $s1, 0x14($sp)
/* 001E00 80026A00 3C11800A */  lui   $s1, 0x800a
/* 001E04 80026A04 2631A674 */  addiu $s1, $s1, -0x598c
/* 001E08 80026A08 3C048007 */  lui   $a0, 0x8007
/* 001E0C 80026A0C 8C8441F4 */  lw    $a0, 0x41f4($a0)
/* 001E10 80026A10 3C058016 */  lui   $a1, 0x8016
/* 001E14 80026A14 24A54000 */  addiu $a1, $a1, 0x4000
/* 001E18 80026A18 AFB00010 */  sw    $s0, 0x10($sp)
/* 001E1C 80026A1C 3C10800A */  lui   $s0, 0x800a
/* 001E20 80026A20 2610A66C */  addiu $s0, $s0, -0x5994
/* 001E24 80026A24 AFBF001C */  sw    $ra, 0x1c($sp)
/* 001E28 80026A28 00041040 */  sll   $v0, $a0, 1
/* 001E2C 80026A2C 00441021 */  addu  $v0, $v0, $a0
/* 001E30 80026A30 000210C0 */  sll   $v0, $v0, 3
/* 001E34 80026A34 00441021 */  addu  $v0, $v0, $a0
/* 001E38 80026A38 00021980 */  sll   $v1, $v0, 6
/* 001E3C 80026A3C 00431021 */  addu  $v0, $v0, $v1
/* 001E40 80026A40 00021080 */  sll   $v0, $v0, 2
/* 001E44 80026A44 00441023 */  subu  $v0, $v0, $a0
/* 001E48 80026A48 00021100 */  sll   $v0, $v0, 4
/* 001E4C 80026A4C 00451021 */  addu  $v0, $v0, $a1
/* 001E50 80026A50 AE220000 */  sw    $v0, ($s1)
/* 001E54 80026A54 00521021 */  addu  $v0, $v0, $s2
/* 001E58 80026A58 0C009C68 */  jal   func_800271A0
/* 001E5C 80026A5C AE020000 */   sw    $v0, ($s0)
/* 001E60 80026A60 0C009F84 */  jal   func_80027E10
/* 001E64 80026A64 00000000 */   nop   
/* 001E68 80026A68 8E030000 */  lw    $v1, ($s0)
/* 001E6C 80026A6C 3C02E900 */  lui   $v0, 0xe900
/* 001E70 80026A70 0060202D */  daddu $a0, $v1, $zero
/* 001E74 80026A74 24630008 */  addiu $v1, $v1, 8
/* 001E78 80026A78 AE030000 */  sw    $v1, ($s0)
/* 001E7C 80026A7C AC820000 */  sw    $v0, ($a0)
/* 001E80 80026A80 24620008 */  addiu $v0, $v1, 8
/* 001E84 80026A84 AC800004 */  sw    $zero, 4($a0)
/* 001E88 80026A88 3C04DF00 */  lui   $a0, 0xdf00
/* 001E8C 80026A8C AE020000 */  sw    $v0, ($s0)
/* 001E90 80026A90 AC640000 */  sw    $a0, ($v1)
/* 001E94 80026A94 AC600004 */  sw    $zero, 4($v1)
/* 001E98 80026A98 8E230000 */  lw    $v1, ($s1)
/* 001E9C 80026A9C 00521023 */  subu  $v0, $v0, $s2
/* 001EA0 80026AA0 00431023 */  subu  $v0, $v0, $v1
/* 001EA4 80026AA4 000210C2 */  srl   $v0, $v0, 3
/* 001EA8 80026AA8 28420200 */  slti  $v0, $v0, 0x200
/* 001EAC 80026AAC 14400003 */  bnez  $v0, .L80026ABC
/* 001EB0 80026AB0 3C040001 */   lui   $a0, 1
.L80026AB4:
/* 001EB4 80026AB4 08009AAD */  j     .L80026AB4
/* 001EB8 80026AB8 00000000 */   nop   

.L80026ABC:
/* 001EBC 80026ABC 34840630 */  ori   $a0, $a0, 0x630
/* 001EC0 80026AC0 0000302D */  daddu $a2, $zero, $zero
/* 001EC4 80026AC4 00C0382D */  daddu $a3, $a2, $zero
/* 001EC8 80026AC8 3C05800A */  lui   $a1, 0x800a
/* 001ECC 80026ACC 8CA5A66C */  lw    $a1, -0x5994($a1)
/* 001ED0 80026AD0 3C02800A */  lui   $v0, 0x800a
/* 001ED4 80026AD4 8C42A674 */  lw    $v0, -0x598c($v0)
/* 001ED8 80026AD8 00A42823 */  subu  $a1, $a1, $a0
/* 001EDC 80026ADC 00A22823 */  subu  $a1, $a1, $v0
/* 001EE0 80026AE0 000528C3 */  sra   $a1, $a1, 3
/* 001EE4 80026AE4 00442021 */  addu  $a0, $v0, $a0
/* 001EE8 80026AE8 0C00B331 */  jal   nuGfxTaskStart
/* 001EEC 80026AEC 000528C0 */   sll   $a1, $a1, 3
/* 001EF0 80026AF0 8FBF001C */  lw    $ra, 0x1c($sp)
/* 001EF4 80026AF4 8FB20018 */  lw    $s2, 0x18($sp)
/* 001EF8 80026AF8 8FB10014 */  lw    $s1, 0x14($sp)
/* 001EFC 80026AFC 8FB00010 */  lw    $s0, 0x10($sp)
/* 001F00 80026B00 03E00008 */  jr    $ra
/* 001F04 80026B04 27BD0020 */   addiu $sp, $sp, 0x20
