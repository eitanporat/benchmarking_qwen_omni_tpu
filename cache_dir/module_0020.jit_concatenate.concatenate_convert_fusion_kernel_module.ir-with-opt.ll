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
  %8 = load ptr, ptr %7, align 8, !invariant.load !3, !dereferenceable !4
  %9 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %10 = load ptr, ptr %9, align 8, !invariant.load !3, !dereferenceable !5
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %12 = load ptr, ptr %11, align 8
  %13 = load i64, ptr %12, align 4, !invariant.load !3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13)
  %14 = icmp ult i64 %13, 12
  br i1 %14, label %15, label %concatenate_convert_fusion_wrapped.exit

15:                                               ; preds = %1
  %.lhs.trunc = trunc nuw nsw i64 %13 to i8
  %16 = udiv i8 %.lhs.trunc, 3
  %.zext = zext nneg i8 %16 to i64
  %17 = urem i8 %.lhs.trunc, 3
  %.zext8 = zext nneg i8 %17 to i64
  %18 = mul nuw nsw i64 %13, 110592
  %19 = mul nuw nsw i64 %.zext8, 110592
  %20 = mul nuw nsw i64 %.zext, 995328
  %21 = add nuw nsw i64 %19, %20
  br label %vector.ph

.preheader9:                                      ; preds = %middle.block
  %22 = add nuw nsw i64 %21, 331776
  br label %vector.ph22

vector.ph:                                        ; preds = %15, %middle.block
  %23 = phi i64 [ 0, %15 ], [ %66, %middle.block ]
  %24 = mul nuw nsw i64 %23, 1152
  %25 = add nuw nsw i64 %24, %18
  %26 = add nuw nsw i64 %24, %21
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %27 = add nuw nsw i64 %25, %index
  %28 = getelementptr inbounds nuw [1327104 x bfloat], ptr %8, i64 0, i64 %27
  %29 = getelementptr inbounds nuw i8, ptr %28, i64 16
  %30 = getelementptr inbounds nuw i8, ptr %28, i64 32
  %31 = getelementptr inbounds nuw i8, ptr %28, i64 48
  %wide.load = load <8 x i16>, ptr %28, align 2, !invariant.load !3, !alias.scope !11, !noalias !15
  %wide.load18 = load <8 x i16>, ptr %29, align 2, !invariant.load !3, !alias.scope !11, !noalias !15
  %wide.load19 = load <8 x i16>, ptr %30, align 2, !invariant.load !3, !alias.scope !11, !noalias !15
  %wide.load20 = load <8 x i16>, ptr %31, align 2, !invariant.load !3, !alias.scope !11, !noalias !15
  %32 = zext <8 x i16> %wide.load to <8 x i32>
  %33 = zext <8 x i16> %wide.load18 to <8 x i32>
  %34 = zext <8 x i16> %wide.load19 to <8 x i32>
  %35 = zext <8 x i16> %wide.load20 to <8 x i32>
  %36 = shl nuw <8 x i32> %32, splat (i32 16)
  %37 = shl nuw <8 x i32> %33, splat (i32 16)
  %38 = shl nuw <8 x i32> %34, splat (i32 16)
  %39 = shl nuw <8 x i32> %35, splat (i32 16)
  %40 = bitcast <8 x i32> %36 to <8 x float>
  %41 = bitcast <8 x i32> %37 to <8 x float>
  %42 = bitcast <8 x i32> %38 to <8 x float>
  %43 = bitcast <8 x i32> %39 to <8 x float>
  %44 = fcmp uno <8 x float> %40, zeroinitializer
  %45 = and <8 x i16> %wide.load, splat (i16 -128)
  %46 = or disjoint <8 x i16> %45, splat (i16 64)
  %47 = select <8 x i1> %44, <8 x i16> %46, <8 x i16> %wide.load
  %48 = fcmp uno <8 x float> %41, zeroinitializer
  %49 = and <8 x i16> %wide.load18, splat (i16 -128)
  %50 = or disjoint <8 x i16> %49, splat (i16 64)
  %51 = select <8 x i1> %48, <8 x i16> %50, <8 x i16> %wide.load18
  %52 = fcmp uno <8 x float> %42, zeroinitializer
  %53 = and <8 x i16> %wide.load19, splat (i16 -128)
  %54 = or disjoint <8 x i16> %53, splat (i16 64)
  %55 = select <8 x i1> %52, <8 x i16> %54, <8 x i16> %wide.load19
  %56 = fcmp uno <8 x float> %43, zeroinitializer
  %57 = and <8 x i16> %wide.load20, splat (i16 -128)
  %58 = or disjoint <8 x i16> %57, splat (i16 64)
  %59 = select <8 x i1> %56, <8 x i16> %58, <8 x i16> %wide.load20
  %60 = add nuw nsw i64 %26, %index
  %61 = getelementptr inbounds nuw [3981312 x bfloat], ptr %10, i64 0, i64 %60
  %62 = getelementptr inbounds nuw i8, ptr %61, i64 16
  %63 = getelementptr inbounds nuw i8, ptr %61, i64 32
  %64 = getelementptr inbounds nuw i8, ptr %61, i64 48
  store <8 x i16> %47, ptr %61, align 2, !alias.scope !13, !noalias !16
  store <8 x i16> %51, ptr %62, align 2, !alias.scope !13, !noalias !16
  store <8 x i16> %55, ptr %63, align 2, !alias.scope !13, !noalias !16
  store <8 x i16> %59, ptr %64, align 2, !alias.scope !13, !noalias !16
  %index.next = add nuw i64 %index, 32
  %65 = icmp eq i64 %index.next, 1152
  br i1 %65, label %middle.block, label %vector.body, !llvm.loop !17

