; ModuleID = '__compute_module_slice_convert_fusion.3_kernel_module'
source_filename = "__compute_module_slice_convert_fusion.3_kernel_module"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind uwtable
define noalias noundef ptr @slice_convert_fusion.3(ptr readonly captures(none) %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %3 = load ptr, ptr %2, align 8, !invariant.load !3
  %4 = load ptr, ptr %3, align 8, !invariant.load !3, !dereferenceable !4
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %6 = load ptr, ptr %5, align 8, !invariant.load !3, !dereferenceable !5
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %8 = load ptr, ptr %7, align 8
  %9 = load i64, ptr %8, align 4, !invariant.load !3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9)
  %10 = icmp slt i64 %9, 12
  br i1 %10, label %11, label %58

11:                                               ; preds = %1
  %12 = icmp sgt i64 %9, -1
  br i1 %12, label %13, label %slice_convert_fusion.3_wrapped.exit

13:                                               ; preds = %11
  %14 = mul nuw nsw i64 %9, 15728640
  %15 = mul nuw nsw i64 %9, 3932160
  br label %16

16:                                               ; preds = %13, %56
  %17 = phi i64 [ 0, %13 ], [ %57, %56 ]
  %18 = mul nuw nsw i64 %17, 1572864
  %19 = add nuw nsw i64 %18, %14
  %20 = mul nuw nsw i64 %17, 393216
  %21 = add nuw nsw i64 %20, %15
  br label %vector.ph26

vector.ph26:                                      ; preds = %16, %vector.ph26
  %22 = phi i64 [ 0, %16 ], [ %55, %vector.ph26 ]
  %23 = mul nuw nsw i64 %22, 192
  %24 = add nuw nsw i64 %21, %23
  %25 = mul nuw nsw i64 %22, 768
  %26 = add nuw nsw i64 %19, %25
  %27 = getelementptr inbounds nuw [201326592 x bfloat], ptr %4, i64 0, i64 %26
  %28 = getelementptr inbounds nuw i8, ptr %27, i64 32
  %29 = getelementptr inbounds nuw i8, ptr %27, i64 64
  %30 = getelementptr inbounds nuw i8, ptr %27, i64 96
  %wide.load29 = load <16 x bfloat>, ptr %27, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load30 = load <16 x bfloat>, ptr %28, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load31 = load <16 x bfloat>, ptr %29, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load32 = load <16 x bfloat>, ptr %30, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %31 = getelementptr inbounds nuw [50331648 x bfloat], ptr %6, i64 0, i64 %24
  %32 = getelementptr inbounds nuw i8, ptr %31, i64 32
  %33 = getelementptr inbounds nuw i8, ptr %31, i64 64
  %34 = getelementptr inbounds nuw i8, ptr %31, i64 96
  store <16 x bfloat> %wide.load29, ptr %31, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load30, ptr %32, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load31, ptr %33, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load32, ptr %34, align 2, !alias.scope !9, !noalias !6
  %35 = or disjoint i64 %26, 64
  %36 = getelementptr inbounds nuw [201326592 x bfloat], ptr %4, i64 0, i64 %35
  %37 = getelementptr inbounds nuw i8, ptr %36, i64 32
  %38 = getelementptr inbounds nuw i8, ptr %36, i64 64
  %39 = getelementptr inbounds nuw i8, ptr %36, i64 96
  %wide.load29.1 = load <16 x bfloat>, ptr %36, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load30.1 = load <16 x bfloat>, ptr %37, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load31.1 = load <16 x bfloat>, ptr %38, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load32.1 = load <16 x bfloat>, ptr %39, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %40 = add nuw nsw i64 %24, 64
  %41 = getelementptr inbounds nuw [50331648 x bfloat], ptr %6, i64 0, i64 %40
  %42 = getelementptr inbounds nuw i8, ptr %41, i64 32
  %43 = getelementptr inbounds nuw i8, ptr %41, i64 64
  %44 = getelementptr inbounds nuw i8, ptr %41, i64 96
  store <16 x bfloat> %wide.load29.1, ptr %41, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load30.1, ptr %42, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load31.1, ptr %43, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load32.1, ptr %44, align 2, !alias.scope !9, !noalias !6
  %45 = or disjoint i64 %26, 128
  %46 = getelementptr inbounds nuw [201326592 x bfloat], ptr %4, i64 0, i64 %45
  %47 = getelementptr inbounds nuw i8, ptr %46, i64 32
  %48 = getelementptr inbounds nuw i8, ptr %46, i64 64
  %49 = getelementptr inbounds nuw i8, ptr %46, i64 96
  %wide.load29.2 = load <16 x bfloat>, ptr %46, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load30.2 = load <16 x bfloat>, ptr %47, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load31.2 = load <16 x bfloat>, ptr %48, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load32.2 = load <16 x bfloat>, ptr %49, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %50 = add nuw nsw i64 %24, 128
  %51 = getelementptr inbounds nuw [50331648 x bfloat], ptr %6, i64 0, i64 %50
  %52 = getelementptr inbounds nuw i8, ptr %51, i64 32
  %53 = getelementptr inbounds nuw i8, ptr %51, i64 64
  %54 = getelementptr inbounds nuw i8, ptr %51, i64 96
  store <16 x bfloat> %wide.load29.2, ptr %51, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load30.2, ptr %52, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load31.2, ptr %53, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load32.2, ptr %54, align 2, !alias.scope !9, !noalias !6
  %55 = add nuw nsw i64 %22, 1
  %exitcond14.not = icmp eq i64 %55, 2048
  br i1 %exitcond14.not, label %56, label %vector.ph26, !llvm.loop !11

