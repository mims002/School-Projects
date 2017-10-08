
ctarget:     file format elf64-x86-64


Disassembly of section .init:

0000000000400b58 <_init>:
  400b58:	48 83 ec 08          	sub    $0x8,%rsp
  400b5c:	e8 5b 02 00 00       	callq  400dbc <call_gmon_start>
  400b61:	48 83 c4 08          	add    $0x8,%rsp
  400b65:	c3                   	retq   

Disassembly of section .plt:

0000000000400b70 <strcasecmp@plt-0x10>:
  400b70:	ff 35 0a 31 20 00    	pushq  0x20310a(%rip)        # 603c80 <_GLOBAL_OFFSET_TABLE_+0x8>
  400b76:	ff 25 0c 31 20 00    	jmpq   *0x20310c(%rip)        # 603c88 <_GLOBAL_OFFSET_TABLE_+0x10>
  400b7c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400b80 <strcasecmp@plt>:
  400b80:	ff 25 0a 31 20 00    	jmpq   *0x20310a(%rip)        # 603c90 <_GLOBAL_OFFSET_TABLE_+0x18>
  400b86:	68 00 00 00 00       	pushq  $0x0
  400b8b:	e9 e0 ff ff ff       	jmpq   400b70 <_init+0x18>

0000000000400b90 <__errno_location@plt>:
  400b90:	ff 25 02 31 20 00    	jmpq   *0x203102(%rip)        # 603c98 <_GLOBAL_OFFSET_TABLE_+0x20>
  400b96:	68 01 00 00 00       	pushq  $0x1
  400b9b:	e9 d0 ff ff ff       	jmpq   400b70 <_init+0x18>

0000000000400ba0 <srandom@plt>:
  400ba0:	ff 25 fa 30 20 00    	jmpq   *0x2030fa(%rip)        # 603ca0 <_GLOBAL_OFFSET_TABLE_+0x28>
  400ba6:	68 02 00 00 00       	pushq  $0x2
  400bab:	e9 c0 ff ff ff       	jmpq   400b70 <_init+0x18>

0000000000400bb0 <strncmp@plt>:
  400bb0:	ff 25 f2 30 20 00    	jmpq   *0x2030f2(%rip)        # 603ca8 <_GLOBAL_OFFSET_TABLE_+0x30>
  400bb6:	68 03 00 00 00       	pushq  $0x3
  400bbb:	e9 b0 ff ff ff       	jmpq   400b70 <_init+0x18>

0000000000400bc0 <strcpy@plt>:
  400bc0:	ff 25 ea 30 20 00    	jmpq   *0x2030ea(%rip)        # 603cb0 <_GLOBAL_OFFSET_TABLE_+0x38>
  400bc6:	68 04 00 00 00       	pushq  $0x4
  400bcb:	e9 a0 ff ff ff       	jmpq   400b70 <_init+0x18>

0000000000400bd0 <puts@plt>:
  400bd0:	ff 25 e2 30 20 00    	jmpq   *0x2030e2(%rip)        # 603cb8 <_GLOBAL_OFFSET_TABLE_+0x40>
  400bd6:	68 05 00 00 00       	pushq  $0x5
  400bdb:	e9 90 ff ff ff       	jmpq   400b70 <_init+0x18>

0000000000400be0 <write@plt>:
  400be0:	ff 25 da 30 20 00    	jmpq   *0x2030da(%rip)        # 603cc0 <_GLOBAL_OFFSET_TABLE_+0x48>
  400be6:	68 06 00 00 00       	pushq  $0x6
  400beb:	e9 80 ff ff ff       	jmpq   400b70 <_init+0x18>

0000000000400bf0 <mmap@plt>:
  400bf0:	ff 25 d2 30 20 00    	jmpq   *0x2030d2(%rip)        # 603cc8 <_GLOBAL_OFFSET_TABLE_+0x50>
  400bf6:	68 07 00 00 00       	pushq  $0x7
  400bfb:	e9 70 ff ff ff       	jmpq   400b70 <_init+0x18>

0000000000400c00 <printf@plt>:
  400c00:	ff 25 ca 30 20 00    	jmpq   *0x2030ca(%rip)        # 603cd0 <_GLOBAL_OFFSET_TABLE_+0x58>
  400c06:	68 08 00 00 00       	pushq  $0x8
  400c0b:	e9 60 ff ff ff       	jmpq   400b70 <_init+0x18>

0000000000400c10 <memset@plt>:
  400c10:	ff 25 c2 30 20 00    	jmpq   *0x2030c2(%rip)        # 603cd8 <_GLOBAL_OFFSET_TABLE_+0x60>
  400c16:	68 09 00 00 00       	pushq  $0x9
  400c1b:	e9 50 ff ff ff       	jmpq   400b70 <_init+0x18>

0000000000400c20 <alarm@plt>:
  400c20:	ff 25 ba 30 20 00    	jmpq   *0x2030ba(%rip)        # 603ce0 <_GLOBAL_OFFSET_TABLE_+0x68>
  400c26:	68 0a 00 00 00       	pushq  $0xa
  400c2b:	e9 40 ff ff ff       	jmpq   400b70 <_init+0x18>

0000000000400c30 <close@plt>:
  400c30:	ff 25 b2 30 20 00    	jmpq   *0x2030b2(%rip)        # 603ce8 <_GLOBAL_OFFSET_TABLE_+0x70>
  400c36:	68 0b 00 00 00       	pushq  $0xb
  400c3b:	e9 30 ff ff ff       	jmpq   400b70 <_init+0x18>

0000000000400c40 <read@plt>:
  400c40:	ff 25 aa 30 20 00    	jmpq   *0x2030aa(%rip)        # 603cf0 <_GLOBAL_OFFSET_TABLE_+0x78>
  400c46:	68 0c 00 00 00       	pushq  $0xc
  400c4b:	e9 20 ff ff ff       	jmpq   400b70 <_init+0x18>

0000000000400c50 <__libc_start_main@plt>:
  400c50:	ff 25 a2 30 20 00    	jmpq   *0x2030a2(%rip)        # 603cf8 <_GLOBAL_OFFSET_TABLE_+0x80>
  400c56:	68 0d 00 00 00       	pushq  $0xd
  400c5b:	e9 10 ff ff ff       	jmpq   400b70 <_init+0x18>

0000000000400c60 <memcpy@plt>:
  400c60:	ff 25 9a 30 20 00    	jmpq   *0x20309a(%rip)        # 603d00 <_GLOBAL_OFFSET_TABLE_+0x88>
  400c66:	68 0e 00 00 00       	pushq  $0xe
  400c6b:	e9 00 ff ff ff       	jmpq   400b70 <_init+0x18>

0000000000400c70 <signal@plt>:
  400c70:	ff 25 92 30 20 00    	jmpq   *0x203092(%rip)        # 603d08 <_GLOBAL_OFFSET_TABLE_+0x90>
  400c76:	68 0f 00 00 00       	pushq  $0xf
  400c7b:	e9 f0 fe ff ff       	jmpq   400b70 <_init+0x18>

0000000000400c80 <gethostbyname@plt>:
  400c80:	ff 25 8a 30 20 00    	jmpq   *0x20308a(%rip)        # 603d10 <_GLOBAL_OFFSET_TABLE_+0x98>
  400c86:	68 10 00 00 00       	pushq  $0x10
  400c8b:	e9 e0 fe ff ff       	jmpq   400b70 <_init+0x18>

0000000000400c90 <fprintf@plt>:
  400c90:	ff 25 82 30 20 00    	jmpq   *0x203082(%rip)        # 603d18 <_GLOBAL_OFFSET_TABLE_+0xa0>
  400c96:	68 11 00 00 00       	pushq  $0x11
  400c9b:	e9 d0 fe ff ff       	jmpq   400b70 <_init+0x18>

0000000000400ca0 <strtol@plt>:
  400ca0:	ff 25 7a 30 20 00    	jmpq   *0x20307a(%rip)        # 603d20 <_GLOBAL_OFFSET_TABLE_+0xa8>
  400ca6:	68 12 00 00 00       	pushq  $0x12
  400cab:	e9 c0 fe ff ff       	jmpq   400b70 <_init+0x18>

0000000000400cb0 <time@plt>:
  400cb0:	ff 25 72 30 20 00    	jmpq   *0x203072(%rip)        # 603d28 <_GLOBAL_OFFSET_TABLE_+0xb0>
  400cb6:	68 13 00 00 00       	pushq  $0x13
  400cbb:	e9 b0 fe ff ff       	jmpq   400b70 <_init+0x18>

0000000000400cc0 <random@plt>:
  400cc0:	ff 25 6a 30 20 00    	jmpq   *0x20306a(%rip)        # 603d30 <_GLOBAL_OFFSET_TABLE_+0xb8>
  400cc6:	68 14 00 00 00       	pushq  $0x14
  400ccb:	e9 a0 fe ff ff       	jmpq   400b70 <_init+0x18>

0000000000400cd0 <_IO_getc@plt>:
  400cd0:	ff 25 62 30 20 00    	jmpq   *0x203062(%rip)        # 603d38 <_GLOBAL_OFFSET_TABLE_+0xc0>
  400cd6:	68 15 00 00 00       	pushq  $0x15
  400cdb:	e9 90 fe ff ff       	jmpq   400b70 <_init+0x18>

0000000000400ce0 <__isoc99_sscanf@plt>:
  400ce0:	ff 25 5a 30 20 00    	jmpq   *0x20305a(%rip)        # 603d40 <_GLOBAL_OFFSET_TABLE_+0xc8>
  400ce6:	68 16 00 00 00       	pushq  $0x16
  400ceb:	e9 80 fe ff ff       	jmpq   400b70 <_init+0x18>

0000000000400cf0 <munmap@plt>:
  400cf0:	ff 25 52 30 20 00    	jmpq   *0x203052(%rip)        # 603d48 <_GLOBAL_OFFSET_TABLE_+0xd0>
  400cf6:	68 17 00 00 00       	pushq  $0x17
  400cfb:	e9 70 fe ff ff       	jmpq   400b70 <_init+0x18>

0000000000400d00 <bcopy@plt>:
  400d00:	ff 25 4a 30 20 00    	jmpq   *0x20304a(%rip)        # 603d50 <_GLOBAL_OFFSET_TABLE_+0xd8>
  400d06:	68 18 00 00 00       	pushq  $0x18
  400d0b:	e9 60 fe ff ff       	jmpq   400b70 <_init+0x18>

0000000000400d10 <fopen@plt>:
  400d10:	ff 25 42 30 20 00    	jmpq   *0x203042(%rip)        # 603d58 <_GLOBAL_OFFSET_TABLE_+0xe0>
  400d16:	68 19 00 00 00       	pushq  $0x19
  400d1b:	e9 50 fe ff ff       	jmpq   400b70 <_init+0x18>

0000000000400d20 <getopt@plt>:
  400d20:	ff 25 3a 30 20 00    	jmpq   *0x20303a(%rip)        # 603d60 <_GLOBAL_OFFSET_TABLE_+0xe8>
  400d26:	68 1a 00 00 00       	pushq  $0x1a
  400d2b:	e9 40 fe ff ff       	jmpq   400b70 <_init+0x18>

0000000000400d30 <strtoul@plt>:
  400d30:	ff 25 32 30 20 00    	jmpq   *0x203032(%rip)        # 603d68 <_GLOBAL_OFFSET_TABLE_+0xf0>
  400d36:	68 1b 00 00 00       	pushq  $0x1b
  400d3b:	e9 30 fe ff ff       	jmpq   400b70 <_init+0x18>

0000000000400d40 <gethostname@plt>:
  400d40:	ff 25 2a 30 20 00    	jmpq   *0x20302a(%rip)        # 603d70 <_GLOBAL_OFFSET_TABLE_+0xf8>
  400d46:	68 1c 00 00 00       	pushq  $0x1c
  400d4b:	e9 20 fe ff ff       	jmpq   400b70 <_init+0x18>

0000000000400d50 <sprintf@plt>:
  400d50:	ff 25 22 30 20 00    	jmpq   *0x203022(%rip)        # 603d78 <_GLOBAL_OFFSET_TABLE_+0x100>
  400d56:	68 1d 00 00 00       	pushq  $0x1d
  400d5b:	e9 10 fe ff ff       	jmpq   400b70 <_init+0x18>

0000000000400d60 <exit@plt>:
  400d60:	ff 25 1a 30 20 00    	jmpq   *0x20301a(%rip)        # 603d80 <_GLOBAL_OFFSET_TABLE_+0x108>
  400d66:	68 1e 00 00 00       	pushq  $0x1e
  400d6b:	e9 00 fe ff ff       	jmpq   400b70 <_init+0x18>

0000000000400d70 <connect@plt>:
  400d70:	ff 25 12 30 20 00    	jmpq   *0x203012(%rip)        # 603d88 <_GLOBAL_OFFSET_TABLE_+0x110>
  400d76:	68 1f 00 00 00       	pushq  $0x1f
  400d7b:	e9 f0 fd ff ff       	jmpq   400b70 <_init+0x18>

0000000000400d80 <socket@plt>:
  400d80:	ff 25 0a 30 20 00    	jmpq   *0x20300a(%rip)        # 603d90 <_GLOBAL_OFFSET_TABLE_+0x118>
  400d86:	68 20 00 00 00       	pushq  $0x20
  400d8b:	e9 e0 fd ff ff       	jmpq   400b70 <_init+0x18>

Disassembly of section .text:

0000000000400d90 <_start>:
  400d90:	31 ed                	xor    %ebp,%ebp
  400d92:	49 89 d1             	mov    %rdx,%r9
  400d95:	5e                   	pop    %rsi
  400d96:	48 89 e2             	mov    %rsp,%rdx
  400d99:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  400d9d:	50                   	push   %rax
  400d9e:	54                   	push   %rsp
  400d9f:	49 c7 c0 b0 2a 40 00 	mov    $0x402ab0,%r8
  400da6:	48 c7 c1 c0 2a 40 00 	mov    $0x402ac0,%rcx
  400dad:	48 c7 c7 6e 10 40 00 	mov    $0x40106e,%rdi
  400db4:	e8 97 fe ff ff       	callq  400c50 <__libc_start_main@plt>
  400db9:	f4                   	hlt    
  400dba:	90                   	nop
  400dbb:	90                   	nop

0000000000400dbc <call_gmon_start>:
  400dbc:	48 83 ec 08          	sub    $0x8,%rsp
  400dc0:	48 8b 05 a9 2e 20 00 	mov    0x202ea9(%rip),%rax        # 603c70 <_DYNAMIC+0x1d0>
  400dc7:	48 85 c0             	test   %rax,%rax
  400dca:	74 02                	je     400dce <call_gmon_start+0x12>
  400dcc:	ff d0                	callq  *%rax
  400dce:	48 83 c4 08          	add    $0x8,%rsp
  400dd2:	c3                   	retq   
  400dd3:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400dda:	00 00 00 
  400ddd:	0f 1f 00             	nopl   (%rax)

0000000000400de0 <deregister_tm_clones>:
  400de0:	b8 17 41 60 00       	mov    $0x604117,%eax
  400de5:	55                   	push   %rbp
  400de6:	48 2d 10 41 60 00    	sub    $0x604110,%rax
  400dec:	48 83 f8 0e          	cmp    $0xe,%rax
  400df0:	48 89 e5             	mov    %rsp,%rbp
  400df3:	77 02                	ja     400df7 <deregister_tm_clones+0x17>
  400df5:	5d                   	pop    %rbp
  400df6:	c3                   	retq   
  400df7:	b8 00 00 00 00       	mov    $0x0,%eax
  400dfc:	48 85 c0             	test   %rax,%rax
  400dff:	74 f4                	je     400df5 <deregister_tm_clones+0x15>
  400e01:	5d                   	pop    %rbp
  400e02:	bf 10 41 60 00       	mov    $0x604110,%edi
  400e07:	ff e0                	jmpq   *%rax
  400e09:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000400e10 <register_tm_clones>:
  400e10:	b8 10 41 60 00       	mov    $0x604110,%eax
  400e15:	55                   	push   %rbp
  400e16:	48 2d 10 41 60 00    	sub    $0x604110,%rax
  400e1c:	48 c1 f8 03          	sar    $0x3,%rax
  400e20:	48 89 e5             	mov    %rsp,%rbp
  400e23:	48 89 c2             	mov    %rax,%rdx
  400e26:	48 c1 ea 3f          	shr    $0x3f,%rdx
  400e2a:	48 01 d0             	add    %rdx,%rax
  400e2d:	48 d1 f8             	sar    %rax
  400e30:	75 02                	jne    400e34 <register_tm_clones+0x24>
  400e32:	5d                   	pop    %rbp
  400e33:	c3                   	retq   
  400e34:	ba 00 00 00 00       	mov    $0x0,%edx
  400e39:	48 85 d2             	test   %rdx,%rdx
  400e3c:	74 f4                	je     400e32 <register_tm_clones+0x22>
  400e3e:	5d                   	pop    %rbp
  400e3f:	48 89 c6             	mov    %rax,%rsi
  400e42:	bf 10 41 60 00       	mov    $0x604110,%edi
  400e47:	ff e2                	jmpq   *%rdx
  400e49:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000400e50 <__do_global_dtors_aux>:
  400e50:	80 3d f9 32 20 00 00 	cmpb   $0x0,0x2032f9(%rip)        # 604150 <completed.6272>
  400e57:	75 11                	jne    400e6a <__do_global_dtors_aux+0x1a>
  400e59:	55                   	push   %rbp
  400e5a:	48 89 e5             	mov    %rsp,%rbp
  400e5d:	e8 7e ff ff ff       	callq  400de0 <deregister_tm_clones>
  400e62:	5d                   	pop    %rbp
  400e63:	c6 05 e6 32 20 00 01 	movb   $0x1,0x2032e6(%rip)        # 604150 <completed.6272>
  400e6a:	f3 c3                	repz retq 
  400e6c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400e70 <frame_dummy>:
  400e70:	48 83 3d 20 2c 20 00 	cmpq   $0x0,0x202c20(%rip)        # 603a98 <__JCR_END__>
  400e77:	00 
  400e78:	74 1e                	je     400e98 <frame_dummy+0x28>
  400e7a:	b8 00 00 00 00       	mov    $0x0,%eax
  400e7f:	48 85 c0             	test   %rax,%rax
  400e82:	74 14                	je     400e98 <frame_dummy+0x28>
  400e84:	55                   	push   %rbp
  400e85:	bf 98 3a 60 00       	mov    $0x603a98,%edi
  400e8a:	48 89 e5             	mov    %rsp,%rbp
  400e8d:	ff d0                	callq  *%rax
  400e8f:	5d                   	pop    %rbp
  400e90:	e9 7b ff ff ff       	jmpq   400e10 <register_tm_clones>
  400e95:	0f 1f 00             	nopl   (%rax)
  400e98:	e9 73 ff ff ff       	jmpq   400e10 <register_tm_clones>
  400e9d:	0f 1f 00             	nopl   (%rax)

