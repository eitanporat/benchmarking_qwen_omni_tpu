module @concatenate_convert_fusion_kernel_module attributes {dlti.dl_spec = #dlti.dl_spec<index = 64 : i32>, xla.cpu_memory_region_name = "xla_cpu_emitter__concatenate_fusion_kernel_emitter__hlo_opcode__fusion"} {
  func.func @concatenate_convert_fusion(%arg0: tensor<4x288x1152xbf16> {llvm.align = 64 : index, llvm.dereferenceable = 2654208 : index, xla.invariant, xla.slice_index = 0 : index}, %arg1: tensor<4x288x1152xbf16> {llvm.align = 64 : index, llvm.dereferenceable = 2654208 : index, xla.invariant, xla.slice_index = 1 : index}, %arg2: tensor<4x288x1152xbf16> {llvm.align = 64 : index, llvm.dereferenceable = 2654208 : index, xla.invariant, xla.slice_index = 2 : index}, %arg3: tensor<4x864x1152xbf16> {llvm.align = 64 : index, llvm.dereferenceable = 7962624 : index, xla.slice_index = 3 : index}) -> tensor<4x864x1152xbf16> attributes {xla.backend_kind = #xla.backend_kind<cpu>, xla.entry} {
    %0 = xla.workgroup_id  x {xla.range = [0 : index, 11 : index]}
    %1 = xla.workgroup_id  y {xla.range = [0 : index, 0 : index]}
    %2 = xla.workgroup_id  z {xla.range = [0 : index, 0 : index]}
    %3 = scf.forall (%arg4, %arg5, %arg6) in (1, 1, 1) shared_outs(%arg7 = %arg3) -> (tensor<4x864x1152xbf16>) {
      %xla_loop = xla.loop (%arg4, %arg5, %arg6, %0, %1, %2)[%i, %j] -> (%ra, %rb, %rc) in #xla.indexing_map<"(th_x, th_y, th_z, bl_x, bl_y, bl_z)[s0, s1] -> (bl_x floordiv 3, (bl_x mod 3) * 96 + s0, s1), domain: th_x in [0, 0], th_y in [0, 0], th_z in [0, 0], bl_x in [0, 11], bl_y in [0, 0], bl_z in [0, 0], s0 in [0, 95], s1 in [0, 1151]"> iter_args(%iter = %arg3) -> (tensor<4x864x1152xbf16>) {
        %4 = xla.apply_indexing #xla.indexing_map<"(th_x, th_y, th_z, bl_x, bl_y, bl_z)[s0, s1] -> (bl_x floordiv 3), domain: th_x in [0, 0], th_y in [0, 0], th_z in [0, 0], bl_x in [0, 11], bl_y in [0, 0], bl_z in [0, 0], s0 in [0, 95], s1 in [0, 1151]">(%arg4, %arg5, %arg6, %0, %1, %2)[%i, %j]
        %5 = xla.apply_indexing #xla.indexing_map<"(th_x, th_y, th_z, bl_x, bl_y, bl_z)[s0, s1] -> ((bl_x mod 3) * 96 + s0), domain: th_x in [0, 0], th_y in [0, 0], th_z in [0, 0], bl_x in [0, 11], bl_y in [0, 0], bl_z in [0, 0], s0 in [0, 95], s1 in [0, 1151]">(%arg4, %arg5, %arg6, %0, %1, %2)[%i, %j]
        %pure_call = xla.pure_call @fused_computation_convert_7(%arg0, %arg1, %arg2, %4, %5, %j) : (tensor<4x288x1152xbf16>, tensor<4x288x1152xbf16>, tensor<4x288x1152xbf16>, index, index, index) -> f32
        %pure_call_2 = xla.pure_call @fused_computation__epilogue__convert_4(%arg0, %arg1, %arg2, %ra, %rb, %rc, %pure_call) : (tensor<4x288x1152xbf16>, tensor<4x288x1152xbf16>, tensor<4x288x1152xbf16>, index, index, index, f32) -> bf16
        %inserted = tensor.insert %pure_call_2 into %iter[%ra, %rb, %rc] : tensor<4x864x1152xbf16>
        xla.yield %inserted : tensor<4x864x1152xbf16>
      }
      %xla_loop_0 = xla.loop (%arg4, %arg5, %arg6, %0, %1, %2)[%i, %j] -> (%ra, %rb, %rc) in #xla.indexing_map<"(th_x, th_y, th_z, bl_x, bl_y, bl_z)[s0, s1] -> (bl_x floordiv 3, (bl_x mod 3) * 96 + s0 + 288, s1), domain: th_x in [0, 0], th_y in [0, 0], th_z in [0, 0], bl_x in [0, 11], bl_y in [0, 0], bl_z in [0, 0], s0 in [0, 95], s1 in [0, 1151]"> iter_args(%iter = %xla_loop) -> (tensor<4x864x1152xbf16>) {
        %4 = xla.apply_indexing #xla.indexing_map<"(th_x, th_y, th_z, bl_x, bl_y, bl_z)[s0, s1] -> (bl_x floordiv 3), domain: th_x in [0, 0], th_y in [0, 0], th_z in [0, 0], bl_x in [0, 11], bl_y in [0, 0], bl_z in [0, 0], s0 in [0, 95], s1 in [0, 1151]">(%arg4, %arg5, %arg6, %0, %1, %2)[%i, %j]
        %5 = xla.apply_indexing #xla.indexing_map<"(th_x, th_y, th_z, bl_x, bl_y, bl_z)[s0, s1] -> ((bl_x mod 3) * 96 + s0), domain: th_x in [0, 0], th_y in [0, 0], th_z in [0, 0], bl_x in [0, 11], bl_y in [0, 0], bl_z in [0, 0], s0 in [0, 95], s1 in [0, 1151]">(%arg4, %arg5, %arg6, %0, %1, %2)[%i, %j]
        %pure_call = xla.pure_call @fused_computation_convert_6(%arg0, %arg1, %arg2, %4, %5, %j) : (tensor<4x288x1152xbf16>, tensor<4x288x1152xbf16>, tensor<4x288x1152xbf16>, index, index, index) -> f32
        %pure_call_2 = xla.pure_call @fused_computation__epilogue__convert_4(%arg0, %arg1, %arg2, %ra, %rb, %rc, %pure_call) : (tensor<4x288x1152xbf16>, tensor<4x288x1152xbf16>, tensor<4x288x1152xbf16>, index, index, index, f32) -> bf16
        %inserted = tensor.insert %pure_call_2 into %iter[%ra, %rb, %rc] : tensor<4x864x1152xbf16>
        xla.yield %inserted : tensor<4x864x1152xbf16>
      }
      %xla_loop_1 = xla.loop (%arg4, %arg5, %arg6, %0, %1, %2)[%i, %j] -> (%ra, %rb, %rc) in #xla.indexing_map<"(th_x, th_y, th_z, bl_x, bl_y, bl_z)[s0, s1] -> (bl_x floordiv 3, (bl_x mod 3) * 96 + s0 + 576, s1), domain: th_x in [0, 0], th_y in [0, 0], th_z in [0, 0], bl_x in [0, 11], bl_y in [0, 0], bl_z in [0, 0], s0 in [0, 95], s1 in [0, 1151]"> iter_args(%iter = %xla_loop_0) -> (tensor<4x864x1152xbf16>) {
        %4 = xla.apply_indexing #xla.indexing_map<"(th_x, th_y, th_z, bl_x, bl_y, bl_z)[s0, s1] -> (bl_x floordiv 3), domain: th_x in [0, 0], th_y in [0, 0], th_z in [0, 0], bl_x in [0, 11], bl_y in [0, 0], bl_z in [0, 0], s0 in [0, 95], s1 in [0, 1151]">(%arg4, %arg5, %arg6, %0, %1, %2)[%i, %j]
        %5 = xla.apply_indexing #xla.indexing_map<"(th_x, th_y, th_z, bl_x, bl_y, bl_z)[s0, s1] -> ((bl_x mod 3) * 96 + s0), domain: th_x in [0, 0], th_y in [0, 0], th_z in [0, 0], bl_x in [0, 11], bl_y in [0, 0], bl_z in [0, 0], s0 in [0, 95], s1 in [0, 1151]">(%arg4, %arg5, %arg6, %0, %1, %2)[%i, %j]
        %pure_call = xla.pure_call @fused_computation_convert_5(%arg0, %arg1, %arg2, %4, %5, %j) : (tensor<4x288x1152xbf16>, tensor<4x288x1152xbf16>, tensor<4x288x1152xbf16>, index, index, index) -> f32
        %pure_call_2 = xla.pure_call @fused_computation__epilogue__convert_4(%arg0, %arg1, %arg2, %ra, %rb, %rc, %pure_call) : (tensor<4x288x1152xbf16>, tensor<4x288x1152xbf16>, tensor<4x288x1152xbf16>, index, index, index, f32) -> bf16
        %inserted = tensor.insert %pure_call_2 into %iter[%ra, %rb, %rc] : tensor<4x864x1152xbf16>
        xla.yield %inserted : tensor<4x864x1152xbf16>
      }
      scf.forall.in_parallel {
        tensor.parallel_insert_slice %xla_loop_1 into %arg7[0, 0, 0] [4, 864, 1152] [1, 1, 1] : tensor<4x864x1152xbf16> into tensor<4x864x1152xbf16>
      }
    }
    return %3 : tensor<4x864x1152xbf16>
  }
  func.func private @fused_computation_convert_4(%arg0: tensor<4x288x1152xbf16>, %arg1: tensor<4x288x1152xbf16>, %arg2: tensor<4x288x1152xbf16>, %arg3: index {xla.range = [0 : index, 3 : index]}, %arg4: index {xla.range = [0 : index, 863 : index]}, %arg5: index {xla.range = [0 : index, 1151 : index]}) -> bf16 attributes {llvm.linkage = #llvm.linkage<internal>} {
    %pure_call = xla.pure_call @fused_computation_concatenate_0(%arg0, %arg1, %arg2, %arg3, %arg4, %arg5) : (tensor<4x288x1152xbf16>, tensor<4x288x1152xbf16>, tensor<4x288x1152xbf16>, index, index, index) -> f32
    %0 = arith.truncf %pure_call : f32 to bf16
    return %0 : bf16
  }
  func.func private @fused_computation_concatenate_0(%arg0: tensor<4x288x1152xbf16>, %arg1: tensor<4x288x1152xbf16>, %arg2: tensor<4x288x1152xbf16>, %arg3: index {xla.range = [0 : index, 3 : index]}, %arg4: index {xla.range = [0 : index, 863 : index]}, %arg5: index {xla.range = [0 : index, 1151 : index]}) -> f32 attributes {llvm.linkage = #llvm.linkage<internal>} {
    %c288 = arith.constant 288 : index
    %0 = arith.cmpi ult, %arg4, %c288 : index
    %1 = scf.if %0 -> (f32) {
      %c0 = arith.constant 0 : index
      %2 = arith.subi %arg4, %c0 : index
      %pure_call = xla.pure_call @fused_computation_convert_7(%arg0, %arg1, %arg2, %arg3, %2, %arg5) : (tensor<4x288x1152xbf16>, tensor<4x288x1152xbf16>, tensor<4x288x1152xbf16>, index, index, index) -> f32
      scf.yield %pure_call : f32
    } else {
      %c576 = arith.constant 576 : index
      %2 = arith.cmpi ult, %arg4, %c576 : index
      %3 = scf.if %2 -> (f32) {
        %c288_0 = arith.constant 288 : index
        %4 = arith.subi %arg4, %c288_0 : index
        %pure_call = xla.pure_call @fused_computation_convert_6(%arg0, %arg1, %arg2, %arg3, %4, %arg5) : (tensor<4x288x1152xbf16>, tensor<4x288x1152xbf16>, tensor<4x288x1152xbf16>, index, index, index) -> f32
        scf.yield %pure_call : f32
      } else {
        %c576_0 = arith.constant 576 : index
        %4 = arith.subi %arg4, %c576_0 : index
        %pure_call = xla.pure_call @fused_computation_convert_5(%arg0, %arg1, %arg2, %arg3, %4, %arg5) : (tensor<4x288x1152xbf16>, tensor<4x288x1152xbf16>, tensor<4x288x1152xbf16>, index, index, index) -> f32
        scf.yield %pure_call : f32
      }
      scf.yield %3 : f32
    }
    return %1 : f32
  }
  func.func private @fused_computation_convert_5(%arg0: tensor<4x288x1152xbf16>, %arg1: tensor<4x288x1152xbf16>, %arg2: tensor<4x288x1152xbf16>, %arg3: index {xla.range = [0 : index, 3 : index]}, %arg4: index {xla.range = [0 : index, 287 : index]}, %arg5: index {xla.range = [0 : index, 1151 : index]}) -> f32 attributes {llvm.linkage = #llvm.linkage<internal>} {
    %extracted = tensor.extract %arg0[%arg3, %arg4, %arg5] : tensor<4x288x1152xbf16>
    %0 = arith.extf %extracted : bf16 to f32
    return %0 : f32
  }
  func.func private @fused_computation_convert_6(%arg0: tensor<4x288x1152xbf16>, %arg1: tensor<4x288x1152xbf16>, %arg2: tensor<4x288x1152xbf16>, %arg3: index {xla.range = [0 : index, 3 : index]}, %arg4: index {xla.range = [0 : index, 287 : index]}, %arg5: index {xla.range = [0 : index, 1151 : index]}) -> f32 attributes {llvm.linkage = #llvm.linkage<internal>} {
    %extracted = tensor.extract %arg1[%arg3, %arg4, %arg5] : tensor<4x288x1152xbf16>
    %0 = arith.extf %extracted : bf16 to f32
    return %0 : f32
  }
  func.func private @fused_computation_convert_7(%arg0: tensor<4x288x1152xbf16>, %arg1: tensor<4x288x1152xbf16>, %arg2: tensor<4x288x1152xbf16>, %arg3: index {xla.range = [0 : index, 3 : index]}, %arg4: index {xla.range = [0 : index, 287 : index]}, %arg5: index {xla.range = [0 : index, 1151 : index]}) -> f32 attributes {llvm.linkage = #llvm.linkage<internal>} {
    %extracted = tensor.extract %arg2[%arg3, %arg4, %arg5] : tensor<4x288x1152xbf16>
    %0 = arith.extf %extracted : bf16 to f32
    return %0 : f32
  }
  func.func private @fused_computation__epilogue__convert_4(%arg0: tensor<4x288x1152xbf16>, %arg1: tensor<4x288x1152xbf16>, %arg2: tensor<4x288x1152xbf16>, %arg3: index {xla.range = [0 : index, 3 : index]}, %arg4: index {xla.range = [0 : index, 863 : index]}, %arg5: index {xla.range = [0 : index, 1151 : index]}, %arg6: f32) -> bf16 attributes {llvm.linkage = #llvm.linkage<internal>} {
    %0 = arith.truncf %arg6 : f32 to bf16
    return %0 : bf16
  }
}