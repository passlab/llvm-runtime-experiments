
; __CLANG_OFFLOAD_BUNDLE____START__ openmp-nvptx64-nvidia-cuda
; ModuleID = 'a0.c'
source_filename = "a0.c"
target datalayout = "e-i64:64-i128:128-v16:16-v32:32-n16:32:64"
target triple = "nvptx64-nvidia-cuda"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@"_openmp_kernel_static_glob_rd$ptr" = internal addrspace(3) global i8* null
@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 3, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 3, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@__omp_offloading_10302_17c8563_main_l9_exec_mode = weak constant i8 0
@llvm.compiler.used = appending global [1 x i8*] [i8* @__omp_offloading_10302_17c8563_main_l9_exec_mode], section "llvm.metadata"

; Function Attrs: noinline norecurse nounwind optnone
define weak void @__omp_offloading_10302_17c8563_main_l9(i64 %0, [100 x float]* dereferenceable(400) %1, i64 %2, [100 x float]* dereferenceable(400) %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca [100 x float]*, align 8
  %7 = alloca i64, align 8
  %8 = alloca [100 x float]*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 0, i32* %9, align 4
  store i64 %0, i64* %5, align 8
  store [100 x float]* %1, [100 x float]** %6, align 8
  store i64 %2, i64* %7, align 8
  store [100 x float]* %3, [100 x float]** %8, align 8
  %11 = bitcast i64* %5 to i32*
  %12 = load [100 x float]*, [100 x float]** %6, align 8
  %13 = bitcast i64* %7 to float*
  %14 = load [100 x float]*, [100 x float]** %8, align 8
  %15 = call i32 @llvm.nvvm.read.ptx.sreg.ntid.x(), !range !11
  call void @__kmpc_spmd_kernel_init(i32 %15, i16 0, i16 0)
  br label %16

16:                                               ; preds = %4
  %17 = call i32 @__kmpc_global_thread_num(%struct.ident_t* @1)
  store i32 %17, i32* %10, align 4
  call void @__omp_outlined__(i32* %10, i32* %9, i32* %11, [100 x float]* %12, float* %13, [100 x float]* %14) #2
  br label %18

18:                                               ; preds = %16
  call void @__kmpc_spmd_kernel_deinit_v2(i16 0)
  br label %19

19:                                               ; preds = %18
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @llvm.nvvm.read.ptx.sreg.ntid.x() #1

declare void @__kmpc_spmd_kernel_init(i32, i16, i16)

; Function Attrs: noinline norecurse nounwind optnone
define internal void @__omp_outlined__(i32* noalias %0, i32* noalias %1, i32* dereferenceable(4) %2, [100 x float]* dereferenceable(400) %3, float* dereferenceable(4) %4, [100 x float]* dereferenceable(400) %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca [100 x float]*, align 8
  %11 = alloca float*, align 8
  %12 = alloca [100 x float]*, align 8
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
  store [100 x float]* %3, [100 x float]** %10, align 8
  store float* %4, float** %11, align 8
  store [100 x float]* %5, [100 x float]** %12, align 8
  %23 = load i32*, i32** %9, align 8
  %24 = load [100 x float]*, [100 x float]** %10, align 8
  %25 = load float*, float** %11, align 8
  %26 = load [100 x float]*, [100 x float]** %12, align 8
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
  br i1 %35, label %36, label %89

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

40:                                               ; preds = %79, %36
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
  br i1 %53, label %54, label %86

54:                                               ; preds = %48
  br label %55

55:                                               ; preds = %75, %54
  %56 = load i32, i32* %13, align 4
  %57 = load i32, i32* %19, align 4
  %58 = icmp sle i32 %56, %57
  br i1 %58, label %59, label %78

59:                                               ; preds = %55
  %60 = load i32, i32* %13, align 4
  %61 = mul nsw i32 %60, 1
  %62 = add nsw i32 0, %61
  store i32 %62, i32* %22, align 4
  %63 = load float, float* %25, align 4
  %64 = load i32, i32* %22, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [100 x float], [100 x float]* %26, i64 0, i64 %65
  %67 = load float, float* %66, align 4
  %68 = fmul float %63, %67
  %69 = load i32, i32* %22, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [100 x float], [100 x float]* %24, i64 0, i64 %70
  %72 = load float, float* %71, align 4
  %73 = fadd float %72, %68
  store float %73, float* %71, align 4
  br label %74

74:                                               ; preds = %59
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %13, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %13, align 4
  br label %55

78:                                               ; preds = %55
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %18, align 4
  %81 = load i32, i32* %20, align 4
  %82 = add nsw i32 %80, %81
  store i32 %82, i32* %18, align 4
  %83 = load i32, i32* %19, align 4
  %84 = load i32, i32* %20, align 4
  %85 = add nsw i32 %83, %84
  store i32 %85, i32* %19, align 4
  br label %40

86:                                               ; preds = %48
  %87 = load i32*, i32** %7, align 8
  %88 = load i32, i32* %87, align 4
  call void @__kmpc_for_static_fini(%struct.ident_t* @0, i32 %88)
  br label %89

89:                                               ; preds = %86, %6
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
!3 = !{i32 0, i32 66306, i32 24937827, !"main", i32 9, i32 0}
!4 = !{void (i64, [100 x float]*, i64, [100 x float]*)* @__omp_offloading_10302_17c8563_main_l9, !"kernel", i32 1}
!5 = !{null, !"align", i32 8}
!6 = !{null, !"align", i32 8, !"align", i32 65544, !"align", i32 131080}
!7 = !{null, !"align", i32 16}
!8 = !{null, !"align", i32 16, !"align", i32 65552, !"align", i32 131088}
!9 = !{!"clang version 10.0.0 (https://github.com/llvm/llvm-project.git 5b5274eaf8c26064b6d10b43171f6252c10f576e)"}
!10 = !{i32 1, i32 4}
!11 = !{i32 1, i32 1025}

; __CLANG_OFFLOAD_BUNDLE____END__ openmp-nvptx64-nvidia-cuda

; __CLANG_OFFLOAD_BUNDLE____START__ host-x86_64-unknown-linux-gnu
; ModuleID = '/tmp/a0-ec8ec6.bc'
source_filename = "a0.c"
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
@.__omp_offloading_10302_17c8563_main_l9.region_id = weak constant i8 0
@.offload_maptypes = private unnamed_addr constant [4 x i64] [i64 800, i64 35, i64 800, i64 33]
@.omp_offloading.entry_name = internal unnamed_addr constant [39 x i8] c"__omp_offloading_10302_17c8563_main_l9\00"
@.omp_offloading.entry.__omp_offloading_10302_17c8563_main_l9 = weak constant %struct.__tgt_offload_entry { i8* @.__omp_offloading_10302_17c8563_main_l9.region_id, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.omp_offloading.entry_name, i32 0, i32 0), i64 0, i32 0, i32 0 }, section "omp_offloading_entries", align 1
@__start_omp_offloading_entries = external hidden constant %struct.__tgt_offload_entry
@__stop_omp_offloading_entries = external hidden constant %struct.__tgt_offload_entry
@.omp_offloading.img_start.nvptx64-nvidia-cuda = extern_weak constant i8
@.omp_offloading.img_end.nvptx64-nvidia-cuda = extern_weak constant i8
@.omp_offloading.device_images = internal unnamed_addr constant [1 x %struct.__tgt_device_image] [%struct.__tgt_device_image { i8* @.omp_offloading.img_start.nvptx64-nvidia-cuda, i8* @.omp_offloading.img_end.nvptx64-nvidia-cuda, %struct.__tgt_offload_entry* @__start_omp_offloading_entries, %struct.__tgt_offload_entry* @__stop_omp_offloading_entries }], comdat($.omp_offloading.descriptor_reg.nvptx64-nvidia-cuda), align 8
@.omp_offloading.descriptor = internal constant %struct.__tgt_bin_desc { i32 1, %struct.__tgt_device_image* getelementptr inbounds ([1 x %struct.__tgt_device_image], [1 x %struct.__tgt_device_image]* @.omp_offloading.device_images, i32 0, i32 0), %struct.__tgt_offload_entry* @__start_omp_offloading_entries, %struct.__tgt_offload_entry* @__stop_omp_offloading_entries }, comdat($.omp_offloading.descriptor_reg.nvptx64-nvidia-cuda), align 8
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [2 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 0, void ()* @.omp_offloading.requires_reg, i8* null }, { i32, void ()*, i8* } { i32 0, void ()* @.omp_offloading.descriptor_reg.nvptx64-nvidia-cuda, i8* bitcast (void ()* @.omp_offloading.descriptor_reg.nvptx64-nvidia-cuda to i8*) }]

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [100 x float], align 16
  %7 = alloca [100 x float], align 16
  %8 = alloca float, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca [4 x i8*], align 8
  %14 = alloca [4 x i8*], align 8
  %15 = alloca [4 x i64], align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store float 2.000000e+00, float* %8, align 4
  store i32 100, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %16

