.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel func_8004AB00
/* 025F00 8004AB00 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 025F04 8004AB04 AFB00030 */  sw    $s0, 0x30($sp)
/* 025F08 8004AB08 3C10800E */  lui   $s0, 0x800e
/* 025F0C 8004AB0C 26109248 */  addiu $s0, $s0, -0x6db8
/* 025F10 8004AB10 0200202D */  daddu $a0, $s0, $zero
/* 025F14 8004AB14 3C05801B */  lui   $a1, 0x801b
/* 025F18 8004AB18 24A5A000 */  addiu $a1, $a1, -0x6000
/* 025F1C 8004AB1C 3C060005 */  lui   $a2, 5
/* 025F20 8004AB20 24020001 */  addiu $v0, $zero, 1
/* 025F24 8004AB24 AFBF003C */  sw    $ra, 0x3c($sp)
/* 025F28 8004AB28 AFB20038 */  sw    $s2, 0x38($sp)
/* 025F2C 8004AB2C AFB10034 */  sw    $s1, 0x34($sp)
/* 025F30 8004AB30 3C018008 */  lui   $at, 0x8008
/* 025F34 8004AB34 A0228180 */  sb    $v0, -0x7e80($at)
/* 025F38 8004AB38 3C018008 */  lui   $at, 0x8008
/* 025F3C 8004AB3C A0208170 */  sb    $zero, -0x7e90($at)
/* 025F40 8004AB40 0C015FC8 */  jal   func_80057F20
/* 025F44 8004AB44 34C66000 */   ori   $a2, $a2, 0x6000
/* 025F48 8004AB48 24047D00 */  addiu $a0, $zero, 0x7d00
/* 025F4C 8004AB4C 24020018 */  addiu $v0, $zero, 0x18
/* 025F50 8004AB50 AFA20018 */  sw    $v0, 0x18($sp)
/* 025F54 8004AB54 24020004 */  addiu $v0, $zero, 4
/* 025F58 8004AB58 0C018558 */  jal   osAiSetFrequency
/* 025F5C 8004AB5C AFA2001C */   sw    $v0, 0x1c($sp)
/* 025F60 8004AB60 3C03800E */  lui   $v1, 0x800e
/* 025F64 8004AB64 8C63AAB8 */  lw    $v1, -0x5548($v1)
/* 025F68 8004AB68 00620018 */  mult  $v1, $v0
/* 025F6C 8004AB6C 00001812 */  mflo  $v1
/* 025F70 8004AB70 2464003B */  addiu $a0, $v1, 0x3b
/* 025F74 8004AB74 3C038888 */  lui   $v1, 0x8888
/* 025F78 8004AB78 34638889 */  ori   $v1, $v1, 0x8889
/* 025F7C 8004AB7C 00830019 */  multu $a0, $v1
/* 025F80 8004AB80 0000882D */  daddu $s1, $zero, $zero
/* 025F84 8004AB84 3C12800A */  lui   $s2, 0x800a
/* 025F88 8004AB88 26523510 */  addiu $s2, $s2, 0x3510
/* 025F8C 8004AB8C AFA20020 */  sw    $v0, 0x20($sp)
/* 025F90 8004AB90 00001810 */  mfhi  $v1
/* 025F94 8004AB94 3C02B216 */  lui   $v0, 0xb216
/* 025F98 8004AB98 344242C9 */  ori   $v0, $v0, 0x42c9
/* 025F9C 8004AB9C 00031942 */  srl   $v1, $v1, 5
/* 025FA0 8004ABA0 00620019 */  multu $v1, $v0
/* 025FA4 8004ABA4 A3A00024 */  sb    $zero, 0x24($sp)
/* 025FA8 8004ABA8 AFB0002C */  sw    $s0, 0x2c($sp)
/* 025FAC 8004ABAC 3C028005 */  lui   $v0, 0x8005
/* 025FB0 8004ABB0 2442B224 */  addiu $v0, $v0, -0x4ddc
/* 025FB4 8004ABB4 AFA20028 */  sw    $v0, 0x28($sp)
/* 025FB8 8004ABB8 00001810 */  mfhi  $v1
/* 025FBC 8004ABBC 000319C2 */  srl   $v1, $v1, 7
/* 025FC0 8004ABC0 24630001 */  addiu $v1, $v1, 1
/* 025FC4 8004ABC4 00031040 */  sll   $v0, $v1, 1
/* 025FC8 8004ABC8 00431021 */  addu  $v0, $v0, $v1
/* 025FCC 8004ABCC 000210C0 */  sll   $v0, $v0, 3
/* 025FD0 8004ABD0 00431023 */  subu  $v0, $v0, $v1
/* 025FD4 8004ABD4 000210C0 */  sll   $v0, $v0, 3
/* 025FD8 8004ABD8 3C01800A */  lui   $at, 0x800a
/* 025FDC 8004ABDC AC223634 */  sw    $v0, 0x3634($at)
/* 025FE0 8004ABE0 2442FF48 */  addiu $v0, $v0, -0xb8
/* 025FE4 8004ABE4 3C01800A */  lui   $at, 0x800a
/* 025FE8 8004ABE8 AC223638 */  sw    $v0, 0x3638($at)
.L8004ABEC:
/* 025FEC 8004ABEC 24050001 */  addiu $a1, $zero, 1
/* 025FF0 8004ABF0 24064000 */  addiu $a2, $zero, 0x4000
/* 025FF4 8004ABF4 8FA4002C */  lw    $a0, 0x2c($sp)
/* 025FF8 8004ABF8 0C015FE4 */  jal   alHeapAlloc
/* 025FFC 8004ABFC 02258821 */   addu  $s1, $s1, $a1
/* 026000 8004AC00 AE420000 */  sw    $v0, ($s2)
/* 026004 8004AC04 2E220003 */  sltiu $v0, $s1, 3
/* 026008 8004AC08 1440FFF8 */  bnez  $v0, .L8004ABEC
/* 02600C 8004AC0C 26520004 */   addiu $s2, $s2, 4
/* 026010 8004AC10 0000882D */  daddu $s1, $zero, $zero
/* 026014 8004AC14 24090002 */  addiu $t1, $zero, 2
/* 026018 8004AC18 3C08800E */  lui   $t0, 0x800e
/* 02601C 8004AC1C 25089780 */  addiu $t0, $t0, -0x6880
/* 026020 8004AC20 24070100 */  addiu $a3, $zero, 0x100
/* 026024 8004AC24 3C068007 */  lui   $a2, 0x8007
/* 026028 8004AC28 24C631A0 */  addiu $a2, $a2, 0x31a0
/* 02602C 8004AC2C 3C058009 */  lui   $a1, 0x8009
/* 026030 8004AC30 24A57A80 */  addiu $a1, $a1, 0x7a80
/* 026034 8004AC34 24040800 */  addiu $a0, $zero, 0x800
/* 026038 8004AC38 3C03800A */  lui   $v1, 0x800a
/* 02603C 8004AC3C 24633520 */  addiu $v1, $v1, 0x3520
.L8004AC40:
/* 026040 8004AC40 AC600000 */  sw    $zero, ($v1)
/* 026044 8004AC44 AC600054 */  sw    $zero, 0x54($v1)
/* 026048 8004AC48 AC690010 */  sw    $t1, 0x10($v1)
/* 02604C 8004AC4C AC680018 */  sw    $t0, 0x18($v1)
/* 026050 8004AC50 AC67001C */  sw    $a3, 0x1c($v1)
/* 026054 8004AC54 AC660020 */  sw    $a2, 0x20($v1)
/* 026058 8004AC58 AC650028 */  sw    $a1, 0x28($v1)
/* 02605C 8004AC5C AC64002C */  sw    $a0, 0x2c($v1)
/* 026060 8004AC60 AC600030 */  sw    $zero, 0x30($v1)
/* 026064 8004AC64 AC600034 */  sw    $zero, 0x34($v1)
/* 026068 8004AC68 AC600038 */  sw    $zero, 0x38($v1)
/* 02606C 8004AC6C AC60003C */  sw    $zero, 0x3c($v1)
/* 026070 8004AC70 AC600048 */  sw    $zero, 0x48($v1)
/* 026074 8004AC74 AC60004C */  sw    $zero, 0x4c($v1)
/* 026078 8004AC78 26310001 */  addiu $s1, $s1, 1
/* 02607C 8004AC7C 2E220003 */  sltiu $v0, $s1, 3
/* 026080 8004AC80 1440FFEF */  bnez  $v0, .L8004AC40
/* 026084 8004AC84 24630058 */   addiu $v1, $v1, 0x58
/* 026088 8004AC88 0000882D */  daddu $s1, $zero, $zero
/* 02608C 8004AC8C 3C10800A */  lui   $s0, 0x800a
/* 026090 8004AC90 26103628 */  addiu $s0, $s0, 0x3628
.L8004AC94:
/* 026094 8004AC94 24050001 */  addiu $a1, $zero, 1
/* 026098 8004AC98 02258821 */  addu  $s1, $s1, $a1
/* 02609C 8004AC9C 3C06800A */  lui   $a2, 0x800a
/* 0260A0 8004ACA0 8CC63634 */  lw    $a2, 0x3634($a2)
/* 0260A4 8004ACA4 8FA4002C */  lw    $a0, 0x2c($sp)
/* 0260A8 8004ACA8 0C015FE4 */  jal   alHeapAlloc
/* 0260AC 8004ACAC 00063080 */   sll   $a2, $a2, 2
/* 0260B0 8004ACB0 AE020000 */  sw    $v0, ($s0)
/* 0260B4 8004ACB4 2E220003 */  sltiu $v0, $s1, 3
/* 0260B8 8004ACB8 1440FFF6 */  bnez  $v0, .L8004AC94
/* 0260BC 8004ACBC 26100004 */   addiu $s0, $s0, 4
/* 0260C0 8004ACC0 0000882D */  daddu $s1, $zero, $zero
/* 0260C4 8004ACC4 3C02800A */  lui   $v0, 0x800a
/* 0260C8 8004ACC8 24423BE0 */  addiu $v0, $v0, 0x3be0
/* 0260CC 8004ACCC 0040802D */  daddu $s0, $v0, $zero
/* 0260D0 8004ACD0 26120014 */  addiu $s2, $s0, 0x14
/* 0260D4 8004ACD4 AE000004 */  sw    $zero, 4($s0)
/* 0260D8 8004ACD8 AE000000 */  sw    $zero, ($s0)
.L8004ACDC:
/* 0260DC 8004ACDC 0240202D */  daddu $a0, $s2, $zero
/* 0260E0 8004ACE0 0C012CFB */  jal   alLink
/* 0260E4 8004ACE4 0200282D */   daddu $a1, $s0, $zero
/* 0260E8 8004ACE8 24050001 */  addiu $a1, $zero, 1
/* 0260EC 8004ACEC 24060500 */  addiu $a2, $zero, 0x500
/* 0260F0 8004ACF0 26520014 */  addiu $s2, $s2, 0x14
/* 0260F4 8004ACF4 8FA4002C */  lw    $a0, 0x2c($sp)
/* 0260F8 8004ACF8 0C015FE4 */  jal   alHeapAlloc
/* 0260FC 8004ACFC 02258821 */   addu  $s1, $s1, $a1
/* 026100 8004AD00 AE020010 */  sw    $v0, 0x10($s0)
/* 026104 8004AD04 2E220031 */  sltiu $v0, $s1, 0x31
/* 026108 8004AD08 1440FFF4 */  bnez  $v0, .L8004ACDC
/* 02610C 8004AD0C 26100014 */   addiu $s0, $s0, 0x14
/* 026110 8004AD10 24050001 */  addiu $a1, $zero, 1
/* 026114 8004AD14 8FA4002C */  lw    $a0, 0x2c($sp)
/* 026118 8004AD18 0C015FE4 */  jal   alHeapAlloc
/* 02611C 8004AD1C 24060500 */   addiu $a2, $zero, 0x500
/* 026120 8004AD20 3C04800A */  lui   $a0, 0x800a
/* 026124 8004AD24 24843640 */  addiu $a0, $a0, 0x3640
/* 026128 8004AD28 3C05800A */  lui   $a1, 0x800a
/* 02612C 8004AD2C 24A53658 */  addiu $a1, $a1, 0x3658
/* 026130 8004AD30 00111880 */  sll   $v1, $s1, 2
/* 026134 8004AD34 00711821 */  addu  $v1, $v1, $s1
/* 026138 8004AD38 00031880 */  sll   $v1, $v1, 2
/* 02613C 8004AD3C 3C01800A */  lui   $at, 0x800a
/* 026140 8004AD40 00230821 */  addu  $at, $at, $v1
/* 026144 8004AD44 AC223BF0 */  sw    $v0, 0x3bf0($at)
/* 026148 8004AD48 0C019560 */  jal   osCreateMesgQueue
/* 02614C 8004AD4C 24060032 */   addiu $a2, $zero, 0x32
/* 026150 8004AD50 3C04800C */  lui   $a0, 0x800c
/* 026154 8004AD54 248491A0 */  addiu $a0, $a0, -0x6e60
/* 026158 8004AD58 3C028005 */  lui   $v0, 0x8005
/* 02615C 8004AD5C 2442B328 */  addiu $v0, $v0, -0x4cd8
/* 026160 8004AD60 3C018008 */  lui   $at, 0x8008
/* 026164 8004AD64 AC228174 */  sw    $v0, -0x7e8c($at)
/* 026168 8004AD68 0C015894 */  jal   func_80056250
/* 02616C 8004AD6C 27A50018 */   addiu $a1, $sp, 0x18
/* 026170 8004AD70 8FA40020 */  lw    $a0, 0x20($sp)
/* 026174 8004AD74 0C014B97 */  jal   func_80052E5C
/* 026178 8004AD78 00000000 */   nop   
/* 02617C 8004AD7C 3C10800A */  lui   $s0, 0x800a
/* 026180 8004AD80 26100F58 */  addiu $s0, $s0, 0xf58
/* 026184 8004AD84 0200202D */  daddu $a0, $s0, $zero
/* 026188 8004AD88 24050003 */  addiu $a1, $zero, 3
/* 02618C 8004AD8C 3C068005 */  lui   $a2, 0x8005
/* 026190 8004AD90 24C6AE08 */  addiu $a2, $a2, -0x51f8
/* 026194 8004AD94 3C02800A */  lui   $v0, 0x800a
/* 026198 8004AD98 24423510 */  addiu $v0, $v0, 0x3510
/* 02619C 8004AD9C AFA20010 */  sw    $v0, 0x10($sp)
/* 0261A0 8004ADA0 24020046 */  addiu $v0, $zero, 0x46
/* 0261A4 8004ADA4 0000382D */  daddu $a3, $zero, $zero
/* 0261A8 8004ADA8 0C019798 */  jal   osCreateThread
/* 0261AC 8004ADAC AFA20014 */   sw    $v0, 0x14($sp)
/* 0261B0 8004ADB0 0C019808 */  jal   osStartThread
/* 0261B4 8004ADB4 0200202D */   daddu $a0, $s0, $zero
/* 0261B8 8004ADB8 8FBF003C */  lw    $ra, 0x3c($sp)
/* 0261BC 8004ADBC 8FB20038 */  lw    $s2, 0x38($sp)
/* 0261C0 8004ADC0 8FB10034 */  lw    $s1, 0x34($sp)
/* 0261C4 8004ADC4 8FB00030 */  lw    $s0, 0x30($sp)
/* 0261C8 8004ADC8 03E00008 */  jr    $ra
/* 0261CC 8004ADCC 27BD0040 */   addiu $sp, $sp, 0x40

