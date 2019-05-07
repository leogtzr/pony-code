class Foo
  var _env: Env
  
  new create(env: Env) =>
    _env = env

  fun update(value: U32) =>
    _env.out.write("y is: ")
    _env.out.print(value.string())

actor Main
  new create(env: Env) =>
    var foo: Foo = Foo(env)
    foo() = 3