
; __CLANG_OFFLOAD_BUNDLE____START__ openmp-nvptx64-nvidia-cuda
; ModuleID = 'omp-axpy.c'
source_filename = "omp-axpy.c"
target datalayout = "e-i64:64-i128:128-v16:16-v32:32-n16:32:64"
target triple = "nvptx64-nvidia-cuda"

%struct.ident_t = type { i32, i32, i32, i32, i8* }
%class.omptarget_nvptx_ThreadPrivateContext = type { %class.omptarget_nvptx_TeamDescr, [1024 x %class.omptarget_nvptx_TaskDescr], [1024 x %class.omptarget_nvptx_TaskDescr*], %union.anon, [1024 x i64], [1024 x i32], [1024 x i64], [1024 x i64], [1024 x i64], [1024 x i64], i64, [8 x i8] }
%class.omptarget_nvptx_TeamDescr = type { %class.omptarget_nvptx_TaskDescr, %class.omptarget_nvptx_WorkDescr, i32, i64, [32 x %struct.__kmpc_data_sharing_worker_slot_static], [1 x %struct.__kmpc_data_sharing_master_slot_static] }
%class.omptarget_nvptx_TaskDescr = type { %"struct.omptarget_nvptx_TaskDescr::SavedLoopDescr_items", %"struct.omptarget_nvptx_TaskDescr::TaskDescr_items", %class.omptarget_nvptx_TaskDescr* }
%"struct.omptarget_nvptx_TaskDescr::SavedLoopDescr_items" = type { i64, i64, i64, i64, i32 }
%"struct.omptarget_nvptx_TaskDescr::TaskDescr_items" = type { i8, i8, i16, i16, i16, i16, i64 }
%class.omptarget_nvptx_WorkDescr = type <{ %class.omptarget_nvptx_CounterGroup, %class.omptarget_nvptx_TaskDescr, i8, [7 x i8] }>
%class.omptarget_nvptx_CounterGroup = type { i64, i64, i64 }
%struct.__kmpc_data_sharing_worker_slot_static = type { %struct.__kmpc_data_sharing_slot*, %struct.__kmpc_data_sharing_slot*, i8*, i8*, [8192 x i8] }
%struct.__kmpc_data_sharing_slot = type { %struct.__kmpc_data_sharing_slot*, %struct.__kmpc_data_sharing_slot*, i8*, i8*, [0 x i8] }
%struct.__kmpc_data_sharing_master_slot_static = type { %struct.__kmpc_data_sharing_slot*, %struct.__kmpc_data_sharing_slot*, i8*, i8*, [256 x i8] }
%union.anon = type { [1024 x i16] }
%struct.DataSharingStateTy = type { [32 x %struct.__kmpc_data_sharing_slot*], [32 x i8*], [32 x i8*], [32 x i32] }
%class.omptarget_nvptx_Queue = type { [32 x %class.omptarget_nvptx_ThreadPrivateContext], [32 x %class.omptarget_nvptx_ThreadPrivateContext*], i32, [32 x i32], i32, [8 x i8] }
%printf_args.5 = type { double, double }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@.str1 = private unnamed_addr constant [20 x i8] c"this a tset: %f %f\0A\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@__omp_offloading_10302_40009_axpy_l12_exec_mode = weak constant i8 0
@llvm.compiler.used = appending global [1 x i8*] [i8* @__omp_offloading_10302_40009_axpy_l12_exec_mode], section "llvm.metadata"
@omptarget_nvptx_threadPrivateContext = external dso_local local_unnamed_addr addrspace(3) global %class.omptarget_nvptx_ThreadPrivateContext*, align 8
@DataSharingState = external dso_local addrspace(3) global %struct.DataSharingStateTy, align 8
@execution_param = external dso_local local_unnamed_addr addrspace(3) global i32, align 4
@omptarget_nvptx_device_State = external dso_local addrspace(1) global [56 x %class.omptarget_nvptx_Queue], align 16

; Function Attrs: noinline norecurse nounwind optnone
define weak void @__omp_offloading_10302_40009_axpy_l12(i64, i64, float*, i64, float*) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca float*, align 8
  %9 = alloca i64, align 8
  %10 = alloca float*, align 8
  %11 = alloca i32, align 4
  %12 = call i32 bitcast (i32 (i8*)* @__kmpc_global_thread_num to i32 (%struct.ident_t*)*)(%struct.ident_t* @1)
  %13 = alloca i32, align 4
  store i32 0, i32* %11, align 4
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store float* %2, float** %8, align 8
  store i64 %3, i64* %9, align 8
  store float* %4, float** %10, align 8
  %14 = bitcast i64* %6 to i32*
  %15 = bitcast i64* %7 to i32*
  %16 = bitcast i64* %9 to float*
  %17 = call i32 @llvm.nvvm.read.ptx.sreg.ntid.x(), !range !11
  call void @__kmpc_spmd_kernel_init(i32 %17, i16 1, i16 1)
  call void @__kmpc_data_sharing_init_stack_spmd()
  br label %18

; <label>:18:                                     ; preds = %5
  store i32 %12, i32* %13, align 4
  call void @__omp_outlined__(i32* %13, i32* %11, i32* %14, i32* %15, float** %8, float* %16, float** %10) #12
  br label %19

; <label>:19:                                     ; preds = %18
  call void @__kmpc_spmd_kernel_deinit()
  br label %20

; <label>:20:                                     ; preds = %19
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @llvm.nvvm.read.ptx.sreg.ntid.x() #1

; Function Attrs: noinline norecurse nounwind optnone
define internal void @__omp_outlined__(i32* noalias, i32* noalias, i32* dereferenceable(4), i32* dereferenceable(4), float** dereferenceable(8), float* dereferenceable(4), float** dereferenceable(8)) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca float**, align 8
  %13 = alloca float*, align 8
  %14 = alloca float**, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %printf_args.5
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store float** %4, float*** %12, align 8
  store float* %5, float** %13, align 8
  store float** %6, float*** %14, align 8
  %26 = load i32*, i32** %10, align 8
  %27 = load i32*, i32** %11, align 8
  %28 = load float**, float*** %12, align 8
  %29 = load float*, float** %13, align 8
  %30 = load float**, float*** %14, align 8
  %31 = load i32, i32* %27, align 4
  store i32 %31, i32* %17, align 4
  %32 = load i32, i32* %17, align 4
  %33 = sub nsw i32 %32, 0
  %34 = sub nsw i32 %33, 1
  %35 = add nsw i32 %34, 1
  %36 = sdiv i32 %35, 1
  %37 = sub nsw i32 %36, 1
  store i32 %37, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %38 = load i32, i32* %17, align 4
  %39 = icmp slt i32 0, %38
  br i1 %39, label %40, label %99

; <label>:40:                                     ; preds = %7
  store i32 0, i32* %20, align 4
  %41 = load i32, i32* %18, align 4
  store i32 %41, i32* %21, align 4
  store i32 1, i32* %22, align 4
  store i32 0, i32* %23, align 4
  %42 = load i32*, i32** %8, align 8
  %43 = load i32, i32* %42, align 4
  call void bitcast (void (i8*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)* @__kmpc_for_static_init_4 to void (%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)*)(%struct.ident_t* @0, i32 %43, i32 34, i32* %23, i32* %20, i32* %21, i32* %22, i32 1, i32 1)
  %44 = load i32, i32* %21, align 4
  %45 = load i32, i32* %18, align 4
  %46 = icmp sgt i32 %44, %45
  br i1 %46, label %47, label %49

; <label>:47:                                     ; preds = %40
  %48 = load i32, i32* %18, align 4
  br label %51

; <label>:49:                                     ; preds = %40
  %50 = load i32, i32* %21, align 4
  br label %51

; <label>:51:                                     ; preds = %49, %47
  %52 = phi i32 [ %48, %47 ], [ %50, %49 ]
  store i32 %52, i32* %21, align 4
  %53 = load i32, i32* %20, align 4
  store i32 %53, i32* %15, align 4
  br label %54

; <label>:54:                                     ; preds = %92, %51
  %55 = load i32, i32* %15, align 4
  %56 = load i32, i32* %21, align 4
  %57 = icmp sle i32 %55, %56
  br i1 %57, label %58, label %95

; <label>:58:                                     ; preds = %54
  %59 = load i32, i32* %15, align 4
  %60 = mul nsw i32 %59, 1
  %61 = add nsw i32 0, %60
  store i32 %61, i32* %24, align 4
  %62 = load float, float* %29, align 4
  %63 = load float*, float** %30, align 8
  %64 = load i32, i32* %24, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds float, float* %63, i64 %65
  %67 = load float, float* %66, align 4
  %68 = fmul float %62, %67
  %69 = load float*, float** %28, align 8
  %70 = load i32, i32* %24, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds float, float* %69, i64 %71
  %73 = load float, float* %72, align 4
  %74 = fadd float %73, %68
  store float %74, float* %72, align 4
  %75 = load float*, float** %30, align 8
  %76 = load i32, i32* %24, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds float, float* %75, i64 %77
  %79 = load float, float* %78, align 4
  %80 = fpext float %79 to double
  %81 = load float*, float** %28, align 8
  %82 = load i32, i32* %24, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds float, float* %81, i64 %83
  %85 = load float, float* %84, align 4
  %86 = fpext float %85 to double
  %87 = getelementptr inbounds %printf_args.5, %printf_args.5* %25, i32 0, i32 0
  store double %80, double* %87, align 8
  %88 = getelementptr inbounds %printf_args.5, %printf_args.5* %25, i32 0, i32 1
  store double %86, double* %88, align 8
  %89 = bitcast %printf_args.5* %25 to i8*
  %90 = call i32 @vprintf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str1, i32 0, i32 0), i8* %89)
  br label %91

; <label>:91:                                     ; preds = %58
  br label %92

; <label>:92:                                     ; preds = %91
  %93 = load i32, i32* %15, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %15, align 4
  br label %54

; <label>:95:                                     ; preds = %54
  br label %96

; <label>:96:                                     ; preds = %95
  %97 = load i32*, i32** %8, align 8
  %98 = load i32, i32* %97, align 4
  call void bitcast (void (i8*, i32)* @__kmpc_for_static_fini to void (%struct.ident_t*, i32)*)(%struct.ident_t* @0, i32 %98)
  br label %99

; <label>:99:                                     ; preds = %96, %7
  ret void
}

declare i32 @vprintf(i8*, i8*)

; Function Attrs: convergent nounwind
define internal void @__kmpc_data_sharing_init_stack_spmd() #2 {
  %1 = tail call i32 @llvm.nvvm.read.ptx.sreg.tid.x() #12, !range !12
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %4

; <label>:3:                                      ; preds = %0
  tail call void @_Z30data_sharing_init_stack_commonv() #13
  br label %4

; <label>:4:                                      ; preds = %3, %0
  tail call void @llvm.nvvm.membar.cta() #12
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @llvm.nvvm.read.ptx.sreg.tid.x() #3

; Function Attrs: convergent inlinehint norecurse nounwind
define internal void @_Z30data_sharing_init_stack_commonv() local_unnamed_addr #4 {
  %1 = load %class.omptarget_nvptx_ThreadPrivateContext*, %class.omptarget_nvptx_ThreadPrivateContext** addrspacecast (%class.omptarget_nvptx_ThreadPrivateContext* addrspace(3)* @omptarget_nvptx_threadPrivateContext to %class.omptarget_nvptx_ThreadPrivateContext**), align 8, !tbaa !13
  %2 = tail call dereferenceable(263648) %class.omptarget_nvptx_TeamDescr* @_ZN36omptarget_nvptx_ThreadPrivateContext11TeamContextEv(%class.omptarget_nvptx_ThreadPrivateContext* %1) #12
  br label %4

; <label>:3:                                      ; preds = %4
  ret void

