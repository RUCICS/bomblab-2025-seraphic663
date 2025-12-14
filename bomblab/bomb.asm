
bomb:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64
    1004:	48 83 ec 08          	sub    $0x8,%rsp
    1008:	48 8b 05 d9 4f 00 00 	mov    0x4fd9(%rip),%rax        # 5fe8 <__gmon_start__>
    100f:	48 85 c0             	test   %rax,%rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	call   *%rax
    1016:	48 83 c4 08          	add    $0x8,%rsp
    101a:	c3                   	ret

Disassembly of section .plt:

0000000000001020 <getenv@plt-0x10>:
    1020:	ff 35 e2 4f 00 00    	push   0x4fe2(%rip)        # 6008 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	ff 25 e4 4f 00 00    	jmp    *0x4fe4(%rip)        # 6010 <_GLOBAL_OFFSET_TABLE_+0x10>
    102c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001030 <getenv@plt>:
    1030:	ff 25 e2 4f 00 00    	jmp    *0x4fe2(%rip)        # 6018 <getenv@GLIBC_2.2.5>
    1036:	68 00 00 00 00       	push   $0x0
    103b:	e9 e0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001040 <strcasecmp@plt>:
    1040:	ff 25 da 4f 00 00    	jmp    *0x4fda(%rip)        # 6020 <strcasecmp@GLIBC_2.2.5>
    1046:	68 01 00 00 00       	push   $0x1
    104b:	e9 d0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001050 <__errno_location@plt>:
    1050:	ff 25 d2 4f 00 00    	jmp    *0x4fd2(%rip)        # 6028 <__errno_location@GLIBC_2.2.5>
    1056:	68 02 00 00 00       	push   $0x2
    105b:	e9 c0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001060 <strcpy@plt>:
    1060:	ff 25 ca 4f 00 00    	jmp    *0x4fca(%rip)        # 6030 <strcpy@GLIBC_2.2.5>
    1066:	68 03 00 00 00       	push   $0x3
    106b:	e9 b0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001070 <puts@plt>:
    1070:	ff 25 c2 4f 00 00    	jmp    *0x4fc2(%rip)        # 6038 <puts@GLIBC_2.2.5>
    1076:	68 04 00 00 00       	push   $0x4
    107b:	e9 a0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001080 <write@plt>:
    1080:	ff 25 ba 4f 00 00    	jmp    *0x4fba(%rip)        # 6040 <write@GLIBC_2.2.5>
    1086:	68 05 00 00 00       	push   $0x5
    108b:	e9 90 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001090 <strlen@plt>:
    1090:	ff 25 b2 4f 00 00    	jmp    *0x4fb2(%rip)        # 6048 <strlen@GLIBC_2.2.5>
    1096:	68 06 00 00 00       	push   $0x6
    109b:	e9 80 ff ff ff       	jmp    1020 <_init+0x20>

00000000000010a0 <__stack_chk_fail@plt>:
    10a0:	ff 25 aa 4f 00 00    	jmp    *0x4faa(%rip)        # 6050 <__stack_chk_fail@GLIBC_2.4>
    10a6:	68 07 00 00 00       	push   $0x7
    10ab:	e9 70 ff ff ff       	jmp    1020 <_init+0x20>

00000000000010b0 <printf@plt>:
    10b0:	ff 25 a2 4f 00 00    	jmp    *0x4fa2(%rip)        # 6058 <printf@GLIBC_2.2.5>
    10b6:	68 08 00 00 00       	push   $0x8
    10bb:	e9 60 ff ff ff       	jmp    1020 <_init+0x20>

00000000000010c0 <alarm@plt>:
    10c0:	ff 25 9a 4f 00 00    	jmp    *0x4f9a(%rip)        # 6060 <alarm@GLIBC_2.2.5>
    10c6:	68 09 00 00 00       	push   $0x9
    10cb:	e9 50 ff ff ff       	jmp    1020 <_init+0x20>

00000000000010d0 <close@plt>:
    10d0:	ff 25 92 4f 00 00    	jmp    *0x4f92(%rip)        # 6068 <close@GLIBC_2.2.5>
    10d6:	68 0a 00 00 00       	push   $0xa
    10db:	e9 40 ff ff ff       	jmp    1020 <_init+0x20>

00000000000010e0 <read@plt>:
    10e0:	ff 25 8a 4f 00 00    	jmp    *0x4f8a(%rip)        # 6070 <read@GLIBC_2.2.5>
    10e6:	68 0b 00 00 00       	push   $0xb
    10eb:	e9 30 ff ff ff       	jmp    1020 <_init+0x20>

00000000000010f0 <fgets@plt>:
    10f0:	ff 25 82 4f 00 00    	jmp    *0x4f82(%rip)        # 6078 <fgets@GLIBC_2.2.5>
    10f6:	68 0c 00 00 00       	push   $0xc
    10fb:	e9 20 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001100 <strcmp@plt>:
    1100:	ff 25 7a 4f 00 00    	jmp    *0x4f7a(%rip)        # 6080 <strcmp@GLIBC_2.2.5>
    1106:	68 0d 00 00 00       	push   $0xd
    110b:	e9 10 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001110 <signal@plt>:
    1110:	ff 25 72 4f 00 00    	jmp    *0x4f72(%rip)        # 6088 <signal@GLIBC_2.2.5>
    1116:	68 0e 00 00 00       	push   $0xe
    111b:	e9 00 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001120 <gethostbyname@plt>:
    1120:	ff 25 6a 4f 00 00    	jmp    *0x4f6a(%rip)        # 6090 <gethostbyname@GLIBC_2.2.5>
    1126:	68 0f 00 00 00       	push   $0xf
    112b:	e9 f0 fe ff ff       	jmp    1020 <_init+0x20>

0000000000001130 <fprintf@plt>:
    1130:	ff 25 62 4f 00 00    	jmp    *0x4f62(%rip)        # 6098 <fprintf@GLIBC_2.2.5>
    1136:	68 10 00 00 00       	push   $0x10
    113b:	e9 e0 fe ff ff       	jmp    1020 <_init+0x20>

0000000000001140 <fflush@plt>:
    1140:	ff 25 5a 4f 00 00    	jmp    *0x4f5a(%rip)        # 60a0 <fflush@GLIBC_2.2.5>
    1146:	68 11 00 00 00       	push   $0x11
    114b:	e9 d0 fe ff ff       	jmp    1020 <_init+0x20>

0000000000001150 <__isoc99_sscanf@plt>:
    1150:	ff 25 52 4f 00 00    	jmp    *0x4f52(%rip)        # 60a8 <__isoc99_sscanf@GLIBC_2.7>
    1156:	68 12 00 00 00       	push   $0x12
    115b:	e9 c0 fe ff ff       	jmp    1020 <_init+0x20>

0000000000001160 <memmove@plt>:
    1160:	ff 25 4a 4f 00 00    	jmp    *0x4f4a(%rip)        # 60b0 <memmove@GLIBC_2.2.5>
    1166:	68 13 00 00 00       	push   $0x13
    116b:	e9 b0 fe ff ff       	jmp    1020 <_init+0x20>

0000000000001170 <fopen@plt>:
    1170:	ff 25 42 4f 00 00    	jmp    *0x4f42(%rip)        # 60b8 <fopen@GLIBC_2.2.5>
    1176:	68 14 00 00 00       	push   $0x14
    117b:	e9 a0 fe ff ff       	jmp    1020 <_init+0x20>

0000000000001180 <sprintf@plt>:
    1180:	ff 25 3a 4f 00 00    	jmp    *0x4f3a(%rip)        # 60c0 <sprintf@GLIBC_2.2.5>
    1186:	68 15 00 00 00       	push   $0x15
    118b:	e9 90 fe ff ff       	jmp    1020 <_init+0x20>

0000000000001190 <exit@plt>:
    1190:	ff 25 32 4f 00 00    	jmp    *0x4f32(%rip)        # 60c8 <exit@GLIBC_2.2.5>
    1196:	68 16 00 00 00       	push   $0x16
    119b:	e9 80 fe ff ff       	jmp    1020 <_init+0x20>

00000000000011a0 <connect@plt>:
    11a0:	ff 25 2a 4f 00 00    	jmp    *0x4f2a(%rip)        # 60d0 <connect@GLIBC_2.2.5>
    11a6:	68 17 00 00 00       	push   $0x17
    11ab:	e9 70 fe ff ff       	jmp    1020 <_init+0x20>

00000000000011b0 <sleep@plt>:
    11b0:	ff 25 22 4f 00 00    	jmp    *0x4f22(%rip)        # 60d8 <sleep@GLIBC_2.2.5>
    11b6:	68 18 00 00 00       	push   $0x18
    11bb:	e9 60 fe ff ff       	jmp    1020 <_init+0x20>

00000000000011c0 <__ctype_b_loc@plt>:
    11c0:	ff 25 1a 4f 00 00    	jmp    *0x4f1a(%rip)        # 60e0 <__ctype_b_loc@GLIBC_2.3>
    11c6:	68 19 00 00 00       	push   $0x19
    11cb:	e9 50 fe ff ff       	jmp    1020 <_init+0x20>

00000000000011d0 <socket@plt>:
    11d0:	ff 25 12 4f 00 00    	jmp    *0x4f12(%rip)        # 60e8 <socket@GLIBC_2.2.5>
    11d6:	68 1a 00 00 00       	push   $0x1a
    11db:	e9 40 fe ff ff       	jmp    1020 <_init+0x20>

Disassembly of section .text:

00000000000011e0 <_start>:
    11e0:	f3 0f 1e fa          	endbr64
    11e4:	31 ed                	xor    %ebp,%ebp
    11e6:	49 89 d1             	mov    %rdx,%r9
    11e9:	5e                   	pop    %rsi
    11ea:	48 89 e2             	mov    %rsp,%rdx
    11ed:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    11f1:	50                   	push   %rax
    11f2:	54                   	push   %rsp
    11f3:	4c 8d 05 46 1c 00 00 	lea    0x1c46(%rip),%r8        # 2e40 <__libc_csu_fini>
    11fa:	48 8d 0d cf 1b 00 00 	lea    0x1bcf(%rip),%rcx        # 2dd0 <__libc_csu_init>
    1201:	48 8d 3d d1 00 00 00 	lea    0xd1(%rip),%rdi        # 12d9 <main>
    1208:	ff 15 d2 4d 00 00    	call   *0x4dd2(%rip)        # 5fe0 <__libc_start_main@GLIBC_2.2.5>
    120e:	f4                   	hlt
    120f:	90                   	nop

0000000000001210 <deregister_tm_clones>:
    1210:	48 8d 3d 49 54 00 00 	lea    0x5449(%rip),%rdi        # 6660 <stdout@GLIBC_2.2.5>
    1217:	48 8d 05 42 54 00 00 	lea    0x5442(%rip),%rax        # 6660 <stdout@GLIBC_2.2.5>
    121e:	48 39 f8             	cmp    %rdi,%rax
    1221:	74 15                	je     1238 <deregister_tm_clones+0x28>
    1223:	48 8b 05 ae 4d 00 00 	mov    0x4dae(%rip),%rax        # 5fd8 <_ITM_deregisterTMCloneTable>
    122a:	48 85 c0             	test   %rax,%rax
    122d:	74 09                	je     1238 <deregister_tm_clones+0x28>
    122f:	ff e0                	jmp    *%rax
    1231:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1238:	c3                   	ret
    1239:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001240 <register_tm_clones>:
    1240:	48 8d 3d 19 54 00 00 	lea    0x5419(%rip),%rdi        # 6660 <stdout@GLIBC_2.2.5>
    1247:	48 8d 35 12 54 00 00 	lea    0x5412(%rip),%rsi        # 6660 <stdout@GLIBC_2.2.5>
    124e:	48 29 fe             	sub    %rdi,%rsi
    1251:	48 89 f0             	mov    %rsi,%rax
    1254:	48 c1 ee 3f          	shr    $0x3f,%rsi
    1258:	48 c1 f8 03          	sar    $0x3,%rax
    125c:	48 01 c6             	add    %rax,%rsi
    125f:	48 d1 fe             	sar    $1,%rsi
    1262:	74 14                	je     1278 <register_tm_clones+0x38>
    1264:	48 8b 05 85 4d 00 00 	mov    0x4d85(%rip),%rax        # 5ff0 <_ITM_registerTMCloneTable>
    126b:	48 85 c0             	test   %rax,%rax
    126e:	74 08                	je     1278 <register_tm_clones+0x38>
    1270:	ff e0                	jmp    *%rax
    1272:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1278:	c3                   	ret
    1279:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001280 <__do_global_dtors_aux>:
    1280:	f3 0f 1e fa          	endbr64
    1284:	80 3d fd 53 00 00 00 	cmpb   $0x0,0x53fd(%rip)        # 6688 <completed.0>
    128b:	75 33                	jne    12c0 <__do_global_dtors_aux+0x40>
    128d:	55                   	push   %rbp
    128e:	48 83 3d 62 4d 00 00 	cmpq   $0x0,0x4d62(%rip)        # 5ff8 <__cxa_finalize@GLIBC_2.2.5>
    1295:	00 
    1296:	48 89 e5             	mov    %rsp,%rbp
    1299:	74 0d                	je     12a8 <__do_global_dtors_aux+0x28>
    129b:	48 8b 3d 66 4e 00 00 	mov    0x4e66(%rip),%rdi        # 6108 <__dso_handle>
    12a2:	ff 15 50 4d 00 00    	call   *0x4d50(%rip)        # 5ff8 <__cxa_finalize@GLIBC_2.2.5>
    12a8:	e8 63 ff ff ff       	call   1210 <deregister_tm_clones>
    12ad:	c6 05 d4 53 00 00 01 	movb   $0x1,0x53d4(%rip)        # 6688 <completed.0>
    12b4:	5d                   	pop    %rbp
    12b5:	c3                   	ret
    12b6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    12bd:	00 00 00 
    12c0:	c3                   	ret
    12c1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    12c8:	00 00 00 00 
    12cc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000000012d0 <frame_dummy>:
    12d0:	f3 0f 1e fa          	endbr64
    12d4:	e9 67 ff ff ff       	jmp    1240 <register_tm_clones>

