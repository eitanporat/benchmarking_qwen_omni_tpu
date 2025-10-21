module @slice_convert_fusion.2_kernel_module attributes {dlti.dl_spec = #dlti.dl_spec<index = 64 : i32>, xla.cpu_memory_region_name = "xla_cpu_emitter__loop_fusion_kernel_emitter__hlo_opcode__fusion"} {
  func.func @slice_convert_fusion.2(%arg0: tensor<3981312xbf16> {llvm.align = 64 : index, llvm.dereferenceable = 7962624 : index, xla.invariant, xla.slice_index = 0 : index}, %arg1: tensor<995328xbf16> {llvm.align = 64 : index, llvm.dereferenceable = 1990656 : index, xla.slice_index = 1 : index}) -> tensor<995328xbf16> attributes {xla.backend_kind = #xla.backend_kind<cpu>, xla.entry} {
    %c12 = arith.constant 12 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %c62 = arith.constant 62 : index
    %c1152 = arith.constant 1152 : index
    %c58 = arith.constant 58 : index
    %c13 = arith.constant 13 : index
    %0 = xla.workgroup_id  x {xla.range = [0 : index, 13 : index]}
    %1 = arith.cmpi sle, %0, %c12 : index
    %2 = scf.if %1 -> (tensor<995328xbf16>) {
      %3 = arith.cmpi sge, %0, %c0 : index
      %4 = arith.andi %3, %1 : i1
      %5 = scf.if %4 -> (tensor<995328xbf16>) {
        %6 = scf.for %arg2 = %c0 to %c62 step %c1 iter_args(%arg3 = %arg1) -> (tensor<995328xbf16>) {
          %7 = scf.for %arg4 = %c0 to %c1152 step %c1 iter_args(%arg5 = %arg3) -> (tensor<995328xbf16>) {
            %8 = xla.apply_indexing #xla.indexing_map<"(d0, bl_x, d2) -> (bl_x * 71424 + d2 * 1152 + d0 + 995328), domain: d0 in [0, 1151], bl_x in [0, 12], d2 in [0, 61]">(%arg4, %0, %arg2)
            %extracted = tensor.extract %arg0[%8] : tensor<3981312xbf16>
            %9 = xla.apply_indexing #xla.indexing_map<"(d0, bl_x, d2) -> (bl_x * 71424 + d2 * 1152 + d0), domain: d0 in [0, 1151], bl_x in [0, 12], d2 in [0, 61]">(%arg4, %0, %arg2)
            %inserted = tensor.insert %extracted into %arg5[%9] : tensor<995328xbf16>
            scf.yield %inserted : tensor<995328xbf16>
          }
          scf.yield %7 : tensor<995328xbf16>
        } {loop_annotation = #llvm.loop_annotation<unroll = <disable = true>>}
        scf.yield %6 : tensor<995328xbf16>
      } else {
        scf.yield %arg1 : tensor<995328xbf16>
      }
      scf.yield %5 : tensor<995328xbf16>
    } else {
      %3 = arith.cmpi eq, %0, %c13 : index
      %4 = scf.if %3 -> (tensor<995328xbf16>) {
        %5 = scf.for %arg2 = %c0 to %c58 step %c1 iter_args(%arg3 = %arg1) -> (tensor<995328xbf16>) {
          %6 = scf.for %arg4 = %c0 to %c1152 step %c1 iter_args(%arg5 = %arg3) -> (tensor<995328xbf16>) {
            %7 = xla.apply_indexing #xla.indexing_map<"(d0, d1) -> (d1 * 1152 + d0 + 1923840), domain: d0 in [0, 1151], d1 in [0, 57]">(%arg4, %arg2)
            %extracted = tensor.extract %arg0[%7] : tensor<3981312xbf16>
            %8 = xla.apply_indexing #xla.indexing_map<"(d0, d1) -> (d1 * 1152 + d0 + 928512), domain: d0 in [0, 1151], d1 in [0, 57]">(%arg4, %arg2)
            %inserted = tensor.insert %extracted into %arg5[%8] : tensor<995328xbf16>
            scf.yield %inserted : tensor<995328xbf16>
          }
          scf.yield %6 : tensor<995328xbf16>
        } {loop_annotation = #llvm.loop_annotation<unroll = <disable = true>>}
        scf.yield %5 : tensor<995328xbf16>
      } else {
        scf.yield %arg1 : tensor<995328xbf16>
      }
      scf.yield %4 : tensor<995328xbf16>
    }
    return %2 : tensor<995328xbf16>
  }
}