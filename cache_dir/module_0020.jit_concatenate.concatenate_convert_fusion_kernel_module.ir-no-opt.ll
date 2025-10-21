; ModuleID = '__compute_module_concatenate_convert_fusion_kernel_module'
source_filename = "__compute_module_concatenate_convert_fusion_kernel_module"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%XLA_CPU_KernelCallFrame = type { ptr, ptr, i64, ptr }
%XLA_CPU_KernelArg = type { ptr, i64 }
%kernel_dim3 = type { i64, i64, i64 }

declare bfloat @xla.fptrunc.f32.to.bf16(float)

; Function Attrs: uwtable
define ptr @concatenate_convert_fusion(ptr %0) #0 {
  %2 = getelementptr inbounds %XLA_CPU_KernelCallFrame, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 8, !invariant.load !3
  %4 = getelementptr inbounds %XLA_CPU_KernelArg, ptr %3, i32 0, i32 0
  %5 = load ptr, ptr %4, align 8, !invariant.load !3, !dereferenceable !4
  %6 = getelementptr inbounds %XLA_CPU_KernelArg, ptr %3, i32 1, i32 0
  %7 = load ptr, ptr %6, align 8, !invariant.load !3, !dereferenceable !4
  %8 = getelementptr inbounds %XLA_CPU_KernelArg, ptr %3, i32 2, i32 0
  %9 = load ptr, ptr %8, align 8, !invariant.load !3, !dereferenceable !4
  %10 = getelementptr inbounds %XLA_CPU_KernelArg, ptr %3, i32 3, i32 0
  %11 = load ptr, ptr %10, align 8, !invariant.load !3, !dereferenceable !5
  %12 = getelementptr inbounds %XLA_CPU_KernelCallFrame, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %kernel_dim3, ptr %13, i32 0, i32 0
  %15 = load i64, ptr %14, align 4, !invariant.load !3
  %16 = getelementptr inbounds %kernel_dim3, ptr %13, i32 0, i32 1
  %17 = load i64, ptr %16, align 4, !invariant.load !3
  %18 = getelementptr inbounds %kernel_dim3, ptr %13, i32 0, i32 2
  %19 = load i64, ptr %18, align 4, !invariant.load !3
  call void @concatenate_convert_fusion_wrapped(ptr %5, ptr %7, ptr %9, ptr %11, i64 %15, i64 %17, i64 %19)
  ret ptr null
}

; Function Attrs: alwaysinline
define internal void @concatenate_convert_fusion_wrapped(ptr noalias align 64 dereferenceable(2654208) %0, ptr noalias align 64 dereferenceable(2654208) %1, ptr noalias align 64 dereferenceable(2654208) %2, ptr noalias align 64 dereferenceable(7962624) %3, i64 %4, i64 %5, i64 %6) #1 {
  %8 = icmp sge i64 %4, 0
  %9 = icmp sle i64 %4, 11
  %10 = and i1 %8, %9
  br i1 %10, label %11, label %101

11:                                               ; preds = %7
  %12 = udiv i64 %4, 3
  %13 = urem i64 %4, 3
  %14 = mul nsw i64 %13, 96
  %15 = mul nsw i64 %4, 110592
  %16 = mul nsw i64 %13, 110592
  %17 = mul nsw i64 %12, 995328
  %18 = add nsw i64 %16, %17
  br label %19

19:                                               ; preds = %42, %11
  %20 = phi i64 [ %43, %42 ], [ 0, %11 ]
  %21 = icmp slt i64 %20, 96
  br i1 %21, label %22, label %44

22:                                               ; preds = %19
  %23 = add nsw i64 %14, %20
  %24 = mul nsw i64 %20, 1152
  %25 = add nsw i64 %15, %24
  %26 = add nsw i64 %18, %24
  br label %27

27:                                               ; preds = %30, %22
  %28 = phi i64 [ %41, %30 ], [ 0, %22 ]
  %29 = icmp slt i64 %28, 1152
  br i1 %29, label %30, label %42

30:                                               ; preds = %27
  %31 = add nsw i64 %25, %28
  %32 = getelementptr inbounds [1327104 x bfloat], ptr %2, i32 0, i64 %31
  %33 = load bfloat, ptr %32, align 2, !invariant.load !3
  %34 = bitcast bfloat %33 to i16
  %35 = zext i16 %34 to i32
  %36 = shl i32 %35, 16
  %37 = bitcast i32 %36 to float
  %38 = call bfloat @fused_computation__epilogue__convert_4(ptr %0, ptr %1, ptr %2, i64 %12, i64 %23, i64 %28, float %37)
  %39 = add nsw i64 %26, %28
  %40 = getelementptr inbounds [3981312 x bfloat], ptr %3, i32 0, i64 %39
  store bfloat %38, ptr %40, align 2
  %41 = add i64 %28, 1
  br label %27