00000000000012d9 <main>:
    12d9:	53                   	push   %rbx
    12da:	83 ff 01             	cmp    $0x1,%edi
    12dd:	0f 84 04 01 00 00    	je     13e7 <main+0x10e>
    12e3:	48 89 f3             	mov    %rsi,%rbx
    12e6:	83 ff 02             	cmp    $0x2,%edi
    12e9:	0f 85 28 01 00 00    	jne    1417 <main+0x13e>
    12ef:	48 8b 7e 08          	mov    0x8(%rsi),%rdi
    12f3:	48 8d 35 2c 23 00 00 	lea    0x232c(%rip),%rsi        # 3626 <array.0+0x3e6>
    12fa:	e8 71 fe ff ff       	call   1170 <fopen@plt>
    12ff:	48 89 05 8a 53 00 00 	mov    %rax,0x538a(%rip)        # 6690 <infile>
    1306:	48 85 c0             	test   %rax,%rax
    1309:	0f 84 eb 00 00 00    	je     13fa <main+0x121>
    130f:	e8 ce 09 00 00       	call   1ce2 <initialize_bomb>
    1314:	48 8d 3d 65 1d 00 00 	lea    0x1d65(%rip),%rdi        # 3080 <_IO_stdin_used+0x80>
    131b:	e8 50 fd ff ff       	call   1070 <puts@plt>
    1320:	48 8d 3d 99 1d 00 00 	lea    0x1d99(%rip),%rdi        # 30c0 <_IO_stdin_used+0xc0>
    1327:	e8 44 fd ff ff       	call   1070 <puts@plt>
    132c:	e8 bb 0c 00 00       	call   1fec <read_line>
    1331:	48 89 c7             	mov    %rax,%rdi
    1334:	e8 fc 00 00 00       	call   1435 <phase_1>
    1339:	e8 e8 0d 00 00       	call   2126 <phase_defused>
    133e:	48 8d 3d ab 1d 00 00 	lea    0x1dab(%rip),%rdi        # 30f0 <_IO_stdin_used+0xf0>
    1345:	e8 26 fd ff ff       	call   1070 <puts@plt>
    134a:	e8 9d 0c 00 00       	call   1fec <read_line>
    134f:	48 89 c7             	mov    %rax,%rdi
    1352:	e8 fe 00 00 00       	call   1455 <phase_2>
    1357:	e8 ca 0d 00 00       	call   2126 <phase_defused>
    135c:	48 8d 3d d8 1c 00 00 	lea    0x1cd8(%rip),%rdi        # 303b <_IO_stdin_used+0x3b>
    1363:	e8 08 fd ff ff       	call   1070 <puts@plt>
    1368:	e8 7f 0c 00 00       	call   1fec <read_line>
    136d:	48 89 c7             	mov    %rax,%rdi
    1370:	e8 cf 01 00 00       	call   1544 <phase_3>
    1375:	e8 ac 0d 00 00       	call   2126 <phase_defused>
    137a:	48 8d 3d cb 1c 00 00 	lea    0x1ccb(%rip),%rdi        # 304c <_IO_stdin_used+0x4c>
    1381:	e8 ea fc ff ff       	call   1070 <puts@plt>
    1386:	48 8d 3d 93 1d 00 00 	lea    0x1d93(%rip),%rdi        # 3120 <_IO_stdin_used+0x120>
    138d:	e8 de fc ff ff       	call   1070 <puts@plt>
    1392:	e8 55 0c 00 00       	call   1fec <read_line>
    1397:	48 89 c7             	mov    %rax,%rdi
    139a:	e8 53 03 00 00       	call   16f2 <phase_4>
    139f:	e8 82 0d 00 00       	call   2126 <phase_defused>
    13a4:	48 8d 3d ad 1d 00 00 	lea    0x1dad(%rip),%rdi        # 3158 <_IO_stdin_used+0x158>
    13ab:	e8 c0 fc ff ff       	call   1070 <puts@plt>
    13b0:	e8 37 0c 00 00       	call   1fec <read_line>
    13b5:	48 89 c7             	mov    %rax,%rdi
    13b8:	e8 f3 03 00 00       	call   17b0 <phase_5>
    13bd:	e8 64 0d 00 00       	call   2126 <phase_defused>
    13c2:	48 8d 3d 92 1c 00 00 	lea    0x1c92(%rip),%rdi        # 305b <_IO_stdin_used+0x5b>
    13c9:	e8 a2 fc ff ff       	call   1070 <puts@plt>
    13ce:	e8 19 0c 00 00       	call   1fec <read_line>
    13d3:	48 89 c7             	mov    %rax,%rdi
    13d6:	e8 6c 04 00 00       	call   1847 <phase_6>
    13db:	e8 46 0d 00 00       	call   2126 <phase_defused>
    13e0:	b8 00 00 00 00       	mov    $0x0,%eax
    13e5:	5b                   	pop    %rbx
    13e6:	c3                   	ret
    13e7:	48 8b 05 82 52 00 00 	mov    0x5282(%rip),%rax        # 6670 <stdin@GLIBC_2.2.5>
    13ee:	48 89 05 9b 52 00 00 	mov    %rax,0x529b(%rip)        # 6690 <infile>
    13f5:	e9 15 ff ff ff       	jmp    130f <main+0x36>
    13fa:	48 8b 53 08          	mov    0x8(%rbx),%rdx
    13fe:	48 8b 33             	mov    (%rbx),%rsi
    1401:	48 8d 3d fc 1b 00 00 	lea    0x1bfc(%rip),%rdi        # 3004 <_IO_stdin_used+0x4>
    1408:	e8 a3 fc ff ff       	call   10b0 <printf@plt>
    140d:	bf 08 00 00 00       	mov    $0x8,%edi
    1412:	e8 79 fd ff ff       	call   1190 <exit@plt>
    1417:	48 8b 36             	mov    (%rsi),%rsi
    141a:	48 8d 3d 00 1c 00 00 	lea    0x1c00(%rip),%rdi        # 3021 <_IO_stdin_used+0x21>
    1421:	b8 00 00 00 00       	mov    $0x0,%eax
    1426:	e8 85 fc ff ff       	call   10b0 <printf@plt>
    142b:	bf 08 00 00 00       	mov    $0x8,%edi
    1430:	e8 5b fd ff ff       	call   1190 <exit@plt>

0000000000001435 <phase_1>:
    1435:	48 83 ec 08          	sub    $0x8,%rsp
    1439:	48 8d 35 40 1d 00 00 	lea    0x1d40(%rip),%rsi        # 3180 <_IO_stdin_used+0x180>
    1440:	e8 41 08 00 00       	call   1c86 <strings_not_equal>
    1445:	85 c0                	test   %eax,%eax
    1447:	75 05                	jne    144e <phase_1+0x19>
    1449:	48 83 c4 08          	add    $0x8,%rsp
    144d:	c3                   	ret
    144e:	e8 98 0a 00 00       	call   1eeb <explode_bomb>
    1453:	eb f4                	jmp    1449 <phase_1+0x14>

0000000000001455 <phase_2>:
    1455:	55                   	push   %rbp
    1456:	53                   	push   %rbx
    1457:	48 83 ec 38          	sub    $0x38,%rsp
    145b:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1462:	00 00 
    1464:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
    1469:	31 c0                	xor    %eax,%eax
    146b:	48 89 e2             	mov    %rsp,%rdx
    146e:	48 8d 4c 24 04       	lea    0x4(%rsp),%rcx
    1473:	4c 8d 4c 24 0c       	lea    0xc(%rsp),%r9
    1478:	4c 8d 44 24 08       	lea    0x8(%rsp),%r8
    147d:	48 8d 35 4d 21 00 00 	lea    0x214d(%rip),%rsi        # 35d1 <array.0+0x391>
    1484:	e8 c7 fc ff ff       	call   1150 <__isoc99_sscanf@plt>
    1489:	83 f8 04             	cmp    $0x4,%eax
    148c:	75 14                	jne    14a2 <phase_2+0x4d>
    148e:	48 8d 3d 9b 4c 00 00 	lea    0x4c9b(%rip),%rdi        # 6130 <matA.2>
    1495:	48 8d 5c 24 10       	lea    0x10(%rsp),%rbx
    149a:	41 bb 00 00 00 00    	mov    $0x0,%r11d
    14a0:	eb 19                	jmp    14bb <phase_2+0x66>
    14a2:	e8 44 0a 00 00       	call   1eeb <explode_bomb>
    14a7:	eb e5                	jmp    148e <phase_2+0x39>
    14a9:	41 83 c3 01          	add    $0x1,%r11d
    14ad:	48 83 c7 0c          	add    $0xc,%rdi
    14b1:	48 83 c3 08          	add    $0x8,%rbx
    14b5:	41 83 fb 02          	cmp    $0x2,%r11d
    14b9:	74 47                	je     1502 <phase_2+0xad>
    14bb:	48 8d 35 4e 4c 00 00 	lea    0x4c4e(%rip),%rsi        # 6110 <matB.1>
    14c2:	49 89 d9             	mov    %rbx,%r9
    14c5:	41 b8 00 00 00 00    	mov    $0x0,%r8d
    14cb:	4d 89 ca             	mov    %r9,%r10
    14ce:	b8 00 00 00 00       	mov    $0x0,%eax
    14d3:	b9 00 00 00 00       	mov    $0x0,%ecx
    14d8:	8b 14 87             	mov    (%rdi,%rax,4),%edx
    14db:	0f af 14 c6          	imul   (%rsi,%rax,8),%edx
    14df:	01 d1                	add    %edx,%ecx
    14e1:	48 83 c0 01          	add    $0x1,%rax
    14e5:	48 83 f8 03          	cmp    $0x3,%rax
    14e9:	75 ed                	jne    14d8 <phase_2+0x83>
    14eb:	41 89 0a             	mov    %ecx,(%r10)
    14ee:	41 83 c0 01          	add    $0x1,%r8d
    14f2:	49 83 c1 04          	add    $0x4,%r9
    14f6:	48 83 c6 04          	add    $0x4,%rsi
    14fa:	41 83 f8 02          	cmp    $0x2,%r8d
    14fe:	75 cb                	jne    14cb <phase_2+0x76>
    1500:	eb a7                	jmp    14a9 <phase_2+0x54>
    1502:	bb 00 00 00 00       	mov    $0x0,%ebx
    1507:	48 8d 6c 24 10       	lea    0x10(%rsp),%rbp
    150c:	eb 0a                	jmp    1518 <phase_2+0xc3>
    150e:	48 83 c3 04          	add    $0x4,%rbx
    1512:	48 83 fb 10          	cmp    $0x10,%rbx
    1516:	74 10                	je     1528 <phase_2+0xd3>
    1518:	8b 44 1d 00          	mov    0x0(%rbp,%rbx,1),%eax
    151c:	39 04 1c             	cmp    %eax,(%rsp,%rbx,1)
    151f:	74 ed                	je     150e <phase_2+0xb9>
    1521:	e8 c5 09 00 00       	call   1eeb <explode_bomb>
    1526:	eb e6                	jmp    150e <phase_2+0xb9>
    1528:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    152d:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    1534:	00 00 
    1536:	75 07                	jne    153f <phase_2+0xea>
    1538:	48 83 c4 38          	add    $0x38,%rsp
    153c:	5b                   	pop    %rbx
    153d:	5d                   	pop    %rbp
    153e:	c3                   	ret
    153f:	e8 5c fb ff ff       	call   10a0 <__stack_chk_fail@plt>

0000000000001544 <phase_3>:
    1544:	53                   	push   %rbx
    1545:	48 83 ec 10          	sub    $0x10,%rsp
    1549:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1550:	00 00 
    1552:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    1557:	31 c0                	xor    %eax,%eax
    1559:	48 8d 4c 24 04       	lea    0x4(%rsp),%rcx
    155e:	48 89 e2             	mov    %rsp,%rdx
    1561:	48 8d 35 6f 20 00 00 	lea    0x206f(%rip),%rsi        # 35d7 <array.0+0x397>
    1568:	e8 e3 fb ff ff       	call   1150 <__isoc99_sscanf@plt>
    156d:	83 f8 01             	cmp    $0x1,%eax
    1570:	7e 07                	jle    1579 <phase_3+0x35>
    1572:	83 7c 24 04 00       	cmpl   $0x0,0x4(%rsp)
    1577:	78 05                	js     157e <phase_3+0x3a>
    1579:	e8 6d 09 00 00       	call   1eeb <explode_bomb>
    157e:	83 3c 24 07          	cmpl   $0x7,(%rsp)
    1582:	0f 87 9a 00 00 00    	ja     1622 <phase_3+0xde>
    1588:	8b 04 24             	mov    (%rsp),%eax
    158b:	48 8d 15 8e 1c 00 00 	lea    0x1c8e(%rip),%rdx        # 3220 <_IO_stdin_used+0x220>
    1592:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
    1596:	48 01 d0             	add    %rdx,%rax
    1599:	ff e0                	jmp    *%rax
    159b:	b8 27 03 00 00       	mov    $0x327,%eax
    15a0:	2d c9 03 00 00       	sub    $0x3c9,%eax
    15a5:	05 50 03 00 00       	add    $0x350,%eax
    15aa:	8d 98 e2 fd ff ff    	lea    -0x21e(%rax),%ebx
    15b0:	e8 36 09 00 00       	call   1eeb <explode_bomb>
    15b5:	8d 83 1e 02 00 00    	lea    0x21e(%rbx),%eax
    15bb:	2d 1e 02 00 00       	sub    $0x21e,%eax
    15c0:	05 1e 02 00 00       	add    $0x21e,%eax
    15c5:	2d 1e 02 00 00       	sub    $0x21e,%eax
    15ca:	83 3c 24 05          	cmpl   $0x5,(%rsp)
    15ce:	7f 06                	jg     15d6 <phase_3+0x92>
    15d0:	39 44 24 04          	cmp    %eax,0x4(%rsp)
    15d4:	74 05                	je     15db <phase_3+0x97>
    15d6:	e8 10 09 00 00       	call   1eeb <explode_bomb>
    15db:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    15e0:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    15e7:	00 00 
    15e9:	75 43                	jne    162e <phase_3+0xea>
    15eb:	48 83 c4 10          	add    $0x10,%rsp
    15ef:	5b                   	pop    %rbx
    15f0:	c3                   	ret
    15f1:	b8 00 00 00 00       	mov    $0x0,%eax
    15f6:	eb a8                	jmp    15a0 <phase_3+0x5c>
    15f8:	b8 00 00 00 00       	mov    $0x0,%eax
    15fd:	eb a6                	jmp    15a5 <phase_3+0x61>
    15ff:	b8 00 00 00 00       	mov    $0x0,%eax
    1604:	eb a4                	jmp    15aa <phase_3+0x66>
    1606:	bb 00 00 00 00       	mov    $0x0,%ebx
    160b:	eb a8                	jmp    15b5 <phase_3+0x71>
    160d:	b8 00 00 00 00       	mov    $0x0,%eax
    1612:	eb a7                	jmp    15bb <phase_3+0x77>
    1614:	b8 00 00 00 00       	mov    $0x0,%eax
    1619:	eb a5                	jmp    15c0 <phase_3+0x7c>
    161b:	b8 00 00 00 00       	mov    $0x0,%eax
    1620:	eb a3                	jmp    15c5 <phase_3+0x81>
    1622:	e8 c4 08 00 00       	call   1eeb <explode_bomb>
    1627:	b8 00 00 00 00       	mov    $0x0,%eax
    162c:	eb 9c                	jmp    15ca <phase_3+0x86>
    162e:	e8 6d fa ff ff       	call   10a0 <__stack_chk_fail@plt>

0000000000001633 <func4_1>:
    1633:	b8 00 00 00 00       	mov    $0x0,%eax
    1638:	85 ff                	test   %edi,%edi
    163a:	7e 1c                	jle    1658 <func4_1+0x25>
    163c:	89 f8                	mov    %edi,%eax
    163e:	83 ff 01             	cmp    $0x1,%edi
    1641:	74 15                	je     1658 <func4_1+0x25>
    1643:	48 83 ec 08          	sub    $0x8,%rsp
    1647:	83 ef 01             	sub    $0x1,%edi
    164a:	e8 e4 ff ff ff       	call   1633 <func4_1>
    164f:	8d 44 00 01          	lea    0x1(%rax,%rax,1),%eax
    1653:	48 83 c4 08          	add    $0x8,%rsp
    1657:	c3                   	ret
    1658:	c3                   	ret

0000000000001659 <func4_2>:
    1659:	41 57                	push   %r15
    165b:	41 56                	push   %r14
    165d:	41 55                	push   %r13
    165f:	41 54                	push   %r12
    1661:	55                   	push   %rbp
    1662:	53                   	push   %rbx
    1663:	48 83 ec 08          	sub    $0x8,%rsp
    1667:	41 89 d4             	mov    %edx,%r12d
    166a:	41 89 cd             	mov    %ecx,%r13d
    166d:	4c 89 cd             	mov    %r9,%rbp
    1670:	83 ff 01             	cmp    $0x1,%edi
    1673:	74 2a                	je     169f <func4_2+0x46>
    1675:	89 f3                	mov    %esi,%ebx
    1677:	45 89 c6             	mov    %r8d,%r14d
    167a:	44 8d 7f ff          	lea    -0x1(%rdi),%r15d
    167e:	44 89 ff             	mov    %r15d,%edi
    1681:	e8 ad ff ff ff       	call   1633 <func4_1>
    1686:	39 d8                	cmp    %ebx,%eax
    1688:	7d 2f                	jge    16b9 <func4_2+0x60>
    168a:	8d 50 01             	lea    0x1(%rax),%edx
    168d:	39 da                	cmp    %ebx,%edx
    168f:	75 43                	jne    16d4 <func4_2+0x7b>
    1691:	44 88 65 00          	mov    %r12b,0x0(%rbp)
    1695:	44 88 6d 01          	mov    %r13b,0x1(%rbp)
    1699:	c6 45 02 00          	movb   $0x0,0x2(%rbp)
    169d:	eb 0b                	jmp    16aa <func4_2+0x51>
    169f:	88 55 00             	mov    %dl,0x0(%rbp)
    16a2:	88 4d 01             	mov    %cl,0x1(%rbp)
    16a5:	41 c6 41 02 00       	movb   $0x0,0x2(%r9)
    16aa:	48 83 c4 08          	add    $0x8,%rsp
    16ae:	5b                   	pop    %rbx
    16af:	5d                   	pop    %rbp
    16b0:	41 5c                	pop    %r12
    16b2:	41 5d                	pop    %r13
    16b4:	41 5e                	pop    %r14
    16b6:	41 5f                	pop    %r15
    16b8:	c3                   	ret
    16b9:	41 0f be ce          	movsbl %r14b,%ecx
    16bd:	41 0f be d4          	movsbl %r12b,%edx
    16c1:	49 89 e9             	mov    %rbp,%r9
    16c4:	45 0f be c5          	movsbl %r13b,%r8d
    16c8:	89 de                	mov    %ebx,%esi
    16ca:	44 89 ff             	mov    %r15d,%edi
    16cd:	e8 87 ff ff ff       	call   1659 <func4_2>
    16d2:	eb d6                	jmp    16aa <func4_2+0x51>
    16d4:	41 0f be cd          	movsbl %r13b,%ecx
    16d8:	41 0f be d6          	movsbl %r14b,%edx
    16dc:	29 c3                	sub    %eax,%ebx
    16de:	8d 73 ff             	lea    -0x1(%rbx),%esi
    16e1:	49 89 e9             	mov    %rbp,%r9
    16e4:	45 0f be c4          	movsbl %r12b,%r8d
    16e8:	44 89 ff             	mov    %r15d,%edi
    16eb:	e8 69 ff ff ff       	call   1659 <func4_2>
    16f0:	eb b8                	jmp    16aa <func4_2+0x51>

00000000000016f2 <phase_4>:
    16f2:	53                   	push   %rbx
    16f3:	48 83 ec 20          	sub    $0x20,%rsp
    16f7:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    16fe:	00 00 
    1700:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    1705:	31 c0                	xor    %eax,%eax
    1707:	48 8d 4c 24 10       	lea    0x10(%rsp),%rcx
    170c:	48 8d 54 24 0c       	lea    0xc(%rsp),%rdx
    1711:	48 8d 35 cd 1a 00 00 	lea    0x1acd(%rip),%rsi        # 31e5 <_IO_stdin_used+0x1e5>
    1718:	e8 33 fa ff ff       	call   1150 <__isoc99_sscanf@plt>
    171d:	83 f8 02             	cmp    $0x2,%eax
    1720:	75 6d                	jne    178f <phase_4+0x9d>
    1722:	bf 05 00 00 00       	mov    $0x5,%edi
    1727:	e8 07 ff ff ff       	call   1633 <func4_1>
    172c:	39 44 24 0c          	cmp    %eax,0xc(%rsp)
    1730:	75 64                	jne    1796 <phase_4+0xa4>
    1732:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
    1737:	e8 2d 05 00 00       	call   1c69 <string_length>
    173c:	83 f8 02             	cmp    $0x2,%eax
    173f:	75 5c                	jne    179d <phase_4+0xab>
    1741:	48 8d 5c 24 14       	lea    0x14(%rsp),%rbx
    1746:	49 89 d9             	mov    %rbx,%r9
    1749:	41 b8 42 00 00 00    	mov    $0x42,%r8d
    174f:	b9 43 00 00 00       	mov    $0x43,%ecx
    1754:	ba 41 00 00 00       	mov    $0x41,%edx
    1759:	be 0c 00 00 00       	mov    $0xc,%esi
    175e:	bf 05 00 00 00       	mov    $0x5,%edi
    1763:	e8 f1 fe ff ff       	call   1659 <func4_2>
    1768:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
    176d:	48 89 de             	mov    %rbx,%rsi
    1770:	e8 11 05 00 00       	call   1c86 <strings_not_equal>
    1775:	85 c0                	test   %eax,%eax
    1777:	75 2b                	jne    17a4 <phase_4+0xb2>
    1779:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
    177e:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    1785:	00 00 
    1787:	75 22                	jne    17ab <phase_4+0xb9>
    1789:	48 83 c4 20          	add    $0x20,%rsp
    178d:	5b                   	pop    %rbx
    178e:	c3                   	ret
    178f:	e8 57 07 00 00       	call   1eeb <explode_bomb>
    1794:	eb 8c                	jmp    1722 <phase_4+0x30>
    1796:	e8 50 07 00 00       	call   1eeb <explode_bomb>
    179b:	eb 95                	jmp    1732 <phase_4+0x40>
    179d:	e8 49 07 00 00       	call   1eeb <explode_bomb>
    17a2:	eb 9d                	jmp    1741 <phase_4+0x4f>
    17a4:	e8 42 07 00 00       	call   1eeb <explode_bomb>
    17a9:	eb ce                	jmp    1779 <phase_4+0x87>
    17ab:	e8 f0 f8 ff ff       	call   10a0 <__stack_chk_fail@plt>

00000000000017b0 <phase_5>:
    17b0:	48 83 ec 18          	sub    $0x18,%rsp
    17b4:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    17bb:	00 00 
    17bd:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    17c2:	31 c0                	xor    %eax,%eax
    17c4:	48 8d 4c 24 04       	lea    0x4(%rsp),%rcx
    17c9:	48 89 e2             	mov    %rsp,%rdx
    17cc:	48 8d 35 04 1e 00 00 	lea    0x1e04(%rip),%rsi        # 35d7 <array.0+0x397>
    17d3:	e8 78 f9 ff ff       	call   1150 <__isoc99_sscanf@plt>
    17d8:	83 f8 01             	cmp    $0x1,%eax
    17db:	7e 06                	jle    17e3 <phase_5+0x33>
    17dd:	83 3c 24 00          	cmpl   $0x0,(%rsp)
    17e1:	78 05                	js     17e8 <phase_5+0x38>
    17e3:	e8 03 07 00 00       	call   1eeb <explode_bomb>
    17e8:	8b 04 24             	mov    (%rsp),%eax
    17eb:	83 e0 0f             	and    $0xf,%eax
    17ee:	89 04 24             	mov    %eax,(%rsp)
    17f1:	83 f8 0f             	cmp    $0xf,%eax
    17f4:	74 32                	je     1828 <phase_5+0x78>
    17f6:	b9 00 00 00 00       	mov    $0x0,%ecx
    17fb:	ba 00 00 00 00       	mov    $0x0,%edx
    1800:	48 8d 35 39 1a 00 00 	lea    0x1a39(%rip),%rsi        # 3240 <array.0>
    1807:	83 c2 01             	add    $0x1,%edx
    180a:	48 98                	cltq
    180c:	8b 04 86             	mov    (%rsi,%rax,4),%eax
    180f:	01 c1                	add    %eax,%ecx
    1811:	83 f8 0f             	cmp    $0xf,%eax
    1814:	75 f1                	jne    1807 <phase_5+0x57>
    1816:	c7 04 24 0f 00 00 00 	movl   $0xf,(%rsp)
    181d:	83 fa 07             	cmp    $0x7,%edx
    1820:	75 06                	jne    1828 <phase_5+0x78>
    1822:	39 4c 24 04          	cmp    %ecx,0x4(%rsp)
    1826:	74 05                	je     182d <phase_5+0x7d>
    1828:	e8 be 06 00 00       	call   1eeb <explode_bomb>
    182d:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    1832:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    1839:	00 00 
    183b:	75 05                	jne    1842 <phase_5+0x92>
    183d:	48 83 c4 18          	add    $0x18,%rsp
    1841:	c3                   	ret
    1842:	e8 59 f8 ff ff       	call   10a0 <__stack_chk_fail@plt>

0000000000001847 <phase_6>:
    1847:	41 56                	push   %r14
    1849:	41 55                	push   %r13
    184b:	41 54                	push   %r12
    184d:	55                   	push   %rbp
    184e:	53                   	push   %rbx
    184f:	48 83 ec 60          	sub    $0x60,%rsp
    1853:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    185a:	00 00 
    185c:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
    1861:	31 c0                	xor    %eax,%eax
    1863:	49 89 e5             	mov    %rsp,%r13
    1866:	4c 89 ee             	mov    %r13,%rsi
    1869:	e8 3d 07 00 00       	call   1fab <read_six_numbers>
    186e:	41 be 01 00 00 00    	mov    $0x1,%r14d
    1874:	49 89 e4             	mov    %rsp,%r12
    1877:	eb 28                	jmp    18a1 <phase_6+0x5a>
    1879:	e8 6d 06 00 00       	call   1eeb <explode_bomb>
    187e:	eb 30                	jmp    18b0 <phase_6+0x69>
    1880:	48 83 c3 01          	add    $0x1,%rbx
    1884:	83 fb 05             	cmp    $0x5,%ebx
    1887:	7f 10                	jg     1899 <phase_6+0x52>
    1889:	41 8b 04 9c          	mov    (%r12,%rbx,4),%eax
    188d:	39 45 00             	cmp    %eax,0x0(%rbp)
    1890:	75 ee                	jne    1880 <phase_6+0x39>
    1892:	e8 54 06 00 00       	call   1eeb <explode_bomb>
    1897:	eb e7                	jmp    1880 <phase_6+0x39>
    1899:	49 83 c6 01          	add    $0x1,%r14
    189d:	49 83 c5 04          	add    $0x4,%r13
    18a1:	4c 89 ed             	mov    %r13,%rbp
    18a4:	41 8b 45 00          	mov    0x0(%r13),%eax
    18a8:	83 e8 01             	sub    $0x1,%eax
    18ab:	83 f8 05             	cmp    $0x5,%eax
    18ae:	77 c9                	ja     1879 <phase_6+0x32>
    18b0:	41 83 fe 05          	cmp    $0x5,%r14d
    18b4:	7f 05                	jg     18bb <phase_6+0x74>
    18b6:	4c 89 f3             	mov    %r14,%rbx
    18b9:	eb ce                	jmp    1889 <phase_6+0x42>
    18bb:	be 00 00 00 00       	mov    $0x0,%esi
    18c0:	8b 0c b4             	mov    (%rsp,%rsi,4),%ecx
    18c3:	b8 01 00 00 00       	mov    $0x1,%eax
    18c8:	48 8d 15 41 49 00 00 	lea    0x4941(%rip),%rdx        # 6210 <node1>
    18cf:	83 f9 01             	cmp    $0x1,%ecx
    18d2:	7e 0b                	jle    18df <phase_6+0x98>
    18d4:	48 8b 52 08          	mov    0x8(%rdx),%rdx
    18d8:	83 c0 01             	add    $0x1,%eax
    18db:	39 c8                	cmp    %ecx,%eax
    18dd:	75 f5                	jne    18d4 <phase_6+0x8d>
    18df:	48 89 54 f4 20       	mov    %rdx,0x20(%rsp,%rsi,8)
    18e4:	48 83 c6 01          	add    $0x1,%rsi
    18e8:	48 83 fe 06          	cmp    $0x6,%rsi
    18ec:	75 d2                	jne    18c0 <phase_6+0x79>
    18ee:	48 8b 5c 24 20       	mov    0x20(%rsp),%rbx
    18f3:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    18f8:	48 89 43 08          	mov    %rax,0x8(%rbx)
    18fc:	48 8b 54 24 30       	mov    0x30(%rsp),%rdx
    1901:	48 89 50 08          	mov    %rdx,0x8(%rax)
    1905:	48 8b 44 24 38       	mov    0x38(%rsp),%rax
    190a:	48 89 42 08          	mov    %rax,0x8(%rdx)
    190e:	48 8b 54 24 40       	mov    0x40(%rsp),%rdx
    1913:	48 89 50 08          	mov    %rdx,0x8(%rax)
    1917:	48 8b 44 24 48       	mov    0x48(%rsp),%rax
    191c:	48 89 42 08          	mov    %rax,0x8(%rdx)
    1920:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
    1927:	00 
    1928:	bd 05 00 00 00       	mov    $0x5,%ebp
    192d:	eb 09                	jmp    1938 <phase_6+0xf1>
    192f:	48 8b 5b 08          	mov    0x8(%rbx),%rbx
    1933:	83 ed 01             	sub    $0x1,%ebp
    1936:	74 11                	je     1949 <phase_6+0x102>
    1938:	48 8b 43 08          	mov    0x8(%rbx),%rax
    193c:	8b 00                	mov    (%rax),%eax
    193e:	39 03                	cmp    %eax,(%rbx)
    1940:	7e ed                	jle    192f <phase_6+0xe8>
    1942:	e8 a4 05 00 00       	call   1eeb <explode_bomb>
    1947:	eb e6                	jmp    192f <phase_6+0xe8>
    1949:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
    194e:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    1955:	00 00 
    1957:	75 0d                	jne    1966 <phase_6+0x11f>
    1959:	48 83 c4 60          	add    $0x60,%rsp
    195d:	5b                   	pop    %rbx
    195e:	5d                   	pop    %rbp
    195f:	41 5c                	pop    %r12
    1961:	41 5d                	pop    %r13
    1963:	41 5e                	pop    %r14
    1965:	c3                   	ret
    1966:	e8 35 f7 ff ff       	call   10a0 <__stack_chk_fail@plt>

000000000000196b <func7>:
    196b:	48 81 ec 98 00 00 00 	sub    $0x98,%rsp
    1972:	89 f0                	mov    %esi,%eax
    1974:	41 89 c9             	mov    %ecx,%r9d
    1977:	64 48 8b 0c 25 28 00 	mov    %fs:0x28,%rcx
    197e:	00 00 
    1980:	48 89 8c 24 88 00 00 	mov    %rcx,0x88(%rsp)
    1987:	00 
    1988:	31 c9                	xor    %ecx,%ecx
    198a:	c7 04 24 fe ff ff ff 	movl   $0xfffffffe,(%rsp)
    1991:	c7 44 24 04 ff ff ff 	movl   $0xffffffff,0x4(%rsp)
    1998:	ff 
    1999:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%rsp)
    19a0:	00 
    19a1:	c7 44 24 0c 02 00 00 	movl   $0x2,0xc(%rsp)
    19a8:	00 
    19a9:	c7 44 24 10 02 00 00 	movl   $0x2,0x10(%rsp)
    19b0:	00 
    19b1:	c7 44 24 14 01 00 00 	movl   $0x1,0x14(%rsp)
    19b8:	00 
    19b9:	c7 44 24 18 ff ff ff 	movl   $0xffffffff,0x18(%rsp)
    19c0:	ff 
    19c1:	c7 44 24 1c fe ff ff 	movl   $0xfffffffe,0x1c(%rsp)
    19c8:	ff 
    19c9:	c7 44 24 20 01 00 00 	movl   $0x1,0x20(%rsp)
    19d0:	00 
    19d1:	c7 44 24 24 02 00 00 	movl   $0x2,0x24(%rsp)
    19d8:	00 
    19d9:	c7 44 24 28 02 00 00 	movl   $0x2,0x28(%rsp)
    19e0:	00 
    19e1:	c7 44 24 2c 01 00 00 	movl   $0x1,0x2c(%rsp)
    19e8:	00 
    19e9:	c7 44 24 30 ff ff ff 	movl   $0xffffffff,0x30(%rsp)
    19f0:	ff 
    19f1:	c7 44 24 34 fe ff ff 	movl   $0xfffffffe,0x34(%rsp)
    19f8:	ff 
    19f9:	c7 44 24 38 fe ff ff 	movl   $0xfffffffe,0x38(%rsp)
    1a00:	ff 
    1a01:	c7 44 24 3c ff ff ff 	movl   $0xffffffff,0x3c(%rsp)
    1a08:	ff 
    1a09:	c7 44 24 40 ff ff ff 	movl   $0xffffffff,0x40(%rsp)
    1a10:	ff 
    1a11:	c7 44 24 44 00 00 00 	movl   $0x0,0x44(%rsp)
    1a18:	00 
    1a19:	c7 44 24 48 00 00 00 	movl   $0x0,0x48(%rsp)
    1a20:	00 
    1a21:	c7 44 24 4c 01 00 00 	movl   $0x1,0x4c(%rsp)
    1a28:	00 
    1a29:	c7 44 24 50 01 00 00 	movl   $0x1,0x50(%rsp)
    1a30:	00 
    1a31:	c7 44 24 54 00 00 00 	movl   $0x0,0x54(%rsp)
    1a38:	00 
    1a39:	c7 44 24 58 00 00 00 	movl   $0x0,0x58(%rsp)
    1a40:	00 
    1a41:	c7 44 24 5c ff ff ff 	movl   $0xffffffff,0x5c(%rsp)
    1a48:	ff 
    1a49:	c7 44 24 60 00 00 00 	movl   $0x0,0x60(%rsp)
    1a50:	00 
    1a51:	c7 44 24 64 01 00 00 	movl   $0x1,0x64(%rsp)
    1a58:	00 
    1a59:	c7 44 24 68 01 00 00 	movl   $0x1,0x68(%rsp)
    1a60:	00 
    1a61:	c7 44 24 6c 00 00 00 	movl   $0x0,0x6c(%rsp)
    1a68:	00 
    1a69:	c7 44 24 70 00 00 00 	movl   $0x0,0x70(%rsp)
    1a70:	00 
    1a71:	c7 44 24 74 ff ff ff 	movl   $0xffffffff,0x74(%rsp)
    1a78:	ff 
    1a79:	c7 44 24 78 ff ff ff 	movl   $0xffffffff,0x78(%rsp)
    1a80:	ff 
    1a81:	c7 44 24 7c 00 00 00 	movl   $0x0,0x7c(%rsp)
    1a88:	00 
    1a89:	83 fe 04             	cmp    $0x4,%esi
    1a8c:	75 6b                	jne    1af9 <func7+0x18e>
    1a8e:	83 fa 07             	cmp    $0x7,%edx
    1a91:	75 66                	jne    1af9 <func7+0x18e>
    1a93:	49 63 c9             	movslq %r9d,%rcx
    1a96:	0f b6 34 0f          	movzbl (%rdi,%rcx,1),%esi
    1a9a:	b9 01 00 00 00       	mov    $0x1,%ecx
    1a9f:	40 84 f6             	test   %sil,%sil
    1aa2:	74 34                	je     1ad8 <func7+0x16d>
    1aa4:	b9 00 00 00 00       	mov    $0x0,%ecx
    1aa9:	41 83 f9 13          	cmp    $0x13,%r9d
    1aad:	7f 29                	jg     1ad8 <func7+0x16d>
    1aaf:	41 89 f2             	mov    %esi,%r10d
    1ab2:	41 83 e2 07          	and    $0x7,%r10d
    1ab6:	83 e6 07             	and    $0x7,%esi
    1ab9:	41 89 c0             	mov    %eax,%r8d
    1abc:	44 03 04 b4          	add    (%rsp,%rsi,4),%r8d
    1ac0:	41 89 d3             	mov    %edx,%r11d
    1ac3:	44 03 5c b4 20       	add    0x20(%rsp,%rsi,4),%r11d
    1ac8:	44 89 c6             	mov    %r8d,%esi
    1acb:	44 09 de             	or     %r11d,%esi
    1ace:	b9 00 00 00 00       	mov    $0x0,%ecx
    1ad3:	83 fe 07             	cmp    $0x7,%esi
    1ad6:	76 3f                	jbe    1b17 <func7+0x1ac>
    1ad8:	48 8b 84 24 88 00 00 	mov    0x88(%rsp),%rax
    1adf:	00 
    1ae0:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    1ae7:	00 00 
    1ae9:	0f 85 9e 00 00 00    	jne    1b8d <func7+0x222>
    1aef:	89 c8                	mov    %ecx,%eax
    1af1:	48 81 c4 98 00 00 00 	add    $0x98,%rsp
    1af8:	c3                   	ret
    1af9:	b9 00 00 00 00       	mov    $0x0,%ecx
    1afe:	41 83 f9 13          	cmp    $0x13,%r9d
    1b02:	7f d4                	jg     1ad8 <func7+0x16d>
    1b04:	49 63 c9             	movslq %r9d,%rcx
    1b07:	0f b6 34 0f          	movzbl (%rdi,%rcx,1),%esi
    1b0b:	b9 00 00 00 00       	mov    $0x0,%ecx
    1b10:	40 84 f6             	test   %sil,%sil
    1b13:	74 c3                	je     1ad8 <func7+0x16d>
    1b15:	eb 98                	jmp    1aaf <func7+0x144>
    1b17:	4d 63 d2             	movslq %r10d,%r10
    1b1a:	42 03 44 94 40       	add    0x40(%rsp,%r10,4),%eax
    1b1f:	42 03 54 94 60       	add    0x60(%rsp,%r10,4),%edx
    1b24:	48 8d 35 75 46 00 00 	lea    0x4675(%rip),%rsi        # 61a0 <row0>
    1b2b:	85 c0                	test   %eax,%eax
    1b2d:	7e 0b                	jle    1b3a <func7+0x1cf>
    1b2f:	48 8b 76 08          	mov    0x8(%rsi),%rsi
    1b33:	83 c1 01             	add    $0x1,%ecx
    1b36:	39 c8                	cmp    %ecx,%eax
    1b38:	75 f5                	jne    1b2f <func7+0x1c4>
    1b3a:	48 63 d2             	movslq %edx,%rdx
    1b3d:	b9 00 00 00 00       	mov    $0x0,%ecx
    1b42:	80 3c 16 01          	cmpb   $0x1,(%rsi,%rdx,1)
    1b46:	74 90                	je     1ad8 <func7+0x16d>
    1b48:	48 8d 15 51 46 00 00 	lea    0x4651(%rip),%rdx        # 61a0 <row0>
    1b4f:	45 85 c0             	test   %r8d,%r8d
    1b52:	7e 11                	jle    1b65 <func7+0x1fa>
    1b54:	b8 00 00 00 00       	mov    $0x0,%eax
    1b59:	48 8b 52 08          	mov    0x8(%rdx),%rdx
    1b5d:	83 c0 01             	add    $0x1,%eax
    1b60:	41 39 c0             	cmp    %eax,%r8d
    1b63:	75 f4                	jne    1b59 <func7+0x1ee>
    1b65:	49 63 c3             	movslq %r11d,%rax
    1b68:	b9 00 00 00 00       	mov    $0x0,%ecx
    1b6d:	80 3c 02 01          	cmpb   $0x1,(%rdx,%rax,1)
    1b71:	0f 84 61 ff ff ff    	je     1ad8 <func7+0x16d>
    1b77:	41 8d 49 01          	lea    0x1(%r9),%ecx
    1b7b:	44 89 da             	mov    %r11d,%edx
    1b7e:	44 89 c6             	mov    %r8d,%esi
    1b81:	e8 e5 fd ff ff       	call   196b <func7>
    1b86:	89 c1                	mov    %eax,%ecx
    1b88:	e9 4b ff ff ff       	jmp    1ad8 <func7+0x16d>
    1b8d:	e8 0e f5 ff ff       	call   10a0 <__stack_chk_fail@plt>

