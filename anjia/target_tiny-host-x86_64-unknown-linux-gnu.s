	.text
	.file	"target_tiny.c"
	.globl	main                    # -- Begin function main
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
	subq	$64, %rsp
	leaq	-48(%rbp), %r8
	leaq	-40(%rbp), %rcx
	movl	$0, -4(%rbp)
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, -20(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, -32(%rbp)
	movq	-32(%rbp), %rdx
	movq	%rdx, -40(%rbp)
	movq	%rdx, -48(%rbp)
	movq	$-1, %rdi
	movabsq	$.__omp_offloading_10302_3b0082a_main_l6.region_id, %rsi
	movl	$1, %eax
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movabsq	$.L.offload_sizes, %r9
	movabsq	$.L.offload_maptypes, %r10
	movq	%r10, (%rsp)
	callq	__tgt_target
	cmpl	$0, %eax
	je	.LBB0_2
# %bb.1:
	movq	-56(%rbp), %rdi         # 8-byte Reload
	callq	__omp_offloading_10302_3b0082a_main_l6
.LBB0_2:
	xorl	%eax, %eax
	addq	$64, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function __omp_offloading_10302_3b0082a_main_l6
	.type	__omp_offloading_10302_3b0082a_main_l6,@function
__omp_offloading_10302_3b0082a_main_l6: # @__omp_offloading_10302_3b0082a_main_l6
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	$1, -8(%rbp)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end1:
	.size	__omp_offloading_10302_3b0082a_main_l6, .Lfunc_end1-__omp_offloading_10302_3b0082a_main_l6
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
.Lfunc_end2:
	.size	.omp_offloading.requires_reg, .Lfunc_end2-.omp_offloading.requires_reg
	.cfi_endproc
                                        # -- End function
	.type	.__omp_offloading_10302_3b0082a_main_l6.region_id,@object # @.__omp_offloading_10302_3b0082a_main_l6.region_id
	.section	.rodata,"a",@progbits
	.weak	.__omp_offloading_10302_3b0082a_main_l6.region_id
.__omp_offloading_10302_3b0082a_main_l6.region_id:
	.byte	0                       # 0x0
	.size	.__omp_offloading_10302_3b0082a_main_l6.region_id, 1

	.type	.L.offload_sizes,@object # @.offload_sizes
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.L.offload_sizes:
	.quad	4                       # 0x4
	.size	.L.offload_sizes, 8

	.type	.L.offload_maptypes,@object # @.offload_maptypes
	.p2align	3
.L.offload_maptypes:
	.quad	800                     # 0x320
	.size	.L.offload_maptypes, 8

	.type	.omp_offloading.entry_name,@object # @.omp_offloading.entry_name
	.section	.rodata.str1.16,"aMS",@progbits,1
	.p2align	4
.omp_offloading.entry_name:
	.asciz	"__omp_offloading_10302_3b0082a_main_l6"
	.size	.omp_offloading.entry_name, 39

	.type	.omp_offloading.entry.__omp_offloading_10302_3b0082a_main_l6,@object # @.omp_offloading.entry.__omp_offloading_10302_3b0082a_main_l6
	.section	omp_offloading_entries,"a",@progbits
	.weak	.omp_offloading.entry.__omp_offloading_10302_3b0082a_main_l6
.omp_offloading.entry.__omp_offloading_10302_3b0082a_main_l6:
	.quad	.__omp_offloading_10302_3b0082a_main_l6.region_id
	.quad	.omp_offloading.entry_name
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.size	.omp_offloading.entry.__omp_offloading_10302_3b0082a_main_l6, 32

	.section	.init_array.0,"aw",@init_array
	.p2align	3
	.quad	.omp_offloading.requires_reg

	.ident	"clang version 10.0.0 (git@github.com:llvm/llvm-project.git 01f91c3526efe58aa035c7f27bef817195c7d26c)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym __omp_offloading_10302_3b0082a_main_l6
	.addrsig_sym __tgt_target
	.addrsig_sym .omp_offloading.requires_reg
	.addrsig_sym __tgt_register_requires
	.addrsig_sym .__omp_offloading_10302_3b0082a_main_l6.region_id