0000000000400ea0 <usage>:
  400ea0:	48 83 ec 08          	sub    $0x8,%rsp
  400ea4:	48 89 fe             	mov    %rdi,%rsi
  400ea7:	83 3d da 32 20 00 00 	cmpl   $0x0,0x2032da(%rip)        # 604188 <is_checker>
  400eae:	74 39                	je     400ee9 <usage+0x49>
  400eb0:	bf 70 2b 40 00       	mov    $0x402b70,%edi
  400eb5:	b8 00 00 00 00       	mov    $0x0,%eax
  400eba:	e8 41 fd ff ff       	callq  400c00 <printf@plt>
  400ebf:	bf a8 2b 40 00       	mov    $0x402ba8,%edi
  400ec4:	e8 07 fd ff ff       	callq  400bd0 <puts@plt>
  400ec9:	bf 20 2d 40 00       	mov    $0x402d20,%edi
  400ece:	e8 fd fc ff ff       	callq  400bd0 <puts@plt>
  400ed3:	bf d0 2b 40 00       	mov    $0x402bd0,%edi
  400ed8:	e8 f3 fc ff ff       	callq  400bd0 <puts@plt>
  400edd:	bf 3a 2d 40 00       	mov    $0x402d3a,%edi
  400ee2:	e8 e9 fc ff ff       	callq  400bd0 <puts@plt>
  400ee7:	eb 2d                	jmp    400f16 <usage+0x76>
  400ee9:	bf 56 2d 40 00       	mov    $0x402d56,%edi
  400eee:	b8 00 00 00 00       	mov    $0x0,%eax
  400ef3:	e8 08 fd ff ff       	callq  400c00 <printf@plt>
  400ef8:	bf f8 2b 40 00       	mov    $0x402bf8,%edi
  400efd:	e8 ce fc ff ff       	callq  400bd0 <puts@plt>
  400f02:	bf 20 2c 40 00       	mov    $0x402c20,%edi
  400f07:	e8 c4 fc ff ff       	callq  400bd0 <puts@plt>
  400f0c:	bf 74 2d 40 00       	mov    $0x402d74,%edi
  400f11:	e8 ba fc ff ff       	callq  400bd0 <puts@plt>
  400f16:	bf 00 00 00 00       	mov    $0x0,%edi
  400f1b:	e8 40 fe ff ff       	callq  400d60 <exit@plt>

0000000000400f20 <initialize_target>:
  400f20:	55                   	push   %rbp
  400f21:	53                   	push   %rbx
  400f22:	48 81 ec 08 21 00 00 	sub    $0x2108,%rsp
  400f29:	89 f5                	mov    %esi,%ebp
  400f2b:	89 3d 47 32 20 00    	mov    %edi,0x203247(%rip)        # 604178 <check_level>
  400f31:	8b 3d 91 2e 20 00    	mov    0x202e91(%rip),%edi        # 603dc8 <target_id>
  400f37:	e8 52 1b 00 00       	callq  402a8e <gencookie>
  400f3c:	89 05 42 32 20 00    	mov    %eax,0x203242(%rip)        # 604184 <cookie>
  400f42:	89 c7                	mov    %eax,%edi
  400f44:	e8 45 1b 00 00       	callq  402a8e <gencookie>
  400f49:	89 05 31 32 20 00    	mov    %eax,0x203231(%rip)        # 604180 <authkey>
  400f4f:	8b 05 73 2e 20 00    	mov    0x202e73(%rip),%eax        # 603dc8 <target_id>
  400f55:	8d 78 01             	lea    0x1(%rax),%edi
  400f58:	e8 43 fc ff ff       	callq  400ba0 <srandom@plt>
  400f5d:	e8 5e fd ff ff       	callq  400cc0 <random@plt>
  400f62:	89 c7                	mov    %eax,%edi
  400f64:	e8 c7 02 00 00       	callq  401230 <scramble>
  400f69:	89 c3                	mov    %eax,%ebx
  400f6b:	ba 00 00 00 00       	mov    $0x0,%edx
  400f70:	85 ed                	test   %ebp,%ebp
  400f72:	74 18                	je     400f8c <initialize_target+0x6c>
  400f74:	bf 00 00 00 00       	mov    $0x0,%edi
  400f79:	e8 32 fd ff ff       	callq  400cb0 <time@plt>
  400f7e:	89 c7                	mov    %eax,%edi
  400f80:	e8 1b fc ff ff       	callq  400ba0 <srandom@plt>
  400f85:	e8 36 fd ff ff       	callq  400cc0 <random@plt>
  400f8a:	89 c2                	mov    %eax,%edx
  400f8c:	01 da                	add    %ebx,%edx
  400f8e:	0f b7 d2             	movzwl %dx,%edx
  400f91:	8d 04 d5 00 01 00 00 	lea    0x100(,%rdx,8),%eax
  400f98:	89 c0                	mov    %eax,%eax
  400f9a:	48 89 05 5f 31 20 00 	mov    %rax,0x20315f(%rip)        # 604100 <buf_offset>
  400fa1:	c6 05 00 3e 20 00 63 	movb   $0x63,0x203e00(%rip)        # 604da8 <target_prefix>
  400fa8:	83 3d 59 31 20 00 00 	cmpl   $0x0,0x203159(%rip)        # 604108 <notify>
  400faf:	0f 84 af 00 00 00    	je     401064 <initialize_target+0x144>
  400fb5:	83 3d cc 31 20 00 00 	cmpl   $0x0,0x2031cc(%rip)        # 604188 <is_checker>
  400fbc:	0f 85 a2 00 00 00    	jne    401064 <initialize_target+0x144>
  400fc2:	be 00 01 00 00       	mov    $0x100,%esi
  400fc7:	48 89 e7             	mov    %rsp,%rdi
  400fca:	e8 71 fd ff ff       	callq  400d40 <gethostname@plt>
  400fcf:	bb 00 00 00 00       	mov    $0x0,%ebx
  400fd4:	85 c0                	test   %eax,%eax
  400fd6:	74 23                	je     400ffb <initialize_target+0xdb>
  400fd8:	bf 50 2c 40 00       	mov    $0x402c50,%edi
  400fdd:	e8 ee fb ff ff       	callq  400bd0 <puts@plt>
  400fe2:	bf 08 00 00 00       	mov    $0x8,%edi
  400fe7:	e8 74 fd ff ff       	callq  400d60 <exit@plt>
  400fec:	48 89 e6             	mov    %rsp,%rsi
  400fef:	e8 8c fb ff ff       	callq  400b80 <strcasecmp@plt>
  400ff4:	85 c0                	test   %eax,%eax
  400ff6:	74 1a                	je     401012 <initialize_target+0xf2>
  400ff8:	83 c3 01             	add    $0x1,%ebx
  400ffb:	48 63 c3             	movslq %ebx,%rax
  400ffe:	48 8b 3c c5 e0 3d 60 	mov    0x603de0(,%rax,8),%rdi
  401005:	00 
  401006:	48 85 ff             	test   %rdi,%rdi
  401009:	75 e1                	jne    400fec <initialize_target+0xcc>
  40100b:	b8 00 00 00 00       	mov    $0x0,%eax
  401010:	eb 05                	jmp    401017 <initialize_target+0xf7>
  401012:	b8 01 00 00 00       	mov    $0x1,%eax
  401017:	85 c0                	test   %eax,%eax
  401019:	75 17                	jne    401032 <initialize_target+0x112>
  40101b:	48 89 e6             	mov    %rsp,%rsi
  40101e:	bf 88 2c 40 00       	mov    $0x402c88,%edi
  401023:	e8 d8 fb ff ff       	callq  400c00 <printf@plt>
  401028:	bf 08 00 00 00       	mov    $0x8,%edi
  40102d:	e8 2e fd ff ff       	callq  400d60 <exit@plt>
  401032:	48 8d bc 24 00 01 00 	lea    0x100(%rsp),%rdi
  401039:	00 
  40103a:	e8 d8 17 00 00       	callq  402817 <init_driver>
  40103f:	85 c0                	test   %eax,%eax
  401041:	79 21                	jns    401064 <initialize_target+0x144>
  401043:	48 8d b4 24 00 01 00 	lea    0x100(%rsp),%rsi
  40104a:	00 
  40104b:	bf c8 2c 40 00       	mov    $0x402cc8,%edi
  401050:	b8 00 00 00 00       	mov    $0x0,%eax
  401055:	e8 a6 fb ff ff       	callq  400c00 <printf@plt>
  40105a:	bf 08 00 00 00       	mov    $0x8,%edi
  40105f:	e8 fc fc ff ff       	callq  400d60 <exit@plt>
  401064:	48 81 c4 08 21 00 00 	add    $0x2108,%rsp
  40106b:	5b                   	pop    %rbx
  40106c:	5d                   	pop    %rbp
  40106d:	c3                   	retq   

000000000040106e <main>:
  40106e:	41 56                	push   %r14
  401070:	41 55                	push   %r13
  401072:	41 54                	push   %r12
  401074:	55                   	push   %rbp
  401075:	53                   	push   %rbx
  401076:	41 89 fc             	mov    %edi,%r12d
  401079:	48 89 f3             	mov    %rsi,%rbx
  40107c:	be cd 1b 40 00       	mov    $0x401bcd,%esi
  401081:	bf 0b 00 00 00       	mov    $0xb,%edi
  401086:	e8 e5 fb ff ff       	callq  400c70 <signal@plt>
  40108b:	be 7f 1b 40 00       	mov    $0x401b7f,%esi
  401090:	bf 07 00 00 00       	mov    $0x7,%edi
  401095:	e8 d6 fb ff ff       	callq  400c70 <signal@plt>
  40109a:	be 1b 1c 40 00       	mov    $0x401c1b,%esi
  40109f:	bf 04 00 00 00       	mov    $0x4,%edi
  4010a4:	e8 c7 fb ff ff       	callq  400c70 <signal@plt>
  4010a9:	bd 8d 2d 40 00       	mov    $0x402d8d,%ebp
  4010ae:	83 3d d3 30 20 00 00 	cmpl   $0x0,0x2030d3(%rip)        # 604188 <is_checker>
  4010b5:	74 1e                	je     4010d5 <main+0x67>
  4010b7:	be 69 1c 40 00       	mov    $0x401c69,%esi
  4010bc:	bf 0e 00 00 00       	mov    $0xe,%edi
  4010c1:	e8 aa fb ff ff       	callq  400c70 <signal@plt>
  4010c6:	bf 05 00 00 00       	mov    $0x5,%edi
  4010cb:	e8 50 fb ff ff       	callq  400c20 <alarm@plt>
  4010d0:	bd 92 2d 40 00       	mov    $0x402d92,%ebp
  4010d5:	48 8b 05 44 30 20 00 	mov    0x203044(%rip),%rax        # 604120 <stdin@@GLIBC_2.2.5>
  4010dc:	48 89 05 8d 30 20 00 	mov    %rax,0x20308d(%rip)        # 604170 <infile>
  4010e3:	41 bd 00 00 00 00    	mov    $0x0,%r13d
  4010e9:	41 be 00 00 00 00    	mov    $0x0,%r14d
  4010ef:	e9 b9 00 00 00       	jmpq   4011ad <main+0x13f>
  4010f4:	83 e8 61             	sub    $0x61,%eax
  4010f7:	3c 10                	cmp    $0x10,%al
  4010f9:	0f 87 93 00 00 00    	ja     401192 <main+0x124>
  4010ff:	0f b6 c0             	movzbl %al,%eax
  401102:	ff 24 c5 d8 2d 40 00 	jmpq   *0x402dd8(,%rax,8)
  401109:	48 8b 3b             	mov    (%rbx),%rdi
  40110c:	e8 8f fd ff ff       	callq  400ea0 <usage>
  401111:	be 6d 30 40 00       	mov    $0x40306d,%esi
  401116:	48 8b 3d 23 30 20 00 	mov    0x203023(%rip),%rdi        # 604140 <optarg@@GLIBC_2.2.5>
  40111d:	e8 ee fb ff ff       	callq  400d10 <fopen@plt>
  401122:	48 89 05 47 30 20 00 	mov    %rax,0x203047(%rip)        # 604170 <infile>
  401129:	48 85 c0             	test   %rax,%rax
  40112c:	75 7f                	jne    4011ad <main+0x13f>
  40112e:	48 8b 15 0b 30 20 00 	mov    0x20300b(%rip),%rdx        # 604140 <optarg@@GLIBC_2.2.5>
  401135:	be 9a 2d 40 00       	mov    $0x402d9a,%esi
  40113a:	48 8b 3d 07 30 20 00 	mov    0x203007(%rip),%rdi        # 604148 <stderr@@GLIBC_2.2.5>
  401141:	e8 4a fb ff ff       	callq  400c90 <fprintf@plt>
  401146:	b8 01 00 00 00       	mov    $0x1,%eax
  40114b:	e9 d6 00 00 00       	jmpq   401226 <main+0x1b8>
  401150:	ba 10 00 00 00       	mov    $0x10,%edx
  401155:	be 00 00 00 00       	mov    $0x0,%esi
  40115a:	48 8b 3d df 2f 20 00 	mov    0x202fdf(%rip),%rdi        # 604140 <optarg@@GLIBC_2.2.5>
  401161:	e8 ca fb ff ff       	callq  400d30 <strtoul@plt>
  401166:	41 89 c6             	mov    %eax,%r14d
  401169:	eb 42                	jmp    4011ad <main+0x13f>
  40116b:	ba 0a 00 00 00       	mov    $0xa,%edx
  401170:	be 00 00 00 00       	mov    $0x0,%esi
  401175:	48 8b 3d c4 2f 20 00 	mov    0x202fc4(%rip),%rdi        # 604140 <optarg@@GLIBC_2.2.5>
  40117c:	e8 1f fb ff ff       	callq  400ca0 <strtol@plt>
  401181:	41 89 c5             	mov    %eax,%r13d
  401184:	eb 27                	jmp    4011ad <main+0x13f>
  401186:	c7 05 78 2f 20 00 00 	movl   $0x0,0x202f78(%rip)        # 604108 <notify>
  40118d:	00 00 00 
  401190:	eb 1b                	jmp    4011ad <main+0x13f>
  401192:	40 0f be f6          	movsbl %sil,%esi
  401196:	bf b7 2d 40 00       	mov    $0x402db7,%edi
  40119b:	b8 00 00 00 00       	mov    $0x0,%eax
  4011a0:	e8 5b fa ff ff       	callq  400c00 <printf@plt>
  4011a5:	48 8b 3b             	mov    (%rbx),%rdi
  4011a8:	e8 f3 fc ff ff       	callq  400ea0 <usage>
  4011ad:	48 89 ea             	mov    %rbp,%rdx
  4011b0:	48 89 de             	mov    %rbx,%rsi
  4011b3:	44 89 e7             	mov    %r12d,%edi
  4011b6:	e8 65 fb ff ff       	callq  400d20 <getopt@plt>
  4011bb:	89 c6                	mov    %eax,%esi
  4011bd:	3c ff                	cmp    $0xff,%al
  4011bf:	0f 85 2f ff ff ff    	jne    4010f4 <main+0x86>
  4011c5:	be 00 00 00 00       	mov    $0x0,%esi
  4011ca:	44 89 ef             	mov    %r13d,%edi
  4011cd:	e8 4e fd ff ff       	callq  400f20 <initialize_target>
  4011d2:	83 3d af 2f 20 00 00 	cmpl   $0x0,0x202faf(%rip)        # 604188 <is_checker>
  4011d9:	74 25                	je     401200 <main+0x192>
  4011db:	44 3b 35 9e 2f 20 00 	cmp    0x202f9e(%rip),%r14d        # 604180 <authkey>
  4011e2:	74 1c                	je     401200 <main+0x192>
  4011e4:	44 89 f6             	mov    %r14d,%esi
  4011e7:	bf f0 2c 40 00       	mov    $0x402cf0,%edi
  4011ec:	b8 00 00 00 00       	mov    $0x0,%eax
  4011f1:	e8 0a fa ff ff       	callq  400c00 <printf@plt>
  4011f6:	b8 00 00 00 00       	mov    $0x0,%eax
  4011fb:	e8 8b 06 00 00       	callq  40188b <check_fail>
  401200:	8b 35 7e 2f 20 00    	mov    0x202f7e(%rip),%esi        # 604184 <cookie>
  401206:	bf ca 2d 40 00       	mov    $0x402dca,%edi
  40120b:	b8 00 00 00 00       	mov    $0x0,%eax
  401210:	e8 eb f9 ff ff       	callq  400c00 <printf@plt>
  401215:	48 8b 3d e4 2e 20 00 	mov    0x202ee4(%rip),%rdi        # 604100 <buf_offset>
  40121c:	e8 17 0b 00 00       	callq  401d38 <stable_launch>
  401221:	b8 00 00 00 00       	mov    $0x0,%eax
  401226:	5b                   	pop    %rbx
  401227:	5d                   	pop    %rbp
  401228:	41 5c                	pop    %r12
  40122a:	41 5d                	pop    %r13
  40122c:	41 5e                	pop    %r14
  40122e:	c3                   	retq   
  40122f:	90                   	nop

