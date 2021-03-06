.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel test_ray_entities
/* 038848 8005D448 27BDFE60 */  addiu $sp, $sp, -0x1a0
/* 03884C 8005D44C 44800000 */  mtc1  $zero, $f0
/* 038850 8005D450 2409FFFF */  addiu $t1, $zero, -1
/* 038854 8005D454 AFA90140 */  sw    $t1, 0x140($sp)
/* 038858 8005D458 8FA901C4 */  lw    $t1, 0x1c4($sp)
/* 03885C 8005D45C AFA701AC */  sw    $a3, 0x1ac($sp)
/* 038860 8005D460 C7A801AC */  lwc1  $f8, 0x1ac($sp)
/* 038864 8005D464 F7BE0198 */  sdc1  $f30, 0x198($sp)
/* 038868 8005D468 46006786 */  mov.s $f30, $f12
/* 03886C 8005D46C F7BA0188 */  sdc1  $f26, 0x188($sp)
/* 038870 8005D470 46007686 */  mov.s $f26, $f14
/* 038874 8005D474 AFB60160 */  sw    $s6, 0x160($sp)
/* 038878 8005D478 0000B02D */  daddu $s6, $zero, $zero
/* 03887C 8005D47C AFB20150 */  sw    $s2, 0x150($sp)
/* 038880 8005D480 27B20100 */  addiu $s2, $sp, 0x100
/* 038884 8005D484 AFBF016C */  sw    $ra, 0x16c($sp)
/* 038888 8005D488 AFBE0168 */  sw    $fp, 0x168($sp)
/* 03888C 8005D48C AFB70164 */  sw    $s7, 0x164($sp)
/* 038890 8005D490 AFB5015C */  sw    $s5, 0x15c($sp)
/* 038894 8005D494 AFB40158 */  sw    $s4, 0x158($sp)
/* 038898 8005D498 AFB30154 */  sw    $s3, 0x154($sp)
/* 03889C 8005D49C AFB1014C */  sw    $s1, 0x14c($sp)
/* 0388A0 8005D4A0 AFB00148 */  sw    $s0, 0x148($sp)
/* 0388A4 8005D4A4 F7BC0190 */  sdc1  $f28, 0x190($sp)
/* 0388A8 8005D4A8 F7B80180 */  sdc1  $f24, 0x180($sp)
/* 0388AC 8005D4AC F7B60178 */  sdc1  $f22, 0x178($sp)
/* 0388B0 8005D4B0 F7B40170 */  sdc1  $f20, 0x170($sp)
/* 0388B4 8005D4B4 AFA601A8 */  sw    $a2, 0x1a8($sp)
/* 0388B8 8005D4B8 C5360000 */  lwc1  $f22, ($t1)
/* 0388BC 8005D4BC 46004032 */  c.eq.s $f8, $f0
/* 0388C0 8005D4C0 00000000 */  nop   
/* 0388C4 8005D4C4 4500000E */  bc1f  .L8005D500
/* 0388C8 8005D4C8 4600B606 */   mov.s $f24, $f22
/* 0388CC 8005D4CC C7A801B4 */  lwc1  $f8, 0x1b4($sp)
/* 0388D0 8005D4D0 46004032 */  c.eq.s $f8, $f0
/* 0388D4 8005D4D4 00000000 */  nop   
/* 0388D8 8005D4D8 45000009 */  bc1f  .L8005D500
/* 0388DC 8005D4DC 00000000 */   nop   
/* 0388E0 8005D4E0 C7A801B0 */  lwc1  $f8, 0x1b0($sp)
/* 0388E4 8005D4E4 4600403C */  c.lt.s $f8, $f0
/* 0388E8 8005D4E8 00000000 */  nop   
/* 0388EC 8005D4EC 45000005 */  bc1f  .L8005D504
/* 0388F0 8005D4F0 00000000 */   nop   
/* 0388F4 8005D4F4 46000586 */  mov.s $f22, $f0
/* 0388F8 8005D4F8 08017547 */  j     .L8005D51C
/* 0388FC 8005D4FC 24160001 */   addiu $s6, $zero, 1

.L8005D500:
/* 038900 8005D500 C7A801B0 */  lwc1  $f8, 0x1b0($sp)
.L8005D504:
/* 038904 8005D504 46004032 */  c.eq.s $f8, $f0
/* 038908 8005D508 00000000 */  nop   
/* 03890C 8005D50C 45000004 */  bc1f  .L8005D520
/* 038910 8005D510 0000F02D */   daddu $fp, $zero, $zero
/* 038914 8005D514 46000606 */  mov.s $f24, $f0
/* 038918 8005D518 24160002 */  addiu $s6, $zero, 2
.L8005D51C:
/* 03891C 8005D51C 0000F02D */  daddu $fp, $zero, $zero
.L8005D520:
/* 038920 8005D520 27B700A0 */  addiu $s7, $sp, 0xa0
/* 038924 8005D524 4480A000 */  mtc1  $zero, $f20
/* 038928 8005D528 3C013F80 */  lui   $at, 0x3f80
/* 03892C 8005D52C 4481E000 */  mtc1  $at, $f28
/* 038930 8005D530 3C01BF80 */  lui   $at, 0xbf80
/* 038934 8005D534 44810000 */  mtc1  $at, $f0
/* 038938 8005D538 24020001 */  addiu $v0, $zero, 1
/* 03893C 8005D53C A642003C */  sh    $v0, 0x3c($s2)
/* 038940 8005D540 3C01800A */  lui   $at, 0x800a
/* 038944 8005D544 E4204254 */  swc1  $f0, 0x4254($at)
.L8005D548:
/* 038948 8005D548 0C04417A */  jal   get_entity_by_index
/* 03894C 8005D54C 03C0202D */   daddu $a0, $fp, $zero
/* 038950 8005D550 0040882D */  daddu $s1, $v0, $zero
/* 038954 8005D554 52200154 */  beql  $s1, $zero, .L8005DAA8
/* 038958 8005D558 27DE0001 */   addiu $fp, $fp, 1
/* 03895C 8005D55C 3C034000 */  lui   $v1, 0x4000
/* 038960 8005D560 8E220000 */  lw    $v0, ($s1)
/* 038964 8005D564 34630020 */  ori   $v1, $v1, 0x20
/* 038968 8005D568 00431024 */  and   $v0, $v0, $v1
/* 03896C 8005D56C 5440014E */  bnel  $v0, $zero, .L8005DAA8
/* 038970 8005D570 27DE0001 */   addiu $fp, $fp, 1
/* 038974 8005D574 C62600B0 */  lwc1  $f6, 0xb0($s1)
/* 038978 8005D578 4606B080 */  add.s $f2, $f22, $f6
/* 03897C 8005D57C C6240048 */  lwc1  $f4, 0x48($s1)
/* 038980 8005D580 46022000 */  add.s $f0, $f4, $f2
/* 038984 8005D584 461E003C */  c.lt.s $f0, $f30
/* 038988 8005D588 00000000 */  nop   
/* 03898C 8005D58C 45030146 */  bc1tl .L8005DAA8
/* 038990 8005D590 27DE0001 */   addiu $fp, $fp, 1
/* 038994 8005D594 46022001 */  sub.s $f0, $f4, $f2
/* 038998 8005D598 4600F03C */  c.lt.s $f30, $f0
/* 03899C 8005D59C 00000000 */  nop   
/* 0389A0 8005D5A0 45030141 */  bc1tl .L8005DAA8
/* 0389A4 8005D5A4 27DE0001 */   addiu $fp, $fp, 1
/* 0389A8 8005D5A8 C6240050 */  lwc1  $f4, 0x50($s1)
/* 0389AC 8005D5AC 46022000 */  add.s $f0, $f4, $f2
/* 0389B0 8005D5B0 C7A801A8 */  lwc1  $f8, 0x1a8($sp)
/* 0389B4 8005D5B4 4608003C */  c.lt.s $f0, $f8
/* 0389B8 8005D5B8 00000000 */  nop   
/* 0389BC 8005D5BC 4503013A */  bc1tl .L8005DAA8
/* 0389C0 8005D5C0 27DE0001 */   addiu $fp, $fp, 1
/* 0389C4 8005D5C4 46022001 */  sub.s $f0, $f4, $f2
/* 0389C8 8005D5C8 4600403C */  c.lt.s $f8, $f0
/* 0389CC 8005D5CC 00000000 */  nop   
/* 0389D0 8005D5D0 45030135 */  bc1tl .L8005DAA8
/* 0389D4 8005D5D4 27DE0001 */   addiu $fp, $fp, 1
/* 0389D8 8005D5D8 06C00016 */  bltz  $s6, .L8005D634
/* 0389DC 8005D5DC 2AC20002 */   slti  $v0, $s6, 2
/* 0389E0 8005D5E0 54400006 */  bnel  $v0, $zero, .L8005D5FC
/* 0389E4 8005D5E4 46063000 */   add.s $f0, $f6, $f6
/* 0389E8 8005D5E8 24020002 */  addiu $v0, $zero, 2
/* 0389EC 8005D5EC 12C20005 */  beq   $s6, $v0, .L8005D604
/* 0389F0 8005D5F0 26300070 */   addiu $s0, $s1, 0x70
/* 0389F4 8005D5F4 0801758F */  j     .L8005D63C
/* 0389F8 8005D5F8 0200202D */   daddu $a0, $s0, $zero