0000000000001b92 <secret_phase>:
    1b92:	53                   	push   %rbx
    1b93:	48 8d 3d 52 16 00 00 	lea    0x1652(%rip),%rdi        # 31ec <_IO_stdin_used+0x1ec>
    1b9a:	e8 d1 f4 ff ff       	call   1070 <puts@plt>
    1b9f:	e8 48 04 00 00       	call   1fec <read_line>
    1ba4:	48 89 c3             	mov    %rax,%rbx
    1ba7:	48 89 c7             	mov    %rax,%rdi
    1baa:	e8 ba 00 00 00       	call   1c69 <string_length>
    1baf:	83 f8 14             	cmp    $0x14,%eax
    1bb2:	7f 2e                	jg     1be2 <secret_phase+0x50>
    1bb4:	b9 00 00 00 00       	mov    $0x0,%ecx
    1bb9:	ba 00 00 00 00       	mov    $0x0,%edx
    1bbe:	be 00 00 00 00       	mov    $0x0,%esi
    1bc3:	48 89 df             	mov    %rbx,%rdi
    1bc6:	e8 a0 fd ff ff       	call   196b <func7>
    1bcb:	85 c0                	test   %eax,%eax
    1bcd:	74 1a                	je     1be9 <secret_phase+0x57>
    1bcf:	48 8d 3d da 15 00 00 	lea    0x15da(%rip),%rdi        # 31b0 <_IO_stdin_used+0x1b0>
    1bd6:	e8 95 f4 ff ff       	call   1070 <puts@plt>
    1bdb:	e8 46 05 00 00       	call   2126 <phase_defused>
    1be0:	5b                   	pop    %rbx
    1be1:	c3                   	ret
    1be2:	e8 04 03 00 00       	call   1eeb <explode_bomb>
    1be7:	eb cb                	jmp    1bb4 <secret_phase+0x22>
    1be9:	e8 fd 02 00 00       	call   1eeb <explode_bomb>
    1bee:	eb df                	jmp    1bcf <secret_phase+0x3d>

0000000000001bf0 <sig_handler>:
    1bf0:	48 83 ec 08          	sub    $0x8,%rsp
    1bf4:	48 8d 3d 85 16 00 00 	lea    0x1685(%rip),%rdi        # 3280 <array.0+0x40>
    1bfb:	e8 70 f4 ff ff       	call   1070 <puts@plt>
    1c00:	bf 03 00 00 00       	mov    $0x3,%edi
    1c05:	e8 a6 f5 ff ff       	call   11b0 <sleep@plt>
    1c0a:	48 8d 3d e8 17 00 00 	lea    0x17e8(%rip),%rdi        # 33f9 <array.0+0x1b9>
    1c11:	b8 00 00 00 00       	mov    $0x0,%eax
    1c16:	e8 95 f4 ff ff       	call   10b0 <printf@plt>
    1c1b:	48 8b 3d 3e 4a 00 00 	mov    0x4a3e(%rip),%rdi        # 6660 <stdout@GLIBC_2.2.5>
    1c22:	e8 19 f5 ff ff       	call   1140 <fflush@plt>
    1c27:	bf 01 00 00 00       	mov    $0x1,%edi
    1c2c:	e8 7f f5 ff ff       	call   11b0 <sleep@plt>
    1c31:	48 8d 3d c9 17 00 00 	lea    0x17c9(%rip),%rdi        # 3401 <array.0+0x1c1>
    1c38:	e8 33 f4 ff ff       	call   1070 <puts@plt>
    1c3d:	bf 10 00 00 00       	mov    $0x10,%edi
    1c42:	e8 49 f5 ff ff       	call   1190 <exit@plt>

0000000000001c47 <invalid_phase>:
    1c47:	48 83 ec 08          	sub    $0x8,%rsp
    1c4b:	48 89 fe             	mov    %rdi,%rsi
    1c4e:	48 8d 3d b6 17 00 00 	lea    0x17b6(%rip),%rdi        # 340b <array.0+0x1cb>
    1c55:	b8 00 00 00 00       	mov    $0x0,%eax
    1c5a:	e8 51 f4 ff ff       	call   10b0 <printf@plt>
    1c5f:	bf 08 00 00 00       	mov    $0x8,%edi
    1c64:	e8 27 f5 ff ff       	call   1190 <exit@plt>

0000000000001c69 <string_length>:
    1c69:	80 3f 00             	cmpb   $0x0,(%rdi)
    1c6c:	74 12                	je     1c80 <string_length+0x17>
    1c6e:	b8 00 00 00 00       	mov    $0x0,%eax
    1c73:	48 83 c7 01          	add    $0x1,%rdi
    1c77:	83 c0 01             	add    $0x1,%eax
    1c7a:	80 3f 00             	cmpb   $0x0,(%rdi)
    1c7d:	75 f4                	jne    1c73 <string_length+0xa>
    1c7f:	c3                   	ret
    1c80:	b8 00 00 00 00       	mov    $0x0,%eax
    1c85:	c3                   	ret

0000000000001c86 <strings_not_equal>:
    1c86:	41 54                	push   %r12
    1c88:	55                   	push   %rbp
    1c89:	53                   	push   %rbx
    1c8a:	48 89 fb             	mov    %rdi,%rbx
    1c8d:	48 89 f5             	mov    %rsi,%rbp
    1c90:	e8 d4 ff ff ff       	call   1c69 <string_length>
    1c95:	41 89 c4             	mov    %eax,%r12d
    1c98:	48 89 ef             	mov    %rbp,%rdi
    1c9b:	e8 c9 ff ff ff       	call   1c69 <string_length>
    1ca0:	89 c2                	mov    %eax,%edx
    1ca2:	b8 01 00 00 00       	mov    $0x1,%eax
    1ca7:	41 39 d4             	cmp    %edx,%r12d
    1caa:	75 31                	jne    1cdd <strings_not_equal+0x57>
    1cac:	0f b6 13             	movzbl (%rbx),%edx
    1caf:	84 d2                	test   %dl,%dl
    1cb1:	74 1e                	je     1cd1 <strings_not_equal+0x4b>
    1cb3:	b8 00 00 00 00       	mov    $0x0,%eax
    1cb8:	38 54 05 00          	cmp    %dl,0x0(%rbp,%rax,1)
    1cbc:	75 1a                	jne    1cd8 <strings_not_equal+0x52>
    1cbe:	48 83 c0 01          	add    $0x1,%rax
    1cc2:	0f b6 14 03          	movzbl (%rbx,%rax,1),%edx
    1cc6:	84 d2                	test   %dl,%dl
    1cc8:	75 ee                	jne    1cb8 <strings_not_equal+0x32>
    1cca:	b8 00 00 00 00       	mov    $0x0,%eax
    1ccf:	eb 0c                	jmp    1cdd <strings_not_equal+0x57>
    1cd1:	b8 00 00 00 00       	mov    $0x0,%eax
    1cd6:	eb 05                	jmp    1cdd <strings_not_equal+0x57>
    1cd8:	b8 01 00 00 00       	mov    $0x1,%eax
    1cdd:	5b                   	pop    %rbx
    1cde:	5d                   	pop    %rbp
    1cdf:	41 5c                	pop    %r12
    1ce1:	c3                   	ret

0000000000001ce2 <initialize_bomb>:
    1ce2:	55                   	push   %rbp
    1ce3:	53                   	push   %rbx
    1ce4:	48 83 ec 58          	sub    $0x58,%rsp
    1ce8:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1cef:	00 00 
    1cf1:	48 89 44 24 48       	mov    %rax,0x48(%rsp)
    1cf6:	31 c0                	xor    %eax,%eax
    1cf8:	48 8d 35 f1 fe ff ff 	lea    -0x10f(%rip),%rsi        # 1bf0 <sig_handler>
    1cff:	bf 02 00 00 00       	mov    $0x2,%edi
    1d04:	e8 07 f4 ff ff       	call   1110 <signal@plt>
    1d09:	48 8b 3d 50 45 00 00 	mov    0x4550(%rip),%rdi        # 6260 <host_table>
    1d10:	48 85 ff             	test   %rdi,%rdi
    1d13:	74 23                	je     1d38 <initialize_bomb+0x56>
    1d15:	48 8d 1d 4c 45 00 00 	lea    0x454c(%rip),%rbx        # 6268 <host_table+0x8>
    1d1c:	48 89 e5             	mov    %rsp,%rbp
    1d1f:	48 89 ee             	mov    %rbp,%rsi
    1d22:	e8 19 f3 ff ff       	call   1040 <strcasecmp@plt>
    1d27:	85 c0                	test   %eax,%eax
    1d29:	74 0d                	je     1d38 <initialize_bomb+0x56>
    1d2b:	48 83 c3 08          	add    $0x8,%rbx
    1d2f:	48 8b 7b f8          	mov    -0x8(%rbx),%rdi
    1d33:	48 85 ff             	test   %rdi,%rdi
    1d36:	75 e7                	jne    1d1f <initialize_bomb+0x3d>
    1d38:	48 8d 3d dd 16 00 00 	lea    0x16dd(%rip),%rdi        # 341c <array.0+0x1dc>
    1d3f:	e8 2c f3 ff ff       	call   1070 <puts@plt>
    1d44:	48 8d 3d dd 16 00 00 	lea    0x16dd(%rip),%rdi        # 3428 <array.0+0x1e8>
    1d4b:	e8 20 f3 ff ff       	call   1070 <puts@plt>
    1d50:	48 8d 3d dd 16 00 00 	lea    0x16dd(%rip),%rdi        # 3434 <array.0+0x1f4>
    1d57:	e8 14 f3 ff ff       	call   1070 <puts@plt>
    1d5c:	48 8d 3d dd 16 00 00 	lea    0x16dd(%rip),%rdi        # 3440 <array.0+0x200>
    1d63:	e8 08 f3 ff ff       	call   1070 <puts@plt>
    1d68:	48 8d 3d dd 16 00 00 	lea    0x16dd(%rip),%rdi        # 344c <array.0+0x20c>
    1d6f:	e8 fc f2 ff ff       	call   1070 <puts@plt>
    1d74:	48 8b 44 24 48       	mov    0x48(%rsp),%rax
    1d79:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    1d80:	00 00 
    1d82:	75 07                	jne    1d8b <initialize_bomb+0xa9>
    1d84:	48 83 c4 58          	add    $0x58,%rsp
    1d88:	5b                   	pop    %rbx
    1d89:	5d                   	pop    %rbp
    1d8a:	c3                   	ret
    1d8b:	e8 10 f3 ff ff       	call   10a0 <__stack_chk_fail@plt>

0000000000001d90 <initialize_bomb_solve>:
    1d90:	c3                   	ret

0000000000001d91 <blank_line>:
    1d91:	55                   	push   %rbp
    1d92:	53                   	push   %rbx
    1d93:	48 83 ec 08          	sub    $0x8,%rsp
    1d97:	48 89 fd             	mov    %rdi,%rbp
    1d9a:	0f b6 5d 00          	movzbl 0x0(%rbp),%ebx
    1d9e:	84 db                	test   %bl,%bl
    1da0:	74 1e                	je     1dc0 <blank_line+0x2f>
    1da2:	e8 19 f4 ff ff       	call   11c0 <__ctype_b_loc@plt>
    1da7:	48 83 c5 01          	add    $0x1,%rbp
    1dab:	48 0f be db          	movsbq %bl,%rbx
    1daf:	48 8b 00             	mov    (%rax),%rax
    1db2:	f6 44 58 01 20       	testb  $0x20,0x1(%rax,%rbx,2)
    1db7:	75 e1                	jne    1d9a <blank_line+0x9>
    1db9:	b8 00 00 00 00       	mov    $0x0,%eax
    1dbe:	eb 05                	jmp    1dc5 <blank_line+0x34>
    1dc0:	b8 01 00 00 00       	mov    $0x1,%eax
    1dc5:	48 83 c4 08          	add    $0x8,%rsp
    1dc9:	5b                   	pop    %rbx
    1dca:	5d                   	pop    %rbp
    1dcb:	c3                   	ret

