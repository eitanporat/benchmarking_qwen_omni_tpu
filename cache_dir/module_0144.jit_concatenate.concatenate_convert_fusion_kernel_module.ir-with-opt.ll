; ModuleID = '__compute_module_concatenate_convert_fusion_kernel_module'
source_filename = "__compute_module_concatenate_convert_fusion_kernel_module"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: uwtable
define noalias noundef ptr @concatenate_convert_fusion(ptr readonly captures(none) %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %3 = load ptr, ptr %2, align 8, !invariant.load !3
  %4 = load ptr, ptr %3, align 8, !invariant.load !3, !dereferenceable !4
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %6 = load ptr, ptr %5, align 8, !invariant.load !3, !dereferenceable !4
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %8 = load ptr, ptr %7, align 8, !invariant.load !3, !dereferenceable !5
  %9 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %10 = load ptr, ptr %9, align 8, !invariant.load !3, !dereferenceable !6
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %12 = load ptr, ptr %11, align 8
  %13 = load i64, ptr %12, align 4, !invariant.load !3
  %.fr19 = freeze i64 %13
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14)
  %14 = icmp slt i64 %.fr19, 11
  br i1 %14, label %15, label %71

15:                                               ; preds = %1
  %16 = icmp sgt i64 %.fr19, -1
  br i1 %16, label %17, label %concatenate_convert_fusion_wrapped.exit

17:                                               ; preds = %15
  %18 = mul nuw nsw i64 %.fr19, 342
  %19 = mul nuw nsw i64 %.fr19, 700416
  br label %vector.ph43

vector.ph43:                                      ; preds = %17, %middle.block51
  %20 = phi i64 [ 0, %17 ], [ %68, %middle.block51 ]
  %21 = add nuw nsw i64 %20, %18
  %22 = lshr i64 %21, 10
  %23 = shl nuw nsw i64 %20, 11
  %24 = add nuw nsw i64 %23, %19
  %25 = shl i64 %21, 11
  %26 = and i64 %25, 2095104
  %27 = mul nuw nsw i64 %22, 2621440
  %28 = add nuw nsw i64 %26, %27
  br label %vector.body44