.L8005D5FC:
/* 0389FC 8005D5FC 08017582 */  j     .L8005D608
/* 038A00 8005D600 4600C100 */   add.s $f4, $f24, $f0

.L8005D604:
/* 038A04 8005D604 46063100 */  add.s $f4, $f6, $f6
.L8005D608:
/* 038A08 8005D608 C622004C */  lwc1  $f2, 0x4c($s1)
/* 038A0C 8005D60C 46041000 */  add.s $f0, $f2, $f4
/* 038A10 8005D610 461A003C */  c.lt.s $f0, $f26
/* 038A14 8005D614 00000000 */  nop   
/* 038A18 8005D618 45030123 */  bc1tl .L8005DAA8
/* 038A1C 8005D61C 27DE0001 */   addiu $fp, $fp, 1
/* 038A20 8005D620 46041001 */  sub.s $f0, $f2, $f4
/* 038A24 8005D624 4600D03C */  c.lt.s $f26, $f0
/* 038A28 8005D628 00000000 */  nop   
/* 038A2C 8005D62C 4503011E */  bc1tl .L8005DAA8
/* 038A30 8005D630 27DE0001 */   addiu $fp, $fp, 1
.L8005D634:
/* 038A34 8005D634 26300070 */  addiu $s0, $s1, 0x70
/* 038A38 8005D638 0200202D */  daddu $a0, $s0, $zero
.L8005D63C:
/* 038A3C 8005D63C 0000A82D */  daddu $s5, $zero, $zero
/* 038A40 8005D640 3C148009 */  lui   $s4, 0x8009
/* 038A44 8005D644 2694FFB8 */  addiu $s4, $s4, -0x48
/* 038A48 8005D648 8FA501AC */  lw    $a1, 0x1ac($sp)
/* 038A4C 8005D64C 8FA601B0 */  lw    $a2, 0x1b0($sp)
/* 038A50 8005D650 8FA701B4 */  lw    $a3, 0x1b4($sp)
/* 038A54 8005D654 9623000C */  lhu   $v1, 0xc($s1)
/* 038A58 8005D658 96280010 */  lhu   $t0, 0x10($s1)
/* 038A5C 8005D65C 3C138009 */  lui   $s3, 0x8009
/* 038A60 8005D660 2673FF70 */  addiu $s3, $s3, -0x90
/* 038A64 8005D664 E7B400C8 */  swc1  $f20, 0xc8($sp)
/* 038A68 8005D668 E7B400BC */  swc1  $f20, 0xbc($sp)
/* 038A6C 8005D66C E7B400B0 */  swc1  $f20, 0xb0($sp)
/* 038A70 8005D670 E7B400A4 */  swc1  $f20, 0xa4($sp)
/* 038A74 8005D674 00031C00 */  sll   $v1, $v1, 0x10
/* 038A78 8005D678 00031403 */  sra   $v0, $v1, 0x10
/* 038A7C 8005D67C 00031FC2 */  srl   $v1, $v1, 0x1f
/* 038A80 8005D680 00431021 */  addu  $v0, $v0, $v1
/* 038A84 8005D684 00021043 */  sra   $v0, $v0, 1
/* 038A88 8005D688 44821000 */  mtc1  $v0, $f2
/* 038A8C 8005D68C 00000000 */  nop   
/* 038A90 8005D690 468010A0 */  cvt.s.w $f2, $f2
/* 038A94 8005D694 00084400 */  sll   $t0, $t0, 0x10
/* 038A98 8005D698 00081403 */  sra   $v0, $t0, 0x10
/* 038A9C 8005D69C 000847C2 */  srl   $t0, $t0, 0x1f
/* 038AA0 8005D6A0 00481021 */  addu  $v0, $v0, $t0
/* 038AA4 8005D6A4 00021043 */  sra   $v0, $v0, 1
/* 038AA8 8005D6A8 46001007 */  neg.s $f0, $f2
/* 038AAC 8005D6AC E7A000E8 */  swc1  $f0, 0xe8($sp)
/* 038AB0 8005D6B0 E7A000DC */  swc1  $f0, 0xdc($sp)
/* 038AB4 8005D6B4 E7A000B8 */  swc1  $f0, 0xb8($sp)
/* 038AB8 8005D6B8 E7A000AC */  swc1  $f0, 0xac($sp)
/* 038ABC 8005D6BC 44820000 */  mtc1  $v0, $f0
/* 038AC0 8005D6C0 00000000 */  nop   
/* 038AC4 8005D6C4 46800020 */  cvt.s.w $f0, $f0
/* 038AC8 8005D6C8 E7A200F4 */  swc1  $f2, 0xf4($sp)
/* 038ACC 8005D6CC E7A200D0 */  swc1  $f2, 0xd0($sp)
/* 038AD0 8005D6D0 E7A200C4 */  swc1  $f2, 0xc4($sp)
/* 038AD4 8005D6D4 E7A200A0 */  swc1  $f2, 0xa0($sp)
/* 038AD8 8005D6D8 8623000E */  lh    $v1, 0xe($s1)
/* 038ADC 8005D6DC 3C02800A */  lui   $v0, 0x800a
/* 038AE0 8005D6E0 2442423C */  addiu $v0, $v0, 0x423c
/* 038AE4 8005D6E4 E7A000E4 */  swc1  $f0, 0xe4($sp)
/* 038AE8 8005D6E8 E7A000D8 */  swc1  $f0, 0xd8($sp)
/* 038AEC 8005D6EC E7A000B4 */  swc1  $f0, 0xb4($sp)
/* 038AF0 8005D6F0 E7A000A8 */  swc1  $f0, 0xa8($sp)
/* 038AF4 8005D6F4 46000007 */  neg.s $f0, $f0
/* 038AF8 8005D6F8 E7A000FC */  swc1  $f0, 0xfc($sp)
/* 038AFC 8005D6FC E7A000F0 */  swc1  $f0, 0xf0($sp)
/* 038B00 8005D700 E7A000CC */  swc1  $f0, 0xcc($sp)
/* 038B04 8005D704 E7A000C0 */  swc1  $f0, 0xc0($sp)
/* 038B08 8005D708 44830000 */  mtc1  $v1, $f0
/* 038B0C 8005D70C 00000000 */  nop   
/* 038B10 8005D710 46800020 */  cvt.s.w $f0, $f0
/* 038B14 8005D714 E7A000F8 */  swc1  $f0, 0xf8($sp)
/* 038B18 8005D718 E7A000EC */  swc1  $f0, 0xec($sp)
/* 038B1C 8005D71C E7A000E0 */  swc1  $f0, 0xe0($sp)
/* 038B20 8005D720 E7A000D4 */  swc1  $f0, 0xd4($sp)
/* 038B24 8005D724 AFA20010 */  sw    $v0, 0x10($sp)
/* 038B28 8005D728 3C02800A */  lui   $v0, 0x800a
/* 038B2C 8005D72C 24424240 */  addiu $v0, $v0, 0x4240
/* 038B30 8005D730 AFA20014 */  sw    $v0, 0x14($sp)
/* 038B34 8005D734 3C02800A */  lui   $v0, 0x800a
/* 038B38 8005D738 24424244 */  addiu $v0, $v0, 0x4244
/* 038B3C 8005D73C 0C019E9C */  jal   guMtxXFMF
/* 038B40 8005D740 AFA20018 */   sw    $v0, 0x18($sp)
/* 038B44 8005D744 C6200048 */  lwc1  $f0, 0x48($s1)
/* 038B48 8005D748 C6220050 */  lwc1  $f2, 0x50($s1)
/* 038B4C 8005D74C 4600F001 */  sub.s $f0, $f30, $f0
/* 038B50 8005D750 C7A801A8 */  lwc1  $f8, 0x1a8($sp)
/* 038B54 8005D754 0200202D */  daddu $a0, $s0, $zero
/* 038B58 8005D758 46024201 */  sub.s $f8, $f8, $f2
/* 038B5C 8005D75C 44050000 */  mfc1  $a1, $f0
/* 038B60 8005D760 C620004C */  lwc1  $f0, 0x4c($s1)
/* 038B64 8005D764 44074000 */  mfc1  $a3, $f8
/* 038B68 8005D768 3C02800A */  lui   $v0, 0x800a
/* 038B6C 8005D76C 24424230 */  addiu $v0, $v0, 0x4230
/* 038B70 8005D770 AFA20010 */  sw    $v0, 0x10($sp)
/* 038B74 8005D774 4600D001 */  sub.s $f0, $f26, $f0
/* 038B78 8005D778 3C02800A */  lui   $v0, 0x800a
/* 038B7C 8005D77C 24424234 */  addiu $v0, $v0, 0x4234
/* 038B80 8005D780 AFA20014 */  sw    $v0, 0x14($sp)
/* 038B84 8005D784 44060000 */  mfc1  $a2, $f0
/* 038B88 8005D788 3C02800A */  lui   $v0, 0x800a
/* 038B8C 8005D78C 24424238 */  addiu $v0, $v0, 0x4238
/* 038B90 8005D790 0C019E9C */  jal   guMtxXFMF
/* 038B94 8005D794 AFA20018 */   sw    $v0, 0x18($sp)
.L8005D798:
/* 038B98 8005D798 86620000 */  lh    $v0, ($s3)
/* 038B9C 8005D79C 00021840 */  sll   $v1, $v0, 1
/* 038BA0 8005D7A0 00621821 */  addu  $v1, $v1, $v0
/* 038BA4 8005D7A4 00031880 */  sll   $v1, $v1, 2
/* 038BA8 8005D7A8 02E31821 */  addu  $v1, $s7, $v1
/* 038BAC 8005D7AC AE430000 */  sw    $v1, ($s2)
/* 038BB0 8005D7B0 86620002 */  lh    $v0, 2($s3)
/* 038BB4 8005D7B4 00022840 */  sll   $a1, $v0, 1
/* 038BB8 8005D7B8 00A22821 */  addu  $a1, $a1, $v0
/* 038BBC 8005D7BC 00052880 */  sll   $a1, $a1, 2
/* 038BC0 8005D7C0 02E52821 */  addu  $a1, $s7, $a1
/* 038BC4 8005D7C4 AE450004 */  sw    $a1, 4($s2)
/* 038BC8 8005D7C8 86620004 */  lh    $v0, 4($s3)
/* 038BCC 8005D7CC 00022040 */  sll   $a0, $v0, 1
/* 038BD0 8005D7D0 00822021 */  addu  $a0, $a0, $v0
/* 038BD4 8005D7D4 00042080 */  sll   $a0, $a0, 2
/* 038BD8 8005D7D8 02E42021 */  addu  $a0, $s7, $a0
/* 038BDC 8005D7DC AE440008 */  sw    $a0, 8($s2)
/* 038BE0 8005D7E0 C4800000 */  lwc1  $f0, ($a0)
/* 038BE4 8005D7E4 C4620000 */  lwc1  $f2, ($v1)
/* 038BE8 8005D7E8 46020001 */  sub.s $f0, $f0, $f2
/* 038BEC 8005D7EC E640000C */  swc1  $f0, 0xc($s2)
/* 038BF0 8005D7F0 C4800004 */  lwc1  $f0, 4($a0)
/* 038BF4 8005D7F4 C4620004 */  lwc1  $f2, 4($v1)
/* 038BF8 8005D7F8 46020001 */  sub.s $f0, $f0, $f2
/* 038BFC 8005D7FC E6400010 */  swc1  $f0, 0x10($s2)
/* 038C00 8005D800 C4800008 */  lwc1  $f0, 8($a0)
/* 038C04 8005D804 C4620008 */  lwc1  $f2, 8($v1)
/* 038C08 8005D808 46020001 */  sub.s $f0, $f0, $f2
/* 038C0C 8005D80C E6400014 */  swc1  $f0, 0x14($s2)
/* 038C10 8005D810 C4600000 */  lwc1  $f0, ($v1)
/* 038C14 8005D814 C4A20000 */  lwc1  $f2, ($a1)
/* 038C18 8005D818 46020001 */  sub.s $f0, $f0, $f2
/* 038C1C 8005D81C E6400018 */  swc1  $f0, 0x18($s2)
/* 038C20 8005D820 C4600004 */  lwc1  $f0, 4($v1)
/* 038C24 8005D824 C4A20004 */  lwc1  $f2, 4($a1)
/* 038C28 8005D828 46020001 */  sub.s $f0, $f0, $f2
/* 038C2C 8005D82C E640001C */  swc1  $f0, 0x1c($s2)
/* 038C30 8005D830 C4600008 */  lwc1  $f0, 8($v1)
/* 038C34 8005D834 C4A20008 */  lwc1  $f2, 8($a1)
/* 038C38 8005D838 46020001 */  sub.s $f0, $f0, $f2
/* 038C3C 8005D83C E6400020 */  swc1  $f0, 0x20($s2)
/* 038C40 8005D840 C4A00000 */  lwc1  $f0, ($a1)
/* 038C44 8005D844 C4820000 */  lwc1  $f2, ($a0)
/* 038C48 8005D848 46020001 */  sub.s $f0, $f0, $f2
/* 038C4C 8005D84C E6400024 */  swc1  $f0, 0x24($s2)
/* 038C50 8005D850 C4A00004 */  lwc1  $f0, 4($a1)
/* 038C54 8005D854 C4820004 */  lwc1  $f2, 4($a0)
/* 038C58 8005D858 46020001 */  sub.s $f0, $f0, $f2
/* 038C5C 8005D85C E6400028 */  swc1  $f0, 0x28($s2)
/* 038C60 8005D860 C4A00008 */  lwc1  $f0, 8($a1)
/* 038C64 8005D864 C4820008 */  lwc1  $f2, 8($a0)
/* 038C68 8005D868 46020001 */  sub.s $f0, $f0, $f2
/* 038C6C 8005D86C E640002C */  swc1  $f0, 0x2c($s2)
/* 038C70 8005D870 C6800000 */  lwc1  $f0, ($s4)
/* 038C74 8005D874 E6400030 */  swc1  $f0, 0x30($s2)
/* 038C78 8005D878 C6800004 */  lwc1  $f0, 4($s4)
/* 038C7C 8005D87C 27A40100 */  addiu $a0, $sp, 0x100
/* 038C80 8005D880 E6400034 */  swc1  $f0, 0x34($s2)
/* 038C84 8005D884 C6800008 */  lwc1  $f0, 8($s4)
/* 038C88 8005D888 02E0282D */  daddu $a1, $s7, $zero
/* 038C8C 8005D88C 0C016FA1 */  jal   test_ray_triangle_general
/* 038C90 8005D890 E6400038 */   swc1  $f0, 0x38($s2)
/* 038C94 8005D894 0040182D */  daddu $v1, $v0, $zero
/* 038C98 8005D898 14600008 */  bnez  $v1, .L8005D8BC
/* 038C9C 8005D89C 00000000 */   nop   
/* 038CA0 8005D8A0 2694000C */  addiu $s4, $s4, 0xc
/* 038CA4 8005D8A4 26B50001 */  addiu $s5, $s5, 1
/* 038CA8 8005D8A8 2AA2000C */  slti  $v0, $s5, 0xc
/* 038CAC 8005D8AC 1440FFBA */  bnez  $v0, .L8005D798
/* 038CB0 8005D8B0 26730006 */   addiu $s3, $s3, 6
/* 038CB4 8005D8B4 5060007C */  beql  $v1, $zero, .L8005DAA8
/* 038CB8 8005D8B8 27DE0001 */   addiu $fp, $fp, 1
.L8005D8BC:
/* 038CBC 8005D8BC 3C03800A */  lui   $v1, 0x800a
/* 038CC0 8005D8C0 24634254 */  addiu $v1, $v1, 0x4254
/* 038CC4 8005D8C4 8FA901C4 */  lw    $t1, 0x1c4($sp)
/* 038CC8 8005D8C8 C4620000 */  lwc1  $f2, ($v1)
/* 038CCC 8005D8CC C5200000 */  lwc1  $f0, ($t1)
/* 038CD0 8005D8D0 4600103C */  c.lt.s $f2, $f0
/* 038CD4 8005D8D4 00000000 */  nop   
/* 038CD8 8005D8D8 45020073 */  bc1fl .L8005DAA8
/* 038CDC 8005D8DC 27DE0001 */   addiu $fp, $fp, 1
/* 038CE0 8005D8E0 24020001 */  addiu $v0, $zero, 1
/* 038CE4 8005D8E4 AFBE0140 */  sw    $fp, 0x140($sp)
/* 038CE8 8005D8E8 12C2000F */  beq   $s6, $v0, .L8005D928
/* 038CEC 8005D8EC E5220000 */   swc1  $f2, ($t1)
/* 038CF0 8005D8F0 2AC20002 */  slti  $v0, $s6, 2
/* 038CF4 8005D8F4 10400005 */  beqz  $v0, .L8005D90C
/* 038CF8 8005D8F8 24020002 */   addiu $v0, $zero, 2
/* 038CFC 8005D8FC 12C00007 */  beqz  $s6, .L8005D91C
/* 038D00 8005D900 00000000 */   nop   
/* 038D04 8005D904 0801764F */  j     .L8005D93C
/* 038D08 8005D908 E7B40010 */   swc1  $f20, 0x10($sp)

