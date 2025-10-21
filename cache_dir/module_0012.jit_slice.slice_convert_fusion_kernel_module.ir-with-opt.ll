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
  br i1 %10, label %11, label %180

11:                                               ; preds = %1
  %12 = icmp sgt i64 %9, -1
  br i1 %12, label %13, label %slice_convert_fusion_wrapped.exit

13:                                               ; preds = %11
  %14 = mul nuw nsw i64 %9, 95616
  br label %vector.ph20

vector.ph20:                                      ; preds = %13, %vector.ph20
  %15 = phi i64 [ 0, %13 ], [ %179, %vector.ph20 ]
  %16 = mul nuw nsw i64 %15, 1152
  %17 = add nuw nsw i64 %16, %14
  %18 = getelementptr inbounds nuw [3981312 x bfloat], ptr %4, i64 0, i64 %17
  %19 = getelementptr inbounds nuw i8, ptr %18, i64 32
  %20 = getelementptr inbounds nuw i8, ptr %18, i64 64
  %21 = getelementptr inbounds nuw i8, ptr %18, i64 96
  %wide.load23 = load <16 x bfloat>, ptr %18, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load24 = load <16 x bfloat>, ptr %19, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load25 = load <16 x bfloat>, ptr %20, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load26 = load <16 x bfloat>, ptr %21, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %22 = getelementptr inbounds nuw [1327104 x bfloat], ptr %6, i64 0, i64 %17
  %23 = getelementptr inbounds nuw i8, ptr %22, i64 32
  %24 = getelementptr inbounds nuw i8, ptr %22, i64 64
  %25 = getelementptr inbounds nuw i8, ptr %22, i64 96
  store <16 x bfloat> %wide.load23, ptr %22, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load24, ptr %23, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load25, ptr %24, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load26, ptr %25, align 2, !alias.scope !9, !noalias !6
  %26 = or disjoint i64 %17, 64
  %27 = getelementptr inbounds nuw [3981312 x bfloat], ptr %4, i64 0, i64 %26
  %28 = getelementptr inbounds nuw i8, ptr %27, i64 32
  %29 = getelementptr inbounds nuw i8, ptr %27, i64 64
  %30 = getelementptr inbounds nuw i8, ptr %27, i64 96
  %wide.load23.1 = load <16 x bfloat>, ptr %27, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load24.1 = load <16 x bfloat>, ptr %28, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load25.1 = load <16 x bfloat>, ptr %29, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load26.1 = load <16 x bfloat>, ptr %30, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %31 = getelementptr inbounds nuw [1327104 x bfloat], ptr %6, i64 0, i64 %26
  %32 = getelementptr inbounds nuw i8, ptr %31, i64 32
  %33 = getelementptr inbounds nuw i8, ptr %31, i64 64
  %34 = getelementptr inbounds nuw i8, ptr %31, i64 96
  store <16 x bfloat> %wide.load23.1, ptr %31, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load24.1, ptr %32, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load25.1, ptr %33, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load26.1, ptr %34, align 2, !alias.scope !9, !noalias !6
  %35 = add nuw nsw i64 %17, 128
  %36 = getelementptr inbounds nuw [3981312 x bfloat], ptr %4, i64 0, i64 %35
  %37 = getelementptr inbounds nuw i8, ptr %36, i64 32
  %38 = getelementptr inbounds nuw i8, ptr %36, i64 64
  %39 = getelementptr inbounds nuw i8, ptr %36, i64 96
  %wide.load23.2 = load <16 x bfloat>, ptr %36, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load24.2 = load <16 x bfloat>, ptr %37, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load25.2 = load <16 x bfloat>, ptr %38, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load26.2 = load <16 x bfloat>, ptr %39, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %40 = getelementptr inbounds nuw [1327104 x bfloat], ptr %6, i64 0, i64 %35
  %41 = getelementptr inbounds nuw i8, ptr %40, i64 32
  %42 = getelementptr inbounds nuw i8, ptr %40, i64 64
  %43 = getelementptr inbounds nuw i8, ptr %40, i64 96
  store <16 x bfloat> %wide.load23.2, ptr %40, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load24.2, ptr %41, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load25.2, ptr %42, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load26.2, ptr %43, align 2, !alias.scope !9, !noalias !6
  %44 = add nuw nsw i64 %17, 192
  %45 = getelementptr inbounds nuw [3981312 x bfloat], ptr %4, i64 0, i64 %44
  %46 = getelementptr inbounds nuw i8, ptr %45, i64 32
  %47 = getelementptr inbounds nuw i8, ptr %45, i64 64
  %48 = getelementptr inbounds nuw i8, ptr %45, i64 96
  %wide.load23.3 = load <16 x bfloat>, ptr %45, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load24.3 = load <16 x bfloat>, ptr %46, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load25.3 = load <16 x bfloat>, ptr %47, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load26.3 = load <16 x bfloat>, ptr %48, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %49 = getelementptr inbounds nuw [1327104 x bfloat], ptr %6, i64 0, i64 %44
  %50 = getelementptr inbounds nuw i8, ptr %49, i64 32
  %51 = getelementptr inbounds nuw i8, ptr %49, i64 64
  %52 = getelementptr inbounds nuw i8, ptr %49, i64 96
  store <16 x bfloat> %wide.load23.3, ptr %49, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load24.3, ptr %50, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load25.3, ptr %51, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load26.3, ptr %52, align 2, !alias.scope !9, !noalias !6
  %53 = add nuw nsw i64 %17, 256
  %54 = getelementptr inbounds nuw [3981312 x bfloat], ptr %4, i64 0, i64 %53
  %55 = getelementptr inbounds nuw i8, ptr %54, i64 32
  %56 = getelementptr inbounds nuw i8, ptr %54, i64 64
  %57 = getelementptr inbounds nuw i8, ptr %54, i64 96
  %wide.load23.4 = load <16 x bfloat>, ptr %54, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load24.4 = load <16 x bfloat>, ptr %55, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load25.4 = load <16 x bfloat>, ptr %56, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load26.4 = load <16 x bfloat>, ptr %57, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %58 = getelementptr inbounds nuw [1327104 x bfloat], ptr %6, i64 0, i64 %53
  %59 = getelementptr inbounds nuw i8, ptr %58, i64 32
  %60 = getelementptr inbounds nuw i8, ptr %58, i64 64
  %61 = getelementptr inbounds nuw i8, ptr %58, i64 96
  store <16 x bfloat> %wide.load23.4, ptr %58, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load24.4, ptr %59, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load25.4, ptr %60, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load26.4, ptr %61, align 2, !alias.scope !9, !noalias !6
  %62 = add nuw nsw i64 %17, 320
  %63 = getelementptr inbounds nuw [3981312 x bfloat], ptr %4, i64 0, i64 %62
  %64 = getelementptr inbounds nuw i8, ptr %63, i64 32
  %65 = getelementptr inbounds nuw i8, ptr %63, i64 64
  %66 = getelementptr inbounds nuw i8, ptr %63, i64 96
  %wide.load23.5 = load <16 x bfloat>, ptr %63, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load24.5 = load <16 x bfloat>, ptr %64, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load25.5 = load <16 x bfloat>, ptr %65, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load26.5 = load <16 x bfloat>, ptr %66, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %67 = getelementptr inbounds nuw [1327104 x bfloat], ptr %6, i64 0, i64 %62
  %68 = getelementptr inbounds nuw i8, ptr %67, i64 32
  %69 = getelementptr inbounds nuw i8, ptr %67, i64 64
  %70 = getelementptr inbounds nuw i8, ptr %67, i64 96
  store <16 x bfloat> %wide.load23.5, ptr %67, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load24.5, ptr %68, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load25.5, ptr %69, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load26.5, ptr %70, align 2, !alias.scope !9, !noalias !6
  %71 = add nuw nsw i64 %17, 384
  %72 = getelementptr inbounds nuw [3981312 x bfloat], ptr %4, i64 0, i64 %71
  %73 = getelementptr inbounds nuw i8, ptr %72, i64 32
  %74 = getelementptr inbounds nuw i8, ptr %72, i64 64
  %75 = getelementptr inbounds nuw i8, ptr %72, i64 96
  %wide.load23.6 = load <16 x bfloat>, ptr %72, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load24.6 = load <16 x bfloat>, ptr %73, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load25.6 = load <16 x bfloat>, ptr %74, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load26.6 = load <16 x bfloat>, ptr %75, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %76 = getelementptr inbounds nuw [1327104 x bfloat], ptr %6, i64 0, i64 %71
  %77 = getelementptr inbounds nuw i8, ptr %76, i64 32
  %78 = getelementptr inbounds nuw i8, ptr %76, i64 64
  %79 = getelementptr inbounds nuw i8, ptr %76, i64 96
  store <16 x bfloat> %wide.load23.6, ptr %76, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load24.6, ptr %77, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load25.6, ptr %78, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load26.6, ptr %79, align 2, !alias.scope !9, !noalias !6
  %80 = add nuw nsw i64 %17, 448
  %81 = getelementptr inbounds nuw [3981312 x bfloat], ptr %4, i64 0, i64 %80
  %82 = getelementptr inbounds nuw i8, ptr %81, i64 32
  %83 = getelementptr inbounds nuw i8, ptr %81, i64 64
  %84 = getelementptr inbounds nuw i8, ptr %81, i64 96
  %wide.load23.7 = load <16 x bfloat>, ptr %81, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load24.7 = load <16 x bfloat>, ptr %82, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load25.7 = load <16 x bfloat>, ptr %83, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load26.7 = load <16 x bfloat>, ptr %84, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %85 = getelementptr inbounds nuw [1327104 x bfloat], ptr %6, i64 0, i64 %80
  %86 = getelementptr inbounds nuw i8, ptr %85, i64 32
  %87 = getelementptr inbounds nuw i8, ptr %85, i64 64
  %88 = getelementptr inbounds nuw i8, ptr %85, i64 96
  store <16 x bfloat> %wide.load23.7, ptr %85, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load24.7, ptr %86, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load25.7, ptr %87, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load26.7, ptr %88, align 2, !alias.scope !9, !noalias !6
  %89 = add nuw nsw i64 %17, 512
  %90 = getelementptr inbounds nuw [3981312 x bfloat], ptr %4, i64 0, i64 %89
  %91 = getelementptr inbounds nuw i8, ptr %90, i64 32
  %92 = getelementptr inbounds nuw i8, ptr %90, i64 64
  %93 = getelementptr inbounds nuw i8, ptr %90, i64 96
  %wide.load23.8 = load <16 x bfloat>, ptr %90, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load24.8 = load <16 x bfloat>, ptr %91, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load25.8 = load <16 x bfloat>, ptr %92, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load26.8 = load <16 x bfloat>, ptr %93, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %94 = getelementptr inbounds nuw [1327104 x bfloat], ptr %6, i64 0, i64 %89
  %95 = getelementptr inbounds nuw i8, ptr %94, i64 32
  %96 = getelementptr inbounds nuw i8, ptr %94, i64 64
  %97 = getelementptr inbounds nuw i8, ptr %94, i64 96
  store <16 x bfloat> %wide.load23.8, ptr %94, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load24.8, ptr %95, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load25.8, ptr %96, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load26.8, ptr %97, align 2, !alias.scope !9, !noalias !6
  %98 = add nuw nsw i64 %17, 576
  %99 = getelementptr inbounds nuw [3981312 x bfloat], ptr %4, i64 0, i64 %98
  %100 = getelementptr inbounds nuw i8, ptr %99, i64 32
  %101 = getelementptr inbounds nuw i8, ptr %99, i64 64
  %102 = getelementptr inbounds nuw i8, ptr %99, i64 96
  %wide.load23.9 = load <16 x bfloat>, ptr %99, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load24.9 = load <16 x bfloat>, ptr %100, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load25.9 = load <16 x bfloat>, ptr %101, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load26.9 = load <16 x bfloat>, ptr %102, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %103 = getelementptr inbounds nuw [1327104 x bfloat], ptr %6, i64 0, i64 %98
  %104 = getelementptr inbounds nuw i8, ptr %103, i64 32
  %105 = getelementptr inbounds nuw i8, ptr %103, i64 64
  %106 = getelementptr inbounds nuw i8, ptr %103, i64 96
  store <16 x bfloat> %wide.load23.9, ptr %103, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load24.9, ptr %104, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load25.9, ptr %105, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load26.9, ptr %106, align 2, !alias.scope !9, !noalias !6
  %107 = add nuw nsw i64 %17, 640
  %108 = getelementptr inbounds nuw [3981312 x bfloat], ptr %4, i64 0, i64 %107
  %109 = getelementptr inbounds nuw i8, ptr %108, i64 32
  %110 = getelementptr inbounds nuw i8, ptr %108, i64 64
  %111 = getelementptr inbounds nuw i8, ptr %108, i64 96
  %wide.load23.10 = load <16 x bfloat>, ptr %108, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load24.10 = load <16 x bfloat>, ptr %109, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load25.10 = load <16 x bfloat>, ptr %110, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load26.10 = load <16 x bfloat>, ptr %111, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %112 = getelementptr inbounds nuw [1327104 x bfloat], ptr %6, i64 0, i64 %107
  %113 = getelementptr inbounds nuw i8, ptr %112, i64 32
  %114 = getelementptr inbounds nuw i8, ptr %112, i64 64
  %115 = getelementptr inbounds nuw i8, ptr %112, i64 96
  store <16 x bfloat> %wide.load23.10, ptr %112, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load24.10, ptr %113, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load25.10, ptr %114, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load26.10, ptr %115, align 2, !alias.scope !9, !noalias !6
  %116 = add nuw nsw i64 %17, 704
  %117 = getelementptr inbounds nuw [3981312 x bfloat], ptr %4, i64 0, i64 %116
  %118 = getelementptr inbounds nuw i8, ptr %117, i64 32
  %119 = getelementptr inbounds nuw i8, ptr %117, i64 64
  %120 = getelementptr inbounds nuw i8, ptr %117, i64 96
  %wide.load23.11 = load <16 x bfloat>, ptr %117, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load24.11 = load <16 x bfloat>, ptr %118, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load25.11 = load <16 x bfloat>, ptr %119, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load26.11 = load <16 x bfloat>, ptr %120, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %121 = getelementptr inbounds nuw [1327104 x bfloat], ptr %6, i64 0, i64 %116
  %122 = getelementptr inbounds nuw i8, ptr %121, i64 32
  %123 = getelementptr inbounds nuw i8, ptr %121, i64 64
  %124 = getelementptr inbounds nuw i8, ptr %121, i64 96
  store <16 x bfloat> %wide.load23.11, ptr %121, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load24.11, ptr %122, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load25.11, ptr %123, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load26.11, ptr %124, align 2, !alias.scope !9, !noalias !6
  %125 = add nuw nsw i64 %17, 768
  %126 = getelementptr inbounds nuw [3981312 x bfloat], ptr %4, i64 0, i64 %125
  %127 = getelementptr inbounds nuw i8, ptr %126, i64 32
  %128 = getelementptr inbounds nuw i8, ptr %126, i64 64
  %129 = getelementptr inbounds nuw i8, ptr %126, i64 96
  %wide.load23.12 = load <16 x bfloat>, ptr %126, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load24.12 = load <16 x bfloat>, ptr %127, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load25.12 = load <16 x bfloat>, ptr %128, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load26.12 = load <16 x bfloat>, ptr %129, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %130 = getelementptr inbounds nuw [1327104 x bfloat], ptr %6, i64 0, i64 %125
  %131 = getelementptr inbounds nuw i8, ptr %130, i64 32
  %132 = getelementptr inbounds nuw i8, ptr %130, i64 64
  %133 = getelementptr inbounds nuw i8, ptr %130, i64 96
  store <16 x bfloat> %wide.load23.12, ptr %130, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load24.12, ptr %131, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load25.12, ptr %132, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load26.12, ptr %133, align 2, !alias.scope !9, !noalias !6
  %134 = add nuw nsw i64 %17, 832
  %135 = getelementptr inbounds nuw [3981312 x bfloat], ptr %4, i64 0, i64 %134
  %136 = getelementptr inbounds nuw i8, ptr %135, i64 32
  %137 = getelementptr inbounds nuw i8, ptr %135, i64 64
  %138 = getelementptr inbounds nuw i8, ptr %135, i64 96
  %wide.load23.13 = load <16 x bfloat>, ptr %135, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load24.13 = load <16 x bfloat>, ptr %136, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load25.13 = load <16 x bfloat>, ptr %137, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load26.13 = load <16 x bfloat>, ptr %138, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %139 = getelementptr inbounds nuw [1327104 x bfloat], ptr %6, i64 0, i64 %134
  %140 = getelementptr inbounds nuw i8, ptr %139, i64 32
  %141 = getelementptr inbounds nuw i8, ptr %139, i64 64
  %142 = getelementptr inbounds nuw i8, ptr %139, i64 96
  store <16 x bfloat> %wide.load23.13, ptr %139, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load24.13, ptr %140, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load25.13, ptr %141, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load26.13, ptr %142, align 2, !alias.scope !9, !noalias !6
  %143 = add nuw nsw i64 %17, 896
  %144 = getelementptr inbounds nuw [3981312 x bfloat], ptr %4, i64 0, i64 %143
  %145 = getelementptr inbounds nuw i8, ptr %144, i64 32
  %146 = getelementptr inbounds nuw i8, ptr %144, i64 64
  %147 = getelementptr inbounds nuw i8, ptr %144, i64 96
  %wide.load23.14 = load <16 x bfloat>, ptr %144, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load24.14 = load <16 x bfloat>, ptr %145, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load25.14 = load <16 x bfloat>, ptr %146, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load26.14 = load <16 x bfloat>, ptr %147, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %148 = getelementptr inbounds nuw [1327104 x bfloat], ptr %6, i64 0, i64 %143
  %149 = getelementptr inbounds nuw i8, ptr %148, i64 32
  %150 = getelementptr inbounds nuw i8, ptr %148, i64 64
  %151 = getelementptr inbounds nuw i8, ptr %148, i64 96
  store <16 x bfloat> %wide.load23.14, ptr %148, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load24.14, ptr %149, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load25.14, ptr %150, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load26.14, ptr %151, align 2, !alias.scope !9, !noalias !6
  %152 = add nuw nsw i64 %17, 960
  %153 = getelementptr inbounds nuw [3981312 x bfloat], ptr %4, i64 0, i64 %152
  %154 = getelementptr inbounds nuw i8, ptr %153, i64 32
  %155 = getelementptr inbounds nuw i8, ptr %153, i64 64
  %156 = getelementptr inbounds nuw i8, ptr %153, i64 96
  %wide.load23.15 = load <16 x bfloat>, ptr %153, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load24.15 = load <16 x bfloat>, ptr %154, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load25.15 = load <16 x bfloat>, ptr %155, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load26.15 = load <16 x bfloat>, ptr %156, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %157 = getelementptr inbounds nuw [1327104 x bfloat], ptr %6, i64 0, i64 %152
  %158 = getelementptr inbounds nuw i8, ptr %157, i64 32
  %159 = getelementptr inbounds nuw i8, ptr %157, i64 64
  %160 = getelementptr inbounds nuw i8, ptr %157, i64 96
  store <16 x bfloat> %wide.load23.15, ptr %157, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load24.15, ptr %158, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load25.15, ptr %159, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load26.15, ptr %160, align 2, !alias.scope !9, !noalias !6
  %161 = add nuw nsw i64 %17, 1024
  %162 = getelementptr inbounds nuw [3981312 x bfloat], ptr %4, i64 0, i64 %161
  %163 = getelementptr inbounds nuw i8, ptr %162, i64 32
  %164 = getelementptr inbounds nuw i8, ptr %162, i64 64
  %165 = getelementptr inbounds nuw i8, ptr %162, i64 96
  %wide.load23.16 = load <16 x bfloat>, ptr %162, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load24.16 = load <16 x bfloat>, ptr %163, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load25.16 = load <16 x bfloat>, ptr %164, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load26.16 = load <16 x bfloat>, ptr %165, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %166 = getelementptr inbounds nuw [1327104 x bfloat], ptr %6, i64 0, i64 %161
  %167 = getelementptr inbounds nuw i8, ptr %166, i64 32
  %168 = getelementptr inbounds nuw i8, ptr %166, i64 64
  %169 = getelementptr inbounds nuw i8, ptr %166, i64 96
  store <16 x bfloat> %wide.load23.16, ptr %166, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load24.16, ptr %167, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load25.16, ptr %168, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load26.16, ptr %169, align 2, !alias.scope !9, !noalias !6
  %170 = add nuw nsw i64 %17, 1088
  %171 = getelementptr inbounds nuw [3981312 x bfloat], ptr %4, i64 0, i64 %170
  %172 = getelementptr inbounds nuw i8, ptr %171, i64 32
  %173 = getelementptr inbounds nuw i8, ptr %171, i64 64
  %174 = getelementptr inbounds nuw i8, ptr %171, i64 96
  %wide.load23.17 = load <16 x bfloat>, ptr %171, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load24.17 = load <16 x bfloat>, ptr %172, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load25.17 = load <16 x bfloat>, ptr %173, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load26.17 = load <16 x bfloat>, ptr %174, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %175 = getelementptr inbounds nuw [1327104 x bfloat], ptr %6, i64 0, i64 %170
  %176 = getelementptr inbounds nuw i8, ptr %175, i64 32
  %177 = getelementptr inbounds nuw i8, ptr %175, i64 64
  %178 = getelementptr inbounds nuw i8, ptr %175, i64 96
  store <16 x bfloat> %wide.load23.17, ptr %175, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load24.17, ptr %176, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load25.17, ptr %177, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load26.17, ptr %178, align 2, !alias.scope !9, !noalias !6
  %179 = add nuw nsw i64 %15, 1
  %exitcond11.not = icmp eq i64 %179, 83
  br i1 %exitcond11.not, label %slice_convert_fusion_wrapped.exit, label %vector.ph20, !llvm.loop !11

180:                                              ; preds = %1
  %181 = icmp eq i64 %9, 13
  br i1 %181, label %.preheader, label %slice_convert_fusion_wrapped.exit

.preheader:                                       ; preds = %180, %.preheader
  %182 = phi i64 [ %346, %.preheader ], [ 0, %180 ]
  %183 = mul nuw nsw i64 %182, 1152
  %184 = add nuw nsw i64 %183, 1243008
  %185 = getelementptr inbounds nuw [3981312 x bfloat], ptr %4, i64 0, i64 %184
  %186 = getelementptr inbounds nuw i8, ptr %185, i64 32
  %187 = getelementptr inbounds nuw i8, ptr %185, i64 64
  %188 = getelementptr inbounds nuw i8, ptr %185, i64 96
  %wide.load = load <16 x bfloat>, ptr %185, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load16 = load <16 x bfloat>, ptr %186, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load17 = load <16 x bfloat>, ptr %187, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load18 = load <16 x bfloat>, ptr %188, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %189 = getelementptr inbounds nuw [1327104 x bfloat], ptr %6, i64 0, i64 %184
  %190 = getelementptr inbounds nuw i8, ptr %189, i64 32
  %191 = getelementptr inbounds nuw i8, ptr %189, i64 64
  %192 = getelementptr inbounds nuw i8, ptr %189, i64 96
  store <16 x bfloat> %wide.load, ptr %189, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load16, ptr %190, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load17, ptr %191, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load18, ptr %192, align 2, !alias.scope !9, !noalias !6
  %193 = add nuw nsw i64 %183, 1243072
  %194 = getelementptr inbounds nuw [3981312 x bfloat], ptr %4, i64 0, i64 %193
  %195 = getelementptr inbounds nuw i8, ptr %194, i64 32
  %196 = getelementptr inbounds nuw i8, ptr %194, i64 64
  %197 = getelementptr inbounds nuw i8, ptr %194, i64 96
  %wide.load.1 = load <16 x bfloat>, ptr %194, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load16.1 = load <16 x bfloat>, ptr %195, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load17.1 = load <16 x bfloat>, ptr %196, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load18.1 = load <16 x bfloat>, ptr %197, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %198 = getelementptr inbounds nuw [1327104 x bfloat], ptr %6, i64 0, i64 %193
  %199 = getelementptr inbounds nuw i8, ptr %198, i64 32
  %200 = getelementptr inbounds nuw i8, ptr %198, i64 64
  %201 = getelementptr inbounds nuw i8, ptr %198, i64 96
  store <16 x bfloat> %wide.load.1, ptr %198, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load16.1, ptr %199, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load17.1, ptr %200, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load18.1, ptr %201, align 2, !alias.scope !9, !noalias !6
  %202 = add nuw nsw i64 %183, 1243136
  %203 = getelementptr inbounds nuw [3981312 x bfloat], ptr %4, i64 0, i64 %202
  %204 = getelementptr inbounds nuw i8, ptr %203, i64 32
  %205 = getelementptr inbounds nuw i8, ptr %203, i64 64
  %206 = getelementptr inbounds nuw i8, ptr %203, i64 96
  %wide.load.2 = load <16 x bfloat>, ptr %203, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load16.2 = load <16 x bfloat>, ptr %204, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load17.2 = load <16 x bfloat>, ptr %205, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load18.2 = load <16 x bfloat>, ptr %206, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %207 = getelementptr inbounds nuw [1327104 x bfloat], ptr %6, i64 0, i64 %202
  %208 = getelementptr inbounds nuw i8, ptr %207, i64 32
  %209 = getelementptr inbounds nuw i8, ptr %207, i64 64
  %210 = getelementptr inbounds nuw i8, ptr %207, i64 96
  store <16 x bfloat> %wide.load.2, ptr %207, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load16.2, ptr %208, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load17.2, ptr %209, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load18.2, ptr %210, align 2, !alias.scope !9, !noalias !6
  %211 = add nuw nsw i64 %183, 1243200
  %212 = getelementptr inbounds nuw [3981312 x bfloat], ptr %4, i64 0, i64 %211
  %213 = getelementptr inbounds nuw i8, ptr %212, i64 32
  %214 = getelementptr inbounds nuw i8, ptr %212, i64 64
  %215 = getelementptr inbounds nuw i8, ptr %212, i64 96
  %wide.load.3 = load <16 x bfloat>, ptr %212, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load16.3 = load <16 x bfloat>, ptr %213, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load17.3 = load <16 x bfloat>, ptr %214, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load18.3 = load <16 x bfloat>, ptr %215, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %216 = getelementptr inbounds nuw [1327104 x bfloat], ptr %6, i64 0, i64 %211
  %217 = getelementptr inbounds nuw i8, ptr %216, i64 32
  %218 = getelementptr inbounds nuw i8, ptr %216, i64 64
  %219 = getelementptr inbounds nuw i8, ptr %216, i64 96
  store <16 x bfloat> %wide.load.3, ptr %216, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load16.3, ptr %217, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load17.3, ptr %218, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load18.3, ptr %219, align 2, !alias.scope !9, !noalias !6
  %220 = add nuw nsw i64 %183, 1243264
  %221 = getelementptr inbounds nuw [3981312 x bfloat], ptr %4, i64 0, i64 %220
  %222 = getelementptr inbounds nuw i8, ptr %221, i64 32
  %223 = getelementptr inbounds nuw i8, ptr %221, i64 64
  %224 = getelementptr inbounds nuw i8, ptr %221, i64 96
  %wide.load.4 = load <16 x bfloat>, ptr %221, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load16.4 = load <16 x bfloat>, ptr %222, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load17.4 = load <16 x bfloat>, ptr %223, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load18.4 = load <16 x bfloat>, ptr %224, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %225 = getelementptr inbounds nuw [1327104 x bfloat], ptr %6, i64 0, i64 %220
  %226 = getelementptr inbounds nuw i8, ptr %225, i64 32
  %227 = getelementptr inbounds nuw i8, ptr %225, i64 64
  %228 = getelementptr inbounds nuw i8, ptr %225, i64 96
  store <16 x bfloat> %wide.load.4, ptr %225, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load16.4, ptr %226, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load17.4, ptr %227, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load18.4, ptr %228, align 2, !alias.scope !9, !noalias !6
  %229 = add nuw nsw i64 %183, 1243328
  %230 = getelementptr inbounds nuw [3981312 x bfloat], ptr %4, i64 0, i64 %229
  %231 = getelementptr inbounds nuw i8, ptr %230, i64 32
  %232 = getelementptr inbounds nuw i8, ptr %230, i64 64
  %233 = getelementptr inbounds nuw i8, ptr %230, i64 96
  %wide.load.5 = load <16 x bfloat>, ptr %230, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load16.5 = load <16 x bfloat>, ptr %231, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load17.5 = load <16 x bfloat>, ptr %232, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load18.5 = load <16 x bfloat>, ptr %233, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %234 = getelementptr inbounds nuw [1327104 x bfloat], ptr %6, i64 0, i64 %229
  %235 = getelementptr inbounds nuw i8, ptr %234, i64 32
  %236 = getelementptr inbounds nuw i8, ptr %234, i64 64
  %237 = getelementptr inbounds nuw i8, ptr %234, i64 96
  store <16 x bfloat> %wide.load.5, ptr %234, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load16.5, ptr %235, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load17.5, ptr %236, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load18.5, ptr %237, align 2, !alias.scope !9, !noalias !6
  %238 = add nuw nsw i64 %183, 1243392
  %239 = getelementptr inbounds nuw [3981312 x bfloat], ptr %4, i64 0, i64 %238
  %240 = getelementptr inbounds nuw i8, ptr %239, i64 32
  %241 = getelementptr inbounds nuw i8, ptr %239, i64 64
  %242 = getelementptr inbounds nuw i8, ptr %239, i64 96
  %wide.load.6 = load <16 x bfloat>, ptr %239, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load16.6 = load <16 x bfloat>, ptr %240, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load17.6 = load <16 x bfloat>, ptr %241, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load18.6 = load <16 x bfloat>, ptr %242, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %243 = getelementptr inbounds nuw [1327104 x bfloat], ptr %6, i64 0, i64 %238
  %244 = getelementptr inbounds nuw i8, ptr %243, i64 32
  %245 = getelementptr inbounds nuw i8, ptr %243, i64 64
  %246 = getelementptr inbounds nuw i8, ptr %243, i64 96
  store <16 x bfloat> %wide.load.6, ptr %243, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load16.6, ptr %244, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load17.6, ptr %245, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load18.6, ptr %246, align 2, !alias.scope !9, !noalias !6
  %247 = add nuw nsw i64 %183, 1243456
  %248 = getelementptr inbounds nuw [3981312 x bfloat], ptr %4, i64 0, i64 %247
  %249 = getelementptr inbounds nuw i8, ptr %248, i64 32
  %250 = getelementptr inbounds nuw i8, ptr %248, i64 64
  %251 = getelementptr inbounds nuw i8, ptr %248, i64 96
  %wide.load.7 = load <16 x bfloat>, ptr %248, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load16.7 = load <16 x bfloat>, ptr %249, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load17.7 = load <16 x bfloat>, ptr %250, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load18.7 = load <16 x bfloat>, ptr %251, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %252 = getelementptr inbounds nuw [1327104 x bfloat], ptr %6, i64 0, i64 %247
  %253 = getelementptr inbounds nuw i8, ptr %252, i64 32
  %254 = getelementptr inbounds nuw i8, ptr %252, i64 64
  %255 = getelementptr inbounds nuw i8, ptr %252, i64 96
  store <16 x bfloat> %wide.load.7, ptr %252, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load16.7, ptr %253, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load17.7, ptr %254, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load18.7, ptr %255, align 2, !alias.scope !9, !noalias !6
  %256 = add nuw nsw i64 %183, 1243520
  %257 = getelementptr inbounds nuw [3981312 x bfloat], ptr %4, i64 0, i64 %256
  %258 = getelementptr inbounds nuw i8, ptr %257, i64 32
  %259 = getelementptr inbounds nuw i8, ptr %257, i64 64
  %260 = getelementptr inbounds nuw i8, ptr %257, i64 96
  %wide.load.8 = load <16 x bfloat>, ptr %257, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load16.8 = load <16 x bfloat>, ptr %258, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load17.8 = load <16 x bfloat>, ptr %259, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load18.8 = load <16 x bfloat>, ptr %260, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %261 = getelementptr inbounds nuw [1327104 x bfloat], ptr %6, i64 0, i64 %256
  %262 = getelementptr inbounds nuw i8, ptr %261, i64 32
  %263 = getelementptr inbounds nuw i8, ptr %261, i64 64
  %264 = getelementptr inbounds nuw i8, ptr %261, i64 96
  store <16 x bfloat> %wide.load.8, ptr %261, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load16.8, ptr %262, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load17.8, ptr %263, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load18.8, ptr %264, align 2, !alias.scope !9, !noalias !6
  %265 = add nuw nsw i64 %183, 1243584
  %266 = getelementptr inbounds nuw [3981312 x bfloat], ptr %4, i64 0, i64 %265
  %267 = getelementptr inbounds nuw i8, ptr %266, i64 32
  %268 = getelementptr inbounds nuw i8, ptr %266, i64 64
  %269 = getelementptr inbounds nuw i8, ptr %266, i64 96
  %wide.load.9 = load <16 x bfloat>, ptr %266, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load16.9 = load <16 x bfloat>, ptr %267, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load17.9 = load <16 x bfloat>, ptr %268, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load18.9 = load <16 x bfloat>, ptr %269, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %270 = getelementptr inbounds nuw [1327104 x bfloat], ptr %6, i64 0, i64 %265
  %271 = getelementptr inbounds nuw i8, ptr %270, i64 32
  %272 = getelementptr inbounds nuw i8, ptr %270, i64 64
  %273 = getelementptr inbounds nuw i8, ptr %270, i64 96
  store <16 x bfloat> %wide.load.9, ptr %270, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load16.9, ptr %271, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load17.9, ptr %272, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load18.9, ptr %273, align 2, !alias.scope !9, !noalias !6
  %274 = add nuw nsw i64 %183, 1243648
  %275 = getelementptr inbounds nuw [3981312 x bfloat], ptr %4, i64 0, i64 %274
  %276 = getelementptr inbounds nuw i8, ptr %275, i64 32
  %277 = getelementptr inbounds nuw i8, ptr %275, i64 64
  %278 = getelementptr inbounds nuw i8, ptr %275, i64 96
  %wide.load.10 = load <16 x bfloat>, ptr %275, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load16.10 = load <16 x bfloat>, ptr %276, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load17.10 = load <16 x bfloat>, ptr %277, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load18.10 = load <16 x bfloat>, ptr %278, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %279 = getelementptr inbounds nuw [1327104 x bfloat], ptr %6, i64 0, i64 %274
  %280 = getelementptr inbounds nuw i8, ptr %279, i64 32
  %281 = getelementptr inbounds nuw i8, ptr %279, i64 64
  %282 = getelementptr inbounds nuw i8, ptr %279, i64 96
  store <16 x bfloat> %wide.load.10, ptr %279, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load16.10, ptr %280, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load17.10, ptr %281, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load18.10, ptr %282, align 2, !alias.scope !9, !noalias !6
  %283 = add nuw nsw i64 %183, 1243712
  %284 = getelementptr inbounds nuw [3981312 x bfloat], ptr %4, i64 0, i64 %283
  %285 = getelementptr inbounds nuw i8, ptr %284, i64 32
  %286 = getelementptr inbounds nuw i8, ptr %284, i64 64
  %287 = getelementptr inbounds nuw i8, ptr %284, i64 96
  %wide.load.11 = load <16 x bfloat>, ptr %284, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load16.11 = load <16 x bfloat>, ptr %285, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load17.11 = load <16 x bfloat>, ptr %286, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load18.11 = load <16 x bfloat>, ptr %287, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %288 = getelementptr inbounds nuw [1327104 x bfloat], ptr %6, i64 0, i64 %283
  %289 = getelementptr inbounds nuw i8, ptr %288, i64 32
  %290 = getelementptr inbounds nuw i8, ptr %288, i64 64
  %291 = getelementptr inbounds nuw i8, ptr %288, i64 96
  store <16 x bfloat> %wide.load.11, ptr %288, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load16.11, ptr %289, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load17.11, ptr %290, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load18.11, ptr %291, align 2, !alias.scope !9, !noalias !6
  %292 = add nuw nsw i64 %183, 1243776
  %293 = getelementptr inbounds nuw [3981312 x bfloat], ptr %4, i64 0, i64 %292
  %294 = getelementptr inbounds nuw i8, ptr %293, i64 32
  %295 = getelementptr inbounds nuw i8, ptr %293, i64 64
  %296 = getelementptr inbounds nuw i8, ptr %293, i64 96
  %wide.load.12 = load <16 x bfloat>, ptr %293, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load16.12 = load <16 x bfloat>, ptr %294, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load17.12 = load <16 x bfloat>, ptr %295, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load18.12 = load <16 x bfloat>, ptr %296, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %297 = getelementptr inbounds nuw [1327104 x bfloat], ptr %6, i64 0, i64 %292
  %298 = getelementptr inbounds nuw i8, ptr %297, i64 32
  %299 = getelementptr inbounds nuw i8, ptr %297, i64 64
  %300 = getelementptr inbounds nuw i8, ptr %297, i64 96
  store <16 x bfloat> %wide.load.12, ptr %297, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load16.12, ptr %298, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load17.12, ptr %299, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load18.12, ptr %300, align 2, !alias.scope !9, !noalias !6
  %301 = add nuw nsw i64 %183, 1243840
  %302 = getelementptr inbounds nuw [3981312 x bfloat], ptr %4, i64 0, i64 %301
  %303 = getelementptr inbounds nuw i8, ptr %302, i64 32
  %304 = getelementptr inbounds nuw i8, ptr %302, i64 64
  %305 = getelementptr inbounds nuw i8, ptr %302, i64 96
  %wide.load.13 = load <16 x bfloat>, ptr %302, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load16.13 = load <16 x bfloat>, ptr %303, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load17.13 = load <16 x bfloat>, ptr %304, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load18.13 = load <16 x bfloat>, ptr %305, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %306 = getelementptr inbounds nuw [1327104 x bfloat], ptr %6, i64 0, i64 %301
  %307 = getelementptr inbounds nuw i8, ptr %306, i64 32
  %308 = getelementptr inbounds nuw i8, ptr %306, i64 64
  %309 = getelementptr inbounds nuw i8, ptr %306, i64 96
  store <16 x bfloat> %wide.load.13, ptr %306, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load16.13, ptr %307, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load17.13, ptr %308, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load18.13, ptr %309, align 2, !alias.scope !9, !noalias !6
  %310 = add nuw nsw i64 %183, 1243904
  %311 = getelementptr inbounds nuw [3981312 x bfloat], ptr %4, i64 0, i64 %310
  %312 = getelementptr inbounds nuw i8, ptr %311, i64 32
  %313 = getelementptr inbounds nuw i8, ptr %311, i64 64
  %314 = getelementptr inbounds nuw i8, ptr %311, i64 96
  %wide.load.14 = load <16 x bfloat>, ptr %311, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load16.14 = load <16 x bfloat>, ptr %312, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load17.14 = load <16 x bfloat>, ptr %313, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load18.14 = load <16 x bfloat>, ptr %314, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %315 = getelementptr inbounds nuw [1327104 x bfloat], ptr %6, i64 0, i64 %310
  %316 = getelementptr inbounds nuw i8, ptr %315, i64 32
  %317 = getelementptr inbounds nuw i8, ptr %315, i64 64
  %318 = getelementptr inbounds nuw i8, ptr %315, i64 96
  store <16 x bfloat> %wide.load.14, ptr %315, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load16.14, ptr %316, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load17.14, ptr %317, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load18.14, ptr %318, align 2, !alias.scope !9, !noalias !6
  %319 = add nuw nsw i64 %183, 1243968
  %320 = getelementptr inbounds nuw [3981312 x bfloat], ptr %4, i64 0, i64 %319
  %321 = getelementptr inbounds nuw i8, ptr %320, i64 32
  %322 = getelementptr inbounds nuw i8, ptr %320, i64 64
  %323 = getelementptr inbounds nuw i8, ptr %320, i64 96
  %wide.load.15 = load <16 x bfloat>, ptr %320, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load16.15 = load <16 x bfloat>, ptr %321, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load17.15 = load <16 x bfloat>, ptr %322, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load18.15 = load <16 x bfloat>, ptr %323, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %324 = getelementptr inbounds nuw [1327104 x bfloat], ptr %6, i64 0, i64 %319
  %325 = getelementptr inbounds nuw i8, ptr %324, i64 32
  %326 = getelementptr inbounds nuw i8, ptr %324, i64 64
  %327 = getelementptr inbounds nuw i8, ptr %324, i64 96
  store <16 x bfloat> %wide.load.15, ptr %324, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load16.15, ptr %325, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load17.15, ptr %326, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load18.15, ptr %327, align 2, !alias.scope !9, !noalias !6
  %328 = add nuw nsw i64 %183, 1244032
  %329 = getelementptr inbounds nuw [3981312 x bfloat], ptr %4, i64 0, i64 %328
  %330 = getelementptr inbounds nuw i8, ptr %329, i64 32
  %331 = getelementptr inbounds nuw i8, ptr %329, i64 64
  %332 = getelementptr inbounds nuw i8, ptr %329, i64 96
  %wide.load.16 = load <16 x bfloat>, ptr %329, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load16.16 = load <16 x bfloat>, ptr %330, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load17.16 = load <16 x bfloat>, ptr %331, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load18.16 = load <16 x bfloat>, ptr %332, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %333 = getelementptr inbounds nuw [1327104 x bfloat], ptr %6, i64 0, i64 %328
  %334 = getelementptr inbounds nuw i8, ptr %333, i64 32
  %335 = getelementptr inbounds nuw i8, ptr %333, i64 64
  %336 = getelementptr inbounds nuw i8, ptr %333, i64 96
  store <16 x bfloat> %wide.load.16, ptr %333, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load16.16, ptr %334, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load17.16, ptr %335, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load18.16, ptr %336, align 2, !alias.scope !9, !noalias !6
  %337 = add nuw nsw i64 %183, 1244096
  %338 = getelementptr inbounds nuw [3981312 x bfloat], ptr %4, i64 0, i64 %337
  %339 = getelementptr inbounds nuw i8, ptr %338, i64 32
  %340 = getelementptr inbounds nuw i8, ptr %338, i64 64
  %341 = getelementptr inbounds nuw i8, ptr %338, i64 96
  %wide.load.17 = load <16 x bfloat>, ptr %338, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load16.17 = load <16 x bfloat>, ptr %339, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load17.17 = load <16 x bfloat>, ptr %340, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load18.17 = load <16 x bfloat>, ptr %341, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %342 = getelementptr inbounds nuw [1327104 x bfloat], ptr %6, i64 0, i64 %337
  %343 = getelementptr inbounds nuw i8, ptr %342, i64 32
  %344 = getelementptr inbounds nuw i8, ptr %342, i64 64
  %345 = getelementptr inbounds nuw i8, ptr %342, i64 96
  store <16 x bfloat> %wide.load.17, ptr %342, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load16.17, ptr %343, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load17.17, ptr %344, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load18.17, ptr %345, align 2, !alias.scope !9, !noalias !6
  %346 = add nuw nsw i64 %182, 1
  %exitcond8.not = icmp eq i64 %346, 73
  br i1 %exitcond8.not, label %slice_convert_fusion_wrapped.exit, label %.preheader, !llvm.loop !11

slice_convert_fusion_wrapped.exit:                ; preds = %.preheader, %vector.ph20, %11, %180
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
!4 = !{i64 7962624}
!5 = !{i64 2654208}
!6 = !{!7}
!7 = distinct !{!7, !8, !"slice_convert_fusion_wrapped: argument 0"}
!8 = distinct !{!8, !"slice_convert_fusion_wrapped"}
!9 = !{!10}
!10 = distinct !{!10, !8, !"slice_convert_fusion_wrapped: argument 1"}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.unroll.disable"}
