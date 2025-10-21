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
  %10 = icmp slt i64 %9, 12
  br i1 %10, label %11, label %110

11:                                               ; preds = %1
  %12 = icmp sgt i64 %9, -1
  br i1 %12, label %13, label %slice_convert_fusion.3_wrapped.exit

13:                                               ; preds = %11
  %14 = mul nuw nsw i64 %9, 31457280
  %15 = mul nuw nsw i64 %9, 7864320
  br label %16

16:                                               ; preds = %13, %108
  %17 = phi i64 [ 0, %13 ], [ %109, %108 ]
  %18 = mul nuw nsw i64 %17, 3145728
  %19 = add nuw nsw i64 %18, %14
  %20 = mul nuw nsw i64 %17, 786432
  %21 = add nuw nsw i64 %20, %15
  br label %vector.ph26

vector.ph26:                                      ; preds = %16, %middle.block34
  %22 = phi i64 [ 0, %16 ], [ %107, %middle.block34 ]
  %23 = shl nuw nsw i64 %22, 11
  %24 = add nuw nsw i64 %23, %19
  %25 = add nuw nsw i64 %21, %23
  br label %vector.body27

vector.body27:                                    ; preds = %vector.body27, %vector.ph26
  %index28 = phi i64 [ 0, %vector.ph26 ], [ %index.next33.7, %vector.body27 ]
  %26 = add nuw nsw i64 %index28, %24
  %27 = getelementptr inbounds nuw [402653184 x bfloat], ptr %4, i64 0, i64 %26
  %28 = getelementptr inbounds nuw i8, ptr %27, i64 32
  %29 = getelementptr inbounds nuw i8, ptr %27, i64 64
  %30 = getelementptr inbounds nuw i8, ptr %27, i64 96
  %wide.load29 = load <16 x bfloat>, ptr %27, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load30 = load <16 x bfloat>, ptr %28, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load31 = load <16 x bfloat>, ptr %29, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load32 = load <16 x bfloat>, ptr %30, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %31 = add nuw nsw i64 %index28, %25
  %32 = getelementptr inbounds nuw [100663296 x bfloat], ptr %6, i64 0, i64 %31
  %33 = getelementptr inbounds nuw i8, ptr %32, i64 32
  %34 = getelementptr inbounds nuw i8, ptr %32, i64 64
  %35 = getelementptr inbounds nuw i8, ptr %32, i64 96
  store <16 x bfloat> %wide.load29, ptr %32, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load30, ptr %33, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load31, ptr %34, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load32, ptr %35, align 2, !alias.scope !9, !noalias !6
  %index.next33 = or disjoint i64 %index28, 64
  %36 = add nuw nsw i64 %index.next33, %24
  %37 = getelementptr inbounds nuw [402653184 x bfloat], ptr %4, i64 0, i64 %36
  %38 = getelementptr inbounds nuw i8, ptr %37, i64 32
  %39 = getelementptr inbounds nuw i8, ptr %37, i64 64
  %40 = getelementptr inbounds nuw i8, ptr %37, i64 96
  %wide.load29.1 = load <16 x bfloat>, ptr %37, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load30.1 = load <16 x bfloat>, ptr %38, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load31.1 = load <16 x bfloat>, ptr %39, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load32.1 = load <16 x bfloat>, ptr %40, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %41 = add nuw nsw i64 %index.next33, %25
  %42 = getelementptr inbounds nuw [100663296 x bfloat], ptr %6, i64 0, i64 %41
  %43 = getelementptr inbounds nuw i8, ptr %42, i64 32
  %44 = getelementptr inbounds nuw i8, ptr %42, i64 64
  %45 = getelementptr inbounds nuw i8, ptr %42, i64 96
  store <16 x bfloat> %wide.load29.1, ptr %42, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load30.1, ptr %43, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load31.1, ptr %44, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load32.1, ptr %45, align 2, !alias.scope !9, !noalias !6
  %index.next33.1 = or disjoint i64 %index28, 128
  %46 = add nuw nsw i64 %index.next33.1, %24
  %47 = getelementptr inbounds nuw [402653184 x bfloat], ptr %4, i64 0, i64 %46
  %48 = getelementptr inbounds nuw i8, ptr %47, i64 32
  %49 = getelementptr inbounds nuw i8, ptr %47, i64 64
  %50 = getelementptr inbounds nuw i8, ptr %47, i64 96
  %wide.load29.2 = load <16 x bfloat>, ptr %47, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load30.2 = load <16 x bfloat>, ptr %48, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load31.2 = load <16 x bfloat>, ptr %49, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load32.2 = load <16 x bfloat>, ptr %50, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %51 = add nuw nsw i64 %index.next33.1, %25
  %52 = getelementptr inbounds nuw [100663296 x bfloat], ptr %6, i64 0, i64 %51
  %53 = getelementptr inbounds nuw i8, ptr %52, i64 32
  %54 = getelementptr inbounds nuw i8, ptr %52, i64 64
  %55 = getelementptr inbounds nuw i8, ptr %52, i64 96
  store <16 x bfloat> %wide.load29.2, ptr %52, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load30.2, ptr %53, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load31.2, ptr %54, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load32.2, ptr %55, align 2, !alias.scope !9, !noalias !6
  %index.next33.2 = or disjoint i64 %index28, 192
  %56 = add nuw nsw i64 %index.next33.2, %24
  %57 = getelementptr inbounds nuw [402653184 x bfloat], ptr %4, i64 0, i64 %56
  %58 = getelementptr inbounds nuw i8, ptr %57, i64 32
  %59 = getelementptr inbounds nuw i8, ptr %57, i64 64
  %60 = getelementptr inbounds nuw i8, ptr %57, i64 96
  %wide.load29.3 = load <16 x bfloat>, ptr %57, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load30.3 = load <16 x bfloat>, ptr %58, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load31.3 = load <16 x bfloat>, ptr %59, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load32.3 = load <16 x bfloat>, ptr %60, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %61 = add nuw nsw i64 %index.next33.2, %25
  %62 = getelementptr inbounds nuw [100663296 x bfloat], ptr %6, i64 0, i64 %61
  %63 = getelementptr inbounds nuw i8, ptr %62, i64 32
  %64 = getelementptr inbounds nuw i8, ptr %62, i64 64
  %65 = getelementptr inbounds nuw i8, ptr %62, i64 96
  store <16 x bfloat> %wide.load29.3, ptr %62, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load30.3, ptr %63, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load31.3, ptr %64, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load32.3, ptr %65, align 2, !alias.scope !9, !noalias !6
  %index.next33.3 = or disjoint i64 %index28, 256
  %66 = add nuw nsw i64 %index.next33.3, %24
  %67 = getelementptr inbounds nuw [402653184 x bfloat], ptr %4, i64 0, i64 %66
  %68 = getelementptr inbounds nuw i8, ptr %67, i64 32
  %69 = getelementptr inbounds nuw i8, ptr %67, i64 64
  %70 = getelementptr inbounds nuw i8, ptr %67, i64 96
  %wide.load29.4 = load <16 x bfloat>, ptr %67, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load30.4 = load <16 x bfloat>, ptr %68, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load31.4 = load <16 x bfloat>, ptr %69, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load32.4 = load <16 x bfloat>, ptr %70, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %71 = add nuw nsw i64 %index.next33.3, %25
  %72 = getelementptr inbounds nuw [100663296 x bfloat], ptr %6, i64 0, i64 %71
  %73 = getelementptr inbounds nuw i8, ptr %72, i64 32
  %74 = getelementptr inbounds nuw i8, ptr %72, i64 64
  %75 = getelementptr inbounds nuw i8, ptr %72, i64 96
  store <16 x bfloat> %wide.load29.4, ptr %72, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load30.4, ptr %73, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load31.4, ptr %74, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load32.4, ptr %75, align 2, !alias.scope !9, !noalias !6
  %index.next33.4 = or disjoint i64 %index28, 320
  %76 = add nuw nsw i64 %index.next33.4, %24
  %77 = getelementptr inbounds nuw [402653184 x bfloat], ptr %4, i64 0, i64 %76
  %78 = getelementptr inbounds nuw i8, ptr %77, i64 32
  %79 = getelementptr inbounds nuw i8, ptr %77, i64 64
  %80 = getelementptr inbounds nuw i8, ptr %77, i64 96
  %wide.load29.5 = load <16 x bfloat>, ptr %77, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load30.5 = load <16 x bfloat>, ptr %78, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load31.5 = load <16 x bfloat>, ptr %79, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load32.5 = load <16 x bfloat>, ptr %80, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %81 = add nuw nsw i64 %index.next33.4, %25
  %82 = getelementptr inbounds nuw [100663296 x bfloat], ptr %6, i64 0, i64 %81
  %83 = getelementptr inbounds nuw i8, ptr %82, i64 32
  %84 = getelementptr inbounds nuw i8, ptr %82, i64 64
  %85 = getelementptr inbounds nuw i8, ptr %82, i64 96
  store <16 x bfloat> %wide.load29.5, ptr %82, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load30.5, ptr %83, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load31.5, ptr %84, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load32.5, ptr %85, align 2, !alias.scope !9, !noalias !6
  %index.next33.5 = or disjoint i64 %index28, 384
  %86 = add nuw nsw i64 %index.next33.5, %24
  %87 = getelementptr inbounds nuw [402653184 x bfloat], ptr %4, i64 0, i64 %86
  %88 = getelementptr inbounds nuw i8, ptr %87, i64 32
  %89 = getelementptr inbounds nuw i8, ptr %87, i64 64
  %90 = getelementptr inbounds nuw i8, ptr %87, i64 96
  %wide.load29.6 = load <16 x bfloat>, ptr %87, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load30.6 = load <16 x bfloat>, ptr %88, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load31.6 = load <16 x bfloat>, ptr %89, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load32.6 = load <16 x bfloat>, ptr %90, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %91 = add nuw nsw i64 %index.next33.5, %25
  %92 = getelementptr inbounds nuw [100663296 x bfloat], ptr %6, i64 0, i64 %91
  %93 = getelementptr inbounds nuw i8, ptr %92, i64 32
  %94 = getelementptr inbounds nuw i8, ptr %92, i64 64
  %95 = getelementptr inbounds nuw i8, ptr %92, i64 96
  store <16 x bfloat> %wide.load29.6, ptr %92, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load30.6, ptr %93, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load31.6, ptr %94, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load32.6, ptr %95, align 2, !alias.scope !9, !noalias !6
  %index.next33.6 = or disjoint i64 %index28, 448
  %96 = add nuw nsw i64 %index.next33.6, %24
  %97 = getelementptr inbounds nuw [402653184 x bfloat], ptr %4, i64 0, i64 %96
  %98 = getelementptr inbounds nuw i8, ptr %97, i64 32
  %99 = getelementptr inbounds nuw i8, ptr %97, i64 64
  %100 = getelementptr inbounds nuw i8, ptr %97, i64 96
  %wide.load29.7 = load <16 x bfloat>, ptr %97, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load30.7 = load <16 x bfloat>, ptr %98, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load31.7 = load <16 x bfloat>, ptr %99, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load32.7 = load <16 x bfloat>, ptr %100, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %101 = add nuw nsw i64 %index.next33.6, %25
  %102 = getelementptr inbounds nuw [100663296 x bfloat], ptr %6, i64 0, i64 %101
  %103 = getelementptr inbounds nuw i8, ptr %102, i64 32
  %104 = getelementptr inbounds nuw i8, ptr %102, i64 64
  %105 = getelementptr inbounds nuw i8, ptr %102, i64 96
  store <16 x bfloat> %wide.load29.7, ptr %102, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load30.7, ptr %103, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load31.7, ptr %104, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load32.7, ptr %105, align 2, !alias.scope !9, !noalias !6
  %index.next33.7 = add nuw nsw i64 %index28, 512
  %106 = icmp eq i64 %index.next33.7, 2048
  br i1 %106, label %middle.block34, label %vector.body27, !llvm.loop !11

