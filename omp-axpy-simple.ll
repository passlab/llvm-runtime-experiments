
; __CLANG_OFFLOAD_BUNDLE____START__ openmp-nvptx64-nvidia-cuda
; ModuleID = 'omp-axpy.c'
source_filename = "omp-axpy.c"
target datalayout = "e-i64:64-i128:128-v16:16-v32:32-n16:32:64"
target triple = "nvptx64-nvidia-cuda"

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

@.str1 = private unnamed_addr constant [20 x i8] c"this a tset: %f %f\0A\00", align 1
@__omp_offloading_10302_40009_axpy_l12_exec_mode = weak constant i8 0
@omptarget_nvptx_threadPrivateContext = external dso_local local_unnamed_addr addrspace(3) global %class.omptarget_nvptx_ThreadPrivateContext*, align 8
@DataSharingState = external dso_local local_unnamed_addr addrspace(3) global %struct.DataSharingStateTy, align 8
@execution_param = external dso_local local_unnamed_addr addrspace(3) global i32, align 4
@omptarget_nvptx_device_State = external dso_local addrspace(1) global [56 x %class.omptarget_nvptx_Queue], align 16
@llvm.compiler.used = appending global [1 x i8*] [i8* @__omp_offloading_10302_40009_axpy_l12_exec_mode], section "llvm.metadata"

; Function Attrs: norecurse nounwind optsize
define weak void @__omp_offloading_10302_40009_axpy_l12(i64, i64, float*, i64, float*) local_unnamed_addr #0 {
  %6 = alloca %printf_args.5, align 8
  %7 = tail call i32 @llvm.nvvm.read.ptx.sreg.tid.x() #6, !range !11
  %8 = trunc i64 %1 to i32
  %9 = trunc i64 %3 to i32
  %10 = bitcast i32 %9 to float
  %11 = tail call i32 @llvm.nvvm.read.ptx.sreg.ntid.x(), !range !12
  store i32 1, i32* addrspacecast (i32 addrspace(3)* @execution_param to i32*), align 4, !tbaa !13
  %12 = icmp eq i32 %7, 0
  br i1 %12, label %13, label %57

; <label>:13:                                     ; preds = %5
  %14 = tail call i32 asm "mov.u32 $0, %smid;", "=r"() #7, !srcloc !17
  %15 = urem i32 %14, 56
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds [56 x %class.omptarget_nvptx_Queue], [56 x %class.omptarget_nvptx_Queue] addrspace(1)* @omptarget_nvptx_device_State, i64 0, i64 %16
  %18 = addrspacecast %class.omptarget_nvptx_Queue addrspace(1)* %17 to %class.omptarget_nvptx_Queue*
  %19 = getelementptr inbounds %class.omptarget_nvptx_Queue, %class.omptarget_nvptx_Queue* %18, i64 0, i32 2
  %20 = atomicrmw add i32* %19, i32 1 seq_cst
  %21 = and i32 %20, 31
  %22 = lshr i32 %20, 5
  %23 = shl nuw nsw i32 %22, 1
  %24 = zext i32 %21 to i64
  %25 = getelementptr inbounds %class.omptarget_nvptx_Queue, %class.omptarget_nvptx_Queue* %18, i64 0, i32 3, i64 %24
  br label %26

; <label>:26:                                     ; preds = %26, %13
  %27 = atomicrmw add i32* %25, i32 0 seq_cst
  %28 = icmp eq i32 %27, %23
  br i1 %28, label %29, label %26

; <label>:29:                                     ; preds = %26
  %30 = getelementptr inbounds %class.omptarget_nvptx_Queue, %class.omptarget_nvptx_Queue* %18, i64 0, i32 1, i64 %24
  %31 = bitcast %class.omptarget_nvptx_ThreadPrivateContext** %30 to i64*
  %32 = atomicrmw add i64* %31, i64 0 seq_cst
  %33 = inttoptr i64 %32 to %class.omptarget_nvptx_ThreadPrivateContext*
  %34 = icmp eq i64 %32, 0
  %35 = getelementptr inbounds %class.omptarget_nvptx_Queue, %class.omptarget_nvptx_Queue* %18, i64 0, i32 0, i64 %24
  %36 = select i1 %34, %class.omptarget_nvptx_ThreadPrivateContext* %35, %class.omptarget_nvptx_ThreadPrivateContext* %33
  %37 = and i32 %23, 33554430
  %38 = or i32 %37, 1
  %39 = atomicrmw xchg i32* %25, i32 %38 seq_cst
  store %class.omptarget_nvptx_ThreadPrivateContext* %36, %class.omptarget_nvptx_ThreadPrivateContext** addrspacecast (%class.omptarget_nvptx_ThreadPrivateContext* addrspace(3)* @omptarget_nvptx_threadPrivateContext to %class.omptarget_nvptx_ThreadPrivateContext**), align 8, !tbaa !18
  %40 = getelementptr inbounds %class.omptarget_nvptx_ThreadPrivateContext, %class.omptarget_nvptx_ThreadPrivateContext* %36, i64 0, i32 0, i32 0, i32 1, i32 0
  store i8 0, i8* %40, align 8, !tbaa !20
  %41 = load i32, i32* addrspacecast (i32 addrspace(3)* @execution_param to i32*), align 4, !tbaa !13
  %42 = and i32 %41, 1
  %43 = icmp eq i32 %42, 0
  %44 = add nuw nsw i32 %11, 65535
  %45 = and i32 %44, 65504
  %46 = select i1 %43, i32 %45, i32 %11
  %47 = trunc i32 %46 to i16
  %48 = getelementptr inbounds %class.omptarget_nvptx_ThreadPrivateContext, %class.omptarget_nvptx_ThreadPrivateContext* %36, i64 0, i32 0, i32 0, i32 1, i32 2
  store i16 %47, i16* %48, align 2, !tbaa !27
  %49 = getelementptr inbounds %class.omptarget_nvptx_ThreadPrivateContext, %class.omptarget_nvptx_ThreadPrivateContext* %36, i64 0, i32 0, i32 0, i32 1, i32 4
  store i16 0, i16* %49, align 2, !tbaa !28
  %50 = getelementptr inbounds %class.omptarget_nvptx_ThreadPrivateContext, %class.omptarget_nvptx_ThreadPrivateContext* %36, i64 0, i32 0, i32 0, i32 1, i32 5
  store i16 1, i16* %50, align 8, !tbaa !29
  %51 = getelementptr inbounds %class.omptarget_nvptx_ThreadPrivateContext, %class.omptarget_nvptx_ThreadPrivateContext* %36, i64 0, i32 0, i32 0, i32 1, i32 6
  store i64 1, i64* %51, align 8, !tbaa !30
  %52 = getelementptr inbounds %class.omptarget_nvptx_ThreadPrivateContext, %class.omptarget_nvptx_ThreadPrivateContext* %36, i64 0, i32 0, i32 1, i32 0, i32 0
  store i64 0, i64* %52, align 8, !tbaa !31
  %53 = getelementptr inbounds %class.omptarget_nvptx_ThreadPrivateContext, %class.omptarget_nvptx_ThreadPrivateContext* %36, i64 0, i32 0, i32 1, i32 0, i32 1
  store volatile i64 0, i64* %53, align 8, !tbaa !34
  %54 = getelementptr inbounds %class.omptarget_nvptx_ThreadPrivateContext, %class.omptarget_nvptx_ThreadPrivateContext* %36, i64 0, i32 0, i32 1, i32 2
  store i8 0, i8* %54, align 8, !tbaa !35
  %55 = load volatile i64, i64* %53, align 8, !tbaa !34
  %56 = getelementptr inbounds %class.omptarget_nvptx_ThreadPrivateContext, %class.omptarget_nvptx_ThreadPrivateContext* %36, i64 0, i32 0, i32 1, i32 0, i32 2
  store i64 %55, i64* %56, align 8, !tbaa !38
  br label %57

