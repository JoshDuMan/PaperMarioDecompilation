.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel guLookAtHiliteF
/* 03DCC0 800628C0 27BDFF88 */  addiu $sp, $sp, -0x78
/* 03DCC4 800628C4 F7BE0070 */  sdc1  $f30, 0x70($sp)
/* 03DCC8 800628C8 C7BE009C */  lwc1  $f30, 0x9c($sp)
/* 03DCCC 800628CC AFB50034 */  sw    $s5, 0x34($sp)
/* 03DCD0 800628D0 8FB500A0 */  lw    $s5, 0xa0($sp)
/* 03DCD4 800628D4 F7BC0068 */  sdc1  $f28, 0x68($sp)
/* 03DCD8 800628D8 C7BC00A4 */  lwc1  $f28, 0xa4($sp)
/* 03DCDC 800628DC F7B40048 */  sdc1  $f20, 0x48($sp)
/* 03DCE0 800628E0 C7B40090 */  lwc1  $f20, 0x90($sp)
/* 03DCE4 800628E4 F7B60050 */  sdc1  $f22, 0x50($sp)
/* 03DCE8 800628E8 C7B60094 */  lwc1  $f22, 0x94($sp)
/* 03DCEC 800628EC F7B80058 */  sdc1  $f24, 0x58($sp)
/* 03DCF0 800628F0 C7B80098 */  lwc1  $f24, 0x98($sp)
/* 03DCF4 800628F4 AFB10024 */  sw    $s1, 0x24($sp)
/* 03DCF8 800628F8 00808821 */  addu  $s1, $a0, $zero
/* 03DCFC 800628FC AFB00020 */  sw    $s0, 0x20($sp)
/* 03DD00 80062900 00A08021 */  addu  $s0, $a1, $zero
/* 03DD04 80062904 AFBF0044 */  sw    $ra, 0x44($sp)
/* 03DD08 80062908 AFBE0040 */  sw    $fp, 0x40($sp)
/* 03DD0C 8006290C AFB7003C */  sw    $s7, 0x3c($sp)
/* 03DD10 80062910 AFB60038 */  sw    $s6, 0x38($sp)
/* 03DD14 80062914 AFB40030 */  sw    $s4, 0x30($sp)
/* 03DD18 80062918 AFB3002C */  sw    $s3, 0x2c($sp)
/* 03DD1C 8006291C AFB20028 */  sw    $s2, 0x28($sp)
/* 03DD20 80062920 F7BA0060 */  sdc1  $f26, 0x60($sp)
/* 03DD24 80062924 AFA60014 */  sw    $a2, 0x14($sp)
/* 03DD28 80062928 0C019D28 */  jal   guMtxIdentF
/* 03DD2C 8006292C AFA7001C */   sw    $a3, 0x1c($sp)
/* 03DD30 80062930 C7B00088 */  lwc1  $f16, 0x88($sp)
/* 03DD34 80062934 4610B401 */  sub.s $f16, $f22, $f16
/* 03DD38 80062938 C7AE001C */  lwc1  $f14, 0x1c($sp)
/* 03DD3C 8006293C 44178000 */  mfc1  $s7, $f16
/* 03DD40 80062940 460EA501 */  sub.s $f20, $f20, $f14
/* 03DD44 80062944 44977000 */  mtc1  $s7, $f14
/* 03DD48 80062948 00000000 */  nop   
/* 03DD4C 8006294C 460E8102 */  mul.s $f4, $f16, $f14
/* 03DD50 80062950 C7B0008C */  lwc1  $f16, 0x8c($sp)
/* 03DD54 80062954 4610C401 */  sub.s $f16, $f24, $f16
/* 03DD58 80062958 4614A002 */  mul.s $f0, $f20, $f20
/* 03DD5C 8006295C 44168000 */  mfc1  $s6, $f16
/* 03DD60 80062960 00000000 */  nop   
/* 03DD64 80062964 44967000 */  mtc1  $s6, $f14
/* 03DD68 80062968 00000000 */  nop   
/* 03DD6C 8006296C 460E8082 */  mul.s $f2, $f16, $f14
/* 03DD70 80062970 46040000 */  add.s $f0, $f0, $f4
/* 03DD74 80062974 46020300 */  add.s $f12, $f0, $f2
/* 03DD78 80062978 46006084 */  sqrt.s $f2, $f12
/* 03DD7C 8006297C 46021032 */  c.eq.s $f2, $f2
/* 03DD80 80062980 441EA000 */  mfc1  $fp, $f20
/* 03DD84 80062984 45010004 */  bc1t  .L80062998
/* 03DD88 80062988 00000000 */   nop   
/* 03DD8C 8006298C 0C0187BC */  jal   sqrtf
/* 03DD90 80062990 00000000 */   nop   
/* 03DD94 80062994 46000086 */  mov.s $f2, $f0
.L80062998:
/* 03DD98 80062998 3C01800A */  lui   $at, 0x800a
/* 03DD9C 8006299C D4209B70 */  ldc1  $f0, -0x6490($at)
/* 03DDA0 800629A0 460010A1 */  cvt.d.s $f2, $f2
/* 03DDA4 800629A4 46220003 */  div.d $f0, $f0, $f2
/* 03DDA8 800629A8 449E8000 */  mtc1  $fp, $f16
/* 03DDAC 800629AC 46200020 */  cvt.s.d $f0, $f0
/* 03DDB0 800629B0 46008402 */  mul.s $f16, $f16, $f0
/* 03DDB4 800629B4 441E8000 */  mfc1  $fp, $f16
/* 03DDB8 800629B8 44978000 */  mtc1  $s7, $f16
/* 03DDBC 800629BC 00000000 */  nop   
/* 03DDC0 800629C0 46008402 */  mul.s $f16, $f16, $f0
/* 03DDC4 800629C4 44967000 */  mtc1  $s6, $f14
/* 03DDC8 800629C8 00000000 */  nop   
/* 03DDCC 800629CC 46007382 */  mul.s $f14, $f14, $f0
/* 03DDD0 800629D0 44178000 */  mfc1  $s7, $f16
/* 03DDD4 800629D4 44958000 */  mtc1  $s5, $f16
/* 03DDD8 800629D8 00000000 */  nop   
/* 03DDDC 800629DC 460E8102 */  mul.s $f4, $f16, $f14
/* 03DDE0 800629E0 44167000 */  mfc1  $s6, $f14
/* 03DDE4 800629E4 44977000 */  mtc1  $s7, $f14
/* 03DDE8 800629E8 00000000 */  nop   
/* 03DDEC 800629EC 460EE002 */  mul.s $f0, $f28, $f14
/* 03DDF0 800629F0 449E8000 */  mtc1  $fp, $f16
/* 03DDF4 800629F4 00000000 */  nop   
/* 03DDF8 800629F8 4610E202 */  mul.s $f8, $f28, $f16
/* 03DDFC 800629FC 44967000 */  mtc1  $s6, $f14
/* 03DE00 80062A00 00000000 */  nop   
/* 03DE04 80062A04 460EF082 */  mul.s $f2, $f30, $f14
/* 03DE08 80062A08 44978000 */  mtc1  $s7, $f16
/* 03DE0C 80062A0C 00000000 */  nop   
/* 03DE10 80062A10 4610F282 */  mul.s $f10, $f30, $f16
/* 03DE14 80062A14 44957000 */  mtc1  $s5, $f14
/* 03DE18 80062A18 449E8000 */  mtc1  $fp, $f16
/* 03DE1C 80062A1C 00000000 */  nop   
/* 03DE20 80062A20 46107182 */  mul.s $f6, $f14, $f16
/* 03DE24 80062A24 46002101 */  sub.s $f4, $f4, $f0
/* 03DE28 80062A28 46042002 */  mul.s $f0, $f4, $f4
/* 03DE2C 80062A2C 46024201 */  sub.s $f8, $f8, $f2
/* 03DE30 80062A30 44122000 */  mfc1  $s2, $f4
/* 03DE34 80062A34 46084102 */  mul.s $f4, $f8, $f8
/* 03DE38 80062A38 46065281 */  sub.s $f10, $f10, $f6
/* 03DE3C 80062A3C 460A5082 */  mul.s $f2, $f10, $f10
/* 03DE40 80062A40 46040000 */  add.s $f0, $f0, $f4
/* 03DE44 80062A44 46020300 */  add.s $f12, $f0, $f2
/* 03DE48 80062A48 46006004 */  sqrt.s $f0, $f12
/* 03DE4C 80062A4C 46000032 */  c.eq.s $f0, $f0
/* 03DE50 80062A50 44134000 */  mfc1  $s3, $f8
/* 03DE54 80062A54 44145000 */  mfc1  $s4, $f10
/* 03DE58 80062A58 45010003 */  bc1t  .L80062A68
/* 03DE5C 80062A5C 00000000 */   nop   
/* 03DE60 80062A60 0C0187BC */  jal   sqrtf
/* 03DE64 80062A64 00000000 */   nop   
.L80062A68:
/* 03DE68 80062A68 3C01800A */  lui   $at, 0x800a
/* 03DE6C 80062A6C D43A9B78 */  ldc1  $f26, -0x6488($at)
/* 03DE70 80062A70 46000021 */  cvt.d.s $f0, $f0
/* 03DE74 80062A74 4620D003 */  div.d $f0, $f26, $f0
/* 03DE78 80062A78 44927000 */  mtc1  $s2, $f14
/* 03DE7C 80062A7C 46200020 */  cvt.s.d $f0, $f0
/* 03DE80 80062A80 46007382 */  mul.s $f14, $f14, $f0
/* 03DE84 80062A84 44127000 */  mfc1  $s2, $f14
/* 03DE88 80062A88 44937000 */  mtc1  $s3, $f14
/* 03DE8C 80062A8C 00000000 */  nop   
/* 03DE90 80062A90 46007382 */  mul.s $f14, $f14, $f0
/* 03DE94 80062A94 44948000 */  mtc1  $s4, $f16
/* 03DE98 80062A98 00000000 */  nop   
/* 03DE9C 80062A9C 46008402 */  mul.s $f16, $f16, $f0
/* 03DEA0 80062AA0 44137000 */  mfc1  $s3, $f14
/* 03DEA4 80062AA4 44977000 */  mtc1  $s7, $f14
/* 03DEA8 80062AA8 00000000 */  nop   
/* 03DEAC 80062AAC 46107102 */  mul.s $f4, $f14, $f16
/* 03DEB0 80062AB0 44148000 */  mfc1  $s4, $f16
/* 03DEB4 80062AB4 44968000 */  mtc1  $s6, $f16
/* 03DEB8 80062AB8 44937000 */  mtc1  $s3, $f14
/* 03DEBC 80062ABC 00000000 */  nop   
/* 03DEC0 80062AC0 460E8002 */  mul.s $f0, $f16, $f14
/* 03DEC4 80062AC4 44927000 */  mtc1  $s2, $f14
/* 03DEC8 80062AC8 00000000 */  nop   
/* 03DECC 80062ACC 460E8202 */  mul.s $f8, $f16, $f14
/* 03DED0 80062AD0 449E8000 */  mtc1  $fp, $f16
/* 03DED4 80062AD4 44947000 */  mtc1  $s4, $f14
/* 03DED8 80062AD8 00000000 */  nop   
/* 03DEDC 80062ADC 460E8082 */  mul.s $f2, $f16, $f14
/* 03DEE0 80062AE0 44937000 */  mtc1  $s3, $f14
/* 03DEE4 80062AE4 00000000 */  nop   
/* 03DEE8 80062AE8 460E8282 */  mul.s $f10, $f16, $f14
/* 03DEEC 80062AEC 44978000 */  mtc1  $s7, $f16
/* 03DEF0 80062AF0 44927000 */  mtc1  $s2, $f14
/* 03DEF4 80062AF4 00000000 */  nop   
/* 03DEF8 80062AF8 460E8182 */  mul.s $f6, $f16, $f14
/* 03DEFC 80062AFC 46002781 */  sub.s $f30, $f4, $f0
/* 03DF00 80062B00 461EF002 */  mul.s $f0, $f30, $f30
/* 03DF04 80062B04 46024201 */  sub.s $f8, $f8, $f2
/* 03DF08 80062B08 46084102 */  mul.s $f4, $f8, $f8
/* 03DF0C 80062B0C 46065701 */  sub.s $f28, $f10, $f6
/* 03DF10 80062B10 461CE082 */  mul.s $f2, $f28, $f28
/* 03DF14 80062B14 46040000 */  add.s $f0, $f0, $f4
/* 03DF18 80062B18 46020300 */  add.s $f12, $f0, $f2
/* 03DF1C 80062B1C 46006184 */  sqrt.s $f6, $f12
/* 03DF20 80062B20 46063032 */  c.eq.s $f6, $f6
/* 03DF24 80062B24 44154000 */  mfc1  $s5, $f8
/* 03DF28 80062B28 45010004 */  bc1t  .L80062B3C
/* 03DF2C 80062B2C 00000000 */   nop   
/* 03DF30 80062B30 0C0187BC */  jal   sqrtf
/* 03DF34 80062B34 00000000 */   nop   
/* 03DF38 80062B38 46000186 */  mov.s $f6, $f0
.L80062B3C:
/* 03DF3C 80062B3C C7B000A8 */  lwc1  $f16, 0xa8($sp)
/* 03DF40 80062B40 C7AE00A8 */  lwc1  $f14, 0xa8($sp)
/* 03DF44 80062B44 460E8002 */  mul.s $f0, $f16, $f14
/* 03DF48 80062B48 C7B000AC */  lwc1  $f16, 0xac($sp)
/* 03DF4C 80062B4C C7AE00AC */  lwc1  $f14, 0xac($sp)
/* 03DF50 80062B50 460E8082 */  mul.s $f2, $f16, $f14
/* 03DF54 80062B54 C7B000B0 */  lwc1  $f16, 0xb0($sp)
/* 03DF58 80062B58 C7AE00B0 */  lwc1  $f14, 0xb0($sp)
/* 03DF5C 80062B5C 460E8102 */  mul.s $f4, $f16, $f14
/* 03DF60 80062B60 46020000 */  add.s $f0, $f0, $f2
/* 03DF64 80062B64 46040300 */  add.s $f12, $f0, $f4
/* 03DF68 80062B68 46006084 */  sqrt.s $f2, $f12
/* 03DF6C 80062B6C 46003021 */  cvt.d.s $f0, $f6
/* 03DF70 80062B70 4620D003 */  div.d $f0, $f26, $f0
/* 03DF74 80062B74 46200020 */  cvt.s.d $f0, $f0
/* 03DF78 80062B78 4600F782 */  mul.s $f30, $f30, $f0
/* 03DF7C 80062B7C 44958000 */  mtc1  $s5, $f16
/* 03DF80 80062B80 00000000 */  nop   
/* 03DF84 80062B84 46008402 */  mul.s $f16, $f16, $f0
/* 03DF88 80062B88 46021032 */  c.eq.s $f2, $f2
/* 03DF8C 80062B8C 44158000 */  mfc1  $s5, $f16
/* 03DF90 80062B90 00000000 */  nop   
/* 03DF94 80062B94 45010004 */  bc1t  .L80062BA8
/* 03DF98 80062B98 4600E702 */   mul.s $f28, $f28, $f0
/* 03DF9C 80062B9C 0C0187BC */  jal   sqrtf
/* 03DFA0 80062BA0 00000000 */   nop   
/* 03DFA4 80062BA4 46000086 */  mov.s $f2, $f0
.L80062BA8:
/* 03DFA8 80062BA8 46001021 */  cvt.d.s $f0, $f2
/* 03DFAC 80062BAC 4620D003 */  div.d $f0, $f26, $f0
/* 03DFB0 80062BB0 C7AE00A8 */  lwc1  $f14, 0xa8($sp)
/* 03DFB4 80062BB4 46200020 */  cvt.s.d $f0, $f0
/* 03DFB8 80062BB8 46007382 */  mul.s $f14, $f14, $f0
/* 03DFBC 80062BBC C7B000AC */  lwc1  $f16, 0xac($sp)
/* 03DFC0 80062BC0 46008402 */  mul.s $f16, $f16, $f0
/* 03DFC4 80062BC4 E7AE00A8 */  swc1  $f14, 0xa8($sp)
/* 03DFC8 80062BC8 C7AE00B0 */  lwc1  $f14, 0xb0($sp)
/* 03DFCC 80062BCC 46007382 */  mul.s $f14, $f14, $f0
/* 03DFD0 80062BD0 E7B000AC */  swc1  $f16, 0xac($sp)
/* 03DFD4 80062BD4 C7B000A8 */  lwc1  $f16, 0xa8($sp)
/* 03DFD8 80062BD8 E7AE00B0 */  swc1  $f14, 0xb0($sp)
/* 03DFDC 80062BDC 449E7000 */  mtc1  $fp, $f14
/* 03DFE0 80062BE0 00000000 */  nop   
/* 03DFE4 80062BE4 460E8600 */  add.s $f24, $f16, $f14
/* 03DFE8 80062BE8 C7B000AC */  lwc1  $f16, 0xac($sp)
/* 03DFEC 80062BEC 4618C002 */  mul.s $f0, $f24, $f24
/* 03DFF0 80062BF0 44977000 */  mtc1  $s7, $f14
/* 03DFF4 80062BF4 00000000 */  nop   
/* 03DFF8 80062BF8 460E8500 */  add.s $f20, $f16, $f14
/* 03DFFC 80062BFC C7B000B0 */  lwc1  $f16, 0xb0($sp)
/* 03E000 80062C00 4614A102 */  mul.s $f4, $f20, $f20
/* 03E004 80062C04 44967000 */  mtc1  $s6, $f14
/* 03E008 80062C08 00000000 */  nop   
/* 03E00C 80062C0C 460E8580 */  add.s $f22, $f16, $f14
/* 03E010 80062C10 4616B082 */  mul.s $f2, $f22, $f22
/* 03E014 80062C14 46040000 */  add.s $f0, $f0, $f4
/* 03E018 80062C18 46020300 */  add.s $f12, $f0, $f2
/* 03E01C 80062C1C 46006084 */  sqrt.s $f2, $f12
/* 03E020 80062C20 46021032 */  c.eq.s $f2, $f2
/* 03E024 80062C24 00000000 */  nop   
/* 03E028 80062C28 45010004 */  bc1t  .L80062C3C
/* 03E02C 80062C2C 00000000 */   nop   
/* 03E030 80062C30 0C0187BC */  jal   sqrtf
/* 03E034 80062C34 00000000 */   nop   
/* 03E038 80062C38 46000086 */  mov.s $f2, $f0
.L80062C3C:
/* 03E03C 80062C3C 3C01800A */  lui   $at, 0x800a
/* 03E040 80062C40 D4209B80 */  ldc1  $f0, -0x6480($at)
/* 03E044 80062C44 460010A1 */  cvt.d.s $f2, $f2
/* 03E048 80062C48 4622003C */  c.lt.d $f0, $f2
/* 03E04C 80062C4C 00000000 */  nop   
/* 03E050 80062C50 45000035 */  bc1f  .L80062D28
/* 03E054 80062C54 00000000 */   nop   
/* 03E058 80062C58 4622D003 */  div.d $f0, $f26, $f2
/* 03E05C 80062C5C 46200020 */  cvt.s.d $f0, $f0
/* 03E060 80062C60 4600C602 */  mul.s $f24, $f24, $f0
/* 03E064 80062C64 00000000 */  nop   
/* 03E068 80062C68 4600A502 */  mul.s $f20, $f20, $f0
/* 03E06C 80062C6C 00000000 */  nop   
/* 03E070 80062C70 4600B582 */  mul.s $f22, $f22, $f0
/* 03E074 80062C74 44928000 */  mtc1  $s2, $f16
/* 03E078 80062C78 00000000 */  nop   
/* 03E07C 80062C7C 4610C002 */  mul.s $f0, $f24, $f16
/* 03E080 80062C80 44937000 */  mtc1  $s3, $f14
/* 03E084 80062C84 00000000 */  nop   
/* 03E088 80062C88 460EA102 */  mul.s $f4, $f20, $f14
/* 03E08C 80062C8C 00000000 */  nop   
/* 03E090 80062C90 461EC082 */  mul.s $f2, $f24, $f30
/* 03E094 80062C94 44948000 */  mtc1  $s4, $f16
/* 03E098 80062C98 00000000 */  nop   
/* 03E09C 80062C9C 4610B182 */  mul.s $f6, $f22, $f16
/* 03E0A0 80062CA0 44957000 */  mtc1  $s5, $f14
/* 03E0A4 80062CA4 00000000 */  nop   
/* 03E0A8 80062CA8 460EA202 */  mul.s $f8, $f20, $f14
/* 03E0AC 80062CAC 46040000 */  add.s $f0, $f0, $f4
/* 03E0B0 80062CB0 461CB282 */  mul.s $f10, $f22, $f28
/* 03E0B4 80062CB4 46060000 */  add.s $f0, $f0, $f6
/* 03E0B8 80062CB8 C7A400C0 */  lwc1  $f4, 0xc0($sp)
/* 03E0BC 80062CBC 46802120 */  cvt.s.w $f4, $f4
/* 03E0C0 80062CC0 46081080 */  add.s $f2, $f2, $f8
/* 03E0C4 80062CC4 46040002 */  mul.s $f0, $f0, $f4
/* 03E0C8 80062CC8 460A1080 */  add.s $f2, $f2, $f10
/* 03E0CC 80062CCC C7A400C4 */  lwc1  $f4, 0xc4($sp)
/* 03E0D0 80062CD0 46802120 */  cvt.s.w $f4, $f4
/* 03E0D4 80062CD4 46041082 */  mul.s $f2, $f2, $f4
/* 03E0D8 80062CD8 46000000 */  add.s $f0, $f0, $f0
/* 03E0DC 80062CDC 8FA300C0 */  lw    $v1, 0xc0($sp)
/* 03E0E0 80062CE0 46021080 */  add.s $f2, $f2, $f2
/* 03E0E4 80062CE4 00031080 */  sll   $v0, $v1, 2
/* 03E0E8 80062CE8 8FA300C4 */  lw    $v1, 0xc4($sp)
/* 03E0EC 80062CEC 44822000 */  mtc1  $v0, $f4
/* 03E0F0 80062CF0 00000000 */  nop   
/* 03E0F4 80062CF4 46802120 */  cvt.s.w $f4, $f4
/* 03E0F8 80062CF8 46002100 */  add.s $f4, $f4, $f0
/* 03E0FC 80062CFC 00031080 */  sll   $v0, $v1, 2
/* 03E100 80062D00 8FA30014 */  lw    $v1, 0x14($sp)
/* 03E104 80062D04 44820000 */  mtc1  $v0, $f0
/* 03E108 80062D08 00000000 */  nop   
/* 03E10C 80062D0C 46800020 */  cvt.s.w $f0, $f0
/* 03E110 80062D10 46020000 */  add.s $f0, $f0, $f2
/* 03E114 80062D14 4600208D */  trunc.w.s $f2, $f4
/* 03E118 80062D18 E4620000 */  swc1  $f2, ($v1)
/* 03E11C 80062D1C 4600008D */  trunc.w.s $f2, $f0
/* 03E120 80062D20 08018B52 */  j     .L80062D48
/* 03E124 80062D24 E4620004 */   swc1  $f2, 4($v1)