vector.body44:                                    ; preds = %vector.body44, %vector.ph43
  %index45 = phi i64 [ 0, %vector.ph43 ], [ %index.next50, %vector.body44 ]
  %29 = add nuw nsw i64 %index45, %24
  %30 = getelementptr inbounds nuw [8388608 x bfloat], ptr %8, i64 0, i64 %29
  %31 = getelementptr inbounds nuw i8, ptr %30, i64 16
  %32 = getelementptr inbounds nuw i8, ptr %30, i64 32
  %33 = getelementptr inbounds nuw i8, ptr %30, i64 48
  %wide.load46 = load <8 x i16>, ptr %30, align 2, !invariant.load !3, !alias.scope !12, !noalias !16
  %wide.load47 = load <8 x i16>, ptr %31, align 2, !invariant.load !3, !alias.scope !12, !noalias !16
  %wide.load48 = load <8 x i16>, ptr %32, align 2, !invariant.load !3, !alias.scope !12, !noalias !16
  %wide.load49 = load <8 x i16>, ptr %33, align 2, !invariant.load !3, !alias.scope !12, !noalias !16
  %34 = zext <8 x i16> %wide.load46 to <8 x i32>
  %35 = zext <8 x i16> %wide.load47 to <8 x i32>
  %36 = zext <8 x i16> %wide.load48 to <8 x i32>
  %37 = zext <8 x i16> %wide.load49 to <8 x i32>
  %38 = shl nuw <8 x i32> %34, splat (i32 16)
  %39 = shl nuw <8 x i32> %35, splat (i32 16)
  %40 = shl nuw <8 x i32> %36, splat (i32 16)
  %41 = shl nuw <8 x i32> %37, splat (i32 16)
  %42 = bitcast <8 x i32> %38 to <8 x float>
  %43 = bitcast <8 x i32> %39 to <8 x float>
  %44 = bitcast <8 x i32> %40 to <8 x float>
  %45 = bitcast <8 x i32> %41 to <8 x float>
  %46 = fcmp uno <8 x float> %42, zeroinitializer
  %47 = and <8 x i16> %wide.load46, splat (i16 -128)
  %48 = or disjoint <8 x i16> %47, splat (i16 64)
  %49 = select <8 x i1> %46, <8 x i16> %48, <8 x i16> %wide.load46
  %50 = fcmp uno <8 x float> %43, zeroinitializer
  %51 = and <8 x i16> %wide.load47, splat (i16 -128)
  %52 = or disjoint <8 x i16> %51, splat (i16 64)
  %53 = select <8 x i1> %50, <8 x i16> %52, <8 x i16> %wide.load47
  %54 = fcmp uno <8 x float> %44, zeroinitializer
  %55 = and <8 x i16> %wide.load48, splat (i16 -128)
  %56 = or disjoint <8 x i16> %55, splat (i16 64)
  %57 = select <8 x i1> %54, <8 x i16> %56, <8 x i16> %wide.load48
  %58 = fcmp uno <8 x float> %45, zeroinitializer
  %59 = and <8 x i16> %wide.load49, splat (i16 -128)
  %60 = or disjoint <8 x i16> %59, splat (i16 64)
  %61 = select <8 x i1> %58, <8 x i16> %60, <8 x i16> %wide.load49
  %62 = add nuw nsw i64 %index45, %28
  %63 = getelementptr inbounds nuw [10485760 x bfloat], ptr %10, i64 0, i64 %62
  %64 = getelementptr inbounds nuw i8, ptr %63, i64 16
  %65 = getelementptr inbounds nuw i8, ptr %63, i64 32
  %66 = getelementptr inbounds nuw i8, ptr %63, i64 48
  store <8 x i16> %49, ptr %63, align 2, !alias.scope !14, !noalias !17
  store <8 x i16> %53, ptr %64, align 2, !alias.scope !14, !noalias !17
  store <8 x i16> %57, ptr %65, align 2, !alias.scope !14, !noalias !17
  store <8 x i16> %61, ptr %66, align 2, !alias.scope !14, !noalias !17
  %index.next50 = add nuw i64 %index45, 32
  %67 = icmp eq i64 %index.next50, 2048
  br i1 %67, label %middle.block51, label %vector.body44, !llvm.loop !18

middle.block51:                                   ; preds = %vector.body44
  %68 = add nuw nsw i64 %20, 1
  %exitcond25.not = icmp eq i64 %68, 342
  br i1 %exitcond25.not, label %.loopexit14, label %vector.ph43, !llvm.loop !21

.loopexit14:                                      ; preds = %middle.block, %middle.block51
  %69 = icmp ult i64 %.fr19, 12
  %70 = mul nsw i64 %.fr19, 342
  br i1 %69, label %.split, label %concatenate_convert_fusion_wrapped.exit

71:                                               ; preds = %1
  %72 = icmp eq i64 %.fr19, 11
  br i1 %72, label %.preheader15, label %concatenate_convert_fusion_wrapped.exit