middle.block:                                     ; preds = %vector.body
  %66 = add nuw nsw i64 %23, 1
  %exitcond10.not = icmp eq i64 %66, 96
  br i1 %exitcond10.not, label %.preheader9, label %vector.ph, !llvm.loop !20

.preheader:                                       ; preds = %middle.block30
  %67 = add nuw nsw i64 %21, 663552
  br label %vector.ph32

vector.ph22:                                      ; preds = %.preheader9, %middle.block30
  %68 = phi i64 [ 0, %.preheader9 ], [ %111, %middle.block30 ]
  %69 = mul nuw nsw i64 %68, 1152
  %70 = add nuw nsw i64 %69, %18
  %71 = add nuw nsw i64 %22, %69
  br label %vector.body23

vector.body23:                                    ; preds = %vector.body23, %vector.ph22
  %index24 = phi i64 [ 0, %vector.ph22 ], [ %index.next29, %vector.body23 ]
  %72 = add nuw nsw i64 %70, %index24
  %73 = getelementptr inbounds nuw [1327104 x bfloat], ptr %6, i64 0, i64 %72
  %74 = getelementptr inbounds nuw i8, ptr %73, i64 16
  %75 = getelementptr inbounds nuw i8, ptr %73, i64 32
  %76 = getelementptr inbounds nuw i8, ptr %73, i64 48
  %wide.load25 = load <8 x i16>, ptr %73, align 2, !invariant.load !3, !alias.scope !9, !noalias !22
  %wide.load26 = load <8 x i16>, ptr %74, align 2, !invariant.load !3, !alias.scope !9, !noalias !22
  %wide.load27 = load <8 x i16>, ptr %75, align 2, !invariant.load !3, !alias.scope !9, !noalias !22
  %wide.load28 = load <8 x i16>, ptr %76, align 2, !invariant.load !3, !alias.scope !9, !noalias !22
  %77 = zext <8 x i16> %wide.load25 to <8 x i32>
  %78 = zext <8 x i16> %wide.load26 to <8 x i32>
  %79 = zext <8 x i16> %wide.load27 to <8 x i32>
  %80 = zext <8 x i16> %wide.load28 to <8 x i32>
  %81 = shl nuw <8 x i32> %77, splat (i32 16)
  %82 = shl nuw <8 x i32> %78, splat (i32 16)
  %83 = shl nuw <8 x i32> %79, splat (i32 16)
  %84 = shl nuw <8 x i32> %80, splat (i32 16)
  %85 = bitcast <8 x i32> %81 to <8 x float>
  %86 = bitcast <8 x i32> %82 to <8 x float>
  %87 = bitcast <8 x i32> %83 to <8 x float>
  %88 = bitcast <8 x i32> %84 to <8 x float>
  %89 = fcmp uno <8 x float> %85, zeroinitializer
  %90 = and <8 x i16> %wide.load25, splat (i16 -128)
  %91 = or disjoint <8 x i16> %90, splat (i16 64)
  %92 = select <8 x i1> %89, <8 x i16> %91, <8 x i16> %wide.load25
  %93 = fcmp uno <8 x float> %86, zeroinitializer
  %94 = and <8 x i16> %wide.load26, splat (i16 -128)
  %95 = or disjoint <8 x i16> %94, splat (i16 64)
  %96 = select <8 x i1> %93, <8 x i16> %95, <8 x i16> %wide.load26
  %97 = fcmp uno <8 x float> %87, zeroinitializer
  %98 = and <8 x i16> %wide.load27, splat (i16 -128)
  %99 = or disjoint <8 x i16> %98, splat (i16 64)
  %100 = select <8 x i1> %97, <8 x i16> %99, <8 x i16> %wide.load27
  %101 = fcmp uno <8 x float> %88, zeroinitializer
  %102 = and <8 x i16> %wide.load28, splat (i16 -128)
  %103 = or disjoint <8 x i16> %102, splat (i16 64)
  %104 = select <8 x i1> %101, <8 x i16> %103, <8 x i16> %wide.load28
  %105 = add nuw nsw i64 %71, %index24
  %106 = getelementptr inbounds nuw [3981312 x bfloat], ptr %10, i64 0, i64 %105
  %107 = getelementptr inbounds nuw i8, ptr %106, i64 16
  %108 = getelementptr inbounds nuw i8, ptr %106, i64 32
  %109 = getelementptr inbounds nuw i8, ptr %106, i64 48
  store <8 x i16> %92, ptr %106, align 2, !alias.scope !13, !noalias !16
  store <8 x i16> %96, ptr %107, align 2, !alias.scope !13, !noalias !16
  store <8 x i16> %100, ptr %108, align 2, !alias.scope !13, !noalias !16
  store <8 x i16> %104, ptr %109, align 2, !alias.scope !13, !noalias !16
  %index.next29 = add nuw i64 %index24, 32
  %110 = icmp eq i64 %index.next29, 1152
  br i1 %110, label %middle.block30, label %vector.body23, !llvm.loop !23

