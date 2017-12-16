
a.out:     формат файла elf32-i386


Дизассемблирование раздела .interp:

00000154 <.interp>:
 154:	2f                   	das    
 155:	6c                   	insb   (%dx),%es:(%edi)
 156:	69 62 2f 6c 64 2d 6c 	imul   $0x6c2d646c,0x2f(%edx),%esp
 15d:	69 6e 75 78 2e 73 6f 	imul   $0x6f732e78,0x75(%esi),%ebp
 164:	2e 32 00             	xor    %cs:(%eax),%al

Дизассемблирование раздела .note.ABI-tag:

00000168 <.note.ABI-tag>:
 168:	04 00                	add    $0x0,%al
 16a:	00 00                	add    %al,(%eax)
 16c:	10 00                	adc    %al,(%eax)
 16e:	00 00                	add    %al,(%eax)
 170:	01 00                	add    %eax,(%eax)
 172:	00 00                	add    %al,(%eax)
 174:	47                   	inc    %edi
 175:	4e                   	dec    %esi
 176:	55                   	push   %ebp
 177:	00 00                	add    %al,(%eax)
 179:	00 00                	add    %al,(%eax)
 17b:	00 03                	add    %al,(%ebx)
 17d:	00 00                	add    %al,(%eax)
 17f:	00 02                	add    %al,(%edx)
 181:	00 00                	add    %al,(%eax)
 183:	00 00                	add    %al,(%eax)
 185:	00 00                	add    %al,(%eax)
	...

Дизассемблирование раздела .note.gnu.build-id:

00000188 <.note.gnu.build-id>:
 188:	04 00                	add    $0x0,%al
 18a:	00 00                	add    %al,(%eax)
 18c:	14 00                	adc    $0x0,%al
 18e:	00 00                	add    %al,(%eax)
 190:	03 00                	add    (%eax),%eax
 192:	00 00                	add    %al,(%eax)
 194:	47                   	inc    %edi
 195:	4e                   	dec    %esi
 196:	55                   	push   %ebp
 197:	00 aa 02 a7 5f 08    	add    %ch,0x85fa702(%edx)
 19d:	15 b0 04 dd e1       	adc    $0xe1dd04b0,%eax
 1a2:	0c 6a                	or     $0x6a,%al
 1a4:	0f c1 4a a9          	xadd   %ecx,-0x57(%edx)
 1a8:	71 cd                	jno    177 <_init-0x381>
 1aa:	99                   	cltd   
 1ab:	92                   	xchg   %eax,%edx

Дизассемблирование раздела .gnu.hash:

000001ac <.gnu.hash>:
 1ac:	02 00                	add    (%eax),%al
 1ae:	00 00                	add    %al,(%eax)
 1b0:	12 00                	adc    (%eax),%al
 1b2:	00 00                	add    %al,(%eax)
 1b4:	01 00                	add    %eax,(%eax)
 1b6:	00 00                	add    %al,(%eax)
 1b8:	05 00 00 00 00       	add    $0x0,%eax
 1bd:	20 00                	and    %al,(%eax)
 1bf:	20 00                	and    %al,(%eax)
 1c1:	00 00                	add    %al,(%eax)
 1c3:	00 12                	add    %dl,(%edx)
 1c5:	00 00                	add    %al,(%eax)
 1c7:	00                   	.byte 0x0
 1c8:	ad                   	lods   %ds:(%esi),%eax
 1c9:	4b                   	dec    %ebx
 1ca:	e3 c0                	jecxz  18c <_init-0x36c>

Дизассемблирование раздела .dynsym:

000001cc <.dynsym>:
	...
 1dc:	a6                   	cmpsb  %es:(%edi),%ds:(%esi)
	...
 1e5:	00 00                	add    %al,(%eax)
 1e7:	00 20                	add    %ah,(%eax)
 1e9:	00 00                	add    %al,(%eax)
 1eb:	00 81 00 00 00 00    	add    %al,0x0(%ecx)
 1f1:	00 00                	add    %al,(%eax)
 1f3:	00 00                	add    %al,(%eax)
 1f5:	00 00                	add    %al,(%eax)
 1f7:	00 12                	add    %dl,(%edx)
 1f9:	00 00                	add    %al,(%eax)
 1fb:	00 46 00             	add    %al,0x0(%esi)
	...
 206:	00 00                	add    %al,(%eax)
 208:	12 00                	adc    (%eax),%al
 20a:	00 00                	add    %al,(%eax)
 20c:	5a                   	pop    %edx
	...
 215:	00 00                	add    %al,(%eax)
 217:	00 12                	add    %dl,(%edx)
 219:	00 00                	add    %al,(%eax)
 21b:	00 2d 00 00 00 00    	add    %ch,0x0
 221:	00 00                	add    %al,(%eax)
 223:	00 00                	add    %al,(%eax)
 225:	00 00                	add    %al,(%eax)
 227:	00 12                	add    %dl,(%edx)
 229:	00 00                	add    %al,(%eax)
 22b:	00 40 00             	add    %al,0x0(%eax)
	...
 236:	00 00                	add    %al,(%eax)
 238:	12 00                	adc    (%eax),%al
 23a:	00 00                	add    %al,(%eax)
 23c:	60                   	pusha  
	...
 245:	00 00                	add    %al,(%eax)
 247:	00 22                	add    %ah,(%edx)
 249:	00 00                	add    %al,(%eax)
 24b:	00 54 00 00          	add    %dl,0x0(%eax,%eax,1)
	...
 257:	00 12                	add    %dl,(%edx)
 259:	00 00                	add    %al,(%eax)
 25b:	00 4d 00             	add    %cl,0x0(%ebp)
	...
 266:	00 00                	add    %al,(%eax)
 268:	12 00                	adc    (%eax),%al
 26a:	00 00                	add    %al,(%eax)
 26c:	c2 00 00             	ret    $0x0
	...
 277:	00 20                	add    %ah,(%eax)
 279:	00 00                	add    %al,(%eax)
 27b:	00 34 00             	add    %dh,(%eax,%eax,1)
	...
 286:	00 00                	add    %al,(%eax)
 288:	12 00                	adc    (%eax),%al
 28a:	00 00                	add    %al,(%eax)
 28c:	6f                   	outsl  %ds:(%esi),(%dx)
	...
 295:	00 00                	add    %al,(%eax)
 297:	00 12                	add    %dl,(%edx)
 299:	00 00                	add    %al,(%eax)
 29b:	00 27                	add    %ah,(%edi)
	...
 2a5:	00 00                	add    %al,(%eax)
 2a7:	00 12                	add    %dl,(%edx)
 2a9:	00 00                	add    %al,(%eax)
 2ab:	00 21                	add    %ah,(%ecx)
	...
 2b5:	00 00                	add    %al,(%eax)
 2b7:	00 12                	add    %dl,(%edx)
 2b9:	00 00                	add    %al,(%eax)
 2bb:	00 1a                	add    %bl,(%edx)
	...
 2c5:	00 00                	add    %al,(%eax)
 2c7:	00 12                	add    %dl,(%edx)
 2c9:	00 00                	add    %al,(%eax)
 2cb:	00 d1                	add    %dl,%cl
	...
 2d5:	00 00                	add    %al,(%eax)
 2d7:	00 20                	add    %ah,(%eax)
 2d9:	00 00                	add    %al,(%eax)
 2db:	00 3b                	add    %bh,(%ebx)
	...
 2e5:	00 00                	add    %al,(%eax)
 2e7:	00 12                	add    %dl,(%edx)
 2e9:	00 00                	add    %al,(%eax)
 2eb:	00 0b                	add    %cl,(%ebx)
 2ed:	00 00                	add    %al,(%eax)
 2ef:	00 5c 09 00          	add    %bl,0x0(%ecx,%ecx,1)
 2f3:	00 04 00             	add    %al,(%eax,%eax,1)
 2f6:	00 00                	add    %al,(%eax)
 2f8:	11 00                	adc    %eax,(%eax)
 2fa:	10 00                	adc    %al,(%eax)

Дизассемблирование раздела .dynstr:

000002fc <.dynstr>:
 2fc:	00 6c 69 62          	add    %ch,0x62(%ecx,%ebp,2)
 300:	63 2e                	arpl   %bp,(%esi)
 302:	73 6f                	jae    373 <_init-0x185>
 304:	2e 36 00 5f 49       	cs add %bl,%ss:0x49(%edi)
 309:	4f                   	dec    %edi
 30a:	5f                   	pop    %edi
 30b:	73 74                	jae    381 <_init-0x177>
 30d:	64 69 6e 5f 75 73 65 	imul   $0x64657375,%fs:0x5f(%esi),%ebp
 314:	64 
 315:	00 73 6f             	add    %dh,0x6f(%ebx)
 318:	63 6b 65             	arpl   %bp,0x65(%ebx)
 31b:	74 00                	je     31d <_init-0x1db>
 31d:	66 6f                	outsw  %ds:(%esi),(%dx)
 31f:	70 65                	jo     386 <_init-0x172>
 321:	6e                   	outsb  %ds:(%esi),(%dx)
 322:	00 66 74             	add    %ah,0x74(%esi)
 325:	65 6c                	gs insb (%dx),%es:(%edi)
 327:	6c                   	insb   (%dx),%es:(%edi)
 328:	00 72 65             	add    %dh,0x65(%edx)
 32b:	77 69                	ja     396 <_init-0x162>
 32d:	6e                   	outsb  %ds:(%esi),(%dx)
 32e:	64 00 73 74          	add    %dh,%fs:0x74(%ebx)
 332:	72 6c                	jb     3a0 <_init-0x158>
 334:	65 6e                	outsb  %gs:(%esi),(%dx)
 336:	00 73 65             	add    %dh,0x65(%ebx)
 339:	6e                   	outsb  %ds:(%esi),(%dx)
 33a:	64 00 66 73          	add    %ah,%fs:0x73(%esi)
 33e:	65 65 6b 00 66       	gs imul $0x66,%gs:(%eax),%eax
 343:	63 6c 6f 73          	arpl   %bp,0x73(%edi,%ebp,2)
 347:	65 00 6d 61          	add    %ch,%gs:0x61(%ebp)
 34b:	6c                   	insb   (%dx),%es:(%edi)
 34c:	6c                   	insb   (%dx),%es:(%edi)
 34d:	6f                   	outsl  %ds:(%esi),(%dx)
 34e:	63 00                	arpl   %ax,(%eax)
 350:	66 72 65             	data16 jb 3b8 <_init-0x140>
 353:	61                   	popa   
 354:	64 00 73 6c          	add    %dh,%fs:0x6c(%ebx)
 358:	65 65 70 00          	gs gs jo 35c <_init-0x19c>
 35c:	5f                   	pop    %edi
 35d:	5f                   	pop    %edi
 35e:	63 78 61             	arpl   %di,0x61(%eax)
 361:	5f                   	pop    %edi
 362:	66 69 6e 61 6c 69    	imul   $0x696c,0x61(%esi),%bp
 368:	7a 65                	jp     3cf <_init-0x129>
 36a:	00 5f 5f             	add    %bl,0x5f(%edi)
 36d:	6c                   	insb   (%dx),%es:(%edi)
 36e:	69 62 63 5f 73 74 61 	imul   $0x6174735f,0x63(%edx),%esp
 375:	72 74                	jb     3eb <_init-0x10d>
 377:	5f                   	pop    %edi
 378:	6d                   	insl   (%dx),%es:(%edi)
 379:	61                   	popa   
 37a:	69 6e 00 66 72 65 65 	imul   $0x65657266,0x0(%esi),%ebp
 381:	00 47 4c             	add    %al,0x4c(%edi)
 384:	49                   	dec    %ecx
 385:	42                   	inc    %edx
 386:	43                   	inc    %ebx
 387:	5f                   	pop    %edi
 388:	32 2e                	xor    (%esi),%ch
 38a:	31 2e                	xor    %ebp,(%esi)
 38c:	33 00                	xor    (%eax),%eax
 38e:	47                   	inc    %edi
 38f:	4c                   	dec    %esp
 390:	49                   	dec    %ecx
 391:	42                   	inc    %edx
 392:	43                   	inc    %ebx
 393:	5f                   	pop    %edi
 394:	32 2e                	xor    (%esi),%ch
 396:	31 00                	xor    %eax,(%eax)
 398:	47                   	inc    %edi
 399:	4c                   	dec    %esp
 39a:	49                   	dec    %ecx
 39b:	42                   	inc    %edx
 39c:	43                   	inc    %ebx
 39d:	5f                   	pop    %edi
 39e:	32 2e                	xor    (%esi),%ch
 3a0:	30 00                	xor    %al,(%eax)
 3a2:	5f                   	pop    %edi
 3a3:	49                   	dec    %ecx
 3a4:	54                   	push   %esp
 3a5:	4d                   	dec    %ebp
 3a6:	5f                   	pop    %edi
 3a7:	64 65 72 65          	fs gs jb 410 <_init-0xe8>
 3ab:	67 69 73 74 65 72 54 	imul   $0x4d547265,0x74(%bp,%di),%esi
 3b2:	4d 
 3b3:	43                   	inc    %ebx
 3b4:	6c                   	insb   (%dx),%es:(%edi)
 3b5:	6f                   	outsl  %ds:(%esi),(%dx)
 3b6:	6e                   	outsb  %ds:(%esi),(%dx)
 3b7:	65 54                	gs push %esp
 3b9:	61                   	popa   
 3ba:	62 6c 65 00          	bound  %ebp,0x0(%ebp,%eiz,2)
 3be:	5f                   	pop    %edi
 3bf:	5f                   	pop    %edi
 3c0:	67 6d                	insl   (%dx),%es:(%di)
 3c2:	6f                   	outsl  %ds:(%esi),(%dx)
 3c3:	6e                   	outsb  %ds:(%esi),(%dx)
 3c4:	5f                   	pop    %edi
 3c5:	73 74                	jae    43b <_init-0xbd>
 3c7:	61                   	popa   
 3c8:	72 74                	jb     43e <_init-0xba>
 3ca:	5f                   	pop    %edi
 3cb:	5f                   	pop    %edi
 3cc:	00 5f 49             	add    %bl,0x49(%edi)
 3cf:	54                   	push   %esp
 3d0:	4d                   	dec    %ebp
 3d1:	5f                   	pop    %edi
 3d2:	72 65                	jb     439 <_init-0xbf>
 3d4:	67 69 73 74 65 72 54 	imul   $0x4d547265,0x74(%bp,%di),%esi
 3db:	4d 
 3dc:	43                   	inc    %ebx
 3dd:	6c                   	insb   (%dx),%es:(%edi)
 3de:	6f                   	outsl  %ds:(%esi),(%dx)
 3df:	6e                   	outsb  %ds:(%esi),(%dx)
 3e0:	65 54                	gs push %esp
 3e2:	61                   	popa   
 3e3:	62 6c 65 00          	bound  %ebp,0x0(%ebp,%eiz,2)

Дизассемблирование раздела .gnu.version:

000003e8 <.gnu.version>:
 3e8:	00 00                	add    %al,(%eax)
 3ea:	00 00                	add    %al,(%eax)
 3ec:	02 00                	add    (%eax),%al
 3ee:	03 00                	add    (%eax),%eax
 3f0:	02 00                	add    (%eax),%al
 3f2:	02 00                	add    (%eax),%al
 3f4:	02 00                	add    (%eax),%al
 3f6:	04 00                	add    $0x0,%al
 3f8:	02 00                	add    (%eax),%al
 3fa:	02 00                	add    (%eax),%al
 3fc:	00 00                	add    %al,(%eax)
 3fe:	02 00                	add    (%eax),%al
 400:	02 00                	add    (%eax),%al
 402:	02 00                	add    (%eax),%al
 404:	03 00                	add    (%eax),%eax
 406:	02 00                	add    (%eax),%al
 408:	00 00                	add    %al,(%eax)
 40a:	02 00                	add    (%eax),%al
 40c:	01 00                	add    %eax,(%eax)