/* 0261D0 8004ADD0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0261D4 8004ADD4 AFB00010 */  sw    $s0, 0x10($sp)
/* 0261D8 8004ADD8 0080802D */  daddu $s0, $a0, $zero
/* 0261DC 8004ADDC AFBF0014 */  sw    $ra, 0x14($sp)
/* 0261E0 8004ADE0 0C018250 */  jal   osSetIntMask
/* 0261E4 8004ADE4 24040001 */   addiu $a0, $zero, 1
/* 0261E8 8004ADE8 3C018008 */  lui   $at, 0x8008
/* 0261EC 8004ADEC AC308174 */  sw    $s0, -0x7e8c($at)
/* 0261F0 8004ADF0 0C018250 */  jal   osSetIntMask
/* 0261F4 8004ADF4 0040202D */   daddu $a0, $v0, $zero
/* 0261F8 8004ADF8 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0261FC 8004ADFC 8FB00010 */  lw    $s0, 0x10($sp)
/* 026200 8004AE00 03E00008 */  jr    $ra
/* 026204 8004AE04 27BD0018 */   addiu $sp, $sp, 0x18

/* 026208 8004AE08 27BDFF50 */  addiu $sp, $sp, -0xb0
/* 02620C 8004AE0C AFB00088 */  sw    $s0, 0x88($sp)
/* 026210 8004AE10 27B00020 */  addiu $s0, $sp, 0x20
/* 026214 8004AE14 0200202D */  daddu $a0, $s0, $zero
/* 026218 8004AE18 27A50038 */  addiu $a1, $sp, 0x38
/* 02621C 8004AE1C 24060008 */  addiu $a2, $zero, 8
/* 026220 8004AE20 AFBF00AC */  sw    $ra, 0xac($sp)
/* 026224 8004AE24 AFBE00A8 */  sw    $fp, 0xa8($sp)
/* 026228 8004AE28 AFB700A4 */  sw    $s7, 0xa4($sp)
/* 02622C 8004AE2C AFB600A0 */  sw    $s6, 0xa0($sp)
/* 026230 8004AE30 AFB5009C */  sw    $s5, 0x9c($sp)
/* 026234 8004AE34 AFB40098 */  sw    $s4, 0x98($sp)
/* 026238 8004AE38 AFB30094 */  sw    $s3, 0x94($sp)
/* 02623C 8004AE3C AFB20090 */  sw    $s2, 0x90($sp)
/* 026240 8004AE40 0C019560 */  jal   osCreateMesgQueue
/* 026244 8004AE44 AFB1008C */   sw    $s1, 0x8c($sp)
/* 026248 8004AE48 27B10058 */  addiu $s1, $sp, 0x58
/* 02624C 8004AE4C 0220202D */  daddu $a0, $s1, $zero
/* 026250 8004AE50 27A50070 */  addiu $a1, $sp, 0x70
/* 026254 8004AE54 0C019560 */  jal   osCreateMesgQueue
/* 026258 8004AE58 24060001 */   addiu $a2, $zero, 1
/* 02625C 8004AE5C 27A40010 */  addiu $a0, $sp, 0x10
/* 026260 8004AE60 0200282D */  daddu $a1, $s0, $zero
/* 026264 8004AE64 0C017B8C */  jal   nuScAddClient
/* 026268 8004AE68 24060003 */   addiu $a2, $zero, 3
/* 02626C 8004AE6C 0000902D */  daddu $s2, $zero, $zero
/* 026270 8004AE70 0240982D */  daddu $s3, $s2, $zero
/* 026274 8004AE74 0240A82D */  daddu $s5, $s2, $zero
/* 026278 8004AE78 3C14800A */  lui   $s4, 0x800a
/* 02627C 8004AE7C 8E943510 */  lw    $s4, 0x3510($s4)
/* 026280 8004AE80 3C1E800A */  lui   $fp, 0x800a
/* 026284 8004AE84 8FDE3628 */  lw    $fp, 0x3628($fp)
/* 026288 8004AE88 3C178008 */  lui   $s7, 0x8008
/* 02628C 8004AE8C 26F78170 */  addiu $s7, $s7, -0x7e90
/* 026290 8004AE90 AFB10080 */  sw    $s1, 0x80($sp)
/* 026294 8004AE94 3C11800A */  lui   $s1, 0x800a
/* 026298 8004AE98 26313520 */  addiu $s1, $s1, 0x3520
/* 02629C 8004AE9C AFA00078 */  sw    $zero, 0x78($sp)
.L8004AEA0:
/* 0262A0 8004AEA0 27A40020 */  addiu $a0, $sp, 0x20
.L8004AEA4:
/* 0262A4 8004AEA4 27A50074 */  addiu $a1, $sp, 0x74
.L8004AEA8:
/* 0262A8 8004AEA8 0C0195BC */  jal   osRecvMesg
/* 0262AC 8004AEAC 24060001 */   addiu $a2, $zero, 1
/* 0262B0 8004AEB0 8FA20074 */  lw    $v0, 0x74($sp)
/* 0262B4 8004AEB4 84430000 */  lh    $v1, ($v0)
/* 0262B8 8004AEB8 24080001 */  addiu $t0, $zero, 1
/* 0262BC 8004AEBC 10680005 */  beq   $v1, $t0, .L8004AED4
/* 0262C0 8004AEC0 24020002 */   addiu $v0, $zero, 2
/* 0262C4 8004AEC4 1062005F */  beq   $v1, $v0, .L8004B044
/* 0262C8 8004AEC8 27A40020 */   addiu $a0, $sp, 0x20
/* 0262CC 8004AECC 08012BAA */  j     .L8004AEA8
/* 0262D0 8004AED0 27A50074 */   addiu $a1, $sp, 0x74

