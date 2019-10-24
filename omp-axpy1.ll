
; __CLANG_OFFLOAD_BUNDLE____START__ openmp-nvptx64-nvidia-cuda
; ModuleID = 'omp-axpy1.c'
source_filename = "omp-axpy1.c"
target datalayout = "e-i64:64-i128:128-v16:16-v32:32-n16:32:64"
target triple = "nvptx64-nvidia-cuda"

%struct.ident_t = type { i32, i32, i32, i32, i8* }
%class.omptarget_nvptx_SharedArgs = type <{ [20 x i8*], i8**, i32, [4 x i8] }>
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

@.str = private unnamed_addr constant [20 x i8] c"this a tset: %f %f\0A\00", align 1
@.str1 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str1, i32 0, i32 0) }, align 8
@__omp_offloading_10302_40005_axpy_l12_exec_mode = weak constant i8 1
@llvm.compiler.used = appending global [1 x i8*] [i8* @__omp_offloading_10302_40005_axpy_l12_exec_mode], section "llvm.metadata"
@omptarget_nvptx_globalArgs = external dso_local addrspace(3) global %class.omptarget_nvptx_SharedArgs, align 8
@omptarget_nvptx_threadPrivateContext = external dso_local local_unnamed_addr addrspace(3) global %class.omptarget_nvptx_ThreadPrivateContext*, align 8
@DataSharingState = external dso_local addrspace(3) global %struct.DataSharingStateTy, align 8
@omptarget_nvptx_device_State = external dso_local addrspace(1) global [56 x %class.omptarget_nvptx_Queue], align 16
@execution_param = external dso_local local_unnamed_addr addrspace(3) global i32, align 4
@omptarget_nvptx_workFn = external dso_local addrspace(3) global i8*, align 8

; Function Attrs: noinline norecurse nounwind
define internal void @__omp_offloading_10302_40005_axpy_l12_worker() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8, align 1
  %3 = call i32 bitcast (i32 (i8*)* @__kmpc_global_thread_num to i32 (%struct.ident_t*)*)(%struct.ident_t* @0)
  store i8* null, i8** %1, align 8
  store i8 0, i8* %2, align 1
  br label %4

; <label>:4:                                      ; preds = %15, %0
  call void @llvm.nvvm.barrier0()
  %5 = call i1 @__kmpc_kernel_parallel(i8** %1, i16 1)
  %6 = zext i1 %5 to i8
  store i8 %6, i8* %2, align 1
  %7 = load i8*, i8** %1, align 8
  %8 = icmp eq i8* %7, null
  br i1 %8, label %16, label %9

; <label>:9:                                      ; preds = %4
  %10 = load i8, i8* %2, align 1
  %11 = icmp ne i8 %10, 0
  br i1 %11, label %12, label %15

; <label>:12:                                     ; preds = %9
  %13 = bitcast i8* %7 to void (i16, i32)*
  call void %13(i16 0, i32 %3)
  br label %14

; <label>:14:                                     ; preds = %12
  call void @__kmpc_kernel_end_parallel()
  br label %15

; <label>:15:                                     ; preds = %14, %9
  call void @llvm.nvvm.barrier0()
  br label %4

; <label>:16:                                     ; preds = %4
  ret void
}

; Function Attrs: noinline norecurse nounwind optnone
define weak void @__omp_offloading_10302_40005_axpy_l12(i64, i64, float*, i64, float*) #1 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca float*, align 8
  %9 = alloca i64, align 8
  %10 = alloca float*, align 8
  %11 = alloca %printf_args.5
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store float* %2, float** %8, align 8
  store i64 %3, i64* %9, align 8
  store float* %4, float** %10, align 8
  %12 = bitcast i64* %6 to i32*
  %13 = bitcast i64* %7 to i32*
  %14 = bitcast i64* %9 to float*
  %15 = call i32 @llvm.nvvm.read.ptx.sreg.warpsize(), !range !11
  %16 = call i32 @llvm.nvvm.read.ptx.sreg.ntid.x(), !range !12
  %17 = sub nuw i32 %16, %15
  %18 = call i32 @llvm.nvvm.read.ptx.sreg.tid.x(), !range !13
  %19 = icmp ult i32 %18, %17
  br i1 %19, label %20, label %21

; <label>:20:                                     ; preds = %5
  call void @__omp_offloading_10302_40005_axpy_l12_worker() #11
  br label %73

; <label>:21:                                     ; preds = %5
  %22 = call i32 @llvm.nvvm.read.ptx.sreg.ntid.x(), !range !12
  %23 = call i32 @llvm.nvvm.read.ptx.sreg.warpsize(), !range !11
  %24 = sub nuw i32 %23, 1
  %25 = xor i32 %24, -1
  %26 = sub nuw i32 %22, 1
  %27 = and i32 %26, %25
  %28 = call i32 @llvm.nvvm.read.ptx.sreg.tid.x(), !range !13
  %29 = icmp eq i32 %28, %27
  br i1 %29, label %30, label %73

; <label>:30:                                     ; preds = %21
  %31 = call i32 @llvm.nvvm.read.ptx.sreg.warpsize(), !range !11
  %32 = call i32 @llvm.nvvm.read.ptx.sreg.ntid.x(), !range !12
  %33 = sub nuw i32 %32, %31
  call void @__kmpc_kernel_init(i32 %33, i16 1)
  call void @__kmpc_data_sharing_init_stack()
  store i32 0, i32* %12, align 8
  br label %34

; <label>:34:                                     ; preds = %68, %30
  %35 = load i32, i32* %12, align 8
  %36 = load i32, i32* %13, align 8
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %71

; <label>:38:                                     ; preds = %34
  %39 = load float, float* %14, align 8
  %40 = load float*, float** %10, align 8
  %41 = load i32, i32* %12, align 8
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds float, float* %40, i64 %42
  %44 = load float, float* %43, align 4
  %45 = fmul float %39, %44
  %46 = load float*, float** %8, align 8
  %47 = load i32, i32* %12, align 8
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds float, float* %46, i64 %48
  %50 = load float, float* %49, align 4
  %51 = fadd float %50, %45
  store float %51, float* %49, align 4
  %52 = load float*, float** %10, align 8
  %53 = load i32, i32* %12, align 8
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds float, float* %52, i64 %54
  %56 = load float, float* %55, align 4
  %57 = fpext float %56 to double
  %58 = load float*, float** %8, align 8
  %59 = load i32, i32* %12, align 8
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds float, float* %58, i64 %60
  %62 = load float, float* %61, align 4
  %63 = fpext float %62 to double
  %64 = getelementptr inbounds %printf_args.5, %printf_args.5* %11, i32 0, i32 0
  store double %57, double* %64, align 8
  %65 = getelementptr inbounds %printf_args.5, %printf_args.5* %11, i32 0, i32 1
  store double %63, double* %65, align 8
  %66 = bitcast %printf_args.5* %11 to i8*
  %67 = call i32 @vprintf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i8* %66)
  br label %68

; <label>:68:                                     ; preds = %38
  %69 = load i32, i32* %12, align 8
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %12, align 8
  br label %34

; <label>:71:                                     ; preds = %34
  br label %72

; <label>:72:                                     ; preds = %71
  call void @__kmpc_kernel_deinit(i16 1)
  call void @llvm.nvvm.barrier0()
  br label %73

; <label>:73:                                     ; preds = %72, %21, %20
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @llvm.nvvm.read.ptx.sreg.warpsize() #2

; Function Attrs: nounwind readnone
declare i32 @llvm.nvvm.read.ptx.sreg.ntid.x() #2

; Function Attrs: nounwind readnone
declare i32 @llvm.nvvm.read.ptx.sreg.tid.x() #2

declare i32 @vprintf(i8*, i8*)

; Function Attrs: convergent nounwind
declare void @llvm.nvvm.barrier0() #3

; Function Attrs: convergent norecurse nounwind
define internal void @__kmpc_data_sharing_init_stack() #4 {
  tail call void @_Z30data_sharing_init_stack_commonv() #3
  tail call void @_ZN26omptarget_nvptx_SharedArgs4InitEv(%class.omptarget_nvptx_SharedArgs* addrspacecast (%class.omptarget_nvptx_SharedArgs addrspace(3)* @omptarget_nvptx_globalArgs to %class.omptarget_nvptx_SharedArgs*)) #11
  ret void
}

