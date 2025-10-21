; ModuleID = '__compute_module_slice_convert_fusion.3_kernel_module'
source_filename = "__compute_module_slice_convert_fusion.3_kernel_module"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%XLA_CPU_KernelCallFrame = type { ptr, ptr, i64, ptr }
%XLA_CPU_KernelArg = type { ptr, i64 }
%kernel_dim3 = type { i64, i64, i64 }

; Function Attrs: uwtable
define ptr @slice_convert_fusion.3(ptr %0) #0 {
  %2 = getelementptr inbounds %XLA_CPU_KernelCallFrame, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 8, !invariant.load !3
  %4 = getelementptr inbounds %XLA_CPU_KernelArg, ptr %3, i32 0, i32 0
  %5 = load ptr, ptr %4, align 8, !invariant.load !3, !dereferenceable !4
  %6 = getelementptr inbounds %XLA_CPU_KernelArg, ptr %3, i32 1, i32 0
  %7 = load ptr, ptr %6, align 8, !invariant.load !3, !dereferenceable !5
  %8 = getelementptr inbounds %XLA_CPU_KernelCallFrame, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %kernel_dim3, ptr %9, i32 0, i32 0
  %11 = load i64, ptr %10, align 4, !invariant.load !3
  %12 = getelementptr inbounds %kernel_dim3, ptr %9, i32 0, i32 1
  %13 = load i64, ptr %12, align 4, !invariant.load !3
  %14 = getelementptr inbounds %kernel_dim3, ptr %9, i32 0, i32 2
  %15 = load i64, ptr %14, align 4, !invariant.load !3
  call void @slice_convert_fusion.3_wrapped(ptr %5, ptr %7, i64 %11, i64 %13, i64 %15)
  ret ptr null
}

; Function Attrs: alwaysinline
define internal void @slice_convert_fusion.3_wrapped(ptr noalias align 64 dereferenceable(402653184) %0, ptr noalias align 64 dereferenceable(100663296) %1, i64 %2, i64 %3, i64 %4) #1 {
  %6 = icmp sle i64 %2, 11
  br i1 %6, label %7, label %45

7:                                                ; preds = %5
  %8 = icmp sge i64 %2, 0
  %9 = and i1 %8, %6
  br i1 %9, label %10, label %44

10:                                               ; preds = %7
  %11 = mul nsw i64 %2, 15728640
  %12 = mul nsw i64 %2, 3932160
  br label %13

13:                                               ; preds = %41, %10
  %14 = phi i64 [ %42, %41 ], [ 0, %10 ]
  %15 = icmp slt i64 %14, 10
  br i1 %15, label %16, label %43

16:                                               ; preds = %13
  %17 = mul nsw i64 %14, 1572864
  %18 = add nsw i64 %11, %17
  %19 = mul nsw i64 %14, 393216
  %20 = add nsw i64 %12, %19
  br label %21

21:                                               ; preds = %39, %16
  %22 = phi i64 [ %40, %39 ], [ 0, %16 ]
  %23 = icmp slt i64 %22, 2048
  br i1 %23, label %24, label %41

24:                                               ; preds = %21
  %25 = mul nsw i64 %22, 768
  %26 = add nsw i64 %18, %25
  %27 = mul nsw i64 %22, 192
  %28 = add nsw i64 %20, %27
  br label %29

29:                                               ; preds = %32, %24
  %30 = phi i64 [ %38, %32 ], [ 0, %24 ]
  %31 = icmp slt i64 %30, 192
  br i1 %31, label %32, label %39

32:                                               ; preds = %29
  %33 = add nsw i64 %26, %30
  %34 = getelementptr inbounds [201326592 x bfloat], ptr %0, i32 0, i64 %33
  %35 = load bfloat, ptr %34, align 2, !invariant.load !3
  %36 = add nsw i64 %28, %30
  %37 = getelementptr inbounds [50331648 x bfloat], ptr %1, i32 0, i64 %36
  store bfloat %35, ptr %37, align 2
  %38 = add i64 %30, 1
  br label %29

39:                                               ; preds = %29
  %40 = add i64 %22, 1
  br label %21, !llvm.loop !6

41:                                               ; preds = %21
  %42 = add i64 %14, 1
  br label %13, !llvm.loop !6

43:                                               ; preds = %13
  br label %44

44:                                               ; preds = %43, %7, %50
  br label %87

45:                                               ; preds = %5
  %46 = icmp sge i64 %2, 12
  %47 = icmp sle i64 %2, 13
  %48 = and i1 %46, %47
  %49 = mul nsw i64 %2, 10
  br label %50

50:                                               ; preds = %85, %45
  %51 = phi i64 [ %86, %85 ], [ 0, %45 ]
  %52 = icmp slt i64 %51, 10
  br i1 %52, label %53, label %44

53:                                               ; preds = %50
  %54 = add nsw i64 %49, %51
  %55 = icmp sle i64 %54, 127
  %56 = and i1 %55, %48
  br i1 %56, label %57, label %85

57:                                               ; preds = %53
  %58 = mul nsw i64 %2, 15728640
  %59 = mul nsw i64 %51, 1572864
  %60 = add nsw i64 %58, %59
  %61 = mul nsw i64 %2, 3932160
  %62 = mul nsw i64 %51, 393216
  %63 = add nsw i64 %61, %62
  br label %64

64:                                               ; preds = %82, %57
  %65 = phi i64 [ %83, %82 ], [ 0, %57 ]
  %66 = icmp slt i64 %65, 2048
  br i1 %66, label %67, label %84

67:                                               ; preds = %64
  %68 = mul nsw i64 %65, 768
  %69 = add nsw i64 %60, %68
  %70 = mul nsw i64 %65, 192
  %71 = add nsw i64 %63, %70
  br label %72

72:                                               ; preds = %75, %67
  %73 = phi i64 [ %81, %75 ], [ 0, %67 ]
  %74 = icmp slt i64 %73, 192
  br i1 %74, label %75, label %82

75:                                               ; preds = %72
  %76 = add nsw i64 %69, %73
  %77 = getelementptr inbounds [201326592 x bfloat], ptr %0, i32 0, i64 %76
  %78 = load bfloat, ptr %77, align 2, !invariant.load !3
  %79 = add nsw i64 %71, %73
  %80 = getelementptr inbounds [50331648 x bfloat], ptr %1, i32 0, i64 %79
  store bfloat %78, ptr %80, align 2
  %81 = add i64 %73, 1
  br label %72

82:                                               ; preds = %72
  %83 = add i64 %65, 1
  br label %64, !llvm.loop !6

84:                                               ; preds = %64
  br label %85

85:                                               ; preds = %84, %53
  %86 = add i64 %51, 1
  br label %50, !llvm.loop !6

87:                                               ; preds = %44
  ret void
}

attributes #0 = { uwtable "frame-pointer"="all" "prefer-vector-width"="256" }
attributes #1 = { alwaysinline }

!llvm.module.flags = !{!0, !1}
!xla_cpu_memory_region_name = !{!2}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !{i32 1, !"xla_dylib_index", i64 3}
!2 = !{!"xla_cpu_emitter__loop_fusion_kernel_emitter__hlo_opcode__fusion"}
!3 = !{}
!4 = !{i64 402653184}
!5 = !{i64 100663296}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.unroll.disable"}
