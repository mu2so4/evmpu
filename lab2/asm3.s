	.file	"main.cpp"
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"output.txt"
.LC1:
	.string	"Wrong input\n"
.LC2:
	.string	"0\n"
	.section	.text.unlikely,"ax",@progbits
.LCOLDB4:
	.section	.text.startup,"ax",@progbits
.LHOTB4:
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB1709:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1709
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movl	$16, %edx
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movq	%rsi, %rbp
	leaq	.LC0(%rip), %rsi
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movl	%edi, %ebx
	subq	$552, %rsp
	.cfi_def_cfa_offset 608
	movq	%fs:40, %rax
	movq	%rax, 536(%rsp)
	xorl	%eax, %eax
	leaq	16(%rsp), %r13
	movq	%r13, %rdi
.LEHB0:
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode@PLT
.LEHE0:
	cmpl	$2, %ebx
	je	.L2
	leaq	.LC1(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
.LEHB1:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	.LC2(%rip), %rsi
	movq	%r13, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
.L6:
	movq	%r13, %rdi
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev@PLT
	movq	536(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L15
	addq	$552, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L2:
	.cfi_restore_state
	movq	8(%rbp), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	call	strtoll@PLT
	xorl	%edi, %edi
	movq	%rax, %r12
	call	time@PLT
	movq	%rax, %rdi
	call	srand@PLT
	testq	%r12, %r12
	jle	.L9
	movabsq	$1000000000000, %r14
	xorl	%r15d, %r15d
	xorl	%ebp, %ebp
	.p2align 4,,10
	.p2align 3
.L5:
	call	rand@PLT
	movslq	%eax, %rdx
	movq	%rdx, %rbx
	imulq	$1125898781, %rdx, %rdx
	movl	%ebx, %eax
	sarl	$31, %eax
	sarq	$50, %rdx
	subl	%eax, %edx
	imull	$1000001, %edx, %edx
	subl	%edx, %ebx
	call	rand@PLT
	movslq	%ebx, %rbx
	movslq	%eax, %rdx
	imulq	%rbx, %rbx
	movl	%eax, %ecx
	imulq	$1125898781, %rdx, %rdx
	sarl	$31, %ecx
	sarq	$50, %rdx
	subl	%ecx, %edx
	imull	$1000001, %edx, %edx
	subl	%edx, %eax
	cltq
	imulq	%rax, %rax
	addq	%rbx, %rax
	cmpq	%r14, %rax
	setle	%al
	addq	$1, %r15
	movzbl	%al, %eax
	addq	%rax, %rbp
	cmpq	%r12, %r15
	jne	.L5
.L3:
	pxor	%xmm0, %xmm0
	pxor	%xmm1, %xmm1
	movq	%r13, %rdi
	movq	$10, 272(%rsp)
	cvtsi2sdq	%rbp, %xmm0
	mulsd	.LC3(%rip), %xmm0
	cvtsi2sdq	%r12, %xmm1
	divsd	%xmm1, %xmm0
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movq	%rax, %rdi
	leaq	15(%rsp), %rsi
	movl	$1, %edx
	movb	$10, 15(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%r13, %rdi
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv@PLT
.LEHE1:
	jmp	.L6
.L9:
	xorl	%ebp, %ebp
	jmp	.L3
.L15:
	call	__stack_chk_fail@PLT
.L10:
	endbr64
	movq	%rax, %rbp
	jmp	.L7
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA1709:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1709-.LLSDACSB1709
.LLSDACSB1709:
	.uleb128 .LEHB0-.LFB1709
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB1709
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L10-.LFB1709
	.uleb128 0
.LLSDACSE1709:
	.section	.text.startup
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC1709
	.type	main.cold, @function
main.cold:
.LFSB1709:
.L7:
	.cfi_def_cfa_offset 608
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	movq	%r13, %rdi
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev@PLT
	movq	%rbp, %rdi
.LEHB2:
	call	_Unwind_Resume@PLT
.LEHE2:
	.cfi_endproc
.LFE1709:
	.section	.gcc_except_table
.LLSDAC1709:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC1709-.LLSDACSBC1709
.LLSDACSBC1709:
	.uleb128 .LEHB2-.LCOLDB4
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSEC1709:
	.section	.text.unlikely
	.section	.text.startup
	.size	main, .-main
	.section	.text.unlikely
	.size	main.cold, .-main.cold
.LCOLDE4:
	.section	.text.startup
.LHOTE4:
	.p2align 4
	.type	_GLOBAL__sub_I_main, @function
_GLOBAL__sub_I_main:
.LFB2244:
	.cfi_startproc
	endbr64
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	leaq	_ZStL8__ioinit(%rip), %rdi
	call	_ZNSt8ios_base4InitC1Ev@PLT
	movq	_ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rdi
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	leaq	__dso_handle(%rip), %rdx
	leaq	_ZStL8__ioinit(%rip), %rsi
	jmp	__cxa_atexit@PLT
	.cfi_endproc
.LFE2244:
	.size	_GLOBAL__sub_I_main, .-_GLOBAL__sub_I_main
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I_main
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC3:
	.long	0
	.long	1074790400
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.rel.local.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align 8
	.type	DW.ref.__gxx_personality_v0, @object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	 1f - 0f
	.long	 4f - 1f
	.long	 5
0:
	.string	 "GNU"
1:
	.align 8
	.long	 0xc0000002
	.long	 3f - 2f
2:
	.long	 0x3
3:
	.align 8
4:
