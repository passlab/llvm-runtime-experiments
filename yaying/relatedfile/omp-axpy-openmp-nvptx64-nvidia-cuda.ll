; ModuleID = 'omp-axpy-openmp-nvptx64-nvidia-cuda.tmp.bc'
source_filename = "omp-axpy.c"
target datalayout = "e-i64:64-i128:128-v16:16-v32:32-n16:32:64"
target triple = "nvptx64-nvidia-cuda"

%struct.ident_t = type { i32, i32, i32, i32, i8* }
%class.omptarget_nvptx_Queue = type { [32 x %class.omptarget_nvptx_ThreadPrivateContext], [32 x %class.omptarget_nvptx_ThreadPrivateContext*], i32, [32 x i32], i32, [8 x i8] }
%class.omptarget_nvptx_ThreadPrivateContext = type { %class.omptarget_nvptx_TeamDescr, [1024 x %class.omptarget_nvptx_TaskDescr], [1024 x %class.omptarget_nvptx_TaskDescr*], %union.anon, [1024 x i32], [1024 x i64], [1024 x i64], [1024 x i64], [1024 x i64], i64, [8 x i8] }
%class.omptarget_nvptx_TeamDescr = type { %class.omptarget_nvptx_TaskDescr, %class.omptarget_nvptx_WorkDescr, i64, [8 x i8], [32 x %struct.__kmpc_data_sharing_worker_slot_static], [1 x %struct.__kmpc_data_sharing_master_slot_static] }
%class.omptarget_nvptx_TaskDescr = type { %"struct.omptarget_nvptx_TaskDescr::SavedLoopDescr_items", %"struct.omptarget_nvptx_TaskDescr::TaskDescr_items", %class.omptarget_nvptx_TaskDescr* }
%"struct.omptarget_nvptx_TaskDescr::SavedLoopDescr_items" = type { i64, i64, i64, i64, i32 }
%"struct.omptarget_nvptx_TaskDescr::TaskDescr_items" = type { i8, i8, i16, i64 }
%class.omptarget_nvptx_WorkDescr = type { %class.omptarget_nvptx_TaskDescr }
%struct.__kmpc_data_sharing_worker_slot_static = type { %struct.__kmpc_data_sharing_slot*, %struct.__kmpc_data_sharing_slot*, i8*, i8*, [8192 x i8] }
%struct.__kmpc_data_sharing_slot = type { %struct.__kmpc_data_sharing_slot*, %struct.__kmpc_data_sharing_slot*, i8*, i8*, [0 x i8] }
%struct.__kmpc_data_sharing_master_slot_static = type { %struct.__kmpc_data_sharing_slot*, %struct.__kmpc_data_sharing_slot*, i8*, i8*, [256 x i8] }
%union.anon = type { [1024 x i16] }
%struct.DataSharingStateTy = type { [32 x %struct.__kmpc_data_sharing_slot*], [32 x i8*], [32 x i8*], [32 x i32] }
%printf_args.5 = type { double, double }

@"_openmp_kernel_static_glob_rd$ptr" = internal addrspace(3) global i8* null
@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 3, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@.str1 = private unnamed_addr constant [20 x i8] c"this a tset: %f %f\0A\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 3, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@__omp_offloading_10302_a18a2_axpy_l12_exec_mode = weak constant i8 0
@llvm.compiler.used = appending global [1 x i8*] [i8* @__omp_offloading_10302_a18a2_axpy_l12_exec_mode], section "llvm.metadata"
@execution_param = external dso_local local_unnamed_addr addrspace(3) global i32, align 4
@parallelLevel = external dso_local local_unnamed_addr addrspace(3) global [32 x i8], align 1
@threadsInTeam = external dso_local local_unnamed_addr addrspace(3) global i16, align 2
@usedSlotIdx = external dso_local local_unnamed_addr addrspace(3) global i32, align 4
@omptarget_nvptx_device_State = external dso_local addrspace(1) global [56 x %class.omptarget_nvptx_Queue], align 16
@omptarget_nvptx_threadPrivateContext = external dso_local local_unnamed_addr addrspace(3) global %class.omptarget_nvptx_ThreadPrivateContext*, align 8
@DataSharingState = external dso_local addrspace(3) global %struct.DataSharingStateTy, align 8

