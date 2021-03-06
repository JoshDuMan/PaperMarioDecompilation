.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel func_80071030
/* 04C430 80071030 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 04C434 80071034 AFA40010 */  sw    $a0, 0x10($sp)
/* 04C438 80071038 AFA50014 */  sw    $a1, 0x14($sp)
/* 04C43C 8007103C AFA60018 */  sw    $a2, 0x18($sp)
/* 04C440 80071040 AFA7001C */  sw    $a3, 0x1c($sp)
/* 04C444 80071044 E7AC0020 */  swc1  $f12, 0x20($sp)
/* 04C448 80071048 E7AE0024 */  swc1  $f14, 0x24($sp)
/* 04C44C 8007104C E7B00028 */  swc1  $f16, 0x28($sp)
/* 04C450 80071050 AFBF002C */  sw    $ra, 0x2c($sp)
/* 04C454 80071054 0C016959 */  jal   play_effect
/* 04C458 80071058 2404003F */   addiu $a0, $zero, 0x3f
/* 04C45C 8007105C 8FA40010 */  lw    $a0, 0x10($sp)
/* 04C460 80071060 8FA50014 */  lw    $a1, 0x14($sp)
/* 04C464 80071064 8FA60018 */  lw    $a2, 0x18($sp)
/* 04C468 80071068 8FA7001C */  lw    $a3, 0x1c($sp)
/* 04C46C 8007106C C7AC0020 */  lwc1  $f12, 0x20($sp)
/* 04C470 80071070 C7AE0024 */  lwc1  $f14, 0x24($sp)
/* 04C474 80071074 C7B00028 */  lwc1  $f16, 0x28($sp)
/* 04C478 80071078 8FBF002C */  lw    $ra, 0x2c($sp)
/* 04C47C 8007107C 27BD0030 */  addiu $sp, $sp, 0x30
/* 04C480 80071080 3C018008 */  lui   $at, 0x8008
/* 04C484 80071084 8C21F7F8 */  lw    $at, -0x808($at)
/* 04C488 80071088 00200008 */  jr    $at
/* 04C48C 8007108C 00000000 */   nop   
