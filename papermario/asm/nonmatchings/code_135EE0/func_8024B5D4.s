.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel func_8024B5D4
/* 13E914 8024B5D4 14610004 */  bne   $v1, $at, .L8024B5E8
/* 13E918 8024B5D8 3C018000 */   lui   $at, 0x8000
/* 13E91C 8024B5DC 14C10002 */  bne   $a2, $at, .L8024B5E8
/* 13E920 8024B5E0 00000000 */   nop   
/* 13E924 8024B5E4 0006000D */  break 6
.L8024B5E8:
/* 13E928 8024B5E8 00002010 */  mfhi  $a0
/* 13E92C 8024B5EC 3C014080 */  lui   $at, 0x4080
/* 13E930 8024B5F0 44814000 */  mtc1  $at, $f8
/* 13E934 8024B5F4 448B3000 */  mtc1  $t3, $f6
/* 13E938 8024B5F8 00000000 */  nop   
/* 13E93C 8024B5FC 468031A0 */  cvt.s.w $f6, $f6
/* 13E940 8024B600 46083182 */  mul.s $f6, $f6, $f8
/* 13E944 8024B604 00000000 */  nop   
/* 13E948 8024B608 3C19E700 */  lui   $t9, 0xe700
/* 13E94C 8024B60C 3C1E8025 */  lui   $fp, 0x8025
/* 13E950 8024B610 27DEF73C */  addiu $fp, $fp, -0x8c4
/* 13E954 8024B614 44851000 */  mtc1  $a1, $f2
/* 13E958 8024B618 00000000 */  nop   
/* 13E95C 8024B61C 468010A0 */  cvt.s.w $f2, $f2
/* 13E960 8024B620 3C05ED00 */  lui   $a1, 0xed00
/* 13E964 8024B624 46081082 */  mul.s $f2, $f2, $f8
/* 13E968 8024B628 00000000 */  nop   
/* 13E96C 8024B62C 3C0CF548 */  lui   $t4, 0xf548
/* 13E970 8024B630 358C2600 */  ori   $t4, $t4, 0x2600
/* 13E974 8024B634 44890000 */  mtc1  $t1, $f0
/* 13E978 8024B638 00000000 */  nop   
/* 13E97C 8024B63C 46800020 */  cvt.s.w $f0, $f0
/* 13E980 8024B640 448A2000 */  mtc1  $t2, $f4
/* 13E984 8024B644 00000000 */  nop   
/* 13E988 8024B648 46802120 */  cvt.s.w $f4, $f4
/* 13E98C 8024B64C 46080002 */  mul.s $f0, $f0, $f8
/* 13E990 8024B650 00000000 */  nop   
/* 13E994 8024B654 AFAC0110 */  sw    $t4, 0x110($sp)
/* 13E998 8024B658 3C02800A */  lui   $v0, 0x800a
/* 13E99C 8024B65C 2442A66C */  addiu $v0, $v0, -0x5994
/* 13E9A0 8024B660 0040882D */  daddu $s1, $v0, $zero
/* 13E9A4 8024B664 8E220000 */  lw    $v0, ($s1)
/* 13E9A8 8024B668 46082102 */  mul.s $f4, $f4, $f8
/* 13E9AC 8024B66C 00000000 */  nop   
/* 13E9B0 8024B670 AFA00114 */  sw    $zero, 0x114($sp)
/* 13E9B4 8024B674 0040402D */  daddu $t0, $v0, $zero
/* 13E9B8 8024B678 24420008 */  addiu $v0, $v0, 8
/* 13E9BC 8024B67C AE220000 */  sw    $v0, ($s1)
/* 13E9C0 8024B680 4600128D */  trunc.w.s $f10, $f2
/* 13E9C4 8024B684 44025000 */  mfc1  $v0, $f10
/* 13E9C8 8024B688 00000000 */  nop   
/* 13E9CC 8024B68C 30420FFF */  andi  $v0, $v0, 0xfff
/* 13E9D0 8024B690 00021300 */  sll   $v0, $v0, 0xc
/* 13E9D4 8024B694 4600028D */  trunc.w.s $f10, $f0
/* 13E9D8 8024B698 44035000 */  mfc1  $v1, $f10
/* 13E9DC 8024B69C 00000000 */  nop   
/* 13E9E0 8024B6A0 30630FFF */  andi  $v1, $v1, 0xfff
/* 13E9E4 8024B6A4 00651825 */  or    $v1, $v1, $a1
/* 13E9E8 8024B6A8 00431025 */  or    $v0, $v0, $v1
/* 13E9EC 8024B6AC AD020000 */  sw    $v0, ($t0)
/* 13E9F0 8024B6B0 00061140 */  sll   $v0, $a2, 5
/* 13E9F4 8024B6B4 00461023 */  subu  $v0, $v0, $a2
/* 13E9F8 8024B6B8 00021080 */  sll   $v0, $v0, 2
/* 13E9FC 8024B6BC 00461021 */  addu  $v0, $v0, $a2
/* 13EA00 8024B6C0 00021900 */  sll   $v1, $v0, 4
/* 13EA04 8024B6C4 00621823 */  subu  $v1, $v1, $v0
/* 13EA08 8024B6C8 000318C0 */  sll   $v1, $v1, 3
/* 13EA0C 8024B6CC 0067B823 */  subu  $s7, $v1, $a3
/* 13EA10 8024B6D0 44971000 */  mtc1  $s7, $f2
/* 13EA14 8024B6D4 00000000 */  nop   
/* 13EA18 8024B6D8 468010A1 */  cvt.d.w $f2, $f2
/* 13EA1C 8024B6DC 3C018027 */  lui   $at, 0x8027
/* 13EA20 8024B6E0 D4200040 */  ldc1  $f0, 0x40($at)
/* 13EA24 8024B6E4 4600228D */  trunc.w.s $f10, $f4
/* 13EA28 8024B6E8 44025000 */  mfc1  $v0, $f10
/* 13EA2C 8024B6EC 46201082 */  mul.d $f2, $f2, $f0
/* 13EA30 8024B6F0 00000000 */  nop   
/* 13EA34 8024B6F4 30420FFF */  andi  $v0, $v0, 0xfff
/* 13EA38 8024B6F8 00021300 */  sll   $v0, $v0, 0xc
/* 13EA3C 8024B6FC 4600328D */  trunc.w.s $f10, $f6
/* 13EA40 8024B700 44035000 */  mfc1  $v1, $f10
/* 13EA44 8024B704 00000000 */  nop   
/* 13EA48 8024B708 30630FFF */  andi  $v1, $v1, 0xfff
/* 13EA4C 8024B70C 00431025 */  or    $v0, $v0, $v1
/* 13EA50 8024B710 AD020004 */  sw    $v0, 4($t0)
/* 13EA54 8024B714 4620128D */  trunc.w.d $f10, $f2
/* 13EA58 8024B718 44175000 */  mfc1  $s7, $f10
/* 13EA5C 8024B71C 0C092B78 */  jal   func_8024ADE0
/* 13EA60 8024B720 AFB90120 */   sw    $t9, 0x120($sp)
/* 13EA64 8024B724 8FB90120 */  lw    $t9, 0x120($sp)
.L8024B728:
/* 13EA68 8024B728 3C05F500 */  lui   $a1, 0xf500
/* 13EA6C 8024B72C 34A50100 */  ori   $a1, $a1, 0x100
/* 13EA70 8024B730 3C06073F */  lui   $a2, 0x73f
/* 13EA74 8024B734 34C6C000 */  ori   $a2, $a2, 0xc000
/* 13EA78 8024B738 0000802D */  daddu $s0, $zero, $zero
/* 13EA7C 8024B73C 26E20082 */  addiu $v0, $s7, 0x82
/* 13EA80 8024B740 2413000C */  addiu $s3, $zero, 0xc
/* 13EA84 8024B744 0200B02D */  daddu $s6, $s0, $zero
/* 13EA88 8024B748 24150018 */  addiu $s5, $zero, 0x18
/* 13EA8C 8024B74C 8FAD018C */  lw    $t5, 0x18c($sp)
/* 13EA90 8024B750 0200A02D */  daddu $s4, $s0, $zero
/* 13EA94 8024B754 01A21021 */  addu  $v0, $t5, $v0
/* 13EA98 8024B758 AFA20128 */  sw    $v0, 0x128($sp)
/* 13EA9C 8024B75C 26E20118 */  addiu $v0, $s7, 0x118
/* 13EAA0 8024B760 01A21021 */  addu  $v0, $t5, $v0
/* 13EAA4 8024B764 AFA20124 */  sw    $v0, 0x124($sp)
/* 13EAA8 8024B768 8E230000 */  lw    $v1, ($s1)
/* 13EAAC 8024B76C 3C02DE00 */  lui   $v0, 0xde00
/* 13EAB0 8024B770 0060202D */  daddu $a0, $v1, $zero
/* 13EAB4 8024B774 24630008 */  addiu $v1, $v1, 8
/* 13EAB8 8024B778 AE230000 */  sw    $v1, ($s1)
/* 13EABC 8024B77C AC820000 */  sw    $v0, ($a0)
/* 13EAC0 8024B780 3C028025 */  lui   $v0, 0x8025
/* 13EAC4 8024B784 2442F750 */  addiu $v0, $v0, -0x8b0
/* 13EAC8 8024B788 AC820004 */  sw    $v0, 4($a0)
/* 13EACC 8024B78C 24620008 */  addiu $v0, $v1, 8
/* 13EAD0 8024B790 AE220000 */  sw    $v0, ($s1)
/* 13EAD4 8024B794 3C02FD10 */  lui   $v0, 0xfd10
/* 13EAD8 8024B798 AC620000 */  sw    $v0, ($v1)
/* 13EADC 8024B79C 24620010 */  addiu $v0, $v1, 0x10
/* 13EAE0 8024B7A0 AE220000 */  sw    $v0, ($s1)
/* 13EAE4 8024B7A4 8FAF0114 */  lw    $t7, 0x114($sp)
/* 13EAE8 8024B7A8 0200902D */  daddu $s2, $s0, $zero
/* 13EAEC 8024B7AC 3C048025 */  lui   $a0, 0x8025
/* 13EAF0 8024B7B0 008F2021 */  addu  $a0, $a0, $t7
/* 13EAF4 8024B7B4 8C84F744 */  lw    $a0, -0x8bc($a0)
/* 13EAF8 8024B7B8 3C02E800 */  lui   $v0, 0xe800
