.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel func_800720B0
/* 04D4B0 800720B0 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 04D4B4 800720B4 AFA40010 */  sw    $a0, 0x10($sp)
/* 04D4B8 800720B8 AFA50014 */  sw    $a1, 0x14($sp)
/* 04D4BC 800720BC AFA60018 */  sw    $a2, 0x18($sp)
/* 04D4C0 800720C0 AFA7001C */  sw    $a3, 0x1c($sp)
/* 04D4C4 800720C4 E7AC0020 */  swc1  $f12, 0x20($sp)
/* 04D4C8 800720C8 E7AE0024 */  swc1  $f14, 0x24($sp)
/* 04D4CC 800720CC E7B00028 */  swc1  $f16, 0x28($sp)
/* 04D4D0 800720D0 AFBF002C */  sw    $ra, 0x2c($sp)
/* 04D4D4 800720D4 0C016959 */  jal   play_effect
/* 04D4D8 800720D8 2404006B */   addiu $a0, $zero, 0x6b
/* 04D4DC 800720DC 8FA40010 */  lw    $a0, 0x10($sp)
/* 04D4E0 800720E0 8FA50014 */  lw    $a1, 0x14($sp)
/* 04D4E4 800720E4 8FA60018 */  lw    $a2, 0x18($sp)
/* 04D4E8 800720E8 8FA7001C */  lw    $a3, 0x1c($sp)
/* 04D4EC 800720EC C7AC0020 */  lwc1  $f12, 0x20($sp)
/* 04D4F0 800720F0 C7AE0024 */  lwc1  $f14, 0x24($sp)
/* 04D4F4 800720F4 C7B00028 */  lwc1  $f16, 0x28($sp)
/* 04D4F8 800720F8 8FBF002C */  lw    $ra, 0x2c($sp)
/* 04D4FC 800720FC 27BD0030 */  addiu $sp, $sp, 0x30
/* 04D500 80072100 3C018008 */  lui   $at, 0x8008
/* 04D504 80072104 8C21FC18 */  lw    $at, -0x3e8($at)
/* 04D508 80072108 00200008 */  jr    $at
/* 04D50C 8007210C 00000000 */   nop   
