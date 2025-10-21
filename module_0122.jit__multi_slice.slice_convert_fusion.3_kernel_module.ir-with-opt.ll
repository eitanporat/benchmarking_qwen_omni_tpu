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
  br i1 %10, label %11, label %200

11:                                               ; preds = %1
  %12 = icmp sgt i64 %9, -1
  br i1 %12, label %13, label %slice_convert_fusion.3_wrapped.exit

13:                                               ; preds = %11
  %14 = mul nuw nsw i64 %9, 677376
  %15 = mul nuw nsw i64 %9, 169344
  br label %vector.ph20

vector.ph20:                                      ; preds = %13, %vector.ph20
  %16 = phi i64 [ 0, %13 ], [ %199, %vector.ph20 ]
  %17 = mul nuw nsw i64 %16, 1152
  %18 = add nuw nsw i64 %17, %15
  %19 = mul nuw nsw i64 %16, 4608
  %20 = add nuw nsw i64 %19, %14
  %21 = getelementptr inbounds nuw [9437184 x bfloat], ptr %4, i64 0, i64 %20
  %22 = getelementptr inbounds nuw i8, ptr %21, i64 32
  %23 = getelementptr inbounds nuw i8, ptr %21, i64 64
  %24 = getelementptr inbounds nuw i8, ptr %21, i64 96
  %wide.load23 = load <16 x bfloat>, ptr %21, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load24 = load <16 x bfloat>, ptr %22, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load25 = load <16 x bfloat>, ptr %23, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load26 = load <16 x bfloat>, ptr %24, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %25 = getelementptr inbounds nuw [2359296 x bfloat], ptr %6, i64 0, i64 %18
  %26 = getelementptr inbounds nuw i8, ptr %25, i64 32
  %27 = getelementptr inbounds nuw i8, ptr %25, i64 64
  %28 = getelementptr inbounds nuw i8, ptr %25, i64 96
  store <16 x bfloat> %wide.load23, ptr %25, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load24, ptr %26, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load25, ptr %27, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load26, ptr %28, align 2, !alias.scope !9, !noalias !6
  %29 = or disjoint i64 %20, 64
  %30 = getelementptr inbounds nuw [9437184 x bfloat], ptr %4, i64 0, i64 %29
  %31 = getelementptr inbounds nuw i8, ptr %30, i64 32
  %32 = getelementptr inbounds nuw i8, ptr %30, i64 64
  %33 = getelementptr inbounds nuw i8, ptr %30, i64 96
  %wide.load23.1 = load <16 x bfloat>, ptr %30, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load24.1 = load <16 x bfloat>, ptr %31, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load25.1 = load <16 x bfloat>, ptr %32, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load26.1 = load <16 x bfloat>, ptr %33, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %34 = or disjoint i64 %18, 64
  %35 = getelementptr inbounds nuw [2359296 x bfloat], ptr %6, i64 0, i64 %34
  %36 = getelementptr inbounds nuw i8, ptr %35, i64 32
  %37 = getelementptr inbounds nuw i8, ptr %35, i64 64
  %38 = getelementptr inbounds nuw i8, ptr %35, i64 96
  store <16 x bfloat> %wide.load23.1, ptr %35, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load24.1, ptr %36, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load25.1, ptr %37, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load26.1, ptr %38, align 2, !alias.scope !9, !noalias !6
  %39 = or disjoint i64 %20, 128
  %40 = getelementptr inbounds nuw [9437184 x bfloat], ptr %4, i64 0, i64 %39
  %41 = getelementptr inbounds nuw i8, ptr %40, i64 32
  %42 = getelementptr inbounds nuw i8, ptr %40, i64 64
  %43 = getelementptr inbounds nuw i8, ptr %40, i64 96
  %wide.load23.2 = load <16 x bfloat>, ptr %40, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load24.2 = load <16 x bfloat>, ptr %41, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load25.2 = load <16 x bfloat>, ptr %42, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load26.2 = load <16 x bfloat>, ptr %43, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %44 = add nuw nsw i64 %18, 128
  %45 = getelementptr inbounds nuw [2359296 x bfloat], ptr %6, i64 0, i64 %44
  %46 = getelementptr inbounds nuw i8, ptr %45, i64 32
  %47 = getelementptr inbounds nuw i8, ptr %45, i64 64
  %48 = getelementptr inbounds nuw i8, ptr %45, i64 96
  store <16 x bfloat> %wide.load23.2, ptr %45, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load24.2, ptr %46, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load25.2, ptr %47, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load26.2, ptr %48, align 2, !alias.scope !9, !noalias !6
  %49 = or disjoint i64 %20, 192
  %50 = getelementptr inbounds nuw [9437184 x bfloat], ptr %4, i64 0, i64 %49
  %51 = getelementptr inbounds nuw i8, ptr %50, i64 32
  %52 = getelementptr inbounds nuw i8, ptr %50, i64 64
  %53 = getelementptr inbounds nuw i8, ptr %50, i64 96
  %wide.load23.3 = load <16 x bfloat>, ptr %50, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load24.3 = load <16 x bfloat>, ptr %51, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load25.3 = load <16 x bfloat>, ptr %52, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load26.3 = load <16 x bfloat>, ptr %53, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %54 = add nuw nsw i64 %18, 192
  %55 = getelementptr inbounds nuw [2359296 x bfloat], ptr %6, i64 0, i64 %54
  %56 = getelementptr inbounds nuw i8, ptr %55, i64 32
  %57 = getelementptr inbounds nuw i8, ptr %55, i64 64
  %58 = getelementptr inbounds nuw i8, ptr %55, i64 96
  store <16 x bfloat> %wide.load23.3, ptr %55, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load24.3, ptr %56, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load25.3, ptr %57, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load26.3, ptr %58, align 2, !alias.scope !9, !noalias !6
  %59 = or disjoint i64 %20, 256
  %60 = getelementptr inbounds nuw [9437184 x bfloat], ptr %4, i64 0, i64 %59
  %61 = getelementptr inbounds nuw i8, ptr %60, i64 32
  %62 = getelementptr inbounds nuw i8, ptr %60, i64 64
  %63 = getelementptr inbounds nuw i8, ptr %60, i64 96
  %wide.load23.4 = load <16 x bfloat>, ptr %60, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load24.4 = load <16 x bfloat>, ptr %61, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load25.4 = load <16 x bfloat>, ptr %62, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load26.4 = load <16 x bfloat>, ptr %63, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %64 = add nuw nsw i64 %18, 256
  %65 = getelementptr inbounds nuw [2359296 x bfloat], ptr %6, i64 0, i64 %64
  %66 = getelementptr inbounds nuw i8, ptr %65, i64 32
  %67 = getelementptr inbounds nuw i8, ptr %65, i64 64
  %68 = getelementptr inbounds nuw i8, ptr %65, i64 96
  store <16 x bfloat> %wide.load23.4, ptr %65, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load24.4, ptr %66, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load25.4, ptr %67, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load26.4, ptr %68, align 2, !alias.scope !9, !noalias !6
  %69 = or disjoint i64 %20, 320
  %70 = getelementptr inbounds nuw [9437184 x bfloat], ptr %4, i64 0, i64 %69
  %71 = getelementptr inbounds nuw i8, ptr %70, i64 32
  %72 = getelementptr inbounds nuw i8, ptr %70, i64 64
  %73 = getelementptr inbounds nuw i8, ptr %70, i64 96
  %wide.load23.5 = load <16 x bfloat>, ptr %70, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load24.5 = load <16 x bfloat>, ptr %71, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load25.5 = load <16 x bfloat>, ptr %72, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load26.5 = load <16 x bfloat>, ptr %73, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %74 = add nuw nsw i64 %18, 320
  %75 = getelementptr inbounds nuw [2359296 x bfloat], ptr %6, i64 0, i64 %74
  %76 = getelementptr inbounds nuw i8, ptr %75, i64 32
  %77 = getelementptr inbounds nuw i8, ptr %75, i64 64
  %78 = getelementptr inbounds nuw i8, ptr %75, i64 96
  store <16 x bfloat> %wide.load23.5, ptr %75, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load24.5, ptr %76, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load25.5, ptr %77, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load26.5, ptr %78, align 2, !alias.scope !9, !noalias !6
  %79 = or disjoint i64 %20, 384
  %80 = getelementptr inbounds nuw [9437184 x bfloat], ptr %4, i64 0, i64 %79
  %81 = getelementptr inbounds nuw i8, ptr %80, i64 32
  %82 = getelementptr inbounds nuw i8, ptr %80, i64 64
  %83 = getelementptr inbounds nuw i8, ptr %80, i64 96
  %wide.load23.6 = load <16 x bfloat>, ptr %80, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load24.6 = load <16 x bfloat>, ptr %81, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load25.6 = load <16 x bfloat>, ptr %82, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load26.6 = load <16 x bfloat>, ptr %83, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %84 = add nuw nsw i64 %18, 384
  %85 = getelementptr inbounds nuw [2359296 x bfloat], ptr %6, i64 0, i64 %84
  %86 = getelementptr inbounds nuw i8, ptr %85, i64 32
  %87 = getelementptr inbounds nuw i8, ptr %85, i64 64
  %88 = getelementptr inbounds nuw i8, ptr %85, i64 96
  store <16 x bfloat> %wide.load23.6, ptr %85, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load24.6, ptr %86, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load25.6, ptr %87, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load26.6, ptr %88, align 2, !alias.scope !9, !noalias !6
  %89 = or disjoint i64 %20, 448
  %90 = getelementptr inbounds nuw [9437184 x bfloat], ptr %4, i64 0, i64 %89
  %91 = getelementptr inbounds nuw i8, ptr %90, i64 32
  %92 = getelementptr inbounds nuw i8, ptr %90, i64 64
  %93 = getelementptr inbounds nuw i8, ptr %90, i64 96
  %wide.load23.7 = load <16 x bfloat>, ptr %90, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load24.7 = load <16 x bfloat>, ptr %91, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load25.7 = load <16 x bfloat>, ptr %92, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load26.7 = load <16 x bfloat>, ptr %93, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %94 = add nuw nsw i64 %18, 448
  %95 = getelementptr inbounds nuw [2359296 x bfloat], ptr %6, i64 0, i64 %94
  %96 = getelementptr inbounds nuw i8, ptr %95, i64 32
  %97 = getelementptr inbounds nuw i8, ptr %95, i64 64
  %98 = getelementptr inbounds nuw i8, ptr %95, i64 96
  store <16 x bfloat> %wide.load23.7, ptr %95, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load24.7, ptr %96, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load25.7, ptr %97, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load26.7, ptr %98, align 2, !alias.scope !9, !noalias !6
  %99 = add nuw nsw i64 %20, 512
  %100 = getelementptr inbounds nuw [9437184 x bfloat], ptr %4, i64 0, i64 %99
  %101 = getelementptr inbounds nuw i8, ptr %100, i64 32
  %102 = getelementptr inbounds nuw i8, ptr %100, i64 64
  %103 = getelementptr inbounds nuw i8, ptr %100, i64 96
  %wide.load23.8 = load <16 x bfloat>, ptr %100, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load24.8 = load <16 x bfloat>, ptr %101, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load25.8 = load <16 x bfloat>, ptr %102, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load26.8 = load <16 x bfloat>, ptr %103, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %104 = add nuw nsw i64 %18, 512
  %105 = getelementptr inbounds nuw [2359296 x bfloat], ptr %6, i64 0, i64 %104
  %106 = getelementptr inbounds nuw i8, ptr %105, i64 32
  %107 = getelementptr inbounds nuw i8, ptr %105, i64 64
  %108 = getelementptr inbounds nuw i8, ptr %105, i64 96
  store <16 x bfloat> %wide.load23.8, ptr %105, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load24.8, ptr %106, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load25.8, ptr %107, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load26.8, ptr %108, align 2, !alias.scope !9, !noalias !6
  %109 = add nuw nsw i64 %20, 576
  %110 = getelementptr inbounds nuw [9437184 x bfloat], ptr %4, i64 0, i64 %109
  %111 = getelementptr inbounds nuw i8, ptr %110, i64 32
  %112 = getelementptr inbounds nuw i8, ptr %110, i64 64
  %113 = getelementptr inbounds nuw i8, ptr %110, i64 96
  %wide.load23.9 = load <16 x bfloat>, ptr %110, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load24.9 = load <16 x bfloat>, ptr %111, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load25.9 = load <16 x bfloat>, ptr %112, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load26.9 = load <16 x bfloat>, ptr %113, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %114 = add nuw nsw i64 %18, 576
  %115 = getelementptr inbounds nuw [2359296 x bfloat], ptr %6, i64 0, i64 %114
  %116 = getelementptr inbounds nuw i8, ptr %115, i64 32
  %117 = getelementptr inbounds nuw i8, ptr %115, i64 64
  %118 = getelementptr inbounds nuw i8, ptr %115, i64 96
  store <16 x bfloat> %wide.load23.9, ptr %115, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load24.9, ptr %116, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load25.9, ptr %117, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load26.9, ptr %118, align 2, !alias.scope !9, !noalias !6
  %119 = add nuw nsw i64 %20, 640
  %120 = getelementptr inbounds nuw [9437184 x bfloat], ptr %4, i64 0, i64 %119
  %121 = getelementptr inbounds nuw i8, ptr %120, i64 32
  %122 = getelementptr inbounds nuw i8, ptr %120, i64 64
  %123 = getelementptr inbounds nuw i8, ptr %120, i64 96
  %wide.load23.10 = load <16 x bfloat>, ptr %120, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load24.10 = load <16 x bfloat>, ptr %121, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load25.10 = load <16 x bfloat>, ptr %122, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load26.10 = load <16 x bfloat>, ptr %123, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %124 = add nuw nsw i64 %18, 640
  %125 = getelementptr inbounds nuw [2359296 x bfloat], ptr %6, i64 0, i64 %124
  %126 = getelementptr inbounds nuw i8, ptr %125, i64 32
  %127 = getelementptr inbounds nuw i8, ptr %125, i64 64
  %128 = getelementptr inbounds nuw i8, ptr %125, i64 96
  store <16 x bfloat> %wide.load23.10, ptr %125, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load24.10, ptr %126, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load25.10, ptr %127, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load26.10, ptr %128, align 2, !alias.scope !9, !noalias !6
  %129 = add nuw nsw i64 %20, 704
  %130 = getelementptr inbounds nuw [9437184 x bfloat], ptr %4, i64 0, i64 %129
  %131 = getelementptr inbounds nuw i8, ptr %130, i64 32
  %132 = getelementptr inbounds nuw i8, ptr %130, i64 64
  %133 = getelementptr inbounds nuw i8, ptr %130, i64 96
  %wide.load23.11 = load <16 x bfloat>, ptr %130, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load24.11 = load <16 x bfloat>, ptr %131, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load25.11 = load <16 x bfloat>, ptr %132, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load26.11 = load <16 x bfloat>, ptr %133, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %134 = add nuw nsw i64 %18, 704
  %135 = getelementptr inbounds nuw [2359296 x bfloat], ptr %6, i64 0, i64 %134
  %136 = getelementptr inbounds nuw i8, ptr %135, i64 32
  %137 = getelementptr inbounds nuw i8, ptr %135, i64 64
  %138 = getelementptr inbounds nuw i8, ptr %135, i64 96
  store <16 x bfloat> %wide.load23.11, ptr %135, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load24.11, ptr %136, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load25.11, ptr %137, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load26.11, ptr %138, align 2, !alias.scope !9, !noalias !6
  %139 = add nuw nsw i64 %20, 768
  %140 = getelementptr inbounds nuw [9437184 x bfloat], ptr %4, i64 0, i64 %139
  %141 = getelementptr inbounds nuw i8, ptr %140, i64 32
  %142 = getelementptr inbounds nuw i8, ptr %140, i64 64
  %143 = getelementptr inbounds nuw i8, ptr %140, i64 96
  %wide.load23.12 = load <16 x bfloat>, ptr %140, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load24.12 = load <16 x bfloat>, ptr %141, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load25.12 = load <16 x bfloat>, ptr %142, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load26.12 = load <16 x bfloat>, ptr %143, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %144 = add nuw nsw i64 %18, 768
  %145 = getelementptr inbounds nuw [2359296 x bfloat], ptr %6, i64 0, i64 %144
  %146 = getelementptr inbounds nuw i8, ptr %145, i64 32
  %147 = getelementptr inbounds nuw i8, ptr %145, i64 64
  %148 = getelementptr inbounds nuw i8, ptr %145, i64 96
  store <16 x bfloat> %wide.load23.12, ptr %145, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load24.12, ptr %146, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load25.12, ptr %147, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load26.12, ptr %148, align 2, !alias.scope !9, !noalias !6
  %149 = add nuw nsw i64 %20, 832
  %150 = getelementptr inbounds nuw [9437184 x bfloat], ptr %4, i64 0, i64 %149
  %151 = getelementptr inbounds nuw i8, ptr %150, i64 32
  %152 = getelementptr inbounds nuw i8, ptr %150, i64 64
  %153 = getelementptr inbounds nuw i8, ptr %150, i64 96
  %wide.load23.13 = load <16 x bfloat>, ptr %150, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load24.13 = load <16 x bfloat>, ptr %151, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load25.13 = load <16 x bfloat>, ptr %152, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load26.13 = load <16 x bfloat>, ptr %153, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %154 = add nuw nsw i64 %18, 832
  %155 = getelementptr inbounds nuw [2359296 x bfloat], ptr %6, i64 0, i64 %154
  %156 = getelementptr inbounds nuw i8, ptr %155, i64 32
  %157 = getelementptr inbounds nuw i8, ptr %155, i64 64
  %158 = getelementptr inbounds nuw i8, ptr %155, i64 96
  store <16 x bfloat> %wide.load23.13, ptr %155, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load24.13, ptr %156, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load25.13, ptr %157, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load26.13, ptr %158, align 2, !alias.scope !9, !noalias !6
  %159 = add nuw nsw i64 %20, 896
  %160 = getelementptr inbounds nuw [9437184 x bfloat], ptr %4, i64 0, i64 %159
  %161 = getelementptr inbounds nuw i8, ptr %160, i64 32
  %162 = getelementptr inbounds nuw i8, ptr %160, i64 64
  %163 = getelementptr inbounds nuw i8, ptr %160, i64 96
  %wide.load23.14 = load <16 x bfloat>, ptr %160, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load24.14 = load <16 x bfloat>, ptr %161, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load25.14 = load <16 x bfloat>, ptr %162, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load26.14 = load <16 x bfloat>, ptr %163, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %164 = add nuw nsw i64 %18, 896
  %165 = getelementptr inbounds nuw [2359296 x bfloat], ptr %6, i64 0, i64 %164
  %166 = getelementptr inbounds nuw i8, ptr %165, i64 32
  %167 = getelementptr inbounds nuw i8, ptr %165, i64 64
  %168 = getelementptr inbounds nuw i8, ptr %165, i64 96
  store <16 x bfloat> %wide.load23.14, ptr %165, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load24.14, ptr %166, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load25.14, ptr %167, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load26.14, ptr %168, align 2, !alias.scope !9, !noalias !6
  %169 = add nuw nsw i64 %20, 960
  %170 = getelementptr inbounds nuw [9437184 x bfloat], ptr %4, i64 0, i64 %169
  %171 = getelementptr inbounds nuw i8, ptr %170, i64 32
  %172 = getelementptr inbounds nuw i8, ptr %170, i64 64
  %173 = getelementptr inbounds nuw i8, ptr %170, i64 96
  %wide.load23.15 = load <16 x bfloat>, ptr %170, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load24.15 = load <16 x bfloat>, ptr %171, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load25.15 = load <16 x bfloat>, ptr %172, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load26.15 = load <16 x bfloat>, ptr %173, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %174 = add nuw nsw i64 %18, 960
  %175 = getelementptr inbounds nuw [2359296 x bfloat], ptr %6, i64 0, i64 %174
  %176 = getelementptr inbounds nuw i8, ptr %175, i64 32
  %177 = getelementptr inbounds nuw i8, ptr %175, i64 64
  %178 = getelementptr inbounds nuw i8, ptr %175, i64 96
  store <16 x bfloat> %wide.load23.15, ptr %175, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load24.15, ptr %176, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load25.15, ptr %177, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load26.15, ptr %178, align 2, !alias.scope !9, !noalias !6
  %179 = add nuw nsw i64 %20, 1024
  %180 = getelementptr inbounds nuw [9437184 x bfloat], ptr %4, i64 0, i64 %179
  %181 = getelementptr inbounds nuw i8, ptr %180, i64 32
  %182 = getelementptr inbounds nuw i8, ptr %180, i64 64
  %183 = getelementptr inbounds nuw i8, ptr %180, i64 96
  %wide.load23.16 = load <16 x bfloat>, ptr %180, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load24.16 = load <16 x bfloat>, ptr %181, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load25.16 = load <16 x bfloat>, ptr %182, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load26.16 = load <16 x bfloat>, ptr %183, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %184 = add nuw nsw i64 %18, 1024
  %185 = getelementptr inbounds nuw [2359296 x bfloat], ptr %6, i64 0, i64 %184
  %186 = getelementptr inbounds nuw i8, ptr %185, i64 32
  %187 = getelementptr inbounds nuw i8, ptr %185, i64 64
  %188 = getelementptr inbounds nuw i8, ptr %185, i64 96
  store <16 x bfloat> %wide.load23.16, ptr %185, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load24.16, ptr %186, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load25.16, ptr %187, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load26.16, ptr %188, align 2, !alias.scope !9, !noalias !6
  %189 = add nuw nsw i64 %20, 1088
  %190 = getelementptr inbounds nuw [9437184 x bfloat], ptr %4, i64 0, i64 %189
  %191 = getelementptr inbounds nuw i8, ptr %190, i64 32
  %192 = getelementptr inbounds nuw i8, ptr %190, i64 64
  %193 = getelementptr inbounds nuw i8, ptr %190, i64 96
  %wide.load23.17 = load <16 x bfloat>, ptr %190, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load24.17 = load <16 x bfloat>, ptr %191, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load25.17 = load <16 x bfloat>, ptr %192, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load26.17 = load <16 x bfloat>, ptr %193, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %194 = add nuw nsw i64 %18, 1088
  %195 = getelementptr inbounds nuw [2359296 x bfloat], ptr %6, i64 0, i64 %194
  %196 = getelementptr inbounds nuw i8, ptr %195, i64 32
  %197 = getelementptr inbounds nuw i8, ptr %195, i64 64
  %198 = getelementptr inbounds nuw i8, ptr %195, i64 96
  store <16 x bfloat> %wide.load23.17, ptr %195, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load24.17, ptr %196, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load25.17, ptr %197, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load26.17, ptr %198, align 2, !alias.scope !9, !noalias !6
  %199 = add nuw nsw i64 %16, 1
  %exitcond11.not = icmp eq i64 %199, 147
  br i1 %exitcond11.not, label %slice_convert_fusion.3_wrapped.exit, label %vector.ph20, !llvm.loop !11

