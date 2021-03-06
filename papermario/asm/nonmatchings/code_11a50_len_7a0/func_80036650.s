.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel func_80036650
/* 011A50 80036650 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 011A54 80036654 AFB10014 */  sw    $s1, 0x14($sp)
/* 011A58 80036658 3C118007 */  lui   $s1, 0x8007
/* 011A5C 8003665C 2631419C */  addiu $s1, $s1, 0x419c
/* 011A60 80036660 AFBF0018 */  sw    $ra, 0x18($sp)
/* 011A64 80036664 AFB00010 */  sw    $s0, 0x10($sp)
/* 011A68 80036668 8E220000 */  lw    $v0, ($s1)
/* 011A6C 8003666C 3C013F80 */  lui   $at, 0x3f80
/* 011A70 80036670 44816000 */  mtc1  $at, $f12
/* 011A74 80036674 0C00AFB7 */  jal   func_8002BEDC
/* 011A78 80036678 A04000AC */   sb    $zero, 0xac($v0)
/* 011A7C 8003667C 3C013E99 */  lui   $at, 0x3e99
/* 011A80 80036680 3421999A */  ori   $at, $at, 0x999a
/* 011A84 80036684 44816000 */  mtc1  $at, $f12
/* 011A88 80036688 0C00AFC5 */  jal   func_8002BF14
/* 011A8C 8003668C 00000000 */   nop   
/* 011A90 80036690 8E220000 */  lw    $v0, ($s1)
/* 011A94 80036694 805000A8 */  lb    $s0, 0xa8($v0)
/* 011A98 80036698 12000005 */  beqz  $s0, .L800366B0
/* 011A9C 8003669C 24020001 */   addiu $v0, $zero, 1
/* 011AA0 800366A0 12020020 */  beq   $s0, $v0, .L80036724
/* 011AA4 800366A4 00000000 */   nop   
/* 011AA8 800366A8 0800D9E3 */  j     .L8003678C
/* 011AAC 800366AC 00000000 */   nop   

.L800366B0:
/* 011AB0 800366B0 0C00CDF4 */  jal   func_800337D0
/* 011AB4 800366B4 0000202D */   daddu $a0, $zero, $zero
/* 011AB8 800366B8 240200FF */  addiu $v0, $zero, 0xff
/* 011ABC 800366BC 3C01800A */  lui   $at, 0x800a
/* 011AC0 800366C0 A4220954 */  sh    $v0, 0x954($at)
/* 011AC4 800366C4 24020010 */  addiu $v0, $zero, 0x10
/* 011AC8 800366C8 3C01800A */  lui   $at, 0x800a
/* 011ACC 800366CC A4220956 */  sh    $v0, 0x956($at)
/* 011AD0 800366D0 24020004 */  addiu $v0, $zero, 4
/* 011AD4 800366D4 3C01800A */  lui   $at, 0x800a
/* 011AD8 800366D8 A4220958 */  sh    $v0, 0x958($at)
/* 011ADC 800366DC 240200D0 */  addiu $v0, $zero, 0xd0
/* 011AE0 800366E0 3C01800A */  lui   $at, 0x800a
/* 011AE4 800366E4 AC200960 */  sw    $zero, 0x960($at)
/* 011AE8 800366E8 3C01800A */  lui   $at, 0x800a
/* 011AEC 800366EC A422095A */  sh    $v0, 0x95a($at)
/* 011AF0 800366F0 3C01800A */  lui   $at, 0x800a
/* 011AF4 800366F4 A422095C */  sh    $v0, 0x95c($at)
/* 011AF8 800366F8 3C01800A */  lui   $at, 0x800a
/* 011AFC 800366FC A422095E */  sh    $v0, 0x95e($at)
/* 011B00 80036700 3C01800A */  lui   $at, 0x800a
/* 011B04 80036704 AC200964 */  sw    $zero, 0x964($at)
/* 011B08 80036708 8E230000 */  lw    $v1, ($s1)
/* 011B0C 8003670C 24020005 */  addiu $v0, $zero, 5
/* 011B10 80036710 A4620086 */  sh    $v0, 0x86($v1)
/* 011B14 80036714 A462008C */  sh    $v0, 0x8c($v1)
/* 011B18 80036718 24020003 */  addiu $v0, $zero, 3
/* 011B1C 8003671C 0800D9FC */  j     .L800367F0
/* 011B20 80036720 A462008E */   sh    $v0, 0x8e($v1)

