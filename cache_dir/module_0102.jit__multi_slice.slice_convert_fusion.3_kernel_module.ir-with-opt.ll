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
  br i1 %10, label %11, label %93

11:                                               ; preds = %1
  %12 = icmp sgt i64 %9, -1
  br i1 %12, label %13, label %slice_convert_fusion.3_wrapped.exit

13:                                               ; preds = %11
  %14 = mul nuw nsw i64 %9, 382464
  br label %vector.ph20

vector.ph20:                                      ; preds = %13, %middle.block28
  %15 = phi i64 [ 0, %13 ], [ %92, %middle.block28 ]
  %16 = mul nuw nsw i64 %15, 4608
  %17 = add nuw nsw i64 %16, %14
  %invariant.op45 = add nuw nsw i64 64, %17
  %invariant.op47 = add nuw nsw i64 128, %17
  %invariant.op49 = add nuw nsw i64 192, %17
  %invariant.op51 = add nuw nsw i64 256, %17
  %invariant.op53 = add nuw nsw i64 320, %17
  %invariant.op55 = add nuw nsw i64 384, %17
  %invariant.op57 = add nuw nsw i64 448, %17
  %invariant.op59 = add nuw nsw i64 512, %17
  br label %vector.body21

vector.body21:                                    ; preds = %vector.body21, %vector.ph20
  %index22 = phi i64 [ 0, %vector.ph20 ], [ %index.next27.8, %vector.body21 ]
  %18 = add nuw nsw i64 %17, %index22
  %19 = getelementptr inbounds nuw [21233664 x bfloat], ptr %4, i64 0, i64 %18
  %20 = getelementptr inbounds nuw i8, ptr %19, i64 32
  %21 = getelementptr inbounds nuw i8, ptr %19, i64 64
  %22 = getelementptr inbounds nuw i8, ptr %19, i64 96
  %wide.load23 = load <16 x bfloat>, ptr %19, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load24 = load <16 x bfloat>, ptr %20, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load25 = load <16 x bfloat>, ptr %21, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load26 = load <16 x bfloat>, ptr %22, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %23 = getelementptr inbounds nuw [5308416 x bfloat], ptr %6, i64 0, i64 %18
  %24 = getelementptr inbounds nuw i8, ptr %23, i64 32
  %25 = getelementptr inbounds nuw i8, ptr %23, i64 64
  %26 = getelementptr inbounds nuw i8, ptr %23, i64 96
  store <16 x bfloat> %wide.load23, ptr %23, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load24, ptr %24, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load25, ptr %25, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load26, ptr %26, align 2, !alias.scope !9, !noalias !6
  %.reass46 = add nuw nsw i64 %index22, %invariant.op45
  %27 = getelementptr inbounds nuw [21233664 x bfloat], ptr %4, i64 0, i64 %.reass46
  %28 = getelementptr inbounds nuw i8, ptr %27, i64 32
  %29 = getelementptr inbounds nuw i8, ptr %27, i64 64
  %30 = getelementptr inbounds nuw i8, ptr %27, i64 96
  %wide.load23.1 = load <16 x bfloat>, ptr %27, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load24.1 = load <16 x bfloat>, ptr %28, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load25.1 = load <16 x bfloat>, ptr %29, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load26.1 = load <16 x bfloat>, ptr %30, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %31 = getelementptr inbounds nuw [5308416 x bfloat], ptr %6, i64 0, i64 %.reass46
  %32 = getelementptr inbounds nuw i8, ptr %31, i64 32
  %33 = getelementptr inbounds nuw i8, ptr %31, i64 64
  %34 = getelementptr inbounds nuw i8, ptr %31, i64 96
  store <16 x bfloat> %wide.load23.1, ptr %31, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load24.1, ptr %32, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load25.1, ptr %33, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load26.1, ptr %34, align 2, !alias.scope !9, !noalias !6
  %.reass48 = add nuw nsw i64 %index22, %invariant.op47
  %35 = getelementptr inbounds nuw [21233664 x bfloat], ptr %4, i64 0, i64 %.reass48
  %36 = getelementptr inbounds nuw i8, ptr %35, i64 32
  %37 = getelementptr inbounds nuw i8, ptr %35, i64 64
  %38 = getelementptr inbounds nuw i8, ptr %35, i64 96
  %wide.load23.2 = load <16 x bfloat>, ptr %35, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load24.2 = load <16 x bfloat>, ptr %36, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load25.2 = load <16 x bfloat>, ptr %37, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load26.2 = load <16 x bfloat>, ptr %38, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %39 = getelementptr inbounds nuw [5308416 x bfloat], ptr %6, i64 0, i64 %.reass48
  %40 = getelementptr inbounds nuw i8, ptr %39, i64 32
  %41 = getelementptr inbounds nuw i8, ptr %39, i64 64
  %42 = getelementptr inbounds nuw i8, ptr %39, i64 96
  store <16 x bfloat> %wide.load23.2, ptr %39, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load24.2, ptr %40, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load25.2, ptr %41, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load26.2, ptr %42, align 2, !alias.scope !9, !noalias !6
  %.reass50 = add nuw nsw i64 %index22, %invariant.op49
  %43 = getelementptr inbounds nuw [21233664 x bfloat], ptr %4, i64 0, i64 %.reass50
  %44 = getelementptr inbounds nuw i8, ptr %43, i64 32
  %45 = getelementptr inbounds nuw i8, ptr %43, i64 64
  %46 = getelementptr inbounds nuw i8, ptr %43, i64 96
  %wide.load23.3 = load <16 x bfloat>, ptr %43, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load24.3 = load <16 x bfloat>, ptr %44, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load25.3 = load <16 x bfloat>, ptr %45, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load26.3 = load <16 x bfloat>, ptr %46, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %47 = getelementptr inbounds nuw [5308416 x bfloat], ptr %6, i64 0, i64 %.reass50
  %48 = getelementptr inbounds nuw i8, ptr %47, i64 32
  %49 = getelementptr inbounds nuw i8, ptr %47, i64 64
  %50 = getelementptr inbounds nuw i8, ptr %47, i64 96
  store <16 x bfloat> %wide.load23.3, ptr %47, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load24.3, ptr %48, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load25.3, ptr %49, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load26.3, ptr %50, align 2, !alias.scope !9, !noalias !6
  %.reass52 = add nuw nsw i64 %index22, %invariant.op51
  %51 = getelementptr inbounds nuw [21233664 x bfloat], ptr %4, i64 0, i64 %.reass52
  %52 = getelementptr inbounds nuw i8, ptr %51, i64 32
  %53 = getelementptr inbounds nuw i8, ptr %51, i64 64
  %54 = getelementptr inbounds nuw i8, ptr %51, i64 96
  %wide.load23.4 = load <16 x bfloat>, ptr %51, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load24.4 = load <16 x bfloat>, ptr %52, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load25.4 = load <16 x bfloat>, ptr %53, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load26.4 = load <16 x bfloat>, ptr %54, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %55 = getelementptr inbounds nuw [5308416 x bfloat], ptr %6, i64 0, i64 %.reass52
  %56 = getelementptr inbounds nuw i8, ptr %55, i64 32
  %57 = getelementptr inbounds nuw i8, ptr %55, i64 64
  %58 = getelementptr inbounds nuw i8, ptr %55, i64 96
  store <16 x bfloat> %wide.load23.4, ptr %55, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load24.4, ptr %56, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load25.4, ptr %57, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load26.4, ptr %58, align 2, !alias.scope !9, !noalias !6
  %.reass54 = add nuw nsw i64 %index22, %invariant.op53
  %59 = getelementptr inbounds nuw [21233664 x bfloat], ptr %4, i64 0, i64 %.reass54
  %60 = getelementptr inbounds nuw i8, ptr %59, i64 32
  %61 = getelementptr inbounds nuw i8, ptr %59, i64 64
  %62 = getelementptr inbounds nuw i8, ptr %59, i64 96
  %wide.load23.5 = load <16 x bfloat>, ptr %59, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load24.5 = load <16 x bfloat>, ptr %60, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load25.5 = load <16 x bfloat>, ptr %61, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load26.5 = load <16 x bfloat>, ptr %62, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %63 = getelementptr inbounds nuw [5308416 x bfloat], ptr %6, i64 0, i64 %.reass54
  %64 = getelementptr inbounds nuw i8, ptr %63, i64 32
  %65 = getelementptr inbounds nuw i8, ptr %63, i64 64
  %66 = getelementptr inbounds nuw i8, ptr %63, i64 96
  store <16 x bfloat> %wide.load23.5, ptr %63, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load24.5, ptr %64, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load25.5, ptr %65, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load26.5, ptr %66, align 2, !alias.scope !9, !noalias !6
  %.reass56 = add nuw nsw i64 %index22, %invariant.op55
  %67 = getelementptr inbounds nuw [21233664 x bfloat], ptr %4, i64 0, i64 %.reass56
  %68 = getelementptr inbounds nuw i8, ptr %67, i64 32
  %69 = getelementptr inbounds nuw i8, ptr %67, i64 64
  %70 = getelementptr inbounds nuw i8, ptr %67, i64 96
  %wide.load23.6 = load <16 x bfloat>, ptr %67, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load24.6 = load <16 x bfloat>, ptr %68, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load25.6 = load <16 x bfloat>, ptr %69, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load26.6 = load <16 x bfloat>, ptr %70, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %71 = getelementptr inbounds nuw [5308416 x bfloat], ptr %6, i64 0, i64 %.reass56
  %72 = getelementptr inbounds nuw i8, ptr %71, i64 32
  %73 = getelementptr inbounds nuw i8, ptr %71, i64 64
  %74 = getelementptr inbounds nuw i8, ptr %71, i64 96
  store <16 x bfloat> %wide.load23.6, ptr %71, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load24.6, ptr %72, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load25.6, ptr %73, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load26.6, ptr %74, align 2, !alias.scope !9, !noalias !6
  %.reass58 = add nuw nsw i64 %index22, %invariant.op57
  %75 = getelementptr inbounds nuw [21233664 x bfloat], ptr %4, i64 0, i64 %.reass58
  %76 = getelementptr inbounds nuw i8, ptr %75, i64 32
  %77 = getelementptr inbounds nuw i8, ptr %75, i64 64
  %78 = getelementptr inbounds nuw i8, ptr %75, i64 96
  %wide.load23.7 = load <16 x bfloat>, ptr %75, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load24.7 = load <16 x bfloat>, ptr %76, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load25.7 = load <16 x bfloat>, ptr %77, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load26.7 = load <16 x bfloat>, ptr %78, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %79 = getelementptr inbounds nuw [5308416 x bfloat], ptr %6, i64 0, i64 %.reass58
  %80 = getelementptr inbounds nuw i8, ptr %79, i64 32
  %81 = getelementptr inbounds nuw i8, ptr %79, i64 64
  %82 = getelementptr inbounds nuw i8, ptr %79, i64 96
  store <16 x bfloat> %wide.load23.7, ptr %79, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load24.7, ptr %80, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load25.7, ptr %81, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load26.7, ptr %82, align 2, !alias.scope !9, !noalias !6
  %.reass60 = add nuw nsw i64 %index22, %invariant.op59
  %83 = getelementptr inbounds nuw [21233664 x bfloat], ptr %4, i64 0, i64 %.reass60
  %84 = getelementptr inbounds nuw i8, ptr %83, i64 32
  %85 = getelementptr inbounds nuw i8, ptr %83, i64 64
  %86 = getelementptr inbounds nuw i8, ptr %83, i64 96
  %wide.load23.8 = load <16 x bfloat>, ptr %83, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load24.8 = load <16 x bfloat>, ptr %84, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load25.8 = load <16 x bfloat>, ptr %85, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load26.8 = load <16 x bfloat>, ptr %86, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %87 = getelementptr inbounds nuw [5308416 x bfloat], ptr %6, i64 0, i64 %.reass60
  %88 = getelementptr inbounds nuw i8, ptr %87, i64 32
  %89 = getelementptr inbounds nuw i8, ptr %87, i64 64
  %90 = getelementptr inbounds nuw i8, ptr %87, i64 96
  store <16 x bfloat> %wide.load23.8, ptr %87, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load24.8, ptr %88, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load25.8, ptr %89, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load26.8, ptr %90, align 2, !alias.scope !9, !noalias !6
  %index.next27.8 = add nuw nsw i64 %index22, 576
  %91 = icmp eq i64 %index.next27.8, 4608
  br i1 %91, label %middle.block28, label %vector.body21, !llvm.loop !11

