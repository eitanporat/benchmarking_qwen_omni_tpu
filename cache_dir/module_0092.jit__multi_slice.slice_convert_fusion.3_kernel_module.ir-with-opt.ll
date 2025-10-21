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
  br i1 %10, label %11, label %212

11:                                               ; preds = %1
  %12 = icmp sgt i64 %9, -1
  br i1 %12, label %13, label %slice_convert_fusion.3_wrapped.exit

13:                                               ; preds = %11
  %14 = mul nuw nsw i64 %9, 357232
  %15 = mul nuw nsw i64 %9, 89308
  br label %iter.check23

iter.check23:                                     ; preds = %13, %iter.check23
  %16 = phi i64 [ 0, %13 ], [ %211, %iter.check23 ]
  %17 = mul nuw nsw i64 %16, 4304
  %18 = add nuw nsw i64 %17, %14
  %19 = mul nuw nsw i64 %16, 1076
  %20 = add nuw nsw i64 %19, %15
  %21 = getelementptr inbounds nuw [4958208 x bfloat], ptr %4, i64 0, i64 %18
  %22 = getelementptr inbounds nuw i8, ptr %21, i64 32
  %23 = getelementptr inbounds nuw i8, ptr %21, i64 64
  %24 = getelementptr inbounds nuw i8, ptr %21, i64 96
  %wide.load28 = load <16 x bfloat>, ptr %21, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load29 = load <16 x bfloat>, ptr %22, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load30 = load <16 x bfloat>, ptr %23, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load31 = load <16 x bfloat>, ptr %24, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %25 = getelementptr inbounds nuw [1239552 x bfloat], ptr %6, i64 0, i64 %20
  %26 = getelementptr inbounds nuw i8, ptr %25, i64 32
  %27 = getelementptr inbounds nuw i8, ptr %25, i64 64
  %28 = getelementptr inbounds nuw i8, ptr %25, i64 96
  store <16 x bfloat> %wide.load28, ptr %25, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load29, ptr %26, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load30, ptr %27, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load31, ptr %28, align 2, !alias.scope !9, !noalias !6
  %29 = add nuw nsw i64 %18, 64
  %30 = getelementptr inbounds nuw [4958208 x bfloat], ptr %4, i64 0, i64 %29
  %31 = getelementptr inbounds nuw i8, ptr %30, i64 32
  %32 = getelementptr inbounds nuw i8, ptr %30, i64 64
  %33 = getelementptr inbounds nuw i8, ptr %30, i64 96
  %wide.load28.1 = load <16 x bfloat>, ptr %30, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load29.1 = load <16 x bfloat>, ptr %31, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load30.1 = load <16 x bfloat>, ptr %32, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load31.1 = load <16 x bfloat>, ptr %33, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %34 = add nuw nsw i64 %20, 64
  %35 = getelementptr inbounds nuw [1239552 x bfloat], ptr %6, i64 0, i64 %34
  %36 = getelementptr inbounds nuw i8, ptr %35, i64 32
  %37 = getelementptr inbounds nuw i8, ptr %35, i64 64
  %38 = getelementptr inbounds nuw i8, ptr %35, i64 96
  store <16 x bfloat> %wide.load28.1, ptr %35, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load29.1, ptr %36, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load30.1, ptr %37, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load31.1, ptr %38, align 2, !alias.scope !9, !noalias !6
  %39 = add nuw nsw i64 %18, 128
  %40 = getelementptr inbounds nuw [4958208 x bfloat], ptr %4, i64 0, i64 %39
  %41 = getelementptr inbounds nuw i8, ptr %40, i64 32
  %42 = getelementptr inbounds nuw i8, ptr %40, i64 64
  %43 = getelementptr inbounds nuw i8, ptr %40, i64 96
  %wide.load28.2 = load <16 x bfloat>, ptr %40, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load29.2 = load <16 x bfloat>, ptr %41, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load30.2 = load <16 x bfloat>, ptr %42, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load31.2 = load <16 x bfloat>, ptr %43, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %44 = add nuw nsw i64 %20, 128
  %45 = getelementptr inbounds nuw [1239552 x bfloat], ptr %6, i64 0, i64 %44
  %46 = getelementptr inbounds nuw i8, ptr %45, i64 32
  %47 = getelementptr inbounds nuw i8, ptr %45, i64 64
  %48 = getelementptr inbounds nuw i8, ptr %45, i64 96
  store <16 x bfloat> %wide.load28.2, ptr %45, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load29.2, ptr %46, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load30.2, ptr %47, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load31.2, ptr %48, align 2, !alias.scope !9, !noalias !6
  %49 = add nuw nsw i64 %18, 192
  %50 = getelementptr inbounds nuw [4958208 x bfloat], ptr %4, i64 0, i64 %49
  %51 = getelementptr inbounds nuw i8, ptr %50, i64 32
  %52 = getelementptr inbounds nuw i8, ptr %50, i64 64
  %53 = getelementptr inbounds nuw i8, ptr %50, i64 96
  %wide.load28.3 = load <16 x bfloat>, ptr %50, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load29.3 = load <16 x bfloat>, ptr %51, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load30.3 = load <16 x bfloat>, ptr %52, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load31.3 = load <16 x bfloat>, ptr %53, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %54 = add nuw nsw i64 %20, 192
  %55 = getelementptr inbounds nuw [1239552 x bfloat], ptr %6, i64 0, i64 %54
  %56 = getelementptr inbounds nuw i8, ptr %55, i64 32
  %57 = getelementptr inbounds nuw i8, ptr %55, i64 64
  %58 = getelementptr inbounds nuw i8, ptr %55, i64 96
  store <16 x bfloat> %wide.load28.3, ptr %55, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load29.3, ptr %56, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load30.3, ptr %57, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load31.3, ptr %58, align 2, !alias.scope !9, !noalias !6
  %59 = add nuw nsw i64 %18, 256
  %60 = getelementptr inbounds nuw [4958208 x bfloat], ptr %4, i64 0, i64 %59
  %61 = getelementptr inbounds nuw i8, ptr %60, i64 32
  %62 = getelementptr inbounds nuw i8, ptr %60, i64 64
  %63 = getelementptr inbounds nuw i8, ptr %60, i64 96
  %wide.load28.4 = load <16 x bfloat>, ptr %60, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load29.4 = load <16 x bfloat>, ptr %61, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load30.4 = load <16 x bfloat>, ptr %62, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load31.4 = load <16 x bfloat>, ptr %63, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %64 = add nuw nsw i64 %20, 256
  %65 = getelementptr inbounds nuw [1239552 x bfloat], ptr %6, i64 0, i64 %64
  %66 = getelementptr inbounds nuw i8, ptr %65, i64 32
  %67 = getelementptr inbounds nuw i8, ptr %65, i64 64
  %68 = getelementptr inbounds nuw i8, ptr %65, i64 96
  store <16 x bfloat> %wide.load28.4, ptr %65, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load29.4, ptr %66, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load30.4, ptr %67, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load31.4, ptr %68, align 2, !alias.scope !9, !noalias !6
  %69 = add nuw nsw i64 %18, 320
  %70 = getelementptr inbounds nuw [4958208 x bfloat], ptr %4, i64 0, i64 %69
  %71 = getelementptr inbounds nuw i8, ptr %70, i64 32
  %72 = getelementptr inbounds nuw i8, ptr %70, i64 64
  %73 = getelementptr inbounds nuw i8, ptr %70, i64 96
  %wide.load28.5 = load <16 x bfloat>, ptr %70, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load29.5 = load <16 x bfloat>, ptr %71, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load30.5 = load <16 x bfloat>, ptr %72, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load31.5 = load <16 x bfloat>, ptr %73, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %74 = add nuw nsw i64 %20, 320
  %75 = getelementptr inbounds nuw [1239552 x bfloat], ptr %6, i64 0, i64 %74
  %76 = getelementptr inbounds nuw i8, ptr %75, i64 32
  %77 = getelementptr inbounds nuw i8, ptr %75, i64 64
  %78 = getelementptr inbounds nuw i8, ptr %75, i64 96
  store <16 x bfloat> %wide.load28.5, ptr %75, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load29.5, ptr %76, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load30.5, ptr %77, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load31.5, ptr %78, align 2, !alias.scope !9, !noalias !6
  %79 = add nuw nsw i64 %18, 384
  %80 = getelementptr inbounds nuw [4958208 x bfloat], ptr %4, i64 0, i64 %79
  %81 = getelementptr inbounds nuw i8, ptr %80, i64 32
  %82 = getelementptr inbounds nuw i8, ptr %80, i64 64
  %83 = getelementptr inbounds nuw i8, ptr %80, i64 96
  %wide.load28.6 = load <16 x bfloat>, ptr %80, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load29.6 = load <16 x bfloat>, ptr %81, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load30.6 = load <16 x bfloat>, ptr %82, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load31.6 = load <16 x bfloat>, ptr %83, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %84 = add nuw nsw i64 %20, 384
  %85 = getelementptr inbounds nuw [1239552 x bfloat], ptr %6, i64 0, i64 %84
  %86 = getelementptr inbounds nuw i8, ptr %85, i64 32
  %87 = getelementptr inbounds nuw i8, ptr %85, i64 64
  %88 = getelementptr inbounds nuw i8, ptr %85, i64 96
  store <16 x bfloat> %wide.load28.6, ptr %85, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load29.6, ptr %86, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load30.6, ptr %87, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load31.6, ptr %88, align 2, !alias.scope !9, !noalias !6
  %89 = add nuw nsw i64 %18, 448
  %90 = getelementptr inbounds nuw [4958208 x bfloat], ptr %4, i64 0, i64 %89
  %91 = getelementptr inbounds nuw i8, ptr %90, i64 32
  %92 = getelementptr inbounds nuw i8, ptr %90, i64 64
  %93 = getelementptr inbounds nuw i8, ptr %90, i64 96
  %wide.load28.7 = load <16 x bfloat>, ptr %90, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load29.7 = load <16 x bfloat>, ptr %91, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load30.7 = load <16 x bfloat>, ptr %92, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load31.7 = load <16 x bfloat>, ptr %93, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %94 = add nuw nsw i64 %20, 448
  %95 = getelementptr inbounds nuw [1239552 x bfloat], ptr %6, i64 0, i64 %94
  %96 = getelementptr inbounds nuw i8, ptr %95, i64 32
  %97 = getelementptr inbounds nuw i8, ptr %95, i64 64
  %98 = getelementptr inbounds nuw i8, ptr %95, i64 96
  store <16 x bfloat> %wide.load28.7, ptr %95, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load29.7, ptr %96, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load30.7, ptr %97, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load31.7, ptr %98, align 2, !alias.scope !9, !noalias !6
  %99 = add nuw nsw i64 %18, 512
  %100 = getelementptr inbounds nuw [4958208 x bfloat], ptr %4, i64 0, i64 %99
  %101 = getelementptr inbounds nuw i8, ptr %100, i64 32
  %102 = getelementptr inbounds nuw i8, ptr %100, i64 64
  %103 = getelementptr inbounds nuw i8, ptr %100, i64 96
  %wide.load28.8 = load <16 x bfloat>, ptr %100, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load29.8 = load <16 x bfloat>, ptr %101, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load30.8 = load <16 x bfloat>, ptr %102, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load31.8 = load <16 x bfloat>, ptr %103, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %104 = add nuw nsw i64 %20, 512
  %105 = getelementptr inbounds nuw [1239552 x bfloat], ptr %6, i64 0, i64 %104
  %106 = getelementptr inbounds nuw i8, ptr %105, i64 32
  %107 = getelementptr inbounds nuw i8, ptr %105, i64 64
  %108 = getelementptr inbounds nuw i8, ptr %105, i64 96
  store <16 x bfloat> %wide.load28.8, ptr %105, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load29.8, ptr %106, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load30.8, ptr %107, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load31.8, ptr %108, align 2, !alias.scope !9, !noalias !6
  %109 = add nuw nsw i64 %18, 576
  %110 = getelementptr inbounds nuw [4958208 x bfloat], ptr %4, i64 0, i64 %109
  %111 = getelementptr inbounds nuw i8, ptr %110, i64 32
  %112 = getelementptr inbounds nuw i8, ptr %110, i64 64
  %113 = getelementptr inbounds nuw i8, ptr %110, i64 96
  %wide.load28.9 = load <16 x bfloat>, ptr %110, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load29.9 = load <16 x bfloat>, ptr %111, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load30.9 = load <16 x bfloat>, ptr %112, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load31.9 = load <16 x bfloat>, ptr %113, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %114 = add nuw nsw i64 %20, 576
  %115 = getelementptr inbounds nuw [1239552 x bfloat], ptr %6, i64 0, i64 %114
  %116 = getelementptr inbounds nuw i8, ptr %115, i64 32
  %117 = getelementptr inbounds nuw i8, ptr %115, i64 64
  %118 = getelementptr inbounds nuw i8, ptr %115, i64 96
  store <16 x bfloat> %wide.load28.9, ptr %115, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load29.9, ptr %116, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load30.9, ptr %117, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load31.9, ptr %118, align 2, !alias.scope !9, !noalias !6
  %119 = add nuw nsw i64 %18, 640
  %120 = getelementptr inbounds nuw [4958208 x bfloat], ptr %4, i64 0, i64 %119
  %121 = getelementptr inbounds nuw i8, ptr %120, i64 32
  %122 = getelementptr inbounds nuw i8, ptr %120, i64 64
  %123 = getelementptr inbounds nuw i8, ptr %120, i64 96
  %wide.load28.10 = load <16 x bfloat>, ptr %120, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load29.10 = load <16 x bfloat>, ptr %121, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load30.10 = load <16 x bfloat>, ptr %122, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load31.10 = load <16 x bfloat>, ptr %123, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %124 = add nuw nsw i64 %20, 640
  %125 = getelementptr inbounds nuw [1239552 x bfloat], ptr %6, i64 0, i64 %124
  %126 = getelementptr inbounds nuw i8, ptr %125, i64 32
  %127 = getelementptr inbounds nuw i8, ptr %125, i64 64
  %128 = getelementptr inbounds nuw i8, ptr %125, i64 96
  store <16 x bfloat> %wide.load28.10, ptr %125, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load29.10, ptr %126, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load30.10, ptr %127, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load31.10, ptr %128, align 2, !alias.scope !9, !noalias !6
  %129 = add nuw nsw i64 %18, 704
  %130 = getelementptr inbounds nuw [4958208 x bfloat], ptr %4, i64 0, i64 %129
  %131 = getelementptr inbounds nuw i8, ptr %130, i64 32
  %132 = getelementptr inbounds nuw i8, ptr %130, i64 64
  %133 = getelementptr inbounds nuw i8, ptr %130, i64 96
  %wide.load28.11 = load <16 x bfloat>, ptr %130, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load29.11 = load <16 x bfloat>, ptr %131, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load30.11 = load <16 x bfloat>, ptr %132, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load31.11 = load <16 x bfloat>, ptr %133, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %134 = add nuw nsw i64 %20, 704
  %135 = getelementptr inbounds nuw [1239552 x bfloat], ptr %6, i64 0, i64 %134
  %136 = getelementptr inbounds nuw i8, ptr %135, i64 32
  %137 = getelementptr inbounds nuw i8, ptr %135, i64 64
  %138 = getelementptr inbounds nuw i8, ptr %135, i64 96
  store <16 x bfloat> %wide.load28.11, ptr %135, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load29.11, ptr %136, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load30.11, ptr %137, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load31.11, ptr %138, align 2, !alias.scope !9, !noalias !6
  %139 = add nuw nsw i64 %18, 768
  %140 = getelementptr inbounds nuw [4958208 x bfloat], ptr %4, i64 0, i64 %139
  %141 = getelementptr inbounds nuw i8, ptr %140, i64 32
  %142 = getelementptr inbounds nuw i8, ptr %140, i64 64
  %143 = getelementptr inbounds nuw i8, ptr %140, i64 96
  %wide.load28.12 = load <16 x bfloat>, ptr %140, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load29.12 = load <16 x bfloat>, ptr %141, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load30.12 = load <16 x bfloat>, ptr %142, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load31.12 = load <16 x bfloat>, ptr %143, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %144 = add nuw nsw i64 %20, 768
  %145 = getelementptr inbounds nuw [1239552 x bfloat], ptr %6, i64 0, i64 %144
  %146 = getelementptr inbounds nuw i8, ptr %145, i64 32
  %147 = getelementptr inbounds nuw i8, ptr %145, i64 64
  %148 = getelementptr inbounds nuw i8, ptr %145, i64 96
  store <16 x bfloat> %wide.load28.12, ptr %145, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load29.12, ptr %146, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load30.12, ptr %147, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load31.12, ptr %148, align 2, !alias.scope !9, !noalias !6
  %149 = add nuw nsw i64 %18, 832
  %150 = getelementptr inbounds nuw [4958208 x bfloat], ptr %4, i64 0, i64 %149
  %151 = getelementptr inbounds nuw i8, ptr %150, i64 32
  %152 = getelementptr inbounds nuw i8, ptr %150, i64 64
  %153 = getelementptr inbounds nuw i8, ptr %150, i64 96
  %wide.load28.13 = load <16 x bfloat>, ptr %150, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load29.13 = load <16 x bfloat>, ptr %151, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load30.13 = load <16 x bfloat>, ptr %152, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load31.13 = load <16 x bfloat>, ptr %153, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %154 = add nuw nsw i64 %20, 832
  %155 = getelementptr inbounds nuw [1239552 x bfloat], ptr %6, i64 0, i64 %154
  %156 = getelementptr inbounds nuw i8, ptr %155, i64 32
  %157 = getelementptr inbounds nuw i8, ptr %155, i64 64
  %158 = getelementptr inbounds nuw i8, ptr %155, i64 96
  store <16 x bfloat> %wide.load28.13, ptr %155, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load29.13, ptr %156, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load30.13, ptr %157, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load31.13, ptr %158, align 2, !alias.scope !9, !noalias !6
  %159 = add nuw nsw i64 %18, 896
  %160 = getelementptr inbounds nuw [4958208 x bfloat], ptr %4, i64 0, i64 %159
  %161 = getelementptr inbounds nuw i8, ptr %160, i64 32
  %162 = getelementptr inbounds nuw i8, ptr %160, i64 64
  %163 = getelementptr inbounds nuw i8, ptr %160, i64 96
  %wide.load28.14 = load <16 x bfloat>, ptr %160, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load29.14 = load <16 x bfloat>, ptr %161, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load30.14 = load <16 x bfloat>, ptr %162, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load31.14 = load <16 x bfloat>, ptr %163, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %164 = add nuw nsw i64 %20, 896
  %165 = getelementptr inbounds nuw [1239552 x bfloat], ptr %6, i64 0, i64 %164
  %166 = getelementptr inbounds nuw i8, ptr %165, i64 32
  %167 = getelementptr inbounds nuw i8, ptr %165, i64 64
  %168 = getelementptr inbounds nuw i8, ptr %165, i64 96
  store <16 x bfloat> %wide.load28.14, ptr %165, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load29.14, ptr %166, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load30.14, ptr %167, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load31.14, ptr %168, align 2, !alias.scope !9, !noalias !6
  %169 = add nuw nsw i64 %18, 960
  %170 = getelementptr inbounds nuw [4958208 x bfloat], ptr %4, i64 0, i64 %169
  %171 = getelementptr inbounds nuw i8, ptr %170, i64 32
  %172 = getelementptr inbounds nuw i8, ptr %170, i64 64
  %173 = getelementptr inbounds nuw i8, ptr %170, i64 96
  %wide.load28.15 = load <16 x bfloat>, ptr %170, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load29.15 = load <16 x bfloat>, ptr %171, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load30.15 = load <16 x bfloat>, ptr %172, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load31.15 = load <16 x bfloat>, ptr %173, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %174 = add nuw nsw i64 %20, 960
  %175 = getelementptr inbounds nuw [1239552 x bfloat], ptr %6, i64 0, i64 %174
  %176 = getelementptr inbounds nuw i8, ptr %175, i64 32
  %177 = getelementptr inbounds nuw i8, ptr %175, i64 64
  %178 = getelementptr inbounds nuw i8, ptr %175, i64 96
  store <16 x bfloat> %wide.load28.15, ptr %175, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load29.15, ptr %176, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load30.15, ptr %177, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load31.15, ptr %178, align 2, !alias.scope !9, !noalias !6
  %179 = add nuw nsw i64 %18, 1024
  %180 = getelementptr inbounds nuw [4958208 x bfloat], ptr %4, i64 0, i64 %179
  %wide.load40 = load <16 x bfloat>, ptr %180, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %181 = add nuw nsw i64 %20, 1024
  %182 = getelementptr inbounds nuw [1239552 x bfloat], ptr %6, i64 0, i64 %181
  store <16 x bfloat> %wide.load40, ptr %182, align 2, !alias.scope !9, !noalias !6
  %183 = add nuw nsw i64 %18, 1040
  %184 = getelementptr inbounds nuw [4958208 x bfloat], ptr %4, i64 0, i64 %183
  %wide.load40.1 = load <16 x bfloat>, ptr %184, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %185 = add nuw nsw i64 %20, 1040
  %186 = getelementptr inbounds nuw [1239552 x bfloat], ptr %6, i64 0, i64 %185
  store <16 x bfloat> %wide.load40.1, ptr %186, align 2, !alias.scope !9, !noalias !6
  %187 = add nuw nsw i64 %18, 1056
  %188 = getelementptr inbounds nuw [4958208 x bfloat], ptr %4, i64 0, i64 %187
  %wide.load40.2 = load <16 x bfloat>, ptr %188, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %189 = add nuw nsw i64 %20, 1056
  %190 = getelementptr inbounds nuw [1239552 x bfloat], ptr %6, i64 0, i64 %189
  store <16 x bfloat> %wide.load40.2, ptr %190, align 2, !alias.scope !9, !noalias !6
  %191 = add nuw nsw i64 %18, 1072
  %192 = getelementptr inbounds nuw [4958208 x bfloat], ptr %4, i64 0, i64 %191
  %193 = load bfloat, ptr %192, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %194 = add nuw nsw i64 %20, 1072
  %195 = getelementptr inbounds nuw [1239552 x bfloat], ptr %6, i64 0, i64 %194
  store bfloat %193, ptr %195, align 2, !alias.scope !9, !noalias !6
  %196 = add nuw nsw i64 %18, 1073
  %197 = getelementptr inbounds nuw [4958208 x bfloat], ptr %4, i64 0, i64 %196
  %198 = load bfloat, ptr %197, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %199 = add nuw nsw i64 %20, 1073
  %200 = getelementptr inbounds nuw [1239552 x bfloat], ptr %6, i64 0, i64 %199
  store bfloat %198, ptr %200, align 2, !alias.scope !9, !noalias !6
  %201 = add nuw nsw i64 %18, 1074
  %202 = getelementptr inbounds nuw [4958208 x bfloat], ptr %4, i64 0, i64 %201
  %203 = load bfloat, ptr %202, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %204 = add nuw nsw i64 %20, 1074
  %205 = getelementptr inbounds nuw [1239552 x bfloat], ptr %6, i64 0, i64 %204
  store bfloat %203, ptr %205, align 2, !alias.scope !9, !noalias !6
  %206 = add nuw nsw i64 %18, 1075
  %207 = getelementptr inbounds nuw [4958208 x bfloat], ptr %4, i64 0, i64 %206
  %208 = load bfloat, ptr %207, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %209 = add nuw nsw i64 %20, 1075
  %210 = getelementptr inbounds nuw [1239552 x bfloat], ptr %6, i64 0, i64 %209
  store bfloat %208, ptr %210, align 2, !alias.scope !9, !noalias !6
  %211 = add nuw nsw i64 %16, 1
  %exitcond11.not = icmp eq i64 %211, 83
  br i1 %exitcond11.not, label %slice_convert_fusion.3_wrapped.exit, label %iter.check23, !llvm.loop !11