Дизассемблирование раздела .gnu.version_r:

00000410 <.gnu.version_r>:
 410:	01 00                	add    %eax,(%eax)
 412:	03 00                	add    (%eax),%eax
 414:	01 00                	add    %eax,(%eax)
 416:	00 00                	add    %al,(%eax)
 418:	10 00                	adc    %al,(%eax)
 41a:	00 00                	add    %al,(%eax)
 41c:	00 00                	add    %al,(%eax)
 41e:	00 00                	add    %al,(%eax)
 420:	73 1f                	jae    441 <_init-0xb7>
 422:	69 09 00 00 04 00    	imul   $0x40000,(%ecx),%ecx
 428:	86 00                	xchg   %al,(%eax)
 42a:	00 00                	add    %al,(%eax)
 42c:	10 00                	adc    %al,(%eax)
 42e:	00 00                	add    %al,(%eax)
 430:	11 69 69             	adc    %ebp,0x69(%ecx)
 433:	0d 00 00 03 00       	or     $0x30000,%eax
 438:	92                   	xchg   %eax,%edx
 439:	00 00                	add    %al,(%eax)
 43b:	00 10                	add    %dl,(%eax)
 43d:	00 00                	add    %al,(%eax)
 43f:	00 10                	add    %dl,(%eax)
 441:	69 69 0d 00 00 02 00 	imul   $0x20000,0xd(%ecx),%ebp
 448:	9c                   	pushf  
 449:	00 00                	add    %al,(%eax)
 44b:	00 00                	add    %al,(%eax)
 44d:	00 00                	add    %al,(%eax)
	...

Дизассемблирование раздела .rel.dyn:

00000450 <.rel.dyn>:
 450:	ac                   	lods   %ds:(%esi),%al
 451:	1e                   	push   %ds
 452:	00 00                	add    %al,(%eax)
 454:	08 00                	or     %al,(%eax)
 456:	00 00                	add    %al,(%eax)
 458:	b0 1e                	mov    $0x1e,%al
 45a:	00 00                	add    %al,(%eax)
 45c:	08 00                	or     %al,(%eax)
 45e:	00 00                	add    %al,(%eax)
 460:	f8                   	clc    
 461:	1f                   	pop    %ds
 462:	00 00                	add    %al,(%eax)
 464:	08 00                	or     %al,(%eax)
 466:	00 00                	add    %al,(%eax)
 468:	04 20                	add    $0x20,%al
 46a:	00 00                	add    %al,(%eax)
 46c:	08 00                	or     %al,(%eax)
 46e:	00 00                	add    %al,(%eax)
 470:	ec                   	in     (%dx),%al
 471:	1f                   	pop    %ds
 472:	00 00                	add    %al,(%eax)
 474:	06                   	push   %es
 475:	01 00                	add    %eax,(%eax)
 477:	00 f0                	add    %dh,%al
 479:	1f                   	pop    %ds
 47a:	00 00                	add    %al,(%eax)
 47c:	06                   	push   %es
 47d:	07                   	pop    %es
 47e:	00 00                	add    %al,(%eax)
 480:	f4                   	hlt    
 481:	1f                   	pop    %ds
 482:	00 00                	add    %al,(%eax)
 484:	06                   	push   %es
 485:	0a 00                	or     (%eax),%al
 487:	00 fc                	add    %bh,%ah
 489:	1f                   	pop    %ds
 48a:	00 00                	add    %al,(%eax)
 48c:	06                   	push   %es
 48d:	10 00                	adc    %al,(%eax)
	...

Дизассемблирование раздела .rel.plt:

00000490 <.rel.plt>:
 490:	b8 1f 00 00 07       	mov    $0x700001f,%eax
 495:	02 00                	add    (%eax),%al
 497:	00 bc 1f 00 00 07 03 	add    %bh,0x3070000(%edi,%ebx,1)
 49e:	00 00                	add    %al,(%eax)
 4a0:	c0 1f 00             	rcrb   $0x0,(%edi)
 4a3:	00 07                	add    %al,(%edi)
 4a5:	04 00                	add    $0x0,%al
 4a7:	00 c4                	add    %al,%ah
 4a9:	1f                   	pop    %ds
 4aa:	00 00                	add    %al,(%eax)
 4ac:	07                   	pop    %es
 4ad:	05 00 00 c8 1f       	add    $0x1fc80000,%eax
 4b2:	00 00                	add    %al,(%eax)
 4b4:	07                   	pop    %es
 4b5:	06                   	push   %es
 4b6:	00 00                	add    %al,(%eax)
 4b8:	cc                   	int3   
 4b9:	1f                   	pop    %ds
 4ba:	00 00                	add    %al,(%eax)
 4bc:	07                   	pop    %es
 4bd:	08 00                	or     %al,(%eax)
 4bf:	00 d0                	add    %dl,%al
 4c1:	1f                   	pop    %ds
 4c2:	00 00                	add    %al,(%eax)
 4c4:	07                   	pop    %es
 4c5:	09 00                	or     %eax,(%eax)
 4c7:	00 d4                	add    %dl,%ah
 4c9:	1f                   	pop    %ds
 4ca:	00 00                	add    %al,(%eax)
 4cc:	07                   	pop    %es
 4cd:	0b 00                	or     (%eax),%eax
 4cf:	00 d8                	add    %bl,%al
 4d1:	1f                   	pop    %ds
 4d2:	00 00                	add    %al,(%eax)
 4d4:	07                   	pop    %es
 4d5:	0c 00                	or     $0x0,%al
 4d7:	00 dc                	add    %bl,%ah
 4d9:	1f                   	pop    %ds
 4da:	00 00                	add    %al,(%eax)
 4dc:	07                   	pop    %es
 4dd:	0d 00 00 e0 1f       	or     $0x1fe00000,%eax
 4e2:	00 00                	add    %al,(%eax)
 4e4:	07                   	pop    %es
 4e5:	0e                   	push   %cs
 4e6:	00 00                	add    %al,(%eax)
 4e8:	e4 1f                	in     $0x1f,%al
 4ea:	00 00                	add    %al,(%eax)
 4ec:	07                   	pop    %es
 4ed:	0f 00 00             	sldt   (%eax)
 4f0:	e8 1f 00 00 07       	call   7000514 <_end+0x6ffe508>
 4f5:	11 00                	adc    %eax,(%eax)
	...

Дизассемблирование раздела .init:

000004f8 <_init>:
 4f8:	53                   	push   %ebx
 4f9:	83 ec 08             	sub    $0x8,%esp
 4fc:	e8 4f 01 00 00       	call   650 <__x86.get_pc_thunk.bx>
 501:	81 c3 ab 1a 00 00    	add    $0x1aab,%ebx
 507:	8b 83 48 00 00 00    	mov    0x48(%ebx),%eax
 50d:	85 c0                	test   %eax,%eax
 50f:	74 05                	je     516 <_init+0x1e>
 511:	e8 f2 00 00 00       	call   608 <__gmon_start__@plt>
 516:	83 c4 08             	add    $0x8,%esp
 519:	5b                   	pop    %ebx
 51a:	c3                   	ret    

Дизассемблирование раздела .plt:

00000520 <.plt>:
 520:	ff b3 04 00 00 00    	pushl  0x4(%ebx)
 526:	ff a3 08 00 00 00    	jmp    *0x8(%ebx)
 52c:	00 00                	add    %al,(%eax)
	...

00000530 <free@plt>:
 530:	ff a3 0c 00 00 00    	jmp    *0xc(%ebx)
 536:	68 00 00 00 00       	push   $0x0
 53b:	e9 e0 ff ff ff       	jmp    520 <.plt>

00000540 <fclose@plt>:
 540:	ff a3 10 00 00 00    	jmp    *0x10(%ebx)
 546:	68 08 00 00 00       	push   $0x8
 54b:	e9 d0 ff ff ff       	jmp    520 <.plt>

00000550 <sleep@plt>:
 550:	ff a3 14 00 00 00    	jmp    *0x14(%ebx)
 556:	68 10 00 00 00       	push   $0x10
 55b:	e9 c0 ff ff ff       	jmp    520 <.plt>

