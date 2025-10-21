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
  %10 = icmp slt i64 %9, 13
  br i1 %10, label %11, label %100

11:                                               ; preds = %1
  %12 = icmp sgt i64 %9, -1
  br i1 %12, label %13, label %slice_convert_fusion_wrapped.exit

13:                                               ; preds = %11
  %14 = mul nuw nsw i64 %9, 75776
  br label %vector.ph20

vector.ph20:                                      ; preds = %13, %middle.block28
  %15 = phi i64 [ 0, %13 ], [ %99, %middle.block28 ]
  %16 = shl nuw nsw i64 %15, 11
  %17 = add nuw nsw i64 %16, %14
  br label %vector.body21

vector.body21:                                    ; preds = %vector.body21, %vector.ph20
  %index22 = phi i64 [ 0, %vector.ph20 ], [ %index.next27.7, %vector.body21 ]
  %18 = add nuw nsw i64 %index22, %17
  %19 = add nuw nsw i64 %18, 9437184
  %20 = getelementptr inbounds nuw [10485760 x bfloat], ptr %4, i64 0, i64 %19
  %21 = getelementptr inbounds nuw i8, ptr %20, i64 32
  %22 = getelementptr inbounds nuw i8, ptr %20, i64 64
  %23 = getelementptr inbounds nuw i8, ptr %20, i64 96
  %wide.load23 = load <16 x bfloat>, ptr %20, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load24 = load <16 x bfloat>, ptr %21, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load25 = load <16 x bfloat>, ptr %22, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load26 = load <16 x bfloat>, ptr %23, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %24 = getelementptr inbounds nuw [1048576 x bfloat], ptr %6, i64 0, i64 %18
  %25 = getelementptr inbounds nuw i8, ptr %24, i64 32
  %26 = getelementptr inbounds nuw i8, ptr %24, i64 64
  %27 = getelementptr inbounds nuw i8, ptr %24, i64 96
  store <16 x bfloat> %wide.load23, ptr %24, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load24, ptr %25, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load25, ptr %26, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load26, ptr %27, align 2, !alias.scope !9, !noalias !6
  %index.next27 = or disjoint i64 %index22, 64
  %28 = add nuw nsw i64 %index.next27, %17
  %29 = add nuw nsw i64 %28, 9437184
  %30 = getelementptr inbounds nuw [10485760 x bfloat], ptr %4, i64 0, i64 %29
  %31 = getelementptr inbounds nuw i8, ptr %30, i64 32
  %32 = getelementptr inbounds nuw i8, ptr %30, i64 64
  %33 = getelementptr inbounds nuw i8, ptr %30, i64 96
  %wide.load23.1 = load <16 x bfloat>, ptr %30, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load24.1 = load <16 x bfloat>, ptr %31, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load25.1 = load <16 x bfloat>, ptr %32, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load26.1 = load <16 x bfloat>, ptr %33, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %34 = getelementptr inbounds nuw [1048576 x bfloat], ptr %6, i64 0, i64 %28
  %35 = getelementptr inbounds nuw i8, ptr %34, i64 32
  %36 = getelementptr inbounds nuw i8, ptr %34, i64 64
  %37 = getelementptr inbounds nuw i8, ptr %34, i64 96
  store <16 x bfloat> %wide.load23.1, ptr %34, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load24.1, ptr %35, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load25.1, ptr %36, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load26.1, ptr %37, align 2, !alias.scope !9, !noalias !6
  %index.next27.1 = or disjoint i64 %index22, 128
  %38 = add nuw nsw i64 %index.next27.1, %17
  %39 = add nuw nsw i64 %38, 9437184
  %40 = getelementptr inbounds nuw [10485760 x bfloat], ptr %4, i64 0, i64 %39
  %41 = getelementptr inbounds nuw i8, ptr %40, i64 32
  %42 = getelementptr inbounds nuw i8, ptr %40, i64 64
  %43 = getelementptr inbounds nuw i8, ptr %40, i64 96
  %wide.load23.2 = load <16 x bfloat>, ptr %40, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load24.2 = load <16 x bfloat>, ptr %41, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load25.2 = load <16 x bfloat>, ptr %42, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load26.2 = load <16 x bfloat>, ptr %43, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %44 = getelementptr inbounds nuw [1048576 x bfloat], ptr %6, i64 0, i64 %38
  %45 = getelementptr inbounds nuw i8, ptr %44, i64 32
  %46 = getelementptr inbounds nuw i8, ptr %44, i64 64
  %47 = getelementptr inbounds nuw i8, ptr %44, i64 96
  store <16 x bfloat> %wide.load23.2, ptr %44, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load24.2, ptr %45, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load25.2, ptr %46, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load26.2, ptr %47, align 2, !alias.scope !9, !noalias !6
  %index.next27.2 = or disjoint i64 %index22, 192
  %48 = add nuw nsw i64 %index.next27.2, %17
  %49 = add nuw nsw i64 %48, 9437184
  %50 = getelementptr inbounds nuw [10485760 x bfloat], ptr %4, i64 0, i64 %49
  %51 = getelementptr inbounds nuw i8, ptr %50, i64 32
  %52 = getelementptr inbounds nuw i8, ptr %50, i64 64
  %53 = getelementptr inbounds nuw i8, ptr %50, i64 96
  %wide.load23.3 = load <16 x bfloat>, ptr %50, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load24.3 = load <16 x bfloat>, ptr %51, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load25.3 = load <16 x bfloat>, ptr %52, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load26.3 = load <16 x bfloat>, ptr %53, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %54 = getelementptr inbounds nuw [1048576 x bfloat], ptr %6, i64 0, i64 %48
  %55 = getelementptr inbounds nuw i8, ptr %54, i64 32
  %56 = getelementptr inbounds nuw i8, ptr %54, i64 64
  %57 = getelementptr inbounds nuw i8, ptr %54, i64 96
  store <16 x bfloat> %wide.load23.3, ptr %54, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load24.3, ptr %55, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load25.3, ptr %56, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load26.3, ptr %57, align 2, !alias.scope !9, !noalias !6
  %index.next27.3 = or disjoint i64 %index22, 256
  %58 = add nuw nsw i64 %index.next27.3, %17
  %59 = add nuw nsw i64 %58, 9437184
  %60 = getelementptr inbounds nuw [10485760 x bfloat], ptr %4, i64 0, i64 %59
  %61 = getelementptr inbounds nuw i8, ptr %60, i64 32
  %62 = getelementptr inbounds nuw i8, ptr %60, i64 64
  %63 = getelementptr inbounds nuw i8, ptr %60, i64 96
  %wide.load23.4 = load <16 x bfloat>, ptr %60, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load24.4 = load <16 x bfloat>, ptr %61, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load25.4 = load <16 x bfloat>, ptr %62, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load26.4 = load <16 x bfloat>, ptr %63, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %64 = getelementptr inbounds nuw [1048576 x bfloat], ptr %6, i64 0, i64 %58
  %65 = getelementptr inbounds nuw i8, ptr %64, i64 32
  %66 = getelementptr inbounds nuw i8, ptr %64, i64 64
  %67 = getelementptr inbounds nuw i8, ptr %64, i64 96
  store <16 x bfloat> %wide.load23.4, ptr %64, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load24.4, ptr %65, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load25.4, ptr %66, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load26.4, ptr %67, align 2, !alias.scope !9, !noalias !6
  %index.next27.4 = or disjoint i64 %index22, 320
  %68 = add nuw nsw i64 %index.next27.4, %17
  %69 = add nuw nsw i64 %68, 9437184
  %70 = getelementptr inbounds nuw [10485760 x bfloat], ptr %4, i64 0, i64 %69
  %71 = getelementptr inbounds nuw i8, ptr %70, i64 32
  %72 = getelementptr inbounds nuw i8, ptr %70, i64 64
  %73 = getelementptr inbounds nuw i8, ptr %70, i64 96
  %wide.load23.5 = load <16 x bfloat>, ptr %70, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load24.5 = load <16 x bfloat>, ptr %71, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load25.5 = load <16 x bfloat>, ptr %72, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load26.5 = load <16 x bfloat>, ptr %73, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %74 = getelementptr inbounds nuw [1048576 x bfloat], ptr %6, i64 0, i64 %68
  %75 = getelementptr inbounds nuw i8, ptr %74, i64 32
  %76 = getelementptr inbounds nuw i8, ptr %74, i64 64
  %77 = getelementptr inbounds nuw i8, ptr %74, i64 96
  store <16 x bfloat> %wide.load23.5, ptr %74, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load24.5, ptr %75, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load25.5, ptr %76, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load26.5, ptr %77, align 2, !alias.scope !9, !noalias !6
  %index.next27.5 = or disjoint i64 %index22, 384
  %78 = add nuw nsw i64 %index.next27.5, %17
  %79 = add nuw nsw i64 %78, 9437184
  %80 = getelementptr inbounds nuw [10485760 x bfloat], ptr %4, i64 0, i64 %79
  %81 = getelementptr inbounds nuw i8, ptr %80, i64 32
  %82 = getelementptr inbounds nuw i8, ptr %80, i64 64
  %83 = getelementptr inbounds nuw i8, ptr %80, i64 96
  %wide.load23.6 = load <16 x bfloat>, ptr %80, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load24.6 = load <16 x bfloat>, ptr %81, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load25.6 = load <16 x bfloat>, ptr %82, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load26.6 = load <16 x bfloat>, ptr %83, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %84 = getelementptr inbounds nuw [1048576 x bfloat], ptr %6, i64 0, i64 %78
  %85 = getelementptr inbounds nuw i8, ptr %84, i64 32
  %86 = getelementptr inbounds nuw i8, ptr %84, i64 64
  %87 = getelementptr inbounds nuw i8, ptr %84, i64 96
  store <16 x bfloat> %wide.load23.6, ptr %84, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load24.6, ptr %85, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load25.6, ptr %86, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load26.6, ptr %87, align 2, !alias.scope !9, !noalias !6
  %index.next27.6 = or disjoint i64 %index22, 448
  %88 = add nuw nsw i64 %index.next27.6, %17
  %89 = add nuw nsw i64 %88, 9437184
  %90 = getelementptr inbounds nuw [10485760 x bfloat], ptr %4, i64 0, i64 %89
  %91 = getelementptr inbounds nuw i8, ptr %90, i64 32
  %92 = getelementptr inbounds nuw i8, ptr %90, i64 64
  %93 = getelementptr inbounds nuw i8, ptr %90, i64 96
  %wide.load23.7 = load <16 x bfloat>, ptr %90, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load24.7 = load <16 x bfloat>, ptr %91, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load25.7 = load <16 x bfloat>, ptr %92, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load26.7 = load <16 x bfloat>, ptr %93, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %94 = getelementptr inbounds nuw [1048576 x bfloat], ptr %6, i64 0, i64 %88
  %95 = getelementptr inbounds nuw i8, ptr %94, i64 32
  %96 = getelementptr inbounds nuw i8, ptr %94, i64 64
  %97 = getelementptr inbounds nuw i8, ptr %94, i64 96
  store <16 x bfloat> %wide.load23.7, ptr %94, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load24.7, ptr %95, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load25.7, ptr %96, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load26.7, ptr %97, align 2, !alias.scope !9, !noalias !6
  %index.next27.7 = add nuw nsw i64 %index22, 512
  %98 = icmp eq i64 %index.next27.7, 2048
  br i1 %98, label %middle.block28, label %vector.body21, !llvm.loop !11

