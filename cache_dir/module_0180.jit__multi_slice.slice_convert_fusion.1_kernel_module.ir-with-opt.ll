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
  %10 = icmp slt i64 %9, 12
  br i1 %10, label %11, label %111

11:                                               ; preds = %1
  %12 = icmp sgt i64 %9, -1
  br i1 %12, label %13, label %slice_convert_fusion.1_wrapped.exit

13:                                               ; preds = %11
  %14 = mul nuw nsw i64 %9, 31457280
  %15 = mul nuw nsw i64 %9, 7864320
  %16 = or disjoint i64 %14, 1572864
  br label %17

17:                                               ; preds = %13, %109
  %18 = phi i64 [ 0, %13 ], [ %110, %109 ]
  %19 = mul nuw nsw i64 %18, 3145728
  %20 = mul nuw nsw i64 %18, 786432
  %21 = add nuw nsw i64 %20, %15
  %22 = add nuw nsw i64 %16, %19
  br label %vector.ph26

vector.ph26:                                      ; preds = %17, %middle.block34
  %23 = phi i64 [ 0, %17 ], [ %108, %middle.block34 ]
  %24 = shl nuw nsw i64 %23, 11
  %25 = add nuw nsw i64 %21, %24
  %26 = add nuw nsw i64 %22, %24
  br label %vector.body27

