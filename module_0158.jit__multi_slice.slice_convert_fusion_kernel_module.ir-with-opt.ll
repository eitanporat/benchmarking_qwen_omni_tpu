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
  br i1 %10, label %11, label %179

11:                                               ; preds = %1
  %12 = icmp sgt i64 %9, -1
  br i1 %12, label %13, label %slice_convert_fusion_wrapped.exit

13:                                               ; preds = %11
  %14 = mul nuw nsw i64 %9, 602112
  %15 = mul nuw nsw i64 %9, 150528
  %invariant.op6 = or disjoint i64 %14, 3072
  br label %vector.ph21

vector.ph21:                                      ; preds = %13, %vector.ph21
  %16 = phi i64 [ 0, %13 ], [ %178, %vector.ph21 ]
  %17 = shl nuw nsw i64 %16, 12
  %invariant.op.reass = add nuw nsw i64 %17, %invariant.op6
  %18 = shl nuw nsw i64 %16, 10
  %19 = add nuw nsw i64 %18, %15
  %20 = getelementptr inbounds nuw [8388608 x bfloat], ptr %4, i64 0, i64 %invariant.op.reass
  %21 = getelementptr inbounds nuw i8, ptr %20, i64 32
  %22 = getelementptr inbounds nuw i8, ptr %20, i64 64
  %23 = getelementptr inbounds nuw i8, ptr %20, i64 96
  %wide.load24 = load <16 x bfloat>, ptr %20, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load25 = load <16 x bfloat>, ptr %21, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load26 = load <16 x bfloat>, ptr %22, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load27 = load <16 x bfloat>, ptr %23, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %24 = getelementptr inbounds nuw [2097152 x bfloat], ptr %6, i64 0, i64 %19
  %25 = getelementptr inbounds nuw i8, ptr %24, i64 32
  %26 = getelementptr inbounds nuw i8, ptr %24, i64 64
  %27 = getelementptr inbounds nuw i8, ptr %24, i64 96
  store <16 x bfloat> %wide.load24, ptr %24, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load25, ptr %25, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load26, ptr %26, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load27, ptr %27, align 2, !alias.scope !9, !noalias !6
  %28 = or disjoint i64 %invariant.op.reass, 64
  %29 = getelementptr inbounds nuw [8388608 x bfloat], ptr %4, i64 0, i64 %28
  %30 = getelementptr inbounds nuw i8, ptr %29, i64 32
  %31 = getelementptr inbounds nuw i8, ptr %29, i64 64
  %32 = getelementptr inbounds nuw i8, ptr %29, i64 96
  %wide.load24.1 = load <16 x bfloat>, ptr %29, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load25.1 = load <16 x bfloat>, ptr %30, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load26.1 = load <16 x bfloat>, ptr %31, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load27.1 = load <16 x bfloat>, ptr %32, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %33 = or disjoint i64 %19, 64
  %34 = getelementptr inbounds nuw [2097152 x bfloat], ptr %6, i64 0, i64 %33
  %35 = getelementptr inbounds nuw i8, ptr %34, i64 32
  %36 = getelementptr inbounds nuw i8, ptr %34, i64 64
  %37 = getelementptr inbounds nuw i8, ptr %34, i64 96
  store <16 x bfloat> %wide.load24.1, ptr %34, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load25.1, ptr %35, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load26.1, ptr %36, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load27.1, ptr %37, align 2, !alias.scope !9, !noalias !6
  %38 = or disjoint i64 %invariant.op.reass, 128
  %39 = getelementptr inbounds nuw [8388608 x bfloat], ptr %4, i64 0, i64 %38
  %40 = getelementptr inbounds nuw i8, ptr %39, i64 32
  %41 = getelementptr inbounds nuw i8, ptr %39, i64 64
  %42 = getelementptr inbounds nuw i8, ptr %39, i64 96
  %wide.load24.2 = load <16 x bfloat>, ptr %39, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load25.2 = load <16 x bfloat>, ptr %40, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load26.2 = load <16 x bfloat>, ptr %41, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load27.2 = load <16 x bfloat>, ptr %42, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %43 = or disjoint i64 %19, 128
  %44 = getelementptr inbounds nuw [2097152 x bfloat], ptr %6, i64 0, i64 %43
  %45 = getelementptr inbounds nuw i8, ptr %44, i64 32
  %46 = getelementptr inbounds nuw i8, ptr %44, i64 64
  %47 = getelementptr inbounds nuw i8, ptr %44, i64 96
  store <16 x bfloat> %wide.load24.2, ptr %44, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load25.2, ptr %45, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load26.2, ptr %46, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load27.2, ptr %47, align 2, !alias.scope !9, !noalias !6
  %48 = or disjoint i64 %invariant.op.reass, 192
  %49 = getelementptr inbounds nuw [8388608 x bfloat], ptr %4, i64 0, i64 %48
  %50 = getelementptr inbounds nuw i8, ptr %49, i64 32
  %51 = getelementptr inbounds nuw i8, ptr %49, i64 64
  %52 = getelementptr inbounds nuw i8, ptr %49, i64 96
  %wide.load24.3 = load <16 x bfloat>, ptr %49, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load25.3 = load <16 x bfloat>, ptr %50, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load26.3 = load <16 x bfloat>, ptr %51, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load27.3 = load <16 x bfloat>, ptr %52, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %53 = or disjoint i64 %19, 192
  %54 = getelementptr inbounds nuw [2097152 x bfloat], ptr %6, i64 0, i64 %53
  %55 = getelementptr inbounds nuw i8, ptr %54, i64 32
  %56 = getelementptr inbounds nuw i8, ptr %54, i64 64
  %57 = getelementptr inbounds nuw i8, ptr %54, i64 96
  store <16 x bfloat> %wide.load24.3, ptr %54, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load25.3, ptr %55, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load26.3, ptr %56, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load27.3, ptr %57, align 2, !alias.scope !9, !noalias !6
  %58 = or disjoint i64 %invariant.op.reass, 256
  %59 = getelementptr inbounds nuw [8388608 x bfloat], ptr %4, i64 0, i64 %58
  %60 = getelementptr inbounds nuw i8, ptr %59, i64 32
  %61 = getelementptr inbounds nuw i8, ptr %59, i64 64
  %62 = getelementptr inbounds nuw i8, ptr %59, i64 96
  %wide.load24.4 = load <16 x bfloat>, ptr %59, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load25.4 = load <16 x bfloat>, ptr %60, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load26.4 = load <16 x bfloat>, ptr %61, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load27.4 = load <16 x bfloat>, ptr %62, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %63 = or disjoint i64 %19, 256
  %64 = getelementptr inbounds nuw [2097152 x bfloat], ptr %6, i64 0, i64 %63
  %65 = getelementptr inbounds nuw i8, ptr %64, i64 32
  %66 = getelementptr inbounds nuw i8, ptr %64, i64 64
  %67 = getelementptr inbounds nuw i8, ptr %64, i64 96
  store <16 x bfloat> %wide.load24.4, ptr %64, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load25.4, ptr %65, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load26.4, ptr %66, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load27.4, ptr %67, align 2, !alias.scope !9, !noalias !6
  %68 = or disjoint i64 %invariant.op.reass, 320
  %69 = getelementptr inbounds nuw [8388608 x bfloat], ptr %4, i64 0, i64 %68
  %70 = getelementptr inbounds nuw i8, ptr %69, i64 32
  %71 = getelementptr inbounds nuw i8, ptr %69, i64 64
  %72 = getelementptr inbounds nuw i8, ptr %69, i64 96
  %wide.load24.5 = load <16 x bfloat>, ptr %69, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load25.5 = load <16 x bfloat>, ptr %70, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load26.5 = load <16 x bfloat>, ptr %71, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load27.5 = load <16 x bfloat>, ptr %72, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %73 = or disjoint i64 %19, 320
  %74 = getelementptr inbounds nuw [2097152 x bfloat], ptr %6, i64 0, i64 %73
  %75 = getelementptr inbounds nuw i8, ptr %74, i64 32
  %76 = getelementptr inbounds nuw i8, ptr %74, i64 64
  %77 = getelementptr inbounds nuw i8, ptr %74, i64 96
  store <16 x bfloat> %wide.load24.5, ptr %74, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load25.5, ptr %75, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load26.5, ptr %76, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load27.5, ptr %77, align 2, !alias.scope !9, !noalias !6
  %78 = or disjoint i64 %invariant.op.reass, 384
  %79 = getelementptr inbounds nuw [8388608 x bfloat], ptr %4, i64 0, i64 %78
  %80 = getelementptr inbounds nuw i8, ptr %79, i64 32
  %81 = getelementptr inbounds nuw i8, ptr %79, i64 64
  %82 = getelementptr inbounds nuw i8, ptr %79, i64 96
  %wide.load24.6 = load <16 x bfloat>, ptr %79, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load25.6 = load <16 x bfloat>, ptr %80, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load26.6 = load <16 x bfloat>, ptr %81, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load27.6 = load <16 x bfloat>, ptr %82, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %83 = or disjoint i64 %19, 384
  %84 = getelementptr inbounds nuw [2097152 x bfloat], ptr %6, i64 0, i64 %83
  %85 = getelementptr inbounds nuw i8, ptr %84, i64 32
  %86 = getelementptr inbounds nuw i8, ptr %84, i64 64
  %87 = getelementptr inbounds nuw i8, ptr %84, i64 96
  store <16 x bfloat> %wide.load24.6, ptr %84, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load25.6, ptr %85, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load26.6, ptr %86, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load27.6, ptr %87, align 2, !alias.scope !9, !noalias !6
  %88 = or disjoint i64 %invariant.op.reass, 448
  %89 = getelementptr inbounds nuw [8388608 x bfloat], ptr %4, i64 0, i64 %88
  %90 = getelementptr inbounds nuw i8, ptr %89, i64 32
  %91 = getelementptr inbounds nuw i8, ptr %89, i64 64
  %92 = getelementptr inbounds nuw i8, ptr %89, i64 96
  %wide.load24.7 = load <16 x bfloat>, ptr %89, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load25.7 = load <16 x bfloat>, ptr %90, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load26.7 = load <16 x bfloat>, ptr %91, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load27.7 = load <16 x bfloat>, ptr %92, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %93 = or disjoint i64 %19, 448
  %94 = getelementptr inbounds nuw [2097152 x bfloat], ptr %6, i64 0, i64 %93
  %95 = getelementptr inbounds nuw i8, ptr %94, i64 32
  %96 = getelementptr inbounds nuw i8, ptr %94, i64 64
  %97 = getelementptr inbounds nuw i8, ptr %94, i64 96
  store <16 x bfloat> %wide.load24.7, ptr %94, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load25.7, ptr %95, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load26.7, ptr %96, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load27.7, ptr %97, align 2, !alias.scope !9, !noalias !6
  %98 = or disjoint i64 %invariant.op.reass, 512
  %99 = getelementptr inbounds nuw [8388608 x bfloat], ptr %4, i64 0, i64 %98
  %100 = getelementptr inbounds nuw i8, ptr %99, i64 32
  %101 = getelementptr inbounds nuw i8, ptr %99, i64 64
  %102 = getelementptr inbounds nuw i8, ptr %99, i64 96
  %wide.load24.8 = load <16 x bfloat>, ptr %99, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load25.8 = load <16 x bfloat>, ptr %100, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load26.8 = load <16 x bfloat>, ptr %101, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load27.8 = load <16 x bfloat>, ptr %102, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %103 = or disjoint i64 %19, 512
  %104 = getelementptr inbounds nuw [2097152 x bfloat], ptr %6, i64 0, i64 %103
  %105 = getelementptr inbounds nuw i8, ptr %104, i64 32
  %106 = getelementptr inbounds nuw i8, ptr %104, i64 64
  %107 = getelementptr inbounds nuw i8, ptr %104, i64 96
  store <16 x bfloat> %wide.load24.8, ptr %104, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load25.8, ptr %105, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load26.8, ptr %106, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load27.8, ptr %107, align 2, !alias.scope !9, !noalias !6
  %108 = or disjoint i64 %invariant.op.reass, 576
  %109 = getelementptr inbounds nuw [8388608 x bfloat], ptr %4, i64 0, i64 %108
  %110 = getelementptr inbounds nuw i8, ptr %109, i64 32
  %111 = getelementptr inbounds nuw i8, ptr %109, i64 64
  %112 = getelementptr inbounds nuw i8, ptr %109, i64 96
  %wide.load24.9 = load <16 x bfloat>, ptr %109, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load25.9 = load <16 x bfloat>, ptr %110, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load26.9 = load <16 x bfloat>, ptr %111, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load27.9 = load <16 x bfloat>, ptr %112, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %113 = or disjoint i64 %19, 576
  %114 = getelementptr inbounds nuw [2097152 x bfloat], ptr %6, i64 0, i64 %113
  %115 = getelementptr inbounds nuw i8, ptr %114, i64 32
  %116 = getelementptr inbounds nuw i8, ptr %114, i64 64
  %117 = getelementptr inbounds nuw i8, ptr %114, i64 96
  store <16 x bfloat> %wide.load24.9, ptr %114, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load25.9, ptr %115, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load26.9, ptr %116, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load27.9, ptr %117, align 2, !alias.scope !9, !noalias !6
  %118 = or disjoint i64 %invariant.op.reass, 640
  %119 = getelementptr inbounds nuw [8388608 x bfloat], ptr %4, i64 0, i64 %118
  %120 = getelementptr inbounds nuw i8, ptr %119, i64 32
  %121 = getelementptr inbounds nuw i8, ptr %119, i64 64
  %122 = getelementptr inbounds nuw i8, ptr %119, i64 96
  %wide.load24.10 = load <16 x bfloat>, ptr %119, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load25.10 = load <16 x bfloat>, ptr %120, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load26.10 = load <16 x bfloat>, ptr %121, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load27.10 = load <16 x bfloat>, ptr %122, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %123 = or disjoint i64 %19, 640
  %124 = getelementptr inbounds nuw [2097152 x bfloat], ptr %6, i64 0, i64 %123
  %125 = getelementptr inbounds nuw i8, ptr %124, i64 32
  %126 = getelementptr inbounds nuw i8, ptr %124, i64 64
  %127 = getelementptr inbounds nuw i8, ptr %124, i64 96
  store <16 x bfloat> %wide.load24.10, ptr %124, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load25.10, ptr %125, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load26.10, ptr %126, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load27.10, ptr %127, align 2, !alias.scope !9, !noalias !6
  %128 = or disjoint i64 %invariant.op.reass, 704
  %129 = getelementptr inbounds nuw [8388608 x bfloat], ptr %4, i64 0, i64 %128
  %130 = getelementptr inbounds nuw i8, ptr %129, i64 32
  %131 = getelementptr inbounds nuw i8, ptr %129, i64 64
  %132 = getelementptr inbounds nuw i8, ptr %129, i64 96
  %wide.load24.11 = load <16 x bfloat>, ptr %129, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load25.11 = load <16 x bfloat>, ptr %130, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load26.11 = load <16 x bfloat>, ptr %131, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load27.11 = load <16 x bfloat>, ptr %132, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %133 = or disjoint i64 %19, 704
  %134 = getelementptr inbounds nuw [2097152 x bfloat], ptr %6, i64 0, i64 %133
  %135 = getelementptr inbounds nuw i8, ptr %134, i64 32
  %136 = getelementptr inbounds nuw i8, ptr %134, i64 64
  %137 = getelementptr inbounds nuw i8, ptr %134, i64 96
  store <16 x bfloat> %wide.load24.11, ptr %134, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load25.11, ptr %135, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load26.11, ptr %136, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load27.11, ptr %137, align 2, !alias.scope !9, !noalias !6
  %138 = or disjoint i64 %invariant.op.reass, 768
  %139 = getelementptr inbounds nuw [8388608 x bfloat], ptr %4, i64 0, i64 %138
  %140 = getelementptr inbounds nuw i8, ptr %139, i64 32
  %141 = getelementptr inbounds nuw i8, ptr %139, i64 64
  %142 = getelementptr inbounds nuw i8, ptr %139, i64 96
  %wide.load24.12 = load <16 x bfloat>, ptr %139, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load25.12 = load <16 x bfloat>, ptr %140, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load26.12 = load <16 x bfloat>, ptr %141, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load27.12 = load <16 x bfloat>, ptr %142, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %143 = or disjoint i64 %19, 768
  %144 = getelementptr inbounds nuw [2097152 x bfloat], ptr %6, i64 0, i64 %143
  %145 = getelementptr inbounds nuw i8, ptr %144, i64 32
  %146 = getelementptr inbounds nuw i8, ptr %144, i64 64
  %147 = getelementptr inbounds nuw i8, ptr %144, i64 96
  store <16 x bfloat> %wide.load24.12, ptr %144, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load25.12, ptr %145, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load26.12, ptr %146, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load27.12, ptr %147, align 2, !alias.scope !9, !noalias !6
  %148 = or disjoint i64 %invariant.op.reass, 832
  %149 = getelementptr inbounds nuw [8388608 x bfloat], ptr %4, i64 0, i64 %148
  %150 = getelementptr inbounds nuw i8, ptr %149, i64 32
  %151 = getelementptr inbounds nuw i8, ptr %149, i64 64
  %152 = getelementptr inbounds nuw i8, ptr %149, i64 96
  %wide.load24.13 = load <16 x bfloat>, ptr %149, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load25.13 = load <16 x bfloat>, ptr %150, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load26.13 = load <16 x bfloat>, ptr %151, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load27.13 = load <16 x bfloat>, ptr %152, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %153 = or disjoint i64 %19, 832
  %154 = getelementptr inbounds nuw [2097152 x bfloat], ptr %6, i64 0, i64 %153
  %155 = getelementptr inbounds nuw i8, ptr %154, i64 32
  %156 = getelementptr inbounds nuw i8, ptr %154, i64 64
  %157 = getelementptr inbounds nuw i8, ptr %154, i64 96
  store <16 x bfloat> %wide.load24.13, ptr %154, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load25.13, ptr %155, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load26.13, ptr %156, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load27.13, ptr %157, align 2, !alias.scope !9, !noalias !6
  %158 = or disjoint i64 %invariant.op.reass, 896
  %159 = getelementptr inbounds nuw [8388608 x bfloat], ptr %4, i64 0, i64 %158
  %160 = getelementptr inbounds nuw i8, ptr %159, i64 32
  %161 = getelementptr inbounds nuw i8, ptr %159, i64 64
  %162 = getelementptr inbounds nuw i8, ptr %159, i64 96
  %wide.load24.14 = load <16 x bfloat>, ptr %159, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load25.14 = load <16 x bfloat>, ptr %160, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load26.14 = load <16 x bfloat>, ptr %161, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load27.14 = load <16 x bfloat>, ptr %162, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %163 = or disjoint i64 %19, 896
  %164 = getelementptr inbounds nuw [2097152 x bfloat], ptr %6, i64 0, i64 %163
  %165 = getelementptr inbounds nuw i8, ptr %164, i64 32
  %166 = getelementptr inbounds nuw i8, ptr %164, i64 64
  %167 = getelementptr inbounds nuw i8, ptr %164, i64 96
  store <16 x bfloat> %wide.load24.14, ptr %164, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load25.14, ptr %165, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load26.14, ptr %166, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load27.14, ptr %167, align 2, !alias.scope !9, !noalias !6
  %168 = or disjoint i64 %invariant.op.reass, 960
  %169 = getelementptr inbounds nuw [8388608 x bfloat], ptr %4, i64 0, i64 %168
  %170 = getelementptr inbounds nuw i8, ptr %169, i64 32
  %171 = getelementptr inbounds nuw i8, ptr %169, i64 64
  %172 = getelementptr inbounds nuw i8, ptr %169, i64 96
  %wide.load24.15 = load <16 x bfloat>, ptr %169, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load25.15 = load <16 x bfloat>, ptr %170, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load26.15 = load <16 x bfloat>, ptr %171, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load27.15 = load <16 x bfloat>, ptr %172, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %173 = or disjoint i64 %19, 960
  %174 = getelementptr inbounds nuw [2097152 x bfloat], ptr %6, i64 0, i64 %173
  %175 = getelementptr inbounds nuw i8, ptr %174, i64 32
  %176 = getelementptr inbounds nuw i8, ptr %174, i64 64
  %177 = getelementptr inbounds nuw i8, ptr %174, i64 96
  store <16 x bfloat> %wide.load24.15, ptr %174, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load25.15, ptr %175, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load26.15, ptr %176, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load27.15, ptr %177, align 2, !alias.scope !9, !noalias !6
  %178 = add nuw nsw i64 %16, 1
  %exitcond12.not = icmp eq i64 %178, 147
  br i1 %exitcond12.not, label %slice_convert_fusion_wrapped.exit, label %vector.ph21, !llvm.loop !11

