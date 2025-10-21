module @concatenate_convert_fusion_kernel_module attributes {dlti.dl_spec = #dlti.dl_spec<index = 64 : i32>, xla.cpu_memory_region_name = "xla_cpu_emitter__concatenate_fusion_kernel_emitter__hlo_opcode__fusion"} {
  func.func @concatenate_convert_fusion(%arg0: tensor<1327104xbf16> {llvm.align = 64 : index, llvm.dereferenceable = 2654208 : index, xla.invariant, xla.slice_index = 0 : index}, %arg1: tensor<1327104xbf16> {llvm.align = 64 : index, llvm.dereferenceable = 2654208 : index, xla.invariant, xla.slice_index = 1 : index}, %arg2: tensor<1327104xbf16> {llvm.align = 64 : index, llvm.dereferenceable = 2654208 : index, xla.invariant, xla.slice_index = 2 : index}, %arg3: tensor<3981312xbf16> {llvm.align = 64 : index, llvm.dereferenceable = 7962624 : index, xla.slice_index = 3 : index}) -> tensor<3981312xbf16> attributes {xla.backend_kind = #xla.backend_kind<cpu>, xla.entry} {
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %c96 = arith.constant 96 : index
    %c1152 = arith.constant 1152 : index
    %c11 = arith.constant 11 : index
    %0 = xla.workgroup_id  x {xla.range = [0 : index, 11 : index]}
    %1 = arith.cmpi sge, %0, %c0 : index
    %2 = arith.cmpi sle, %0, %c11 : index
    %3 = arith.andi %1, %2 : i1
    %4 = scf.if %3 -> (tensor<3981312xbf16>) {
      %7 = xla.apply_indexing #xla.indexing_map<"(bl_x) -> (bl_x floordiv 3), domain: bl_x in [0, 11]">(%0)
      %8 = scf.for %arg4 = %c0 to %c96 step %c1 iter_args(%arg5 = %arg3) -> (tensor<3981312xbf16>) {
        %9 = xla.apply_indexing #xla.indexing_map<"(bl_x, d1) -> ((bl_x mod 3) * 96 + d1), domain: bl_x in [0, 11], d1 in [0, 95]">(%0, %arg4)
        %10 = scf.for %arg6 = %c0 to %c1152 step %c1 iter_args(%arg7 = %arg5) -> (tensor<3981312xbf16>) {
          %11 = xla.apply_indexing #xla.indexing_map<"(d0, bl_x, d2) -> (bl_x * 110592 + d2 * 1152 + d0), domain: d0 in [0, 1151], bl_x in [0, 11], d2 in [0, 95]">(%arg6, %0, %arg4)
          %extracted = tensor.extract %arg2[%11] : tensor<1327104xbf16>
          %12 = arith.extf %extracted : bf16 to f32
          %pure_call = xla.pure_call @fused_computation__epilogue__convert_4(%arg0, %arg1, %arg2, %7, %9, %arg6, %12) : (tensor<1327104xbf16>, tensor<1327104xbf16>, tensor<1327104xbf16>, index, index, index, f32) -> bf16
          %13 = xla.apply_indexing #xla.indexing_map<"(d0, bl_x, d2) -> ((bl_x mod 3) * 110592 + (bl_x floordiv 3) * 995328 + d2 * 1152 + d0), domain: d0 in [0, 1151], bl_x in [0, 11], d2 in [0, 95]">(%arg6, %0, %arg4)
          %inserted = tensor.insert %pure_call into %arg7[%13] : tensor<3981312xbf16>
          scf.yield %inserted : tensor<3981312xbf16>
        }
        scf.yield %10 : tensor<3981312xbf16>
      } {loop_annotation = #llvm.loop_annotation<unroll = <disable = true>>}
      scf.yield %8 : tensor<3981312xbf16>
    } else {
      scf.yield %arg3 : tensor<3981312xbf16>
    }
    %5 = scf.if %3 -> (tensor<3981312xbf16>) {
      %7 = xla.apply_indexing #xla.indexing_map<"(bl_x) -> (bl_x floordiv 3), domain: bl_x in [0, 11]">(%0)
      %8 = scf.for %arg4 = %c0 to %c96 step %c1 iter_args(%arg5 = %4) -> (tensor<3981312xbf16>) {
        %9 = xla.apply_indexing #xla.indexing_map<"(bl_x, d1) -> ((bl_x mod 3) * 96 + d1 + 288), domain: bl_x in [0, 11], d1 in [0, 95]">(%0, %arg4)
        %10 = scf.for %arg6 = %c0 to %c1152 step %c1 iter_args(%arg7 = %arg5) -> (tensor<3981312xbf16>) {
          %11 = xla.apply_indexing #xla.indexing_map<"(d0, bl_x, d2) -> (bl_x * 110592 + d2 * 1152 + d0), domain: d0 in [0, 1151], bl_x in [0, 11], d2 in [0, 95]">(%arg6, %0, %arg4)
          %extracted = tensor.extract %arg1[%11] : tensor<1327104xbf16>
          %12 = arith.extf %extracted : bf16 to f32
          %pure_call = xla.pure_call @fused_computation__epilogue__convert_4(%arg0, %arg1, %arg2, %7, %9, %arg6, %12) : (tensor<1327104xbf16>, tensor<1327104xbf16>, tensor<1327104xbf16>, index, index, index, f32) -> bf16
          %13 = xla.apply_indexing #xla.indexing_map<"(d0, bl_x, d2) -> ((bl_x mod 3) * 110592 + (bl_x floordiv 3) * 995328 + d2 * 1152 + d0 + 331776), domain: d0 in [0, 1151], bl_x in [0, 11], d2 in [0, 95]">(%arg6, %0, %arg4)
          %inserted = tensor.insert %pure_call into %arg7[%13] : tensor<3981312xbf16>
          scf.yield %inserted : tensor<3981312xbf16>
        }
        scf.yield %10 : tensor<3981312xbf16>
      } {loop_annotation = #llvm.loop_annotation<unroll = <disable = true>>}
      scf.yield %8 : tensor<3981312xbf16>
    } else {
      scf.yield %4 : tensor<3981312xbf16>
    }
    %6 = scf.if %3 -> (tensor<3981312xbf16>) {
      %7 = xla.apply_indexing #xla.indexing_map<"(bl_x) -> (bl_x floordiv 3), domain: bl_x in [0, 11]">(%0)
      %8 = scf.for %arg4 = %c0 to %c96 step %c1 iter_args(%arg5 = %5) -> (tensor<3981312xbf16>) {
        %9 = xla.apply_indexing #xla.indexing_map<"(bl_x, d1) -> ((bl_x mod 3) * 96 + d1 + 576), domain: bl_x in [0, 11], d1 in [0, 95]">(%0, %arg4)
        %10 = scf.for %arg6 = %c0 to %c1152 step %c1 iter_args(%arg7 = %arg5) -> (tensor<3981312xbf16>) {
          %11 = xla.apply_indexing #xla.indexing_map<"(d0, bl_x, d2) -> (bl_x * 110592 + d2 * 1152 + d0), domain: d0 in [0, 1151], bl_x in [0, 11], d2 in [0, 95]">(%arg6, %0, %arg4)
          %extracted = tensor.extract %arg0[%11] : tensor<1327104xbf16>
          %12 = arith.extf %extracted : bf16 to f32
          %pure_call = xla.pure_call @fused_computation__epilogue__convert_4(%arg0, %arg1, %arg2, %7, %9, %arg6, %12) : (tensor<1327104xbf16>, tensor<1327104xbf16>, tensor<1327104xbf16>, index, index, index, f32) -> bf16
          %13 = xla.apply_indexing #xla.indexing_map<"(d0, bl_x, d2) -> ((bl_x mod 3) * 110592 + (bl_x floordiv 3) * 995328 + d2 * 1152 + d0 + 663552), domain: d0 in [0, 1151], bl_x in [0, 11], d2 in [0, 95]">(%arg6, %0, %arg4)
          %inserted = tensor.insert %pure_call into %arg7[%13] : tensor<3981312xbf16>
          scf.yield %inserted : tensor<3981312xbf16>
        }
        scf.yield %10 : tensor<3981312xbf16>
      } {loop_annotation = #llvm.loop_annotation<unroll = <disable = true>>}
      scf.yield %8 : tensor<3981312xbf16>
    } else {
      scf.yield %5 : tensor<3981312xbf16>
    }
    return %6 : tensor<3981312xbf16>
  }
  func.func private @fused_computation__epilogue__convert_4(%arg0: tensor<1327104xbf16> {xla.invariant, xla.slice_index = 0 : index}, %arg1: tensor<1327104xbf16> {xla.invariant, xla.slice_index = 1 : index}, %arg2: tensor<1327104xbf16> {xla.invariant, xla.slice_index = 2 : index}, %arg3: index {xla.range = [0 : index, 3 : index]}, %arg4: index {xla.range = [0 : index, 863 : index]}, %arg5: index {xla.range = [0 : index, 1151 : index]}, %arg6: f32) -> bf16 attributes {llvm.linkage = #llvm.linkage<internal>} {
    %0 = arith.truncf %arg6 : f32 to bf16
    return %0 : bf16
  }
}