; ModuleID = '__compute_module_convert_element_type.1_elemental_kernel_module'
source_filename = "__compute_module_convert_element_type.1_elemental_kernel_module"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@convert_element_type.1_parallel_bounds = private unnamed_addr constant [14 x [1 x [2 x i64]]] [[1 x [2 x i64]] [[2 x i64] [i64 0, i64 82]], [1 x [2 x i64]] [[2 x i64] [i64 82, i64 164]], [1 x [2 x i64]] [[2 x i64] [i64 164, i64 246]], [1 x [2 x i64]] [[2 x i64] [i64 246, i64 328]], [1 x [2 x i64]] [[2 x i64] [i64 328, i64 410]], [1 x [2 x i64]] [[2 x i64] [i64 410, i64 492]], [1 x [2 x i64]] [[2 x i64] [i64 492, i64 574]], [1 x [2 x i64]] [[2 x i64] [i64 574, i64 656]], [1 x [2 x i64]] [[2 x i64] [i64 656, i64 738]], [1 x [2 x i64]] [[2 x i64] [i64 738, i64 820]], [1 x [2 x i64]] [[2 x i64] [i64 820, i64 902]], [1 x [2 x i64]] [[2 x i64] [i64 902, i64 984]], [1 x [2 x i64]] [[2 x i64] [i64 984, i64 1066]], [1 x [2 x i64]] [[2 x i64] [i64 1066, i64 1152]]]

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
  %.not6 = icmp ult i64 %lo_dim_0, %up_dim_0
  br i1 %.not6, label %iter.check, label %return

iter.check:                                       ; preds = %1, %vec.epilog.vector.body
  %convert_element_type.1.invar_address.dim.0.07 = phi i64 [ %invar.inc, %vec.epilog.vector.body ], [ %lo_dim_0, %1 ]
  %.split = getelementptr inbounds [1152 x [4304 x float]], ptr %arg0, i64 0, i64 %convert_element_type.1.invar_address.dim.0.07
  %.split4 = getelementptr inbounds [1152 x [4304 x bfloat]], ptr %arg1, i64 0, i64 %convert_element_type.1.invar_address.dim.0.07
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %iter.check
  %index = phi i64 [ 0, %iter.check ], [ %index.next, %vector.body ]
  %2 = getelementptr inbounds nuw [4304 x float], ptr %.split, i64 0, i64 %index
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %5 = getelementptr inbounds nuw i8, ptr %2, i64 96
  %wide.load = load <8 x float>, ptr %2, align 64, !invariant.load !3, !noalias !7
  %wide.load9 = load <8 x float>, ptr %3, align 32, !invariant.load !3, !noalias !7
  %wide.load10 = load <8 x float>, ptr %4, align 64, !invariant.load !3, !noalias !7
  %wide.load11 = load <8 x float>, ptr %5, align 32, !invariant.load !3, !noalias !7
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
  %17 = bitcast <8 x float> %wide.load9 to <8 x i32>
  %18 = lshr <8 x i32> %17, splat (i32 16)
  %19 = and <8 x i32> %18, splat (i32 1)
  %20 = add nuw nsw <8 x i32> %19, splat (i32 32767)
  %21 = fcmp uno <8 x float> %wide.load9, zeroinitializer
  %22 = and <8 x i32> %17, splat (i32 -8388608)
  %23 = or disjoint <8 x i32> %22, splat (i32 4194304)
  %24 = add <8 x i32> %20, %17
  %25 = select <8 x i1> %21, <8 x i32> %23, <8 x i32> %24
  %26 = lshr <8 x i32> %25, splat (i32 16)
  %27 = trunc nuw <8 x i32> %26 to <8 x i16>
  %28 = bitcast <8 x float> %wide.load10 to <8 x i32>
  %29 = lshr <8 x i32> %28, splat (i32 16)
  %30 = and <8 x i32> %29, splat (i32 1)
  %31 = add nuw nsw <8 x i32> %30, splat (i32 32767)
  %32 = fcmp uno <8 x float> %wide.load10, zeroinitializer
  %33 = and <8 x i32> %28, splat (i32 -8388608)
  %34 = or disjoint <8 x i32> %33, splat (i32 4194304)
  %35 = add <8 x i32> %31, %28
  %36 = select <8 x i1> %32, <8 x i32> %34, <8 x i32> %35
  %37 = lshr <8 x i32> %36, splat (i32 16)
  %38 = trunc nuw <8 x i32> %37 to <8 x i16>
  %39 = bitcast <8 x float> %wide.load11 to <8 x i32>
  %40 = lshr <8 x i32> %39, splat (i32 16)
  %41 = and <8 x i32> %40, splat (i32 1)
  %42 = add nuw nsw <8 x i32> %41, splat (i32 32767)
  %43 = fcmp uno <8 x float> %wide.load11, zeroinitializer
  %44 = and <8 x i32> %39, splat (i32 -8388608)
  %45 = or disjoint <8 x i32> %44, splat (i32 4194304)
  %46 = add <8 x i32> %42, %39
  %47 = select <8 x i1> %43, <8 x i32> %45, <8 x i32> %46
  %48 = lshr <8 x i32> %47, splat (i32 16)
  %49 = trunc nuw <8 x i32> %48 to <8 x i16>
  %50 = getelementptr inbounds nuw [4304 x bfloat], ptr %.split4, i64 0, i64 %index
  %51 = getelementptr inbounds nuw i8, ptr %50, i64 16
  %52 = getelementptr inbounds nuw i8, ptr %50, i64 32
  %53 = getelementptr inbounds nuw i8, ptr %50, i64 48
  store <8 x i16> %16, ptr %50, align 32, !alias.scope !7
  store <8 x i16> %27, ptr %51, align 16, !alias.scope !7
  store <8 x i16> %38, ptr %52, align 32, !alias.scope !7
  store <8 x i16> %49, ptr %53, align 16, !alias.scope !7
  %index.next = add nuw i64 %index, 32
  %54 = icmp eq i64 %index.next, 4288
  br i1 %54, label %vec.epilog.vector.body, label %vector.body, !llvm.loop !10

