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
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %10 = load ptr, ptr %9, align 8
  %11 = load i64, ptr %10, align 4, !invariant.load !3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11)
  %12 = icmp slt i64 %11, 12
  br i1 %12, label %13, label %136

13:                                               ; preds = %1
  %14 = icmp sgt i64 %11, -1
  br i1 %14, label %15, label %concatenate_convert_fusion_wrapped.exit

15:                                               ; preds = %13
  %16 = mul nuw nsw i64 %11, 15728640
  %17 = mul nuw nsw i64 %11, 31457280
  br label %19

.preheader:                                       ; preds = %77
  %18 = or disjoint i64 %17, 393216
  br label %79

19:                                               ; preds = %15, %77
  %20 = phi i64 [ 0, %15 ], [ %78, %77 ]
  %21 = mul nuw nsw i64 %20, 1572864
  %22 = add nuw nsw i64 %21, %16
  %23 = mul nuw nsw i64 %20, 3145728
  %24 = add nuw nsw i64 %23, %17
  br label %25

25:                                               ; preds = %19, %75
  %26 = phi i64 [ 0, %19 ], [ %76, %75 ]
  %27 = mul nuw nsw i64 %26, 393216
  %28 = add nuw nsw i64 %22, %27
  %29 = mul nuw nsw i64 %26, 786432
  %30 = add nuw nsw i64 %24, %29
  br label %vector.ph74

vector.ph74:                                      ; preds = %25, %middle.block82
  %31 = phi i64 [ 0, %25 ], [ %74, %middle.block82 ]
  %32 = shl nuw nsw i64 %31, 11
  %33 = add nuw nsw i64 %28, %32
  %34 = add nuw nsw i64 %30, %32
  br label %vector.body75

vector.body75:                                    ; preds = %vector.body75, %vector.ph74
  %index76 = phi i64 [ 0, %vector.ph74 ], [ %index.next81, %vector.body75 ]
  %35 = add nuw nsw i64 %index76, %33
  %36 = getelementptr inbounds nuw [201326592 x bfloat], ptr %6, i64 0, i64 %35
  %37 = getelementptr inbounds nuw i8, ptr %36, i64 16
  %38 = getelementptr inbounds nuw i8, ptr %36, i64 32
  %39 = getelementptr inbounds nuw i8, ptr %36, i64 48
  %wide.load77 = load <8 x i16>, ptr %36, align 2, !invariant.load !3, !alias.scope !9, !noalias !13
  %wide.load78 = load <8 x i16>, ptr %37, align 2, !invariant.load !3, !alias.scope !9, !noalias !13
  %wide.load79 = load <8 x i16>, ptr %38, align 2, !invariant.load !3, !alias.scope !9, !noalias !13
  %wide.load80 = load <8 x i16>, ptr %39, align 2, !invariant.load !3, !alias.scope !9, !noalias !13
  %40 = zext <8 x i16> %wide.load77 to <8 x i32>
  %41 = zext <8 x i16> %wide.load78 to <8 x i32>
  %42 = zext <8 x i16> %wide.load79 to <8 x i32>
  %43 = zext <8 x i16> %wide.load80 to <8 x i32>
  %44 = shl nuw <8 x i32> %40, splat (i32 16)
  %45 = shl nuw <8 x i32> %41, splat (i32 16)
  %46 = shl nuw <8 x i32> %42, splat (i32 16)
  %47 = shl nuw <8 x i32> %43, splat (i32 16)
  %48 = bitcast <8 x i32> %44 to <8 x float>
  %49 = bitcast <8 x i32> %45 to <8 x float>
  %50 = bitcast <8 x i32> %46 to <8 x float>
  %51 = bitcast <8 x i32> %47 to <8 x float>
  %52 = fcmp uno <8 x float> %48, zeroinitializer
  %53 = and <8 x i16> %wide.load77, splat (i16 -128)
  %54 = or disjoint <8 x i16> %53, splat (i16 64)
  %55 = select <8 x i1> %52, <8 x i16> %54, <8 x i16> %wide.load77
  %56 = fcmp uno <8 x float> %49, zeroinitializer
  %57 = and <8 x i16> %wide.load78, splat (i16 -128)
  %58 = or disjoint <8 x i16> %57, splat (i16 64)
  %59 = select <8 x i1> %56, <8 x i16> %58, <8 x i16> %wide.load78
  %60 = fcmp uno <8 x float> %50, zeroinitializer
  %61 = and <8 x i16> %wide.load79, splat (i16 -128)
  %62 = or disjoint <8 x i16> %61, splat (i16 64)
  %63 = select <8 x i1> %60, <8 x i16> %62, <8 x i16> %wide.load79
  %64 = fcmp uno <8 x float> %51, zeroinitializer
  %65 = and <8 x i16> %wide.load80, splat (i16 -128)
  %66 = or disjoint <8 x i16> %65, splat (i16 64)
  %67 = select <8 x i1> %64, <8 x i16> %66, <8 x i16> %wide.load80
  %68 = add nuw nsw i64 %index76, %34
  %69 = getelementptr inbounds nuw [402653184 x bfloat], ptr %8, i64 0, i64 %68
  %70 = getelementptr inbounds nuw i8, ptr %69, i64 16
  %71 = getelementptr inbounds nuw i8, ptr %69, i64 32
  %72 = getelementptr inbounds nuw i8, ptr %69, i64 48
  store <8 x i16> %55, ptr %69, align 2, !alias.scope !11, !noalias !14
  store <8 x i16> %59, ptr %70, align 2, !alias.scope !11, !noalias !14
  store <8 x i16> %63, ptr %71, align 2, !alias.scope !11, !noalias !14
  store <8 x i16> %67, ptr %72, align 2, !alias.scope !11, !noalias !14
  %index.next81 = add nuw i64 %index76, 32
  %73 = icmp eq i64 %index.next81, 2048
  br i1 %73, label %middle.block82, label %vector.body75, !llvm.loop !15

