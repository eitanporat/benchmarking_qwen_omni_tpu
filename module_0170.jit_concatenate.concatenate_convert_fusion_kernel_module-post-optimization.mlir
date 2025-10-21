module @concatenate_convert_fusion_kernel_module attributes {dlti.dl_spec = #dlti.dl_spec<index = 64 : i32>, xla.cpu_memory_region_name = "xla_cpu_emitter__concatenate_fusion_kernel_emitter__hlo_opcode__fusion"} {
  func.func @concatenate_convert_fusion(%arg0: tensor<201326592xbf16> {llvm.align = 64 : index, llvm.dereferenceable = 402653184 : index, xla.invariant, xla.slice_index = 0 : index}, %arg1: tensor<201326592xbf16> {llvm.align = 64 : index, llvm.dereferenceable = 402653184 : index, xla.invariant, xla.slice_index = 1 : index}, %arg2: tensor<402653184xbf16> {llvm.align = 64 : index, llvm.dereferenceable = 805306368 : index, xla.slice_index = 2 : index}) -> tensor<402653184xbf16> attributes {xla.backend_kind = #xla.backend_kind<cpu>, xla.entry} {
    %c11 = arith.constant 11 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %c10 = arith.constant 10 : index
    %c4 = arith.constant 4 : index
    %c192 = arith.constant 192 : index
    %c2048 = arith.constant 2048 : index
    %c127 = arith.constant 127 : index
    %c12 = arith.constant 12 : index
    %c13 = arith.constant 13 : index
    %0 = xla.workgroup_id  x {xla.range = [0 : index, 13 : index]}
    %1 = arith.cmpi sle, %0, %c11 : index
    %2 = scf.if %1 -> (tensor<402653184xbf16>) {
      %3 = arith.cmpi sge, %0, %c0 : index
      %4 = arith.andi %3, %1 : i1
      %5 = scf.if %4 -> (tensor<402653184xbf16>) {
        %7 = scf.for %arg3 = %c0 to %c10 step %c1 iter_args(%arg4 = %arg2) -> (tensor<402653184xbf16>) {
          %8 = xla.apply_indexing #xla.indexing_map<"(bl_x, d1) -> (bl_x * 10 + d1), domain: bl_x in [0, 11], d1 in [0, 9]">(%0, %arg3)
          %9 = scf.for %arg5 = %c0 to %c4 step %c1 iter_args(%arg6 = %arg4) -> (tensor<402653184xbf16>) {
            %10 = scf.for %arg7 = %c0 to %c192 step %c1 iter_args(%arg8 = %arg6) -> (tensor<402653184xbf16>) {
              %11 = scf.for %arg9 = %c0 to %c2048 step %c1 iter_args(%arg10 = %arg8) -> (tensor<402653184xbf16>) {
                %12 = xla.apply_indexing #xla.indexing_map<"(d0, d1, d2, bl_x, d4) -> (d0 * 393216 + d1 * 2048 + bl_x * 15728640 + d4 * 1572864 + d2), domain: d0 in [0, 3], d1 in [0, 191], d2 in [0, 2047], bl_x in [0, 13], d4 in [0, 9]">(%arg5, %arg7, %arg9, %0, %arg3)
                %extracted = tensor.extract %arg1[%12] : tensor<201326592xbf16>
                %13 = arith.extf %extracted : bf16 to f32
                %pure_call = xla.pure_call @fused_computation__epilogue__convert_3(%arg0, %arg1, %8, %arg5, %arg7, %arg9, %13) : (tensor<201326592xbf16>, tensor<201326592xbf16>, index, index, index, index, f32) -> bf16
                %14 = xla.apply_indexing #xla.indexing_map<"(d0, d1, d2, bl_x, d4) -> (d0 * 786432 + d1 * 2048 + bl_x * 31457280 + d4 * 3145728 + d2), domain: d0 in [0, 3], d1 in [0, 383], d2 in [0, 2047], bl_x in [0, 11], d4 in [0, 9]">(%arg5, %arg7, %arg9, %0, %arg3)
                %inserted = tensor.insert %pure_call into %arg10[%14] : tensor<402653184xbf16>
                scf.yield %inserted : tensor<402653184xbf16>
              }
              scf.yield %11 : tensor<402653184xbf16>
            } {loop_annotation = #llvm.loop_annotation<unroll = <disable = true>>}
            scf.yield %10 : tensor<402653184xbf16>
          } {loop_annotation = #llvm.loop_annotation<unroll = <disable = true>>}
          scf.yield %9 : tensor<402653184xbf16>
        } {loop_annotation = #llvm.loop_annotation<unroll = <disable = true>>}
        scf.yield %7 : tensor<402653184xbf16>
      } else {
        scf.yield %arg2 : tensor<402653184xbf16>
      }
      %6 = scf.if %4 -> (tensor<402653184xbf16>) {
        %7 = scf.for %arg3 = %c0 to %c10 step %c1 iter_args(%arg4 = %5) -> (tensor<402653184xbf16>) {
          %8 = xla.apply_indexing #xla.indexing_map<"(bl_x, d1) -> (bl_x * 10 + d1), domain: bl_x in [0, 11], d1 in [0, 9]">(%0, %arg3)
          %9 = scf.for %arg5 = %c0 to %c4 step %c1 iter_args(%arg6 = %arg4) -> (tensor<402653184xbf16>) {
            %10 = scf.for %arg7 = %c0 to %c192 step %c1 iter_args(%arg8 = %arg6) -> (tensor<402653184xbf16>) {
              %11 = xla.apply_indexing #xla.indexing_map<"(d0) -> (d0 + 192), domain: d0 in [0, 191]">(%arg7)
              %12 = scf.for %arg9 = %c0 to %c2048 step %c1 iter_args(%arg10 = %arg8) -> (tensor<402653184xbf16>) {
                %13 = xla.apply_indexing #xla.indexing_map<"(d0, d1, d2, bl_x, d4) -> (d0 * 393216 + d1 * 2048 + bl_x * 15728640 + d4 * 1572864 + d2), domain: d0 in [0, 3], d1 in [0, 191], d2 in [0, 2047], bl_x in [0, 13], d4 in [0, 9]">(%arg5, %arg7, %arg9, %0, %arg3)
                %extracted = tensor.extract %arg0[%13] : tensor<201326592xbf16>
                %14 = arith.extf %extracted : bf16 to f32
                %pure_call = xla.pure_call @fused_computation__epilogue__convert_3(%arg0, %arg1, %8, %arg5, %11, %arg9, %14) : (tensor<201326592xbf16>, tensor<201326592xbf16>, index, index, index, index, f32) -> bf16
                %15 = xla.apply_indexing #xla.indexing_map<"(d0, d1, bl_x, d3, d4) -> (d0 * 786432 + bl_x * 31457280 + d3 * 3145728 + d4 * 2048 + d1 + 393216), domain: d0 in [0, 3], d1 in [0, 2047], bl_x in [0, 11], d3 in [0, 9], d4 in [0, 191]">(%arg5, %arg9, %0, %arg3, %arg7)
                %inserted = tensor.insert %pure_call into %arg10[%15] : tensor<402653184xbf16>
                scf.yield %inserted : tensor<402653184xbf16>
              }
              scf.yield %12 : tensor<402653184xbf16>
            } {loop_annotation = #llvm.loop_annotation<unroll = <disable = true>>}
            scf.yield %10 : tensor<402653184xbf16>
          } {loop_annotation = #llvm.loop_annotation<unroll = <disable = true>>}
          scf.yield %9 : tensor<402653184xbf16>
        } {loop_annotation = #llvm.loop_annotation<unroll = <disable = true>>}
        scf.yield %7 : tensor<402653184xbf16>
      } else {
        scf.yield %5 : tensor<402653184xbf16>
      }
      scf.yield %6 : tensor<402653184xbf16>
    } else {
      %3 = arith.cmpi sge, %0, %c12 : index
      %4 = arith.cmpi sle, %0, %c13 : index
      %5 = arith.andi %3, %4 : i1
      %6 = scf.for %arg3 = %c0 to %c10 step %c1 iter_args(%arg4 = %arg2) -> (tensor<402653184xbf16>) {
        %8 = xla.apply_indexing #xla.indexing_map<"(bl_x, d1) -> (bl_x * 10 + d1), domain: bl_x in [12, 13], d1 in [0, 9]">(%0, %arg3)
        %9 = arith.cmpi sge, %8, %c0 : index
        %10 = arith.cmpi sle, %8, %c127 : index
        %11 = arith.andi %9, %10 : i1
        %12 = arith.andi %11, %5 : i1
        %13 = scf.if %12 -> (tensor<402653184xbf16>) {
          %14 = scf.for %arg5 = %c0 to %c4 step %c1 iter_args(%arg6 = %arg4) -> (tensor<402653184xbf16>) {
            %15 = scf.for %arg7 = %c0 to %c192 step %c1 iter_args(%arg8 = %arg6) -> (tensor<402653184xbf16>) {
              %16 = scf.for %arg9 = %c0 to %c2048 step %c1 iter_args(%arg10 = %arg8) -> (tensor<402653184xbf16>) {
                %17 = xla.apply_indexing #xla.indexing_map<"(d0, d1, d2, bl_x, d4) -> (d0 * 393216 + d1 * 2048 + bl_x * 15728640 + d4 * 1572864 + d2), domain: d0 in [0, 3], d1 in [0, 191], d2 in [0, 2047], bl_x in [0, 13], d4 in [0, 9]">(%arg5, %arg7, %arg9, %0, %arg3)
                %extracted = tensor.extract %arg1[%17] : tensor<201326592xbf16>
                %18 = arith.extf %extracted : bf16 to f32
                %pure_call = xla.pure_call @fused_computation__epilogue__convert_3(%arg0, %arg1, %8, %arg5, %arg7, %arg9, %18) : (tensor<201326592xbf16>, tensor<201326592xbf16>, index, index, index, index, f32) -> bf16
                %19 = xla.apply_indexing #xla.indexing_map<"(d0, d1, d2, bl_x, d4) -> (d0 * 786432 + d1 * 2048 + bl_x * 31457280 + d4 * 3145728 + d2), domain: d0 in [0, 3], d1 in [0, 383], d2 in [0, 2047], bl_x in [12, 13], d4 in [0, 9]">(%arg5, %arg7, %arg9, %0, %arg3)
                %inserted = tensor.insert %pure_call into %arg10[%19] : tensor<402653184xbf16>
                scf.yield %inserted : tensor<402653184xbf16>
              }
              scf.yield %16 : tensor<402653184xbf16>
            } {loop_annotation = #llvm.loop_annotation<unroll = <disable = true>>}
            scf.yield %15 : tensor<402653184xbf16>
          } {loop_annotation = #llvm.loop_annotation<unroll = <disable = true>>}
          scf.yield %14 : tensor<402653184xbf16>
        } else {
          scf.yield %arg4 : tensor<402653184xbf16>
        }
        scf.yield %13 : tensor<402653184xbf16>
      } {loop_annotation = #llvm.loop_annotation<unroll = <disable = true>>}
      %7 = scf.for %arg3 = %c0 to %c10 step %c1 iter_args(%arg4 = %6) -> (tensor<402653184xbf16>) {
        %8 = xla.apply_indexing #xla.indexing_map<"(bl_x, d1) -> (bl_x * 10 + d1), domain: bl_x in [12, 13], d1 in [0, 9]">(%0, %arg3)
        %9 = arith.cmpi sge, %8, %c0 : index
        %10 = arith.cmpi sle, %8, %c127 : index
        %11 = arith.andi %9, %10 : i1
        %12 = arith.andi %11, %5 : i1
        %13 = scf.if %12 -> (tensor<402653184xbf16>) {
          %14 = scf.for %arg5 = %c0 to %c4 step %c1 iter_args(%arg6 = %arg4) -> (tensor<402653184xbf16>) {
            %15 = scf.for %arg7 = %c0 to %c192 step %c1 iter_args(%arg8 = %arg6) -> (tensor<402653184xbf16>) {
              %16 = xla.apply_indexing #xla.indexing_map<"(d0) -> (d0 + 192), domain: d0 in [0, 191]">(%arg7)
              %17 = scf.for %arg9 = %c0 to %c2048 step %c1 iter_args(%arg10 = %arg8) -> (tensor<402653184xbf16>) {
                %18 = xla.apply_indexing #xla.indexing_map<"(d0, d1, d2, bl_x, d4) -> (d0 * 393216 + d1 * 2048 + bl_x * 15728640 + d4 * 1572864 + d2), domain: d0 in [0, 3], d1 in [0, 191], d2 in [0, 2047], bl_x in [0, 13], d4 in [0, 9]">(%arg5, %arg7, %arg9, %0, %arg3)
                %extracted = tensor.extract %arg0[%18] : tensor<201326592xbf16>
                %19 = arith.extf %extracted : bf16 to f32
                %pure_call = xla.pure_call @fused_computation__epilogue__convert_3(%arg0, %arg1, %8, %arg5, %16, %arg9, %19) : (tensor<201326592xbf16>, tensor<201326592xbf16>, index, index, index, index, f32) -> bf16
                %20 = xla.apply_indexing #xla.indexing_map<"(d0, d1, bl_x, d3, d4) -> (d0 * 786432 + bl_x * 31457280 + d3 * 3145728 + d4 * 2048 + d1 + 393216), domain: d0 in [0, 3], d1 in [0, 2047], bl_x in [12, 13], d3 in [0, 9], d4 in [0, 191]">(%arg5, %arg9, %0, %arg3, %arg7)
                %inserted = tensor.insert %pure_call into %arg10[%20] : tensor<402653184xbf16>
                scf.yield %inserted : tensor<402653184xbf16>
              }
              scf.yield %17 : tensor<402653184xbf16>
            } {loop_annotation = #llvm.loop_annotation<unroll = <disable = true>>}
            scf.yield %15 : tensor<402653184xbf16>
          } {loop_annotation = #llvm.loop_annotation<unroll = <disable = true>>}
          scf.yield %14 : tensor<402653184xbf16>
        } else {
          scf.yield %arg4 : tensor<402653184xbf16>
        }
        scf.yield %13 : tensor<402653184xbf16>
      } {loop_annotation = #llvm.loop_annotation<unroll = <disable = true>>}
      scf.yield %7 : tensor<402653184xbf16>
    }
    return %2 : tensor<402653184xbf16>
  }
  func.func private @fused_computation__epilogue__convert_3(%arg0: tensor<201326592xbf16> {xla.invariant, xla.slice_index = 0 : index}, %arg1: tensor<201326592xbf16> {xla.invariant, xla.slice_index = 1 : index}, %arg2: index {xla.range = [0 : index, 127 : index]}, %arg3: index {xla.range = [0 : index, 3 : index]}, %arg4: index {xla.range = [0 : index, 383 : index]}, %arg5: index {xla.range = [0 : index, 2047 : index]}, %arg6: f32) -> bf16 attributes {llvm.linkage = #llvm.linkage<internal>} {
    %0 = arith.truncf %arg6 : f32 to bf16
    return %0 : bf16
  }
}