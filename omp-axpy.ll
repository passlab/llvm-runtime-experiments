
; __CLANG_OFFLOAD_BUNDLE____START__ openmp-nvptx64-nvidia-cuda
; ModuleID = 'omp-axpy.c'
source_filename = "omp-axpy.c"
target datalayout = "e-i64:64-i128:128-v16:16-v32:32-n16:32:64"
target triple = "nvptx64-nvidia-cuda"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@"_openmp_kernel_static_glob_rd$ptr" = internal addrspace(3) global i8* null
@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 3, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 3, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@__omp_offloading_10302_663ad9_axpy_l12_exec_mode = weak constant i8 0
@llvm.compiler.used = appending global [1 x i8*] [i8* @__omp_offloading_10302_663ad9_axpy_l12_exec_mode], section "llvm.metadata"

; Function Attrs: noinline norecurse nounwind optnone
define weak void @__omp_offloading_10302_663ad9_axpy_l12(i64 %0, float* %1, i64 %2, float* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca float*, align 8
  %7 = alloca i64, align 8
  %8 = alloca float*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 0, i32* %9, align 4
  store i64 %0, i64* %5, align 8
  store float* %1, float** %6, align 8
  store i64 %2, i64* %7, align 8
  store float* %3, float** %8, align 8
  %11 = bitcast i64* %5 to i32*
  %12 = bitcast i64* %7 to float*
  %13 = call i32 @llvm.nvvm.read.ptx.sreg.ntid.x(), !range !11
  call void @__kmpc_spmd_kernel_init(i32 %13, i16 0, i16 0)
  br label %14

14:                                               ; preds = %4
  %15 = call i32 @__kmpc_global_thread_num(%struct.ident_t* @1)
  store i32 %15, i32* %10, align 4
  call void @__omp_outlined__(i32* %10, i32* %9, i32* %11, float** %6, float* %12, float** %8) #2
  br label %16

16:                                               ; preds = %14
  call void @__kmpc_spmd_kernel_deinit_v2(i16 0)
  br label %17

17:                                               ; preds = %16
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @llvm.nvvm.read.ptx.sreg.ntid.x() #1

declare void @__kmpc_spmd_kernel_init(i32, i16, i16)

; Function Attrs: noinline norecurse nounwind optnone
define internal void @__omp_outlined__(i32* noalias %0, i32* noalias %1, i32* dereferenceable(4) %2, float** dereferenceable(8) %3, float* dereferenceable(4) %4, float** dereferenceable(8) %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca float**, align 8
  %11 = alloca float*, align 8
  %12 = alloca float**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store float** %3, float*** %10, align 8
  store float* %4, float** %11, align 8
  store float** %5, float*** %12, align 8
  %23 = load i32*, i32** %9, align 8
  %24 = load float**, float*** %10, align 8
  %25 = load float*, float** %11, align 8
  %26 = load float**, float*** %12, align 8
  %27 = load i32, i32* %23, align 4
  store i32 %27, i32* %15, align 4
  %28 = load i32, i32* %15, align 4
  %29 = sub nsw i32 %28, 0
  %30 = sub nsw i32 %29, 1
  %31 = add nsw i32 %30, 1
  %32 = sdiv i32 %31, 1
  %33 = sub nsw i32 %32, 1
  store i32 %33, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %34 = load i32, i32* %15, align 4
  %35 = icmp slt i32 0, %34
  br i1 %35, label %36, label %91

36:                                               ; preds = %6
  store i32 0, i32* %18, align 4
  %37 = load i32, i32* %16, align 4
  store i32 %37, i32* %19, align 4
  store i32 1, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %38 = load i32*, i32** %7, align 8
  %39 = load i32, i32* %38, align 4
  call void @__kmpc_for_static_init_4(%struct.ident_t* @0, i32 %39, i32 33, i32* %21, i32* %18, i32* %19, i32* %20, i32 1, i32 1)
  br label %40

40:                                               ; preds = %81, %36
  %41 = load i32, i32* %19, align 4
  %42 = load i32, i32* %16, align 4
  %43 = icmp sgt i32 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = load i32, i32* %16, align 4
  br label %48

46:                                               ; preds = %40
  %47 = load i32, i32* %19, align 4
  br label %48

48:                                               ; preds = %46, %44
  %49 = phi i32 [ %45, %44 ], [ %47, %46 ]
  store i32 %49, i32* %19, align 4
  %50 = load i32, i32* %18, align 4
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* %19, align 4
  %53 = icmp sle i32 %51, %52
  br i1 %53, label %54, label %88

54:                                               ; preds = %48
  br label %55

55:                                               ; preds = %77, %54
  %56 = load i32, i32* %13, align 4
  %57 = load i32, i32* %19, align 4
  %58 = icmp sle i32 %56, %57
  br i1 %58, label %59, label %80

59:                                               ; preds = %55
  %60 = load i32, i32* %13, align 4
  %61 = mul nsw i32 %60, 1
  %62 = add nsw i32 0, %61
  store i32 %62, i32* %22, align 4
  %63 = load float, float* %25, align 4
  %64 = load float*, float** %26, align 8
  %65 = load i32, i32* %22, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds float, float* %64, i64 %66
  %68 = load float, float* %67, align 4
  %69 = fmul float %63, %68
  %70 = load float*, float** %24, align 8
  %71 = load i32, i32* %22, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds float, float* %70, i64 %72
  %74 = load float, float* %73, align 4
  %75 = fadd float %74, %69
  store float %75, float* %73, align 4
  br label %76

76:                                               ; preds = %59
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %13, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %13, align 4
  br label %55

80:                                               ; preds = %55
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %18, align 4
  %83 = load i32, i32* %20, align 4
  %84 = add nsw i32 %82, %83
  store i32 %84, i32* %18, align 4
  %85 = load i32, i32* %19, align 4
  %86 = load i32, i32* %20, align 4
  %87 = add nsw i32 %85, %86
  store i32 %87, i32* %19, align 4
  br label %40

88:                                               ; preds = %48
  %89 = load i32*, i32** %7, align 8
  %90 = load i32, i32* %89, align 4
  call void @__kmpc_for_static_fini(%struct.ident_t* @0, i32 %90)
  br label %91

91:                                               ; preds = %88, %6
  ret void
}

declare void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare void @__kmpc_for_static_fini(%struct.ident_t*, i32)

declare i32 @__kmpc_global_thread_num(%struct.ident_t*)

declare void @__kmpc_spmd_kernel_deinit_v2(i16)

attributes #0 = { noinline norecurse nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="sm_60" "target-features"="+ptx64,+sm_60" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!omp_offload.info = !{!3}
!nvvm.annotations = !{!4, !5, !6, !5, !7, !7, !7, !7, !8, !8, !7}
!llvm.ident = !{!9}
!nvvmir.version = !{!10}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 10, i32 1]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{i32 0, i32 66306, i32 6699737, !"axpy", i32 12, i32 0}
!4 = !{void (i64, float*, i64, float*)* @__omp_offloading_10302_663ad9_axpy_l12, !"kernel", i32 1}
!5 = !{null, !"align", i32 8}
!6 = !{null, !"align", i32 8, !"align", i32 65544, !"align", i32 131080}
!7 = !{null, !"align", i32 16}
!8 = !{null, !"align", i32 16, !"align", i32 65552, !"align", i32 131088}
!9 = !{!"clang version 10.0.0 (https://github.com/llvm/llvm-project.git f7133b797749c4edd91d4ddd8a7a64e319650fad)"}
!10 = !{i32 1, i32 4}
!11 = !{i32 1, i32 1025}