200:                                              ; preds = %1
  %201 = icmp eq i64 %9, 13
  br i1 %201, label %.preheader, label %slice_convert_fusion.3_wrapped.exit

.preheader:                                       ; preds = %200, %.preheader
  %202 = phi i64 [ %385, %.preheader ], [ 0, %200 ]
  %203 = mul nuw nsw i64 %202, 1152
  %204 = add nuw nsw i64 %203, 2201472
  %205 = mul nuw nsw i64 %202, 4608
  %206 = add nuw nsw i64 %205, 8805888
  %207 = getelementptr inbounds nuw [9437184 x bfloat], ptr %4, i64 0, i64 %206
  %208 = getelementptr inbounds nuw i8, ptr %207, i64 32
  %209 = getelementptr inbounds nuw i8, ptr %207, i64 64
  %210 = getelementptr inbounds nuw i8, ptr %207, i64 96
  %wide.load = load <16 x bfloat>, ptr %207, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load16 = load <16 x bfloat>, ptr %208, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load17 = load <16 x bfloat>, ptr %209, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load18 = load <16 x bfloat>, ptr %210, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %211 = getelementptr inbounds nuw [2359296 x bfloat], ptr %6, i64 0, i64 %204
  %212 = getelementptr inbounds nuw i8, ptr %211, i64 32
  %213 = getelementptr inbounds nuw i8, ptr %211, i64 64
  %214 = getelementptr inbounds nuw i8, ptr %211, i64 96
  store <16 x bfloat> %wide.load, ptr %211, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load16, ptr %212, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load17, ptr %213, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load18, ptr %214, align 2, !alias.scope !9, !noalias !6
  %215 = add nuw nsw i64 %205, 8805952
  %216 = getelementptr inbounds nuw [9437184 x bfloat], ptr %4, i64 0, i64 %215
  %217 = getelementptr inbounds nuw i8, ptr %216, i64 32
  %218 = getelementptr inbounds nuw i8, ptr %216, i64 64
  %219 = getelementptr inbounds nuw i8, ptr %216, i64 96
  %wide.load.1 = load <16 x bfloat>, ptr %216, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load16.1 = load <16 x bfloat>, ptr %217, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load17.1 = load <16 x bfloat>, ptr %218, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load18.1 = load <16 x bfloat>, ptr %219, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %220 = add nuw nsw i64 %203, 2201536
  %221 = getelementptr inbounds nuw [2359296 x bfloat], ptr %6, i64 0, i64 %220
  %222 = getelementptr inbounds nuw i8, ptr %221, i64 32
  %223 = getelementptr inbounds nuw i8, ptr %221, i64 64
  %224 = getelementptr inbounds nuw i8, ptr %221, i64 96
  store <16 x bfloat> %wide.load.1, ptr %221, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load16.1, ptr %222, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load17.1, ptr %223, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load18.1, ptr %224, align 2, !alias.scope !9, !noalias !6
  %225 = add nuw nsw i64 %205, 8806016
  %226 = getelementptr inbounds nuw [9437184 x bfloat], ptr %4, i64 0, i64 %225
  %227 = getelementptr inbounds nuw i8, ptr %226, i64 32
  %228 = getelementptr inbounds nuw i8, ptr %226, i64 64
  %229 = getelementptr inbounds nuw i8, ptr %226, i64 96
  %wide.load.2 = load <16 x bfloat>, ptr %226, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load16.2 = load <16 x bfloat>, ptr %227, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load17.2 = load <16 x bfloat>, ptr %228, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load18.2 = load <16 x bfloat>, ptr %229, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %230 = add nuw nsw i64 %203, 2201600
  %231 = getelementptr inbounds nuw [2359296 x bfloat], ptr %6, i64 0, i64 %230
  %232 = getelementptr inbounds nuw i8, ptr %231, i64 32
  %233 = getelementptr inbounds nuw i8, ptr %231, i64 64
  %234 = getelementptr inbounds nuw i8, ptr %231, i64 96
  store <16 x bfloat> %wide.load.2, ptr %231, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load16.2, ptr %232, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load17.2, ptr %233, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load18.2, ptr %234, align 2, !alias.scope !9, !noalias !6
  %235 = add nuw nsw i64 %205, 8806080
  %236 = getelementptr inbounds nuw [9437184 x bfloat], ptr %4, i64 0, i64 %235
  %237 = getelementptr inbounds nuw i8, ptr %236, i64 32
  %238 = getelementptr inbounds nuw i8, ptr %236, i64 64
  %239 = getelementptr inbounds nuw i8, ptr %236, i64 96
  %wide.load.3 = load <16 x bfloat>, ptr %236, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load16.3 = load <16 x bfloat>, ptr %237, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load17.3 = load <16 x bfloat>, ptr %238, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load18.3 = load <16 x bfloat>, ptr %239, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %240 = add nuw nsw i64 %203, 2201664
  %241 = getelementptr inbounds nuw [2359296 x bfloat], ptr %6, i64 0, i64 %240
  %242 = getelementptr inbounds nuw i8, ptr %241, i64 32
  %243 = getelementptr inbounds nuw i8, ptr %241, i64 64
  %244 = getelementptr inbounds nuw i8, ptr %241, i64 96
  store <16 x bfloat> %wide.load.3, ptr %241, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load16.3, ptr %242, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load17.3, ptr %243, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load18.3, ptr %244, align 2, !alias.scope !9, !noalias !6
  %245 = add nuw nsw i64 %205, 8806144
  %246 = getelementptr inbounds nuw [9437184 x bfloat], ptr %4, i64 0, i64 %245
  %247 = getelementptr inbounds nuw i8, ptr %246, i64 32
  %248 = getelementptr inbounds nuw i8, ptr %246, i64 64
  %249 = getelementptr inbounds nuw i8, ptr %246, i64 96
  %wide.load.4 = load <16 x bfloat>, ptr %246, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load16.4 = load <16 x bfloat>, ptr %247, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load17.4 = load <16 x bfloat>, ptr %248, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load18.4 = load <16 x bfloat>, ptr %249, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %250 = add nuw nsw i64 %203, 2201728
  %251 = getelementptr inbounds nuw [2359296 x bfloat], ptr %6, i64 0, i64 %250
  %252 = getelementptr inbounds nuw i8, ptr %251, i64 32
  %253 = getelementptr inbounds nuw i8, ptr %251, i64 64
  %254 = getelementptr inbounds nuw i8, ptr %251, i64 96
  store <16 x bfloat> %wide.load.4, ptr %251, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load16.4, ptr %252, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load17.4, ptr %253, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load18.4, ptr %254, align 2, !alias.scope !9, !noalias !6
  %255 = add nuw nsw i64 %205, 8806208
  %256 = getelementptr inbounds nuw [9437184 x bfloat], ptr %4, i64 0, i64 %255
  %257 = getelementptr inbounds nuw i8, ptr %256, i64 32
  %258 = getelementptr inbounds nuw i8, ptr %256, i64 64
  %259 = getelementptr inbounds nuw i8, ptr %256, i64 96
  %wide.load.5 = load <16 x bfloat>, ptr %256, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load16.5 = load <16 x bfloat>, ptr %257, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load17.5 = load <16 x bfloat>, ptr %258, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load18.5 = load <16 x bfloat>, ptr %259, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %260 = add nuw nsw i64 %203, 2201792
  %261 = getelementptr inbounds nuw [2359296 x bfloat], ptr %6, i64 0, i64 %260
  %262 = getelementptr inbounds nuw i8, ptr %261, i64 32
  %263 = getelementptr inbounds nuw i8, ptr %261, i64 64
  %264 = getelementptr inbounds nuw i8, ptr %261, i64 96
  store <16 x bfloat> %wide.load.5, ptr %261, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load16.5, ptr %262, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load17.5, ptr %263, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load18.5, ptr %264, align 2, !alias.scope !9, !noalias !6
  %265 = add nuw nsw i64 %205, 8806272
  %266 = getelementptr inbounds nuw [9437184 x bfloat], ptr %4, i64 0, i64 %265
  %267 = getelementptr inbounds nuw i8, ptr %266, i64 32
  %268 = getelementptr inbounds nuw i8, ptr %266, i64 64
  %269 = getelementptr inbounds nuw i8, ptr %266, i64 96
  %wide.load.6 = load <16 x bfloat>, ptr %266, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load16.6 = load <16 x bfloat>, ptr %267, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load17.6 = load <16 x bfloat>, ptr %268, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load18.6 = load <16 x bfloat>, ptr %269, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %270 = add nuw nsw i64 %203, 2201856
  %271 = getelementptr inbounds nuw [2359296 x bfloat], ptr %6, i64 0, i64 %270
  %272 = getelementptr inbounds nuw i8, ptr %271, i64 32
  %273 = getelementptr inbounds nuw i8, ptr %271, i64 64
  %274 = getelementptr inbounds nuw i8, ptr %271, i64 96
  store <16 x bfloat> %wide.load.6, ptr %271, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load16.6, ptr %272, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load17.6, ptr %273, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load18.6, ptr %274, align 2, !alias.scope !9, !noalias !6
  %275 = add nuw nsw i64 %205, 8806336
  %276 = getelementptr inbounds nuw [9437184 x bfloat], ptr %4, i64 0, i64 %275
  %277 = getelementptr inbounds nuw i8, ptr %276, i64 32
  %278 = getelementptr inbounds nuw i8, ptr %276, i64 64
  %279 = getelementptr inbounds nuw i8, ptr %276, i64 96
  %wide.load.7 = load <16 x bfloat>, ptr %276, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load16.7 = load <16 x bfloat>, ptr %277, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load17.7 = load <16 x bfloat>, ptr %278, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load18.7 = load <16 x bfloat>, ptr %279, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %280 = add nuw nsw i64 %203, 2201920
  %281 = getelementptr inbounds nuw [2359296 x bfloat], ptr %6, i64 0, i64 %280
  %282 = getelementptr inbounds nuw i8, ptr %281, i64 32
  %283 = getelementptr inbounds nuw i8, ptr %281, i64 64
  %284 = getelementptr inbounds nuw i8, ptr %281, i64 96
  store <16 x bfloat> %wide.load.7, ptr %281, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load16.7, ptr %282, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load17.7, ptr %283, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load18.7, ptr %284, align 2, !alias.scope !9, !noalias !6
  %285 = add nuw nsw i64 %205, 8806400
  %286 = getelementptr inbounds nuw [9437184 x bfloat], ptr %4, i64 0, i64 %285
  %287 = getelementptr inbounds nuw i8, ptr %286, i64 32
  %288 = getelementptr inbounds nuw i8, ptr %286, i64 64
  %289 = getelementptr inbounds nuw i8, ptr %286, i64 96
  %wide.load.8 = load <16 x bfloat>, ptr %286, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load16.8 = load <16 x bfloat>, ptr %287, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load17.8 = load <16 x bfloat>, ptr %288, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load18.8 = load <16 x bfloat>, ptr %289, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %290 = add nuw nsw i64 %203, 2201984
  %291 = getelementptr inbounds nuw [2359296 x bfloat], ptr %6, i64 0, i64 %290
  %292 = getelementptr inbounds nuw i8, ptr %291, i64 32
  %293 = getelementptr inbounds nuw i8, ptr %291, i64 64
  %294 = getelementptr inbounds nuw i8, ptr %291, i64 96
  store <16 x bfloat> %wide.load.8, ptr %291, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load16.8, ptr %292, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load17.8, ptr %293, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load18.8, ptr %294, align 2, !alias.scope !9, !noalias !6
  %295 = add nuw nsw i64 %205, 8806464
  %296 = getelementptr inbounds nuw [9437184 x bfloat], ptr %4, i64 0, i64 %295
  %297 = getelementptr inbounds nuw i8, ptr %296, i64 32
  %298 = getelementptr inbounds nuw i8, ptr %296, i64 64
  %299 = getelementptr inbounds nuw i8, ptr %296, i64 96
  %wide.load.9 = load <16 x bfloat>, ptr %296, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load16.9 = load <16 x bfloat>, ptr %297, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load17.9 = load <16 x bfloat>, ptr %298, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load18.9 = load <16 x bfloat>, ptr %299, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %300 = add nuw nsw i64 %203, 2202048
  %301 = getelementptr inbounds nuw [2359296 x bfloat], ptr %6, i64 0, i64 %300
  %302 = getelementptr inbounds nuw i8, ptr %301, i64 32
  %303 = getelementptr inbounds nuw i8, ptr %301, i64 64
  %304 = getelementptr inbounds nuw i8, ptr %301, i64 96
  store <16 x bfloat> %wide.load.9, ptr %301, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load16.9, ptr %302, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load17.9, ptr %303, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load18.9, ptr %304, align 2, !alias.scope !9, !noalias !6
  %305 = add nuw nsw i64 %205, 8806528
  %306 = getelementptr inbounds nuw [9437184 x bfloat], ptr %4, i64 0, i64 %305
  %307 = getelementptr inbounds nuw i8, ptr %306, i64 32
  %308 = getelementptr inbounds nuw i8, ptr %306, i64 64
  %309 = getelementptr inbounds nuw i8, ptr %306, i64 96
  %wide.load.10 = load <16 x bfloat>, ptr %306, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load16.10 = load <16 x bfloat>, ptr %307, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load17.10 = load <16 x bfloat>, ptr %308, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load18.10 = load <16 x bfloat>, ptr %309, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %310 = add nuw nsw i64 %203, 2202112
  %311 = getelementptr inbounds nuw [2359296 x bfloat], ptr %6, i64 0, i64 %310
  %312 = getelementptr inbounds nuw i8, ptr %311, i64 32
  %313 = getelementptr inbounds nuw i8, ptr %311, i64 64
  %314 = getelementptr inbounds nuw i8, ptr %311, i64 96
  store <16 x bfloat> %wide.load.10, ptr %311, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load16.10, ptr %312, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load17.10, ptr %313, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load18.10, ptr %314, align 2, !alias.scope !9, !noalias !6
  %315 = add nuw nsw i64 %205, 8806592
  %316 = getelementptr inbounds nuw [9437184 x bfloat], ptr %4, i64 0, i64 %315
  %317 = getelementptr inbounds nuw i8, ptr %316, i64 32
  %318 = getelementptr inbounds nuw i8, ptr %316, i64 64
  %319 = getelementptr inbounds nuw i8, ptr %316, i64 96
  %wide.load.11 = load <16 x bfloat>, ptr %316, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load16.11 = load <16 x bfloat>, ptr %317, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load17.11 = load <16 x bfloat>, ptr %318, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load18.11 = load <16 x bfloat>, ptr %319, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %320 = add nuw nsw i64 %203, 2202176
  %321 = getelementptr inbounds nuw [2359296 x bfloat], ptr %6, i64 0, i64 %320
  %322 = getelementptr inbounds nuw i8, ptr %321, i64 32
  %323 = getelementptr inbounds nuw i8, ptr %321, i64 64
  %324 = getelementptr inbounds nuw i8, ptr %321, i64 96
  store <16 x bfloat> %wide.load.11, ptr %321, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load16.11, ptr %322, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load17.11, ptr %323, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load18.11, ptr %324, align 2, !alias.scope !9, !noalias !6
  %325 = add nuw nsw i64 %205, 8806656
  %326 = getelementptr inbounds nuw [9437184 x bfloat], ptr %4, i64 0, i64 %325
  %327 = getelementptr inbounds nuw i8, ptr %326, i64 32
  %328 = getelementptr inbounds nuw i8, ptr %326, i64 64
  %329 = getelementptr inbounds nuw i8, ptr %326, i64 96
  %wide.load.12 = load <16 x bfloat>, ptr %326, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load16.12 = load <16 x bfloat>, ptr %327, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load17.12 = load <16 x bfloat>, ptr %328, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load18.12 = load <16 x bfloat>, ptr %329, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %330 = add nuw nsw i64 %203, 2202240
  %331 = getelementptr inbounds nuw [2359296 x bfloat], ptr %6, i64 0, i64 %330
  %332 = getelementptr inbounds nuw i8, ptr %331, i64 32
  %333 = getelementptr inbounds nuw i8, ptr %331, i64 64
  %334 = getelementptr inbounds nuw i8, ptr %331, i64 96
  store <16 x bfloat> %wide.load.12, ptr %331, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load16.12, ptr %332, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load17.12, ptr %333, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load18.12, ptr %334, align 2, !alias.scope !9, !noalias !6
  %335 = add nuw nsw i64 %205, 8806720
  %336 = getelementptr inbounds nuw [9437184 x bfloat], ptr %4, i64 0, i64 %335
  %337 = getelementptr inbounds nuw i8, ptr %336, i64 32
  %338 = getelementptr inbounds nuw i8, ptr %336, i64 64
  %339 = getelementptr inbounds nuw i8, ptr %336, i64 96
  %wide.load.13 = load <16 x bfloat>, ptr %336, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load16.13 = load <16 x bfloat>, ptr %337, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load17.13 = load <16 x bfloat>, ptr %338, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load18.13 = load <16 x bfloat>, ptr %339, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %340 = add nuw nsw i64 %203, 2202304
  %341 = getelementptr inbounds nuw [2359296 x bfloat], ptr %6, i64 0, i64 %340
  %342 = getelementptr inbounds nuw i8, ptr %341, i64 32
  %343 = getelementptr inbounds nuw i8, ptr %341, i64 64
  %344 = getelementptr inbounds nuw i8, ptr %341, i64 96
  store <16 x bfloat> %wide.load.13, ptr %341, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load16.13, ptr %342, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load17.13, ptr %343, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load18.13, ptr %344, align 2, !alias.scope !9, !noalias !6
  %345 = add nuw nsw i64 %205, 8806784
  %346 = getelementptr inbounds nuw [9437184 x bfloat], ptr %4, i64 0, i64 %345
  %347 = getelementptr inbounds nuw i8, ptr %346, i64 32
  %348 = getelementptr inbounds nuw i8, ptr %346, i64 64
  %349 = getelementptr inbounds nuw i8, ptr %346, i64 96
  %wide.load.14 = load <16 x bfloat>, ptr %346, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load16.14 = load <16 x bfloat>, ptr %347, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load17.14 = load <16 x bfloat>, ptr %348, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load18.14 = load <16 x bfloat>, ptr %349, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %350 = add nuw nsw i64 %203, 2202368
  %351 = getelementptr inbounds nuw [2359296 x bfloat], ptr %6, i64 0, i64 %350
  %352 = getelementptr inbounds nuw i8, ptr %351, i64 32
  %353 = getelementptr inbounds nuw i8, ptr %351, i64 64
  %354 = getelementptr inbounds nuw i8, ptr %351, i64 96
  store <16 x bfloat> %wide.load.14, ptr %351, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load16.14, ptr %352, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load17.14, ptr %353, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load18.14, ptr %354, align 2, !alias.scope !9, !noalias !6
  %355 = add nuw nsw i64 %205, 8806848
  %356 = getelementptr inbounds nuw [9437184 x bfloat], ptr %4, i64 0, i64 %355
  %357 = getelementptr inbounds nuw i8, ptr %356, i64 32
  %358 = getelementptr inbounds nuw i8, ptr %356, i64 64
  %359 = getelementptr inbounds nuw i8, ptr %356, i64 96
  %wide.load.15 = load <16 x bfloat>, ptr %356, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load16.15 = load <16 x bfloat>, ptr %357, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load17.15 = load <16 x bfloat>, ptr %358, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load18.15 = load <16 x bfloat>, ptr %359, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %360 = add nuw nsw i64 %203, 2202432
  %361 = getelementptr inbounds nuw [2359296 x bfloat], ptr %6, i64 0, i64 %360
  %362 = getelementptr inbounds nuw i8, ptr %361, i64 32
  %363 = getelementptr inbounds nuw i8, ptr %361, i64 64
  %364 = getelementptr inbounds nuw i8, ptr %361, i64 96
  store <16 x bfloat> %wide.load.15, ptr %361, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load16.15, ptr %362, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load17.15, ptr %363, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load18.15, ptr %364, align 2, !alias.scope !9, !noalias !6
  %365 = add nuw nsw i64 %205, 8806912
  %366 = getelementptr inbounds nuw [9437184 x bfloat], ptr %4, i64 0, i64 %365
  %367 = getelementptr inbounds nuw i8, ptr %366, i64 32
  %368 = getelementptr inbounds nuw i8, ptr %366, i64 64
  %369 = getelementptr inbounds nuw i8, ptr %366, i64 96
  %wide.load.16 = load <16 x bfloat>, ptr %366, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load16.16 = load <16 x bfloat>, ptr %367, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load17.16 = load <16 x bfloat>, ptr %368, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load18.16 = load <16 x bfloat>, ptr %369, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %370 = add nuw nsw i64 %203, 2202496
  %371 = getelementptr inbounds nuw [2359296 x bfloat], ptr %6, i64 0, i64 %370
  %372 = getelementptr inbounds nuw i8, ptr %371, i64 32
  %373 = getelementptr inbounds nuw i8, ptr %371, i64 64
  %374 = getelementptr inbounds nuw i8, ptr %371, i64 96
  store <16 x bfloat> %wide.load.16, ptr %371, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load16.16, ptr %372, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load17.16, ptr %373, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load18.16, ptr %374, align 2, !alias.scope !9, !noalias !6
  %375 = add nuw nsw i64 %205, 8806976
  %376 = getelementptr inbounds nuw [9437184 x bfloat], ptr %4, i64 0, i64 %375
  %377 = getelementptr inbounds nuw i8, ptr %376, i64 32
  %378 = getelementptr inbounds nuw i8, ptr %376, i64 64
  %379 = getelementptr inbounds nuw i8, ptr %376, i64 96
  %wide.load.17 = load <16 x bfloat>, ptr %376, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load16.17 = load <16 x bfloat>, ptr %377, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load17.17 = load <16 x bfloat>, ptr %378, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load18.17 = load <16 x bfloat>, ptr %379, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %380 = add nuw nsw i64 %203, 2202560
  %381 = getelementptr inbounds nuw [2359296 x bfloat], ptr %6, i64 0, i64 %380
  %382 = getelementptr inbounds nuw i8, ptr %381, i64 32
  %383 = getelementptr inbounds nuw i8, ptr %381, i64 64
  %384 = getelementptr inbounds nuw i8, ptr %381, i64 96
  store <16 x bfloat> %wide.load.17, ptr %381, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load16.17, ptr %382, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load17.17, ptr %383, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load18.17, ptr %384, align 2, !alias.scope !9, !noalias !6
  %385 = add nuw nsw i64 %202, 1
  %exitcond8.not = icmp eq i64 %385, 137
  br i1 %exitcond8.not, label %slice_convert_fusion.3_wrapped.exit, label %.preheader, !llvm.loop !11

slice_convert_fusion.3_wrapped.exit:              ; preds = %.preheader, %vector.ph20, %11, %200
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
!4 = !{i64 18874368}
!5 = !{i64 4718592}
!6 = !{!7}
!7 = distinct !{!7, !8, !"slice_convert_fusion.3_wrapped: argument 0"}
!8 = distinct !{!8, !"slice_convert_fusion.3_wrapped"}
!9 = !{!10}
!10 = distinct !{!10, !8, !"slice_convert_fusion.3_wrapped: argument 1"}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.unroll.disable"}
