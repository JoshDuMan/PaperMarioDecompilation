.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel func_8013B1B0
/* 0D18B0 8013B1B0 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 0D18B4 8013B1B4 AFB20018 */  sw    $s2, 0x18($sp)
/* 0D18B8 8013B1B8 0080902D */  daddu $s2, $a0, $zero
/* 0D18BC 8013B1BC AFB3001C */  sw    $s3, 0x1c($sp)
/* 0D18C0 8013B1C0 00A0982D */  daddu $s3, $a1, $zero
/* 0D18C4 8013B1C4 0000482D */  daddu $t1, $zero, $zero
/* 0D18C8 8013B1C8 3C05800A */  lui   $a1, 0x800a
/* 0D18CC 8013B1CC 24A5A66C */  addiu $a1, $a1, -0x5994
/* 0D18D0 8013B1D0 3C03E700 */  lui   $v1, 0xe700
/* 0D18D4 8013B1D4 AFBF0020 */  sw    $ra, 0x20($sp)
/* 0D18D8 8013B1D8 AFB10014 */  sw    $s1, 0x14($sp)
/* 0D18DC 8013B1DC AFB00010 */  sw    $s0, 0x10($sp)
/* 0D18E0 8013B1E0 F7B40028 */  sdc1  $f20, 0x28($sp)
/* 0D18E4 8013B1E4 8E480038 */  lw    $t0, 0x38($s2)
/* 0D18E8 8013B1E8 8CA40000 */  lw    $a0, ($a1)
/* 0D18EC 8013B1EC 924A0002 */  lbu   $t2, 2($s2)
/* 0D18F0 8013B1F0 0080102D */  daddu $v0, $a0, $zero
/* 0D18F4 8013B1F4 AC430000 */  sw    $v1, ($v0)
/* 0D18F8 8013B1F8 AC400004 */  sw    $zero, 4($v0)
/* 0D18FC 8013B1FC 8E420014 */  lw    $v0, 0x14($s2)
/* 0D1900 8013B200 24840008 */  addiu $a0, $a0, 8
/* 0D1904 8013B204 30420010 */  andi  $v0, $v0, 0x10
/* 0D1908 8013B208 14400257 */  bnez  $v0, .L8013BB68
/* 0D190C 8013B20C ACA40000 */   sw    $a0, ($a1)
/* 0D1910 8013B210 24820008 */  addiu $v0, $a0, 8
/* 0D1914 8013B214 ACA20000 */  sw    $v0, ($a1)
/* 0D1918 8013B218 3C02DE00 */  lui   $v0, 0xde00
/* 0D191C 8013B21C AC820000 */  sw    $v0, ($a0)
/* 0D1920 8013B220 3C028015 */  lui   $v0, 0x8015
/* 0D1924 8013B224 2442EE68 */  addiu $v0, $v0, -0x1198
/* 0D1928 8013B228 AC820004 */  sw    $v0, 4($a0)
/* 0D192C 8013B22C 8E420014 */  lw    $v0, 0x14($s2)
/* 0D1930 8013B230 3C030001 */  lui   $v1, 1
/* 0D1934 8013B234 00431024 */  and   $v0, $v0, $v1
/* 0D1938 8013B238 10400006 */  beqz  $v0, .L8013B254
/* 0D193C 8013B23C 3C03E300 */   lui   $v1, 0xe300
/* 0D1940 8013B240 34631201 */  ori   $v1, $v1, 0x1201
/* 0D1944 8013B244 24820010 */  addiu $v0, $a0, 0x10
/* 0D1948 8013B248 ACA20000 */  sw    $v0, ($a1)
/* 0D194C 8013B24C AC830008 */  sw    $v1, 8($a0)
/* 0D1950 8013B250 AC80000C */  sw    $zero, 0xc($a0)
.L8013B254:
/* 0D1954 8013B254 8E420014 */  lw    $v0, 0x14($s2)
/* 0D1958 8013B258 30420002 */  andi  $v0, $v0, 2
/* 0D195C 8013B25C 10400009 */  beqz  $v0, .L8013B284
/* 0D1960 8013B260 3C04D9FF */   lui   $a0, 0xd9ff
/* 0D1964 8013B264 8CA20000 */  lw    $v0, ($a1)
/* 0D1968 8013B268 3484FFFF */  ori   $a0, $a0, 0xffff
/* 0D196C 8013B26C 0040182D */  daddu $v1, $v0, $zero
/* 0D1970 8013B270 24420008 */  addiu $v0, $v0, 8
/* 0D1974 8013B274 ACA20000 */  sw    $v0, ($a1)
/* 0D1978 8013B278 24020400 */  addiu $v0, $zero, 0x400
/* 0D197C 8013B27C AC640000 */  sw    $a0, ($v1)
/* 0D1980 8013B280 AC620004 */  sw    $v0, 4($v1)
.L8013B284:
/* 0D1984 8013B284 8E420014 */  lw    $v0, 0x14($s2)
/* 0D1988 8013B288 30420004 */  andi  $v0, $v0, 4
/* 0D198C 8013B28C 10400009 */  beqz  $v0, .L8013B2B4
/* 0D1990 8013B290 3C04D9FF */   lui   $a0, 0xd9ff
/* 0D1994 8013B294 8CA20000 */  lw    $v0, ($a1)
/* 0D1998 8013B298 3484FFFF */  ori   $a0, $a0, 0xffff
/* 0D199C 8013B29C 0040182D */  daddu $v1, $v0, $zero
/* 0D19A0 8013B2A0 24420008 */  addiu $v0, $v0, 8
/* 0D19A4 8013B2A4 ACA20000 */  sw    $v0, ($a1)
/* 0D19A8 8013B2A8 24020200 */  addiu $v0, $zero, 0x200
/* 0D19AC 8013B2AC AC640000 */  sw    $a0, ($v1)
/* 0D19B0 8013B2B0 AC620004 */  sw    $v0, 4($v1)
.L8013B2B4:
/* 0D19B4 8013B2B4 92430002 */  lbu   $v1, 2($s2)
/* 0D19B8 8013B2B8 3C048015 */  lui   $a0, 0x8015
/* 0D19BC 8013B2BC 2484EE98 */  addiu $a0, $a0, -0x1168
/* 0D19C0 8013B2C0 00031040 */  sll   $v0, $v1, 1
/* 0D19C4 8013B2C4 00431021 */  addu  $v0, $v0, $v1
/* 0D19C8 8013B2C8 00021080 */  sll   $v0, $v0, 2
/* 0D19CC 8013B2CC 00441021 */  addu  $v0, $v0, $a0
/* 0D19D0 8013B2D0 8C470000 */  lw    $a3, ($v0)
/* 0D19D4 8013B2D4 90430008 */  lbu   $v1, 8($v0)
/* 0D19D8 8013B2D8 8C460004 */  lw    $a2, 4($v0)
/* 0D19DC 8013B2DC 30630001 */  andi  $v1, $v1, 1
/* 0D19E0 8013B2E0 54600001 */  bnel  $v1, $zero, .L8013B2E8
/* 0D19E4 8013B2E4 24090001 */   addiu $t1, $zero, 1
.L8013B2E8:
/* 0D19E8 8013B2E8 3C028015 */  lui   $v0, 0x8015
/* 0D19EC 8013B2EC 8C42EE10 */  lw    $v0, -0x11f0($v0)
/* 0D19F0 8013B2F0 3C018015 */  lui   $at, 0x8015
/* 0D19F4 8013B2F4 D4221050 */  ldc1  $f2, 0x1050($at)
/* 0D19F8 8013B2F8 90430024 */  lbu   $v1, 0x24($v0)
/* 0D19FC 8013B2FC 0120102D */  daddu $v0, $t1, $zero
/* 0D1A00 8013B300 44830000 */  mtc1  $v1, $f0
/* 0D1A04 8013B304 00000000 */  nop   
/* 0D1A08 8013B308 46800020 */  cvt.s.w $f0, $f0
/* 0D1A0C 8013B30C 46000021 */  cvt.d.s $f0, $f0
/* 0D1A10 8013B310 46220003 */  div.d $f0, $f0, $f2
/* 0D1A14 8013B314 1440001E */  bnez  $v0, .L8013B390
/* 0D1A18 8013B318 462000A0 */   cvt.s.d $f2, $f0
/* 0D1A1C 8013B31C 2C6200FF */  sltiu $v0, $v1, 0xff
/* 0D1A20 8013B320 1040001B */  beqz  $v0, .L8013B390
/* 0D1A24 8013B324 240200FF */   addiu $v0, $zero, 0xff
/* 0D1A28 8013B328 92430002 */  lbu   $v1, 2($s2)
/* 0D1A2C 8013B32C AE420038 */  sw    $v0, 0x38($s2)
/* 0D1A30 8013B330 2C62000C */  sltiu $v0, $v1, 0xc
/* 0D1A34 8013B334 1040000B */  beqz  $v0, .L8013B364
/* 0D1A38 8013B338 00031080 */   sll   $v0, $v1, 2
/* 0D1A3C 8013B33C 3C018015 */  lui   $at, 0x8015
/* 0D1A40 8013B340 00220821 */  addu  $at, $at, $v0
/* 0D1A44 8013B344 8C221058 */  lw    $v0, 0x1058($at)
/* 0D1A48 8013B348 00400008 */  jr    $v0
/* 0D1A4C 8013B34C 00000000 */   nop   
/* 0D1A50 8013B350 0804ECD9 */  j     .L8013B364
/* 0D1A54 8013B354 240A0002 */   addiu $t2, $zero, 2

