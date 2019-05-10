class Foo
  fun foo(env: Env, s: String) =>
    env.out.print(s)

actor Main
  new create(env: Env) =>
    let foo: Foo = Foo
    let pFoo = foo~foo(env, "alv")
    pFoo()