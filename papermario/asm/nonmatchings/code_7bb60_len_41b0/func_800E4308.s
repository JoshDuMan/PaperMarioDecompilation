.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel func_800E4308
/* 07D7B8 800E4308 27BDFFA0 */  addiu $sp, $sp, -0x60
/* 07D7BC 800E430C F7B40048 */  sdc1  $f20, 0x48($sp)
/* 07D7C0 800E4310 4480A000 */  mtc1  $zero, $f20
/* 07D7C4 800E4314 F7B80058 */  sdc1  $f24, 0x58($sp)
/* 07D7C8 800E4318 3C0142B4 */  lui   $at, 0x42b4
/* 07D7CC 800E431C 4481C000 */  mtc1  $at, $f24
/* 07D7D0 800E4320 AFB40040 */  sw    $s4, 0x40($sp)
/* 07D7D4 800E4324 0080A02D */  daddu $s4, $a0, $zero
/* 07D7D8 800E4328 AFB20038 */  sw    $s2, 0x38($sp)
/* 07D7DC 800E432C 2412FFFF */  addiu $s2, $zero, -1
/* 07D7E0 800E4330 AFB10034 */  sw    $s1, 0x34($sp)
/* 07D7E4 800E4334 0000882D */  daddu $s1, $zero, $zero
/* 07D7E8 800E4338 AFB00030 */  sw    $s0, 0x30($sp)
/* 07D7EC 800E433C 3C10800F */  lui   $s0, 0x800f
/* 07D7F0 800E4340 26107B30 */  addiu $s0, $s0, 0x7b30
/* 07D7F4 800E4344 F7B60050 */  sdc1  $f22, 0x50($sp)
/* 07D7F8 800E4348 4485B000 */  mtc1  $a1, $f22
/* 07D7FC 800E434C 00000000 */  nop   
/* 07D800 800E4350 4680B5A0 */  cvt.s.w $f22, $f22
/* 07D804 800E4354 AFB3003C */  sw    $s3, 0x3c($sp)
/* 07D808 800E4358 27B30028 */  addiu $s3, $sp, 0x28
/* 07D80C 800E435C AFBF0044 */  sw    $ra, 0x44($sp)
.L800E4360:
/* 07D810 800E4360 0280202D */  daddu $a0, $s4, $zero
/* 07D814 800E4364 8E020000 */  lw    $v0, ($s0)
/* 07D818 800E4368 27A60020 */  addiu $a2, $sp, 0x20
/* 07D81C 800E436C 0040182D */  daddu $v1, $v0, $zero
/* 07D820 800E4370 C4440028 */  lwc1  $f4, 0x28($v0)
/* 07D824 800E4374 C440002C */  lwc1  $f0, 0x2c($v0)
/* 07D828 800E4378 C4620030 */  lwc1  $f2, 0x30($v1)
/* 07D82C 800E437C 46160000 */  add.s $f0, $f0, $f22
/* 07D830 800E4380 E7A40020 */  swc1  $f4, 0x20($sp)
/* 07D834 800E4384 E7A20028 */  swc1  $f2, 0x28($sp)
/* 07D838 800E4388 E7A00024 */  swc1  $f0, 0x24($sp)
/* 07D83C 800E438C AFB30010 */  sw    $s3, 0x10($sp)
/* 07D840 800E4390 AFA00014 */  sw    $zero, 0x14($sp)
/* 07D844 800E4394 E7B40018 */  swc1  $f20, 0x18($sp)
/* 07D848 800E4398 8E050000 */  lw    $a1, ($s0)
/* 07D84C 800E439C 0C037B01 */  jal   func_800DEC04
/* 07D850 800E43A0 27A70024 */   addiu $a3, $sp, 0x24
/* 07D854 800E43A4 0040182D */  daddu $v1, $v0, $zero
/* 07D858 800E43A8 04630001 */  bgezl $v1, .L800E43B0
/* 07D85C 800E43AC 0060902D */   daddu $s2, $v1, $zero
.L800E43B0:
/* 07D860 800E43B0 26310001 */  addiu $s1, $s1, 1
/* 07D864 800E43B4 8E020000 */  lw    $v0, ($s0)
/* 07D868 800E43B8 C7A00020 */  lwc1  $f0, 0x20($sp)
/* 07D86C 800E43BC C7A20028 */  lwc1  $f2, 0x28($sp)
/* 07D870 800E43C0 E4400028 */  swc1  $f0, 0x28($v0)
/* 07D874 800E43C4 E4420030 */  swc1  $f2, 0x30($v0)
/* 07D878 800E43C8 2A220004 */  slti  $v0, $s1, 4
/* 07D87C 800E43CC 1440FFE4 */  bnez  $v0, .L800E4360
/* 07D880 800E43D0 4618A500 */   add.s $f20, $f20, $f24
/* 07D884 800E43D4 0240102D */  daddu $v0, $s2, $zero
/* 07D888 800E43D8 8FBF0044 */  lw    $ra, 0x44($sp)
/* 07D88C 800E43DC 8FB40040 */  lw    $s4, 0x40($sp)
/* 07D890 800E43E0 8FB3003C */  lw    $s3, 0x3c($sp)
/* 07D894 800E43E4 8FB20038 */  lw    $s2, 0x38($sp)
/* 07D898 800E43E8 8FB10034 */  lw    $s1, 0x34($sp)
/* 07D89C 800E43EC 8FB00030 */  lw    $s0, 0x30($sp)
/* 07D8A0 800E43F0 D7B80058 */  ldc1  $f24, 0x58($sp)
/* 07D8A4 800E43F4 D7B60050 */  ldc1  $f22, 0x50($sp)
/* 07D8A8 800E43F8 D7B40048 */  ldc1  $f20, 0x48($sp)
/* 07D8AC 800E43FC 03E00008 */  jr    $ra
/* 07D8B0 800E4400 27BD0060 */   addiu $sp, $sp, 0x60