/* 0D1A58 8013B358 0804ECD9 */  j     .L8013B364
/* 0D1A5C 8013B35C 240A0003 */   addiu $t2, $zero, 3

/* 0D1A60 8013B360 240A000A */  addiu $t2, $zero, 0xa
.L8013B364:
/* 0D1A64 8013B364 3C070040 */  lui   $a3, 0x40
/* 0D1A68 8013B368 C6400038 */  lwc1  $f0, 0x38($s2)
/* 0D1A6C 8013B36C 46800020 */  cvt.s.w $f0, $f0
/* 0D1A70 8013B370 46020002 */  mul.s $f0, $f0, $f2
/* 0D1A74 8013B374 00000000 */  nop   
/* 0D1A78 8013B378 34E74B40 */  ori   $a3, $a3, 0x4b40
/* 0D1A7C 8013B37C 3C060010 */  lui   $a2, 0x10
/* 0D1A80 8013B380 34C64B40 */  ori   $a2, $a2, 0x4b40
/* 0D1A84 8013B384 24090001 */  addiu $t1, $zero, 1
/* 0D1A88 8013B388 4600018D */  trunc.w.s $f6, $f0
/* 0D1A8C 8013B38C 44083000 */  mfc1  $t0, $f6
.L8013B390:
/* 0D1A90 8013B390 8E420014 */  lw    $v0, 0x14($s2)
/* 0D1A94 8013B394 30420400 */  andi  $v0, $v0, 0x400
/* 0D1A98 8013B398 10400007 */  beqz  $v0, .L8013B3B8
/* 0D1A9C 8013B39C 0120102D */   daddu $v0, $t1, $zero
/* 0D1AA0 8013B3A0 14400005 */  bnez  $v0, .L8013B3B8
/* 0D1AA4 8013B3A4 2402FDFF */   addiu $v0, $zero, -0x201
/* 0D1AA8 8013B3A8 00E23824 */  and   $a3, $a3, $v0
/* 0D1AAC 8013B3AC 00C23024 */  and   $a2, $a2, $v0
/* 0D1AB0 8013B3B0 34E72040 */  ori   $a3, $a3, 0x2040
/* 0D1AB4 8013B3B4 34C62040 */  ori   $a2, $a2, 0x2040
.L8013B3B8:
/* 0D1AB8 8013B3B8 8E420014 */  lw    $v0, 0x14($s2)
/* 0D1ABC 8013B3BC 30420040 */  andi  $v0, $v0, 0x40
/* 0D1AC0 8013B3C0 1040000B */  beqz  $v0, .L8013B3F0
/* 0D1AC4 8013B3C4 3C05D9FF */   lui   $a1, 0xd9ff
/* 0D1AC8 8013B3C8 3C04800A */  lui   $a0, 0x800a
/* 0D1ACC 8013B3CC 2484A66C */  addiu $a0, $a0, -0x5994
/* 0D1AD0 8013B3D0 8C820000 */  lw    $v0, ($a0)
/* 0D1AD4 8013B3D4 34A5FFFE */  ori   $a1, $a1, 0xfffe
/* 0D1AD8 8013B3D8 0040182D */  daddu $v1, $v0, $zero
/* 0D1ADC 8013B3DC 24420008 */  addiu $v0, $v0, 8
/* 0D1AE0 8013B3E0 AC820000 */  sw    $v0, ($a0)
/* 0D1AE4 8013B3E4 AC650000 */  sw    $a1, ($v1)
/* 0D1AE8 8013B3E8 0804ED0D */  j     .L8013B434
/* 0D1AEC 8013B3EC AC600004 */   sw    $zero, 4($v1)

.L8013B3F0:
/* 0D1AF0 8013B3F0 3C03800A */  lui   $v1, 0x800a
/* 0D1AF4 8013B3F4 2463A66C */  addiu $v1, $v1, -0x5994
/* 0D1AF8 8013B3F8 8C620000 */  lw    $v0, ($v1)
/* 0D1AFC 8013B3FC 34A5FFFF */  ori   $a1, $a1, 0xffff
/* 0D1B00 8013B400 0040202D */  daddu $a0, $v0, $zero
/* 0D1B04 8013B404 24420008 */  addiu $v0, $v0, 8
/* 0D1B08 8013B408 AC620000 */  sw    $v0, ($v1)
/* 0D1B0C 8013B40C 24020001 */  addiu $v0, $zero, 1
/* 0D1B10 8013B410 AC820004 */  sw    $v0, 4($a0)
/* 0D1B14 8013B414 0120102D */  daddu $v0, $t1, $zero
/* 0D1B18 8013B418 10400004 */  beqz  $v0, .L8013B42C
/* 0D1B1C 8013B41C AC850000 */   sw    $a1, ($a0)
/* 0D1B20 8013B420 34E70010 */  ori   $a3, $a3, 0x10
/* 0D1B24 8013B424 0804ED0D */  j     .L8013B434
/* 0D1B28 8013B428 34C60010 */   ori   $a2, $a2, 0x10

