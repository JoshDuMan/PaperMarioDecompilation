.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel func_80245910
/* 138C50 80245910 8FB50024 */  lw    $s5, 0x24($sp)
/* 138C54 80245914 8FB40020 */  lw    $s4, 0x20($sp)
/* 138C58 80245918 8FB3001C */  lw    $s3, 0x1c($sp)
/* 138C5C 8024591C 8FB20018 */  lw    $s2, 0x18($sp)
/* 138C60 80245920 8FB10014 */  lw    $s1, 0x14($sp)
/* 138C64 80245924 8FB00010 */  lw    $s0, 0x10($sp)
/* 138C68 80245928 03E00008 */  jr    $ra
/* 138C6C 8024592C 27BD0038 */   addiu $sp, $sp, 0x38

/* 138C70 80245930 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 138C74 80245934 AFB10014 */  sw    $s1, 0x14($sp)
/* 138C78 80245938 0000882D */  daddu $s1, $zero, $zero
/* 138C7C 8024593C AFB00010 */  sw    $s0, 0x10($sp)
/* 138C80 80245940 3C108027 */  lui   $s0, 0x8027
/* 138C84 80245944 26100130 */  addiu $s0, $s0, 0x130
/* 138C88 80245948 AFBF0018 */  sw    $ra, 0x18($sp)
.L8024594C:
/* 138C8C 8024594C 8E040000 */  lw    $a0, ($s0)
/* 138C90 80245950 26100004 */  addiu $s0, $s0, 4
/* 138C94 80245954 0C05123D */  jal   free_icon
/* 138C98 80245958 26310001 */   addiu $s1, $s1, 1
/* 138C9C 8024595C 2A220006 */  slti  $v0, $s1, 6
/* 138CA0 80245960 1440FFFA */  bnez  $v0, .L8024594C
/* 138CA4 80245964 00000000 */   nop   
/* 138CA8 80245968 8FBF0018 */  lw    $ra, 0x18($sp)
/* 138CAC 8024596C 8FB10014 */  lw    $s1, 0x14($sp)
/* 138CB0 80245970 8FB00010 */  lw    $s0, 0x10($sp)
/* 138CB4 80245974 03E00008 */  jr    $ra
/* 138CB8 80245978 27BD0020 */   addiu $sp, $sp, 0x20

/* 138CBC 8024597C 00000000 */  nop   
/* 138CC0 80245980 27BDFF80 */  addiu $sp, $sp, -0x80
