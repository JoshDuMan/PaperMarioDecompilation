.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel func_80032970
/* 00DD70 80032970 44853000 */  mtc1  $a1, $f6
/* 00DD74 80032974 94820000 */  lhu   $v0, ($a0)
/* 00DD78 80032978 8C830448 */  lw    $v1, 0x448($a0)
/* 00DD7C 8003297C 30421000 */  andi  $v0, $v0, 0x1000
/* 00DD80 80032980 10600005 */  beqz  $v1, .L80032998
/* 00DD84 80032984 0002302B */   sltu  $a2, $zero, $v0
/* 00DD88 80032988 8C630000 */  lw    $v1, ($v1)
/* 00DD8C 8003298C 24020004 */  addiu $v0, $zero, 4
/* 00DD90 80032990 50620001 */  beql  $v1, $v0, .L80032998
/* 00DD94 80032994 24060001 */   addiu $a2, $zero, 1
.L80032998:
/* 00DD98 80032998 10C00008 */  beqz  $a2, .L800329BC
/* 00DD9C 8003299C 24020001 */   addiu $v0, $zero, 1
/* 00DDA0 800329A0 44804000 */  mtc1  $zero, $f8
/* 00DDA4 800329A4 3C013F80 */  lui   $at, 0x3f80
/* 00DDA8 800329A8 44810000 */  mtc1  $at, $f0
/* 00DDAC 800329AC AC82051C */  sw    $v0, 0x51c($a0)
/* 00DDB0 800329B0 E4800514 */  swc1  $f0, 0x514($a0)
/* 00DDB4 800329B4 0800CA8D */  j     .L80032A34
/* 00DDB8 800329B8 E4880510 */   swc1  $f8, 0x510($a0)

.L800329BC:
/* 00DDBC 800329BC 3C05800F */  lui   $a1, 0x800f
/* 00DDC0 800329C0 8CA57B30 */  lw    $a1, 0x7b30($a1)
/* 00DDC4 800329C4 8CA20004 */  lw    $v0, 4($a1)
/* 00DDC8 800329C8 3C030040 */  lui   $v1, 0x40
/* 00DDCC 800329CC 00431024 */  and   $v0, $v0, $v1
/* 00DDD0 800329D0 10400007 */  beqz  $v0, .L800329F0
/* 00DDD4 800329D4 00000000 */   nop   
/* 00DDD8 800329D8 3C028011 */  lui   $v0, 0x8011
/* 00DDDC 800329DC 8442EBB4 */  lh    $v0, -0x144c($v0)
/* 00DDE0 800329E0 44824000 */  mtc1  $v0, $f8
/* 00DDE4 800329E4 00000000 */  nop   
/* 00DDE8 800329E8 0800CA7E */  j     .L800329F8
/* 00DDEC 800329EC 46804220 */   cvt.s.w $f8, $f8

.L800329F0:
/* 00DDF0 800329F0 C4A800E8 */  lwc1  $f8, 0xe8($a1)
/* 00DDF4 800329F4 46804220 */  cvt.s.w $f8, $f8
.L800329F8:
/* 00DDF8 800329F8 44800000 */  mtc1  $zero, $f0
/* 00DDFC 800329FC 00000000 */  nop   
/* 00DE00 80032A00 4608003C */  c.lt.s $f0, $f8
/* 00DE04 80032A04 00000000 */  nop   
/* 00DE08 80032A08 45000004 */  bc1f  .L80032A1C
/* 00DE0C 80032A0C 00000000 */   nop   
/* 00DE10 80032A10 3C014248 */  lui   $at, 0x4248
/* 00DE14 80032A14 44814000 */  mtc1  $at, $f8
/* 00DE18 80032A18 00000000 */  nop   
.L80032A1C:
/* 00DE1C 80032A1C 4600403C */  c.lt.s $f8, $f0
/* 00DE20 80032A20 00000000 */  nop   
/* 00DE24 80032A24 45000003 */  bc1f  .L80032A34
/* 00DE28 80032A28 00000000 */   nop   
/* 00DE2C 80032A2C 3C01C248 */  lui   $at, 0xc248
/* 00DE30 80032A30 44814000 */  mtc1  $at, $f8
.L80032A34:
/* 00DE34 80032A34 44801000 */  mtc1  $zero, $f2
/* 00DE38 80032A38 00000000 */  nop   
/* 00DE3C 80032A3C 46024032 */  c.eq.s $f8, $f2
/* 00DE40 80032A40 00000000 */  nop   
/* 00DE44 80032A44 4501003A */  bc1t  .L80032B30
/* 00DE48 80032A48 00000000 */   nop   
/* 00DE4C 80032A4C 4602403C */  c.lt.s $f8, $f2
/* 00DE50 80032A50 00000000 */  nop   
/* 00DE54 80032A54 4500001C */  bc1f  .L80032AC8
/* 00DE58 80032A58 00000000 */   nop   
/* 00DE5C 80032A5C C4800518 */  lwc1  $f0, 0x518($a0)
/* 00DE60 80032A60 4600103C */  c.lt.s $f2, $f0
/* 00DE64 80032A64 00000000 */  nop   
/* 00DE68 80032A68 45020003 */  bc1fl .L80032A78
/* 00DE6C 80032A6C 46080000 */   add.s $f0, $f0, $f8
/* 00DE70 80032A70 0800CA9F */  j     .L80032A7C
/* 00DE74 80032A74 E4880518 */   swc1  $f8, 0x518($a0)

.L80032A78:
/* 00DE78 80032A78 E4800518 */  swc1  $f0, 0x518($a0)
.L80032A7C:
/* 00DE7C 80032A7C C4800518 */  lwc1  $f0, 0x518($a0)
/* 00DE80 80032A80 3C01C396 */  lui   $at, 0xc396
/* 00DE84 80032A84 44812000 */  mtc1  $at, $f4
/* 00DE88 80032A88 00000000 */  nop   
/* 00DE8C 80032A8C 4604003E */  c.le.s $f0, $f4
/* 00DE90 80032A90 00000000 */  nop   
/* 00DE94 80032A94 45000026 */  bc1f  .L80032B30
/* 00DE98 80032A98 24020001 */   addiu $v0, $zero, 1
/* 00DE9C 80032A9C C4800510 */  lwc1  $f0, 0x510($a0)
/* 00DEA0 80032AA0 44801000 */  mtc1  $zero, $f2
/* 00DEA4 80032AA4 00000000 */  nop   
/* 00DEA8 80032AA8 4600103C */  c.lt.s $f2, $f0
/* 00DEAC 80032AAC 00000000 */  nop   
/* 00DEB0 80032AB0 45000002 */  bc1f  .L80032ABC
/* 00DEB4 80032AB4 AC82051C */   sw    $v0, 0x51c($a0)
/* 00DEB8 80032AB8 E4820514 */  swc1  $f2, 0x514($a0)
.L80032ABC:
/* 00DEBC 80032ABC 46003007 */  neg.s $f0, $f6
/* 00DEC0 80032AC0 0800CACB */  j     .L80032B2C
/* 00DEC4 80032AC4 E4800510 */   swc1  $f0, 0x510($a0)

.L80032AC8:
/* 00DEC8 80032AC8 C4800518 */  lwc1  $f0, 0x518($a0)
/* 00DECC 80032ACC 4602003C */  c.lt.s $f0, $f2
/* 00DED0 80032AD0 00000000 */  nop   
/* 00DED4 80032AD4 45020003 */  bc1fl .L80032AE4
/* 00DED8 80032AD8 46080000 */   add.s $f0, $f0, $f8
/* 00DEDC 80032ADC 0800CABA */  j     .L80032AE8
/* 00DEE0 80032AE0 E4880518 */   swc1  $f8, 0x518($a0)

.L80032AE4:
/* 00DEE4 80032AE4 E4800518 */  swc1  $f0, 0x518($a0)
.L80032AE8:
/* 00DEE8 80032AE8 C4800518 */  lwc1  $f0, 0x518($a0)
/* 00DEEC 80032AEC 3C014396 */  lui   $at, 0x4396
/* 00DEF0 80032AF0 44812000 */  mtc1  $at, $f4
/* 00DEF4 80032AF4 00000000 */  nop   
/* 00DEF8 80032AF8 4600203E */  c.le.s $f4, $f0
/* 00DEFC 80032AFC 00000000 */  nop   
/* 00DF00 80032B00 4500000B */  bc1f  .L80032B30
/* 00DF04 80032B04 24020001 */   addiu $v0, $zero, 1
/* 00DF08 80032B08 C4800510 */  lwc1  $f0, 0x510($a0)
/* 00DF0C 80032B0C 44801000 */  mtc1  $zero, $f2
/* 00DF10 80032B10 00000000 */  nop   
/* 00DF14 80032B14 4602003C */  c.lt.s $f0, $f2
/* 00DF18 80032B18 00000000 */  nop   
/* 00DF1C 80032B1C 45000002 */  bc1f  .L80032B28
/* 00DF20 80032B20 AC82051C */   sw    $v0, 0x51c($a0)
/* 00DF24 80032B24 E4820514 */  swc1  $f2, 0x514($a0)
.L80032B28:
/* 00DF28 80032B28 E4860510 */  swc1  $f6, 0x510($a0)
.L80032B2C:
/* 00DF2C 80032B2C E4840518 */  swc1  $f4, 0x518($a0)
.L80032B30:
/* 00DF30 80032B30 8C82051C */  lw    $v0, 0x51c($a0)
/* 00DF34 80032B34 1040000F */  beqz  $v0, .L80032B74
/* 00DF38 80032B38 00000000 */   nop   
/* 00DF3C 80032B3C C4800514 */  lwc1  $f0, 0x514($a0)
/* 00DF40 80032B40 3C013C23 */  lui   $at, 0x3c23
/* 00DF44 80032B44 3421D70A */  ori   $at, $at, 0xd70a
/* 00DF48 80032B48 44811000 */  mtc1  $at, $f2
/* 00DF4C 80032B4C 00000000 */  nop   
/* 00DF50 80032B50 46020000 */  add.s $f0, $f0, $f2
/* 00DF54 80032B54 3C013F80 */  lui   $at, 0x3f80
/* 00DF58 80032B58 44811000 */  mtc1  $at, $f2
/* 00DF5C 80032B5C 00000000 */  nop   
/* 00DF60 80032B60 4600103C */  c.lt.s $f2, $f0
/* 00DF64 80032B64 00000000 */  nop   
/* 00DF68 80032B68 45000002 */  bc1f  .L80032B74
/* 00DF6C 80032B6C E4800514 */   swc1  $f0, 0x514($a0)
/* 00DF70 80032B70 E4820514 */  swc1  $f2, 0x514($a0)
.L80032B74:
/* 00DF74 80032B74 C4800510 */  lwc1  $f0, 0x510($a0)
/* 00DF78 80032B78 C482050C */  lwc1  $f2, 0x50c($a0)
/* 00DF7C 80032B7C 46020001 */  sub.s $f0, $f0, $f2
/* 00DF80 80032B80 44805000 */  mtc1  $zero, $f10
/* 00DF84 80032B84 00000000 */  nop   
/* 00DF88 80032B88 460A0032 */  c.eq.s $f0, $f10
/* 00DF8C 80032B8C 00000000 */  nop   
/* 00DF90 80032B90 45000003 */  bc1f  .L80032BA0
/* 00DF94 80032B94 00000000 */   nop   
/* 00DF98 80032B98 E48A0514 */  swc1  $f10, 0x514($a0)
/* 00DF9C 80032B9C AC80051C */  sw    $zero, 0x51c($a0)
.L80032BA0:
/* 00DFA0 80032BA0 C4800510 */  lwc1  $f0, 0x510($a0)
/* 00DFA4 80032BA4 C482050C */  lwc1  $f2, 0x50c($a0)
/* 00DFA8 80032BA8 46020101 */  sub.s $f4, $f0, $f2
/* 00DFAC 80032BAC C4800514 */  lwc1  $f0, 0x514($a0)
/* 00DFB0 80032BB0 46002182 */  mul.s $f6, $f4, $f0
/* 00DFB4 80032BB4 00000000 */  nop   
/* 00DFB8 80032BB8 4604503C */  c.lt.s $f10, $f4
/* 00DFBC 80032BBC 00000000 */  nop   
/* 00DFC0 80032BC0 4500000D */  bc1f  .L80032BF8
/* 00DFC4 80032BC4 46002021 */   cvt.d.s $f0, $f4
/* 00DFC8 80032BC8 3C01800A */  lui   $at, 0x800a
/* 00DFCC 80032BCC D4228280 */  ldc1  $f2, -0x7d80($at)
/* 00DFD0 80032BD0 4622003C */  c.lt.d $f0, $f2
/* 00DFD4 80032BD4 00000000 */  nop   
/* 00DFD8 80032BD8 45030001 */  bc1tl .L80032BE0
/* 00DFDC 80032BDC 46002186 */   mov.s $f6, $f4
.L80032BE0:
/* 00DFE0 80032BE0 3C014040 */  lui   $at, 0x4040
/* 00DFE4 80032BE4 44810000 */  mtc1  $at, $f0
/* 00DFE8 80032BE8 00000000 */  nop   
/* 00DFEC 80032BEC 4606003C */  c.lt.s $f0, $f6
/* 00DFF0 80032BF0 0800CB09 */  j     .L80032C24
/* 00DFF4 80032BF4 00000000 */   nop   

