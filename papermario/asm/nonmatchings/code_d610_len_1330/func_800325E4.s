.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel func_800325E4
/* 00D9E4 800325E4 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 00D9E8 800325E8 F7BC0030 */  sdc1  $f28, 0x30($sp)
/* 00D9EC 800325EC 4486E000 */  mtc1  $a2, $f28
/* 00D9F0 800325F0 F7B60018 */  sdc1  $f22, 0x18($sp)
/* 00D9F4 800325F4 C7B60050 */  lwc1  $f22, 0x50($sp)
/* 00D9F8 800325F8 F7B40010 */  sdc1  $f20, 0x10($sp)
/* 00D9FC 800325FC 46006506 */  mov.s $f20, $f12
/* 00DA00 80032600 F7BA0028 */  sdc1  $f26, 0x28($sp)
/* 00DA04 80032604 46007686 */  mov.s $f26, $f14
/* 00DA08 80032608 F7B80020 */  sdc1  $f24, 0x20($sp)
/* 00DA0C 8003260C 4614E481 */  sub.s $f18, $f28, $f20
/* 00DA10 80032610 C7B80054 */  lwc1  $f24, 0x54($sp)
/* 00DA14 80032614 C7A0005C */  lwc1  $f0, 0x5c($sp)
/* 00DA18 80032618 461AC181 */  sub.s $f6, $f24, $f26
/* 00DA1C 8003261C F7BE0038 */  sdc1  $f30, 0x38($sp)
/* 00DA20 80032620 461A0781 */  sub.s $f30, $f0, $f26
/* 00DA24 80032624 C7A20058 */  lwc1  $f2, 0x58($sp)
/* 00DA28 80032628 46161401 */  sub.s $f16, $f2, $f22
/* 00DA2C 8003262C 4487E000 */  mtc1  $a3, $f28
/* 00DA30 80032630 00000000 */  nop   
/* 00DA34 80032634 461AE301 */  sub.s $f12, $f28, $f26
/* 00DA38 80032638 4614B701 */  sub.s $f28, $f22, $f20
/* 00DA3C 8003263C 46180381 */  sub.s $f14, $f0, $f24
/* 00DA40 80032640 E7BC0008 */  swc1  $f28, 8($sp)
/* 00DA44 80032644 46141701 */  sub.s $f28, $f2, $f20
/* 00DA48 80032648 44802000 */  mtc1  $zero, $f4
/* 00DA4C 8003264C 46009286 */  mov.s $f10, $f18
/* 00DA50 80032650 46049032 */  c.eq.s $f18, $f4
/* 00DA54 80032654 46006207 */  neg.s $f8, $f12
/* 00DA58 80032658 45000005 */  bc1f  .L80032670
/* 00DA5C 8003265C E7BC0000 */   swc1  $f28, ($sp)
/* 00DA60 80032660 46046032 */  c.eq.s $f12, $f4
/* 00DA64 80032664 00000000 */  nop   
/* 00DA68 80032668 45010086 */  bc1t  .L80032884
/* 00DA6C 8003266C 0000102D */   daddu $v0, $zero, $zero
.L80032670:
/* 00DA70 80032670 44800000 */  mtc1  $zero, $f0
/* 00DA74 80032674 00000000 */  nop   
/* 00DA78 80032678 46008032 */  c.eq.s $f16, $f0
/* 00DA7C 8003267C 00000000 */  nop   
/* 00DA80 80032680 45000005 */  bc1f  .L80032698
/* 00DA84 80032684 00000000 */   nop   
/* 00DA88 80032688 46007032 */  c.eq.s $f14, $f0
/* 00DA8C 8003268C 00000000 */  nop   
/* 00DA90 80032690 4501007C */  bc1t  .L80032884
/* 00DA94 80032694 0000102D */   daddu $v0, $zero, $zero
.L80032698:
/* 00DA98 80032698 46065002 */  mul.s $f0, $f10, $f6
/* 00DA9C 8003269C 00000000 */  nop   
/* 00DAA0 800326A0 C7BC0008 */  lwc1  $f28, 8($sp)
/* 00DAA4 800326A4 461C4082 */  mul.s $f2, $f8, $f28
/* 00DAA8 800326A8 00000000 */  nop   
/* 00DAAC 800326AC 46001180 */  add.s $f6, $f2, $f0
/* 00DAB0 800326B0 44800000 */  mtc1  $zero, $f0
/* 00DAB4 800326B4 00000000 */  nop   
/* 00DAB8 800326B8 4600303C */  c.lt.s $f6, $f0
/* 00DABC 800326BC 3C01BF80 */  lui   $at, 0xbf80
/* 00DAC0 800326C0 44812000 */  mtc1  $at, $f4
/* 00DAC4 800326C4 45010007 */  bc1t  .L800326E4
/* 00DAC8 800326C8 00000000 */   nop   
/* 00DACC 800326CC 4606003C */  c.lt.s $f0, $f6
/* 00DAD0 800326D0 00000000 */  nop   
/* 00DAD4 800326D4 45000003 */  bc1f  .L800326E4
/* 00DAD8 800326D8 46000106 */   mov.s $f4, $f0
/* 00DADC 800326DC 3C013F80 */  lui   $at, 0x3f80
/* 00DAE0 800326E0 44812000 */  mtc1  $at, $f4
.L800326E4:
/* 00DAE4 800326E4 461E5002 */  mul.s $f0, $f10, $f30
/* 00DAE8 800326E8 00000000 */  nop   
/* 00DAEC 800326EC C7BC0000 */  lwc1  $f28, ($sp)
/* 00DAF0 800326F0 461C4082 */  mul.s $f2, $f8, $f28
/* 00DAF4 800326F4 00000000 */  nop   
/* 00DAF8 800326F8 46001080 */  add.s $f2, $f2, $f0
/* 00DAFC 800326FC 44800000 */  mtc1  $zero, $f0
/* 00DB00 80032700 00000000 */  nop   
/* 00DB04 80032704 4600103C */  c.lt.s $f2, $f0
/* 00DB08 80032708 00000000 */  nop   
/* 00DB0C 8003270C 45000005 */  bc1f  .L80032724
/* 00DB10 80032710 46002186 */   mov.s $f6, $f4
/* 00DB14 80032714 3C01BF80 */  lui   $at, 0xbf80
/* 00DB18 80032718 44810000 */  mtc1  $at, $f0
/* 00DB1C 8003271C 0800C9D0 */  j     .L80032740
/* 00DB20 80032720 00000000 */   nop   