.L80036724:
/* 011B24 80036724 0C00CDF4 */  jal   func_800337D0
/* 011B28 80036728 0000202D */   daddu $a0, $zero, $zero
/* 011B2C 8003672C 2402000C */  addiu $v0, $zero, 0xc
/* 011B30 80036730 24040004 */  addiu $a0, $zero, 4
/* 011B34 80036734 3C01800A */  lui   $at, 0x800a
/* 011B38 80036738 A4200954 */  sh    $zero, 0x954($at)
/* 011B3C 8003673C 3C01800A */  lui   $at, 0x800a
/* 011B40 80036740 A4220956 */  sh    $v0, 0x956($at)
/* 011B44 80036744 3C01800A */  lui   $at, 0x800a
/* 011B48 80036748 A4240958 */  sh    $a0, 0x958($at)
/* 011B4C 8003674C 3C01800A */  lui   $at, 0x800a
/* 011B50 80036750 AC300960 */  sw    $s0, 0x960($at)
/* 011B54 80036754 3C01800A */  lui   $at, 0x800a
/* 011B58 80036758 A420095A */  sh    $zero, 0x95a($at)
/* 011B5C 8003675C 3C01800A */  lui   $at, 0x800a
/* 011B60 80036760 A420095C */  sh    $zero, 0x95c($at)
/* 011B64 80036764 3C01800A */  lui   $at, 0x800a
/* 011B68 80036768 A420095E */  sh    $zero, 0x95e($at)
/* 011B6C 8003676C 3C01800A */  lui   $at, 0x800a
/* 011B70 80036770 AC200964 */  sw    $zero, 0x964($at)
/* 011B74 80036774 8E220000 */  lw    $v0, ($s1)
/* 011B78 80036778 24030005 */  addiu $v1, $zero, 5
/* 011B7C 8003677C A4430086 */  sh    $v1, 0x86($v0)
/* 011B80 80036780 A444008C */  sh    $a0, 0x8c($v0)
/* 011B84 80036784 0800D9FC */  j     .L800367F0
/* 011B88 80036788 A444008E */   sh    $a0, 0x8e($v0)

.L8003678C:
/* 011B8C 8003678C 0C00CDF4 */  jal   func_800337D0
/* 011B90 80036790 0000202D */   daddu $a0, $zero, $zero
/* 011B94 80036794 0C00CDF8 */  jal   func_800337E0
/* 011B98 80036798 240400D0 */   addiu $a0, $zero, 0xd0
/* 011B9C 8003679C 2402FFFF */  addiu $v0, $zero, -1
/* 011BA0 800367A0 3C038007 */  lui   $v1, 0x8007
/* 011BA4 800367A4 8C63419C */  lw    $v1, 0x419c($v1)
/* 011BA8 800367A8 3C048007 */  lui   $a0, 0x8007
/* 011BAC 800367AC 248479B0 */  addiu $a0, $a0, 0x79b0
/* 011BB0 800367B0 A06200A8 */  sb    $v0, 0xa8($v1)
/* 011BB4 800367B4 90820000 */  lbu   $v0, ($a0)
/* 011BB8 800367B8 24030006 */  addiu $v1, $zero, 6
/* 011BBC 800367BC 3C01800A */  lui   $at, 0x800a
/* 011BC0 800367C0 A4230956 */  sh    $v1, 0x956($at)
/* 011BC4 800367C4 3C01800A */  lui   $at, 0x800a
/* 011BC8 800367C8 A4230958 */  sh    $v1, 0x958($at)
/* 011BCC 800367CC 24420001 */  addiu $v0, $v0, 1
/* 011BD0 800367D0 A0820000 */  sb    $v0, ($a0)
/* 011BD4 800367D4 304200FF */  andi  $v0, $v0, 0xff
/* 011BD8 800367D8 2C420004 */  sltiu $v0, $v0, 4
/* 011BDC 800367DC 50400001 */  beql  $v0, $zero, .L800367E4
/* 011BE0 800367E0 A0800000 */   sb    $zero, ($a0)
.L800367E4:
/* 011BE4 800367E4 24020003 */  addiu $v0, $zero, 3
/* 011BE8 800367E8 3C01800A */  lui   $at, 0x800a
/* 011BEC 800367EC AC220964 */  sw    $v0, 0x964($at)
.L800367F0:
/* 011BF0 800367F0 3C02800A */  lui   $v0, 0x800a
/* 011BF4 800367F4 84420954 */  lh    $v0, 0x954($v0)
/* 011BF8 800367F8 3C04800A */  lui   $a0, 0x800a
/* 011BFC 800367FC 90840963 */  lbu   $a0, 0x963($a0)
/* 011C00 80036800 44820000 */  mtc1  $v0, $f0
/* 011C04 80036804 00000000 */  nop   
/* 011C08 80036808 46800020 */  cvt.s.w $f0, $f0
/* 011C0C 8003680C 44050000 */  mfc1  $a1, $f0
/* 011C10 80036810 0C04DF69 */  jal   func_80137DA4
/* 011C14 80036814 00000000 */   nop   
/* 011C18 80036818 3C05800A */  lui   $a1, 0x800a
/* 011C1C 8003681C 90A5095B */  lbu   $a1, 0x95b($a1)
/* 011C20 80036820 3C06800A */  lui   $a2, 0x800a
/* 011C24 80036824 90C6095D */  lbu   $a2, 0x95d($a2)
/* 011C28 80036828 3C07800A */  lui   $a3, 0x800a
/* 011C2C 8003682C 90E7095F */  lbu   $a3, 0x95f($a3)
/* 011C30 80036830 0C04DF84 */  jal   func_80137E10
/* 011C34 80036834 24040001 */   addiu $a0, $zero, 1
/* 011C38 80036838 0C00CE1D */  jal   func_80033874
/* 011C3C 8003683C 00000000 */   nop   
/* 011C40 80036840 8FBF0018 */  lw    $ra, 0x18($sp)
/* 011C44 80036844 8FB10014 */  lw    $s1, 0x14($sp)
/* 011C48 80036848 8FB00010 */  lw    $s0, 0x10($sp)
/* 011C4C 8003684C 03E00008 */  jr    $ra
/* 011C50 80036850 27BD0020 */   addiu $sp, $sp, 0x20