; Function Attrs: convergent inlinehint norecurse nounwind
define internal void @_Z30data_sharing_init_stack_commonv() local_unnamed_addr #5 {
  %1 = load %class.omptarget_nvptx_ThreadPrivateContext*, %class.omptarget_nvptx_ThreadPrivateContext** addrspacecast (%class.omptarget_nvptx_ThreadPrivateContext* addrspace(3)* @omptarget_nvptx_threadPrivateContext to %class.omptarget_nvptx_ThreadPrivateContext**), align 8, !tbaa !14
  %2 = tail call dereferenceable(263648) %class.omptarget_nvptx_TeamDescr* @_ZN36omptarget_nvptx_ThreadPrivateContext11TeamContextEv(%class.omptarget_nvptx_ThreadPrivateContext* %1) #11
  br label %4

; <label>:3:                                      ; preds = %4
  ret void

; <label>:4:                                      ; preds = %4, %0
  %5 = phi i32 [ 0, %0 ], [ %11, %4 ]
  %6 = tail call %struct.__kmpc_data_sharing_slot* @_ZN25omptarget_nvptx_TeamDescr23GetPreallocatedSlotAddrEi(%class.omptarget_nvptx_TeamDescr* nonnull %2, i32 %5) #11
  %7 = zext i32 %5 to i64
  %8 = getelementptr %struct.DataSharingStateTy, %struct.DataSharingStateTy* addrspacecast (%struct.DataSharingStateTy addrspace(3)* @DataSharingState to %struct.DataSharingStateTy*), i64 0, i32 0, i64 %7
  store %struct.__kmpc_data_sharing_slot* %6, %struct.__kmpc_data_sharing_slot** %8, align 8, !tbaa !14
  %9 = getelementptr inbounds %struct.__kmpc_data_sharing_slot, %struct.__kmpc_data_sharing_slot* %6, i64 0, i32 4, i64 0
  %10 = getelementptr %struct.DataSharingStateTy, %struct.DataSharingStateTy* addrspacecast (%struct.DataSharingStateTy addrspace(3)* @DataSharingState to %struct.DataSharingStateTy*), i64 0, i32 1, i64 %7
  store i8* %9, i8** %10, align 8, !tbaa !14
  %11 = add nuw nsw i32 %5, 1
  %12 = icmp eq i32 %11, 32
  br i1 %12, label %3, label %4
}

; Function Attrs: inlinehint norecurse nounwind
define internal void @_ZN26omptarget_nvptx_SharedArgs4InitEv(%class.omptarget_nvptx_SharedArgs*) local_unnamed_addr #6 align 2 {
  %2 = getelementptr inbounds %class.omptarget_nvptx_SharedArgs, %class.omptarget_nvptx_SharedArgs* %0, i64 0, i32 0, i64 0
  %3 = getelementptr inbounds %class.omptarget_nvptx_SharedArgs, %class.omptarget_nvptx_SharedArgs* %0, i64 0, i32 1
  store i8** %2, i8*** %3, align 8, !tbaa !18
  %4 = getelementptr inbounds %class.omptarget_nvptx_SharedArgs, %class.omptarget_nvptx_SharedArgs* %0, i64 0, i32 2
  store i32 20, i32* %4, align 8, !tbaa !21
  ret void
}

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
  store i8* %5, i8** %6, align 8, !tbaa !22
  %7 = getelementptr inbounds %struct.__kmpc_data_sharing_worker_slot_static, %struct.__kmpc_data_sharing_worker_slot_static* %4, i64 0, i32 0
  store %struct.__kmpc_data_sharing_slot* null, %struct.__kmpc_data_sharing_slot** %7, align 16, !tbaa !24
  %8 = getelementptr inbounds %class.omptarget_nvptx_TeamDescr, %class.omptarget_nvptx_TeamDescr* %0, i64 0, i32 4, i64 %3, i32 1
  store %struct.__kmpc_data_sharing_slot* null, %struct.__kmpc_data_sharing_slot** %8, align 8, !tbaa !25
  %9 = getelementptr inbounds %class.omptarget_nvptx_TeamDescr, %class.omptarget_nvptx_TeamDescr* %0, i64 0, i32 4, i64 %3, i32 2
  store i8* null, i8** %9, align 16, !tbaa !26
  %10 = bitcast %struct.__kmpc_data_sharing_worker_slot_static* %4 to %struct.__kmpc_data_sharing_slot*
  ret %struct.__kmpc_data_sharing_slot* %10
}

; Function Attrs: convergent nounwind
define internal void @__kmpc_kernel_init(i32, i16 signext) #7 {
  %3 = icmp eq i16 %1, 0
  br i1 %3, label %4, label %5

; <label>:4:                                      ; preds = %2
  tail call void @_Z22setExecutionParameters13ExecutionMode11RuntimeMode(i32 0, i32 2) #11
  br label %25

; <label>:5:                                      ; preds = %2
  tail call void @_Z22setExecutionParameters13ExecutionMode11RuntimeMode(i32 0, i32 0) #11
  %6 = tail call i32 @_Z18GetThreadIdInBlockv() #11
  %7 = tail call i32 @_Z4smidv() #3
  %8 = urem i32 %7, 56
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds [56 x %class.omptarget_nvptx_Queue], [56 x %class.omptarget_nvptx_Queue] addrspace(1)* @omptarget_nvptx_device_State, i64 0, i64 %9
  %11 = addrspacecast %class.omptarget_nvptx_Queue addrspace(1)* %10 to %class.omptarget_nvptx_Queue*
  %12 = tail call %class.omptarget_nvptx_ThreadPrivateContext* @_ZN21omptarget_nvptx_QueueI36omptarget_nvptx_ThreadPrivateContextLj32EE7DequeueEv(%class.omptarget_nvptx_Queue* %11) #3
  store %class.omptarget_nvptx_ThreadPrivateContext* %12, %class.omptarget_nvptx_ThreadPrivateContext** addrspacecast (%class.omptarget_nvptx_ThreadPrivateContext* addrspace(3)* @omptarget_nvptx_threadPrivateContext to %class.omptarget_nvptx_ThreadPrivateContext**), align 8, !tbaa !14
  %13 = tail call i32 @_Z25GetLogicalThreadIdInBlockv() #3
  %14 = load %class.omptarget_nvptx_ThreadPrivateContext*, %class.omptarget_nvptx_ThreadPrivateContext** addrspacecast (%class.omptarget_nvptx_ThreadPrivateContext* addrspace(3)* @omptarget_nvptx_threadPrivateContext to %class.omptarget_nvptx_ThreadPrivateContext**), align 8, !tbaa !14
  tail call void @_ZN36omptarget_nvptx_ThreadPrivateContext24InitThreadPrivateContextEi(%class.omptarget_nvptx_ThreadPrivateContext* %14, i32 %13) #11
  %15 = tail call dereferenceable(263648) %class.omptarget_nvptx_TeamDescr* @_Z19getMyTeamDescriptorv() #3
  tail call void @_ZN25omptarget_nvptx_TeamDescr13InitTeamDescrEv(%class.omptarget_nvptx_TeamDescr* nonnull %15) #3
  %16 = load %class.omptarget_nvptx_ThreadPrivateContext*, %class.omptarget_nvptx_ThreadPrivateContext** addrspacecast (%class.omptarget_nvptx_ThreadPrivateContext* addrspace(3)* @omptarget_nvptx_threadPrivateContext to %class.omptarget_nvptx_ThreadPrivateContext**), align 8, !tbaa !14
  %17 = tail call %class.omptarget_nvptx_TaskDescr* @_ZN25omptarget_nvptx_TeamDescr18LevelZeroTaskDescrEv(%class.omptarget_nvptx_TeamDescr* nonnull %15) #11
  tail call void @_ZN36omptarget_nvptx_ThreadPrivateContext20SetTopLevelTaskDescrEiP25omptarget_nvptx_TaskDescr(%class.omptarget_nvptx_ThreadPrivateContext* %16, i32 %13, %class.omptarget_nvptx_TaskDescr* %17) #11
  %18 = load %class.omptarget_nvptx_ThreadPrivateContext*, %class.omptarget_nvptx_ThreadPrivateContext** addrspacecast (%class.omptarget_nvptx_ThreadPrivateContext* addrspace(3)* @omptarget_nvptx_threadPrivateContext to %class.omptarget_nvptx_ThreadPrivateContext**), align 8, !tbaa !14
  %19 = tail call %class.omptarget_nvptx_TaskDescr* @_ZN36omptarget_nvptx_ThreadPrivateContext20GetTopLevelTaskDescrEi(%class.omptarget_nvptx_ThreadPrivateContext* %18, i32 %13) #11
  %20 = tail call i32 @_Z24GetNumberOfWorkersInTeamv() #3
  %21 = trunc i32 %20 to i16
  %22 = tail call dereferenceable(2) i16* @_ZN25omptarget_nvptx_TaskDescr8NThreadsEv(%class.omptarget_nvptx_TaskDescr* %19) #11
  store i16 %21, i16* %22, align 2, !tbaa !27
  %23 = trunc i32 %0 to i16
  %24 = tail call dereferenceable(2) i16* @_ZN25omptarget_nvptx_TaskDescr11ThreadLimitEv(%class.omptarget_nvptx_TaskDescr* %19) #11
  store i16 %23, i16* %24, align 2, !tbaa !27
  br label %25

