module @concatenate_convert_fusion_kernel_module attributes {dlti.dl_spec = #dlti.dl_spec<index = 64 : i32>, xla.cpu_memory_region_name = "xla_cpu_emitter__concatenate_fusion_kernel_emitter__hlo_opcode__fusion"} {
  llvm.func @xla.fptrunc.f32.to.bf16(f32) -> bf16 attributes {sym_visibility = "private"}
  llvm.func @concatenate_convert_fusion(%arg0: !llvm.ptr) -> !llvm.ptr attributes {frame_pointer = #llvm.framePointerKind<all>, passthrough = [["prefer-vector-width", "256"]], uwtable_kind = #llvm.uwtableKind<async>} {
    %0 = llvm.mlir.zero : !llvm.ptr
    %1 = llvm.getelementptr inbounds %arg0[0, 3] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"XLA_CPU_KernelCallFrame", (ptr, ptr, i64, ptr)>
    %2 = llvm.load %1 invariant : !llvm.ptr -> !llvm.ptr
    %3 = llvm.getelementptr inbounds %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"XLA_CPU_KernelArg", (ptr, i64)>
    %4 = llvm.load %3 invariant dereferenceable<bytes = 2654208> : !llvm.ptr -> !llvm.ptr
    %5 = llvm.getelementptr inbounds %2[1, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"XLA_CPU_KernelArg", (ptr, i64)>
    %6 = llvm.load %5 invariant dereferenceable<bytes = 2654208> : !llvm.ptr -> !llvm.ptr
    %7 = llvm.getelementptr inbounds %2[2, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"XLA_CPU_KernelArg", (ptr, i64)>
    %8 = llvm.load %7 invariant dereferenceable<bytes = 2654208> : !llvm.ptr -> !llvm.ptr
    %9 = llvm.getelementptr inbounds %2[3, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"XLA_CPU_KernelArg", (ptr, i64)>
    %10 = llvm.load %9 invariant dereferenceable<bytes = 7962624> : !llvm.ptr -> !llvm.ptr
    %11 = llvm.getelementptr inbounds %arg0[0, 1] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"XLA_CPU_KernelCallFrame", (ptr, ptr, i64, ptr)>
    %12 = llvm.load %11 : !llvm.ptr -> !llvm.ptr
    %13 = llvm.getelementptr inbounds %12[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"kernel_dim3", (i64, i64, i64)>
    %14 = llvm.load %13 invariant : !llvm.ptr -> i64
    %15 = llvm.getelementptr inbounds %12[0, 1] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"kernel_dim3", (i64, i64, i64)>
    %16 = llvm.load %15 invariant : !llvm.ptr -> i64
    %17 = llvm.getelementptr inbounds %12[0, 2] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"kernel_dim3", (i64, i64, i64)>
    %18 = llvm.load %17 invariant : !llvm.ptr -> i64
    llvm.call @concatenate_convert_fusion_wrapped(%4, %6, %8, %10, %14, %16, %18) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, !llvm.ptr, i64, i64, i64) -> ()
    llvm.return %0 : !llvm.ptr
  }
  llvm.func internal @concatenate_convert_fusion_wrapped(%arg0: !llvm.ptr {llvm.align = 64 : index, llvm.dereferenceable = 2654208 : index, llvm.noalias, xla.invariant}, %arg1: !llvm.ptr {llvm.align = 64 : index, llvm.dereferenceable = 2654208 : index, llvm.noalias, xla.invariant}, %arg2: !llvm.ptr {llvm.align = 64 : index, llvm.dereferenceable = 2654208 : index, llvm.noalias, xla.invariant}, %arg3: !llvm.ptr {llvm.align = 64 : index, llvm.dereferenceable = 7962624 : index, llvm.noalias}, %arg4: i64, %arg5: i64, %arg6: i64) attributes {always_inline, sym_visibility = "private", xla.backend_kind = #xla.backend_kind<cpu>, xla.cpu.is_wrapped, xla.entry} {
    %0 = llvm.mlir.constant(16 : i32) : i32
    %1 = llvm.mlir.constant(663552 : index) : i64
    %2 = llvm.mlir.constant(576 : index) : i64
    %3 = llvm.mlir.constant(331776 : index) : i64
    %4 = llvm.mlir.constant(288 : index) : i64
    %5 = llvm.mlir.constant(995328 : index) : i64
    %6 = llvm.mlir.constant(110592 : index) : i64
    %7 = llvm.mlir.constant(3 : index) : i64
    %8 = llvm.mlir.constant(11 : index) : i64
    %9 = llvm.mlir.constant(1152 : index) : i64
    %10 = llvm.mlir.constant(96 : index) : i64
    %11 = llvm.mlir.constant(0 : index) : i64
    %12 = llvm.mlir.constant(1 : index) : i64
    %13 = llvm.icmp "sge" %arg4, %11 : i64
    %14 = llvm.icmp "sle" %arg4, %8 : i64
    %15 = llvm.and %13, %14 : i1
    llvm.cond_br %15, ^bb1, ^bb20
  ^bb1:  // pred: ^bb0
    %16 = llvm.udiv %arg4, %7 : i64
    %17 = llvm.urem %arg4, %7 : i64
    %18 = llvm.mul %17, %10 overflow<nsw> : i64
    %19 = llvm.mul %arg4, %6 overflow<nsw> : i64
    %20 = llvm.mul %17, %6 overflow<nsw> : i64
    %21 = llvm.mul %16, %5 overflow<nsw> : i64
    %22 = llvm.add %20, %21 overflow<nsw> : i64
    llvm.br ^bb2(%11 : i64)
  ^bb2(%23: i64):  // 2 preds: ^bb1, ^bb6
    %24 = llvm.icmp "slt" %23, %10 : i64
    llvm.cond_br %24, ^bb3, ^bb7
  ^bb3:  // pred: ^bb2
    %25 = llvm.add %18, %23 overflow<nsw> : i64
    %26 = llvm.mul %23, %9 overflow<nsw> : i64
    %27 = llvm.add %19, %26 overflow<nsw> : i64
    %28 = llvm.add %22, %26 overflow<nsw> : i64
    llvm.br ^bb4(%11 : i64)
  ^bb4(%29: i64):  // 2 preds: ^bb3, ^bb5
    %30 = llvm.icmp "slt" %29, %9 : i64
    llvm.cond_br %30, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    %31 = llvm.add %27, %29 overflow<nsw> : i64
    %32 = llvm.getelementptr inbounds %arg2[0, %31] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.array<1327104 x bf16>
    %33 = llvm.load %32 invariant : !llvm.ptr -> bf16
    %34 = llvm.bitcast %33 : bf16 to i16
    %35 = llvm.zext %34 : i16 to i32
    %36 = llvm.shl %35, %0 : i32
    %37 = llvm.bitcast %36 : i32 to f32
    %38 = llvm.call @fused_computation__epilogue__convert_4(%arg0, %arg1, %arg2, %16, %25, %29, %37) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i64, i64, i64, f32) -> bf16
    %39 = llvm.add %28, %29 overflow<nsw> : i64
    %40 = llvm.getelementptr inbounds %arg3[0, %39] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.array<3981312 x bf16>
    llvm.store %38, %40 : bf16, !llvm.ptr
    %41 = llvm.add %29, %12 : i64
    llvm.br ^bb4(%41 : i64)
  ^bb6:  // pred: ^bb4
    %42 = llvm.add %23, %12 : i64
    llvm.br ^bb2(%42 : i64) {loop_annotation = #llvm.loop_annotation<unroll = <disable = true>>}
  ^bb7:  // pred: ^bb2
    llvm.br ^bb8(%11 : i64)
  ^bb8(%43: i64):  // 2 preds: ^bb7, ^bb12
    %44 = llvm.icmp "slt" %43, %10 : i64
    llvm.cond_br %44, ^bb9, ^bb13
  ^bb9:  // pred: ^bb8
    %45 = llvm.add %18, %43 overflow<nsw> : i64
    %46 = llvm.add %45, %4 overflow<nsw> : i64
    %47 = llvm.mul %43, %9 overflow<nsw> : i64
    %48 = llvm.add %19, %47 overflow<nsw> : i64
    %49 = llvm.add %22, %47 overflow<nsw> : i64
    llvm.br ^bb10(%11 : i64)
  ^bb10(%50: i64):  // 2 preds: ^bb9, ^bb11
    %51 = llvm.icmp "slt" %50, %9 : i64
    llvm.cond_br %51, ^bb11, ^bb12
  ^bb11:  // pred: ^bb10
    %52 = llvm.add %48, %50 overflow<nsw> : i64
    %53 = llvm.getelementptr inbounds %arg1[0, %52] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.array<1327104 x bf16>
    %54 = llvm.load %53 invariant : !llvm.ptr -> bf16
    %55 = llvm.bitcast %54 : bf16 to i16
    %56 = llvm.zext %55 : i16 to i32
    %57 = llvm.shl %56, %0 : i32
    %58 = llvm.bitcast %57 : i32 to f32
    %59 = llvm.call @fused_computation__epilogue__convert_4(%arg0, %arg1, %arg2, %16, %46, %50, %58) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i64, i64, i64, f32) -> bf16
    %60 = llvm.add %49, %50 overflow<nsw> : i64
    %61 = llvm.add %60, %3 overflow<nsw> : i64
    %62 = llvm.getelementptr inbounds %arg3[0, %61] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.array<3981312 x bf16>
    llvm.store %59, %62 : bf16, !llvm.ptr
    %63 = llvm.add %50, %12 : i64
    llvm.br ^bb10(%63 : i64)
  ^bb12:  // pred: ^bb10
    %64 = llvm.add %43, %12 : i64
    llvm.br ^bb8(%64 : i64) {loop_annotation = #llvm.loop_annotation<unroll = <disable = true>>}
  ^bb13:  // pred: ^bb8
    llvm.br ^bb14(%11 : i64)
  ^bb14(%65: i64):  // 2 preds: ^bb13, ^bb18
    %66 = llvm.icmp "slt" %65, %10 : i64
    llvm.cond_br %66, ^bb15, ^bb19
  ^bb15:  // pred: ^bb14
    %67 = llvm.add %18, %65 overflow<nsw> : i64
    %68 = llvm.add %67, %2 overflow<nsw> : i64
    %69 = llvm.mul %65, %9 overflow<nsw> : i64
    %70 = llvm.add %19, %69 overflow<nsw> : i64
    %71 = llvm.add %22, %69 overflow<nsw> : i64
    llvm.br ^bb16(%11 : i64)
  ^bb16(%72: i64):  // 2 preds: ^bb15, ^bb17
    %73 = llvm.icmp "slt" %72, %9 : i64
    llvm.cond_br %73, ^bb17, ^bb18
  ^bb17:  // pred: ^bb16
    %74 = llvm.add %70, %72 overflow<nsw> : i64
    %75 = llvm.getelementptr inbounds %arg0[0, %74] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.array<1327104 x bf16>
    %76 = llvm.load %75 invariant : !llvm.ptr -> bf16
    %77 = llvm.bitcast %76 : bf16 to i16
    %78 = llvm.zext %77 : i16 to i32
    %79 = llvm.shl %78, %0 : i32
    %80 = llvm.bitcast %79 : i32 to f32
    %81 = llvm.call @fused_computation__epilogue__convert_4(%arg0, %arg1, %arg2, %16, %68, %72, %80) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i64, i64, i64, f32) -> bf16
    %82 = llvm.add %71, %72 overflow<nsw> : i64
    %83 = llvm.add %82, %1 overflow<nsw> : i64
    %84 = llvm.getelementptr inbounds %arg3[0, %83] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.array<3981312 x bf16>
    llvm.store %81, %84 : bf16, !llvm.ptr
    %85 = llvm.add %72, %12 : i64
    llvm.br ^bb16(%85 : i64)
  ^bb18:  // pred: ^bb16
    %86 = llvm.add %65, %12 : i64
    llvm.br ^bb14(%86 : i64) {loop_annotation = #llvm.loop_annotation<unroll = <disable = true>>}
  ^bb19:  // pred: ^bb14
    llvm.br ^bb20
  ^bb20:  // 2 preds: ^bb0, ^bb19
    llvm.return
  }
  llvm.func internal @fused_computation__epilogue__convert_4(%arg0: !llvm.ptr {llvm.noalias, xla.invariant}, %arg1: !llvm.ptr {llvm.noalias, xla.invariant}, %arg2: !llvm.ptr {llvm.noalias, xla.invariant}, %arg3: i64 {xla.range = [0 : index, 3 : index]}, %arg4: i64 {xla.range = [0 : index, 863 : index]}, %arg5: i64 {xla.range = [0 : index, 1151 : index]}, %arg6: f32) -> bf16 attributes {sym_visibility = "private"} {
    %0 = llvm.call @xla.fptrunc.f32.to.bf16(%arg6) : (f32) -> bf16
    llvm.return %0 : bf16
  }
}