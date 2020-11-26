.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_80054FB0
/* 55BB0 80054FB0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 55BB4 80054FB4 AFB00014 */  sw         $s0, 0x14($sp)
/* 55BB8 80054FB8 AFBF001C */  sw         $ra, 0x1c($sp)
/* 55BBC 80054FBC AFB10018 */  sw         $s1, 0x18($sp)
/* 55BC0 80054FC0 24100008 */  addiu      $s0, $zero, 8
.L80054FC4:
/* 55BC4 80054FC4 0C014CC5 */  jal        func_80053314
/* 55BC8 80054FC8 00000000 */   nop       
/* 55BCC 80054FCC 1440000B */  bnez       $v0, .L80054FFC
/* 55BD0 80054FD0 305100FF */   andi      $s1, $v0, 0xff
/* 55BD4 80054FD4 3C028010 */  lui        $v0, 0x8010
/* 55BD8 80054FD8 244206E0 */  addiu      $v0, $v0, 0x6e0
/* 55BDC 80054FDC 3C038010 */  lui        $v1, 0x8010
/* 55BE0 80054FE0 246306C8 */  addiu      $v1, $v1, 0x6c8
/* 55BE4 80054FE4 8C6E0000 */  lw         $t6, ($v1)
/* 55BE8 80054FE8 A4400002 */  sh         $zero, 2($v0)
/* 55BEC 80054FEC A0400007 */  sb         $zero, 7($v0)
/* 55BF0 80054FF0 A0400008 */  sb         $zero, 8($v0)
/* 55BF4 80054FF4 10000010 */  b          .L80055038
/* 55BF8 80054FF8 A1C00004 */   sb        $zero, 4($t6)
.L80054FFC:
/* 55BFC 80054FFC 0C014D0C */  jal        func_80053430
/* 55C00 80055000 02202025 */   or        $a0, $s1, $zero
/* 55C04 80055004 14400005 */  bnez       $v0, .L8005501C
/* 55C08 80055008 02001025 */   or        $v0, $s0, $zero
/* 55C0C 8005500C 2610FFFF */  addiu      $s0, $s0, -1
/* 55C10 80055010 320F00FF */  andi       $t7, $s0, 0xff
/* 55C14 80055014 1440FFEB */  bnez       $v0, .L80054FC4
/* 55C18 80055018 01E08025 */   or        $s0, $t7, $zero
.L8005501C:
/* 55C1C 8005501C 3C038010 */  lui        $v1, 0x8010
/* 55C20 80055020 246306C8 */  addiu      $v1, $v1, 0x6c8
/* 55C24 80055024 8C780000 */  lw         $t8, ($v1)
/* 55C28 80055028 24190002 */  addiu      $t9, $zero, 2
/* 55C2C 8005502C A3110005 */  sb         $s1, 5($t8)
/* 55C30 80055030 8C680000 */  lw         $t0, ($v1)
/* 55C34 80055034 A1190004 */  sb         $t9, 4($t0)
.L80055038:
/* 55C38 80055038 8FBF001C */  lw         $ra, 0x1c($sp)
/* 55C3C 8005503C 8FB00014 */  lw         $s0, 0x14($sp)
/* 55C40 80055040 8FB10018 */  lw         $s1, 0x18($sp)
/* 55C44 80055044 03E00008 */  jr         $ra
/* 55C48 80055048 27BD0020 */   addiu     $sp, $sp, 0x20
/* 55C4C 8005504C 00000000 */  nop        

