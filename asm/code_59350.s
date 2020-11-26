.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_80058750
/* 59350 80058750 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* 59354 80058754 AFB10028 */  sw         $s1, 0x28($sp)
/* 59358 80058758 AFB00024 */  sw         $s0, 0x24($sp)
/* 5935C 8005875C 00A08025 */  or         $s0, $a1, $zero
/* 59360 80058760 00808825 */  or         $s1, $a0, $zero
/* 59364 80058764 AFBF002C */  sw         $ra, 0x2c($sp)
/* 59368 80058768 27A20038 */  addiu      $v0, $sp, 0x38
/* 5936C 8005876C 27A30058 */  addiu      $v1, $sp, 0x58
.L80058770:
/* 59370 80058770 24420004 */  addiu      $v0, $v0, 4
/* 59374 80058774 A050FFFC */  sb         $s0, -4($v0)
/* 59378 80058778 A050FFFD */  sb         $s0, -3($v0)
/* 5937C 8005877C A050FFFE */  sb         $s0, -2($v0)
/* 59380 80058780 1443FFFB */  bne        $v0, $v1, .L80058770
/* 59384 80058784 A050FFFF */   sb        $s0, -1($v0)
/* 59388 80058788 8E240004 */  lw         $a0, 4($s1)
/* 5938C 8005878C 8E250008 */  lw         $a1, 8($s1)
/* 59390 80058790 AFA00010 */  sw         $zero, 0x10($sp)
/* 59394 80058794 24060580 */  addiu      $a2, $zero, 0x580
/* 59398 80058798 0C018E04 */  jal        func_80063810
/* 5939C 8005879C 27A70038 */   addiu     $a3, $sp, 0x38
/* 593A0 800587A0 24010002 */  addiu      $at, $zero, 2
/* 593A4 800587A4 14410011 */  bne        $v0, $at, .L800587EC
/* 593A8 800587A8 00401825 */   or        $v1, $v0, $zero
/* 593AC 800587AC 8E240004 */  lw         $a0, 4($s1)
/* 593B0 800587B0 02202825 */  or         $a1, $s1, $zero
/* 593B4 800587B4 0C016540 */  jal        func_80059500
/* 593B8 800587B8 8E260008 */   lw        $a2, 8($s1)
/* 593BC 800587BC 1440000B */  bnez       $v0, .L800587EC
/* 593C0 800587C0 00401825 */   or        $v1, $v0, $zero
/* 593C4 800587C4 8E240004 */  lw         $a0, 4($s1)
/* 593C8 800587C8 8E250008 */  lw         $a1, 8($s1)
/* 593CC 800587CC AFA00010 */  sw         $zero, 0x10($sp)
/* 593D0 800587D0 24060580 */  addiu      $a2, $zero, 0x580
/* 593D4 800587D4 0C018E04 */  jal        func_80063810
/* 593D8 800587D8 27A70038 */   addiu     $a3, $sp, 0x38
/* 593DC 800587DC 24010002 */  addiu      $at, $zero, 2
/* 593E0 800587E0 14410002 */  bne        $v0, $at, .L800587EC
/* 593E4 800587E4 00401825 */   or        $v1, $v0, $zero
/* 593E8 800587E8 24030004 */  addiu      $v1, $zero, 4
.L800587EC:
/* 593EC 800587EC 12000016 */  beqz       $s0, .L80058848
/* 593F0 800587F0 3C048010 */   lui       $a0, 0x8010
/* 593F4 800587F4 3C108010 */  lui        $s0, 0x8010
/* 593F8 800587F8 3C188010 */  lui        $t8, 0x8010
/* 593FC 800587FC 26102220 */  addiu      $s0, $s0, 0x2220
/* 59400 80058800 27182238 */  addiu      $t8, $t8, 0x2238
/* 59404 80058804 3C070055 */  lui        $a3, 0x55
/* 59408 80058808 240E0000 */  addiu      $t6, $zero, 0
/* 5940C 8005880C 240F0000 */  addiu      $t7, $zero, 0
/* 59410 80058810 AFAF0014 */  sw         $t7, 0x14($sp)
/* 59414 80058814 AFAE0010 */  sw         $t6, 0x10($sp)
/* 59418 80058818 34E7D4A8 */  ori        $a3, $a3, 0xd4a8
/* 5941C 8005881C AFB8001C */  sw         $t8, 0x1c($sp)
/* 59420 80058820 AFB00018 */  sw         $s0, 0x18($sp)
/* 59424 80058824 24842200 */  addiu      $a0, $a0, 0x2200
/* 59428 80058828 24060000 */  addiu      $a2, $zero, 0
/* 5942C 8005882C 0C018FDC */  jal        func_80063F70
/* 59430 80058830 AFA30058 */   sw        $v1, 0x58($sp)
/* 59434 80058834 02002025 */  or         $a0, $s0, $zero
/* 59438 80058838 00002825 */  or         $a1, $zero, $zero
/* 5943C 8005883C 0C015AB4 */  jal        osRecvMesg
/* 59440 80058840 24060001 */   addiu     $a2, $zero, 1
/* 59444 80058844 8FA30058 */  lw         $v1, 0x58($sp)
.L80058848:
/* 59448 80058848 8FBF002C */  lw         $ra, 0x2c($sp)
/* 5944C 8005884C 8FB00024 */  lw         $s0, 0x24($sp)
/* 59450 80058850 8FB10028 */  lw         $s1, 0x28($sp)
/* 59454 80058854 27BD0060 */  addiu      $sp, $sp, 0x60
/* 59458 80058858 03E00008 */  jr         $ra
/* 5945C 8005885C 00601025 */   or        $v0, $v1, $zero

