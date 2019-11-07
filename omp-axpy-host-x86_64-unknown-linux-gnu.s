	.text
	.file	"omp-axpy.c"
	.globl	axpy                    # -- Begin function axpy
	.p2align	4, 0x90
	.type	axpy,@function
axpy:                                   # @axpy
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movabsq	$.omp_outlined., %rax
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movss	%xmm0, -28(%rbp)
	movabsq	$.L__unnamed_1, %rdi
	movl	$4, %esi
	movq	%rax, %rdx
	leaq	-4(%rbp), %rcx
	leaq	-16(%rbp), %r8
	leaq	-28(%rbp), %r9
	leaq	-24(%rbp), %rax
	movq	%rax, (%rsp)
	movb	$0, %al
	callq	__kmpc_fork_call
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	axpy, .Lfunc_end0-axpy
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function .omp_outlined.
	.type	.omp_outlined.,@function
.omp_outlined.:                         # @.omp_outlined.
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$160, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-48(%rbp), %rdi
	movl	(%rcx), %r10d
	movl	%r10d, -60(%rbp)
	movl	-60(%rbp), %r10d
	subl	$0, %r10d
	subl	$1, %r10d
	addl	$1, %r10d
	movl	%eax, -92(%rbp)         # 4-byte Spill
	movl	%r10d, %eax
	movq	%rdx, -104(%rbp)        # 8-byte Spill
	cltd
	movl	$1, %r10d
	idivl	%r10d
	subl	$1, %eax
	movl	%eax, -64(%rbp)
	movl	$0, -68(%rbp)
	movl	-92(%rbp), %eax         # 4-byte Reload
	cmpl	-60(%rbp), %eax
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	jge	.LBB1_11
# %bb.1:
	movl	$0, -72(%rbp)
	movl	-64(%rbp), %eax
	movl	%eax, -76(%rbp)
	movl	$1, -80(%rbp)
	movl	$0, -84(%rbp)
	movq	-8(%rbp), %rcx
	movl	(%rcx), %esi
	movabsq	$.L__unnamed_2, %rdi
	movl	$34, %edx
	leaq	-84(%rbp), %rcx
	leaq	-72(%rbp), %r8
	leaq	-76(%rbp), %r9
	leaq	-80(%rbp), %r10
	movq	%r10, (%rsp)
	movl	$1, 8(%rsp)
	movl	$1, 16(%rsp)
	callq	__kmpc_for_static_init_4
	movl	-76(%rbp), %eax
	cmpl	-64(%rbp), %eax
	jle	.LBB1_3
# %bb.2:
	movl	-64(%rbp), %eax
	movl	%eax, -124(%rbp)        # 4-byte Spill
	jmp	.LBB1_4
.LBB1_3:
	movl	-76(%rbp), %eax
	movl	%eax, -124(%rbp)        # 4-byte Spill
.LBB1_4:
	movl	-124(%rbp), %eax        # 4-byte Reload
	movl	%eax, -76(%rbp)
	movl	-72(%rbp), %eax
	movl	%eax, -52(%rbp)
