  .file	"prog.cpp"
	.text
	.globl	_Z5func1PdS_
	.type	_Z5func1PdS_, @function
_Z5func1PdS_:
.LFB2:
	pushq	%rbp
.LCFI0:
	movq	%rsp, %rbp
.LCFI1:
	pushq	%rbx
	pushq   %r12
	pushq   %r13
	pushq   %r14
	subq	$16, %rsp
.LCFI2:
	movq	%rdi, %r13
	movq	%rsi, %r14
	xorq	%r12, %r12
.L3:
	cmpl	$49999999, %r12d
	jg	.L2
	
	movl	%r12d, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	(%rdx,%r13), %rbx #changed
	call	rand
	pxor	%xmm0, %xmm0 #don't remove
	
	cvtsi2sd	%eax, %xmm0
	movsd	.LC0(%rip), %xmm1 #remove
	mulsd	%xmm1, %xmm0 #remove
	movsd	.LC1(%rip), %xmm1 #remove
	divsd	%xmm1, %xmm0 #remove
	#movsd	.LC3(%rip), %xmm1
	#divsd	%xmm1, %xmm0
	
	movsd	.LC2(%rip), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, (%rbx)
	
	
	movl	%r12d, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	(%rdx,%r14), %rbx #changed
	call	rand
	pxor	%xmm0, %xmm0 #don't remove
	
	cvtsi2sd	%eax, %xmm0
	movsd	.LC0(%rip), %xmm1 #remove
	mulsd	%xmm1, %xmm0 #remove
	movsd	.LC1(%rip), %xmm1 #remove
	divsd	%xmm1, %xmm0 #remove
	#movsd	.LC3(%rip), %xmm1
	#divsd	%xmm1, %xmm0
	
	movsd	.LC2(%rip), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, (%rbx)
	addl	$1, %r12d
	jmp	.L3
.L2:
	xorq	%rax, %rax
	addq	$16, %rsp
	popq    %r14
	popq    %r13
	popq    %r12
	popq	%rbx
	popq	%rbp
.LCFI3:
	ret
.LFE2:
	.size	_Z5func1PdS_, .-_Z5func1PdS_
	.globl	_Z5func2PdS_
	.type	_Z5func2PdS_, @function
_Z5func2PdS_:
.LFB3:
	pushq	%rbp
.LCFI4:
	movq	%rsp, %rbp
.LCFI5:
	pushq	%r12
	pushq	%r13
	pushq	%r14
	subq	$32, %rsp
	movq	%rdi, %r13
	movq	%rsi, %r14
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -8(%rbp)
	xorq	%r12, %r12
.L7:
	cmpl	$49999999, %r12d
	jg	.L6
	
	cltq
	leaq	0(,%r12,8), %rdx #changed
	movq	%r13, %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %xmm0
	call	sin
	
	movapd	%xmm0, %xmm1
	movsd	.LC4(%rip), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -24(%rbp)
	#movsd	%xmm0, -24(%rbp)
	
	
	cltq
	leaq	0(,%r12,8), %rdx #changed
	movq	%r14, %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %xmm0
	call	cos
	
	mulsd	-24(%rbp), %xmm0
	movsd	-8(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rbp)
	addl	$1, %r12d
	jmp	.L7
.L6:
	movsd	-8(%rbp), %xmm0
	#movsd	.LC4(%rip), %xmm1
	#mulsd	%xmm1, %xmm0
	popq	%r14
	popq	%r13
	popq	%r12
	leave
.LCFI6:
	ret
.LFE3:
	.size	_Z5func2PdS_, .-_Z5func2PdS_
	.section	.rodata
.LC5:
	.string	"\n\n result = %lf\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB4:
	pushq	%rbp
.LCFI7:
	movq	%rsp, %rbp
.LCFI8:
	subq	$48, %rsp
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -24(%rbp)
	movl	$400000000, %edi
	call	_Znam
	movq	%rax, -16(%rbp)
	movl	$400000000, %edi
	call	_Znam
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_Z5func1PdS_
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_Z5func2PdS_
	movq	%xmm0, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)
	movsd	-40(%rbp), %xmm0
	movl	$.LC5, %edi
	movl	$1, %eax
	call	printf
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZdlPv
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZdlPv
	movl	$0, %eax
	leave
.LCFI9:
	ret
.LFE4:
	.size	main, .-main
	.section	.rodata
	.align 8
.LC0:
	.long	0
	.long	1079574528
	.align 8
.LC1:
	.long	4290772992
	.long	1105199103
	.align 8
.LC2:
	.long	0
	.long	1078525952
	.align 8
.LC3:
	.long	0
	.long	1098152671
	.align 8
.LC4:
	.long	3100958126
	.long	1075678820
	.section	.eh_frame,"a",@progbits
.LEFDE1:
	.ident	"GCC: (Ubuntu 5.5.0-12ubuntu1~16.04) 5.5.0 20171010"
	.section	.note.GNU-stack,"",@progbits
  
