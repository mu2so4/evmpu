	.file	"main.cpp"
	.text
	.section	.rodata
	.type	_ZStL19piecewise_construct, @object
	.size	_ZStL19piecewise_construct, 1
_ZStL19piecewise_construct:
	.zero	1
	.section	.text._ZNSt8ios_base9precisionEl,"axG",@progbits,_ZNSt8ios_base9precisionEl,comdat
	.align 2
	.weak	_ZNSt8ios_base9precisionEl
	.type	_ZNSt8ios_base9precisionEl, @function
_ZNSt8ios_base9precisionEl:
.LFB1151:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1151:
	.size	_ZNSt8ios_base9precisionEl, .-_ZNSt8ios_base9precisionEl
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.section	.rodata
.LC0:
	.string	"output.txt"
.LC1:
	.string	"Wrong input\n"
.LC2:
	.string	"0\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB1641:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1641
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$600, %rsp
	.cfi_offset 3, -24
	movl	%edi, -596(%rbp)
	movq	%rsi, -608(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	leaq	-544(%rbp), %rax
	movl	$16, %edx
	leaq	.LC0(%rip), %rsi
	movq	%rax, %rdi
.LEHB0:
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode@PLT
.LEHE0:
	cmpl	$2, -596(%rbp)
	je	.L4
	leaq	.LC1(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
.LEHB1:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	-544(%rbp), %rax
	leaq	.LC2(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movl	$0, %ebx
	jmp	.L5
.L4:
	movq	-608(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	atoll@PLT
	movq	%rax, -568(%rbp)
	movq	$0, -584(%rbp)
	movl	$0, %edi
	call	time@PLT
	movl	%eax, %edi
	call	srand@PLT
	movq	$0, -576(%rbp)
.L8:
	movq	-576(%rbp), %rax
	cmpq	-568(%rbp), %rax
	jge	.L6
	call	rand@PLT
	movslq	%eax, %rdx
	imulq	$1125898781, %rdx, %rdx
	shrq	$32, %rdx
	movl	%edx, %ecx
	sarl	$18, %ecx
	cltd
	subl	%edx, %ecx
	movl	%ecx, %edx
	imull	$1000001, %edx, %edx
	subl	%edx, %eax
	movl	%eax, %edx
	movslq	%edx, %rax
	movq	%rax, -560(%rbp)
	call	rand@PLT
	movslq	%eax, %rdx
	imulq	$1125898781, %rdx, %rdx
	shrq	$32, %rdx
	movl	%edx, %ecx
	sarl	$18, %ecx
	cltd
	subl	%edx, %ecx
	movl	%ecx, %edx
	imull	$1000001, %edx, %edx
	subl	%edx, %eax
	movl	%eax, %edx
	movslq	%edx, %rax
	movq	%rax, -552(%rbp)
	movq	-560(%rbp), %rax
	imulq	%rax, %rax
	movq	%rax, %rdx
	movq	-552(%rbp), %rax
	imulq	%rax, %rax
	addq	%rax, %rdx
	movabsq	$1000000000000, %rax
	cmpq	%rax, %rdx
	jg	.L7
	addq	$1, -584(%rbp)
.L7:
	addq	$1, -576(%rbp)
	jmp	.L8
.L6:
	leaq	-544(%rbp), %rax
	addq	$248, %rax
	movl	$10, %esi
	movq	%rax, %rdi
	call	_ZNSt8ios_base9precisionEl
	cvtsi2sdq	-584(%rbp), %xmm1
	movsd	.LC3(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	cvtsi2sdq	-568(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSolsEd@PLT
	movl	$10, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv@PLT
.LEHE1:
	movl	$0, %ebx
.L5:
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev@PLT
	movl	%ebx, %eax
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L11
	jmp	.L13
.L12:
	endbr64
	movq	%rax, %rbx
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB2:
	call	_Unwind_Resume@PLT
.LEHE2:
.L13:
	call	__stack_chk_fail@PLT
.L11:
	addq	$600, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1641:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA1641:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1641-.LLSDACSB1641
.LLSDACSB1641:
	.uleb128 .LEHB0-.LFB1641
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB1641
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L12-.LFB1641
	.uleb128 0
	.uleb128 .LEHB2-.LFB1641
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSE1641:
	.text
	.size	main, .-main
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB2176:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	$1, -4(%rbp)
	jne	.L16
	cmpl	$65535, -8(%rbp)
	jne	.L16
	leaq	_ZStL8__ioinit(%rip), %rdi
	call	_ZNSt8ios_base4InitC1Ev@PLT
	leaq	__dso_handle(%rip), %rdx
	leaq	_ZStL8__ioinit(%rip), %rsi
	movq	_ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	__cxa_atexit@PLT
.L16:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2176:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.type	_GLOBAL__sub_I_main, @function
_GLOBAL__sub_I_main:
.LFB2177:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$65535, %esi
	movl	$1, %edi
	call	_Z41__static_initialization_and_destruction_0ii
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2177:
	.size	_GLOBAL__sub_I_main, .-_GLOBAL__sub_I_main
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I_main
	.section	.rodata
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