middle.block28:                                   ; preds = %vector.body21
  %92 = add nuw nsw i64 %15, 1
  %exitcond11.not = icmp eq i64 %92, 83
  br i1 %exitcond11.not, label %slice_convert_fusion.3_wrapped.exit, label %vector.ph20, !llvm.loop !14

93:                                               ; preds = %1
  %94 = icmp eq i64 %9, 13
  br i1 %94, label %.preheader, label %slice_convert_fusion.3_wrapped.exit

.preheader:                                       ; preds = %93, %middle.block
  %95 = phi i64 [ %172, %middle.block ], [ 0, %93 ]
  %96 = mul nuw nsw i64 %95, 4608
  %97 = add nuw nsw i64 %96, 4972032
  %invariant.op = add nuw nsw i64 64, %97
  %invariant.op31 = add nuw nsw i64 128, %97
  %invariant.op33 = add nuw nsw i64 192, %97
  %invariant.op35 = add nuw nsw i64 256, %97
  %invariant.op37 = add nuw nsw i64 320, %97
  %invariant.op39 = add nuw nsw i64 384, %97
  %invariant.op41 = add nuw nsw i64 448, %97
  %invariant.op43 = add nuw nsw i64 512, %97
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.preheader
  %index = phi i64 [ 0, %.preheader ], [ %index.next.8, %vector.body ]
  %98 = add nuw nsw i64 %97, %index
  %99 = getelementptr inbounds nuw [21233664 x bfloat], ptr %4, i64 0, i64 %98
  %100 = getelementptr inbounds nuw i8, ptr %99, i64 32
  %101 = getelementptr inbounds nuw i8, ptr %99, i64 64
  %102 = getelementptr inbounds nuw i8, ptr %99, i64 96
  %wide.load = load <16 x bfloat>, ptr %99, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load16 = load <16 x bfloat>, ptr %100, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load17 = load <16 x bfloat>, ptr %101, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load18 = load <16 x bfloat>, ptr %102, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %103 = getelementptr inbounds nuw [5308416 x bfloat], ptr %6, i64 0, i64 %98
  %104 = getelementptr inbounds nuw i8, ptr %103, i64 32
  %105 = getelementptr inbounds nuw i8, ptr %103, i64 64
  %106 = getelementptr inbounds nuw i8, ptr %103, i64 96
  store <16 x bfloat> %wide.load, ptr %103, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load16, ptr %104, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load17, ptr %105, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load18, ptr %106, align 2, !alias.scope !9, !noalias !6
  %.reass = add nuw nsw i64 %index, %invariant.op
  %107 = getelementptr inbounds nuw [21233664 x bfloat], ptr %4, i64 0, i64 %.reass
  %108 = getelementptr inbounds nuw i8, ptr %107, i64 32
  %109 = getelementptr inbounds nuw i8, ptr %107, i64 64
  %110 = getelementptr inbounds nuw i8, ptr %107, i64 96
  %wide.load.1 = load <16 x bfloat>, ptr %107, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load16.1 = load <16 x bfloat>, ptr %108, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load17.1 = load <16 x bfloat>, ptr %109, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load18.1 = load <16 x bfloat>, ptr %110, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %111 = getelementptr inbounds nuw [5308416 x bfloat], ptr %6, i64 0, i64 %.reass
  %112 = getelementptr inbounds nuw i8, ptr %111, i64 32
  %113 = getelementptr inbounds nuw i8, ptr %111, i64 64
  %114 = getelementptr inbounds nuw i8, ptr %111, i64 96
  store <16 x bfloat> %wide.load.1, ptr %111, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load16.1, ptr %112, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load17.1, ptr %113, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load18.1, ptr %114, align 2, !alias.scope !9, !noalias !6
  %.reass32 = add nuw nsw i64 %index, %invariant.op31
  %115 = getelementptr inbounds nuw [21233664 x bfloat], ptr %4, i64 0, i64 %.reass32
  %116 = getelementptr inbounds nuw i8, ptr %115, i64 32
  %117 = getelementptr inbounds nuw i8, ptr %115, i64 64
  %118 = getelementptr inbounds nuw i8, ptr %115, i64 96
  %wide.load.2 = load <16 x bfloat>, ptr %115, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load16.2 = load <16 x bfloat>, ptr %116, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load17.2 = load <16 x bfloat>, ptr %117, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load18.2 = load <16 x bfloat>, ptr %118, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %119 = getelementptr inbounds nuw [5308416 x bfloat], ptr %6, i64 0, i64 %.reass32
  %120 = getelementptr inbounds nuw i8, ptr %119, i64 32
  %121 = getelementptr inbounds nuw i8, ptr %119, i64 64
  %122 = getelementptr inbounds nuw i8, ptr %119, i64 96
  store <16 x bfloat> %wide.load.2, ptr %119, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load16.2, ptr %120, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load17.2, ptr %121, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load18.2, ptr %122, align 2, !alias.scope !9, !noalias !6
  %.reass34 = add nuw nsw i64 %index, %invariant.op33
  %123 = getelementptr inbounds nuw [21233664 x bfloat], ptr %4, i64 0, i64 %.reass34
  %124 = getelementptr inbounds nuw i8, ptr %123, i64 32
  %125 = getelementptr inbounds nuw i8, ptr %123, i64 64
  %126 = getelementptr inbounds nuw i8, ptr %123, i64 96
  %wide.load.3 = load <16 x bfloat>, ptr %123, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load16.3 = load <16 x bfloat>, ptr %124, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load17.3 = load <16 x bfloat>, ptr %125, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load18.3 = load <16 x bfloat>, ptr %126, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %127 = getelementptr inbounds nuw [5308416 x bfloat], ptr %6, i64 0, i64 %.reass34
  %128 = getelementptr inbounds nuw i8, ptr %127, i64 32
  %129 = getelementptr inbounds nuw i8, ptr %127, i64 64
  %130 = getelementptr inbounds nuw i8, ptr %127, i64 96
  store <16 x bfloat> %wide.load.3, ptr %127, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load16.3, ptr %128, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load17.3, ptr %129, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load18.3, ptr %130, align 2, !alias.scope !9, !noalias !6
  %.reass36 = add nuw nsw i64 %index, %invariant.op35
  %131 = getelementptr inbounds nuw [21233664 x bfloat], ptr %4, i64 0, i64 %.reass36
  %132 = getelementptr inbounds nuw i8, ptr %131, i64 32
  %133 = getelementptr inbounds nuw i8, ptr %131, i64 64
  %134 = getelementptr inbounds nuw i8, ptr %131, i64 96
  %wide.load.4 = load <16 x bfloat>, ptr %131, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load16.4 = load <16 x bfloat>, ptr %132, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load17.4 = load <16 x bfloat>, ptr %133, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load18.4 = load <16 x bfloat>, ptr %134, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %135 = getelementptr inbounds nuw [5308416 x bfloat], ptr %6, i64 0, i64 %.reass36
  %136 = getelementptr inbounds nuw i8, ptr %135, i64 32
  %137 = getelementptr inbounds nuw i8, ptr %135, i64 64
  %138 = getelementptr inbounds nuw i8, ptr %135, i64 96
  store <16 x bfloat> %wide.load.4, ptr %135, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load16.4, ptr %136, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load17.4, ptr %137, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load18.4, ptr %138, align 2, !alias.scope !9, !noalias !6
  %.reass38 = add nuw nsw i64 %index, %invariant.op37
  %139 = getelementptr inbounds nuw [21233664 x bfloat], ptr %4, i64 0, i64 %.reass38
  %140 = getelementptr inbounds nuw i8, ptr %139, i64 32
  %141 = getelementptr inbounds nuw i8, ptr %139, i64 64
  %142 = getelementptr inbounds nuw i8, ptr %139, i64 96
  %wide.load.5 = load <16 x bfloat>, ptr %139, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load16.5 = load <16 x bfloat>, ptr %140, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load17.5 = load <16 x bfloat>, ptr %141, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load18.5 = load <16 x bfloat>, ptr %142, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %143 = getelementptr inbounds nuw [5308416 x bfloat], ptr %6, i64 0, i64 %.reass38
  %144 = getelementptr inbounds nuw i8, ptr %143, i64 32
  %145 = getelementptr inbounds nuw i8, ptr %143, i64 64
  %146 = getelementptr inbounds nuw i8, ptr %143, i64 96
  store <16 x bfloat> %wide.load.5, ptr %143, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load16.5, ptr %144, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load17.5, ptr %145, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load18.5, ptr %146, align 2, !alias.scope !9, !noalias !6
  %.reass40 = add nuw nsw i64 %index, %invariant.op39
  %147 = getelementptr inbounds nuw [21233664 x bfloat], ptr %4, i64 0, i64 %.reass40
  %148 = getelementptr inbounds nuw i8, ptr %147, i64 32
  %149 = getelementptr inbounds nuw i8, ptr %147, i64 64
  %150 = getelementptr inbounds nuw i8, ptr %147, i64 96
  %wide.load.6 = load <16 x bfloat>, ptr %147, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load16.6 = load <16 x bfloat>, ptr %148, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load17.6 = load <16 x bfloat>, ptr %149, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load18.6 = load <16 x bfloat>, ptr %150, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %151 = getelementptr inbounds nuw [5308416 x bfloat], ptr %6, i64 0, i64 %.reass40
  %152 = getelementptr inbounds nuw i8, ptr %151, i64 32
  %153 = getelementptr inbounds nuw i8, ptr %151, i64 64
  %154 = getelementptr inbounds nuw i8, ptr %151, i64 96
  store <16 x bfloat> %wide.load.6, ptr %151, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load16.6, ptr %152, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load17.6, ptr %153, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load18.6, ptr %154, align 2, !alias.scope !9, !noalias !6
  %.reass42 = add nuw nsw i64 %index, %invariant.op41
  %155 = getelementptr inbounds nuw [21233664 x bfloat], ptr %4, i64 0, i64 %.reass42
  %156 = getelementptr inbounds nuw i8, ptr %155, i64 32
  %157 = getelementptr inbounds nuw i8, ptr %155, i64 64
  %158 = getelementptr inbounds nuw i8, ptr %155, i64 96
  %wide.load.7 = load <16 x bfloat>, ptr %155, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load16.7 = load <16 x bfloat>, ptr %156, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load17.7 = load <16 x bfloat>, ptr %157, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load18.7 = load <16 x bfloat>, ptr %158, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %159 = getelementptr inbounds nuw [5308416 x bfloat], ptr %6, i64 0, i64 %.reass42
  %160 = getelementptr inbounds nuw i8, ptr %159, i64 32
  %161 = getelementptr inbounds nuw i8, ptr %159, i64 64
  %162 = getelementptr inbounds nuw i8, ptr %159, i64 96
  store <16 x bfloat> %wide.load.7, ptr %159, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load16.7, ptr %160, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load17.7, ptr %161, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load18.7, ptr %162, align 2, !alias.scope !9, !noalias !6
  %.reass44 = add nuw nsw i64 %index, %invariant.op43
  %163 = getelementptr inbounds nuw [21233664 x bfloat], ptr %4, i64 0, i64 %.reass44
  %164 = getelementptr inbounds nuw i8, ptr %163, i64 32
  %165 = getelementptr inbounds nuw i8, ptr %163, i64 64
  %166 = getelementptr inbounds nuw i8, ptr %163, i64 96
  %wide.load.8 = load <16 x bfloat>, ptr %163, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load16.8 = load <16 x bfloat>, ptr %164, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load17.8 = load <16 x bfloat>, ptr %165, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load18.8 = load <16 x bfloat>, ptr %166, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %167 = getelementptr inbounds nuw [5308416 x bfloat], ptr %6, i64 0, i64 %.reass44
  %168 = getelementptr inbounds nuw i8, ptr %167, i64 32
  %169 = getelementptr inbounds nuw i8, ptr %167, i64 64
  %170 = getelementptr inbounds nuw i8, ptr %167, i64 96
  store <16 x bfloat> %wide.load.8, ptr %167, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load16.8, ptr %168, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load17.8, ptr %169, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load18.8, ptr %170, align 2, !alias.scope !9, !noalias !6
  %index.next.8 = add nuw nsw i64 %index, 576
  %171 = icmp eq i64 %index.next.8, 4608
  br i1 %171, label %middle.block, label %vector.body, !llvm.loop !16

middle.block:                                     ; preds = %vector.body
  %172 = add nuw nsw i64 %95, 1
  %exitcond8.not = icmp eq i64 %172, 73
  br i1 %exitcond8.not, label %slice_convert_fusion.3_wrapped.exit, label %.preheader, !llvm.loop !14

slice_convert_fusion.3_wrapped.exit:              ; preds = %middle.block, %middle.block28, %11, %93
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
!4 = !{i64 42467328}
!5 = !{i64 10616832}
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
