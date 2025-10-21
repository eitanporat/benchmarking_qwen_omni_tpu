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
define internal void @slice_convert_fusion.3_wrapped(ptr noalias align 64 dereferenceable(9916416) %0, ptr noalias align 64 dereferenceable(2479104) %1, i64 %2, i64 %3, i64 %4) #1 {
  %6 = icmp sle i64 %2, 12
  br i1 %6, label %7, label %31

7:                                                ; preds = %5
  %8 = icmp sge i64 %2, 0
  %9 = and i1 %8, %6
  br i1 %9, label %10, label %30

10:                                               ; preds = %7
  %11 = mul nsw i64 %2, 88704
  br label %12

12:                                               ; preds = %27, %10
  %13 = phi i64 [ %28, %27 ], [ 0, %10 ]
  %14 = icmp slt i64 %13, 77
  br i1 %14, label %15, label %29

15:                                               ; preds = %12
  %16 = mul nsw i64 %13, 1152
  %17 = add nsw i64 %11, %16
  br label %18

18:                                               ; preds = %21, %15
  %19 = phi i64 [ %26, %21 ], [ 0, %15 ]
  %20 = icmp slt i64 %19, 1152
  br i1 %20, label %21, label %27

21:                                               ; preds = %18
  %22 = add nsw i64 %17, %19
  %23 = getelementptr inbounds [4958208 x bfloat], ptr %0, i32 0, i64 %22
  %24 = load bfloat, ptr %23, align 2, !invariant.load !3
  %25 = getelementptr inbounds [1239552 x bfloat], ptr %1, i32 0, i64 %22
  store bfloat %24, ptr %25, align 2
  %26 = add i64 %19, 1
  br label %18

27:                                               ; preds = %18
  %28 = add i64 %13, 1
  br label %12, !llvm.loop !6

29:                                               ; preds = %12, %34
  br label %30

30:                                               ; preds = %29, %7, %31
  br label %51

31:                                               ; preds = %5
  %32 = icmp eq i64 %2, 13
  br i1 %32, label %33, label %30

33:                                               ; preds = %31
  br label %34

34:                                               ; preds = %49, %33
  %35 = phi i64 [ %50, %49 ], [ 0, %33 ]
  %36 = icmp slt i64 %35, 75
  br i1 %36, label %37, label %29

37:                                               ; preds = %34
  %38 = mul nsw i64 %35, 1152
  br label %39

39:                                               ; preds = %42, %37
  %40 = phi i64 [ %48, %42 ], [ 0, %37 ]
  %41 = icmp slt i64 %40, 1152
  br i1 %41, label %42, label %49

42:                                               ; preds = %39
  %43 = add nsw i64 %38, %40
  %44 = add nsw i64 %43, 1153152
  %45 = getelementptr inbounds [4958208 x bfloat], ptr %0, i32 0, i64 %44
  %46 = load bfloat, ptr %45, align 2, !invariant.load !3
  %47 = getelementptr inbounds [1239552 x bfloat], ptr %1, i32 0, i64 %44
  store bfloat %46, ptr %47, align 2
  %48 = add i64 %40, 1
  br label %39

49:                                               ; preds = %39
  %50 = add i64 %35, 1
  br label %34, !llvm.loop !6

51:                                               ; preds = %30
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
!4 = !{i64 9916416}
!5 = !{i64 2479104}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.unroll.disable"}
