
a.out:     формат файла elf64-x86-64


Дизассемблирование раздела .interp:

0000000000400238 <.interp>:
  400238:	2f                   	(bad)  
  400239:	6c                   	insb   (%dx),%es:(%rdi)
  40023a:	69 62 36 34 2f 6c 64 	imul   $0x646c2f34,0x36(%rdx),%esp
  400241:	2d 6c 69 6e 75       	sub    $0x756e696c,%eax
  400246:	78 2d                	js     400275 <_init-0x3fb>
  400248:	78 38                	js     400282 <_init-0x3ee>
  40024a:	36 2d 36 34 2e 73    	ss sub $0x732e3436,%eax
  400250:	6f                   	outsl  %ds:(%rsi),(%dx)
  400251:	2e 32 00             	xor    %cs:(%rax),%al

Дизассемблирование раздела .note.ABI-tag:

0000000000400254 <.note.ABI-tag>:
  400254:	04 00                	add    $0x0,%al
  400256:	00 00                	add    %al,(%rax)
  400258:	10 00                	adc    %al,(%rax)
  40025a:	00 00                	add    %al,(%rax)
  40025c:	01 00                	add    %eax,(%rax)
  40025e:	00 00                	add    %al,(%rax)
  400260:	47                   	rex.RXB
  400261:	4e 55                	rex.WRX push %rbp
  400263:	00 00                	add    %al,(%rax)
  400265:	00 00                	add    %al,(%rax)
  400267:	00 03                	add    %al,(%rbx)
  400269:	00 00                	add    %al,(%rax)
  40026b:	00 02                	add    %al,(%rdx)
  40026d:	00 00                	add    %al,(%rax)
  40026f:	00 00                	add    %al,(%rax)
  400271:	00 00                	add    %al,(%rax)
	...

Дизассемблирование раздела .note.gnu.build-id:

0000000000400274 <.note.gnu.build-id>:
  400274:	04 00                	add    $0x0,%al
  400276:	00 00                	add    %al,(%rax)
  400278:	14 00                	adc    $0x0,%al
  40027a:	00 00                	add    %al,(%rax)
  40027c:	03 00                	add    (%rax),%eax
  40027e:	00 00                	add    %al,(%rax)
  400280:	47                   	rex.RXB
  400281:	4e 55                	rex.WRX push %rbp
  400283:	00 4c c6 30          	add    %cl,0x30(%rsi,%rax,8)
  400287:	2a a0 d8 dc 98 9e    	sub    -0x61672328(%rax),%ah
  40028d:	f7 40 25 5c b2 f8 8a 	testl  $0x8af8b25c,0x25(%rax)
  400294:	20 e6                	and    %ah,%dh
  400296:	78 03                	js     40029b <_init-0x3d5>

Дизассемблирование раздела .gnu.hash:

0000000000400298 <.gnu.hash>:
  400298:	01 00                	add    %eax,(%rax)
  40029a:	00 00                	add    %al,(%rax)
  40029c:	01 00                	add    %eax,(%rax)
  40029e:	00 00                	add    %al,(%rax)
  4002a0:	01 00                	add    %eax,(%rax)
	...

Дизассемблирование раздела .dynsym:

00000000004002b8 <.dynsym>:
	...
  4002d0:	6a 00                	pushq  $0x0
  4002d2:	00 00                	add    %al,(%rax)
  4002d4:	12 00                	adc    (%rax),%al
	...
  4002e6:	00 00                	add    %al,(%rax)
  4002e8:	4c 00 00             	rex.WR add %r8b,(%rax)
  4002eb:	00 12                	add    %dl,(%rdx)
	...
  4002fd:	00 00                	add    %al,(%rax)
  4002ff:	00 3e                	add    %bh,(%rsi)
  400301:	00 00                	add    %al,(%rax)
  400303:	00 12                	add    %dl,(%rdx)
	...
  400315:	00 00                	add    %al,(%rax)
  400317:	00 2c 00             	add    %ch,(%rax,%rax,1)
  40031a:	00 00                	add    %al,(%rax)
  40031c:	12 00                	adc    (%rax),%al
	...
  40032e:	00 00                	add    %al,(%rax)
  400330:	33 00                	xor    (%rax),%eax
  400332:	00 00                	add    %al,(%rax)
  400334:	12 00                	adc    (%rax),%al
	...
  400346:	00 00                	add    %al,(%rax)
  400348:	1e                   	(bad)  
  400349:	00 00                	add    %al,(%rax)
  40034b:	00 12                	add    %dl,(%rdx)
	...
  40035d:	00 00                	add    %al,(%rax)
  40035f:	00 25 00 00 00 12    	add    %ah,0x12000000(%rip)        # 12400365 <__TMC_END__+0x11dff2dd>
	...
  400375:	00 00                	add    %al,(%rax)
  400377:	00 58 00             	add    %bl,0x0(%rax)
  40037a:	00 00                	add    %al,(%rax)
  40037c:	12 00                	adc    (%rax),%al
	...
  40038e:	00 00                	add    %al,(%rax)
  400390:	18 00                	sbb    %al,(%rax)
  400392:	00 00                	add    %al,(%rax)
  400394:	12 00                	adc    (%rax),%al
	...
  4003a6:	00 00                	add    %al,(%rax)
  4003a8:	7b 00                	jnp    4003aa <_init-0x2c6>
  4003aa:	00 00                	add    %al,(%rax)
  4003ac:	20 00                	and    %al,(%rax)
	...
  4003be:	00 00                	add    %al,(%rax)
  4003c0:	45 00 00             	add    %r8b,(%r8)
  4003c3:	00 12                	add    %dl,(%rdx)
	...
  4003d5:	00 00                	add    %al,(%rax)
  4003d7:	00 38                	add    %bh,(%rax)
  4003d9:	00 00                	add    %al,(%rax)
  4003db:	00 12                	add    %dl,(%rdx)
	...
  4003ed:	00 00                	add    %al,(%rax)
  4003ef:	00 12                	add    %dl,(%rdx)
  4003f1:	00 00                	add    %al,(%rax)
  4003f3:	00 12                	add    %dl,(%rdx)
	...
  400405:	00 00                	add    %al,(%rax)
  400407:	00 52 00             	add    %dl,0x0(%rdx)
  40040a:	00 00                	add    %al,(%rax)
  40040c:	12 00                	adc    (%rax),%al
	...
  40041e:	00 00                	add    %al,(%rax)
  400420:	0b 00                	or     (%rax),%eax
  400422:	00 00                	add    %al,(%rax)
  400424:	12 00                	adc    (%rax),%al
	...

Дизассемблирование раздела .dynstr:

0000000000400438 <.dynstr>:
  400438:	00 6c 69 62          	add    %ch,0x62(%rcx,%rbp,2)
  40043c:	63 2e                	movslq (%rsi),%ebp
  40043e:	73 6f                	jae    4004af <_init-0x1c1>
  400440:	2e 36 00 73 6f       	cs add %dh,%ss:0x6f(%rbx)
  400445:	63 6b 65             	movslq 0x65(%rbx),%ebp
  400448:	74 00                	je     40044a <_init-0x226>
  40044a:	66 6f                	outsw  %ds:(%rsi),(%dx)
  40044c:	70 65                	jo     4004b3 <_init-0x1bd>
  40044e:	6e                   	outsb  %ds:(%rsi),(%dx)
  40044f:	00 66 74             	add    %ah,0x74(%rsi)
  400452:	65 6c                	gs insb (%dx),%es:(%rdi)
  400454:	6c                   	insb   (%dx),%es:(%rdi)
  400455:	00 70 72             	add    %dh,0x72(%rax)
  400458:	69 6e 74 66 00 72 65 	imul   $0x65720066,0x74(%rsi),%ebp
  40045f:	77 69                	ja     4004ca <_init-0x1a6>
  400461:	6e                   	outsb  %ds:(%rsi),(%dx)
  400462:	64 00 73 74          	add    %dh,%fs:0x74(%rbx)
  400466:	72 6c                	jb     4004d4 <_init-0x19c>
  400468:	65 6e                	outsb  %gs:(%rsi),(%dx)
  40046a:	00 73 65             	add    %dh,0x65(%rbx)
  40046d:	6e                   	outsb  %ds:(%rsi),(%dx)
  40046e:	64 00 66 73          	add    %ah,%fs:0x73(%rsi)
  400472:	65 65 6b 00 66       	gs imul $0x66,%gs:(%rax),%eax
  400477:	63 6c 6f 73          	movslq 0x73(%rdi,%rbp,2),%ebp
  40047b:	65 00 6d 61          	add    %ch,%gs:0x61(%rbp)
  40047f:	6c                   	insb   (%dx),%es:(%rdi)
  400480:	6c                   	insb   (%dx),%es:(%rdi)
  400481:	6f                   	outsl  %ds:(%rsi),(%dx)
  400482:	63 00                	movslq (%rax),%eax
  400484:	66 72 65             	data16 jb 4004ec <_init-0x184>
  400487:	61                   	(bad)  
  400488:	64 00 73 6c          	add    %dh,%fs:0x6c(%rbx)
  40048c:	65 65 70 00          	gs gs jo 400490 <_init-0x1e0>
  400490:	5f                   	pop    %rdi
  400491:	5f                   	pop    %rdi
  400492:	6c                   	insb   (%dx),%es:(%rdi)
  400493:	69 62 63 5f 73 74 61 	imul   $0x6174735f,0x63(%rdx),%esp
  40049a:	72 74                	jb     400510 <_init-0x160>
  40049c:	5f                   	pop    %rdi
  40049d:	6d                   	insl   (%dx),%es:(%rdi)
  40049e:	61                   	(bad)  
  40049f:	69 6e 00 66 72 65 65 	imul   $0x65657266,0x0(%rsi),%ebp
  4004a6:	00 47 4c             	add    %al,0x4c(%rdi)
  4004a9:	49                   	rex.WB
  4004aa:	42                   	rex.X
  4004ab:	43 5f                	rex.XB pop %r15
  4004ad:	32 2e                	xor    (%rsi),%ch
  4004af:	32 2e                	xor    (%rsi),%ch
  4004b1:	35 00 5f 5f 67       	xor    $0x675f5f00,%eax
  4004b6:	6d                   	insl   (%dx),%es:(%rdi)
  4004b7:	6f                   	outsl  %ds:(%rsi),(%dx)
  4004b8:	6e                   	outsb  %ds:(%rsi),(%dx)
  4004b9:	5f                   	pop    %rdi
  4004ba:	73 74                	jae    400530 <_init-0x140>
  4004bc:	61                   	(bad)  
  4004bd:	72 74                	jb     400533 <_init-0x13d>
  4004bf:	5f                   	pop    %rdi
  4004c0:	5f                   	pop    %rdi
	...

Дизассемблирование раздела .gnu.version:

00000000004004c2 <.gnu.version>:
  4004c2:	00 00                	add    %al,(%rax)
  4004c4:	02 00                	add    (%rax),%al
  4004c6:	02 00                	add    (%rax),%al
  4004c8:	02 00                	add    (%rax),%al
  4004ca:	02 00                	add    (%rax),%al
  4004cc:	02 00                	add    (%rax),%al
  4004ce:	02 00                	add    (%rax),%al
  4004d0:	02 00                	add    (%rax),%al
  4004d2:	02 00                	add    (%rax),%al
  4004d4:	02 00                	add    (%rax),%al
  4004d6:	00 00                	add    %al,(%rax)
  4004d8:	02 00                	add    (%rax),%al
  4004da:	02 00                	add    (%rax),%al
  4004dc:	02 00                	add    (%rax),%al
  4004de:	02 00                	add    (%rax),%al
  4004e0:	02 00                	add    (%rax),%al

Дизассемблирование раздела .gnu.version_r:

00000000004004e8 <.gnu.version_r>:
  4004e8:	01 00                	add    %eax,(%rax)
  4004ea:	01 00                	add    %eax,(%rax)
  4004ec:	01 00                	add    %eax,(%rax)
  4004ee:	00 00                	add    %al,(%rax)
  4004f0:	10 00                	adc    %al,(%rax)
  4004f2:	00 00                	add    %al,(%rax)
  4004f4:	00 00                	add    %al,(%rax)
  4004f6:	00 00                	add    %al,(%rax)
  4004f8:	75 1a                	jne    400514 <_init-0x15c>
  4004fa:	69 09 00 00 02 00    	imul   $0x20000,(%rcx),%ecx
  400500:	6f                   	outsl  %ds:(%rsi),(%dx)
  400501:	00 00                	add    %al,(%rax)
  400503:	00 00                	add    %al,(%rax)
  400505:	00 00                	add    %al,(%rax)
	...

Дизассемблирование раздела .rela.dyn:

0000000000400508 <.rela.dyn>:
  400508:	f0 0f 60 00          	lock punpcklbw (%rax),%mm0
  40050c:	00 00                	add    %al,(%rax)
  40050e:	00 00                	add    %al,(%rax)
  400510:	06                   	(bad)  
  400511:	00 00                	add    %al,(%rax)
  400513:	00 08                	add    %cl,(%rax)
	...
  40051d:	00 00                	add    %al,(%rax)
  40051f:	00 f8                	add    %bh,%al
  400521:	0f 60 00             	punpcklbw (%rax),%mm0
  400524:	00 00                	add    %al,(%rax)
  400526:	00 00                	add    %al,(%rax)
  400528:	06                   	(bad)  
  400529:	00 00                	add    %al,(%rax)
  40052b:	00 0a                	add    %cl,(%rdx)
	...

Дизассемблирование раздела .rela.plt:

0000000000400538 <.rela.plt>:
  400538:	18 10                	sbb    %dl,(%rax)
  40053a:	60                   	(bad)  
  40053b:	00 00                	add    %al,(%rax)
  40053d:	00 00                	add    %al,(%rax)
  40053f:	00 07                	add    %al,(%rdi)
  400541:	00 00                	add    %al,(%rax)
  400543:	00 01                	add    %al,(%rcx)
	...
  40054d:	00 00                	add    %al,(%rax)
  40054f:	00 20                	add    %ah,(%rax)
  400551:	10 60 00             	adc    %ah,0x0(%rax)
  400554:	00 00                	add    %al,(%rax)
  400556:	00 00                	add    %al,(%rax)
  400558:	07                   	(bad)  
  400559:	00 00                	add    %al,(%rax)
  40055b:	00 02                	add    %al,(%rdx)
	...
  400565:	00 00                	add    %al,(%rax)
  400567:	00 28                	add    %ch,(%rax)
  400569:	10 60 00             	adc    %ah,0x0(%rax)
  40056c:	00 00                	add    %al,(%rax)
  40056e:	00 00                	add    %al,(%rax)
  400570:	07                   	(bad)  
  400571:	00 00                	add    %al,(%rax)
  400573:	00 03                	add    %al,(%rbx)
	...
  40057d:	00 00                	add    %al,(%rax)
  40057f:	00 30                	add    %dh,(%rax)
  400581:	10 60 00             	adc    %ah,0x0(%rax)
  400584:	00 00                	add    %al,(%rax)
  400586:	00 00                	add    %al,(%rax)
  400588:	07                   	(bad)  
  400589:	00 00                	add    %al,(%rax)
  40058b:	00 04 00             	add    %al,(%rax,%rax,1)
	...
  400596:	00 00                	add    %al,(%rax)
  400598:	38 10                	cmp    %dl,(%rax)
  40059a:	60                   	(bad)  
  40059b:	00 00                	add    %al,(%rax)
  40059d:	00 00                	add    %al,(%rax)
  40059f:	00 07                	add    %al,(%rdi)
  4005a1:	00 00                	add    %al,(%rax)
  4005a3:	00 05 00 00 00 00    	add    %al,0x0(%rip)        # 4005a9 <_init-0xc7>
  4005a9:	00 00                	add    %al,(%rax)
  4005ab:	00 00                	add    %al,(%rax)
  4005ad:	00 00                	add    %al,(%rax)
  4005af:	00 40 10             	add    %al,0x10(%rax)
  4005b2:	60                   	(bad)  
  4005b3:	00 00                	add    %al,(%rax)
  4005b5:	00 00                	add    %al,(%rax)
  4005b7:	00 07                	add    %al,(%rdi)
  4005b9:	00 00                	add    %al,(%rax)
  4005bb:	00 06                	add    %al,(%rsi)
	...
  4005c5:	00 00                	add    %al,(%rax)
  4005c7:	00 48 10             	add    %cl,0x10(%rax)
  4005ca:	60                   	(bad)  
  4005cb:	00 00                	add    %al,(%rax)
  4005cd:	00 00                	add    %al,(%rax)
  4005cf:	00 07                	add    %al,(%rdi)
  4005d1:	00 00                	add    %al,(%rax)
  4005d3:	00 07                	add    %al,(%rdi)
	...
  4005dd:	00 00                	add    %al,(%rax)
  4005df:	00 50 10             	add    %dl,0x10(%rax)
  4005e2:	60                   	(bad)  
  4005e3:	00 00                	add    %al,(%rax)
  4005e5:	00 00                	add    %al,(%rax)
  4005e7:	00 07                	add    %al,(%rdi)
  4005e9:	00 00                	add    %al,(%rax)
  4005eb:	00 09                	add    %cl,(%rcx)
	...
  4005f5:	00 00                	add    %al,(%rax)
  4005f7:	00 58 10             	add    %bl,0x10(%rax)
  4005fa:	60                   	(bad)  
  4005fb:	00 00                	add    %al,(%rax)
  4005fd:	00 00                	add    %al,(%rax)
  4005ff:	00 07                	add    %al,(%rdi)
  400601:	00 00                	add    %al,(%rax)
  400603:	00 0b                	add    %cl,(%rbx)
	...
  40060d:	00 00                	add    %al,(%rax)
  40060f:	00 60 10             	add    %ah,0x10(%rax)
  400612:	60                   	(bad)  
  400613:	00 00                	add    %al,(%rax)
  400615:	00 00                	add    %al,(%rax)
  400617:	00 07                	add    %al,(%rdi)
  400619:	00 00                	add    %al,(%rax)
  40061b:	00 0c 00             	add    %cl,(%rax,%rax,1)
	...
  400626:	00 00                	add    %al,(%rax)
  400628:	68 10 60 00 00       	pushq  $0x6010
  40062d:	00 00                	add    %al,(%rax)
  40062f:	00 07                	add    %al,(%rdi)
  400631:	00 00                	add    %al,(%rax)
  400633:	00 0d 00 00 00 00    	add    %cl,0x0(%rip)        # 400639 <_init-0x37>
  400639:	00 00                	add    %al,(%rax)
  40063b:	00 00                	add    %al,(%rax)
  40063d:	00 00                	add    %al,(%rax)
  40063f:	00 70 10             	add    %dh,0x10(%rax)
  400642:	60                   	(bad)  
  400643:	00 00                	add    %al,(%rax)
  400645:	00 00                	add    %al,(%rax)
  400647:	00 07                	add    %al,(%rdi)
  400649:	00 00                	add    %al,(%rax)
  40064b:	00 0e                	add    %cl,(%rsi)
	...
  400655:	00 00                	add    %al,(%rax)
  400657:	00 78 10             	add    %bh,0x10(%rax)
  40065a:	60                   	(bad)  
  40065b:	00 00                	add    %al,(%rax)
  40065d:	00 00                	add    %al,(%rax)
  40065f:	00 07                	add    %al,(%rdi)
  400661:	00 00                	add    %al,(%rax)
  400663:	00 0f                	add    %cl,(%rdi)
	...

Дизассемблирование раздела .init:

0000000000400670 <_init>:
  400670:	48 83 ec 08          	sub    $0x8,%rsp
  400674:	48 8b 05 7d 09 20 00 	mov    0x20097d(%rip),%rax        # 600ff8 <__gmon_start__>
  40067b:	48 85 c0             	test   %rax,%rax
  40067e:	74 02                	je     400682 <_init+0x12>
  400680:	ff d0                	callq  *%rax
  400682:	48 83 c4 08          	add    $0x8,%rsp
  400686:	c3                   	retq   

Дизассемблирование раздела .plt:

0000000000400690 <.plt>:
  400690:	ff 35 72 09 20 00    	pushq  0x200972(%rip)        # 601008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400696:	ff 25 74 09 20 00    	jmpq   *0x200974(%rip)        # 601010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40069c:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004006a0 <free@plt>:
  4006a0:	ff 25 72 09 20 00    	jmpq   *0x200972(%rip)        # 601018 <free@GLIBC_2.2.5>
  4006a6:	68 00 00 00 00       	pushq  $0x0
  4006ab:	e9 e0 ff ff ff       	jmpq   400690 <.plt>

00000000004006b0 <fread@plt>:
  4006b0:	ff 25 6a 09 20 00    	jmpq   *0x20096a(%rip)        # 601020 <fread@GLIBC_2.2.5>
  4006b6:	68 01 00 00 00       	pushq  $0x1
  4006bb:	e9 d0 ff ff ff       	jmpq   400690 <.plt>

00000000004006c0 <fclose@plt>:
  4006c0:	ff 25 62 09 20 00    	jmpq   *0x200962(%rip)        # 601028 <fclose@GLIBC_2.2.5>
  4006c6:	68 02 00 00 00       	pushq  $0x2
  4006cb:	e9 c0 ff ff ff       	jmpq   400690 <.plt>

00000000004006d0 <strlen@plt>:
  4006d0:	ff 25 5a 09 20 00    	jmpq   *0x20095a(%rip)        # 601030 <strlen@GLIBC_2.2.5>
  4006d6:	68 03 00 00 00       	pushq  $0x3
  4006db:	e9 b0 ff ff ff       	jmpq   400690 <.plt>

00000000004006e0 <send@plt>:
  4006e0:	ff 25 52 09 20 00    	jmpq   *0x200952(%rip)        # 601038 <send@GLIBC_2.2.5>
  4006e6:	68 04 00 00 00       	pushq  $0x4
  4006eb:	e9 a0 ff ff ff       	jmpq   400690 <.plt>

00000000004006f0 <printf@plt>:
  4006f0:	ff 25 4a 09 20 00    	jmpq   *0x20094a(%rip)        # 601040 <printf@GLIBC_2.2.5>
  4006f6:	68 05 00 00 00       	pushq  $0x5
  4006fb:	e9 90 ff ff ff       	jmpq   400690 <.plt>

0000000000400700 <rewind@plt>:
  400700:	ff 25 42 09 20 00    	jmpq   *0x200942(%rip)        # 601048 <rewind@GLIBC_2.2.5>
  400706:	68 06 00 00 00       	pushq  $0x6
  40070b:	e9 80 ff ff ff       	jmpq   400690 <.plt>

0000000000400710 <ftell@plt>:
  400710:	ff 25 3a 09 20 00    	jmpq   *0x20093a(%rip)        # 601050 <ftell@GLIBC_2.2.5>
  400716:	68 07 00 00 00       	pushq  $0x7
  40071b:	e9 70 ff ff ff       	jmpq   400690 <.plt>

0000000000400720 <malloc@plt>:
  400720:	ff 25 32 09 20 00    	jmpq   *0x200932(%rip)        # 601058 <malloc@GLIBC_2.2.5>
  400726:	68 08 00 00 00       	pushq  $0x8
  40072b:	e9 60 ff ff ff       	jmpq   400690 <.plt>

0000000000400730 <fseek@plt>:
  400730:	ff 25 2a 09 20 00    	jmpq   *0x20092a(%rip)        # 601060 <fseek@GLIBC_2.2.5>
  400736:	68 09 00 00 00       	pushq  $0x9
  40073b:	e9 50 ff ff ff       	jmpq   400690 <.plt>

0000000000400740 <fopen@plt>:
  400740:	ff 25 22 09 20 00    	jmpq   *0x200922(%rip)        # 601068 <fopen@GLIBC_2.2.5>
  400746:	68 0a 00 00 00       	pushq  $0xa
  40074b:	e9 40 ff ff ff       	jmpq   400690 <.plt>