00000560 <rewind@plt>:
 560:	ff a3 18 00 00 00    	jmp    *0x18(%ebx)
 566:	68 18 00 00 00       	push   $0x18
 56b:	e9 b0 ff ff ff       	jmp    520 <.plt>

00000570 <fseek@plt>:
 570:	ff a3 1c 00 00 00    	jmp    *0x1c(%ebx)
 576:	68 20 00 00 00       	push   $0x20
 57b:	e9 a0 ff ff ff       	jmp    520 <.plt>

00000580 <fread@plt>:
 580:	ff a3 20 00 00 00    	jmp    *0x20(%ebx)
 586:	68 28 00 00 00       	push   $0x28
 58b:	e9 90 ff ff ff       	jmp    520 <.plt>

00000590 <malloc@plt>:
 590:	ff a3 24 00 00 00    	jmp    *0x24(%ebx)
 596:	68 30 00 00 00       	push   $0x30
 59b:	e9 80 ff ff ff       	jmp    520 <.plt>

000005a0 <strlen@plt>:
 5a0:	ff a3 28 00 00 00    	jmp    *0x28(%ebx)
 5a6:	68 38 00 00 00       	push   $0x38
 5ab:	e9 70 ff ff ff       	jmp    520 <.plt>

000005b0 <__libc_start_main@plt>:
 5b0:	ff a3 2c 00 00 00    	jmp    *0x2c(%ebx)
 5b6:	68 40 00 00 00       	push   $0x40
 5bb:	e9 60 ff ff ff       	jmp    520 <.plt>

000005c0 <ftell@plt>:
 5c0:	ff a3 30 00 00 00    	jmp    *0x30(%ebx)
 5c6:	68 48 00 00 00       	push   $0x48
 5cb:	e9 50 ff ff ff       	jmp    520 <.plt>

000005d0 <fopen@plt>:
 5d0:	ff a3 34 00 00 00    	jmp    *0x34(%ebx)
 5d6:	68 50 00 00 00       	push   $0x50
 5db:	e9 40 ff ff ff       	jmp    520 <.plt>

000005e0 <socket@plt>:
 5e0:	ff a3 38 00 00 00    	jmp    *0x38(%ebx)
 5e6:	68 58 00 00 00       	push   $0x58
 5eb:	e9 30 ff ff ff       	jmp    520 <.plt>

000005f0 <send@plt>:
 5f0:	ff a3 3c 00 00 00    	jmp    *0x3c(%ebx)
 5f6:	68 60 00 00 00       	push   $0x60
 5fb:	e9 20 ff ff ff       	jmp    520 <.plt>

Дизассемблирование раздела .plt.got:

00000600 <__cxa_finalize@plt>:
 600:	ff a3 44 00 00 00    	jmp    *0x44(%ebx)
 606:	66 90                	xchg   %ax,%ax

00000608 <__gmon_start__@plt>:
 608:	ff a3 48 00 00 00    	jmp    *0x48(%ebx)
 60e:	66 90                	xchg   %ax,%ax

Дизассемблирование раздела .text:

00000610 <_start>:
 610:	31 ed                	xor    %ebp,%ebp
 612:	5e                   	pop    %esi
 613:	89 e1                	mov    %esp,%ecx
 615:	83 e4 f0             	and    $0xfffffff0,%esp
 618:	50                   	push   %eax
 619:	54                   	push   %esp
 61a:	52                   	push   %edx
 61b:	e8 22 00 00 00       	call   642 <_start+0x32>
 620:	81 c3 8c 19 00 00    	add    $0x198c,%ebx
 626:	8d 83 94 e9 ff ff    	lea    -0x166c(%ebx),%eax
 62c:	50                   	push   %eax
 62d:	8d 83 34 e9 ff ff    	lea    -0x16cc(%ebx),%eax
 633:	50                   	push   %eax
 634:	51                   	push   %ecx
 635:	56                   	push   %esi
 636:	ff b3 4c 00 00 00    	pushl  0x4c(%ebx)
 63c:	e8 6f ff ff ff       	call   5b0 <__libc_start_main@plt>
 641:	f4                   	hlt    
 642:	8b 1c 24             	mov    (%esp),%ebx
 645:	c3                   	ret    
 646:	66 90                	xchg   %ax,%ax
 648:	66 90                	xchg   %ax,%ax
 64a:	66 90                	xchg   %ax,%ax
 64c:	66 90                	xchg   %ax,%ax
 64e:	66 90                	xchg   %ax,%ax

00000650 <__x86.get_pc_thunk.bx>:
 650:	8b 1c 24             	mov    (%esp),%ebx
 653:	c3                   	ret    
 654:	66 90                	xchg   %ax,%ax
 656:	66 90                	xchg   %ax,%ax
 658:	66 90                	xchg   %ax,%ax
 65a:	66 90                	xchg   %ax,%ax
 65c:	66 90                	xchg   %ax,%ax
 65e:	66 90                	xchg   %ax,%ax

00000660 <deregister_tm_clones>:
 660:	e8 e4 00 00 00       	call   749 <__x86.get_pc_thunk.dx>
 665:	81 c2 47 19 00 00    	add    $0x1947,%edx
 66b:	8d 8a 5c 00 00 00    	lea    0x5c(%edx),%ecx
 671:	8d 82 5c 00 00 00    	lea    0x5c(%edx),%eax
 677:	39 c8                	cmp    %ecx,%eax
 679:	74 1d                	je     698 <deregister_tm_clones+0x38>
 67b:	8b 82 40 00 00 00    	mov    0x40(%edx),%eax
 681:	85 c0                	test   %eax,%eax
 683:	74 13                	je     698 <deregister_tm_clones+0x38>
 685:	55                   	push   %ebp
 686:	89 e5                	mov    %esp,%ebp
 688:	83 ec 14             	sub    $0x14,%esp
 68b:	51                   	push   %ecx
 68c:	ff d0                	call   *%eax
 68e:	83 c4 10             	add    $0x10,%esp
 691:	c9                   	leave  
 692:	c3                   	ret    
 693:	90                   	nop
 694:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 698:	f3 c3                	repz ret 
 69a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

000006a0 <register_tm_clones>:
 6a0:	e8 a4 00 00 00       	call   749 <__x86.get_pc_thunk.dx>
 6a5:	81 c2 07 19 00 00    	add    $0x1907,%edx
 6ab:	55                   	push   %ebp
 6ac:	8d 8a 5c 00 00 00    	lea    0x5c(%edx),%ecx
 6b2:	8d 82 5c 00 00 00    	lea    0x5c(%edx),%eax
 6b8:	29 c8                	sub    %ecx,%eax
 6ba:	89 e5                	mov    %esp,%ebp
 6bc:	53                   	push   %ebx
 6bd:	c1 f8 02             	sar    $0x2,%eax
 6c0:	89 c3                	mov    %eax,%ebx
 6c2:	83 ec 04             	sub    $0x4,%esp
 6c5:	c1 eb 1f             	shr    $0x1f,%ebx
 6c8:	01 d8                	add    %ebx,%eax
 6ca:	d1 f8                	sar    %eax
 6cc:	74 14                	je     6e2 <register_tm_clones+0x42>
 6ce:	8b 92 50 00 00 00    	mov    0x50(%edx),%edx
 6d4:	85 d2                	test   %edx,%edx
 6d6:	74 0a                	je     6e2 <register_tm_clones+0x42>
 6d8:	83 ec 08             	sub    $0x8,%esp
 6db:	50                   	push   %eax
 6dc:	51                   	push   %ecx
 6dd:	ff d2                	call   *%edx
 6df:	83 c4 10             	add    $0x10,%esp
 6e2:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 6e5:	c9                   	leave  
 6e6:	c3                   	ret    
 6e7:	89 f6                	mov    %esi,%esi
 6e9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000006f0 <__do_global_dtors_aux>:
 6f0:	55                   	push   %ebp
 6f1:	89 e5                	mov    %esp,%ebp
 6f3:	53                   	push   %ebx
 6f4:	e8 57 ff ff ff       	call   650 <__x86.get_pc_thunk.bx>
 6f9:	81 c3 b3 18 00 00    	add    $0x18b3,%ebx
 6ff:	83 ec 04             	sub    $0x4,%esp
 702:	80 bb 5c 00 00 00 00 	cmpb   $0x0,0x5c(%ebx)
 709:	75 27                	jne    732 <__do_global_dtors_aux+0x42>
 70b:	8b 83 44 00 00 00    	mov    0x44(%ebx),%eax
 711:	85 c0                	test   %eax,%eax
 713:	74 11                	je     726 <__do_global_dtors_aux+0x36>
 715:	83 ec 0c             	sub    $0xc,%esp
 718:	ff b3 58 00 00 00    	pushl  0x58(%ebx)
 71e:	e8 dd fe ff ff       	call   600 <__cxa_finalize@plt>
 723:	83 c4 10             	add    $0x10,%esp
 726:	e8 35 ff ff ff       	call   660 <deregister_tm_clones>
 72b:	c6 83 5c 00 00 00 01 	movb   $0x1,0x5c(%ebx)
 732:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 735:	c9                   	leave  
 736:	c3                   	ret    
 737:	89 f6                	mov    %esi,%esi
 739:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000740 <frame_dummy>:
 740:	55                   	push   %ebp
 741:	89 e5                	mov    %esp,%ebp
 743:	5d                   	pop    %ebp
 744:	e9 57 ff ff ff       	jmp    6a0 <register_tm_clones>

