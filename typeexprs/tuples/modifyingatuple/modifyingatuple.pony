actor Main
  new create(env: Env) =>
    var x: (U32, U32) = (1, 2)
    x = (2, 3)
    // x._1 = 23      compilation error.
    x = (5, x._2)

    env.out.print(x._1.string())
    env.out.print(x._2.string())
