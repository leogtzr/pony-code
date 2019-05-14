actor Main

  fun moving(x: U32, env: Env) =>
    var b: U32 = consume x
    // env.out.print(x) <- error
    env.out.print(b.string())

  new create(env: Env) =>
    // var x: U32 ref = 3
    // moving(x, env)
    //var x: U32 ref = U32(3)
    //moving(x, env)

    moving(3, env)