.preheader15:                                     ; preds = %71, %middle.block
  %73 = phi i64 [ %116, %middle.block ], [ 0, %71 ]
  %74 = shl nuw nsw i64 %73, 11
  %75 = add nuw nsw i64 %74, 7704576
  %76 = add nuw nsw i64 %74, 9277440
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.preheader15
  %index = phi i64 [ 0, %.preheader15 ], [ %index.next, %vector.body ]
  %77 = add nuw nsw i64 %index, %75
  %78 = getelementptr inbounds nuw [8388608 x bfloat], ptr %8, i64 0, i64 %77
  %79 = getelementptr inbounds nuw i8, ptr %78, i64 16
  %80 = getelementptr inbounds nuw i8, ptr %78, i64 32
  %81 = getelementptr inbounds nuw i8, ptr %78, i64 48
  %wide.load = load <8 x i16>, ptr %78, align 2, !invariant.load !3, !alias.scope !12, !noalias !16
  %wide.load39 = load <8 x i16>, ptr %79, align 2, !invariant.load !3, !alias.scope !12, !noalias !16
  %wide.load40 = load <8 x i16>, ptr %80, align 2, !invariant.load !3, !alias.scope !12, !noalias !16
  %wide.load41 = load <8 x i16>, ptr %81, align 2, !invariant.load !3, !alias.scope !12, !noalias !16
  %82 = zext <8 x i16> %wide.load to <8 x i32>
  %83 = zext <8 x i16> %wide.load39 to <8 x i32>
  %84 = zext <8 x i16> %wide.load40 to <8 x i32>
  %85 = zext <8 x i16> %wide.load41 to <8 x i32>
  %86 = shl nuw <8 x i32> %82, splat (i32 16)
  %87 = shl nuw <8 x i32> %83, splat (i32 16)
  %88 = shl nuw <8 x i32> %84, splat (i32 16)
  %89 = shl nuw <8 x i32> %85, splat (i32 16)
  %90 = bitcast <8 x i32> %86 to <8 x float>
  %91 = bitcast <8 x i32> %87 to <8 x float>
  %92 = bitcast <8 x i32> %88 to <8 x float>
  %93 = bitcast <8 x i32> %89 to <8 x float>
  %94 = fcmp uno <8 x float> %90, zeroinitializer
  %95 = and <8 x i16> %wide.load, splat (i16 -128)
  %96 = or disjoint <8 x i16> %95, splat (i16 64)
  %97 = select <8 x i1> %94, <8 x i16> %96, <8 x i16> %wide.load
  %98 = fcmp uno <8 x float> %91, zeroinitializer
  %99 = and <8 x i16> %wide.load39, splat (i16 -128)
  %100 = or disjoint <8 x i16> %99, splat (i16 64)
  %101 = select <8 x i1> %98, <8 x i16> %100, <8 x i16> %wide.load39
  %102 = fcmp uno <8 x float> %92, zeroinitializer
  %103 = and <8 x i16> %wide.load40, splat (i16 -128)
  %104 = or disjoint <8 x i16> %103, splat (i16 64)
  %105 = select <8 x i1> %102, <8 x i16> %104, <8 x i16> %wide.load40
  %106 = fcmp uno <8 x float> %93, zeroinitializer
  %107 = and <8 x i16> %wide.load41, splat (i16 -128)
  %108 = or disjoint <8 x i16> %107, splat (i16 64)
  %109 = select <8 x i1> %106, <8 x i16> %108, <8 x i16> %wide.load41
  %110 = add nuw nsw i64 %76, %index
  %111 = getelementptr inbounds nuw [10485760 x bfloat], ptr %10, i64 0, i64 %110
  %112 = getelementptr inbounds nuw i8, ptr %111, i64 16
  %113 = getelementptr inbounds nuw i8, ptr %111, i64 32
  %114 = getelementptr inbounds nuw i8, ptr %111, i64 48
  store <8 x i16> %97, ptr %111, align 2, !alias.scope !14, !noalias !17
  store <8 x i16> %101, ptr %112, align 2, !alias.scope !14, !noalias !17
  store <8 x i16> %105, ptr %113, align 2, !alias.scope !14, !noalias !17
  store <8 x i16> %109, ptr %114, align 2, !alias.scope !14, !noalias !17
  %index.next = add nuw i64 %index, 32
  %115 = icmp eq i64 %index.next, 2048
  br i1 %115, label %middle.block, label %vector.body, !llvm.loop !23

middle.block:                                     ; preds = %vector.body
  %116 = add nuw nsw i64 %73, 1
  %exitcond23.not = icmp eq i64 %116, 334
  br i1 %exitcond23.not, label %.loopexit14, label %.preheader15, !llvm.loop !21

.split:                                           ; preds = %.loopexit14, %.loopexit13
  %117 = phi i64 [ %169, %.loopexit13 ], [ 0, %.loopexit14 ]
  %118 = add nuw nsw i64 %117, %70
  %119 = and i64 %118, 1023
  %120 = icmp slt i64 %118, 4096
  %121 = icmp samesign ult i64 %119, 128
  %122 = and i1 %120, %121
  br i1 %122, label %vector.ph53, label %.loopexit13

