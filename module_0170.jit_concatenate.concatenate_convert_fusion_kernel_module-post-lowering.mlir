module @concatenate_convert_fusion_kernel_module attributes {dlti.dl_spec = #dlti.dl_spec<index = 64 : i32>, xla.cpu_memory_region_name = "xla_cpu_emitter__concatenate_fusion_kernel_emitter__hlo_opcode__fusion"} {
  llvm.func @xla.fptrunc.f32.to.bf16(f32) -> bf16 attributes {sym_visibility = "private"}
  llvm.func @concatenate_convert_fusion(%arg0: !llvm.ptr) -> !llvm.ptr attributes {frame_pointer = #llvm.framePointerKind<all>, passthrough = [["prefer-vector-width", "256"]], uwtable_kind = #llvm.uwtableKind<async>} {
    %0 = llvm.mlir.zero : !llvm.ptr
    %1 = llvm.getelementptr inbounds %arg0[0, 3] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"XLA_CPU_KernelCallFrame", (ptr, ptr, i64, ptr)>
    %2 = llvm.load %1 invariant : !llvm.ptr -> !llvm.ptr
    %3 = llvm.getelementptr inbounds %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"XLA_CPU_KernelArg", (ptr, i64)>
    %4 = llvm.load %3 invariant dereferenceable<bytes = 402653184> : !llvm.ptr -> !llvm.ptr
    %5 = llvm.getelementptr inbounds %2[1, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"XLA_CPU_KernelArg", (ptr, i64)>
    %6 = llvm.load %5 invariant dereferenceable<bytes = 402653184> : !llvm.ptr -> !llvm.ptr
    %7 = llvm.getelementptr inbounds %2[2, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"XLA_CPU_KernelArg", (ptr, i64)>
    %8 = llvm.load %7 invariant dereferenceable<bytes = 805306368> : !llvm.ptr -> !llvm.ptr
    %9 = llvm.getelementptr inbounds %arg0[0, 1] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"XLA_CPU_KernelCallFrame", (ptr, ptr, i64, ptr)>
    %10 = llvm.load %9 : !llvm.ptr -> !llvm.ptr
    %11 = llvm.getelementptr inbounds %10[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"kernel_dim3", (i64, i64, i64)>
    %12 = llvm.load %11 invariant : !llvm.ptr -> i64
    %13 = llvm.getelementptr inbounds %10[0, 1] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"kernel_dim3", (i64, i64, i64)>
    %14 = llvm.load %13 invariant : !llvm.ptr -> i64
    %15 = llvm.getelementptr inbounds %10[0, 2] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<"kernel_dim3", (i64, i64, i64)>
    %16 = llvm.load %15 invariant : !llvm.ptr -> i64
    llvm.call @concatenate_convert_fusion_wrapped(%4, %6, %8, %12, %14, %16) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i64, i64, i64) -> ()
    llvm.return %0 : !llvm.ptr
  }
  llvm.func internal @concatenate_convert_fusion_wrapped(%arg0: !llvm.ptr {llvm.align = 64 : index, llvm.dereferenceable = 402653184 : index, llvm.noalias, xla.invariant}, %arg1: !llvm.ptr {llvm.align = 64 : index, llvm.dereferenceable = 402653184 : index, llvm.noalias, xla.invariant}, %arg2: !llvm.ptr {llvm.align = 64 : index, llvm.dereferenceable = 805306368 : index, llvm.noalias}, %arg3: i64, %arg4: i64, %arg5: i64) attributes {always_inline, sym_visibility = "private", xla.backend_kind = #xla.backend_kind<cpu>, xla.cpu.is_wrapped, xla.entry} {
    %0 = llvm.mlir.constant(16 : i32) : i32
    %1 = llvm.mlir.constant(786432 : index) : i64
    %2 = llvm.mlir.constant(3145728 : index) : i64
    %3 = llvm.mlir.constant(31457280 : index) : i64
    %4 = llvm.mlir.constant(393216 : index) : i64
    %5 = llvm.mlir.constant(1572864 : index) : i64
    %6 = llvm.mlir.constant(15728640 : index) : i64
    %7 = llvm.mlir.constant(13 : index) : i64
    %8 = llvm.mlir.constant(12 : index) : i64
    %9 = llvm.mlir.constant(127 : index) : i64
    %10 = llvm.mlir.constant(2048 : index) : i64
    %11 = llvm.mlir.constant(192 : index) : i64
    %12 = llvm.mlir.constant(4 : index) : i64
    %13 = llvm.mlir.constant(10 : index) : i64
    %14 = llvm.mlir.constant(0 : index) : i64
    %15 = llvm.mlir.constant(1 : index) : i64
    %16 = llvm.mlir.constant(11 : index) : i64
    %17 = llvm.icmp "sle" %arg3, %16 : i64
    llvm.cond_br %17, ^bb1, ^bb28
  ^bb1:  // pred: ^bb0
    %18 = llvm.icmp "sge" %arg3, %14 : i64
    %19 = llvm.and %18, %17 : i1
    llvm.cond_br %19, ^bb2, ^bb27
  ^bb2:  // pred: ^bb1
    %20 = llvm.mul %arg3, %13 overflow<nsw> : i64
    %21 = llvm.mul %arg3, %6 overflow<nsw> : i64
    %22 = llvm.mul %arg3, %3 overflow<nsw> : i64
    llvm.br ^bb3(%14 : i64)
  ^bb3(%23: i64):  // 2 preds: ^bb2, ^bb13
    %24 = llvm.icmp "slt" %23, %13 : i64
    llvm.cond_br %24, ^bb4, ^bb14
  ^bb4:  // pred: ^bb3
    %25 = llvm.add %20, %23 overflow<nsw> : i64
    %26 = llvm.mul %23, %5 overflow<nsw> : i64
    %27 = llvm.add %21, %26 overflow<nsw> : i64
    %28 = llvm.mul %23, %2 overflow<nsw> : i64
    %29 = llvm.add %22, %28 overflow<nsw> : i64
    llvm.br ^bb5(%14 : i64)
  ^bb5(%30: i64):  // 2 preds: ^bb4, ^bb12
    %31 = llvm.icmp "slt" %30, %12 : i64
    llvm.cond_br %31, ^bb6, ^bb13
  ^bb6:  // pred: ^bb5
    %32 = llvm.mul %30, %4 overflow<nsw> : i64
    %33 = llvm.add %27, %32 overflow<nsw> : i64
    %34 = llvm.mul %30, %1 overflow<nsw> : i64
    %35 = llvm.add %29, %34 overflow<nsw> : i64
    llvm.br ^bb7(%14 : i64)
  ^bb7(%36: i64):  // 2 preds: ^bb6, ^bb11
    %37 = llvm.icmp "slt" %36, %11 : i64
    llvm.cond_br %37, ^bb8, ^bb12
  ^bb8:  // pred: ^bb7
    %38 = llvm.mul %36, %10 overflow<nsw> : i64
    %39 = llvm.add %33, %38 overflow<nsw> : i64
    %40 = llvm.add %35, %38 overflow<nsw> : i64
    llvm.br ^bb9(%14 : i64)
  ^bb9(%41: i64):  // 2 preds: ^bb8, ^bb10
    %42 = llvm.icmp "slt" %41, %10 : i64
    llvm.cond_br %42, ^bb10, ^bb11
  ^bb10:  // pred: ^bb9
    %43 = llvm.add %39, %41 overflow<nsw> : i64
    %44 = llvm.getelementptr inbounds %arg1[0, %43] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.array<201326592 x bf16>
    %45 = llvm.load %44 invariant : !llvm.ptr -> bf16
    %46 = llvm.bitcast %45 : bf16 to i16
    %47 = llvm.zext %46 : i16 to i32
    %48 = llvm.shl %47, %0 : i32
    %49 = llvm.bitcast %48 : i32 to f32
    %50 = llvm.call @fused_computation__epilogue__convert_3(%arg0, %arg1, %25, %30, %36, %41, %49) : (!llvm.ptr, !llvm.ptr, i64, i64, i64, i64, f32) -> bf16
    %51 = llvm.add %40, %41 overflow<nsw> : i64
    %52 = llvm.getelementptr inbounds %arg2[0, %51] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.array<402653184 x bf16>
    llvm.store %50, %52 : bf16, !llvm.ptr
    %53 = llvm.add %41, %15 : i64
    llvm.br ^bb9(%53 : i64)
  ^bb11:  // pred: ^bb9
    %54 = llvm.add %36, %15 : i64
    llvm.br ^bb7(%54 : i64) {loop_annotation = #llvm.loop_annotation<unroll = <disable = true>>}
  ^bb12:  // pred: ^bb7
    %55 = llvm.add %30, %15 : i64
    llvm.br ^bb5(%55 : i64) {loop_annotation = #llvm.loop_annotation<unroll = <disable = true>>}
  ^bb13:  // pred: ^bb5
    %56 = llvm.add %23, %15 : i64
    llvm.br ^bb3(%56 : i64) {loop_annotation = #llvm.loop_annotation<unroll = <disable = true>>}
  ^bb14:  // pred: ^bb3
    llvm.br ^bb15(%14 : i64)
  ^bb15(%57: i64):  // 2 preds: ^bb14, ^bb25
    %58 = llvm.icmp "slt" %57, %13 : i64
    llvm.cond_br %58, ^bb16, ^bb26
  ^bb16:  // pred: ^bb15
    %59 = llvm.add %20, %57 overflow<nsw> : i64
    %60 = llvm.mul %57, %5 overflow<nsw> : i64
    %61 = llvm.add %21, %60 overflow<nsw> : i64
    %62 = llvm.mul %57, %2 overflow<nsw> : i64
    %63 = llvm.add %22, %62 overflow<nsw> : i64
    llvm.br ^bb17(%14 : i64)
  ^bb17(%64: i64):  // 2 preds: ^bb16, ^bb24
    %65 = llvm.icmp "slt" %64, %12 : i64
    llvm.cond_br %65, ^bb18, ^bb25
  ^bb18:  // pred: ^bb17
    %66 = llvm.mul %64, %4 overflow<nsw> : i64
    %67 = llvm.add %61, %66 overflow<nsw> : i64
    %68 = llvm.mul %64, %1 overflow<nsw> : i64
    %69 = llvm.add %63, %68 overflow<nsw> : i64
    llvm.br ^bb19(%14 : i64)
  ^bb19(%70: i64):  // 2 preds: ^bb18, ^bb23
    %71 = llvm.icmp "slt" %70, %11 : i64
    llvm.cond_br %71, ^bb20, ^bb24
  ^bb20:  // pred: ^bb19
    %72 = llvm.add %70, %11 overflow<nsw> : i64
    %73 = llvm.mul %70, %10 overflow<nsw> : i64
    %74 = llvm.add %67, %73 overflow<nsw> : i64
    %75 = llvm.add %69, %73 overflow<nsw> : i64
    llvm.br ^bb21(%14 : i64)
  ^bb21(%76: i64):  // 2 preds: ^bb20, ^bb22
    %77 = llvm.icmp "slt" %76, %10 : i64
    llvm.cond_br %77, ^bb22, ^bb23
  ^bb22:  // pred: ^bb21
    %78 = llvm.add %74, %76 overflow<nsw> : i64
    %79 = llvm.getelementptr inbounds %arg0[0, %78] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.array<201326592 x bf16>
    %80 = llvm.load %79 invariant : !llvm.ptr -> bf16
    %81 = llvm.bitcast %80 : bf16 to i16
    %82 = llvm.zext %81 : i16 to i32
    %83 = llvm.shl %82, %0 : i32
    %84 = llvm.bitcast %83 : i32 to f32
    %85 = llvm.call @fused_computation__epilogue__convert_3(%arg0, %arg1, %59, %64, %72, %76, %84) : (!llvm.ptr, !llvm.ptr, i64, i64, i64, i64, f32) -> bf16
    %86 = llvm.add %75, %76 overflow<nsw> : i64
    %87 = llvm.add %86, %4 overflow<nsw> : i64
    %88 = llvm.getelementptr inbounds %arg2[0, %87] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.array<402653184 x bf16>
    llvm.store %85, %88 : bf16, !llvm.ptr
    %89 = llvm.add %76, %15 : i64
    llvm.br ^bb21(%89 : i64)
  ^bb23:  // pred: ^bb21
    %90 = llvm.add %70, %15 : i64
    llvm.br ^bb19(%90 : i64) {loop_annotation = #llvm.loop_annotation<unroll = <disable = true>>}
  ^bb24:  // pred: ^bb19
    %91 = llvm.add %64, %15 : i64
    llvm.br ^bb17(%91 : i64) {loop_annotation = #llvm.loop_annotation<unroll = <disable = true>>}
  ^bb25:  // pred: ^bb17
    %92 = llvm.add %57, %15 : i64
    llvm.br ^bb15(%92 : i64) {loop_annotation = #llvm.loop_annotation<unroll = <disable = true>>}
  ^bb26:  // pred: ^bb15
    llvm.br ^bb27
  ^bb27:  // 3 preds: ^bb1, ^bb26, ^bb43
    llvm.br ^bb56
  ^bb28:  // pred: ^bb0
    %93 = llvm.icmp "sge" %arg3, %8 : i64
    %94 = llvm.icmp "sle" %arg3, %7 : i64
    %95 = llvm.and %93, %94 : i1
    %96 = llvm.mul %arg3, %13 overflow<nsw> : i64
    llvm.br ^bb29(%14 : i64)
  ^bb29(%97: i64):  // 2 preds: ^bb28, ^bb41
    %98 = llvm.icmp "slt" %97, %13 : i64
    llvm.cond_br %98, ^bb30, ^bb42
  ^bb30:  // pred: ^bb29
    %99 = llvm.add %96, %97 overflow<nsw> : i64
    %100 = llvm.icmp "sle" %99, %9 : i64
    %101 = llvm.and %100, %95 : i1
    llvm.cond_br %101, ^bb31, ^bb41
  ^bb31:  // pred: ^bb30
    %102 = llvm.mul %arg3, %6 overflow<nsw> : i64
    %103 = llvm.mul %97, %5 overflow<nsw> : i64
    %104 = llvm.add %102, %103 overflow<nsw> : i64
    %105 = llvm.mul %arg3, %3 overflow<nsw> : i64
    %106 = llvm.mul %97, %2 overflow<nsw> : i64
    %107 = llvm.add %105, %106 overflow<nsw> : i64
    llvm.br ^bb32(%14 : i64)
  ^bb32(%108: i64):  // 2 preds: ^bb31, ^bb39
    %109 = llvm.icmp "slt" %108, %12 : i64
    llvm.cond_br %109, ^bb33, ^bb40
  ^bb33:  // pred: ^bb32
    %110 = llvm.mul %108, %4 overflow<nsw> : i64
    %111 = llvm.add %104, %110 overflow<nsw> : i64
    %112 = llvm.mul %108, %1 overflow<nsw> : i64
    %113 = llvm.add %107, %112 overflow<nsw> : i64
    llvm.br ^bb34(%14 : i64)
  ^bb34(%114: i64):  // 2 preds: ^bb33, ^bb38
    %115 = llvm.icmp "slt" %114, %11 : i64
    llvm.cond_br %115, ^bb35, ^bb39
  ^bb35:  // pred: ^bb34
    %116 = llvm.mul %114, %10 overflow<nsw> : i64
    %117 = llvm.add %111, %116 overflow<nsw> : i64
    %118 = llvm.add %113, %116 overflow<nsw> : i64
    llvm.br ^bb36(%14 : i64)
  ^bb36(%119: i64):  // 2 preds: ^bb35, ^bb37
    %120 = llvm.icmp "slt" %119, %10 : i64
    llvm.cond_br %120, ^bb37, ^bb38
  ^bb37:  // pred: ^bb36
    %121 = llvm.add %117, %119 overflow<nsw> : i64
    %122 = llvm.getelementptr inbounds %arg1[0, %121] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.array<201326592 x bf16>
    %123 = llvm.load %122 invariant : !llvm.ptr -> bf16
    %124 = llvm.bitcast %123 : bf16 to i16
    %125 = llvm.zext %124 : i16 to i32
    %126 = llvm.shl %125, %0 : i32
    %127 = llvm.bitcast %126 : i32 to f32
    %128 = llvm.call @fused_computation__epilogue__convert_3(%arg0, %arg1, %99, %108, %114, %119, %127) : (!llvm.ptr, !llvm.ptr, i64, i64, i64, i64, f32) -> bf16
    %129 = llvm.add %118, %119 overflow<nsw> : i64
    %130 = llvm.getelementptr inbounds %arg2[0, %129] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.array<402653184 x bf16>
    llvm.store %128, %130 : bf16, !llvm.ptr
    %131 = llvm.add %119, %15 : i64
    llvm.br ^bb36(%131 : i64)
  ^bb38:  // pred: ^bb36
    %132 = llvm.add %114, %15 : i64
    llvm.br ^bb34(%132 : i64) {loop_annotation = #llvm.loop_annotation<unroll = <disable = true>>}
  ^bb39:  // pred: ^bb34
    %133 = llvm.add %108, %15 : i64
    llvm.br ^bb32(%133 : i64) {loop_annotation = #llvm.loop_annotation<unroll = <disable = true>>}
  ^bb40:  // pred: ^bb32
    llvm.br ^bb41
  ^bb41:  // 2 preds: ^bb30, ^bb40
    %134 = llvm.add %97, %15 : i64
    llvm.br ^bb29(%134 : i64) {loop_annotation = #llvm.loop_annotation<unroll = <disable = true>>}
  ^bb42:  // pred: ^bb29
    llvm.br ^bb43(%14 : i64)
  ^bb43(%135: i64):  // 2 preds: ^bb42, ^bb55
    %136 = llvm.icmp "slt" %135, %13 : i64
    llvm.cond_br %136, ^bb44, ^bb27
  ^bb44:  // pred: ^bb43
    %137 = llvm.add %96, %135 overflow<nsw> : i64
    %138 = llvm.icmp "sle" %137, %9 : i64
    %139 = llvm.and %138, %95 : i1
    llvm.cond_br %139, ^bb45, ^bb55
  ^bb45:  // pred: ^bb44
    %140 = llvm.mul %arg3, %6 overflow<nsw> : i64
    %141 = llvm.mul %135, %5 overflow<nsw> : i64
    %142 = llvm.add %140, %141 overflow<nsw> : i64
    %143 = llvm.mul %arg3, %3 overflow<nsw> : i64
    %144 = llvm.mul %135, %2 overflow<nsw> : i64
    %145 = llvm.add %143, %144 overflow<nsw> : i64
    llvm.br ^bb46(%14 : i64)
  ^bb46(%146: i64):  // 2 preds: ^bb45, ^bb53
    %147 = llvm.icmp "slt" %146, %12 : i64
    llvm.cond_br %147, ^bb47, ^bb54
  ^bb47:  // pred: ^bb46
    %148 = llvm.mul %146, %4 overflow<nsw> : i64
    %149 = llvm.add %142, %148 overflow<nsw> : i64
    %150 = llvm.mul %146, %1 overflow<nsw> : i64
    %151 = llvm.add %145, %150 overflow<nsw> : i64
    llvm.br ^bb48(%14 : i64)
  ^bb48(%152: i64):  // 2 preds: ^bb47, ^bb52
    %153 = llvm.icmp "slt" %152, %11 : i64
    llvm.cond_br %153, ^bb49, ^bb53
  ^bb49:  // pred: ^bb48
    %154 = llvm.add %152, %11 overflow<nsw> : i64
    %155 = llvm.mul %152, %10 overflow<nsw> : i64
    %156 = llvm.add %149, %155 overflow<nsw> : i64
    %157 = llvm.add %151, %155 overflow<nsw> : i64
    llvm.br ^bb50(%14 : i64)
  ^bb50(%158: i64):  // 2 preds: ^bb49, ^bb51
    %159 = llvm.icmp "slt" %158, %10 : i64
    llvm.cond_br %159, ^bb51, ^bb52
  ^bb51:  // pred: ^bb50
    %160 = llvm.add %156, %158 overflow<nsw> : i64
    %161 = llvm.getelementptr inbounds %arg0[0, %160] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.array<201326592 x bf16>
    %162 = llvm.load %161 invariant : !llvm.ptr -> bf16
    %163 = llvm.bitcast %162 : bf16 to i16
    %164 = llvm.zext %163 : i16 to i32
    %165 = llvm.shl %164, %0 : i32
    %166 = llvm.bitcast %165 : i32 to f32
    %167 = llvm.call @fused_computation__epilogue__convert_3(%arg0, %arg1, %137, %146, %154, %158, %166) : (!llvm.ptr, !llvm.ptr, i64, i64, i64, i64, f32) -> bf16
    %168 = llvm.add %157, %158 overflow<nsw> : i64
    %169 = llvm.add %168, %4 overflow<nsw> : i64
    %170 = llvm.getelementptr inbounds %arg2[0, %169] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.array<402653184 x bf16>
    llvm.store %167, %170 : bf16, !llvm.ptr
    %171 = llvm.add %158, %15 : i64
    llvm.br ^bb50(%171 : i64)
  ^bb52:  // pred: ^bb50
    %172 = llvm.add %152, %15 : i64
    llvm.br ^bb48(%172 : i64) {loop_annotation = #llvm.loop_annotation<unroll = <disable = true>>}
  ^bb53:  // pred: ^bb48
    %173 = llvm.add %146, %15 : i64
    llvm.br ^bb46(%173 : i64) {loop_annotation = #llvm.loop_annotation<unroll = <disable = true>>}
  ^bb54:  // pred: ^bb46
    llvm.br ^bb55
  ^bb55:  // 2 preds: ^bb44, ^bb54
    %174 = llvm.add %135, %15 : i64
    llvm.br ^bb43(%174 : i64) {loop_annotation = #llvm.loop_annotation<unroll = <disable = true>>}
  ^bb56:  // pred: ^bb27
    llvm.return
  }
  llvm.func internal @fused_computation__epilogue__convert_3(%arg0: !llvm.ptr {llvm.noalias, xla.invariant}, %arg1: !llvm.ptr {llvm.noalias, xla.invariant}, %arg2: i64 {xla.range = [0 : index, 127 : index]}, %arg3: i64 {xla.range = [0 : index, 3 : index]}, %arg4: i64 {xla.range = [0 : index, 383 : index]}, %arg5: i64 {xla.range = [0 : index, 2047 : index]}, %arg6: f32) -> bf16 attributes {sym_visibility = "private"} {
    %0 = llvm.call @xla.fptrunc.f32.to.bf16(%arg6) : (f32) -> bf16
    llvm.return %0 : bf16
  }
}