.L8013B42C:
/* 0D1B2C 8013B42C 34E70030 */  ori   $a3, $a3, 0x30
/* 0D1B30 8013B430 34C60030 */  ori   $a2, $a2, 0x30
.L8013B434:
/* 0D1B34 8013B434 3C05E200 */  lui   $a1, 0xe200
/* 0D1B38 8013B438 3C04800A */  lui   $a0, 0x800a
/* 0D1B3C 8013B43C 2484A66C */  addiu $a0, $a0, -0x5994
/* 0D1B40 8013B440 8C820000 */  lw    $v0, ($a0)
/* 0D1B44 8013B444 34A5001C */  ori   $a1, $a1, 0x1c
/* 0D1B48 8013B448 AE460078 */  sw    $a2, 0x78($s2)
/* 0D1B4C 8013B44C 0040182D */  daddu $v1, $v0, $zero
/* 0D1B50 8013B450 24420008 */  addiu $v0, $v0, 8
/* 0D1B54 8013B454 AC820000 */  sw    $v0, ($a0)
/* 0D1B58 8013B458 00E61025 */  or    $v0, $a3, $a2
/* 0D1B5C 8013B45C AC620004 */  sw    $v0, 4($v1)
/* 0D1B60 8013B460 2D420011 */  sltiu $v0, $t2, 0x11
/* 0D1B64 8013B464 104001C0 */  beqz  $v0, .L8013BB68
/* 0D1B68 8013B468 AC650000 */   sw    $a1, ($v1)
/* 0D1B6C 8013B46C 000A1080 */  sll   $v0, $t2, 2
/* 0D1B70 8013B470 3C018015 */  lui   $at, 0x8015
/* 0D1B74 8013B474 00220821 */  addu  $at, $at, $v0
/* 0D1B78 8013B478 8C221088 */  lw    $v0, 0x1088($at)
/* 0D1B7C 8013B47C 00400008 */  jr    $v0
/* 0D1B80 8013B480 00000000 */   nop   
/* 0D1B84 8013B484 3C02FC11 */  lui   $v0, 0xfc11
/* 0D1B88 8013B488 3C03800A */  lui   $v1, 0x800a
/* 0D1B8C 8013B48C 2463A66C */  addiu $v1, $v1, -0x5994
/* 0D1B90 8013B490 8C650000 */  lw    $a1, ($v1)
/* 0D1B94 8013B494 3442FE23 */  ori   $v0, $v0, 0xfe23
/* 0D1B98 8013B498 00A0202D */  daddu $a0, $a1, $zero
/* 0D1B9C 8013B49C 24A50008 */  addiu $a1, $a1, 8
/* 0D1BA0 8013B4A0 AC650000 */  sw    $a1, ($v1)
/* 0D1BA4 8013B4A4 AC820000 */  sw    $v0, ($a0)
/* 0D1BA8 8013B4A8 2402F3F9 */  addiu $v0, $zero, -0xc07
/* 0D1BAC 8013B4AC 0804EEAD */  j     .L8013BAB4
/* 0D1BB0 8013B4B0 AC820004 */   sw    $v0, 4($a0)

/* 0D1BB4 8013B4B4 190001EC */  blez  $t0, .L8013BC68
/* 0D1BB8 8013B4B8 3C06FCFF */   lui   $a2, 0xfcff
/* 0D1BBC 8013B4BC 34C697FF */  ori   $a2, $a2, 0x97ff
/* 0D1BC0 8013B4C0 3C05FF2C */  lui   $a1, 0xff2c
/* 0D1BC4 8013B4C4 3C04800A */  lui   $a0, 0x800a
/* 0D1BC8 8013B4C8 2484A66C */  addiu $a0, $a0, -0x5994
/* 0D1BCC 8013B4CC 8C820000 */  lw    $v0, ($a0)
/* 0D1BD0 8013B4D0 34A5FE7F */  ori   $a1, $a1, 0xfe7f
/* 0D1BD4 8013B4D4 0040182D */  daddu $v1, $v0, $zero
/* 0D1BD8 8013B4D8 24420008 */  addiu $v0, $v0, 8
/* 0D1BDC 8013B4DC AC820000 */  sw    $v0, ($a0)
/* 0D1BE0 8013B4E0 AC660000 */  sw    $a2, ($v1)
/* 0D1BE4 8013B4E4 AC650004 */  sw    $a1, 4($v1)
/* 0D1BE8 8013B4E8 24430008 */  addiu $v1, $v0, 8
/* 0D1BEC 8013B4EC AC830000 */  sw    $v1, ($a0)
/* 0D1BF0 8013B4F0 3C03FA00 */  lui   $v1, 0xfa00
/* 0D1BF4 8013B4F4 AC430000 */  sw    $v1, ($v0)
/* 0D1BF8 8013B4F8 0804EED9 */  j     .L8013BB64
/* 0D1BFC 8013B4FC 310300FF */   andi  $v1, $t0, 0xff

/* 0D1C00 8013B500 190001D9 */  blez  $t0, .L8013BC68
/* 0D1C04 8013B504 3C06FC11 */   lui   $a2, 0xfc11
/* 0D1C08 8013B508 34C69623 */  ori   $a2, $a2, 0x9623
/* 0D1C0C 8013B50C 3C04FF2F */  lui   $a0, 0xff2f
/* 0D1C10 8013B510 3C03800A */  lui   $v1, 0x800a
/* 0D1C14 8013B514 2463A66C */  addiu $v1, $v1, -0x5994
/* 0D1C18 8013B518 8C650000 */  lw    $a1, ($v1)
/* 0D1C1C 8013B51C 3484FFFF */  ori   $a0, $a0, 0xffff
/* 0D1C20 8013B520 00A0102D */  daddu $v0, $a1, $zero
/* 0D1C24 8013B524 24A50008 */  addiu $a1, $a1, 8
/* 0D1C28 8013B528 AC650000 */  sw    $a1, ($v1)
/* 0D1C2C 8013B52C AC460000 */  sw    $a2, ($v0)
/* 0D1C30 8013B530 AC440004 */  sw    $a0, 4($v0)
/* 0D1C34 8013B534 24A20008 */  addiu $v0, $a1, 8
/* 0D1C38 8013B538 AC620000 */  sw    $v0, ($v1)
/* 0D1C3C 8013B53C 3C02FA00 */  lui   $v0, 0xfa00
/* 0D1C40 8013B540 ACA20000 */  sw    $v0, ($a1)
/* 0D1C44 8013B544 9242002F */  lbu   $v0, 0x2f($s2)
/* 0D1C48 8013B548 92440033 */  lbu   $a0, 0x33($s2)
/* 0D1C4C 8013B54C 92430037 */  lbu   $v1, 0x37($s2)
/* 0D1C50 8013B550 00021600 */  sll   $v0, $v0, 0x18
/* 0D1C54 8013B554 00042400 */  sll   $a0, $a0, 0x10
/* 0D1C58 8013B558 00441025 */  or    $v0, $v0, $a0
/* 0D1C5C 8013B55C 00031A00 */  sll   $v1, $v1, 8
/* 0D1C60 8013B560 00431025 */  or    $v0, $v0, $v1
/* 0D1C64 8013B564 0804EEB8 */  j     .L8013BAE0
/* 0D1C68 8013B568 310300FF */   andi  $v1, $t0, 0xff

/* 0D1C6C 8013B56C 3C06FC60 */  lui   $a2, 0xfc60
/* 0D1C70 8013B570 34C6FEC1 */  ori   $a2, $a2, 0xfec1
/* 0D1C74 8013B574 0804EEA4 */  j     .L8013BA90
/* 0D1C78 8013B578 3C0433FD */   lui   $a0, 0x33fd

/* 0D1C7C 8013B57C 190001BA */  blez  $t0, .L8013BC68
/* 0D1C80 8013B580 3C06FC60 */   lui   $a2, 0xfc60
/* 0D1C84 8013B584 34C696C1 */  ori   $a2, $a2, 0x96c1
/* 0D1C88 8013B588 3C04FF2D */  lui   $a0, 0xff2d
/* 0D1C8C 8013B58C 3C03800A */  lui   $v1, 0x800a
/* 0D1C90 8013B590 2463A66C */  addiu $v1, $v1, -0x5994
/* 0D1C94 8013B594 8C650000 */  lw    $a1, ($v1)
/* 0D1C98 8013B598 3484FEFF */  ori   $a0, $a0, 0xfeff
/* 0D1C9C 8013B59C 00A0102D */  daddu $v0, $a1, $zero
/* 0D1CA0 8013B5A0 24A50008 */  addiu $a1, $a1, 8
/* 0D1CA4 8013B5A4 AC650000 */  sw    $a1, ($v1)
/* 0D1CA8 8013B5A8 AC460000 */  sw    $a2, ($v0)
/* 0D1CAC 8013B5AC AC440004 */  sw    $a0, 4($v0)
/* 0D1CB0 8013B5B0 24A20008 */  addiu $v0, $a1, 8
/* 0D1CB4 8013B5B4 AC620000 */  sw    $v0, ($v1)
/* 0D1CB8 8013B5B8 3C02FA00 */  lui   $v0, 0xfa00
/* 0D1CBC 8013B5BC ACA20000 */  sw    $v0, ($a1)
/* 0D1CC0 8013B5C0 9242002F */  lbu   $v0, 0x2f($s2)
/* 0D1CC4 8013B5C4 92440033 */  lbu   $a0, 0x33($s2)
/* 0D1CC8 8013B5C8 92430037 */  lbu   $v1, 0x37($s2)
/* 0D1CCC 8013B5CC 00021600 */  sll   $v0, $v0, 0x18
/* 0D1CD0 8013B5D0 00042400 */  sll   $a0, $a0, 0x10
/* 0D1CD4 8013B5D4 00441025 */  or    $v0, $v0, $a0
/* 0D1CD8 8013B5D8 00031A00 */  sll   $v1, $v1, 8
/* 0D1CDC 8013B5DC 00431025 */  or    $v0, $v0, $v1
/* 0D1CE0 8013B5E0 0804EEB8 */  j     .L8013BAE0
/* 0D1CE4 8013B5E4 310300FF */   andi  $v1, $t0, 0xff

