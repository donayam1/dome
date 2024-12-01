
main:     file format elf64-x86-64


Disassembly of section .init:

0000000000002000 <_init>:
_init():
    2000:	f3 0f 1e fa          	endbr64 
    2004:	48 83 ec 08          	sub    $0x8,%rsp
    2008:	48 8b 05 d9 cf 00 00 	mov    0xcfd9(%rip),%rax        # efe8 <__gmon_start__>
    200f:	48 85 c0             	test   %rax,%rax
    2012:	74 02                	je     2016 <_init+0x16>
    2014:	ff d0                	callq  *%rax
    2016:	48 83 c4 08          	add    $0x8,%rsp
    201a:	c3                   	retq   

Disassembly of section .plt:

0000000000002020 <.plt>:
    2020:	ff 35 6a cd 00 00    	pushq  0xcd6a(%rip)        # ed90 <_GLOBAL_OFFSET_TABLE_+0x8>
    2026:	f2 ff 25 6b cd 00 00 	bnd jmpq *0xcd6b(%rip)        # ed98 <_GLOBAL_OFFSET_TABLE_+0x10>
    202d:	0f 1f 00             	nopl   (%rax)
    2030:	f3 0f 1e fa          	endbr64 
    2034:	68 00 00 00 00       	pushq  $0x0
    2039:	f2 e9 e1 ff ff ff    	bnd jmpq 2020 <.plt>
    203f:	90                   	nop
    2040:	f3 0f 1e fa          	endbr64 
    2044:	68 01 00 00 00       	pushq  $0x1
    2049:	f2 e9 d1 ff ff ff    	bnd jmpq 2020 <.plt>
    204f:	90                   	nop
    2050:	f3 0f 1e fa          	endbr64 
    2054:	68 02 00 00 00       	pushq  $0x2
    2059:	f2 e9 c1 ff ff ff    	bnd jmpq 2020 <.plt>
    205f:	90                   	nop
    2060:	f3 0f 1e fa          	endbr64 
    2064:	68 03 00 00 00       	pushq  $0x3
    2069:	f2 e9 b1 ff ff ff    	bnd jmpq 2020 <.plt>
    206f:	90                   	nop
    2070:	f3 0f 1e fa          	endbr64 
    2074:	68 04 00 00 00       	pushq  $0x4
    2079:	f2 e9 a1 ff ff ff    	bnd jmpq 2020 <.plt>
    207f:	90                   	nop
    2080:	f3 0f 1e fa          	endbr64 
    2084:	68 05 00 00 00       	pushq  $0x5
    2089:	f2 e9 91 ff ff ff    	bnd jmpq 2020 <.plt>
    208f:	90                   	nop
    2090:	f3 0f 1e fa          	endbr64 
    2094:	68 06 00 00 00       	pushq  $0x6
    2099:	f2 e9 81 ff ff ff    	bnd jmpq 2020 <.plt>
    209f:	90                   	nop
    20a0:	f3 0f 1e fa          	endbr64 
    20a4:	68 07 00 00 00       	pushq  $0x7
    20a9:	f2 e9 71 ff ff ff    	bnd jmpq 2020 <.plt>
    20af:	90                   	nop
    20b0:	f3 0f 1e fa          	endbr64 
    20b4:	68 08 00 00 00       	pushq  $0x8
    20b9:	f2 e9 61 ff ff ff    	bnd jmpq 2020 <.plt>
    20bf:	90                   	nop
    20c0:	f3 0f 1e fa          	endbr64 
    20c4:	68 09 00 00 00       	pushq  $0x9
    20c9:	f2 e9 51 ff ff ff    	bnd jmpq 2020 <.plt>
    20cf:	90                   	nop
    20d0:	f3 0f 1e fa          	endbr64 
    20d4:	68 0a 00 00 00       	pushq  $0xa
    20d9:	f2 e9 41 ff ff ff    	bnd jmpq 2020 <.plt>
    20df:	90                   	nop
    20e0:	f3 0f 1e fa          	endbr64 
    20e4:	68 0b 00 00 00       	pushq  $0xb
    20e9:	f2 e9 31 ff ff ff    	bnd jmpq 2020 <.plt>
    20ef:	90                   	nop
    20f0:	f3 0f 1e fa          	endbr64 
    20f4:	68 0c 00 00 00       	pushq  $0xc
    20f9:	f2 e9 21 ff ff ff    	bnd jmpq 2020 <.plt>
    20ff:	90                   	nop
    2100:	f3 0f 1e fa          	endbr64 
    2104:	68 0d 00 00 00       	pushq  $0xd
    2109:	f2 e9 11 ff ff ff    	bnd jmpq 2020 <.plt>
    210f:	90                   	nop
    2110:	f3 0f 1e fa          	endbr64 
    2114:	68 0e 00 00 00       	pushq  $0xe
    2119:	f2 e9 01 ff ff ff    	bnd jmpq 2020 <.plt>
    211f:	90                   	nop
    2120:	f3 0f 1e fa          	endbr64 
    2124:	68 0f 00 00 00       	pushq  $0xf
    2129:	f2 e9 f1 fe ff ff    	bnd jmpq 2020 <.plt>
    212f:	90                   	nop
    2130:	f3 0f 1e fa          	endbr64 
    2134:	68 10 00 00 00       	pushq  $0x10
    2139:	f2 e9 e1 fe ff ff    	bnd jmpq 2020 <.plt>
    213f:	90                   	nop
    2140:	f3 0f 1e fa          	endbr64 
    2144:	68 11 00 00 00       	pushq  $0x11
    2149:	f2 e9 d1 fe ff ff    	bnd jmpq 2020 <.plt>
    214f:	90                   	nop
    2150:	f3 0f 1e fa          	endbr64 
    2154:	68 12 00 00 00       	pushq  $0x12
    2159:	f2 e9 c1 fe ff ff    	bnd jmpq 2020 <.plt>
    215f:	90                   	nop
    2160:	f3 0f 1e fa          	endbr64 
    2164:	68 13 00 00 00       	pushq  $0x13
    2169:	f2 e9 b1 fe ff ff    	bnd jmpq 2020 <.plt>
    216f:	90                   	nop
    2170:	f3 0f 1e fa          	endbr64 
    2174:	68 14 00 00 00       	pushq  $0x14
    2179:	f2 e9 a1 fe ff ff    	bnd jmpq 2020 <.plt>
    217f:	90                   	nop
    2180:	f3 0f 1e fa          	endbr64 
    2184:	68 15 00 00 00       	pushq  $0x15
    2189:	f2 e9 91 fe ff ff    	bnd jmpq 2020 <.plt>
    218f:	90                   	nop
    2190:	f3 0f 1e fa          	endbr64 
    2194:	68 16 00 00 00       	pushq  $0x16
    2199:	f2 e9 81 fe ff ff    	bnd jmpq 2020 <.plt>
    219f:	90                   	nop
    21a0:	f3 0f 1e fa          	endbr64 
    21a4:	68 17 00 00 00       	pushq  $0x17
    21a9:	f2 e9 71 fe ff ff    	bnd jmpq 2020 <.plt>
    21af:	90                   	nop
    21b0:	f3 0f 1e fa          	endbr64 
    21b4:	68 18 00 00 00       	pushq  $0x18
    21b9:	f2 e9 61 fe ff ff    	bnd jmpq 2020 <.plt>
    21bf:	90                   	nop
    21c0:	f3 0f 1e fa          	endbr64 
    21c4:	68 19 00 00 00       	pushq  $0x19
    21c9:	f2 e9 51 fe ff ff    	bnd jmpq 2020 <.plt>
    21cf:	90                   	nop
    21d0:	f3 0f 1e fa          	endbr64 
    21d4:	68 1a 00 00 00       	pushq  $0x1a
    21d9:	f2 e9 41 fe ff ff    	bnd jmpq 2020 <.plt>
    21df:	90                   	nop
    21e0:	f3 0f 1e fa          	endbr64 
    21e4:	68 1b 00 00 00       	pushq  $0x1b
    21e9:	f2 e9 31 fe ff ff    	bnd jmpq 2020 <.plt>
    21ef:	90                   	nop
    21f0:	f3 0f 1e fa          	endbr64 
    21f4:	68 1c 00 00 00       	pushq  $0x1c
    21f9:	f2 e9 21 fe ff ff    	bnd jmpq 2020 <.plt>
    21ff:	90                   	nop
    2200:	f3 0f 1e fa          	endbr64 
    2204:	68 1d 00 00 00       	pushq  $0x1d
    2209:	f2 e9 11 fe ff ff    	bnd jmpq 2020 <.plt>
    220f:	90                   	nop
    2210:	f3 0f 1e fa          	endbr64 
    2214:	68 1e 00 00 00       	pushq  $0x1e
    2219:	f2 e9 01 fe ff ff    	bnd jmpq 2020 <.plt>
    221f:	90                   	nop
    2220:	f3 0f 1e fa          	endbr64 
    2224:	68 1f 00 00 00       	pushq  $0x1f
    2229:	f2 e9 f1 fd ff ff    	bnd jmpq 2020 <.plt>
    222f:	90                   	nop
    2230:	f3 0f 1e fa          	endbr64 
    2234:	68 20 00 00 00       	pushq  $0x20
    2239:	f2 e9 e1 fd ff ff    	bnd jmpq 2020 <.plt>
    223f:	90                   	nop
    2240:	f3 0f 1e fa          	endbr64 
    2244:	68 21 00 00 00       	pushq  $0x21
    2249:	f2 e9 d1 fd ff ff    	bnd jmpq 2020 <.plt>
    224f:	90                   	nop
    2250:	f3 0f 1e fa          	endbr64 
    2254:	68 22 00 00 00       	pushq  $0x22
    2259:	f2 e9 c1 fd ff ff    	bnd jmpq 2020 <.plt>
    225f:	90                   	nop
    2260:	f3 0f 1e fa          	endbr64 
    2264:	68 23 00 00 00       	pushq  $0x23
    2269:	f2 e9 b1 fd ff ff    	bnd jmpq 2020 <.plt>
    226f:	90                   	nop
    2270:	f3 0f 1e fa          	endbr64 
    2274:	68 24 00 00 00       	pushq  $0x24
    2279:	f2 e9 a1 fd ff ff    	bnd jmpq 2020 <.plt>
    227f:	90                   	nop
    2280:	f3 0f 1e fa          	endbr64 
    2284:	68 25 00 00 00       	pushq  $0x25
    2289:	f2 e9 91 fd ff ff    	bnd jmpq 2020 <.plt>
    228f:	90                   	nop
    2290:	f3 0f 1e fa          	endbr64 
    2294:	68 26 00 00 00       	pushq  $0x26
    2299:	f2 e9 81 fd ff ff    	bnd jmpq 2020 <.plt>
    229f:	90                   	nop
    22a0:	f3 0f 1e fa          	endbr64 
    22a4:	68 27 00 00 00       	pushq  $0x27
    22a9:	f2 e9 71 fd ff ff    	bnd jmpq 2020 <.plt>
    22af:	90                   	nop
    22b0:	f3 0f 1e fa          	endbr64 
    22b4:	68 28 00 00 00       	pushq  $0x28
    22b9:	f2 e9 61 fd ff ff    	bnd jmpq 2020 <.plt>
    22bf:	90                   	nop
    22c0:	f3 0f 1e fa          	endbr64 
    22c4:	68 29 00 00 00       	pushq  $0x29
    22c9:	f2 e9 51 fd ff ff    	bnd jmpq 2020 <.plt>
    22cf:	90                   	nop
    22d0:	f3 0f 1e fa          	endbr64 
    22d4:	68 2a 00 00 00       	pushq  $0x2a
    22d9:	f2 e9 41 fd ff ff    	bnd jmpq 2020 <.plt>
    22df:	90                   	nop
    22e0:	f3 0f 1e fa          	endbr64 
    22e4:	68 2b 00 00 00       	pushq  $0x2b
    22e9:	f2 e9 31 fd ff ff    	bnd jmpq 2020 <.plt>
    22ef:	90                   	nop
    22f0:	f3 0f 1e fa          	endbr64 
    22f4:	68 2c 00 00 00       	pushq  $0x2c
    22f9:	f2 e9 21 fd ff ff    	bnd jmpq 2020 <.plt>
    22ff:	90                   	nop
    2300:	f3 0f 1e fa          	endbr64 
    2304:	68 2d 00 00 00       	pushq  $0x2d
    2309:	f2 e9 11 fd ff ff    	bnd jmpq 2020 <.plt>
    230f:	90                   	nop
    2310:	f3 0f 1e fa          	endbr64 
    2314:	68 2e 00 00 00       	pushq  $0x2e
    2319:	f2 e9 01 fd ff ff    	bnd jmpq 2020 <.plt>
    231f:	90                   	nop
    2320:	f3 0f 1e fa          	endbr64 
    2324:	68 2f 00 00 00       	pushq  $0x2f
    2329:	f2 e9 f1 fc ff ff    	bnd jmpq 2020 <.plt>
    232f:	90                   	nop
    2330:	f3 0f 1e fa          	endbr64 
    2334:	68 30 00 00 00       	pushq  $0x30
    2339:	f2 e9 e1 fc ff ff    	bnd jmpq 2020 <.plt>
    233f:	90                   	nop
    2340:	f3 0f 1e fa          	endbr64 
    2344:	68 31 00 00 00       	pushq  $0x31
    2349:	f2 e9 d1 fc ff ff    	bnd jmpq 2020 <.plt>
    234f:	90                   	nop
    2350:	f3 0f 1e fa          	endbr64 
    2354:	68 32 00 00 00       	pushq  $0x32
    2359:	f2 e9 c1 fc ff ff    	bnd jmpq 2020 <.plt>
    235f:	90                   	nop
    2360:	f3 0f 1e fa          	endbr64 
    2364:	68 33 00 00 00       	pushq  $0x33
    2369:	f2 e9 b1 fc ff ff    	bnd jmpq 2020 <.plt>
    236f:	90                   	nop
    2370:	f3 0f 1e fa          	endbr64 
    2374:	68 34 00 00 00       	pushq  $0x34
    2379:	f2 e9 a1 fc ff ff    	bnd jmpq 2020 <.plt>
    237f:	90                   	nop
    2380:	f3 0f 1e fa          	endbr64 
    2384:	68 35 00 00 00       	pushq  $0x35
    2389:	f2 e9 91 fc ff ff    	bnd jmpq 2020 <.plt>
    238f:	90                   	nop
    2390:	f3 0f 1e fa          	endbr64 
    2394:	68 36 00 00 00       	pushq  $0x36
    2399:	f2 e9 81 fc ff ff    	bnd jmpq 2020 <.plt>
    239f:	90                   	nop
    23a0:	f3 0f 1e fa          	endbr64 
    23a4:	68 37 00 00 00       	pushq  $0x37
    23a9:	f2 e9 71 fc ff ff    	bnd jmpq 2020 <.plt>
    23af:	90                   	nop
    23b0:	f3 0f 1e fa          	endbr64 
    23b4:	68 38 00 00 00       	pushq  $0x38
    23b9:	f2 e9 61 fc ff ff    	bnd jmpq 2020 <.plt>
    23bf:	90                   	nop
    23c0:	f3 0f 1e fa          	endbr64 
    23c4:	68 39 00 00 00       	pushq  $0x39
    23c9:	f2 e9 51 fc ff ff    	bnd jmpq 2020 <.plt>
    23cf:	90                   	nop
    23d0:	f3 0f 1e fa          	endbr64 
    23d4:	68 3a 00 00 00       	pushq  $0x3a
    23d9:	f2 e9 41 fc ff ff    	bnd jmpq 2020 <.plt>
    23df:	90                   	nop
    23e0:	f3 0f 1e fa          	endbr64 
    23e4:	68 3b 00 00 00       	pushq  $0x3b
    23e9:	f2 e9 31 fc ff ff    	bnd jmpq 2020 <.plt>
    23ef:	90                   	nop
    23f0:	f3 0f 1e fa          	endbr64 
    23f4:	68 3c 00 00 00       	pushq  $0x3c
    23f9:	f2 e9 21 fc ff ff    	bnd jmpq 2020 <.plt>
    23ff:	90                   	nop
    2400:	f3 0f 1e fa          	endbr64 
    2404:	68 3d 00 00 00       	pushq  $0x3d
    2409:	f2 e9 11 fc ff ff    	bnd jmpq 2020 <.plt>
    240f:	90                   	nop
    2410:	f3 0f 1e fa          	endbr64 
    2414:	68 3e 00 00 00       	pushq  $0x3e
    2419:	f2 e9 01 fc ff ff    	bnd jmpq 2020 <.plt>
    241f:	90                   	nop
    2420:	f3 0f 1e fa          	endbr64 
    2424:	68 3f 00 00 00       	pushq  $0x3f
    2429:	f2 e9 f1 fb ff ff    	bnd jmpq 2020 <.plt>
    242f:	90                   	nop
    2430:	f3 0f 1e fa          	endbr64 
    2434:	68 40 00 00 00       	pushq  $0x40
    2439:	f2 e9 e1 fb ff ff    	bnd jmpq 2020 <.plt>
    243f:	90                   	nop
    2440:	f3 0f 1e fa          	endbr64 
    2444:	68 41 00 00 00       	pushq  $0x41
    2449:	f2 e9 d1 fb ff ff    	bnd jmpq 2020 <.plt>
    244f:	90                   	nop
    2450:	f3 0f 1e fa          	endbr64 
    2454:	68 42 00 00 00       	pushq  $0x42
    2459:	f2 e9 c1 fb ff ff    	bnd jmpq 2020 <.plt>
    245f:	90                   	nop
    2460:	f3 0f 1e fa          	endbr64 
    2464:	68 43 00 00 00       	pushq  $0x43
    2469:	f2 e9 b1 fb ff ff    	bnd jmpq 2020 <.plt>
    246f:	90                   	nop
    2470:	f3 0f 1e fa          	endbr64 
    2474:	68 44 00 00 00       	pushq  $0x44
    2479:	f2 e9 a1 fb ff ff    	bnd jmpq 2020 <.plt>
    247f:	90                   	nop

Disassembly of section .plt.got:

0000000000002480 <__cxa_finalize@plt>:
    2480:	f3 0f 1e fa          	endbr64 
    2484:	f2 ff 25 3d cb 00 00 	bnd jmpq *0xcb3d(%rip)        # efc8 <__cxa_finalize@GLIBC_2.2.5>
    248b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .plt.sec:

0000000000002490 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_@plt>:
    2490:	f3 0f 1e fa          	endbr64 
    2494:	f2 ff 25 05 c9 00 00 	bnd jmpq *0xc905(%rip)        # eda0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_@GLIBCXX_3.4.21>
    249b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000024a0 <__errno_location@plt>:
    24a0:	f3 0f 1e fa          	endbr64 
    24a4:	f2 ff 25 fd c8 00 00 	bnd jmpq *0xc8fd(%rip)        # eda8 <__errno_location@GLIBC_2.2.5>
    24ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000024b0 <printf@plt>:
    24b0:	f3 0f 1e fa          	endbr64 
    24b4:	f2 ff 25 f5 c8 00 00 	bnd jmpq *0xc8f5(%rip)        # edb0 <printf@GLIBC_2.2.5>
    24bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000024c0 <_ZNSt6chrono3_V212system_clock3nowEv@plt>:
    24c0:	f3 0f 1e fa          	endbr64 
    24c4:	f2 ff 25 ed c8 00 00 	bnd jmpq *0xc8ed(%rip)        # edb8 <_ZNSt6chrono3_V212system_clock3nowEv@GLIBCXX_3.4.19>
    24cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000024d0 <syscall@plt>:
    24d0:	f3 0f 1e fa          	endbr64 
    24d4:	f2 ff 25 e5 c8 00 00 	bnd jmpq *0xc8e5(%rip)        # edc0 <syscall@GLIBC_2.2.5>
    24db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000024e0 <_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_@plt>:
    24e0:	f3 0f 1e fa          	endbr64 
    24e4:	f2 ff 25 dd c8 00 00 	bnd jmpq *0xc8dd(%rip)        # edc8 <_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_@GLIBCXX_3.4>
    24eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000024f0 <_ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv@plt>:
    24f0:	f3 0f 1e fa          	endbr64 
    24f4:	f2 ff 25 d5 c8 00 00 	bnd jmpq *0xc8d5(%rip)        # edd0 <_ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv@GLIBCXX_3.4>
    24fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002500 <_ZNSolsEm@plt>:
    2500:	f3 0f 1e fa          	endbr64 
    2504:	f2 ff 25 cd c8 00 00 	bnd jmpq *0xc8cd(%rip)        # edd8 <_ZNSolsEm@GLIBCXX_3.4>
    250b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002510 <_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev@plt>:
    2510:	f3 0f 1e fa          	endbr64 
    2514:	f2 ff 25 c5 c8 00 00 	bnd jmpq *0xc8c5(%rip)        # ede0 <_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev@GLIBCXX_3.4>
    251b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002520 <warn@plt>:
    2520:	f3 0f 1e fa          	endbr64 
    2524:	f2 ff 25 bd c8 00 00 	bnd jmpq *0xc8bd(%rip)        # ede8 <warn@GLIBC_2.2.5>
    252b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002530 <strerror@plt>:
    2530:	f3 0f 1e fa          	endbr64 
    2534:	f2 ff 25 b5 c8 00 00 	bnd jmpq *0xc8b5(%rip)        # edf0 <strerror@GLIBC_2.2.5>
    253b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002540 <_ZSt17__throw_bad_allocv@plt>:
    2540:	f3 0f 1e fa          	endbr64 
    2544:	f2 ff 25 ad c8 00 00 	bnd jmpq *0xc8ad(%rip)        # edf8 <_ZSt17__throw_bad_allocv@GLIBCXX_3.4>
    254b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002550 <strchr@plt>:
    2550:	f3 0f 1e fa          	endbr64 
    2554:	f2 ff 25 a5 c8 00 00 	bnd jmpq *0xc8a5(%rip)        # ee00 <strchr@GLIBC_2.2.5>
    255b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002560 <__cxa_begin_catch@plt>:
    2560:	f3 0f 1e fa          	endbr64 
    2564:	f2 ff 25 9d c8 00 00 	bnd jmpq *0xc89d(%rip)        # ee08 <__cxa_begin_catch@CXXABI_1.3>
    256b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002570 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_@plt>:
    2570:	f3 0f 1e fa          	endbr64 
    2574:	f2 ff 25 95 c8 00 00 	bnd jmpq *0xc895(%rip)        # ee10 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_@GLIBCXX_3.4.21>
    257b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002580 <_ZNKSt9basic_iosIcSt11char_traitsIcEEntEv@plt>:
    2580:	f3 0f 1e fa          	endbr64 
    2584:	f2 ff 25 8d c8 00 00 	bnd jmpq *0xc88d(%rip)        # ee18 <_ZNKSt9basic_iosIcSt11char_traitsIcEEntEv@GLIBCXX_3.4>
    258b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002590 <_ZSt20__throw_length_errorPKc@plt>:
    2590:	f3 0f 1e fa          	endbr64 
    2594:	f2 ff 25 85 c8 00 00 	bnd jmpq *0xc885(%rip)        # ee20 <_ZSt20__throw_length_errorPKc@GLIBCXX_3.4>
    259b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000025a0 <memset@plt>:
    25a0:	f3 0f 1e fa          	endbr64 
    25a4:	f2 ff 25 7d c8 00 00 	bnd jmpq *0xc87d(%rip)        # ee28 <memset@GLIBC_2.2.5>
    25ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000025b0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_@plt>:
    25b0:	f3 0f 1e fa          	endbr64 
    25b4:	f2 ff 25 75 c8 00 00 	bnd jmpq *0xc875(%rip)        # ee30 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_@GLIBCXX_3.4.21>
    25bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000025c0 <_ZNSirsERi@plt>:
    25c0:	f3 0f 1e fa          	endbr64 
    25c4:	f2 ff 25 6d c8 00 00 	bnd jmpq *0xc86d(%rip)        # ee38 <_ZNSirsERi@GLIBCXX_3.4>
    25cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000025d0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>:
    25d0:	f3 0f 1e fa          	endbr64 
    25d4:	f2 ff 25 65 c8 00 00 	bnd jmpq *0xc865(%rip)        # ee40 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@GLIBCXX_3.4.21>
    25db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000025e0 <sysconf@plt>:
    25e0:	f3 0f 1e fa          	endbr64 
    25e4:	f2 ff 25 5d c8 00 00 	bnd jmpq *0xc85d(%rip)        # ee48 <sysconf@GLIBC_2.2.5>
    25eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000025f0 <_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base@plt>:
    25f0:	f3 0f 1e fa          	endbr64 
    25f4:	f2 ff 25 55 c8 00 00 	bnd jmpq *0xc855(%rip)        # ee50 <_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base@GLIBCXX_3.4>
    25fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002600 <memcpy@plt>:
    2600:	f3 0f 1e fa          	endbr64 
    2604:	f2 ff 25 4d c8 00 00 	bnd jmpq *0xc84d(%rip)        # ee58 <memcpy@GLIBC_2.14>
    260b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002610 <perror@plt>:
    2610:	f3 0f 1e fa          	endbr64 
    2614:	f2 ff 25 45 c8 00 00 	bnd jmpq *0xc845(%rip)        # ee60 <perror@GLIBC_2.2.5>
    261b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002620 <__cxa_atexit@plt>:
    2620:	f3 0f 1e fa          	endbr64 
    2624:	f2 ff 25 3d c8 00 00 	bnd jmpq *0xc83d(%rip)        # ee68 <__cxa_atexit@GLIBC_2.2.5>
    262b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002630 <_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE@plt>:
    2630:	f3 0f 1e fa          	endbr64 
    2634:	f2 ff 25 35 c8 00 00 	bnd jmpq *0xc835(%rip)        # ee70 <_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE@GLIBCXX_3.4.21>
    263b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002640 <setlocale@plt>:
    2640:	f3 0f 1e fa          	endbr64 
    2644:	f2 ff 25 2d c8 00 00 	bnd jmpq *0xc82d(%rip)        # ee78 <setlocale@GLIBC_2.2.5>
    264b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002650 <err@plt>:
    2650:	f3 0f 1e fa          	endbr64 
    2654:	f2 ff 25 25 c8 00 00 	bnd jmpq *0xc825(%rip)        # ee80 <err@GLIBC_2.2.5>
    265b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002660 <_ZdlPv@plt>:
    2660:	f3 0f 1e fa          	endbr64 
    2664:	f2 ff 25 1d c8 00 00 	bnd jmpq *0xc81d(%rip)        # ee88 <_ZdlPv@GLIBCXX_3.4>
    266b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002670 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>:
    2670:	f3 0f 1e fa          	endbr64 
    2674:	f2 ff 25 15 c8 00 00 	bnd jmpq *0xc815(%rip)        # ee90 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@GLIBCXX_3.4>
    267b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002680 <_Znwm@plt>:
    2680:	f3 0f 1e fa          	endbr64 
    2684:	f2 ff 25 0d c8 00 00 	bnd jmpq *0xc80d(%rip)        # ee98 <_Znwm@GLIBCXX_3.4>
    268b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002690 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm@plt>:
    2690:	f3 0f 1e fa          	endbr64 
    2694:	f2 ff 25 05 c8 00 00 	bnd jmpq *0xc805(%rip)        # eea0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm@GLIBCXX_3.4.21>
    269b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000026a0 <_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base@plt>:
    26a0:	f3 0f 1e fa          	endbr64 
    26a4:	f2 ff 25 fd c7 00 00 	bnd jmpq *0xc7fd(%rip)        # eea8 <_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base@GLIBCXX_3.4>
    26ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000026b0 <_ZNSolsEPFRSoS_E@plt>:
    26b0:	f3 0f 1e fa          	endbr64 
    26b4:	f2 ff 25 f5 c7 00 00 	bnd jmpq *0xc7f5(%rip)        # eeb0 <_ZNSolsEPFRSoS_E@GLIBCXX_3.4>
    26bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000026c0 <warnx@plt>:
    26c0:	f3 0f 1e fa          	endbr64 
    26c4:	f2 ff 25 ed c7 00 00 	bnd jmpq *0xc7ed(%rip)        # eeb8 <warnx@GLIBC_2.2.5>
    26cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000026d0 <_ZNSaIcED1Ev@plt>:
    26d0:	f3 0f 1e fa          	endbr64 
    26d4:	f2 ff 25 e5 c7 00 00 	bnd jmpq *0xc7e5(%rip)        # eec0 <_ZNSaIcED1Ev@GLIBCXX_3.4>
    26db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000026e0 <__stack_chk_fail@plt>:
    26e0:	f3 0f 1e fa          	endbr64 
    26e4:	f2 ff 25 dd c7 00 00 	bnd jmpq *0xc7dd(%rip)        # eec8 <__stack_chk_fail@GLIBC_2.4>
    26eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000026f0 <free@plt>:
    26f0:	f3 0f 1e fa          	endbr64 
    26f4:	f2 ff 25 d5 c7 00 00 	bnd jmpq *0xc7d5(%rip)        # eed0 <free@GLIBC_2.2.5>
    26fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002700 <exit@plt>:
    2700:	f3 0f 1e fa          	endbr64 
    2704:	f2 ff 25 cd c7 00 00 	bnd jmpq *0xc7cd(%rip)        # eed8 <exit@GLIBC_2.2.5>
    270b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002710 <fputc@plt>:
    2710:	f3 0f 1e fa          	endbr64 
    2714:	f2 ff 25 c5 c7 00 00 	bnd jmpq *0xc7c5(%rip)        # eee0 <fputc@GLIBC_2.2.5>
    271b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002720 <_ZNKSt9basic_iosIcSt11char_traitsIcEEcvbEv@plt>:
    2720:	f3 0f 1e fa          	endbr64 
    2724:	f2 ff 25 bd c7 00 00 	bnd jmpq *0xc7bd(%rip)        # eee8 <_ZNKSt9basic_iosIcSt11char_traitsIcEEcvbEv@GLIBCXX_3.4.21>
    272b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002730 <prctl@plt>:
    2730:	f3 0f 1e fa          	endbr64 
    2734:	f2 ff 25 b5 c7 00 00 	bnd jmpq *0xc7b5(%rip)        # eef0 <prctl@GLIBC_2.2.5>
    273b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002740 <malloc@plt>:
    2740:	f3 0f 1e fa          	endbr64 
    2744:	f2 ff 25 ad c7 00 00 	bnd jmpq *0xc7ad(%rip)        # eef8 <malloc@GLIBC_2.2.5>
    274b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002750 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc@plt>:
    2750:	f3 0f 1e fa          	endbr64 
    2754:	f2 ff 25 a5 c7 00 00 	bnd jmpq *0xc7a5(%rip)        # ef00 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc@GLIBCXX_3.4.21>
    275b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002760 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@plt>:
    2760:	f3 0f 1e fa          	endbr64 
    2764:	f2 ff 25 9d c7 00 00 	bnd jmpq *0xc79d(%rip)        # ef08 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@GLIBCXX_3.4.21>
    276b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002770 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev@plt>:
    2770:	f3 0f 1e fa          	endbr64 
    2774:	f2 ff 25 95 c7 00 00 	bnd jmpq *0xc795(%rip)        # ef10 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev@GLIBCXX_3.4.21>
    277b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002780 <pfm_get_os_event_encoding@plt>:
    2780:	f3 0f 1e fa          	endbr64 
    2784:	f2 ff 25 8d c7 00 00 	bnd jmpq *0xc78d(%rip)        # ef18 <pfm_get_os_event_encoding>
    278b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002790 <putchar@plt>:
    2790:	f3 0f 1e fa          	endbr64 
    2794:	f2 ff 25 85 c7 00 00 	bnd jmpq *0xc785(%rip)        # ef20 <putchar@GLIBC_2.2.5>
    279b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000027a0 <_ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv@plt>:
    27a0:	f3 0f 1e fa          	endbr64 
    27a4:	f2 ff 25 7d c7 00 00 	bnd jmpq *0xc77d(%rip)        # ef28 <_ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv@GLIBCXX_3.4>
    27ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000027b0 <fprintf@plt>:
    27b0:	f3 0f 1e fa          	endbr64 
    27b4:	f2 ff 25 75 c7 00 00 	bnd jmpq *0xc775(%rip)        # ef30 <fprintf@GLIBC_2.2.5>
    27bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000027c0 <read@plt>:
    27c0:	f3 0f 1e fa          	endbr64 
    27c4:	f2 ff 25 6d c7 00 00 	bnd jmpq *0xc76d(%rip)        # ef38 <read@GLIBC_2.2.5>
    27cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000027d0 <__cxa_rethrow@plt>:
    27d0:	f3 0f 1e fa          	endbr64 
    27d4:	f2 ff 25 65 c7 00 00 	bnd jmpq *0xc765(%rip)        # ef40 <__cxa_rethrow@CXXABI_1.3>
    27db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000027e0 <_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev@plt>:
    27e0:	f3 0f 1e fa          	endbr64 
    27e4:	f2 ff 25 5d c7 00 00 	bnd jmpq *0xc75d(%rip)        # ef48 <_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev@GLIBCXX_3.4>
    27eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000027f0 <_ZNSt8ios_base4InitC1Ev@plt>:
    27f0:	f3 0f 1e fa          	endbr64 
    27f4:	f2 ff 25 55 c7 00 00 	bnd jmpq *0xc755(%rip)        # ef50 <_ZNSt8ios_base4InitC1Ev@GLIBCXX_3.4>
    27fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002800 <pfm_strerror@plt>:
    2800:	f3 0f 1e fa          	endbr64 
    2804:	f2 ff 25 4d c7 00 00 	bnd jmpq *0xc74d(%rip)        # ef58 <pfm_strerror>
    280b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002810 <_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1ERKNSt7__cxx1112basic_stringIcS1_SaIcEEESt13_Ios_Openmode@plt>:
    2810:	f3 0f 1e fa          	endbr64 
    2814:	f2 ff 25 45 c7 00 00 	bnd jmpq *0xc745(%rip)        # ef60 <_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1ERKNSt7__cxx1112basic_stringIcS1_SaIcEEESt13_Ios_Openmode@GLIBCXX_3.4.21>
    281b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002820 <memmove@plt>:
    2820:	f3 0f 1e fa          	endbr64 
    2824:	f2 ff 25 3d c7 00 00 	bnd jmpq *0xc73d(%rip)        # ef68 <memmove@GLIBC_2.2.5>
    282b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002830 <__cxa_end_catch@plt>:
    2830:	f3 0f 1e fa          	endbr64 
    2834:	f2 ff 25 35 c7 00 00 	bnd jmpq *0xc735(%rip)        # ef70 <__cxa_end_catch@CXXABI_1.3>
    283b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002840 <realloc@plt>:
    2840:	f3 0f 1e fa          	endbr64 
    2844:	f2 ff 25 2d c7 00 00 	bnd jmpq *0xc72d(%rip)        # ef78 <realloc@GLIBC_2.2.5>
    284b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002850 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEPKcm@plt>:
    2850:	f3 0f 1e fa          	endbr64 
    2854:	f2 ff 25 25 c7 00 00 	bnd jmpq *0xc725(%rip)        # ef80 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEPKcm@GLIBCXX_3.4.21>
    285b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002860 <_Unwind_Resume@plt>:
    2860:	f3 0f 1e fa          	endbr64 
    2864:	f2 ff 25 1d c7 00 00 	bnd jmpq *0xc71d(%rip)        # ef88 <_Unwind_Resume@GCC_3.0>
    286b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002870 <_ZNSaIcEC1Ev@plt>:
    2870:	f3 0f 1e fa          	endbr64 
    2874:	f2 ff 25 15 c7 00 00 	bnd jmpq *0xc715(%rip)        # ef90 <_ZNSaIcEC1Ev@GLIBCXX_3.4>
    287b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002880 <_ZNSolsEl@plt>:
    2880:	f3 0f 1e fa          	endbr64 
    2884:	f2 ff 25 0d c7 00 00 	bnd jmpq *0xc70d(%rip)        # ef98 <_ZNSolsEl@GLIBCXX_3.4>
    288b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002890 <strdup@plt>:
    2890:	f3 0f 1e fa          	endbr64 
    2894:	f2 ff 25 05 c7 00 00 	bnd jmpq *0xc705(%rip)        # efa0 <strdup@GLIBC_2.2.5>
    289b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000028a0 <pfm_initialize@plt>:
    28a0:	f3 0f 1e fa          	endbr64 
    28a4:	f2 ff 25 fd c6 00 00 	bnd jmpq *0xc6fd(%rip)        # efa8 <pfm_initialize>
    28ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000028b0 <errx@plt>:
    28b0:	f3 0f 1e fa          	endbr64 
    28b4:	f2 ff 25 f5 c6 00 00 	bnd jmpq *0xc6f5(%rip)        # efb0 <errx@GLIBC_2.2.5>
    28bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000028c0 <_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1ERKNSt7__cxx1112basic_stringIcS1_SaIcEEESt13_Ios_Openmode@plt>:
    28c0:	f3 0f 1e fa          	endbr64 
    28c4:	f2 ff 25 ed c6 00 00 	bnd jmpq *0xc6ed(%rip)        # efb8 <_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1ERKNSt7__cxx1112basic_stringIcS1_SaIcEEESt13_Ios_Openmode@GLIBCXX_3.4.21>
    28cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000028d0 <close@plt>:
    28d0:	f3 0f 1e fa          	endbr64 
    28d4:	f2 ff 25 e5 c6 00 00 	bnd jmpq *0xc6e5(%rip)        # efc0 <close@GLIBC_2.2.5>
    28db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .text:

00000000000028e0 <_start>:
_start():
    28e0:	f3 0f 1e fa          	endbr64 
    28e4:	31 ed                	xor    %ebp,%ebp
    28e6:	49 89 d1             	mov    %rdx,%r9
    28e9:	5e                   	pop    %rsi
    28ea:	48 89 e2             	mov    %rsp,%rdx
    28ed:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    28f1:	50                   	push   %rax
    28f2:	54                   	push   %rsp
    28f3:	4c 8d 05 46 73 00 00 	lea    0x7346(%rip),%r8        # 9c40 <__libc_csu_fini>
    28fa:	48 8d 0d cf 72 00 00 	lea    0x72cf(%rip),%rcx        # 9bd0 <__libc_csu_init>
    2901:	48 8d 3d 2e 06 00 00 	lea    0x62e(%rip),%rdi        # 2f36 <main>
    2908:	ff 15 d2 c6 00 00    	callq  *0xc6d2(%rip)        # efe0 <__libc_start_main@GLIBC_2.2.5>
    290e:	f4                   	hlt    
    290f:	90                   	nop

0000000000002910 <deregister_tm_clones>:
deregister_tm_clones():
    2910:	48 8d 3d c1 c7 00 00 	lea    0xc7c1(%rip),%rdi        # f0d8 <__TMC_END__>
    2917:	48 8d 05 ba c7 00 00 	lea    0xc7ba(%rip),%rax        # f0d8 <__TMC_END__>
    291e:	48 39 f8             	cmp    %rdi,%rax
    2921:	74 15                	je     2938 <deregister_tm_clones+0x28>
    2923:	48 8b 05 ae c6 00 00 	mov    0xc6ae(%rip),%rax        # efd8 <_ITM_deregisterTMCloneTable>
    292a:	48 85 c0             	test   %rax,%rax
    292d:	74 09                	je     2938 <deregister_tm_clones+0x28>
    292f:	ff e0                	jmpq   *%rax
    2931:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    2938:	c3                   	retq   
    2939:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000002940 <register_tm_clones>:
register_tm_clones():
    2940:	48 8d 3d 91 c7 00 00 	lea    0xc791(%rip),%rdi        # f0d8 <__TMC_END__>
    2947:	48 8d 35 8a c7 00 00 	lea    0xc78a(%rip),%rsi        # f0d8 <__TMC_END__>
    294e:	48 29 fe             	sub    %rdi,%rsi
    2951:	48 89 f0             	mov    %rsi,%rax
    2954:	48 c1 ee 3f          	shr    $0x3f,%rsi
    2958:	48 c1 f8 03          	sar    $0x3,%rax
    295c:	48 01 c6             	add    %rax,%rsi
    295f:	48 d1 fe             	sar    %rsi
    2962:	74 14                	je     2978 <register_tm_clones+0x38>
    2964:	48 8b 05 85 c6 00 00 	mov    0xc685(%rip),%rax        # eff0 <_ITM_registerTMCloneTable>
    296b:	48 85 c0             	test   %rax,%rax
    296e:	74 08                	je     2978 <register_tm_clones+0x38>
    2970:	ff e0                	jmpq   *%rax
    2972:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    2978:	c3                   	retq   
    2979:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000002980 <__do_global_dtors_aux>:
__do_global_dtors_aux():
    2980:	f3 0f 1e fa          	endbr64 
    2984:	80 3d 65 c8 00 00 00 	cmpb   $0x0,0xc865(%rip)        # f1f0 <completed.8061>
    298b:	75 2b                	jne    29b8 <__do_global_dtors_aux+0x38>
    298d:	55                   	push   %rbp
    298e:	48 83 3d 32 c6 00 00 	cmpq   $0x0,0xc632(%rip)        # efc8 <__cxa_finalize@GLIBC_2.2.5>
    2995:	00 
    2996:	48 89 e5             	mov    %rsp,%rbp
    2999:	74 0c                	je     29a7 <__do_global_dtors_aux+0x27>
    299b:	48 8b 3d 66 c6 00 00 	mov    0xc666(%rip),%rdi        # f008 <__dso_handle>
    29a2:	e8 d9 fa ff ff       	callq  2480 <__cxa_finalize@plt>
    29a7:	e8 64 ff ff ff       	callq  2910 <deregister_tm_clones>
    29ac:	c6 05 3d c8 00 00 01 	movb   $0x1,0xc83d(%rip)        # f1f0 <completed.8061>
    29b3:	5d                   	pop    %rbp
    29b4:	c3                   	retq   
    29b5:	0f 1f 00             	nopl   (%rax)
    29b8:	c3                   	retq   
    29b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000029c0 <frame_dummy>:
frame_dummy():
    29c0:	f3 0f 1e fa          	endbr64 
    29c4:	e9 77 ff ff ff       	jmpq   2940 <register_tm_clones>

00000000000029c9 <_Z10isDistinctPim>:
_Z10isDistinctPim():
/home/donayam/Documents/dove_workspace/vipbench/distinctness/main.cpp:58

#define VIP_CMOV(P,A,B)    CMOV((P), (A), (B))
#define MAX std::numeric_limits<int>::max() 

bool isDistinct(int *array,size_t arr_size)
{
    29c9:	f3 0f 1e fa          	endbr64 
    29cd:	55                   	push   %rbp
    29ce:	48 89 e5             	mov    %rsp,%rbp
    29d1:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    29d5:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
/home/donayam/Documents/dove_workspace/vipbench/distinctness/main.cpp:59
  bool dup = false;
    29d9:	c6 45 e9 00          	movb   $0x0,-0x17(%rbp)
/home/donayam/Documents/dove_workspace/vipbench/distinctness/main.cpp:61

  for (int i=arr_size-1; i >= 0; i--)
    29dd:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    29e1:	83 e8 01             	sub    $0x1,%eax
    29e4:	89 45 ec             	mov    %eax,-0x14(%rbp)
/home/donayam/Documents/dove_workspace/vipbench/distinctness/main.cpp:61 (discriminator 1)
    29e7:	83 7d ec 00          	cmpl   $0x0,-0x14(%rbp)
    29eb:	0f 88 bb 00 00 00    	js     2aac <_Z10isDistinctPim+0xe3>
/home/donayam/Documents/dove_workspace/vipbench/distinctness/main.cpp:63
  {
    for (int j=0; j < arr_size; j++){
    29f1:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%rbp)
/home/donayam/Documents/dove_workspace/vipbench/distinctness/main.cpp:63 (discriminator 2)
    29f8:	8b 45 f0             	mov    -0x10(%rbp),%eax
    29fb:	48 98                	cltq   
    29fd:	48 39 45 d0          	cmp    %rax,-0x30(%rbp)
    2a01:	0f 86 9c 00 00 00    	jbe    2aa3 <_Z10isDistinctPim+0xda>
/home/donayam/Documents/dove_workspace/vipbench/distinctness/main.cpp:64
	  bool cond = ((array[i] == array[j]) && (i!=j)); 	
    2a07:	8b 45 ec             	mov    -0x14(%rbp),%eax
    2a0a:	48 98                	cltq   
    2a0c:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
    2a13:	00 
    2a14:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    2a18:	48 01 d0             	add    %rdx,%rax
    2a1b:	8b 10                	mov    (%rax),%edx
    2a1d:	8b 45 f0             	mov    -0x10(%rbp),%eax
    2a20:	48 98                	cltq   
    2a22:	48 8d 0c 85 00 00 00 	lea    0x0(,%rax,4),%rcx
    2a29:	00 
    2a2a:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    2a2e:	48 01 c8             	add    %rcx,%rax
    2a31:	8b 00                	mov    (%rax),%eax
    2a33:	39 c2                	cmp    %eax,%edx
    2a35:	75 0f                	jne    2a46 <_Z10isDistinctPim+0x7d>
/home/donayam/Documents/dove_workspace/vipbench/distinctness/main.cpp:64 (discriminator 1)
    2a37:	8b 45 ec             	mov    -0x14(%rbp),%eax
    2a3a:	3b 45 f0             	cmp    -0x10(%rbp),%eax
    2a3d:	74 07                	je     2a46 <_Z10isDistinctPim+0x7d>
/home/donayam/Documents/dove_workspace/vipbench/distinctness/main.cpp:64 (discriminator 3)
    2a3f:	b8 01 00 00 00       	mov    $0x1,%eax
    2a44:	eb 05                	jmp    2a4b <_Z10isDistinctPim+0x82>
/home/donayam/Documents/dove_workspace/vipbench/distinctness/main.cpp:64 (discriminator 4)
    2a46:	b8 00 00 00 00       	mov    $0x0,%eax
/home/donayam/Documents/dove_workspace/vipbench/distinctness/main.cpp:64 (discriminator 6)
    2a4b:	88 45 ea             	mov    %al,-0x16(%rbp)
/home/donayam/Documents/dove_workspace/vipbench/distinctness/main.cpp:65 (discriminator 6)
      dup = VIP_CMOV(cond, array[j], dup);
    2a4e:	0f b6 45 e9          	movzbl -0x17(%rbp),%eax
    2a52:	8b 55 f0             	mov    -0x10(%rbp),%edx
    2a55:	48 63 d2             	movslq %edx,%rdx
    2a58:	48 8d 0c 95 00 00 00 	lea    0x0(,%rdx,4),%rcx
    2a5f:	00 
    2a60:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    2a64:	48 01 ca             	add    %rcx,%rdx
    2a67:	8b 12                	mov    (%rdx),%edx
    2a69:	0f b6 4d ea          	movzbl -0x16(%rbp),%ecx
    2a6d:	88 4d eb             	mov    %cl,-0x15(%rbp)
    2a70:	80 65 eb 01          	andb   $0x1,-0x15(%rbp)
    2a74:	89 55 f4             	mov    %edx,-0xc(%rbp)
    2a77:	89 45 f8             	mov    %eax,-0x8(%rbp)
_Z4CMOVbii():
/home/donayam/Documents/dove_workspace/vipbench/distinctness/main.cpp:50 (discriminator 6)
                );
    2a7a:	0f b6 45 eb          	movzbl -0x15(%rbp),%eax
    2a7e:	8b 55 f4             	mov    -0xc(%rbp),%edx
    2a81:	8b 4d f8             	mov    -0x8(%rbp),%ecx
    2a84:	84 c0                	test   %al,%al
    2a86:	0f 44 c1             	cmove  %ecx,%eax
    2a89:	0f 45 c2             	cmovne %edx,%eax
    2a8c:	89 45 fc             	mov    %eax,-0x4(%rbp)
/home/donayam/Documents/dove_workspace/vipbench/distinctness/main.cpp:51 (discriminator 6)
                return result;
    2a8f:	8b 45 fc             	mov    -0x4(%rbp),%eax
_Z10isDistinctPim():
/home/donayam/Documents/dove_workspace/vipbench/distinctness/main.cpp:65 (discriminator 6)
      dup = VIP_CMOV(cond, array[j], dup);
    2a92:	85 c0                	test   %eax,%eax
    2a94:	0f 95 c0             	setne  %al
    2a97:	88 45 e9             	mov    %al,-0x17(%rbp)
/home/donayam/Documents/dove_workspace/vipbench/distinctness/main.cpp:63 (discriminator 6)
    for (int j=0; j < arr_size; j++){
    2a9a:	83 45 f0 01          	addl   $0x1,-0x10(%rbp)
    2a9e:	e9 55 ff ff ff       	jmpq   29f8 <_Z10isDistinctPim+0x2f>
/home/donayam/Documents/dove_workspace/vipbench/distinctness/main.cpp:61 (discriminator 2)
  for (int i=arr_size-1; i >= 0; i--)
    2aa3:	83 6d ec 01          	subl   $0x1,-0x14(%rbp)
    2aa7:	e9 3b ff ff ff       	jmpq   29e7 <_Z10isDistinctPim+0x1e>
/home/donayam/Documents/dove_workspace/vipbench/distinctness/main.cpp:68
	}
  }
  return !dup;
    2aac:	0f b6 45 e9          	movzbl -0x17(%rbp),%eax
    2ab0:	83 f0 01             	xor    $0x1,%eax
/home/donayam/Documents/dove_workspace/vipbench/distinctness/main.cpp:69
}
    2ab3:	5d                   	pop    %rbp
    2ab4:	c3                   	retq   

0000000000002ab5 <_Z9parseArgsB5cxx11iPPc>:
_Z9parseArgsB5cxx11iPPc():
/home/donayam/Documents/dove_workspace/vipbench/distinctness/main.cpp:71

map<string, string> parseArgs(int argc, char **argv) {
    2ab5:	f3 0f 1e fa          	endbr64 
    2ab9:	55                   	push   %rbp
    2aba:	48 89 e5             	mov    %rsp,%rbp
    2abd:	53                   	push   %rbx
    2abe:	48 81 ec 98 00 00 00 	sub    $0x98,%rsp
    2ac5:	48 89 bd 78 ff ff ff 	mov    %rdi,-0x88(%rbp)
    2acc:	89 b5 74 ff ff ff    	mov    %esi,-0x8c(%rbp)
    2ad2:	48 89 95 68 ff ff ff 	mov    %rdx,-0x98(%rbp)
    2ad9:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    2ae0:	00 00 
    2ae2:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    2ae6:	31 c0                	xor    %eax,%eax
/home/donayam/Documents/dove_workspace/vipbench/distinctness/main.cpp:72
    map<string, string> args;
    2ae8:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
    2aef:	48 89 c7             	mov    %rax,%rdi
    2af2:	e8 05 0e 00 00       	callq  38fc <_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEEC1Ev>
/home/donayam/Documents/dove_workspace/vipbench/distinctness/main.cpp:74

    for (int i = 1; i < argc; ++i) {
    2af7:	c7 45 8c 01 00 00 00 	movl   $0x1,-0x74(%rbp)
/home/donayam/Documents/dove_workspace/vipbench/distinctness/main.cpp:74 (discriminator 1)
    2afe:	8b 45 8c             	mov    -0x74(%rbp),%eax
    2b01:	3b 85 74 ff ff ff    	cmp    -0x8c(%rbp),%eax
    2b07:	0f 8d 42 01 00 00    	jge    2c4f <_Z9parseArgsB5cxx11iPPc+0x19a>
/home/donayam/Documents/dove_workspace/vipbench/distinctness/main.cpp:75
        string arg = argv[i];
    2b0d:	48 8d 45 98          	lea    -0x68(%rbp),%rax
    2b11:	48 89 c7             	mov    %rax,%rdi
    2b14:	e8 57 fd ff ff       	callq  2870 <_ZNSaIcEC1Ev@plt>
    2b19:	8b 45 8c             	mov    -0x74(%rbp),%eax
    2b1c:	48 98                	cltq   
    2b1e:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
    2b25:	00 
    2b26:	48 8b 85 68 ff ff ff 	mov    -0x98(%rbp),%rax
    2b2d:	48 01 d0             	add    %rdx,%rax
    2b30:	48 8b 08             	mov    (%rax),%rcx
    2b33:	48 8d 55 98          	lea    -0x68(%rbp),%rdx
    2b37:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
    2b3b:	48 89 ce             	mov    %rcx,%rsi
    2b3e:	48 89 c7             	mov    %rax,%rdi
    2b41:	e8 1a fc ff ff       	callq  2760 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@plt>
    2b46:	48 8d 45 98          	lea    -0x68(%rbp),%rax
    2b4a:	48 89 c7             	mov    %rax,%rdi
    2b4d:	e8 7e fb ff ff       	callq  26d0 <_ZNSaIcED1Ev@plt>
/home/donayam/Documents/dove_workspace/vipbench/distinctness/main.cpp:78

        // Check if argument is a named argument starting with "--"
        if (arg.rfind("--", 0) == 0 && i + 1 < argc) {
    2b52:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
    2b56:	ba 00 00 00 00       	mov    $0x0,%edx
    2b5b:	48 8d 35 06 76 00 00 	lea    0x7606(%rip),%rsi        # a168 <_ZL12total_events+0x15c>
    2b62:	48 89 c7             	mov    %rax,%rdi
    2b65:	e8 e6 fc ff ff       	callq  2850 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEPKcm@plt>
    2b6a:	48 85 c0             	test   %rax,%rax
    2b6d:	75 15                	jne    2b84 <_Z9parseArgsB5cxx11iPPc+0xcf>
/home/donayam/Documents/dove_workspace/vipbench/distinctness/main.cpp:78 (discriminator 2)
    2b6f:	8b 45 8c             	mov    -0x74(%rbp),%eax
    2b72:	83 c0 01             	add    $0x1,%eax
    2b75:	39 85 74 ff ff ff    	cmp    %eax,-0x8c(%rbp)
    2b7b:	7e 07                	jle    2b84 <_Z9parseArgsB5cxx11iPPc+0xcf>
/home/donayam/Documents/dove_workspace/vipbench/distinctness/main.cpp:78 (discriminator 4)
    2b7d:	b8 01 00 00 00       	mov    $0x1,%eax
    2b82:	eb 05                	jmp    2b89 <_Z9parseArgsB5cxx11iPPc+0xd4>
/home/donayam/Documents/dove_workspace/vipbench/distinctness/main.cpp:78 (discriminator 5)
    2b84:	b8 00 00 00 00       	mov    $0x0,%eax
/home/donayam/Documents/dove_workspace/vipbench/distinctness/main.cpp:78 (discriminator 7)
    2b89:	84 c0                	test   %al,%al
    2b8b:	74 69                	je     2bf6 <_Z9parseArgsB5cxx11iPPc+0x141>
/home/donayam/Documents/dove_workspace/vipbench/distinctness/main.cpp:79
            string key = arg.substr(2); // Remove "--" prefix
    2b8d:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
    2b91:	48 8d 75 a0          	lea    -0x60(%rbp),%rsi
    2b95:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
    2b9c:	ba 02 00 00 00       	mov    $0x2,%edx
    2ba1:	48 89 c7             	mov    %rax,%rdi
    2ba4:	e8 e7 fa ff ff       	callq  2690 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm@plt>
/home/donayam/Documents/dove_workspace/vipbench/distinctness/main.cpp:80
            args[key] = argv[++i];      // Assign the next element as the value
    2ba9:	83 45 8c 01          	addl   $0x1,-0x74(%rbp)
    2bad:	8b 45 8c             	mov    -0x74(%rbp),%eax
    2bb0:	48 98                	cltq   
    2bb2:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
    2bb9:	00 
    2bba:	48 8b 85 68 ff ff ff 	mov    -0x98(%rbp),%rax
    2bc1:	48 01 d0             	add    %rdx,%rax
    2bc4:	48 8b 18             	mov    (%rax),%rbx
    2bc7:	48 8d 55 c0          	lea    -0x40(%rbp),%rdx
    2bcb:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
    2bd2:	48 89 d6             	mov    %rdx,%rsi
    2bd5:	48 89 c7             	mov    %rax,%rdi
    2bd8:	e8 89 0f 00 00       	callq  3b66 <_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEEixERS9_>
    2bdd:	48 89 de             	mov    %rbx,%rsi
    2be0:	48 89 c7             	mov    %rax,%rdi
    2be3:	e8 68 fb ff ff       	callq  2750 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc@plt>
/home/donayam/Documents/dove_workspace/vipbench/distinctness/main.cpp:79
            string key = arg.substr(2); // Remove "--" prefix
    2be8:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
    2bec:	48 89 c7             	mov    %rax,%rdi
    2bef:	e8 dc f9 ff ff       	callq  25d0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    2bf4:	eb 44                	jmp    2c3a <_Z9parseArgsB5cxx11iPPc+0x185>
/home/donayam/Documents/dove_workspace/vipbench/distinctness/main.cpp:82
        } else {
            cerr << "Error: Missing value for argument " << arg << endl;
    2bf6:	48 8d 35 73 75 00 00 	lea    0x7573(%rip),%rsi        # a170 <_ZL12total_events+0x164>
    2bfd:	48 8d 3d dc c4 00 00 	lea    0xc4dc(%rip),%rdi        # f0e0 <_ZSt4cerr@@GLIBCXX_3.4>
    2c04:	e8 67 fa ff ff       	callq  2670 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
    2c09:	48 89 c2             	mov    %rax,%rdx
    2c0c:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
    2c10:	48 89 c6             	mov    %rax,%rsi
    2c13:	48 89 d7             	mov    %rdx,%rdi
    2c16:	e8 15 fa ff ff       	callq  2630 <_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE@plt>
/home/donayam/Documents/dove_workspace/vipbench/distinctness/main.cpp:82 (discriminator 1)
    2c1b:	48 89 c2             	mov    %rax,%rdx
    2c1e:	48 8b 05 ab c3 00 00 	mov    0xc3ab(%rip),%rax        # efd0 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GLIBCXX_3.4>
    2c25:	48 89 c6             	mov    %rax,%rsi
    2c28:	48 89 d7             	mov    %rdx,%rdi
    2c2b:	e8 80 fa ff ff       	callq  26b0 <_ZNSolsEPFRSoS_E@plt>
/home/donayam/Documents/dove_workspace/vipbench/distinctness/main.cpp:83
            exit(1);
    2c30:	bf 01 00 00 00       	mov    $0x1,%edi
    2c35:	e8 c6 fa ff ff       	callq  2700 <exit@plt>
/home/donayam/Documents/dove_workspace/vipbench/distinctness/main.cpp:75 (discriminator 2)
        string arg = argv[i];
    2c3a:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
    2c3e:	48 89 c7             	mov    %rax,%rdi
    2c41:	e8 8a f9 ff ff       	callq  25d0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
/home/donayam/Documents/dove_workspace/vipbench/distinctness/main.cpp:74 (discriminator 2)
    for (int i = 1; i < argc; ++i) {
    2c46:	83 45 8c 01          	addl   $0x1,-0x74(%rbp)
    2c4a:	e9 af fe ff ff       	jmpq   2afe <_Z9parseArgsB5cxx11iPPc+0x49>
/home/donayam/Documents/dove_workspace/vipbench/distinctness/main.cpp:87
        }
    }

    if (args.find("output") == args.end()) {
    2c4f:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
    2c56:	48 89 c7             	mov    %rax,%rdi
    2c59:	e8 54 10 00 00       	callq  3cb2 <_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE3endEv>
    2c5e:	48 89 45 98          	mov    %rax,-0x68(%rbp)
    2c62:	48 8d 45 8b          	lea    -0x75(%rbp),%rax
    2c66:	48 89 c7             	mov    %rax,%rdi
    2c69:	e8 02 fc ff ff       	callq  2870 <_ZNSaIcEC1Ev@plt>
    2c6e:	48 8d 55 8b          	lea    -0x75(%rbp),%rdx
    2c72:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
    2c76:	48 8d 35 16 75 00 00 	lea    0x7516(%rip),%rsi        # a193 <_ZL12total_events+0x187>
    2c7d:	48 89 c7             	mov    %rax,%rdi
    2c80:	e8 db fa ff ff       	callq  2760 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@plt>
/home/donayam/Documents/dove_workspace/vipbench/distinctness/main.cpp:87 (discriminator 2)
    2c85:	48 8d 55 c0          	lea    -0x40(%rbp),%rdx
    2c89:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
    2c90:	48 89 d6             	mov    %rdx,%rsi
    2c93:	48 89 c7             	mov    %rax,%rdi
    2c96:	e8 ed 0f 00 00       	callq  3c88 <_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE4findERS9_>
    2c9b:	48 89 45 90          	mov    %rax,-0x70(%rbp)
    2c9f:	48 8d 55 98          	lea    -0x68(%rbp),%rdx
    2ca3:	48 8d 45 90          	lea    -0x70(%rbp),%rax
    2ca7:	48 89 d6             	mov    %rdx,%rsi
    2caa:	48 89 c7             	mov    %rax,%rdi
    2cad:	e8 1e 10 00 00       	callq  3cd0 <_ZSteqRKSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EESB_>
    2cb2:	89 c3                	mov    %eax,%ebx
    2cb4:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
    2cb8:	48 89 c7             	mov    %rax,%rdi
    2cbb:	e8 10 f9 ff ff       	callq  25d0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    2cc0:	48 8d 45 8b          	lea    -0x75(%rbp),%rax
    2cc4:	48 89 c7             	mov    %rax,%rdi
    2cc7:	e8 04 fa ff ff       	callq  26d0 <_ZNSaIcED1Ev@plt>
    2ccc:	84 db                	test   %bl,%bl
    2cce:	0f 84 a7 00 00 00    	je     2d7b <_Z9parseArgsB5cxx11iPPc+0x2c6>
/home/donayam/Documents/dove_workspace/vipbench/distinctness/main.cpp:88
        cerr << "Error: Missing required argument --output\n";
    2cd4:	48 8d 35 c5 74 00 00 	lea    0x74c5(%rip),%rsi        # a1a0 <_ZL12total_events+0x194>
    2cdb:	48 8d 3d fe c3 00 00 	lea    0xc3fe(%rip),%rdi        # f0e0 <_ZSt4cerr@@GLIBCXX_3.4>
    2ce2:	e8 89 f9 ff ff       	callq  2670 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
/home/donayam/Documents/dove_workspace/vipbench/distinctness/main.cpp:89
        exit(1);
    2ce7:	bf 01 00 00 00       	mov    $0x1,%edi
    2cec:	e8 0f fa ff ff       	callq  2700 <exit@plt>
    2cf1:	f3 0f 1e fa          	endbr64 
    2cf5:	48 89 c3             	mov    %rax,%rbx
    2cf8:	48 8d 45 98          	lea    -0x68(%rbp),%rax
    2cfc:	48 89 c7             	mov    %rax,%rdi
    2cff:	e8 cc f9 ff ff       	callq  26d0 <_ZNSaIcED1Ev@plt>
    2d04:	eb 5b                	jmp    2d61 <_Z9parseArgsB5cxx11iPPc+0x2ac>
    2d06:	f3 0f 1e fa          	endbr64 
    2d0a:	48 89 c3             	mov    %rax,%rbx
/home/donayam/Documents/dove_workspace/vipbench/distinctness/main.cpp:79
            string key = arg.substr(2); // Remove "--" prefix
    2d0d:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
    2d11:	48 89 c7             	mov    %rax,%rdi
    2d14:	e8 b7 f8 ff ff       	callq  25d0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    2d19:	eb 07                	jmp    2d22 <_Z9parseArgsB5cxx11iPPc+0x26d>
    2d1b:	f3 0f 1e fa          	endbr64 
    2d1f:	48 89 c3             	mov    %rax,%rbx
/home/donayam/Documents/dove_workspace/vipbench/distinctness/main.cpp:75
        string arg = argv[i];
    2d22:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
    2d26:	48 89 c7             	mov    %rax,%rdi
    2d29:	e8 a2 f8 ff ff       	callq  25d0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    2d2e:	eb 31                	jmp    2d61 <_Z9parseArgsB5cxx11iPPc+0x2ac>
    2d30:	f3 0f 1e fa          	endbr64 
    2d34:	48 89 c3             	mov    %rax,%rbx
/home/donayam/Documents/dove_workspace/vipbench/distinctness/main.cpp:87
    if (args.find("output") == args.end()) {
    2d37:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
    2d3b:	48 89 c7             	mov    %rax,%rdi
    2d3e:	e8 8d f8 ff ff       	callq  25d0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    2d43:	eb 07                	jmp    2d4c <_Z9parseArgsB5cxx11iPPc+0x297>
    2d45:	f3 0f 1e fa          	endbr64 
    2d49:	48 89 c3             	mov    %rax,%rbx
/home/donayam/Documents/dove_workspace/vipbench/distinctness/main.cpp:87 (discriminator 1)
    2d4c:	48 8d 45 8b          	lea    -0x75(%rbp),%rax
    2d50:	48 89 c7             	mov    %rax,%rdi
    2d53:	e8 78 f9 ff ff       	callq  26d0 <_ZNSaIcED1Ev@plt>
    2d58:	eb 07                	jmp    2d61 <_Z9parseArgsB5cxx11iPPc+0x2ac>
    2d5a:	f3 0f 1e fa          	endbr64 
    2d5e:	48 89 c3             	mov    %rax,%rbx
    2d61:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
    2d68:	48 89 c7             	mov    %rax,%rdi
    2d6b:	e8 ac 0b 00 00       	callq  391c <_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEED1Ev>
    2d70:	48 89 d8             	mov    %rbx,%rax
    2d73:	48 89 c7             	mov    %rax,%rdi
    2d76:	e8 e5 fa ff ff       	callq  2860 <_Unwind_Resume@plt>
/home/donayam/Documents/dove_workspace/vipbench/distinctness/main.cpp:92
    }

    return args;
    2d7b:	90                   	nop
/home/donayam/Documents/dove_workspace/vipbench/distinctness/main.cpp:93
}
    2d7c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    2d80:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    2d87:	00 00 
    2d89:	74 05                	je     2d90 <_Z9parseArgsB5cxx11iPPc+0x2db>
    2d8b:	e8 50 f9 ff ff       	callq  26e0 <__stack_chk_fail@plt>
    2d90:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
    2d97:	48 81 c4 98 00 00 00 	add    $0x98,%rsp
    2d9e:	5b                   	pop    %rbx
    2d9f:	5d                   	pop    %rbp
    2da0:	c3                   	retq   

0000000000002da1 <_Z11runDistinctPiiPPKcRSt14basic_ofstreamIcSt11char_traitsIcEE>:
_Z11runDistinctPiiPPKcRSt14basic_ofstreamIcSt11char_traitsIcEE():
/home/donayam/Documents/dove_workspace/vipbench/distinctness/main.cpp:95

void runDistinct(int* data, int data_len,  const char *events[], ofstream &file) {
    2da1:	f3 0f 1e fa          	endbr64 
    2da5:	55                   	push   %rbp
    2da6:	48 89 e5             	mov    %rsp,%rbp
    2da9:	48 83 ec 60          	sub    $0x60,%rsp
    2dad:	48 89 7d b8          	mov    %rdi,-0x48(%rbp)
    2db1:	89 75 b4             	mov    %esi,-0x4c(%rbp)
    2db4:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
    2db8:	48 89 4d a0          	mov    %rcx,-0x60(%rbp)
    2dbc:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    2dc3:	00 00 
    2dc5:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    2dc9:	31 c0                	xor    %eax,%eax
/home/donayam/Documents/dove_workspace/vipbench/distinctness/main.cpp:97

    ctx = init_profile(0, events);
    2dcb:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
    2dcf:	48 89 c6             	mov    %rax,%rsi
    2dd2:	bf 00 00 00 00       	mov    $0x0,%edi
    2dd7:	e8 18 69 00 00       	callq  96f4 <init_profile>
    2ddc:	48 89 05 15 c4 00 00 	mov    %rax,0xc415(%rip)        # f1f8 <ctx>
/home/donayam/Documents/dove_workspace/vipbench/distinctness/main.cpp:98
    start_profile(ctx);
    2de3:	48 8b 05 0e c4 00 00 	mov    0xc40e(%rip),%rax        # f1f8 <ctx>
    2dea:	48 89 c7             	mov    %rax,%rdi
    2ded:	e8 52 6b 00 00       	callq  9944 <start_profile>
/home/donayam/Documents/dove_workspace/vipbench/distinctness/main.cpp:100

    auto start = chrono::high_resolution_clock::now();
    2df2:	e8 c9 f6 ff ff       	callq  24c0 <_ZNSt6chrono3_V212system_clock3nowEv@plt>
    2df7:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
/home/donayam/Documents/dove_workspace/vipbench/distinctness/main.cpp:103
    // Encrypt
    
    bool ret = isDistinct(data,data_len);
    2dfb:	8b 45 b4             	mov    -0x4c(%rbp),%eax
    2dfe:	48 63 d0             	movslq %eax,%rdx
    2e01:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    2e05:	48 89 d6             	mov    %rdx,%rsi
    2e08:	48 89 c7             	mov    %rax,%rdi
    2e0b:	e8 b9 fb ff ff       	callq  29c9 <_Z10isDistinctPim>
    2e10:	88 45 c3             	mov    %al,-0x3d(%rbp)
/home/donayam/Documents/dove_workspace/vipbench/distinctness/main.cpp:104
    auto end = chrono::high_resolution_clock::now();
    2e13:	e8 a8 f6 ff ff       	callq  24c0 <_ZNSt6chrono3_V212system_clock3nowEv@plt>
    2e18:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
/home/donayam/Documents/dove_workspace/vipbench/distinctness/main.cpp:106

    pref_result_t *res = stop_profile2(ctx);
    2e1c:	48 8b 05 d5 c3 00 00 	mov    0xc3d5(%rip),%rax        # f1f8 <ctx>
    2e23:	48 89 c7             	mov    %rax,%rdi
    2e26:	e8 5a 6b 00 00       	callq  9985 <stop_profile2>
    2e2b:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
/home/donayam/Documents/dove_workspace/vipbench/distinctness/main.cpp:109

    // Log profiling results
    for (int i = 0; i < ctx->num_fds; i++) {
    2e2f:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%rbp)
/home/donayam/Documents/dove_workspace/vipbench/distinctness/main.cpp:109 (discriminator 1)
    2e36:	48 8b 05 bb c3 00 00 	mov    0xc3bb(%rip),%rax        # f1f8 <ctx>
    2e3d:	8b 40 08             	mov    0x8(%rax),%eax
    2e40:	39 45 c4             	cmp    %eax,-0x3c(%rbp)
    2e43:	7d 6f                	jge    2eb4 <_Z11runDistinctPiiPPKcRSt14basic_ofstreamIcSt11char_traitsIcEE+0x113>
/home/donayam/Documents/dove_workspace/vipbench/distinctness/main.cpp:110
        file << res[i].name << ":" << res[i].result << "\n";
    2e45:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
    2e49:	8b 55 c4             	mov    -0x3c(%rbp),%edx
    2e4c:	48 63 d2             	movslq %edx,%rdx
    2e4f:	48 89 d1             	mov    %rdx,%rcx
    2e52:	48 c1 e1 04          	shl    $0x4,%rcx
    2e56:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    2e5a:	48 01 ca             	add    %rcx,%rdx
    2e5d:	48 8b 12             	mov    (%rdx),%rdx
    2e60:	48 89 d6             	mov    %rdx,%rsi
    2e63:	48 89 c7             	mov    %rax,%rdi
    2e66:	e8 05 f8 ff ff       	callq  2670 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
    2e6b:	48 8d 35 59 73 00 00 	lea    0x7359(%rip),%rsi        # a1cb <_ZL12total_events+0x1bf>
    2e72:	48 89 c7             	mov    %rax,%rdi
    2e75:	e8 f6 f7 ff ff       	callq  2670 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
    2e7a:	48 89 c2             	mov    %rax,%rdx
    2e7d:	8b 45 c4             	mov    -0x3c(%rbp),%eax
    2e80:	48 98                	cltq   
    2e82:	48 c1 e0 04          	shl    $0x4,%rax
    2e86:	48 89 c1             	mov    %rax,%rcx
    2e89:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    2e8d:	48 01 c8             	add    %rcx,%rax
    2e90:	48 8b 40 08          	mov    0x8(%rax),%rax
    2e94:	48 89 c6             	mov    %rax,%rsi
    2e97:	48 89 d7             	mov    %rdx,%rdi
    2e9a:	e8 61 f6 ff ff       	callq  2500 <_ZNSolsEm@plt>
    2e9f:	48 8d 35 27 73 00 00 	lea    0x7327(%rip),%rsi        # a1cd <_ZL12total_events+0x1c1>
    2ea6:	48 89 c7             	mov    %rax,%rdi
    2ea9:	e8 c2 f7 ff ff       	callq  2670 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
/home/donayam/Documents/dove_workspace/vipbench/distinctness/main.cpp:109
    for (int i = 0; i < ctx->num_fds; i++) {
    2eae:	83 45 c4 01          	addl   $0x1,-0x3c(%rbp)
    2eb2:	eb 82                	jmp    2e36 <_Z11runDistinctPiiPPKcRSt14basic_ofstreamIcSt11char_traitsIcEE+0x95>
/home/donayam/Documents/dove_workspace/vipbench/distinctness/main.cpp:113
    }

    auto duration = chrono::duration_cast<chrono::nanoseconds>(end - start).count();
    2eb4:	48 8d 55 c8          	lea    -0x38(%rbp),%rdx
    2eb8:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
    2ebc:	48 89 d6             	mov    %rdx,%rsi
    2ebf:	48 89 c7             	mov    %rax,%rdi
    2ec2:	e8 92 0a 00 00       	callq  3959 <_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE>
    2ec7:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
    2ecb:	48 8d 45 d8          	lea    -0x28(%rbp),%rax
    2ecf:	48 89 c7             	mov    %rax,%rdi
    2ed2:	e8 64 0a 00 00       	callq  393b <_ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1000000000EEEElS3_EENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE>
    2ed7:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    2edb:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
    2edf:	48 89 c7             	mov    %rax,%rdi
    2ee2:	e8 f5 08 00 00       	callq  37dc <_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv>
    2ee7:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
/home/donayam/Documents/dove_workspace/vipbench/distinctness/main.cpp:114
    file << "encryption_time:" << duration << "\n";
    2eeb:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
    2eef:	48 8d 35 d9 72 00 00 	lea    0x72d9(%rip),%rsi        # a1cf <_ZL12total_events+0x1c3>
    2ef6:	48 89 c7             	mov    %rax,%rdi
    2ef9:	e8 72 f7 ff ff       	callq  2670 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
    2efe:	48 89 c2             	mov    %rax,%rdx
    2f01:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    2f05:	48 89 c6             	mov    %rax,%rsi
    2f08:	48 89 d7             	mov    %rdx,%rdi
    2f0b:	e8 70 f9 ff ff       	callq  2880 <_ZNSolsEl@plt>
    2f10:	48 8d 35 b6 72 00 00 	lea    0x72b6(%rip),%rsi        # a1cd <_ZL12total_events+0x1c1>
    2f17:	48 89 c7             	mov    %rax,%rdi
    2f1a:	e8 51 f7 ff ff       	callq  2670 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
/home/donayam/Documents/dove_workspace/vipbench/distinctness/main.cpp:116

}
    2f1f:	90                   	nop
    2f20:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    2f24:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    2f2b:	00 00 
    2f2d:	74 05                	je     2f34 <_Z11runDistinctPiiPPKcRSt14basic_ofstreamIcSt11char_traitsIcEE+0x193>
    2f2f:	e8 ac f7 ff ff       	callq  26e0 <__stack_chk_fail@plt>
    2f34:	c9                   	leaveq 
    2f35:	c3                   	retq   

0000000000002f36 <main>:
main():
/home/donayam/Documents/dove_workspace/vipbench/distinctness/main.cpp:119


int main(int argc, char **argv) {
    2f36:	f3 0f 1e fa          	endbr64 
    2f3a:	55                   	push   %rbp
    2f3b:	48 89 e5             	mov    %rsp,%rbp
    2f3e:	41 56                	push   %r14
    2f40:	41 55                	push   %r13
    2f42:	41 54                	push   %r12
    2f44:	53                   	push   %rbx
    2f45:	48 81 ec 10 05 00 00 	sub    $0x510,%rsp
    2f4c:	89 bd dc fa ff ff    	mov    %edi,-0x524(%rbp)
    2f52:	48 89 b5 d0 fa ff ff 	mov    %rsi,-0x530(%rbp)
    2f59:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    2f60:	00 00 
    2f62:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
    2f66:	31 c0                	xor    %eax,%eax
/home/donayam/Documents/dove_workspace/vipbench/distinctness/main.cpp:120
    int ret = pfm_initialize();
    2f68:	e8 33 f9 ff ff       	callq  28a0 <pfm_initialize@plt>
    2f6d:	89 85 f4 fa ff ff    	mov    %eax,-0x50c(%rbp)
/home/donayam/Documents/dove_workspace/vipbench/distinctness/main.cpp:121
    if (ret != PFM_SUCCESS) {
    2f73:	83 bd f4 fa ff ff 00 	cmpl   $0x0,-0x50c(%rbp)
    2f7a:	74 4d                	je     2fc9 <main+0x93>
/home/donayam/Documents/dove_workspace/vipbench/distinctness/main.cpp:122
        cerr << "Cannot initialize library: " << pfm_strerror(ret) << endl;
    2f7c:	48 8d 35 5d 72 00 00 	lea    0x725d(%rip),%rsi        # a1e0 <_ZL12total_events+0x1d4>
    2f83:	48 8d 3d 56 c1 00 00 	lea    0xc156(%rip),%rdi        # f0e0 <_ZSt4cerr@@GLIBCXX_3.4>
    2f8a:	e8 e1 f6 ff ff       	callq  2670 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
    2f8f:	48 89 c3             	mov    %rax,%rbx
    2f92:	8b 85 f4 fa ff ff    	mov    -0x50c(%rbp),%eax
    2f98:	89 c7                	mov    %eax,%edi
    2f9a:	e8 61 f8 ff ff       	callq  2800 <pfm_strerror@plt>
    2f9f:	48 89 c6             	mov    %rax,%rsi
    2fa2:	48 89 df             	mov    %rbx,%rdi
    2fa5:	e8 c6 f6 ff ff       	callq  2670 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
    2faa:	48 89 c2             	mov    %rax,%rdx
    2fad:	48 8b 05 1c c0 00 00 	mov    0xc01c(%rip),%rax        # efd0 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GLIBCXX_3.4>
    2fb4:	48 89 c6             	mov    %rax,%rsi
    2fb7:	48 89 d7             	mov    %rdx,%rdi
    2fba:	e8 f1 f6 ff ff       	callq  26b0 <_ZNSolsEPFRSoS_E@plt>
/home/donayam/Documents/dove_workspace/vipbench/distinctness/main.cpp:123
        return 1;
    2fbf:	bb 01 00 00 00       	mov    $0x1,%ebx
    2fc4:	e9 3a 06 00 00       	jmpq   3603 <main+0x6cd>
/home/donayam/Documents/dove_workspace/vipbench/distinctness/main.cpp:126
    }

    if (argc < 5) {
    2fc9:	83 bd dc fa ff ff 04 	cmpl   $0x4,-0x524(%rbp)
    2fd0:	0f 8f a8 00 00 00    	jg     307e <main+0x148>
/home/donayam/Documents/dove_workspace/vipbench/distinctness/main.cpp:127
        cerr << "Error: Arguments less than 4.\n";
    2fd6:	48 8d 35 23 72 00 00 	lea    0x7223(%rip),%rsi        # a200 <_ZL12total_events+0x1f4>
    2fdd:	48 8d 3d fc c0 00 00 	lea    0xc0fc(%rip),%rdi        # f0e0 <_ZSt4cerr@@GLIBCXX_3.4>
    2fe4:	e8 87 f6 ff ff       	callq  2670 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
/home/donayam/Documents/dove_workspace/vipbench/distinctness/main.cpp:136
                << "  --output <output_file>            Path to the output file where results will be saved.\n"
                << "  --input <encrypted_file>          Path to the input encrypted file (e.g., ./path_to_directory/encrypted_1).\n"
                << "\n"
                << "Description:\n"
                << "  This command runs the application with specified keys and files. The public and private key files are used\n"
                << "  to decrypt or process the input encrypted file, and the result is saved in the output file.\n";
    2fe9:	48 8d 35 30 72 00 00 	lea    0x7230(%rip),%rsi        # a220 <_ZL12total_events+0x214>
    2ff0:	48 8d 3d e9 c0 00 00 	lea    0xc0e9(%rip),%rdi        # f0e0 <_ZSt4cerr@@GLIBCXX_3.4>
    2ff7:	e8 74 f6 ff ff       	callq  2670 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
    2ffc:	48 8d 35 ca 71 00 00 	lea    0x71ca(%rip),%rsi        # a1cd <_ZL12total_events+0x1c1>
    3003:	48 89 c7             	mov    %rax,%rdi
    3006:	e8 65 f6 ff ff       	callq  2670 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
    300b:	48 8d 35 4d 72 00 00 	lea    0x724d(%rip),%rsi        # a25f <_ZL12total_events+0x253>
    3012:	48 89 c7             	mov    %rax,%rdi
    3015:	e8 56 f6 ff ff       	callq  2670 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
    301a:	48 8d 35 4f 72 00 00 	lea    0x724f(%rip),%rsi        # a270 <_ZL12total_events+0x264>
    3021:	48 89 c7             	mov    %rax,%rdi
    3024:	e8 47 f6 ff ff       	callq  2670 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
    3029:	48 8d 35 a0 72 00 00 	lea    0x72a0(%rip),%rsi        # a2d0 <_ZL12total_events+0x2c4>
    3030:	48 89 c7             	mov    %rax,%rdi
    3033:	e8 38 f6 ff ff       	callq  2670 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
    3038:	48 8d 35 8e 71 00 00 	lea    0x718e(%rip),%rsi        # a1cd <_ZL12total_events+0x1c1>
    303f:	48 89 c7             	mov    %rax,%rdi
    3042:	e8 29 f6 ff ff       	callq  2670 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
    3047:	48 8d 35 f1 72 00 00 	lea    0x72f1(%rip),%rsi        # a33f <_ZL12total_events+0x333>
    304e:	48 89 c7             	mov    %rax,%rdi
    3051:	e8 1a f6 ff ff       	callq  2670 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
    3056:	48 8d 35 f3 72 00 00 	lea    0x72f3(%rip),%rsi        # a350 <_ZL12total_events+0x344>
    305d:	48 89 c7             	mov    %rax,%rdi
    3060:	e8 0b f6 ff ff       	callq  2670 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
    3065:	48 8d 35 54 73 00 00 	lea    0x7354(%rip),%rsi        # a3c0 <_ZL12total_events+0x3b4>
    306c:	48 89 c7             	mov    %rax,%rdi
    306f:	e8 fc f5 ff ff       	callq  2670 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
/home/donayam/Documents/dove_workspace/vipbench/distinctness/main.cpp:138

        return 1;
    3074:	bb 01 00 00 00       	mov    $0x1,%ebx
    3079:	e9 85 05 00 00       	jmpq   3603 <main+0x6cd>
/home/donayam/Documents/dove_workspace/vipbench/distinctness/main.cpp:141
    }

    map<string, string> args = parseArgs(argc, argv);
    307e:	48 8d 85 40 fb ff ff 	lea    -0x4c0(%rbp),%rax
    3085:	48 8b 95 d0 fa ff ff 	mov    -0x530(%rbp),%rdx
    308c:	8b 8d dc fa ff ff    	mov    -0x524(%rbp),%ecx
    3092:	89 ce                	mov    %ecx,%esi
    3094:	48 89 c7             	mov    %rax,%rdi
    3097:	e8 19 fa ff ff       	callq  2ab5 <_Z9parseArgsB5cxx11iPPc>
/home/donayam/Documents/dove_workspace/vipbench/distinctness/main.cpp:142
    string input_file_name   = args["input"];       //argv[3];
    309c:	48 8d 85 20 fb ff ff 	lea    -0x4e0(%rbp),%rax
    30a3:	48 89 c7             	mov    %rax,%rdi
    30a6:	e8 c5 f7 ff ff       	callq  2870 <_ZNSaIcEC1Ev@plt>
    30ab:	48 8d 95 20 fb ff ff 	lea    -0x4e0(%rbp),%rdx
    30b2:	48 8d 85 d0 fd ff ff 	lea    -0x230(%rbp),%rax
    30b9:	48 8d 35 5f 73 00 00 	lea    0x735f(%rip),%rsi        # a41f <_ZL12total_events+0x413>
    30c0:	48 89 c7             	mov    %rax,%rdi
    30c3:	e8 98 f6 ff ff       	callq  2760 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@plt>
/home/donayam/Documents/dove_workspace/vipbench/distinctness/main.cpp:142 (discriminator 1)
    30c8:	48 8d 95 d0 fd ff ff 	lea    -0x230(%rbp),%rdx
    30cf:	48 8d 85 40 fb ff ff 	lea    -0x4c0(%rbp),%rax
    30d6:	48 89 d6             	mov    %rdx,%rsi
    30d9:	48 89 c7             	mov    %rax,%rdi
    30dc:	e8 71 0c 00 00       	callq  3d52 <_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEEixEOS5_>
    30e1:	48 89 c2             	mov    %rax,%rdx
    30e4:	48 8d 85 70 fb ff ff 	lea    -0x490(%rbp),%rax
    30eb:	48 89 d6             	mov    %rdx,%rsi
    30ee:	48 89 c7             	mov    %rax,%rdi
    30f1:	e8 7a f4 ff ff       	callq  2570 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_@plt>
    30f6:	48 8d 85 d0 fd ff ff 	lea    -0x230(%rbp),%rax
    30fd:	48 89 c7             	mov    %rax,%rdi
    3100:	e8 cb f4 ff ff       	callq  25d0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    3105:	48 8d 85 20 fb ff ff 	lea    -0x4e0(%rbp),%rax
    310c:	48 89 c7             	mov    %rax,%rdi
    310f:	e8 bc f5 ff ff       	callq  26d0 <_ZNSaIcED1Ev@plt>
/home/donayam/Documents/dove_workspace/vipbench/distinctness/main.cpp:143
    string output_file_name  = args["output"];      //argv[4];
    3114:	48 8d 85 20 fb ff ff 	lea    -0x4e0(%rbp),%rax
    311b:	48 89 c7             	mov    %rax,%rdi
    311e:	e8 4d f7 ff ff       	callq  2870 <_ZNSaIcEC1Ev@plt>
    3123:	48 8d 95 20 fb ff ff 	lea    -0x4e0(%rbp),%rdx
    312a:	48 8d 85 d0 fd ff ff 	lea    -0x230(%rbp),%rax
    3131:	48 8d 35 5b 70 00 00 	lea    0x705b(%rip),%rsi        # a193 <_ZL12total_events+0x187>
    3138:	48 89 c7             	mov    %rax,%rdi
    313b:	e8 20 f6 ff ff       	callq  2760 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@plt>
/home/donayam/Documents/dove_workspace/vipbench/distinctness/main.cpp:143 (discriminator 1)
    3140:	48 8d 95 d0 fd ff ff 	lea    -0x230(%rbp),%rdx
    3147:	48 8d 85 40 fb ff ff 	lea    -0x4c0(%rbp),%rax
    314e:	48 89 d6             	mov    %rdx,%rsi
    3151:	48 89 c7             	mov    %rax,%rdi
    3154:	e8 f9 0b 00 00       	callq  3d52 <_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEEixEOS5_>
    3159:	48 89 c2             	mov    %rax,%rdx
    315c:	48 8d 85 90 fb ff ff 	lea    -0x470(%rbp),%rax
    3163:	48 89 d6             	mov    %rdx,%rsi
    3166:	48 89 c7             	mov    %rax,%rdi
    3169:	e8 02 f4 ff ff       	callq  2570 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_@plt>
    316e:	48 8d 85 d0 fd ff ff 	lea    -0x230(%rbp),%rax
    3175:	48 89 c7             	mov    %rax,%rdi
    3178:	e8 53 f4 ff ff       	callq  25d0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    317d:	48 8d 85 20 fb ff ff 	lea    -0x4e0(%rbp),%rax
    3184:	48 89 c7             	mov    %rax,%rdi
    3187:	e8 44 f5 ff ff       	callq  26d0 <_ZNSaIcED1Ev@plt>
/home/donayam/Documents/dove_workspace/vipbench/distinctness/main.cpp:149




     //Create a dynamic array to hold the values
	vector<int> numbers;    
    318c:	48 8d 85 00 fb ff ff 	lea    -0x500(%rbp),%rax
    3193:	48 89 c7             	mov    %rax,%rdi
    3196:	e8 11 09 00 00       	callq  3aac <_ZNSt6vectorIiSaIiEEC1Ev>
/home/donayam/Documents/dove_workspace/vipbench/distinctness/main.cpp:150
	ifstream in(input_file_name,ios::in);	
    319b:	48 8d 8d 70 fb ff ff 	lea    -0x490(%rbp),%rcx
    31a2:	48 8d 85 d0 fd ff ff 	lea    -0x230(%rbp),%rax
    31a9:	ba 08 00 00 00       	mov    $0x8,%edx
    31ae:	48 89 ce             	mov    %rcx,%rsi
    31b1:	48 89 c7             	mov    %rax,%rdi
    31b4:	e8 57 f6 ff ff       	callq  2810 <_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1ERKNSt7__cxx1112basic_stringIcS1_SaIcEEESt13_Ios_Openmode@plt>
/home/donayam/Documents/dove_workspace/vipbench/distinctness/main.cpp:152
    int number;  //Variable to hold each number as it is read
    while (in >> number) {
    31b9:	48 8d 95 e8 fa ff ff 	lea    -0x518(%rbp),%rdx
    31c0:	48 8d 85 d0 fd ff ff 	lea    -0x230(%rbp),%rax
    31c7:	48 89 d6             	mov    %rdx,%rsi
    31ca:	48 89 c7             	mov    %rax,%rdi
    31cd:	e8 ee f3 ff ff       	callq  25c0 <_ZNSirsERi@plt>
    31d2:	48 8b 10             	mov    (%rax),%rdx
    31d5:	48 83 ea 18          	sub    $0x18,%rdx
    31d9:	48 8b 12             	mov    (%rdx),%rdx
    31dc:	48 01 d0             	add    %rdx,%rax
    31df:	48 89 c7             	mov    %rax,%rdi
    31e2:	e8 39 f5 ff ff       	callq  2720 <_ZNKSt9basic_iosIcSt11char_traitsIcEEcvbEv@plt>
/home/donayam/Documents/dove_workspace/vipbench/distinctness/main.cpp:152 (discriminator 1)
    31e7:	84 c0                	test   %al,%al
    31e9:	74 1b                	je     3206 <main+0x2d0>
/home/donayam/Documents/dove_workspace/vipbench/distinctness/main.cpp:153
		numbers.push_back(number);
    31eb:	48 8d 95 e8 fa ff ff 	lea    -0x518(%rbp),%rdx
    31f2:	48 8d 85 00 fb ff ff 	lea    -0x500(%rbp),%rax
    31f9:	48 89 d6             	mov    %rdx,%rsi
    31fc:	48 89 c7             	mov    %rax,%rdi
    31ff:	e8 60 0d 00 00       	callq  3f64 <_ZNSt6vectorIiSaIiEE9push_backERKi>
/home/donayam/Documents/dove_workspace/vipbench/distinctness/main.cpp:152
    while (in >> number) {
    3204:	eb b3                	jmp    31b9 <main+0x283>
/home/donayam/Documents/dove_workspace/vipbench/distinctness/main.cpp:155
	}
    in.close();
    3206:	48 8d 85 d0 fd ff ff 	lea    -0x230(%rbp),%rax
    320d:	48 89 c7             	mov    %rax,%rdi
    3210:	e8 db f2 ff ff       	callq  24f0 <_ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv@plt>
/home/donayam/Documents/dove_workspace/vipbench/distinctness/main.cpp:158

    
    ofstream file(output_file_name, ios::out | ios::trunc);
    3215:	be 20 00 00 00       	mov    $0x20,%esi
    321a:	bf 10 00 00 00       	mov    $0x10,%edi
    321f:	e8 18 06 00 00       	callq  383c <_ZStorSt13_Ios_OpenmodeS_>
    3224:	89 c2                	mov    %eax,%edx
    3226:	48 8d 8d 90 fb ff ff 	lea    -0x470(%rbp),%rcx
    322d:	48 8d 85 d0 fb ff ff 	lea    -0x430(%rbp),%rax
    3234:	48 89 ce             	mov    %rcx,%rsi
    3237:	48 89 c7             	mov    %rax,%rdi
    323a:	e8 81 f6 ff ff       	callq  28c0 <_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1ERKNSt7__cxx1112basic_stringIcS1_SaIcEEESt13_Ios_Openmode@plt>
/home/donayam/Documents/dove_workspace/vipbench/distinctness/main.cpp:159
    if (!file) {
    323f:	48 8d 85 d0 fb ff ff 	lea    -0x430(%rbp),%rax
    3246:	48 05 f8 00 00 00    	add    $0xf8,%rax
    324c:	48 89 c7             	mov    %rax,%rdi
    324f:	e8 2c f3 ff ff       	callq  2580 <_ZNKSt9basic_iosIcSt11char_traitsIcEEntEv@plt>
    3254:	84 c0                	test   %al,%al
    3256:	74 47                	je     329f <main+0x369>
/home/donayam/Documents/dove_workspace/vipbench/distinctness/main.cpp:160
        cerr << "Error opening output file: " << output_file_name << endl;
    3258:	48 8d 35 c6 71 00 00 	lea    0x71c6(%rip),%rsi        # a425 <_ZL12total_events+0x419>
    325f:	48 8d 3d 7a be 00 00 	lea    0xbe7a(%rip),%rdi        # f0e0 <_ZSt4cerr@@GLIBCXX_3.4>
    3266:	e8 05 f4 ff ff       	callq  2670 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
    326b:	48 89 c2             	mov    %rax,%rdx
    326e:	48 8d 85 90 fb ff ff 	lea    -0x470(%rbp),%rax
    3275:	48 89 c6             	mov    %rax,%rsi
    3278:	48 89 d7             	mov    %rdx,%rdi
    327b:	e8 b0 f3 ff ff       	callq  2630 <_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE@plt>
/home/donayam/Documents/dove_workspace/vipbench/distinctness/main.cpp:160 (discriminator 1)
    3280:	48 89 c2             	mov    %rax,%rdx
    3283:	48 8b 05 46 bd 00 00 	mov    0xbd46(%rip),%rax        # efd0 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GLIBCXX_3.4>
    328a:	48 89 c6             	mov    %rax,%rsi
    328d:	48 89 d7             	mov    %rdx,%rdi
    3290:	e8 1b f4 ff ff       	callq  26b0 <_ZNSolsEPFRSoS_E@plt>
/home/donayam/Documents/dove_workspace/vipbench/distinctness/main.cpp:161
        return 1;
    3295:	bb 01 00 00 00       	mov    $0x1,%ebx
    329a:	e9 0a 03 00 00       	jmpq   35a9 <main+0x673>
/home/donayam/Documents/dove_workspace/vipbench/distinctness/main.cpp:163
    }
    int size = total_events;
    329f:	c7 85 f8 fa ff ff 15 	movl   $0x15,-0x508(%rbp)
    32a6:	00 00 00 
/home/donayam/Documents/dove_workspace/vipbench/distinctness/main.cpp:167


    // Encrypt with profiling for each group of 3 events
    for (int i = 0; i < size - 2; i += 3) {
    32a9:	c7 85 ec fa ff ff 00 	movl   $0x0,-0x514(%rbp)
    32b0:	00 00 00 
/home/donayam/Documents/dove_workspace/vipbench/distinctness/main.cpp:167 (discriminator 1)
    32b3:	8b 85 f8 fa ff ff    	mov    -0x508(%rbp),%eax
    32b9:	83 e8 02             	sub    $0x2,%eax
    32bc:	39 85 ec fa ff ff    	cmp    %eax,-0x514(%rbp)
    32c2:	0f 8d 3b 01 00 00    	jge    3403 <main+0x4cd>
/home/donayam/Documents/dove_workspace/vipbench/distinctness/main.cpp:168
        vector<const char*> events = {gen_events__[i], gen_events__[i+1], gen_events__[i+2], NULL};
    32c8:	8b 85 ec fa ff ff    	mov    -0x514(%rbp),%eax
    32ce:	48 98                	cltq   
    32d0:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
    32d7:	00 
    32d8:	48 8d 05 41 bd 00 00 	lea    0xbd41(%rip),%rax        # f020 <gen_events__>
    32df:	48 8b 04 02          	mov    (%rdx,%rax,1),%rax
    32e3:	48 89 85 b0 fb ff ff 	mov    %rax,-0x450(%rbp)
    32ea:	8b 85 ec fa ff ff    	mov    -0x514(%rbp),%eax
    32f0:	83 c0 01             	add    $0x1,%eax
    32f3:	48 98                	cltq   
    32f5:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
    32fc:	00 
    32fd:	48 8d 05 1c bd 00 00 	lea    0xbd1c(%rip),%rax        # f020 <gen_events__>
    3304:	48 8b 04 02          	mov    (%rdx,%rax,1),%rax
    3308:	48 89 85 b8 fb ff ff 	mov    %rax,-0x448(%rbp)
    330f:	8b 85 ec fa ff ff    	mov    -0x514(%rbp),%eax
    3315:	83 c0 02             	add    $0x2,%eax
    3318:	48 98                	cltq   
    331a:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
    3321:	00 
    3322:	48 8d 05 f7 bc 00 00 	lea    0xbcf7(%rip),%rax        # f020 <gen_events__>
    3329:	48 8b 04 02          	mov    (%rdx,%rax,1),%rax
    332d:	48 89 85 c0 fb ff ff 	mov    %rax,-0x440(%rbp)
    3334:	48 c7 85 c8 fb ff ff 	movq   $0x0,-0x438(%rbp)
    333b:	00 00 00 00 
    333f:	48 8d 85 b0 fb ff ff 	lea    -0x450(%rbp),%rax
    3346:	49 89 c4             	mov    %rax,%r12
    3349:	41 bd 04 00 00 00    	mov    $0x4,%r13d
    334f:	48 8d 85 e7 fa ff ff 	lea    -0x519(%rbp),%rax
    3356:	48 89 c7             	mov    %rax,%rdi
    3359:	e8 86 0c 00 00       	callq  3fe4 <_ZNSaIPKcEC1Ev>
    335e:	48 8d 95 e7 fa ff ff 	lea    -0x519(%rbp),%rdx
    3365:	4c 89 e6             	mov    %r12,%rsi
    3368:	4c 89 ef             	mov    %r13,%rdi
    336b:	4c 89 e1             	mov    %r12,%rcx
    336e:	4c 89 eb             	mov    %r13,%rbx
    3371:	48 89 df             	mov    %rbx,%rdi
    3374:	48 8d 85 20 fb ff ff 	lea    -0x4e0(%rbp),%rax
    337b:	48 89 d1             	mov    %rdx,%rcx
    337e:	48 89 fa             	mov    %rdi,%rdx
    3381:	48 89 c7             	mov    %rax,%rdi
    3384:	e8 9b 0c 00 00       	callq  4024 <_ZNSt6vectorIPKcSaIS1_EEC1ESt16initializer_listIS1_ERKS2_>
    3389:	48 8d 85 e7 fa ff ff 	lea    -0x519(%rbp),%rax
    3390:	48 89 c7             	mov    %rax,%rdi
    3393:	e8 6c 0c 00 00       	callq  4004 <_ZNSaIPKcED1Ev>
/home/donayam/Documents/dove_workspace/vipbench/distinctness/main.cpp:169
        runDistinct(&numbers[0], numbers.size(), events.data(), file);
    3398:	48 8d 85 20 fb ff ff 	lea    -0x4e0(%rbp),%rax
    339f:	48 89 c7             	mov    %rax,%rdi
    33a2:	e8 c5 0d 00 00       	callq  416c <_ZNSt6vectorIPKcSaIS1_EE4dataEv>
    33a7:	48 89 c3             	mov    %rax,%rbx
    33aa:	48 8d 85 00 fb ff ff 	lea    -0x500(%rbp),%rax
    33b1:	48 89 c7             	mov    %rax,%rdi
    33b4:	e8 8b 0d 00 00       	callq  4144 <_ZNKSt6vectorIiSaIiEE4sizeEv>
    33b9:	41 89 c6             	mov    %eax,%r14d
    33bc:	48 8d 85 00 fb ff ff 	lea    -0x500(%rbp),%rax
    33c3:	be 00 00 00 00       	mov    $0x0,%esi
    33c8:	48 89 c7             	mov    %rax,%rdi
    33cb:	e8 50 0d 00 00       	callq  4120 <_ZNSt6vectorIiSaIiEEixEm>
    33d0:	48 89 c7             	mov    %rax,%rdi
    33d3:	48 8d 85 d0 fb ff ff 	lea    -0x430(%rbp),%rax
    33da:	48 89 c1             	mov    %rax,%rcx
    33dd:	48 89 da             	mov    %rbx,%rdx
    33e0:	44 89 f6             	mov    %r14d,%esi
    33e3:	e8 b9 f9 ff ff       	callq  2da1 <_Z11runDistinctPiiPPKcRSt14basic_ofstreamIcSt11char_traitsIcEE>
/home/donayam/Documents/dove_workspace/vipbench/distinctness/main.cpp:168 (discriminator 2)
        vector<const char*> events = {gen_events__[i], gen_events__[i+1], gen_events__[i+2], NULL};
    33e8:	48 8d 85 20 fb ff ff 	lea    -0x4e0(%rbp),%rax
    33ef:	48 89 c7             	mov    %rax,%rdi
    33f2:	e8 e1 0c 00 00       	callq  40d8 <_ZNSt6vectorIPKcSaIS1_EED1Ev>
/home/donayam/Documents/dove_workspace/vipbench/distinctness/main.cpp:167 (discriminator 2)
    for (int i = 0; i < size - 2; i += 3) {
    33f7:	83 85 ec fa ff ff 03 	addl   $0x3,-0x514(%rbp)
    33fe:	e9 b0 fe ff ff       	jmpq   32b3 <main+0x37d>
/home/donayam/Documents/dove_workspace/vipbench/distinctness/main.cpp:173
    }

    // Handle remaining events if not multiple of 3
    if (size % 3 != 0) {
    3403:	8b 8d f8 fa ff ff    	mov    -0x508(%rbp),%ecx
    3409:	48 63 c1             	movslq %ecx,%rax
    340c:	48 69 c0 56 55 55 55 	imul   $0x55555556,%rax,%rax
    3413:	48 c1 e8 20          	shr    $0x20,%rax
    3417:	48 89 c2             	mov    %rax,%rdx
    341a:	89 c8                	mov    %ecx,%eax
    341c:	c1 f8 1f             	sar    $0x1f,%eax
    341f:	89 d6                	mov    %edx,%esi
    3421:	29 c6                	sub    %eax,%esi
    3423:	89 f0                	mov    %esi,%eax
    3425:	89 c2                	mov    %eax,%edx
    3427:	01 d2                	add    %edx,%edx
    3429:	01 c2                	add    %eax,%edx
    342b:	89 c8                	mov    %ecx,%eax
    342d:	29 d0                	sub    %edx,%eax
    342f:	85 c0                	test   %eax,%eax
    3431:	0f 84 5e 01 00 00    	je     3595 <main+0x65f>
/home/donayam/Documents/dove_workspace/vipbench/distinctness/main.cpp:174
        int remaining = size % 3;
    3437:	8b 95 f8 fa ff ff    	mov    -0x508(%rbp),%edx
    343d:	48 63 c2             	movslq %edx,%rax
    3440:	48 69 c0 56 55 55 55 	imul   $0x55555556,%rax,%rax
    3447:	48 c1 e8 20          	shr    $0x20,%rax
    344b:	48 89 c1             	mov    %rax,%rcx
    344e:	89 d0                	mov    %edx,%eax
    3450:	c1 f8 1f             	sar    $0x1f,%eax
    3453:	29 c1                	sub    %eax,%ecx
    3455:	89 c8                	mov    %ecx,%eax
    3457:	01 c0                	add    %eax,%eax
    3459:	01 c8                	add    %ecx,%eax
    345b:	29 c2                	sub    %eax,%edx
    345d:	89 d0                	mov    %edx,%eax
    345f:	89 85 fc fa ff ff    	mov    %eax,-0x504(%rbp)
/home/donayam/Documents/dove_workspace/vipbench/distinctness/main.cpp:175
        vector<const char*> events(remaining + 1);
    3465:	48 8d 85 e7 fa ff ff 	lea    -0x519(%rbp),%rax
    346c:	48 89 c7             	mov    %rax,%rdi
    346f:	e8 70 0b 00 00       	callq  3fe4 <_ZNSaIPKcEC1Ev>
    3474:	8b 85 fc fa ff ff    	mov    -0x504(%rbp),%eax
    347a:	83 c0 01             	add    $0x1,%eax
    347d:	48 63 c8             	movslq %eax,%rcx
    3480:	48 8d 95 e7 fa ff ff 	lea    -0x519(%rbp),%rdx
    3487:	48 8d 85 20 fb ff ff 	lea    -0x4e0(%rbp),%rax
    348e:	48 89 ce             	mov    %rcx,%rsi
    3491:	48 89 c7             	mov    %rax,%rdi
    3494:	e8 fb 0c 00 00       	callq  4194 <_ZNSt6vectorIPKcSaIS1_EEC1EmRKS2_>
    3499:	48 8d 85 e7 fa ff ff 	lea    -0x519(%rbp),%rax
    34a0:	48 89 c7             	mov    %rax,%rdi
    34a3:	e8 5c 0b 00 00       	callq  4004 <_ZNSaIPKcED1Ev>
/home/donayam/Documents/dove_workspace/vipbench/distinctness/main.cpp:176
        for (int i = 0; i < remaining; ++i) {
    34a8:	c7 85 f0 fa ff ff 00 	movl   $0x0,-0x510(%rbp)
    34af:	00 00 00 
/home/donayam/Documents/dove_workspace/vipbench/distinctness/main.cpp:176 (discriminator 3)
    34b2:	8b 85 f0 fa ff ff    	mov    -0x510(%rbp),%eax
    34b8:	3b 85 fc fa ff ff    	cmp    -0x504(%rbp),%eax
    34be:	7d 54                	jge    3514 <main+0x5de>
/home/donayam/Documents/dove_workspace/vipbench/distinctness/main.cpp:177 (discriminator 2)
            events[i] = gen_events__[size - remaining + i];
    34c0:	8b 85 f8 fa ff ff    	mov    -0x508(%rbp),%eax
    34c6:	2b 85 fc fa ff ff    	sub    -0x504(%rbp),%eax
    34cc:	89 c2                	mov    %eax,%edx
    34ce:	8b 85 f0 fa ff ff    	mov    -0x510(%rbp),%eax
    34d4:	8d 1c 02             	lea    (%rdx,%rax,1),%ebx
    34d7:	8b 85 f0 fa ff ff    	mov    -0x510(%rbp),%eax
    34dd:	48 63 d0             	movslq %eax,%rdx
    34e0:	48 8d 85 20 fb ff ff 	lea    -0x4e0(%rbp),%rax
    34e7:	48 89 d6             	mov    %rdx,%rsi
    34ea:	48 89 c7             	mov    %rax,%rdi
    34ed:	e8 22 0d 00 00       	callq  4214 <_ZNSt6vectorIPKcSaIS1_EEixEm>
    34f2:	48 63 d3             	movslq %ebx,%rdx
    34f5:	48 8d 0c d5 00 00 00 	lea    0x0(,%rdx,8),%rcx
    34fc:	00 
    34fd:	48 8d 15 1c bb 00 00 	lea    0xbb1c(%rip),%rdx        # f020 <gen_events__>
    3504:	48 8b 14 11          	mov    (%rcx,%rdx,1),%rdx
    3508:	48 89 10             	mov    %rdx,(%rax)
/home/donayam/Documents/dove_workspace/vipbench/distinctness/main.cpp:176 (discriminator 2)
        for (int i = 0; i < remaining; ++i) {
    350b:	83 85 f0 fa ff ff 01 	addl   $0x1,-0x510(%rbp)
    3512:	eb 9e                	jmp    34b2 <main+0x57c>
/home/donayam/Documents/dove_workspace/vipbench/distinctness/main.cpp:179
        }
        events[remaining] = NULL;
    3514:	8b 85 fc fa ff ff    	mov    -0x504(%rbp),%eax
    351a:	48 63 d0             	movslq %eax,%rdx
    351d:	48 8d 85 20 fb ff ff 	lea    -0x4e0(%rbp),%rax
    3524:	48 89 d6             	mov    %rdx,%rsi
    3527:	48 89 c7             	mov    %rax,%rdi
    352a:	e8 e5 0c 00 00       	callq  4214 <_ZNSt6vectorIPKcSaIS1_EEixEm>
    352f:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
/home/donayam/Documents/dove_workspace/vipbench/distinctness/main.cpp:180
        runDistinct(&numbers[0], numbers.size(), events.data(), file);
    3536:	48 8d 85 20 fb ff ff 	lea    -0x4e0(%rbp),%rax
    353d:	48 89 c7             	mov    %rax,%rdi
    3540:	e8 27 0c 00 00       	callq  416c <_ZNSt6vectorIPKcSaIS1_EE4dataEv>
    3545:	48 89 c3             	mov    %rax,%rbx
    3548:	48 8d 85 00 fb ff ff 	lea    -0x500(%rbp),%rax
    354f:	48 89 c7             	mov    %rax,%rdi
    3552:	e8 ed 0b 00 00       	callq  4144 <_ZNKSt6vectorIiSaIiEE4sizeEv>
    3557:	41 89 c4             	mov    %eax,%r12d
    355a:	48 8d 85 00 fb ff ff 	lea    -0x500(%rbp),%rax
    3561:	be 00 00 00 00       	mov    $0x0,%esi
    3566:	48 89 c7             	mov    %rax,%rdi
    3569:	e8 b2 0b 00 00       	callq  4120 <_ZNSt6vectorIiSaIiEEixEm>
    356e:	48 89 c7             	mov    %rax,%rdi
    3571:	48 8d 85 d0 fb ff ff 	lea    -0x430(%rbp),%rax
    3578:	48 89 c1             	mov    %rax,%rcx
    357b:	48 89 da             	mov    %rbx,%rdx
    357e:	44 89 e6             	mov    %r12d,%esi
    3581:	e8 1b f8 ff ff       	callq  2da1 <_Z11runDistinctPiiPPKcRSt14basic_ofstreamIcSt11char_traitsIcEE>
/home/donayam/Documents/dove_workspace/vipbench/distinctness/main.cpp:175
        vector<const char*> events(remaining + 1);
    3586:	48 8d 85 20 fb ff ff 	lea    -0x4e0(%rbp),%rax
    358d:	48 89 c7             	mov    %rax,%rdi
    3590:	e8 43 0b 00 00       	callq  40d8 <_ZNSt6vectorIPKcSaIS1_EED1Ev>
/home/donayam/Documents/dove_workspace/vipbench/distinctness/main.cpp:185
    }

    

    file.close();
    3595:	48 8d 85 d0 fb ff ff 	lea    -0x430(%rbp),%rax
    359c:	48 89 c7             	mov    %rax,%rdi
    359f:	e8 fc f1 ff ff       	callq  27a0 <_ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv@plt>
/home/donayam/Documents/dove_workspace/vipbench/distinctness/main.cpp:187

    return 0;
    35a4:	bb 00 00 00 00       	mov    $0x0,%ebx
/home/donayam/Documents/dove_workspace/vipbench/distinctness/main.cpp:158
    ofstream file(output_file_name, ios::out | ios::trunc);
    35a9:	48 8d 85 d0 fb ff ff 	lea    -0x430(%rbp),%rax
    35b0:	48 89 c7             	mov    %rax,%rdi
    35b3:	e8 28 f2 ff ff       	callq  27e0 <_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev@plt>
/home/donayam/Documents/dove_workspace/vipbench/distinctness/main.cpp:150
	ifstream in(input_file_name,ios::in);	
    35b8:	48 8d 85 d0 fd ff ff 	lea    -0x230(%rbp),%rax
    35bf:	48 89 c7             	mov    %rax,%rdi
    35c2:	e8 49 ef ff ff       	callq  2510 <_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev@plt>
/home/donayam/Documents/dove_workspace/vipbench/distinctness/main.cpp:149
	vector<int> numbers;    
    35c7:	48 8d 85 00 fb ff ff 	lea    -0x500(%rbp),%rax
    35ce:	48 89 c7             	mov    %rax,%rdi
    35d1:	e8 46 09 00 00       	callq  3f1c <_ZNSt6vectorIiSaIiEED1Ev>
/home/donayam/Documents/dove_workspace/vipbench/distinctness/main.cpp:143
    string output_file_name  = args["output"];      //argv[4];
    35d6:	48 8d 85 90 fb ff ff 	lea    -0x470(%rbp),%rax
    35dd:	48 89 c7             	mov    %rax,%rdi
    35e0:	e8 eb ef ff ff       	callq  25d0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
/home/donayam/Documents/dove_workspace/vipbench/distinctness/main.cpp:142
    string input_file_name   = args["input"];       //argv[3];
    35e5:	48 8d 85 70 fb ff ff 	lea    -0x490(%rbp),%rax
    35ec:	48 89 c7             	mov    %rax,%rdi
    35ef:	e8 dc ef ff ff       	callq  25d0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
/home/donayam/Documents/dove_workspace/vipbench/distinctness/main.cpp:141
    map<string, string> args = parseArgs(argc, argv);
    35f4:	48 8d 85 40 fb ff ff 	lea    -0x4c0(%rbp),%rax
    35fb:	48 89 c7             	mov    %rax,%rdi
    35fe:	e8 19 03 00 00       	callq  391c <_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEED1Ev>
    3603:	89 d8                	mov    %ebx,%eax
/home/donayam/Documents/dove_workspace/vipbench/distinctness/main.cpp:188 (discriminator 1)
}
    3605:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
    3609:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
    3610:	00 00 
    3612:	0f 84 4e 01 00 00    	je     3766 <main+0x830>
    3618:	e9 44 01 00 00       	jmpq   3761 <main+0x82b>
    361d:	f3 0f 1e fa          	endbr64 
    3621:	48 89 c3             	mov    %rax,%rbx
    3624:	48 8d 85 d0 fd ff ff 	lea    -0x230(%rbp),%rax
    362b:	48 89 c7             	mov    %rax,%rdi
    362e:	e8 9d ef ff ff       	callq  25d0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    3633:	eb 07                	jmp    363c <main+0x706>
    3635:	f3 0f 1e fa          	endbr64 
    3639:	48 89 c3             	mov    %rax,%rbx
    363c:	48 8d 85 20 fb ff ff 	lea    -0x4e0(%rbp),%rax
    3643:	48 89 c7             	mov    %rax,%rdi
    3646:	e8 85 f0 ff ff       	callq  26d0 <_ZNSaIcED1Ev@plt>
    364b:	e9 f7 00 00 00       	jmpq   3747 <main+0x811>
    3650:	f3 0f 1e fa          	endbr64 
    3654:	48 89 c3             	mov    %rax,%rbx
    3657:	48 8d 85 d0 fd ff ff 	lea    -0x230(%rbp),%rax
    365e:	48 89 c7             	mov    %rax,%rdi
    3661:	e8 6a ef ff ff       	callq  25d0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    3666:	eb 07                	jmp    366f <main+0x739>
    3668:	f3 0f 1e fa          	endbr64 
    366c:	48 89 c3             	mov    %rax,%rbx
    366f:	48 8d 85 20 fb ff ff 	lea    -0x4e0(%rbp),%rax
    3676:	48 89 c7             	mov    %rax,%rdi
    3679:	e8 52 f0 ff ff       	callq  26d0 <_ZNSaIcED1Ev@plt>
    367e:	e9 b5 00 00 00       	jmpq   3738 <main+0x802>
    3683:	f3 0f 1e fa          	endbr64 
    3687:	48 89 c3             	mov    %rax,%rbx
    368a:	48 8d 85 e7 fa ff ff 	lea    -0x519(%rbp),%rax
    3691:	48 89 c7             	mov    %rax,%rdi
    3694:	e8 6b 09 00 00       	callq  4004 <_ZNSaIPKcED1Ev>
    3699:	eb 4f                	jmp    36ea <main+0x7b4>
    369b:	f3 0f 1e fa          	endbr64 
    369f:	48 89 c3             	mov    %rax,%rbx
/home/donayam/Documents/dove_workspace/vipbench/distinctness/main.cpp:168
        vector<const char*> events = {gen_events__[i], gen_events__[i+1], gen_events__[i+2], NULL};
    36a2:	48 8d 85 20 fb ff ff 	lea    -0x4e0(%rbp),%rax
    36a9:	48 89 c7             	mov    %rax,%rdi
    36ac:	e8 27 0a 00 00       	callq  40d8 <_ZNSt6vectorIPKcSaIS1_EED1Ev>
    36b1:	eb 37                	jmp    36ea <main+0x7b4>
    36b3:	f3 0f 1e fa          	endbr64 
    36b7:	48 89 c3             	mov    %rax,%rbx
    36ba:	48 8d 85 e7 fa ff ff 	lea    -0x519(%rbp),%rax
    36c1:	48 89 c7             	mov    %rax,%rdi
    36c4:	e8 3b 09 00 00       	callq  4004 <_ZNSaIPKcED1Ev>
    36c9:	eb 1f                	jmp    36ea <main+0x7b4>
    36cb:	f3 0f 1e fa          	endbr64 
    36cf:	48 89 c3             	mov    %rax,%rbx
/home/donayam/Documents/dove_workspace/vipbench/distinctness/main.cpp:175
        vector<const char*> events(remaining + 1);
    36d2:	48 8d 85 20 fb ff ff 	lea    -0x4e0(%rbp),%rax
    36d9:	48 89 c7             	mov    %rax,%rdi
    36dc:	e8 f7 09 00 00       	callq  40d8 <_ZNSt6vectorIPKcSaIS1_EED1Ev>
    36e1:	eb 07                	jmp    36ea <main+0x7b4>
    36e3:	f3 0f 1e fa          	endbr64 
    36e7:	48 89 c3             	mov    %rax,%rbx
/home/donayam/Documents/dove_workspace/vipbench/distinctness/main.cpp:158
    ofstream file(output_file_name, ios::out | ios::trunc);
    36ea:	48 8d 85 d0 fb ff ff 	lea    -0x430(%rbp),%rax
    36f1:	48 89 c7             	mov    %rax,%rdi
    36f4:	e8 e7 f0 ff ff       	callq  27e0 <_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev@plt>
    36f9:	eb 07                	jmp    3702 <main+0x7cc>
    36fb:	f3 0f 1e fa          	endbr64 
    36ff:	48 89 c3             	mov    %rax,%rbx
/home/donayam/Documents/dove_workspace/vipbench/distinctness/main.cpp:150
	ifstream in(input_file_name,ios::in);	
    3702:	48 8d 85 d0 fd ff ff 	lea    -0x230(%rbp),%rax
    3709:	48 89 c7             	mov    %rax,%rdi
    370c:	e8 ff ed ff ff       	callq  2510 <_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev@plt>
    3711:	eb 07                	jmp    371a <main+0x7e4>
    3713:	f3 0f 1e fa          	endbr64 
    3717:	48 89 c3             	mov    %rax,%rbx
/home/donayam/Documents/dove_workspace/vipbench/distinctness/main.cpp:149
	vector<int> numbers;    
    371a:	48 8d 85 00 fb ff ff 	lea    -0x500(%rbp),%rax
    3721:	48 89 c7             	mov    %rax,%rdi
    3724:	e8 f3 07 00 00       	callq  3f1c <_ZNSt6vectorIiSaIiEED1Ev>
/home/donayam/Documents/dove_workspace/vipbench/distinctness/main.cpp:143
    string output_file_name  = args["output"];      //argv[4];
    3729:	48 8d 85 90 fb ff ff 	lea    -0x470(%rbp),%rax
    3730:	48 89 c7             	mov    %rax,%rdi
    3733:	e8 98 ee ff ff       	callq  25d0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
/home/donayam/Documents/dove_workspace/vipbench/distinctness/main.cpp:142
    string input_file_name   = args["input"];       //argv[3];
    3738:	48 8d 85 70 fb ff ff 	lea    -0x490(%rbp),%rax
    373f:	48 89 c7             	mov    %rax,%rdi
    3742:	e8 89 ee ff ff       	callq  25d0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
/home/donayam/Documents/dove_workspace/vipbench/distinctness/main.cpp:141
    map<string, string> args = parseArgs(argc, argv);
    3747:	48 8d 85 40 fb ff ff 	lea    -0x4c0(%rbp),%rax
    374e:	48 89 c7             	mov    %rax,%rdi
    3751:	e8 c6 01 00 00       	callq  391c <_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEED1Ev>
    3756:	48 89 d8             	mov    %rbx,%rax
    3759:	48 89 c7             	mov    %rax,%rdi
    375c:	e8 ff f0 ff ff       	callq  2860 <_Unwind_Resume@plt>
/home/donayam/Documents/dove_workspace/vipbench/distinctness/main.cpp:188
}
    3761:	e8 7a ef ff ff       	callq  26e0 <__stack_chk_fail@plt>
    3766:	48 81 c4 10 05 00 00 	add    $0x510,%rsp
    376d:	5b                   	pop    %rbx
    376e:	41 5c                	pop    %r12
    3770:	41 5d                	pop    %r13
    3772:	41 5e                	pop    %r14
    3774:	5d                   	pop    %rbp
    3775:	c3                   	retq   

0000000000003776 <_Z41__static_initialization_and_destruction_0ii>:
_Z41__static_initialization_and_destruction_0ii():
/home/donayam/Documents/dove_workspace/vipbench/distinctness/main.cpp:188
    3776:	f3 0f 1e fa          	endbr64 
    377a:	55                   	push   %rbp
    377b:	48 89 e5             	mov    %rsp,%rbp
    377e:	48 83 ec 10          	sub    $0x10,%rsp
    3782:	89 7d fc             	mov    %edi,-0x4(%rbp)
    3785:	89 75 f8             	mov    %esi,-0x8(%rbp)
    3788:	83 7d fc 01          	cmpl   $0x1,-0x4(%rbp)
    378c:	75 32                	jne    37c0 <_Z41__static_initialization_and_destruction_0ii+0x4a>
/home/donayam/Documents/dove_workspace/vipbench/distinctness/main.cpp:188 (discriminator 1)
    378e:	81 7d f8 ff ff 00 00 	cmpl   $0xffff,-0x8(%rbp)
    3795:	75 29                	jne    37c0 <_Z41__static_initialization_and_destruction_0ii+0x4a>
/usr/include/c++/9/iostream:74
  extern wostream wclog;	/// Linked to standard error (buffered)
#endif
  ///@}

  // For construction of filebuffers for cout, cin, cerr, clog et. al.
  static ios_base::Init __ioinit;
    3797:	48 8d 3d 62 ba 00 00 	lea    0xba62(%rip),%rdi        # f200 <_ZStL8__ioinit>
    379e:	e8 4d f0 ff ff       	callq  27f0 <_ZNSt8ios_base4InitC1Ev@plt>
    37a3:	48 8d 15 5e b8 00 00 	lea    0xb85e(%rip),%rdx        # f008 <__dso_handle>
    37aa:	48 8d 35 4f ba 00 00 	lea    0xba4f(%rip),%rsi        # f200 <_ZStL8__ioinit>
    37b1:	48 8b 05 40 b8 00 00 	mov    0xb840(%rip),%rax        # eff8 <_ZNSt8ios_base4InitD1Ev@GLIBCXX_3.4>
    37b8:	48 89 c7             	mov    %rax,%rdi
    37bb:	e8 60 ee ff ff       	callq  2620 <__cxa_atexit@plt>
/home/donayam/Documents/dove_workspace/vipbench/distinctness/main.cpp:188
    37c0:	90                   	nop
    37c1:	c9                   	leaveq 
    37c2:	c3                   	retq   

00000000000037c3 <_GLOBAL__sub_I_ctx>:
_GLOBAL__sub_I_ctx():
/home/donayam/Documents/dove_workspace/vipbench/distinctness/main.cpp:188
    37c3:	f3 0f 1e fa          	endbr64 
    37c7:	55                   	push   %rbp
    37c8:	48 89 e5             	mov    %rsp,%rbp
    37cb:	be ff ff 00 00       	mov    $0xffff,%esi
    37d0:	bf 01 00 00 00       	mov    $0x1,%edi
    37d5:	e8 9c ff ff ff       	callq  3776 <_Z41__static_initialization_and_destruction_0ii>
    37da:	5d                   	pop    %rbp
    37db:	c3                   	retq   

00000000000037dc <_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv>:
_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv():
/usr/include/c++/9/chrono:346
	~duration() = default;
	duration& operator=(const duration&) = default;

	// 20.11.5.2 observer
	constexpr rep
	count() const
    37dc:	f3 0f 1e fa          	endbr64 
    37e0:	55                   	push   %rbp
    37e1:	48 89 e5             	mov    %rsp,%rbp
    37e4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
/usr/include/c++/9/chrono:347
	{ return __r; }
    37e8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    37ec:	48 8b 00             	mov    (%rax),%rax
    37ef:	5d                   	pop    %rbp
    37f0:	c3                   	retq   
    37f1:	90                   	nop

00000000000037f2 <_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1IlvEERKT_>:
_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1IlvEERKT_():
/usr/include/c++/9/chrono:331
	  constexpr explicit duration(const _Rep2& __rep)
    37f2:	f3 0f 1e fa          	endbr64 
    37f6:	55                   	push   %rbp
    37f7:	48 89 e5             	mov    %rsp,%rbp
    37fa:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    37fe:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
/usr/include/c++/9/chrono:332
	  : __r(static_cast<rep>(__rep)) { }
    3802:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    3806:	48 8b 10             	mov    (%rax),%rdx
    3809:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    380d:	48 89 10             	mov    %rdx,(%rax)
    3810:	90                   	nop
    3811:	5d                   	pop    %rbp
    3812:	c3                   	retq   

0000000000003813 <_ZnwmPv>:
_ZnwmPv():
/usr/include/c++/9/new:174
#endif // __cpp_sized_deallocation
#endif // __cpp_aligned_new

// Default placement versions of operator new.
_GLIBCXX_NODISCARD inline void* operator new(std::size_t, void* __p) _GLIBCXX_USE_NOEXCEPT
{ return __p; }
    3813:	f3 0f 1e fa          	endbr64 
    3817:	55                   	push   %rbp
    3818:	48 89 e5             	mov    %rsp,%rbp
    381b:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    381f:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    3823:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    3827:	5d                   	pop    %rbp
    3828:	c3                   	retq   

0000000000003829 <_ZdlPvS_>:
_ZdlPvS_():
/usr/include/c++/9/new:179
_GLIBCXX_NODISCARD inline void* operator new[](std::size_t, void* __p) _GLIBCXX_USE_NOEXCEPT
{ return __p; }

// Default placement versions of operator delete.
inline void operator delete  (void*, void*) _GLIBCXX_USE_NOEXCEPT { }
    3829:	f3 0f 1e fa          	endbr64 
    382d:	55                   	push   %rbp
    382e:	48 89 e5             	mov    %rsp,%rbp
    3831:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    3835:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    3839:	90                   	nop
    383a:	5d                   	pop    %rbp
    383b:	c3                   	retq   

000000000000383c <_ZStorSt13_Ios_OpenmodeS_>:
_ZStorSt13_Ios_OpenmodeS_():
/usr/include/c++/9/bits/ios_base.h:130
  operator&(_Ios_Openmode __a, _Ios_Openmode __b)
  { return _Ios_Openmode(static_cast<int>(__a) & static_cast<int>(__b)); }

  inline _GLIBCXX_CONSTEXPR _Ios_Openmode
  operator|(_Ios_Openmode __a, _Ios_Openmode __b)
  { return _Ios_Openmode(static_cast<int>(__a) | static_cast<int>(__b)); }
    383c:	f3 0f 1e fa          	endbr64 
    3840:	55                   	push   %rbp
    3841:	48 89 e5             	mov    %rsp,%rbp
    3844:	89 7d fc             	mov    %edi,-0x4(%rbp)
    3847:	89 75 f8             	mov    %esi,-0x8(%rbp)
    384a:	8b 45 fc             	mov    -0x4(%rbp),%eax
    384d:	0b 45 f8             	or     -0x8(%rbp),%eax
    3850:	5d                   	pop    %rbp
    3851:	c3                   	retq   

0000000000003852 <_ZNSt15_Rb_tree_headerC1Ev>:
_ZNSt15_Rb_tree_headerC2Ev():
/usr/include/c++/9/bits/stl_tree.h:173
  struct _Rb_tree_header
  {
    _Rb_tree_node_base	_M_header;
    size_t		_M_node_count; // Keeps track of size of tree.

    _Rb_tree_header() _GLIBCXX_NOEXCEPT
    3852:	f3 0f 1e fa          	endbr64 
    3856:	55                   	push   %rbp
    3857:	48 89 e5             	mov    %rsp,%rbp
    385a:	48 83 ec 10          	sub    $0x10,%rsp
    385e:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
/usr/include/c++/9/bits/stl_tree.h:175
    {
      _M_header._M_color = _S_red;
    3862:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3866:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
/usr/include/c++/9/bits/stl_tree.h:176
      _M_reset();
    386c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3870:	48 89 c7             	mov    %rax,%rdi
    3873:	e8 04 00 00 00       	callq  387c <_ZNSt15_Rb_tree_header8_M_resetEv>
/usr/include/c++/9/bits/stl_tree.h:177
    }
    3878:	90                   	nop
    3879:	c9                   	leaveq 
    387a:	c3                   	retq   
    387b:	90                   	nop

000000000000387c <_ZNSt15_Rb_tree_header8_M_resetEv>:
_ZNSt15_Rb_tree_header8_M_resetEv():
/usr/include/c++/9/bits/stl_tree.h:206

      __from._M_reset();
    }

    void
    _M_reset()
    387c:	f3 0f 1e fa          	endbr64 
    3880:	55                   	push   %rbp
    3881:	48 89 e5             	mov    %rsp,%rbp
    3884:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
/usr/include/c++/9/bits/stl_tree.h:208
    {
      _M_header._M_parent = 0;
    3888:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    388c:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
    3893:	00 
/usr/include/c++/9/bits/stl_tree.h:209
      _M_header._M_left = &_M_header;
    3894:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    3898:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    389c:	48 89 50 10          	mov    %rdx,0x10(%rax)
/usr/include/c++/9/bits/stl_tree.h:210
      _M_header._M_right = &_M_header;
    38a0:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    38a4:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    38a8:	48 89 50 18          	mov    %rdx,0x18(%rax)
/usr/include/c++/9/bits/stl_tree.h:211
      _M_node_count = 0;
    38ac:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    38b0:	48 c7 40 20 00 00 00 	movq   $0x0,0x20(%rax)
    38b7:	00 
/usr/include/c++/9/bits/stl_tree.h:212
    }
    38b8:	90                   	nop
    38b9:	5d                   	pop    %rbp
    38ba:	c3                   	retq   
    38bb:	90                   	nop

00000000000038bc <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE13_Rb_tree_implISC_Lb1EED1Ev>:
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE13_Rb_tree_implISC_Lb1EED2Ev():
/usr/include/c++/9/bits/stl_tree.h:673
#else
      // Unused _Is_pod_comparator is kept as it is part of mangled name.
      template<typename _Key_compare,
	       bool /* _Is_pod_comparator */ = __is_pod(_Key_compare)>
#endif
	struct _Rb_tree_impl
    38bc:	f3 0f 1e fa          	endbr64 
    38c0:	55                   	push   %rbp
    38c1:	48 89 e5             	mov    %rsp,%rbp
    38c4:	48 83 ec 10          	sub    $0x10,%rsp
    38c8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    38cc:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    38d0:	48 89 c7             	mov    %rax,%rdi
    38d3:	e8 30 02 00 00       	callq  3b08 <_ZNSaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEED1Ev>
    38d8:	90                   	nop
    38d9:	c9                   	leaveq 
    38da:	c3                   	retq   
    38db:	90                   	nop

00000000000038dc <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EEC1Ev>:
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EEC2Ev():
/usr/include/c++/9/bits/stl_tree.h:944
    public:
      // allocation/deallocation
#if __cplusplus < 201103L
      _Rb_tree() { }
#else
      _Rb_tree() = default;
    38dc:	f3 0f 1e fa          	endbr64 
    38e0:	55                   	push   %rbp
    38e1:	48 89 e5             	mov    %rsp,%rbp
    38e4:	48 83 ec 10          	sub    $0x10,%rsp
    38e8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    38ec:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    38f0:	48 89 c7             	mov    %rax,%rdi
    38f3:	e8 d4 01 00 00       	callq  3acc <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE13_Rb_tree_implISC_Lb1EEC1Ev>
    38f8:	90                   	nop
    38f9:	c9                   	leaveq 
    38fa:	c3                   	retq   
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EEC1Ev():
    38fb:	90                   	nop

00000000000038fc <_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEEC1Ev>:
_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEEC2Ev():
/usr/include/c++/9/bits/stl_map.h:183
       *  @brief  Default constructor creates no elements.
       */
#if __cplusplus < 201103L
      map() : _M_t() { }
#else
      map() = default;
    38fc:	f3 0f 1e fa          	endbr64 
    3900:	55                   	push   %rbp
    3901:	48 89 e5             	mov    %rsp,%rbp
    3904:	48 83 ec 10          	sub    $0x10,%rsp
    3908:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    390c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3910:	48 89 c7             	mov    %rax,%rdi
    3913:	e8 c4 ff ff ff       	callq  38dc <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EEC1Ev>
    3918:	90                   	nop
    3919:	c9                   	leaveq 
    391a:	c3                   	retq   
_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEEC1Ev():
    391b:	90                   	nop

000000000000391c <_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEED1Ev>:
_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEED2Ev():
/usr/include/c++/9/bits/stl_map.h:300
      /**
       *  The dtor only erases the elements, and note that if the elements
       *  themselves are pointers, the pointed-to memory is not touched in any
       *  way.  Managing the pointer is the user's responsibility.
       */
      ~map() = default;
    391c:	f3 0f 1e fa          	endbr64 
    3920:	55                   	push   %rbp
    3921:	48 89 e5             	mov    %rsp,%rbp
    3924:	48 83 ec 10          	sub    $0x10,%rsp
    3928:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    392c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3930:	48 89 c7             	mov    %rax,%rdi
    3933:	e8 f0 01 00 00       	callq  3b28 <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EED1Ev>
    3938:	90                   	nop
    3939:	c9                   	leaveq 
    393a:	c3                   	retq   

000000000000393b <_ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1000000000EEEElS3_EENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE>:
_ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1000000000EEEElS3_EENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE():
/usr/include/c++/9/chrono:191
      duration_cast(const duration<_Rep, _Period>& __d)
    393b:	f3 0f 1e fa          	endbr64 
    393f:	55                   	push   %rbp
    3940:	48 89 e5             	mov    %rsp,%rbp
    3943:	48 83 ec 10          	sub    $0x10,%rsp
    3947:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
/usr/include/c++/9/chrono:200
	return __dc::__cast(__d);
    394b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    394f:	48 89 c7             	mov    %rax,%rdi
    3952:	e8 9f 03 00 00       	callq  3cf6 <_ZNSt6chrono20__duration_cast_implINS_8durationIlSt5ratioILl1ELl1000000000EEEES2_ILl1ELl1EElLb1ELb1EE6__castIlS3_EES4_RKNS1_IT_T0_EE>
/usr/include/c++/9/chrono:201
      }
    3957:	c9                   	leaveq 
    3958:	c3                   	retq   

0000000000003959 <_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE>:
_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE():
/usr/include/c++/9/chrono:762
	return __time_point(__lhs.time_since_epoch() -__rhs);
      }

    template<typename _Clock, typename _Dur1, typename _Dur2>
      constexpr typename common_type<_Dur1, _Dur2>::type
      operator-(const time_point<_Clock, _Dur1>& __lhs,
    3959:	f3 0f 1e fa          	endbr64 
    395d:	55                   	push   %rbp
    395e:	48 89 e5             	mov    %rsp,%rbp
    3961:	48 83 ec 30          	sub    $0x30,%rsp
    3965:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    3969:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    396d:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    3974:	00 00 
    3976:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    397a:	31 c0                	xor    %eax,%eax
/usr/include/c++/9/chrono:764
		const time_point<_Clock, _Dur2>& __rhs)
      { return __lhs.time_since_epoch() - __rhs.time_since_epoch(); }
    397c:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    3980:	48 89 c7             	mov    %rax,%rdi
    3983:	e8 ce 00 00 00       	callq  3a56 <_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv>
    3988:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    398c:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    3990:	48 89 c7             	mov    %rax,%rdi
    3993:	e8 be 00 00 00       	callq  3a56 <_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv>
    3998:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    399c:	48 8d 55 f0          	lea    -0x10(%rbp),%rdx
    39a0:	48 8d 45 e8          	lea    -0x18(%rbp),%rax
    39a4:	48 89 d6             	mov    %rdx,%rsi
    39a7:	48 89 c7             	mov    %rax,%rdi
    39aa:	e8 16 00 00 00       	callq  39c5 <_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_>
    39af:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
    39b3:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
    39ba:	00 00 
    39bc:	74 05                	je     39c3 <_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE+0x6a>
    39be:	e8 1d ed ff ff       	callq  26e0 <__stack_chk_fail@plt>
    39c3:	c9                   	leaveq 
    39c4:	c3                   	retq   

00000000000039c5 <_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_>:
_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_():
/usr/include/c++/9/chrono:463
      operator-(const duration<_Rep1, _Period1>& __lhs,
    39c5:	f3 0f 1e fa          	endbr64 
    39c9:	55                   	push   %rbp
    39ca:	48 89 e5             	mov    %rsp,%rbp
    39cd:	53                   	push   %rbx
    39ce:	48 83 ec 48          	sub    $0x48,%rsp
    39d2:	48 89 7d b8          	mov    %rdi,-0x48(%rbp)
    39d6:	48 89 75 b0          	mov    %rsi,-0x50(%rbp)
    39da:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    39e1:	00 00 
    39e3:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    39e7:	31 c0                	xor    %eax,%eax
/usr/include/c++/9/chrono:469
	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
    39e9:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    39ed:	48 8b 00             	mov    (%rax),%rax
    39f0:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
    39f4:	48 8d 45 c8          	lea    -0x38(%rbp),%rax
    39f8:	48 89 c7             	mov    %rax,%rdi
    39fb:	e8 dc fd ff ff       	callq  37dc <_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv>
    3a00:	48 89 c3             	mov    %rax,%rbx
    3a03:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    3a07:	48 8b 00             	mov    (%rax),%rax
    3a0a:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
    3a0e:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
    3a12:	48 89 c7             	mov    %rax,%rdi
    3a15:	e8 c2 fd ff ff       	callq  37dc <_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv>
    3a1a:	48 29 c3             	sub    %rax,%rbx
    3a1d:	48 89 d8             	mov    %rbx,%rax
    3a20:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
    3a24:	48 8d 55 d8          	lea    -0x28(%rbp),%rdx
    3a28:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
    3a2c:	48 89 d6             	mov    %rdx,%rsi
    3a2f:	48 89 c7             	mov    %rax,%rdi
    3a32:	e8 bb fd ff ff       	callq  37f2 <_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1IlvEERKT_>
    3a37:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
/usr/include/c++/9/chrono:470
      }
    3a3b:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    3a3f:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
    3a46:	00 00 
    3a48:	74 05                	je     3a4f <_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_+0x8a>
    3a4a:	e8 91 ec ff ff       	callq  26e0 <__stack_chk_fail@plt>
    3a4f:	48 83 c4 48          	add    $0x48,%rsp
    3a53:	5b                   	pop    %rbx
    3a54:	5d                   	pop    %rbp
    3a55:	c3                   	retq   

0000000000003a56 <_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv>:
_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv():
/usr/include/c++/9/chrono:649
	time_since_epoch() const
    3a56:	f3 0f 1e fa          	endbr64 
    3a5a:	55                   	push   %rbp
    3a5b:	48 89 e5             	mov    %rsp,%rbp
    3a5e:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
/usr/include/c++/9/chrono:650
	{ return __d; }
    3a62:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3a66:	48 8b 00             	mov    (%rax),%rax
    3a69:	5d                   	pop    %rbp
    3a6a:	c3                   	retq   
    3a6b:	90                   	nop

0000000000003a6c <_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD1Ev>:
_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev():
/usr/include/c++/9/bits/stl_vector.h:125
	  _M_copy_data(__x);
	  __x._M_copy_data(__tmp);
	}
      };

      struct _Vector_impl
    3a6c:	f3 0f 1e fa          	endbr64 
    3a70:	55                   	push   %rbp
    3a71:	48 89 e5             	mov    %rsp,%rbp
    3a74:	48 83 ec 10          	sub    $0x10,%rsp
    3a78:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    3a7c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3a80:	48 89 c7             	mov    %rax,%rdi
    3a83:	e8 22 04 00 00       	callq  3eaa <_ZNSaIiED1Ev>
    3a88:	90                   	nop
    3a89:	c9                   	leaveq 
    3a8a:	c3                   	retq   
    3a8b:	90                   	nop

0000000000003a8c <_ZNSt12_Vector_baseIiSaIiEEC1Ev>:
_ZNSt12_Vector_baseIiSaIiEEC2Ev():
/usr/include/c++/9/bits/stl_vector.h:285
      allocator_type
      get_allocator() const _GLIBCXX_NOEXCEPT
      { return allocator_type(_M_get_Tp_allocator()); }

#if __cplusplus >= 201103L
      _Vector_base() = default;
    3a8c:	f3 0f 1e fa          	endbr64 
    3a90:	55                   	push   %rbp
    3a91:	48 89 e5             	mov    %rsp,%rbp
    3a94:	48 83 ec 10          	sub    $0x10,%rsp
    3a98:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    3a9c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3aa0:	48 89 c7             	mov    %rax,%rdi
    3aa3:	e8 d6 03 00 00       	callq  3e7e <_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC1Ev>
    3aa8:	90                   	nop
    3aa9:	c9                   	leaveq 
    3aaa:	c3                   	retq   
_ZNSt12_Vector_baseIiSaIiEEC1Ev():
    3aab:	90                   	nop

0000000000003aac <_ZNSt6vectorIiSaIiEEC1Ev>:
_ZNSt6vectorIiSaIiEEC2Ev():
/usr/include/c++/9/bits/stl_vector.h:484

      /**
       *  @brief  Creates a %vector with no elements.
       */
#if __cplusplus >= 201103L
      vector() = default;
    3aac:	f3 0f 1e fa          	endbr64 
    3ab0:	55                   	push   %rbp
    3ab1:	48 89 e5             	mov    %rsp,%rbp
    3ab4:	48 83 ec 10          	sub    $0x10,%rsp
    3ab8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    3abc:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3ac0:	48 89 c7             	mov    %rax,%rdi
    3ac3:	e8 c4 ff ff ff       	callq  3a8c <_ZNSt12_Vector_baseIiSaIiEEC1Ev>
    3ac8:	90                   	nop
    3ac9:	c9                   	leaveq 
    3aca:	c3                   	retq   
    3acb:	90                   	nop

0000000000003acc <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE13_Rb_tree_implISC_Lb1EEC1Ev>:
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE13_Rb_tree_implISC_Lb1EEC2Ev():
/usr/include/c++/9/bits/stl_tree.h:680
	  _Rb_tree_impl()
    3acc:	f3 0f 1e fa          	endbr64 
    3ad0:	55                   	push   %rbp
    3ad1:	48 89 e5             	mov    %rsp,%rbp
    3ad4:	48 83 ec 10          	sub    $0x10,%rsp
    3ad8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
/usr/include/c++/9/bits/stl_tree.h:684
	  : _Node_allocator()
    3adc:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3ae0:	48 89 c7             	mov    %rax,%rdi
    3ae3:	e8 62 07 00 00       	callq  424a <_ZNSaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEEC1Ev>
    3ae8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3aec:	48 89 c7             	mov    %rax,%rdi
    3aef:	e8 76 07 00 00       	callq  426a <_ZNSt20_Rb_tree_key_compareISt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC1Ev>
    3af4:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3af8:	48 83 c0 08          	add    $0x8,%rax
    3afc:	48 89 c7             	mov    %rax,%rdi
    3aff:	e8 4e fd ff ff       	callq  3852 <_ZNSt15_Rb_tree_headerC1Ev>
/usr/include/c++/9/bits/stl_tree.h:685
	  { }
    3b04:	90                   	nop
    3b05:	c9                   	leaveq 
    3b06:	c3                   	retq   
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE13_Rb_tree_implISC_Lb1EEC1Ev():
    3b07:	90                   	nop

0000000000003b08 <_ZNSaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEED1Ev>:
_ZNSaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEED2Ev():
/usr/include/c++/9/bits/allocator.h:152

      template<typename _Tp1>
	_GLIBCXX20_CONSTEXPR
	allocator(const allocator<_Tp1>&) _GLIBCXX_NOTHROW { }

      ~allocator() _GLIBCXX_NOTHROW { }
    3b08:	f3 0f 1e fa          	endbr64 
    3b0c:	55                   	push   %rbp
    3b0d:	48 89 e5             	mov    %rsp,%rbp
    3b10:	48 83 ec 10          	sub    $0x10,%rsp
    3b14:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    3b18:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3b1c:	48 89 c7             	mov    %rax,%rdi
    3b1f:	e8 56 07 00 00       	callq  427a <_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EEED1Ev>
    3b24:	90                   	nop
    3b25:	c9                   	leaveq 
    3b26:	c3                   	retq   
_ZNSaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEED1Ev():
    3b27:	90                   	nop

0000000000003b28 <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EED1Ev>:
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EED2Ev():
/usr/include/c++/9/bits/stl_tree.h:999
      : _Rb_tree(std::move(__x), std::move(__a),
		 typename _Alloc_traits::is_always_equal{})
      { }
#endif

      ~_Rb_tree() _GLIBCXX_NOEXCEPT
    3b28:	f3 0f 1e fa          	endbr64 
    3b2c:	55                   	push   %rbp
    3b2d:	48 89 e5             	mov    %rsp,%rbp
    3b30:	48 83 ec 10          	sub    $0x10,%rsp
    3b34:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
/usr/include/c++/9/bits/stl_tree.h:1000
      { _M_erase(_M_begin()); }
    3b38:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3b3c:	48 89 c7             	mov    %rax,%rdi
    3b3f:	e8 b0 07 00 00       	callq  42f4 <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_beginEv>
    3b44:	48 89 c2             	mov    %rax,%rdx
    3b47:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3b4b:	48 89 d6             	mov    %rdx,%rsi
    3b4e:	48 89 c7             	mov    %rax,%rdi
    3b51:	e8 34 07 00 00       	callq  428a <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E>
    3b56:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3b5a:	48 89 c7             	mov    %rax,%rdi
    3b5d:	e8 5a fd ff ff       	callq  38bc <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE13_Rb_tree_implISC_Lb1EED1Ev>
    3b62:	90                   	nop
    3b63:	c9                   	leaveq 
    3b64:	c3                   	retq   
    3b65:	90                   	nop

0000000000003b66 <_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEEixERS9_>:
_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEEixERS9_():
/usr/include/c++/9/bits/stl_map.h:490
       *  is created using default values, which is then returned.
       *
       *  Lookup requires logarithmic time.
       */
      mapped_type&
      operator[](const key_type& __k)
    3b66:	f3 0f 1e fa          	endbr64 
    3b6a:	55                   	push   %rbp
    3b6b:	48 89 e5             	mov    %rsp,%rbp
    3b6e:	53                   	push   %rbx
    3b6f:	48 83 ec 48          	sub    $0x48,%rsp
    3b73:	48 89 7d b8          	mov    %rdi,-0x48(%rbp)
    3b77:	48 89 75 b0          	mov    %rsi,-0x50(%rbp)
    3b7b:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    3b82:	00 00 
    3b84:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    3b88:	31 c0                	xor    %eax,%eax
/usr/include/c++/9/bits/stl_map.h:495
      {
	// concept requirements
	__glibcxx_function_requires(_DefaultConstructibleConcept<mapped_type>)

	iterator __i = lower_bound(__k);
    3b8a:	48 8b 55 b0          	mov    -0x50(%rbp),%rdx
    3b8e:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    3b92:	48 89 d6             	mov    %rdx,%rsi
    3b95:	48 89 c7             	mov    %rax,%rdi
    3b98:	e8 6d 07 00 00       	callq  430a <_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE11lower_boundERS9_>
    3b9d:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
/usr/include/c++/9/bits/stl_map.h:497
	// __i->first is greater than or equivalent to __k.
	if (__i == end() || key_comp()(__k, (*__i).first))
    3ba1:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    3ba5:	48 89 c7             	mov    %rax,%rdi
    3ba8:	e8 05 01 00 00       	callq  3cb2 <_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE3endEv>
    3bad:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    3bb1:	48 8d 55 e0          	lea    -0x20(%rbp),%rdx
    3bb5:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
    3bb9:	48 89 d6             	mov    %rdx,%rsi
    3bbc:	48 89 c7             	mov    %rax,%rdi
    3bbf:	e8 0c 01 00 00       	callq  3cd0 <_ZSteqRKSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EESB_>
    3bc4:	84 c0                	test   %al,%al
    3bc6:	75 32                	jne    3bfa <_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEEixERS9_+0x94>
/usr/include/c++/9/bits/stl_map.h:497 (discriminator 2)
    3bc8:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    3bcc:	48 89 c7             	mov    %rax,%rdi
    3bcf:	e8 60 07 00 00       	callq  4334 <_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE8key_compEv>
    3bd4:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
    3bd8:	48 89 c7             	mov    %rax,%rdi
    3bdb:	e8 7a 07 00 00       	callq  435a <_ZNKSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEdeEv>
    3be0:	48 89 c2             	mov    %rax,%rdx
    3be3:	48 8b 4d b0          	mov    -0x50(%rbp),%rcx
    3be7:	48 8d 45 d8          	lea    -0x28(%rbp),%rax
    3beb:	48 89 ce             	mov    %rcx,%rsi
    3bee:	48 89 c7             	mov    %rax,%rdi
    3bf1:	e8 86 07 00 00       	callq  437c <_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_>
    3bf6:	84 c0                	test   %al,%al
    3bf8:	74 07                	je     3c01 <_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEEixERS9_+0x9b>
/usr/include/c++/9/bits/stl_map.h:497 (discriminator 5)
    3bfa:	b8 01 00 00 00       	mov    $0x1,%eax
    3bff:	eb 05                	jmp    3c06 <_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEEixERS9_+0xa0>
/usr/include/c++/9/bits/stl_map.h:497 (discriminator 6)
    3c01:	b8 00 00 00 00       	mov    $0x0,%eax
/usr/include/c++/9/bits/stl_map.h:497 (discriminator 8)
    3c06:	84 c0                	test   %al,%al
    3c08:	74 52                	je     3c5c <_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEEixERS9_+0xf6>
/usr/include/c++/9/bits/stl_map.h:499
#if __cplusplus >= 201103L
	  __i = _M_t._M_emplace_hint_unique(__i, std::piecewise_construct,
    3c0a:	48 8b 5d b8          	mov    -0x48(%rbp),%rbx
    3c0e:	48 8b 55 b0          	mov    -0x50(%rbp),%rdx
    3c12:	48 8d 45 d8          	lea    -0x28(%rbp),%rax
    3c16:	48 89 d6             	mov    %rdx,%rsi
    3c19:	48 89 c7             	mov    %rax,%rdi
    3c1c:	e8 89 07 00 00       	callq  43aa <_ZNSt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC1IvLb1EEES7_>
    3c21:	48 8d 55 d0          	lea    -0x30(%rbp),%rdx
    3c25:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
    3c29:	48 89 d6             	mov    %rdx,%rsi
    3c2c:	48 89 c7             	mov    %rax,%rdi
    3c2f:	e8 a0 07 00 00       	callq  43d4 <_ZNSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEC1ERKSt17_Rb_tree_iteratorIS8_E>
    3c34:	48 8d 4d cf          	lea    -0x31(%rbp),%rcx
    3c38:	48 8d 55 d8          	lea    -0x28(%rbp),%rdx
    3c3c:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    3c40:	49 89 c8             	mov    %rcx,%r8
    3c43:	48 89 d1             	mov    %rdx,%rcx
    3c46:	48 8d 15 bb 63 00 00 	lea    0x63bb(%rip),%rdx        # a008 <_ZStL19piecewise_construct>
    3c4d:	48 89 c6             	mov    %rax,%rsi
    3c50:	48 89 df             	mov    %rbx,%rdi
    3c53:	e8 9e 07 00 00       	callq  43f6 <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESJ_IJEEEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_>
    3c58:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
/usr/include/c++/9/bits/stl_map.h:505
					    std::tuple<const key_type&>(__k),
					    std::tuple<>());
#else
	  __i = insert(__i, value_type(__k, mapped_type()));
#endif
	return (*__i).second;
    3c5c:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
    3c60:	48 89 c7             	mov    %rax,%rdi
    3c63:	e8 f2 06 00 00       	callq  435a <_ZNKSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEdeEv>
    3c68:	48 83 c0 20          	add    $0x20,%rax
/usr/include/c++/9/bits/stl_map.h:506
      }
    3c6c:	48 8b 5d e8          	mov    -0x18(%rbp),%rbx
    3c70:	64 48 33 1c 25 28 00 	xor    %fs:0x28,%rbx
    3c77:	00 00 
    3c79:	74 05                	je     3c80 <_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEEixERS9_+0x11a>
    3c7b:	e8 60 ea ff ff       	callq  26e0 <__stack_chk_fail@plt>
    3c80:	48 83 c4 48          	add    $0x48,%rsp
    3c84:	5b                   	pop    %rbx
    3c85:	5d                   	pop    %rbp
    3c86:	c3                   	retq   
    3c87:	90                   	nop

0000000000003c88 <_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE4findERS9_>:
_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE4findERS9_():
/usr/include/c++/9/bits/stl_map.h:1168
       *  pointing to the sought after %pair.  If unsuccessful it returns the
       *  past-the-end ( @c end() ) iterator.
       */

      iterator
      find(const key_type& __x)
    3c88:	f3 0f 1e fa          	endbr64 
    3c8c:	55                   	push   %rbp
    3c8d:	48 89 e5             	mov    %rsp,%rbp
    3c90:	48 83 ec 10          	sub    $0x10,%rsp
    3c94:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    3c98:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
/usr/include/c++/9/bits/stl_map.h:1169
      { return _M_t.find(__x); }
    3c9c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3ca0:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    3ca4:	48 89 d6             	mov    %rdx,%rsi
    3ca7:	48 89 c7             	mov    %rax,%rdi
    3caa:	e8 8d 08 00 00       	callq  453c <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE4findERS7_>
    3caf:	c9                   	leaveq 
    3cb0:	c3                   	retq   
    3cb1:	90                   	nop

0000000000003cb2 <_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE3endEv>:
_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE3endEv():
/usr/include/c++/9/bits/stl_map.h:372
      end() _GLIBCXX_NOEXCEPT
    3cb2:	f3 0f 1e fa          	endbr64 
    3cb6:	55                   	push   %rbp
    3cb7:	48 89 e5             	mov    %rsp,%rbp
    3cba:	48 83 ec 10          	sub    $0x10,%rsp
    3cbe:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
/usr/include/c++/9/bits/stl_map.h:373
      { return _M_t.end(); }
    3cc2:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3cc6:	48 89 c7             	mov    %rax,%rdi
    3cc9:	e8 44 09 00 00       	callq  4612 <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE3endEv>
    3cce:	c9                   	leaveq 
    3ccf:	c3                   	retq   

0000000000003cd0 <_ZSteqRKSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EESB_>:
_ZSteqRKSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EESB_():
/usr/include/c++/9/bits/stl_tree.h:315
      operator==(const _Self& __x, const _Self& __y) _GLIBCXX_NOEXCEPT
    3cd0:	f3 0f 1e fa          	endbr64 
    3cd4:	55                   	push   %rbp
    3cd5:	48 89 e5             	mov    %rsp,%rbp
    3cd8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    3cdc:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
/usr/include/c++/9/bits/stl_tree.h:316
      { return __x._M_node == __y._M_node; }
    3ce0:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3ce4:	48 8b 10             	mov    (%rax),%rdx
    3ce7:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    3ceb:	48 8b 00             	mov    (%rax),%rax
    3cee:	48 39 c2             	cmp    %rax,%rdx
    3cf1:	0f 94 c0             	sete   %al
    3cf4:	5d                   	pop    %rbp
    3cf5:	c3                   	retq   

0000000000003cf6 <_ZNSt6chrono20__duration_cast_implINS_8durationIlSt5ratioILl1ELl1000000000EEEES2_ILl1ELl1EElLb1ELb1EE6__castIlS3_EES4_RKNS1_IT_T0_EE>:
_ZNSt6chrono20__duration_cast_implINS_8durationIlSt5ratioILl1ELl1000000000EEEES2_ILl1ELl1EElLb1ELb1EE6__castIlS3_EES4_RKNS1_IT_T0_EE():
/usr/include/c++/9/chrono:137
	  __cast(const duration<_Rep, _Period>& __d)
    3cf6:	f3 0f 1e fa          	endbr64 
    3cfa:	55                   	push   %rbp
    3cfb:	48 89 e5             	mov    %rsp,%rbp
    3cfe:	48 83 ec 30          	sub    $0x30,%rsp
    3d02:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    3d06:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    3d0d:	00 00 
    3d0f:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    3d13:	31 c0                	xor    %eax,%eax
/usr/include/c++/9/chrono:140
	    return _ToDur(static_cast<__to_rep>(__d.count()));
    3d15:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    3d19:	48 89 c7             	mov    %rax,%rdi
    3d1c:	e8 bb fa ff ff       	callq  37dc <_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv>
    3d21:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    3d25:	48 8d 55 e8          	lea    -0x18(%rbp),%rdx
    3d29:	48 8d 45 f0          	lea    -0x10(%rbp),%rax
    3d2d:	48 89 d6             	mov    %rdx,%rsi
    3d30:	48 89 c7             	mov    %rax,%rdi
    3d33:	e8 ba fa ff ff       	callq  37f2 <_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1IlvEERKT_>
    3d38:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
/usr/include/c++/9/chrono:141
	  }
    3d3c:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
    3d40:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
    3d47:	00 00 
    3d49:	74 05                	je     3d50 <_ZNSt6chrono20__duration_cast_implINS_8durationIlSt5ratioILl1ELl1000000000EEEES2_ILl1ELl1EElLb1ELb1EE6__castIlS3_EES4_RKNS1_IT_T0_EE+0x5a>
    3d4b:	e8 90 e9 ff ff       	callq  26e0 <__stack_chk_fail@plt>
    3d50:	c9                   	leaveq 
    3d51:	c3                   	retq   

0000000000003d52 <_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEEixEOS5_>:
_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEEixEOS5_():
/usr/include/c++/9/bits/stl_map.h:510
      operator[](key_type&& __k)
    3d52:	f3 0f 1e fa          	endbr64 
    3d56:	55                   	push   %rbp
    3d57:	48 89 e5             	mov    %rsp,%rbp
    3d5a:	53                   	push   %rbx
    3d5b:	48 83 ec 48          	sub    $0x48,%rsp
    3d5f:	48 89 7d b8          	mov    %rdi,-0x48(%rbp)
    3d63:	48 89 75 b0          	mov    %rsi,-0x50(%rbp)
    3d67:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    3d6e:	00 00 
    3d70:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    3d74:	31 c0                	xor    %eax,%eax
/usr/include/c++/9/bits/stl_map.h:515
	iterator __i = lower_bound(__k);
    3d76:	48 8b 55 b0          	mov    -0x50(%rbp),%rdx
    3d7a:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    3d7e:	48 89 d6             	mov    %rdx,%rsi
    3d81:	48 89 c7             	mov    %rax,%rdi
    3d84:	e8 81 05 00 00       	callq  430a <_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE11lower_boundERS9_>
    3d89:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
/usr/include/c++/9/bits/stl_map.h:517
	if (__i == end() || key_comp()(__k, (*__i).first))
    3d8d:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    3d91:	48 89 c7             	mov    %rax,%rdi
    3d94:	e8 19 ff ff ff       	callq  3cb2 <_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE3endEv>
    3d99:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    3d9d:	48 8d 55 e0          	lea    -0x20(%rbp),%rdx
    3da1:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
    3da5:	48 89 d6             	mov    %rdx,%rsi
    3da8:	48 89 c7             	mov    %rax,%rdi
    3dab:	e8 20 ff ff ff       	callq  3cd0 <_ZSteqRKSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EESB_>
    3db0:	84 c0                	test   %al,%al
    3db2:	75 32                	jne    3de6 <_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEEixEOS5_+0x94>
/usr/include/c++/9/bits/stl_map.h:517 (discriminator 2)
    3db4:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    3db8:	48 89 c7             	mov    %rax,%rdi
    3dbb:	e8 74 05 00 00       	callq  4334 <_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE8key_compEv>
    3dc0:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
    3dc4:	48 89 c7             	mov    %rax,%rdi
    3dc7:	e8 8e 05 00 00       	callq  435a <_ZNKSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEdeEv>
    3dcc:	48 89 c2             	mov    %rax,%rdx
    3dcf:	48 8b 4d b0          	mov    -0x50(%rbp),%rcx
    3dd3:	48 8d 45 d8          	lea    -0x28(%rbp),%rax
    3dd7:	48 89 ce             	mov    %rcx,%rsi
    3dda:	48 89 c7             	mov    %rax,%rdi
    3ddd:	e8 9a 05 00 00       	callq  437c <_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_>
    3de2:	84 c0                	test   %al,%al
    3de4:	74 07                	je     3ded <_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEEixEOS5_+0x9b>
/usr/include/c++/9/bits/stl_map.h:517 (discriminator 5)
    3de6:	b8 01 00 00 00       	mov    $0x1,%eax
    3deb:	eb 05                	jmp    3df2 <_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEEixEOS5_+0xa0>
/usr/include/c++/9/bits/stl_map.h:517 (discriminator 6)
    3ded:	b8 00 00 00 00       	mov    $0x0,%eax
/usr/include/c++/9/bits/stl_map.h:517 (discriminator 8)
    3df2:	84 c0                	test   %al,%al
    3df4:	74 5d                	je     3e53 <_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEEixEOS5_+0x101>
/usr/include/c++/9/bits/stl_map.h:518
	  __i = _M_t._M_emplace_hint_unique(__i, std::piecewise_construct,
    3df6:	48 8b 5d b8          	mov    -0x48(%rbp),%rbx
/usr/include/c++/9/bits/stl_map.h:519
					std::forward_as_tuple(std::move(__k)),
    3dfa:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    3dfe:	48 89 c7             	mov    %rax,%rdi
    3e01:	e8 32 04 00 00       	callq  4238 <_ZSt4moveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEONSt16remove_referenceIT_E4typeEOS8_>
    3e06:	48 89 c2             	mov    %rax,%rdx
/usr/include/c++/9/bits/stl_map.h:518
	  __i = _M_t._M_emplace_hint_unique(__i, std::piecewise_construct,
    3e09:	48 8d 45 d8          	lea    -0x28(%rbp),%rax
    3e0d:	48 89 d6             	mov    %rdx,%rsi
    3e10:	48 89 c7             	mov    %rax,%rdi
    3e13:	e8 74 08 00 00       	callq  468c <_ZSt16forward_as_tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt5tupleIJDpOT_EES9_>
    3e18:	48 8d 55 d0          	lea    -0x30(%rbp),%rdx
    3e1c:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
    3e20:	48 89 d6             	mov    %rdx,%rsi
    3e23:	48 89 c7             	mov    %rax,%rdi
    3e26:	e8 a9 05 00 00       	callq  43d4 <_ZNSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEC1ERKSt17_Rb_tree_iteratorIS8_E>
    3e2b:	48 8d 4d cf          	lea    -0x31(%rbp),%rcx
    3e2f:	48 8d 55 d8          	lea    -0x28(%rbp),%rdx
    3e33:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    3e37:	49 89 c8             	mov    %rcx,%r8
    3e3a:	48 89 d1             	mov    %rdx,%rcx
    3e3d:	48 8d 15 c4 61 00 00 	lea    0x61c4(%rip),%rdx        # a008 <_ZStL19piecewise_construct>
    3e44:	48 89 c6             	mov    %rax,%rsi
    3e47:	48 89 df             	mov    %rbx,%rdi
    3e4a:	e8 75 08 00 00       	callq  46c4 <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS5_EESJ_IJEEEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_>
    3e4f:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
/usr/include/c++/9/bits/stl_map.h:521
	return (*__i).second;
    3e53:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
    3e57:	48 89 c7             	mov    %rax,%rdi
    3e5a:	e8 fb 04 00 00       	callq  435a <_ZNKSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEdeEv>
    3e5f:	48 83 c0 20          	add    $0x20,%rax
/usr/include/c++/9/bits/stl_map.h:522
      }
    3e63:	48 8b 5d e8          	mov    -0x18(%rbp),%rbx
    3e67:	64 48 33 1c 25 28 00 	xor    %fs:0x28,%rbx
    3e6e:	00 00 
    3e70:	74 05                	je     3e77 <_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEEixEOS5_+0x125>
    3e72:	e8 69 e8 ff ff       	callq  26e0 <__stack_chk_fail@plt>
    3e77:	48 83 c4 48          	add    $0x48,%rsp
    3e7b:	5b                   	pop    %rbx
    3e7c:	5d                   	pop    %rbp
    3e7d:	c3                   	retq   

0000000000003e7e <_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC1Ev>:
_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2Ev():
/usr/include/c++/9/bits/stl_vector.h:128
	_Vector_impl() _GLIBCXX_NOEXCEPT_IF(
    3e7e:	f3 0f 1e fa          	endbr64 
    3e82:	55                   	push   %rbp
    3e83:	48 89 e5             	mov    %rsp,%rbp
    3e86:	48 83 ec 10          	sub    $0x10,%rsp
    3e8a:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
/usr/include/c++/9/bits/stl_vector.h:130
	: _Tp_alloc_type()
    3e8e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3e92:	48 89 c7             	mov    %rax,%rdi
    3e95:	e8 70 09 00 00       	callq  480a <_ZNSaIiEC1Ev>
    3e9a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3e9e:	48 89 c7             	mov    %rax,%rdi
    3ea1:	e8 84 09 00 00       	callq  482a <_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC1Ev>
/usr/include/c++/9/bits/stl_vector.h:131
	{ }
    3ea6:	90                   	nop
    3ea7:	c9                   	leaveq 
    3ea8:	c3                   	retq   
    3ea9:	90                   	nop

0000000000003eaa <_ZNSaIiED1Ev>:
_ZNSaIiED2Ev():
/usr/include/c++/9/bits/allocator.h:152
    3eaa:	f3 0f 1e fa          	endbr64 
    3eae:	55                   	push   %rbp
    3eaf:	48 89 e5             	mov    %rsp,%rbp
    3eb2:	48 83 ec 10          	sub    $0x10,%rsp
    3eb6:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    3eba:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3ebe:	48 89 c7             	mov    %rax,%rdi
    3ec1:	e8 96 09 00 00       	callq  485c <_ZN9__gnu_cxx13new_allocatorIiED1Ev>
    3ec6:	90                   	nop
    3ec7:	c9                   	leaveq 
    3ec8:	c3                   	retq   
    3ec9:	90                   	nop

0000000000003eca <_ZNSt12_Vector_baseIiSaIiEED1Ev>:
_ZNSt12_Vector_baseIiSaIiEED2Ev():
/usr/include/c++/9/bits/stl_vector.h:330
      ~_Vector_base() _GLIBCXX_NOEXCEPT
    3eca:	f3 0f 1e fa          	endbr64 
    3ece:	55                   	push   %rbp
    3ecf:	48 89 e5             	mov    %rsp,%rbp
    3ed2:	48 83 ec 10          	sub    $0x10,%rsp
    3ed6:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
/usr/include/c++/9/bits/stl_vector.h:333
		      _M_impl._M_end_of_storage - _M_impl._M_start);
    3eda:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3ede:	48 8b 50 10          	mov    0x10(%rax),%rdx
    3ee2:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3ee6:	48 8b 00             	mov    (%rax),%rax
    3ee9:	48 29 c2             	sub    %rax,%rdx
    3eec:	48 89 d0             	mov    %rdx,%rax
    3eef:	48 c1 f8 02          	sar    $0x2,%rax
/usr/include/c++/9/bits/stl_vector.h:332
	_M_deallocate(_M_impl._M_start,
    3ef3:	48 89 c2             	mov    %rax,%rdx
    3ef6:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3efa:	48 8b 08             	mov    (%rax),%rcx
    3efd:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3f01:	48 89 ce             	mov    %rcx,%rsi
    3f04:	48 89 c7             	mov    %rax,%rdi
    3f07:	e8 60 09 00 00       	callq  486c <_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim>
/usr/include/c++/9/bits/stl_vector.h:334
      }
    3f0c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3f10:	48 89 c7             	mov    %rax,%rdi
    3f13:	e8 54 fb ff ff       	callq  3a6c <_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD1Ev>
    3f18:	90                   	nop
    3f19:	c9                   	leaveq 
    3f1a:	c3                   	retq   
_ZNSt12_Vector_baseIiSaIiEED1Ev():
    3f1b:	90                   	nop

0000000000003f1c <_ZNSt6vectorIiSaIiEED1Ev>:
_ZNSt6vectorIiSaIiEED2Ev():
/usr/include/c++/9/bits/stl_vector.h:675
       *  The dtor only erases the elements, and note that if the
       *  elements themselves are pointers, the pointed-to memory is
       *  not touched in any way.  Managing the pointer is the user's
       *  responsibility.
       */
      ~vector() _GLIBCXX_NOEXCEPT
    3f1c:	f3 0f 1e fa          	endbr64 
    3f20:	55                   	push   %rbp
    3f21:	48 89 e5             	mov    %rsp,%rbp
    3f24:	48 83 ec 10          	sub    $0x10,%rsp
    3f28:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
/usr/include/c++/9/bits/stl_vector.h:678
      {
	std::_Destroy(this->_M_impl._M_start, this->_M_impl._M_finish,
		      _M_get_Tp_allocator());
    3f2c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3f30:	48 89 c7             	mov    %rax,%rdi
    3f33:	e8 6e 09 00 00       	callq  48a6 <_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv>
    3f38:	48 89 c2             	mov    %rax,%rdx
/usr/include/c++/9/bits/stl_vector.h:677
	std::_Destroy(this->_M_impl._M_start, this->_M_impl._M_finish,
    3f3b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3f3f:	48 8b 48 08          	mov    0x8(%rax),%rcx
    3f43:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3f47:	48 8b 00             	mov    (%rax),%rax
    3f4a:	48 89 ce             	mov    %rcx,%rsi
    3f4d:	48 89 c7             	mov    %rax,%rdi
    3f50:	e8 63 09 00 00       	callq  48b8 <_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E>
/usr/include/c++/9/bits/stl_vector.h:680
	_GLIBCXX_ASAN_ANNOTATE_BEFORE_DEALLOC;
      }
    3f55:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3f59:	48 89 c7             	mov    %rax,%rdi
    3f5c:	e8 69 ff ff ff       	callq  3eca <_ZNSt12_Vector_baseIiSaIiEED1Ev>
    3f61:	90                   	nop
    3f62:	c9                   	leaveq 
    3f63:	c3                   	retq   

0000000000003f64 <_ZNSt6vectorIiSaIiEE9push_backERKi>:
_ZNSt6vectorIiSaIiEE9push_backERKi():
/usr/include/c++/9/bits/stl_vector.h:1184
       *  to it.  Due to the nature of a %vector this operation can be
       *  done in constant time if the %vector has preallocated space
       *  available.
       */
      void
      push_back(const value_type& __x)
    3f64:	f3 0f 1e fa          	endbr64 
    3f68:	55                   	push   %rbp
    3f69:	48 89 e5             	mov    %rsp,%rbp
    3f6c:	48 83 ec 10          	sub    $0x10,%rsp
    3f70:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    3f74:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
/usr/include/c++/9/bits/stl_vector.h:1186
      {
	if (this->_M_impl._M_finish != this->_M_impl._M_end_of_storage)
    3f78:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3f7c:	48 8b 50 08          	mov    0x8(%rax),%rdx
    3f80:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3f84:	48 8b 40 10          	mov    0x10(%rax),%rax
    3f88:	48 39 c2             	cmp    %rax,%rdx
    3f8b:	74 31                	je     3fbe <_ZNSt6vectorIiSaIiEE9push_backERKi+0x5a>
/usr/include/c++/9/bits/stl_vector.h:1189
	  {
	    _GLIBCXX_ASAN_ANNOTATE_GROW(1);
	    _Alloc_traits::construct(this->_M_impl, this->_M_impl._M_finish,
    3f8d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3f91:	48 8b 48 08          	mov    0x8(%rax),%rcx
    3f95:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3f99:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    3f9d:	48 89 ce             	mov    %rcx,%rsi
    3fa0:	48 89 c7             	mov    %rax,%rdi
    3fa3:	e8 3e 09 00 00       	callq  48e6 <_ZNSt16allocator_traitsISaIiEE9constructIiJRKiEEEvRS0_PT_DpOT0_>
/usr/include/c++/9/bits/stl_vector.h:1191
				     __x);
	    ++this->_M_impl._M_finish;
    3fa8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3fac:	48 8b 40 08          	mov    0x8(%rax),%rax
    3fb0:	48 8d 50 04          	lea    0x4(%rax),%rdx
    3fb4:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3fb8:	48 89 50 08          	mov    %rdx,0x8(%rax)
/usr/include/c++/9/bits/stl_vector.h:1196
	    _GLIBCXX_ASAN_ANNOTATE_GREW(1);
	  }
	else
	  _M_realloc_insert(end(), __x);
      }
    3fbc:	eb 22                	jmp    3fe0 <_ZNSt6vectorIiSaIiEE9push_backERKi+0x7c>
/usr/include/c++/9/bits/stl_vector.h:1195
	  _M_realloc_insert(end(), __x);
    3fbe:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3fc2:	48 89 c7             	mov    %rax,%rdi
    3fc5:	e8 5a 09 00 00       	callq  4924 <_ZNSt6vectorIiSaIiEE3endEv>
    3fca:	48 89 c1             	mov    %rax,%rcx
    3fcd:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    3fd1:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3fd5:	48 89 ce             	mov    %rcx,%rsi
    3fd8:	48 89 c7             	mov    %rax,%rdi
    3fdb:	e8 da 09 00 00       	callq  49ba <_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_>
/usr/include/c++/9/bits/stl_vector.h:1196
      }
    3fe0:	90                   	nop
    3fe1:	c9                   	leaveq 
    3fe2:	c3                   	retq   
    3fe3:	90                   	nop

0000000000003fe4 <_ZNSaIPKcEC1Ev>:
_ZNSaIPKcEC2Ev():
/usr/include/c++/9/bits/allocator.h:137
      allocator() _GLIBCXX_NOTHROW { }
    3fe4:	f3 0f 1e fa          	endbr64 
    3fe8:	55                   	push   %rbp
    3fe9:	48 89 e5             	mov    %rsp,%rbp
    3fec:	48 83 ec 10          	sub    $0x10,%rsp
    3ff0:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    3ff4:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3ff8:	48 89 c7             	mov    %rax,%rdi
    3ffb:	e8 b2 0c 00 00       	callq  4cb2 <_ZN9__gnu_cxx13new_allocatorIPKcEC1Ev>
    4000:	90                   	nop
    4001:	c9                   	leaveq 
    4002:	c3                   	retq   
_ZNSaIPKcEC1Ev():
    4003:	90                   	nop

0000000000004004 <_ZNSaIPKcED1Ev>:
_ZNSaIPKcED2Ev():
/usr/include/c++/9/bits/allocator.h:152
      ~allocator() _GLIBCXX_NOTHROW { }
    4004:	f3 0f 1e fa          	endbr64 
    4008:	55                   	push   %rbp
    4009:	48 89 e5             	mov    %rsp,%rbp
    400c:	48 83 ec 10          	sub    $0x10,%rsp
    4010:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    4014:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4018:	48 89 c7             	mov    %rax,%rdi
    401b:	e8 a2 0c 00 00       	callq  4cc2 <_ZN9__gnu_cxx13new_allocatorIPKcED1Ev>
    4020:	90                   	nop
    4021:	c9                   	leaveq 
    4022:	c3                   	retq   
    4023:	90                   	nop

0000000000004024 <_ZNSt6vectorIPKcSaIS1_EEC1ESt16initializer_listIS1_ERKS2_>:
_ZNSt6vectorIPKcSaIS1_EEC2ESt16initializer_listIS1_ERKS2_():
/usr/include/c++/9/bits/stl_vector.h:622
      vector(initializer_list<value_type> __l,
    4024:	f3 0f 1e fa          	endbr64 
    4028:	55                   	push   %rbp
    4029:	48 89 e5             	mov    %rsp,%rbp
    402c:	53                   	push   %rbx
    402d:	48 83 ec 38          	sub    $0x38,%rsp
    4031:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    4035:	48 89 f0             	mov    %rsi,%rax
    4038:	48 89 d6             	mov    %rdx,%rsi
    403b:	48 89 f2             	mov    %rsi,%rdx
    403e:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
    4042:	48 89 55 c8          	mov    %rdx,-0x38(%rbp)
    4046:	48 89 4d d0          	mov    %rcx,-0x30(%rbp)
    404a:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    4051:	00 00 
    4053:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    4057:	31 c0                	xor    %eax,%eax
/usr/include/c++/9/bits/stl_vector.h:624
      : _Base(__a)
    4059:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    405d:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
    4061:	48 89 d6             	mov    %rdx,%rsi
    4064:	48 89 c7             	mov    %rax,%rdi
    4067:	e8 86 0c 00 00       	callq  4cf2 <_ZNSt12_Vector_baseIPKcSaIS1_EEC1ERKS2_>
/usr/include/c++/9/bits/stl_vector.h:626
	_M_range_initialize(__l.begin(), __l.end(),
    406c:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
    4070:	48 89 c7             	mov    %rax,%rdi
    4073:	e8 0c 0d 00 00       	callq  4d84 <_ZNKSt16initializer_listIPKcE3endEv>
    4078:	48 89 c3             	mov    %rax,%rbx
    407b:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
    407f:	48 89 c7             	mov    %rax,%rdi
    4082:	e8 e7 0c 00 00       	callq  4d6e <_ZNKSt16initializer_listIPKcE5beginEv>
    4087:	48 89 c1             	mov    %rax,%rcx
    408a:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    408e:	48 89 da             	mov    %rbx,%rdx
    4091:	48 89 ce             	mov    %rcx,%rsi
    4094:	48 89 c7             	mov    %rax,%rdi
    4097:	e8 22 0d 00 00       	callq  4dbe <_ZNSt6vectorIPKcSaIS1_EE19_M_range_initializeIPKS1_EEvT_S7_St20forward_iterator_tag>
/usr/include/c++/9/bits/stl_vector.h:628
      }
    409c:	eb 1e                	jmp    40bc <_ZNSt6vectorIPKcSaIS1_EEC1ESt16initializer_listIS1_ERKS2_+0x98>
    409e:	f3 0f 1e fa          	endbr64 
    40a2:	48 89 c3             	mov    %rax,%rbx
/usr/include/c++/9/bits/stl_vector.h:624
      : _Base(__a)
    40a5:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    40a9:	48 89 c7             	mov    %rax,%rdi
    40ac:	e8 6b 0c 00 00       	callq  4d1c <_ZNSt12_Vector_baseIPKcSaIS1_EED1Ev>
    40b1:	48 89 d8             	mov    %rbx,%rax
    40b4:	48 89 c7             	mov    %rax,%rdi
    40b7:	e8 a4 e7 ff ff       	callq  2860 <_Unwind_Resume@plt>
/usr/include/c++/9/bits/stl_vector.h:628
      }
    40bc:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    40c0:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    40c7:	00 00 
    40c9:	74 05                	je     40d0 <_ZNSt6vectorIPKcSaIS1_EEC1ESt16initializer_listIS1_ERKS2_+0xac>
    40cb:	e8 10 e6 ff ff       	callq  26e0 <__stack_chk_fail@plt>
    40d0:	48 83 c4 38          	add    $0x38,%rsp
    40d4:	5b                   	pop    %rbx
    40d5:	5d                   	pop    %rbp
    40d6:	c3                   	retq   
    40d7:	90                   	nop

00000000000040d8 <_ZNSt6vectorIPKcSaIS1_EED1Ev>:
_ZNSt6vectorIPKcSaIS1_EED2Ev():
/usr/include/c++/9/bits/stl_vector.h:675
      ~vector() _GLIBCXX_NOEXCEPT
    40d8:	f3 0f 1e fa          	endbr64 
    40dc:	55                   	push   %rbp
    40dd:	48 89 e5             	mov    %rsp,%rbp
    40e0:	48 83 ec 10          	sub    $0x10,%rsp
    40e4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
/usr/include/c++/9/bits/stl_vector.h:678
		      _M_get_Tp_allocator());
    40e8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    40ec:	48 89 c7             	mov    %rax,%rdi
    40ef:	e8 7e 0d 00 00       	callq  4e72 <_ZNSt12_Vector_baseIPKcSaIS1_EE19_M_get_Tp_allocatorEv>
    40f4:	48 89 c2             	mov    %rax,%rdx
/usr/include/c++/9/bits/stl_vector.h:677
	std::_Destroy(this->_M_impl._M_start, this->_M_impl._M_finish,
    40f7:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    40fb:	48 8b 48 08          	mov    0x8(%rax),%rcx
    40ff:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4103:	48 8b 00             	mov    (%rax),%rax
    4106:	48 89 ce             	mov    %rcx,%rsi
    4109:	48 89 c7             	mov    %rax,%rdi
    410c:	e8 73 0d 00 00       	callq  4e84 <_ZSt8_DestroyIPPKcS1_EvT_S3_RSaIT0_E>
/usr/include/c++/9/bits/stl_vector.h:680
      }
    4111:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4115:	48 89 c7             	mov    %rax,%rdi
    4118:	e8 ff 0b 00 00       	callq  4d1c <_ZNSt12_Vector_baseIPKcSaIS1_EED1Ev>
    411d:	90                   	nop
    411e:	c9                   	leaveq 
    411f:	c3                   	retq   

0000000000004120 <_ZNSt6vectorIiSaIiEEixEm>:
_ZNSt6vectorIiSaIiEEixEm():
/usr/include/c++/9/bits/stl_vector.h:1040
      operator[](size_type __n) _GLIBCXX_NOEXCEPT
    4120:	f3 0f 1e fa          	endbr64 
    4124:	55                   	push   %rbp
    4125:	48 89 e5             	mov    %rsp,%rbp
    4128:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    412c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
/usr/include/c++/9/bits/stl_vector.h:1043
	return *(this->_M_impl._M_start + __n);
    4130:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4134:	48 8b 00             	mov    (%rax),%rax
    4137:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    413b:	48 c1 e2 02          	shl    $0x2,%rdx
    413f:	48 01 d0             	add    %rdx,%rax
/usr/include/c++/9/bits/stl_vector.h:1044
      }
    4142:	5d                   	pop    %rbp
    4143:	c3                   	retq   

0000000000004144 <_ZNKSt6vectorIiSaIiEE4sizeEv>:
_ZNKSt6vectorIiSaIiEE4sizeEv():
/usr/include/c++/9/bits/stl_vector.h:915
      size() const _GLIBCXX_NOEXCEPT
    4144:	f3 0f 1e fa          	endbr64 
    4148:	55                   	push   %rbp
    4149:	48 89 e5             	mov    %rsp,%rbp
    414c:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
/usr/include/c++/9/bits/stl_vector.h:916
      { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
    4150:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4154:	48 8b 50 08          	mov    0x8(%rax),%rdx
    4158:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    415c:	48 8b 00             	mov    (%rax),%rax
    415f:	48 29 c2             	sub    %rax,%rdx
    4162:	48 89 d0             	mov    %rdx,%rax
    4165:	48 c1 f8 02          	sar    $0x2,%rax
    4169:	5d                   	pop    %rbp
    416a:	c3                   	retq   
    416b:	90                   	nop

000000000000416c <_ZNSt6vectorIPKcSaIS1_EE4dataEv>:
_ZNSt6vectorIPKcSaIS1_EE4dataEv():
/usr/include/c++/9/bits/stl_vector.h:1165
      data() _GLIBCXX_NOEXCEPT
    416c:	f3 0f 1e fa          	endbr64 
    4170:	55                   	push   %rbp
    4171:	48 89 e5             	mov    %rsp,%rbp
    4174:	48 83 ec 10          	sub    $0x10,%rsp
    4178:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
/usr/include/c++/9/bits/stl_vector.h:1166
      { return _M_data_ptr(this->_M_impl._M_start); }
    417c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4180:	48 8b 10             	mov    (%rax),%rdx
    4183:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4187:	48 89 d6             	mov    %rdx,%rsi
    418a:	48 89 c7             	mov    %rax,%rdi
    418d:	e8 20 0d 00 00       	callq  4eb2 <_ZNKSt6vectorIPKcSaIS1_EE11_M_data_ptrIS1_EEPT_S6_>
    4192:	c9                   	leaveq 
    4193:	c3                   	retq   

0000000000004194 <_ZNSt6vectorIPKcSaIS1_EEC1EmRKS2_>:
_ZNSt6vectorIPKcSaIS1_EEC2EmRKS2_():
/usr/include/c++/9/bits/stl_vector.h:507
      vector(size_type __n, const allocator_type& __a = allocator_type())
    4194:	f3 0f 1e fa          	endbr64 
    4198:	55                   	push   %rbp
    4199:	48 89 e5             	mov    %rsp,%rbp
    419c:	53                   	push   %rbx
    419d:	48 83 ec 28          	sub    $0x28,%rsp
    41a1:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    41a5:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    41a9:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
/usr/include/c++/9/bits/stl_vector.h:508
      : _Base(_S_check_init_len(__n, __a), __a)
    41ad:	48 8b 5d e8          	mov    -0x18(%rbp),%rbx
    41b1:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    41b5:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    41b9:	48 89 d6             	mov    %rdx,%rsi
    41bc:	48 89 c7             	mov    %rax,%rdi
    41bf:	e8 04 0d 00 00       	callq  4ec8 <_ZNSt6vectorIPKcSaIS1_EE17_S_check_init_lenEmRKS2_>
    41c4:	48 89 c1             	mov    %rax,%rcx
    41c7:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    41cb:	48 89 c2             	mov    %rax,%rdx
    41ce:	48 89 ce             	mov    %rcx,%rsi
    41d1:	48 89 df             	mov    %rbx,%rdi
    41d4:	e8 75 0d 00 00       	callq  4f4e <_ZNSt12_Vector_baseIPKcSaIS1_EEC1EmRKS2_>
/usr/include/c++/9/bits/stl_vector.h:509
      { _M_default_initialize(__n); }
    41d9:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    41dd:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    41e1:	48 89 d6             	mov    %rdx,%rsi
    41e4:	48 89 c7             	mov    %rax,%rdi
    41e7:	e8 c8 0d 00 00       	callq  4fb4 <_ZNSt6vectorIPKcSaIS1_EE21_M_default_initializeEm>
    41ec:	eb 1e                	jmp    420c <_ZNSt6vectorIPKcSaIS1_EEC1EmRKS2_+0x78>
    41ee:	f3 0f 1e fa          	endbr64 
    41f2:	48 89 c3             	mov    %rax,%rbx
/usr/include/c++/9/bits/stl_vector.h:508
      : _Base(_S_check_init_len(__n, __a), __a)
    41f5:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    41f9:	48 89 c7             	mov    %rax,%rdi
    41fc:	e8 1b 0b 00 00       	callq  4d1c <_ZNSt12_Vector_baseIPKcSaIS1_EED1Ev>
    4201:	48 89 d8             	mov    %rbx,%rax
    4204:	48 89 c7             	mov    %rax,%rdi
    4207:	e8 54 e6 ff ff       	callq  2860 <_Unwind_Resume@plt>
/usr/include/c++/9/bits/stl_vector.h:509
      { _M_default_initialize(__n); }
    420c:	48 83 c4 28          	add    $0x28,%rsp
    4210:	5b                   	pop    %rbx
    4211:	5d                   	pop    %rbp
    4212:	c3                   	retq   
_ZNSt6vectorIPKcSaIS1_EEC1EmRKS2_():
    4213:	90                   	nop

0000000000004214 <_ZNSt6vectorIPKcSaIS1_EEixEm>:
_ZNSt6vectorIPKcSaIS1_EEixEm():
/usr/include/c++/9/bits/stl_vector.h:1040
      operator[](size_type __n) _GLIBCXX_NOEXCEPT
    4214:	f3 0f 1e fa          	endbr64 
    4218:	55                   	push   %rbp
    4219:	48 89 e5             	mov    %rsp,%rbp
    421c:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    4220:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
/usr/include/c++/9/bits/stl_vector.h:1043
	return *(this->_M_impl._M_start + __n);
    4224:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4228:	48 8b 00             	mov    (%rax),%rax
    422b:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    422f:	48 c1 e2 03          	shl    $0x3,%rdx
    4233:	48 01 d0             	add    %rdx,%rax
/usr/include/c++/9/bits/stl_vector.h:1044
      }
    4236:	5d                   	pop    %rbp
    4237:	c3                   	retq   

0000000000004238 <_ZSt4moveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEONSt16remove_referenceIT_E4typeEOS8_>:
_ZSt4moveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEONSt16remove_referenceIT_E4typeEOS8_():
/usr/include/c++/9/bits/move.h:99
   *  @param  __t  A thing of arbitrary type.
   *  @return The parameter cast to an rvalue-reference to allow moving it.
  */
  template<typename _Tp>
    constexpr typename std::remove_reference<_Tp>::type&&
    move(_Tp&& __t) noexcept
    4238:	f3 0f 1e fa          	endbr64 
    423c:	55                   	push   %rbp
    423d:	48 89 e5             	mov    %rsp,%rbp
    4240:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
/usr/include/c++/9/bits/move.h:100
    { return static_cast<typename std::remove_reference<_Tp>::type&&>(__t); }
    4244:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4248:	5d                   	pop    %rbp
    4249:	c3                   	retq   

000000000000424a <_ZNSaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEEC1Ev>:
_ZNSaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEEC2Ev():
/usr/include/c++/9/bits/allocator.h:137
      allocator() _GLIBCXX_NOTHROW { }
    424a:	f3 0f 1e fa          	endbr64 
    424e:	55                   	push   %rbp
    424f:	48 89 e5             	mov    %rsp,%rbp
    4252:	48 83 ec 10          	sub    $0x10,%rsp
    4256:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    425a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    425e:	48 89 c7             	mov    %rax,%rdi
    4261:	e8 92 0d 00 00       	callq  4ff8 <_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EEEC1Ev>
    4266:	90                   	nop
    4267:	c9                   	leaveq 
    4268:	c3                   	retq   
_ZNSaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEEC1Ev():
    4269:	90                   	nop

000000000000426a <_ZNSt20_Rb_tree_key_compareISt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC1Ev>:
_ZNSt20_Rb_tree_key_compareISt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2Ev():
/usr/include/c++/9/bits/stl_tree.h:146
      _Rb_tree_key_compare()
    426a:	f3 0f 1e fa          	endbr64 
    426e:	55                   	push   %rbp
    426f:	48 89 e5             	mov    %rsp,%rbp
    4272:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
/usr/include/c++/9/bits/stl_tree.h:150
      { }
    4276:	90                   	nop
    4277:	5d                   	pop    %rbp
    4278:	c3                   	retq   
_ZNSt20_Rb_tree_key_compareISt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC1Ev():
    4279:	90                   	nop

000000000000427a <_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EEED1Ev>:
_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EEED2Ev():
/usr/include/c++/9/ext/new_allocator.h:89

      template<typename _Tp1>
	_GLIBCXX20_CONSTEXPR
	new_allocator(const new_allocator<_Tp1>&) _GLIBCXX_USE_NOEXCEPT { }

      ~new_allocator() _GLIBCXX_USE_NOEXCEPT { }
    427a:	f3 0f 1e fa          	endbr64 
    427e:	55                   	push   %rbp
    427f:	48 89 e5             	mov    %rsp,%rbp
    4282:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    4286:	90                   	nop
    4287:	5d                   	pop    %rbp
    4288:	c3                   	retq   
    4289:	90                   	nop

000000000000428a <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E>:
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E():
/usr/include/c++/9/bits/stl_tree.h:1912
      }

  template<typename _Key, typename _Val, typename _KeyOfValue,
	   typename _Compare, typename _Alloc>
    void
    _Rb_tree<_Key, _Val, _KeyOfValue, _Compare, _Alloc>::
    428a:	f3 0f 1e fa          	endbr64 
    428e:	55                   	push   %rbp
    428f:	48 89 e5             	mov    %rsp,%rbp
    4292:	48 83 ec 20          	sub    $0x20,%rsp
    4296:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    429a:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
/usr/include/c++/9/bits/stl_tree.h:1916
    _M_erase(_Link_type __x)
    {
      // Erase without rebalancing.
      while (__x != 0)
    429e:	48 83 7d e0 00       	cmpq   $0x0,-0x20(%rbp)
    42a3:	74 4b                	je     42f0 <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E+0x66>
/usr/include/c++/9/bits/stl_tree.h:1918
	{
	  _M_erase(_S_right(__x));
    42a5:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    42a9:	48 89 c7             	mov    %rax,%rdi
    42ac:	e8 56 0d 00 00       	callq  5007 <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_S_rightEPSt18_Rb_tree_node_base>
    42b1:	48 89 c2             	mov    %rax,%rdx
    42b4:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    42b8:	48 89 d6             	mov    %rdx,%rsi
    42bb:	48 89 c7             	mov    %rax,%rdi
    42be:	e8 c7 ff ff ff       	callq  428a <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E>
/usr/include/c++/9/bits/stl_tree.h:1919
	  _Link_type __y = _S_left(__x);
    42c3:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    42c7:	48 89 c7             	mov    %rax,%rdi
    42ca:	e8 4e 0d 00 00       	callq  501d <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_S_leftEPSt18_Rb_tree_node_base>
    42cf:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
/usr/include/c++/9/bits/stl_tree.h:1920
	  _M_drop_node(__x);
    42d3:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    42d7:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    42db:	48 89 d6             	mov    %rdx,%rsi
    42de:	48 89 c7             	mov    %rax,%rdi
    42e1:	e8 4e 0d 00 00       	callq  5034 <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E>
/usr/include/c++/9/bits/stl_tree.h:1921
	  __x = __y;
    42e6:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    42ea:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
/usr/include/c++/9/bits/stl_tree.h:1916
      while (__x != 0)
    42ee:	eb ae                	jmp    429e <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E+0x14>
/usr/include/c++/9/bits/stl_tree.h:1923
	}
    }
    42f0:	90                   	nop
    42f1:	c9                   	leaveq 
    42f2:	c3                   	retq   
    42f3:	90                   	nop

00000000000042f4 <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_beginEv>:
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_beginEv():
/usr/include/c++/9/bits/stl_tree.h:749
      _M_begin() _GLIBCXX_NOEXCEPT
    42f4:	f3 0f 1e fa          	endbr64 
    42f8:	55                   	push   %rbp
    42f9:	48 89 e5             	mov    %rsp,%rbp
    42fc:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
/usr/include/c++/9/bits/stl_tree.h:750
      { return static_cast<_Link_type>(this->_M_impl._M_header._M_parent); }
    4300:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4304:	48 8b 40 10          	mov    0x10(%rax),%rax
    4308:	5d                   	pop    %rbp
    4309:	c3                   	retq   

000000000000430a <_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE11lower_boundERS9_>:
_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE11lower_boundERS9_():
/usr/include/c++/9/bits/stl_map.h:1257
       *  that matches the given key.  If unsuccessful it returns an iterator
       *  pointing to the first element that has a greater value than given key
       *  or end() if no such element exists.
       */
      iterator
      lower_bound(const key_type& __x)
    430a:	f3 0f 1e fa          	endbr64 
    430e:	55                   	push   %rbp
    430f:	48 89 e5             	mov    %rsp,%rbp
    4312:	48 83 ec 10          	sub    $0x10,%rsp
    4316:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    431a:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
/usr/include/c++/9/bits/stl_map.h:1258
      { return _M_t.lower_bound(__x); }
    431e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4322:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    4326:	48 89 d6             	mov    %rdx,%rsi
    4329:	48 89 c7             	mov    %rax,%rdi
    432c:	e8 41 0d 00 00       	callq  5072 <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE11lower_boundERS7_>
    4331:	c9                   	leaveq 
    4332:	c3                   	retq   
    4333:	90                   	nop

0000000000004334 <_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE8key_compEv>:
_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE8key_compEv():
/usr/include/c++/9/bits/stl_map.h:1141
      key_comp() const
    4334:	f3 0f 1e fa          	endbr64 
    4338:	55                   	push   %rbp
    4339:	48 89 e5             	mov    %rsp,%rbp
    433c:	53                   	push   %rbx
    433d:	48 83 ec 18          	sub    $0x18,%rsp
    4341:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
/usr/include/c++/9/bits/stl_map.h:1142
      { return _M_t.key_comp(); }
    4345:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    4349:	48 89 c7             	mov    %rax,%rdi
    434c:	e8 71 0d 00 00       	callq  50c2 <_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8key_compEv>
    4351:	89 d8                	mov    %ebx,%eax
    4353:	48 83 c4 18          	add    $0x18,%rsp
    4357:	5b                   	pop    %rbx
    4358:	5d                   	pop    %rbp
    4359:	c3                   	retq   

000000000000435a <_ZNKSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEdeEv>:
_ZNKSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEdeEv():
/usr/include/c++/9/bits/stl_tree.h:277
      operator*() const _GLIBCXX_NOEXCEPT
    435a:	f3 0f 1e fa          	endbr64 
    435e:	55                   	push   %rbp
    435f:	48 89 e5             	mov    %rsp,%rbp
    4362:	48 83 ec 10          	sub    $0x10,%rsp
    4366:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
/usr/include/c++/9/bits/stl_tree.h:278
      { return *static_cast<_Link_type>(_M_node)->_M_valptr(); }
    436a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    436e:	48 8b 00             	mov    (%rax),%rax
    4371:	48 89 c7             	mov    %rax,%rdi
    4374:	e8 57 0d 00 00       	callq  50d0 <_ZNSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EE9_M_valptrEv>
    4379:	c9                   	leaveq 
    437a:	c3                   	retq   
    437b:	90                   	nop

000000000000437c <_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_>:
_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_():
/usr/include/c++/9/bits/stl_function.h:385
  template<typename _Tp>
    struct less : public binary_function<_Tp, _Tp, bool>
    {
      _GLIBCXX14_CONSTEXPR
      bool
      operator()(const _Tp& __x, const _Tp& __y) const
    437c:	f3 0f 1e fa          	endbr64 
    4380:	55                   	push   %rbp
    4381:	48 89 e5             	mov    %rsp,%rbp
    4384:	48 83 ec 20          	sub    $0x20,%rsp
    4388:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    438c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    4390:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
/usr/include/c++/9/bits/stl_function.h:386
      { return __x < __y; }
    4394:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    4398:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    439c:	48 89 d6             	mov    %rdx,%rsi
    439f:	48 89 c7             	mov    %rax,%rdi
    43a2:	e8 4b 0d 00 00       	callq  50f2 <_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_>
    43a7:	c9                   	leaveq 
    43a8:	c3                   	retq   
    43a9:	90                   	nop

00000000000043aa <_ZNSt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC1IvLb1EEES7_>:
_ZNSt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IvLb1EEES7_():
/usr/include/c++/9/tuple:588
                   _ConstructibleTuple<_Elements...>()
                 && _TCC<_Dummy>::template
                   _ImplicitlyConvertibleTuple<_Elements...>()
                 && (sizeof...(_Elements) >= 1),
               bool>::type=true>
        constexpr tuple(const _Elements&... __elements)
    43aa:	f3 0f 1e fa          	endbr64 
    43ae:	55                   	push   %rbp
    43af:	48 89 e5             	mov    %rsp,%rbp
    43b2:	48 83 ec 10          	sub    $0x10,%rsp
    43b6:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    43ba:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
/usr/include/c++/9/tuple:589
      : _Inherited(__elements...) { }
    43be:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    43c2:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    43c6:	48 89 d6             	mov    %rdx,%rsi
    43c9:	48 89 c7             	mov    %rax,%rdi
    43cc:	e8 4d 0d 00 00       	callq  511e <_ZNSt11_Tuple_implILm0EJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC1ES7_>
    43d1:	90                   	nop
    43d2:	c9                   	leaveq 
    43d3:	c3                   	retq   

00000000000043d4 <_ZNSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEC1ERKSt17_Rb_tree_iteratorIS8_E>:
_ZNSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEC2ERKSt17_Rb_tree_iteratorIS8_E():
/usr/include/c++/9/bits/stl_tree.h:348
      _Rb_tree_const_iterator(const iterator& __it) _GLIBCXX_NOEXCEPT
    43d4:	f3 0f 1e fa          	endbr64 
    43d8:	55                   	push   %rbp
    43d9:	48 89 e5             	mov    %rsp,%rbp
    43dc:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    43e0:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
/usr/include/c++/9/bits/stl_tree.h:349
      : _M_node(__it._M_node) { }
    43e4:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    43e8:	48 8b 10             	mov    (%rax),%rdx
    43eb:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    43ef:	48 89 10             	mov    %rdx,(%rax)
    43f2:	90                   	nop
    43f3:	5d                   	pop    %rbp
    43f4:	c3                   	retq   
_ZNSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEC1ERKSt17_Rb_tree_iteratorIS8_E():
    43f5:	90                   	nop

00000000000043f6 <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESJ_IJEEEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_>:
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESJ_IJEEEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_():
/usr/include/c++/9/bits/stl_tree.h:2457

  template<typename _Key, typename _Val, typename _KeyOfValue,
	   typename _Compare, typename _Alloc>
    template<typename... _Args>
      typename _Rb_tree<_Key, _Val, _KeyOfValue, _Compare, _Alloc>::iterator
      _Rb_tree<_Key, _Val, _KeyOfValue, _Compare, _Alloc>::
    43f6:	f3 0f 1e fa          	endbr64 
    43fa:	55                   	push   %rbp
    43fb:	48 89 e5             	mov    %rsp,%rbp
    43fe:	41 54                	push   %r12
    4400:	53                   	push   %rbx
    4401:	48 83 ec 60          	sub    $0x60,%rsp
    4405:	48 89 7d b8          	mov    %rdi,-0x48(%rbp)
    4409:	48 89 75 b0          	mov    %rsi,-0x50(%rbp)
    440d:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
    4411:	48 89 4d a0          	mov    %rcx,-0x60(%rbp)
    4415:	4c 89 45 98          	mov    %r8,-0x68(%rbp)
    4419:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    4420:	00 00 
    4422:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    4426:	31 c0                	xor    %eax,%eax
/usr/include/c++/9/bits/stl_tree.h:2460
      _M_emplace_hint_unique(const_iterator __pos, _Args&&... __args)
      {
	_Link_type __z = _M_create_node(std::forward<_Args>(__args)...);
    4428:	48 8b 45 98          	mov    -0x68(%rbp),%rax
    442c:	48 89 c7             	mov    %rax,%rdi
    442f:	e8 38 0d 00 00       	callq  516c <_ZSt7forwardISt5tupleIJEEEOT_RNSt16remove_referenceIS2_E4typeE>
    4434:	49 89 c4             	mov    %rax,%r12
    4437:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
    443b:	48 89 c7             	mov    %rax,%rdi
    443e:	e8 17 0d 00 00       	callq  515a <_ZSt7forwardISt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEOT_RNSt16remove_referenceISA_E4typeE>
    4443:	48 89 c3             	mov    %rax,%rbx
    4446:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
    444a:	48 89 c7             	mov    %rax,%rdi
    444d:	e8 f6 0c 00 00       	callq  5148 <_ZSt7forwardIRKSt21piecewise_construct_tEOT_RNSt16remove_referenceIS3_E4typeE>
    4452:	48 89 c6             	mov    %rax,%rsi
    4455:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    4459:	4c 89 e1             	mov    %r12,%rcx
    445c:	48 89 da             	mov    %rbx,%rdx
    445f:	48 89 c7             	mov    %rax,%rdi
    4462:	e8 17 0d 00 00       	callq  517e <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_create_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESJ_IJEEEEEPSt13_Rb_tree_nodeIS8_EDpOT_>
    4467:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
/usr/include/c++/9/bits/stl_tree.h:2464

	__try
	  {
	    auto __res = _M_get_insert_hint_unique_pos(__pos, _S_key(__z));
    446b:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    446f:	48 89 c7             	mov    %rax,%rdi
    4472:	e8 30 11 00 00       	callq  55a7 <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE6_S_keyEPKSt13_Rb_tree_nodeIS8_E>
    4477:	48 89 c2             	mov    %rax,%rdx
    447a:	48 8b 4d b0          	mov    -0x50(%rbp),%rcx
    447e:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    4482:	48 89 ce             	mov    %rcx,%rsi
    4485:	48 89 c7             	mov    %rax,%rdi
    4488:	e8 71 0d 00 00       	callq  51fe <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS8_ERS7_>
/usr/include/c++/9/bits/stl_tree.h:2464 (discriminator 1)
    448d:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
    4491:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
/usr/include/c++/9/bits/stl_tree.h:2466 (discriminator 1)

	    if (__res.second)
    4495:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    4499:	48 85 c0             	test   %rax,%rax
    449c:	74 1a                	je     44b8 <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESJ_IJEEEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_+0xc2>
/usr/include/c++/9/bits/stl_tree.h:2467
	      return _M_insert_node(__res.first, __res.second, __z);
    449e:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    44a2:	48 8b 75 d0          	mov    -0x30(%rbp),%rsi
    44a6:	48 8b 4d c8          	mov    -0x38(%rbp),%rcx
    44aa:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    44ae:	48 89 c7             	mov    %rax,%rdi
    44b1:	e8 44 11 00 00       	callq  55fa <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_insert_nodeEPSt18_Rb_tree_node_baseSG_PSt13_Rb_tree_nodeIS8_E>
    44b6:	eb 2a                	jmp    44e2 <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESJ_IJEEEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_+0xec>
/usr/include/c++/9/bits/stl_tree.h:2469

	    _M_drop_node(__z);
    44b8:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
    44bc:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    44c0:	48 89 d6             	mov    %rdx,%rsi
    44c3:	48 89 c7             	mov    %rax,%rdi
    44c6:	e8 69 0b 00 00       	callq  5034 <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E>
/usr/include/c++/9/bits/stl_tree.h:2470
	    return iterator(__res.first);
    44cb:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
    44cf:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
    44d3:	48 89 d6             	mov    %rdx,%rsi
    44d6:	48 89 c7             	mov    %rax,%rdi
    44d9:	e8 06 12 00 00       	callq  56e4 <_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEC1EPSt18_Rb_tree_node_base>
    44de:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
/usr/include/c++/9/bits/stl_tree.h:2477 (discriminator 1)
	__catch(...)
	  {
	    _M_drop_node(__z);
	    __throw_exception_again;
	  }
      }
    44e2:	48 8b 5d e8          	mov    -0x18(%rbp),%rbx
    44e6:	64 48 33 1c 25 28 00 	xor    %fs:0x28,%rbx
    44ed:	00 00 
    44ef:	74 42                	je     4533 <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESJ_IJEEEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_+0x13d>
    44f1:	eb 3b                	jmp    452e <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESJ_IJEEEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_+0x138>
    44f3:	f3 0f 1e fa          	endbr64 
/usr/include/c++/9/bits/stl_tree.h:2472
	__catch(...)
    44f7:	48 89 c7             	mov    %rax,%rdi
    44fa:	e8 61 e0 ff ff       	callq  2560 <__cxa_begin_catch@plt>
/usr/include/c++/9/bits/stl_tree.h:2474
	    _M_drop_node(__z);
    44ff:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
    4503:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    4507:	48 89 d6             	mov    %rdx,%rsi
    450a:	48 89 c7             	mov    %rax,%rdi
    450d:	e8 22 0b 00 00       	callq  5034 <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E>
/usr/include/c++/9/bits/stl_tree.h:2475
	    __throw_exception_again;
    4512:	e8 b9 e2 ff ff       	callq  27d0 <__cxa_rethrow@plt>
    4517:	f3 0f 1e fa          	endbr64 
    451b:	48 89 c3             	mov    %rax,%rbx
/usr/include/c++/9/bits/stl_tree.h:2472
	__catch(...)
    451e:	e8 0d e3 ff ff       	callq  2830 <__cxa_end_catch@plt>
    4523:	48 89 d8             	mov    %rbx,%rax
    4526:	48 89 c7             	mov    %rax,%rdi
    4529:	e8 32 e3 ff ff       	callq  2860 <_Unwind_Resume@plt>
/usr/include/c++/9/bits/stl_tree.h:2477
      }
    452e:	e8 ad e1 ff ff       	callq  26e0 <__stack_chk_fail@plt>
    4533:	48 83 c4 60          	add    $0x60,%rsp
    4537:	5b                   	pop    %rbx
    4538:	41 5c                	pop    %r12
    453a:	5d                   	pop    %rbp
    453b:	c3                   	retq   

000000000000453c <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE4findERS7_>:
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE4findERS7_():
/usr/include/c++/9/bits/stl_tree.h:2559

  template<typename _Key, typename _Val, typename _KeyOfValue,
	   typename _Compare, typename _Alloc>
    typename _Rb_tree<_Key, _Val, _KeyOfValue,
		      _Compare, _Alloc>::iterator
    _Rb_tree<_Key, _Val, _KeyOfValue, _Compare, _Alloc>::
    453c:	f3 0f 1e fa          	endbr64 
    4540:	55                   	push   %rbp
    4541:	48 89 e5             	mov    %rsp,%rbp
    4544:	53                   	push   %rbx
    4545:	48 83 ec 38          	sub    $0x38,%rsp
    4549:	48 89 7d c8          	mov    %rdi,-0x38(%rbp)
    454d:	48 89 75 c0          	mov    %rsi,-0x40(%rbp)
    4551:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    4558:	00 00 
    455a:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    455e:	31 c0                	xor    %eax,%eax
/usr/include/c++/9/bits/stl_tree.h:2562
    find(const _Key& __k)
    {
      iterator __j = _M_lower_bound(_M_begin(), _M_end(), __k);
    4560:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    4564:	48 89 c7             	mov    %rax,%rdi
    4567:	e8 96 11 00 00       	callq  5702 <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE6_M_endEv>
    456c:	48 89 c3             	mov    %rax,%rbx
    456f:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    4573:	48 89 c7             	mov    %rax,%rdi
    4576:	e8 79 fd ff ff       	callq  42f4 <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_beginEv>
    457b:	48 89 c6             	mov    %rax,%rsi
    457e:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
    4582:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    4586:	48 89 d1             	mov    %rdx,%rcx
    4589:	48 89 da             	mov    %rbx,%rdx
    458c:	48 89 c7             	mov    %rax,%rdi
    458f:	e8 84 11 00 00       	callq  5718 <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS7_>
    4594:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
/usr/include/c++/9/bits/stl_tree.h:2563
      return (__j == end()
    4598:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    459c:	48 89 c7             	mov    %rax,%rdi
    459f:	e8 6e 00 00 00       	callq  4612 <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE3endEv>
    45a4:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    45a8:	48 8d 55 e0          	lea    -0x20(%rbp),%rdx
    45ac:	48 8d 45 d8          	lea    -0x28(%rbp),%rax
    45b0:	48 89 d6             	mov    %rdx,%rsi
    45b3:	48 89 c7             	mov    %rax,%rdi
    45b6:	e8 15 f7 ff ff       	callq  3cd0 <_ZSteqRKSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EESB_>
/usr/include/c++/9/bits/stl_tree.h:2565
	      || _M_impl._M_key_compare(__k,
					_S_key(__j._M_node))) ? end() : __j;
    45bb:	84 c0                	test   %al,%al
    45bd:	75 26                	jne    45e5 <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE4findERS7_+0xa9>
/usr/include/c++/9/bits/stl_tree.h:2564
	      || _M_impl._M_key_compare(__k,
    45bf:	48 8b 5d c8          	mov    -0x38(%rbp),%rbx
/usr/include/c++/9/bits/stl_tree.h:2565
					_S_key(__j._M_node))) ? end() : __j;
    45c3:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
/usr/include/c++/9/bits/stl_tree.h:2564
	      || _M_impl._M_key_compare(__k,
    45c7:	48 89 c7             	mov    %rax,%rdi
    45ca:	e8 06 12 00 00       	callq  57d5 <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE6_S_keyEPKSt18_Rb_tree_node_base>
    45cf:	48 89 c2             	mov    %rax,%rdx
    45d2:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    45d6:	48 89 c6             	mov    %rax,%rsi
    45d9:	48 89 df             	mov    %rbx,%rdi
    45dc:	e8 9b fd ff ff       	callq  437c <_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_>
    45e1:	84 c0                	test   %al,%al
    45e3:	74 0e                	je     45f3 <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE4findERS7_+0xb7>
/usr/include/c++/9/bits/stl_tree.h:2565 (discriminator 1)
					_S_key(__j._M_node))) ? end() : __j;
    45e5:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    45e9:	48 89 c7             	mov    %rax,%rdi
    45ec:	e8 21 00 00 00       	callq  4612 <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE3endEv>
    45f1:	eb 04                	jmp    45f7 <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE4findERS7_+0xbb>
/usr/include/c++/9/bits/stl_tree.h:2565
    45f3:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
/usr/include/c++/9/bits/stl_tree.h:2566
    }
    45f7:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    45fb:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
    4602:	00 00 
    4604:	74 05                	je     460b <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE4findERS7_+0xcf>
    4606:	e8 d5 e0 ff ff       	callq  26e0 <__stack_chk_fail@plt>
    460b:	48 83 c4 38          	add    $0x38,%rsp
    460f:	5b                   	pop    %rbx
    4610:	5d                   	pop    %rbp
    4611:	c3                   	retq   

0000000000004612 <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE3endEv>:
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE3endEv():
/usr/include/c++/9/bits/stl_tree.h:1019
      end() _GLIBCXX_NOEXCEPT
    4612:	f3 0f 1e fa          	endbr64 
    4616:	55                   	push   %rbp
    4617:	48 89 e5             	mov    %rsp,%rbp
    461a:	48 83 ec 20          	sub    $0x20,%rsp
    461e:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    4622:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    4629:	00 00 
    462b:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    462f:	31 c0                	xor    %eax,%eax
/usr/include/c++/9/bits/stl_tree.h:1020
      { return iterator(&this->_M_impl._M_header); }
    4631:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    4635:	48 8d 50 08          	lea    0x8(%rax),%rdx
    4639:	48 8d 45 f0          	lea    -0x10(%rbp),%rax
    463d:	48 89 d6             	mov    %rdx,%rsi
    4640:	48 89 c7             	mov    %rax,%rdi
    4643:	e8 9c 10 00 00       	callq  56e4 <_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEC1EPSt18_Rb_tree_node_base>
    4648:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    464c:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
    4650:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
    4657:	00 00 
    4659:	74 05                	je     4660 <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE3endEv+0x4e>
    465b:	e8 80 e0 ff ff       	callq  26e0 <__stack_chk_fail@plt>
    4660:	c9                   	leaveq 
    4661:	c3                   	retq   

0000000000004662 <_ZNSt5tupleIJONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC1EOS7_>:
_ZNSt5tupleIJONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2EOS7_():
/usr/include/c++/9/tuple:642
        explicit constexpr tuple(_UElements&&... __elements)
	: _Inherited(std::forward<_UElements>(__elements)...) {	}

      constexpr tuple(const tuple&) = default;

      constexpr tuple(tuple&&) = default;
    4662:	f3 0f 1e fa          	endbr64 
    4666:	55                   	push   %rbp
    4667:	48 89 e5             	mov    %rsp,%rbp
    466a:	48 83 ec 10          	sub    $0x10,%rsp
    466e:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    4672:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    4676:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    467a:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    467e:	48 89 d6             	mov    %rdx,%rsi
    4681:	48 89 c7             	mov    %rax,%rdi
    4684:	e8 b5 11 00 00       	callq  583e <_ZNSt11_Tuple_implILm0EJONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC1EOS7_>
    4689:	90                   	nop
    468a:	c9                   	leaveq 
    468b:	c3                   	retq   

000000000000468c <_ZSt16forward_as_tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt5tupleIJDpOT_EES9_>:
_ZSt16forward_as_tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt5tupleIJDpOT_EES9_():
/usr/include/c++/9/tuple:1482
  // _GLIBCXX_RESOLVE_LIB_DEFECTS
  // 2275. Why is forward_as_tuple not constexpr?
  /// std::forward_as_tuple
  template<typename... _Elements>
    constexpr tuple<_Elements&&...>
    forward_as_tuple(_Elements&&... __args) noexcept
    468c:	f3 0f 1e fa          	endbr64 
    4690:	55                   	push   %rbp
    4691:	48 89 e5             	mov    %rsp,%rbp
    4694:	48 83 ec 10          	sub    $0x10,%rsp
    4698:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    469c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
/usr/include/c++/9/tuple:1483
    { return tuple<_Elements&&...>(std::forward<_Elements>(__args)...); }
    46a0:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    46a4:	48 89 c7             	mov    %rax,%rdi
    46a7:	e8 47 11 00 00       	callq  57f3 <_ZSt7forwardINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS6_E4typeE>
    46ac:	48 89 c2             	mov    %rax,%rdx
    46af:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    46b3:	48 89 d6             	mov    %rdx,%rsi
    46b6:	48 89 c7             	mov    %rax,%rdi
    46b9:	e8 48 11 00 00       	callq  5806 <_ZNSt5tupleIJONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC1IJS5_ELb1EEEDpOT_>
    46be:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    46c2:	c9                   	leaveq 
    46c3:	c3                   	retq   

00000000000046c4 <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS5_EESJ_IJEEEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_>:
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS5_EESJ_IJEEEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_():
/usr/include/c++/9/bits/stl_tree.h:2457
      _Rb_tree<_Key, _Val, _KeyOfValue, _Compare, _Alloc>::
    46c4:	f3 0f 1e fa          	endbr64 
    46c8:	55                   	push   %rbp
    46c9:	48 89 e5             	mov    %rsp,%rbp
    46cc:	41 54                	push   %r12
    46ce:	53                   	push   %rbx
    46cf:	48 83 ec 60          	sub    $0x60,%rsp
    46d3:	48 89 7d b8          	mov    %rdi,-0x48(%rbp)
    46d7:	48 89 75 b0          	mov    %rsi,-0x50(%rbp)
    46db:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
    46df:	48 89 4d a0          	mov    %rcx,-0x60(%rbp)
    46e3:	4c 89 45 98          	mov    %r8,-0x68(%rbp)
    46e7:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    46ee:	00 00 
    46f0:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    46f4:	31 c0                	xor    %eax,%eax
/usr/include/c++/9/bits/stl_tree.h:2460
	_Link_type __z = _M_create_node(std::forward<_Args>(__args)...);
    46f6:	48 8b 45 98          	mov    -0x68(%rbp),%rax
    46fa:	48 89 c7             	mov    %rax,%rdi
    46fd:	e8 6a 0a 00 00       	callq  516c <_ZSt7forwardISt5tupleIJEEEOT_RNSt16remove_referenceIS2_E4typeE>
    4702:	49 89 c4             	mov    %rax,%r12
    4705:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
    4709:	48 89 c7             	mov    %rax,%rdi
    470c:	e8 6d 11 00 00       	callq  587e <_ZSt7forwardISt5tupleIJONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEOT_RNSt16remove_referenceIS9_E4typeE>
    4711:	48 89 c3             	mov    %rax,%rbx
    4714:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
    4718:	48 89 c7             	mov    %rax,%rdi
    471b:	e8 28 0a 00 00       	callq  5148 <_ZSt7forwardIRKSt21piecewise_construct_tEOT_RNSt16remove_referenceIS3_E4typeE>
    4720:	48 89 c6             	mov    %rax,%rsi
    4723:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    4727:	4c 89 e1             	mov    %r12,%rcx
    472a:	48 89 da             	mov    %rbx,%rdx
    472d:	48 89 c7             	mov    %rax,%rdi
    4730:	e8 5b 11 00 00       	callq  5890 <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_create_nodeIJRKSt21piecewise_construct_tSt5tupleIJOS5_EESJ_IJEEEEEPSt13_Rb_tree_nodeIS8_EDpOT_>
    4735:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
/usr/include/c++/9/bits/stl_tree.h:2464
	    auto __res = _M_get_insert_hint_unique_pos(__pos, _S_key(__z));
    4739:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    473d:	48 89 c7             	mov    %rax,%rdi
    4740:	e8 62 0e 00 00       	callq  55a7 <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE6_S_keyEPKSt13_Rb_tree_nodeIS8_E>
    4745:	48 89 c2             	mov    %rax,%rdx
    4748:	48 8b 4d b0          	mov    -0x50(%rbp),%rcx
    474c:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    4750:	48 89 ce             	mov    %rcx,%rsi
    4753:	48 89 c7             	mov    %rax,%rdi
    4756:	e8 a3 0a 00 00       	callq  51fe <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS8_ERS7_>
/usr/include/c++/9/bits/stl_tree.h:2464 (discriminator 1)
    475b:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
    475f:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
/usr/include/c++/9/bits/stl_tree.h:2466 (discriminator 1)
	    if (__res.second)
    4763:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    4767:	48 85 c0             	test   %rax,%rax
    476a:	74 1a                	je     4786 <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS5_EESJ_IJEEEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_+0xc2>
/usr/include/c++/9/bits/stl_tree.h:2467
	      return _M_insert_node(__res.first, __res.second, __z);
    476c:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    4770:	48 8b 75 d0          	mov    -0x30(%rbp),%rsi
    4774:	48 8b 4d c8          	mov    -0x38(%rbp),%rcx
    4778:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    477c:	48 89 c7             	mov    %rax,%rdi
    477f:	e8 76 0e 00 00       	callq  55fa <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_insert_nodeEPSt18_Rb_tree_node_baseSG_PSt13_Rb_tree_nodeIS8_E>
    4784:	eb 2a                	jmp    47b0 <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS5_EESJ_IJEEEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_+0xec>
/usr/include/c++/9/bits/stl_tree.h:2469
	    _M_drop_node(__z);
    4786:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
    478a:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    478e:	48 89 d6             	mov    %rdx,%rsi
    4791:	48 89 c7             	mov    %rax,%rdi
    4794:	e8 9b 08 00 00       	callq  5034 <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E>
/usr/include/c++/9/bits/stl_tree.h:2470
	    return iterator(__res.first);
    4799:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
    479d:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
    47a1:	48 89 d6             	mov    %rdx,%rsi
    47a4:	48 89 c7             	mov    %rax,%rdi
    47a7:	e8 38 0f 00 00       	callq  56e4 <_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEC1EPSt18_Rb_tree_node_base>
    47ac:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
/usr/include/c++/9/bits/stl_tree.h:2477 (discriminator 1)
      }
    47b0:	48 8b 5d e8          	mov    -0x18(%rbp),%rbx
    47b4:	64 48 33 1c 25 28 00 	xor    %fs:0x28,%rbx
    47bb:	00 00 
    47bd:	74 42                	je     4801 <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS5_EESJ_IJEEEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_+0x13d>
    47bf:	eb 3b                	jmp    47fc <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS5_EESJ_IJEEEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_+0x138>
    47c1:	f3 0f 1e fa          	endbr64 
/usr/include/c++/9/bits/stl_tree.h:2472
	__catch(...)
    47c5:	48 89 c7             	mov    %rax,%rdi
    47c8:	e8 93 dd ff ff       	callq  2560 <__cxa_begin_catch@plt>
/usr/include/c++/9/bits/stl_tree.h:2474
	    _M_drop_node(__z);
    47cd:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
    47d1:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    47d5:	48 89 d6             	mov    %rdx,%rsi
    47d8:	48 89 c7             	mov    %rax,%rdi
    47db:	e8 54 08 00 00       	callq  5034 <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E>
/usr/include/c++/9/bits/stl_tree.h:2475
	    __throw_exception_again;
    47e0:	e8 eb df ff ff       	callq  27d0 <__cxa_rethrow@plt>
    47e5:	f3 0f 1e fa          	endbr64 
    47e9:	48 89 c3             	mov    %rax,%rbx
/usr/include/c++/9/bits/stl_tree.h:2472
	__catch(...)
    47ec:	e8 3f e0 ff ff       	callq  2830 <__cxa_end_catch@plt>
    47f1:	48 89 d8             	mov    %rbx,%rax
    47f4:	48 89 c7             	mov    %rax,%rdi
    47f7:	e8 64 e0 ff ff       	callq  2860 <_Unwind_Resume@plt>
/usr/include/c++/9/bits/stl_tree.h:2477
      }
    47fc:	e8 df de ff ff       	callq  26e0 <__stack_chk_fail@plt>
    4801:	48 83 c4 60          	add    $0x60,%rsp
    4805:	5b                   	pop    %rbx
    4806:	41 5c                	pop    %r12
    4808:	5d                   	pop    %rbp
    4809:	c3                   	retq   

000000000000480a <_ZNSaIiEC1Ev>:
_ZNSaIiEC2Ev():
/usr/include/c++/9/bits/allocator.h:137
    480a:	f3 0f 1e fa          	endbr64 
    480e:	55                   	push   %rbp
    480f:	48 89 e5             	mov    %rsp,%rbp
    4812:	48 83 ec 10          	sub    $0x10,%rsp
    4816:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    481a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    481e:	48 89 c7             	mov    %rax,%rdi
    4821:	e8 ea 10 00 00       	callq  5910 <_ZN9__gnu_cxx13new_allocatorIiEC1Ev>
    4826:	90                   	nop
    4827:	c9                   	leaveq 
    4828:	c3                   	retq   
    4829:	90                   	nop

000000000000482a <_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC1Ev>:
_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev():
/usr/include/c++/9/bits/stl_vector.h:94
	_Vector_impl_data() _GLIBCXX_NOEXCEPT
    482a:	f3 0f 1e fa          	endbr64 
    482e:	55                   	push   %rbp
    482f:	48 89 e5             	mov    %rsp,%rbp
    4832:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
/usr/include/c++/9/bits/stl_vector.h:95
	: _M_start(), _M_finish(), _M_end_of_storage()
    4836:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    483a:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
    4841:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4845:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
    484c:	00 
    484d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4851:	48 c7 40 10 00 00 00 	movq   $0x0,0x10(%rax)
    4858:	00 
/usr/include/c++/9/bits/stl_vector.h:96
	{ }
    4859:	90                   	nop
    485a:	5d                   	pop    %rbp
    485b:	c3                   	retq   

000000000000485c <_ZN9__gnu_cxx13new_allocatorIiED1Ev>:
_ZN9__gnu_cxx13new_allocatorIiED2Ev():
/usr/include/c++/9/ext/new_allocator.h:89
    485c:	f3 0f 1e fa          	endbr64 
    4860:	55                   	push   %rbp
    4861:	48 89 e5             	mov    %rsp,%rbp
    4864:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    4868:	90                   	nop
    4869:	5d                   	pop    %rbp
    486a:	c3                   	retq   
    486b:	90                   	nop

000000000000486c <_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim>:
_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim():
/usr/include/c++/9/bits/stl_vector.h:347
      _M_deallocate(pointer __p, size_t __n)
    486c:	f3 0f 1e fa          	endbr64 
    4870:	55                   	push   %rbp
    4871:	48 89 e5             	mov    %rsp,%rbp
    4874:	48 83 ec 20          	sub    $0x20,%rsp
    4878:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    487c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    4880:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
/usr/include/c++/9/bits/stl_vector.h:350
	if (__p)
    4884:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
    4889:	74 17                	je     48a2 <_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim+0x36>
/usr/include/c++/9/bits/stl_vector.h:351
	  _Tr::deallocate(_M_impl, __p, __n);
    488b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    488f:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    4893:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
    4897:	48 89 ce             	mov    %rcx,%rsi
    489a:	48 89 c7             	mov    %rax,%rdi
    489d:	e8 7d 10 00 00       	callq  591f <_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim>
/usr/include/c++/9/bits/stl_vector.h:352
      }
    48a2:	90                   	nop
    48a3:	c9                   	leaveq 
    48a4:	c3                   	retq   
    48a5:	90                   	nop

00000000000048a6 <_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv>:
_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv():
/usr/include/c++/9/bits/stl_vector.h:273
      _M_get_Tp_allocator() _GLIBCXX_NOEXCEPT
    48a6:	f3 0f 1e fa          	endbr64 
    48aa:	55                   	push   %rbp
    48ab:	48 89 e5             	mov    %rsp,%rbp
    48ae:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
/usr/include/c++/9/bits/stl_vector.h:274
      { return this->_M_impl; }
    48b2:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    48b6:	5d                   	pop    %rbp
    48b7:	c3                   	retq   

00000000000048b8 <_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E>:
_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E():
/usr/include/c++/9/bits/stl_construct.h:203
	__traits::destroy(__alloc, std::__addressof(*__first));
    }

  template<typename _ForwardIterator, typename _Tp>
    inline void
    _Destroy(_ForwardIterator __first, _ForwardIterator __last,
    48b8:	f3 0f 1e fa          	endbr64 
    48bc:	55                   	push   %rbp
    48bd:	48 89 e5             	mov    %rsp,%rbp
    48c0:	48 83 ec 20          	sub    $0x20,%rsp
    48c4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    48c8:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    48cc:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
/usr/include/c++/9/bits/stl_construct.h:206
	     allocator<_Tp>&)
    {
      _Destroy(__first, __last);
    48d0:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    48d4:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    48d8:	48 89 d6             	mov    %rdx,%rsi
    48db:	48 89 c7             	mov    %rax,%rdi
    48de:	e8 6e 10 00 00       	callq  5951 <_ZSt8_DestroyIPiEvT_S1_>
/usr/include/c++/9/bits/stl_construct.h:207
    }
    48e3:	90                   	nop
    48e4:	c9                   	leaveq 
    48e5:	c3                   	retq   

00000000000048e6 <_ZNSt16allocator_traitsISaIiEE9constructIiJRKiEEEvRS0_PT_DpOT0_>:
_ZNSt16allocator_traitsISaIiEE9constructIiJRKiEEEvRS0_PT_DpOT0_():
/usr/include/c++/9/bits/alloc_traits.h:481
       *
       *  Calls <tt> __a.construct(__p, std::forward<Args>(__args)...) </tt>
      */
      template<typename _Up, typename... _Args>
	static void
	construct(allocator_type& __a, _Up* __p, _Args&&... __args)
    48e6:	f3 0f 1e fa          	endbr64 
    48ea:	55                   	push   %rbp
    48eb:	48 89 e5             	mov    %rsp,%rbp
    48ee:	48 83 ec 20          	sub    $0x20,%rsp
    48f2:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    48f6:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    48fa:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
/usr/include/c++/9/bits/alloc_traits.h:483
	noexcept(std::is_nothrow_constructible<_Up, _Args...>::value)
	{ __a.construct(__p, std::forward<_Args>(__args)...); }
    48fe:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    4902:	48 89 c7             	mov    %rax,%rdi
    4905:	e8 71 10 00 00       	callq  597b <_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE>
    490a:	48 89 c2             	mov    %rax,%rdx
    490d:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
    4911:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4915:	48 89 ce             	mov    %rcx,%rsi
    4918:	48 89 c7             	mov    %rax,%rdi
    491b:	e8 6e 10 00 00       	callq  598e <_ZN9__gnu_cxx13new_allocatorIiE9constructIiJRKiEEEvPT_DpOT0_>
    4920:	90                   	nop
    4921:	c9                   	leaveq 
    4922:	c3                   	retq   
    4923:	90                   	nop

0000000000004924 <_ZNSt6vectorIiSaIiEE3endEv>:
_ZNSt6vectorIiSaIiEE3endEv():
/usr/include/c++/9/bits/stl_vector.h:826
      end() _GLIBCXX_NOEXCEPT
    4924:	f3 0f 1e fa          	endbr64 
    4928:	55                   	push   %rbp
    4929:	48 89 e5             	mov    %rsp,%rbp
    492c:	48 83 ec 20          	sub    $0x20,%rsp
    4930:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    4934:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    493b:	00 00 
    493d:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    4941:	31 c0                	xor    %eax,%eax
/usr/include/c++/9/bits/stl_vector.h:827
      { return iterator(this->_M_impl._M_finish); }
    4943:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    4947:	48 8d 50 08          	lea    0x8(%rax),%rdx
    494b:	48 8d 45 f0          	lea    -0x10(%rbp),%rax
    494f:	48 89 d6             	mov    %rdx,%rsi
    4952:	48 89 c7             	mov    %rax,%rdi
    4955:	e8 76 10 00 00       	callq  59d0 <_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC1ERKS1_>
    495a:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    495e:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
    4962:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
    4969:	00 00 
    496b:	74 05                	je     4972 <_ZNSt6vectorIiSaIiEE3endEv+0x4e>
    496d:	e8 6e dd ff ff       	callq  26e0 <__stack_chk_fail@plt>
    4972:	c9                   	leaveq 
    4973:	c3                   	retq   

0000000000004974 <_ZNSt6vectorIiSaIiEE15_S_use_relocateEv>:
_ZNSt6vectorIiSaIiEE15_S_use_relocateEv():
/usr/include/c++/9/bits/stl_vector.h:441
      _S_use_relocate()
    4974:	f3 0f 1e fa          	endbr64 
    4978:	55                   	push   %rbp
    4979:	48 89 e5             	mov    %rsp,%rbp
    497c:	48 83 ec 10          	sub    $0x10,%rsp
    4980:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    4987:	00 00 
    4989:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    498d:	31 c0                	xor    %eax,%eax
/usr/include/c++/9/bits/stl_vector.h:446
	return _S_nothrow_relocate(__is_move_insertable<_Tp_alloc_type>{});
    498f:	e8 16 00 00 00       	callq  49aa <_ZNSt6vectorIiSaIiEE19_S_nothrow_relocateESt17integral_constantIbLb1EE>
/usr/include/c++/9/bits/stl_vector.h:447
      }
    4994:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    4998:	64 48 33 14 25 28 00 	xor    %fs:0x28,%rdx
    499f:	00 00 
    49a1:	74 05                	je     49a8 <_ZNSt6vectorIiSaIiEE15_S_use_relocateEv+0x34>
    49a3:	e8 38 dd ff ff       	callq  26e0 <__stack_chk_fail@plt>
    49a8:	c9                   	leaveq 
    49a9:	c3                   	retq   

00000000000049aa <_ZNSt6vectorIiSaIiEE19_S_nothrow_relocateESt17integral_constantIbLb1EE>:
_ZNSt6vectorIiSaIiEE19_S_nothrow_relocateESt17integral_constantIbLb1EE():
/usr/include/c++/9/bits/stl_vector.h:428
      _S_nothrow_relocate(true_type)
    49aa:	f3 0f 1e fa          	endbr64 
    49ae:	55                   	push   %rbp
    49af:	48 89 e5             	mov    %rsp,%rbp
/usr/include/c++/9/bits/stl_vector.h:433
					  std::declval<_Tp_alloc_type&>()));
    49b2:	b8 01 00 00 00       	mov    $0x1,%eax
/usr/include/c++/9/bits/stl_vector.h:434
      }
    49b7:	5d                   	pop    %rbp
    49b8:	c3                   	retq   
    49b9:	90                   	nop

00000000000049ba <_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_>:
_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_():
/usr/include/c++/9/bits/vector.tcc:426

#if __cplusplus >= 201103L
  template<typename _Tp, typename _Alloc>
    template<typename... _Args>
      void
      vector<_Tp, _Alloc>::
    49ba:	f3 0f 1e fa          	endbr64 
    49be:	55                   	push   %rbp
    49bf:	48 89 e5             	mov    %rsp,%rbp
    49c2:	53                   	push   %rbx
    49c3:	48 83 ec 68          	sub    $0x68,%rsp
    49c7:	48 89 7d a8          	mov    %rdi,-0x58(%rbp)
    49cb:	48 89 75 a0          	mov    %rsi,-0x60(%rbp)
    49cf:	48 89 55 98          	mov    %rdx,-0x68(%rbp)
    49d3:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    49da:	00 00 
    49dc:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    49e0:	31 c0                	xor    %eax,%eax
/usr/include/c++/9/bits/vector.tcc:435
    void
    vector<_Tp, _Alloc>::
    _M_realloc_insert(iterator __position, const _Tp& __x)
#endif
    {
      const size_type __len =
    49e2:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
    49e6:	48 8d 15 54 5a 00 00 	lea    0x5a54(%rip),%rdx        # a441 <_ZL12total_events+0x435>
    49ed:	be 01 00 00 00       	mov    $0x1,%esi
    49f2:	48 89 c7             	mov    %rax,%rdi
    49f5:	e8 f8 0f 00 00       	callq  59f2 <_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc>
    49fa:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
/usr/include/c++/9/bits/vector.tcc:437
	_M_check_len(size_type(1), "vector::_M_realloc_insert");
      pointer __old_start = this->_M_impl._M_start;
    49fe:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
    4a02:	48 8b 00             	mov    (%rax),%rax
    4a05:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
/usr/include/c++/9/bits/vector.tcc:438
      pointer __old_finish = this->_M_impl._M_finish;
    4a09:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
    4a0d:	48 8b 40 08          	mov    0x8(%rax),%rax
    4a11:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
/usr/include/c++/9/bits/vector.tcc:439
      const size_type __elems_before = __position - begin();
    4a15:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
    4a19:	48 89 c7             	mov    %rax,%rdi
    4a1c:	e8 c1 10 00 00       	callq  5ae2 <_ZNSt6vectorIiSaIiEE5beginEv>
    4a21:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
    4a25:	48 8d 55 b0          	lea    -0x50(%rbp),%rdx
    4a29:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
    4a2d:	48 89 d6             	mov    %rdx,%rsi
    4a30:	48 89 c7             	mov    %rax,%rdi
    4a33:	e8 f6 10 00 00       	callq  5b2e <_ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_>
    4a38:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
/usr/include/c++/9/bits/vector.tcc:440
      pointer __new_start(this->_M_allocate(__len));
    4a3c:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
    4a40:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
    4a44:	48 89 d6             	mov    %rdx,%rsi
    4a47:	48 89 c7             	mov    %rax,%rdi
    4a4a:	e8 23 11 00 00       	callq  5b72 <_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm>
    4a4f:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
/usr/include/c++/9/bits/vector.tcc:441
      pointer __new_finish(__new_start);
    4a53:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    4a57:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
/usr/include/c++/9/bits/vector.tcc:449
	  // The order of the three operations is dictated by the C++11
	  // case, where the moves could alter a new element belonging
	  // to the existing vector.  This is an issue only for callers
	  // taking the element by lvalue ref (see last bullet of C++11
	  // [res.on.arguments]).
	  _Alloc_traits::construct(this->_M_impl,
    4a5b:	48 8b 45 98          	mov    -0x68(%rbp),%rax
    4a5f:	48 89 c7             	mov    %rax,%rdi
    4a62:	e8 14 0f 00 00       	callq  597b <_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE>
    4a67:	48 89 c2             	mov    %rax,%rdx
/usr/include/c++/9/bits/vector.tcc:450
				   __new_start + __elems_before,
    4a6a:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    4a6e:	48 8d 0c 85 00 00 00 	lea    0x0(,%rax,4),%rcx
    4a75:	00 
/usr/include/c++/9/bits/vector.tcc:449
	  _Alloc_traits::construct(this->_M_impl,
    4a76:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    4a7a:	48 01 c1             	add    %rax,%rcx
    4a7d:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
    4a81:	48 89 ce             	mov    %rcx,%rsi
    4a84:	48 89 c7             	mov    %rax,%rdi
    4a87:	e8 5a fe ff ff       	callq  48e6 <_ZNSt16allocator_traitsISaIiEE9constructIiJRKiEEEvRS0_PT_DpOT0_>
/usr/include/c++/9/bits/vector.tcc:456
#if __cplusplus >= 201103L
				   std::forward<_Args>(__args)...);
#else
				   __x);
#endif
	  __new_finish = pointer();
    4a8c:	48 c7 45 b8 00 00 00 	movq   $0x0,-0x48(%rbp)
    4a93:	00 
/usr/include/c++/9/bits/vector.tcc:459

#if __cplusplus >= 201103L
	  if _GLIBCXX17_CONSTEXPR (_S_use_relocate())
    4a94:	e8 db fe ff ff       	callq  4974 <_ZNSt6vectorIiSaIiEE15_S_use_relocateEv>
    4a99:	84 c0                	test   %al,%al
    4a9b:	74 71                	je     4b0e <_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_+0x154>
/usr/include/c++/9/bits/vector.tcc:462
	    {
	      __new_finish = _S_relocate(__old_start, __position.base(),
					 __new_start, _M_get_Tp_allocator());
    4a9d:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
    4aa1:	48 89 c7             	mov    %rax,%rdi
    4aa4:	e8 fd fd ff ff       	callq  48a6 <_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv>
    4aa9:	48 89 c3             	mov    %rax,%rbx
/usr/include/c++/9/bits/vector.tcc:461
	      __new_finish = _S_relocate(__old_start, __position.base(),
    4aac:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
    4ab0:	48 89 c7             	mov    %rax,%rdi
    4ab3:	e8 4a 11 00 00       	callq  5c02 <_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv>
    4ab8:	48 8b 30             	mov    (%rax),%rsi
    4abb:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    4abf:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    4ac3:	48 89 d9             	mov    %rbx,%rcx
    4ac6:	48 89 c7             	mov    %rax,%rdi
    4ac9:	e8 db 10 00 00       	callq  5ba9 <_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_>
    4ace:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
/usr/include/c++/9/bits/vector.tcc:464

	      ++__new_finish;
    4ad2:	48 83 45 b8 04       	addq   $0x4,-0x48(%rbp)
/usr/include/c++/9/bits/vector.tcc:467

	      __new_finish = _S_relocate(__position.base(), __old_finish,
					 __new_finish, _M_get_Tp_allocator());
    4ad7:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
    4adb:	48 89 c7             	mov    %rax,%rdi
    4ade:	e8 c3 fd ff ff       	callq  48a6 <_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv>
    4ae3:	48 89 c3             	mov    %rax,%rbx
/usr/include/c++/9/bits/vector.tcc:466
	      __new_finish = _S_relocate(__position.base(), __old_finish,
    4ae6:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
    4aea:	48 89 c7             	mov    %rax,%rdi
    4aed:	e8 10 11 00 00       	callq  5c02 <_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv>
    4af2:	48 8b 00             	mov    (%rax),%rax
    4af5:	48 8b 55 b8          	mov    -0x48(%rbp),%rdx
    4af9:	48 8b 75 d0          	mov    -0x30(%rbp),%rsi
    4afd:	48 89 d9             	mov    %rbx,%rcx
    4b00:	48 89 c7             	mov    %rax,%rdi
    4b03:	e8 a1 10 00 00       	callq  5ba9 <_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_>
    4b08:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
    4b0c:	eb 6f                	jmp    4b7d <_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_+0x1c3>
/usr/include/c++/9/bits/vector.tcc:475
#endif
	    {
	      __new_finish
		= std::__uninitialized_move_if_noexcept_a
		(__old_start, __position.base(),
		 __new_start, _M_get_Tp_allocator());
    4b0e:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
    4b12:	48 89 c7             	mov    %rax,%rdi
    4b15:	e8 8c fd ff ff       	callq  48a6 <_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv>
    4b1a:	48 89 c3             	mov    %rax,%rbx
/usr/include/c++/9/bits/vector.tcc:474
		(__old_start, __position.base(),
    4b1d:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
    4b21:	48 89 c7             	mov    %rax,%rdi
    4b24:	e8 d9 10 00 00       	callq  5c02 <_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv>
    4b29:	48 8b 30             	mov    (%rax),%rsi
    4b2c:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    4b30:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    4b34:	48 89 d9             	mov    %rbx,%rcx
    4b37:	48 89 c7             	mov    %rax,%rdi
    4b3a:	e8 d5 10 00 00       	callq  5c14 <_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_>
    4b3f:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
/usr/include/c++/9/bits/vector.tcc:477

	      ++__new_finish;
    4b43:	48 83 45 b8 04       	addq   $0x4,-0x48(%rbp)
/usr/include/c++/9/bits/vector.tcc:482

	      __new_finish
		= std::__uninitialized_move_if_noexcept_a
		(__position.base(), __old_finish,
		 __new_finish, _M_get_Tp_allocator());
    4b48:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
    4b4c:	48 89 c7             	mov    %rax,%rdi
    4b4f:	e8 52 fd ff ff       	callq  48a6 <_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv>
    4b54:	48 89 c3             	mov    %rax,%rbx
/usr/include/c++/9/bits/vector.tcc:481
		(__position.base(), __old_finish,
    4b57:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
    4b5b:	48 89 c7             	mov    %rax,%rdi
    4b5e:	e8 9f 10 00 00       	callq  5c02 <_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv>
    4b63:	48 8b 00             	mov    (%rax),%rax
    4b66:	48 8b 55 b8          	mov    -0x48(%rbp),%rdx
    4b6a:	48 8b 75 d0          	mov    -0x30(%rbp),%rsi
    4b6e:	48 89 d9             	mov    %rbx,%rcx
    4b71:	48 89 c7             	mov    %rax,%rdi
    4b74:	e8 9b 10 00 00       	callq  5c14 <_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_>
/usr/include/c++/9/bits/vector.tcc:481 (discriminator 1)
    4b79:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
/usr/include/c++/9/bits/vector.tcc:496
	    std::_Destroy(__new_start, __new_finish, _M_get_Tp_allocator());
	  _M_deallocate(__new_start, __len);
	  __throw_exception_again;
	}
#if __cplusplus >= 201103L
      if _GLIBCXX17_CONSTEXPR (!_S_use_relocate())
    4b7d:	e8 f2 fd ff ff       	callq  4974 <_ZNSt6vectorIiSaIiEE15_S_use_relocateEv>
    4b82:	83 f0 01             	xor    $0x1,%eax
    4b85:	84 c0                	test   %al,%al
    4b87:	74 22                	je     4bab <_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_+0x1f1>
/usr/include/c++/9/bits/vector.tcc:498
#endif
	std::_Destroy(__old_start, __old_finish, _M_get_Tp_allocator());
    4b89:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
    4b8d:	48 89 c7             	mov    %rax,%rdi
    4b90:	e8 11 fd ff ff       	callq  48a6 <_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv>
    4b95:	48 89 c2             	mov    %rax,%rdx
    4b98:	48 8b 4d d0          	mov    -0x30(%rbp),%rcx
    4b9c:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    4ba0:	48 89 ce             	mov    %rcx,%rsi
    4ba3:	48 89 c7             	mov    %rax,%rdi
    4ba6:	e8 0d fd ff ff       	callq  48b8 <_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E>
/usr/include/c++/9/bits/vector.tcc:500
      _GLIBCXX_ASAN_ANNOTATE_REINIT;
      _M_deallocate(__old_start,
    4bab:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
/usr/include/c++/9/bits/vector.tcc:501
		    this->_M_impl._M_end_of_storage - __old_start);
    4baf:	48 8b 55 a8          	mov    -0x58(%rbp),%rdx
    4bb3:	48 8b 52 10          	mov    0x10(%rdx),%rdx
    4bb7:	48 2b 55 c8          	sub    -0x38(%rbp),%rdx
    4bbb:	48 c1 fa 02          	sar    $0x2,%rdx
/usr/include/c++/9/bits/vector.tcc:500
      _M_deallocate(__old_start,
    4bbf:	48 8b 4d c8          	mov    -0x38(%rbp),%rcx
    4bc3:	48 89 ce             	mov    %rcx,%rsi
    4bc6:	48 89 c7             	mov    %rax,%rdi
    4bc9:	e8 9e fc ff ff       	callq  486c <_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim>
/usr/include/c++/9/bits/vector.tcc:502
      this->_M_impl._M_start = __new_start;
    4bce:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
    4bd2:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    4bd6:	48 89 10             	mov    %rdx,(%rax)
/usr/include/c++/9/bits/vector.tcc:503
      this->_M_impl._M_finish = __new_finish;
    4bd9:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
    4bdd:	48 8b 55 b8          	mov    -0x48(%rbp),%rdx
    4be1:	48 89 50 08          	mov    %rdx,0x8(%rax)
/usr/include/c++/9/bits/vector.tcc:504
      this->_M_impl._M_end_of_storage = __new_start + __len;
    4be5:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    4be9:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
    4bf0:	00 
    4bf1:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    4bf5:	48 01 c2             	add    %rax,%rdx
    4bf8:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
    4bfc:	48 89 50 10          	mov    %rdx,0x10(%rax)
/usr/include/c++/9/bits/vector.tcc:505
    }
    4c00:	90                   	nop
    4c01:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    4c05:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    4c0c:	00 00 
    4c0e:	0f 84 96 00 00 00    	je     4caa <_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_+0x2f0>
    4c14:	e9 8c 00 00 00       	jmpq   4ca5 <_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_+0x2eb>
    4c19:	f3 0f 1e fa          	endbr64 
/usr/include/c++/9/bits/vector.tcc:485
      __catch(...)
    4c1d:	48 89 c7             	mov    %rax,%rdi
    4c20:	e8 3b d9 ff ff       	callq  2560 <__cxa_begin_catch@plt>
/usr/include/c++/9/bits/vector.tcc:487
	  if (!__new_finish)
    4c25:	48 83 7d b8 00       	cmpq   $0x0,-0x48(%rbp)
    4c2a:	75 24                	jne    4c50 <_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_+0x296>
/usr/include/c++/9/bits/vector.tcc:489
				   __new_start + __elems_before);
    4c2c:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    4c30:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
    4c37:	00 
/usr/include/c++/9/bits/vector.tcc:488
	    _Alloc_traits::destroy(this->_M_impl,
    4c38:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    4c3c:	48 01 c2             	add    %rax,%rdx
    4c3f:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
    4c43:	48 89 d6             	mov    %rdx,%rsi
    4c46:	48 89 c7             	mov    %rax,%rdi
    4c49:	e8 1e 10 00 00       	callq  5c6c <_ZNSt16allocator_traitsISaIiEE7destroyIiEEvRS0_PT_>
    4c4e:	eb 22                	jmp    4c72 <_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_+0x2b8>
/usr/include/c++/9/bits/vector.tcc:491
	    std::_Destroy(__new_start, __new_finish, _M_get_Tp_allocator());
    4c50:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
    4c54:	48 89 c7             	mov    %rax,%rdi
    4c57:	e8 4a fc ff ff       	callq  48a6 <_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv>
    4c5c:	48 89 c2             	mov    %rax,%rdx
    4c5f:	48 8b 4d b8          	mov    -0x48(%rbp),%rcx
    4c63:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    4c67:	48 89 ce             	mov    %rcx,%rsi
    4c6a:	48 89 c7             	mov    %rax,%rdi
    4c6d:	e8 46 fc ff ff       	callq  48b8 <_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E>
/usr/include/c++/9/bits/vector.tcc:492
	  _M_deallocate(__new_start, __len);
    4c72:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
    4c76:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
    4c7a:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    4c7e:	48 89 ce             	mov    %rcx,%rsi
    4c81:	48 89 c7             	mov    %rax,%rdi
    4c84:	e8 e3 fb ff ff       	callq  486c <_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim>
/usr/include/c++/9/bits/vector.tcc:493
	  __throw_exception_again;
    4c89:	e8 42 db ff ff       	callq  27d0 <__cxa_rethrow@plt>
    4c8e:	f3 0f 1e fa          	endbr64 
    4c92:	48 89 c3             	mov    %rax,%rbx
/usr/include/c++/9/bits/vector.tcc:485
      __catch(...)
    4c95:	e8 96 db ff ff       	callq  2830 <__cxa_end_catch@plt>
    4c9a:	48 89 d8             	mov    %rbx,%rax
    4c9d:	48 89 c7             	mov    %rax,%rdi
    4ca0:	e8 bb db ff ff       	callq  2860 <_Unwind_Resume@plt>
/usr/include/c++/9/bits/vector.tcc:505
    }
    4ca5:	e8 36 da ff ff       	callq  26e0 <__stack_chk_fail@plt>
    4caa:	48 83 c4 68          	add    $0x68,%rsp
    4cae:	5b                   	pop    %rbx
    4caf:	5d                   	pop    %rbp
    4cb0:	c3                   	retq   
    4cb1:	90                   	nop

0000000000004cb2 <_ZN9__gnu_cxx13new_allocatorIPKcEC1Ev>:
_ZN9__gnu_cxx13new_allocatorIPKcEC2Ev():
/usr/include/c++/9/ext/new_allocator.h:80
      new_allocator() _GLIBCXX_USE_NOEXCEPT { }
    4cb2:	f3 0f 1e fa          	endbr64 
    4cb6:	55                   	push   %rbp
    4cb7:	48 89 e5             	mov    %rsp,%rbp
    4cba:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    4cbe:	90                   	nop
    4cbf:	5d                   	pop    %rbp
    4cc0:	c3                   	retq   
_ZN9__gnu_cxx13new_allocatorIPKcEC1Ev():
    4cc1:	90                   	nop

0000000000004cc2 <_ZN9__gnu_cxx13new_allocatorIPKcED1Ev>:
_ZN9__gnu_cxx13new_allocatorIPKcED2Ev():
/usr/include/c++/9/ext/new_allocator.h:89
      ~new_allocator() _GLIBCXX_USE_NOEXCEPT { }
    4cc2:	f3 0f 1e fa          	endbr64 
    4cc6:	55                   	push   %rbp
    4cc7:	48 89 e5             	mov    %rsp,%rbp
    4cca:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    4cce:	90                   	nop
    4ccf:	5d                   	pop    %rbp
    4cd0:	c3                   	retq   
    4cd1:	90                   	nop

0000000000004cd2 <_ZNSt12_Vector_baseIPKcSaIS1_EE12_Vector_implD1Ev>:
_ZNSt12_Vector_baseIPKcSaIS1_EE12_Vector_implD2Ev():
/usr/include/c++/9/bits/stl_vector.h:125
      struct _Vector_impl
    4cd2:	f3 0f 1e fa          	endbr64 
    4cd6:	55                   	push   %rbp
    4cd7:	48 89 e5             	mov    %rsp,%rbp
    4cda:	48 83 ec 10          	sub    $0x10,%rsp
    4cde:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    4ce2:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4ce6:	48 89 c7             	mov    %rax,%rdi
    4ce9:	e8 16 f3 ff ff       	callq  4004 <_ZNSaIPKcED1Ev>
    4cee:	90                   	nop
    4cef:	c9                   	leaveq 
    4cf0:	c3                   	retq   
    4cf1:	90                   	nop

0000000000004cf2 <_ZNSt12_Vector_baseIPKcSaIS1_EEC1ERKS2_>:
_ZNSt12_Vector_baseIPKcSaIS1_EEC2ERKS2_():
/usr/include/c++/9/bits/stl_vector.h:290
      _Vector_base(const allocator_type& __a) _GLIBCXX_NOEXCEPT
    4cf2:	f3 0f 1e fa          	endbr64 
    4cf6:	55                   	push   %rbp
    4cf7:	48 89 e5             	mov    %rsp,%rbp
    4cfa:	48 83 ec 10          	sub    $0x10,%rsp
    4cfe:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    4d02:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
/usr/include/c++/9/bits/stl_vector.h:291
      : _M_impl(__a) { }
    4d06:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4d0a:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    4d0e:	48 89 d6             	mov    %rdx,%rsi
    4d11:	48 89 c7             	mov    %rax,%rdi
    4d14:	e8 7d 0f 00 00       	callq  5c96 <_ZNSt12_Vector_baseIPKcSaIS1_EE12_Vector_implC1ERKS2_>
    4d19:	90                   	nop
    4d1a:	c9                   	leaveq 
    4d1b:	c3                   	retq   

0000000000004d1c <_ZNSt12_Vector_baseIPKcSaIS1_EED1Ev>:
_ZNSt12_Vector_baseIPKcSaIS1_EED2Ev():
/usr/include/c++/9/bits/stl_vector.h:330
      ~_Vector_base() _GLIBCXX_NOEXCEPT
    4d1c:	f3 0f 1e fa          	endbr64 
    4d20:	55                   	push   %rbp
    4d21:	48 89 e5             	mov    %rsp,%rbp
    4d24:	48 83 ec 10          	sub    $0x10,%rsp
    4d28:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
/usr/include/c++/9/bits/stl_vector.h:333
		      _M_impl._M_end_of_storage - _M_impl._M_start);
    4d2c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4d30:	48 8b 50 10          	mov    0x10(%rax),%rdx
    4d34:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4d38:	48 8b 00             	mov    (%rax),%rax
    4d3b:	48 29 c2             	sub    %rax,%rdx
    4d3e:	48 89 d0             	mov    %rdx,%rax
    4d41:	48 c1 f8 03          	sar    $0x3,%rax
/usr/include/c++/9/bits/stl_vector.h:332
	_M_deallocate(_M_impl._M_start,
    4d45:	48 89 c2             	mov    %rax,%rdx
    4d48:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4d4c:	48 8b 08             	mov    (%rax),%rcx
    4d4f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4d53:	48 89 ce             	mov    %rcx,%rsi
    4d56:	48 89 c7             	mov    %rax,%rdi
    4d59:	e8 6e 0f 00 00       	callq  5ccc <_ZNSt12_Vector_baseIPKcSaIS1_EE13_M_deallocateEPS1_m>
/usr/include/c++/9/bits/stl_vector.h:334
      }
    4d5e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4d62:	48 89 c7             	mov    %rax,%rdi
    4d65:	e8 68 ff ff ff       	callq  4cd2 <_ZNSt12_Vector_baseIPKcSaIS1_EE12_Vector_implD1Ev>
    4d6a:	90                   	nop
    4d6b:	c9                   	leaveq 
    4d6c:	c3                   	retq   
    4d6d:	90                   	nop

0000000000004d6e <_ZNKSt16initializer_listIPKcE5beginEv>:
_ZNKSt16initializer_listIPKcE5beginEv():
/usr/include/c++/9/initializer_list:75
      constexpr size_type
      size() const noexcept { return _M_len; }

      // First element.
      constexpr const_iterator
      begin() const noexcept { return _M_array; }
    4d6e:	f3 0f 1e fa          	endbr64 
    4d72:	55                   	push   %rbp
    4d73:	48 89 e5             	mov    %rsp,%rbp
    4d76:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    4d7a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4d7e:	48 8b 00             	mov    (%rax),%rax
    4d81:	5d                   	pop    %rbp
    4d82:	c3                   	retq   
    4d83:	90                   	nop

0000000000004d84 <_ZNKSt16initializer_listIPKcE3endEv>:
_ZNKSt16initializer_listIPKcE3endEv():
/usr/include/c++/9/initializer_list:79

      // One past the last element.
      constexpr const_iterator
      end() const noexcept { return begin() + size(); }
    4d84:	f3 0f 1e fa          	endbr64 
    4d88:	55                   	push   %rbp
    4d89:	48 89 e5             	mov    %rsp,%rbp
    4d8c:	53                   	push   %rbx
    4d8d:	48 83 ec 18          	sub    $0x18,%rsp
    4d91:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    4d95:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    4d99:	48 89 c7             	mov    %rax,%rdi
    4d9c:	e8 cd ff ff ff       	callq  4d6e <_ZNKSt16initializer_listIPKcE5beginEv>
    4da1:	48 89 c3             	mov    %rax,%rbx
    4da4:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    4da8:	48 89 c7             	mov    %rax,%rdi
    4dab:	e8 56 0f 00 00       	callq  5d06 <_ZNKSt16initializer_listIPKcE4sizeEv>
    4db0:	48 c1 e0 03          	shl    $0x3,%rax
    4db4:	48 01 d8             	add    %rbx,%rax
    4db7:	48 83 c4 18          	add    $0x18,%rsp
    4dbb:	5b                   	pop    %rbx
    4dbc:	5d                   	pop    %rbp
    4dbd:	c3                   	retq   

0000000000004dbe <_ZNSt6vectorIPKcSaIS1_EE19_M_range_initializeIPKS1_EEvT_S7_St20forward_iterator_tag>:
_ZNSt6vectorIPKcSaIS1_EE19_M_range_initializeIPKS1_EEvT_S7_St20forward_iterator_tag():
/usr/include/c++/9/bits/stl_vector.h:1574
	}

      // Called by the second initialize_dispatch above
      template<typename _ForwardIterator>
	void
	_M_range_initialize(_ForwardIterator __first, _ForwardIterator __last,
    4dbe:	f3 0f 1e fa          	endbr64 
    4dc2:	55                   	push   %rbp
    4dc3:	48 89 e5             	mov    %rsp,%rbp
    4dc6:	53                   	push   %rbx
    4dc7:	48 83 ec 38          	sub    $0x38,%rsp
    4dcb:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    4dcf:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    4dd3:	48 89 55 c8          	mov    %rdx,-0x38(%rbp)
/usr/include/c++/9/bits/stl_vector.h:1577
			    std::forward_iterator_tag)
	{
	  const size_type __n = std::distance(__first, __last);
    4dd7:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
    4ddb:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    4ddf:	48 89 d6             	mov    %rdx,%rsi
    4de2:	48 89 c7             	mov    %rax,%rdi
    4de5:	e8 32 0f 00 00       	callq  5d1c <_ZSt8distanceIPKPKcENSt15iterator_traitsIT_E15difference_typeES5_S5_>
    4dea:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
/usr/include/c++/9/bits/stl_vector.h:1579
	  this->_M_impl._M_start
	    = this->_M_allocate(_S_check_init_len(__n, _M_get_Tp_allocator()));
    4dee:	48 8b 5d d8          	mov    -0x28(%rbp),%rbx
    4df2:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    4df6:	48 89 c7             	mov    %rax,%rdi
    4df9:	e8 74 00 00 00       	callq  4e72 <_ZNSt12_Vector_baseIPKcSaIS1_EE19_M_get_Tp_allocatorEv>
    4dfe:	48 89 c2             	mov    %rax,%rdx
    4e01:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    4e05:	48 89 d6             	mov    %rdx,%rsi
    4e08:	48 89 c7             	mov    %rax,%rdi
    4e0b:	e8 b8 00 00 00       	callq  4ec8 <_ZNSt6vectorIPKcSaIS1_EE17_S_check_init_lenEmRKS2_>
    4e10:	48 89 c6             	mov    %rax,%rsi
    4e13:	48 89 df             	mov    %rbx,%rdi
    4e16:	e8 59 0f 00 00       	callq  5d74 <_ZNSt12_Vector_baseIPKcSaIS1_EE11_M_allocateEm>
/usr/include/c++/9/bits/stl_vector.h:1578
	  this->_M_impl._M_start
    4e1b:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    4e1f:	48 89 02             	mov    %rax,(%rdx)
/usr/include/c++/9/bits/stl_vector.h:1580
	  this->_M_impl._M_end_of_storage = this->_M_impl._M_start + __n;
    4e22:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    4e26:	48 8b 00             	mov    (%rax),%rax
    4e29:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    4e2d:	48 c1 e2 03          	shl    $0x3,%rdx
    4e31:	48 01 c2             	add    %rax,%rdx
    4e34:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    4e38:	48 89 50 10          	mov    %rdx,0x10(%rax)
/usr/include/c++/9/bits/stl_vector.h:1584
	  this->_M_impl._M_finish =
	    std::__uninitialized_copy_a(__first, __last,
					this->_M_impl._M_start,
					_M_get_Tp_allocator());
    4e3c:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    4e40:	48 89 c7             	mov    %rax,%rdi
    4e43:	e8 2a 00 00 00       	callq  4e72 <_ZNSt12_Vector_baseIPKcSaIS1_EE19_M_get_Tp_allocatorEv>
    4e48:	48 89 c1             	mov    %rax,%rcx
/usr/include/c++/9/bits/stl_vector.h:1582
	    std::__uninitialized_copy_a(__first, __last,
    4e4b:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    4e4f:	48 8b 10             	mov    (%rax),%rdx
    4e52:	48 8b 75 c8          	mov    -0x38(%rbp),%rsi
    4e56:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    4e5a:	48 89 c7             	mov    %rax,%rdi
    4e5d:	e8 49 0f 00 00       	callq  5dab <_ZSt22__uninitialized_copy_aIPKPKcPS1_S1_ET0_T_S6_S5_RSaIT1_E>
/usr/include/c++/9/bits/stl_vector.h:1581
	  this->_M_impl._M_finish =
    4e62:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    4e66:	48 89 42 08          	mov    %rax,0x8(%rdx)
/usr/include/c++/9/bits/stl_vector.h:1585
	}
    4e6a:	90                   	nop
    4e6b:	48 83 c4 38          	add    $0x38,%rsp
    4e6f:	5b                   	pop    %rbx
    4e70:	5d                   	pop    %rbp
    4e71:	c3                   	retq   

0000000000004e72 <_ZNSt12_Vector_baseIPKcSaIS1_EE19_M_get_Tp_allocatorEv>:
_ZNSt12_Vector_baseIPKcSaIS1_EE19_M_get_Tp_allocatorEv():
/usr/include/c++/9/bits/stl_vector.h:273
      _M_get_Tp_allocator() _GLIBCXX_NOEXCEPT
    4e72:	f3 0f 1e fa          	endbr64 
    4e76:	55                   	push   %rbp
    4e77:	48 89 e5             	mov    %rsp,%rbp
    4e7a:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
/usr/include/c++/9/bits/stl_vector.h:274
      { return this->_M_impl; }
    4e7e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4e82:	5d                   	pop    %rbp
    4e83:	c3                   	retq   

0000000000004e84 <_ZSt8_DestroyIPPKcS1_EvT_S3_RSaIT0_E>:
_ZSt8_DestroyIPPKcS1_EvT_S3_RSaIT0_E():
/usr/include/c++/9/bits/stl_construct.h:203
    _Destroy(_ForwardIterator __first, _ForwardIterator __last,
    4e84:	f3 0f 1e fa          	endbr64 
    4e88:	55                   	push   %rbp
    4e89:	48 89 e5             	mov    %rsp,%rbp
    4e8c:	48 83 ec 20          	sub    $0x20,%rsp
    4e90:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    4e94:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    4e98:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
/usr/include/c++/9/bits/stl_construct.h:206
      _Destroy(__first, __last);
    4e9c:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    4ea0:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4ea4:	48 89 d6             	mov    %rdx,%rsi
    4ea7:	48 89 c7             	mov    %rax,%rdi
    4eaa:	e8 31 0f 00 00       	callq  5de0 <_ZSt8_DestroyIPPKcEvT_S3_>
/usr/include/c++/9/bits/stl_construct.h:207
    }
    4eaf:	90                   	nop
    4eb0:	c9                   	leaveq 
    4eb1:	c3                   	retq   

0000000000004eb2 <_ZNKSt6vectorIPKcSaIS1_EE11_M_data_ptrIS1_EEPT_S6_>:
_ZNKSt6vectorIPKcSaIS1_EE11_M_data_ptrIS1_EEPT_S6_():
/usr/include/c++/9/bits/stl_vector.h:1840
      }
#endif

      template<typename _Up>
	_Up*
	_M_data_ptr(_Up* __ptr) const _GLIBCXX_NOEXCEPT
    4eb2:	f3 0f 1e fa          	endbr64 
    4eb6:	55                   	push   %rbp
    4eb7:	48 89 e5             	mov    %rsp,%rbp
    4eba:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    4ebe:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
/usr/include/c++/9/bits/stl_vector.h:1841
	{ return __ptr; }
    4ec2:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    4ec6:	5d                   	pop    %rbp
    4ec7:	c3                   	retq   

0000000000004ec8 <_ZNSt6vectorIPKcSaIS1_EE17_S_check_init_lenEmRKS2_>:
_ZNSt6vectorIPKcSaIS1_EE17_S_check_init_lenEmRKS2_():
/usr/include/c++/9/bits/stl_vector.h:1764
      _S_check_init_len(size_type __n, const allocator_type& __a)
    4ec8:	f3 0f 1e fa          	endbr64 
    4ecc:	55                   	push   %rbp
    4ecd:	48 89 e5             	mov    %rsp,%rbp
    4ed0:	53                   	push   %rbx
    4ed1:	48 83 ec 28          	sub    $0x28,%rsp
    4ed5:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    4ed9:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    4edd:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    4ee4:	00 00 
    4ee6:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    4eea:	31 c0                	xor    %eax,%eax
/usr/include/c++/9/bits/stl_vector.h:1766
	if (__n > _S_max_size(_Tp_alloc_type(__a)))
    4eec:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
    4ef0:	48 8d 45 e7          	lea    -0x19(%rbp),%rax
    4ef4:	48 89 d6             	mov    %rdx,%rsi
    4ef7:	48 89 c7             	mov    %rax,%rdi
    4efa:	e8 75 0f 00 00       	callq  5e74 <_ZNSaIPKcEC1ERKS1_>
    4eff:	48 8d 45 e7          	lea    -0x19(%rbp),%rax
    4f03:	48 89 c7             	mov    %rax,%rdi
    4f06:	e8 ff 0e 00 00       	callq  5e0a <_ZNSt6vectorIPKcSaIS1_EE11_S_max_sizeERKS2_>
    4f0b:	48 39 45 d8          	cmp    %rax,-0x28(%rbp)
    4f0f:	0f 97 c3             	seta   %bl
    4f12:	48 8d 45 e7          	lea    -0x19(%rbp),%rax
    4f16:	48 89 c7             	mov    %rax,%rdi
    4f19:	e8 e6 f0 ff ff       	callq  4004 <_ZNSaIPKcED1Ev>
    4f1e:	84 db                	test   %bl,%bl
    4f20:	74 0c                	je     4f2e <_ZNSt6vectorIPKcSaIS1_EE17_S_check_init_lenEmRKS2_+0x66>
/usr/include/c++/9/bits/stl_vector.h:1767
	  __throw_length_error(
    4f22:	48 8d 3d 37 55 00 00 	lea    0x5537(%rip),%rdi        # a460 <_ZL12total_events+0x454>
    4f29:	e8 62 d6 ff ff       	callq  2590 <_ZSt20__throw_length_errorPKc@plt>
/usr/include/c++/9/bits/stl_vector.h:1769
	return __n;
    4f2e:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
/usr/include/c++/9/bits/stl_vector.h:1770
      }
    4f32:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    4f36:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
    4f3d:	00 00 
    4f3f:	74 05                	je     4f46 <_ZNSt6vectorIPKcSaIS1_EE17_S_check_init_lenEmRKS2_+0x7e>
    4f41:	e8 9a d7 ff ff       	callq  26e0 <__stack_chk_fail@plt>
    4f46:	48 83 c4 28          	add    $0x28,%rsp
    4f4a:	5b                   	pop    %rbx
    4f4b:	5d                   	pop    %rbp
    4f4c:	c3                   	retq   
    4f4d:	90                   	nop

0000000000004f4e <_ZNSt12_Vector_baseIPKcSaIS1_EEC1EmRKS2_>:
_ZNSt12_Vector_baseIPKcSaIS1_EEC2EmRKS2_():
/usr/include/c++/9/bits/stl_vector.h:300
      _Vector_base(size_t __n, const allocator_type& __a)
    4f4e:	f3 0f 1e fa          	endbr64 
    4f52:	55                   	push   %rbp
    4f53:	48 89 e5             	mov    %rsp,%rbp
    4f56:	53                   	push   %rbx
    4f57:	48 83 ec 28          	sub    $0x28,%rsp
    4f5b:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    4f5f:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    4f63:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
/usr/include/c++/9/bits/stl_vector.h:301
      : _M_impl(__a)
    4f67:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    4f6b:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    4f6f:	48 89 d6             	mov    %rdx,%rsi
    4f72:	48 89 c7             	mov    %rax,%rdi
    4f75:	e8 1c 0d 00 00       	callq  5c96 <_ZNSt12_Vector_baseIPKcSaIS1_EE12_Vector_implC1ERKS2_>
/usr/include/c++/9/bits/stl_vector.h:302
      { _M_create_storage(__n); }
    4f7a:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    4f7e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    4f82:	48 89 d6             	mov    %rdx,%rsi
    4f85:	48 89 c7             	mov    %rax,%rdi
    4f88:	e8 11 0f 00 00       	callq  5e9e <_ZNSt12_Vector_baseIPKcSaIS1_EE17_M_create_storageEm>
    4f8d:	eb 1e                	jmp    4fad <_ZNSt12_Vector_baseIPKcSaIS1_EEC1EmRKS2_+0x5f>
    4f8f:	f3 0f 1e fa          	endbr64 
    4f93:	48 89 c3             	mov    %rax,%rbx
/usr/include/c++/9/bits/stl_vector.h:301
      : _M_impl(__a)
    4f96:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    4f9a:	48 89 c7             	mov    %rax,%rdi
    4f9d:	e8 30 fd ff ff       	callq  4cd2 <_ZNSt12_Vector_baseIPKcSaIS1_EE12_Vector_implD1Ev>
    4fa2:	48 89 d8             	mov    %rbx,%rax
    4fa5:	48 89 c7             	mov    %rax,%rdi
    4fa8:	e8 b3 d8 ff ff       	callq  2860 <_Unwind_Resume@plt>
/usr/include/c++/9/bits/stl_vector.h:302
      { _M_create_storage(__n); }
    4fad:	48 83 c4 28          	add    $0x28,%rsp
    4fb1:	5b                   	pop    %rbx
    4fb2:	5d                   	pop    %rbp
    4fb3:	c3                   	retq   

0000000000004fb4 <_ZNSt6vectorIPKcSaIS1_EE21_M_default_initializeEm>:
_ZNSt6vectorIPKcSaIS1_EE21_M_default_initializeEm():
/usr/include/c++/9/bits/stl_vector.h:1600
      _M_default_initialize(size_type __n)
    4fb4:	f3 0f 1e fa          	endbr64 
    4fb8:	55                   	push   %rbp
    4fb9:	48 89 e5             	mov    %rsp,%rbp
    4fbc:	48 83 ec 10          	sub    $0x10,%rsp
    4fc0:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    4fc4:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
/usr/include/c++/9/bits/stl_vector.h:1604
					   _M_get_Tp_allocator());
    4fc8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4fcc:	48 89 c7             	mov    %rax,%rdi
    4fcf:	e8 9e fe ff ff       	callq  4e72 <_ZNSt12_Vector_baseIPKcSaIS1_EE19_M_get_Tp_allocatorEv>
    4fd4:	48 89 c2             	mov    %rax,%rdx
/usr/include/c++/9/bits/stl_vector.h:1603
	  std::__uninitialized_default_n_a(this->_M_impl._M_start, __n,
    4fd7:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4fdb:	48 8b 00             	mov    (%rax),%rax
    4fde:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
    4fe2:	48 89 ce             	mov    %rcx,%rsi
    4fe5:	48 89 c7             	mov    %rax,%rdi
    4fe8:	e8 0b 0f 00 00       	callq  5ef8 <_ZSt27__uninitialized_default_n_aIPPKcmS1_ET_S3_T0_RSaIT1_E>
/usr/include/c++/9/bits/stl_vector.h:1602
	this->_M_impl._M_finish =
    4fed:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    4ff1:	48 89 42 08          	mov    %rax,0x8(%rdx)
/usr/include/c++/9/bits/stl_vector.h:1605
      }
    4ff5:	90                   	nop
    4ff6:	c9                   	leaveq 
    4ff7:	c3                   	retq   

0000000000004ff8 <_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EEEC1Ev>:
_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EEEC2Ev():
/usr/include/c++/9/ext/new_allocator.h:80
      new_allocator() _GLIBCXX_USE_NOEXCEPT { }
    4ff8:	f3 0f 1e fa          	endbr64 
    4ffc:	55                   	push   %rbp
    4ffd:	48 89 e5             	mov    %rsp,%rbp
    5000:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    5004:	90                   	nop
    5005:	5d                   	pop    %rbp
    5006:	c3                   	retq   

0000000000005007 <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_S_rightEPSt18_Rb_tree_node_base>:
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_S_rightEPSt18_Rb_tree_node_base():
/usr/include/c++/9/bits/stl_tree.h:802
      _S_right(_Base_ptr __x) _GLIBCXX_NOEXCEPT
    5007:	f3 0f 1e fa          	endbr64 
    500b:	55                   	push   %rbp
    500c:	48 89 e5             	mov    %rsp,%rbp
    500f:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
/usr/include/c++/9/bits/stl_tree.h:803
      { return static_cast<_Link_type>(__x->_M_right); }
    5013:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5017:	48 8b 40 18          	mov    0x18(%rax),%rax
    501b:	5d                   	pop    %rbp
    501c:	c3                   	retq   

000000000000501d <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_S_leftEPSt18_Rb_tree_node_base>:
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_S_leftEPSt18_Rb_tree_node_base():
/usr/include/c++/9/bits/stl_tree.h:794
      _S_left(_Base_ptr __x) _GLIBCXX_NOEXCEPT
    501d:	f3 0f 1e fa          	endbr64 
    5021:	55                   	push   %rbp
    5022:	48 89 e5             	mov    %rsp,%rbp
    5025:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
/usr/include/c++/9/bits/stl_tree.h:795
      { return static_cast<_Link_type>(__x->_M_left); }
    5029:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    502d:	48 8b 40 10          	mov    0x10(%rax),%rax
    5031:	5d                   	pop    %rbp
    5032:	c3                   	retq   
    5033:	90                   	nop

0000000000005034 <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E>:
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E():
/usr/include/c++/9/bits/stl_tree.h:648
      _M_drop_node(_Link_type __p) _GLIBCXX_NOEXCEPT
    5034:	f3 0f 1e fa          	endbr64 
    5038:	55                   	push   %rbp
    5039:	48 89 e5             	mov    %rsp,%rbp
    503c:	48 83 ec 10          	sub    $0x10,%rsp
    5040:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    5044:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
/usr/include/c++/9/bits/stl_tree.h:650
	_M_destroy_node(__p);
    5048:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    504c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5050:	48 89 d6             	mov    %rdx,%rsi
    5053:	48 89 c7             	mov    %rax,%rdi
    5056:	e8 cb 0e 00 00       	callq  5f26 <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS8_E>
/usr/include/c++/9/bits/stl_tree.h:651
	_M_put_node(__p);
    505b:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    505f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5063:	48 89 d6             	mov    %rdx,%rsi
    5066:	48 89 c7             	mov    %rax,%rdi
    5069:	e8 fc 0e 00 00       	callq  5f6a <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS8_E>
/usr/include/c++/9/bits/stl_tree.h:652
      }
    506e:	90                   	nop
    506f:	c9                   	leaveq 
    5070:	c3                   	retq   
    5071:	90                   	nop

0000000000005072 <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE11lower_boundERS7_>:
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE11lower_boundERS7_():
/usr/include/c++/9/bits/stl_tree.h:1286
      lower_bound(const key_type& __k)
    5072:	f3 0f 1e fa          	endbr64 
    5076:	55                   	push   %rbp
    5077:	48 89 e5             	mov    %rsp,%rbp
    507a:	53                   	push   %rbx
    507b:	48 83 ec 18          	sub    $0x18,%rsp
    507f:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    5083:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
/usr/include/c++/9/bits/stl_tree.h:1287
      { return _M_lower_bound(_M_begin(), _M_end(), __k); }
    5087:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    508b:	48 89 c7             	mov    %rax,%rdi
    508e:	e8 6f 06 00 00       	callq  5702 <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE6_M_endEv>
    5093:	48 89 c3             	mov    %rax,%rbx
    5096:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    509a:	48 89 c7             	mov    %rax,%rdi
    509d:	e8 52 f2 ff ff       	callq  42f4 <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_beginEv>
    50a2:	48 89 c6             	mov    %rax,%rsi
    50a5:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    50a9:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    50ad:	48 89 d1             	mov    %rdx,%rcx
    50b0:	48 89 da             	mov    %rbx,%rdx
    50b3:	48 89 c7             	mov    %rax,%rdi
    50b6:	e8 5d 06 00 00       	callq  5718 <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS7_>
    50bb:	48 83 c4 18          	add    $0x18,%rsp
    50bf:	5b                   	pop    %rbx
    50c0:	5d                   	pop    %rbp
    50c1:	c3                   	retq   

00000000000050c2 <_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8key_compEv>:
_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8key_compEv():
/usr/include/c++/9/bits/stl_tree.h:1007
      key_comp() const
    50c2:	f3 0f 1e fa          	endbr64 
    50c6:	55                   	push   %rbp
    50c7:	48 89 e5             	mov    %rsp,%rbp
    50ca:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
/usr/include/c++/9/bits/stl_tree.h:1008
      { return _M_impl._M_key_compare; }
    50ce:	5d                   	pop    %rbp
    50cf:	c3                   	retq   

00000000000050d0 <_ZNSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EE9_M_valptrEv>:
_ZNSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EE9_M_valptrEv():
/usr/include/c++/9/bits/stl_tree.h:234
      _M_valptr()
    50d0:	f3 0f 1e fa          	endbr64 
    50d4:	55                   	push   %rbp
    50d5:	48 89 e5             	mov    %rsp,%rbp
    50d8:	48 83 ec 10          	sub    $0x10,%rsp
    50dc:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
/usr/include/c++/9/bits/stl_tree.h:235
      { return _M_storage._M_ptr(); }
    50e0:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    50e4:	48 83 c0 20          	add    $0x20,%rax
    50e8:	48 89 c7             	mov    %rax,%rdi
    50eb:	e8 b4 0e 00 00       	callq  5fa4 <_ZN9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EE6_M_ptrEv>
    50f0:	c9                   	leaveq 
    50f1:	c3                   	retq   

00000000000050f2 <_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_>:
_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_():
/usr/include/c++/9/bits/basic_string.h:6229
   *  @param __rhs  Second string.
   *  @return  True if @a __lhs precedes @a __rhs.  False otherwise.
   */
  template<typename _CharT, typename _Traits, typename _Alloc>
    inline bool
    operator<(const basic_string<_CharT, _Traits, _Alloc>& __lhs,
    50f2:	f3 0f 1e fa          	endbr64 
    50f6:	55                   	push   %rbp
    50f7:	48 89 e5             	mov    %rsp,%rbp
    50fa:	48 83 ec 10          	sub    $0x10,%rsp
    50fe:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    5102:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
/usr/include/c++/9/bits/basic_string.h:6232
	      const basic_string<_CharT, _Traits, _Alloc>& __rhs)
    _GLIBCXX_NOEXCEPT
    { return __lhs.compare(__rhs) < 0; }
    5106:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    510a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    510e:	48 89 d6             	mov    %rdx,%rsi
    5111:	48 89 c7             	mov    %rax,%rdi
    5114:	e8 77 d3 ff ff       	callq  2490 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_@plt>
    5119:	c1 e8 1f             	shr    $0x1f,%eax
    511c:	c9                   	leaveq 
    511d:	c3                   	retq   

000000000000511e <_ZNSt11_Tuple_implILm0EJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC1ES7_>:
_ZNSt11_Tuple_implILm0EJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2ES7_():
/usr/include/c++/9/tuple:343
      constexpr _Tuple_impl(const _Head& __head)
    511e:	f3 0f 1e fa          	endbr64 
    5122:	55                   	push   %rbp
    5123:	48 89 e5             	mov    %rsp,%rbp
    5126:	48 83 ec 10          	sub    $0x10,%rsp
    512a:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    512e:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
/usr/include/c++/9/tuple:344
      : _Base(__head) { }
    5132:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5136:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    513a:	48 89 d6             	mov    %rdx,%rsi
    513d:	48 89 c7             	mov    %rax,%rdi
    5140:	e8 ad 0e 00 00       	callq  5ff2 <_ZNSt10_Head_baseILm0ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EEC1ES7_>
    5145:	90                   	nop
    5146:	c9                   	leaveq 
    5147:	c3                   	retq   

0000000000005148 <_ZSt7forwardIRKSt21piecewise_construct_tEOT_RNSt16remove_referenceIS3_E4typeE>:
_ZSt7forwardIRKSt21piecewise_construct_tEOT_RNSt16remove_referenceIS3_E4typeE():
/usr/include/c++/9/bits/move.h:74
    forward(typename std::remove_reference<_Tp>::type& __t) noexcept
    5148:	f3 0f 1e fa          	endbr64 
    514c:	55                   	push   %rbp
    514d:	48 89 e5             	mov    %rsp,%rbp
    5150:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
/usr/include/c++/9/bits/move.h:75
    { return static_cast<_Tp&&>(__t); }
    5154:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5158:	5d                   	pop    %rbp
    5159:	c3                   	retq   

000000000000515a <_ZSt7forwardISt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEOT_RNSt16remove_referenceISA_E4typeE>:
_ZSt7forwardISt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEOT_RNSt16remove_referenceISA_E4typeE():
/usr/include/c++/9/bits/move.h:74
    forward(typename std::remove_reference<_Tp>::type& __t) noexcept
    515a:	f3 0f 1e fa          	endbr64 
    515e:	55                   	push   %rbp
    515f:	48 89 e5             	mov    %rsp,%rbp
    5162:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
/usr/include/c++/9/bits/move.h:75
    { return static_cast<_Tp&&>(__t); }
    5166:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    516a:	5d                   	pop    %rbp
    516b:	c3                   	retq   

000000000000516c <_ZSt7forwardISt5tupleIJEEEOT_RNSt16remove_referenceIS2_E4typeE>:
_ZSt7forwardISt5tupleIJEEEOT_RNSt16remove_referenceIS2_E4typeE():
/usr/include/c++/9/bits/move.h:74
    forward(typename std::remove_reference<_Tp>::type& __t) noexcept
    516c:	f3 0f 1e fa          	endbr64 
    5170:	55                   	push   %rbp
    5171:	48 89 e5             	mov    %rsp,%rbp
    5174:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
/usr/include/c++/9/bits/move.h:75
    { return static_cast<_Tp&&>(__t); }
    5178:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    517c:	5d                   	pop    %rbp
    517d:	c3                   	retq   

000000000000517e <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_create_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESJ_IJEEEEEPSt13_Rb_tree_nodeIS8_EDpOT_>:
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_create_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESJ_IJEEEEEPSt13_Rb_tree_nodeIS8_EDpOT_():
/usr/include/c++/9/bits/stl_tree.h:628
	_M_create_node(_Args&&... __args)
    517e:	f3 0f 1e fa          	endbr64 
    5182:	55                   	push   %rbp
    5183:	48 89 e5             	mov    %rsp,%rbp
    5186:	41 54                	push   %r12
    5188:	53                   	push   %rbx
    5189:	48 83 ec 30          	sub    $0x30,%rsp
    518d:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    5191:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    5195:	48 89 55 c8          	mov    %rdx,-0x38(%rbp)
    5199:	48 89 4d c0          	mov    %rcx,-0x40(%rbp)
/usr/include/c++/9/bits/stl_tree.h:630
	  _Link_type __tmp = _M_get_node();
    519d:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    51a1:	48 89 c7             	mov    %rax,%rdi
    51a4:	e8 67 0e 00 00       	callq  6010 <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE11_M_get_nodeEv>
    51a9:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
/usr/include/c++/9/bits/stl_tree.h:631
	  _M_construct_node(__tmp, std::forward<_Args>(__args)...);
    51ad:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    51b1:	48 89 c7             	mov    %rax,%rdi
    51b4:	e8 b3 ff ff ff       	callq  516c <_ZSt7forwardISt5tupleIJEEEOT_RNSt16remove_referenceIS2_E4typeE>
    51b9:	49 89 c4             	mov    %rax,%r12
    51bc:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    51c0:	48 89 c7             	mov    %rax,%rdi
    51c3:	e8 92 ff ff ff       	callq  515a <_ZSt7forwardISt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEOT_RNSt16remove_referenceISA_E4typeE>
    51c8:	48 89 c3             	mov    %rax,%rbx
    51cb:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    51cf:	48 89 c7             	mov    %rax,%rdi
    51d2:	e8 71 ff ff ff       	callq  5148 <_ZSt7forwardIRKSt21piecewise_construct_tEOT_RNSt16remove_referenceIS3_E4typeE>
    51d7:	48 89 c2             	mov    %rax,%rdx
    51da:	48 8b 75 e8          	mov    -0x18(%rbp),%rsi
    51de:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    51e2:	4d 89 e0             	mov    %r12,%r8
    51e5:	48 89 d9             	mov    %rbx,%rcx
    51e8:	48 89 c7             	mov    %rax,%rdi
    51eb:	e8 4c 0e 00 00       	callq  603c <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESJ_IJEEEEEvPSt13_Rb_tree_nodeIS8_EDpOT_>
/usr/include/c++/9/bits/stl_tree.h:632
	  return __tmp;
    51f0:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
/usr/include/c++/9/bits/stl_tree.h:633
	}
    51f4:	48 83 c4 30          	add    $0x30,%rsp
    51f8:	5b                   	pop    %rbx
    51f9:	41 5c                	pop    %r12
    51fb:	5d                   	pop    %rbp
    51fc:	c3                   	retq   
    51fd:	90                   	nop

00000000000051fe <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS8_ERS7_>:
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS8_ERS7_():
/usr/include/c++/9/bits/stl_tree.h:2192
    _Rb_tree<_Key, _Val, _KeyOfValue, _Compare, _Alloc>::
    51fe:	f3 0f 1e fa          	endbr64 
    5202:	55                   	push   %rbp
    5203:	48 89 e5             	mov    %rsp,%rbp
    5206:	53                   	push   %rbx
    5207:	48 83 ec 68          	sub    $0x68,%rsp
    520b:	48 89 7d a8          	mov    %rdi,-0x58(%rbp)
    520f:	48 89 75 a0          	mov    %rsi,-0x60(%rbp)
    5213:	48 89 55 98          	mov    %rdx,-0x68(%rbp)
    5217:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    521e:	00 00 
    5220:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    5224:	31 c0                	xor    %eax,%eax
/usr/include/c++/9/bits/stl_tree.h:2196
      iterator __pos = __position._M_const_cast();
    5226:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
    522a:	48 89 c7             	mov    %rax,%rdi
    522d:	e8 e8 0e 00 00       	callq  611a <_ZNKSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EE13_M_const_castEv>
    5232:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
/usr/include/c++/9/bits/stl_tree.h:2200
      if (__pos._M_node == _M_end())
    5236:	48 8b 5d b8          	mov    -0x48(%rbp),%rbx
    523a:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
    523e:	48 89 c7             	mov    %rax,%rdi
    5241:	e8 bc 04 00 00       	callq  5702 <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE6_M_endEv>
    5246:	48 39 c3             	cmp    %rax,%rbx
    5249:	0f 94 c0             	sete   %al
    524c:	84 c0                	test   %al,%al
    524e:	0f 84 a4 00 00 00    	je     52f8 <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS8_ERS7_+0xfa>
/usr/include/c++/9/bits/stl_tree.h:2202
	  if (size() > 0
    5254:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
    5258:	48 89 c7             	mov    %rax,%rdi
    525b:	e8 0a 0f 00 00       	callq  616a <_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE4sizeEv>
/usr/include/c++/9/bits/stl_tree.h:2203
	      && _M_impl._M_key_compare(_S_key(_M_rightmost()), __k))
    5260:	48 85 c0             	test   %rax,%rax
    5263:	74 3b                	je     52a0 <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS8_ERS7_+0xa2>
/usr/include/c++/9/bits/stl_tree.h:2203 (discriminator 1)
    5265:	48 8b 5d a8          	mov    -0x58(%rbp),%rbx
    5269:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
    526d:	48 89 c7             	mov    %rax,%rdi
    5270:	e8 0b 0f 00 00       	callq  6180 <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_rightmostEv>
    5275:	48 8b 00             	mov    (%rax),%rax
    5278:	48 89 c7             	mov    %rax,%rdi
    527b:	e8 55 05 00 00       	callq  57d5 <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE6_S_keyEPKSt18_Rb_tree_node_base>
    5280:	48 89 c1             	mov    %rax,%rcx
    5283:	48 8b 45 98          	mov    -0x68(%rbp),%rax
    5287:	48 89 c2             	mov    %rax,%rdx
    528a:	48 89 ce             	mov    %rcx,%rsi
    528d:	48 89 df             	mov    %rbx,%rdi
    5290:	e8 e7 f0 ff ff       	callq  437c <_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_>
    5295:	84 c0                	test   %al,%al
    5297:	74 07                	je     52a0 <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS8_ERS7_+0xa2>
/usr/include/c++/9/bits/stl_tree.h:2203 (discriminator 4)
    5299:	b8 01 00 00 00       	mov    $0x1,%eax
    529e:	eb 05                	jmp    52a5 <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS8_ERS7_+0xa7>
/usr/include/c++/9/bits/stl_tree.h:2203 (discriminator 5)
    52a0:	b8 00 00 00 00       	mov    $0x0,%eax
/usr/include/c++/9/bits/stl_tree.h:2202 (discriminator 7)
	  if (size() > 0
    52a5:	84 c0                	test   %al,%al
    52a7:	74 37                	je     52e0 <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS8_ERS7_+0xe2>
/usr/include/c++/9/bits/stl_tree.h:2204
	    return _Res(0, _M_rightmost());
    52a9:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
    52ad:	48 89 c7             	mov    %rax,%rdi
    52b0:	e8 cb 0e 00 00       	callq  6180 <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_rightmostEv>
    52b5:	48 89 c2             	mov    %rax,%rdx
    52b8:	48 c7 45 c8 00 00 00 	movq   $0x0,-0x38(%rbp)
    52bf:	00 
    52c0:	48 8d 4d c8          	lea    -0x38(%rbp),%rcx
    52c4:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
    52c8:	48 89 ce             	mov    %rcx,%rsi
    52cb:	48 89 c7             	mov    %rax,%rdi
    52ce:	e8 c3 0e 00 00       	callq  6196 <_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC1IRS1_Lb1EEERKS1_OT_>
    52d3:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    52d7:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    52db:	e9 ac 02 00 00       	jmpq   558c <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS8_ERS7_+0x38e>
/usr/include/c++/9/bits/stl_tree.h:2206
	    return _M_get_insert_unique_pos(__k);
    52e0:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
    52e4:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
    52e8:	48 89 d6             	mov    %rdx,%rsi
    52eb:	48 89 c7             	mov    %rax,%rdi
    52ee:	e8 e3 0e 00 00       	callq  61d6 <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE24_M_get_insert_unique_posERS7_>
    52f3:	e9 94 02 00 00       	jmpq   558c <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS8_ERS7_+0x38e>
/usr/include/c++/9/bits/stl_tree.h:2208
      else if (_M_impl._M_key_compare(__k, _S_key(__pos._M_node)))
    52f8:	48 8b 5d a8          	mov    -0x58(%rbp),%rbx
    52fc:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    5300:	48 89 c7             	mov    %rax,%rdi
    5303:	e8 cd 04 00 00       	callq  57d5 <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE6_S_keyEPKSt18_Rb_tree_node_base>
    5308:	48 89 c2             	mov    %rax,%rdx
    530b:	48 8b 45 98          	mov    -0x68(%rbp),%rax
    530f:	48 89 c6             	mov    %rax,%rsi
    5312:	48 89 df             	mov    %rbx,%rdi
    5315:	e8 62 f0 ff ff       	callq  437c <_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_>
    531a:	84 c0                	test   %al,%al
    531c:	0f 84 14 01 00 00    	je     5436 <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS8_ERS7_+0x238>
/usr/include/c++/9/bits/stl_tree.h:2211
	  iterator __before = __pos;
    5322:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    5326:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
/usr/include/c++/9/bits/stl_tree.h:2212
	  if (__pos._M_node == _M_leftmost()) // begin()
    532a:	48 8b 5d b8          	mov    -0x48(%rbp),%rbx
    532e:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
    5332:	48 89 c7             	mov    %rax,%rdi
    5335:	e8 3a 10 00 00       	callq  6374 <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE11_M_leftmostEv>
    533a:	48 8b 00             	mov    (%rax),%rax
    533d:	48 39 c3             	cmp    %rax,%rbx
    5340:	0f 94 c0             	sete   %al
    5343:	84 c0                	test   %al,%al
    5345:	74 3d                	je     5384 <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS8_ERS7_+0x186>
/usr/include/c++/9/bits/stl_tree.h:2213
	    return _Res(_M_leftmost(), _M_leftmost());
    5347:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
    534b:	48 89 c7             	mov    %rax,%rdi
    534e:	e8 21 10 00 00       	callq  6374 <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE11_M_leftmostEv>
    5353:	48 89 c3             	mov    %rax,%rbx
    5356:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
    535a:	48 89 c7             	mov    %rax,%rdi
    535d:	e8 12 10 00 00       	callq  6374 <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE11_M_leftmostEv>
    5362:	48 89 c1             	mov    %rax,%rcx
    5365:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
    5369:	48 89 da             	mov    %rbx,%rdx
    536c:	48 89 ce             	mov    %rcx,%rsi
    536f:	48 89 c7             	mov    %rax,%rdi
    5372:	e8 13 10 00 00       	callq  638a <_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC1IRS1_S4_Lb1EEEOT_OT0_>
    5377:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    537b:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    537f:	e9 08 02 00 00       	jmpq   558c <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS8_ERS7_+0x38e>
/usr/include/c++/9/bits/stl_tree.h:2214
	  else if (_M_impl._M_key_compare(_S_key((--__before)._M_node), __k))
    5384:	48 8b 5d a8          	mov    -0x58(%rbp),%rbx
    5388:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
    538c:	48 89 c7             	mov    %rax,%rdi
    538f:	e8 3e 10 00 00       	callq  63d2 <_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEmmEv>
    5394:	48 8b 00             	mov    (%rax),%rax
    5397:	48 89 c7             	mov    %rax,%rdi
    539a:	e8 36 04 00 00       	callq  57d5 <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE6_S_keyEPKSt18_Rb_tree_node_base>
    539f:	48 89 c1             	mov    %rax,%rcx
    53a2:	48 8b 45 98          	mov    -0x68(%rbp),%rax
    53a6:	48 89 c2             	mov    %rax,%rdx
    53a9:	48 89 ce             	mov    %rcx,%rsi
    53ac:	48 89 df             	mov    %rbx,%rdi
    53af:	e8 c8 ef ff ff       	callq  437c <_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_>
    53b4:	84 c0                	test   %al,%al
    53b6:	74 66                	je     541e <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS8_ERS7_+0x220>
/usr/include/c++/9/bits/stl_tree.h:2216
	      if (_S_right(__before._M_node) == 0)
    53b8:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    53bc:	48 89 c7             	mov    %rax,%rdi
    53bf:	e8 43 fc ff ff       	callq  5007 <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_S_rightEPSt18_Rb_tree_node_base>
    53c4:	48 85 c0             	test   %rax,%rax
    53c7:	0f 94 c0             	sete   %al
    53ca:	84 c0                	test   %al,%al
    53cc:	74 2c                	je     53fa <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS8_ERS7_+0x1fc>
/usr/include/c++/9/bits/stl_tree.h:2217
		return _Res(0, __before._M_node);
    53ce:	48 c7 45 c8 00 00 00 	movq   $0x0,-0x38(%rbp)
    53d5:	00 
    53d6:	48 8d 55 c0          	lea    -0x40(%rbp),%rdx
    53da:	48 8d 4d c8          	lea    -0x38(%rbp),%rcx
    53de:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
    53e2:	48 89 ce             	mov    %rcx,%rsi
    53e5:	48 89 c7             	mov    %rax,%rdi
    53e8:	e8 a9 0d 00 00       	callq  6196 <_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC1IRS1_Lb1EEERKS1_OT_>
    53ed:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    53f1:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    53f5:	e9 92 01 00 00       	jmpq   558c <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS8_ERS7_+0x38e>
/usr/include/c++/9/bits/stl_tree.h:2219
		return _Res(__pos._M_node, __pos._M_node);
    53fa:	48 8d 55 b8          	lea    -0x48(%rbp),%rdx
    53fe:	48 8d 4d b8          	lea    -0x48(%rbp),%rcx
    5402:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
    5406:	48 89 ce             	mov    %rcx,%rsi
    5409:	48 89 c7             	mov    %rax,%rdi
    540c:	e8 79 0f 00 00       	callq  638a <_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC1IRS1_S4_Lb1EEEOT_OT0_>
    5411:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    5415:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    5419:	e9 6e 01 00 00       	jmpq   558c <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS8_ERS7_+0x38e>
/usr/include/c++/9/bits/stl_tree.h:2222
	    return _M_get_insert_unique_pos(__k);
    541e:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
    5422:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
    5426:	48 89 d6             	mov    %rdx,%rsi
    5429:	48 89 c7             	mov    %rax,%rdi
    542c:	e8 a5 0d 00 00       	callq  61d6 <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE24_M_get_insert_unique_posERS7_>
    5431:	e9 56 01 00 00       	jmpq   558c <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS8_ERS7_+0x38e>
/usr/include/c++/9/bits/stl_tree.h:2224
      else if (_M_impl._M_key_compare(_S_key(__pos._M_node), __k))
    5436:	48 8b 5d a8          	mov    -0x58(%rbp),%rbx
    543a:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    543e:	48 89 c7             	mov    %rax,%rdi
    5441:	e8 8f 03 00 00       	callq  57d5 <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE6_S_keyEPKSt18_Rb_tree_node_base>
    5446:	48 89 c1             	mov    %rax,%rcx
    5449:	48 8b 45 98          	mov    -0x68(%rbp),%rax
    544d:	48 89 c2             	mov    %rax,%rdx
    5450:	48 89 ce             	mov    %rcx,%rsi
    5453:	48 89 df             	mov    %rbx,%rdi
    5456:	e8 21 ef ff ff       	callq  437c <_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_>
    545b:	84 c0                	test   %al,%al
    545d:	0f 84 02 01 00 00    	je     5565 <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS8_ERS7_+0x367>
/usr/include/c++/9/bits/stl_tree.h:2227
	  iterator __after = __pos;
    5463:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    5467:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
/usr/include/c++/9/bits/stl_tree.h:2228
	  if (__pos._M_node == _M_rightmost())
    546b:	48 8b 5d b8          	mov    -0x48(%rbp),%rbx
    546f:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
    5473:	48 89 c7             	mov    %rax,%rdi
    5476:	e8 05 0d 00 00       	callq  6180 <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_rightmostEv>
    547b:	48 8b 00             	mov    (%rax),%rax
    547e:	48 39 c3             	cmp    %rax,%rbx
    5481:	0f 94 c0             	sete   %al
    5484:	84 c0                	test   %al,%al
    5486:	74 37                	je     54bf <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS8_ERS7_+0x2c1>
/usr/include/c++/9/bits/stl_tree.h:2229
	    return _Res(0, _M_rightmost());
    5488:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
    548c:	48 89 c7             	mov    %rax,%rdi
    548f:	e8 ec 0c 00 00       	callq  6180 <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_rightmostEv>
    5494:	48 89 c2             	mov    %rax,%rdx
    5497:	48 c7 45 c8 00 00 00 	movq   $0x0,-0x38(%rbp)
    549e:	00 
    549f:	48 8d 4d c8          	lea    -0x38(%rbp),%rcx
    54a3:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
    54a7:	48 89 ce             	mov    %rcx,%rsi
    54aa:	48 89 c7             	mov    %rax,%rdi
    54ad:	e8 e4 0c 00 00       	callq  6196 <_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC1IRS1_Lb1EEERKS1_OT_>
    54b2:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    54b6:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    54ba:	e9 cd 00 00 00       	jmpq   558c <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS8_ERS7_+0x38e>
/usr/include/c++/9/bits/stl_tree.h:2230
	  else if (_M_impl._M_key_compare(__k, _S_key((++__after)._M_node)))
    54bf:	48 8b 5d a8          	mov    -0x58(%rbp),%rbx
    54c3:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
    54c7:	48 89 c7             	mov    %rax,%rdi
    54ca:	e8 2f 0f 00 00       	callq  63fe <_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEppEv>
    54cf:	48 8b 00             	mov    (%rax),%rax
    54d2:	48 89 c7             	mov    %rax,%rdi
    54d5:	e8 fb 02 00 00       	callq  57d5 <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE6_S_keyEPKSt18_Rb_tree_node_base>
    54da:	48 89 c2             	mov    %rax,%rdx
    54dd:	48 8b 45 98          	mov    -0x68(%rbp),%rax
    54e1:	48 89 c6             	mov    %rax,%rsi
    54e4:	48 89 df             	mov    %rbx,%rdi
    54e7:	e8 90 ee ff ff       	callq  437c <_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_>
    54ec:	84 c0                	test   %al,%al
    54ee:	74 60                	je     5550 <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS8_ERS7_+0x352>
/usr/include/c++/9/bits/stl_tree.h:2232
	      if (_S_right(__pos._M_node) == 0)
    54f0:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    54f4:	48 89 c7             	mov    %rax,%rdi
    54f7:	e8 0b fb ff ff       	callq  5007 <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_S_rightEPSt18_Rb_tree_node_base>
    54fc:	48 85 c0             	test   %rax,%rax
    54ff:	0f 94 c0             	sete   %al
    5502:	84 c0                	test   %al,%al
    5504:	74 29                	je     552f <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS8_ERS7_+0x331>
/usr/include/c++/9/bits/stl_tree.h:2233
		return _Res(0, __pos._M_node);
    5506:	48 c7 45 c8 00 00 00 	movq   $0x0,-0x38(%rbp)
    550d:	00 
    550e:	48 8d 55 b8          	lea    -0x48(%rbp),%rdx
    5512:	48 8d 4d c8          	lea    -0x38(%rbp),%rcx
    5516:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
    551a:	48 89 ce             	mov    %rcx,%rsi
    551d:	48 89 c7             	mov    %rax,%rdi
    5520:	e8 71 0c 00 00       	callq  6196 <_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC1IRS1_Lb1EEERKS1_OT_>
    5525:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    5529:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    552d:	eb 5d                	jmp    558c <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS8_ERS7_+0x38e>
/usr/include/c++/9/bits/stl_tree.h:2235
		return _Res(__after._M_node, __after._M_node);
    552f:	48 8d 55 c0          	lea    -0x40(%rbp),%rdx
    5533:	48 8d 4d c0          	lea    -0x40(%rbp),%rcx
    5537:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
    553b:	48 89 ce             	mov    %rcx,%rsi
    553e:	48 89 c7             	mov    %rax,%rdi
    5541:	e8 44 0e 00 00       	callq  638a <_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC1IRS1_S4_Lb1EEEOT_OT0_>
    5546:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    554a:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    554e:	eb 3c                	jmp    558c <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS8_ERS7_+0x38e>
/usr/include/c++/9/bits/stl_tree.h:2238
	    return _M_get_insert_unique_pos(__k);
    5550:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
    5554:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
    5558:	48 89 d6             	mov    %rdx,%rsi
    555b:	48 89 c7             	mov    %rax,%rdi
    555e:	e8 73 0c 00 00       	callq  61d6 <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE24_M_get_insert_unique_posERS7_>
    5563:	eb 27                	jmp    558c <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS8_ERS7_+0x38e>
/usr/include/c++/9/bits/stl_tree.h:2242
	return _Res(__pos._M_node, 0);
    5565:	48 c7 45 c8 00 00 00 	movq   $0x0,-0x38(%rbp)
    556c:	00 
    556d:	48 8d 55 c8          	lea    -0x38(%rbp),%rdx
    5571:	48 8d 4d b8          	lea    -0x48(%rbp),%rcx
    5575:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
    5579:	48 89 ce             	mov    %rcx,%rsi
    557c:	48 89 c7             	mov    %rax,%rdi
    557f:	e8 a6 0e 00 00       	callq  642a <_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC1IRS1_Lb1EEEOT_RKS1_>
    5584:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    5588:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
/usr/include/c++/9/bits/stl_tree.h:2243 (discriminator 3)
    }
    558c:	48 8b 75 e8          	mov    -0x18(%rbp),%rsi
    5590:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
    5597:	00 00 
    5599:	74 05                	je     55a0 <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS8_ERS7_+0x3a2>
/usr/include/c++/9/bits/stl_tree.h:2243
    559b:	e8 40 d1 ff ff       	callq  26e0 <__stack_chk_fail@plt>
    55a0:	48 83 c4 68          	add    $0x68,%rsp
    55a4:	5b                   	pop    %rbx
    55a5:	5d                   	pop    %rbp
    55a6:	c3                   	retq   

00000000000055a7 <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE6_S_keyEPKSt13_Rb_tree_nodeIS8_E>:
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE6_S_keyEPKSt13_Rb_tree_nodeIS8_E():
/usr/include/c++/9/bits/stl_tree.h:772
      _S_key(_Const_Link_type __x)
    55a7:	f3 0f 1e fa          	endbr64 
    55ab:	55                   	push   %rbp
    55ac:	48 89 e5             	mov    %rsp,%rbp
    55af:	48 83 ec 20          	sub    $0x20,%rsp
    55b3:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    55b7:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    55be:	00 00 
    55c0:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    55c4:	31 c0                	xor    %eax,%eax
/usr/include/c++/9/bits/stl_tree.h:790
	return _KeyOfValue()(*__x->_M_valptr());
    55c6:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    55ca:	48 89 c7             	mov    %rax,%rdi
    55cd:	e8 98 0e 00 00       	callq  646a <_ZNKSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EE9_M_valptrEv>
    55d2:	48 89 c2             	mov    %rax,%rdx
    55d5:	48 8d 45 f7          	lea    -0x9(%rbp),%rax
    55d9:	48 89 d6             	mov    %rdx,%rsi
    55dc:	48 89 c7             	mov    %rax,%rdi
    55df:	e8 a8 0e 00 00       	callq  648c <_ZNKSt10_Select1stISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEclERKS8_>
/usr/include/c++/9/bits/stl_tree.h:791
      }
    55e4:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
    55e8:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
    55ef:	00 00 
    55f1:	74 05                	je     55f8 <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE6_S_keyEPKSt13_Rb_tree_nodeIS8_E+0x51>
    55f3:	e8 e8 d0 ff ff       	callq  26e0 <__stack_chk_fail@plt>
    55f8:	c9                   	leaveq 
    55f9:	c3                   	retq   

00000000000055fa <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_insert_nodeEPSt18_Rb_tree_node_baseSG_PSt13_Rb_tree_nodeIS8_E>:
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_insert_nodeEPSt18_Rb_tree_node_baseSG_PSt13_Rb_tree_nodeIS8_E():
/usr/include/c++/9/bits/stl_tree.h:2359
    _Rb_tree<_Key, _Val, _KeyOfValue, _Compare, _Alloc>::
    55fa:	f3 0f 1e fa          	endbr64 
    55fe:	55                   	push   %rbp
    55ff:	48 89 e5             	mov    %rsp,%rbp
    5602:	41 54                	push   %r12
    5604:	53                   	push   %rbx
    5605:	48 83 ec 40          	sub    $0x40,%rsp
    5609:	48 89 7d c8          	mov    %rdi,-0x38(%rbp)
    560d:	48 89 75 c0          	mov    %rsi,-0x40(%rbp)
    5611:	48 89 55 b8          	mov    %rdx,-0x48(%rbp)
    5615:	48 89 4d b0          	mov    %rcx,-0x50(%rbp)
    5619:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    5620:	00 00 
    5622:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    5626:	31 c0                	xor    %eax,%eax
/usr/include/c++/9/bits/stl_tree.h:2363
			    || _M_impl._M_key_compare(_S_key(__z),
    5628:	48 83 7d c0 00       	cmpq   $0x0,-0x40(%rbp)
    562d:	75 43                	jne    5672 <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_insert_nodeEPSt18_Rb_tree_node_baseSG_PSt13_Rb_tree_nodeIS8_E+0x78>
/usr/include/c++/9/bits/stl_tree.h:2362
      bool __insert_left = (__x != 0 || __p == _M_end()
    562f:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    5633:	48 89 c7             	mov    %rax,%rdi
    5636:	e8 c7 00 00 00       	callq  5702 <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE6_M_endEv>
    563b:	48 39 45 b8          	cmp    %rax,-0x48(%rbp)
    563f:	74 31                	je     5672 <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_insert_nodeEPSt18_Rb_tree_node_baseSG_PSt13_Rb_tree_nodeIS8_E+0x78>
/usr/include/c++/9/bits/stl_tree.h:2363 (discriminator 2)
			    || _M_impl._M_key_compare(_S_key(__z),
    5641:	48 8b 5d c8          	mov    -0x38(%rbp),%rbx
    5645:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    5649:	48 89 c7             	mov    %rax,%rdi
    564c:	e8 84 01 00 00       	callq  57d5 <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE6_S_keyEPKSt18_Rb_tree_node_base>
    5651:	49 89 c4             	mov    %rax,%r12
    5654:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    5658:	48 89 c7             	mov    %rax,%rdi
    565b:	e8 47 ff ff ff       	callq  55a7 <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE6_S_keyEPKSt13_Rb_tree_nodeIS8_E>
    5660:	4c 89 e2             	mov    %r12,%rdx
    5663:	48 89 c6             	mov    %rax,%rsi
    5666:	48 89 df             	mov    %rbx,%rdi
    5669:	e8 0e ed ff ff       	callq  437c <_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_>
    566e:	84 c0                	test   %al,%al
    5670:	74 07                	je     5679 <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_insert_nodeEPSt18_Rb_tree_node_baseSG_PSt13_Rb_tree_nodeIS8_E+0x7f>
/usr/include/c++/9/bits/stl_tree.h:2363 (discriminator 1)
    5672:	b8 01 00 00 00       	mov    $0x1,%eax
    5677:	eb 05                	jmp    567e <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_insert_nodeEPSt18_Rb_tree_node_baseSG_PSt13_Rb_tree_nodeIS8_E+0x84>
/usr/include/c++/9/bits/stl_tree.h:2363 (discriminator 3)
    5679:	b8 00 00 00 00       	mov    $0x0,%eax
/usr/include/c++/9/bits/stl_tree.h:2362
      bool __insert_left = (__x != 0 || __p == _M_end()
    567e:	88 45 df             	mov    %al,-0x21(%rbp)
/usr/include/c++/9/bits/stl_tree.h:2367
				    this->_M_impl._M_header);
    5681:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    5685:	48 8d 48 08          	lea    0x8(%rax),%rcx
/usr/include/c++/9/bits/stl_tree.h:2366
      _Rb_tree_insert_and_rebalance(__insert_left, __z, __p,
    5689:	0f b6 45 df          	movzbl -0x21(%rbp),%eax
    568d:	48 8b 55 b8          	mov    -0x48(%rbp),%rdx
    5691:	48 8b 75 b0          	mov    -0x50(%rbp),%rsi
    5695:	89 c7                	mov    %eax,%edi
    5697:	e8 44 ce ff ff       	callq  24e0 <_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_@plt>
/usr/include/c++/9/bits/stl_tree.h:2368
      ++_M_impl._M_node_count;
    569c:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    56a0:	48 8b 40 28          	mov    0x28(%rax),%rax
    56a4:	48 8d 50 01          	lea    0x1(%rax),%rdx
    56a8:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    56ac:	48 89 50 28          	mov    %rdx,0x28(%rax)
/usr/include/c++/9/bits/stl_tree.h:2369
      return iterator(__z);
    56b0:	48 8b 55 b0          	mov    -0x50(%rbp),%rdx
    56b4:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
    56b8:	48 89 d6             	mov    %rdx,%rsi
    56bb:	48 89 c7             	mov    %rax,%rdi
    56be:	e8 21 00 00 00       	callq  56e4 <_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEC1EPSt18_Rb_tree_node_base>
    56c3:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
/usr/include/c++/9/bits/stl_tree.h:2370
    }
    56c7:	48 8b 5d e8          	mov    -0x18(%rbp),%rbx
    56cb:	64 48 33 1c 25 28 00 	xor    %fs:0x28,%rbx
    56d2:	00 00 
    56d4:	74 05                	je     56db <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_insert_nodeEPSt18_Rb_tree_node_baseSG_PSt13_Rb_tree_nodeIS8_E+0xe1>
    56d6:	e8 05 d0 ff ff       	callq  26e0 <__stack_chk_fail@plt>
    56db:	48 83 c4 40          	add    $0x40,%rsp
    56df:	5b                   	pop    %rbx
    56e0:	41 5c                	pop    %r12
    56e2:	5d                   	pop    %rbp
    56e3:	c3                   	retq   

00000000000056e4 <_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEC1EPSt18_Rb_tree_node_base>:
_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEC2EPSt18_Rb_tree_node_base():
/usr/include/c++/9/bits/stl_tree.h:273
      _Rb_tree_iterator(_Base_ptr __x) _GLIBCXX_NOEXCEPT
    56e4:	f3 0f 1e fa          	endbr64 
    56e8:	55                   	push   %rbp
    56e9:	48 89 e5             	mov    %rsp,%rbp
    56ec:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    56f0:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
/usr/include/c++/9/bits/stl_tree.h:274
      : _M_node(__x) { }
    56f4:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    56f8:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    56fc:	48 89 10             	mov    %rdx,(%rax)
    56ff:	90                   	nop
    5700:	5d                   	pop    %rbp
    5701:	c3                   	retq   

0000000000005702 <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE6_M_endEv>:
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE6_M_endEv():
/usr/include/c++/9/bits/stl_tree.h:760
      _M_end() _GLIBCXX_NOEXCEPT
    5702:	f3 0f 1e fa          	endbr64 
    5706:	55                   	push   %rbp
    5707:	48 89 e5             	mov    %rsp,%rbp
    570a:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
/usr/include/c++/9/bits/stl_tree.h:761
      { return &this->_M_impl._M_header; }
    570e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5712:	48 83 c0 08          	add    $0x8,%rax
    5716:	5d                   	pop    %rbp
    5717:	c3                   	retq   

0000000000005718 <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS7_>:
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS7_():
/usr/include/c++/9/bits/stl_tree.h:1929
    _Rb_tree<_Key, _Val, _KeyOfValue, _Compare, _Alloc>::
    5718:	f3 0f 1e fa          	endbr64 
    571c:	55                   	push   %rbp
    571d:	48 89 e5             	mov    %rsp,%rbp
    5720:	53                   	push   %rbx
    5721:	48 83 ec 38          	sub    $0x38,%rsp
    5725:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    5729:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    572d:	48 89 55 c8          	mov    %rdx,-0x38(%rbp)
    5731:	48 89 4d c0          	mov    %rcx,-0x40(%rbp)
    5735:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    573c:	00 00 
    573e:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    5742:	31 c0                	xor    %eax,%eax
/usr/include/c++/9/bits/stl_tree.h:1933
      while (__x != 0)
    5744:	48 83 7d d0 00       	cmpq   $0x0,-0x30(%rbp)
    5749:	74 58                	je     57a3 <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS7_+0x8b>
/usr/include/c++/9/bits/stl_tree.h:1934
	if (!_M_impl._M_key_compare(_S_key(__x), __k))
    574b:	48 8b 5d d8          	mov    -0x28(%rbp),%rbx
    574f:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    5753:	48 89 c7             	mov    %rax,%rdi
    5756:	e8 4c fe ff ff       	callq  55a7 <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE6_S_keyEPKSt13_Rb_tree_nodeIS8_E>
    575b:	48 89 c1             	mov    %rax,%rcx
    575e:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    5762:	48 89 c2             	mov    %rax,%rdx
    5765:	48 89 ce             	mov    %rcx,%rsi
    5768:	48 89 df             	mov    %rbx,%rdi
    576b:	e8 0c ec ff ff       	callq  437c <_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_>
    5770:	83 f0 01             	xor    $0x1,%eax
    5773:	84 c0                	test   %al,%al
    5775:	74 1a                	je     5791 <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS7_+0x79>
/usr/include/c++/9/bits/stl_tree.h:1935
	  __y = __x, __x = _S_left(__x);
    5777:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    577b:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
    577f:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    5783:	48 89 c7             	mov    %rax,%rdi
    5786:	e8 92 f8 ff ff       	callq  501d <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_S_leftEPSt18_Rb_tree_node_base>
    578b:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
    578f:	eb b3                	jmp    5744 <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS7_+0x2c>
/usr/include/c++/9/bits/stl_tree.h:1937
	  __x = _S_right(__x);
    5791:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    5795:	48 89 c7             	mov    %rax,%rdi
    5798:	e8 6a f8 ff ff       	callq  5007 <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_S_rightEPSt18_Rb_tree_node_base>
    579d:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
/usr/include/c++/9/bits/stl_tree.h:1933
      while (__x != 0)
    57a1:	eb a1                	jmp    5744 <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS7_+0x2c>
/usr/include/c++/9/bits/stl_tree.h:1938
      return iterator(__y);
    57a3:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
    57a7:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
    57ab:	48 89 d6             	mov    %rdx,%rsi
    57ae:	48 89 c7             	mov    %rax,%rdi
    57b1:	e8 2e ff ff ff       	callq  56e4 <_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEC1EPSt18_Rb_tree_node_base>
    57b6:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
/usr/include/c++/9/bits/stl_tree.h:1939
    }
    57ba:	48 8b 5d e8          	mov    -0x18(%rbp),%rbx
    57be:	64 48 33 1c 25 28 00 	xor    %fs:0x28,%rbx
    57c5:	00 00 
    57c7:	74 05                	je     57ce <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS7_+0xb6>
    57c9:	e8 12 cf ff ff       	callq  26e0 <__stack_chk_fail@plt>
    57ce:	48 83 c4 38          	add    $0x38,%rsp
    57d2:	5b                   	pop    %rbx
    57d3:	5d                   	pop    %rbp
    57d4:	c3                   	retq   

00000000000057d5 <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE6_S_keyEPKSt18_Rb_tree_node_base>:
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE6_S_keyEPKSt18_Rb_tree_node_base():
/usr/include/c++/9/bits/stl_tree.h:814
      _S_key(_Const_Base_ptr __x)
    57d5:	f3 0f 1e fa          	endbr64 
    57d9:	55                   	push   %rbp
    57da:	48 89 e5             	mov    %rsp,%rbp
    57dd:	48 83 ec 10          	sub    $0x10,%rsp
    57e1:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
/usr/include/c++/9/bits/stl_tree.h:815
      { return _S_key(static_cast<_Const_Link_type>(__x)); }
    57e5:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    57e9:	48 89 c7             	mov    %rax,%rdi
    57ec:	e8 b6 fd ff ff       	callq  55a7 <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE6_S_keyEPKSt13_Rb_tree_nodeIS8_E>
    57f1:	c9                   	leaveq 
    57f2:	c3                   	retq   

00000000000057f3 <_ZSt7forwardINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS6_E4typeE>:
_ZSt7forwardINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS6_E4typeE():
/usr/include/c++/9/bits/move.h:74
    forward(typename std::remove_reference<_Tp>::type& __t) noexcept
    57f3:	f3 0f 1e fa          	endbr64 
    57f7:	55                   	push   %rbp
    57f8:	48 89 e5             	mov    %rsp,%rbp
    57fb:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
/usr/include/c++/9/bits/move.h:75
    { return static_cast<_Tp&&>(__t); }
    57ff:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5803:	5d                   	pop    %rbp
    5804:	c3                   	retq   
    5805:	90                   	nop

0000000000005806 <_ZNSt5tupleIJONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC1IJS5_ELb1EEEDpOT_>:
_ZNSt5tupleIJONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IJS5_ELb1EEEDpOT_():
/usr/include/c++/9/tuple:626
        constexpr tuple(_UElements&&... __elements)
    5806:	f3 0f 1e fa          	endbr64 
    580a:	55                   	push   %rbp
    580b:	48 89 e5             	mov    %rsp,%rbp
    580e:	53                   	push   %rbx
    580f:	48 83 ec 18          	sub    $0x18,%rsp
    5813:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    5817:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
/usr/include/c++/9/tuple:627
        : _Inherited(std::forward<_UElements>(__elements)...) { }
    581b:	48 8b 5d e8          	mov    -0x18(%rbp),%rbx
    581f:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    5823:	48 89 c7             	mov    %rax,%rdi
    5826:	e8 c8 ff ff ff       	callq  57f3 <_ZSt7forwardINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS6_E4typeE>
    582b:	48 89 c6             	mov    %rax,%rsi
    582e:	48 89 df             	mov    %rbx,%rdi
    5831:	e8 6c 0c 00 00       	callq  64a2 <_ZNSt11_Tuple_implILm0EJONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC1IS5_EEOT_>
    5836:	90                   	nop
    5837:	48 83 c4 18          	add    $0x18,%rsp
    583b:	5b                   	pop    %rbx
    583c:	5d                   	pop    %rbp
    583d:	c3                   	retq   

000000000000583e <_ZNSt11_Tuple_implILm0EJONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC1EOS7_>:
_ZNSt11_Tuple_implILm0EJONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2EOS7_():
/usr/include/c++/9/tuple:358
      _Tuple_impl(_Tuple_impl&& __in)
    583e:	f3 0f 1e fa          	endbr64 
    5842:	55                   	push   %rbp
    5843:	48 89 e5             	mov    %rsp,%rbp
    5846:	53                   	push   %rbx
    5847:	48 83 ec 18          	sub    $0x18,%rsp
    584b:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    584f:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
/usr/include/c++/9/tuple:360
      : _Base(std::forward<_Head>(_M_head(__in))) { }
    5853:	48 8b 5d e8          	mov    -0x18(%rbp),%rbx
    5857:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    585b:	48 89 c7             	mov    %rax,%rdi
    585e:	e8 77 0c 00 00       	callq  64da <_ZNSt11_Tuple_implILm0EJONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE7_M_headERS7_>
    5863:	48 89 c7             	mov    %rax,%rdi
    5866:	e8 8d 0c 00 00       	callq  64f8 <_ZSt7forwardIONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS7_E4typeE>
    586b:	48 89 c6             	mov    %rax,%rsi
    586e:	48 89 df             	mov    %rbx,%rdi
    5871:	e8 94 0c 00 00       	callq  650a <_ZNSt10_Head_baseILm0EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EEC1IS5_EEOT_>
    5876:	90                   	nop
    5877:	48 83 c4 18          	add    $0x18,%rsp
    587b:	5b                   	pop    %rbx
    587c:	5d                   	pop    %rbp
    587d:	c3                   	retq   

000000000000587e <_ZSt7forwardISt5tupleIJONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEOT_RNSt16remove_referenceIS9_E4typeE>:
_ZSt7forwardISt5tupleIJONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEOT_RNSt16remove_referenceIS9_E4typeE():
/usr/include/c++/9/bits/move.h:74
    forward(typename std::remove_reference<_Tp>::type& __t) noexcept
    587e:	f3 0f 1e fa          	endbr64 
    5882:	55                   	push   %rbp
    5883:	48 89 e5             	mov    %rsp,%rbp
    5886:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
/usr/include/c++/9/bits/move.h:75
    { return static_cast<_Tp&&>(__t); }
    588a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    588e:	5d                   	pop    %rbp
    588f:	c3                   	retq   

0000000000005890 <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_create_nodeIJRKSt21piecewise_construct_tSt5tupleIJOS5_EESJ_IJEEEEEPSt13_Rb_tree_nodeIS8_EDpOT_>:
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_create_nodeIJRKSt21piecewise_construct_tSt5tupleIJOS5_EESJ_IJEEEEEPSt13_Rb_tree_nodeIS8_EDpOT_():
/usr/include/c++/9/bits/stl_tree.h:628
	_M_create_node(_Args&&... __args)
    5890:	f3 0f 1e fa          	endbr64 
    5894:	55                   	push   %rbp
    5895:	48 89 e5             	mov    %rsp,%rbp
    5898:	41 54                	push   %r12
    589a:	53                   	push   %rbx
    589b:	48 83 ec 30          	sub    $0x30,%rsp
    589f:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    58a3:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    58a7:	48 89 55 c8          	mov    %rdx,-0x38(%rbp)
    58ab:	48 89 4d c0          	mov    %rcx,-0x40(%rbp)
/usr/include/c++/9/bits/stl_tree.h:630
	  _Link_type __tmp = _M_get_node();
    58af:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    58b3:	48 89 c7             	mov    %rax,%rdi
    58b6:	e8 55 07 00 00       	callq  6010 <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE11_M_get_nodeEv>
    58bb:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
/usr/include/c++/9/bits/stl_tree.h:631
	  _M_construct_node(__tmp, std::forward<_Args>(__args)...);
    58bf:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    58c3:	48 89 c7             	mov    %rax,%rdi
    58c6:	e8 a1 f8 ff ff       	callq  516c <_ZSt7forwardISt5tupleIJEEEOT_RNSt16remove_referenceIS2_E4typeE>
    58cb:	49 89 c4             	mov    %rax,%r12
    58ce:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    58d2:	48 89 c7             	mov    %rax,%rdi
    58d5:	e8 a4 ff ff ff       	callq  587e <_ZSt7forwardISt5tupleIJONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEOT_RNSt16remove_referenceIS9_E4typeE>
    58da:	48 89 c3             	mov    %rax,%rbx
    58dd:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    58e1:	48 89 c7             	mov    %rax,%rdi
    58e4:	e8 5f f8 ff ff       	callq  5148 <_ZSt7forwardIRKSt21piecewise_construct_tEOT_RNSt16remove_referenceIS3_E4typeE>
    58e9:	48 89 c2             	mov    %rax,%rdx
    58ec:	48 8b 75 e8          	mov    -0x18(%rbp),%rsi
    58f0:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    58f4:	4d 89 e0             	mov    %r12,%r8
    58f7:	48 89 d9             	mov    %rbx,%rcx
    58fa:	48 89 c7             	mov    %rax,%rdi
    58fd:	e8 32 0c 00 00       	callq  6534 <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJOS5_EESJ_IJEEEEEvPSt13_Rb_tree_nodeIS8_EDpOT_>
/usr/include/c++/9/bits/stl_tree.h:632
	  return __tmp;
    5902:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
/usr/include/c++/9/bits/stl_tree.h:633
	}
    5906:	48 83 c4 30          	add    $0x30,%rsp
    590a:	5b                   	pop    %rbx
    590b:	41 5c                	pop    %r12
    590d:	5d                   	pop    %rbp
    590e:	c3                   	retq   
    590f:	90                   	nop

0000000000005910 <_ZN9__gnu_cxx13new_allocatorIiEC1Ev>:
_ZN9__gnu_cxx13new_allocatorIiEC2Ev():
/usr/include/c++/9/ext/new_allocator.h:80
    5910:	f3 0f 1e fa          	endbr64 
    5914:	55                   	push   %rbp
    5915:	48 89 e5             	mov    %rsp,%rbp
    5918:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    591c:	90                   	nop
    591d:	5d                   	pop    %rbp
    591e:	c3                   	retq   

000000000000591f <_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim>:
_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim():
/usr/include/c++/9/bits/alloc_traits.h:468
      deallocate(allocator_type& __a, pointer __p, size_type __n)
    591f:	f3 0f 1e fa          	endbr64 
    5923:	55                   	push   %rbp
    5924:	48 89 e5             	mov    %rsp,%rbp
    5927:	48 83 ec 20          	sub    $0x20,%rsp
    592b:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    592f:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    5933:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
/usr/include/c++/9/bits/alloc_traits.h:469
      { __a.deallocate(__p, __n); }
    5937:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    593b:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
    593f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5943:	48 89 ce             	mov    %rcx,%rsi
    5946:	48 89 c7             	mov    %rax,%rdi
    5949:	e8 c4 0c 00 00       	callq  6612 <_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim>
    594e:	90                   	nop
    594f:	c9                   	leaveq 
    5950:	c3                   	retq   

0000000000005951 <_ZSt8_DestroyIPiEvT_S1_>:
_ZSt8_DestroyIPiEvT_S1_():
/usr/include/c++/9/bits/stl_construct.h:127
    _Destroy(_ForwardIterator __first, _ForwardIterator __last)
    5951:	f3 0f 1e fa          	endbr64 
    5955:	55                   	push   %rbp
    5956:	48 89 e5             	mov    %rsp,%rbp
    5959:	48 83 ec 10          	sub    $0x10,%rsp
    595d:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    5961:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
/usr/include/c++/9/bits/stl_construct.h:137
	__destroy(__first, __last);
    5965:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    5969:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    596d:	48 89 d6             	mov    %rdx,%rsi
    5970:	48 89 c7             	mov    %rax,%rdi
    5973:	e8 c1 0c 00 00       	callq  6639 <_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_>
/usr/include/c++/9/bits/stl_construct.h:138
    }
    5978:	90                   	nop
    5979:	c9                   	leaveq 
    597a:	c3                   	retq   

000000000000597b <_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE>:
_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE():
/usr/include/c++/9/bits/move.h:74
    forward(typename std::remove_reference<_Tp>::type& __t) noexcept
    597b:	f3 0f 1e fa          	endbr64 
    597f:	55                   	push   %rbp
    5980:	48 89 e5             	mov    %rsp,%rbp
    5983:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
/usr/include/c++/9/bits/move.h:75
    { return static_cast<_Tp&&>(__t); }
    5987:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    598b:	5d                   	pop    %rbp
    598c:	c3                   	retq   
    598d:	90                   	nop

000000000000598e <_ZN9__gnu_cxx13new_allocatorIiE9constructIiJRKiEEEvPT_DpOT0_>:
_ZN9__gnu_cxx13new_allocatorIiE9constructIiJRKiEEEvPT_DpOT0_():
/usr/include/c++/9/ext/new_allocator.h:144
      }

#if __cplusplus >= 201103L
      template<typename _Up, typename... _Args>
	void
	construct(_Up* __p, _Args&&... __args)
    598e:	f3 0f 1e fa          	endbr64 
    5992:	55                   	push   %rbp
    5993:	48 89 e5             	mov    %rsp,%rbp
    5996:	53                   	push   %rbx
    5997:	48 83 ec 28          	sub    $0x28,%rsp
    599b:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    599f:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    59a3:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
/usr/include/c++/9/ext/new_allocator.h:146
	noexcept(std::is_nothrow_constructible<_Up, _Args...>::value)
	{ ::new((void *)__p) _Up(std::forward<_Args>(__args)...); }
    59a7:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    59ab:	48 89 c7             	mov    %rax,%rdi
    59ae:	e8 c8 ff ff ff       	callq  597b <_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE>
    59b3:	8b 18                	mov    (%rax),%ebx
    59b5:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    59b9:	48 89 c6             	mov    %rax,%rsi
    59bc:	bf 04 00 00 00       	mov    $0x4,%edi
    59c1:	e8 4d de ff ff       	callq  3813 <_ZnwmPv>
    59c6:	89 18                	mov    %ebx,(%rax)
    59c8:	90                   	nop
    59c9:	48 83 c4 28          	add    $0x28,%rsp
    59cd:	5b                   	pop    %rbx
    59ce:	5d                   	pop    %rbp
    59cf:	c3                   	retq   

00000000000059d0 <_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC1ERKS1_>:
_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_():
/usr/include/c++/9/bits/stl_iterator.h:803

      _GLIBCXX_CONSTEXPR __normal_iterator() _GLIBCXX_NOEXCEPT
      : _M_current(_Iterator()) { }

      explicit
      __normal_iterator(const _Iterator& __i) _GLIBCXX_NOEXCEPT
    59d0:	f3 0f 1e fa          	endbr64 
    59d4:	55                   	push   %rbp
    59d5:	48 89 e5             	mov    %rsp,%rbp
    59d8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    59dc:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
/usr/include/c++/9/bits/stl_iterator.h:804
      : _M_current(__i) { }
    59e0:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    59e4:	48 8b 10             	mov    (%rax),%rdx
    59e7:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    59eb:	48 89 10             	mov    %rdx,(%rax)
    59ee:	90                   	nop
    59ef:	5d                   	pop    %rbp
    59f0:	c3                   	retq   
    59f1:	90                   	nop

00000000000059f2 <_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc>:
_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc():
/usr/include/c++/9/bits/stl_vector.h:1753
      _M_check_len(size_type __n, const char* __s) const
    59f2:	f3 0f 1e fa          	endbr64 
    59f6:	55                   	push   %rbp
    59f7:	48 89 e5             	mov    %rsp,%rbp
    59fa:	53                   	push   %rbx
    59fb:	48 83 ec 48          	sub    $0x48,%rsp
    59ff:	48 89 7d c8          	mov    %rdi,-0x38(%rbp)
    5a03:	48 89 75 c0          	mov    %rsi,-0x40(%rbp)
    5a07:	48 89 55 b8          	mov    %rdx,-0x48(%rbp)
    5a0b:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    5a12:	00 00 
    5a14:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    5a18:	31 c0                	xor    %eax,%eax
/usr/include/c++/9/bits/stl_vector.h:1755
	if (max_size() - size() < __n)
    5a1a:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    5a1e:	48 89 c7             	mov    %rax,%rdi
    5a21:	e8 26 0c 00 00       	callq  664c <_ZNKSt6vectorIiSaIiEE8max_sizeEv>
    5a26:	48 89 c3             	mov    %rax,%rbx
    5a29:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    5a2d:	48 89 c7             	mov    %rax,%rdi
    5a30:	e8 0f e7 ff ff       	callq  4144 <_ZNKSt6vectorIiSaIiEE4sizeEv>
    5a35:	48 29 c3             	sub    %rax,%rbx
    5a38:	48 89 da             	mov    %rbx,%rdx
    5a3b:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    5a3f:	48 39 c2             	cmp    %rax,%rdx
    5a42:	0f 92 c0             	setb   %al
    5a45:	84 c0                	test   %al,%al
    5a47:	74 0c                	je     5a55 <_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc+0x63>
/usr/include/c++/9/bits/stl_vector.h:1756
	  __throw_length_error(__N(__s));
    5a49:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    5a4d:	48 89 c7             	mov    %rax,%rdi
    5a50:	e8 3b cb ff ff       	callq  2590 <_ZSt20__throw_length_errorPKc@plt>
/usr/include/c++/9/bits/stl_vector.h:1758
	const size_type __len = size() + (std::max)(size(), __n);
    5a55:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    5a59:	48 89 c7             	mov    %rax,%rdi
    5a5c:	e8 e3 e6 ff ff       	callq  4144 <_ZNKSt6vectorIiSaIiEE4sizeEv>
    5a61:	48 89 c3             	mov    %rax,%rbx
    5a64:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    5a68:	48 89 c7             	mov    %rax,%rdi
    5a6b:	e8 d4 e6 ff ff       	callq  4144 <_ZNKSt6vectorIiSaIiEE4sizeEv>
    5a70:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
    5a74:	48 8d 55 c0          	lea    -0x40(%rbp),%rdx
    5a78:	48 8d 45 d8          	lea    -0x28(%rbp),%rax
    5a7c:	48 89 d6             	mov    %rdx,%rsi
    5a7f:	48 89 c7             	mov    %rax,%rdi
    5a82:	e8 eb 0b 00 00       	callq  6672 <_ZSt3maxImERKT_S2_S2_>
    5a87:	48 8b 00             	mov    (%rax),%rax
    5a8a:	48 01 d8             	add    %rbx,%rax
    5a8d:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
/usr/include/c++/9/bits/stl_vector.h:1759
	return (__len < size() || __len > max_size()) ? max_size() : __len;
    5a91:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    5a95:	48 89 c7             	mov    %rax,%rdi
    5a98:	e8 a7 e6 ff ff       	callq  4144 <_ZNKSt6vectorIiSaIiEE4sizeEv>
    5a9d:	48 39 45 e0          	cmp    %rax,-0x20(%rbp)
    5aa1:	72 12                	jb     5ab5 <_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc+0xc3>
/usr/include/c++/9/bits/stl_vector.h:1759 (discriminator 2)
    5aa3:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    5aa7:	48 89 c7             	mov    %rax,%rdi
    5aaa:	e8 9d 0b 00 00       	callq  664c <_ZNKSt6vectorIiSaIiEE8max_sizeEv>
    5aaf:	48 39 45 e0          	cmp    %rax,-0x20(%rbp)
    5ab3:	76 0e                	jbe    5ac3 <_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc+0xd1>
/usr/include/c++/9/bits/stl_vector.h:1759 (discriminator 3)
    5ab5:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    5ab9:	48 89 c7             	mov    %rax,%rdi
    5abc:	e8 8b 0b 00 00       	callq  664c <_ZNKSt6vectorIiSaIiEE8max_sizeEv>
    5ac1:	eb 04                	jmp    5ac7 <_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc+0xd5>
/usr/include/c++/9/bits/stl_vector.h:1759 (discriminator 4)
    5ac3:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
/usr/include/c++/9/bits/stl_vector.h:1760 (discriminator 6)
      }
    5ac7:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    5acb:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
    5ad2:	00 00 
    5ad4:	74 05                	je     5adb <_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc+0xe9>
/usr/include/c++/9/bits/stl_vector.h:1760
    5ad6:	e8 05 cc ff ff       	callq  26e0 <__stack_chk_fail@plt>
    5adb:	48 83 c4 48          	add    $0x48,%rsp
    5adf:	5b                   	pop    %rbx
    5ae0:	5d                   	pop    %rbp
    5ae1:	c3                   	retq   

0000000000005ae2 <_ZNSt6vectorIiSaIiEE5beginEv>:
_ZNSt6vectorIiSaIiEE5beginEv():
/usr/include/c++/9/bits/stl_vector.h:808
      begin() _GLIBCXX_NOEXCEPT
    5ae2:	f3 0f 1e fa          	endbr64 
    5ae6:	55                   	push   %rbp
    5ae7:	48 89 e5             	mov    %rsp,%rbp
    5aea:	48 83 ec 20          	sub    $0x20,%rsp
    5aee:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    5af2:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    5af9:	00 00 
    5afb:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    5aff:	31 c0                	xor    %eax,%eax
/usr/include/c++/9/bits/stl_vector.h:809
      { return iterator(this->_M_impl._M_start); }
    5b01:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    5b05:	48 8d 45 f0          	lea    -0x10(%rbp),%rax
    5b09:	48 89 d6             	mov    %rdx,%rsi
    5b0c:	48 89 c7             	mov    %rax,%rdi
    5b0f:	e8 bc fe ff ff       	callq  59d0 <_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC1ERKS1_>
    5b14:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    5b18:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
    5b1c:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
    5b23:	00 00 
    5b25:	74 05                	je     5b2c <_ZNSt6vectorIiSaIiEE5beginEv+0x4a>
    5b27:	e8 b4 cb ff ff       	callq  26e0 <__stack_chk_fail@plt>
    5b2c:	c9                   	leaveq 
    5b2d:	c3                   	retq   

0000000000005b2e <_ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_>:
_ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_():
/usr/include/c++/9/bits/stl_iterator.h:986
#endif
    { return __lhs.base() - __rhs.base(); }

  template<typename _Iterator, typename _Container>
    inline typename __normal_iterator<_Iterator, _Container>::difference_type
    operator-(const __normal_iterator<_Iterator, _Container>& __lhs,
    5b2e:	f3 0f 1e fa          	endbr64 
    5b32:	55                   	push   %rbp
    5b33:	48 89 e5             	mov    %rsp,%rbp
    5b36:	53                   	push   %rbx
    5b37:	48 83 ec 18          	sub    $0x18,%rsp
    5b3b:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    5b3f:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
/usr/include/c++/9/bits/stl_iterator.h:989
	      const __normal_iterator<_Iterator, _Container>& __rhs)
    _GLIBCXX_NOEXCEPT
    { return __lhs.base() - __rhs.base(); }
    5b43:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    5b47:	48 89 c7             	mov    %rax,%rdi
    5b4a:	e8 b3 00 00 00       	callq  5c02 <_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv>
    5b4f:	48 8b 18             	mov    (%rax),%rbx
    5b52:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    5b56:	48 89 c7             	mov    %rax,%rdi
    5b59:	e8 a4 00 00 00       	callq  5c02 <_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv>
    5b5e:	48 8b 00             	mov    (%rax),%rax
    5b61:	48 29 c3             	sub    %rax,%rbx
    5b64:	48 89 d8             	mov    %rbx,%rax
    5b67:	48 c1 f8 02          	sar    $0x2,%rax
    5b6b:	48 83 c4 18          	add    $0x18,%rsp
    5b6f:	5b                   	pop    %rbx
    5b70:	5d                   	pop    %rbp
    5b71:	c3                   	retq   

0000000000005b72 <_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm>:
_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm():
/usr/include/c++/9/bits/stl_vector.h:340
      _M_allocate(size_t __n)
    5b72:	f3 0f 1e fa          	endbr64 
    5b76:	55                   	push   %rbp
    5b77:	48 89 e5             	mov    %rsp,%rbp
    5b7a:	48 83 ec 10          	sub    $0x10,%rsp
    5b7e:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    5b82:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
/usr/include/c++/9/bits/stl_vector.h:343
	return __n != 0 ? _Tr::allocate(_M_impl, __n) : pointer();
    5b86:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
    5b8b:	74 15                	je     5ba2 <_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm+0x30>
/usr/include/c++/9/bits/stl_vector.h:343 (discriminator 1)
    5b8d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5b91:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    5b95:	48 89 d6             	mov    %rdx,%rsi
    5b98:	48 89 c7             	mov    %rax,%rdi
    5b9b:	e8 01 0b 00 00       	callq  66a1 <_ZNSt16allocator_traitsISaIiEE8allocateERS0_m>
    5ba0:	eb 05                	jmp    5ba7 <_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm+0x35>
/usr/include/c++/9/bits/stl_vector.h:343 (discriminator 2)
    5ba2:	b8 00 00 00 00       	mov    $0x0,%eax
/usr/include/c++/9/bits/stl_vector.h:344 (discriminator 5)
      }
    5ba7:	c9                   	leaveq 
    5ba8:	c3                   	retq   

0000000000005ba9 <_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_>:
_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_():
/usr/include/c++/9/bits/stl_vector.h:462
      _S_relocate(pointer __first, pointer __last, pointer __result,
    5ba9:	f3 0f 1e fa          	endbr64 
    5bad:	55                   	push   %rbp
    5bae:	48 89 e5             	mov    %rsp,%rbp
    5bb1:	48 83 ec 30          	sub    $0x30,%rsp
    5bb5:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    5bb9:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    5bbd:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
    5bc1:	48 89 4d d0          	mov    %rcx,-0x30(%rbp)
    5bc5:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    5bcc:	00 00 
    5bce:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    5bd2:	31 c0                	xor    %eax,%eax
/usr/include/c++/9/bits/stl_vector.h:466
	return _S_do_relocate(__first, __last, __result, __alloc, __do_it{});
    5bd4:	48 8b 4d d0          	mov    -0x30(%rbp),%rcx
    5bd8:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    5bdc:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
    5be0:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    5be4:	48 89 c7             	mov    %rax,%rdi
    5be7:	e8 e3 0a 00 00       	callq  66cf <_ZNSt6vectorIiSaIiEE14_S_do_relocateEPiS2_S2_RS0_St17integral_constantIbLb1EE>
/usr/include/c++/9/bits/stl_vector.h:467
      }
    5bec:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
    5bf0:	64 48 33 3c 25 28 00 	xor    %fs:0x28,%rdi
    5bf7:	00 00 
    5bf9:	74 05                	je     5c00 <_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_+0x57>
    5bfb:	e8 e0 ca ff ff       	callq  26e0 <__stack_chk_fail@plt>
    5c00:	c9                   	leaveq 
    5c01:	c3                   	retq   

0000000000005c02 <_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv>:
_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv():
/usr/include/c++/9/bits/stl_iterator.h:868
      base() const _GLIBCXX_NOEXCEPT
    5c02:	f3 0f 1e fa          	endbr64 
    5c06:	55                   	push   %rbp
    5c07:	48 89 e5             	mov    %rsp,%rbp
    5c0a:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
/usr/include/c++/9/bits/stl_iterator.h:869
      { return _M_current; }
    5c0e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5c12:	5d                   	pop    %rbp
    5c13:	c3                   	retq   

0000000000005c14 <_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_>:
_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_():
/usr/include/c++/9/bits/stl_uninitialized.h:323
    }

  template<typename _InputIterator, typename _ForwardIterator,
	   typename _Allocator>
    inline _ForwardIterator
    __uninitialized_move_if_noexcept_a(_InputIterator __first,
    5c14:	f3 0f 1e fa          	endbr64 
    5c18:	55                   	push   %rbp
    5c19:	48 89 e5             	mov    %rsp,%rbp
    5c1c:	53                   	push   %rbx
    5c1d:	48 83 ec 28          	sub    $0x28,%rsp
    5c21:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    5c25:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    5c29:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
    5c2d:	48 89 4d d0          	mov    %rcx,-0x30(%rbp)
/usr/include/c++/9/bits/stl_uninitialized.h:329
				       _InputIterator __last,
				       _ForwardIterator __result,
				       _Allocator& __alloc)
    {
      return std::__uninitialized_copy_a
	(_GLIBCXX_MAKE_MOVE_IF_NOEXCEPT_ITERATOR(__first),
    5c31:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    5c35:	48 89 c7             	mov    %rax,%rdi
    5c38:	e8 c8 0a 00 00       	callq  6705 <_ZSt32__make_move_if_noexcept_iteratorIiSt13move_iteratorIPiEET0_PT_>
    5c3d:	48 89 c3             	mov    %rax,%rbx
    5c40:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    5c44:	48 89 c7             	mov    %rax,%rdi
    5c47:	e8 b9 0a 00 00       	callq  6705 <_ZSt32__make_move_if_noexcept_iteratorIiSt13move_iteratorIPiEET0_PT_>
    5c4c:	48 89 c7             	mov    %rax,%rdi
    5c4f:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
    5c53:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    5c57:	48 89 d1             	mov    %rdx,%rcx
    5c5a:	48 89 c2             	mov    %rax,%rdx
    5c5d:	48 89 de             	mov    %rbx,%rsi
    5c60:	e8 ec 0a 00 00       	callq  6751 <_ZSt22__uninitialized_copy_aISt13move_iteratorIPiES1_iET0_T_S4_S3_RSaIT1_E>
/usr/include/c++/9/bits/stl_uninitialized.h:331
	 _GLIBCXX_MAKE_MOVE_IF_NOEXCEPT_ITERATOR(__last), __result, __alloc);
    }
    5c65:	48 83 c4 28          	add    $0x28,%rsp
    5c69:	5b                   	pop    %rbx
    5c6a:	5d                   	pop    %rbp
    5c6b:	c3                   	retq   

0000000000005c6c <_ZNSt16allocator_traitsISaIiEE7destroyIiEEvRS0_PT_>:
_ZNSt16allocator_traitsISaIiEE7destroyIiEEvRS0_PT_():
/usr/include/c++/9/bits/alloc_traits.h:494
       *
       *  Calls @c __a.destroy(__p).
      */
      template<typename _Up>
	static void
	destroy(allocator_type& __a, _Up* __p)
    5c6c:	f3 0f 1e fa          	endbr64 
    5c70:	55                   	push   %rbp
    5c71:	48 89 e5             	mov    %rsp,%rbp
    5c74:	48 83 ec 10          	sub    $0x10,%rsp
    5c78:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    5c7c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
/usr/include/c++/9/bits/alloc_traits.h:496
	noexcept(noexcept(__a.destroy(__p)))
	{ __a.destroy(__p); }
    5c80:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    5c84:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5c88:	48 89 d6             	mov    %rdx,%rsi
    5c8b:	48 89 c7             	mov    %rax,%rdi
    5c8e:	e8 f3 0a 00 00       	callq  6786 <_ZN9__gnu_cxx13new_allocatorIiE7destroyIiEEvPT_>
    5c93:	90                   	nop
    5c94:	c9                   	leaveq 
    5c95:	c3                   	retq   

0000000000005c96 <_ZNSt12_Vector_baseIPKcSaIS1_EE12_Vector_implC1ERKS2_>:
_ZNSt12_Vector_baseIPKcSaIS1_EE12_Vector_implC2ERKS2_():
/usr/include/c++/9/bits/stl_vector.h:133
	_Vector_impl(_Tp_alloc_type const& __a) _GLIBCXX_NOEXCEPT
    5c96:	f3 0f 1e fa          	endbr64 
    5c9a:	55                   	push   %rbp
    5c9b:	48 89 e5             	mov    %rsp,%rbp
    5c9e:	48 83 ec 10          	sub    $0x10,%rsp
    5ca2:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    5ca6:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
/usr/include/c++/9/bits/stl_vector.h:134
	: _Tp_alloc_type(__a)
    5caa:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    5cae:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5cb2:	48 89 d6             	mov    %rdx,%rsi
    5cb5:	48 89 c7             	mov    %rax,%rdi
    5cb8:	e8 b7 01 00 00       	callq  5e74 <_ZNSaIPKcEC1ERKS1_>
    5cbd:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5cc1:	48 89 c7             	mov    %rax,%rdi
    5cc4:	e8 d1 0a 00 00       	callq  679a <_ZNSt12_Vector_baseIPKcSaIS1_EE17_Vector_impl_dataC1Ev>
/usr/include/c++/9/bits/stl_vector.h:135
	{ }
    5cc9:	90                   	nop
    5cca:	c9                   	leaveq 
    5ccb:	c3                   	retq   

0000000000005ccc <_ZNSt12_Vector_baseIPKcSaIS1_EE13_M_deallocateEPS1_m>:
_ZNSt12_Vector_baseIPKcSaIS1_EE13_M_deallocateEPS1_m():
/usr/include/c++/9/bits/stl_vector.h:347
      _M_deallocate(pointer __p, size_t __n)
    5ccc:	f3 0f 1e fa          	endbr64 
    5cd0:	55                   	push   %rbp
    5cd1:	48 89 e5             	mov    %rsp,%rbp
    5cd4:	48 83 ec 20          	sub    $0x20,%rsp
    5cd8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    5cdc:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    5ce0:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
/usr/include/c++/9/bits/stl_vector.h:350
	if (__p)
    5ce4:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
    5ce9:	74 17                	je     5d02 <_ZNSt12_Vector_baseIPKcSaIS1_EE13_M_deallocateEPS1_m+0x36>
/usr/include/c++/9/bits/stl_vector.h:351
	  _Tr::deallocate(_M_impl, __p, __n);
    5ceb:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5cef:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    5cf3:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
    5cf7:	48 89 ce             	mov    %rcx,%rsi
    5cfa:	48 89 c7             	mov    %rax,%rdi
    5cfd:	e8 ca 0a 00 00       	callq  67cc <_ZNSt16allocator_traitsISaIPKcEE10deallocateERS2_PS1_m>
/usr/include/c++/9/bits/stl_vector.h:352
      }
    5d02:	90                   	nop
    5d03:	c9                   	leaveq 
    5d04:	c3                   	retq   
    5d05:	90                   	nop

0000000000005d06 <_ZNKSt16initializer_listIPKcE4sizeEv>:
_ZNKSt16initializer_listIPKcE4sizeEv():
/usr/include/c++/9/initializer_list:71
      size() const noexcept { return _M_len; }
    5d06:	f3 0f 1e fa          	endbr64 
    5d0a:	55                   	push   %rbp
    5d0b:	48 89 e5             	mov    %rsp,%rbp
    5d0e:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    5d12:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5d16:	48 8b 40 08          	mov    0x8(%rax),%rax
    5d1a:	5d                   	pop    %rbp
    5d1b:	c3                   	retq   

0000000000005d1c <_ZSt8distanceIPKPKcENSt15iterator_traitsIT_E15difference_typeES5_S5_>:
_ZSt8distanceIPKPKcENSt15iterator_traitsIT_E15difference_typeES5_S5_():
/usr/include/c++/9/bits/stl_iterator_base_funcs.h:138
   *  and are constant time.  For other %iterator classes they are linear time.
  */
  template<typename _InputIterator>
    inline _GLIBCXX17_CONSTEXPR
    typename iterator_traits<_InputIterator>::difference_type
    distance(_InputIterator __first, _InputIterator __last)
    5d1c:	f3 0f 1e fa          	endbr64 
    5d20:	55                   	push   %rbp
    5d21:	48 89 e5             	mov    %rsp,%rbp
    5d24:	48 83 ec 20          	sub    $0x20,%rsp
    5d28:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    5d2c:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    5d30:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    5d37:	00 00 
    5d39:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    5d3d:	31 c0                	xor    %eax,%eax
/usr/include/c++/9/bits/stl_iterator_base_funcs.h:142
    {
      // concept requirements -- taken care of in __distance
      return std::__distance(__first, __last,
			     std::__iterator_category(__first));
    5d3f:	48 8d 45 e8          	lea    -0x18(%rbp),%rax
    5d43:	48 89 c7             	mov    %rax,%rdi
    5d46:	e8 b3 0a 00 00       	callq  67fe <_ZSt19__iterator_categoryIPKPKcENSt15iterator_traitsIT_E17iterator_categoryERKS5_>
/usr/include/c++/9/bits/stl_iterator_base_funcs.h:141
      return std::__distance(__first, __last,
    5d4b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    5d4f:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    5d53:	48 89 d6             	mov    %rdx,%rsi
    5d56:	48 89 c7             	mov    %rax,%rdi
    5d59:	e8 ae 0a 00 00       	callq  680c <_ZSt10__distanceIPKPKcENSt15iterator_traitsIT_E15difference_typeES5_S5_St26random_access_iterator_tag>
/usr/include/c++/9/bits/stl_iterator_base_funcs.h:143
    }
    5d5e:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
    5d62:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
    5d69:	00 00 
    5d6b:	74 05                	je     5d72 <_ZSt8distanceIPKPKcENSt15iterator_traitsIT_E15difference_typeES5_S5_+0x56>
    5d6d:	e8 6e c9 ff ff       	callq  26e0 <__stack_chk_fail@plt>
    5d72:	c9                   	leaveq 
    5d73:	c3                   	retq   

0000000000005d74 <_ZNSt12_Vector_baseIPKcSaIS1_EE11_M_allocateEm>:
_ZNSt12_Vector_baseIPKcSaIS1_EE11_M_allocateEm():
/usr/include/c++/9/bits/stl_vector.h:340
      _M_allocate(size_t __n)
    5d74:	f3 0f 1e fa          	endbr64 
    5d78:	55                   	push   %rbp
    5d79:	48 89 e5             	mov    %rsp,%rbp
    5d7c:	48 83 ec 10          	sub    $0x10,%rsp
    5d80:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    5d84:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
/usr/include/c++/9/bits/stl_vector.h:343
	return __n != 0 ? _Tr::allocate(_M_impl, __n) : pointer();
    5d88:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
    5d8d:	74 15                	je     5da4 <_ZNSt12_Vector_baseIPKcSaIS1_EE11_M_allocateEm+0x30>
/usr/include/c++/9/bits/stl_vector.h:343 (discriminator 1)
    5d8f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5d93:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    5d97:	48 89 d6             	mov    %rdx,%rsi
    5d9a:	48 89 c7             	mov    %rax,%rdi
    5d9d:	e8 88 0a 00 00       	callq  682a <_ZNSt16allocator_traitsISaIPKcEE8allocateERS2_m>
    5da2:	eb 05                	jmp    5da9 <_ZNSt12_Vector_baseIPKcSaIS1_EE11_M_allocateEm+0x35>
/usr/include/c++/9/bits/stl_vector.h:343 (discriminator 2)
    5da4:	b8 00 00 00 00       	mov    $0x0,%eax
/usr/include/c++/9/bits/stl_vector.h:344 (discriminator 5)
      }
    5da9:	c9                   	leaveq 
    5daa:	c3                   	retq   

0000000000005dab <_ZSt22__uninitialized_copy_aIPKPKcPS1_S1_ET0_T_S6_S5_RSaIT1_E>:
_ZSt22__uninitialized_copy_aIPKPKcPS1_S1_ET0_T_S6_S5_RSaIT1_E():
/usr/include/c++/9/bits/stl_uninitialized.h:305
    __uninitialized_copy_a(_InputIterator __first, _InputIterator __last,
    5dab:	f3 0f 1e fa          	endbr64 
    5daf:	55                   	push   %rbp
    5db0:	48 89 e5             	mov    %rsp,%rbp
    5db3:	48 83 ec 20          	sub    $0x20,%rsp
    5db7:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    5dbb:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    5dbf:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
    5dc3:	48 89 4d e0          	mov    %rcx,-0x20(%rbp)
/usr/include/c++/9/bits/stl_uninitialized.h:307
    { return std::uninitialized_copy(__first, __last, __result); }
    5dc7:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    5dcb:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
    5dcf:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5dd3:	48 89 ce             	mov    %rcx,%rsi
    5dd6:	48 89 c7             	mov    %rax,%rdi
    5dd9:	e8 7a 0a 00 00       	callq  6858 <_ZSt18uninitialized_copyIPKPKcPS1_ET0_T_S6_S5_>
    5dde:	c9                   	leaveq 
    5ddf:	c3                   	retq   

0000000000005de0 <_ZSt8_DestroyIPPKcEvT_S3_>:
_ZSt8_DestroyIPPKcEvT_S3_():
/usr/include/c++/9/bits/stl_construct.h:127
    _Destroy(_ForwardIterator __first, _ForwardIterator __last)
    5de0:	f3 0f 1e fa          	endbr64 
    5de4:	55                   	push   %rbp
    5de5:	48 89 e5             	mov    %rsp,%rbp
    5de8:	48 83 ec 10          	sub    $0x10,%rsp
    5dec:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    5df0:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
/usr/include/c++/9/bits/stl_construct.h:137
	__destroy(__first, __last);
    5df4:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    5df8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5dfc:	48 89 d6             	mov    %rdx,%rsi
    5dff:	48 89 c7             	mov    %rax,%rdi
    5e02:	e8 86 0a 00 00       	callq  688d <_ZNSt12_Destroy_auxILb1EE9__destroyIPPKcEEvT_S5_>
/usr/include/c++/9/bits/stl_construct.h:138
    }
    5e07:	90                   	nop
    5e08:	c9                   	leaveq 
    5e09:	c3                   	retq   

0000000000005e0a <_ZNSt6vectorIPKcSaIS1_EE11_S_max_sizeERKS2_>:
_ZNSt6vectorIPKcSaIS1_EE11_S_max_sizeERKS2_():
/usr/include/c++/9/bits/stl_vector.h:1773
      _S_max_size(const _Tp_alloc_type& __a) _GLIBCXX_NOEXCEPT
    5e0a:	f3 0f 1e fa          	endbr64 
    5e0e:	55                   	push   %rbp
    5e0f:	48 89 e5             	mov    %rsp,%rbp
    5e12:	48 83 ec 30          	sub    $0x30,%rsp
    5e16:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    5e1a:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    5e21:	00 00 
    5e23:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    5e27:	31 c0                	xor    %eax,%eax
/usr/include/c++/9/bits/stl_vector.h:1778
	const size_t __diffmax
    5e29:	48 b8 ff ff ff ff ff 	movabs $0xfffffffffffffff,%rax
    5e30:	ff ff 0f 
    5e33:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
/usr/include/c++/9/bits/stl_vector.h:1780
	const size_t __allocmax = _Alloc_traits::max_size(__a);
    5e37:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    5e3b:	48 89 c7             	mov    %rax,%rdi
    5e3e:	e8 5d 0a 00 00       	callq  68a0 <_ZNSt16allocator_traitsISaIPKcEE8max_sizeERKS2_>
    5e43:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
/usr/include/c++/9/bits/stl_vector.h:1781
	return (std::min)(__diffmax, __allocmax);
    5e47:	48 8d 55 f0          	lea    -0x10(%rbp),%rdx
    5e4b:	48 8d 45 e8          	lea    -0x18(%rbp),%rax
    5e4f:	48 89 d6             	mov    %rdx,%rsi
    5e52:	48 89 c7             	mov    %rax,%rdi
    5e55:	e8 68 01 00 00       	callq  5fc2 <_ZSt3minImERKT_S2_S2_>
    5e5a:	48 8b 00             	mov    (%rax),%rax
/usr/include/c++/9/bits/stl_vector.h:1782
      }
    5e5d:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
    5e61:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
    5e68:	00 00 
    5e6a:	74 05                	je     5e71 <_ZNSt6vectorIPKcSaIS1_EE11_S_max_sizeERKS2_+0x67>
    5e6c:	e8 6f c8 ff ff       	callq  26e0 <__stack_chk_fail@plt>
    5e71:	c9                   	leaveq 
    5e72:	c3                   	retq   
    5e73:	90                   	nop

0000000000005e74 <_ZNSaIPKcEC1ERKS1_>:
_ZNSaIPKcEC2ERKS1_():
/usr/include/c++/9/bits/allocator.h:140
      allocator(const allocator& __a) _GLIBCXX_NOTHROW
    5e74:	f3 0f 1e fa          	endbr64 
    5e78:	55                   	push   %rbp
    5e79:	48 89 e5             	mov    %rsp,%rbp
    5e7c:	48 83 ec 10          	sub    $0x10,%rsp
    5e80:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    5e84:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
/usr/include/c++/9/bits/allocator.h:141
      : __allocator_base<_Tp>(__a) { }
    5e88:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    5e8c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5e90:	48 89 d6             	mov    %rdx,%rsi
    5e93:	48 89 c7             	mov    %rax,%rdi
    5e96:	e8 23 0a 00 00       	callq  68be <_ZN9__gnu_cxx13new_allocatorIPKcEC1ERKS3_>
    5e9b:	90                   	nop
    5e9c:	c9                   	leaveq 
    5e9d:	c3                   	retq   

0000000000005e9e <_ZNSt12_Vector_baseIPKcSaIS1_EE17_M_create_storageEm>:
_ZNSt12_Vector_baseIPKcSaIS1_EE17_M_create_storageEm():
/usr/include/c++/9/bits/stl_vector.h:356
      _M_create_storage(size_t __n)
    5e9e:	f3 0f 1e fa          	endbr64 
    5ea2:	55                   	push   %rbp
    5ea3:	48 89 e5             	mov    %rsp,%rbp
    5ea6:	48 83 ec 10          	sub    $0x10,%rsp
    5eaa:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    5eae:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
/usr/include/c++/9/bits/stl_vector.h:358
	this->_M_impl._M_start = this->_M_allocate(__n);
    5eb2:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    5eb6:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5eba:	48 89 d6             	mov    %rdx,%rsi
    5ebd:	48 89 c7             	mov    %rax,%rdi
    5ec0:	e8 af fe ff ff       	callq  5d74 <_ZNSt12_Vector_baseIPKcSaIS1_EE11_M_allocateEm>
    5ec5:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    5ec9:	48 89 02             	mov    %rax,(%rdx)
/usr/include/c++/9/bits/stl_vector.h:359
	this->_M_impl._M_finish = this->_M_impl._M_start;
    5ecc:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5ed0:	48 8b 10             	mov    (%rax),%rdx
    5ed3:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5ed7:	48 89 50 08          	mov    %rdx,0x8(%rax)
/usr/include/c++/9/bits/stl_vector.h:360
	this->_M_impl._M_end_of_storage = this->_M_impl._M_start + __n;
    5edb:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5edf:	48 8b 00             	mov    (%rax),%rax
    5ee2:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    5ee6:	48 c1 e2 03          	shl    $0x3,%rdx
    5eea:	48 01 c2             	add    %rax,%rdx
    5eed:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5ef1:	48 89 50 10          	mov    %rdx,0x10(%rax)
/usr/include/c++/9/bits/stl_vector.h:361
      }
    5ef5:	90                   	nop
    5ef6:	c9                   	leaveq 
    5ef7:	c3                   	retq   

0000000000005ef8 <_ZSt27__uninitialized_default_n_aIPPKcmS1_ET_S3_T0_RSaIT1_E>:
_ZSt27__uninitialized_default_n_aIPPKcmS1_ET_S3_T0_RSaIT1_E():
/usr/include/c++/9/bits/stl_uninitialized.h:661
	}
    }

  template<typename _ForwardIterator, typename _Size, typename _Tp>
    inline _ForwardIterator
    __uninitialized_default_n_a(_ForwardIterator __first, _Size __n, 
    5ef8:	f3 0f 1e fa          	endbr64 
    5efc:	55                   	push   %rbp
    5efd:	48 89 e5             	mov    %rsp,%rbp
    5f00:	48 83 ec 20          	sub    $0x20,%rsp
    5f04:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    5f08:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    5f0c:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
/usr/include/c++/9/bits/stl_uninitialized.h:663
				allocator<_Tp>&)
    { return std::__uninitialized_default_n(__first, __n); }
    5f10:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    5f14:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5f18:	48 89 d6             	mov    %rdx,%rsi
    5f1b:	48 89 c7             	mov    %rax,%rdi
    5f1e:	e8 ae 09 00 00       	callq  68d1 <_ZSt25__uninitialized_default_nIPPKcmET_S3_T0_>
    5f23:	c9                   	leaveq 
    5f24:	c3                   	retq   
    5f25:	90                   	nop

0000000000005f26 <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS8_E>:
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS8_E():
/usr/include/c++/9/bits/stl_tree.h:637
      _M_destroy_node(_Link_type __p) _GLIBCXX_NOEXCEPT
    5f26:	f3 0f 1e fa          	endbr64 
    5f2a:	55                   	push   %rbp
    5f2b:	48 89 e5             	mov    %rsp,%rbp
    5f2e:	53                   	push   %rbx
    5f2f:	48 83 ec 18          	sub    $0x18,%rsp
    5f33:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    5f37:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
/usr/include/c++/9/bits/stl_tree.h:642
	_Alloc_traits::destroy(_M_get_Node_allocator(), __p->_M_valptr());
    5f3b:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    5f3f:	48 89 c7             	mov    %rax,%rdi
    5f42:	e8 89 f1 ff ff       	callq  50d0 <_ZNSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EE9_M_valptrEv>
    5f47:	48 89 c3             	mov    %rax,%rbx
    5f4a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    5f4e:	48 89 c7             	mov    %rax,%rdi
    5f51:	e8 a8 09 00 00       	callq  68fe <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE21_M_get_Node_allocatorEv>
    5f56:	48 89 de             	mov    %rbx,%rsi
    5f59:	48 89 c7             	mov    %rax,%rdi
    5f5c:	e8 af 09 00 00       	callq  6910 <_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEEE7destroyIS9_EEvRSB_PT_>
/usr/include/c++/9/bits/stl_tree.h:645
      }
    5f61:	90                   	nop
    5f62:	48 83 c4 18          	add    $0x18,%rsp
    5f66:	5b                   	pop    %rbx
    5f67:	5d                   	pop    %rbp
    5f68:	c3                   	retq   
    5f69:	90                   	nop

0000000000005f6a <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS8_E>:
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS8_E():
/usr/include/c++/9/bits/stl_tree.h:583
      _M_put_node(_Link_type __p) _GLIBCXX_NOEXCEPT
    5f6a:	f3 0f 1e fa          	endbr64 
    5f6e:	55                   	push   %rbp
    5f6f:	48 89 e5             	mov    %rsp,%rbp
    5f72:	48 83 ec 10          	sub    $0x10,%rsp
    5f76:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    5f7a:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
/usr/include/c++/9/bits/stl_tree.h:584
      { _Alloc_traits::deallocate(_M_get_Node_allocator(), __p, 1); }
    5f7e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5f82:	48 89 c7             	mov    %rax,%rdi
    5f85:	e8 74 09 00 00       	callq  68fe <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE21_M_get_Node_allocatorEv>
    5f8a:	48 89 c1             	mov    %rax,%rcx
    5f8d:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    5f91:	ba 01 00 00 00       	mov    $0x1,%edx
    5f96:	48 89 c6             	mov    %rax,%rsi
    5f99:	48 89 cf             	mov    %rcx,%rdi
    5f9c:	e8 99 09 00 00       	callq  693a <_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEEE10deallocateERSB_PSA_m>
    5fa1:	90                   	nop
    5fa2:	c9                   	leaveq 
    5fa3:	c3                   	retq   

0000000000005fa4 <_ZN9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EE6_M_ptrEv>:
_ZN9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EE6_M_ptrEv():
/usr/include/c++/9/ext/aligned_buffer.h:72
      const void*
      _M_addr() const noexcept
      { return static_cast<const void*>(&_M_storage); }

      _Tp*
      _M_ptr() noexcept
    5fa4:	f3 0f 1e fa          	endbr64 
    5fa8:	55                   	push   %rbp
    5fa9:	48 89 e5             	mov    %rsp,%rbp
    5fac:	48 83 ec 10          	sub    $0x10,%rsp
    5fb0:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
/usr/include/c++/9/ext/aligned_buffer.h:73
      { return static_cast<_Tp*>(_M_addr()); }
    5fb4:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5fb8:	48 89 c7             	mov    %rax,%rdi
    5fbb:	e8 ac 09 00 00       	callq  696c <_ZN9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EE7_M_addrEv>
    5fc0:	c9                   	leaveq 
    5fc1:	c3                   	retq   

0000000000005fc2 <_ZSt3minImERKT_S2_S2_>:
_ZSt3minImERKT_S2_S2_():
/usr/include/c++/9/bits/stl_algobase.h:198
   *  preprocessor macro.
  */
  template<typename _Tp>
    _GLIBCXX14_CONSTEXPR
    inline const _Tp&
    min(const _Tp& __a, const _Tp& __b)
    5fc2:	f3 0f 1e fa          	endbr64 
    5fc6:	55                   	push   %rbp
    5fc7:	48 89 e5             	mov    %rsp,%rbp
    5fca:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    5fce:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
/usr/include/c++/9/bits/stl_algobase.h:203
    {
      // concept requirements
      __glibcxx_function_requires(_LessThanComparableConcept<_Tp>)
      //return __b < __a ? __b : __a;
      if (__b < __a)
    5fd2:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    5fd6:	48 8b 10             	mov    (%rax),%rdx
    5fd9:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5fdd:	48 8b 00             	mov    (%rax),%rax
    5fe0:	48 39 c2             	cmp    %rax,%rdx
    5fe3:	73 06                	jae    5feb <_ZSt3minImERKT_S2_S2_+0x29>
/usr/include/c++/9/bits/stl_algobase.h:204
	return __b;
    5fe5:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    5fe9:	eb 04                	jmp    5fef <_ZSt3minImERKT_S2_S2_+0x2d>
/usr/include/c++/9/bits/stl_algobase.h:205
      return __a;
    5feb:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
/usr/include/c++/9/bits/stl_algobase.h:206
    }
    5fef:	5d                   	pop    %rbp
    5ff0:	c3                   	retq   
    5ff1:	90                   	nop

0000000000005ff2 <_ZNSt10_Head_baseILm0ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EEC1ES7_>:
_ZNSt10_Head_baseILm0ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EEC2ES7_():
/usr/include/c++/9/tuple:125
      constexpr _Head_base(const _Head& __h)
    5ff2:	f3 0f 1e fa          	endbr64 
    5ff6:	55                   	push   %rbp
    5ff7:	48 89 e5             	mov    %rsp,%rbp
    5ffa:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    5ffe:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
/usr/include/c++/9/tuple:126
      : _M_head_impl(__h) { }
    6002:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    6006:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    600a:	48 89 10             	mov    %rdx,(%rax)
    600d:	90                   	nop
    600e:	5d                   	pop    %rbp
    600f:	c3                   	retq   

0000000000006010 <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE11_M_get_nodeEv>:
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE11_M_get_nodeEv():
/usr/include/c++/9/bits/stl_tree.h:579
      _M_get_node()
    6010:	f3 0f 1e fa          	endbr64 
    6014:	55                   	push   %rbp
    6015:	48 89 e5             	mov    %rsp,%rbp
    6018:	48 83 ec 10          	sub    $0x10,%rsp
    601c:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
/usr/include/c++/9/bits/stl_tree.h:580
      { return _Alloc_traits::allocate(_M_get_Node_allocator(), 1); }
    6020:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    6024:	48 89 c7             	mov    %rax,%rdi
    6027:	e8 d2 08 00 00       	callq  68fe <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE21_M_get_Node_allocatorEv>
    602c:	be 01 00 00 00       	mov    $0x1,%esi
    6031:	48 89 c7             	mov    %rax,%rdi
    6034:	e8 45 09 00 00       	callq  697e <_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEEE8allocateERSB_m>
    6039:	c9                   	leaveq 
    603a:	c3                   	retq   
    603b:	90                   	nop

000000000000603c <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESJ_IJEEEEEvPSt13_Rb_tree_nodeIS8_EDpOT_>:
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESJ_IJEEEEEvPSt13_Rb_tree_nodeIS8_EDpOT_():
/usr/include/c++/9/bits/stl_tree.h:609
	_M_construct_node(_Link_type __node, _Args&&... __args)
    603c:	f3 0f 1e fa          	endbr64 
    6040:	55                   	push   %rbp
    6041:	48 89 e5             	mov    %rsp,%rbp
    6044:	41 56                	push   %r14
    6046:	41 55                	push   %r13
    6048:	41 54                	push   %r12
    604a:	53                   	push   %rbx
    604b:	48 83 ec 30          	sub    $0x30,%rsp
    604f:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    6053:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    6057:	48 89 55 c8          	mov    %rdx,-0x38(%rbp)
    605b:	48 89 4d c0          	mov    %rcx,-0x40(%rbp)
    605f:	4c 89 45 b8          	mov    %r8,-0x48(%rbp)
/usr/include/c++/9/bits/stl_tree.h:613
	      ::new(__node) _Rb_tree_node<_Val>;
    6063:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    6067:	48 89 c6             	mov    %rax,%rsi
    606a:	bf 60 00 00 00       	mov    $0x60,%edi
    606f:	e8 9f d7 ff ff       	callq  3813 <_ZnwmPv>
/usr/include/c++/9/bits/stl_tree.h:614
	      _Alloc_traits::construct(_M_get_Node_allocator(),
    6074:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    6078:	48 89 c7             	mov    %rax,%rdi
    607b:	e8 ec f0 ff ff       	callq  516c <_ZSt7forwardISt5tupleIJEEEOT_RNSt16remove_referenceIS2_E4typeE>
    6080:	49 89 c6             	mov    %rax,%r14
    6083:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    6087:	48 89 c7             	mov    %rax,%rdi
    608a:	e8 cb f0 ff ff       	callq  515a <_ZSt7forwardISt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEOT_RNSt16remove_referenceISA_E4typeE>
    608f:	49 89 c5             	mov    %rax,%r13
    6092:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    6096:	48 89 c7             	mov    %rax,%rdi
    6099:	e8 aa f0 ff ff       	callq  5148 <_ZSt7forwardIRKSt21piecewise_construct_tEOT_RNSt16remove_referenceIS3_E4typeE>
    609e:	49 89 c4             	mov    %rax,%r12
    60a1:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    60a5:	48 89 c7             	mov    %rax,%rdi
    60a8:	e8 23 f0 ff ff       	callq  50d0 <_ZNSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EE9_M_valptrEv>
    60ad:	48 89 c3             	mov    %rax,%rbx
    60b0:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    60b4:	48 89 c7             	mov    %rax,%rdi
    60b7:	e8 42 08 00 00       	callq  68fe <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE21_M_get_Node_allocatorEv>
    60bc:	4d 89 f0             	mov    %r14,%r8
    60bf:	4c 89 e9             	mov    %r13,%rcx
    60c2:	4c 89 e2             	mov    %r12,%rdx
    60c5:	48 89 de             	mov    %rbx,%rsi
    60c8:	48 89 c7             	mov    %rax,%rdi
    60cb:	e8 dc 08 00 00       	callq  69ac <_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEEE9constructIS9_JRKSt21piecewise_construct_tSt5tupleIJRS8_EESH_IJEEEEEvRSB_PT_DpOT0_>
/usr/include/c++/9/bits/stl_tree.h:624
	}
    60d0:	eb 3b                	jmp    610d <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESJ_IJEEEEEvPSt13_Rb_tree_nodeIS8_EDpOT_+0xd1>
    60d2:	f3 0f 1e fa          	endbr64 
/usr/include/c++/9/bits/stl_tree.h:618
	  __catch(...)
    60d6:	48 89 c7             	mov    %rax,%rdi
    60d9:	e8 82 c4 ff ff       	callq  2560 <__cxa_begin_catch@plt>
/usr/include/c++/9/bits/stl_tree.h:621
	      _M_put_node(__node);
    60de:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
    60e2:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    60e6:	48 89 d6             	mov    %rdx,%rsi
    60e9:	48 89 c7             	mov    %rax,%rdi
    60ec:	e8 79 fe ff ff       	callq  5f6a <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS8_E>
/usr/include/c++/9/bits/stl_tree.h:622
	      __throw_exception_again;
    60f1:	e8 da c6 ff ff       	callq  27d0 <__cxa_rethrow@plt>
    60f6:	f3 0f 1e fa          	endbr64 
    60fa:	48 89 c3             	mov    %rax,%rbx
/usr/include/c++/9/bits/stl_tree.h:618
	  __catch(...)
    60fd:	e8 2e c7 ff ff       	callq  2830 <__cxa_end_catch@plt>
    6102:	48 89 d8             	mov    %rbx,%rax
    6105:	48 89 c7             	mov    %rax,%rdi
    6108:	e8 53 c7 ff ff       	callq  2860 <_Unwind_Resume@plt>
/usr/include/c++/9/bits/stl_tree.h:624
	}
    610d:	48 83 c4 30          	add    $0x30,%rsp
    6111:	5b                   	pop    %rbx
    6112:	41 5c                	pop    %r12
    6114:	41 5d                	pop    %r13
    6116:	41 5e                	pop    %r14
    6118:	5d                   	pop    %rbp
    6119:	c3                   	retq   

000000000000611a <_ZNKSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EE13_M_const_castEv>:
_ZNKSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EE13_M_const_castEv():
/usr/include/c++/9/bits/stl_tree.h:352
      _M_const_cast() const _GLIBCXX_NOEXCEPT
    611a:	f3 0f 1e fa          	endbr64 
    611e:	55                   	push   %rbp
    611f:	48 89 e5             	mov    %rsp,%rbp
    6122:	48 83 ec 20          	sub    $0x20,%rsp
    6126:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    612a:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    6131:	00 00 
    6133:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    6137:	31 c0                	xor    %eax,%eax
/usr/include/c++/9/bits/stl_tree.h:353
      { return iterator(const_cast<typename iterator::_Base_ptr>(_M_node)); }
    6139:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    613d:	48 8b 10             	mov    (%rax),%rdx
    6140:	48 8d 45 f0          	lea    -0x10(%rbp),%rax
    6144:	48 89 d6             	mov    %rdx,%rsi
    6147:	48 89 c7             	mov    %rax,%rdi
    614a:	e8 95 f5 ff ff       	callq  56e4 <_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEC1EPSt18_Rb_tree_node_base>
    614f:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    6153:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
    6157:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
    615e:	00 00 
    6160:	74 05                	je     6167 <_ZNKSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EE13_M_const_castEv+0x4d>
    6162:	e8 79 c5 ff ff       	callq  26e0 <__stack_chk_fail@plt>
    6167:	c9                   	leaveq 
    6168:	c3                   	retq   
    6169:	90                   	nop

000000000000616a <_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE4sizeEv>:
_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE4sizeEv():
/usr/include/c++/9/bits/stl_tree.h:1047
      size() const _GLIBCXX_NOEXCEPT
    616a:	f3 0f 1e fa          	endbr64 
    616e:	55                   	push   %rbp
    616f:	48 89 e5             	mov    %rsp,%rbp
    6172:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
/usr/include/c++/9/bits/stl_tree.h:1048
      { return _M_impl._M_node_count; }
    6176:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    617a:	48 8b 40 28          	mov    0x28(%rax),%rax
    617e:	5d                   	pop    %rbp
    617f:	c3                   	retq   

0000000000006180 <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_rightmostEv>:
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_rightmostEv():
/usr/include/c++/9/bits/stl_tree.h:741
      _M_rightmost() _GLIBCXX_NOEXCEPT
    6180:	f3 0f 1e fa          	endbr64 
    6184:	55                   	push   %rbp
    6185:	48 89 e5             	mov    %rsp,%rbp
    6188:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
/usr/include/c++/9/bits/stl_tree.h:742
      { return this->_M_impl._M_header._M_right; }
    618c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    6190:	48 83 c0 20          	add    $0x20,%rax
    6194:	5d                   	pop    %rbp
    6195:	c3                   	retq   

0000000000006196 <_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC1IRS1_Lb1EEERKS1_OT_>:
_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_Lb1EEERKS1_OT_():
/usr/include/c++/9/bits/stl_pair.h:325

      template<typename _U2, typename
	       enable_if<_PCCP::template
			   _CopyMovePair<true, _T1, _U2>(),
                         bool>::type=true>
       constexpr pair(const _T1& __x, _U2&& __y)
    6196:	f3 0f 1e fa          	endbr64 
    619a:	55                   	push   %rbp
    619b:	48 89 e5             	mov    %rsp,%rbp
    619e:	48 83 ec 20          	sub    $0x20,%rsp
    61a2:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    61a6:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    61aa:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
/usr/include/c++/9/bits/stl_pair.h:326
       : first(__x), second(std::forward<_U2>(__y)) { }
    61ae:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    61b2:	48 8b 10             	mov    (%rax),%rdx
    61b5:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    61b9:	48 89 10             	mov    %rdx,(%rax)
    61bc:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    61c0:	48 89 c7             	mov    %rax,%rdi
    61c3:	e8 54 08 00 00       	callq  6a1c <_ZSt7forwardIRPSt18_Rb_tree_node_baseEOT_RNSt16remove_referenceIS3_E4typeE>
    61c8:	48 8b 10             	mov    (%rax),%rdx
    61cb:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    61cf:	48 89 50 08          	mov    %rdx,0x8(%rax)
    61d3:	90                   	nop
    61d4:	c9                   	leaveq 
    61d5:	c3                   	retq   

00000000000061d6 <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE24_M_get_insert_unique_posERS7_>:
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE24_M_get_insert_unique_posERS7_():
/usr/include/c++/9/bits/stl_tree.h:2090
    _Rb_tree<_Key, _Val, _KeyOfValue, _Compare, _Alloc>::
    61d6:	f3 0f 1e fa          	endbr64 
    61da:	55                   	push   %rbp
    61db:	48 89 e5             	mov    %rsp,%rbp
    61de:	53                   	push   %rbx
    61df:	48 83 ec 68          	sub    $0x68,%rsp
    61e3:	48 89 7d 98          	mov    %rdi,-0x68(%rbp)
    61e7:	48 89 75 90          	mov    %rsi,-0x70(%rbp)
    61eb:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    61f2:	00 00 
    61f4:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    61f8:	31 c0                	xor    %eax,%eax
/usr/include/c++/9/bits/stl_tree.h:2094
      _Link_type __x = _M_begin();
    61fa:	48 8b 45 98          	mov    -0x68(%rbp),%rax
    61fe:	48 89 c7             	mov    %rax,%rdi
    6201:	e8 ee e0 ff ff       	callq  42f4 <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_beginEv>
    6206:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
/usr/include/c++/9/bits/stl_tree.h:2095
      _Base_ptr __y = _M_end();
    620a:	48 8b 45 98          	mov    -0x68(%rbp),%rax
    620e:	48 89 c7             	mov    %rax,%rdi
    6211:	e8 ec f4 ff ff       	callq  5702 <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE6_M_endEv>
    6216:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
/usr/include/c++/9/bits/stl_tree.h:2096
      bool __comp = true;
    621a:	c6 45 af 01          	movb   $0x1,-0x51(%rbp)
/usr/include/c++/9/bits/stl_tree.h:2097
      while (__x != 0)
    621e:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    6222:	48 85 c0             	test   %rax,%rax
    6225:	74 53                	je     627a <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE24_M_get_insert_unique_posERS7_+0xa4>
/usr/include/c++/9/bits/stl_tree.h:2099
	  __y = __x;
    6227:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    622b:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
/usr/include/c++/9/bits/stl_tree.h:2100
	  __comp = _M_impl._M_key_compare(__k, _S_key(__x));
    622f:	48 8b 5d 98          	mov    -0x68(%rbp),%rbx
    6233:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    6237:	48 89 c7             	mov    %rax,%rdi
    623a:	e8 68 f3 ff ff       	callq  55a7 <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE6_S_keyEPKSt13_Rb_tree_nodeIS8_E>
    623f:	48 89 c2             	mov    %rax,%rdx
    6242:	48 8b 45 90          	mov    -0x70(%rbp),%rax
    6246:	48 89 c6             	mov    %rax,%rsi
    6249:	48 89 df             	mov    %rbx,%rdi
    624c:	e8 2b e1 ff ff       	callq  437c <_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_>
    6251:	88 45 af             	mov    %al,-0x51(%rbp)
/usr/include/c++/9/bits/stl_tree.h:2101
	  __x = __comp ? _S_left(__x) : _S_right(__x);
    6254:	80 7d af 00          	cmpb   $0x0,-0x51(%rbp)
    6258:	74 0e                	je     6268 <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE24_M_get_insert_unique_posERS7_+0x92>
/usr/include/c++/9/bits/stl_tree.h:2101 (discriminator 1)
    625a:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    625e:	48 89 c7             	mov    %rax,%rdi
    6261:	e8 b7 ed ff ff       	callq  501d <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_S_leftEPSt18_Rb_tree_node_base>
    6266:	eb 0c                	jmp    6274 <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE24_M_get_insert_unique_posERS7_+0x9e>
/usr/include/c++/9/bits/stl_tree.h:2101 (discriminator 2)
    6268:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    626c:	48 89 c7             	mov    %rax,%rdi
    626f:	e8 93 ed ff ff       	callq  5007 <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_S_rightEPSt18_Rb_tree_node_base>
/usr/include/c++/9/bits/stl_tree.h:2101 (discriminator 4)
    6274:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
/usr/include/c++/9/bits/stl_tree.h:2097 (discriminator 4)
      while (__x != 0)
    6278:	eb a4                	jmp    621e <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE24_M_get_insert_unique_posERS7_+0x48>
/usr/include/c++/9/bits/stl_tree.h:2103
      iterator __j = iterator(__y);
    627a:	48 8b 55 b8          	mov    -0x48(%rbp),%rdx
    627e:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
    6282:	48 89 d6             	mov    %rdx,%rsi
    6285:	48 89 c7             	mov    %rax,%rdi
    6288:	e8 57 f4 ff ff       	callq  56e4 <_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEC1EPSt18_Rb_tree_node_base>
/usr/include/c++/9/bits/stl_tree.h:2104
      if (__comp)
    628d:	80 7d af 00          	cmpb   $0x0,-0x51(%rbp)
    6291:	74 54                	je     62e7 <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE24_M_get_insert_unique_posERS7_+0x111>
/usr/include/c++/9/bits/stl_tree.h:2106
	  if (__j == begin())
    6293:	48 8b 45 98          	mov    -0x68(%rbp),%rax
    6297:	48 89 c7             	mov    %rax,%rdi
    629a:	e8 8f 07 00 00       	callq  6a2e <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE5beginEv>
    629f:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
    62a3:	48 8d 55 d0          	lea    -0x30(%rbp),%rdx
    62a7:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
    62ab:	48 89 d6             	mov    %rdx,%rsi
    62ae:	48 89 c7             	mov    %rax,%rdi
    62b1:	e8 1a da ff ff       	callq  3cd0 <_ZSteqRKSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EESB_>
    62b6:	84 c0                	test   %al,%al
    62b8:	74 21                	je     62db <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE24_M_get_insert_unique_posERS7_+0x105>
/usr/include/c++/9/bits/stl_tree.h:2107
	    return _Res(__x, __y);
    62ba:	48 8d 55 b8          	lea    -0x48(%rbp),%rdx
    62be:	48 8d 4d b0          	lea    -0x50(%rbp),%rcx
    62c2:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
    62c6:	48 89 ce             	mov    %rcx,%rsi
    62c9:	48 89 c7             	mov    %rax,%rdi
    62cc:	e8 ad 07 00 00       	callq  6a7e <_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC1IRPSt13_Rb_tree_nodeIS_IKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_EERS1_Lb1EEEOT_OT0_>
    62d1:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    62d5:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    62d9:	eb 7d                	jmp    6358 <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE24_M_get_insert_unique_posERS7_+0x182>
/usr/include/c++/9/bits/stl_tree.h:2109
	    --__j;
    62db:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
    62df:	48 89 c7             	mov    %rax,%rdi
    62e2:	e8 eb 00 00 00       	callq  63d2 <_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEmmEv>
/usr/include/c++/9/bits/stl_tree.h:2111
      if (_M_impl._M_key_compare(_S_key(__j._M_node), __k))
    62e7:	48 8b 5d 98          	mov    -0x68(%rbp),%rbx
    62eb:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    62ef:	48 89 c7             	mov    %rax,%rdi
    62f2:	e8 de f4 ff ff       	callq  57d5 <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE6_S_keyEPKSt18_Rb_tree_node_base>
    62f7:	48 89 c1             	mov    %rax,%rcx
    62fa:	48 8b 45 90          	mov    -0x70(%rbp),%rax
    62fe:	48 89 c2             	mov    %rax,%rdx
    6301:	48 89 ce             	mov    %rcx,%rsi
    6304:	48 89 df             	mov    %rbx,%rdi
    6307:	e8 70 e0 ff ff       	callq  437c <_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_>
    630c:	84 c0                	test   %al,%al
    630e:	74 21                	je     6331 <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE24_M_get_insert_unique_posERS7_+0x15b>
/usr/include/c++/9/bits/stl_tree.h:2112
	return _Res(__x, __y);
    6310:	48 8d 55 b8          	lea    -0x48(%rbp),%rdx
    6314:	48 8d 4d b0          	lea    -0x50(%rbp),%rcx
    6318:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
    631c:	48 89 ce             	mov    %rcx,%rsi
    631f:	48 89 c7             	mov    %rax,%rdi
    6322:	e8 57 07 00 00       	callq  6a7e <_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC1IRPSt13_Rb_tree_nodeIS_IKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_EERS1_Lb1EEEOT_OT0_>
    6327:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    632b:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    632f:	eb 27                	jmp    6358 <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE24_M_get_insert_unique_posERS7_+0x182>
/usr/include/c++/9/bits/stl_tree.h:2113
      return _Res(__j._M_node, 0);
    6331:	48 c7 45 c8 00 00 00 	movq   $0x0,-0x38(%rbp)
    6338:	00 
    6339:	48 8d 55 c8          	lea    -0x38(%rbp),%rdx
    633d:	48 8d 4d c0          	lea    -0x40(%rbp),%rcx
    6341:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
    6345:	48 89 ce             	mov    %rcx,%rsi
    6348:	48 89 c7             	mov    %rax,%rdi
    634b:	e8 da 00 00 00       	callq  642a <_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC1IRS1_Lb1EEEOT_RKS1_>
    6350:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    6354:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
/usr/include/c++/9/bits/stl_tree.h:2114 (discriminator 1)
    }
    6358:	48 8b 5d e8          	mov    -0x18(%rbp),%rbx
    635c:	64 48 33 1c 25 28 00 	xor    %fs:0x28,%rbx
    6363:	00 00 
    6365:	74 05                	je     636c <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE24_M_get_insert_unique_posERS7_+0x196>
/usr/include/c++/9/bits/stl_tree.h:2114
    6367:	e8 74 c3 ff ff       	callq  26e0 <__stack_chk_fail@plt>
    636c:	48 83 c4 68          	add    $0x68,%rsp
    6370:	5b                   	pop    %rbx
    6371:	5d                   	pop    %rbp
    6372:	c3                   	retq   
    6373:	90                   	nop

0000000000006374 <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE11_M_leftmostEv>:
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE11_M_leftmostEv():
/usr/include/c++/9/bits/stl_tree.h:733
      _M_leftmost() _GLIBCXX_NOEXCEPT
    6374:	f3 0f 1e fa          	endbr64 
    6378:	55                   	push   %rbp
    6379:	48 89 e5             	mov    %rsp,%rbp
    637c:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
/usr/include/c++/9/bits/stl_tree.h:734
      { return this->_M_impl._M_header._M_left; }
    6380:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    6384:	48 83 c0 18          	add    $0x18,%rax
    6388:	5d                   	pop    %rbp
    6389:	c3                   	retq   

000000000000638a <_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC1IRS1_S4_Lb1EEEOT_OT0_>:
_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_S4_Lb1EEEOT_OT0_():
/usr/include/c++/9/bits/stl_pair.h:341
	       enable_if<_PCCP::template
			   _MoveConstructiblePair<_U1, _U2>()
			  && _PCCP::template
			   _ImplicitlyMoveConvertiblePair<_U1, _U2>(),
                         bool>::type=true>
	constexpr pair(_U1&& __x, _U2&& __y)
    638a:	f3 0f 1e fa          	endbr64 
    638e:	55                   	push   %rbp
    638f:	48 89 e5             	mov    %rsp,%rbp
    6392:	48 83 ec 20          	sub    $0x20,%rsp
    6396:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    639a:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    639e:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
/usr/include/c++/9/bits/stl_pair.h:342
	: first(std::forward<_U1>(__x)), second(std::forward<_U2>(__y)) { }
    63a2:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    63a6:	48 89 c7             	mov    %rax,%rdi
    63a9:	e8 6e 06 00 00       	callq  6a1c <_ZSt7forwardIRPSt18_Rb_tree_node_baseEOT_RNSt16remove_referenceIS3_E4typeE>
    63ae:	48 8b 10             	mov    (%rax),%rdx
    63b1:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    63b5:	48 89 10             	mov    %rdx,(%rax)
    63b8:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    63bc:	48 89 c7             	mov    %rax,%rdi
    63bf:	e8 58 06 00 00       	callq  6a1c <_ZSt7forwardIRPSt18_Rb_tree_node_baseEOT_RNSt16remove_referenceIS3_E4typeE>
    63c4:	48 8b 10             	mov    (%rax),%rdx
    63c7:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    63cb:	48 89 50 08          	mov    %rdx,0x8(%rax)
    63cf:	90                   	nop
    63d0:	c9                   	leaveq 
    63d1:	c3                   	retq   

00000000000063d2 <_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEmmEv>:
_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEmmEv():
/usr/include/c++/9/bits/stl_tree.h:300
      operator--() _GLIBCXX_NOEXCEPT
    63d2:	f3 0f 1e fa          	endbr64 
    63d6:	55                   	push   %rbp
    63d7:	48 89 e5             	mov    %rsp,%rbp
    63da:	48 83 ec 10          	sub    $0x10,%rsp
    63de:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
/usr/include/c++/9/bits/stl_tree.h:302
	_M_node = _Rb_tree_decrement(_M_node);
    63e2:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    63e6:	48 8b 00             	mov    (%rax),%rax
    63e9:	48 89 c7             	mov    %rax,%rdi
    63ec:	e8 af c2 ff ff       	callq  26a0 <_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base@plt>
    63f1:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    63f5:	48 89 02             	mov    %rax,(%rdx)
/usr/include/c++/9/bits/stl_tree.h:303
	return *this;
    63f8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
/usr/include/c++/9/bits/stl_tree.h:304
      }
    63fc:	c9                   	leaveq 
    63fd:	c3                   	retq   

00000000000063fe <_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEppEv>:
_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEppEv():
/usr/include/c++/9/bits/stl_tree.h:285
      operator++() _GLIBCXX_NOEXCEPT
    63fe:	f3 0f 1e fa          	endbr64 
    6402:	55                   	push   %rbp
    6403:	48 89 e5             	mov    %rsp,%rbp
    6406:	48 83 ec 10          	sub    $0x10,%rsp
    640a:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
/usr/include/c++/9/bits/stl_tree.h:287
	_M_node = _Rb_tree_increment(_M_node);
    640e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    6412:	48 8b 00             	mov    (%rax),%rax
    6415:	48 89 c7             	mov    %rax,%rdi
    6418:	e8 d3 c1 ff ff       	callq  25f0 <_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base@plt>
    641d:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    6421:	48 89 02             	mov    %rax,(%rdx)
/usr/include/c++/9/bits/stl_tree.h:288
	return *this;
    6424:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
/usr/include/c++/9/bits/stl_tree.h:289
      }
    6428:	c9                   	leaveq 
    6429:	c3                   	retq   

000000000000642a <_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC1IRS1_Lb1EEEOT_RKS1_>:
_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_Lb1EEEOT_RKS1_():
/usr/include/c++/9/bits/stl_pair.h:311
       constexpr pair(_U1&& __x, const _T2& __y)
    642a:	f3 0f 1e fa          	endbr64 
    642e:	55                   	push   %rbp
    642f:	48 89 e5             	mov    %rsp,%rbp
    6432:	48 83 ec 20          	sub    $0x20,%rsp
    6436:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    643a:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    643e:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
/usr/include/c++/9/bits/stl_pair.h:312
       : first(std::forward<_U1>(__x)), second(__y) { }
    6442:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    6446:	48 89 c7             	mov    %rax,%rdi
    6449:	e8 ce 05 00 00       	callq  6a1c <_ZSt7forwardIRPSt18_Rb_tree_node_baseEOT_RNSt16remove_referenceIS3_E4typeE>
    644e:	48 8b 10             	mov    (%rax),%rdx
    6451:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    6455:	48 89 10             	mov    %rdx,(%rax)
    6458:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    645c:	48 8b 10             	mov    (%rax),%rdx
    645f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    6463:	48 89 50 08          	mov    %rdx,0x8(%rax)
    6467:	90                   	nop
    6468:	c9                   	leaveq 
    6469:	c3                   	retq   

000000000000646a <_ZNKSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EE9_M_valptrEv>:
_ZNKSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EE9_M_valptrEv():
/usr/include/c++/9/bits/stl_tree.h:238
      _M_valptr() const
    646a:	f3 0f 1e fa          	endbr64 
    646e:	55                   	push   %rbp
    646f:	48 89 e5             	mov    %rsp,%rbp
    6472:	48 83 ec 10          	sub    $0x10,%rsp
    6476:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
/usr/include/c++/9/bits/stl_tree.h:239
      { return _M_storage._M_ptr(); }
    647a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    647e:	48 83 c0 20          	add    $0x20,%rax
    6482:	48 89 c7             	mov    %rax,%rdi
    6485:	e8 3c 06 00 00       	callq  6ac6 <_ZNK9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EE6_M_ptrEv>
    648a:	c9                   	leaveq 
    648b:	c3                   	retq   

000000000000648c <_ZNKSt10_Select1stISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEclERKS8_>:
_ZNKSt10_Select1stISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEclERKS8_():
/usr/include/c++/9/bits/stl_function.h:1155
      typename _Pair::first_type&
      operator()(_Pair& __x) const
      { return __x.first; }

      const typename _Pair::first_type&
      operator()(const _Pair& __x) const
    648c:	f3 0f 1e fa          	endbr64 
    6490:	55                   	push   %rbp
    6491:	48 89 e5             	mov    %rsp,%rbp
    6494:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    6498:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
/usr/include/c++/9/bits/stl_function.h:1156
      { return __x.first; }
    649c:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    64a0:	5d                   	pop    %rbp
    64a1:	c3                   	retq   

00000000000064a2 <_ZNSt11_Tuple_implILm0EJONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC1IS5_EEOT_>:
_ZNSt11_Tuple_implILm0EJONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IS5_EEOT_():
/usr/include/c++/9/tuple:348
        constexpr _Tuple_impl(_UHead&& __head)
    64a2:	f3 0f 1e fa          	endbr64 
    64a6:	55                   	push   %rbp
    64a7:	48 89 e5             	mov    %rsp,%rbp
    64aa:	53                   	push   %rbx
    64ab:	48 83 ec 18          	sub    $0x18,%rsp
    64af:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    64b3:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
/usr/include/c++/9/tuple:349
	: _Base(std::forward<_UHead>(__head)) { }
    64b7:	48 8b 5d e8          	mov    -0x18(%rbp),%rbx
    64bb:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    64bf:	48 89 c7             	mov    %rax,%rdi
    64c2:	e8 2c f3 ff ff       	callq  57f3 <_ZSt7forwardINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS6_E4typeE>
    64c7:	48 89 c6             	mov    %rax,%rsi
    64ca:	48 89 df             	mov    %rbx,%rdi
    64cd:	e8 38 00 00 00       	callq  650a <_ZNSt10_Head_baseILm0EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EEC1IS5_EEOT_>
    64d2:	90                   	nop
    64d3:	48 83 c4 18          	add    $0x18,%rsp
    64d7:	5b                   	pop    %rbx
    64d8:	5d                   	pop    %rbp
    64d9:	c3                   	retq   

00000000000064da <_ZNSt11_Tuple_implILm0EJONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE7_M_headERS7_>:
_ZNSt11_Tuple_implILm0EJONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE7_M_headERS7_():
/usr/include/c++/9/tuple:334
      _M_head(_Tuple_impl& __t) noexcept { return _Base::_M_head(__t); }
    64da:	f3 0f 1e fa          	endbr64 
    64de:	55                   	push   %rbp
    64df:	48 89 e5             	mov    %rsp,%rbp
    64e2:	48 83 ec 10          	sub    $0x10,%rsp
    64e6:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    64ea:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    64ee:	48 89 c7             	mov    %rax,%rdi
    64f1:	e8 ee 05 00 00       	callq  6ae4 <_ZNSt10_Head_baseILm0EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE7_M_headERS7_>
    64f6:	c9                   	leaveq 
    64f7:	c3                   	retq   

00000000000064f8 <_ZSt7forwardIONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS7_E4typeE>:
_ZSt7forwardIONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS7_E4typeE():
/usr/include/c++/9/bits/move.h:74
    forward(typename std::remove_reference<_Tp>::type& __t) noexcept
    64f8:	f3 0f 1e fa          	endbr64 
    64fc:	55                   	push   %rbp
    64fd:	48 89 e5             	mov    %rsp,%rbp
    6500:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
/usr/include/c++/9/bits/move.h:75
    { return static_cast<_Tp&&>(__t); }
    6504:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    6508:	5d                   	pop    %rbp
    6509:	c3                   	retq   

000000000000650a <_ZNSt10_Head_baseILm0EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EEC1IS5_EEOT_>:
_ZNSt10_Head_baseILm0EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EEC2IS5_EEOT_():
/usr/include/c++/9/tuple:132
        constexpr _Head_base(_UHead&& __h)
    650a:	f3 0f 1e fa          	endbr64 
    650e:	55                   	push   %rbp
    650f:	48 89 e5             	mov    %rsp,%rbp
    6512:	48 83 ec 10          	sub    $0x10,%rsp
    6516:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    651a:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
/usr/include/c++/9/tuple:133
	: _M_head_impl(std::forward<_UHead>(__h)) { }
    651e:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    6522:	48 89 c7             	mov    %rax,%rdi
    6525:	e8 c9 f2 ff ff       	callq  57f3 <_ZSt7forwardINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS6_E4typeE>
    652a:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    652e:	48 89 02             	mov    %rax,(%rdx)
    6531:	90                   	nop
    6532:	c9                   	leaveq 
    6533:	c3                   	retq   

0000000000006534 <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJOS5_EESJ_IJEEEEEvPSt13_Rb_tree_nodeIS8_EDpOT_>:
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJOS5_EESJ_IJEEEEEvPSt13_Rb_tree_nodeIS8_EDpOT_():
/usr/include/c++/9/bits/stl_tree.h:609
	_M_construct_node(_Link_type __node, _Args&&... __args)
    6534:	f3 0f 1e fa          	endbr64 
    6538:	55                   	push   %rbp
    6539:	48 89 e5             	mov    %rsp,%rbp
    653c:	41 56                	push   %r14
    653e:	41 55                	push   %r13
    6540:	41 54                	push   %r12
    6542:	53                   	push   %rbx
    6543:	48 83 ec 30          	sub    $0x30,%rsp
    6547:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    654b:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    654f:	48 89 55 c8          	mov    %rdx,-0x38(%rbp)
    6553:	48 89 4d c0          	mov    %rcx,-0x40(%rbp)
    6557:	4c 89 45 b8          	mov    %r8,-0x48(%rbp)
/usr/include/c++/9/bits/stl_tree.h:613
	      ::new(__node) _Rb_tree_node<_Val>;
    655b:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    655f:	48 89 c6             	mov    %rax,%rsi
    6562:	bf 60 00 00 00       	mov    $0x60,%edi
    6567:	e8 a7 d2 ff ff       	callq  3813 <_ZnwmPv>
/usr/include/c++/9/bits/stl_tree.h:614
	      _Alloc_traits::construct(_M_get_Node_allocator(),
    656c:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    6570:	48 89 c7             	mov    %rax,%rdi
    6573:	e8 f4 eb ff ff       	callq  516c <_ZSt7forwardISt5tupleIJEEEOT_RNSt16remove_referenceIS2_E4typeE>
    6578:	49 89 c6             	mov    %rax,%r14
    657b:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    657f:	48 89 c7             	mov    %rax,%rdi
    6582:	e8 f7 f2 ff ff       	callq  587e <_ZSt7forwardISt5tupleIJONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEOT_RNSt16remove_referenceIS9_E4typeE>
    6587:	49 89 c5             	mov    %rax,%r13
    658a:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    658e:	48 89 c7             	mov    %rax,%rdi
    6591:	e8 b2 eb ff ff       	callq  5148 <_ZSt7forwardIRKSt21piecewise_construct_tEOT_RNSt16remove_referenceIS3_E4typeE>
    6596:	49 89 c4             	mov    %rax,%r12
    6599:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    659d:	48 89 c7             	mov    %rax,%rdi
    65a0:	e8 2b eb ff ff       	callq  50d0 <_ZNSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EE9_M_valptrEv>
    65a5:	48 89 c3             	mov    %rax,%rbx
    65a8:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    65ac:	48 89 c7             	mov    %rax,%rdi
    65af:	e8 4a 03 00 00       	callq  68fe <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE21_M_get_Node_allocatorEv>
    65b4:	4d 89 f0             	mov    %r14,%r8
    65b7:	4c 89 e9             	mov    %r13,%rcx
    65ba:	4c 89 e2             	mov    %r12,%rdx
    65bd:	48 89 de             	mov    %rbx,%rsi
    65c0:	48 89 c7             	mov    %rax,%rdi
    65c3:	e8 31 05 00 00       	callq  6af9 <_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEEE9constructIS9_JRKSt21piecewise_construct_tSt5tupleIJOS7_EESH_IJEEEEEvRSB_PT_DpOT0_>
/usr/include/c++/9/bits/stl_tree.h:624
	}
    65c8:	eb 3b                	jmp    6605 <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJOS5_EESJ_IJEEEEEvPSt13_Rb_tree_nodeIS8_EDpOT_+0xd1>
    65ca:	f3 0f 1e fa          	endbr64 
/usr/include/c++/9/bits/stl_tree.h:618
	  __catch(...)
    65ce:	48 89 c7             	mov    %rax,%rdi
    65d1:	e8 8a bf ff ff       	callq  2560 <__cxa_begin_catch@plt>
/usr/include/c++/9/bits/stl_tree.h:621
	      _M_put_node(__node);
    65d6:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
    65da:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    65de:	48 89 d6             	mov    %rdx,%rsi
    65e1:	48 89 c7             	mov    %rax,%rdi
    65e4:	e8 81 f9 ff ff       	callq  5f6a <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS8_E>
/usr/include/c++/9/bits/stl_tree.h:622
	      __throw_exception_again;
    65e9:	e8 e2 c1 ff ff       	callq  27d0 <__cxa_rethrow@plt>
    65ee:	f3 0f 1e fa          	endbr64 
    65f2:	48 89 c3             	mov    %rax,%rbx
/usr/include/c++/9/bits/stl_tree.h:618
	  __catch(...)
    65f5:	e8 36 c2 ff ff       	callq  2830 <__cxa_end_catch@plt>
    65fa:	48 89 d8             	mov    %rbx,%rax
    65fd:	48 89 c7             	mov    %rax,%rdi
    6600:	e8 5b c2 ff ff       	callq  2860 <_Unwind_Resume@plt>
/usr/include/c++/9/bits/stl_tree.h:624
	}
    6605:	48 83 c4 30          	add    $0x30,%rsp
    6609:	5b                   	pop    %rbx
    660a:	41 5c                	pop    %r12
    660c:	41 5d                	pop    %r13
    660e:	41 5e                	pop    %r14
    6610:	5d                   	pop    %rbp
    6611:	c3                   	retq   

0000000000006612 <_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim>:
_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim():
/usr/include/c++/9/ext/new_allocator.h:119
      deallocate(pointer __p, size_type)
    6612:	f3 0f 1e fa          	endbr64 
    6616:	55                   	push   %rbp
    6617:	48 89 e5             	mov    %rsp,%rbp
    661a:	48 83 ec 20          	sub    $0x20,%rsp
    661e:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    6622:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    6626:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
/usr/include/c++/9/ext/new_allocator.h:128
	::operator delete(__p);
    662a:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    662e:	48 89 c7             	mov    %rax,%rdi
    6631:	e8 2a c0 ff ff       	callq  2660 <_ZdlPv@plt>
/usr/include/c++/9/ext/new_allocator.h:129
      }
    6636:	90                   	nop
    6637:	c9                   	leaveq 
    6638:	c3                   	retq   

0000000000006639 <_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_>:
_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_():
/usr/include/c++/9/bits/stl_construct.h:117
        __destroy(_ForwardIterator, _ForwardIterator) { }
    6639:	f3 0f 1e fa          	endbr64 
    663d:	55                   	push   %rbp
    663e:	48 89 e5             	mov    %rsp,%rbp
    6641:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    6645:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    6649:	90                   	nop
    664a:	5d                   	pop    %rbp
    664b:	c3                   	retq   

000000000000664c <_ZNKSt6vectorIiSaIiEE8max_sizeEv>:
_ZNKSt6vectorIiSaIiEE8max_sizeEv():
/usr/include/c++/9/bits/stl_vector.h:920
      max_size() const _GLIBCXX_NOEXCEPT
    664c:	f3 0f 1e fa          	endbr64 
    6650:	55                   	push   %rbp
    6651:	48 89 e5             	mov    %rsp,%rbp
    6654:	48 83 ec 10          	sub    $0x10,%rsp
    6658:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
/usr/include/c++/9/bits/stl_vector.h:921
      { return _S_max_size(_M_get_Tp_allocator()); }
    665c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    6660:	48 89 c7             	mov    %rax,%rdi
    6663:	e8 6a 05 00 00       	callq  6bd2 <_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv>
    6668:	48 89 c7             	mov    %rax,%rdi
    666b:	e8 f9 04 00 00       	callq  6b69 <_ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_>
    6670:	c9                   	leaveq 
    6671:	c3                   	retq   

0000000000006672 <_ZSt3maxImERKT_S2_S2_>:
_ZSt3maxImERKT_S2_S2_():
/usr/include/c++/9/bits/stl_algobase.h:222
   *  preprocessor macro.
  */
  template<typename _Tp>
    _GLIBCXX14_CONSTEXPR
    inline const _Tp&
    max(const _Tp& __a, const _Tp& __b)
    6672:	f3 0f 1e fa          	endbr64 
    6676:	55                   	push   %rbp
    6677:	48 89 e5             	mov    %rsp,%rbp
    667a:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    667e:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
/usr/include/c++/9/bits/stl_algobase.h:227
    {
      // concept requirements
      __glibcxx_function_requires(_LessThanComparableConcept<_Tp>)
      //return  __a < __b ? __b : __a;
      if (__a < __b)
    6682:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    6686:	48 8b 10             	mov    (%rax),%rdx
    6689:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    668d:	48 8b 00             	mov    (%rax),%rax
    6690:	48 39 c2             	cmp    %rax,%rdx
    6693:	73 06                	jae    669b <_ZSt3maxImERKT_S2_S2_+0x29>
/usr/include/c++/9/bits/stl_algobase.h:228
	return __b;
    6695:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    6699:	eb 04                	jmp    669f <_ZSt3maxImERKT_S2_S2_+0x2d>
/usr/include/c++/9/bits/stl_algobase.h:229
      return __a;
    669b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
/usr/include/c++/9/bits/stl_algobase.h:230
    }
    669f:	5d                   	pop    %rbp
    66a0:	c3                   	retq   

00000000000066a1 <_ZNSt16allocator_traitsISaIiEE8allocateERS0_m>:
_ZNSt16allocator_traitsISaIiEE8allocateERS0_m():
/usr/include/c++/9/bits/alloc_traits.h:442
      allocate(allocator_type& __a, size_type __n)
    66a1:	f3 0f 1e fa          	endbr64 
    66a5:	55                   	push   %rbp
    66a6:	48 89 e5             	mov    %rsp,%rbp
    66a9:	48 83 ec 10          	sub    $0x10,%rsp
    66ad:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    66b1:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
/usr/include/c++/9/bits/alloc_traits.h:443
      { return __a.allocate(__n); }
    66b5:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
    66b9:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    66bd:	ba 00 00 00 00       	mov    $0x0,%edx
    66c2:	48 89 ce             	mov    %rcx,%rsi
    66c5:	48 89 c7             	mov    %rax,%rdi
    66c8:	e8 17 05 00 00       	callq  6be4 <_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv>
    66cd:	c9                   	leaveq 
    66ce:	c3                   	retq   

00000000000066cf <_ZNSt6vectorIiSaIiEE14_S_do_relocateEPiS2_S2_RS0_St17integral_constantIbLb1EE>:
_ZNSt6vectorIiSaIiEE14_S_do_relocateEPiS2_S2_RS0_St17integral_constantIbLb1EE():
/usr/include/c++/9/bits/stl_vector.h:450
      _S_do_relocate(pointer __first, pointer __last, pointer __result,
    66cf:	f3 0f 1e fa          	endbr64 
    66d3:	55                   	push   %rbp
    66d4:	48 89 e5             	mov    %rsp,%rbp
    66d7:	48 83 ec 20          	sub    $0x20,%rsp
    66db:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    66df:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    66e3:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
    66e7:	48 89 4d e0          	mov    %rcx,-0x20(%rbp)
/usr/include/c++/9/bits/stl_vector.h:453
	return std::__relocate_a(__first, __last, __result, __alloc);
    66eb:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    66ef:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    66f3:	48 8b 75 f0          	mov    -0x10(%rbp),%rsi
    66f7:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    66fb:	48 89 c7             	mov    %rax,%rdi
    66fe:	e8 27 05 00 00       	callq  6c2a <_ZSt12__relocate_aIPiS0_SaIiEET0_T_S3_S2_RT1_>
/usr/include/c++/9/bits/stl_vector.h:454
      }
    6703:	c9                   	leaveq 
    6704:	c3                   	retq   

0000000000006705 <_ZSt32__make_move_if_noexcept_iteratorIiSt13move_iteratorIPiEET0_PT_>:
_ZSt32__make_move_if_noexcept_iteratorIiSt13move_iteratorIPiEET0_PT_():
/usr/include/c++/9/bits/stl_iterator.h:1239
  // returning a constant iterator when we don't want to move.
  template<typename _Tp, typename _ReturnType
    = typename conditional<__move_if_noexcept_cond<_Tp>::value,
			   const _Tp*, move_iterator<_Tp*>>::type>
    inline _GLIBCXX17_CONSTEXPR _ReturnType
    __make_move_if_noexcept_iterator(_Tp* __i)
    6705:	f3 0f 1e fa          	endbr64 
    6709:	55                   	push   %rbp
    670a:	48 89 e5             	mov    %rsp,%rbp
    670d:	48 83 ec 20          	sub    $0x20,%rsp
    6711:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    6715:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    671c:	00 00 
    671e:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    6722:	31 c0                	xor    %eax,%eax
/usr/include/c++/9/bits/stl_iterator.h:1240
    { return _ReturnType(__i); }
    6724:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    6728:	48 8d 45 f0          	lea    -0x10(%rbp),%rax
    672c:	48 89 d6             	mov    %rdx,%rsi
    672f:	48 89 c7             	mov    %rax,%rdi
    6732:	e8 5b 05 00 00       	callq  6c92 <_ZNSt13move_iteratorIPiEC1ES0_>
    6737:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    673b:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
    673f:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
    6746:	00 00 
    6748:	74 05                	je     674f <_ZSt32__make_move_if_noexcept_iteratorIiSt13move_iteratorIPiEET0_PT_+0x4a>
    674a:	e8 91 bf ff ff       	callq  26e0 <__stack_chk_fail@plt>
    674f:	c9                   	leaveq 
    6750:	c3                   	retq   

0000000000006751 <_ZSt22__uninitialized_copy_aISt13move_iteratorIPiES1_iET0_T_S4_S3_RSaIT1_E>:
_ZSt22__uninitialized_copy_aISt13move_iteratorIPiES1_iET0_T_S4_S3_RSaIT1_E():
/usr/include/c++/9/bits/stl_uninitialized.h:305
    __uninitialized_copy_a(_InputIterator __first, _InputIterator __last,
    6751:	f3 0f 1e fa          	endbr64 
    6755:	55                   	push   %rbp
    6756:	48 89 e5             	mov    %rsp,%rbp
    6759:	48 83 ec 20          	sub    $0x20,%rsp
    675d:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    6761:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    6765:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
    6769:	48 89 4d e0          	mov    %rcx,-0x20(%rbp)
/usr/include/c++/9/bits/stl_uninitialized.h:307
    { return std::uninitialized_copy(__first, __last, __result); }
    676d:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    6771:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
    6775:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    6779:	48 89 ce             	mov    %rcx,%rsi
    677c:	48 89 c7             	mov    %rax,%rdi
    677f:	e8 2c 05 00 00       	callq  6cb0 <_ZSt18uninitialized_copyISt13move_iteratorIPiES1_ET0_T_S4_S3_>
    6784:	c9                   	leaveq 
    6785:	c3                   	retq   

0000000000006786 <_ZN9__gnu_cxx13new_allocatorIiE7destroyIiEEvPT_>:
_ZN9__gnu_cxx13new_allocatorIiE7destroyIiEEvPT_():
/usr/include/c++/9/ext/new_allocator.h:150

      template<typename _Up>
	void
	destroy(_Up* __p)
    6786:	f3 0f 1e fa          	endbr64 
    678a:	55                   	push   %rbp
    678b:	48 89 e5             	mov    %rsp,%rbp
    678e:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    6792:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
/usr/include/c++/9/ext/new_allocator.h:152
	noexcept(std::is_nothrow_destructible<_Up>::value)
	{ __p->~_Up(); }
    6796:	90                   	nop
    6797:	5d                   	pop    %rbp
    6798:	c3                   	retq   
    6799:	90                   	nop

000000000000679a <_ZNSt12_Vector_baseIPKcSaIS1_EE17_Vector_impl_dataC1Ev>:
_ZNSt12_Vector_baseIPKcSaIS1_EE17_Vector_impl_dataC2Ev():
/usr/include/c++/9/bits/stl_vector.h:94
	_Vector_impl_data() _GLIBCXX_NOEXCEPT
    679a:	f3 0f 1e fa          	endbr64 
    679e:	55                   	push   %rbp
    679f:	48 89 e5             	mov    %rsp,%rbp
    67a2:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
/usr/include/c++/9/bits/stl_vector.h:95
	: _M_start(), _M_finish(), _M_end_of_storage()
    67a6:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    67aa:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
    67b1:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    67b5:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
    67bc:	00 
    67bd:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    67c1:	48 c7 40 10 00 00 00 	movq   $0x0,0x10(%rax)
    67c8:	00 
/usr/include/c++/9/bits/stl_vector.h:96
	{ }
    67c9:	90                   	nop
    67ca:	5d                   	pop    %rbp
    67cb:	c3                   	retq   

00000000000067cc <_ZNSt16allocator_traitsISaIPKcEE10deallocateERS2_PS1_m>:
_ZNSt16allocator_traitsISaIPKcEE10deallocateERS2_PS1_m():
/usr/include/c++/9/bits/alloc_traits.h:468
      deallocate(allocator_type& __a, pointer __p, size_type __n)
    67cc:	f3 0f 1e fa          	endbr64 
    67d0:	55                   	push   %rbp
    67d1:	48 89 e5             	mov    %rsp,%rbp
    67d4:	48 83 ec 20          	sub    $0x20,%rsp
    67d8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    67dc:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    67e0:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
/usr/include/c++/9/bits/alloc_traits.h:469
      { __a.deallocate(__p, __n); }
    67e4:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    67e8:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
    67ec:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    67f0:	48 89 ce             	mov    %rcx,%rsi
    67f3:	48 89 c7             	mov    %rax,%rdi
    67f6:	e8 eb 04 00 00       	callq  6ce6 <_ZN9__gnu_cxx13new_allocatorIPKcE10deallocateEPS2_m>
    67fb:	90                   	nop
    67fc:	c9                   	leaveq 
    67fd:	c3                   	retq   

00000000000067fe <_ZSt19__iterator_categoryIPKPKcENSt15iterator_traitsIT_E17iterator_categoryERKS5_>:
_ZSt19__iterator_categoryIPKPKcENSt15iterator_traitsIT_E17iterator_categoryERKS5_():
/usr/include/c++/9/bits/stl_iterator_base_types.h:205
   *  sugar for internal library use only.
  */
  template<typename _Iter>
    inline _GLIBCXX_CONSTEXPR
    typename iterator_traits<_Iter>::iterator_category
    __iterator_category(const _Iter&)
    67fe:	f3 0f 1e fa          	endbr64 
    6802:	55                   	push   %rbp
    6803:	48 89 e5             	mov    %rsp,%rbp
    6806:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
/usr/include/c++/9/bits/stl_iterator_base_types.h:206
    { return typename iterator_traits<_Iter>::iterator_category(); }
    680a:	5d                   	pop    %rbp
    680b:	c3                   	retq   

000000000000680c <_ZSt10__distanceIPKPKcENSt15iterator_traitsIT_E15difference_typeES5_S5_St26random_access_iterator_tag>:
_ZSt10__distanceIPKPKcENSt15iterator_traitsIT_E15difference_typeES5_S5_St26random_access_iterator_tag():
/usr/include/c++/9/bits/stl_iterator_base_funcs.h:98
    __distance(_RandomAccessIterator __first, _RandomAccessIterator __last,
    680c:	f3 0f 1e fa          	endbr64 
    6810:	55                   	push   %rbp
    6811:	48 89 e5             	mov    %rsp,%rbp
    6814:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    6818:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
/usr/include/c++/9/bits/stl_iterator_base_funcs.h:104
      return __last - __first;
    681c:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    6820:	48 2b 45 f8          	sub    -0x8(%rbp),%rax
    6824:	48 c1 f8 03          	sar    $0x3,%rax
/usr/include/c++/9/bits/stl_iterator_base_funcs.h:105
    }
    6828:	5d                   	pop    %rbp
    6829:	c3                   	retq   

000000000000682a <_ZNSt16allocator_traitsISaIPKcEE8allocateERS2_m>:
_ZNSt16allocator_traitsISaIPKcEE8allocateERS2_m():
/usr/include/c++/9/bits/alloc_traits.h:442
      allocate(allocator_type& __a, size_type __n)
    682a:	f3 0f 1e fa          	endbr64 
    682e:	55                   	push   %rbp
    682f:	48 89 e5             	mov    %rsp,%rbp
    6832:	48 83 ec 10          	sub    $0x10,%rsp
    6836:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    683a:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
/usr/include/c++/9/bits/alloc_traits.h:443
      { return __a.allocate(__n); }
    683e:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
    6842:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    6846:	ba 00 00 00 00       	mov    $0x0,%edx
    684b:	48 89 ce             	mov    %rcx,%rsi
    684e:	48 89 c7             	mov    %rax,%rdi
    6851:	e8 b8 04 00 00       	callq  6d0e <_ZN9__gnu_cxx13new_allocatorIPKcE8allocateEmPKv>
    6856:	c9                   	leaveq 
    6857:	c3                   	retq   

0000000000006858 <_ZSt18uninitialized_copyIPKPKcPS1_ET0_T_S6_S5_>:
_ZSt18uninitialized_copyIPKPKcPS1_ET0_T_S6_S5_():
/usr/include/c++/9/bits/stl_uninitialized.h:115
    uninitialized_copy(_InputIterator __first, _InputIterator __last,
    6858:	f3 0f 1e fa          	endbr64 
    685c:	55                   	push   %rbp
    685d:	48 89 e5             	mov    %rsp,%rbp
    6860:	48 83 ec 30          	sub    $0x30,%rsp
    6864:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    6868:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    686c:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
/usr/include/c++/9/bits/stl_uninitialized.h:134
      const bool __assignable = is_assignable<_RefType2, _RefType1>::value;
    6870:	c6 45 ff 01          	movb   $0x1,-0x1(%rbp)
/usr/include/c++/9/bits/stl_uninitialized.h:140
	__uninit_copy(__first, __last, __result);
    6874:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    6878:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    687c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    6880:	48 89 ce             	mov    %rcx,%rsi
    6883:	48 89 c7             	mov    %rax,%rdi
    6886:	e8 c9 04 00 00       	callq  6d54 <_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPKPKcPS3_EET0_T_S8_S7_>
/usr/include/c++/9/bits/stl_uninitialized.h:141
    }
    688b:	c9                   	leaveq 
    688c:	c3                   	retq   

000000000000688d <_ZNSt12_Destroy_auxILb1EE9__destroyIPPKcEEvT_S5_>:
_ZNSt12_Destroy_auxILb1EE9__destroyIPPKcEEvT_S5_():
/usr/include/c++/9/bits/stl_construct.h:117
    688d:	f3 0f 1e fa          	endbr64 
    6891:	55                   	push   %rbp
    6892:	48 89 e5             	mov    %rsp,%rbp
    6895:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    6899:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    689d:	90                   	nop
    689e:	5d                   	pop    %rbp
    689f:	c3                   	retq   

00000000000068a0 <_ZNSt16allocator_traitsISaIPKcEE8max_sizeERKS2_>:
_ZNSt16allocator_traitsISaIPKcEE8max_sizeERKS2_():
/usr/include/c++/9/bits/alloc_traits.h:504
       *  @brief  The maximum supported allocation size
       *  @param  __a  An allocator.
       *  @return @c __a.max_size()
      */
      static size_type
      max_size(const allocator_type& __a) noexcept
    68a0:	f3 0f 1e fa          	endbr64 
    68a4:	55                   	push   %rbp
    68a5:	48 89 e5             	mov    %rsp,%rbp
    68a8:	48 83 ec 10          	sub    $0x10,%rsp
    68ac:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
/usr/include/c++/9/bits/alloc_traits.h:505
      { return __a.max_size(); }
    68b0:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    68b4:	48 89 c7             	mov    %rax,%rdi
    68b7:	e8 ca 04 00 00       	callq  6d86 <_ZNK9__gnu_cxx13new_allocatorIPKcE8max_sizeEv>
    68bc:	c9                   	leaveq 
    68bd:	c3                   	retq   

00000000000068be <_ZN9__gnu_cxx13new_allocatorIPKcEC1ERKS3_>:
_ZN9__gnu_cxx13new_allocatorIPKcEC2ERKS3_():
/usr/include/c++/9/ext/new_allocator.h:83
      new_allocator(const new_allocator&) _GLIBCXX_USE_NOEXCEPT { }
    68be:	f3 0f 1e fa          	endbr64 
    68c2:	55                   	push   %rbp
    68c3:	48 89 e5             	mov    %rsp,%rbp
    68c6:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    68ca:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    68ce:	90                   	nop
    68cf:	5d                   	pop    %rbp
    68d0:	c3                   	retq   

00000000000068d1 <_ZSt25__uninitialized_default_nIPPKcmET_S3_T0_>:
_ZSt25__uninitialized_default_nIPPKcmET_S3_T0_():
/usr/include/c++/9/bits/stl_uninitialized.h:592
    __uninitialized_default_n(_ForwardIterator __first, _Size __n)
    68d1:	f3 0f 1e fa          	endbr64 
    68d5:	55                   	push   %rbp
    68d6:	48 89 e5             	mov    %rsp,%rbp
    68d9:	48 83 ec 20          	sub    $0x20,%rsp
    68dd:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    68e1:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
/usr/include/c++/9/bits/stl_uninitialized.h:597
      const bool __assignable = is_copy_assignable<_ValueType>::value;
    68e5:	c6 45 ff 01          	movb   $0x1,-0x1(%rbp)
/usr/include/c++/9/bits/stl_uninitialized.h:601
	__uninit_default_n(__first, __n);
    68e9:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    68ed:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    68f1:	48 89 d6             	mov    %rdx,%rsi
    68f4:	48 89 c7             	mov    %rax,%rdi
    68f7:	e8 a2 04 00 00       	callq  6d9e <_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPPKcmEET_S5_T0_>
/usr/include/c++/9/bits/stl_uninitialized.h:602
    }
    68fc:	c9                   	leaveq 
    68fd:	c3                   	retq   

00000000000068fe <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE21_M_get_Node_allocatorEv>:
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE21_M_get_Node_allocatorEv():
/usr/include/c++/9/bits/stl_tree.h:566
      _M_get_Node_allocator() _GLIBCXX_NOEXCEPT
    68fe:	f3 0f 1e fa          	endbr64 
    6902:	55                   	push   %rbp
    6903:	48 89 e5             	mov    %rsp,%rbp
    6906:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
/usr/include/c++/9/bits/stl_tree.h:567
      { return this->_M_impl; }
    690a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    690e:	5d                   	pop    %rbp
    690f:	c3                   	retq   

0000000000006910 <_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEEE7destroyIS9_EEvRSB_PT_>:
_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEEE7destroyIS9_EEvRSB_PT_():
/usr/include/c++/9/bits/alloc_traits.h:494
	destroy(allocator_type& __a, _Up* __p)
    6910:	f3 0f 1e fa          	endbr64 
    6914:	55                   	push   %rbp
    6915:	48 89 e5             	mov    %rsp,%rbp
    6918:	48 83 ec 10          	sub    $0x10,%rsp
    691c:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    6920:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
/usr/include/c++/9/bits/alloc_traits.h:496
	{ __a.destroy(__p); }
    6924:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    6928:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    692c:	48 89 d6             	mov    %rdx,%rsi
    692f:	48 89 c7             	mov    %rax,%rdi
    6932:	e8 ef 04 00 00       	callq  6e26 <_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EEE7destroyISA_EEvPT_>
    6937:	90                   	nop
    6938:	c9                   	leaveq 
    6939:	c3                   	retq   

000000000000693a <_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEEE10deallocateERSB_PSA_m>:
_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEEE10deallocateERSB_PSA_m():
/usr/include/c++/9/bits/alloc_traits.h:468
      deallocate(allocator_type& __a, pointer __p, size_type __n)
    693a:	f3 0f 1e fa          	endbr64 
    693e:	55                   	push   %rbp
    693f:	48 89 e5             	mov    %rsp,%rbp
    6942:	48 83 ec 20          	sub    $0x20,%rsp
    6946:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    694a:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    694e:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
/usr/include/c++/9/bits/alloc_traits.h:469
      { __a.deallocate(__p, __n); }
    6952:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    6956:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
    695a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    695e:	48 89 ce             	mov    %rcx,%rsi
    6961:	48 89 c7             	mov    %rax,%rdi
    6964:	e8 e1 04 00 00       	callq  6e4a <_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EEE10deallocateEPSB_m>
    6969:	90                   	nop
    696a:	c9                   	leaveq 
    696b:	c3                   	retq   

000000000000696c <_ZN9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EE7_M_addrEv>:
_ZN9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EE7_M_addrEv():
/usr/include/c++/9/ext/aligned_buffer.h:64
      _M_addr() noexcept
    696c:	f3 0f 1e fa          	endbr64 
    6970:	55                   	push   %rbp
    6971:	48 89 e5             	mov    %rsp,%rbp
    6974:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
/usr/include/c++/9/ext/aligned_buffer.h:65
      { return static_cast<void*>(&_M_storage); }
    6978:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    697c:	5d                   	pop    %rbp
    697d:	c3                   	retq   

000000000000697e <_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEEE8allocateERSB_m>:
_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEEE8allocateERSB_m():
/usr/include/c++/9/bits/alloc_traits.h:442
      allocate(allocator_type& __a, size_type __n)
    697e:	f3 0f 1e fa          	endbr64 
    6982:	55                   	push   %rbp
    6983:	48 89 e5             	mov    %rsp,%rbp
    6986:	48 83 ec 10          	sub    $0x10,%rsp
    698a:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    698e:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
/usr/include/c++/9/bits/alloc_traits.h:443
      { return __a.allocate(__n); }
    6992:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
    6996:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    699a:	ba 00 00 00 00       	mov    $0x0,%edx
    699f:	48 89 ce             	mov    %rcx,%rsi
    69a2:	48 89 c7             	mov    %rax,%rdi
    69a5:	e8 c8 04 00 00       	callq  6e72 <_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EEE8allocateEmPKv>
    69aa:	c9                   	leaveq 
    69ab:	c3                   	retq   

00000000000069ac <_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEEE9constructIS9_JRKSt21piecewise_construct_tSt5tupleIJRS8_EESH_IJEEEEEvRSB_PT_DpOT0_>:
_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEEE9constructIS9_JRKSt21piecewise_construct_tSt5tupleIJRS8_EESH_IJEEEEEvRSB_PT_DpOT0_():
/usr/include/c++/9/bits/alloc_traits.h:481
	construct(allocator_type& __a, _Up* __p, _Args&&... __args)
    69ac:	f3 0f 1e fa          	endbr64 
    69b0:	55                   	push   %rbp
    69b1:	48 89 e5             	mov    %rsp,%rbp
    69b4:	41 54                	push   %r12
    69b6:	53                   	push   %rbx
    69b7:	48 83 ec 30          	sub    $0x30,%rsp
    69bb:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    69bf:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    69c3:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
    69c7:	48 89 4d d0          	mov    %rcx,-0x30(%rbp)
    69cb:	4c 89 45 c8          	mov    %r8,-0x38(%rbp)
/usr/include/c++/9/bits/alloc_traits.h:483
	{ __a.construct(__p, std::forward<_Args>(__args)...); }
    69cf:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    69d3:	48 89 c7             	mov    %rax,%rdi
    69d6:	e8 91 e7 ff ff       	callq  516c <_ZSt7forwardISt5tupleIJEEEOT_RNSt16remove_referenceIS2_E4typeE>
    69db:	49 89 c4             	mov    %rax,%r12
    69de:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    69e2:	48 89 c7             	mov    %rax,%rdi
    69e5:	e8 70 e7 ff ff       	callq  515a <_ZSt7forwardISt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEOT_RNSt16remove_referenceISA_E4typeE>
    69ea:	48 89 c3             	mov    %rax,%rbx
    69ed:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    69f1:	48 89 c7             	mov    %rax,%rdi
    69f4:	e8 4f e7 ff ff       	callq  5148 <_ZSt7forwardIRKSt21piecewise_construct_tEOT_RNSt16remove_referenceIS3_E4typeE>
    69f9:	48 89 c2             	mov    %rax,%rdx
    69fc:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
    6a00:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    6a04:	4d 89 e0             	mov    %r12,%r8
    6a07:	48 89 d9             	mov    %rbx,%rcx
    6a0a:	48 89 c7             	mov    %rax,%rdi
    6a0d:	e8 da 04 00 00       	callq  6eec <_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EEE9constructISA_JRKSt21piecewise_construct_tSt5tupleIJRS9_EESH_IJEEEEEvPT_DpOT0_>
    6a12:	90                   	nop
    6a13:	48 83 c4 30          	add    $0x30,%rsp
    6a17:	5b                   	pop    %rbx
    6a18:	41 5c                	pop    %r12
    6a1a:	5d                   	pop    %rbp
    6a1b:	c3                   	retq   

0000000000006a1c <_ZSt7forwardIRPSt18_Rb_tree_node_baseEOT_RNSt16remove_referenceIS3_E4typeE>:
_ZSt7forwardIRPSt18_Rb_tree_node_baseEOT_RNSt16remove_referenceIS3_E4typeE():
/usr/include/c++/9/bits/move.h:74
    forward(typename std::remove_reference<_Tp>::type& __t) noexcept
    6a1c:	f3 0f 1e fa          	endbr64 
    6a20:	55                   	push   %rbp
    6a21:	48 89 e5             	mov    %rsp,%rbp
    6a24:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
/usr/include/c++/9/bits/move.h:75
    { return static_cast<_Tp&&>(__t); }
    6a28:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    6a2c:	5d                   	pop    %rbp
    6a2d:	c3                   	retq   

0000000000006a2e <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE5beginEv>:
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE5beginEv():
/usr/include/c++/9/bits/stl_tree.h:1011
      begin() _GLIBCXX_NOEXCEPT
    6a2e:	f3 0f 1e fa          	endbr64 
    6a32:	55                   	push   %rbp
    6a33:	48 89 e5             	mov    %rsp,%rbp
    6a36:	48 83 ec 20          	sub    $0x20,%rsp
    6a3a:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    6a3e:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    6a45:	00 00 
    6a47:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    6a4b:	31 c0                	xor    %eax,%eax
/usr/include/c++/9/bits/stl_tree.h:1012
      { return iterator(this->_M_impl._M_header._M_left); }
    6a4d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    6a51:	48 8b 50 18          	mov    0x18(%rax),%rdx
    6a55:	48 8d 45 f0          	lea    -0x10(%rbp),%rax
    6a59:	48 89 d6             	mov    %rdx,%rsi
    6a5c:	48 89 c7             	mov    %rax,%rdi
    6a5f:	e8 80 ec ff ff       	callq  56e4 <_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEC1EPSt18_Rb_tree_node_base>
    6a64:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    6a68:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
    6a6c:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
    6a73:	00 00 
    6a75:	74 05                	je     6a7c <_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE5beginEv+0x4e>
    6a77:	e8 64 bc ff ff       	callq  26e0 <__stack_chk_fail@plt>
    6a7c:	c9                   	leaveq 
    6a7d:	c3                   	retq   

0000000000006a7e <_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC1IRPSt13_Rb_tree_nodeIS_IKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_EERS1_Lb1EEEOT_OT0_>:
_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRPSt13_Rb_tree_nodeIS_IKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_EERS1_Lb1EEEOT_OT0_():
/usr/include/c++/9/bits/stl_pair.h:341
	constexpr pair(_U1&& __x, _U2&& __y)
    6a7e:	f3 0f 1e fa          	endbr64 
    6a82:	55                   	push   %rbp
    6a83:	48 89 e5             	mov    %rsp,%rbp
    6a86:	48 83 ec 20          	sub    $0x20,%rsp
    6a8a:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    6a8e:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    6a92:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
/usr/include/c++/9/bits/stl_pair.h:342
	: first(std::forward<_U1>(__x)), second(std::forward<_U2>(__y)) { }
    6a96:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    6a9a:	48 89 c7             	mov    %rax,%rdi
    6a9d:	e8 15 05 00 00       	callq  6fb7 <_ZSt7forwardIRPSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEEOT_RNSt16remove_referenceISD_E4typeE>
    6aa2:	48 8b 10             	mov    (%rax),%rdx
    6aa5:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    6aa9:	48 89 10             	mov    %rdx,(%rax)
    6aac:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    6ab0:	48 89 c7             	mov    %rax,%rdi
    6ab3:	e8 64 ff ff ff       	callq  6a1c <_ZSt7forwardIRPSt18_Rb_tree_node_baseEOT_RNSt16remove_referenceIS3_E4typeE>
    6ab8:	48 8b 10             	mov    (%rax),%rdx
    6abb:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    6abf:	48 89 50 08          	mov    %rdx,0x8(%rax)
    6ac3:	90                   	nop
    6ac4:	c9                   	leaveq 
    6ac5:	c3                   	retq   

0000000000006ac6 <_ZNK9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EE6_M_ptrEv>:
_ZNK9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EE6_M_ptrEv():
/usr/include/c++/9/ext/aligned_buffer.h:76

      const _Tp*
      _M_ptr() const noexcept
    6ac6:	f3 0f 1e fa          	endbr64 
    6aca:	55                   	push   %rbp
    6acb:	48 89 e5             	mov    %rsp,%rbp
    6ace:	48 83 ec 10          	sub    $0x10,%rsp
    6ad2:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
/usr/include/c++/9/ext/aligned_buffer.h:77
      { return static_cast<const _Tp*>(_M_addr()); }
    6ad6:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    6ada:	48 89 c7             	mov    %rax,%rdi
    6add:	e8 e8 04 00 00       	callq  6fca <_ZNK9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EE7_M_addrEv>
    6ae2:	c9                   	leaveq 
    6ae3:	c3                   	retq   

0000000000006ae4 <_ZNSt10_Head_baseILm0EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE7_M_headERS7_>:
_ZNSt10_Head_baseILm0EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE7_M_headERS7_():
/usr/include/c++/9/tuple:160
      _M_head(_Head_base& __b) noexcept { return __b._M_head_impl; }
    6ae4:	f3 0f 1e fa          	endbr64 
    6ae8:	55                   	push   %rbp
    6ae9:	48 89 e5             	mov    %rsp,%rbp
    6aec:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    6af0:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    6af4:	48 8b 00             	mov    (%rax),%rax
    6af7:	5d                   	pop    %rbp
    6af8:	c3                   	retq   

0000000000006af9 <_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEEE9constructIS9_JRKSt21piecewise_construct_tSt5tupleIJOS7_EESH_IJEEEEEvRSB_PT_DpOT0_>:
_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEEE9constructIS9_JRKSt21piecewise_construct_tSt5tupleIJOS7_EESH_IJEEEEEvRSB_PT_DpOT0_():
/usr/include/c++/9/bits/alloc_traits.h:481
	construct(allocator_type& __a, _Up* __p, _Args&&... __args)
    6af9:	f3 0f 1e fa          	endbr64 
    6afd:	55                   	push   %rbp
    6afe:	48 89 e5             	mov    %rsp,%rbp
    6b01:	41 54                	push   %r12
    6b03:	53                   	push   %rbx
    6b04:	48 83 ec 30          	sub    $0x30,%rsp
    6b08:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    6b0c:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    6b10:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
    6b14:	48 89 4d d0          	mov    %rcx,-0x30(%rbp)
    6b18:	4c 89 45 c8          	mov    %r8,-0x38(%rbp)
/usr/include/c++/9/bits/alloc_traits.h:483
	{ __a.construct(__p, std::forward<_Args>(__args)...); }
    6b1c:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    6b20:	48 89 c7             	mov    %rax,%rdi
    6b23:	e8 44 e6 ff ff       	callq  516c <_ZSt7forwardISt5tupleIJEEEOT_RNSt16remove_referenceIS2_E4typeE>
    6b28:	49 89 c4             	mov    %rax,%r12
    6b2b:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    6b2f:	48 89 c7             	mov    %rax,%rdi
    6b32:	e8 47 ed ff ff       	callq  587e <_ZSt7forwardISt5tupleIJONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEOT_RNSt16remove_referenceIS9_E4typeE>
    6b37:	48 89 c3             	mov    %rax,%rbx
    6b3a:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    6b3e:	48 89 c7             	mov    %rax,%rdi
    6b41:	e8 02 e6 ff ff       	callq  5148 <_ZSt7forwardIRKSt21piecewise_construct_tEOT_RNSt16remove_referenceIS3_E4typeE>
    6b46:	48 89 c2             	mov    %rax,%rdx
    6b49:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
    6b4d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    6b51:	4d 89 e0             	mov    %r12,%r8
    6b54:	48 89 d9             	mov    %rbx,%rcx
    6b57:	48 89 c7             	mov    %rax,%rdi
    6b5a:	e8 7d 04 00 00       	callq  6fdc <_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EEE9constructISA_JRKSt21piecewise_construct_tSt5tupleIJOS8_EESH_IJEEEEEvPT_DpOT0_>
    6b5f:	90                   	nop
    6b60:	48 83 c4 30          	add    $0x30,%rsp
    6b64:	5b                   	pop    %rbx
    6b65:	41 5c                	pop    %r12
    6b67:	5d                   	pop    %rbp
    6b68:	c3                   	retq   

0000000000006b69 <_ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_>:
_ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_():
/usr/include/c++/9/bits/stl_vector.h:1773
      _S_max_size(const _Tp_alloc_type& __a) _GLIBCXX_NOEXCEPT
    6b69:	f3 0f 1e fa          	endbr64 
    6b6d:	55                   	push   %rbp
    6b6e:	48 89 e5             	mov    %rsp,%rbp
    6b71:	48 83 ec 30          	sub    $0x30,%rsp
    6b75:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    6b79:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    6b80:	00 00 
    6b82:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    6b86:	31 c0                	xor    %eax,%eax
/usr/include/c++/9/bits/stl_vector.h:1778
	const size_t __diffmax
    6b88:	48 b8 ff ff ff ff ff 	movabs $0x1fffffffffffffff,%rax
    6b8f:	ff ff 1f 
    6b92:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
/usr/include/c++/9/bits/stl_vector.h:1780
	const size_t __allocmax = _Alloc_traits::max_size(__a);
    6b96:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    6b9a:	48 89 c7             	mov    %rax,%rdi
    6b9d:	e8 05 05 00 00       	callq  70a7 <_ZNSt16allocator_traitsISaIiEE8max_sizeERKS0_>
    6ba2:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
/usr/include/c++/9/bits/stl_vector.h:1781
	return (std::min)(__diffmax, __allocmax);
    6ba6:	48 8d 55 f0          	lea    -0x10(%rbp),%rdx
    6baa:	48 8d 45 e8          	lea    -0x18(%rbp),%rax
    6bae:	48 89 d6             	mov    %rdx,%rsi
    6bb1:	48 89 c7             	mov    %rax,%rdi
    6bb4:	e8 09 f4 ff ff       	callq  5fc2 <_ZSt3minImERKT_S2_S2_>
    6bb9:	48 8b 00             	mov    (%rax),%rax
/usr/include/c++/9/bits/stl_vector.h:1782
      }
    6bbc:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
    6bc0:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
    6bc7:	00 00 
    6bc9:	74 05                	je     6bd0 <_ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_+0x67>
    6bcb:	e8 10 bb ff ff       	callq  26e0 <__stack_chk_fail@plt>
    6bd0:	c9                   	leaveq 
    6bd1:	c3                   	retq   

0000000000006bd2 <_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv>:
_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv():
/usr/include/c++/9/bits/stl_vector.h:277
      _M_get_Tp_allocator() const _GLIBCXX_NOEXCEPT
    6bd2:	f3 0f 1e fa          	endbr64 
    6bd6:	55                   	push   %rbp
    6bd7:	48 89 e5             	mov    %rsp,%rbp
    6bda:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
/usr/include/c++/9/bits/stl_vector.h:278
      { return this->_M_impl; }
    6bde:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    6be2:	5d                   	pop    %rbp
    6be3:	c3                   	retq   

0000000000006be4 <_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv>:
_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv():
/usr/include/c++/9/ext/new_allocator.h:102
      allocate(size_type __n, const void* = static_cast<const void*>(0))
    6be4:	f3 0f 1e fa          	endbr64 
    6be8:	55                   	push   %rbp
    6be9:	48 89 e5             	mov    %rsp,%rbp
    6bec:	48 83 ec 20          	sub    $0x20,%rsp
    6bf0:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    6bf4:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    6bf8:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
/usr/include/c++/9/ext/new_allocator.h:104
	if (__n > this->max_size())
    6bfc:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    6c00:	48 89 c7             	mov    %rax,%rdi
    6c03:	e8 be 04 00 00       	callq  70c6 <_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv>
    6c08:	48 39 45 f0          	cmp    %rax,-0x10(%rbp)
    6c0c:	0f 97 c0             	seta   %al
    6c0f:	84 c0                	test   %al,%al
    6c11:	74 05                	je     6c18 <_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv+0x34>
/usr/include/c++/9/ext/new_allocator.h:105
	  std::__throw_bad_alloc();
    6c13:	e8 28 b9 ff ff       	callq  2540 <_ZSt17__throw_bad_allocv@plt>
/usr/include/c++/9/ext/new_allocator.h:114
	return static_cast<_Tp*>(::operator new(__n * sizeof(_Tp)));
    6c18:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    6c1c:	48 c1 e0 02          	shl    $0x2,%rax
    6c20:	48 89 c7             	mov    %rax,%rdi
    6c23:	e8 58 ba ff ff       	callq  2680 <_Znwm@plt>
/usr/include/c++/9/ext/new_allocator.h:115
      }
    6c28:	c9                   	leaveq 
    6c29:	c3                   	retq   

0000000000006c2a <_ZSt12__relocate_aIPiS0_SaIiEET0_T_S3_S2_RT1_>:
_ZSt12__relocate_aIPiS0_SaIiEET0_T_S3_S2_RT1_():
/usr/include/c++/9/bits/stl_uninitialized.h:958
    }

  template <typename _InputIterator, typename _ForwardIterator,
	    typename _Allocator>
    inline _ForwardIterator
    __relocate_a(_InputIterator __first, _InputIterator __last,
    6c2a:	f3 0f 1e fa          	endbr64 
    6c2e:	55                   	push   %rbp
    6c2f:	48 89 e5             	mov    %rsp,%rbp
    6c32:	41 54                	push   %r12
    6c34:	53                   	push   %rbx
    6c35:	48 83 ec 20          	sub    $0x20,%rsp
    6c39:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    6c3d:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    6c41:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
    6c45:	48 89 4d d0          	mov    %rcx,-0x30(%rbp)
/usr/include/c++/9/bits/stl_uninitialized.h:964
		 _ForwardIterator __result, _Allocator& __alloc)
    noexcept(noexcept(__relocate_a_1(std::__niter_base(__first),
				     std::__niter_base(__last),
				     std::__niter_base(__result), __alloc)))
    {
      return __relocate_a_1(std::__niter_base(__first),
    6c49:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    6c4d:	48 89 c7             	mov    %rax,%rdi
    6c50:	e8 89 04 00 00       	callq  70de <_ZSt12__niter_baseIPiET_S1_>
    6c55:	49 89 c4             	mov    %rax,%r12
    6c58:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    6c5c:	48 89 c7             	mov    %rax,%rdi
    6c5f:	e8 7a 04 00 00       	callq  70de <_ZSt12__niter_baseIPiET_S1_>
    6c64:	48 89 c3             	mov    %rax,%rbx
    6c67:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    6c6b:	48 89 c7             	mov    %rax,%rdi
    6c6e:	e8 6b 04 00 00       	callq  70de <_ZSt12__niter_baseIPiET_S1_>
    6c73:	48 89 c7             	mov    %rax,%rdi
    6c76:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    6c7a:	48 89 c1             	mov    %rax,%rcx
    6c7d:	4c 89 e2             	mov    %r12,%rdx
    6c80:	48 89 de             	mov    %rbx,%rsi
    6c83:	e8 68 04 00 00       	callq  70f0 <_ZSt14__relocate_a_1IiiENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS2_E4typeES4_S4_S4_RSaIT0_E>
/usr/include/c++/9/bits/stl_uninitialized.h:967
			    std::__niter_base(__last),
			    std::__niter_base(__result), __alloc);
    }
    6c88:	48 83 c4 20          	add    $0x20,%rsp
    6c8c:	5b                   	pop    %rbx
    6c8d:	41 5c                	pop    %r12
    6c8f:	5d                   	pop    %rbp
    6c90:	c3                   	retq   
    6c91:	90                   	nop

0000000000006c92 <_ZNSt13move_iteratorIPiEC1ES0_>:
_ZNSt13move_iteratorIPiEC2ES0_():
/usr/include/c++/9/bits/stl_iterator.h:1054
      move_iterator(iterator_type __i)
    6c92:	f3 0f 1e fa          	endbr64 
    6c96:	55                   	push   %rbp
    6c97:	48 89 e5             	mov    %rsp,%rbp
    6c9a:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    6c9e:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
/usr/include/c++/9/bits/stl_iterator.h:1055
      : _M_current(__i) { }
    6ca2:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    6ca6:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    6caa:	48 89 10             	mov    %rdx,(%rax)
    6cad:	90                   	nop
    6cae:	5d                   	pop    %rbp
    6caf:	c3                   	retq   

0000000000006cb0 <_ZSt18uninitialized_copyISt13move_iteratorIPiES1_ET0_T_S4_S3_>:
_ZSt18uninitialized_copyISt13move_iteratorIPiES1_ET0_T_S4_S3_():
/usr/include/c++/9/bits/stl_uninitialized.h:115
    uninitialized_copy(_InputIterator __first, _InputIterator __last,
    6cb0:	f3 0f 1e fa          	endbr64 
    6cb4:	55                   	push   %rbp
    6cb5:	48 89 e5             	mov    %rsp,%rbp
    6cb8:	48 83 ec 30          	sub    $0x30,%rsp
    6cbc:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    6cc0:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    6cc4:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
/usr/include/c++/9/bits/stl_uninitialized.h:134
      const bool __assignable = is_assignable<_RefType2, _RefType1>::value;
    6cc8:	c6 45 ff 01          	movb   $0x1,-0x1(%rbp)
/usr/include/c++/9/bits/stl_uninitialized.h:140
	__uninit_copy(__first, __last, __result);
    6ccc:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    6cd0:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    6cd4:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    6cd8:	48 89 ce             	mov    %rcx,%rsi
    6cdb:	48 89 c7             	mov    %rax,%rdi
    6cde:	e8 74 04 00 00       	callq  7157 <_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPiES3_EET0_T_S6_S5_>
/usr/include/c++/9/bits/stl_uninitialized.h:141
    }
    6ce3:	c9                   	leaveq 
    6ce4:	c3                   	retq   
    6ce5:	90                   	nop

0000000000006ce6 <_ZN9__gnu_cxx13new_allocatorIPKcE10deallocateEPS2_m>:
_ZN9__gnu_cxx13new_allocatorIPKcE10deallocateEPS2_m():
/usr/include/c++/9/ext/new_allocator.h:119
      deallocate(pointer __p, size_type)
    6ce6:	f3 0f 1e fa          	endbr64 
    6cea:	55                   	push   %rbp
    6ceb:	48 89 e5             	mov    %rsp,%rbp
    6cee:	48 83 ec 20          	sub    $0x20,%rsp
    6cf2:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    6cf6:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    6cfa:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
/usr/include/c++/9/ext/new_allocator.h:128
	::operator delete(__p);
    6cfe:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    6d02:	48 89 c7             	mov    %rax,%rdi
    6d05:	e8 56 b9 ff ff       	callq  2660 <_ZdlPv@plt>
/usr/include/c++/9/ext/new_allocator.h:129
      }
    6d0a:	90                   	nop
    6d0b:	c9                   	leaveq 
    6d0c:	c3                   	retq   
    6d0d:	90                   	nop

0000000000006d0e <_ZN9__gnu_cxx13new_allocatorIPKcE8allocateEmPKv>:
_ZN9__gnu_cxx13new_allocatorIPKcE8allocateEmPKv():
/usr/include/c++/9/ext/new_allocator.h:102
      allocate(size_type __n, const void* = static_cast<const void*>(0))
    6d0e:	f3 0f 1e fa          	endbr64 
    6d12:	55                   	push   %rbp
    6d13:	48 89 e5             	mov    %rsp,%rbp
    6d16:	48 83 ec 20          	sub    $0x20,%rsp
    6d1a:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    6d1e:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    6d22:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
/usr/include/c++/9/ext/new_allocator.h:104
	if (__n > this->max_size())
    6d26:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    6d2a:	48 89 c7             	mov    %rax,%rdi
    6d2d:	e8 54 00 00 00       	callq  6d86 <_ZNK9__gnu_cxx13new_allocatorIPKcE8max_sizeEv>
    6d32:	48 39 45 f0          	cmp    %rax,-0x10(%rbp)
    6d36:	0f 97 c0             	seta   %al
    6d39:	84 c0                	test   %al,%al
    6d3b:	74 05                	je     6d42 <_ZN9__gnu_cxx13new_allocatorIPKcE8allocateEmPKv+0x34>
/usr/include/c++/9/ext/new_allocator.h:105
	  std::__throw_bad_alloc();
    6d3d:	e8 fe b7 ff ff       	callq  2540 <_ZSt17__throw_bad_allocv@plt>
/usr/include/c++/9/ext/new_allocator.h:114
	return static_cast<_Tp*>(::operator new(__n * sizeof(_Tp)));
    6d42:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    6d46:	48 c1 e0 03          	shl    $0x3,%rax
    6d4a:	48 89 c7             	mov    %rax,%rdi
    6d4d:	e8 2e b9 ff ff       	callq  2680 <_Znwm@plt>
/usr/include/c++/9/ext/new_allocator.h:115
      }
    6d52:	c9                   	leaveq 
    6d53:	c3                   	retq   

0000000000006d54 <_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPKPKcPS3_EET0_T_S8_S7_>:
_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPKPKcPS3_EET0_T_S8_S7_():
/usr/include/c++/9/bits/stl_uninitialized.h:99
        __uninit_copy(_InputIterator __first, _InputIterator __last,
    6d54:	f3 0f 1e fa          	endbr64 
    6d58:	55                   	push   %rbp
    6d59:	48 89 e5             	mov    %rsp,%rbp
    6d5c:	48 83 ec 20          	sub    $0x20,%rsp
    6d60:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    6d64:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    6d68:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
/usr/include/c++/9/bits/stl_uninitialized.h:101
        { return std::copy(__first, __last, __result); }
    6d6c:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    6d70:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
    6d74:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    6d78:	48 89 ce             	mov    %rcx,%rsi
    6d7b:	48 89 c7             	mov    %rax,%rdi
    6d7e:	e8 05 04 00 00       	callq  7188 <_ZSt4copyIPKPKcPS1_ET0_T_S6_S5_>
    6d83:	c9                   	leaveq 
    6d84:	c3                   	retq   
    6d85:	90                   	nop

0000000000006d86 <_ZNK9__gnu_cxx13new_allocatorIPKcE8max_sizeEv>:
_ZNK9__gnu_cxx13new_allocatorIPKcE8max_sizeEv():
/usr/include/c++/9/ext/new_allocator.h:132
      max_size() const _GLIBCXX_USE_NOEXCEPT
    6d86:	f3 0f 1e fa          	endbr64 
    6d8a:	55                   	push   %rbp
    6d8b:	48 89 e5             	mov    %rsp,%rbp
    6d8e:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
/usr/include/c++/9/ext/new_allocator.h:135
	return size_t(__PTRDIFF_MAX__) / sizeof(_Tp);
    6d92:	48 b8 ff ff ff ff ff 	movabs $0xfffffffffffffff,%rax
    6d99:	ff ff 0f 
/usr/include/c++/9/ext/new_allocator.h:139
      }
    6d9c:	5d                   	pop    %rbp
    6d9d:	c3                   	retq   

0000000000006d9e <_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPPKcmEET_S5_T0_>:
_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPPKcmEET_S5_T0_():
/usr/include/c++/9/bits/stl_uninitialized.h:561
        __uninit_default_n(_ForwardIterator __first, _Size __n)
    6d9e:	f3 0f 1e fa          	endbr64 
    6da2:	55                   	push   %rbp
    6da3:	48 89 e5             	mov    %rsp,%rbp
    6da6:	48 83 ec 20          	sub    $0x20,%rsp
    6daa:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    6dae:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    6db2:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    6db9:	00 00 
    6dbb:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    6dbf:	31 c0                	xor    %eax,%eax
/usr/include/c++/9/bits/stl_uninitialized.h:566
	  return std::fill_n(__first, __n, _ValueType());
    6dc1:	48 c7 45 f0 00 00 00 	movq   $0x0,-0x10(%rbp)
    6dc8:	00 
    6dc9:	48 8d 55 f0          	lea    -0x10(%rbp),%rdx
    6dcd:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    6dd1:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    6dd5:	48 89 ce             	mov    %rcx,%rsi
    6dd8:	48 89 c7             	mov    %rax,%rdi
    6ddb:	e8 f8 03 00 00       	callq  71d8 <_ZSt6fill_nIPPKcmS1_ET_S3_T0_RKT1_>
/usr/include/c++/9/bits/stl_uninitialized.h:567
	}
    6de0:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
    6de4:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
    6deb:	00 00 
    6ded:	74 05                	je     6df4 <_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPPKcmEET_S5_T0_+0x56>
    6def:	e8 ec b8 ff ff       	callq  26e0 <__stack_chk_fail@plt>
    6df4:	c9                   	leaveq 
    6df5:	c3                   	retq   

0000000000006df6 <_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED1Ev>:
_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev():
/usr/include/c++/9/bits/stl_pair.h:208
    struct pair
    6df6:	f3 0f 1e fa          	endbr64 
    6dfa:	55                   	push   %rbp
    6dfb:	48 89 e5             	mov    %rsp,%rbp
    6dfe:	48 83 ec 10          	sub    $0x10,%rsp
    6e02:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    6e06:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    6e0a:	48 83 c0 20          	add    $0x20,%rax
    6e0e:	48 89 c7             	mov    %rax,%rdi
    6e11:	e8 ba b7 ff ff       	callq  25d0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    6e16:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    6e1a:	48 89 c7             	mov    %rax,%rdi
    6e1d:	e8 ae b7 ff ff       	callq  25d0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
    6e22:	90                   	nop
    6e23:	c9                   	leaveq 
    6e24:	c3                   	retq   
    6e25:	90                   	nop

0000000000006e26 <_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EEE7destroyISA_EEvPT_>:
_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EEE7destroyISA_EEvPT_():
/usr/include/c++/9/ext/new_allocator.h:150
	destroy(_Up* __p)
    6e26:	f3 0f 1e fa          	endbr64 
    6e2a:	55                   	push   %rbp
    6e2b:	48 89 e5             	mov    %rsp,%rbp
    6e2e:	48 83 ec 10          	sub    $0x10,%rsp
    6e32:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    6e36:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
/usr/include/c++/9/ext/new_allocator.h:152
	{ __p->~_Up(); }
    6e3a:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    6e3e:	48 89 c7             	mov    %rax,%rdi
    6e41:	e8 b0 ff ff ff       	callq  6df6 <_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED1Ev>
    6e46:	90                   	nop
    6e47:	c9                   	leaveq 
    6e48:	c3                   	retq   
    6e49:	90                   	nop

0000000000006e4a <_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EEE10deallocateEPSB_m>:
_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EEE10deallocateEPSB_m():
/usr/include/c++/9/ext/new_allocator.h:119
      deallocate(pointer __p, size_type)
    6e4a:	f3 0f 1e fa          	endbr64 
    6e4e:	55                   	push   %rbp
    6e4f:	48 89 e5             	mov    %rsp,%rbp
    6e52:	48 83 ec 20          	sub    $0x20,%rsp
    6e56:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    6e5a:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    6e5e:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
/usr/include/c++/9/ext/new_allocator.h:128
	::operator delete(__p);
    6e62:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    6e66:	48 89 c7             	mov    %rax,%rdi
    6e69:	e8 f2 b7 ff ff       	callq  2660 <_ZdlPv@plt>
/usr/include/c++/9/ext/new_allocator.h:129
      }
    6e6e:	90                   	nop
    6e6f:	c9                   	leaveq 
    6e70:	c3                   	retq   
    6e71:	90                   	nop

0000000000006e72 <_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EEE8allocateEmPKv>:
_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EEE8allocateEmPKv():
/usr/include/c++/9/ext/new_allocator.h:102
      allocate(size_type __n, const void* = static_cast<const void*>(0))
    6e72:	f3 0f 1e fa          	endbr64 
    6e76:	55                   	push   %rbp
    6e77:	48 89 e5             	mov    %rsp,%rbp
    6e7a:	48 83 ec 20          	sub    $0x20,%rsp
    6e7e:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    6e82:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    6e86:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
/usr/include/c++/9/ext/new_allocator.h:104
	if (__n > this->max_size())
    6e8a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    6e8e:	48 89 c7             	mov    %rax,%rdi
    6e91:	e8 90 03 00 00       	callq  7226 <_ZNK9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EEE8max_sizeEv>
    6e96:	48 39 45 f0          	cmp    %rax,-0x10(%rbp)
    6e9a:	0f 97 c0             	seta   %al
    6e9d:	84 c0                	test   %al,%al
    6e9f:	74 05                	je     6ea6 <_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EEE8allocateEmPKv+0x34>
/usr/include/c++/9/ext/new_allocator.h:105
	  std::__throw_bad_alloc();
    6ea1:	e8 9a b6 ff ff       	callq  2540 <_ZSt17__throw_bad_allocv@plt>
/usr/include/c++/9/ext/new_allocator.h:114
	return static_cast<_Tp*>(::operator new(__n * sizeof(_Tp)));
    6ea6:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    6eaa:	48 89 d0             	mov    %rdx,%rax
    6ead:	48 01 c0             	add    %rax,%rax
    6eb0:	48 01 d0             	add    %rdx,%rax
    6eb3:	48 c1 e0 05          	shl    $0x5,%rax
    6eb7:	48 89 c7             	mov    %rax,%rdi
    6eba:	e8 c1 b7 ff ff       	callq  2680 <_Znwm@plt>
/usr/include/c++/9/ext/new_allocator.h:115
      }
    6ebf:	c9                   	leaveq 
    6ec0:	c3                   	retq   
    6ec1:	90                   	nop

0000000000006ec2 <_ZNSt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC1EOS8_>:
_ZNSt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2EOS8_():
/usr/include/c++/9/tuple:642
      constexpr tuple(tuple&&) = default;
    6ec2:	f3 0f 1e fa          	endbr64 
    6ec6:	55                   	push   %rbp
    6ec7:	48 89 e5             	mov    %rsp,%rbp
    6eca:	48 83 ec 10          	sub    $0x10,%rsp
    6ece:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    6ed2:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    6ed6:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    6eda:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    6ede:	48 89 d6             	mov    %rdx,%rsi
    6ee1:	48 89 c7             	mov    %rax,%rdi
    6ee4:	e8 55 03 00 00       	callq  723e <_ZNSt11_Tuple_implILm0EJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC1EOS8_>
    6ee9:	90                   	nop
    6eea:	c9                   	leaveq 
    6eeb:	c3                   	retq   

0000000000006eec <_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EEE9constructISA_JRKSt21piecewise_construct_tSt5tupleIJRS9_EESH_IJEEEEEvPT_DpOT0_>:
_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EEE9constructISA_JRKSt21piecewise_construct_tSt5tupleIJRS9_EESH_IJEEEEEvPT_DpOT0_():
/usr/include/c++/9/ext/new_allocator.h:144
	construct(_Up* __p, _Args&&... __args)
    6eec:	f3 0f 1e fa          	endbr64 
    6ef0:	55                   	push   %rbp
    6ef1:	48 89 e5             	mov    %rsp,%rbp
    6ef4:	41 55                	push   %r13
    6ef6:	41 54                	push   %r12
    6ef8:	53                   	push   %rbx
    6ef9:	48 83 ec 58          	sub    $0x58,%rsp
    6efd:	48 89 7d b8          	mov    %rdi,-0x48(%rbp)
    6f01:	48 89 75 b0          	mov    %rsi,-0x50(%rbp)
    6f05:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
    6f09:	48 89 4d a0          	mov    %rcx,-0x60(%rbp)
    6f0d:	4c 89 45 98          	mov    %r8,-0x68(%rbp)
    6f11:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    6f18:	00 00 
    6f1a:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
    6f1e:	31 c0                	xor    %eax,%eax
/usr/include/c++/9/ext/new_allocator.h:146
	{ ::new((void *)__p) _Up(std::forward<_Args>(__args)...); }
    6f20:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
    6f24:	48 89 c7             	mov    %rax,%rdi
    6f27:	e8 1c e2 ff ff       	callq  5148 <_ZSt7forwardIRKSt21piecewise_construct_tEOT_RNSt16remove_referenceIS3_E4typeE>
    6f2c:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
    6f30:	48 89 c7             	mov    %rax,%rdi
    6f33:	e8 22 e2 ff ff       	callq  515a <_ZSt7forwardISt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEOT_RNSt16remove_referenceISA_E4typeE>
    6f38:	48 89 c2             	mov    %rax,%rdx
    6f3b:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
    6f3f:	48 89 d6             	mov    %rdx,%rsi
    6f42:	48 89 c7             	mov    %rax,%rdi
    6f45:	e8 78 ff ff ff       	callq  6ec2 <_ZNSt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC1EOS8_>
    6f4a:	4c 8d 6d d0          	lea    -0x30(%rbp),%r13
    6f4e:	48 8b 45 98          	mov    -0x68(%rbp),%rax
    6f52:	48 89 c7             	mov    %rax,%rdi
    6f55:	e8 12 e2 ff ff       	callq  516c <_ZSt7forwardISt5tupleIJEEEOT_RNSt16remove_referenceIS2_E4typeE>
    6f5a:	48 8b 5d b0          	mov    -0x50(%rbp),%rbx
    6f5e:	48 89 de             	mov    %rbx,%rsi
    6f61:	bf 40 00 00 00       	mov    $0x40,%edi
    6f66:	e8 a8 c8 ff ff       	callq  3813 <_ZnwmPv>
    6f6b:	49 89 c4             	mov    %rax,%r12
    6f6e:	4c 89 ee             	mov    %r13,%rsi
    6f71:	4c 89 e7             	mov    %r12,%rdi
    6f74:	e8 05 03 00 00       	callq  727e <_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC1IJRS6_EJEEESt21piecewise_construct_tSt5tupleIJDpT_EESB_IJDpT0_EE>
    6f79:	eb 1d                	jmp    6f98 <_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EEE9constructISA_JRKSt21piecewise_construct_tSt5tupleIJRS9_EESH_IJEEEEEvPT_DpOT0_+0xac>
    6f7b:	f3 0f 1e fa          	endbr64 
    6f7f:	49 89 c5             	mov    %rax,%r13
    6f82:	48 89 de             	mov    %rbx,%rsi
    6f85:	4c 89 e7             	mov    %r12,%rdi
    6f88:	e8 9c c8 ff ff       	callq  3829 <_ZdlPvS_>
    6f8d:	4c 89 e8             	mov    %r13,%rax
    6f90:	48 89 c7             	mov    %rax,%rdi
    6f93:	e8 c8 b8 ff ff       	callq  2860 <_Unwind_Resume@plt>
    6f98:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    6f9c:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    6fa3:	00 00 
    6fa5:	74 05                	je     6fac <_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EEE9constructISA_JRKSt21piecewise_construct_tSt5tupleIJRS9_EESH_IJEEEEEvPT_DpOT0_+0xc0>
    6fa7:	e8 34 b7 ff ff       	callq  26e0 <__stack_chk_fail@plt>
    6fac:	48 83 c4 58          	add    $0x58,%rsp
    6fb0:	5b                   	pop    %rbx
    6fb1:	41 5c                	pop    %r12
    6fb3:	41 5d                	pop    %r13
    6fb5:	5d                   	pop    %rbp
    6fb6:	c3                   	retq   

0000000000006fb7 <_ZSt7forwardIRPSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEEOT_RNSt16remove_referenceISD_E4typeE>:
_ZSt7forwardIRPSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEEOT_RNSt16remove_referenceISD_E4typeE():
/usr/include/c++/9/bits/move.h:74
    forward(typename std::remove_reference<_Tp>::type& __t) noexcept
    6fb7:	f3 0f 1e fa          	endbr64 
    6fbb:	55                   	push   %rbp
    6fbc:	48 89 e5             	mov    %rsp,%rbp
    6fbf:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
/usr/include/c++/9/bits/move.h:75
    { return static_cast<_Tp&&>(__t); }
    6fc3:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    6fc7:	5d                   	pop    %rbp
    6fc8:	c3                   	retq   
    6fc9:	90                   	nop

0000000000006fca <_ZNK9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EE7_M_addrEv>:
_ZNK9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EE7_M_addrEv():
/usr/include/c++/9/ext/aligned_buffer.h:68
      _M_addr() const noexcept
    6fca:	f3 0f 1e fa          	endbr64 
    6fce:	55                   	push   %rbp
    6fcf:	48 89 e5             	mov    %rsp,%rbp
    6fd2:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
/usr/include/c++/9/ext/aligned_buffer.h:69
      { return static_cast<const void*>(&_M_storage); }
    6fd6:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    6fda:	5d                   	pop    %rbp
    6fdb:	c3                   	retq   

0000000000006fdc <_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EEE9constructISA_JRKSt21piecewise_construct_tSt5tupleIJOS8_EESH_IJEEEEEvPT_DpOT0_>:
_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EEE9constructISA_JRKSt21piecewise_construct_tSt5tupleIJOS8_EESH_IJEEEEEvPT_DpOT0_():
/usr/include/c++/9/ext/new_allocator.h:144
	construct(_Up* __p, _Args&&... __args)
    6fdc:	f3 0f 1e fa          	endbr64 
    6fe0:	55                   	push   %rbp
    6fe1:	48 89 e5             	mov    %rsp,%rbp
    6fe4:	41 55                	push   %r13
    6fe6:	41 54                	push   %r12
    6fe8:	53                   	push   %rbx
    6fe9:	48 83 ec 58          	sub    $0x58,%rsp
    6fed:	48 89 7d b8          	mov    %rdi,-0x48(%rbp)
    6ff1:	48 89 75 b0          	mov    %rsi,-0x50(%rbp)
    6ff5:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
    6ff9:	48 89 4d a0          	mov    %rcx,-0x60(%rbp)
    6ffd:	4c 89 45 98          	mov    %r8,-0x68(%rbp)
    7001:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    7008:	00 00 
    700a:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
    700e:	31 c0                	xor    %eax,%eax
/usr/include/c++/9/ext/new_allocator.h:146
	{ ::new((void *)__p) _Up(std::forward<_Args>(__args)...); }
    7010:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
    7014:	48 89 c7             	mov    %rax,%rdi
    7017:	e8 2c e1 ff ff       	callq  5148 <_ZSt7forwardIRKSt21piecewise_construct_tEOT_RNSt16remove_referenceIS3_E4typeE>
    701c:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
    7020:	48 89 c7             	mov    %rax,%rdi
    7023:	e8 56 e8 ff ff       	callq  587e <_ZSt7forwardISt5tupleIJONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEOT_RNSt16remove_referenceIS9_E4typeE>
    7028:	48 89 c2             	mov    %rax,%rdx
    702b:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
    702f:	48 89 d6             	mov    %rdx,%rsi
    7032:	48 89 c7             	mov    %rax,%rdi
    7035:	e8 28 d6 ff ff       	callq  4662 <_ZNSt5tupleIJONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC1EOS7_>
    703a:	4c 8d 6d d0          	lea    -0x30(%rbp),%r13
    703e:	48 8b 45 98          	mov    -0x68(%rbp),%rax
    7042:	48 89 c7             	mov    %rax,%rdi
    7045:	e8 22 e1 ff ff       	callq  516c <_ZSt7forwardISt5tupleIJEEEOT_RNSt16remove_referenceIS2_E4typeE>
    704a:	48 8b 5d b0          	mov    -0x50(%rbp),%rbx
    704e:	48 89 de             	mov    %rbx,%rsi
    7051:	bf 40 00 00 00       	mov    $0x40,%edi
    7056:	e8 b8 c7 ff ff       	callq  3813 <_ZnwmPv>
    705b:	49 89 c4             	mov    %rax,%r12
    705e:	4c 89 ee             	mov    %r13,%rsi
    7061:	4c 89 e7             	mov    %r12,%rdi
    7064:	e8 67 02 00 00       	callq  72d0 <_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC1IJOS5_EJEEESt21piecewise_construct_tSt5tupleIJDpT_EESB_IJDpT0_EE>
    7069:	eb 1d                	jmp    7088 <_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EEE9constructISA_JRKSt21piecewise_construct_tSt5tupleIJOS8_EESH_IJEEEEEvPT_DpOT0_+0xac>
    706b:	f3 0f 1e fa          	endbr64 
    706f:	49 89 c5             	mov    %rax,%r13
    7072:	48 89 de             	mov    %rbx,%rsi
    7075:	4c 89 e7             	mov    %r12,%rdi
    7078:	e8 ac c7 ff ff       	callq  3829 <_ZdlPvS_>
    707d:	4c 89 e8             	mov    %r13,%rax
    7080:	48 89 c7             	mov    %rax,%rdi
    7083:	e8 d8 b7 ff ff       	callq  2860 <_Unwind_Resume@plt>
    7088:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    708c:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    7093:	00 00 
    7095:	74 05                	je     709c <_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EEE9constructISA_JRKSt21piecewise_construct_tSt5tupleIJOS8_EESH_IJEEEEEvPT_DpOT0_+0xc0>
    7097:	e8 44 b6 ff ff       	callq  26e0 <__stack_chk_fail@plt>
    709c:	48 83 c4 58          	add    $0x58,%rsp
    70a0:	5b                   	pop    %rbx
    70a1:	41 5c                	pop    %r12
    70a3:	41 5d                	pop    %r13
    70a5:	5d                   	pop    %rbp
    70a6:	c3                   	retq   

00000000000070a7 <_ZNSt16allocator_traitsISaIiEE8max_sizeERKS0_>:
_ZNSt16allocator_traitsISaIiEE8max_sizeERKS0_():
/usr/include/c++/9/bits/alloc_traits.h:504
      max_size(const allocator_type& __a) noexcept
    70a7:	f3 0f 1e fa          	endbr64 
    70ab:	55                   	push   %rbp
    70ac:	48 89 e5             	mov    %rsp,%rbp
    70af:	48 83 ec 10          	sub    $0x10,%rsp
    70b3:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
/usr/include/c++/9/bits/alloc_traits.h:505
      { return __a.max_size(); }
    70b7:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    70bb:	48 89 c7             	mov    %rax,%rdi
    70be:	e8 03 00 00 00       	callq  70c6 <_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv>
    70c3:	c9                   	leaveq 
    70c4:	c3                   	retq   
    70c5:	90                   	nop

00000000000070c6 <_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv>:
_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv():
/usr/include/c++/9/ext/new_allocator.h:132
      max_size() const _GLIBCXX_USE_NOEXCEPT
    70c6:	f3 0f 1e fa          	endbr64 
    70ca:	55                   	push   %rbp
    70cb:	48 89 e5             	mov    %rsp,%rbp
    70ce:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
/usr/include/c++/9/ext/new_allocator.h:135
	return size_t(__PTRDIFF_MAX__) / sizeof(_Tp);
    70d2:	48 b8 ff ff ff ff ff 	movabs $0x1fffffffffffffff,%rax
    70d9:	ff ff 1f 
/usr/include/c++/9/ext/new_allocator.h:139
      }
    70dc:	5d                   	pop    %rbp
    70dd:	c3                   	retq   

00000000000070de <_ZSt12__niter_baseIPiET_S1_>:
_ZSt12__niter_baseIPiET_S1_():
/usr/include/c++/9/bits/stl_algobase.h:280

  // Fallback implementation of the function in bits/stl_iterator.h used to
  // remove the __normal_iterator wrapper. See copy, fill, ...
  template<typename _Iterator>
    inline _Iterator
    __niter_base(_Iterator __it)
    70de:	f3 0f 1e fa          	endbr64 
    70e2:	55                   	push   %rbp
    70e3:	48 89 e5             	mov    %rsp,%rbp
    70e6:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
/usr/include/c++/9/bits/stl_algobase.h:282
    _GLIBCXX_NOEXCEPT_IF(std::is_nothrow_copy_constructible<_Iterator>::value)
    { return __it; }
    70ea:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    70ee:	5d                   	pop    %rbp
    70ef:	c3                   	retq   

00000000000070f0 <_ZSt14__relocate_a_1IiiENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS2_E4typeES4_S4_S4_RSaIT0_E>:
_ZSt14__relocate_a_1IiiENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS2_E4typeES4_S4_S4_RSaIT0_E():
/usr/include/c++/9/bits/stl_uninitialized.h:924
    __relocate_a_1(_Tp* __first, _Tp* __last,
    70f0:	f3 0f 1e fa          	endbr64 
    70f4:	55                   	push   %rbp
    70f5:	48 89 e5             	mov    %rsp,%rbp
    70f8:	48 83 ec 30          	sub    $0x30,%rsp
    70fc:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    7100:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    7104:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
    7108:	48 89 4d d0          	mov    %rcx,-0x30(%rbp)
/usr/include/c++/9/bits/stl_uninitialized.h:927
      ptrdiff_t __count = __last - __first;
    710c:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    7110:	48 2b 45 e8          	sub    -0x18(%rbp),%rax
    7114:	48 c1 f8 02          	sar    $0x2,%rax
    7118:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
/usr/include/c++/9/bits/stl_uninitialized.h:928
      if (__count > 0)
    711c:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
    7121:	7e 1f                	jle    7142 <_ZSt14__relocate_a_1IiiENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS2_E4typeES4_S4_S4_RSaIT0_E+0x52>
/usr/include/c++/9/bits/stl_uninitialized.h:929
	__builtin_memmove(__result, __first, __count * sizeof(_Tp));
    7123:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    7127:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
    712e:	00 
    712f:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    7133:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    7137:	48 89 ce             	mov    %rcx,%rsi
    713a:	48 89 c7             	mov    %rax,%rdi
    713d:	e8 de b6 ff ff       	callq  2820 <memmove@plt>
/usr/include/c++/9/bits/stl_uninitialized.h:930
      return __result + __count;
    7142:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    7146:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
    714d:	00 
    714e:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    7152:	48 01 d0             	add    %rdx,%rax
/usr/include/c++/9/bits/stl_uninitialized.h:931
    }
    7155:	c9                   	leaveq 
    7156:	c3                   	retq   

0000000000007157 <_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPiES3_EET0_T_S6_S5_>:
_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPiES3_EET0_T_S6_S5_():
/usr/include/c++/9/bits/stl_uninitialized.h:99
        __uninit_copy(_InputIterator __first, _InputIterator __last,
    7157:	f3 0f 1e fa          	endbr64 
    715b:	55                   	push   %rbp
    715c:	48 89 e5             	mov    %rsp,%rbp
    715f:	48 83 ec 20          	sub    $0x20,%rsp
    7163:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    7167:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    716b:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
/usr/include/c++/9/bits/stl_uninitialized.h:101
        { return std::copy(__first, __last, __result); }
    716f:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    7173:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
    7177:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    717b:	48 89 ce             	mov    %rcx,%rsi
    717e:	48 89 c7             	mov    %rax,%rdi
    7181:	e8 9b 01 00 00       	callq  7321 <_ZSt4copyISt13move_iteratorIPiES1_ET0_T_S4_S3_>
    7186:	c9                   	leaveq 
    7187:	c3                   	retq   

0000000000007188 <_ZSt4copyIPKPKcPS1_ET0_T_S6_S5_>:
_ZSt4copyIPKPKcPS1_ET0_T_S6_S5_():
/usr/include/c++/9/bits/stl_algobase.h:465
   *  Note that the end of the output range is permitted to be contained
   *  within [first,last).
  */
  template<typename _II, typename _OI>
    inline _OI
    copy(_II __first, _II __last, _OI __result)
    7188:	f3 0f 1e fa          	endbr64 
    718c:	55                   	push   %rbp
    718d:	48 89 e5             	mov    %rsp,%rbp
    7190:	53                   	push   %rbx
    7191:	48 83 ec 28          	sub    $0x28,%rsp
    7195:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    7199:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    719d:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
/usr/include/c++/9/bits/stl_algobase.h:474
      __glibcxx_function_requires(_OutputIteratorConcept<_OI,
	    typename iterator_traits<_II>::value_type>)
      __glibcxx_requires_can_increment_range(__first, __last, __result);

      return std::__copy_move_a2<__is_move_iterator<_II>::__value>
	     (std::__miter_base(__first), std::__miter_base(__last), __result);
    71a1:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    71a5:	48 89 c7             	mov    %rax,%rdi
    71a8:	e8 c4 01 00 00       	callq  7371 <_ZSt12__miter_baseIPKPKcET_S4_>
    71ad:	48 89 c3             	mov    %rax,%rbx
    71b0:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    71b4:	48 89 c7             	mov    %rax,%rdi
    71b7:	e8 b5 01 00 00       	callq  7371 <_ZSt12__miter_baseIPKPKcET_S4_>
    71bc:	48 89 c1             	mov    %rax,%rcx
    71bf:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    71c3:	48 89 c2             	mov    %rax,%rdx
    71c6:	48 89 de             	mov    %rbx,%rsi
    71c9:	48 89 cf             	mov    %rcx,%rdi
    71cc:	e8 b2 01 00 00       	callq  7383 <_ZSt14__copy_move_a2ILb0EPKPKcPS1_ET1_T0_S6_S5_>
/usr/include/c++/9/bits/stl_algobase.h:475
    }
    71d1:	48 83 c4 28          	add    $0x28,%rsp
    71d5:	5b                   	pop    %rbx
    71d6:	5d                   	pop    %rbp
    71d7:	c3                   	retq   

00000000000071d8 <_ZSt6fill_nIPPKcmS1_ET_S3_T0_RKT1_>:
_ZSt6fill_nIPPKcmS1_ET_S3_T0_RKT1_():
/usr/include/c++/9/bits/stl_algobase.h:802
   *  _GLIBCXX_RESOLVE_LIB_DEFECTS
   *  DR 865. More algorithms that throw away information
  */
  template<typename _OI, typename _Size, typename _Tp>
    inline _OI
    fill_n(_OI __first, _Size __n, const _Tp& __value)
    71d8:	f3 0f 1e fa          	endbr64 
    71dc:	55                   	push   %rbp
    71dd:	48 89 e5             	mov    %rsp,%rbp
    71e0:	48 83 ec 20          	sub    $0x20,%rsp
    71e4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    71e8:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    71ec:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
/usr/include/c++/9/bits/stl_algobase.h:808
    {
      // concept requirements
      __glibcxx_function_requires(_OutputIteratorConcept<_OI, _Tp>)
      __glibcxx_requires_can_increment(__first, __n);

      return std::__niter_wrap(__first,
    71f0:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    71f4:	48 89 c7             	mov    %rax,%rdi
    71f7:	e8 f5 01 00 00       	callq  73f1 <_ZSt12__niter_baseIPPKcET_S3_>
    71fc:	48 89 c1             	mov    %rax,%rcx
    71ff:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    7203:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    7207:	48 89 c6             	mov    %rax,%rsi
    720a:	48 89 cf             	mov    %rcx,%rdi
    720d:	e8 f1 01 00 00       	callq  7403 <_ZSt10__fill_n_aIPPKcmS1_EN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT1_E7__valueET_E6__typeES8_T0_RKS6_>
    7212:	48 89 c2             	mov    %rax,%rdx
    7215:	48 8d 45 f8          	lea    -0x8(%rbp),%rax
    7219:	48 89 d6             	mov    %rdx,%rsi
    721c:	48 89 c7             	mov    %rax,%rdi
    721f:	e8 2a 02 00 00       	callq  744e <_ZSt12__niter_wrapIPPKcET_RKS3_S3_>
/usr/include/c++/9/bits/stl_algobase.h:810
		std::__fill_n_a(std::__niter_base(__first), __n, __value));
    }
    7224:	c9                   	leaveq 
    7225:	c3                   	retq   

0000000000007226 <_ZNK9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EEE8max_sizeEv>:
_ZNK9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EEE8max_sizeEv():
/usr/include/c++/9/ext/new_allocator.h:132
      max_size() const _GLIBCXX_USE_NOEXCEPT
    7226:	f3 0f 1e fa          	endbr64 
    722a:	55                   	push   %rbp
    722b:	48 89 e5             	mov    %rsp,%rbp
    722e:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
/usr/include/c++/9/ext/new_allocator.h:135
	return size_t(__PTRDIFF_MAX__) / sizeof(_Tp);
    7232:	48 b8 55 55 55 55 55 	movabs $0x155555555555555,%rax
    7239:	55 55 01 
/usr/include/c++/9/ext/new_allocator.h:139
      }
    723c:	5d                   	pop    %rbp
    723d:	c3                   	retq   

000000000000723e <_ZNSt11_Tuple_implILm0EJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC1EOS8_>:
_ZNSt11_Tuple_implILm0EJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2EOS8_():
/usr/include/c++/9/tuple:358
      _Tuple_impl(_Tuple_impl&& __in)
    723e:	f3 0f 1e fa          	endbr64 
    7242:	55                   	push   %rbp
    7243:	48 89 e5             	mov    %rsp,%rbp
    7246:	53                   	push   %rbx
    7247:	48 83 ec 18          	sub    $0x18,%rsp
    724b:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    724f:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
/usr/include/c++/9/tuple:360
      : _Base(std::forward<_Head>(_M_head(__in))) { }
    7253:	48 8b 5d e8          	mov    -0x18(%rbp),%rbx
    7257:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    725b:	48 89 c7             	mov    %rax,%rdi
    725e:	e8 01 02 00 00       	callq  7464 <_ZNSt11_Tuple_implILm0EJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE7_M_headERS8_>
    7263:	48 89 c7             	mov    %rax,%rdi
    7266:	e8 17 02 00 00       	callq  7482 <_ZSt7forwardIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS8_E4typeE>
    726b:	48 89 c6             	mov    %rax,%rsi
    726e:	48 89 df             	mov    %rbx,%rdi
    7271:	e8 7c ed ff ff       	callq  5ff2 <_ZNSt10_Head_baseILm0ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EEC1ES7_>
    7276:	90                   	nop
    7277:	48 83 c4 18          	add    $0x18,%rsp
    727b:	5b                   	pop    %rbx
    727c:	5d                   	pop    %rbp
    727d:	c3                   	retq   

000000000000727e <_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC1IJRS6_EJEEESt21piecewise_construct_tSt5tupleIJDpT_EESB_IJDpT0_EE>:
_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IJRS6_EJEEESt21piecewise_construct_tSt5tupleIJDpT_EESB_IJDpT0_EE():
/usr/include/c++/9/tuple:1658

  // See stl_pair.h...
  template<class _T1, class _T2>
    template<typename... _Args1, typename... _Args2>
      inline
      pair<_T1, _T2>::
    727e:	f3 0f 1e fa          	endbr64 
    7282:	55                   	push   %rbp
    7283:	48 89 e5             	mov    %rsp,%rbp
    7286:	48 83 ec 30          	sub    $0x30,%rsp
    728a:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    728e:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    7292:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    7299:	00 00 
    729b:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    729f:	31 c0                	xor    %eax,%eax
/usr/include/c++/9/tuple:1663
      pair(piecewise_construct_t,
	   tuple<_Args1...> __first, tuple<_Args2...> __second)
      : pair(__first, __second,
	     typename _Build_index_tuple<sizeof...(_Args1)>::__type(),
	     typename _Build_index_tuple<sizeof...(_Args2)>::__type())
    72a1:	48 8d 55 df          	lea    -0x21(%rbp),%rdx
    72a5:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    72a9:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    72ad:	48 89 ce             	mov    %rcx,%rsi
    72b0:	48 89 c7             	mov    %rax,%rdi
    72b3:	e8 dc 01 00 00       	callq  7494 <_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC1IJRS6_EJLm0EEJEJEEERSt5tupleIJDpT_EERSA_IJDpT1_EESt12_Index_tupleIJXspT0_EEESJ_IJXspT2_EEE>
/usr/include/c++/9/tuple:1664
      { }
    72b8:	90                   	nop
    72b9:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    72bd:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    72c4:	00 00 
    72c6:	74 05                	je     72cd <_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC1IJRS6_EJEEESt21piecewise_construct_tSt5tupleIJDpT_EESB_IJDpT0_EE+0x4f>
    72c8:	e8 13 b4 ff ff       	callq  26e0 <__stack_chk_fail@plt>
    72cd:	c9                   	leaveq 
    72ce:	c3                   	retq   
    72cf:	90                   	nop

00000000000072d0 <_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC1IJOS5_EJEEESt21piecewise_construct_tSt5tupleIJDpT_EESB_IJDpT0_EE>:
_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IJOS5_EJEEESt21piecewise_construct_tSt5tupleIJDpT_EESB_IJDpT0_EE():
/usr/include/c++/9/tuple:1658
      pair<_T1, _T2>::
    72d0:	f3 0f 1e fa          	endbr64 
    72d4:	55                   	push   %rbp
    72d5:	48 89 e5             	mov    %rsp,%rbp
    72d8:	48 83 ec 30          	sub    $0x30,%rsp
    72dc:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    72e0:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    72e4:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    72eb:	00 00 
    72ed:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    72f1:	31 c0                	xor    %eax,%eax
/usr/include/c++/9/tuple:1663
	     typename _Build_index_tuple<sizeof...(_Args2)>::__type())
    72f3:	48 8d 55 df          	lea    -0x21(%rbp),%rdx
    72f7:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    72fb:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    72ff:	48 89 ce             	mov    %rcx,%rsi
    7302:	48 89 c7             	mov    %rax,%rdi
    7305:	e8 de 01 00 00       	callq  74e8 <_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC1IJOS5_EJLm0EEJEJEEERSt5tupleIJDpT_EERSA_IJDpT1_EESt12_Index_tupleIJXspT0_EEESJ_IJXspT2_EEE>
/usr/include/c++/9/tuple:1664
      { }
    730a:	90                   	nop
    730b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    730f:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    7316:	00 00 
    7318:	74 05                	je     731f <_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC1IJOS5_EJEEESt21piecewise_construct_tSt5tupleIJDpT_EESB_IJDpT0_EE+0x4f>
    731a:	e8 c1 b3 ff ff       	callq  26e0 <__stack_chk_fail@plt>
    731f:	c9                   	leaveq 
    7320:	c3                   	retq   

0000000000007321 <_ZSt4copyISt13move_iteratorIPiES1_ET0_T_S4_S3_>:
_ZSt4copyISt13move_iteratorIPiES1_ET0_T_S4_S3_():
/usr/include/c++/9/bits/stl_algobase.h:465
    copy(_II __first, _II __last, _OI __result)
    7321:	f3 0f 1e fa          	endbr64 
    7325:	55                   	push   %rbp
    7326:	48 89 e5             	mov    %rsp,%rbp
    7329:	53                   	push   %rbx
    732a:	48 83 ec 28          	sub    $0x28,%rsp
    732e:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    7332:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    7336:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
/usr/include/c++/9/bits/stl_algobase.h:474
	     (std::__miter_base(__first), std::__miter_base(__last), __result);
    733a:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    733e:	48 89 c7             	mov    %rax,%rdi
    7341:	e8 f6 01 00 00       	callq  753c <_ZSt12__miter_baseIPiEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E>
    7346:	48 89 c3             	mov    %rax,%rbx
    7349:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    734d:	48 89 c7             	mov    %rax,%rdi
    7350:	e8 e7 01 00 00       	callq  753c <_ZSt12__miter_baseIPiEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E>
    7355:	48 89 c1             	mov    %rax,%rcx
    7358:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    735c:	48 89 c2             	mov    %rax,%rdx
    735f:	48 89 de             	mov    %rbx,%rsi
    7362:	48 89 cf             	mov    %rcx,%rdi
    7365:	e8 f8 01 00 00       	callq  7562 <_ZSt14__copy_move_a2ILb1EPiS0_ET1_T0_S2_S1_>
/usr/include/c++/9/bits/stl_algobase.h:475
    }
    736a:	48 83 c4 28          	add    $0x28,%rsp
    736e:	5b                   	pop    %rbx
    736f:	5d                   	pop    %rbp
    7370:	c3                   	retq   

0000000000007371 <_ZSt12__miter_baseIPKPKcET_S4_>:
_ZSt12__miter_baseIPKPKcET_S4_():
/usr/include/c++/9/bits/cpp_type_traits.h:428

  // Fallback implementation of the function in bits/stl_iterator.h used to
  // remove the move_iterator wrapper.
  template<typename _Iterator>
    inline _Iterator
    __miter_base(_Iterator __it)
    7371:	f3 0f 1e fa          	endbr64 
    7375:	55                   	push   %rbp
    7376:	48 89 e5             	mov    %rsp,%rbp
    7379:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
/usr/include/c++/9/bits/cpp_type_traits.h:429
    { return __it; }
    737d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    7381:	5d                   	pop    %rbp
    7382:	c3                   	retq   

0000000000007383 <_ZSt14__copy_move_a2ILb0EPKPKcPS1_ET1_T0_S6_S5_>:
_ZSt14__copy_move_a2ILb0EPKPKcPS1_ET1_T0_S6_S5_():
/usr/include/c++/9/bits/stl_algobase.h:438
    __copy_move_a2(_II __first, _II __last, _OI __result)
    7383:	f3 0f 1e fa          	endbr64 
    7387:	55                   	push   %rbp
    7388:	48 89 e5             	mov    %rsp,%rbp
    738b:	41 54                	push   %r12
    738d:	53                   	push   %rbx
    738e:	48 83 ec 20          	sub    $0x20,%rsp
    7392:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    7396:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    739a:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
/usr/include/c++/9/bits/stl_algobase.h:440
      return std::__niter_wrap(__result,
    739e:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    73a2:	48 89 c7             	mov    %rax,%rdi
    73a5:	e8 47 00 00 00       	callq  73f1 <_ZSt12__niter_baseIPPKcET_S3_>
    73aa:	49 89 c4             	mov    %rax,%r12
    73ad:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    73b1:	48 89 c7             	mov    %rax,%rdi
    73b4:	e8 17 02 00 00       	callq  75d0 <_ZSt12__niter_baseIPKPKcET_S4_>
    73b9:	48 89 c3             	mov    %rax,%rbx
    73bc:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    73c0:	48 89 c7             	mov    %rax,%rdi
    73c3:	e8 08 02 00 00       	callq  75d0 <_ZSt12__niter_baseIPKPKcET_S4_>
    73c8:	4c 89 e2             	mov    %r12,%rdx
    73cb:	48 89 de             	mov    %rbx,%rsi
    73ce:	48 89 c7             	mov    %rax,%rdi
    73d1:	e8 0c 02 00 00       	callq  75e2 <_ZSt13__copy_move_aILb0EPKPKcPS1_ET1_T0_S6_S5_>
    73d6:	48 89 c2             	mov    %rax,%rdx
    73d9:	48 8d 45 d8          	lea    -0x28(%rbp),%rax
    73dd:	48 89 d6             	mov    %rdx,%rsi
    73e0:	48 89 c7             	mov    %rax,%rdi
    73e3:	e8 66 00 00 00       	callq  744e <_ZSt12__niter_wrapIPPKcET_RKS3_S3_>
/usr/include/c++/9/bits/stl_algobase.h:444
    }
    73e8:	48 83 c4 20          	add    $0x20,%rsp
    73ec:	5b                   	pop    %rbx
    73ed:	41 5c                	pop    %r12
    73ef:	5d                   	pop    %rbp
    73f0:	c3                   	retq   

00000000000073f1 <_ZSt12__niter_baseIPPKcET_S3_>:
_ZSt12__niter_baseIPPKcET_S3_():
/usr/include/c++/9/bits/stl_algobase.h:280
    __niter_base(_Iterator __it)
    73f1:	f3 0f 1e fa          	endbr64 
    73f5:	55                   	push   %rbp
    73f6:	48 89 e5             	mov    %rsp,%rbp
    73f9:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
/usr/include/c++/9/bits/stl_algobase.h:282
    { return __it; }
    73fd:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    7401:	5d                   	pop    %rbp
    7402:	c3                   	retq   

0000000000007403 <_ZSt10__fill_n_aIPPKcmS1_EN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT1_E7__valueET_E6__typeES8_T0_RKS6_>:
_ZSt10__fill_n_aIPPKcmS1_EN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT1_E7__valueET_E6__typeES8_T0_RKS6_():
/usr/include/c++/9/bits/stl_algobase.h:767
    __fill_n_a(_OutputIterator __first, _Size __n, const _Tp& __value)
    7403:	f3 0f 1e fa          	endbr64 
    7407:	55                   	push   %rbp
    7408:	48 89 e5             	mov    %rsp,%rbp
    740b:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    740f:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    7413:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
/usr/include/c++/9/bits/stl_algobase.h:769
      const _Tp __tmp = __value;
    7417:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    741b:	48 8b 00             	mov    (%rax),%rax
    741e:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
/usr/include/c++/9/bits/stl_algobase.h:770
      for (__decltype(__n + 0) __niter = __n;
    7422:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    7426:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
/usr/include/c++/9/bits/stl_algobase.h:771
	   __niter > 0; --__niter, (void) ++__first)
    742a:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
    742f:	74 17                	je     7448 <_ZSt10__fill_n_aIPPKcmS1_EN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT1_E7__valueET_E6__typeES8_T0_RKS6_+0x45>
/usr/include/c++/9/bits/stl_algobase.h:772
	*__first = __tmp;
    7431:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    7435:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    7439:	48 89 10             	mov    %rdx,(%rax)
/usr/include/c++/9/bits/stl_algobase.h:770
      for (__decltype(__n + 0) __niter = __n;
    743c:	48 83 6d f0 01       	subq   $0x1,-0x10(%rbp)
    7441:	48 83 45 e8 08       	addq   $0x8,-0x18(%rbp)
    7446:	eb e2                	jmp    742a <_ZSt10__fill_n_aIPPKcmS1_EN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT1_E7__valueET_E6__typeES8_T0_RKS6_+0x27>
/usr/include/c++/9/bits/stl_algobase.h:773
      return __first;
    7448:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
/usr/include/c++/9/bits/stl_algobase.h:774
    }
    744c:	5d                   	pop    %rbp
    744d:	c3                   	retq   

000000000000744e <_ZSt12__niter_wrapIPPKcET_RKS3_S3_>:
_ZSt12__niter_wrapIPPKcET_RKS3_S3_():
/usr/include/c++/9/bits/stl_algobase.h:295
    __niter_wrap(const _Iterator&, _Iterator __res)
    744e:	f3 0f 1e fa          	endbr64 
    7452:	55                   	push   %rbp
    7453:	48 89 e5             	mov    %rsp,%rbp
    7456:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    745a:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
/usr/include/c++/9/bits/stl_algobase.h:296
    { return __res; }
    745e:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    7462:	5d                   	pop    %rbp
    7463:	c3                   	retq   

0000000000007464 <_ZNSt11_Tuple_implILm0EJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE7_M_headERS8_>:
_ZNSt11_Tuple_implILm0EJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE7_M_headERS8_():
/usr/include/c++/9/tuple:334
      _M_head(_Tuple_impl& __t) noexcept { return _Base::_M_head(__t); }
    7464:	f3 0f 1e fa          	endbr64 
    7468:	55                   	push   %rbp
    7469:	48 89 e5             	mov    %rsp,%rbp
    746c:	48 83 ec 10          	sub    $0x10,%rsp
    7470:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    7474:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    7478:	48 89 c7             	mov    %rax,%rdi
    747b:	e8 97 01 00 00       	callq  7617 <_ZNSt10_Head_baseILm0ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE7_M_headERS8_>
    7480:	c9                   	leaveq 
    7481:	c3                   	retq   

0000000000007482 <_ZSt7forwardIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS8_E4typeE>:
_ZSt7forwardIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS8_E4typeE():
/usr/include/c++/9/bits/move.h:74
    forward(typename std::remove_reference<_Tp>::type& __t) noexcept
    7482:	f3 0f 1e fa          	endbr64 
    7486:	55                   	push   %rbp
    7487:	48 89 e5             	mov    %rsp,%rbp
    748a:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
/usr/include/c++/9/bits/move.h:75
    { return static_cast<_Tp&&>(__t); }
    748e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    7492:	5d                   	pop    %rbp
    7493:	c3                   	retq   

0000000000007494 <_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC1IJRS6_EJLm0EEJEJEEERSt5tupleIJDpT_EERSA_IJDpT1_EESt12_Index_tupleIJXspT0_EEESJ_IJXspT2_EEE>:
_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IJRS6_EJLm0EEJEJEEERSt5tupleIJDpT_EERSA_IJDpT1_EESt12_Index_tupleIJXspT0_EEESJ_IJXspT2_EEE():
/usr/include/c++/9/tuple:1670

  template<class _T1, class _T2>
    template<typename... _Args1, std::size_t... _Indexes1,
             typename... _Args2, std::size_t... _Indexes2>
      inline
      pair<_T1, _T2>::
    7494:	f3 0f 1e fa          	endbr64 
    7498:	55                   	push   %rbp
    7499:	48 89 e5             	mov    %rsp,%rbp
    749c:	53                   	push   %rbx
    749d:	48 83 ec 28          	sub    $0x28,%rsp
    74a1:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    74a5:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    74a9:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
/usr/include/c++/9/tuple:1674
      pair(tuple<_Args1...>& __tuple1, tuple<_Args2...>& __tuple2,
	   _Index_tuple<_Indexes1...>, _Index_tuple<_Indexes2...>)
      : first(std::forward<_Args1>(std::get<_Indexes1>(__tuple1))...),
        second(std::forward<_Args2>(std::get<_Indexes2>(__tuple2))...)
    74ad:	48 8b 5d e8          	mov    -0x18(%rbp),%rbx
/usr/include/c++/9/tuple:1673
      : first(std::forward<_Args1>(std::get<_Indexes1>(__tuple1))...),
    74b1:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    74b5:	48 89 c7             	mov    %rax,%rdi
    74b8:	e8 6f 01 00 00       	callq  762c <_ZSt3getILm0EJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSC_>
/usr/include/c++/9/tuple:1674
        second(std::forward<_Args2>(std::get<_Indexes2>(__tuple2))...)
    74bd:	48 89 c7             	mov    %rax,%rdi
    74c0:	e8 bd ff ff ff       	callq  7482 <_ZSt7forwardIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS8_E4typeE>
    74c5:	48 89 c6             	mov    %rax,%rsi
    74c8:	48 89 df             	mov    %rbx,%rdi
    74cb:	e8 a0 b0 ff ff       	callq  2570 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_@plt>
    74d0:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    74d4:	48 83 c0 20          	add    $0x20,%rax
    74d8:	48 89 c7             	mov    %rax,%rdi
    74db:	e8 90 b2 ff ff       	callq  2770 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev@plt>
/usr/include/c++/9/tuple:1675
      { }
    74e0:	90                   	nop
    74e1:	48 83 c4 28          	add    $0x28,%rsp
    74e5:	5b                   	pop    %rbx
    74e6:	5d                   	pop    %rbp
    74e7:	c3                   	retq   

00000000000074e8 <_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC1IJOS5_EJLm0EEJEJEEERSt5tupleIJDpT_EERSA_IJDpT1_EESt12_Index_tupleIJXspT0_EEESJ_IJXspT2_EEE>:
_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IJOS5_EJLm0EEJEJEEERSt5tupleIJDpT_EERSA_IJDpT1_EESt12_Index_tupleIJXspT0_EEESJ_IJXspT2_EEE():
/usr/include/c++/9/tuple:1670
      pair<_T1, _T2>::
    74e8:	f3 0f 1e fa          	endbr64 
    74ec:	55                   	push   %rbp
    74ed:	48 89 e5             	mov    %rsp,%rbp
    74f0:	53                   	push   %rbx
    74f1:	48 83 ec 28          	sub    $0x28,%rsp
    74f5:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    74f9:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    74fd:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
/usr/include/c++/9/tuple:1674
        second(std::forward<_Args2>(std::get<_Indexes2>(__tuple2))...)
    7501:	48 8b 5d e8          	mov    -0x18(%rbp),%rbx
/usr/include/c++/9/tuple:1673
      : first(std::forward<_Args1>(std::get<_Indexes1>(__tuple1))...),
    7505:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    7509:	48 89 c7             	mov    %rax,%rdi
    750c:	e8 39 01 00 00       	callq  764a <_ZSt3getILm0EJONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSB_>
/usr/include/c++/9/tuple:1674
        second(std::forward<_Args2>(std::get<_Indexes2>(__tuple2))...)
    7511:	48 89 c7             	mov    %rax,%rdi
    7514:	e8 df ef ff ff       	callq  64f8 <_ZSt7forwardIONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS7_E4typeE>
    7519:	48 89 c6             	mov    %rax,%rsi
    751c:	48 89 df             	mov    %rbx,%rdi
    751f:	e8 8c b0 ff ff       	callq  25b0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_@plt>
    7524:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    7528:	48 83 c0 20          	add    $0x20,%rax
    752c:	48 89 c7             	mov    %rax,%rdi
    752f:	e8 3c b2 ff ff       	callq  2770 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev@plt>
/usr/include/c++/9/tuple:1675
      { }
    7534:	90                   	nop
    7535:	48 83 c4 28          	add    $0x28,%rsp
    7539:	5b                   	pop    %rbx
    753a:	5d                   	pop    %rbp
    753b:	c3                   	retq   

000000000000753c <_ZSt12__miter_baseIPiEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E>:
_ZSt12__miter_baseIPiEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E():
/usr/include/c++/9/bits/stl_iterator.h:1259
      typedef __true_type __type;
    };

  template<typename _Iterator>
    auto
    __miter_base(move_iterator<_Iterator> __it)
    753c:	f3 0f 1e fa          	endbr64 
    7540:	55                   	push   %rbp
    7541:	48 89 e5             	mov    %rsp,%rbp
    7544:	48 83 ec 10          	sub    $0x10,%rsp
    7548:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
/usr/include/c++/9/bits/stl_iterator.h:1261
    -> decltype(__miter_base(__it.base()))
    { return __miter_base(__it.base()); }
    754c:	48 8d 45 f8          	lea    -0x8(%rbp),%rax
    7550:	48 89 c7             	mov    %rax,%rdi
    7553:	e8 10 01 00 00       	callq  7668 <_ZNKSt13move_iteratorIPiE4baseEv>
    7558:	48 89 c7             	mov    %rax,%rdi
    755b:	e8 1d 01 00 00       	callq  767d <_ZSt12__miter_baseIPiET_S1_>
    7560:	c9                   	leaveq 
    7561:	c3                   	retq   

0000000000007562 <_ZSt14__copy_move_a2ILb1EPiS0_ET1_T0_S2_S1_>:
_ZSt14__copy_move_a2ILb1EPiS0_ET1_T0_S2_S1_():
/usr/include/c++/9/bits/stl_algobase.h:438
    __copy_move_a2(_II __first, _II __last, _OI __result)
    7562:	f3 0f 1e fa          	endbr64 
    7566:	55                   	push   %rbp
    7567:	48 89 e5             	mov    %rsp,%rbp
    756a:	41 54                	push   %r12
    756c:	53                   	push   %rbx
    756d:	48 83 ec 20          	sub    $0x20,%rsp
    7571:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    7575:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    7579:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
/usr/include/c++/9/bits/stl_algobase.h:440
      return std::__niter_wrap(__result,
    757d:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    7581:	48 89 c7             	mov    %rax,%rdi
    7584:	e8 55 fb ff ff       	callq  70de <_ZSt12__niter_baseIPiET_S1_>
    7589:	49 89 c4             	mov    %rax,%r12
    758c:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    7590:	48 89 c7             	mov    %rax,%rdi
    7593:	e8 46 fb ff ff       	callq  70de <_ZSt12__niter_baseIPiET_S1_>
    7598:	48 89 c3             	mov    %rax,%rbx
    759b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    759f:	48 89 c7             	mov    %rax,%rdi
    75a2:	e8 37 fb ff ff       	callq  70de <_ZSt12__niter_baseIPiET_S1_>
    75a7:	4c 89 e2             	mov    %r12,%rdx
    75aa:	48 89 de             	mov    %rbx,%rsi
    75ad:	48 89 c7             	mov    %rax,%rdi
    75b0:	e8 da 00 00 00       	callq  768f <_ZSt13__copy_move_aILb1EPiS0_ET1_T0_S2_S1_>
    75b5:	48 89 c2             	mov    %rax,%rdx
    75b8:	48 8d 45 d8          	lea    -0x28(%rbp),%rax
    75bc:	48 89 d6             	mov    %rdx,%rsi
    75bf:	48 89 c7             	mov    %rax,%rdi
    75c2:	e8 fd 00 00 00       	callq  76c4 <_ZSt12__niter_wrapIPiET_RKS1_S1_>
/usr/include/c++/9/bits/stl_algobase.h:444
    }
    75c7:	48 83 c4 20          	add    $0x20,%rsp
    75cb:	5b                   	pop    %rbx
    75cc:	41 5c                	pop    %r12
    75ce:	5d                   	pop    %rbp
    75cf:	c3                   	retq   

00000000000075d0 <_ZSt12__niter_baseIPKPKcET_S4_>:
_ZSt12__niter_baseIPKPKcET_S4_():
/usr/include/c++/9/bits/stl_algobase.h:280
    __niter_base(_Iterator __it)
    75d0:	f3 0f 1e fa          	endbr64 
    75d4:	55                   	push   %rbp
    75d5:	48 89 e5             	mov    %rsp,%rbp
    75d8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
/usr/include/c++/9/bits/stl_algobase.h:282
    { return __it; }
    75dc:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    75e0:	5d                   	pop    %rbp
    75e1:	c3                   	retq   

00000000000075e2 <_ZSt13__copy_move_aILb0EPKPKcPS1_ET1_T0_S6_S5_>:
_ZSt13__copy_move_aILb0EPKPKcPS1_ET1_T0_S6_S5_():
/usr/include/c++/9/bits/stl_algobase.h:393
    __copy_move_a(_II __first, _II __last, _OI __result)
    75e2:	f3 0f 1e fa          	endbr64 
    75e6:	55                   	push   %rbp
    75e7:	48 89 e5             	mov    %rsp,%rbp
    75ea:	48 83 ec 30          	sub    $0x30,%rsp
    75ee:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    75f2:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    75f6:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
/usr/include/c++/9/bits/stl_algobase.h:398
      const bool __simple = (__is_trivially_copyable(_ValueTypeI)
    75fa:	c6 45 ff 01          	movb   $0x1,-0x1(%rbp)
/usr/include/c++/9/bits/stl_algobase.h:404
			      _Category>::__copy_m(__first, __last, __result);
    75fe:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    7602:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    7606:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    760a:	48 89 ce             	mov    %rcx,%rsi
    760d:	48 89 c7             	mov    %rax,%rdi
    7610:	e8 c5 00 00 00       	callq  76da <_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPKcEEPT_PKS5_S8_S6_>
/usr/include/c++/9/bits/stl_algobase.h:405
    }
    7615:	c9                   	leaveq 
    7616:	c3                   	retq   

0000000000007617 <_ZNSt10_Head_baseILm0ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE7_M_headERS8_>:
_ZNSt10_Head_baseILm0ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE7_M_headERS8_():
/usr/include/c++/9/tuple:160
      _M_head(_Head_base& __b) noexcept { return __b._M_head_impl; }
    7617:	f3 0f 1e fa          	endbr64 
    761b:	55                   	push   %rbp
    761c:	48 89 e5             	mov    %rsp,%rbp
    761f:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    7623:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    7627:	48 8b 00             	mov    (%rax),%rax
    762a:	5d                   	pop    %rbp
    762b:	c3                   	retq   

000000000000762c <_ZSt3getILm0EJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSC_>:
_ZSt3getILm0EJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSC_():
/usr/include/c++/9/tuple:1320
    get(tuple<_Elements...>& __t) noexcept
    762c:	f3 0f 1e fa          	endbr64 
    7630:	55                   	push   %rbp
    7631:	48 89 e5             	mov    %rsp,%rbp
    7634:	48 83 ec 10          	sub    $0x10,%rsp
    7638:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
/usr/include/c++/9/tuple:1321
    { return std::__get_helper<__i>(__t); }
    763c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    7640:	48 89 c7             	mov    %rax,%rdi
    7643:	e8 f5 00 00 00       	callq  773d <_ZSt12__get_helperILm0ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEERT0_RSt11_Tuple_implIXT_EJS8_DpT1_EE>
    7648:	c9                   	leaveq 
    7649:	c3                   	retq   

000000000000764a <_ZSt3getILm0EJONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSB_>:
_ZSt3getILm0EJONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSB_():
/usr/include/c++/9/tuple:1320
    get(tuple<_Elements...>& __t) noexcept
    764a:	f3 0f 1e fa          	endbr64 
    764e:	55                   	push   %rbp
    764f:	48 89 e5             	mov    %rsp,%rbp
    7652:	48 83 ec 10          	sub    $0x10,%rsp
    7656:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
/usr/include/c++/9/tuple:1321
    { return std::__get_helper<__i>(__t); }
    765a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    765e:	48 89 c7             	mov    %rax,%rdi
    7661:	e8 f5 00 00 00       	callq  775b <_ZSt12__get_helperILm0EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEERT0_RSt11_Tuple_implIXT_EJS7_DpT1_EE>
    7666:	c9                   	leaveq 
    7667:	c3                   	retq   

0000000000007668 <_ZNKSt13move_iteratorIPiE4baseEv>:
_ZNKSt13move_iteratorIPiE4baseEv():
/usr/include/c++/9/bits/stl_iterator.h:1063
      base() const
    7668:	f3 0f 1e fa          	endbr64 
    766c:	55                   	push   %rbp
    766d:	48 89 e5             	mov    %rsp,%rbp
    7670:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
/usr/include/c++/9/bits/stl_iterator.h:1064
      { return _M_current; }
    7674:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    7678:	48 8b 00             	mov    (%rax),%rax
    767b:	5d                   	pop    %rbp
    767c:	c3                   	retq   

000000000000767d <_ZSt12__miter_baseIPiET_S1_>:
_ZSt12__miter_baseIPiET_S1_():
/usr/include/c++/9/bits/cpp_type_traits.h:428
    __miter_base(_Iterator __it)
    767d:	f3 0f 1e fa          	endbr64 
    7681:	55                   	push   %rbp
    7682:	48 89 e5             	mov    %rsp,%rbp
    7685:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
/usr/include/c++/9/bits/cpp_type_traits.h:429
    { return __it; }
    7689:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    768d:	5d                   	pop    %rbp
    768e:	c3                   	retq   

000000000000768f <_ZSt13__copy_move_aILb1EPiS0_ET1_T0_S2_S1_>:
_ZSt13__copy_move_aILb1EPiS0_ET1_T0_S2_S1_():
/usr/include/c++/9/bits/stl_algobase.h:393
    __copy_move_a(_II __first, _II __last, _OI __result)
    768f:	f3 0f 1e fa          	endbr64 
    7693:	55                   	push   %rbp
    7694:	48 89 e5             	mov    %rsp,%rbp
    7697:	48 83 ec 30          	sub    $0x30,%rsp
    769b:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    769f:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    76a3:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
/usr/include/c++/9/bits/stl_algobase.h:398
      const bool __simple = (__is_trivially_copyable(_ValueTypeI)
    76a7:	c6 45 ff 01          	movb   $0x1,-0x1(%rbp)
/usr/include/c++/9/bits/stl_algobase.h:404
			      _Category>::__copy_m(__first, __last, __result);
    76ab:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    76af:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    76b3:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    76b7:	48 89 ce             	mov    %rcx,%rsi
    76ba:	48 89 c7             	mov    %rax,%rdi
    76bd:	e8 b7 00 00 00       	callq  7779 <_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_>
/usr/include/c++/9/bits/stl_algobase.h:405
    }
    76c2:	c9                   	leaveq 
    76c3:	c3                   	retq   

00000000000076c4 <_ZSt12__niter_wrapIPiET_RKS1_S1_>:
_ZSt12__niter_wrapIPiET_RKS1_S1_():
/usr/include/c++/9/bits/stl_algobase.h:295
    __niter_wrap(const _Iterator&, _Iterator __res)
    76c4:	f3 0f 1e fa          	endbr64 
    76c8:	55                   	push   %rbp
    76c9:	48 89 e5             	mov    %rsp,%rbp
    76cc:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    76d0:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
/usr/include/c++/9/bits/stl_algobase.h:296
    { return __res; }
    76d4:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    76d8:	5d                   	pop    %rbp
    76d9:	c3                   	retq   

00000000000076da <_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPKcEEPT_PKS5_S8_S6_>:
_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPKcEEPT_PKS5_S8_S6_():
/usr/include/c++/9/bits/stl_algobase.h:375
	__copy_m(const _Tp* __first, const _Tp* __last, _Tp* __result)
    76da:	f3 0f 1e fa          	endbr64 
    76de:	55                   	push   %rbp
    76df:	48 89 e5             	mov    %rsp,%rbp
    76e2:	48 83 ec 30          	sub    $0x30,%rsp
    76e6:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    76ea:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    76ee:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
/usr/include/c++/9/bits/stl_algobase.h:384
	  const ptrdiff_t _Num = __last - __first;
    76f2:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    76f6:	48 2b 45 e8          	sub    -0x18(%rbp),%rax
    76fa:	48 c1 f8 03          	sar    $0x3,%rax
    76fe:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
/usr/include/c++/9/bits/stl_algobase.h:385
	  if (_Num)
    7702:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
    7707:	74 1f                	je     7728 <_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPKcEEPT_PKS5_S8_S6_+0x4e>
/usr/include/c++/9/bits/stl_algobase.h:386
	    __builtin_memmove(__result, __first, sizeof(_Tp) * _Num);
    7709:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    770d:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
    7714:	00 
    7715:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    7719:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    771d:	48 89 ce             	mov    %rcx,%rsi
    7720:	48 89 c7             	mov    %rax,%rdi
    7723:	e8 f8 b0 ff ff       	callq  2820 <memmove@plt>
/usr/include/c++/9/bits/stl_algobase.h:387
	  return __result + _Num;
    7728:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    772c:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
    7733:	00 
    7734:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    7738:	48 01 d0             	add    %rdx,%rax
/usr/include/c++/9/bits/stl_algobase.h:388
	}
    773b:	c9                   	leaveq 
    773c:	c3                   	retq   

000000000000773d <_ZSt12__get_helperILm0ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEERT0_RSt11_Tuple_implIXT_EJS8_DpT1_EE>:
_ZSt12__get_helperILm0ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEERT0_RSt11_Tuple_implIXT_EJS8_DpT1_EE():
/usr/include/c++/9/tuple:1309
    __get_helper(_Tuple_impl<__i, _Head, _Tail...>& __t) noexcept
    773d:	f3 0f 1e fa          	endbr64 
    7741:	55                   	push   %rbp
    7742:	48 89 e5             	mov    %rsp,%rbp
    7745:	48 83 ec 10          	sub    $0x10,%rsp
    7749:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
/usr/include/c++/9/tuple:1310
    { return _Tuple_impl<__i, _Head, _Tail...>::_M_head(__t); }
    774d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    7751:	48 89 c7             	mov    %rax,%rdi
    7754:	e8 0b fd ff ff       	callq  7464 <_ZNSt11_Tuple_implILm0EJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE7_M_headERS8_>
    7759:	c9                   	leaveq 
    775a:	c3                   	retq   

000000000000775b <_ZSt12__get_helperILm0EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEERT0_RSt11_Tuple_implIXT_EJS7_DpT1_EE>:
_ZSt12__get_helperILm0EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEERT0_RSt11_Tuple_implIXT_EJS7_DpT1_EE():
/usr/include/c++/9/tuple:1309
    __get_helper(_Tuple_impl<__i, _Head, _Tail...>& __t) noexcept
    775b:	f3 0f 1e fa          	endbr64 
    775f:	55                   	push   %rbp
    7760:	48 89 e5             	mov    %rsp,%rbp
    7763:	48 83 ec 10          	sub    $0x10,%rsp
    7767:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
/usr/include/c++/9/tuple:1310
    { return _Tuple_impl<__i, _Head, _Tail...>::_M_head(__t); }
    776b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    776f:	48 89 c7             	mov    %rax,%rdi
    7772:	e8 63 ed ff ff       	callq  64da <_ZNSt11_Tuple_implILm0EJONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE7_M_headERS7_>
    7777:	c9                   	leaveq 
    7778:	c3                   	retq   

0000000000007779 <_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_>:
_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_():
/usr/include/c++/9/bits/stl_algobase.h:375
	__copy_m(const _Tp* __first, const _Tp* __last, _Tp* __result)
    7779:	f3 0f 1e fa          	endbr64 
    777d:	55                   	push   %rbp
    777e:	48 89 e5             	mov    %rsp,%rbp
    7781:	48 83 ec 30          	sub    $0x30,%rsp
    7785:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    7789:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    778d:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
/usr/include/c++/9/bits/stl_algobase.h:384
	  const ptrdiff_t _Num = __last - __first;
    7791:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    7795:	48 2b 45 e8          	sub    -0x18(%rbp),%rax
    7799:	48 c1 f8 02          	sar    $0x2,%rax
    779d:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
/usr/include/c++/9/bits/stl_algobase.h:385
	  if (_Num)
    77a1:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
    77a6:	74 1f                	je     77c7 <_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_+0x4e>
/usr/include/c++/9/bits/stl_algobase.h:386
	    __builtin_memmove(__result, __first, sizeof(_Tp) * _Num);
    77a8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    77ac:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
    77b3:	00 
    77b4:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    77b8:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    77bc:	48 89 ce             	mov    %rcx,%rsi
    77bf:	48 89 c7             	mov    %rax,%rdi
    77c2:	e8 59 b0 ff ff       	callq  2820 <memmove@plt>
/usr/include/c++/9/bits/stl_algobase.h:387
	  return __result + _Num;
    77c7:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    77cb:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
    77d2:	00 
    77d3:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    77d7:	48 01 d0             	add    %rdx,%rax
/usr/include/c++/9/bits/stl_algobase.h:388
	}
    77da:	c9                   	leaveq 
    77db:	c3                   	retq   

00000000000077dc <perf_read_buffer_32>:
perf_read_buffer_32():
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.h:63
extern void perf_free_fds(perf_event_desc_t *fds, int num_fds);
extern void perf_skip_buffer(perf_event_desc_t *hw, size_t sz);

static inline int
perf_read_buffer_32(perf_event_desc_t *hw, void *buf)
{
    77dc:	55                   	push   %rbp
    77dd:	48 89 e5             	mov    %rsp,%rbp
    77e0:	48 83 ec 10          	sub    $0x10,%rsp
    77e4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    77e8:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.h:64
	return perf_read_buffer(hw, buf, sizeof(uint32_t));
    77ec:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
    77f0:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    77f4:	ba 04 00 00 00       	mov    $0x4,%edx
    77f9:	48 89 ce             	mov    %rcx,%rsi
    77fc:	48 89 c7             	mov    %rax,%rdi
    77ff:	e8 30 08 00 00       	callq  8034 <perf_read_buffer>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.h:65
}
    7804:	c9                   	leaveq 
    7805:	c3                   	retq   

0000000000007806 <perf_read_buffer_64>:
perf_read_buffer_64():
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.h:69

static inline int
perf_read_buffer_64(perf_event_desc_t *hw, void *buf)
{
    7806:	55                   	push   %rbp
    7807:	48 89 e5             	mov    %rsp,%rbp
    780a:	48 83 ec 10          	sub    $0x10,%rsp
    780e:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    7812:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.h:70
	return perf_read_buffer(hw, buf, sizeof(uint64_t));
    7816:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
    781a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    781e:	ba 08 00 00 00       	mov    $0x8,%edx
    7823:	48 89 ce             	mov    %rcx,%rsi
    7826:	48 89 c7             	mov    %rax,%rdi
    7829:	e8 06 08 00 00       	callq  8034 <perf_read_buffer>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.h:71
}
    782e:	c9                   	leaveq 
    782f:	c3                   	retq   

0000000000007830 <perf_scale>:
perf_scale():
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.h:80
 * values[1] = TIME_ENABLED
 * values[2] = TIME_RUNNING
 */
static inline uint64_t
perf_scale(uint64_t *values)
{
    7830:	55                   	push   %rbp
    7831:	48 89 e5             	mov    %rsp,%rbp
    7834:	48 83 ec 20          	sub    $0x20,%rsp
    7838:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.h:81
	uint64_t res = 0;
    783c:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
    7843:	00 
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.h:83

	if (!values[2] && !values[1] && values[0])
    7844:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    7848:	48 83 c0 10          	add    $0x10,%rax
    784c:	48 8b 00             	mov    (%rax),%rax
    784f:	48 85 c0             	test   %rax,%rax
    7852:	75 2d                	jne    7881 <perf_scale+0x51>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.h:83 (discriminator 1)
    7854:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    7858:	48 83 c0 08          	add    $0x8,%rax
    785c:	48 8b 00             	mov    (%rax),%rax
    785f:	48 85 c0             	test   %rax,%rax
    7862:	75 1d                	jne    7881 <perf_scale+0x51>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.h:83 (discriminator 2)
    7864:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    7868:	48 8b 00             	mov    (%rax),%rax
    786b:	48 85 c0             	test   %rax,%rax
    786e:	74 11                	je     7881 <perf_scale+0x51>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.h:84
		warnx("WARNING: time_running = 0 = time_enabled, raw count not zero\n");
    7870:	48 8d 3d 21 2c 00 00 	lea    0x2c21(%rip),%rdi        # a498 <_ZL12total_events+0x48c>
    7877:	b8 00 00 00 00       	mov    $0x0,%eax
    787c:	e8 3f ae ff ff       	callq  26c0 <warnx@plt>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.h:86

	if (values[2] > values[1])
    7881:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    7885:	48 83 c0 10          	add    $0x10,%rax
    7889:	48 8b 10             	mov    (%rax),%rdx
    788c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    7890:	48 83 c0 08          	add    $0x8,%rax
    7894:	48 8b 00             	mov    (%rax),%rax
    7897:	48 39 c2             	cmp    %rax,%rdx
    789a:	76 11                	jbe    78ad <perf_scale+0x7d>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.h:87
		warnx("WARNING: time_running > time_enabled\n");
    789c:	48 8d 3d 35 2c 00 00 	lea    0x2c35(%rip),%rdi        # a4d8 <_ZL12total_events+0x4cc>
    78a3:	b8 00 00 00 00       	mov    $0x0,%eax
    78a8:	e8 13 ae ff ff       	callq  26c0 <warnx@plt>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.h:89

	if (values[2])
    78ad:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    78b1:	48 83 c0 10          	add    $0x10,%rax
    78b5:	48 8b 00             	mov    (%rax),%rax
    78b8:	48 85 c0             	test   %rax,%rax
    78bb:	0f 84 d0 00 00 00    	je     7991 <perf_scale+0x161>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.h:90
		res = (uint64_t)((double)values[0] * values[1]/values[2]);
    78c1:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    78c5:	48 8b 00             	mov    (%rax),%rax
    78c8:	48 85 c0             	test   %rax,%rax
    78cb:	78 07                	js     78d4 <perf_scale+0xa4>
    78cd:	f2 48 0f 2a c8       	cvtsi2sd %rax,%xmm1
    78d2:	eb 19                	jmp    78ed <perf_scale+0xbd>
    78d4:	48 89 c2             	mov    %rax,%rdx
    78d7:	48 d1 ea             	shr    %rdx
    78da:	83 e0 01             	and    $0x1,%eax
    78dd:	48 09 c2             	or     %rax,%rdx
    78e0:	f2 48 0f 2a c2       	cvtsi2sd %rdx,%xmm0
    78e5:	66 0f 28 c8          	movapd %xmm0,%xmm1
    78e9:	f2 0f 58 c8          	addsd  %xmm0,%xmm1
    78ed:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    78f1:	48 83 c0 08          	add    $0x8,%rax
    78f5:	48 8b 00             	mov    (%rax),%rax
    78f8:	48 85 c0             	test   %rax,%rax
    78fb:	78 07                	js     7904 <perf_scale+0xd4>
    78fd:	f2 48 0f 2a c0       	cvtsi2sd %rax,%xmm0
    7902:	eb 15                	jmp    7919 <perf_scale+0xe9>
    7904:	48 89 c2             	mov    %rax,%rdx
    7907:	48 d1 ea             	shr    %rdx
    790a:	83 e0 01             	and    $0x1,%eax
    790d:	48 09 c2             	or     %rax,%rdx
    7910:	f2 48 0f 2a c2       	cvtsi2sd %rdx,%xmm0
    7915:	f2 0f 58 c0          	addsd  %xmm0,%xmm0
    7919:	f2 0f 59 c8          	mulsd  %xmm0,%xmm1
    791d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    7921:	48 83 c0 10          	add    $0x10,%rax
    7925:	48 8b 00             	mov    (%rax),%rax
    7928:	48 85 c0             	test   %rax,%rax
    792b:	78 07                	js     7934 <perf_scale+0x104>
    792d:	f2 48 0f 2a c0       	cvtsi2sd %rax,%xmm0
    7932:	eb 15                	jmp    7949 <perf_scale+0x119>
    7934:	48 89 c2             	mov    %rax,%rdx
    7937:	48 d1 ea             	shr    %rdx
    793a:	83 e0 01             	and    $0x1,%eax
    793d:	48 09 c2             	or     %rax,%rdx
    7940:	f2 48 0f 2a c2       	cvtsi2sd %rdx,%xmm0
    7945:	f2 0f 58 c0          	addsd  %xmm0,%xmm0
    7949:	f2 0f 5e c8          	divsd  %xmm0,%xmm1
    794d:	66 0f 28 c1          	movapd %xmm1,%xmm0
    7951:	66 0f 2f 05 bf 30 00 	comisd 0x30bf(%rip),%xmm0        # aa18 <_ZL12total_events+0xa0c>
    7958:	00 
    7959:	73 0b                	jae    7966 <perf_scale+0x136>
    795b:	f2 48 0f 2c c0       	cvttsd2si %xmm0,%rax
    7960:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    7964:	eb 23                	jmp    7989 <perf_scale+0x159>
    7966:	f2 0f 10 0d aa 30 00 	movsd  0x30aa(%rip),%xmm1        # aa18 <_ZL12total_events+0xa0c>
    796d:	00 
    796e:	f2 0f 5c c1          	subsd  %xmm1,%xmm0
    7972:	f2 48 0f 2c c0       	cvttsd2si %xmm0,%rax
    7977:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    797b:	48 b8 00 00 00 00 00 	movabs $0x8000000000000000,%rax
    7982:	00 00 80 
    7985:	48 31 45 f8          	xor    %rax,-0x8(%rbp)
    7989:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    798d:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.h:91
	return res;
    7991:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.h:92
}
    7995:	c9                   	leaveq 
    7996:	c3                   	retq   

0000000000007997 <perf_id2event>:
perf_id2event():
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.h:148
/*
 * id = PERF_FORMAT_ID
 */
static inline int
perf_id2event(perf_event_desc_t *fds, int num_events, uint64_t id)
{
    7997:	55                   	push   %rbp
    7998:	48 89 e5             	mov    %rsp,%rbp
    799b:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    799f:	89 75 e4             	mov    %esi,-0x1c(%rbp)
    79a2:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.h:150
	int j;
	for(j=0; j < num_events; j++)
    79a6:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.h:150 (discriminator 1)
    79ad:	8b 45 fc             	mov    -0x4(%rbp),%eax
    79b0:	3b 45 e4             	cmp    -0x1c(%rbp),%eax
    79b3:	7d 36                	jge    79eb <perf_id2event+0x54>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.h:151
		if (fds[j].id == id)
    79b5:	8b 45 fc             	mov    -0x4(%rbp),%eax
    79b8:	48 63 d0             	movslq %eax,%rdx
    79bb:	48 89 d0             	mov    %rdx,%rax
    79be:	48 c1 e0 04          	shl    $0x4,%rax
    79c2:	48 29 d0             	sub    %rdx,%rax
    79c5:	48 c1 e0 04          	shl    $0x4,%rax
    79c9:	48 89 c2             	mov    %rax,%rdx
    79cc:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    79d0:	48 01 d0             	add    %rdx,%rax
    79d3:	48 8b 80 b8 00 00 00 	mov    0xb8(%rax),%rax
    79da:	48 39 45 d8          	cmp    %rax,-0x28(%rbp)
    79de:	75 05                	jne    79e5 <perf_id2event+0x4e>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.h:152
			return j;
    79e0:	8b 45 fc             	mov    -0x4(%rbp),%eax
    79e3:	eb 0b                	jmp    79f0 <perf_id2event+0x59>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.h:150 (discriminator 2)
	for(j=0; j < num_events; j++)
    79e5:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
    79e9:	eb c2                	jmp    79ad <perf_id2event+0x16>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.h:153
	return -1;
    79eb:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.h:154
}
    79f0:	5d                   	pop    %rbp
    79f1:	c3                   	retq   

00000000000079f2 <perf_setup_argv_events>:
perf_setup_argv_events():
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:45
 * max_fds and num_fds must both point to a zero value on the first call
 * The return value is success (0) vs. failure (non-zero)
 */
int
perf_setup_argv_events(const char **argv, perf_event_desc_t **fds, int *num_fds)
{
    79f2:	f3 0f 1e fa          	endbr64 
    79f6:	55                   	push   %rbp
    79f7:	48 89 e5             	mov    %rsp,%rbp
    79fa:	53                   	push   %rbx
    79fb:	48 83 ec 78          	sub    $0x78,%rsp
    79ff:	48 89 7d 98          	mov    %rdi,-0x68(%rbp)
    7a03:	48 89 75 90          	mov    %rsi,-0x70(%rbp)
    7a07:	48 89 55 88          	mov    %rdx,-0x78(%rbp)
    7a0b:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    7a12:	00 00 
    7a14:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    7a18:	31 c0                	xor    %eax,%eax
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:51
	perf_event_desc_t *fd;
	pfm_perf_encode_arg_t arg;
	int new_max, ret, num, max_fds;
	int group_leader;

	if (!(argv && fds && num_fds))
    7a1a:	48 83 7d 98 00       	cmpq   $0x0,-0x68(%rbp)
    7a1f:	74 0e                	je     7a2f <perf_setup_argv_events+0x3d>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:51 (discriminator 1)
    7a21:	48 83 7d 90 00       	cmpq   $0x0,-0x70(%rbp)
    7a26:	74 07                	je     7a2f <perf_setup_argv_events+0x3d>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:51 (discriminator 2)
    7a28:	48 83 7d 88 00       	cmpq   $0x0,-0x78(%rbp)
    7a2d:	75 0a                	jne    7a39 <perf_setup_argv_events+0x47>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:52
		return -1;
    7a2f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    7a34:	e9 04 03 00 00       	jmpq   7d3d <perf_setup_argv_events+0x34b>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:54

	fd = *fds;
    7a39:	48 8b 45 90          	mov    -0x70(%rbp),%rax
    7a3d:	48 8b 00             	mov    (%rax),%rax
    7a40:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:55
	if (fd) {
    7a44:	48 83 7d b8 00       	cmpq   $0x0,-0x48(%rbp)
    7a49:	74 28                	je     7a73 <perf_setup_argv_events+0x81>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:56
		max_fds = fd[0].max_fds;
    7a4b:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    7a4f:	8b 80 d8 00 00 00    	mov    0xd8(%rax),%eax
    7a55:	89 45 ac             	mov    %eax,-0x54(%rbp)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:57
		if (max_fds < 2)
    7a58:	83 7d ac 01          	cmpl   $0x1,-0x54(%rbp)
    7a5c:	7f 0a                	jg     7a68 <perf_setup_argv_events+0x76>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:58
			return -1;
    7a5e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    7a63:	e9 d5 02 00 00       	jmpq   7d3d <perf_setup_argv_events+0x34b>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:59
		num = *num_fds;
    7a68:	48 8b 45 88          	mov    -0x78(%rbp),%rax
    7a6c:	8b 00                	mov    (%rax),%eax
    7a6e:	89 45 a8             	mov    %eax,-0x58(%rbp)
    7a71:	eb 0d                	jmp    7a80 <perf_setup_argv_events+0x8e>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:61
	} else {
		max_fds = num = 0; /* bootstrap */
    7a73:	c7 45 a8 00 00 00 00 	movl   $0x0,-0x58(%rbp)
    7a7a:	8b 45 a8             	mov    -0x58(%rbp),%eax
    7a7d:	89 45 ac             	mov    %eax,-0x54(%rbp)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:63
	}
	group_leader = num;
    7a80:	8b 45 a8             	mov    -0x58(%rbp),%eax
    7a83:	89 45 b0             	mov    %eax,-0x50(%rbp)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:65

	while(*argv) {
    7a86:	48 8b 45 98          	mov    -0x68(%rbp),%rax
    7a8a:	48 8b 00             	mov    (%rax),%rax
    7a8d:	48 85 c0             	test   %rax,%rax
    7a90:	0f 84 76 02 00 00    	je     7d0c <perf_setup_argv_events+0x31a>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:66
		if (num == max_fds) {
    7a96:	8b 45 a8             	mov    -0x58(%rbp),%eax
    7a99:	3b 45 ac             	cmp    -0x54(%rbp),%eax
    7a9c:	0f 85 d7 00 00 00    	jne    7b79 <perf_setup_argv_events+0x187>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:67
			if (max_fds == 0)
    7aa2:	83 7d ac 00          	cmpl   $0x0,-0x54(%rbp)
    7aa6:	75 09                	jne    7ab1 <perf_setup_argv_events+0xbf>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:68
				new_max = 2;
    7aa8:	c7 45 a4 02 00 00 00 	movl   $0x2,-0x5c(%rbp)
    7aaf:	eb 08                	jmp    7ab9 <perf_setup_argv_events+0xc7>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:70
			else
				new_max = max_fds << 1;
    7ab1:	8b 45 ac             	mov    -0x54(%rbp),%eax
    7ab4:	01 c0                	add    %eax,%eax
    7ab6:	89 45 a4             	mov    %eax,-0x5c(%rbp)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:72

			if (new_max < max_fds) {
    7ab9:	8b 45 a4             	mov    -0x5c(%rbp),%eax
    7abc:	3b 45 ac             	cmp    -0x54(%rbp),%eax
    7abf:	7d 16                	jge    7ad7 <perf_setup_argv_events+0xe5>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:73
				warn("too many entries");
    7ac1:	48 8d 3d 36 2a 00 00 	lea    0x2a36(%rip),%rdi        # a4fe <_ZL12total_events+0x4f2>
    7ac8:	b8 00 00 00 00       	mov    $0x0,%eax
    7acd:	e8 4e aa ff ff       	callq  2520 <warn@plt>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:74
				goto error;
    7ad2:	e9 50 02 00 00       	jmpq   7d27 <perf_setup_argv_events+0x335>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:76
			}
			fd = (perf_event_desc_t *)realloc(fd, new_max * sizeof(*fd));
    7ad7:	8b 45 a4             	mov    -0x5c(%rbp),%eax
    7ada:	48 63 d0             	movslq %eax,%rdx
    7add:	48 89 d0             	mov    %rdx,%rax
    7ae0:	48 c1 e0 04          	shl    $0x4,%rax
    7ae4:	48 29 d0             	sub    %rdx,%rax
    7ae7:	48 c1 e0 04          	shl    $0x4,%rax
    7aeb:	48 89 c2             	mov    %rax,%rdx
    7aee:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    7af2:	48 89 d6             	mov    %rdx,%rsi
    7af5:	48 89 c7             	mov    %rax,%rdi
    7af8:	e8 43 ad ff ff       	callq  2840 <realloc@plt>
    7afd:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:77
			if (!fd) {
    7b01:	48 83 7d b8 00       	cmpq   $0x0,-0x48(%rbp)
    7b06:	75 16                	jne    7b1e <perf_setup_argv_events+0x12c>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:78
				warn("cannot allocate memory");
    7b08:	48 8d 3d 00 2a 00 00 	lea    0x2a00(%rip),%rdi        # a50f <_ZL12total_events+0x503>
    7b0f:	b8 00 00 00 00       	mov    $0x0,%eax
    7b14:	e8 07 aa ff ff       	callq  2520 <warn@plt>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:79
				goto error;
    7b19:	e9 09 02 00 00       	jmpq   7d27 <perf_setup_argv_events+0x335>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:82
			}
			/* reset newly allocated chunk */
			memset(fd + max_fds, 0, (new_max - max_fds) * sizeof(*fd));
    7b1e:	8b 45 a4             	mov    -0x5c(%rbp),%eax
    7b21:	2b 45 ac             	sub    -0x54(%rbp),%eax
    7b24:	48 63 d0             	movslq %eax,%rdx
    7b27:	48 89 d0             	mov    %rdx,%rax
    7b2a:	48 c1 e0 04          	shl    $0x4,%rax
    7b2e:	48 29 d0             	sub    %rdx,%rax
    7b31:	48 c1 e0 04          	shl    $0x4,%rax
    7b35:	48 89 c1             	mov    %rax,%rcx
    7b38:	8b 45 ac             	mov    -0x54(%rbp),%eax
    7b3b:	48 63 d0             	movslq %eax,%rdx
    7b3e:	48 89 d0             	mov    %rdx,%rax
    7b41:	48 c1 e0 04          	shl    $0x4,%rax
    7b45:	48 29 d0             	sub    %rdx,%rax
    7b48:	48 c1 e0 04          	shl    $0x4,%rax
    7b4c:	48 89 c2             	mov    %rax,%rdx
    7b4f:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    7b53:	48 01 d0             	add    %rdx,%rax
    7b56:	48 89 ca             	mov    %rcx,%rdx
    7b59:	be 00 00 00 00       	mov    $0x0,%esi
    7b5e:	48 89 c7             	mov    %rax,%rdi
    7b61:	e8 3a aa ff ff       	callq  25a0 <memset@plt>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:83
			max_fds = new_max;
    7b66:	8b 45 a4             	mov    -0x5c(%rbp),%eax
    7b69:	89 45 ac             	mov    %eax,-0x54(%rbp)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:86

			/* update max size */
			fd[0].max_fds = max_fds;
    7b6c:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    7b70:	8b 55 ac             	mov    -0x54(%rbp),%edx
    7b73:	89 90 d8 00 00 00    	mov    %edx,0xd8(%rax)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:89
		}
		/* ABI compatibility, set before calling libpfm */
		fd[num].hw.size = sizeof(fd[num].hw);
    7b79:	8b 45 a8             	mov    -0x58(%rbp),%eax
    7b7c:	48 63 d0             	movslq %eax,%rdx
    7b7f:	48 89 d0             	mov    %rdx,%rax
    7b82:	48 c1 e0 04          	shl    $0x4,%rax
    7b86:	48 29 d0             	sub    %rdx,%rax
    7b89:	48 c1 e0 04          	shl    $0x4,%rax
    7b8d:	48 89 c2             	mov    %rax,%rdx
    7b90:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    7b94:	48 01 d0             	add    %rdx,%rax
    7b97:	c7 40 04 80 00 00 00 	movl   $0x80,0x4(%rax)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:91

		memset(&arg, 0, sizeof(arg));
    7b9e:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
    7ba2:	ba 28 00 00 00       	mov    $0x28,%edx
    7ba7:	be 00 00 00 00       	mov    $0x0,%esi
    7bac:	48 89 c7             	mov    %rax,%rdi
    7baf:	e8 ec a9 ff ff       	callq  25a0 <memset@plt>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:92
		arg.attr = &fd[num].hw;
    7bb4:	8b 45 a8             	mov    -0x58(%rbp),%eax
    7bb7:	48 63 d0             	movslq %eax,%rdx
    7bba:	48 89 d0             	mov    %rdx,%rax
    7bbd:	48 c1 e0 04          	shl    $0x4,%rax
    7bc1:	48 29 d0             	sub    %rdx,%rax
    7bc4:	48 c1 e0 04          	shl    $0x4,%rax
    7bc8:	48 89 c2             	mov    %rax,%rdx
    7bcb:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    7bcf:	48 01 d0             	add    %rdx,%rax
    7bd2:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:93
		arg.fstr = &fd[num].fstr; /* fd[].fstr is NULL */
    7bd6:	8b 45 a8             	mov    -0x58(%rbp),%eax
    7bd9:	48 63 d0             	movslq %eax,%rdx
    7bdc:	48 89 d0             	mov    %rdx,%rax
    7bdf:	48 c1 e0 04          	shl    $0x4,%rax
    7be3:	48 29 d0             	sub    %rdx,%rax
    7be6:	48 c1 e0 04          	shl    $0x4,%rax
    7bea:	48 89 c2             	mov    %rax,%rdx
    7bed:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    7bf1:	48 01 d0             	add    %rdx,%rax
    7bf4:	48 05 e8 00 00 00    	add    $0xe8,%rax
    7bfa:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:95

		ret = pfm_get_os_event_encoding(*argv, PFM_PLM0|PFM_PLM3, PFM_OS_PERF_EVENT_EXT, &arg);
    7bfe:	48 8b 45 98          	mov    -0x68(%rbp),%rax
    7c02:	48 8b 00             	mov    (%rax),%rax
    7c05:	48 8d 55 c0          	lea    -0x40(%rbp),%rdx
    7c09:	48 89 d1             	mov    %rdx,%rcx
    7c0c:	ba 02 00 00 00       	mov    $0x2,%edx
    7c11:	be 09 00 00 00       	mov    $0x9,%esi
    7c16:	48 89 c7             	mov    %rax,%rdi
    7c19:	e8 62 ab ff ff       	callq  2780 <pfm_get_os_event_encoding@plt>
    7c1e:	89 45 b4             	mov    %eax,-0x4c(%rbp)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:96
		if (ret != PFM_SUCCESS) {
    7c21:	83 7d b4 00          	cmpl   $0x0,-0x4c(%rbp)
    7c25:	74 2d                	je     7c54 <perf_setup_argv_events+0x262>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:97
			warnx("event %s: %s", *argv, pfm_strerror(ret));
    7c27:	8b 45 b4             	mov    -0x4c(%rbp),%eax
    7c2a:	89 c7                	mov    %eax,%edi
    7c2c:	e8 cf ab ff ff       	callq  2800 <pfm_strerror@plt>
    7c31:	48 89 c2             	mov    %rax,%rdx
    7c34:	48 8b 45 98          	mov    -0x68(%rbp),%rax
    7c38:	48 8b 00             	mov    (%rax),%rax
    7c3b:	48 89 c6             	mov    %rax,%rsi
    7c3e:	48 8d 3d e1 28 00 00 	lea    0x28e1(%rip),%rdi        # a526 <_ZL12total_events+0x51a>
    7c45:	b8 00 00 00 00       	mov    $0x0,%eax
    7c4a:	e8 71 aa ff ff       	callq  26c0 <warnx@plt>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:98
			goto error;
    7c4f:	e9 d3 00 00 00       	jmpq   7d27 <perf_setup_argv_events+0x335>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:101
		}

		fd[num].name = strdup(*argv);
    7c54:	48 8b 45 98          	mov    -0x68(%rbp),%rax
    7c58:	48 8b 08             	mov    (%rax),%rcx
    7c5b:	8b 45 a8             	mov    -0x58(%rbp),%eax
    7c5e:	48 63 d0             	movslq %eax,%rdx
    7c61:	48 89 d0             	mov    %rdx,%rax
    7c64:	48 c1 e0 04          	shl    $0x4,%rax
    7c68:	48 29 d0             	sub    %rdx,%rax
    7c6b:	48 c1 e0 04          	shl    $0x4,%rax
    7c6f:	48 89 c2             	mov    %rax,%rdx
    7c72:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    7c76:	48 8d 1c 02          	lea    (%rdx,%rax,1),%rbx
    7c7a:	48 89 cf             	mov    %rcx,%rdi
    7c7d:	e8 0e ac ff ff       	callq  2890 <strdup@plt>
    7c82:	48 89 83 b0 00 00 00 	mov    %rax,0xb0(%rbx)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:102
		fd[num].group_leader = group_leader;
    7c89:	8b 45 a8             	mov    -0x58(%rbp),%eax
    7c8c:	48 63 d0             	movslq %eax,%rdx
    7c8f:	48 89 d0             	mov    %rdx,%rax
    7c92:	48 c1 e0 04          	shl    $0x4,%rax
    7c96:	48 29 d0             	sub    %rdx,%rax
    7c99:	48 c1 e0 04          	shl    $0x4,%rax
    7c9d:	48 89 c2             	mov    %rax,%rdx
    7ca0:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    7ca4:	48 01 c2             	add    %rax,%rdx
    7ca7:	8b 45 b0             	mov    -0x50(%rbp),%eax
    7caa:	89 82 d0 00 00 00    	mov    %eax,0xd0(%rdx)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:103
		fd[num].idx = arg.idx;
    7cb0:	8b 45 a8             	mov    -0x58(%rbp),%eax
    7cb3:	48 63 d0             	movslq %eax,%rdx
    7cb6:	48 89 d0             	mov    %rdx,%rax
    7cb9:	48 c1 e0 04          	shl    $0x4,%rax
    7cbd:	48 29 d0             	sub    %rdx,%rax
    7cc0:	48 c1 e0 04          	shl    $0x4,%rax
    7cc4:	48 89 c2             	mov    %rax,%rdx
    7cc7:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    7ccb:	48 01 c2             	add    %rax,%rdx
    7cce:	8b 45 d8             	mov    -0x28(%rbp),%eax
    7cd1:	89 82 dc 00 00 00    	mov    %eax,0xdc(%rdx)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:104
		fd[num].cpu = arg.cpu;
    7cd7:	8b 45 a8             	mov    -0x58(%rbp),%eax
    7cda:	48 63 d0             	movslq %eax,%rdx
    7cdd:	48 89 d0             	mov    %rdx,%rax
    7ce0:	48 c1 e0 04          	shl    $0x4,%rax
    7ce4:	48 29 d0             	sub    %rdx,%rax
    7ce7:	48 c1 e0 04          	shl    $0x4,%rax
    7ceb:	48 89 c2             	mov    %rax,%rdx
    7cee:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    7cf2:	48 01 c2             	add    %rax,%rdx
    7cf5:	8b 45 dc             	mov    -0x24(%rbp),%eax
    7cf8:	89 82 e0 00 00 00    	mov    %eax,0xe0(%rdx)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:106

		num++;
    7cfe:	83 45 a8 01          	addl   $0x1,-0x58(%rbp)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:107
		argv++;
    7d02:	48 83 45 98 08       	addq   $0x8,-0x68(%rbp)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:65
	while(*argv) {
    7d07:	e9 7a fd ff ff       	jmpq   7a86 <perf_setup_argv_events+0x94>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:109
	}
	*num_fds = num;
    7d0c:	48 8b 45 88          	mov    -0x78(%rbp),%rax
    7d10:	8b 55 a8             	mov    -0x58(%rbp),%edx
    7d13:	89 10                	mov    %edx,(%rax)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:110
	*fds = fd;
    7d15:	48 8b 45 90          	mov    -0x70(%rbp),%rax
    7d19:	48 8b 55 b8          	mov    -0x48(%rbp),%rdx
    7d1d:	48 89 10             	mov    %rdx,(%rax)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:111
	return 0;
    7d20:	b8 00 00 00 00       	mov    $0x0,%eax
    7d25:	eb 16                	jmp    7d3d <perf_setup_argv_events+0x34b>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:113
error:
	perf_free_fds(fd, num);
    7d27:	8b 55 a8             	mov    -0x58(%rbp),%edx
    7d2a:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    7d2e:	89 d6                	mov    %edx,%esi
    7d30:	48 89 c7             	mov    %rax,%rdi
    7d33:	e8 cd 01 00 00       	callq  7f05 <perf_free_fds>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:114
	return -1;
    7d38:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:115 (discriminator 1)
}
    7d3d:	48 8b 5d e8          	mov    -0x18(%rbp),%rbx
    7d41:	64 48 33 1c 25 28 00 	xor    %fs:0x28,%rbx
    7d48:	00 00 
    7d4a:	74 05                	je     7d51 <perf_setup_argv_events+0x35f>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:115
    7d4c:	e8 8f a9 ff ff       	callq  26e0 <__stack_chk_fail@plt>
    7d51:	48 83 c4 78          	add    $0x78,%rsp
    7d55:	5b                   	pop    %rbx
    7d56:	5d                   	pop    %rbp
    7d57:	c3                   	retq   

0000000000007d58 <perf_setup_list_events>:
perf_setup_list_events():
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:119

int
perf_setup_list_events(const char *ev, perf_event_desc_t **fd, int *num_fds)
{
    7d58:	f3 0f 1e fa          	endbr64 
    7d5c:	55                   	push   %rbp
    7d5d:	48 89 e5             	mov    %rsp,%rbp
    7d60:	48 83 ec 50          	sub    $0x50,%rsp
    7d64:	48 89 7d c8          	mov    %rdi,-0x38(%rbp)
    7d68:	48 89 75 c0          	mov    %rsi,-0x40(%rbp)
    7d6c:	48 89 55 b8          	mov    %rdx,-0x48(%rbp)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:122
	const char **argv;
	char *p, *q, *events;
	int i, ret, num = 0;
    7d70:	c7 45 d8 00 00 00 00 	movl   $0x0,-0x28(%rbp)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:124

	if (!(ev && fd && num_fds))
    7d77:	48 83 7d c8 00       	cmpq   $0x0,-0x38(%rbp)
    7d7c:	74 0e                	je     7d8c <perf_setup_list_events+0x34>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:124 (discriminator 1)
    7d7e:	48 83 7d c0 00       	cmpq   $0x0,-0x40(%rbp)
    7d83:	74 07                	je     7d8c <perf_setup_list_events+0x34>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:124 (discriminator 2)
    7d85:	48 83 7d b8 00       	cmpq   $0x0,-0x48(%rbp)
    7d8a:	75 0a                	jne    7d96 <perf_setup_list_events+0x3e>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:125
		return -1;
    7d8c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    7d91:	e9 6d 01 00 00       	jmpq   7f03 <perf_setup_list_events+0x1ab>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:127

	events = strdup(ev);
    7d96:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    7d9a:	48 89 c7             	mov    %rax,%rdi
    7d9d:	e8 ee aa ff ff       	callq  2890 <strdup@plt>
    7da2:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:128
	if (!events)
    7da6:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
    7dab:	75 0a                	jne    7db7 <perf_setup_list_events+0x5f>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:129
		return -1;
    7dad:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    7db2:	e9 4c 01 00 00       	jmpq   7f03 <perf_setup_list_events+0x1ab>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:131

	q = events;
    7db7:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    7dbb:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:132
	while((p = strchr(q, ','))) {
    7dbf:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    7dc3:	be 2c 00 00 00       	mov    $0x2c,%esi
    7dc8:	48 89 c7             	mov    %rax,%rdi
    7dcb:	e8 80 a7 ff ff       	callq  2550 <strchr@plt>
    7dd0:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    7dd4:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
    7dd9:	0f 95 c0             	setne  %al
    7ddc:	84 c0                	test   %al,%al
    7dde:	74 12                	je     7df2 <perf_setup_list_events+0x9a>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:133
		num++;
    7de0:	83 45 d8 01          	addl   $0x1,-0x28(%rbp)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:134
		q = p + 1;
    7de4:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    7de8:	48 83 c0 01          	add    $0x1,%rax
    7dec:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:132
	while((p = strchr(q, ','))) {
    7df0:	eb cd                	jmp    7dbf <perf_setup_list_events+0x67>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:136
	}
	num++;
    7df2:	83 45 d8 01          	addl   $0x1,-0x28(%rbp)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:137
	num++; /* terminator */
    7df6:	83 45 d8 01          	addl   $0x1,-0x28(%rbp)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:139

	argv = (const char **)malloc(num * sizeof(char *));
    7dfa:	8b 45 d8             	mov    -0x28(%rbp),%eax
    7dfd:	48 98                	cltq   
    7dff:	48 c1 e0 03          	shl    $0x3,%rax
    7e03:	48 89 c7             	mov    %rax,%rdi
    7e06:	e8 35 a9 ff ff       	callq  2740 <malloc@plt>
    7e0b:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:140
	if (!argv) {
    7e0f:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
    7e14:	75 16                	jne    7e2c <perf_setup_list_events+0xd4>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:141
		free(events);
    7e16:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    7e1a:	48 89 c7             	mov    %rax,%rdi
    7e1d:	e8 ce a8 ff ff       	callq  26f0 <free@plt>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:142
		return -1;
    7e22:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    7e27:	e9 d7 00 00 00       	jmpq   7f03 <perf_setup_list_events+0x1ab>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:145
	}

	i = 0; q = events;
    7e2c:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%rbp)
    7e33:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    7e37:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:146
	while((p = strchr(q, ','))) {
    7e3b:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    7e3f:	be 2c 00 00 00       	mov    $0x2c,%esi
    7e44:	48 89 c7             	mov    %rax,%rdi
    7e47:	e8 04 a7 ff ff       	callq  2550 <strchr@plt>
    7e4c:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    7e50:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
    7e55:	0f 95 c0             	setne  %al
    7e58:	84 c0                	test   %al,%al
    7e5a:	74 36                	je     7e92 <perf_setup_list_events+0x13a>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:147
		*p = '\0';
    7e5c:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    7e60:	c6 00 00             	movb   $0x0,(%rax)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:148
		argv[i++] = q;
    7e63:	8b 45 d4             	mov    -0x2c(%rbp),%eax
    7e66:	8d 50 01             	lea    0x1(%rax),%edx
    7e69:	89 55 d4             	mov    %edx,-0x2c(%rbp)
    7e6c:	48 98                	cltq   
    7e6e:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
    7e75:	00 
    7e76:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    7e7a:	48 01 c2             	add    %rax,%rdx
    7e7d:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    7e81:	48 89 02             	mov    %rax,(%rdx)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:149
		q = p + 1;
    7e84:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    7e88:	48 83 c0 01          	add    $0x1,%rax
    7e8c:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:146
	while((p = strchr(q, ','))) {
    7e90:	eb a9                	jmp    7e3b <perf_setup_list_events+0xe3>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:151
	}
	argv[i++] = q;
    7e92:	8b 45 d4             	mov    -0x2c(%rbp),%eax
    7e95:	8d 50 01             	lea    0x1(%rax),%edx
    7e98:	89 55 d4             	mov    %edx,-0x2c(%rbp)
    7e9b:	48 98                	cltq   
    7e9d:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
    7ea4:	00 
    7ea5:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    7ea9:	48 01 c2             	add    %rax,%rdx
    7eac:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    7eb0:	48 89 02             	mov    %rax,(%rdx)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:152
	argv[i] = NULL;
    7eb3:	8b 45 d4             	mov    -0x2c(%rbp),%eax
    7eb6:	48 98                	cltq   
    7eb8:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
    7ebf:	00 
    7ec0:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    7ec4:	48 01 d0             	add    %rdx,%rax
    7ec7:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:154

	ret = perf_setup_argv_events(argv, fd, num_fds);
    7ece:	48 8b 55 b8          	mov    -0x48(%rbp),%rdx
    7ed2:	48 8b 4d c0          	mov    -0x40(%rbp),%rcx
    7ed6:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    7eda:	48 89 ce             	mov    %rcx,%rsi
    7edd:	48 89 c7             	mov    %rax,%rdi
    7ee0:	e8 0d fb ff ff       	callq  79f2 <perf_setup_argv_events>
    7ee5:	89 45 dc             	mov    %eax,-0x24(%rbp)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:155
	free(argv);
    7ee8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    7eec:	48 89 c7             	mov    %rax,%rdi
    7eef:	e8 fc a7 ff ff       	callq  26f0 <free@plt>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:156
	free(events); /* strdup in perf_setup_argv_events() */
    7ef4:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    7ef8:	48 89 c7             	mov    %rax,%rdi
    7efb:	e8 f0 a7 ff ff       	callq  26f0 <free@plt>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:157
	return ret;
    7f00:	8b 45 dc             	mov    -0x24(%rbp),%eax
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:158
}
    7f03:	c9                   	leaveq 
    7f04:	c3                   	retq   

0000000000007f05 <perf_free_fds>:
perf_free_fds():
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:162

void
perf_free_fds(perf_event_desc_t *fds, int num_fds)
{
    7f05:	f3 0f 1e fa          	endbr64 
    7f09:	55                   	push   %rbp
    7f0a:	48 89 e5             	mov    %rsp,%rbp
    7f0d:	48 83 ec 20          	sub    $0x20,%rsp
    7f11:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    7f15:	89 75 e4             	mov    %esi,-0x1c(%rbp)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:165
	int i;

	for (i = 0 ; i < num_fds; i++) {
    7f18:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:165 (discriminator 3)
    7f1f:	8b 45 fc             	mov    -0x4(%rbp),%eax
    7f22:	3b 45 e4             	cmp    -0x1c(%rbp),%eax
    7f25:	7d 60                	jge    7f87 <perf_free_fds+0x82>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:166 (discriminator 2)
		free(fds[i].name);
    7f27:	8b 45 fc             	mov    -0x4(%rbp),%eax
    7f2a:	48 63 d0             	movslq %eax,%rdx
    7f2d:	48 89 d0             	mov    %rdx,%rax
    7f30:	48 c1 e0 04          	shl    $0x4,%rax
    7f34:	48 29 d0             	sub    %rdx,%rax
    7f37:	48 c1 e0 04          	shl    $0x4,%rax
    7f3b:	48 89 c2             	mov    %rax,%rdx
    7f3e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    7f42:	48 01 d0             	add    %rdx,%rax
    7f45:	48 8b 80 b0 00 00 00 	mov    0xb0(%rax),%rax
    7f4c:	48 89 c7             	mov    %rax,%rdi
    7f4f:	e8 9c a7 ff ff       	callq  26f0 <free@plt>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:167 (discriminator 2)
		free(fds[i].fstr);
    7f54:	8b 45 fc             	mov    -0x4(%rbp),%eax
    7f57:	48 63 d0             	movslq %eax,%rdx
    7f5a:	48 89 d0             	mov    %rdx,%rax
    7f5d:	48 c1 e0 04          	shl    $0x4,%rax
    7f61:	48 29 d0             	sub    %rdx,%rax
    7f64:	48 c1 e0 04          	shl    $0x4,%rax
    7f68:	48 89 c2             	mov    %rax,%rdx
    7f6b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    7f6f:	48 01 d0             	add    %rdx,%rax
    7f72:	48 8b 80 e8 00 00 00 	mov    0xe8(%rax),%rax
    7f79:	48 89 c7             	mov    %rax,%rdi
    7f7c:	e8 6f a7 ff ff       	callq  26f0 <free@plt>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:165 (discriminator 2)
	for (i = 0 ; i < num_fds; i++) {
    7f81:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
    7f85:	eb 98                	jmp    7f1f <perf_free_fds+0x1a>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:169
	}
	free(fds);
    7f87:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    7f8b:	48 89 c7             	mov    %rax,%rdi
    7f8e:	e8 5d a7 ff ff       	callq  26f0 <free@plt>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:170
}
    7f93:	90                   	nop
    7f94:	c9                   	leaveq 
    7f95:	c3                   	retq   

0000000000007f96 <perf_get_group_nevents>:
perf_get_group_nevents():
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:174

int
perf_get_group_nevents(perf_event_desc_t *fds, int num, int idx)
{
    7f96:	f3 0f 1e fa          	endbr64 
    7f9a:	55                   	push   %rbp
    7f9b:	48 89 e5             	mov    %rsp,%rbp
    7f9e:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    7fa2:	89 75 e4             	mov    %esi,-0x1c(%rbp)
    7fa5:	89 55 e0             	mov    %edx,-0x20(%rbp)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:178
	int leader;
	int i;

	if (idx < 0 || idx >= num)
    7fa8:	83 7d e0 00          	cmpl   $0x0,-0x20(%rbp)
    7fac:	78 08                	js     7fb6 <perf_get_group_nevents+0x20>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:178 (discriminator 1)
    7fae:	8b 45 e0             	mov    -0x20(%rbp),%eax
    7fb1:	3b 45 e4             	cmp    -0x1c(%rbp),%eax
    7fb4:	7c 07                	jl     7fbd <perf_get_group_nevents+0x27>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:179
		return 0;
    7fb6:	b8 00 00 00 00       	mov    $0x0,%eax
    7fbb:	eb 75                	jmp    8032 <perf_get_group_nevents+0x9c>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:181

	leader = fds[idx].group_leader;
    7fbd:	8b 45 e0             	mov    -0x20(%rbp),%eax
    7fc0:	48 63 d0             	movslq %eax,%rdx
    7fc3:	48 89 d0             	mov    %rdx,%rax
    7fc6:	48 c1 e0 04          	shl    $0x4,%rax
    7fca:	48 29 d0             	sub    %rdx,%rax
    7fcd:	48 c1 e0 04          	shl    $0x4,%rax
    7fd1:	48 89 c2             	mov    %rax,%rdx
    7fd4:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    7fd8:	48 01 d0             	add    %rdx,%rax
    7fdb:	8b 80 d0 00 00 00    	mov    0xd0(%rax),%eax
    7fe1:	89 45 fc             	mov    %eax,-0x4(%rbp)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:183

	for (i = leader + 1; i < num; i++) {
    7fe4:	8b 45 fc             	mov    -0x4(%rbp),%eax
    7fe7:	83 c0 01             	add    $0x1,%eax
    7fea:	89 45 f8             	mov    %eax,-0x8(%rbp)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:183 (discriminator 1)
    7fed:	8b 45 f8             	mov    -0x8(%rbp),%eax
    7ff0:	3b 45 e4             	cmp    -0x1c(%rbp),%eax
    7ff3:	7d 37                	jge    802c <perf_get_group_nevents+0x96>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:184
		if (fds[i].group_leader != leader) {
    7ff5:	8b 45 f8             	mov    -0x8(%rbp),%eax
    7ff8:	48 63 d0             	movslq %eax,%rdx
    7ffb:	48 89 d0             	mov    %rdx,%rax
    7ffe:	48 c1 e0 04          	shl    $0x4,%rax
    8002:	48 29 d0             	sub    %rdx,%rax
    8005:	48 c1 e0 04          	shl    $0x4,%rax
    8009:	48 89 c2             	mov    %rax,%rdx
    800c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    8010:	48 01 d0             	add    %rdx,%rax
    8013:	8b 80 d0 00 00 00    	mov    0xd0(%rax),%eax
    8019:	39 45 fc             	cmp    %eax,-0x4(%rbp)
    801c:	74 08                	je     8026 <perf_get_group_nevents+0x90>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:189
			/* This is a new group leader, so the previous
			 * event was the final event of the preceding
			 * group.
			 */
			return i - leader;
    801e:	8b 45 f8             	mov    -0x8(%rbp),%eax
    8021:	2b 45 fc             	sub    -0x4(%rbp),%eax
    8024:	eb 0c                	jmp    8032 <perf_get_group_nevents+0x9c>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:183 (discriminator 2)
	for (i = leader + 1; i < num; i++) {
    8026:	83 45 f8 01          	addl   $0x1,-0x8(%rbp)
    802a:	eb c1                	jmp    7fed <perf_get_group_nevents+0x57>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:192
		}
	}
	return i - leader;
    802c:	8b 45 f8             	mov    -0x8(%rbp),%eax
    802f:	2b 45 fc             	sub    -0x4(%rbp),%eax
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:193
}
    8032:	5d                   	pop    %rbp
    8033:	c3                   	retq   

0000000000008034 <perf_read_buffer>:
perf_read_buffer():
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:197

int
perf_read_buffer(perf_event_desc_t *hw, void *buf, size_t sz)
{
    8034:	f3 0f 1e fa          	endbr64 
    8038:	55                   	push   %rbp
    8039:	48 89 e5             	mov    %rsp,%rbp
    803c:	48 83 ec 60          	sub    $0x60,%rsp
    8040:	48 89 7d b8          	mov    %rdi,-0x48(%rbp)
    8044:	48 89 75 b0          	mov    %rsi,-0x50(%rbp)
    8048:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:198
	struct perf_event_mmap_page *hdr = (struct perf_event_mmap_page *)hw->buf;
    804c:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    8050:	48 8b 80 c0 00 00 00 	mov    0xc0(%rax),%rax
    8057:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:199
	size_t pgmsk = hw->pgmsk;
    805b:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    805f:	48 8b 80 c8 00 00 00 	mov    0xc8(%rax),%rax
    8066:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:207
	size_t avail_sz, m, c;
	
	/*
	 * data points to beginning of buffer payload
	 */
	data = (void*)(((uintptr_t)hdr)+sysconf(_SC_PAGESIZE));
    806a:	bf 1e 00 00 00       	mov    $0x1e,%edi
    806f:	e8 6c a5 ff ff       	callq  25e0 <sysconf@plt>
    8074:	48 89 c2             	mov    %rax,%rdx
    8077:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    807b:	48 01 d0             	add    %rdx,%rax
    807e:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:212

	/*
	 * position of tail within the buffer payload
	 */
	tail = hdr->data_tail & pgmsk;
    8082:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    8086:	48 8b 80 08 04 00 00 	mov    0x408(%rax),%rax
    808d:	48 23 45 d0          	and    -0x30(%rbp),%rax
    8091:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:219
	/*
	 * size of what is available
	 *
	 * data_head, data_tail never wrap around
	 */
	avail_sz = hdr->data_head - hdr->data_tail;
    8095:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    8099:	48 8b 90 00 04 00 00 	mov    0x400(%rax),%rdx
    80a0:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    80a4:	48 8b 80 08 04 00 00 	mov    0x408(%rax),%rax
    80ab:	48 29 c2             	sub    %rax,%rdx
    80ae:	48 89 d0             	mov    %rdx,%rax
    80b1:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:220
	if (sz > avail_sz)
    80b5:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
    80b9:	48 3b 45 e8          	cmp    -0x18(%rbp),%rax
    80bd:	76 0a                	jbe    80c9 <perf_read_buffer+0x95>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:221
		return -1;
    80bf:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    80c4:	e9 9d 00 00 00       	jmpq   8166 <perf_read_buffer+0x132>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:233
	 * c = size till end of buffer
	 *
	 * buffer payload size is necessarily
	 * a power of two, so we can do:
	 */
	c = pgmsk + 1 -  tail;
    80c9:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    80cd:	48 2b 45 e0          	sub    -0x20(%rbp),%rax
    80d1:	48 83 c0 01          	add    $0x1,%rax
    80d5:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:238

	/*
	 * min with requested size
	 */
	m = c < sz ? c : sz;
    80d9:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    80dd:	48 3b 45 a8          	cmp    -0x58(%rbp),%rax
    80e1:	73 06                	jae    80e9 <perf_read_buffer+0xb5>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:238 (discriminator 1)
    80e3:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    80e7:	eb 04                	jmp    80ed <perf_read_buffer+0xb9>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:238 (discriminator 2)
    80e9:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:238 (discriminator 4)
    80ed:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:241 (discriminator 4)

	/* copy beginning */
	memcpy(buf, (void*)(((uintptr_t)data)+tail), m);
    80f1:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    80f5:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    80f9:	48 01 d0             	add    %rdx,%rax
    80fc:	48 89 c1             	mov    %rax,%rcx
    80ff:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    8103:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    8107:	48 89 ce             	mov    %rcx,%rsi
    810a:	48 89 c7             	mov    %rax,%rdi
    810d:	e8 ee a4 ff ff       	callq  2600 <memcpy@plt>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:246 (discriminator 4)

	/*
	 * copy wrapped around leftover
	 */
	if (sz > m)
    8112:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
    8116:	48 3b 45 f8          	cmp    -0x8(%rbp),%rax
    811a:	76 28                	jbe    8144 <perf_read_buffer+0x110>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:247
		memcpy((void*)(((uintptr_t)buf)+m), data, sz - m);
    811c:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
    8120:	48 2b 45 f8          	sub    -0x8(%rbp),%rax
    8124:	48 89 c2             	mov    %rax,%rdx
    8127:	48 8b 4d b0          	mov    -0x50(%rbp),%rcx
    812b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    812f:	48 01 c8             	add    %rcx,%rax
    8132:	48 89 c1             	mov    %rax,%rcx
    8135:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    8139:	48 89 c6             	mov    %rax,%rsi
    813c:	48 89 cf             	mov    %rcx,%rdi
    813f:	e8 bc a4 ff ff       	callq  2600 <memcpy@plt>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:250

	//printf("\nhead=%lx tail=%lx new_tail=%lx sz=%zu\n", hdr->data_head, hdr->data_tail, hdr->data_tail+sz, sz);
	hdr->data_tail += sz;
    8144:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    8148:	48 8b 90 08 04 00 00 	mov    0x408(%rax),%rdx
    814f:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
    8153:	48 01 c2             	add    %rax,%rdx
    8156:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    815a:	48 89 90 08 04 00 00 	mov    %rdx,0x408(%rax)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:252

	return 0;
    8161:	b8 00 00 00 00       	mov    $0x0,%eax
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:253
}
    8166:	c9                   	leaveq 
    8167:	c3                   	retq   

0000000000008168 <perf_skip_buffer>:
perf_skip_buffer():
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:257

void
perf_skip_buffer(perf_event_desc_t *hw, size_t sz)
{
    8168:	f3 0f 1e fa          	endbr64 
    816c:	55                   	push   %rbp
    816d:	48 89 e5             	mov    %rsp,%rbp
    8170:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    8174:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:258
	struct perf_event_mmap_page *hdr = (struct perf_event_mmap_page*)hw->buf;
    8178:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    817c:	48 8b 80 c0 00 00 00 	mov    0xc0(%rax),%rax
    8183:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:260

	if ((hdr->data_tail + sz) > hdr->data_head)
    8187:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    818b:	48 8b 90 08 04 00 00 	mov    0x408(%rax),%rdx
    8192:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    8196:	48 01 c2             	add    %rax,%rdx
    8199:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    819d:	48 8b 80 00 04 00 00 	mov    0x400(%rax),%rax
    81a4:	48 39 c2             	cmp    %rax,%rdx
    81a7:	76 20                	jbe    81c9 <perf_skip_buffer+0x61>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:261
		sz = hdr->data_head - hdr->data_tail;
    81a9:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    81ad:	48 8b 90 00 04 00 00 	mov    0x400(%rax),%rdx
    81b4:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    81b8:	48 8b 80 08 04 00 00 	mov    0x408(%rax),%rax
    81bf:	48 29 c2             	sub    %rax,%rdx
    81c2:	48 89 d0             	mov    %rdx,%rax
    81c5:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:263

	hdr->data_tail += sz;
    81c9:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    81cd:	48 8b 90 08 04 00 00 	mov    0x408(%rax),%rdx
    81d4:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    81d8:	48 01 c2             	add    %rax,%rdx
    81db:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    81df:	48 89 90 08 04 00 00 	mov    %rdx,0x408(%rax)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:264
}
    81e6:	90                   	nop
    81e7:	5d                   	pop    %rbp
    81e8:	c3                   	retq   

00000000000081e9 <__perf_handle_raw>:
__perf_handle_raw():
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:268

static size_t
__perf_handle_raw(perf_event_desc_t *hw)
{
    81e9:	f3 0f 1e fa          	endbr64 
    81ed:	55                   	push   %rbp
    81ee:	48 89 e5             	mov    %rsp,%rbp
    81f1:	48 83 ec 40          	sub    $0x40,%rsp
    81f5:	48 89 7d c8          	mov    %rdi,-0x38(%rbp)
    81f9:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    8200:	00 00 
    8202:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    8206:	31 c0                	xor    %eax,%eax
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:269
	size_t sz = 0;
    8208:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
    820f:	00 
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:274
	uint32_t raw_sz, i;
	char *buf;
	int ret;

	ret = perf_read_buffer_32(hw, &raw_sz);
    8210:	48 8d 55 dc          	lea    -0x24(%rbp),%rdx
    8214:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    8218:	48 89 d6             	mov    %rdx,%rsi
    821b:	48 89 c7             	mov    %rax,%rdi
    821e:	e8 b9 f5 ff ff       	callq  77dc <perf_read_buffer_32>
    8223:	89 45 e4             	mov    %eax,-0x1c(%rbp)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:275
	if (ret) {
    8226:	83 7d e4 00          	cmpl   $0x0,-0x1c(%rbp)
    822a:	74 1d                	je     8249 <__perf_handle_raw+0x60>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:276
		warnx("cannot read raw size");
    822c:	48 8d 3d 00 23 00 00 	lea    0x2300(%rip),%rdi        # a533 <_ZL12total_events+0x527>
    8233:	b8 00 00 00 00       	mov    $0x0,%eax
    8238:	e8 83 a4 ff ff       	callq  26c0 <warnx@plt>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:277
		return (size_t)-1;
    823d:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    8244:	e9 2d 01 00 00       	jmpq   8376 <__perf_handle_raw+0x18d>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:280
	}

	sz += sizeof(raw_sz);
    8249:	48 83 45 e8 04       	addq   $0x4,-0x18(%rbp)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:282

	printf("\n\tRAWSZ:%u\n", raw_sz);
    824e:	8b 45 dc             	mov    -0x24(%rbp),%eax
    8251:	89 c6                	mov    %eax,%esi
    8253:	48 8d 3d ee 22 00 00 	lea    0x22ee(%rip),%rdi        # a548 <_ZL12total_events+0x53c>
    825a:	b8 00 00 00 00       	mov    $0x0,%eax
    825f:	e8 4c a2 ff ff       	callq  24b0 <printf@plt>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:284

	buf = (char*)malloc(raw_sz);
    8264:	8b 45 dc             	mov    -0x24(%rbp),%eax
    8267:	89 c0                	mov    %eax,%eax
    8269:	48 89 c7             	mov    %rax,%rdi
    826c:	e8 cf a4 ff ff       	callq  2740 <malloc@plt>
    8271:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:285
	if (!buf) {
    8275:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
    827a:	75 1d                	jne    8299 <__perf_handle_raw+0xb0>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:286
		warn("cannot allocate raw buffer");
    827c:	48 8d 3d d1 22 00 00 	lea    0x22d1(%rip),%rdi        # a554 <_ZL12total_events+0x548>
    8283:	b8 00 00 00 00       	mov    $0x0,%eax
    8288:	e8 93 a2 ff ff       	callq  2520 <warn@plt>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:287
		return (size_t)-1;
    828d:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    8294:	e9 dd 00 00 00       	jmpq   8376 <__perf_handle_raw+0x18d>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:291
	}


	ret = perf_read_buffer(hw, buf, raw_sz);
    8299:	8b 45 dc             	mov    -0x24(%rbp),%eax
    829c:	89 c2                	mov    %eax,%edx
    829e:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
    82a2:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    82a6:	48 89 ce             	mov    %rcx,%rsi
    82a9:	48 89 c7             	mov    %rax,%rdi
    82ac:	e8 83 fd ff ff       	callq  8034 <perf_read_buffer>
    82b1:	89 45 e4             	mov    %eax,-0x1c(%rbp)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:292
	if (ret) {
    82b4:	83 7d e4 00          	cmpl   $0x0,-0x1c(%rbp)
    82b8:	74 29                	je     82e3 <__perf_handle_raw+0xfa>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:293
		warnx("cannot read raw data");
    82ba:	48 8d 3d ae 22 00 00 	lea    0x22ae(%rip),%rdi        # a56f <_ZL12total_events+0x563>
    82c1:	b8 00 00 00 00       	mov    $0x0,%eax
    82c6:	e8 f5 a3 ff ff       	callq  26c0 <warnx@plt>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:294
		free(buf);
    82cb:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    82cf:	48 89 c7             	mov    %rax,%rdi
    82d2:	e8 19 a4 ff ff       	callq  26f0 <free@plt>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:295
		return (size_t)-1;
    82d7:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    82de:	e9 93 00 00 00       	jmpq   8376 <__perf_handle_raw+0x18d>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:298
	}

	if (raw_sz)
    82e3:	8b 45 dc             	mov    -0x24(%rbp),%eax
    82e6:	85 c0                	test   %eax,%eax
    82e8:	74 0a                	je     82f4 <__perf_handle_raw+0x10b>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:299
		putchar('\t');
    82ea:	bf 09 00 00 00       	mov    $0x9,%edi
    82ef:	e8 9c a4 ff ff       	callq  2790 <putchar@plt>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:301

	for(i=0; i < raw_sz; i++) {
    82f4:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%rbp)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:301 (discriminator 1)
    82fb:	8b 45 dc             	mov    -0x24(%rbp),%eax
    82fe:	39 45 e0             	cmp    %eax,-0x20(%rbp)
    8301:	73 4a                	jae    834d <__perf_handle_raw+0x164>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:302
		printf("0x%02x ", buf[i] & 0xff );
    8303:	8b 55 e0             	mov    -0x20(%rbp),%edx
    8306:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    830a:	48 01 d0             	add    %rdx,%rax
    830d:	0f b6 00             	movzbl (%rax),%eax
    8310:	0f be c0             	movsbl %al,%eax
    8313:	0f b6 c0             	movzbl %al,%eax
    8316:	89 c6                	mov    %eax,%esi
    8318:	48 8d 3d 65 22 00 00 	lea    0x2265(%rip),%rdi        # a584 <_ZL12total_events+0x578>
    831f:	b8 00 00 00 00       	mov    $0x0,%eax
    8324:	e8 87 a1 ff ff       	callq  24b0 <printf@plt>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:303
		if (((i+1) % 16)  == 0)
    8329:	8b 45 e0             	mov    -0x20(%rbp),%eax
    832c:	83 c0 01             	add    $0x1,%eax
    832f:	83 e0 0f             	and    $0xf,%eax
    8332:	85 c0                	test   %eax,%eax
    8334:	75 11                	jne    8347 <__perf_handle_raw+0x15e>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:304
			printf("\n\t");
    8336:	48 8d 3d 4f 22 00 00 	lea    0x224f(%rip),%rdi        # a58c <_ZL12total_events+0x580>
    833d:	b8 00 00 00 00       	mov    $0x0,%eax
    8342:	e8 69 a1 ff ff       	callq  24b0 <printf@plt>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:301 (discriminator 2)
	for(i=0; i < raw_sz; i++) {
    8347:	83 45 e0 01          	addl   $0x1,-0x20(%rbp)
    834b:	eb ae                	jmp    82fb <__perf_handle_raw+0x112>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:306
	}
	if (raw_sz)
    834d:	8b 45 dc             	mov    -0x24(%rbp),%eax
    8350:	85 c0                	test   %eax,%eax
    8352:	74 0a                	je     835e <__perf_handle_raw+0x175>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:307
		putchar('\n');
    8354:	bf 0a 00 00 00       	mov    $0xa,%edi
    8359:	e8 32 a4 ff ff       	callq  2790 <putchar@plt>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:309

	free(buf);
    835e:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    8362:	48 89 c7             	mov    %rax,%rdi
    8365:	e8 86 a3 ff ff       	callq  26f0 <free@plt>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:311

	return sz + raw_sz;
    836a:	8b 45 dc             	mov    -0x24(%rbp),%eax
    836d:	89 c2                	mov    %eax,%edx
    836f:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    8373:	48 01 d0             	add    %rdx,%rax
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:312 (discriminator 1)
}
    8376:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
    837a:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
    8381:	00 00 
    8383:	74 05                	je     838a <__perf_handle_raw+0x1a1>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:312
    8385:	e8 56 a3 ff ff       	callq  26e0 <__stack_chk_fail@plt>
    838a:	c9                   	leaveq 
    838b:	c3                   	retq   

000000000000838c <perf_display_branch_stack>:
perf_display_branch_stack():
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:316

static int
perf_display_branch_stack(perf_event_desc_t *desc, FILE *fp)
{
    838c:	f3 0f 1e fa          	endbr64 
    8390:	55                   	push   %rbp
    8391:	48 89 e5             	mov    %rsp,%rbp
    8394:	48 83 ec 50          	sub    $0x50,%rsp
    8398:	48 89 7d b8          	mov    %rdi,-0x48(%rbp)
    839c:	48 89 75 b0          	mov    %rsi,-0x50(%rbp)
    83a0:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    83a7:	00 00 
    83a9:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    83ad:	31 c0                	xor    %eax,%eax
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:321
	struct perf_branch_entry b;
	uint64_t nr, n;
	int ret;

	ret = perf_read_buffer(desc, &n, sizeof(n));
    83af:	48 8d 4d d0          	lea    -0x30(%rbp),%rcx
    83b3:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    83b7:	ba 08 00 00 00       	mov    $0x8,%edx
    83bc:	48 89 ce             	mov    %rcx,%rsi
    83bf:	48 89 c7             	mov    %rax,%rdi
    83c2:	e8 6d fc ff ff       	callq  8034 <perf_read_buffer>
    83c7:	89 45 cc             	mov    %eax,-0x34(%rbp)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:322
	if (ret)
    83ca:	83 7d cc 00          	cmpl   $0x0,-0x34(%rbp)
    83ce:	74 16                	je     83e6 <perf_display_branch_stack+0x5a>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:323
		errx(1, "cannot read branch stack nr");
    83d0:	48 8d 35 b8 21 00 00 	lea    0x21b8(%rip),%rsi        # a58f <_ZL12total_events+0x583>
    83d7:	bf 01 00 00 00       	mov    $0x1,%edi
    83dc:	b8 00 00 00 00       	mov    $0x0,%eax
    83e1:	e8 ca a4 ff ff       	callq  28b0 <errx@plt>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:325

	fprintf(fp, "\n\tBRANCH_STACK:%"   PRIu64   "\n", n);
    83e6:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
    83ea:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    83ee:	48 8d 35 b6 21 00 00 	lea    0x21b6(%rip),%rsi        # a5ab <_ZL12total_events+0x59f>
    83f5:	48 89 c7             	mov    %rax,%rdi
    83f8:	b8 00 00 00 00       	mov    $0x0,%eax
    83fd:	e8 ae a3 ff ff       	callq  27b0 <fprintf@plt>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:326
	nr = n;
    8402:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    8406:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:330
	/*
	 * from most recent to least recent take branch
	 */
	while (nr--) {
    840a:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    840e:	48 8d 50 ff          	lea    -0x1(%rax),%rdx
    8412:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
    8416:	48 85 c0             	test   %rax,%rax
    8419:	0f 95 c0             	setne  %al
    841c:	84 c0                	test   %al,%al
    841e:	0f 84 1c 01 00 00    	je     8540 <perf_display_branch_stack+0x1b4>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:331
		ret = perf_read_buffer(desc, &b, sizeof(b));
    8424:	48 8d 4d e0          	lea    -0x20(%rbp),%rcx
    8428:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    842c:	ba 18 00 00 00       	mov    $0x18,%edx
    8431:	48 89 ce             	mov    %rcx,%rsi
    8434:	48 89 c7             	mov    %rax,%rdi
    8437:	e8 f8 fb ff ff       	callq  8034 <perf_read_buffer>
    843c:	89 45 cc             	mov    %eax,-0x34(%rbp)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:332
		if (ret)
    843f:	83 7d cc 00          	cmpl   $0x0,-0x34(%rbp)
    8443:	74 16                	je     845b <perf_display_branch_stack+0xcf>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:333
			errx(1, "cannot read branch stack entry");
    8445:	48 8d 35 74 21 00 00 	lea    0x2174(%rip),%rsi        # a5c0 <_ZL12total_events+0x5b4>
    844c:	bf 01 00 00 00       	mov    $0x1,%edi
    8451:	b8 00 00 00 00       	mov    $0x0,%eax
    8456:	e8 55 a4 ff ff       	callq  28b0 <errx@plt>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:343
			!(b.mispred || b.predicted) ? '-': (b.mispred ? 'Y' :'N'),
			!(b.mispred || b.predicted) ? '-': (b.predicted? 'Y' :'N'),
			(b.in_tx? 'Y' :'N'),
			(b.abort? 'Y' :'N'),
			b.type,
			b.cycles);
    845b:	8b 45 f0             	mov    -0x10(%rbp),%eax
    845e:	c1 e8 04             	shr    $0x4,%eax
    8461:	80 e4 ff             	and    $0xff,%ah
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:335
		fprintf(fp, "\tFROM:0x%016" PRIx64 " TO:0x%016" PRIx64 " MISPRED:%c PRED:%c IN_TX:%c ABORT:%c CYCLES:%lu type:%lu\n",
    8464:	0f b7 f8             	movzwl %ax,%edi
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:342
			b.type,
    8467:	0f b6 45 f2          	movzbl -0xe(%rbp),%eax
    846b:	c0 e8 04             	shr    $0x4,%al
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:335
		fprintf(fp, "\tFROM:0x%016" PRIx64 " TO:0x%016" PRIx64 " MISPRED:%c PRED:%c IN_TX:%c ABORT:%c CYCLES:%lu type:%lu\n",
    846e:	0f b6 f0             	movzbl %al,%esi
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:341
			(b.abort? 'Y' :'N'),
    8471:	0f b6 45 f0          	movzbl -0x10(%rbp),%eax
    8475:	83 e0 08             	and    $0x8,%eax
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:335
		fprintf(fp, "\tFROM:0x%016" PRIx64 " TO:0x%016" PRIx64 " MISPRED:%c PRED:%c IN_TX:%c ABORT:%c CYCLES:%lu type:%lu\n",
    8478:	84 c0                	test   %al,%al
    847a:	74 08                	je     8484 <perf_display_branch_stack+0xf8>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:335 (discriminator 1)
    847c:	41 bb 59 00 00 00    	mov    $0x59,%r11d
    8482:	eb 06                	jmp    848a <perf_display_branch_stack+0xfe>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:335 (discriminator 2)
    8484:	41 bb 4e 00 00 00    	mov    $0x4e,%r11d
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:340 (discriminator 4)
			(b.in_tx? 'Y' :'N'),
    848a:	0f b6 45 f0          	movzbl -0x10(%rbp),%eax
    848e:	83 e0 04             	and    $0x4,%eax
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:335 (discriminator 4)
		fprintf(fp, "\tFROM:0x%016" PRIx64 " TO:0x%016" PRIx64 " MISPRED:%c PRED:%c IN_TX:%c ABORT:%c CYCLES:%lu type:%lu\n",
    8491:	84 c0                	test   %al,%al
    8493:	74 08                	je     849d <perf_display_branch_stack+0x111>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:335 (discriminator 5)
    8495:	41 ba 59 00 00 00    	mov    $0x59,%r10d
    849b:	eb 06                	jmp    84a3 <perf_display_branch_stack+0x117>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:335 (discriminator 6)
    849d:	41 ba 4e 00 00 00    	mov    $0x4e,%r10d
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:339 (discriminator 8)
			!(b.mispred || b.predicted) ? '-': (b.predicted? 'Y' :'N'),
    84a3:	0f b6 45 f0          	movzbl -0x10(%rbp),%eax
    84a7:	83 e0 01             	and    $0x1,%eax
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:335 (discriminator 8)
		fprintf(fp, "\tFROM:0x%016" PRIx64 " TO:0x%016" PRIx64 " MISPRED:%c PRED:%c IN_TX:%c ABORT:%c CYCLES:%lu type:%lu\n",
    84aa:	84 c0                	test   %al,%al
    84ac:	75 0b                	jne    84b9 <perf_display_branch_stack+0x12d>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:339
			!(b.mispred || b.predicted) ? '-': (b.predicted? 'Y' :'N'),
    84ae:	0f b6 45 f0          	movzbl -0x10(%rbp),%eax
    84b2:	83 e0 02             	and    $0x2,%eax
    84b5:	84 c0                	test   %al,%al
    84b7:	74 1b                	je     84d4 <perf_display_branch_stack+0x148>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:339 (discriminator 1)
    84b9:	0f b6 45 f0          	movzbl -0x10(%rbp),%eax
    84bd:	83 e0 02             	and    $0x2,%eax
    84c0:	84 c0                	test   %al,%al
    84c2:	74 08                	je     84cc <perf_display_branch_stack+0x140>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:339 (discriminator 2)
    84c4:	41 b9 59 00 00 00    	mov    $0x59,%r9d
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:335 (discriminator 2)
		fprintf(fp, "\tFROM:0x%016" PRIx64 " TO:0x%016" PRIx64 " MISPRED:%c PRED:%c IN_TX:%c ABORT:%c CYCLES:%lu type:%lu\n",
    84ca:	eb 0e                	jmp    84da <perf_display_branch_stack+0x14e>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:339 (discriminator 3)
			!(b.mispred || b.predicted) ? '-': (b.predicted? 'Y' :'N'),
    84cc:	41 b9 4e 00 00 00    	mov    $0x4e,%r9d
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:335 (discriminator 3)
		fprintf(fp, "\tFROM:0x%016" PRIx64 " TO:0x%016" PRIx64 " MISPRED:%c PRED:%c IN_TX:%c ABORT:%c CYCLES:%lu type:%lu\n",
    84d2:	eb 06                	jmp    84da <perf_display_branch_stack+0x14e>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:335 (discriminator 10)
    84d4:	41 b9 2d 00 00 00    	mov    $0x2d,%r9d
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:338 (discriminator 9)
			!(b.mispred || b.predicted) ? '-': (b.mispred ? 'Y' :'N'),
    84da:	0f b6 45 f0          	movzbl -0x10(%rbp),%eax
    84de:	83 e0 01             	and    $0x1,%eax
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:335 (discriminator 9)
		fprintf(fp, "\tFROM:0x%016" PRIx64 " TO:0x%016" PRIx64 " MISPRED:%c PRED:%c IN_TX:%c ABORT:%c CYCLES:%lu type:%lu\n",
    84e1:	84 c0                	test   %al,%al
    84e3:	75 0b                	jne    84f0 <perf_display_branch_stack+0x164>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:338
			!(b.mispred || b.predicted) ? '-': (b.mispred ? 'Y' :'N'),
    84e5:	0f b6 45 f0          	movzbl -0x10(%rbp),%eax
    84e9:	83 e0 02             	and    $0x2,%eax
    84ec:	84 c0                	test   %al,%al
    84ee:	74 1b                	je     850b <perf_display_branch_stack+0x17f>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:338 (discriminator 1)
    84f0:	0f b6 45 f0          	movzbl -0x10(%rbp),%eax
    84f4:	83 e0 01             	and    $0x1,%eax
    84f7:	84 c0                	test   %al,%al
    84f9:	74 08                	je     8503 <perf_display_branch_stack+0x177>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:338 (discriminator 2)
    84fb:	41 b8 59 00 00 00    	mov    $0x59,%r8d
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:335 (discriminator 2)
		fprintf(fp, "\tFROM:0x%016" PRIx64 " TO:0x%016" PRIx64 " MISPRED:%c PRED:%c IN_TX:%c ABORT:%c CYCLES:%lu type:%lu\n",
    8501:	eb 0e                	jmp    8511 <perf_display_branch_stack+0x185>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:338 (discriminator 3)
			!(b.mispred || b.predicted) ? '-': (b.mispred ? 'Y' :'N'),
    8503:	41 b8 4e 00 00 00    	mov    $0x4e,%r8d
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:335 (discriminator 3)
		fprintf(fp, "\tFROM:0x%016" PRIx64 " TO:0x%016" PRIx64 " MISPRED:%c PRED:%c IN_TX:%c ABORT:%c CYCLES:%lu type:%lu\n",
    8509:	eb 06                	jmp    8511 <perf_display_branch_stack+0x185>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:335 (discriminator 12)
    850b:	41 b8 2d 00 00 00    	mov    $0x2d,%r8d
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:335 (discriminator 11)
    8511:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    8515:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    8519:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    851d:	57                   	push   %rdi
    851e:	56                   	push   %rsi
    851f:	41 53                	push   %r11
    8521:	41 52                	push   %r10
    8523:	48 8d 35 b6 20 00 00 	lea    0x20b6(%rip),%rsi        # a5e0 <_ZL12total_events+0x5d4>
    852a:	48 89 c7             	mov    %rax,%rdi
    852d:	b8 00 00 00 00       	mov    $0x0,%eax
    8532:	e8 79 a2 ff ff       	callq  27b0 <fprintf@plt>
    8537:	48 83 c4 20          	add    $0x20,%rsp
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:330 (discriminator 11)
	while (nr--) {
    853b:	e9 ca fe ff ff       	jmpq   840a <perf_display_branch_stack+0x7e>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:345
	}
	return (int)(n * sizeof(b) + sizeof(n));
    8540:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    8544:	89 c2                	mov    %eax,%edx
    8546:	89 d0                	mov    %edx,%eax
    8548:	01 c0                	add    %eax,%eax
    854a:	01 d0                	add    %edx,%eax
    854c:	c1 e0 03             	shl    $0x3,%eax
    854f:	83 c0 08             	add    $0x8,%eax
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:346
}
    8552:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
    8556:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
    855d:	00 00 
    855f:	74 05                	je     8566 <perf_display_branch_stack+0x1da>
    8561:	e8 7a a1 ff ff       	callq  26e0 <__stack_chk_fail@plt>
    8566:	c9                   	leaveq 
    8567:	c3                   	retq   

0000000000008568 <perf_display_regs_user>:
perf_display_regs_user():
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:350

static int
perf_display_regs_user(perf_event_desc_t *hw, FILE *fp)
{
    8568:	f3 0f 1e fa          	endbr64 
    856c:	55                   	push   %rbp
    856d:	48 89 e5             	mov    %rsp,%rbp
    8570:	48 83 ec 10          	sub    $0x10,%rsp
    8574:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    8578:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:351
	errx(1, "display regs_user not implemented yet\n");
    857c:	48 8d 35 b5 20 00 00 	lea    0x20b5(%rip),%rsi        # a638 <_ZL12total_events+0x62c>
    8583:	bf 01 00 00 00       	mov    $0x1,%edi
    8588:	b8 00 00 00 00       	mov    $0x0,%eax
    858d:	e8 1e a3 ff ff       	callq  28b0 <errx@plt>

0000000000008592 <perf_display_regs_intr>:
perf_display_regs_intr():
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:357
	return 0;
}

static int
perf_display_regs_intr(perf_event_desc_t *hw, FILE *fp)
{
    8592:	f3 0f 1e fa          	endbr64 
    8596:	55                   	push   %rbp
    8597:	48 89 e5             	mov    %rsp,%rbp
    859a:	48 83 ec 10          	sub    $0x10,%rsp
    859e:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    85a2:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:358
	errx(1, "display regs_intr not implemented yet\n");
    85a6:	48 8d 35 b3 20 00 00 	lea    0x20b3(%rip),%rsi        # a660 <_ZL12total_events+0x654>
    85ad:	bf 01 00 00 00       	mov    $0x1,%edi
    85b2:	b8 00 00 00 00       	mov    $0x0,%eax
    85b7:	e8 f4 a2 ff ff       	callq  28b0 <errx@plt>

00000000000085bc <perf_display_stack_user>:
perf_display_stack_user():
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:364
	return 0;
}

static int
perf_display_stack_user(perf_event_desc_t *hw, FILE *fp)
{
    85bc:	f3 0f 1e fa          	endbr64 
    85c0:	55                   	push   %rbp
    85c1:	48 89 e5             	mov    %rsp,%rbp
    85c4:	48 81 ec 40 02 00 00 	sub    $0x240,%rsp
    85cb:	48 89 bd c8 fd ff ff 	mov    %rdi,-0x238(%rbp)
    85d2:	48 89 b5 c0 fd ff ff 	mov    %rsi,-0x240(%rbp)
    85d9:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    85e0:	00 00 
    85e2:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    85e6:	31 c0                	xor    %eax,%eax
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:370
	uint64_t nr;
	char buf[512];
	size_t sz;
	int ret;

	ret = perf_read_buffer(hw, &nr, sizeof(nr));
    85e8:	48 8d 8d e0 fd ff ff 	lea    -0x220(%rbp),%rcx
    85ef:	48 8b 85 c8 fd ff ff 	mov    -0x238(%rbp),%rax
    85f6:	ba 08 00 00 00       	mov    $0x8,%edx
    85fb:	48 89 ce             	mov    %rcx,%rsi
    85fe:	48 89 c7             	mov    %rax,%rdi
    8601:	e8 2e fa ff ff       	callq  8034 <perf_read_buffer>
    8606:	89 85 dc fd ff ff    	mov    %eax,-0x224(%rbp)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:371
	if (ret)
    860c:	83 bd dc fd ff ff 00 	cmpl   $0x0,-0x224(%rbp)
    8613:	74 16                	je     862b <perf_display_stack_user+0x6f>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:372
		errx(1, "cannot user stack size");
    8615:	48 8d 35 6b 20 00 00 	lea    0x206b(%rip),%rsi        # a687 <_ZL12total_events+0x67b>
    861c:	bf 01 00 00 00       	mov    $0x1,%edi
    8621:	b8 00 00 00 00       	mov    $0x0,%eax
    8626:	e8 85 a2 ff ff       	callq  28b0 <errx@plt>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:374

	fprintf(fp, "USER_STACK: SZ:%"   PRIu64   "\n", nr);
    862b:	48 8b 95 e0 fd ff ff 	mov    -0x220(%rbp),%rdx
    8632:	48 8b 85 c0 fd ff ff 	mov    -0x240(%rbp),%rax
    8639:	48 8d 35 5e 20 00 00 	lea    0x205e(%rip),%rsi        # a69e <_ZL12total_events+0x692>
    8640:	48 89 c7             	mov    %rax,%rdi
    8643:	b8 00 00 00 00       	mov    $0x0,%eax
    8648:	e8 63 a1 ff ff       	callq  27b0 <fprintf@plt>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:377

	/* consume content */
	while (nr) {
    864d:	48 8b 85 e0 fd ff ff 	mov    -0x220(%rbp),%rax
    8654:	48 85 c0             	test   %rax,%rax
    8657:	0f 84 85 00 00 00    	je     86e2 <perf_display_stack_user+0x126>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:378
		sz = nr;
    865d:	48 8b 85 e0 fd ff ff 	mov    -0x220(%rbp),%rax
    8664:	48 89 85 e8 fd ff ff 	mov    %rax,-0x218(%rbp)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:379
		if (sz > sizeof(buf))
    866b:	48 81 bd e8 fd ff ff 	cmpq   $0x200,-0x218(%rbp)
    8672:	00 02 00 00 
    8676:	76 0b                	jbe    8683 <perf_display_stack_user+0xc7>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:380
			sz = sizeof(buf);
    8678:	48 c7 85 e8 fd ff ff 	movq   $0x200,-0x218(%rbp)
    867f:	00 02 00 00 
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:382

		ret = perf_read_buffer(hw, buf, sz);
    8683:	48 8b 95 e8 fd ff ff 	mov    -0x218(%rbp),%rdx
    868a:	48 8d 8d f0 fd ff ff 	lea    -0x210(%rbp),%rcx
    8691:	48 8b 85 c8 fd ff ff 	mov    -0x238(%rbp),%rax
    8698:	48 89 ce             	mov    %rcx,%rsi
    869b:	48 89 c7             	mov    %rax,%rdi
    869e:	e8 91 f9 ff ff       	callq  8034 <perf_read_buffer>
    86a3:	89 85 dc fd ff ff    	mov    %eax,-0x224(%rbp)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:383
		if (ret)
    86a9:	83 bd dc fd ff ff 00 	cmpl   $0x0,-0x224(%rbp)
    86b0:	74 16                	je     86c8 <perf_display_stack_user+0x10c>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:384
			errx(1, "cannot user stack content");
    86b2:	48 8d 35 f9 1f 00 00 	lea    0x1ff9(%rip),%rsi        # a6b2 <_ZL12total_events+0x6a6>
    86b9:	bf 01 00 00 00       	mov    $0x1,%edi
    86be:	b8 00 00 00 00       	mov    $0x0,%eax
    86c3:	e8 e8 a1 ff ff       	callq  28b0 <errx@plt>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:385
		nr -= sz;
    86c8:	48 8b 85 e0 fd ff ff 	mov    -0x220(%rbp),%rax
    86cf:	48 2b 85 e8 fd ff ff 	sub    -0x218(%rbp),%rax
    86d6:	48 89 85 e0 fd ff ff 	mov    %rax,-0x220(%rbp)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:377
	while (nr) {
    86dd:	e9 6b ff ff ff       	jmpq   864d <perf_display_stack_user+0x91>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:388
	}

	return 0;
    86e2:	b8 00 00 00 00       	mov    $0x0,%eax
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:389
}
    86e7:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
    86eb:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
    86f2:	00 00 
    86f4:	74 05                	je     86fb <perf_display_stack_user+0x13f>
    86f6:	e8 e5 9f ff ff       	callq  26e0 <__stack_chk_fail@plt>
    86fb:	c9                   	leaveq 
    86fc:	c3                   	retq   

00000000000086fd <perf_display_sample>:
perf_display_sample():
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:393

int
perf_display_sample(perf_event_desc_t *fds, int num_fds, int idx, struct perf_event_header *ehdr, FILE *fp)
{
    86fd:	f3 0f 1e fa          	endbr64 
    8701:	55                   	push   %rbp
    8702:	48 89 e5             	mov    %rsp,%rbp
    8705:	48 81 ec c0 00 00 00 	sub    $0xc0,%rsp
    870c:	48 89 bd 58 ff ff ff 	mov    %rdi,-0xa8(%rbp)
    8713:	89 b5 54 ff ff ff    	mov    %esi,-0xac(%rbp)
    8719:	89 95 50 ff ff ff    	mov    %edx,-0xb0(%rbp)
    871f:	48 89 8d 48 ff ff ff 	mov    %rcx,-0xb8(%rbp)
    8726:	4c 89 85 40 ff ff ff 	mov    %r8,-0xc0(%rbp)
    872d:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    8734:	00 00 
    8736:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    873a:	31 c0                	xor    %eax,%eax
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:404
	uint64_t type, fmt;
	uint64_t val64;
	const char *str;
	int ret, e;

	if (!fds || !fp || !ehdr  || num_fds < 0 || idx < 0 ||  idx >= num_fds)
    873c:	48 83 bd 58 ff ff ff 	cmpq   $0x0,-0xa8(%rbp)
    8743:	00 
    8744:	74 34                	je     877a <perf_display_sample+0x7d>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:404 (discriminator 1)
    8746:	48 83 bd 40 ff ff ff 	cmpq   $0x0,-0xc0(%rbp)
    874d:	00 
    874e:	74 2a                	je     877a <perf_display_sample+0x7d>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:404 (discriminator 2)
    8750:	48 83 bd 48 ff ff ff 	cmpq   $0x0,-0xb8(%rbp)
    8757:	00 
    8758:	74 20                	je     877a <perf_display_sample+0x7d>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:404 (discriminator 3)
    875a:	83 bd 54 ff ff ff 00 	cmpl   $0x0,-0xac(%rbp)
    8761:	78 17                	js     877a <perf_display_sample+0x7d>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:404 (discriminator 4)
    8763:	83 bd 50 ff ff ff 00 	cmpl   $0x0,-0xb0(%rbp)
    876a:	78 0e                	js     877a <perf_display_sample+0x7d>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:404 (discriminator 5)
    876c:	8b 85 50 ff ff ff    	mov    -0xb0(%rbp),%eax
    8772:	3b 85 54 ff ff ff    	cmp    -0xac(%rbp),%eax
    8778:	7c 0a                	jl     8784 <perf_display_sample+0x87>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:405
		return -1;
    877a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    877f:	e9 d8 0c 00 00       	jmpq   945c <perf_display_sample+0xd5f>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:407

	sz = ehdr->size - sizeof(*ehdr);
    8784:	48 8b 85 48 ff ff ff 	mov    -0xb8(%rbp),%rax
    878b:	0f b7 40 06          	movzwl 0x6(%rax),%eax
    878f:	0f b7 c0             	movzwl %ax,%eax
    8792:	48 83 e8 08          	sub    $0x8,%rax
    8796:	48 89 45 98          	mov    %rax,-0x68(%rbp)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:409

	hw = fds+idx;
    879a:	8b 85 50 ff ff ff    	mov    -0xb0(%rbp),%eax
    87a0:	48 63 d0             	movslq %eax,%rdx
    87a3:	48 89 d0             	mov    %rdx,%rax
    87a6:	48 c1 e0 04          	shl    $0x4,%rax
    87aa:	48 29 d0             	sub    %rdx,%rax
    87ad:	48 c1 e0 04          	shl    $0x4,%rax
    87b1:	48 89 c2             	mov    %rax,%rdx
    87b4:	48 8b 85 58 ff ff ff 	mov    -0xa8(%rbp),%rax
    87bb:	48 01 d0             	add    %rdx,%rax
    87be:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:411

	type = hw->hw.sample_type;
    87c2:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    87c6:	48 8b 40 18          	mov    0x18(%rax),%rax
    87ca:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:412
	fmt  = hw->hw.read_format;
    87ce:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    87d2:	48 8b 40 20          	mov    0x20(%rax),%rax
    87d6:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:414

	if (type & PERF_SAMPLE_IDENTIFIER) {
    87da:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    87de:	25 00 00 01 00       	and    $0x10000,%eax
    87e3:	48 85 c0             	test   %rax,%rax
    87e6:	74 61                	je     8849 <perf_display_sample+0x14c>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:415
		ret = perf_read_buffer_64(hw, &val64);
    87e8:	48 8d 55 80          	lea    -0x80(%rbp),%rdx
    87ec:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    87f0:	48 89 d6             	mov    %rdx,%rsi
    87f3:	48 89 c7             	mov    %rax,%rdi
    87f6:	e8 0b f0 ff ff       	callq  7806 <perf_read_buffer_64>
    87fb:	89 85 68 ff ff ff    	mov    %eax,-0x98(%rbp)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:416
		if (ret) {
    8801:	83 bd 68 ff ff ff 00 	cmpl   $0x0,-0x98(%rbp)
    8808:	74 1b                	je     8825 <perf_display_sample+0x128>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:417
			warnx("cannot read IP");
    880a:	48 8d 3d bb 1e 00 00 	lea    0x1ebb(%rip),%rdi        # a6cc <_ZL12total_events+0x6c0>
    8811:	b8 00 00 00 00       	mov    $0x0,%eax
    8816:	e8 a5 9e ff ff       	callq  26c0 <warnx@plt>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:418
			return -1;
    881b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    8820:	e9 37 0c 00 00       	jmpq   945c <perf_display_sample+0xd5f>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:420
		}
		fprintf(fp, "ID:%"   PRIu64   " ", val64);
    8825:	48 8b 55 80          	mov    -0x80(%rbp),%rdx
    8829:	48 8b 85 40 ff ff ff 	mov    -0xc0(%rbp),%rax
    8830:	48 8d 35 a4 1e 00 00 	lea    0x1ea4(%rip),%rsi        # a6db <_ZL12total_events+0x6cf>
    8837:	48 89 c7             	mov    %rax,%rdi
    883a:	b8 00 00 00 00       	mov    $0x0,%eax
    883f:	e8 6c 9f ff ff       	callq  27b0 <fprintf@plt>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:421
		sz -= sizeof(val64);
    8844:	48 83 6d 98 08       	subq   $0x8,-0x68(%rbp)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:429
	 * the sample_type information is laid down
	 * based on the PERF_RECORD_SAMPLE format specified
	 * in the perf_event.h header file.
	 * That order is different from the enum perf_event_sample_format
	 */
	if (type & PERF_SAMPLE_IP) {
    8849:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    884d:	83 e0 01             	and    $0x1,%eax
    8850:	48 85 c0             	test   %rax,%rax
    8853:	0f 84 a2 00 00 00    	je     88fb <perf_display_sample+0x1fe>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:430
		const char *xtra = " ";
    8859:	48 8d 05 83 1e 00 00 	lea    0x1e83(%rip),%rax        # a6e3 <_ZL12total_events+0x6d7>
    8860:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:431
		ret = perf_read_buffer_64(hw, &val64);
    8864:	48 8d 55 80          	lea    -0x80(%rbp),%rdx
    8868:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    886c:	48 89 d6             	mov    %rdx,%rsi
    886f:	48 89 c7             	mov    %rax,%rdi
    8872:	e8 8f ef ff ff       	callq  7806 <perf_read_buffer_64>
    8877:	89 85 68 ff ff ff    	mov    %eax,-0x98(%rbp)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:432
		if (ret) {
    887d:	83 bd 68 ff ff ff 00 	cmpl   $0x0,-0x98(%rbp)
    8884:	74 1b                	je     88a1 <perf_display_sample+0x1a4>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:433
			warnx("cannot read IP");
    8886:	48 8d 3d 3f 1e 00 00 	lea    0x1e3f(%rip),%rdi        # a6cc <_ZL12total_events+0x6c0>
    888d:	b8 00 00 00 00       	mov    $0x0,%eax
    8892:	e8 29 9e ff ff       	callq  26c0 <warnx@plt>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:434
			return -1;
    8897:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    889c:	e9 bb 0b 00 00       	jmpq   945c <perf_display_sample+0xd5f>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:442
		/*
		 * MISC_EXACT_IP indicates that kernel is returning
		 * th  IIP of an instruction which caused the event, i.e.,
		 * no skid
		 */
		if (hw->hw.precise_ip && (ehdr->misc & PERF_RECORD_MISC_EXACT_IP))
    88a1:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    88a5:	8b 40 28             	mov    0x28(%rax),%eax
    88a8:	25 00 80 01 00       	and    $0x18000,%eax
    88ad:	85 c0                	test   %eax,%eax
    88af:	74 22                	je     88d3 <perf_display_sample+0x1d6>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:442 (discriminator 1)
    88b1:	48 8b 85 48 ff ff ff 	mov    -0xb8(%rbp),%rax
    88b8:	0f b7 40 04          	movzwl 0x4(%rax),%eax
    88bc:	0f b7 c0             	movzwl %ax,%eax
    88bf:	25 00 40 00 00       	and    $0x4000,%eax
    88c4:	85 c0                	test   %eax,%eax
    88c6:	74 0b                	je     88d3 <perf_display_sample+0x1d6>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:443
			xtra = " (exact) ";
    88c8:	48 8d 05 16 1e 00 00 	lea    0x1e16(%rip),%rax        # a6e5 <_ZL12total_events+0x6d9>
    88cf:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:445

		fprintf(fp, "IIP:%#016" PRIx64 "%s", val64, xtra);
    88d3:	48 8b 55 80          	mov    -0x80(%rbp),%rdx
    88d7:	48 8b 4d a8          	mov    -0x58(%rbp),%rcx
    88db:	48 8b 85 40 ff ff ff 	mov    -0xc0(%rbp),%rax
    88e2:	48 8d 35 06 1e 00 00 	lea    0x1e06(%rip),%rsi        # a6ef <_ZL12total_events+0x6e3>
    88e9:	48 89 c7             	mov    %rax,%rdi
    88ec:	b8 00 00 00 00       	mov    $0x0,%eax
    88f1:	e8 ba 9e ff ff       	callq  27b0 <fprintf@plt>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:446
		sz -= sizeof(val64);
    88f6:	48 83 6d 98 08       	subq   $0x8,-0x68(%rbp)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:449
	}

	if (type & PERF_SAMPLE_TID) {
    88fb:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    88ff:	83 e0 02             	and    $0x2,%eax
    8902:	48 85 c0             	test   %rax,%rax
    8905:	74 68                	je     896f <perf_display_sample+0x272>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:450
		ret = perf_read_buffer(hw, &pid, sizeof(pid));
    8907:	48 8d 4d c8          	lea    -0x38(%rbp),%rcx
    890b:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    890f:	ba 08 00 00 00       	mov    $0x8,%edx
    8914:	48 89 ce             	mov    %rcx,%rsi
    8917:	48 89 c7             	mov    %rax,%rdi
    891a:	e8 15 f7 ff ff       	callq  8034 <perf_read_buffer>
    891f:	89 85 68 ff ff ff    	mov    %eax,-0x98(%rbp)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:451
		if (ret) {
    8925:	83 bd 68 ff ff ff 00 	cmpl   $0x0,-0x98(%rbp)
    892c:	74 1b                	je     8949 <perf_display_sample+0x24c>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:452
			warnx( "cannot read PID");
    892e:	48 8d 3d c8 1d 00 00 	lea    0x1dc8(%rip),%rdi        # a6fd <_ZL12total_events+0x6f1>
    8935:	b8 00 00 00 00       	mov    $0x0,%eax
    893a:	e8 81 9d ff ff       	callq  26c0 <warnx@plt>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:453
			return -1;
    893f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    8944:	e9 13 0b 00 00       	jmpq   945c <perf_display_sample+0xd5f>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:456
		}

		fprintf(fp, "PID:%d TID:%d ", pid.pid, pid.tid);
    8949:	8b 4d cc             	mov    -0x34(%rbp),%ecx
    894c:	8b 55 c8             	mov    -0x38(%rbp),%edx
    894f:	48 8b 85 40 ff ff ff 	mov    -0xc0(%rbp),%rax
    8956:	48 8d 35 b0 1d 00 00 	lea    0x1db0(%rip),%rsi        # a70d <_ZL12total_events+0x701>
    895d:	48 89 c7             	mov    %rax,%rdi
    8960:	b8 00 00 00 00       	mov    $0x0,%eax
    8965:	e8 46 9e ff ff       	callq  27b0 <fprintf@plt>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:457
		sz -= sizeof(pid);
    896a:	48 83 6d 98 08       	subq   $0x8,-0x68(%rbp)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:460
	}

	if (type & PERF_SAMPLE_TIME) {
    896f:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    8973:	83 e0 04             	and    $0x4,%eax
    8976:	48 85 c0             	test   %rax,%rax
    8979:	74 61                	je     89dc <perf_display_sample+0x2df>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:461
		ret = perf_read_buffer_64(hw, &val64);
    897b:	48 8d 55 80          	lea    -0x80(%rbp),%rdx
    897f:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    8983:	48 89 d6             	mov    %rdx,%rsi
    8986:	48 89 c7             	mov    %rax,%rdi
    8989:	e8 78 ee ff ff       	callq  7806 <perf_read_buffer_64>
    898e:	89 85 68 ff ff ff    	mov    %eax,-0x98(%rbp)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:462
		if (ret) {
    8994:	83 bd 68 ff ff ff 00 	cmpl   $0x0,-0x98(%rbp)
    899b:	74 1b                	je     89b8 <perf_display_sample+0x2bb>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:463
			warnx( "cannot read time");
    899d:	48 8d 3d 78 1d 00 00 	lea    0x1d78(%rip),%rdi        # a71c <_ZL12total_events+0x710>
    89a4:	b8 00 00 00 00       	mov    $0x0,%eax
    89a9:	e8 12 9d ff ff       	callq  26c0 <warnx@plt>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:464
			return -1;
    89ae:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    89b3:	e9 a4 0a 00 00       	jmpq   945c <perf_display_sample+0xd5f>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:467
		}

		fprintf(fp, "TIME:%'"   PRIu64   " ", val64);
    89b8:	48 8b 55 80          	mov    -0x80(%rbp),%rdx
    89bc:	48 8b 85 40 ff ff ff 	mov    -0xc0(%rbp),%rax
    89c3:	48 8d 35 63 1d 00 00 	lea    0x1d63(%rip),%rsi        # a72d <_ZL12total_events+0x721>
    89ca:	48 89 c7             	mov    %rax,%rdi
    89cd:	b8 00 00 00 00       	mov    $0x0,%eax
    89d2:	e8 d9 9d ff ff       	callq  27b0 <fprintf@plt>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:468
		sz -= sizeof(val64);
    89d7:	48 83 6d 98 08       	subq   $0x8,-0x68(%rbp)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:471
	}

	if (type & PERF_SAMPLE_ADDR) {
    89dc:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    89e0:	83 e0 08             	and    $0x8,%eax
    89e3:	48 85 c0             	test   %rax,%rax
    89e6:	74 61                	je     8a49 <perf_display_sample+0x34c>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:472
		ret = perf_read_buffer_64(hw, &val64);
    89e8:	48 8d 55 80          	lea    -0x80(%rbp),%rdx
    89ec:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    89f0:	48 89 d6             	mov    %rdx,%rsi
    89f3:	48 89 c7             	mov    %rax,%rdi
    89f6:	e8 0b ee ff ff       	callq  7806 <perf_read_buffer_64>
    89fb:	89 85 68 ff ff ff    	mov    %eax,-0x98(%rbp)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:473
		if (ret) {
    8a01:	83 bd 68 ff ff ff 00 	cmpl   $0x0,-0x98(%rbp)
    8a08:	74 1b                	je     8a25 <perf_display_sample+0x328>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:474
			warnx( "cannot read addr");
    8a0a:	48 8d 3d 27 1d 00 00 	lea    0x1d27(%rip),%rdi        # a738 <_ZL12total_events+0x72c>
    8a11:	b8 00 00 00 00       	mov    $0x0,%eax
    8a16:	e8 a5 9c ff ff       	callq  26c0 <warnx@plt>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:475
			return -1;
    8a1b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    8a20:	e9 37 0a 00 00       	jmpq   945c <perf_display_sample+0xd5f>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:478
		}

		fprintf(fp, "ADDR:%#016" PRIx64 " ", val64);
    8a25:	48 8b 55 80          	mov    -0x80(%rbp),%rdx
    8a29:	48 8b 85 40 ff ff ff 	mov    -0xc0(%rbp),%rax
    8a30:	48 8d 35 12 1d 00 00 	lea    0x1d12(%rip),%rsi        # a749 <_ZL12total_events+0x73d>
    8a37:	48 89 c7             	mov    %rax,%rdi
    8a3a:	b8 00 00 00 00       	mov    $0x0,%eax
    8a3f:	e8 6c 9d ff ff       	callq  27b0 <fprintf@plt>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:479
		sz -= sizeof(val64);
    8a44:	48 83 6d 98 08       	subq   $0x8,-0x68(%rbp)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:482
	}

	if (type & PERF_SAMPLE_ID) {
    8a49:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    8a4d:	83 e0 40             	and    $0x40,%eax
    8a50:	48 85 c0             	test   %rax,%rax
    8a53:	74 61                	je     8ab6 <perf_display_sample+0x3b9>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:483
		ret = perf_read_buffer_64(hw, &val64);
    8a55:	48 8d 55 80          	lea    -0x80(%rbp),%rdx
    8a59:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    8a5d:	48 89 d6             	mov    %rdx,%rsi
    8a60:	48 89 c7             	mov    %rax,%rdi
    8a63:	e8 9e ed ff ff       	callq  7806 <perf_read_buffer_64>
    8a68:	89 85 68 ff ff ff    	mov    %eax,-0x98(%rbp)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:484
		if (ret) {
    8a6e:	83 bd 68 ff ff ff 00 	cmpl   $0x0,-0x98(%rbp)
    8a75:	74 1b                	je     8a92 <perf_display_sample+0x395>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:485
			warnx( "cannot read id");
    8a77:	48 8d 3d d9 1c 00 00 	lea    0x1cd9(%rip),%rdi        # a757 <_ZL12total_events+0x74b>
    8a7e:	b8 00 00 00 00       	mov    $0x0,%eax
    8a83:	e8 38 9c ff ff       	callq  26c0 <warnx@plt>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:486
			return -1;
    8a88:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    8a8d:	e9 ca 09 00 00       	jmpq   945c <perf_display_sample+0xd5f>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:489
		}

		fprintf(fp, "ID:%"  PRIu64  " ", val64);
    8a92:	48 8b 55 80          	mov    -0x80(%rbp),%rdx
    8a96:	48 8b 85 40 ff ff ff 	mov    -0xc0(%rbp),%rax
    8a9d:	48 8d 35 37 1c 00 00 	lea    0x1c37(%rip),%rsi        # a6db <_ZL12total_events+0x6cf>
    8aa4:	48 89 c7             	mov    %rax,%rdi
    8aa7:	b8 00 00 00 00       	mov    $0x0,%eax
    8aac:	e8 ff 9c ff ff       	callq  27b0 <fprintf@plt>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:490
		sz -= sizeof(val64);
    8ab1:	48 83 6d 98 08       	subq   $0x8,-0x68(%rbp)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:493
	}

	if (type & PERF_SAMPLE_STREAM_ID) {
    8ab6:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    8aba:	25 00 02 00 00       	and    $0x200,%eax
    8abf:	48 85 c0             	test   %rax,%rax
    8ac2:	74 61                	je     8b25 <perf_display_sample+0x428>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:494
		ret = perf_read_buffer_64(hw, &val64);
    8ac4:	48 8d 55 80          	lea    -0x80(%rbp),%rdx
    8ac8:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    8acc:	48 89 d6             	mov    %rdx,%rsi
    8acf:	48 89 c7             	mov    %rax,%rdi
    8ad2:	e8 2f ed ff ff       	callq  7806 <perf_read_buffer_64>
    8ad7:	89 85 68 ff ff ff    	mov    %eax,-0x98(%rbp)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:495
		if (ret) {
    8add:	83 bd 68 ff ff ff 00 	cmpl   $0x0,-0x98(%rbp)
    8ae4:	74 1b                	je     8b01 <perf_display_sample+0x404>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:496
			warnx( "cannot read stream_id");
    8ae6:	48 8d 3d 79 1c 00 00 	lea    0x1c79(%rip),%rdi        # a766 <_ZL12total_events+0x75a>
    8aed:	b8 00 00 00 00       	mov    $0x0,%eax
    8af2:	e8 c9 9b ff ff       	callq  26c0 <warnx@plt>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:497
			return -1;
    8af7:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    8afc:	e9 5b 09 00 00       	jmpq   945c <perf_display_sample+0xd5f>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:499
		}
		fprintf(fp, "STREAM_ID:%"  PRIu64  " ", val64);
    8b01:	48 8b 55 80          	mov    -0x80(%rbp),%rdx
    8b05:	48 8b 85 40 ff ff ff 	mov    -0xc0(%rbp),%rax
    8b0c:	48 8d 35 69 1c 00 00 	lea    0x1c69(%rip),%rsi        # a77c <_ZL12total_events+0x770>
    8b13:	48 89 c7             	mov    %rax,%rdi
    8b16:	b8 00 00 00 00       	mov    $0x0,%eax
    8b1b:	e8 90 9c ff ff       	callq  27b0 <fprintf@plt>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:500
		sz -= sizeof(val64);
    8b20:	48 83 6d 98 08       	subq   $0x8,-0x68(%rbp)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:503
	}

	if (type & PERF_SAMPLE_CPU) {
    8b25:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    8b29:	25 80 00 00 00       	and    $0x80,%eax
    8b2e:	48 85 c0             	test   %rax,%rax
    8b31:	74 65                	je     8b98 <perf_display_sample+0x49b>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:505
		struct { uint32_t cpu, reserved; } cpu;
		ret = perf_read_buffer(hw, &cpu, sizeof(cpu));
    8b33:	48 8d 4d d0          	lea    -0x30(%rbp),%rcx
    8b37:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    8b3b:	ba 08 00 00 00       	mov    $0x8,%edx
    8b40:	48 89 ce             	mov    %rcx,%rsi
    8b43:	48 89 c7             	mov    %rax,%rdi
    8b46:	e8 e9 f4 ff ff       	callq  8034 <perf_read_buffer>
    8b4b:	89 85 68 ff ff ff    	mov    %eax,-0x98(%rbp)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:506
		if (ret) {
    8b51:	83 bd 68 ff ff ff 00 	cmpl   $0x0,-0x98(%rbp)
    8b58:	74 1b                	je     8b75 <perf_display_sample+0x478>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:507
			warnx( "cannot read cpu");
    8b5a:	48 8d 3d 2a 1c 00 00 	lea    0x1c2a(%rip),%rdi        # a78b <_ZL12total_events+0x77f>
    8b61:	b8 00 00 00 00       	mov    $0x0,%eax
    8b66:	e8 55 9b ff ff       	callq  26c0 <warnx@plt>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:508
			return -1;
    8b6b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    8b70:	e9 e7 08 00 00       	jmpq   945c <perf_display_sample+0xd5f>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:510
		}
		fprintf(fp, "CPU:%u ", cpu.cpu);
    8b75:	8b 55 d0             	mov    -0x30(%rbp),%edx
    8b78:	48 8b 85 40 ff ff ff 	mov    -0xc0(%rbp),%rax
    8b7f:	48 8d 35 15 1c 00 00 	lea    0x1c15(%rip),%rsi        # a79b <_ZL12total_events+0x78f>
    8b86:	48 89 c7             	mov    %rax,%rdi
    8b89:	b8 00 00 00 00       	mov    $0x0,%eax
    8b8e:	e8 1d 9c ff ff       	callq  27b0 <fprintf@plt>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:511
		sz -= sizeof(cpu);
    8b93:	48 83 6d 98 08       	subq   $0x8,-0x68(%rbp)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:514
	}

	if (type & PERF_SAMPLE_PERIOD) {
    8b98:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    8b9c:	25 00 01 00 00       	and    $0x100,%eax
    8ba1:	48 85 c0             	test   %rax,%rax
    8ba4:	74 61                	je     8c07 <perf_display_sample+0x50a>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:515
		ret = perf_read_buffer_64(hw, &val64);
    8ba6:	48 8d 55 80          	lea    -0x80(%rbp),%rdx
    8baa:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    8bae:	48 89 d6             	mov    %rdx,%rsi
    8bb1:	48 89 c7             	mov    %rax,%rdi
    8bb4:	e8 4d ec ff ff       	callq  7806 <perf_read_buffer_64>
    8bb9:	89 85 68 ff ff ff    	mov    %eax,-0x98(%rbp)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:516
		if (ret) {
    8bbf:	83 bd 68 ff ff ff 00 	cmpl   $0x0,-0x98(%rbp)
    8bc6:	74 1b                	je     8be3 <perf_display_sample+0x4e6>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:517
			warnx( "cannot read period");
    8bc8:	48 8d 3d d4 1b 00 00 	lea    0x1bd4(%rip),%rdi        # a7a3 <_ZL12total_events+0x797>
    8bcf:	b8 00 00 00 00       	mov    $0x0,%eax
    8bd4:	e8 e7 9a ff ff       	callq  26c0 <warnx@plt>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:518
			return -1;
    8bd9:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    8bde:	e9 79 08 00 00       	jmpq   945c <perf_display_sample+0xd5f>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:520
		}
		fprintf(fp, "PERIOD:%'"  PRIu64  " ", val64);
    8be3:	48 8b 55 80          	mov    -0x80(%rbp),%rdx
    8be7:	48 8b 85 40 ff ff ff 	mov    -0xc0(%rbp),%rax
    8bee:	48 8d 35 c1 1b 00 00 	lea    0x1bc1(%rip),%rsi        # a7b6 <_ZL12total_events+0x7aa>
    8bf5:	48 89 c7             	mov    %rax,%rdi
    8bf8:	b8 00 00 00 00       	mov    $0x0,%eax
    8bfd:	e8 ae 9b ff ff       	callq  27b0 <fprintf@plt>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:521
		sz -= sizeof(val64);
    8c02:	48 83 6d 98 08       	subq   $0x8,-0x68(%rbp)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:540
	 * 	    { u64	id;           } && PERF_FORMAT_ID
	 * 	  }		cntr[nr];
	 * 	} && PERF_FORMAT_GROUP
	 * };
	 */
	if (type & PERF_SAMPLE_READ) {
    8c07:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    8c0b:	83 e0 10             	and    $0x10,%eax
    8c0e:	48 85 c0             	test   %rax,%rax
    8c11:	0f 84 cb 04 00 00    	je     90e2 <perf_display_sample+0x9e5>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:544
		uint64_t values[3];
		uint64_t nr;

		if (fmt & PERF_FORMAT_GROUP) {
    8c17:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    8c1b:	83 e0 08             	and    $0x8,%eax
    8c1e:	48 85 c0             	test   %rax,%rax
    8c21:	0f 84 c9 02 00 00    	je     8ef0 <perf_display_sample+0x7f3>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:545
			ret = perf_read_buffer_64(hw, &nr);
    8c27:	48 8d 55 90          	lea    -0x70(%rbp),%rdx
    8c2b:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    8c2f:	48 89 d6             	mov    %rdx,%rsi
    8c32:	48 89 c7             	mov    %rax,%rdi
    8c35:	e8 cc eb ff ff       	callq  7806 <perf_read_buffer_64>
    8c3a:	89 85 68 ff ff ff    	mov    %eax,-0x98(%rbp)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:546
			if (ret) {
    8c40:	83 bd 68 ff ff ff 00 	cmpl   $0x0,-0x98(%rbp)
    8c47:	74 1b                	je     8c64 <perf_display_sample+0x567>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:547
				warnx( "cannot read nr");
    8c49:	48 8d 3d 73 1b 00 00 	lea    0x1b73(%rip),%rdi        # a7c3 <_ZL12total_events+0x7b7>
    8c50:	b8 00 00 00 00       	mov    $0x0,%eax
    8c55:	e8 66 9a ff ff       	callq  26c0 <warnx@plt>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:548
				return -1;
    8c5a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    8c5f:	e9 f8 07 00 00       	jmpq   945c <perf_display_sample+0xd5f>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:551
			}

			sz -= sizeof(nr);
    8c64:	48 83 6d 98 08       	subq   $0x8,-0x68(%rbp)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:553

			time_enabled = time_running = 1;
    8c69:	48 c7 85 78 ff ff ff 	movq   $0x1,-0x88(%rbp)
    8c70:	01 00 00 00 
    8c74:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
    8c7b:	48 89 85 70 ff ff ff 	mov    %rax,-0x90(%rbp)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:555

			if (fmt & PERF_FORMAT_TOTAL_TIME_ENABLED) {
    8c82:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    8c86:	83 e0 01             	and    $0x1,%eax
    8c89:	48 85 c0             	test   %rax,%rax
    8c8c:	74 45                	je     8cd3 <perf_display_sample+0x5d6>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:556
				ret = perf_read_buffer_64(hw, &time_enabled);
    8c8e:	48 8d 95 70 ff ff ff 	lea    -0x90(%rbp),%rdx
    8c95:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    8c99:	48 89 d6             	mov    %rdx,%rsi
    8c9c:	48 89 c7             	mov    %rax,%rdi
    8c9f:	e8 62 eb ff ff       	callq  7806 <perf_read_buffer_64>
    8ca4:	89 85 68 ff ff ff    	mov    %eax,-0x98(%rbp)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:557
				if (ret) {
    8caa:	83 bd 68 ff ff ff 00 	cmpl   $0x0,-0x98(%rbp)
    8cb1:	74 1b                	je     8cce <perf_display_sample+0x5d1>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:558
					warnx( "cannot read timing info");
    8cb3:	48 8d 3d 18 1b 00 00 	lea    0x1b18(%rip),%rdi        # a7d2 <_ZL12total_events+0x7c6>
    8cba:	b8 00 00 00 00       	mov    $0x0,%eax
    8cbf:	e8 fc 99 ff ff       	callq  26c0 <warnx@plt>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:559
					return -1;
    8cc4:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    8cc9:	e9 8e 07 00 00       	jmpq   945c <perf_display_sample+0xd5f>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:561
				}
				sz -= sizeof(time_enabled);
    8cce:	48 83 6d 98 08       	subq   $0x8,-0x68(%rbp)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:564
			}

			if (fmt & PERF_FORMAT_TOTAL_TIME_RUNNING) {
    8cd3:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    8cd7:	83 e0 02             	and    $0x2,%eax
    8cda:	48 85 c0             	test   %rax,%rax
    8cdd:	74 45                	je     8d24 <perf_display_sample+0x627>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:565
				ret = perf_read_buffer_64(hw, &time_running);
    8cdf:	48 8d 95 78 ff ff ff 	lea    -0x88(%rbp),%rdx
    8ce6:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    8cea:	48 89 d6             	mov    %rdx,%rsi
    8ced:	48 89 c7             	mov    %rax,%rdi
    8cf0:	e8 11 eb ff ff       	callq  7806 <perf_read_buffer_64>
    8cf5:	89 85 68 ff ff ff    	mov    %eax,-0x98(%rbp)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:566
				if (ret) {
    8cfb:	83 bd 68 ff ff ff 00 	cmpl   $0x0,-0x98(%rbp)
    8d02:	74 1b                	je     8d1f <perf_display_sample+0x622>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:567
					warnx( "cannot read timing info");
    8d04:	48 8d 3d c7 1a 00 00 	lea    0x1ac7(%rip),%rdi        # a7d2 <_ZL12total_events+0x7c6>
    8d0b:	b8 00 00 00 00       	mov    $0x0,%eax
    8d10:	e8 ab 99 ff ff       	callq  26c0 <warnx@plt>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:568
					return -1;
    8d15:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    8d1a:	e9 3d 07 00 00       	jmpq   945c <perf_display_sample+0xd5f>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:570
				}
				sz -= sizeof(time_running);
    8d1f:	48 83 6d 98 08       	subq   $0x8,-0x68(%rbp)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:573
			}

			fprintf(fp, "ENA=%'"  PRIu64  " RUN=%'"  PRIu64  " NR=%"  PRIu64  "\n", time_enabled, time_running, nr);
    8d24:	48 8b 75 90          	mov    -0x70(%rbp),%rsi
    8d28:	48 8b 8d 78 ff ff ff 	mov    -0x88(%rbp),%rcx
    8d2f:	48 8b 95 70 ff ff ff 	mov    -0x90(%rbp),%rdx
    8d36:	48 8b 85 40 ff ff ff 	mov    -0xc0(%rbp),%rax
    8d3d:	49 89 f0             	mov    %rsi,%r8
    8d40:	48 8d 35 a3 1a 00 00 	lea    0x1aa3(%rip),%rsi        # a7ea <_ZL12total_events+0x7de>
    8d47:	48 89 c7             	mov    %rax,%rdi
    8d4a:	b8 00 00 00 00       	mov    $0x0,%eax
    8d4f:	e8 5c 9a ff ff       	callq  27b0 <fprintf@plt>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:575

			values[1] = time_enabled;
    8d54:	48 8b 85 70 ff ff ff 	mov    -0x90(%rbp),%rax
    8d5b:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:576
			values[2] = time_running;
    8d5f:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
    8d66:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:577
			while(nr--) {
    8d6a:	48 8b 45 90          	mov    -0x70(%rbp),%rax
    8d6e:	48 8d 50 ff          	lea    -0x1(%rax),%rdx
    8d72:	48 89 55 90          	mov    %rdx,-0x70(%rbp)
    8d76:	48 85 c0             	test   %rax,%rax
    8d79:	0f 95 c0             	setne  %al
    8d7c:	84 c0                	test   %al,%al
    8d7e:	0f 84 5e 03 00 00    	je     90e2 <perf_display_sample+0x9e5>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:578
				grp.id = ~0ULL;
    8d84:	48 c7 45 d8 ff ff ff 	movq   $0xffffffffffffffff,-0x28(%rbp)
    8d8b:	ff 
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:579
				ret = perf_read_buffer_64(hw, &grp.value);
    8d8c:	48 8d 55 d0          	lea    -0x30(%rbp),%rdx
    8d90:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    8d94:	48 89 d6             	mov    %rdx,%rsi
    8d97:	48 89 c7             	mov    %rax,%rdi
    8d9a:	e8 67 ea ff ff       	callq  7806 <perf_read_buffer_64>
    8d9f:	89 85 68 ff ff ff    	mov    %eax,-0x98(%rbp)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:580
				if (ret) {
    8da5:	83 bd 68 ff ff ff 00 	cmpl   $0x0,-0x98(%rbp)
    8dac:	74 1b                	je     8dc9 <perf_display_sample+0x6cc>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:581
					warnx( "cannot read group value");
    8dae:	48 8d 3d 4f 1a 00 00 	lea    0x1a4f(%rip),%rdi        # a804 <_ZL12total_events+0x7f8>
    8db5:	b8 00 00 00 00       	mov    $0x0,%eax
    8dba:	e8 01 99 ff ff       	callq  26c0 <warnx@plt>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:582
					return -1;
    8dbf:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    8dc4:	e9 93 06 00 00       	jmpq   945c <perf_display_sample+0xd5f>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:584
				}
				sz -= sizeof(grp.value);
    8dc9:	48 83 6d 98 08       	subq   $0x8,-0x68(%rbp)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:586

				if (fmt & PERF_FORMAT_ID) {
    8dce:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    8dd2:	83 e0 04             	and    $0x4,%eax
    8dd5:	48 85 c0             	test   %rax,%rax
    8dd8:	74 46                	je     8e20 <perf_display_sample+0x723>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:587
					ret = perf_read_buffer_64(hw, &grp.id);
    8dda:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
    8dde:	48 8d 50 08          	lea    0x8(%rax),%rdx
    8de2:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    8de6:	48 89 d6             	mov    %rdx,%rsi
    8de9:	48 89 c7             	mov    %rax,%rdi
    8dec:	e8 15 ea ff ff       	callq  7806 <perf_read_buffer_64>
    8df1:	89 85 68 ff ff ff    	mov    %eax,-0x98(%rbp)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:588
					if (ret) {
    8df7:	83 bd 68 ff ff ff 00 	cmpl   $0x0,-0x98(%rbp)
    8dfe:	74 1b                	je     8e1b <perf_display_sample+0x71e>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:589
						warnx( "cannot read leader id");
    8e00:	48 8d 3d 15 1a 00 00 	lea    0x1a15(%rip),%rdi        # a81c <_ZL12total_events+0x810>
    8e07:	b8 00 00 00 00       	mov    $0x0,%eax
    8e0c:	e8 af 98 ff ff       	callq  26c0 <warnx@plt>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:590
						return -1;
    8e11:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    8e16:	e9 41 06 00 00       	jmpq   945c <perf_display_sample+0xd5f>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:592
					}
					sz -= sizeof(grp.id);
    8e1b:	48 83 6d 98 08       	subq   $0x8,-0x68(%rbp)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:595
				}

				e = perf_id2event(fds, num_fds, grp.id);
    8e20:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    8e24:	8b 8d 54 ff ff ff    	mov    -0xac(%rbp),%ecx
    8e2a:	48 8b 85 58 ff ff ff 	mov    -0xa8(%rbp),%rax
    8e31:	89 ce                	mov    %ecx,%esi
    8e33:	48 89 c7             	mov    %rax,%rdi
    8e36:	e8 5c eb ff ff       	callq  7997 <perf_id2event>
    8e3b:	89 85 6c ff ff ff    	mov    %eax,-0x94(%rbp)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:596
				if (e == -1)
    8e41:	83 bd 6c ff ff ff ff 	cmpl   $0xffffffff,-0x94(%rbp)
    8e48:	75 0d                	jne    8e57 <perf_display_sample+0x75a>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:597
					str = "unknown sample event";
    8e4a:	48 8d 05 e1 19 00 00 	lea    0x19e1(%rip),%rax        # a832 <_ZL12total_events+0x826>
    8e51:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
    8e55:	eb 2f                	jmp    8e86 <perf_display_sample+0x789>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:599
				else
					str = fds[e].name;
    8e57:	8b 85 6c ff ff ff    	mov    -0x94(%rbp),%eax
    8e5d:	48 63 d0             	movslq %eax,%rdx
    8e60:	48 89 d0             	mov    %rdx,%rax
    8e63:	48 c1 e0 04          	shl    $0x4,%rax
    8e67:	48 29 d0             	sub    %rdx,%rax
    8e6a:	48 c1 e0 04          	shl    $0x4,%rax
    8e6e:	48 89 c2             	mov    %rax,%rdx
    8e71:	48 8b 85 58 ff ff ff 	mov    -0xa8(%rbp),%rax
    8e78:	48 01 d0             	add    %rdx,%rax
    8e7b:	48 8b 80 b0 00 00 00 	mov    0xb0(%rax),%rax
    8e82:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:601

				values[0] = grp.value;
    8e86:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    8e8a:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:602
				grp.value = perf_scale(values);
    8e8e:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
    8e92:	48 89 c7             	mov    %rax,%rdi
    8e95:	e8 96 e9 ff ff       	callq  7830 <perf_scale>
    8e9a:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:607

				fprintf(fp, "\t%'"  PRIu64  " %s (%"  PRIu64  "%s)\n",
					grp.value, str,
					grp.id,
					time_running != time_enabled ? ", scaled":"");
    8e9e:	48 8b 95 78 ff ff ff 	mov    -0x88(%rbp),%rdx
    8ea5:	48 8b 85 70 ff ff ff 	mov    -0x90(%rbp),%rax
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:604
				fprintf(fp, "\t%'"  PRIu64  " %s (%"  PRIu64  "%s)\n",
    8eac:	48 39 c2             	cmp    %rax,%rdx
    8eaf:	74 09                	je     8eba <perf_display_sample+0x7bd>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:604 (discriminator 1)
    8eb1:	48 8d 05 8f 19 00 00 	lea    0x198f(%rip),%rax        # a847 <_ZL12total_events+0x83b>
    8eb8:	eb 07                	jmp    8ec1 <perf_display_sample+0x7c4>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:604 (discriminator 2)
    8eba:	48 8d 05 8f 19 00 00 	lea    0x198f(%rip),%rax        # a850 <_ZL12total_events+0x844>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:604 (discriminator 4)
    8ec1:	48 8b 75 d8          	mov    -0x28(%rbp),%rsi
    8ec5:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
    8ec9:	48 8b 4d a0          	mov    -0x60(%rbp),%rcx
    8ecd:	48 8b bd 40 ff ff ff 	mov    -0xc0(%rbp),%rdi
    8ed4:	49 89 c1             	mov    %rax,%r9
    8ed7:	49 89 f0             	mov    %rsi,%r8
    8eda:	48 8d 35 70 19 00 00 	lea    0x1970(%rip),%rsi        # a851 <_ZL12total_events+0x845>
    8ee1:	b8 00 00 00 00       	mov    $0x0,%eax
    8ee6:	e8 c5 98 ff ff       	callq  27b0 <fprintf@plt>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:577 (discriminator 4)
			while(nr--) {
    8eeb:	e9 7a fe ff ff       	jmpq   8d6a <perf_display_sample+0x66d>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:611

			}
		} else {
			time_enabled = time_running = 0;
    8ef0:	48 c7 85 78 ff ff ff 	movq   $0x0,-0x88(%rbp)
    8ef7:	00 00 00 00 
    8efb:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
    8f02:	48 89 85 70 ff ff ff 	mov    %rax,-0x90(%rbp)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:615
			/*
			 * this program does not use FORMAT_GROUP when there is only one event
			 */
			ret = perf_read_buffer_64(hw, &val64);
    8f09:	48 8d 55 80          	lea    -0x80(%rbp),%rdx
    8f0d:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    8f11:	48 89 d6             	mov    %rdx,%rsi
    8f14:	48 89 c7             	mov    %rax,%rdi
    8f17:	e8 ea e8 ff ff       	callq  7806 <perf_read_buffer_64>
    8f1c:	89 85 68 ff ff ff    	mov    %eax,-0x98(%rbp)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:616
			if (ret) {
    8f22:	83 bd 68 ff ff ff 00 	cmpl   $0x0,-0x98(%rbp)
    8f29:	74 1b                	je     8f46 <perf_display_sample+0x849>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:617
				warnx( "cannot read value");
    8f2b:	48 8d 3d 31 19 00 00 	lea    0x1931(%rip),%rdi        # a863 <_ZL12total_events+0x857>
    8f32:	b8 00 00 00 00       	mov    $0x0,%eax
    8f37:	e8 84 97 ff ff       	callq  26c0 <warnx@plt>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:618
				return -1;
    8f3c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    8f41:	e9 16 05 00 00       	jmpq   945c <perf_display_sample+0xd5f>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:620
			}
			sz -= sizeof(val64);
    8f46:	48 83 6d 98 08       	subq   $0x8,-0x68(%rbp)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:622

			if (fmt & PERF_FORMAT_TOTAL_TIME_ENABLED) {
    8f4b:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    8f4f:	83 e0 01             	and    $0x1,%eax
    8f52:	48 85 c0             	test   %rax,%rax
    8f55:	74 45                	je     8f9c <perf_display_sample+0x89f>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:623
				ret = perf_read_buffer_64(hw, &time_enabled);
    8f57:	48 8d 95 70 ff ff ff 	lea    -0x90(%rbp),%rdx
    8f5e:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    8f62:	48 89 d6             	mov    %rdx,%rsi
    8f65:	48 89 c7             	mov    %rax,%rdi
    8f68:	e8 99 e8 ff ff       	callq  7806 <perf_read_buffer_64>
    8f6d:	89 85 68 ff ff ff    	mov    %eax,-0x98(%rbp)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:624
				if (ret) {
    8f73:	83 bd 68 ff ff ff 00 	cmpl   $0x0,-0x98(%rbp)
    8f7a:	74 1b                	je     8f97 <perf_display_sample+0x89a>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:625
					warnx( "cannot read timing info");
    8f7c:	48 8d 3d 4f 18 00 00 	lea    0x184f(%rip),%rdi        # a7d2 <_ZL12total_events+0x7c6>
    8f83:	b8 00 00 00 00       	mov    $0x0,%eax
    8f88:	e8 33 97 ff ff       	callq  26c0 <warnx@plt>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:626
					return -1;
    8f8d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    8f92:	e9 c5 04 00 00       	jmpq   945c <perf_display_sample+0xd5f>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:628
				}
				sz -= sizeof(time_enabled);
    8f97:	48 83 6d 98 08       	subq   $0x8,-0x68(%rbp)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:631
			}

			if (fmt & PERF_FORMAT_TOTAL_TIME_RUNNING) {
    8f9c:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    8fa0:	83 e0 02             	and    $0x2,%eax
    8fa3:	48 85 c0             	test   %rax,%rax
    8fa6:	74 45                	je     8fed <perf_display_sample+0x8f0>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:632
				ret = perf_read_buffer_64(hw, &time_running);
    8fa8:	48 8d 95 78 ff ff ff 	lea    -0x88(%rbp),%rdx
    8faf:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    8fb3:	48 89 d6             	mov    %rdx,%rsi
    8fb6:	48 89 c7             	mov    %rax,%rdi
    8fb9:	e8 48 e8 ff ff       	callq  7806 <perf_read_buffer_64>
    8fbe:	89 85 68 ff ff ff    	mov    %eax,-0x98(%rbp)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:633
				if (ret) {
    8fc4:	83 bd 68 ff ff ff 00 	cmpl   $0x0,-0x98(%rbp)
    8fcb:	74 1b                	je     8fe8 <perf_display_sample+0x8eb>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:634
					warnx( "cannot read timing info");
    8fcd:	48 8d 3d fe 17 00 00 	lea    0x17fe(%rip),%rdi        # a7d2 <_ZL12total_events+0x7c6>
    8fd4:	b8 00 00 00 00       	mov    $0x0,%eax
    8fd9:	e8 e2 96 ff ff       	callq  26c0 <warnx@plt>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:635
					return -1;
    8fde:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    8fe3:	e9 74 04 00 00       	jmpq   945c <perf_display_sample+0xd5f>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:637
				}
				sz -= sizeof(time_running);
    8fe8:	48 83 6d 98 08       	subq   $0x8,-0x68(%rbp)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:639
			}
			if (fmt & PERF_FORMAT_ID) {
    8fed:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    8ff1:	83 e0 04             	and    $0x4,%eax
    8ff4:	48 85 c0             	test   %rax,%rax
    8ff7:	74 42                	je     903b <perf_display_sample+0x93e>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:640
				ret = perf_read_buffer_64(hw, &val64);
    8ff9:	48 8d 55 80          	lea    -0x80(%rbp),%rdx
    8ffd:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    9001:	48 89 d6             	mov    %rdx,%rsi
    9004:	48 89 c7             	mov    %rax,%rdi
    9007:	e8 fa e7 ff ff       	callq  7806 <perf_read_buffer_64>
    900c:	89 85 68 ff ff ff    	mov    %eax,-0x98(%rbp)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:641
				if (ret) {
    9012:	83 bd 68 ff ff ff 00 	cmpl   $0x0,-0x98(%rbp)
    9019:	74 1b                	je     9036 <perf_display_sample+0x939>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:642
					warnx( "cannot read leader id");
    901b:	48 8d 3d fa 17 00 00 	lea    0x17fa(%rip),%rdi        # a81c <_ZL12total_events+0x810>
    9022:	b8 00 00 00 00       	mov    $0x0,%eax
    9027:	e8 94 96 ff ff       	callq  26c0 <warnx@plt>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:643
					return -1;
    902c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    9031:	e9 26 04 00 00       	jmpq   945c <perf_display_sample+0xd5f>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:645
				}
				sz -= sizeof(val64);
    9036:	48 83 6d 98 08       	subq   $0x8,-0x68(%rbp)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:648
			}

			fprintf(fp, "ENA=%'"  PRIu64  " RUN=%'"  PRIu64  "\n", time_enabled, time_running);
    903b:	48 8b 8d 78 ff ff ff 	mov    -0x88(%rbp),%rcx
    9042:	48 8b 95 70 ff ff ff 	mov    -0x90(%rbp),%rdx
    9049:	48 8b 85 40 ff ff ff 	mov    -0xc0(%rbp),%rax
    9050:	48 8d 35 1e 18 00 00 	lea    0x181e(%rip),%rsi        # a875 <_ZL12total_events+0x869>
    9057:	48 89 c7             	mov    %rax,%rdi
    905a:	b8 00 00 00 00       	mov    $0x0,%eax
    905f:	e8 4c 97 ff ff       	callq  27b0 <fprintf@plt>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:650

			values[0] = val64;
    9064:	48 8b 45 80          	mov    -0x80(%rbp),%rax
    9068:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:651
			values[1] = time_enabled;
    906c:	48 8b 85 70 ff ff ff 	mov    -0x90(%rbp),%rax
    9073:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:652
			values[2] = time_running;
    9077:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
    907e:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:653
			val64 = perf_scale(values);
    9082:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
    9086:	48 89 c7             	mov    %rax,%rdi
    9089:	e8 a2 e7 ff ff       	callq  7830 <perf_scale>
    908e:	48 89 45 80          	mov    %rax,-0x80(%rbp)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:657

			fprintf(fp, "\t%'"  PRIu64  " %s %s\n",
				val64, fds[0].name,
				time_running != time_enabled ? ", scaled":"");
    9092:	48 8b 95 78 ff ff ff 	mov    -0x88(%rbp),%rdx
    9099:	48 8b 85 70 ff ff ff 	mov    -0x90(%rbp),%rax
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:655
			fprintf(fp, "\t%'"  PRIu64  " %s %s\n",
    90a0:	48 39 c2             	cmp    %rax,%rdx
    90a3:	74 09                	je     90ae <perf_display_sample+0x9b1>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:655 (discriminator 1)
    90a5:	48 8d 05 9b 17 00 00 	lea    0x179b(%rip),%rax        # a847 <_ZL12total_events+0x83b>
    90ac:	eb 07                	jmp    90b5 <perf_display_sample+0x9b8>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:655 (discriminator 2)
    90ae:	48 8d 05 9b 17 00 00 	lea    0x179b(%rip),%rax        # a850 <_ZL12total_events+0x844>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:655 (discriminator 4)
    90b5:	48 8b 95 58 ff ff ff 	mov    -0xa8(%rbp),%rdx
    90bc:	48 8b 8a b0 00 00 00 	mov    0xb0(%rdx),%rcx
    90c3:	48 8b 55 80          	mov    -0x80(%rbp),%rdx
    90c7:	48 8b bd 40 ff ff ff 	mov    -0xc0(%rbp),%rdi
    90ce:	49 89 c0             	mov    %rax,%r8
    90d1:	48 8d 35 b0 17 00 00 	lea    0x17b0(%rip),%rsi        # a888 <_ZL12total_events+0x87c>
    90d8:	b8 00 00 00 00       	mov    $0x0,%eax
    90dd:	e8 ce 96 ff ff       	callq  27b0 <fprintf@plt>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:661
		}
	}

	if (type & PERF_SAMPLE_CALLCHAIN) {
    90e2:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    90e6:	83 e0 20             	and    $0x20,%eax
    90e9:	48 85 c0             	test   %rax,%rax
    90ec:	0f 84 bb 00 00 00    	je     91ad <perf_display_sample+0xab0>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:664
		uint64_t nr, ip;

		ret = perf_read_buffer_64(hw, &nr);
    90f2:	48 8d 55 88          	lea    -0x78(%rbp),%rdx
    90f6:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    90fa:	48 89 d6             	mov    %rdx,%rsi
    90fd:	48 89 c7             	mov    %rax,%rdi
    9100:	e8 01 e7 ff ff       	callq  7806 <perf_read_buffer_64>
    9105:	89 85 68 ff ff ff    	mov    %eax,-0x98(%rbp)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:665
		if (ret) {
    910b:	83 bd 68 ff ff ff 00 	cmpl   $0x0,-0x98(%rbp)
    9112:	74 1b                	je     912f <perf_display_sample+0xa32>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:666
			warnx( "cannot read callchain nr");
    9114:	48 8d 3d 7a 17 00 00 	lea    0x177a(%rip),%rdi        # a895 <_ZL12total_events+0x889>
    911b:	b8 00 00 00 00       	mov    $0x0,%eax
    9120:	e8 9b 95 ff ff       	callq  26c0 <warnx@plt>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:667
			return -1;
    9125:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    912a:	e9 2d 03 00 00       	jmpq   945c <perf_display_sample+0xd5f>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:669
		}
		sz -= sizeof(nr);
    912f:	48 83 6d 98 08       	subq   $0x8,-0x68(%rbp)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:671

		while(nr--) {
    9134:	48 8b 45 88          	mov    -0x78(%rbp),%rax
    9138:	48 8d 50 ff          	lea    -0x1(%rax),%rdx
    913c:	48 89 55 88          	mov    %rdx,-0x78(%rbp)
    9140:	48 85 c0             	test   %rax,%rax
    9143:	0f 95 c0             	setne  %al
    9146:	84 c0                	test   %al,%al
    9148:	74 63                	je     91ad <perf_display_sample+0xab0>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:672
			ret = perf_read_buffer_64(hw, &ip);
    914a:	48 8d 55 90          	lea    -0x70(%rbp),%rdx
    914e:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    9152:	48 89 d6             	mov    %rdx,%rsi
    9155:	48 89 c7             	mov    %rax,%rdi
    9158:	e8 a9 e6 ff ff       	callq  7806 <perf_read_buffer_64>
    915d:	89 85 68 ff ff ff    	mov    %eax,-0x98(%rbp)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:673
			if (ret) {
    9163:	83 bd 68 ff ff ff 00 	cmpl   $0x0,-0x98(%rbp)
    916a:	74 1b                	je     9187 <perf_display_sample+0xa8a>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:674
				warnx( "cannot read ip");
    916c:	48 8d 3d 3b 17 00 00 	lea    0x173b(%rip),%rdi        # a8ae <_ZL12total_events+0x8a2>
    9173:	b8 00 00 00 00       	mov    $0x0,%eax
    9178:	e8 43 95 ff ff       	callq  26c0 <warnx@plt>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:675
				return -1;
    917d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    9182:	e9 d5 02 00 00       	jmpq   945c <perf_display_sample+0xd5f>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:678
			}

			sz -= sizeof(ip);
    9187:	48 83 6d 98 08       	subq   $0x8,-0x68(%rbp)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:680

			fprintf(fp, "\t0x%" PRIx64 "\n", ip);
    918c:	48 8b 55 90          	mov    -0x70(%rbp),%rdx
    9190:	48 8b 85 40 ff ff ff 	mov    -0xc0(%rbp),%rax
    9197:	48 8d 35 1f 17 00 00 	lea    0x171f(%rip),%rsi        # a8bd <_ZL12total_events+0x8b1>
    919e:	48 89 c7             	mov    %rax,%rdi
    91a1:	b8 00 00 00 00       	mov    $0x0,%eax
    91a6:	e8 05 96 ff ff       	callq  27b0 <fprintf@plt>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:671
		while(nr--) {
    91ab:	eb 87                	jmp    9134 <perf_display_sample+0xa37>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:684
		}
	}

	if (type & PERF_SAMPLE_RAW) {
    91ad:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    91b1:	25 00 04 00 00       	and    $0x400,%eax
    91b6:	48 85 c0             	test   %rax,%rax
    91b9:	74 31                	je     91ec <perf_display_sample+0xaef>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:685
		ret = __perf_handle_raw(hw);
    91bb:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    91bf:	48 89 c7             	mov    %rax,%rdi
    91c2:	e8 22 f0 ff ff       	callq  81e9 <__perf_handle_raw>
    91c7:	89 85 68 ff ff ff    	mov    %eax,-0x98(%rbp)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:686
		if (ret == -1)
    91cd:	83 bd 68 ff ff ff ff 	cmpl   $0xffffffff,-0x98(%rbp)
    91d4:	75 0a                	jne    91e0 <perf_display_sample+0xae3>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:687
			return -1;
    91d6:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    91db:	e9 7c 02 00 00       	jmpq   945c <perf_display_sample+0xd5f>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:688
		sz -= ret;
    91e0:	8b 85 68 ff ff ff    	mov    -0x98(%rbp),%eax
    91e6:	48 98                	cltq   
    91e8:	48 29 45 98          	sub    %rax,-0x68(%rbp)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:691
	}

	if (type & PERF_SAMPLE_BRANCH_STACK) {
    91ec:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    91f0:	25 00 08 00 00       	and    $0x800,%eax
    91f5:	48 85 c0             	test   %rax,%rax
    91f8:	74 28                	je     9222 <perf_display_sample+0xb25>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:692
		ret = perf_display_branch_stack(hw, fp);
    91fa:	48 8b 95 40 ff ff ff 	mov    -0xc0(%rbp),%rdx
    9201:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    9205:	48 89 d6             	mov    %rdx,%rsi
    9208:	48 89 c7             	mov    %rax,%rdi
    920b:	e8 7c f1 ff ff       	callq  838c <perf_display_branch_stack>
    9210:	89 85 68 ff ff ff    	mov    %eax,-0x98(%rbp)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:693
		sz -= ret;
    9216:	8b 85 68 ff ff ff    	mov    -0x98(%rbp),%eax
    921c:	48 98                	cltq   
    921e:	48 29 45 98          	sub    %rax,-0x68(%rbp)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:696
	}

	if (type & PERF_SAMPLE_REGS_USER) {
    9222:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    9226:	25 00 10 00 00       	and    $0x1000,%eax
    922b:	48 85 c0             	test   %rax,%rax
    922e:	74 28                	je     9258 <perf_display_sample+0xb5b>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:697
		ret = perf_display_regs_user(hw, fp);
    9230:	48 8b 95 40 ff ff ff 	mov    -0xc0(%rbp),%rdx
    9237:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    923b:	48 89 d6             	mov    %rdx,%rsi
    923e:	48 89 c7             	mov    %rax,%rdi
    9241:	e8 22 f3 ff ff       	callq  8568 <perf_display_regs_user>
    9246:	89 85 68 ff ff ff    	mov    %eax,-0x98(%rbp)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:698
		sz -= ret;
    924c:	8b 85 68 ff ff ff    	mov    -0x98(%rbp),%eax
    9252:	48 98                	cltq   
    9254:	48 29 45 98          	sub    %rax,-0x68(%rbp)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:701
	}

	if (type & PERF_SAMPLE_STACK_USER) {
    9258:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    925c:	25 00 20 00 00       	and    $0x2000,%eax
    9261:	48 85 c0             	test   %rax,%rax
    9264:	74 28                	je     928e <perf_display_sample+0xb91>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:702
		ret = perf_display_stack_user(hw, fp);
    9266:	48 8b 95 40 ff ff ff 	mov    -0xc0(%rbp),%rdx
    926d:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    9271:	48 89 d6             	mov    %rdx,%rsi
    9274:	48 89 c7             	mov    %rax,%rdi
    9277:	e8 40 f3 ff ff       	callq  85bc <perf_display_stack_user>
    927c:	89 85 68 ff ff ff    	mov    %eax,-0x98(%rbp)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:703
		sz -= ret;
    9282:	8b 85 68 ff ff ff    	mov    -0x98(%rbp),%eax
    9288:	48 98                	cltq   
    928a:	48 29 45 98          	sub    %rax,-0x68(%rbp)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:706
	}

	if (type & PERF_SAMPLE_WEIGHT) {
    928e:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    9292:	25 00 40 00 00       	and    $0x4000,%eax
    9297:	48 85 c0             	test   %rax,%rax
    929a:	74 61                	je     92fd <perf_display_sample+0xc00>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:707
		ret = perf_read_buffer_64(hw, &val64);
    929c:	48 8d 55 80          	lea    -0x80(%rbp),%rdx
    92a0:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    92a4:	48 89 d6             	mov    %rdx,%rsi
    92a7:	48 89 c7             	mov    %rax,%rdi
    92aa:	e8 57 e5 ff ff       	callq  7806 <perf_read_buffer_64>
    92af:	89 85 68 ff ff ff    	mov    %eax,-0x98(%rbp)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:708
		if (ret) {
    92b5:	83 bd 68 ff ff ff 00 	cmpl   $0x0,-0x98(%rbp)
    92bc:	74 1b                	je     92d9 <perf_display_sample+0xbdc>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:709
			warnx( "cannot read weight");
    92be:	48 8d 3d 00 16 00 00 	lea    0x1600(%rip),%rdi        # a8c5 <_ZL12total_events+0x8b9>
    92c5:	b8 00 00 00 00       	mov    $0x0,%eax
    92ca:	e8 f1 93 ff ff       	callq  26c0 <warnx@plt>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:710
			return -1;
    92cf:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    92d4:	e9 83 01 00 00       	jmpq   945c <perf_display_sample+0xd5f>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:712
		}
		fprintf(fp, "WEIGHT:%'"  PRIu64  " ", val64);
    92d9:	48 8b 55 80          	mov    -0x80(%rbp),%rdx
    92dd:	48 8b 85 40 ff ff ff 	mov    -0xc0(%rbp),%rax
    92e4:	48 8d 35 ed 15 00 00 	lea    0x15ed(%rip),%rsi        # a8d8 <_ZL12total_events+0x8cc>
    92eb:	48 89 c7             	mov    %rax,%rdi
    92ee:	b8 00 00 00 00       	mov    $0x0,%eax
    92f3:	e8 b8 94 ff ff       	callq  27b0 <fprintf@plt>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:713
		sz -= sizeof(val64);
    92f8:	48 83 6d 98 08       	subq   $0x8,-0x68(%rbp)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:716
	}

	if (type & PERF_SAMPLE_DATA_SRC) {
    92fd:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    9301:	25 00 80 00 00       	and    $0x8000,%eax
    9306:	48 85 c0             	test   %rax,%rax
    9309:	74 61                	je     936c <perf_display_sample+0xc6f>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:717
		ret = perf_read_buffer_64(hw, &val64);
    930b:	48 8d 55 80          	lea    -0x80(%rbp),%rdx
    930f:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    9313:	48 89 d6             	mov    %rdx,%rsi
    9316:	48 89 c7             	mov    %rax,%rdi
    9319:	e8 e8 e4 ff ff       	callq  7806 <perf_read_buffer_64>
    931e:	89 85 68 ff ff ff    	mov    %eax,-0x98(%rbp)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:718
		if (ret) {
    9324:	83 bd 68 ff ff ff 00 	cmpl   $0x0,-0x98(%rbp)
    932b:	74 1b                	je     9348 <perf_display_sample+0xc4b>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:719
			warnx( "cannot read data src");
    932d:	48 8d 3d b1 15 00 00 	lea    0x15b1(%rip),%rdi        # a8e5 <_ZL12total_events+0x8d9>
    9334:	b8 00 00 00 00       	mov    $0x0,%eax
    9339:	e8 82 93 ff ff       	callq  26c0 <warnx@plt>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:720
			return -1;
    933e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    9343:	e9 14 01 00 00       	jmpq   945c <perf_display_sample+0xd5f>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:722
		}
		fprintf(fp, "DATA_SRC:%'"  PRIu64  " ", val64);
    9348:	48 8b 55 80          	mov    -0x80(%rbp),%rdx
    934c:	48 8b 85 40 ff ff ff 	mov    -0xc0(%rbp),%rax
    9353:	48 8d 35 a0 15 00 00 	lea    0x15a0(%rip),%rsi        # a8fa <_ZL12total_events+0x8ee>
    935a:	48 89 c7             	mov    %rax,%rdi
    935d:	b8 00 00 00 00       	mov    $0x0,%eax
    9362:	e8 49 94 ff ff       	callq  27b0 <fprintf@plt>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:723
		sz -= sizeof(val64);
    9367:	48 83 6d 98 08       	subq   $0x8,-0x68(%rbp)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:725
	}
	if (type & PERF_SAMPLE_TRANSACTION) {
    936c:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    9370:	25 00 00 02 00       	and    $0x20000,%eax
    9375:	48 85 c0             	test   %rax,%rax
    9378:	74 61                	je     93db <perf_display_sample+0xcde>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:726
		ret = perf_read_buffer_64(hw, &val64);
    937a:	48 8d 55 80          	lea    -0x80(%rbp),%rdx
    937e:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    9382:	48 89 d6             	mov    %rdx,%rsi
    9385:	48 89 c7             	mov    %rax,%rdi
    9388:	e8 79 e4 ff ff       	callq  7806 <perf_read_buffer_64>
    938d:	89 85 68 ff ff ff    	mov    %eax,-0x98(%rbp)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:727
		if (ret) {
    9393:	83 bd 68 ff ff ff 00 	cmpl   $0x0,-0x98(%rbp)
    939a:	74 1b                	je     93b7 <perf_display_sample+0xcba>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:728
			warnx( "cannot read txn");
    939c:	48 8d 3d 66 15 00 00 	lea    0x1566(%rip),%rdi        # a909 <_ZL12total_events+0x8fd>
    93a3:	b8 00 00 00 00       	mov    $0x0,%eax
    93a8:	e8 13 93 ff ff       	callq  26c0 <warnx@plt>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:729
			return -1;
    93ad:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    93b2:	e9 a5 00 00 00       	jmpq   945c <perf_display_sample+0xd5f>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:731
		}
		fprintf(fp, "TXN:%'"  PRIu64  " ", val64);
    93b7:	48 8b 55 80          	mov    -0x80(%rbp),%rdx
    93bb:	48 8b 85 40 ff ff ff 	mov    -0xc0(%rbp),%rax
    93c2:	48 8d 35 50 15 00 00 	lea    0x1550(%rip),%rsi        # a919 <_ZL12total_events+0x90d>
    93c9:	48 89 c7             	mov    %rax,%rdi
    93cc:	b8 00 00 00 00       	mov    $0x0,%eax
    93d1:	e8 da 93 ff ff       	callq  27b0 <fprintf@plt>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:732
		sz -= sizeof(val64);
    93d6:	48 83 6d 98 08       	subq   $0x8,-0x68(%rbp)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:735
	}

	if (type & PERF_SAMPLE_REGS_INTR) {
    93db:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    93df:	25 00 00 04 00       	and    $0x40000,%eax
    93e4:	48 85 c0             	test   %rax,%rax
    93e7:	74 28                	je     9411 <perf_display_sample+0xd14>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:736
		ret = perf_display_regs_intr(hw, fp);
    93e9:	48 8b 95 40 ff ff ff 	mov    -0xc0(%rbp),%rdx
    93f0:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    93f4:	48 89 d6             	mov    %rdx,%rsi
    93f7:	48 89 c7             	mov    %rax,%rdi
    93fa:	e8 93 f1 ff ff       	callq  8592 <perf_display_regs_intr>
    93ff:	89 85 68 ff ff ff    	mov    %eax,-0x98(%rbp)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:737
		sz -= ret;
    9405:	8b 85 68 ff ff ff    	mov    -0x98(%rbp),%eax
    940b:	48 98                	cltq   
    940d:	48 29 45 98          	sub    %rax,-0x68(%rbp)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:746
	 * if we have some data left, it is because there is more
	 * than what we know about. In fact, it is more complicated
	 * because we may have the right size but wrong layout. But
	 * that's the best we can do.
	 */
	if (sz) {
    9411:	48 83 7d 98 00       	cmpq   $0x0,-0x68(%rbp)
    9416:	74 2b                	je     9443 <perf_display_sample+0xd46>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:747
		warnx("did not correctly parse sample leftover=%zu", sz);
    9418:	48 8b 45 98          	mov    -0x68(%rbp),%rax
    941c:	48 89 c6             	mov    %rax,%rsi
    941f:	48 8d 3d 02 15 00 00 	lea    0x1502(%rip),%rdi        # a928 <_ZL12total_events+0x91c>
    9426:	b8 00 00 00 00       	mov    $0x0,%eax
    942b:	e8 90 92 ff ff       	callq  26c0 <warnx@plt>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:748
		perf_skip_buffer(hw, sz);
    9430:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
    9434:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    9438:	48 89 d6             	mov    %rdx,%rsi
    943b:	48 89 c7             	mov    %rax,%rdi
    943e:	e8 25 ed ff ff       	callq  8168 <perf_skip_buffer>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:751
	}

	fputc('\n',fp);
    9443:	48 8b 85 40 ff ff ff 	mov    -0xc0(%rbp),%rax
    944a:	48 89 c6             	mov    %rax,%rsi
    944d:	bf 0a 00 00 00       	mov    $0xa,%edi
    9452:	e8 b9 92 ff ff       	callq  2710 <fputc@plt>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:752
	return 0;
    9457:	b8 00 00 00 00       	mov    $0x0,%eax
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:753 (discriminator 5)
}
    945c:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
    9460:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
    9467:	00 00 
    9469:	74 05                	je     9470 <perf_display_sample+0xd73>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:753
    946b:	e8 70 92 ff ff       	callq  26e0 <__stack_chk_fail@plt>
    9470:	c9                   	leaveq 
    9471:	c3                   	retq   

0000000000009472 <display_lost>:
display_lost():
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:757

uint64_t
display_lost(perf_event_desc_t *hw, perf_event_desc_t *fds, int num_fds, FILE *fp)
{
    9472:	f3 0f 1e fa          	endbr64 
    9476:	55                   	push   %rbp
    9477:	48 89 e5             	mov    %rsp,%rbp
    947a:	48 83 ec 50          	sub    $0x50,%rsp
    947e:	48 89 7d c8          	mov    %rdi,-0x38(%rbp)
    9482:	48 89 75 c0          	mov    %rsi,-0x40(%rbp)
    9486:	89 55 bc             	mov    %edx,-0x44(%rbp)
    9489:	48 89 4d b0          	mov    %rcx,-0x50(%rbp)
    948d:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    9494:	00 00 
    9496:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    949a:	31 c0                	xor    %eax,%eax
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:762
	struct { uint64_t id, lost; } lost;
	const char *str;
	int e, ret;

	ret = perf_read_buffer(hw, &lost, sizeof(lost));
    949c:	48 8d 4d e0          	lea    -0x20(%rbp),%rcx
    94a0:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    94a4:	ba 10 00 00 00       	mov    $0x10,%edx
    94a9:	48 89 ce             	mov    %rcx,%rsi
    94ac:	48 89 c7             	mov    %rax,%rdi
    94af:	e8 80 eb ff ff       	callq  8034 <perf_read_buffer>
    94b4:	89 45 d0             	mov    %eax,-0x30(%rbp)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:763
	if (ret) {
    94b7:	83 7d d0 00          	cmpl   $0x0,-0x30(%rbp)
    94bb:	74 18                	je     94d5 <display_lost+0x63>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:764
		warnx("cannot read lost info");
    94bd:	48 8d 3d 90 14 00 00 	lea    0x1490(%rip),%rdi        # a954 <_ZL12total_events+0x948>
    94c4:	b8 00 00 00 00       	mov    $0x0,%eax
    94c9:	e8 f2 91 ff ff       	callq  26c0 <warnx@plt>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:765
		return 0;
    94ce:	b8 00 00 00 00       	mov    $0x0,%eax
    94d3:	eb 78                	jmp    954d <display_lost+0xdb>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:768
	}

	e = perf_id2event(fds, num_fds, lost.id);
    94d5:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    94d9:	8b 4d bc             	mov    -0x44(%rbp),%ecx
    94dc:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    94e0:	89 ce                	mov    %ecx,%esi
    94e2:	48 89 c7             	mov    %rax,%rdi
    94e5:	e8 ad e4 ff ff       	callq  7997 <perf_id2event>
    94ea:	89 45 d4             	mov    %eax,-0x2c(%rbp)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:769
	if (e == -1)
    94ed:	83 7d d4 ff          	cmpl   $0xffffffff,-0x2c(%rbp)
    94f1:	75 0d                	jne    9500 <display_lost+0x8e>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:770
		str = "unknown lost event";
    94f3:	48 8d 05 70 14 00 00 	lea    0x1470(%rip),%rax        # a96a <_ZL12total_events+0x95e>
    94fa:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
    94fe:	eb 29                	jmp    9529 <display_lost+0xb7>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:772
	else
		str = fds[e].name;
    9500:	8b 45 d4             	mov    -0x2c(%rbp),%eax
    9503:	48 63 d0             	movslq %eax,%rdx
    9506:	48 89 d0             	mov    %rdx,%rax
    9509:	48 c1 e0 04          	shl    $0x4,%rax
    950d:	48 29 d0             	sub    %rdx,%rax
    9510:	48 c1 e0 04          	shl    $0x4,%rax
    9514:	48 89 c2             	mov    %rax,%rdx
    9517:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    951b:	48 01 d0             	add    %rdx,%rax
    951e:	48 8b 80 b0 00 00 00 	mov    0xb0(%rax),%rax
    9525:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:774

	fprintf(fp, "<<<LOST %"  PRIu64  " SAMPLES FOR EVENT %s>>>\n",
    9529:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    952d:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
    9531:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    9535:	48 8d 35 44 14 00 00 	lea    0x1444(%rip),%rsi        # a980 <_ZL12total_events+0x974>
    953c:	48 89 c7             	mov    %rax,%rdi
    953f:	b8 00 00 00 00       	mov    $0x0,%eax
    9544:	e8 67 92 ff ff       	callq  27b0 <fprintf@plt>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:778
		lost.lost,
		str);

	return lost.lost;
    9549:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:779 (discriminator 1)
}
    954d:	48 8b 75 f8          	mov    -0x8(%rbp),%rsi
    9551:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
    9558:	00 00 
    955a:	74 05                	je     9561 <display_lost+0xef>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:779
    955c:	e8 7f 91 ff ff       	callq  26e0 <__stack_chk_fail@plt>
    9561:	c9                   	leaveq 
    9562:	c3                   	retq   

0000000000009563 <display_exit>:
display_exit():
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:783

void
display_exit(perf_event_desc_t *hw, FILE *fp)
{
    9563:	f3 0f 1e fa          	endbr64 
    9567:	55                   	push   %rbp
    9568:	48 89 e5             	mov    %rsp,%rbp
    956b:	48 83 ec 40          	sub    $0x40,%rsp
    956f:	48 89 7d c8          	mov    %rdi,-0x38(%rbp)
    9573:	48 89 75 c0          	mov    %rsi,-0x40(%rbp)
    9577:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    957e:	00 00 
    9580:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    9584:	31 c0                	xor    %eax,%eax
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:787
	struct { pid_t pid, ppid, tid, ptid; } grp;
	int ret;

	ret = perf_read_buffer(hw, &grp, sizeof(grp));
    9586:	48 8d 4d e0          	lea    -0x20(%rbp),%rcx
    958a:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    958e:	ba 10 00 00 00       	mov    $0x10,%edx
    9593:	48 89 ce             	mov    %rcx,%rsi
    9596:	48 89 c7             	mov    %rax,%rdi
    9599:	e8 96 ea ff ff       	callq  8034 <perf_read_buffer>
    959e:	89 45 dc             	mov    %eax,-0x24(%rbp)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:788
	if (ret) {
    95a1:	83 7d dc 00          	cmpl   $0x0,-0x24(%rbp)
    95a5:	74 13                	je     95ba <display_exit+0x57>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:789
		warnx("cannot read exit info");
    95a7:	48 8d 3d f7 13 00 00 	lea    0x13f7(%rip),%rdi        # a9a5 <_ZL12total_events+0x999>
    95ae:	b8 00 00 00 00       	mov    $0x0,%eax
    95b3:	e8 08 91 ff ff       	callq  26c0 <warnx@plt>
    95b8:	eb 1b                	jmp    95d5 <display_exit+0x72>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:793
		return;
	}

	fprintf(fp,"[%d] exited\n", grp.pid);
    95ba:	8b 55 e0             	mov    -0x20(%rbp),%edx
    95bd:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    95c1:	48 8d 35 f3 13 00 00 	lea    0x13f3(%rip),%rsi        # a9bb <_ZL12total_events+0x9af>
    95c8:	48 89 c7             	mov    %rax,%rdi
    95cb:	b8 00 00 00 00       	mov    $0x0,%eax
    95d0:	e8 db 91 ff ff       	callq  27b0 <fprintf@plt>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:794
}
    95d5:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    95d9:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    95e0:	00 00 
    95e2:	74 05                	je     95e9 <display_exit+0x86>
    95e4:	e8 f7 90 ff ff       	callq  26e0 <__stack_chk_fail@plt>
    95e9:	c9                   	leaveq 
    95ea:	c3                   	retq   

00000000000095eb <display_freq>:
display_freq():
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:798

void
display_freq(int mode, perf_event_desc_t *hw, FILE *fp)
{
    95eb:	f3 0f 1e fa          	endbr64 
    95ef:	55                   	push   %rbp
    95f0:	48 89 e5             	mov    %rsp,%rbp
    95f3:	48 83 ec 50          	sub    $0x50,%rsp
    95f7:	89 7d cc             	mov    %edi,-0x34(%rbp)
    95fa:	48 89 75 c0          	mov    %rsi,-0x40(%rbp)
    95fe:	48 89 55 b8          	mov    %rdx,-0x48(%rbp)
    9602:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    9609:	00 00 
    960b:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    960f:	31 c0                	xor    %eax,%eax
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:802
	struct { uint64_t time, id, stream_id; } thr;
	int ret;

	ret = perf_read_buffer(hw, &thr, sizeof(thr));
    9611:	48 8d 4d e0          	lea    -0x20(%rbp),%rcx
    9615:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    9619:	ba 18 00 00 00       	mov    $0x18,%edx
    961e:	48 89 ce             	mov    %rcx,%rsi
    9621:	48 89 c7             	mov    %rax,%rdi
    9624:	e8 0b ea ff ff       	callq  8034 <perf_read_buffer>
    9629:	89 45 dc             	mov    %eax,-0x24(%rbp)
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:803
	if (ret) {
    962c:	83 7d dc 00          	cmpl   $0x0,-0x24(%rbp)
    9630:	74 13                	je     9645 <display_freq+0x5a>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:804
		warnx("cannot read throttling info");
    9632:	48 8d 3d 8f 13 00 00 	lea    0x138f(%rip),%rdi        # a9c8 <_ZL12total_events+0x9bc>
    9639:	b8 00 00 00 00       	mov    $0x0,%eax
    963e:	e8 7d 90 ff ff       	callq  26c0 <warnx@plt>
    9643:	eb 3c                	jmp    9681 <display_freq+0x96>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:808
		return;
	}

	fprintf(fp, "%s value=%"  PRIu64  " event ID=%"  PRIu64  "\n",
    9645:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
    9649:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    964d:	83 7d cc 00          	cmpl   $0x0,-0x34(%rbp)
    9651:	74 09                	je     965c <display_freq+0x71>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:808 (discriminator 1)
    9653:	48 8d 05 8a 13 00 00 	lea    0x138a(%rip),%rax        # a9e4 <_ZL12total_events+0x9d8>
    965a:	eb 07                	jmp    9663 <display_freq+0x78>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:808 (discriminator 2)
    965c:	48 8d 05 8b 13 00 00 	lea    0x138b(%rip),%rax        # a9ee <_ZL12total_events+0x9e2>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:808 (discriminator 4)
    9663:	48 8b 7d b8          	mov    -0x48(%rbp),%rdi
    9667:	49 89 c8             	mov    %rcx,%r8
    966a:	48 89 d1             	mov    %rdx,%rcx
    966d:	48 89 c2             	mov    %rax,%rdx
    9670:	48 8d 35 83 13 00 00 	lea    0x1383(%rip),%rsi        # a9fa <_ZL12total_events+0x9ee>
    9677:	b8 00 00 00 00       	mov    $0x0,%eax
    967c:	e8 2f 91 ff ff       	callq  27b0 <fprintf@plt>
/home/donayam/Documents/dove_workspace/libs/libpfm4/perf_examples/perf_util.c:812
		mode ? "Throttled" : "Unthrottled",
		thr.id,
		thr.stream_id);
}
    9681:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    9685:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    968c:	00 00 
    968e:	74 05                	je     9695 <display_freq+0xaa>
    9690:	e8 4b 90 ff ff       	callq  26e0 <__stack_chk_fail@plt>
    9695:	c9                   	leaveq 
    9696:	c3                   	retq   

0000000000009697 <perf_event_open>:
perf_event_open():
/home/donayam/Documents/dove_workspace/libs/libpfm4/include/perfmon/perf_event.h:603
	struct perf_event_attr		*hw_event_uptr,
	pid_t				pid,
	int				cpu,
	int				group_fd,
	unsigned long			flags)
{
    9697:	55                   	push   %rbp
    9698:	48 89 e5             	mov    %rsp,%rbp
    969b:	48 83 ec 20          	sub    $0x20,%rsp
    969f:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    96a3:	89 75 f4             	mov    %esi,-0xc(%rbp)
    96a6:	89 55 f0             	mov    %edx,-0x10(%rbp)
    96a9:	89 4d ec             	mov    %ecx,-0x14(%rbp)
    96ac:	4c 89 45 e0          	mov    %r8,-0x20(%rbp)
/home/donayam/Documents/dove_workspace/libs/libpfm4/include/perfmon/perf_event.h:604
	return syscall(
    96b0:	48 8b 7d e0          	mov    -0x20(%rbp),%rdi
    96b4:	8b 75 ec             	mov    -0x14(%rbp),%esi
    96b7:	8b 4d f0             	mov    -0x10(%rbp),%ecx
    96ba:	8b 55 f4             	mov    -0xc(%rbp),%edx
    96bd:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    96c1:	49 89 f9             	mov    %rdi,%r9
    96c4:	41 89 f0             	mov    %esi,%r8d
    96c7:	48 89 c6             	mov    %rax,%rsi
    96ca:	bf 2a 01 00 00       	mov    $0x12a,%edi
    96cf:	b8 00 00 00 00       	mov    $0x0,%eax
    96d4:	e8 f7 8d ff ff       	callq  24d0 <syscall@plt>
/home/donayam/Documents/dove_workspace/libs/libpfm4/include/perfmon/perf_event.h:606
		__NR_perf_event_open, hw_event_uptr, pid, cpu, group_fd, flags);
}
    96d9:	c9                   	leaveq 
    96da:	c3                   	retq   

00000000000096db <gettid>:
gettid():
/home/donayam/Documents/dove_workspace/libs/perf_tool/perf.c:88
// "LLC-PREFETCHES",
// "LLC-PREFETCH-MISSES",

pid_t
gettid(void)
{
    96db:	f3 0f 1e fa          	endbr64 
    96df:	55                   	push   %rbp
    96e0:	48 89 e5             	mov    %rsp,%rbp
/home/donayam/Documents/dove_workspace/libs/perf_tool/perf.c:89
	return (pid_t)syscall(__NR_gettid);
    96e3:	bf ba 00 00 00       	mov    $0xba,%edi
    96e8:	b8 00 00 00 00       	mov    $0x0,%eax
    96ed:	e8 de 8d ff ff       	callq  24d0 <syscall@plt>
/home/donayam/Documents/dove_workspace/libs/perf_tool/perf.c:90
}
    96f2:	5d                   	pop    %rbp
    96f3:	c3                   	retq   

00000000000096f4 <init_profile>:
init_profile():
/home/donayam/Documents/dove_workspace/libs/perf_tool/perf.c:124
// 	}
//     return results;

// }
profiling_context_t *init_profile(int is_thread, const char**events)
{
    96f4:	f3 0f 1e fa          	endbr64 
    96f8:	55                   	push   %rbp
    96f9:	48 89 e5             	mov    %rsp,%rbp
    96fc:	53                   	push   %rbx
    96fd:	48 83 ec 28          	sub    $0x28,%rsp
    9701:	89 7d dc             	mov    %edi,-0x24(%rbp)
    9704:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
/home/donayam/Documents/dove_workspace/libs/perf_tool/perf.c:125
    profiling_context_t *ctx = (profiling_context_t *)malloc(sizeof(profiling_context_t));
    9708:	bf 10 00 00 00       	mov    $0x10,%edi
    970d:	e8 2e 90 ff ff       	callq  2740 <malloc@plt>
    9712:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
/home/donayam/Documents/dove_workspace/libs/perf_tool/perf.c:126
    if (!ctx)
    9716:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
    971b:	75 16                	jne    9733 <init_profile+0x3f>
/home/donayam/Documents/dove_workspace/libs/perf_tool/perf.c:128
    {
        perror("Failed to allocate profiling context");
    971d:	48 8d 3d fc 12 00 00 	lea    0x12fc(%rip),%rdi        # aa20 <_ZL12total_events+0xa14>
    9724:	e8 e7 8e ff ff       	callq  2610 <perror@plt>
/home/donayam/Documents/dove_workspace/libs/perf_tool/perf.c:129
        exit(EXIT_FAILURE);
    9729:	bf 01 00 00 00       	mov    $0x1,%edi
    972e:	e8 cd 8f ff ff       	callq  2700 <exit@plt>
/home/donayam/Documents/dove_workspace/libs/perf_tool/perf.c:131
    }
    ctx->fds = NULL;
    9733:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    9737:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
/home/donayam/Documents/dove_workspace/libs/perf_tool/perf.c:132
    ctx->num_fds = 0;
    973e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    9742:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%rax)
/home/donayam/Documents/dove_workspace/libs/perf_tool/perf.c:133
    setlocale(LC_ALL, "");
    9749:	48 8d 35 f5 12 00 00 	lea    0x12f5(%rip),%rsi        # aa45 <_ZL12total_events+0xa39>
    9750:	bf 06 00 00 00       	mov    $0x6,%edi
    9755:	e8 e6 8e ff ff       	callq  2640 <setlocale@plt>
/home/donayam/Documents/dove_workspace/libs/perf_tool/perf.c:146
    // while(gen_events__[i] != NULL){
    //     printf("%s,",gen_events__[i]);
    //     i++;
    // }
    //  printf("\n");
    ret = perf_setup_argv_events(events, &ctx->fds, &ctx->num_fds);
    975a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    975e:	48 8d 50 08          	lea    0x8(%rax),%rdx
    9762:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    9766:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    976a:	48 89 ce             	mov    %rcx,%rsi
    976d:	48 89 c7             	mov    %rax,%rdi
    9770:	e8 7d e2 ff ff       	callq  79f2 <perf_setup_argv_events>
    9775:	89 45 e4             	mov    %eax,-0x1c(%rbp)
/home/donayam/Documents/dove_workspace/libs/perf_tool/perf.c:147
    if (ret || !ctx->num_fds)
    9778:	83 7d e4 00          	cmpl   $0x0,-0x1c(%rbp)
    977c:	75 0b                	jne    9789 <init_profile+0x95>
/home/donayam/Documents/dove_workspace/libs/perf_tool/perf.c:147 (discriminator 1)
    977e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    9782:	8b 40 08             	mov    0x8(%rax),%eax
    9785:	85 c0                	test   %eax,%eax
    9787:	75 23                	jne    97ac <init_profile+0xb8>
/home/donayam/Documents/dove_workspace/libs/perf_tool/perf.c:149
    {
        errx(1, "cannot setup events %s",pfm_strerror(ret));
    9789:	8b 45 e4             	mov    -0x1c(%rbp),%eax
    978c:	89 c7                	mov    %eax,%edi
    978e:	e8 6d 90 ff ff       	callq  2800 <pfm_strerror@plt>
    9793:	48 89 c2             	mov    %rax,%rdx
    9796:	48 8d 35 a9 12 00 00 	lea    0x12a9(%rip),%rsi        # aa46 <_ZL12total_events+0xa3a>
    979d:	bf 01 00 00 00       	mov    $0x1,%edi
    97a2:	b8 00 00 00 00       	mov    $0x0,%eax
    97a7:	e8 04 91 ff ff       	callq  28b0 <errx@plt>
/home/donayam/Documents/dove_workspace/libs/perf_tool/perf.c:151
    }
    ctx->fds[0].fd = -1;
    97ac:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    97b0:	48 8b 00             	mov    (%rax),%rax
    97b3:	c7 80 d4 00 00 00 ff 	movl   $0xffffffff,0xd4(%rax)
    97ba:	ff ff ff 
/home/donayam/Documents/dove_workspace/libs/perf_tool/perf.c:152
    for (int i = 0; i < ctx->num_fds; i++)
    97bd:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%rbp)
/home/donayam/Documents/dove_workspace/libs/perf_tool/perf.c:152 (discriminator 1)
    97c4:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    97c8:	8b 40 08             	mov    0x8(%rax),%eax
    97cb:	39 45 e0             	cmp    %eax,-0x20(%rbp)
    97ce:	0f 8d 65 01 00 00    	jge    9939 <init_profile+0x245>
/home/donayam/Documents/dove_workspace/libs/perf_tool/perf.c:154
    {
        ctx->fds[i].hw.read_format = PERF_FORMAT_SCALE;
    97d4:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    97d8:	48 8b 08             	mov    (%rax),%rcx
    97db:	8b 45 e0             	mov    -0x20(%rbp),%eax
    97de:	48 63 d0             	movslq %eax,%rdx
    97e1:	48 89 d0             	mov    %rdx,%rax
    97e4:	48 c1 e0 04          	shl    $0x4,%rax
    97e8:	48 29 d0             	sub    %rdx,%rax
    97eb:	48 c1 e0 04          	shl    $0x4,%rax
    97ef:	48 01 c8             	add    %rcx,%rax
    97f2:	48 c7 40 20 03 00 00 	movq   $0x3,0x20(%rax)
    97f9:	00 
/home/donayam/Documents/dove_workspace/libs/perf_tool/perf.c:155
        ctx->fds[i].hw.disabled = 1;
    97fa:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    97fe:	48 8b 08             	mov    (%rax),%rcx
    9801:	8b 45 e0             	mov    -0x20(%rbp),%eax
    9804:	48 63 d0             	movslq %eax,%rdx
    9807:	48 89 d0             	mov    %rdx,%rax
    980a:	48 c1 e0 04          	shl    $0x4,%rax
    980e:	48 29 d0             	sub    %rdx,%rax
    9811:	48 c1 e0 04          	shl    $0x4,%rax
    9815:	48 01 c8             	add    %rcx,%rax
    9818:	0f b6 50 28          	movzbl 0x28(%rax),%edx
    981c:	83 ca 01             	or     $0x1,%edx
    981f:	88 50 28             	mov    %dl,0x28(%rax)
/home/donayam/Documents/dove_workspace/libs/perf_tool/perf.c:156
        if(is_thread == 1){
    9822:	83 7d dc 01          	cmpl   $0x1,-0x24(%rbp)
    9826:	75 64                	jne    988c <init_profile+0x198>
/home/donayam/Documents/dove_workspace/libs/perf_tool/perf.c:157
            ctx->fds[i].fd = perf_event_open(&ctx->fds[i].hw, gettid(), -1, -1, 0);
    9828:	e8 ae fe ff ff       	callq  96db <gettid>
    982d:	89 c6                	mov    %eax,%esi
    982f:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    9833:	48 8b 08             	mov    (%rax),%rcx
    9836:	8b 45 e0             	mov    -0x20(%rbp),%eax
    9839:	48 63 d0             	movslq %eax,%rdx
    983c:	48 89 d0             	mov    %rdx,%rax
    983f:	48 c1 e0 04          	shl    $0x4,%rax
    9843:	48 29 d0             	sub    %rdx,%rax
    9846:	48 c1 e0 04          	shl    $0x4,%rax
    984a:	48 01 c8             	add    %rcx,%rax
    984d:	48 89 c7             	mov    %rax,%rdi
    9850:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    9854:	48 8b 08             	mov    (%rax),%rcx
    9857:	8b 45 e0             	mov    -0x20(%rbp),%eax
    985a:	48 63 d0             	movslq %eax,%rdx
    985d:	48 89 d0             	mov    %rdx,%rax
    9860:	48 c1 e0 04          	shl    $0x4,%rax
    9864:	48 29 d0             	sub    %rdx,%rax
    9867:	48 c1 e0 04          	shl    $0x4,%rax
    986b:	48 8d 1c 01          	lea    (%rcx,%rax,1),%rbx
    986f:	41 b8 00 00 00 00    	mov    $0x0,%r8d
    9875:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
    987a:	ba ff ff ff ff       	mov    $0xffffffff,%edx
    987f:	e8 13 fe ff ff       	callq  9697 <perf_event_open>
    9884:	89 83 d4 00 00 00    	mov    %eax,0xd4(%rbx)
    988a:	eb 60                	jmp    98ec <init_profile+0x1f8>
/home/donayam/Documents/dove_workspace/libs/perf_tool/perf.c:159
        }else{
            ctx->fds[i].fd = perf_event_open(&ctx->fds[i].hw, 0, -1, -1, 0);
    988c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    9890:	48 8b 08             	mov    (%rax),%rcx
    9893:	8b 45 e0             	mov    -0x20(%rbp),%eax
    9896:	48 63 d0             	movslq %eax,%rdx
    9899:	48 89 d0             	mov    %rdx,%rax
    989c:	48 c1 e0 04          	shl    $0x4,%rax
    98a0:	48 29 d0             	sub    %rdx,%rax
    98a3:	48 c1 e0 04          	shl    $0x4,%rax
    98a7:	48 01 c8             	add    %rcx,%rax
    98aa:	48 89 c7             	mov    %rax,%rdi
    98ad:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    98b1:	48 8b 08             	mov    (%rax),%rcx
    98b4:	8b 45 e0             	mov    -0x20(%rbp),%eax
    98b7:	48 63 d0             	movslq %eax,%rdx
    98ba:	48 89 d0             	mov    %rdx,%rax
    98bd:	48 c1 e0 04          	shl    $0x4,%rax
    98c1:	48 29 d0             	sub    %rdx,%rax
    98c4:	48 c1 e0 04          	shl    $0x4,%rax
    98c8:	48 8d 1c 01          	lea    (%rcx,%rax,1),%rbx
    98cc:	41 b8 00 00 00 00    	mov    $0x0,%r8d
    98d2:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
    98d7:	ba ff ff ff ff       	mov    $0xffffffff,%edx
    98dc:	be 00 00 00 00       	mov    $0x0,%esi
    98e1:	e8 b1 fd ff ff       	callq  9697 <perf_event_open>
    98e6:	89 83 d4 00 00 00    	mov    %eax,0xd4(%rbx)
/home/donayam/Documents/dove_workspace/libs/perf_tool/perf.c:161
        }
        if (ctx->fds[i].fd == -1)
    98ec:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    98f0:	48 8b 08             	mov    (%rax),%rcx
    98f3:	8b 45 e0             	mov    -0x20(%rbp),%eax
    98f6:	48 63 d0             	movslq %eax,%rdx
    98f9:	48 89 d0             	mov    %rdx,%rax
    98fc:	48 c1 e0 04          	shl    $0x4,%rax
    9900:	48 29 d0             	sub    %rdx,%rax
    9903:	48 c1 e0 04          	shl    $0x4,%rax
    9907:	48 01 c8             	add    %rcx,%rax
    990a:	8b 80 d4 00 00 00    	mov    0xd4(%rax),%eax
    9910:	83 f8 ff             	cmp    $0xffffffff,%eax
    9913:	75 1b                	jne    9930 <init_profile+0x23c>
/home/donayam/Documents/dove_workspace/libs/perf_tool/perf.c:163
        {
            err(1, "cannot open event %d", i);
    9915:	8b 45 e0             	mov    -0x20(%rbp),%eax
    9918:	89 c2                	mov    %eax,%edx
    991a:	48 8d 35 3c 11 00 00 	lea    0x113c(%rip),%rsi        # aa5d <_ZL12total_events+0xa51>
    9921:	bf 01 00 00 00       	mov    $0x1,%edi
    9926:	b8 00 00 00 00       	mov    $0x0,%eax
    992b:	e8 20 8d ff ff       	callq  2650 <err@plt>
/home/donayam/Documents/dove_workspace/libs/perf_tool/perf.c:152 (discriminator 2)
    for (int i = 0; i < ctx->num_fds; i++)
    9930:	83 45 e0 01          	addl   $0x1,-0x20(%rbp)
    9934:	e9 8b fe ff ff       	jmpq   97c4 <init_profile+0xd0>
/home/donayam/Documents/dove_workspace/libs/perf_tool/perf.c:166
        }
    }
    return ctx;
    9939:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
/home/donayam/Documents/dove_workspace/libs/perf_tool/perf.c:167
}
    993d:	48 83 c4 28          	add    $0x28,%rsp
    9941:	5b                   	pop    %rbx
    9942:	5d                   	pop    %rbp
    9943:	c3                   	retq   

0000000000009944 <start_profile>:
start_profile():
/home/donayam/Documents/dove_workspace/libs/perf_tool/perf.c:169
void start_profile(profiling_context_t *ctx)
{ 
    9944:	f3 0f 1e fa          	endbr64 
    9948:	55                   	push   %rbp
    9949:	48 89 e5             	mov    %rsp,%rbp
    994c:	48 83 ec 20          	sub    $0x20,%rsp
    9950:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
/home/donayam/Documents/dove_workspace/libs/perf_tool/perf.c:173
    /*
	 * enable all counters attached to this thread and created by it
	 */
	int ret = prctl(PR_TASK_PERF_EVENTS_ENABLE);
    9954:	bf 20 00 00 00       	mov    $0x20,%edi
    9959:	b8 00 00 00 00       	mov    $0x0,%eax
    995e:	e8 cd 8d ff ff       	callq  2730 <prctl@plt>
    9963:	89 45 fc             	mov    %eax,-0x4(%rbp)
/home/donayam/Documents/dove_workspace/libs/perf_tool/perf.c:174
	if (ret)
    9966:	83 7d fc 00          	cmpl   $0x0,-0x4(%rbp)
    996a:	74 16                	je     9982 <start_profile+0x3e>
/home/donayam/Documents/dove_workspace/libs/perf_tool/perf.c:175
		err(1, "prctl(enable) failed");
    996c:	48 8d 35 ff 10 00 00 	lea    0x10ff(%rip),%rsi        # aa72 <_ZL12total_events+0xa66>
    9973:	bf 01 00 00 00       	mov    $0x1,%edi
    9978:	b8 00 00 00 00       	mov    $0x0,%eax
    997d:	e8 ce 8c ff ff       	callq  2650 <err@plt>
/home/donayam/Documents/dove_workspace/libs/perf_tool/perf.c:185
    //     if (ioctl(ctx->fds[i].fd, PERF_EVENT_IOC_ENABLE, 0) == -1)
    //     {
    //         err(1, "ioctl(enable) failed");
    //     }
    // }
}
    9982:	90                   	nop
    9983:	c9                   	leaveq 
    9984:	c3                   	retq   

0000000000009985 <stop_profile2>:
stop_profile2():
/home/donayam/Documents/dove_workspace/libs/perf_tool/perf.c:188

pref_result_t *stop_profile2(profiling_context_t *ctx)
{
    9985:	f3 0f 1e fa          	endbr64 
    9989:	55                   	push   %rbp
    998a:	48 89 e5             	mov    %rsp,%rbp
    998d:	48 83 ec 50          	sub    $0x50,%rsp
    9991:	48 89 7d b8          	mov    %rdi,-0x48(%rbp)
    9995:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    999c:	00 00 
    999e:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    99a2:	31 c0                	xor    %eax,%eax
/home/donayam/Documents/dove_workspace/libs/perf_tool/perf.c:194
    // uint64_t val;
	uint64_t values[3];
	// double ratio;

    ssize_t ret; 
    pref_result_t* results =  (pref_result_t*)malloc(ctx->num_fds * sizeof(pref_result_t));  //uint64_t[num_fds];
    99a4:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    99a8:	8b 40 08             	mov    0x8(%rax),%eax
    99ab:	48 98                	cltq   
    99ad:	48 c1 e0 04          	shl    $0x4,%rax
    99b1:	48 89 c7             	mov    %rax,%rdi
    99b4:	e8 87 8d ff ff       	callq  2740 <malloc@plt>
    99b9:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
/home/donayam/Documents/dove_workspace/libs/perf_tool/perf.c:195
    memset(results,0,ctx->num_fds*sizeof(uint64_t));
    99bd:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    99c1:	8b 40 08             	mov    0x8(%rax),%eax
    99c4:	48 98                	cltq   
    99c6:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
    99cd:	00 
    99ce:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    99d2:	be 00 00 00 00       	mov    $0x0,%esi
    99d7:	48 89 c7             	mov    %rax,%rdi
    99da:	e8 c1 8b ff ff       	callq  25a0 <memset@plt>
/home/donayam/Documents/dove_workspace/libs/perf_tool/perf.c:196
    memset(values, 0, sizeof(values));
    99df:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
    99e3:	ba 18 00 00 00       	mov    $0x18,%edx
    99e8:	be 00 00 00 00       	mov    $0x0,%esi
    99ed:	48 89 c7             	mov    %rax,%rdi
    99f0:	e8 ab 8b ff ff       	callq  25a0 <memset@plt>
/home/donayam/Documents/dove_workspace/libs/perf_tool/perf.c:198

    for (int i = 0; i < ctx->num_fds; i++)
    99f5:	c7 45 c8 00 00 00 00 	movl   $0x0,-0x38(%rbp)
/home/donayam/Documents/dove_workspace/libs/perf_tool/perf.c:198 (discriminator 1)
    99fc:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    9a00:	8b 40 08             	mov    0x8(%rax),%eax
    9a03:	39 45 c8             	cmp    %eax,-0x38(%rbp)
    9a06:	0f 8d e6 00 00 00    	jge    9af2 <stop_profile2+0x16d>
/home/donayam/Documents/dove_workspace/libs/perf_tool/perf.c:201
    {
       
        ret = read(ctx->fds[i].fd, values, sizeof(values));
    9a0c:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    9a10:	48 8b 08             	mov    (%rax),%rcx
    9a13:	8b 45 c8             	mov    -0x38(%rbp),%eax
    9a16:	48 63 d0             	movslq %eax,%rdx
    9a19:	48 89 d0             	mov    %rdx,%rax
    9a1c:	48 c1 e0 04          	shl    $0x4,%rax
    9a20:	48 29 d0             	sub    %rdx,%rax
    9a23:	48 c1 e0 04          	shl    $0x4,%rax
    9a27:	48 01 c8             	add    %rcx,%rax
    9a2a:	8b 80 d4 00 00 00    	mov    0xd4(%rax),%eax
    9a30:	48 8d 4d e0          	lea    -0x20(%rbp),%rcx
    9a34:	ba 18 00 00 00       	mov    $0x18,%edx
    9a39:	48 89 ce             	mov    %rcx,%rsi
    9a3c:	89 c7                	mov    %eax,%edi
    9a3e:	e8 7d 8d ff ff       	callq  27c0 <read@plt>
    9a43:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
/home/donayam/Documents/dove_workspace/libs/perf_tool/perf.c:202
		if (ret < (ssize_t)sizeof(values)) {
    9a47:	48 83 7d d8 17       	cmpq   $0x17,-0x28(%rbp)
    9a4c:	7f 44                	jg     9a92 <stop_profile2+0x10d>
/home/donayam/Documents/dove_workspace/libs/perf_tool/perf.c:203
			if (ret == -1)
    9a4e:	48 83 7d d8 ff       	cmpq   $0xffffffffffffffff,-0x28(%rbp)
    9a53:	75 27                	jne    9a7c <stop_profile2+0xf7>
/home/donayam/Documents/dove_workspace/libs/perf_tool/perf.c:204
				err(1, "cannot read results: %s", strerror(errno));
    9a55:	e8 46 8a ff ff       	callq  24a0 <__errno_location@plt>
    9a5a:	8b 00                	mov    (%rax),%eax
    9a5c:	89 c7                	mov    %eax,%edi
    9a5e:	e8 cd 8a ff ff       	callq  2530 <strerror@plt>
    9a63:	48 89 c2             	mov    %rax,%rdx
    9a66:	48 8d 35 1a 10 00 00 	lea    0x101a(%rip),%rsi        # aa87 <_ZL12total_events+0xa7b>
    9a6d:	bf 01 00 00 00       	mov    $0x1,%edi
    9a72:	b8 00 00 00 00       	mov    $0x0,%eax
    9a77:	e8 d4 8b ff ff       	callq  2650 <err@plt>
/home/donayam/Documents/dove_workspace/libs/perf_tool/perf.c:206
			else
				warnx("could not read event%d", i);
    9a7c:	8b 45 c8             	mov    -0x38(%rbp),%eax
    9a7f:	89 c6                	mov    %eax,%esi
    9a81:	48 8d 3d 17 10 00 00 	lea    0x1017(%rip),%rdi        # aa9f <_ZL12total_events+0xa93>
    9a88:	b8 00 00 00 00       	mov    $0x0,%eax
    9a8d:	e8 2e 8c ff ff       	callq  26c0 <warnx@plt>
/home/donayam/Documents/dove_workspace/libs/perf_tool/perf.c:212 (discriminator 2)
		}
        // val = perf_scale(values);
		// ratio = perf_scale_ratio(values);
        

        results[i].result = values[0];// val;
    9a92:	8b 45 c8             	mov    -0x38(%rbp),%eax
    9a95:	48 98                	cltq   
    9a97:	48 c1 e0 04          	shl    $0x4,%rax
    9a9b:	48 89 c2             	mov    %rax,%rdx
    9a9e:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    9aa2:	48 01 c2             	add    %rax,%rdx
    9aa5:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    9aa9:	48 89 42 08          	mov    %rax,0x8(%rdx)
/home/donayam/Documents/dove_workspace/libs/perf_tool/perf.c:213 (discriminator 2)
        results[i].name = ctx->fds[i].name;
    9aad:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    9ab1:	48 8b 08             	mov    (%rax),%rcx
    9ab4:	8b 45 c8             	mov    -0x38(%rbp),%eax
    9ab7:	48 63 d0             	movslq %eax,%rdx
    9aba:	48 89 d0             	mov    %rdx,%rax
    9abd:	48 c1 e0 04          	shl    $0x4,%rax
    9ac1:	48 29 d0             	sub    %rdx,%rax
    9ac4:	48 c1 e0 04          	shl    $0x4,%rax
    9ac8:	48 01 c8             	add    %rcx,%rax
    9acb:	8b 55 c8             	mov    -0x38(%rbp),%edx
    9ace:	48 63 d2             	movslq %edx,%rdx
    9ad1:	48 89 d1             	mov    %rdx,%rcx
    9ad4:	48 c1 e1 04          	shl    $0x4,%rcx
    9ad8:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
    9adc:	48 01 ca             	add    %rcx,%rdx
    9adf:	48 8b 80 b0 00 00 00 	mov    0xb0(%rax),%rax
    9ae6:	48 89 02             	mov    %rax,(%rdx)
/home/donayam/Documents/dove_workspace/libs/perf_tool/perf.c:198 (discriminator 2)
    for (int i = 0; i < ctx->num_fds; i++)
    9ae9:	83 45 c8 01          	addl   $0x1,-0x38(%rbp)
    9aed:	e9 0a ff ff ff       	jmpq   99fc <stop_profile2+0x77>
/home/donayam/Documents/dove_workspace/libs/perf_tool/perf.c:223
        // close(ctx->fds[i].fd);
    }
    /*
	 * disable all counters attached to this thread
	 */
	ret = prctl(PR_TASK_PERF_EVENTS_DISABLE);
    9af2:	bf 1f 00 00 00       	mov    $0x1f,%edi
    9af7:	b8 00 00 00 00       	mov    $0x0,%eax
    9afc:	e8 2f 8c ff ff       	callq  2730 <prctl@plt>
    9b01:	48 98                	cltq   
    9b03:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
/home/donayam/Documents/dove_workspace/libs/perf_tool/perf.c:224
	if (ret)
    9b07:	48 83 7d d8 00       	cmpq   $0x0,-0x28(%rbp)
    9b0c:	74 16                	je     9b24 <stop_profile2+0x19f>
/home/donayam/Documents/dove_workspace/libs/perf_tool/perf.c:225
		err(1, "prctl(disable) failed");
    9b0e:	48 8d 35 a1 0f 00 00 	lea    0xfa1(%rip),%rsi        # aab6 <_ZL12total_events+0xaaa>
    9b15:	bf 01 00 00 00       	mov    $0x1,%edi
    9b1a:	b8 00 00 00 00       	mov    $0x0,%eax
    9b1f:	e8 2c 8b ff ff       	callq  2650 <err@plt>
/home/donayam/Documents/dove_workspace/libs/perf_tool/perf.c:226
    for (int i = 0; i < ctx->num_fds; i++)
    9b24:	c7 45 cc 00 00 00 00 	movl   $0x0,-0x34(%rbp)
/home/donayam/Documents/dove_workspace/libs/perf_tool/perf.c:226 (discriminator 1)
    9b2b:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    9b2f:	8b 40 08             	mov    0x8(%rax),%eax
    9b32:	39 45 cc             	cmp    %eax,-0x34(%rbp)
    9b35:	7d 31                	jge    9b68 <stop_profile2+0x1e3>
/home/donayam/Documents/dove_workspace/libs/perf_tool/perf.c:227
	  close(ctx->fds[i].fd);
    9b37:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    9b3b:	48 8b 08             	mov    (%rax),%rcx
    9b3e:	8b 45 cc             	mov    -0x34(%rbp),%eax
    9b41:	48 63 d0             	movslq %eax,%rdx
    9b44:	48 89 d0             	mov    %rdx,%rax
    9b47:	48 c1 e0 04          	shl    $0x4,%rax
    9b4b:	48 29 d0             	sub    %rdx,%rax
    9b4e:	48 c1 e0 04          	shl    $0x4,%rax
    9b52:	48 01 c8             	add    %rcx,%rax
    9b55:	8b 80 d4 00 00 00    	mov    0xd4(%rax),%eax
    9b5b:	89 c7                	mov    %eax,%edi
    9b5d:	e8 6e 8d ff ff       	callq  28d0 <close@plt>
/home/donayam/Documents/dove_workspace/libs/perf_tool/perf.c:226
    for (int i = 0; i < ctx->num_fds; i++)
    9b62:	83 45 cc 01          	addl   $0x1,-0x34(%rbp)
    9b66:	eb c3                	jmp    9b2b <stop_profile2+0x1a6>
/home/donayam/Documents/dove_workspace/libs/perf_tool/perf.c:233
    // perf_free_fds(ctx->fds, ctx->num_fds);
    // pfm_terminate();
    // free(ctx);


    return results;
    9b68:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
/home/donayam/Documents/dove_workspace/libs/perf_tool/perf.c:234
}
    9b6c:	48 8b 75 f8          	mov    -0x8(%rbp),%rsi
    9b70:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
    9b77:	00 00 
    9b79:	74 05                	je     9b80 <stop_profile2+0x1fb>
    9b7b:	e8 60 8b ff ff       	callq  26e0 <__stack_chk_fail@plt>
    9b80:	c9                   	leaveq 
    9b81:	c3                   	retq   

0000000000009b82 <init_prfiler_lib>:
init_prfiler_lib():
/home/donayam/Documents/dove_workspace/libs/perf_tool/perf.c:291


//     return results;
// }

void init_prfiler_lib(){
    9b82:	f3 0f 1e fa          	endbr64 
    9b86:	55                   	push   %rbp
    9b87:	48 89 e5             	mov    %rsp,%rbp
    9b8a:	48 83 ec 10          	sub    $0x10,%rsp
/home/donayam/Documents/dove_workspace/libs/perf_tool/perf.c:292
    int ret = pfm_initialize();
    9b8e:	e8 0d 8d ff ff       	callq  28a0 <pfm_initialize@plt>
    9b93:	89 45 fc             	mov    %eax,-0x4(%rbp)
/home/donayam/Documents/dove_workspace/libs/perf_tool/perf.c:293
    if (ret != PFM_SUCCESS)
    9b96:	83 7d fc 00          	cmpl   $0x0,-0x4(%rbp)
    9b9a:	74 23                	je     9bbf <init_prfiler_lib+0x3d>
/home/donayam/Documents/dove_workspace/libs/perf_tool/perf.c:295
    {
        errx(1, "Cannot initialize library: %s", pfm_strerror(ret));
    9b9c:	8b 45 fc             	mov    -0x4(%rbp),%eax
    9b9f:	89 c7                	mov    %eax,%edi
    9ba1:	e8 5a 8c ff ff       	callq  2800 <pfm_strerror@plt>
    9ba6:	48 89 c2             	mov    %rax,%rdx
    9ba9:	48 8d 35 1c 0f 00 00 	lea    0xf1c(%rip),%rsi        # aacc <_ZL12total_events+0xac0>
    9bb0:	bf 01 00 00 00       	mov    $0x1,%edi
    9bb5:	b8 00 00 00 00       	mov    $0x0,%eax
    9bba:	e8 f1 8c ff ff       	callq  28b0 <errx@plt>
/home/donayam/Documents/dove_workspace/libs/perf_tool/perf.c:297
    }
    9bbf:	90                   	nop
    9bc0:	c9                   	leaveq 
    9bc1:	c3                   	retq   
    9bc2:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    9bc9:	00 00 00 
    9bcc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000009bd0 <__libc_csu_init>:
__libc_csu_init():
    9bd0:	f3 0f 1e fa          	endbr64 
    9bd4:	41 57                	push   %r15
    9bd6:	4c 8d 3d 73 4f 00 00 	lea    0x4f73(%rip),%r15        # eb50 <__frame_dummy_init_array_entry>
    9bdd:	41 56                	push   %r14
    9bdf:	49 89 d6             	mov    %rdx,%r14
    9be2:	41 55                	push   %r13
    9be4:	49 89 f5             	mov    %rsi,%r13
    9be7:	41 54                	push   %r12
    9be9:	41 89 fc             	mov    %edi,%r12d
    9bec:	55                   	push   %rbp
    9bed:	48 8d 2d 6c 4f 00 00 	lea    0x4f6c(%rip),%rbp        # eb60 <__do_global_dtors_aux_fini_array_entry>
    9bf4:	53                   	push   %rbx
    9bf5:	4c 29 fd             	sub    %r15,%rbp
    9bf8:	48 83 ec 08          	sub    $0x8,%rsp
    9bfc:	e8 ff 83 ff ff       	callq  2000 <_init>
    9c01:	48 c1 fd 03          	sar    $0x3,%rbp
    9c05:	74 1f                	je     9c26 <__libc_csu_init+0x56>
    9c07:	31 db                	xor    %ebx,%ebx
    9c09:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    9c10:	4c 89 f2             	mov    %r14,%rdx
    9c13:	4c 89 ee             	mov    %r13,%rsi
    9c16:	44 89 e7             	mov    %r12d,%edi
    9c19:	41 ff 14 df          	callq  *(%r15,%rbx,8)
    9c1d:	48 83 c3 01          	add    $0x1,%rbx
    9c21:	48 39 dd             	cmp    %rbx,%rbp
    9c24:	75 ea                	jne    9c10 <__libc_csu_init+0x40>
    9c26:	48 83 c4 08          	add    $0x8,%rsp
    9c2a:	5b                   	pop    %rbx
    9c2b:	5d                   	pop    %rbp
    9c2c:	41 5c                	pop    %r12
    9c2e:	41 5d                	pop    %r13
    9c30:	41 5e                	pop    %r14
    9c32:	41 5f                	pop    %r15
    9c34:	c3                   	retq   
    9c35:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    9c3c:	00 00 00 00 

0000000000009c40 <__libc_csu_fini>:
__libc_csu_fini():
    9c40:	f3 0f 1e fa          	endbr64 
    9c44:	c3                   	retq   

Disassembly of section .fini:

0000000000009c48 <_fini>:
_fini():
    9c48:	f3 0f 1e fa          	endbr64 
    9c4c:	48 83 ec 08          	sub    $0x8,%rsp
    9c50:	48 83 c4 08          	add    $0x8,%rsp
    9c54:	c3                   	retq   