vector.ph53:                                      ; preds = %.split
  %123 = lshr i64 %118, 10
  %124 = shl nuw nsw i64 %119, 11
  %125 = shl nuw nsw i64 %123, 18
  %126 = or disjoint i64 %124, %125
  %127 = mul nuw nsw i64 %123, 2621440
  %128 = add nuw nsw i64 %127, 2097152
  %129 = or disjoint i64 %128, %124
  br label %vector.body54

vector.body54:                                    ; preds = %vector.body54, %vector.ph53
  %index55 = phi i64 [ 0, %vector.ph53 ], [ %index.next60, %vector.body54 ]
  %130 = add nuw nsw i64 %index55, %126
  %131 = getelementptr inbounds nuw [1048576 x bfloat], ptr %6, i64 0, i64 %130
  %132 = getelementptr inbounds nuw i8, ptr %131, i64 16
  %133 = getelementptr inbounds nuw i8, ptr %131, i64 32
  %134 = getelementptr inbounds nuw i8, ptr %131, i64 48
  %wide.load56 = load <8 x i16>, ptr %131, align 2, !invariant.load !3, !alias.scope !10, !noalias !24
  %wide.load57 = load <8 x i16>, ptr %132, align 2, !invariant.load !3, !alias.scope !10, !noalias !24
  %wide.load58 = load <8 x i16>, ptr %133, align 2, !invariant.load !3, !alias.scope !10, !noalias !24
  %wide.load59 = load <8 x i16>, ptr %134, align 2, !invariant.load !3, !alias.scope !10, !noalias !24
  %135 = zext <8 x i16> %wide.load56 to <8 x i32>
  %136 = zext <8 x i16> %wide.load57 to <8 x i32>
  %137 = zext <8 x i16> %wide.load58 to <8 x i32>
  %138 = zext <8 x i16> %wide.load59 to <8 x i32>
  %139 = shl nuw <8 x i32> %135, splat (i32 16)
  %140 = shl nuw <8 x i32> %136, splat (i32 16)
  %141 = shl nuw <8 x i32> %137, splat (i32 16)
  %142 = shl nuw <8 x i32> %138, splat (i32 16)
  %143 = bitcast <8 x i32> %139 to <8 x float>
  %144 = bitcast <8 x i32> %140 to <8 x float>
  %145 = bitcast <8 x i32> %141 to <8 x float>
  %146 = bitcast <8 x i32> %142 to <8 x float>
  %147 = fcmp uno <8 x float> %143, zeroinitializer
  %148 = and <8 x i16> %wide.load56, splat (i16 -128)
  %149 = or disjoint <8 x i16> %148, splat (i16 64)
  %150 = select <8 x i1> %147, <8 x i16> %149, <8 x i16> %wide.load56
  %151 = fcmp uno <8 x float> %144, zeroinitializer
  %152 = and <8 x i16> %wide.load57, splat (i16 -128)
  %153 = or disjoint <8 x i16> %152, splat (i16 64)
  %154 = select <8 x i1> %151, <8 x i16> %153, <8 x i16> %wide.load57
  %155 = fcmp uno <8 x float> %145, zeroinitializer
  %156 = and <8 x i16> %wide.load58, splat (i16 -128)
  %157 = or disjoint <8 x i16> %156, splat (i16 64)
  %158 = select <8 x i1> %155, <8 x i16> %157, <8 x i16> %wide.load58
  %159 = fcmp uno <8 x float> %146, zeroinitializer
  %160 = and <8 x i16> %wide.load59, splat (i16 -128)
  %161 = or disjoint <8 x i16> %160, splat (i16 64)
  %162 = select <8 x i1> %159, <8 x i16> %161, <8 x i16> %wide.load59
  %163 = add nuw nsw i64 %129, %index55
  %164 = getelementptr inbounds nuw [10485760 x bfloat], ptr %10, i64 0, i64 %163
  %165 = getelementptr inbounds nuw i8, ptr %164, i64 16
  %166 = getelementptr inbounds nuw i8, ptr %164, i64 32
  %167 = getelementptr inbounds nuw i8, ptr %164, i64 48
  store <8 x i16> %150, ptr %164, align 2, !alias.scope !14, !noalias !17
  store <8 x i16> %154, ptr %165, align 2, !alias.scope !14, !noalias !17
  store <8 x i16> %158, ptr %166, align 2, !alias.scope !14, !noalias !17
  store <8 x i16> %162, ptr %167, align 2, !alias.scope !14, !noalias !17
  %index.next60 = add nuw i64 %index55, 32
  %168 = icmp eq i64 %index.next60, 2048
  br i1 %168, label %.loopexit13, label %vector.body54, !llvm.loop !25

