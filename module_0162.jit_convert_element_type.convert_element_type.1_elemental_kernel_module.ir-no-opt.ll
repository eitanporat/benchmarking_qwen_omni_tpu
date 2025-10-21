; ModuleID = '__compute_module_convert_element_type.1_elemental_kernel_module'
source_filename = "__compute_module_convert_element_type.1_elemental_kernel_module"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%XLA_CPU_KernelCallFrame = type { ptr, ptr, i64, ptr }
%XLA_CPU_NumWorkGroups = type { i64, i64, i64 }
%XLA_CPU_WorkGroupId = type { i64, i64, i64 }
%XLA_CPU_KernelArg = type { ptr, i64 }

@convert_element_type.1_parallel_bounds = private constant [14 x [1 x [2 x i64]]] [[1 x [2 x i64]] [[2 x i64] [i64 0, i64 9]], [1 x [2 x i64]] [[2 x i64] [i64 9, i64 18]], [1 x [2 x i64]] [[2 x i64] [i64 18, i64 27]], [1 x [2 x i64]] [[2 x i64] [i64 27, i64 36]], [1 x [2 x i64]] [[2 x i64] [i64 36, i64 45]], [1 x [2 x i64]] [[2 x i64] [i64 45, i64 54]], [1 x [2 x i64]] [[2 x i64] [i64 54, i64 63]], [1 x [2 x i64]] [[2 x i64] [i64 63, i64 72]], [1 x [2 x i64]] [[2 x i64] [i64 72, i64 81]], [1 x [2 x i64]] [[2 x i64] [i64 81, i64 90]], [1 x [2 x i64]] [[2 x i64] [i64 90, i64 99]], [1 x [2 x i64]] [[2 x i64] [i64 99, i64 108]], [1 x [2 x i64]] [[2 x i64] [i64 108, i64 117]], [1 x [2 x i64]] [[2 x i64] [i64 117, i64 128]]]

; Function Attrs: uwtable
define ptr @convert_element_type.1_kernel(ptr %0) #0 {
  %convert_element_type.1.invar_address.dim.2 = alloca i64, align 8
  %convert_element_type.1.invar_address.dim.1 = alloca i64, align 8
  %convert_element_type.1.invar_address.dim.0 = alloca i64, align 8
  %num_workgroups_gep = getelementptr inbounds nuw %XLA_CPU_KernelCallFrame, ptr %0, i32 0, i32 0
  %num_workgroups = load ptr, ptr %num_workgroups_gep, align 8
  %num_workgroups_x_gep = getelementptr inbounds nuw %XLA_CPU_NumWorkGroups, ptr %num_workgroups, i32 0, i32 0
  %num_workgroups_y_gep = getelementptr inbounds nuw %XLA_CPU_NumWorkGroups, ptr %num_workgroups, i32 0, i32 1
  %num_workgroups_z_gep = getelementptr inbounds nuw %XLA_CPU_NumWorkGroups, ptr %num_workgroups, i32 0, i32 2
  %num_workgroups_x = load i64, ptr %num_workgroups_x_gep, align 4
  %num_workgroups_y = load i64, ptr %num_workgroups_y_gep, align 4
  %num_workgroups_z = load i64, ptr %num_workgroups_z_gep, align 4
  %workgroup_id_gep = getelementptr inbounds nuw %XLA_CPU_KernelCallFrame, ptr %0, i32 0, i32 1
  %workgroup_id = load ptr, ptr %workgroup_id_gep, align 8
  %workgroup_id_x_gep = getelementptr inbounds nuw %XLA_CPU_WorkGroupId, ptr %workgroup_id, i32 0, i32 0
  %workgroup_id_y_gep = getelementptr inbounds nuw %XLA_CPU_WorkGroupId, ptr %workgroup_id, i32 0, i32 1
  %workgroup_id_z_gep = getelementptr inbounds nuw %XLA_CPU_WorkGroupId, ptr %workgroup_id, i32 0, i32 2
  %workgroup_id_x = load i64, ptr %workgroup_id_x_gep, align 4
  %workgroup_id_y = load i64, ptr %workgroup_id_y_gep, align 4
  %workgroup_id_z = load i64, ptr %workgroup_id_z_gep, align 4
  %args_gep = getelementptr inbounds nuw %XLA_CPU_KernelCallFrame, ptr %0, i32 0, i32 3
  %args = load ptr, ptr %args_gep, align 8
  %arg0_gep = getelementptr %XLA_CPU_KernelArg, ptr %args, i32 0, i32 0
  %arg0 = load ptr, ptr %arg0_gep, align 8, !invariant.load !3, !dereferenceable !4, !align !5
  %args_gep1 = getelementptr inbounds nuw %XLA_CPU_KernelCallFrame, ptr %0, i32 0, i32 3
  %args2 = load ptr, ptr %args_gep1, align 8
  %arg1_gep = getelementptr %XLA_CPU_KernelArg, ptr %args2, i32 1, i32 0
  %arg1 = load ptr, ptr %arg1_gep, align 8, !invariant.load !3, !dereferenceable !6, !align !5
  %lo_dim_0_gep = getelementptr inbounds [14 x [1 x [2 x i64]]], ptr @convert_element_type.1_parallel_bounds, i32 0, i64 %workgroup_id_x, i32 0, i32 0
  %up_dim_0_gep = getelementptr inbounds [14 x [1 x [2 x i64]]], ptr @convert_element_type.1_parallel_bounds, i32 0, i64 %workgroup_id_x, i32 0, i32 1
  %lo_dim_0 = load i64, ptr %lo_dim_0_gep, align 4
  %up_dim_0 = load i64, ptr %up_dim_0_gep, align 4
  store i64 %lo_dim_0, ptr %convert_element_type.1.invar_address.dim.0, align 4
  br label %convert_element_type.1.loop_header.dim.0