; __CLANG_OFFLOAD_BUNDLE____END__ openmp-nvptx64-nvidia-cuda

; __CLANG_OFFLOAD_BUNDLE____START__ host-x86_64-unknown-linux-gnu
; ModuleID = '/tmp/omp-axpy-54480b.bc'
source_filename = "omp-axpy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }
%struct.__tgt_offload_entry = type { i8*, i8*, i64, i32, i32 }
%struct.__tgt_device_image = type { i8*, i8*, %struct.__tgt_offload_entry*, %struct.__tgt_offload_entry* }
%struct.__tgt_bin_desc = type { i32, %struct.__tgt_device_image*, %struct.__tgt_offload_entry*, %struct.__tgt_offload_entry* }

$.omp_offloading.descriptor_reg.nvptx64-nvidia-cuda = comdat any

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@.__omp_offloading_10302_663ad9_axpy_l12.region_id = weak constant i8 0
@.offload_maptypes = private unnamed_addr constant [4 x i64] [i64 800, i64 35, i64 800, i64 33]
@.omp_offloading.entry_name = internal unnamed_addr constant [39 x i8] c"__omp_offloading_10302_663ad9_axpy_l12\00"
@.omp_offloading.entry.__omp_offloading_10302_663ad9_axpy_l12 = weak constant %struct.__tgt_offload_entry { i8* @.__omp_offloading_10302_663ad9_axpy_l12.region_id, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.omp_offloading.entry_name, i32 0, i32 0), i64 0, i32 0, i32 0 }, section "omp_offloading_entries", align 1
@__start_omp_offloading_entries = external hidden constant %struct.__tgt_offload_entry
@__stop_omp_offloading_entries = external hidden constant %struct.__tgt_offload_entry
@.omp_offloading.img_start.nvptx64-nvidia-cuda = extern_weak constant i8
@.omp_offloading.img_end.nvptx64-nvidia-cuda = extern_weak constant i8
@.omp_offloading.device_images = internal unnamed_addr constant [1 x %struct.__tgt_device_image] [%struct.__tgt_device_image { i8* @.omp_offloading.img_start.nvptx64-nvidia-cuda, i8* @.omp_offloading.img_end.nvptx64-nvidia-cuda, %struct.__tgt_offload_entry* @__start_omp_offloading_entries, %struct.__tgt_offload_entry* @__stop_omp_offloading_entries }], comdat($.omp_offloading.descriptor_reg.nvptx64-nvidia-cuda), align 8
@.omp_offloading.descriptor = internal constant %struct.__tgt_bin_desc { i32 1, %struct.__tgt_device_image* getelementptr inbounds ([1 x %struct.__tgt_device_image], [1 x %struct.__tgt_device_image]* @.omp_offloading.device_images, i32 0, i32 0), %struct.__tgt_offload_entry* @__start_omp_offloading_entries, %struct.__tgt_offload_entry* @__stop_omp_offloading_entries }, comdat($.omp_offloading.descriptor_reg.nvptx64-nvidia-cuda), align 8
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [2 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 0, void ()* @.omp_offloading.requires_reg, i8* null }, { i32, void ()*, i8* } { i32 0, void ()* @.omp_offloading.descriptor_reg.nvptx64-nvidia-cuda, i8* bitcast (void ()* @.omp_offloading.descriptor_reg.nvptx64-nvidia-cuda to i8*) }]

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @axpy(i32 %0, float* %1, float* %2, float %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca float, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca [4 x i8*], align 8
  %13 = alloca [4 x i8*], align 8
  %14 = alloca [4 x i64], align 8
  store i32 %0, i32* %5, align 4
  store float* %1, float** %6, align 8
  store float* %2, float** %7, align 8
  store float %3, float* %8, align 4
  %15 = load i32, i32* %5, align 4
  %16 = bitcast i64* %10 to i32*
  store i32 %15, i32* %16, align 4
  %17 = load i64, i64* %10, align 8
  %18 = load float*, float** %6, align 8
  %19 = load float, float* %8, align 4
  %20 = bitcast i64* %11 to float*
  store float %19, float* %20, align 4
  %21 = load i64, i64* %11, align 8
  %22 = load float*, float** %7, align 8
  %23 = load float*, float** %6, align 8
  %24 = load float*, float** %6, align 8
  %25 = getelementptr inbounds float, float* %24, i64 0
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = mul nuw i64 %27, 4
  %29 = load float*, float** %7, align 8
  %30 = load float*, float** %7, align 8
  %31 = getelementptr inbounds float, float* %30, i64 0
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = mul nuw i64 %33, 4
  %35 = getelementptr inbounds [4 x i8*], [4 x i8*]* %12, i32 0, i32 0
  %36 = bitcast i8** %35 to i64*
  store i64 %17, i64* %36, align 8
  %37 = getelementptr inbounds [4 x i8*], [4 x i8*]* %13, i32 0, i32 0
  %38 = bitcast i8** %37 to i64*
  store i64 %17, i64* %38, align 8
  %39 = getelementptr inbounds [4 x i64], [4 x i64]* %14, i32 0, i32 0
  store i64 4, i64* %39, align 8
  %40 = getelementptr inbounds [4 x i8*], [4 x i8*]* %12, i32 0, i32 1
  %41 = bitcast i8** %40 to float**
  store float* %23, float** %41, align 8
  %42 = getelementptr inbounds [4 x i8*], [4 x i8*]* %13, i32 0, i32 1
  %43 = bitcast i8** %42 to float**
  store float* %25, float** %43, align 8
  %44 = getelementptr inbounds [4 x i64], [4 x i64]* %14, i32 0, i32 1
  store i64 %28, i64* %44, align 8
  %45 = getelementptr inbounds [4 x i8*], [4 x i8*]* %12, i32 0, i32 2
  %46 = bitcast i8** %45 to i64*
  store i64 %21, i64* %46, align 8
  %47 = getelementptr inbounds [4 x i8*], [4 x i8*]* %13, i32 0, i32 2
  %48 = bitcast i8** %47 to i64*
  store i64 %21, i64* %48, align 8
  %49 = getelementptr inbounds [4 x i64], [4 x i64]* %14, i32 0, i32 2
  store i64 4, i64* %49, align 8
  %50 = getelementptr inbounds [4 x i8*], [4 x i8*]* %12, i32 0, i32 3
  %51 = bitcast i8** %50 to float**
  store float* %29, float** %51, align 8
  %52 = getelementptr inbounds [4 x i8*], [4 x i8*]* %13, i32 0, i32 3
  %53 = bitcast i8** %52 to float**
  store float* %31, float** %53, align 8
  %54 = getelementptr inbounds [4 x i64], [4 x i64]* %14, i32 0, i32 3
  store i64 %34, i64* %54, align 8
  %55 = getelementptr inbounds [4 x i8*], [4 x i8*]* %12, i32 0, i32 0
  %56 = getelementptr inbounds [4 x i8*], [4 x i8*]* %13, i32 0, i32 0
  %57 = getelementptr inbounds [4 x i64], [4 x i64]* %14, i32 0, i32 0
  %58 = call i32 @__tgt_target_teams(i64 -1, i8* @.__omp_offloading_10302_663ad9_axpy_l12.region_id, i32 4, i8** %55, i8** %56, i64* %57, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @.offload_maptypes, i32 0, i32 0), i32 1, i32 0)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %4
  call void @__omp_offloading_10302_663ad9_axpy_l12(i64 %17, float* %18, i64 %21, float* %22) #2
  br label %61

