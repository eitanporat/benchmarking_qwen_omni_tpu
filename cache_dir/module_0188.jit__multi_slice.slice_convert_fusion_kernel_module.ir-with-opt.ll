; ModuleID = '__compute_module_slice_convert_fusion_kernel_module'
source_filename = "__compute_module_slice_convert_fusion_kernel_module"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind uwtable
define noalias noundef ptr @slice_convert_fusion(ptr readonly captures(none) %0) local_unnamed_addr #0 {
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
  br i1 %10, label %11, label %59

11:                                               ; preds = %1
  %12 = icmp sgt i64 %9, -1
  br i1 %12, label %13, label %slice_convert_fusion_wrapped.exit

13:                                               ; preds = %11
  %14 = mul nuw nsw i64 %9, 15728640
  %15 = mul nuw nsw i64 %9, 3932160
  %16 = or disjoint i64 %14, 576
  br label %17

17:                                               ; preds = %13, %57
  %18 = phi i64 [ 0, %13 ], [ %58, %57 ]
  %19 = mul nuw nsw i64 %18, 1572864
  %20 = mul nuw nsw i64 %18, 393216
  %21 = add nuw nsw i64 %20, %15
  %22 = add nuw nsw i64 %16, %19
  br label %vector.ph26

vector.ph26:                                      ; preds = %17, %vector.ph26
  %23 = phi i64 [ 0, %17 ], [ %56, %vector.ph26 ]
  %24 = mul nuw nsw i64 %23, 768
  %25 = add nuw nsw i64 %22, %24
  %26 = mul nuw nsw i64 %23, 192
  %27 = add nuw nsw i64 %21, %26
  %28 = getelementptr inbounds nuw [201326592 x bfloat], ptr %4, i64 0, i64 %25
  %29 = getelementptr inbounds nuw i8, ptr %28, i64 32
  %30 = getelementptr inbounds nuw i8, ptr %28, i64 64
  %31 = getelementptr inbounds nuw i8, ptr %28, i64 96
  %wide.load29 = load <16 x bfloat>, ptr %28, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load30 = load <16 x bfloat>, ptr %29, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load31 = load <16 x bfloat>, ptr %30, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load32 = load <16 x bfloat>, ptr %31, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %32 = getelementptr inbounds nuw [50331648 x bfloat], ptr %6, i64 0, i64 %27
  %33 = getelementptr inbounds nuw i8, ptr %32, i64 32
  %34 = getelementptr inbounds nuw i8, ptr %32, i64 64
  %35 = getelementptr inbounds nuw i8, ptr %32, i64 96
  store <16 x bfloat> %wide.load29, ptr %32, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load30, ptr %33, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load31, ptr %34, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load32, ptr %35, align 2, !alias.scope !9, !noalias !6
  %36 = add nuw nsw i64 %25, 64
  %37 = getelementptr inbounds nuw [201326592 x bfloat], ptr %4, i64 0, i64 %36
  %38 = getelementptr inbounds nuw i8, ptr %37, i64 32
  %39 = getelementptr inbounds nuw i8, ptr %37, i64 64
  %40 = getelementptr inbounds nuw i8, ptr %37, i64 96
  %wide.load29.1 = load <16 x bfloat>, ptr %37, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load30.1 = load <16 x bfloat>, ptr %38, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load31.1 = load <16 x bfloat>, ptr %39, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load32.1 = load <16 x bfloat>, ptr %40, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %41 = add nuw nsw i64 %27, 64
  %42 = getelementptr inbounds nuw [50331648 x bfloat], ptr %6, i64 0, i64 %41
  %43 = getelementptr inbounds nuw i8, ptr %42, i64 32
  %44 = getelementptr inbounds nuw i8, ptr %42, i64 64
  %45 = getelementptr inbounds nuw i8, ptr %42, i64 96
  store <16 x bfloat> %wide.load29.1, ptr %42, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load30.1, ptr %43, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load31.1, ptr %44, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load32.1, ptr %45, align 2, !alias.scope !9, !noalias !6
  %46 = or disjoint i64 %25, 128
  %47 = getelementptr inbounds nuw [201326592 x bfloat], ptr %4, i64 0, i64 %46
  %48 = getelementptr inbounds nuw i8, ptr %47, i64 32
  %49 = getelementptr inbounds nuw i8, ptr %47, i64 64
  %50 = getelementptr inbounds nuw i8, ptr %47, i64 96
  %wide.load29.2 = load <16 x bfloat>, ptr %47, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load30.2 = load <16 x bfloat>, ptr %48, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load31.2 = load <16 x bfloat>, ptr %49, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load32.2 = load <16 x bfloat>, ptr %50, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %51 = add nuw nsw i64 %27, 128
  %52 = getelementptr inbounds nuw [50331648 x bfloat], ptr %6, i64 0, i64 %51
  %53 = getelementptr inbounds nuw i8, ptr %52, i64 32
  %54 = getelementptr inbounds nuw i8, ptr %52, i64 64
  %55 = getelementptr inbounds nuw i8, ptr %52, i64 96
  store <16 x bfloat> %wide.load29.2, ptr %52, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load30.2, ptr %53, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load31.2, ptr %54, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load32.2, ptr %55, align 2, !alias.scope !9, !noalias !6
  %56 = add nuw nsw i64 %23, 1
  %exitcond14.not = icmp eq i64 %56, 2048
  br i1 %exitcond14.not, label %57, label %vector.ph26, !llvm.loop !11

