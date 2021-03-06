.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel set_part_goal_to_actor_part
/* 1982B8 802699D8 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 1982BC 802699DC 00A0202D */  daddu $a0, $a1, $zero
/* 1982C0 802699E0 AFB20018 */  sw    $s2, 0x18($sp)
/* 1982C4 802699E4 00C0902D */  daddu $s2, $a2, $zero
/* 1982C8 802699E8 AFB00010 */  sw    $s0, 0x10($sp)
/* 1982CC 802699EC 30900700 */  andi  $s0, $a0, 0x700
/* 1982D0 802699F0 AFBF001C */  sw    $ra, 0x1c($sp)
/* 1982D4 802699F4 0C09A75B */  jal   get_actor
/* 1982D8 802699F8 AFB10014 */   sw    $s1, 0x14($sp)
/* 1982DC 802699FC 0040882D */  daddu $s1, $v0, $zero
/* 1982E0 80269A00 24020100 */  addiu $v0, $zero, 0x100
/* 1982E4 80269A04 12020028 */  beq   $s0, $v0, .L80269AA8
/* 1982E8 80269A08 2A020101 */   slti  $v0, $s0, 0x101
/* 1982EC 80269A0C 50400005 */  beql  $v0, $zero, .L80269A24
/* 1982F0 80269A10 24020200 */   addiu $v0, $zero, 0x200
/* 1982F4 80269A14 12000007 */  beqz  $s0, .L80269A34
/* 1982F8 80269A18 0220202D */   daddu $a0, $s1, $zero
/* 1982FC 80269A1C 0809A703 */  j     .L80269C0C
/* 198300 80269A20 00000000 */   nop   

.L80269A24:
/* 198304 80269A24 12020021 */  beq   $s0, $v0, .L80269AAC
/* 198308 80269A28 0220202D */   daddu $a0, $s1, $zero
/* 19830C 80269A2C 0809A703 */  j     .L80269C0C
/* 198310 80269A30 00000000 */   nop   

.L80269A34:
/* 198314 80269A34 0C099117 */  jal   get_actor_part
/* 198318 80269A38 0000282D */   daddu $a1, $zero, $zero
/* 19831C 80269A3C 0040202D */  daddu $a0, $v0, $zero
/* 198320 80269A40 84820014 */  lh    $v0, 0x14($a0)
/* 198324 80269A44 C6220188 */  lwc1  $f2, 0x188($s1)
/* 198328 80269A48 44820000 */  mtc1  $v0, $f0
/* 19832C 80269A4C 00000000 */  nop   
/* 198330 80269A50 46800020 */  cvt.s.w $f0, $f0
/* 198334 80269A54 46020002 */  mul.s $f0, $f0, $f2
/* 198338 80269A58 00000000 */  nop   
/* 19833C 80269A5C C6220144 */  lwc1  $f2, 0x144($s1)
/* 198340 80269A60 46001080 */  add.s $f2, $f2, $f0
/* 198344 80269A64 8C820010 */  lw    $v0, 0x10($a0)
/* 198348 80269A68 E442000C */  swc1  $f2, 0xc($v0)
/* 19834C 80269A6C 84820016 */  lh    $v0, 0x16($a0)
/* 198350 80269A70 C6220188 */  lwc1  $f2, 0x188($s1)
/* 198354 80269A74 44820000 */  mtc1  $v0, $f0
/* 198358 80269A78 00000000 */  nop   
/* 19835C 80269A7C 46800020 */  cvt.s.w $f0, $f0
/* 198360 80269A80 46020002 */  mul.s $f0, $f0, $f2
/* 198364 80269A84 00000000 */  nop   
/* 198368 80269A88 C6220148 */  lwc1  $f2, 0x148($s1)
/* 19836C 80269A8C 46001080 */  add.s $f2, $f2, $f0
/* 198370 80269A90 8C820010 */  lw    $v0, 0x10($a0)
/* 198374 80269A94 E4420010 */  swc1  $f2, 0x10($v0)
/* 198378 80269A98 8C820010 */  lw    $v0, 0x10($a0)
/* 19837C 80269A9C C620014C */  lwc1  $f0, 0x14c($s1)
/* 198380 80269AA0 0809A703 */  j     .L80269C0C
/* 198384 80269AA4 E4400014 */   swc1  $f0, 0x14($v0)

