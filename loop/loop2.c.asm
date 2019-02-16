
gcc -o loop2 -g -ggdb loop2.c

gdb loop2
============================================
GNU gdb (GDB) 8.2.1
Copyright (C) 2018 Free Software Foundation, Inc.
License GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.
Type "show copying" and "show warranty" for details.
This GDB was configured as "x86_64-apple-darwin18.2.0".
Type "show configuration" for configuration details.
For bug reporting instructions, please see:
<http://www.gnu.org/software/gdb/bugs/>.
Find the GDB manual and other documentation resources online at:
    <http://www.gnu.org/software/gdb/documentation/>.

For help, type "help".
Type "apropos word" to search for commands related to "word"...
Reading symbols from loop2...Reading symbols from /Users/ben/docs/MyGit/performance_tests/performance_tests/loop/loop2.dSYM/Contents/Resources/DWARF/loop2...done.
done.
(gdb) disassemble main
Dump of assembler code for function main:
   0x0000000100000df0 <+0>:     push   %rbp
   0x0000000100000df1 <+1>:     mov    %rsp,%rbp
   0x0000000100000df4 <+4>:     sub    $0x20,%rsp
   0x0000000100000df8 <+8>:     mov    $0x2625a00,%eax
   0x0000000100000dfd <+13>:    mov    %eax,%edi
   0x0000000100000dff <+15>:    movl   $0x0,-0x4(%rbp)
   0x0000000100000e06 <+22>:    movl   $0x0,-0x8(%rbp)
   0x0000000100000e0d <+29>:    callq  0x100000f38
   0x0000000100000e12 <+34>:    mov    %rax,-0x10(%rbp)
   0x0000000100000e16 <+38>:    callq  0x100000ea0 <start>
   0x0000000100000e1b <+43>:    movl   $0x0,-0x8(%rbp)
   0x0000000100000e22 <+50>:    cmpl   $0x989680,-0x8(%rbp)
   0x0000000100000e29 <+57>:    jge    0x100000e4c <main+92>
   0x0000000100000e2f <+63>:    mov    -0x10(%rbp),%rax
   0x0000000100000e33 <+67>:    movslq -0x8(%rbp),%rcx
   0x0000000100000e37 <+71>:    movl   $0x2a,(%rax,%rcx,4)
   0x0000000100000e3e <+78>:    mov    -0x8(%rbp),%eax
   0x0000000100000e41 <+81>:    add    $0x1,%eax
   0x0000000100000e44 <+84>:    mov    %eax,-0x8(%rbp)
   0x0000000100000e47 <+87>:    jmpq   0x100000e22 <main+50>
   0x0000000100000e4c <+92>:    callq  0x100000ed0 <stop>
   0x0000000100000e51 <+97>:    lea    0x11a(%rip),%rdi        # 0x100000f72
   0x0000000100000e58 <+104>:   mov    $0x989680,%esi
   0x0000000100000e5d <+109>:   mov    $0x0,%al
   0x0000000100000e5f <+111>:   callq  0x100000f3e
   0x0000000100000e64 <+116>:   lea    0x110(%rip),%rdi        # 0x100000f7b
--Type <RET> for more, q to quit, c to continue without paging--disassemble main^CQuit
(gdb) ^CQuit
(gdb) quit


============================================================================

gcc loop2.c -c
objdump -D a.out


a.out:  file format Mach-O 64-bit x86-64