0000000000001dcc <skip>:
    1dcc:	55                   	push   %rbp
    1dcd:	53                   	push   %rbx
    1dce:	48 83 ec 08          	sub    $0x8,%rsp
    1dd2:	48 8d 2d 47 49 00 00 	lea    0x4947(%rip),%rbp        # 6720 <input_strings>
    1dd9:	48 63 15 38 49 00 00 	movslq 0x4938(%rip),%rdx        # 6718 <num_input_strings>
    1de0:	48 89 d0             	mov    %rdx,%rax
    1de3:	48 c1 e0 04          	shl    $0x4,%rax
    1de7:	48 29 d0             	sub    %rdx,%rax
    1dea:	48 8d 7c c5 00       	lea    0x0(%rbp,%rax,8),%rdi
    1def:	48 8b 15 9a 48 00 00 	mov    0x489a(%rip),%rdx        # 6690 <infile>
    1df6:	be 78 00 00 00       	mov    $0x78,%esi
    1dfb:	e8 f0 f2 ff ff       	call   10f0 <fgets@plt>
    1e00:	48 89 c3             	mov    %rax,%rbx
    1e03:	48 85 c0             	test   %rax,%rax
    1e06:	74 0c                	je     1e14 <skip+0x48>
    1e08:	48 89 c7             	mov    %rax,%rdi
    1e0b:	e8 81 ff ff ff       	call   1d91 <blank_line>
    1e10:	85 c0                	test   %eax,%eax
    1e12:	75 c5                	jne    1dd9 <skip+0xd>
    1e14:	48 89 d8             	mov    %rbx,%rax
    1e17:	48 83 c4 08          	add    $0x8,%rsp
    1e1b:	5b                   	pop    %rbx
    1e1c:	5d                   	pop    %rbp
    1e1d:	c3                   	ret

0000000000001e1e <send_msg>:
    1e1e:	53                   	push   %rbx
    1e1f:	48 81 ec 10 40 00 00 	sub    $0x4010,%rsp
    1e26:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1e2d:	00 00 
    1e2f:	48 89 84 24 08 40 00 	mov    %rax,0x4008(%rsp)
    1e36:	00 
    1e37:	31 c0                	xor    %eax,%eax
    1e39:	44 8b 05 d8 48 00 00 	mov    0x48d8(%rip),%r8d        # 6718 <num_input_strings>
    1e40:	41 8d 40 ff          	lea    -0x1(%r8),%eax
    1e44:	48 98                	cltq
    1e46:	48 89 c2             	mov    %rax,%rdx
    1e49:	48 c1 e2 04          	shl    $0x4,%rdx
    1e4d:	48 29 c2             	sub    %rax,%rdx
    1e50:	85 ff                	test   %edi,%edi
    1e52:	48 8d 0d ff 15 00 00 	lea    0x15ff(%rip),%rcx        # 3458 <array.0+0x218>
    1e59:	48 8d 05 00 16 00 00 	lea    0x1600(%rip),%rax        # 3460 <array.0+0x220>
    1e60:	48 0f 44 c8          	cmove  %rax,%rcx
    1e64:	48 89 e3             	mov    %rsp,%rbx
    1e67:	48 8d 05 b2 48 00 00 	lea    0x48b2(%rip),%rax        # 6720 <input_strings>
    1e6e:	4c 8d 0c d0          	lea    (%rax,%rdx,8),%r9
    1e72:	8b 15 1c 43 00 00    	mov    0x431c(%rip),%edx        # 6194 <bomb_id>
    1e78:	48 8d 35 ea 15 00 00 	lea    0x15ea(%rip),%rsi        # 3469 <array.0+0x229>
    1e7f:	48 89 df             	mov    %rbx,%rdi
    1e82:	b8 00 00 00 00       	mov    $0x0,%eax
    1e87:	e8 f4 f2 ff ff       	call   1180 <sprintf@plt>
    1e8c:	4c 8d 84 24 00 20 00 	lea    0x2000(%rsp),%r8
    1e93:	00 
    1e94:	b9 00 00 00 00       	mov    $0x0,%ecx
    1e99:	48 89 da             	mov    %rbx,%rdx
    1e9c:	48 8d 35 cd 42 00 00 	lea    0x42cd(%rip),%rsi        # 6170 <user_password>
    1ea3:	48 8d 3d de 42 00 00 	lea    0x42de(%rip),%rdi        # 6188 <userid>
    1eaa:	e8 ac 0e 00 00       	call   2d5b <driver_post>
    1eaf:	85 c0                	test   %eax,%eax
    1eb1:	78 1c                	js     1ecf <send_msg+0xb1>
    1eb3:	48 8b 84 24 08 40 00 	mov    0x4008(%rsp),%rax
    1eba:	00 
    1ebb:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    1ec2:	00 00 
    1ec4:	75 20                	jne    1ee6 <send_msg+0xc8>
    1ec6:	48 81 c4 10 40 00 00 	add    $0x4010,%rsp
    1ecd:	5b                   	pop    %rbx
    1ece:	c3                   	ret
    1ecf:	48 8d bc 24 00 20 00 	lea    0x2000(%rsp),%rdi
    1ed6:	00 
    1ed7:	e8 94 f1 ff ff       	call   1070 <puts@plt>
    1edc:	bf 00 00 00 00       	mov    $0x0,%edi
    1ee1:	e8 aa f2 ff ff       	call   1190 <exit@plt>
    1ee6:	e8 b5 f1 ff ff       	call   10a0 <__stack_chk_fail@plt>

0000000000001eeb <explode_bomb>:
    1eeb:	48 83 ec 08          	sub    $0x8,%rsp
    1eef:	48 8d 3d c2 13 00 00 	lea    0x13c2(%rip),%rdi        # 32b8 <array.0+0x78>
    1ef6:	e8 75 f1 ff ff       	call   1070 <puts@plt>
    1efb:	48 8d 3d 73 15 00 00 	lea    0x1573(%rip),%rdi        # 3475 <array.0+0x235>
    1f02:	e8 69 f1 ff ff       	call   1070 <puts@plt>
    1f07:	48 8d 3d 84 15 00 00 	lea    0x1584(%rip),%rdi        # 3492 <array.0+0x252>
    1f0e:	e8 5d f1 ff ff       	call   1070 <puts@plt>
    1f13:	48 8d 3d 95 15 00 00 	lea    0x1595(%rip),%rdi        # 34af <array.0+0x26f>
    1f1a:	e8 51 f1 ff ff       	call   1070 <puts@plt>
    1f1f:	48 8d 3d a6 15 00 00 	lea    0x15a6(%rip),%rdi        # 34cc <array.0+0x28c>
    1f26:	e8 45 f1 ff ff       	call   1070 <puts@plt>
    1f2b:	48 8d 3d b7 15 00 00 	lea    0x15b7(%rip),%rdi        # 34e9 <array.0+0x2a9>
    1f32:	e8 39 f1 ff ff       	call   1070 <puts@plt>
    1f37:	48 8d 3d c7 15 00 00 	lea    0x15c7(%rip),%rdi        # 3505 <array.0+0x2c5>
    1f3e:	e8 2d f1 ff ff       	call   1070 <puts@plt>
    1f43:	48 8d 3d d8 15 00 00 	lea    0x15d8(%rip),%rdi        # 3522 <array.0+0x2e2>
    1f4a:	e8 21 f1 ff ff       	call   1070 <puts@plt>
    1f4f:	48 8d 3d e9 15 00 00 	lea    0x15e9(%rip),%rdi        # 353f <array.0+0x2ff>
    1f56:	e8 15 f1 ff ff       	call   1070 <puts@plt>
    1f5b:	48 8d 3d fa 15 00 00 	lea    0x15fa(%rip),%rdi        # 355c <array.0+0x31c>
    1f62:	e8 09 f1 ff ff       	call   1070 <puts@plt>
    1f67:	48 8d 3d 0b 16 00 00 	lea    0x160b(%rip),%rdi        # 3579 <array.0+0x339>
    1f6e:	e8 fd f0 ff ff       	call   1070 <puts@plt>
    1f73:	48 8d 3d 1c 16 00 00 	lea    0x161c(%rip),%rdi        # 3596 <array.0+0x356>
    1f7a:	e8 f1 f0 ff ff       	call   1070 <puts@plt>
    1f7f:	48 8d 3d 2d 16 00 00 	lea    0x162d(%rip),%rdi        # 35b3 <array.0+0x373>
    1f86:	e8 e5 f0 ff ff       	call   1070 <puts@plt>
    1f8b:	bf 00 00 00 00       	mov    $0x0,%edi
    1f90:	e8 89 fe ff ff       	call   1e1e <send_msg>
    1f95:	48 8d 3d 64 13 00 00 	lea    0x1364(%rip),%rdi        # 3300 <array.0+0xc0>
    1f9c:	e8 cf f0 ff ff       	call   1070 <puts@plt>
    1fa1:	bf 08 00 00 00       	mov    $0x8,%edi
    1fa6:	e8 e5 f1 ff ff       	call   1190 <exit@plt>

0000000000001fab <read_six_numbers>:
    1fab:	48 83 ec 08          	sub    $0x8,%rsp
    1faf:	48 89 f2             	mov    %rsi,%rdx
    1fb2:	48 8d 4e 04          	lea    0x4(%rsi),%rcx
    1fb6:	48 8d 46 14          	lea    0x14(%rsi),%rax
    1fba:	50                   	push   %rax
    1fbb:	48 8d 46 10          	lea    0x10(%rsi),%rax
    1fbf:	50                   	push   %rax
    1fc0:	4c 8d 4e 0c          	lea    0xc(%rsi),%r9
    1fc4:	4c 8d 46 08          	lea    0x8(%rsi),%r8
    1fc8:	48 8d 35 fc 15 00 00 	lea    0x15fc(%rip),%rsi        # 35cb <array.0+0x38b>
    1fcf:	b8 00 00 00 00       	mov    $0x0,%eax
    1fd4:	e8 77 f1 ff ff       	call   1150 <__isoc99_sscanf@plt>
    1fd9:	48 83 c4 10          	add    $0x10,%rsp
    1fdd:	83 f8 05             	cmp    $0x5,%eax
    1fe0:	7e 05                	jle    1fe7 <read_six_numbers+0x3c>
    1fe2:	48 83 c4 08          	add    $0x8,%rsp
    1fe6:	c3                   	ret
    1fe7:	e8 ff fe ff ff       	call   1eeb <explode_bomb>

0000000000001fec <read_line>:
    1fec:	55                   	push   %rbp
    1fed:	53                   	push   %rbx
    1fee:	48 83 ec 08          	sub    $0x8,%rsp
    1ff2:	b8 00 00 00 00       	mov    $0x0,%eax
    1ff7:	e8 d0 fd ff ff       	call   1dcc <skip>
    1ffc:	48 85 c0             	test   %rax,%rax
    1fff:	74 63                	je     2064 <read_line+0x78>
    2001:	8b 1d 11 47 00 00    	mov    0x4711(%rip),%ebx        # 6718 <num_input_strings>
    2007:	48 63 d3             	movslq %ebx,%rdx
    200a:	48 89 d0             	mov    %rdx,%rax
    200d:	48 c1 e0 04          	shl    $0x4,%rax
    2011:	48 29 d0             	sub    %rdx,%rax
    2014:	48 8d 15 05 47 00 00 	lea    0x4705(%rip),%rdx        # 6720 <input_strings>
    201b:	48 8d 2c c2          	lea    (%rdx,%rax,8),%rbp
    201f:	48 89 ef             	mov    %rbp,%rdi
    2022:	e8 69 f0 ff ff       	call   1090 <strlen@plt>
    2027:	83 f8 76             	cmp    $0x76,%eax
    202a:	0f 8f ac 00 00 00    	jg     20dc <read_line+0xf0>
    2030:	83 e8 01             	sub    $0x1,%eax
    2033:	48 98                	cltq
    2035:	48 63 cb             	movslq %ebx,%rcx
    2038:	48 89 ca             	mov    %rcx,%rdx
    203b:	48 c1 e2 04          	shl    $0x4,%rdx
    203f:	48 29 ca             	sub    %rcx,%rdx
    2042:	48 8d 0d d7 46 00 00 	lea    0x46d7(%rip),%rcx        # 6720 <input_strings>
    2049:	48 8d 14 d1          	lea    (%rcx,%rdx,8),%rdx
    204d:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
    2051:	83 c3 01             	add    $0x1,%ebx
    2054:	89 1d be 46 00 00    	mov    %ebx,0x46be(%rip)        # 6718 <num_input_strings>
    205a:	48 89 e8             	mov    %rbp,%rax
    205d:	48 83 c4 08          	add    $0x8,%rsp
    2061:	5b                   	pop    %rbx
    2062:	5d                   	pop    %rbp
    2063:	c3                   	ret
    2064:	48 8b 05 05 46 00 00 	mov    0x4605(%rip),%rax        # 6670 <stdin@GLIBC_2.2.5>
    206b:	48 39 05 1e 46 00 00 	cmp    %rax,0x461e(%rip)        # 6690 <infile>
    2072:	74 1b                	je     208f <read_line+0xa3>
    2074:	48 8d 3d 80 15 00 00 	lea    0x1580(%rip),%rdi        # 35fb <array.0+0x3bb>
    207b:	e8 b0 ef ff ff       	call   1030 <getenv@plt>
    2080:	48 85 c0             	test   %rax,%rax
    2083:	74 20                	je     20a5 <read_line+0xb9>
    2085:	bf 00 00 00 00       	mov    $0x0,%edi
    208a:	e8 01 f1 ff ff       	call   1190 <exit@plt>
    208f:	48 8d 3d 47 15 00 00 	lea    0x1547(%rip),%rdi        # 35dd <array.0+0x39d>
    2096:	e8 d5 ef ff ff       	call   1070 <puts@plt>
    209b:	bf 08 00 00 00       	mov    $0x8,%edi
    20a0:	e8 eb f0 ff ff       	call   1190 <exit@plt>
    20a5:	48 8b 05 c4 45 00 00 	mov    0x45c4(%rip),%rax        # 6670 <stdin@GLIBC_2.2.5>
    20ac:	48 89 05 dd 45 00 00 	mov    %rax,0x45dd(%rip)        # 6690 <infile>
    20b3:	b8 00 00 00 00       	mov    $0x0,%eax
    20b8:	e8 0f fd ff ff       	call   1dcc <skip>
    20bd:	48 85 c0             	test   %rax,%rax
    20c0:	0f 85 3b ff ff ff    	jne    2001 <read_line+0x15>
    20c6:	48 8d 3d 10 15 00 00 	lea    0x1510(%rip),%rdi        # 35dd <array.0+0x39d>
    20cd:	e8 9e ef ff ff       	call   1070 <puts@plt>
    20d2:	bf 00 00 00 00       	mov    $0x0,%edi
    20d7:	e8 b4 f0 ff ff       	call   1190 <exit@plt>
    20dc:	48 8d 3d 23 15 00 00 	lea    0x1523(%rip),%rdi        # 3606 <array.0+0x3c6>
    20e3:	e8 88 ef ff ff       	call   1070 <puts@plt>
    20e8:	8b 05 2a 46 00 00    	mov    0x462a(%rip),%eax        # 6718 <num_input_strings>
    20ee:	8d 50 01             	lea    0x1(%rax),%edx
    20f1:	89 15 21 46 00 00    	mov    %edx,0x4621(%rip)        # 6718 <num_input_strings>
    20f7:	48 98                	cltq
    20f9:	48 6b c0 78          	imul   $0x78,%rax,%rax
    20fd:	48 8d 15 1c 46 00 00 	lea    0x461c(%rip),%rdx        # 6720 <input_strings>
    2104:	48 be 2a 2a 2a 74 72 	movabs $0x636e7572742a2a2a,%rsi
    210b:	75 6e 63 
    210e:	48 bf 61 74 65 64 2a 	movabs $0x2a2a2a64657461,%rdi
    2115:	2a 2a 00 
    2118:	48 89 34 02          	mov    %rsi,(%rdx,%rax,1)
    211c:	48 89 7c 02 08       	mov    %rdi,0x8(%rdx,%rax,1)
    2121:	e8 c5 fd ff ff       	call   1eeb <explode_bomb>