vec.epilog.vector.body:                           ; preds = %vector.body
  %55 = getelementptr inbounds nuw i8, ptr %.split, i64 17152
  %wide.load13 = load <8 x float>, ptr %55, align 64, !invariant.load !3, !noalias !7
  %56 = bitcast <8 x float> %wide.load13 to <8 x i32>
  %57 = lshr <8 x i32> %56, splat (i32 16)
  %58 = and <8 x i32> %57, splat (i32 1)
  %59 = add nuw nsw <8 x i32> %58, splat (i32 32767)
  %60 = fcmp uno <8 x float> %wide.load13, zeroinitializer
  %61 = and <8 x i32> %56, splat (i32 -8388608)
  %62 = or disjoint <8 x i32> %61, splat (i32 4194304)
  %63 = add <8 x i32> %59, %56
  %64 = select <8 x i1> %60, <8 x i32> %62, <8 x i32> %63
  %65 = lshr <8 x i32> %64, splat (i32 16)
  %66 = trunc nuw <8 x i32> %65 to <8 x i16>
  %67 = getelementptr inbounds nuw i8, ptr %.split4, i64 8576
  store <8 x i16> %66, ptr %67, align 32, !alias.scope !7
  %68 = getelementptr inbounds nuw i8, ptr %.split, i64 17184
  %wide.load13.1 = load <8 x float>, ptr %68, align 32, !invariant.load !3, !noalias !7
  %69 = bitcast <8 x float> %wide.load13.1 to <8 x i32>
  %70 = lshr <8 x i32> %69, splat (i32 16)
  %71 = and <8 x i32> %70, splat (i32 1)
  %72 = add nuw nsw <8 x i32> %71, splat (i32 32767)
  %73 = fcmp uno <8 x float> %wide.load13.1, zeroinitializer
  %74 = and <8 x i32> %69, splat (i32 -8388608)
  %75 = or disjoint <8 x i32> %74, splat (i32 4194304)
  %76 = add <8 x i32> %72, %69
  %77 = select <8 x i1> %73, <8 x i32> %75, <8 x i32> %76
  %78 = lshr <8 x i32> %77, splat (i32 16)
  %79 = trunc nuw <8 x i32> %78 to <8 x i16>
  %80 = getelementptr inbounds nuw i8, ptr %.split4, i64 8592
  store <8 x i16> %79, ptr %80, align 16, !alias.scope !7
  %invar.inc = add i64 %convert_element_type.1.invar_address.dim.0.07, 1
  %exitcond8.not = icmp eq i64 %invar.inc, %up_dim_0
  br i1 %exitcond8.not, label %return, label %iter.check, !llvm.loop !13

return:                                           ; preds = %vec.epilog.vector.body, %1
  ret ptr null
}

attributes #0 = { uwtable "frame-pointer"="all" "prefer-vector-width"="256" }

!xla_cpu_memory_region_name = !{!0, !1}
!llvm.module.flags = !{!2}

!0 = !{!"xla_cpu_emitter__elemental_kernel_emitter__hlo_opcode__convert"}
!1 = !{!"ir_emitter"}
!2 = !{i32 1, !"xla_dylib_index", i64 0}
!3 = !{}
!4 = !{i64 19832832}
!5 = !{i64 64}
!6 = !{i64 9916416}
!7 = !{!8}
!8 = !{!"result slice: {index:1, offset:0, size:9916416}", !9}
!9 = !{!"XLA host kernel convert_element_type.1_kernel AA domain"}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.isvectorized", i32 1}
!12 = !{!"llvm.loop.unroll.runtime.disable"}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.unroll.disable"}