vector.body27:                                    ; preds = %vector.body27, %vector.ph26
  %index28 = phi i64 [ 0, %vector.ph26 ], [ %index.next33.7, %vector.body27 ]
  %27 = add nuw nsw i64 %26, %index28
  %28 = getelementptr inbounds nuw [402653184 x bfloat], ptr %4, i64 0, i64 %27
  %29 = getelementptr inbounds nuw i8, ptr %28, i64 32
  %30 = getelementptr inbounds nuw i8, ptr %28, i64 64
  %31 = getelementptr inbounds nuw i8, ptr %28, i64 96
  %wide.load29 = load <16 x bfloat>, ptr %28, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load30 = load <16 x bfloat>, ptr %29, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load31 = load <16 x bfloat>, ptr %30, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load32 = load <16 x bfloat>, ptr %31, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %32 = add nuw nsw i64 %index28, %25
  %33 = getelementptr inbounds nuw [100663296 x bfloat], ptr %6, i64 0, i64 %32
  %34 = getelementptr inbounds nuw i8, ptr %33, i64 32
  %35 = getelementptr inbounds nuw i8, ptr %33, i64 64
  %36 = getelementptr inbounds nuw i8, ptr %33, i64 96
  store <16 x bfloat> %wide.load29, ptr %33, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load30, ptr %34, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load31, ptr %35, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load32, ptr %36, align 2, !alias.scope !9, !noalias !6
  %index.next33 = or disjoint i64 %index28, 64
  %37 = add nuw nsw i64 %26, %index.next33
  %38 = getelementptr inbounds nuw [402653184 x bfloat], ptr %4, i64 0, i64 %37
  %39 = getelementptr inbounds nuw i8, ptr %38, i64 32
  %40 = getelementptr inbounds nuw i8, ptr %38, i64 64
  %41 = getelementptr inbounds nuw i8, ptr %38, i64 96
  %wide.load29.1 = load <16 x bfloat>, ptr %38, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load30.1 = load <16 x bfloat>, ptr %39, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load31.1 = load <16 x bfloat>, ptr %40, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load32.1 = load <16 x bfloat>, ptr %41, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %42 = add nuw nsw i64 %index.next33, %25
  %43 = getelementptr inbounds nuw [100663296 x bfloat], ptr %6, i64 0, i64 %42
  %44 = getelementptr inbounds nuw i8, ptr %43, i64 32
  %45 = getelementptr inbounds nuw i8, ptr %43, i64 64
  %46 = getelementptr inbounds nuw i8, ptr %43, i64 96
  store <16 x bfloat> %wide.load29.1, ptr %43, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load30.1, ptr %44, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load31.1, ptr %45, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load32.1, ptr %46, align 2, !alias.scope !9, !noalias !6
  %index.next33.1 = or disjoint i64 %index28, 128
  %47 = add nuw nsw i64 %26, %index.next33.1
  %48 = getelementptr inbounds nuw [402653184 x bfloat], ptr %4, i64 0, i64 %47
  %49 = getelementptr inbounds nuw i8, ptr %48, i64 32
  %50 = getelementptr inbounds nuw i8, ptr %48, i64 64
  %51 = getelementptr inbounds nuw i8, ptr %48, i64 96
  %wide.load29.2 = load <16 x bfloat>, ptr %48, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load30.2 = load <16 x bfloat>, ptr %49, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load31.2 = load <16 x bfloat>, ptr %50, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load32.2 = load <16 x bfloat>, ptr %51, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %52 = add nuw nsw i64 %index.next33.1, %25
  %53 = getelementptr inbounds nuw [100663296 x bfloat], ptr %6, i64 0, i64 %52
  %54 = getelementptr inbounds nuw i8, ptr %53, i64 32
  %55 = getelementptr inbounds nuw i8, ptr %53, i64 64
  %56 = getelementptr inbounds nuw i8, ptr %53, i64 96
  store <16 x bfloat> %wide.load29.2, ptr %53, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load30.2, ptr %54, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load31.2, ptr %55, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load32.2, ptr %56, align 2, !alias.scope !9, !noalias !6
  %index.next33.2 = or disjoint i64 %index28, 192
  %57 = add nuw nsw i64 %26, %index.next33.2
  %58 = getelementptr inbounds nuw [402653184 x bfloat], ptr %4, i64 0, i64 %57
  %59 = getelementptr inbounds nuw i8, ptr %58, i64 32
  %60 = getelementptr inbounds nuw i8, ptr %58, i64 64
  %61 = getelementptr inbounds nuw i8, ptr %58, i64 96
  %wide.load29.3 = load <16 x bfloat>, ptr %58, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load30.3 = load <16 x bfloat>, ptr %59, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load31.3 = load <16 x bfloat>, ptr %60, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load32.3 = load <16 x bfloat>, ptr %61, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %62 = add nuw nsw i64 %index.next33.2, %25
  %63 = getelementptr inbounds nuw [100663296 x bfloat], ptr %6, i64 0, i64 %62
  %64 = getelementptr inbounds nuw i8, ptr %63, i64 32
  %65 = getelementptr inbounds nuw i8, ptr %63, i64 64
  %66 = getelementptr inbounds nuw i8, ptr %63, i64 96
  store <16 x bfloat> %wide.load29.3, ptr %63, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load30.3, ptr %64, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load31.3, ptr %65, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load32.3, ptr %66, align 2, !alias.scope !9, !noalias !6
  %index.next33.3 = or disjoint i64 %index28, 256
  %67 = add nuw nsw i64 %26, %index.next33.3
  %68 = getelementptr inbounds nuw [402653184 x bfloat], ptr %4, i64 0, i64 %67
  %69 = getelementptr inbounds nuw i8, ptr %68, i64 32
  %70 = getelementptr inbounds nuw i8, ptr %68, i64 64
  %71 = getelementptr inbounds nuw i8, ptr %68, i64 96
  %wide.load29.4 = load <16 x bfloat>, ptr %68, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load30.4 = load <16 x bfloat>, ptr %69, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load31.4 = load <16 x bfloat>, ptr %70, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load32.4 = load <16 x bfloat>, ptr %71, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %72 = add nuw nsw i64 %index.next33.3, %25
  %73 = getelementptr inbounds nuw [100663296 x bfloat], ptr %6, i64 0, i64 %72
  %74 = getelementptr inbounds nuw i8, ptr %73, i64 32
  %75 = getelementptr inbounds nuw i8, ptr %73, i64 64
  %76 = getelementptr inbounds nuw i8, ptr %73, i64 96
  store <16 x bfloat> %wide.load29.4, ptr %73, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load30.4, ptr %74, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load31.4, ptr %75, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load32.4, ptr %76, align 2, !alias.scope !9, !noalias !6
  %index.next33.4 = or disjoint i64 %index28, 320
  %77 = add nuw nsw i64 %26, %index.next33.4
  %78 = getelementptr inbounds nuw [402653184 x bfloat], ptr %4, i64 0, i64 %77
  %79 = getelementptr inbounds nuw i8, ptr %78, i64 32
  %80 = getelementptr inbounds nuw i8, ptr %78, i64 64
  %81 = getelementptr inbounds nuw i8, ptr %78, i64 96
  %wide.load29.5 = load <16 x bfloat>, ptr %78, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load30.5 = load <16 x bfloat>, ptr %79, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load31.5 = load <16 x bfloat>, ptr %80, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load32.5 = load <16 x bfloat>, ptr %81, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %82 = add nuw nsw i64 %index.next33.4, %25
  %83 = getelementptr inbounds nuw [100663296 x bfloat], ptr %6, i64 0, i64 %82
  %84 = getelementptr inbounds nuw i8, ptr %83, i64 32
  %85 = getelementptr inbounds nuw i8, ptr %83, i64 64
  %86 = getelementptr inbounds nuw i8, ptr %83, i64 96
  store <16 x bfloat> %wide.load29.5, ptr %83, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load30.5, ptr %84, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load31.5, ptr %85, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load32.5, ptr %86, align 2, !alias.scope !9, !noalias !6
  %index.next33.5 = or disjoint i64 %index28, 384
  %87 = add nuw nsw i64 %26, %index.next33.5
  %88 = getelementptr inbounds nuw [402653184 x bfloat], ptr %4, i64 0, i64 %87
  %89 = getelementptr inbounds nuw i8, ptr %88, i64 32
  %90 = getelementptr inbounds nuw i8, ptr %88, i64 64
  %91 = getelementptr inbounds nuw i8, ptr %88, i64 96
  %wide.load29.6 = load <16 x bfloat>, ptr %88, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load30.6 = load <16 x bfloat>, ptr %89, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load31.6 = load <16 x bfloat>, ptr %90, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load32.6 = load <16 x bfloat>, ptr %91, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %92 = add nuw nsw i64 %index.next33.5, %25
  %93 = getelementptr inbounds nuw [100663296 x bfloat], ptr %6, i64 0, i64 %92
  %94 = getelementptr inbounds nuw i8, ptr %93, i64 32
  %95 = getelementptr inbounds nuw i8, ptr %93, i64 64
  %96 = getelementptr inbounds nuw i8, ptr %93, i64 96
  store <16 x bfloat> %wide.load29.6, ptr %93, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load30.6, ptr %94, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load31.6, ptr %95, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load32.6, ptr %96, align 2, !alias.scope !9, !noalias !6
  %index.next33.6 = or disjoint i64 %index28, 448
  %97 = add nuw nsw i64 %26, %index.next33.6
  %98 = getelementptr inbounds nuw [402653184 x bfloat], ptr %4, i64 0, i64 %97
  %99 = getelementptr inbounds nuw i8, ptr %98, i64 32
  %100 = getelementptr inbounds nuw i8, ptr %98, i64 64
  %101 = getelementptr inbounds nuw i8, ptr %98, i64 96
  %wide.load29.7 = load <16 x bfloat>, ptr %98, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load30.7 = load <16 x bfloat>, ptr %99, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load31.7 = load <16 x bfloat>, ptr %100, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load32.7 = load <16 x bfloat>, ptr %101, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %102 = add nuw nsw i64 %index.next33.6, %25
  %103 = getelementptr inbounds nuw [100663296 x bfloat], ptr %6, i64 0, i64 %102
  %104 = getelementptr inbounds nuw i8, ptr %103, i64 32
  %105 = getelementptr inbounds nuw i8, ptr %103, i64 64
  %106 = getelementptr inbounds nuw i8, ptr %103, i64 96
  store <16 x bfloat> %wide.load29.7, ptr %103, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load30.7, ptr %104, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load31.7, ptr %105, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load32.7, ptr %106, align 2, !alias.scope !9, !noalias !6
  %index.next33.7 = add nuw nsw i64 %index28, 512
  %107 = icmp eq i64 %index.next33.7, 2048
  br i1 %107, label %middle.block34, label %vector.body27, !llvm.loop !11