57:                                               ; preds = %vector.ph26
  %58 = add nuw nsw i64 %18, 1
  %exitcond15.not = icmp eq i64 %58, 10
  br i1 %exitcond15.not, label %slice_convert_fusion_wrapped.exit, label %17, !llvm.loop !11

59:                                               ; preds = %1
  %60 = mul nuw nsw i64 %9, 10
  %61 = mul nuw nsw i64 %9, 15728640
  %62 = mul nuw nsw i64 %9, 3932160
  %63 = or disjoint i64 %61, 576
  br label %64

64:                                               ; preds = %59, %.loopexit
  %65 = phi i64 [ 0, %59 ], [ %107, %.loopexit ]
  %66 = add nuw nsw i64 %65, %60
  %67 = icmp samesign ult i64 %66, 128
  br i1 %67, label %68, label %.loopexit

68:                                               ; preds = %64
  %69 = mul nuw nsw i64 %65, 1572864
  %70 = mul nuw nsw i64 %65, 393216
  %71 = add nuw nsw i64 %70, %62
  %72 = add nuw nsw i64 %63, %69
  br label %vector.ph

vector.ph:                                        ; preds = %68, %vector.ph
  %73 = phi i64 [ 0, %68 ], [ %106, %vector.ph ]
  %74 = mul nuw nsw i64 %73, 768
  %75 = add nuw nsw i64 %72, %74
  %76 = mul nuw nsw i64 %73, 192
  %77 = add nuw nsw i64 %71, %76
  %78 = getelementptr inbounds nuw [201326592 x bfloat], ptr %4, i64 0, i64 %75
  %79 = getelementptr inbounds nuw i8, ptr %78, i64 32
  %80 = getelementptr inbounds nuw i8, ptr %78, i64 64
  %81 = getelementptr inbounds nuw i8, ptr %78, i64 96
  %wide.load = load <16 x bfloat>, ptr %78, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load22 = load <16 x bfloat>, ptr %79, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load23 = load <16 x bfloat>, ptr %80, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load24 = load <16 x bfloat>, ptr %81, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %82 = getelementptr inbounds nuw [50331648 x bfloat], ptr %6, i64 0, i64 %77
  %83 = getelementptr inbounds nuw i8, ptr %82, i64 32
  %84 = getelementptr inbounds nuw i8, ptr %82, i64 64
  %85 = getelementptr inbounds nuw i8, ptr %82, i64 96
  store <16 x bfloat> %wide.load, ptr %82, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load22, ptr %83, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load23, ptr %84, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load24, ptr %85, align 2, !alias.scope !9, !noalias !6
  %86 = add nuw nsw i64 %75, 64
  %87 = getelementptr inbounds nuw [201326592 x bfloat], ptr %4, i64 0, i64 %86
  %88 = getelementptr inbounds nuw i8, ptr %87, i64 32
  %89 = getelementptr inbounds nuw i8, ptr %87, i64 64
  %90 = getelementptr inbounds nuw i8, ptr %87, i64 96
  %wide.load.1 = load <16 x bfloat>, ptr %87, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load22.1 = load <16 x bfloat>, ptr %88, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load23.1 = load <16 x bfloat>, ptr %89, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load24.1 = load <16 x bfloat>, ptr %90, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %91 = add nuw nsw i64 %77, 64
  %92 = getelementptr inbounds nuw [50331648 x bfloat], ptr %6, i64 0, i64 %91
  %93 = getelementptr inbounds nuw i8, ptr %92, i64 32
  %94 = getelementptr inbounds nuw i8, ptr %92, i64 64
  %95 = getelementptr inbounds nuw i8, ptr %92, i64 96
  store <16 x bfloat> %wide.load.1, ptr %92, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load22.1, ptr %93, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load23.1, ptr %94, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load24.1, ptr %95, align 2, !alias.scope !9, !noalias !6
  %96 = or disjoint i64 %75, 128
  %97 = getelementptr inbounds nuw [201326592 x bfloat], ptr %4, i64 0, i64 %96
  %98 = getelementptr inbounds nuw i8, ptr %97, i64 32
  %99 = getelementptr inbounds nuw i8, ptr %97, i64 64
  %100 = getelementptr inbounds nuw i8, ptr %97, i64 96
  %wide.load.2 = load <16 x bfloat>, ptr %97, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load22.2 = load <16 x bfloat>, ptr %98, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load23.2 = load <16 x bfloat>, ptr %99, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load24.2 = load <16 x bfloat>, ptr %100, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %101 = add nuw nsw i64 %77, 128
  %102 = getelementptr inbounds nuw [50331648 x bfloat], ptr %6, i64 0, i64 %101
  %103 = getelementptr inbounds nuw i8, ptr %102, i64 32
  %104 = getelementptr inbounds nuw i8, ptr %102, i64 64
  %105 = getelementptr inbounds nuw i8, ptr %102, i64 96
  store <16 x bfloat> %wide.load.2, ptr %102, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load22.2, ptr %103, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load23.2, ptr %104, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load24.2, ptr %105, align 2, !alias.scope !9, !noalias !6
  %106 = add nuw nsw i64 %73, 1
  %exitcond10.not = icmp eq i64 %106, 2048
  br i1 %exitcond10.not, label %.loopexit, label %vector.ph, !llvm.loop !11

.loopexit:                                        ; preds = %vector.ph, %64
  %107 = add nuw nsw i64 %65, 1
  %exitcond11.not = icmp eq i64 %107, 10
  br i1 %exitcond11.not, label %slice_convert_fusion_wrapped.exit, label %64, !llvm.loop !11

slice_convert_fusion_wrapped.exit:                ; preds = %.loopexit, %57, %11
  ret ptr null
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #1

attributes #0 = { nofree norecurse nosync nounwind uwtable "frame-pointer"="all" "prefer-vector-width"="256" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }

!llvm.module.flags = !{!0, !1}
!xla_cpu_memory_region_name = !{!2}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !{i32 1, !"xla_dylib_index", i64 0}
!2 = !{!"xla_cpu_emitter__loop_fusion_kernel_emitter__hlo_opcode__fusion"}
!3 = !{}
!4 = !{i64 402653184}
!5 = !{i64 100663296}
!6 = !{!7}
!7 = distinct !{!7, !8, !"slice_convert_fusion_wrapped: argument 0"}
!8 = distinct !{!8, !"slice_convert_fusion_wrapped"}
!9 = !{!10}
!10 = distinct !{!10, !8, !"slice_convert_fusion_wrapped: argument 1"}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.unroll.disable"}