.L80032BF8:
/* 00DFF8 80032BF8 3C01800A */  lui   $at, 0x800a
/* 00DFFC 80032BFC D4228288 */  ldc1  $f2, -0x7d78($at)
/* 00E000 80032C00 4620103C */  c.lt.d $f2, $f0
/* 00E004 80032C04 00000000 */  nop   
/* 00E008 80032C08 45030001 */  bc1tl .L80032C10
/* 00E00C 80032C0C 46002186 */   mov.s $f6, $f4
.L80032C10:
/* 00E010 80032C10 3C01C040 */  lui   $at, 0xc040
/* 00E014 80032C14 44810000 */  mtc1  $at, $f0
/* 00E018 80032C18 00000000 */  nop   
/* 00E01C 80032C1C 4600303C */  c.lt.s $f6, $f0
/* 00E020 80032C20 00000000 */  nop   
.L80032C24:
/* 00E024 80032C24 45030001 */  bc1tl .L80032C2C
/* 00E028 80032C28 46000186 */   mov.s $f6, $f0
.L80032C2C:
/* 00E02C 80032C2C 44800000 */  mtc1  $zero, $f0
/* 00E030 80032C30 00000000 */  nop   
/* 00E034 80032C34 46004032 */  c.eq.s $f8, $f0
/* 00E038 80032C38 00000000 */  nop   
/* 00E03C 80032C3C 45000003 */  bc1f  .L80032C4C
/* 00E040 80032C40 00000000 */   nop   
/* 00E044 80032C44 10C00005 */  beqz  $a2, .L80032C5C
/* 00E048 80032C48 00000000 */   nop   
.L80032C4C:
/* 00E04C 80032C4C C480050C */  lwc1  $f0, 0x50c($a0)
/* 00E050 80032C50 46060000 */  add.s $f0, $f0, $f6
/* 00E054 80032C54 03E00008 */  jr    $ra
/* 00E058 80032C58 E480050C */   swc1  $f0, 0x50c($a0)

.L80032C5C:
/* 00E05C 80032C5C 03E00008 */  jr    $ra
/* 00E060 80032C60 E4800514 */   swc1  $f0, 0x514($a0)

