; ModuleID = '__compute_module_convert_element_type.1_elemental_kernel_module'
source_filename = "__compute_module_convert_element_type.1_elemental_kernel_module"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@convert_element_type.1_parallel_bounds = private unnamed_addr constant [14 x [1 x [2 x i64]]] [[1 x [2 x i64]] [[2 x i64] [i64 0, i64 34]], [1 x [2 x i64]] [[2 x i64] [i64 34, i64 68]], [1 x [2 x i64]] [[2 x i64] [i64 68, i64 102]], [1 x [2 x i64]] [[2 x i64] [i64 102, i64 136]], [1 x [2 x i64]] [[2 x i64] [i64 136, i64 170]], [1 x [2 x i64]] [[2 x i64] [i64 170, i64 204]], [1 x [2 x i64]] [[2 x i64] [i64 204, i64 238]], [1 x [2 x i64]] [[2 x i64] [i64 238, i64 272]], [1 x [2 x i64]] [[2 x i64] [i64 272, i64 306]], [1 x [2 x i64]] [[2 x i64] [i64 306, i64 340]], [1 x [2 x i64]] [[2 x i64] [i64 340, i64 374]], [1 x [2 x i64]] [[2 x i64] [i64 374, i64 408]], [1 x [2 x i64]] [[2 x i64] [i64 408, i64 442]], [1 x [2 x i64]] [[2 x i64] [i64 442, i64 480]]]

; Function Attrs: uwtable
define noalias noundef ptr @convert_element_type.1_kernel(ptr readonly captures(none) %0) local_unnamed_addr #0 {
  %workgroup_id_gep = getelementptr inbounds nuw i8, ptr %0, i64 8
  %workgroup_id = load ptr, ptr %workgroup_id_gep, align 8
  %workgroup_id_x = load i64, ptr %workgroup_id, align 4
  %args_gep = getelementptr inbounds nuw i8, ptr %0, i64 24
  %args = load ptr, ptr %args_gep, align 8
  %arg0 = load ptr, ptr %args, align 8, !invariant.load !3, !dereferenceable !4, !align !5
  %arg1_gep = getelementptr i8, ptr %args, i64 16
  %arg1 = load ptr, ptr %arg1_gep, align 8, !invariant.load !3, !dereferenceable !6, !align !5
  %lo_dim_0_gep = getelementptr inbounds [14 x [1 x [2 x i64]]], ptr @convert_element_type.1_parallel_bounds, i64 0, i64 %workgroup_id_x
  %up_dim_0_gep = getelementptr inbounds [14 x [1 x [2 x i64]]], ptr @convert_element_type.1_parallel_bounds, i64 0, i64 %workgroup_id_x, i64 0, i64 1
  %lo_dim_0 = load i64, ptr %lo_dim_0_gep, align 16
  %up_dim_0 = load i64, ptr %up_dim_0_gep, align 8
  %.not14 = icmp ult i64 %lo_dim_0, %up_dim_0
  br i1 %.not14, label %convert_element_type.1.loop_header.dim.1.preheader, label %return

convert_element_type.1.loop_header.dim.1.preheader: ; preds = %1, %convert_element_type.1.loop_exit.dim.1
  %convert_element_type.1.invar_address.dim.0.015 = phi i64 [ %invar.inc, %convert_element_type.1.loop_exit.dim.1 ], [ %lo_dim_0, %1 ]
  %.split = getelementptr inbounds [480 x [480 x [3 x [3 x float]]]], ptr %arg0, i64 0, i64 %convert_element_type.1.invar_address.dim.0.015
  %.split8 = getelementptr inbounds [480 x [480 x [3 x [3 x bfloat]]]], ptr %arg1, i64 0, i64 %convert_element_type.1.invar_address.dim.0.015
  br label %convert_element_type.1.loop_header.dim.2.preheader

convert_element_type.1.loop_header.dim.2.preheader: ; preds = %convert_element_type.1.loop_header.dim.1.preheader, %convert_element_type.1.loop_exit.dim.2
  %convert_element_type.1.invar_address.dim.1.013 = phi i64 [ 0, %convert_element_type.1.loop_header.dim.1.preheader ], [ %invar.inc3, %convert_element_type.1.loop_exit.dim.2 ]
  %.split6 = getelementptr inbounds nuw [480 x [3 x [3 x float]]], ptr %.split, i64 0, i64 %convert_element_type.1.invar_address.dim.1.013
  %.split9 = getelementptr inbounds nuw [480 x [3 x [3 x bfloat]]], ptr %.split8, i64 0, i64 %convert_element_type.1.invar_address.dim.1.013
  br label %convert_element_type.1.loop_header.dim.3.preheader