0000000000400750 <sleep@plt>:
  400750:	ff 25 1a 09 20 00    	jmpq   *0x20091a(%rip)        # 601070 <sleep@GLIBC_2.2.5>
  400756:	68 0b 00 00 00       	pushq  $0xb
  40075b:	e9 30 ff ff ff       	jmpq   400690 <.plt>

0000000000400760 <socket@plt>:
  400760:	ff 25 12 09 20 00    	jmpq   *0x200912(%rip)        # 601078 <socket@GLIBC_2.2.5>
  400766:	68 0c 00 00 00       	pushq  $0xc
  40076b:	e9 20 ff ff ff       	jmpq   400690 <.plt>

Дизассемблирование раздела .text:

0000000000400770 <_start>:
  400770:	31 ed                	xor    %ebp,%ebp
  400772:	49 89 d1             	mov    %rdx,%r9
  400775:	5e                   	pop    %rsi
  400776:	48 89 e2             	mov    %rsp,%rdx
  400779:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  40077d:	50                   	push   %rax
  40077e:	54                   	push   %rsp
  40077f:	49 c7 c0 30 0a 40 00 	mov    $0x400a30,%r8
  400786:	48 c7 c1 c0 09 40 00 	mov    $0x4009c0,%rcx
  40078d:	48 c7 c7 45 09 40 00 	mov    $0x400945,%rdi
  400794:	ff 15 56 08 20 00    	callq  *0x200856(%rip)        # 600ff0 <__libc_start_main@GLIBC_2.2.5>
  40079a:	f4                   	hlt    
  40079b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004007a0 <deregister_tm_clones>:
  4007a0:	55                   	push   %rbp
  4007a1:	b8 88 10 60 00       	mov    $0x601088,%eax
  4007a6:	48 3d 88 10 60 00    	cmp    $0x601088,%rax
  4007ac:	48 89 e5             	mov    %rsp,%rbp
  4007af:	74 17                	je     4007c8 <deregister_tm_clones+0x28>
  4007b1:	b8 00 00 00 00       	mov    $0x0,%eax
  4007b6:	48 85 c0             	test   %rax,%rax
  4007b9:	74 0d                	je     4007c8 <deregister_tm_clones+0x28>
  4007bb:	5d                   	pop    %rbp
  4007bc:	bf 88 10 60 00       	mov    $0x601088,%edi
  4007c1:	ff e0                	jmpq   *%rax
  4007c3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4007c8:	5d                   	pop    %rbp
  4007c9:	c3                   	retq   
  4007ca:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000004007d0 <register_tm_clones>:
  4007d0:	be 88 10 60 00       	mov    $0x601088,%esi
  4007d5:	55                   	push   %rbp
  4007d6:	48 81 ee 88 10 60 00 	sub    $0x601088,%rsi
  4007dd:	48 89 e5             	mov    %rsp,%rbp
  4007e0:	48 c1 fe 03          	sar    $0x3,%rsi
  4007e4:	48 89 f0             	mov    %rsi,%rax
  4007e7:	48 c1 e8 3f          	shr    $0x3f,%rax
  4007eb:	48 01 c6             	add    %rax,%rsi
  4007ee:	48 d1 fe             	sar    %rsi
  4007f1:	74 15                	je     400808 <register_tm_clones+0x38>
  4007f3:	b8 00 00 00 00       	mov    $0x0,%eax
  4007f8:	48 85 c0             	test   %rax,%rax
  4007fb:	74 0b                	je     400808 <register_tm_clones+0x38>
  4007fd:	5d                   	pop    %rbp
  4007fe:	bf 88 10 60 00       	mov    $0x601088,%edi
  400803:	ff e0                	jmpq   *%rax
  400805:	0f 1f 00             	nopl   (%rax)
  400808:	5d                   	pop    %rbp
  400809:	c3                   	retq   
  40080a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400810 <__do_global_dtors_aux>:
  400810:	80 3d 6d 08 20 00 00 	cmpb   $0x0,0x20086d(%rip)        # 601084 <_edata>
  400817:	75 17                	jne    400830 <__do_global_dtors_aux+0x20>
  400819:	55                   	push   %rbp
  40081a:	48 89 e5             	mov    %rsp,%rbp
  40081d:	e8 7e ff ff ff       	callq  4007a0 <deregister_tm_clones>
  400822:	c6 05 5b 08 20 00 01 	movb   $0x1,0x20085b(%rip)        # 601084 <_edata>
  400829:	5d                   	pop    %rbp
  40082a:	c3                   	retq   
  40082b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400830:	f3 c3                	repz retq 
  400832:	0f 1f 40 00          	nopl   0x0(%rax)
  400836:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40083d:	00 00 00 

0000000000400840 <frame_dummy>:
  400840:	55                   	push   %rbp
  400841:	48 89 e5             	mov    %rsp,%rbp
  400844:	5d                   	pop    %rbp
  400845:	eb 89                	jmp    4007d0 <register_tm_clones>

0000000000400847 <_Z9read_filePKc>:
  400847:	55                   	push   %rbp
  400848:	48 89 e5             	mov    %rsp,%rbp
  40084b:	48 83 ec 30          	sub    $0x30,%rsp
  40084f:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
  400853:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
  40085a:	00 
  40085b:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  40085f:	be 50 0a 40 00       	mov    $0x400a50,%esi
  400864:	48 89 c7             	mov    %rax,%rdi
  400867:	e8 d4 fe ff ff       	callq  400740 <fopen@plt>
  40086c:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  400870:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
  400875:	0f 84 9b 00 00 00    	je     400916 <_Z9read_filePKc+0xcf>
  40087b:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40087f:	ba 02 00 00 00       	mov    $0x2,%edx
  400884:	be 00 00 00 00       	mov    $0x0,%esi
  400889:	48 89 c7             	mov    %rax,%rdi
  40088c:	e8 9f fe ff ff       	callq  400730 <fseek@plt>
  400891:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  400895:	48 89 c7             	mov    %rax,%rdi
  400898:	e8 73 fe ff ff       	callq  400710 <ftell@plt>
  40089d:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  4008a1:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4008a5:	48 89 c7             	mov    %rax,%rdi
  4008a8:	e8 53 fe ff ff       	callq  400700 <rewind@plt>
  4008ad:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4008b1:	48 83 c0 01          	add    $0x1,%rax
  4008b5:	48 89 c7             	mov    %rax,%rdi
  4008b8:	e8 63 fe ff ff       	callq  400720 <malloc@plt>
  4008bd:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  4008c1:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  4008c5:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  4008c9:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4008cd:	be 01 00 00 00       	mov    $0x1,%esi
  4008d2:	48 89 c7             	mov    %rax,%rdi
  4008d5:	e8 d6 fd ff ff       	callq  4006b0 <fread@plt>
  4008da:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  4008de:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  4008e2:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4008e6:	48 01 d0             	add    %rdx,%rax
  4008e9:	c6 00 00             	movb   $0x0,(%rax)
  4008ec:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4008f0:	48 3b 45 e0          	cmp    -0x20(%rbp),%rax
  4008f4:	74 14                	je     40090a <_Z9read_filePKc+0xc3>
  4008f6:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4008fa:	48 89 c7             	mov    %rax,%rdi
  4008fd:	e8 9e fd ff ff       	callq  4006a0 <free@plt>
  400902:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
  400909:	00 
  40090a:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40090e:	48 89 c7             	mov    %rax,%rdi
  400911:	e8 aa fd ff ff       	callq  4006c0 <fclose@plt>
  400916:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40091a:	c9                   	leaveq 
  40091b:	c3                   	retq   

000000000040091c <_Z15open_connectionv>:
  40091c:	55                   	push   %rbp
  40091d:	48 89 e5             	mov    %rsp,%rbp
  400920:	bf 52 0a 40 00       	mov    $0x400a52,%edi
  400925:	b8 00 00 00 00       	mov    $0x0,%eax
  40092a:	e8 c1 fd ff ff       	callq  4006f0 <printf@plt>
  40092f:	ba 11 00 00 00       	mov    $0x11,%edx
  400934:	be 02 00 00 00       	mov    $0x2,%esi
  400939:	bf 02 00 00 00       	mov    $0x2,%edi
  40093e:	e8 1d fe ff ff       	callq  400760 <socket@plt>
  400943:	5d                   	pop    %rbp
  400944:	c3                   	retq   