; <label>:4:                                      ; preds = %4, %0
  %5 = phi i32 [ 0, %0 ], [ %11, %4 ]
  %6 = tail call %struct.__kmpc_data_sharing_slot* @_ZN25omptarget_nvptx_TeamDescr23GetPreallocatedSlotAddrEi(%class.omptarget_nvptx_TeamDescr* nonnull %2, i32 %5) #12
  %7 = zext i32 %5 to i64
  %8 = getelementptr %struct.DataSharingStateTy, %struct.DataSharingStateTy* addrspacecast (%struct.DataSharingStateTy addrspace(3)* @DataSharingState to %struct.DataSharingStateTy*), i64 0, i32 0, i64 %7
  store %struct.__kmpc_data_sharing_slot* %6, %struct.__kmpc_data_sharing_slot** %8, align 8, !tbaa !13
  %9 = getelementptr inbounds %struct.__kmpc_data_sharing_slot, %struct.__kmpc_data_sharing_slot* %6, i64 0, i32 4, i64 0
  %10 = getelementptr %struct.DataSharingStateTy, %struct.DataSharingStateTy* addrspacecast (%struct.DataSharingStateTy addrspace(3)* @DataSharingState to %struct.DataSharingStateTy*), i64 0, i32 1, i64 %7
  store i8* %9, i8** %10, align 8, !tbaa !13
  %11 = add nuw nsw i32 %5, 1
  %12 = icmp eq i32 %11, 32
  br i1 %12, label %3, label %4
}

; Function Attrs: nounwind
declare void @llvm.nvvm.membar.cta() #5

; Function Attrs: inlinehint norecurse nounwind
define internal dereferenceable(263648) %class.omptarget_nvptx_TeamDescr* @_ZN36omptarget_nvptx_ThreadPrivateContext11TeamContextEv(%class.omptarget_nvptx_ThreadPrivateContext*) local_unnamed_addr #6 align 2 {
  %2 = getelementptr inbounds %class.omptarget_nvptx_ThreadPrivateContext, %class.omptarget_nvptx_ThreadPrivateContext* %0, i64 0, i32 0
  ret %class.omptarget_nvptx_TeamDescr* %2
}

; Function Attrs: inlinehint norecurse nounwind
define internal %struct.__kmpc_data_sharing_slot* @_ZN25omptarget_nvptx_TeamDescr23GetPreallocatedSlotAddrEi(%class.omptarget_nvptx_TeamDescr*, i32) local_unnamed_addr #6 align 2 {
  %3 = sext i32 %1 to i64
  %4 = getelementptr inbounds %class.omptarget_nvptx_TeamDescr, %class.omptarget_nvptx_TeamDescr* %0, i64 0, i32 4, i64 %3
  %5 = getelementptr inbounds %class.omptarget_nvptx_TeamDescr, %class.omptarget_nvptx_TeamDescr* %0, i64 0, i32 4, i64 %3, i32 4, i64 8192
  %6 = getelementptr inbounds %class.omptarget_nvptx_TeamDescr, %class.omptarget_nvptx_TeamDescr* %0, i64 0, i32 4, i64 %3, i32 3
  store i8* %5, i8** %6, align 8, !tbaa !17
  %7 = getelementptr inbounds %struct.__kmpc_data_sharing_worker_slot_static, %struct.__kmpc_data_sharing_worker_slot_static* %4, i64 0, i32 0
  store %struct.__kmpc_data_sharing_slot* null, %struct.__kmpc_data_sharing_slot** %7, align 16, !tbaa !19
  %8 = getelementptr inbounds %class.omptarget_nvptx_TeamDescr, %class.omptarget_nvptx_TeamDescr* %0, i64 0, i32 4, i64 %3, i32 1
  store %struct.__kmpc_data_sharing_slot* null, %struct.__kmpc_data_sharing_slot** %8, align 8, !tbaa !20
  %9 = getelementptr inbounds %class.omptarget_nvptx_TeamDescr, %class.omptarget_nvptx_TeamDescr* %0, i64 0, i32 4, i64 %3, i32 2
  store i8* null, i8** %9, align 16, !tbaa !21
  %10 = bitcast %struct.__kmpc_data_sharing_worker_slot_static* %4 to %struct.__kmpc_data_sharing_slot*
  ret %struct.__kmpc_data_sharing_slot* %10
}

; Function Attrs: convergent nounwind
define internal void @__kmpc_for_static_init_4(i8* nocapture readnone, i32, i32, i32*, i32*, i32*, i32*, i32, i32) #2 {
  %10 = tail call zeroext i1 @_Z10isSPMDModev() #12
  %11 = tail call zeroext i1 @_Z22isRuntimeUninitializedv() #12
  tail call void @_ZN27omptarget_nvptx_LoopSupportIiiE15for_static_initEiPiS1_S1_S1_ibb(i32 %2, i32* %3, i32* %4, i32* %5, i32* %6, i32 %8, i1 zeroext %10, i1 zeroext %11) #13
  ret void
}

; Function Attrs: inlinehint norecurse nounwind
define internal zeroext i1 @_Z10isSPMDModev() local_unnamed_addr #6 {
  %1 = load i32, i32* addrspacecast (i32 addrspace(3)* @execution_param to i32*), align 4, !tbaa !22
  %2 = and i32 %1, 1
  %3 = icmp ne i32 %2, 0
  ret i1 %3
}

; Function Attrs: inlinehint norecurse nounwind
define internal zeroext i1 @_Z22isRuntimeUninitializedv() local_unnamed_addr #6 {
  %1 = load i32, i32* addrspacecast (i32 addrspace(3)* @execution_param to i32*), align 4, !tbaa !22
  %2 = and i32 %1, 2
  %3 = icmp ne i32 %2, 0
  ret i1 %3
}

; Function Attrs: convergent inlinehint nounwind
define internal void @_ZN27omptarget_nvptx_LoopSupportIiiE15for_static_initEiPiS1_S1_S1_ibb(i32, i32*, i32*, i32*, i32*, i32, i1 zeroext, i1 zeroext) local_unnamed_addr #7 align 2 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %5, i32* %9, align 4, !tbaa !22
  %14 = tail call i32 @_Z25GetLogicalThreadIdInBlockv() #13
  %15 = tail call i32 @_Z21GetNumberOfOmpThreadsibb(i32 %14, i1 zeroext %6, i1 zeroext %7) #13
  %16 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %16) #12
  store i32 0, i32* %10, align 4, !tbaa !22
  %17 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %17) #12
  %18 = load i32, i32* %2, align 4, !tbaa !22
  store i32 %18, i32* %11, align 4, !tbaa !22
  %19 = bitcast i32* %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %19) #12
  %20 = load i32, i32* %3, align 4, !tbaa !22
  store i32 %20, i32* %12, align 4, !tbaa !22
  %21 = bitcast i32* %13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %21) #12
  %22 = load i32, i32* %4, align 4, !tbaa !22
  store i32 %22, i32* %13, align 4, !tbaa !22
  switch i32 %0, label %53 [
    i32 33, label %23
    i32 34, label %30
    i32 91, label %33
    i32 92, label %40
    i32 93, label %43
  ]

; <label>:23:                                     ; preds = %8
  %24 = load i32, i32* %9, align 4, !tbaa !22
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %30

; <label>:26:                                     ; preds = %23
  %27 = tail call i32 @_Z14GetOmpThreadIdibb(i32 %14, i1 zeroext %6, i1 zeroext %7) #13
  %28 = tail call i32 @_Z21GetNumberOfOmpThreadsibb(i32 %14, i1 zeroext %6, i1 zeroext %7) #13
  %29 = load i32, i32* %9, align 4, !tbaa !22
  call void @_ZN27omptarget_nvptx_LoopSupportIiiE14ForStaticChunkERiS1_S1_S1_iii(i32* nonnull dereferenceable(4) %10, i32* nonnull dereferenceable(4) %11, i32* nonnull dereferenceable(4) %12, i32* nonnull dereferenceable(4) %13, i32 %29, i32 %27, i32 %28) #12
  br label %57

; <label>:30:                                     ; preds = %23, %8
  %31 = tail call i32 @_Z14GetOmpThreadIdibb(i32 %14, i1 zeroext %6, i1 zeroext %7) #13
  %32 = tail call i32 @_Z21GetNumberOfOmpThreadsibb(i32 %14, i1 zeroext %6, i1 zeroext %7) #13
  call void @_ZN27omptarget_nvptx_LoopSupportIiiE16ForStaticNoChunkERiS1_S1_S1_S1_ii(i32* nonnull dereferenceable(4) %10, i32* nonnull dereferenceable(4) %11, i32* nonnull dereferenceable(4) %12, i32* nonnull dereferenceable(4) %13, i32* nonnull dereferenceable(4) %9, i32 %31, i32 %32) #12
  br label %57

; <label>:33:                                     ; preds = %8
  %34 = load i32, i32* %9, align 4, !tbaa !22
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %40

; <label>:36:                                     ; preds = %33
  %37 = tail call i32 @_Z12GetOmpTeamIdv() #13
  %38 = tail call i32 @_Z19GetNumberOfOmpTeamsv() #13
  %39 = load i32, i32* %9, align 4, !tbaa !22
  call void @_ZN27omptarget_nvptx_LoopSupportIiiE14ForStaticChunkERiS1_S1_S1_iii(i32* nonnull dereferenceable(4) %10, i32* nonnull dereferenceable(4) %11, i32* nonnull dereferenceable(4) %12, i32* nonnull dereferenceable(4) %13, i32 %39, i32 %37, i32 %38) #12
  br label %57

; <label>:40:                                     ; preds = %33, %8
  %41 = tail call i32 @_Z12GetOmpTeamIdv() #13
  %42 = tail call i32 @_Z19GetNumberOfOmpTeamsv() #13
  call void @_ZN27omptarget_nvptx_LoopSupportIiiE16ForStaticNoChunkERiS1_S1_S1_S1_ii(i32* nonnull dereferenceable(4) %10, i32* nonnull dereferenceable(4) %11, i32* nonnull dereferenceable(4) %12, i32* nonnull dereferenceable(4) %13, i32* nonnull dereferenceable(4) %9, i32 %41, i32 %42) #12
  br label %57

; <label>:43:                                     ; preds = %8
  %44 = tail call i32 @_Z21GetNumberOfOmpThreadsibb(i32 %14, i1 zeroext %6, i1 zeroext %7) #13
  %45 = tail call i32 @_Z12GetOmpTeamIdv() #13
  %46 = mul nsw i32 %45, %44
  %47 = tail call i32 @_Z14GetOmpThreadIdibb(i32 %14, i1 zeroext %6, i1 zeroext %7) #13
  %48 = add nsw i32 %46, %47
  %49 = tail call i32 @_Z19GetNumberOfOmpTeamsv() #13
  %50 = tail call i32 @_Z21GetNumberOfOmpThreadsibb(i32 %14, i1 zeroext %6, i1 zeroext %7) #13
  %51 = mul nsw i32 %50, %49
  %52 = load i32, i32* %9, align 4, !tbaa !22
  call void @_ZN27omptarget_nvptx_LoopSupportIiiE14ForStaticChunkERiS1_S1_S1_iii(i32* nonnull dereferenceable(4) %10, i32* nonnull dereferenceable(4) %11, i32* nonnull dereferenceable(4) %12, i32* nonnull dereferenceable(4) %13, i32 %52, i32 %48, i32 %51) #12
  br label %57

; <label>:53:                                     ; preds = %8
  %54 = tail call i32 @_Z14GetOmpThreadIdibb(i32 %14, i1 zeroext %6, i1 zeroext %7) #13
  %55 = tail call i32 @_Z21GetNumberOfOmpThreadsibb(i32 %14, i1 zeroext %6, i1 zeroext %7) #13
  %56 = load i32, i32* %9, align 4, !tbaa !22
  call void @_ZN27omptarget_nvptx_LoopSupportIiiE14ForStaticChunkERiS1_S1_S1_iii(i32* nonnull dereferenceable(4) %10, i32* nonnull dereferenceable(4) %11, i32* nonnull dereferenceable(4) %12, i32* nonnull dereferenceable(4) %13, i32 %56, i32 %54, i32 %55) #12
  br label %57

; <label>:57:                                     ; preds = %53, %43, %40, %36, %30, %26
  %58 = load i32, i32* %10, align 4, !tbaa !22
  store i32 %58, i32* %1, align 4, !tbaa !22
  %59 = load i32, i32* %11, align 4, !tbaa !22
  store i32 %59, i32* %2, align 4, !tbaa !22
  %60 = load i32, i32* %12, align 4, !tbaa !22
  store i32 %60, i32* %3, align 4, !tbaa !22
  %61 = load i32, i32* %13, align 4, !tbaa !22
  store i32 %61, i32* %4, align 4, !tbaa !22
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %21) #12
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #12
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %17) #12
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %16) #12
  ret void
}