glabel func_80058860
/* 59460 80058860 27BDFF90 */  addiu      $sp, $sp, -0x70
/* 59464 80058864 3C0E8008 */  lui        $t6, 0x8008
/* 59468 80058868 8DCE9680 */  lw         $t6, -0x6980($t6)
/* 5946C 8005886C AFBF0024 */  sw         $ra, 0x24($sp)
/* 59470 80058870 AFA40070 */  sw         $a0, 0x70($sp)
/* 59474 80058874 AFA50074 */  sw         $a1, 0x74($sp)
/* 59478 80058878 AFA60078 */  sw         $a2, 0x78($sp)
/* 5947C 8005887C 11C00003 */  beqz       $t6, .L8005888C
/* 59480 80058880 AFA00068 */   sw        $zero, 0x68($sp)
/* 59484 80058884 1000004E */  b          .L800589C0
/* 59488 80058888 00001025 */   or        $v0, $zero, $zero
.L8005888C:
/* 5948C 8005888C 240F0001 */  addiu      $t7, $zero, 1
/* 59490 80058890 3C018008 */  lui        $at, 0x8008
/* 59494 80058894 0C017C54 */  jal        func_8005F150
/* 59498 80058898 AC2F9680 */   sw        $t7, -0x6980($at)
/* 5949C 8005889C AFA20060 */  sw         $v0, 0x60($sp)
/* 594A0 800588A0 8FB80060 */  lw         $t8, 0x60($sp)
/* 594A4 800588A4 AFA30064 */  sw         $v1, 0x64($sp)
/* 594A8 800588A8 8FB90064 */  lw         $t9, 0x64($sp)
/* 594AC 800588AC 17000020 */  bnez       $t8, .L80058930
/* 594B0 800588B0 3C010165 */   lui       $at, 0x165
/* 594B4 800588B4 3421A0BC */  ori        $at, $at, 0xa0bc
/* 594B8 800588B8 0321082B */  sltu       $at, $t9, $at
/* 594BC 800588BC 1020001C */  beqz       $at, .L80058930
/* 594C0 800588C0 00000000 */   nop       
/* 594C4 800588C4 27A40028 */  addiu      $a0, $sp, 0x28
/* 594C8 800588C8 27A5006C */  addiu      $a1, $sp, 0x6c
/* 594CC 800588CC 0C0178E8 */  jal        func_8005E3A0
/* 594D0 800588D0 24060001 */   addiu     $a2, $zero, 1
/* 594D4 800588D4 8FA80060 */  lw         $t0, 0x60($sp)
/* 594D8 800588D8 8FA90064 */  lw         $t1, 0x64($sp)
/* 594DC 800588DC 3C0B0165 */  lui        $t3, 0x165
/* 594E0 800588E0 356BA0BC */  ori        $t3, $t3, 0xa0bc
/* 594E4 800588E4 240A0000 */  addiu      $t2, $zero, 0
/* 594E8 800588E8 240C0000 */  addiu      $t4, $zero, 0
/* 594EC 800588EC 240D0000 */  addiu      $t5, $zero, 0
/* 594F0 800588F0 27AE0028 */  addiu      $t6, $sp, 0x28
/* 594F4 800588F4 27AF006C */  addiu      $t7, $sp, 0x6c
/* 594F8 800588F8 01483023 */  subu       $a2, $t2, $t0
/* 594FC 800588FC 0169082B */  sltu       $at, $t3, $t1
/* 59500 80058900 00C13023 */  subu       $a2, $a2, $at
/* 59504 80058904 AFAF001C */  sw         $t7, 0x1c($sp)
/* 59508 80058908 AFAE0018 */  sw         $t6, 0x18($sp)
/* 5950C 8005890C AFAD0014 */  sw         $t5, 0x14($sp)
/* 59510 80058910 AFAC0010 */  sw         $t4, 0x10($sp)
/* 59514 80058914 27A40040 */  addiu      $a0, $sp, 0x40
/* 59518 80058918 0C018FDC */  jal        func_80063F70
/* 5951C 8005891C 01693823 */   subu      $a3, $t3, $t1
/* 59520 80058920 27A40028 */  addiu      $a0, $sp, 0x28
/* 59524 80058924 27A5006C */  addiu      $a1, $sp, 0x6c
/* 59528 80058928 0C015AB4 */  jal        osRecvMesg
/* 5952C 8005892C 24060001 */   addiu     $a2, $zero, 1
.L80058930:
/* 59530 80058930 24180004 */  addiu      $t8, $zero, 4
/* 59534 80058934 3C018010 */  lui        $at, 0x8010
/* 59538 80058938 A0382181 */  sb         $t8, 0x2181($at)
/* 5953C 8005893C 0C0162A8 */  jal        func_80058AA0
/* 59540 80058940 00002025 */   or        $a0, $zero, $zero
/* 59544 80058944 3C058010 */  lui        $a1, 0x8010
/* 59548 80058948 24A52140 */  addiu      $a1, $a1, 0x2140
/* 5954C 8005894C 0C016A38 */  jal        func_8005A8E0
/* 59550 80058950 24040001 */   addiu     $a0, $zero, 1
/* 59554 80058954 AFA20068 */  sw         $v0, 0x68($sp)
/* 59558 80058958 8FA40070 */  lw         $a0, 0x70($sp)
/* 5955C 8005895C 27A5006C */  addiu      $a1, $sp, 0x6c
/* 59560 80058960 0C015AB4 */  jal        osRecvMesg
/* 59564 80058964 24060001 */   addiu     $a2, $zero, 1
/* 59568 80058968 3C058010 */  lui        $a1, 0x8010
/* 5956C 8005896C 24A52140 */  addiu      $a1, $a1, 0x2140
/* 59570 80058970 0C016A38 */  jal        func_8005A8E0
/* 59574 80058974 00002025 */   or        $a0, $zero, $zero
/* 59578 80058978 AFA20068 */  sw         $v0, 0x68($sp)
/* 5957C 8005897C 8FA40070 */  lw         $a0, 0x70($sp)
/* 59580 80058980 27A5006C */  addiu      $a1, $sp, 0x6c
/* 59584 80058984 0C015AB4 */  jal        osRecvMesg
/* 59588 80058988 24060001 */   addiu     $a2, $zero, 1
/* 5958C 8005898C 8FA40074 */  lw         $a0, 0x74($sp)
/* 59590 80058990 0C016274 */  jal        func_800589D0
/* 59594 80058994 8FA50078 */   lw        $a1, 0x78($sp)
/* 59598 80058998 3C018010 */  lui        $at, 0x8010
/* 5959C 8005899C 0C0162E8 */  jal        func_80058BA0
/* 595A0 800589A0 A0202180 */   sb        $zero, 0x2180($at)
/* 595A4 800589A4 3C048010 */  lui        $a0, 0x8010
/* 595A8 800589A8 3C058010 */  lui        $a1, 0x8010
/* 595AC 800589AC 24A521C0 */  addiu      $a1, $a1, 0x21c0
/* 595B0 800589B0 248421A8 */  addiu      $a0, $a0, 0x21a8
/* 595B4 800589B4 0C0178E8 */  jal        func_8005E3A0
/* 595B8 800589B8 24060001 */   addiu     $a2, $zero, 1
/* 595BC 800589BC 8FA20068 */  lw         $v0, 0x68($sp)
.L800589C0:
/* 595C0 800589C0 8FBF0024 */  lw         $ra, 0x24($sp)
/* 595C4 800589C4 27BD0070 */  addiu      $sp, $sp, 0x70
/* 595C8 800589C8 03E00008 */  jr         $ra
/* 595CC 800589CC 00000000 */   nop       