0000000000401230 <scramble>:
  401230:	b8 00 00 00 00       	mov    $0x0,%eax
  401235:	eb 11                	jmp    401248 <scramble+0x18>
  401237:	69 c8 b9 44 00 00    	imul   $0x44b9,%eax,%ecx
  40123d:	01 f9                	add    %edi,%ecx
  40123f:	89 c2                	mov    %eax,%edx
  401241:	89 4c 94 d0          	mov    %ecx,-0x30(%rsp,%rdx,4)
  401245:	83 c0 01             	add    $0x1,%eax
  401248:	83 f8 09             	cmp    $0x9,%eax
  40124b:	76 ea                	jbe    401237 <scramble+0x7>
  40124d:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  401251:	69 c0 f2 56 00 00    	imul   $0x56f2,%eax,%eax
  401257:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  40125b:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  40125f:	69 c0 74 e0 00 00    	imul   $0xe074,%eax,%eax
  401265:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  401269:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  40126d:	69 c0 e3 cf 00 00    	imul   $0xcfe3,%eax,%eax
  401273:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  401277:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  40127b:	69 c0 73 ed 00 00    	imul   $0xed73,%eax,%eax
  401281:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  401285:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  401289:	69 c0 f5 13 00 00    	imul   $0x13f5,%eax,%eax
  40128f:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  401293:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  401297:	69 c0 21 8e 00 00    	imul   $0x8e21,%eax,%eax
  40129d:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  4012a1:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  4012a5:	69 c0 2c 63 00 00    	imul   $0x632c,%eax,%eax
  4012ab:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  4012af:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  4012b3:	69 c0 e5 a2 00 00    	imul   $0xa2e5,%eax,%eax
  4012b9:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  4012bd:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  4012c1:	69 c0 9c 81 00 00    	imul   $0x819c,%eax,%eax
  4012c7:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  4012cb:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  4012cf:	69 c0 b3 87 00 00    	imul   $0x87b3,%eax,%eax
  4012d5:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  4012d9:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  4012dd:	69 c0 58 e0 00 00    	imul   $0xe058,%eax,%eax
  4012e3:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  4012e7:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  4012eb:	69 c0 9f 9c 00 00    	imul   $0x9c9f,%eax,%eax
  4012f1:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  4012f5:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  4012f9:	69 c0 a1 5b 00 00    	imul   $0x5ba1,%eax,%eax
  4012ff:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  401303:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  401307:	69 c0 7c a1 00 00    	imul   $0xa17c,%eax,%eax
  40130d:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  401311:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  401315:	69 c0 ab 4a 00 00    	imul   $0x4aab,%eax,%eax
  40131b:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  40131f:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  401323:	69 c0 26 19 00 00    	imul   $0x1926,%eax,%eax
  401329:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  40132d:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  401331:	69 c0 93 0b 00 00    	imul   $0xb93,%eax,%eax
  401337:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  40133b:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  40133f:	69 c0 98 3a 00 00    	imul   $0x3a98,%eax,%eax
  401345:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  401349:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  40134d:	69 c0 a9 49 00 00    	imul   $0x49a9,%eax,%eax
  401353:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  401357:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  40135b:	69 c0 72 24 00 00    	imul   $0x2472,%eax,%eax
  401361:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  401365:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  401369:	69 c0 f9 3a 00 00    	imul   $0x3af9,%eax,%eax
  40136f:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  401373:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  401377:	69 c0 66 c9 00 00    	imul   $0xc966,%eax,%eax
  40137d:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  401381:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  401385:	69 c0 01 42 00 00    	imul   $0x4201,%eax,%eax
  40138b:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  40138f:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  401393:	69 c0 e2 1e 00 00    	imul   $0x1ee2,%eax,%eax
  401399:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  40139d:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  4013a1:	69 c0 a6 77 00 00    	imul   $0x77a6,%eax,%eax
  4013a7:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  4013ab:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  4013af:	69 c0 e0 78 00 00    	imul   $0x78e0,%eax,%eax
  4013b5:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  4013b9:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  4013bd:	69 c0 4e 80 00 00    	imul   $0x804e,%eax,%eax
  4013c3:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  4013c7:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  4013cb:	69 c0 b8 8f 00 00    	imul   $0x8fb8,%eax,%eax
  4013d1:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  4013d5:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  4013d9:	69 c0 cc ab 00 00    	imul   $0xabcc,%eax,%eax
  4013df:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  4013e3:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  4013e7:	69 c0 5d b0 00 00    	imul   $0xb05d,%eax,%eax
  4013ed:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  4013f1:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  4013f5:	69 c0 3a 64 00 00    	imul   $0x643a,%eax,%eax
  4013fb:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  4013ff:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  401403:	69 c0 14 98 00 00    	imul   $0x9814,%eax,%eax
  401409:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  40140d:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  401411:	69 c0 1e c3 00 00    	imul   $0xc31e,%eax,%eax
  401417:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  40141b:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  40141f:	69 c0 43 4b 00 00    	imul   $0x4b43,%eax,%eax
  401425:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  401429:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  40142d:	69 c0 b8 fa 00 00    	imul   $0xfab8,%eax,%eax
  401433:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  401437:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  40143b:	69 c0 66 6a 00 00    	imul   $0x6a66,%eax,%eax
  401441:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  401445:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  401449:	69 c0 48 22 00 00    	imul   $0x2248,%eax,%eax
  40144f:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  401453:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  401457:	69 c0 d7 d3 00 00    	imul   $0xd3d7,%eax,%eax
  40145d:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  401461:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  401465:	69 c0 18 a0 00 00    	imul   $0xa018,%eax,%eax
  40146b:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  40146f:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  401473:	69 c0 e6 27 00 00    	imul   $0x27e6,%eax,%eax
  401479:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  40147d:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  401481:	69 c0 4f 99 00 00    	imul   $0x994f,%eax,%eax
  401487:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  40148b:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  40148f:	69 c0 be 6f 00 00    	imul   $0x6fbe,%eax,%eax
  401495:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  401499:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  40149d:	69 c0 46 b6 00 00    	imul   $0xb646,%eax,%eax
  4014a3:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  4014a7:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  4014ab:	69 c0 8d f5 00 00    	imul   $0xf58d,%eax,%eax
  4014b1:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  4014b5:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  4014b9:	69 c0 aa 30 00 00    	imul   $0x30aa,%eax,%eax
  4014bf:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  4014c3:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  4014c7:	69 c0 8a 58 00 00    	imul   $0x588a,%eax,%eax
  4014cd:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  4014d1:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  4014d5:	69 c0 6d 6f 00 00    	imul   $0x6f6d,%eax,%eax
  4014db:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  4014df:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  4014e3:	69 c0 b1 04 00 00    	imul   $0x4b1,%eax,%eax
  4014e9:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  4014ed:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  4014f1:	69 c0 4c c3 00 00    	imul   $0xc34c,%eax,%eax
  4014f7:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  4014fb:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  4014ff:	69 c0 53 3f 00 00    	imul   $0x3f53,%eax,%eax
  401505:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  401509:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  40150d:	69 c0 a9 bf 00 00    	imul   $0xbfa9,%eax,%eax
  401513:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  401517:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  40151b:	69 c0 b6 f3 00 00    	imul   $0xf3b6,%eax,%eax
  401521:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  401525:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  401529:	69 c0 86 dd 00 00    	imul   $0xdd86,%eax,%eax
  40152f:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  401533:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  401537:	69 c0 3a 46 00 00    	imul   $0x463a,%eax,%eax
  40153d:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  401541:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  401545:	69 c0 47 ba 00 00    	imul   $0xba47,%eax,%eax
  40154b:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  40154f:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  401553:	69 c0 5d 95 00 00    	imul   $0x955d,%eax,%eax
  401559:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  40155d:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  401561:	69 c0 e8 0e 00 00    	imul   $0xee8,%eax,%eax
  401567:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  40156b:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  40156f:	69 c0 34 6d 00 00    	imul   $0x6d34,%eax,%eax
  401575:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  401579:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  40157d:	69 c0 91 04 00 00    	imul   $0x491,%eax,%eax
  401583:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  401587:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  40158b:	69 c0 41 27 00 00    	imul   $0x2741,%eax,%eax
  401591:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  401595:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  401599:	69 c0 ab 08 00 00    	imul   $0x8ab,%eax,%eax
  40159f:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  4015a3:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  4015a7:	69 c0 20 ca 00 00    	imul   $0xca20,%eax,%eax
  4015ad:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  4015b1:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  4015b5:	69 c0 6b 70 00 00    	imul   $0x706b,%eax,%eax
  4015bb:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  4015bf:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  4015c3:	69 c0 a4 aa 00 00    	imul   $0xaaa4,%eax,%eax
  4015c9:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  4015cd:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  4015d1:	69 c0 c6 1e 00 00    	imul   $0x1ec6,%eax,%eax
  4015d7:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  4015db:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  4015df:	69 c0 bb f1 00 00    	imul   $0xf1bb,%eax,%eax
  4015e5:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  4015e9:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  4015ed:	69 c0 b1 93 00 00    	imul   $0x93b1,%eax,%eax
  4015f3:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  4015f7:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  4015fb:	69 c0 61 c0 00 00    	imul   $0xc061,%eax,%eax
  401601:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  401605:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  401609:	69 c0 00 ad 00 00    	imul   $0xad00,%eax,%eax
  40160f:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  401613:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  401617:	69 c0 d6 ee 00 00    	imul   $0xeed6,%eax,%eax
  40161d:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  401621:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  401625:	69 c0 bd 74 00 00    	imul   $0x74bd,%eax,%eax
  40162b:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  40162f:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  401633:	69 c0 de ba 00 00    	imul   $0xbade,%eax,%eax
  401639:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  40163d:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  401641:	69 c0 4f 89 00 00    	imul   $0x894f,%eax,%eax
  401647:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  40164b:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  40164f:	69 c0 d3 48 00 00    	imul   $0x48d3,%eax,%eax
  401655:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  401659:	ba 00 00 00 00       	mov    $0x0,%edx
  40165e:	b8 00 00 00 00       	mov    $0x0,%eax
  401663:	eb 0b                	jmp    401670 <scramble+0x440>
  401665:	89 d1                	mov    %edx,%ecx
  401667:	8b 4c 8c d0          	mov    -0x30(%rsp,%rcx,4),%ecx
  40166b:	01 c8                	add    %ecx,%eax
  40166d:	83 c2 01             	add    $0x1,%edx
  401670:	83 fa 09             	cmp    $0x9,%edx
  401673:	76 f0                	jbe    401665 <scramble+0x435>
  401675:	f3 c3                	repz retq 
  401677:	90                   	nop

0000000000401678 <getbuf>:
  401678:	48 83 ec 28          	sub    $0x28,%rsp
  40167c:	48 89 e7             	mov    %rsp,%rdi
  40167f:	e8 36 02 00 00       	callq  4018ba <Gets>
  401684:	b8 01 00 00 00       	mov    $0x1,%eax
  401689:	48 83 c4 28          	add    $0x28,%rsp
  40168d:	c3                   	retq   
  40168e:	66 90                	xchg   %ax,%ax

0000000000401690 <touch1>:
  401690:	48 83 ec 08          	sub    $0x8,%rsp
  401694:	c7 05 de 2a 20 00 01 	movl   $0x1,0x202ade(%rip)        # 60417c <vlevel>
  40169b:	00 00 00 
  40169e:	bf c0 2e 40 00       	mov    $0x402ec0,%edi
  4016a3:	e8 28 f5 ff ff       	callq  400bd0 <puts@plt>
  4016a8:	bf 01 00 00 00       	mov    $0x1,%edi
  4016ad:	e8 f3 03 00 00       	callq  401aa5 <validate>
  4016b2:	bf 00 00 00 00       	mov    $0x0,%edi
  4016b7:	e8 a4 f6 ff ff       	callq  400d60 <exit@plt>

00000000004016bc <touch2>:
  4016bc:	48 83 ec 08          	sub    $0x8,%rsp
  4016c0:	89 fe                	mov    %edi,%esi
  4016c2:	c7 05 b0 2a 20 00 02 	movl   $0x2,0x202ab0(%rip)        # 60417c <vlevel>
  4016c9:	00 00 00 
  4016cc:	3b 3d b2 2a 20 00    	cmp    0x202ab2(%rip),%edi        # 604184 <cookie>
  4016d2:	75 1b                	jne    4016ef <touch2+0x33>
  4016d4:	bf e8 2e 40 00       	mov    $0x402ee8,%edi
  4016d9:	b8 00 00 00 00       	mov    $0x0,%eax
  4016de:	e8 1d f5 ff ff       	callq  400c00 <printf@plt>
  4016e3:	bf 02 00 00 00       	mov    $0x2,%edi
  4016e8:	e8 b8 03 00 00       	callq  401aa5 <validate>
  4016ed:	eb 19                	jmp    401708 <touch2+0x4c>
  4016ef:	bf 10 2f 40 00       	mov    $0x402f10,%edi
  4016f4:	b8 00 00 00 00       	mov    $0x0,%eax
  4016f9:	e8 02 f5 ff ff       	callq  400c00 <printf@plt>
  4016fe:	bf 02 00 00 00       	mov    $0x2,%edi
  401703:	e8 4f 04 00 00       	callq  401b57 <fail>
  401708:	bf 00 00 00 00       	mov    $0x0,%edi
  40170d:	e8 4e f6 ff ff       	callq  400d60 <exit@plt>

0000000000401712 <hexmatch>:
  401712:	41 54                	push   %r12
  401714:	55                   	push   %rbp
  401715:	53                   	push   %rbx
  401716:	48 83 ec 70          	sub    $0x70,%rsp
  40171a:	41 89 fc             	mov    %edi,%r12d
  40171d:	48 89 f5             	mov    %rsi,%rbp
  401720:	e8 9b f5 ff ff       	callq  400cc0 <random@plt>
  401725:	48 89 c1             	mov    %rax,%rcx
  401728:	48 ba 0b d7 a3 70 3d 	movabs $0xa3d70a3d70a3d70b,%rdx
  40172f:	0a d7 a3 
  401732:	48 f7 ea             	imul   %rdx
  401735:	48 8d 04 0a          	lea    (%rdx,%rcx,1),%rax
  401739:	48 c1 f8 06          	sar    $0x6,%rax
  40173d:	48 89 ce             	mov    %rcx,%rsi
  401740:	48 c1 fe 3f          	sar    $0x3f,%rsi
  401744:	48 29 f0             	sub    %rsi,%rax
  401747:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  40174b:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  40174f:	48 c1 e0 02          	shl    $0x2,%rax
  401753:	48 29 c1             	sub    %rax,%rcx
  401756:	48 8d 1c 0c          	lea    (%rsp,%rcx,1),%rbx
  40175a:	44 89 e2             	mov    %r12d,%edx
  40175d:	be dd 2e 40 00       	mov    $0x402edd,%esi
  401762:	48 89 df             	mov    %rbx,%rdi
  401765:	b8 00 00 00 00       	mov    $0x0,%eax
  40176a:	e8 e1 f5 ff ff       	callq  400d50 <sprintf@plt>
  40176f:	ba 09 00 00 00       	mov    $0x9,%edx
  401774:	48 89 de             	mov    %rbx,%rsi
  401777:	48 89 ef             	mov    %rbp,%rdi
  40177a:	e8 31 f4 ff ff       	callq  400bb0 <strncmp@plt>
  40177f:	85 c0                	test   %eax,%eax
  401781:	0f 94 c0             	sete   %al
  401784:	0f b6 c0             	movzbl %al,%eax
  401787:	48 83 c4 70          	add    $0x70,%rsp
  40178b:	5b                   	pop    %rbx
  40178c:	5d                   	pop    %rbp
  40178d:	41 5c                	pop    %r12
  40178f:	c3                   	retq   