middle.block34:                                   ; preds = %vector.body27
  %107 = add nuw nsw i64 %22, 1
  %exitcond14.not = icmp eq i64 %107, 384
  br i1 %exitcond14.not, label %108, label %vector.ph26, !llvm.loop !14

108:                                              ; preds = %middle.block34
  %109 = add nuw nsw i64 %17, 1
  %exitcond15.not = icmp eq i64 %109, 10
  br i1 %exitcond15.not, label %slice_convert_fusion.3_wrapped.exit, label %16, !llvm.loop !14

110:                                              ; preds = %1
  %111 = mul nuw nsw i64 %9, 10
  %112 = mul nuw nsw i64 %9, 31457280
  %113 = mul nuw nsw i64 %9, 7864320
  br label %114

114:                                              ; preds = %110, %.loopexit
  %115 = phi i64 [ 0, %110 ], [ %209, %.loopexit ]
  %116 = add nuw nsw i64 %115, %111
  %117 = icmp samesign ult i64 %116, 128
  br i1 %117, label %118, label %.loopexit

118:                                              ; preds = %114
  %119 = mul nuw nsw i64 %115, 3145728
  %120 = add nuw nsw i64 %119, %112
  %121 = mul nuw nsw i64 %115, 786432
  %122 = add nuw nsw i64 %121, %113
  br label %vector.ph