61:                                               ; preds = %60, %4
  ret void
}

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @__omp_offloading_10302_663ad9_axpy_l12(i64 %0, float* %1, i64 %2, float* %3) #1 {
  %5 = alloca i64, align 8
  %6 = alloca float*, align 8
  %7 = alloca i64, align 8
  %8 = alloca float*, align 8
  store i64 %0, i64* %5, align 8
  store float* %1, float** %6, align 8
  store i64 %2, i64* %7, align 8
  store float* %3, float** %8, align 8
  %9 = bitcast i64* %5 to i32*
  %10 = bitcast i64* %7 to float*
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @1, i32 4, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, float**, float*, float**)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %9, float** %6, float* %10, float** %8)
  ret void
}

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %0, i32* noalias %1, i32* dereferenceable(4) %2, float** dereferenceable(8) %3, float* dereferenceable(4) %4, float** dereferenceable(8) %5) #1 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca float**, align 8
  %11 = alloca float*, align 8
  %12 = alloca float**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store float** %3, float*** %10, align 8
  store float* %4, float** %11, align 8
  store float** %5, float*** %12, align 8
  %23 = load i32*, i32** %9, align 8
  %24 = load float**, float*** %10, align 8
  %25 = load float*, float** %11, align 8
  %26 = load float**, float*** %12, align 8
  %27 = load i32, i32* %23, align 4
  store i32 %27, i32* %15, align 4
  %28 = load i32, i32* %15, align 4
  %29 = sub nsw i32 %28, 0
  %30 = sub nsw i32 %29, 1
  %31 = add nsw i32 %30, 1
  %32 = sdiv i32 %31, 1
  %33 = sub nsw i32 %32, 1
  store i32 %33, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %34 = load i32, i32* %15, align 4
  %35 = icmp slt i32 0, %34
  br i1 %35, label %36, label %79

