.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel create_entity_shadow
/* 0A88CC 801121CC 44850000 */  mtc1  $a1, $f0
/* 0A88D0 801121D0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0A88D4 801121D4 AFB00010 */  sw    $s0, 0x10($sp)
/* 0A88D8 801121D8 0080802D */  daddu $s0, $a0, $zero
/* 0A88DC 801121DC AFBF0014 */  sw    $ra, 0x14($sp)
/* 0A88E0 801121E0 8E020038 */  lw    $v0, 0x38($s0)
/* 0A88E4 801121E4 44861000 */  mtc1  $a2, $f2
/* 0A88E8 801121E8 94430000 */  lhu   $v1, ($v0)
/* 0A88EC 801121EC 44872000 */  mtc1  $a3, $f4
/* 0A88F0 801121F0 30620200 */  andi  $v0, $v1, 0x200
/* 0A88F4 801121F4 10400005 */  beqz  $v0, .L8011220C
/* 0A88F8 801121F8 30620800 */   andi  $v0, $v1, 0x800
/* 0A88FC 801121FC 10400006 */  beqz  $v0, .L80112218
/* 0A8900 80112200 24040003 */   addiu $a0, $zero, 3
/* 0A8904 80112204 08044886 */  j     .L80112218
/* 0A8908 80112208 24040002 */   addiu $a0, $zero, 2

.L8011220C:
/* 0A890C 8011220C 000312C2 */  srl   $v0, $v1, 0xb
/* 0A8910 80112210 38420001 */  xori  $v0, $v0, 1
/* 0A8914 80112214 30440001 */  andi  $a0, $v0, 1
.L80112218:
/* 0A8918 80112218 44050000 */  mfc1  $a1, $f0
/* 0A891C 8011221C 44061000 */  mfc1  $a2, $f2
/* 0A8920 80112220 44072000 */  mfc1  $a3, $f4
/* 0A8924 80112224 0C044898 */  jal   create_shadow_type
/* 0A8928 80112228 00000000 */   nop   
/* 0A892C 8011222C 00022400 */  sll   $a0, $v0, 0x10
/* 0A8930 80112230 00042403 */  sra   $a0, $a0, 0x10
/* 0A8934 80112234 0C044181 */  jal   get_shadow_by_index
/* 0A8938 80112238 A6020016 */   sh    $v0, 0x16($s0)
/* 0A893C 8011223C 8C430000 */  lw    $v1, ($v0)
/* 0A8940 80112240 3C0400C0 */  lui   $a0, 0xc0
/* 0A8944 80112244 00641825 */  or    $v1, $v1, $a0
/* 0A8948 80112248 AC430000 */  sw    $v1, ($v0)
/* 0A894C 8011224C 86020016 */  lh    $v0, 0x16($s0)
/* 0A8950 80112250 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0A8954 80112254 8FB00010 */  lw    $s0, 0x10($sp)
/* 0A8958 80112258 03E00008 */  jr    $ra
/* 0A895C 8011225C 27BD0018 */   addiu $sp, $sp, 0x18