/* 011C54 80036854 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 011C58 80036858 AFB10014 */  sw    $s1, 0x14($sp)
/* 011C5C 8003685C 3C118011 */  lui   $s1, 0x8011
/* 011C60 80036860 2631F290 */  addiu $s1, $s1, -0xd70
/* 011C64 80036864 3C028007 */  lui   $v0, 0x8007
/* 011C68 80036868 8C42419C */  lw    $v0, 0x419c($v0)
/* 011C6C 8003686C 2404FFFF */  addiu $a0, $zero, -1
/* 011C70 80036870 AFBF0018 */  sw    $ra, 0x18($sp)
/* 011C74 80036874 AFB00010 */  sw    $s0, 0x10($sp)
/* 011C78 80036878 F7B40020 */  sdc1  $f20, 0x20($sp)
/* 011C7C 8003687C 804300A8 */  lb    $v1, 0xa8($v0)
/* 011C80 80036880 1064002F */  beq   $v1, $a0, .L80036940
/* 011C84 80036884 8C450010 */   lw    $a1, 0x10($v0)
/* 011C88 80036888 3C03800A */  lui   $v1, 0x800a
/* 011C8C 8003688C 24630964 */  addiu $v1, $v1, 0x964
/* 011C90 80036890 8C620000 */  lw    $v0, ($v1)
/* 011C94 80036894 14400004 */  bnez  $v0, .L800368A8
/* 011C98 80036898 30A2F000 */   andi  $v0, $a1, 0xf000
/* 011C9C 8003689C 10400002 */  beqz  $v0, .L800368A8
/* 011CA0 800368A0 24020001 */   addiu $v0, $zero, 1
/* 011CA4 800368A4 AC620000 */  sw    $v0, ($v1)
.L800368A8:
/* 011CA8 800368A8 3C03800A */  lui   $v1, 0x800a
/* 011CAC 800368AC 8C630964 */  lw    $v1, 0x964($v1)
/* 011CB0 800368B0 24020001 */  addiu $v0, $zero, 1
/* 011CB4 800368B4 14620010 */  bne   $v1, $v0, .L800368F8
/* 011CB8 800368B8 24020002 */   addiu $v0, $zero, 2
/* 011CBC 800368BC 3C048007 */  lui   $a0, 0x8007
/* 011CC0 800368C0 8C84419C */  lw    $a0, 0x419c($a0)
/* 011CC4 800368C4 908300AC */  lbu   $v1, 0xac($a0)
/* 011CC8 800368C8 2C620002 */  sltiu $v0, $v1, 2
/* 011CCC 800368CC 14400018 */  bnez  $v0, .L80036930
/* 011CD0 800368D0 24020064 */   addiu $v0, $zero, 0x64
/* 011CD4 800368D4 00031600 */  sll   $v0, $v1, 0x18
/* 011CD8 800368D8 00021603 */  sra   $v0, $v0, 0x18
/* 011CDC 800368DC 24030004 */  addiu $v1, $zero, 4
/* 011CE0 800368E0 14430003 */  bne   $v0, $v1, .L800368F0
/* 011CE4 800368E4 24020002 */   addiu $v0, $zero, 2
/* 011CE8 800368E8 0800DA4C */  j     .L80036930
/* 011CEC 800368EC 24020064 */   addiu $v0, $zero, 0x64

.L800368F0:
/* 011CF0 800368F0 3C03800A */  lui   $v1, 0x800a
/* 011CF4 800368F4 8C630964 */  lw    $v1, 0x964($v1)
.L800368F8:
/* 011CF8 800368F8 14620011 */  bne   $v1, $v0, .L80036940
/* 011CFC 800368FC 00000000 */   nop   
/* 011D00 80036900 3C048007 */  lui   $a0, 0x8007
/* 011D04 80036904 8C84419C */  lw    $a0, 0x419c($a0)
/* 011D08 80036908 908300AC */  lbu   $v1, 0xac($a0)
/* 011D0C 8003690C 2C620002 */  sltiu $v0, $v1, 2
/* 011D10 80036910 14400005 */  bnez  $v0, .L80036928
/* 011D14 80036914 00031600 */   sll   $v0, $v1, 0x18
/* 011D18 80036918 00021603 */  sra   $v0, $v0, 0x18
/* 011D1C 8003691C 24030004 */  addiu $v1, $zero, 4
/* 011D20 80036920 14430007 */  bne   $v0, $v1, .L80036940
/* 011D24 80036924 00000000 */   nop   
.L80036928:
/* 011D28 80036928 908200A8 */  lbu   $v0, 0xa8($a0)
/* 011D2C 8003692C 24420001 */  addiu $v0, $v0, 1
.L80036930:
/* 011D30 80036930 0C00D994 */  jal   func_80036650
/* 011D34 80036934 A08200A8 */   sb    $v0, 0xa8($a0)
/* 011D38 80036938 0800DB72 */  j     .L80036DC8
/* 011D3C 8003693C 00000000 */   nop   