; <label>:57:                                     ; preds = %29, %5
  tail call void @llvm.nvvm.barrier0() #6
  %58 = load %class.omptarget_nvptx_ThreadPrivateContext*, %class.omptarget_nvptx_ThreadPrivateContext** addrspacecast (%class.omptarget_nvptx_ThreadPrivateContext* addrspace(3)* @omptarget_nvptx_threadPrivateContext to %class.omptarget_nvptx_ThreadPrivateContext**), align 8, !tbaa !18
  %59 = zext i32 %7 to i64
  %60 = getelementptr inbounds %class.omptarget_nvptx_ThreadPrivateContext, %class.omptarget_nvptx_ThreadPrivateContext* %58, i64 0, i32 1, i64 %59
  %61 = trunc i32 %11 to i16
  %62 = getelementptr inbounds %class.omptarget_nvptx_ThreadPrivateContext, %class.omptarget_nvptx_ThreadPrivateContext* %58, i64 0, i32 0, i32 0
  %63 = getelementptr inbounds %class.omptarget_nvptx_ThreadPrivateContext, %class.omptarget_nvptx_ThreadPrivateContext* %58, i64 0, i32 1, i64 %59, i32 1, i32 0
  store i8 48, i8* %63, align 8, !tbaa !20
  %64 = getelementptr inbounds %class.omptarget_nvptx_ThreadPrivateContext, %class.omptarget_nvptx_ThreadPrivateContext* %58, i64 0, i32 1, i64 %59, i32 1, i32 2
  store i16 0, i16* %64, align 2, !tbaa !27
  %65 = trunc i32 %7 to i16
  %66 = getelementptr inbounds %class.omptarget_nvptx_ThreadPrivateContext, %class.omptarget_nvptx_ThreadPrivateContext* %58, i64 0, i32 1, i64 %59, i32 1, i32 4
  store i16 %65, i16* %66, align 2, !tbaa !28
  %67 = getelementptr inbounds %class.omptarget_nvptx_ThreadPrivateContext, %class.omptarget_nvptx_ThreadPrivateContext* %58, i64 0, i32 1, i64 %59, i32 1, i32 5
  store i16 %61, i16* %67, align 8, !tbaa !29
  %68 = getelementptr inbounds %class.omptarget_nvptx_ThreadPrivateContext, %class.omptarget_nvptx_ThreadPrivateContext* %58, i64 0, i32 1, i64 %59, i32 1, i32 6
  store i64 1, i64* %68, align 8, !tbaa !30
  %69 = getelementptr inbounds %class.omptarget_nvptx_ThreadPrivateContext, %class.omptarget_nvptx_ThreadPrivateContext* %58, i64 0, i32 1, i64 %59, i32 2
  store %class.omptarget_nvptx_TaskDescr* %62, %class.omptarget_nvptx_TaskDescr** %69, align 8, !tbaa !39
  %70 = getelementptr inbounds %class.omptarget_nvptx_ThreadPrivateContext, %class.omptarget_nvptx_ThreadPrivateContext* %58, i64 0, i32 1, i64 %59, i32 1, i32 3
  store i16 %61, i16* %70, align 2, !tbaa !40
  %71 = load %class.omptarget_nvptx_ThreadPrivateContext*, %class.omptarget_nvptx_ThreadPrivateContext** addrspacecast (%class.omptarget_nvptx_ThreadPrivateContext* addrspace(3)* @omptarget_nvptx_threadPrivateContext to %class.omptarget_nvptx_ThreadPrivateContext**), align 8, !tbaa !18
  %72 = getelementptr inbounds %class.omptarget_nvptx_ThreadPrivateContext, %class.omptarget_nvptx_ThreadPrivateContext* %71, i64 0, i32 2, i64 %59
  store %class.omptarget_nvptx_TaskDescr* %60, %class.omptarget_nvptx_TaskDescr** %72, align 8, !tbaa !18
  %73 = load %class.omptarget_nvptx_ThreadPrivateContext*, %class.omptarget_nvptx_ThreadPrivateContext** addrspacecast (%class.omptarget_nvptx_ThreadPrivateContext* addrspace(3)* @omptarget_nvptx_threadPrivateContext to %class.omptarget_nvptx_ThreadPrivateContext**), align 8, !tbaa !18
  %74 = getelementptr inbounds %class.omptarget_nvptx_ThreadPrivateContext, %class.omptarget_nvptx_ThreadPrivateContext* %73, i64 0, i32 4, i64 %59
  %75 = getelementptr inbounds %class.omptarget_nvptx_ThreadPrivateContext, %class.omptarget_nvptx_ThreadPrivateContext* %58, i64 0, i32 0, i32 1, i32 0, i32 1
  %76 = load volatile i64, i64* %75, align 8, !tbaa !34
  store i64 %76, i64* %74, align 8, !tbaa !41
  %77 = and i32 %7, 31
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %112

