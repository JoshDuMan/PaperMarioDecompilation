.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel func_800384BC
/* 0138BC 800384BC 3C028007 */  lui   $v0, 0x8007
/* 0138C0 800384C0 8C42419C */  lw    $v0, 0x419c($v0)
/* 0138C4 800384C4 80420070 */  lb    $v0, 0x70($v0)
/* 0138C8 800384C8 14400005 */  bnez  $v0, .L800384E0
/* 0138CC 800384CC 00000000 */   nop   
/* 0138D0 800384D0 3C02800A */  lui   $v0, 0x800a
/* 0138D4 800384D4 24420990 */  addiu $v0, $v0, 0x990
/* 0138D8 800384D8 0800E13A */  j     .L800384E8
/* 0138DC 800384DC 00000000 */   nop   

.L800384E0:
/* 0138E0 800384E0 3C02800A */  lui   $v0, 0x800a
/* 0138E4 800384E4 24420A90 */  addiu $v0, $v0, 0xa90
.L800384E8:
/* 0138E8 800384E8 3C01800A */  lui   $at, 0x800a
/* 0138EC 800384EC AC220B90 */  sw    $v0, 0xb90($at)
/* 0138F0 800384F0 3C02800A */  lui   $v0, 0x800a
/* 0138F4 800384F4 8C420B90 */  lw    $v0, 0xb90($v0)
/* 0138F8 800384F8 2403003F */  addiu $v1, $zero, 0x3f
/* 0138FC 800384FC 244200FC */  addiu $v0, $v0, 0xfc
.L80038500:
/* 013900 80038500 AC400000 */  sw    $zero, ($v0)
/* 013904 80038504 2463FFFF */  addiu $v1, $v1, -1
/* 013908 80038508 0461FFFD */  bgez  $v1, .L80038500
/* 01390C 8003850C 2442FFFC */   addiu $v0, $v0, -4
/* 013910 80038510 24020001 */  addiu $v0, $zero, 1
/* 013914 80038514 3C01800A */  lui   $at, 0x800a
/* 013918 80038518 A420A604 */  sh    $zero, -0x59fc($at)
/* 01391C 8003851C 3C01800A */  lui   $at, 0x800a
/* 013920 80038520 A0220B94 */  sb    $v0, 0xb94($at)
/* 013924 80038524 03E00008 */  jr    $ra
/* 013928 80038528 00000000 */   nop   

