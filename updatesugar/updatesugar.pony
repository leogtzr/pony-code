class Foo
  var _env: Env
  
  new create(env: Env) =>
    _env = env

  fun update(x: U32, value: U32) =>
    _env.out.print("x is: ")
    _env.out.print(x.string())
    _env.out.print("y is: ")
    _env.out.print(value.string())

actor Main
  new create(env: Env) =>
    var foo: Foo = Foo(env)
    foo(37) = 3
    // becomes:
    // foo.update(37 where value = x)