0000000000400945 <main>:
  400945:	55                   	push   %rbp
  400946:	48 89 e5             	mov    %rsp,%rbp
  400949:	48 83 ec 10          	sub    $0x10,%rsp
  40094d:	e8 ca ff ff ff       	callq  40091c <_Z15open_connectionv>
  400952:	89 45 fc             	mov    %eax,-0x4(%rbp)
  400955:	48 c7 45 f0 00 00 00 	movq   $0x0,-0x10(%rbp)
  40095c:	00 
  40095d:	bf 67 0a 40 00       	mov    $0x400a67,%edi
  400962:	e8 e0 fe ff ff       	callq  400847 <_Z9read_filePKc>
  400967:	bf 75 0a 40 00       	mov    $0x400a75,%edi
  40096c:	e8 d6 fe ff ff       	callq  400847 <_Z9read_filePKc>
  400971:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  400975:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
  40097a:	74 22                	je     40099e <main+0x59>
  40097c:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  400980:	48 89 c7             	mov    %rax,%rdi
  400983:	e8 48 fd ff ff       	callq  4006d0 <strlen@plt>
  400988:	48 89 c2             	mov    %rax,%rdx
  40098b:	48 8b 75 f0          	mov    -0x10(%rbp),%rsi
  40098f:	8b 45 fc             	mov    -0x4(%rbp),%eax
  400992:	b9 00 00 00 00       	mov    $0x0,%ecx
  400997:	89 c7                	mov    %eax,%edi
  400999:	e8 42 fd ff ff       	callq  4006e0 <send@plt>
  40099e:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4009a2:	48 89 c7             	mov    %rax,%rdi
  4009a5:	e8 f6 fc ff ff       	callq  4006a0 <free@plt>
  4009aa:	bf 05 00 00 00       	mov    $0x5,%edi
  4009af:	e8 9c fd ff ff       	callq  400750 <sleep@plt>
  4009b4:	eb b1                	jmp    400967 <main+0x22>
  4009b6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4009bd:	00 00 00 

00000000004009c0 <__libc_csu_init>:
  4009c0:	41 57                	push   %r15
  4009c2:	41 56                	push   %r14
  4009c4:	49 89 d7             	mov    %rdx,%r15
  4009c7:	41 55                	push   %r13
  4009c9:	41 54                	push   %r12
  4009cb:	4c 8d 25 3e 04 20 00 	lea    0x20043e(%rip),%r12        # 600e10 <__frame_dummy_init_array_entry>
  4009d2:	55                   	push   %rbp
  4009d3:	48 8d 2d 3e 04 20 00 	lea    0x20043e(%rip),%rbp        # 600e18 <__init_array_end>
  4009da:	53                   	push   %rbx
  4009db:	41 89 fd             	mov    %edi,%r13d
  4009de:	49 89 f6             	mov    %rsi,%r14
  4009e1:	4c 29 e5             	sub    %r12,%rbp
  4009e4:	48 83 ec 08          	sub    $0x8,%rsp
  4009e8:	48 c1 fd 03          	sar    $0x3,%rbp
  4009ec:	e8 7f fc ff ff       	callq  400670 <_init>
  4009f1:	48 85 ed             	test   %rbp,%rbp
  4009f4:	74 20                	je     400a16 <__libc_csu_init+0x56>
  4009f6:	31 db                	xor    %ebx,%ebx
  4009f8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4009ff:	00 
  400a00:	4c 89 fa             	mov    %r15,%rdx
  400a03:	4c 89 f6             	mov    %r14,%rsi
  400a06:	44 89 ef             	mov    %r13d,%edi
  400a09:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  400a0d:	48 83 c3 01          	add    $0x1,%rbx
  400a11:	48 39 dd             	cmp    %rbx,%rbp
  400a14:	75 ea                	jne    400a00 <__libc_csu_init+0x40>
  400a16:	48 83 c4 08          	add    $0x8,%rsp
  400a1a:	5b                   	pop    %rbx
  400a1b:	5d                   	pop    %rbp
  400a1c:	41 5c                	pop    %r12
  400a1e:	41 5d                	pop    %r13
  400a20:	41 5e                	pop    %r14
  400a22:	41 5f                	pop    %r15
  400a24:	c3                   	retq   
  400a25:	90                   	nop
  400a26:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400a2d:	00 00 00 

0000000000400a30 <__libc_csu_fini>:
  400a30:	f3 c3                	repz retq 

Дизассемблирование раздела .fini:

0000000000400a34 <_fini>:
  400a34:	48 83 ec 08          	sub    $0x8,%rsp
  400a38:	48 83 c4 08          	add    $0x8,%rsp
  400a3c:	c3                   	retq   

Дизассемблирование раздела .rodata:

0000000000400a40 <_IO_stdin_used>:
  400a40:	01 00                	add    %eax,(%rax)
  400a42:	02 00                	add    (%rax),%al
  400a44:	00 00                	add    %al,(%rax)
	...

0000000000400a48 <__dso_handle>:
	...
  400a50:	72 00                	jb     400a52 <__dso_handle+0xa>
  400a52:	43 6f                	rex.XB outsl %ds:(%rsi),(%dx)
  400a54:	6e                   	outsb  %ds:(%rsi),(%dx)
  400a55:	6e                   	outsb  %ds:(%rsi),(%dx)
  400a56:	65 63 74 69 6f       	movslq %gs:0x6f(%rcx,%rbp,2),%esi
  400a5b:	6e                   	outsb  %ds:(%rsi),(%dx)
  400a5c:	20 69 73             	and    %ch,0x73(%rcx)
  400a5f:	20 6f 70             	and    %ch,0x70(%rdi)
  400a62:	65 6e                	outsb  %gs:(%rsi),(%dx)
  400a64:	65 64 00 2f          	gs add %ch,%fs:(%rdi)
  400a68:	65 74 63             	gs je  400ace <__GNU_EH_FRAME_HDR+0x4a>
  400a6b:	2f                   	(bad)  
  400a6c:	70 61                	jo     400acf <__GNU_EH_FRAME_HDR+0x4b>
  400a6e:	73 73                	jae    400ae3 <__GNU_EH_FRAME_HDR+0x5f>
  400a70:	77 6f                	ja     400ae1 <__GNU_EH_FRAME_HDR+0x5d>
  400a72:	72 64                	jb     400ad8 <__GNU_EH_FRAME_HDR+0x54>
  400a74:	00 2f                	add    %ch,(%rdi)
  400a76:	65 74 63             	gs je  400adc <__GNU_EH_FRAME_HDR+0x58>
  400a79:	2f                   	(bad)  
  400a7a:	73 68                	jae    400ae4 <__GNU_EH_FRAME_HDR+0x60>
  400a7c:	61                   	(bad)  
  400a7d:	64 6f                	outsl  %fs:(%rsi),(%dx)
  400a7f:	77 00                	ja     400a81 <__dso_handle+0x39>

Дизассемблирование раздела .eh_frame_hdr:

0000000000400a84 <__GNU_EH_FRAME_HDR>:
  400a84:	01 1b                	add    %ebx,(%rbx)
  400a86:	03 3b                	add    (%rbx),%edi
  400a88:	40 00 00             	add    %al,(%rax)
  400a8b:	00 07                	add    %al,(%rdi)
  400a8d:	00 00                	add    %al,(%rax)
  400a8f:	00 0c fc             	add    %cl,(%rsp,%rdi,8)
  400a92:	ff                   	(bad)  
  400a93:	ff 8c 00 00 00 ec fc 	decl   -0x3140000(%rax,%rax,1)
  400a9a:	ff                   	(bad)  
  400a9b:	ff 5c 00 00          	lcall  *0x0(%rax,%rax,1)
  400a9f:	00 c3                	add    %al,%bl
  400aa1:	fd                   	std    
  400aa2:	ff                   	(bad)  
  400aa3:	ff b4 00 00 00 98 fe 	pushq  -0x1680000(%rax,%rax,1)
  400aaa:	ff                   	(bad)  
  400aab:	ff d4                	callq  *%rsp
  400aad:	00 00                	add    %al,(%rax)
  400aaf:	00 c1                	add    %al,%cl
  400ab1:	fe                   	(bad)  
  400ab2:	ff                   	(bad)  
  400ab3:	ff f4                	push   %rsp
  400ab5:	00 00                	add    %al,(%rax)
  400ab7:	00 3c ff             	add    %bh,(%rdi,%rdi,8)
  400aba:	ff                   	(bad)  
  400abb:	ff 14 01             	callq  *(%rcx,%rax,1)
  400abe:	00 00                	add    %al,(%rax)
  400ac0:	ac                   	lods   %ds:(%rsi),%al
  400ac1:	ff                   	(bad)  
  400ac2:	ff                   	(bad)  
  400ac3:	ff 5c 01 00          	lcall  *0x0(%rcx,%rax,1)
	...

Дизассемблирование раздела .eh_frame:

0000000000400ac8 <__FRAME_END__-0x12c>:
  400ac8:	14 00                	adc    $0x0,%al
  400aca:	00 00                	add    %al,(%rax)
  400acc:	00 00                	add    %al,(%rax)
  400ace:	00 00                	add    %al,(%rax)
  400ad0:	01 7a 52             	add    %edi,0x52(%rdx)
  400ad3:	00 01                	add    %al,(%rcx)
  400ad5:	78 10                	js     400ae7 <__GNU_EH_FRAME_HDR+0x63>
  400ad7:	01 1b                	add    %ebx,(%rbx)
  400ad9:	0c 07                	or     $0x7,%al
  400adb:	08 90 01 07 10 14    	or     %dl,0x14100701(%rax)
  400ae1:	00 00                	add    %al,(%rax)
  400ae3:	00 1c 00             	add    %bl,(%rax,%rax,1)
  400ae6:	00 00                	add    %al,(%rax)
  400ae8:	88 fc                	mov    %bh,%ah
  400aea:	ff                   	(bad)  
  400aeb:	ff 2b                	ljmp   *(%rbx)
	...
  400af5:	00 00                	add    %al,(%rax)
  400af7:	00 14 00             	add    %dl,(%rax,%rax,1)
  400afa:	00 00                	add    %al,(%rax)
  400afc:	00 00                	add    %al,(%rax)
  400afe:	00 00                	add    %al,(%rax)
  400b00:	01 7a 52             	add    %edi,0x52(%rdx)
  400b03:	00 01                	add    %al,(%rcx)
  400b05:	78 10                	js     400b17 <__GNU_EH_FRAME_HDR+0x93>
  400b07:	01 1b                	add    %ebx,(%rbx)
  400b09:	0c 07                	or     $0x7,%al
  400b0b:	08 90 01 00 00 24    	or     %dl,0x24000001(%rax)
  400b11:	00 00                	add    %al,(%rax)
  400b13:	00 1c 00             	add    %bl,(%rax,%rax,1)
  400b16:	00 00                	add    %al,(%rax)
  400b18:	78 fb                	js     400b15 <__GNU_EH_FRAME_HDR+0x91>
  400b1a:	ff                   	(bad)  
  400b1b:	ff e0                	jmpq   *%rax
  400b1d:	00 00                	add    %al,(%rax)
  400b1f:	00 00                	add    %al,(%rax)
  400b21:	0e                   	(bad)  
  400b22:	10 46 0e             	adc    %al,0xe(%rsi)
  400b25:	18 4a 0f             	sbb    %cl,0xf(%rdx)
  400b28:	0b 77 08             	or     0x8(%rdi),%esi
  400b2b:	80 00 3f             	addb   $0x3f,(%rax)
  400b2e:	1a 3b                	sbb    (%rbx),%bh
  400b30:	2a 33                	sub    (%rbx),%dh
  400b32:	24 22                	and    $0x22,%al
  400b34:	00 00                	add    %al,(%rax)
  400b36:	00 00                	add    %al,(%rax)
  400b38:	1c 00                	sbb    $0x0,%al
  400b3a:	00 00                	add    %al,(%rax)
  400b3c:	44 00 00             	add    %r8b,(%rax)
  400b3f:	00 07                	add    %al,(%rdi)
  400b41:	fd                   	std    
  400b42:	ff                   	(bad)  
  400b43:	ff d5                	callq  *%rbp
  400b45:	00 00                	add    %al,(%rax)
  400b47:	00 00                	add    %al,(%rax)
  400b49:	41 0e                	rex.B (bad) 
  400b4b:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
  400b51:	02 d0                	add    %al,%dl
  400b53:	0c 07                	or     $0x7,%al
  400b55:	08 00                	or     %al,(%rax)
  400b57:	00 1c 00             	add    %bl,(%rax,%rax,1)
  400b5a:	00 00                	add    %al,(%rax)
  400b5c:	64 00 00             	add    %al,%fs:(%rax)
  400b5f:	00 bc fd ff ff 29 00 	add    %bh,0x29ffff(%rbp,%rdi,8)
  400b66:	00 00                	add    %al,(%rax)
  400b68:	00 41 0e             	add    %al,0xe(%rcx)
  400b6b:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
  400b71:	64 0c 07             	fs or  $0x7,%al
  400b74:	08 00                	or     %al,(%rax)
  400b76:	00 00                	add    %al,(%rax)
  400b78:	1c 00                	sbb    $0x0,%al
  400b7a:	00 00                	add    %al,(%rax)
  400b7c:	84 00                	test   %al,(%rax)
  400b7e:	00 00                	add    %al,(%rax)
  400b80:	c5 fd ff             	(bad)  
  400b83:	ff 71 00             	pushq  0x0(%rcx)
  400b86:	00 00                	add    %al,(%rax)
  400b88:	00 41 0e             	add    %al,0xe(%rcx)
  400b8b:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
  400b91:	00 00                	add    %al,(%rax)
  400b93:	00 00                	add    %al,(%rax)
  400b95:	00 00                	add    %al,(%rax)
  400b97:	00 44 00 00          	add    %al,0x0(%rax,%rax,1)
  400b9b:	00 a4 00 00 00 20 fe 	add    %ah,-0x1e00000(%rax,%rax,1)
  400ba2:	ff                   	(bad)  
  400ba3:	ff 65 00             	jmpq   *0x0(%rbp)
  400ba6:	00 00                	add    %al,(%rax)
  400ba8:	00 42 0e             	add    %al,0xe(%rdx)
  400bab:	10 8f 02 42 0e 18    	adc    %cl,0x180e4202(%rdi)
  400bb1:	8e 03                	mov    (%rbx),%es
  400bb3:	45 0e                	rex.RB (bad) 
  400bb5:	20 8d 04 42 0e 28    	and    %cl,0x280e4204(%rbp)
  400bbb:	8c 05 48 0e 30 86    	mov    %es,-0x79cff1b8(%rip)        # ffffffff86701a09 <__TMC_END__+0xffffffff86100981>
  400bc1:	06                   	(bad)  
  400bc2:	48 0e                	rex.W (bad) 
  400bc4:	38 83 07 4d 0e 40    	cmp    %al,0x400e4d07(%rbx)
  400bca:	72 0e                	jb     400bda <__GNU_EH_FRAME_HDR+0x156>
  400bcc:	38 41 0e             	cmp    %al,0xe(%rcx)
  400bcf:	30 41 0e             	xor    %al,0xe(%rcx)
  400bd2:	28 42 0e             	sub    %al,0xe(%rdx)
  400bd5:	20 42 0e             	and    %al,0xe(%rdx)
  400bd8:	18 42 0e             	sbb    %al,0xe(%rdx)
  400bdb:	10 42 0e             	adc    %al,0xe(%rdx)
  400bde:	08 00                	or     %al,(%rax)
  400be0:	10 00                	adc    %al,(%rax)
  400be2:	00 00                	add    %al,(%rax)
  400be4:	ec                   	in     (%dx),%al
  400be5:	00 00                	add    %al,(%rax)
  400be7:	00 48 fe             	add    %cl,-0x2(%rax)
  400bea:	ff                   	(bad)  
  400beb:	ff 02                	incl   (%rdx)
  400bed:	00 00                	add    %al,(%rax)
  400bef:	00 00                	add    %al,(%rax)
  400bf1:	00 00                	add    %al,(%rax)
	...

