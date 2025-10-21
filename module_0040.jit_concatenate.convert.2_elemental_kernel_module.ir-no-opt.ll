; ModuleID = '__compute_module_convert.2_elemental_kernel_module'
source_filename = "__compute_module_convert.2_elemental_kernel_module"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%XLA_CPU_KernelCallFrame = type { ptr, ptr, i64, ptr }
%XLA_CPU_NumWorkGroups = type { i64, i64, i64 }
%XLA_CPU_WorkGroupId = type { i64, i64, i64 }
%XLA_CPU_KernelArg = type { ptr, i64 }

; Function Attrs: uwtable
define ptr @convert.2_kernel(ptr %0) #0 {
  %convert.2.invar_address.dim.1 = alloca i64, align 8
  %convert.2.invar_address.dim.0 = alloca i64, align 8
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
  store i64 0, ptr %convert.2.invar_address.dim.0, align 4
  br label %convert.2.loop_header.dim.0

convert.2.loop_header.dim.0:                      ; preds = %convert.2.loop_exit.dim.1, %1
  %convert.2.indvar.dim.0 = load i64, ptr %convert.2.invar_address.dim.0, align 4
  %2 = icmp uge i64 %convert.2.indvar.dim.0, 4
  br i1 %2, label %convert.2.loop_exit.dim.0, label %convert.2.loop_body.dim.0

convert.2.loop_body.dim.0:                        ; preds = %convert.2.loop_header.dim.0
  store i64 0, ptr %convert.2.invar_address.dim.1, align 4
  br label %convert.2.loop_header.dim.1

convert.2.loop_header.dim.1:                      ; preds = %convert.2.loop_body.dim.1, %convert.2.loop_body.dim.0
  %convert.2.indvar.dim.1 = load i64, ptr %convert.2.invar_address.dim.1, align 4
  %3 = icmp uge i64 %convert.2.indvar.dim.1, 288
  br i1 %3, label %convert.2.loop_exit.dim.1, label %convert.2.loop_body.dim.1

convert.2.loop_body.dim.1:                        ; preds = %convert.2.loop_header.dim.1
  %4 = getelementptr inbounds [4 x [288 x bfloat]], ptr %arg0, i64 0, i64 %convert.2.indvar.dim.0, i64 %convert.2.indvar.dim.1
  %5 = load bfloat, ptr %4, align 2, !invariant.load !3, !noalias !7
  %6 = bitcast bfloat %5 to i16
  %7 = zext i16 %6 to i32
  %8 = shl i32 %7, 16
  %9 = bitcast i32 %8 to float
  %10 = getelementptr inbounds [4 x [288 x float]], ptr %arg1, i64 0, i64 %convert.2.indvar.dim.0, i64 %convert.2.indvar.dim.1
  store float %9, ptr %10, align 4, !alias.scope !7
  %invar.inc3 = add nuw nsw i64 %convert.2.indvar.dim.1, 1
  store i64 %invar.inc3, ptr %convert.2.invar_address.dim.1, align 4
  br label %convert.2.loop_header.dim.1

convert.2.loop_exit.dim.1:                        ; preds = %convert.2.loop_header.dim.1
  %invar.inc = add nuw nsw i64 %convert.2.indvar.dim.0, 1
  store i64 %invar.inc, ptr %convert.2.invar_address.dim.0, align 4
  br label %convert.2.loop_header.dim.0, !llvm.loop !10

convert.2.loop_exit.dim.0:                        ; preds = %convert.2.loop_header.dim.0
  br label %return

return:                                           ; preds = %convert.2.loop_exit.dim.0
  ret ptr null
}

attributes #0 = { uwtable "frame-pointer"="all" "prefer-vector-width"="256" }

!xla_cpu_memory_region_name = !{!0, !1}
!llvm.module.flags = !{!2}

!0 = !{!"xla_cpu_emitter__elemental_kernel_emitter__hlo_opcode__convert"}
!1 = !{!"ir_emitter"}
!2 = !{i32 1, !"xla_dylib_index", i64 2}
!3 = !{}
!4 = !{i64 2304}
!5 = !{i64 64}
!6 = !{i64 4608}
!7 = !{!8}
!8 = !{!"result slice: {index:4, offset:18432, size:4608}", !9}
!9 = !{!"XLA host kernel convert.2_kernel AA domain"}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.unroll.disable"}