; Function Attrs: convergent inlinehint nounwind
define internal i32 @_Z25GetLogicalThreadIdInBlockv() local_unnamed_addr #7 {
  %1 = tail call i32 @_Z18GetThreadIdInBlockv() #12
  %2 = tail call zeroext i1 @_Z13isGenericModev() #12
  br i1 %2, label %3, label %6

; <label>:3:                                      ; preds = %0
  %4 = tail call i32 @_Z17GetMasterThreadIDv() #12
  %5 = icmp slt i32 %1, %4
  br i1 %5, label %6, label %7

; <label>:6:                                      ; preds = %3, %0
  br label %7

; <label>:7:                                      ; preds = %3, %6
  %8 = phi i32 [ %1, %6 ], [ 0, %3 ]
  ret i32 %8
}

; Function Attrs: convergent inlinehint nounwind
define internal i32 @_Z21GetNumberOfOmpThreadsibb(i32, i1 zeroext, i1 zeroext) local_unnamed_addr #7 {
  br i1 %2, label %4, label %8

; <label>:4:                                      ; preds = %3
  %5 = tail call i32 @_Z25GetNumberOfThreadsInBlockv() #12
  %6 = add nsw i32 %5, -32
  %7 = select i1 %1, i32 %5, i32 %6
  br label %14

; <label>:8:                                      ; preds = %3
  %9 = load %class.omptarget_nvptx_ThreadPrivateContext*, %class.omptarget_nvptx_ThreadPrivateContext** addrspacecast (%class.omptarget_nvptx_ThreadPrivateContext* addrspace(3)* @omptarget_nvptx_threadPrivateContext to %class.omptarget_nvptx_ThreadPrivateContext**), align 8, !tbaa !13
  %10 = tail call %class.omptarget_nvptx_TaskDescr* @_ZN36omptarget_nvptx_ThreadPrivateContext20GetTopLevelTaskDescrEi(%class.omptarget_nvptx_ThreadPrivateContext* %9, i32 %0) #12
  %11 = tail call dereferenceable(2) i16* @_ZN25omptarget_nvptx_TaskDescr13ThreadsInTeamEv(%class.omptarget_nvptx_TaskDescr* %10) #12
  %12 = load i16, i16* %11, align 2, !tbaa !24
  %13 = zext i16 %12 to i32
  br label %14

; <label>:14:                                     ; preds = %8, %4
  %15 = phi i32 [ %7, %4 ], [ %13, %8 ]
  ret i32 %15
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #8

; Function Attrs: convergent inlinehint nounwind
define internal i32 @_Z14GetOmpThreadIdibb(i32, i1 zeroext, i1 zeroext) local_unnamed_addr #7 {
  br i1 %2, label %4, label %10

; <label>:4:                                      ; preds = %3
  %5 = tail call i32 @_Z18GetThreadIdInBlockv() #12
  br i1 %1, label %16, label %6

; <label>:6:                                      ; preds = %4
  %7 = tail call i32 @_Z17GetMasterThreadIDv() #12
  %8 = icmp slt i32 %5, %7
  %9 = select i1 %8, i32 %5, i32 0
  ret i32 %9

; <label>:10:                                     ; preds = %3
  %11 = load %class.omptarget_nvptx_ThreadPrivateContext*, %class.omptarget_nvptx_ThreadPrivateContext** addrspacecast (%class.omptarget_nvptx_ThreadPrivateContext* addrspace(3)* @omptarget_nvptx_threadPrivateContext to %class.omptarget_nvptx_ThreadPrivateContext**), align 8, !tbaa !13
  %12 = tail call %class.omptarget_nvptx_TaskDescr* @_ZN36omptarget_nvptx_ThreadPrivateContext20GetTopLevelTaskDescrEi(%class.omptarget_nvptx_ThreadPrivateContext* %11, i32 %0) #12
  %13 = tail call dereferenceable(2) i16* @_ZN25omptarget_nvptx_TaskDescr8ThreadIdEv(%class.omptarget_nvptx_TaskDescr* %12) #12
  %14 = load i16, i16* %13, align 2, !tbaa !24
  %15 = zext i16 %14 to i32
  br label %16

; <label>:16:                                     ; preds = %4, %10
  %17 = phi i32 [ %5, %4 ], [ %15, %10 ]
  ret i32 %17
}

; Function Attrs: inlinehint norecurse nounwind
define internal void @_ZN27omptarget_nvptx_LoopSupportIiiE14ForStaticChunkERiS1_S1_S1_iii(i32* dereferenceable(4), i32* dereferenceable(4), i32* dereferenceable(4), i32* dereferenceable(4), i32, i32, i32) local_unnamed_addr #6 align 2 {
  %8 = mul nsw i32 %6, %4
  store i32 %8, i32* %3, align 4, !tbaa !22
  %9 = load i32, i32* %1, align 4, !tbaa !22
  %10 = mul nsw i32 %5, %4
  %11 = add nsw i32 %9, %10
  store i32 %11, i32* %1, align 4, !tbaa !22
  %12 = load i32, i32* %2, align 4, !tbaa !22
  %13 = add i32 %4, -1
  %14 = add i32 %13, %11
  store i32 %14, i32* %2, align 4, !tbaa !22
  %15 = srem i32 %12, %4
  %16 = sub i32 %12, %15
  %17 = load i32, i32* %1, align 4, !tbaa !22
  %18 = sub i32 %16, %17
  %19 = load i32, i32* %3, align 4, !tbaa !22
  %20 = srem i32 %18, %19
  %21 = icmp eq i32 %20, 0
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %0, align 4, !tbaa !22
  ret void
}

; Function Attrs: inlinehint norecurse nounwind
define internal void @_ZN27omptarget_nvptx_LoopSupportIiiE16ForStaticNoChunkERiS1_S1_S1_S1_ii(i32* dereferenceable(4), i32* dereferenceable(4), i32* dereferenceable(4), i32* dereferenceable(4), i32* dereferenceable(4), i32, i32) local_unnamed_addr #6 align 2 {
  %8 = load i32, i32* %2, align 4, !tbaa !22
  %9 = load i32, i32* %1, align 4, !tbaa !22
  %10 = sub nsw i32 %8, %9
  %11 = add nsw i32 %10, 1
  %12 = sdiv i32 %11, %6
  store i32 %12, i32* %4, align 4, !tbaa !22
  %13 = mul nsw i32 %12, %6
  %14 = sub nsw i32 %11, %13
  %15 = icmp sgt i32 %14, %5
  br i1 %15, label %16, label %21

; <label>:16:                                     ; preds = %7
  %17 = add nsw i32 %12, 1
  store i32 %17, i32* %4, align 4, !tbaa !22
  %18 = load i32, i32* %1, align 4, !tbaa !22
  %19 = mul nsw i32 %17, %5
  %20 = add nsw i32 %18, %19
  br label %26

; <label>:21:                                     ; preds = %7
  %22 = load i32, i32* %1, align 4, !tbaa !22
  %23 = mul nsw i32 %12, %5
  %24 = add i32 %14, %23
  %25 = add i32 %24, %22
  br label %26

; <label>:26:                                     ; preds = %21, %16
  %27 = phi i32 [ %25, %21 ], [ %20, %16 ]
  store i32 %27, i32* %1, align 4, !tbaa !22
  %28 = load i32, i32* %2, align 4, !tbaa !22
  %29 = load i32, i32* %4, align 4, !tbaa !22
  %30 = add nsw i32 %29, %27
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* %2, align 4, !tbaa !22
  %32 = load i32, i32* %1, align 4, !tbaa !22
  %33 = icmp sle i32 %32, %28
  %34 = icmp slt i32 %28, %30
  %35 = and i1 %34, %33
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %0, align 4, !tbaa !22
  store i32 %11, i32* %3, align 4, !tbaa !22
  ret void
}

; Function Attrs: convergent inlinehint nounwind
define internal i32 @_Z12GetOmpTeamIdv() local_unnamed_addr #7 {
  %1 = tail call i32 @_Z18GetBlockIdInKernelv() #12
  ret i32 %1
}

; Function Attrs: convergent inlinehint nounwind
define internal i32 @_Z19GetNumberOfOmpTeamsv() local_unnamed_addr #7 {
  %1 = tail call i32 @_Z25GetNumberOfBlocksInKernelv() #12
  ret i32 %1
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #8

; Function Attrs: inlinehint nounwind
define internal i32 @_Z25GetNumberOfBlocksInKernelv() local_unnamed_addr #9 {
  %1 = tail call i32 @llvm.nvvm.read.ptx.sreg.nctaid.x() #12, !range !26
  ret i32 %1
}

; Function Attrs: nounwind readnone
declare i32 @llvm.nvvm.read.ptx.sreg.nctaid.x() #3

; Function Attrs: inlinehint nounwind
define internal i32 @_Z18GetBlockIdInKernelv() local_unnamed_addr #9 {
  %1 = tail call i32 @llvm.nvvm.read.ptx.sreg.ctaid.x() #12, !range !27
  ret i32 %1
}

; Function Attrs: nounwind readnone
declare i32 @llvm.nvvm.read.ptx.sreg.ctaid.x() #3

; Function Attrs: inlinehint nounwind
define internal i32 @_Z18GetThreadIdInBlockv() local_unnamed_addr #9 {
  %1 = tail call i32 @llvm.nvvm.read.ptx.sreg.tid.x() #12, !range !12
  ret i32 %1
}

; Function Attrs: inlinehint nounwind
define internal i32 @_Z17GetMasterThreadIDv() local_unnamed_addr #9 {
  %1 = tail call i32 @llvm.nvvm.read.ptx.sreg.ntid.x() #12, !range !11
  %2 = add nsw i32 %1, -1
  %3 = and i32 %2, -32
  ret i32 %3
}

; Function Attrs: inlinehint norecurse nounwind
define internal %class.omptarget_nvptx_TaskDescr* @_ZN36omptarget_nvptx_ThreadPrivateContext20GetTopLevelTaskDescrEi(%class.omptarget_nvptx_ThreadPrivateContext*, i32) local_unnamed_addr #6 align 2 {
  %3 = sext i32 %1 to i64
  %4 = getelementptr inbounds %class.omptarget_nvptx_ThreadPrivateContext, %class.omptarget_nvptx_ThreadPrivateContext* %0, i64 0, i32 2, i64 %3
  %5 = load %class.omptarget_nvptx_TaskDescr*, %class.omptarget_nvptx_TaskDescr** %4, align 8, !tbaa !13
  ret %class.omptarget_nvptx_TaskDescr* %5
}

; Function Attrs: inlinehint norecurse nounwind
define internal dereferenceable(2) i16* @_ZN25omptarget_nvptx_TaskDescr8ThreadIdEv(%class.omptarget_nvptx_TaskDescr*) local_unnamed_addr #6 align 2 {
  %2 = getelementptr inbounds %class.omptarget_nvptx_TaskDescr, %class.omptarget_nvptx_TaskDescr* %0, i64 0, i32 1, i32 4
  ret i16* %2
}

; Function Attrs: inlinehint nounwind
define internal i32 @_Z25GetNumberOfThreadsInBlockv() local_unnamed_addr #9 {
  %1 = tail call i32 @llvm.nvvm.read.ptx.sreg.ntid.x() #12, !range !11
  ret i32 %1
}

; Function Attrs: inlinehint norecurse nounwind
define internal dereferenceable(2) i16* @_ZN25omptarget_nvptx_TaskDescr13ThreadsInTeamEv(%class.omptarget_nvptx_TaskDescr*) local_unnamed_addr #6 align 2 {
  %2 = getelementptr inbounds %class.omptarget_nvptx_TaskDescr, %class.omptarget_nvptx_TaskDescr* %0, i64 0, i32 1, i32 5
  ret i16* %2
}

; Function Attrs: inlinehint norecurse nounwind
define internal zeroext i1 @_Z13isGenericModev() local_unnamed_addr #6 {
  %1 = load i32, i32* addrspacecast (i32 addrspace(3)* @execution_param to i32*), align 4, !tbaa !22
  %2 = and i32 %1, 1
  %3 = icmp eq i32 %2, 0
  ret i1 %3
}