; Function Attrs: noinline norecurse nounwind optnone
define weak void @__omp_offloading_10302_a18a2_axpy_l12(i64 %0, float* %1, i64 %2, float* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca float*, align 8
  %7 = alloca i64, align 8
  %8 = alloca float*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %9, align 4
  store i64 %0, i64* %5, align 8
  store float* %1, float** %6, align 8
  store i64 %2, i64* %7, align 8
  store float* %3, float** %8, align 8
  %12 = bitcast i64* %5 to i32*
  %13 = bitcast i64* %7 to float*
  %14 = call i32 @llvm.nvvm.read.ptx.sreg.ntid.x(), !range !12
  call void @__kmpc_spmd_kernel_init(i32 %14, i16 0, i16 0)
  br label %15

15:                                               ; preds = %4
  %16 = call i32 @__kmpc_global_thread_num(%struct.ident_t* @1)
  store i32 %16, i32* %10, align 4
  call void @__omp_outlined__(i32* %10, i32* %11, i32* %12, float** %6, float* %13, float** %8) #8
  br label %17

17:                                               ; preds = %15
  call void @__kmpc_spmd_kernel_deinit_v2(i16 0)
  br label %18

18:                                               ; preds = %17
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @llvm.nvvm.read.ptx.sreg.ntid.x() #1

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
  %23 = alloca %printf_args.5
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store float** %3, float*** %10, align 8
  store float* %4, float** %11, align 8
  store float** %5, float*** %12, align 8
  %24 = load i32*, i32** %9, align 8
  %25 = load float**, float*** %10, align 8
  %26 = load float*, float** %11, align 8
  %27 = load float**, float*** %12, align 8
  %28 = load i32, i32* %24, align 4
  store i32 %28, i32* %15, align 4
  %29 = load i32, i32* %15, align 4
  %30 = sub nsw i32 %29, 0
  %31 = sub nsw i32 %30, 1
  %32 = add nsw i32 %31, 1
  %33 = sdiv i32 %32, 1
  %34 = sub nsw i32 %33, 1
  store i32 %34, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %35 = load i32, i32* %15, align 4
  %36 = icmp slt i32 0, %35
  br i1 %36, label %37, label %108

37:                                               ; preds = %6
  store i32 0, i32* %18, align 4
  %38 = load i32, i32* %16, align 4
  store i32 %38, i32* %19, align 4
  store i32 1, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %39 = load i32*, i32** %7, align 8
  %40 = load i32, i32* %39, align 4
  call void @__kmpc_for_static_init_4(%struct.ident_t* @0, i32 %40, i32 33, i32* %21, i32* %18, i32* %19, i32* %20, i32 1, i32 1)
  br label %41

41:                                               ; preds = %98, %37
  %42 = load i32, i32* %19, align 4
  %43 = load i32, i32* %16, align 4
  %44 = icmp sgt i32 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i32, i32* %16, align 4
  br label %49

47:                                               ; preds = %41
  %48 = load i32, i32* %19, align 4
  br label %49

49:                                               ; preds = %47, %45
  %50 = phi i32 [ %46, %45 ], [ %48, %47 ]
  store i32 %50, i32* %19, align 4
  %51 = load i32, i32* %18, align 4
  store i32 %51, i32* %13, align 4
  %52 = load i32, i32* %13, align 4
  %53 = load i32, i32* %19, align 4
  %54 = icmp sle i32 %52, %53
  br i1 %54, label %55, label %105

55:                                               ; preds = %49
  br label %56

56:                                               ; preds = %94, %55
  %57 = load i32, i32* %13, align 4
  %58 = load i32, i32* %19, align 4
  %59 = icmp sle i32 %57, %58
  br i1 %59, label %60, label %97

60:                                               ; preds = %56
  %61 = load i32, i32* %13, align 4
  %62 = mul nsw i32 %61, 1
  %63 = add nsw i32 0, %62
  store i32 %63, i32* %22, align 4
  %64 = load float, float* %26, align 4
  %65 = load float*, float** %27, align 8
  %66 = load i32, i32* %22, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds float, float* %65, i64 %67
  %69 = load float, float* %68, align 4
  %70 = fmul float %64, %69
  %71 = load float*, float** %25, align 8
  %72 = load i32, i32* %22, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds float, float* %71, i64 %73
  %75 = load float, float* %74, align 4
  %76 = fadd float %75, %70
  store float %76, float* %74, align 4
  %77 = load float*, float** %27, align 8
  %78 = load i32, i32* %22, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds float, float* %77, i64 %79
  %81 = load float, float* %80, align 4
  %82 = fpext float %81 to double
  %83 = load float*, float** %25, align 8
  %84 = load i32, i32* %22, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds float, float* %83, i64 %85
  %87 = load float, float* %86, align 4
  %88 = fpext float %87 to double
  %89 = getelementptr inbounds %printf_args.5, %printf_args.5* %23, i32 0, i32 0
  store double %82, double* %89, align 8
  %90 = getelementptr inbounds %printf_args.5, %printf_args.5* %23, i32 0, i32 1
  store double %88, double* %90, align 8
  %91 = bitcast %printf_args.5* %23 to i8*
  %92 = call i32 @vprintf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str1, i64 0, i64 0), i8* %91)
  br label %93

93:                                               ; preds = %60
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %13, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %13, align 4
  br label %56

97:                                               ; preds = %56
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %18, align 4
  %100 = load i32, i32* %20, align 4
  %101 = add nsw i32 %99, %100
  store i32 %101, i32* %18, align 4
  %102 = load i32, i32* %19, align 4
  %103 = load i32, i32* %20, align 4
  %104 = add nsw i32 %102, %103
  store i32 %104, i32* %19, align 4
  br label %41

105:                                              ; preds = %49
  %106 = load i32*, i32** %7, align 8
  %107 = load i32, i32* %106, align 4
  call void @__kmpc_for_static_fini(%struct.ident_t* @0, i32 %107)
  br label %108

108:                                              ; preds = %105, %6
  ret void
}

declare i32 @vprintf(i8*, i8*)

; Function Attrs: nofree nounwind
define internal void @__kmpc_for_static_init_4(%struct.ident_t* readonly %0, i32 %1, i32 %2, i32* nocapture %3, i32* nocapture %4, i32* nocapture %5, i32* nocapture %6, i32 %7, i32 %8) #2 {
  %10 = icmp eq %struct.ident_t* %0, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %9
  %12 = load i32, i32* addrspacecast (i32 addrspace(3)* @execution_param to i32*), align 4, !tbaa !13
  %13 = and i32 %12, 1
  %14 = icmp ne i32 %13, 0
  br label %27

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %0, i64 0, i32 2
  %17 = load i32, i32* %16, align 8, !tbaa !17
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %15
  %21 = and i32 %17, 2
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %20
  %24 = load i32, i32* addrspacecast (i32 addrspace(3)* @execution_param to i32*), align 4, !tbaa !13
  %25 = and i32 %24, 1
  %26 = icmp ne i32 %25, 0
  br label %27

27:                                               ; preds = %11, %15, %20, %23
  %28 = phi i1 [ %26, %23 ], [ %14, %11 ], [ true, %15 ], [ false, %20 ]
  %29 = tail call i32 @llvm.nvvm.read.ptx.sreg.tid.x() #8, !range !20
  %30 = lshr i32 %29, 5
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds [32 x i8], [32 x i8] addrspace(3)* @parallelLevel, i64 0, i64 %31
  %33 = addrspacecast i8 addrspace(3)* %32 to i8*
  %34 = load i8, i8* %33, align 1, !tbaa !21
  %35 = icmp eq i8 %34, -127
  br i1 %35, label %36, label %42

36:                                               ; preds = %27
  br i1 %28, label %37, label %39

37:                                               ; preds = %36
  %38 = tail call i32 @llvm.nvvm.read.ptx.sreg.ntid.x() #8, !range !12
  br label %42

39:                                               ; preds = %36
  %40 = load i16, i16* addrspacecast (i16 addrspace(3)* @threadsInTeam to i16*), align 2, !tbaa !22
  %41 = zext i16 %40 to i32
  br label %42