glabel func_800589D0
/* 595D0 800589D0 3C0F8010 */  lui        $t7, 0x8010
/* 595D4 800589D4 91EF2181 */  lbu        $t7, 0x2181($t7)
/* 595D8 800589D8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 595DC 800589DC 3C0E8010 */  lui        $t6, 0x8010
/* 595E0 800589E0 25CE2140 */  addiu      $t6, $t6, 0x2140
/* 595E4 800589E4 A3A00007 */  sb         $zero, 7($sp)
/* 595E8 800589E8 AFAE0014 */  sw         $t6, 0x14($sp)
/* 595EC 800589EC 19E00028 */  blez       $t7, .L80058A90
/* 595F0 800589F0 AFA00008 */   sw        $zero, 8($sp)
.L800589F4:
/* 595F4 800589F4 8FB90014 */  lw         $t9, 0x14($sp)
/* 595F8 800589F8 27B8000C */  addiu      $t8, $sp, 0xc
/* 595FC 800589FC 8B210000 */  lwl        $at, ($t9)
/* 59600 80058A00 9B210003 */  lwr        $at, 3($t9)
/* 59604 80058A04 AF010000 */  sw         $at, ($t8)
/* 59608 80058A08 8B290004 */  lwl        $t1, 4($t9)
/* 5960C 80058A0C 9B290007 */  lwr        $t1, 7($t9)
/* 59610 80058A10 AF090004 */  sw         $t1, 4($t8)
/* 59614 80058A14 93AA000E */  lbu        $t2, 0xe($sp)
/* 59618 80058A18 314B00C0 */  andi       $t3, $t2, 0xc0
/* 5961C 80058A1C 000B6103 */  sra        $t4, $t3, 4
/* 59620 80058A20 A0AC0003 */  sb         $t4, 3($a1)
/* 59624 80058A24 90AD0003 */  lbu        $t5, 3($a1)
/* 59628 80058A28 15A0000E */  bnez       $t5, .L80058A64
/* 5962C 80058A2C 00000000 */   nop       
/* 59630 80058A30 93AE0011 */  lbu        $t6, 0x11($sp)
/* 59634 80058A34 93A80010 */  lbu        $t0, 0x10($sp)
/* 59638 80058A38 240B0001 */  addiu      $t3, $zero, 1
/* 5963C 80058A3C 000E7A00 */  sll        $t7, $t6, 8
/* 59640 80058A40 01E8C025 */  or         $t8, $t7, $t0
/* 59644 80058A44 A4B80000 */  sh         $t8, ($a1)
/* 59648 80058A48 93B90012 */  lbu        $t9, 0x12($sp)
/* 5964C 80058A4C A0B90002 */  sb         $t9, 2($a1)
/* 59650 80058A50 8FAA0008 */  lw         $t2, 8($sp)
/* 59654 80058A54 93A90007 */  lbu        $t1, 7($sp)
/* 59658 80058A58 014B6004 */  sllv       $t4, $t3, $t2
/* 5965C 80058A5C 012C6825 */  or         $t5, $t1, $t4
/* 59660 80058A60 A3AD0007 */  sb         $t5, 7($sp)
.L80058A64:
/* 59664 80058A64 8FAE0008 */  lw         $t6, 8($sp)
/* 59668 80058A68 3C198010 */  lui        $t9, 0x8010
/* 5966C 80058A6C 93392181 */  lbu        $t9, 0x2181($t9)
/* 59670 80058A70 8FA80014 */  lw         $t0, 0x14($sp)
/* 59674 80058A74 25CF0001 */  addiu      $t7, $t6, 1
/* 59678 80058A78 01F9082A */  slt        $at, $t7, $t9
/* 5967C 80058A7C 25180008 */  addiu      $t8, $t0, 8
/* 59680 80058A80 AFB80014 */  sw         $t8, 0x14($sp)
/* 59684 80058A84 AFAF0008 */  sw         $t7, 8($sp)
/* 59688 80058A88 1420FFDA */  bnez       $at, .L800589F4
/* 5968C 80058A8C 24A50004 */   addiu     $a1, $a1, 4
.L80058A90:
/* 59690 80058A90 93AB0007 */  lbu        $t3, 7($sp)
/* 59694 80058A94 27BD0018 */  addiu      $sp, $sp, 0x18
/* 59698 80058A98 03E00008 */  jr         $ra
/* 5969C 80058A9C A08B0000 */   sb        $t3, ($a0)

