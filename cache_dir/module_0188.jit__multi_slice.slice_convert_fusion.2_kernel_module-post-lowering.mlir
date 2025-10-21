module @slice_convert_fusion.2_kernel_module attributes {dlti.dl_spec = #dlti.dl_spec<index = 64 : i32>, xla.cpu_memory_region_name = "xla_cpu_emitter__loop_fusion_kernel_emitter__hlo_opcode__fusion"} {
  llvm.func @slice_convert_fusion.2(%arg0: !llvm.ptr) -> !llvm.ptr attributes {frame_pointer = #llvm.framePointerKind<all>, passthrough = [["prefer-vector-width", "256"]], uwtable_kind = #llvm.uwtableKind<async>} {
    %0 = llvm.mlir.zero : !llvm.ptr
    %1 = llvm.getelementptr inbounds %arg0[0, 3] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"XLA_CPU_KernelCallFrame", (ptr, ptr, i64, ptr)>
    %2 = llvm.load %1 invariant : !llvm.ptr -> !llvm.ptr
    %3 = llvm.getelementptr inbounds %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"XLA_CPU_KernelArg", (ptr, i64)>
    %4 = llvm.load %3 invariant dereferenceable<bytes = 402653184> : !llvm.ptr -> !llvm.ptr
    %5 = llvm.getelementptr inbounds %2[1, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"XLA_CPU_KernelArg", (ptr, i64)>
    %6 = llvm.load %5 invariant dereferenceable<bytes = 100663296> : !llvm.ptr -> !llvm.ptr
    %7 = llvm.getelementptr inbounds %arg0[0, 1] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"XLA_CPU_KernelCallFrame", (ptr, ptr, i64, ptr)>
    %8 = llvm.load %7 : !llvm.ptr -> !llvm.ptr
    %9 = llvm.getelementptr inbounds %8[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"kernel_dim3", (i64, i64, i64)>
    %10 = llvm.load %9 invariant : !llvm.ptr -> i64
    %11 = llvm.getelementptr inbounds %8[0, 1] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"kernel_dim3", (i64, i64, i64)>
    %12 = llvm.load %11 invariant : !llvm.ptr -> i64
    %13 = llvm.getelementptr inbounds %8[0, 2] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"kernel_dim3", (i64, i64, i64)>
    %14 = llvm.load %13 invariant : !llvm.ptr -> i64
    llvm.call @slice_convert_fusion.2_wrapped(%4, %6, %10, %12, %14) : (!llvm.ptr, !llvm.ptr, i64, i64, i64) -> ()
    llvm.return %0 : !llvm.ptr
  }
  llvm.func internal @slice_convert_fusion.2_wrapped(%arg0: !llvm.ptr {llvm.align = 64 : index, llvm.dereferenceable = 402653184 : index, llvm.noalias, xla.invariant}, %arg1: !llvm.ptr {llvm.align = 64 : index, llvm.dereferenceable = 100663296 : index, llvm.noalias}, %arg2: i64, %arg3: i64, %arg4: i64) attributes {always_inline, sym_visibility = "private", xla.backend_kind = #xla.backend_kind<cpu>, xla.cpu.is_wrapped, xla.entry} {
    %0 = llvm.mlir.constant(393216 : index) : i64
    %1 = llvm.mlir.constant(3932160 : index) : i64
    %2 = llvm.mlir.constant(768 : index) : i64
    %3 = llvm.mlir.constant(1572864 : index) : i64
    %4 = llvm.mlir.constant(15728640 : index) : i64
    %5 = llvm.mlir.constant(13 : index) : i64
    %6 = llvm.mlir.constant(12 : index) : i64
    %7 = llvm.mlir.constant(127 : index) : i64
    %8 = llvm.mlir.constant(192 : index) : i64
    %9 = llvm.mlir.constant(2048 : index) : i64
    %10 = llvm.mlir.constant(10 : index) : i64
    %11 = llvm.mlir.constant(0 : index) : i64
    %12 = llvm.mlir.constant(1 : index) : i64
    %13 = llvm.mlir.constant(11 : index) : i64
    %14 = llvm.icmp "sle" %arg2, %13 : i64
    llvm.cond_br %14, ^bb1, ^bb13
  ^bb1:  // pred: ^bb0
    %15 = llvm.icmp "sge" %arg2, %11 : i64
    %16 = llvm.and %15, %14 : i1
    llvm.cond_br %16, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %17 = llvm.mul %arg2, %4 overflow<nsw> : i64
    %18 = llvm.mul %arg2, %1 overflow<nsw> : i64
    llvm.br ^bb3(%11 : i64)
  ^bb3(%19: i64):  // 2 preds: ^bb2, ^bb10
    %20 = llvm.icmp "slt" %19, %10 : i64
    llvm.cond_br %20, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %21 = llvm.mul %19, %3 overflow<nsw> : i64
    %22 = llvm.add %17, %21 overflow<nsw> : i64
    %23 = llvm.mul %19, %0 overflow<nsw> : i64
    %24 = llvm.add %18, %23 overflow<nsw> : i64
    llvm.br ^bb5(%11 : i64)
  ^bb5(%25: i64):  // 2 preds: ^bb4, ^bb9
    %26 = llvm.icmp "slt" %25, %9 : i64
    llvm.cond_br %26, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %27 = llvm.mul %25, %2 overflow<nsw> : i64
    %28 = llvm.add %22, %27 overflow<nsw> : i64
    %29 = llvm.mul %25, %8 overflow<nsw> : i64
    %30 = llvm.add %24, %29 overflow<nsw> : i64
    llvm.br ^bb7(%11 : i64)
  ^bb7(%31: i64):  // 2 preds: ^bb6, ^bb8
    %32 = llvm.icmp "slt" %31, %8 : i64
    llvm.cond_br %32, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %33 = llvm.add %28, %31 overflow<nsw> : i64
    %34 = llvm.add %33, %8 overflow<nsw> : i64
    %35 = llvm.getelementptr inbounds %arg0[0, %34] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.array<201326592 x bf16>
    %36 = llvm.load %35 invariant : !llvm.ptr -> bf16
    %37 = llvm.add %30, %31 overflow<nsw> : i64
    %38 = llvm.getelementptr inbounds %arg1[0, %37] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.array<50331648 x bf16>
    llvm.store %36, %38 : bf16, !llvm.ptr
    %39 = llvm.add %31, %12 : i64
    llvm.br ^bb7(%39 : i64)
  ^bb9:  // pred: ^bb7
    %40 = llvm.add %25, %12 : i64
    llvm.br ^bb5(%40 : i64) {loop_annotation = #llvm.loop_annotation<unroll = <disable = true>>}
  ^bb10:  // pred: ^bb5
    %41 = llvm.add %19, %12 : i64
    llvm.br ^bb3(%41 : i64) {loop_annotation = #llvm.loop_annotation<unroll = <disable = true>>}
  ^bb11:  // pred: ^bb3
    llvm.br ^bb12
  ^bb12:  // 3 preds: ^bb1, ^bb11, ^bb14
    llvm.br ^bb24
  ^bb13:  // pred: ^bb0
    %42 = llvm.icmp "sge" %arg2, %6 : i64
    %43 = llvm.icmp "sle" %arg2, %5 : i64
    %44 = llvm.and %42, %43 : i1
    %45 = llvm.mul %arg2, %10 overflow<nsw> : i64
    llvm.br ^bb14(%11 : i64)
  ^bb14(%46: i64):  // 2 preds: ^bb13, ^bb23
    %47 = llvm.icmp "slt" %46, %10 : i64
    llvm.cond_br %47, ^bb15, ^bb12
  ^bb15:  // pred: ^bb14
    %48 = llvm.add %45, %46 overflow<nsw> : i64
    %49 = llvm.icmp "sle" %48, %7 : i64
    %50 = llvm.and %49, %44 : i1
    llvm.cond_br %50, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    %51 = llvm.mul %arg2, %4 overflow<nsw> : i64
    %52 = llvm.mul %46, %3 overflow<nsw> : i64
    %53 = llvm.add %51, %52 overflow<nsw> : i64
    %54 = llvm.mul %arg2, %1 overflow<nsw> : i64
    %55 = llvm.mul %46, %0 overflow<nsw> : i64
    %56 = llvm.add %54, %55 overflow<nsw> : i64
    llvm.br ^bb17(%11 : i64)
  ^bb17(%57: i64):  // 2 preds: ^bb16, ^bb21
    %58 = llvm.icmp "slt" %57, %9 : i64
    llvm.cond_br %58, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    %59 = llvm.mul %57, %2 overflow<nsw> : i64
    %60 = llvm.add %53, %59 overflow<nsw> : i64
    %61 = llvm.mul %57, %8 overflow<nsw> : i64
    %62 = llvm.add %56, %61 overflow<nsw> : i64
    llvm.br ^bb19(%11 : i64)
  ^bb19(%63: i64):  // 2 preds: ^bb18, ^bb20
    %64 = llvm.icmp "slt" %63, %8 : i64
    llvm.cond_br %64, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %65 = llvm.add %60, %63 overflow<nsw> : i64
    %66 = llvm.add %65, %8 overflow<nsw> : i64
    %67 = llvm.getelementptr inbounds %arg0[0, %66] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.array<201326592 x bf16>
    %68 = llvm.load %67 invariant : !llvm.ptr -> bf16
    %69 = llvm.add %62, %63 overflow<nsw> : i64
    %70 = llvm.getelementptr inbounds %arg1[0, %69] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.array<50331648 x bf16>
    llvm.store %68, %70 : bf16, !llvm.ptr
    %71 = llvm.add %63, %12 : i64
    llvm.br ^bb19(%71 : i64)
  ^bb21:  // pred: ^bb19
    %72 = llvm.add %57, %12 : i64
    llvm.br ^bb17(%72 : i64) {loop_annotation = #llvm.loop_annotation<unroll = <disable = true>>}
  ^bb22:  // pred: ^bb17
    llvm.br ^bb23
  ^bb23:  // 2 preds: ^bb15, ^bb22
    %73 = llvm.add %46, %12 : i64
    llvm.br ^bb14(%73 : i64) {loop_annotation = #llvm.loop_annotation<unroll = <disable = true>>}
  ^bb24:  // pred: ^bb12
    llvm.return
  }
}