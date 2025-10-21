; ModuleID = '__compute_module_slice_convert_fusion.2_kernel_module'
source_filename = "__compute_module_slice_convert_fusion.2_kernel_module"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind uwtable
define noalias noundef ptr @slice_convert_fusion.2(ptr readonly captures(none) %0) local_unnamed_addr #0 {
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
  br i1 %10, label %11, label %198

11:                                               ; preds = %1
  %12 = icmp sgt i64 %9, -1
  br i1 %12, label %13, label %slice_convert_fusion.2_wrapped.exit

13:                                               ; preds = %11
  %14 = mul nuw nsw i64 %9, 71424
  br label %vector.ph20

vector.ph20:                                      ; preds = %13, %vector.ph20
  %15 = phi i64 [ 0, %13 ], [ %197, %vector.ph20 ]
  %16 = mul nuw nsw i64 %15, 1152
  %17 = add nuw nsw i64 %16, %14
  %18 = add nuw nsw i64 %17, 995328
  %19 = getelementptr inbounds nuw [3981312 x bfloat], ptr %4, i64 0, i64 %18
  %20 = getelementptr inbounds nuw i8, ptr %19, i64 32
  %21 = getelementptr inbounds nuw i8, ptr %19, i64 64
  %22 = getelementptr inbounds nuw i8, ptr %19, i64 96
  %wide.load23 = load <16 x bfloat>, ptr %19, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load24 = load <16 x bfloat>, ptr %20, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load25 = load <16 x bfloat>, ptr %21, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load26 = load <16 x bfloat>, ptr %22, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %23 = getelementptr inbounds nuw [995328 x bfloat], ptr %6, i64 0, i64 %17
  %24 = getelementptr inbounds nuw i8, ptr %23, i64 32
  %25 = getelementptr inbounds nuw i8, ptr %23, i64 64
  %26 = getelementptr inbounds nuw i8, ptr %23, i64 96
  store <16 x bfloat> %wide.load23, ptr %23, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load24, ptr %24, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load25, ptr %25, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load26, ptr %26, align 2, !alias.scope !9, !noalias !6
  %27 = or disjoint i64 %17, 64
  %28 = add nuw nsw i64 %17, 995392
  %29 = getelementptr inbounds nuw [3981312 x bfloat], ptr %4, i64 0, i64 %28
  %30 = getelementptr inbounds nuw i8, ptr %29, i64 32
  %31 = getelementptr inbounds nuw i8, ptr %29, i64 64
  %32 = getelementptr inbounds nuw i8, ptr %29, i64 96
  %wide.load23.1 = load <16 x bfloat>, ptr %29, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load24.1 = load <16 x bfloat>, ptr %30, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load25.1 = load <16 x bfloat>, ptr %31, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load26.1 = load <16 x bfloat>, ptr %32, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %33 = getelementptr inbounds nuw [995328 x bfloat], ptr %6, i64 0, i64 %27
  %34 = getelementptr inbounds nuw i8, ptr %33, i64 32
  %35 = getelementptr inbounds nuw i8, ptr %33, i64 64
  %36 = getelementptr inbounds nuw i8, ptr %33, i64 96
  store <16 x bfloat> %wide.load23.1, ptr %33, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load24.1, ptr %34, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load25.1, ptr %35, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load26.1, ptr %36, align 2, !alias.scope !9, !noalias !6
  %37 = add nuw nsw i64 %17, 128
  %38 = add nuw nsw i64 %17, 995456
  %39 = getelementptr inbounds nuw [3981312 x bfloat], ptr %4, i64 0, i64 %38
  %40 = getelementptr inbounds nuw i8, ptr %39, i64 32
  %41 = getelementptr inbounds nuw i8, ptr %39, i64 64
  %42 = getelementptr inbounds nuw i8, ptr %39, i64 96
  %wide.load23.2 = load <16 x bfloat>, ptr %39, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load24.2 = load <16 x bfloat>, ptr %40, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load25.2 = load <16 x bfloat>, ptr %41, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load26.2 = load <16 x bfloat>, ptr %42, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %43 = getelementptr inbounds nuw [995328 x bfloat], ptr %6, i64 0, i64 %37
  %44 = getelementptr inbounds nuw i8, ptr %43, i64 32
  %45 = getelementptr inbounds nuw i8, ptr %43, i64 64
  %46 = getelementptr inbounds nuw i8, ptr %43, i64 96
  store <16 x bfloat> %wide.load23.2, ptr %43, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load24.2, ptr %44, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load25.2, ptr %45, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load26.2, ptr %46, align 2, !alias.scope !9, !noalias !6
  %47 = add nuw nsw i64 %17, 192
  %48 = add nuw nsw i64 %17, 995520
  %49 = getelementptr inbounds nuw [3981312 x bfloat], ptr %4, i64 0, i64 %48
  %50 = getelementptr inbounds nuw i8, ptr %49, i64 32
  %51 = getelementptr inbounds nuw i8, ptr %49, i64 64
  %52 = getelementptr inbounds nuw i8, ptr %49, i64 96
  %wide.load23.3 = load <16 x bfloat>, ptr %49, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load24.3 = load <16 x bfloat>, ptr %50, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load25.3 = load <16 x bfloat>, ptr %51, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load26.3 = load <16 x bfloat>, ptr %52, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %53 = getelementptr inbounds nuw [995328 x bfloat], ptr %6, i64 0, i64 %47
  %54 = getelementptr inbounds nuw i8, ptr %53, i64 32
  %55 = getelementptr inbounds nuw i8, ptr %53, i64 64
  %56 = getelementptr inbounds nuw i8, ptr %53, i64 96
  store <16 x bfloat> %wide.load23.3, ptr %53, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load24.3, ptr %54, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load25.3, ptr %55, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load26.3, ptr %56, align 2, !alias.scope !9, !noalias !6
  %57 = add nuw nsw i64 %17, 256
  %58 = add nuw nsw i64 %17, 995584
  %59 = getelementptr inbounds nuw [3981312 x bfloat], ptr %4, i64 0, i64 %58
  %60 = getelementptr inbounds nuw i8, ptr %59, i64 32
  %61 = getelementptr inbounds nuw i8, ptr %59, i64 64
  %62 = getelementptr inbounds nuw i8, ptr %59, i64 96
  %wide.load23.4 = load <16 x bfloat>, ptr %59, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load24.4 = load <16 x bfloat>, ptr %60, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load25.4 = load <16 x bfloat>, ptr %61, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load26.4 = load <16 x bfloat>, ptr %62, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %63 = getelementptr inbounds nuw [995328 x bfloat], ptr %6, i64 0, i64 %57
  %64 = getelementptr inbounds nuw i8, ptr %63, i64 32
  %65 = getelementptr inbounds nuw i8, ptr %63, i64 64
  %66 = getelementptr inbounds nuw i8, ptr %63, i64 96
  store <16 x bfloat> %wide.load23.4, ptr %63, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load24.4, ptr %64, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load25.4, ptr %65, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load26.4, ptr %66, align 2, !alias.scope !9, !noalias !6
  %67 = add nuw nsw i64 %17, 320
  %68 = add nuw nsw i64 %17, 995648
  %69 = getelementptr inbounds nuw [3981312 x bfloat], ptr %4, i64 0, i64 %68
  %70 = getelementptr inbounds nuw i8, ptr %69, i64 32
  %71 = getelementptr inbounds nuw i8, ptr %69, i64 64
  %72 = getelementptr inbounds nuw i8, ptr %69, i64 96
  %wide.load23.5 = load <16 x bfloat>, ptr %69, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load24.5 = load <16 x bfloat>, ptr %70, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load25.5 = load <16 x bfloat>, ptr %71, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load26.5 = load <16 x bfloat>, ptr %72, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %73 = getelementptr inbounds nuw [995328 x bfloat], ptr %6, i64 0, i64 %67
  %74 = getelementptr inbounds nuw i8, ptr %73, i64 32
  %75 = getelementptr inbounds nuw i8, ptr %73, i64 64
  %76 = getelementptr inbounds nuw i8, ptr %73, i64 96
  store <16 x bfloat> %wide.load23.5, ptr %73, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load24.5, ptr %74, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load25.5, ptr %75, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load26.5, ptr %76, align 2, !alias.scope !9, !noalias !6
  %77 = add nuw nsw i64 %17, 384
  %78 = add nuw nsw i64 %17, 995712
  %79 = getelementptr inbounds nuw [3981312 x bfloat], ptr %4, i64 0, i64 %78
  %80 = getelementptr inbounds nuw i8, ptr %79, i64 32
  %81 = getelementptr inbounds nuw i8, ptr %79, i64 64
  %82 = getelementptr inbounds nuw i8, ptr %79, i64 96
  %wide.load23.6 = load <16 x bfloat>, ptr %79, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load24.6 = load <16 x bfloat>, ptr %80, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load25.6 = load <16 x bfloat>, ptr %81, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load26.6 = load <16 x bfloat>, ptr %82, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %83 = getelementptr inbounds nuw [995328 x bfloat], ptr %6, i64 0, i64 %77
  %84 = getelementptr inbounds nuw i8, ptr %83, i64 32
  %85 = getelementptr inbounds nuw i8, ptr %83, i64 64
  %86 = getelementptr inbounds nuw i8, ptr %83, i64 96
  store <16 x bfloat> %wide.load23.6, ptr %83, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load24.6, ptr %84, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load25.6, ptr %85, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load26.6, ptr %86, align 2, !alias.scope !9, !noalias !6
  %87 = add nuw nsw i64 %17, 448
  %88 = add nuw nsw i64 %17, 995776
  %89 = getelementptr inbounds nuw [3981312 x bfloat], ptr %4, i64 0, i64 %88
  %90 = getelementptr inbounds nuw i8, ptr %89, i64 32
  %91 = getelementptr inbounds nuw i8, ptr %89, i64 64
  %92 = getelementptr inbounds nuw i8, ptr %89, i64 96
  %wide.load23.7 = load <16 x bfloat>, ptr %89, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load24.7 = load <16 x bfloat>, ptr %90, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load25.7 = load <16 x bfloat>, ptr %91, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load26.7 = load <16 x bfloat>, ptr %92, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %93 = getelementptr inbounds nuw [995328 x bfloat], ptr %6, i64 0, i64 %87
  %94 = getelementptr inbounds nuw i8, ptr %93, i64 32
  %95 = getelementptr inbounds nuw i8, ptr %93, i64 64
  %96 = getelementptr inbounds nuw i8, ptr %93, i64 96
  store <16 x bfloat> %wide.load23.7, ptr %93, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load24.7, ptr %94, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load25.7, ptr %95, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load26.7, ptr %96, align 2, !alias.scope !9, !noalias !6
  %97 = add nuw nsw i64 %17, 512
  %98 = add nuw nsw i64 %17, 995840
  %99 = getelementptr inbounds nuw [3981312 x bfloat], ptr %4, i64 0, i64 %98
  %100 = getelementptr inbounds nuw i8, ptr %99, i64 32
  %101 = getelementptr inbounds nuw i8, ptr %99, i64 64
  %102 = getelementptr inbounds nuw i8, ptr %99, i64 96
  %wide.load23.8 = load <16 x bfloat>, ptr %99, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load24.8 = load <16 x bfloat>, ptr %100, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load25.8 = load <16 x bfloat>, ptr %101, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load26.8 = load <16 x bfloat>, ptr %102, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %103 = getelementptr inbounds nuw [995328 x bfloat], ptr %6, i64 0, i64 %97
  %104 = getelementptr inbounds nuw i8, ptr %103, i64 32
  %105 = getelementptr inbounds nuw i8, ptr %103, i64 64
  %106 = getelementptr inbounds nuw i8, ptr %103, i64 96
  store <16 x bfloat> %wide.load23.8, ptr %103, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load24.8, ptr %104, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load25.8, ptr %105, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load26.8, ptr %106, align 2, !alias.scope !9, !noalias !6
  %107 = add nuw nsw i64 %17, 576
  %108 = add nuw nsw i64 %17, 995904
  %109 = getelementptr inbounds nuw [3981312 x bfloat], ptr %4, i64 0, i64 %108
  %110 = getelementptr inbounds nuw i8, ptr %109, i64 32
  %111 = getelementptr inbounds nuw i8, ptr %109, i64 64
  %112 = getelementptr inbounds nuw i8, ptr %109, i64 96
  %wide.load23.9 = load <16 x bfloat>, ptr %109, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load24.9 = load <16 x bfloat>, ptr %110, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load25.9 = load <16 x bfloat>, ptr %111, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load26.9 = load <16 x bfloat>, ptr %112, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %113 = getelementptr inbounds nuw [995328 x bfloat], ptr %6, i64 0, i64 %107
  %114 = getelementptr inbounds nuw i8, ptr %113, i64 32
  %115 = getelementptr inbounds nuw i8, ptr %113, i64 64
  %116 = getelementptr inbounds nuw i8, ptr %113, i64 96
  store <16 x bfloat> %wide.load23.9, ptr %113, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load24.9, ptr %114, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load25.9, ptr %115, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load26.9, ptr %116, align 2, !alias.scope !9, !noalias !6
  %117 = add nuw nsw i64 %17, 640
  %118 = add nuw nsw i64 %17, 995968
  %119 = getelementptr inbounds nuw [3981312 x bfloat], ptr %4, i64 0, i64 %118
  %120 = getelementptr inbounds nuw i8, ptr %119, i64 32
  %121 = getelementptr inbounds nuw i8, ptr %119, i64 64
  %122 = getelementptr inbounds nuw i8, ptr %119, i64 96
  %wide.load23.10 = load <16 x bfloat>, ptr %119, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load24.10 = load <16 x bfloat>, ptr %120, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load25.10 = load <16 x bfloat>, ptr %121, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load26.10 = load <16 x bfloat>, ptr %122, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %123 = getelementptr inbounds nuw [995328 x bfloat], ptr %6, i64 0, i64 %117
  %124 = getelementptr inbounds nuw i8, ptr %123, i64 32
  %125 = getelementptr inbounds nuw i8, ptr %123, i64 64
  %126 = getelementptr inbounds nuw i8, ptr %123, i64 96
  store <16 x bfloat> %wide.load23.10, ptr %123, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load24.10, ptr %124, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load25.10, ptr %125, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load26.10, ptr %126, align 2, !alias.scope !9, !noalias !6
  %127 = add nuw nsw i64 %17, 704
  %128 = add nuw nsw i64 %17, 996032
  %129 = getelementptr inbounds nuw [3981312 x bfloat], ptr %4, i64 0, i64 %128
  %130 = getelementptr inbounds nuw i8, ptr %129, i64 32
  %131 = getelementptr inbounds nuw i8, ptr %129, i64 64
  %132 = getelementptr inbounds nuw i8, ptr %129, i64 96
  %wide.load23.11 = load <16 x bfloat>, ptr %129, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load24.11 = load <16 x bfloat>, ptr %130, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load25.11 = load <16 x bfloat>, ptr %131, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load26.11 = load <16 x bfloat>, ptr %132, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %133 = getelementptr inbounds nuw [995328 x bfloat], ptr %6, i64 0, i64 %127
  %134 = getelementptr inbounds nuw i8, ptr %133, i64 32
  %135 = getelementptr inbounds nuw i8, ptr %133, i64 64
  %136 = getelementptr inbounds nuw i8, ptr %133, i64 96
  store <16 x bfloat> %wide.load23.11, ptr %133, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load24.11, ptr %134, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load25.11, ptr %135, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load26.11, ptr %136, align 2, !alias.scope !9, !noalias !6
  %137 = add nuw nsw i64 %17, 768
  %138 = add nuw nsw i64 %17, 996096
  %139 = getelementptr inbounds nuw [3981312 x bfloat], ptr %4, i64 0, i64 %138
  %140 = getelementptr inbounds nuw i8, ptr %139, i64 32
  %141 = getelementptr inbounds nuw i8, ptr %139, i64 64
  %142 = getelementptr inbounds nuw i8, ptr %139, i64 96
  %wide.load23.12 = load <16 x bfloat>, ptr %139, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load24.12 = load <16 x bfloat>, ptr %140, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load25.12 = load <16 x bfloat>, ptr %141, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load26.12 = load <16 x bfloat>, ptr %142, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %143 = getelementptr inbounds nuw [995328 x bfloat], ptr %6, i64 0, i64 %137
  %144 = getelementptr inbounds nuw i8, ptr %143, i64 32
  %145 = getelementptr inbounds nuw i8, ptr %143, i64 64
  %146 = getelementptr inbounds nuw i8, ptr %143, i64 96
  store <16 x bfloat> %wide.load23.12, ptr %143, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load24.12, ptr %144, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load25.12, ptr %145, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load26.12, ptr %146, align 2, !alias.scope !9, !noalias !6
  %147 = add nuw nsw i64 %17, 832
  %148 = add nuw nsw i64 %17, 996160
  %149 = getelementptr inbounds nuw [3981312 x bfloat], ptr %4, i64 0, i64 %148
  %150 = getelementptr inbounds nuw i8, ptr %149, i64 32
  %151 = getelementptr inbounds nuw i8, ptr %149, i64 64
  %152 = getelementptr inbounds nuw i8, ptr %149, i64 96
  %wide.load23.13 = load <16 x bfloat>, ptr %149, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load24.13 = load <16 x bfloat>, ptr %150, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load25.13 = load <16 x bfloat>, ptr %151, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load26.13 = load <16 x bfloat>, ptr %152, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %153 = getelementptr inbounds nuw [995328 x bfloat], ptr %6, i64 0, i64 %147
  %154 = getelementptr inbounds nuw i8, ptr %153, i64 32
  %155 = getelementptr inbounds nuw i8, ptr %153, i64 64
  %156 = getelementptr inbounds nuw i8, ptr %153, i64 96
  store <16 x bfloat> %wide.load23.13, ptr %153, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load24.13, ptr %154, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load25.13, ptr %155, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load26.13, ptr %156, align 2, !alias.scope !9, !noalias !6
  %157 = add nuw nsw i64 %17, 896
  %158 = add nuw nsw i64 %17, 996224
  %159 = getelementptr inbounds nuw [3981312 x bfloat], ptr %4, i64 0, i64 %158
  %160 = getelementptr inbounds nuw i8, ptr %159, i64 32
  %161 = getelementptr inbounds nuw i8, ptr %159, i64 64
  %162 = getelementptr inbounds nuw i8, ptr %159, i64 96
  %wide.load23.14 = load <16 x bfloat>, ptr %159, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load24.14 = load <16 x bfloat>, ptr %160, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load25.14 = load <16 x bfloat>, ptr %161, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load26.14 = load <16 x bfloat>, ptr %162, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %163 = getelementptr inbounds nuw [995328 x bfloat], ptr %6, i64 0, i64 %157
  %164 = getelementptr inbounds nuw i8, ptr %163, i64 32
  %165 = getelementptr inbounds nuw i8, ptr %163, i64 64
  %166 = getelementptr inbounds nuw i8, ptr %163, i64 96
  store <16 x bfloat> %wide.load23.14, ptr %163, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load24.14, ptr %164, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load25.14, ptr %165, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load26.14, ptr %166, align 2, !alias.scope !9, !noalias !6
  %167 = add nuw nsw i64 %17, 960
  %168 = add nuw nsw i64 %17, 996288
  %169 = getelementptr inbounds nuw [3981312 x bfloat], ptr %4, i64 0, i64 %168
  %170 = getelementptr inbounds nuw i8, ptr %169, i64 32
  %171 = getelementptr inbounds nuw i8, ptr %169, i64 64
  %172 = getelementptr inbounds nuw i8, ptr %169, i64 96
  %wide.load23.15 = load <16 x bfloat>, ptr %169, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load24.15 = load <16 x bfloat>, ptr %170, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load25.15 = load <16 x bfloat>, ptr %171, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load26.15 = load <16 x bfloat>, ptr %172, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %173 = getelementptr inbounds nuw [995328 x bfloat], ptr %6, i64 0, i64 %167
  %174 = getelementptr inbounds nuw i8, ptr %173, i64 32
  %175 = getelementptr inbounds nuw i8, ptr %173, i64 64
  %176 = getelementptr inbounds nuw i8, ptr %173, i64 96
  store <16 x bfloat> %wide.load23.15, ptr %173, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load24.15, ptr %174, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load25.15, ptr %175, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load26.15, ptr %176, align 2, !alias.scope !9, !noalias !6
  %177 = add nuw nsw i64 %17, 1024
  %178 = add nuw nsw i64 %17, 996352
  %179 = getelementptr inbounds nuw [3981312 x bfloat], ptr %4, i64 0, i64 %178
  %180 = getelementptr inbounds nuw i8, ptr %179, i64 32
  %181 = getelementptr inbounds nuw i8, ptr %179, i64 64
  %182 = getelementptr inbounds nuw i8, ptr %179, i64 96
  %wide.load23.16 = load <16 x bfloat>, ptr %179, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load24.16 = load <16 x bfloat>, ptr %180, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load25.16 = load <16 x bfloat>, ptr %181, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load26.16 = load <16 x bfloat>, ptr %182, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %183 = getelementptr inbounds nuw [995328 x bfloat], ptr %6, i64 0, i64 %177
  %184 = getelementptr inbounds nuw i8, ptr %183, i64 32
  %185 = getelementptr inbounds nuw i8, ptr %183, i64 64
  %186 = getelementptr inbounds nuw i8, ptr %183, i64 96
  store <16 x bfloat> %wide.load23.16, ptr %183, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load24.16, ptr %184, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load25.16, ptr %185, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load26.16, ptr %186, align 2, !alias.scope !9, !noalias !6
  %187 = add nuw nsw i64 %17, 1088
  %188 = add nuw nsw i64 %17, 996416
  %189 = getelementptr inbounds nuw [3981312 x bfloat], ptr %4, i64 0, i64 %188
  %190 = getelementptr inbounds nuw i8, ptr %189, i64 32
  %191 = getelementptr inbounds nuw i8, ptr %189, i64 64
  %192 = getelementptr inbounds nuw i8, ptr %189, i64 96
  %wide.load23.17 = load <16 x bfloat>, ptr %189, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load24.17 = load <16 x bfloat>, ptr %190, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load25.17 = load <16 x bfloat>, ptr %191, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load26.17 = load <16 x bfloat>, ptr %192, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %193 = getelementptr inbounds nuw [995328 x bfloat], ptr %6, i64 0, i64 %187
  %194 = getelementptr inbounds nuw i8, ptr %193, i64 32
  %195 = getelementptr inbounds nuw i8, ptr %193, i64 64
  %196 = getelementptr inbounds nuw i8, ptr %193, i64 96
  store <16 x bfloat> %wide.load23.17, ptr %193, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load24.17, ptr %194, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load25.17, ptr %195, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load26.17, ptr %196, align 2, !alias.scope !9, !noalias !6
  %197 = add nuw nsw i64 %15, 1
  %exitcond11.not = icmp eq i64 %197, 62
  br i1 %exitcond11.not, label %slice_convert_fusion.2_wrapped.exit, label %vector.ph20, !llvm.loop !11