0000000000400bf4 <__FRAME_END__>:
  400bf4:	00 00                	add    %al,(%rax)
	...

Дизассемблирование раздела .init_array:

0000000000600e10 <__frame_dummy_init_array_entry>:
  600e10:	40 08 40 00          	or     %al,0x0(%rax)
  600e14:	00 00                	add    %al,(%rax)
	...

Дизассемблирование раздела .fini_array:

0000000000600e18 <__do_global_dtors_aux_fini_array_entry>:
  600e18:	10 08                	adc    %cl,(%rax)
  600e1a:	40 00 00             	add    %al,(%rax)
  600e1d:	00 00                	add    %al,(%rax)
	...

Дизассемблирование раздела .dynamic:

0000000000600e20 <_DYNAMIC>:
  600e20:	01 00                	add    %eax,(%rax)
  600e22:	00 00                	add    %al,(%rax)
  600e24:	00 00                	add    %al,(%rax)
  600e26:	00 00                	add    %al,(%rax)
  600e28:	01 00                	add    %eax,(%rax)
  600e2a:	00 00                	add    %al,(%rax)
  600e2c:	00 00                	add    %al,(%rax)
  600e2e:	00 00                	add    %al,(%rax)
  600e30:	0c 00                	or     $0x0,%al
  600e32:	00 00                	add    %al,(%rax)
  600e34:	00 00                	add    %al,(%rax)
  600e36:	00 00                	add    %al,(%rax)
  600e38:	70 06                	jo     600e40 <_DYNAMIC+0x20>
  600e3a:	40 00 00             	add    %al,(%rax)
  600e3d:	00 00                	add    %al,(%rax)
  600e3f:	00 0d 00 00 00 00    	add    %cl,0x0(%rip)        # 600e45 <_DYNAMIC+0x25>
  600e45:	00 00                	add    %al,(%rax)
  600e47:	00 34 0a             	add    %dh,(%rdx,%rcx,1)
  600e4a:	40 00 00             	add    %al,(%rax)
  600e4d:	00 00                	add    %al,(%rax)
  600e4f:	00 19                	add    %bl,(%rcx)
  600e51:	00 00                	add    %al,(%rax)
  600e53:	00 00                	add    %al,(%rax)
  600e55:	00 00                	add    %al,(%rax)
  600e57:	00 10                	add    %dl,(%rax)
  600e59:	0e                   	(bad)  
  600e5a:	60                   	(bad)  
  600e5b:	00 00                	add    %al,(%rax)
  600e5d:	00 00                	add    %al,(%rax)
  600e5f:	00 1b                	add    %bl,(%rbx)
  600e61:	00 00                	add    %al,(%rax)
  600e63:	00 00                	add    %al,(%rax)
  600e65:	00 00                	add    %al,(%rax)
  600e67:	00 08                	add    %cl,(%rax)
  600e69:	00 00                	add    %al,(%rax)
  600e6b:	00 00                	add    %al,(%rax)
  600e6d:	00 00                	add    %al,(%rax)
  600e6f:	00 1a                	add    %bl,(%rdx)
  600e71:	00 00                	add    %al,(%rax)
  600e73:	00 00                	add    %al,(%rax)
  600e75:	00 00                	add    %al,(%rax)
  600e77:	00 18                	add    %bl,(%rax)
  600e79:	0e                   	(bad)  
  600e7a:	60                   	(bad)  
  600e7b:	00 00                	add    %al,(%rax)
  600e7d:	00 00                	add    %al,(%rax)
  600e7f:	00 1c 00             	add    %bl,(%rax,%rax,1)
  600e82:	00 00                	add    %al,(%rax)
  600e84:	00 00                	add    %al,(%rax)
  600e86:	00 00                	add    %al,(%rax)
  600e88:	08 00                	or     %al,(%rax)
  600e8a:	00 00                	add    %al,(%rax)
  600e8c:	00 00                	add    %al,(%rax)
  600e8e:	00 00                	add    %al,(%rax)
  600e90:	f5                   	cmc    
  600e91:	fe                   	(bad)  
  600e92:	ff 6f 00             	ljmp   *0x0(%rdi)
  600e95:	00 00                	add    %al,(%rax)
  600e97:	00 98 02 40 00 00    	add    %bl,0x4002(%rax)
  600e9d:	00 00                	add    %al,(%rax)
  600e9f:	00 05 00 00 00 00    	add    %al,0x0(%rip)        # 600ea5 <_DYNAMIC+0x85>
  600ea5:	00 00                	add    %al,(%rax)
  600ea7:	00 38                	add    %bh,(%rax)
  600ea9:	04 40                	add    $0x40,%al
  600eab:	00 00                	add    %al,(%rax)
  600ead:	00 00                	add    %al,(%rax)
  600eaf:	00 06                	add    %al,(%rsi)
  600eb1:	00 00                	add    %al,(%rax)
  600eb3:	00 00                	add    %al,(%rax)
  600eb5:	00 00                	add    %al,(%rax)
  600eb7:	00 b8 02 40 00 00    	add    %bh,0x4002(%rax)
  600ebd:	00 00                	add    %al,(%rax)
  600ebf:	00 0a                	add    %cl,(%rdx)
  600ec1:	00 00                	add    %al,(%rax)
  600ec3:	00 00                	add    %al,(%rax)
  600ec5:	00 00                	add    %al,(%rax)
  600ec7:	00 8a 00 00 00 00    	add    %cl,0x0(%rdx)
  600ecd:	00 00                	add    %al,(%rax)
  600ecf:	00 0b                	add    %cl,(%rbx)
  600ed1:	00 00                	add    %al,(%rax)
  600ed3:	00 00                	add    %al,(%rax)
  600ed5:	00 00                	add    %al,(%rax)
  600ed7:	00 18                	add    %bl,(%rax)
  600ed9:	00 00                	add    %al,(%rax)
  600edb:	00 00                	add    %al,(%rax)
  600edd:	00 00                	add    %al,(%rax)
  600edf:	00 15 00 00 00 00    	add    %dl,0x0(%rip)        # 600ee5 <_DYNAMIC+0xc5>
	...
  600eed:	00 00                	add    %al,(%rax)
  600eef:	00 03                	add    %al,(%rbx)
	...
  600ef9:	10 60 00             	adc    %ah,0x0(%rax)
  600efc:	00 00                	add    %al,(%rax)
  600efe:	00 00                	add    %al,(%rax)
  600f00:	02 00                	add    (%rax),%al
  600f02:	00 00                	add    %al,(%rax)
  600f04:	00 00                	add    %al,(%rax)
  600f06:	00 00                	add    %al,(%rax)
  600f08:	38 01                	cmp    %al,(%rcx)
  600f0a:	00 00                	add    %al,(%rax)
  600f0c:	00 00                	add    %al,(%rax)
  600f0e:	00 00                	add    %al,(%rax)
  600f10:	14 00                	adc    $0x0,%al
  600f12:	00 00                	add    %al,(%rax)
  600f14:	00 00                	add    %al,(%rax)
  600f16:	00 00                	add    %al,(%rax)
  600f18:	07                   	(bad)  
  600f19:	00 00                	add    %al,(%rax)
  600f1b:	00 00                	add    %al,(%rax)
  600f1d:	00 00                	add    %al,(%rax)
  600f1f:	00 17                	add    %dl,(%rdi)
  600f21:	00 00                	add    %al,(%rax)
  600f23:	00 00                	add    %al,(%rax)
  600f25:	00 00                	add    %al,(%rax)
  600f27:	00 38                	add    %bh,(%rax)
  600f29:	05 40 00 00 00       	add    $0x40,%eax
  600f2e:	00 00                	add    %al,(%rax)
  600f30:	07                   	(bad)  
  600f31:	00 00                	add    %al,(%rax)
  600f33:	00 00                	add    %al,(%rax)
  600f35:	00 00                	add    %al,(%rax)
  600f37:	00 08                	add    %cl,(%rax)
  600f39:	05 40 00 00 00       	add    $0x40,%eax
  600f3e:	00 00                	add    %al,(%rax)
  600f40:	08 00                	or     %al,(%rax)
  600f42:	00 00                	add    %al,(%rax)
  600f44:	00 00                	add    %al,(%rax)
  600f46:	00 00                	add    %al,(%rax)
  600f48:	30 00                	xor    %al,(%rax)
  600f4a:	00 00                	add    %al,(%rax)
  600f4c:	00 00                	add    %al,(%rax)
  600f4e:	00 00                	add    %al,(%rax)
  600f50:	09 00                	or     %eax,(%rax)
  600f52:	00 00                	add    %al,(%rax)
  600f54:	00 00                	add    %al,(%rax)
  600f56:	00 00                	add    %al,(%rax)
  600f58:	18 00                	sbb    %al,(%rax)
  600f5a:	00 00                	add    %al,(%rax)
  600f5c:	00 00                	add    %al,(%rax)
  600f5e:	00 00                	add    %al,(%rax)
  600f60:	fe                   	(bad)  
  600f61:	ff                   	(bad)  
  600f62:	ff 6f 00             	ljmp   *0x0(%rdi)
  600f65:	00 00                	add    %al,(%rax)
  600f67:	00 e8                	add    %ch,%al
  600f69:	04 40                	add    $0x40,%al
  600f6b:	00 00                	add    %al,(%rax)
  600f6d:	00 00                	add    %al,(%rax)
  600f6f:	00 ff                	add    %bh,%bh
  600f71:	ff                   	(bad)  
  600f72:	ff 6f 00             	ljmp   *0x0(%rdi)
  600f75:	00 00                	add    %al,(%rax)
  600f77:	00 01                	add    %al,(%rcx)
  600f79:	00 00                	add    %al,(%rax)
  600f7b:	00 00                	add    %al,(%rax)
  600f7d:	00 00                	add    %al,(%rax)
  600f7f:	00 f0                	add    %dh,%al
  600f81:	ff                   	(bad)  
  600f82:	ff 6f 00             	ljmp   *0x0(%rdi)
  600f85:	00 00                	add    %al,(%rax)
  600f87:	00 c2                	add    %al,%dl
  600f89:	04 40                	add    $0x40,%al
	...

