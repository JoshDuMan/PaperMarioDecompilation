.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel func_80072170
/* 04D570 80072170 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 04D574 80072174 AFA40010 */  sw    $a0, 0x10($sp)
/* 04D578 80072178 AFA50014 */  sw    $a1, 0x14($sp)
/* 04D57C 8007217C AFA60018 */  sw    $a2, 0x18($sp)
/* 04D580 80072180 AFA7001C */  sw    $a3, 0x1c($sp)
/* 04D584 80072184 E7AC0020 */  swc1  $f12, 0x20($sp)
/* 04D588 80072188 E7AE0024 */  swc1  $f14, 0x24($sp)
/* 04D58C 8007218C E7B00028 */  swc1  $f16, 0x28($sp)
/* 04D590 80072190 AFBF002C */  sw    $ra, 0x2c($sp)
/* 04D594 80072194 0C016959 */  jal   play_effect
/* 04D598 80072198 2404006D */   addiu $a0, $zero, 0x6d
/* 04D59C 8007219C 8FA40010 */  lw    $a0, 0x10($sp)
/* 04D5A0 800721A0 8FA50014 */  lw    $a1, 0x14($sp)
/* 04D5A4 800721A4 8FA60018 */  lw    $a2, 0x18($sp)
/* 04D5A8 800721A8 8FA7001C */  lw    $a3, 0x1c($sp)
/* 04D5AC 800721AC C7AC0020 */  lwc1  $f12, 0x20($sp)
/* 04D5B0 800721B0 C7AE0024 */  lwc1  $f14, 0x24($sp)
/* 04D5B4 800721B4 C7B00028 */  lwc1  $f16, 0x28($sp)
/* 04D5B8 800721B8 8FBF002C */  lw    $ra, 0x2c($sp)
/* 04D5BC 800721BC 27BD0030 */  addiu $sp, $sp, 0x30
/* 04D5C0 800721C0 3C018008 */  lui   $at, 0x8008
/* 04D5C4 800721C4 8C21FC48 */  lw    $at, -0x3b8($at)
/* 04D5C8 800721C8 00200008 */  jr    $at
/* 04D5CC 800721CC 00000000 */   nop   