.L8004AED4:
/* 0262D4 8004AED4 8FA20078 */  lw    $v0, 0x78($sp)
/* 0262D8 8004AED8 10400021 */  beqz  $v0, .L8004AF60
/* 0262DC 8004AEDC 24080001 */   addiu $t0, $zero, 1
/* 0262E0 8004AEE0 3C028008 */  lui   $v0, 0x8008
/* 0262E4 8004AEE4 90428180 */  lbu   $v0, -0x7e80($v0)
/* 0262E8 8004AEE8 1448001D */  bne   $v0, $t0, .L8004AF60
/* 0262EC 8004AEEC 0100302D */   daddu $a2, $t0, $zero
/* 0262F0 8004AEF0 8FA80080 */  lw    $t0, 0x80($sp)
/* 0262F4 8004AEF4 3C04800E */  lui   $a0, 0x800e
/* 0262F8 8004AEF8 2484A444 */  addiu $a0, $a0, -0x5bbc
/* 0262FC 8004AEFC AE340040 */  sw    $s4, 0x40($s1)
/* 026300 8004AF00 AE280050 */  sw    $t0, 0x50($s1)
/* 026304 8004AF04 8FA8007C */  lw    $t0, 0x7c($sp)
/* 026308 8004AF08 0220282D */  daddu $a1, $s1, $zero
/* 02630C 8004AF0C 01141023 */  subu  $v0, $t0, $s4
/* 026310 8004AF10 000210C3 */  sra   $v0, $v0, 3
/* 026314 8004AF14 000210C0 */  sll   $v0, $v0, 3
/* 026318 8004AF18 0C019608 */  jal   osSendMesg
/* 02631C 8004AF1C AE220044 */   sw    $v0, 0x44($s1)
/* 026320 8004AF20 0C012C9A */  jal   nuAuCleanDMABuffers
/* 026324 8004AF24 26730001 */   addiu $s3, $s3, 1
/* 026328 8004AF28 0000282D */  daddu $a1, $zero, $zero
/* 02632C 8004AF2C 8FA40080 */  lw    $a0, 0x80($sp)
/* 026330 8004AF30 0C0195BC */  jal   osRecvMesg
/* 026334 8004AF34 24060001 */   addiu $a2, $zero, 1
/* 026338 8004AF38 24080003 */  addiu $t0, $zero, 3
/* 02633C 8004AF3C 52680001 */  beql  $s3, $t0, .L8004AF44
/* 026340 8004AF40 0000982D */   daddu $s3, $zero, $zero
.L8004AF44:
/* 026344 8004AF44 26520001 */  addiu $s2, $s2, 1
/* 026348 8004AF48 24080003 */  addiu $t0, $zero, 3
/* 02634C 8004AF4C 16480004 */  bne   $s2, $t0, .L8004AF60
/* 026350 8004AF50 26310058 */   addiu $s1, $s1, 0x58
/* 026354 8004AF54 3C11800A */  lui   $s1, 0x800a
/* 026358 8004AF58 26313520 */  addiu $s1, $s1, 0x3520
/* 02635C 8004AF5C 0000902D */  daddu $s2, $zero, $zero
.L8004AF60:
/* 026360 8004AF60 0C018554 */  jal   osAiGetStatus
/* 026364 8004AF64 00000000 */   nop   
/* 026368 8004AF68 04410003 */  bgez  $v0, .L8004AF78
/* 02636C 8004AF6C 00000000 */   nop   
/* 026370 8004AF70 08012BA8 */  j     .L8004AEA0
/* 026374 8004AF74 0000B02D */   daddu $s6, $zero, $zero