16:                                               ; preds = %23, %2
  %17 = load i32, i32* %9, align 4
  %18 = icmp slt i32 %17, 100
  br i1 %18, label %19, label %26

19:                                               ; preds = %16
  %20 = load i32, i32* %9, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [100 x float], [100 x float]* %6, i64 0, i64 %21
  store float 0.000000e+00, float* %22, align 4
  br label %23

23:                                               ; preds = %19
  %24 = load i32, i32* %9, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %9, align 4
  br label %16

26:                                               ; preds = %16
  %27 = load i32, i32* %10, align 4
  %28 = bitcast i64* %11 to i32*
  store i32 %27, i32* %28, align 4
  %29 = load i64, i64* %11, align 8
  %30 = load float, float* %8, align 4
  %31 = bitcast i64* %12 to float*
  store float %30, float* %31, align 4
  %32 = load i64, i64* %12, align 8
  %33 = getelementptr inbounds [100 x float], [100 x float]* %7, i64 0, i64 0
  %34 = load i32, i32* %10, align 4
  %35 = zext i32 %34 to i64
  %36 = mul nuw i64 %35, 4
  %37 = getelementptr inbounds [100 x float], [100 x float]* %6, i64 0, i64 0
  %38 = load i32, i32* %10, align 4
  %39 = zext i32 %38 to i64
  %40 = mul nuw i64 %39, 4
  %41 = getelementptr inbounds [4 x i8*], [4 x i8*]* %13, i32 0, i32 0
  %42 = bitcast i8** %41 to i64*
  store i64 %29, i64* %42, align 8
  %43 = getelementptr inbounds [4 x i8*], [4 x i8*]* %14, i32 0, i32 0
  %44 = bitcast i8** %43 to i64*
  store i64 %29, i64* %44, align 8
  %45 = getelementptr inbounds [4 x i64], [4 x i64]* %15, i32 0, i32 0
  store i64 4, i64* %45, align 8
  %46 = getelementptr inbounds [4 x i8*], [4 x i8*]* %13, i32 0, i32 1
  %47 = bitcast i8** %46 to [100 x float]**
  store [100 x float]* %7, [100 x float]** %47, align 8
  %48 = getelementptr inbounds [4 x i8*], [4 x i8*]* %14, i32 0, i32 1
  %49 = bitcast i8** %48 to float**
  store float* %33, float** %49, align 8
  %50 = getelementptr inbounds [4 x i64], [4 x i64]* %15, i32 0, i32 1
  store i64 %36, i64* %50, align 8
  %51 = getelementptr inbounds [4 x i8*], [4 x i8*]* %13, i32 0, i32 2
  %52 = bitcast i8** %51 to i64*
  store i64 %32, i64* %52, align 8
  %53 = getelementptr inbounds [4 x i8*], [4 x i8*]* %14, i32 0, i32 2
  %54 = bitcast i8** %53 to i64*
  store i64 %32, i64* %54, align 8
  %55 = getelementptr inbounds [4 x i64], [4 x i64]* %15, i32 0, i32 2
  store i64 4, i64* %55, align 8
  %56 = getelementptr inbounds [4 x i8*], [4 x i8*]* %13, i32 0, i32 3
  %57 = bitcast i8** %56 to [100 x float]**
  store [100 x float]* %6, [100 x float]** %57, align 8
  %58 = getelementptr inbounds [4 x i8*], [4 x i8*]* %14, i32 0, i32 3
  %59 = bitcast i8** %58 to float**
  store float* %37, float** %59, align 8
  %60 = getelementptr inbounds [4 x i64], [4 x i64]* %15, i32 0, i32 3
  store i64 %40, i64* %60, align 8
  %61 = getelementptr inbounds [4 x i8*], [4 x i8*]* %13, i32 0, i32 0
  %62 = getelementptr inbounds [4 x i8*], [4 x i8*]* %14, i32 0, i32 0
  %63 = getelementptr inbounds [4 x i64], [4 x i64]* %15, i32 0, i32 0
  %64 = call i32 @__tgt_target_teams(i64 -1, i8* @.__omp_offloading_10302_17c8563_main_l9.region_id, i32 4, i8** %61, i8** %62, i64* %63, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @.offload_maptypes, i32 0, i32 0), i32 1, i32 0)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %26
  call void @__omp_offloading_10302_17c8563_main_l9(i64 %29, [100 x float]* %7, i64 %32, [100 x float]* %6) #3
  br label %67