36:                                               ; preds = %6
  store i32 0, i32* %18, align 4
  %37 = load i32, i32* %16, align 4
  store i32 %37, i32* %19, align 4
  store i32 1, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %38 = load i32*, i32** %7, align 8
  %39 = load i32, i32* %38, align 4
  call void @__kmpc_for_static_init_4(%struct.ident_t* @0, i32 %39, i32 34, i32* %21, i32* %18, i32* %19, i32* %20, i32 1, i32 1)
  %40 = load i32, i32* %19, align 4
  %41 = load i32, i32* %16, align 4
  %42 = icmp sgt i32 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %36
  %44 = load i32, i32* %16, align 4
  br label %47

45:                                               ; preds = %36
  %46 = load i32, i32* %19, align 4
  br label %47

47:                                               ; preds = %45, %43
  %48 = phi i32 [ %44, %43 ], [ %46, %45 ]
  store i32 %48, i32* %19, align 4
  %49 = load i32, i32* %18, align 4
  store i32 %49, i32* %13, align 4
  br label %50

50:                                               ; preds = %72, %47
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* %19, align 4
  %53 = icmp sle i32 %51, %52
  br i1 %53, label %54, label %75

54:                                               ; preds = %50
  %55 = load i32, i32* %13, align 4
  %56 = mul nsw i32 %55, 1
  %57 = add nsw i32 0, %56
  store i32 %57, i32* %22, align 4
  %58 = load float, float* %25, align 4
  %59 = load float*, float** %26, align 8
  %60 = load i32, i32* %22, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds float, float* %59, i64 %61
  %63 = load float, float* %62, align 4
  %64 = fmul float %58, %63
  %65 = load float*, float** %24, align 8
  %66 = load i32, i32* %22, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds float, float* %65, i64 %67
  %69 = load float, float* %68, align 4
  %70 = fadd float %69, %64
  store float %70, float* %68, align 4
  br label %71