.L80036940:
/* 011D40 80036940 3C028007 */  lui   $v0, 0x8007
/* 011D44 80036944 8C42419C */  lw    $v0, 0x419c($v0)
/* 011D48 80036948 804300AC */  lb    $v1, 0xac($v0)
/* 011D4C 8003694C 2C620016 */  sltiu $v0, $v1, 0x16
/* 011D50 80036950 10400109 */  beqz  $v0, .L80036D78
/* 011D54 80036954 00031080 */   sll   $v0, $v1, 2
/* 011D58 80036958 3C01800A */  lui   $at, 0x800a
/* 011D5C 8003695C 00220821 */  addu  $at, $at, $v0
/* 011D60 80036960 8C228338 */  lw    $v0, -0x7cc8($at)
/* 011D64 80036964 00400008 */  jr    $v0
/* 011D68 80036968 00000000 */   nop   
/* 011D6C 8003696C 0C016754 */  jal   func_80059D50
/* 011D70 80036970 00000000 */   nop   
/* 011D74 80036974 0C00B500 */  jal   update_cameras
/* 011D78 80036978 00000000 */   nop   
/* 011D7C 8003697C 3C108007 */  lui   $s0, 0x8007
/* 011D80 80036980 2610419C */  addiu $s0, $s0, 0x419c
/* 011D84 80036984 8E060000 */  lw    $a2, ($s0)
/* 011D88 80036988 80C300A8 */  lb    $v1, 0xa8($a2)
/* 011D8C 8003698C 2402FFFF */  addiu $v0, $zero, -1
/* 011D90 80036990 14620010 */  bne   $v1, $v0, .L800369D4
/* 011D94 80036994 00000000 */   nop   
/* 011D98 80036998 44806000 */  mtc1  $zero, $f12
/* 011D9C 8003699C 0C00AFC5 */  jal   func_8002BF14
/* 011DA0 800369A0 00000000 */   nop   
/* 011DA4 800369A4 3C04800A */  lui   $a0, 0x800a
/* 011DA8 800369A8 84840956 */  lh    $a0, 0x956($a0)
/* 011DAC 800369AC 0C00CE0C */  jal   func_80033830
/* 011DB0 800369B0 00000000 */   nop   
/* 011DB4 800369B4 104000F0 */  beqz  $v0, .L80036D78
/* 011DB8 800369B8 24020001 */   addiu $v0, $zero, 1
/* 011DBC 800369BC 0000202D */  daddu $a0, $zero, $zero
/* 011DC0 800369C0 8E030000 */  lw    $v1, ($s0)
/* 011DC4 800369C4 0C00AFC1 */  jal   func_8002BF04
/* 011DC8 800369C8 A06200AC */   sb    $v0, 0xac($v1)
/* 011DCC 800369CC 0800DB5E */  j     .L80036D78
/* 011DD0 800369D0 00000000 */   nop   

.L800369D4:
/* 011DD4 800369D4 3C05800A */  lui   $a1, 0x800a
/* 011DD8 800369D8 24A50954 */  addiu $a1, $a1, 0x954
/* 011DDC 800369DC 94A20000 */  lhu   $v0, ($a1)
/* 011DE0 800369E0 3C03800A */  lui   $v1, 0x800a
/* 011DE4 800369E4 94630956 */  lhu   $v1, 0x956($v1)
/* 011DE8 800369E8 00431021 */  addu  $v0, $v0, $v1
/* 011DEC 800369EC A4A20000 */  sh    $v0, ($a1)
/* 011DF0 800369F0 00021400 */  sll   $v0, $v0, 0x10
/* 011DF4 800369F4 00021403 */  sra   $v0, $v0, 0x10
/* 011DF8 800369F8 284200FF */  slti  $v0, $v0, 0xff
/* 011DFC 800369FC 144000DE */  bnez  $v0, .L80036D78
/* 011E00 80036A00 240200FF */   addiu $v0, $zero, 0xff
/* 011E04 80036A04 0000202D */  daddu $a0, $zero, $zero
/* 011E08 80036A08 A4A20000 */  sh    $v0, ($a1)
/* 011E0C 80036A0C 24020001 */  addiu $v0, $zero, 1
/* 011E10 80036A10 0C00AFC1 */  jal   func_8002BF04
/* 011E14 80036A14 A0C200AC */   sb    $v0, 0xac($a2)
/* 011E18 80036A18 0800DB5E */  j     .L80036D78
/* 011E1C 80036A1C 00000000 */   nop   