; Function Attrs: norecurse nounwind readnone
define internal void @__kmpc_for_static_fini(i8* nocapture, i32) #10 {
  ret void
}

; Function Attrs: convergent nounwind
define internal void @__kmpc_spmd_kernel_init(i32, i16 signext, i16 signext) #2 {
  %4 = icmp eq i16 %1, 0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  tail call void @_Z22setExecutionParameters13ExecutionMode11RuntimeMode(i32 1, i32 2) #12
  br label %44

; <label>:6:                                      ; preds = %3
  tail call void @_Z22setExecutionParameters13ExecutionMode11RuntimeMode(i32 1, i32 0) #12
  %7 = tail call i32 @_Z18GetThreadIdInBlockv() #12
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %19

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @_Z4smidv() #13
  %11 = urem i32 %10, 56
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds [56 x %class.omptarget_nvptx_Queue], [56 x %class.omptarget_nvptx_Queue] addrspace(1)* @omptarget_nvptx_device_State, i64 0, i64 %12
  %14 = addrspacecast %class.omptarget_nvptx_Queue addrspace(1)* %13 to %class.omptarget_nvptx_Queue*
  %15 = tail call %class.omptarget_nvptx_ThreadPrivateContext* @_ZN21omptarget_nvptx_QueueI36omptarget_nvptx_ThreadPrivateContextLj32EE7DequeueEv(%class.omptarget_nvptx_Queue* %14) #13
  store %class.omptarget_nvptx_ThreadPrivateContext* %15, %class.omptarget_nvptx_ThreadPrivateContext** addrspacecast (%class.omptarget_nvptx_ThreadPrivateContext* addrspace(3)* @omptarget_nvptx_threadPrivateContext to %class.omptarget_nvptx_ThreadPrivateContext**), align 8, !tbaa !13
  %16 = tail call dereferenceable(263648) %class.omptarget_nvptx_TeamDescr* @_Z19getMyTeamDescriptorv() #13
  %17 = tail call dereferenceable(104) %class.omptarget_nvptx_WorkDescr* @_Z19getMyWorkDescriptorv() #13
  tail call void @_ZN25omptarget_nvptx_TeamDescr13InitTeamDescrEv(%class.omptarget_nvptx_TeamDescr* nonnull %16) #13
  %18 = tail call dereferenceable(24) %class.omptarget_nvptx_CounterGroup* @_ZN25omptarget_nvptx_WorkDescr12CounterGroupEv(%class.omptarget_nvptx_WorkDescr* nonnull %17) #12
  tail call void @_ZN28omptarget_nvptx_CounterGroup5ResetEv(%class.omptarget_nvptx_CounterGroup* nonnull %18) #12
  br label %19

; <label>:19:                                     ; preds = %9, %6
  tail call void @llvm.nvvm.barrier0()
  %20 = tail call dereferenceable(263648) %class.omptarget_nvptx_TeamDescr* @_Z19getMyTeamDescriptorv() #13
  %21 = tail call dereferenceable(104) %class.omptarget_nvptx_WorkDescr* @_Z19getMyWorkDescriptorv() #13
  %22 = load %class.omptarget_nvptx_ThreadPrivateContext*, %class.omptarget_nvptx_ThreadPrivateContext** addrspacecast (%class.omptarget_nvptx_ThreadPrivateContext* addrspace(3)* @omptarget_nvptx_threadPrivateContext to %class.omptarget_nvptx_ThreadPrivateContext**), align 8, !tbaa !13
  %23 = tail call %class.omptarget_nvptx_TaskDescr* @_ZN36omptarget_nvptx_ThreadPrivateContext15Level1TaskDescrEi(%class.omptarget_nvptx_ThreadPrivateContext* %22, i32 %7) #12
  %24 = trunc i32 %0 to i16
  %25 = tail call %class.omptarget_nvptx_TaskDescr* @_ZN25omptarget_nvptx_TeamDescr18LevelZeroTaskDescrEv(%class.omptarget_nvptx_TeamDescr* nonnull %20) #12
  tail call void @_ZN25omptarget_nvptx_TaskDescr21InitLevelOneTaskDescrEtPS_(%class.omptarget_nvptx_TaskDescr* %23, i16 zeroext %24, %class.omptarget_nvptx_TaskDescr* %25) #13
  %26 = tail call dereferenceable(2) i16* @_ZN25omptarget_nvptx_TaskDescr11ThreadLimitEv(%class.omptarget_nvptx_TaskDescr* %23) #12
  store i16 %24, i16* %26, align 2, !tbaa !24
  %27 = load %class.omptarget_nvptx_ThreadPrivateContext*, %class.omptarget_nvptx_ThreadPrivateContext** addrspacecast (%class.omptarget_nvptx_ThreadPrivateContext* addrspace(3)* @omptarget_nvptx_threadPrivateContext to %class.omptarget_nvptx_ThreadPrivateContext**), align 8, !tbaa !13
  tail call void @_ZN36omptarget_nvptx_ThreadPrivateContext20SetTopLevelTaskDescrEiP25omptarget_nvptx_TaskDescr(%class.omptarget_nvptx_ThreadPrivateContext* %27, i32 %7, %class.omptarget_nvptx_TaskDescr* %23) #12
  %28 = tail call dereferenceable(24) %class.omptarget_nvptx_CounterGroup* @_ZN25omptarget_nvptx_WorkDescr12CounterGroupEv(%class.omptarget_nvptx_WorkDescr* nonnull %21) #12
  %29 = load %class.omptarget_nvptx_ThreadPrivateContext*, %class.omptarget_nvptx_ThreadPrivateContext** addrspacecast (%class.omptarget_nvptx_ThreadPrivateContext* addrspace(3)* @omptarget_nvptx_threadPrivateContext to %class.omptarget_nvptx_ThreadPrivateContext**), align 8, !tbaa !13
  %30 = tail call dereferenceable(8) i64* @_ZN36omptarget_nvptx_ThreadPrivateContext4PrivEi(%class.omptarget_nvptx_ThreadPrivateContext* %29, i32 %7) #12
  tail call void @_ZN28omptarget_nvptx_CounterGroup4InitERy(%class.omptarget_nvptx_CounterGroup* nonnull %28, i64* nonnull dereferenceable(8) %30) #12
  %31 = icmp ne i16 %2, 0
  %32 = and i32 %7, 31
  %33 = icmp eq i32 %32, 0
  %34 = and i1 %31, %33
  br i1 %34, label %35, label %44

; <label>:35:                                     ; preds = %19
  %36 = sdiv i32 %7, 32
  %37 = and i32 %7, -32
  %38 = icmp eq i32 %37, 992
  %39 = tail call %struct.__kmpc_data_sharing_slot* @_ZN25omptarget_nvptx_TeamDescr5RootSEib(%class.omptarget_nvptx_TeamDescr* nonnull %20, i32 %36, i1 zeroext %38) #12
  %40 = zext i32 %36 to i64
  %41 = getelementptr %struct.DataSharingStateTy, %struct.DataSharingStateTy* addrspacecast (%struct.DataSharingStateTy addrspace(3)* @DataSharingState to %struct.DataSharingStateTy*), i64 0, i32 0, i64 %40
  store %struct.__kmpc_data_sharing_slot* %39, %struct.__kmpc_data_sharing_slot** %41, align 8, !tbaa !13
  %42 = getelementptr inbounds %struct.__kmpc_data_sharing_slot, %struct.__kmpc_data_sharing_slot* %39, i64 0, i32 4, i64 0
  %43 = getelementptr %struct.DataSharingStateTy, %struct.DataSharingStateTy* addrspacecast (%struct.DataSharingStateTy addrspace(3)* @DataSharingState to %struct.DataSharingStateTy*), i64 0, i32 1, i64 %40
  store i8* %42, i8** %43, align 8, !tbaa !13
  br label %44

; <label>:44:                                     ; preds = %35, %19, %5
  ret void
}

; Function Attrs: inlinehint norecurse nounwind
define internal void @_Z22setExecutionParameters13ExecutionMode11RuntimeMode(i32, i32) local_unnamed_addr #6 {
  %3 = or i32 %1, %0
  store i32 %3, i32* addrspacecast (i32 addrspace(3)* @execution_param to i32*), align 4, !tbaa !22
  ret void
}

; Function Attrs: convergent inlinehint nounwind
define internal i32 @_Z4smidv() local_unnamed_addr #7 {
  %1 = tail call i32 asm "mov.u32 $0, %smid;", "=r"() #14, !srcloc !28
  ret i32 %1
}

; Function Attrs: convergent inlinehint norecurse nounwind
define internal %class.omptarget_nvptx_ThreadPrivateContext* @_ZN21omptarget_nvptx_QueueI36omptarget_nvptx_ThreadPrivateContextLj32EE7DequeueEv(%class.omptarget_nvptx_Queue*) local_unnamed_addr #4 align 2 {
  %2 = tail call i32 @_ZN21omptarget_nvptx_QueueI36omptarget_nvptx_ThreadPrivateContextLj32EE14DEQUEUE_TICKETEv(%class.omptarget_nvptx_Queue* %0) #13
  %3 = and i32 %2, 31
  %4 = tail call i32 @_ZN21omptarget_nvptx_QueueI36omptarget_nvptx_ThreadPrivateContextLj32EE2IDEj(%class.omptarget_nvptx_Queue* %0, i32 %2) #12
  br label %5

; <label>:5:                                      ; preds = %5, %1
  %6 = tail call zeroext i1 @_ZN21omptarget_nvptx_QueueI36omptarget_nvptx_ThreadPrivateContextLj32EE9IsServingEjj(%class.omptarget_nvptx_Queue* %0, i32 %3, i32 %4) #13
  br i1 %6, label %7, label %5

; <label>:7:                                      ; preds = %5
  %8 = tail call %class.omptarget_nvptx_ThreadPrivateContext* @_ZN21omptarget_nvptx_QueueI36omptarget_nvptx_ThreadPrivateContextLj32EE10PopElementEj(%class.omptarget_nvptx_Queue* %0, i32 %3) #13
  %9 = icmp eq %class.omptarget_nvptx_ThreadPrivateContext* %8, null
  %10 = zext i32 %3 to i64
  %11 = getelementptr inbounds %class.omptarget_nvptx_Queue, %class.omptarget_nvptx_Queue* %0, i64 0, i32 0, i64 %10
  %12 = select i1 %9, %class.omptarget_nvptx_ThreadPrivateContext* %11, %class.omptarget_nvptx_ThreadPrivateContext* %8
  tail call void @_ZN21omptarget_nvptx_QueueI36omptarget_nvptx_ThreadPrivateContextLj32EE11DoneServingEjj(%class.omptarget_nvptx_Queue* %0, i32 %3, i32 %4) #13
  ret %class.omptarget_nvptx_ThreadPrivateContext* %12
}

; Function Attrs: convergent inlinehint norecurse nounwind
define internal dereferenceable(263648) %class.omptarget_nvptx_TeamDescr* @_Z19getMyTeamDescriptorv() local_unnamed_addr #4 {
  %1 = load %class.omptarget_nvptx_ThreadPrivateContext*, %class.omptarget_nvptx_ThreadPrivateContext** addrspacecast (%class.omptarget_nvptx_ThreadPrivateContext* addrspace(3)* @omptarget_nvptx_threadPrivateContext to %class.omptarget_nvptx_ThreadPrivateContext**), align 8, !tbaa !13
  %2 = tail call dereferenceable(263648) %class.omptarget_nvptx_TeamDescr* @_ZN36omptarget_nvptx_ThreadPrivateContext11TeamContextEv(%class.omptarget_nvptx_ThreadPrivateContext* %1) #12
  ret %class.omptarget_nvptx_TeamDescr* %2
}

