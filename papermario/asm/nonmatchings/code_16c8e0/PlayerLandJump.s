.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel PlayerLandJump
/* 1A23E4 80273B04 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 1A23E8 80273B08 AFB00018 */  sw    $s0, 0x18($sp)
/* 1A23EC 80273B0C 3C10800E */  lui   $s0, 0x800e
/* 1A23F0 80273B10 8E10C148 */  lw    $s0, -0x3eb8($s0)
/* 1A23F4 80273B14 AFBF0020 */  sw    $ra, 0x20($sp)
/* 1A23F8 80273B18 AFB1001C */  sw    $s1, 0x1c($sp)
/* 1A23FC 80273B1C 10A00002 */  beqz  $a1, .L80273B28
/* 1A2400 80273B20 2611000C */   addiu $s1, $s0, 0xc
/* 1A2404 80273B24 AC800070 */  sw    $zero, 0x70($a0)
.L80273B28:
/* 1A2408 80273B28 8C820070 */  lw    $v0, 0x70($a0)
/* 1A240C 80273B2C 14400008 */  bnez  $v0, .L80273B50
/* 1A2410 80273B30 24020001 */   addiu $v0, $zero, 1
/* 1A2414 80273B34 C6000144 */  lwc1  $f0, 0x144($s0)
/* 1A2418 80273B38 C6020148 */  lwc1  $f2, 0x148($s0)
/* 1A241C 80273B3C C604014C */  lwc1  $f4, 0x14c($s0)
/* 1A2420 80273B40 E600000C */  swc1  $f0, 0xc($s0)
/* 1A2424 80273B44 E6020010 */  swc1  $f2, 0x10($s0)
/* 1A2428 80273B48 E6040014 */  swc1  $f4, 0x14($s0)
/* 1A242C 80273B4C AC820070 */  sw    $v0, 0x70($a0)
.L80273B50:
/* 1A2430 80273B50 C6020050 */  lwc1  $f2, 0x50($s0)
/* 1A2434 80273B54 44800000 */  mtc1  $zero, $f0
/* 1A2438 80273B58 00000000 */  nop   
/* 1A243C 80273B5C 4602003C */  c.lt.s $f0, $f2
/* 1A2440 80273B60 00000000 */  nop   
/* 1A2444 80273B64 45000006 */  bc1f  .L80273B80
/* 1A2448 80273B68 00000000 */   nop   
/* 1A244C 80273B6C 8E060064 */  lw    $a2, 0x64($s0)
/* 1A2450 80273B70 10C00003 */  beqz  $a2, .L80273B80
/* 1A2454 80273B74 0000202D */   daddu $a0, $zero, $zero
/* 1A2458 80273B78 0C098F3F */  jal   set_animation
/* 1A245C 80273B7C 0080282D */   daddu $a1, $a0, $zero
.L80273B80:
/* 1A2460 80273B80 C6220044 */  lwc1  $f2, 0x44($s1)
/* 1A2464 80273B84 44800000 */  mtc1  $zero, $f0
/* 1A2468 80273B88 00000000 */  nop   
/* 1A246C 80273B8C 4600103C */  c.lt.s $f2, $f0
/* 1A2470 80273B90 00000000 */  nop   
/* 1A2474 80273B94 45000006 */  bc1f  .L80273BB0
/* 1A2478 80273B98 00000000 */   nop   
/* 1A247C 80273B9C 8E26005C */  lw    $a2, 0x5c($s1)
/* 1A2480 80273BA0 10C00003 */  beqz  $a2, .L80273BB0
/* 1A2484 80273BA4 0000202D */   daddu $a0, $zero, $zero
/* 1A2488 80273BA8 0C098F3F */  jal   set_animation
/* 1A248C 80273BAC 0080282D */   daddu $a1, $a0, $zero
.L80273BB0:
/* 1A2490 80273BB0 C6240004 */  lwc1  $f4, 4($s1)
/* 1A2494 80273BB4 C6200044 */  lwc1  $f0, 0x44($s1)
/* 1A2498 80273BB8 8E250040 */  lw    $a1, 0x40($s1)
/* 1A249C 80273BBC 46002100 */  add.s $f4, $f4, $f0
/* 1A24A0 80273BC0 C622003C */  lwc1  $f2, 0x3c($s1)
/* 1A24A4 80273BC4 8E260048 */  lw    $a2, 0x48($s1)
/* 1A24A8 80273BC8 46020001 */  sub.s $f0, $f0, $f2
/* 1A24AC 80273BCC 0220202D */  daddu $a0, $s1, $zero
/* 1A24B0 80273BD0 E6240004 */  swc1  $f4, 4($s1)
/* 1A24B4 80273BD4 0C09904A */  jal   add_xz_vec3f
/* 1A24B8 80273BD8 E6200044 */   swc1  $f0, 0x44($s1)
/* 1A24BC 80273BDC C6200000 */  lwc1  $f0, ($s1)
/* 1A24C0 80273BE0 44802000 */  mtc1  $zero, $f4
/* 1A24C4 80273BE4 E6000144 */  swc1  $f0, 0x144($s0)
/* 1A24C8 80273BE8 C6200004 */  lwc1  $f0, 4($s1)
/* 1A24CC 80273BEC E6000148 */  swc1  $f0, 0x148($s0)
/* 1A24D0 80273BF0 46000086 */  mov.s $f2, $f0
/* 1A24D4 80273BF4 C6200008 */  lwc1  $f0, 8($s1)
/* 1A24D8 80273BF8 4604103C */  c.lt.s $f2, $f4
/* 1A24DC 80273BFC 00000000 */  nop   
/* 1A24E0 80273C00 45010003 */  bc1t  .L80273C10
/* 1A24E4 80273C04 E600014C */   swc1  $f0, 0x14c($s0)
/* 1A24E8 80273C08 0809CF14 */  j     .L80273C50
/* 1A24EC 80273C0C 0000102D */   daddu $v0, $zero, $zero