0000000000401790 <touch3>:
  401790:	53                   	push   %rbx
  401791:	48 89 fb             	mov    %rdi,%rbx
  401794:	c7 05 de 29 20 00 03 	movl   $0x3,0x2029de(%rip)        # 60417c <vlevel>
  40179b:	00 00 00 
  40179e:	48 89 fe             	mov    %rdi,%rsi
  4017a1:	8b 3d dd 29 20 00    	mov    0x2029dd(%rip),%edi        # 604184 <cookie>
  4017a7:	e8 66 ff ff ff       	callq  401712 <hexmatch>
  4017ac:	85 c0                	test   %eax,%eax
  4017ae:	74 1e                	je     4017ce <touch3+0x3e>
  4017b0:	48 89 de             	mov    %rbx,%rsi
  4017b3:	bf 38 2f 40 00       	mov    $0x402f38,%edi
  4017b8:	b8 00 00 00 00       	mov    $0x0,%eax
  4017bd:	e8 3e f4 ff ff       	callq  400c00 <printf@plt>
  4017c2:	bf 03 00 00 00       	mov    $0x3,%edi
  4017c7:	e8 d9 02 00 00       	callq  401aa5 <validate>
  4017cc:	eb 1c                	jmp    4017ea <touch3+0x5a>
  4017ce:	48 89 de             	mov    %rbx,%rsi
  4017d1:	bf 60 2f 40 00       	mov    $0x402f60,%edi
  4017d6:	b8 00 00 00 00       	mov    $0x0,%eax
  4017db:	e8 20 f4 ff ff       	callq  400c00 <printf@plt>
  4017e0:	bf 03 00 00 00       	mov    $0x3,%edi
  4017e5:	e8 6d 03 00 00       	callq  401b57 <fail>
  4017ea:	bf 00 00 00 00       	mov    $0x0,%edi
  4017ef:	e8 6c f5 ff ff       	callq  400d60 <exit@plt>

00000000004017f4 <test>:
  4017f4:	48 83 ec 08          	sub    $0x8,%rsp
  4017f8:	b8 00 00 00 00       	mov    $0x0,%eax
  4017fd:	e8 76 fe ff ff       	callq  401678 <getbuf>
  401802:	89 c6                	mov    %eax,%esi
  401804:	bf 88 2f 40 00       	mov    $0x402f88,%edi
  401809:	b8 00 00 00 00       	mov    $0x0,%eax
  40180e:	e8 ed f3 ff ff       	callq  400c00 <printf@plt>
  401813:	48 83 c4 08          	add    $0x8,%rsp
  401817:	c3                   	retq   
  401818:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40181f:	00 

0000000000401820 <save_char>:
  401820:	8b 05 7e 35 20 00    	mov    0x20357e(%rip),%eax        # 604da4 <gets_cnt>
  401826:	3d ff 03 00 00       	cmp    $0x3ff,%eax
  40182b:	7f 49                	jg     401876 <save_char+0x56>
  40182d:	8d 14 40             	lea    (%rax,%rax,2),%edx
  401830:	89 f9                	mov    %edi,%ecx
  401832:	c1 e9 04             	shr    $0x4,%ecx
  401835:	48 63 c9             	movslq %ecx,%rcx
  401838:	0f b6 b1 b0 32 40 00 	movzbl 0x4032b0(%rcx),%esi
  40183f:	48 63 ca             	movslq %edx,%rcx
  401842:	40 88 b1 a0 41 60 00 	mov    %sil,0x6041a0(%rcx)
  401849:	8d 4a 01             	lea    0x1(%rdx),%ecx
  40184c:	83 e7 0f             	and    $0xf,%edi
  40184f:	0f b6 b7 b0 32 40 00 	movzbl 0x4032b0(%rdi),%esi
  401856:	48 63 c9             	movslq %ecx,%rcx
  401859:	40 88 b1 a0 41 60 00 	mov    %sil,0x6041a0(%rcx)
  401860:	83 c2 02             	add    $0x2,%edx
  401863:	48 63 d2             	movslq %edx,%rdx
  401866:	c6 82 a0 41 60 00 20 	movb   $0x20,0x6041a0(%rdx)
  40186d:	83 c0 01             	add    $0x1,%eax
  401870:	89 05 2e 35 20 00    	mov    %eax,0x20352e(%rip)        # 604da4 <gets_cnt>
  401876:	f3 c3                	repz retq 

0000000000401878 <save_term>:
  401878:	8b 05 26 35 20 00    	mov    0x203526(%rip),%eax        # 604da4 <gets_cnt>
  40187e:	8d 04 40             	lea    (%rax,%rax,2),%eax
  401881:	48 98                	cltq   
  401883:	c6 80 a0 41 60 00 00 	movb   $0x0,0x6041a0(%rax)
  40188a:	c3                   	retq   

000000000040188b <check_fail>:
  40188b:	48 83 ec 08          	sub    $0x8,%rsp
  40188f:	0f be 35 12 35 20 00 	movsbl 0x203512(%rip),%esi        # 604da8 <target_prefix>
  401896:	b9 a0 41 60 00       	mov    $0x6041a0,%ecx
  40189b:	8b 15 d7 28 20 00    	mov    0x2028d7(%rip),%edx        # 604178 <check_level>
  4018a1:	bf ab 2f 40 00       	mov    $0x402fab,%edi
  4018a6:	b8 00 00 00 00       	mov    $0x0,%eax
  4018ab:	e8 50 f3 ff ff       	callq  400c00 <printf@plt>
  4018b0:	bf 01 00 00 00       	mov    $0x1,%edi
  4018b5:	e8 a6 f4 ff ff       	callq  400d60 <exit@plt>

00000000004018ba <Gets>:
  4018ba:	41 54                	push   %r12
  4018bc:	55                   	push   %rbp
  4018bd:	53                   	push   %rbx
  4018be:	49 89 fc             	mov    %rdi,%r12
  4018c1:	c7 05 d9 34 20 00 00 	movl   $0x0,0x2034d9(%rip)        # 604da4 <gets_cnt>
  4018c8:	00 00 00 
  4018cb:	48 89 fb             	mov    %rdi,%rbx
  4018ce:	eb 11                	jmp    4018e1 <Gets+0x27>
  4018d0:	48 8d 6b 01          	lea    0x1(%rbx),%rbp
  4018d4:	88 03                	mov    %al,(%rbx)
  4018d6:	0f b6 f8             	movzbl %al,%edi
  4018d9:	e8 42 ff ff ff       	callq  401820 <save_char>
  4018de:	48 89 eb             	mov    %rbp,%rbx
  4018e1:	48 8b 3d 88 28 20 00 	mov    0x202888(%rip),%rdi        # 604170 <infile>
  4018e8:	e8 e3 f3 ff ff       	callq  400cd0 <_IO_getc@plt>
  4018ed:	83 f8 ff             	cmp    $0xffffffff,%eax
  4018f0:	74 05                	je     4018f7 <Gets+0x3d>
  4018f2:	83 f8 0a             	cmp    $0xa,%eax
  4018f5:	75 d9                	jne    4018d0 <Gets+0x16>
  4018f7:	c6 03 00             	movb   $0x0,(%rbx)
  4018fa:	b8 00 00 00 00       	mov    $0x0,%eax
  4018ff:	e8 74 ff ff ff       	callq  401878 <save_term>
  401904:	4c 89 e0             	mov    %r12,%rax
  401907:	5b                   	pop    %rbx
  401908:	5d                   	pop    %rbp
  401909:	41 5c                	pop    %r12
  40190b:	c3                   	retq   

000000000040190c <notify_server>:
  40190c:	83 3d 75 28 20 00 00 	cmpl   $0x0,0x202875(%rip)        # 604188 <is_checker>
  401913:	0f 85 8a 01 00 00    	jne    401aa3 <notify_server+0x197>
  401919:	53                   	push   %rbx
  40191a:	48 81 ec 10 40 00 00 	sub    $0x4010,%rsp
  401921:	8b 05 7d 34 20 00    	mov    0x20347d(%rip),%eax        # 604da4 <gets_cnt>
  401927:	83 c0 64             	add    $0x64,%eax
  40192a:	3d 00 20 00 00       	cmp    $0x2000,%eax
  40192f:	7e 19                	jle    40194a <notify_server+0x3e>
  401931:	bf e0 30 40 00       	mov    $0x4030e0,%edi
  401936:	b8 00 00 00 00       	mov    $0x0,%eax
  40193b:	e8 c0 f2 ff ff       	callq  400c00 <printf@plt>
  401940:	bf 01 00 00 00       	mov    $0x1,%edi
  401945:	e8 16 f4 ff ff       	callq  400d60 <exit@plt>
  40194a:	89 fb                	mov    %edi,%ebx
  40194c:	44 0f be 0d 54 34 20 	movsbl 0x203454(%rip),%r9d        # 604da8 <target_prefix>
  401953:	00 
  401954:	83 3d ad 27 20 00 00 	cmpl   $0x0,0x2027ad(%rip)        # 604108 <notify>
  40195b:	41 b8 ff ff ff ff    	mov    $0xffffffff,%r8d
  401961:	44 0f 45 05 17 28 20 	cmovne 0x202817(%rip),%r8d        # 604180 <authkey>
  401968:	00 
  401969:	85 ff                	test   %edi,%edi
  40196b:	b8 c1 2f 40 00       	mov    $0x402fc1,%eax
  401970:	b9 c6 2f 40 00       	mov    $0x402fc6,%ecx
  401975:	48 0f 45 c8          	cmovne %rax,%rcx
  401979:	48 c7 44 24 08 a0 41 	movq   $0x6041a0,0x8(%rsp)
  401980:	60 00 
  401982:	89 34 24             	mov    %esi,(%rsp)
  401985:	8b 15 3d 24 20 00    	mov    0x20243d(%rip),%edx        # 603dc8 <target_id>
  40198b:	be cb 2f 40 00       	mov    $0x402fcb,%esi
  401990:	48 8d bc 24 10 20 00 	lea    0x2010(%rsp),%rdi
  401997:	00 
  401998:	b8 00 00 00 00       	mov    $0x0,%eax
  40199d:	e8 ae f3 ff ff       	callq  400d50 <sprintf@plt>
  4019a2:	83 3d 5f 27 20 00 00 	cmpl   $0x0,0x20275f(%rip)        # 604108 <notify>
  4019a9:	74 78                	je     401a23 <notify_server+0x117>
  4019ab:	85 db                	test   %ebx,%ebx
  4019ad:	74 68                	je     401a17 <notify_server+0x10b>
  4019af:	4c 8d 4c 24 10       	lea    0x10(%rsp),%r9
  4019b4:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  4019ba:	48 8d 8c 24 10 20 00 	lea    0x2010(%rsp),%rcx
  4019c1:	00 
  4019c2:	48 8b 15 07 24 20 00 	mov    0x202407(%rip),%rdx        # 603dd0 <lab>
  4019c9:	48 8b 35 08 24 20 00 	mov    0x202408(%rip),%rsi        # 603dd8 <course>
  4019d0:	48 8b 3d e9 23 20 00 	mov    0x2023e9(%rip),%rdi        # 603dc0 <user_id>
  4019d7:	e8 0f 10 00 00       	callq  4029eb <driver_post>
  4019dc:	85 c0                	test   %eax,%eax
  4019de:	79 1e                	jns    4019fe <notify_server+0xf2>
  4019e0:	48 8d 74 24 10       	lea    0x10(%rsp),%rsi
  4019e5:	bf e7 2f 40 00       	mov    $0x402fe7,%edi
  4019ea:	b8 00 00 00 00       	mov    $0x0,%eax
  4019ef:	e8 0c f2 ff ff       	callq  400c00 <printf@plt>
  4019f4:	bf 01 00 00 00       	mov    $0x1,%edi
  4019f9:	e8 62 f3 ff ff       	callq  400d60 <exit@plt>
  4019fe:	bf 10 31 40 00       	mov    $0x403110,%edi
  401a03:	e8 c8 f1 ff ff       	callq  400bd0 <puts@plt>
  401a08:	bf f3 2f 40 00       	mov    $0x402ff3,%edi
  401a0d:	e8 be f1 ff ff       	callq  400bd0 <puts@plt>
  401a12:	e9 84 00 00 00       	jmpq   401a9b <notify_server+0x18f>
  401a17:	bf fd 2f 40 00       	mov    $0x402ffd,%edi
  401a1c:	e8 af f1 ff ff       	callq  400bd0 <puts@plt>
  401a21:	eb 78                	jmp    401a9b <notify_server+0x18f>
  401a23:	85 db                	test   %ebx,%ebx
  401a25:	b8 c1 2f 40 00       	mov    $0x402fc1,%eax
  401a2a:	be c6 2f 40 00       	mov    $0x402fc6,%esi
  401a2f:	48 0f 45 f0          	cmovne %rax,%rsi
  401a33:	bf 48 31 40 00       	mov    $0x403148,%edi
  401a38:	b8 00 00 00 00       	mov    $0x0,%eax
  401a3d:	e8 be f1 ff ff       	callq  400c00 <printf@plt>
  401a42:	48 8b 35 77 23 20 00 	mov    0x202377(%rip),%rsi        # 603dc0 <user_id>
  401a49:	bf 04 30 40 00       	mov    $0x403004,%edi
  401a4e:	b8 00 00 00 00       	mov    $0x0,%eax
  401a53:	e8 a8 f1 ff ff       	callq  400c00 <printf@plt>
  401a58:	48 8b 35 79 23 20 00 	mov    0x202379(%rip),%rsi        # 603dd8 <course>
  401a5f:	bf 11 30 40 00       	mov    $0x403011,%edi
  401a64:	b8 00 00 00 00       	mov    $0x0,%eax
  401a69:	e8 92 f1 ff ff       	callq  400c00 <printf@plt>
  401a6e:	48 8b 35 5b 23 20 00 	mov    0x20235b(%rip),%rsi        # 603dd0 <lab>
  401a75:	bf 1d 30 40 00       	mov    $0x40301d,%edi
  401a7a:	b8 00 00 00 00       	mov    $0x0,%eax
  401a7f:	e8 7c f1 ff ff       	callq  400c00 <printf@plt>
  401a84:	48 8d b4 24 10 20 00 	lea    0x2010(%rsp),%rsi
  401a8b:	00 
  401a8c:	bf 26 30 40 00       	mov    $0x403026,%edi
  401a91:	b8 00 00 00 00       	mov    $0x0,%eax
  401a96:	e8 65 f1 ff ff       	callq  400c00 <printf@plt>
  401a9b:	48 81 c4 10 40 00 00 	add    $0x4010,%rsp
  401aa2:	5b                   	pop    %rbx
  401aa3:	f3 c3                	repz retq 

0000000000401aa5 <validate>:
  401aa5:	53                   	push   %rbx
  401aa6:	89 fb                	mov    %edi,%ebx
  401aa8:	83 3d d9 26 20 00 00 	cmpl   $0x0,0x2026d9(%rip)        # 604188 <is_checker>
  401aaf:	74 60                	je     401b11 <validate+0x6c>
  401ab1:	39 3d c5 26 20 00    	cmp    %edi,0x2026c5(%rip)        # 60417c <vlevel>
  401ab7:	74 14                	je     401acd <validate+0x28>
  401ab9:	bf 32 30 40 00       	mov    $0x403032,%edi
  401abe:	e8 0d f1 ff ff       	callq  400bd0 <puts@plt>
  401ac3:	b8 00 00 00 00       	mov    $0x0,%eax
  401ac8:	e8 be fd ff ff       	callq  40188b <check_fail>
  401acd:	8b 35 a5 26 20 00    	mov    0x2026a5(%rip),%esi        # 604178 <check_level>
  401ad3:	39 fe                	cmp    %edi,%esi
  401ad5:	74 1b                	je     401af2 <validate+0x4d>
  401ad7:	89 fa                	mov    %edi,%edx
  401ad9:	bf 70 31 40 00       	mov    $0x403170,%edi
  401ade:	b8 00 00 00 00       	mov    $0x0,%eax
  401ae3:	e8 18 f1 ff ff       	callq  400c00 <printf@plt>
  401ae8:	b8 00 00 00 00       	mov    $0x0,%eax
  401aed:	e8 99 fd ff ff       	callq  40188b <check_fail>
  401af2:	0f be 35 af 32 20 00 	movsbl 0x2032af(%rip),%esi        # 604da8 <target_prefix>
  401af9:	b9 a0 41 60 00       	mov    $0x6041a0,%ecx
  401afe:	89 fa                	mov    %edi,%edx
  401b00:	bf 50 30 40 00       	mov    $0x403050,%edi
  401b05:	b8 00 00 00 00       	mov    $0x0,%eax
  401b0a:	e8 f1 f0 ff ff       	callq  400c00 <printf@plt>
  401b0f:	eb 44                	jmp    401b55 <validate+0xb0>
  401b11:	39 3d 65 26 20 00    	cmp    %edi,0x202665(%rip)        # 60417c <vlevel>
  401b17:	74 18                	je     401b31 <validate+0x8c>
  401b19:	bf 32 30 40 00       	mov    $0x403032,%edi
  401b1e:	e8 ad f0 ff ff       	callq  400bd0 <puts@plt>
  401b23:	89 de                	mov    %ebx,%esi
  401b25:	bf 00 00 00 00       	mov    $0x0,%edi
  401b2a:	e8 dd fd ff ff       	callq  40190c <notify_server>
  401b2f:	eb 24                	jmp    401b55 <validate+0xb0>
  401b31:	0f be 15 70 32 20 00 	movsbl 0x203270(%rip),%edx        # 604da8 <target_prefix>
  401b38:	89 fe                	mov    %edi,%esi
  401b3a:	bf 98 31 40 00       	mov    $0x403198,%edi
  401b3f:	b8 00 00 00 00       	mov    $0x0,%eax
  401b44:	e8 b7 f0 ff ff       	callq  400c00 <printf@plt>
  401b49:	89 de                	mov    %ebx,%esi
  401b4b:	bf 01 00 00 00       	mov    $0x1,%edi
  401b50:	e8 b7 fd ff ff       	callq  40190c <notify_server>
  401b55:	5b                   	pop    %rbx
  401b56:	c3                   	retq   

