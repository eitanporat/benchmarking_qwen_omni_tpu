; ModuleID = '__compute_module_convert.1_elemental_kernel_module'
source_filename = "__compute_module_convert.1_elemental_kernel_module"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define noalias noundef ptr @convert.1_kernel(ptr readonly captures(none) %0) local_unnamed_addr #0 {
  %args_gep = getelementptr inbounds nuw i8, ptr %0, i64 24
  %args = load ptr, ptr %args_gep, align 8
  %arg0 = load ptr, ptr %args, align 8, !invariant.load !3, !dereferenceable !4, !align !5
  %arg1_gep = getelementptr i8, ptr %args, i64 16
  %arg1 = load ptr, ptr %arg1_gep, align 8, !invariant.load !3, !dereferenceable !6, !align !5
  br label %convert.1.loop_header.dim.1.preheader

convert.1.loop_header.dim.1.preheader:            ; preds = %1, %convert.1.loop_header.dim.1.preheader
  %convert.1.invar_address.dim.0.06 = phi i64 [ 0, %1 ], [ %invar.inc, %convert.1.loop_header.dim.1.preheader ]
  %.split4 = getelementptr inbounds nuw [4 x [288 x float]], ptr %arg1, i64 0, i64 %convert.1.invar_address.dim.0.06
  %.split = getelementptr inbounds nuw [4 x [288 x bfloat]], ptr %arg0, i64 0, i64 %convert.1.invar_address.dim.0.06
  %2 = getelementptr inbounds nuw i8, ptr %.split, i64 16
  %3 = getelementptr inbounds nuw i8, ptr %.split, i64 32
  %4 = getelementptr inbounds nuw i8, ptr %.split, i64 48
  %wide.load = load <8 x i16>, ptr %.split, align 64, !invariant.load !3, !noalias !7
  %wide.load8 = load <8 x i16>, ptr %2, align 16, !invariant.load !3, !noalias !7
  %wide.load9 = load <8 x i16>, ptr %3, align 32, !invariant.load !3, !noalias !7
  %wide.load10 = load <8 x i16>, ptr %4, align 16, !invariant.load !3, !noalias !7
  %5 = zext <8 x i16> %wide.load to <8 x i32>
  %6 = zext <8 x i16> %wide.load8 to <8 x i32>
  %7 = zext <8 x i16> %wide.load9 to <8 x i32>
  %8 = zext <8 x i16> %wide.load10 to <8 x i32>
  %9 = shl nuw <8 x i32> %5, splat (i32 16)
  %10 = shl nuw <8 x i32> %6, splat (i32 16)
  %11 = shl nuw <8 x i32> %7, splat (i32 16)
  %12 = shl nuw <8 x i32> %8, splat (i32 16)
  %13 = getelementptr inbounds nuw i8, ptr %.split4, i64 32
  %14 = getelementptr inbounds nuw i8, ptr %.split4, i64 64
  %15 = getelementptr inbounds nuw i8, ptr %.split4, i64 96
  store <8 x i32> %9, ptr %.split4, align 64, !alias.scope !7
  store <8 x i32> %10, ptr %13, align 32, !alias.scope !7
  store <8 x i32> %11, ptr %14, align 64, !alias.scope !7
  store <8 x i32> %12, ptr %15, align 32, !alias.scope !7
  %16 = getelementptr inbounds nuw i8, ptr %.split, i64 64
  %17 = getelementptr inbounds nuw i8, ptr %.split, i64 80
  %18 = getelementptr inbounds nuw i8, ptr %.split, i64 96
  %19 = getelementptr inbounds nuw i8, ptr %.split, i64 112
  %wide.load.1 = load <8 x i16>, ptr %16, align 64, !invariant.load !3, !noalias !7
  %wide.load8.1 = load <8 x i16>, ptr %17, align 16, !invariant.load !3, !noalias !7
  %wide.load9.1 = load <8 x i16>, ptr %18, align 32, !invariant.load !3, !noalias !7
  %wide.load10.1 = load <8 x i16>, ptr %19, align 16, !invariant.load !3, !noalias !7
  %20 = zext <8 x i16> %wide.load.1 to <8 x i32>
  %21 = zext <8 x i16> %wide.load8.1 to <8 x i32>
  %22 = zext <8 x i16> %wide.load9.1 to <8 x i32>
  %23 = zext <8 x i16> %wide.load10.1 to <8 x i32>
  %24 = shl nuw <8 x i32> %20, splat (i32 16)
  %25 = shl nuw <8 x i32> %21, splat (i32 16)
  %26 = shl nuw <8 x i32> %22, splat (i32 16)
  %27 = shl nuw <8 x i32> %23, splat (i32 16)
  %28 = getelementptr inbounds nuw i8, ptr %.split4, i64 128
  %29 = getelementptr inbounds nuw i8, ptr %.split4, i64 160
  %30 = getelementptr inbounds nuw i8, ptr %.split4, i64 192
  %31 = getelementptr inbounds nuw i8, ptr %.split4, i64 224
  store <8 x i32> %24, ptr %28, align 64, !alias.scope !7
  store <8 x i32> %25, ptr %29, align 32, !alias.scope !7
  store <8 x i32> %26, ptr %30, align 64, !alias.scope !7
  store <8 x i32> %27, ptr %31, align 32, !alias.scope !7
  %32 = getelementptr inbounds nuw i8, ptr %.split, i64 128
  %33 = getelementptr inbounds nuw i8, ptr %.split, i64 144
  %34 = getelementptr inbounds nuw i8, ptr %.split, i64 160
  %35 = getelementptr inbounds nuw i8, ptr %.split, i64 176
  %wide.load.2 = load <8 x i16>, ptr %32, align 64, !invariant.load !3, !noalias !7
  %wide.load8.2 = load <8 x i16>, ptr %33, align 16, !invariant.load !3, !noalias !7
  %wide.load9.2 = load <8 x i16>, ptr %34, align 32, !invariant.load !3, !noalias !7
  %wide.load10.2 = load <8 x i16>, ptr %35, align 16, !invariant.load !3, !noalias !7
  %36 = zext <8 x i16> %wide.load.2 to <8 x i32>
  %37 = zext <8 x i16> %wide.load8.2 to <8 x i32>
  %38 = zext <8 x i16> %wide.load9.2 to <8 x i32>
  %39 = zext <8 x i16> %wide.load10.2 to <8 x i32>
  %40 = shl nuw <8 x i32> %36, splat (i32 16)
  %41 = shl nuw <8 x i32> %37, splat (i32 16)
  %42 = shl nuw <8 x i32> %38, splat (i32 16)
  %43 = shl nuw <8 x i32> %39, splat (i32 16)
  %44 = getelementptr inbounds nuw i8, ptr %.split4, i64 256
  %45 = getelementptr inbounds nuw i8, ptr %.split4, i64 288
  %46 = getelementptr inbounds nuw i8, ptr %.split4, i64 320
  %47 = getelementptr inbounds nuw i8, ptr %.split4, i64 352
  store <8 x i32> %40, ptr %44, align 64, !alias.scope !7
  store <8 x i32> %41, ptr %45, align 32, !alias.scope !7
  store <8 x i32> %42, ptr %46, align 64, !alias.scope !7
  store <8 x i32> %43, ptr %47, align 32, !alias.scope !7
  %48 = getelementptr inbounds nuw i8, ptr %.split, i64 192
  %49 = getelementptr inbounds nuw i8, ptr %.split, i64 208
  %50 = getelementptr inbounds nuw i8, ptr %.split, i64 224
  %51 = getelementptr inbounds nuw i8, ptr %.split, i64 240
  %wide.load.3 = load <8 x i16>, ptr %48, align 64, !invariant.load !3, !noalias !7
  %wide.load8.3 = load <8 x i16>, ptr %49, align 16, !invariant.load !3, !noalias !7
  %wide.load9.3 = load <8 x i16>, ptr %50, align 32, !invariant.load !3, !noalias !7
  %wide.load10.3 = load <8 x i16>, ptr %51, align 16, !invariant.load !3, !noalias !7
  %52 = zext <8 x i16> %wide.load.3 to <8 x i32>
  %53 = zext <8 x i16> %wide.load8.3 to <8 x i32>
  %54 = zext <8 x i16> %wide.load9.3 to <8 x i32>
  %55 = zext <8 x i16> %wide.load10.3 to <8 x i32>
  %56 = shl nuw <8 x i32> %52, splat (i32 16)
  %57 = shl nuw <8 x i32> %53, splat (i32 16)
  %58 = shl nuw <8 x i32> %54, splat (i32 16)
  %59 = shl nuw <8 x i32> %55, splat (i32 16)
  %60 = getelementptr inbounds nuw i8, ptr %.split4, i64 384
  %61 = getelementptr inbounds nuw i8, ptr %.split4, i64 416
  %62 = getelementptr inbounds nuw i8, ptr %.split4, i64 448
  %63 = getelementptr inbounds nuw i8, ptr %.split4, i64 480
  store <8 x i32> %56, ptr %60, align 64, !alias.scope !7
  store <8 x i32> %57, ptr %61, align 32, !alias.scope !7
  store <8 x i32> %58, ptr %62, align 64, !alias.scope !7
  store <8 x i32> %59, ptr %63, align 32, !alias.scope !7
  %64 = getelementptr inbounds nuw i8, ptr %.split, i64 256
  %65 = getelementptr inbounds nuw i8, ptr %.split, i64 272
  %66 = getelementptr inbounds nuw i8, ptr %.split, i64 288
  %67 = getelementptr inbounds nuw i8, ptr %.split, i64 304
  %wide.load.4 = load <8 x i16>, ptr %64, align 64, !invariant.load !3, !noalias !7
  %wide.load8.4 = load <8 x i16>, ptr %65, align 16, !invariant.load !3, !noalias !7
  %wide.load9.4 = load <8 x i16>, ptr %66, align 32, !invariant.load !3, !noalias !7
  %wide.load10.4 = load <8 x i16>, ptr %67, align 16, !invariant.load !3, !noalias !7
  %68 = zext <8 x i16> %wide.load.4 to <8 x i32>
  %69 = zext <8 x i16> %wide.load8.4 to <8 x i32>
  %70 = zext <8 x i16> %wide.load9.4 to <8 x i32>
  %71 = zext <8 x i16> %wide.load10.4 to <8 x i32>
  %72 = shl nuw <8 x i32> %68, splat (i32 16)
  %73 = shl nuw <8 x i32> %69, splat (i32 16)
  %74 = shl nuw <8 x i32> %70, splat (i32 16)
  %75 = shl nuw <8 x i32> %71, splat (i32 16)
  %76 = getelementptr inbounds nuw i8, ptr %.split4, i64 512
  %77 = getelementptr inbounds nuw i8, ptr %.split4, i64 544
  %78 = getelementptr inbounds nuw i8, ptr %.split4, i64 576
  %79 = getelementptr inbounds nuw i8, ptr %.split4, i64 608
  store <8 x i32> %72, ptr %76, align 64, !alias.scope !7
  store <8 x i32> %73, ptr %77, align 32, !alias.scope !7
  store <8 x i32> %74, ptr %78, align 64, !alias.scope !7
  store <8 x i32> %75, ptr %79, align 32, !alias.scope !7
  %80 = getelementptr inbounds nuw i8, ptr %.split, i64 320
  %81 = getelementptr inbounds nuw i8, ptr %.split, i64 336
  %82 = getelementptr inbounds nuw i8, ptr %.split, i64 352
  %83 = getelementptr inbounds nuw i8, ptr %.split, i64 368
  %wide.load.5 = load <8 x i16>, ptr %80, align 64, !invariant.load !3, !noalias !7
  %wide.load8.5 = load <8 x i16>, ptr %81, align 16, !invariant.load !3, !noalias !7
  %wide.load9.5 = load <8 x i16>, ptr %82, align 32, !invariant.load !3, !noalias !7
  %wide.load10.5 = load <8 x i16>, ptr %83, align 16, !invariant.load !3, !noalias !7
  %84 = zext <8 x i16> %wide.load.5 to <8 x i32>
  %85 = zext <8 x i16> %wide.load8.5 to <8 x i32>
  %86 = zext <8 x i16> %wide.load9.5 to <8 x i32>
  %87 = zext <8 x i16> %wide.load10.5 to <8 x i32>
  %88 = shl nuw <8 x i32> %84, splat (i32 16)
  %89 = shl nuw <8 x i32> %85, splat (i32 16)
  %90 = shl nuw <8 x i32> %86, splat (i32 16)
  %91 = shl nuw <8 x i32> %87, splat (i32 16)
  %92 = getelementptr inbounds nuw i8, ptr %.split4, i64 640
  %93 = getelementptr inbounds nuw i8, ptr %.split4, i64 672
  %94 = getelementptr inbounds nuw i8, ptr %.split4, i64 704
  %95 = getelementptr inbounds nuw i8, ptr %.split4, i64 736
  store <8 x i32> %88, ptr %92, align 64, !alias.scope !7
  store <8 x i32> %89, ptr %93, align 32, !alias.scope !7
  store <8 x i32> %90, ptr %94, align 64, !alias.scope !7
  store <8 x i32> %91, ptr %95, align 32, !alias.scope !7
  %96 = getelementptr inbounds nuw i8, ptr %.split, i64 384
  %97 = getelementptr inbounds nuw i8, ptr %.split, i64 400
  %98 = getelementptr inbounds nuw i8, ptr %.split, i64 416
  %99 = getelementptr inbounds nuw i8, ptr %.split, i64 432
  %wide.load.6 = load <8 x i16>, ptr %96, align 64, !invariant.load !3, !noalias !7
  %wide.load8.6 = load <8 x i16>, ptr %97, align 16, !invariant.load !3, !noalias !7
  %wide.load9.6 = load <8 x i16>, ptr %98, align 32, !invariant.load !3, !noalias !7
  %wide.load10.6 = load <8 x i16>, ptr %99, align 16, !invariant.load !3, !noalias !7
  %100 = zext <8 x i16> %wide.load.6 to <8 x i32>
  %101 = zext <8 x i16> %wide.load8.6 to <8 x i32>
  %102 = zext <8 x i16> %wide.load9.6 to <8 x i32>
  %103 = zext <8 x i16> %wide.load10.6 to <8 x i32>
  %104 = shl nuw <8 x i32> %100, splat (i32 16)
  %105 = shl nuw <8 x i32> %101, splat (i32 16)
  %106 = shl nuw <8 x i32> %102, splat (i32 16)
  %107 = shl nuw <8 x i32> %103, splat (i32 16)
  %108 = getelementptr inbounds nuw i8, ptr %.split4, i64 768
  %109 = getelementptr inbounds nuw i8, ptr %.split4, i64 800
  %110 = getelementptr inbounds nuw i8, ptr %.split4, i64 832
  %111 = getelementptr inbounds nuw i8, ptr %.split4, i64 864
  store <8 x i32> %104, ptr %108, align 64, !alias.scope !7
  store <8 x i32> %105, ptr %109, align 32, !alias.scope !7
  store <8 x i32> %106, ptr %110, align 64, !alias.scope !7
  store <8 x i32> %107, ptr %111, align 32, !alias.scope !7
  %112 = getelementptr inbounds nuw i8, ptr %.split, i64 448
  %113 = getelementptr inbounds nuw i8, ptr %.split, i64 464
  %114 = getelementptr inbounds nuw i8, ptr %.split, i64 480
  %115 = getelementptr inbounds nuw i8, ptr %.split, i64 496
  %wide.load.7 = load <8 x i16>, ptr %112, align 64, !invariant.load !3, !noalias !7
  %wide.load8.7 = load <8 x i16>, ptr %113, align 16, !invariant.load !3, !noalias !7
  %wide.load9.7 = load <8 x i16>, ptr %114, align 32, !invariant.load !3, !noalias !7
  %wide.load10.7 = load <8 x i16>, ptr %115, align 16, !invariant.load !3, !noalias !7
  %116 = zext <8 x i16> %wide.load.7 to <8 x i32>
  %117 = zext <8 x i16> %wide.load8.7 to <8 x i32>
  %118 = zext <8 x i16> %wide.load9.7 to <8 x i32>
  %119 = zext <8 x i16> %wide.load10.7 to <8 x i32>
  %120 = shl nuw <8 x i32> %116, splat (i32 16)
  %121 = shl nuw <8 x i32> %117, splat (i32 16)
  %122 = shl nuw <8 x i32> %118, splat (i32 16)
  %123 = shl nuw <8 x i32> %119, splat (i32 16)
  %124 = getelementptr inbounds nuw i8, ptr %.split4, i64 896
  %125 = getelementptr inbounds nuw i8, ptr %.split4, i64 928
  %126 = getelementptr inbounds nuw i8, ptr %.split4, i64 960
  %127 = getelementptr inbounds nuw i8, ptr %.split4, i64 992
  store <8 x i32> %120, ptr %124, align 64, !alias.scope !7
  store <8 x i32> %121, ptr %125, align 32, !alias.scope !7
  store <8 x i32> %122, ptr %126, align 64, !alias.scope !7
  store <8 x i32> %123, ptr %127, align 32, !alias.scope !7
  %128 = getelementptr inbounds nuw i8, ptr %.split, i64 512
  %129 = getelementptr inbounds nuw i8, ptr %.split, i64 528
  %130 = getelementptr inbounds nuw i8, ptr %.split, i64 544
  %131 = getelementptr inbounds nuw i8, ptr %.split, i64 560
  %wide.load.8 = load <8 x i16>, ptr %128, align 64, !invariant.load !3, !noalias !7
  %wide.load8.8 = load <8 x i16>, ptr %129, align 16, !invariant.load !3, !noalias !7
  %wide.load9.8 = load <8 x i16>, ptr %130, align 32, !invariant.load !3, !noalias !7
  %wide.load10.8 = load <8 x i16>, ptr %131, align 16, !invariant.load !3, !noalias !7
  %132 = zext <8 x i16> %wide.load.8 to <8 x i32>
  %133 = zext <8 x i16> %wide.load8.8 to <8 x i32>
  %134 = zext <8 x i16> %wide.load9.8 to <8 x i32>
  %135 = zext <8 x i16> %wide.load10.8 to <8 x i32>
  %136 = shl nuw <8 x i32> %132, splat (i32 16)
  %137 = shl nuw <8 x i32> %133, splat (i32 16)
  %138 = shl nuw <8 x i32> %134, splat (i32 16)
  %139 = shl nuw <8 x i32> %135, splat (i32 16)
  %140 = getelementptr inbounds nuw i8, ptr %.split4, i64 1024
  %141 = getelementptr inbounds nuw i8, ptr %.split4, i64 1056
  %142 = getelementptr inbounds nuw i8, ptr %.split4, i64 1088
  %143 = getelementptr inbounds nuw i8, ptr %.split4, i64 1120
  store <8 x i32> %136, ptr %140, align 64, !alias.scope !7
  store <8 x i32> %137, ptr %141, align 32, !alias.scope !7
  store <8 x i32> %138, ptr %142, align 64, !alias.scope !7
  store <8 x i32> %139, ptr %143, align 32, !alias.scope !7
  %invar.inc = add nuw nsw i64 %convert.1.invar_address.dim.0.06, 1
  %exitcond7 = icmp eq i64 %invar.inc, 4
  br i1 %exitcond7, label %return, label %convert.1.loop_header.dim.1.preheader, !llvm.loop !10

return:                                           ; preds = %convert.1.loop_header.dim.1.preheader
  ret ptr null
}

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "frame-pointer"="all" "prefer-vector-width"="256" }

!xla_cpu_memory_region_name = !{!0, !1}
!llvm.module.flags = !{!2}

!0 = !{!"xla_cpu_emitter__elemental_kernel_emitter__hlo_opcode__convert"}
!1 = !{!"ir_emitter"}
!2 = !{i32 1, !"xla_dylib_index", i64 1}
!3 = !{}
!4 = !{i64 2304}
!5 = !{i64 64}
!6 = !{i64 4608}
!7 = !{!8}
!8 = !{!"result slice: {index:4, offset:13824, size:4608}", !9}
!9 = !{!"XLA host kernel convert.1_kernel AA domain"}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.unroll.disable"}