; <label>:25:                                     ; preds = %5, %4
  ret void
}

; Function Attrs: inlinehint norecurse nounwind
define internal void @_Z22setExecutionParameters13ExecutionMode11RuntimeMode(i32, i32) local_unnamed_addr #6 {
  %3 = or i32 %1, %0
  store i32 %3, i32* addrspacecast (i32 addrspace(3)* @execution_param to i32*), align 4, !tbaa !29
  ret void
}

; Function Attrs: inlinehint nounwind
define internal i32 @_Z18GetThreadIdInBlockv() local_unnamed_addr #8 {
  %1 = tail call i32 @llvm.nvvm.read.ptx.sreg.tid.x() #11, !range !13
  ret i32 %1
}

; Function Attrs: convergent inlinehint nounwind
define internal i32 @_Z4smidv() local_unnamed_addr #9 {
  %1 = tail call i32 asm "mov.u32 $0, %smid;", "=r"() #12, !srcloc !30
  ret i32 %1
}

; Function Attrs: convergent inlinehint norecurse nounwind
define internal %class.omptarget_nvptx_ThreadPrivateContext* @_ZN21omptarget_nvptx_QueueI36omptarget_nvptx_ThreadPrivateContextLj32EE7DequeueEv(%class.omptarget_nvptx_Queue*) local_unnamed_addr #5 align 2 {
  %2 = tail call i32 @_ZN21omptarget_nvptx_QueueI36omptarget_nvptx_ThreadPrivateContextLj32EE14DEQUEUE_TICKETEv(%class.omptarget_nvptx_Queue* %0) #3
  %3 = and i32 %2, 31
  %4 = tail call i32 @_ZN21omptarget_nvptx_QueueI36omptarget_nvptx_ThreadPrivateContextLj32EE2IDEj(%class.omptarget_nvptx_Queue* %0, i32 %2) #11
  br label %5

; <label>:5:                                      ; preds = %5, %1
  %6 = tail call zeroext i1 @_ZN21omptarget_nvptx_QueueI36omptarget_nvptx_ThreadPrivateContextLj32EE9IsServingEjj(%class.omptarget_nvptx_Queue* %0, i32 %3, i32 %4) #3
  br i1 %6, label %7, label %5

; <label>:7:                                      ; preds = %5
  %8 = tail call %class.omptarget_nvptx_ThreadPrivateContext* @_ZN21omptarget_nvptx_QueueI36omptarget_nvptx_ThreadPrivateContextLj32EE10PopElementEj(%class.omptarget_nvptx_Queue* %0, i32 %3) #3
  %9 = icmp eq %class.omptarget_nvptx_ThreadPrivateContext* %8, null
  %10 = zext i32 %3 to i64
  %11 = getelementptr inbounds %class.omptarget_nvptx_Queue, %class.omptarget_nvptx_Queue* %0, i64 0, i32 0, i64 %10
  %12 = select i1 %9, %class.omptarget_nvptx_ThreadPrivateContext* %11, %class.omptarget_nvptx_ThreadPrivateContext* %8
  tail call void @_ZN21omptarget_nvptx_QueueI36omptarget_nvptx_ThreadPrivateContextLj32EE11DoneServingEjj(%class.omptarget_nvptx_Queue* %0, i32 %3, i32 %4) #3
  ret %class.omptarget_nvptx_ThreadPrivateContext* %12
}

; Function Attrs: convergent inlinehint nounwind
define internal i32 @_Z25GetLogicalThreadIdInBlockv() local_unnamed_addr #9 {
  %1 = tail call i32 @_Z18GetThreadIdInBlockv() #11
  %2 = tail call zeroext i1 @_Z13isGenericModev() #11
  br i1 %2, label %3, label %6

; <label>:3:                                      ; preds = %0
  %4 = tail call i32 @_Z17GetMasterThreadIDv() #11
  %5 = icmp slt i32 %1, %4
  br i1 %5, label %6, label %7

; <label>:6:                                      ; preds = %3, %0
  br label %7

; <label>:7:                                      ; preds = %3, %6
  %8 = phi i32 [ %1, %6 ], [ 0, %3 ]
  ret i32 %8
}

; Function Attrs: inlinehint norecurse nounwind
define internal void @_ZN36omptarget_nvptx_ThreadPrivateContext24InitThreadPrivateContextEi(%class.omptarget_nvptx_ThreadPrivateContext*, i32) local_unnamed_addr #6 align 2 {
  %3 = sext i32 %1 to i64
  %4 = getelementptr inbounds %class.omptarget_nvptx_ThreadPrivateContext, %class.omptarget_nvptx_ThreadPrivateContext* %0, i64 0, i32 2, i64 %3
  store %class.omptarget_nvptx_TaskDescr* null, %class.omptarget_nvptx_TaskDescr** %4, align 8, !tbaa !14
  %5 = getelementptr inbounds %class.omptarget_nvptx_ThreadPrivateContext, %class.omptarget_nvptx_ThreadPrivateContext* %0, i64 0, i32 3, i32 0, i64 %3
  store i16 0, i16* %5, align 2, !tbaa !31
  %6 = getelementptr inbounds %class.omptarget_nvptx_ThreadPrivateContext, %class.omptarget_nvptx_ThreadPrivateContext* %0, i64 0, i32 4, i64 %3
  store i64 0, i64* %6, align 8, !tbaa !32
  ret void
}

; Function Attrs: convergent inlinehint norecurse nounwind
define internal dereferenceable(263648) %class.omptarget_nvptx_TeamDescr* @_Z19getMyTeamDescriptorv() local_unnamed_addr #5 {
  %1 = load %class.omptarget_nvptx_ThreadPrivateContext*, %class.omptarget_nvptx_ThreadPrivateContext** addrspacecast (%class.omptarget_nvptx_ThreadPrivateContext* addrspace(3)* @omptarget_nvptx_threadPrivateContext to %class.omptarget_nvptx_ThreadPrivateContext**), align 8, !tbaa !14
  %2 = tail call dereferenceable(263648) %class.omptarget_nvptx_TeamDescr* @_ZN36omptarget_nvptx_ThreadPrivateContext11TeamContextEv(%class.omptarget_nvptx_ThreadPrivateContext* %1) #11
  ret %class.omptarget_nvptx_TeamDescr* %2
}

; Function Attrs: convergent inlinehint nounwind
define internal void @_ZN25omptarget_nvptx_TeamDescr13InitTeamDescrEv(%class.omptarget_nvptx_TeamDescr*) local_unnamed_addr #9 align 2 {
  %2 = getelementptr inbounds %class.omptarget_nvptx_TeamDescr, %class.omptarget_nvptx_TeamDescr* %0, i64 0, i32 0
  tail call void @_ZN25omptarget_nvptx_TaskDescr22InitLevelZeroTaskDescrEv(%class.omptarget_nvptx_TaskDescr* %2) #3
  %3 = getelementptr inbounds %class.omptarget_nvptx_TeamDescr, %class.omptarget_nvptx_TeamDescr* %0, i64 0, i32 1
  tail call void @_ZN25omptarget_nvptx_WorkDescr13InitWorkDescrEv(%class.omptarget_nvptx_WorkDescr* nonnull %3) #3
  ret void
}