/* 0D1CE8 8013B5E8 3C03FC12 */  lui   $v1, 0xfc12
/* 0D1CEC 8013B5EC 34637E24 */  ori   $v1, $v1, 0x7e24
/* 0D1CF0 8013B5F0 3C07D9FF */  lui   $a3, 0xd9ff
/* 0D1CF4 8013B5F4 34E7FFFF */  ori   $a3, $a3, 0xffff
/* 0D1CF8 8013B5F8 3C060020 */  lui   $a2, 0x20
/* 0D1CFC 8013B5FC 34C60004 */  ori   $a2, $a2, 4
/* 0D1D00 8013B600 3C08D9FD */  lui   $t0, 0xd9fd
/* 0D1D04 8013B604 3C04800A */  lui   $a0, 0x800a
/* 0D1D08 8013B608 2484A66C */  addiu $a0, $a0, -0x5994
/* 0D1D0C 8013B60C 8C820000 */  lw    $v0, ($a0)
/* 0D1D10 8013B610 3508FFFF */  ori   $t0, $t0, 0xffff
/* 0D1D14 8013B614 0040282D */  daddu $a1, $v0, $zero
/* 0D1D18 8013B618 24420008 */  addiu $v0, $v0, 8
/* 0D1D1C 8013B61C AC820000 */  sw    $v0, ($a0)
/* 0D1D20 8013B620 ACA30000 */  sw    $v1, ($a1)
/* 0D1D24 8013B624 2403F3F9 */  addiu $v1, $zero, -0xc07
/* 0D1D28 8013B628 ACA30004 */  sw    $v1, 4($a1)
/* 0D1D2C 8013B62C 24430008 */  addiu $v1, $v0, 8
/* 0D1D30 8013B630 AC830000 */  sw    $v1, ($a0)
/* 0D1D34 8013B634 24430010 */  addiu $v1, $v0, 0x10
/* 0D1D38 8013B638 AC470000 */  sw    $a3, ($v0)
/* 0D1D3C 8013B63C AC460004 */  sw    $a2, 4($v0)
/* 0D1D40 8013B640 AC830000 */  sw    $v1, ($a0)
/* 0D1D44 8013B644 AC480008 */  sw    $t0, 8($v0)
/* 0D1D48 8013B648 0804EEDA */  j     .L8013BB68
/* 0D1D4C 8013B64C AC40000C */   sw    $zero, 0xc($v0)

/* 0D1D50 8013B650 3C07FC60 */  lui   $a3, 0xfc60
/* 0D1D54 8013B654 34E7FEC1 */  ori   $a3, $a3, 0xfec1
/* 0D1D58 8013B658 3C0544FE */  lui   $a1, 0x44fe
/* 0D1D5C 8013B65C 0804EDA7 */  j     .L8013B69C
/* 0D1D60 8013B660 34A57339 */   ori   $a1, $a1, 0x7339

/* 0D1D64 8013B664 3C07FCFF */  lui   $a3, 0xfcff
/* 0D1D68 8013B668 34E799FF */  ori   $a3, $a3, 0x99ff
/* 0D1D6C 8013B66C 3C05FF30 */  lui   $a1, 0xff30
/* 0D1D70 8013B670 0804EDA7 */  j     .L8013B69C
/* 0D1D74 8013B674 34A5FE7F */   ori   $a1, $a1, 0xfe7f

/* 0D1D78 8013B678 3C07FC12 */  lui   $a3, 0xfc12
/* 0D1D7C 8013B67C 34E71824 */  ori   $a3, $a3, 0x1824
/* 0D1D80 8013B680 3C05FF33 */  lui   $a1, 0xff33
/* 0D1D84 8013B684 0804EDA7 */  j     .L8013B69C
/* 0D1D88 8013B688 34A5FFFF */   ori   $a1, $a1, 0xffff

/* 0D1D8C 8013B68C 3C07FC60 */  lui   $a3, 0xfc60
/* 0D1D90 8013B690 34E798C1 */  ori   $a3, $a3, 0x98c1
/* 0D1D94 8013B694 3C054432 */  lui   $a1, 0x4432
/* 0D1D98 8013B698 34A57F3F */  ori   $a1, $a1, 0x7f3f
.L8013B69C:
/* 0D1D9C 8013B69C 3C08D9FF */  lui   $t0, 0xd9ff
/* 0D1DA0 8013B6A0 3508FFFF */  ori   $t0, $t0, 0xffff
/* 0D1DA4 8013B6A4 3C060020 */  lui   $a2, 0x20
/* 0D1DA8 8013B6A8 34C60004 */  ori   $a2, $a2, 4
/* 0D1DAC 8013B6AC 3C09D9FD */  lui   $t1, 0xd9fd
/* 0D1DB0 8013B6B0 3C04800A */  lui   $a0, 0x800a
/* 0D1DB4 8013B6B4 2484A66C */  addiu $a0, $a0, -0x5994
/* 0D1DB8 8013B6B8 8C820000 */  lw    $v0, ($a0)
/* 0D1DBC 8013B6BC 3529FFFF */  ori   $t1, $t1, 0xffff
/* 0D1DC0 8013B6C0 0040182D */  daddu $v1, $v0, $zero
/* 0D1DC4 8013B6C4 24420008 */  addiu $v0, $v0, 8
/* 0D1DC8 8013B6C8 AC820000 */  sw    $v0, ($a0)
/* 0D1DCC 8013B6CC AC670000 */  sw    $a3, ($v1)
/* 0D1DD0 8013B6D0 AC650004 */  sw    $a1, 4($v1)
/* 0D1DD4 8013B6D4 24430008 */  addiu $v1, $v0, 8
/* 0D1DD8 8013B6D8 AC830000 */  sw    $v1, ($a0)
/* 0D1DDC 8013B6DC 24430010 */  addiu $v1, $v0, 0x10
/* 0D1DE0 8013B6E0 AC480000 */  sw    $t0, ($v0)
/* 0D1DE4 8013B6E4 AC460004 */  sw    $a2, 4($v0)
/* 0D1DE8 8013B6E8 AC830000 */  sw    $v1, ($a0)
/* 0D1DEC 8013B6EC AC490008 */  sw    $t1, 8($v0)
/* 0D1DF0 8013B6F0 0804EEDA */  j     .L8013BB68
/* 0D1DF4 8013B6F4 AC40000C */   sw    $zero, 0xc($v0)