middle.block82:                                   ; preds = %vector.body75
  %74 = add nuw nsw i64 %31, 1
  %exitcond39.not = icmp eq i64 %74, 192
  br i1 %exitcond39.not, label %75, label %vector.ph74, !llvm.loop !18

75:                                               ; preds = %middle.block82
  %76 = add nuw nsw i64 %26, 1
  %exitcond40.not = icmp eq i64 %76, 4
  br i1 %exitcond40.not, label %77, label %25, !llvm.loop !18

77:                                               ; preds = %75
  %78 = add nuw nsw i64 %20, 1
  %exitcond41.not = icmp eq i64 %78, 10
  br i1 %exitcond41.not, label %.preheader, label %19, !llvm.loop !18

79:                                               ; preds = %.preheader, %134
  %80 = phi i64 [ 0, %.preheader ], [ %135, %134 ]
  %81 = mul nuw nsw i64 %80, 1572864
  %82 = add nuw nsw i64 %81, %16
  %83 = mul nuw nsw i64 %80, 3145728
  %invariant.op29 = add nuw nsw i64 %83, %18
  br label %84

84:                                               ; preds = %79, %132
  %85 = phi i64 [ 0, %79 ], [ %133, %132 ]
  %86 = mul nuw nsw i64 %85, 393216
  %87 = add nuw nsw i64 %82, %86
  %88 = mul nuw nsw i64 %85, 786432
  %invariant.op28.reass = add nuw nsw i64 %88, %invariant.op29
  br label %vector.ph84

vector.ph84:                                      ; preds = %84, %middle.block92
  %89 = phi i64 [ 0, %84 ], [ %131, %middle.block92 ]
  %90 = shl nuw nsw i64 %89, 11
  %91 = add nuw nsw i64 %87, %90
  %.reass27.reass = add nuw nsw i64 %90, %invariant.op28.reass
  br label %vector.body85

vector.body85:                                    ; preds = %vector.body85, %vector.ph84
  %index86 = phi i64 [ 0, %vector.ph84 ], [ %index.next91, %vector.body85 ]
  %92 = add nuw nsw i64 %index86, %91
  %93 = getelementptr inbounds nuw [201326592 x bfloat], ptr %4, i64 0, i64 %92
  %94 = getelementptr inbounds nuw i8, ptr %93, i64 16
  %95 = getelementptr inbounds nuw i8, ptr %93, i64 32
  %96 = getelementptr inbounds nuw i8, ptr %93, i64 48
  %wide.load87 = load <8 x i16>, ptr %93, align 2, !invariant.load !3, !alias.scope !6, !noalias !20
  %wide.load88 = load <8 x i16>, ptr %94, align 2, !invariant.load !3, !alias.scope !6, !noalias !20
  %wide.load89 = load <8 x i16>, ptr %95, align 2, !invariant.load !3, !alias.scope !6, !noalias !20
  %wide.load90 = load <8 x i16>, ptr %96, align 2, !invariant.load !3, !alias.scope !6, !noalias !20
  %97 = zext <8 x i16> %wide.load87 to <8 x i32>
  %98 = zext <8 x i16> %wide.load88 to <8 x i32>
  %99 = zext <8 x i16> %wide.load89 to <8 x i32>
  %100 = zext <8 x i16> %wide.load90 to <8 x i32>
  %101 = shl nuw <8 x i32> %97, splat (i32 16)
  %102 = shl nuw <8 x i32> %98, splat (i32 16)
  %103 = shl nuw <8 x i32> %99, splat (i32 16)
  %104 = shl nuw <8 x i32> %100, splat (i32 16)
  %105 = bitcast <8 x i32> %101 to <8 x float>
  %106 = bitcast <8 x i32> %102 to <8 x float>
  %107 = bitcast <8 x i32> %103 to <8 x float>
  %108 = bitcast <8 x i32> %104 to <8 x float>
  %109 = fcmp uno <8 x float> %105, zeroinitializer
  %110 = and <8 x i16> %wide.load87, splat (i16 -128)
  %111 = or disjoint <8 x i16> %110, splat (i16 64)
  %112 = select <8 x i1> %109, <8 x i16> %111, <8 x i16> %wide.load87
  %113 = fcmp uno <8 x float> %106, zeroinitializer
  %114 = and <8 x i16> %wide.load88, splat (i16 -128)
  %115 = or disjoint <8 x i16> %114, splat (i16 64)
  %116 = select <8 x i1> %113, <8 x i16> %115, <8 x i16> %wide.load88
  %117 = fcmp uno <8 x float> %107, zeroinitializer
  %118 = and <8 x i16> %wide.load89, splat (i16 -128)
  %119 = or disjoint <8 x i16> %118, splat (i16 64)
  %120 = select <8 x i1> %117, <8 x i16> %119, <8 x i16> %wide.load89
  %121 = fcmp uno <8 x float> %108, zeroinitializer
  %122 = and <8 x i16> %wide.load90, splat (i16 -128)
  %123 = or disjoint <8 x i16> %122, splat (i16 64)
  %124 = select <8 x i1> %121, <8 x i16> %123, <8 x i16> %wide.load90
  %125 = add nuw nsw i64 %.reass27.reass, %index86
  %126 = getelementptr inbounds nuw [402653184 x bfloat], ptr %8, i64 0, i64 %125
  %127 = getelementptr inbounds nuw i8, ptr %126, i64 16
  %128 = getelementptr inbounds nuw i8, ptr %126, i64 32
  %129 = getelementptr inbounds nuw i8, ptr %126, i64 48
  store <8 x i16> %112, ptr %126, align 2, !alias.scope !11, !noalias !14
  store <8 x i16> %116, ptr %127, align 2, !alias.scope !11, !noalias !14
  store <8 x i16> %120, ptr %128, align 2, !alias.scope !11, !noalias !14
  store <8 x i16> %124, ptr %129, align 2, !alias.scope !11, !noalias !14
  %index.next91 = add nuw i64 %index86, 32
  %130 = icmp eq i64 %index.next91, 2048
  br i1 %130, label %middle.block92, label %vector.body85, !llvm.loop !21

middle.block92:                                   ; preds = %vector.body85
  %131 = add nuw nsw i64 %89, 1
  %exitcond43.not = icmp eq i64 %131, 192
  br i1 %exitcond43.not, label %132, label %vector.ph84, !llvm.loop !18

132:                                              ; preds = %middle.block92
  %133 = add nuw nsw i64 %85, 1
  %exitcond44.not = icmp eq i64 %133, 4
  br i1 %exitcond44.not, label %134, label %84, !llvm.loop !18

134:                                              ; preds = %132
  %135 = add nuw nsw i64 %80, 1
  %exitcond45.not = icmp eq i64 %135, 10
  br i1 %exitcond45.not, label %concatenate_convert_fusion_wrapped.exit, label %79, !llvm.loop !18

136:                                              ; preds = %1
  %137 = mul nuw nsw i64 %11, 10
  %138 = mul nuw nsw i64 %11, 15728640
  %139 = mul nuw nsw i64 %11, 31457280
  br label %141

.preheader19:                                     ; preds = %.loopexit21
  %140 = or disjoint i64 %139, 393216
  br label %203

141:                                              ; preds = %136, %.loopexit21
  %142 = phi i64 [ 0, %136 ], [ %202, %.loopexit21 ]
  %143 = add nuw nsw i64 %142, %137
  %144 = icmp samesign ult i64 %143, 128
  br i1 %144, label %145, label %.loopexit21