; Function Attrs: inlinehint norecurse nounwind
define internal %class.omptarget_nvptx_TaskDescr* @_ZN25omptarget_nvptx_TeamDescr18LevelZeroTaskDescrEv(%class.omptarget_nvptx_TeamDescr*) local_unnamed_addr #6 align 2 {
  %2 = getelementptr inbounds %class.omptarget_nvptx_TeamDescr, %class.omptarget_nvptx_TeamDescr* %0, i64 0, i32 0
  ret %class.omptarget_nvptx_TaskDescr* %2
}

; Function Attrs: inlinehint norecurse nounwind
define internal void @_ZN36omptarget_nvptx_ThreadPrivateContext20SetTopLevelTaskDescrEiP25omptarget_nvptx_TaskDescr(%class.omptarget_nvptx_ThreadPrivateContext*, i32, %class.omptarget_nvptx_TaskDescr*) local_unnamed_addr #6 align 2 {
  %4 = sext i32 %1 to i64
  %5 = getelementptr inbounds %class.omptarget_nvptx_ThreadPrivateContext, %class.omptarget_nvptx_ThreadPrivateContext* %0, i64 0, i32 2, i64 %4
  store %class.omptarget_nvptx_TaskDescr* %2, %class.omptarget_nvptx_TaskDescr** %5, align 8, !tbaa !14
  ret void
}

; Function Attrs: inlinehint norecurse nounwind
define internal %class.omptarget_nvptx_TaskDescr* @_ZN36omptarget_nvptx_ThreadPrivateContext20GetTopLevelTaskDescrEi(%class.omptarget_nvptx_ThreadPrivateContext*, i32) local_unnamed_addr #6 align 2 {
  %3 = sext i32 %1 to i64
  %4 = getelementptr inbounds %class.omptarget_nvptx_ThreadPrivateContext, %class.omptarget_nvptx_ThreadPrivateContext* %0, i64 0, i32 2, i64 %3
  %5 = load %class.omptarget_nvptx_TaskDescr*, %class.omptarget_nvptx_TaskDescr** %4, align 8, !tbaa !14
  ret %class.omptarget_nvptx_TaskDescr* %5
}

; Function Attrs: convergent inlinehint nounwind
define internal i32 @_Z24GetNumberOfWorkersInTeamv() local_unnamed_addr #9 {
  %1 = tail call i32 @_Z17GetMasterThreadIDv() #11
  ret i32 %1
}

; Function Attrs: inlinehint norecurse nounwind
define internal dereferenceable(2) i16* @_ZN25omptarget_nvptx_TaskDescr8NThreadsEv(%class.omptarget_nvptx_TaskDescr*) local_unnamed_addr #6 align 2 {
  %2 = getelementptr inbounds %class.omptarget_nvptx_TaskDescr, %class.omptarget_nvptx_TaskDescr* %0, i64 0, i32 1, i32 2
  ret i16* %2
}

; Function Attrs: inlinehint norecurse nounwind
define internal dereferenceable(2) i16* @_ZN25omptarget_nvptx_TaskDescr11ThreadLimitEv(%class.omptarget_nvptx_TaskDescr*) local_unnamed_addr #6 align 2 {
  %2 = getelementptr inbounds %class.omptarget_nvptx_TaskDescr, %class.omptarget_nvptx_TaskDescr* %0, i64 0, i32 1, i32 3
  ret i16* %2
}

; Function Attrs: inlinehint nounwind
define internal i32 @_Z17GetMasterThreadIDv() local_unnamed_addr #8 {
  %1 = tail call i32 @llvm.nvvm.read.ptx.sreg.ntid.x() #11, !range !12
  %2 = add nsw i32 %1, -1
  %3 = and i32 %2, -32
  ret i32 %3
}

; Function Attrs: convergent inlinehint nounwind
define internal void @_ZN25omptarget_nvptx_TaskDescr22InitLevelZeroTaskDescrEv(%class.omptarget_nvptx_TaskDescr*) local_unnamed_addr #9 align 2 {
  %2 = getelementptr inbounds %class.omptarget_nvptx_TaskDescr, %class.omptarget_nvptx_TaskDescr* %0, i64 0, i32 1, i32 0
  store i8 0, i8* %2, align 8, !tbaa !34
  %3 = tail call i32 @_Z22GetNumberOfProcsInTeamv() #3
  %4 = trunc i32 %3 to i16
  %5 = getelementptr inbounds %class.omptarget_nvptx_TaskDescr, %class.omptarget_nvptx_TaskDescr* %0, i64 0, i32 1, i32 2
  store i16 %4, i16* %5, align 2, !tbaa !40
  %6 = getelementptr inbounds %class.omptarget_nvptx_TaskDescr, %class.omptarget_nvptx_TaskDescr* %0, i64 0, i32 1, i32 4
  store i16 0, i16* %6, align 2, !tbaa !41
  %7 = getelementptr inbounds %class.omptarget_nvptx_TaskDescr, %class.omptarget_nvptx_TaskDescr* %0, i64 0, i32 1, i32 5
  store i16 1, i16* %7, align 8, !tbaa !42
  %8 = getelementptr inbounds %class.omptarget_nvptx_TaskDescr, %class.omptarget_nvptx_TaskDescr* %0, i64 0, i32 1, i32 6
  store i64 1, i64* %8, align 8, !tbaa !43
  ret void
}

; Function Attrs: convergent inlinehint norecurse nounwind
define internal void @_ZN25omptarget_nvptx_WorkDescr13InitWorkDescrEv(%class.omptarget_nvptx_WorkDescr*) local_unnamed_addr #5 align 2 {
  %2 = getelementptr inbounds %class.omptarget_nvptx_WorkDescr, %class.omptarget_nvptx_WorkDescr* %0, i64 0, i32 0
  tail call void @_ZN28omptarget_nvptx_CounterGroup5ClearEv(%class.omptarget_nvptx_CounterGroup* %2) #11
  %3 = getelementptr inbounds %class.omptarget_nvptx_WorkDescr, %class.omptarget_nvptx_WorkDescr* %0, i64 0, i32 2
  store i8 0, i8* %3, align 8, !tbaa !44
  ret void
}

; Function Attrs: inlinehint norecurse nounwind
define internal void @_ZN28omptarget_nvptx_CounterGroup5ClearEv(%class.omptarget_nvptx_CounterGroup*) local_unnamed_addr #6 align 2 {
  %2 = getelementptr inbounds %class.omptarget_nvptx_CounterGroup, %class.omptarget_nvptx_CounterGroup* %0, i64 0, i32 0
  store i64 0, i64* %2, align 8, !tbaa !48
  %3 = getelementptr inbounds %class.omptarget_nvptx_CounterGroup, %class.omptarget_nvptx_CounterGroup* %0, i64 0, i32 1
  store volatile i64 0, i64* %3, align 8, !tbaa !49
  ret void
}

; Function Attrs: convergent inlinehint nounwind
define internal i32 @_Z22GetNumberOfProcsInTeamv() local_unnamed_addr #9 {
  %1 = tail call i32 @_Z24GetNumberOfProcsInDevicev() #3
  ret i32 %1
}

; Function Attrs: convergent inlinehint nounwind
define internal i32 @_Z24GetNumberOfProcsInDevicev() local_unnamed_addr #9 {
  %1 = tail call zeroext i1 @_Z13isGenericModev() #11
  br i1 %1, label %2, label %4

; <label>:2:                                      ; preds = %0
  %3 = tail call i32 @_Z24GetNumberOfWorkersInTeamv() #3
  br label %6

; <label>:4:                                      ; preds = %0
  %5 = tail call i32 @_Z25GetNumberOfThreadsInBlockv() #11
  br label %6

; <label>:6:                                      ; preds = %4, %2
  %7 = phi i32 [ %3, %2 ], [ %5, %4 ]
  ret i32 %7
}