glabel func_80055050
/* 55C50 80055050 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 55C54 80055054 3C0E8008 */  lui        $t6, 0x8008
/* 55C58 80055058 8DCE95B0 */  lw         $t6, -0x6a50($t6)
/* 55C5C 8005505C AFB1001C */  sw         $s1, 0x1c($sp)
/* 55C60 80055060 AFB00018 */  sw         $s0, 0x18($sp)
/* 55C64 80055064 00A08025 */  or         $s0, $a1, $zero
/* 55C68 80055068 00808825 */  or         $s1, $a0, $zero
/* 55C6C 8005506C AFBF0034 */  sw         $ra, 0x34($sp)
/* 55C70 80055070 AFB60030 */  sw         $s6, 0x30($sp)
/* 55C74 80055074 AFB5002C */  sw         $s5, 0x2c($sp)
/* 55C78 80055078 AFB40028 */  sw         $s4, 0x28($sp)
/* 55C7C 8005507C AFB30024 */  sw         $s3, 0x24($sp)
/* 55C80 80055080 AFB20020 */  sw         $s2, 0x20($sp)
/* 55C84 80055084 15C00003 */  bnez       $t6, .L80055094
/* 55C88 80055088 AFA60048 */   sw        $a2, 0x48($sp)
/* 55C8C 8005508C 1000003D */  b          .L80055184
/* 55C90 80055090 2402FFFF */   addiu     $v0, $zero, -1
.L80055094:
/* 55C94 80055094 00009825 */  or         $s3, $zero, $zero
/* 55C98 80055098 24050001 */  addiu      $a1, $zero, 1
/* 55C9C 8005509C 24020001 */  addiu      $v0, $zero, 1
/* 55CA0 800550A0 12000035 */  beqz       $s0, .L80055178
/* 55CA4 800550A4 26310018 */   addiu     $s1, $s1, 0x18
/* 55CA8 800550A8 3C168008 */  lui        $s6, 0x8008
/* 55CAC 800550AC 3C158008 */  lui        $s5, 0x8008
/* 55CB0 800550B0 3C148008 */  lui        $s4, 0x8008
/* 55CB4 800550B4 3C128010 */  lui        $s2, 0x8010
/* 55CB8 800550B8 265206D8 */  addiu      $s2, $s2, 0x6d8
/* 55CBC 800550BC 2694DB98 */  addiu      $s4, $s4, -0x2468
/* 55CC0 800550C0 26B5DC98 */  addiu      $s5, $s5, -0x2368
/* 55CC4 800550C4 26D6DB84 */  addiu      $s6, $s6, -0x247c
/* 55CC8 800550C8 8FA40038 */  lw         $a0, 0x38($sp)
.L800550CC:
/* 55CCC 800550CC 14400009 */  bnez       $v0, .L800550F4
/* 55CD0 800550D0 00000000 */   nop       
/* 55CD4 800550D4 924F0000 */  lbu        $t7, ($s2)
/* 55CD8 800550D8 00054040 */  sll        $t0, $a1, 1
/* 55CDC 800550DC 000FC140 */  sll        $t8, $t7, 5
/* 55CE0 800550E0 0298C821 */  addu       $t9, $s4, $t8
/* 55CE4 800550E4 03284821 */  addu       $t1, $t9, $t0
/* 55CE8 800550E8 952A0000 */  lhu        $t2, ($t1)
/* 55CEC 800550EC 562A0013 */  bnel       $s1, $t2, .L8005513C
/* 55CF0 800550F0 0204082B */   sltu      $at, $s0, $a0
.L800550F4:
/* 55CF4 800550F4 0C0153D5 */  jal        func_80054F54
/* 55CF8 800550F8 02202025 */   or        $a0, $s1, $zero
/* 55CFC 800550FC 924B0000 */  lbu        $t3, ($s2)
/* 55D00 80055100 3045FFFF */  andi       $a1, $v0, 0xffff
/* 55D04 80055104 000B6100 */  sll        $t4, $t3, 4
/* 55D08 80055108 02AC6821 */  addu       $t5, $s5, $t4
/* 55D0C 8005510C 01A27021 */  addu       $t6, $t5, $v0
/* 55D10 80055110 91C30000 */  lbu        $v1, ($t6)
/* 55D14 80055114 28610008 */  slti       $at, $v1, 8
/* 55D18 80055118 14200004 */  bnez       $at, .L8005512C
/* 55D1C 8005511C 00602025 */   or        $a0, $v1, $zero
/* 55D20 80055120 2483FFF9 */  addiu      $v1, $a0, -7
/* 55D24 80055124 306FFFFF */  andi       $t7, $v1, 0xffff
/* 55D28 80055128 01E01825 */  or         $v1, $t7, $zero
.L8005512C:
/* 55D2C 8005512C 0003C040 */  sll        $t8, $v1, 1
/* 55D30 80055130 02D8C821 */  addu       $t9, $s6, $t8
/* 55D34 80055134 97240000 */  lhu        $a0, ($t9)
/* 55D38 80055138 0204082B */  sltu       $at, $s0, $a0
.L8005513C:
/* 55D3C 8005513C 10200003 */  beqz       $at, .L8005514C
/* 55D40 80055140 26730001 */   addiu     $s3, $s3, 1
/* 55D44 80055144 10000002 */  b          .L80055150
/* 55D48 80055148 00008025 */   or        $s0, $zero, $zero
.L8005514C:
/* 55D4C 8005514C 02048023 */  subu       $s0, $s0, $a0
.L80055150:
/* 55D50 80055150 12000006 */  beqz       $s0, .L8005516C
/* 55D54 80055154 26310001 */   addiu     $s1, $s1, 1
/* 55D58 80055158 2E2110DC */  sltiu      $at, $s1, 0x10dc
/* 55D5C 8005515C 14200003 */  bnez       $at, .L8005516C
/* 55D60 80055160 00000000 */   nop       
/* 55D64 80055164 10000007 */  b          .L80055184
/* 55D68 80055168 24020020 */   addiu     $v0, $zero, 0x20
.L8005516C:
/* 55D6C 8005516C 1600FFD7 */  bnez       $s0, .L800550CC
/* 55D70 80055170 00001025 */   or        $v0, $zero, $zero
/* 55D74 80055174 AFA40038 */  sw         $a0, 0x38($sp)
.L80055178:
/* 55D78 80055178 8FA80048 */  lw         $t0, 0x48($sp)
/* 55D7C 8005517C 00001025 */  or         $v0, $zero, $zero
/* 55D80 80055180 AD130000 */  sw         $s3, ($t0)
.L80055184:
/* 55D84 80055184 8FBF0034 */  lw         $ra, 0x34($sp)
/* 55D88 80055188 8FB00018 */  lw         $s0, 0x18($sp)
/* 55D8C 8005518C 8FB1001C */  lw         $s1, 0x1c($sp)
/* 55D90 80055190 8FB20020 */  lw         $s2, 0x20($sp)
/* 55D94 80055194 8FB30024 */  lw         $s3, 0x24($sp)
/* 55D98 80055198 8FB40028 */  lw         $s4, 0x28($sp)
/* 55D9C 8005519C 8FB5002C */  lw         $s5, 0x2c($sp)
/* 55DA0 800551A0 8FB60030 */  lw         $s6, 0x30($sp)
/* 55DA4 800551A4 03E00008 */  jr         $ra
/* 55DA8 800551A8 27BD0040 */   addiu     $sp, $sp, 0x40
/* 55DAC 800551AC 00000000 */  nop        

