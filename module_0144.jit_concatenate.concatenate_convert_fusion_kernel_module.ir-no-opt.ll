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
  %9 = load ptr, ptr %8, align 8, !invariant.load !3, !dereferenceable !5
  %10 = getelementptr inbounds %XLA_CPU_KernelArg, ptr %3, i32 3, i32 0
  %11 = load ptr, ptr %10, align 8, !invariant.load !3, !dereferenceable !6
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
define internal void @concatenate_convert_fusion_wrapped(ptr noalias align 64 dereferenceable(2097152) %0, ptr noalias align 64 dereferenceable(2097152) %1, ptr noalias align 64 dereferenceable(16777216) %2, ptr noalias align 64 dereferenceable(20971520) %3, i64 %4, i64 %5, i64 %6) #1 {
  %8 = icmp sle i64 %4, 10
  br i1 %8, label %9, label %46

9:                                                ; preds = %7
  %10 = icmp sge i64 %4, 0
  %11 = and i1 %10, %8
  br i1 %11, label %12, label %45

12:                                               ; preds = %9
  %13 = mul nsw i64 %4, 342
  %14 = mul nsw i64 %4, 700416
  br label %15

15:                                               ; preds = %42, %12
  %16 = phi i64 [ %43, %42 ], [ 0, %12 ]
  %17 = icmp slt i64 %16, 342
  br i1 %17, label %18, label %44

18:                                               ; preds = %15
  %19 = add nsw i64 %13, %16
  %20 = udiv i64 %19, 1024
  %21 = urem i64 %19, 1024
  %22 = mul nsw i64 %16, 2048
  %23 = add nsw i64 %14, %22
  %24 = mul nsw i64 %21, 2048
  %25 = mul nsw i64 %20, 2621440
  %26 = add nsw i64 %24, %25
  br label %27

27:                                               ; preds = %30, %18
  %28 = phi i64 [ %41, %30 ], [ 0, %18 ]
  %29 = icmp slt i64 %28, 2048
  br i1 %29, label %30, label %42

30:                                               ; preds = %27
  %31 = add nsw i64 %23, %28
  %32 = getelementptr inbounds [8388608 x bfloat], ptr %2, i32 0, i64 %31
  %33 = load bfloat, ptr %32, align 2, !invariant.load !3
  %34 = bitcast bfloat %33 to i16
  %35 = zext i16 %34 to i32
  %36 = shl i32 %35, 16
  %37 = bitcast i32 %36 to float
  %38 = call bfloat @fused_computation__epilogue__convert_4(ptr %0, ptr %1, ptr %2, i64 %20, i64 %21, i64 %28, float %37)
  %39 = add nsw i64 %26, %28
  %40 = getelementptr inbounds [10485760 x bfloat], ptr %3, i32 0, i64 %39
  store bfloat %38, ptr %40, align 2
  %41 = add i64 %28, 1
  br label %27

42:                                               ; preds = %27
  %43 = add i64 %16, 1
  br label %15, !llvm.loop !7

44:                                               ; preds = %15, %50
  br label %45

45:                                               ; preds = %44, %9, %46
  br label %75

46:                                               ; preds = %7
  %47 = icmp eq i64 %4, 11
  br i1 %47, label %48, label %45

48:                                               ; preds = %46
  %49 = mul nsw i64 %4, 700416
  br label %50

50:                                               ; preds = %73, %48
  %51 = phi i64 [ %74, %73 ], [ 0, %48 ]
  %52 = icmp slt i64 %51, 334
  br i1 %52, label %53, label %44

53:                                               ; preds = %50
  %54 = add nsw i64 %51, 690
  %55 = mul nsw i64 %51, 2048
  %56 = add nsw i64 %49, %55
  br label %57

57:                                               ; preds = %60, %53
  %58 = phi i64 [ %72, %60 ], [ 0, %53 ]
  %59 = icmp slt i64 %58, 2048
  br i1 %59, label %60, label %73

60:                                               ; preds = %57
  %61 = add nsw i64 %56, %58
  %62 = getelementptr inbounds [8388608 x bfloat], ptr %2, i32 0, i64 %61
  %63 = load bfloat, ptr %62, align 2, !invariant.load !3
  %64 = bitcast bfloat %63 to i16
  %65 = zext i16 %64 to i32
  %66 = shl i32 %65, 16
  %67 = bitcast i32 %66 to float
  %68 = call bfloat @fused_computation__epilogue__convert_4(ptr %0, ptr %1, ptr %2, i64 3, i64 %54, i64 %58, float %67)
  %69 = add nsw i64 %55, %58
  %70 = add nsw i64 %69, 9277440
  %71 = getelementptr inbounds [10485760 x bfloat], ptr %3, i32 0, i64 %70
  store bfloat %68, ptr %71, align 2
  %72 = add i64 %58, 1
  br label %57

73:                                               ; preds = %57
  %74 = add i64 %51, 1
  br label %50, !llvm.loop !7