56:                                               ; preds = %vector.ph26
  %57 = add nuw nsw i64 %17, 1
  %exitcond15.not = icmp eq i64 %57, 10
  br i1 %exitcond15.not, label %slice_convert_fusion.3_wrapped.exit, label %16, !llvm.loop !11

58:                                               ; preds = %1
  %59 = mul nuw nsw i64 %9, 10
  %60 = mul nuw nsw i64 %9, 15728640
  %61 = mul nuw nsw i64 %9, 3932160
  br label %62

62:                                               ; preds = %58, %.loopexit
  %63 = phi i64 [ 0, %58 ], [ %105, %.loopexit ]
  %64 = add nuw nsw i64 %63, %59
  %65 = icmp samesign ult i64 %64, 128
  br i1 %65, label %66, label %.loopexit

66:                                               ; preds = %62
  %67 = mul nuw nsw i64 %63, 1572864
  %68 = add nuw nsw i64 %67, %60
  %69 = mul nuw nsw i64 %63, 393216
  %70 = add nuw nsw i64 %69, %61
  br label %vector.ph

vector.ph:                                        ; preds = %66, %vector.ph
  %71 = phi i64 [ 0, %66 ], [ %104, %vector.ph ]
  %72 = mul nuw nsw i64 %71, 192
  %73 = add nuw nsw i64 %70, %72
  %74 = mul nuw nsw i64 %71, 768
  %75 = add nuw nsw i64 %68, %74
  %76 = getelementptr inbounds nuw [201326592 x bfloat], ptr %4, i64 0, i64 %75
  %77 = getelementptr inbounds nuw i8, ptr %76, i64 32
  %78 = getelementptr inbounds nuw i8, ptr %76, i64 64
  %79 = getelementptr inbounds nuw i8, ptr %76, i64 96
  %wide.load = load <16 x bfloat>, ptr %76, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load22 = load <16 x bfloat>, ptr %77, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load23 = load <16 x bfloat>, ptr %78, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load24 = load <16 x bfloat>, ptr %79, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %80 = getelementptr inbounds nuw [50331648 x bfloat], ptr %6, i64 0, i64 %73
  %81 = getelementptr inbounds nuw i8, ptr %80, i64 32
  %82 = getelementptr inbounds nuw i8, ptr %80, i64 64
  %83 = getelementptr inbounds nuw i8, ptr %80, i64 96
  store <16 x bfloat> %wide.load, ptr %80, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load22, ptr %81, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load23, ptr %82, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load24, ptr %83, align 2, !alias.scope !9, !noalias !6
  %84 = or disjoint i64 %75, 64
  %85 = getelementptr inbounds nuw [201326592 x bfloat], ptr %4, i64 0, i64 %84
  %86 = getelementptr inbounds nuw i8, ptr %85, i64 32
  %87 = getelementptr inbounds nuw i8, ptr %85, i64 64
  %88 = getelementptr inbounds nuw i8, ptr %85, i64 96
  %wide.load.1 = load <16 x bfloat>, ptr %85, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load22.1 = load <16 x bfloat>, ptr %86, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load23.1 = load <16 x bfloat>, ptr %87, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load24.1 = load <16 x bfloat>, ptr %88, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %89 = add nuw nsw i64 %73, 64
  %90 = getelementptr inbounds nuw [50331648 x bfloat], ptr %6, i64 0, i64 %89
  %91 = getelementptr inbounds nuw i8, ptr %90, i64 32
  %92 = getelementptr inbounds nuw i8, ptr %90, i64 64
  %93 = getelementptr inbounds nuw i8, ptr %90, i64 96
  store <16 x bfloat> %wide.load.1, ptr %90, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load22.1, ptr %91, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load23.1, ptr %92, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load24.1, ptr %93, align 2, !alias.scope !9, !noalias !6
  %94 = or disjoint i64 %75, 128
  %95 = getelementptr inbounds nuw [201326592 x bfloat], ptr %4, i64 0, i64 %94
  %96 = getelementptr inbounds nuw i8, ptr %95, i64 32
  %97 = getelementptr inbounds nuw i8, ptr %95, i64 64
  %98 = getelementptr inbounds nuw i8, ptr %95, i64 96
  %wide.load.2 = load <16 x bfloat>, ptr %95, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load22.2 = load <16 x bfloat>, ptr %96, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load23.2 = load <16 x bfloat>, ptr %97, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load24.2 = load <16 x bfloat>, ptr %98, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %99 = add nuw nsw i64 %73, 128
  %100 = getelementptr inbounds nuw [50331648 x bfloat], ptr %6, i64 0, i64 %99
  %101 = getelementptr inbounds nuw i8, ptr %100, i64 32
  %102 = getelementptr inbounds nuw i8, ptr %100, i64 64
  %103 = getelementptr inbounds nuw i8, ptr %100, i64 96
  store <16 x bfloat> %wide.load.2, ptr %100, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load22.2, ptr %101, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load23.2, ptr %102, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load24.2, ptr %103, align 2, !alias.scope !9, !noalias !6
  %104 = add nuw nsw i64 %71, 1
  %exitcond10.not = icmp eq i64 %104, 2048
  br i1 %exitcond10.not, label %.loopexit, label %vector.ph, !llvm.loop !11