; Function Attrs: convergent inlinehint norecurse nounwind
define internal dereferenceable(104) %class.omptarget_nvptx_WorkDescr* @_Z19getMyWorkDescriptorv() local_unnamed_addr #4 {
  %1 = tail call dereferenceable(263648) %class.omptarget_nvptx_TeamDescr* @_Z19getMyTeamDescriptorv() #13
  %2 = tail call dereferenceable(104) %class.omptarget_nvptx_WorkDescr* @_ZN25omptarget_nvptx_TeamDescr9WorkDescrEv(%class.omptarget_nvptx_TeamDescr* nonnull %1) #12
  ret %class.omptarget_nvptx_WorkDescr* %2
}

; Function Attrs: convergent inlinehint nounwind
define internal void @_ZN25omptarget_nvptx_TeamDescr13InitTeamDescrEv(%class.omptarget_nvptx_TeamDescr*) local_unnamed_addr #7 align 2 {
  %2 = getelementptr inbounds %class.omptarget_nvptx_TeamDescr, %class.omptarget_nvptx_TeamDescr* %0, i64 0, i32 0
  tail call void @_ZN25omptarget_nvptx_TaskDescr22InitLevelZeroTaskDescrEv(%class.omptarget_nvptx_TaskDescr* %2) #13
  %3 = getelementptr inbounds %class.omptarget_nvptx_TeamDescr, %class.omptarget_nvptx_TeamDescr* %0, i64 0, i32 1
  tail call void @_ZN25omptarget_nvptx_WorkDescr13InitWorkDescrEv(%class.omptarget_nvptx_WorkDescr* nonnull %3) #13
  ret void
}

; Function Attrs: inlinehint norecurse nounwind
define internal dereferenceable(24) %class.omptarget_nvptx_CounterGroup* @_ZN25omptarget_nvptx_WorkDescr12CounterGroupEv(%class.omptarget_nvptx_WorkDescr*) local_unnamed_addr #6 align 2 {
  %2 = getelementptr inbounds %class.omptarget_nvptx_WorkDescr, %class.omptarget_nvptx_WorkDescr* %0, i64 0, i32 0
  ret %class.omptarget_nvptx_CounterGroup* %2
}

; Function Attrs: inlinehint norecurse nounwind
define internal void @_ZN28omptarget_nvptx_CounterGroup5ResetEv(%class.omptarget_nvptx_CounterGroup*) local_unnamed_addr #6 align 2 {
  %2 = getelementptr inbounds %class.omptarget_nvptx_CounterGroup, %class.omptarget_nvptx_CounterGroup* %0, i64 0, i32 1
  %3 = load volatile i64, i64* %2, align 8, !tbaa !29
  %4 = getelementptr inbounds %class.omptarget_nvptx_CounterGroup, %class.omptarget_nvptx_CounterGroup* %0, i64 0, i32 2
  store i64 %3, i64* %4, align 8, !tbaa !32
  ret void
}

; Function Attrs: convergent nounwind
declare void @llvm.nvvm.barrier0() #11

; Function Attrs: inlinehint norecurse nounwind
define internal %class.omptarget_nvptx_TaskDescr* @_ZN36omptarget_nvptx_ThreadPrivateContext15Level1TaskDescrEi(%class.omptarget_nvptx_ThreadPrivateContext*, i32) local_unnamed_addr #6 align 2 {
  %3 = sext i32 %1 to i64
  %4 = getelementptr inbounds %class.omptarget_nvptx_ThreadPrivateContext, %class.omptarget_nvptx_ThreadPrivateContext* %0, i64 0, i32 1, i64 %3
  ret %class.omptarget_nvptx_TaskDescr* %4
}

; Function Attrs: inlinehint norecurse nounwind
define internal %class.omptarget_nvptx_TaskDescr* @_ZN25omptarget_nvptx_TeamDescr18LevelZeroTaskDescrEv(%class.omptarget_nvptx_TeamDescr*) local_unnamed_addr #6 align 2 {
  %2 = getelementptr inbounds %class.omptarget_nvptx_TeamDescr, %class.omptarget_nvptx_TeamDescr* %0, i64 0, i32 0
  ret %class.omptarget_nvptx_TaskDescr* %2
}

; Function Attrs: convergent inlinehint nounwind
define internal void @_ZN25omptarget_nvptx_TaskDescr21InitLevelOneTaskDescrEtPS_(%class.omptarget_nvptx_TaskDescr*, i16 zeroext, %class.omptarget_nvptx_TaskDescr*) local_unnamed_addr #7 align 2 {
  %4 = getelementptr inbounds %class.omptarget_nvptx_TaskDescr, %class.omptarget_nvptx_TaskDescr* %0, i64 0, i32 1, i32 0
  store i8 48, i8* %4, align 8, !tbaa !33
  %5 = getelementptr inbounds %class.omptarget_nvptx_TaskDescr, %class.omptarget_nvptx_TaskDescr* %0, i64 0, i32 1, i32 2
  store i16 0, i16* %5, align 2, !tbaa !39
  %6 = tail call i32 @_Z18GetThreadIdInBlockv() #12
  %7 = trunc i32 %6 to i16
  %8 = getelementptr inbounds %class.omptarget_nvptx_TaskDescr, %class.omptarget_nvptx_TaskDescr* %0, i64 0, i32 1, i32 4
  store i16 %7, i16* %8, align 2, !tbaa !40
  %9 = getelementptr inbounds %class.omptarget_nvptx_TaskDescr, %class.omptarget_nvptx_TaskDescr* %0, i64 0, i32 1, i32 5
  store i16 %1, i16* %9, align 8, !tbaa !41
  %10 = getelementptr inbounds %class.omptarget_nvptx_TaskDescr, %class.omptarget_nvptx_TaskDescr* %0, i64 0, i32 1, i32 6
  store i64 1, i64* %10, align 8, !tbaa !42
  %11 = getelementptr inbounds %class.omptarget_nvptx_TaskDescr, %class.omptarget_nvptx_TaskDescr* %0, i64 0, i32 2
  store %class.omptarget_nvptx_TaskDescr* %2, %class.omptarget_nvptx_TaskDescr** %11, align 8, !tbaa !43
  ret void
}

; Function Attrs: inlinehint norecurse nounwind
define internal dereferenceable(2) i16* @_ZN25omptarget_nvptx_TaskDescr11ThreadLimitEv(%class.omptarget_nvptx_TaskDescr*) local_unnamed_addr #6 align 2 {
  %2 = getelementptr inbounds %class.omptarget_nvptx_TaskDescr, %class.omptarget_nvptx_TaskDescr* %0, i64 0, i32 1, i32 3
  ret i16* %2
}

; Function Attrs: inlinehint norecurse nounwind
define internal void @_ZN36omptarget_nvptx_ThreadPrivateContext20SetTopLevelTaskDescrEiP25omptarget_nvptx_TaskDescr(%class.omptarget_nvptx_ThreadPrivateContext*, i32, %class.omptarget_nvptx_TaskDescr*) local_unnamed_addr #6 align 2 {
  %4 = sext i32 %1 to i64
  %5 = getelementptr inbounds %class.omptarget_nvptx_ThreadPrivateContext, %class.omptarget_nvptx_ThreadPrivateContext* %0, i64 0, i32 2, i64 %4
  store %class.omptarget_nvptx_TaskDescr* %2, %class.omptarget_nvptx_TaskDescr** %5, align 8, !tbaa !13
  ret void
}

; Function Attrs: inlinehint norecurse nounwind
define internal dereferenceable(8) i64* @_ZN36omptarget_nvptx_ThreadPrivateContext4PrivEi(%class.omptarget_nvptx_ThreadPrivateContext*, i32) local_unnamed_addr #6 align 2 {
  %3 = sext i32 %1 to i64
  %4 = getelementptr inbounds %class.omptarget_nvptx_ThreadPrivateContext, %class.omptarget_nvptx_ThreadPrivateContext* %0, i64 0, i32 4, i64 %3
  ret i64* %4
}

; Function Attrs: inlinehint norecurse nounwind
define internal void @_ZN28omptarget_nvptx_CounterGroup4InitERy(%class.omptarget_nvptx_CounterGroup*, i64* dereferenceable(8)) local_unnamed_addr #6 align 2 {
  %3 = getelementptr inbounds %class.omptarget_nvptx_CounterGroup, %class.omptarget_nvptx_CounterGroup* %0, i64 0, i32 1
  %4 = load volatile i64, i64* %3, align 8, !tbaa !29
  store i64 %4, i64* %1, align 8, !tbaa !44
  ret void
}

; Function Attrs: inlinehint norecurse nounwind
define internal %struct.__kmpc_data_sharing_slot* @_ZN25omptarget_nvptx_TeamDescr5RootSEib(%class.omptarget_nvptx_TeamDescr*, i32, i1 zeroext) local_unnamed_addr #6 align 2 {
  br i1 %2, label %4, label %15

; <label>:4:                                      ; preds = %3
  %5 = getelementptr inbounds %class.omptarget_nvptx_TeamDescr, %class.omptarget_nvptx_TeamDescr* %0, i64 0, i32 5, i64 0
  %6 = getelementptr inbounds %class.omptarget_nvptx_TeamDescr, %class.omptarget_nvptx_TeamDescr* %0, i64 0, i32 5, i64 0, i32 3
  %7 = load i8*, i8** %6, align 8, !tbaa !45
  %8 = getelementptr inbounds %class.omptarget_nvptx_TeamDescr, %class.omptarget_nvptx_TeamDescr* %0, i64 0, i32 5, i64 0, i32 4, i64 256
  %9 = icmp eq i8* %7, %8
  br i1 %9, label %27, label %10

; <label>:10:                                     ; preds = %4
  store i8* %8, i8** %6, align 8, !tbaa !45
  %11 = getelementptr inbounds %struct.__kmpc_data_sharing_master_slot_static, %struct.__kmpc_data_sharing_master_slot_static* %5, i64 0, i32 0
  store %struct.__kmpc_data_sharing_slot* null, %struct.__kmpc_data_sharing_slot** %11, align 16, !tbaa !47
  %12 = getelementptr inbounds %class.omptarget_nvptx_TeamDescr, %class.omptarget_nvptx_TeamDescr* %0, i64 0, i32 5, i64 0, i32 1
  store %struct.__kmpc_data_sharing_slot* null, %struct.__kmpc_data_sharing_slot** %12, align 8, !tbaa !48
  %13 = getelementptr inbounds %class.omptarget_nvptx_TeamDescr, %class.omptarget_nvptx_TeamDescr* %0, i64 0, i32 5, i64 0, i32 2
  store i8* null, i8** %13, align 16, !tbaa !49
  %14 = bitcast %struct.__kmpc_data_sharing_master_slot_static* %5 to %struct.__kmpc_data_sharing_slot*
  br label %27

; <label>:15:                                     ; preds = %3
  %16 = sext i32 %1 to i64
  %17 = getelementptr inbounds %class.omptarget_nvptx_TeamDescr, %class.omptarget_nvptx_TeamDescr* %0, i64 0, i32 4, i64 %16
  %18 = getelementptr inbounds %class.omptarget_nvptx_TeamDescr, %class.omptarget_nvptx_TeamDescr* %0, i64 0, i32 4, i64 %16, i32 3
  %19 = load i8*, i8** %18, align 8, !tbaa !17
  %20 = getelementptr inbounds %class.omptarget_nvptx_TeamDescr, %class.omptarget_nvptx_TeamDescr* %0, i64 0, i32 4, i64 %16, i32 4, i64 8192
  %21 = icmp eq i8* %19, %20
  br i1 %21, label %27, label %22

; <label>:22:                                     ; preds = %15
  %23 = bitcast %struct.__kmpc_data_sharing_worker_slot_static* %17 to %struct.__kmpc_data_sharing_slot*
  %24 = getelementptr inbounds %class.omptarget_nvptx_TeamDescr, %class.omptarget_nvptx_TeamDescr* %0, i64 0, i32 4, i64 %16, i32 2
  %25 = getelementptr inbounds %class.omptarget_nvptx_TeamDescr, %class.omptarget_nvptx_TeamDescr* %0, i64 0, i32 4, i64 %16, i32 1
  %26 = getelementptr inbounds %struct.__kmpc_data_sharing_worker_slot_static, %struct.__kmpc_data_sharing_worker_slot_static* %17, i64 0, i32 0
  store i8* %20, i8** %18, align 8, !tbaa !17
  store %struct.__kmpc_data_sharing_slot* null, %struct.__kmpc_data_sharing_slot** %26, align 16, !tbaa !19
  store %struct.__kmpc_data_sharing_slot* null, %struct.__kmpc_data_sharing_slot** %25, align 8, !tbaa !20
  store i8* null, i8** %24, align 16, !tbaa !21
  br label %27

