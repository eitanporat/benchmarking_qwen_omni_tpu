module @slice_convert_fusion.2_kernel_module attributes {dlti.dl_spec = #dlti.dl_spec<index = 64 : i32>, xla.cpu_memory_region_name = "xla_cpu_emitter__loop_fusion_kernel_emitter__hlo_opcode__fusion"} {
  func.func @slice_convert_fusion.2(%arg0: tensor<201326592xbf16> {llvm.align = 64 : index, llvm.dereferenceable = 402653184 : index, xla.invariant, xla.slice_index = 0 : index}, %arg1: tensor<50331648xbf16> {llvm.align = 64 : index, llvm.dereferenceable = 100663296 : index, xla.slice_index = 1 : index}) -> tensor<50331648xbf16> attributes {xla.backend_kind = #xla.backend_kind<cpu>, xla.entry} {
    %c11 = arith.constant 11 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %c10 = arith.constant 10 : index
    %c2048 = arith.constant 2048 : index
    %c192 = arith.constant 192 : index
    %c127 = arith.constant 127 : index
    %c12 = arith.constant 12 : index
    %c13 = arith.constant 13 : index
    %0 = xla.workgroup_id  x {xla.range = [0 : index, 13 : index]}
    %1 = arith.cmpi sle, %0, %c11 : index
    %2 = scf.if %1 -> (tensor<50331648xbf16>) {
      %3 = arith.cmpi sge, %0, %c0 : index
      %4 = arith.andi %3, %1 : i1
      %5 = scf.if %4 -> (tensor<50331648xbf16>) {
        %6 = scf.for %arg2 = %c0 to %c10 step %c1 iter_args(%arg3 = %arg1) -> (tensor<50331648xbf16>) {
          %7 = scf.for %arg4 = %c0 to %c2048 step %c1 iter_args(%arg5 = %arg3) -> (tensor<50331648xbf16>) {
            %8 = scf.for %arg6 = %c0 to %c192 step %c1 iter_args(%arg7 = %arg5) -> (tensor<50331648xbf16>) {
              %9 = xla.apply_indexing #xla.indexing_map<"(d0, bl_x, d2, d3) -> (d0 * 768 + bl_x * 15728640 + d2 * 1572864 + d3 + 192), domain: d0 in [0, 2047], bl_x in [0, 11], d2 in [0, 9], d3 in [0, 191]">(%arg4, %0, %arg2, %arg6)
              %extracted = tensor.extract %arg0[%9] : tensor<201326592xbf16>
              %10 = xla.apply_indexing #xla.indexing_map<"(d0, d1, bl_x, d3) -> (d0 * 192 + bl_x * 3932160 + d3 * 393216 + d1), domain: d0 in [0, 2047], d1 in [0, 191], bl_x in [0, 11], d3 in [0, 9]">(%arg4, %arg6, %0, %arg2)
              %inserted = tensor.insert %extracted into %arg7[%10] : tensor<50331648xbf16>
              scf.yield %inserted : tensor<50331648xbf16>
            }
            scf.yield %8 : tensor<50331648xbf16>
          } {loop_annotation = #llvm.loop_annotation<unroll = <disable = true>>}
          scf.yield %7 : tensor<50331648xbf16>
        } {loop_annotation = #llvm.loop_annotation<unroll = <disable = true>>}
        scf.yield %6 : tensor<50331648xbf16>
      } else {
        scf.yield %arg1 : tensor<50331648xbf16>
      }
      scf.yield %5 : tensor<50331648xbf16>
    } else {
      %3 = arith.cmpi sge, %0, %c12 : index
      %4 = arith.cmpi sle, %0, %c13 : index
      %5 = arith.andi %3, %4 : i1
      %6 = scf.for %arg2 = %c0 to %c10 step %c1 iter_args(%arg3 = %arg1) -> (tensor<50331648xbf16>) {
        %7 = xla.apply_indexing #xla.indexing_map<"(bl_x, d1) -> (bl_x * 10 + d1), domain: bl_x in [12, 13], d1 in [0, 9]">(%0, %arg2)
        %8 = arith.cmpi sge, %7, %c0 : index
        %9 = arith.cmpi sle, %7, %c127 : index
        %10 = arith.andi %8, %9 : i1
        %11 = arith.andi %10, %5 : i1
        %12 = scf.if %11 -> (tensor<50331648xbf16>) {
          %13 = scf.for %arg4 = %c0 to %c2048 step %c1 iter_args(%arg5 = %arg3) -> (tensor<50331648xbf16>) {
            %14 = scf.for %arg6 = %c0 to %c192 step %c1 iter_args(%arg7 = %arg5) -> (tensor<50331648xbf16>) {
              %15 = xla.apply_indexing #xla.indexing_map<"(d0, bl_x, d2, d3) -> (d0 * 768 + bl_x * 15728640 + d2 * 1572864 + d3 + 192), domain: d0 in [0, 2047], bl_x in [12, 13], d2 in [0, 9], d3 in [0, 191]">(%arg4, %0, %arg2, %arg6)
              %extracted = tensor.extract %arg0[%15] : tensor<201326592xbf16>
              %16 = xla.apply_indexing #xla.indexing_map<"(d0, d1, bl_x, d3) -> (d0 * 192 + bl_x * 3932160 + d3 * 393216 + d1), domain: d0 in [0, 2047], d1 in [0, 191], bl_x in [12, 13], d3 in [0, 9]">(%arg4, %arg6, %0, %arg2)
              %inserted = tensor.insert %extracted into %arg7[%16] : tensor<50331648xbf16>
              scf.yield %inserted : tensor<50331648xbf16>
            }
            scf.yield %14 : tensor<50331648xbf16>
          } {loop_annotation = #llvm.loop_annotation<unroll = <disable = true>>}
          scf.yield %13 : tensor<50331648xbf16>
        } else {
          scf.yield %arg3 : tensor<50331648xbf16>
        }
        scf.yield %12 : tensor<50331648xbf16>
      } {loop_annotation = #llvm.loop_annotation<unroll = <disable = true>>}
      scf.yield %6 : tensor<50331648xbf16>
    }
    return %2 : tensor<50331648xbf16>
  }
}