/* 0D1DF8 8013B6F8 8E420014 */  lw    $v0, 0x14($s2)
/* 0D1DFC 8013B6FC 3042A000 */  andi  $v0, $v0, 0xa000
/* 0D1E00 8013B700 104000FA */  beqz  $v0, .L8013BAEC
/* 0D1E04 8013B704 3C02FC12 */   lui   $v0, 0xfc12
/* 0D1E08 8013B708 34427E24 */  ori   $v0, $v0, 0x7e24
/* 0D1E0C 8013B70C 3C06D9FF */  lui   $a2, 0xd9ff
/* 0D1E10 8013B710 34C6FFFF */  ori   $a2, $a2, 0xffff
/* 0D1E14 8013B714 3C050022 */  lui   $a1, 0x22
/* 0D1E18 8013B718 3C11800A */  lui   $s1, 0x800a
/* 0D1E1C 8013B71C 2631A66C */  addiu $s1, $s1, -0x5994
/* 0D1E20 8013B720 8E230000 */  lw    $v1, ($s1)
/* 0D1E24 8013B724 34A50004 */  ori   $a1, $a1, 4
/* 0D1E28 8013B728 0060202D */  daddu $a0, $v1, $zero
/* 0D1E2C 8013B72C 24630008 */  addiu $v1, $v1, 8
/* 0D1E30 8013B730 AE230000 */  sw    $v1, ($s1)
/* 0D1E34 8013B734 AC820000 */  sw    $v0, ($a0)
/* 0D1E38 8013B738 2402F3F9 */  addiu $v0, $zero, -0xc07
/* 0D1E3C 8013B73C AC820004 */  sw    $v0, 4($a0)
/* 0D1E40 8013B740 3C028007 */  lui   $v0, 0x8007
/* 0D1E44 8013B744 8C427410 */  lw    $v0, 0x7410($v0)
/* 0D1E48 8013B748 3C04800B */  lui   $a0, 0x800b
/* 0D1E4C 8013B74C 24841D80 */  addiu $a0, $a0, 0x1d80
/* 0D1E50 8013B750 AC660000 */  sw    $a2, ($v1)
/* 0D1E54 8013B754 AC650004 */  sw    $a1, 4($v1)
/* 0D1E58 8013B758 00028080 */  sll   $s0, $v0, 2
/* 0D1E5C 8013B75C 02028021 */  addu  $s0, $s0, $v0
/* 0D1E60 8013B760 00108080 */  sll   $s0, $s0, 2
/* 0D1E64 8013B764 02028023 */  subu  $s0, $s0, $v0
/* 0D1E68 8013B768 001010C0 */  sll   $v0, $s0, 3
/* 0D1E6C 8013B76C 02028021 */  addu  $s0, $s0, $v0
/* 0D1E70 8013B770 001080C0 */  sll   $s0, $s0, 3
/* 0D1E74 8013B774 02048021 */  addu  $s0, $s0, $a0
/* 0D1E78 8013B778 C600006C */  lwc1  $f0, 0x6c($s0)
/* 0D1E7C 8013B77C 24630008 */  addiu $v1, $v1, 8
/* 0D1E80 8013B780 AE230000 */  sw    $v1, ($s1)
/* 0D1E84 8013B784 4600018D */  trunc.w.s $f6, $f0
/* 0D1E88 8013B788 44043000 */  mfc1  $a0, $f6
/* 0D1E8C 8013B78C 00000000 */  nop   
/* 0D1E90 8013B790 00042400 */  sll   $a0, $a0, 0x10
/* 0D1E94 8013B794 0C00A4F5 */  jal   cosine
/* 0D1E98 8013B798 00042403 */   sra   $a0, $a0, 0x10
/* 0D1E9C 8013B79C C604006C */  lwc1  $f4, 0x6c($s0)
/* 0D1EA0 8013B7A0 3C0142B4 */  lui   $at, 0x42b4
/* 0D1EA4 8013B7A4 44811000 */  mtc1  $at, $f2
/* 0D1EA8 8013B7A8 00000000 */  nop   
/* 0D1EAC 8013B7AC 46022100 */  add.s $f4, $f4, $f2
/* 0D1EB0 8013B7B0 3C0142F0 */  lui   $at, 0x42f0
/* 0D1EB4 8013B7B4 4481A000 */  mtc1  $at, $f20
/* 0D1EB8 8013B7B8 00000000 */  nop   
/* 0D1EBC 8013B7BC 46140002 */  mul.s $f0, $f0, $f20
/* 0D1EC0 8013B7C0 00000000 */  nop   
/* 0D1EC4 8013B7C4 4600218D */  trunc.w.s $f6, $f4
/* 0D1EC8 8013B7C8 44043000 */  mfc1  $a0, $f6
/* 0D1ECC 8013B7CC 00000000 */  nop   
/* 0D1ED0 8013B7D0 00042400 */  sll   $a0, $a0, 0x10
/* 0D1ED4 8013B7D4 4600018D */  trunc.w.s $f6, $f0
/* 0D1ED8 8013B7D8 44103000 */  mfc1  $s0, $f6
/* 0D1EDC 8013B7DC 0C00A4F5 */  jal   cosine
/* 0D1EE0 8013B7E0 00042403 */   sra   $a0, $a0, 0x10
/* 0D1EE4 8013B7E4 3C06DC08 */  lui   $a2, 0xdc08
/* 0D1EE8 8013B7E8 34C6060A */  ori   $a2, $a2, 0x60a
/* 0D1EEC 8013B7EC 3C07DC08 */  lui   $a3, 0xdc08
/* 0D1EF0 8013B7F0 34E7090A */  ori   $a3, $a3, 0x90a
/* 0D1EF4 8013B7F4 3C08DC08 */  lui   $t0, 0xdc08
/* 0D1EF8 8013B7F8 35080C0A */  ori   $t0, $t0, 0xc0a
/* 0D1EFC 8013B7FC 00101600 */  sll   $v0, $s0, 0x18
/* 0D1F00 8013B800 00021603 */  sra   $v0, $v0, 0x18
/* 0D1F04 8013B804 00021023 */  negu  $v0, $v0
/* 0D1F08 8013B808 3C048015 */  lui   $a0, 0x8015
/* 0D1F0C 8013B80C 2484EE18 */  addiu $a0, $a0, -0x11e8
/* 0D1F10 8013B810 8E230000 */  lw    $v1, ($s1)
/* 0D1F14 8013B814 46140002 */  mul.s $f0, $f0, $f20
/* 0D1F18 8013B818 00000000 */  nop   
/* 0D1F1C 8013B81C A0820010 */  sb    $v0, 0x10($a0)
/* 0D1F20 8013B820 A0900020 */  sb    $s0, 0x20($a0)
/* 0D1F24 8013B824 0060282D */  daddu $a1, $v1, $zero
/* 0D1F28 8013B828 24630008 */  addiu $v1, $v1, 8
/* 0D1F2C 8013B82C 24620008 */  addiu $v0, $v1, 8
/* 0D1F30 8013B830 AE230000 */  sw    $v1, ($s1)
/* 0D1F34 8013B834 AE220000 */  sw    $v0, ($s1)
/* 0D1F38 8013B838 24620010 */  addiu $v0, $v1, 0x10
/* 0D1F3C 8013B83C AE220000 */  sw    $v0, ($s1)
/* 0D1F40 8013B840 24620018 */  addiu $v0, $v1, 0x18
/* 0D1F44 8013B844 AE220000 */  sw    $v0, ($s1)
/* 0D1F48 8013B848 4600018D */  trunc.w.s $f6, $f0
/* 0D1F4C 8013B84C 44023000 */  mfc1  $v0, $f6
/* 0D1F50 8013B850 00000000 */  nop   
/* 0D1F54 8013B854 A0820012 */  sb    $v0, 0x12($a0)
/* 0D1F58 8013B858 00021600 */  sll   $v0, $v0, 0x18
/* 0D1F5C 8013B85C 00021603 */  sra   $v0, $v0, 0x18
/* 0D1F60 8013B860 00021023 */  negu  $v0, $v0
/* 0D1F64 8013B864 A0820022 */  sb    $v0, 0x22($a0)
/* 0D1F68 8013B868 3C02DB02 */  lui   $v0, 0xdb02
/* 0D1F6C 8013B86C ACA20000 */  sw    $v0, ($a1)
/* 0D1F70 8013B870 24020030 */  addiu $v0, $zero, 0x30
/* 0D1F74 8013B874 ACA20004 */  sw    $v0, 4($a1)
/* 0D1F78 8013B878 24820008 */  addiu $v0, $a0, 8
/* 0D1F7C 8013B87C AC620004 */  sw    $v0, 4($v1)
/* 0D1F80 8013B880 24820018 */  addiu $v0, $a0, 0x18
/* 0D1F84 8013B884 AC660000 */  sw    $a2, ($v1)
/* 0D1F88 8013B888 AC670008 */  sw    $a3, 8($v1)
/* 0D1F8C 8013B88C AC62000C */  sw    $v0, 0xc($v1)
/* 0D1F90 8013B890 AC680010 */  sw    $t0, 0x10($v1)
/* 0D1F94 8013B894 0804EEDA */  j     .L8013BB68
/* 0D1F98 8013B898 AC640014 */   sw    $a0, 0x14($v1)

