module @slice_convert_fusion.1_kernel_module attributes {dlti.dl_spec = #dlti.dl_spec<index = 64 : i32>, xla.cpu_memory_region_name = "xla_cpu_emitter__loop_fusion_kernel_emitter__hlo_opcode__fusion"} {
  func.func @slice_convert_fusion.1(%arg0: tensor<1327104xbf16> {llvm.align = 64 : index, llvm.dereferenceable = 2654208 : index, xla.invariant, xla.slice_index = 0 : index}, %arg1: tensor<331776xbf16> {llvm.align = 64 : index, llvm.dereferenceable = 663552 : index, xla.slice_index = 1 : index}) -> tensor<331776xbf16> attributes {xla.backend_kind = #xla.backend_kind<cpu>, xla.entry} {
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %c96 = arith.constant 96 : index
    %c288 = arith.constant 288 : index
    %c11 = arith.constant 11 : index
    %0 = xla.workgroup_id  x {xla.range = [0 : index, 11 : index]}
    %1 = arith.cmpi sge, %0, %c0 : index
    %2 = arith.cmpi sle, %0, %c11 : index
    %3 = arith.andi %1, %2 : i1
    %4 = scf.if %3 -> (tensor<331776xbf16>) {
      %5 = scf.for %arg2 = %c0 to %c96 step %c1 iter_args(%arg3 = %arg1) -> (tensor<331776xbf16>) {
        %6 = scf.for %arg4 = %c0 to %c288 step %c1 iter_args(%arg5 = %arg3) -> (tensor<331776xbf16>) {
          %7 = xla.apply_indexing #xla.indexing_map<"(bl_x, d1, d2) -> (bl_x * 110592 + d1 * 1152 + d2 + 576), domain: bl_x in [0, 11], d1 in [0, 95], d2 in [0, 287]">(%0, %arg2, %arg4)
          %extracted = tensor.extract %arg0[%7] : tensor<1327104xbf16>
          %8 = xla.apply_indexing #xla.indexing_map<"(d0, bl_x, d2) -> (bl_x * 27648 + d2 * 288 + d0), domain: d0 in [0, 287], bl_x in [0, 11], d2 in [0, 95]">(%arg4, %0, %arg2)
          %inserted = tensor.insert %extracted into %arg5[%8] : tensor<331776xbf16>
          scf.yield %inserted : tensor<331776xbf16>
        }
        scf.yield %6 : tensor<331776xbf16>
      } {loop_annotation = #llvm.loop_annotation<unroll = <disable = true>>}
      scf.yield %5 : tensor<331776xbf16>
    } else {
      scf.yield %arg1 : tensor<331776xbf16>
    }
    return %4 : tensor<331776xbf16>
  }
}