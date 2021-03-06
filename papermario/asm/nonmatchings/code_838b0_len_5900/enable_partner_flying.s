.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel enable_partner_flying
/* 0867C0 800ED310 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0867C4 800ED314 AFB00010 */  sw    $s0, 0x10($sp)
/* 0867C8 800ED318 0080802D */  daddu $s0, $a0, $zero
/* 0867CC 800ED31C 3C048011 */  lui   $a0, 0x8011
/* 0867D0 800ED320 2484CD38 */  addiu $a0, $a0, -0x32c8
/* 0867D4 800ED324 0000302D */  daddu $a2, $zero, $zero
/* 0867D8 800ED328 3C028010 */  lui   $v0, 0x8010
/* 0867DC 800ED32C 2442833C */  addiu $v0, $v0, -0x7cc4
/* 0867E0 800ED330 0040482D */  daddu $t1, $v0, $zero
/* 0867E4 800ED334 3C028010 */  lui   $v0, 0x8010
/* 0867E8 800ED338 24428340 */  addiu $v0, $v0, -0x7cc0
/* 0867EC 800ED33C 0040402D */  daddu $t0, $v0, $zero
/* 0867F0 800ED340 3C028010 */  lui   $v0, 0x8010
/* 0867F4 800ED344 24428344 */  addiu $v0, $v0, -0x7cbc
/* 0867F8 800ED348 0040382D */  daddu $a3, $v0, $zero
/* 0867FC 800ED34C AFBF0014 */  sw    $ra, 0x14($sp)
/* 086800 800ED350 C5200000 */  lwc1  $f0, ($t1)
/* 086804 800ED354 C5020000 */  lwc1  $f2, ($t0)
/* 086808 800ED358 C4E40000 */  lwc1  $f4, ($a3)
/* 08680C 800ED35C 2483000C */  addiu $v1, $a0, 0xc
/* 086810 800ED360 E6000038 */  swc1  $f0, 0x38($s0)
/* 086814 800ED364 E602003C */  swc1  $f2, 0x3c($s0)
/* 086818 800ED368 E6040040 */  swc1  $f4, 0x40($s0)
.L800ED36C:
/* 08681C 800ED36C 24C60001 */  addiu $a2, $a2, 1
/* 086820 800ED370 C5200000 */  lwc1  $f0, ($t1)
/* 086824 800ED374 C5020000 */  lwc1  $f2, ($t0)
/* 086828 800ED378 C4E40000 */  lwc1  $f4, ($a3)
/* 08682C 800ED37C 28C20028 */  slti  $v0, $a2, 0x28
/* 086830 800ED380 E460FFF8 */  swc1  $f0, -8($v1)
/* 086834 800ED384 E462FFFC */  swc1  $f2, -4($v1)
/* 086838 800ED388 E4640000 */  swc1  $f4, ($v1)
/* 08683C 800ED38C 24630010 */  addiu $v1, $v1, 0x10
/* 086840 800ED390 A0800000 */  sb    $zero, ($a0)
/* 086844 800ED394 1440FFF5 */  bnez  $v0, .L800ED36C
/* 086848 800ED398 24840010 */   addiu $a0, $a0, 0x10
/* 08684C 800ED39C 3C018011 */  lui   $at, 0x8011
/* 086850 800ED3A0 AC20CFB8 */  sw    $zero, -0x3048($at)
/* 086854 800ED3A4 3C018011 */  lui   $at, 0x8011
/* 086858 800ED3A8 AC20CFBC */  sw    $zero, -0x3044($at)
/* 08685C 800ED3AC 14A00005 */  bnez  $a1, .L800ED3C4
/* 086860 800ED3B0 00000000 */   nop   
/* 086864 800ED3B4 3C018011 */  lui   $at, 0x8011
/* 086868 800ED3B8 A420CFC8 */  sh    $zero, -0x3038($at)
/* 08686C 800ED3BC 0803B50B */  j     .L800ED42C
/* 086870 800ED3C0 00000000 */   nop   

.L800ED3C4:
/* 086874 800ED3C4 3C048011 */  lui   $a0, 0x8011
/* 086878 800ED3C8 2484CFC4 */  addiu $a0, $a0, -0x303c
/* 08687C 800ED3CC 8C830000 */  lw    $v1, ($a0)
/* 086880 800ED3D0 14600009 */  bnez  $v1, .L800ED3F8
/* 086884 800ED3D4 24020001 */   addiu $v0, $zero, 1
/* 086888 800ED3D8 2402000F */  addiu $v0, $zero, 0xf
/* 08688C 800ED3DC 3C018011 */  lui   $at, 0x8011
/* 086890 800ED3E0 A422CFC8 */  sh    $v0, -0x3038($at)
/* 086894 800ED3E4 24020002 */  addiu $v0, $zero, 2
/* 086898 800ED3E8 3C018011 */  lui   $at, 0x8011
/* 08689C 800ED3EC A422CFCA */  sh    $v0, -0x3036($at)
/* 0868A0 800ED3F0 0803B50D */  j     .L800ED434
/* 0868A4 800ED3F4 00000000 */   nop   