Дизассемблирование раздела .got:

0000000000600ff0 <.got>:
	...

Дизассемблирование раздела .got.plt:

0000000000601000 <_GLOBAL_OFFSET_TABLE_>:
  601000:	20 0e                	and    %cl,(%rsi)
  601002:	60                   	(bad)  
	...
  601017:	00 a6 06 40 00 00    	add    %ah,0x4006(%rsi)
  60101d:	00 00                	add    %al,(%rax)
  60101f:	00 b6 06 40 00 00    	add    %dh,0x4006(%rsi)
  601025:	00 00                	add    %al,(%rax)
  601027:	00 c6                	add    %al,%dh
  601029:	06                   	(bad)  
  60102a:	40 00 00             	add    %al,(%rax)
  60102d:	00 00                	add    %al,(%rax)
  60102f:	00 d6                	add    %dl,%dh
  601031:	06                   	(bad)  
  601032:	40 00 00             	add    %al,(%rax)
  601035:	00 00                	add    %al,(%rax)
  601037:	00 e6                	add    %ah,%dh
  601039:	06                   	(bad)  
  60103a:	40 00 00             	add    %al,(%rax)
  60103d:	00 00                	add    %al,(%rax)
  60103f:	00 f6                	add    %dh,%dh
  601041:	06                   	(bad)  
  601042:	40 00 00             	add    %al,(%rax)
  601045:	00 00                	add    %al,(%rax)
  601047:	00 06                	add    %al,(%rsi)
  601049:	07                   	(bad)  
  60104a:	40 00 00             	add    %al,(%rax)
  60104d:	00 00                	add    %al,(%rax)
  60104f:	00 16                	add    %dl,(%rsi)
  601051:	07                   	(bad)  
  601052:	40 00 00             	add    %al,(%rax)
  601055:	00 00                	add    %al,(%rax)
  601057:	00 26                	add    %ah,(%rsi)
  601059:	07                   	(bad)  
  60105a:	40 00 00             	add    %al,(%rax)
  60105d:	00 00                	add    %al,(%rax)
  60105f:	00 36                	add    %dh,(%rsi)
  601061:	07                   	(bad)  
  601062:	40 00 00             	add    %al,(%rax)
  601065:	00 00                	add    %al,(%rax)
  601067:	00 46 07             	add    %al,0x7(%rsi)
  60106a:	40 00 00             	add    %al,(%rax)
  60106d:	00 00                	add    %al,(%rax)
  60106f:	00 56 07             	add    %dl,0x7(%rsi)
  601072:	40 00 00             	add    %al,(%rax)
  601075:	00 00                	add    %al,(%rax)
  601077:	00 66 07             	add    %ah,0x7(%rsi)
  60107a:	40 00 00             	add    %al,(%rax)
  60107d:	00 00                	add    %al,(%rax)
	...

Дизассемблирование раздела .data:

0000000000601080 <__data_start>:
  601080:	00 00                	add    %al,(%rax)
	...

Дизассемблирование раздела .bss:

0000000000601084 <__bss_start>:
  601084:	00 00                	add    %al,(%rax)
	...

Дизассемблирование раздела .comment:

0000000000000000 <.comment>:
   0:	47                   	rex.RXB
   1:	43                   	rex.XB
   2:	43 3a 20             	rex.XB cmp (%r8),%spl
   5:	28 47 4e             	sub    %al,0x4e(%rdi)
   8:	55                   	push   %rbp
   9:	29 20                	sub    %esp,(%rax)
   b:	37                   	(bad)  
   c:	2e 33 2e             	xor    %cs:(%rsi),%ebp
   f:	31 20                	xor    %esp,(%rax)
  11:	32 30                	xor    (%rax),%dh
  13:	31 38                	xor    %edi,(%rax)
  15:	30 31                	xor    %dh,(%rcx)
  17:	33 30                	xor    (%rax),%esi
  19:	20 28                	and    %ch,(%rax)
  1b:	52                   	push   %rdx
  1c:	65 64 20 48 61       	gs and %cl,%fs:0x61(%rax)
  21:	74 20                	je     43 <_init-0x40062d>
  23:	37                   	(bad)  
  24:	2e 33 2e             	xor    %cs:(%rsi),%ebp
  27:	31 2d 32 29 00 47    	xor    %ebp,0x47002932(%rip)        # 4700295f <__TMC_END__+0x46a018d7>
  2d:	43                   	rex.XB
  2e:	43 3a 20             	rex.XB cmp (%r8),%spl
  31:	28 47 4e             	sub    %al,0x4e(%rdi)
  34:	55                   	push   %rbp
  35:	29 20                	sub    %esp,(%rax)
  37:	37                   	(bad)  
  38:	2e 33 2e             	xor    %cs:(%rsi),%ebp
  3b:	31 20                	xor    %esp,(%rax)
  3d:	32 30                	xor    (%rax),%dh
  3f:	31 38                	xor    %edi,(%rax)
  41:	30 33                	xor    %dh,(%rbx)
  43:	30 33                	xor    %dh,(%rbx)
  45:	20 28                	and    %ch,(%rax)
  47:	52                   	push   %rdx
  48:	65 64 20 48 61       	gs and %cl,%fs:0x61(%rax)
  4d:	74 20                	je     6f <_init-0x400601>
  4f:	37                   	(bad)  
  50:	2e 33 2e             	xor    %cs:(%rsi),%ebp
  53:	31                   	.byte 0x31
  54:	2d                   	.byte 0x2d
  55:	35                   	.byte 0x35
  56:	29 00                	sub    %eax,(%rax)