.L80062D28:
/* 03E128 80062D28 8FA300C0 */  lw    $v1, 0xc0($sp)
/* 03E12C 80062D2C 00031040 */  sll   $v0, $v1, 1
/* 03E130 80062D30 8FA30014 */  lw    $v1, 0x14($sp)
/* 03E134 80062D34 AC620000 */  sw    $v0, ($v1)
/* 03E138 80062D38 8FA300C4 */  lw    $v1, 0xc4($sp)
/* 03E13C 80062D3C 00031040 */  sll   $v0, $v1, 1
/* 03E140 80062D40 8FA30014 */  lw    $v1, 0x14($sp)
/* 03E144 80062D44 AC620004 */  sw    $v0, 4($v1)
.L80062D48:
/* 03E148 80062D48 C7AE00B4 */  lwc1  $f14, 0xb4($sp)
/* 03E14C 80062D4C C7B000B4 */  lwc1  $f16, 0xb4($sp)
/* 03E150 80062D50 46107002 */  mul.s $f0, $f14, $f16
/* 03E154 80062D54 C7AE00B8 */  lwc1  $f14, 0xb8($sp)
/* 03E158 80062D58 C7B000B8 */  lwc1  $f16, 0xb8($sp)
/* 03E15C 80062D5C 46107082 */  mul.s $f2, $f14, $f16
/* 03E160 80062D60 C7AE00BC */  lwc1  $f14, 0xbc($sp)
/* 03E164 80062D64 C7B000BC */  lwc1  $f16, 0xbc($sp)
/* 03E168 80062D68 46107102 */  mul.s $f4, $f14, $f16
/* 03E16C 80062D6C 46020000 */  add.s $f0, $f0, $f2
/* 03E170 80062D70 46040300 */  add.s $f12, $f0, $f4
/* 03E174 80062D74 46006004 */  sqrt.s $f0, $f12
/* 03E178 80062D78 46000032 */  c.eq.s $f0, $f0
/* 03E17C 80062D7C 00000000 */  nop   
/* 03E180 80062D80 45010003 */  bc1t  .L80062D90
/* 03E184 80062D84 00000000 */   nop   
/* 03E188 80062D88 0C0187BC */  jal   sqrtf
/* 03E18C 80062D8C 00000000 */   nop   
.L80062D90:
/* 03E190 80062D90 3C01800A */  lui   $at, 0x800a
/* 03E194 80062D94 D43A9B88 */  ldc1  $f26, -0x6478($at)
/* 03E198 80062D98 46000021 */  cvt.d.s $f0, $f0
/* 03E19C 80062D9C 4620D003 */  div.d $f0, $f26, $f0
/* 03E1A0 80062DA0 C7AE00B4 */  lwc1  $f14, 0xb4($sp)
/* 03E1A4 80062DA4 46200020 */  cvt.s.d $f0, $f0
/* 03E1A8 80062DA8 46007382 */  mul.s $f14, $f14, $f0
/* 03E1AC 80062DAC C7B000B8 */  lwc1  $f16, 0xb8($sp)
/* 03E1B0 80062DB0 46008402 */  mul.s $f16, $f16, $f0
/* 03E1B4 80062DB4 E7AE00B4 */  swc1  $f14, 0xb4($sp)
/* 03E1B8 80062DB8 C7AE00BC */  lwc1  $f14, 0xbc($sp)
/* 03E1BC 80062DBC 46007382 */  mul.s $f14, $f14, $f0
/* 03E1C0 80062DC0 E7B000B8 */  swc1  $f16, 0xb8($sp)
/* 03E1C4 80062DC4 C7B000B4 */  lwc1  $f16, 0xb4($sp)
/* 03E1C8 80062DC8 E7AE00BC */  swc1  $f14, 0xbc($sp)
/* 03E1CC 80062DCC 449E7000 */  mtc1  $fp, $f14
/* 03E1D0 80062DD0 00000000 */  nop   
/* 03E1D4 80062DD4 460E8600 */  add.s $f24, $f16, $f14
/* 03E1D8 80062DD8 C7B000B8 */  lwc1  $f16, 0xb8($sp)
/* 03E1DC 80062DDC 4618C002 */  mul.s $f0, $f24, $f24
/* 03E1E0 80062DE0 44977000 */  mtc1  $s7, $f14
/* 03E1E4 80062DE4 00000000 */  nop   
/* 03E1E8 80062DE8 460E8500 */  add.s $f20, $f16, $f14
/* 03E1EC 80062DEC C7B000BC */  lwc1  $f16, 0xbc($sp)
/* 03E1F0 80062DF0 4614A102 */  mul.s $f4, $f20, $f20
/* 03E1F4 80062DF4 44967000 */  mtc1  $s6, $f14
/* 03E1F8 80062DF8 00000000 */  nop   
/* 03E1FC 80062DFC 460E8580 */  add.s $f22, $f16, $f14
/* 03E200 80062E00 4616B082 */  mul.s $f2, $f22, $f22
/* 03E204 80062E04 46040000 */  add.s $f0, $f0, $f4
/* 03E208 80062E08 46020300 */  add.s $f12, $f0, $f2
/* 03E20C 80062E0C 46006084 */  sqrt.s $f2, $f12
/* 03E210 80062E10 46021032 */  c.eq.s $f2, $f2
/* 03E214 80062E14 00000000 */  nop   
/* 03E218 80062E18 45010004 */  bc1t  .L80062E2C
/* 03E21C 80062E1C 00000000 */   nop   
/* 03E220 80062E20 0C0187BC */  jal   sqrtf
/* 03E224 80062E24 00000000 */   nop   
/* 03E228 80062E28 46000086 */  mov.s $f2, $f0
.L80062E2C:
/* 03E22C 80062E2C 3C01800A */  lui   $at, 0x800a
/* 03E230 80062E30 D4209B90 */  ldc1  $f0, -0x6470($at)
/* 03E234 80062E34 460010A1 */  cvt.d.s $f2, $f2
/* 03E238 80062E38 4622003C */  c.lt.d $f0, $f2
/* 03E23C 80062E3C 00000000 */  nop   
/* 03E240 80062E40 45000035 */  bc1f  .L80062F18
/* 03E244 80062E44 00000000 */   nop   
/* 03E248 80062E48 4622D003 */  div.d $f0, $f26, $f2
/* 03E24C 80062E4C 46200020 */  cvt.s.d $f0, $f0
/* 03E250 80062E50 4600C602 */  mul.s $f24, $f24, $f0
/* 03E254 80062E54 00000000 */  nop   
/* 03E258 80062E58 4600A502 */  mul.s $f20, $f20, $f0
/* 03E25C 80062E5C 00000000 */  nop   
/* 03E260 80062E60 4600B582 */  mul.s $f22, $f22, $f0
/* 03E264 80062E64 44928000 */  mtc1  $s2, $f16
/* 03E268 80062E68 00000000 */  nop   
/* 03E26C 80062E6C 4610C002 */  mul.s $f0, $f24, $f16
/* 03E270 80062E70 44937000 */  mtc1  $s3, $f14
/* 03E274 80062E74 00000000 */  nop   
/* 03E278 80062E78 460EA102 */  mul.s $f4, $f20, $f14
/* 03E27C 80062E7C 00000000 */  nop   
/* 03E280 80062E80 461EC082 */  mul.s $f2, $f24, $f30
/* 03E284 80062E84 44948000 */  mtc1  $s4, $f16
/* 03E288 80062E88 00000000 */  nop   
/* 03E28C 80062E8C 4610B182 */  mul.s $f6, $f22, $f16
/* 03E290 80062E90 44957000 */  mtc1  $s5, $f14
/* 03E294 80062E94 00000000 */  nop   
/* 03E298 80062E98 460EA202 */  mul.s $f8, $f20, $f14
/* 03E29C 80062E9C 46040000 */  add.s $f0, $f0, $f4
/* 03E2A0 80062EA0 461CB282 */  mul.s $f10, $f22, $f28
/* 03E2A4 80062EA4 46060000 */  add.s $f0, $f0, $f6
/* 03E2A8 80062EA8 C7A400C0 */  lwc1  $f4, 0xc0($sp)
/* 03E2AC 80062EAC 46802120 */  cvt.s.w $f4, $f4
/* 03E2B0 80062EB0 46081080 */  add.s $f2, $f2, $f8
/* 03E2B4 80062EB4 46040002 */  mul.s $f0, $f0, $f4
/* 03E2B8 80062EB8 460A1080 */  add.s $f2, $f2, $f10
/* 03E2BC 80062EBC C7A400C4 */  lwc1  $f4, 0xc4($sp)
/* 03E2C0 80062EC0 46802120 */  cvt.s.w $f4, $f4
/* 03E2C4 80062EC4 46041082 */  mul.s $f2, $f2, $f4
/* 03E2C8 80062EC8 46000000 */  add.s $f0, $f0, $f0
/* 03E2CC 80062ECC 8FA300C0 */  lw    $v1, 0xc0($sp)
/* 03E2D0 80062ED0 46021080 */  add.s $f2, $f2, $f2
/* 03E2D4 80062ED4 00031080 */  sll   $v0, $v1, 2
/* 03E2D8 80062ED8 8FA300C4 */  lw    $v1, 0xc4($sp)
/* 03E2DC 80062EDC 44822000 */  mtc1  $v0, $f4
/* 03E2E0 80062EE0 00000000 */  nop   
/* 03E2E4 80062EE4 46802120 */  cvt.s.w $f4, $f4
/* 03E2E8 80062EE8 46002100 */  add.s $f4, $f4, $f0
/* 03E2EC 80062EEC 00031080 */  sll   $v0, $v1, 2
/* 03E2F0 80062EF0 8FA30014 */  lw    $v1, 0x14($sp)
/* 03E2F4 80062EF4 44820000 */  mtc1  $v0, $f0
/* 03E2F8 80062EF8 00000000 */  nop   
/* 03E2FC 80062EFC 46800020 */  cvt.s.w $f0, $f0
/* 03E300 80062F00 46020000 */  add.s $f0, $f0, $f2
/* 03E304 80062F04 4600208D */  trunc.w.s $f2, $f4
/* 03E308 80062F08 E4620008 */  swc1  $f2, 8($v1)
/* 03E30C 80062F0C 4600008D */  trunc.w.s $f2, $f0
/* 03E310 80062F10 08018BCE */  j     .L80062F38
/* 03E314 80062F14 E462000C */   swc1  $f2, 0xc($v1)