0000000000401b57 <fail>:
  401b57:	48 83 ec 08          	sub    $0x8,%rsp
  401b5b:	83 3d 26 26 20 00 00 	cmpl   $0x0,0x202626(%rip)        # 604188 <is_checker>
  401b62:	74 0a                	je     401b6e <fail+0x17>
  401b64:	b8 00 00 00 00       	mov    $0x0,%eax
  401b69:	e8 1d fd ff ff       	callq  40188b <check_fail>
  401b6e:	89 fe                	mov    %edi,%esi
  401b70:	bf 00 00 00 00       	mov    $0x0,%edi
  401b75:	e8 92 fd ff ff       	callq  40190c <notify_server>
  401b7a:	48 83 c4 08          	add    $0x8,%rsp
  401b7e:	c3                   	retq   

0000000000401b7f <bushandler>:
  401b7f:	48 83 ec 08          	sub    $0x8,%rsp
  401b83:	83 3d fe 25 20 00 00 	cmpl   $0x0,0x2025fe(%rip)        # 604188 <is_checker>
  401b8a:	74 14                	je     401ba0 <bushandler+0x21>
  401b8c:	bf 65 30 40 00       	mov    $0x403065,%edi
  401b91:	e8 3a f0 ff ff       	callq  400bd0 <puts@plt>
  401b96:	b8 00 00 00 00       	mov    $0x0,%eax
  401b9b:	e8 eb fc ff ff       	callq  40188b <check_fail>
  401ba0:	bf d0 31 40 00       	mov    $0x4031d0,%edi
  401ba5:	e8 26 f0 ff ff       	callq  400bd0 <puts@plt>
  401baa:	bf 6f 30 40 00       	mov    $0x40306f,%edi
  401baf:	e8 1c f0 ff ff       	callq  400bd0 <puts@plt>
  401bb4:	be 00 00 00 00       	mov    $0x0,%esi
  401bb9:	bf 00 00 00 00       	mov    $0x0,%edi
  401bbe:	e8 49 fd ff ff       	callq  40190c <notify_server>
  401bc3:	bf 01 00 00 00       	mov    $0x1,%edi
  401bc8:	e8 93 f1 ff ff       	callq  400d60 <exit@plt>

0000000000401bcd <seghandler>:
  401bcd:	48 83 ec 08          	sub    $0x8,%rsp
  401bd1:	83 3d b0 25 20 00 00 	cmpl   $0x0,0x2025b0(%rip)        # 604188 <is_checker>
  401bd8:	74 14                	je     401bee <seghandler+0x21>
  401bda:	bf 85 30 40 00       	mov    $0x403085,%edi
  401bdf:	e8 ec ef ff ff       	callq  400bd0 <puts@plt>
  401be4:	b8 00 00 00 00       	mov    $0x0,%eax
  401be9:	e8 9d fc ff ff       	callq  40188b <check_fail>
  401bee:	bf f0 31 40 00       	mov    $0x4031f0,%edi
  401bf3:	e8 d8 ef ff ff       	callq  400bd0 <puts@plt>
  401bf8:	bf 6f 30 40 00       	mov    $0x40306f,%edi
  401bfd:	e8 ce ef ff ff       	callq  400bd0 <puts@plt>
  401c02:	be 00 00 00 00       	mov    $0x0,%esi
  401c07:	bf 00 00 00 00       	mov    $0x0,%edi
  401c0c:	e8 fb fc ff ff       	callq  40190c <notify_server>
  401c11:	bf 01 00 00 00       	mov    $0x1,%edi
  401c16:	e8 45 f1 ff ff       	callq  400d60 <exit@plt>

0000000000401c1b <illegalhandler>:
  401c1b:	48 83 ec 08          	sub    $0x8,%rsp
  401c1f:	83 3d 62 25 20 00 00 	cmpl   $0x0,0x202562(%rip)        # 604188 <is_checker>
  401c26:	74 14                	je     401c3c <illegalhandler+0x21>
  401c28:	bf 98 30 40 00       	mov    $0x403098,%edi
  401c2d:	e8 9e ef ff ff       	callq  400bd0 <puts@plt>
  401c32:	b8 00 00 00 00       	mov    $0x0,%eax
  401c37:	e8 4f fc ff ff       	callq  40188b <check_fail>
  401c3c:	bf 18 32 40 00       	mov    $0x403218,%edi
  401c41:	e8 8a ef ff ff       	callq  400bd0 <puts@plt>
  401c46:	bf 6f 30 40 00       	mov    $0x40306f,%edi
  401c4b:	e8 80 ef ff ff       	callq  400bd0 <puts@plt>
  401c50:	be 00 00 00 00       	mov    $0x0,%esi
  401c55:	bf 00 00 00 00       	mov    $0x0,%edi
  401c5a:	e8 ad fc ff ff       	callq  40190c <notify_server>
  401c5f:	bf 01 00 00 00       	mov    $0x1,%edi
  401c64:	e8 f7 f0 ff ff       	callq  400d60 <exit@plt>

0000000000401c69 <sigalrmhandler>:
  401c69:	48 83 ec 08          	sub    $0x8,%rsp
  401c6d:	83 3d 14 25 20 00 00 	cmpl   $0x0,0x202514(%rip)        # 604188 <is_checker>
  401c74:	74 14                	je     401c8a <sigalrmhandler+0x21>
  401c76:	bf ac 30 40 00       	mov    $0x4030ac,%edi
  401c7b:	e8 50 ef ff ff       	callq  400bd0 <puts@plt>
  401c80:	b8 00 00 00 00       	mov    $0x0,%eax
  401c85:	e8 01 fc ff ff       	callq  40188b <check_fail>
  401c8a:	be 05 00 00 00       	mov    $0x5,%esi
  401c8f:	bf 48 32 40 00       	mov    $0x403248,%edi
  401c94:	b8 00 00 00 00       	mov    $0x0,%eax
  401c99:	e8 62 ef ff ff       	callq  400c00 <printf@plt>
  401c9e:	be 00 00 00 00       	mov    $0x0,%esi
  401ca3:	bf 00 00 00 00       	mov    $0x0,%edi
  401ca8:	e8 5f fc ff ff       	callq  40190c <notify_server>
  401cad:	bf 01 00 00 00       	mov    $0x1,%edi
  401cb2:	e8 a9 f0 ff ff       	callq  400d60 <exit@plt>

0000000000401cb7 <launch>:
  401cb7:	55                   	push   %rbp
  401cb8:	48 89 e5             	mov    %rsp,%rbp
  401cbb:	48 89 fa             	mov    %rdi,%rdx
  401cbe:	48 8d 47 1e          	lea    0x1e(%rdi),%rax
  401cc2:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
  401cc6:	48 29 c4             	sub    %rax,%rsp
  401cc9:	48 8d 7c 24 0f       	lea    0xf(%rsp),%rdi
  401cce:	48 83 e7 f0          	and    $0xfffffffffffffff0,%rdi
  401cd2:	be f4 00 00 00       	mov    $0xf4,%esi
  401cd7:	e8 34 ef ff ff       	callq  400c10 <memset@plt>
  401cdc:	48 8b 05 3d 24 20 00 	mov    0x20243d(%rip),%rax        # 604120 <stdin@@GLIBC_2.2.5>
  401ce3:	48 39 05 86 24 20 00 	cmp    %rax,0x202486(%rip)        # 604170 <infile>
  401cea:	75 0f                	jne    401cfb <launch+0x44>
  401cec:	bf b4 30 40 00       	mov    $0x4030b4,%edi
  401cf1:	b8 00 00 00 00       	mov    $0x0,%eax
  401cf6:	e8 05 ef ff ff       	callq  400c00 <printf@plt>
  401cfb:	c7 05 77 24 20 00 00 	movl   $0x0,0x202477(%rip)        # 60417c <vlevel>
  401d02:	00 00 00 
  401d05:	b8 00 00 00 00       	mov    $0x0,%eax
  401d0a:	e8 e5 fa ff ff       	callq  4017f4 <test>
  401d0f:	83 3d 72 24 20 00 00 	cmpl   $0x0,0x202472(%rip)        # 604188 <is_checker>
  401d16:	74 14                	je     401d2c <launch+0x75>
  401d18:	bf c1 30 40 00       	mov    $0x4030c1,%edi
  401d1d:	e8 ae ee ff ff       	callq  400bd0 <puts@plt>
  401d22:	b8 00 00 00 00       	mov    $0x0,%eax
  401d27:	e8 5f fb ff ff       	callq  40188b <check_fail>
  401d2c:	bf cc 30 40 00       	mov    $0x4030cc,%edi
  401d31:	e8 9a ee ff ff       	callq  400bd0 <puts@plt>
  401d36:	c9                   	leaveq 
  401d37:	c3                   	retq   

0000000000401d38 <stable_launch>:
  401d38:	53                   	push   %rbx
  401d39:	48 89 3d 28 24 20 00 	mov    %rdi,0x202428(%rip)        # 604168 <global_offset>
  401d40:	41 b9 00 00 00 00    	mov    $0x0,%r9d
  401d46:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  401d4c:	b9 32 01 00 00       	mov    $0x132,%ecx
  401d51:	ba 07 00 00 00       	mov    $0x7,%edx
  401d56:	be 00 00 10 00       	mov    $0x100000,%esi
  401d5b:	bf 00 60 58 55       	mov    $0x55586000,%edi
  401d60:	e8 8b ee ff ff       	callq  400bf0 <mmap@plt>
  401d65:	48 89 c3             	mov    %rax,%rbx
  401d68:	48 3d 00 60 58 55    	cmp    $0x55586000,%rax
  401d6e:	74 32                	je     401da2 <stable_launch+0x6a>
  401d70:	be 00 00 10 00       	mov    $0x100000,%esi
  401d75:	48 89 c7             	mov    %rax,%rdi
  401d78:	e8 73 ef ff ff       	callq  400cf0 <munmap@plt>
  401d7d:	ba 00 60 58 55       	mov    $0x55586000,%edx
  401d82:	be 80 32 40 00       	mov    $0x403280,%esi
  401d87:	48 8b 3d ba 23 20 00 	mov    0x2023ba(%rip),%rdi        # 604148 <stderr@@GLIBC_2.2.5>
  401d8e:	b8 00 00 00 00       	mov    $0x0,%eax
  401d93:	e8 f8 ee ff ff       	callq  400c90 <fprintf@plt>
  401d98:	bf 01 00 00 00       	mov    $0x1,%edi
  401d9d:	e8 be ef ff ff       	callq  400d60 <exit@plt>
  401da2:	48 8d 90 f8 ff 0f 00 	lea    0xffff8(%rax),%rdx
  401da9:	48 89 15 00 30 20 00 	mov    %rdx,0x203000(%rip)        # 604db0 <stack_top>
  401db0:	48 89 e0             	mov    %rsp,%rax
  401db3:	48 89 d4             	mov    %rdx,%rsp
  401db6:	48 89 c2             	mov    %rax,%rdx
  401db9:	48 89 15 a0 23 20 00 	mov    %rdx,0x2023a0(%rip)        # 604160 <global_save_stack>
  401dc0:	48 8b 3d a1 23 20 00 	mov    0x2023a1(%rip),%rdi        # 604168 <global_offset>
  401dc7:	e8 eb fe ff ff       	callq  401cb7 <launch>
  401dcc:	48 8b 05 8d 23 20 00 	mov    0x20238d(%rip),%rax        # 604160 <global_save_stack>
  401dd3:	48 89 c4             	mov    %rax,%rsp
  401dd6:	be 00 00 10 00       	mov    $0x100000,%esi
  401ddb:	48 89 df             	mov    %rbx,%rdi
  401dde:	e8 0d ef ff ff       	callq  400cf0 <munmap@plt>
  401de3:	5b                   	pop    %rbx
  401de4:	c3                   	retq   
  401de5:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  401dec:	00 00 00 
  401def:	90                   	nop

0000000000401df0 <rio_readinitb>:
  401df0:	89 37                	mov    %esi,(%rdi)
  401df2:	c7 47 04 00 00 00 00 	movl   $0x0,0x4(%rdi)
  401df9:	48 8d 47 10          	lea    0x10(%rdi),%rax
  401dfd:	48 89 47 08          	mov    %rax,0x8(%rdi)
  401e01:	c3                   	retq   

0000000000401e02 <sigalrm_handler>:
  401e02:	48 83 ec 08          	sub    $0x8,%rsp
  401e06:	ba 00 00 00 00       	mov    $0x0,%edx
  401e0b:	be c0 32 40 00       	mov    $0x4032c0,%esi
  401e10:	48 8b 3d 31 23 20 00 	mov    0x202331(%rip),%rdi        # 604148 <stderr@@GLIBC_2.2.5>
  401e17:	b8 00 00 00 00       	mov    $0x0,%eax
  401e1c:	e8 6f ee ff ff       	callq  400c90 <fprintf@plt>
  401e21:	bf 01 00 00 00       	mov    $0x1,%edi
  401e26:	e8 35 ef ff ff       	callq  400d60 <exit@plt>

0000000000401e2b <urlencode>:
  401e2b:	41 54                	push   %r12
  401e2d:	55                   	push   %rbp
  401e2e:	53                   	push   %rbx
  401e2f:	48 83 ec 10          	sub    $0x10,%rsp
  401e33:	48 89 fb             	mov    %rdi,%rbx
  401e36:	48 89 f5             	mov    %rsi,%rbp
  401e39:	b8 00 00 00 00       	mov    $0x0,%eax
  401e3e:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  401e45:	f2 ae                	repnz scas %es:(%rdi),%al
  401e47:	48 f7 d1             	not    %rcx
  401e4a:	8d 41 ff             	lea    -0x1(%rcx),%eax
  401e4d:	e9 93 00 00 00       	jmpq   401ee5 <urlencode+0xba>
  401e52:	0f b6 13             	movzbl (%rbx),%edx
  401e55:	80 fa 2a             	cmp    $0x2a,%dl
  401e58:	0f 94 c1             	sete   %cl
  401e5b:	80 fa 2d             	cmp    $0x2d,%dl
  401e5e:	0f 94 c0             	sete   %al
  401e61:	08 c1                	or     %al,%cl
  401e63:	75 1f                	jne    401e84 <urlencode+0x59>
  401e65:	80 fa 2e             	cmp    $0x2e,%dl
  401e68:	74 1a                	je     401e84 <urlencode+0x59>
  401e6a:	80 fa 5f             	cmp    $0x5f,%dl
  401e6d:	74 15                	je     401e84 <urlencode+0x59>
  401e6f:	8d 42 d0             	lea    -0x30(%rdx),%eax
  401e72:	3c 09                	cmp    $0x9,%al
  401e74:	76 0e                	jbe    401e84 <urlencode+0x59>
  401e76:	8d 42 bf             	lea    -0x41(%rdx),%eax
  401e79:	3c 19                	cmp    $0x19,%al
  401e7b:	76 07                	jbe    401e84 <urlencode+0x59>
  401e7d:	8d 42 9f             	lea    -0x61(%rdx),%eax
  401e80:	3c 19                	cmp    $0x19,%al
  401e82:	77 09                	ja     401e8d <urlencode+0x62>
  401e84:	88 55 00             	mov    %dl,0x0(%rbp)
  401e87:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  401e8b:	eb 51                	jmp    401ede <urlencode+0xb3>
  401e8d:	80 fa 20             	cmp    $0x20,%dl
  401e90:	75 0a                	jne    401e9c <urlencode+0x71>
  401e92:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
  401e96:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  401e9a:	eb 42                	jmp    401ede <urlencode+0xb3>
  401e9c:	8d 42 e0             	lea    -0x20(%rdx),%eax
  401e9f:	3c 5f                	cmp    $0x5f,%al
  401ea1:	0f 96 c1             	setbe  %cl
  401ea4:	80 fa 09             	cmp    $0x9,%dl
  401ea7:	0f 94 c0             	sete   %al
  401eaa:	08 c1                	or     %al,%cl
  401eac:	74 45                	je     401ef3 <urlencode+0xc8>
  401eae:	0f b6 d2             	movzbl %dl,%edx
  401eb1:	be 78 33 40 00       	mov    $0x403378,%esi
  401eb6:	48 89 e7             	mov    %rsp,%rdi
  401eb9:	b8 00 00 00 00       	mov    $0x0,%eax
  401ebe:	e8 8d ee ff ff       	callq  400d50 <sprintf@plt>
  401ec3:	0f b6 04 24          	movzbl (%rsp),%eax
  401ec7:	88 45 00             	mov    %al,0x0(%rbp)
  401eca:	0f b6 44 24 01       	movzbl 0x1(%rsp),%eax
  401ecf:	88 45 01             	mov    %al,0x1(%rbp)
  401ed2:	0f b6 44 24 02       	movzbl 0x2(%rsp),%eax
  401ed7:	88 45 02             	mov    %al,0x2(%rbp)
  401eda:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
  401ede:	48 83 c3 01          	add    $0x1,%rbx
  401ee2:	44 89 e0             	mov    %r12d,%eax
  401ee5:	44 8d 60 ff          	lea    -0x1(%rax),%r12d
  401ee9:	85 c0                	test   %eax,%eax
  401eeb:	0f 85 61 ff ff ff    	jne    401e52 <urlencode+0x27>
  401ef1:	eb 05                	jmp    401ef8 <urlencode+0xcd>
  401ef3:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401ef8:	48 83 c4 10          	add    $0x10,%rsp
  401efc:	5b                   	pop    %rbx
  401efd:	5d                   	pop    %rbp
  401efe:	41 5c                	pop    %r12
  401f00:	c3                   	retq   