; <label>:27:                                     ; preds = %15, %4, %22, %10
  %28 = phi %struct.__kmpc_data_sharing_slot* [ %14, %10 ], [ %23, %22 ], [ null, %4 ], [ null, %15 ]
  ret %struct.__kmpc_data_sharing_slot* %28
}

; Function Attrs: convergent inlinehint nounwind
define internal void @_ZN25omptarget_nvptx_TaskDescr22InitLevelZeroTaskDescrEv(%class.omptarget_nvptx_TaskDescr*) local_unnamed_addr #7 align 2 {
  %2 = getelementptr inbounds %class.omptarget_nvptx_TaskDescr, %class.omptarget_nvptx_TaskDescr* %0, i64 0, i32 1, i32 0
  store i8 0, i8* %2, align 8, !tbaa !33
  %3 = tail call i32 @_Z22GetNumberOfProcsInTeamv() #13
  %4 = trunc i32 %3 to i16
  %5 = getelementptr inbounds %class.omptarget_nvptx_TaskDescr, %class.omptarget_nvptx_TaskDescr* %0, i64 0, i32 1, i32 2
  store i16 %4, i16* %5, align 2, !tbaa !39
  %6 = getelementptr inbounds %class.omptarget_nvptx_TaskDescr, %class.omptarget_nvptx_TaskDescr* %0, i64 0, i32 1, i32 4
  store i16 0, i16* %6, align 2, !tbaa !40
  %7 = getelementptr inbounds %class.omptarget_nvptx_TaskDescr, %class.omptarget_nvptx_TaskDescr* %0, i64 0, i32 1, i32 5
  store i16 1, i16* %7, align 8, !tbaa !41
  %8 = getelementptr inbounds %class.omptarget_nvptx_TaskDescr, %class.omptarget_nvptx_TaskDescr* %0, i64 0, i32 1, i32 6
  store i64 1, i64* %8, align 8, !tbaa !42
  ret void
}

; Function Attrs: convergent inlinehint norecurse nounwind
define internal void @_ZN25omptarget_nvptx_WorkDescr13InitWorkDescrEv(%class.omptarget_nvptx_WorkDescr*) local_unnamed_addr #4 align 2 {
  %2 = getelementptr inbounds %class.omptarget_nvptx_WorkDescr, %class.omptarget_nvptx_WorkDescr* %0, i64 0, i32 0
  tail call void @_ZN28omptarget_nvptx_CounterGroup5ClearEv(%class.omptarget_nvptx_CounterGroup* %2) #12
  %3 = getelementptr inbounds %class.omptarget_nvptx_WorkDescr, %class.omptarget_nvptx_WorkDescr* %0, i64 0, i32 2
  store i8 0, i8* %3, align 8, !tbaa !50
  ret void
}

; Function Attrs: inlinehint norecurse nounwind
define internal void @_ZN28omptarget_nvptx_CounterGroup5ClearEv(%class.omptarget_nvptx_CounterGroup*) local_unnamed_addr #6 align 2 {
  %2 = getelementptr inbounds %class.omptarget_nvptx_CounterGroup, %class.omptarget_nvptx_CounterGroup* %0, i64 0, i32 0
  store i64 0, i64* %2, align 8, !tbaa !53
  %3 = getelementptr inbounds %class.omptarget_nvptx_CounterGroup, %class.omptarget_nvptx_CounterGroup* %0, i64 0, i32 1
  store volatile i64 0, i64* %3, align 8, !tbaa !29
  ret void
}

; Function Attrs: convergent inlinehint nounwind
define internal i32 @_Z22GetNumberOfProcsInTeamv() local_unnamed_addr #7 {
  %1 = tail call i32 @_Z24GetNumberOfProcsInDevicev() #13
  ret i32 %1
}

; Function Attrs: convergent inlinehint nounwind
define internal i32 @_Z24GetNumberOfProcsInDevicev() local_unnamed_addr #7 {
  %1 = tail call zeroext i1 @_Z13isGenericModev() #12
  br i1 %1, label %2, label %4

; <label>:2:                                      ; preds = %0
  %3 = tail call i32 @_Z24GetNumberOfWorkersInTeamv() #13
  br label %6

; <label>:4:                                      ; preds = %0
  %5 = tail call i32 @_Z25GetNumberOfThreadsInBlockv() #12
  br label %6

; <label>:6:                                      ; preds = %4, %2
  %7 = phi i32 [ %3, %2 ], [ %5, %4 ]
  ret i32 %7
}

; Function Attrs: convergent inlinehint nounwind
define internal i32 @_Z24GetNumberOfWorkersInTeamv() local_unnamed_addr #7 {
  %1 = tail call i32 @_Z17GetMasterThreadIDv() #12
  ret i32 %1
}

; Function Attrs: inlinehint norecurse nounwind
define internal dereferenceable(104) %class.omptarget_nvptx_WorkDescr* @_ZN25omptarget_nvptx_TeamDescr9WorkDescrEv(%class.omptarget_nvptx_TeamDescr*) local_unnamed_addr #6 align 2 {
  %2 = getelementptr inbounds %class.omptarget_nvptx_TeamDescr, %class.omptarget_nvptx_TeamDescr* %0, i64 0, i32 1
  ret %class.omptarget_nvptx_WorkDescr* %2
}

; Function Attrs: convergent inlinehint norecurse nounwind
define internal i32 @_ZN21omptarget_nvptx_QueueI36omptarget_nvptx_ThreadPrivateContextLj32EE14DEQUEUE_TICKETEv(%class.omptarget_nvptx_Queue*) local_unnamed_addr #4 align 2 {
  %2 = getelementptr inbounds %class.omptarget_nvptx_Queue, %class.omptarget_nvptx_Queue* %0, i64 0, i32 2
  %3 = tail call fastcc i32 @_ZL9atomicAddPjj(i32* nonnull %2, i32 1) #12
  ret i32 %3
}

; Function Attrs: inlinehint norecurse nounwind
define internal i32 @_ZN21omptarget_nvptx_QueueI36omptarget_nvptx_ThreadPrivateContextLj32EE2IDEj(%class.omptarget_nvptx_Queue*, i32) local_unnamed_addr #6 align 2 {
  %3 = lshr i32 %1, 5
  %4 = shl nuw nsw i32 %3, 1
  ret i32 %4
}

; Function Attrs: convergent inlinehint norecurse nounwind
define internal zeroext i1 @_ZN21omptarget_nvptx_QueueI36omptarget_nvptx_ThreadPrivateContextLj32EE9IsServingEjj(%class.omptarget_nvptx_Queue*, i32, i32) local_unnamed_addr #4 align 2 {
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds %class.omptarget_nvptx_Queue, %class.omptarget_nvptx_Queue* %0, i64 0, i32 3, i64 %4
  %6 = tail call fastcc i32 @_ZL9atomicAddPjj(i32* nonnull %5, i32 0) #12
  %7 = icmp eq i32 %6, %2
  ret i1 %7
}

; Function Attrs: convergent inlinehint norecurse nounwind
define internal %class.omptarget_nvptx_ThreadPrivateContext* @_ZN21omptarget_nvptx_QueueI36omptarget_nvptx_ThreadPrivateContextLj32EE10PopElementEj(%class.omptarget_nvptx_Queue*, i32) local_unnamed_addr #4 align 2 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %class.omptarget_nvptx_Queue, %class.omptarget_nvptx_Queue* %0, i64 0, i32 1, i64 %3
  %5 = bitcast %class.omptarget_nvptx_ThreadPrivateContext** %4 to i64*
  %6 = tail call fastcc i64 @_ZL9atomicAddPyy11(i64* nonnull %5) #12
  %7 = inttoptr i64 %6 to %class.omptarget_nvptx_ThreadPrivateContext*
  ret %class.omptarget_nvptx_ThreadPrivateContext* %7
}

; Function Attrs: convergent inlinehint norecurse nounwind
define internal void @_ZN21omptarget_nvptx_QueueI36omptarget_nvptx_ThreadPrivateContextLj32EE11DoneServingEjj(%class.omptarget_nvptx_Queue*, i32, i32) local_unnamed_addr #4 align 2 {
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds %class.omptarget_nvptx_Queue, %class.omptarget_nvptx_Queue* %0, i64 0, i32 3, i64 %4
  %6 = add i32 %2, 1
  %7 = and i32 %6, 33554431
  tail call fastcc void @_ZL10atomicExchPjj(i32* nonnull %5, i32 %7) #12
  ret void
}

; Function Attrs: inlinehint norecurse nounwind
define internal fastcc void @_ZL10atomicExchPjj(i32* nocapture, i32) unnamed_addr #6 {
  %3 = atomicrmw xchg i32* %0, i32 %1 seq_cst
  ret void
}

; Function Attrs: inlinehint norecurse nounwind
define internal fastcc i64 @_ZL9atomicAddPyy11(i64* nocapture) unnamed_addr #6 {
  %2 = atomicrmw add i64* %0, i64 0 seq_cst
  ret i64 %2
}

; Function Attrs: inlinehint norecurse nounwind
define internal fastcc i32 @_ZL9atomicAddPjj(i32* nocapture, i32) unnamed_addr #6 {
  %3 = atomicrmw add i32* %0, i32 %1 seq_cst
  ret i32 %3
}

; Function Attrs: convergent nounwind
define internal void @__kmpc_spmd_kernel_deinit() #2 {
  tail call void @llvm.nvvm.barrier0()
  %1 = tail call i32 @_Z18GetThreadIdInBlockv() #12
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %10

; <label>:3:                                      ; preds = %0
  %4 = tail call i32 @_Z4smidv() #13
  %5 = urem i32 %4, 56
  %6 = zext i32 %5 to i64
  %7 = getelementptr inbounds [56 x %class.omptarget_nvptx_Queue], [56 x %class.omptarget_nvptx_Queue] addrspace(1)* @omptarget_nvptx_device_State, i64 0, i64 %6
  %8 = addrspacecast %class.omptarget_nvptx_Queue addrspace(1)* %7 to %class.omptarget_nvptx_Queue*
  %9 = load %class.omptarget_nvptx_ThreadPrivateContext*, %class.omptarget_nvptx_ThreadPrivateContext** addrspacecast (%class.omptarget_nvptx_ThreadPrivateContext* addrspace(3)* @omptarget_nvptx_threadPrivateContext to %class.omptarget_nvptx_ThreadPrivateContext**), align 8, !tbaa !13
  tail call void @_ZN21omptarget_nvptx_QueueI36omptarget_nvptx_ThreadPrivateContextLj32EE7EnqueueEPS0_(%class.omptarget_nvptx_Queue* %8, %class.omptarget_nvptx_ThreadPrivateContext* %9) #13
  br label %10

; <label>:10:                                     ; preds = %3, %0
  ret void
}

; Function Attrs: convergent inlinehint norecurse nounwind
define internal void @_ZN21omptarget_nvptx_QueueI36omptarget_nvptx_ThreadPrivateContextLj32EE7EnqueueEPS0_(%class.omptarget_nvptx_Queue*, %class.omptarget_nvptx_ThreadPrivateContext*) local_unnamed_addr #4 align 2 {
  %3 = tail call i32 @_ZN21omptarget_nvptx_QueueI36omptarget_nvptx_ThreadPrivateContextLj32EE14ENQUEUE_TICKETEv(%class.omptarget_nvptx_Queue* %0) #13
  %4 = and i32 %3, 31
  %5 = tail call i32 @_ZN21omptarget_nvptx_QueueI36omptarget_nvptx_ThreadPrivateContextLj32EE2IDEj(%class.omptarget_nvptx_Queue* %0, i32 %3) #12
  %6 = add i32 %5, 1
  br label %7

; <label>:7:                                      ; preds = %7, %2
  %8 = tail call zeroext i1 @_ZN21omptarget_nvptx_QueueI36omptarget_nvptx_ThreadPrivateContextLj32EE9IsServingEjj(%class.omptarget_nvptx_Queue* %0, i32 %4, i32 %6) #13
  br i1 %8, label %9, label %7

