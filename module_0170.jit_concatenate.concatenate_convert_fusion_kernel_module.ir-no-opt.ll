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
  %10 = getelementptr inbounds %XLA_CPU_KernelCallFrame, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %kernel_dim3, ptr %11, i32 0, i32 0
  %13 = load i64, ptr %12, align 4, !invariant.load !3
  %14 = getelementptr inbounds %kernel_dim3, ptr %11, i32 0, i32 1
  %15 = load i64, ptr %14, align 4, !invariant.load !3
  %16 = getelementptr inbounds %kernel_dim3, ptr %11, i32 0, i32 2
  %17 = load i64, ptr %16, align 4, !invariant.load !3
  call void @concatenate_convert_fusion_wrapped(ptr %5, ptr %7, ptr %9, i64 %13, i64 %15, i64 %17)
  ret ptr null
}

; Function Attrs: alwaysinline
define internal void @concatenate_convert_fusion_wrapped(ptr noalias align 64 dereferenceable(402653184) %0, ptr noalias align 64 dereferenceable(402653184) %1, ptr noalias align 64 dereferenceable(805306368) %2, i64 %3, i64 %4, i64 %5) #1 {
  %7 = icmp sle i64 %3, 11
  br i1 %7, label %8, label %110

8:                                                ; preds = %6
  %9 = icmp sge i64 %3, 0
  %10 = and i1 %9, %7
  br i1 %10, label %11, label %109

11:                                               ; preds = %8
  %12 = mul nsw i64 %3, 10
  %13 = mul nsw i64 %3, 15728640
  %14 = mul nsw i64 %3, 31457280
  br label %15

15:                                               ; preds = %58, %11
  %16 = phi i64 [ %59, %58 ], [ 0, %11 ]
  %17 = icmp slt i64 %16, 10
  br i1 %17, label %18, label %60

18:                                               ; preds = %15
  %19 = add nsw i64 %12, %16
  %20 = mul nsw i64 %16, 1572864
  %21 = add nsw i64 %13, %20
  %22 = mul nsw i64 %16, 3145728
  %23 = add nsw i64 %14, %22
  br label %24

24:                                               ; preds = %56, %18
  %25 = phi i64 [ %57, %56 ], [ 0, %18 ]
  %26 = icmp slt i64 %25, 4
  br i1 %26, label %27, label %58

27:                                               ; preds = %24
  %28 = mul nsw i64 %25, 393216
  %29 = add nsw i64 %21, %28
  %30 = mul nsw i64 %25, 786432
  %31 = add nsw i64 %23, %30
  br label %32

32:                                               ; preds = %54, %27
  %33 = phi i64 [ %55, %54 ], [ 0, %27 ]
  %34 = icmp slt i64 %33, 192
  br i1 %34, label %35, label %56

35:                                               ; preds = %32
  %36 = mul nsw i64 %33, 2048
  %37 = add nsw i64 %29, %36
  %38 = add nsw i64 %31, %36
  br label %39

39:                                               ; preds = %42, %35
  %40 = phi i64 [ %53, %42 ], [ 0, %35 ]
  %41 = icmp slt i64 %40, 2048
  br i1 %41, label %42, label %54

42:                                               ; preds = %39
  %43 = add nsw i64 %37, %40
  %44 = getelementptr inbounds [201326592 x bfloat], ptr %1, i32 0, i64 %43
  %45 = load bfloat, ptr %44, align 2, !invariant.load !3
  %46 = bitcast bfloat %45 to i16
  %47 = zext i16 %46 to i32
  %48 = shl i32 %47, 16
  %49 = bitcast i32 %48 to float
  %50 = call bfloat @fused_computation__epilogue__convert_3(ptr %0, ptr %1, i64 %19, i64 %25, i64 %33, i64 %40, float %49)
  %51 = add nsw i64 %38, %40
  %52 = getelementptr inbounds [402653184 x bfloat], ptr %2, i32 0, i64 %51
  store bfloat %50, ptr %52, align 2
  %53 = add i64 %40, 1
  br label %39

54:                                               ; preds = %39
  %55 = add i64 %33, 1
  br label %32, !llvm.loop !6

56:                                               ; preds = %32
  %57 = add i64 %25, 1
  br label %24, !llvm.loop !6

58:                                               ; preds = %24
  %59 = add i64 %16, 1
  br label %15, !llvm.loop !6

60:                                               ; preds = %15
  br label %61

61:                                               ; preds = %106, %60
  %62 = phi i64 [ %107, %106 ], [ 0, %60 ]
  %63 = icmp slt i64 %62, 10
  br i1 %63, label %64, label %108

