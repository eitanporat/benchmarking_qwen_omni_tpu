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
  %10 = icmp slt i64 %9, 13
  br i1 %10, label %11, label %92

11:                                               ; preds = %1
  %12 = icmp sgt i64 %9, -1
  br i1 %12, label %13, label %slice_convert_fusion.3_wrapped.exit

13:                                               ; preds = %11
  %14 = mul nuw nsw i64 %9, 5562368
  br label %vector.ph20

vector.ph20:                                      ; preds = %13, %middle.block28
  %15 = phi i64 [ 0, %13 ], [ %91, %middle.block28 ]
  %16 = shl nuw nsw i64 %15, 11
  %17 = add nuw nsw i64 %16, %14
  br label %vector.body21

vector.body21:                                    ; preds = %vector.body21, %vector.ph20
  %index22 = phi i64 [ 0, %vector.ph20 ], [ %index.next27.7, %vector.body21 ]
  %18 = add nuw nsw i64 %index22, %17
  %19 = getelementptr inbounds nuw [311427072 x bfloat], ptr %4, i64 0, i64 %18
  %20 = getelementptr inbounds nuw i8, ptr %19, i64 32
  %21 = getelementptr inbounds nuw i8, ptr %19, i64 64
  %22 = getelementptr inbounds nuw i8, ptr %19, i64 96
  %wide.load23 = load <16 x bfloat>, ptr %19, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load24 = load <16 x bfloat>, ptr %20, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load25 = load <16 x bfloat>, ptr %21, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load26 = load <16 x bfloat>, ptr %22, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %23 = getelementptr inbounds nuw [77856768 x bfloat], ptr %6, i64 0, i64 %18
  %24 = getelementptr inbounds nuw i8, ptr %23, i64 32
  %25 = getelementptr inbounds nuw i8, ptr %23, i64 64
  %26 = getelementptr inbounds nuw i8, ptr %23, i64 96
  store <16 x bfloat> %wide.load23, ptr %23, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load24, ptr %24, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load25, ptr %25, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load26, ptr %26, align 2, !alias.scope !9, !noalias !6
  %index.next27 = or disjoint i64 %index22, 64
  %27 = add nuw nsw i64 %index.next27, %17
  %28 = getelementptr inbounds nuw [311427072 x bfloat], ptr %4, i64 0, i64 %27
  %29 = getelementptr inbounds nuw i8, ptr %28, i64 32
  %30 = getelementptr inbounds nuw i8, ptr %28, i64 64
  %31 = getelementptr inbounds nuw i8, ptr %28, i64 96
  %wide.load23.1 = load <16 x bfloat>, ptr %28, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load24.1 = load <16 x bfloat>, ptr %29, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load25.1 = load <16 x bfloat>, ptr %30, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load26.1 = load <16 x bfloat>, ptr %31, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %32 = getelementptr inbounds nuw [77856768 x bfloat], ptr %6, i64 0, i64 %27
  %33 = getelementptr inbounds nuw i8, ptr %32, i64 32
  %34 = getelementptr inbounds nuw i8, ptr %32, i64 64
  %35 = getelementptr inbounds nuw i8, ptr %32, i64 96
  store <16 x bfloat> %wide.load23.1, ptr %32, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load24.1, ptr %33, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load25.1, ptr %34, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load26.1, ptr %35, align 2, !alias.scope !9, !noalias !6
  %index.next27.1 = or disjoint i64 %index22, 128
  %36 = add nuw nsw i64 %index.next27.1, %17
  %37 = getelementptr inbounds nuw [311427072 x bfloat], ptr %4, i64 0, i64 %36
  %38 = getelementptr inbounds nuw i8, ptr %37, i64 32
  %39 = getelementptr inbounds nuw i8, ptr %37, i64 64
  %40 = getelementptr inbounds nuw i8, ptr %37, i64 96
  %wide.load23.2 = load <16 x bfloat>, ptr %37, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load24.2 = load <16 x bfloat>, ptr %38, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load25.2 = load <16 x bfloat>, ptr %39, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load26.2 = load <16 x bfloat>, ptr %40, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %41 = getelementptr inbounds nuw [77856768 x bfloat], ptr %6, i64 0, i64 %36
  %42 = getelementptr inbounds nuw i8, ptr %41, i64 32
  %43 = getelementptr inbounds nuw i8, ptr %41, i64 64
  %44 = getelementptr inbounds nuw i8, ptr %41, i64 96
  store <16 x bfloat> %wide.load23.2, ptr %41, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load24.2, ptr %42, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load25.2, ptr %43, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load26.2, ptr %44, align 2, !alias.scope !9, !noalias !6
  %index.next27.2 = or disjoint i64 %index22, 192
  %45 = add nuw nsw i64 %index.next27.2, %17
  %46 = getelementptr inbounds nuw [311427072 x bfloat], ptr %4, i64 0, i64 %45
  %47 = getelementptr inbounds nuw i8, ptr %46, i64 32
  %48 = getelementptr inbounds nuw i8, ptr %46, i64 64
  %49 = getelementptr inbounds nuw i8, ptr %46, i64 96
  %wide.load23.3 = load <16 x bfloat>, ptr %46, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load24.3 = load <16 x bfloat>, ptr %47, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load25.3 = load <16 x bfloat>, ptr %48, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load26.3 = load <16 x bfloat>, ptr %49, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %50 = getelementptr inbounds nuw [77856768 x bfloat], ptr %6, i64 0, i64 %45
  %51 = getelementptr inbounds nuw i8, ptr %50, i64 32
  %52 = getelementptr inbounds nuw i8, ptr %50, i64 64
  %53 = getelementptr inbounds nuw i8, ptr %50, i64 96
  store <16 x bfloat> %wide.load23.3, ptr %50, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load24.3, ptr %51, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load25.3, ptr %52, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load26.3, ptr %53, align 2, !alias.scope !9, !noalias !6
  %index.next27.3 = or disjoint i64 %index22, 256
  %54 = add nuw nsw i64 %index.next27.3, %17
  %55 = getelementptr inbounds nuw [311427072 x bfloat], ptr %4, i64 0, i64 %54
  %56 = getelementptr inbounds nuw i8, ptr %55, i64 32
  %57 = getelementptr inbounds nuw i8, ptr %55, i64 64
  %58 = getelementptr inbounds nuw i8, ptr %55, i64 96
  %wide.load23.4 = load <16 x bfloat>, ptr %55, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load24.4 = load <16 x bfloat>, ptr %56, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load25.4 = load <16 x bfloat>, ptr %57, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load26.4 = load <16 x bfloat>, ptr %58, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %59 = getelementptr inbounds nuw [77856768 x bfloat], ptr %6, i64 0, i64 %54
  %60 = getelementptr inbounds nuw i8, ptr %59, i64 32
  %61 = getelementptr inbounds nuw i8, ptr %59, i64 64
  %62 = getelementptr inbounds nuw i8, ptr %59, i64 96
  store <16 x bfloat> %wide.load23.4, ptr %59, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load24.4, ptr %60, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load25.4, ptr %61, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load26.4, ptr %62, align 2, !alias.scope !9, !noalias !6
  %index.next27.4 = or disjoint i64 %index22, 320
  %63 = add nuw nsw i64 %index.next27.4, %17
  %64 = getelementptr inbounds nuw [311427072 x bfloat], ptr %4, i64 0, i64 %63
  %65 = getelementptr inbounds nuw i8, ptr %64, i64 32
  %66 = getelementptr inbounds nuw i8, ptr %64, i64 64
  %67 = getelementptr inbounds nuw i8, ptr %64, i64 96
  %wide.load23.5 = load <16 x bfloat>, ptr %64, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load24.5 = load <16 x bfloat>, ptr %65, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load25.5 = load <16 x bfloat>, ptr %66, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load26.5 = load <16 x bfloat>, ptr %67, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %68 = getelementptr inbounds nuw [77856768 x bfloat], ptr %6, i64 0, i64 %63
  %69 = getelementptr inbounds nuw i8, ptr %68, i64 32
  %70 = getelementptr inbounds nuw i8, ptr %68, i64 64
  %71 = getelementptr inbounds nuw i8, ptr %68, i64 96
  store <16 x bfloat> %wide.load23.5, ptr %68, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load24.5, ptr %69, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load25.5, ptr %70, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load26.5, ptr %71, align 2, !alias.scope !9, !noalias !6
  %index.next27.5 = or disjoint i64 %index22, 384
  %72 = add nuw nsw i64 %index.next27.5, %17
  %73 = getelementptr inbounds nuw [311427072 x bfloat], ptr %4, i64 0, i64 %72
  %74 = getelementptr inbounds nuw i8, ptr %73, i64 32
  %75 = getelementptr inbounds nuw i8, ptr %73, i64 64
  %76 = getelementptr inbounds nuw i8, ptr %73, i64 96
  %wide.load23.6 = load <16 x bfloat>, ptr %73, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load24.6 = load <16 x bfloat>, ptr %74, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load25.6 = load <16 x bfloat>, ptr %75, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load26.6 = load <16 x bfloat>, ptr %76, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %77 = getelementptr inbounds nuw [77856768 x bfloat], ptr %6, i64 0, i64 %72
  %78 = getelementptr inbounds nuw i8, ptr %77, i64 32
  %79 = getelementptr inbounds nuw i8, ptr %77, i64 64
  %80 = getelementptr inbounds nuw i8, ptr %77, i64 96
  store <16 x bfloat> %wide.load23.6, ptr %77, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load24.6, ptr %78, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load25.6, ptr %79, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load26.6, ptr %80, align 2, !alias.scope !9, !noalias !6
  %index.next27.6 = or disjoint i64 %index22, 448
  %81 = add nuw nsw i64 %index.next27.6, %17
  %82 = getelementptr inbounds nuw [311427072 x bfloat], ptr %4, i64 0, i64 %81
  %83 = getelementptr inbounds nuw i8, ptr %82, i64 32
  %84 = getelementptr inbounds nuw i8, ptr %82, i64 64
  %85 = getelementptr inbounds nuw i8, ptr %82, i64 96
  %wide.load23.7 = load <16 x bfloat>, ptr %82, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load24.7 = load <16 x bfloat>, ptr %83, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load25.7 = load <16 x bfloat>, ptr %84, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load26.7 = load <16 x bfloat>, ptr %85, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %86 = getelementptr inbounds nuw [77856768 x bfloat], ptr %6, i64 0, i64 %81
  %87 = getelementptr inbounds nuw i8, ptr %86, i64 32
  %88 = getelementptr inbounds nuw i8, ptr %86, i64 64
  %89 = getelementptr inbounds nuw i8, ptr %86, i64 96
  store <16 x bfloat> %wide.load23.7, ptr %86, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load24.7, ptr %87, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load25.7, ptr %88, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load26.7, ptr %89, align 2, !alias.scope !9, !noalias !6
  %index.next27.7 = add nuw nsw i64 %index22, 512
  %90 = icmp eq i64 %index.next27.7, 2048
  br i1 %90, label %middle.block28, label %vector.body21, !llvm.loop !11