; Function Attrs: inlinehint norecurse nounwind
define internal zeroext i1 @_Z13isGenericModev() local_unnamed_addr #6 {
  %1 = load i32, i32* addrspacecast (i32 addrspace(3)* @execution_param to i32*), align 4, !tbaa !29
  %2 = and i32 %1, 1
  %3 = icmp eq i32 %2, 0
  ret i1 %3
}

; Function Attrs: inlinehint nounwind
define internal i32 @_Z25GetNumberOfThreadsInBlockv() local_unnamed_addr #8 {
  %1 = tail call i32 @llvm.nvvm.read.ptx.sreg.ntid.x() #11, !range !12
  ret i32 %1
}

; Function Attrs: convergent inlinehint norecurse nounwind
define internal i32 @_ZN21omptarget_nvptx_QueueI36omptarget_nvptx_ThreadPrivateContextLj32EE14DEQUEUE_TICKETEv(%class.omptarget_nvptx_Queue*) local_unnamed_addr #5 align 2 {
  %2 = getelementptr inbounds %class.omptarget_nvptx_Queue, %class.omptarget_nvptx_Queue* %0, i64 0, i32 2
  %3 = tail call fastcc i32 @_ZL9atomicAddPjj(i32* nonnull %2, i32 1) #11
  ret i32 %3
}

; Function Attrs: inlinehint norecurse nounwind
define internal i32 @_ZN21omptarget_nvptx_QueueI36omptarget_nvptx_ThreadPrivateContextLj32EE2IDEj(%class.omptarget_nvptx_Queue*, i32) local_unnamed_addr #6 align 2 {
  %3 = lshr i32 %1, 5
  %4 = shl nuw nsw i32 %3, 1
  ret i32 %4
}

; Function Attrs: convergent inlinehint norecurse nounwind
define internal zeroext i1 @_ZN21omptarget_nvptx_QueueI36omptarget_nvptx_ThreadPrivateContextLj32EE9IsServingEjj(%class.omptarget_nvptx_Queue*, i32, i32) local_unnamed_addr #5 align 2 {
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds %class.omptarget_nvptx_Queue, %class.omptarget_nvptx_Queue* %0, i64 0, i32 3, i64 %4
  %6 = tail call fastcc i32 @_ZL9atomicAddPjj(i32* nonnull %5, i32 0) #11
  %7 = icmp eq i32 %6, %2
  ret i1 %7
}

; Function Attrs: convergent inlinehint norecurse nounwind
define internal %class.omptarget_nvptx_ThreadPrivateContext* @_ZN21omptarget_nvptx_QueueI36omptarget_nvptx_ThreadPrivateContextLj32EE10PopElementEj(%class.omptarget_nvptx_Queue*, i32) local_unnamed_addr #5 align 2 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %class.omptarget_nvptx_Queue, %class.omptarget_nvptx_Queue* %0, i64 0, i32 1, i64 %3
  %5 = bitcast %class.omptarget_nvptx_ThreadPrivateContext** %4 to i64*
  %6 = tail call fastcc i64 @_ZL9atomicAddPyy11(i64* nonnull %5) #11
  %7 = inttoptr i64 %6 to %class.omptarget_nvptx_ThreadPrivateContext*
  ret %class.omptarget_nvptx_ThreadPrivateContext* %7
}

; Function Attrs: convergent inlinehint norecurse nounwind
define internal void @_ZN21omptarget_nvptx_QueueI36omptarget_nvptx_ThreadPrivateContextLj32EE11DoneServingEjj(%class.omptarget_nvptx_Queue*, i32, i32) local_unnamed_addr #5 align 2 {
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds %class.omptarget_nvptx_Queue, %class.omptarget_nvptx_Queue* %0, i64 0, i32 3, i64 %4
  %6 = add i32 %2, 1
  %7 = and i32 %6, 33554431
  tail call fastcc void @_ZL10atomicExchPjj(i32* nonnull %5, i32 %7) #11
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
define internal void @__kmpc_kernel_deinit(i16 signext) #7 {
  %2 = icmp eq i16 %0, 0
  br i1 %2, label %10, label %3

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @_Z4smidv() #3
  %5 = urem i32 %4, 56
  %6 = zext i32 %5 to i64
  %7 = getelementptr inbounds [56 x %class.omptarget_nvptx_Queue], [56 x %class.omptarget_nvptx_Queue] addrspace(1)* @omptarget_nvptx_device_State, i64 0, i64 %6
  %8 = addrspacecast %class.omptarget_nvptx_Queue addrspace(1)* %7 to %class.omptarget_nvptx_Queue*
  %9 = load %class.omptarget_nvptx_ThreadPrivateContext*, %class.omptarget_nvptx_ThreadPrivateContext** addrspacecast (%class.omptarget_nvptx_ThreadPrivateContext* addrspace(3)* @omptarget_nvptx_threadPrivateContext to %class.omptarget_nvptx_ThreadPrivateContext**), align 8, !tbaa !14
  tail call void @_ZN21omptarget_nvptx_QueueI36omptarget_nvptx_ThreadPrivateContextLj32EE7EnqueueEPS0_(%class.omptarget_nvptx_Queue* %8, %class.omptarget_nvptx_ThreadPrivateContext* %9) #3
  br label %10

; <label>:10:                                     ; preds = %1, %3
  store volatile i8* null, i8** addrspacecast (i8* addrspace(3)* @omptarget_nvptx_workFn to i8**), align 8, !tbaa !14
  ret void
}

; Function Attrs: convergent inlinehint norecurse nounwind
define internal void @_ZN21omptarget_nvptx_QueueI36omptarget_nvptx_ThreadPrivateContextLj32EE7EnqueueEPS0_(%class.omptarget_nvptx_Queue*, %class.omptarget_nvptx_ThreadPrivateContext*) local_unnamed_addr #5 align 2 {
  %3 = tail call i32 @_ZN21omptarget_nvptx_QueueI36omptarget_nvptx_ThreadPrivateContextLj32EE14ENQUEUE_TICKETEv(%class.omptarget_nvptx_Queue* %0) #3
  %4 = and i32 %3, 31
  %5 = tail call i32 @_ZN21omptarget_nvptx_QueueI36omptarget_nvptx_ThreadPrivateContextLj32EE2IDEj(%class.omptarget_nvptx_Queue* %0, i32 %3) #11
  %6 = add i32 %5, 1
  br label %7

; <label>:7:                                      ; preds = %7, %2
  %8 = tail call zeroext i1 @_ZN21omptarget_nvptx_QueueI36omptarget_nvptx_ThreadPrivateContextLj32EE9IsServingEjj(%class.omptarget_nvptx_Queue* %0, i32 %4, i32 %6) #3
  br i1 %8, label %9, label %7

; <label>:9:                                      ; preds = %7
  tail call void @_ZN21omptarget_nvptx_QueueI36omptarget_nvptx_ThreadPrivateContextLj32EE11PushElementEjPS0_(%class.omptarget_nvptx_Queue* %0, i32 %4, %class.omptarget_nvptx_ThreadPrivateContext* %1) #3
  tail call void @_ZN21omptarget_nvptx_QueueI36omptarget_nvptx_ThreadPrivateContextLj32EE11DoneServingEjj(%class.omptarget_nvptx_Queue* %0, i32 %4, i32 %6) #3
  ret void
}

; Function Attrs: convergent inlinehint norecurse nounwind
define internal i32 @_ZN21omptarget_nvptx_QueueI36omptarget_nvptx_ThreadPrivateContextLj32EE14ENQUEUE_TICKETEv(%class.omptarget_nvptx_Queue*) local_unnamed_addr #5 align 2 {
  %2 = getelementptr inbounds %class.omptarget_nvptx_Queue, %class.omptarget_nvptx_Queue* %0, i64 0, i32 4
  %3 = tail call fastcc i32 @_ZL9atomicAddPjj(i32* nonnull %2, i32 1) #11
  ret i32 %3
}

