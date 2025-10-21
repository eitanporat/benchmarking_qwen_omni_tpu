; ModuleID = '__compute_module_slice_convert_fusion.2_kernel_module'
source_filename = "__compute_module_slice_convert_fusion.2_kernel_module"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%XLA_CPU_KernelCallFrame = type { ptr, ptr, i64, ptr }
%XLA_CPU_KernelArg = type { ptr, i64 }
%kernel_dim3 = type { i64, i64, i64 }

; Function Attrs: uwtable
define ptr @slice_convert_fusion.2(ptr %0) #0 {
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
  call void @slice_convert_fusion.2_wrapped(ptr %5, ptr %7, i64 %11, i64 %13, i64 %15)
  ret ptr null
}

; Function Attrs: alwaysinline
define internal void @slice_convert_fusion.2_wrapped(ptr noalias align 64 dereferenceable(402653184) %0, ptr noalias align 64 dereferenceable(100663296) %1, i64 %2, i64 %3, i64 %4) #1 {
  %6 = icmp sle i64 %2, 11
  br i1 %6, label %7, label %46

7:                                                ; preds = %5
  %8 = icmp sge i64 %2, 0
  %9 = and i1 %8, %6
  br i1 %9, label %10, label %45

10:                                               ; preds = %7
  %11 = mul nsw i64 %2, 15728640
  %12 = mul nsw i64 %2, 3932160
  br label %13

13:                                               ; preds = %42, %10
  %14 = phi i64 [ %43, %42 ], [ 0, %10 ]
  %15 = icmp slt i64 %14, 10
  br i1 %15, label %16, label %44

16:                                               ; preds = %13
  %17 = mul nsw i64 %14, 1572864
  %18 = add nsw i64 %11, %17
  %19 = mul nsw i64 %14, 393216
  %20 = add nsw i64 %12, %19
  br label %21

21:                                               ; preds = %40, %16
  %22 = phi i64 [ %41, %40 ], [ 0, %16 ]
  %23 = icmp slt i64 %22, 2048
  br i1 %23, label %24, label %42

24:                                               ; preds = %21
  %25 = mul nsw i64 %22, 768
  %26 = add nsw i64 %18, %25
  %27 = mul nsw i64 %22, 192
  %28 = add nsw i64 %20, %27
  br label %29

29:                                               ; preds = %32, %24
  %30 = phi i64 [ %39, %32 ], [ 0, %24 ]
  %31 = icmp slt i64 %30, 192
  br i1 %31, label %32, label %40

32:                                               ; preds = %29
  %33 = add nsw i64 %26, %30
  %34 = add nsw i64 %33, 192
  %35 = getelementptr inbounds [201326592 x bfloat], ptr %0, i32 0, i64 %34
  %36 = load bfloat, ptr %35, align 2, !invariant.load !3
  %37 = add nsw i64 %28, %30
  %38 = getelementptr inbounds [50331648 x bfloat], ptr %1, i32 0, i64 %37
  store bfloat %36, ptr %38, align 2
  %39 = add i64 %30, 1
  br label %29

40:                                               ; preds = %29
  %41 = add i64 %22, 1
  br label %21, !llvm.loop !6

42:                                               ; preds = %21
  %43 = add i64 %14, 1
  br label %13, !llvm.loop !6

44:                                               ; preds = %13
  br label %45

45:                                               ; preds = %44, %7, %51
  br label %89

46:                                               ; preds = %5
  %47 = icmp sge i64 %2, 12
  %48 = icmp sle i64 %2, 13
  %49 = and i1 %47, %48
  %50 = mul nsw i64 %2, 10
  br label %51

51:                                               ; preds = %87, %46
  %52 = phi i64 [ %88, %87 ], [ 0, %46 ]
  %53 = icmp slt i64 %52, 10
  br i1 %53, label %54, label %45

54:                                               ; preds = %51
  %55 = add nsw i64 %50, %52
  %56 = icmp sle i64 %55, 127
  %57 = and i1 %56, %49
  br i1 %57, label %58, label %87

58:                                               ; preds = %54
  %59 = mul nsw i64 %2, 15728640
  %60 = mul nsw i64 %52, 1572864
  %61 = add nsw i64 %59, %60
  %62 = mul nsw i64 %2, 3932160
  %63 = mul nsw i64 %52, 393216
  %64 = add nsw i64 %62, %63
  br label %65

65:                                               ; preds = %84, %58
  %66 = phi i64 [ %85, %84 ], [ 0, %58 ]
  %67 = icmp slt i64 %66, 2048
  br i1 %67, label %68, label %86

68:                                               ; preds = %65
  %69 = mul nsw i64 %66, 768
  %70 = add nsw i64 %61, %69
  %71 = mul nsw i64 %66, 192
  %72 = add nsw i64 %64, %71
  br label %73

73:                                               ; preds = %76, %68
  %74 = phi i64 [ %83, %76 ], [ 0, %68 ]
  %75 = icmp slt i64 %74, 192
  br i1 %75, label %76, label %84

76:                                               ; preds = %73
  %77 = add nsw i64 %70, %74
  %78 = add nsw i64 %77, 192
  %79 = getelementptr inbounds [201326592 x bfloat], ptr %0, i32 0, i64 %78
  %80 = load bfloat, ptr %79, align 2, !invariant.load !3
  %81 = add nsw i64 %72, %74
  %82 = getelementptr inbounds [50331648 x bfloat], ptr %1, i32 0, i64 %81
  store bfloat %80, ptr %82, align 2
  %83 = add i64 %74, 1
  br label %73

84:                                               ; preds = %73
  %85 = add i64 %66, 1
  br label %65, !llvm.loop !6

86:                                               ; preds = %65
  br label %87

87:                                               ; preds = %86, %54
  %88 = add i64 %52, 1
  br label %51, !llvm.loop !6

89:                                               ; preds = %45
  ret void
}

attributes #0 = { uwtable "frame-pointer"="all" "prefer-vector-width"="256" }
attributes #1 = { alwaysinline }

!llvm.module.flags = !{!0, !1}
!xla_cpu_memory_region_name = !{!2}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !{i32 1, !"xla_dylib_index", i64 2}
!2 = !{!"xla_cpu_emitter__loop_fusion_kernel_emitter__hlo_opcode__fusion"}
!3 = !{}
!4 = !{i64 402653184}
!5 = !{i64 100663296}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.unroll.disable"}
