module @slice_convert_fusion.3_kernel_module attributes {dlti.dl_spec = #dlti.dl_spec<index = 64 : i32>, xla.cpu_memory_region_name = "xla_cpu_emitter__loop_fusion_kernel_emitter__hlo_opcode__fusion"} {
  func.func @slice_convert_fusion.3(%arg0: tensor<128x1536x2048xbf16> {llvm.align = 64 : index, llvm.dereferenceable = 805306368 : index, xla.invariant, xla.slice_index = 0 : index}, %arg1: tensor<128x384x2048xbf16> {llvm.align = 64 : index, llvm.dereferenceable = 201326592 : index, xla.slice_index = 1 : index}) -> tensor<128x384x2048xbf16> attributes {xla.backend_kind = #xla.backend_kind<cpu>, xla.entry} {
    %0 = xla.workgroup_id  x {xla.range = [0 : index, 13 : index]}
    %1 = xla.workgroup_id  y {xla.range = [0 : index, 0 : index]}
    %2 = xla.workgroup_id  z {xla.range = [0 : index, 0 : index]}
    %3 = scf.forall (%arg2, %arg3, %arg4) in (1, 1, 1) shared_outs(%arg5 = %arg1) -> (tensor<128x384x2048xbf16>) {
      %xla_loop = xla.loop (%arg2, %arg3, %arg4, %0, %1, %2)[%i, %j, %k] -> (%ra, %rb, %rc) in #xla.indexing_map<"(th_x, th_y, th_z, bl_x, bl_y, bl_z)[s0, s1, s2] -> (bl_x * 10 + s0, s1, s2), domain: th_x in [0, 0], th_y in [0, 0], th_z in [0, 0], bl_x in [0, 13], bl_y in [0, 0], bl_z in [0, 0], s0 in [0, 9], s1 in [0, 383], s2 in [0, 2047], bl_x * 10 + s0 in [0, 127]"> iter_args(%iter = %arg5) -> (tensor<128x384x2048xbf16>) {
        %pure_call = xla.pure_call @fused_computation_3_convert_14(%arg0, %ra, %rb, %rc) : (tensor<128x1536x2048xbf16>, index, index, index) -> bf16
        %inserted = tensor.insert %pure_call into %iter[%ra, %rb, %rc] : tensor<128x384x2048xbf16>
        xla.yield %inserted : tensor<128x384x2048xbf16>
      }
      scf.forall.in_parallel {
        tensor.parallel_insert_slice %xla_loop into %arg5[0, 0, 0] [128, 384, 2048] [1, 1, 1] : tensor<128x384x2048xbf16> into tensor<128x384x2048xbf16>
      }
    }
    return %3 : tensor<128x384x2048xbf16>
  }
  func.func private @fused_computation_3_convert_14(%arg0: tensor<128x1536x2048xbf16>, %arg1: index {xla.range = [0 : index, 127 : index]}, %arg2: index {xla.range = [0 : index, 383 : index]}, %arg3: index {xla.range = [0 : index, 2047 : index]}) -> bf16 attributes {llvm.linkage = #llvm.linkage<internal>} {
    %extracted = tensor.extract %arg0[%arg1, %arg2, %arg3] : tensor<128x1536x2048xbf16>
    %0 = arith.extf %extracted : bf16 to f32
    %1 = arith.truncf %0 : f32 to bf16
    return %1 : bf16
  }
}