00000749 <__x86.get_pc_thunk.dx>:
 749:	8b 14 24             	mov    (%esp),%edx
 74c:	c3                   	ret    

0000074d <_Z9read_filePKc>:
 74d:	55                   	push   %ebp
 74e:	89 e5                	mov    %esp,%ebp
 750:	53                   	push   %ebx
 751:	83 ec 14             	sub    $0x14,%esp
 754:	e8 f7 fe ff ff       	call   650 <__x86.get_pc_thunk.bx>
 759:	81 c3 53 18 00 00    	add    $0x1853,%ebx
 75f:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
 766:	83 ec 08             	sub    $0x8,%esp
 769:	8d 83 b4 e9 ff ff    	lea    -0x164c(%ebx),%eax
 76f:	50                   	push   %eax
 770:	ff 75 08             	pushl  0x8(%ebp)
 773:	e8 58 fe ff ff       	call   5d0 <fopen@plt>
 778:	83 c4 10             	add    $0x10,%esp
 77b:	89 45 ec             	mov    %eax,-0x14(%ebp)
 77e:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
 782:	0f 84 93 00 00 00    	je     81b <_Z9read_filePKc+0xce>
 788:	83 ec 04             	sub    $0x4,%esp
 78b:	6a 02                	push   $0x2
 78d:	6a 00                	push   $0x0
 78f:	ff 75 ec             	pushl  -0x14(%ebp)
 792:	e8 d9 fd ff ff       	call   570 <fseek@plt>
 797:	83 c4 10             	add    $0x10,%esp
 79a:	83 ec 0c             	sub    $0xc,%esp
 79d:	ff 75 ec             	pushl  -0x14(%ebp)
 7a0:	e8 1b fe ff ff       	call   5c0 <ftell@plt>
 7a5:	83 c4 10             	add    $0x10,%esp
 7a8:	89 45 f0             	mov    %eax,-0x10(%ebp)
 7ab:	83 ec 0c             	sub    $0xc,%esp
 7ae:	ff 75 ec             	pushl  -0x14(%ebp)
 7b1:	e8 aa fd ff ff       	call   560 <rewind@plt>
 7b6:	83 c4 10             	add    $0x10,%esp
 7b9:	8b 45 f0             	mov    -0x10(%ebp),%eax
 7bc:	83 c0 01             	add    $0x1,%eax
 7bf:	83 ec 0c             	sub    $0xc,%esp
 7c2:	50                   	push   %eax
 7c3:	e8 c8 fd ff ff       	call   590 <malloc@plt>
 7c8:	83 c4 10             	add    $0x10,%esp
 7cb:	89 45 e8             	mov    %eax,-0x18(%ebp)
 7ce:	8b 45 f0             	mov    -0x10(%ebp),%eax
 7d1:	ff 75 ec             	pushl  -0x14(%ebp)
 7d4:	50                   	push   %eax
 7d5:	6a 01                	push   $0x1
 7d7:	ff 75 e8             	pushl  -0x18(%ebp)
 7da:	e8 a1 fd ff ff       	call   580 <fread@plt>
 7df:	83 c4 10             	add    $0x10,%esp
 7e2:	89 45 f4             	mov    %eax,-0xc(%ebp)
 7e5:	8b 55 f0             	mov    -0x10(%ebp),%edx
 7e8:	8b 45 e8             	mov    -0x18(%ebp),%eax
 7eb:	01 d0                	add    %edx,%eax
 7ed:	c6 00 00             	movb   $0x0,(%eax)
 7f0:	8b 45 f0             	mov    -0x10(%ebp),%eax
 7f3:	3b 45 f4             	cmp    -0xc(%ebp),%eax
 7f6:	74 15                	je     80d <_Z9read_filePKc+0xc0>
 7f8:	83 ec 0c             	sub    $0xc,%esp
 7fb:	ff 75 e8             	pushl  -0x18(%ebp)
 7fe:	e8 2d fd ff ff       	call   530 <free@plt>
 803:	83 c4 10             	add    $0x10,%esp
 806:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
 80d:	83 ec 0c             	sub    $0xc,%esp
 810:	ff 75 ec             	pushl  -0x14(%ebp)
 813:	e8 28 fd ff ff       	call   540 <fclose@plt>
 818:	83 c4 10             	add    $0x10,%esp
 81b:	8b 45 e8             	mov    -0x18(%ebp),%eax
 81e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 821:	c9                   	leave  
 822:	c3                   	ret    

00000823 <_Z15open_connectionv>:
 823:	55                   	push   %ebp
 824:	89 e5                	mov    %esp,%ebp
 826:	53                   	push   %ebx
 827:	83 ec 04             	sub    $0x4,%esp
 82a:	e8 a0 00 00 00       	call   8cf <__x86.get_pc_thunk.ax>
 82f:	05 7d 17 00 00       	add    $0x177d,%eax
 834:	83 ec 04             	sub    $0x4,%esp
 837:	6a 11                	push   $0x11
 839:	6a 02                	push   $0x2
 83b:	6a 02                	push   $0x2
 83d:	89 c3                	mov    %eax,%ebx
 83f:	e8 9c fd ff ff       	call   5e0 <socket@plt>
 844:	83 c4 10             	add    $0x10,%esp
 847:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 84a:	c9                   	leave  
 84b:	c3                   	ret    

0000084c <main>:
 84c:	8d 4c 24 04          	lea    0x4(%esp),%ecx
 850:	83 e4 f0             	and    $0xfffffff0,%esp
 853:	ff 71 fc             	pushl  -0x4(%ecx)
 856:	55                   	push   %ebp
 857:	89 e5                	mov    %esp,%ebp
 859:	53                   	push   %ebx
 85a:	51                   	push   %ecx
 85b:	83 ec 10             	sub    $0x10,%esp
 85e:	e8 ed fd ff ff       	call   650 <__x86.get_pc_thunk.bx>
 863:	81 c3 49 17 00 00    	add    $0x1749,%ebx
 869:	e8 b5 ff ff ff       	call   823 <_Z15open_connectionv>
 86e:	89 45 f0             	mov    %eax,-0x10(%ebp)
 871:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 878:	83 ec 0c             	sub    $0xc,%esp
 87b:	8d 83 b6 e9 ff ff    	lea    -0x164a(%ebx),%eax
 881:	50                   	push   %eax
 882:	e8 c6 fe ff ff       	call   74d <_Z9read_filePKc>
 887:	83 c4 10             	add    $0x10,%esp
 88a:	89 45 f4             	mov    %eax,-0xc(%ebp)
 88d:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 891:	74 1f                	je     8b2 <main+0x66>
 893:	83 ec 0c             	sub    $0xc,%esp
 896:	ff 75 f4             	pushl  -0xc(%ebp)
 899:	e8 02 fd ff ff       	call   5a0 <strlen@plt>
 89e:	83 c4 10             	add    $0x10,%esp
 8a1:	6a 00                	push   $0x0
 8a3:	50                   	push   %eax
 8a4:	ff 75 f4             	pushl  -0xc(%ebp)
 8a7:	ff 75 f0             	pushl  -0x10(%ebp)
 8aa:	e8 41 fd ff ff       	call   5f0 <send@plt>
 8af:	83 c4 10             	add    $0x10,%esp
 8b2:	83 ec 0c             	sub    $0xc,%esp
 8b5:	ff 75 f4             	pushl  -0xc(%ebp)
 8b8:	e8 73 fc ff ff       	call   530 <free@plt>
 8bd:	83 c4 10             	add    $0x10,%esp
 8c0:	83 ec 0c             	sub    $0xc,%esp
 8c3:	6a 05                	push   $0x5
 8c5:	e8 86 fc ff ff       	call   550 <sleep@plt>
 8ca:	83 c4 10             	add    $0x10,%esp
 8cd:	eb a9                	jmp    878 <main+0x2c>