.L8004AF78:
/* 026378 8004AF78 0C018550 */  jal   osAiGetLength
/* 02637C 8004AF7C 00000000 */   nop   
/* 026380 8004AF80 8FA30078 */  lw    $v1, 0x78($sp)
/* 026384 8004AF84 10600011 */  beqz  $v1, .L8004AFCC
/* 026388 8004AF88 00028082 */   srl   $s0, $v0, 2
/* 02638C 8004AF8C 3C028008 */  lui   $v0, 0x8008
/* 026390 8004AF90 90428180 */  lbu   $v0, -0x7e80($v0)
/* 026394 8004AF94 24080001 */  addiu $t0, $zero, 1
/* 026398 8004AF98 1448000D */  bne   $v0, $t0, .L8004AFD0
/* 02639C 8004AF9C 2A0200B8 */   slti  $v0, $s0, 0xb8
/* 0263A0 8004AFA0 03C0202D */  daddu $a0, $fp, $zero
/* 0263A4 8004AFA4 0C0185A0 */  jal   osAiSetNextBuffer
/* 0263A8 8004AFA8 00152880 */   sll   $a1, $s5, 2
/* 0263AC 8004AFAC 00121080 */  sll   $v0, $s2, 2
/* 0263B0 8004AFB0 3C14800A */  lui   $s4, 0x800a
/* 0263B4 8004AFB4 0282A021 */  addu  $s4, $s4, $v0
/* 0263B8 8004AFB8 8E943510 */  lw    $s4, 0x3510($s4)
/* 0263BC 8004AFBC 00131080 */  sll   $v0, $s3, 2
/* 0263C0 8004AFC0 3C1E800A */  lui   $fp, 0x800a
/* 0263C4 8004AFC4 03C2F021 */  addu  $fp, $fp, $v0
/* 0263C8 8004AFC8 8FDE3628 */  lw    $fp, 0x3628($fp)
.L8004AFCC:
/* 0263CC 8004AFCC 2A0200B8 */  slti  $v0, $s0, 0xb8
.L8004AFD0:
/* 0263D0 8004AFD0 14400003 */  bnez  $v0, .L8004AFE0
/* 0263D4 8004AFD4 00000000 */   nop   
/* 0263D8 8004AFD8 12C00005 */  beqz  $s6, .L8004AFF0
/* 0263DC 8004AFDC 24160001 */   addiu $s6, $zero, 1
.L8004AFE0:
/* 0263E0 8004AFE0 3C15800A */  lui   $s5, 0x800a
/* 0263E4 8004AFE4 8EB53634 */  lw    $s5, 0x3634($s5)
/* 0263E8 8004AFE8 08012BFE */  j     .L8004AFF8
/* 0263EC 8004AFEC 0000B02D */   daddu $s6, $zero, $zero

