class Foo
  new create(x: U32) =>
    var y: U32 = 2

  fun apply(x: U32) =>
    var y: U32 = 23

actor Main
  new create(env: Env) =>

    var foo = Foo(2)
