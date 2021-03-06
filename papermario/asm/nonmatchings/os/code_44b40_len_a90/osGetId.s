.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel osGetId
/* 045008 80069C08 27BDFF98 */  addiu $sp, $sp, -0x68
/* 04500C 80069C0C AFB00058 */  sw    $s0, 0x58($sp)
/* 045010 80069C10 00808021 */  addu  $s0, $a0, $zero
/* 045014 80069C14 AFBF0060 */  sw    $ra, 0x60($sp)
/* 045018 80069C18 AFB1005C */  sw    $s1, 0x5c($sp)
/* 04501C 80069C1C 92020065 */  lbu   $v0, 0x65($s0)
/* 045020 80069C20 10400006 */  beqz  $v0, .L80069C3C
/* 045024 80069C24 00000000 */   nop   
/* 045028 80069C28 0C01A5B4 */  jal   osPfsSelectBank
/* 04502C 80069C2C 00002821 */   addu  $a1, $zero, $zero
/* 045030 80069C30 00401821 */  addu  $v1, $v0, $zero
/* 045034 80069C34 14600062 */  bnez  $v1, .L80069DC0
/* 045038 80069C38 00000000 */   nop   
.L80069C3C:
/* 04503C 80069C3C 8E040004 */  lw    $a0, 4($s0)
/* 045040 80069C40 8E050008 */  lw    $a1, 8($s0)
/* 045044 80069C44 24060001 */  addiu $a2, $zero, 1
/* 045048 80069C48 0C01A874 */  jal   osContRamRead
/* 04504C 80069C4C 27A70010 */   addiu $a3, $sp, 0x10
/* 045050 80069C50 00401821 */  addu  $v1, $v0, $zero
/* 045054 80069C54 1460005A */  bnez  $v1, .L80069DC0
/* 045058 80069C58 27A50010 */   addiu $a1, $sp, 0x10
/* 04505C 80069C5C 27A7002C */  addiu $a3, $sp, 0x2c
/* 045060 80069C60 A7A00052 */  sh    $zero, 0x52($sp)
/* 045064 80069C64 A7A00050 */  sh    $zero, 0x50($sp)
.L80069C68:
/* 045068 80069C68 94A20000 */  lhu   $v0, ($a1)
/* 04506C 80069C6C 97A30050 */  lhu   $v1, 0x50($sp)
/* 045070 80069C70 97A40052 */  lhu   $a0, 0x52($sp)
/* 045074 80069C74 24A50002 */  addiu $a1, $a1, 2
/* 045078 80069C78 00623021 */  addu  $a2, $v1, $v0
/* 04507C 80069C7C 00021027 */  nor   $v0, $zero, $v0
/* 045080 80069C80 00822021 */  addu  $a0, $a0, $v0
/* 045084 80069C84 00A7102B */  sltu  $v0, $a1, $a3
/* 045088 80069C88 A7A60050 */  sh    $a2, 0x50($sp)
/* 04508C 80069C8C 1440FFF6 */  bnez  $v0, .L80069C68
/* 045090 80069C90 A7A40052 */   sh    $a0, 0x52($sp)
/* 045094 80069C94 97A3002C */  lhu   $v1, 0x2c($sp)
/* 045098 80069C98 30C2FFFF */  andi  $v0, $a2, 0xffff
/* 04509C 80069C9C 14620005 */  bne   $v1, $v0, .L80069CB4
/* 0450A0 80069CA0 27B10010 */   addiu $s1, $sp, 0x10
/* 0450A4 80069CA4 97A3002E */  lhu   $v1, 0x2e($sp)
/* 0450A8 80069CA8 3082FFFF */  andi  $v0, $a0, 0xffff
/* 0450AC 80069CAC 10620013 */  beq   $v1, $v0, .L80069CFC
/* 0450B0 80069CB0 00000000 */   nop   
.L80069CB4:
/* 0450B4 80069CB4 02002021 */  addu  $a0, $s0, $zero
/* 0450B8 80069CB8 0C01A6A9 */  jal   osCheckPackId
/* 0450BC 80069CBC 02202821 */   addu  $a1, $s1, $zero
/* 0450C0 80069CC0 00401821 */  addu  $v1, $v0, $zero
/* 0450C4 80069CC4 2402000A */  addiu $v0, $zero, 0xa
/* 0450C8 80069CC8 1462000A */  bne   $v1, $v0, .L80069CF4
/* 0450CC 80069CCC 02002021 */   addu  $a0, $s0, $zero
/* 0450D0 80069CD0 02202821 */  addu  $a1, $s1, $zero
/* 0450D4 80069CD4 27B10030 */  addiu $s1, $sp, 0x30
/* 0450D8 80069CD8 0C01A5EE */  jal   osRepairPackId
/* 0450DC 80069CDC 02203021 */   addu  $a2, $s1, $zero
/* 0450E0 80069CE0 00401821 */  addu  $v1, $v0, $zero
/* 0450E4 80069CE4 10600005 */  beqz  $v1, .L80069CFC
/* 0450E8 80069CE8 00000000 */   nop   
/* 0450EC 80069CEC 0801A770 */  j     .L80069DC0
/* 0450F0 80069CF0 00000000 */   nop   