glabel func_800551B0
/* 55DB0 800551B0 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 55DB4 800551B4 AFB2001C */  sw         $s2, 0x1c($sp)
/* 55DB8 800551B8 3C128010 */  lui        $s2, 0x8010
/* 55DBC 800551BC AFB30020 */  sw         $s3, 0x20($sp)
/* 55DC0 800551C0 27B3002C */  addiu      $s3, $sp, 0x2c
/* 55DC4 800551C4 26520638 */  addiu      $s2, $s2, 0x638
/* 55DC8 800551C8 AFBF0024 */  sw         $ra, 0x24($sp)
/* 55DCC 800551CC AFB10018 */  sw         $s1, 0x18($sp)
/* 55DD0 800551D0 AFB00014 */  sw         $s0, 0x14($sp)
/* 55DD4 800551D4 02402025 */  or         $a0, $s2, $zero
/* 55DD8 800551D8 02602825 */  or         $a1, $s3, $zero
/* 55DDC 800551DC 0C015AB4 */  jal        osRecvMesg
/* 55DE0 800551E0 00003025 */   or        $a2, $zero, $zero
/* 55DE4 800551E4 14400015 */  bnez       $v0, .L8005523C
/* 55DE8 800551E8 24110002 */   addiu     $s1, $zero, 2
/* 55DEC 800551EC 24100022 */  addiu      $s0, $zero, 0x22
/* 55DF0 800551F0 8FAE002C */  lw         $t6, 0x2c($sp)
.L800551F4:
/* 55DF4 800551F4 24050022 */  addiu      $a1, $zero, 0x22
/* 55DF8 800551F8 24060001 */  addiu      $a2, $zero, 1
/* 55DFC 800551FC A1D00005 */  sb         $s0, 5($t6)
/* 55E00 80055200 8FAF002C */  lw         $t7, 0x2c($sp)
/* 55E04 80055204 A1F10004 */  sb         $s1, 4($t7)
/* 55E08 80055208 8FB8002C */  lw         $t8, 0x2c($sp)
/* 55E0C 8005520C 93190002 */  lbu        $t9, 2($t8)
/* 55E10 80055210 33280080 */  andi       $t0, $t9, 0x80
/* 55E14 80055214 51000004 */  beql       $t0, $zero, .L80055228
/* 55E18 80055218 02402025 */   or        $a0, $s2, $zero
/* 55E1C 8005521C 0C015A30 */  jal        osSendMesg
/* 55E20 80055220 8F040008 */   lw        $a0, 8($t8)
/* 55E24 80055224 02402025 */  or         $a0, $s2, $zero
.L80055228:
/* 55E28 80055228 02602825 */  or         $a1, $s3, $zero
/* 55E2C 8005522C 0C015AB4 */  jal        osRecvMesg
/* 55E30 80055230 00003025 */   or        $a2, $zero, $zero
/* 55E34 80055234 5040FFEF */  beql       $v0, $zero, .L800551F4
/* 55E38 80055238 8FAE002C */   lw        $t6, 0x2c($sp)
.L8005523C:
/* 55E3C 8005523C 8FBF0024 */  lw         $ra, 0x24($sp)
/* 55E40 80055240 8FB00014 */  lw         $s0, 0x14($sp)
/* 55E44 80055244 8FB10018 */  lw         $s1, 0x18($sp)
/* 55E48 80055248 8FB2001C */  lw         $s2, 0x1c($sp)
/* 55E4C 8005524C 8FB30020 */  lw         $s3, 0x20($sp)
/* 55E50 80055250 03E00008 */  jr         $ra
/* 55E54 80055254 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_80055258
/* 55E58 80055258 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 55E5C 8005525C AFBF0014 */  sw         $ra, 0x14($sp)
/* 55E60 80055260 0C014B40 */  jal        func_80052D00
/* 55E64 80055264 00000000 */   nop       
/* 55E68 80055268 24010003 */  addiu      $at, $zero, 3
/* 55E6C 8005526C 10410005 */  beq        $v0, $at, .L80055284
/* 55E70 80055270 3C038010 */   lui       $v1, 0x8010
/* 55E74 80055274 24010029 */  addiu      $at, $zero, 0x29
/* 55E78 80055278 10410002 */  beq        $v0, $at, .L80055284
/* 55E7C 8005527C 2401002B */   addiu     $at, $zero, 0x2b
/* 55E80 80055280 14410007 */  bne        $v0, $at, .L800552A0
.L80055284:
/* 55E84 80055284 246306C8 */   addiu     $v1, $v1, 0x6c8
/* 55E88 80055288 8C6E0000 */  lw         $t6, ($v1)
/* 55E8C 8005528C 240F0002 */  addiu      $t7, $zero, 2
/* 55E90 80055290 A1C20005 */  sb         $v0, 5($t6)
/* 55E94 80055294 8C780000 */  lw         $t8, ($v1)
/* 55E98 80055298 10000007 */  b          .L800552B8
/* 55E9C 8005529C A30F0004 */   sb        $t7, 4($t8)
.L800552A0:
/* 55EA0 800552A0 3C038010 */  lui        $v1, 0x8010
/* 55EA4 800552A4 246306C8 */  addiu      $v1, $v1, 0x6c8
/* 55EA8 800552A8 8C790000 */  lw         $t9, ($v1)
/* 55EAC 800552AC A3200005 */  sb         $zero, 5($t9)
/* 55EB0 800552B0 8C680000 */  lw         $t0, ($v1)
/* 55EB4 800552B4 A1000004 */  sb         $zero, 4($t0)
.L800552B8:
/* 55EB8 800552B8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 55EBC 800552BC 27BD0018 */  addiu      $sp, $sp, 0x18
/* 55EC0 800552C0 03E00008 */  jr         $ra
/* 55EC4 800552C4 00000000 */   nop       
/* 55EC8 800552C8 00000000 */  nop        
/* 55ECC 800552CC 00000000 */  nop        