; Function Attrs: convergent inlinehint norecurse nounwind
define internal void @_ZN21omptarget_nvptx_QueueI36omptarget_nvptx_ThreadPrivateContextLj32EE11PushElementEjPS0_(%class.omptarget_nvptx_Queue*, i32, %class.omptarget_nvptx_ThreadPrivateContext*) local_unnamed_addr #5 align 2 {
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds %class.omptarget_nvptx_Queue, %class.omptarget_nvptx_Queue* %0, i64 0, i32 1, i64 %4
  %6 = bitcast %class.omptarget_nvptx_ThreadPrivateContext** %5 to i64*
  %7 = ptrtoint %class.omptarget_nvptx_ThreadPrivateContext* %2 to i64
  tail call fastcc void @_ZL10atomicExchPyy(i64* nonnull %6, i64 %7) #11
  ret void
}

; Function Attrs: inlinehint norecurse nounwind
define internal fastcc void @_ZL10atomicExchPyy(i64* nocapture, i64) unnamed_addr #6 {
  %3 = atomicrmw xchg i64* %0, i64 %1 seq_cst
  ret void
}

; Function Attrs: convergent nounwind
define internal zeroext i1 @__kmpc_kernel_parallel(i8** nocapture, i16 signext) #7 {
  %3 = load volatile i8*, i8** addrspacecast (i8* addrspace(3)* @omptarget_nvptx_workFn to i8**), align 8, !tbaa !14
  store i8* %3, i8** %0, align 8, !tbaa !14
  %4 = icmp eq i16 %1, 0
  br i1 %4, label %23, label %5

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i8* %3, null
  br i1 %6, label %23, label %7

; <label>:7:                                      ; preds = %5
  %8 = tail call i32 @_Z18GetThreadIdInBlockv() #11
  %9 = tail call dereferenceable(104) %class.omptarget_nvptx_WorkDescr* @_Z19getMyWorkDescriptorv() #3
  %10 = tail call %class.omptarget_nvptx_TaskDescr* @_ZN25omptarget_nvptx_WorkDescr13WorkTaskDescrEv(%class.omptarget_nvptx_WorkDescr* nonnull %9) #11
  %11 = tail call dereferenceable(2) i16* @_ZN25omptarget_nvptx_TaskDescr13ThreadsInTeamEv(%class.omptarget_nvptx_TaskDescr* %10) #11
  %12 = load i16, i16* %11, align 2, !tbaa !27
  %13 = zext i16 %12 to i32
  %14 = icmp slt i32 %8, %13
  br i1 %14, label %15, label %23

; <label>:15:                                     ; preds = %7
  %16 = load %class.omptarget_nvptx_ThreadPrivateContext*, %class.omptarget_nvptx_ThreadPrivateContext** addrspacecast (%class.omptarget_nvptx_ThreadPrivateContext* addrspace(3)* @omptarget_nvptx_threadPrivateContext to %class.omptarget_nvptx_ThreadPrivateContext**), align 8, !tbaa !14
  %17 = tail call %class.omptarget_nvptx_TaskDescr* @_ZN36omptarget_nvptx_ThreadPrivateContext15Level1TaskDescrEi(%class.omptarget_nvptx_ThreadPrivateContext* %16, i32 %8) #11
  %18 = tail call %class.omptarget_nvptx_TaskDescr* @_ZN25omptarget_nvptx_WorkDescr13WorkTaskDescrEv(%class.omptarget_nvptx_WorkDescr* nonnull %9) #11
  tail call void @_ZN25omptarget_nvptx_TaskDescr17CopyFromWorkDescrEPS_(%class.omptarget_nvptx_TaskDescr* %17, %class.omptarget_nvptx_TaskDescr* %18) #3
  %19 = load %class.omptarget_nvptx_ThreadPrivateContext*, %class.omptarget_nvptx_ThreadPrivateContext** addrspacecast (%class.omptarget_nvptx_ThreadPrivateContext* addrspace(3)* @omptarget_nvptx_threadPrivateContext to %class.omptarget_nvptx_ThreadPrivateContext**), align 8, !tbaa !14
  tail call void @_ZN36omptarget_nvptx_ThreadPrivateContext20SetTopLevelTaskDescrEiP25omptarget_nvptx_TaskDescr(%class.omptarget_nvptx_ThreadPrivateContext* %19, i32 %8, %class.omptarget_nvptx_TaskDescr* %17) #11
  %20 = tail call dereferenceable(24) %class.omptarget_nvptx_CounterGroup* @_ZN25omptarget_nvptx_WorkDescr12CounterGroupEv(%class.omptarget_nvptx_WorkDescr* nonnull %9) #11
  %21 = load %class.omptarget_nvptx_ThreadPrivateContext*, %class.omptarget_nvptx_ThreadPrivateContext** addrspacecast (%class.omptarget_nvptx_ThreadPrivateContext* addrspace(3)* @omptarget_nvptx_threadPrivateContext to %class.omptarget_nvptx_ThreadPrivateContext**), align 8, !tbaa !14
  %22 = tail call dereferenceable(8) i64* @_ZN36omptarget_nvptx_ThreadPrivateContext4PrivEi(%class.omptarget_nvptx_ThreadPrivateContext* %21, i32 %8) #11
  tail call void @_ZN28omptarget_nvptx_CounterGroup4InitERy(%class.omptarget_nvptx_CounterGroup* nonnull %20, i64* nonnull dereferenceable(8) %22) #11
  br label %23

; <label>:23:                                     ; preds = %7, %15, %5, %2
  %24 = phi i1 [ true, %2 ], [ false, %5 ], [ true, %15 ], [ false, %7 ]
  ret i1 %24
}

; Function Attrs: convergent inlinehint norecurse nounwind
define internal dereferenceable(104) %class.omptarget_nvptx_WorkDescr* @_Z19getMyWorkDescriptorv() local_unnamed_addr #5 {
  %1 = tail call dereferenceable(263648) %class.omptarget_nvptx_TeamDescr* @_Z19getMyTeamDescriptorv() #3
  %2 = tail call dereferenceable(104) %class.omptarget_nvptx_WorkDescr* @_ZN25omptarget_nvptx_TeamDescr9WorkDescrEv(%class.omptarget_nvptx_TeamDescr* nonnull %1) #11
  ret %class.omptarget_nvptx_WorkDescr* %2
}

; Function Attrs: inlinehint norecurse nounwind
define internal %class.omptarget_nvptx_TaskDescr* @_ZN25omptarget_nvptx_WorkDescr13WorkTaskDescrEv(%class.omptarget_nvptx_WorkDescr*) local_unnamed_addr #6 align 2 {
  %2 = getelementptr inbounds %class.omptarget_nvptx_WorkDescr, %class.omptarget_nvptx_WorkDescr* %0, i64 0, i32 1
  ret %class.omptarget_nvptx_TaskDescr* %2
}

; Function Attrs: inlinehint norecurse nounwind
define internal dereferenceable(2) i16* @_ZN25omptarget_nvptx_TaskDescr13ThreadsInTeamEv(%class.omptarget_nvptx_TaskDescr*) local_unnamed_addr #6 align 2 {
  %2 = getelementptr inbounds %class.omptarget_nvptx_TaskDescr, %class.omptarget_nvptx_TaskDescr* %0, i64 0, i32 1, i32 5
  ret i16* %2
}

; Function Attrs: inlinehint norecurse nounwind
define internal %class.omptarget_nvptx_TaskDescr* @_ZN36omptarget_nvptx_ThreadPrivateContext15Level1TaskDescrEi(%class.omptarget_nvptx_ThreadPrivateContext*, i32) local_unnamed_addr #6 align 2 {
  %3 = sext i32 %1 to i64
  %4 = getelementptr inbounds %class.omptarget_nvptx_ThreadPrivateContext, %class.omptarget_nvptx_ThreadPrivateContext* %0, i64 0, i32 1, i64 %3
  ret %class.omptarget_nvptx_TaskDescr* %4
}

; Function Attrs: convergent inlinehint nounwind
define internal void @_ZN25omptarget_nvptx_TaskDescr17CopyFromWorkDescrEPS_(%class.omptarget_nvptx_TaskDescr*, %class.omptarget_nvptx_TaskDescr*) local_unnamed_addr #9 align 2 {
  tail call void @_ZN25omptarget_nvptx_TaskDescr4CopyEPS_(%class.omptarget_nvptx_TaskDescr* %0, %class.omptarget_nvptx_TaskDescr* %1) #3
  %3 = tail call i32 @_Z18GetThreadIdInBlockv() #11
  %4 = trunc i32 %3 to i16
  %5 = getelementptr inbounds %class.omptarget_nvptx_TaskDescr, %class.omptarget_nvptx_TaskDescr* %0, i64 0, i32 1, i32 4
  store i16 %4, i16* %5, align 2, !tbaa !41
  ret void
}

