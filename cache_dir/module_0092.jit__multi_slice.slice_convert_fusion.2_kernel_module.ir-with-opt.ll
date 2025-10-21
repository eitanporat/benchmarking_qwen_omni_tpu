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
  br i1 %10, label %11, label %213

11:                                               ; preds = %1
  %12 = icmp sgt i64 %9, -1
  br i1 %12, label %13, label %slice_convert_fusion.2_wrapped.exit

13:                                               ; preds = %11
  %14 = mul nuw nsw i64 %9, 357232
  %15 = mul nuw nsw i64 %9, 89308
  %16 = add nuw nsw i64 %14, 1076
  br label %iter.check23

iter.check23:                                     ; preds = %13, %iter.check23
  %17 = phi i64 [ 0, %13 ], [ %212, %iter.check23 ]
  %18 = mul nuw nsw i64 %17, 4304
  %19 = mul nuw nsw i64 %17, 1076
  %20 = add nuw nsw i64 %19, %15
  %21 = add nuw nsw i64 %16, %18
  %22 = getelementptr inbounds nuw [4958208 x bfloat], ptr %4, i64 0, i64 %21
  %23 = getelementptr inbounds nuw i8, ptr %22, i64 32
  %24 = getelementptr inbounds nuw i8, ptr %22, i64 64
  %25 = getelementptr inbounds nuw i8, ptr %22, i64 96
  %wide.load28 = load <16 x bfloat>, ptr %22, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load29 = load <16 x bfloat>, ptr %23, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load30 = load <16 x bfloat>, ptr %24, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load31 = load <16 x bfloat>, ptr %25, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %26 = getelementptr inbounds nuw [1239552 x bfloat], ptr %6, i64 0, i64 %20
  %27 = getelementptr inbounds nuw i8, ptr %26, i64 32
  %28 = getelementptr inbounds nuw i8, ptr %26, i64 64
  %29 = getelementptr inbounds nuw i8, ptr %26, i64 96
  store <16 x bfloat> %wide.load28, ptr %26, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load29, ptr %27, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load30, ptr %28, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load31, ptr %29, align 2, !alias.scope !9, !noalias !6
  %30 = add nuw nsw i64 %21, 64
  %31 = getelementptr inbounds nuw [4958208 x bfloat], ptr %4, i64 0, i64 %30
  %32 = getelementptr inbounds nuw i8, ptr %31, i64 32
  %33 = getelementptr inbounds nuw i8, ptr %31, i64 64
  %34 = getelementptr inbounds nuw i8, ptr %31, i64 96
  %wide.load28.1 = load <16 x bfloat>, ptr %31, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load29.1 = load <16 x bfloat>, ptr %32, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load30.1 = load <16 x bfloat>, ptr %33, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load31.1 = load <16 x bfloat>, ptr %34, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %35 = add nuw nsw i64 %20, 64
  %36 = getelementptr inbounds nuw [1239552 x bfloat], ptr %6, i64 0, i64 %35
  %37 = getelementptr inbounds nuw i8, ptr %36, i64 32
  %38 = getelementptr inbounds nuw i8, ptr %36, i64 64
  %39 = getelementptr inbounds nuw i8, ptr %36, i64 96
  store <16 x bfloat> %wide.load28.1, ptr %36, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load29.1, ptr %37, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load30.1, ptr %38, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load31.1, ptr %39, align 2, !alias.scope !9, !noalias !6
  %40 = add nuw nsw i64 %21, 128
  %41 = getelementptr inbounds nuw [4958208 x bfloat], ptr %4, i64 0, i64 %40
  %42 = getelementptr inbounds nuw i8, ptr %41, i64 32
  %43 = getelementptr inbounds nuw i8, ptr %41, i64 64
  %44 = getelementptr inbounds nuw i8, ptr %41, i64 96
  %wide.load28.2 = load <16 x bfloat>, ptr %41, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load29.2 = load <16 x bfloat>, ptr %42, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load30.2 = load <16 x bfloat>, ptr %43, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load31.2 = load <16 x bfloat>, ptr %44, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %45 = add nuw nsw i64 %20, 128
  %46 = getelementptr inbounds nuw [1239552 x bfloat], ptr %6, i64 0, i64 %45
  %47 = getelementptr inbounds nuw i8, ptr %46, i64 32
  %48 = getelementptr inbounds nuw i8, ptr %46, i64 64
  %49 = getelementptr inbounds nuw i8, ptr %46, i64 96
  store <16 x bfloat> %wide.load28.2, ptr %46, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load29.2, ptr %47, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load30.2, ptr %48, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load31.2, ptr %49, align 2, !alias.scope !9, !noalias !6
  %50 = add nuw nsw i64 %21, 192
  %51 = getelementptr inbounds nuw [4958208 x bfloat], ptr %4, i64 0, i64 %50
  %52 = getelementptr inbounds nuw i8, ptr %51, i64 32
  %53 = getelementptr inbounds nuw i8, ptr %51, i64 64
  %54 = getelementptr inbounds nuw i8, ptr %51, i64 96
  %wide.load28.3 = load <16 x bfloat>, ptr %51, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load29.3 = load <16 x bfloat>, ptr %52, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load30.3 = load <16 x bfloat>, ptr %53, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load31.3 = load <16 x bfloat>, ptr %54, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %55 = add nuw nsw i64 %20, 192
  %56 = getelementptr inbounds nuw [1239552 x bfloat], ptr %6, i64 0, i64 %55
  %57 = getelementptr inbounds nuw i8, ptr %56, i64 32
  %58 = getelementptr inbounds nuw i8, ptr %56, i64 64
  %59 = getelementptr inbounds nuw i8, ptr %56, i64 96
  store <16 x bfloat> %wide.load28.3, ptr %56, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load29.3, ptr %57, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load30.3, ptr %58, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load31.3, ptr %59, align 2, !alias.scope !9, !noalias !6
  %60 = add nuw nsw i64 %21, 256
  %61 = getelementptr inbounds nuw [4958208 x bfloat], ptr %4, i64 0, i64 %60
  %62 = getelementptr inbounds nuw i8, ptr %61, i64 32
  %63 = getelementptr inbounds nuw i8, ptr %61, i64 64
  %64 = getelementptr inbounds nuw i8, ptr %61, i64 96
  %wide.load28.4 = load <16 x bfloat>, ptr %61, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load29.4 = load <16 x bfloat>, ptr %62, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load30.4 = load <16 x bfloat>, ptr %63, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load31.4 = load <16 x bfloat>, ptr %64, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %65 = add nuw nsw i64 %20, 256
  %66 = getelementptr inbounds nuw [1239552 x bfloat], ptr %6, i64 0, i64 %65
  %67 = getelementptr inbounds nuw i8, ptr %66, i64 32
  %68 = getelementptr inbounds nuw i8, ptr %66, i64 64
  %69 = getelementptr inbounds nuw i8, ptr %66, i64 96
  store <16 x bfloat> %wide.load28.4, ptr %66, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load29.4, ptr %67, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load30.4, ptr %68, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load31.4, ptr %69, align 2, !alias.scope !9, !noalias !6
  %70 = add nuw nsw i64 %21, 320
  %71 = getelementptr inbounds nuw [4958208 x bfloat], ptr %4, i64 0, i64 %70
  %72 = getelementptr inbounds nuw i8, ptr %71, i64 32
  %73 = getelementptr inbounds nuw i8, ptr %71, i64 64
  %74 = getelementptr inbounds nuw i8, ptr %71, i64 96
  %wide.load28.5 = load <16 x bfloat>, ptr %71, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load29.5 = load <16 x bfloat>, ptr %72, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load30.5 = load <16 x bfloat>, ptr %73, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load31.5 = load <16 x bfloat>, ptr %74, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %75 = add nuw nsw i64 %20, 320
  %76 = getelementptr inbounds nuw [1239552 x bfloat], ptr %6, i64 0, i64 %75
  %77 = getelementptr inbounds nuw i8, ptr %76, i64 32
  %78 = getelementptr inbounds nuw i8, ptr %76, i64 64
  %79 = getelementptr inbounds nuw i8, ptr %76, i64 96
  store <16 x bfloat> %wide.load28.5, ptr %76, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load29.5, ptr %77, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load30.5, ptr %78, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load31.5, ptr %79, align 2, !alias.scope !9, !noalias !6
  %80 = add nuw nsw i64 %21, 384
  %81 = getelementptr inbounds nuw [4958208 x bfloat], ptr %4, i64 0, i64 %80
  %82 = getelementptr inbounds nuw i8, ptr %81, i64 32
  %83 = getelementptr inbounds nuw i8, ptr %81, i64 64
  %84 = getelementptr inbounds nuw i8, ptr %81, i64 96
  %wide.load28.6 = load <16 x bfloat>, ptr %81, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load29.6 = load <16 x bfloat>, ptr %82, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load30.6 = load <16 x bfloat>, ptr %83, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load31.6 = load <16 x bfloat>, ptr %84, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %85 = add nuw nsw i64 %20, 384
  %86 = getelementptr inbounds nuw [1239552 x bfloat], ptr %6, i64 0, i64 %85
  %87 = getelementptr inbounds nuw i8, ptr %86, i64 32
  %88 = getelementptr inbounds nuw i8, ptr %86, i64 64
  %89 = getelementptr inbounds nuw i8, ptr %86, i64 96
  store <16 x bfloat> %wide.load28.6, ptr %86, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load29.6, ptr %87, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load30.6, ptr %88, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load31.6, ptr %89, align 2, !alias.scope !9, !noalias !6
  %90 = add nuw nsw i64 %21, 448
  %91 = getelementptr inbounds nuw [4958208 x bfloat], ptr %4, i64 0, i64 %90
  %92 = getelementptr inbounds nuw i8, ptr %91, i64 32
  %93 = getelementptr inbounds nuw i8, ptr %91, i64 64
  %94 = getelementptr inbounds nuw i8, ptr %91, i64 96
  %wide.load28.7 = load <16 x bfloat>, ptr %91, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load29.7 = load <16 x bfloat>, ptr %92, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load30.7 = load <16 x bfloat>, ptr %93, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load31.7 = load <16 x bfloat>, ptr %94, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %95 = add nuw nsw i64 %20, 448
  %96 = getelementptr inbounds nuw [1239552 x bfloat], ptr %6, i64 0, i64 %95
  %97 = getelementptr inbounds nuw i8, ptr %96, i64 32
  %98 = getelementptr inbounds nuw i8, ptr %96, i64 64
  %99 = getelementptr inbounds nuw i8, ptr %96, i64 96
  store <16 x bfloat> %wide.load28.7, ptr %96, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load29.7, ptr %97, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load30.7, ptr %98, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load31.7, ptr %99, align 2, !alias.scope !9, !noalias !6
  %100 = add nuw nsw i64 %21, 512
  %101 = getelementptr inbounds nuw [4958208 x bfloat], ptr %4, i64 0, i64 %100
  %102 = getelementptr inbounds nuw i8, ptr %101, i64 32
  %103 = getelementptr inbounds nuw i8, ptr %101, i64 64
  %104 = getelementptr inbounds nuw i8, ptr %101, i64 96
  %wide.load28.8 = load <16 x bfloat>, ptr %101, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load29.8 = load <16 x bfloat>, ptr %102, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load30.8 = load <16 x bfloat>, ptr %103, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load31.8 = load <16 x bfloat>, ptr %104, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %105 = add nuw nsw i64 %20, 512
  %106 = getelementptr inbounds nuw [1239552 x bfloat], ptr %6, i64 0, i64 %105
  %107 = getelementptr inbounds nuw i8, ptr %106, i64 32
  %108 = getelementptr inbounds nuw i8, ptr %106, i64 64
  %109 = getelementptr inbounds nuw i8, ptr %106, i64 96
  store <16 x bfloat> %wide.load28.8, ptr %106, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load29.8, ptr %107, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load30.8, ptr %108, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load31.8, ptr %109, align 2, !alias.scope !9, !noalias !6
  %110 = add nuw nsw i64 %21, 576
  %111 = getelementptr inbounds nuw [4958208 x bfloat], ptr %4, i64 0, i64 %110
  %112 = getelementptr inbounds nuw i8, ptr %111, i64 32
  %113 = getelementptr inbounds nuw i8, ptr %111, i64 64
  %114 = getelementptr inbounds nuw i8, ptr %111, i64 96
  %wide.load28.9 = load <16 x bfloat>, ptr %111, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load29.9 = load <16 x bfloat>, ptr %112, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load30.9 = load <16 x bfloat>, ptr %113, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load31.9 = load <16 x bfloat>, ptr %114, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %115 = add nuw nsw i64 %20, 576
  %116 = getelementptr inbounds nuw [1239552 x bfloat], ptr %6, i64 0, i64 %115
  %117 = getelementptr inbounds nuw i8, ptr %116, i64 32
  %118 = getelementptr inbounds nuw i8, ptr %116, i64 64
  %119 = getelementptr inbounds nuw i8, ptr %116, i64 96
  store <16 x bfloat> %wide.load28.9, ptr %116, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load29.9, ptr %117, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load30.9, ptr %118, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load31.9, ptr %119, align 2, !alias.scope !9, !noalias !6
  %120 = add nuw nsw i64 %21, 640
  %121 = getelementptr inbounds nuw [4958208 x bfloat], ptr %4, i64 0, i64 %120
  %122 = getelementptr inbounds nuw i8, ptr %121, i64 32
  %123 = getelementptr inbounds nuw i8, ptr %121, i64 64
  %124 = getelementptr inbounds nuw i8, ptr %121, i64 96
  %wide.load28.10 = load <16 x bfloat>, ptr %121, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load29.10 = load <16 x bfloat>, ptr %122, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load30.10 = load <16 x bfloat>, ptr %123, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load31.10 = load <16 x bfloat>, ptr %124, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %125 = add nuw nsw i64 %20, 640
  %126 = getelementptr inbounds nuw [1239552 x bfloat], ptr %6, i64 0, i64 %125
  %127 = getelementptr inbounds nuw i8, ptr %126, i64 32
  %128 = getelementptr inbounds nuw i8, ptr %126, i64 64
  %129 = getelementptr inbounds nuw i8, ptr %126, i64 96
  store <16 x bfloat> %wide.load28.10, ptr %126, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load29.10, ptr %127, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load30.10, ptr %128, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load31.10, ptr %129, align 2, !alias.scope !9, !noalias !6
  %130 = add nuw nsw i64 %21, 704
  %131 = getelementptr inbounds nuw [4958208 x bfloat], ptr %4, i64 0, i64 %130
  %132 = getelementptr inbounds nuw i8, ptr %131, i64 32
  %133 = getelementptr inbounds nuw i8, ptr %131, i64 64
  %134 = getelementptr inbounds nuw i8, ptr %131, i64 96
  %wide.load28.11 = load <16 x bfloat>, ptr %131, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load29.11 = load <16 x bfloat>, ptr %132, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load30.11 = load <16 x bfloat>, ptr %133, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load31.11 = load <16 x bfloat>, ptr %134, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %135 = add nuw nsw i64 %20, 704
  %136 = getelementptr inbounds nuw [1239552 x bfloat], ptr %6, i64 0, i64 %135
  %137 = getelementptr inbounds nuw i8, ptr %136, i64 32
  %138 = getelementptr inbounds nuw i8, ptr %136, i64 64
  %139 = getelementptr inbounds nuw i8, ptr %136, i64 96
  store <16 x bfloat> %wide.load28.11, ptr %136, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load29.11, ptr %137, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load30.11, ptr %138, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load31.11, ptr %139, align 2, !alias.scope !9, !noalias !6
  %140 = add nuw nsw i64 %21, 768
  %141 = getelementptr inbounds nuw [4958208 x bfloat], ptr %4, i64 0, i64 %140
  %142 = getelementptr inbounds nuw i8, ptr %141, i64 32
  %143 = getelementptr inbounds nuw i8, ptr %141, i64 64
  %144 = getelementptr inbounds nuw i8, ptr %141, i64 96
  %wide.load28.12 = load <16 x bfloat>, ptr %141, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load29.12 = load <16 x bfloat>, ptr %142, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load30.12 = load <16 x bfloat>, ptr %143, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load31.12 = load <16 x bfloat>, ptr %144, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %145 = add nuw nsw i64 %20, 768
  %146 = getelementptr inbounds nuw [1239552 x bfloat], ptr %6, i64 0, i64 %145
  %147 = getelementptr inbounds nuw i8, ptr %146, i64 32
  %148 = getelementptr inbounds nuw i8, ptr %146, i64 64
  %149 = getelementptr inbounds nuw i8, ptr %146, i64 96
  store <16 x bfloat> %wide.load28.12, ptr %146, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load29.12, ptr %147, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load30.12, ptr %148, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load31.12, ptr %149, align 2, !alias.scope !9, !noalias !6
  %150 = add nuw nsw i64 %21, 832
  %151 = getelementptr inbounds nuw [4958208 x bfloat], ptr %4, i64 0, i64 %150
  %152 = getelementptr inbounds nuw i8, ptr %151, i64 32
  %153 = getelementptr inbounds nuw i8, ptr %151, i64 64
  %154 = getelementptr inbounds nuw i8, ptr %151, i64 96
  %wide.load28.13 = load <16 x bfloat>, ptr %151, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load29.13 = load <16 x bfloat>, ptr %152, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load30.13 = load <16 x bfloat>, ptr %153, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load31.13 = load <16 x bfloat>, ptr %154, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %155 = add nuw nsw i64 %20, 832
  %156 = getelementptr inbounds nuw [1239552 x bfloat], ptr %6, i64 0, i64 %155
  %157 = getelementptr inbounds nuw i8, ptr %156, i64 32
  %158 = getelementptr inbounds nuw i8, ptr %156, i64 64
  %159 = getelementptr inbounds nuw i8, ptr %156, i64 96
  store <16 x bfloat> %wide.load28.13, ptr %156, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load29.13, ptr %157, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load30.13, ptr %158, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load31.13, ptr %159, align 2, !alias.scope !9, !noalias !6
  %160 = add nuw nsw i64 %21, 896
  %161 = getelementptr inbounds nuw [4958208 x bfloat], ptr %4, i64 0, i64 %160
  %162 = getelementptr inbounds nuw i8, ptr %161, i64 32
  %163 = getelementptr inbounds nuw i8, ptr %161, i64 64
  %164 = getelementptr inbounds nuw i8, ptr %161, i64 96
  %wide.load28.14 = load <16 x bfloat>, ptr %161, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load29.14 = load <16 x bfloat>, ptr %162, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load30.14 = load <16 x bfloat>, ptr %163, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load31.14 = load <16 x bfloat>, ptr %164, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %165 = add nuw nsw i64 %20, 896
  %166 = getelementptr inbounds nuw [1239552 x bfloat], ptr %6, i64 0, i64 %165
  %167 = getelementptr inbounds nuw i8, ptr %166, i64 32
  %168 = getelementptr inbounds nuw i8, ptr %166, i64 64
  %169 = getelementptr inbounds nuw i8, ptr %166, i64 96
  store <16 x bfloat> %wide.load28.14, ptr %166, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load29.14, ptr %167, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load30.14, ptr %168, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load31.14, ptr %169, align 2, !alias.scope !9, !noalias !6
  %170 = add nuw nsw i64 %21, 960
  %171 = getelementptr inbounds nuw [4958208 x bfloat], ptr %4, i64 0, i64 %170
  %172 = getelementptr inbounds nuw i8, ptr %171, i64 32
  %173 = getelementptr inbounds nuw i8, ptr %171, i64 64
  %174 = getelementptr inbounds nuw i8, ptr %171, i64 96
  %wide.load28.15 = load <16 x bfloat>, ptr %171, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load29.15 = load <16 x bfloat>, ptr %172, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load30.15 = load <16 x bfloat>, ptr %173, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load31.15 = load <16 x bfloat>, ptr %174, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %175 = add nuw nsw i64 %20, 960
  %176 = getelementptr inbounds nuw [1239552 x bfloat], ptr %6, i64 0, i64 %175
  %177 = getelementptr inbounds nuw i8, ptr %176, i64 32
  %178 = getelementptr inbounds nuw i8, ptr %176, i64 64
  %179 = getelementptr inbounds nuw i8, ptr %176, i64 96
  store <16 x bfloat> %wide.load28.15, ptr %176, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load29.15, ptr %177, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load30.15, ptr %178, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load31.15, ptr %179, align 2, !alias.scope !9, !noalias !6
  %180 = add nuw nsw i64 %21, 1024
  %181 = getelementptr inbounds nuw [4958208 x bfloat], ptr %4, i64 0, i64 %180
  %wide.load40 = load <16 x bfloat>, ptr %181, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %182 = add nuw nsw i64 %20, 1024
  %183 = getelementptr inbounds nuw [1239552 x bfloat], ptr %6, i64 0, i64 %182
  store <16 x bfloat> %wide.load40, ptr %183, align 2, !alias.scope !9, !noalias !6
  %184 = add nuw nsw i64 %21, 1040
  %185 = getelementptr inbounds nuw [4958208 x bfloat], ptr %4, i64 0, i64 %184
  %wide.load40.1 = load <16 x bfloat>, ptr %185, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %186 = add nuw nsw i64 %20, 1040
  %187 = getelementptr inbounds nuw [1239552 x bfloat], ptr %6, i64 0, i64 %186
  store <16 x bfloat> %wide.load40.1, ptr %187, align 2, !alias.scope !9, !noalias !6
  %188 = add nuw nsw i64 %21, 1056
  %189 = getelementptr inbounds nuw [4958208 x bfloat], ptr %4, i64 0, i64 %188
  %wide.load40.2 = load <16 x bfloat>, ptr %189, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %190 = add nuw nsw i64 %20, 1056
  %191 = getelementptr inbounds nuw [1239552 x bfloat], ptr %6, i64 0, i64 %190
  store <16 x bfloat> %wide.load40.2, ptr %191, align 2, !alias.scope !9, !noalias !6
  %192 = add nuw nsw i64 %21, 1072
  %193 = getelementptr inbounds nuw [4958208 x bfloat], ptr %4, i64 0, i64 %192
  %194 = load bfloat, ptr %193, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %195 = add nuw nsw i64 %20, 1072
  %196 = getelementptr inbounds nuw [1239552 x bfloat], ptr %6, i64 0, i64 %195
  store bfloat %194, ptr %196, align 2, !alias.scope !9, !noalias !6
  %197 = add nuw nsw i64 %21, 1073
  %198 = getelementptr inbounds nuw [4958208 x bfloat], ptr %4, i64 0, i64 %197
  %199 = load bfloat, ptr %198, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %200 = add nuw nsw i64 %20, 1073
  %201 = getelementptr inbounds nuw [1239552 x bfloat], ptr %6, i64 0, i64 %200
  store bfloat %199, ptr %201, align 2, !alias.scope !9, !noalias !6
  %202 = add nuw nsw i64 %21, 1074
  %203 = getelementptr inbounds nuw [4958208 x bfloat], ptr %4, i64 0, i64 %202
  %204 = load bfloat, ptr %203, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %205 = add nuw nsw i64 %20, 1074
  %206 = getelementptr inbounds nuw [1239552 x bfloat], ptr %6, i64 0, i64 %205
  store bfloat %204, ptr %206, align 2, !alias.scope !9, !noalias !6
  %207 = add nuw nsw i64 %21, 1075
  %208 = getelementptr inbounds nuw [4958208 x bfloat], ptr %4, i64 0, i64 %207
  %209 = load bfloat, ptr %208, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %210 = add nuw nsw i64 %20, 1075
  %211 = getelementptr inbounds nuw [1239552 x bfloat], ptr %6, i64 0, i64 %210
  store bfloat %209, ptr %211, align 2, !alias.scope !9, !noalias !6
  %212 = add nuw nsw i64 %17, 1
  %exitcond11.not = icmp eq i64 %212, 83
  br i1 %exitcond11.not, label %slice_convert_fusion.2_wrapped.exit, label %iter.check23, !llvm.loop !11