.L80062F18:
/* 03E318 80062F18 8FA300C0 */  lw    $v1, 0xc0($sp)
/* 03E31C 80062F1C 00031040 */  sll   $v0, $v1, 1
/* 03E320 80062F20 8FA30014 */  lw    $v1, 0x14($sp)
/* 03E324 80062F24 AC620008 */  sw    $v0, 8($v1)
/* 03E328 80062F28 8FA300C4 */  lw    $v1, 0xc4($sp)
/* 03E32C 80062F2C 00031040 */  sll   $v0, $v1, 1
/* 03E330 80062F30 8FA30014 */  lw    $v1, 0x14($sp)
/* 03E334 80062F34 AC62000C */  sw    $v0, 0xc($v1)
.L80062F38:
/* 03E338 80062F38 3C014300 */  lui   $at, 0x4300
/* 03E33C 80062F3C 44810000 */  mtc1  $at, $f0
/* 03E340 80062F40 44927000 */  mtc1  $s2, $f14
/* 03E344 80062F44 00000000 */  nop   
/* 03E348 80062F48 46007082 */  mul.s $f2, $f14, $f0
/* 03E34C 80062F4C 3C0142FE */  lui   $at, 0x42fe
/* 03E350 80062F50 44810000 */  mtc1  $at, $f0
/* 03E354 80062F54 00000000 */  nop   
/* 03E358 80062F58 4600103C */  c.lt.s $f2, $f0
/* 03E35C 80062F5C 00000000 */  nop   
/* 03E360 80062F60 00000000 */  nop   
/* 03E364 80062F64 45000003 */  bc1f  .L80062F74
/* 03E368 80062F68 2402007F */   addiu $v0, $zero, 0x7f
/* 03E36C 80062F6C 4600100D */  trunc.w.s $f0, $f2
/* 03E370 80062F70 44020000 */  mfc1  $v0, $f0
.L80062F74:
/* 03E374 80062F74 3C014300 */  lui   $at, 0x4300
/* 03E378 80062F78 44810000 */  mtc1  $at, $f0
/* 03E37C 80062F7C 44938000 */  mtc1  $s3, $f16
/* 03E380 80062F80 00000000 */  nop   
/* 03E384 80062F84 46008082 */  mul.s $f2, $f16, $f0
/* 03E388 80062F88 3C0142FE */  lui   $at, 0x42fe
/* 03E38C 80062F8C 44810000 */  mtc1  $at, $f0
/* 03E390 80062F90 00000000 */  nop   
/* 03E394 80062F94 4600103C */  c.lt.s $f2, $f0
/* 03E398 80062F98 00000000 */  nop   
/* 03E39C 80062F9C 00000000 */  nop   
/* 03E3A0 80062FA0 45000005 */  bc1f  .L80062FB8
/* 03E3A4 80062FA4 A2020008 */   sb    $v0, 8($s0)
/* 03E3A8 80062FA8 4600100D */  trunc.w.s $f0, $f2
/* 03E3AC 80062FAC 44020000 */  mfc1  $v0, $f0
/* 03E3B0 80062FB0 08018BEF */  j     .L80062FBC
/* 03E3B4 80062FB4 00000000 */   nop   