.L80273C10:
/* 1A24F0 80273C10 C600018C */  lwc1  $f0, 0x18c($s0)
/* 1A24F4 80273C14 E6040148 */  swc1  $f4, 0x148($s0)
/* 1A24F8 80273C18 E7A00010 */  swc1  $f0, 0x10($sp)
/* 1A24FC 80273C1C 8E050144 */  lw    $a1, 0x144($s0)
/* 1A2500 80273C20 8E060148 */  lw    $a2, 0x148($s0)
/* 1A2504 80273C24 8E07014C */  lw    $a3, 0x14c($s0)
/* 1A2508 80273C28 0C0990BC */  jal   play_movement_dust_effects
/* 1A250C 80273C2C 24040002 */   addiu $a0, $zero, 2
/* 1A2510 80273C30 C600014C */  lwc1  $f0, 0x14c($s0)
/* 1A2514 80273C34 24040148 */  addiu $a0, $zero, 0x148
/* 1A2518 80273C38 E7A00010 */  swc1  $f0, 0x10($sp)
/* 1A251C 80273C3C 8E060144 */  lw    $a2, 0x144($s0)
/* 1A2520 80273C40 8E070148 */  lw    $a3, 0x148($s0)
/* 1A2524 80273C44 0C052757 */  jal   play_sound_at_position
/* 1A2528 80273C48 0000282D */   daddu $a1, $zero, $zero
/* 1A252C 80273C4C 24020001 */  addiu $v0, $zero, 1
.L80273C50:
/* 1A2530 80273C50 8FBF0020 */  lw    $ra, 0x20($sp)
/* 1A2534 80273C54 8FB1001C */  lw    $s1, 0x1c($sp)
/* 1A2538 80273C58 8FB00018 */  lw    $s0, 0x18($sp)
/* 1A253C 80273C5C 03E00008 */  jr    $ra
/* 1A2540 80273C60 27BD0028 */   addiu $sp, $sp, 0x28

