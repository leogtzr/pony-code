class Foo
  new create() =>
    var x: U32 = 2

actor Main
  new create(env: Env) =>
    // we can ignore the ()
    var x: Foo = Foo
    var y = Foo

    