; <label>:79:                                     ; preds = %57
  %80 = lshr i32 %7, 5
  %81 = and i32 %7, 992
  %82 = icmp eq i32 %81, 992
  br i1 %82, label %83, label %94

; <label>:83:                                     ; preds = %79
  %84 = getelementptr inbounds %class.omptarget_nvptx_ThreadPrivateContext, %class.omptarget_nvptx_ThreadPrivateContext* %58, i64 0, i32 0, i32 5, i64 0
  %85 = getelementptr inbounds %class.omptarget_nvptx_ThreadPrivateContext, %class.omptarget_nvptx_ThreadPrivateContext* %58, i64 0, i32 0, i32 5, i64 0, i32 3
  %86 = load i8*, i8** %85, align 8, !tbaa !42
  %87 = getelementptr inbounds %class.omptarget_nvptx_ThreadPrivateContext, %class.omptarget_nvptx_ThreadPrivateContext* %58, i64 0, i32 0, i32 5, i64 0, i32 4, i64 256
  %88 = icmp eq i8* %86, %87
  br i1 %88, label %106, label %89

; <label>:89:                                     ; preds = %83
  store i8* %87, i8** %85, align 8, !tbaa !42
  %90 = getelementptr inbounds %struct.__kmpc_data_sharing_master_slot_static, %struct.__kmpc_data_sharing_master_slot_static* %84, i64 0, i32 0
  store %struct.__kmpc_data_sharing_slot* null, %struct.__kmpc_data_sharing_slot** %90, align 16, !tbaa !44
  %91 = getelementptr inbounds %class.omptarget_nvptx_ThreadPrivateContext, %class.omptarget_nvptx_ThreadPrivateContext* %58, i64 0, i32 0, i32 5, i64 0, i32 1
  store %struct.__kmpc_data_sharing_slot* null, %struct.__kmpc_data_sharing_slot** %91, align 8, !tbaa !45
  %92 = getelementptr inbounds %class.omptarget_nvptx_ThreadPrivateContext, %class.omptarget_nvptx_ThreadPrivateContext* %58, i64 0, i32 0, i32 5, i64 0, i32 2
  store i8* null, i8** %92, align 16, !tbaa !46
  %93 = bitcast %struct.__kmpc_data_sharing_master_slot_static* %84 to %struct.__kmpc_data_sharing_slot*
  br label %106

; <label>:94:                                     ; preds = %79
  %95 = zext i32 %80 to i64
  %96 = getelementptr inbounds %class.omptarget_nvptx_ThreadPrivateContext, %class.omptarget_nvptx_ThreadPrivateContext* %58, i64 0, i32 0, i32 4, i64 %95
  %97 = getelementptr inbounds %class.omptarget_nvptx_ThreadPrivateContext, %class.omptarget_nvptx_ThreadPrivateContext* %58, i64 0, i32 0, i32 4, i64 %95, i32 3
  %98 = load i8*, i8** %97, align 8, !tbaa !47
  %99 = getelementptr inbounds %class.omptarget_nvptx_ThreadPrivateContext, %class.omptarget_nvptx_ThreadPrivateContext* %58, i64 0, i32 0, i32 4, i64 %95, i32 4, i64 8192
  %100 = icmp eq i8* %98, %99
  br i1 %100, label %106, label %101

; <label>:101:                                    ; preds = %94
  %102 = getelementptr inbounds %struct.__kmpc_data_sharing_worker_slot_static, %struct.__kmpc_data_sharing_worker_slot_static* %96, i64 0, i32 0
  %103 = getelementptr inbounds %class.omptarget_nvptx_ThreadPrivateContext, %class.omptarget_nvptx_ThreadPrivateContext* %58, i64 0, i32 0, i32 4, i64 %95, i32 1
  %104 = getelementptr inbounds %class.omptarget_nvptx_ThreadPrivateContext, %class.omptarget_nvptx_ThreadPrivateContext* %58, i64 0, i32 0, i32 4, i64 %95, i32 2
  %105 = bitcast %struct.__kmpc_data_sharing_worker_slot_static* %96 to %struct.__kmpc_data_sharing_slot*
  store i8* %99, i8** %97, align 8, !tbaa !47
  store %struct.__kmpc_data_sharing_slot* null, %struct.__kmpc_data_sharing_slot** %102, align 16, !tbaa !49
  store %struct.__kmpc_data_sharing_slot* null, %struct.__kmpc_data_sharing_slot** %103, align 8, !tbaa !50
  store i8* null, i8** %104, align 16, !tbaa !51
  br label %106

