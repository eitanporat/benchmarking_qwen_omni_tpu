module @slice_convert_fusion_kernel_module attributes {dlti.dl_spec = #dlti.dl_spec<index = 64 : i32>, xla.cpu_memory_region_name = "xla_cpu_emitter__loop_fusion_kernel_emitter__hlo_opcode__fusion"} {
  func.func @slice_convert_fusion(%arg0: tensor<3456xbf16> {llvm.align = 64 : index, llvm.dereferenceable = 6912 : index, xla.invariant, xla.slice_index = 0 : index}, %arg1: tensor<1152xbf16> {llvm.align = 64 : index, llvm.dereferenceable = 2304 : index, xla.slice_index = 1 : index}) -> tensor<1152xbf16> attributes {xla.backend_kind = #xla.backend_kind<cpu>, xla.entry} {
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %c1152 = arith.constant 1152 : index
    %0 = scf.for %arg2 = %c0 to %c1152 step %c1 iter_args(%arg3 = %arg1) -> (tensor<1152xbf16>) {
      %1 = xla.apply_indexing #xla.indexing_map<"(d0) -> (d0 + 2304), domain: d0 in [0, 1151]">(%arg2)
      %extracted = tensor.extract %arg0[%1] : tensor<3456xbf16>
      %inserted = tensor.insert %extracted into %arg3[%arg2] : tensor<1152xbf16>
      scf.yield %inserted : tensor<1152xbf16>
    }
    return %0 : tensor<1152xbf16>
  }
}