145:                                              ; preds = %141
  %146 = mul nuw nsw i64 %142, 1572864
  %147 = add nuw nsw i64 %146, %138
  %148 = mul nuw nsw i64 %142, 3145728
  %149 = add nuw nsw i64 %148, %139
  br label %150

150:                                              ; preds = %145, %200
  %151 = phi i64 [ 0, %145 ], [ %201, %200 ]
  %152 = mul nuw nsw i64 %151, 393216
  %153 = add nuw nsw i64 %147, %152
  %154 = mul nuw nsw i64 %151, 786432
  %155 = add nuw nsw i64 %149, %154
  br label %vector.ph

vector.ph:                                        ; preds = %150, %middle.block
  %156 = phi i64 [ 0, %150 ], [ %199, %middle.block ]
  %157 = shl nuw nsw i64 %156, 11
  %158 = add nuw nsw i64 %153, %157
  %159 = add nuw nsw i64 %155, %157
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %160 = add nuw nsw i64 %index, %158
  %161 = getelementptr inbounds nuw [201326592 x bfloat], ptr %6, i64 0, i64 %160
  %162 = getelementptr inbounds nuw i8, ptr %161, i64 16
  %163 = getelementptr inbounds nuw i8, ptr %161, i64 32
  %164 = getelementptr inbounds nuw i8, ptr %161, i64 48
  %wide.load = load <8 x i16>, ptr %161, align 2, !invariant.load !3, !alias.scope !9, !noalias !13
  %wide.load60 = load <8 x i16>, ptr %162, align 2, !invariant.load !3, !alias.scope !9, !noalias !13
  %wide.load61 = load <8 x i16>, ptr %163, align 2, !invariant.load !3, !alias.scope !9, !noalias !13
  %wide.load62 = load <8 x i16>, ptr %164, align 2, !invariant.load !3, !alias.scope !9, !noalias !13
  %165 = zext <8 x i16> %wide.load to <8 x i32>
  %166 = zext <8 x i16> %wide.load60 to <8 x i32>
  %167 = zext <8 x i16> %wide.load61 to <8 x i32>
  %168 = zext <8 x i16> %wide.load62 to <8 x i32>
  %169 = shl nuw <8 x i32> %165, splat (i32 16)
  %170 = shl nuw <8 x i32> %166, splat (i32 16)
  %171 = shl nuw <8 x i32> %167, splat (i32 16)
  %172 = shl nuw <8 x i32> %168, splat (i32 16)
  %173 = bitcast <8 x i32> %169 to <8 x float>
  %174 = bitcast <8 x i32> %170 to <8 x float>
  %175 = bitcast <8 x i32> %171 to <8 x float>
  %176 = bitcast <8 x i32> %172 to <8 x float>
  %177 = fcmp uno <8 x float> %173, zeroinitializer
  %178 = and <8 x i16> %wide.load, splat (i16 -128)
  %179 = or disjoint <8 x i16> %178, splat (i16 64)
  %180 = select <8 x i1> %177, <8 x i16> %179, <8 x i16> %wide.load
  %181 = fcmp uno <8 x float> %174, zeroinitializer
  %182 = and <8 x i16> %wide.load60, splat (i16 -128)
  %183 = or disjoint <8 x i16> %182, splat (i16 64)
  %184 = select <8 x i1> %181, <8 x i16> %183, <8 x i16> %wide.load60
  %185 = fcmp uno <8 x float> %175, zeroinitializer
  %186 = and <8 x i16> %wide.load61, splat (i16 -128)
  %187 = or disjoint <8 x i16> %186, splat (i16 64)
  %188 = select <8 x i1> %185, <8 x i16> %187, <8 x i16> %wide.load61
  %189 = fcmp uno <8 x float> %176, zeroinitializer
  %190 = and <8 x i16> %wide.load62, splat (i16 -128)
  %191 = or disjoint <8 x i16> %190, splat (i16 64)
  %192 = select <8 x i1> %189, <8 x i16> %191, <8 x i16> %wide.load62
  %193 = add nuw nsw i64 %index, %159
  %194 = getelementptr inbounds nuw [402653184 x bfloat], ptr %8, i64 0, i64 %193
  %195 = getelementptr inbounds nuw i8, ptr %194, i64 16
  %196 = getelementptr inbounds nuw i8, ptr %194, i64 32
  %197 = getelementptr inbounds nuw i8, ptr %194, i64 48
  store <8 x i16> %180, ptr %194, align 2, !alias.scope !11, !noalias !14
  store <8 x i16> %184, ptr %195, align 2, !alias.scope !11, !noalias !14
  store <8 x i16> %188, ptr %196, align 2, !alias.scope !11, !noalias !14
  store <8 x i16> %192, ptr %197, align 2, !alias.scope !11, !noalias !14
  %index.next = add nuw i64 %index, 32
  %198 = icmp eq i64 %index.next, 2048
  br i1 %198, label %middle.block, label %vector.body, !llvm.loop !22

