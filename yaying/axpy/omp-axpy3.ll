
; __CLANG_OFFLOAD_BUNDLE____START__ openmp-nvptx64-nvidia-cuda
; ModuleID = 'omp-axpy3.c'
source_filename = "omp-axpy3.c"
target datalayout = "e-i64:64-i128:128-v16:16-v32:32-n16:32:64"
target triple = "nvptx64-nvidia-cuda"

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3}
!nvvm.internalize.after.link = !{}
!nvvmir.version = !{!4, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4}
!nvvm.annotations = !{!5, !6, !5, !7, !7, !7, !7, !8, !8, !7, !5, !6, !5, !7, !7, !7, !7, !8, !8, !7, !5, !6, !5, !7, !7, !7, !7, !8, !8, !7, !5, !6, !5, !7, !7, !7, !7, !8, !8, !7, !5, !6, !5, !7, !7, !7, !7, !8, !8, !7, !5, !6, !5, !7, !7, !7, !7, !8, !8, !7, !5, !6, !5, !7, !7, !7, !7, !8, !8, !7, !5, !6, !5, !7, !7, !7, !7, !8, !8, !7, !5, !6, !5, !7, !7, !7, !7, !8, !8, !7, !5, !6, !5, !7, !7, !7, !7, !8, !8, !7, !5, !6, !5, !7, !7, !7, !7, !8, !8, !7}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 4, !"nvvm-reflect-ftz", i32 0}
!3 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
!4 = !{i32 1, i32 4}
!5 = !{null, !"align", i32 8}
!6 = !{null, !"align", i32 8, !"align", i32 65544, !"align", i32 131080}
!7 = !{null, !"align", i32 16}
!8 = !{null, !"align", i32 16, !"align", i32 65552, !"align", i32 131088}

; __CLANG_OFFLOAD_BUNDLE____END__ openmp-nvptx64-nvidia-cuda

; __CLANG_OFFLOAD_BUNDLE____START__ host-x86_64-unknown-linux-gnu
; ModuleID = '/tmp/omp-axpy3-8b1fcf.bc'
source_filename = "omp-axpy3.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"this a tset: %f %f\0A\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"this is Y: %f\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @axpy(i32, float*, float*, float) #0 {
  %5 = alloca i32, align 4
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca float, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store float* %1, float** %6, align 8
  store float* %2, float** %7, align 8
  store float %3, float* %8, align 4
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @1, i32 5, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*, float**, float*, float**)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %9, i32* %5, float** %6, float* %8, float** %7)
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

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noinline norecurse nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}

; __CLANG_OFFLOAD_BUNDLE____END__ host-x86_64-unknown-linux-gnu
