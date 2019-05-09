class Foo
  new create(env: Env) =>
    // Capturing from the lexical scope (capturing env)
    let x = {(str: String)(e = env) => e.out.print("Hello: " + str)}
    x("Leo")

actor Main
  new create(env: Env) =>
    Foo(env)