198:                                              ; preds = %1
  %199 = icmp eq i64 %9, 13
  br i1 %199, label %.preheader, label %slice_convert_fusion.2_wrapped.exit

.preheader:                                       ; preds = %198, %.preheader
  %200 = phi i64 [ %382, %.preheader ], [ 0, %198 ]
  %201 = mul nuw nsw i64 %200, 1152
  %202 = add nuw nsw i64 %201, 1923840
  %203 = getelementptr inbounds nuw [3981312 x bfloat], ptr %4, i64 0, i64 %202
  %204 = getelementptr inbounds nuw i8, ptr %203, i64 32
  %205 = getelementptr inbounds nuw i8, ptr %203, i64 64
  %206 = getelementptr inbounds nuw i8, ptr %203, i64 96
  %wide.load = load <16 x bfloat>, ptr %203, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load16 = load <16 x bfloat>, ptr %204, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load17 = load <16 x bfloat>, ptr %205, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load18 = load <16 x bfloat>, ptr %206, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %207 = add nuw nsw i64 %201, 928512
  %208 = getelementptr inbounds nuw [995328 x bfloat], ptr %6, i64 0, i64 %207
  %209 = getelementptr inbounds nuw i8, ptr %208, i64 32
  %210 = getelementptr inbounds nuw i8, ptr %208, i64 64
  %211 = getelementptr inbounds nuw i8, ptr %208, i64 96
  store <16 x bfloat> %wide.load, ptr %208, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load16, ptr %209, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load17, ptr %210, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load18, ptr %211, align 2, !alias.scope !9, !noalias !6
  %212 = add nuw nsw i64 %201, 1923904
  %213 = getelementptr inbounds nuw [3981312 x bfloat], ptr %4, i64 0, i64 %212
  %214 = getelementptr inbounds nuw i8, ptr %213, i64 32
  %215 = getelementptr inbounds nuw i8, ptr %213, i64 64
  %216 = getelementptr inbounds nuw i8, ptr %213, i64 96
  %wide.load.1 = load <16 x bfloat>, ptr %213, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load16.1 = load <16 x bfloat>, ptr %214, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load17.1 = load <16 x bfloat>, ptr %215, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load18.1 = load <16 x bfloat>, ptr %216, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %217 = add nuw nsw i64 %201, 928576
  %218 = getelementptr inbounds nuw [995328 x bfloat], ptr %6, i64 0, i64 %217
  %219 = getelementptr inbounds nuw i8, ptr %218, i64 32
  %220 = getelementptr inbounds nuw i8, ptr %218, i64 64
  %221 = getelementptr inbounds nuw i8, ptr %218, i64 96
  store <16 x bfloat> %wide.load.1, ptr %218, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load16.1, ptr %219, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load17.1, ptr %220, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load18.1, ptr %221, align 2, !alias.scope !9, !noalias !6
  %222 = add nuw nsw i64 %201, 1923968
  %223 = getelementptr inbounds nuw [3981312 x bfloat], ptr %4, i64 0, i64 %222
  %224 = getelementptr inbounds nuw i8, ptr %223, i64 32
  %225 = getelementptr inbounds nuw i8, ptr %223, i64 64
  %226 = getelementptr inbounds nuw i8, ptr %223, i64 96
  %wide.load.2 = load <16 x bfloat>, ptr %223, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load16.2 = load <16 x bfloat>, ptr %224, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load17.2 = load <16 x bfloat>, ptr %225, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load18.2 = load <16 x bfloat>, ptr %226, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %227 = add nuw nsw i64 %201, 928640
  %228 = getelementptr inbounds nuw [995328 x bfloat], ptr %6, i64 0, i64 %227
  %229 = getelementptr inbounds nuw i8, ptr %228, i64 32
  %230 = getelementptr inbounds nuw i8, ptr %228, i64 64
  %231 = getelementptr inbounds nuw i8, ptr %228, i64 96
  store <16 x bfloat> %wide.load.2, ptr %228, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load16.2, ptr %229, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load17.2, ptr %230, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load18.2, ptr %231, align 2, !alias.scope !9, !noalias !6
  %232 = add nuw nsw i64 %201, 1924032
  %233 = getelementptr inbounds nuw [3981312 x bfloat], ptr %4, i64 0, i64 %232
  %234 = getelementptr inbounds nuw i8, ptr %233, i64 32
  %235 = getelementptr inbounds nuw i8, ptr %233, i64 64
  %236 = getelementptr inbounds nuw i8, ptr %233, i64 96
  %wide.load.3 = load <16 x bfloat>, ptr %233, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load16.3 = load <16 x bfloat>, ptr %234, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load17.3 = load <16 x bfloat>, ptr %235, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load18.3 = load <16 x bfloat>, ptr %236, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %237 = add nuw nsw i64 %201, 928704
  %238 = getelementptr inbounds nuw [995328 x bfloat], ptr %6, i64 0, i64 %237
  %239 = getelementptr inbounds nuw i8, ptr %238, i64 32
  %240 = getelementptr inbounds nuw i8, ptr %238, i64 64
  %241 = getelementptr inbounds nuw i8, ptr %238, i64 96
  store <16 x bfloat> %wide.load.3, ptr %238, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load16.3, ptr %239, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load17.3, ptr %240, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load18.3, ptr %241, align 2, !alias.scope !9, !noalias !6
  %242 = add nuw nsw i64 %201, 1924096
  %243 = getelementptr inbounds nuw [3981312 x bfloat], ptr %4, i64 0, i64 %242
  %244 = getelementptr inbounds nuw i8, ptr %243, i64 32
  %245 = getelementptr inbounds nuw i8, ptr %243, i64 64
  %246 = getelementptr inbounds nuw i8, ptr %243, i64 96
  %wide.load.4 = load <16 x bfloat>, ptr %243, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load16.4 = load <16 x bfloat>, ptr %244, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load17.4 = load <16 x bfloat>, ptr %245, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load18.4 = load <16 x bfloat>, ptr %246, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %247 = add nuw nsw i64 %201, 928768
  %248 = getelementptr inbounds nuw [995328 x bfloat], ptr %6, i64 0, i64 %247
  %249 = getelementptr inbounds nuw i8, ptr %248, i64 32
  %250 = getelementptr inbounds nuw i8, ptr %248, i64 64
  %251 = getelementptr inbounds nuw i8, ptr %248, i64 96
  store <16 x bfloat> %wide.load.4, ptr %248, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load16.4, ptr %249, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load17.4, ptr %250, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load18.4, ptr %251, align 2, !alias.scope !9, !noalias !6
  %252 = add nuw nsw i64 %201, 1924160
  %253 = getelementptr inbounds nuw [3981312 x bfloat], ptr %4, i64 0, i64 %252
  %254 = getelementptr inbounds nuw i8, ptr %253, i64 32
  %255 = getelementptr inbounds nuw i8, ptr %253, i64 64
  %256 = getelementptr inbounds nuw i8, ptr %253, i64 96
  %wide.load.5 = load <16 x bfloat>, ptr %253, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load16.5 = load <16 x bfloat>, ptr %254, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load17.5 = load <16 x bfloat>, ptr %255, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load18.5 = load <16 x bfloat>, ptr %256, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %257 = add nuw nsw i64 %201, 928832
  %258 = getelementptr inbounds nuw [995328 x bfloat], ptr %6, i64 0, i64 %257
  %259 = getelementptr inbounds nuw i8, ptr %258, i64 32
  %260 = getelementptr inbounds nuw i8, ptr %258, i64 64
  %261 = getelementptr inbounds nuw i8, ptr %258, i64 96
  store <16 x bfloat> %wide.load.5, ptr %258, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load16.5, ptr %259, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load17.5, ptr %260, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load18.5, ptr %261, align 2, !alias.scope !9, !noalias !6
  %262 = add nuw nsw i64 %201, 1924224
  %263 = getelementptr inbounds nuw [3981312 x bfloat], ptr %4, i64 0, i64 %262
  %264 = getelementptr inbounds nuw i8, ptr %263, i64 32
  %265 = getelementptr inbounds nuw i8, ptr %263, i64 64
  %266 = getelementptr inbounds nuw i8, ptr %263, i64 96
  %wide.load.6 = load <16 x bfloat>, ptr %263, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load16.6 = load <16 x bfloat>, ptr %264, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load17.6 = load <16 x bfloat>, ptr %265, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load18.6 = load <16 x bfloat>, ptr %266, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %267 = add nuw nsw i64 %201, 928896
  %268 = getelementptr inbounds nuw [995328 x bfloat], ptr %6, i64 0, i64 %267
  %269 = getelementptr inbounds nuw i8, ptr %268, i64 32
  %270 = getelementptr inbounds nuw i8, ptr %268, i64 64
  %271 = getelementptr inbounds nuw i8, ptr %268, i64 96
  store <16 x bfloat> %wide.load.6, ptr %268, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load16.6, ptr %269, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load17.6, ptr %270, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load18.6, ptr %271, align 2, !alias.scope !9, !noalias !6
  %272 = add nuw nsw i64 %201, 1924288
  %273 = getelementptr inbounds nuw [3981312 x bfloat], ptr %4, i64 0, i64 %272
  %274 = getelementptr inbounds nuw i8, ptr %273, i64 32
  %275 = getelementptr inbounds nuw i8, ptr %273, i64 64
  %276 = getelementptr inbounds nuw i8, ptr %273, i64 96
  %wide.load.7 = load <16 x bfloat>, ptr %273, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load16.7 = load <16 x bfloat>, ptr %274, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load17.7 = load <16 x bfloat>, ptr %275, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load18.7 = load <16 x bfloat>, ptr %276, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %277 = add nuw nsw i64 %201, 928960
  %278 = getelementptr inbounds nuw [995328 x bfloat], ptr %6, i64 0, i64 %277
  %279 = getelementptr inbounds nuw i8, ptr %278, i64 32
  %280 = getelementptr inbounds nuw i8, ptr %278, i64 64
  %281 = getelementptr inbounds nuw i8, ptr %278, i64 96
  store <16 x bfloat> %wide.load.7, ptr %278, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load16.7, ptr %279, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load17.7, ptr %280, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load18.7, ptr %281, align 2, !alias.scope !9, !noalias !6
  %282 = add nuw nsw i64 %201, 1924352
  %283 = getelementptr inbounds nuw [3981312 x bfloat], ptr %4, i64 0, i64 %282
  %284 = getelementptr inbounds nuw i8, ptr %283, i64 32
  %285 = getelementptr inbounds nuw i8, ptr %283, i64 64
  %286 = getelementptr inbounds nuw i8, ptr %283, i64 96
  %wide.load.8 = load <16 x bfloat>, ptr %283, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load16.8 = load <16 x bfloat>, ptr %284, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load17.8 = load <16 x bfloat>, ptr %285, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load18.8 = load <16 x bfloat>, ptr %286, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %287 = add nuw nsw i64 %201, 929024
  %288 = getelementptr inbounds nuw [995328 x bfloat], ptr %6, i64 0, i64 %287
  %289 = getelementptr inbounds nuw i8, ptr %288, i64 32
  %290 = getelementptr inbounds nuw i8, ptr %288, i64 64
  %291 = getelementptr inbounds nuw i8, ptr %288, i64 96
  store <16 x bfloat> %wide.load.8, ptr %288, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load16.8, ptr %289, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load17.8, ptr %290, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load18.8, ptr %291, align 2, !alias.scope !9, !noalias !6
  %292 = add nuw nsw i64 %201, 1924416
  %293 = getelementptr inbounds nuw [3981312 x bfloat], ptr %4, i64 0, i64 %292
  %294 = getelementptr inbounds nuw i8, ptr %293, i64 32
  %295 = getelementptr inbounds nuw i8, ptr %293, i64 64
  %296 = getelementptr inbounds nuw i8, ptr %293, i64 96
  %wide.load.9 = load <16 x bfloat>, ptr %293, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load16.9 = load <16 x bfloat>, ptr %294, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load17.9 = load <16 x bfloat>, ptr %295, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load18.9 = load <16 x bfloat>, ptr %296, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %297 = add nuw nsw i64 %201, 929088
  %298 = getelementptr inbounds nuw [995328 x bfloat], ptr %6, i64 0, i64 %297
  %299 = getelementptr inbounds nuw i8, ptr %298, i64 32
  %300 = getelementptr inbounds nuw i8, ptr %298, i64 64
  %301 = getelementptr inbounds nuw i8, ptr %298, i64 96
  store <16 x bfloat> %wide.load.9, ptr %298, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load16.9, ptr %299, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load17.9, ptr %300, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load18.9, ptr %301, align 2, !alias.scope !9, !noalias !6
  %302 = add nuw nsw i64 %201, 1924480
  %303 = getelementptr inbounds nuw [3981312 x bfloat], ptr %4, i64 0, i64 %302
  %304 = getelementptr inbounds nuw i8, ptr %303, i64 32
  %305 = getelementptr inbounds nuw i8, ptr %303, i64 64
  %306 = getelementptr inbounds nuw i8, ptr %303, i64 96
  %wide.load.10 = load <16 x bfloat>, ptr %303, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load16.10 = load <16 x bfloat>, ptr %304, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load17.10 = load <16 x bfloat>, ptr %305, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load18.10 = load <16 x bfloat>, ptr %306, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %307 = add nuw nsw i64 %201, 929152
  %308 = getelementptr inbounds nuw [995328 x bfloat], ptr %6, i64 0, i64 %307
  %309 = getelementptr inbounds nuw i8, ptr %308, i64 32
  %310 = getelementptr inbounds nuw i8, ptr %308, i64 64
  %311 = getelementptr inbounds nuw i8, ptr %308, i64 96
  store <16 x bfloat> %wide.load.10, ptr %308, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load16.10, ptr %309, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load17.10, ptr %310, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load18.10, ptr %311, align 2, !alias.scope !9, !noalias !6
  %312 = add nuw nsw i64 %201, 1924544
  %313 = getelementptr inbounds nuw [3981312 x bfloat], ptr %4, i64 0, i64 %312
  %314 = getelementptr inbounds nuw i8, ptr %313, i64 32
  %315 = getelementptr inbounds nuw i8, ptr %313, i64 64
  %316 = getelementptr inbounds nuw i8, ptr %313, i64 96
  %wide.load.11 = load <16 x bfloat>, ptr %313, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load16.11 = load <16 x bfloat>, ptr %314, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load17.11 = load <16 x bfloat>, ptr %315, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load18.11 = load <16 x bfloat>, ptr %316, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %317 = add nuw nsw i64 %201, 929216
  %318 = getelementptr inbounds nuw [995328 x bfloat], ptr %6, i64 0, i64 %317
  %319 = getelementptr inbounds nuw i8, ptr %318, i64 32
  %320 = getelementptr inbounds nuw i8, ptr %318, i64 64
  %321 = getelementptr inbounds nuw i8, ptr %318, i64 96
  store <16 x bfloat> %wide.load.11, ptr %318, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load16.11, ptr %319, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load17.11, ptr %320, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load18.11, ptr %321, align 2, !alias.scope !9, !noalias !6
  %322 = add nuw nsw i64 %201, 1924608
  %323 = getelementptr inbounds nuw [3981312 x bfloat], ptr %4, i64 0, i64 %322
  %324 = getelementptr inbounds nuw i8, ptr %323, i64 32
  %325 = getelementptr inbounds nuw i8, ptr %323, i64 64
  %326 = getelementptr inbounds nuw i8, ptr %323, i64 96
  %wide.load.12 = load <16 x bfloat>, ptr %323, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load16.12 = load <16 x bfloat>, ptr %324, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load17.12 = load <16 x bfloat>, ptr %325, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load18.12 = load <16 x bfloat>, ptr %326, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %327 = add nuw nsw i64 %201, 929280
  %328 = getelementptr inbounds nuw [995328 x bfloat], ptr %6, i64 0, i64 %327
  %329 = getelementptr inbounds nuw i8, ptr %328, i64 32
  %330 = getelementptr inbounds nuw i8, ptr %328, i64 64
  %331 = getelementptr inbounds nuw i8, ptr %328, i64 96
  store <16 x bfloat> %wide.load.12, ptr %328, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load16.12, ptr %329, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load17.12, ptr %330, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load18.12, ptr %331, align 2, !alias.scope !9, !noalias !6
  %332 = add nuw nsw i64 %201, 1924672
  %333 = getelementptr inbounds nuw [3981312 x bfloat], ptr %4, i64 0, i64 %332
  %334 = getelementptr inbounds nuw i8, ptr %333, i64 32
  %335 = getelementptr inbounds nuw i8, ptr %333, i64 64
  %336 = getelementptr inbounds nuw i8, ptr %333, i64 96
  %wide.load.13 = load <16 x bfloat>, ptr %333, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load16.13 = load <16 x bfloat>, ptr %334, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load17.13 = load <16 x bfloat>, ptr %335, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load18.13 = load <16 x bfloat>, ptr %336, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %337 = add nuw nsw i64 %201, 929344
  %338 = getelementptr inbounds nuw [995328 x bfloat], ptr %6, i64 0, i64 %337
  %339 = getelementptr inbounds nuw i8, ptr %338, i64 32
  %340 = getelementptr inbounds nuw i8, ptr %338, i64 64
  %341 = getelementptr inbounds nuw i8, ptr %338, i64 96
  store <16 x bfloat> %wide.load.13, ptr %338, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load16.13, ptr %339, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load17.13, ptr %340, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load18.13, ptr %341, align 2, !alias.scope !9, !noalias !6
  %342 = add nuw nsw i64 %201, 1924736
  %343 = getelementptr inbounds nuw [3981312 x bfloat], ptr %4, i64 0, i64 %342
  %344 = getelementptr inbounds nuw i8, ptr %343, i64 32
  %345 = getelementptr inbounds nuw i8, ptr %343, i64 64
  %346 = getelementptr inbounds nuw i8, ptr %343, i64 96
  %wide.load.14 = load <16 x bfloat>, ptr %343, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load16.14 = load <16 x bfloat>, ptr %344, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load17.14 = load <16 x bfloat>, ptr %345, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load18.14 = load <16 x bfloat>, ptr %346, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %347 = add nuw nsw i64 %201, 929408
  %348 = getelementptr inbounds nuw [995328 x bfloat], ptr %6, i64 0, i64 %347
  %349 = getelementptr inbounds nuw i8, ptr %348, i64 32
  %350 = getelementptr inbounds nuw i8, ptr %348, i64 64
  %351 = getelementptr inbounds nuw i8, ptr %348, i64 96
  store <16 x bfloat> %wide.load.14, ptr %348, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load16.14, ptr %349, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load17.14, ptr %350, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load18.14, ptr %351, align 2, !alias.scope !9, !noalias !6
  %352 = add nuw nsw i64 %201, 1924800
  %353 = getelementptr inbounds nuw [3981312 x bfloat], ptr %4, i64 0, i64 %352
  %354 = getelementptr inbounds nuw i8, ptr %353, i64 32
  %355 = getelementptr inbounds nuw i8, ptr %353, i64 64
  %356 = getelementptr inbounds nuw i8, ptr %353, i64 96
  %wide.load.15 = load <16 x bfloat>, ptr %353, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load16.15 = load <16 x bfloat>, ptr %354, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load17.15 = load <16 x bfloat>, ptr %355, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load18.15 = load <16 x bfloat>, ptr %356, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %357 = add nuw nsw i64 %201, 929472
  %358 = getelementptr inbounds nuw [995328 x bfloat], ptr %6, i64 0, i64 %357
  %359 = getelementptr inbounds nuw i8, ptr %358, i64 32
  %360 = getelementptr inbounds nuw i8, ptr %358, i64 64
  %361 = getelementptr inbounds nuw i8, ptr %358, i64 96
  store <16 x bfloat> %wide.load.15, ptr %358, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load16.15, ptr %359, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load17.15, ptr %360, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load18.15, ptr %361, align 2, !alias.scope !9, !noalias !6
  %362 = add nuw nsw i64 %201, 1924864
  %363 = getelementptr inbounds nuw [3981312 x bfloat], ptr %4, i64 0, i64 %362
  %364 = getelementptr inbounds nuw i8, ptr %363, i64 32
  %365 = getelementptr inbounds nuw i8, ptr %363, i64 64
  %366 = getelementptr inbounds nuw i8, ptr %363, i64 96
  %wide.load.16 = load <16 x bfloat>, ptr %363, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load16.16 = load <16 x bfloat>, ptr %364, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load17.16 = load <16 x bfloat>, ptr %365, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load18.16 = load <16 x bfloat>, ptr %366, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %367 = add nuw nsw i64 %201, 929536
  %368 = getelementptr inbounds nuw [995328 x bfloat], ptr %6, i64 0, i64 %367
  %369 = getelementptr inbounds nuw i8, ptr %368, i64 32
  %370 = getelementptr inbounds nuw i8, ptr %368, i64 64
  %371 = getelementptr inbounds nuw i8, ptr %368, i64 96
  store <16 x bfloat> %wide.load.16, ptr %368, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load16.16, ptr %369, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load17.16, ptr %370, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load18.16, ptr %371, align 2, !alias.scope !9, !noalias !6
  %372 = add nuw nsw i64 %201, 1924928
  %373 = getelementptr inbounds nuw [3981312 x bfloat], ptr %4, i64 0, i64 %372
  %374 = getelementptr inbounds nuw i8, ptr %373, i64 32
  %375 = getelementptr inbounds nuw i8, ptr %373, i64 64
  %376 = getelementptr inbounds nuw i8, ptr %373, i64 96
  %wide.load.17 = load <16 x bfloat>, ptr %373, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load16.17 = load <16 x bfloat>, ptr %374, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load17.17 = load <16 x bfloat>, ptr %375, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load18.17 = load <16 x bfloat>, ptr %376, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %377 = add nuw nsw i64 %201, 929600
  %378 = getelementptr inbounds nuw [995328 x bfloat], ptr %6, i64 0, i64 %377
  %379 = getelementptr inbounds nuw i8, ptr %378, i64 32
  %380 = getelementptr inbounds nuw i8, ptr %378, i64 64
  %381 = getelementptr inbounds nuw i8, ptr %378, i64 96
  store <16 x bfloat> %wide.load.17, ptr %378, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load16.17, ptr %379, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load17.17, ptr %380, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load18.17, ptr %381, align 2, !alias.scope !9, !noalias !6
  %382 = add nuw nsw i64 %200, 1
  %exitcond8.not = icmp eq i64 %382, 58
  br i1 %exitcond8.not, label %slice_convert_fusion.2_wrapped.exit, label %.preheader, !llvm.loop !11

slice_convert_fusion.2_wrapped.exit:              ; preds = %.preheader, %vector.ph20, %11, %198
  ret ptr null
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #1

attributes #0 = { nofree norecurse nosync nounwind uwtable "frame-pointer"="all" "prefer-vector-width"="256" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }

!llvm.module.flags = !{!0, !1}
!xla_cpu_memory_region_name = !{!2}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !{i32 1, !"xla_dylib_index", i64 2}
!2 = !{!"xla_cpu_emitter__loop_fusion_kernel_emitter__hlo_opcode__fusion"}
!3 = !{}
!4 = !{i64 7962624}
!5 = !{i64 1990656}
!6 = !{!7}
!7 = distinct !{!7, !8, !"slice_convert_fusion.2_wrapped: argument 0"}
!8 = distinct !{!8, !"slice_convert_fusion.2_wrapped"}
!9 = !{!10}
!10 = distinct !{!10, !8, !"slice_convert_fusion.2_wrapped: argument 1"}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.unroll.disable"}
