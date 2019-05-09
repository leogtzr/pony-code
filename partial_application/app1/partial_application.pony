class Foo
  var _f: F64 = 0

  fun ref addmul(add: F64, mul: F64): F64 =>
    _f = (_f + add) * mul

  fun getF(): F64 =>
    _f

actor Main
  new create(env: Env) =>
    let foo: Foo = Foo
    let f = foo~addmul(3)
    f(4)
    env.out.print(foo.getF().string())