0000000000002126 <phase_defused>:
    2126:	48 83 ec 08          	sub    $0x8,%rsp
    212a:	bf 01 00 00 00       	mov    $0x1,%edi
    212f:	e8 ea fc ff ff       	call   1e1e <send_msg>
    2134:	83 3d dd 45 00 00 06 	cmpl   $0x6,0x45dd(%rip)        # 6718 <num_input_strings>
    213b:	74 05                	je     2142 <phase_defused+0x1c>
    213d:	48 83 c4 08          	add    $0x8,%rsp
    2141:	c3                   	ret
    2142:	0f b6 0d 2f 48 00 00 	movzbl 0x482f(%rip),%ecx        # 6978 <input_strings+0x258>
    2149:	84 c9                	test   %cl,%cl
    214b:	74 34                	je     2181 <phase_defused+0x5b>
    214d:	b8 01 00 00 00       	mov    $0x1,%eax
    2152:	ba 00 00 00 00       	mov    $0x0,%edx
    2157:	48 8d 3d 1a 48 00 00 	lea    0x481a(%rip),%rdi        # 6978 <input_strings+0x258>
    215e:	80 f9 20             	cmp    $0x20,%cl
    2161:	0f 94 c1             	sete   %cl
    2164:	0f b6 c9             	movzbl %cl,%ecx
    2167:	01 ca                	add    %ecx,%edx
    2169:	89 c6                	mov    %eax,%esi
    216b:	0f b6 0c 07          	movzbl (%rdi,%rax,1),%ecx
    216f:	48 83 c0 01          	add    $0x1,%rax
    2173:	83 fa 05             	cmp    $0x5,%edx
    2176:	7f 04                	jg     217c <phase_defused+0x56>
    2178:	84 c9                	test   %cl,%cl
    217a:	75 e2                	jne    215e <phase_defused+0x38>
    217c:	83 fa 06             	cmp    $0x6,%edx
    217f:	74 1a                	je     219b <phase_defused+0x75>
    2181:	48 8d 3d 00 12 00 00 	lea    0x1200(%rip),%rdi        # 3388 <array.0+0x148>
    2188:	e8 e3 ee ff ff       	call   1070 <puts@plt>
    218d:	48 8d 3d 24 12 00 00 	lea    0x1224(%rip),%rdi        # 33b8 <array.0+0x178>
    2194:	e8 d7 ee ff ff       	call   1070 <puts@plt>
    2199:	eb a2                	jmp    213d <phase_defused+0x17>
    219b:	48 63 f6             	movslq %esi,%rsi
    219e:	48 8d 05 d3 47 00 00 	lea    0x47d3(%rip),%rax        # 6978 <input_strings+0x258>
    21a5:	48 8d 3c 06          	lea    (%rsi,%rax,1),%rdi
    21a9:	48 8d 35 71 14 00 00 	lea    0x1471(%rip),%rsi        # 3621 <array.0+0x3e1>
    21b0:	e8 d1 fa ff ff       	call   1c86 <strings_not_equal>
    21b5:	85 c0                	test   %eax,%eax
    21b7:	75 c8                	jne    2181 <phase_defused+0x5b>
    21b9:	48 8d 3d 68 11 00 00 	lea    0x1168(%rip),%rdi        # 3328 <array.0+0xe8>
    21c0:	e8 ab ee ff ff       	call   1070 <puts@plt>
    21c5:	48 8d 3d 84 11 00 00 	lea    0x1184(%rip),%rdi        # 3350 <array.0+0x110>
    21cc:	e8 9f ee ff ff       	call   1070 <puts@plt>
    21d1:	b8 00 00 00 00       	mov    $0x0,%eax
    21d6:	e8 b7 f9 ff ff       	call   1b92 <secret_phase>
    21db:	eb a4                	jmp    2181 <phase_defused+0x5b>

00000000000021dd <sigalrm_handler>:
    21dd:	48 83 ec 08          	sub    $0x8,%rsp
    21e1:	ba 00 00 00 00       	mov    $0x0,%edx
    21e6:	48 8d 35 4b 14 00 00 	lea    0x144b(%rip),%rsi        # 3638 <array.0+0x3f8>
    21ed:	48 8b 3d 8c 44 00 00 	mov    0x448c(%rip),%rdi        # 6680 <stderr@GLIBC_2.2.5>
    21f4:	b8 00 00 00 00       	mov    $0x0,%eax
    21f9:	e8 32 ef ff ff       	call   1130 <fprintf@plt>
    21fe:	bf 01 00 00 00       	mov    $0x1,%edi
    2203:	e8 88 ef ff ff       	call   1190 <exit@plt>

0000000000002208 <rio_writen>:
    2208:	41 56                	push   %r14
    220a:	41 55                	push   %r13
    220c:	41 54                	push   %r12
    220e:	55                   	push   %rbp
    220f:	53                   	push   %rbx
    2210:	49 89 d5             	mov    %rdx,%r13
    2213:	48 85 d2             	test   %rdx,%rdx
    2216:	74 3b                	je     2253 <rio_writen+0x4b>
    2218:	41 89 fc             	mov    %edi,%r12d
    221b:	48 89 f5             	mov    %rsi,%rbp
    221e:	48 89 d3             	mov    %rdx,%rbx
    2221:	41 be 00 00 00 00    	mov    $0x0,%r14d
    2227:	eb 08                	jmp    2231 <rio_writen+0x29>
    2229:	48 01 c5             	add    %rax,%rbp
    222c:	48 29 c3             	sub    %rax,%rbx
    222f:	74 22                	je     2253 <rio_writen+0x4b>
    2231:	48 89 da             	mov    %rbx,%rdx
    2234:	48 89 ee             	mov    %rbp,%rsi
    2237:	44 89 e7             	mov    %r12d,%edi
    223a:	e8 41 ee ff ff       	call   1080 <write@plt>
    223f:	48 85 c0             	test   %rax,%rax
    2242:	7f e5                	jg     2229 <rio_writen+0x21>
    2244:	e8 07 ee ff ff       	call   1050 <__errno_location@plt>
    2249:	83 38 04             	cmpl   $0x4,(%rax)
    224c:	75 11                	jne    225f <rio_writen+0x57>
    224e:	4c 89 f0             	mov    %r14,%rax
    2251:	eb d6                	jmp    2229 <rio_writen+0x21>
    2253:	4c 89 e8             	mov    %r13,%rax
    2256:	5b                   	pop    %rbx
    2257:	5d                   	pop    %rbp
    2258:	41 5c                	pop    %r12
    225a:	41 5d                	pop    %r13
    225c:	41 5e                	pop    %r14
    225e:	c3                   	ret
    225f:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    2266:	eb ee                	jmp    2256 <rio_writen+0x4e>

0000000000002268 <rio_readlineb>:
    2268:	41 56                	push   %r14
    226a:	41 55                	push   %r13
    226c:	41 54                	push   %r12
    226e:	55                   	push   %rbp
    226f:	53                   	push   %rbx
    2270:	49 89 f4             	mov    %rsi,%r12
    2273:	48 83 fa 01          	cmp    $0x1,%rdx
    2277:	0f 86 92 00 00 00    	jbe    230f <rio_readlineb+0xa7>
    227d:	48 89 fb             	mov    %rdi,%rbx
    2280:	4c 8d 74 16 ff       	lea    -0x1(%rsi,%rdx,1),%r14
    2285:	41 bd 01 00 00 00    	mov    $0x1,%r13d
    228b:	48 8d 6f 10          	lea    0x10(%rdi),%rbp
    228f:	eb 56                	jmp    22e7 <rio_readlineb+0x7f>
    2291:	e8 ba ed ff ff       	call   1050 <__errno_location@plt>
    2296:	83 38 04             	cmpl   $0x4,(%rax)
    2299:	75 55                	jne    22f0 <rio_readlineb+0x88>
    229b:	ba 00 20 00 00       	mov    $0x2000,%edx
    22a0:	48 89 ee             	mov    %rbp,%rsi
    22a3:	8b 3b                	mov    (%rbx),%edi
    22a5:	e8 36 ee ff ff       	call   10e0 <read@plt>
    22aa:	89 c2                	mov    %eax,%edx
    22ac:	89 43 04             	mov    %eax,0x4(%rbx)
    22af:	85 c0                	test   %eax,%eax
    22b1:	78 de                	js     2291 <rio_readlineb+0x29>
    22b3:	85 c0                	test   %eax,%eax
    22b5:	74 42                	je     22f9 <rio_readlineb+0x91>
    22b7:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
    22bb:	48 8b 43 08          	mov    0x8(%rbx),%rax
    22bf:	0f b6 08             	movzbl (%rax),%ecx
    22c2:	48 83 c0 01          	add    $0x1,%rax
    22c6:	48 89 43 08          	mov    %rax,0x8(%rbx)
    22ca:	83 ea 01             	sub    $0x1,%edx
    22cd:	89 53 04             	mov    %edx,0x4(%rbx)
    22d0:	49 83 c4 01          	add    $0x1,%r12
    22d4:	41 88 4c 24 ff       	mov    %cl,-0x1(%r12)
    22d9:	80 f9 0a             	cmp    $0xa,%cl
    22dc:	74 3c                	je     231a <rio_readlineb+0xb2>
    22de:	41 83 c5 01          	add    $0x1,%r13d
    22e2:	4d 39 f4             	cmp    %r14,%r12
    22e5:	74 30                	je     2317 <rio_readlineb+0xaf>
    22e7:	8b 53 04             	mov    0x4(%rbx),%edx
    22ea:	85 d2                	test   %edx,%edx
    22ec:	7e ad                	jle    229b <rio_readlineb+0x33>
    22ee:	eb cb                	jmp    22bb <rio_readlineb+0x53>
    22f0:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    22f7:	eb 05                	jmp    22fe <rio_readlineb+0x96>
    22f9:	b8 00 00 00 00       	mov    $0x0,%eax
    22fe:	85 c0                	test   %eax,%eax
    2300:	75 29                	jne    232b <rio_readlineb+0xc3>
    2302:	b8 00 00 00 00       	mov    $0x0,%eax
    2307:	41 83 fd 01          	cmp    $0x1,%r13d
    230b:	75 0d                	jne    231a <rio_readlineb+0xb2>
    230d:	eb 13                	jmp    2322 <rio_readlineb+0xba>
    230f:	41 bd 01 00 00 00    	mov    $0x1,%r13d
    2315:	eb 03                	jmp    231a <rio_readlineb+0xb2>
    2317:	4d 89 f4             	mov    %r14,%r12
    231a:	41 c6 04 24 00       	movb   $0x0,(%r12)
    231f:	49 63 c5             	movslq %r13d,%rax
    2322:	5b                   	pop    %rbx
    2323:	5d                   	pop    %rbp
    2324:	41 5c                	pop    %r12
    2326:	41 5d                	pop    %r13
    2328:	41 5e                	pop    %r14
    232a:	c3                   	ret
    232b:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    2332:	eb ee                	jmp    2322 <rio_readlineb+0xba>

