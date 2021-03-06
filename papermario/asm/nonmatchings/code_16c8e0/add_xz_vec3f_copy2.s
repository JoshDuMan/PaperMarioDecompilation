.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel add_xz_vec3f_copy2
/* 192B38 80264258 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 192B3C 8026425C F7B60020 */  sdc1  $f22, 0x20($sp)
/* 192B40 80264260 4485B000 */  mtc1  $a1, $f22
/* 192B44 80264264 3C0140C9 */  lui   $at, 0x40c9
/* 192B48 80264268 34210FD0 */  ori   $at, $at, 0xfd0
/* 192B4C 8026426C 44810000 */  mtc1  $at, $f0
/* 192B50 80264270 44862000 */  mtc1  $a2, $f4
/* 192B54 80264274 F7B40018 */  sdc1  $f20, 0x18($sp)
/* 192B58 80264278 46002502 */  mul.s $f20, $f4, $f0
/* 192B5C 8026427C 00000000 */  nop   
/* 192B60 80264280 AFB00010 */  sw    $s0, 0x10($sp)
/* 192B64 80264284 3C0143B4 */  lui   $at, 0x43b4
/* 192B68 80264288 44810000 */  mtc1  $at, $f0
/* 192B6C 8026428C 0080802D */  daddu $s0, $a0, $zero
/* 192B70 80264290 AFBF0014 */  sw    $ra, 0x14($sp)
/* 192B74 80264294 4600A503 */  div.s $f20, $f20, $f0
/* 192B78 80264298 0C00A85B */  jal   sin_rad
/* 192B7C 8026429C 4600A306 */   mov.s $f12, $f20
/* 192B80 802642A0 4600A306 */  mov.s $f12, $f20
/* 192B84 802642A4 0C00A874 */  jal   cos_rad
/* 192B88 802642A8 46000506 */   mov.s $f20, $f0
/* 192B8C 802642AC 4614B502 */  mul.s $f20, $f22, $f20
/* 192B90 802642B0 00000000 */  nop   
/* 192B94 802642B4 4600B587 */  neg.s $f22, $f22
/* 192B98 802642B8 4600B582 */  mul.s $f22, $f22, $f0
/* 192B9C 802642BC 00000000 */  nop   
/* 192BA0 802642C0 C6020000 */  lwc1  $f2, ($s0)
/* 192BA4 802642C4 46141080 */  add.s $f2, $f2, $f20
/* 192BA8 802642C8 C6000008 */  lwc1  $f0, 8($s0)
/* 192BAC 802642CC 46160000 */  add.s $f0, $f0, $f22
/* 192BB0 802642D0 E6020000 */  swc1  $f2, ($s0)
/* 192BB4 802642D4 E6000008 */  swc1  $f0, 8($s0)
/* 192BB8 802642D8 8FBF0014 */  lw    $ra, 0x14($sp)
/* 192BBC 802642DC 8FB00010 */  lw    $s0, 0x10($sp)
/* 192BC0 802642E0 D7B60020 */  ldc1  $f22, 0x20($sp)
/* 192BC4 802642E4 D7B40018 */  ldc1  $f20, 0x18($sp)
/* 192BC8 802642E8 03E00008 */  jr    $ra
/* 192BCC 802642EC 27BD0028 */   addiu $sp, $sp, 0x28

