module @concatenate_convert_fusion_kernel_module attributes {dlti.dl_spec = #dlti.dl_spec<index = 64 : i32>, xla.cpu_memory_region_name = "xla_cpu_emitter__concatenate_fusion_kernel_emitter__hlo_opcode__fusion"} {
  func.func @concatenate_convert_fusion(%arg0: tensor<1048576xbf16> {llvm.align = 64 : index, llvm.dereferenceable = 2097152 : index, xla.invariant, xla.slice_index = 0 : index}, %arg1: tensor<1048576xbf16> {llvm.align = 64 : index, llvm.dereferenceable = 2097152 : index, xla.invariant, xla.slice_index = 1 : index}, %arg2: tensor<8388608xbf16> {llvm.align = 64 : index, llvm.dereferenceable = 16777216 : index, xla.invariant, xla.slice_index = 2 : index}, %arg3: tensor<10485760xbf16> {llvm.align = 64 : index, llvm.dereferenceable = 20971520 : index, xla.slice_index = 3 : index}) -> tensor<10485760xbf16> attributes {xla.backend_kind = #xla.backend_kind<cpu>, xla.entry} {
    %c3 = arith.constant 3 : index
    %c10 = arith.constant 10 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %c342 = arith.constant 342 : index
    %c2048 = arith.constant 2048 : index
    %c334 = arith.constant 334 : index
    %c11 = arith.constant 11 : index
    %c4095 = arith.constant 4095 : index
    %c127 = arith.constant 127 : index
    %0 = xla.workgroup_id  x {xla.range = [0 : index, 11 : index]}
    %1 = arith.cmpi sle, %0, %c10 : index
    %2 = scf.if %1 -> (tensor<10485760xbf16>) {
      %8 = arith.cmpi sge, %0, %c0 : index
      %9 = arith.andi %8, %1 : i1
      %10 = scf.if %9 -> (tensor<10485760xbf16>) {
        %11 = scf.for %arg4 = %c0 to %c342 step %c1 iter_args(%arg5 = %arg3) -> (tensor<10485760xbf16>) {
          %12 = xla.apply_indexing #xla.indexing_map<"(bl_x, d1) -> ((bl_x * 342 + d1) floordiv 1024), domain: bl_x in [0, 10], d1 in [0, 341]">(%0, %arg4)
          %13 = xla.apply_indexing #xla.indexing_map<"(bl_x, d1) -> ((bl_x * 342 + d1) mod 1024), domain: bl_x in [0, 10], d1 in [0, 341]">(%0, %arg4)
          %14 = scf.for %arg6 = %c0 to %c2048 step %c1 iter_args(%arg7 = %arg5) -> (tensor<10485760xbf16>) {
            %15 = xla.apply_indexing #xla.indexing_map<"(d0, bl_x, d2) -> (bl_x * 700416 + d2 * 2048 + d0), domain: d0 in [0, 2047], bl_x in [0, 11], d2 in [0, 341]">(%arg6, %0, %arg4)
            %extracted = tensor.extract %arg2[%15] : tensor<8388608xbf16>
            %16 = arith.extf %extracted : bf16 to f32
            %pure_call = xla.pure_call @fused_computation__epilogue__convert_4(%arg0, %arg1, %arg2, %12, %13, %arg6, %16) : (tensor<1048576xbf16>, tensor<1048576xbf16>, tensor<8388608xbf16>, index, index, index, f32) -> bf16
            %17 = xla.apply_indexing #xla.indexing_map<"(d0, bl_x, d2) -> (((bl_x * 342 + d2) mod 1024) * 2048 + ((bl_x * 342 + d2) floordiv 1024) * 2621440 + d0), domain: d0 in [0, 2047], bl_x in [0, 10], d2 in [0, 341]">(%arg6, %0, %arg4)
            %inserted = tensor.insert %pure_call into %arg7[%17] : tensor<10485760xbf16>
            scf.yield %inserted : tensor<10485760xbf16>
          }
          scf.yield %14 : tensor<10485760xbf16>
        } {loop_annotation = #llvm.loop_annotation<unroll = <disable = true>>}
        scf.yield %11 : tensor<10485760xbf16>
      } else {
        scf.yield %arg3 : tensor<10485760xbf16>
      }
      scf.yield %10 : tensor<10485760xbf16>
    } else {
      %8 = arith.cmpi eq, %0, %c11 : index
      %9 = scf.if %8 -> (tensor<10485760xbf16>) {
        %10 = scf.for %arg4 = %c0 to %c334 step %c1 iter_args(%arg5 = %arg3) -> (tensor<10485760xbf16>) {
          %11 = xla.apply_indexing #xla.indexing_map<"(d0) -> (d0 + 690), domain: d0 in [0, 333]">(%arg4)
          %12 = scf.for %arg6 = %c0 to %c2048 step %c1 iter_args(%arg7 = %arg5) -> (tensor<10485760xbf16>) {
            %13 = xla.apply_indexing #xla.indexing_map<"(d0, bl_x, d2) -> (bl_x * 700416 + d2 * 2048 + d0), domain: d0 in [0, 2047], bl_x in [0, 11], d2 in [0, 341]">(%arg6, %0, %arg4)
            %extracted = tensor.extract %arg2[%13] : tensor<8388608xbf16>
            %14 = arith.extf %extracted : bf16 to f32
            %pure_call = xla.pure_call @fused_computation__epilogue__convert_4(%arg0, %arg1, %arg2, %c3, %11, %arg6, %14) : (tensor<1048576xbf16>, tensor<1048576xbf16>, tensor<8388608xbf16>, index, index, index, f32) -> bf16
            %15 = xla.apply_indexing #xla.indexing_map<"(d0, d1) -> (d1 * 2048 + d0 + 9277440), domain: d0 in [0, 2047], d1 in [0, 333]">(%arg6, %arg4)
            %inserted = tensor.insert %pure_call into %arg7[%15] : tensor<10485760xbf16>
            scf.yield %inserted : tensor<10485760xbf16>
          }
          scf.yield %12 : tensor<10485760xbf16>
        } {loop_annotation = #llvm.loop_annotation<unroll = <disable = true>>}
        scf.yield %10 : tensor<10485760xbf16>
      } else {
        scf.yield %arg3 : tensor<10485760xbf16>
      }
      scf.yield %9 : tensor<10485760xbf16>
    }
    %3 = arith.cmpi sge, %0, %c0 : index
    %4 = arith.cmpi sle, %0, %c11 : index
    %5 = arith.andi %3, %4 : i1
    %6 = scf.for %arg4 = %c0 to %c342 step %c1 iter_args(%arg5 = %2) -> (tensor<10485760xbf16>) {
      %8 = xla.apply_indexing #xla.indexing_map<"(bl_x, d1) -> (bl_x * 342 + d1), domain: bl_x in [0, 11], d1 in [0, 341]">(%0, %arg4)
      %9 = xla.apply_indexing #xla.indexing_map<"(bl_x, d1) -> ((bl_x * 342 + d1) mod 1024), domain: bl_x in [0, 11], d1 in [0, 341]">(%0, %arg4)
      %10 = arith.cmpi sge, %8, %c0 : index
      %11 = arith.cmpi sle, %8, %c4095 : index
      %12 = arith.andi %10, %11 : i1
      %13 = arith.cmpi sge, %9, %c0 : index
      %14 = arith.cmpi sle, %9, %c127 : index
      %15 = arith.andi %13, %14 : i1
      %16 = arith.andi %12, %15 : i1
      %17 = arith.andi %16, %5 : i1
      %18 = scf.if %17 -> (tensor<10485760xbf16>) {
        %19 = xla.apply_indexing #xla.indexing_map<"(bl_x, d1) -> ((bl_x * 342 + d1) floordiv 1024), domain: bl_x in [0, 11], d1 in [0, 341]">(%0, %arg4)
        %20 = xla.apply_indexing #xla.indexing_map<"(bl_x, d1) -> ((bl_x * 342 + d1) mod 1024 + 1024), domain: bl_x in [0, 11], d1 in [0, 341]">(%0, %arg4)
        %21 = scf.for %arg6 = %c0 to %c2048 step %c1 iter_args(%arg7 = %arg5) -> (tensor<10485760xbf16>) {
          %22 = xla.apply_indexing #xla.indexing_map<"(d0, bl_x, d2) -> (((bl_x * 342 + d2) mod 1024) * 2048 + ((bl_x * 342 + d2) floordiv 1024) * 262144 + d0), domain: d0 in [0, 2047], bl_x in [0, 11], d2 in [0, 341]">(%arg6, %0, %arg4)
          %extracted = tensor.extract %arg1[%22] : tensor<1048576xbf16>
          %23 = arith.extf %extracted : bf16 to f32
          %pure_call = xla.pure_call @fused_computation__epilogue__convert_4(%arg0, %arg1, %arg2, %19, %20, %arg6, %23) : (tensor<1048576xbf16>, tensor<1048576xbf16>, tensor<8388608xbf16>, index, index, index, f32) -> bf16
          %24 = xla.apply_indexing #xla.indexing_map<"(d0, bl_x, d2) -> (((bl_x * 342 + d2) mod 1024) * 2048 + ((bl_x * 342 + d2) floordiv 1024) * 2621440 + d0 + 2097152), domain: d0 in [0, 2047], bl_x in [0, 11], d2 in [0, 341]">(%arg6, %0, %arg4)
          %inserted = tensor.insert %pure_call into %arg7[%24] : tensor<10485760xbf16>
          scf.yield %inserted : tensor<10485760xbf16>
        }
        scf.yield %21 : tensor<10485760xbf16>
      } else {
        scf.yield %arg5 : tensor<10485760xbf16>
      }
      scf.yield %18 : tensor<10485760xbf16>
    } {loop_annotation = #llvm.loop_annotation<unroll = <disable = true>>}
    %7 = scf.for %arg4 = %c0 to %c342 step %c1 iter_args(%arg5 = %6) -> (tensor<10485760xbf16>) {
      %8 = xla.apply_indexing #xla.indexing_map<"(bl_x, d1) -> (bl_x * 342 + d1), domain: bl_x in [0, 11], d1 in [0, 341]">(%0, %arg4)
      %9 = xla.apply_indexing #xla.indexing_map<"(bl_x, d1) -> ((bl_x * 342 + d1) mod 1024), domain: bl_x in [0, 11], d1 in [0, 341]">(%0, %arg4)
      %10 = arith.cmpi sge, %8, %c0 : index
      %11 = arith.cmpi sle, %8, %c4095 : index
      %12 = arith.andi %10, %11 : i1
      %13 = arith.cmpi sge, %9, %c0 : index
      %14 = arith.cmpi sle, %9, %c127 : index
      %15 = arith.andi %13, %14 : i1
      %16 = arith.andi %12, %15 : i1
      %17 = arith.andi %16, %5 : i1
      %18 = scf.if %17 -> (tensor<10485760xbf16>) {
        %19 = xla.apply_indexing #xla.indexing_map<"(bl_x, d1) -> ((bl_x * 342 + d1) floordiv 1024), domain: bl_x in [0, 11], d1 in [0, 341]">(%0, %arg4)
        %20 = xla.apply_indexing #xla.indexing_map<"(bl_x, d1) -> ((bl_x * 342 + d1) mod 1024 + 1152), domain: bl_x in [0, 11], d1 in [0, 341]">(%0, %arg4)
        %21 = scf.for %arg6 = %c0 to %c2048 step %c1 iter_args(%arg7 = %arg5) -> (tensor<10485760xbf16>) {
          %22 = xla.apply_indexing #xla.indexing_map<"(d0, bl_x, d2) -> (((bl_x * 342 + d2) mod 1024) * 2048 + ((bl_x * 342 + d2) floordiv 1024) * 262144 + d0), domain: d0 in [0, 2047], bl_x in [0, 11], d2 in [0, 341]">(%arg6, %0, %arg4)
          %extracted = tensor.extract %arg0[%22] : tensor<1048576xbf16>
          %23 = arith.extf %extracted : bf16 to f32
          %pure_call = xla.pure_call @fused_computation__epilogue__convert_4(%arg0, %arg1, %arg2, %19, %20, %arg6, %23) : (tensor<1048576xbf16>, tensor<1048576xbf16>, tensor<8388608xbf16>, index, index, index, f32) -> bf16
          %24 = xla.apply_indexing #xla.indexing_map<"(d0, bl_x, d2) -> (((bl_x * 342 + d2) mod 1024) * 2048 + ((bl_x * 342 + d2) floordiv 1024) * 2621440 + d0 + 2359296), domain: d0 in [0, 2047], bl_x in [0, 11], d2 in [0, 341]">(%arg6, %0, %arg4)
          %inserted = tensor.insert %pure_call into %arg7[%24] : tensor<10485760xbf16>
          scf.yield %inserted : tensor<10485760xbf16>
        }
        scf.yield %21 : tensor<10485760xbf16>
      } else {
        scf.yield %arg5 : tensor<10485760xbf16>
      }
      scf.yield %18 : tensor<10485760xbf16>
    } {loop_annotation = #llvm.loop_annotation<unroll = <disable = true>>}
    return %7 : tensor<10485760xbf16>
  }
  func.func private @fused_computation__epilogue__convert_4(%arg0: tensor<1048576xbf16> {xla.invariant, xla.slice_index = 0 : index}, %arg1: tensor<1048576xbf16> {xla.invariant, xla.slice_index = 1 : index}, %arg2: tensor<8388608xbf16> {xla.invariant, xla.slice_index = 2 : index}, %arg3: index {xla.range = [0 : index, 3 : index]}, %arg4: index {xla.range = [0 : index, 1279 : index]}, %arg5: index {xla.range = [0 : index, 2047 : index]}, %arg6: f32) -> bf16 attributes {llvm.linkage = #llvm.linkage<internal>} {
    %0 = arith.truncf %arg6 : f32 to bf16
    return %0 : bf16
  }
}