64:                                               ; preds = %61
  %65 = add nsw i64 %12, %62
  %66 = mul nsw i64 %62, 1572864
  %67 = add nsw i64 %13, %66
  %68 = mul nsw i64 %62, 3145728
  %69 = add nsw i64 %14, %68
  br label %70

70:                                               ; preds = %104, %64
  %71 = phi i64 [ %105, %104 ], [ 0, %64 ]
  %72 = icmp slt i64 %71, 4
  br i1 %72, label %73, label %106

73:                                               ; preds = %70
  %74 = mul nsw i64 %71, 393216
  %75 = add nsw i64 %67, %74
  %76 = mul nsw i64 %71, 786432
  %77 = add nsw i64 %69, %76
  br label %78

78:                                               ; preds = %102, %73
  %79 = phi i64 [ %103, %102 ], [ 0, %73 ]
  %80 = icmp slt i64 %79, 192
  br i1 %80, label %81, label %104

81:                                               ; preds = %78
  %82 = add nsw i64 %79, 192
  %83 = mul nsw i64 %79, 2048
  %84 = add nsw i64 %75, %83
  %85 = add nsw i64 %77, %83
  br label %86

86:                                               ; preds = %89, %81
  %87 = phi i64 [ %101, %89 ], [ 0, %81 ]
  %88 = icmp slt i64 %87, 2048
  br i1 %88, label %89, label %102

89:                                               ; preds = %86
  %90 = add nsw i64 %84, %87
  %91 = getelementptr inbounds [201326592 x bfloat], ptr %0, i32 0, i64 %90
  %92 = load bfloat, ptr %91, align 2, !invariant.load !3
  %93 = bitcast bfloat %92 to i16
  %94 = zext i16 %93 to i32
  %95 = shl i32 %94, 16
  %96 = bitcast i32 %95 to float
  %97 = call bfloat @fused_computation__epilogue__convert_3(ptr %0, ptr %1, i64 %65, i64 %71, i64 %82, i64 %87, float %96)
  %98 = add nsw i64 %85, %87
  %99 = add nsw i64 %98, 393216
  %100 = getelementptr inbounds [402653184 x bfloat], ptr %2, i32 0, i64 %99
  store bfloat %97, ptr %100, align 2
  %101 = add i64 %87, 1
  br label %86

102:                                              ; preds = %86
  %103 = add i64 %79, 1
  br label %78, !llvm.loop !6

104:                                              ; preds = %78
  %105 = add i64 %71, 1
  br label %70, !llvm.loop !6

106:                                              ; preds = %70
  %107 = add i64 %62, 1
  br label %61, !llvm.loop !6

108:                                              ; preds = %61
  br label %109

109:                                              ; preds = %108, %8, %167
  br label %220

110:                                              ; preds = %6
  %111 = icmp sge i64 %3, 12
  %112 = icmp sle i64 %3, 13
  %113 = and i1 %111, %112
  %114 = mul nsw i64 %3, 10
  br label %115

115:                                              ; preds = %164, %110
  %116 = phi i64 [ %165, %164 ], [ 0, %110 ]
  %117 = icmp slt i64 %116, 10
  br i1 %117, label %118, label %166

118:                                              ; preds = %115
  %119 = add nsw i64 %114, %116
  %120 = icmp sle i64 %119, 127
  %121 = and i1 %120, %113
  br i1 %121, label %122, label %164

122:                                              ; preds = %118
  %123 = mul nsw i64 %3, 15728640
  %124 = mul nsw i64 %116, 1572864
  %125 = add nsw i64 %123, %124
  %126 = mul nsw i64 %3, 31457280
  %127 = mul nsw i64 %116, 3145728
  %128 = add nsw i64 %126, %127
  br label %129

129:                                              ; preds = %161, %122
  %130 = phi i64 [ %162, %161 ], [ 0, %122 ]
  %131 = icmp slt i64 %130, 4
  br i1 %131, label %132, label %163

132:                                              ; preds = %129
  %133 = mul nsw i64 %130, 393216
  %134 = add nsw i64 %125, %133
  %135 = mul nsw i64 %130, 786432
  %136 = add nsw i64 %128, %135
  br label %137

137:                                              ; preds = %159, %132
  %138 = phi i64 [ %160, %159 ], [ 0, %132 ]
  %139 = icmp slt i64 %138, 192
  br i1 %139, label %140, label %161

140:                                              ; preds = %137
  %141 = mul nsw i64 %138, 2048
  %142 = add nsw i64 %134, %141
  %143 = add nsw i64 %136, %141
  br label %144

144:                                              ; preds = %147, %140
  %145 = phi i64 [ %158, %147 ], [ 0, %140 ]
  %146 = icmp slt i64 %145, 2048
  br i1 %146, label %147, label %159