179:                                              ; preds = %1
  %180 = icmp eq i64 %9, 13
  br i1 %180, label %.preheader, label %slice_convert_fusion_wrapped.exit

.preheader:                                       ; preds = %179, %.preheader
  %181 = phi i64 [ %344, %.preheader ], [ 0, %179 ]
  %182 = shl nuw nsw i64 %181, 10
  %183 = add nuw nsw i64 %182, 1956864
  %184 = shl nuw nsw i64 %181, 12
  %185 = add nuw nsw i64 %184, 7830528
  %186 = getelementptr inbounds nuw [8388608 x bfloat], ptr %4, i64 0, i64 %185
  %187 = getelementptr inbounds nuw i8, ptr %186, i64 32
  %188 = getelementptr inbounds nuw i8, ptr %186, i64 64
  %189 = getelementptr inbounds nuw i8, ptr %186, i64 96
  %wide.load = load <16 x bfloat>, ptr %186, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load17 = load <16 x bfloat>, ptr %187, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load18 = load <16 x bfloat>, ptr %188, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load19 = load <16 x bfloat>, ptr %189, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %190 = getelementptr inbounds nuw [2097152 x bfloat], ptr %6, i64 0, i64 %183
  %191 = getelementptr inbounds nuw i8, ptr %190, i64 32
  %192 = getelementptr inbounds nuw i8, ptr %190, i64 64
  %193 = getelementptr inbounds nuw i8, ptr %190, i64 96
  store <16 x bfloat> %wide.load, ptr %190, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load17, ptr %191, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load18, ptr %192, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load19, ptr %193, align 2, !alias.scope !9, !noalias !6
  %194 = add nuw nsw i64 %184, 7830592
  %195 = getelementptr inbounds nuw [8388608 x bfloat], ptr %4, i64 0, i64 %194
  %196 = getelementptr inbounds nuw i8, ptr %195, i64 32
  %197 = getelementptr inbounds nuw i8, ptr %195, i64 64
  %198 = getelementptr inbounds nuw i8, ptr %195, i64 96
  %wide.load.1 = load <16 x bfloat>, ptr %195, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load17.1 = load <16 x bfloat>, ptr %196, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load18.1 = load <16 x bfloat>, ptr %197, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load19.1 = load <16 x bfloat>, ptr %198, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %199 = add nuw nsw i64 %182, 1956928
  %200 = getelementptr inbounds nuw [2097152 x bfloat], ptr %6, i64 0, i64 %199
  %201 = getelementptr inbounds nuw i8, ptr %200, i64 32
  %202 = getelementptr inbounds nuw i8, ptr %200, i64 64
  %203 = getelementptr inbounds nuw i8, ptr %200, i64 96
  store <16 x bfloat> %wide.load.1, ptr %200, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load17.1, ptr %201, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load18.1, ptr %202, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load19.1, ptr %203, align 2, !alias.scope !9, !noalias !6
  %204 = add nuw nsw i64 %184, 7830656
  %205 = getelementptr inbounds nuw [8388608 x bfloat], ptr %4, i64 0, i64 %204
  %206 = getelementptr inbounds nuw i8, ptr %205, i64 32
  %207 = getelementptr inbounds nuw i8, ptr %205, i64 64
  %208 = getelementptr inbounds nuw i8, ptr %205, i64 96
  %wide.load.2 = load <16 x bfloat>, ptr %205, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load17.2 = load <16 x bfloat>, ptr %206, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load18.2 = load <16 x bfloat>, ptr %207, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load19.2 = load <16 x bfloat>, ptr %208, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %209 = add nuw nsw i64 %182, 1956992
  %210 = getelementptr inbounds nuw [2097152 x bfloat], ptr %6, i64 0, i64 %209
  %211 = getelementptr inbounds nuw i8, ptr %210, i64 32
  %212 = getelementptr inbounds nuw i8, ptr %210, i64 64
  %213 = getelementptr inbounds nuw i8, ptr %210, i64 96
  store <16 x bfloat> %wide.load.2, ptr %210, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load17.2, ptr %211, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load18.2, ptr %212, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load19.2, ptr %213, align 2, !alias.scope !9, !noalias !6
  %214 = add nuw nsw i64 %184, 7830720
  %215 = getelementptr inbounds nuw [8388608 x bfloat], ptr %4, i64 0, i64 %214
  %216 = getelementptr inbounds nuw i8, ptr %215, i64 32
  %217 = getelementptr inbounds nuw i8, ptr %215, i64 64
  %218 = getelementptr inbounds nuw i8, ptr %215, i64 96
  %wide.load.3 = load <16 x bfloat>, ptr %215, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load17.3 = load <16 x bfloat>, ptr %216, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load18.3 = load <16 x bfloat>, ptr %217, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load19.3 = load <16 x bfloat>, ptr %218, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %219 = add nuw nsw i64 %182, 1957056
  %220 = getelementptr inbounds nuw [2097152 x bfloat], ptr %6, i64 0, i64 %219
  %221 = getelementptr inbounds nuw i8, ptr %220, i64 32
  %222 = getelementptr inbounds nuw i8, ptr %220, i64 64
  %223 = getelementptr inbounds nuw i8, ptr %220, i64 96
  store <16 x bfloat> %wide.load.3, ptr %220, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load17.3, ptr %221, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load18.3, ptr %222, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load19.3, ptr %223, align 2, !alias.scope !9, !noalias !6
  %224 = add nuw nsw i64 %184, 7830784
  %225 = getelementptr inbounds nuw [8388608 x bfloat], ptr %4, i64 0, i64 %224
  %226 = getelementptr inbounds nuw i8, ptr %225, i64 32
  %227 = getelementptr inbounds nuw i8, ptr %225, i64 64
  %228 = getelementptr inbounds nuw i8, ptr %225, i64 96
  %wide.load.4 = load <16 x bfloat>, ptr %225, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load17.4 = load <16 x bfloat>, ptr %226, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load18.4 = load <16 x bfloat>, ptr %227, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load19.4 = load <16 x bfloat>, ptr %228, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %229 = add nuw nsw i64 %182, 1957120
  %230 = getelementptr inbounds nuw [2097152 x bfloat], ptr %6, i64 0, i64 %229
  %231 = getelementptr inbounds nuw i8, ptr %230, i64 32
  %232 = getelementptr inbounds nuw i8, ptr %230, i64 64
  %233 = getelementptr inbounds nuw i8, ptr %230, i64 96
  store <16 x bfloat> %wide.load.4, ptr %230, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load17.4, ptr %231, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load18.4, ptr %232, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load19.4, ptr %233, align 2, !alias.scope !9, !noalias !6
  %234 = add nuw nsw i64 %184, 7830848
  %235 = getelementptr inbounds nuw [8388608 x bfloat], ptr %4, i64 0, i64 %234
  %236 = getelementptr inbounds nuw i8, ptr %235, i64 32
  %237 = getelementptr inbounds nuw i8, ptr %235, i64 64
  %238 = getelementptr inbounds nuw i8, ptr %235, i64 96
  %wide.load.5 = load <16 x bfloat>, ptr %235, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load17.5 = load <16 x bfloat>, ptr %236, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load18.5 = load <16 x bfloat>, ptr %237, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load19.5 = load <16 x bfloat>, ptr %238, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %239 = add nuw nsw i64 %182, 1957184
  %240 = getelementptr inbounds nuw [2097152 x bfloat], ptr %6, i64 0, i64 %239
  %241 = getelementptr inbounds nuw i8, ptr %240, i64 32
  %242 = getelementptr inbounds nuw i8, ptr %240, i64 64
  %243 = getelementptr inbounds nuw i8, ptr %240, i64 96
  store <16 x bfloat> %wide.load.5, ptr %240, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load17.5, ptr %241, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load18.5, ptr %242, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load19.5, ptr %243, align 2, !alias.scope !9, !noalias !6
  %244 = add nuw nsw i64 %184, 7830912
  %245 = getelementptr inbounds nuw [8388608 x bfloat], ptr %4, i64 0, i64 %244
  %246 = getelementptr inbounds nuw i8, ptr %245, i64 32
  %247 = getelementptr inbounds nuw i8, ptr %245, i64 64
  %248 = getelementptr inbounds nuw i8, ptr %245, i64 96
  %wide.load.6 = load <16 x bfloat>, ptr %245, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load17.6 = load <16 x bfloat>, ptr %246, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load18.6 = load <16 x bfloat>, ptr %247, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load19.6 = load <16 x bfloat>, ptr %248, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %249 = add nuw nsw i64 %182, 1957248
  %250 = getelementptr inbounds nuw [2097152 x bfloat], ptr %6, i64 0, i64 %249
  %251 = getelementptr inbounds nuw i8, ptr %250, i64 32
  %252 = getelementptr inbounds nuw i8, ptr %250, i64 64
  %253 = getelementptr inbounds nuw i8, ptr %250, i64 96
  store <16 x bfloat> %wide.load.6, ptr %250, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load17.6, ptr %251, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load18.6, ptr %252, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load19.6, ptr %253, align 2, !alias.scope !9, !noalias !6
  %254 = add nuw nsw i64 %184, 7830976
  %255 = getelementptr inbounds nuw [8388608 x bfloat], ptr %4, i64 0, i64 %254
  %256 = getelementptr inbounds nuw i8, ptr %255, i64 32
  %257 = getelementptr inbounds nuw i8, ptr %255, i64 64
  %258 = getelementptr inbounds nuw i8, ptr %255, i64 96
  %wide.load.7 = load <16 x bfloat>, ptr %255, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load17.7 = load <16 x bfloat>, ptr %256, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load18.7 = load <16 x bfloat>, ptr %257, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load19.7 = load <16 x bfloat>, ptr %258, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %259 = add nuw nsw i64 %182, 1957312
  %260 = getelementptr inbounds nuw [2097152 x bfloat], ptr %6, i64 0, i64 %259
  %261 = getelementptr inbounds nuw i8, ptr %260, i64 32
  %262 = getelementptr inbounds nuw i8, ptr %260, i64 64
  %263 = getelementptr inbounds nuw i8, ptr %260, i64 96
  store <16 x bfloat> %wide.load.7, ptr %260, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load17.7, ptr %261, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load18.7, ptr %262, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load19.7, ptr %263, align 2, !alias.scope !9, !noalias !6
  %264 = add nuw nsw i64 %184, 7831040
  %265 = getelementptr inbounds nuw [8388608 x bfloat], ptr %4, i64 0, i64 %264
  %266 = getelementptr inbounds nuw i8, ptr %265, i64 32
  %267 = getelementptr inbounds nuw i8, ptr %265, i64 64
  %268 = getelementptr inbounds nuw i8, ptr %265, i64 96
  %wide.load.8 = load <16 x bfloat>, ptr %265, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load17.8 = load <16 x bfloat>, ptr %266, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load18.8 = load <16 x bfloat>, ptr %267, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load19.8 = load <16 x bfloat>, ptr %268, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %269 = add nuw nsw i64 %182, 1957376
  %270 = getelementptr inbounds nuw [2097152 x bfloat], ptr %6, i64 0, i64 %269
  %271 = getelementptr inbounds nuw i8, ptr %270, i64 32
  %272 = getelementptr inbounds nuw i8, ptr %270, i64 64
  %273 = getelementptr inbounds nuw i8, ptr %270, i64 96
  store <16 x bfloat> %wide.load.8, ptr %270, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load17.8, ptr %271, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load18.8, ptr %272, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load19.8, ptr %273, align 2, !alias.scope !9, !noalias !6
  %274 = add nuw nsw i64 %184, 7831104
  %275 = getelementptr inbounds nuw [8388608 x bfloat], ptr %4, i64 0, i64 %274
  %276 = getelementptr inbounds nuw i8, ptr %275, i64 32
  %277 = getelementptr inbounds nuw i8, ptr %275, i64 64
  %278 = getelementptr inbounds nuw i8, ptr %275, i64 96
  %wide.load.9 = load <16 x bfloat>, ptr %275, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load17.9 = load <16 x bfloat>, ptr %276, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load18.9 = load <16 x bfloat>, ptr %277, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load19.9 = load <16 x bfloat>, ptr %278, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %279 = add nuw nsw i64 %182, 1957440
  %280 = getelementptr inbounds nuw [2097152 x bfloat], ptr %6, i64 0, i64 %279
  %281 = getelementptr inbounds nuw i8, ptr %280, i64 32
  %282 = getelementptr inbounds nuw i8, ptr %280, i64 64
  %283 = getelementptr inbounds nuw i8, ptr %280, i64 96
  store <16 x bfloat> %wide.load.9, ptr %280, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load17.9, ptr %281, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load18.9, ptr %282, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load19.9, ptr %283, align 2, !alias.scope !9, !noalias !6
  %284 = add nuw nsw i64 %184, 7831168
  %285 = getelementptr inbounds nuw [8388608 x bfloat], ptr %4, i64 0, i64 %284
  %286 = getelementptr inbounds nuw i8, ptr %285, i64 32
  %287 = getelementptr inbounds nuw i8, ptr %285, i64 64
  %288 = getelementptr inbounds nuw i8, ptr %285, i64 96
  %wide.load.10 = load <16 x bfloat>, ptr %285, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load17.10 = load <16 x bfloat>, ptr %286, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load18.10 = load <16 x bfloat>, ptr %287, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load19.10 = load <16 x bfloat>, ptr %288, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %289 = add nuw nsw i64 %182, 1957504
  %290 = getelementptr inbounds nuw [2097152 x bfloat], ptr %6, i64 0, i64 %289
  %291 = getelementptr inbounds nuw i8, ptr %290, i64 32
  %292 = getelementptr inbounds nuw i8, ptr %290, i64 64
  %293 = getelementptr inbounds nuw i8, ptr %290, i64 96
  store <16 x bfloat> %wide.load.10, ptr %290, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load17.10, ptr %291, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load18.10, ptr %292, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load19.10, ptr %293, align 2, !alias.scope !9, !noalias !6
  %294 = add nuw nsw i64 %184, 7831232
  %295 = getelementptr inbounds nuw [8388608 x bfloat], ptr %4, i64 0, i64 %294
  %296 = getelementptr inbounds nuw i8, ptr %295, i64 32
  %297 = getelementptr inbounds nuw i8, ptr %295, i64 64
  %298 = getelementptr inbounds nuw i8, ptr %295, i64 96
  %wide.load.11 = load <16 x bfloat>, ptr %295, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load17.11 = load <16 x bfloat>, ptr %296, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load18.11 = load <16 x bfloat>, ptr %297, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load19.11 = load <16 x bfloat>, ptr %298, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %299 = add nuw nsw i64 %182, 1957568
  %300 = getelementptr inbounds nuw [2097152 x bfloat], ptr %6, i64 0, i64 %299
  %301 = getelementptr inbounds nuw i8, ptr %300, i64 32
  %302 = getelementptr inbounds nuw i8, ptr %300, i64 64
  %303 = getelementptr inbounds nuw i8, ptr %300, i64 96
  store <16 x bfloat> %wide.load.11, ptr %300, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load17.11, ptr %301, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load18.11, ptr %302, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load19.11, ptr %303, align 2, !alias.scope !9, !noalias !6
  %304 = add nuw nsw i64 %184, 7831296
  %305 = getelementptr inbounds nuw [8388608 x bfloat], ptr %4, i64 0, i64 %304
  %306 = getelementptr inbounds nuw i8, ptr %305, i64 32
  %307 = getelementptr inbounds nuw i8, ptr %305, i64 64
  %308 = getelementptr inbounds nuw i8, ptr %305, i64 96
  %wide.load.12 = load <16 x bfloat>, ptr %305, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load17.12 = load <16 x bfloat>, ptr %306, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load18.12 = load <16 x bfloat>, ptr %307, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load19.12 = load <16 x bfloat>, ptr %308, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %309 = add nuw nsw i64 %182, 1957632
  %310 = getelementptr inbounds nuw [2097152 x bfloat], ptr %6, i64 0, i64 %309
  %311 = getelementptr inbounds nuw i8, ptr %310, i64 32
  %312 = getelementptr inbounds nuw i8, ptr %310, i64 64
  %313 = getelementptr inbounds nuw i8, ptr %310, i64 96
  store <16 x bfloat> %wide.load.12, ptr %310, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load17.12, ptr %311, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load18.12, ptr %312, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load19.12, ptr %313, align 2, !alias.scope !9, !noalias !6
  %314 = add nuw nsw i64 %184, 7831360
  %315 = getelementptr inbounds nuw [8388608 x bfloat], ptr %4, i64 0, i64 %314
  %316 = getelementptr inbounds nuw i8, ptr %315, i64 32
  %317 = getelementptr inbounds nuw i8, ptr %315, i64 64
  %318 = getelementptr inbounds nuw i8, ptr %315, i64 96
  %wide.load.13 = load <16 x bfloat>, ptr %315, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load17.13 = load <16 x bfloat>, ptr %316, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load18.13 = load <16 x bfloat>, ptr %317, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load19.13 = load <16 x bfloat>, ptr %318, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %319 = add nuw nsw i64 %182, 1957696
  %320 = getelementptr inbounds nuw [2097152 x bfloat], ptr %6, i64 0, i64 %319
  %321 = getelementptr inbounds nuw i8, ptr %320, i64 32
  %322 = getelementptr inbounds nuw i8, ptr %320, i64 64
  %323 = getelementptr inbounds nuw i8, ptr %320, i64 96
  store <16 x bfloat> %wide.load.13, ptr %320, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load17.13, ptr %321, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load18.13, ptr %322, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load19.13, ptr %323, align 2, !alias.scope !9, !noalias !6
  %324 = add nuw nsw i64 %184, 7831424
  %325 = getelementptr inbounds nuw [8388608 x bfloat], ptr %4, i64 0, i64 %324
  %326 = getelementptr inbounds nuw i8, ptr %325, i64 32
  %327 = getelementptr inbounds nuw i8, ptr %325, i64 64
  %328 = getelementptr inbounds nuw i8, ptr %325, i64 96
  %wide.load.14 = load <16 x bfloat>, ptr %325, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load17.14 = load <16 x bfloat>, ptr %326, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load18.14 = load <16 x bfloat>, ptr %327, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load19.14 = load <16 x bfloat>, ptr %328, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %329 = add nuw nsw i64 %182, 1957760
  %330 = getelementptr inbounds nuw [2097152 x bfloat], ptr %6, i64 0, i64 %329
  %331 = getelementptr inbounds nuw i8, ptr %330, i64 32
  %332 = getelementptr inbounds nuw i8, ptr %330, i64 64
  %333 = getelementptr inbounds nuw i8, ptr %330, i64 96
  store <16 x bfloat> %wide.load.14, ptr %330, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load17.14, ptr %331, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load18.14, ptr %332, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load19.14, ptr %333, align 2, !alias.scope !9, !noalias !6
  %334 = add nuw nsw i64 %184, 7831488
  %335 = getelementptr inbounds nuw [8388608 x bfloat], ptr %4, i64 0, i64 %334
  %336 = getelementptr inbounds nuw i8, ptr %335, i64 32
  %337 = getelementptr inbounds nuw i8, ptr %335, i64 64
  %338 = getelementptr inbounds nuw i8, ptr %335, i64 96
  %wide.load.15 = load <16 x bfloat>, ptr %335, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load17.15 = load <16 x bfloat>, ptr %336, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load18.15 = load <16 x bfloat>, ptr %337, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load19.15 = load <16 x bfloat>, ptr %338, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %339 = add nuw nsw i64 %182, 1957824
  %340 = getelementptr inbounds nuw [2097152 x bfloat], ptr %6, i64 0, i64 %339
  %341 = getelementptr inbounds nuw i8, ptr %340, i64 32
  %342 = getelementptr inbounds nuw i8, ptr %340, i64 64
  %343 = getelementptr inbounds nuw i8, ptr %340, i64 96
  store <16 x bfloat> %wide.load.15, ptr %340, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load17.15, ptr %341, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load18.15, ptr %342, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load19.15, ptr %343, align 2, !alias.scope !9, !noalias !6
  %344 = add nuw nsw i64 %181, 1
  %exitcond9.not = icmp eq i64 %344, 137
  br i1 %exitcond9.not, label %slice_convert_fusion_wrapped.exit, label %.preheader, !llvm.loop !11

slice_convert_fusion_wrapped.exit:                ; preds = %.preheader, %vector.ph21, %11, %179
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
!4 = !{i64 16777216}
!5 = !{i64 4194304}
!6 = !{!7}
!7 = distinct !{!7, !8, !"slice_convert_fusion_wrapped: argument 0"}
!8 = distinct !{!8, !"slice_convert_fusion_wrapped"}
!9 = !{!10}
!10 = distinct !{!10, !8, !"slice_convert_fusion_wrapped: argument 1"}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.unroll.disable"}