middle.block34:                                   ; preds = %vector.body27
  %108 = add nuw nsw i64 %23, 1
  %exitcond14.not = icmp eq i64 %108, 384
  br i1 %exitcond14.not, label %109, label %vector.ph26, !llvm.loop !14

109:                                              ; preds = %middle.block34
  %110 = add nuw nsw i64 %18, 1
  %exitcond15.not = icmp eq i64 %110, 10
  br i1 %exitcond15.not, label %slice_convert_fusion.1_wrapped.exit, label %17, !llvm.loop !14

111:                                              ; preds = %1
  %112 = mul nuw nsw i64 %9, 10
  %113 = mul nuw nsw i64 %9, 31457280
  %114 = mul nuw nsw i64 %9, 7864320
  %115 = or disjoint i64 %113, 1572864
  br label %116

116:                                              ; preds = %111, %.loopexit
  %117 = phi i64 [ 0, %111 ], [ %211, %.loopexit ]
  %118 = add nuw nsw i64 %117, %112
  %119 = icmp samesign ult i64 %118, 128
  br i1 %119, label %120, label %.loopexit

120:                                              ; preds = %116
  %121 = mul nuw nsw i64 %117, 3145728
  %122 = mul nuw nsw i64 %117, 786432
  %123 = add nuw nsw i64 %122, %114
  %124 = add nuw nsw i64 %115, %121
  br label %vector.ph