convert_element_type.1.loop_header.dim.3.preheader: ; preds = %convert_element_type.1.loop_header.dim.2.preheader, %convert_element_type.1.loop_header.dim.3.preheader
  %convert_element_type.1.invar_address.dim.2.012 = phi i64 [ 0, %convert_element_type.1.loop_header.dim.2.preheader ], [ %invar.inc4, %convert_element_type.1.loop_header.dim.3.preheader ]
  %.split7 = getelementptr inbounds nuw [3 x [3 x float]], ptr %.split6, i64 0, i64 %convert_element_type.1.invar_address.dim.2.012
  %.split10 = getelementptr inbounds nuw [3 x [3 x bfloat]], ptr %.split9, i64 0, i64 %convert_element_type.1.invar_address.dim.2.012
  %2 = load float, ptr %.split7, align 4, !invariant.load !3, !noalias !7
  %3 = bitcast float %2 to i32
  %4 = lshr i32 %3, 16
  %5 = and i32 %4, 1
  %6 = add nuw nsw i32 %5, 32767
  %7 = fcmp uno float %2, 0.000000e+00
  %8 = and i32 %3, -8388608
  %9 = or disjoint i32 %8, 4194304
  %10 = add i32 %6, %3
  %11 = select i1 %7, i32 %9, i32 %10
  %12 = lshr i32 %11, 16
  %13 = trunc nuw i32 %12 to i16
  store i16 %13, ptr %.split10, align 2, !alias.scope !7
  %14 = getelementptr inbounds nuw i8, ptr %.split7, i64 4
  %15 = load float, ptr %14, align 4, !invariant.load !3, !noalias !7
  %16 = bitcast float %15 to i32
  %17 = lshr i32 %16, 16
  %18 = and i32 %17, 1
  %19 = add nuw nsw i32 %18, 32767
  %20 = fcmp uno float %15, 0.000000e+00
  %21 = and i32 %16, -8388608
  %22 = or disjoint i32 %21, 4194304
  %23 = add i32 %19, %16
  %24 = select i1 %20, i32 %22, i32 %23
  %25 = lshr i32 %24, 16
  %26 = trunc nuw i32 %25 to i16
  %27 = getelementptr inbounds nuw i8, ptr %.split10, i64 2
  store i16 %26, ptr %27, align 2, !alias.scope !7
  %28 = getelementptr inbounds nuw i8, ptr %.split7, i64 8
  %29 = load float, ptr %28, align 4, !invariant.load !3, !noalias !7
  %30 = bitcast float %29 to i32
  %31 = lshr i32 %30, 16
  %32 = and i32 %31, 1
  %33 = add nuw nsw i32 %32, 32767
  %34 = fcmp uno float %29, 0.000000e+00
  %35 = and i32 %30, -8388608
  %36 = or disjoint i32 %35, 4194304
  %37 = add i32 %33, %30
  %38 = select i1 %34, i32 %36, i32 %37
  %39 = lshr i32 %38, 16
  %40 = trunc nuw i32 %39 to i16
  %41 = getelementptr inbounds nuw i8, ptr %.split10, i64 4
  store i16 %40, ptr %41, align 2, !alias.scope !7
  %invar.inc4 = add nuw nsw i64 %convert_element_type.1.invar_address.dim.2.012, 1
  %exitcond = icmp eq i64 %invar.inc4, 3
  br i1 %exitcond, label %convert_element_type.1.loop_exit.dim.2, label %convert_element_type.1.loop_header.dim.3.preheader, !llvm.loop !10

convert_element_type.1.loop_exit.dim.2:           ; preds = %convert_element_type.1.loop_header.dim.3.preheader
  %invar.inc3 = add nuw nsw i64 %convert_element_type.1.invar_address.dim.1.013, 1
  %exitcond16 = icmp eq i64 %invar.inc3, 480
  br i1 %exitcond16, label %convert_element_type.1.loop_exit.dim.1, label %convert_element_type.1.loop_header.dim.2.preheader, !llvm.loop !12

convert_element_type.1.loop_exit.dim.1:           ; preds = %convert_element_type.1.loop_exit.dim.2
  %invar.inc = add i64 %convert_element_type.1.invar_address.dim.0.015, 1
  %exitcond17.not = icmp eq i64 %invar.inc, %up_dim_0
  br i1 %exitcond17.not, label %return, label %convert_element_type.1.loop_header.dim.1.preheader, !llvm.loop !13

return:                                           ; preds = %convert_element_type.1.loop_exit.dim.1, %1
  ret ptr null
}

attributes #0 = { uwtable "frame-pointer"="all" "prefer-vector-width"="256" }

!xla_cpu_memory_region_name = !{!0, !1}
!llvm.module.flags = !{!2}

!0 = !{!"xla_cpu_emitter__elemental_kernel_emitter__hlo_opcode__convert"}
!1 = !{!"ir_emitter"}
!2 = !{i32 1, !"xla_dylib_index", i64 0}
!3 = !{}
!4 = !{i64 8294400}
!5 = !{i64 64}
!6 = !{i64 4147200}
!7 = !{!8}
!8 = !{!"result slice: {index:1, offset:0, size:4147200}", !9}
!9 = !{!"XLA host kernel convert_element_type.1_kernel AA domain"}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !11}
!13 = distinct !{!13, !11}