42:                                               ; preds = %39, %37, %27
  %43 = phi i32 [ %38, %37 ], [ %41, %39 ], [ 1, %27 ]
  %44 = load i32, i32* %4, align 4, !tbaa !13
  %45 = load i32, i32* %5, align 4, !tbaa !13
  %46 = and i32 %2, -1610612737
  switch i32 %46, label %161 [
    i32 33, label %47
    i32 45, label %60
    i32 34, label %82
    i32 91, label %105
    i32 92, label %120
    i32 93, label %145
  ]

47:                                               ; preds = %42
  %48 = icmp sgt i32 %8, 0
  br i1 %48, label %49, label %82

49:                                               ; preds = %47
  %50 = mul nsw i32 %43, %8
  %51 = mul nsw i32 %8, %1
  %52 = add nsw i32 %44, %51
  %53 = add nsw i32 %8, -1
  %54 = add i32 %53, %52
  %55 = srem i32 %45, %8
  %56 = sub i32 %45, %52
  %57 = sub i32 %56, %55
  %58 = srem i32 %57, %50
  %59 = icmp eq i32 %58, 0
  br label %172

60:                                               ; preds = %42
  %61 = icmp sgt i32 %8, 0
  br i1 %61, label %62, label %82

62:                                               ; preds = %60
  %63 = sub i32 %43, %44
  %64 = add i32 %63, %45
  %65 = sdiv i32 %64, %43
  %66 = add nsw i32 %8, -1
  %67 = add i32 %66, %65
  %68 = sub nsw i32 0, %8
  %69 = and i32 %67, %68
  %70 = mul nsw i32 %69, %43
  %71 = mul nsw i32 %69, %1
  %72 = add nsw i32 %71, %44
  %73 = add i32 %69, -1
  %74 = add i32 %73, %72
  %75 = srem i32 %45, %69
  %76 = sub i32 %45, %75
  %77 = sub i32 %76, %72
  %78 = srem i32 %77, %70
  %79 = icmp eq i32 %78, 0
  %80 = icmp sgt i32 %74, %45
  %81 = select i1 %80, i32 %45, i32 %74
  br label %172

82:                                               ; preds = %60, %47, %42
  %83 = sub nsw i32 %45, %44
  %84 = add nsw i32 %83, 1
  %85 = sdiv i32 %84, %43
  %86 = mul nsw i32 %85, %43
  %87 = sub nsw i32 %84, %86
  %88 = icmp sgt i32 %87, %1
  br i1 %88, label %89, label %93

89:                                               ; preds = %82
  %90 = add nsw i32 %85, 1
  %91 = mul nsw i32 %90, %1
  %92 = add nsw i32 %91, %44
  br label %97

93:                                               ; preds = %82
  %94 = mul nsw i32 %85, %1
  %95 = add i32 %94, %44
  %96 = add i32 %95, %87
  br label %97

97:                                               ; preds = %93, %89
  %98 = phi i32 [ %90, %89 ], [ %85, %93 ]
  %99 = phi i32 [ %92, %89 ], [ %96, %93 ]
  %100 = add nsw i32 %99, %98
  %101 = add nsw i32 %100, -1
  %102 = icmp sle i32 %99, %45
  %103 = icmp slt i32 %45, %100
  %104 = and i1 %102, %103
  br label %172

105:                                              ; preds = %42
  %106 = icmp sgt i32 %8, 0
  br i1 %106, label %107, label %120

107:                                              ; preds = %105
  %108 = tail call i32 @llvm.nvvm.read.ptx.sreg.ctaid.x() #8, !range !24
  %109 = tail call i32 @llvm.nvvm.read.ptx.sreg.nctaid.x() #8, !range !25
  %110 = mul nsw i32 %109, %8
  %111 = mul nsw i32 %108, %8
  %112 = add nsw i32 %111, %44
  %113 = add nsw i32 %8, -1
  %114 = add i32 %113, %112
  %115 = srem i32 %45, %8
  %116 = sub i32 %45, %115
  %117 = sub i32 %116, %112
  %118 = srem i32 %117, %110
  %119 = icmp eq i32 %118, 0
  br label %172

120:                                              ; preds = %105, %42
  %121 = tail call i32 @llvm.nvvm.read.ptx.sreg.ctaid.x() #8, !range !24
  %122 = tail call i32 @llvm.nvvm.read.ptx.sreg.nctaid.x() #8, !range !25
  %123 = sub nsw i32 %45, %44
  %124 = add nsw i32 %123, 1
  %125 = sdiv i32 %124, %122
  %126 = mul nsw i32 %125, %122
  %127 = sub nsw i32 %124, %126
  %128 = icmp sgt i32 %127, %121
  br i1 %128, label %129, label %133

129:                                              ; preds = %120
  %130 = add nsw i32 %125, 1
  %131 = mul nsw i32 %130, %121
  %132 = add nsw i32 %131, %44
  br label %137

133:                                              ; preds = %120
  %134 = mul nsw i32 %125, %121
  %135 = add i32 %134, %44
  %136 = add i32 %135, %127
  br label %137

137:                                              ; preds = %133, %129
  %138 = phi i32 [ %130, %129 ], [ %125, %133 ]
  %139 = phi i32 [ %132, %129 ], [ %136, %133 ]
  %140 = add nsw i32 %139, %138
  %141 = add nsw i32 %140, -1
  %142 = icmp sle i32 %139, %45
  %143 = icmp slt i32 %45, %140
  %144 = and i1 %142, %143
  br label %172

145:                                              ; preds = %42
  %146 = tail call i32 @llvm.nvvm.read.ptx.sreg.ctaid.x() #8, !range !24
  %147 = mul nsw i32 %146, %43
  %148 = add nsw i32 %147, %1
  %149 = tail call i32 @llvm.nvvm.read.ptx.sreg.nctaid.x() #8, !range !25
  %150 = mul i32 %43, %8
  %151 = mul i32 %150, %149
  %152 = mul nsw i32 %148, %8
  %153 = add nsw i32 %152, %44
  %154 = add i32 %8, -1
  %155 = add i32 %154, %153
  %156 = srem i32 %45, %8
  %157 = sub i32 %45, %156
  %158 = sub i32 %157, %153
  %159 = srem i32 %158, %151
  %160 = icmp eq i32 %159, 0
  br label %172