000008cf <__x86.get_pc_thunk.ax>:
 8cf:	8b 04 24             	mov    (%esp),%eax
 8d2:	c3                   	ret    
 8d3:	66 90                	xchg   %ax,%ax
 8d5:	66 90                	xchg   %ax,%ax
 8d7:	66 90                	xchg   %ax,%ax
 8d9:	66 90                	xchg   %ax,%ax
 8db:	66 90                	xchg   %ax,%ax
 8dd:	66 90                	xchg   %ax,%ax
 8df:	90                   	nop

000008e0 <__libc_csu_init>:
 8e0:	55                   	push   %ebp
 8e1:	57                   	push   %edi
 8e2:	56                   	push   %esi
 8e3:	53                   	push   %ebx
 8e4:	e8 67 fd ff ff       	call   650 <__x86.get_pc_thunk.bx>
 8e9:	81 c3 c3 16 00 00    	add    $0x16c3,%ebx
 8ef:	83 ec 0c             	sub    $0xc,%esp
 8f2:	8b 6c 24 20          	mov    0x20(%esp),%ebp
 8f6:	8d b3 04 ff ff ff    	lea    -0xfc(%ebx),%esi
 8fc:	e8 f7 fb ff ff       	call   4f8 <_init>
 901:	8d 83 00 ff ff ff    	lea    -0x100(%ebx),%eax
 907:	29 c6                	sub    %eax,%esi
 909:	c1 fe 02             	sar    $0x2,%esi
 90c:	85 f6                	test   %esi,%esi
 90e:	74 25                	je     935 <__libc_csu_init+0x55>
 910:	31 ff                	xor    %edi,%edi
 912:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 918:	83 ec 04             	sub    $0x4,%esp
 91b:	ff 74 24 2c          	pushl  0x2c(%esp)
 91f:	ff 74 24 2c          	pushl  0x2c(%esp)
 923:	55                   	push   %ebp
 924:	ff 94 bb 00 ff ff ff 	call   *-0x100(%ebx,%edi,4)
 92b:	83 c7 01             	add    $0x1,%edi
 92e:	83 c4 10             	add    $0x10,%esp
 931:	39 fe                	cmp    %edi,%esi
 933:	75 e3                	jne    918 <__libc_csu_init+0x38>
 935:	83 c4 0c             	add    $0xc,%esp
 938:	5b                   	pop    %ebx
 939:	5e                   	pop    %esi
 93a:	5f                   	pop    %edi
 93b:	5d                   	pop    %ebp
 93c:	c3                   	ret    
 93d:	8d 76 00             	lea    0x0(%esi),%esi

00000940 <__libc_csu_fini>:
 940:	f3 c3                	repz ret 

Дизассемблирование раздела .fini:

00000944 <_fini>:
 944:	53                   	push   %ebx
 945:	83 ec 08             	sub    $0x8,%esp
 948:	e8 03 fd ff ff       	call   650 <__x86.get_pc_thunk.bx>
 94d:	81 c3 5f 16 00 00    	add    $0x165f,%ebx
 953:	83 c4 08             	add    $0x8,%esp
 956:	5b                   	pop    %ebx
 957:	c3                   	ret    

Дизассемблирование раздела .rodata:

00000958 <_fp_hw>:
 958:	03 00                	add    (%eax),%eax
	...

0000095c <_IO_stdin_used>:
 95c:	01 00                	add    %eax,(%eax)
 95e:	02 00                	add    (%eax),%al
 960:	72 00                	jb     962 <_IO_stdin_used+0x6>
 962:	2f                   	das    
 963:	65 74 63             	gs je  9c9 <__GNU_EH_FRAME_HDR+0x59>
 966:	2f                   	das    
 967:	73 68                	jae    9d1 <__GNU_EH_FRAME_HDR+0x61>
 969:	61                   	popa   
 96a:	64 6f                	outsl  %fs:(%esi),(%dx)
 96c:	77 00                	ja     96e <_IO_stdin_used+0x12>

Дизассемблирование раздела .eh_frame_hdr:

00000970 <__GNU_EH_FRAME_HDR>:
 970:	01 1b                	add    %ebx,(%ebx)
 972:	03 3b                	add    (%ebx),%edi
 974:	48                   	dec    %eax
 975:	00 00                	add    %al,(%eax)
 977:	00 08                	add    %cl,(%eax)
 979:	00 00                	add    %al,(%eax)
 97b:	00 b0 fb ff ff 64    	add    %dh,0x64fffffb(%eax)
 981:	00 00                	add    %al,(%eax)
 983:	00 90 fc ff ff 88    	add    %dl,-0x77000004(%eax)
 989:	00 00                	add    %al,(%eax)
 98b:	00 dd                	add    %bl,%ch
 98d:	fd                   	std    
 98e:	ff                   	(bad)  
 98f:	ff 9c 00 00 00 b3 fe 	lcall  *-0x14d0000(%eax,%eax,1)
 996:	ff                   	(bad)  
 997:	ff c0                	inc    %eax
 999:	00 00                	add    %al,(%eax)
 99b:	00 dc                	add    %bl,%ah
 99d:	fe                   	(bad)  
 99e:	ff                   	(bad)  
 99f:	ff e4                	jmp    *%esp
 9a1:	00 00                	add    %al,(%eax)
 9a3:	00 5f ff             	add    %bl,-0x1(%edi)
 9a6:	ff                   	(bad)  
 9a7:	ff 0c 01             	decl   (%ecx,%eax,1)
 9aa:	00 00                	add    %al,(%eax)
 9ac:	70 ff                	jo     9ad <__GNU_EH_FRAME_HDR+0x3d>
 9ae:	ff                   	(bad)  
 9af:	ff 20                	jmp    *(%eax)
 9b1:	01 00                	add    %eax,(%eax)
 9b3:	00 d0                	add    %dl,%al
 9b5:	ff                   	(bad)  
 9b6:	ff                   	(bad)  
 9b7:	ff 6c 01 00          	ljmp   *0x0(%ecx,%eax,1)
	...

Дизассемблирование раздела .eh_frame:

000009bc <__FRAME_END__-0x134>:
 9bc:	14 00                	adc    $0x0,%al
 9be:	00 00                	add    %al,(%eax)
 9c0:	00 00                	add    %al,(%eax)
 9c2:	00 00                	add    %al,(%eax)
 9c4:	01 7a 52             	add    %edi,0x52(%edx)
 9c7:	00 01                	add    %al,(%ecx)
 9c9:	7c 08                	jl     9d3 <__GNU_EH_FRAME_HDR+0x63>
 9cb:	01 1b                	add    %ebx,(%ebx)
 9cd:	0c 04                	or     $0x4,%al
 9cf:	04 88                	add    $0x88,%al
 9d1:	01 00                	add    %eax,(%eax)
 9d3:	00 20                	add    %ah,(%eax)
 9d5:	00 00                	add    %al,(%eax)
 9d7:	00 1c 00             	add    %bl,(%eax,%eax,1)
 9da:	00 00                	add    %al,(%eax)
 9dc:	44                   	inc    %esp
 9dd:	fb                   	sti    
 9de:	ff                   	(bad)  
 9df:	ff e0                	jmp    *%eax
 9e1:	00 00                	add    %al,(%eax)
 9e3:	00 00                	add    %al,(%eax)
 9e5:	0e                   	push   %cs
 9e6:	08 46 0e             	or     %al,0xe(%esi)
 9e9:	0c 4a                	or     $0x4a,%al
 9eb:	0f 0b                	ud2    
 9ed:	74 04                	je     9f3 <__GNU_EH_FRAME_HDR+0x83>
 9ef:	78 00                	js     9f1 <__GNU_EH_FRAME_HDR+0x81>
 9f1:	3f                   	aas    
 9f2:	1a 3b                	sbb    (%ebx),%bh
 9f4:	2a 32                	sub    (%edx),%dh
 9f6:	24 22                	and    $0x22,%al
 9f8:	10 00                	adc    %al,(%eax)
 9fa:	00 00                	add    %al,(%eax)
 9fc:	40                   	inc    %eax
 9fd:	00 00                	add    %al,(%eax)
 9ff:	00 00                	add    %al,(%eax)
 a01:	fc                   	cld    
 a02:	ff                   	(bad)  
 a03:	ff 10                	call   *(%eax)
 a05:	00 00                	add    %al,(%eax)
 a07:	00 00                	add    %al,(%eax)
 a09:	00 00                	add    %al,(%eax)
 a0b:	00 20                	add    %ah,(%eax)
 a0d:	00 00                	add    %al,(%eax)
 a0f:	00 54 00 00          	add    %dl,0x0(%eax,%eax,1)
 a13:	00 39                	add    %bh,(%ecx)
 a15:	fd                   	std    
 a16:	ff                   	(bad)  
 a17:	ff d6                	call   *%esi
 a19:	00 00                	add    %al,(%eax)
 a1b:	00 00                	add    %al,(%eax)
 a1d:	41                   	inc    %ecx
 a1e:	0e                   	push   %cs
 a1f:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
 a25:	44                   	inc    %esp
 a26:	83 03 02             	addl   $0x2,(%ebx)
 a29:	ce                   	into   
 a2a:	c5 c3 0c             	(bad)  
 a2d:	04 04                	add    $0x4,%al
 a2f:	00 20                	add    %ah,(%eax)
 a31:	00 00                	add    %al,(%eax)
 a33:	00 78 00             	add    %bh,0x0(%eax)
 a36:	00 00                	add    %al,(%eax)
 a38:	eb fd                	jmp    a37 <__GNU_EH_FRAME_HDR+0xc7>
 a3a:	ff                   	(bad)  
 a3b:	ff 29                	ljmp   *(%ecx)
 a3d:	00 00                	add    %al,(%eax)
 a3f:	00 00                	add    %al,(%eax)
 a41:	41                   	inc    %ecx
 a42:	0e                   	push   %cs
 a43:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
 a49:	44                   	inc    %esp
 a4a:	83 03 61             	addl   $0x61,(%ebx)
 a4d:	c5 c3 0c             	(bad)  
 a50:	04 04                	add    $0x4,%al
 a52:	00 00                	add    %al,(%eax)
 a54:	24 00                	and    $0x0,%al
 a56:	00 00                	add    %al,(%eax)
 a58:	9c                   	pushf  
 a59:	00 00                	add    %al,(%eax)
 a5b:	00 f0                	add    %dh,%al
 a5d:	fd                   	std    
 a5e:	ff                   	(bad)  
 a5f:	ff 83 00 00 00 00    	incl   0x0(%ebx)
 a65:	44                   	inc    %esp
 a66:	0c 01                	or     $0x1,%al
 a68:	00 47 10             	add    %al,0x10(%edi)
 a6b:	05 02 75 00 44       	add    $0x44007502,%eax
 a70:	0f 03 75 78          	lsl    0x78(%ebp),%esi
 a74:	06                   	push   %es
 a75:	10 03                	adc    %al,(%ebx)
 a77:	02 75 7c             	add    0x7c(%ebp),%dh
 a7a:	00 00                	add    %al,(%eax)
 a7c:	10 00                	adc    %al,(%eax)
 a7e:	00 00                	add    %al,(%eax)
 a80:	c4 00                	les    (%eax),%eax
 a82:	00 00                	add    %al,(%eax)
 a84:	4b                   	dec    %ebx
 a85:	fe                   	(bad)  
 a86:	ff                   	(bad)  
 a87:	ff 04 00             	incl   (%eax,%eax,1)
 a8a:	00 00                	add    %al,(%eax)
 a8c:	00 00                	add    %al,(%eax)
 a8e:	00 00                	add    %al,(%eax)
 a90:	48                   	dec    %eax
 a91:	00 00                	add    %al,(%eax)
 a93:	00 d8                	add    %bl,%al
 a95:	00 00                	add    %al,(%eax)
 a97:	00 48 fe             	add    %cl,-0x2(%eax)
 a9a:	ff                   	(bad)  
 a9b:	ff 5d 00             	lcall  *0x0(%ebp)
 a9e:	00 00                	add    %al,(%eax)
 aa0:	00 41 0e             	add    %al,0xe(%ecx)
 aa3:	08 85 02 41 0e 0c    	or     %al,0xc0e4102(%ebp)
 aa9:	87 03                	xchg   %eax,(%ebx)
 aab:	41                   	inc    %ecx
 aac:	0e                   	push   %cs
 aad:	10 86 04 41 0e 14    	adc    %al,0x140e4104(%esi)
 ab3:	83 05 4e 0e 20 69 0e 	addl   $0xe,0x69200e4e
 aba:	24 44                	and    $0x44,%al
 abc:	0e                   	push   %cs
 abd:	28 44 0e 2c          	sub    %al,0x2c(%esi,%ecx,1)
 ac1:	41                   	inc    %ecx
 ac2:	0e                   	push   %cs
 ac3:	30 4d 0e             	xor    %cl,0xe(%ebp)
 ac6:	20 47 0e             	and    %al,0xe(%edi)
 ac9:	14 41                	adc    $0x41,%al
 acb:	c3                   	ret    
 acc:	0e                   	push   %cs
 acd:	10 41 c6             	adc    %al,-0x3a(%ecx)
 ad0:	0e                   	push   %cs
 ad1:	0c 41                	or     $0x41,%al
 ad3:	c7                   	(bad)  
 ad4:	0e                   	push   %cs
 ad5:	08 41 c5             	or     %al,-0x3b(%ecx)
 ad8:	0e                   	push   %cs
 ad9:	04 00                	add    $0x0,%al
 adb:	00 10                	add    %dl,(%eax)
 add:	00 00                	add    %al,(%eax)
 adf:	00 24 01             	add    %ah,(%ecx,%eax,1)
 ae2:	00 00                	add    %al,(%eax)
 ae4:	5c                   	pop    %esp
 ae5:	fe                   	(bad)  
 ae6:	ff                   	(bad)  
 ae7:	ff 02                	incl   (%edx)
 ae9:	00 00                	add    %al,(%eax)
 aeb:	00 00                	add    %al,(%eax)
 aed:	00 00                	add    %al,(%eax)
	...

00000af0 <__FRAME_END__>:
 af0:	00 00                	add    %al,(%eax)
	...

Дизассемблирование раздела .init_array:

00001eac <__frame_dummy_init_array_entry>:
    1eac:	40                   	inc    %eax
    1ead:	07                   	pop    %es
	...

Дизассемблирование раздела .fini_array:

00001eb0 <__do_global_dtors_aux_fini_array_entry>:
    1eb0:	f0 06                	lock push %es
	...

Дизассемблирование раздела .dynamic:

00001eb4 <_DYNAMIC>:
    1eb4:	01 00                	add    %eax,(%eax)
    1eb6:	00 00                	add    %al,(%eax)
    1eb8:	01 00                	add    %eax,(%eax)
    1eba:	00 00                	add    %al,(%eax)
    1ebc:	0c 00                	or     $0x0,%al
    1ebe:	00 00                	add    %al,(%eax)
    1ec0:	f8                   	clc    
    1ec1:	04 00                	add    $0x0,%al
    1ec3:	00 0d 00 00 00 44    	add    %cl,0x44000000
    1ec9:	09 00                	or     %eax,(%eax)
    1ecb:	00 19                	add    %bl,(%ecx)
    1ecd:	00 00                	add    %al,(%eax)
    1ecf:	00 ac 1e 00 00 1b 00 	add    %ch,0x1b0000(%esi,%ebx,1)
    1ed6:	00 00                	add    %al,(%eax)
    1ed8:	04 00                	add    $0x0,%al
    1eda:	00 00                	add    %al,(%eax)
    1edc:	1a 00                	sbb    (%eax),%al
    1ede:	00 00                	add    %al,(%eax)
    1ee0:	b0 1e                	mov    $0x1e,%al
    1ee2:	00 00                	add    %al,(%eax)
    1ee4:	1c 00                	sbb    $0x0,%al
    1ee6:	00 00                	add    %al,(%eax)
    1ee8:	04 00                	add    $0x0,%al
    1eea:	00 00                	add    %al,(%eax)
    1eec:	f5                   	cmc    
    1eed:	fe                   	(bad)  
    1eee:	ff 6f ac             	ljmp   *-0x54(%edi)
    1ef1:	01 00                	add    %eax,(%eax)
    1ef3:	00 05 00 00 00 fc    	add    %al,0xfc000000
    1ef9:	02 00                	add    (%eax),%al
    1efb:	00 06                	add    %al,(%esi)
    1efd:	00 00                	add    %al,(%eax)
    1eff:	00 cc                	add    %cl,%ah
    1f01:	01 00                	add    %eax,(%eax)
    1f03:	00 0a                	add    %cl,(%edx)
    1f05:	00 00                	add    %al,(%eax)
    1f07:	00 eb                	add    %ch,%bl
    1f09:	00 00                	add    %al,(%eax)
    1f0b:	00 0b                	add    %cl,(%ebx)
    1f0d:	00 00                	add    %al,(%eax)
    1f0f:	00 10                	add    %dl,(%eax)
    1f11:	00 00                	add    %al,(%eax)
    1f13:	00 15 00 00 00 00    	add    %dl,0x0
    1f19:	00 00                	add    %al,(%eax)
    1f1b:	00 03                	add    %al,(%ebx)
    1f1d:	00 00                	add    %al,(%eax)
    1f1f:	00 ac 1f 00 00 02 00 	add    %ch,0x20000(%edi,%ebx,1)
    1f26:	00 00                	add    %al,(%eax)
    1f28:	68 00 00 00 14       	push   $0x14000000
    1f2d:	00 00                	add    %al,(%eax)
    1f2f:	00 11                	add    %dl,(%ecx)
    1f31:	00 00                	add    %al,(%eax)
    1f33:	00 17                	add    %dl,(%edi)
    1f35:	00 00                	add    %al,(%eax)
    1f37:	00 90 04 00 00 11    	add    %dl,0x11000004(%eax)
    1f3d:	00 00                	add    %al,(%eax)
    1f3f:	00 50 04             	add    %dl,0x4(%eax)
    1f42:	00 00                	add    %al,(%eax)
    1f44:	12 00                	adc    (%eax),%al
    1f46:	00 00                	add    %al,(%eax)
    1f48:	40                   	inc    %eax
    1f49:	00 00                	add    %al,(%eax)
    1f4b:	00 13                	add    %dl,(%ebx)
    1f4d:	00 00                	add    %al,(%eax)
    1f4f:	00 08                	add    %cl,(%eax)
    1f51:	00 00                	add    %al,(%eax)
    1f53:	00 1e                	add    %bl,(%esi)
    1f55:	00 00                	add    %al,(%eax)
    1f57:	00 08                	add    %cl,(%eax)
    1f59:	00 00                	add    %al,(%eax)
    1f5b:	00 fb                	add    %bh,%bl
    1f5d:	ff                   	(bad)  
    1f5e:	ff 6f 01             	ljmp   *0x1(%edi)
    1f61:	00 00                	add    %al,(%eax)
    1f63:	08 fe                	or     %bh,%dh
    1f65:	ff                   	(bad)  
    1f66:	ff 6f 10             	ljmp   *0x10(%edi)
    1f69:	04 00                	add    $0x0,%al
    1f6b:	00 ff                	add    %bh,%bh
    1f6d:	ff                   	(bad)  
    1f6e:	ff 6f 01             	ljmp   *0x1(%edi)
    1f71:	00 00                	add    %al,(%eax)
    1f73:	00 f0                	add    %dh,%al
    1f75:	ff                   	(bad)  
    1f76:	ff 6f e8             	ljmp   *-0x18(%edi)
    1f79:	03 00                	add    (%eax),%eax
    1f7b:	00 fa                	add    %bh,%dl
    1f7d:	ff                   	(bad)  
    1f7e:	ff 6f 04             	ljmp   *0x4(%edi)
	...

Дизассемблирование раздела .got:

00001fac <_GLOBAL_OFFSET_TABLE_>:
    1fac:	b4 1e                	mov    $0x1e,%ah
	...
    1fb6:	00 00                	add    %al,(%eax)
    1fb8:	36 05 00 00 46 05    	ss add $0x5460000,%eax
    1fbe:	00 00                	add    %al,(%eax)
    1fc0:	56                   	push   %esi
    1fc1:	05 00 00 66 05       	add    $0x5660000,%eax
    1fc6:	00 00                	add    %al,(%eax)
    1fc8:	76 05                	jbe    1fcf <_GLOBAL_OFFSET_TABLE_+0x23>
    1fca:	00 00                	add    %al,(%eax)
    1fcc:	86 05 00 00 96 05    	xchg   %al,0x5960000
    1fd2:	00 00                	add    %al,(%eax)
    1fd4:	a6                   	cmpsb  %es:(%edi),%ds:(%esi)
    1fd5:	05 00 00 b6 05       	add    $0x5b60000,%eax
    1fda:	00 00                	add    %al,(%eax)
    1fdc:	c6 05 00 00 d6 05 00 	movb   $0x0,0x5d60000
    1fe3:	00 e6                	add    %ah,%dh
    1fe5:	05 00 00 f6 05       	add    $0x5f60000,%eax
	...
    1ff6:	00 00                	add    %al,(%eax)
    1ff8:	4c                   	dec    %esp
    1ff9:	08 00                	or     %al,(%eax)
    1ffb:	00 00                	add    %al,(%eax)
    1ffd:	00 00                	add    %al,(%eax)
	...

Дизассемблирование раздела .data:

00002000 <__data_start>:
    2000:	00 00                	add    %al,(%eax)
	...

00002004 <__dso_handle>:
    2004:	04 20                	add    $0x20,%al
	...

Дизассемблирование раздела .bss:

00002008 <__bss_start>:
    2008:	00 00                	add    %al,(%eax)
	...

Дизассемблирование раздела .comment:

00000000 <.comment>:
   0:	47                   	inc    %edi
   1:	43                   	inc    %ebx
   2:	43                   	inc    %ebx
   3:	3a 20                	cmp    (%eax),%ah
   5:	28 55 62             	sub    %dl,0x62(%ebp)
   8:	75 6e                	jne    78 <_init-0x480>
   a:	74 75                	je     81 <_init-0x477>
   c:	20 37                	and    %dh,(%edi)
   e:	2e 32 2e             	xor    %cs:(%esi),%ch
  11:	30 2d 38 75 62 75    	xor    %ch,0x75627538
  17:	6e                   	outsb  %ds:(%esi),(%dx)
  18:	74 75                	je     8f <_init-0x469>
  1a:	33 29                	xor    (%ecx),%ebp
  1c:	20 37                	and    %dh,(%edi)
  1e:	2e 32 2e             	xor    %cs:(%esi),%ch
  21:	30 00                	xor    %al,(%eax)
