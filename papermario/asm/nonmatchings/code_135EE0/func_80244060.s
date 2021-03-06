.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel func_80244060
/* 1373A0 80244060 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 1373A4 80244064 3C040013 */  lui   $a0, 0x13
/* 1373A8 80244068 24841340 */  addiu $a0, $a0, 0x1340
/* 1373AC 8024406C 3C050013 */  lui   $a1, 0x13
/* 1373B0 80244070 24A55EE0 */  addiu $a1, $a1, 0x5ee0
/* 1373B4 80244074 3C068024 */  lui   $a2, 0x8024
/* 1373B8 80244078 24C6E000 */  addiu $a2, $a2, -0x2000
/* 1373BC 8024407C AFBF0028 */  sw    $ra, 0x28($sp)
/* 1373C0 80244080 AFB50024 */  sw    $s5, 0x24($sp)
/* 1373C4 80244084 AFB40020 */  sw    $s4, 0x20($sp)
/* 1373C8 80244088 AFB3001C */  sw    $s3, 0x1c($sp)
/* 1373CC 8024408C AFB20018 */  sw    $s2, 0x18($sp)
/* 1373D0 80244090 AFB10014 */  sw    $s1, 0x14($sp)
/* 1373D4 80244094 0C00A5CF */  jal   dma_copy
/* 1373D8 80244098 AFB00010 */   sw    $s0, 0x10($sp)
/* 1373DC 8024409C 0000882D */  daddu $s1, $zero, $zero
/* 1373E0 802440A0 3C138024 */  lui   $s3, 0x8024
/* 1373E4 802440A4 26731ECC */  addiu $s3, $s3, 0x1ecc
/* 1373E8 802440A8 3C108025 */  lui   $s0, 0x8025
/* 1373EC 802440AC 2610EF60 */  addiu $s0, $s0, -0x10a0
/* 1373F0 802440B0 3C128027 */  lui   $s2, 0x8027
/* 1373F4 802440B4 265200E8 */  addiu $s2, $s2, 0xe8
.L802440B8:
/* 1373F8 802440B8 0C050529 */  jal   create_icon
/* 1373FC 802440BC 8E040000 */   lw    $a0, ($s0)
/* 137400 802440C0 0040202D */  daddu $a0, $v0, $zero
/* 137404 802440C4 AE440000 */  sw    $a0, ($s2)
/* 137408 802440C8 8E020000 */  lw    $v0, ($s0)
/* 13740C 802440CC 54530003 */  bnel  $v0, $s3, .L802440DC
/* 137410 802440D0 24050080 */   addiu $a1, $zero, 0x80
/* 137414 802440D4 3C052000 */  lui   $a1, 0x2000
/* 137418 802440D8 34A50080 */  ori   $a1, $a1, 0x80
.L802440DC:
/* 13741C 802440DC 0C051280 */  jal   set_icon_flags
/* 137420 802440E0 26100004 */   addiu $s0, $s0, 4
/* 137424 802440E4 26310001 */  addiu $s1, $s1, 1
/* 137428 802440E8 2A220008 */  slti  $v0, $s1, 8
/* 13742C 802440EC 1440FFF2 */  bnez  $v0, .L802440B8
/* 137430 802440F0 26520004 */   addiu $s2, $s2, 4
/* 137434 802440F4 3C048025 */  lui   $a0, 0x8025
/* 137438 802440F8 2484F114 */  addiu $a0, $a0, -0xeec
/* 13743C 802440FC 24050004 */  addiu $a1, $zero, 4
/* 137440 80244100 3C108025 */  lui   $s0, 0x8025
/* 137444 80244104 2610EF80 */  addiu $s0, $s0, -0x1080
/* 137448 80244108 3C028027 */  lui   $v0, 0x8027
/* 13744C 8024410C 8C4200E8 */  lw    $v0, 0xe8($v0)
/* 137450 80244110 3C018027 */  lui   $at, 0x8027
/* 137454 80244114 AC2200D0 */  sw    $v0, 0xd0($at)