.L80269AA8:
/* 198388 80269AA8 0220202D */  daddu $a0, $s1, $zero
.L80269AAC:
/* 19838C 80269AAC 0C099117 */  jal   get_actor_part
/* 198390 80269AB0 0240282D */   daddu $a1, $s2, $zero
/* 198394 80269AB4 0040202D */  daddu $a0, $v0, $zero
/* 198398 80269AB8 8C820000 */  lw    $v0, ($a0)
/* 19839C 80269ABC 3C030010 */  lui   $v1, 0x10
/* 1983A0 80269AC0 00431024 */  and   $v0, $v0, $v1
/* 1983A4 80269AC4 1440002D */  bnez  $v0, .L80269B7C
/* 1983A8 80269AC8 00000000 */   nop   
/* 1983AC 80269ACC 84820014 */  lh    $v0, 0x14($a0)
/* 1983B0 80269AD0 8483006C */  lh    $v1, 0x6c($a0)
/* 1983B4 80269AD4 C6220188 */  lwc1  $f2, 0x188($s1)
/* 1983B8 80269AD8 00431021 */  addu  $v0, $v0, $v1
/* 1983BC 80269ADC 44820000 */  mtc1  $v0, $f0
/* 1983C0 80269AE0 00000000 */  nop   
/* 1983C4 80269AE4 46800020 */  cvt.s.w $f0, $f0
/* 1983C8 80269AE8 46020002 */  mul.s $f0, $f0, $f2
/* 1983CC 80269AEC 00000000 */  nop   
/* 1983D0 80269AF0 C6220144 */  lwc1  $f2, 0x144($s1)
/* 1983D4 80269AF4 46001080 */  add.s $f2, $f2, $f0
/* 1983D8 80269AF8 8C820010 */  lw    $v0, 0x10($a0)
/* 1983DC 80269AFC E442000C */  swc1  $f2, 0xc($v0)
/* 1983E0 80269B00 8E220000 */  lw    $v0, ($s1)
/* 1983E4 80269B04 30420800 */  andi  $v0, $v0, 0x800
/* 1983E8 80269B08 14400006 */  bnez  $v0, .L80269B24
/* 1983EC 80269B0C 00000000 */   nop   
/* 1983F0 80269B10 84820016 */  lh    $v0, 0x16($a0)
/* 1983F4 80269B14 8483006E */  lh    $v1, 0x6e($a0)
/* 1983F8 80269B18 C6220188 */  lwc1  $f2, 0x188($s1)
/* 1983FC 80269B1C 0809A6CE */  j     .L80269B38
/* 198400 80269B20 00431021 */   addu  $v0, $v0, $v1

.L80269B24:
/* 198404 80269B24 84820016 */  lh    $v0, 0x16($a0)
/* 198408 80269B28 8483006E */  lh    $v1, 0x6e($a0)
/* 19840C 80269B2C C6220188 */  lwc1  $f2, 0x188($s1)
/* 198410 80269B30 00021023 */  negu  $v0, $v0
/* 198414 80269B34 00431023 */  subu  $v0, $v0, $v1
.L80269B38:
/* 198418 80269B38 44820000 */  mtc1  $v0, $f0
/* 19841C 80269B3C 00000000 */  nop   
/* 198420 80269B40 46800020 */  cvt.s.w $f0, $f0
/* 198424 80269B44 46020002 */  mul.s $f0, $f0, $f2
/* 198428 80269B48 00000000 */  nop   
/* 19842C 80269B4C C6220148 */  lwc1  $f2, 0x148($s1)
/* 198430 80269B50 46001080 */  add.s $f2, $f2, $f0
/* 198434 80269B54 8C820010 */  lw    $v0, 0x10($a0)
/* 198438 80269B58 E4420010 */  swc1  $f2, 0x10($v0)
/* 19843C 80269B5C 84820018 */  lh    $v0, 0x18($a0)
/* 198440 80269B60 C620014C */  lwc1  $f0, 0x14c($s1)
/* 198444 80269B64 44821000 */  mtc1  $v0, $f2
/* 198448 80269B68 00000000 */  nop   
/* 19844C 80269B6C 468010A0 */  cvt.s.w $f2, $f2
/* 198450 80269B70 8C820010 */  lw    $v0, 0x10($a0)
/* 198454 80269B74 0809A702 */  j     .L80269C08
/* 198458 80269B78 46020000 */   add.s $f0, $f0, $f2

