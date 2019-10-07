	.text
	.file	"a0.c"
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function main
.LCPI0_0:
	.long	1073741824              # float 2
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
	pushq	%r14
	pushq	%rbx
	subq	$992, %rsp              # imm = 0x3E0
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movss	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	movl	$0, -20(%rbp)
	movl	%edi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movss	%xmm0, -836(%rbp)
	movl	$100, -844(%rbp)
	movl	$0, -840(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	cmpl	$100, -840(%rbp)
	jge	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movslq	-840(%rbp), %rax
	xorps	%xmm0, %xmm0
	movss	%xmm0, -432(%rbp,%rax,4)
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-840(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -840(%rbp)
	jmp	.LBB0_1
.LBB0_4:
	xorl	%eax, %eax
	leaq	-960(%rbp), %r9
	leaq	-928(%rbp), %r8
	leaq	-896(%rbp), %rcx
	leaq	-432(%rbp), %rdx
	leaq	-832(%rbp), %rsi
	movl	-844(%rbp), %edi
	movl	%edi, -856(%rbp)
	movq	-856(%rbp), %r10
	movss	-836(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -864(%rbp)
	movq	-864(%rbp), %r11
	movl	-844(%rbp), %edi
	movl	%edi, %ebx
	shlq	$2, %rbx
	movl	-844(%rbp), %edi
	movl	%edi, %r14d
	shlq	$2, %r14
	movq	%r10, -896(%rbp)
	movq	%r10, -928(%rbp)
	movq	$4, -960(%rbp)
	movq	%rsi, -888(%rbp)
	movq	%rsi, -920(%rbp)
	movq	%rbx, -952(%rbp)
	movq	%r11, -880(%rbp)
	movq	%r11, -912(%rbp)
	movq	$4, -944(%rbp)
	movq	%rdx, -872(%rbp)
	movq	%rdx, -904(%rbp)
	movq	%r14, -936(%rbp)
	movq	$-1, %rdi
	movabsq	$.__omp_offloading_10302_17e8471_main_l9.region_id, %rsi
	movl	$4, %edx
	movabsq	$.L.offload_maptypes, %rbx
	movq	%rbx, (%rsp)
	movl	$1, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	%eax, -964(%rbp)        # 4-byte Spill
	movq	%r10, -976(%rbp)        # 8-byte Spill
	movq	%r11, -984(%rbp)        # 8-byte Spill
	callq	__tgt_target_teams
	cmpl	$0, %eax
	je	.LBB0_6
# %bb.5:
	movq	-976(%rbp), %rdi        # 8-byte Reload
	leaq	-832(%rbp), %rsi
	movq	-984(%rbp), %rdx        # 8-byte Reload
	leaq	-432(%rbp), %rcx
	callq	__omp_offloading_10302_17e8471_main_l9
.LBB0_6:
	xorl	%eax, %eax
	addq	$992, %rsp              # imm = 0x3E0
	popq	%rbx
	popq	%r14
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function __omp_offloading_10302_17e8471_main_l9
	.type	__omp_offloading_10302_17e8471_main_l9,@function
__omp_offloading_10302_17e8471_main_l9: # @__omp_offloading_10302_17e8471_main_l9
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movabsq	$.omp_outlined., %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	leaq	-8(%rbp), %rcx
	movq	-16(%rbp), %r8
	leaq	-24(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movabsq	$.L__unnamed_1, %rdi
	movl	$4, %r9d
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	movl	%r9d, %esi
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movq	-48(%rbp), %r9          # 8-byte Reload
	movq	-40(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movb	$0, %al
	callq	__kmpc_fork_call
	addq	$64, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end1:
	.size	__omp_offloading_10302_17e8471_main_l9, .Lfunc_end1-__omp_offloading_10302_17e8471_main_l9
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
	movslq	-88(%rbp), %rdx
	movq	-120(%rbp), %rsi        # 8-byte Reload
	mulss	(%rsi,%rdx,4), %xmm0
	movslq	-88(%rbp), %rdx
	movq	-104(%rbp), %rdi        # 8-byte Reload
	addss	(%rdi,%rdx,4), %xmm0
	movss	%xmm0, (%rdi,%rdx,4)
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
.Lfunc_end3:
	.size	.omp_offloading.requires_reg, .Lfunc_end3-.omp_offloading.requires_reg
	.cfi_endproc
                                        # -- End function
	.section	.text.startup,"axG",@progbits,".omp_offloading.descriptor_reg.nvptx64-nvidia-cuda",comdat
	.p2align	4, 0x90         # -- Begin function .omp_offloading.descriptor_unreg
	.type	.omp_offloading.descriptor_unreg,@function
.omp_offloading.descriptor_unreg:       # @.omp_offloading.descriptor_unreg
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movabsq	$.omp_offloading.descriptor, %rdi
	callq	__tgt_unregister_lib
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end4:
	.size	.omp_offloading.descriptor_unreg, .Lfunc_end4-.omp_offloading.descriptor_unreg
	.cfi_endproc
                                        # -- End function
	.hidden	".omp_offloading.descriptor_reg.nvptx64-nvidia-cuda" # -- Begin function .omp_offloading.descriptor_reg.nvptx64-nvidia-cuda
	.weak	".omp_offloading.descriptor_reg.nvptx64-nvidia-cuda"
	.p2align	4, 0x90
	.type	".omp_offloading.descriptor_reg.nvptx64-nvidia-cuda",@function
".omp_offloading.descriptor_reg.nvptx64-nvidia-cuda": # @.omp_offloading.descriptor_reg.nvptx64-nvidia-cuda
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movabsq	$.omp_offloading.descriptor, %rdi
	callq	__tgt_register_lib
	movabsq	$.omp_offloading.descriptor, %rcx
	movabsq	$.omp_offloading.descriptor_unreg, %rdi
	movq	%rcx, %rsi
	movabsq	$__dso_handle, %rdx
	movl	%eax, -4(%rbp)          # 4-byte Spill
	callq	__cxa_atexit
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end5:
	.size	".omp_offloading.descriptor_reg.nvptx64-nvidia-cuda", .Lfunc_end5-".omp_offloading.descriptor_reg.nvptx64-nvidia-cuda"
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

	.type	.__omp_offloading_10302_17e8471_main_l9.region_id,@object # @.__omp_offloading_10302_17e8471_main_l9.region_id
	.section	.rodata,"a",@progbits
	.weak	.__omp_offloading_10302_17e8471_main_l9.region_id
.__omp_offloading_10302_17e8471_main_l9.region_id:
	.byte	0                       # 0x0
	.size	.__omp_offloading_10302_17e8471_main_l9.region_id, 1

	.type	.L.offload_maptypes,@object # @.offload_maptypes
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	4
.L.offload_maptypes:
	.quad	800                     # 0x320
	.quad	35                      # 0x23
	.quad	800                     # 0x320
	.quad	33                      # 0x21
	.size	.L.offload_maptypes, 32

	.type	.omp_offloading.entry_name,@object # @.omp_offloading.entry_name
	.section	.rodata.str1.16,"aMS",@progbits,1
	.p2align	4
.omp_offloading.entry_name:
	.asciz	"__omp_offloading_10302_17e8471_main_l9"
	.size	.omp_offloading.entry_name, 39

	.type	.omp_offloading.entry.__omp_offloading_10302_17e8471_main_l9,@object # @.omp_offloading.entry.__omp_offloading_10302_17e8471_main_l9
	.section	omp_offloading_entries,"a",@progbits
	.weak	.omp_offloading.entry.__omp_offloading_10302_17e8471_main_l9
.omp_offloading.entry.__omp_offloading_10302_17e8471_main_l9:
	.quad	.__omp_offloading_10302_17e8471_main_l9.region_id
	.quad	.omp_offloading.entry_name
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.size	.omp_offloading.entry.__omp_offloading_10302_17e8471_main_l9, 32

	.hidden	__start_omp_offloading_entries
	.hidden	__stop_omp_offloading_entries
	.type	.omp_offloading.device_images,@object # @.omp_offloading.device_images
	.section	.rodata..omp_offloading.device_images,"aG",@progbits,".omp_offloading.descriptor_reg.nvptx64-nvidia-cuda",comdat
	.p2align	3
.omp_offloading.device_images:
	.quad	".omp_offloading.img_start.nvptx64-nvidia-cuda"
	.quad	".omp_offloading.img_end.nvptx64-nvidia-cuda"
	.quad	__start_omp_offloading_entries
	.quad	__stop_omp_offloading_entries
	.size	.omp_offloading.device_images, 32

	.type	.omp_offloading.descriptor,@object # @.omp_offloading.descriptor
	.section	.rodata..omp_offloading.descriptor,"aG",@progbits,".omp_offloading.descriptor_reg.nvptx64-nvidia-cuda",comdat
	.p2align	3
.omp_offloading.descriptor:
	.long	1                       # 0x1
	.zero	4
	.quad	.omp_offloading.device_images
	.quad	__start_omp_offloading_entries
	.quad	__stop_omp_offloading_entries
	.size	.omp_offloading.descriptor, 32

	.hidden	__dso_handle
	.section	.init_array.0,"aw",@init_array
	.p2align	3
	.quad	.omp_offloading.requires_reg
	.section	.init_array.0,"aGw",@init_array,".omp_offloading.descriptor_reg.nvptx64-nvidia-cuda",comdat
	.p2align	3
	.quad	".omp_offloading.descriptor_reg.nvptx64-nvidia-cuda"
	.weak	".omp_offloading.img_start.nvptx64-nvidia-cuda"
	.weak	".omp_offloading.img_end.nvptx64-nvidia-cuda"

	.ident	"clang version 10.0.0 (https://github.com/llvm/llvm-project.git 5b5274eaf8c26064b6d10b43171f6252c10f576e)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym __omp_offloading_10302_17e8471_main_l9
	.addrsig_sym .omp_outlined.
	.addrsig_sym __kmpc_for_static_init_4
	.addrsig_sym __kmpc_for_static_fini
	.addrsig_sym __kmpc_fork_call
	.addrsig_sym __tgt_target_teams
	.addrsig_sym .omp_offloading.requires_reg
	.addrsig_sym __tgt_register_requires
	.addrsig_sym .omp_offloading.descriptor_unreg
	.addrsig_sym __tgt_unregister_lib
	.addrsig_sym ".omp_offloading.descriptor_reg.nvptx64-nvidia-cuda"
	.addrsig_sym __tgt_register_lib
	.addrsig_sym __cxa_atexit
	.addrsig_sym .__omp_offloading_10302_17e8471_main_l9.region_id
	.addrsig_sym __start_omp_offloading_entries
	.addrsig_sym __stop_omp_offloading_entries
	.addrsig_sym ".omp_offloading.img_start.nvptx64-nvidia-cuda"
	.addrsig_sym ".omp_offloading.img_end.nvptx64-nvidia-cuda"
	.addrsig_sym .omp_offloading.descriptor
	.addrsig_sym __dso_handle