Disassembly of section __TEXT,__text:
__text:
100000df0:      55      pushq   %rbp
100000df1:      48 89 e5        movq    %rsp, %rbp
100000df4:      48 83 ec 20     subq    $32, %rsp
100000df8:      b8 00 5a 62 02  movl    $40000000, %eax
100000dfd:      89 c7   movl    %eax, %edi
100000dff:      c7 45 fc 00 00 00 00    movl    $0, -4(%rbp)
100000e06:      c7 45 f8 00 00 00 00    movl    $0, -8(%rbp)
100000e0d:      e8 26 01 00 00  callq   294
100000e12:      48 89 45 f0     movq    %rax, -16(%rbp)
100000e16:      e8 85 00 00 00  callq   133 <_start>
100000e1b:      c7 45 f8 00 00 00 00    movl    $0, -8(%rbp)
100000e22:      81 7d f8 80 96 98 00    cmpl    $10000000, -8(%rbp)
100000e29:      0f 8d 1d 00 00 00       jge     29 <_main+0x5c>
100000e2f:      48 8b 45 f0     movq    -16(%rbp), %rax
100000e33:      48 63 4d f8     movslq  -8(%rbp), %rcx
100000e37:      c7 04 88 2a 00 00 00    movl    $42, (%rax,%rcx,4)
100000e3e:      8b 45 f8        movl    -8(%rbp), %eax
100000e41:      83 c0 01        addl    $1, %eax
100000e44:      89 45 f8        movl    %eax, -8(%rbp)
100000e47:      e9 d6 ff ff ff  jmp     -42 <_main+0x32>
100000e4c:      e8 7f 00 00 00  callq   127 <_stop>
100000e51:      48 8d 3d 1a 01 00 00    leaq    282(%rip), %rdi
100000e58:      be 80 96 98 00  movl    $10000000, %esi
100000e5d:      b0 00   movb    $0, %al
100000e5f:      e8 da 00 00 00  callq   218
100000e64:      48 8d 3d 10 01 00 00    leaq    272(%rip), %rdi
100000e6b:      48 8b 4d f0     movq    -16(%rbp), %rcx
100000e6f:      48 63 55 f8     movslq  -8(%rbp), %rdx
100000e73:      8b 34 91        movl    (%rcx,%rdx,4), %esi
100000e76:      89 45 ec        movl    %eax, -20(%rbp)
100000e79:      b0 00   movb    $0, %al
100000e7b:      e8 be 00 00 00  callq   190
100000e80:      48 8d 3d 1e 01 00 00    leaq    286(%rip), %rdi
100000e87:      89 45 e8        movl    %eax, -24(%rbp)
100000e8a:      b0 00   movb    $0, %al
100000e8c:      e8 ad 00 00 00  callq   173
100000e91:      31 f6   xorl    %esi, %esi
100000e93:      89 45 e4        movl    %eax, -28(%rbp)
100000e96:      89 f0   movl    %esi, %eax
100000e98:      48 83 c4 20     addq    $32, %rsp
100000e9c:      5d      popq    %rbp
100000e9d:      c3      retq
100000e9e:      66 90   nop
100000ea0:      55      pushq   %rbp
100000ea1:      48 89 e5        movq    %rsp, %rbp
100000ea4:      48 83 ec 10     subq    $16, %rsp
100000ea8:      48 8d 3d 79 01 00 00    leaq    377(%rip), %rdi
100000eaf:      31 c0   xorl    %eax, %eax
100000eb1:      89 c6   movl    %eax, %esi
100000eb3:      e8 7a 00 00 00  callq   122
100000eb8:      89 45 fc        movl    %eax, -4(%rbp)
100000ebb:      48 83 c4 10     addq    $16, %rsp
100000ebf:      5d      popq    %rbp
100000ec0:      c3      retq
100000ec1:      66 66 66 66 66 66 2e 0f 1f 84 00 00 00 00 00    nopw    %cs:(%rax,%rax)
100000ed0:      55      pushq   %rbp
100000ed1:      48 89 e5        movq    %rsp, %rbp
100000ed4:      48 83 ec 20     subq    $32, %rsp
100000ed8:      48 8d 7d f0     leaq    -16(%rbp), %rdi
100000edc:      31 c0   xorl    %eax, %eax
100000ede:      89 c6   movl    %eax, %esi
100000ee0:      e8 4d 00 00 00  callq   77
100000ee5:      48 8d 3d be 00 00 00    leaq    190(%rip), %rdi
100000eec:      b9 e8 03 00 00  movl    $1000, %ecx
100000ef1:      48 8b 75 f0     movq    -16(%rbp), %rsi
100000ef5:      48 2b 35 2c 01 00 00    subq    300(%rip), %rsi
100000efc:      48 69 f6 e8 03 00 00    imulq   $1000, %rsi, %rsi
100000f03:      8b 55 f8        movl    -8(%rbp), %edx
100000f06:      2b 15 24 01 00 00       subl    292(%rip), %edx
100000f0c:      89 45 e4        movl    %eax, -28(%rbp)
100000f0f:      89 d0   movl    %edx, %eax
100000f11:      99      cltd
100000f12:      f7 f9   idivl   %ecx
100000f14:      4c 63 c0        movslq  %eax, %r8
100000f17:      4c 01 c6        addq    %r8, %rsi
100000f1a:      48 89 75 e8     movq    %rsi, -24(%rbp)
100000f1e:      48 8b 75 e8     movq    -24(%rbp), %rsi
100000f22:      b0 00   movb    $0, %al
100000f24:      e8 15 00 00 00  callq   21
100000f29:      89 45 e0        movl    %eax, -32(%rbp)
100000f2c:      48 83 c4 20     addq    $32, %rsp
100000f30:      5d      popq    %rbp
100000f31:      c3      retq

