.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel func_8004B748
/* 026B48 8004B748 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 026B4C 8004B74C AFB40030 */  sw    $s4, 0x30($sp)
/* 026B50 8004B750 0080A02D */  daddu $s4, $a0, $zero
/* 026B54 8004B754 AFBF0038 */  sw    $ra, 0x38($sp)
/* 026B58 8004B758 AFB50034 */  sw    $s5, 0x34($sp)
/* 026B5C 8004B75C AFB3002C */  sw    $s3, 0x2c($sp)
/* 026B60 8004B760 AFB20028 */  sw    $s2, 0x28($sp)
/* 026B64 8004B764 AFB10024 */  sw    $s1, 0x24($sp)
/* 026B68 8004B768 AFB00020 */  sw    $s0, 0x20($sp)
/* 026B6C 8004B76C 8E820030 */  lw    $v0, 0x30($s4)
/* 026B70 8004B770 8E830168 */  lw    $v1, 0x168($s4)
/* 026B74 8004B774 24420001 */  addiu $v0, $v0, 1
/* 026B78 8004B778 10600004 */  beqz  $v1, .L8004B78C
/* 026B7C 8004B77C AE820030 */   sw    $v0, 0x30($s4)
/* 026B80 8004B780 0C01352F */  jal   func_8004D4BC
/* 026B84 8004B784 00000000 */   nop   
/* 026B88 8004B788 AE800168 */  sw    $zero, 0x168($s4)
.L8004B78C:
/* 026B8C 8004B78C 0280802D */  daddu $s0, $s4, $zero
.L8004B790:
/* 026B90 8004B790 92030090 */  lbu   $v1, 0x90($s0)
/* 026B94 8004B794 10600035 */  beqz  $v1, .L8004B86C
/* 026B98 8004B798 2C620002 */   sltiu $v0, $v1, 2
/* 026B9C 8004B79C 10400033 */  beqz  $v0, .L8004B86C
/* 026BA0 8004B7A0 00031040 */   sll   $v0, $v1, 1
/* 026BA4 8004B7A4 00431021 */  addu  $v0, $v0, $v1
/* 026BA8 8004B7A8 00021040 */  sll   $v0, $v0, 1
/* 026BAC 8004B7AC 3C038008 */  lui   $v1, 0x8008
/* 026BB0 8004B7B0 2463836A */  addiu $v1, $v1, -0x7c96
/* 026BB4 8004B7B4 00433021 */  addu  $a2, $v0, $v1
/* 026BB8 8004B7B8 94C20002 */  lhu   $v0, 2($a2)
/* 026BBC 8004B7BC 10400020 */  beqz  $v0, .L8004B840
/* 026BC0 8004B7C0 0000882D */   daddu $s1, $zero, $zero
/* 026BC4 8004B7C4 0040282D */  daddu $a1, $v0, $zero
/* 026BC8 8004B7C8 0200202D */  daddu $a0, $s0, $zero
/* 026BCC 8004B7CC 0280182D */  daddu $v1, $s4, $zero
.L8004B7D0:
/* 026BD0 8004B7D0 94620202 */  lhu   $v0, 0x202($v1)
/* 026BD4 8004B7D4 54450015 */  bnel  $v0, $a1, .L8004B82C
/* 026BD8 8004B7D8 26310001 */   addiu $s1, $s1, 1
/* 026BDC 8004B7DC 94C20000 */  lhu   $v0, ($a2)
/* 026BE0 8004B7E0 A7A00012 */  sh    $zero, 0x12($sp)
/* 026BE4 8004B7E4 A7A00016 */  sh    $zero, 0x16($sp)
/* 026BE8 8004B7E8 A7A20010 */  sh    $v0, 0x10($sp)
/* 026BEC 8004B7EC 90C20004 */  lbu   $v0, 4($a2)
/* 026BF0 8004B7F0 30420001 */  andi  $v0, $v0, 1
/* 026BF4 8004B7F4 50400008 */  beql  $v0, $zero, .L8004B818
/* 026BF8 8004B7F8 A7A00014 */   sh    $zero, 0x14($sp)
/* 026BFC 8004B7FC 90820093 */  lbu   $v0, 0x93($a0)
/* 026C00 8004B800 50400005 */  beql  $v0, $zero, .L8004B818
/* 026C04 8004B804 A7A00014 */   sh    $zero, 0x14($sp)
/* 026C08 8004B808 90820093 */  lbu   $v0, 0x93($a0)
/* 026C0C 8004B80C 00021200 */  sll   $v0, $v0, 8
/* 026C10 8004B810 244200FF */  addiu $v0, $v0, 0xff
/* 026C14 8004B814 A7A20014 */  sh    $v0, 0x14($sp)
.L8004B818:
/* 026C18 8004B818 A3A00018 */  sb    $zero, 0x18($sp)
/* 026C1C 8004B81C 0280202D */  daddu $a0, $s4, $zero
/* 026C20 8004B820 27A50010 */  addiu $a1, $sp, 0x10
/* 026C24 8004B824 08012E19 */  j     .L8004B864
/* 026C28 8004B828 0000302D */   daddu $a2, $zero, $zero