; <label>:106:                                    ; preds = %101, %94, %89, %83
  %107 = phi %struct.__kmpc_data_sharing_slot* [ %93, %89 ], [ %105, %101 ], [ null, %83 ], [ null, %94 ]
  %108 = zext i32 %80 to i64
  %109 = getelementptr %struct.DataSharingStateTy, %struct.DataSharingStateTy* addrspacecast (%struct.DataSharingStateTy addrspace(3)* @DataSharingState to %struct.DataSharingStateTy*), i64 0, i32 0, i64 %108
  store %struct.__kmpc_data_sharing_slot* %107, %struct.__kmpc_data_sharing_slot** %109, align 8, !tbaa !18
  %110 = getelementptr inbounds %struct.__kmpc_data_sharing_slot, %struct.__kmpc_data_sharing_slot* %107, i64 0, i32 4, i64 0
  %111 = getelementptr %struct.DataSharingStateTy, %struct.DataSharingStateTy* addrspacecast (%struct.DataSharingStateTy addrspace(3)* @DataSharingState to %struct.DataSharingStateTy*), i64 0, i32 1, i64 %108
  store i8* %110, i8** %111, align 8, !tbaa !18
  br label %112

; <label>:112:                                    ; preds = %57, %106
  br i1 %12, label %113, label %130

; <label>:113:                                    ; preds = %112
  %114 = load %class.omptarget_nvptx_ThreadPrivateContext*, %class.omptarget_nvptx_ThreadPrivateContext** addrspacecast (%class.omptarget_nvptx_ThreadPrivateContext* addrspace(3)* @omptarget_nvptx_threadPrivateContext to %class.omptarget_nvptx_ThreadPrivateContext**), align 8, !tbaa !18
  br label %115

; <label>:115:                                    ; preds = %115, %113
  %116 = phi i32 [ 0, %113 ], [ %128, %115 ]
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds %class.omptarget_nvptx_ThreadPrivateContext, %class.omptarget_nvptx_ThreadPrivateContext* %114, i64 0, i32 0, i32 4, i64 %117
  %119 = getelementptr inbounds %class.omptarget_nvptx_ThreadPrivateContext, %class.omptarget_nvptx_ThreadPrivateContext* %114, i64 0, i32 0, i32 4, i64 %117, i32 4, i64 8192
  %120 = getelementptr inbounds %class.omptarget_nvptx_ThreadPrivateContext, %class.omptarget_nvptx_ThreadPrivateContext* %114, i64 0, i32 0, i32 4, i64 %117, i32 3
  store i8* %119, i8** %120, align 8, !tbaa !47
  %121 = getelementptr inbounds %struct.__kmpc_data_sharing_worker_slot_static, %struct.__kmpc_data_sharing_worker_slot_static* %118, i64 0, i32 0
  store %struct.__kmpc_data_sharing_slot* null, %struct.__kmpc_data_sharing_slot** %121, align 16, !tbaa !49
  %122 = getelementptr inbounds %class.omptarget_nvptx_ThreadPrivateContext, %class.omptarget_nvptx_ThreadPrivateContext* %114, i64 0, i32 0, i32 4, i64 %117, i32 1
  store %struct.__kmpc_data_sharing_slot* null, %struct.__kmpc_data_sharing_slot** %122, align 8, !tbaa !50
  %123 = getelementptr inbounds %class.omptarget_nvptx_ThreadPrivateContext, %class.omptarget_nvptx_ThreadPrivateContext* %114, i64 0, i32 0, i32 4, i64 %117, i32 2
  store i8* null, i8** %123, align 16, !tbaa !51
  %124 = getelementptr %struct.DataSharingStateTy, %struct.DataSharingStateTy* addrspacecast (%struct.DataSharingStateTy addrspace(3)* @DataSharingState to %struct.DataSharingStateTy*), i64 0, i32 0, i64 %117
  %125 = bitcast %struct.__kmpc_data_sharing_slot** %124 to %struct.__kmpc_data_sharing_worker_slot_static**
  store %struct.__kmpc_data_sharing_worker_slot_static* %118, %struct.__kmpc_data_sharing_worker_slot_static** %125, align 8, !tbaa !18
  %126 = getelementptr inbounds %class.omptarget_nvptx_ThreadPrivateContext, %class.omptarget_nvptx_ThreadPrivateContext* %114, i64 0, i32 0, i32 4, i64 %117, i32 4, i64 0
  %127 = getelementptr %struct.DataSharingStateTy, %struct.DataSharingStateTy* addrspacecast (%struct.DataSharingStateTy addrspace(3)* @DataSharingState to %struct.DataSharingStateTy*), i64 0, i32 1, i64 %117
  store i8* %126, i8** %127, align 8, !tbaa !18
  %128 = add nuw nsw i32 %116, 1
  %129 = icmp eq i32 %128, 32
  br i1 %129, label %130, label %115

; <label>:130:                                    ; preds = %115, %112
  tail call void @llvm.nvvm.membar.cta() #6
  %131 = bitcast %printf_args.5* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %131)
  %132 = add nsw i32 %8, -1
  %133 = icmp sgt i32 %8, 0
  br i1 %133, label %134, label %202

; <label>:134:                                    ; preds = %130
  %135 = load i32, i32* addrspacecast (i32 addrspace(3)* @execution_param to i32*), align 4, !tbaa !13
  %136 = and i32 %135, 1
  %137 = icmp ne i32 %136, 0
  %138 = and i32 %135, 2
  %139 = icmp eq i32 %138, 0
  %140 = icmp eq i32 %136, 0
  br i1 %140, label %141, label %145

; <label>:141:                                    ; preds = %134
  %142 = add nsw i32 %11, -1
  %143 = and i32 %142, -32
  %144 = icmp slt i32 %7, %143
  br i1 %144, label %145, label %146

; <label>:145:                                    ; preds = %141, %134
  br label %146

; <label>:146:                                    ; preds = %145, %141
  %147 = phi i64 [ %59, %145 ], [ 0, %141 ]
  br i1 %139, label %156, label %148

; <label>:148:                                    ; preds = %146
  %149 = add nsw i32 %11, -1
  %150 = and i32 %149, -32
  %151 = icmp slt i32 %7, %150
  %152 = or i1 %137, %151
  %153 = select i1 %152, i32 %7, i32 0
  %154 = add nsw i32 %11, -32
  %155 = select i1 %137, i32 %11, i32 %154
  br label %166

