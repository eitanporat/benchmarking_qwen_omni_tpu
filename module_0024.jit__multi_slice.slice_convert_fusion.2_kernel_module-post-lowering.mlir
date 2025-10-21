module @slice_convert_fusion.2_kernel_module attributes {dlti.dl_spec = #dlti.dl_spec<index = 64 : i32>, xla.cpu_memory_region_name = "xla_cpu_emitter__loop_fusion_kernel_emitter__hlo_opcode__fusion"} {
  llvm.func @slice_convert_fusion.2(%arg0: !llvm.ptr) -> !llvm.ptr attributes {frame_pointer = #llvm.framePointerKind<all>, passthrough = [["prefer-vector-width", "256"]], uwtable_kind = #llvm.uwtableKind<async>} {
    %0 = llvm.mlir.zero : !llvm.ptr
    %1 = llvm.getelementptr inbounds %arg0[0, 3] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"XLA_CPU_KernelCallFrame", (ptr, ptr, i64, ptr)>
    %2 = llvm.load %1 invariant : !llvm.ptr -> !llvm.ptr
    %3 = llvm.getelementptr inbounds %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"XLA_CPU_KernelArg", (ptr, i64)>
    %4 = llvm.load %3 invariant dereferenceable<bytes = 7962624> : !llvm.ptr -> !llvm.ptr
    %5 = llvm.getelementptr inbounds %2[1, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"XLA_CPU_KernelArg", (ptr, i64)>
    %6 = llvm.load %5 invariant dereferenceable<bytes = 1990656> : !llvm.ptr -> !llvm.ptr
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
  llvm.func internal @slice_convert_fusion.2_wrapped(%arg0: !llvm.ptr {llvm.align = 64 : index, llvm.dereferenceable = 7962624 : index, llvm.noalias, xla.invariant}, %arg1: !llvm.ptr {llvm.align = 64 : index, llvm.dereferenceable = 1990656 : index, llvm.noalias}, %arg2: i64, %arg3: i64, %arg4: i64) attributes {always_inline, sym_visibility = "private", xla.backend_kind = #xla.backend_kind<cpu>, xla.cpu.is_wrapped, xla.entry} {
    %0 = llvm.mlir.constant(928512 : index) : i64
    %1 = llvm.mlir.constant(1923840 : index) : i64
    %2 = llvm.mlir.constant(995328 : index) : i64
    %3 = llvm.mlir.constant(71424 : index) : i64
    %4 = llvm.mlir.constant(13 : index) : i64
    %5 = llvm.mlir.constant(58 : index) : i64
    %6 = llvm.mlir.constant(1152 : index) : i64
    %7 = llvm.mlir.constant(62 : index) : i64
    %8 = llvm.mlir.constant(0 : index) : i64
    %9 = llvm.mlir.constant(1 : index) : i64
    %10 = llvm.mlir.constant(12 : index) : i64
    %11 = llvm.icmp "sle" %arg2, %10 : i64
    llvm.cond_br %11, ^bb1, ^bb10
  ^bb1:  // pred: ^bb0
    %12 = llvm.icmp "sge" %arg2, %8 : i64
    %13 = llvm.and %12, %11 : i1
    llvm.cond_br %13, ^bb2, ^bb9
  ^bb2:  // pred: ^bb1
    %14 = llvm.mul %arg2, %3 overflow<nsw> : i64
    llvm.br ^bb3(%8 : i64)
  ^bb3(%15: i64):  // 2 preds: ^bb2, ^bb7
    %16 = llvm.icmp "slt" %15, %7 : i64
    llvm.cond_br %16, ^bb4, ^bb8
  ^bb4:  // pred: ^bb3
    %17 = llvm.mul %15, %6 overflow<nsw> : i64
    %18 = llvm.add %14, %17 overflow<nsw> : i64
    llvm.br ^bb5(%8 : i64)
  ^bb5(%19: i64):  // 2 preds: ^bb4, ^bb6
    %20 = llvm.icmp "slt" %19, %6 : i64
    llvm.cond_br %20, ^bb6, ^bb7
  ^bb6:  // pred: ^bb5
    %21 = llvm.add %18, %19 overflow<nsw> : i64
    %22 = llvm.add %21, %2 overflow<nsw> : i64
    %23 = llvm.getelementptr inbounds %arg0[0, %22] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.array<3981312 x bf16>
    %24 = llvm.load %23 invariant : !llvm.ptr -> bf16
    %25 = llvm.getelementptr inbounds %arg1[0, %21] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.array<995328 x bf16>
    llvm.store %24, %25 : bf16, !llvm.ptr
    %26 = llvm.add %19, %9 : i64
    llvm.br ^bb5(%26 : i64)
  ^bb7:  // pred: ^bb5
    %27 = llvm.add %15, %9 : i64
    llvm.br ^bb3(%27 : i64) {loop_annotation = #llvm.loop_annotation<unroll = <disable = true>>}
  ^bb8:  // 2 preds: ^bb3, ^bb12
    llvm.br ^bb9
  ^bb9:  // 3 preds: ^bb1, ^bb8, ^bb10
    llvm.br ^bb17
  ^bb10:  // pred: ^bb0
    %28 = llvm.icmp "eq" %arg2, %4 : i64
    llvm.cond_br %28, ^bb11, ^bb9
  ^bb11:  // pred: ^bb10
    llvm.br ^bb12(%8 : i64)
  ^bb12(%29: i64):  // 2 preds: ^bb11, ^bb16
    %30 = llvm.icmp "slt" %29, %5 : i64
    llvm.cond_br %30, ^bb13, ^bb8
  ^bb13:  // pred: ^bb12
    %31 = llvm.mul %29, %6 overflow<nsw> : i64
    llvm.br ^bb14(%8 : i64)
  ^bb14(%32: i64):  // 2 preds: ^bb13, ^bb15
    %33 = llvm.icmp "slt" %32, %6 : i64
    llvm.cond_br %33, ^bb15, ^bb16
  ^bb15:  // pred: ^bb14
    %34 = llvm.add %31, %32 overflow<nsw> : i64
    %35 = llvm.add %34, %1 overflow<nsw> : i64
    %36 = llvm.getelementptr inbounds %arg0[0, %35] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.array<3981312 x bf16>
    %37 = llvm.load %36 invariant : !llvm.ptr -> bf16
    %38 = llvm.add %34, %0 overflow<nsw> : i64
    %39 = llvm.getelementptr inbounds %arg1[0, %38] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.array<995328 x bf16>
    llvm.store %37, %39 : bf16, !llvm.ptr
    %40 = llvm.add %32, %9 : i64
    llvm.br ^bb14(%40 : i64)
  ^bb16:  // pred: ^bb14
    %41 = llvm.add %29, %9 : i64
    llvm.br ^bb12(%41 : i64) {loop_annotation = #llvm.loop_annotation<unroll = <disable = true>>}
  ^bb17:  // pred: ^bb9
    llvm.return
  }
}