middle.block30:                                   ; preds = %vector.body23
  %111 = add nuw nsw i64 %68, 1
  %exitcond12.not = icmp eq i64 %111, 96
  br i1 %exitcond12.not, label %.preheader, label %vector.ph22, !llvm.loop !20

vector.ph32:                                      ; preds = %.preheader, %middle.block40
  %112 = phi i64 [ 0, %.preheader ], [ %155, %middle.block40 ]
  %113 = mul nuw nsw i64 %112, 1152
  %114 = add nuw nsw i64 %113, %18
  %115 = add nuw nsw i64 %67, %113
  br label %vector.body33

vector.body33:                                    ; preds = %vector.body33, %vector.ph32
  %index34 = phi i64 [ 0, %vector.ph32 ], [ %index.next39, %vector.body33 ]
  %116 = add nuw nsw i64 %114, %index34
  %117 = getelementptr inbounds nuw [1327104 x bfloat], ptr %4, i64 0, i64 %116
  %118 = getelementptr inbounds nuw i8, ptr %117, i64 16
  %119 = getelementptr inbounds nuw i8, ptr %117, i64 32
  %120 = getelementptr inbounds nuw i8, ptr %117, i64 48
  %wide.load35 = load <8 x i16>, ptr %117, align 2, !invariant.load !3, !alias.scope !6, !noalias !24
  %wide.load36 = load <8 x i16>, ptr %118, align 2, !invariant.load !3, !alias.scope !6, !noalias !24
  %wide.load37 = load <8 x i16>, ptr %119, align 2, !invariant.load !3, !alias.scope !6, !noalias !24
  %wide.load38 = load <8 x i16>, ptr %120, align 2, !invariant.load !3, !alias.scope !6, !noalias !24
  %121 = zext <8 x i16> %wide.load35 to <8 x i32>
  %122 = zext <8 x i16> %wide.load36 to <8 x i32>
  %123 = zext <8 x i16> %wide.load37 to <8 x i32>
  %124 = zext <8 x i16> %wide.load38 to <8 x i32>
  %125 = shl nuw <8 x i32> %121, splat (i32 16)
  %126 = shl nuw <8 x i32> %122, splat (i32 16)
  %127 = shl nuw <8 x i32> %123, splat (i32 16)
  %128 = shl nuw <8 x i32> %124, splat (i32 16)
  %129 = bitcast <8 x i32> %125 to <8 x float>
  %130 = bitcast <8 x i32> %126 to <8 x float>
  %131 = bitcast <8 x i32> %127 to <8 x float>
  %132 = bitcast <8 x i32> %128 to <8 x float>
  %133 = fcmp uno <8 x float> %129, zeroinitializer
  %134 = and <8 x i16> %wide.load35, splat (i16 -128)
  %135 = or disjoint <8 x i16> %134, splat (i16 64)
  %136 = select <8 x i1> %133, <8 x i16> %135, <8 x i16> %wide.load35
  %137 = fcmp uno <8 x float> %130, zeroinitializer
  %138 = and <8 x i16> %wide.load36, splat (i16 -128)
  %139 = or disjoint <8 x i16> %138, splat (i16 64)
  %140 = select <8 x i1> %137, <8 x i16> %139, <8 x i16> %wide.load36
  %141 = fcmp uno <8 x float> %131, zeroinitializer
  %142 = and <8 x i16> %wide.load37, splat (i16 -128)
  %143 = or disjoint <8 x i16> %142, splat (i16 64)
  %144 = select <8 x i1> %141, <8 x i16> %143, <8 x i16> %wide.load37
  %145 = fcmp uno <8 x float> %132, zeroinitializer
  %146 = and <8 x i16> %wide.load38, splat (i16 -128)
  %147 = or disjoint <8 x i16> %146, splat (i16 64)
  %148 = select <8 x i1> %145, <8 x i16> %147, <8 x i16> %wide.load38
  %149 = add nuw nsw i64 %115, %index34
  %150 = getelementptr inbounds nuw [3981312 x bfloat], ptr %10, i64 0, i64 %149
  %151 = getelementptr inbounds nuw i8, ptr %150, i64 16
  %152 = getelementptr inbounds nuw i8, ptr %150, i64 32
  %153 = getelementptr inbounds nuw i8, ptr %150, i64 48
  store <8 x i16> %136, ptr %150, align 2, !alias.scope !13, !noalias !16
  store <8 x i16> %140, ptr %151, align 2, !alias.scope !13, !noalias !16
  store <8 x i16> %144, ptr %152, align 2, !alias.scope !13, !noalias !16
  store <8 x i16> %148, ptr %153, align 2, !alias.scope !13, !noalias !16
  %index.next39 = add nuw i64 %index34, 32
  %154 = icmp eq i64 %index.next39, 1152
  br i1 %154, label %middle.block40, label %vector.body33, !llvm.loop !25