213:                                              ; preds = %1
  %214 = icmp eq i64 %9, 13
  br i1 %214, label %iter.check, label %slice_convert_fusion.2_wrapped.exit

iter.check:                                       ; preds = %213, %iter.check
  %215 = phi i64 [ %410, %iter.check ], [ 0, %213 ]
  %216 = mul nuw nsw i64 %215, 4304
  %217 = mul nuw nsw i64 %215, 1076
  %218 = add nuw nsw i64 %217, 1161004
  %219 = add nuw nsw i64 %216, 4645092
  %220 = getelementptr inbounds nuw [4958208 x bfloat], ptr %4, i64 0, i64 %219
  %221 = getelementptr inbounds nuw i8, ptr %220, i64 32
  %222 = getelementptr inbounds nuw i8, ptr %220, i64 64
  %223 = getelementptr inbounds nuw i8, ptr %220, i64 96
  %wide.load = load <16 x bfloat>, ptr %220, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load16 = load <16 x bfloat>, ptr %221, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load17 = load <16 x bfloat>, ptr %222, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load18 = load <16 x bfloat>, ptr %223, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %224 = getelementptr inbounds nuw [1239552 x bfloat], ptr %6, i64 0, i64 %218
  %225 = getelementptr inbounds nuw i8, ptr %224, i64 32
  %226 = getelementptr inbounds nuw i8, ptr %224, i64 64
  %227 = getelementptr inbounds nuw i8, ptr %224, i64 96
  store <16 x bfloat> %wide.load, ptr %224, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load16, ptr %225, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load17, ptr %226, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load18, ptr %227, align 2, !alias.scope !9, !noalias !6
  %228 = add nuw nsw i64 %216, 4645156
  %229 = getelementptr inbounds nuw [4958208 x bfloat], ptr %4, i64 0, i64 %228
  %230 = getelementptr inbounds nuw i8, ptr %229, i64 32
  %231 = getelementptr inbounds nuw i8, ptr %229, i64 64
  %232 = getelementptr inbounds nuw i8, ptr %229, i64 96
  %wide.load.1 = load <16 x bfloat>, ptr %229, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load16.1 = load <16 x bfloat>, ptr %230, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load17.1 = load <16 x bfloat>, ptr %231, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load18.1 = load <16 x bfloat>, ptr %232, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %233 = add nuw nsw i64 %217, 1161068
  %234 = getelementptr inbounds nuw [1239552 x bfloat], ptr %6, i64 0, i64 %233
  %235 = getelementptr inbounds nuw i8, ptr %234, i64 32
  %236 = getelementptr inbounds nuw i8, ptr %234, i64 64
  %237 = getelementptr inbounds nuw i8, ptr %234, i64 96
  store <16 x bfloat> %wide.load.1, ptr %234, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load16.1, ptr %235, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load17.1, ptr %236, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load18.1, ptr %237, align 2, !alias.scope !9, !noalias !6
  %238 = add nuw nsw i64 %216, 4645220
  %239 = getelementptr inbounds nuw [4958208 x bfloat], ptr %4, i64 0, i64 %238
  %240 = getelementptr inbounds nuw i8, ptr %239, i64 32
  %241 = getelementptr inbounds nuw i8, ptr %239, i64 64
  %242 = getelementptr inbounds nuw i8, ptr %239, i64 96
  %wide.load.2 = load <16 x bfloat>, ptr %239, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load16.2 = load <16 x bfloat>, ptr %240, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load17.2 = load <16 x bfloat>, ptr %241, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load18.2 = load <16 x bfloat>, ptr %242, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %243 = add nuw nsw i64 %217, 1161132
  %244 = getelementptr inbounds nuw [1239552 x bfloat], ptr %6, i64 0, i64 %243
  %245 = getelementptr inbounds nuw i8, ptr %244, i64 32
  %246 = getelementptr inbounds nuw i8, ptr %244, i64 64
  %247 = getelementptr inbounds nuw i8, ptr %244, i64 96
  store <16 x bfloat> %wide.load.2, ptr %244, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load16.2, ptr %245, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load17.2, ptr %246, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load18.2, ptr %247, align 2, !alias.scope !9, !noalias !6
  %248 = add nuw nsw i64 %216, 4645284
  %249 = getelementptr inbounds nuw [4958208 x bfloat], ptr %4, i64 0, i64 %248
  %250 = getelementptr inbounds nuw i8, ptr %249, i64 32
  %251 = getelementptr inbounds nuw i8, ptr %249, i64 64
  %252 = getelementptr inbounds nuw i8, ptr %249, i64 96
  %wide.load.3 = load <16 x bfloat>, ptr %249, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load16.3 = load <16 x bfloat>, ptr %250, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load17.3 = load <16 x bfloat>, ptr %251, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load18.3 = load <16 x bfloat>, ptr %252, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %253 = add nuw nsw i64 %217, 1161196
  %254 = getelementptr inbounds nuw [1239552 x bfloat], ptr %6, i64 0, i64 %253
  %255 = getelementptr inbounds nuw i8, ptr %254, i64 32
  %256 = getelementptr inbounds nuw i8, ptr %254, i64 64
  %257 = getelementptr inbounds nuw i8, ptr %254, i64 96
  store <16 x bfloat> %wide.load.3, ptr %254, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load16.3, ptr %255, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load17.3, ptr %256, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load18.3, ptr %257, align 2, !alias.scope !9, !noalias !6
  %258 = add nuw nsw i64 %216, 4645348
  %259 = getelementptr inbounds nuw [4958208 x bfloat], ptr %4, i64 0, i64 %258
  %260 = getelementptr inbounds nuw i8, ptr %259, i64 32
  %261 = getelementptr inbounds nuw i8, ptr %259, i64 64
  %262 = getelementptr inbounds nuw i8, ptr %259, i64 96
  %wide.load.4 = load <16 x bfloat>, ptr %259, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load16.4 = load <16 x bfloat>, ptr %260, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load17.4 = load <16 x bfloat>, ptr %261, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load18.4 = load <16 x bfloat>, ptr %262, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %263 = add nuw nsw i64 %217, 1161260
  %264 = getelementptr inbounds nuw [1239552 x bfloat], ptr %6, i64 0, i64 %263
  %265 = getelementptr inbounds nuw i8, ptr %264, i64 32
  %266 = getelementptr inbounds nuw i8, ptr %264, i64 64
  %267 = getelementptr inbounds nuw i8, ptr %264, i64 96
  store <16 x bfloat> %wide.load.4, ptr %264, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load16.4, ptr %265, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load17.4, ptr %266, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load18.4, ptr %267, align 2, !alias.scope !9, !noalias !6
  %268 = add nuw nsw i64 %216, 4645412
  %269 = getelementptr inbounds nuw [4958208 x bfloat], ptr %4, i64 0, i64 %268
  %270 = getelementptr inbounds nuw i8, ptr %269, i64 32
  %271 = getelementptr inbounds nuw i8, ptr %269, i64 64
  %272 = getelementptr inbounds nuw i8, ptr %269, i64 96
  %wide.load.5 = load <16 x bfloat>, ptr %269, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load16.5 = load <16 x bfloat>, ptr %270, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load17.5 = load <16 x bfloat>, ptr %271, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load18.5 = load <16 x bfloat>, ptr %272, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %273 = add nuw nsw i64 %217, 1161324
  %274 = getelementptr inbounds nuw [1239552 x bfloat], ptr %6, i64 0, i64 %273
  %275 = getelementptr inbounds nuw i8, ptr %274, i64 32
  %276 = getelementptr inbounds nuw i8, ptr %274, i64 64
  %277 = getelementptr inbounds nuw i8, ptr %274, i64 96
  store <16 x bfloat> %wide.load.5, ptr %274, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load16.5, ptr %275, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load17.5, ptr %276, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load18.5, ptr %277, align 2, !alias.scope !9, !noalias !6
  %278 = add nuw nsw i64 %216, 4645476
  %279 = getelementptr inbounds nuw [4958208 x bfloat], ptr %4, i64 0, i64 %278
  %280 = getelementptr inbounds nuw i8, ptr %279, i64 32
  %281 = getelementptr inbounds nuw i8, ptr %279, i64 64
  %282 = getelementptr inbounds nuw i8, ptr %279, i64 96
  %wide.load.6 = load <16 x bfloat>, ptr %279, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load16.6 = load <16 x bfloat>, ptr %280, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load17.6 = load <16 x bfloat>, ptr %281, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load18.6 = load <16 x bfloat>, ptr %282, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %283 = add nuw nsw i64 %217, 1161388
  %284 = getelementptr inbounds nuw [1239552 x bfloat], ptr %6, i64 0, i64 %283
  %285 = getelementptr inbounds nuw i8, ptr %284, i64 32
  %286 = getelementptr inbounds nuw i8, ptr %284, i64 64
  %287 = getelementptr inbounds nuw i8, ptr %284, i64 96
  store <16 x bfloat> %wide.load.6, ptr %284, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load16.6, ptr %285, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load17.6, ptr %286, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load18.6, ptr %287, align 2, !alias.scope !9, !noalias !6
  %288 = add nuw nsw i64 %216, 4645540
  %289 = getelementptr inbounds nuw [4958208 x bfloat], ptr %4, i64 0, i64 %288
  %290 = getelementptr inbounds nuw i8, ptr %289, i64 32
  %291 = getelementptr inbounds nuw i8, ptr %289, i64 64
  %292 = getelementptr inbounds nuw i8, ptr %289, i64 96
  %wide.load.7 = load <16 x bfloat>, ptr %289, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load16.7 = load <16 x bfloat>, ptr %290, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load17.7 = load <16 x bfloat>, ptr %291, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load18.7 = load <16 x bfloat>, ptr %292, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %293 = add nuw nsw i64 %217, 1161452
  %294 = getelementptr inbounds nuw [1239552 x bfloat], ptr %6, i64 0, i64 %293
  %295 = getelementptr inbounds nuw i8, ptr %294, i64 32
  %296 = getelementptr inbounds nuw i8, ptr %294, i64 64
  %297 = getelementptr inbounds nuw i8, ptr %294, i64 96
  store <16 x bfloat> %wide.load.7, ptr %294, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load16.7, ptr %295, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load17.7, ptr %296, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load18.7, ptr %297, align 2, !alias.scope !9, !noalias !6
  %298 = add nuw nsw i64 %216, 4645604
  %299 = getelementptr inbounds nuw [4958208 x bfloat], ptr %4, i64 0, i64 %298
  %300 = getelementptr inbounds nuw i8, ptr %299, i64 32
  %301 = getelementptr inbounds nuw i8, ptr %299, i64 64
  %302 = getelementptr inbounds nuw i8, ptr %299, i64 96
  %wide.load.8 = load <16 x bfloat>, ptr %299, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load16.8 = load <16 x bfloat>, ptr %300, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load17.8 = load <16 x bfloat>, ptr %301, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load18.8 = load <16 x bfloat>, ptr %302, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %303 = add nuw nsw i64 %217, 1161516
  %304 = getelementptr inbounds nuw [1239552 x bfloat], ptr %6, i64 0, i64 %303
  %305 = getelementptr inbounds nuw i8, ptr %304, i64 32
  %306 = getelementptr inbounds nuw i8, ptr %304, i64 64
  %307 = getelementptr inbounds nuw i8, ptr %304, i64 96
  store <16 x bfloat> %wide.load.8, ptr %304, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load16.8, ptr %305, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load17.8, ptr %306, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load18.8, ptr %307, align 2, !alias.scope !9, !noalias !6
  %308 = add nuw nsw i64 %216, 4645668
  %309 = getelementptr inbounds nuw [4958208 x bfloat], ptr %4, i64 0, i64 %308
  %310 = getelementptr inbounds nuw i8, ptr %309, i64 32
  %311 = getelementptr inbounds nuw i8, ptr %309, i64 64
  %312 = getelementptr inbounds nuw i8, ptr %309, i64 96
  %wide.load.9 = load <16 x bfloat>, ptr %309, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load16.9 = load <16 x bfloat>, ptr %310, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load17.9 = load <16 x bfloat>, ptr %311, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load18.9 = load <16 x bfloat>, ptr %312, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %313 = add nuw nsw i64 %217, 1161580
  %314 = getelementptr inbounds nuw [1239552 x bfloat], ptr %6, i64 0, i64 %313
  %315 = getelementptr inbounds nuw i8, ptr %314, i64 32
  %316 = getelementptr inbounds nuw i8, ptr %314, i64 64
  %317 = getelementptr inbounds nuw i8, ptr %314, i64 96
  store <16 x bfloat> %wide.load.9, ptr %314, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load16.9, ptr %315, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load17.9, ptr %316, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load18.9, ptr %317, align 2, !alias.scope !9, !noalias !6
  %318 = add nuw nsw i64 %216, 4645732
  %319 = getelementptr inbounds nuw [4958208 x bfloat], ptr %4, i64 0, i64 %318
  %320 = getelementptr inbounds nuw i8, ptr %319, i64 32
  %321 = getelementptr inbounds nuw i8, ptr %319, i64 64
  %322 = getelementptr inbounds nuw i8, ptr %319, i64 96
  %wide.load.10 = load <16 x bfloat>, ptr %319, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load16.10 = load <16 x bfloat>, ptr %320, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load17.10 = load <16 x bfloat>, ptr %321, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load18.10 = load <16 x bfloat>, ptr %322, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %323 = add nuw nsw i64 %217, 1161644
  %324 = getelementptr inbounds nuw [1239552 x bfloat], ptr %6, i64 0, i64 %323
  %325 = getelementptr inbounds nuw i8, ptr %324, i64 32
  %326 = getelementptr inbounds nuw i8, ptr %324, i64 64
  %327 = getelementptr inbounds nuw i8, ptr %324, i64 96
  store <16 x bfloat> %wide.load.10, ptr %324, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load16.10, ptr %325, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load17.10, ptr %326, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load18.10, ptr %327, align 2, !alias.scope !9, !noalias !6
  %328 = add nuw nsw i64 %216, 4645796
  %329 = getelementptr inbounds nuw [4958208 x bfloat], ptr %4, i64 0, i64 %328
  %330 = getelementptr inbounds nuw i8, ptr %329, i64 32
  %331 = getelementptr inbounds nuw i8, ptr %329, i64 64
  %332 = getelementptr inbounds nuw i8, ptr %329, i64 96
  %wide.load.11 = load <16 x bfloat>, ptr %329, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load16.11 = load <16 x bfloat>, ptr %330, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load17.11 = load <16 x bfloat>, ptr %331, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load18.11 = load <16 x bfloat>, ptr %332, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %333 = add nuw nsw i64 %217, 1161708
  %334 = getelementptr inbounds nuw [1239552 x bfloat], ptr %6, i64 0, i64 %333
  %335 = getelementptr inbounds nuw i8, ptr %334, i64 32
  %336 = getelementptr inbounds nuw i8, ptr %334, i64 64
  %337 = getelementptr inbounds nuw i8, ptr %334, i64 96
  store <16 x bfloat> %wide.load.11, ptr %334, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load16.11, ptr %335, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load17.11, ptr %336, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load18.11, ptr %337, align 2, !alias.scope !9, !noalias !6
  %338 = add nuw nsw i64 %216, 4645860
  %339 = getelementptr inbounds nuw [4958208 x bfloat], ptr %4, i64 0, i64 %338
  %340 = getelementptr inbounds nuw i8, ptr %339, i64 32
  %341 = getelementptr inbounds nuw i8, ptr %339, i64 64
  %342 = getelementptr inbounds nuw i8, ptr %339, i64 96
  %wide.load.12 = load <16 x bfloat>, ptr %339, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load16.12 = load <16 x bfloat>, ptr %340, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load17.12 = load <16 x bfloat>, ptr %341, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load18.12 = load <16 x bfloat>, ptr %342, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %343 = add nuw nsw i64 %217, 1161772
  %344 = getelementptr inbounds nuw [1239552 x bfloat], ptr %6, i64 0, i64 %343
  %345 = getelementptr inbounds nuw i8, ptr %344, i64 32
  %346 = getelementptr inbounds nuw i8, ptr %344, i64 64
  %347 = getelementptr inbounds nuw i8, ptr %344, i64 96
  store <16 x bfloat> %wide.load.12, ptr %344, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load16.12, ptr %345, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load17.12, ptr %346, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load18.12, ptr %347, align 2, !alias.scope !9, !noalias !6
  %348 = add nuw nsw i64 %216, 4645924
  %349 = getelementptr inbounds nuw [4958208 x bfloat], ptr %4, i64 0, i64 %348
  %350 = getelementptr inbounds nuw i8, ptr %349, i64 32
  %351 = getelementptr inbounds nuw i8, ptr %349, i64 64
  %352 = getelementptr inbounds nuw i8, ptr %349, i64 96
  %wide.load.13 = load <16 x bfloat>, ptr %349, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load16.13 = load <16 x bfloat>, ptr %350, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load17.13 = load <16 x bfloat>, ptr %351, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load18.13 = load <16 x bfloat>, ptr %352, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %353 = add nuw nsw i64 %217, 1161836
  %354 = getelementptr inbounds nuw [1239552 x bfloat], ptr %6, i64 0, i64 %353
  %355 = getelementptr inbounds nuw i8, ptr %354, i64 32
  %356 = getelementptr inbounds nuw i8, ptr %354, i64 64
  %357 = getelementptr inbounds nuw i8, ptr %354, i64 96
  store <16 x bfloat> %wide.load.13, ptr %354, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load16.13, ptr %355, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load17.13, ptr %356, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load18.13, ptr %357, align 2, !alias.scope !9, !noalias !6
  %358 = add nuw nsw i64 %216, 4645988
  %359 = getelementptr inbounds nuw [4958208 x bfloat], ptr %4, i64 0, i64 %358
  %360 = getelementptr inbounds nuw i8, ptr %359, i64 32
  %361 = getelementptr inbounds nuw i8, ptr %359, i64 64
  %362 = getelementptr inbounds nuw i8, ptr %359, i64 96
  %wide.load.14 = load <16 x bfloat>, ptr %359, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load16.14 = load <16 x bfloat>, ptr %360, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load17.14 = load <16 x bfloat>, ptr %361, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load18.14 = load <16 x bfloat>, ptr %362, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %363 = add nuw nsw i64 %217, 1161900
  %364 = getelementptr inbounds nuw [1239552 x bfloat], ptr %6, i64 0, i64 %363
  %365 = getelementptr inbounds nuw i8, ptr %364, i64 32
  %366 = getelementptr inbounds nuw i8, ptr %364, i64 64
  %367 = getelementptr inbounds nuw i8, ptr %364, i64 96
  store <16 x bfloat> %wide.load.14, ptr %364, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load16.14, ptr %365, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load17.14, ptr %366, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load18.14, ptr %367, align 2, !alias.scope !9, !noalias !6
  %368 = add nuw nsw i64 %216, 4646052
  %369 = getelementptr inbounds nuw [4958208 x bfloat], ptr %4, i64 0, i64 %368
  %370 = getelementptr inbounds nuw i8, ptr %369, i64 32
  %371 = getelementptr inbounds nuw i8, ptr %369, i64 64
  %372 = getelementptr inbounds nuw i8, ptr %369, i64 96
  %wide.load.15 = load <16 x bfloat>, ptr %369, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load16.15 = load <16 x bfloat>, ptr %370, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load17.15 = load <16 x bfloat>, ptr %371, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load18.15 = load <16 x bfloat>, ptr %372, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %373 = add nuw nsw i64 %217, 1161964
  %374 = getelementptr inbounds nuw [1239552 x bfloat], ptr %6, i64 0, i64 %373
  %375 = getelementptr inbounds nuw i8, ptr %374, i64 32
  %376 = getelementptr inbounds nuw i8, ptr %374, i64 64
  %377 = getelementptr inbounds nuw i8, ptr %374, i64 96
  store <16 x bfloat> %wide.load.15, ptr %374, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load16.15, ptr %375, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load17.15, ptr %376, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load18.15, ptr %377, align 2, !alias.scope !9, !noalias !6
  %378 = add nuw nsw i64 %216, 4646116
  %379 = getelementptr inbounds nuw [4958208 x bfloat], ptr %4, i64 0, i64 %378
  %wide.load20 = load <16 x bfloat>, ptr %379, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %380 = add nuw nsw i64 %217, 1162028
  %381 = getelementptr inbounds nuw [1239552 x bfloat], ptr %6, i64 0, i64 %380
  store <16 x bfloat> %wide.load20, ptr %381, align 2, !alias.scope !9, !noalias !6
  %382 = add nuw nsw i64 %216, 4646132
  %383 = getelementptr inbounds nuw [4958208 x bfloat], ptr %4, i64 0, i64 %382
  %wide.load20.1 = load <16 x bfloat>, ptr %383, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %384 = add nuw nsw i64 %217, 1162044
  %385 = getelementptr inbounds nuw [1239552 x bfloat], ptr %6, i64 0, i64 %384
  store <16 x bfloat> %wide.load20.1, ptr %385, align 2, !alias.scope !9, !noalias !6
  %386 = add nuw nsw i64 %216, 4646148
  %387 = getelementptr inbounds nuw [4958208 x bfloat], ptr %4, i64 0, i64 %386
  %wide.load20.2 = load <16 x bfloat>, ptr %387, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %388 = add nuw nsw i64 %217, 1162060
  %389 = getelementptr inbounds nuw [1239552 x bfloat], ptr %6, i64 0, i64 %388
  store <16 x bfloat> %wide.load20.2, ptr %389, align 2, !alias.scope !9, !noalias !6
  %390 = add nuw nsw i64 %216, 4646164
  %391 = getelementptr inbounds nuw [4958208 x bfloat], ptr %4, i64 0, i64 %390
  %392 = load bfloat, ptr %391, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %393 = add nuw nsw i64 %217, 1162076
  %394 = getelementptr inbounds nuw [1239552 x bfloat], ptr %6, i64 0, i64 %393
  store bfloat %392, ptr %394, align 2, !alias.scope !9, !noalias !6
  %395 = add nuw nsw i64 %216, 4646165
  %396 = getelementptr inbounds nuw [4958208 x bfloat], ptr %4, i64 0, i64 %395
  %397 = load bfloat, ptr %396, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %398 = add nuw nsw i64 %217, 1162077
  %399 = getelementptr inbounds nuw [1239552 x bfloat], ptr %6, i64 0, i64 %398
  store bfloat %397, ptr %399, align 2, !alias.scope !9, !noalias !6
  %400 = add nuw nsw i64 %216, 4646166
  %401 = getelementptr inbounds nuw [4958208 x bfloat], ptr %4, i64 0, i64 %400
  %402 = load bfloat, ptr %401, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %403 = add nuw nsw i64 %217, 1162078
  %404 = getelementptr inbounds nuw [1239552 x bfloat], ptr %6, i64 0, i64 %403
  store bfloat %402, ptr %404, align 2, !alias.scope !9, !noalias !6
  %405 = add nuw nsw i64 %216, 4646167
  %406 = getelementptr inbounds nuw [4958208 x bfloat], ptr %4, i64 0, i64 %405
  %407 = load bfloat, ptr %406, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %408 = add nuw nsw i64 %217, 1162079
  %409 = getelementptr inbounds nuw [1239552 x bfloat], ptr %6, i64 0, i64 %408
  store bfloat %407, ptr %409, align 2, !alias.scope !9, !noalias !6
  %410 = add nuw nsw i64 %215, 1
  %exitcond8.not = icmp eq i64 %410, 73
  br i1 %exitcond8.not, label %slice_convert_fusion.2_wrapped.exit, label %iter.check, !llvm.loop !11

slice_convert_fusion.2_wrapped.exit:              ; preds = %iter.check, %iter.check23, %11, %213
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
!4 = !{i64 9916416}
!5 = !{i64 2479104}
!6 = !{!7}
!7 = distinct !{!7, !8, !"slice_convert_fusion.2_wrapped: argument 0"}
!8 = distinct !{!8, !"slice_convert_fusion.2_wrapped"}
!9 = !{!10}
!10 = distinct !{!10, !8, !"slice_convert_fusion.2_wrapped: argument 1"}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.unroll.disable"}
