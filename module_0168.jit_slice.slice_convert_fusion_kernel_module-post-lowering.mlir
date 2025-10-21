module @slice_convert_fusion_kernel_module attributes {dlti.dl_spec = #dlti.dl_spec<index = 64 : i32>, xla.cpu_memory_region_name = "xla_cpu_emitter__loop_fusion_kernel_emitter__hlo_opcode__fusion"} {
  llvm.func @slice_convert_fusion(%arg0: !llvm.ptr) -> !llvm.ptr attributes {frame_pointer = #llvm.framePointerKind<all>, passthrough = [["prefer-vector-width", "256"]], uwtable_kind = #llvm.uwtableKind<async>} {
    %0 = llvm.mlir.zero : !llvm.ptr
    %1 = llvm.getelementptr inbounds %arg0[0, 3] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"XLA_CPU_KernelCallFrame", (ptr, ptr, i64, ptr)>
    %2 = llvm.load %1 invariant : !llvm.ptr -> !llvm.ptr
    %3 = llvm.getelementptr inbounds %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"XLA_CPU_KernelArg", (ptr, i64)>
    %4 = llvm.load %3 invariant dereferenceable<bytes = 805306368> : !llvm.ptr -> !llvm.ptr
    %5 = llvm.getelementptr inbounds %2[1, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"XLA_CPU_KernelArg", (ptr, i64)>
    %6 = llvm.load %5 invariant dereferenceable<bytes = 402653184> : !llvm.ptr -> !llvm.ptr
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
  llvm.func internal @slice_convert_fusion_wrapped(%arg0: !llvm.ptr {llvm.align = 64 : index, llvm.dereferenceable = 805306368 : index, llvm.noalias, xla.invariant}, %arg1: !llvm.ptr {llvm.align = 64 : index, llvm.dereferenceable = 402653184 : index, llvm.noalias}, %arg2: i64, %arg3: i64, %arg4: i64) attributes {always_inline, sym_visibility = "private", xla.backend_kind = #xla.backend_kind<cpu>, xla.cpu.is_wrapped, xla.entry} {
    %0 = llvm.mlir.constant(15728640 : index) : i64
    %1 = llvm.mlir.constant(1572864 : index) : i64
    %2 = llvm.mlir.constant(3145728 : index) : i64
    %3 = llvm.mlir.constant(31457280 : index) : i64
    %4 = llvm.mlir.constant(13 : index) : i64
    %5 = llvm.mlir.constant(12 : index) : i64
    %6 = llvm.mlir.constant(127 : index) : i64
    %7 = llvm.mlir.constant(2048 : index) : i64
    %8 = llvm.mlir.constant(768 : index) : i64
    %9 = llvm.mlir.constant(10 : index) : i64
    %10 = llvm.mlir.constant(0 : index) : i64
    %11 = llvm.mlir.constant(1 : index) : i64
    %12 = llvm.mlir.constant(11 : index) : i64
    %13 = llvm.icmp "sle" %arg2, %12 : i64
    llvm.cond_br %13, ^bb1, ^bb13
  ^bb1:  // pred: ^bb0
    %14 = llvm.icmp "sge" %arg2, %10 : i64
    %15 = llvm.and %14, %13 : i1
    llvm.cond_br %15, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %16 = llvm.mul %arg2, %3 overflow<nsw> : i64
    %17 = llvm.mul %arg2, %0 overflow<nsw> : i64
    llvm.br ^bb3(%10 : i64)
  ^bb3(%18: i64):  // 2 preds: ^bb2, ^bb10
    %19 = llvm.icmp "slt" %18, %9 : i64
    llvm.cond_br %19, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %20 = llvm.mul %18, %2 overflow<nsw> : i64
    %21 = llvm.add %16, %20 overflow<nsw> : i64
    %22 = llvm.mul %18, %1 overflow<nsw> : i64
    %23 = llvm.add %17, %22 overflow<nsw> : i64
    llvm.br ^bb5(%10 : i64)
  ^bb5(%24: i64):  // 2 preds: ^bb4, ^bb9
    %25 = llvm.icmp "slt" %24, %8 : i64
    llvm.cond_br %25, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %26 = llvm.mul %24, %7 overflow<nsw> : i64
    %27 = llvm.add %21, %26 overflow<nsw> : i64
    %28 = llvm.add %23, %26 overflow<nsw> : i64
    llvm.br ^bb7(%10 : i64)
  ^bb7(%29: i64):  // 2 preds: ^bb6, ^bb8
    %30 = llvm.icmp "slt" %29, %7 : i64
    llvm.cond_br %30, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %31 = llvm.add %27, %29 overflow<nsw> : i64
    %32 = llvm.add %31, %1 overflow<nsw> : i64
    %33 = llvm.getelementptr inbounds %arg0[0, %32] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.array<402653184 x bf16>
    %34 = llvm.load %33 invariant : !llvm.ptr -> bf16
    %35 = llvm.add %28, %29 overflow<nsw> : i64
    %36 = llvm.getelementptr inbounds %arg1[0, %35] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.array<201326592 x bf16>
    llvm.store %34, %36 : bf16, !llvm.ptr
    %37 = llvm.add %29, %11 : i64
    llvm.br ^bb7(%37 : i64)
  ^bb9:  // pred: ^bb7
    %38 = llvm.add %24, %11 : i64
    llvm.br ^bb5(%38 : i64) {loop_annotation = #llvm.loop_annotation<unroll = <disable = true>>}
  ^bb10:  // pred: ^bb5
    %39 = llvm.add %18, %11 : i64
    llvm.br ^bb3(%39 : i64) {loop_annotation = #llvm.loop_annotation<unroll = <disable = true>>}
  ^bb11:  // pred: ^bb3
    llvm.br ^bb12
  ^bb12:  // 3 preds: ^bb1, ^bb11, ^bb14
    llvm.br ^bb24
  ^bb13:  // pred: ^bb0
    %40 = llvm.icmp "sge" %arg2, %5 : i64
    %41 = llvm.icmp "sle" %arg2, %4 : i64
    %42 = llvm.and %40, %41 : i1
    %43 = llvm.mul %arg2, %9 overflow<nsw> : i64
    llvm.br ^bb14(%10 : i64)
  ^bb14(%44: i64):  // 2 preds: ^bb13, ^bb23
    %45 = llvm.icmp "slt" %44, %9 : i64
    llvm.cond_br %45, ^bb15, ^bb12
  ^bb15:  // pred: ^bb14
    %46 = llvm.add %43, %44 overflow<nsw> : i64
    %47 = llvm.icmp "sle" %46, %6 : i64
    %48 = llvm.and %47, %42 : i1
    llvm.cond_br %48, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    %49 = llvm.mul %arg2, %3 overflow<nsw> : i64
    %50 = llvm.mul %44, %2 overflow<nsw> : i64
    %51 = llvm.add %49, %50 overflow<nsw> : i64
    %52 = llvm.mul %arg2, %0 overflow<nsw> : i64
    %53 = llvm.mul %44, %1 overflow<nsw> : i64
    %54 = llvm.add %52, %53 overflow<nsw> : i64
    llvm.br ^bb17(%10 : i64)
  ^bb17(%55: i64):  // 2 preds: ^bb16, ^bb21
    %56 = llvm.icmp "slt" %55, %8 : i64
    llvm.cond_br %56, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    %57 = llvm.mul %55, %7 overflow<nsw> : i64
    %58 = llvm.add %51, %57 overflow<nsw> : i64
    %59 = llvm.add %54, %57 overflow<nsw> : i64
    llvm.br ^bb19(%10 : i64)
  ^bb19(%60: i64):  // 2 preds: ^bb18, ^bb20
    %61 = llvm.icmp "slt" %60, %7 : i64
    llvm.cond_br %61, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %62 = llvm.add %58, %60 overflow<nsw> : i64
    %63 = llvm.add %62, %1 overflow<nsw> : i64
    %64 = llvm.getelementptr inbounds %arg0[0, %63] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.array<402653184 x bf16>
    %65 = llvm.load %64 invariant : !llvm.ptr -> bf16
    %66 = llvm.add %59, %60 overflow<nsw> : i64
    %67 = llvm.getelementptr inbounds %arg1[0, %66] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.array<201326592 x bf16>
    llvm.store %65, %67 : bf16, !llvm.ptr
    %68 = llvm.add %60, %11 : i64
    llvm.br ^bb19(%68 : i64)
  ^bb21:  // pred: ^bb19
    %69 = llvm.add %55, %11 : i64
    llvm.br ^bb17(%69 : i64) {loop_annotation = #llvm.loop_annotation<unroll = <disable = true>>}
  ^bb22:  // pred: ^bb17
    llvm.br ^bb23
  ^bb23:  // 2 preds: ^bb15, ^bb22
    %70 = llvm.add %44, %11 : i64
    llvm.br ^bb14(%70 : i64) {loop_annotation = #llvm.loop_annotation<unroll = <disable = true>>}
  ^bb24:  // pred: ^bb12
    llvm.return
  }
}