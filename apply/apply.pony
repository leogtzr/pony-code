class Foo
  new create(x: U32) =>
    var y: U32 = 23

  fun apply(x: U32, env: Env, y: U32) =>
    //var y: U32 = 23
    env.out.print(x.string())

actor Main
  new create(env: Env) =>

    let f1: Foo = Foo(3)
    //f1(, env)
    // f1(1, env, 3)
    f1(23, env where y = 3)