67:                                               ; preds = %66, %26
  ret i32 0
}

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @__omp_offloading_10302_17c8563_main_l9(i64 %0, [100 x float]* dereferenceable(400) %1, i64 %2, [100 x float]* dereferenceable(400) %3) #1 {
  %5 = alloca i64, align 8
  %6 = alloca [100 x float]*, align 8
  %7 = alloca i64, align 8
  %8 = alloca [100 x float]*, align 8
  store i64 %0, i64* %5, align 8
  store [100 x float]* %1, [100 x float]** %6, align 8
  store i64 %2, i64* %7, align 8
  store [100 x float]* %3, [100 x float]** %8, align 8
  %9 = bitcast i64* %5 to i32*
  %10 = load [100 x float]*, [100 x float]** %6, align 8
  %11 = bitcast i64* %7 to float*
  %12 = load [100 x float]*, [100 x float]** %8, align 8
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @1, i32 4, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, [100 x float]*, float*, [100 x float]*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %9, [100 x float]* %10, float* %11, [100 x float]* %12)
  ret void
}

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %0, i32* noalias %1, i32* dereferenceable(4) %2, [100 x float]* dereferenceable(400) %3, float* dereferenceable(4) %4, [100 x float]* dereferenceable(400) %5) #1 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca [100 x float]*, align 8
  %11 = alloca float*, align 8
  %12 = alloca [100 x float]*, align 8
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
  store [100 x float]* %3, [100 x float]** %10, align 8
  store float* %4, float** %11, align 8
  store [100 x float]* %5, [100 x float]** %12, align 8
  %23 = load i32*, i32** %9, align 8
  %24 = load [100 x float]*, [100 x float]** %10, align 8
  %25 = load float*, float** %11, align 8
  %26 = load [100 x float]*, [100 x float]** %12, align 8
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
  br i1 %35, label %36, label %77

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