161:                                              ; preds = %42
  %162 = mul nsw i32 %43, %8
  %163 = mul nsw i32 %8, %1
  %164 = add nsw i32 %44, %163
  %165 = add i32 %8, -1
  %166 = add i32 %165, %164
  %167 = srem i32 %45, %8
  %168 = sub i32 %45, %164
  %169 = sub i32 %168, %167
  %170 = srem i32 %169, %162
  %171 = icmp eq i32 %170, 0
  br label %172

172:                                              ; preds = %49, %62, %97, %107, %137, %145, %161
  %173 = phi i1 [ %171, %161 ], [ %160, %145 ], [ %144, %137 ], [ %119, %107 ], [ %104, %97 ], [ %59, %49 ], [ %79, %62 ]
  %174 = phi i32 [ %164, %161 ], [ %153, %145 ], [ %139, %137 ], [ %112, %107 ], [ %99, %97 ], [ %52, %49 ], [ %72, %62 ]
  %175 = phi i32 [ %166, %161 ], [ %155, %145 ], [ %141, %137 ], [ %114, %107 ], [ %101, %97 ], [ %54, %49 ], [ %81, %62 ]
  %176 = phi i32 [ %162, %161 ], [ %151, %145 ], [ %124, %137 ], [ %110, %107 ], [ %84, %97 ], [ %50, %49 ], [ %70, %62 ]
  %177 = zext i1 %173 to i32
  store i32 %177, i32* %3, align 4, !tbaa !13
  store i32 %174, i32* %4, align 4, !tbaa !13
  store i32 %175, i32* %5, align 4, !tbaa !13
  store i32 %176, i32* %6, align 4, !tbaa !13
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @llvm.nvvm.read.ptx.sreg.tid.x() #1

; Function Attrs: nounwind readnone
declare i32 @llvm.nvvm.read.ptx.sreg.ctaid.x() #1

; Function Attrs: nounwind readnone
declare i32 @llvm.nvvm.read.ptx.sreg.nctaid.x() #1

; Function Attrs: norecurse nounwind readnone
define internal void @__kmpc_for_static_fini(%struct.ident_t* nocapture %0, i32 %1) #3 {
  ret void
}

; Function Attrs: convergent nounwind
define internal void @__kmpc_spmd_kernel_init(i32 %0, i16 signext %1, i16 signext %2) #4 {
  %4 = icmp ne i16 %1, 0
  %5 = select i1 %4, i32 1, i32 3
  store i32 %5, i32* addrspacecast (i32 addrspace(3)* @execution_param to i32*), align 4, !tbaa !13
  %6 = tail call i32 @llvm.nvvm.read.ptx.sreg.tid.x() #8, !range !20
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %3
  %9 = tail call i32 asm "mov.u32 $0, %smid;", "=r"() #9, !srcloc !26
  %10 = urem i32 %9, 56
  store i32 %10, i32* addrspacecast (i32 addrspace(3)* @usedSlotIdx to i32*), align 4, !tbaa !13
  br label %19

11:                                               ; preds = %3
  %12 = and i32 %6, 31
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %11
  %15 = lshr i32 %6, 5
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds [32 x i8], [32 x i8] addrspace(3)* @parallelLevel, i64 0, i64 %16
  %18 = addrspacecast i8 addrspace(3)* %17 to i8*
  br label %19

19:                                               ; preds = %8, %14
  %20 = phi i8* [ %18, %14 ], [ getelementptr inbounds ([32 x i8], [32 x i8]* addrspacecast ([32 x i8] addrspace(3)* @parallelLevel to [32 x i8]*), i64 0, i64 0), %8 ]
  %21 = tail call i32 @llvm.nvvm.read.ptx.sreg.ntid.x() #8, !range !12
  %22 = icmp ugt i32 %21, 1
  %23 = select i1 %22, i8 -127, i8 1
  store i8 %23, i8* %20, align 1, !tbaa !21
  br label %24

24:                                               ; preds = %19, %11
  br i1 %4, label %26, label %25

25:                                               ; preds = %24
  tail call void @llvm.nvvm.barrier0() #8
  br label %104

26:                                               ; preds = %24
  br i1 %7, label %27, label %55

27:                                               ; preds = %26
  %28 = load i32, i32* addrspacecast (i32 addrspace(3)* @usedSlotIdx to i32*), align 4, !tbaa !13
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds [56 x %class.omptarget_nvptx_Queue], [56 x %class.omptarget_nvptx_Queue] addrspace(1)* @omptarget_nvptx_device_State, i64 0, i64 %29
  %31 = addrspacecast %class.omptarget_nvptx_Queue addrspace(1)* %30 to %class.omptarget_nvptx_Queue*
  %32 = getelementptr inbounds %class.omptarget_nvptx_Queue, %class.omptarget_nvptx_Queue* %31, i64 0, i32 2
  %33 = tail call fastcc i32 @_ZL9atomicAddPjj7(i32* nonnull %32, i32 1) #8
  %34 = and i32 %33, 31
  %35 = lshr i32 %33, 5
  %36 = shl nuw nsw i32 %35, 1
  %37 = zext i32 %34 to i64
  %38 = getelementptr inbounds %class.omptarget_nvptx_Queue, %class.omptarget_nvptx_Queue* %31, i64 0, i32 3, i64 %37
  br label %39

39:                                               ; preds = %39, %27
  %40 = tail call fastcc i32 @_ZL9atomicAddPjj7(i32* nonnull %38, i32 0) #8
  %41 = icmp eq i32 %40, %36
  br i1 %41, label %42, label %39

