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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$216, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	xorl	%eax, %eax
	leaq	-192(%rbp), %r9
	leaq	-160(%rbp), %r8
	leaq	-128(%rbp), %rcx
	movl	%edi, -44(%rbp)
	movq	%rsi, -56(%rbp)
	movq	%rdx, -64(%rbp)
	movss	%xmm0, -68(%rbp)
	movl	-44(%rbp), %edi
	movl	%edi, -88(%rbp)
	movq	-88(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movss	-68(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -96(%rbp)
	movq	-96(%rbp), %r10
	movq	-64(%rbp), %r11
	movq	-56(%rbp), %rbx
	movq	-56(%rbp), %r14
	movslq	-44(%rbp), %r15
	shlq	$2, %r15
	movq	-64(%rbp), %r12
	movq	-64(%rbp), %r13
	movslq	-44(%rbp), %rdi
	shlq	$2, %rdi
	movq	%rdx, -128(%rbp)
	movq	%rdx, -160(%rbp)
	movq	$4, -192(%rbp)
	movq	%rbx, -120(%rbp)
	movq	%r14, -152(%rbp)
	movq	%r15, -184(%rbp)
	movq	%r10, -112(%rbp)
	movq	%r10, -144(%rbp)
	movq	$4, -176(%rbp)
	movq	%r12, -104(%rbp)
	movq	%r13, -136(%rbp)
	movq	%rdi, -168(%rbp)
	movq	$-1, %rdi
	movabsq	$.__omp_offloading_10302_a18a2_axpy_l12.region_id, %rbx
	movq	%rsi, -200(%rbp)        # 8-byte Spill
	movq	%rbx, %rsi
	movl	$4, %ebx
	movq	%rdx, -208(%rbp)        # 8-byte Spill
	movl	%ebx, %edx
	movabsq	$.L.offload_maptypes, %r14
	movq	%r14, (%rsp)
	movl	$1, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	%eax, -212(%rbp)        # 4-byte Spill
	movq	%r10, -224(%rbp)        # 8-byte Spill
	movq	%r11, -232(%rbp)        # 8-byte Spill
	callq	__tgt_target_teams
	cmpl	$0, %eax
	je	.LBB0_2
# %bb.1:
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	-200(%rbp), %rsi        # 8-byte Reload
	movq	-224(%rbp), %rdx        # 8-byte Reload
	movq	-232(%rbp), %rcx        # 8-byte Reload
	callq	__omp_offloading_10302_a18a2_axpy_l12
.LBB0_2:
	addq	$216, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	axpy, .Lfunc_end0-axpy
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function __omp_offloading_10302_a18a2_axpy_l12
	.type	__omp_offloading_10302_a18a2_axpy_l12,@function
__omp_offloading_10302_a18a2_axpy_l12:  # @__omp_offloading_10302_a18a2_axpy_l12
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movabsq	$.omp_outlined., %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	leaq	-8(%rbp), %rcx
	leaq	-24(%rbp), %rdx
	movabsq	$.L__unnamed_1, %rdi
	movl	$4, %esi
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	leaq	-16(%rbp), %r8
	movq	-40(%rbp), %r9          # 8-byte Reload
	leaq	-32(%rbp), %rax
	movq	%rax, (%rsp)
	movb	$0, %al
	callq	__kmpc_fork_call
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end1:
	.size	__omp_offloading_10302_a18a2_axpy_l12, .Lfunc_end1-__omp_offloading_10302_a18a2_axpy_l12
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
	jge	.LBB2_11
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
	jle	.LBB2_3
# %bb.2:
	movl	-64(%rbp), %eax
	movl	%eax, -124(%rbp)        # 4-byte Spill
	jmp	.LBB2_4
.LBB2_3:
	movl	-76(%rbp), %eax
	movl	%eax, -124(%rbp)        # 4-byte Spill
.LBB2_4:
	movl	-124(%rbp), %eax        # 4-byte Reload
	movl	%eax, -76(%rbp)
	movl	-72(%rbp), %eax
	movl	%eax, -52(%rbp)
.LBB2_5:                                # =>This Inner Loop Header: Depth=1
	movl	-52(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jg	.LBB2_9
# %bb.6:                                #   in Loop: Header=BB2_5 Depth=1
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
	movq	(%rdx), %rdi
	movslq	-88(%rbp), %r8
	movss	(%rdi,%r8,4), %xmm0     # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movq	(%rsi), %rdi
	movslq	-88(%rbp), %r8
	movss	(%rdi,%r8,4), %xmm1     # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	movabsq	$.L.str.1, %rdi
	movb	$2, %al
	callq	printf
# %bb.7:                                #   in Loop: Header=BB2_5 Depth=1
	jmp	.LBB2_8
.LBB2_8:                                #   in Loop: Header=BB2_5 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB2_5
.LBB2_9:
	jmp	.LBB2_10
.LBB2_10:
	movq	-8(%rbp), %rax
	movl	(%rax), %esi
	movabsq	$.L__unnamed_2, %rdi
	callq	__kmpc_for_static_fini
.LBB2_11:
	addq	$160, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end2:
	.size	.omp_outlined., .Lfunc_end2-.omp_outlined.
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function main
.LCPI3_0:
	.long	1084227584              # float 5
.LCPI3_1:
	.long	1056964608              # float 0.5
.LCPI3_2:
	.long	1065353216              # float 1
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
	movss	.LCPI3_0(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
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
.LBB3_1:                                # =>This Inner Loop Header: Depth=1
	movl	-56(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB3_4
# %bb.2:                                #   in Loop: Header=BB3_1 Depth=1
	movss	.LCPI3_2(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	movslq	-56(%rbp), %rax
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movss	%xmm0, (%rcx,%rax,4)
	movslq	-56(%rbp), %rax
	movq	-80(%rbp), %rdx         # 8-byte Reload
	movss	%xmm0, (%rdx,%rax,4)
	movslq	-56(%rbp), %rax
	movss	(%rcx,%rax,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movabsq	$.L.str.2, %rdi
	movb	$1, %al
	callq	printf
# %bb.3:                                #   in Loop: Header=BB3_1 Depth=1
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB3_1
.LBB3_4:
	movss	.LCPI3_1(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -60(%rbp)
	movl	-20(%rbp), %edi
	movss	-60(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movq	-80(%rbp), %rdx         # 8-byte Reload
	callq	axpy
	movl	$0, -4(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rsp
	movl	-4(%rbp), %eax
	movq	%rbp, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end3:
	.size	main, .Lfunc_end3-main
	.cfi_endproc
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	4, 0x90         # -- Begin function .omp_offloading.requires_reg
	.type	.omp_offloading.requires_reg,@function
.omp_offloading.requires_reg:           # @.omp_offloading.requires_reg
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	$1, %edi
	callq	__tgt_register_requires
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end4:
	.size	.omp_offloading.requires_reg, .Lfunc_end4-.omp_offloading.requires_reg
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

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"this a tset: %f %f\n"
	.size	.L.str.1, 20

	.type	.L__unnamed_1,@object   # @1
	.data
	.p2align	3
.L__unnamed_1:
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	.L.str
	.size	.L__unnamed_1, 24

	.type	.__omp_offloading_10302_a18a2_axpy_l12.region_id,@object # @.__omp_offloading_10302_a18a2_axpy_l12.region_id
	.section	.rodata,"a",@progbits
	.weak	.__omp_offloading_10302_a18a2_axpy_l12.region_id
.__omp_offloading_10302_a18a2_axpy_l12.region_id:
	.byte	0                       # 0x0
	.size	.__omp_offloading_10302_a18a2_axpy_l12.region_id, 1

	.type	.L.offload_maptypes,@object # @.offload_maptypes
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	4
.L.offload_maptypes:
	.quad	800                     # 0x320
	.quad	35                      # 0x23
	.quad	800                     # 0x320
	.quad	33                      # 0x21
	.size	.L.offload_maptypes, 32

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"this is Y: %f\n"
	.size	.L.str.2, 15

	.type	.omp_offloading.entry_name,@object # @.omp_offloading.entry_name
	.section	.rodata.str1.16,"aMS",@progbits,1
	.p2align	4
.omp_offloading.entry_name:
	.asciz	"__omp_offloading_10302_a18a2_axpy_l12"
	.size	.omp_offloading.entry_name, 38

	.type	.omp_offloading.entry.__omp_offloading_10302_a18a2_axpy_l12,@object # @.omp_offloading.entry.__omp_offloading_10302_a18a2_axpy_l12
	.section	omp_offloading_entries,"a",@progbits
	.weak	.omp_offloading.entry.__omp_offloading_10302_a18a2_axpy_l12
.omp_offloading.entry.__omp_offloading_10302_a18a2_axpy_l12:
	.quad	.__omp_offloading_10302_a18a2_axpy_l12.region_id
	.quad	.omp_offloading.entry_name
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.size	.omp_offloading.entry.__omp_offloading_10302_a18a2_axpy_l12, 32

	.section	.init_array.0,"aw",@init_array
	.p2align	3
	.quad	.omp_offloading.requires_reg

	.ident	"clang version 10.0.0 (https://github.com/llvm-mirror/clang.git 65acf43270ea2894dffa0d0b292b92402f80c8cb) (https://github.com/llvm-mirror/llvm.git 2c4ca6832fa6b306ee6a7010bfb80a3f2596f824)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym axpy
	.addrsig_sym __omp_offloading_10302_a18a2_axpy_l12
	.addrsig_sym .omp_outlined.
	.addrsig_sym __kmpc_for_static_init_4
	.addrsig_sym printf
	.addrsig_sym __kmpc_for_static_fini
	.addrsig_sym __kmpc_fork_call
	.addrsig_sym __tgt_target_teams
	.addrsig_sym .omp_offloading.requires_reg
	.addrsig_sym __tgt_register_requires
	.addrsig_sym .__omp_offloading_10302_a18a2_axpy_l12.region_id