; <label>:156:                                    ; preds = %146
  %157 = load %class.omptarget_nvptx_ThreadPrivateContext*, %class.omptarget_nvptx_ThreadPrivateContext** addrspacecast (%class.omptarget_nvptx_ThreadPrivateContext* addrspace(3)* @omptarget_nvptx_threadPrivateContext to %class.omptarget_nvptx_ThreadPrivateContext**), align 8, !tbaa !18
  %158 = getelementptr inbounds %class.omptarget_nvptx_ThreadPrivateContext, %class.omptarget_nvptx_ThreadPrivateContext* %157, i64 0, i32 2, i64 %147
  %159 = load %class.omptarget_nvptx_TaskDescr*, %class.omptarget_nvptx_TaskDescr** %158, align 8, !tbaa !18
  %160 = getelementptr inbounds %class.omptarget_nvptx_TaskDescr, %class.omptarget_nvptx_TaskDescr* %159, i64 0, i32 1, i32 4
  %161 = load i16, i16* %160, align 2, !tbaa !40
  %162 = zext i16 %161 to i32
  %163 = getelementptr inbounds %class.omptarget_nvptx_TaskDescr, %class.omptarget_nvptx_TaskDescr* %159, i64 0, i32 1, i32 5
  %164 = load i16, i16* %163, align 2, !tbaa !40
  %165 = zext i16 %164 to i32
  br label %166

; <label>:166:                                    ; preds = %156, %148
  %167 = phi i32 [ %153, %148 ], [ %162, %156 ]
  %168 = phi i32 [ %155, %148 ], [ %165, %156 ]
  %169 = sdiv i32 %8, %168
  %170 = mul nsw i32 %169, %168
  %171 = sub nsw i32 %8, %170
  %172 = icmp sgt i32 %171, %167
  %173 = add nsw i32 %169, 1
  %174 = mul nsw i32 %173, %167
  %175 = mul nsw i32 %169, %167
  %176 = add i32 %171, %175
  %177 = select i1 %172, i32 %173, i32 %169
  %178 = select i1 %172, i32 %174, i32 %176
  %179 = add i32 %177, -1
  %180 = add i32 %179, %178
  %181 = icmp sgt i32 %180, %132
  %182 = select i1 %181, i32 %132, i32 %180
  %183 = icmp sgt i32 %178, %182
  br i1 %183, label %202, label %184

; <label>:184:                                    ; preds = %166
  %185 = getelementptr inbounds %printf_args.5, %printf_args.5* %6, i64 0, i32 0
  %186 = getelementptr inbounds %printf_args.5, %printf_args.5* %6, i64 0, i32 1
  br label %187

; <label>:187:                                    ; preds = %187, %184
  %188 = phi i32 [ %178, %184 ], [ %200, %187 ]
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds float, float* %4, i64 %189
  %191 = load float, float* %190, align 4, !tbaa !52
  %192 = fmul float %191, %10
  %193 = getelementptr inbounds float, float* %2, i64 %189
  %194 = load float, float* %193, align 4, !tbaa !52
  %195 = fadd float %192, %194
  store float %195, float* %193, align 4, !tbaa !52
  %196 = load float, float* %190, align 4, !tbaa !52
  %197 = fpext float %196 to double
  %198 = fpext float %195 to double
  store double %197, double* %185, align 8
  store double %198, double* %186, align 8
  %199 = call i32 @vprintf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str1, i64 0, i64 0), i8* nonnull %131) #6
  %200 = add nsw i32 %188, 1
  %201 = icmp slt i32 %188, %182
  br i1 %201, label %187, label %202

; <label>:202:                                    ; preds = %187, %130, %166
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %131)
  call void @llvm.nvvm.barrier0() #6
  br i1 %12, label %203, label %227

; <label>:203:                                    ; preds = %202
  %204 = tail call i32 asm "mov.u32 $0, %smid;", "=r"() #7, !srcloc !17
  %205 = urem i32 %204, 56
  %206 = zext i32 %205 to i64
  %207 = getelementptr inbounds [56 x %class.omptarget_nvptx_Queue], [56 x %class.omptarget_nvptx_Queue] addrspace(1)* @omptarget_nvptx_device_State, i64 0, i64 %206
  %208 = addrspacecast %class.omptarget_nvptx_Queue addrspace(1)* %207 to %class.omptarget_nvptx_Queue*
  %209 = load i64, i64* addrspacecast (i64 addrspace(3)* bitcast (%class.omptarget_nvptx_ThreadPrivateContext* addrspace(3)* @omptarget_nvptx_threadPrivateContext to i64 addrspace(3)*) to i64*), align 8, !tbaa !18
  %210 = getelementptr inbounds %class.omptarget_nvptx_Queue, %class.omptarget_nvptx_Queue* %208, i64 0, i32 4
  %211 = atomicrmw add i32* %210, i32 1 seq_cst
  %212 = and i32 %211, 31
  %213 = lshr i32 %211, 4
  %214 = or i32 %213, 1
  %215 = zext i32 %212 to i64
  %216 = getelementptr inbounds %class.omptarget_nvptx_Queue, %class.omptarget_nvptx_Queue* %208, i64 0, i32 3, i64 %215
  br label %217

; <label>:217:                                    ; preds = %217, %203
  %218 = atomicrmw add i32* %216, i32 0 seq_cst
  %219 = icmp eq i32 %218, %214
  br i1 %219, label %220, label %217

; <label>:220:                                    ; preds = %217
  %221 = getelementptr inbounds %class.omptarget_nvptx_Queue, %class.omptarget_nvptx_Queue* %208, i64 0, i32 1, i64 %215
  %222 = bitcast %class.omptarget_nvptx_ThreadPrivateContext** %221 to i64*
  %223 = atomicrmw xchg i64* %222, i64 %209 seq_cst
  %224 = add nuw nsw i32 %214, 1
  %225 = and i32 %224, 33554430
  %226 = atomicrmw xchg i32* %216, i32 %225 seq_cst
  br label %227

