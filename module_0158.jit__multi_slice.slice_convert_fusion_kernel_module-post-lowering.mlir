module @slice_convert_fusion_kernel_module attributes {dlti.dl_spec = #dlti.dl_spec<index = 64 : i32>, xla.cpu_memory_region_name = "xla_cpu_emitter__loop_fusion_kernel_emitter__hlo_opcode__fusion"} {
  llvm.func @slice_convert_fusion(%arg0: !llvm.ptr) -> !llvm.ptr attributes {frame_pointer = #llvm.framePointerKind<all>, passthrough = [["prefer-vector-width", "256"]], uwtable_kind = #llvm.uwtableKind<async>} {
    %0 = llvm.mlir.zero : !llvm.ptr
    %1 = llvm.getelementptr inbounds %arg0[0, 3] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"XLA_CPU_KernelCallFrame", (ptr, ptr, i64, ptr)>
    %2 = llvm.load %1 invariant : !llvm.ptr -> !llvm.ptr
    %3 = llvm.getelementptr inbounds %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"XLA_CPU_KernelArg", (ptr, i64)>
    %4 = llvm.load %3 invariant dereferenceable<bytes = 16777216> : !llvm.ptr -> !llvm.ptr
    %5 = llvm.getelementptr inbounds %2[1, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"XLA_CPU_KernelArg", (ptr, i64)>
    %6 = llvm.load %5 invariant dereferenceable<bytes = 4194304> : !llvm.ptr -> !llvm.ptr
    %7 = llvm.getelementptr inbounds %arg0[0, 1] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"XLA_CPU_KernelCallFrame", (ptr, ptr, i64, ptr)>
    %8 = llvm.load %7 : !llvm.ptr -> !llvm.ptr
    %9 = llvm.getelementptr inbounds %8[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"kernel_dim3", (i64, i64, i64)>
    %10 = llvm.load %9 invariant : !llvm.ptr -> i64
    %11 = llvm.getelementptr inbounds %8[0, 1] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"kernel_dim3", (i64, i64, i64)>
    %12 = llvm.load %11 invariant : !llvm.ptr -> i64
    %13 = llvm.getelementptr inbounds %8[0, 2] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"kernel_dim3", (i64, i64, i64)>
    %14 = llvm.load %13 invariant : !llvm.ptr -> i64
    llvm.call @slice_convert_fusion_wrapped(%4, %6, %10, %12, %14) : (!llvm.ptr, !llvm.ptr, i64, i64, i64) -> ()
    llvm.return %0 : !llvm.ptr
  }
  llvm.func internal @slice_convert_fusion_wrapped(%arg0: !llvm.ptr {llvm.align = 64 : index, llvm.dereferenceable = 16777216 : index, llvm.noalias, xla.invariant}, %arg1: !llvm.ptr {llvm.align = 64 : index, llvm.dereferenceable = 4194304 : index, llvm.noalias}, %arg2: i64, %arg3: i64, %arg4: i64) attributes {always_inline, sym_visibility = "private", xla.backend_kind = #xla.backend_kind<cpu>, xla.cpu.is_wrapped, xla.entry} {
    %0 = llvm.mlir.constant(1956864 : index) : i64
    %1 = llvm.mlir.constant(7830528 : index) : i64
    %2 = llvm.mlir.constant(150528 : index) : i64
    %3 = llvm.mlir.constant(3072 : index) : i64
    %4 = llvm.mlir.constant(4096 : index) : i64
    %5 = llvm.mlir.constant(602112 : index) : i64
    %6 = llvm.mlir.constant(13 : index) : i64
    %7 = llvm.mlir.constant(137 : index) : i64
    %8 = llvm.mlir.constant(1024 : index) : i64
    %9 = llvm.mlir.constant(147 : index) : i64
    %10 = llvm.mlir.constant(0 : index) : i64
    %11 = llvm.mlir.constant(1 : index) : i64
    %12 = llvm.mlir.constant(12 : index) : i64
    %13 = llvm.icmp "sle" %arg2, %12 : i64
    llvm.cond_br %13, ^bb1, ^bb10
  ^bb1:  // pred: ^bb0
    %14 = llvm.icmp "sge" %arg2, %10 : i64
    %15 = llvm.and %14, %13 : i1
    llvm.cond_br %15, ^bb2, ^bb9
  ^bb2:  // pred: ^bb1
    %16 = llvm.mul %arg2, %5 overflow<nsw> : i64
    %17 = llvm.mul %arg2, %2 overflow<nsw> : i64
    llvm.br ^bb3(%10 : i64)
  ^bb3(%18: i64):  // 2 preds: ^bb2, ^bb7
    %19 = llvm.icmp "slt" %18, %9 : i64
    llvm.cond_br %19, ^bb4, ^bb8
  ^bb4:  // pred: ^bb3
    %20 = llvm.mul %18, %4 overflow<nsw> : i64
    %21 = llvm.add %16, %20 overflow<nsw> : i64
    %22 = llvm.mul %18, %8 overflow<nsw> : i64
    %23 = llvm.add %17, %22 overflow<nsw> : i64
    llvm.br ^bb5(%10 : i64)
  ^bb5(%24: i64):  // 2 preds: ^bb4, ^bb6
    %25 = llvm.icmp "slt" %24, %8 : i64
    llvm.cond_br %25, ^bb6, ^bb7
  ^bb6:  // pred: ^bb5
    %26 = llvm.add %21, %24 overflow<nsw> : i64
    %27 = llvm.add %26, %3 overflow<nsw> : i64
    %28 = llvm.getelementptr inbounds %arg0[0, %27] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.array<8388608 x bf16>
    %29 = llvm.load %28 invariant : !llvm.ptr -> bf16
    %30 = llvm.add %23, %24 overflow<nsw> : i64
    %31 = llvm.getelementptr inbounds %arg1[0, %30] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.array<2097152 x bf16>
    llvm.store %29, %31 : bf16, !llvm.ptr
    %32 = llvm.add %24, %11 : i64
    llvm.br ^bb5(%32 : i64)
  ^bb7:  // pred: ^bb5
    %33 = llvm.add %18, %11 : i64
    llvm.br ^bb3(%33 : i64) {loop_annotation = #llvm.loop_annotation<unroll = <disable = true>>}
  ^bb8:  // 2 preds: ^bb3, ^bb12
    llvm.br ^bb9
  ^bb9:  // 3 preds: ^bb1, ^bb8, ^bb10
    llvm.br ^bb17
  ^bb10:  // pred: ^bb0
    %34 = llvm.icmp "eq" %arg2, %6 : i64
    llvm.cond_br %34, ^bb11, ^bb9
  ^bb11:  // pred: ^bb10
    llvm.br ^bb12(%10 : i64)
  ^bb12(%35: i64):  // 2 preds: ^bb11, ^bb16
    %36 = llvm.icmp "slt" %35, %7 : i64
    llvm.cond_br %36, ^bb13, ^bb8
  ^bb13:  // pred: ^bb12
    %37 = llvm.mul %35, %4 overflow<nsw> : i64
    %38 = llvm.mul %35, %8 overflow<nsw> : i64
    llvm.br ^bb14(%10 : i64)
  ^bb14(%39: i64):  // 2 preds: ^bb13, ^bb15
    %40 = llvm.icmp "slt" %39, %8 : i64
    llvm.cond_br %40, ^bb15, ^bb16
  ^bb15:  // pred: ^bb14
    %41 = llvm.add %37, %39 overflow<nsw> : i64
    %42 = llvm.add %41, %1 overflow<nsw> : i64
    %43 = llvm.getelementptr inbounds %arg0[0, %42] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.array<8388608 x bf16>
    %44 = llvm.load %43 invariant : !llvm.ptr -> bf16
    %45 = llvm.add %38, %39 overflow<nsw> : i64
    %46 = llvm.add %45, %0 overflow<nsw> : i64
    %47 = llvm.getelementptr inbounds %arg1[0, %46] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.array<2097152 x bf16>
    llvm.store %44, %47 : bf16, !llvm.ptr
    %48 = llvm.add %39, %11 : i64
    llvm.br ^bb14(%48 : i64)
  ^bb16:  // pred: ^bb14
    %49 = llvm.add %35, %11 : i64
    llvm.br ^bb12(%49 : i64) {loop_annotation = #llvm.loop_annotation<unroll = <disable = true>>}
  ^bb17:  // pred: ^bb9
    llvm.return
  }
}