; Function Attrs: inlinehint norecurse nounwind
define internal dereferenceable(24) %class.omptarget_nvptx_CounterGroup* @_ZN25omptarget_nvptx_WorkDescr12CounterGroupEv(%class.omptarget_nvptx_WorkDescr*) local_unnamed_addr #6 align 2 {
  %2 = getelementptr inbounds %class.omptarget_nvptx_WorkDescr, %class.omptarget_nvptx_WorkDescr* %0, i64 0, i32 0
  ret %class.omptarget_nvptx_CounterGroup* %2
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
  %4 = load volatile i64, i64* %3, align 8, !tbaa !49
  store i64 %4, i64* %1, align 8, !tbaa !32
  ret void
}

; Function Attrs: convergent inlinehint nounwind
define internal void @_ZN25omptarget_nvptx_TaskDescr4CopyEPS_(%class.omptarget_nvptx_TaskDescr*, %class.omptarget_nvptx_TaskDescr*) local_unnamed_addr #9 align 2 {
  tail call void @_ZN25omptarget_nvptx_TaskDescr8CopyDataEPS_(%class.omptarget_nvptx_TaskDescr* %0, %class.omptarget_nvptx_TaskDescr* %1) #11
  %3 = getelementptr inbounds %class.omptarget_nvptx_TaskDescr, %class.omptarget_nvptx_TaskDescr* %1, i64 0, i32 2
  %4 = bitcast %class.omptarget_nvptx_TaskDescr** %3 to i64*
  %5 = load i64, i64* %4, align 8, !tbaa !50
  %6 = getelementptr inbounds %class.omptarget_nvptx_TaskDescr, %class.omptarget_nvptx_TaskDescr* %0, i64 0, i32 2
  %7 = bitcast %class.omptarget_nvptx_TaskDescr** %6 to i64*
  store i64 %5, i64* %7, align 8, !tbaa !50
  ret void
}

; Function Attrs: inlinehint nounwind
define internal void @_ZN25omptarget_nvptx_TaskDescr8CopyDataEPS_(%class.omptarget_nvptx_TaskDescr*, %class.omptarget_nvptx_TaskDescr*) local_unnamed_addr #8 align 2 {
  %3 = getelementptr inbounds %class.omptarget_nvptx_TaskDescr, %class.omptarget_nvptx_TaskDescr* %0, i64 0, i32 1, i32 0
  %4 = getelementptr inbounds %class.omptarget_nvptx_TaskDescr, %class.omptarget_nvptx_TaskDescr* %1, i64 0, i32 1, i32 0
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %3, i8* nonnull align 8 %4, i64 24, i1 false), !tbaa.struct !51
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #10

; Function Attrs: inlinehint norecurse nounwind
define internal dereferenceable(104) %class.omptarget_nvptx_WorkDescr* @_ZN25omptarget_nvptx_TeamDescr9WorkDescrEv(%class.omptarget_nvptx_TeamDescr*) local_unnamed_addr #6 align 2 {
  %2 = getelementptr inbounds %class.omptarget_nvptx_TeamDescr, %class.omptarget_nvptx_TeamDescr* %0, i64 0, i32 1
  ret %class.omptarget_nvptx_WorkDescr* %2
}

; Function Attrs: convergent nounwind
define internal void @__kmpc_kernel_end_parallel() #7 {
  %1 = tail call i32 @_Z18GetThreadIdInBlockv() #11
  %2 = tail call %class.omptarget_nvptx_TaskDescr* @_Z22getMyTopTaskDescriptori(i32 %1) #3
  %3 = load %class.omptarget_nvptx_ThreadPrivateContext*, %class.omptarget_nvptx_ThreadPrivateContext** addrspacecast (%class.omptarget_nvptx_ThreadPrivateContext* addrspace(3)* @omptarget_nvptx_threadPrivateContext to %class.omptarget_nvptx_ThreadPrivateContext**), align 8, !tbaa !14
  %4 = tail call %class.omptarget_nvptx_TaskDescr* @_ZN25omptarget_nvptx_TaskDescr16GetPrevTaskDescrEv(%class.omptarget_nvptx_TaskDescr* %2) #11
  tail call void @_ZN36omptarget_nvptx_ThreadPrivateContext20SetTopLevelTaskDescrEiP25omptarget_nvptx_TaskDescr(%class.omptarget_nvptx_ThreadPrivateContext* %3, i32 %1, %class.omptarget_nvptx_TaskDescr* %4) #11
  ret void
}

; Function Attrs: convergent inlinehint norecurse nounwind
define internal %class.omptarget_nvptx_TaskDescr* @_Z22getMyTopTaskDescriptori(i32) local_unnamed_addr #5 {
  %2 = load %class.omptarget_nvptx_ThreadPrivateContext*, %class.omptarget_nvptx_ThreadPrivateContext** addrspacecast (%class.omptarget_nvptx_ThreadPrivateContext* addrspace(3)* @omptarget_nvptx_threadPrivateContext to %class.omptarget_nvptx_ThreadPrivateContext**), align 8, !tbaa !14
  %3 = tail call %class.omptarget_nvptx_TaskDescr* @_ZN36omptarget_nvptx_ThreadPrivateContext20GetTopLevelTaskDescrEi(%class.omptarget_nvptx_ThreadPrivateContext* %2, i32 %0) #11
  ret %class.omptarget_nvptx_TaskDescr* %3
}

; Function Attrs: inlinehint norecurse nounwind
define internal %class.omptarget_nvptx_TaskDescr* @_ZN25omptarget_nvptx_TaskDescr16GetPrevTaskDescrEv(%class.omptarget_nvptx_TaskDescr*) local_unnamed_addr #6 align 2 {
  %2 = getelementptr inbounds %class.omptarget_nvptx_TaskDescr, %class.omptarget_nvptx_TaskDescr* %0, i64 0, i32 2
  %3 = load %class.omptarget_nvptx_TaskDescr*, %class.omptarget_nvptx_TaskDescr** %2, align 8, !tbaa !50
  ret %class.omptarget_nvptx_TaskDescr* %3
}

; Function Attrs: convergent nounwind
define internal i32 @__kmpc_global_thread_num(i8* nocapture readnone) #7 {
  %2 = tail call i32 @_Z25GetLogicalThreadIdInBlockv() #3
  ret i32 %2
}

attributes #0 = { noinline norecurse nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="sm_60" "target-features"="+ptx61,+sm_60" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noinline norecurse nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="sm_60" "target-features"="+ptx61,+sm_60" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { convergent nounwind }
attributes #4 = { convergent norecurse nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="sm_60" "target-features"="+ptx61,+sm_60" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { convergent inlinehint norecurse nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="sm_60" "target-features"="+ptx61,+sm_60" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { inlinehint norecurse nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="sm_60" "target-features"="+ptx61,+sm_60" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { convergent nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="sm_60" "target-features"="+ptx61,+sm_60" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { inlinehint nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="sm_60" "target-features"="+ptx61,+sm_60" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { convergent inlinehint nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="sm_60" "target-features"="+ptx61,+sm_60" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { argmemonly nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nounwind }
attributes #12 = { convergent nounwind readnone }

!omp_offload.info = !{!0}
!nvvm.annotations = !{!1, !2, !3, !2, !4, !4, !4, !4, !5, !5, !4, !2, !3, !2, !4, !4, !4, !4, !5, !5, !4, !2, !3, !2, !4, !4, !4, !4, !5, !5, !4, !2, !3, !2, !4, !4, !4, !4, !5, !5, !4, !2, !3, !2, !4, !4, !4, !4, !5, !5, !4, !2, !3, !2, !4, !4, !4, !4, !5, !5, !4, !2, !3, !2, !4, !4, !4, !4, !5, !5, !4, !2, !3, !2, !4, !4, !4, !4, !5, !5, !4, !2, !3, !2, !4, !4, !4, !4, !5, !5, !4, !2, !3, !2, !4, !4, !4, !4, !5, !5, !4, !2, !3, !2, !4, !4, !4, !4, !5, !5, !4}
!llvm.module.flags = !{!6, !7, !8}
!llvm.ident = !{!9, !9, !9, !9, !9, !9, !9, !9, !9, !9, !9}
!nvvm.internalize.after.link = !{}
!nvvmir.version = !{!10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10}