vector.ph:                                        ; preds = %120, %middle.block
  %125 = phi i64 [ 0, %120 ], [ %210, %middle.block ]
  %126 = shl nuw nsw i64 %125, 11
  %127 = add nuw nsw i64 %123, %126
  %128 = add nuw nsw i64 %124, %126
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.7, %vector.body ]
  %129 = add nuw nsw i64 %128, %index
  %130 = getelementptr inbounds nuw [402653184 x bfloat], ptr %4, i64 0, i64 %129
  %131 = getelementptr inbounds nuw i8, ptr %130, i64 32
  %132 = getelementptr inbounds nuw i8, ptr %130, i64 64
  %133 = getelementptr inbounds nuw i8, ptr %130, i64 96
  %wide.load = load <16 x bfloat>, ptr %130, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load22 = load <16 x bfloat>, ptr %131, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load23 = load <16 x bfloat>, ptr %132, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load24 = load <16 x bfloat>, ptr %133, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %134 = add nuw nsw i64 %index, %127
  %135 = getelementptr inbounds nuw [100663296 x bfloat], ptr %6, i64 0, i64 %134
  %136 = getelementptr inbounds nuw i8, ptr %135, i64 32
  %137 = getelementptr inbounds nuw i8, ptr %135, i64 64
  %138 = getelementptr inbounds nuw i8, ptr %135, i64 96
  store <16 x bfloat> %wide.load, ptr %135, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load22, ptr %136, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load23, ptr %137, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load24, ptr %138, align 2, !alias.scope !9, !noalias !6
  %index.next = or disjoint i64 %index, 64
  %139 = add nuw nsw i64 %128, %index.next
  %140 = getelementptr inbounds nuw [402653184 x bfloat], ptr %4, i64 0, i64 %139
  %141 = getelementptr inbounds nuw i8, ptr %140, i64 32
  %142 = getelementptr inbounds nuw i8, ptr %140, i64 64
  %143 = getelementptr inbounds nuw i8, ptr %140, i64 96
  %wide.load.1 = load <16 x bfloat>, ptr %140, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load22.1 = load <16 x bfloat>, ptr %141, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load23.1 = load <16 x bfloat>, ptr %142, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load24.1 = load <16 x bfloat>, ptr %143, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %144 = add nuw nsw i64 %index.next, %127
  %145 = getelementptr inbounds nuw [100663296 x bfloat], ptr %6, i64 0, i64 %144
  %146 = getelementptr inbounds nuw i8, ptr %145, i64 32
  %147 = getelementptr inbounds nuw i8, ptr %145, i64 64
  %148 = getelementptr inbounds nuw i8, ptr %145, i64 96
  store <16 x bfloat> %wide.load.1, ptr %145, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load22.1, ptr %146, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load23.1, ptr %147, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load24.1, ptr %148, align 2, !alias.scope !9, !noalias !6
  %index.next.1 = or disjoint i64 %index, 128
  %149 = add nuw nsw i64 %128, %index.next.1
  %150 = getelementptr inbounds nuw [402653184 x bfloat], ptr %4, i64 0, i64 %149
  %151 = getelementptr inbounds nuw i8, ptr %150, i64 32
  %152 = getelementptr inbounds nuw i8, ptr %150, i64 64
  %153 = getelementptr inbounds nuw i8, ptr %150, i64 96
  %wide.load.2 = load <16 x bfloat>, ptr %150, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load22.2 = load <16 x bfloat>, ptr %151, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load23.2 = load <16 x bfloat>, ptr %152, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load24.2 = load <16 x bfloat>, ptr %153, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %154 = add nuw nsw i64 %index.next.1, %127
  %155 = getelementptr inbounds nuw [100663296 x bfloat], ptr %6, i64 0, i64 %154
  %156 = getelementptr inbounds nuw i8, ptr %155, i64 32
  %157 = getelementptr inbounds nuw i8, ptr %155, i64 64
  %158 = getelementptr inbounds nuw i8, ptr %155, i64 96
  store <16 x bfloat> %wide.load.2, ptr %155, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load22.2, ptr %156, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load23.2, ptr %157, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load24.2, ptr %158, align 2, !alias.scope !9, !noalias !6
  %index.next.2 = or disjoint i64 %index, 192
  %159 = add nuw nsw i64 %128, %index.next.2
  %160 = getelementptr inbounds nuw [402653184 x bfloat], ptr %4, i64 0, i64 %159
  %161 = getelementptr inbounds nuw i8, ptr %160, i64 32
  %162 = getelementptr inbounds nuw i8, ptr %160, i64 64
  %163 = getelementptr inbounds nuw i8, ptr %160, i64 96
  %wide.load.3 = load <16 x bfloat>, ptr %160, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load22.3 = load <16 x bfloat>, ptr %161, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load23.3 = load <16 x bfloat>, ptr %162, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load24.3 = load <16 x bfloat>, ptr %163, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %164 = add nuw nsw i64 %index.next.2, %127
  %165 = getelementptr inbounds nuw [100663296 x bfloat], ptr %6, i64 0, i64 %164
  %166 = getelementptr inbounds nuw i8, ptr %165, i64 32
  %167 = getelementptr inbounds nuw i8, ptr %165, i64 64
  %168 = getelementptr inbounds nuw i8, ptr %165, i64 96
  store <16 x bfloat> %wide.load.3, ptr %165, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load22.3, ptr %166, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load23.3, ptr %167, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load24.3, ptr %168, align 2, !alias.scope !9, !noalias !6
  %index.next.3 = or disjoint i64 %index, 256
  %169 = add nuw nsw i64 %128, %index.next.3
  %170 = getelementptr inbounds nuw [402653184 x bfloat], ptr %4, i64 0, i64 %169
  %171 = getelementptr inbounds nuw i8, ptr %170, i64 32
  %172 = getelementptr inbounds nuw i8, ptr %170, i64 64
  %173 = getelementptr inbounds nuw i8, ptr %170, i64 96
  %wide.load.4 = load <16 x bfloat>, ptr %170, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load22.4 = load <16 x bfloat>, ptr %171, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load23.4 = load <16 x bfloat>, ptr %172, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load24.4 = load <16 x bfloat>, ptr %173, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %174 = add nuw nsw i64 %index.next.3, %127
  %175 = getelementptr inbounds nuw [100663296 x bfloat], ptr %6, i64 0, i64 %174
  %176 = getelementptr inbounds nuw i8, ptr %175, i64 32
  %177 = getelementptr inbounds nuw i8, ptr %175, i64 64
  %178 = getelementptr inbounds nuw i8, ptr %175, i64 96
  store <16 x bfloat> %wide.load.4, ptr %175, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load22.4, ptr %176, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load23.4, ptr %177, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load24.4, ptr %178, align 2, !alias.scope !9, !noalias !6
  %index.next.4 = or disjoint i64 %index, 320
  %179 = add nuw nsw i64 %128, %index.next.4
  %180 = getelementptr inbounds nuw [402653184 x bfloat], ptr %4, i64 0, i64 %179
  %181 = getelementptr inbounds nuw i8, ptr %180, i64 32
  %182 = getelementptr inbounds nuw i8, ptr %180, i64 64
  %183 = getelementptr inbounds nuw i8, ptr %180, i64 96
  %wide.load.5 = load <16 x bfloat>, ptr %180, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load22.5 = load <16 x bfloat>, ptr %181, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load23.5 = load <16 x bfloat>, ptr %182, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load24.5 = load <16 x bfloat>, ptr %183, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %184 = add nuw nsw i64 %index.next.4, %127
  %185 = getelementptr inbounds nuw [100663296 x bfloat], ptr %6, i64 0, i64 %184
  %186 = getelementptr inbounds nuw i8, ptr %185, i64 32
  %187 = getelementptr inbounds nuw i8, ptr %185, i64 64
  %188 = getelementptr inbounds nuw i8, ptr %185, i64 96
  store <16 x bfloat> %wide.load.5, ptr %185, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load22.5, ptr %186, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load23.5, ptr %187, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load24.5, ptr %188, align 2, !alias.scope !9, !noalias !6
  %index.next.5 = or disjoint i64 %index, 384
  %189 = add nuw nsw i64 %128, %index.next.5
  %190 = getelementptr inbounds nuw [402653184 x bfloat], ptr %4, i64 0, i64 %189
  %191 = getelementptr inbounds nuw i8, ptr %190, i64 32
  %192 = getelementptr inbounds nuw i8, ptr %190, i64 64
  %193 = getelementptr inbounds nuw i8, ptr %190, i64 96
  %wide.load.6 = load <16 x bfloat>, ptr %190, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load22.6 = load <16 x bfloat>, ptr %191, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load23.6 = load <16 x bfloat>, ptr %192, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load24.6 = load <16 x bfloat>, ptr %193, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %194 = add nuw nsw i64 %index.next.5, %127
  %195 = getelementptr inbounds nuw [100663296 x bfloat], ptr %6, i64 0, i64 %194
  %196 = getelementptr inbounds nuw i8, ptr %195, i64 32
  %197 = getelementptr inbounds nuw i8, ptr %195, i64 64
  %198 = getelementptr inbounds nuw i8, ptr %195, i64 96
  store <16 x bfloat> %wide.load.6, ptr %195, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load22.6, ptr %196, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load23.6, ptr %197, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load24.6, ptr %198, align 2, !alias.scope !9, !noalias !6
  %index.next.6 = or disjoint i64 %index, 448
  %199 = add nuw nsw i64 %128, %index.next.6
  %200 = getelementptr inbounds nuw [402653184 x bfloat], ptr %4, i64 0, i64 %199
  %201 = getelementptr inbounds nuw i8, ptr %200, i64 32
  %202 = getelementptr inbounds nuw i8, ptr %200, i64 64
  %203 = getelementptr inbounds nuw i8, ptr %200, i64 96
  %wide.load.7 = load <16 x bfloat>, ptr %200, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load22.7 = load <16 x bfloat>, ptr %201, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load23.7 = load <16 x bfloat>, ptr %202, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load24.7 = load <16 x bfloat>, ptr %203, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %204 = add nuw nsw i64 %index.next.6, %127
  %205 = getelementptr inbounds nuw [100663296 x bfloat], ptr %6, i64 0, i64 %204
  %206 = getelementptr inbounds nuw i8, ptr %205, i64 32
  %207 = getelementptr inbounds nuw i8, ptr %205, i64 64
  %208 = getelementptr inbounds nuw i8, ptr %205, i64 96
  store <16 x bfloat> %wide.load.7, ptr %205, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load22.7, ptr %206, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load23.7, ptr %207, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load24.7, ptr %208, align 2, !alias.scope !9, !noalias !6
  %index.next.7 = add nuw nsw i64 %index, 512
  %209 = icmp eq i64 %index.next.7, 2048
  br i1 %209, label %middle.block, label %vector.body, !llvm.loop !16