.L8005D90C:
/* 038D0C 8005D90C 12C20009 */  beq   $s6, $v0, .L8005D934
/* 038D10 8005D910 00000000 */   nop   
/* 038D14 8005D914 0801764F */  j     .L8005D93C
/* 038D18 8005D918 E7B40010 */   swc1  $f20, 0x10($sp)

.L8005D91C:
/* 038D1C 8005D91C C4760000 */  lwc1  $f22, ($v1)
/* 038D20 8005D920 0801764E */  j     .L8005D938
/* 038D24 8005D924 4600B606 */   mov.s $f24, $f22

.L8005D928:
/* 038D28 8005D928 C4780000 */  lwc1  $f24, ($v1)
/* 038D2C 8005D92C 0801764F */  j     .L8005D93C
/* 038D30 8005D930 E7B40010 */   swc1  $f20, 0x10($sp)

.L8005D934:
/* 038D34 8005D934 C4760000 */  lwc1  $f22, ($v1)
.L8005D938:
/* 038D38 8005D938 E7B40010 */  swc1  $f20, 0x10($sp)
.L8005D93C:
/* 038D3C 8005D93C 8E250060 */  lw    $a1, 0x60($s1)
/* 038D40 8005D940 4406E000 */  mfc1  $a2, $f28
/* 038D44 8005D944 4407A000 */  mfc1  $a3, $f20
/* 038D48 8005D948 0C019EC8 */  jal   guRotateF
/* 038D4C 8005D94C 27A40020 */   addiu $a0, $sp, 0x20
/* 038D50 8005D950 27B00060 */  addiu $s0, $sp, 0x60
/* 038D54 8005D954 E7BC0010 */  swc1  $f28, 0x10($sp)
/* 038D58 8005D958 8E250068 */  lw    $a1, 0x68($s1)
/* 038D5C 8005D95C 4406A000 */  mfc1  $a2, $f20
/* 038D60 8005D960 4407A000 */  mfc1  $a3, $f20
/* 038D64 8005D964 0C019EC8 */  jal   guRotateF
/* 038D68 8005D968 0200202D */   daddu $a0, $s0, $zero
/* 038D6C 8005D96C 27A40020 */  addiu $a0, $sp, 0x20
/* 038D70 8005D970 0200282D */  daddu $a1, $s0, $zero
/* 038D74 8005D974 0C019D80 */  jal   guMtxCatF
/* 038D78 8005D978 0080302D */   daddu $a2, $a0, $zero
/* 038D7C 8005D97C E7B40010 */  swc1  $f20, 0x10($sp)
/* 038D80 8005D980 8E250064 */  lw    $a1, 0x64($s1)
/* 038D84 8005D984 4406A000 */  mfc1  $a2, $f20
/* 038D88 8005D988 4407E000 */  mfc1  $a3, $f28
/* 038D8C 8005D98C 0C019EC8 */  jal   guRotateF
/* 038D90 8005D990 0200202D */   daddu $a0, $s0, $zero
/* 038D94 8005D994 27A40020 */  addiu $a0, $sp, 0x20
/* 038D98 8005D998 0200282D */  daddu $a1, $s0, $zero
/* 038D9C 8005D99C 0C019D80 */  jal   guMtxCatF
/* 038DA0 8005D9A0 0080302D */   daddu $a2, $a0, $zero
/* 038DA4 8005D9A4 8E250048 */  lw    $a1, 0x48($s1)
/* 038DA8 8005D9A8 8E26004C */  lw    $a2, 0x4c($s1)
/* 038DAC 8005D9AC 8E270050 */  lw    $a3, 0x50($s1)
/* 038DB0 8005D9B0 0C019E40 */  jal   guTranslateF
/* 038DB4 8005D9B4 0200202D */   daddu $a0, $s0, $zero
/* 038DB8 8005D9B8 27A40020 */  addiu $a0, $sp, 0x20
/* 038DBC 8005D9BC 0200282D */  daddu $a1, $s0, $zero
/* 038DC0 8005D9C0 0C019D80 */  jal   guMtxCatF
/* 038DC4 8005D9C4 0080302D */   daddu $a2, $a0, $zero
/* 038DC8 8005D9C8 8FA901B8 */  lw    $t1, 0x1b8($sp)
/* 038DCC 8005D9CC 3C05800A */  lui   $a1, 0x800a
/* 038DD0 8005D9D0 8CA54248 */  lw    $a1, 0x4248($a1)
/* 038DD4 8005D9D4 3C06800A */  lui   $a2, 0x800a
/* 038DD8 8005D9D8 8CC6424C */  lw    $a2, 0x424c($a2)
/* 038DDC 8005D9DC 3C07800A */  lui   $a3, 0x800a
/* 038DE0 8005D9E0 8CE74250 */  lw    $a3, 0x4250($a3)
/* 038DE4 8005D9E4 AFA90010 */  sw    $t1, 0x10($sp)
/* 038DE8 8005D9E8 8FA901BC */  lw    $t1, 0x1bc($sp)
/* 038DEC 8005D9EC AFA90014 */  sw    $t1, 0x14($sp)
/* 038DF0 8005D9F0 8FA901C0 */  lw    $t1, 0x1c0($sp)
/* 038DF4 8005D9F4 27A40020 */  addiu $a0, $sp, 0x20
/* 038DF8 8005D9F8 0C019E9C */  jal   guMtxXFMF
/* 038DFC 8005D9FC AFA90018 */   sw    $t1, 0x18($sp)
/* 038E00 8005DA00 3C10800A */  lui   $s0, 0x800a
/* 038E04 8005DA04 26104258 */  addiu $s0, $s0, 0x4258
/* 038E08 8005DA08 C6040000 */  lwc1  $f4, ($s0)
/* 038E0C 8005DA0C 46042102 */  mul.s $f4, $f4, $f4
/* 038E10 8005DA10 00000000 */  nop   
/* 038E14 8005DA14 3C11800A */  lui   $s1, 0x800a
/* 038E18 8005DA18 2631425C */  addiu $s1, $s1, 0x425c
/* 038E1C 8005DA1C C6220000 */  lwc1  $f2, ($s1)
/* 038E20 8005DA20 46021082 */  mul.s $f2, $f2, $f2
/* 038E24 8005DA24 00000000 */  nop   
/* 038E28 8005DA28 3C13800A */  lui   $s3, 0x800a
/* 038E2C 8005DA2C 26734260 */  addiu $s3, $s3, 0x4260
/* 038E30 8005DA30 C6600000 */  lwc1  $f0, ($s3)
/* 038E34 8005DA34 46000002 */  mul.s $f0, $f0, $f0
/* 038E38 8005DA38 00000000 */  nop   
/* 038E3C 8005DA3C 46022100 */  add.s $f4, $f4, $f2
/* 038E40 8005DA40 46002300 */  add.s $f12, $f4, $f0
/* 038E44 8005DA44 46006084 */  sqrt.s $f2, $f12
/* 038E48 8005DA48 46021032 */  c.eq.s $f2, $f2
/* 038E4C 8005DA4C 00000000 */  nop   
/* 038E50 8005DA50 45010004 */  bc1t  .L8005DA64
/* 038E54 8005DA54 00000000 */   nop   
/* 038E58 8005DA58 0C0187BC */  jal   sqrtf
/* 038E5C 8005DA5C 00000000 */   nop   
/* 038E60 8005DA60 46000086 */  mov.s $f2, $f0
.L8005DA64:
/* 038E64 8005DA64 C6000000 */  lwc1  $f0, ($s0)
/* 038E68 8005DA68 4602E083 */  div.s $f2, $f28, $f2
/* 038E6C 8005DA6C 46020002 */  mul.s $f0, $f0, $f2
/* 038E70 8005DA70 00000000 */  nop   
/* 038E74 8005DA74 8FA901C8 */  lw    $t1, 0x1c8($sp)
/* 038E78 8005DA78 E5200000 */  swc1  $f0, ($t1)
/* 038E7C 8005DA7C C6200000 */  lwc1  $f0, ($s1)
/* 038E80 8005DA80 46020002 */  mul.s $f0, $f0, $f2
/* 038E84 8005DA84 00000000 */  nop   
/* 038E88 8005DA88 8FA901CC */  lw    $t1, 0x1cc($sp)
/* 038E8C 8005DA8C E5200000 */  swc1  $f0, ($t1)
/* 038E90 8005DA90 C6600000 */  lwc1  $f0, ($s3)
/* 038E94 8005DA94 46020002 */  mul.s $f0, $f0, $f2
/* 038E98 8005DA98 00000000 */  nop   
/* 038E9C 8005DA9C 8FA901D0 */  lw    $t1, 0x1d0($sp)
/* 038EA0 8005DAA0 E5200000 */  swc1  $f0, ($t1)
/* 038EA4 8005DAA4 27DE0001 */  addiu $fp, $fp, 1
.L8005DAA8:
/* 038EA8 8005DAA8 2BC2001E */  slti  $v0, $fp, 0x1e
/* 038EAC 8005DAAC 1440FEA6 */  bnez  $v0, .L8005D548
/* 038EB0 8005DAB0 00000000 */   nop   
/* 038EB4 8005DAB4 8FA20140 */  lw    $v0, 0x140($sp)
/* 038EB8 8005DAB8 8FBF016C */  lw    $ra, 0x16c($sp)
/* 038EBC 8005DABC 8FBE0168 */  lw    $fp, 0x168($sp)
/* 038EC0 8005DAC0 8FB70164 */  lw    $s7, 0x164($sp)
/* 038EC4 8005DAC4 8FB60160 */  lw    $s6, 0x160($sp)
/* 038EC8 8005DAC8 8FB5015C */  lw    $s5, 0x15c($sp)
/* 038ECC 8005DACC 8FB40158 */  lw    $s4, 0x158($sp)
/* 038ED0 8005DAD0 8FB30154 */  lw    $s3, 0x154($sp)
/* 038ED4 8005DAD4 8FB20150 */  lw    $s2, 0x150($sp)
/* 038ED8 8005DAD8 8FB1014C */  lw    $s1, 0x14c($sp)
/* 038EDC 8005DADC 8FB00148 */  lw    $s0, 0x148($sp)
/* 038EE0 8005DAE0 D7BE0198 */  ldc1  $f30, 0x198($sp)
/* 038EE4 8005DAE4 D7BC0190 */  ldc1  $f28, 0x190($sp)
/* 038EE8 8005DAE8 D7BA0188 */  ldc1  $f26, 0x188($sp)
/* 038EEC 8005DAEC D7B80180 */  ldc1  $f24, 0x180($sp)
/* 038EF0 8005DAF0 D7B60178 */  ldc1  $f22, 0x178($sp)
/* 038EF4 8005DAF4 D7B40170 */  ldc1  $f20, 0x170($sp)
/* 038EF8 8005DAF8 03E00008 */  jr    $ra
/* 038EFC 8005DAFC 27BD01A0 */   addiu $sp, $sp, 0x1a0

