actor Main
  new create(env: Env) =>

    var b: Bool = true and true
    env.out.print(b.string())