middle.block:                                     ; preds = %vector.body
  %210 = add nuw nsw i64 %125, 1
  %exitcond10.not = icmp eq i64 %210, 384
  br i1 %exitcond10.not, label %.loopexit, label %vector.ph, !llvm.loop !14

.loopexit:                                        ; preds = %middle.block, %116
  %211 = add nuw nsw i64 %117, 1
  %exitcond11.not = icmp eq i64 %211, 10
  br i1 %exitcond11.not, label %slice_convert_fusion.1_wrapped.exit, label %116, !llvm.loop !14

slice_convert_fusion.1_wrapped.exit:              ; preds = %.loopexit, %109, %11
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
!4 = !{i64 805306368}
!5 = !{i64 201326592}
!6 = !{!7}
!7 = distinct !{!7, !8, !"slice_convert_fusion.1_wrapped: argument 0"}
!8 = distinct !{!8, !"slice_convert_fusion.1_wrapped"}
!9 = !{!10}
!10 = distinct !{!10, !8, !"slice_convert_fusion.1_wrapped: argument 1"}
!11 = distinct !{!11, !12, !13}
!12 = !{!"llvm.loop.isvectorized", i32 1}
!13 = !{!"llvm.loop.unroll.runtime.disable"}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.unroll.disable"}
!16 = distinct !{!16, !12, !13}
