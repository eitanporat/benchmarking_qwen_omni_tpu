module @concatenate_convert_fusion_kernel_module attributes {dlti.dl_spec = #dlti.dl_spec<index = 64 : i32>, xla.cpu_memory_region_name = "xla_cpu_emitter__concatenate_fusion_kernel_emitter__hlo_opcode__fusion"} {
  llvm.func @xla.fptrunc.f32.to.bf16(f32) -> bf16 attributes {sym_visibility = "private"}
  llvm.func @concatenate_convert_fusion(%arg0: !llvm.ptr) -> !llvm.ptr attributes {frame_pointer = #llvm.framePointerKind<all>, passthrough = [["prefer-vector-width", "256"]], uwtable_kind = #llvm.uwtableKind<async>} {
    %0 = llvm.mlir.zero : !llvm.ptr
    %1 = llvm.getelementptr inbounds %arg0[0, 3] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"XLA_CPU_KernelCallFrame", (ptr, ptr, i64, ptr)>
    %2 = llvm.load %1 invariant : !llvm.ptr -> !llvm.ptr
    %3 = llvm.getelementptr inbounds %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"XLA_CPU_KernelArg", (ptr, i64)>
    %4 = llvm.load %3 invariant dereferenceable<bytes = 2097152> : !llvm.ptr -> !llvm.ptr
    %5 = llvm.getelementptr inbounds %2[1, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"XLA_CPU_KernelArg", (ptr, i64)>
    %6 = llvm.load %5 invariant dereferenceable<bytes = 2097152> : !llvm.ptr -> !llvm.ptr
    %7 = llvm.getelementptr inbounds %2[2, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"XLA_CPU_KernelArg", (ptr, i64)>
    %8 = llvm.load %7 invariant dereferenceable<bytes = 16777216> : !llvm.ptr -> !llvm.ptr
    %9 = llvm.getelementptr inbounds %2[3, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"XLA_CPU_KernelArg", (ptr, i64)>
    %10 = llvm.load %9 invariant dereferenceable<bytes = 20971520> : !llvm.ptr -> !llvm.ptr
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
  llvm.func internal @concatenate_convert_fusion_wrapped(%arg0: !llvm.ptr {llvm.align = 64 : index, llvm.dereferenceable = 2097152 : index, llvm.noalias, xla.invariant}, %arg1: !llvm.ptr {llvm.align = 64 : index, llvm.dereferenceable = 2097152 : index, llvm.noalias, xla.invariant}, %arg2: !llvm.ptr {llvm.align = 64 : index, llvm.dereferenceable = 16777216 : index, llvm.noalias, xla.invariant}, %arg3: !llvm.ptr {llvm.align = 64 : index, llvm.dereferenceable = 20971520 : index, llvm.noalias}, %arg4: i64, %arg5: i64, %arg6: i64) attributes {always_inline, sym_visibility = "private", xla.backend_kind = #xla.backend_kind<cpu>, xla.cpu.is_wrapped, xla.entry} {
    %0 = llvm.mlir.constant(16 : i32) : i32
    %1 = llvm.mlir.constant(2359296 : index) : i64
    %2 = llvm.mlir.constant(1152 : index) : i64
    %3 = llvm.mlir.constant(2097152 : index) : i64
    %4 = llvm.mlir.constant(262144 : index) : i64
    %5 = llvm.mlir.constant(9277440 : index) : i64
    %6 = llvm.mlir.constant(690 : index) : i64
    %7 = llvm.mlir.constant(2621440 : index) : i64
    %8 = llvm.mlir.constant(700416 : index) : i64
    %9 = llvm.mlir.constant(1024 : index) : i64
    %10 = llvm.mlir.constant(127 : index) : i64
    %11 = llvm.mlir.constant(4095 : index) : i64
    %12 = llvm.mlir.constant(11 : index) : i64
    %13 = llvm.mlir.constant(334 : index) : i64
    %14 = llvm.mlir.constant(2048 : index) : i64
    %15 = llvm.mlir.constant(342 : index) : i64
    %16 = llvm.mlir.constant(0 : index) : i64
    %17 = llvm.mlir.constant(1 : index) : i64
    %18 = llvm.mlir.constant(10 : index) : i64
    %19 = llvm.mlir.constant(3 : index) : i64
    %20 = llvm.icmp "sle" %arg4, %18 : i64
    llvm.cond_br %20, ^bb1, ^bb10
  ^bb1:  // pred: ^bb0
    %21 = llvm.icmp "sge" %arg4, %16 : i64
    %22 = llvm.and %21, %20 : i1
    llvm.cond_br %22, ^bb2, ^bb9
  ^bb2:  // pred: ^bb1
    %23 = llvm.mul %arg4, %15 overflow<nsw> : i64
    %24 = llvm.mul %arg4, %8 overflow<nsw> : i64
    llvm.br ^bb3(%16 : i64)
  ^bb3(%25: i64):  // 2 preds: ^bb2, ^bb7
    %26 = llvm.icmp "slt" %25, %15 : i64
    llvm.cond_br %26, ^bb4, ^bb8
  ^bb4:  // pred: ^bb3
    %27 = llvm.add %23, %25 overflow<nsw> : i64
    %28 = llvm.udiv %27, %9 : i64
    %29 = llvm.urem %27, %9 : i64
    %30 = llvm.mul %25, %14 overflow<nsw> : i64
    %31 = llvm.add %24, %30 overflow<nsw> : i64
    %32 = llvm.mul %29, %14 overflow<nsw> : i64
    %33 = llvm.mul %28, %7 overflow<nsw> : i64
    %34 = llvm.add %32, %33 overflow<nsw> : i64
    llvm.br ^bb5(%16 : i64)
  ^bb5(%35: i64):  // 2 preds: ^bb4, ^bb6
    %36 = llvm.icmp "slt" %35, %14 : i64
    llvm.cond_br %36, ^bb6, ^bb7
  ^bb6:  // pred: ^bb5
    %37 = llvm.add %31, %35 overflow<nsw> : i64
    %38 = llvm.getelementptr inbounds %arg2[0, %37] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.array<8388608 x bf16>
    %39 = llvm.load %38 invariant : !llvm.ptr -> bf16
    %40 = llvm.bitcast %39 : bf16 to i16
    %41 = llvm.zext %40 : i16 to i32
    %42 = llvm.shl %41, %0 : i32
    %43 = llvm.bitcast %42 : i32 to f32
    %44 = llvm.call @fused_computation__epilogue__convert_4(%arg0, %arg1, %arg2, %28, %29, %35, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i64, i64, i64, f32) -> bf16
    %45 = llvm.add %34, %35 overflow<nsw> : i64
    %46 = llvm.getelementptr inbounds %arg3[0, %45] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.array<10485760 x bf16>
    llvm.store %44, %46 : bf16, !llvm.ptr
    %47 = llvm.add %35, %17 : i64
    llvm.br ^bb5(%47 : i64)
  ^bb7:  // pred: ^bb5
    %48 = llvm.add %25, %17 : i64
    llvm.br ^bb3(%48 : i64) {loop_annotation = #llvm.loop_annotation<unroll = <disable = true>>}
  ^bb8:  // 2 preds: ^bb3, ^bb12
    llvm.br ^bb9
  ^bb9:  // 3 preds: ^bb1, ^bb8, ^bb10
    llvm.br ^bb17
  ^bb10:  // pred: ^bb0
    %49 = llvm.icmp "eq" %arg4, %12 : i64
    llvm.cond_br %49, ^bb11, ^bb9
  ^bb11:  // pred: ^bb10
    %50 = llvm.mul %arg4, %8 overflow<nsw> : i64
    llvm.br ^bb12(%16 : i64)
  ^bb12(%51: i64):  // 2 preds: ^bb11, ^bb16
    %52 = llvm.icmp "slt" %51, %13 : i64
    llvm.cond_br %52, ^bb13, ^bb8
  ^bb13:  // pred: ^bb12
    %53 = llvm.add %51, %6 overflow<nsw> : i64
    %54 = llvm.mul %51, %14 overflow<nsw> : i64
    %55 = llvm.add %50, %54 overflow<nsw> : i64
    llvm.br ^bb14(%16 : i64)
  ^bb14(%56: i64):  // 2 preds: ^bb13, ^bb15
    %57 = llvm.icmp "slt" %56, %14 : i64
    llvm.cond_br %57, ^bb15, ^bb16
  ^bb15:  // pred: ^bb14
    %58 = llvm.add %55, %56 overflow<nsw> : i64
    %59 = llvm.getelementptr inbounds %arg2[0, %58] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.array<8388608 x bf16>
    %60 = llvm.load %59 invariant : !llvm.ptr -> bf16
    %61 = llvm.bitcast %60 : bf16 to i16
    %62 = llvm.zext %61 : i16 to i32
    %63 = llvm.shl %62, %0 : i32
    %64 = llvm.bitcast %63 : i32 to f32
    %65 = llvm.call @fused_computation__epilogue__convert_4(%arg0, %arg1, %arg2, %19, %53, %56, %64) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i64, i64, i64, f32) -> bf16
    %66 = llvm.add %54, %56 overflow<nsw> : i64
    %67 = llvm.add %66, %5 overflow<nsw> : i64
    %68 = llvm.getelementptr inbounds %arg3[0, %67] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.array<10485760 x bf16>
    llvm.store %65, %68 : bf16, !llvm.ptr
    %69 = llvm.add %56, %17 : i64
    llvm.br ^bb14(%69 : i64)
  ^bb16:  // pred: ^bb14
    %70 = llvm.add %51, %17 : i64
    llvm.br ^bb12(%70 : i64) {loop_annotation = #llvm.loop_annotation<unroll = <disable = true>>}
  ^bb17:  // pred: ^bb9
    %71 = llvm.icmp "sge" %arg4, %16 : i64
    %72 = llvm.icmp "sle" %arg4, %12 : i64
    %73 = llvm.and %71, %72 : i1
    %74 = llvm.mul %arg4, %15 overflow<nsw> : i64
    llvm.br ^bb18(%16 : i64)
  ^bb18(%75: i64):  // 2 preds: ^bb17, ^bb24
    %76 = llvm.icmp "slt" %75, %15 : i64
    llvm.cond_br %76, ^bb19, ^bb25
  ^bb19:  // pred: ^bb18
    %77 = llvm.add %74, %75 overflow<nsw> : i64
    %78 = llvm.urem %77, %9 : i64
    %79 = llvm.icmp "sle" %77, %11 : i64
    %80 = llvm.icmp "sle" %78, %10 : i64
    %81 = llvm.and %79, %80 : i1
    %82 = llvm.and %81, %73 : i1
    llvm.cond_br %82, ^bb20, ^bb24
  ^bb20:  // pred: ^bb19
    %83 = llvm.udiv %77, %9 : i64
    %84 = llvm.add %78, %9 overflow<nsw> : i64
    %85 = llvm.mul %78, %14 overflow<nsw> : i64
    %86 = llvm.mul %83, %4 overflow<nsw> : i64
    %87 = llvm.add %85, %86 overflow<nsw> : i64
    %88 = llvm.mul %83, %7 overflow<nsw> : i64
    %89 = llvm.add %85, %88 overflow<nsw> : i64
    llvm.br ^bb21(%16 : i64)
  ^bb21(%90: i64):  // 2 preds: ^bb20, ^bb22
    %91 = llvm.icmp "slt" %90, %14 : i64
    llvm.cond_br %91, ^bb22, ^bb23
  ^bb22:  // pred: ^bb21
    %92 = llvm.add %87, %90 overflow<nsw> : i64
    %93 = llvm.getelementptr inbounds %arg1[0, %92] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.array<1048576 x bf16>
    %94 = llvm.load %93 invariant : !llvm.ptr -> bf16
    %95 = llvm.bitcast %94 : bf16 to i16
    %96 = llvm.zext %95 : i16 to i32
    %97 = llvm.shl %96, %0 : i32
    %98 = llvm.bitcast %97 : i32 to f32
    %99 = llvm.call @fused_computation__epilogue__convert_4(%arg0, %arg1, %arg2, %83, %84, %90, %98) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i64, i64, i64, f32) -> bf16
    %100 = llvm.add %89, %90 overflow<nsw> : i64
    %101 = llvm.add %100, %3 overflow<nsw> : i64
    %102 = llvm.getelementptr inbounds %arg3[0, %101] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.array<10485760 x bf16>
    llvm.store %99, %102 : bf16, !llvm.ptr
    %103 = llvm.add %90, %17 : i64
    llvm.br ^bb21(%103 : i64)
  ^bb23:  // pred: ^bb21
    llvm.br ^bb24
  ^bb24:  // 2 preds: ^bb19, ^bb23
    %104 = llvm.add %75, %17 : i64
    llvm.br ^bb18(%104 : i64) {loop_annotation = #llvm.loop_annotation<unroll = <disable = true>>}
  ^bb25:  // pred: ^bb18
    llvm.br ^bb26(%16 : i64)
  ^bb26(%105: i64):  // 2 preds: ^bb25, ^bb32
    %106 = llvm.icmp "slt" %105, %15 : i64
    llvm.cond_br %106, ^bb27, ^bb33
  ^bb27:  // pred: ^bb26
    %107 = llvm.add %74, %105 overflow<nsw> : i64
    %108 = llvm.urem %107, %9 : i64
    %109 = llvm.icmp "sle" %107, %11 : i64
    %110 = llvm.icmp "sle" %108, %10 : i64
    %111 = llvm.and %109, %110 : i1
    %112 = llvm.and %111, %73 : i1
    llvm.cond_br %112, ^bb28, ^bb32
  ^bb28:  // pred: ^bb27
    %113 = llvm.udiv %107, %9 : i64
    %114 = llvm.add %108, %2 overflow<nsw> : i64
    %115 = llvm.mul %108, %14 overflow<nsw> : i64
    %116 = llvm.mul %113, %4 overflow<nsw> : i64
    %117 = llvm.add %115, %116 overflow<nsw> : i64
    %118 = llvm.mul %113, %7 overflow<nsw> : i64
    %119 = llvm.add %115, %118 overflow<nsw> : i64
    llvm.br ^bb29(%16 : i64)
  ^bb29(%120: i64):  // 2 preds: ^bb28, ^bb30
    %121 = llvm.icmp "slt" %120, %14 : i64
    llvm.cond_br %121, ^bb30, ^bb31
  ^bb30:  // pred: ^bb29
    %122 = llvm.add %117, %120 overflow<nsw> : i64
    %123 = llvm.getelementptr inbounds %arg0[0, %122] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.array<1048576 x bf16>
    %124 = llvm.load %123 invariant : !llvm.ptr -> bf16
    %125 = llvm.bitcast %124 : bf16 to i16
    %126 = llvm.zext %125 : i16 to i32
    %127 = llvm.shl %126, %0 : i32
    %128 = llvm.bitcast %127 : i32 to f32
    %129 = llvm.call @fused_computation__epilogue__convert_4(%arg0, %arg1, %arg2, %113, %114, %120, %128) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i64, i64, i64, f32) -> bf16
    %130 = llvm.add %119, %120 overflow<nsw> : i64
    %131 = llvm.add %130, %1 overflow<nsw> : i64
    %132 = llvm.getelementptr inbounds %arg3[0, %131] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.array<10485760 x bf16>
    llvm.store %129, %132 : bf16, !llvm.ptr
    %133 = llvm.add %120, %17 : i64
    llvm.br ^bb29(%133 : i64)
  ^bb31:  // pred: ^bb29
    llvm.br ^bb32
  ^bb32:  // 2 preds: ^bb27, ^bb31
    %134 = llvm.add %105, %17 : i64
    llvm.br ^bb26(%134 : i64) {loop_annotation = #llvm.loop_annotation<unroll = <disable = true>>}
  ^bb33:  // pred: ^bb26
    llvm.return
  }
  llvm.func internal @fused_computation__epilogue__convert_4(%arg0: !llvm.ptr {llvm.noalias, xla.invariant}, %arg1: !llvm.ptr {llvm.noalias, xla.invariant}, %arg2: !llvm.ptr {llvm.noalias, xla.invariant}, %arg3: i64 {xla.range = [0 : index, 3 : index]}, %arg4: i64 {xla.range = [0 : index, 1279 : index]}, %arg5: i64 {xla.range = [0 : index, 2047 : index]}, %arg6: f32) -> bf16 attributes {sym_visibility = "private"} {
    %0 = llvm.call @xla.fptrunc.f32.to.bf16(%arg6) : (f32) -> bf16
    llvm.return %0 : bf16
  }
}