212:                                              ; preds = %1
  %213 = icmp eq i64 %9, 13
  br i1 %213, label %iter.check, label %slice_convert_fusion.3_wrapped.exit

iter.check:                                       ; preds = %212, %iter.check
  %214 = phi i64 [ %409, %iter.check ], [ 0, %212 ]
  %215 = mul nuw nsw i64 %214, 4304
  %216 = mul nuw nsw i64 %214, 1076
  %217 = add nuw nsw i64 %216, 1161004
  %218 = add nuw nsw i64 %215, 4644016
  %219 = getelementptr inbounds nuw [4958208 x bfloat], ptr %4, i64 0, i64 %218
  %220 = getelementptr inbounds nuw i8, ptr %219, i64 32
  %221 = getelementptr inbounds nuw i8, ptr %219, i64 64
  %222 = getelementptr inbounds nuw i8, ptr %219, i64 96
  %wide.load = load <16 x bfloat>, ptr %219, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load16 = load <16 x bfloat>, ptr %220, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load17 = load <16 x bfloat>, ptr %221, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load18 = load <16 x bfloat>, ptr %222, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %223 = getelementptr inbounds nuw [1239552 x bfloat], ptr %6, i64 0, i64 %217
  %224 = getelementptr inbounds nuw i8, ptr %223, i64 32
  %225 = getelementptr inbounds nuw i8, ptr %223, i64 64
  %226 = getelementptr inbounds nuw i8, ptr %223, i64 96
  store <16 x bfloat> %wide.load, ptr %223, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load16, ptr %224, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load17, ptr %225, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load18, ptr %226, align 2, !alias.scope !9, !noalias !6
  %227 = add nuw nsw i64 %215, 4644080
  %228 = getelementptr inbounds nuw [4958208 x bfloat], ptr %4, i64 0, i64 %227
  %229 = getelementptr inbounds nuw i8, ptr %228, i64 32
  %230 = getelementptr inbounds nuw i8, ptr %228, i64 64
  %231 = getelementptr inbounds nuw i8, ptr %228, i64 96
  %wide.load.1 = load <16 x bfloat>, ptr %228, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load16.1 = load <16 x bfloat>, ptr %229, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load17.1 = load <16 x bfloat>, ptr %230, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load18.1 = load <16 x bfloat>, ptr %231, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %232 = add nuw nsw i64 %216, 1161068
  %233 = getelementptr inbounds nuw [1239552 x bfloat], ptr %6, i64 0, i64 %232
  %234 = getelementptr inbounds nuw i8, ptr %233, i64 32
  %235 = getelementptr inbounds nuw i8, ptr %233, i64 64
  %236 = getelementptr inbounds nuw i8, ptr %233, i64 96
  store <16 x bfloat> %wide.load.1, ptr %233, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load16.1, ptr %234, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load17.1, ptr %235, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load18.1, ptr %236, align 2, !alias.scope !9, !noalias !6
  %237 = add nuw nsw i64 %215, 4644144
  %238 = getelementptr inbounds nuw [4958208 x bfloat], ptr %4, i64 0, i64 %237
  %239 = getelementptr inbounds nuw i8, ptr %238, i64 32
  %240 = getelementptr inbounds nuw i8, ptr %238, i64 64
  %241 = getelementptr inbounds nuw i8, ptr %238, i64 96
  %wide.load.2 = load <16 x bfloat>, ptr %238, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load16.2 = load <16 x bfloat>, ptr %239, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load17.2 = load <16 x bfloat>, ptr %240, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load18.2 = load <16 x bfloat>, ptr %241, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %242 = add nuw nsw i64 %216, 1161132
  %243 = getelementptr inbounds nuw [1239552 x bfloat], ptr %6, i64 0, i64 %242
  %244 = getelementptr inbounds nuw i8, ptr %243, i64 32
  %245 = getelementptr inbounds nuw i8, ptr %243, i64 64
  %246 = getelementptr inbounds nuw i8, ptr %243, i64 96
  store <16 x bfloat> %wide.load.2, ptr %243, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load16.2, ptr %244, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load17.2, ptr %245, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load18.2, ptr %246, align 2, !alias.scope !9, !noalias !6
  %247 = add nuw nsw i64 %215, 4644208
  %248 = getelementptr inbounds nuw [4958208 x bfloat], ptr %4, i64 0, i64 %247
  %249 = getelementptr inbounds nuw i8, ptr %248, i64 32
  %250 = getelementptr inbounds nuw i8, ptr %248, i64 64
  %251 = getelementptr inbounds nuw i8, ptr %248, i64 96
  %wide.load.3 = load <16 x bfloat>, ptr %248, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load16.3 = load <16 x bfloat>, ptr %249, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load17.3 = load <16 x bfloat>, ptr %250, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load18.3 = load <16 x bfloat>, ptr %251, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %252 = add nuw nsw i64 %216, 1161196
  %253 = getelementptr inbounds nuw [1239552 x bfloat], ptr %6, i64 0, i64 %252
  %254 = getelementptr inbounds nuw i8, ptr %253, i64 32
  %255 = getelementptr inbounds nuw i8, ptr %253, i64 64
  %256 = getelementptr inbounds nuw i8, ptr %253, i64 96
  store <16 x bfloat> %wide.load.3, ptr %253, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load16.3, ptr %254, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load17.3, ptr %255, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load18.3, ptr %256, align 2, !alias.scope !9, !noalias !6
  %257 = add nuw nsw i64 %215, 4644272
  %258 = getelementptr inbounds nuw [4958208 x bfloat], ptr %4, i64 0, i64 %257
  %259 = getelementptr inbounds nuw i8, ptr %258, i64 32
  %260 = getelementptr inbounds nuw i8, ptr %258, i64 64
  %261 = getelementptr inbounds nuw i8, ptr %258, i64 96
  %wide.load.4 = load <16 x bfloat>, ptr %258, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load16.4 = load <16 x bfloat>, ptr %259, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load17.4 = load <16 x bfloat>, ptr %260, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load18.4 = load <16 x bfloat>, ptr %261, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %262 = add nuw nsw i64 %216, 1161260
  %263 = getelementptr inbounds nuw [1239552 x bfloat], ptr %6, i64 0, i64 %262
  %264 = getelementptr inbounds nuw i8, ptr %263, i64 32
  %265 = getelementptr inbounds nuw i8, ptr %263, i64 64
  %266 = getelementptr inbounds nuw i8, ptr %263, i64 96
  store <16 x bfloat> %wide.load.4, ptr %263, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load16.4, ptr %264, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load17.4, ptr %265, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load18.4, ptr %266, align 2, !alias.scope !9, !noalias !6
  %267 = add nuw nsw i64 %215, 4644336
  %268 = getelementptr inbounds nuw [4958208 x bfloat], ptr %4, i64 0, i64 %267
  %269 = getelementptr inbounds nuw i8, ptr %268, i64 32
  %270 = getelementptr inbounds nuw i8, ptr %268, i64 64
  %271 = getelementptr inbounds nuw i8, ptr %268, i64 96
  %wide.load.5 = load <16 x bfloat>, ptr %268, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load16.5 = load <16 x bfloat>, ptr %269, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load17.5 = load <16 x bfloat>, ptr %270, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load18.5 = load <16 x bfloat>, ptr %271, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %272 = add nuw nsw i64 %216, 1161324
  %273 = getelementptr inbounds nuw [1239552 x bfloat], ptr %6, i64 0, i64 %272
  %274 = getelementptr inbounds nuw i8, ptr %273, i64 32
  %275 = getelementptr inbounds nuw i8, ptr %273, i64 64
  %276 = getelementptr inbounds nuw i8, ptr %273, i64 96
  store <16 x bfloat> %wide.load.5, ptr %273, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load16.5, ptr %274, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load17.5, ptr %275, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load18.5, ptr %276, align 2, !alias.scope !9, !noalias !6
  %277 = add nuw nsw i64 %215, 4644400
  %278 = getelementptr inbounds nuw [4958208 x bfloat], ptr %4, i64 0, i64 %277
  %279 = getelementptr inbounds nuw i8, ptr %278, i64 32
  %280 = getelementptr inbounds nuw i8, ptr %278, i64 64
  %281 = getelementptr inbounds nuw i8, ptr %278, i64 96
  %wide.load.6 = load <16 x bfloat>, ptr %278, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load16.6 = load <16 x bfloat>, ptr %279, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load17.6 = load <16 x bfloat>, ptr %280, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load18.6 = load <16 x bfloat>, ptr %281, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %282 = add nuw nsw i64 %216, 1161388
  %283 = getelementptr inbounds nuw [1239552 x bfloat], ptr %6, i64 0, i64 %282
  %284 = getelementptr inbounds nuw i8, ptr %283, i64 32
  %285 = getelementptr inbounds nuw i8, ptr %283, i64 64
  %286 = getelementptr inbounds nuw i8, ptr %283, i64 96
  store <16 x bfloat> %wide.load.6, ptr %283, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load16.6, ptr %284, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load17.6, ptr %285, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load18.6, ptr %286, align 2, !alias.scope !9, !noalias !6
  %287 = add nuw nsw i64 %215, 4644464
  %288 = getelementptr inbounds nuw [4958208 x bfloat], ptr %4, i64 0, i64 %287
  %289 = getelementptr inbounds nuw i8, ptr %288, i64 32
  %290 = getelementptr inbounds nuw i8, ptr %288, i64 64
  %291 = getelementptr inbounds nuw i8, ptr %288, i64 96
  %wide.load.7 = load <16 x bfloat>, ptr %288, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load16.7 = load <16 x bfloat>, ptr %289, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load17.7 = load <16 x bfloat>, ptr %290, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load18.7 = load <16 x bfloat>, ptr %291, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %292 = add nuw nsw i64 %216, 1161452
  %293 = getelementptr inbounds nuw [1239552 x bfloat], ptr %6, i64 0, i64 %292
  %294 = getelementptr inbounds nuw i8, ptr %293, i64 32
  %295 = getelementptr inbounds nuw i8, ptr %293, i64 64
  %296 = getelementptr inbounds nuw i8, ptr %293, i64 96
  store <16 x bfloat> %wide.load.7, ptr %293, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load16.7, ptr %294, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load17.7, ptr %295, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load18.7, ptr %296, align 2, !alias.scope !9, !noalias !6
  %297 = add nuw nsw i64 %215, 4644528
  %298 = getelementptr inbounds nuw [4958208 x bfloat], ptr %4, i64 0, i64 %297
  %299 = getelementptr inbounds nuw i8, ptr %298, i64 32
  %300 = getelementptr inbounds nuw i8, ptr %298, i64 64
  %301 = getelementptr inbounds nuw i8, ptr %298, i64 96
  %wide.load.8 = load <16 x bfloat>, ptr %298, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load16.8 = load <16 x bfloat>, ptr %299, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load17.8 = load <16 x bfloat>, ptr %300, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load18.8 = load <16 x bfloat>, ptr %301, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %302 = add nuw nsw i64 %216, 1161516
  %303 = getelementptr inbounds nuw [1239552 x bfloat], ptr %6, i64 0, i64 %302
  %304 = getelementptr inbounds nuw i8, ptr %303, i64 32
  %305 = getelementptr inbounds nuw i8, ptr %303, i64 64
  %306 = getelementptr inbounds nuw i8, ptr %303, i64 96
  store <16 x bfloat> %wide.load.8, ptr %303, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load16.8, ptr %304, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load17.8, ptr %305, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load18.8, ptr %306, align 2, !alias.scope !9, !noalias !6
  %307 = add nuw nsw i64 %215, 4644592
  %308 = getelementptr inbounds nuw [4958208 x bfloat], ptr %4, i64 0, i64 %307
  %309 = getelementptr inbounds nuw i8, ptr %308, i64 32
  %310 = getelementptr inbounds nuw i8, ptr %308, i64 64
  %311 = getelementptr inbounds nuw i8, ptr %308, i64 96
  %wide.load.9 = load <16 x bfloat>, ptr %308, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load16.9 = load <16 x bfloat>, ptr %309, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load17.9 = load <16 x bfloat>, ptr %310, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load18.9 = load <16 x bfloat>, ptr %311, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %312 = add nuw nsw i64 %216, 1161580
  %313 = getelementptr inbounds nuw [1239552 x bfloat], ptr %6, i64 0, i64 %312
  %314 = getelementptr inbounds nuw i8, ptr %313, i64 32
  %315 = getelementptr inbounds nuw i8, ptr %313, i64 64
  %316 = getelementptr inbounds nuw i8, ptr %313, i64 96
  store <16 x bfloat> %wide.load.9, ptr %313, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load16.9, ptr %314, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load17.9, ptr %315, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load18.9, ptr %316, align 2, !alias.scope !9, !noalias !6
  %317 = add nuw nsw i64 %215, 4644656
  %318 = getelementptr inbounds nuw [4958208 x bfloat], ptr %4, i64 0, i64 %317
  %319 = getelementptr inbounds nuw i8, ptr %318, i64 32
  %320 = getelementptr inbounds nuw i8, ptr %318, i64 64
  %321 = getelementptr inbounds nuw i8, ptr %318, i64 96
  %wide.load.10 = load <16 x bfloat>, ptr %318, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load16.10 = load <16 x bfloat>, ptr %319, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load17.10 = load <16 x bfloat>, ptr %320, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load18.10 = load <16 x bfloat>, ptr %321, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %322 = add nuw nsw i64 %216, 1161644
  %323 = getelementptr inbounds nuw [1239552 x bfloat], ptr %6, i64 0, i64 %322
  %324 = getelementptr inbounds nuw i8, ptr %323, i64 32
  %325 = getelementptr inbounds nuw i8, ptr %323, i64 64
  %326 = getelementptr inbounds nuw i8, ptr %323, i64 96
  store <16 x bfloat> %wide.load.10, ptr %323, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load16.10, ptr %324, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load17.10, ptr %325, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load18.10, ptr %326, align 2, !alias.scope !9, !noalias !6
  %327 = add nuw nsw i64 %215, 4644720
  %328 = getelementptr inbounds nuw [4958208 x bfloat], ptr %4, i64 0, i64 %327
  %329 = getelementptr inbounds nuw i8, ptr %328, i64 32
  %330 = getelementptr inbounds nuw i8, ptr %328, i64 64
  %331 = getelementptr inbounds nuw i8, ptr %328, i64 96
  %wide.load.11 = load <16 x bfloat>, ptr %328, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load16.11 = load <16 x bfloat>, ptr %329, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load17.11 = load <16 x bfloat>, ptr %330, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load18.11 = load <16 x bfloat>, ptr %331, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %332 = add nuw nsw i64 %216, 1161708
  %333 = getelementptr inbounds nuw [1239552 x bfloat], ptr %6, i64 0, i64 %332
  %334 = getelementptr inbounds nuw i8, ptr %333, i64 32
  %335 = getelementptr inbounds nuw i8, ptr %333, i64 64
  %336 = getelementptr inbounds nuw i8, ptr %333, i64 96
  store <16 x bfloat> %wide.load.11, ptr %333, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load16.11, ptr %334, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load17.11, ptr %335, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load18.11, ptr %336, align 2, !alias.scope !9, !noalias !6
  %337 = add nuw nsw i64 %215, 4644784
  %338 = getelementptr inbounds nuw [4958208 x bfloat], ptr %4, i64 0, i64 %337
  %339 = getelementptr inbounds nuw i8, ptr %338, i64 32
  %340 = getelementptr inbounds nuw i8, ptr %338, i64 64
  %341 = getelementptr inbounds nuw i8, ptr %338, i64 96
  %wide.load.12 = load <16 x bfloat>, ptr %338, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load16.12 = load <16 x bfloat>, ptr %339, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load17.12 = load <16 x bfloat>, ptr %340, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load18.12 = load <16 x bfloat>, ptr %341, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %342 = add nuw nsw i64 %216, 1161772
  %343 = getelementptr inbounds nuw [1239552 x bfloat], ptr %6, i64 0, i64 %342
  %344 = getelementptr inbounds nuw i8, ptr %343, i64 32
  %345 = getelementptr inbounds nuw i8, ptr %343, i64 64
  %346 = getelementptr inbounds nuw i8, ptr %343, i64 96
  store <16 x bfloat> %wide.load.12, ptr %343, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load16.12, ptr %344, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load17.12, ptr %345, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load18.12, ptr %346, align 2, !alias.scope !9, !noalias !6
  %347 = add nuw nsw i64 %215, 4644848
  %348 = getelementptr inbounds nuw [4958208 x bfloat], ptr %4, i64 0, i64 %347
  %349 = getelementptr inbounds nuw i8, ptr %348, i64 32
  %350 = getelementptr inbounds nuw i8, ptr %348, i64 64
  %351 = getelementptr inbounds nuw i8, ptr %348, i64 96
  %wide.load.13 = load <16 x bfloat>, ptr %348, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load16.13 = load <16 x bfloat>, ptr %349, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load17.13 = load <16 x bfloat>, ptr %350, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load18.13 = load <16 x bfloat>, ptr %351, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %352 = add nuw nsw i64 %216, 1161836
  %353 = getelementptr inbounds nuw [1239552 x bfloat], ptr %6, i64 0, i64 %352
  %354 = getelementptr inbounds nuw i8, ptr %353, i64 32
  %355 = getelementptr inbounds nuw i8, ptr %353, i64 64
  %356 = getelementptr inbounds nuw i8, ptr %353, i64 96
  store <16 x bfloat> %wide.load.13, ptr %353, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load16.13, ptr %354, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load17.13, ptr %355, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load18.13, ptr %356, align 2, !alias.scope !9, !noalias !6
  %357 = add nuw nsw i64 %215, 4644912
  %358 = getelementptr inbounds nuw [4958208 x bfloat], ptr %4, i64 0, i64 %357
  %359 = getelementptr inbounds nuw i8, ptr %358, i64 32
  %360 = getelementptr inbounds nuw i8, ptr %358, i64 64
  %361 = getelementptr inbounds nuw i8, ptr %358, i64 96
  %wide.load.14 = load <16 x bfloat>, ptr %358, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load16.14 = load <16 x bfloat>, ptr %359, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load17.14 = load <16 x bfloat>, ptr %360, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load18.14 = load <16 x bfloat>, ptr %361, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %362 = add nuw nsw i64 %216, 1161900
  %363 = getelementptr inbounds nuw [1239552 x bfloat], ptr %6, i64 0, i64 %362
  %364 = getelementptr inbounds nuw i8, ptr %363, i64 32
  %365 = getelementptr inbounds nuw i8, ptr %363, i64 64
  %366 = getelementptr inbounds nuw i8, ptr %363, i64 96
  store <16 x bfloat> %wide.load.14, ptr %363, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load16.14, ptr %364, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load17.14, ptr %365, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load18.14, ptr %366, align 2, !alias.scope !9, !noalias !6
  %367 = add nuw nsw i64 %215, 4644976
  %368 = getelementptr inbounds nuw [4958208 x bfloat], ptr %4, i64 0, i64 %367
  %369 = getelementptr inbounds nuw i8, ptr %368, i64 32
  %370 = getelementptr inbounds nuw i8, ptr %368, i64 64
  %371 = getelementptr inbounds nuw i8, ptr %368, i64 96
  %wide.load.15 = load <16 x bfloat>, ptr %368, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load16.15 = load <16 x bfloat>, ptr %369, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load17.15 = load <16 x bfloat>, ptr %370, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load18.15 = load <16 x bfloat>, ptr %371, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %372 = add nuw nsw i64 %216, 1161964
  %373 = getelementptr inbounds nuw [1239552 x bfloat], ptr %6, i64 0, i64 %372
  %374 = getelementptr inbounds nuw i8, ptr %373, i64 32
  %375 = getelementptr inbounds nuw i8, ptr %373, i64 64
  %376 = getelementptr inbounds nuw i8, ptr %373, i64 96
  store <16 x bfloat> %wide.load.15, ptr %373, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load16.15, ptr %374, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load17.15, ptr %375, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load18.15, ptr %376, align 2, !alias.scope !9, !noalias !6
  %377 = add nuw nsw i64 %215, 4645040
  %378 = getelementptr inbounds nuw [4958208 x bfloat], ptr %4, i64 0, i64 %377
  %wide.load20 = load <16 x bfloat>, ptr %378, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %379 = add nuw nsw i64 %216, 1162028
  %380 = getelementptr inbounds nuw [1239552 x bfloat], ptr %6, i64 0, i64 %379
  store <16 x bfloat> %wide.load20, ptr %380, align 2, !alias.scope !9, !noalias !6
  %381 = add nuw nsw i64 %215, 4645056
  %382 = getelementptr inbounds nuw [4958208 x bfloat], ptr %4, i64 0, i64 %381
  %wide.load20.1 = load <16 x bfloat>, ptr %382, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %383 = add nuw nsw i64 %216, 1162044
  %384 = getelementptr inbounds nuw [1239552 x bfloat], ptr %6, i64 0, i64 %383
  store <16 x bfloat> %wide.load20.1, ptr %384, align 2, !alias.scope !9, !noalias !6
  %385 = add nuw nsw i64 %215, 4645072
  %386 = getelementptr inbounds nuw [4958208 x bfloat], ptr %4, i64 0, i64 %385
  %wide.load20.2 = load <16 x bfloat>, ptr %386, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %387 = add nuw nsw i64 %216, 1162060
  %388 = getelementptr inbounds nuw [1239552 x bfloat], ptr %6, i64 0, i64 %387
  store <16 x bfloat> %wide.load20.2, ptr %388, align 2, !alias.scope !9, !noalias !6
  %389 = add nuw nsw i64 %215, 4645088
  %390 = getelementptr inbounds nuw [4958208 x bfloat], ptr %4, i64 0, i64 %389
  %391 = load bfloat, ptr %390, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %392 = add nuw nsw i64 %216, 1162076
  %393 = getelementptr inbounds nuw [1239552 x bfloat], ptr %6, i64 0, i64 %392
  store bfloat %391, ptr %393, align 2, !alias.scope !9, !noalias !6
  %394 = add nuw nsw i64 %215, 4645089
  %395 = getelementptr inbounds nuw [4958208 x bfloat], ptr %4, i64 0, i64 %394
  %396 = load bfloat, ptr %395, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %397 = add nuw nsw i64 %216, 1162077
  %398 = getelementptr inbounds nuw [1239552 x bfloat], ptr %6, i64 0, i64 %397
  store bfloat %396, ptr %398, align 2, !alias.scope !9, !noalias !6
  %399 = add nuw nsw i64 %215, 4645090
  %400 = getelementptr inbounds nuw [4958208 x bfloat], ptr %4, i64 0, i64 %399
  %401 = load bfloat, ptr %400, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %402 = add nuw nsw i64 %216, 1162078
  %403 = getelementptr inbounds nuw [1239552 x bfloat], ptr %6, i64 0, i64 %402
  store bfloat %401, ptr %403, align 2, !alias.scope !9, !noalias !6
  %404 = add nuw nsw i64 %215, 4645091
  %405 = getelementptr inbounds nuw [4958208 x bfloat], ptr %4, i64 0, i64 %404
  %406 = load bfloat, ptr %405, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %407 = add nuw nsw i64 %216, 1162079
  %408 = getelementptr inbounds nuw [1239552 x bfloat], ptr %6, i64 0, i64 %407
  store bfloat %406, ptr %408, align 2, !alias.scope !9, !noalias !6
  %409 = add nuw nsw i64 %214, 1
  %exitcond8.not = icmp eq i64 %409, 73
  br i1 %exitcond8.not, label %slice_convert_fusion.3_wrapped.exit, label %iter.check, !llvm.loop !11

slice_convert_fusion.3_wrapped.exit:              ; preds = %iter.check, %iter.check23, %11, %212
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
!4 = !{i64 9916416}
!5 = !{i64 2479104}
!6 = !{!7}
!7 = distinct !{!7, !8, !"slice_convert_fusion.3_wrapped: argument 0"}
!8 = distinct !{!8, !"slice_convert_fusion.3_wrapped"}
!9 = !{!10}
!10 = distinct !{!10, !8, !"slice_convert_fusion.3_wrapped: argument 1"}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.unroll.disable"}
