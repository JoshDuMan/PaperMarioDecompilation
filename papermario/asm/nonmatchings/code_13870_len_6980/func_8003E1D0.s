.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel func_8003E1D0
/* 0195D0 8003E1D0 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 0195D4 8003E1D4 AFB00018 */  sw    $s0, 0x18($sp)
/* 0195D8 8003E1D8 0080802D */  daddu $s0, $a0, $zero
/* 0195DC 8003E1DC 3C048007 */  lui   $a0, 0x8007
/* 0195E0 8003E1E0 24847C3A */  addiu $a0, $a0, 0x7c3a
/* 0195E4 8003E1E4 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0195E8 8003E1E8 F7B40020 */  sdc1  $f20, 0x20($sp)
/* 0195EC 8003E1EC 94820000 */  lhu   $v0, ($a0)
/* 0195F0 8003E1F0 24430001 */  addiu $v1, $v0, 1
/* 0195F4 8003E1F4 00021400 */  sll   $v0, $v0, 0x10
/* 0195F8 8003E1F8 00021403 */  sra   $v0, $v0, 0x10
/* 0195FC 8003E1FC 28420004 */  slti  $v0, $v0, 4
/* 019600 8003E200 14400032 */  bnez  $v0, .L8003E2CC
/* 019604 8003E204 A4830000 */   sh    $v1, ($a0)
/* 019608 8003E208 C60C000C */  lwc1  $f12, 0xc($s0)
/* 01960C 8003E20C A4800000 */  sh    $zero, ($a0)
/* 019610 8003E210 0C00A6C9 */  jal   clamp_angle
/* 019614 8003E214 46006307 */   neg.s $f12, $f12
/* 019618 8003E218 3C0140C9 */  lui   $at, 0x40c9
/* 01961C 8003E21C 34210FD0 */  ori   $at, $at, 0xfd0
/* 019620 8003E220 44811000 */  mtc1  $at, $f2
/* 019624 8003E224 00000000 */  nop   
/* 019628 8003E228 46020502 */  mul.s $f20, $f0, $f2
/* 01962C 8003E22C 00000000 */  nop   
/* 019630 8003E230 3C0143B4 */  lui   $at, 0x43b4
/* 019634 8003E234 44810000 */  mtc1  $at, $f0
/* 019638 8003E238 00000000 */  nop   
/* 01963C 8003E23C 4600A503 */  div.s $f20, $f20, $f0
/* 019640 8003E240 0C00A85B */  jal   sin_rad
/* 019644 8003E244 4600A306 */   mov.s $f12, $f20
/* 019648 8003E248 4600A306 */  mov.s $f12, $f20
/* 01964C 8003E24C 0C00A874 */  jal   cos_rad
/* 019650 8003E250 46000506 */   mov.s $f20, $f0
/* 019654 8003E254 860200A6 */  lh    $v0, 0xa6($s0)
/* 019658 8003E258 44821000 */  mtc1  $v0, $f2
/* 01965C 8003E25C 00000000 */  nop   
/* 019660 8003E260 468010A0 */  cvt.s.w $f2, $f2
/* 019664 8003E264 46141502 */  mul.s $f20, $f2, $f20
/* 019668 8003E268 00000000 */  nop   
/* 01966C 8003E26C 46001082 */  mul.s $f2, $f2, $f0
/* 019670 8003E270 00000000 */  nop   
/* 019674 8003E274 3C013E4C */  lui   $at, 0x3e4c
/* 019678 8003E278 3421CCCD */  ori   $at, $at, 0xcccd
/* 01967C 8003E27C 44810000 */  mtc1  $at, $f0
/* 019680 8003E280 00000000 */  nop   
/* 019684 8003E284 4600A502 */  mul.s $f20, $f20, $f0
/* 019688 8003E288 00000000 */  nop   
/* 01968C 8003E28C 46001082 */  mul.s $f2, $f2, $f0
/* 019690 8003E290 00000000 */  nop   
/* 019694 8003E294 C6000038 */  lwc1  $f0, 0x38($s0)
/* 019698 8003E298 C606003C */  lwc1  $f6, 0x3c($s0)
/* 01969C 8003E29C 46140000 */  add.s $f0, $f0, $f20
/* 0196A0 8003E2A0 44802000 */  mtc1  $zero, $f4
/* 0196A4 8003E2A4 00000000 */  nop   
/* 0196A8 8003E2A8 46043180 */  add.s $f6, $f6, $f4
/* 0196AC 8003E2AC 44050000 */  mfc1  $a1, $f0
/* 0196B0 8003E2B0 C6000040 */  lwc1  $f0, 0x40($s0)
/* 0196B4 8003E2B4 46020000 */  add.s $f0, $f0, $f2
/* 0196B8 8003E2B8 44063000 */  mfc1  $a2, $f6
/* 0196BC 8003E2BC 44070000 */  mfc1  $a3, $f0
/* 0196C0 8003E2C0 0000202D */  daddu $a0, $zero, $zero
/* 0196C4 8003E2C4 0C01C16C */  jal   func_800705B0
/* 0196C8 8003E2C8 E7A40010 */   swc1  $f4, 0x10($sp)
.L8003E2CC:
/* 0196CC 8003E2CC 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0196D0 8003E2D0 8FB00018 */  lw    $s0, 0x18($sp)
/* 0196D4 8003E2D4 D7B40020 */  ldc1  $f20, 0x20($sp)
/* 0196D8 8003E2D8 03E00008 */  jr    $ra
/* 0196DC 8003E2DC 27BD0028 */   addiu $sp, $sp, 0x28