.L80069CF4:
/* 0450F4 80069CF4 14600032 */  bnez  $v1, .L80069DC0
/* 0450F8 80069CF8 00601021 */   addu  $v0, $v1, $zero
.L80069CFC:
/* 0450FC 80069CFC 96220018 */  lhu   $v0, 0x18($s1)
/* 045100 80069D00 30420001 */  andi  $v0, $v0, 1
/* 045104 80069D04 1440000F */  bnez  $v0, .L80069D44
/* 045108 80069D08 02202021 */   addu  $a0, $s1, $zero
/* 04510C 80069D0C 02002021 */  addu  $a0, $s0, $zero
/* 045110 80069D10 02202821 */  addu  $a1, $s1, $zero
/* 045114 80069D14 27B10030 */  addiu $s1, $sp, 0x30
/* 045118 80069D18 0C01A5EE */  jal   osRepairPackId
/* 04511C 80069D1C 02203021 */   addu  $a2, $s1, $zero
/* 045120 80069D20 00401821 */  addu  $v1, $v0, $zero
/* 045124 80069D24 14600026 */  bnez  $v1, .L80069DC0
/* 045128 80069D28 00000000 */   nop   
/* 04512C 80069D2C 97A20048 */  lhu   $v0, 0x48($sp)
/* 045130 80069D30 30420001 */  andi  $v0, $v0, 1
/* 045134 80069D34 14400003 */  bnez  $v0, .L80069D44
/* 045138 80069D38 02202021 */   addu  $a0, $s1, $zero
/* 04513C 80069D3C 0801A770 */  j     .L80069DC0
/* 045140 80069D40 2402000B */   addiu $v0, $zero, 0xb

.L80069D44:
/* 045144 80069D44 2605000C */  addiu $a1, $s0, 0xc
/* 045148 80069D48 0C019194 */  jal   bcopy
/* 04514C 80069D4C 24060020 */   addiu $a2, $zero, 0x20
/* 045150 80069D50 8E040004 */  lw    $a0, 4($s0)
/* 045154 80069D54 8E050008 */  lw    $a1, 8($s0)
/* 045158 80069D58 9222001B */  lbu   $v0, 0x1b($s1)
/* 04515C 80069D5C 24060007 */  addiu $a2, $zero, 7
/* 045160 80069D60 AE02004C */  sw    $v0, 0x4c($s0)
/* 045164 80069D64 9223001A */  lbu   $v1, 0x1a($s1)
/* 045168 80069D68 2607002C */  addiu $a3, $s0, 0x2c
/* 04516C 80069D6C 24020010 */  addiu $v0, $zero, 0x10
/* 045170 80069D70 AE020050 */  sw    $v0, 0x50($s0)
/* 045174 80069D74 24020008 */  addiu $v0, $zero, 8
/* 045178 80069D78 AE020054 */  sw    $v0, 0x54($s0)
/* 04517C 80069D7C A2030064 */  sb    $v1, 0x64($s0)
/* 045180 80069D80 92020064 */  lbu   $v0, 0x64($s0)
/* 045184 80069D84 00031840 */  sll   $v1, $v1, 1
/* 045188 80069D88 24630003 */  addiu $v1, $v1, 3
/* 04518C 80069D8C AE030060 */  sw    $v1, 0x60($s0)
/* 045190 80069D90 92030064 */  lbu   $v1, 0x64($s0)
/* 045194 80069D94 24420001 */  addiu $v0, $v0, 1
/* 045198 80069D98 000210C0 */  sll   $v0, $v0, 3
/* 04519C 80069D9C 000318C0 */  sll   $v1, $v1, 3
/* 0451A0 80069DA0 AE020058 */  sw    $v0, 0x58($s0)
/* 0451A4 80069DA4 00431021 */  addu  $v0, $v0, $v1
/* 0451A8 80069DA8 0C01A874 */  jal   osContRamRead
/* 0451AC 80069DAC AE02005C */   sw    $v0, 0x5c($s0)
/* 0451B0 80069DB0 00401821 */  addu  $v1, $v0, $zero
/* 0451B4 80069DB4 0003102B */  sltu  $v0, $zero, $v1
/* 0451B8 80069DB8 00021023 */  negu  $v0, $v0
/* 0451BC 80069DBC 00621024 */  and   $v0, $v1, $v0
.L80069DC0:
/* 0451C0 80069DC0 8FBF0060 */  lw    $ra, 0x60($sp)
/* 0451C4 80069DC4 8FB1005C */  lw    $s1, 0x5c($sp)
/* 0451C8 80069DC8 8FB00058 */  lw    $s0, 0x58($sp)
/* 0451CC 80069DCC 03E00008 */  jr    $ra
/* 0451D0 80069DD0 27BD0068 */   addiu $sp, $sp, 0x68