0000000000002334 <submitr>:
    2334:	41 57                	push   %r15
    2336:	41 56                	push   %r14
    2338:	41 55                	push   %r13
    233a:	41 54                	push   %r12
    233c:	55                   	push   %rbp
    233d:	53                   	push   %rbx
    233e:	48 81 ec 78 a0 00 00 	sub    $0xa078,%rsp
    2345:	48 89 7c 24 08       	mov    %rdi,0x8(%rsp)
    234a:	89 f5                	mov    %esi,%ebp
    234c:	49 89 d4             	mov    %rdx,%r12
    234f:	48 89 4c 24 10       	mov    %rcx,0x10(%rsp)
    2354:	4c 89 44 24 20       	mov    %r8,0x20(%rsp)
    2359:	4c 89 4c 24 18       	mov    %r9,0x18(%rsp)
    235e:	48 8b 9c 24 b0 a0 00 	mov    0xa0b0(%rsp),%rbx
    2365:	00 
    2366:	4c 8b bc 24 b8 a0 00 	mov    0xa0b8(%rsp),%r15
    236d:	00 
    236e:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    2375:	00 00 
    2377:	48 89 84 24 68 a0 00 	mov    %rax,0xa068(%rsp)
    237e:	00 
    237f:	31 c0                	xor    %eax,%eax
    2381:	c7 44 24 3c 00 00 00 	movl   $0x0,0x3c(%rsp)
    2388:	00 
    2389:	ba 00 00 00 00       	mov    $0x0,%edx
    238e:	be 01 00 00 00       	mov    $0x1,%esi
    2393:	bf 02 00 00 00       	mov    $0x2,%edi
    2398:	e8 33 ee ff ff       	call   11d0 <socket@plt>
    239d:	85 c0                	test   %eax,%eax
    239f:	0f 88 0d 01 00 00    	js     24b2 <submitr+0x17e>
    23a5:	41 89 c6             	mov    %eax,%r14d
    23a8:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
    23ad:	e8 6e ed ff ff       	call   1120 <gethostbyname@plt>
    23b2:	48 85 c0             	test   %rax,%rax
    23b5:	0f 84 47 01 00 00    	je     2502 <submitr+0x1ce>
    23bb:	4c 8d 6c 24 40       	lea    0x40(%rsp),%r13
    23c0:	48 c7 44 24 40 00 00 	movq   $0x0,0x40(%rsp)
    23c7:	00 00 
    23c9:	48 c7 44 24 48 00 00 	movq   $0x0,0x48(%rsp)
    23d0:	00 00 
    23d2:	66 c7 44 24 40 02 00 	movw   $0x2,0x40(%rsp)
    23d9:	48 63 50 14          	movslq 0x14(%rax),%rdx
    23dd:	48 8b 40 18          	mov    0x18(%rax),%rax
    23e1:	48 8d 7c 24 44       	lea    0x44(%rsp),%rdi
    23e6:	48 8b 30             	mov    (%rax),%rsi
    23e9:	e8 72 ed ff ff       	call   1160 <memmove@plt>
    23ee:	66 c1 c5 08          	rol    $0x8,%bp
    23f2:	66 89 6c 24 42       	mov    %bp,0x42(%rsp)
    23f7:	ba 10 00 00 00       	mov    $0x10,%edx
    23fc:	4c 89 ee             	mov    %r13,%rsi
    23ff:	44 89 f7             	mov    %r14d,%edi
    2402:	e8 99 ed ff ff       	call   11a0 <connect@plt>
    2407:	85 c0                	test   %eax,%eax
    2409:	0f 88 5e 01 00 00    	js     256d <submitr+0x239>
    240f:	48 89 df             	mov    %rbx,%rdi
    2412:	e8 79 ec ff ff       	call   1090 <strlen@plt>
    2417:	48 89 c5             	mov    %rax,%rbp
    241a:	4c 89 e7             	mov    %r12,%rdi
    241d:	e8 6e ec ff ff       	call   1090 <strlen@plt>
    2422:	49 89 c5             	mov    %rax,%r13
    2425:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
    242a:	e8 61 ec ff ff       	call   1090 <strlen@plt>
    242f:	49 89 c4             	mov    %rax,%r12
    2432:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
    2437:	e8 54 ec ff ff       	call   1090 <strlen@plt>
    243c:	48 89 c2             	mov    %rax,%rdx
    243f:	4b 8d 84 25 80 00 00 	lea    0x80(%r13,%r12,1),%rax
    2446:	00 
    2447:	48 01 d0             	add    %rdx,%rax
    244a:	48 8d 54 6d 00       	lea    0x0(%rbp,%rbp,2),%rdx
    244f:	48 01 d0             	add    %rdx,%rax
    2452:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
    2458:	0f 87 6c 01 00 00    	ja     25ca <submitr+0x296>
    245e:	48 8d 94 24 60 40 00 	lea    0x4060(%rsp),%rdx
    2465:	00 
    2466:	b9 00 04 00 00       	mov    $0x400,%ecx
    246b:	b8 00 00 00 00       	mov    $0x0,%eax
    2470:	48 89 d7             	mov    %rdx,%rdi
    2473:	f3 48 ab             	rep stos %rax,%es:(%rdi)
    2476:	48 89 df             	mov    %rbx,%rdi
    2479:	e8 12 ec ff ff       	call   1090 <strlen@plt>
    247e:	85 c0                	test   %eax,%eax
    2480:	0f 84 13 05 00 00    	je     2999 <submitr+0x665>
    2486:	8d 40 ff             	lea    -0x1(%rax),%eax
    2489:	4c 8d 64 03 01       	lea    0x1(%rbx,%rax,1),%r12
    248e:	48 8d ac 24 60 40 00 	lea    0x4060(%rsp),%rbp
    2495:	00 
    2496:	48 8d 84 24 60 80 00 	lea    0x8060(%rsp),%rax
    249d:	00 
    249e:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
    24a3:	49 bd d9 ff 00 00 00 	movabs $0x2000000000ffd9,%r13
    24aa:	00 20 00 
    24ad:	e9 a5 01 00 00       	jmp    2657 <submitr+0x323>
    24b2:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    24b9:	3a 20 43 
    24bc:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    24c3:	20 75 6e 
    24c6:	49 89 07             	mov    %rax,(%r15)
    24c9:	49 89 57 08          	mov    %rdx,0x8(%r15)
    24cd:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    24d4:	74 6f 20 
    24d7:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
    24de:	65 20 73 
    24e1:	49 89 47 10          	mov    %rax,0x10(%r15)
    24e5:	49 89 57 18          	mov    %rdx,0x18(%r15)
    24e9:	41 c7 47 20 6f 63 6b 	movl   $0x656b636f,0x20(%r15)
    24f0:	65 
    24f1:	66 41 c7 47 24 74 00 	movw   $0x74,0x24(%r15)
    24f8:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    24fd:	e9 6e 03 00 00       	jmp    2870 <submitr+0x53c>
    2502:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
    2509:	3a 20 44 
    250c:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
    2513:	20 75 6e 
    2516:	49 89 07             	mov    %rax,(%r15)
    2519:	49 89 57 08          	mov    %rdx,0x8(%r15)
    251d:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2524:	74 6f 20 
    2527:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
    252e:	76 65 20 
    2531:	49 89 47 10          	mov    %rax,0x10(%r15)
    2535:	49 89 57 18          	mov    %rdx,0x18(%r15)
    2539:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
    2540:	72 20 61 
    2543:	49 89 47 20          	mov    %rax,0x20(%r15)
    2547:	41 c7 47 28 64 64 72 	movl   $0x65726464,0x28(%r15)
    254e:	65 
    254f:	66 41 c7 47 2c 73 73 	movw   $0x7373,0x2c(%r15)
    2556:	41 c6 47 2e 00       	movb   $0x0,0x2e(%r15)
    255b:	44 89 f7             	mov    %r14d,%edi
    255e:	e8 6d eb ff ff       	call   10d0 <close@plt>
    2563:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2568:	e9 03 03 00 00       	jmp    2870 <submitr+0x53c>
    256d:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
    2574:	3a 20 55 
    2577:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
    257e:	20 74 6f 
    2581:	49 89 07             	mov    %rax,(%r15)
    2584:	49 89 57 08          	mov    %rdx,0x8(%r15)
    2588:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
    258f:	65 63 74 
    2592:	48 ba 20 74 6f 20 74 	movabs $0x20656874206f7420,%rdx
    2599:	68 65 20 
    259c:	49 89 47 10          	mov    %rax,0x10(%r15)
    25a0:	49 89 57 18          	mov    %rdx,0x18(%r15)
    25a4:	41 c7 47 20 73 65 72 	movl   $0x76726573,0x20(%r15)
    25ab:	76 
    25ac:	66 41 c7 47 24 65 72 	movw   $0x7265,0x24(%r15)
    25b3:	41 c6 47 26 00       	movb   $0x0,0x26(%r15)
    25b8:	44 89 f7             	mov    %r14d,%edi
    25bb:	e8 10 eb ff ff       	call   10d0 <close@plt>
    25c0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    25c5:	e9 a6 02 00 00       	jmp    2870 <submitr+0x53c>
    25ca:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
    25d1:	3a 20 52 
    25d4:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
    25db:	20 73 74 
    25de:	49 89 07             	mov    %rax,(%r15)
    25e1:	49 89 57 08          	mov    %rdx,0x8(%r15)
    25e5:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
    25ec:	74 6f 6f 
    25ef:	48 ba 20 6c 61 72 67 	movabs $0x202e656772616c20,%rdx
    25f6:	65 2e 20 
    25f9:	49 89 47 10          	mov    %rax,0x10(%r15)
    25fd:	49 89 57 18          	mov    %rdx,0x18(%r15)
    2601:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
    2608:	61 73 65 
    260b:	48 ba 20 53 55 42 4d 	movabs $0x5254494d42555320,%rdx
    2612:	49 54 52 
    2615:	49 89 47 20          	mov    %rax,0x20(%r15)
    2619:	49 89 57 28          	mov    %rdx,0x28(%r15)
    261d:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
    2624:	55 46 00 
    2627:	49 89 47 30          	mov    %rax,0x30(%r15)
    262b:	44 89 f7             	mov    %r14d,%edi
    262e:	e8 9d ea ff ff       	call   10d0 <close@plt>
    2633:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2638:	e9 33 02 00 00       	jmp    2870 <submitr+0x53c>
    263d:	49 0f a3 c5          	bt     %rax,%r13
    2641:	73 1e                	jae    2661 <submitr+0x32d>
    2643:	88 55 00             	mov    %dl,0x0(%rbp)
    2646:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
    264a:	48 83 c3 01          	add    $0x1,%rbx
    264e:	4c 39 e3             	cmp    %r12,%rbx
    2651:	0f 84 42 03 00 00    	je     2999 <submitr+0x665>
    2657:	0f b6 13             	movzbl (%rbx),%edx
    265a:	8d 42 d6             	lea    -0x2a(%rdx),%eax
    265d:	3c 35                	cmp    $0x35,%al
    265f:	76 dc                	jbe    263d <submitr+0x309>
    2661:	89 d0                	mov    %edx,%eax
    2663:	83 e0 df             	and    $0xffffffdf,%eax
    2666:	83 e8 41             	sub    $0x41,%eax
    2669:	3c 19                	cmp    $0x19,%al
    266b:	76 d6                	jbe    2643 <submitr+0x30f>
    266d:	80 fa 20             	cmp    $0x20,%dl
    2670:	74 50                	je     26c2 <submitr+0x38e>
    2672:	8d 42 e0             	lea    -0x20(%rdx),%eax
    2675:	3c 5f                	cmp    $0x5f,%al
    2677:	76 09                	jbe    2682 <submitr+0x34e>
    2679:	80 fa 09             	cmp    $0x9,%dl
    267c:	0f 85 8a 02 00 00    	jne    290c <submitr+0x5d8>
    2682:	0f b6 d2             	movzbl %dl,%edx
    2685:	48 8d 35 83 10 00 00 	lea    0x1083(%rip),%rsi        # 370f <array.0+0x4cf>
    268c:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    2691:	b8 00 00 00 00       	mov    $0x0,%eax
    2696:	e8 e5 ea ff ff       	call   1180 <sprintf@plt>
    269b:	0f b6 84 24 60 80 00 	movzbl 0x8060(%rsp),%eax
    26a2:	00 
    26a3:	88 45 00             	mov    %al,0x0(%rbp)
    26a6:	0f b6 84 24 61 80 00 	movzbl 0x8061(%rsp),%eax
    26ad:	00 
    26ae:	88 45 01             	mov    %al,0x1(%rbp)
    26b1:	0f b6 84 24 62 80 00 	movzbl 0x8062(%rsp),%eax
    26b8:	00 
    26b9:	88 45 02             	mov    %al,0x2(%rbp)
    26bc:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
    26c0:	eb 88                	jmp    264a <submitr+0x316>
    26c2:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
    26c6:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
    26ca:	e9 7b ff ff ff       	jmp    264a <submitr+0x316>
    26cf:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    26d6:	3a 20 43 
    26d9:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    26e0:	20 75 6e 
    26e3:	49 89 07             	mov    %rax,(%r15)
    26e6:	49 89 57 08          	mov    %rdx,0x8(%r15)
    26ea:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    26f1:	74 6f 20 
    26f4:	48 ba 77 72 69 74 65 	movabs $0x6f74206574697277,%rdx
    26fb:	20 74 6f 
    26fe:	49 89 47 10          	mov    %rax,0x10(%r15)
    2702:	49 89 57 18          	mov    %rdx,0x18(%r15)
    2706:	48 b8 20 74 68 65 20 	movabs $0x7265732065687420,%rax
    270d:	73 65 72 
    2710:	49 89 47 20          	mov    %rax,0x20(%r15)
    2714:	41 c7 47 28 76 65 72 	movl   $0x726576,0x28(%r15)
    271b:	00 
    271c:	44 89 f7             	mov    %r14d,%edi
    271f:	e8 ac e9 ff ff       	call   10d0 <close@plt>
    2724:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2729:	e9 42 01 00 00       	jmp    2870 <submitr+0x53c>
    272e:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2735:	3a 20 43 
    2738:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    273f:	20 75 6e 
    2742:	49 89 07             	mov    %rax,(%r15)
    2745:	49 89 57 08          	mov    %rdx,0x8(%r15)
    2749:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2750:	74 6f 20 
    2753:	48 ba 77 72 69 74 65 	movabs $0x6f74206574697277,%rdx
    275a:	20 74 6f 
    275d:	49 89 47 10          	mov    %rax,0x10(%r15)
    2761:	49 89 57 18          	mov    %rdx,0x18(%r15)
    2765:	48 b8 20 74 68 65 20 	movabs $0x7265732065687420,%rax
    276c:	73 65 72 
    276f:	49 89 47 20          	mov    %rax,0x20(%r15)
    2773:	41 c7 47 28 76 65 72 	movl   $0x726576,0x28(%r15)
    277a:	00 
    277b:	44 89 f7             	mov    %r14d,%edi
    277e:	e8 4d e9 ff ff       	call   10d0 <close@plt>
    2783:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2788:	e9 e3 00 00 00       	jmp    2870 <submitr+0x53c>
    278d:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2794:	3a 20 43 
    2797:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    279e:	20 75 6e 
    27a1:	49 89 07             	mov    %rax,(%r15)
    27a4:	49 89 57 08          	mov    %rdx,0x8(%r15)
    27a8:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    27af:	74 6f 20 
    27b2:	48 ba 72 65 61 64 20 	movabs $0x7269662064616572,%rdx
    27b9:	66 69 72 
    27bc:	49 89 47 10          	mov    %rax,0x10(%r15)
    27c0:	49 89 57 18          	mov    %rdx,0x18(%r15)
    27c4:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
    27cb:	61 64 65 
    27ce:	48 ba 72 20 66 72 6f 	movabs $0x73206d6f72662072,%rdx
    27d5:	6d 20 73 
    27d8:	49 89 47 20          	mov    %rax,0x20(%r15)
    27dc:	49 89 57 28          	mov    %rdx,0x28(%r15)
    27e0:	41 c7 47 30 65 72 76 	movl   $0x65767265,0x30(%r15)
    27e7:	65 
    27e8:	66 41 c7 47 34 72 00 	movw   $0x72,0x34(%r15)
    27ef:	44 89 f7             	mov    %r14d,%edi
    27f2:	e8 d9 e8 ff ff       	call   10d0 <close@plt>
    27f7:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    27fc:	eb 72                	jmp    2870 <submitr+0x53c>
    27fe:	48 8d 8c 24 60 80 00 	lea    0x8060(%rsp),%rcx
    2805:	00 
    2806:	48 8d 35 53 0e 00 00 	lea    0xe53(%rip),%rsi        # 3660 <array.0+0x420>
    280d:	4c 89 ff             	mov    %r15,%rdi
    2810:	b8 00 00 00 00       	mov    $0x0,%eax
    2815:	e8 66 e9 ff ff       	call   1180 <sprintf@plt>
    281a:	44 89 f7             	mov    %r14d,%edi
    281d:	e8 ae e8 ff ff       	call   10d0 <close@plt>
    2822:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2827:	eb 47                	jmp    2870 <submitr+0x53c>
    2829:	48 8d b4 24 60 20 00 	lea    0x2060(%rsp),%rsi
    2830:	00 
    2831:	48 8d 7c 24 50       	lea    0x50(%rsp),%rdi
    2836:	ba 00 20 00 00       	mov    $0x2000,%edx
    283b:	e8 28 fa ff ff       	call   2268 <rio_readlineb>
    2840:	48 85 c0             	test   %rax,%rax
    2843:	7e 54                	jle    2899 <submitr+0x565>
    2845:	48 8d b4 24 60 20 00 	lea    0x2060(%rsp),%rsi
    284c:	00 
    284d:	4c 89 ff             	mov    %r15,%rdi
    2850:	e8 0b e8 ff ff       	call   1060 <strcpy@plt>
    2855:	44 89 f7             	mov    %r14d,%edi
    2858:	e8 73 e8 ff ff       	call   10d0 <close@plt>
    285d:	48 8d 35 d0 0e 00 00 	lea    0xed0(%rip),%rsi        # 3734 <array.0+0x4f4>
    2864:	4c 89 ff             	mov    %r15,%rdi
    2867:	e8 94 e8 ff ff       	call   1100 <strcmp@plt>
    286c:	f7 d8                	neg    %eax
    286e:	19 c0                	sbb    %eax,%eax
    2870:	48 8b 94 24 68 a0 00 	mov    0xa068(%rsp),%rdx
    2877:	00 
    2878:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    287f:	00 00 
    2881:	0f 85 be 02 00 00    	jne    2b45 <submitr+0x811>
    2887:	48 81 c4 78 a0 00 00 	add    $0xa078,%rsp
    288e:	5b                   	pop    %rbx
    288f:	5d                   	pop    %rbp
    2890:	41 5c                	pop    %r12
    2892:	41 5d                	pop    %r13
    2894:	41 5e                	pop    %r14
    2896:	41 5f                	pop    %r15
    2898:	c3                   	ret
    2899:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    28a0:	3a 20 43 
    28a3:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    28aa:	20 75 6e 
    28ad:	49 89 07             	mov    %rax,(%r15)
    28b0:	49 89 57 08          	mov    %rdx,0x8(%r15)
    28b4:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    28bb:	74 6f 20 
    28be:	48 ba 72 65 61 64 20 	movabs $0x6174732064616572,%rdx
    28c5:	73 74 61 
    28c8:	49 89 47 10          	mov    %rax,0x10(%r15)
    28cc:	49 89 57 18          	mov    %rdx,0x18(%r15)
    28d0:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
    28d7:	65 73 73 
    28da:	48 ba 61 67 65 20 66 	movabs $0x6d6f726620656761,%rdx
    28e1:	72 6f 6d 
    28e4:	49 89 47 20          	mov    %rax,0x20(%r15)
    28e8:	49 89 57 28          	mov    %rdx,0x28(%r15)
    28ec:	48 b8 20 73 65 72 76 	movabs $0x72657672657320,%rax
    28f3:	65 72 00 
    28f6:	49 89 47 30          	mov    %rax,0x30(%r15)
    28fa:	44 89 f7             	mov    %r14d,%edi
    28fd:	e8 ce e7 ff ff       	call   10d0 <close@plt>
    2902:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2907:	e9 64 ff ff ff       	jmp    2870 <submitr+0x53c>
    290c:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
    2913:	3a 20 52 
    2916:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
    291d:	20 73 74 
    2920:	49 89 07             	mov    %rax,(%r15)
    2923:	49 89 57 08          	mov    %rdx,0x8(%r15)
    2927:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
    292e:	63 6f 6e 
    2931:	48 ba 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rdx
    2938:	20 61 6e 
    293b:	49 89 47 10          	mov    %rax,0x10(%r15)
    293f:	49 89 57 18          	mov    %rdx,0x18(%r15)
    2943:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
    294a:	67 61 6c 
    294d:	48 ba 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rdx
    2954:	6e 70 72 
    2957:	49 89 47 20          	mov    %rax,0x20(%r15)
    295b:	49 89 57 28          	mov    %rdx,0x28(%r15)
    295f:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
    2966:	6c 65 20 
    2969:	48 ba 63 68 61 72 61 	movabs $0x6574636172616863,%rdx
    2970:	63 74 65 
    2973:	49 89 47 30          	mov    %rax,0x30(%r15)
    2977:	49 89 57 38          	mov    %rdx,0x38(%r15)
    297b:	66 41 c7 47 40 72 2e 	movw   $0x2e72,0x40(%r15)
    2982:	41 c6 47 42 00       	movb   $0x0,0x42(%r15)
    2987:	44 89 f7             	mov    %r14d,%edi
    298a:	e8 41 e7 ff ff       	call   10d0 <close@plt>
    298f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2994:	e9 d7 fe ff ff       	jmp    2870 <submitr+0x53c>
    2999:	48 8d 9c 24 60 20 00 	lea    0x2060(%rsp),%rbx
    29a0:	00 
    29a1:	4c 8d 8c 24 60 40 00 	lea    0x4060(%rsp),%r9
    29a8:	00 
    29a9:	4c 8b 44 24 18       	mov    0x18(%rsp),%r8
    29ae:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
    29b3:	48 8b 54 24 10       	mov    0x10(%rsp),%rdx
    29b8:	48 8d 35 d1 0c 00 00 	lea    0xcd1(%rip),%rsi        # 3690 <array.0+0x450>
    29bf:	48 89 df             	mov    %rbx,%rdi
    29c2:	b8 00 00 00 00       	mov    $0x0,%eax
    29c7:	e8 b4 e7 ff ff       	call   1180 <sprintf@plt>
    29cc:	48 89 df             	mov    %rbx,%rdi
    29cf:	e8 bc e6 ff ff       	call   1090 <strlen@plt>
    29d4:	48 89 c2             	mov    %rax,%rdx
    29d7:	48 89 de             	mov    %rbx,%rsi
    29da:	44 89 f7             	mov    %r14d,%edi
    29dd:	e8 26 f8 ff ff       	call   2208 <rio_writen>
    29e2:	48 85 c0             	test   %rax,%rax
    29e5:	0f 88 e4 fc ff ff    	js     26cf <submitr+0x39b>
    29eb:	48 8d 9c 24 60 20 00 	lea    0x2060(%rsp),%rbx
    29f2:	00 
    29f3:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
    29f8:	48 8d 35 17 0d 00 00 	lea    0xd17(%rip),%rsi        # 3716 <array.0+0x4d6>
    29ff:	48 89 df             	mov    %rbx,%rdi
    2a02:	b8 00 00 00 00       	mov    $0x0,%eax
    2a07:	e8 74 e7 ff ff       	call   1180 <sprintf@plt>
    2a0c:	48 89 df             	mov    %rbx,%rdi
    2a0f:	e8 7c e6 ff ff       	call   1090 <strlen@plt>
    2a14:	48 89 c2             	mov    %rax,%rdx
    2a17:	48 89 de             	mov    %rbx,%rsi
    2a1a:	44 89 f7             	mov    %r14d,%edi
    2a1d:	e8 e6 f7 ff ff       	call   2208 <rio_writen>
    2a22:	48 85 c0             	test   %rax,%rax
    2a25:	0f 88 03 fd ff ff    	js     272e <submitr+0x3fa>
    2a2b:	44 89 74 24 50       	mov    %r14d,0x50(%rsp)
    2a30:	c7 44 24 54 00 00 00 	movl   $0x0,0x54(%rsp)
    2a37:	00 
    2a38:	48 8d 7c 24 50       	lea    0x50(%rsp),%rdi
    2a3d:	48 8d 44 24 60       	lea    0x60(%rsp),%rax
    2a42:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
    2a47:	48 8d b4 24 60 20 00 	lea    0x2060(%rsp),%rsi
    2a4e:	00 
    2a4f:	ba 00 20 00 00       	mov    $0x2000,%edx
    2a54:	e8 0f f8 ff ff       	call   2268 <rio_readlineb>
    2a59:	48 85 c0             	test   %rax,%rax
    2a5c:	0f 8e 2b fd ff ff    	jle    278d <submitr+0x459>
    2a62:	48 8d 4c 24 3c       	lea    0x3c(%rsp),%rcx
    2a67:	48 8d 94 24 60 60 00 	lea    0x6060(%rsp),%rdx
    2a6e:	00 
    2a6f:	48 8d bc 24 60 20 00 	lea    0x2060(%rsp),%rdi
    2a76:	00 
    2a77:	4c 8d 84 24 60 80 00 	lea    0x8060(%rsp),%r8
    2a7e:	00 
    2a7f:	48 8d 35 9d 0c 00 00 	lea    0xc9d(%rip),%rsi        # 3723 <array.0+0x4e3>
    2a86:	b8 00 00 00 00       	mov    $0x0,%eax
    2a8b:	e8 c0 e6 ff ff       	call   1150 <__isoc99_sscanf@plt>
    2a90:	8b 54 24 3c          	mov    0x3c(%rsp),%edx
    2a94:	81 fa c8 00 00 00    	cmp    $0xc8,%edx
    2a9a:	0f 85 5e fd ff ff    	jne    27fe <submitr+0x4ca>
    2aa0:	48 8d 1d 79 0c 00 00 	lea    0xc79(%rip),%rbx        # 3720 <array.0+0x4e0>
    2aa7:	48 8d bc 24 60 20 00 	lea    0x2060(%rsp),%rdi
    2aae:	00 
    2aaf:	48 89 de             	mov    %rbx,%rsi
    2ab2:	e8 49 e6 ff ff       	call   1100 <strcmp@plt>
    2ab7:	85 c0                	test   %eax,%eax
    2ab9:	0f 84 6a fd ff ff    	je     2829 <submitr+0x4f5>
    2abf:	48 8d b4 24 60 20 00 	lea    0x2060(%rsp),%rsi
    2ac6:	00 
    2ac7:	48 8d 7c 24 50       	lea    0x50(%rsp),%rdi
    2acc:	ba 00 20 00 00       	mov    $0x2000,%edx
    2ad1:	e8 92 f7 ff ff       	call   2268 <rio_readlineb>
    2ad6:	48 85 c0             	test   %rax,%rax
    2ad9:	7f cc                	jg     2aa7 <submitr+0x773>
    2adb:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2ae2:	3a 20 43 
    2ae5:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2aec:	20 75 6e 
    2aef:	49 89 07             	mov    %rax,(%r15)
    2af2:	49 89 57 08          	mov    %rdx,0x8(%r15)
    2af6:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2afd:	74 6f 20 
    2b00:	48 ba 72 65 61 64 20 	movabs $0x6165682064616572,%rdx
    2b07:	68 65 61 
    2b0a:	49 89 47 10          	mov    %rax,0x10(%r15)
    2b0e:	49 89 57 18          	mov    %rdx,0x18(%r15)
    2b12:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
    2b19:	66 72 6f 
    2b1c:	48 ba 6d 20 73 65 72 	movabs $0x726576726573206d,%rdx
    2b23:	76 65 72 
    2b26:	49 89 47 20          	mov    %rax,0x20(%r15)
    2b2a:	49 89 57 28          	mov    %rdx,0x28(%r15)
    2b2e:	41 c6 47 30 00       	movb   $0x0,0x30(%r15)
    2b33:	44 89 f7             	mov    %r14d,%edi
    2b36:	e8 95 e5 ff ff       	call   10d0 <close@plt>
    2b3b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2b40:	e9 2b fd ff ff       	jmp    2870 <submitr+0x53c>
    2b45:	e8 56 e5 ff ff       	call   10a0 <__stack_chk_fail@plt>

