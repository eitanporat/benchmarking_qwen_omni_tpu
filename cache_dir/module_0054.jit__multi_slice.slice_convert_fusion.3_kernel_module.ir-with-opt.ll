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
  %10 = icmp ult i64 %9, 12
  br i1 %10, label %11, label %slice_convert_fusion.3_wrapped.exit

11:                                               ; preds = %1
  %12 = mul nuw nsw i64 %9, 110592
  %13 = mul nuw nsw i64 %9, 27648
  br label %iter.check

iter.check:                                       ; preds = %11, %iter.check
  %14 = phi i64 [ 0, %11 ], [ %65, %iter.check ]
  %15 = mul nuw nsw i64 %14, 1152
  %16 = add nuw nsw i64 %15, %12
  %17 = mul nuw nsw i64 %14, 288
  %18 = add nuw nsw i64 %17, %13
  %19 = getelementptr inbounds nuw [1327104 x bfloat], ptr %4, i64 0, i64 %16
  %20 = getelementptr inbounds nuw i8, ptr %19, i64 32
  %21 = getelementptr inbounds nuw i8, ptr %19, i64 64
  %22 = getelementptr inbounds nuw i8, ptr %19, i64 96
  %wide.load = load <16 x bfloat>, ptr %19, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load6 = load <16 x bfloat>, ptr %20, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load7 = load <16 x bfloat>, ptr %21, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load8 = load <16 x bfloat>, ptr %22, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %23 = getelementptr inbounds nuw [331776 x bfloat], ptr %6, i64 0, i64 %18
  %24 = getelementptr inbounds nuw i8, ptr %23, i64 32
  %25 = getelementptr inbounds nuw i8, ptr %23, i64 64
  %26 = getelementptr inbounds nuw i8, ptr %23, i64 96
  store <16 x bfloat> %wide.load, ptr %23, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load6, ptr %24, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load7, ptr %25, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load8, ptr %26, align 2, !alias.scope !9, !noalias !6
  %27 = or disjoint i64 %16, 64
  %28 = getelementptr inbounds nuw [1327104 x bfloat], ptr %4, i64 0, i64 %27
  %29 = getelementptr inbounds nuw i8, ptr %28, i64 32
  %30 = getelementptr inbounds nuw i8, ptr %28, i64 64
  %31 = getelementptr inbounds nuw i8, ptr %28, i64 96
  %wide.load.1 = load <16 x bfloat>, ptr %28, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load6.1 = load <16 x bfloat>, ptr %29, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load7.1 = load <16 x bfloat>, ptr %30, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load8.1 = load <16 x bfloat>, ptr %31, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %32 = add nuw nsw i64 %18, 64
  %33 = getelementptr inbounds nuw [331776 x bfloat], ptr %6, i64 0, i64 %32
  %34 = getelementptr inbounds nuw i8, ptr %33, i64 32
  %35 = getelementptr inbounds nuw i8, ptr %33, i64 64
  %36 = getelementptr inbounds nuw i8, ptr %33, i64 96
  store <16 x bfloat> %wide.load.1, ptr %33, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load6.1, ptr %34, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load7.1, ptr %35, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load8.1, ptr %36, align 2, !alias.scope !9, !noalias !6
  %37 = add nuw nsw i64 %16, 128
  %38 = getelementptr inbounds nuw [1327104 x bfloat], ptr %4, i64 0, i64 %37
  %39 = getelementptr inbounds nuw i8, ptr %38, i64 32
  %40 = getelementptr inbounds nuw i8, ptr %38, i64 64
  %41 = getelementptr inbounds nuw i8, ptr %38, i64 96
  %wide.load.2 = load <16 x bfloat>, ptr %38, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load6.2 = load <16 x bfloat>, ptr %39, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load7.2 = load <16 x bfloat>, ptr %40, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load8.2 = load <16 x bfloat>, ptr %41, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %42 = add nuw nsw i64 %18, 128
  %43 = getelementptr inbounds nuw [331776 x bfloat], ptr %6, i64 0, i64 %42
  %44 = getelementptr inbounds nuw i8, ptr %43, i64 32
  %45 = getelementptr inbounds nuw i8, ptr %43, i64 64
  %46 = getelementptr inbounds nuw i8, ptr %43, i64 96
  store <16 x bfloat> %wide.load.2, ptr %43, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load6.2, ptr %44, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load7.2, ptr %45, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load8.2, ptr %46, align 2, !alias.scope !9, !noalias !6
  %47 = add nuw nsw i64 %16, 192
  %48 = getelementptr inbounds nuw [1327104 x bfloat], ptr %4, i64 0, i64 %47
  %49 = getelementptr inbounds nuw i8, ptr %48, i64 32
  %50 = getelementptr inbounds nuw i8, ptr %48, i64 64
  %51 = getelementptr inbounds nuw i8, ptr %48, i64 96
  %wide.load.3 = load <16 x bfloat>, ptr %48, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load6.3 = load <16 x bfloat>, ptr %49, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load7.3 = load <16 x bfloat>, ptr %50, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load8.3 = load <16 x bfloat>, ptr %51, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %52 = add nuw nsw i64 %18, 192
  %53 = getelementptr inbounds nuw [331776 x bfloat], ptr %6, i64 0, i64 %52
  %54 = getelementptr inbounds nuw i8, ptr %53, i64 32
  %55 = getelementptr inbounds nuw i8, ptr %53, i64 64
  %56 = getelementptr inbounds nuw i8, ptr %53, i64 96
  store <16 x bfloat> %wide.load.3, ptr %53, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load6.3, ptr %54, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load7.3, ptr %55, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load8.3, ptr %56, align 2, !alias.scope !9, !noalias !6
  %57 = add nuw nsw i64 %16, 256
  %58 = getelementptr inbounds nuw [1327104 x bfloat], ptr %4, i64 0, i64 %57
  %wide.load10 = load <16 x bfloat>, ptr %58, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %59 = add nuw nsw i64 %18, 256
  %60 = getelementptr inbounds nuw [331776 x bfloat], ptr %6, i64 0, i64 %59
  store <16 x bfloat> %wide.load10, ptr %60, align 2, !alias.scope !9, !noalias !6
  %61 = add nuw nsw i64 %16, 272
  %62 = getelementptr inbounds nuw [1327104 x bfloat], ptr %4, i64 0, i64 %61
  %wide.load10.1 = load <16 x bfloat>, ptr %62, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %63 = add nuw nsw i64 %18, 272
  %64 = getelementptr inbounds nuw [331776 x bfloat], ptr %6, i64 0, i64 %63
  store <16 x bfloat> %wide.load10.1, ptr %64, align 2, !alias.scope !9, !noalias !6
  %65 = add nuw nsw i64 %14, 1
  %exitcond4.not = icmp eq i64 %65, 96
  br i1 %exitcond4.not, label %slice_convert_fusion.3_wrapped.exit, label %iter.check, !llvm.loop !11

slice_convert_fusion.3_wrapped.exit:              ; preds = %iter.check, %1
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
!4 = !{i64 2654208}
!5 = !{i64 663552}
!6 = !{!7}
!7 = distinct !{!7, !8, !"slice_convert_fusion.3_wrapped: argument 0"}
!8 = distinct !{!8, !"slice_convert_fusion.3_wrapped"}
!9 = !{!10}
!10 = distinct !{!10, !8, !"slice_convert_fusion.3_wrapped: argument 1"}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.unroll.disable"}
