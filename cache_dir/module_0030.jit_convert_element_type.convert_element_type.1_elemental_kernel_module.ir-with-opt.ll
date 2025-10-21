; ModuleID = '__compute_module_convert_element_type.1_elemental_kernel_module'
source_filename = "__compute_module_convert_element_type.1_elemental_kernel_module"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: uwtable
define noalias noundef ptr @convert_element_type.1_kernel(ptr readonly captures(none) %0) local_unnamed_addr #0 {
vector.ph:
  %args_gep = getelementptr inbounds nuw i8, ptr %0, i64 24
  %args = load ptr, ptr %args_gep, align 8
  %arg0 = load ptr, ptr %args, align 8, !invariant.load !3, !dereferenceable !4, !align !5
  %arg1_gep = getelementptr i8, ptr %args, i64 16
  %arg1 = load ptr, ptr %arg1_gep, align 8, !invariant.load !3, !dereferenceable !6, !align !5
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %1 = getelementptr inbounds nuw [3456 x float], ptr %arg0, i64 0, i64 %index
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 64
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 96
  %wide.load = load <8 x float>, ptr %1, align 64, !invariant.load !3, !noalias !7
  %wide.load4 = load <8 x float>, ptr %2, align 32, !invariant.load !3, !noalias !7
  %wide.load5 = load <8 x float>, ptr %3, align 64, !invariant.load !3, !noalias !7
  %wide.load6 = load <8 x float>, ptr %4, align 32, !invariant.load !3, !noalias !7
  %5 = bitcast <8 x float> %wide.load to <8 x i32>
  %6 = lshr <8 x i32> %5, splat (i32 16)
  %7 = and <8 x i32> %6, splat (i32 1)
  %8 = add nuw nsw <8 x i32> %7, splat (i32 32767)
  %9 = fcmp uno <8 x float> %wide.load, zeroinitializer
  %10 = and <8 x i32> %5, splat (i32 -8388608)
  %11 = or disjoint <8 x i32> %10, splat (i32 4194304)
  %12 = add <8 x i32> %8, %5
  %13 = select <8 x i1> %9, <8 x i32> %11, <8 x i32> %12
  %14 = lshr <8 x i32> %13, splat (i32 16)
  %15 = trunc nuw <8 x i32> %14 to <8 x i16>
  %16 = bitcast <8 x float> %wide.load4 to <8 x i32>
  %17 = lshr <8 x i32> %16, splat (i32 16)
  %18 = and <8 x i32> %17, splat (i32 1)
  %19 = add nuw nsw <8 x i32> %18, splat (i32 32767)
  %20 = fcmp uno <8 x float> %wide.load4, zeroinitializer
  %21 = and <8 x i32> %16, splat (i32 -8388608)
  %22 = or disjoint <8 x i32> %21, splat (i32 4194304)
  %23 = add <8 x i32> %19, %16
  %24 = select <8 x i1> %20, <8 x i32> %22, <8 x i32> %23
  %25 = lshr <8 x i32> %24, splat (i32 16)
  %26 = trunc nuw <8 x i32> %25 to <8 x i16>
  %27 = bitcast <8 x float> %wide.load5 to <8 x i32>
  %28 = lshr <8 x i32> %27, splat (i32 16)
  %29 = and <8 x i32> %28, splat (i32 1)
  %30 = add nuw nsw <8 x i32> %29, splat (i32 32767)
  %31 = fcmp uno <8 x float> %wide.load5, zeroinitializer
  %32 = and <8 x i32> %27, splat (i32 -8388608)
  %33 = or disjoint <8 x i32> %32, splat (i32 4194304)
  %34 = add <8 x i32> %30, %27
  %35 = select <8 x i1> %31, <8 x i32> %33, <8 x i32> %34
  %36 = lshr <8 x i32> %35, splat (i32 16)
  %37 = trunc nuw <8 x i32> %36 to <8 x i16>
  %38 = bitcast <8 x float> %wide.load6 to <8 x i32>
  %39 = lshr <8 x i32> %38, splat (i32 16)
  %40 = and <8 x i32> %39, splat (i32 1)
  %41 = add nuw nsw <8 x i32> %40, splat (i32 32767)
  %42 = fcmp uno <8 x float> %wide.load6, zeroinitializer
  %43 = and <8 x i32> %38, splat (i32 -8388608)
  %44 = or disjoint <8 x i32> %43, splat (i32 4194304)
  %45 = add <8 x i32> %41, %38
  %46 = select <8 x i1> %42, <8 x i32> %44, <8 x i32> %45
  %47 = lshr <8 x i32> %46, splat (i32 16)
  %48 = trunc nuw <8 x i32> %47 to <8 x i16>
  %49 = getelementptr inbounds nuw [3456 x bfloat], ptr %arg1, i64 0, i64 %index
  %50 = getelementptr inbounds nuw i8, ptr %49, i64 16
  %51 = getelementptr inbounds nuw i8, ptr %49, i64 32
  %52 = getelementptr inbounds nuw i8, ptr %49, i64 48
  store <8 x i16> %15, ptr %49, align 64, !alias.scope !7
  store <8 x i16> %26, ptr %50, align 16, !alias.scope !7
  store <8 x i16> %37, ptr %51, align 32, !alias.scope !7
  store <8 x i16> %48, ptr %52, align 16, !alias.scope !7
  %index.next = add nuw i64 %index, 32
  %53 = icmp eq i64 %index.next, 3456
  br i1 %53, label %return, label %vector.body, !llvm.loop !10

return:                                           ; preds = %vector.body
  ret ptr null
}

attributes #0 = { uwtable "frame-pointer"="all" "prefer-vector-width"="256" }

!xla_cpu_memory_region_name = !{!0, !1}
!llvm.module.flags = !{!2}

!0 = !{!"xla_cpu_emitter__elemental_kernel_emitter__hlo_opcode__convert"}
!1 = !{!"ir_emitter"}
!2 = !{i32 1, !"xla_dylib_index", i64 0}
!3 = !{}
!4 = !{i64 13824}
!5 = !{i64 64}
!6 = !{i64 6912}
!7 = !{!8}
!8 = !{!"result slice: {index:1, offset:0, size:6912}", !9}
!9 = !{!"XLA host kernel convert_element_type.1_kernel AA domain"}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.isvectorized", i32 1}
!12 = !{!"llvm.loop.unroll.runtime.disable"}