_main:
100000df0:      55      pushq   %rbp
100000df1:      48 89 e5        movq    %rsp, %rbp
100000df4:      48 83 ec 20     subq    $32, %rsp
100000df8:      b8 00 5a 62 02  movl    $40000000, %eax
100000dfd:      89 c7   movl    %eax, %edi
100000dff:      c7 45 fc 00 00 00 00    movl    $0, -4(%rbp)
100000e06:      c7 45 f8 00 00 00 00    movl    $0, -8(%rbp)
100000e0d:      e8 26 01 00 00  callq   294
100000e12:      48 89 45 f0     movq    %rax, -16(%rbp)
100000e16:      e8 85 00 00 00  callq   133 <_start>
100000e1b:      c7 45 f8 00 00 00 00    movl    $0, -8(%rbp)
100000e22:      81 7d f8 80 96 98 00    cmpl    $10000000, -8(%rbp)
100000e29:      0f 8d 1d 00 00 00       jge     29 <_main+0x5c>
100000e2f:      48 8b 45 f0     movq    -16(%rbp), %rax
100000e33:      48 63 4d f8     movslq  -8(%rbp), %rcx
100000e37:      c7 04 88 2a 00 00 00    movl    $42, (%rax,%rcx,4)
100000e3e:      8b 45 f8        movl    -8(%rbp), %eax
100000e41:      83 c0 01        addl    $1, %eax
100000e44:      89 45 f8        movl    %eax, -8(%rbp)
100000e47:      e9 d6 ff ff ff  jmp     -42 <_main+0x32>
100000e4c:      e8 7f 00 00 00  callq   127 <_stop>
100000e51:      48 8d 3d 1a 01 00 00    leaq    282(%rip), %rdi
100000e58:      be 80 96 98 00  movl    $10000000, %esi
100000e5d:      b0 00   movb    $0, %al
100000e5f:      e8 da 00 00 00  callq   218
100000e64:      48 8d 3d 10 01 00 00    leaq    272(%rip), %rdi
100000e6b:      48 8b 4d f0     movq    -16(%rbp), %rcx
100000e6f:      48 63 55 f8     movslq  -8(%rbp), %rdx
100000e73:      8b 34 91        movl    (%rcx,%rdx,4), %esi
100000e76:      89 45 ec        movl    %eax, -20(%rbp)
100000e79:      b0 00   movb    $0, %al
100000e7b:      e8 be 00 00 00  callq   190
100000e80:      48 8d 3d 1e 01 00 00    leaq    286(%rip), %rdi
100000e87:      89 45 e8        movl    %eax, -24(%rbp)
100000e8a:      b0 00   movb    $0, %al
100000e8c:      e8 ad 00 00 00  callq   173
100000e91:      31 f6   xorl    %esi, %esi
100000e93:      89 45 e4        movl    %eax, -28(%rbp)
100000e96:      89 f0   movl    %esi, %eax
100000e98:      48 83 c4 20     addq    $32, %rsp
100000e9c:      5d      popq    %rbp
100000e9d:      c3      retq
100000e9e:      66 90   nop

