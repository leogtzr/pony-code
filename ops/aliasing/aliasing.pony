actor Main
  new create(env: Env) =>

    var x: U32 = 1
    var y: U32 = 2
    var z: U32 = x.add(y)       // x + y is valid too

    env.out.print(z.string())