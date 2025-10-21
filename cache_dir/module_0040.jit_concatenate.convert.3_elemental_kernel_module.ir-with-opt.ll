; ModuleID = '__compute_module_convert.3_elemental_kernel_module'
source_filename = "__compute_module_convert.3_elemental_kernel_module"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: uwtable
define noalias noundef ptr @convert.3_kernel(ptr readonly captures(none) %0) local_unnamed_addr #0 {
  %args_gep = getelementptr inbounds nuw i8, ptr %0, i64 24
  %args = load ptr, ptr %args_gep, align 8
  %arg0 = load ptr, ptr %args, align 8, !invariant.load !3, !dereferenceable !4, !align !5
  %arg1_gep = getelementptr i8, ptr %args, i64 16
  %arg1 = load ptr, ptr %arg1_gep, align 8, !invariant.load !3, !dereferenceable !6, !align !5
  br label %convert.3.loop_header.dim.1.preheader

convert.3.loop_header.dim.1.preheader:            ; preds = %1, %convert.3.loop_exit.dim.1
  %convert.3.invar_address.dim.0.06 = phi i64 [ 0, %1 ], [ %invar.inc, %convert.3.loop_exit.dim.1 ]
  %.split = getelementptr inbounds nuw [4 x [864 x float]], ptr %arg0, i64 0, i64 %convert.3.invar_address.dim.0.06
  %.split4 = getelementptr inbounds nuw [4 x [864 x bfloat]], ptr %arg1, i64 0, i64 %convert.3.invar_address.dim.0.06
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %convert.3.loop_header.dim.1.preheader
  %index = phi i64 [ 0, %convert.3.loop_header.dim.1.preheader ], [ %index.next, %vector.body ]
  %2 = getelementptr inbounds nuw [864 x float], ptr %.split, i64 0, i64 %index
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %5 = getelementptr inbounds nuw i8, ptr %2, i64 96
  %wide.load = load <8 x float>, ptr %2, align 64, !invariant.load !3, !noalias !7
  %wide.load8 = load <8 x float>, ptr %3, align 32, !invariant.load !3, !noalias !7
  %wide.load9 = load <8 x float>, ptr %4, align 64, !invariant.load !3, !noalias !7
  %wide.load10 = load <8 x float>, ptr %5, align 32, !invariant.load !3, !noalias !7
  %6 = bitcast <8 x float> %wide.load to <8 x i32>
  %7 = lshr <8 x i32> %6, splat (i32 16)
  %8 = and <8 x i32> %7, splat (i32 1)
  %9 = add nuw nsw <8 x i32> %8, splat (i32 32767)
  %10 = fcmp uno <8 x float> %wide.load, zeroinitializer
  %11 = and <8 x i32> %6, splat (i32 -8388608)
  %12 = or disjoint <8 x i32> %11, splat (i32 4194304)
  %13 = add <8 x i32> %9, %6
  %14 = select <8 x i1> %10, <8 x i32> %12, <8 x i32> %13
  %15 = lshr <8 x i32> %14, splat (i32 16)
  %16 = trunc nuw <8 x i32> %15 to <8 x i16>
  %17 = bitcast <8 x float> %wide.load8 to <8 x i32>
  %18 = lshr <8 x i32> %17, splat (i32 16)
  %19 = and <8 x i32> %18, splat (i32 1)
  %20 = add nuw nsw <8 x i32> %19, splat (i32 32767)
  %21 = fcmp uno <8 x float> %wide.load8, zeroinitializer
  %22 = and <8 x i32> %17, splat (i32 -8388608)
  %23 = or disjoint <8 x i32> %22, splat (i32 4194304)
  %24 = add <8 x i32> %20, %17
  %25 = select <8 x i1> %21, <8 x i32> %23, <8 x i32> %24
  %26 = lshr <8 x i32> %25, splat (i32 16)
  %27 = trunc nuw <8 x i32> %26 to <8 x i16>
  %28 = bitcast <8 x float> %wide.load9 to <8 x i32>
  %29 = lshr <8 x i32> %28, splat (i32 16)
  %30 = and <8 x i32> %29, splat (i32 1)
  %31 = add nuw nsw <8 x i32> %30, splat (i32 32767)
  %32 = fcmp uno <8 x float> %wide.load9, zeroinitializer
  %33 = and <8 x i32> %28, splat (i32 -8388608)
  %34 = or disjoint <8 x i32> %33, splat (i32 4194304)
  %35 = add <8 x i32> %31, %28
  %36 = select <8 x i1> %32, <8 x i32> %34, <8 x i32> %35
  %37 = lshr <8 x i32> %36, splat (i32 16)
  %38 = trunc nuw <8 x i32> %37 to <8 x i16>
  %39 = bitcast <8 x float> %wide.load10 to <8 x i32>
  %40 = lshr <8 x i32> %39, splat (i32 16)
  %41 = and <8 x i32> %40, splat (i32 1)
  %42 = add nuw nsw <8 x i32> %41, splat (i32 32767)
  %43 = fcmp uno <8 x float> %wide.load10, zeroinitializer
  %44 = and <8 x i32> %39, splat (i32 -8388608)
  %45 = or disjoint <8 x i32> %44, splat (i32 4194304)
  %46 = add <8 x i32> %42, %39
  %47 = select <8 x i1> %43, <8 x i32> %45, <8 x i32> %46
  %48 = lshr <8 x i32> %47, splat (i32 16)
  %49 = trunc nuw <8 x i32> %48 to <8 x i16>
  %50 = getelementptr inbounds nuw [864 x bfloat], ptr %.split4, i64 0, i64 %index
  %51 = getelementptr inbounds nuw i8, ptr %50, i64 16
  %52 = getelementptr inbounds nuw i8, ptr %50, i64 32
  %53 = getelementptr inbounds nuw i8, ptr %50, i64 48
  store <8 x i16> %16, ptr %50, align 64, !alias.scope !7
  store <8 x i16> %27, ptr %51, align 16, !alias.scope !7
  store <8 x i16> %38, ptr %52, align 32, !alias.scope !7
  store <8 x i16> %49, ptr %53, align 16, !alias.scope !7
  %index.next = add nuw i64 %index, 32
  %54 = icmp eq i64 %index.next, 864
  br i1 %54, label %convert.3.loop_exit.dim.1, label %vector.body, !llvm.loop !10

convert.3.loop_exit.dim.1:                        ; preds = %vector.body
  %invar.inc = add nuw nsw i64 %convert.3.invar_address.dim.0.06, 1
  %exitcond7 = icmp eq i64 %invar.inc, 4
  br i1 %exitcond7, label %return, label %convert.3.loop_header.dim.1.preheader, !llvm.loop !13

return:                                           ; preds = %convert.3.loop_exit.dim.1
  ret ptr null
}

attributes #0 = { uwtable "frame-pointer"="all" "prefer-vector-width"="256" }

!xla_cpu_memory_region_name = !{!0, !1}
!llvm.module.flags = !{!2}

!0 = !{!"xla_cpu_emitter__elemental_kernel_emitter__hlo_opcode__convert"}
!1 = !{!"ir_emitter"}
!2 = !{i32 1, !"xla_dylib_index", i64 4}
!3 = !{}
!4 = !{i64 13824}
!5 = !{i64 64}
!6 = !{i64 6912}
!7 = !{!8}
!8 = !{!"result slice: {index:0, offset:0, size:6912}", !9}
!9 = !{!"XLA host kernel convert.3_kernel AA domain"}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.isvectorized", i32 1}
!12 = !{!"llvm.loop.unroll.runtime.disable"}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.unroll.disable"}