/* 0D1F9C 8013B89C 8E43002C */  lw    $v1, 0x2c($s2)
/* 0D1FA0 8013B8A0 1460001F */  bnez  $v1, .L8013B920
/* 0D1FA4 8013B8A4 240B0001 */   addiu $t3, $zero, 1
/* 0D1FA8 8013B8A8 3C06FC71 */  lui   $a2, 0xfc71
/* 0D1FAC 8013B8AC 34C696E3 */  ori   $a2, $a2, 0x96e3
/* 0D1FB0 8013B8B0 3C04332C */  lui   $a0, 0x332c
/* 0D1FB4 8013B8B4 3C03800A */  lui   $v1, 0x800a
/* 0D1FB8 8013B8B8 2463A66C */  addiu $v1, $v1, -0x5994
/* 0D1FBC 8013B8BC 8C650000 */  lw    $a1, ($v1)
/* 0D1FC0 8013B8C0 3484FE7F */  ori   $a0, $a0, 0xfe7f
/* 0D1FC4 8013B8C4 00A0102D */  daddu $v0, $a1, $zero
/* 0D1FC8 8013B8C8 24A50008 */  addiu $a1, $a1, 8
/* 0D1FCC 8013B8CC AC650000 */  sw    $a1, ($v1)
/* 0D1FD0 8013B8D0 C6400038 */  lwc1  $f0, 0x38($s2)
/* 0D1FD4 8013B8D4 46800020 */  cvt.s.w $f0, $f0
/* 0D1FD8 8013B8D8 AC460000 */  sw    $a2, ($v0)
/* 0D1FDC 8013B8DC AC440004 */  sw    $a0, 4($v0)
/* 0D1FE0 8013B8E0 24A20008 */  addiu $v0, $a1, 8
/* 0D1FE4 8013B8E4 AC620000 */  sw    $v0, ($v1)
/* 0D1FE8 8013B8E8 3C02FA00 */  lui   $v0, 0xfa00
/* 0D1FEC 8013B8EC ACA20000 */  sw    $v0, ($a1)
/* 0D1FF0 8013B8F0 92430033 */  lbu   $v1, 0x33($s2)
/* 0D1FF4 8013B8F4 46020002 */  mul.s $f0, $f0, $f2
/* 0D1FF8 8013B8F8 00000000 */  nop   
/* 0D1FFC 8013B8FC 00031600 */  sll   $v0, $v1, 0x18
/* 0D2000 8013B900 00032400 */  sll   $a0, $v1, 0x10
/* 0D2004 8013B904 00441025 */  or    $v0, $v0, $a0
/* 0D2008 8013B908 00031A00 */  sll   $v1, $v1, 8
/* 0D200C 8013B90C 00431025 */  or    $v0, $v0, $v1
/* 0D2010 8013B910 4600018D */  trunc.w.s $f6, $f0
/* 0D2014 8013B914 44083000 */  mfc1  $t0, $f6
/* 0D2018 8013B918 0804EEB8 */  j     .L8013BAE0
/* 0D201C 8013B91C 310300FF */   andi  $v1, $t0, 0xff

.L8013B920:
/* 0D2020 8013B920 146B0022 */  bne   $v1, $t3, .L8013B9AC
/* 0D2024 8013B924 24020002 */   addiu $v0, $zero, 2
/* 0D2028 8013B928 3C06FCFF */  lui   $a2, 0xfcff
/* 0D202C 8013B92C 34C697FF */  ori   $a2, $a2, 0x97ff
/* 0D2030 8013B930 3C05FF2C */  lui   $a1, 0xff2c
/* 0D2034 8013B934 34A5FE7F */  ori   $a1, $a1, 0xfe7f
/* 0D2038 8013B938 3C07E200 */  lui   $a3, 0xe200
/* 0D203C 8013B93C 3C04800A */  lui   $a0, 0x800a
/* 0D2040 8013B940 2484A66C */  addiu $a0, $a0, -0x5994
/* 0D2044 8013B944 8C830000 */  lw    $v1, ($a0)
/* 0D2048 8013B948 34E71E01 */  ori   $a3, $a3, 0x1e01
/* 0D204C 8013B94C 0060102D */  daddu $v0, $v1, $zero
/* 0D2050 8013B950 24630008 */  addiu $v1, $v1, 8
/* 0D2054 8013B954 AC830000 */  sw    $v1, ($a0)
/* 0D2058 8013B958 C6400038 */  lwc1  $f0, 0x38($s2)
/* 0D205C 8013B95C 46800020 */  cvt.s.w $f0, $f0
/* 0D2060 8013B960 AC460000 */  sw    $a2, ($v0)
/* 0D2064 8013B964 AC450004 */  sw    $a1, 4($v0)
/* 0D2068 8013B968 24620008 */  addiu $v0, $v1, 8
/* 0D206C 8013B96C AC820000 */  sw    $v0, ($a0)
/* 0D2070 8013B970 3C02FA00 */  lui   $v0, 0xfa00
/* 0D2074 8013B974 AC620000 */  sw    $v0, ($v1)
/* 0D2078 8013B978 24620010 */  addiu $v0, $v1, 0x10
/* 0D207C 8013B97C 46020002 */  mul.s $f0, $f0, $f2
/* 0D2080 8013B980 00000000 */  nop   
/* 0D2084 8013B984 AC820000 */  sw    $v0, ($a0)
/* 0D2088 8013B988 24020003 */  addiu $v0, $zero, 3
/* 0D208C 8013B98C AC670008 */  sw    $a3, 8($v1)
/* 0D2090 8013B990 AC62000C */  sw    $v0, 0xc($v1)
/* 0D2094 8013B994 4600018D */  trunc.w.s $f6, $f0
/* 0D2098 8013B998 44083000 */  mfc1  $t0, $f6
/* 0D209C 8013B99C 00000000 */  nop   
/* 0D20A0 8013B9A0 310200FF */  andi  $v0, $t0, 0xff
/* 0D20A4 8013B9A4 0804EEDA */  j     .L8013BB68
/* 0D20A8 8013B9A8 AC620004 */   sw    $v0, 4($v1)

