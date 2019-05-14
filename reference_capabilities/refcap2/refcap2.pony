class Foo
  let x: U32
  new val create(x': U32) =>
    x = x'

  fun getX(): U32 =>
    x

actor Main
  new create(env: Env) =>
    var x: Foo val = Foo.create(2)
    // env.out.print(Foo.create(2).getX().string())