/* 038F00 8005DB00 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 038F04 8005DB04 AFB20018 */  sw    $s2, 0x18($sp)
/* 038F08 8005DB08 0080902D */  daddu $s2, $a0, $zero
/* 038F0C 8005DB0C AFBF0020 */  sw    $ra, 0x20($sp)
/* 038F10 8005DB10 AFB3001C */  sw    $s3, 0x1c($sp)
/* 038F14 8005DB14 AFB10014 */  sw    $s1, 0x14($sp)
/* 038F18 8005DB18 AFB00010 */  sw    $s0, 0x10($sp)
/* 038F1C 8005DB1C 8E420148 */  lw    $v0, 0x148($s2)
/* 038F20 8005DB20 84440008 */  lh    $a0, 8($v0)
/* 038F24 8005DB24 0C00EABB */  jal   get_npc_unsafe
/* 038F28 8005DB28 00A0802D */   daddu $s0, $a1, $zero
/* 038F2C 8005DB2C 3C138011 */  lui   $s3, 0x8011
/* 038F30 8005DB30 2673EFC8 */  addiu $s3, $s3, -0x1038
/* 038F34 8005DB34 12000002 */  beqz  $s0, .L8005DB40
/* 038F38 8005DB38 0040882D */   daddu $s1, $v0, $zero
/* 038F3C 8005DB3C AE400070 */  sw    $zero, 0x70($s2)
.L8005DB40:
/* 038F40 8005DB40 8E440070 */  lw    $a0, 0x70($s2)
/* 038F44 8005DB44 10800005 */  beqz  $a0, .L8005DB5C
/* 038F48 8005DB48 24020001 */   addiu $v0, $zero, 1
/* 038F4C 8005DB4C 1082001F */  beq   $a0, $v0, .L8005DBCC
/* 038F50 8005DB50 0000102D */   daddu $v0, $zero, $zero
/* 038F54 8005DB54 0801774E */  j     .L8005DD38
/* 038F58 8005DB58 00000000 */   nop   