; <label>:9:                                      ; preds = %7
  tail call void @_ZN21omptarget_nvptx_QueueI36omptarget_nvptx_ThreadPrivateContextLj32EE11PushElementEjPS0_(%class.omptarget_nvptx_Queue* %0, i32 %4, %class.omptarget_nvptx_ThreadPrivateContext* %1) #13
  tail call void @_ZN21omptarget_nvptx_QueueI36omptarget_nvptx_ThreadPrivateContextLj32EE11DoneServingEjj(%class.omptarget_nvptx_Queue* %0, i32 %4, i32 %6) #13
  ret void
}

; Function Attrs: convergent inlinehint norecurse nounwind
define internal i32 @_ZN21omptarget_nvptx_QueueI36omptarget_nvptx_ThreadPrivateContextLj32EE14ENQUEUE_TICKETEv(%class.omptarget_nvptx_Queue*) local_unnamed_addr #4 align 2 {
  %2 = getelementptr inbounds %class.omptarget_nvptx_Queue, %class.omptarget_nvptx_Queue* %0, i64 0, i32 4
  %3 = tail call fastcc i32 @_ZL9atomicAddPjj(i32* nonnull %2, i32 1) #12
  ret i32 %3
}

; Function Attrs: convergent inlinehint norecurse nounwind
define internal void @_ZN21omptarget_nvptx_QueueI36omptarget_nvptx_ThreadPrivateContextLj32EE11PushElementEjPS0_(%class.omptarget_nvptx_Queue*, i32, %class.omptarget_nvptx_ThreadPrivateContext*) local_unnamed_addr #4 align 2 {
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds %class.omptarget_nvptx_Queue, %class.omptarget_nvptx_Queue* %0, i64 0, i32 1, i64 %4
  %6 = bitcast %class.omptarget_nvptx_ThreadPrivateContext** %5 to i64*
  %7 = ptrtoint %class.omptarget_nvptx_ThreadPrivateContext* %2 to i64
  tail call fastcc void @_ZL10atomicExchPyy(i64* nonnull %6, i64 %7) #12
  ret void
}

; Function Attrs: inlinehint norecurse nounwind
define internal fastcc void @_ZL10atomicExchPyy(i64* nocapture, i64) unnamed_addr #6 {
  %3 = atomicrmw xchg i64* %0, i64 %1 seq_cst
  ret void
}

; Function Attrs: convergent nounwind
define internal i32 @__kmpc_global_thread_num(i8* nocapture readnone) #2 {
  %2 = tail call i32 @_Z25GetLogicalThreadIdInBlockv() #13
  ret i32 %2
}

attributes #0 = { noinline norecurse nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="sm_60" "target-features"="+ptx61,+sm_60" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { convergent nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="sm_60" "target-features"="+ptx61,+sm_60" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { convergent inlinehint norecurse nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="sm_60" "target-features"="+ptx61,+sm_60" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { inlinehint norecurse nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="sm_60" "target-features"="+ptx61,+sm_60" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { convergent inlinehint nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="sm_60" "target-features"="+ptx61,+sm_60" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { argmemonly nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { inlinehint nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="sm_60" "target-features"="+ptx61,+sm_60" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { norecurse nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="sm_60" "target-features"="+ptx61,+sm_60" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { convergent nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { nounwind }
attributes #13 = { convergent nounwind }
attributes #14 = { convergent nounwind readnone }

!omp_offload.info = !{!0}
!nvvm.annotations = !{!1, !2, !3, !2, !4, !4, !4, !4, !5, !5, !4, !2, !3, !2, !4, !4, !4, !4, !5, !5, !4, !2, !3, !2, !4, !4, !4, !4, !5, !5, !4, !2, !3, !2, !4, !4, !4, !4, !5, !5, !4, !2, !3, !2, !4, !4, !4, !4, !5, !5, !4, !2, !3, !2, !4, !4, !4, !4, !5, !5, !4, !2, !3, !2, !4, !4, !4, !4, !5, !5, !4, !2, !3, !2, !4, !4, !4, !4, !5, !5, !4, !2, !3, !2, !4, !4, !4, !4, !5, !5, !4, !2, !3, !2, !4, !4, !4, !4, !5, !5, !4, !2, !3, !2, !4, !4, !4, !4, !5, !5, !4}
!llvm.module.flags = !{!6, !7, !8}
!llvm.ident = !{!9, !9, !9, !9, !9, !9, !9, !9, !9, !9, !9}
!nvvm.internalize.after.link = !{}
!nvvmir.version = !{!10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10}

!0 = !{i32 0, i32 66306, i32 262153, !"axpy", i32 12, i32 0}
!1 = !{void (i64, i64, float*, i64, float*)* @__omp_offloading_10302_40009_axpy_l12, !"kernel", i32 1}
!2 = !{null, !"align", i32 8}
!3 = !{null, !"align", i32 8, !"align", i32 65544, !"align", i32 131080}
!4 = !{null, !"align", i32 16}
!5 = !{null, !"align", i32 16, !"align", i32 65552, !"align", i32 131088}
!6 = !{i32 1, !"wchar_size", i32 4}
!7 = !{i32 7, !"PIC Level", i32 2}
!8 = !{i32 4, !"nvvm-reflect-ftz", i32 0}
!9 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
!10 = !{i32 1, i32 4}
!11 = !{i32 1, i32 1025}
!12 = !{i32 0, i32 1024}
!13 = !{!14, !14, i64 0}
!14 = !{!"any pointer", !15, i64 0}
!15 = !{!"omnipotent char", !16, i64 0}
!16 = !{!"Simple C++ TBAA"}
!17 = !{!18, !14, i64 24}
!18 = !{!"_ZTS38__kmpc_data_sharing_worker_slot_static", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !15, i64 32}
!19 = !{!18, !14, i64 0}
!20 = !{!18, !14, i64 8}
!21 = !{!18, !14, i64 16}
!22 = !{!23, !23, i64 0}
!23 = !{!"int", !15, i64 0}
!24 = !{!25, !25, i64 0}
!25 = !{!"short", !15, i64 0}
!26 = !{i32 1, i32 -2147483648}
!27 = !{i32 0, i32 2147483647}
!28 = !{i32 1586}
!29 = !{!30, !31, i64 8}
!30 = !{!"_ZTS28omptarget_nvptx_CounterGroup", !31, i64 0, !31, i64 8, !31, i64 16}
!31 = !{!"long long", !15, i64 0}
!32 = !{!30, !31, i64 16}
!33 = !{!34, !15, i64 40}
!34 = !{!"_ZTS25omptarget_nvptx_TaskDescr", !35, i64 0, !38, i64 40, !14, i64 64}
!35 = !{!"_ZTSN25omptarget_nvptx_TaskDescr20SavedLoopDescr_itemsE", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32}
!36 = !{!"long", !15, i64 0}
!37 = !{!"_ZTS11kmp_sched_t", !15, i64 0}
!38 = !{!"_ZTSN25omptarget_nvptx_TaskDescr15TaskDescr_itemsE", !15, i64 0, !15, i64 1, !25, i64 2, !25, i64 4, !25, i64 6, !25, i64 8, !36, i64 16}
!39 = !{!34, !25, i64 42}
!40 = !{!34, !25, i64 46}
!41 = !{!34, !25, i64 48}
!42 = !{!34, !36, i64 56}
!43 = !{!34, !14, i64 64}
!44 = !{!31, !31, i64 0}
!45 = !{!46, !14, i64 24}
!46 = !{!"_ZTS38__kmpc_data_sharing_master_slot_static", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !15, i64 32}
!47 = !{!46, !14, i64 0}
!48 = !{!46, !14, i64 8}
!49 = !{!46, !14, i64 16}
!50 = !{!51, !52, i64 96}
!51 = !{!"_ZTS25omptarget_nvptx_WorkDescr", !30, i64 0, !34, i64 24, !52, i64 96}
!52 = !{!"bool", !15, i64 0}
!53 = !{!30, !31, i64 0}

; __CLANG_OFFLOAD_BUNDLE____END__ openmp-nvptx64-nvidia-cuda

; __CLANG_OFFLOAD_BUNDLE____START__ host-x86_64-unknown-linux-gnu
; ModuleID = '/tmp/omp-axpy-0b9147.bc'
source_filename = "omp-axpy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }
%struct.__tgt_offload_entry = type { i8*, i8*, i64, i32, i32 }
%struct.__tgt_device_image = type { i8*, i8*, %struct.__tgt_offload_entry*, %struct.__tgt_offload_entry* }
%struct.__tgt_bin_desc = type { i32, %struct.__tgt_device_image*, %struct.__tgt_offload_entry*, %struct.__tgt_offload_entry* }

