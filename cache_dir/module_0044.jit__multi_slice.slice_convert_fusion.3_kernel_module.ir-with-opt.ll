; ModuleID = '__compute_module_slice_convert_fusion.3_kernel_module'
source_filename = "__compute_module_slice_convert_fusion.3_kernel_module"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind uwtable
define noalias noundef ptr @slice_convert_fusion.3(ptr readonly captures(none) %0) local_unnamed_addr #0 {
iter.check:
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %2 = load ptr, ptr %1, align 8, !invariant.load !3
  %3 = load ptr, ptr %2, align 8, !invariant.load !3, !dereferenceable !4
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %5 = load ptr, ptr %4, align 8, !invariant.load !3, !dereferenceable !5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9)
  %6 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 64
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 96
  %wide.load = load <16 x bfloat>, ptr %3, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load1 = load <16 x bfloat>, ptr %6, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load2 = load <16 x bfloat>, ptr %7, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load3 = load <16 x bfloat>, ptr %8, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %9 = getelementptr inbounds nuw i8, ptr %5, i64 32
  %10 = getelementptr inbounds nuw i8, ptr %5, i64 64
  %11 = getelementptr inbounds nuw i8, ptr %5, i64 96
  store <16 x bfloat> %wide.load, ptr %5, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load1, ptr %9, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load2, ptr %10, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load3, ptr %11, align 2, !alias.scope !9, !noalias !6
  %12 = getelementptr inbounds nuw i8, ptr %3, i64 128
  %13 = getelementptr inbounds nuw i8, ptr %3, i64 160
  %14 = getelementptr inbounds nuw i8, ptr %3, i64 192
  %15 = getelementptr inbounds nuw i8, ptr %3, i64 224
  %wide.load.1 = load <16 x bfloat>, ptr %12, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load1.1 = load <16 x bfloat>, ptr %13, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load2.1 = load <16 x bfloat>, ptr %14, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load3.1 = load <16 x bfloat>, ptr %15, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %16 = getelementptr inbounds nuw i8, ptr %5, i64 128
  %17 = getelementptr inbounds nuw i8, ptr %5, i64 160
  %18 = getelementptr inbounds nuw i8, ptr %5, i64 192
  %19 = getelementptr inbounds nuw i8, ptr %5, i64 224
  store <16 x bfloat> %wide.load.1, ptr %16, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load1.1, ptr %17, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load2.1, ptr %18, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load3.1, ptr %19, align 2, !alias.scope !9, !noalias !6
  %20 = getelementptr inbounds nuw i8, ptr %3, i64 256
  %21 = getelementptr inbounds nuw i8, ptr %3, i64 288
  %22 = getelementptr inbounds nuw i8, ptr %3, i64 320
  %23 = getelementptr inbounds nuw i8, ptr %3, i64 352
  %wide.load.2 = load <16 x bfloat>, ptr %20, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load1.2 = load <16 x bfloat>, ptr %21, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load2.2 = load <16 x bfloat>, ptr %22, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load3.2 = load <16 x bfloat>, ptr %23, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %24 = getelementptr inbounds nuw i8, ptr %5, i64 256
  %25 = getelementptr inbounds nuw i8, ptr %5, i64 288
  %26 = getelementptr inbounds nuw i8, ptr %5, i64 320
  %27 = getelementptr inbounds nuw i8, ptr %5, i64 352
  store <16 x bfloat> %wide.load.2, ptr %24, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load1.2, ptr %25, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load2.2, ptr %26, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load3.2, ptr %27, align 2, !alias.scope !9, !noalias !6
  %28 = getelementptr inbounds nuw i8, ptr %3, i64 384
  %29 = getelementptr inbounds nuw i8, ptr %3, i64 416
  %30 = getelementptr inbounds nuw i8, ptr %3, i64 448
  %31 = getelementptr inbounds nuw i8, ptr %3, i64 480
  %wide.load.3 = load <16 x bfloat>, ptr %28, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load1.3 = load <16 x bfloat>, ptr %29, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load2.3 = load <16 x bfloat>, ptr %30, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load3.3 = load <16 x bfloat>, ptr %31, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %32 = getelementptr inbounds nuw i8, ptr %5, i64 384
  %33 = getelementptr inbounds nuw i8, ptr %5, i64 416
  %34 = getelementptr inbounds nuw i8, ptr %5, i64 448
  %35 = getelementptr inbounds nuw i8, ptr %5, i64 480
  store <16 x bfloat> %wide.load.3, ptr %32, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load1.3, ptr %33, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load2.3, ptr %34, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load3.3, ptr %35, align 2, !alias.scope !9, !noalias !6
  %36 = getelementptr inbounds nuw i8, ptr %3, i64 512
  %37 = getelementptr inbounds nuw i8, ptr %3, i64 544
  %38 = getelementptr inbounds nuw i8, ptr %3, i64 576
  %39 = getelementptr inbounds nuw i8, ptr %3, i64 608
  %wide.load.4 = load <16 x bfloat>, ptr %36, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load1.4 = load <16 x bfloat>, ptr %37, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load2.4 = load <16 x bfloat>, ptr %38, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load3.4 = load <16 x bfloat>, ptr %39, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %40 = getelementptr inbounds nuw i8, ptr %5, i64 512
  %41 = getelementptr inbounds nuw i8, ptr %5, i64 544
  %42 = getelementptr inbounds nuw i8, ptr %5, i64 576
  %43 = getelementptr inbounds nuw i8, ptr %5, i64 608
  store <16 x bfloat> %wide.load.4, ptr %40, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load1.4, ptr %41, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load2.4, ptr %42, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load3.4, ptr %43, align 2, !alias.scope !9, !noalias !6
  %44 = getelementptr inbounds nuw i8, ptr %3, i64 640
  %45 = getelementptr inbounds nuw i8, ptr %3, i64 672
  %46 = getelementptr inbounds nuw i8, ptr %3, i64 704
  %47 = getelementptr inbounds nuw i8, ptr %3, i64 736
  %wide.load.5 = load <16 x bfloat>, ptr %44, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load1.5 = load <16 x bfloat>, ptr %45, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load2.5 = load <16 x bfloat>, ptr %46, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load3.5 = load <16 x bfloat>, ptr %47, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %48 = getelementptr inbounds nuw i8, ptr %5, i64 640
  %49 = getelementptr inbounds nuw i8, ptr %5, i64 672
  %50 = getelementptr inbounds nuw i8, ptr %5, i64 704
  %51 = getelementptr inbounds nuw i8, ptr %5, i64 736
  store <16 x bfloat> %wide.load.5, ptr %48, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load1.5, ptr %49, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load2.5, ptr %50, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load3.5, ptr %51, align 2, !alias.scope !9, !noalias !6
  %52 = getelementptr inbounds nuw i8, ptr %3, i64 768
  %53 = getelementptr inbounds nuw i8, ptr %3, i64 800
  %54 = getelementptr inbounds nuw i8, ptr %3, i64 832
  %55 = getelementptr inbounds nuw i8, ptr %3, i64 864
  %wide.load.6 = load <16 x bfloat>, ptr %52, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load1.6 = load <16 x bfloat>, ptr %53, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load2.6 = load <16 x bfloat>, ptr %54, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load3.6 = load <16 x bfloat>, ptr %55, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %56 = getelementptr inbounds nuw i8, ptr %5, i64 768
  %57 = getelementptr inbounds nuw i8, ptr %5, i64 800
  %58 = getelementptr inbounds nuw i8, ptr %5, i64 832
  %59 = getelementptr inbounds nuw i8, ptr %5, i64 864
  store <16 x bfloat> %wide.load.6, ptr %56, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load1.6, ptr %57, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load2.6, ptr %58, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load3.6, ptr %59, align 2, !alias.scope !9, !noalias !6
  %60 = getelementptr inbounds nuw i8, ptr %3, i64 896
  %61 = getelementptr inbounds nuw i8, ptr %3, i64 928
  %62 = getelementptr inbounds nuw i8, ptr %3, i64 960
  %63 = getelementptr inbounds nuw i8, ptr %3, i64 992
  %wide.load.7 = load <16 x bfloat>, ptr %60, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load1.7 = load <16 x bfloat>, ptr %61, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load2.7 = load <16 x bfloat>, ptr %62, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load3.7 = load <16 x bfloat>, ptr %63, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %64 = getelementptr inbounds nuw i8, ptr %5, i64 896
  %65 = getelementptr inbounds nuw i8, ptr %5, i64 928
  %66 = getelementptr inbounds nuw i8, ptr %5, i64 960
  %67 = getelementptr inbounds nuw i8, ptr %5, i64 992
  store <16 x bfloat> %wide.load.7, ptr %64, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load1.7, ptr %65, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load2.7, ptr %66, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load3.7, ptr %67, align 2, !alias.scope !9, !noalias !6
  %68 = getelementptr inbounds nuw i8, ptr %3, i64 1024
  %69 = getelementptr inbounds nuw i8, ptr %3, i64 1056
  %70 = getelementptr inbounds nuw i8, ptr %3, i64 1088
  %71 = getelementptr inbounds nuw i8, ptr %3, i64 1120
  %wide.load.8 = load <16 x bfloat>, ptr %68, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load1.8 = load <16 x bfloat>, ptr %69, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load2.8 = load <16 x bfloat>, ptr %70, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load3.8 = load <16 x bfloat>, ptr %71, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %72 = getelementptr inbounds nuw i8, ptr %5, i64 1024
  %73 = getelementptr inbounds nuw i8, ptr %5, i64 1056
  %74 = getelementptr inbounds nuw i8, ptr %5, i64 1088
  %75 = getelementptr inbounds nuw i8, ptr %5, i64 1120
  store <16 x bfloat> %wide.load.8, ptr %72, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load1.8, ptr %73, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load2.8, ptr %74, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load3.8, ptr %75, align 2, !alias.scope !9, !noalias !6
  %76 = getelementptr inbounds nuw i8, ptr %3, i64 1152
  %77 = getelementptr inbounds nuw i8, ptr %3, i64 1184
  %78 = getelementptr inbounds nuw i8, ptr %3, i64 1216
  %79 = getelementptr inbounds nuw i8, ptr %3, i64 1248
  %wide.load.9 = load <16 x bfloat>, ptr %76, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load1.9 = load <16 x bfloat>, ptr %77, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load2.9 = load <16 x bfloat>, ptr %78, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load3.9 = load <16 x bfloat>, ptr %79, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %80 = getelementptr inbounds nuw i8, ptr %5, i64 1152
  %81 = getelementptr inbounds nuw i8, ptr %5, i64 1184
  %82 = getelementptr inbounds nuw i8, ptr %5, i64 1216
  %83 = getelementptr inbounds nuw i8, ptr %5, i64 1248
  store <16 x bfloat> %wide.load.9, ptr %80, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load1.9, ptr %81, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load2.9, ptr %82, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load3.9, ptr %83, align 2, !alias.scope !9, !noalias !6
  %84 = getelementptr inbounds nuw i8, ptr %3, i64 1280
  %85 = getelementptr inbounds nuw i8, ptr %3, i64 1312
  %86 = getelementptr inbounds nuw i8, ptr %3, i64 1344
  %87 = getelementptr inbounds nuw i8, ptr %3, i64 1376
  %wide.load.10 = load <16 x bfloat>, ptr %84, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load1.10 = load <16 x bfloat>, ptr %85, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load2.10 = load <16 x bfloat>, ptr %86, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load3.10 = load <16 x bfloat>, ptr %87, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %88 = getelementptr inbounds nuw i8, ptr %5, i64 1280
  %89 = getelementptr inbounds nuw i8, ptr %5, i64 1312
  %90 = getelementptr inbounds nuw i8, ptr %5, i64 1344
  %91 = getelementptr inbounds nuw i8, ptr %5, i64 1376
  store <16 x bfloat> %wide.load.10, ptr %88, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load1.10, ptr %89, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load2.10, ptr %90, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load3.10, ptr %91, align 2, !alias.scope !9, !noalias !6
  %92 = getelementptr inbounds nuw i8, ptr %3, i64 1408
  %93 = getelementptr inbounds nuw i8, ptr %3, i64 1440
  %94 = getelementptr inbounds nuw i8, ptr %3, i64 1472
  %95 = getelementptr inbounds nuw i8, ptr %3, i64 1504
  %wide.load.11 = load <16 x bfloat>, ptr %92, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load1.11 = load <16 x bfloat>, ptr %93, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load2.11 = load <16 x bfloat>, ptr %94, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load3.11 = load <16 x bfloat>, ptr %95, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %96 = getelementptr inbounds nuw i8, ptr %5, i64 1408
  %97 = getelementptr inbounds nuw i8, ptr %5, i64 1440
  %98 = getelementptr inbounds nuw i8, ptr %5, i64 1472
  %99 = getelementptr inbounds nuw i8, ptr %5, i64 1504
  store <16 x bfloat> %wide.load.11, ptr %96, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load1.11, ptr %97, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load2.11, ptr %98, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load3.11, ptr %99, align 2, !alias.scope !9, !noalias !6
  %100 = getelementptr inbounds nuw i8, ptr %3, i64 1536
  %101 = getelementptr inbounds nuw i8, ptr %3, i64 1568
  %102 = getelementptr inbounds nuw i8, ptr %3, i64 1600
  %103 = getelementptr inbounds nuw i8, ptr %3, i64 1632
  %wide.load.12 = load <16 x bfloat>, ptr %100, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load1.12 = load <16 x bfloat>, ptr %101, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load2.12 = load <16 x bfloat>, ptr %102, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load3.12 = load <16 x bfloat>, ptr %103, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %104 = getelementptr inbounds nuw i8, ptr %5, i64 1536
  %105 = getelementptr inbounds nuw i8, ptr %5, i64 1568
  %106 = getelementptr inbounds nuw i8, ptr %5, i64 1600
  %107 = getelementptr inbounds nuw i8, ptr %5, i64 1632
  store <16 x bfloat> %wide.load.12, ptr %104, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load1.12, ptr %105, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load2.12, ptr %106, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load3.12, ptr %107, align 2, !alias.scope !9, !noalias !6
  %108 = getelementptr inbounds nuw i8, ptr %3, i64 1664
  %wide.load5 = load <16 x bfloat>, ptr %108, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %109 = getelementptr inbounds nuw i8, ptr %5, i64 1664
  store <16 x bfloat> %wide.load5, ptr %109, align 2, !alias.scope !9, !noalias !6
  %110 = getelementptr inbounds nuw i8, ptr %3, i64 1696
  %wide.load5.1 = load <16 x bfloat>, ptr %110, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %111 = getelementptr inbounds nuw i8, ptr %5, i64 1696
  store <16 x bfloat> %wide.load5.1, ptr %111, align 2, !alias.scope !9, !noalias !6
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
!4 = !{i64 6912}
!5 = !{i64 1728}
!6 = !{!7}
!7 = distinct !{!7, !8, !"slice_convert_fusion.3_wrapped: argument 0"}
!8 = distinct !{!8, !"slice_convert_fusion.3_wrapped"}
!9 = !{!10}
!10 = distinct !{!10, !8, !"slice_convert_fusion.3_wrapped: argument 1"}
