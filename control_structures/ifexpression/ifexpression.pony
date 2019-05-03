actor Main
  new create(env: Env) =>
    var x: U32
    var lots: Bool = true

    x = 1 + if lots then 100 else 2

    env.out.print(x.string())