71:                                               ; preds = %54
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %13, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %13, align 4
  br label %50

75:                                               ; preds = %50
  br label %76

76:                                               ; preds = %75
  %77 = load i32*, i32** %7, align 8
  %78 = load i32, i32* %77, align 4
  call void @__kmpc_for_static_fini(%struct.ident_t* @0, i32 %78)
  br label %79

79:                                               ; preds = %76, %6
  ret void
}

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

declare !callback !3 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

declare dso_local i32 @__tgt_target_teams(i64, i8*, i32, i8**, i8**, i64*, i64*, i32, i32)

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca float, align 4
  %11 = alloca i32, align 4
  %12 = alloca float, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 100, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %7, align 8
  %16 = alloca float, i64 %14, align 16
  store i64 %14, i64* %8, align 8
  %17 = load i32, i32* %6, align 4
  %18 = zext i32 %17 to i64
  %19 = alloca float, i64 %18, align 16
  store i64 %18, i64* %9, align 8
  store float 5.000000e+00, float* %10, align 4
  store i32 0, i32* %11, align 4
  br label %20

20:                                               ; preds = %41, %2
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %44

24:                                               ; preds = %20
  %25 = call i32 @rand() #2
  %26 = sitofp i32 %25 to float
  %27 = fdiv float %26, 1.000000e+03
  %28 = load float, float* %10, align 4
  %29 = fmul float %27, %28
  %30 = load i32, i32* %11, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds float, float* %16, i64 %31
  store float %29, float* %32, align 4
  %33 = call i32 @rand() #2
  %34 = sitofp i32 %33 to float
  %35 = fdiv float %34, 1.000000e+03
  %36 = load float, float* %10, align 4
  %37 = fmul float %35, %36
  %38 = load i32, i32* %11, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds float, float* %19, i64 %39
  store float %37, float* %40, align 4
  br label %41