.L8013B9AC:
/* 0D20AC 8013B9AC 1462006E */  bne   $v1, $v0, .L8013BB68
/* 0D20B0 8013B9B0 00000000 */   nop   
/* 0D20B4 8013B9B4 8E4A0038 */  lw    $t2, 0x38($s2)
/* 0D20B8 8013B9B8 8E420030 */  lw    $v0, 0x30($s2)
/* 0D20BC 8013B9BC 01424821 */  addu  $t1, $t2, $v0
/* 0D20C0 8013B9C0 29220100 */  slti  $v0, $t1, 0x100
/* 0D20C4 8013B9C4 50400001 */  beql  $v0, $zero, .L8013B9CC
/* 0D20C8 8013B9C8 240900FF */   addiu $t1, $zero, 0xff
.L8013B9CC:
/* 0D20CC 8013B9CC 3C06FCFF */  lui   $a2, 0xfcff
/* 0D20D0 8013B9D0 34C697FF */  ori   $a2, $a2, 0x97ff
/* 0D20D4 8013B9D4 3C05FF2C */  lui   $a1, 0xff2c
/* 0D20D8 8013B9D8 34A5FE7F */  ori   $a1, $a1, 0xfe7f
/* 0D20DC 8013B9DC 3C07E300 */  lui   $a3, 0xe300
/* 0D20E0 8013B9E0 34E71A01 */  ori   $a3, $a3, 0x1a01
/* 0D20E4 8013B9E4 3C08E200 */  lui   $t0, 0xe200
/* 0D20E8 8013B9E8 3C04800A */  lui   $a0, 0x800a
/* 0D20EC 8013B9EC 2484A66C */  addiu $a0, $a0, -0x5994
/* 0D20F0 8013B9F0 35081E01 */  ori   $t0, $t0, 0x1e01
/* 0D20F4 8013B9F4 448A0000 */  mtc1  $t2, $f0
/* 0D20F8 8013B9F8 00000000 */  nop   
/* 0D20FC 8013B9FC 46800020 */  cvt.s.w $f0, $f0
/* 0D2100 8013BA00 8C820000 */  lw    $v0, ($a0)
/* 0D2104 8013BA04 46020002 */  mul.s $f0, $f0, $f2
/* 0D2108 8013BA08 00000000 */  nop   
/* 0D210C 8013BA0C 0040182D */  daddu $v1, $v0, $zero
/* 0D2110 8013BA10 24420008 */  addiu $v0, $v0, 8
/* 0D2114 8013BA14 AC820000 */  sw    $v0, ($a0)
/* 0D2118 8013BA18 AC660000 */  sw    $a2, ($v1)
/* 0D211C 8013BA1C AC650004 */  sw    $a1, 4($v1)
/* 0D2120 8013BA20 24430008 */  addiu $v1, $v0, 8
/* 0D2124 8013BA24 AC830000 */  sw    $v1, ($a0)
/* 0D2128 8013BA28 24030020 */  addiu $v1, $zero, 0x20
/* 0D212C 8013BA2C AC430004 */  sw    $v1, 4($v0)
/* 0D2130 8013BA30 24430010 */  addiu $v1, $v0, 0x10
/* 0D2134 8013BA34 AC470000 */  sw    $a3, ($v0)
/* 0D2138 8013BA38 AC830000 */  sw    $v1, ($a0)
/* 0D213C 8013BA3C 24430018 */  addiu $v1, $v0, 0x18
/* 0D2140 8013BA40 AC480008 */  sw    $t0, 8($v0)
/* 0D2144 8013BA44 AC4B000C */  sw    $t3, 0xc($v0)
/* 0D2148 8013BA48 AC830000 */  sw    $v1, ($a0)
/* 0D214C 8013BA4C 3C03FA00 */  lui   $v1, 0xfa00
/* 0D2150 8013BA50 AC430010 */  sw    $v1, 0x10($v0)
/* 0D2154 8013BA54 24430020 */  addiu $v1, $v0, 0x20
/* 0D2158 8013BA58 AC830000 */  sw    $v1, ($a0)
/* 0D215C 8013BA5C 3C03F900 */  lui   $v1, 0xf900
/* 0D2160 8013BA60 AC430018 */  sw    $v1, 0x18($v0)
/* 0D2164 8013BA64 312300FF */  andi  $v1, $t1, 0xff
/* 0D2168 8013BA68 AC43001C */  sw    $v1, 0x1c($v0)
/* 0D216C 8013BA6C 4600018D */  trunc.w.s $f6, $f0
/* 0D2170 8013BA70 44083000 */  mfc1  $t0, $f6
/* 0D2174 8013BA74 00000000 */  nop   
/* 0D2178 8013BA78 310300FF */  andi  $v1, $t0, 0xff
/* 0D217C 8013BA7C 0804EEDA */  j     .L8013BB68
/* 0D2180 8013BA80 AC430014 */   sw    $v1, 0x14($v0)

/* 0D2184 8013BA84 3C06FCFF */  lui   $a2, 0xfcff
/* 0D2188 8013BA88 34C6FFFF */  ori   $a2, $a2, 0xffff
/* 0D218C 8013BA8C 3C04FFFD */  lui   $a0, 0xfffd
.L8013BA90:
/* 0D2190 8013BA90 3C03800A */  lui   $v1, 0x800a
/* 0D2194 8013BA94 2463A66C */  addiu $v1, $v1, -0x5994
/* 0D2198 8013BA98 8C650000 */  lw    $a1, ($v1)
/* 0D219C 8013BA9C 3484F2F9 */  ori   $a0, $a0, 0xf2f9
/* 0D21A0 8013BAA0 00A0102D */  daddu $v0, $a1, $zero
/* 0D21A4 8013BAA4 24A50008 */  addiu $a1, $a1, 8
/* 0D21A8 8013BAA8 AC650000 */  sw    $a1, ($v1)
/* 0D21AC 8013BAAC AC460000 */  sw    $a2, ($v0)
/* 0D21B0 8013BAB0 AC440004 */  sw    $a0, 4($v0)
.L8013BAB4:
/* 0D21B4 8013BAB4 24A20008 */  addiu $v0, $a1, 8
/* 0D21B8 8013BAB8 AC620000 */  sw    $v0, ($v1)
/* 0D21BC 8013BABC 3C02FA00 */  lui   $v0, 0xfa00
/* 0D21C0 8013BAC0 ACA20000 */  sw    $v0, ($a1)
/* 0D21C4 8013BAC4 9242002F */  lbu   $v0, 0x2f($s2)
/* 0D21C8 8013BAC8 92440033 */  lbu   $a0, 0x33($s2)
/* 0D21CC 8013BACC 92430037 */  lbu   $v1, 0x37($s2)
/* 0D21D0 8013BAD0 00021600 */  sll   $v0, $v0, 0x18
/* 0D21D4 8013BAD4 00042400 */  sll   $a0, $a0, 0x10
/* 0D21D8 8013BAD8 00441025 */  or    $v0, $v0, $a0
/* 0D21DC 8013BADC 00031A00 */  sll   $v1, $v1, 8
.L8013BAE0:
/* 0D21E0 8013BAE0 00431025 */  or    $v0, $v0, $v1
/* 0D21E4 8013BAE4 0804EEDA */  j     .L8013BB68
/* 0D21E8 8013BAE8 ACA20004 */   sw    $v0, 4($a1)

.L8013BAEC:
/* 0D21EC 8013BAEC 3C06FCFF */  lui   $a2, 0xfcff
/* 0D21F0 8013BAF0 34C6FFFF */  ori   $a2, $a2, 0xffff
/* 0D21F4 8013BAF4 3C05FFFC */  lui   $a1, 0xfffc
/* 0D21F8 8013BAF8 3C04800A */  lui   $a0, 0x800a
/* 0D21FC 8013BAFC 2484A66C */  addiu $a0, $a0, -0x5994
/* 0D2200 8013BB00 8C820000 */  lw    $v0, ($a0)
/* 0D2204 8013BB04 34A5F279 */  ori   $a1, $a1, 0xf279
/* 0D2208 8013BB08 0040182D */  daddu $v1, $v0, $zero
/* 0D220C 8013BB0C 24420008 */  addiu $v0, $v0, 8
/* 0D2210 8013BB10 AC820000 */  sw    $v0, ($a0)
/* 0D2214 8013BB14 AC660000 */  sw    $a2, ($v1)
/* 0D2218 8013BB18 0804EEDA */  j     .L8013BB68
/* 0D221C 8013BB1C AC650004 */   sw    $a1, 4($v1)