0000000000401f01 <rio_writen>:
  401f01:	41 55                	push   %r13
  401f03:	41 54                	push   %r12
  401f05:	55                   	push   %rbp
  401f06:	53                   	push   %rbx
  401f07:	48 83 ec 08          	sub    $0x8,%rsp
  401f0b:	41 89 fc             	mov    %edi,%r12d
  401f0e:	48 89 f5             	mov    %rsi,%rbp
  401f11:	49 89 d5             	mov    %rdx,%r13
  401f14:	48 89 d3             	mov    %rdx,%rbx
  401f17:	eb 28                	jmp    401f41 <rio_writen+0x40>
  401f19:	48 89 da             	mov    %rbx,%rdx
  401f1c:	48 89 ee             	mov    %rbp,%rsi
  401f1f:	44 89 e7             	mov    %r12d,%edi
  401f22:	e8 b9 ec ff ff       	callq  400be0 <write@plt>
  401f27:	48 85 c0             	test   %rax,%rax
  401f2a:	7f 0f                	jg     401f3b <rio_writen+0x3a>
  401f2c:	e8 5f ec ff ff       	callq  400b90 <__errno_location@plt>
  401f31:	83 38 04             	cmpl   $0x4,(%rax)
  401f34:	75 15                	jne    401f4b <rio_writen+0x4a>
  401f36:	b8 00 00 00 00       	mov    $0x0,%eax
  401f3b:	48 29 c3             	sub    %rax,%rbx
  401f3e:	48 01 c5             	add    %rax,%rbp
  401f41:	48 85 db             	test   %rbx,%rbx
  401f44:	75 d3                	jne    401f19 <rio_writen+0x18>
  401f46:	4c 89 e8             	mov    %r13,%rax
  401f49:	eb 07                	jmp    401f52 <rio_writen+0x51>
  401f4b:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  401f52:	48 83 c4 08          	add    $0x8,%rsp
  401f56:	5b                   	pop    %rbx
  401f57:	5d                   	pop    %rbp
  401f58:	41 5c                	pop    %r12
  401f5a:	41 5d                	pop    %r13
  401f5c:	c3                   	retq   

0000000000401f5d <rio_read>:
  401f5d:	41 56                	push   %r14
  401f5f:	41 55                	push   %r13
  401f61:	41 54                	push   %r12
  401f63:	55                   	push   %rbp
  401f64:	53                   	push   %rbx
  401f65:	48 89 fb             	mov    %rdi,%rbx
  401f68:	49 89 f6             	mov    %rsi,%r14
  401f6b:	49 89 d5             	mov    %rdx,%r13
  401f6e:	4c 8d 67 10          	lea    0x10(%rdi),%r12
  401f72:	eb 2a                	jmp    401f9e <rio_read+0x41>
  401f74:	ba 00 20 00 00       	mov    $0x2000,%edx
  401f79:	4c 89 e6             	mov    %r12,%rsi
  401f7c:	8b 3b                	mov    (%rbx),%edi
  401f7e:	e8 bd ec ff ff       	callq  400c40 <read@plt>
  401f83:	89 43 04             	mov    %eax,0x4(%rbx)
  401f86:	85 c0                	test   %eax,%eax
  401f88:	79 0c                	jns    401f96 <rio_read+0x39>
  401f8a:	e8 01 ec ff ff       	callq  400b90 <__errno_location@plt>
  401f8f:	83 38 04             	cmpl   $0x4,(%rax)
  401f92:	74 0a                	je     401f9e <rio_read+0x41>
  401f94:	eb 36                	jmp    401fcc <rio_read+0x6f>
  401f96:	85 c0                	test   %eax,%eax
  401f98:	74 3b                	je     401fd5 <rio_read+0x78>
  401f9a:	4c 89 63 08          	mov    %r12,0x8(%rbx)
  401f9e:	8b 6b 04             	mov    0x4(%rbx),%ebp
  401fa1:	85 ed                	test   %ebp,%ebp
  401fa3:	7e cf                	jle    401f74 <rio_read+0x17>
  401fa5:	89 e8                	mov    %ebp,%eax
  401fa7:	4c 39 e8             	cmp    %r13,%rax
  401faa:	41 0f 43 ed          	cmovae %r13d,%ebp
  401fae:	4c 63 e5             	movslq %ebp,%r12
  401fb1:	48 8b 73 08          	mov    0x8(%rbx),%rsi
  401fb5:	4c 89 e2             	mov    %r12,%rdx
  401fb8:	4c 89 f7             	mov    %r14,%rdi
  401fbb:	e8 a0 ec ff ff       	callq  400c60 <memcpy@plt>
  401fc0:	4c 01 63 08          	add    %r12,0x8(%rbx)
  401fc4:	29 6b 04             	sub    %ebp,0x4(%rbx)
  401fc7:	4c 89 e0             	mov    %r12,%rax
  401fca:	eb 0e                	jmp    401fda <rio_read+0x7d>
  401fcc:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  401fd3:	eb 05                	jmp    401fda <rio_read+0x7d>
  401fd5:	b8 00 00 00 00       	mov    $0x0,%eax
  401fda:	5b                   	pop    %rbx
  401fdb:	5d                   	pop    %rbp
  401fdc:	41 5c                	pop    %r12
  401fde:	41 5d                	pop    %r13
  401fe0:	41 5e                	pop    %r14
  401fe2:	c3                   	retq   

0000000000401fe3 <rio_readlineb>:
  401fe3:	41 55                	push   %r13
  401fe5:	41 54                	push   %r12
  401fe7:	55                   	push   %rbp
  401fe8:	53                   	push   %rbx
  401fe9:	48 83 ec 18          	sub    $0x18,%rsp
  401fed:	49 89 fd             	mov    %rdi,%r13
  401ff0:	48 89 f5             	mov    %rsi,%rbp
  401ff3:	49 89 d4             	mov    %rdx,%r12
  401ff6:	bb 01 00 00 00       	mov    $0x1,%ebx
  401ffb:	eb 3e                	jmp    40203b <rio_readlineb+0x58>
  401ffd:	ba 01 00 00 00       	mov    $0x1,%edx
  402002:	48 8d 74 24 0f       	lea    0xf(%rsp),%rsi
  402007:	4c 89 ef             	mov    %r13,%rdi
  40200a:	e8 4e ff ff ff       	callq  401f5d <rio_read>
  40200f:	83 f8 01             	cmp    $0x1,%eax
  402012:	75 12                	jne    402026 <rio_readlineb+0x43>
  402014:	48 8d 55 01          	lea    0x1(%rbp),%rdx
  402018:	0f b6 44 24 0f       	movzbl 0xf(%rsp),%eax
  40201d:	88 45 00             	mov    %al,0x0(%rbp)
  402020:	3c 0a                	cmp    $0xa,%al
  402022:	75 10                	jne    402034 <rio_readlineb+0x51>
  402024:	eb 1c                	jmp    402042 <rio_readlineb+0x5f>
  402026:	85 c0                	test   %eax,%eax
  402028:	75 24                	jne    40204e <rio_readlineb+0x6b>
  40202a:	48 83 fb 01          	cmp    $0x1,%rbx
  40202e:	66 90                	xchg   %ax,%ax
  402030:	75 13                	jne    402045 <rio_readlineb+0x62>
  402032:	eb 23                	jmp    402057 <rio_readlineb+0x74>
  402034:	48 83 c3 01          	add    $0x1,%rbx
  402038:	48 89 d5             	mov    %rdx,%rbp
  40203b:	4c 39 e3             	cmp    %r12,%rbx
  40203e:	72 bd                	jb     401ffd <rio_readlineb+0x1a>
  402040:	eb 03                	jmp    402045 <rio_readlineb+0x62>
  402042:	48 89 d5             	mov    %rdx,%rbp
  402045:	c6 45 00 00          	movb   $0x0,0x0(%rbp)
  402049:	48 89 d8             	mov    %rbx,%rax
  40204c:	eb 0e                	jmp    40205c <rio_readlineb+0x79>
  40204e:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402055:	eb 05                	jmp    40205c <rio_readlineb+0x79>
  402057:	b8 00 00 00 00       	mov    $0x0,%eax
  40205c:	48 83 c4 18          	add    $0x18,%rsp
  402060:	5b                   	pop    %rbx
  402061:	5d                   	pop    %rbp
  402062:	41 5c                	pop    %r12
  402064:	41 5d                	pop    %r13
  402066:	c3                   	retq   