.loopexit13:                                      ; preds = %vector.body54, %.split
  %169 = add nuw nsw i64 %117, 1
  %exitcond27.not = icmp eq i64 %169, 342
  br i1 %exitcond27.not, label %.preheader.split17, label %.split, !llvm.loop !21

.preheader.split17:                               ; preds = %.loopexit13, %.loopexit
  %170 = phi i64 [ %222, %.loopexit ], [ 0, %.loopexit13 ]
  %171 = add nuw nsw i64 %170, %70
  %172 = and i64 %171, 1023
  %173 = icmp slt i64 %171, 4096
  %174 = icmp samesign ult i64 %172, 128
  %175 = and i1 %173, %174
  br i1 %175, label %vector.ph63, label %.loopexit

vector.ph63:                                      ; preds = %.preheader.split17
  %176 = lshr i64 %171, 10
  %177 = shl nuw nsw i64 %172, 11
  %178 = shl nuw nsw i64 %176, 18
  %179 = or disjoint i64 %177, %178
  %180 = mul nuw nsw i64 %176, 2621440
  %181 = add nuw nsw i64 %180, 2359296
  %182 = or disjoint i64 %181, %177
  br label %vector.body64

vector.body64:                                    ; preds = %vector.body64, %vector.ph63
  %index65 = phi i64 [ 0, %vector.ph63 ], [ %index.next70, %vector.body64 ]
  %183 = add nuw nsw i64 %index65, %179
  %184 = getelementptr inbounds nuw [1048576 x bfloat], ptr %4, i64 0, i64 %183
  %185 = getelementptr inbounds nuw i8, ptr %184, i64 16
  %186 = getelementptr inbounds nuw i8, ptr %184, i64 32
  %187 = getelementptr inbounds nuw i8, ptr %184, i64 48
  %wide.load66 = load <8 x i16>, ptr %184, align 2, !invariant.load !3, !alias.scope !7, !noalias !26
  %wide.load67 = load <8 x i16>, ptr %185, align 2, !invariant.load !3, !alias.scope !7, !noalias !26
  %wide.load68 = load <8 x i16>, ptr %186, align 2, !invariant.load !3, !alias.scope !7, !noalias !26
  %wide.load69 = load <8 x i16>, ptr %187, align 2, !invariant.load !3, !alias.scope !7, !noalias !26
  %188 = zext <8 x i16> %wide.load66 to <8 x i32>
  %189 = zext <8 x i16> %wide.load67 to <8 x i32>
  %190 = zext <8 x i16> %wide.load68 to <8 x i32>
  %191 = zext <8 x i16> %wide.load69 to <8 x i32>
  %192 = shl nuw <8 x i32> %188, splat (i32 16)
  %193 = shl nuw <8 x i32> %189, splat (i32 16)
  %194 = shl nuw <8 x i32> %190, splat (i32 16)
  %195 = shl nuw <8 x i32> %191, splat (i32 16)
  %196 = bitcast <8 x i32> %192 to <8 x float>
  %197 = bitcast <8 x i32> %193 to <8 x float>
  %198 = bitcast <8 x i32> %194 to <8 x float>
  %199 = bitcast <8 x i32> %195 to <8 x float>
  %200 = fcmp uno <8 x float> %196, zeroinitializer
  %201 = and <8 x i16> %wide.load66, splat (i16 -128)
  %202 = or disjoint <8 x i16> %201, splat (i16 64)
  %203 = select <8 x i1> %200, <8 x i16> %202, <8 x i16> %wide.load66
  %204 = fcmp uno <8 x float> %197, zeroinitializer
  %205 = and <8 x i16> %wide.load67, splat (i16 -128)
  %206 = or disjoint <8 x i16> %205, splat (i16 64)
  %207 = select <8 x i1> %204, <8 x i16> %206, <8 x i16> %wide.load67
  %208 = fcmp uno <8 x float> %198, zeroinitializer
  %209 = and <8 x i16> %wide.load68, splat (i16 -128)
  %210 = or disjoint <8 x i16> %209, splat (i16 64)
  %211 = select <8 x i1> %208, <8 x i16> %210, <8 x i16> %wide.load68
  %212 = fcmp uno <8 x float> %199, zeroinitializer
  %213 = and <8 x i16> %wide.load69, splat (i16 -128)
  %214 = or disjoint <8 x i16> %213, splat (i16 64)
  %215 = select <8 x i1> %212, <8 x i16> %214, <8 x i16> %wide.load69
  %216 = add nuw nsw i64 %182, %index65
  %217 = getelementptr inbounds nuw [10485760 x bfloat], ptr %10, i64 0, i64 %216
  %218 = getelementptr inbounds nuw i8, ptr %217, i64 16
  %219 = getelementptr inbounds nuw i8, ptr %217, i64 32
  %220 = getelementptr inbounds nuw i8, ptr %217, i64 48
  store <8 x i16> %203, ptr %217, align 2, !alias.scope !14, !noalias !17
  store <8 x i16> %207, ptr %218, align 2, !alias.scope !14, !noalias !17
  store <8 x i16> %211, ptr %219, align 2, !alias.scope !14, !noalias !17
  store <8 x i16> %215, ptr %220, align 2, !alias.scope !14, !noalias !17
  %index.next70 = add nuw i64 %index65, 32
  %221 = icmp eq i64 %index.next70, 2048
  br i1 %221, label %.loopexit, label %vector.body64, !llvm.loop !27

