; ModuleID = '__compute_module_slice_convert_fusion.1_kernel_module'
source_filename = "__compute_module_slice_convert_fusion.1_kernel_module"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind uwtable
define noalias noundef ptr @slice_convert_fusion.1(ptr readonly captures(none) %0) local_unnamed_addr #0 {
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
  br i1 %10, label %11, label %201

11:                                               ; preds = %1
  %12 = icmp sgt i64 %9, -1
  br i1 %12, label %13, label %slice_convert_fusion.1_wrapped.exit

13:                                               ; preds = %11
  %14 = mul nuw nsw i64 %9, 677376
  %15 = mul nuw nsw i64 %9, 169344
  %16 = add nuw nsw i64 %14, 2304
  br label %vector.ph20

vector.ph20:                                      ; preds = %13, %vector.ph20
  %17 = phi i64 [ 0, %13 ], [ %200, %vector.ph20 ]
  %18 = mul nuw nsw i64 %17, 4608
  %19 = add nuw nsw i64 %16, %18
  %20 = mul nuw nsw i64 %17, 1152
  %21 = add nuw nsw i64 %20, %15
  %22 = getelementptr inbounds nuw [9437184 x bfloat], ptr %4, i64 0, i64 %19
  %23 = getelementptr inbounds nuw i8, ptr %22, i64 32
  %24 = getelementptr inbounds nuw i8, ptr %22, i64 64
  %25 = getelementptr inbounds nuw i8, ptr %22, i64 96
  %wide.load23 = load <16 x bfloat>, ptr %22, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load24 = load <16 x bfloat>, ptr %23, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load25 = load <16 x bfloat>, ptr %24, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load26 = load <16 x bfloat>, ptr %25, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %26 = getelementptr inbounds nuw [2359296 x bfloat], ptr %6, i64 0, i64 %21
  %27 = getelementptr inbounds nuw i8, ptr %26, i64 32
  %28 = getelementptr inbounds nuw i8, ptr %26, i64 64
  %29 = getelementptr inbounds nuw i8, ptr %26, i64 96
  store <16 x bfloat> %wide.load23, ptr %26, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load24, ptr %27, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load25, ptr %28, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load26, ptr %29, align 2, !alias.scope !9, !noalias !6
  %30 = or disjoint i64 %19, 64
  %31 = getelementptr inbounds nuw [9437184 x bfloat], ptr %4, i64 0, i64 %30
  %32 = getelementptr inbounds nuw i8, ptr %31, i64 32
  %33 = getelementptr inbounds nuw i8, ptr %31, i64 64
  %34 = getelementptr inbounds nuw i8, ptr %31, i64 96
  %wide.load23.1 = load <16 x bfloat>, ptr %31, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load24.1 = load <16 x bfloat>, ptr %32, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load25.1 = load <16 x bfloat>, ptr %33, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load26.1 = load <16 x bfloat>, ptr %34, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %35 = or disjoint i64 %21, 64
  %36 = getelementptr inbounds nuw [2359296 x bfloat], ptr %6, i64 0, i64 %35
  %37 = getelementptr inbounds nuw i8, ptr %36, i64 32
  %38 = getelementptr inbounds nuw i8, ptr %36, i64 64
  %39 = getelementptr inbounds nuw i8, ptr %36, i64 96
  store <16 x bfloat> %wide.load23.1, ptr %36, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load24.1, ptr %37, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load25.1, ptr %38, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load26.1, ptr %39, align 2, !alias.scope !9, !noalias !6
  %40 = or disjoint i64 %19, 128
  %41 = getelementptr inbounds nuw [9437184 x bfloat], ptr %4, i64 0, i64 %40
  %42 = getelementptr inbounds nuw i8, ptr %41, i64 32
  %43 = getelementptr inbounds nuw i8, ptr %41, i64 64
  %44 = getelementptr inbounds nuw i8, ptr %41, i64 96
  %wide.load23.2 = load <16 x bfloat>, ptr %41, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load24.2 = load <16 x bfloat>, ptr %42, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load25.2 = load <16 x bfloat>, ptr %43, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load26.2 = load <16 x bfloat>, ptr %44, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %45 = add nuw nsw i64 %21, 128
  %46 = getelementptr inbounds nuw [2359296 x bfloat], ptr %6, i64 0, i64 %45
  %47 = getelementptr inbounds nuw i8, ptr %46, i64 32
  %48 = getelementptr inbounds nuw i8, ptr %46, i64 64
  %49 = getelementptr inbounds nuw i8, ptr %46, i64 96
  store <16 x bfloat> %wide.load23.2, ptr %46, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load24.2, ptr %47, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load25.2, ptr %48, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load26.2, ptr %49, align 2, !alias.scope !9, !noalias !6
  %50 = or disjoint i64 %19, 192
  %51 = getelementptr inbounds nuw [9437184 x bfloat], ptr %4, i64 0, i64 %50
  %52 = getelementptr inbounds nuw i8, ptr %51, i64 32
  %53 = getelementptr inbounds nuw i8, ptr %51, i64 64
  %54 = getelementptr inbounds nuw i8, ptr %51, i64 96
  %wide.load23.3 = load <16 x bfloat>, ptr %51, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load24.3 = load <16 x bfloat>, ptr %52, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load25.3 = load <16 x bfloat>, ptr %53, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load26.3 = load <16 x bfloat>, ptr %54, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %55 = add nuw nsw i64 %21, 192
  %56 = getelementptr inbounds nuw [2359296 x bfloat], ptr %6, i64 0, i64 %55
  %57 = getelementptr inbounds nuw i8, ptr %56, i64 32
  %58 = getelementptr inbounds nuw i8, ptr %56, i64 64
  %59 = getelementptr inbounds nuw i8, ptr %56, i64 96
  store <16 x bfloat> %wide.load23.3, ptr %56, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load24.3, ptr %57, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load25.3, ptr %58, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load26.3, ptr %59, align 2, !alias.scope !9, !noalias !6
  %60 = add nuw nsw i64 %19, 256
  %61 = getelementptr inbounds nuw [9437184 x bfloat], ptr %4, i64 0, i64 %60
  %62 = getelementptr inbounds nuw i8, ptr %61, i64 32
  %63 = getelementptr inbounds nuw i8, ptr %61, i64 64
  %64 = getelementptr inbounds nuw i8, ptr %61, i64 96
  %wide.load23.4 = load <16 x bfloat>, ptr %61, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load24.4 = load <16 x bfloat>, ptr %62, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load25.4 = load <16 x bfloat>, ptr %63, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load26.4 = load <16 x bfloat>, ptr %64, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %65 = add nuw nsw i64 %21, 256
  %66 = getelementptr inbounds nuw [2359296 x bfloat], ptr %6, i64 0, i64 %65
  %67 = getelementptr inbounds nuw i8, ptr %66, i64 32
  %68 = getelementptr inbounds nuw i8, ptr %66, i64 64
  %69 = getelementptr inbounds nuw i8, ptr %66, i64 96
  store <16 x bfloat> %wide.load23.4, ptr %66, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load24.4, ptr %67, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load25.4, ptr %68, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load26.4, ptr %69, align 2, !alias.scope !9, !noalias !6
  %70 = add nuw nsw i64 %19, 320
  %71 = getelementptr inbounds nuw [9437184 x bfloat], ptr %4, i64 0, i64 %70
  %72 = getelementptr inbounds nuw i8, ptr %71, i64 32
  %73 = getelementptr inbounds nuw i8, ptr %71, i64 64
  %74 = getelementptr inbounds nuw i8, ptr %71, i64 96
  %wide.load23.5 = load <16 x bfloat>, ptr %71, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load24.5 = load <16 x bfloat>, ptr %72, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load25.5 = load <16 x bfloat>, ptr %73, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load26.5 = load <16 x bfloat>, ptr %74, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %75 = add nuw nsw i64 %21, 320
  %76 = getelementptr inbounds nuw [2359296 x bfloat], ptr %6, i64 0, i64 %75
  %77 = getelementptr inbounds nuw i8, ptr %76, i64 32
  %78 = getelementptr inbounds nuw i8, ptr %76, i64 64
  %79 = getelementptr inbounds nuw i8, ptr %76, i64 96
  store <16 x bfloat> %wide.load23.5, ptr %76, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load24.5, ptr %77, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load25.5, ptr %78, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load26.5, ptr %79, align 2, !alias.scope !9, !noalias !6
  %80 = add nuw nsw i64 %19, 384
  %81 = getelementptr inbounds nuw [9437184 x bfloat], ptr %4, i64 0, i64 %80
  %82 = getelementptr inbounds nuw i8, ptr %81, i64 32
  %83 = getelementptr inbounds nuw i8, ptr %81, i64 64
  %84 = getelementptr inbounds nuw i8, ptr %81, i64 96
  %wide.load23.6 = load <16 x bfloat>, ptr %81, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load24.6 = load <16 x bfloat>, ptr %82, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load25.6 = load <16 x bfloat>, ptr %83, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load26.6 = load <16 x bfloat>, ptr %84, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %85 = add nuw nsw i64 %21, 384
  %86 = getelementptr inbounds nuw [2359296 x bfloat], ptr %6, i64 0, i64 %85
  %87 = getelementptr inbounds nuw i8, ptr %86, i64 32
  %88 = getelementptr inbounds nuw i8, ptr %86, i64 64
  %89 = getelementptr inbounds nuw i8, ptr %86, i64 96
  store <16 x bfloat> %wide.load23.6, ptr %86, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load24.6, ptr %87, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load25.6, ptr %88, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load26.6, ptr %89, align 2, !alias.scope !9, !noalias !6
  %90 = add nuw nsw i64 %19, 448
  %91 = getelementptr inbounds nuw [9437184 x bfloat], ptr %4, i64 0, i64 %90
  %92 = getelementptr inbounds nuw i8, ptr %91, i64 32
  %93 = getelementptr inbounds nuw i8, ptr %91, i64 64
  %94 = getelementptr inbounds nuw i8, ptr %91, i64 96
  %wide.load23.7 = load <16 x bfloat>, ptr %91, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load24.7 = load <16 x bfloat>, ptr %92, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load25.7 = load <16 x bfloat>, ptr %93, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load26.7 = load <16 x bfloat>, ptr %94, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %95 = add nuw nsw i64 %21, 448
  %96 = getelementptr inbounds nuw [2359296 x bfloat], ptr %6, i64 0, i64 %95
  %97 = getelementptr inbounds nuw i8, ptr %96, i64 32
  %98 = getelementptr inbounds nuw i8, ptr %96, i64 64
  %99 = getelementptr inbounds nuw i8, ptr %96, i64 96
  store <16 x bfloat> %wide.load23.7, ptr %96, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load24.7, ptr %97, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load25.7, ptr %98, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load26.7, ptr %99, align 2, !alias.scope !9, !noalias !6
  %100 = add nuw nsw i64 %19, 512
  %101 = getelementptr inbounds nuw [9437184 x bfloat], ptr %4, i64 0, i64 %100
  %102 = getelementptr inbounds nuw i8, ptr %101, i64 32
  %103 = getelementptr inbounds nuw i8, ptr %101, i64 64
  %104 = getelementptr inbounds nuw i8, ptr %101, i64 96
  %wide.load23.8 = load <16 x bfloat>, ptr %101, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load24.8 = load <16 x bfloat>, ptr %102, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load25.8 = load <16 x bfloat>, ptr %103, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load26.8 = load <16 x bfloat>, ptr %104, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %105 = add nuw nsw i64 %21, 512
  %106 = getelementptr inbounds nuw [2359296 x bfloat], ptr %6, i64 0, i64 %105
  %107 = getelementptr inbounds nuw i8, ptr %106, i64 32
  %108 = getelementptr inbounds nuw i8, ptr %106, i64 64
  %109 = getelementptr inbounds nuw i8, ptr %106, i64 96
  store <16 x bfloat> %wide.load23.8, ptr %106, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load24.8, ptr %107, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load25.8, ptr %108, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load26.8, ptr %109, align 2, !alias.scope !9, !noalias !6
  %110 = add nuw nsw i64 %19, 576
  %111 = getelementptr inbounds nuw [9437184 x bfloat], ptr %4, i64 0, i64 %110
  %112 = getelementptr inbounds nuw i8, ptr %111, i64 32
  %113 = getelementptr inbounds nuw i8, ptr %111, i64 64
  %114 = getelementptr inbounds nuw i8, ptr %111, i64 96
  %wide.load23.9 = load <16 x bfloat>, ptr %111, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load24.9 = load <16 x bfloat>, ptr %112, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load25.9 = load <16 x bfloat>, ptr %113, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load26.9 = load <16 x bfloat>, ptr %114, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %115 = add nuw nsw i64 %21, 576
  %116 = getelementptr inbounds nuw [2359296 x bfloat], ptr %6, i64 0, i64 %115
  %117 = getelementptr inbounds nuw i8, ptr %116, i64 32
  %118 = getelementptr inbounds nuw i8, ptr %116, i64 64
  %119 = getelementptr inbounds nuw i8, ptr %116, i64 96
  store <16 x bfloat> %wide.load23.9, ptr %116, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load24.9, ptr %117, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load25.9, ptr %118, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load26.9, ptr %119, align 2, !alias.scope !9, !noalias !6
  %120 = add nuw nsw i64 %19, 640
  %121 = getelementptr inbounds nuw [9437184 x bfloat], ptr %4, i64 0, i64 %120
  %122 = getelementptr inbounds nuw i8, ptr %121, i64 32
  %123 = getelementptr inbounds nuw i8, ptr %121, i64 64
  %124 = getelementptr inbounds nuw i8, ptr %121, i64 96
  %wide.load23.10 = load <16 x bfloat>, ptr %121, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load24.10 = load <16 x bfloat>, ptr %122, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load25.10 = load <16 x bfloat>, ptr %123, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load26.10 = load <16 x bfloat>, ptr %124, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %125 = add nuw nsw i64 %21, 640
  %126 = getelementptr inbounds nuw [2359296 x bfloat], ptr %6, i64 0, i64 %125
  %127 = getelementptr inbounds nuw i8, ptr %126, i64 32
  %128 = getelementptr inbounds nuw i8, ptr %126, i64 64
  %129 = getelementptr inbounds nuw i8, ptr %126, i64 96
  store <16 x bfloat> %wide.load23.10, ptr %126, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load24.10, ptr %127, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load25.10, ptr %128, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load26.10, ptr %129, align 2, !alias.scope !9, !noalias !6
  %130 = add nuw nsw i64 %19, 704
  %131 = getelementptr inbounds nuw [9437184 x bfloat], ptr %4, i64 0, i64 %130
  %132 = getelementptr inbounds nuw i8, ptr %131, i64 32
  %133 = getelementptr inbounds nuw i8, ptr %131, i64 64
  %134 = getelementptr inbounds nuw i8, ptr %131, i64 96
  %wide.load23.11 = load <16 x bfloat>, ptr %131, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load24.11 = load <16 x bfloat>, ptr %132, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load25.11 = load <16 x bfloat>, ptr %133, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load26.11 = load <16 x bfloat>, ptr %134, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %135 = add nuw nsw i64 %21, 704
  %136 = getelementptr inbounds nuw [2359296 x bfloat], ptr %6, i64 0, i64 %135
  %137 = getelementptr inbounds nuw i8, ptr %136, i64 32
  %138 = getelementptr inbounds nuw i8, ptr %136, i64 64
  %139 = getelementptr inbounds nuw i8, ptr %136, i64 96
  store <16 x bfloat> %wide.load23.11, ptr %136, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load24.11, ptr %137, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load25.11, ptr %138, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load26.11, ptr %139, align 2, !alias.scope !9, !noalias !6
  %140 = add nuw nsw i64 %19, 768
  %141 = getelementptr inbounds nuw [9437184 x bfloat], ptr %4, i64 0, i64 %140
  %142 = getelementptr inbounds nuw i8, ptr %141, i64 32
  %143 = getelementptr inbounds nuw i8, ptr %141, i64 64
  %144 = getelementptr inbounds nuw i8, ptr %141, i64 96
  %wide.load23.12 = load <16 x bfloat>, ptr %141, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load24.12 = load <16 x bfloat>, ptr %142, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load25.12 = load <16 x bfloat>, ptr %143, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load26.12 = load <16 x bfloat>, ptr %144, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %145 = add nuw nsw i64 %21, 768
  %146 = getelementptr inbounds nuw [2359296 x bfloat], ptr %6, i64 0, i64 %145
  %147 = getelementptr inbounds nuw i8, ptr %146, i64 32
  %148 = getelementptr inbounds nuw i8, ptr %146, i64 64
  %149 = getelementptr inbounds nuw i8, ptr %146, i64 96
  store <16 x bfloat> %wide.load23.12, ptr %146, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load24.12, ptr %147, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load25.12, ptr %148, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load26.12, ptr %149, align 2, !alias.scope !9, !noalias !6
  %150 = add nuw nsw i64 %19, 832
  %151 = getelementptr inbounds nuw [9437184 x bfloat], ptr %4, i64 0, i64 %150
  %152 = getelementptr inbounds nuw i8, ptr %151, i64 32
  %153 = getelementptr inbounds nuw i8, ptr %151, i64 64
  %154 = getelementptr inbounds nuw i8, ptr %151, i64 96
  %wide.load23.13 = load <16 x bfloat>, ptr %151, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load24.13 = load <16 x bfloat>, ptr %152, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load25.13 = load <16 x bfloat>, ptr %153, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load26.13 = load <16 x bfloat>, ptr %154, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %155 = add nuw nsw i64 %21, 832
  %156 = getelementptr inbounds nuw [2359296 x bfloat], ptr %6, i64 0, i64 %155
  %157 = getelementptr inbounds nuw i8, ptr %156, i64 32
  %158 = getelementptr inbounds nuw i8, ptr %156, i64 64
  %159 = getelementptr inbounds nuw i8, ptr %156, i64 96
  store <16 x bfloat> %wide.load23.13, ptr %156, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load24.13, ptr %157, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load25.13, ptr %158, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load26.13, ptr %159, align 2, !alias.scope !9, !noalias !6
  %160 = add nuw nsw i64 %19, 896
  %161 = getelementptr inbounds nuw [9437184 x bfloat], ptr %4, i64 0, i64 %160
  %162 = getelementptr inbounds nuw i8, ptr %161, i64 32
  %163 = getelementptr inbounds nuw i8, ptr %161, i64 64
  %164 = getelementptr inbounds nuw i8, ptr %161, i64 96
  %wide.load23.14 = load <16 x bfloat>, ptr %161, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load24.14 = load <16 x bfloat>, ptr %162, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load25.14 = load <16 x bfloat>, ptr %163, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load26.14 = load <16 x bfloat>, ptr %164, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %165 = add nuw nsw i64 %21, 896
  %166 = getelementptr inbounds nuw [2359296 x bfloat], ptr %6, i64 0, i64 %165
  %167 = getelementptr inbounds nuw i8, ptr %166, i64 32
  %168 = getelementptr inbounds nuw i8, ptr %166, i64 64
  %169 = getelementptr inbounds nuw i8, ptr %166, i64 96
  store <16 x bfloat> %wide.load23.14, ptr %166, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load24.14, ptr %167, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load25.14, ptr %168, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load26.14, ptr %169, align 2, !alias.scope !9, !noalias !6
  %170 = add nuw nsw i64 %19, 960
  %171 = getelementptr inbounds nuw [9437184 x bfloat], ptr %4, i64 0, i64 %170
  %172 = getelementptr inbounds nuw i8, ptr %171, i64 32
  %173 = getelementptr inbounds nuw i8, ptr %171, i64 64
  %174 = getelementptr inbounds nuw i8, ptr %171, i64 96
  %wide.load23.15 = load <16 x bfloat>, ptr %171, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load24.15 = load <16 x bfloat>, ptr %172, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load25.15 = load <16 x bfloat>, ptr %173, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load26.15 = load <16 x bfloat>, ptr %174, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %175 = add nuw nsw i64 %21, 960
  %176 = getelementptr inbounds nuw [2359296 x bfloat], ptr %6, i64 0, i64 %175
  %177 = getelementptr inbounds nuw i8, ptr %176, i64 32
  %178 = getelementptr inbounds nuw i8, ptr %176, i64 64
  %179 = getelementptr inbounds nuw i8, ptr %176, i64 96
  store <16 x bfloat> %wide.load23.15, ptr %176, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load24.15, ptr %177, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load25.15, ptr %178, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load26.15, ptr %179, align 2, !alias.scope !9, !noalias !6
  %180 = add nuw nsw i64 %19, 1024
  %181 = getelementptr inbounds nuw [9437184 x bfloat], ptr %4, i64 0, i64 %180
  %182 = getelementptr inbounds nuw i8, ptr %181, i64 32
  %183 = getelementptr inbounds nuw i8, ptr %181, i64 64
  %184 = getelementptr inbounds nuw i8, ptr %181, i64 96
  %wide.load23.16 = load <16 x bfloat>, ptr %181, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load24.16 = load <16 x bfloat>, ptr %182, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load25.16 = load <16 x bfloat>, ptr %183, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load26.16 = load <16 x bfloat>, ptr %184, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %185 = add nuw nsw i64 %21, 1024
  %186 = getelementptr inbounds nuw [2359296 x bfloat], ptr %6, i64 0, i64 %185
  %187 = getelementptr inbounds nuw i8, ptr %186, i64 32
  %188 = getelementptr inbounds nuw i8, ptr %186, i64 64
  %189 = getelementptr inbounds nuw i8, ptr %186, i64 96
  store <16 x bfloat> %wide.load23.16, ptr %186, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load24.16, ptr %187, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load25.16, ptr %188, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load26.16, ptr %189, align 2, !alias.scope !9, !noalias !6
  %190 = add nuw nsw i64 %19, 1088
  %191 = getelementptr inbounds nuw [9437184 x bfloat], ptr %4, i64 0, i64 %190
  %192 = getelementptr inbounds nuw i8, ptr %191, i64 32
  %193 = getelementptr inbounds nuw i8, ptr %191, i64 64
  %194 = getelementptr inbounds nuw i8, ptr %191, i64 96
  %wide.load23.17 = load <16 x bfloat>, ptr %191, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load24.17 = load <16 x bfloat>, ptr %192, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load25.17 = load <16 x bfloat>, ptr %193, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load26.17 = load <16 x bfloat>, ptr %194, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %195 = add nuw nsw i64 %21, 1088
  %196 = getelementptr inbounds nuw [2359296 x bfloat], ptr %6, i64 0, i64 %195
  %197 = getelementptr inbounds nuw i8, ptr %196, i64 32
  %198 = getelementptr inbounds nuw i8, ptr %196, i64 64
  %199 = getelementptr inbounds nuw i8, ptr %196, i64 96
  store <16 x bfloat> %wide.load23.17, ptr %196, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load24.17, ptr %197, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load25.17, ptr %198, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load26.17, ptr %199, align 2, !alias.scope !9, !noalias !6
  %200 = add nuw nsw i64 %17, 1
  %exitcond11.not = icmp eq i64 %200, 147
  br i1 %exitcond11.not, label %slice_convert_fusion.1_wrapped.exit, label %vector.ph20, !llvm.loop !11

