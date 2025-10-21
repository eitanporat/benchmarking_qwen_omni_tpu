#loc1 = loc("x")
module @jit__identity_fn attributes {mhlo.num_partitions = 4 : i32, mhlo.num_replicas = 1 : i32} {
  sdy.mesh @mesh = <["data"=1, "model"=4]> loc(#loc)
  func.func public @main(%arg0: tensor<128x2048x768xbf16> loc("x")) -> (tensor<128x2048x768xbf16> {jax.result_info = "result", mhlo.layout_mode = "{2,1,0}", sdy.sharding = #sdy.sharding<@mesh, [{}, {}, {"model"}]>}) {
    return %arg0 : tensor<128x2048x768xbf16> loc(#loc)
  } loc(#loc)
} loc(#loc)
#loc = loc(unknown)