middle.block:                                     ; preds = %vector.body
  %199 = add nuw nsw i64 %156, 1
  %exitcond31.not = icmp eq i64 %199, 192
  br i1 %exitcond31.not, label %200, label %vector.ph, !llvm.loop !18

200:                                              ; preds = %middle.block
  %201 = add nuw nsw i64 %151, 1
  %exitcond32.not = icmp eq i64 %201, 4
  br i1 %exitcond32.not, label %.loopexit21, label %150, !llvm.loop !18

.loopexit21:                                      ; preds = %200, %141
  %202 = add nuw nsw i64 %142, 1
  %exitcond33.not = icmp eq i64 %202, 10
  br i1 %exitcond33.not, label %.preheader19, label %141, !llvm.loop !18

203:                                              ; preds = %.preheader19, %.loopexit
  %204 = phi i64 [ 0, %.preheader19 ], [ %261, %.loopexit ]
  %205 = add nuw nsw i64 %204, %137
  %206 = icmp samesign ult i64 %205, 128
  br i1 %206, label %207, label %.loopexit

207:                                              ; preds = %203
  %208 = mul nuw nsw i64 %204, 1572864
  %209 = add nuw nsw i64 %208, %138
  %210 = mul nuw nsw i64 %204, 3145728
  %invariant.op25 = add nuw nsw i64 %210, %140
  br label %211

211:                                              ; preds = %207, %259
  %212 = phi i64 [ 0, %207 ], [ %260, %259 ]
  %213 = mul nuw nsw i64 %212, 393216
  %214 = add nuw nsw i64 %209, %213
  %215 = mul nuw nsw i64 %212, 786432
  %invariant.op24.reass = add nuw nsw i64 %215, %invariant.op25
  br label %vector.ph64

vector.ph64:                                      ; preds = %211, %middle.block72
  %216 = phi i64 [ 0, %211 ], [ %258, %middle.block72 ]
  %217 = shl nuw nsw i64 %216, 11
  %218 = add nuw nsw i64 %214, %217
  %.reass23.reass = add nuw nsw i64 %217, %invariant.op24.reass
  br label %vector.body65