0000000000402067 <submitr>:
  402067:	41 57                	push   %r15
  402069:	41 56                	push   %r14
  40206b:	41 55                	push   %r13
  40206d:	41 54                	push   %r12
  40206f:	55                   	push   %rbp
  402070:	53                   	push   %rbx
  402071:	48 81 ec 48 a0 00 00 	sub    $0xa048,%rsp
  402078:	49 89 fc             	mov    %rdi,%r12
  40207b:	89 74 24 04          	mov    %esi,0x4(%rsp)
  40207f:	49 89 d7             	mov    %rdx,%r15
  402082:	49 89 ce             	mov    %rcx,%r14
  402085:	4c 89 c5             	mov    %r8,%rbp
  402088:	4c 89 44 24 08       	mov    %r8,0x8(%rsp)
  40208d:	4d 89 cd             	mov    %r9,%r13
  402090:	48 8b 9c 24 80 a0 00 	mov    0xa080(%rsp),%rbx
  402097:	00 
  402098:	c7 84 24 1c 20 00 00 	movl   $0x0,0x201c(%rsp)
  40209f:	00 00 00 00 
  4020a3:	bf e8 32 40 00       	mov    $0x4032e8,%edi
  4020a8:	e8 23 eb ff ff       	callq  400bd0 <puts@plt>
  4020ad:	4c 89 e6             	mov    %r12,%rsi
  4020b0:	bf 7f 33 40 00       	mov    $0x40337f,%edi
  4020b5:	b8 00 00 00 00       	mov    $0x0,%eax
  4020ba:	e8 41 eb ff ff       	callq  400c00 <printf@plt>
  4020bf:	8b 74 24 04          	mov    0x4(%rsp),%esi
  4020c3:	bf 8d 33 40 00       	mov    $0x40338d,%edi
  4020c8:	b8 00 00 00 00       	mov    $0x0,%eax
  4020cd:	e8 2e eb ff ff       	callq  400c00 <printf@plt>
  4020d2:	4c 89 fe             	mov    %r15,%rsi
  4020d5:	bf 97 33 40 00       	mov    $0x403397,%edi
  4020da:	b8 00 00 00 00       	mov    $0x0,%eax
  4020df:	e8 1c eb ff ff       	callq  400c00 <printf@plt>
  4020e4:	4c 89 f6             	mov    %r14,%rsi
  4020e7:	bf a3 33 40 00       	mov    $0x4033a3,%edi
  4020ec:	b8 00 00 00 00       	mov    $0x0,%eax
  4020f1:	e8 0a eb ff ff       	callq  400c00 <printf@plt>
  4020f6:	48 89 ee             	mov    %rbp,%rsi
  4020f9:	bf af 33 40 00       	mov    $0x4033af,%edi
  4020fe:	b8 00 00 00 00       	mov    $0x0,%eax
  402103:	e8 f8 ea ff ff       	callq  400c00 <printf@plt>
  402108:	4c 89 ee             	mov    %r13,%rsi
  40210b:	bf b8 33 40 00       	mov    $0x4033b8,%edi
  402110:	b8 00 00 00 00       	mov    $0x0,%eax
  402115:	e8 e6 ea ff ff       	callq  400c00 <printf@plt>
  40211a:	ba 00 00 00 00       	mov    $0x0,%edx
  40211f:	be 01 00 00 00       	mov    $0x1,%esi
  402124:	bf 02 00 00 00       	mov    $0x2,%edi
  402129:	e8 52 ec ff ff       	callq  400d80 <socket@plt>
  40212e:	89 c5                	mov    %eax,%ebp
  402130:	85 c0                	test   %eax,%eax
  402132:	79 4e                	jns    402182 <submitr+0x11b>
  402134:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  40213b:	3a 20 43 
  40213e:	48 89 03             	mov    %rax,(%rbx)
  402141:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  402148:	20 75 6e 
  40214b:	48 89 43 08          	mov    %rax,0x8(%rbx)
  40214f:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402156:	74 6f 20 
  402159:	48 89 43 10          	mov    %rax,0x10(%rbx)
  40215d:	48 b8 63 72 65 61 74 	movabs $0x7320657461657263,%rax
  402164:	65 20 73 
  402167:	48 89 43 18          	mov    %rax,0x18(%rbx)
  40216b:	c7 43 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbx)
  402172:	66 c7 43 24 74 00    	movw   $0x74,0x24(%rbx)
  402178:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40217d:	e9 5a 06 00 00       	jmpq   4027dc <submitr+0x775>
  402182:	4c 89 e7             	mov    %r12,%rdi
  402185:	e8 f6 ea ff ff       	callq  400c80 <gethostbyname@plt>
  40218a:	48 85 c0             	test   %rax,%rax
  40218d:	75 67                	jne    4021f6 <submitr+0x18f>
  40218f:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  402196:	3a 20 44 
  402199:	48 89 03             	mov    %rax,(%rbx)
  40219c:	48 b8 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rax
  4021a3:	20 75 6e 
  4021a6:	48 89 43 08          	mov    %rax,0x8(%rbx)
  4021aa:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4021b1:	74 6f 20 
  4021b4:	48 89 43 10          	mov    %rax,0x10(%rbx)
  4021b8:	48 b8 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rax
  4021bf:	76 65 20 
  4021c2:	48 89 43 18          	mov    %rax,0x18(%rbx)
  4021c6:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  4021cd:	72 20 61 
  4021d0:	48 89 43 20          	mov    %rax,0x20(%rbx)
  4021d4:	c7 43 28 64 64 72 65 	movl   $0x65726464,0x28(%rbx)
  4021db:	66 c7 43 2c 73 73    	movw   $0x7373,0x2c(%rbx)
  4021e1:	c6 43 2e 00          	movb   $0x0,0x2e(%rbx)
  4021e5:	89 ef                	mov    %ebp,%edi
  4021e7:	e8 44 ea ff ff       	callq  400c30 <close@plt>
  4021ec:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4021f1:	e9 e6 05 00 00       	jmpq   4027dc <submitr+0x775>
  4021f6:	48 c7 84 24 30 a0 00 	movq   $0x0,0xa030(%rsp)
  4021fd:	00 00 00 00 00 
  402202:	48 c7 84 24 38 a0 00 	movq   $0x0,0xa038(%rsp)
  402209:	00 00 00 00 00 
  40220e:	66 c7 84 24 30 a0 00 	movw   $0x2,0xa030(%rsp)
  402215:	00 02 00 
  402218:	48 8b 48 18          	mov    0x18(%rax),%rcx
  40221c:	48 63 50 14          	movslq 0x14(%rax),%rdx
  402220:	48 8d b4 24 34 a0 00 	lea    0xa034(%rsp),%rsi
  402227:	00 
  402228:	48 8b 39             	mov    (%rcx),%rdi
  40222b:	e8 d0 ea ff ff       	callq  400d00 <bcopy@plt>
  402230:	0f b7 44 24 04       	movzwl 0x4(%rsp),%eax
  402235:	66 c1 c8 08          	ror    $0x8,%ax
  402239:	66 89 84 24 32 a0 00 	mov    %ax,0xa032(%rsp)
  402240:	00 
  402241:	ba 10 00 00 00       	mov    $0x10,%edx
  402246:	48 8d b4 24 30 a0 00 	lea    0xa030(%rsp),%rsi
  40224d:	00 
  40224e:	89 ef                	mov    %ebp,%edi
  402250:	e8 1b eb ff ff       	callq  400d70 <connect@plt>
  402255:	85 c0                	test   %eax,%eax
  402257:	79 59                	jns    4022b2 <submitr+0x24b>
  402259:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  402260:	3a 20 55 
  402263:	48 89 03             	mov    %rax,(%rbx)
  402266:	48 b8 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rax
  40226d:	20 74 6f 
  402270:	48 89 43 08          	mov    %rax,0x8(%rbx)
  402274:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  40227b:	65 63 74 
  40227e:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402282:	48 b8 20 74 6f 20 74 	movabs $0x20656874206f7420,%rax
  402289:	68 65 20 
  40228c:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402290:	c7 43 20 73 65 72 76 	movl   $0x76726573,0x20(%rbx)
  402297:	66 c7 43 24 65 72    	movw   $0x7265,0x24(%rbx)
  40229d:	c6 43 26 00          	movb   $0x0,0x26(%rbx)
  4022a1:	89 ef                	mov    %ebp,%edi
  4022a3:	e8 88 e9 ff ff       	callq  400c30 <close@plt>
  4022a8:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4022ad:	e9 2a 05 00 00       	jmpq   4027dc <submitr+0x775>
  4022b2:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  4022b9:	4c 89 ef             	mov    %r13,%rdi
  4022bc:	b8 00 00 00 00       	mov    $0x0,%eax
  4022c1:	48 89 d1             	mov    %rdx,%rcx
  4022c4:	f2 ae                	repnz scas %es:(%rdi),%al
  4022c6:	48 f7 d1             	not    %rcx
  4022c9:	48 89 ce             	mov    %rcx,%rsi
  4022cc:	4c 89 ff             	mov    %r15,%rdi
  4022cf:	48 89 d1             	mov    %rdx,%rcx
  4022d2:	f2 ae                	repnz scas %es:(%rdi),%al
  4022d4:	48 f7 d1             	not    %rcx
  4022d7:	49 89 c8             	mov    %rcx,%r8
  4022da:	4c 89 f7             	mov    %r14,%rdi
  4022dd:	48 89 d1             	mov    %rdx,%rcx
  4022e0:	f2 ae                	repnz scas %es:(%rdi),%al
  4022e2:	49 29 c8             	sub    %rcx,%r8
  4022e5:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
  4022ea:	48 89 d1             	mov    %rdx,%rcx
  4022ed:	f2 ae                	repnz scas %es:(%rdi),%al
  4022ef:	49 29 c8             	sub    %rcx,%r8
  4022f2:	48 8d 44 76 fd       	lea    -0x3(%rsi,%rsi,2),%rax
  4022f7:	49 8d 44 00 7b       	lea    0x7b(%r8,%rax,1),%rax
  4022fc:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
  402302:	76 72                	jbe    402376 <submitr+0x30f>
  402304:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  40230b:	3a 20 52 
  40230e:	48 89 03             	mov    %rax,(%rbx)
  402311:	48 b8 65 73 75 6c 74 	movabs $0x747320746c757365,%rax
  402318:	20 73 74 
  40231b:	48 89 43 08          	mov    %rax,0x8(%rbx)
  40231f:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
  402326:	74 6f 6f 
  402329:	48 89 43 10          	mov    %rax,0x10(%rbx)
  40232d:	48 b8 20 6c 61 72 67 	movabs $0x202e656772616c20,%rax
  402334:	65 2e 20 
  402337:	48 89 43 18          	mov    %rax,0x18(%rbx)
  40233b:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
  402342:	61 73 65 
  402345:	48 89 43 20          	mov    %rax,0x20(%rbx)
  402349:	48 b8 20 53 55 42 4d 	movabs $0x5254494d42555320,%rax
  402350:	49 54 52 
  402353:	48 89 43 28          	mov    %rax,0x28(%rbx)
  402357:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
  40235e:	55 46 00 
  402361:	48 89 43 30          	mov    %rax,0x30(%rbx)
  402365:	89 ef                	mov    %ebp,%edi
  402367:	e8 c4 e8 ff ff       	callq  400c30 <close@plt>
  40236c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402371:	e9 66 04 00 00       	jmpq   4027dc <submitr+0x775>
  402376:	48 8d b4 24 20 40 00 	lea    0x4020(%rsp),%rsi
  40237d:	00 
  40237e:	b9 00 04 00 00       	mov    $0x400,%ecx
  402383:	b8 00 00 00 00       	mov    $0x0,%eax
  402388:	48 89 f7             	mov    %rsi,%rdi
  40238b:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  40238e:	4c 89 ef             	mov    %r13,%rdi
  402391:	e8 95 fa ff ff       	callq  401e2b <urlencode>
  402396:	85 c0                	test   %eax,%eax
  402398:	0f 89 8a 00 00 00    	jns    402428 <submitr+0x3c1>
  40239e:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  4023a5:	3a 20 52 
  4023a8:	48 89 03             	mov    %rax,(%rbx)
  4023ab:	48 b8 65 73 75 6c 74 	movabs $0x747320746c757365,%rax
  4023b2:	20 73 74 
  4023b5:	48 89 43 08          	mov    %rax,0x8(%rbx)
  4023b9:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
  4023c0:	63 6f 6e 
  4023c3:	48 89 43 10          	mov    %rax,0x10(%rbx)
  4023c7:	48 b8 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rax
  4023ce:	20 61 6e 
  4023d1:	48 89 43 18          	mov    %rax,0x18(%rbx)
  4023d5:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
  4023dc:	67 61 6c 
  4023df:	48 89 43 20          	mov    %rax,0x20(%rbx)
  4023e3:	48 b8 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rax
  4023ea:	6e 70 72 
  4023ed:	48 89 43 28          	mov    %rax,0x28(%rbx)
  4023f1:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
  4023f8:	6c 65 20 
  4023fb:	48 89 43 30          	mov    %rax,0x30(%rbx)
  4023ff:	48 b8 63 68 61 72 61 	movabs $0x6574636172616863,%rax
  402406:	63 74 65 
  402409:	48 89 43 38          	mov    %rax,0x38(%rbx)
  40240d:	66 c7 43 40 72 2e    	movw   $0x2e72,0x40(%rbx)
  402413:	c6 43 42 00          	movb   $0x0,0x42(%rbx)
  402417:	89 ef                	mov    %ebp,%edi
  402419:	e8 12 e8 ff ff       	callq  400c30 <close@plt>
  40241e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402423:	e9 b4 03 00 00       	jmpq   4027dc <submitr+0x775>
  402428:	4d 89 e1             	mov    %r12,%r9
  40242b:	4c 8d 84 24 20 40 00 	lea    0x4020(%rsp),%r8
  402432:	00 
  402433:	4c 89 f9             	mov    %r15,%rcx
  402436:	4c 89 f2             	mov    %r14,%rdx
  402439:	be 08 33 40 00       	mov    $0x403308,%esi
  40243e:	48 8d bc 24 20 60 00 	lea    0x6020(%rsp),%rdi
  402445:	00 
  402446:	b8 00 00 00 00       	mov    $0x0,%eax
  40244b:	e8 00 e9 ff ff       	callq  400d50 <sprintf@plt>
  402450:	48 8d bc 24 20 60 00 	lea    0x6020(%rsp),%rdi
  402457:	00 
  402458:	b8 00 00 00 00       	mov    $0x0,%eax
  40245d:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  402464:	f2 ae                	repnz scas %es:(%rdi),%al
  402466:	48 f7 d1             	not    %rcx
  402469:	48 8d 51 ff          	lea    -0x1(%rcx),%rdx
  40246d:	48 8d b4 24 20 60 00 	lea    0x6020(%rsp),%rsi
  402474:	00 
  402475:	89 ef                	mov    %ebp,%edi
  402477:	e8 85 fa ff ff       	callq  401f01 <rio_writen>
  40247c:	48 85 c0             	test   %rax,%rax
  40247f:	79 6e                	jns    4024ef <submitr+0x488>
  402481:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402488:	3a 20 43 
  40248b:	48 89 03             	mov    %rax,(%rbx)
  40248e:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  402495:	20 75 6e 
  402498:	48 89 43 08          	mov    %rax,0x8(%rbx)
  40249c:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4024a3:	74 6f 20 
  4024a6:	48 89 43 10          	mov    %rax,0x10(%rbx)
  4024aa:	48 b8 77 72 69 74 65 	movabs $0x6f74206574697277,%rax
  4024b1:	20 74 6f 
  4024b4:	48 89 43 18          	mov    %rax,0x18(%rbx)
  4024b8:	48 b8 20 74 68 65 20 	movabs $0x7365722065687420,%rax
  4024bf:	72 65 73 
  4024c2:	48 89 43 20          	mov    %rax,0x20(%rbx)
  4024c6:	48 b8 75 6c 74 20 73 	movabs $0x7672657320746c75,%rax
  4024cd:	65 72 76 
  4024d0:	48 89 43 28          	mov    %rax,0x28(%rbx)
  4024d4:	66 c7 43 30 65 72    	movw   $0x7265,0x30(%rbx)
  4024da:	c6 43 32 00          	movb   $0x0,0x32(%rbx)
  4024de:	89 ef                	mov    %ebp,%edi
  4024e0:	e8 4b e7 ff ff       	callq  400c30 <close@plt>
  4024e5:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4024ea:	e9 ed 02 00 00       	jmpq   4027dc <submitr+0x775>
  4024ef:	89 ee                	mov    %ebp,%esi
  4024f1:	48 8d bc 24 20 80 00 	lea    0x8020(%rsp),%rdi
  4024f8:	00 
  4024f9:	e8 f2 f8 ff ff       	callq  401df0 <rio_readinitb>
  4024fe:	ba 00 20 00 00       	mov    $0x2000,%edx
  402503:	48 8d b4 24 20 60 00 	lea    0x6020(%rsp),%rsi
  40250a:	00 
  40250b:	48 8d bc 24 20 80 00 	lea    0x8020(%rsp),%rdi
  402512:	00 
  402513:	e8 cb fa ff ff       	callq  401fe3 <rio_readlineb>
  402518:	48 85 c0             	test   %rax,%rax
  40251b:	7f 7d                	jg     40259a <submitr+0x533>
  40251d:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402524:	3a 20 43 
  402527:	48 89 03             	mov    %rax,(%rbx)
  40252a:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  402531:	20 75 6e 
  402534:	48 89 43 08          	mov    %rax,0x8(%rbx)
  402538:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  40253f:	74 6f 20 
  402542:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402546:	48 b8 72 65 61 64 20 	movabs $0x7269662064616572,%rax
  40254d:	66 69 72 
  402550:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402554:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
  40255b:	61 64 65 
  40255e:	48 89 43 20          	mov    %rax,0x20(%rbx)
  402562:	48 b8 72 20 66 72 6f 	movabs $0x72206d6f72662072,%rax
  402569:	6d 20 72 
  40256c:	48 89 43 28          	mov    %rax,0x28(%rbx)
  402570:	48 b8 65 73 75 6c 74 	movabs $0x657320746c757365,%rax
  402577:	20 73 65 
  40257a:	48 89 43 30          	mov    %rax,0x30(%rbx)
  40257e:	c7 43 38 72 76 65 72 	movl   $0x72657672,0x38(%rbx)
  402585:	c6 43 3c 00          	movb   $0x0,0x3c(%rbx)
  402589:	89 ef                	mov    %ebp,%edi
  40258b:	e8 a0 e6 ff ff       	callq  400c30 <close@plt>
  402590:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402595:	e9 42 02 00 00       	jmpq   4027dc <submitr+0x775>
  40259a:	4c 8d 44 24 10       	lea    0x10(%rsp),%r8
  40259f:	48 8d 8c 24 1c 20 00 	lea    0x201c(%rsp),%rcx
  4025a6:	00 
  4025a7:	48 8d 94 24 20 20 00 	lea    0x2020(%rsp),%rdx
  4025ae:	00 
  4025af:	be c4 33 40 00       	mov    $0x4033c4,%esi
  4025b4:	48 8d bc 24 20 60 00 	lea    0x6020(%rsp),%rdi
  4025bb:	00 
  4025bc:	b8 00 00 00 00       	mov    $0x0,%eax
  4025c1:	e8 1a e7 ff ff       	callq  400ce0 <__isoc99_sscanf@plt>
  4025c6:	e9 98 00 00 00       	jmpq   402663 <submitr+0x5fc>
  4025cb:	ba 00 20 00 00       	mov    $0x2000,%edx
  4025d0:	48 8d b4 24 20 60 00 	lea    0x6020(%rsp),%rsi
  4025d7:	00 
  4025d8:	48 8d bc 24 20 80 00 	lea    0x8020(%rsp),%rdi
  4025df:	00 
  4025e0:	e8 fe f9 ff ff       	callq  401fe3 <rio_readlineb>
  4025e5:	48 85 c0             	test   %rax,%rax
  4025e8:	7f 79                	jg     402663 <submitr+0x5fc>
  4025ea:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  4025f1:	3a 20 43 
  4025f4:	48 89 03             	mov    %rax,(%rbx)
  4025f7:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  4025fe:	20 75 6e 
  402601:	48 89 43 08          	mov    %rax,0x8(%rbx)
  402605:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  40260c:	74 6f 20 
  40260f:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402613:	48 b8 72 65 61 64 20 	movabs $0x6165682064616572,%rax
  40261a:	68 65 61 
  40261d:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402621:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
  402628:	66 72 6f 
  40262b:	48 89 43 20          	mov    %rax,0x20(%rbx)
  40262f:	48 b8 6d 20 74 68 65 	movabs $0x657220656874206d,%rax
  402636:	20 72 65 
  402639:	48 89 43 28          	mov    %rax,0x28(%rbx)
  40263d:	48 b8 73 75 6c 74 20 	movabs $0x72657320746c7573,%rax
  402644:	73 65 72 
  402647:	48 89 43 30          	mov    %rax,0x30(%rbx)
  40264b:	c7 43 38 76 65 72 00 	movl   $0x726576,0x38(%rbx)
  402652:	89 ef                	mov    %ebp,%edi
  402654:	e8 d7 e5 ff ff       	callq  400c30 <close@plt>
  402659:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40265e:	e9 79 01 00 00       	jmpq   4027dc <submitr+0x775>
  402663:	0f b6 84 24 20 60 00 	movzbl 0x6020(%rsp),%eax
  40266a:	00 
  40266b:	83 e8 0d             	sub    $0xd,%eax
  40266e:	75 15                	jne    402685 <submitr+0x61e>
  402670:	0f b6 84 24 21 60 00 	movzbl 0x6021(%rsp),%eax
  402677:	00 
  402678:	83 e8 0a             	sub    $0xa,%eax
  40267b:	75 08                	jne    402685 <submitr+0x61e>
  40267d:	0f b6 84 24 22 60 00 	movzbl 0x6022(%rsp),%eax
  402684:	00 
  402685:	85 c0                	test   %eax,%eax
  402687:	0f 85 3e ff ff ff    	jne    4025cb <submitr+0x564>
  40268d:	ba 00 20 00 00       	mov    $0x2000,%edx
  402692:	48 8d b4 24 20 60 00 	lea    0x6020(%rsp),%rsi
  402699:	00 
  40269a:	48 8d bc 24 20 80 00 	lea    0x8020(%rsp),%rdi
  4026a1:	00 
  4026a2:	e8 3c f9 ff ff       	callq  401fe3 <rio_readlineb>
  4026a7:	48 85 c0             	test   %rax,%rax
  4026aa:	0f 8f 83 00 00 00    	jg     402733 <submitr+0x6cc>
  4026b0:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  4026b7:	3a 20 43 
  4026ba:	48 89 03             	mov    %rax,(%rbx)
  4026bd:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  4026c4:	20 75 6e 
  4026c7:	48 89 43 08          	mov    %rax,0x8(%rbx)
  4026cb:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4026d2:	74 6f 20 
  4026d5:	48 89 43 10          	mov    %rax,0x10(%rbx)
  4026d9:	48 b8 72 65 61 64 20 	movabs $0x6174732064616572,%rax
  4026e0:	73 74 61 
  4026e3:	48 89 43 18          	mov    %rax,0x18(%rbx)
  4026e7:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
  4026ee:	65 73 73 
  4026f1:	48 89 43 20          	mov    %rax,0x20(%rbx)
  4026f5:	48 b8 61 67 65 20 66 	movabs $0x6d6f726620656761,%rax
  4026fc:	72 6f 6d 
  4026ff:	48 89 43 28          	mov    %rax,0x28(%rbx)
  402703:	48 b8 20 72 65 73 75 	movabs $0x20746c7573657220,%rax
  40270a:	6c 74 20 
  40270d:	48 89 43 30          	mov    %rax,0x30(%rbx)
  402711:	c7 43 38 73 65 72 76 	movl   $0x76726573,0x38(%rbx)
  402718:	66 c7 43 3c 65 72    	movw   $0x7265,0x3c(%rbx)
  40271e:	c6 43 3e 00          	movb   $0x0,0x3e(%rbx)
  402722:	89 ef                	mov    %ebp,%edi
  402724:	e8 07 e5 ff ff       	callq  400c30 <close@plt>
  402729:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40272e:	e9 a9 00 00 00       	jmpq   4027dc <submitr+0x775>
  402733:	8b 94 24 1c 20 00 00 	mov    0x201c(%rsp),%edx
  40273a:	81 fa c8 00 00 00    	cmp    $0xc8,%edx
  402740:	74 25                	je     402767 <submitr+0x700>
  402742:	48 8d 4c 24 10       	lea    0x10(%rsp),%rcx
  402747:	be 48 33 40 00       	mov    $0x403348,%esi
  40274c:	48 89 df             	mov    %rbx,%rdi
  40274f:	b8 00 00 00 00       	mov    $0x0,%eax
  402754:	e8 f7 e5 ff ff       	callq  400d50 <sprintf@plt>
  402759:	89 ef                	mov    %ebp,%edi
  40275b:	e8 d0 e4 ff ff       	callq  400c30 <close@plt>
  402760:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402765:	eb 75                	jmp    4027dc <submitr+0x775>
  402767:	48 8d b4 24 20 60 00 	lea    0x6020(%rsp),%rsi
  40276e:	00 
  40276f:	48 89 df             	mov    %rbx,%rdi
  402772:	e8 49 e4 ff ff       	callq  400bc0 <strcpy@plt>
  402777:	89 ef                	mov    %ebp,%edi
  402779:	e8 b2 e4 ff ff       	callq  400c30 <close@plt>
  40277e:	0f b6 13             	movzbl (%rbx),%edx
  402781:	83 ea 4f             	sub    $0x4f,%edx
  402784:	89 d1                	mov    %edx,%ecx
  402786:	85 d2                	test   %edx,%edx
  402788:	75 16                	jne    4027a0 <submitr+0x739>
  40278a:	0f b6 4b 01          	movzbl 0x1(%rbx),%ecx
  40278e:	83 e9 4b             	sub    $0x4b,%ecx
  402791:	75 0d                	jne    4027a0 <submitr+0x739>
  402793:	0f b6 4b 02          	movzbl 0x2(%rbx),%ecx
  402797:	83 e9 0a             	sub    $0xa,%ecx
  40279a:	75 04                	jne    4027a0 <submitr+0x739>
  40279c:	0f b6 4b 03          	movzbl 0x3(%rbx),%ecx
  4027a0:	b8 00 00 00 00       	mov    $0x0,%eax
  4027a5:	85 c9                	test   %ecx,%ecx
  4027a7:	74 33                	je     4027dc <submitr+0x775>
  4027a9:	bf d5 33 40 00       	mov    $0x4033d5,%edi
  4027ae:	b9 05 00 00 00       	mov    $0x5,%ecx
  4027b3:	48 89 de             	mov    %rbx,%rsi
  4027b6:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  4027b8:	40 0f 97 c6          	seta   %sil
  4027bc:	0f 92 c1             	setb   %cl
  4027bf:	40 38 ce             	cmp    %cl,%sil
  4027c2:	74 18                	je     4027dc <submitr+0x775>
  4027c4:	85 d2                	test   %edx,%edx
  4027c6:	75 0d                	jne    4027d5 <submitr+0x76e>
  4027c8:	0f b6 53 01          	movzbl 0x1(%rbx),%edx
  4027cc:	83 ea 4b             	sub    $0x4b,%edx
  4027cf:	75 04                	jne    4027d5 <submitr+0x76e>
  4027d1:	0f b6 53 02          	movzbl 0x2(%rbx),%edx
  4027d5:	83 fa 01             	cmp    $0x1,%edx
  4027d8:	19 c0                	sbb    %eax,%eax
  4027da:	f7 d0                	not    %eax
  4027dc:	48 81 c4 48 a0 00 00 	add    $0xa048,%rsp
  4027e3:	5b                   	pop    %rbx
  4027e4:	5d                   	pop    %rbp
  4027e5:	41 5c                	pop    %r12
  4027e7:	41 5d                	pop    %r13
  4027e9:	41 5e                	pop    %r14
  4027eb:	41 5f                	pop    %r15
  4027ed:	c3                   	retq   