!0 = !{i32 0, i32 66306, i32 262149, !"axpy", i32 12, i32 0}
!1 = !{void (i64, i64, float*, i64, float*)* @__omp_offloading_10302_40005_axpy_l12, !"kernel", i32 1}
!2 = !{null, !"align", i32 8}
!3 = !{null, !"align", i32 8, !"align", i32 65544, !"align", i32 131080}
!4 = !{null, !"align", i32 16}
!5 = !{null, !"align", i32 16, !"align", i32 65552, !"align", i32 131088}
!6 = !{i32 1, !"wchar_size", i32 4}
!7 = !{i32 7, !"PIC Level", i32 2}
!8 = !{i32 4, !"nvvm-reflect-ftz", i32 0}
!9 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
!10 = !{i32 1, i32 4}
!11 = !{i32 32, i32 33}
!12 = !{i32 1, i32 1025}
!13 = !{i32 0, i32 1024}
!14 = !{!15, !15, i64 0}
!15 = !{!"any pointer", !16, i64 0}
!16 = !{!"omnipotent char", !17, i64 0}
!17 = !{!"Simple C++ TBAA"}
!18 = !{!19, !15, i64 160}
!19 = !{!"_ZTS26omptarget_nvptx_SharedArgs", !16, i64 0, !15, i64 160, !20, i64 168}
!20 = !{!"int", !16, i64 0}
!21 = !{!19, !20, i64 168}
!22 = !{!23, !15, i64 24}
!23 = !{!"_ZTS38__kmpc_data_sharing_worker_slot_static", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !16, i64 32}
!24 = !{!23, !15, i64 0}
!25 = !{!23, !15, i64 8}
!26 = !{!23, !15, i64 16}
!27 = !{!28, !28, i64 0}
!28 = !{!"short", !16, i64 0}
!29 = !{!20, !20, i64 0}
!30 = !{i32 1586}
!31 = !{!16, !16, i64 0}
!32 = !{!33, !33, i64 0}
!33 = !{!"long long", !16, i64 0}
!34 = !{!35, !16, i64 40}
!35 = !{!"_ZTS25omptarget_nvptx_TaskDescr", !36, i64 0, !39, i64 40, !15, i64 64}
!36 = !{!"_ZTSN25omptarget_nvptx_TaskDescr20SavedLoopDescr_itemsE", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !38, i64 32}
!37 = !{!"long", !16, i64 0}
!38 = !{!"_ZTS11kmp_sched_t", !16, i64 0}
!39 = !{!"_ZTSN25omptarget_nvptx_TaskDescr15TaskDescr_itemsE", !16, i64 0, !16, i64 1, !28, i64 2, !28, i64 4, !28, i64 6, !28, i64 8, !37, i64 16}
!40 = !{!35, !28, i64 42}
!41 = !{!35, !28, i64 46}
!42 = !{!35, !28, i64 48}
!43 = !{!35, !37, i64 56}
!44 = !{!45, !47, i64 96}
!45 = !{!"_ZTS25omptarget_nvptx_WorkDescr", !46, i64 0, !35, i64 24, !47, i64 96}
!46 = !{!"_ZTS28omptarget_nvptx_CounterGroup", !33, i64 0, !33, i64 8, !33, i64 16}
!47 = !{!"bool", !16, i64 0}
!48 = !{!46, !33, i64 0}
!49 = !{!46, !33, i64 8}
!50 = !{!35, !15, i64 64}
!51 = !{i64 0, i64 1, !31, i64 1, i64 1, !31, i64 2, i64 2, !27, i64 4, i64 2, !27, i64 6, i64 2, !27, i64 8, i64 2, !27, i64 16, i64 8, !52}
!52 = !{!37, !37, i64 0}

; __CLANG_OFFLOAD_BUNDLE____END__ openmp-nvptx64-nvidia-cuda

; __CLANG_OFFLOAD_BUNDLE____START__ host-x86_64-unknown-linux-gnu
; ModuleID = '/tmp/omp-axpy1-488788.bc'
source_filename = "omp-axpy1.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__tgt_offload_entry = type { i8*, i8*, i64, i32, i32 }
%struct.__tgt_device_image = type { i8*, i8*, %struct.__tgt_offload_entry*, %struct.__tgt_offload_entry* }
%struct.__tgt_bin_desc = type { i32, %struct.__tgt_device_image*, %struct.__tgt_offload_entry*, %struct.__tgt_offload_entry* }

$.omp_offloading.descriptor_reg = comdat any

@.str = private unnamed_addr constant [20 x i8] c"this a tset: %f %f\0A\00", align 1
@.__omp_offloading_10302_40005_axpy_l12.region_id = weak constant i8 0
@.offload_maptypes = private unnamed_addr constant [5 x i64] [i64 800, i64 800, i64 35, i64 800, i64 33]
@.str.1 = private unnamed_addr constant [15 x i8] c"this is Y: %f\0A\00", align 1
@.omp_offloading.entry_name = internal unnamed_addr constant [38 x i8] c"__omp_offloading_10302_40005_axpy_l12\00"
@.omp_offloading.entry.__omp_offloading_10302_40005_axpy_l12 = weak constant %struct.__tgt_offload_entry { i8* @.__omp_offloading_10302_40005_axpy_l12.region_id, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.omp_offloading.entry_name, i32 0, i32 0), i64 0, i32 0, i32 0 }, section ".omp_offloading.entries", align 1
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
  %68 = call i32 @__tgt_target(i64 -1, i8* @.__omp_offloading_10302_40005_axpy_l12.region_id, i32 5, i8** %65, i8** %66, i64* %67, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @.offload_maptypes, i32 0, i32 0))
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

; <label>:70:                                     ; preds = %4
  call void @__omp_offloading_10302_40005_axpy_l12(i64 %19, i64 %22, float* %23, i64 %26, float* %27) #3
  br label %71

; <label>:71:                                     ; preds = %70, %4
  ret void
}

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @__omp_offloading_10302_40005_axpy_l12(i64, i64, float*, i64, float*) #1 {
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
  store i32 0, i32* %11, align 8
  br label %14

; <label>:14:                                     ; preds = %45, %5
  %15 = load i32, i32* %11, align 8
  %16 = load i32, i32* %12, align 8
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %48

; <label>:18:                                     ; preds = %14
  %19 = load float, float* %13, align 8
  %20 = load float*, float** %10, align 8
  %21 = load i32, i32* %11, align 8
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds float, float* %20, i64 %22
  %24 = load float, float* %23, align 4
  %25 = fmul float %19, %24
  %26 = load float*, float** %8, align 8
  %27 = load i32, i32* %11, align 8
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds float, float* %26, i64 %28
  %30 = load float, float* %29, align 4
  %31 = fadd float %30, %25
  store float %31, float* %29, align 4
  %32 = load float*, float** %10, align 8
  %33 = load i32, i32* %11, align 8
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds float, float* %32, i64 %34
  %36 = load float, float* %35, align 4
  %37 = fpext float %36 to double
  %38 = load float*, float** %8, align 8
  %39 = load i32, i32* %11, align 8
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds float, float* %38, i64 %40
  %42 = load float, float* %41, align 4
  %43 = fpext float %42 to double
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), double %37, double %43)
  br label %45

; <label>:45:                                     ; preds = %18
  %46 = load i32, i32* %11, align 8
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %11, align 8
  br label %14

; <label>:48:                                     ; preds = %14
  ret void
}

declare dso_local i32 @printf(i8*, ...) #2

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
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), double %45)
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

!0 = !{i32 0, i32 66306, i32 262149, !"axpy", i32 12, i32 0}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}

; __CLANG_OFFLOAD_BUNDLE____END__ host-x86_64-unknown-linux-gnu