middle.block28:                                   ; preds = %vector.body21
  %91 = add nuw nsw i64 %15, 1
  %exitcond11.not = icmp eq i64 %91, 2716
  br i1 %exitcond11.not, label %slice_convert_fusion.3_wrapped.exit, label %vector.ph20, !llvm.loop !14

92:                                               ; preds = %1
  %93 = icmp eq i64 %9, 13
  br i1 %93, label %.preheader, label %slice_convert_fusion.3_wrapped.exit

.preheader:                                       ; preds = %92, %middle.block
  %94 = phi i64 [ %170, %middle.block ], [ 0, %92 ]
  %95 = shl nuw nsw i64 %94, 11
  %96 = add nuw nsw i64 %95, 72310784
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.preheader
  %index = phi i64 [ 0, %.preheader ], [ %index.next.7, %vector.body ]
  %97 = add nuw nsw i64 %96, %index
  %98 = getelementptr inbounds nuw [311427072 x bfloat], ptr %4, i64 0, i64 %97
  %99 = getelementptr inbounds nuw i8, ptr %98, i64 32
  %100 = getelementptr inbounds nuw i8, ptr %98, i64 64
  %101 = getelementptr inbounds nuw i8, ptr %98, i64 96
  %wide.load = load <16 x bfloat>, ptr %98, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load16 = load <16 x bfloat>, ptr %99, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load17 = load <16 x bfloat>, ptr %100, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load18 = load <16 x bfloat>, ptr %101, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %102 = getelementptr inbounds nuw [77856768 x bfloat], ptr %6, i64 0, i64 %97
  %103 = getelementptr inbounds nuw i8, ptr %102, i64 32
  %104 = getelementptr inbounds nuw i8, ptr %102, i64 64
  %105 = getelementptr inbounds nuw i8, ptr %102, i64 96
  store <16 x bfloat> %wide.load, ptr %102, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load16, ptr %103, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load17, ptr %104, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load18, ptr %105, align 2, !alias.scope !9, !noalias !6
  %index.next = or disjoint i64 %index, 64
  %106 = add nuw nsw i64 %96, %index.next
  %107 = getelementptr inbounds nuw [311427072 x bfloat], ptr %4, i64 0, i64 %106
  %108 = getelementptr inbounds nuw i8, ptr %107, i64 32
  %109 = getelementptr inbounds nuw i8, ptr %107, i64 64
  %110 = getelementptr inbounds nuw i8, ptr %107, i64 96
  %wide.load.1 = load <16 x bfloat>, ptr %107, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load16.1 = load <16 x bfloat>, ptr %108, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load17.1 = load <16 x bfloat>, ptr %109, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load18.1 = load <16 x bfloat>, ptr %110, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %111 = getelementptr inbounds nuw [77856768 x bfloat], ptr %6, i64 0, i64 %106
  %112 = getelementptr inbounds nuw i8, ptr %111, i64 32
  %113 = getelementptr inbounds nuw i8, ptr %111, i64 64
  %114 = getelementptr inbounds nuw i8, ptr %111, i64 96
  store <16 x bfloat> %wide.load.1, ptr %111, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load16.1, ptr %112, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load17.1, ptr %113, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load18.1, ptr %114, align 2, !alias.scope !9, !noalias !6
  %index.next.1 = or disjoint i64 %index, 128
  %115 = add nuw nsw i64 %96, %index.next.1
  %116 = getelementptr inbounds nuw [311427072 x bfloat], ptr %4, i64 0, i64 %115
  %117 = getelementptr inbounds nuw i8, ptr %116, i64 32
  %118 = getelementptr inbounds nuw i8, ptr %116, i64 64
  %119 = getelementptr inbounds nuw i8, ptr %116, i64 96
  %wide.load.2 = load <16 x bfloat>, ptr %116, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load16.2 = load <16 x bfloat>, ptr %117, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load17.2 = load <16 x bfloat>, ptr %118, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load18.2 = load <16 x bfloat>, ptr %119, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %120 = getelementptr inbounds nuw [77856768 x bfloat], ptr %6, i64 0, i64 %115
  %121 = getelementptr inbounds nuw i8, ptr %120, i64 32
  %122 = getelementptr inbounds nuw i8, ptr %120, i64 64
  %123 = getelementptr inbounds nuw i8, ptr %120, i64 96
  store <16 x bfloat> %wide.load.2, ptr %120, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load16.2, ptr %121, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load17.2, ptr %122, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load18.2, ptr %123, align 2, !alias.scope !9, !noalias !6
  %index.next.2 = or disjoint i64 %index, 192
  %124 = add nuw nsw i64 %96, %index.next.2
  %125 = getelementptr inbounds nuw [311427072 x bfloat], ptr %4, i64 0, i64 %124
  %126 = getelementptr inbounds nuw i8, ptr %125, i64 32
  %127 = getelementptr inbounds nuw i8, ptr %125, i64 64
  %128 = getelementptr inbounds nuw i8, ptr %125, i64 96
  %wide.load.3 = load <16 x bfloat>, ptr %125, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load16.3 = load <16 x bfloat>, ptr %126, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load17.3 = load <16 x bfloat>, ptr %127, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load18.3 = load <16 x bfloat>, ptr %128, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %129 = getelementptr inbounds nuw [77856768 x bfloat], ptr %6, i64 0, i64 %124
  %130 = getelementptr inbounds nuw i8, ptr %129, i64 32
  %131 = getelementptr inbounds nuw i8, ptr %129, i64 64
  %132 = getelementptr inbounds nuw i8, ptr %129, i64 96
  store <16 x bfloat> %wide.load.3, ptr %129, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load16.3, ptr %130, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load17.3, ptr %131, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load18.3, ptr %132, align 2, !alias.scope !9, !noalias !6
  %index.next.3 = or disjoint i64 %index, 256
  %133 = add nuw nsw i64 %96, %index.next.3
  %134 = getelementptr inbounds nuw [311427072 x bfloat], ptr %4, i64 0, i64 %133
  %135 = getelementptr inbounds nuw i8, ptr %134, i64 32
  %136 = getelementptr inbounds nuw i8, ptr %134, i64 64
  %137 = getelementptr inbounds nuw i8, ptr %134, i64 96
  %wide.load.4 = load <16 x bfloat>, ptr %134, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load16.4 = load <16 x bfloat>, ptr %135, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load17.4 = load <16 x bfloat>, ptr %136, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load18.4 = load <16 x bfloat>, ptr %137, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %138 = getelementptr inbounds nuw [77856768 x bfloat], ptr %6, i64 0, i64 %133
  %139 = getelementptr inbounds nuw i8, ptr %138, i64 32
  %140 = getelementptr inbounds nuw i8, ptr %138, i64 64
  %141 = getelementptr inbounds nuw i8, ptr %138, i64 96
  store <16 x bfloat> %wide.load.4, ptr %138, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load16.4, ptr %139, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load17.4, ptr %140, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load18.4, ptr %141, align 2, !alias.scope !9, !noalias !6
  %index.next.4 = or disjoint i64 %index, 320
  %142 = add nuw nsw i64 %96, %index.next.4
  %143 = getelementptr inbounds nuw [311427072 x bfloat], ptr %4, i64 0, i64 %142
  %144 = getelementptr inbounds nuw i8, ptr %143, i64 32
  %145 = getelementptr inbounds nuw i8, ptr %143, i64 64
  %146 = getelementptr inbounds nuw i8, ptr %143, i64 96
  %wide.load.5 = load <16 x bfloat>, ptr %143, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load16.5 = load <16 x bfloat>, ptr %144, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load17.5 = load <16 x bfloat>, ptr %145, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load18.5 = load <16 x bfloat>, ptr %146, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %147 = getelementptr inbounds nuw [77856768 x bfloat], ptr %6, i64 0, i64 %142
  %148 = getelementptr inbounds nuw i8, ptr %147, i64 32
  %149 = getelementptr inbounds nuw i8, ptr %147, i64 64
  %150 = getelementptr inbounds nuw i8, ptr %147, i64 96
  store <16 x bfloat> %wide.load.5, ptr %147, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load16.5, ptr %148, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load17.5, ptr %149, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load18.5, ptr %150, align 2, !alias.scope !9, !noalias !6
  %index.next.5 = or disjoint i64 %index, 384
  %151 = add nuw nsw i64 %96, %index.next.5
  %152 = getelementptr inbounds nuw [311427072 x bfloat], ptr %4, i64 0, i64 %151
  %153 = getelementptr inbounds nuw i8, ptr %152, i64 32
  %154 = getelementptr inbounds nuw i8, ptr %152, i64 64
  %155 = getelementptr inbounds nuw i8, ptr %152, i64 96
  %wide.load.6 = load <16 x bfloat>, ptr %152, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load16.6 = load <16 x bfloat>, ptr %153, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load17.6 = load <16 x bfloat>, ptr %154, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load18.6 = load <16 x bfloat>, ptr %155, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %156 = getelementptr inbounds nuw [77856768 x bfloat], ptr %6, i64 0, i64 %151
  %157 = getelementptr inbounds nuw i8, ptr %156, i64 32
  %158 = getelementptr inbounds nuw i8, ptr %156, i64 64
  %159 = getelementptr inbounds nuw i8, ptr %156, i64 96
  store <16 x bfloat> %wide.load.6, ptr %156, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load16.6, ptr %157, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load17.6, ptr %158, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load18.6, ptr %159, align 2, !alias.scope !9, !noalias !6
  %index.next.6 = or disjoint i64 %index, 448
  %160 = add nuw nsw i64 %96, %index.next.6
  %161 = getelementptr inbounds nuw [311427072 x bfloat], ptr %4, i64 0, i64 %160
  %162 = getelementptr inbounds nuw i8, ptr %161, i64 32
  %163 = getelementptr inbounds nuw i8, ptr %161, i64 64
  %164 = getelementptr inbounds nuw i8, ptr %161, i64 96
  %wide.load.7 = load <16 x bfloat>, ptr %161, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load16.7 = load <16 x bfloat>, ptr %162, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load17.7 = load <16 x bfloat>, ptr %163, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load18.7 = load <16 x bfloat>, ptr %164, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %165 = getelementptr inbounds nuw [77856768 x bfloat], ptr %6, i64 0, i64 %160
  %166 = getelementptr inbounds nuw i8, ptr %165, i64 32
  %167 = getelementptr inbounds nuw i8, ptr %165, i64 64
  %168 = getelementptr inbounds nuw i8, ptr %165, i64 96
  store <16 x bfloat> %wide.load.7, ptr %165, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load16.7, ptr %166, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load17.7, ptr %167, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load18.7, ptr %168, align 2, !alias.scope !9, !noalias !6
  %index.next.7 = add nuw nsw i64 %index, 512
  %169 = icmp eq i64 %index.next.7, 2048
  br i1 %169, label %middle.block, label %vector.body, !llvm.loop !16

middle.block:                                     ; preds = %vector.body
  %170 = add nuw nsw i64 %94, 1
  %exitcond8.not = icmp eq i64 %170, 2708
  br i1 %exitcond8.not, label %slice_convert_fusion.3_wrapped.exit, label %.preheader, !llvm.loop !14

slice_convert_fusion.3_wrapped.exit:              ; preds = %middle.block, %middle.block28, %11, %92
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
!4 = !{i64 622854144}
!5 = !{i64 155713536}
!6 = !{!7}
!7 = distinct !{!7, !8, !"slice_convert_fusion.3_wrapped: argument 0"}
!8 = distinct !{!8, !"slice_convert_fusion.3_wrapped"}
!9 = !{!10}
!10 = distinct !{!10, !8, !"slice_convert_fusion.3_wrapped: argument 1"}
!11 = distinct !{!11, !12, !13}
!12 = !{!"llvm.loop.isvectorized", i32 1}
!13 = !{!"llvm.loop.unroll.runtime.disable"}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.unroll.disable"}
!16 = distinct !{!16, !12, !13}