.L80032724:
/* 00DB24 80032724 4602003C */  c.lt.s $f0, $f2
/* 00DB28 80032728 00000000 */  nop   
/* 00DB2C 8003272C 45000004 */  bc1f  .L80032740
/* 00DB30 80032730 00000000 */   nop   
/* 00DB34 80032734 3C013F80 */  lui   $at, 0x3f80
/* 00DB38 80032738 44810000 */  mtc1  $at, $f0
/* 00DB3C 8003273C 00000000 */  nop   
.L80032740:
/* 00DB40 80032740 46003032 */  c.eq.s $f6, $f0
/* 00DB44 80032744 00000000 */  nop   
/* 00DB48 80032748 4501004E */  bc1t  .L80032884
/* 00DB4C 8003274C 0000102D */   daddu $v0, $zero, $zero
/* 00DB50 80032750 46009085 */  abs.s $f2, $f18
/* 00DB54 80032754 46008005 */  abs.s $f0, $f16
/* 00DB58 80032758 4602003C */  c.lt.s $f0, $f2
/* 00DB5C 8003275C 00000000 */  nop   
/* 00DB60 80032760 4500001E */  bc1f  .L800327DC
/* 00DB64 80032764 00000000 */   nop   
/* 00DB68 80032768 460CA002 */  mul.s $f0, $f20, $f12
/* 00DB6C 8003276C 00000000 */  nop   
/* 00DB70 80032770 4612D182 */  mul.s $f6, $f26, $f18
/* 00DB74 80032774 00000000 */  nop   
/* 00DB78 80032778 46189202 */  mul.s $f8, $f18, $f24
/* 00DB7C 8003277C 00000000 */  nop   
/* 00DB80 80032780 46166282 */  mul.s $f10, $f12, $f22
/* 00DB84 80032784 00000000 */  nop   
/* 00DB88 80032788 46106082 */  mul.s $f2, $f12, $f16
/* 00DB8C 8003278C 00000000 */  nop   
/* 00DB90 80032790 460E9102 */  mul.s $f4, $f18, $f14
/* 00DB94 80032794 00000000 */  nop   
/* 00DB98 80032798 46060001 */  sub.s $f0, $f0, $f6
/* 00DB9C 8003279C 46041081 */  sub.s $f2, $f2, $f4
/* 00DBA0 800327A0 46080000 */  add.s $f0, $f0, $f8
/* 00DBA4 800327A4 460A0181 */  sub.s $f6, $f0, $f10
/* 00DBA8 800327A8 46023183 */  div.s $f6, $f6, $f2
/* 00DBAC 800327AC 46068002 */  mul.s $f0, $f16, $f6
/* 00DBB0 800327B0 00000000 */  nop   
/* 00DBB4 800327B4 4600B000 */  add.s $f0, $f22, $f0
/* 00DBB8 800327B8 46140001 */  sub.s $f0, $f0, $f20
/* 00DBBC 800327BC 46120183 */  div.s $f6, $f0, $f18
/* 00DBC0 800327C0 46069002 */  mul.s $f0, $f18, $f6
/* 00DBC4 800327C4 00000000 */  nop   
/* 00DBC8 800327C8 46066082 */  mul.s $f2, $f12, $f6
/* 00DBCC 800327CC 00000000 */  nop   
/* 00DBD0 800327D0 4600A300 */  add.s $f12, $f20, $f0
/* 00DBD4 800327D4 0800CA13 */  j     .L8003284C
/* 00DBD8 800327D8 4602D180 */   add.s $f6, $f26, $f2