0000000000002b4a <init_timeout>:
    2b4a:	85 ff                	test   %edi,%edi
    2b4c:	75 01                	jne    2b4f <init_timeout+0x5>
    2b4e:	c3                   	ret
    2b4f:	53                   	push   %rbx
    2b50:	89 fb                	mov    %edi,%ebx
    2b52:	48 8d 35 84 f6 ff ff 	lea    -0x97c(%rip),%rsi        # 21dd <sigalrm_handler>
    2b59:	bf 0e 00 00 00       	mov    $0xe,%edi
    2b5e:	e8 ad e5 ff ff       	call   1110 <signal@plt>
    2b63:	85 db                	test   %ebx,%ebx
    2b65:	b8 00 00 00 00       	mov    $0x0,%eax
    2b6a:	0f 49 c3             	cmovns %ebx,%eax
    2b6d:	89 c7                	mov    %eax,%edi
    2b6f:	e8 4c e5 ff ff       	call   10c0 <alarm@plt>
    2b74:	5b                   	pop    %rbx
    2b75:	c3                   	ret

0000000000002b76 <init_driver>:
    2b76:	41 54                	push   %r12
    2b78:	55                   	push   %rbp
    2b79:	53                   	push   %rbx
    2b7a:	48 83 ec 20          	sub    $0x20,%rsp
    2b7e:	48 89 fd             	mov    %rdi,%rbp
    2b81:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    2b88:	00 00 
    2b8a:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    2b8f:	31 c0                	xor    %eax,%eax
    2b91:	be 01 00 00 00       	mov    $0x1,%esi
    2b96:	bf 0d 00 00 00       	mov    $0xd,%edi
    2b9b:	e8 70 e5 ff ff       	call   1110 <signal@plt>
    2ba0:	be 01 00 00 00       	mov    $0x1,%esi
    2ba5:	bf 1d 00 00 00       	mov    $0x1d,%edi
    2baa:	e8 61 e5 ff ff       	call   1110 <signal@plt>
    2baf:	be 01 00 00 00       	mov    $0x1,%esi
    2bb4:	bf 1d 00 00 00       	mov    $0x1d,%edi
    2bb9:	e8 52 e5 ff ff       	call   1110 <signal@plt>
    2bbe:	ba 00 00 00 00       	mov    $0x0,%edx
    2bc3:	be 01 00 00 00       	mov    $0x1,%esi
    2bc8:	bf 02 00 00 00       	mov    $0x2,%edi
    2bcd:	e8 fe e5 ff ff       	call   11d0 <socket@plt>
    2bd2:	85 c0                	test   %eax,%eax
    2bd4:	0f 88 97 00 00 00    	js     2c71 <init_driver+0xfb>
    2bda:	89 c3                	mov    %eax,%ebx
    2bdc:	48 8d 3d 54 0b 00 00 	lea    0xb54(%rip),%rdi        # 3737 <array.0+0x4f7>
    2be3:	e8 38 e5 ff ff       	call   1120 <gethostbyname@plt>
    2be8:	48 85 c0             	test   %rax,%rax
    2beb:	0f 84 cc 00 00 00    	je     2cbd <init_driver+0x147>
    2bf1:	49 89 e4             	mov    %rsp,%r12
    2bf4:	48 c7 04 24 00 00 00 	movq   $0x0,(%rsp)
    2bfb:	00 
    2bfc:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
    2c03:	00 00 
    2c05:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
    2c0b:	48 63 50 14          	movslq 0x14(%rax),%rdx
    2c0f:	48 8b 40 18          	mov    0x18(%rax),%rax
    2c13:	48 8d 7c 24 04       	lea    0x4(%rsp),%rdi
    2c18:	48 8b 30             	mov    (%rax),%rsi
    2c1b:	e8 40 e5 ff ff       	call   1160 <memmove@plt>
    2c20:	66 c7 44 24 02 00 50 	movw   $0x5000,0x2(%rsp)
    2c27:	ba 10 00 00 00       	mov    $0x10,%edx
    2c2c:	4c 89 e6             	mov    %r12,%rsi
    2c2f:	89 df                	mov    %ebx,%edi
    2c31:	e8 6a e5 ff ff       	call   11a0 <connect@plt>
    2c36:	85 c0                	test   %eax,%eax
    2c38:	0f 88 e7 00 00 00    	js     2d25 <init_driver+0x1af>
    2c3e:	89 df                	mov    %ebx,%edi
    2c40:	e8 8b e4 ff ff       	call   10d0 <close@plt>
    2c45:	66 c7 45 00 4f 4b    	movw   $0x4b4f,0x0(%rbp)
    2c4b:	c6 45 02 00          	movb   $0x0,0x2(%rbp)
    2c4f:	b8 00 00 00 00       	mov    $0x0,%eax
    2c54:	48 8b 54 24 18       	mov    0x18(%rsp),%rdx
    2c59:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    2c60:	00 00 
    2c62:	0f 85 ee 00 00 00    	jne    2d56 <init_driver+0x1e0>
    2c68:	48 83 c4 20          	add    $0x20,%rsp
    2c6c:	5b                   	pop    %rbx
    2c6d:	5d                   	pop    %rbp
    2c6e:	41 5c                	pop    %r12
    2c70:	c3                   	ret
    2c71:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2c78:	3a 20 43 
    2c7b:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2c82:	20 75 6e 
    2c85:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2c89:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2c8d:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2c94:	74 6f 20 
    2c97:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
    2c9e:	65 20 73 
    2ca1:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2ca5:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2ca9:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
    2cb0:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
    2cb6:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2cbb:	eb 97                	jmp    2c54 <init_driver+0xde>
    2cbd:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
    2cc4:	3a 20 44 
    2cc7:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
    2cce:	20 75 6e 
    2cd1:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2cd5:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2cd9:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2ce0:	74 6f 20 
    2ce3:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
    2cea:	76 65 20 
    2ced:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2cf1:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2cf5:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
    2cfc:	72 20 61 
    2cff:	48 89 45 20          	mov    %rax,0x20(%rbp)
    2d03:	c7 45 28 64 64 72 65 	movl   $0x65726464,0x28(%rbp)
    2d0a:	66 c7 45 2c 73 73    	movw   $0x7373,0x2c(%rbp)
    2d10:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
    2d14:	89 df                	mov    %ebx,%edi
    2d16:	e8 b5 e3 ff ff       	call   10d0 <close@plt>
    2d1b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2d20:	e9 2f ff ff ff       	jmp    2c54 <init_driver+0xde>
    2d25:	b9 50 00 00 00       	mov    $0x50,%ecx
    2d2a:	48 8d 15 06 0a 00 00 	lea    0xa06(%rip),%rdx        # 3737 <array.0+0x4f7>
    2d31:	48 8d 35 a8 09 00 00 	lea    0x9a8(%rip),%rsi        # 36e0 <array.0+0x4a0>
    2d38:	48 89 ef             	mov    %rbp,%rdi
    2d3b:	b8 00 00 00 00       	mov    $0x0,%eax
    2d40:	e8 3b e4 ff ff       	call   1180 <sprintf@plt>
    2d45:	89 df                	mov    %ebx,%edi
    2d47:	e8 84 e3 ff ff       	call   10d0 <close@plt>
    2d4c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2d51:	e9 fe fe ff ff       	jmp    2c54 <init_driver+0xde>
    2d56:	e8 45 e3 ff ff       	call   10a0 <__stack_chk_fail@plt>

0000000000002d5b <driver_post>:
    2d5b:	53                   	push   %rbx
    2d5c:	4c 89 c3             	mov    %r8,%rbx
    2d5f:	85 c9                	test   %ecx,%ecx
    2d61:	75 17                	jne    2d7a <driver_post+0x1f>
    2d63:	48 85 ff             	test   %rdi,%rdi
    2d66:	74 05                	je     2d6d <driver_post+0x12>
    2d68:	80 3f 00             	cmpb   $0x0,(%rdi)
    2d6b:	75 31                	jne    2d9e <driver_post+0x43>
    2d6d:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
    2d72:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
    2d76:	89 c8                	mov    %ecx,%eax
    2d78:	5b                   	pop    %rbx
    2d79:	c3                   	ret
    2d7a:	48 89 d6             	mov    %rdx,%rsi
    2d7d:	48 8d 3d be 09 00 00 	lea    0x9be(%rip),%rdi        # 3742 <array.0+0x502>
    2d84:	b8 00 00 00 00       	mov    $0x0,%eax
    2d89:	e8 22 e3 ff ff       	call   10b0 <printf@plt>
    2d8e:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
    2d93:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
    2d97:	b8 00 00 00 00       	mov    $0x0,%eax
    2d9c:	eb da                	jmp    2d78 <driver_post+0x1d>
    2d9e:	41 50                	push   %r8
    2da0:	52                   	push   %rdx
    2da1:	4c 8d 0d b1 09 00 00 	lea    0x9b1(%rip),%r9        # 3759 <array.0+0x519>
    2da8:	49 89 f0             	mov    %rsi,%r8
    2dab:	48 89 f9             	mov    %rdi,%rcx
    2dae:	48 8d 15 ac 09 00 00 	lea    0x9ac(%rip),%rdx        # 3761 <array.0+0x521>
    2db5:	be 50 00 00 00       	mov    $0x50,%esi
    2dba:	48 8d 3d 76 09 00 00 	lea    0x976(%rip),%rdi        # 3737 <array.0+0x4f7>
    2dc1:	e8 6e f5 ff ff       	call   2334 <submitr>
    2dc6:	48 83 c4 10          	add    $0x10,%rsp
    2dca:	eb ac                	jmp    2d78 <driver_post+0x1d>
    2dcc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000002dd0 <__libc_csu_init>:
    2dd0:	f3 0f 1e fa          	endbr64
    2dd4:	41 57                	push   %r15
    2dd6:	4c 8d 3d 0b 30 00 00 	lea    0x300b(%rip),%r15        # 5de8 <__frame_dummy_init_array_entry>
    2ddd:	41 56                	push   %r14
    2ddf:	49 89 d6             	mov    %rdx,%r14
    2de2:	41 55                	push   %r13
    2de4:	49 89 f5             	mov    %rsi,%r13
    2de7:	41 54                	push   %r12
    2de9:	41 89 fc             	mov    %edi,%r12d
    2dec:	55                   	push   %rbp
    2ded:	48 8d 2d fc 2f 00 00 	lea    0x2ffc(%rip),%rbp        # 5df0 <__do_global_dtors_aux_fini_array_entry>
    2df4:	53                   	push   %rbx
    2df5:	4c 29 fd             	sub    %r15,%rbp
    2df8:	48 83 ec 08          	sub    $0x8,%rsp
    2dfc:	e8 ff e1 ff ff       	call   1000 <_init>
    2e01:	48 c1 fd 03          	sar    $0x3,%rbp
    2e05:	74 1f                	je     2e26 <__libc_csu_init+0x56>
    2e07:	31 db                	xor    %ebx,%ebx
    2e09:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    2e10:	4c 89 f2             	mov    %r14,%rdx
    2e13:	4c 89 ee             	mov    %r13,%rsi
    2e16:	44 89 e7             	mov    %r12d,%edi
    2e19:	41 ff 14 df          	call   *(%r15,%rbx,8)
    2e1d:	48 83 c3 01          	add    $0x1,%rbx
    2e21:	48 39 dd             	cmp    %rbx,%rbp
    2e24:	75 ea                	jne    2e10 <__libc_csu_init+0x40>
    2e26:	48 83 c4 08          	add    $0x8,%rsp
    2e2a:	5b                   	pop    %rbx
    2e2b:	5d                   	pop    %rbp
    2e2c:	41 5c                	pop    %r12
    2e2e:	41 5d                	pop    %r13
    2e30:	41 5e                	pop    %r14
    2e32:	41 5f                	pop    %r15
    2e34:	c3                   	ret
    2e35:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    2e3c:	00 00 00 00 

0000000000002e40 <__libc_csu_fini>:
    2e40:	f3 0f 1e fa          	endbr64
    2e44:	c3                   	ret

Disassembly of section .fini:

0000000000002e48 <_fini>:
    2e48:	f3 0f 1e fa          	endbr64
    2e4c:	48 83 ec 08          	sub    $0x8,%rsp
    2e50:	48 83 c4 08          	add    $0x8,%rsp
    2e54:	c3                   	ret
