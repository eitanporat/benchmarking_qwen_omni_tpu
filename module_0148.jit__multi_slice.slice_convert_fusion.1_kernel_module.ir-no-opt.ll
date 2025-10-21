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
define internal void @slice_convert_fusion.1_wrapped(ptr noalias align 64 dereferenceable(20971520) %0, ptr noalias align 64 dereferenceable(5242880) %1, i64 %2, i64 %3, i64 %4) #1 {
  %6 = icmp sle i64 %2, 12
  br i1 %6, label %7, label %32

7:                                                ; preds = %5
  %8 = icmp sge i64 %2, 0
  %9 = and i1 %8, %6
  br i1 %9, label %10, label %31

10:                                               ; preds = %7
  %11 = mul nsw i64 %2, 188416
  br label %12

12:                                               ; preds = %28, %10
  %13 = phi i64 [ %29, %28 ], [ 0, %10 ]
  %14 = icmp slt i64 %13, 92
  br i1 %14, label %15, label %30

15:                                               ; preds = %12
  %16 = mul nsw i64 %13, 2048
  %17 = add nsw i64 %11, %16
  br label %18

18:                                               ; preds = %21, %15
  %19 = phi i64 [ %27, %21 ], [ 0, %15 ]
  %20 = icmp slt i64 %19, 2048
  br i1 %20, label %21, label %28

21:                                               ; preds = %18
  %22 = add nsw i64 %17, %19
  %23 = add nsw i64 %22, 5242880
  %24 = getelementptr inbounds [10485760 x bfloat], ptr %0, i32 0, i64 %23
  %25 = load bfloat, ptr %24, align 2, !invariant.load !3
  %26 = getelementptr inbounds [2621440 x bfloat], ptr %1, i32 0, i64 %22
  store bfloat %25, ptr %26, align 2
  %27 = add i64 %19, 1
  br label %18

28:                                               ; preds = %18
  %29 = add i64 %13, 1
  br label %12, !llvm.loop !6

30:                                               ; preds = %12, %35
  br label %31

31:                                               ; preds = %30, %7, %32
  br label %53

32:                                               ; preds = %5
  %33 = icmp eq i64 %2, 13
  br i1 %33, label %34, label %31

34:                                               ; preds = %32
  br label %35

35:                                               ; preds = %51, %34
  %36 = phi i64 [ %52, %51 ], [ 0, %34 ]
  %37 = icmp slt i64 %36, 84
  br i1 %37, label %38, label %30

38:                                               ; preds = %35
  %39 = mul nsw i64 %36, 2048
  br label %40

40:                                               ; preds = %43, %38
  %41 = phi i64 [ %50, %43 ], [ 0, %38 ]
  %42 = icmp slt i64 %41, 2048
  br i1 %42, label %43, label %51

43:                                               ; preds = %40
  %44 = add nsw i64 %39, %41
  %45 = add nsw i64 %44, 7692288
  %46 = getelementptr inbounds [10485760 x bfloat], ptr %0, i32 0, i64 %45
  %47 = load bfloat, ptr %46, align 2, !invariant.load !3
  %48 = add nsw i64 %44, 2449408
  %49 = getelementptr inbounds [2621440 x bfloat], ptr %1, i32 0, i64 %48
  store bfloat %47, ptr %49, align 2
  %50 = add i64 %41, 1
  br label %40

51:                                               ; preds = %40
  %52 = add i64 %36, 1
  br label %35, !llvm.loop !6

53:                                               ; preds = %31
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
!4 = !{i64 20971520}
!5 = !{i64 5242880}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.unroll.disable"}