.L800327DC:
/* 00DBDC 800327DC 4610C002 */  mul.s $f0, $f24, $f16
/* 00DBE0 800327E0 00000000 */  nop   
/* 00DBE4 800327E4 460EA182 */  mul.s $f6, $f20, $f14
/* 00DBE8 800327E8 00000000 */  nop   
/* 00DBEC 800327EC 460EC202 */  mul.s $f8, $f24, $f14
/* 00DBF0 800327F0 00000000 */  nop   
/* 00DBF4 800327F4 4610D282 */  mul.s $f10, $f26, $f16
/* 00DBF8 800327F8 00000000 */  nop   
/* 00DBFC 800327FC 46106082 */  mul.s $f2, $f12, $f16
/* 00DC00 80032800 00000000 */  nop   
/* 00DC04 80032804 460E9102 */  mul.s $f4, $f18, $f14
/* 00DC08 80032808 00000000 */  nop   
/* 00DC0C 8003280C 46060000 */  add.s $f0, $f0, $f6
/* 00DC10 80032810 46041081 */  sub.s $f2, $f2, $f4
/* 00DC14 80032814 46080001 */  sub.s $f0, $f0, $f8
/* 00DC18 80032818 460A0181 */  sub.s $f6, $f0, $f10
/* 00DC1C 8003281C 46023183 */  div.s $f6, $f6, $f2
/* 00DC20 80032820 46069002 */  mul.s $f0, $f18, $f6
/* 00DC24 80032824 00000000 */  nop   
/* 00DC28 80032828 4600A000 */  add.s $f0, $f20, $f0
/* 00DC2C 8003282C 46160001 */  sub.s $f0, $f0, $f22
/* 00DC30 80032830 46100183 */  div.s $f6, $f0, $f16
/* 00DC34 80032834 46068002 */  mul.s $f0, $f16, $f6
/* 00DC38 80032838 00000000 */  nop   
/* 00DC3C 8003283C 46067082 */  mul.s $f2, $f14, $f6
/* 00DC40 80032840 00000000 */  nop   
/* 00DC44 80032844 4600B300 */  add.s $f12, $f22, $f0
/* 00DC48 80032848 4602C180 */  add.s $f6, $f24, $f2
.L8003284C:
/* 00DC4C 8003284C 46166081 */  sub.s $f2, $f12, $f22
/* 00DC50 80032850 46021082 */  mul.s $f2, $f2, $f2
/* 00DC54 80032854 00000000 */  nop   
/* 00DC58 80032858 46183001 */  sub.s $f0, $f6, $f24
/* 00DC5C 8003285C 8FA30060 */  lw    $v1, 0x60($sp)
/* 00DC60 80032860 46000002 */  mul.s $f0, $f0, $f0
/* 00DC64 80032864 00000000 */  nop   
/* 00DC68 80032868 E46C0000 */  swc1  $f12, ($v1)
/* 00DC6C 8003286C 8FA30064 */  lw    $v1, 0x64($sp)
/* 00DC70 80032870 E4660000 */  swc1  $f6, ($v1)
/* 00DC74 80032874 46001080 */  add.s $f2, $f2, $f0
/* 00DC78 80032878 8FA30068 */  lw    $v1, 0x68($sp)
/* 00DC7C 8003287C 24020001 */  addiu $v0, $zero, 1
/* 00DC80 80032880 E4620000 */  swc1  $f2, ($v1)
.L80032884:
/* 00DC84 80032884 D7BE0038 */  ldc1  $f30, 0x38($sp)
/* 00DC88 80032888 D7BC0030 */  ldc1  $f28, 0x30($sp)
/* 00DC8C 8003288C D7BA0028 */  ldc1  $f26, 0x28($sp)
/* 00DC90 80032890 D7B80020 */  ldc1  $f24, 0x20($sp)
/* 00DC94 80032894 D7B60018 */  ldc1  $f22, 0x18($sp)
/* 00DC98 80032898 D7B40010 */  ldc1  $f20, 0x10($sp)
/* 00DC9C 8003289C 03E00008 */  jr    $ra
/* 00DCA0 800328A0 27BD0040 */   addiu $sp, $sp, 0x40

