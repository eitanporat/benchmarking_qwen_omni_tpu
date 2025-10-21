; ModuleID = '__compute_module_slice_convert_fusion_kernel_module'
source_filename = "__compute_module_slice_convert_fusion_kernel_module"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind uwtable
define noalias noundef ptr @slice_convert_fusion(ptr readonly captures(none) %0) local_unnamed_addr #0 {
iter.check:
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %2 = load ptr, ptr %1, align 8, !invariant.load !3
  %3 = load ptr, ptr %2, align 8, !invariant.load !3, !dereferenceable !4
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %5 = load ptr, ptr %4, align 8, !invariant.load !3, !dereferenceable !5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9)
  %6 = getelementptr inbounds nuw i8, ptr %3, i64 6456
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 6488
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 6520
  %9 = getelementptr inbounds nuw i8, ptr %3, i64 6552
  %wide.load = load <16 x bfloat>, ptr %6, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load1 = load <16 x bfloat>, ptr %7, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load2 = load <16 x bfloat>, ptr %8, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load3 = load <16 x bfloat>, ptr %9, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %10 = getelementptr inbounds nuw i8, ptr %5, i64 32
  %11 = getelementptr inbounds nuw i8, ptr %5, i64 64
  %12 = getelementptr inbounds nuw i8, ptr %5, i64 96
  store <16 x bfloat> %wide.load, ptr %5, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load1, ptr %10, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load2, ptr %11, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load3, ptr %12, align 2, !alias.scope !9, !noalias !6
  %13 = getelementptr inbounds nuw i8, ptr %3, i64 6584
  %14 = getelementptr inbounds nuw i8, ptr %3, i64 6616
  %15 = getelementptr inbounds nuw i8, ptr %3, i64 6648
  %16 = getelementptr inbounds nuw i8, ptr %3, i64 6680
  %wide.load.1 = load <16 x bfloat>, ptr %13, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load1.1 = load <16 x bfloat>, ptr %14, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load2.1 = load <16 x bfloat>, ptr %15, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load3.1 = load <16 x bfloat>, ptr %16, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %17 = getelementptr inbounds nuw i8, ptr %5, i64 128
  %18 = getelementptr inbounds nuw i8, ptr %5, i64 160
  %19 = getelementptr inbounds nuw i8, ptr %5, i64 192
  %20 = getelementptr inbounds nuw i8, ptr %5, i64 224
  store <16 x bfloat> %wide.load.1, ptr %17, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load1.1, ptr %18, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load2.1, ptr %19, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load3.1, ptr %20, align 2, !alias.scope !9, !noalias !6
  %21 = getelementptr inbounds nuw i8, ptr %3, i64 6712
  %22 = getelementptr inbounds nuw i8, ptr %3, i64 6744
  %23 = getelementptr inbounds nuw i8, ptr %3, i64 6776
  %24 = getelementptr inbounds nuw i8, ptr %3, i64 6808
  %wide.load.2 = load <16 x bfloat>, ptr %21, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load1.2 = load <16 x bfloat>, ptr %22, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load2.2 = load <16 x bfloat>, ptr %23, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load3.2 = load <16 x bfloat>, ptr %24, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %25 = getelementptr inbounds nuw i8, ptr %5, i64 256
  %26 = getelementptr inbounds nuw i8, ptr %5, i64 288
  %27 = getelementptr inbounds nuw i8, ptr %5, i64 320
  %28 = getelementptr inbounds nuw i8, ptr %5, i64 352
  store <16 x bfloat> %wide.load.2, ptr %25, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load1.2, ptr %26, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load2.2, ptr %27, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load3.2, ptr %28, align 2, !alias.scope !9, !noalias !6
  %29 = getelementptr inbounds nuw i8, ptr %3, i64 6840
  %30 = getelementptr inbounds nuw i8, ptr %3, i64 6872
  %31 = getelementptr inbounds nuw i8, ptr %3, i64 6904
  %32 = getelementptr inbounds nuw i8, ptr %3, i64 6936
  %wide.load.3 = load <16 x bfloat>, ptr %29, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load1.3 = load <16 x bfloat>, ptr %30, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load2.3 = load <16 x bfloat>, ptr %31, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load3.3 = load <16 x bfloat>, ptr %32, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %33 = getelementptr inbounds nuw i8, ptr %5, i64 384
  %34 = getelementptr inbounds nuw i8, ptr %5, i64 416
  %35 = getelementptr inbounds nuw i8, ptr %5, i64 448
  %36 = getelementptr inbounds nuw i8, ptr %5, i64 480
  store <16 x bfloat> %wide.load.3, ptr %33, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load1.3, ptr %34, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load2.3, ptr %35, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load3.3, ptr %36, align 2, !alias.scope !9, !noalias !6
  %37 = getelementptr inbounds nuw i8, ptr %3, i64 6968
  %38 = getelementptr inbounds nuw i8, ptr %3, i64 7000
  %39 = getelementptr inbounds nuw i8, ptr %3, i64 7032
  %40 = getelementptr inbounds nuw i8, ptr %3, i64 7064
  %wide.load.4 = load <16 x bfloat>, ptr %37, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load1.4 = load <16 x bfloat>, ptr %38, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load2.4 = load <16 x bfloat>, ptr %39, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load3.4 = load <16 x bfloat>, ptr %40, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %41 = getelementptr inbounds nuw i8, ptr %5, i64 512
  %42 = getelementptr inbounds nuw i8, ptr %5, i64 544
  %43 = getelementptr inbounds nuw i8, ptr %5, i64 576
  %44 = getelementptr inbounds nuw i8, ptr %5, i64 608
  store <16 x bfloat> %wide.load.4, ptr %41, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load1.4, ptr %42, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load2.4, ptr %43, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load3.4, ptr %44, align 2, !alias.scope !9, !noalias !6
  %45 = getelementptr inbounds nuw i8, ptr %3, i64 7096
  %46 = getelementptr inbounds nuw i8, ptr %3, i64 7128
  %47 = getelementptr inbounds nuw i8, ptr %3, i64 7160
  %48 = getelementptr inbounds nuw i8, ptr %3, i64 7192
  %wide.load.5 = load <16 x bfloat>, ptr %45, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load1.5 = load <16 x bfloat>, ptr %46, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load2.5 = load <16 x bfloat>, ptr %47, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load3.5 = load <16 x bfloat>, ptr %48, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %49 = getelementptr inbounds nuw i8, ptr %5, i64 640
  %50 = getelementptr inbounds nuw i8, ptr %5, i64 672
  %51 = getelementptr inbounds nuw i8, ptr %5, i64 704
  %52 = getelementptr inbounds nuw i8, ptr %5, i64 736
  store <16 x bfloat> %wide.load.5, ptr %49, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load1.5, ptr %50, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load2.5, ptr %51, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load3.5, ptr %52, align 2, !alias.scope !9, !noalias !6
  %53 = getelementptr inbounds nuw i8, ptr %3, i64 7224
  %54 = getelementptr inbounds nuw i8, ptr %3, i64 7256
  %55 = getelementptr inbounds nuw i8, ptr %3, i64 7288
  %56 = getelementptr inbounds nuw i8, ptr %3, i64 7320
  %wide.load.6 = load <16 x bfloat>, ptr %53, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load1.6 = load <16 x bfloat>, ptr %54, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load2.6 = load <16 x bfloat>, ptr %55, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load3.6 = load <16 x bfloat>, ptr %56, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %57 = getelementptr inbounds nuw i8, ptr %5, i64 768
  %58 = getelementptr inbounds nuw i8, ptr %5, i64 800
  %59 = getelementptr inbounds nuw i8, ptr %5, i64 832
  %60 = getelementptr inbounds nuw i8, ptr %5, i64 864
  store <16 x bfloat> %wide.load.6, ptr %57, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load1.6, ptr %58, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load2.6, ptr %59, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load3.6, ptr %60, align 2, !alias.scope !9, !noalias !6
  %61 = getelementptr inbounds nuw i8, ptr %3, i64 7352
  %62 = getelementptr inbounds nuw i8, ptr %3, i64 7384
  %63 = getelementptr inbounds nuw i8, ptr %3, i64 7416
  %64 = getelementptr inbounds nuw i8, ptr %3, i64 7448
  %wide.load.7 = load <16 x bfloat>, ptr %61, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load1.7 = load <16 x bfloat>, ptr %62, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load2.7 = load <16 x bfloat>, ptr %63, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load3.7 = load <16 x bfloat>, ptr %64, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %65 = getelementptr inbounds nuw i8, ptr %5, i64 896
  %66 = getelementptr inbounds nuw i8, ptr %5, i64 928
  %67 = getelementptr inbounds nuw i8, ptr %5, i64 960
  %68 = getelementptr inbounds nuw i8, ptr %5, i64 992
  store <16 x bfloat> %wide.load.7, ptr %65, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load1.7, ptr %66, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load2.7, ptr %67, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load3.7, ptr %68, align 2, !alias.scope !9, !noalias !6
  %69 = getelementptr inbounds nuw i8, ptr %3, i64 7480
  %70 = getelementptr inbounds nuw i8, ptr %3, i64 7512
  %71 = getelementptr inbounds nuw i8, ptr %3, i64 7544
  %72 = getelementptr inbounds nuw i8, ptr %3, i64 7576
  %wide.load.8 = load <16 x bfloat>, ptr %69, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load1.8 = load <16 x bfloat>, ptr %70, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load2.8 = load <16 x bfloat>, ptr %71, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load3.8 = load <16 x bfloat>, ptr %72, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %73 = getelementptr inbounds nuw i8, ptr %5, i64 1024
  %74 = getelementptr inbounds nuw i8, ptr %5, i64 1056
  %75 = getelementptr inbounds nuw i8, ptr %5, i64 1088
  %76 = getelementptr inbounds nuw i8, ptr %5, i64 1120
  store <16 x bfloat> %wide.load.8, ptr %73, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load1.8, ptr %74, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load2.8, ptr %75, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load3.8, ptr %76, align 2, !alias.scope !9, !noalias !6
  %77 = getelementptr inbounds nuw i8, ptr %3, i64 7608
  %78 = getelementptr inbounds nuw i8, ptr %3, i64 7640
  %79 = getelementptr inbounds nuw i8, ptr %3, i64 7672
  %80 = getelementptr inbounds nuw i8, ptr %3, i64 7704
  %wide.load.9 = load <16 x bfloat>, ptr %77, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load1.9 = load <16 x bfloat>, ptr %78, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load2.9 = load <16 x bfloat>, ptr %79, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load3.9 = load <16 x bfloat>, ptr %80, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %81 = getelementptr inbounds nuw i8, ptr %5, i64 1152
  %82 = getelementptr inbounds nuw i8, ptr %5, i64 1184
  %83 = getelementptr inbounds nuw i8, ptr %5, i64 1216
  %84 = getelementptr inbounds nuw i8, ptr %5, i64 1248
  store <16 x bfloat> %wide.load.9, ptr %81, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load1.9, ptr %82, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load2.9, ptr %83, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load3.9, ptr %84, align 2, !alias.scope !9, !noalias !6
  %85 = getelementptr inbounds nuw i8, ptr %3, i64 7736
  %86 = getelementptr inbounds nuw i8, ptr %3, i64 7768
  %87 = getelementptr inbounds nuw i8, ptr %3, i64 7800
  %88 = getelementptr inbounds nuw i8, ptr %3, i64 7832
  %wide.load.10 = load <16 x bfloat>, ptr %85, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load1.10 = load <16 x bfloat>, ptr %86, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load2.10 = load <16 x bfloat>, ptr %87, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load3.10 = load <16 x bfloat>, ptr %88, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %89 = getelementptr inbounds nuw i8, ptr %5, i64 1280
  %90 = getelementptr inbounds nuw i8, ptr %5, i64 1312
  %91 = getelementptr inbounds nuw i8, ptr %5, i64 1344
  %92 = getelementptr inbounds nuw i8, ptr %5, i64 1376
  store <16 x bfloat> %wide.load.10, ptr %89, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load1.10, ptr %90, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load2.10, ptr %91, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load3.10, ptr %92, align 2, !alias.scope !9, !noalias !6
  %93 = getelementptr inbounds nuw i8, ptr %3, i64 7864
  %94 = getelementptr inbounds nuw i8, ptr %3, i64 7896
  %95 = getelementptr inbounds nuw i8, ptr %3, i64 7928
  %96 = getelementptr inbounds nuw i8, ptr %3, i64 7960
  %wide.load.11 = load <16 x bfloat>, ptr %93, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load1.11 = load <16 x bfloat>, ptr %94, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load2.11 = load <16 x bfloat>, ptr %95, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load3.11 = load <16 x bfloat>, ptr %96, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %97 = getelementptr inbounds nuw i8, ptr %5, i64 1408
  %98 = getelementptr inbounds nuw i8, ptr %5, i64 1440
  %99 = getelementptr inbounds nuw i8, ptr %5, i64 1472
  %100 = getelementptr inbounds nuw i8, ptr %5, i64 1504
  store <16 x bfloat> %wide.load.11, ptr %97, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load1.11, ptr %98, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load2.11, ptr %99, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load3.11, ptr %100, align 2, !alias.scope !9, !noalias !6
  %101 = getelementptr inbounds nuw i8, ptr %3, i64 7992
  %102 = getelementptr inbounds nuw i8, ptr %3, i64 8024
  %103 = getelementptr inbounds nuw i8, ptr %3, i64 8056
  %104 = getelementptr inbounds nuw i8, ptr %3, i64 8088
  %wide.load.12 = load <16 x bfloat>, ptr %101, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load1.12 = load <16 x bfloat>, ptr %102, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load2.12 = load <16 x bfloat>, ptr %103, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load3.12 = load <16 x bfloat>, ptr %104, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %105 = getelementptr inbounds nuw i8, ptr %5, i64 1536
  %106 = getelementptr inbounds nuw i8, ptr %5, i64 1568
  %107 = getelementptr inbounds nuw i8, ptr %5, i64 1600
  %108 = getelementptr inbounds nuw i8, ptr %5, i64 1632
  store <16 x bfloat> %wide.load.12, ptr %105, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load1.12, ptr %106, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load2.12, ptr %107, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load3.12, ptr %108, align 2, !alias.scope !9, !noalias !6
  %109 = getelementptr inbounds nuw i8, ptr %3, i64 8120
  %110 = getelementptr inbounds nuw i8, ptr %3, i64 8152
  %111 = getelementptr inbounds nuw i8, ptr %3, i64 8184
  %112 = getelementptr inbounds nuw i8, ptr %3, i64 8216
  %wide.load.13 = load <16 x bfloat>, ptr %109, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load1.13 = load <16 x bfloat>, ptr %110, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load2.13 = load <16 x bfloat>, ptr %111, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load3.13 = load <16 x bfloat>, ptr %112, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %113 = getelementptr inbounds nuw i8, ptr %5, i64 1664
  %114 = getelementptr inbounds nuw i8, ptr %5, i64 1696
  %115 = getelementptr inbounds nuw i8, ptr %5, i64 1728
  %116 = getelementptr inbounds nuw i8, ptr %5, i64 1760
  store <16 x bfloat> %wide.load.13, ptr %113, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load1.13, ptr %114, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load2.13, ptr %115, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load3.13, ptr %116, align 2, !alias.scope !9, !noalias !6
  %117 = getelementptr inbounds nuw i8, ptr %3, i64 8248
  %118 = getelementptr inbounds nuw i8, ptr %3, i64 8280
  %119 = getelementptr inbounds nuw i8, ptr %3, i64 8312
  %120 = getelementptr inbounds nuw i8, ptr %3, i64 8344
  %wide.load.14 = load <16 x bfloat>, ptr %117, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load1.14 = load <16 x bfloat>, ptr %118, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load2.14 = load <16 x bfloat>, ptr %119, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load3.14 = load <16 x bfloat>, ptr %120, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %121 = getelementptr inbounds nuw i8, ptr %5, i64 1792
  %122 = getelementptr inbounds nuw i8, ptr %5, i64 1824
  %123 = getelementptr inbounds nuw i8, ptr %5, i64 1856
  %124 = getelementptr inbounds nuw i8, ptr %5, i64 1888
  store <16 x bfloat> %wide.load.14, ptr %121, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load1.14, ptr %122, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load2.14, ptr %123, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load3.14, ptr %124, align 2, !alias.scope !9, !noalias !6
  %125 = getelementptr inbounds nuw i8, ptr %3, i64 8376
  %126 = getelementptr inbounds nuw i8, ptr %3, i64 8408
  %127 = getelementptr inbounds nuw i8, ptr %3, i64 8440
  %128 = getelementptr inbounds nuw i8, ptr %3, i64 8472
  %wide.load.15 = load <16 x bfloat>, ptr %125, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load1.15 = load <16 x bfloat>, ptr %126, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load2.15 = load <16 x bfloat>, ptr %127, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %wide.load3.15 = load <16 x bfloat>, ptr %128, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %129 = getelementptr inbounds nuw i8, ptr %5, i64 1920
  %130 = getelementptr inbounds nuw i8, ptr %5, i64 1952
  %131 = getelementptr inbounds nuw i8, ptr %5, i64 1984
  %132 = getelementptr inbounds nuw i8, ptr %5, i64 2016
  store <16 x bfloat> %wide.load.15, ptr %129, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load1.15, ptr %130, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load2.15, ptr %131, align 2, !alias.scope !9, !noalias !6
  store <16 x bfloat> %wide.load3.15, ptr %132, align 2, !alias.scope !9, !noalias !6
  %133 = getelementptr inbounds nuw i8, ptr %3, i64 8504
  %wide.load5 = load <16 x bfloat>, ptr %133, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %134 = getelementptr inbounds nuw i8, ptr %5, i64 2048
  store <16 x bfloat> %wide.load5, ptr %134, align 2, !alias.scope !9, !noalias !6
  %135 = getelementptr inbounds nuw i8, ptr %3, i64 8536
  %wide.load5.1 = load <16 x bfloat>, ptr %135, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %136 = getelementptr inbounds nuw i8, ptr %5, i64 2080
  store <16 x bfloat> %wide.load5.1, ptr %136, align 2, !alias.scope !9, !noalias !6
  %137 = getelementptr inbounds nuw i8, ptr %3, i64 8568
  %wide.load5.2 = load <16 x bfloat>, ptr %137, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %138 = getelementptr inbounds nuw i8, ptr %5, i64 2112
  store <16 x bfloat> %wide.load5.2, ptr %138, align 2, !alias.scope !9, !noalias !6
  %139 = getelementptr inbounds nuw i8, ptr %3, i64 8600
  %140 = load bfloat, ptr %139, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %141 = getelementptr inbounds nuw i8, ptr %5, i64 2144
  store bfloat %140, ptr %141, align 2, !alias.scope !9, !noalias !6
  %142 = getelementptr inbounds nuw i8, ptr %3, i64 8602
  %143 = load bfloat, ptr %142, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %144 = getelementptr inbounds nuw i8, ptr %5, i64 2146
  store bfloat %143, ptr %144, align 2, !alias.scope !9, !noalias !6
  %145 = getelementptr inbounds nuw i8, ptr %3, i64 8604
  %146 = load bfloat, ptr %145, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %147 = getelementptr inbounds nuw i8, ptr %5, i64 2148
  store bfloat %146, ptr %147, align 2, !alias.scope !9, !noalias !6
  %148 = getelementptr inbounds nuw i8, ptr %3, i64 8606
  %149 = load bfloat, ptr %148, align 2, !invariant.load !3, !alias.scope !6, !noalias !9
  %150 = getelementptr inbounds nuw i8, ptr %5, i64 2150
  store bfloat %149, ptr %150, align 2, !alias.scope !9, !noalias !6
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
!4 = !{i64 8608}
!5 = !{i64 2152}
!6 = !{!7}
!7 = distinct !{!7, !8, !"slice_convert_fusion_wrapped: argument 0"}
!8 = distinct !{!8, !"slice_convert_fusion_wrapped"}
!9 = !{!10}
!10 = distinct !{!10, !8, !"slice_convert_fusion_wrapped: argument 1"}
