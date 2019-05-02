actor Main
  new create(env: Env) =>
    var x = I32(12).f32()
    env.out.print(x.string())
    // for each conversion operation there exist an unsafe counterpart, it is faster.
    env.out.print(I32(12).f32_unsafe().string())

    env.out.print(I64.max_value().f32_unsafe().string())

    // unsafe but we know it is safe.
    env.out.print(I64(1).u8_unsafe().string())
