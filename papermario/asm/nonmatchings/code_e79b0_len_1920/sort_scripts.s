.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel sort_scripts
/* 0E79B0 802C3000 27BDFFF8 */  addiu $sp, $sp, -8
/* 0E79B4 802C3004 0000682D */  daddu $t5, $zero, $zero
/* 0E79B8 802C3008 01A0482D */  daddu $t1, $t5, $zero
/* 0E79BC 802C300C 3C05802E */  lui   $a1, 0x802e
/* 0E79C0 802C3010 24A5AA98 */  addiu $a1, $a1, -0x5568
/* 0E79C4 802C3014 3C06802E */  lui   $a2, 0x802e
/* 0E79C8 802C3018 8CC6A890 */  lw    $a2, -0x5770($a2)
/* 0E79CC 802C301C 3C04802E */  lui   $a0, 0x802e
/* 0E79D0 802C3020 2484A898 */  addiu $a0, $a0, -0x5768
/* 0E79D4 802C3024 AFB00000 */  sw    $s0, ($sp)
.L802C3028:
/* 0E79D8 802C3028 8CC30000 */  lw    $v1, ($a2)
/* 0E79DC 802C302C 5060000B */  beql  $v1, $zero, .L802C305C
/* 0E79E0 802C3030 25290001 */   addiu $t1, $t1, 1
/* 0E79E4 802C3034 90620000 */  lbu   $v0, ($v1)
/* 0E79E8 802C3038 50400008 */  beql  $v0, $zero, .L802C305C
/* 0E79EC 802C303C 25290001 */   addiu $t1, $t1, 1
/* 0E79F0 802C3040 AC890000 */  sw    $t1, ($a0)
/* 0E79F4 802C3044 24840004 */  addiu $a0, $a0, 4
/* 0E79F8 802C3048 8C620144 */  lw    $v0, 0x144($v1)
/* 0E79FC 802C304C 25AD0001 */  addiu $t5, $t5, 1
/* 0E7A00 802C3050 ACA20000 */  sw    $v0, ($a1)
/* 0E7A04 802C3054 24A50004 */  addiu $a1, $a1, 4
/* 0E7A08 802C3058 25290001 */  addiu $t1, $t1, 1
.L802C305C:
/* 0E7A0C 802C305C 29220080 */  slti  $v0, $t1, 0x80
/* 0E7A10 802C3060 1440FFF1 */  bnez  $v0, .L802C3028
/* 0E7A14 802C3064 24C60004 */   addiu $a2, $a2, 4
/* 0E7A18 802C3068 3C01802E */  lui   $at, 0x802e
/* 0E7A1C 802C306C AC2DAC98 */  sw    $t5, -0x5368($at)
/* 0E7A20 802C3070 25A2FFFF */  addiu $v0, $t5, -1
/* 0E7A24 802C3074 18400031 */  blez  $v0, .L802C313C
/* 0E7A28 802C3078 0000482D */   daddu $t1, $zero, $zero
/* 0E7A2C 802C307C 3C10802E */  lui   $s0, 0x802e
/* 0E7A30 802C3080 2610A890 */  addiu $s0, $s0, -0x5770
/* 0E7A34 802C3084 3C0E802E */  lui   $t6, 0x802e
/* 0E7A38 802C3088 25CEAA98 */  addiu $t6, $t6, -0x5568
/* 0E7A3C 802C308C 01C0C82D */  daddu $t9, $t6, $zero
/* 0E7A40 802C3090 3C18802E */  lui   $t8, 0x802e
/* 0E7A44 802C3094 2718A898 */  addiu $t8, $t8, -0x5768
/* 0E7A48 802C3098 0300782D */  daddu $t7, $t8, $zero
.L802C309C:
/* 0E7A4C 802C309C 25280001 */  addiu $t0, $t1, 1
/* 0E7A50 802C30A0 010D102A */  slt   $v0, $t0, $t5
/* 0E7A54 802C30A4 50400020 */  beql  $v0, $zero, .L802C3128
/* 0E7A58 802C30A8 25CE0004 */   addiu $t6, $t6, 4
/* 0E7A5C 802C30AC 01E0602D */  daddu $t4, $t7, $zero
/* 0E7A60 802C30B0 8E0B0000 */  lw    $t3, ($s0)
/* 0E7A64 802C30B4 01C0502D */  daddu $t2, $t6, $zero
/* 0E7A68 802C30B8 00081080 */  sll   $v0, $t0, 2
/* 0E7A6C 802C30BC 00593821 */  addu  $a3, $v0, $t9
/* 0E7A70 802C30C0 00583021 */  addu  $a2, $v0, $t8
.L802C30C4:
/* 0E7A74 802C30C4 8D850000 */  lw    $a1, ($t4)
/* 0E7A78 802C30C8 8CC40000 */  lw    $a0, ($a2)
/* 0E7A7C 802C30CC 00051880 */  sll   $v1, $a1, 2
/* 0E7A80 802C30D0 006B1821 */  addu  $v1, $v1, $t3
/* 0E7A84 802C30D4 00041080 */  sll   $v0, $a0, 2
/* 0E7A88 802C30D8 004B1021 */  addu  $v0, $v0, $t3
/* 0E7A8C 802C30DC 8C630000 */  lw    $v1, ($v1)
/* 0E7A90 802C30E0 8C420000 */  lw    $v0, ($v0)
/* 0E7A94 802C30E4 90630003 */  lbu   $v1, 3($v1)
/* 0E7A98 802C30E8 90420003 */  lbu   $v0, 3($v0)
/* 0E7A9C 802C30EC 0043102B */  sltu  $v0, $v0, $v1
/* 0E7AA0 802C30F0 50400008 */  beql  $v0, $zero, .L802C3114
/* 0E7AA4 802C30F4 24E70004 */   addiu $a3, $a3, 4
/* 0E7AA8 802C30F8 AD840000 */  sw    $a0, ($t4)
/* 0E7AAC 802C30FC ACC50000 */  sw    $a1, ($a2)
/* 0E7AB0 802C3100 8CE20000 */  lw    $v0, ($a3)
/* 0E7AB4 802C3104 8D430000 */  lw    $v1, ($t2)
/* 0E7AB8 802C3108 AD420000 */  sw    $v0, ($t2)
/* 0E7ABC 802C310C ACE30000 */  sw    $v1, ($a3)
/* 0E7AC0 802C3110 24E70004 */  addiu $a3, $a3, 4
.L802C3114:
/* 0E7AC4 802C3114 25080001 */  addiu $t0, $t0, 1
/* 0E7AC8 802C3118 010D102A */  slt   $v0, $t0, $t5
/* 0E7ACC 802C311C 1440FFE9 */  bnez  $v0, .L802C30C4
/* 0E7AD0 802C3120 24C60004 */   addiu $a2, $a2, 4
/* 0E7AD4 802C3124 25CE0004 */  addiu $t6, $t6, 4
.L802C3128:
/* 0E7AD8 802C3128 25290001 */  addiu $t1, $t1, 1
/* 0E7ADC 802C312C 25A2FFFF */  addiu $v0, $t5, -1
/* 0E7AE0 802C3130 0122102A */  slt   $v0, $t1, $v0
/* 0E7AE4 802C3134 1440FFD9 */  bnez  $v0, .L802C309C
/* 0E7AE8 802C3138 25EF0004 */   addiu $t7, $t7, 4
.L802C313C:
/* 0E7AEC 802C313C 8FB00000 */  lw    $s0, ($sp)
/* 0E7AF0 802C3140 03E00008 */  jr    $ra
/* 0E7AF4 802C3144 27BD0008 */   addiu $sp, $sp, 8