147:                                              ; preds = %144
  %148 = add nsw i64 %142, %145
  %149 = getelementptr inbounds [201326592 x bfloat], ptr %1, i32 0, i64 %148
  %150 = load bfloat, ptr %149, align 2, !invariant.load !3
  %151 = bitcast bfloat %150 to i16
  %152 = zext i16 %151 to i32
  %153 = shl i32 %152, 16
  %154 = bitcast i32 %153 to float
  %155 = call bfloat @fused_computation__epilogue__convert_3(ptr %0, ptr %1, i64 %119, i64 %130, i64 %138, i64 %145, float %154)
  %156 = add nsw i64 %143, %145
  %157 = getelementptr inbounds [402653184 x bfloat], ptr %2, i32 0, i64 %156
  store bfloat %155, ptr %157, align 2
  %158 = add i64 %145, 1
  br label %144

159:                                              ; preds = %144
  %160 = add i64 %138, 1
  br label %137, !llvm.loop !6

161:                                              ; preds = %137
  %162 = add i64 %130, 1
  br label %129, !llvm.loop !6

163:                                              ; preds = %129
  br label %164

164:                                              ; preds = %163, %118
  %165 = add i64 %116, 1
  br label %115, !llvm.loop !6

166:                                              ; preds = %115
  br label %167

167:                                              ; preds = %218, %166
  %168 = phi i64 [ %219, %218 ], [ 0, %166 ]
  %169 = icmp slt i64 %168, 10
  br i1 %169, label %170, label %109

170:                                              ; preds = %167
  %171 = add nsw i64 %114, %168
  %172 = icmp sle i64 %171, 127
  %173 = and i1 %172, %113
  br i1 %173, label %174, label %218

174:                                              ; preds = %170
  %175 = mul nsw i64 %3, 15728640
  %176 = mul nsw i64 %168, 1572864
  %177 = add nsw i64 %175, %176
  %178 = mul nsw i64 %3, 31457280
  %179 = mul nsw i64 %168, 3145728
  %180 = add nsw i64 %178, %179
  br label %181

181:                                              ; preds = %215, %174
  %182 = phi i64 [ %216, %215 ], [ 0, %174 ]
  %183 = icmp slt i64 %182, 4
  br i1 %183, label %184, label %217

184:                                              ; preds = %181
  %185 = mul nsw i64 %182, 393216
  %186 = add nsw i64 %177, %185
  %187 = mul nsw i64 %182, 786432
  %188 = add nsw i64 %180, %187
  br label %189

189:                                              ; preds = %213, %184
  %190 = phi i64 [ %214, %213 ], [ 0, %184 ]
  %191 = icmp slt i64 %190, 192
  br i1 %191, label %192, label %215

192:                                              ; preds = %189
  %193 = add nsw i64 %190, 192
  %194 = mul nsw i64 %190, 2048
  %195 = add nsw i64 %186, %194
  %196 = add nsw i64 %188, %194
  br label %197

197:                                              ; preds = %200, %192
  %198 = phi i64 [ %212, %200 ], [ 0, %192 ]
  %199 = icmp slt i64 %198, 2048
  br i1 %199, label %200, label %213

200:                                              ; preds = %197
  %201 = add nsw i64 %195, %198
  %202 = getelementptr inbounds [201326592 x bfloat], ptr %0, i32 0, i64 %201
  %203 = load bfloat, ptr %202, align 2, !invariant.load !3
  %204 = bitcast bfloat %203 to i16
  %205 = zext i16 %204 to i32
  %206 = shl i32 %205, 16
  %207 = bitcast i32 %206 to float
  %208 = call bfloat @fused_computation__epilogue__convert_3(ptr %0, ptr %1, i64 %171, i64 %182, i64 %193, i64 %198, float %207)
  %209 = add nsw i64 %196, %198
  %210 = add nsw i64 %209, 393216
  %211 = getelementptr inbounds [402653184 x bfloat], ptr %2, i32 0, i64 %210
  store bfloat %208, ptr %211, align 2
  %212 = add i64 %198, 1
  br label %197

213:                                              ; preds = %197
  %214 = add i64 %190, 1
  br label %189, !llvm.loop !6

215:                                              ; preds = %189
  %216 = add i64 %182, 1
  br label %181, !llvm.loop !6

217:                                              ; preds = %181
  br label %218

218:                                              ; preds = %217, %170
  %219 = add i64 %168, 1
  br label %167, !llvm.loop !6

220:                                              ; preds = %109
  ret void
}

define internal bfloat @fused_computation__epilogue__convert_3(ptr noalias %0, ptr noalias %1, i64 %2, i64 %3, i64 %4, i64 %5, float %6) {
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
!4 = !{i64 402653184}
!5 = !{i64 805306368}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.unroll.disable"}
