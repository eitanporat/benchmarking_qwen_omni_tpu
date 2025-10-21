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
define internal void @slice_convert_fusion.1_wrapped(ptr noalias align 64 dereferenceable(2654208) %0, ptr noalias align 64 dereferenceable(663552) %1, i64 %2, i64 %3, i64 %4) #1 {
  %6 = icmp sge i64 %2, 0
  %7 = icmp sle i64 %2, 11
  %8 = and i1 %6, %7
  br i1 %8, label %9, label %34

9:                                                ; preds = %5
  %10 = mul nsw i64 %2, 110592
  %11 = mul nsw i64 %2, 27648
  br label %12

12:                                               ; preds = %31, %9
  %13 = phi i64 [ %32, %31 ], [ 0, %9 ]
  %14 = icmp slt i64 %13, 96
  br i1 %14, label %15, label %33

15:                                               ; preds = %12
  %16 = mul nsw i64 %13, 1152
  %17 = add nsw i64 %10, %16
  %18 = mul nsw i64 %13, 288
  %19 = add nsw i64 %11, %18
  br label %20

20:                                               ; preds = %23, %15
  %21 = phi i64 [ %30, %23 ], [ 0, %15 ]
  %22 = icmp slt i64 %21, 288
  br i1 %22, label %23, label %31

23:                                               ; preds = %20
  %24 = add nsw i64 %17, %21
  %25 = add nsw i64 %24, 576
  %26 = getelementptr inbounds [1327104 x bfloat], ptr %0, i32 0, i64 %25
  %27 = load bfloat, ptr %26, align 2, !invariant.load !3
  %28 = add nsw i64 %19, %21
  %29 = getelementptr inbounds [331776 x bfloat], ptr %1, i32 0, i64 %28
  store bfloat %27, ptr %29, align 2
  %30 = add i64 %21, 1
  br label %20

31:                                               ; preds = %20
  %32 = add i64 %13, 1
  br label %12, !llvm.loop !6

33:                                               ; preds = %12
  br label %34

34:                                               ; preds = %33, %5
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
!4 = !{i64 2654208}
!5 = !{i64 663552}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.unroll.disable"}