42:                                               ; preds = %39
  %43 = getelementptr inbounds %class.omptarget_nvptx_Queue, %class.omptarget_nvptx_Queue* %31, i64 0, i32 1, i64 %37
  %44 = bitcast %class.omptarget_nvptx_ThreadPrivateContext** %43 to i64*
  %45 = tail call fastcc i64 @_ZL9atomicAddPyy8(i64* nonnull %44) #8
  %46 = inttoptr i64 %45 to %class.omptarget_nvptx_ThreadPrivateContext*
  %47 = icmp eq i64 %45, 0
  %48 = getelementptr inbounds %class.omptarget_nvptx_Queue, %class.omptarget_nvptx_Queue* %31, i64 0, i32 0, i64 %37
  %49 = select i1 %47, %class.omptarget_nvptx_ThreadPrivateContext* %48, %class.omptarget_nvptx_ThreadPrivateContext* %46
  %50 = and i32 %36, 33554430
  %51 = or i32 %50, 1
  tail call fastcc void @_ZL10atomicExchPjj9(i32* nonnull %38, i32 %51) #8
  store %class.omptarget_nvptx_ThreadPrivateContext* %49, %class.omptarget_nvptx_ThreadPrivateContext** addrspacecast (%class.omptarget_nvptx_ThreadPrivateContext* addrspace(3)* @omptarget_nvptx_threadPrivateContext to %class.omptarget_nvptx_ThreadPrivateContext**), align 8, !tbaa !27
  %52 = getelementptr inbounds %class.omptarget_nvptx_ThreadPrivateContext, %class.omptarget_nvptx_ThreadPrivateContext* %49, i64 0, i32 0, i32 0, i32 1, i32 0
  store i8 0, i8* %52, align 8, !tbaa !28
  %53 = getelementptr inbounds %class.omptarget_nvptx_ThreadPrivateContext, %class.omptarget_nvptx_ThreadPrivateContext* %49, i64 0, i32 0, i32 0, i32 1, i32 2
  store i16 0, i16* %53, align 2, !tbaa !34
  %54 = getelementptr inbounds %class.omptarget_nvptx_ThreadPrivateContext, %class.omptarget_nvptx_ThreadPrivateContext* %49, i64 0, i32 0, i32 0, i32 1, i32 3
  store i64 1, i64* %54, align 8, !tbaa !35
  br label %55

55:                                               ; preds = %42, %26
  tail call void @llvm.nvvm.barrier0() #8
  %56 = load %class.omptarget_nvptx_ThreadPrivateContext*, %class.omptarget_nvptx_ThreadPrivateContext** addrspacecast (%class.omptarget_nvptx_ThreadPrivateContext* addrspace(3)* @omptarget_nvptx_threadPrivateContext to %class.omptarget_nvptx_ThreadPrivateContext**), align 8, !tbaa !27
  %57 = zext i32 %6 to i64
  %58 = getelementptr inbounds %class.omptarget_nvptx_ThreadPrivateContext, %class.omptarget_nvptx_ThreadPrivateContext* %56, i64 0, i32 1, i64 %57
  %59 = getelementptr inbounds %class.omptarget_nvptx_ThreadPrivateContext, %class.omptarget_nvptx_ThreadPrivateContext* %56, i64 0, i32 0, i32 0
  %60 = getelementptr inbounds %class.omptarget_nvptx_ThreadPrivateContext, %class.omptarget_nvptx_ThreadPrivateContext* %56, i64 0, i32 1, i64 %57, i32 1, i32 0
  store i8 48, i8* %60, align 8, !tbaa !28
  %61 = trunc i32 %6 to i16
  %62 = getelementptr inbounds %class.omptarget_nvptx_ThreadPrivateContext, %class.omptarget_nvptx_ThreadPrivateContext* %56, i64 0, i32 1, i64 %57, i32 1, i32 2
  store i16 %61, i16* %62, align 2, !tbaa !34
  %63 = getelementptr inbounds %class.omptarget_nvptx_ThreadPrivateContext, %class.omptarget_nvptx_ThreadPrivateContext* %56, i64 0, i32 1, i64 %57, i32 1, i32 3
  store i64 1, i64* %63, align 8, !tbaa !35
  %64 = getelementptr inbounds %class.omptarget_nvptx_ThreadPrivateContext, %class.omptarget_nvptx_ThreadPrivateContext* %56, i64 0, i32 1, i64 %57, i32 2
  store %class.omptarget_nvptx_TaskDescr* %59, %class.omptarget_nvptx_TaskDescr** %64, align 8, !tbaa !36
  %65 = load %class.omptarget_nvptx_ThreadPrivateContext*, %class.omptarget_nvptx_ThreadPrivateContext** addrspacecast (%class.omptarget_nvptx_ThreadPrivateContext* addrspace(3)* @omptarget_nvptx_threadPrivateContext to %class.omptarget_nvptx_ThreadPrivateContext**), align 8, !tbaa !27
  %66 = getelementptr inbounds %class.omptarget_nvptx_ThreadPrivateContext, %class.omptarget_nvptx_ThreadPrivateContext* %65, i64 0, i32 2, i64 %57
  store %class.omptarget_nvptx_TaskDescr* %58, %class.omptarget_nvptx_TaskDescr** %66, align 8, !tbaa !27
  %67 = icmp ne i16 %2, 0
  %68 = and i32 %6, 31
  %69 = icmp eq i32 %68, 0
  %70 = and i1 %67, %69
  br i1 %70, label %71, label %104

71:                                               ; preds = %55
  %72 = lshr i32 %6, 5
  %73 = and i32 %6, 992
  %74 = icmp eq i32 %73, 992
  br i1 %74, label %75, label %86

75:                                               ; preds = %71
  %76 = getelementptr inbounds %class.omptarget_nvptx_ThreadPrivateContext, %class.omptarget_nvptx_ThreadPrivateContext* %56, i64 0, i32 0, i32 5, i64 0
  %77 = getelementptr inbounds %class.omptarget_nvptx_ThreadPrivateContext, %class.omptarget_nvptx_ThreadPrivateContext* %56, i64 0, i32 0, i32 5, i64 0, i32 3
  %78 = load i8*, i8** %77, align 8, !tbaa !37
  %79 = getelementptr inbounds %class.omptarget_nvptx_ThreadPrivateContext, %class.omptarget_nvptx_ThreadPrivateContext* %56, i64 0, i32 0, i32 5, i64 0, i32 4, i64 256
  %80 = icmp eq i8* %78, %79
  br i1 %80, label %98, label %81

