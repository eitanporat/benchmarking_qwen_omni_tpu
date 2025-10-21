module @slice_convert_fusion.2_kernel_module attributes {dlti.dl_spec = #dlti.dl_spec<index = 64 : i32>, xla.cpu_memory_region_name = "xla_cpu_emitter__loop_fusion_kernel_emitter__hlo_opcode__fusion"} {
  func.func @slice_convert_fusion.2(%arg0: tensor<4958208xbf16> {llvm.align = 64 : index, llvm.dereferenceable = 9916416 : index, xla.invariant, xla.slice_index = 0 : index}, %arg1: tensor<1239552xbf16> {llvm.align = 64 : index, llvm.dereferenceable = 2479104 : index, xla.slice_index = 1 : index}) -> tensor<1239552xbf16> attributes {xla.backend_kind = #xla.backend_kind<cpu>, xla.entry} {
    %c12 = arith.constant 12 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %c83 = arith.constant 83 : index
    %c1076 = arith.constant 1076 : index
    %c73 = arith.constant 73 : index
    %c13 = arith.constant 13 : index
    %0 = xla.workgroup_id  x {xla.range = [0 : index, 13 : index]}
    %1 = arith.cmpi sle, %0, %c12 : index
    %2 = scf.if %1 -> (tensor<1239552xbf16>) {
      %3 = arith.cmpi sge, %0, %c0 : index
      %4 = arith.andi %3, %1 : i1
      %5 = scf.if %4 -> (tensor<1239552xbf16>) {
        %6 = scf.for %arg2 = %c0 to %c83 step %c1 iter_args(%arg3 = %arg1) -> (tensor<1239552xbf16>) {
          %7 = scf.for %arg4 = %c0 to %c1076 step %c1 iter_args(%arg5 = %arg3) -> (tensor<1239552xbf16>) {
            %8 = xla.apply_indexing #xla.indexing_map<"(bl_x, d1, d2) -> (bl_x * 357232 + d1 * 4304 + d2 + 1076), domain: bl_x in [0, 12], d1 in [0, 82], d2 in [0, 1075]">(%0, %arg2, %arg4)
            %extracted = tensor.extract %arg0[%8] : tensor<4958208xbf16>
            %9 = xla.apply_indexing #xla.indexing_map<"(d0, bl_x, d2) -> (bl_x * 89308 + d2 * 1076 + d0), domain: d0 in [0, 1075], bl_x in [0, 12], d2 in [0, 82]">(%arg4, %0, %arg2)
            %inserted = tensor.insert %extracted into %arg5[%9] : tensor<1239552xbf16>
            scf.yield %inserted : tensor<1239552xbf16>
          }
          scf.yield %7 : tensor<1239552xbf16>
        } {loop_annotation = #llvm.loop_annotation<unroll = <disable = true>>}
        scf.yield %6 : tensor<1239552xbf16>
      } else {
        scf.yield %arg1 : tensor<1239552xbf16>
      }
      scf.yield %5 : tensor<1239552xbf16>
    } else {
      %3 = arith.cmpi eq, %0, %c13 : index
      %4 = scf.if %3 -> (tensor<1239552xbf16>) {
        %5 = scf.for %arg2 = %c0 to %c73 step %c1 iter_args(%arg3 = %arg1) -> (tensor<1239552xbf16>) {
          %6 = scf.for %arg4 = %c0 to %c1076 step %c1 iter_args(%arg5 = %arg3) -> (tensor<1239552xbf16>) {
            %7 = xla.apply_indexing #xla.indexing_map<"(d0, d1) -> (d0 * 4304 + d1 + 4645092), domain: d0 in [0, 72], d1 in [0, 1075]">(%arg2, %arg4)
            %extracted = tensor.extract %arg0[%7] : tensor<4958208xbf16>
            %8 = xla.apply_indexing #xla.indexing_map<"(d0, d1) -> (d1 * 1076 + d0 + 1161004), domain: d0 in [0, 1075], d1 in [0, 72]">(%arg4, %arg2)
            %inserted = tensor.insert %extracted into %arg5[%8] : tensor<1239552xbf16>
            scf.yield %inserted : tensor<1239552xbf16>
          }
          scf.yield %6 : tensor<1239552xbf16>
        } {loop_annotation = #llvm.loop_annotation<unroll = <disable = true>>}
        scf.yield %5 : tensor<1239552xbf16>
      } else {
        scf.yield %arg1 : tensor<1239552xbf16>
      }
      scf.yield %4 : tensor<1239552xbf16>
    }
    return %2 : tensor<1239552xbf16>
  }
}