/* 011E20 80036A20 3C04800A */  lui   $a0, 0x800a
/* 011E24 80036A24 2484A650 */  addiu $a0, $a0, -0x59b0
/* 011E28 80036A28 8C820000 */  lw    $v0, ($a0)
/* 011E2C 80036A2C 24030004 */  addiu $v1, $zero, 4
/* 011E30 80036A30 3C01800A */  lui   $at, 0x800a
/* 011E34 80036A34 AC230950 */  sw    $v1, 0x950($at)
/* 011E38 80036A38 34420008 */  ori   $v0, $v0, 8
/* 011E3C 80036A3C AC820000 */  sw    $v0, ($a0)
/* 011E40 80036A40 3C03800A */  lui   $v1, 0x800a
/* 011E44 80036A44 8C630960 */  lw    $v1, 0x960($v1)
/* 011E48 80036A48 2402000E */  addiu $v0, $zero, 0xe
/* 011E4C 80036A4C 106200CA */  beq   $v1, $v0, .L80036D78
/* 011E50 80036A50 00000000 */   nop   
/* 011E54 80036A54 0800DAA3 */  j     .L80036A8C
/* 011E58 80036A58 00000000 */   nop   

/* 011E5C 80036A5C 3C03800A */  lui   $v1, 0x800a
/* 011E60 80036A60 24630950 */  addiu $v1, $v1, 0x950
/* 011E64 80036A64 8C620000 */  lw    $v0, ($v1)
/* 011E68 80036A68 2442FFFF */  addiu $v0, $v0, -1
/* 011E6C 80036A6C 1C4000C2 */  bgtz  $v0, .L80036D78
/* 011E70 80036A70 AC620000 */   sw    $v0, ($v1)
/* 011E74 80036A74 3C04800A */  lui   $a0, 0x800a
/* 011E78 80036A78 2484A650 */  addiu $a0, $a0, -0x59b0
/* 011E7C 80036A7C 8C820000 */  lw    $v0, ($a0)
/* 011E80 80036A80 2403FFF7 */  addiu $v1, $zero, -9
/* 011E84 80036A84 00431024 */  and   $v0, $v0, $v1
/* 011E88 80036A88 AC820000 */  sw    $v0, ($a0)
.L80036A8C:
/* 011E8C 80036A8C 3C038007 */  lui   $v1, 0x8007
/* 011E90 80036A90 8C63419C */  lw    $v1, 0x419c($v1)
/* 011E94 80036A94 24020002 */  addiu $v0, $zero, 2
/* 011E98 80036A98 0800DB5E */  j     .L80036D78
/* 011E9C 80036A9C A06200AC */   sb    $v0, 0xac($v1)

