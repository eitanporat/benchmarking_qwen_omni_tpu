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
define internal void @slice_convert_fusion.3_wrapped(ptr noalias align 64 dereferenceable(16777216) %0, ptr noalias align 64 dereferenceable(4194304) %1, i64 %2, i64 %3, i64 %4) #1 {
  %6 = icmp sle i64 %2, 12
  br i1 %6, label %7, label %35

7:                                                ; preds = %5
  %8 = icmp sge i64 %2, 0
  %9 = and i1 %8, %6
  br i1 %9, label %10, label %34

10:                                               ; preds = %7
  %11 = mul nsw i64 %2, 602112
  %12 = mul nsw i64 %2, 150528
  br label %13

13:                                               ; preds = %31, %10
  %14 = phi i64 [ %32, %31 ], [ 0, %10 ]
  %15 = icmp slt i64 %14, 147
  br i1 %15, label %16, label %33

16:                                               ; preds = %13
  %17 = mul nsw i64 %14, 4096
  %18 = add nsw i64 %11, %17
  %19 = mul nsw i64 %14, 1024
  %20 = add nsw i64 %12, %19
  br label %21

21:                                               ; preds = %24, %16
  %22 = phi i64 [ %30, %24 ], [ 0, %16 ]
  %23 = icmp slt i64 %22, 1024
  br i1 %23, label %24, label %31

24:                                               ; preds = %21
  %25 = add nsw i64 %18, %22
  %26 = getelementptr inbounds [8388608 x bfloat], ptr %0, i32 0, i64 %25
  %27 = load bfloat, ptr %26, align 2, !invariant.load !3
  %28 = add nsw i64 %20, %22
  %29 = getelementptr inbounds [2097152 x bfloat], ptr %1, i32 0, i64 %28
  store bfloat %27, ptr %29, align 2
  %30 = add i64 %22, 1
  br label %21

31:                                               ; preds = %21
  %32 = add i64 %14, 1
  br label %13, !llvm.loop !6

33:                                               ; preds = %13, %38
  br label %34

34:                                               ; preds = %33, %7, %35
  br label %58

35:                                               ; preds = %5
  %36 = icmp eq i64 %2, 13
  br i1 %36, label %37, label %34

37:                                               ; preds = %35
  br label %38

38:                                               ; preds = %56, %37
  %39 = phi i64 [ %57, %56 ], [ 0, %37 ]
  %40 = icmp slt i64 %39, 137
  br i1 %40, label %41, label %33

41:                                               ; preds = %38
  %42 = mul nsw i64 %39, 4096
  %43 = mul nsw i64 %39, 1024
  br label %44

44:                                               ; preds = %47, %41
  %45 = phi i64 [ %55, %47 ], [ 0, %41 ]
  %46 = icmp slt i64 %45, 1024
  br i1 %46, label %47, label %56

47:                                               ; preds = %44
  %48 = add nsw i64 %42, %45
  %49 = add nsw i64 %48, 7827456
  %50 = getelementptr inbounds [8388608 x bfloat], ptr %0, i32 0, i64 %49
  %51 = load bfloat, ptr %50, align 2, !invariant.load !3
  %52 = add nsw i64 %43, %45
  %53 = add nsw i64 %52, 1956864
  %54 = getelementptr inbounds [2097152 x bfloat], ptr %1, i32 0, i64 %53
  store bfloat %51, ptr %54, align 2
  %55 = add i64 %45, 1
  br label %44

56:                                               ; preds = %44
  %57 = add i64 %39, 1
  br label %38, !llvm.loop !6

58:                                               ; preds = %34
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
!4 = !{i64 16777216}
!5 = !{i64 4194304}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.unroll.disable"}
