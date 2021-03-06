.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel func_8004CD94
/* 028194 8004CD94 94A300B8 */  lhu   $v1, 0xb8($a1)
/* 028198 8004CD98 84C2005C */  lh    $v0, 0x5c($a2)
/* 02819C 8004CD9C 00620018 */  mult  $v1, $v0
/* 0281A0 8004CDA0 00003812 */  mflo  $a3
/* 0281A4 8004CDA4 90C3009F */  lbu   $v1, 0x9f($a2)
/* 0281A8 8004CDA8 000713C3 */  sra   $v0, $a3, 0xf
/* 0281AC 8004CDAC 00430018 */  mult  $v0, $v1
/* 0281B0 8004CDB0 00003812 */  mflo  $a3
/* 0281B4 8004CDB4 84C3006C */  lh    $v1, 0x6c($a2)
/* 0281B8 8004CDB8 000711C3 */  sra   $v0, $a3, 7
/* 0281BC 8004CDBC 00430018 */  mult  $v0, $v1
/* 0281C0 8004CDC0 90C2009A */  lbu   $v0, 0x9a($a2)
/* 0281C4 8004CDC4 30420004 */  andi  $v0, $v0, 4
/* 0281C8 8004CDC8 00003812 */  mflo  $a3
/* 0281CC 8004CDCC 14400004 */  bnez  $v0, .L8004CDE0
/* 0281D0 8004CDD0 00071BC3 */   sra   $v1, $a3, 0xf
/* 0281D4 8004CDD4 84C200A6 */  lh    $v0, 0xa6($a2)
/* 0281D8 8004CDD8 14400003 */  bnez  $v0, .L8004CDE8
/* 0281DC 8004CDDC 00620018 */   mult  $v1, $v0
.L8004CDE0:
/* 0281E0 8004CDE0 03E00008 */  jr    $ra
/* 0281E4 8004CDE4 A4830040 */   sh    $v1, 0x40($a0)

.L8004CDE8:
/* 0281E8 8004CDE8 00003812 */  mflo  $a3
/* 0281EC 8004CDEC 000713C3 */  sra   $v0, $a3, 0xf
/* 0281F0 8004CDF0 03E00008 */  jr    $ra
/* 0281F4 8004CDF4 A4820040 */   sh    $v0, 0x40($a0)

/* 0281F8 8004CDF8 30A500FF */  andi  $a1, $a1, 0xff
/* 0281FC 8004CDFC 00041943 */  sra   $v1, $a0, 5
/* 028200 8004CE00 000410C3 */  sra   $v0, $a0, 3
/* 028204 8004CE04 00621821 */  addu  $v1, $v1, $v0
/* 028208 8004CE08 30630001 */  andi  $v1, $v1, 1
/* 02820C 8004CE0C 00041203 */  sra   $v0, $a0, 8
/* 028210 8004CE10 3042001F */  andi  $v0, $v0, 0x1f
/* 028214 8004CE14 000420C0 */  sll   $a0, $a0, 3
/* 028218 8004CE18 308400E0 */  andi  $a0, $a0, 0xe0
/* 02821C 8004CE1C 10600007 */  beqz  $v1, .L8004CE3C
/* 028220 8004CE20 00442021 */   addu  $a0, $v0, $a0
/* 028224 8004CE24 30C200FF */  andi  $v0, $a2, 0xff
/* 028228 8004CE28 00440018 */  mult  $v0, $a0
/* 02822C 8004CE2C 00003812 */  mflo  $a3
/* 028230 8004CE30 00071203 */  sra   $v0, $a3, 8
/* 028234 8004CE34 08013394 */  j     .L8004CE50
/* 028238 8004CE38 00A22821 */   addu  $a1, $a1, $v0

.L8004CE3C:
/* 02823C 8004CE3C 30C200FF */  andi  $v0, $a2, 0xff
/* 028240 8004CE40 00440018 */  mult  $v0, $a0
/* 028244 8004CE44 00003812 */  mflo  $a3
/* 028248 8004CE48 00071203 */  sra   $v0, $a3, 8
/* 02824C 8004CE4C 00A22823 */  subu  $a1, $a1, $v0
.L8004CE50:
/* 028250 8004CE50 04A10003 */  bgez  $a1, .L8004CE60
/* 028254 8004CE54 28A20080 */   slti  $v0, $a1, 0x80
/* 028258 8004CE58 0801339A */  j     .L8004CE68
/* 02825C 8004CE5C 0000282D */   daddu $a1, $zero, $zero

.L8004CE60:
/* 028260 8004CE60 50400001 */  beql  $v0, $zero, .L8004CE68
/* 028264 8004CE64 2405007F */   addiu $a1, $zero, 0x7f
.L8004CE68:
/* 028268 8004CE68 03E00008 */  jr    $ra
/* 02826C 8004CE6C 30A200FF */   andi  $v0, $a1, 0xff