.L8005DB5C:
/* 038F5C 8005DB5C 0240202D */  daddu $a0, $s2, $zero
/* 038F60 8005DB60 3C05FE36 */  lui   $a1, 0xfe36
/* 038F64 8005DB64 0C0B210B */  jal   get_float_variable
/* 038F68 8005DB68 34A53C80 */   ori   $a1, $a1, 0x3c80
/* 038F6C 8005DB6C 0240202D */  daddu $a0, $s2, $zero
/* 038F70 8005DB70 3C05FE36 */  lui   $a1, 0xfe36
/* 038F74 8005DB74 34A53C81 */  ori   $a1, $a1, 0x3c81
/* 038F78 8005DB78 0C0B1EAF */  jal   get_variable
/* 038F7C 8005DB7C E6200010 */   swc1  $f0, 0x10($s1)
/* 038F80 8005DB80 0240202D */  daddu $a0, $s2, $zero
/* 038F84 8005DB84 3C05FE36 */  lui   $a1, 0xfe36
/* 038F88 8005DB88 34A53C82 */  ori   $a1, $a1, 0x3c82
/* 038F8C 8005DB8C 0C0B1EAF */  jal   get_variable
/* 038F90 8005DB90 A622008E */   sh    $v0, 0x8e($s1)
/* 038F94 8005DB94 0240202D */  daddu $a0, $s2, $zero
/* 038F98 8005DB98 3C05FE36 */  lui   $a1, 0xfe36
/* 038F9C 8005DB9C 34A53C83 */  ori   $a1, $a1, 0x3c83
/* 038FA0 8005DBA0 0C0B1EAF */  jal   get_variable
/* 038FA4 8005DBA4 AE420074 */   sw    $v0, 0x74($s2)
/* 038FA8 8005DBA8 00021FC2 */  srl   $v1, $v0, 0x1f
/* 038FAC 8005DBAC 00621821 */  addu  $v1, $v1, $v0
/* 038FB0 8005DBB0 8E4200AC */  lw    $v0, 0xac($s2)
/* 038FB4 8005DBB4 00031843 */  sra   $v1, $v1, 1
/* 038FB8 8005DBB8 AE430078 */  sw    $v1, 0x78($s2)
/* 038FBC 8005DBBC AE220028 */  sw    $v0, 0x28($s1)
/* 038FC0 8005DBC0 24020001 */  addiu $v0, $zero, 1
/* 038FC4 8005DBC4 0801774D */  j     .L8005DD34
/* 038FC8 8005DBC8 AE420070 */   sw    $v0, 0x70($s2)