/* 011EA0 80036AA0 0C00AFC1 */  jal   func_8002BF04
/* 011EA4 80036AA4 0000202D */   daddu $a0, $zero, $zero
/* 011EA8 80036AA8 3C038007 */  lui   $v1, 0x8007
/* 011EAC 80036AAC 2463419C */  addiu $v1, $v1, 0x419c
/* 011EB0 80036AB0 8C620000 */  lw    $v0, ($v1)
/* 011EB4 80036AB4 A0400070 */  sb    $zero, 0x70($v0)
/* 011EB8 80036AB8 8C620000 */  lw    $v0, ($v1)
/* 011EBC 80036ABC A0400076 */  sb    $zero, 0x76($v0)
/* 011EC0 80036AC0 8C620000 */  lw    $v0, ($v1)
/* 011EC4 80036AC4 A0400078 */  sb    $zero, 0x78($v0)
/* 011EC8 80036AC8 8C620000 */  lw    $v0, ($v1)
/* 011ECC 80036ACC A040007D */  sb    $zero, 0x7d($v0)
/* 011ED0 80036AD0 8C620000 */  lw    $v0, ($v1)
/* 011ED4 80036AD4 804200A8 */  lb    $v0, 0xa8($v0)
/* 011ED8 80036AD8 2405FFFF */  addiu $a1, $zero, -1
/* 011EDC 80036ADC 14450037 */  bne   $v0, $a1, .L80036BBC
/* 011EE0 80036AE0 2404000B */   addiu $a0, $zero, 0xb
/* 011EE4 80036AE4 0C00AB00 */  jal   general_heap_create
/* 011EE8 80036AE8 00000000 */   nop   
/* 011EEC 80036AEC 0C047624 */  jal   func_8011D890
/* 011EF0 80036AF0 00000000 */   nop   
/* 011EF4 80036AF4 0C048C2E */  jal   func_801230B8
/* 011EF8 80036AF8 00000000 */   nop   
/* 011EFC 80036AFC 0C0B0C77 */  jal   clear_script_list
/* 011F00 80036B00 00000000 */   nop   
/* 011F04 80036B04 0C00B7BD */  jal   create_cameras_a
/* 011F08 80036B08 00000000 */   nop   
/* 011F0C 80036B0C 0C0B763E */  jal   func_802DD8F8
/* 011F10 80036B10 0000202D */   daddu $a0, $zero, $zero
/* 011F14 80036B14 0C0482EC */  jal   func_80120BB0
/* 011F18 80036B18 00000000 */   nop   
/* 011F1C 80036B1C 0C047889 */  jal   func_8011E224
/* 011F20 80036B20 00000000 */   nop   
/* 011F24 80036B24 0C045751 */  jal   clear_model_data
/* 011F28 80036B28 00000000 */   nop   
/* 011F2C 80036B2C 0C052010 */  jal   func_80148040
/* 011F30 80036B30 00000000 */   nop   
/* 011F34 80036B34 0C05177E */  jal   func_80145DF8
/* 011F38 80036B38 00000000 */   nop   
/* 011F3C 80036B3C 0C050440 */  jal   func_80141100
/* 011F40 80036B40 00000000 */   nop   
/* 011F44 80036B44 0C0515A0 */  jal   clear_trigger_data
/* 011F48 80036B48 00000000 */   nop   
/* 011F4C 80036B4C 0C048D9D */  jal   clear_printers
/* 011F50 80036B50 00000000 */   nop   
/* 011F54 80036B54 0C04432E */  jal   func_80110CB8
/* 011F58 80036B58 0000202D */   daddu $a0, $zero, $zero
/* 011F5C 80036B5C 0C04E042 */  jal   func_80138108
/* 011F60 80036B60 00000000 */   nop   
/* 011F64 80036B64 0C037F14 */  jal   clear_player_status
/* 011F68 80036B68 00000000 */   nop   
/* 011F6C 80036B6C 0C00E12F */  jal   func_800384BC
/* 011F70 80036B70 00000000 */   nop   
/* 011F74 80036B74 0C039CE8 */  jal   clear_player_data
/* 011F78 80036B78 00000000 */   nop   
/* 011F7C 80036B7C 0C01CACC */  jal   func_80072B30
/* 011F80 80036B80 00000000 */   nop   
/* 011F84 80036B84 0C00F8CE */  jal   func_8003E338
/* 011F88 80036B88 00000000 */   nop   
/* 011F8C 80036B8C 0C016727 */  jal   func_80059C9C
/* 011F90 80036B90 00000000 */   nop   
/* 011F94 80036B94 0C04C3FC */  jal   clear_item_entity_data
/* 011F98 80036B98 00000000 */   nop   
/* 011F9C 80036B9C 0C0514C8 */  jal   clear_saved_variables
/* 011FA0 80036BA0 00000000 */   nop   
/* 011FA4 80036BA4 0C016BE5 */  jal   initialize_collision
/* 011FA8 80036BA8 00000000 */   nop   
/* 011FAC 80036BAC 0C00CD3C */  jal   set_game_mode
/* 011FB0 80036BB0 24040002 */   addiu $a0, $zero, 2
/* 011FB4 80036BB4 0800DB72 */  j     .L80036DC8
/* 011FB8 80036BB8 00000000 */   nop   

.L80036BBC:
/* 011FBC 80036BBC 26230058 */  addiu $v1, $s1, 0x58
/* 011FC0 80036BC0 2402000A */  addiu $v0, $zero, 0xa
/* 011FC4 80036BC4 A2220002 */  sb    $v0, 2($s1)
/* 011FC8 80036BC8 A2220003 */  sb    $v0, 3($s1)
/* 011FCC 80036BCC A2220004 */  sb    $v0, 4($s1)
/* 011FD0 80036BD0 24020005 */  addiu $v0, $zero, 5
/* 011FD4 80036BD4 A2220005 */  sb    $v0, 5($s1)
/* 011FD8 80036BD8 A2220006 */  sb    $v0, 6($s1)
/* 011FDC 80036BDC A2220007 */  sb    $v0, 7($s1)
/* 011FE0 80036BE0 24020002 */  addiu $v0, $zero, 2
/* 011FE4 80036BE4 A2220008 */  sb    $v0, 8($s1)
/* 011FE8 80036BE8 A2200000 */  sb    $zero, ($s1)
/* 011FEC 80036BEC A2250001 */  sb    $a1, 1($s1)
/* 011FF0 80036BF0 A220000E */  sb    $zero, 0xe($s1)
/* 011FF4 80036BF4 A2200009 */  sb    $zero, 9($s1)
.L80036BF8:
/* 011FF8 80036BF8 A0600014 */  sb    $zero, 0x14($v1)
/* 011FFC 80036BFC 2484FFFF */  addiu $a0, $a0, -1
/* 012000 80036C00 0481FFFD */  bgez  $a0, .L80036BF8
/* 012004 80036C04 2463FFF8 */   addiu $v1, $v1, -8
/* 012008 80036C08 3C108007 */  lui   $s0, 0x8007
/* 01200C 80036C0C 2610419C */  addiu $s0, $s0, 0x419c
/* 012010 80036C10 8E020000 */  lw    $v0, ($s0)
/* 012014 80036C14 A2200012 */  sb    $zero, 0x12($s1)
/* 012018 80036C18 84440086 */  lh    $a0, 0x86($v0)
/* 01201C 80036C1C 8445008C */  lh    $a1, 0x8c($v0)
/* 012020 80036C20 0C0169BD */  jal   load_map_by_IDs
/* 012024 80036C24 0000302D */   daddu $a2, $zero, $zero
/* 012028 80036C28 8E030000 */  lw    $v1, ($s0)
/* 01202C 80036C2C 24020003 */  addiu $v0, $zero, 3
/* 012030 80036C30 0C03805E */  jal   func_800E0178
/* 012034 80036C34 A06200AC */   sb    $v0, 0xac($v1)
/* 012038 80036C38 0800DB5E */  j     .L80036D78
/* 01203C 80036C3C 00000000 */   nop   