50:                                               ; preds = %70, %47
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* %19, align 4
  %53 = icmp sle i32 %51, %52
  br i1 %53, label %54, label %73

54:                                               ; preds = %50
  %55 = load i32, i32* %13, align 4
  %56 = mul nsw i32 %55, 1
  %57 = add nsw i32 0, %56
  store i32 %57, i32* %22, align 4
  %58 = load float, float* %25, align 4
  %59 = load i32, i32* %22, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [100 x float], [100 x float]* %26, i64 0, i64 %60
  %62 = load float, float* %61, align 4
  %63 = fmul float %58, %62
  %64 = load i32, i32* %22, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [100 x float], [100 x float]* %24, i64 0, i64 %65
  %67 = load float, float* %66, align 4
  %68 = fadd float %67, %63
  store float %68, float* %66, align 4
  br label %69

69:                                               ; preds = %54
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %13, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %13, align 4
  br label %50

73:                                               ; preds = %50
  br label %74

74:                                               ; preds = %73
  %75 = load i32*, i32** %7, align 8
  %76 = load i32, i32* %75, align 4
  call void @__kmpc_for_static_fini(%struct.ident_t* @0, i32 %76)
  br label %77

77:                                               ; preds = %74, %6
  ret void
}

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

declare !callback !3 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

declare dso_local i32 @__tgt_target_teams(i64, i8*, i32, i8**, i8**, i64*, i64*, i32, i32)

; Function Attrs: noinline nounwind uwtable
define internal void @.omp_offloading.requires_reg() #2 section ".text.startup" {
  call void @__tgt_register_requires(i64 1)
  ret void
}

declare dso_local void @__tgt_register_requires(i64)

; Function Attrs: noinline nounwind uwtable
define internal void @.omp_offloading.descriptor_unreg(i8* %0) #2 section ".text.startup" comdat($.omp_offloading.descriptor_reg.nvptx64-nvidia-cuda) {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = call i32 @__tgt_unregister_lib(%struct.__tgt_bin_desc* @.omp_offloading.descriptor)
  ret void
}

declare dso_local i32 @__tgt_unregister_lib(%struct.__tgt_bin_desc*)

; Function Attrs: noinline nounwind uwtable
define linkonce hidden void @.omp_offloading.descriptor_reg.nvptx64-nvidia-cuda() #2 section ".text.startup" comdat {
  %1 = call i32 @__tgt_register_lib(%struct.__tgt_bin_desc* @.omp_offloading.descriptor)
  %2 = call i32 @__cxa_atexit(void (i8*)* @.omp_offloading.descriptor_unreg, i8* bitcast (%struct.__tgt_bin_desc* @.omp_offloading.descriptor to i8*), i8* @__dso_handle) #3
  ret void
}

declare dso_local i32 @__tgt_register_lib(%struct.__tgt_bin_desc*)

; Function Attrs: nounwind
declare dso_local i32 @__cxa_atexit(void (i8*)*, i8*, i8*) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noinline norecurse nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!omp_offload.info = !{!0}
!llvm.module.flags = !{!1}
!llvm.ident = !{!2}

!0 = !{i32 0, i32 66306, i32 24937827, !"main", i32 9, i32 0}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{!"clang version 10.0.0 (https://github.com/llvm/llvm-project.git 5b5274eaf8c26064b6d10b43171f6252c10f576e)"}
!3 = !{!4}
!4 = !{i64 2, i64 -1, i64 -1, i1 true}

; __CLANG_OFFLOAD_BUNDLE____END__ host-x86_64-unknown-linux-gnu