.L80062FB8:
/* 03E3B8 80062FB8 2402007F */  addiu $v0, $zero, 0x7f
.L80062FBC:
/* 03E3BC 80062FBC 3C014300 */  lui   $at, 0x4300
/* 03E3C0 80062FC0 44810000 */  mtc1  $at, $f0
/* 03E3C4 80062FC4 44947000 */  mtc1  $s4, $f14
/* 03E3C8 80062FC8 00000000 */  nop   
/* 03E3CC 80062FCC 46007082 */  mul.s $f2, $f14, $f0
/* 03E3D0 80062FD0 3C0142FE */  lui   $at, 0x42fe
/* 03E3D4 80062FD4 44810000 */  mtc1  $at, $f0
/* 03E3D8 80062FD8 00000000 */  nop   
/* 03E3DC 80062FDC 4600103C */  c.lt.s $f2, $f0
/* 03E3E0 80062FE0 00000000 */  nop   
/* 03E3E4 80062FE4 00000000 */  nop   
/* 03E3E8 80062FE8 45000005 */  bc1f  .L80063000
/* 03E3EC 80062FEC A2020009 */   sb    $v0, 9($s0)
/* 03E3F0 80062FF0 4600100D */  trunc.w.s $f0, $f2
/* 03E3F4 80062FF4 44020000 */  mfc1  $v0, $f0
/* 03E3F8 80062FF8 08018C01 */  j     .L80063004
/* 03E3FC 80062FFC 00000000 */   nop   

.L80063000:
/* 03E400 80063000 2402007F */  addiu $v0, $zero, 0x7f
.L80063004:
/* 03E404 80063004 3C014300 */  lui   $at, 0x4300
/* 03E408 80063008 44810000 */  mtc1  $at, $f0
/* 03E40C 8006300C 00000000 */  nop   
/* 03E410 80063010 4600F082 */  mul.s $f2, $f30, $f0
/* 03E414 80063014 3C0142FE */  lui   $at, 0x42fe
/* 03E418 80063018 44810000 */  mtc1  $at, $f0
/* 03E41C 8006301C 00000000 */  nop   
/* 03E420 80063020 4600103C */  c.lt.s $f2, $f0
/* 03E424 80063024 00000000 */  nop   
/* 03E428 80063028 00000000 */  nop   
/* 03E42C 8006302C 45000005 */  bc1f  .L80063044
/* 03E430 80063030 A202000A */   sb    $v0, 0xa($s0)
/* 03E434 80063034 4600100D */  trunc.w.s $f0, $f2
/* 03E438 80063038 44020000 */  mfc1  $v0, $f0
/* 03E43C 8006303C 08018C12 */  j     .L80063048
/* 03E440 80063040 00000000 */   nop   

.L80063044:
/* 03E444 80063044 2402007F */  addiu $v0, $zero, 0x7f
.L80063048:
/* 03E448 80063048 3C014300 */  lui   $at, 0x4300
/* 03E44C 8006304C 44810000 */  mtc1  $at, $f0
/* 03E450 80063050 44958000 */  mtc1  $s5, $f16
/* 03E454 80063054 00000000 */  nop   
/* 03E458 80063058 46008082 */  mul.s $f2, $f16, $f0
/* 03E45C 8006305C 3C0142FE */  lui   $at, 0x42fe
/* 03E460 80063060 44810000 */  mtc1  $at, $f0
/* 03E464 80063064 00000000 */  nop   
/* 03E468 80063068 4600103C */  c.lt.s $f2, $f0
/* 03E46C 8006306C 00000000 */  nop   
/* 03E470 80063070 00000000 */  nop   
/* 03E474 80063074 45000005 */  bc1f  .L8006308C
/* 03E478 80063078 A2020018 */   sb    $v0, 0x18($s0)
/* 03E47C 8006307C 4600100D */  trunc.w.s $f0, $f2
/* 03E480 80063080 44020000 */  mfc1  $v0, $f0
/* 03E484 80063084 08018C24 */  j     .L80063090
/* 03E488 80063088 00000000 */   nop   