_start:
100000ea0:      55      pushq   %rbp
100000ea1:      48 89 e5        movq    %rsp, %rbp
100000ea4:      48 83 ec 10     subq    $16, %rsp
100000ea8:      48 8d 3d 79 01 00 00    leaq    377(%rip), %rdi
100000eaf:      31 c0   xorl    %eax, %eax
100000eb1:      89 c6   movl    %eax, %esi
100000eb3:      e8 7a 00 00 00  callq   122
100000eb8:      89 45 fc        movl    %eax, -4(%rbp)
100000ebb:      48 83 c4 10     addq    $16, %rsp
100000ebf:      5d      popq    %rbp
100000ec0:      c3      retq
100000ec1:      66 66 66 66 66 66 2e 0f 1f 84 00 00 00 00 00    nopw    %cs:(%rax,%rax)

_stop:
100000ed0:      55      pushq   %rbp
100000ed1:      48 89 e5        movq    %rsp, %rbp
100000ed4:      48 83 ec 20     subq    $32, %rsp
100000ed8:      48 8d 7d f0     leaq    -16(%rbp), %rdi
100000edc:      31 c0   xorl    %eax, %eax
100000ede:      89 c6   movl    %eax, %esi
100000ee0:      e8 4d 00 00 00  callq   77
100000ee5:      48 8d 3d be 00 00 00    leaq    190(%rip), %rdi
100000eec:      b9 e8 03 00 00  movl    $1000, %ecx
100000ef1:      48 8b 75 f0     movq    -16(%rbp), %rsi
100000ef5:      48 2b 35 2c 01 00 00    subq    300(%rip), %rsi
100000efc:      48 69 f6 e8 03 00 00    imulq   $1000, %rsi, %rsi
100000f03:      8b 55 f8        movl    -8(%rbp), %edx
100000f06:      2b 15 24 01 00 00       subl    292(%rip), %edx
100000f0c:      89 45 e4        movl    %eax, -28(%rbp)
100000f0f:      89 d0   movl    %edx, %eax
100000f11:      99      cltd
100000f12:      f7 f9   idivl   %ecx
100000f14:      4c 63 c0        movslq  %eax, %r8
100000f17:      4c 01 c6        addq    %r8, %rsi
100000f1a:      48 89 75 e8     movq    %rsi, -24(%rbp)
100000f1e:      48 8b 75 e8     movq    -24(%rbp), %rsi
100000f22:      b0 00   movb    $0, %al
100000f24:      e8 15 00 00 00  callq   21
100000f29:      89 45 e0        movl    %eax, -32(%rbp)
100000f2c:      48 83 c4 20     addq    $32, %rsp
100000f30:      5d      popq    %rbp
100000f31:      c3      retq
Disassembly of section __TEXT,__stubs:
__stubs:
100000f32:      ff 25 d8 00 00 00       jmpq    *216(%rip)
100000f38:      ff 25 da 00 00 00       jmpq    *218(%rip)
100000f3e:      ff 25 dc 00 00 00       jmpq    *220(%rip)
Disassembly of section __TEXT,__stub_helper:
__stub_helper:
100000f44:      4c 8d 1d bd 00 00 00    leaq    189(%rip), %r11
100000f4b:      41 53   pushq   %r11
100000f4d:      ff 25 ad 00 00 00       jmpq    *173(%rip)
100000f53:      90      nop
100000f54:      68 00 00 00 00  pushq   $0
100000f59:      e9 e6 ff ff ff  jmp     -26 <__stub_helper>
100000f5e:      68 14 00 00 00  pushq   $20
100000f63:      e9 dc ff ff ff  jmp     -36 <__stub_helper>
100000f68:      68 22 00 00 00  pushq   $34
100000f6d:      e9 d2 ff ff ff  jmp     -46 <__stub_helper>
Disassembly of section __TEXT,__cstring:
__cstring:
100000f72:      6c      insb    %dx, %es:(%rdi)
100000f73:      6f      outsl   (%rsi), %dx
100000f74:      6f      outsl   (%rsi), %dx
100000f75:      70 73   jo      115
100000f77:      20 25 64 00 66 69       andb    %ah, 1768292452(%rip)
100000f7d:      72 73   jb      115
100000f7f:      74 20   je      32 <__cstring+0x2f>
100000f81:      65 6c   insb    %dx, %es:(%rdi)
100000f83:      65 6d   insl    %dx, %es:(%rdi)
100000f85:      65 6e   outsb   %gs:(%rsi), %dx
100000f87:      74 20   je      32 <__cstring+0x37>
100000f89:      69 6e 20 61 72 72 61    imull   $1634890337, 32(%rsi), %ebp
100000f90:      79 20   jns     32 <__cstring+0x40>
100000f92:      28 73 68        subb    %dh, 104(%rbx)
100000f95:      6f      outsl   (%rsi), %dx
100000f96:      75 6c   jne     108
100000f98:      64 20 62 65     andb    %ah, %fs:101(%rdx)
100000f9c:      20 34 32        andb    %dh, (%rdx,%rsi)
100000f9f:      29 3a   subl    %edi, (%rdx)
100000fa1:      20 25 64 00 64 6f       andb    %ah, 1868824676(%rip)
100000fa7:      6e      outsb   (%rsi), %dx
100000fa8:      65 00 25 6c 6c 75 20    addb    %ah, %gs:544566380(%rip)
100000faf:      6d      insl    %dx, %es:(%rdi)
100000fb0:      73 0a   jae     10
100000fb2:      00  <unknown>
Disassembly of section __TEXT,__unwind_info:
__unwind_info:
100000fb4:      01 00   addl    %eax, (%rax)
100000fb6:      00 00   addb    %al, (%rax)
100000fb8:      1c 00   sbbb    $0, %al
100000fba:      00 00   addb    %al, (%rax)
100000fbc:      00 00   addb    %al, (%rax)
100000fbe:      00 00   addb    %al, (%rax)
100000fc0:      1c 00   sbbb    $0, %al
100000fc2:      00 00   addb    %al, (%rax)
100000fc4:      00 00   addb    %al, (%rax)
100000fc6:      00 00   addb    %al, (%rax)
100000fc8:      1c 00   sbbb    $0, %al
100000fca:      00 00   addb    %al, (%rax)
100000fcc:      02 00   addb    (%rax), %al
100000fce:      00 00   addb    %al, (%rax)
100000fd0:      f0      lock
100000fd1:      0d 00 00 34 00  orl     $3407872, %eax
100000fd6:      00 00   addb    %al, (%rax)
100000fd8:      34 00   xorb    $0, %al
100000fda:      00 00   addb    %al, (%rax)
100000fdc:      33 0f   xorl    (%rdi), %ecx
100000fde:      00 00   addb    %al, (%rax)
100000fe0:      00 00   addb    %al, (%rax)
100000fe2:      00 00   addb    %al, (%rax)
100000fe4:      34 00   xorb    $0, %al
100000fe6:      00 00   addb    %al, (%rax)
100000fe8:      03 00   addl    (%rax), %eax
100000fea:      00 00   addb    %al, (%rax)
100000fec:      0c 00   orb     $0, %al
100000fee:      01 00   addl    %eax, (%rax)
100000ff0:      10 00   adcb    %al, (%rax)
100000ff2:      01 00   addl    %eax, (%rax)
100000ff4:      00 00   addb    %al, (%rax)
100000ff6:      00 00   addb    %al, (%rax)
100000ff8:      00 00   addb    %al, (%rax)
100000ffa:      00 01   addb    %al, (%rcx)
Disassembly of section __DATA,__nl_symbol_ptr:
__nl_symbol_ptr:
100001000:      00 00   addb    %al, (%rax)
100001002:      00 00   addb    %al, (%rax)
100001004:      00 00   addb    %al, (%rax)
100001006:      00 00   addb    %al, (%rax)
100001008:      00 00   addb    %al, (%rax)
10000100a:      00 00   addb    %al, (%rax)
10000100c:      00 00   addb    %al, (%rax)
10000100e:      00 00   addb    %al, (%rax)
Disassembly of section __DATA,__la_symbol_ptr:
__la_symbol_ptr:
100001010:      54      pushq   %rsp
100001011:      0f 00 00        sldtw   (%rax)
100001014:      01 00   addl    %eax, (%rax)
100001016:      00 00   addb    %al, (%rax)
100001018:      5e      popq    %rsi
100001019:      0f 00 00        sldtw   (%rax)
10000101c:      01 00   addl    %eax, (%rax)
10000101e:      00 00   addb    %al, (%rax)
100001020:      68 0f 00 00 01  pushq   $16777231
100001025:      00 00   addb    %al, (%rax)
100001027:      00  <unknown>
Disassembly of section __DATA,__bss:
_tm1:
...