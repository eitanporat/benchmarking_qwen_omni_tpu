; ModuleID = '__compute_module_concatenate.1_elemental_kernel_module'
source_filename = "__compute_module_concatenate.1_elemental_kernel_module"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define noalias noundef ptr @concatenate.1_kernel(ptr readonly captures(none) %0) local_unnamed_addr #0 {
concatenate.1.loop_body.concat.0:
  %args_gep = getelementptr inbounds nuw i8, ptr %0, i64 24
  %args = load ptr, ptr %args_gep, align 8
  %arg0 = load ptr, ptr %args, align 8, !invariant.load !2, !dereferenceable !3, !align !4
  %arg1_gep = getelementptr i8, ptr %args, i64 16
  %arg1 = load ptr, ptr %arg1_gep, align 8, !invariant.load !2, !dereferenceable !3, !align !4
  %arg2_gep = getelementptr i8, ptr %args, i64 32
  %arg2 = load ptr, ptr %arg2_gep, align 8, !invariant.load !2, !dereferenceable !3, !align !4
  %arg3_gep = getelementptr i8, ptr %args, i64 48
  %arg3 = load ptr, ptr %arg3_gep, align 8, !invariant.load !2, !dereferenceable !5, !align !4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(1152) %arg3, ptr noundef nonnull align 64 dereferenceable(1152) %arg0, i64 1152, i1 false)
  %1 = getelementptr inbounds nuw i8, ptr %arg3, i64 1152
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(1152) %1, ptr noundef nonnull align 64 dereferenceable(1152) %arg1, i64 1152, i1 false)
  %2 = getelementptr inbounds nuw i8, ptr %arg3, i64 2304
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(1152) %2, ptr noundef nonnull align 64 dereferenceable(1152) %arg2, i64 1152, i1 false)
  %target_region.1 = getelementptr inbounds nuw i8, ptr %arg3, i64 3456
  %src_addr.1 = getelementptr inbounds nuw i8, ptr %arg0, i64 1152
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(1152) %target_region.1, ptr noundef nonnull align 64 dereferenceable(1152) %src_addr.1, i64 1152, i1 false)
  %src_addr7.1 = getelementptr inbounds nuw i8, ptr %arg1, i64 1152
  %3 = getelementptr inbounds nuw i8, ptr %arg3, i64 4608
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(1152) %3, ptr noundef nonnull align 64 dereferenceable(1152) %src_addr7.1, i64 1152, i1 false)
  %src_addr8.1 = getelementptr inbounds nuw i8, ptr %arg2, i64 1152
  %4 = getelementptr inbounds nuw i8, ptr %arg3, i64 5760
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(1152) %4, ptr noundef nonnull align 64 dereferenceable(1152) %src_addr8.1, i64 1152, i1 false)
  %target_region.2 = getelementptr inbounds nuw i8, ptr %arg3, i64 6912
  %src_addr.2 = getelementptr inbounds nuw i8, ptr %arg0, i64 2304
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(1152) %target_region.2, ptr noundef nonnull align 64 dereferenceable(1152) %src_addr.2, i64 1152, i1 false)
  %src_addr7.2 = getelementptr inbounds nuw i8, ptr %arg1, i64 2304
  %5 = getelementptr inbounds nuw i8, ptr %arg3, i64 8064
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(1152) %5, ptr noundef nonnull align 64 dereferenceable(1152) %src_addr7.2, i64 1152, i1 false)
  %src_addr8.2 = getelementptr inbounds nuw i8, ptr %arg2, i64 2304
  %6 = getelementptr inbounds nuw i8, ptr %arg3, i64 9216
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(1152) %6, ptr noundef nonnull align 64 dereferenceable(1152) %src_addr8.2, i64 1152, i1 false)
  %target_region.3 = getelementptr inbounds nuw i8, ptr %arg3, i64 10368
  %src_addr.3 = getelementptr inbounds nuw i8, ptr %arg0, i64 3456
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(1152) %target_region.3, ptr noundef nonnull align 64 dereferenceable(1152) %src_addr.3, i64 1152, i1 false)
  %src_addr7.3 = getelementptr inbounds nuw i8, ptr %arg1, i64 3456
  %7 = getelementptr inbounds nuw i8, ptr %arg3, i64 11520
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(1152) %7, ptr noundef nonnull align 64 dereferenceable(1152) %src_addr7.3, i64 1152, i1 false)
  %src_addr8.3 = getelementptr inbounds nuw i8, ptr %arg2, i64 3456
  %8 = getelementptr inbounds nuw i8, ptr %arg3, i64 12672
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(1152) %8, ptr noundef nonnull align 64 dereferenceable(1152) %src_addr8.3, i64 1152, i1 false)
  ret ptr null
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "frame-pointer"="all" "prefer-vector-width"="256" }
attributes #1 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }

!xla_cpu_memory_region_name = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"xla_cpu_emitter__concatenate_kernel_emitter__hlo_opcode__concatenate"}
!1 = !{i32 1, !"xla_dylib_index", i64 3}
!2 = !{}
!3 = !{i64 4608}
!4 = !{i64 64}
!5 = !{i64 13824}
