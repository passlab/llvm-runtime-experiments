; ModuleID = 'omp-axpy-host-x86_64-unknown-linux-gnu.tmp.bc'
source_filename = "omp-axpy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }
%struct.__tgt_offload_entry = type { i8*, i8*, i64, i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"this a tset: %f %f\0A\00", align 1
@1 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@.__omp_offloading_10302_a18a2_axpy_l12.region_id = weak constant i8 0
@.offload_maptypes = private unnamed_addr constant [4 x i64] [i64 800, i64 35, i64 800, i64 33]
@.str.2 = private unnamed_addr constant [15 x i8] c"this is Y: %f\0A\00", align 1
@.omp_offloading.entry_name = internal unnamed_addr constant [38 x i8] c"__omp_offloading_10302_a18a2_axpy_l12\00"
@.omp_offloading.entry.__omp_offloading_10302_a18a2_axpy_l12 = weak constant %struct.__tgt_offload_entry { i8* @.__omp_offloading_10302_a18a2_axpy_l12.region_id, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.omp_offloading.entry_name, i32 0, i32 0), i64 0, i32 0, i32 0 }, section "omp_offloading_entries", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 0, void ()* @.omp_offloading.requires_reg, i8* null }]

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @axpy(i32 %0, float* %1, float* %2, float %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca float, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca [4 x i8*], align 8
  %14 = alloca [4 x i8*], align 8
  %15 = alloca [4 x i64], align 8
  store i32 %0, i32* %5, align 4
  store float* %1, float** %6, align 8
  store float* %2, float** %7, align 8
  store float %3, float* %8, align 4
  %16 = load i32, i32* %5, align 4
  %17 = bitcast i64* %11 to i32*
  store i32 %16, i32* %17, align 4
  %18 = load i64, i64* %11, align 8
  %19 = load float*, float** %6, align 8
  %20 = load float, float* %8, align 4
  %21 = bitcast i64* %12 to float*
  store float %20, float* %21, align 4
  %22 = load i64, i64* %12, align 8
  %23 = load float*, float** %7, align 8
  %24 = load float*, float** %6, align 8
  %25 = load float*, float** %6, align 8
  %26 = getelementptr inbounds float, float* %25, i64 0
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = mul nuw i64 %28, 4
  %30 = load float*, float** %7, align 8
  %31 = load float*, float** %7, align 8
  %32 = getelementptr inbounds float, float* %31, i64 0
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = mul nuw i64 %34, 4
  %36 = getelementptr inbounds [4 x i8*], [4 x i8*]* %13, i32 0, i32 0
  %37 = bitcast i8** %36 to i64*
  store i64 %18, i64* %37, align 8
  %38 = getelementptr inbounds [4 x i8*], [4 x i8*]* %14, i32 0, i32 0
  %39 = bitcast i8** %38 to i64*
  store i64 %18, i64* %39, align 8
  %40 = getelementptr inbounds [4 x i64], [4 x i64]* %15, i32 0, i32 0
  store i64 4, i64* %40, align 8
  %41 = getelementptr inbounds [4 x i8*], [4 x i8*]* %13, i32 0, i32 1
  %42 = bitcast i8** %41 to float**
  store float* %24, float** %42, align 8
  %43 = getelementptr inbounds [4 x i8*], [4 x i8*]* %14, i32 0, i32 1
  %44 = bitcast i8** %43 to float**
  store float* %26, float** %44, align 8
  %45 = getelementptr inbounds [4 x i64], [4 x i64]* %15, i32 0, i32 1
  store i64 %29, i64* %45, align 8
  %46 = getelementptr inbounds [4 x i8*], [4 x i8*]* %13, i32 0, i32 2
  %47 = bitcast i8** %46 to i64*
  store i64 %22, i64* %47, align 8
  %48 = getelementptr inbounds [4 x i8*], [4 x i8*]* %14, i32 0, i32 2
  %49 = bitcast i8** %48 to i64*
  store i64 %22, i64* %49, align 8
  %50 = getelementptr inbounds [4 x i64], [4 x i64]* %15, i32 0, i32 2
  store i64 4, i64* %50, align 8
  %51 = getelementptr inbounds [4 x i8*], [4 x i8*]* %13, i32 0, i32 3
  %52 = bitcast i8** %51 to float**
  store float* %30, float** %52, align 8
  %53 = getelementptr inbounds [4 x i8*], [4 x i8*]* %14, i32 0, i32 3
  %54 = bitcast i8** %53 to float**
  store float* %32, float** %54, align 8
  %55 = getelementptr inbounds [4 x i64], [4 x i64]* %15, i32 0, i32 3
  store i64 %35, i64* %55, align 8
  %56 = getelementptr inbounds [4 x i8*], [4 x i8*]* %13, i32 0, i32 0
  %57 = getelementptr inbounds [4 x i8*], [4 x i8*]* %14, i32 0, i32 0
  %58 = getelementptr inbounds [4 x i64], [4 x i64]* %15, i32 0, i32 0
  %59 = call i32 @__tgt_target_teams(i64 -1, i8* @.__omp_offloading_10302_a18a2_axpy_l12.region_id, i32 4, i8** %56, i8** %57, i64* %58, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @.offload_maptypes, i32 0, i32 0), i32 1, i32 0)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %4
  call void @__omp_offloading_10302_a18a2_axpy_l12(i64 %18, float* %19, i64 %22, float* %23) #3
  br label %62

