.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel func_80047C14
/* 023014 80047C14 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 023018 80047C18 00041040 */  sll   $v0, $a0, 1
/* 02301C 80047C1C 00441021 */  addu  $v0, $v0, $a0
/* 023020 80047C20 00021080 */  sll   $v0, $v0, 2
/* 023024 80047C24 00441023 */  subu  $v0, $v0, $a0
/* 023028 80047C28 3C03800A */  lui   $v1, 0x800a
/* 02302C 80047C2C 8C630F44 */  lw    $v1, 0xf44($v1)
/* 023030 80047C30 00021100 */  sll   $v0, $v0, 4
/* 023034 80047C34 AFBF0018 */  sw    $ra, 0x18($sp)
/* 023038 80047C38 AFB10014 */  sw    $s1, 0x14($sp)
/* 02303C 80047C3C AFB00010 */  sw    $s0, 0x10($sp)
/* 023040 80047C40 00628821 */  addu  $s1, $v1, $v0
/* 023044 80047C44 2403FFBF */  addiu $v1, $zero, -0x41
/* 023048 80047C48 8E220000 */  lw    $v0, ($s1)
/* 02304C 80047C4C 82240078 */  lb    $a0, 0x78($s1)
/* 023050 80047C50 00431024 */  and   $v0, $v0, $v1
/* 023054 80047C54 1480000E */  bnez  $a0, .L80047C90
/* 023058 80047C58 AE220000 */   sw    $v0, ($s1)
/* 02305C 80047C5C 3C048010 */  lui   $a0, 0x8010
/* 023060 80047C60 2484701C */  addiu $a0, $a0, 0x701c
/* 023064 80047C64 24020001 */  addiu $v0, $zero, 1
/* 023068 80047C68 0C050529 */  jal   create_icon
/* 02306C 80047C6C A2220078 */   sb    $v0, 0x78($s1)
/* 023070 80047C70 0040802D */  daddu $s0, $v0, $zero
/* 023074 80047C74 0200202D */  daddu $a0, $s0, $zero
/* 023078 80047C78 0C051280 */  jal   set_icon_flags
/* 02307C 80047C7C 24050002 */   addiu $a1, $zero, 2
/* 023080 80047C80 0200202D */  daddu $a0, $s0, $zero
/* 023084 80047C84 0C051280 */  jal   set_icon_flags
/* 023088 80047C88 24050080 */   addiu $a1, $zero, 0x80
/* 02308C 80047C8C AE30007C */  sw    $s0, 0x7c($s1)
.L80047C90:
/* 023090 80047C90 8FBF0018 */  lw    $ra, 0x18($sp)
/* 023094 80047C94 8FB10014 */  lw    $s1, 0x14($sp)
/* 023098 80047C98 8FB00010 */  lw    $s0, 0x10($sp)
/* 02309C 80047C9C 03E00008 */  jr    $ra
/* 0230A0 80047CA0 27BD0020 */   addiu $sp, $sp, 0x20

