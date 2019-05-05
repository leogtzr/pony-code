class Foo
  var _x: U32

  new create(x: U32) =>
    _x = x

  new from_int(x: U32) =>
    _x = x

  fun getX(): U32 =>
    _x

actor Main
  new create(env: Env) =>
    var a: Foo = Foo.create(2)
    var b: Foo = a.from_int(3)

    env.out.print(b.getX().string())