00000000004027ee <init_timeout>:
  4027ee:	53                   	push   %rbx
  4027ef:	89 fb                	mov    %edi,%ebx
  4027f1:	85 ff                	test   %edi,%edi
  4027f3:	74 20                	je     402815 <init_timeout+0x27>
  4027f5:	85 ff                	test   %edi,%edi
  4027f7:	b8 00 00 00 00       	mov    $0x0,%eax
  4027fc:	0f 48 d8             	cmovs  %eax,%ebx
  4027ff:	be 02 1e 40 00       	mov    $0x401e02,%esi
  402804:	bf 0e 00 00 00       	mov    $0xe,%edi
  402809:	e8 62 e4 ff ff       	callq  400c70 <signal@plt>
  40280e:	89 df                	mov    %ebx,%edi
  402810:	e8 0b e4 ff ff       	callq  400c20 <alarm@plt>
  402815:	5b                   	pop    %rbx
  402816:	c3                   	retq   

0000000000402817 <init_driver>:
  402817:	55                   	push   %rbp
  402818:	53                   	push   %rbx
  402819:	48 83 ec 18          	sub    $0x18,%rsp
  40281d:	48 89 fd             	mov    %rdi,%rbp
  402820:	be 01 00 00 00       	mov    $0x1,%esi
  402825:	bf 0d 00 00 00       	mov    $0xd,%edi
  40282a:	e8 41 e4 ff ff       	callq  400c70 <signal@plt>
  40282f:	be 01 00 00 00       	mov    $0x1,%esi
  402834:	bf 1d 00 00 00       	mov    $0x1d,%edi
  402839:	e8 32 e4 ff ff       	callq  400c70 <signal@plt>
  40283e:	be 01 00 00 00       	mov    $0x1,%esi
  402843:	bf 1d 00 00 00       	mov    $0x1d,%edi
  402848:	e8 23 e4 ff ff       	callq  400c70 <signal@plt>
  40284d:	ba 00 00 00 00       	mov    $0x0,%edx
  402852:	be 01 00 00 00       	mov    $0x1,%esi
  402857:	bf 02 00 00 00       	mov    $0x2,%edi
  40285c:	e8 1f e5 ff ff       	callq  400d80 <socket@plt>
  402861:	89 c3                	mov    %eax,%ebx
  402863:	85 c0                	test   %eax,%eax
  402865:	79 4f                	jns    4028b6 <init_driver+0x9f>
  402867:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  40286e:	3a 20 43 
  402871:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402875:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  40287c:	20 75 6e 
  40287f:	48 89 45 08          	mov    %rax,0x8(%rbp)
  402883:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  40288a:	74 6f 20 
  40288d:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402891:	48 b8 63 72 65 61 74 	movabs $0x7320657461657263,%rax
  402898:	65 20 73 
  40289b:	48 89 45 18          	mov    %rax,0x18(%rbp)
  40289f:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
  4028a6:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
  4028ac:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4028b1:	e9 2e 01 00 00       	jmpq   4029e4 <init_driver+0x1cd>
  4028b6:	bf 9a 2e 40 00       	mov    $0x402e9a,%edi
  4028bb:	e8 c0 e3 ff ff       	callq  400c80 <gethostbyname@plt>
  4028c0:	48 85 c0             	test   %rax,%rax
  4028c3:	75 73                	jne    402938 <init_driver+0x121>
  4028c5:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4028cc:	74 6f 20 
  4028cf:	48 89 45 10          	mov    %rax,0x10(%rbp)
  4028d3:	48 b8 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rax
  4028da:	76 65 20 
  4028dd:	48 89 45 18          	mov    %rax,0x18(%rbp)
  4028e1:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  4028e8:	72 20 61 
  4028eb:	48 89 45 20          	mov    %rax,0x20(%rbp)
  4028ef:	48 b8 64 64 72 65 73 	movabs $0x203a737365726464,%rax
  4028f6:	73 3a 20 
  4028f9:	48 89 45 28          	mov    %rax,0x28(%rbp)
  4028fd:	c6 45 30 00          	movb   $0x0,0x30(%rbp)
  402901:	48 b8 7a 65 75 73 2d 	movabs $0x762e312d7375657a,%rax
  402908:	31 2e 76 
  40290b:	48 89 45 00          	mov    %rax,0x0(%rbp)
  40290f:	48 b8 73 65 2e 67 6d 	movabs $0x652e756d672e6573,%rax
  402916:	75 2e 65 
  402919:	48 89 45 08          	mov    %rax,0x8(%rbp)
  40291d:	66 c7 45 10 64 75    	movw   $0x7564,0x10(%rbp)
  402923:	c6 45 12 00          	movb   $0x0,0x12(%rbp)
  402927:	89 df                	mov    %ebx,%edi
  402929:	e8 02 e3 ff ff       	callq  400c30 <close@plt>
  40292e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402933:	e9 ac 00 00 00       	jmpq   4029e4 <init_driver+0x1cd>
  402938:	48 c7 04 24 00 00 00 	movq   $0x0,(%rsp)
  40293f:	00 
  402940:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
  402947:	00 00 
  402949:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
  40294f:	48 8b 48 18          	mov    0x18(%rax),%rcx
  402953:	48 63 50 14          	movslq 0x14(%rax),%rdx
  402957:	48 8d 74 24 04       	lea    0x4(%rsp),%rsi
  40295c:	48 8b 39             	mov    (%rcx),%rdi
  40295f:	e8 9c e3 ff ff       	callq  400d00 <bcopy@plt>
  402964:	66 c7 44 24 02 3c 9a 	movw   $0x9a3c,0x2(%rsp)
  40296b:	ba 10 00 00 00       	mov    $0x10,%edx
  402970:	48 89 e6             	mov    %rsp,%rsi
  402973:	89 df                	mov    %ebx,%edi
  402975:	e8 f6 e3 ff ff       	callq  400d70 <connect@plt>
  40297a:	85 c0                	test   %eax,%eax
  40297c:	79 50                	jns    4029ce <init_driver+0x1b7>
  40297e:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  402985:	3a 20 55 
  402988:	48 89 45 00          	mov    %rax,0x0(%rbp)
  40298c:	48 b8 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rax
  402993:	20 74 6f 
  402996:	48 89 45 08          	mov    %rax,0x8(%rbp)
  40299a:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  4029a1:	65 63 74 
  4029a4:	48 89 45 10          	mov    %rax,0x10(%rbp)
  4029a8:	48 b8 20 74 6f 20 73 	movabs $0x76726573206f7420,%rax
  4029af:	65 72 76 
  4029b2:	48 89 45 18          	mov    %rax,0x18(%rbp)
  4029b6:	66 c7 45 20 65 72    	movw   $0x7265,0x20(%rbp)
  4029bc:	c6 45 22 00          	movb   $0x0,0x22(%rbp)
  4029c0:	89 df                	mov    %ebx,%edi
  4029c2:	e8 69 e2 ff ff       	callq  400c30 <close@plt>
  4029c7:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4029cc:	eb 16                	jmp    4029e4 <init_driver+0x1cd>
  4029ce:	89 df                	mov    %ebx,%edi
  4029d0:	e8 5b e2 ff ff       	callq  400c30 <close@plt>
  4029d5:	66 c7 45 00 4f 4b    	movw   $0x4b4f,0x0(%rbp)
  4029db:	c6 45 02 00          	movb   $0x0,0x2(%rbp)
  4029df:	b8 00 00 00 00       	mov    $0x0,%eax
  4029e4:	48 83 c4 18          	add    $0x18,%rsp
  4029e8:	5b                   	pop    %rbx
  4029e9:	5d                   	pop    %rbp
  4029ea:	c3                   	retq   

00000000004029eb <driver_post>:
  4029eb:	53                   	push   %rbx
  4029ec:	48 83 ec 10          	sub    $0x10,%rsp
  4029f0:	4c 89 cb             	mov    %r9,%rbx
  4029f3:	45 85 c0             	test   %r8d,%r8d
  4029f6:	74 22                	je     402a1a <driver_post+0x2f>
  4029f8:	48 89 ce             	mov    %rcx,%rsi
  4029fb:	bf da 33 40 00       	mov    $0x4033da,%edi
  402a00:	b8 00 00 00 00       	mov    $0x0,%eax
  402a05:	e8 f6 e1 ff ff       	callq  400c00 <printf@plt>
  402a0a:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  402a0f:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  402a13:	b8 00 00 00 00       	mov    $0x0,%eax
  402a18:	eb 39                	jmp    402a53 <driver_post+0x68>
  402a1a:	48 85 ff             	test   %rdi,%rdi
  402a1d:	74 26                	je     402a45 <driver_post+0x5a>
  402a1f:	80 3f 00             	cmpb   $0x0,(%rdi)
  402a22:	74 21                	je     402a45 <driver_post+0x5a>
  402a24:	4c 89 0c 24          	mov    %r9,(%rsp)
  402a28:	49 89 c9             	mov    %rcx,%r9
  402a2b:	49 89 d0             	mov    %rdx,%r8
  402a2e:	48 89 f9             	mov    %rdi,%rcx
  402a31:	48 89 f2             	mov    %rsi,%rdx
  402a34:	be 9a 3c 00 00       	mov    $0x3c9a,%esi
  402a39:	bf 9a 2e 40 00       	mov    $0x402e9a,%edi
  402a3e:	e8 24 f6 ff ff       	callq  402067 <submitr>
  402a43:	eb 0e                	jmp    402a53 <driver_post+0x68>
  402a45:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  402a4a:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  402a4e:	b8 00 00 00 00       	mov    $0x0,%eax
  402a53:	48 83 c4 10          	add    $0x10,%rsp
  402a57:	5b                   	pop    %rbx
  402a58:	c3                   	retq   
  402a59:	0f 1f 00             	nopl   (%rax)

0000000000402a5c <check>:
  402a5c:	89 fa                	mov    %edi,%edx
  402a5e:	c1 ea 1c             	shr    $0x1c,%edx
  402a61:	b8 00 00 00 00       	mov    $0x0,%eax
  402a66:	b9 00 00 00 00       	mov    $0x0,%ecx
  402a6b:	85 d2                	test   %edx,%edx
  402a6d:	75 0d                	jne    402a7c <check+0x20>
  402a6f:	eb 1b                	jmp    402a8c <check+0x30>
  402a71:	89 f8                	mov    %edi,%eax
  402a73:	d3 e8                	shr    %cl,%eax
  402a75:	3c 0a                	cmp    $0xa,%al
  402a77:	74 0e                	je     402a87 <check+0x2b>
  402a79:	83 c1 08             	add    $0x8,%ecx
  402a7c:	83 f9 1f             	cmp    $0x1f,%ecx
  402a7f:	7e f0                	jle    402a71 <check+0x15>
  402a81:	b8 01 00 00 00       	mov    $0x1,%eax
  402a86:	c3                   	retq   
  402a87:	b8 00 00 00 00       	mov    $0x0,%eax
  402a8c:	f3 c3                	repz retq 

0000000000402a8e <gencookie>:
  402a8e:	53                   	push   %rbx
  402a8f:	83 c7 01             	add    $0x1,%edi
  402a92:	e8 09 e1 ff ff       	callq  400ba0 <srandom@plt>
  402a97:	e8 24 e2 ff ff       	callq  400cc0 <random@plt>
  402a9c:	89 c3                	mov    %eax,%ebx
  402a9e:	89 c7                	mov    %eax,%edi
  402aa0:	e8 b7 ff ff ff       	callq  402a5c <check>
  402aa5:	85 c0                	test   %eax,%eax
  402aa7:	74 ee                	je     402a97 <gencookie+0x9>
  402aa9:	89 d8                	mov    %ebx,%eax
  402aab:	5b                   	pop    %rbx
  402aac:	c3                   	retq   
  402aad:	0f 1f 00             	nopl   (%rax)

0000000000402ab0 <__libc_csu_fini>:
  402ab0:	f3 c3                	repz retq 
  402ab2:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  402ab9:	1f 84 00 00 00 00 00 

0000000000402ac0 <__libc_csu_init>:
  402ac0:	48 89 6c 24 d8       	mov    %rbp,-0x28(%rsp)
  402ac5:	4c 89 64 24 e0       	mov    %r12,-0x20(%rsp)
  402aca:	48 8d 2d bf 0f 20 00 	lea    0x200fbf(%rip),%rbp        # 603a90 <__init_array_end>
  402ad1:	4c 8d 25 b0 0f 20 00 	lea    0x200fb0(%rip),%r12        # 603a88 <__frame_dummy_init_array_entry>
  402ad8:	4c 89 6c 24 e8       	mov    %r13,-0x18(%rsp)
  402add:	4c 89 74 24 f0       	mov    %r14,-0x10(%rsp)
  402ae2:	4c 89 7c 24 f8       	mov    %r15,-0x8(%rsp)
  402ae7:	48 89 5c 24 d0       	mov    %rbx,-0x30(%rsp)
  402aec:	48 83 ec 38          	sub    $0x38,%rsp
  402af0:	4c 29 e5             	sub    %r12,%rbp
  402af3:	41 89 fd             	mov    %edi,%r13d
  402af6:	49 89 f6             	mov    %rsi,%r14
  402af9:	48 c1 fd 03          	sar    $0x3,%rbp
  402afd:	49 89 d7             	mov    %rdx,%r15
  402b00:	e8 53 e0 ff ff       	callq  400b58 <_init>
  402b05:	48 85 ed             	test   %rbp,%rbp
  402b08:	74 1c                	je     402b26 <__libc_csu_init+0x66>
  402b0a:	31 db                	xor    %ebx,%ebx
  402b0c:	0f 1f 40 00          	nopl   0x0(%rax)
  402b10:	4c 89 fa             	mov    %r15,%rdx
  402b13:	4c 89 f6             	mov    %r14,%rsi
  402b16:	44 89 ef             	mov    %r13d,%edi
  402b19:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  402b1d:	48 83 c3 01          	add    $0x1,%rbx
  402b21:	48 39 eb             	cmp    %rbp,%rbx
  402b24:	72 ea                	jb     402b10 <__libc_csu_init+0x50>
  402b26:	48 8b 5c 24 08       	mov    0x8(%rsp),%rbx
  402b2b:	48 8b 6c 24 10       	mov    0x10(%rsp),%rbp
  402b30:	4c 8b 64 24 18       	mov    0x18(%rsp),%r12
  402b35:	4c 8b 6c 24 20       	mov    0x20(%rsp),%r13
  402b3a:	4c 8b 74 24 28       	mov    0x28(%rsp),%r14
  402b3f:	4c 8b 7c 24 30       	mov    0x30(%rsp),%r15
  402b44:	48 83 c4 38          	add    $0x38,%rsp
  402b48:	c3                   	retq   
  402b49:	0f 1f 00             	nopl   (%rax)

Disassembly of section .fini:

0000000000402b4c <_fini>:
  402b4c:	48 83 ec 08          	sub    $0x8,%rsp
  402b50:	48 83 c4 08          	add    $0x8,%rsp
  402b54:	c3                   	retq   