.L8005DBCC:
/* 038FCC 8005DBCC 3C028011 */  lui   $v0, 0x8011
/* 038FD0 8005DBD0 2442EBB0 */  addiu $v0, $v0, -0x1450
/* 038FD4 8005DBD4 80430003 */  lb    $v1, 3($v0)
/* 038FD8 8005DBD8 24020009 */  addiu $v0, $zero, 9
/* 038FDC 8005DBDC 10620056 */  beq   $v1, $v0, .L8005DD38
/* 038FE0 8005DBE0 0000102D */   daddu $v0, $zero, $zero
/* 038FE4 8005DBE4 8622008E */  lh    $v0, 0x8e($s1)
/* 038FE8 8005DBE8 10400005 */  beqz  $v0, .L8005DC00
/* 038FEC 8005DBEC 00000000 */   nop   
/* 038FF0 8005DBF0 1044002C */  beq   $v0, $a0, .L8005DCA4
/* 038FF4 8005DBF4 0000102D */   daddu $v0, $zero, $zero
/* 038FF8 8005DBF8 0801774E */  j     .L8005DD38
/* 038FFC 8005DBFC 00000000 */   nop   

.L8005DC00:
/* 039000 8005DC00 C6620028 */  lwc1  $f2, 0x28($s3)
/* 039004 8005DC04 C6200038 */  lwc1  $f0, 0x38($s1)
/* 039008 8005DC08 46001081 */  sub.s $f2, $f2, $f0
/* 03900C 8005DC0C 46021082 */  mul.s $f2, $f2, $f2
/* 039010 8005DC10 00000000 */  nop   
/* 039014 8005DC14 C666002C */  lwc1  $f6, 0x2c($s3)
/* 039018 8005DC18 C620003C */  lwc1  $f0, 0x3c($s1)
/* 03901C 8005DC1C 46003181 */  sub.s $f6, $f6, $f0
/* 039020 8005DC20 46063182 */  mul.s $f6, $f6, $f6
/* 039024 8005DC24 00000000 */  nop   
/* 039028 8005DC28 C6240040 */  lwc1  $f4, 0x40($s1)
/* 03902C 8005DC2C C6600030 */  lwc1  $f0, 0x30($s3)
/* 039030 8005DC30 46040001 */  sub.s $f0, $f0, $f4
/* 039034 8005DC34 46000002 */  mul.s $f0, $f0, $f0
/* 039038 8005DC38 00000000 */  nop   
/* 03903C 8005DC3C 46061080 */  add.s $f2, $f2, $f6
/* 039040 8005DC40 46001300 */  add.s $f12, $f2, $f0
/* 039044 8005DC44 46006104 */  sqrt.s $f4, $f12
/* 039048 8005DC48 46042032 */  c.eq.s $f4, $f4
/* 03904C 8005DC4C 00000000 */  nop   
/* 039050 8005DC50 45010004 */  bc1t  .L8005DC64
/* 039054 8005DC54 00000000 */   nop   
/* 039058 8005DC58 0C0187BC */  jal   sqrtf
/* 03905C 8005DC5C 00000000 */   nop   
/* 039060 8005DC60 46000106 */  mov.s $f4, $f0
.L8005DC64:
/* 039064 8005DC64 C6200010 */  lwc1  $f0, 0x10($s1)
/* 039068 8005DC68 4600203E */  c.le.s $f4, $f0
/* 03906C 8005DC6C 00000000 */  nop   
/* 039070 8005DC70 45000031 */  bc1f  .L8005DD38
/* 039074 8005DC74 0000102D */   daddu $v0, $zero, $zero
/* 039078 8005DC78 C62C0038 */  lwc1  $f12, 0x38($s1)
/* 03907C 8005DC7C C62E0040 */  lwc1  $f14, 0x40($s1)
/* 039080 8005DC80 8E660028 */  lw    $a2, 0x28($s3)
/* 039084 8005DC84 0C00A720 */  jal   atan2
/* 039088 8005DC88 8E670030 */   lw    $a3, 0x30($s3)
/* 03908C 8005DC8C 8E430074 */  lw    $v1, 0x74($s2)
/* 039090 8005DC90 2402FFFF */  addiu $v0, $zero, -1
/* 039094 8005DC94 10620016 */  beq   $v1, $v0, .L8005DCF0
/* 039098 8005DC98 00000000 */   nop   
/* 03909C 8005DC9C 0801773E */  j     .L8005DCF8
/* 0390A0 8005DCA0 00000000 */   nop   