42:                                               ; preds = %27
  %43 = add i64 %20, 1
  br label %19, !llvm.loop !6

44:                                               ; preds = %19
  br label %45

45:                                               ; preds = %70, %44
  %46 = phi i64 [ %71, %70 ], [ 0, %44 ]
  %47 = icmp slt i64 %46, 96
  br i1 %47, label %48, label %72

48:                                               ; preds = %45
  %49 = add nsw i64 %14, %46
  %50 = add nsw i64 %49, 288
  %51 = mul nsw i64 %46, 1152
  %52 = add nsw i64 %15, %51
  %53 = add nsw i64 %18, %51
  br label %54

54:                                               ; preds = %57, %48
  %55 = phi i64 [ %69, %57 ], [ 0, %48 ]
  %56 = icmp slt i64 %55, 1152
  br i1 %56, label %57, label %70

57:                                               ; preds = %54
  %58 = add nsw i64 %52, %55
  %59 = getelementptr inbounds [1327104 x bfloat], ptr %1, i32 0, i64 %58
  %60 = load bfloat, ptr %59, align 2, !invariant.load !3
  %61 = bitcast bfloat %60 to i16
  %62 = zext i16 %61 to i32
  %63 = shl i32 %62, 16
  %64 = bitcast i32 %63 to float
  %65 = call bfloat @fused_computation__epilogue__convert_4(ptr %0, ptr %1, ptr %2, i64 %12, i64 %50, i64 %55, float %64)
  %66 = add nsw i64 %53, %55
  %67 = add nsw i64 %66, 331776
  %68 = getelementptr inbounds [3981312 x bfloat], ptr %3, i32 0, i64 %67
  store bfloat %65, ptr %68, align 2
  %69 = add i64 %55, 1
  br label %54

70:                                               ; preds = %54
  %71 = add i64 %46, 1
  br label %45, !llvm.loop !6

72:                                               ; preds = %45
  br label %73

73:                                               ; preds = %98, %72
  %74 = phi i64 [ %99, %98 ], [ 0, %72 ]
  %75 = icmp slt i64 %74, 96
  br i1 %75, label %76, label %100

76:                                               ; preds = %73
  %77 = add nsw i64 %14, %74
  %78 = add nsw i64 %77, 576
  %79 = mul nsw i64 %74, 1152
  %80 = add nsw i64 %15, %79
  %81 = add nsw i64 %18, %79
  br label %82

82:                                               ; preds = %85, %76
  %83 = phi i64 [ %97, %85 ], [ 0, %76 ]
  %84 = icmp slt i64 %83, 1152
  br i1 %84, label %85, label %98

85:                                               ; preds = %82
  %86 = add nsw i64 %80, %83
  %87 = getelementptr inbounds [1327104 x bfloat], ptr %0, i32 0, i64 %86
  %88 = load bfloat, ptr %87, align 2, !invariant.load !3
  %89 = bitcast bfloat %88 to i16
  %90 = zext i16 %89 to i32
  %91 = shl i32 %90, 16
  %92 = bitcast i32 %91 to float
  %93 = call bfloat @fused_computation__epilogue__convert_4(ptr %0, ptr %1, ptr %2, i64 %12, i64 %78, i64 %83, float %92)
  %94 = add nsw i64 %81, %83
  %95 = add nsw i64 %94, 663552
  %96 = getelementptr inbounds [3981312 x bfloat], ptr %3, i32 0, i64 %95
  store bfloat %93, ptr %96, align 2
  %97 = add i64 %83, 1
  br label %82

98:                                               ; preds = %82
  %99 = add i64 %74, 1
  br label %73, !llvm.loop !6

100:                                              ; preds = %73
  br label %101

101:                                              ; preds = %100, %7
  ret void
}

define internal bfloat @fused_computation__epilogue__convert_4(ptr noalias %0, ptr noalias %1, ptr noalias %2, i64 %3, i64 %4, i64 %5, float %6) {
  %8 = call bfloat @xla.fptrunc.f32.to.bf16(float %6)
  ret bfloat %8
}

attributes #0 = { uwtable "frame-pointer"="all" "prefer-vector-width"="256" }
attributes #1 = { alwaysinline }

!llvm.module.flags = !{!0, !1}
!xla_cpu_memory_region_name = !{!2}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !{i32 1, !"xla_dylib_index", i64 0}
!2 = !{!"xla_cpu_emitter__concatenate_fusion_kernel_emitter__hlo_opcode__fusion"}
!3 = !{}
!4 = !{i64 2654208}
!5 = !{i64 7962624}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.unroll.disable"}