/* 0D2220 8013BB20 3C06FCFF */  lui   $a2, 0xfcff
/* 0D2224 8013BB24 34C697FF */  ori   $a2, $a2, 0x97ff
/* 0D2228 8013BB28 3C05FF2C */  lui   $a1, 0xff2c
/* 0D222C 8013BB2C 3C04800A */  lui   $a0, 0x800a
/* 0D2230 8013BB30 2484A66C */  addiu $a0, $a0, -0x5994
/* 0D2234 8013BB34 8C820000 */  lw    $v0, ($a0)
/* 0D2238 8013BB38 34A5FE7F */  ori   $a1, $a1, 0xfe7f
/* 0D223C 8013BB3C 0040182D */  daddu $v1, $v0, $zero
/* 0D2240 8013BB40 24420008 */  addiu $v0, $v0, 8
/* 0D2244 8013BB44 AC820000 */  sw    $v0, ($a0)
/* 0D2248 8013BB48 AC660000 */  sw    $a2, ($v1)
/* 0D224C 8013BB4C AC650004 */  sw    $a1, 4($v1)
/* 0D2250 8013BB50 24430008 */  addiu $v1, $v0, 8
/* 0D2254 8013BB54 AC830000 */  sw    $v1, ($a0)
/* 0D2258 8013BB58 3C03FA00 */  lui   $v1, 0xfa00
/* 0D225C 8013BB5C AC430000 */  sw    $v1, ($v0)
/* 0D2260 8013BB60 92430033 */  lbu   $v1, 0x33($s2)
.L8013BB64:
/* 0D2264 8013BB64 AC430004 */  sw    $v1, 4($v0)
.L8013BB68:
/* 0D2268 8013BB68 92430001 */  lbu   $v1, 1($s2)
/* 0D226C 8013BB6C 2C620005 */  sltiu $v0, $v1, 5
/* 0D2270 8013BB70 10400024 */  beqz  $v0, .L8013BC04
/* 0D2274 8013BB74 00031080 */   sll   $v0, $v1, 2
/* 0D2278 8013BB78 3C018015 */  lui   $at, 0x8015
/* 0D227C 8013BB7C 00220821 */  addu  $at, $at, $v0
/* 0D2280 8013BB80 8C2210D0 */  lw    $v0, 0x10d0($at)
/* 0D2284 8013BB84 00400008 */  jr    $v0
/* 0D2288 8013BB88 00000000 */   nop   
/* 0D228C 8013BB8C 0240202D */  daddu $a0, $s2, $zero
/* 0D2290 8013BB90 0C04F3EA */  jal   func_8013CFA8
/* 0D2294 8013BB94 0260282D */   daddu $a1, $s3, $zero
/* 0D2298 8013BB98 0804EF01 */  j     .L8013BC04
/* 0D229C 8013BB9C 00000000 */   nop   

/* 0D22A0 8013BBA0 0240202D */  daddu $a0, $s2, $zero
/* 0D22A4 8013BBA4 0C04F6AD */  jal   func_8013DAB4
/* 0D22A8 8013BBA8 0260282D */   daddu $a1, $s3, $zero
/* 0D22AC 8013BBAC 0804EF01 */  j     .L8013BC04
/* 0D22B0 8013BBB0 00000000 */   nop   

/* 0D22B4 8013BBB4 0240202D */  daddu $a0, $s2, $zero
/* 0D22B8 8013BBB8 0C04F8BC */  jal   func_8013E2F0
/* 0D22BC 8013BBBC 0260282D */   daddu $a1, $s3, $zero
/* 0D22C0 8013BBC0 0804EF01 */  j     .L8013BC04
/* 0D22C4 8013BBC4 00000000 */   nop   

/* 0D22C8 8013BBC8 0240202D */  daddu $a0, $s2, $zero
/* 0D22CC 8013BBCC 0C04F3EA */  jal   func_8013CFA8
/* 0D22D0 8013BBD0 0260282D */   daddu $a1, $s3, $zero
/* 0D22D4 8013BBD4 0240202D */  daddu $a0, $s2, $zero
/* 0D22D8 8013BBD8 3C03800A */  lui   $v1, 0x800a
/* 0D22DC 8013BBDC 2463A66C */  addiu $v1, $v1, -0x5994
/* 0D22E0 8013BBE0 8C620000 */  lw    $v0, ($v1)
/* 0D22E4 8013BBE4 0260282D */  daddu $a1, $s3, $zero
/* 0D22E8 8013BBE8 0040302D */  daddu $a2, $v0, $zero
/* 0D22EC 8013BBEC 24420008 */  addiu $v0, $v0, 8
/* 0D22F0 8013BBF0 AC620000 */  sw    $v0, ($v1)
/* 0D22F4 8013BBF4 3C02E700 */  lui   $v0, 0xe700
/* 0D22F8 8013BBF8 ACC20000 */  sw    $v0, ($a2)
/* 0D22FC 8013BBFC 0C04FA41 */  jal   func_8013E904
/* 0D2300 8013BC00 ACC00004 */   sw    $zero, 4($a2)
.L8013BC04:
/* 0D2304 8013BC04 3C06800A */  lui   $a2, 0x800a
/* 0D2308 8013BC08 24C6A66C */  addiu $a2, $a2, -0x5994
/* 0D230C 8013BC0C 8CC50000 */  lw    $a1, ($a2)
/* 0D2310 8013BC10 3C02E700 */  lui   $v0, 0xe700
/* 0D2314 8013BC14 00A0182D */  daddu $v1, $a1, $zero
/* 0D2318 8013BC18 24A50008 */  addiu $a1, $a1, 8
/* 0D231C 8013BC1C ACC50000 */  sw    $a1, ($a2)
/* 0D2320 8013BC20 AC620000 */  sw    $v0, ($v1)
/* 0D2324 8013BC24 AC600004 */  sw    $zero, 4($v1)
/* 0D2328 8013BC28 92430002 */  lbu   $v1, 2($s2)
/* 0D232C 8013BC2C 2402000C */  addiu $v0, $zero, 0xc
/* 0D2330 8013BC30 1462000D */  bne   $v1, $v0, .L8013BC68
/* 0D2334 8013BC34 3C03E200 */   lui   $v1, 0xe200
/* 0D2338 8013BC38 34631E01 */  ori   $v1, $v1, 0x1e01
/* 0D233C 8013BC3C 3C04E300 */  lui   $a0, 0xe300
/* 0D2340 8013BC40 34841A01 */  ori   $a0, $a0, 0x1a01
/* 0D2344 8013BC44 24A20008 */  addiu $v0, $a1, 8
/* 0D2348 8013BC48 ACC20000 */  sw    $v0, ($a2)
/* 0D234C 8013BC4C 24A20010 */  addiu $v0, $a1, 0x10
/* 0D2350 8013BC50 ACA30000 */  sw    $v1, ($a1)
/* 0D2354 8013BC54 ACA00004 */  sw    $zero, 4($a1)
/* 0D2358 8013BC58 ACC20000 */  sw    $v0, ($a2)
/* 0D235C 8013BC5C 24020030 */  addiu $v0, $zero, 0x30
/* 0D2360 8013BC60 ACA40008 */  sw    $a0, 8($a1)
/* 0D2364 8013BC64 ACA2000C */  sw    $v0, 0xc($a1)
.L8013BC68:
/* 0D2368 8013BC68 8FBF0020 */  lw    $ra, 0x20($sp)
/* 0D236C 8013BC6C 8FB3001C */  lw    $s3, 0x1c($sp)
/* 0D2370 8013BC70 8FB20018 */  lw    $s2, 0x18($sp)
/* 0D2374 8013BC74 8FB10014 */  lw    $s1, 0x14($sp)
/* 0D2378 8013BC78 8FB00010 */  lw    $s0, 0x10($sp)
/* 0D237C 8013BC7C D7B40028 */  ldc1  $f20, 0x28($sp)
/* 0D2380 8013BC80 03E00008 */  jr    $ra
/* 0D2384 8013BC84 27BD0030 */   addiu $sp, $sp, 0x30

