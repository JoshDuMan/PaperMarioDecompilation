.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel func_8024A9A8
.L8024A9A8:
/* 13DCE8 8024A9A8 3C020002 */  lui   $v0, 2
/* 13DCEC 8024A9AC 3C038027 */  lui   $v1, 0x8027
/* 13DCF0 8024A9B0 8C6300C0 */  lw    $v1, 0xc0($v1)
/* 13DCF4 8024A9B4 34420010 */  ori   $v0, $v0, 0x10
/* 13DCF8 8024A9B8 00621024 */  and   $v0, $v1, $v0
/* 13DCFC 8024A9BC 10400030 */  beqz  $v0, .L8024AA80
/* 13DD00 8024A9C0 3C020002 */   lui   $v0, 2
/* 13DD04 8024A9C4 00621024 */  and   $v0, $v1, $v0
/* 13DD08 8024A9C8 1040001C */  beqz  $v0, .L8024AA3C
/* 13DD0C 8024A9CC 00000000 */   nop   
/* 13DD10 8024A9D0 3C068027 */  lui   $a2, 0x8027
/* 13DD14 8024A9D4 24C604C8 */  addiu $a2, $a2, 0x4c8
/* 13DD18 8024A9D8 8CC40000 */  lw    $a0, ($a2)
/* 13DD1C 8024A9DC 3C078027 */  lui   $a3, 0x8027
/* 13DD20 8024A9E0 24E704D0 */  addiu $a3, $a3, 0x4d0
/* 13DD24 8024A9E4 00041040 */  sll   $v0, $a0, 1
/* 13DD28 8024A9E8 00441021 */  addu  $v0, $v0, $a0
/* 13DD2C 8024A9EC 00021080 */  sll   $v0, $v0, 2
/* 13DD30 8024A9F0 00471021 */  addu  $v0, $v0, $a3
/* 13DD34 8024A9F4 90430001 */  lbu   $v1, 1($v0)
/* 13DD38 8024A9F8 90420003 */  lbu   $v0, 3($v0)
/* 13DD3C 8024A9FC 24A50001 */  addiu $a1, $a1, 1
/* 13DD40 8024AA00 00621821 */  addu  $v1, $v1, $v0
/* 13DD44 8024AA04 00A3182A */  slt   $v1, $a1, $v1
/* 13DD48 8024AA08 1460001D */  bnez  $v1, .L8024AA80
/* 13DD4C 8024AA0C 24820001 */   addiu $v0, $a0, 1
/* 13DD50 8024AA10 00021840 */  sll   $v1, $v0, 1
/* 13DD54 8024AA14 00621821 */  addu  $v1, $v1, $v0
/* 13DD58 8024AA18 00031880 */  sll   $v1, $v1, 2
/* 13DD5C 8024AA1C 00671821 */  addu  $v1, $v1, $a3
/* 13DD60 8024AA20 ACC20000 */  sw    $v0, ($a2)
/* 13DD64 8024AA24 90620000 */  lbu   $v0, ($v1)
/* 13DD68 8024AA28 14400015 */  bnez  $v0, .L8024AA80
/* 13DD6C 8024AA2C 00000000 */   nop   
/* 13DD70 8024AA30 ACC40000 */  sw    $a0, ($a2)
/* 13DD74 8024AA34 08092AA0 */  j     func_8024AA80
/* 13DD78 8024AA38 24A5FFFF */   addiu $a1, $a1, -1

.L8024AA3C:
/* 13DD7C 8024AA3C 3C068027 */  lui   $a2, 0x8027
/* 13DD80 8024AA40 24C604C8 */  addiu $a2, $a2, 0x4c8
/* 13DD84 8024AA44 8CC70000 */  lw    $a3, ($a2)
/* 13DD88 8024AA48 3C048027 */  lui   $a0, 0x8027
/* 13DD8C 8024AA4C 248404D0 */  addiu $a0, $a0, 0x4d0
/* 13DD90 8024AA50 24E30001 */  addiu $v1, $a3, 1
/* 13DD94 8024AA54 00031040 */  sll   $v0, $v1, 1
/* 13DD98 8024AA58 00431021 */  addu  $v0, $v0, $v1
/* 13DD9C 8024AA5C 00021080 */  sll   $v0, $v0, 2
/* 13DDA0 8024AA60 ACC30000 */  sw    $v1, ($a2)
/* 13DDA4 8024AA64 00441821 */  addu  $v1, $v0, $a0
/* 13DDA8 8024AA68 90620000 */  lbu   $v0, ($v1)
/* 13DDAC 8024AA6C 14400003 */  bnez  $v0, .L8024AA7C
/* 13DDB0 8024AA70 00000000 */   nop   
/* 13DDB4 8024AA74 08092AA0 */  j     func_8024AA80
/* 13DDB8 8024AA78 ACC70000 */   sw    $a3, ($a2)

.L8024AA7C:
/* 13DDBC 8024AA7C 90650001 */  lbu   $a1, 1($v1)
