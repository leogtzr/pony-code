actor Main
  new create(env: Env) =>
    var a: U64 = 1
    var b: U64 = 2

    a = b = a
    