/* 012040 80036C40 3C04800A */  lui   $a0, 0x800a
/* 012044 80036C44 24840960 */  addiu $a0, $a0, 0x960
/* 012048 80036C48 8C830000 */  lw    $v1, ($a0)
/* 01204C 80036C4C 2402000E */  addiu $v0, $zero, 0xe
/* 012050 80036C50 14620004 */  bne   $v1, $v0, .L80036C64
/* 012054 80036C54 240200FF */   addiu $v0, $zero, 0xff
/* 012058 80036C58 2402000F */  addiu $v0, $zero, 0xf
/* 01205C 80036C5C AC820000 */  sw    $v0, ($a0)
/* 012060 80036C60 240200FF */  addiu $v0, $zero, 0xff
.L80036C64:
/* 012064 80036C64 3C04800A */  lui   $a0, 0x800a
/* 012068 80036C68 2484A650 */  addiu $a0, $a0, -0x59b0
/* 01206C 80036C6C 2405FFF7 */  addiu $a1, $zero, -9
/* 012070 80036C70 3C03800A */  lui   $v1, 0x800a
/* 012074 80036C74 94630958 */  lhu   $v1, 0x958($v1)
/* 012078 80036C78 3C06800B */  lui   $a2, 0x800b
/* 01207C 80036C7C 24C61D80 */  addiu $a2, $a2, 0x1d80
/* 012080 80036C80 00431023 */  subu  $v0, $v0, $v1
/* 012084 80036C84 3C01800A */  lui   $at, 0x800a
/* 012088 80036C88 A4220954 */  sh    $v0, 0x954($at)
/* 01208C 80036C8C 8C830000 */  lw    $v1, ($a0)
/* 012090 80036C90 94C20000 */  lhu   $v0, ($a2)
/* 012094 80036C94 00651824 */  and   $v1, $v1, $a1
/* 012098 80036C98 3042FFFD */  andi  $v0, $v0, 0xfffd
/* 01209C 80036C9C AC830000 */  sw    $v1, ($a0)
/* 0120A0 80036CA0 A4C20000 */  sh    $v0, ($a2)
/* 0120A4 80036CA4 2402FFFD */  addiu $v0, $zero, -3
/* 0120A8 80036CA8 00621824 */  and   $v1, $v1, $v0
/* 0120AC 80036CAC 0C037DD0 */  jal   func_800DF740
/* 0120B0 80036CB0 AC830000 */   sw    $v1, ($a0)
/* 0120B4 80036CB4 0C00F949 */  jal   func_8003E524
/* 0120B8 80036CB8 00000000 */   nop   
/* 0120BC 80036CBC 0C00E64C */  jal   func_80039930
/* 0120C0 80036CC0 00000000 */   nop   
/* 0120C4 80036CC4 0C016754 */  jal   func_80059D50
/* 0120C8 80036CC8 00000000 */   nop   
/* 0120CC 80036CCC 0C00B500 */  jal   update_cameras
/* 0120D0 80036CD0 00000000 */   nop   
/* 0120D4 80036CD4 3C108007 */  lui   $s0, 0x8007
/* 0120D8 80036CD8 2610419C */  addiu $s0, $s0, 0x419c
/* 0120DC 80036CDC 8E020000 */  lw    $v0, ($s0)
/* 0120E0 80036CE0 0C0B1059 */  jal   does_script_exist
/* 0120E4 80036CE4 8C44006C */   lw    $a0, 0x6c($v0)
/* 0120E8 80036CE8 14400037 */  bnez  $v0, .L80036DC8
/* 0120EC 80036CEC 24030004 */   addiu $v1, $zero, 4
/* 0120F0 80036CF0 8E020000 */  lw    $v0, ($s0)
/* 0120F4 80036CF4 94440086 */  lhu   $a0, 0x86($v0)
/* 0120F8 80036CF8 A04300AC */  sb    $v1, 0xac($v0)
/* 0120FC 80036CFC 0800DB5E */  j     .L80036D78
/* 012100 80036D00 A4440088 */   sh    $a0, 0x88($v0)