.L8004AFF0:
/* 0263F0 8004AFF0 3C15800A */  lui   $s5, 0x800a
/* 0263F4 8004AFF4 8EB53638 */  lw    $s5, 0x3638($s5)
.L8004AFF8:
/* 0263F8 8004AFF8 0C0187A4 */  jal   osVirtualToPhysical
/* 0263FC 8004AFFC 03C0202D */   daddu $a0, $fp, $zero
/* 026400 8004B000 0280202D */  daddu $a0, $s4, $zero
/* 026404 8004B004 27A50078 */  addiu $a1, $sp, 0x78
/* 026408 8004B008 0040302D */  daddu $a2, $v0, $zero
/* 02640C 8004B00C 0C015970 */  jal   alAudioFrame
/* 026410 8004B010 02A0382D */   daddu $a3, $s5, $zero
/* 026414 8004B014 3C038008 */  lui   $v1, 0x8008
/* 026418 8004B018 8C638174 */  lw    $v1, -0x7e8c($v1)
/* 02641C 8004B01C 1060FFA0 */  beqz  $v1, .L8004AEA0
/* 026420 8004B020 AFA2007C */   sw    $v0, 0x7c($sp)
/* 026424 8004B024 92E20000 */  lbu   $v0, ($s7)
/* 026428 8004B028 1040FF9E */  beqz  $v0, .L8004AEA4
/* 02642C 8004B02C 27A40020 */   addiu $a0, $sp, 0x20
/* 026430 8004B030 0040282D */  daddu $a1, $v0, $zero
/* 026434 8004B034 0060F809 */  jalr  $v1
/* 026438 8004B038 24040001 */  addiu $a0, $zero, 1
/* 02643C 8004B03C 08012C19 */  j     .L8004B064
/* 026440 8004B040 00000000 */   nop   

.L8004B044:
/* 026444 8004B044 3C028008 */  lui   $v0, 0x8008
/* 026448 8004B048 8C428174 */  lw    $v0, -0x7e8c($v0)
/* 02644C 8004B04C 10400005 */  beqz  $v0, .L8004B064
/* 026450 8004B050 00000000 */   nop   
/* 026454 8004B054 3C058008 */  lui   $a1, 0x8008
/* 026458 8004B058 90A58170 */  lbu   $a1, -0x7e90($a1)
/* 02645C 8004B05C 0040F809 */  jalr  $v0
/* 026460 8004B060 24040002 */  addiu $a0, $zero, 2
.L8004B064:
/* 026464 8004B064 92E20000 */  lbu   $v0, ($s7)
/* 026468 8004B068 24420001 */  addiu $v0, $v0, 1
/* 02646C 8004B06C 08012BA8 */  j     .L8004AEA0
/* 026470 8004B070 A2E20000 */   sb    $v0, ($s7)