.L8004B82C:
/* 026C2C 8004B82C 2E220008 */  sltiu $v0, $s1, 8
/* 026C30 8004B830 1440FFE7 */  bnez  $v0, .L8004B7D0
/* 026C34 8004B834 246300AC */   addiu $v1, $v1, 0xac
/* 026C38 8004B838 08012E1C */  j     .L8004B870
/* 026C3C 8004B83C AE000090 */   sw    $zero, 0x90($s0)

.L8004B840:
/* 026C40 8004B840 0280202D */  daddu $a0, $s4, $zero
/* 026C44 8004B844 27A50010 */  addiu $a1, $sp, 0x10
/* 026C48 8004B848 94C20000 */  lhu   $v0, ($a2)
/* 026C4C 8004B84C 0000302D */  daddu $a2, $zero, $zero
/* 026C50 8004B850 A7A00012 */  sh    $zero, 0x12($sp)
/* 026C54 8004B854 A7A00014 */  sh    $zero, 0x14($sp)
/* 026C58 8004B858 A7A00016 */  sh    $zero, 0x16($sp)
/* 026C5C 8004B85C A3A00018 */  sb    $zero, 0x18($sp)
/* 026C60 8004B860 A7A20010 */  sh    $v0, 0x10($sp)
.L8004B864:
/* 026C64 8004B864 0C012E9D */  jal   func_8004BA74
/* 026C68 8004B868 00000000 */   nop   
.L8004B86C:
/* 026C6C 8004B86C AE000090 */  sw    $zero, 0x90($s0)
.L8004B870:
/* 026C70 8004B870 26100004 */  addiu $s0, $s0, 4
/* 026C74 8004B874 26820010 */  addiu $v0, $s4, 0x10
/* 026C78 8004B878 0202102B */  sltu  $v0, $s0, $v0
/* 026C7C 8004B87C 1440FFC4 */  bnez  $v0, .L8004B790
/* 026C80 8004B880 0000902D */   daddu $s2, $zero, $zero
/* 026C84 8004B884 24130001 */  addiu $s3, $zero, 1
/* 026C88 8004B888 241100A0 */  addiu $s1, $zero, 0xa0
/* 026C8C 8004B88C 0280802D */  daddu $s0, $s4, $zero
.L8004B890:
/* 026C90 8004B890 960200A0 */  lhu   $v0, 0xa0($s0)
/* 026C94 8004B894 10400009 */  beqz  $v0, .L8004B8BC
/* 026C98 8004B898 0280202D */   daddu $a0, $s4, $zero
/* 026C9C 8004B89C 27A50010 */  addiu $a1, $sp, 0x10
/* 026CA0 8004B8A0 02913021 */  addu  $a2, $s4, $s1
/* 026CA4 8004B8A4 A7B30010 */  sh    $s3, 0x10($sp)
/* 026CA8 8004B8A8 A7A00012 */  sh    $zero, 0x12($sp)
/* 026CAC 8004B8AC A7A00014 */  sh    $zero, 0x14($sp)
/* 026CB0 8004B8B0 A7A00016 */  sh    $zero, 0x16($sp)
/* 026CB4 8004B8B4 0C012E9D */  jal   func_8004BA74
/* 026CB8 8004B8B8 A3A00018 */   sb    $zero, 0x18($sp)
.L8004B8BC:
/* 026CBC 8004B8BC A60000A0 */  sh    $zero, 0xa0($s0)
/* 026CC0 8004B8C0 26310006 */  addiu $s1, $s1, 6
/* 026CC4 8004B8C4 26520001 */  addiu $s2, $s2, 1
/* 026CC8 8004B8C8 2E420004 */  sltiu $v0, $s2, 4
/* 026CCC 8004B8CC 1440FFF0 */  bnez  $v0, .L8004B890
/* 026CD0 8004B8D0 26100006 */   addiu $s0, $s0, 6
/* 026CD4 8004B8D4 92820164 */  lbu   $v0, 0x164($s4)
/* 026CD8 8004B8D8 92830163 */  lbu   $v1, 0x163($s4)
/* 026CDC 8004B8DC 0043A823 */  subu  $s5, $v0, $v1
/* 026CE0 8004B8E0 06A20001 */  bltzl $s5, .L8004B8E8
/* 026CE4 8004B8E4 26B50010 */   addiu $s5, $s5, 0x10
.L8004B8E8:
/* 026CE8 8004B8E8 26A2FFFF */  addiu $v0, $s5, -1
/* 026CEC 8004B8EC 2C42000F */  sltiu $v0, $v0, 0xf
/* 026CF0 8004B8F0 10400033 */  beqz  $v0, .L8004B9C0
/* 026CF4 8004B8F4 0060882D */   daddu $s1, $v1, $zero
/* 026CF8 8004B8F8 12A0002F */  beqz  $s5, .L8004B9B8
/* 026CFC 8004B8FC 0000902D */   daddu $s2, $zero, $zero
/* 026D00 8004B900 00111080 */  sll   $v0, $s1, 2
/* 026D04 8004B904 00511021 */  addu  $v0, $v0, $s1
/* 026D08 8004B908 00021040 */  sll   $v0, $v0, 1
/* 026D0C 8004B90C 245300C2 */  addiu $s3, $v0, 0xc2
/* 026D10 8004B910 02938021 */  addu  $s0, $s4, $s3
.L8004B914:
/* 026D14 8004B914 96030000 */  lhu   $v1, ($s0)
/* 026D18 8004B918 306223FF */  andi  $v0, $v1, 0x23ff
/* 026D1C 8004B91C 1040001B */  beqz  $v0, .L8004B98C
/* 026D20 8004B920 30628000 */   andi  $v0, $v1, 0x8000
/* 026D24 8004B924 10400005 */  beqz  $v0, .L8004B93C
/* 026D28 8004B928 3065FFFF */   andi  $a1, $v1, 0xffff
/* 026D2C 8004B92C 0C0130A9 */  jal   func_8004C2A4
/* 026D30 8004B930 0280202D */   daddu $a0, $s4, $zero
/* 026D34 8004B934 08012E64 */  j     .L8004B990
/* 026D38 8004B938 A6000000 */   sh    $zero, ($s0)

