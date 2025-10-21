; ModuleID = '__compute_module_slice_convert_fusion.1_kernel_module'
source_filename = "__compute_module_slice_convert_fusion.1_kernel_module"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%XLA_CPU_KernelCallFrame = type { ptr, ptr, i64, ptr }
%XLA_CPU_KernelArg = type { ptr, i64 }
%kernel_dim3 = type { i64, i64, i64 }

; Function Attrs: uwtable
define ptr @slice_convert_fusion.1(ptr %0) #0 {
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
  call void @slice_convert_fusion.1_wrapped(ptr %5, ptr %7, i64 %11, i64 %13, i64 %15)
  ret ptr null
}

; Function Attrs: alwaysinline
define internal void @slice_convert_fusion.1_wrapped(ptr noalias align 64 dereferenceable(18874368) %0, ptr noalias align 64 dereferenceable(4718592) %1, i64 %2, i64 %3, i64 %4) #1 {
  %6 = icmp sle i64 %2, 12
  br i1 %6, label %7, label %36

7:                                                ; preds = %5
  %8 = icmp sge i64 %2, 0
  %9 = and i1 %8, %6
  br i1 %9, label %10, label %35

10:                                               ; preds = %7
  %11 = mul nsw i64 %2, 677376
  %12 = mul nsw i64 %2, 169344
  br label %13

13:                                               ; preds = %32, %10
  %14 = phi i64 [ %33, %32 ], [ 0, %10 ]
  %15 = icmp slt i64 %14, 147
  br i1 %15, label %16, label %34

16:                                               ; preds = %13
  %17 = mul nsw i64 %14, 4608
  %18 = add nsw i64 %11, %17
  %19 = mul nsw i64 %14, 1152
  %20 = add nsw i64 %12, %19
  br label %21

21:                                               ; preds = %24, %16
  %22 = phi i64 [ %31, %24 ], [ 0, %16 ]
  %23 = icmp slt i64 %22, 1152
  br i1 %23, label %24, label %32

24:                                               ; preds = %21
  %25 = add nsw i64 %18, %22
  %26 = add nsw i64 %25, 2304
  %27 = getelementptr inbounds [9437184 x bfloat], ptr %0, i32 0, i64 %26
  %28 = load bfloat, ptr %27, align 2, !invariant.load !3
  %29 = add nsw i64 %20, %22
  %30 = getelementptr inbounds [2359296 x bfloat], ptr %1, i32 0, i64 %29
  store bfloat %28, ptr %30, align 2
  %31 = add i64 %22, 1
  br label %21

32:                                               ; preds = %21
  %33 = add i64 %14, 1
  br label %13, !llvm.loop !6

34:                                               ; preds = %13, %39
  br label %35

35:                                               ; preds = %34, %7, %36
  br label %59

36:                                               ; preds = %5
  %37 = icmp eq i64 %2, 13
  br i1 %37, label %38, label %35

38:                                               ; preds = %36
  br label %39

39:                                               ; preds = %57, %38
  %40 = phi i64 [ %58, %57 ], [ 0, %38 ]
  %41 = icmp slt i64 %40, 137
  br i1 %41, label %42, label %34

42:                                               ; preds = %39
  %43 = mul nsw i64 %40, 4608
  %44 = mul nsw i64 %40, 1152
  br label %45

45:                                               ; preds = %48, %42
  %46 = phi i64 [ %56, %48 ], [ 0, %42 ]
  %47 = icmp slt i64 %46, 1152
  br i1 %47, label %48, label %57

48:                                               ; preds = %45
  %49 = add nsw i64 %43, %46
  %50 = add nsw i64 %49, 8808192
  %51 = getelementptr inbounds [9437184 x bfloat], ptr %0, i32 0, i64 %50
  %52 = load bfloat, ptr %51, align 2, !invariant.load !3
  %53 = add nsw i64 %44, %46
  %54 = add nsw i64 %53, 2201472
  %55 = getelementptr inbounds [2359296 x bfloat], ptr %1, i32 0, i64 %54
  store bfloat %52, ptr %55, align 2
  %56 = add i64 %46, 1
  br label %45

57:                                               ; preds = %45
  %58 = add i64 %40, 1
  br label %39, !llvm.loop !6

59:                                               ; preds = %35
  ret void
}

attributes #0 = { uwtable "frame-pointer"="all" "prefer-vector-width"="256" }
attributes #1 = { alwaysinline }

!llvm.module.flags = !{!0, !1}
!xla_cpu_memory_region_name = !{!2}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !{i32 1, !"xla_dylib_index", i64 1}
!2 = !{!"xla_cpu_emitter__loop_fusion_kernel_emitter__hlo_opcode__fusion"}
!3 = !{}
!4 = !{i64 18874368}
!5 = !{i64 4718592}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.unroll.disable"}