.L8006308C:
/* 03E48C 8006308C 2402007F */  addiu $v0, $zero, 0x7f
.L80063090:
/* 03E490 80063090 3C014300 */  lui   $at, 0x4300
/* 03E494 80063094 44810000 */  mtc1  $at, $f0
/* 03E498 80063098 00000000 */  nop   
/* 03E49C 8006309C 4600E082 */  mul.s $f2, $f28, $f0
/* 03E4A0 800630A0 3C0142FE */  lui   $at, 0x42fe
/* 03E4A4 800630A4 44810000 */  mtc1  $at, $f0
/* 03E4A8 800630A8 00000000 */  nop   
/* 03E4AC 800630AC 4600103C */  c.lt.s $f2, $f0
/* 03E4B0 800630B0 00000000 */  nop   
/* 03E4B4 800630B4 00000000 */  nop   
/* 03E4B8 800630B8 45000006 */  bc1f  .L800630D4
/* 03E4BC 800630BC A2020019 */   sb    $v0, 0x19($s0)
/* 03E4C0 800630C0 4600100D */  trunc.w.s $f0, $f2
/* 03E4C4 800630C4 44020000 */  mfc1  $v0, $f0
/* 03E4C8 800630C8 00000000 */  nop   
/* 03E4CC 800630CC 08018C37 */  j     .L800630DC
/* 03E4D0 800630D0 A202001A */   sb    $v0, 0x1a($s0)

