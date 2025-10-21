; ModuleID = '__compute_module_slice_convert_fusion_kernel_module'
source_filename = "__compute_module_slice_convert_fusion_kernel_module"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%XLA_CPU_KernelCallFrame = type { ptr, ptr, i64, ptr }
%XLA_CPU_KernelArg = type { ptr, i64 }
%kernel_dim3 = type { i64, i64, i64 }

; Function Attrs: uwtable
define ptr @slice_convert_fusion(ptr %0) #0 {
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
  call void @slice_convert_fusion_wrapped(ptr %5, ptr %7, i64 %11, i64 %13, i64 %15)
  ret ptr null
}

; Function Attrs: alwaysinline
define internal void @slice_convert_fusion_wrapped(ptr noalias align 64 dereferenceable(805306368) %0, ptr noalias align 64 dereferenceable(402653184) %1, i64 %2, i64 %3, i64 %4) #1 {
  %6 = icmp sle i64 %2, 11
  br i1 %6, label %7, label %44

7:                                                ; preds = %5
  %8 = icmp sge i64 %2, 0
  %9 = and i1 %8, %6
  br i1 %9, label %10, label %43

10:                                               ; preds = %7
  %11 = mul nsw i64 %2, 31457280
  %12 = mul nsw i64 %2, 15728640
  br label %13

13:                                               ; preds = %40, %10
  %14 = phi i64 [ %41, %40 ], [ 0, %10 ]
  %15 = icmp slt i64 %14, 10
  br i1 %15, label %16, label %42

16:                                               ; preds = %13
  %17 = mul nsw i64 %14, 3145728
  %18 = add nsw i64 %11, %17
  %19 = mul nsw i64 %14, 1572864
  %20 = add nsw i64 %12, %19
  br label %21

21:                                               ; preds = %38, %16
  %22 = phi i64 [ %39, %38 ], [ 0, %16 ]
  %23 = icmp slt i64 %22, 768
  br i1 %23, label %24, label %40

24:                                               ; preds = %21
  %25 = mul nsw i64 %22, 2048
  %26 = add nsw i64 %18, %25
  %27 = add nsw i64 %20, %25
  br label %28

28:                                               ; preds = %31, %24
  %29 = phi i64 [ %37, %31 ], [ 0, %24 ]
  %30 = icmp slt i64 %29, 2048
  br i1 %30, label %31, label %38

31:                                               ; preds = %28
  %32 = add nsw i64 %26, %29
  %33 = getelementptr inbounds [402653184 x bfloat], ptr %0, i32 0, i64 %32
  %34 = load bfloat, ptr %33, align 2, !invariant.load !3
  %35 = add nsw i64 %27, %29
  %36 = getelementptr inbounds [201326592 x bfloat], ptr %1, i32 0, i64 %35
  store bfloat %34, ptr %36, align 2
  %37 = add i64 %29, 1
  br label %28

38:                                               ; preds = %28
  %39 = add i64 %22, 1
  br label %21, !llvm.loop !6

40:                                               ; preds = %21
  %41 = add i64 %14, 1
  br label %13, !llvm.loop !6

42:                                               ; preds = %13
  br label %43

43:                                               ; preds = %42, %7, %49
  br label %85

44:                                               ; preds = %5
  %45 = icmp sge i64 %2, 12
  %46 = icmp sle i64 %2, 13
  %47 = and i1 %45, %46
  %48 = mul nsw i64 %2, 10
  br label %49

49:                                               ; preds = %83, %44
  %50 = phi i64 [ %84, %83 ], [ 0, %44 ]
  %51 = icmp slt i64 %50, 10
  br i1 %51, label %52, label %43

52:                                               ; preds = %49
  %53 = add nsw i64 %48, %50
  %54 = icmp sle i64 %53, 127
  %55 = and i1 %54, %47
  br i1 %55, label %56, label %83

56:                                               ; preds = %52
  %57 = mul nsw i64 %2, 31457280
  %58 = mul nsw i64 %50, 3145728
  %59 = add nsw i64 %57, %58
  %60 = mul nsw i64 %2, 15728640
  %61 = mul nsw i64 %50, 1572864
  %62 = add nsw i64 %60, %61
  br label %63

63:                                               ; preds = %80, %56
  %64 = phi i64 [ %81, %80 ], [ 0, %56 ]
  %65 = icmp slt i64 %64, 768
  br i1 %65, label %66, label %82

66:                                               ; preds = %63
  %67 = mul nsw i64 %64, 2048
  %68 = add nsw i64 %59, %67
  %69 = add nsw i64 %62, %67
  br label %70

70:                                               ; preds = %73, %66
  %71 = phi i64 [ %79, %73 ], [ 0, %66 ]
  %72 = icmp slt i64 %71, 2048
  br i1 %72, label %73, label %80

73:                                               ; preds = %70
  %74 = add nsw i64 %68, %71
  %75 = getelementptr inbounds [402653184 x bfloat], ptr %0, i32 0, i64 %74
  %76 = load bfloat, ptr %75, align 2, !invariant.load !3
  %77 = add nsw i64 %69, %71
  %78 = getelementptr inbounds [201326592 x bfloat], ptr %1, i32 0, i64 %77
  store bfloat %76, ptr %78, align 2
  %79 = add i64 %71, 1
  br label %70

80:                                               ; preds = %70
  %81 = add i64 %64, 1
  br label %63, !llvm.loop !6

82:                                               ; preds = %63
  br label %83

83:                                               ; preds = %82, %52
  %84 = add i64 %50, 1
  br label %49, !llvm.loop !6

85:                                               ; preds = %43
  ret void
}

attributes #0 = { uwtable "frame-pointer"="all" "prefer-vector-width"="256" }
attributes #1 = { alwaysinline }

!llvm.module.flags = !{!0, !1}
!xla_cpu_memory_region_name = !{!2}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !{i32 1, !"xla_dylib_index", i64 0}
!2 = !{!"xla_cpu_emitter__loop_fusion_kernel_emitter__hlo_opcode__fusion"}
!3 = !{}
!4 = !{i64 805306368}
!5 = !{i64 402653184}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.unroll.disable"}