.L8005DCA4:
/* 0390A4 8005DCA4 C62C0038 */  lwc1  $f12, 0x38($s1)
/* 0390A8 8005DCA8 C62E0040 */  lwc1  $f14, 0x40($s1)
/* 0390AC 8005DCAC 8E660028 */  lw    $a2, 0x28($s3)
/* 0390B0 8005DCB0 0C00A7B5 */  jal   dist2D
/* 0390B4 8005DCB4 8E670030 */   lw    $a3, 0x30($s3)
/* 0390B8 8005DCB8 C6220010 */  lwc1  $f2, 0x10($s1)
/* 0390BC 8005DCBC 4602003E */  c.le.s $f0, $f2
/* 0390C0 8005DCC0 00000000 */  nop   
/* 0390C4 8005DCC4 4500001C */  bc1f  .L8005DD38
/* 0390C8 8005DCC8 0000102D */   daddu $v0, $zero, $zero
/* 0390CC 8005DCCC C62C0038 */  lwc1  $f12, 0x38($s1)
/* 0390D0 8005DCD0 C62E0040 */  lwc1  $f14, 0x40($s1)
/* 0390D4 8005DCD4 8E660028 */  lw    $a2, 0x28($s3)
/* 0390D8 8005DCD8 0C00A720 */  jal   atan2
/* 0390DC 8005DCDC 8E670030 */   lw    $a3, 0x30($s3)
/* 0390E0 8005DCE0 8E430074 */  lw    $v1, 0x74($s2)
/* 0390E4 8005DCE4 2402FFFF */  addiu $v0, $zero, -1
/* 0390E8 8005DCE8 14620003 */  bne   $v1, $v0, .L8005DCF8
/* 0390EC 8005DCEC 00000000 */   nop   
.L8005DCF0:
/* 0390F0 8005DCF0 08017741 */  j     .L8005DD04
/* 0390F4 8005DCF4 C62C000C */   lwc1  $f12, 0xc($s1)