81:                                               ; preds = %75
  store i8* %79, i8** %77, align 8, !tbaa !37
  %82 = getelementptr inbounds %struct.__kmpc_data_sharing_master_slot_static, %struct.__kmpc_data_sharing_master_slot_static* %76, i64 0, i32 0
  store %struct.__kmpc_data_sharing_slot* null, %struct.__kmpc_data_sharing_slot** %82, align 16, !tbaa !39
  %83 = getelementptr inbounds %class.omptarget_nvptx_ThreadPrivateContext, %class.omptarget_nvptx_ThreadPrivateContext* %56, i64 0, i32 0, i32 5, i64 0, i32 1
  store %struct.__kmpc_data_sharing_slot* null, %struct.__kmpc_data_sharing_slot** %83, align 8, !tbaa !40
  %84 = getelementptr inbounds %class.omptarget_nvptx_ThreadPrivateContext, %class.omptarget_nvptx_ThreadPrivateContext* %56, i64 0, i32 0, i32 5, i64 0, i32 2
  store i8* null, i8** %84, align 16, !tbaa !41
  %85 = bitcast %struct.__kmpc_data_sharing_master_slot_static* %76 to %struct.__kmpc_data_sharing_slot*
  br label %98

86:                                               ; preds = %71
  %87 = zext i32 %72 to i64
  %88 = getelementptr inbounds %class.omptarget_nvptx_ThreadPrivateContext, %class.omptarget_nvptx_ThreadPrivateContext* %56, i64 0, i32 0, i32 4, i64 %87
  %89 = getelementptr inbounds %class.omptarget_nvptx_ThreadPrivateContext, %class.omptarget_nvptx_ThreadPrivateContext* %56, i64 0, i32 0, i32 4, i64 %87, i32 3
  %90 = load i8*, i8** %89, align 8, !tbaa !42
  %91 = getelementptr inbounds %class.omptarget_nvptx_ThreadPrivateContext, %class.omptarget_nvptx_ThreadPrivateContext* %56, i64 0, i32 0, i32 4, i64 %87, i32 4, i64 8192
  %92 = icmp eq i8* %90, %91
  br i1 %92, label %98, label %93

93:                                               ; preds = %86
  %94 = getelementptr inbounds %struct.__kmpc_data_sharing_worker_slot_static, %struct.__kmpc_data_sharing_worker_slot_static* %88, i64 0, i32 0
  %95 = getelementptr inbounds %class.omptarget_nvptx_ThreadPrivateContext, %class.omptarget_nvptx_ThreadPrivateContext* %56, i64 0, i32 0, i32 4, i64 %87, i32 1
  %96 = getelementptr inbounds %class.omptarget_nvptx_ThreadPrivateContext, %class.omptarget_nvptx_ThreadPrivateContext* %56, i64 0, i32 0, i32 4, i64 %87, i32 2
  %97 = bitcast %struct.__kmpc_data_sharing_worker_slot_static* %88 to %struct.__kmpc_data_sharing_slot*
  store i8* %91, i8** %89, align 8, !tbaa !42
  store %struct.__kmpc_data_sharing_slot* null, %struct.__kmpc_data_sharing_slot** %94, align 16, !tbaa !44
  store %struct.__kmpc_data_sharing_slot* null, %struct.__kmpc_data_sharing_slot** %95, align 8, !tbaa !45
  store i8* null, i8** %96, align 16, !tbaa !46
  br label %98

98:                                               ; preds = %75, %81, %86, %93
  %99 = phi %struct.__kmpc_data_sharing_slot* [ %85, %81 ], [ %97, %93 ], [ null, %75 ], [ null, %86 ]
  %100 = zext i32 %72 to i64
  %101 = getelementptr %struct.DataSharingStateTy, %struct.DataSharingStateTy* addrspacecast (%struct.DataSharingStateTy addrspace(3)* @DataSharingState to %struct.DataSharingStateTy*), i64 0, i32 0, i64 %100
  store %struct.__kmpc_data_sharing_slot* %99, %struct.__kmpc_data_sharing_slot** %101, align 8, !tbaa !27
  %102 = getelementptr inbounds %struct.__kmpc_data_sharing_slot, %struct.__kmpc_data_sharing_slot* %99, i64 0, i32 4, i64 0
  %103 = getelementptr %struct.DataSharingStateTy, %struct.DataSharingStateTy* addrspacecast (%struct.DataSharingStateTy addrspace(3)* @DataSharingState to %struct.DataSharingStateTy*), i64 0, i32 1, i64 %100
  store i8* %102, i8** %103, align 8, !tbaa !27
  br label %104

104:                                              ; preds = %55, %98, %25
  ret void
}

; Function Attrs: convergent nounwind
declare void @llvm.nvvm.barrier0() #5

; Function Attrs: inlinehint nofree norecurse nounwind
define internal fastcc i32 @_ZL9atomicAddPjj7(i32* nocapture %0, i32 %1) unnamed_addr #6 {
  %3 = atomicrmw add i32* %0, i32 %1 seq_cst
  ret i32 %3
}

; Function Attrs: inlinehint nofree norecurse nounwind
define internal fastcc i64 @_ZL9atomicAddPyy8(i64* nocapture %0) unnamed_addr #6 {
  %2 = atomicrmw or i64* %0, i64 0 seq_cst
  ret i64 %2
}

; Function Attrs: inlinehint nofree norecurse nounwind
define internal fastcc void @_ZL10atomicExchPjj9(i32* nocapture %0, i32 %1) unnamed_addr #6 {
  %3 = atomicrmw xchg i32* %0, i32 %1 seq_cst
  ret void
}

; Function Attrs: convergent nounwind
define internal void @__kmpc_spmd_kernel_deinit_v2(i16 signext %0) #4 {
  %2 = icmp eq i16 %0, 0
  br i1 %2, label %27, label %3

3:                                                ; preds = %1
  tail call void @llvm.nvvm.barrier0() #8
  %4 = tail call i32 @llvm.nvvm.read.ptx.sreg.tid.x() #8, !range !20
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %27

