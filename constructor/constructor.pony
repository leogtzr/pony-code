class Foo
  var _x: U32

  new create() =>
    _x = 0

  new from_int(x: U32) =>
    _x = x

class Bar
  fun f() =>
    var a: Foo = Foo.create()
    var b: Foo = Foo.from_int(3)

actor Main
  new create(env: Env) =>
    var x: U32 = 782