.L8004B93C:
/* 026D3C 8004B93C 30621C00 */  andi  $v0, $v1, 0x1c00
/* 026D40 8004B940 14400007 */  bnez  $v0, .L8004B960
/* 026D44 8004B944 30620C00 */   andi  $v0, $v1, 0xc00
/* 026D48 8004B948 0280202D */  daddu $a0, $s4, $zero
/* 026D4C 8004B94C 0200282D */  daddu $a1, $s0, $zero
/* 026D50 8004B950 0C012E9D */  jal   func_8004BA74
/* 026D54 8004B954 0000302D */   daddu $a2, $zero, $zero
/* 026D58 8004B958 08012E64 */  j     .L8004B990
/* 026D5C 8004B95C A6000000 */   sh    $zero, ($s0)

.L8004B960:
/* 026D60 8004B960 10400004 */  beqz  $v0, .L8004B974
/* 026D64 8004B964 00000000 */   nop   
/* 026D68 8004B968 96050000 */  lhu   $a1, ($s0)
/* 026D6C 8004B96C 0C01309A */  jal   func_8004C268
/* 026D70 8004B970 0280202D */   daddu $a0, $s4, $zero
.L8004B974:
/* 026D74 8004B974 96020000 */  lhu   $v0, ($s0)
/* 026D78 8004B978 30421000 */  andi  $v0, $v0, 0x1000
/* 026D7C 8004B97C 10400003 */  beqz  $v0, .L8004B98C
/* 026D80 8004B980 0280202D */   daddu $a0, $s4, $zero
/* 026D84 8004B984 0C0130D6 */  jal   func_8004C358
/* 026D88 8004B988 0200282D */   daddu $a1, $s0, $zero
.L8004B98C:
/* 026D8C 8004B98C A6000000 */  sh    $zero, ($s0)
.L8004B990:
/* 026D90 8004B990 26310001 */  addiu $s1, $s1, 1
/* 026D94 8004B994 2E220010 */  sltiu $v0, $s1, 0x10
/* 026D98 8004B998 14400003 */  bnez  $v0, .L8004B9A8
/* 026D9C 8004B99C 2673000A */   addiu $s3, $s3, 0xa
/* 026DA0 8004B9A0 241300C2 */  addiu $s3, $zero, 0xc2
/* 026DA4 8004B9A4 0000882D */  daddu $s1, $zero, $zero
.L8004B9A8:
/* 026DA8 8004B9A8 26520001 */  addiu $s2, $s2, 1
/* 026DAC 8004B9AC 0255102B */  sltu  $v0, $s2, $s5
/* 026DB0 8004B9B0 1440FFD8 */  bnez  $v0, .L8004B914
/* 026DB4 8004B9B4 02938021 */   addu  $s0, $s4, $s3
.L8004B9B8:
/* 026DB8 8004B9B8 92820164 */  lbu   $v0, 0x164($s4)
/* 026DBC 8004B9BC A2820163 */  sb    $v0, 0x163($s4)
.L8004B9C0:
/* 026DC0 8004B9C0 8FBF0038 */  lw    $ra, 0x38($sp)
/* 026DC4 8004B9C4 8FB50034 */  lw    $s5, 0x34($sp)
/* 026DC8 8004B9C8 8FB40030 */  lw    $s4, 0x30($sp)
/* 026DCC 8004B9CC 8FB3002C */  lw    $s3, 0x2c($sp)
/* 026DD0 8004B9D0 8FB20028 */  lw    $s2, 0x28($sp)
/* 026DD4 8004B9D4 8FB10024 */  lw    $s1, 0x24($sp)
/* 026DD8 8004B9D8 8FB00020 */  lw    $s0, 0x20($sp)
/* 026DDC 8004B9DC 03E00008 */  jr    $ra
/* 026DE0 8004B9E0 27BD0040 */   addiu $sp, $sp, 0x40

