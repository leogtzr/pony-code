actor Main
  new create(env: Env) =>

    var x: I32 = 5.neg()
    env.out.print(x.string())