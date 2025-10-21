module @slice_convert_fusion.1_kernel_module attributes {dlti.dl_spec = #dlti.dl_spec<index = 64 : i32>, xla.cpu_memory_region_name = "xla_cpu_emitter__loop_fusion_kernel_emitter__hlo_opcode__fusion"} {
  func.func @slice_convert_fusion.1(%arg0: tensor<1152x1152xbf16> {llvm.align = 64 : index, llvm.dereferenceable = 2654208 : index, xla.invariant, xla.slice_index = 0 : index}, %arg1: tensor<1152x288xbf16> {llvm.align = 64 : index, llvm.dereferenceable = 663552 : index, xla.slice_index = 1 : index}) -> tensor<1152x288xbf16> attributes {xla.backend_kind = #xla.backend_kind<cpu>, xla.entry} {
    %0 = xla.workgroup_id  x {xla.range = [0 : index, 11 : index]}
    %1 = xla.workgroup_id  y {xla.range = [0 : index, 0 : index]}
    %2 = xla.workgroup_id  z {xla.range = [0 : index, 0 : index]}
    %3 = scf.forall (%arg2, %arg3, %arg4) in (1, 1, 1) shared_outs(%arg5 = %arg1) -> (tensor<1152x288xbf16>) {
      %xla_loop = xla.loop (%arg2, %arg3, %arg4, %0, %1, %2)[%i, %j] -> (%ra, %rb) in #xla.indexing_map<"(th_x, th_y, th_z, bl_x, bl_y, bl_z)[s0, s1] -> (bl_x * 96 + s0, s1), domain: th_x in [0, 0], th_y in [0, 0], th_z in [0, 0], bl_x in [0, 11], bl_y in [0, 0], bl_z in [0, 0], s0 in [0, 95], s1 in [0, 287]"> iter_args(%iter = %arg5) -> (tensor<1152x288xbf16>) {
        %pure_call = xla.pure_call @fused_computation_1_convert_10(%arg0, %ra, %rb) : (tensor<1152x1152xbf16>, index, index) -> bf16
        %inserted = tensor.insert %pure_call into %iter[%ra, %rb] : tensor<1152x288xbf16>
        xla.yield %inserted : tensor<1152x288xbf16>
      }
      scf.forall.in_parallel {
        tensor.parallel_insert_slice %xla_loop into %arg5[0, 0] [1152, 288] [1, 1] : tensor<1152x288xbf16> into tensor<1152x288xbf16>
      }
    }
    return %3 : tensor<1152x288xbf16>
  }
  func.func private @fused_computation_1_convert_10(%arg0: tensor<1152x1152xbf16>, %arg1: index {xla.range = [0 : index, 1151 : index]}, %arg2: index {xla.range = [0 : index, 287 : index]}) -> bf16 attributes {llvm.linkage = #llvm.linkage<internal>} {
    %0 = xla.apply_indexing #xla.indexing_map<"(d0, d1) -> (d1 + 576), domain: d0 in [0, 1151], d1 in [0, 287]">(%arg1, %arg2)
    %extracted = tensor.extract %arg0[%arg1, %0] : tensor<1152x1152xbf16>
    %1 = arith.extf %extracted : bf16 to f32
    %2 = arith.truncf %1 : f32 to bf16
    return %2 : bf16
  }
}