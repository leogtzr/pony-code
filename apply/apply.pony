class Foo
  new create(x: U32) =>
    var y: U32 = 23

  fun apply() =>
    var y: U32 = 23

actor Main
  new create(env: Env) =>

    let f1: Foo = Foo(3)
    f1()

