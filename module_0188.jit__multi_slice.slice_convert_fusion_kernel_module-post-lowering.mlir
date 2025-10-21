module @slice_convert_fusion_kernel_module attributes {dlti.dl_spec = #dlti.dl_spec<index = 64 : i32>, xla.cpu_memory_region_name = "xla_cpu_emitter__loop_fusion_kernel_emitter__hlo_opcode__fusion"} {
  llvm.func @slice_convert_fusion(%arg0: !llvm.ptr) -> !llvm.ptr attributes {frame_pointer = #llvm.framePointerKind<all>, passthrough = [["prefer-vector-width", "256"]], uwtable_kind = #llvm.uwtableKind<async>} {
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
    llvm.call @slice_convert_fusion_wrapped(%4, %6, %10, %12, %14) : (!llvm.ptr, !llvm.ptr, i64, i64, i64) -> ()
    llvm.return %0 : !llvm.ptr
  }
  llvm.func internal @slice_convert_fusion_wrapped(%arg0: !llvm.ptr {llvm.align = 64 : index, llvm.dereferenceable = 402653184 : index, llvm.noalias, xla.invariant}, %arg1: !llvm.ptr {llvm.align = 64 : index, llvm.dereferenceable = 100663296 : index, llvm.noalias}, %arg2: i64, %arg3: i64, %arg4: i64) attributes {always_inline, sym_visibility = "private", xla.backend_kind = #xla.backend_kind<cpu>, xla.cpu.is_wrapped, xla.entry} {
    %0 = llvm.mlir.constant(393216 : index) : i64
    %1 = llvm.mlir.constant(3932160 : index) : i64
    %2 = llvm.mlir.constant(576 : index) : i64
    %3 = llvm.mlir.constant(768 : index) : i64
    %4 = llvm.mlir.constant(1572864 : index) : i64
    %5 = llvm.mlir.constant(15728640 : index) : i64
    %6 = llvm.mlir.constant(13 : index) : i64
    %7 = llvm.mlir.constant(12 : index) : i64
    %8 = llvm.mlir.constant(127 : index) : i64
    %9 = llvm.mlir.constant(192 : index) : i64
    %10 = llvm.mlir.constant(2048 : index) : i64
    %11 = llvm.mlir.constant(10 : index) : i64
    %12 = llvm.mlir.constant(0 : index) : i64
    %13 = llvm.mlir.constant(1 : index) : i64
    %14 = llvm.mlir.constant(11 : index) : i64
    %15 = llvm.icmp "sle" %arg2, %14 : i64
    llvm.cond_br %15, ^bb1, ^bb13
  ^bb1:  // pred: ^bb0
    %16 = llvm.icmp "sge" %arg2, %12 : i64
    %17 = llvm.and %16, %15 : i1
    llvm.cond_br %17, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %18 = llvm.mul %arg2, %5 overflow<nsw> : i64
    %19 = llvm.mul %arg2, %1 overflow<nsw> : i64
    llvm.br ^bb3(%12 : i64)
  ^bb3(%20: i64):  // 2 preds: ^bb2, ^bb10
    %21 = llvm.icmp "slt" %20, %11 : i64
    llvm.cond_br %21, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %22 = llvm.mul %20, %4 overflow<nsw> : i64
    %23 = llvm.add %18, %22 overflow<nsw> : i64
    %24 = llvm.mul %20, %0 overflow<nsw> : i64
    %25 = llvm.add %19, %24 overflow<nsw> : i64
    llvm.br ^bb5(%12 : i64)
  ^bb5(%26: i64):  // 2 preds: ^bb4, ^bb9
    %27 = llvm.icmp "slt" %26, %10 : i64
    llvm.cond_br %27, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %28 = llvm.mul %26, %3 overflow<nsw> : i64
    %29 = llvm.add %23, %28 overflow<nsw> : i64
    %30 = llvm.mul %26, %9 overflow<nsw> : i64
    %31 = llvm.add %25, %30 overflow<nsw> : i64
    llvm.br ^bb7(%12 : i64)
  ^bb7(%32: i64):  // 2 preds: ^bb6, ^bb8
    %33 = llvm.icmp "slt" %32, %9 : i64
    llvm.cond_br %33, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %34 = llvm.add %29, %32 overflow<nsw> : i64
    %35 = llvm.add %34, %2 overflow<nsw> : i64
    %36 = llvm.getelementptr inbounds %arg0[0, %35] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.array<201326592 x bf16>
    %37 = llvm.load %36 invariant : !llvm.ptr -> bf16
    %38 = llvm.add %31, %32 overflow<nsw> : i64
    %39 = llvm.getelementptr inbounds %arg1[0, %38] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.array<50331648 x bf16>
    llvm.store %37, %39 : bf16, !llvm.ptr
    %40 = llvm.add %32, %13 : i64
    llvm.br ^bb7(%40 : i64)
  ^bb9:  // pred: ^bb7
    %41 = llvm.add %26, %13 : i64
    llvm.br ^bb5(%41 : i64) {loop_annotation = #llvm.loop_annotation<unroll = <disable = true>>}
  ^bb10:  // pred: ^bb5
    %42 = llvm.add %20, %13 : i64
    llvm.br ^bb3(%42 : i64) {loop_annotation = #llvm.loop_annotation<unroll = <disable = true>>}
  ^bb11:  // pred: ^bb3
    llvm.br ^bb12
  ^bb12:  // 3 preds: ^bb1, ^bb11, ^bb14
    llvm.br ^bb24
  ^bb13:  // pred: ^bb0
    %43 = llvm.icmp "sge" %arg2, %7 : i64
    %44 = llvm.icmp "sle" %arg2, %6 : i64
    %45 = llvm.and %43, %44 : i1
    %46 = llvm.mul %arg2, %11 overflow<nsw> : i64
    llvm.br ^bb14(%12 : i64)
  ^bb14(%47: i64):  // 2 preds: ^bb13, ^bb23
    %48 = llvm.icmp "slt" %47, %11 : i64
    llvm.cond_br %48, ^bb15, ^bb12
  ^bb15:  // pred: ^bb14
    %49 = llvm.add %46, %47 overflow<nsw> : i64
    %50 = llvm.icmp "sle" %49, %8 : i64
    %51 = llvm.and %50, %45 : i1
    llvm.cond_br %51, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    %52 = llvm.mul %arg2, %5 overflow<nsw> : i64
    %53 = llvm.mul %47, %4 overflow<nsw> : i64
    %54 = llvm.add %52, %53 overflow<nsw> : i64
    %55 = llvm.mul %arg2, %1 overflow<nsw> : i64
    %56 = llvm.mul %47, %0 overflow<nsw> : i64
    %57 = llvm.add %55, %56 overflow<nsw> : i64
    llvm.br ^bb17(%12 : i64)
  ^bb17(%58: i64):  // 2 preds: ^bb16, ^bb21
    %59 = llvm.icmp "slt" %58, %10 : i64
    llvm.cond_br %59, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    %60 = llvm.mul %58, %3 overflow<nsw> : i64
    %61 = llvm.add %54, %60 overflow<nsw> : i64
    %62 = llvm.mul %58, %9 overflow<nsw> : i64
    %63 = llvm.add %57, %62 overflow<nsw> : i64
    llvm.br ^bb19(%12 : i64)
  ^bb19(%64: i64):  // 2 preds: ^bb18, ^bb20
    %65 = llvm.icmp "slt" %64, %9 : i64
    llvm.cond_br %65, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %66 = llvm.add %61, %64 overflow<nsw> : i64
    %67 = llvm.add %66, %2 overflow<nsw> : i64
    %68 = llvm.getelementptr inbounds %arg0[0, %67] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.array<201326592 x bf16>
    %69 = llvm.load %68 invariant : !llvm.ptr -> bf16
    %70 = llvm.add %63, %64 overflow<nsw> : i64
    %71 = llvm.getelementptr inbounds %arg1[0, %70] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.array<50331648 x bf16>
    llvm.store %69, %71 : bf16, !llvm.ptr
    %72 = llvm.add %64, %13 : i64
    llvm.br ^bb19(%72 : i64)
  ^bb21:  // pred: ^bb19
    %73 = llvm.add %58, %13 : i64
    llvm.br ^bb17(%73 : i64) {loop_annotation = #llvm.loop_annotation<unroll = <disable = true>>}
  ^bb22:  // pred: ^bb17
    llvm.br ^bb23
  ^bb23:  // 2 preds: ^bb15, ^bb22
    %74 = llvm.add %47, %13 : i64
    llvm.br ^bb14(%74 : i64) {loop_annotation = #llvm.loop_annotation<unroll = <disable = true>>}
  ^bb24:  // pred: ^bb12
    llvm.return
  }
}