.L800630D4:
/* 03E4D4 800630D4 2402007F */  addiu $v0, $zero, 0x7f
/* 03E4D8 800630D8 A202001A */  sb    $v0, 0x1a($s0)
.L800630DC:
/* 03E4DC 800630DC C7AE001C */  lwc1  $f14, 0x1c($sp)
/* 03E4E0 800630E0 44928000 */  mtc1  $s2, $f16
/* 03E4E4 800630E4 00000000 */  nop   
/* 03E4E8 800630E8 46107102 */  mul.s $f4, $f14, $f16
/* 03E4EC 800630EC C7AE0088 */  lwc1  $f14, 0x88($sp)
/* 03E4F0 800630F0 44938000 */  mtc1  $s3, $f16
/* 03E4F4 800630F4 00000000 */  nop   
/* 03E4F8 800630F8 46107182 */  mul.s $f6, $f14, $f16
/* 03E4FC 800630FC C7AE008C */  lwc1  $f14, 0x8c($sp)
/* 03E500 80063100 44948000 */  mtc1  $s4, $f16
/* 03E504 80063104 00000000 */  nop   
/* 03E508 80063108 46107202 */  mul.s $f8, $f14, $f16
/* 03E50C 8006310C C7AE001C */  lwc1  $f14, 0x1c($sp)
/* 03E510 80063110 A2000000 */  sb    $zero, ($s0)
/* 03E514 80063114 A2000001 */  sb    $zero, 1($s0)
/* 03E518 80063118 C7B00088 */  lwc1  $f16, 0x88($sp)
/* 03E51C 8006311C 461E7082 */  mul.s $f2, $f14, $f30
/* 03E520 80063120 44957000 */  mtc1  $s5, $f14
/* 03E524 80063124 A2000002 */  sb    $zero, 2($s0)
/* 03E528 80063128 A2000003 */  sb    $zero, 3($s0)
/* 03E52C 8006312C A2000004 */  sb    $zero, 4($s0)
/* 03E530 80063130 A2000005 */  sb    $zero, 5($s0)
/* 03E534 80063134 A2000006 */  sb    $zero, 6($s0)
/* 03E538 80063138 A2000007 */  sb    $zero, 7($s0)
/* 03E53C 8006313C 460E8282 */  mul.s $f10, $f16, $f14
/* 03E540 80063140 C7B0008C */  lwc1  $f16, 0x8c($sp)
/* 03E544 80063144 24020080 */  addiu $v0, $zero, 0x80
/* 03E548 80063148 A2000010 */  sb    $zero, 0x10($s0)
/* 03E54C 8006314C A2020011 */  sb    $v0, 0x11($s0)
/* 03E550 80063150 A2000012 */  sb    $zero, 0x12($s0)
/* 03E554 80063154 461C8302 */  mul.s $f12, $f16, $f28
/* 03E558 80063158 A2000013 */  sb    $zero, 0x13($s0)
/* 03E55C 8006315C A2000014 */  sb    $zero, 0x14($s0)
/* 03E560 80063160 C7AE001C */  lwc1  $f14, 0x1c($sp)
/* 03E564 80063164 449E8000 */  mtc1  $fp, $f16
/* 03E568 80063168 46062100 */  add.s $f4, $f4, $f6
/* 03E56C 8006316C 46107002 */  mul.s $f0, $f14, $f16
/* 03E570 80063170 A2020015 */  sb    $v0, 0x15($s0)
/* 03E574 80063174 A2000016 */  sb    $zero, 0x16($s0)
/* 03E578 80063178 A2000017 */  sb    $zero, 0x17($s0)
/* 03E57C 8006317C AE320000 */  sw    $s2, ($s1)
/* 03E580 80063180 C7AE0088 */  lwc1  $f14, 0x88($sp)
/* 03E584 80063184 44978000 */  mtc1  $s7, $f16
/* 03E588 80063188 46082100 */  add.s $f4, $f4, $f8
/* 03E58C 8006318C 46107202 */  mul.s $f8, $f14, $f16
/* 03E590 80063190 AE330010 */  sw    $s3, 0x10($s1)
/* 03E594 80063194 AE340020 */  sw    $s4, 0x20($s1)
/* 03E598 80063198 E63E0004 */  swc1  $f30, 4($s1)
/* 03E59C 8006319C C7AE008C */  lwc1  $f14, 0x8c($sp)
/* 03E5A0 800631A0 460A1080 */  add.s $f2, $f2, $f10
/* 03E5A4 800631A4 44968000 */  mtc1  $s6, $f16
/* 03E5A8 800631A8 3C013F80 */  lui   $at, 0x3f80
/* 03E5AC 800631AC 44815000 */  mtc1  $at, $f10
/* 03E5B0 800631B0 46002107 */  neg.s $f4, $f4
/* 03E5B4 800631B4 46107182 */  mul.s $f6, $f14, $f16
/* 03E5B8 800631B8 460C1080 */  add.s $f2, $f2, $f12
/* 03E5BC 800631BC AE350014 */  sw    $s5, 0x14($s1)
/* 03E5C0 800631C0 E63C0024 */  swc1  $f28, 0x24($s1)
/* 03E5C4 800631C4 AE3E0008 */  sw    $fp, 8($s1)
/* 03E5C8 800631C8 46080000 */  add.s $f0, $f0, $f8
/* 03E5CC 800631CC AE370018 */  sw    $s7, 0x18($s1)
/* 03E5D0 800631D0 AE360028 */  sw    $s6, 0x28($s1)
/* 03E5D4 800631D4 AE20000C */  sw    $zero, 0xc($s1)
/* 03E5D8 800631D8 46060000 */  add.s $f0, $f0, $f6
/* 03E5DC 800631DC AE20001C */  sw    $zero, 0x1c($s1)
/* 03E5E0 800631E0 AE20002C */  sw    $zero, 0x2c($s1)
/* 03E5E4 800631E4 E62A003C */  swc1  $f10, 0x3c($s1)
/* 03E5E8 800631E8 46001087 */  neg.s $f2, $f2
/* 03E5EC 800631EC E6240030 */  swc1  $f4, 0x30($s1)
/* 03E5F0 800631F0 46000007 */  neg.s $f0, $f0
/* 03E5F4 800631F4 E6220034 */  swc1  $f2, 0x34($s1)
/* 03E5F8 800631F8 E6200038 */  swc1  $f0, 0x38($s1)
/* 03E5FC 800631FC 8FBF0044 */  lw    $ra, 0x44($sp)
/* 03E600 80063200 8FBE0040 */  lw    $fp, 0x40($sp)
/* 03E604 80063204 8FB7003C */  lw    $s7, 0x3c($sp)
/* 03E608 80063208 8FB60038 */  lw    $s6, 0x38($sp)
/* 03E60C 8006320C 8FB50034 */  lw    $s5, 0x34($sp)
/* 03E610 80063210 8FB40030 */  lw    $s4, 0x30($sp)
/* 03E614 80063214 8FB3002C */  lw    $s3, 0x2c($sp)
/* 03E618 80063218 8FB20028 */  lw    $s2, 0x28($sp)
/* 03E61C 8006321C 8FB10024 */  lw    $s1, 0x24($sp)
/* 03E620 80063220 8FB00020 */  lw    $s0, 0x20($sp)
/* 03E624 80063224 D7BE0070 */  ldc1  $f30, 0x70($sp)
/* 03E628 80063228 D7BC0068 */  ldc1  $f28, 0x68($sp)
/* 03E62C 8006322C D7BA0060 */  ldc1  $f26, 0x60($sp)
/* 03E630 80063230 D7B80058 */  ldc1  $f24, 0x58($sp)
/* 03E634 80063234 D7B60050 */  ldc1  $f22, 0x50($sp)
/* 03E638 80063238 D7B40048 */  ldc1  $f20, 0x48($sp)
/* 03E63C 8006323C 03E00008 */  jr    $ra
/* 03E640 80063240 27BD0078 */   addiu $sp, $sp, 0x78

