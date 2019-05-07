class Foo
  fun apply(): String =>
    "Leo"

actor Main
  new create(env: Env) =>
    env.out.print(Foo())