$.omp_offloading.descriptor_reg = comdat any

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"this a tset: %f %f\0A\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@.__omp_offloading_10302_40009_axpy_l12.region_id = weak constant i8 0
@.offload_maptypes = private unnamed_addr constant [5 x i64] [i64 800, i64 800, i64 35, i64 800, i64 33]
@.str.2 = private unnamed_addr constant [15 x i8] c"this is Y: %f\0A\00", align 1
@.omp_offloading.entry_name = internal unnamed_addr constant [38 x i8] c"__omp_offloading_10302_40009_axpy_l12\00"
@.omp_offloading.entry.__omp_offloading_10302_40009_axpy_l12 = weak constant %struct.__tgt_offload_entry { i8* @.__omp_offloading_10302_40009_axpy_l12.region_id, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.omp_offloading.entry_name, i32 0, i32 0), i64 0, i32 0, i32 0 }, section ".omp_offloading.entries", align 1
@.omp_offloading.entries_begin = external constant %struct.__tgt_offload_entry
@.omp_offloading.entries_end = external constant %struct.__tgt_offload_entry
@.omp_offloading.img_start.nvptx64-nvidia-cuda = extern_weak constant i8
@.omp_offloading.img_end.nvptx64-nvidia-cuda = extern_weak constant i8
@.omp_offloading.device_images = internal unnamed_addr constant [1 x %struct.__tgt_device_image] [%struct.__tgt_device_image { i8* @.omp_offloading.img_start.nvptx64-nvidia-cuda, i8* @.omp_offloading.img_end.nvptx64-nvidia-cuda, %struct.__tgt_offload_entry* @.omp_offloading.entries_begin, %struct.__tgt_offload_entry* @.omp_offloading.entries_end }], comdat($.omp_offloading.descriptor_reg), align 8
@.omp_offloading.descriptor = internal constant %struct.__tgt_bin_desc { i32 1, %struct.__tgt_device_image* getelementptr inbounds ([1 x %struct.__tgt_device_image], [1 x %struct.__tgt_device_image]* @.omp_offloading.device_images, i32 0, i32 0), %struct.__tgt_offload_entry* @.omp_offloading.entries_begin, %struct.__tgt_offload_entry* @.omp_offloading.entries_end }, comdat($.omp_offloading.descriptor_reg), align 8
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 0, void ()* @.omp_offloading.descriptor_reg, i8* bitcast (void ()* @.omp_offloading.descriptor_reg to i8*) }]

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @axpy(i32, float*, float*, float) #0 {
  %5 = alloca i32, align 4
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca float, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca [5 x i8*], align 8
  %15 = alloca [5 x i8*], align 8
  %16 = alloca [5 x i64], align 8
  store i32 %0, i32* %5, align 4
  store float* %1, float** %6, align 8
  store float* %2, float** %7, align 8
  store float %3, float* %8, align 4
  %17 = load i32, i32* %9, align 4
  %18 = bitcast i64* %11 to i32*
  store i32 %17, i32* %18, align 4
  %19 = load i64, i64* %11, align 8
  %20 = load i32, i32* %5, align 4
  %21 = bitcast i64* %12 to i32*
  store i32 %20, i32* %21, align 4
  %22 = load i64, i64* %12, align 8
  %23 = load float*, float** %6, align 8
  %24 = load float, float* %8, align 4
  %25 = bitcast i64* %13 to float*
  store float %24, float* %25, align 4
  %26 = load i64, i64* %13, align 8
  %27 = load float*, float** %7, align 8
  %28 = load float*, float** %6, align 8
  %29 = load float*, float** %6, align 8
  %30 = getelementptr inbounds float, float* %29, i64 0
  %31 = load i32, i32* %5, align 4
  %32 = zext i32 %31 to i64
  %33 = mul nuw i64 %32, 4
  %34 = load float*, float** %7, align 8
  %35 = load float*, float** %7, align 8
  %36 = getelementptr inbounds float, float* %35, i64 0
  %37 = load i32, i32* %5, align 4
  %38 = zext i32 %37 to i64
  %39 = mul nuw i64 %38, 4
  %40 = getelementptr inbounds [5 x i8*], [5 x i8*]* %14, i32 0, i32 0
  %41 = bitcast i8** %40 to i64*
  store i64 %19, i64* %41, align 8
  %42 = getelementptr inbounds [5 x i8*], [5 x i8*]* %15, i32 0, i32 0
  %43 = bitcast i8** %42 to i64*
  store i64 %19, i64* %43, align 8
  %44 = getelementptr inbounds [5 x i64], [5 x i64]* %16, i32 0, i32 0
  store i64 4, i64* %44, align 8
  %45 = getelementptr inbounds [5 x i8*], [5 x i8*]* %14, i32 0, i32 1
  %46 = bitcast i8** %45 to i64*
  store i64 %22, i64* %46, align 8
  %47 = getelementptr inbounds [5 x i8*], [5 x i8*]* %15, i32 0, i32 1
  %48 = bitcast i8** %47 to i64*
  store i64 %22, i64* %48, align 8
  %49 = getelementptr inbounds [5 x i64], [5 x i64]* %16, i32 0, i32 1
  store i64 4, i64* %49, align 8
  %50 = getelementptr inbounds [5 x i8*], [5 x i8*]* %14, i32 0, i32 2
  %51 = bitcast i8** %50 to float**
  store float* %28, float** %51, align 8
  %52 = getelementptr inbounds [5 x i8*], [5 x i8*]* %15, i32 0, i32 2
  %53 = bitcast i8** %52 to float**
  store float* %30, float** %53, align 8
  %54 = getelementptr inbounds [5 x i64], [5 x i64]* %16, i32 0, i32 2
  store i64 %33, i64* %54, align 8
  %55 = getelementptr inbounds [5 x i8*], [5 x i8*]* %14, i32 0, i32 3
  %56 = bitcast i8** %55 to i64*
  store i64 %26, i64* %56, align 8
  %57 = getelementptr inbounds [5 x i8*], [5 x i8*]* %15, i32 0, i32 3
  %58 = bitcast i8** %57 to i64*
  store i64 %26, i64* %58, align 8
  %59 = getelementptr inbounds [5 x i64], [5 x i64]* %16, i32 0, i32 3
  store i64 4, i64* %59, align 8
  %60 = getelementptr inbounds [5 x i8*], [5 x i8*]* %14, i32 0, i32 4
  %61 = bitcast i8** %60 to float**
  store float* %34, float** %61, align 8
  %62 = getelementptr inbounds [5 x i8*], [5 x i8*]* %15, i32 0, i32 4
  %63 = bitcast i8** %62 to float**
  store float* %36, float** %63, align 8
  %64 = getelementptr inbounds [5 x i64], [5 x i64]* %16, i32 0, i32 4
  store i64 %39, i64* %64, align 8
  %65 = getelementptr inbounds [5 x i8*], [5 x i8*]* %14, i32 0, i32 0
  %66 = getelementptr inbounds [5 x i8*], [5 x i8*]* %15, i32 0, i32 0
  %67 = getelementptr inbounds [5 x i64], [5 x i64]* %16, i32 0, i32 0
  %68 = call i32 @__tgt_target(i64 -1, i8* @.__omp_offloading_10302_40009_axpy_l12.region_id, i32 5, i8** %65, i8** %66, i64* %67, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @.offload_maptypes, i32 0, i32 0))
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

; <label>:70:                                     ; preds = %4
  call void @__omp_offloading_10302_40009_axpy_l12(i64 %19, i64 %22, float* %23, i64 %26, float* %27) #3
  br label %71

; <label>:71:                                     ; preds = %70, %4
  ret void
}

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @__omp_offloading_10302_40009_axpy_l12(i64, i64, float*, i64, float*) #1 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca float*, align 8
  %9 = alloca i64, align 8
  %10 = alloca float*, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store float* %2, float** %8, align 8
  store i64 %3, i64* %9, align 8
  store float* %4, float** %10, align 8
  %11 = bitcast i64* %6 to i32*
  %12 = bitcast i64* %7 to i32*
  %13 = bitcast i64* %9 to float*
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @1, i32 5, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*, float**, float*, float**)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %11, i32* %12, float** %8, float* %13, float** %10)
  ret void
}

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias, i32* noalias, i32* dereferenceable(4), i32* dereferenceable(4), float** dereferenceable(8), float* dereferenceable(4), float** dereferenceable(8)) #1 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca float**, align 8
  %13 = alloca float*, align 8
  %14 = alloca float**, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store float** %4, float*** %12, align 8
  store float* %5, float** %13, align 8
  store float** %6, float*** %14, align 8
  %25 = load i32*, i32** %10, align 8
  %26 = load i32*, i32** %11, align 8
  %27 = load float**, float*** %12, align 8
  %28 = load float*, float** %13, align 8
  %29 = load float**, float*** %14, align 8
  %30 = load i32, i32* %26, align 4
  store i32 %30, i32* %17, align 4
  %31 = load i32, i32* %17, align 4
  %32 = sub nsw i32 %31, 0
  %33 = sub nsw i32 %32, 1
  %34 = add nsw i32 %33, 1
  %35 = sdiv i32 %34, 1
  %36 = sub nsw i32 %35, 1
  store i32 %36, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %37 = load i32, i32* %17, align 4
  %38 = icmp slt i32 0, %37
  br i1 %38, label %39, label %95

; <label>:39:                                     ; preds = %7
  store i32 0, i32* %20, align 4
  %40 = load i32, i32* %18, align 4
  store i32 %40, i32* %21, align 4
  store i32 1, i32* %22, align 4
  store i32 0, i32* %23, align 4
  %41 = load i32*, i32** %8, align 8
  %42 = load i32, i32* %41, align 4
  call void @__kmpc_for_static_init_4(%struct.ident_t* @0, i32 %42, i32 34, i32* %23, i32* %20, i32* %21, i32* %22, i32 1, i32 1)
  %43 = load i32, i32* %21, align 4
  %44 = load i32, i32* %18, align 4
  %45 = icmp sgt i32 %43, %44
  br i1 %45, label %46, label %48

; <label>:46:                                     ; preds = %39
  %47 = load i32, i32* %18, align 4
  br label %50

; <label>:48:                                     ; preds = %39
  %49 = load i32, i32* %21, align 4
  br label %50

; <label>:50:                                     ; preds = %48, %46
  %51 = phi i32 [ %47, %46 ], [ %49, %48 ]
  store i32 %51, i32* %21, align 4
  %52 = load i32, i32* %20, align 4
  store i32 %52, i32* %15, align 4
  br label %53

; <label>:53:                                     ; preds = %88, %50
  %54 = load i32, i32* %15, align 4
  %55 = load i32, i32* %21, align 4
  %56 = icmp sle i32 %54, %55
  br i1 %56, label %57, label %91

; <label>:57:                                     ; preds = %53
  %58 = load i32, i32* %15, align 4
  %59 = mul nsw i32 %58, 1
  %60 = add nsw i32 0, %59
  store i32 %60, i32* %24, align 4
  %61 = load float, float* %28, align 4
  %62 = load float*, float** %29, align 8
  %63 = load i32, i32* %24, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds float, float* %62, i64 %64
  %66 = load float, float* %65, align 4
  %67 = fmul float %61, %66
  %68 = load float*, float** %27, align 8
  %69 = load i32, i32* %24, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds float, float* %68, i64 %70
  %72 = load float, float* %71, align 4
  %73 = fadd float %72, %67
  store float %73, float* %71, align 4
  %74 = load float*, float** %29, align 8
  %75 = load i32, i32* %24, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds float, float* %74, i64 %76
  %78 = load float, float* %77, align 4
  %79 = fpext float %78 to double
  %80 = load float*, float** %27, align 8
  %81 = load i32, i32* %24, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds float, float* %80, i64 %82
  %84 = load float, float* %83, align 4
  %85 = fpext float %84 to double
  %86 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), double %79, double %85)
  br label %87

; <label>:87:                                     ; preds = %57
  br label %88

; <label>:88:                                     ; preds = %87
  %89 = load i32, i32* %15, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %15, align 4
  br label %53

; <label>:91:                                     ; preds = %53
  br label %92

; <label>:92:                                     ; preds = %91
  %93 = load i32*, i32** %8, align 8
  %94 = load i32, i32* %93, align 4
  call void @__kmpc_for_static_fini(%struct.ident_t* @0, i32 %94)
  br label %95

; <label>:95:                                     ; preds = %92, %7
  ret void
}

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

declare dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

declare dso_local i32 @__tgt_target(i64, i8*, i32, i8**, i8**, i64*, i64*)

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32, i8**) #0 {
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

; <label>:20:                                     ; preds = %47, %2
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %50

; <label>:24:                                     ; preds = %20
  %25 = call i32 @rand() #3
  %26 = sitofp i32 %25 to float
  %27 = fdiv float %26, 1.000000e+01
  %28 = load float, float* %10, align 4
  %29 = fmul float %27, %28
  %30 = load i32, i32* %11, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds float, float* %16, i64 %31
  store float %29, float* %32, align 4
  %33 = call i32 @rand() #3
  %34 = sitofp i32 %33 to float
  %35 = fdiv float %34, 1.000000e+01
  %36 = load float, float* %10, align 4
  %37 = fmul float %35, %36
  %38 = load i32, i32* %11, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds float, float* %19, i64 %39
  store float %37, float* %40, align 4
  %41 = load i32, i32* %11, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds float, float* %16, i64 %42
  %44 = load float, float* %43, align 4
  %45 = fpext float %44 to double
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), double %45)
  br label %47

; <label>:47:                                     ; preds = %24
  %48 = load i32, i32* %11, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %11, align 4
  br label %20

; <label>:50:                                     ; preds = %20
  store float 5.000000e-01, float* %12, align 4
  %51 = load i32, i32* %6, align 4
  %52 = getelementptr inbounds float, float* %16, i64 0
  %53 = getelementptr inbounds float, float* %19, i64 0
  %54 = load float, float* %12, align 4
  call void @axpy(i32 %51, float* %52, float* %53, float %54)
  store i32 0, i32* %3, align 4
  %55 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %55)
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

; Function Attrs: nounwind
declare dso_local i32 @rand() #4

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

; Function Attrs: noinline nounwind uwtable
define internal void @.omp_offloading.descriptor_unreg(i8*) #5 section ".text.startup" comdat($.omp_offloading.descriptor_reg) {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = call i32 @__tgt_unregister_lib(%struct.__tgt_bin_desc* @.omp_offloading.descriptor)
  ret void
}

declare dso_local i32 @__tgt_unregister_lib(%struct.__tgt_bin_desc*)

; Function Attrs: noinline nounwind uwtable
define linkonce hidden void @.omp_offloading.descriptor_reg() #5 section ".text.startup" comdat {
  %1 = call i32 @__tgt_register_lib(%struct.__tgt_bin_desc* @.omp_offloading.descriptor)
  %2 = call i32 @__cxa_atexit(void (i8*)* @.omp_offloading.descriptor_unreg, i8* bitcast (%struct.__tgt_bin_desc* @.omp_offloading.descriptor to i8*), i8* @__dso_handle) #3
  ret void
}

declare dso_local i32 @__tgt_register_lib(%struct.__tgt_bin_desc*)

; Function Attrs: nounwind
declare dso_local i32 @__cxa_atexit(void (i8*)*, i8*, i8*) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noinline norecurse nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!omp_offload.info = !{!0}
!llvm.module.flags = !{!1}
!llvm.ident = !{!2}

!0 = !{i32 0, i32 66306, i32 262153, !"axpy", i32 12, i32 0}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}

; __CLANG_OFFLOAD_BUNDLE____END__ host-x86_64-unknown-linux-gnu
