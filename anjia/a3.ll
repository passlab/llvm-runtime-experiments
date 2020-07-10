
; __CLANG_OFFLOAD_BUNDLE____START__ openmp-nvptx64-nvidia-cuda
; ModuleID = 'a3.c'
source_filename = "a3.c"
target datalayout = "e-i64:64-i128:128-v16:16-v32:32-n16:32:64"
target triple = "nvptx64-nvidia-cuda"

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!nvvmir.version = !{!4}
!nvvm.annotations = !{!5, !6, !5, !7, !7, !7, !7, !8, !8, !7}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 10, i32 1]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{!"clang version 10.0.0 (https://github.com/llvm/llvm-project.git 5b5274eaf8c26064b6d10b43171f6252c10f576e)"}
!4 = !{i32 1, i32 4}
!5 = !{null, !"align", i32 8}
!6 = !{null, !"align", i32 8, !"align", i32 65544, !"align", i32 131080}
!7 = !{null, !"align", i32 16}
!8 = !{null, !"align", i32 16, !"align", i32 65552, !"align", i32 131088}

; __CLANG_OFFLOAD_BUNDLE____END__ openmp-nvptx64-nvidia-cuda

; __CLANG_OFFLOAD_BUNDLE____START__ host-x86_64-unknown-linux-gnu
; ModuleID = '/tmp/a3-9b4386.bc'
source_filename = "a3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.offload_maptypes = private unnamed_addr constant [1 x i64] [i64 33]
@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @axpy(i32 %0, float* %1, float* %2, float %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca float, align 4
  %9 = alloca i32, align 4
  %10 = alloca [1 x i8*], align 8
  %11 = alloca [1 x i8*], align 8
  %12 = alloca [1 x i64], align 8
  store i32 %0, i32* %5, align 4
  store float* %1, float** %6, align 8
  store float* %2, float** %7, align 8
  store float %3, float* %8, align 4
  %13 = load float*, float** %7, align 8
  %14 = load float*, float** %7, align 8
  %15 = getelementptr inbounds float, float* %14, i64 0
  %16 = load i32, i32* %5, align 4
  %17 = zext i32 %16 to i64
  %18 = mul nuw i64 %17, 4
  %19 = getelementptr inbounds [1 x i8*], [1 x i8*]* %10, i32 0, i32 0
  %20 = bitcast i8** %19 to float**
  store float* %13, float** %20, align 8
  %21 = getelementptr inbounds [1 x i8*], [1 x i8*]* %11, i32 0, i32 0
  %22 = bitcast i8** %21 to float**
  store float* %15, float** %22, align 8
  %23 = getelementptr inbounds [1 x i64], [1 x i64]* %12, i32 0, i32 0
  store i64 %18, i64* %23, align 8
  %24 = getelementptr inbounds [1 x i8*], [1 x i8*]* %10, i32 0, i32 0
  %25 = getelementptr inbounds [1 x i8*], [1 x i8*]* %11, i32 0, i32 0
  %26 = getelementptr inbounds [1 x i64], [1 x i64]* %12, i32 0, i32 0
  call void @__tgt_target_data_begin(i64 -1, i32 1, i8** %24, i8** %25, i64* %26, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @.offload_maptypes, i32 0, i32 0))
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @1, i32 4, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, float**, float*, float**)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %5, float** %6, float* %8, float** %7)
  ret void
}

declare dso_local void @__tgt_target_data_begin(i64, i32, i8**, i8**, i64*, i64*)

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

declare !callback !2 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noinline norecurse nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.0 (https://github.com/llvm/llvm-project.git 5b5274eaf8c26064b6d10b43171f6252c10f576e)"}
!2 = !{!3}
!3 = !{i64 2, i64 -1, i64 -1, i1 true}

; __CLANG_OFFLOAD_BUNDLE____END__ host-x86_64-unknown-linux-gnu
