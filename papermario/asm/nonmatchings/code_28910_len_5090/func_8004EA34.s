.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel func_8004EA34
/* 029E34 8004EA34 30A8001F */  andi  $t0, $a1, 0x1f
/* 029E38 8004EA38 90830210 */  lbu   $v1, 0x210($a0)
/* 029E3C 8004EA3C 00052942 */  srl   $a1, $a1, 5
/* 029E40 8004EA40 00031080 */  sll   $v0, $v1, 2
/* 029E44 8004EA44 00823021 */  addu  $a2, $a0, $v0
/* 029E48 8004EA48 8CC20158 */  lw    $v0, 0x158($a2)
/* 029E4C 8004EA4C 10400017 */  beqz  $v0, .L8004EAAC
/* 029E50 8004EA50 30A5007F */   andi  $a1, $a1, 0x7f
/* 029E54 8004EA54 8C870068 */  lw    $a3, 0x68($a0)
/* 029E58 8004EA58 1447000D */  bne   $v0, $a3, .L8004EA90
/* 029E5C 8004EA5C 2C620004 */   sltiu $v0, $v1, 4
/* 029E60 8004EA60 00832821 */  addu  $a1, $a0, $v1
/* 029E64 8004EA64 90A20168 */  lbu   $v0, 0x168($a1)
/* 029E68 8004EA68 10400014 */  beqz  $v0, .L8004EABC
/* 029E6C 8004EA6C 2442FFFF */   addiu $v0, $v0, -1
/* 029E70 8004EA70 A0A20168 */  sb    $v0, 0x168($a1)
/* 029E74 8004EA74 304200FF */  andi  $v0, $v0, 0xff
/* 029E78 8004EA78 54400011 */  bnel  $v0, $zero, .L8004EAC0
/* 029E7C 8004EA7C 00081080 */   sll   $v0, $t0, 2
/* 029E80 8004EA80 10600012 */  beqz  $v1, .L8004EACC
/* 029E84 8004EA84 ACC00158 */   sw    $zero, 0x158($a2)
/* 029E88 8004EA88 08013AB3 */  j     .L8004EACC
/* 029E8C 8004EA8C 2463FFFF */   addiu $v1, $v1, -1

.L8004EA90:
/* 029E90 8004EA90 1040000E */  beqz  $v0, .L8004EACC
/* 029E94 8004EA94 00000000 */   nop   
/* 029E98 8004EA98 24630001 */  addiu $v1, $v1, 1
/* 029E9C 8004EA9C 00031080 */  sll   $v0, $v1, 2
/* 029EA0 8004EAA0 00821021 */  addu  $v0, $a0, $v0
/* 029EA4 8004EAA4 08013AAD */  j     .L8004EAB4
/* 029EA8 8004EAA8 AC470158 */   sw    $a3, 0x158($v0)

.L8004EAAC:
/* 029EAC 8004EAAC 8C820068 */  lw    $v0, 0x68($a0)
/* 029EB0 8004EAB0 ACC20158 */  sw    $v0, 0x158($a2)
.L8004EAB4:
/* 029EB4 8004EAB4 00831021 */  addu  $v0, $a0, $v1
/* 029EB8 8004EAB8 A0450168 */  sb    $a1, 0x168($v0)
.L8004EABC:
/* 029EBC 8004EABC 00081080 */  sll   $v0, $t0, 2
.L8004EAC0:
/* 029EC0 8004EAC0 00821021 */  addu  $v0, $a0, $v0
/* 029EC4 8004EAC4 8C4200D8 */  lw    $v0, 0xd8($v0)
/* 029EC8 8004EAC8 AC820068 */  sw    $v0, 0x68($a0)
.L8004EACC:
/* 029ECC 8004EACC 03E00008 */  jr    $ra
/* 029ED0 8004EAD0 A0830210 */   sb    $v1, 0x210($a0)

