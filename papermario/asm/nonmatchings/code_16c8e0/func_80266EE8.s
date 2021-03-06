.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel func_80266EE8
/* 1957C8 80266EE8 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 1957CC 80266EEC AFBF001C */  sw    $ra, 0x1c($sp)
/* 1957D0 80266EF0 AFB20018 */  sw    $s2, 0x18($sp)
/* 1957D4 80266EF4 AFB10014 */  sw    $s1, 0x14($sp)
/* 1957D8 80266EF8 AFB00010 */  sw    $s0, 0x10($sp)
/* 1957DC 80266EFC 8C9001F4 */  lw    $s0, 0x1f4($a0)
/* 1957E0 80266F00 12000011 */  beqz  $s0, .L80266F48
/* 1957E4 80266F04 00A0902D */   daddu $s2, $a1, $zero
/* 1957E8 80266F08 3C110010 */  lui   $s1, 0x10
/* 1957EC 80266F0C 36310001 */  ori   $s1, $s1, 1
.L80266F10:
/* 1957F0 80266F10 8E030000 */  lw    $v1, ($s0)
/* 1957F4 80266F14 00711024 */  and   $v0, $v1, $s1
/* 1957F8 80266F18 14400008 */  bnez  $v0, .L80266F3C
/* 1957FC 80266F1C 00000000 */   nop   
/* 195800 80266F20 8E020094 */  lw    $v0, 0x94($s0)
/* 195804 80266F24 10400005 */  beqz  $v0, .L80266F3C
/* 195808 80266F28 30620002 */   andi  $v0, $v1, 2
/* 19580C 80266F2C 14400003 */  bnez  $v0, .L80266F3C
/* 195810 80266F30 0200202D */   daddu $a0, $s0, $zero
/* 195814 80266F34 0C099BAA */  jal   func_80266EA8
/* 195818 80266F38 0240282D */   daddu $a1, $s2, $zero
.L80266F3C:
/* 19581C 80266F3C 8E10000C */  lw    $s0, 0xc($s0)
/* 195820 80266F40 1600FFF3 */  bnez  $s0, .L80266F10
/* 195824 80266F44 00000000 */   nop   
.L80266F48:
/* 195828 80266F48 8FBF001C */  lw    $ra, 0x1c($sp)
/* 19582C 80266F4C 8FB20018 */  lw    $s2, 0x18($sp)
/* 195830 80266F50 8FB10014 */  lw    $s1, 0x14($sp)
/* 195834 80266F54 8FB00010 */  lw    $s0, 0x10($sp)
/* 195838 80266F58 03E00008 */  jr    $ra
/* 19583C 80266F5C 27BD0020 */   addiu $sp, $sp, 0x20

/* 195840 80266F60 8C820094 */  lw    $v0, 0x94($a0)
/* 195844 80266F64 10400007 */  beqz  $v0, .L80266F84
/* 195848 80266F68 00000000 */   nop   
/* 19584C 80266F6C 8C820000 */  lw    $v0, ($a0)
/* 195850 80266F70 30420002 */  andi  $v0, $v0, 2
/* 195854 80266F74 14400003 */  bnez  $v0, .L80266F84
/* 195858 80266F78 00000000 */   nop   
/* 19585C 80266F7C 8C8200C0 */  lw    $v0, 0xc0($a0)
/* 195860 80266F80 A0400750 */  sb    $zero, 0x750($v0)
.L80266F84:
/* 195864 80266F84 03E00008 */  jr    $ra
/* 195868 80266F88 00000000 */   nop   

/* 19586C 80266F8C 8C8401F4 */  lw    $a0, 0x1f4($a0)
/* 195870 80266F90 1080000F */  beqz  $a0, .L80266FD0
/* 195874 80266F94 3C060010 */   lui   $a2, 0x10
/* 195878 80266F98 34C60001 */  ori   $a2, $a2, 1
.L80266F9C:
/* 19587C 80266F9C 8C8500C0 */  lw    $a1, 0xc0($a0)
/* 195880 80266FA0 8C830000 */  lw    $v1, ($a0)
/* 195884 80266FA4 00661024 */  and   $v0, $v1, $a2
/* 195888 80266FA8 14400006 */  bnez  $v0, .L80266FC4
/* 19588C 80266FAC 00000000 */   nop   
/* 195890 80266FB0 8C820094 */  lw    $v0, 0x94($a0)
/* 195894 80266FB4 10400003 */  beqz  $v0, .L80266FC4
/* 195898 80266FB8 30620002 */   andi  $v0, $v1, 2
/* 19589C 80266FBC 50400001 */  beql  $v0, $zero, .L80266FC4
/* 1958A0 80266FC0 A0A00750 */   sb    $zero, 0x750($a1)
.L80266FC4:
/* 1958A4 80266FC4 8C84000C */  lw    $a0, 0xc($a0)
/* 1958A8 80266FC8 1480FFF4 */  bnez  $a0, .L80266F9C
/* 1958AC 80266FCC 00000000 */   nop   
.L80266FD0:
/* 1958B0 80266FD0 03E00008 */  jr    $ra
/* 1958B4 80266FD4 00000000 */   nop   