75:                                               ; preds = %45
  %76 = icmp sge i64 %4, 0
  %77 = icmp sle i64 %4, 11
  %78 = and i1 %76, %77
  %79 = mul nsw i64 %4, 342
  br label %80

80:                                               ; preds = %115, %75
  %81 = phi i64 [ %116, %115 ], [ 0, %75 ]
  %82 = icmp slt i64 %81, 342
  br i1 %82, label %83, label %117

83:                                               ; preds = %80
  %84 = add nsw i64 %79, %81
  %85 = urem i64 %84, 1024
  %86 = icmp sle i64 %84, 4095
  %87 = icmp sle i64 %85, 127
  %88 = and i1 %86, %87
  %89 = and i1 %88, %78
  br i1 %89, label %90, label %115

90:                                               ; preds = %83
  %91 = udiv i64 %84, 1024
  %92 = add nsw i64 %85, 1024
  %93 = mul nsw i64 %85, 2048
  %94 = mul nsw i64 %91, 262144
  %95 = add nsw i64 %93, %94
  %96 = mul nsw i64 %91, 2621440
  %97 = add nsw i64 %93, %96
  br label %98

98:                                               ; preds = %101, %90
  %99 = phi i64 [ %113, %101 ], [ 0, %90 ]
  %100 = icmp slt i64 %99, 2048
  br i1 %100, label %101, label %114

101:                                              ; preds = %98
  %102 = add nsw i64 %95, %99
  %103 = getelementptr inbounds [1048576 x bfloat], ptr %1, i32 0, i64 %102
  %104 = load bfloat, ptr %103, align 2, !invariant.load !3
  %105 = bitcast bfloat %104 to i16
  %106 = zext i16 %105 to i32
  %107 = shl i32 %106, 16
  %108 = bitcast i32 %107 to float
  %109 = call bfloat @fused_computation__epilogue__convert_4(ptr %0, ptr %1, ptr %2, i64 %91, i64 %92, i64 %99, float %108)
  %110 = add nsw i64 %97, %99
  %111 = add nsw i64 %110, 2097152
  %112 = getelementptr inbounds [10485760 x bfloat], ptr %3, i32 0, i64 %111
  store bfloat %109, ptr %112, align 2
  %113 = add i64 %99, 1
  br label %98

114:                                              ; preds = %98
  br label %115

115:                                              ; preds = %114, %83
  %116 = add i64 %81, 1
  br label %80, !llvm.loop !7

117:                                              ; preds = %80
  br label %118

118:                                              ; preds = %153, %117
  %119 = phi i64 [ %154, %153 ], [ 0, %117 ]
  %120 = icmp slt i64 %119, 342
  br i1 %120, label %121, label %155

121:                                              ; preds = %118
  %122 = add nsw i64 %79, %119
  %123 = urem i64 %122, 1024
  %124 = icmp sle i64 %122, 4095
  %125 = icmp sle i64 %123, 127
  %126 = and i1 %124, %125
  %127 = and i1 %126, %78
  br i1 %127, label %128, label %153

128:                                              ; preds = %121
  %129 = udiv i64 %122, 1024
  %130 = add nsw i64 %123, 1152
  %131 = mul nsw i64 %123, 2048
  %132 = mul nsw i64 %129, 262144
  %133 = add nsw i64 %131, %132
  %134 = mul nsw i64 %129, 2621440
  %135 = add nsw i64 %131, %134
  br label %136

136:                                              ; preds = %139, %128
  %137 = phi i64 [ %151, %139 ], [ 0, %128 ]
  %138 = icmp slt i64 %137, 2048
  br i1 %138, label %139, label %152

139:                                              ; preds = %136
  %140 = add nsw i64 %133, %137
  %141 = getelementptr inbounds [1048576 x bfloat], ptr %0, i32 0, i64 %140
  %142 = load bfloat, ptr %141, align 2, !invariant.load !3
  %143 = bitcast bfloat %142 to i16
  %144 = zext i16 %143 to i32
  %145 = shl i32 %144, 16
  %146 = bitcast i32 %145 to float
  %147 = call bfloat @fused_computation__epilogue__convert_4(ptr %0, ptr %1, ptr %2, i64 %129, i64 %130, i64 %137, float %146)
  %148 = add nsw i64 %135, %137
  %149 = add nsw i64 %148, 2359296
  %150 = getelementptr inbounds [10485760 x bfloat], ptr %3, i32 0, i64 %149
  store bfloat %147, ptr %150, align 2
  %151 = add i64 %137, 1
  br label %136

152:                                              ; preds = %136
  br label %153

153:                                              ; preds = %152, %121
  %154 = add i64 %119, 1
  br label %118, !llvm.loop !7

155:                                              ; preds = %118
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
!4 = !{i64 2097152}
!5 = !{i64 16777216}
!6 = !{i64 20971520}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.unroll.disable"}