.L80269B7C:
/* 19845C 80269B7C 8482006C */  lh    $v0, 0x6c($a0)
/* 198460 80269B80 C480002C */  lwc1  $f0, 0x2c($a0)
/* 198464 80269B84 44821000 */  mtc1  $v0, $f2
/* 198468 80269B88 00000000 */  nop   
/* 19846C 80269B8C 468010A0 */  cvt.s.w $f2, $f2
/* 198470 80269B90 46020000 */  add.s $f0, $f0, $f2
/* 198474 80269B94 8C820010 */  lw    $v0, 0x10($a0)
/* 198478 80269B98 E440000C */  swc1  $f0, 0xc($v0)
/* 19847C 80269B9C 8E220000 */  lw    $v0, ($s1)
/* 198480 80269BA0 30420800 */  andi  $v0, $v0, 0x800
/* 198484 80269BA4 1440000B */  bnez  $v0, .L80269BD4
/* 198488 80269BA8 00000000 */   nop   
/* 19848C 80269BAC 8482006E */  lh    $v0, 0x6e($a0)
/* 198490 80269BB0 C6220188 */  lwc1  $f2, 0x188($s1)
/* 198494 80269BB4 44820000 */  mtc1  $v0, $f0
/* 198498 80269BB8 00000000 */  nop   
/* 19849C 80269BBC 46800020 */  cvt.s.w $f0, $f0
/* 1984A0 80269BC0 46020002 */  mul.s $f0, $f0, $f2
/* 1984A4 80269BC4 00000000 */  nop   
/* 1984A8 80269BC8 C4820030 */  lwc1  $f2, 0x30($a0)
/* 1984AC 80269BCC 0809A6FE */  j     .L80269BF8
/* 1984B0 80269BD0 46001080 */   add.s $f2, $f2, $f0

.L80269BD4:
/* 1984B4 80269BD4 8482006E */  lh    $v0, 0x6e($a0)
/* 1984B8 80269BD8 C6220188 */  lwc1  $f2, 0x188($s1)
/* 1984BC 80269BDC 44820000 */  mtc1  $v0, $f0
/* 1984C0 80269BE0 00000000 */  nop   
/* 1984C4 80269BE4 46800020 */  cvt.s.w $f0, $f0
/* 1984C8 80269BE8 46020002 */  mul.s $f0, $f0, $f2
/* 1984CC 80269BEC 00000000 */  nop   
/* 1984D0 80269BF0 C4820030 */  lwc1  $f2, 0x30($a0)
/* 1984D4 80269BF4 46001081 */  sub.s $f2, $f2, $f0
.L80269BF8:
/* 1984D8 80269BF8 8C820010 */  lw    $v0, 0x10($a0)
/* 1984DC 80269BFC E4420010 */  swc1  $f2, 0x10($v0)
/* 1984E0 80269C00 8C820010 */  lw    $v0, 0x10($a0)
/* 1984E4 80269C04 C4800034 */  lwc1  $f0, 0x34($a0)
.L80269C08:
/* 1984E8 80269C08 E4400014 */  swc1  $f0, 0x14($v0)
.L80269C0C:
/* 1984EC 80269C0C 8FBF001C */  lw    $ra, 0x1c($sp)
/* 1984F0 80269C10 8FB20018 */  lw    $s2, 0x18($sp)
/* 1984F4 80269C14 8FB10014 */  lw    $s1, 0x14($sp)
/* 1984F8 80269C18 8FB00010 */  lw    $s0, 0x10($sp)
/* 1984FC 80269C1C 03E00008 */  jr    $ra
/* 198500 80269C20 27BD0020 */   addiu $sp, $sp, 0x20