; <label>:227:                                    ; preds = %202, %220
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @llvm.nvvm.read.ptx.sreg.ntid.x() #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

declare i32 @vprintf(i8*, i8*) local_unnamed_addr

; Function Attrs: nounwind optsize readnone
declare i32 @llvm.nvvm.read.ptx.sreg.tid.x() #3

; Function Attrs: nounwind optsize
declare void @llvm.nvvm.membar.cta() #4

; Function Attrs: convergent nounwind optsize
declare void @llvm.nvvm.barrier0() #5

attributes #0 = { norecurse nounwind optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="sm_60" "target-features"="+ptx61,+sm_60" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind optsize readnone "correctly-rounded-divide-sqrt-fp-math"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize "correctly-rounded-divide-sqrt-fp-math"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { convergent nounwind optsize "correctly-rounded-divide-sqrt-fp-math"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { convergent nounwind readnone }

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
!11 = !{i32 0, i32 1024}
!12 = !{i32 1, i32 1025}
!13 = !{!14, !14, i64 0}
!14 = !{!"int", !15, i64 0}
!15 = !{!"omnipotent char", !16, i64 0}
!16 = !{!"Simple C++ TBAA"}
!17 = !{i32 1586}
!18 = !{!19, !19, i64 0}
!19 = !{!"any pointer", !15, i64 0}
!20 = !{!21, !15, i64 40}
!21 = !{!"_ZTS25omptarget_nvptx_TaskDescr", !22, i64 0, !25, i64 40, !19, i64 64}
!22 = !{!"_ZTSN25omptarget_nvptx_TaskDescr20SavedLoopDescr_itemsE", !23, i64 0, !23, i64 8, !23, i64 16, !23, i64 24, !24, i64 32}
!23 = !{!"long", !15, i64 0}
!24 = !{!"_ZTS11kmp_sched_t", !15, i64 0}
!25 = !{!"_ZTSN25omptarget_nvptx_TaskDescr15TaskDescr_itemsE", !15, i64 0, !15, i64 1, !26, i64 2, !26, i64 4, !26, i64 6, !26, i64 8, !23, i64 16}
!26 = !{!"short", !15, i64 0}
!27 = !{!21, !26, i64 42}
!28 = !{!21, !26, i64 46}
!29 = !{!21, !26, i64 48}
!30 = !{!21, !23, i64 56}
!31 = !{!32, !33, i64 0}
!32 = !{!"_ZTS28omptarget_nvptx_CounterGroup", !33, i64 0, !33, i64 8, !33, i64 16}
!33 = !{!"long long", !15, i64 0}
!34 = !{!32, !33, i64 8}
!35 = !{!36, !37, i64 96}
!36 = !{!"_ZTS25omptarget_nvptx_WorkDescr", !32, i64 0, !21, i64 24, !37, i64 96}
!37 = !{!"bool", !15, i64 0}
!38 = !{!32, !33, i64 16}
!39 = !{!21, !19, i64 64}
!40 = !{!26, !26, i64 0}
!41 = !{!33, !33, i64 0}
!42 = !{!43, !19, i64 24}
!43 = !{!"_ZTS38__kmpc_data_sharing_master_slot_static", !19, i64 0, !19, i64 8, !19, i64 16, !19, i64 24, !15, i64 32}
!44 = !{!43, !19, i64 0}
!45 = !{!43, !19, i64 8}
!46 = !{!43, !19, i64 16}
!47 = !{!48, !19, i64 24}
!48 = !{!"_ZTS38__kmpc_data_sharing_worker_slot_static", !19, i64 0, !19, i64 8, !19, i64 16, !19, i64 24, !15, i64 32}
!49 = !{!48, !19, i64 0}
!50 = !{!48, !19, i64 8}
!51 = !{!48, !19, i64 16}
!52 = !{!53, !53, i64 0}
!53 = !{!"float", !54, i64 0}
!54 = !{!"omnipotent char", !55, i64 0}
!55 = !{!"Simple C/C++ TBAA"}

; __CLANG_OFFLOAD_BUNDLE____END__ openmp-nvptx64-nvidia-cuda

; __CLANG_OFFLOAD_BUNDLE____START__ host-x86_64-unknown-linux-gnu
; ModuleID = '/tmp/omp-axpy-a8362f.bc'
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
@.omp_offloading.entry.__omp_offloading_10302_40009_axpy_l12 = weak local_unnamed_addr constant %struct.__tgt_offload_entry { i8* @.__omp_offloading_10302_40009_axpy_l12.region_id, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.omp_offloading.entry_name, i32 0, i32 0), i64 0, i32 0, i32 0 }, section ".omp_offloading.entries", align 1
@.omp_offloading.entries_begin = external constant %struct.__tgt_offload_entry
@.omp_offloading.entries_end = external constant %struct.__tgt_offload_entry
@.omp_offloading.img_start.nvptx64-nvidia-cuda = extern_weak constant i8
@.omp_offloading.img_end.nvptx64-nvidia-cuda = extern_weak constant i8
@.omp_offloading.device_images = internal unnamed_addr constant [1 x %struct.__tgt_device_image] [%struct.__tgt_device_image { i8* @.omp_offloading.img_start.nvptx64-nvidia-cuda, i8* @.omp_offloading.img_end.nvptx64-nvidia-cuda, %struct.__tgt_offload_entry* @.omp_offloading.entries_begin, %struct.__tgt_offload_entry* @.omp_offloading.entries_end }], comdat($.omp_offloading.descriptor_reg), align 8
@.omp_offloading.descriptor = internal constant %struct.__tgt_bin_desc { i32 1, %struct.__tgt_device_image* getelementptr inbounds ([1 x %struct.__tgt_device_image], [1 x %struct.__tgt_device_image]* @.omp_offloading.device_images, i32 0, i32 0), %struct.__tgt_offload_entry* @.omp_offloading.entries_begin, %struct.__tgt_offload_entry* @.omp_offloading.entries_end }, comdat($.omp_offloading.descriptor_reg), align 8
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 0, void ()* @.omp_offloading.descriptor_reg, i8* bitcast (void ()* @.omp_offloading.descriptor_reg to i8*) }]