/* 012104 80036D04 0C016754 */  jal   func_80059D50
/* 012108 80036D08 00000000 */   nop   
/* 01210C 80036D0C 0C00B500 */  jal   update_cameras
/* 012110 80036D10 00000000 */   nop   
/* 012114 80036D14 0C00E64C */  jal   func_80039930
/* 012118 80036D18 00000000 */   nop   
/* 01211C 80036D1C 3C04800A */  lui   $a0, 0x800a
/* 012120 80036D20 24840954 */  addiu $a0, $a0, 0x954
/* 012124 80036D24 84820000 */  lh    $v0, ($a0)
/* 012128 80036D28 1440000C */  bnez  $v0, .L80036D5C
/* 01212C 80036D2C 94830000 */   lhu   $v1, ($a0)
/* 012130 80036D30 3C01BF80 */  lui   $at, 0xbf80
/* 012134 80036D34 4481A000 */  mtc1  $at, $f20
/* 012138 80036D38 00000000 */  nop   
/* 01213C 80036D3C 4405A000 */  mfc1  $a1, $f20
/* 012140 80036D40 0C04DF62 */  jal   func_80137D88
/* 012144 80036D44 240400FF */   addiu $a0, $zero, 0xff
/* 012148 80036D48 4405A000 */  mfc1  $a1, $f20
/* 01214C 80036D4C 0C04DF69 */  jal   func_80137DA4
/* 012150 80036D50 240400FF */   addiu $a0, $zero, 0xff
/* 012154 80036D54 0800DB5E */  j     .L80036D78
/* 012158 80036D58 00000000 */   nop   

.L80036D5C:
/* 01215C 80036D5C 3C02800A */  lui   $v0, 0x800a
/* 012160 80036D60 94420958 */  lhu   $v0, 0x958($v0)
/* 012164 80036D64 00621023 */  subu  $v0, $v1, $v0
/* 012168 80036D68 A4820000 */  sh    $v0, ($a0)
/* 01216C 80036D6C 00021400 */  sll   $v0, $v0, 0x10
/* 012170 80036D70 04420001 */  bltzl $v0, .L80036D78
/* 012174 80036D74 A4800000 */   sh    $zero, ($a0)
.L80036D78:
/* 012178 80036D78 3C02800A */  lui   $v0, 0x800a
/* 01217C 80036D7C 84420954 */  lh    $v0, 0x954($v0)
/* 012180 80036D80 3C04800A */  lui   $a0, 0x800a
/* 012184 80036D84 90840963 */  lbu   $a0, 0x963($a0)
/* 012188 80036D88 44820000 */  mtc1  $v0, $f0
/* 01218C 80036D8C 00000000 */  nop   
/* 012190 80036D90 46800020 */  cvt.s.w $f0, $f0
/* 012194 80036D94 44050000 */  mfc1  $a1, $f0
/* 012198 80036D98 0C04DF69 */  jal   func_80137DA4
/* 01219C 80036D9C 00000000 */   nop   
/* 0121A0 80036DA0 3C05800A */  lui   $a1, 0x800a
/* 0121A4 80036DA4 90A5095B */  lbu   $a1, 0x95b($a1)
/* 0121A8 80036DA8 3C06800A */  lui   $a2, 0x800a
/* 0121AC 80036DAC 90C6095D */  lbu   $a2, 0x95d($a2)
/* 0121B0 80036DB0 3C07800A */  lui   $a3, 0x800a
/* 0121B4 80036DB4 90E7095F */  lbu   $a3, 0x95f($a3)
/* 0121B8 80036DB8 0C04DF84 */  jal   func_80137E10
/* 0121BC 80036DBC 24040001 */   addiu $a0, $zero, 1
/* 0121C0 80036DC0 0C00CE1D */  jal   func_80033874
/* 0121C4 80036DC4 00000000 */   nop   
.L80036DC8:
/* 0121C8 80036DC8 8FBF0018 */  lw    $ra, 0x18($sp)
/* 0121CC 80036DCC 8FB10014 */  lw    $s1, 0x14($sp)
/* 0121D0 80036DD0 8FB00010 */  lw    $s0, 0x10($sp)
/* 0121D4 80036DD4 D7B40020 */  ldc1  $f20, 0x20($sp)
/* 0121D8 80036DD8 03E00008 */  jr    $ra
/* 0121DC 80036DDC 27BD0028 */   addiu $sp, $sp, 0x28

/* 0121E0 80036DE0 03E00008 */  jr    $ra
/* 0121E4 80036DE4 00000000 */   nop   

/* 0121E8 80036DE8 00000000 */  nop   
/* 0121EC 80036DEC 00000000 */  nop   


