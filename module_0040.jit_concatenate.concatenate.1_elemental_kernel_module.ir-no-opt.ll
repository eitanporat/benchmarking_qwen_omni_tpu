; ModuleID = '__compute_module_concatenate.1_elemental_kernel_module'
source_filename = "__compute_module_concatenate.1_elemental_kernel_module"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%XLA_CPU_KernelCallFrame = type { ptr, ptr, i64, ptr }
%XLA_CPU_NumWorkGroups = type { i64, i64, i64 }
%XLA_CPU_WorkGroupId = type { i64, i64, i64 }
%XLA_CPU_KernelArg = type { ptr, i64 }

; Function Attrs: uwtable
define ptr @concatenate.1_kernel(ptr %0) #0 {
  %concatenate.1.invar_address.concat.0 = alloca i64, align 8
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
  %arg0 = load ptr, ptr %arg0_gep, align 8, !invariant.load !2, !dereferenceable !3, !align !4
  %args_gep1 = getelementptr inbounds nuw %XLA_CPU_KernelCallFrame, ptr %0, i32 0, i32 3
  %args2 = load ptr, ptr %args_gep1, align 8
  %arg1_gep = getelementptr %XLA_CPU_KernelArg, ptr %args2, i32 1, i32 0
  %arg1 = load ptr, ptr %arg1_gep, align 8, !invariant.load !2, !dereferenceable !3, !align !4
  %args_gep3 = getelementptr inbounds nuw %XLA_CPU_KernelCallFrame, ptr %0, i32 0, i32 3
  %args4 = load ptr, ptr %args_gep3, align 8
  %arg2_gep = getelementptr %XLA_CPU_KernelArg, ptr %args4, i32 2, i32 0
  %arg2 = load ptr, ptr %arg2_gep, align 8, !invariant.load !2, !dereferenceable !3, !align !4
  %args_gep5 = getelementptr inbounds nuw %XLA_CPU_KernelCallFrame, ptr %0, i32 0, i32 3
  %args6 = load ptr, ptr %args_gep5, align 8
  %arg3_gep = getelementptr %XLA_CPU_KernelArg, ptr %args6, i32 3, i32 0
  %arg3 = load ptr, ptr %arg3_gep, align 8, !invariant.load !2, !dereferenceable !5, !align !4
  store i64 0, ptr %concatenate.1.invar_address.concat.0, align 4
  br label %concatenate.1.loop_header.concat.0

concatenate.1.loop_header.concat.0:               ; preds = %concatenate.1.loop_body.concat.0, %1
  %concatenate.1.indvar.concat.0 = load i64, ptr %concatenate.1.invar_address.concat.0, align 4
  %2 = icmp uge i64 %concatenate.1.indvar.concat.0, 4
  br i1 %2, label %concatenate.1.loop_exit.concat.0, label %concatenate.1.loop_body.concat.0

concatenate.1.loop_body.concat.0:                 ; preds = %concatenate.1.loop_header.concat.0
  %target_region = getelementptr inbounds [4 x [864 x float]], ptr %arg3, i64 0, i64 %concatenate.1.indvar.concat.0, i64 0
  %src_addr = getelementptr inbounds [4 x [288 x float]], ptr %arg0, i64 0, i64 %concatenate.1.indvar.concat.0, i64 0
  %3 = getelementptr i8, ptr %target_region, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %3, ptr align 4 %src_addr, i64 1152, i1 false)
  %src_addr7 = getelementptr inbounds [4 x [288 x float]], ptr %arg1, i64 0, i64 %concatenate.1.indvar.concat.0, i64 0
  %4 = getelementptr i8, ptr %target_region, i64 1152
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %4, ptr align 4 %src_addr7, i64 1152, i1 false)
  %src_addr8 = getelementptr inbounds [4 x [288 x float]], ptr %arg2, i64 0, i64 %concatenate.1.indvar.concat.0, i64 0
  %5 = getelementptr i8, ptr %target_region, i64 2304
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %5, ptr align 4 %src_addr8, i64 1152, i1 false)
  %invar.inc = add nuw nsw i64 %concatenate.1.indvar.concat.0, 1
  store i64 %invar.inc, ptr %concatenate.1.invar_address.concat.0, align 4
  br label %concatenate.1.loop_header.concat.0

concatenate.1.loop_exit.concat.0:                 ; preds = %concatenate.1.loop_header.concat.0
  br label %return

return:                                           ; preds = %concatenate.1.loop_exit.concat.0
  ret ptr null
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

attributes #0 = { uwtable "frame-pointer"="all" "prefer-vector-width"="256" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

!xla_cpu_memory_region_name = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"xla_cpu_emitter__concatenate_kernel_emitter__hlo_opcode__concatenate"}
!1 = !{i32 1, !"xla_dylib_index", i64 3}
!2 = !{}
!3 = !{i64 4608}
!4 = !{i64 64}
!5 = !{i64 13824}