; Function Attrs: nounwind optsize uwtable
define dso_local void @axpy(i32, float*, float*, float) local_unnamed_addr #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca float*, align 8
  %8 = alloca i64, align 8
  %9 = alloca float*, align 8
  %10 = alloca [5 x i8*], align 8
  %11 = alloca [5 x i8*], align 8
  %12 = alloca [5 x i64], align 16
  %13 = zext i32 %0 to i64
  %14 = bitcast float %3 to i32
  %15 = zext i32 %14 to i64
  %16 = shl nuw nsw i64 %13, 2
  %17 = getelementptr inbounds [5 x i8*], [5 x i8*]* %10, i64 0, i64 0
  %18 = bitcast [5 x i8*]* %10 to i64*
  store i64 0, i64* %18, align 8
  %19 = getelementptr inbounds [5 x i8*], [5 x i8*]* %11, i64 0, i64 0
  %20 = bitcast [5 x i8*]* %11 to i64*
  store i64 0, i64* %20, align 8
  %21 = getelementptr inbounds [5 x i64], [5 x i64]* %12, i64 0, i64 0
  %22 = getelementptr inbounds [5 x i8*], [5 x i8*]* %10, i64 0, i64 1
  %23 = bitcast i8** %22 to i64*
  store i64 %13, i64* %23, align 8
  %24 = getelementptr inbounds [5 x i8*], [5 x i8*]* %11, i64 0, i64 1
  %25 = bitcast i8** %24 to i64*
  store i64 %13, i64* %25, align 8
  %26 = bitcast [5 x i64]* %12 to <2 x i64>*
  store <2 x i64> <i64 4, i64 4>, <2 x i64>* %26, align 16
  %27 = getelementptr inbounds [5 x i8*], [5 x i8*]* %10, i64 0, i64 2
  %28 = bitcast i8** %27 to float**
  store float* %1, float** %28, align 8
  %29 = getelementptr inbounds [5 x i8*], [5 x i8*]* %11, i64 0, i64 2
  %30 = bitcast i8** %29 to float**
  store float* %1, float** %30, align 8
  %31 = getelementptr inbounds [5 x i64], [5 x i64]* %12, i64 0, i64 2
  store i64 %16, i64* %31, align 16
  %32 = getelementptr inbounds [5 x i8*], [5 x i8*]* %10, i64 0, i64 3
  %33 = bitcast i8** %32 to i64*
  store i64 %15, i64* %33, align 8
  %34 = getelementptr inbounds [5 x i8*], [5 x i8*]* %11, i64 0, i64 3
  %35 = bitcast i8** %34 to i64*
  store i64 %15, i64* %35, align 8
  %36 = getelementptr inbounds [5 x i64], [5 x i64]* %12, i64 0, i64 3
  store i64 4, i64* %36, align 8
  %37 = getelementptr inbounds [5 x i8*], [5 x i8*]* %10, i64 0, i64 4
  %38 = bitcast i8** %37 to float**
  store float* %2, float** %38, align 8
  %39 = getelementptr inbounds [5 x i8*], [5 x i8*]* %11, i64 0, i64 4
  %40 = bitcast i8** %39 to float**
  store float* %2, float** %40, align 8
  %41 = getelementptr inbounds [5 x i64], [5 x i64]* %12, i64 0, i64 4
  store i64 %16, i64* %41, align 16
  %42 = call i32 @__tgt_target(i64 -1, i8* nonnull @.__omp_offloading_10302_40009_axpy_l12.region_id, i32 5, i8** nonnull %17, i8** nonnull %19, i64* nonnull %21, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @.offload_maptypes, i64 0, i64 0)) #4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %50, label %44

; <label>:44:                                     ; preds = %4
  %45 = bitcast i64* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %45)
  %46 = bitcast i64* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %46)
  %47 = bitcast float** %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %47)
  %48 = bitcast i64* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %48)
  %49 = bitcast float** %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %49)
  store i64 0, i64* %5, align 8, !tbaa !3
  store i64 %13, i64* %6, align 8, !tbaa !3
  store float* %1, float** %7, align 8, !tbaa !7
  store i64 %15, i64* %8, align 8, !tbaa !3
  store float* %2, float** %9, align 8, !tbaa !7
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @1, i32 5, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*, float**, float*, float**)* @.omp_outlined. to void (i32*, i32*, ...)*), i64* nonnull %5, i64* nonnull %6, float** nonnull %7, i64* nonnull %8, float** nonnull %9) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %45)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %46)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %47)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %48)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %49)
  br label %50

; <label>:50:                                     ; preds = %4, %44
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: norecurse nounwind optsize uwtable
define internal void @.omp_outlined.(i32* noalias nocapture readonly, i32* noalias nocapture readnone, i32* nocapture readnone dereferenceable(4), i32* nocapture readonly dereferenceable(4), float** nocapture readonly dereferenceable(8), float* nocapture readonly dereferenceable(4), float** nocapture readonly dereferenceable(8)) #2 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = load i32, i32* %3, align 4, !tbaa !9
  %13 = add nsw i32 %12, -1
  %14 = icmp sgt i32 %12, 0
  br i1 %14, label %15, label %47