.L8005DCF8:
/* 0390F8 8005DCF8 44836000 */  mtc1  $v1, $f12
/* 0390FC 8005DCFC 00000000 */  nop   
/* 039100 8005DD00 46806320 */  cvt.s.w $f12, $f12
.L8005DD04:
/* 039104 8005DD04 0C00A70A */  jal   get_clamped_angle_diff
/* 039108 8005DD08 46000386 */   mov.s $f14, $f0
/* 03910C 8005DD0C C6420078 */  lwc1  $f2, 0x78($s2)
/* 039110 8005DD10 468010A0 */  cvt.s.w $f2, $f2
/* 039114 8005DD14 46000005 */  abs.s $f0, $f0
/* 039118 8005DD18 4602003C */  c.lt.s $f0, $f2
/* 03911C 8005DD1C 00000000 */  nop   
/* 039120 8005DD20 45000004 */  bc1f  .L8005DD34
/* 039124 8005DD24 24020001 */   addiu $v0, $zero, 1
/* 039128 8005DD28 AE420084 */  sw    $v0, 0x84($s2)
/* 03912C 8005DD2C 0801774E */  j     .L8005DD38
/* 039130 8005DD30 24020002 */   addiu $v0, $zero, 2

.L8005DD34:
/* 039134 8005DD34 0000102D */  daddu $v0, $zero, $zero
.L8005DD38:
/* 039138 8005DD38 8FBF0020 */  lw    $ra, 0x20($sp)
/* 03913C 8005DD3C 8FB3001C */  lw    $s3, 0x1c($sp)
/* 039140 8005DD40 8FB20018 */  lw    $s2, 0x18($sp)
/* 039144 8005DD44 8FB10014 */  lw    $s1, 0x14($sp)
/* 039148 8005DD48 8FB00010 */  lw    $s0, 0x10($sp)
/* 03914C 8005DD4C 03E00008 */  jr    $ra
/* 039150 8005DD50 27BD0028 */   addiu $sp, $sp, 0x28

/* 039154 8005DD54 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 039158 8005DD58 AFB00010 */  sw    $s0, 0x10($sp)
/* 03915C 8005DD5C 0080802D */  daddu $s0, $a0, $zero
/* 039160 8005DD60 AFBF0014 */  sw    $ra, 0x14($sp)
/* 039164 8005DD64 C60C0084 */  lwc1  $f12, 0x84($s0)
/* 039168 8005DD68 0C00A6C9 */  jal   clamp_angle
/* 03916C 8005DD6C 46806320 */   cvt.s.w $f12, $f12
/* 039170 8005DD70 3C014334 */  lui   $at, 0x4334
/* 039174 8005DD74 44811000 */  mtc1  $at, $f2
/* 039178 8005DD78 4600018D */  trunc.w.s $f6, $f0
/* 03917C 8005DD7C E6060084 */  swc1  $f6, 0x84($s0)
/* 039180 8005DD80 4600103E */  c.le.s $f2, $f0
/* 039184 8005DD84 00000000 */  nop   
/* 039188 8005DD88 45030001 */  bc1tl .L8005DD90
/* 03918C 8005DD8C 46020001 */   sub.s $f0, $f0, $f2
.L8005DD90:
/* 039190 8005DD90 3C0142B4 */  lui   $at, 0x42b4
/* 039194 8005DD94 44812000 */  mtc1  $at, $f4
/* 039198 8005DD98 00000000 */  nop   
/* 03919C 8005DD9C 4600203E */  c.le.s $f4, $f0
/* 0391A0 8005DDA0 00000000 */  nop   
/* 0391A4 8005DDA4 45030001 */  bc1tl .L8005DDAC
/* 0391A8 8005DDA8 46001001 */   sub.s $f0, $f2, $f0
.L8005DDAC:
/* 0391AC 8005DDAC 46002001 */  sub.s $f0, $f4, $f0
/* 0391B0 8005DDB0 3C0142BE */  lui   $at, 0x42be
/* 0391B4 8005DDB4 44811000 */  mtc1  $at, $f2
/* 0391B8 8005DDB8 00000000 */  nop   
/* 0391BC 8005DDBC 46020002 */  mul.s $f0, $f0, $f2
/* 0391C0 8005DDC0 00000000 */  nop   
/* 0391C4 8005DDC4 46040003 */  div.s $f0, $f0, $f4
/* 0391C8 8005DDC8 4600018D */  trunc.w.s $f6, $f0
/* 0391CC 8005DDCC 44023000 */  mfc1  $v0, $f6
/* 0391D0 8005DDD0 00000000 */  nop   
/* 0391D4 8005DDD4 244200A0 */  addiu $v0, $v0, 0xa0
/* 0391D8 8005DDD8 AE02008C */  sw    $v0, 0x8c($s0)
/* 0391DC 8005DDDC 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0391E0 8005DDE0 8FB00010 */  lw    $s0, 0x10($sp)
/* 0391E4 8005DDE4 24020002 */  addiu $v0, $zero, 2
/* 0391E8 8005DDE8 03E00008 */  jr    $ra
/* 0391EC 8005DDEC 27BD0018 */   addiu $sp, $sp, 0x18

/* 0391F0 8005DDF0 3C02800B */  lui   $v0, 0x800b
/* 0391F4 8005DDF4 80420F18 */  lb    $v0, 0xf18($v0)
/* 0391F8 8005DDF8 00021027 */  nor   $v0, $zero, $v0
/* 0391FC 8005DDFC 03E00008 */  jr    $ra
/* 039200 8005DE00 0002102B */   sltu  $v0, $zero, $v0

/* 039204 8005DE04 00000000 */  nop   
/* 039208 8005DE08 00000000 */  nop   
/* 03920C 8005DE0C 00000000 */  nop   


