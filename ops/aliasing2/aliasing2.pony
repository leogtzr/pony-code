actor Main
  new create(env: Env) =>
    var x: U32 = 1.add(2)

    env.out.print(x.string())