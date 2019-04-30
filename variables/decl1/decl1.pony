actor Main
  new create(env: Env) =>
    var x = "Hola mundo"
    env.out.print(x)
    var y: String
    //env.out.print(y)
    y = "kjhsdf"
    env.out.print(y)

    var a: String = "a"
    var b = "a"
    var c: String
    c = "a"

    // env.out.print((a == b == c).string())