middle.block40:                                   ; preds = %vector.body33
  %155 = add nuw nsw i64 %112, 1
  %exitcond14.not = icmp eq i64 %155, 96
  br i1 %exitcond14.not, label %concatenate_convert_fusion_wrapped.exit, label %vector.ph32, !llvm.loop !20

concatenate_convert_fusion_wrapped.exit:          ; preds = %middle.block40, %1
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
!4 = !{i64 2654208}
!5 = !{i64 7962624}
!6 = !{!7}
!7 = distinct !{!7, !8, !"concatenate_convert_fusion_wrapped: argument 0"}
!8 = distinct !{!8, !"concatenate_convert_fusion_wrapped"}
!9 = !{!10}
!10 = distinct !{!10, !8, !"concatenate_convert_fusion_wrapped: argument 1"}
!11 = !{!12}
!12 = distinct !{!12, !8, !"concatenate_convert_fusion_wrapped: argument 2"}
!13 = !{!14}
!14 = distinct !{!14, !8, !"concatenate_convert_fusion_wrapped: argument 3"}
!15 = !{!7, !10, !14}
!16 = !{!7, !10, !12}
!17 = distinct !{!17, !18, !19}
!18 = !{!"llvm.loop.isvectorized", i32 1}
!19 = !{!"llvm.loop.unroll.runtime.disable"}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.unroll.disable"}
!22 = !{!7, !12, !14}
!23 = distinct !{!23, !18, !19}
!24 = !{!10, !12, !14}
!25 = distinct !{!25, !18, !19}
