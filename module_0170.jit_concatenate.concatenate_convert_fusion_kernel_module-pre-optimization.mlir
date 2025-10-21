module @concatenate_convert_fusion_kernel_module attributes {dlti.dl_spec = #dlti.dl_spec<index = 64 : i32>, xla.cpu_memory_region_name = "xla_cpu_emitter__concatenate_fusion_kernel_emitter__hlo_opcode__fusion"} {
  func.func @concatenate_convert_fusion(%arg0: tensor<128x4x192x2048xbf16> {llvm.align = 64 : index, llvm.dereferenceable = 402653184 : index, xla.invariant, xla.slice_index = 0 : index}, %arg1: tensor<128x4x192x2048xbf16> {llvm.align = 64 : index, llvm.dereferenceable = 402653184 : index, xla.invariant, xla.slice_index = 1 : index}, %arg2: tensor<128x4x384x2048xbf16> {llvm.align = 64 : index, llvm.dereferenceable = 805306368 : index, xla.slice_index = 2 : index}) -> tensor<128x4x384x2048xbf16> attributes {xla.backend_kind = #xla.backend_kind<cpu>, xla.entry} {
    %0 = xla.workgroup_id  x {xla.range = [0 : index, 13 : index]}
    %1 = xla.workgroup_id  y {xla.range = [0 : index, 0 : index]}
    %2 = xla.workgroup_id  z {xla.range = [0 : index, 0 : index]}
    %3 = scf.forall (%arg3, %arg4, %arg5) in (1, 1, 1) shared_outs(%arg6 = %arg2) -> (tensor<128x4x384x2048xbf16>) {
      %xla_loop = xla.loop (%arg3, %arg4, %arg5, %0, %1, %2)[%i, %j, %k, %l] -> (%ra, %rb, %rc, %rd) in #xla.indexing_map<"(th_x, th_y, th_z, bl_x, bl_y, bl_z)[s0, s1, s2, s3] -> (bl_x * 10 + s0, s1, s2, s3), domain: th_x in [0, 0], th_y in [0, 0], th_z in [0, 0], bl_x in [0, 13], bl_y in [0, 0], bl_z in [0, 0], s0 in [0, 9], s1 in [0, 3], s2 in [0, 191], s3 in [0, 2047], bl_x * 10 + s0 in [0, 127]"> iter_args(%iter = %arg2) -> (tensor<128x4x384x2048xbf16>) {
        %4 = xla.apply_indexing #xla.indexing_map<"(th_x, th_y, th_z, bl_x, bl_y, bl_z)[s0, s1, s2, s3] -> (bl_x * 10 + s0), domain: th_x in [0, 0], th_y in [0, 0], th_z in [0, 0], bl_x in [0, 13], bl_y in [0, 0], bl_z in [0, 0], s0 in [0, 9], s1 in [0, 3], s2 in [0, 191], s3 in [0, 2047]">(%arg3, %arg4, %arg5, %0, %1, %2)[%i, %j, %k, %l]
        %pure_call = xla.pure_call @fused_computation_convert_5(%arg0, %arg1, %4, %j, %k, %l) : (tensor<128x4x192x2048xbf16>, tensor<128x4x192x2048xbf16>, index, index, index, index) -> f32
        %pure_call_1 = xla.pure_call @fused_computation__epilogue__convert_3(%arg0, %arg1, %ra, %rb, %rc, %rd, %pure_call) : (tensor<128x4x192x2048xbf16>, tensor<128x4x192x2048xbf16>, index, index, index, index, f32) -> bf16
        %inserted = tensor.insert %pure_call_1 into %iter[%ra, %rb, %rc, %rd] : tensor<128x4x384x2048xbf16>
        xla.yield %inserted : tensor<128x4x384x2048xbf16>
      }
      %xla_loop_0 = xla.loop (%arg3, %arg4, %arg5, %0, %1, %2)[%i, %j, %k, %l] -> (%ra, %rb, %rc, %rd) in #xla.indexing_map<"(th_x, th_y, th_z, bl_x, bl_y, bl_z)[s0, s1, s2, s3] -> (bl_x * 10 + s0, s1, s2 + 192, s3), domain: th_x in [0, 0], th_y in [0, 0], th_z in [0, 0], bl_x in [0, 13], bl_y in [0, 0], bl_z in [0, 0], s0 in [0, 9], s1 in [0, 3], s2 in [0, 191], s3 in [0, 2047], bl_x * 10 + s0 in [0, 127]"> iter_args(%iter = %xla_loop) -> (tensor<128x4x384x2048xbf16>) {
        %4 = xla.apply_indexing #xla.indexing_map<"(th_x, th_y, th_z, bl_x, bl_y, bl_z)[s0, s1, s2, s3] -> (bl_x * 10 + s0), domain: th_x in [0, 0], th_y in [0, 0], th_z in [0, 0], bl_x in [0, 13], bl_y in [0, 0], bl_z in [0, 0], s0 in [0, 9], s1 in [0, 3], s2 in [0, 191], s3 in [0, 2047]">(%arg3, %arg4, %arg5, %0, %1, %2)[%i, %j, %k, %l]
        %pure_call = xla.pure_call @fused_computation_convert_4(%arg0, %arg1, %4, %j, %k, %l) : (tensor<128x4x192x2048xbf16>, tensor<128x4x192x2048xbf16>, index, index, index, index) -> f32
        %pure_call_1 = xla.pure_call @fused_computation__epilogue__convert_3(%arg0, %arg1, %ra, %rb, %rc, %rd, %pure_call) : (tensor<128x4x192x2048xbf16>, tensor<128x4x192x2048xbf16>, index, index, index, index, f32) -> bf16
        %inserted = tensor.insert %pure_call_1 into %iter[%ra, %rb, %rc, %rd] : tensor<128x4x384x2048xbf16>
        xla.yield %inserted : tensor<128x4x384x2048xbf16>
      }
      scf.forall.in_parallel {
        tensor.parallel_insert_slice %xla_loop_0 into %arg6[0, 0, 0, 0] [128, 4, 384, 2048] [1, 1, 1, 1] : tensor<128x4x384x2048xbf16> into tensor<128x4x384x2048xbf16>
      }
    }
    return %3 : tensor<128x4x384x2048xbf16>
  }
  func.func private @fused_computation_convert_3(%arg0: tensor<128x4x192x2048xbf16>, %arg1: tensor<128x4x192x2048xbf16>, %arg2: index {xla.range = [0 : index, 127 : index]}, %arg3: index {xla.range = [0 : index, 3 : index]}, %arg4: index {xla.range = [0 : index, 383 : index]}, %arg5: index {xla.range = [0 : index, 2047 : index]}) -> bf16 attributes {llvm.linkage = #llvm.linkage<internal>} {
    %pure_call = xla.pure_call @fused_computation_concatenate_0(%arg0, %arg1, %arg2, %arg3, %arg4, %arg5) : (tensor<128x4x192x2048xbf16>, tensor<128x4x192x2048xbf16>, index, index, index, index) -> f32
    %0 = arith.truncf %pure_call : f32 to bf16
    return %0 : bf16
  }
  func.func private @fused_computation_concatenate_0(%arg0: tensor<128x4x192x2048xbf16>, %arg1: tensor<128x4x192x2048xbf16>, %arg2: index {xla.range = [0 : index, 127 : index]}, %arg3: index {xla.range = [0 : index, 3 : index]}, %arg4: index {xla.range = [0 : index, 383 : index]}, %arg5: index {xla.range = [0 : index, 2047 : index]}) -> f32 attributes {llvm.linkage = #llvm.linkage<internal>} {
    %c192 = arith.constant 192 : index
    %0 = arith.cmpi ult, %arg4, %c192 : index
    %1 = scf.if %0 -> (f32) {
      %c0 = arith.constant 0 : index
      %2 = arith.subi %arg4, %c0 : index
      %pure_call = xla.pure_call @fused_computation_convert_5(%arg0, %arg1, %arg2, %arg3, %2, %arg5) : (tensor<128x4x192x2048xbf16>, tensor<128x4x192x2048xbf16>, index, index, index, index) -> f32
      scf.yield %pure_call : f32
    } else {
      %c192_0 = arith.constant 192 : index
      %2 = arith.subi %arg4, %c192_0 : index
      %pure_call = xla.pure_call @fused_computation_convert_4(%arg0, %arg1, %arg2, %arg3, %2, %arg5) : (tensor<128x4x192x2048xbf16>, tensor<128x4x192x2048xbf16>, index, index, index, index) -> f32
      scf.yield %pure_call : f32
    }
    return %1 : f32
  }
  func.func private @fused_computation_convert_4(%arg0: tensor<128x4x192x2048xbf16>, %arg1: tensor<128x4x192x2048xbf16>, %arg2: index {xla.range = [0 : index, 127 : index]}, %arg3: index {xla.range = [0 : index, 3 : index]}, %arg4: index {xla.range = [0 : index, 191 : index]}, %arg5: index {xla.range = [0 : index, 2047 : index]}) -> f32 attributes {llvm.linkage = #llvm.linkage<internal>} {
    %extracted = tensor.extract %arg0[%arg2, %arg3, %arg4, %arg5] : tensor<128x4x192x2048xbf16>
    %0 = arith.extf %extracted : bf16 to f32
    return %0 : f32
  }
  func.func private @fused_computation_convert_5(%arg0: tensor<128x4x192x2048xbf16>, %arg1: tensor<128x4x192x2048xbf16>, %arg2: index {xla.range = [0 : index, 127 : index]}, %arg3: index {xla.range = [0 : index, 3 : index]}, %arg4: index {xla.range = [0 : index, 191 : index]}, %arg5: index {xla.range = [0 : index, 2047 : index]}) -> f32 attributes {llvm.linkage = #llvm.linkage<internal>} {
    %extracted = tensor.extract %arg1[%arg2, %arg3, %arg4, %arg5] : tensor<128x4x192x2048xbf16>
    %0 = arith.extf %extracted : bf16 to f32
    return %0 : f32
  }
  func.func private @fused_computation__epilogue__convert_3(%arg0: tensor<128x4x192x2048xbf16>, %arg1: tensor<128x4x192x2048xbf16>, %arg2: index {xla.range = [0 : index, 127 : index]}, %arg3: index {xla.range = [0 : index, 3 : index]}, %arg4: index {xla.range = [0 : index, 383 : index]}, %arg5: index {xla.range = [0 : index, 2047 : index]}, %arg6: f32) -> bf16 attributes {llvm.linkage = #llvm.linkage<internal>} {
    %0 = arith.truncf %arg6 : f32 to bf16
    return %0 : bf16
  }
}