41:                                               ; preds = %24
  %42 = load i32, i32* %11, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %11, align 4
  br label %20

44:                                               ; preds = %20
  store float 5.000000e-01, float* %12, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds float, float* %16, i64 %47
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds float, float* %19, i64 %50
  %52 = load float, float* %12, align 4
  call void @axpy(i32 %45, float* %48, float* %51, float %52)
  store i32 0, i32* %3, align 4
  %53 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %53)
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

; Function Attrs: nounwind
declare dso_local i32 @rand() #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

; Function Attrs: noinline nounwind uwtable
define internal void @.omp_offloading.requires_reg() #4 section ".text.startup" {
  call void @__tgt_register_requires(i64 1)
  ret void
}

declare dso_local void @__tgt_register_requires(i64)

; Function Attrs: noinline nounwind uwtable
define internal void @.omp_offloading.descriptor_unreg(i8* %0) #4 section ".text.startup" comdat($.omp_offloading.descriptor_reg.nvptx64-nvidia-cuda) {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = call i32 @__tgt_unregister_lib(%struct.__tgt_bin_desc* @.omp_offloading.descriptor)
  ret void
}

declare dso_local i32 @__tgt_unregister_lib(%struct.__tgt_bin_desc*)

; Function Attrs: noinline nounwind uwtable
define linkonce hidden void @.omp_offloading.descriptor_reg.nvptx64-nvidia-cuda() #4 section ".text.startup" comdat {
  %1 = call i32 @__tgt_register_lib(%struct.__tgt_bin_desc* @.omp_offloading.descriptor)
  %2 = call i32 @__cxa_atexit(void (i8*)* @.omp_offloading.descriptor_unreg, i8* bitcast (%struct.__tgt_bin_desc* @.omp_offloading.descriptor to i8*), i8* @__dso_handle) #2
  ret void
}

declare dso_local i32 @__tgt_register_lib(%struct.__tgt_bin_desc*)

; Function Attrs: nounwind
declare dso_local i32 @__cxa_atexit(void (i8*)*, i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noinline norecurse nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!omp_offload.info = !{!0}
!llvm.module.flags = !{!1}
!llvm.ident = !{!2}

!0 = !{i32 0, i32 66306, i32 6699737, !"axpy", i32 12, i32 0}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{!"clang version 10.0.0 (https://github.com/llvm/llvm-project.git f7133b797749c4edd91d4ddd8a7a64e319650fad)"}
!3 = !{!4}
!4 = !{i64 2, i64 -1, i64 -1, i1 true}

; __CLANG_OFFLOAD_BUNDLE____END__ host-x86_64-unknown-linux-gnu
