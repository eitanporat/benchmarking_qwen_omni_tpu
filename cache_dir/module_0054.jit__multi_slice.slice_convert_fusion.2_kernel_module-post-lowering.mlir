module @slice_convert_fusion.2_kernel_module attributes {dlti.dl_spec = #dlti.dl_spec<index = 64 : i32>, xla.cpu_memory_region_name = "xla_cpu_emitter__loop_fusion_kernel_emitter__hlo_opcode__fusion"} {
  llvm.func @slice_convert_fusion.2(%arg0: !llvm.ptr) -> !llvm.ptr attributes {frame_pointer = #llvm.framePointerKind<all>, passthrough = [["prefer-vector-width", "256"]], uwtable_kind = #llvm.uwtableKind<async>} {
    %0 = llvm.mlir.zero : !llvm.ptr
    %1 = llvm.getelementptr inbounds %arg0[0, 3] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"XLA_CPU_KernelCallFrame", (ptr, ptr, i64, ptr)>
    %2 = llvm.load %1 invariant : !llvm.ptr -> !llvm.ptr
    %3 = llvm.getelementptr inbounds %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"XLA_CPU_KernelArg", (ptr, i64)>
    %4 = llvm.load %3 invariant dereferenceable<bytes = 2654208> : !llvm.ptr -> !llvm.ptr
    %5 = llvm.getelementptr inbounds %2[1, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"XLA_CPU_KernelArg", (ptr, i64)>
    %6 = llvm.load %5 invariant dereferenceable<bytes = 663552> : !llvm.ptr -> !llvm.ptr
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
  llvm.func internal @slice_convert_fusion.2_wrapped(%arg0: !llvm.ptr {llvm.align = 64 : index, llvm.dereferenceable = 2654208 : index, llvm.noalias, xla.invariant}, %arg1: !llvm.ptr {llvm.align = 64 : index, llvm.dereferenceable = 663552 : index, llvm.noalias}, %arg2: i64, %arg3: i64, %arg4: i64) attributes {always_inline, sym_visibility = "private", xla.backend_kind = #xla.backend_kind<cpu>, xla.cpu.is_wrapped, xla.entry} {
    %0 = llvm.mlir.constant(27648 : index) : i64
    %1 = llvm.mlir.constant(1152 : index) : i64
    %2 = llvm.mlir.constant(110592 : index) : i64
    %3 = llvm.mlir.constant(11 : index) : i64
    %4 = llvm.mlir.constant(288 : index) : i64
    %5 = llvm.mlir.constant(96 : index) : i64
    %6 = llvm.mlir.constant(0 : index) : i64
    %7 = llvm.mlir.constant(1 : index) : i64
    %8 = llvm.icmp "sge" %arg2, %6 : i64
    %9 = llvm.icmp "sle" %arg2, %3 : i64
    %10 = llvm.and %8, %9 : i1
    llvm.cond_br %10, ^bb1, ^bb8
  ^bb1:  // pred: ^bb0
    %11 = llvm.mul %arg2, %2 overflow<nsw> : i64
    %12 = llvm.mul %arg2, %0 overflow<nsw> : i64
    llvm.br ^bb2(%6 : i64)
  ^bb2(%13: i64):  // 2 preds: ^bb1, ^bb6
    %14 = llvm.icmp "slt" %13, %5 : i64
    llvm.cond_br %14, ^bb3, ^bb7
  ^bb3:  // pred: ^bb2
    %15 = llvm.mul %13, %1 overflow<nsw> : i64
    %16 = llvm.add %11, %15 overflow<nsw> : i64
    %17 = llvm.mul %13, %4 overflow<nsw> : i64
    %18 = llvm.add %12, %17 overflow<nsw> : i64
    llvm.br ^bb4(%6 : i64)
  ^bb4(%19: i64):  // 2 preds: ^bb3, ^bb5
    %20 = llvm.icmp "slt" %19, %4 : i64
    llvm.cond_br %20, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    %21 = llvm.add %16, %19 overflow<nsw> : i64
    %22 = llvm.add %21, %4 overflow<nsw> : i64
    %23 = llvm.getelementptr inbounds %arg0[0, %22] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.array<1327104 x bf16>
    %24 = llvm.load %23 invariant : !llvm.ptr -> bf16
    %25 = llvm.add %18, %19 overflow<nsw> : i64
    %26 = llvm.getelementptr inbounds %arg1[0, %25] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.array<331776 x bf16>
    llvm.store %24, %26 : bf16, !llvm.ptr
    %27 = llvm.add %19, %7 : i64
    llvm.br ^bb4(%27 : i64)
  ^bb6:  // pred: ^bb4
    %28 = llvm.add %13, %7 : i64
    llvm.br ^bb2(%28 : i64) {loop_annotation = #llvm.loop_annotation<unroll = <disable = true>>}
  ^bb7:  // pred: ^bb2
    llvm.br ^bb8
  ^bb8:  // 2 preds: ^bb0, ^bb7
    llvm.return
  }
}