.LBB1_5:                                # =>This Inner Loop Header: Depth=1
	movl	-52(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jg	.LBB1_9
# %bb.6:                                #   in Loop: Header=BB1_5 Depth=1
	movl	-52(%rbp), %eax
	shll	$0, %eax
	addl	$0, %eax
	movl	%eax, -88(%rbp)
	movq	-112(%rbp), %rcx        # 8-byte Reload
	movss	(%rcx), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movq	-120(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rsi
	movslq	-88(%rbp), %rdi
	mulss	(%rsi,%rdi,4), %xmm0
	movq	-104(%rbp), %rsi        # 8-byte Reload
	movq	(%rsi), %rdi
	movslq	-88(%rbp), %r8
	addss	(%rdi,%r8,4), %xmm0
	movss	%xmm0, (%rdi,%r8,4)
# %bb.7:                                #   in Loop: Header=BB1_5 Depth=1
	jmp	.LBB1_8
.LBB1_8:                                #   in Loop: Header=BB1_5 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB1_5
.LBB1_9:
	jmp	.LBB1_10
.LBB1_10:
	movq	-8(%rbp), %rax
	movl	(%rax), %esi
	movabsq	$.L__unnamed_2, %rdi
	callq	__kmpc_for_static_fini
.LBB1_11:
	addq	$160, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end1:
	.size	.omp_outlined., .Lfunc_end1-.omp_outlined.
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function main
.LCPI2_0:
	.long	1084227584              # float 5
.LCPI2_1:
	.long	1056964608              # float 0.5
.LCPI2_2:
	.long	1148846080              # float 1000
	.text
	.globl	main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movss	.LCPI2_0(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	movl	$0, -4(%rbp)
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$100, -20(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	movq	%rsp, %rdx
	movq	%rdx, -32(%rbp)
	leaq	15(,%rcx,4), %rdx
	andq	$-16, %rdx
	movq	%rsp, %rsi
	subq	%rdx, %rsi
	movq	%rsi, %rsp
	movq	%rcx, -40(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	leaq	15(,%rcx,4), %rdx
	andq	$-16, %rdx
	movq	%rsp, %r8
	subq	%rdx, %r8
	movq	%r8, %rsp
	movq	%rcx, -48(%rbp)
	movss	%xmm0, -52(%rbp)
	movl	$0, -56(%rbp)
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	movq	%r8, -80(%rbp)          # 8-byte Spill
.LBB2_1:                                # =>This Inner Loop Header: Depth=1
	movl	-56(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB2_4
# %bb.2:                                #   in Loop: Header=BB2_1 Depth=1
	callq	rand
	movss	.LCPI2_2(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	cvtsi2ss	%eax, %xmm1
	divss	%xmm0, %xmm1
	mulss	-52(%rbp), %xmm1
	movslq	-56(%rbp), %rcx
	movq	-72(%rbp), %rdx         # 8-byte Reload
	movss	%xmm1, (%rdx,%rcx,4)
	callq	rand
	movss	.LCPI2_2(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	cvtsi2ss	%eax, %xmm1
	divss	%xmm0, %xmm1
	mulss	-52(%rbp), %xmm1
	movslq	-56(%rbp), %rcx
	movq	-80(%rbp), %rdx         # 8-byte Reload
	movss	%xmm1, (%rdx,%rcx,4)
# %bb.3:                                #   in Loop: Header=BB2_1 Depth=1
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB2_1
.LBB2_4:
	movss	.LCPI2_1(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -60(%rbp)
	movl	-20(%rbp), %edi
	movslq	-20(%rbp), %rax
	shlq	$2, %rax
	movq	-72(%rbp), %rcx         # 8-byte Reload
	addq	%rax, %rcx
	movslq	-20(%rbp), %rax
	shlq	$2, %rax
	movq	-80(%rbp), %rdx         # 8-byte Reload
	addq	%rax, %rdx
	movss	-60(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movq	%rcx, %rsi
	callq	axpy
	movl	$0, -4(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rsp
	movl	-4(%rbp), %eax
	movq	%rbp, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end2:
	.size	main, .Lfunc_end2-main
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	";unknown;unknown;0;0;;"
	.size	.L.str, 23

	.type	.L__unnamed_2,@object   # @0
	.data
	.p2align	3
.L__unnamed_2:
	.long	0                       # 0x0
	.long	514                     # 0x202
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	.L.str
	.size	.L__unnamed_2, 24

	.type	.L__unnamed_1,@object   # @1
	.p2align	3
.L__unnamed_1:
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	.L.str
	.size	.L__unnamed_1, 24


	.ident	"clang version 10.0.0 (git@github.com:llvm/llvm-project.git 01f91c3526efe58aa035c7f27bef817195c7d26c)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym axpy
	.addrsig_sym .omp_outlined.
	.addrsig_sym __kmpc_for_static_init_4
	.addrsig_sym __kmpc_for_static_fini
	.addrsig_sym __kmpc_fork_call
	.addrsig_sym rand
