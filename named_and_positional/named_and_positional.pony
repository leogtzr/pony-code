class Foo
  var _a: U32
  var _b: U32
  var _c: U32
  var _d: U32
  var _e: U32

  new create(a: U32 = 1, b: U32 = 2, c: U32 = 3, d: U32 = 4, e: U32 = 5) =>
    _a = a
    _b = b
    _c = c
    _d = d
    _e = e

  fun getA(): U32 =>
    _a

  fun getB(): U32 =>
    _b

  fun getC(): U32 =>
    _c

  fun getD(): U32 =>
    _d

  fun getE(): U32 =>
    _e

actor Main
  new create(env: Env) =>
    // var x: U32 = 2
    var f1: Foo = Foo.create(6, 7 where d = 8)

    print(f1, env)

    var f2: Foo = Foo.create(6, 7, 3, 8, 5)

  fun print(f: Foo, env: Env) =>
    env.out.print(f.getA().string())
    env.out.print(f.getB().string())
    env.out.print(f.getC().string())
    env.out.print(f.getD().string())
    env.out.print(f.getE().string())