201:                                              ; preds = %1
  %202 = icmp eq i64 %9, 13
  br i1 %202, label %.preheader, label %slice_convert_fusion.1_wrapped.exit

.preheader:                                       ; preds = %201, %.preheader
  %203 = phi i64 [ %386, %.preheader ], [ 0, %201 ]
  %204 = mul nuw nsw i64 %203, 1152
  %205 = add nuw nsw i64 %204, 2201472
  %206 = mul nuw nsw i64 %203, 4608
  %207 = add nuw nsw i64 %206, 8808192
  %208 = getelementptr inbounds nuw [9437184 x bfloat], ptr %4, i64 0, i64 %207
  %209 = getelementptr inbounds nuw i8, ptr %208, i64 32
  %210 = getelementptr inbounds nuw i8, ptr %208, i64 64
  %211 = getelementptr inbounds nuw i8, ptr %208, i64 96
  %wide.load = load <16 x bfloat>, ptr %208, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load16 = load <16 x bfloat>, ptr %209, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load17 = load <16 x bfloat>, ptr %210, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load18 = load <16 x bfloat>, ptr %211, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %212 = getelementptr inbounds nuw [2359296 x bfloat], ptr %6, i64 0, i64 %205
  %213 = getelementptr inbounds nuw i8, ptr %212, i64 32
  %214 = getelementptr inbounds nuw i8, ptr %212, i64 64
  %215 = getelementptr inbounds nuw i8, ptr %212, i64 96
  store <16 x bfloat> %wide.load, ptr %212, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load16, ptr %213, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load17, ptr %214, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load18, ptr %215, align 2, !alias.scope !9, !noalias !6
  %216 = add nuw nsw i64 %206, 8808256
  %217 = getelementptr inbounds nuw [9437184 x bfloat], ptr %4, i64 0, i64 %216
  %218 = getelementptr inbounds nuw i8, ptr %217, i64 32
  %219 = getelementptr inbounds nuw i8, ptr %217, i64 64
  %220 = getelementptr inbounds nuw i8, ptr %217, i64 96
  %wide.load.1 = load <16 x bfloat>, ptr %217, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load16.1 = load <16 x bfloat>, ptr %218, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load17.1 = load <16 x bfloat>, ptr %219, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load18.1 = load <16 x bfloat>, ptr %220, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %221 = add nuw nsw i64 %204, 2201536
  %222 = getelementptr inbounds nuw [2359296 x bfloat], ptr %6, i64 0, i64 %221
  %223 = getelementptr inbounds nuw i8, ptr %222, i64 32
  %224 = getelementptr inbounds nuw i8, ptr %222, i64 64
  %225 = getelementptr inbounds nuw i8, ptr %222, i64 96
  store <16 x bfloat> %wide.load.1, ptr %222, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load16.1, ptr %223, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load17.1, ptr %224, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load18.1, ptr %225, align 2, !alias.scope !9, !noalias !6
  %226 = add nuw nsw i64 %206, 8808320
  %227 = getelementptr inbounds nuw [9437184 x bfloat], ptr %4, i64 0, i64 %226
  %228 = getelementptr inbounds nuw i8, ptr %227, i64 32
  %229 = getelementptr inbounds nuw i8, ptr %227, i64 64
  %230 = getelementptr inbounds nuw i8, ptr %227, i64 96
  %wide.load.2 = load <16 x bfloat>, ptr %227, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load16.2 = load <16 x bfloat>, ptr %228, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load17.2 = load <16 x bfloat>, ptr %229, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load18.2 = load <16 x bfloat>, ptr %230, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %231 = add nuw nsw i64 %204, 2201600
  %232 = getelementptr inbounds nuw [2359296 x bfloat], ptr %6, i64 0, i64 %231
  %233 = getelementptr inbounds nuw i8, ptr %232, i64 32
  %234 = getelementptr inbounds nuw i8, ptr %232, i64 64
  %235 = getelementptr inbounds nuw i8, ptr %232, i64 96
  store <16 x bfloat> %wide.load.2, ptr %232, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load16.2, ptr %233, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load17.2, ptr %234, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load18.2, ptr %235, align 2, !alias.scope !9, !noalias !6
  %236 = add nuw nsw i64 %206, 8808384
  %237 = getelementptr inbounds nuw [9437184 x bfloat], ptr %4, i64 0, i64 %236
  %238 = getelementptr inbounds nuw i8, ptr %237, i64 32
  %239 = getelementptr inbounds nuw i8, ptr %237, i64 64
  %240 = getelementptr inbounds nuw i8, ptr %237, i64 96
  %wide.load.3 = load <16 x bfloat>, ptr %237, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load16.3 = load <16 x bfloat>, ptr %238, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load17.3 = load <16 x bfloat>, ptr %239, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load18.3 = load <16 x bfloat>, ptr %240, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %241 = add nuw nsw i64 %204, 2201664
  %242 = getelementptr inbounds nuw [2359296 x bfloat], ptr %6, i64 0, i64 %241
  %243 = getelementptr inbounds nuw i8, ptr %242, i64 32
  %244 = getelementptr inbounds nuw i8, ptr %242, i64 64
  %245 = getelementptr inbounds nuw i8, ptr %242, i64 96
  store <16 x bfloat> %wide.load.3, ptr %242, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load16.3, ptr %243, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load17.3, ptr %244, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load18.3, ptr %245, align 2, !alias.scope !9, !noalias !6
  %246 = add nuw nsw i64 %206, 8808448
  %247 = getelementptr inbounds nuw [9437184 x bfloat], ptr %4, i64 0, i64 %246
  %248 = getelementptr inbounds nuw i8, ptr %247, i64 32
  %249 = getelementptr inbounds nuw i8, ptr %247, i64 64
  %250 = getelementptr inbounds nuw i8, ptr %247, i64 96
  %wide.load.4 = load <16 x bfloat>, ptr %247, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load16.4 = load <16 x bfloat>, ptr %248, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load17.4 = load <16 x bfloat>, ptr %249, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load18.4 = load <16 x bfloat>, ptr %250, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %251 = add nuw nsw i64 %204, 2201728
  %252 = getelementptr inbounds nuw [2359296 x bfloat], ptr %6, i64 0, i64 %251
  %253 = getelementptr inbounds nuw i8, ptr %252, i64 32
  %254 = getelementptr inbounds nuw i8, ptr %252, i64 64
  %255 = getelementptr inbounds nuw i8, ptr %252, i64 96
  store <16 x bfloat> %wide.load.4, ptr %252, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load16.4, ptr %253, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load17.4, ptr %254, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load18.4, ptr %255, align 2, !alias.scope !9, !noalias !6
  %256 = add nuw nsw i64 %206, 8808512
  %257 = getelementptr inbounds nuw [9437184 x bfloat], ptr %4, i64 0, i64 %256
  %258 = getelementptr inbounds nuw i8, ptr %257, i64 32
  %259 = getelementptr inbounds nuw i8, ptr %257, i64 64
  %260 = getelementptr inbounds nuw i8, ptr %257, i64 96
  %wide.load.5 = load <16 x bfloat>, ptr %257, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load16.5 = load <16 x bfloat>, ptr %258, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load17.5 = load <16 x bfloat>, ptr %259, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load18.5 = load <16 x bfloat>, ptr %260, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %261 = add nuw nsw i64 %204, 2201792
  %262 = getelementptr inbounds nuw [2359296 x bfloat], ptr %6, i64 0, i64 %261
  %263 = getelementptr inbounds nuw i8, ptr %262, i64 32
  %264 = getelementptr inbounds nuw i8, ptr %262, i64 64
  %265 = getelementptr inbounds nuw i8, ptr %262, i64 96
  store <16 x bfloat> %wide.load.5, ptr %262, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load16.5, ptr %263, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load17.5, ptr %264, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load18.5, ptr %265, align 2, !alias.scope !9, !noalias !6
  %266 = add nuw nsw i64 %206, 8808576
  %267 = getelementptr inbounds nuw [9437184 x bfloat], ptr %4, i64 0, i64 %266
  %268 = getelementptr inbounds nuw i8, ptr %267, i64 32
  %269 = getelementptr inbounds nuw i8, ptr %267, i64 64
  %270 = getelementptr inbounds nuw i8, ptr %267, i64 96
  %wide.load.6 = load <16 x bfloat>, ptr %267, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load16.6 = load <16 x bfloat>, ptr %268, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load17.6 = load <16 x bfloat>, ptr %269, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load18.6 = load <16 x bfloat>, ptr %270, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %271 = add nuw nsw i64 %204, 2201856
  %272 = getelementptr inbounds nuw [2359296 x bfloat], ptr %6, i64 0, i64 %271
  %273 = getelementptr inbounds nuw i8, ptr %272, i64 32
  %274 = getelementptr inbounds nuw i8, ptr %272, i64 64
  %275 = getelementptr inbounds nuw i8, ptr %272, i64 96
  store <16 x bfloat> %wide.load.6, ptr %272, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load16.6, ptr %273, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load17.6, ptr %274, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load18.6, ptr %275, align 2, !alias.scope !9, !noalias !6
  %276 = add nuw nsw i64 %206, 8808640
  %277 = getelementptr inbounds nuw [9437184 x bfloat], ptr %4, i64 0, i64 %276
  %278 = getelementptr inbounds nuw i8, ptr %277, i64 32
  %279 = getelementptr inbounds nuw i8, ptr %277, i64 64
  %280 = getelementptr inbounds nuw i8, ptr %277, i64 96
  %wide.load.7 = load <16 x bfloat>, ptr %277, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load16.7 = load <16 x bfloat>, ptr %278, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load17.7 = load <16 x bfloat>, ptr %279, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load18.7 = load <16 x bfloat>, ptr %280, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %281 = add nuw nsw i64 %204, 2201920
  %282 = getelementptr inbounds nuw [2359296 x bfloat], ptr %6, i64 0, i64 %281
  %283 = getelementptr inbounds nuw i8, ptr %282, i64 32
  %284 = getelementptr inbounds nuw i8, ptr %282, i64 64
  %285 = getelementptr inbounds nuw i8, ptr %282, i64 96
  store <16 x bfloat> %wide.load.7, ptr %282, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load16.7, ptr %283, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load17.7, ptr %284, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load18.7, ptr %285, align 2, !alias.scope !9, !noalias !6
  %286 = add nuw nsw i64 %206, 8808704
  %287 = getelementptr inbounds nuw [9437184 x bfloat], ptr %4, i64 0, i64 %286
  %288 = getelementptr inbounds nuw i8, ptr %287, i64 32
  %289 = getelementptr inbounds nuw i8, ptr %287, i64 64
  %290 = getelementptr inbounds nuw i8, ptr %287, i64 96
  %wide.load.8 = load <16 x bfloat>, ptr %287, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load16.8 = load <16 x bfloat>, ptr %288, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load17.8 = load <16 x bfloat>, ptr %289, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load18.8 = load <16 x bfloat>, ptr %290, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %291 = add nuw nsw i64 %204, 2201984
  %292 = getelementptr inbounds nuw [2359296 x bfloat], ptr %6, i64 0, i64 %291
  %293 = getelementptr inbounds nuw i8, ptr %292, i64 32
  %294 = getelementptr inbounds nuw i8, ptr %292, i64 64
  %295 = getelementptr inbounds nuw i8, ptr %292, i64 96
  store <16 x bfloat> %wide.load.8, ptr %292, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load16.8, ptr %293, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load17.8, ptr %294, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load18.8, ptr %295, align 2, !alias.scope !9, !noalias !6
  %296 = add nuw nsw i64 %206, 8808768
  %297 = getelementptr inbounds nuw [9437184 x bfloat], ptr %4, i64 0, i64 %296
  %298 = getelementptr inbounds nuw i8, ptr %297, i64 32
  %299 = getelementptr inbounds nuw i8, ptr %297, i64 64
  %300 = getelementptr inbounds nuw i8, ptr %297, i64 96
  %wide.load.9 = load <16 x bfloat>, ptr %297, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load16.9 = load <16 x bfloat>, ptr %298, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load17.9 = load <16 x bfloat>, ptr %299, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load18.9 = load <16 x bfloat>, ptr %300, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %301 = add nuw nsw i64 %204, 2202048
  %302 = getelementptr inbounds nuw [2359296 x bfloat], ptr %6, i64 0, i64 %301
  %303 = getelementptr inbounds nuw i8, ptr %302, i64 32
  %304 = getelementptr inbounds nuw i8, ptr %302, i64 64
  %305 = getelementptr inbounds nuw i8, ptr %302, i64 96
  store <16 x bfloat> %wide.load.9, ptr %302, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load16.9, ptr %303, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load17.9, ptr %304, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load18.9, ptr %305, align 2, !alias.scope !9, !noalias !6
  %306 = add nuw nsw i64 %206, 8808832
  %307 = getelementptr inbounds nuw [9437184 x bfloat], ptr %4, i64 0, i64 %306
  %308 = getelementptr inbounds nuw i8, ptr %307, i64 32
  %309 = getelementptr inbounds nuw i8, ptr %307, i64 64
  %310 = getelementptr inbounds nuw i8, ptr %307, i64 96
  %wide.load.10 = load <16 x bfloat>, ptr %307, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load16.10 = load <16 x bfloat>, ptr %308, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load17.10 = load <16 x bfloat>, ptr %309, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load18.10 = load <16 x bfloat>, ptr %310, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %311 = add nuw nsw i64 %204, 2202112
  %312 = getelementptr inbounds nuw [2359296 x bfloat], ptr %6, i64 0, i64 %311
  %313 = getelementptr inbounds nuw i8, ptr %312, i64 32
  %314 = getelementptr inbounds nuw i8, ptr %312, i64 64
  %315 = getelementptr inbounds nuw i8, ptr %312, i64 96
  store <16 x bfloat> %wide.load.10, ptr %312, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load16.10, ptr %313, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load17.10, ptr %314, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load18.10, ptr %315, align 2, !alias.scope !9, !noalias !6
  %316 = add nuw nsw i64 %206, 8808896
  %317 = getelementptr inbounds nuw [9437184 x bfloat], ptr %4, i64 0, i64 %316
  %318 = getelementptr inbounds nuw i8, ptr %317, i64 32
  %319 = getelementptr inbounds nuw i8, ptr %317, i64 64
  %320 = getelementptr inbounds nuw i8, ptr %317, i64 96
  %wide.load.11 = load <16 x bfloat>, ptr %317, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load16.11 = load <16 x bfloat>, ptr %318, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load17.11 = load <16 x bfloat>, ptr %319, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load18.11 = load <16 x bfloat>, ptr %320, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %321 = add nuw nsw i64 %204, 2202176
  %322 = getelementptr inbounds nuw [2359296 x bfloat], ptr %6, i64 0, i64 %321
  %323 = getelementptr inbounds nuw i8, ptr %322, i64 32
  %324 = getelementptr inbounds nuw i8, ptr %322, i64 64
  %325 = getelementptr inbounds nuw i8, ptr %322, i64 96
  store <16 x bfloat> %wide.load.11, ptr %322, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load16.11, ptr %323, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load17.11, ptr %324, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load18.11, ptr %325, align 2, !alias.scope !9, !noalias !6
  %326 = add nuw nsw i64 %206, 8808960
  %327 = getelementptr inbounds nuw [9437184 x bfloat], ptr %4, i64 0, i64 %326
  %328 = getelementptr inbounds nuw i8, ptr %327, i64 32
  %329 = getelementptr inbounds nuw i8, ptr %327, i64 64
  %330 = getelementptr inbounds nuw i8, ptr %327, i64 96
  %wide.load.12 = load <16 x bfloat>, ptr %327, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load16.12 = load <16 x bfloat>, ptr %328, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load17.12 = load <16 x bfloat>, ptr %329, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load18.12 = load <16 x bfloat>, ptr %330, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %331 = add nuw nsw i64 %204, 2202240
  %332 = getelementptr inbounds nuw [2359296 x bfloat], ptr %6, i64 0, i64 %331
  %333 = getelementptr inbounds nuw i8, ptr %332, i64 32
  %334 = getelementptr inbounds nuw i8, ptr %332, i64 64
  %335 = getelementptr inbounds nuw i8, ptr %332, i64 96
  store <16 x bfloat> %wide.load.12, ptr %332, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load16.12, ptr %333, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load17.12, ptr %334, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load18.12, ptr %335, align 2, !alias.scope !9, !noalias !6
  %336 = add nuw nsw i64 %206, 8809024
  %337 = getelementptr inbounds nuw [9437184 x bfloat], ptr %4, i64 0, i64 %336
  %338 = getelementptr inbounds nuw i8, ptr %337, i64 32
  %339 = getelementptr inbounds nuw i8, ptr %337, i64 64
  %340 = getelementptr inbounds nuw i8, ptr %337, i64 96
  %wide.load.13 = load <16 x bfloat>, ptr %337, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load16.13 = load <16 x bfloat>, ptr %338, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load17.13 = load <16 x bfloat>, ptr %339, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load18.13 = load <16 x bfloat>, ptr %340, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %341 = add nuw nsw i64 %204, 2202304
  %342 = getelementptr inbounds nuw [2359296 x bfloat], ptr %6, i64 0, i64 %341
  %343 = getelementptr inbounds nuw i8, ptr %342, i64 32
  %344 = getelementptr inbounds nuw i8, ptr %342, i64 64
  %345 = getelementptr inbounds nuw i8, ptr %342, i64 96
  store <16 x bfloat> %wide.load.13, ptr %342, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load16.13, ptr %343, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load17.13, ptr %344, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load18.13, ptr %345, align 2, !alias.scope !9, !noalias !6
  %346 = add nuw nsw i64 %206, 8809088
  %347 = getelementptr inbounds nuw [9437184 x bfloat], ptr %4, i64 0, i64 %346
  %348 = getelementptr inbounds nuw i8, ptr %347, i64 32
  %349 = getelementptr inbounds nuw i8, ptr %347, i64 64
  %350 = getelementptr inbounds nuw i8, ptr %347, i64 96
  %wide.load.14 = load <16 x bfloat>, ptr %347, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load16.14 = load <16 x bfloat>, ptr %348, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load17.14 = load <16 x bfloat>, ptr %349, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load18.14 = load <16 x bfloat>, ptr %350, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %351 = add nuw nsw i64 %204, 2202368
  %352 = getelementptr inbounds nuw [2359296 x bfloat], ptr %6, i64 0, i64 %351
  %353 = getelementptr inbounds nuw i8, ptr %352, i64 32
  %354 = getelementptr inbounds nuw i8, ptr %352, i64 64
  %355 = getelementptr inbounds nuw i8, ptr %352, i64 96
  store <16 x bfloat> %wide.load.14, ptr %352, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load16.14, ptr %353, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load17.14, ptr %354, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load18.14, ptr %355, align 2, !alias.scope !9, !noalias !6
  %356 = add nuw nsw i64 %206, 8809152
  %357 = getelementptr inbounds nuw [9437184 x bfloat], ptr %4, i64 0, i64 %356
  %358 = getelementptr inbounds nuw i8, ptr %357, i64 32
  %359 = getelementptr inbounds nuw i8, ptr %357, i64 64
  %360 = getelementptr inbounds nuw i8, ptr %357, i64 96
  %wide.load.15 = load <16 x bfloat>, ptr %357, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load16.15 = load <16 x bfloat>, ptr %358, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load17.15 = load <16 x bfloat>, ptr %359, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load18.15 = load <16 x bfloat>, ptr %360, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %361 = add nuw nsw i64 %204, 2202432
  %362 = getelementptr inbounds nuw [2359296 x bfloat], ptr %6, i64 0, i64 %361
  %363 = getelementptr inbounds nuw i8, ptr %362, i64 32
  %364 = getelementptr inbounds nuw i8, ptr %362, i64 64
  %365 = getelementptr inbounds nuw i8, ptr %362, i64 96
  store <16 x bfloat> %wide.load.15, ptr %362, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load16.15, ptr %363, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load17.15, ptr %364, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load18.15, ptr %365, align 2, !alias.scope !9, !noalias !6
  %366 = add nuw nsw i64 %206, 8809216
  %367 = getelementptr inbounds nuw [9437184 x bfloat], ptr %4, i64 0, i64 %366
  %368 = getelementptr inbounds nuw i8, ptr %367, i64 32
  %369 = getelementptr inbounds nuw i8, ptr %367, i64 64
  %370 = getelementptr inbounds nuw i8, ptr %367, i64 96
  %wide.load.16 = load <16 x bfloat>, ptr %367, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load16.16 = load <16 x bfloat>, ptr %368, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load17.16 = load <16 x bfloat>, ptr %369, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load18.16 = load <16 x bfloat>, ptr %370, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %371 = add nuw nsw i64 %204, 2202496
  %372 = getelementptr inbounds nuw [2359296 x bfloat], ptr %6, i64 0, i64 %371
  %373 = getelementptr inbounds nuw i8, ptr %372, i64 32
  %374 = getelementptr inbounds nuw i8, ptr %372, i64 64
  %375 = getelementptr inbounds nuw i8, ptr %372, i64 96
  store <16 x bfloat> %wide.load.16, ptr %372, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load16.16, ptr %373, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load17.16, ptr %374, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load18.16, ptr %375, align 2, !alias.scope !9, !noalias !6
  %376 = add nuw nsw i64 %206, 8809280
  %377 = getelementptr inbounds nuw [9437184 x bfloat], ptr %4, i64 0, i64 %376
  %378 = getelementptr inbounds nuw i8, ptr %377, i64 32
  %379 = getelementptr inbounds nuw i8, ptr %377, i64 64
  %380 = getelementptr inbounds nuw i8, ptr %377, i64 96
  %wide.load.17 = load <16 x bfloat>, ptr %377, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load16.17 = load <16 x bfloat>, ptr %378, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load17.17 = load <16 x bfloat>, ptr %379, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load18.17 = load <16 x bfloat>, ptr %380, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %381 = add nuw nsw i64 %204, 2202560
  %382 = getelementptr inbounds nuw [2359296 x bfloat], ptr %6, i64 0, i64 %381
  %383 = getelementptr inbounds nuw i8, ptr %382, i64 32
  %384 = getelementptr inbounds nuw i8, ptr %382, i64 64
  %385 = getelementptr inbounds nuw i8, ptr %382, i64 96
  store <16 x bfloat> %wide.load.17, ptr %382, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load16.17, ptr %383, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load17.17, ptr %384, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load18.17, ptr %385, align 2, !alias.scope !9, !noalias !6
  %386 = add nuw nsw i64 %203, 1
  %exitcond8.not = icmp eq i64 %386, 137
  br i1 %exitcond8.not, label %slice_convert_fusion.1_wrapped.exit, label %.preheader, !llvm.loop !11

slice_convert_fusion.1_wrapped.exit:              ; preds = %.preheader, %vector.ph20, %11, %201
  ret ptr null
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #1

attributes #0 = { nofree norecurse nosync nounwind uwtable "frame-pointer"="all" "prefer-vector-width"="256" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }

!llvm.module.flags = !{!0, !1}
!xla_cpu_memory_region_name = !{!2}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !{i32 1, !"xla_dylib_index", i64 1}
!2 = !{!"xla_cpu_emitter__loop_fusion_kernel_emitter__hlo_opcode__fusion"}
!3 = !{}
!4 = !{i64 18874368}
!5 = !{i64 4718592}
!6 = !{!7}
!7 = distinct !{!7, !8, !"slice_convert_fusion.1_wrapped: argument 0"}
!8 = distinct !{!8, !"slice_convert_fusion.1_wrapped"}
!9 = !{!10}
!10 = distinct !{!10, !8, !"slice_convert_fusion.1_wrapped: argument 1"}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.unroll.disable"}