.loopexit:                                        ; preds = %vector.ph, %62
  %105 = add nuw nsw i64 %63, 1
  %exitcond11.not = icmp eq i64 %105, 10
  br i1 %exitcond11.not, label %slice_convert_fusion.3_wrapped.exit, label %62, !llvm.loop !11

slice_convert_fusion.3_wrapped.exit:              ; preds = %.loopexit, %56, %11
  ret ptr null
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #1

attributes #0 = { nofree norecurse nosync nounwind uwtable "frame-pointer"="all" "prefer-vector-width"="256" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }

!llvm.module.flags = !{!0, !1}
!xla_cpu_memory_region_name = !{!2}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !{i32 1, !"xla_dylib_index", i64 3}
!2 = !{!"xla_cpu_emitter__loop_fusion_kernel_emitter__hlo_opcode__fusion"}
!3 = !{}
!4 = !{i64 402653184}
!5 = !{i64 100663296}
!6 = !{!7}
!7 = distinct !{!7, !8, !"slice_convert_fusion.3_wrapped: argument 0"}
!8 = distinct !{!8, !"slice_convert_fusion.3_wrapped"}
!9 = !{!10}
!10 = distinct !{!10, !8, !"slice_convert_fusion.3_wrapped: argument 1"}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.unroll.disable"}