62:                                               ; preds = %61, %4
  ret void
}

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @__omp_offloading_10302_a18a2_axpy_l12(i64 %0, float* %1, i64 %2, float* %3) #1 {
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
  br i1 %35, label %36, label %92

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

50:                                               ; preds = %85, %47
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* %19, align 4
  %53 = icmp sle i32 %51, %52
  br i1 %53, label %54, label %88

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
  %71 = load float*, float** %26, align 8
  %72 = load i32, i32* %22, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds float, float* %71, i64 %73
  %75 = load float, float* %74, align 4
  %76 = fpext float %75 to double
  %77 = load float*, float** %24, align 8
  %78 = load i32, i32* %22, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds float, float* %77, i64 %79
  %81 = load float, float* %80, align 4
  %82 = fpext float %81 to double
  %83 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), double %76, double %82)
  br label %84

84:                                               ; preds = %54
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %13, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %13, align 4
  br label %50

88:                                               ; preds = %50
  br label %89

89:                                               ; preds = %88
  %90 = load i32*, i32** %7, align 8
  %91 = load i32, i32* %90, align 4
  call void @__kmpc_for_static_fini(%struct.ident_t* @0, i32 %91)
  br label %92

92:                                               ; preds = %89, %6
  ret void
}

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local i32 @printf(i8*, ...) #2

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

20:                                               ; preds = %37, %2
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %40

24:                                               ; preds = %20
  %25 = load i32, i32* %11, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds float, float* %16, i64 %26
  store float 1.000000e+00, float* %27, align 4
  %28 = load i32, i32* %11, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds float, float* %19, i64 %29
  store float 1.000000e+00, float* %30, align 4
  %31 = load i32, i32* %11, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds float, float* %16, i64 %32
  %34 = load float, float* %33, align 4
  %35 = fpext float %34 to double
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), double %35)
  br label %37

37:                                               ; preds = %24
  %38 = load i32, i32* %11, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %11, align 4
  br label %20

40:                                               ; preds = %20
  store float 5.000000e-01, float* %12, align 4
  %41 = load i32, i32* %6, align 4
  %42 = getelementptr inbounds float, float* %16, i64 0
  %43 = getelementptr inbounds float, float* %19, i64 0
  %44 = load float, float* %12, align 4
  call void @axpy(i32 %41, float* %42, float* %43, float %44)
  store i32 0, i32* %3, align 4
  %45 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %45)
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

; Function Attrs: noinline nounwind uwtable
define internal void @.omp_offloading.requires_reg() #4 section ".text.startup" {
  call void @__tgt_register_requires(i64 1)
  ret void
}

declare dso_local void @__tgt_register_requires(i64)

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noinline norecurse nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!omp_offload.info = !{!0}
!llvm.module.flags = !{!1}
!llvm.ident = !{!2}

!0 = !{i32 0, i32 66306, i32 661666, !"axpy", i32 12, i32 0}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{!"clang version 10.0.0 (https://github.com/llvm-mirror/clang.git 65acf43270ea2894dffa0d0b292b92402f80c8cb) (https://github.com/llvm-mirror/llvm.git 2c4ca6832fa6b306ee6a7010bfb80a3f2596f824)"}
!3 = !{!4}
!4 = !{i64 2, i64 -1, i64 -1, i1 true}