; <label>:15:                                     ; preds = %7
  %16 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %16) #4
  store i32 0, i32* %8, align 4, !tbaa !9
  %17 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %17) #4
  store i32 %13, i32* %9, align 4, !tbaa !9
  %18 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %18) #4
  store i32 1, i32* %10, align 4, !tbaa !9
  %19 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %19) #4
  store i32 0, i32* %11, align 4, !tbaa !9
  %20 = load i32, i32* %0, align 4, !tbaa !9
  call void @__kmpc_for_static_init_4(%struct.ident_t* nonnull @0, i32 %20, i32 34, i32* nonnull %11, i32* nonnull %8, i32* nonnull %9, i32* nonnull %10, i32 1, i32 1) #4
  %21 = load i32, i32* %9, align 4, !tbaa !9
  %22 = icmp sgt i32 %21, %13
  %23 = select i1 %22, i32 %13, i32 %21
  store i32 %23, i32* %9, align 4, !tbaa !9
  %24 = load i32, i32* %8, align 4, !tbaa !9
  %25 = icmp sgt i32 %24, %23
  br i1 %25, label %.loopexit, label %26

; <label>:26:                                     ; preds = %15
  %27 = sext i32 %24 to i64
  br label %28

; <label>:28:                                     ; preds = %26, %28
  %29 = phi i64 [ %27, %26 ], [ %43, %28 ]
  %30 = load float, float* %5, align 4, !tbaa !11
  %31 = load float*, float** %6, align 8, !tbaa !7
  %32 = getelementptr inbounds float, float* %31, i64 %29
  %33 = load float, float* %32, align 4, !tbaa !11
  %34 = fmul float %30, %33
  %35 = load float*, float** %4, align 8, !tbaa !7
  %36 = getelementptr inbounds float, float* %35, i64 %29
  %37 = load float, float* %36, align 4, !tbaa !11
  %38 = fadd float %34, %37
  store float %38, float* %36, align 4, !tbaa !11
  %39 = load float, float* %32, align 4, !tbaa !11
  %40 = fpext float %39 to double
  %41 = fpext float %38 to double
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), double %40, double %41) #5
  %43 = add nsw i64 %29, 1
  %44 = load i32, i32* %9, align 4, !tbaa !9
  %45 = sext i32 %44 to i64
  %46 = icmp slt i64 %29, %45
  br i1 %46, label %28, label %.loopexit

.loopexit:                                        ; preds = %28, %15
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull @0, i32 %20) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %18) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %17) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %16) #4
  br label %47

; <label>:47:                                     ; preds = %.loopexit, %7
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32) local_unnamed_addr

; Function Attrs: nounwind optsize
declare dso_local i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #3

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32) local_unnamed_addr

declare dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) local_unnamed_addr

declare dso_local i32 @__tgt_target(i64, i8*, i32, i8**, i8**, i64*, i64*) local_unnamed_addr

; Function Attrs: nounwind optsize uwtable
define dso_local i32 @main(i32, i8** nocapture readnone) local_unnamed_addr #0 {
  %3 = alloca [100 x float], align 16
  %4 = alloca [100 x float], align 16
  br label %8

; <label>:5:                                      ; preds = %8
  %6 = getelementptr inbounds [100 x float], [100 x float]* %4, i64 0, i64 0
  %7 = getelementptr inbounds [100 x float], [100 x float]* %3, i64 0, i64 0
  call void @axpy(i32 100, float* nonnull %7, float* nonnull %6, float 5.000000e-01) #5
  ret i32 0

; <label>:8:                                      ; preds = %8, %2
  %9 = phi i64 [ 0, %2 ], [ %22, %8 ]
  %10 = tail call i32 @rand() #6
  %11 = sitofp i32 %10 to float
  %12 = fdiv float %11, 1.000000e+01
  %13 = fmul float %12, 5.000000e+00
  %14 = getelementptr inbounds [100 x float], [100 x float]* %3, i64 0, i64 %9
  store float %13, float* %14, align 4, !tbaa !11
  %15 = tail call i32 @rand() #6
  %16 = sitofp i32 %15 to float
  %17 = fdiv float %16, 1.000000e+01
  %18 = fmul float %17, 5.000000e+00
  %19 = getelementptr inbounds [100 x float], [100 x float]* %4, i64 0, i64 %9
  store float %18, float* %19, align 4, !tbaa !11
  %20 = fpext float %13 to double
  %21 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), double %20) #5
  %22 = add nuw nsw i64 %9, 1
  %23 = icmp eq i64 %22, 100
  br i1 %23, label %5, label %8
}

; Function Attrs: nounwind optsize
declare dso_local i32 @rand() local_unnamed_addr #3

; Function Attrs: nounwind optsize uwtable
define internal void @.omp_offloading.descriptor_unreg(i8* nocapture readnone) #0 section ".text.startup" comdat($.omp_offloading.descriptor_reg) {
  %2 = tail call i32 @__tgt_unregister_lib(%struct.__tgt_bin_desc* nonnull @.omp_offloading.descriptor) #4
  ret void
}

declare dso_local i32 @__tgt_unregister_lib(%struct.__tgt_bin_desc*) local_unnamed_addr

; Function Attrs: nounwind optsize uwtable
define linkonce hidden void @.omp_offloading.descriptor_reg() #0 section ".text.startup" comdat {
  %1 = tail call i32 @__tgt_register_lib(%struct.__tgt_bin_desc* nonnull @.omp_offloading.descriptor) #4
  %2 = tail call i32 @__cxa_atexit(void (i8*)* nonnull @.omp_offloading.descriptor_unreg, i8* bitcast (%struct.__tgt_bin_desc* @.omp_offloading.descriptor to i8*), i8* nonnull @__dso_handle) #4
  ret void
}

declare dso_local i32 @__tgt_register_lib(%struct.__tgt_bin_desc*) local_unnamed_addr

; Function Attrs: nounwind
declare dso_local i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #4

attributes #0 = { nounwind optsize uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { norecurse nounwind optsize uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { optsize }
attributes #6 = { nounwind optsize }

!omp_offload.info = !{!0}
!llvm.module.flags = !{!1}
!llvm.ident = !{!2}

!0 = !{i32 0, i32 66306, i32 262153, !"axpy", i32 12, i32 0}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"long", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"any pointer", !5, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !5, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"float", !5, i64 0}

; __CLANG_OFFLOAD_BUNDLE____END__ host-x86_64-unknown-linux-gnu