glabel func_80058AA0
/* 596A0 80058AA0 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* 596A4 80058AA4 308400FF */  andi       $a0, $a0, 0xff
/* 596A8 80058AA8 AFA00000 */  sw         $zero, ($sp)
.L80058AAC:
/* 596AC 80058AAC 8FAE0000 */  lw         $t6, ($sp)
/* 596B0 80058AB0 8FB80000 */  lw         $t8, ($sp)
/* 596B4 80058AB4 3C018010 */  lui        $at, 0x8010
/* 596B8 80058AB8 000E7880 */  sll        $t7, $t6, 2
/* 596BC 80058ABC 002F0821 */  addu       $at, $at, $t7
/* 596C0 80058AC0 AC202140 */  sw         $zero, 0x2140($at)
/* 596C4 80058AC4 27190001 */  addiu      $t9, $t8, 1
/* 596C8 80058AC8 2B21000F */  slti       $at, $t9, 0xf
/* 596CC 80058ACC 1420FFF7 */  bnez       $at, .L80058AAC
/* 596D0 80058AD0 AFB90000 */   sw        $t9, ($sp)
/* 596D4 80058AD4 3C198010 */  lui        $t9, 0x8010
/* 596D8 80058AD8 93392181 */  lbu        $t9, 0x2181($t9)
/* 596DC 80058ADC 3C098010 */  lui        $t1, 0x8010
/* 596E0 80058AE0 24080001 */  addiu      $t0, $zero, 1
/* 596E4 80058AE4 3C018010 */  lui        $at, 0x8010
/* 596E8 80058AE8 25292140 */  addiu      $t1, $t1, 0x2140
/* 596EC 80058AEC 240A00FF */  addiu      $t2, $zero, 0xff
/* 596F0 80058AF0 240B0001 */  addiu      $t3, $zero, 1
/* 596F4 80058AF4 240C0003 */  addiu      $t4, $zero, 3
/* 596F8 80058AF8 240D00FF */  addiu      $t5, $zero, 0xff
/* 596FC 80058AFC 240E00FF */  addiu      $t6, $zero, 0xff
/* 59700 80058B00 240F00FF */  addiu      $t7, $zero, 0xff
/* 59704 80058B04 241800FF */  addiu      $t8, $zero, 0xff
/* 59708 80058B08 AC28217C */  sw         $t0, 0x217c($at)
/* 5970C 80058B0C AFA9000C */  sw         $t1, 0xc($sp)
/* 59710 80058B10 A3AA0004 */  sb         $t2, 4($sp)
/* 59714 80058B14 A3AB0005 */  sb         $t3, 5($sp)
/* 59718 80058B18 A3AC0006 */  sb         $t4, 6($sp)
/* 5971C 80058B1C A3A40007 */  sb         $a0, 7($sp)
/* 59720 80058B20 A3AD0008 */  sb         $t5, 8($sp)
/* 59724 80058B24 A3AE0009 */  sb         $t6, 9($sp)
/* 59728 80058B28 A3AF000A */  sb         $t7, 0xa($sp)
/* 5972C 80058B2C A3B8000B */  sb         $t8, 0xb($sp)
/* 59730 80058B30 1B200013 */  blez       $t9, .L80058B80
/* 59734 80058B34 AFA00000 */   sw        $zero, ($sp)
.L80058B38:
/* 59738 80058B38 27A90004 */  addiu      $t1, $sp, 4
/* 5973C 80058B3C 8D210000 */  lw         $at, ($t1)
/* 59740 80058B40 8FA8000C */  lw         $t0, 0xc($sp)
/* 59744 80058B44 3C188010 */  lui        $t8, 0x8010
/* 59748 80058B48 A9010000 */  swl        $at, ($t0)
/* 5974C 80058B4C B9010003 */  swr        $at, 3($t0)
/* 59750 80058B50 8D2B0004 */  lw         $t3, 4($t1)
/* 59754 80058B54 A90B0004 */  swl        $t3, 4($t0)
/* 59758 80058B58 B90B0007 */  swr        $t3, 7($t0)
/* 5975C 80058B5C 8FAE0000 */  lw         $t6, ($sp)
/* 59760 80058B60 93182181 */  lbu        $t8, 0x2181($t8)
/* 59764 80058B64 8FAC000C */  lw         $t4, 0xc($sp)
/* 59768 80058B68 25CF0001 */  addiu      $t7, $t6, 1
/* 5976C 80058B6C 01F8082A */  slt        $at, $t7, $t8
/* 59770 80058B70 258D0008 */  addiu      $t5, $t4, 8
/* 59774 80058B74 AFAF0000 */  sw         $t7, ($sp)
/* 59778 80058B78 1420FFEF */  bnez       $at, .L80058B38
/* 5977C 80058B7C AFAD000C */   sw        $t5, 0xc($sp)
.L80058B80:
/* 59780 80058B80 8FAA000C */  lw         $t2, 0xc($sp)
/* 59784 80058B84 241900FE */  addiu      $t9, $zero, 0xfe
/* 59788 80058B88 27BD0010 */  addiu      $sp, $sp, 0x10
/* 5978C 80058B8C 03E00008 */  jr         $ra
/* 59790 80058B90 A1590000 */   sb        $t9, ($t2)
/* 59794 80058B94 00000000 */  nop        
/* 59798 80058B98 00000000 */  nop        
/* 5979C 80058B9C 00000000 */  nop        