.L800ED3F8:
/* 0868A8 800ED3F8 10620003 */  beq   $v1, $v0, .L800ED408
/* 0868AC 800ED3FC 24020003 */   addiu $v0, $zero, 3
/* 0868B0 800ED400 14620006 */  bne   $v1, $v0, .L800ED41C
/* 0868B4 800ED404 24020002 */   addiu $v0, $zero, 2
.L800ED408:
/* 0868B8 800ED408 AC800000 */  sw    $zero, ($a0)
/* 0868BC 800ED40C 3C018011 */  lui   $at, 0x8011
/* 0868C0 800ED410 A420CFC8 */  sh    $zero, -0x3038($at)
/* 0868C4 800ED414 0803B50B */  j     .L800ED42C
/* 0868C8 800ED418 00000000 */   nop   

.L800ED41C:
/* 0868CC 800ED41C 14620005 */  bne   $v1, $v0, .L800ED434
/* 0868D0 800ED420 24020032 */   addiu $v0, $zero, 0x32
/* 0868D4 800ED424 3C018011 */  lui   $at, 0x8011
/* 0868D8 800ED428 A422CFC8 */  sh    $v0, -0x3038($at)
.L800ED42C:
/* 0868DC 800ED42C 3C018011 */  lui   $at, 0x8011
/* 0868E0 800ED430 A420CFCA */  sh    $zero, -0x3036($at)
.L800ED434:
/* 0868E4 800ED434 3C038011 */  lui   $v1, 0x8011
/* 0868E8 800ED438 8C63CFD8 */  lw    $v1, -0x3028($v1)
/* 0868EC 800ED43C 3C014220 */  lui   $at, 0x4220
/* 0868F0 800ED440 44810000 */  mtc1  $at, $f0
/* 0868F4 800ED444 0200202D */  daddu $a0, $s0, $zero
/* 0868F8 800ED448 3C018011 */  lui   $at, 0x8011
/* 0868FC 800ED44C A420CFCE */  sh    $zero, -0x3032($at)
/* 086900 800ED450 3C018011 */  lui   $at, 0x8011
/* 086904 800ED454 A420CFCC */  sh    $zero, -0x3034($at)
/* 086908 800ED458 000310C0 */  sll   $v0, $v1, 3
/* 08690C 800ED45C 00431021 */  addu  $v0, $v0, $v1
/* 086910 800ED460 00021080 */  sll   $v0, $v0, 2
/* 086914 800ED464 3C038010 */  lui   $v1, 0x8010
/* 086918 800ED468 00621821 */  addu  $v1, $v1, $v0
/* 08691C 800ED46C 8C63835C */  lw    $v1, -0x7ca4($v1)
/* 086920 800ED470 24020010 */  addiu $v0, $zero, 0x10
/* 086924 800ED474 3C018010 */  lui   $at, 0x8010
/* 086928 800ED478 AC22802C */  sw    $v0, -0x7fd4($at)
/* 08692C 800ED47C 3C018011 */  lui   $at, 0x8011
/* 086930 800ED480 E420CFC0 */  swc1  $f0, -0x3040($at)
/* 086934 800ED484 0C03A96E */  jal   func_800EA5B8
/* 086938 800ED488 AE030028 */   sw    $v1, 0x28($s0)
/* 08693C 800ED48C 8E020000 */  lw    $v0, ($s0)
/* 086940 800ED490 3C030001 */  lui   $v1, 1
/* 086944 800ED494 AE030080 */  sw    $v1, 0x80($s0)
/* 086948 800ED498 2403FDFF */  addiu $v1, $zero, -0x201
/* 08694C 800ED49C 34420100 */  ori   $v0, $v0, 0x100
/* 086950 800ED4A0 00431024 */  and   $v0, $v0, $v1
/* 086954 800ED4A4 AE020000 */  sw    $v0, ($s0)
/* 086958 800ED4A8 8FBF0014 */  lw    $ra, 0x14($sp)
/* 08695C 800ED4AC 8FB00010 */  lw    $s0, 0x10($sp)
/* 086960 800ED4B0 03E00008 */  jr    $ra
/* 086964 800ED4B4 27BD0018 */   addiu $sp, $sp, 0x18