middle.block28:                                   ; preds = %vector.body21
  %99 = add nuw nsw i64 %15, 1
  %exitcond11.not = icmp eq i64 %99, 37
  br i1 %exitcond11.not, label %slice_convert_fusion_wrapped.exit, label %vector.ph20, !llvm.loop !14

100:                                              ; preds = %1
  %101 = icmp eq i64 %9, 13
  br i1 %101, label %.preheader, label %slice_convert_fusion_wrapped.exit

.preheader:                                       ; preds = %100, %middle.block
  %102 = phi i64 [ %193, %middle.block ], [ 0, %100 ]
  %103 = shl nuw nsw i64 %102, 11
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.preheader
  %index = phi i64 [ 0, %.preheader ], [ %index.next.7, %vector.body ]
  %104 = add nuw nsw i64 %index, %103
  %105 = add nuw nsw i64 %104, 10422272
  %106 = getelementptr inbounds nuw [10485760 x bfloat], ptr %4, i64 0, i64 %105
  %107 = getelementptr inbounds nuw i8, ptr %106, i64 32
  %108 = getelementptr inbounds nuw i8, ptr %106, i64 64
  %109 = getelementptr inbounds nuw i8, ptr %106, i64 96
  %wide.load = load <16 x bfloat>, ptr %106, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load16 = load <16 x bfloat>, ptr %107, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load17 = load <16 x bfloat>, ptr %108, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load18 = load <16 x bfloat>, ptr %109, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %110 = add nuw nsw i64 %104, 985088
  %111 = getelementptr inbounds nuw [1048576 x bfloat], ptr %6, i64 0, i64 %110
  %112 = getelementptr inbounds nuw i8, ptr %111, i64 32
  %113 = getelementptr inbounds nuw i8, ptr %111, i64 64
  %114 = getelementptr inbounds nuw i8, ptr %111, i64 96
  store <16 x bfloat> %wide.load, ptr %111, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load16, ptr %112, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load17, ptr %113, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load18, ptr %114, align 2, !alias.scope !9, !noalias !6
  %index.next = or disjoint i64 %index, 64
  %115 = add nuw nsw i64 %index.next, %103
  %116 = add nuw nsw i64 %115, 10422272
  %117 = getelementptr inbounds nuw [10485760 x bfloat], ptr %4, i64 0, i64 %116
  %118 = getelementptr inbounds nuw i8, ptr %117, i64 32
  %119 = getelementptr inbounds nuw i8, ptr %117, i64 64
  %120 = getelementptr inbounds nuw i8, ptr %117, i64 96
  %wide.load.1 = load <16 x bfloat>, ptr %117, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load16.1 = load <16 x bfloat>, ptr %118, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load17.1 = load <16 x bfloat>, ptr %119, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load18.1 = load <16 x bfloat>, ptr %120, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %121 = add nuw nsw i64 %115, 985088
  %122 = getelementptr inbounds nuw [1048576 x bfloat], ptr %6, i64 0, i64 %121
  %123 = getelementptr inbounds nuw i8, ptr %122, i64 32
  %124 = getelementptr inbounds nuw i8, ptr %122, i64 64
  %125 = getelementptr inbounds nuw i8, ptr %122, i64 96
  store <16 x bfloat> %wide.load.1, ptr %122, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load16.1, ptr %123, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load17.1, ptr %124, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load18.1, ptr %125, align 2, !alias.scope !9, !noalias !6
  %index.next.1 = or disjoint i64 %index, 128
  %126 = add nuw nsw i64 %index.next.1, %103
  %127 = add nuw nsw i64 %126, 10422272
  %128 = getelementptr inbounds nuw [10485760 x bfloat], ptr %4, i64 0, i64 %127
  %129 = getelementptr inbounds nuw i8, ptr %128, i64 32
  %130 = getelementptr inbounds nuw i8, ptr %128, i64 64
  %131 = getelementptr inbounds nuw i8, ptr %128, i64 96
  %wide.load.2 = load <16 x bfloat>, ptr %128, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load16.2 = load <16 x bfloat>, ptr %129, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load17.2 = load <16 x bfloat>, ptr %130, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load18.2 = load <16 x bfloat>, ptr %131, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %132 = add nuw nsw i64 %126, 985088
  %133 = getelementptr inbounds nuw [1048576 x bfloat], ptr %6, i64 0, i64 %132
  %134 = getelementptr inbounds nuw i8, ptr %133, i64 32
  %135 = getelementptr inbounds nuw i8, ptr %133, i64 64
  %136 = getelementptr inbounds nuw i8, ptr %133, i64 96
  store <16 x bfloat> %wide.load.2, ptr %133, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load16.2, ptr %134, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load17.2, ptr %135, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load18.2, ptr %136, align 2, !alias.scope !9, !noalias !6
  %index.next.2 = or disjoint i64 %index, 192
  %137 = add nuw nsw i64 %index.next.2, %103
  %138 = add nuw nsw i64 %137, 10422272
  %139 = getelementptr inbounds nuw [10485760 x bfloat], ptr %4, i64 0, i64 %138
  %140 = getelementptr inbounds nuw i8, ptr %139, i64 32
  %141 = getelementptr inbounds nuw i8, ptr %139, i64 64
  %142 = getelementptr inbounds nuw i8, ptr %139, i64 96
  %wide.load.3 = load <16 x bfloat>, ptr %139, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load16.3 = load <16 x bfloat>, ptr %140, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load17.3 = load <16 x bfloat>, ptr %141, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load18.3 = load <16 x bfloat>, ptr %142, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %143 = add nuw nsw i64 %137, 985088
  %144 = getelementptr inbounds nuw [1048576 x bfloat], ptr %6, i64 0, i64 %143
  %145 = getelementptr inbounds nuw i8, ptr %144, i64 32
  %146 = getelementptr inbounds nuw i8, ptr %144, i64 64
  %147 = getelementptr inbounds nuw i8, ptr %144, i64 96
  store <16 x bfloat> %wide.load.3, ptr %144, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load16.3, ptr %145, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load17.3, ptr %146, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load18.3, ptr %147, align 2, !alias.scope !9, !noalias !6
  %index.next.3 = or disjoint i64 %index, 256
  %148 = add nuw nsw i64 %index.next.3, %103
  %149 = add nuw nsw i64 %148, 10422272
  %150 = getelementptr inbounds nuw [10485760 x bfloat], ptr %4, i64 0, i64 %149
  %151 = getelementptr inbounds nuw i8, ptr %150, i64 32
  %152 = getelementptr inbounds nuw i8, ptr %150, i64 64
  %153 = getelementptr inbounds nuw i8, ptr %150, i64 96
  %wide.load.4 = load <16 x bfloat>, ptr %150, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load16.4 = load <16 x bfloat>, ptr %151, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load17.4 = load <16 x bfloat>, ptr %152, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load18.4 = load <16 x bfloat>, ptr %153, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %154 = add nuw nsw i64 %148, 985088
  %155 = getelementptr inbounds nuw [1048576 x bfloat], ptr %6, i64 0, i64 %154
  %156 = getelementptr inbounds nuw i8, ptr %155, i64 32
  %157 = getelementptr inbounds nuw i8, ptr %155, i64 64
  %158 = getelementptr inbounds nuw i8, ptr %155, i64 96
  store <16 x bfloat> %wide.load.4, ptr %155, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load16.4, ptr %156, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load17.4, ptr %157, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load18.4, ptr %158, align 2, !alias.scope !9, !noalias !6
  %index.next.4 = or disjoint i64 %index, 320
  %159 = add nuw nsw i64 %index.next.4, %103
  %160 = add nuw nsw i64 %159, 10422272
  %161 = getelementptr inbounds nuw [10485760 x bfloat], ptr %4, i64 0, i64 %160
  %162 = getelementptr inbounds nuw i8, ptr %161, i64 32
  %163 = getelementptr inbounds nuw i8, ptr %161, i64 64
  %164 = getelementptr inbounds nuw i8, ptr %161, i64 96
  %wide.load.5 = load <16 x bfloat>, ptr %161, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load16.5 = load <16 x bfloat>, ptr %162, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load17.5 = load <16 x bfloat>, ptr %163, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load18.5 = load <16 x bfloat>, ptr %164, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %165 = add nuw nsw i64 %159, 985088
  %166 = getelementptr inbounds nuw [1048576 x bfloat], ptr %6, i64 0, i64 %165
  %167 = getelementptr inbounds nuw i8, ptr %166, i64 32
  %168 = getelementptr inbounds nuw i8, ptr %166, i64 64
  %169 = getelementptr inbounds nuw i8, ptr %166, i64 96
  store <16 x bfloat> %wide.load.5, ptr %166, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load16.5, ptr %167, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load17.5, ptr %168, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load18.5, ptr %169, align 2, !alias.scope !9, !noalias !6
  %index.next.5 = or disjoint i64 %index, 384
  %170 = add nuw nsw i64 %index.next.5, %103
  %171 = add nuw nsw i64 %170, 10422272
  %172 = getelementptr inbounds nuw [10485760 x bfloat], ptr %4, i64 0, i64 %171
  %173 = getelementptr inbounds nuw i8, ptr %172, i64 32
  %174 = getelementptr inbounds nuw i8, ptr %172, i64 64
  %175 = getelementptr inbounds nuw i8, ptr %172, i64 96
  %wide.load.6 = load <16 x bfloat>, ptr %172, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load16.6 = load <16 x bfloat>, ptr %173, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load17.6 = load <16 x bfloat>, ptr %174, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load18.6 = load <16 x bfloat>, ptr %175, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %176 = add nuw nsw i64 %170, 985088
  %177 = getelementptr inbounds nuw [1048576 x bfloat], ptr %6, i64 0, i64 %176
  %178 = getelementptr inbounds nuw i8, ptr %177, i64 32
  %179 = getelementptr inbounds nuw i8, ptr %177, i64 64
  %180 = getelementptr inbounds nuw i8, ptr %177, i64 96
  store <16 x bfloat> %wide.load.6, ptr %177, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load16.6, ptr %178, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load17.6, ptr %179, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load18.6, ptr %180, align 2, !alias.scope !9, !noalias !6
  %index.next.6 = or disjoint i64 %index, 448
  %181 = add nuw nsw i64 %index.next.6, %103
  %182 = add nuw nsw i64 %181, 10422272
  %183 = getelementptr inbounds nuw [10485760 x bfloat], ptr %4, i64 0, i64 %182
  %184 = getelementptr inbounds nuw i8, ptr %183, i64 32
  %185 = getelementptr inbounds nuw i8, ptr %183, i64 64
  %186 = getelementptr inbounds nuw i8, ptr %183, i64 96
  %wide.load.7 = load <16 x bfloat>, ptr %183, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load16.7 = load <16 x bfloat>, ptr %184, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load17.7 = load <16 x bfloat>, ptr %185, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load18.7 = load <16 x bfloat>, ptr %186, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %187 = add nuw nsw i64 %181, 985088
  %188 = getelementptr inbounds nuw [1048576 x bfloat], ptr %6, i64 0, i64 %187
  %189 = getelementptr inbounds nuw i8, ptr %188, i64 32
  %190 = getelementptr inbounds nuw i8, ptr %188, i64 64
  %191 = getelementptr inbounds nuw i8, ptr %188, i64 96
  store <16 x bfloat> %wide.load.7, ptr %188, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load16.7, ptr %189, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load17.7, ptr %190, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load18.7, ptr %191, align 2, !alias.scope !9, !noalias !6
  %index.next.7 = add nuw nsw i64 %index, 512
  %192 = icmp eq i64 %index.next.7, 2048
  br i1 %192, label %middle.block, label %vector.body, !llvm.loop !16

middle.block:                                     ; preds = %vector.body
  %193 = add nuw nsw i64 %102, 1
  %exitcond8.not = icmp eq i64 %193, 31
  br i1 %exitcond8.not, label %slice_convert_fusion_wrapped.exit, label %.preheader, !llvm.loop !14

slice_convert_fusion_wrapped.exit:                ; preds = %middle.block, %middle.block28, %11, %100
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
!4 = !{i64 20971520}
!5 = !{i64 2097152}
!6 = !{!7}
!7 = distinct !{!7, !8, !"slice_convert_fusion_wrapped: argument 0"}
!8 = distinct !{!8, !"slice_convert_fusion_wrapped"}
!9 = !{!10}
!10 = distinct !{!10, !8, !"slice_convert_fusion_wrapped: argument 1"}
!11 = distinct !{!11, !12, !13}
!12 = !{!"llvm.loop.isvectorized", i32 1}
!13 = !{!"llvm.loop.unroll.runtime.disable"}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.unroll.disable"}
!16 = distinct !{!16, !12, !13}