vector.ph:                                        ; preds = %118, %middle.block
  %123 = phi i64 [ 0, %118 ], [ %208, %middle.block ]
  %124 = shl nuw nsw i64 %123, 11
  %125 = add nuw nsw i64 %124, %120
  %126 = add nuw nsw i64 %122, %124
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.7, %vector.body ]
  %127 = add nuw nsw i64 %index, %125
  %128 = getelementptr inbounds nuw [402653184 x bfloat], ptr %4, i64 0, i64 %127
  %129 = getelementptr inbounds nuw i8, ptr %128, i64 32
  %130 = getelementptr inbounds nuw i8, ptr %128, i64 64
  %131 = getelementptr inbounds nuw i8, ptr %128, i64 96
  %wide.load = load <16 x bfloat>, ptr %128, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load22 = load <16 x bfloat>, ptr %129, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load23 = load <16 x bfloat>, ptr %130, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load24 = load <16 x bfloat>, ptr %131, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %132 = add nuw nsw i64 %index, %126
  %133 = getelementptr inbounds nuw [100663296 x bfloat], ptr %6, i64 0, i64 %132
  %134 = getelementptr inbounds nuw i8, ptr %133, i64 32
  %135 = getelementptr inbounds nuw i8, ptr %133, i64 64
  %136 = getelementptr inbounds nuw i8, ptr %133, i64 96
  store <16 x bfloat> %wide.load, ptr %133, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load22, ptr %134, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load23, ptr %135, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load24, ptr %136, align 2, !alias.scope !9, !noalias !6
  %index.next = or disjoint i64 %index, 64
  %137 = add nuw nsw i64 %index.next, %125
  %138 = getelementptr inbounds nuw [402653184 x bfloat], ptr %4, i64 0, i64 %137
  %139 = getelementptr inbounds nuw i8, ptr %138, i64 32
  %140 = getelementptr inbounds nuw i8, ptr %138, i64 64
  %141 = getelementptr inbounds nuw i8, ptr %138, i64 96
  %wide.load.1 = load <16 x bfloat>, ptr %138, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load22.1 = load <16 x bfloat>, ptr %139, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load23.1 = load <16 x bfloat>, ptr %140, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load24.1 = load <16 x bfloat>, ptr %141, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %142 = add nuw nsw i64 %index.next, %126
  %143 = getelementptr inbounds nuw [100663296 x bfloat], ptr %6, i64 0, i64 %142
  %144 = getelementptr inbounds nuw i8, ptr %143, i64 32
  %145 = getelementptr inbounds nuw i8, ptr %143, i64 64
  %146 = getelementptr inbounds nuw i8, ptr %143, i64 96
  store <16 x bfloat> %wide.load.1, ptr %143, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load22.1, ptr %144, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load23.1, ptr %145, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load24.1, ptr %146, align 2, !alias.scope !9, !noalias !6
  %index.next.1 = or disjoint i64 %index, 128
  %147 = add nuw nsw i64 %index.next.1, %125
  %148 = getelementptr inbounds nuw [402653184 x bfloat], ptr %4, i64 0, i64 %147
  %149 = getelementptr inbounds nuw i8, ptr %148, i64 32
  %150 = getelementptr inbounds nuw i8, ptr %148, i64 64
  %151 = getelementptr inbounds nuw i8, ptr %148, i64 96
  %wide.load.2 = load <16 x bfloat>, ptr %148, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load22.2 = load <16 x bfloat>, ptr %149, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load23.2 = load <16 x bfloat>, ptr %150, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load24.2 = load <16 x bfloat>, ptr %151, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %152 = add nuw nsw i64 %index.next.1, %126
  %153 = getelementptr inbounds nuw [100663296 x bfloat], ptr %6, i64 0, i64 %152
  %154 = getelementptr inbounds nuw i8, ptr %153, i64 32
  %155 = getelementptr inbounds nuw i8, ptr %153, i64 64
  %156 = getelementptr inbounds nuw i8, ptr %153, i64 96
  store <16 x bfloat> %wide.load.2, ptr %153, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load22.2, ptr %154, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load23.2, ptr %155, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load24.2, ptr %156, align 2, !alias.scope !9, !noalias !6
  %index.next.2 = or disjoint i64 %index, 192
  %157 = add nuw nsw i64 %index.next.2, %125
  %158 = getelementptr inbounds nuw [402653184 x bfloat], ptr %4, i64 0, i64 %157
  %159 = getelementptr inbounds nuw i8, ptr %158, i64 32
  %160 = getelementptr inbounds nuw i8, ptr %158, i64 64
  %161 = getelementptr inbounds nuw i8, ptr %158, i64 96
  %wide.load.3 = load <16 x bfloat>, ptr %158, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load22.3 = load <16 x bfloat>, ptr %159, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load23.3 = load <16 x bfloat>, ptr %160, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load24.3 = load <16 x bfloat>, ptr %161, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %162 = add nuw nsw i64 %index.next.2, %126
  %163 = getelementptr inbounds nuw [100663296 x bfloat], ptr %6, i64 0, i64 %162
  %164 = getelementptr inbounds nuw i8, ptr %163, i64 32
  %165 = getelementptr inbounds nuw i8, ptr %163, i64 64
  %166 = getelementptr inbounds nuw i8, ptr %163, i64 96
  store <16 x bfloat> %wide.load.3, ptr %163, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load22.3, ptr %164, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load23.3, ptr %165, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load24.3, ptr %166, align 2, !alias.scope !9, !noalias !6
  %index.next.3 = or disjoint i64 %index, 256
  %167 = add nuw nsw i64 %index.next.3, %125
  %168 = getelementptr inbounds nuw [402653184 x bfloat], ptr %4, i64 0, i64 %167
  %169 = getelementptr inbounds nuw i8, ptr %168, i64 32
  %170 = getelementptr inbounds nuw i8, ptr %168, i64 64
  %171 = getelementptr inbounds nuw i8, ptr %168, i64 96
  %wide.load.4 = load <16 x bfloat>, ptr %168, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load22.4 = load <16 x bfloat>, ptr %169, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load23.4 = load <16 x bfloat>, ptr %170, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load24.4 = load <16 x bfloat>, ptr %171, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %172 = add nuw nsw i64 %index.next.3, %126
  %173 = getelementptr inbounds nuw [100663296 x bfloat], ptr %6, i64 0, i64 %172
  %174 = getelementptr inbounds nuw i8, ptr %173, i64 32
  %175 = getelementptr inbounds nuw i8, ptr %173, i64 64
  %176 = getelementptr inbounds nuw i8, ptr %173, i64 96
  store <16 x bfloat> %wide.load.4, ptr %173, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load22.4, ptr %174, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load23.4, ptr %175, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load24.4, ptr %176, align 2, !alias.scope !9, !noalias !6
  %index.next.4 = or disjoint i64 %index, 320
  %177 = add nuw nsw i64 %index.next.4, %125
  %178 = getelementptr inbounds nuw [402653184 x bfloat], ptr %4, i64 0, i64 %177
  %179 = getelementptr inbounds nuw i8, ptr %178, i64 32
  %180 = getelementptr inbounds nuw i8, ptr %178, i64 64
  %181 = getelementptr inbounds nuw i8, ptr %178, i64 96
  %wide.load.5 = load <16 x bfloat>, ptr %178, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load22.5 = load <16 x bfloat>, ptr %179, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load23.5 = load <16 x bfloat>, ptr %180, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load24.5 = load <16 x bfloat>, ptr %181, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %182 = add nuw nsw i64 %index.next.4, %126
  %183 = getelementptr inbounds nuw [100663296 x bfloat], ptr %6, i64 0, i64 %182
  %184 = getelementptr inbounds nuw i8, ptr %183, i64 32
  %185 = getelementptr inbounds nuw i8, ptr %183, i64 64
  %186 = getelementptr inbounds nuw i8, ptr %183, i64 96
  store <16 x bfloat> %wide.load.5, ptr %183, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load22.5, ptr %184, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load23.5, ptr %185, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load24.5, ptr %186, align 2, !alias.scope !9, !noalias !6
  %index.next.5 = or disjoint i64 %index, 384
  %187 = add nuw nsw i64 %index.next.5, %125
  %188 = getelementptr inbounds nuw [402653184 x bfloat], ptr %4, i64 0, i64 %187
  %189 = getelementptr inbounds nuw i8, ptr %188, i64 32
  %190 = getelementptr inbounds nuw i8, ptr %188, i64 64
  %191 = getelementptr inbounds nuw i8, ptr %188, i64 96
  %wide.load.6 = load <16 x bfloat>, ptr %188, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load22.6 = load <16 x bfloat>, ptr %189, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load23.6 = load <16 x bfloat>, ptr %190, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load24.6 = load <16 x bfloat>, ptr %191, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %192 = add nuw nsw i64 %index.next.5, %126
  %193 = getelementptr inbounds nuw [100663296 x bfloat], ptr %6, i64 0, i64 %192
  %194 = getelementptr inbounds nuw i8, ptr %193, i64 32
  %195 = getelementptr inbounds nuw i8, ptr %193, i64 64
  %196 = getelementptr inbounds nuw i8, ptr %193, i64 96
  store <16 x bfloat> %wide.load.6, ptr %193, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load22.6, ptr %194, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load23.6, ptr %195, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load24.6, ptr %196, align 2, !alias.scope !9, !noalias !6
  %index.next.6 = or disjoint i64 %index, 448
  %197 = add nuw nsw i64 %index.next.6, %125
  %198 = getelementptr inbounds nuw [402653184 x bfloat], ptr %4, i64 0, i64 %197
  %199 = getelementptr inbounds nuw i8, ptr %198, i64 32
  %200 = getelementptr inbounds nuw i8, ptr %198, i64 64
  %201 = getelementptr inbounds nuw i8, ptr %198, i64 96
  %wide.load.7 = load <16 x bfloat>, ptr %198, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load22.7 = load <16 x bfloat>, ptr %199, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load23.7 = load <16 x bfloat>, ptr %200, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load24.7 = load <16 x bfloat>, ptr %201, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %202 = add nuw nsw i64 %index.next.6, %126
  %203 = getelementptr inbounds nuw [100663296 x bfloat], ptr %6, i64 0, i64 %202
  %204 = getelementptr inbounds nuw i8, ptr %203, i64 32
  %205 = getelementptr inbounds nuw i8, ptr %203, i64 64
  %206 = getelementptr inbounds nuw i8, ptr %203, i64 96
  store <16 x bfloat> %wide.load.7, ptr %203, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load22.7, ptr %204, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load23.7, ptr %205, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load24.7, ptr %206, align 2, !alias.scope !9, !noalias !6
  %index.next.7 = add nuw nsw i64 %index, 512
  %207 = icmp eq i64 %index.next.7, 2048
  br i1 %207, label %middle.block, label %vector.body, !llvm.loop !16

middle.block:                                     ; preds = %vector.body
  %208 = add nuw nsw i64 %123, 1
  %exitcond10.not = icmp eq i64 %208, 384
  br i1 %exitcond10.not, label %.loopexit, label %vector.ph, !llvm.loop !14

.loopexit:                                        ; preds = %middle.block, %114
  %209 = add nuw nsw i64 %115, 1
  %exitcond11.not = icmp eq i64 %209, 10
  br i1 %exitcond11.not, label %slice_convert_fusion.3_wrapped.exit, label %114, !llvm.loop !14

slice_convert_fusion.3_wrapped.exit:              ; preds = %.loopexit, %108, %11
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
!4 = !{i64 805306368}
!5 = !{i64 201326592}
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
