module @slice_convert_fusion.2_kernel_module attributes {dlti.dl_spec = #dlti.dl_spec<index = 64 : i32>, xla.cpu_memory_region_name = "xla_cpu_emitter__loop_fusion_kernel_emitter__hlo_opcode__fusion"} {
  llvm.func @slice_convert_fusion.2(%arg0: !llvm.ptr) -> !llvm.ptr attributes {frame_pointer = #llvm.framePointerKind<all>, passthrough = [["prefer-vector-width", "256"]], uwtable_kind = #llvm.uwtableKind<async>} {
    %0 = llvm.mlir.zero : !llvm.ptr
    %1 = llvm.getelementptr inbounds %arg0[0, 3] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"XLA_CPU_KernelCallFrame", (ptr, ptr, i64, ptr)>
    %2 = llvm.load %1 invariant : !llvm.ptr -> !llvm.ptr
    %3 = llvm.getelementptr inbounds %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"XLA_CPU_KernelArg", (ptr, i64)>
    %4 = llvm.load %3 invariant dereferenceable<bytes = 9916416> : !llvm.ptr -> !llvm.ptr
    %5 = llvm.getelementptr inbounds %2[1, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"XLA_CPU_KernelArg", (ptr, i64)>
    %6 = llvm.load %5 invariant dereferenceable<bytes = 2479104> : !llvm.ptr -> !llvm.ptr
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
  llvm.func internal @slice_convert_fusion.2_wrapped(%arg0: !llvm.ptr {llvm.align = 64 : index, llvm.dereferenceable = 9916416 : index, llvm.noalias, xla.invariant}, %arg1: !llvm.ptr {llvm.align = 64 : index, llvm.dereferenceable = 2479104 : index, llvm.noalias}, %arg2: i64, %arg3: i64, %arg4: i64) attributes {always_inline, sym_visibility = "private", xla.backend_kind = #xla.backend_kind<cpu>, xla.cpu.is_wrapped, xla.entry} {
    %0 = llvm.mlir.constant(1161004 : index) : i64
    %1 = llvm.mlir.constant(4645092 : index) : i64
    %2 = llvm.mlir.constant(89308 : index) : i64
    %3 = llvm.mlir.constant(4304 : index) : i64
    %4 = llvm.mlir.constant(357232 : index) : i64
    %5 = llvm.mlir.constant(13 : index) : i64
    %6 = llvm.mlir.constant(73 : index) : i64
    %7 = llvm.mlir.constant(1076 : index) : i64
    %8 = llvm.mlir.constant(83 : index) : i64
    %9 = llvm.mlir.constant(0 : index) : i64
    %10 = llvm.mlir.constant(1 : index) : i64
    %11 = llvm.mlir.constant(12 : index) : i64
    %12 = llvm.icmp "sle" %arg2, %11 : i64
    llvm.cond_br %12, ^bb1, ^bb10
  ^bb1:  // pred: ^bb0
    %13 = llvm.icmp "sge" %arg2, %9 : i64
    %14 = llvm.and %13, %12 : i1
    llvm.cond_br %14, ^bb2, ^bb9
  ^bb2:  // pred: ^bb1
    %15 = llvm.mul %arg2, %4 overflow<nsw> : i64
    %16 = llvm.mul %arg2, %2 overflow<nsw> : i64
    llvm.br ^bb3(%9 : i64)
  ^bb3(%17: i64):  // 2 preds: ^bb2, ^bb7
    %18 = llvm.icmp "slt" %17, %8 : i64
    llvm.cond_br %18, ^bb4, ^bb8
  ^bb4:  // pred: ^bb3
    %19 = llvm.mul %17, %3 overflow<nsw> : i64
    %20 = llvm.add %15, %19 overflow<nsw> : i64
    %21 = llvm.mul %17, %7 overflow<nsw> : i64
    %22 = llvm.add %16, %21 overflow<nsw> : i64
    llvm.br ^bb5(%9 : i64)
  ^bb5(%23: i64):  // 2 preds: ^bb4, ^bb6
    %24 = llvm.icmp "slt" %23, %7 : i64
    llvm.cond_br %24, ^bb6, ^bb7
  ^bb6:  // pred: ^bb5
    %25 = llvm.add %20, %23 overflow<nsw> : i64
    %26 = llvm.add %25, %7 overflow<nsw> : i64
    %27 = llvm.getelementptr inbounds %arg0[0, %26] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.array<4958208 x bf16>
    %28 = llvm.load %27 invariant : !llvm.ptr -> bf16
    %29 = llvm.add %22, %23 overflow<nsw> : i64
    %30 = llvm.getelementptr inbounds %arg1[0, %29] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.array<1239552 x bf16>
    llvm.store %28, %30 : bf16, !llvm.ptr
    %31 = llvm.add %23, %10 : i64
    llvm.br ^bb5(%31 : i64)
  ^bb7:  // pred: ^bb5
    %32 = llvm.add %17, %10 : i64
    llvm.br ^bb3(%32 : i64) {loop_annotation = #llvm.loop_annotation<unroll = <disable = true>>}
  ^bb8:  // 2 preds: ^bb3, ^bb12
    llvm.br ^bb9
  ^bb9:  // 3 preds: ^bb1, ^bb8, ^bb10
    llvm.br ^bb17
  ^bb10:  // pred: ^bb0
    %33 = llvm.icmp "eq" %arg2, %5 : i64
    llvm.cond_br %33, ^bb11, ^bb9
  ^bb11:  // pred: ^bb10
    llvm.br ^bb12(%9 : i64)
  ^bb12(%34: i64):  // 2 preds: ^bb11, ^bb16
    %35 = llvm.icmp "slt" %34, %6 : i64
    llvm.cond_br %35, ^bb13, ^bb8
  ^bb13:  // pred: ^bb12
    %36 = llvm.mul %34, %3 overflow<nsw> : i64
    %37 = llvm.mul %34, %7 overflow<nsw> : i64
    llvm.br ^bb14(%9 : i64)
  ^bb14(%38: i64):  // 2 preds: ^bb13, ^bb15
    %39 = llvm.icmp "slt" %38, %7 : i64
    llvm.cond_br %39, ^bb15, ^bb16
  ^bb15:  // pred: ^bb14
    %40 = llvm.add %36, %38 overflow<nsw> : i64
    %41 = llvm.add %40, %1 overflow<nsw> : i64
    %42 = llvm.getelementptr inbounds %arg0[0, %41] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.array<4958208 x bf16>
    %43 = llvm.load %42 invariant : !llvm.ptr -> bf16
    %44 = llvm.add %37, %38 overflow<nsw> : i64
    %45 = llvm.add %44, %0 overflow<nsw> : i64
    %46 = llvm.getelementptr inbounds %arg1[0, %45] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.array<1239552 x bf16>
    llvm.store %43, %46 : bf16, !llvm.ptr
    %47 = llvm.add %38, %10 : i64
    llvm.br ^bb14(%47 : i64)
  ^bb16:  // pred: ^bb14
    %48 = llvm.add %34, %10 : i64
    llvm.br ^bb12(%48 : i64) {loop_annotation = #llvm.loop_annotation<unroll = <disable = true>>}
  ^bb17:  // pred: ^bb9
    llvm.return
  }
}