vector.body65:                                    ; preds = %vector.body65, %vector.ph64
  %index66 = phi i64 [ 0, %vector.ph64 ], [ %index.next71, %vector.body65 ]
  %219 = add nuw nsw i64 %index66, %218
  %220 = getelementptr inbounds nuw [201326592 x bfloat], ptr %4, i64 0, i64 %219
  %221 = getelementptr inbounds nuw i8, ptr %220, i64 16
  %222 = getelementptr inbounds nuw i8, ptr %220, i64 32
  %223 = getelementptr inbounds nuw i8, ptr %220, i64 48
  %wide.load67 = load <8 x i16>, ptr %220, align 2, !invariant.load !3, !alias.scope !6, !noalias !20
  %wide.load68 = load <8 x i16>, ptr %221, align 2, !invariant.load !3, !alias.scope !6, !noalias !20
  %wide.load69 = load <8 x i16>, ptr %222, align 2, !invariant.load !3, !alias.scope !6, !noalias !20
  %wide.load70 = load <8 x i16>, ptr %223, align 2, !invariant.load !3, !alias.scope !6, !noalias !20
  %224 = zext <8 x i16> %wide.load67 to <8 x i32>
  %225 = zext <8 x i16> %wide.load68 to <8 x i32>
  %226 = zext <8 x i16> %wide.load69 to <8 x i32>
  %227 = zext <8 x i16> %wide.load70 to <8 x i32>
  %228 = shl nuw <8 x i32> %224, splat (i32 16)
  %229 = shl nuw <8 x i32> %225, splat (i32 16)
  %230 = shl nuw <8 x i32> %226, splat (i32 16)
  %231 = shl nuw <8 x i32> %227, splat (i32 16)
  %232 = bitcast <8 x i32> %228 to <8 x float>
  %233 = bitcast <8 x i32> %229 to <8 x float>
  %234 = bitcast <8 x i32> %230 to <8 x float>
  %235 = bitcast <8 x i32> %231 to <8 x float>
  %236 = fcmp uno <8 x float> %232, zeroinitializer
  %237 = and <8 x i16> %wide.load67, splat (i16 -128)
  %238 = or disjoint <8 x i16> %237, splat (i16 64)
  %239 = select <8 x i1> %236, <8 x i16> %238, <8 x i16> %wide.load67
  %240 = fcmp uno <8 x float> %233, zeroinitializer
  %241 = and <8 x i16> %wide.load68, splat (i16 -128)
  %242 = or disjoint <8 x i16> %241, splat (i16 64)
  %243 = select <8 x i1> %240, <8 x i16> %242, <8 x i16> %wide.load68
  %244 = fcmp uno <8 x float> %234, zeroinitializer
  %245 = and <8 x i16> %wide.load69, splat (i16 -128)
  %246 = or disjoint <8 x i16> %245, splat (i16 64)
  %247 = select <8 x i1> %244, <8 x i16> %246, <8 x i16> %wide.load69
  %248 = fcmp uno <8 x float> %235, zeroinitializer
  %249 = and <8 x i16> %wide.load70, splat (i16 -128)
  %250 = or disjoint <8 x i16> %249, splat (i16 64)
  %251 = select <8 x i1> %248, <8 x i16> %250, <8 x i16> %wide.load70
  %252 = add nuw nsw i64 %.reass23.reass, %index66
  %253 = getelementptr inbounds nuw [402653184 x bfloat], ptr %8, i64 0, i64 %252
  %254 = getelementptr inbounds nuw i8, ptr %253, i64 16
  %255 = getelementptr inbounds nuw i8, ptr %253, i64 32
  %256 = getelementptr inbounds nuw i8, ptr %253, i64 48
  store <8 x i16> %239, ptr %253, align 2, !alias.scope !11, !noalias !14
  store <8 x i16> %243, ptr %254, align 2, !alias.scope !11, !noalias !14
  store <8 x i16> %247, ptr %255, align 2, !alias.scope !11, !noalias !14
  store <8 x i16> %251, ptr %256, align 2, !alias.scope !11, !noalias !14
  %index.next71 = add nuw i64 %index66, 32
  %257 = icmp eq i64 %index.next71, 2048
  br i1 %257, label %middle.block72, label %vector.body65, !llvm.loop !23

middle.block72:                                   ; preds = %vector.body65
  %258 = add nuw nsw i64 %216, 1
  %exitcond35.not = icmp eq i64 %258, 192
  br i1 %exitcond35.not, label %259, label %vector.ph64, !llvm.loop !18

259:                                              ; preds = %middle.block72
  %260 = add nuw nsw i64 %212, 1
  %exitcond36.not = icmp eq i64 %260, 4
  br i1 %exitcond36.not, label %.loopexit, label %211, !llvm.loop !18

.loopexit:                                        ; preds = %259, %203
  %261 = add nuw nsw i64 %204, 1
  %exitcond37.not = icmp eq i64 %261, 10
  br i1 %exitcond37.not, label %concatenate_convert_fusion_wrapped.exit, label %203, !llvm.loop !18

concatenate_convert_fusion_wrapped.exit:          ; preds = %.loopexit, %134, %13
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
!4 = !{i64 402653184}
!5 = !{i64 805306368}
!6 = !{!7}
!7 = distinct !{!7, !8, !"concatenate_convert_fusion_wrapped: argument 0"}
!8 = distinct !{!8, !"concatenate_convert_fusion_wrapped"}
!9 = !{!10}
!10 = distinct !{!10, !8, !"concatenate_convert_fusion_wrapped: argument 1"}
!11 = !{!12}
!12 = distinct !{!12, !8, !"concatenate_convert_fusion_wrapped: argument 2"}
!13 = !{!7, !12}
!14 = !{!7, !10}
!15 = distinct !{!15, !16, !17}
!16 = !{!"llvm.loop.isvectorized", i32 1}
!17 = !{!"llvm.loop.unroll.runtime.disable"}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.unroll.disable"}
!20 = !{!10, !12}
!21 = distinct !{!21, !16, !17}
!22 = distinct !{!22, !16, !17}
!23 = distinct !{!23, !16, !17}
