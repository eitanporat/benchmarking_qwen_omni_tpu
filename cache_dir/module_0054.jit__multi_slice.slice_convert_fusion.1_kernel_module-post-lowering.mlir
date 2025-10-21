module @slice_convert_fusion.1_kernel_module attributes {dlti.dl_spec = #dlti.dl_spec<index = 64 : i32>, xla.cpu_memory_region_name = "xla_cpu_emitter__loop_fusion_kernel_emitter__hlo_opcode__fusion"} {
  llvm.func @slice_convert_fusion.1(%arg0: !llvm.ptr) -> !llvm.ptr attributes {frame_pointer = #llvm.framePointerKind<all>, passthrough = [["prefer-vector-width", "256"]], uwtable_kind = #llvm.uwtableKind<async>} {
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
    llvm.call @slice_convert_fusion.1_wrapped(%4, %6, %10, %12, %14) : (!llvm.ptr, !llvm.ptr, i64, i64, i64) -> ()
    llvm.return %0 : !llvm.ptr
  }
  llvm.func internal @slice_convert_fusion.1_wrapped(%arg0: !llvm.ptr {llvm.align = 64 : index, llvm.dereferenceable = 2654208 : index, llvm.noalias, xla.invariant}, %arg1: !llvm.ptr {llvm.align = 64 : index, llvm.dereferenceable = 663552 : index, llvm.noalias}, %arg2: i64, %arg3: i64, %arg4: i64) attributes {always_inline, sym_visibility = "private", xla.backend_kind = #xla.backend_kind<cpu>, xla.cpu.is_wrapped, xla.entry} {
    %0 = llvm.mlir.constant(27648 : index) : i64
    %1 = llvm.mlir.constant(576 : index) : i64
    %2 = llvm.mlir.constant(1152 : index) : i64
    %3 = llvm.mlir.constant(110592 : index) : i64
    %4 = llvm.mlir.constant(11 : index) : i64
    %5 = llvm.mlir.constant(288 : index) : i64
    %6 = llvm.mlir.constant(96 : index) : i64
    %7 = llvm.mlir.constant(0 : index) : i64
    %8 = llvm.mlir.constant(1 : index) : i64
    %9 = llvm.icmp "sge" %arg2, %7 : i64
    %10 = llvm.icmp "sle" %arg2, %4 : i64
    %11 = llvm.and %9, %10 : i1
    llvm.cond_br %11, ^bb1, ^bb8
  ^bb1:  // pred: ^bb0
    %12 = llvm.mul %arg2, %3 overflow<nsw> : i64
    %13 = llvm.mul %arg2, %0 overflow<nsw> : i64
    llvm.br ^bb2(%7 : i64)
  ^bb2(%14: i64):  // 2 preds: ^bb1, ^bb6
    %15 = llvm.icmp "slt" %14, %6 : i64
    llvm.cond_br %15, ^bb3, ^bb7
  ^bb3:  // pred: ^bb2
    %16 = llvm.mul %14, %2 overflow<nsw> : i64
    %17 = llvm.add %12, %16 overflow<nsw> : i64
    %18 = llvm.mul %14, %5 overflow<nsw> : i64
    %19 = llvm.add %13, %18 overflow<nsw> : i64
    llvm.br ^bb4(%7 : i64)
  ^bb4(%20: i64):  // 2 preds: ^bb3, ^bb5
    %21 = llvm.icmp "slt" %20, %5 : i64
    llvm.cond_br %21, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    %22 = llvm.add %17, %20 overflow<nsw> : i64
    %23 = llvm.add %22, %1 overflow<nsw> : i64
    %24 = llvm.getelementptr inbounds %arg0[0, %23] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.array<1327104 x bf16>
    %25 = llvm.load %24 invariant : !llvm.ptr -> bf16
    %26 = llvm.add %19, %20 overflow<nsw> : i64
    %27 = llvm.getelementptr inbounds %arg1[0, %26] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.array<331776 x bf16>
    llvm.store %25, %27 : bf16, !llvm.ptr
    %28 = llvm.add %20, %8 : i64
    llvm.br ^bb4(%28 : i64)
  ^bb6:  // pred: ^bb4
    %29 = llvm.add %14, %8 : i64
    llvm.br ^bb2(%29 : i64) {loop_annotation = #llvm.loop_annotation<unroll = <disable = true>>}
  ^bb7:  // pred: ^bb2
    llvm.br ^bb8
  ^bb8:  // 2 preds: ^bb0, ^bb7
    llvm.return
  }
}