.loopexit:                                        ; preds = %vector.body64, %.preheader.split17
  %222 = add nuw nsw i64 %170, 1
  %exitcond29.not = icmp eq i64 %222, 342
  br i1 %exitcond29.not, label %concatenate_convert_fusion_wrapped.exit, label %.preheader.split17, !llvm.loop !21

concatenate_convert_fusion_wrapped.exit:          ; preds = %.loopexit, %15, %71, %.loopexit14
  ret ptr null
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #1

attributes #0 = { uwtable "frame-pointer"="all" "prefer-vector-width"="256" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }

!llvm.module.flags = !{!0, !1}
!xla_cpu_memory_region_name = !{!2}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !{i32 1, !"xla_dylib_index", i64 0}
!2 = !{!"xla_cpu_emitter__concatenate_fusion_kernel_emitter__hlo_opcode__fusion"}
!3 = !{}
!4 = !{i64 2097152}
!5 = !{i64 16777216}
!6 = !{i64 20971520}
!7 = !{!8}
!8 = distinct !{!8, !9, !"concatenate_convert_fusion_wrapped: argument 0"}
!9 = distinct !{!9, !"concatenate_convert_fusion_wrapped"}
!10 = !{!11}
!11 = distinct !{!11, !9, !"concatenate_convert_fusion_wrapped: argument 1"}
!12 = !{!13}
!13 = distinct !{!13, !9, !"concatenate_convert_fusion_wrapped: argument 2"}
!14 = !{!15}
!15 = distinct !{!15, !9, !"concatenate_convert_fusion_wrapped: argument 3"}
!16 = !{!8, !11, !15}
!17 = !{!8, !11, !13}
!18 = distinct !{!18, !19, !20}
!19 = !{!"llvm.loop.isvectorized", i32 1}
!20 = !{!"llvm.loop.unroll.runtime.disable"}
!21 = distinct !{!21, !22}
!22 = !{!"llvm.loop.unroll.disable"}
!23 = distinct !{!23, !19, !20}
!24 = !{!8, !13, !15}
!25 = distinct !{!25, !19, !20}
!26 = !{!11, !13, !15}
!27 = distinct !{!27, !19, !20}