convert_element_type.1.loop_header.dim.0:         ; preds = %convert_element_type.1.loop_exit.dim.1, %1
  %convert_element_type.1.indvar.dim.0 = load i64, ptr %convert_element_type.1.invar_address.dim.0, align 4
  %2 = icmp uge i64 %convert_element_type.1.indvar.dim.0, %up_dim_0
  br i1 %2, label %convert_element_type.1.loop_exit.dim.0, label %convert_element_type.1.loop_body.dim.0

convert_element_type.1.loop_body.dim.0:           ; preds = %convert_element_type.1.loop_header.dim.0
  store i64 0, ptr %convert_element_type.1.invar_address.dim.1, align 4
  br label %convert_element_type.1.loop_header.dim.1

convert_element_type.1.loop_header.dim.1:         ; preds = %convert_element_type.1.loop_exit.dim.2, %convert_element_type.1.loop_body.dim.0
  %convert_element_type.1.indvar.dim.1 = load i64, ptr %convert_element_type.1.invar_address.dim.1, align 4
  %3 = icmp uge i64 %convert_element_type.1.indvar.dim.1, 1536
  br i1 %3, label %convert_element_type.1.loop_exit.dim.1, label %convert_element_type.1.loop_body.dim.1

convert_element_type.1.loop_body.dim.1:           ; preds = %convert_element_type.1.loop_header.dim.1
  store i64 0, ptr %convert_element_type.1.invar_address.dim.2, align 4
  br label %convert_element_type.1.loop_header.dim.2

convert_element_type.1.loop_header.dim.2:         ; preds = %convert_element_type.1.loop_body.dim.2, %convert_element_type.1.loop_body.dim.1
  %convert_element_type.1.indvar.dim.2 = load i64, ptr %convert_element_type.1.invar_address.dim.2, align 4
  %4 = icmp uge i64 %convert_element_type.1.indvar.dim.2, 2048
  br i1 %4, label %convert_element_type.1.loop_exit.dim.2, label %convert_element_type.1.loop_body.dim.2

convert_element_type.1.loop_body.dim.2:           ; preds = %convert_element_type.1.loop_header.dim.2
  %5 = getelementptr inbounds [128 x [1536 x [2048 x float]]], ptr %arg0, i64 0, i64 %convert_element_type.1.indvar.dim.0, i64 %convert_element_type.1.indvar.dim.1, i64 %convert_element_type.1.indvar.dim.2
  %6 = load float, ptr %5, align 4, !invariant.load !3, !noalias !7
  %7 = call bfloat @xla.fptrunc.f32.to.bf16(float %6)
  %8 = getelementptr inbounds [128 x [1536 x [2048 x bfloat]]], ptr %arg1, i64 0, i64 %convert_element_type.1.indvar.dim.0, i64 %convert_element_type.1.indvar.dim.1, i64 %convert_element_type.1.indvar.dim.2
  store bfloat %7, ptr %8, align 2, !alias.scope !7
  %invar.inc4 = add nuw nsw i64 %convert_element_type.1.indvar.dim.2, 1
  store i64 %invar.inc4, ptr %convert_element_type.1.invar_address.dim.2, align 4
  br label %convert_element_type.1.loop_header.dim.2

convert_element_type.1.loop_exit.dim.2:           ; preds = %convert_element_type.1.loop_header.dim.2
  %invar.inc3 = add nuw nsw i64 %convert_element_type.1.indvar.dim.1, 1
  store i64 %invar.inc3, ptr %convert_element_type.1.invar_address.dim.1, align 4
  br label %convert_element_type.1.loop_header.dim.1, !llvm.loop !10

convert_element_type.1.loop_exit.dim.1:           ; preds = %convert_element_type.1.loop_header.dim.1
  %invar.inc = add nuw nsw i64 %convert_element_type.1.indvar.dim.0, 1
  store i64 %invar.inc, ptr %convert_element_type.1.invar_address.dim.0, align 4
  br label %convert_element_type.1.loop_header.dim.0, !llvm.loop !12

convert_element_type.1.loop_exit.dim.0:           ; preds = %convert_element_type.1.loop_header.dim.0
  br label %return

return:                                           ; preds = %convert_element_type.1.loop_exit.dim.0
  ret ptr null
}

declare bfloat @xla.fptrunc.f32.to.bf16(float)

attributes #0 = { uwtable "frame-pointer"="all" "prefer-vector-width"="256" }

!xla_cpu_memory_region_name = !{!0, !1}
!llvm.module.flags = !{!2}

!0 = !{!"xla_cpu_emitter__elemental_kernel_emitter__hlo_opcode__convert"}
!1 = !{!"ir_emitter"}
!2 = !{i32 1, !"xla_dylib_index", i64 0}
!3 = !{}
!4 = !{i64 1610612736}
!5 = !{i64 64}
!6 = !{i64 805306368}
!7 = !{!8}
!8 = !{!"result slice: {index:1, offset:0, size:805306368}", !9}
!9 = !{!"XLA host kernel convert_element_type.1_kernel AA domain"}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !11}