6:                                                ; preds = %3
  %7 = load i32, i32* addrspacecast (i32 addrspace(3)* @usedSlotIdx to i32*), align 4, !tbaa !13
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [56 x %class.omptarget_nvptx_Queue], [56 x %class.omptarget_nvptx_Queue] addrspace(1)* @omptarget_nvptx_device_State, i64 0, i64 %8
  %10 = addrspacecast %class.omptarget_nvptx_Queue addrspace(1)* %9 to %class.omptarget_nvptx_Queue*
  %11 = load i64, i64* addrspacecast (i64 addrspace(3)* bitcast (%class.omptarget_nvptx_ThreadPrivateContext* addrspace(3)* @omptarget_nvptx_threadPrivateContext to i64 addrspace(3)*) to i64*), align 8, !tbaa !27
  %12 = getelementptr inbounds %class.omptarget_nvptx_Queue, %class.omptarget_nvptx_Queue* %10, i64 0, i32 4
  %13 = tail call fastcc i32 @_ZL9atomicAddPjj7(i32* nonnull %12, i32 1) #8
  %14 = and i32 %13, 31
  %15 = lshr i32 %13, 4
  %16 = or i32 %15, 1
  %17 = zext i32 %14 to i64
  %18 = getelementptr inbounds %class.omptarget_nvptx_Queue, %class.omptarget_nvptx_Queue* %10, i64 0, i32 3, i64 %17
  br label %19

19:                                               ; preds = %19, %6
  %20 = tail call fastcc i32 @_ZL9atomicAddPjj7(i32* nonnull %18, i32 0) #8
  %21 = icmp eq i32 %20, %16
  br i1 %21, label %22, label %19

22:                                               ; preds = %19
  %23 = getelementptr inbounds %class.omptarget_nvptx_Queue, %class.omptarget_nvptx_Queue* %10, i64 0, i32 1, i64 %17
  %24 = bitcast %class.omptarget_nvptx_ThreadPrivateContext** %23 to i64*
  tail call fastcc void @_ZL10atomicExchPyy(i64* nonnull %24, i64 %11) #8
  %25 = add nuw nsw i32 %16, 1
  %26 = and i32 %25, 33554430
  tail call fastcc void @_ZL10atomicExchPjj9(i32* nonnull %18, i32 %26) #8
  br label %27

27:                                               ; preds = %3, %22, %1
  ret void
}

; Function Attrs: inlinehint nofree norecurse nounwind
define internal fastcc void @_ZL10atomicExchPyy(i64* nocapture %0, i64 %1) unnamed_addr #6 {
  %3 = atomicrmw xchg i64* %0, i64 %1 seq_cst
  ret void
}

; Function Attrs: nounwind readonly
define internal i32 @__kmpc_global_thread_num(%struct.ident_t* readonly %0) #7 {
  %2 = icmp eq %struct.ident_t* %0, null
  br i1 %2, label %20, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %0, i64 0, i32 2
  %5 = load i32, i32* %4, align 8, !tbaa !17
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %3
  %9 = tail call i32 @llvm.nvvm.read.ptx.sreg.tid.x() #8, !range !20
  br label %31

10:                                               ; preds = %3
  %11 = and i32 %5, 2
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = tail call i32 @llvm.nvvm.read.ptx.sreg.tid.x() #8, !range !20
  br label %25

15:                                               ; preds = %10
  %16 = load i32, i32* addrspacecast (i32 addrspace(3)* @execution_param to i32*), align 4, !tbaa !13
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  %19 = tail call i32 @llvm.nvvm.read.ptx.sreg.tid.x() #8, !range !20
  br i1 %18, label %25, label %31

20:                                               ; preds = %1
  %21 = load i32, i32* addrspacecast (i32 addrspace(3)* @execution_param to i32*), align 4, !tbaa !13
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  %24 = tail call i32 @llvm.nvvm.read.ptx.sreg.tid.x() #8, !range !20
  br i1 %23, label %25, label %31

25:                                               ; preds = %20, %15, %13
  %26 = phi i32 [ %14, %13 ], [ %24, %20 ], [ %19, %15 ]
  %27 = tail call i32 @llvm.nvvm.read.ptx.sreg.ntid.x() #8, !range !12
  %28 = add nsw i32 %27, -1
  %29 = and i32 %28, -32
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %20, %15, %8, %25
  %32 = phi i32 [ %9, %8 ], [ %26, %25 ], [ %24, %20 ], [ %19, %15 ]
  br label %33

33:                                               ; preds = %25, %31
  %34 = phi i32 [ %32, %31 ], [ %26, %25 ]
  %35 = phi i32 [ %32, %31 ], [ 0, %25 ]
  br i1 %2, label %36, label %40

36:                                               ; preds = %33
  %37 = load i32, i32* addrspacecast (i32 addrspace(3)* @execution_param to i32*), align 4, !tbaa !13
  %38 = and i32 %37, 1
  %39 = icmp ne i32 %38, 0
  br label %52

40:                                               ; preds = %33
  %41 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %0, i64 0, i32 2
  %42 = load i32, i32* %41, align 8, !tbaa !17
  %43 = and i32 %42, 1
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %40
  %46 = and i32 %42, 2
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %45
  %49 = load i32, i32* addrspacecast (i32 addrspace(3)* @execution_param to i32*), align 4, !tbaa !13
  %50 = and i32 %49, 1
  %51 = icmp ne i32 %50, 0
  br label %52

52:                                               ; preds = %36, %40, %45, %48
  %53 = phi i1 [ %51, %48 ], [ %39, %36 ], [ true, %40 ], [ false, %45 ]
  %54 = lshr i32 %34, 5
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds [32 x i8], [32 x i8] addrspace(3)* @parallelLevel, i64 0, i64 %55
  %57 = addrspacecast i8 addrspace(3)* %56 to i8*
  %58 = load i8, i8* %57, align 1, !tbaa !21
  %59 = and i8 %58, 126
  %60 = icmp ne i8 %59, 0
  %61 = or i1 %53, %60
  %62 = select i1 %60, i32 0, i32 %34
  br i1 %61, label %71, label %63

63:                                               ; preds = %52
  %64 = load %class.omptarget_nvptx_ThreadPrivateContext*, %class.omptarget_nvptx_ThreadPrivateContext** addrspacecast (%class.omptarget_nvptx_ThreadPrivateContext* addrspace(3)* @omptarget_nvptx_threadPrivateContext to %class.omptarget_nvptx_ThreadPrivateContext**), align 8, !tbaa !27
  %65 = sext i32 %35 to i64
  %66 = getelementptr inbounds %class.omptarget_nvptx_ThreadPrivateContext, %class.omptarget_nvptx_ThreadPrivateContext* %64, i64 0, i32 2, i64 %65
  %67 = load %class.omptarget_nvptx_TaskDescr*, %class.omptarget_nvptx_TaskDescr** %66, align 8, !tbaa !27
  %68 = getelementptr inbounds %class.omptarget_nvptx_TaskDescr, %class.omptarget_nvptx_TaskDescr* %67, i64 0, i32 1, i32 2
  %69 = load i16, i16* %68, align 2, !tbaa !22
  %70 = zext i16 %69 to i32
  br label %71

71:                                               ; preds = %52, %63
  %72 = phi i32 [ %70, %63 ], [ %62, %52 ]
  ret i32 %72
}

attributes #0 = { noinline norecurse nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="sm_60" "target-features"="+ptx61,+sm_60" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nofree nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="sm_60" "target-features"="+ptx61,+sm_60" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { norecurse nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="sm_60" "target-features"="+ptx61,+sm_60" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { convergent nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="sm_60" "target-features"="+ptx61,+sm_60" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { convergent nounwind }
attributes #6 = { inlinehint nofree norecurse nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="sm_60" "target-features"="+ptx61,+sm_60" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="sm_60" "target-features"="+ptx61,+sm_60" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind }
attributes #9 = { convergent nounwind readnone }

!llvm.module.flags = !{!0, !1, !2, !3}
!omp_offload.info = !{!4}
!nvvm.annotations = !{!5, !6, !7, !6, !8, !8, !8, !8, !9, !9, !8, !6, !7, !6, !8, !8, !8, !8, !9, !9, !8, !6, !7, !6, !8, !8, !8, !8, !9, !9, !8, !6, !7, !6, !8, !8, !8, !8, !9, !9, !8, !6, !7, !6, !8, !8, !8, !8, !9, !9, !8, !6, !7, !6, !8, !8, !8, !8, !9, !9, !8, !6, !7, !6, !8, !8, !8, !8, !9, !9, !8, !6, !7, !6, !8, !8, !8, !8, !9, !9, !8, !6, !7, !6, !8, !8, !8, !8, !9, !9, !8, !6, !7, !6, !8, !8, !8, !8, !9, !9, !8, !6, !7, !6, !8, !8, !8, !8, !9, !9, !8}
!llvm.ident = !{!10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10}
!nvvm.internalize.after.link = !{}
!nvvmir.version = !{!11, !11, !11, !11, !11, !11, !11, !11, !11, !11, !11}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 9, i32 2]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{i32 4, !"nvvm-reflect-ftz", i32 0}
!4 = !{i32 0, i32 66306, i32 661666, !"axpy", i32 12, i32 0}
!5 = !{void (i64, float*, i64, float*)* @__omp_offloading_10302_a18a2_axpy_l12, !"kernel", i32 1}
!6 = !{null, !"align", i32 8}
!7 = !{null, !"align", i32 8, !"align", i32 65544, !"align", i32 131080}
!8 = !{null, !"align", i32 16}
!9 = !{null, !"align", i32 16, !"align", i32 65552, !"align", i32 131088}
!10 = !{!"clang version 10.0.0 (https://github.com/llvm-mirror/clang.git 65acf43270ea2894dffa0d0b292b92402f80c8cb) (https://github.com/llvm-mirror/llvm.git 2c4ca6832fa6b306ee6a7010bfb80a3f2596f824)"}
!11 = !{i32 1, i32 4}
!12 = !{i32 1, i32 1025}
!13 = !{!14, !14, i64 0}
!14 = !{!"int", !15, i64 0}
!15 = !{!"omnipotent char", !16, i64 0}
!16 = !{!"Simple C++ TBAA"}
!17 = !{!18, !14, i64 8}
!18 = !{!"_ZTS5ident", !14, i64 0, !14, i64 4, !14, i64 8, !14, i64 12, !19, i64 16}
!19 = !{!"any pointer", !15, i64 0}
!20 = !{i32 0, i32 1024}
!21 = !{!15, !15, i64 0}
!22 = !{!23, !23, i64 0}
!23 = !{!"short", !15, i64 0}
!24 = !{i32 0, i32 2147483647}
!25 = !{i32 1, i32 -2147483648}
!26 = !{i32 1140}
!27 = !{!19, !19, i64 0}
!28 = !{!29, !15, i64 40}
!29 = !{!"_ZTS25omptarget_nvptx_TaskDescr", !30, i64 0, !33, i64 40, !19, i64 56}
!30 = !{!"_ZTSN25omptarget_nvptx_TaskDescr20SavedLoopDescr_itemsE", !31, i64 0, !31, i64 8, !31, i64 16, !31, i64 24, !32, i64 32}
!31 = !{!"long", !15, i64 0}
!32 = !{!"_ZTS11kmp_sched_t", !15, i64 0}
!33 = !{!"_ZTSN25omptarget_nvptx_TaskDescr15TaskDescr_itemsE", !15, i64 0, !15, i64 1, !23, i64 2, !31, i64 8}
!34 = !{!29, !23, i64 42}
!35 = !{!29, !31, i64 48}
!36 = !{!29, !19, i64 56}
!37 = !{!38, !19, i64 24}
!38 = !{!"_ZTS38__kmpc_data_sharing_master_slot_static", !19, i64 0, !19, i64 8, !19, i64 16, !19, i64 24, !15, i64 32}
!39 = !{!38, !19, i64 0}
!40 = !{!38, !19, i64 8}
!41 = !{!38, !19, i64 16}
!42 = !{!43, !19, i64 24}
!43 = !{!"_ZTS38__kmpc_data_sharing_worker_slot_static", !19, i64 0, !19, i64 8, !19, i64 16, !19, i64 24, !15, i64 32}
!44 = !{!43, !19, i64 0}
!45 = !{!43, !19, i64 8}
!46 = !{!43, !19, i64 16}
