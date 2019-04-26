struct Inner
  var x: I32 = 0

struct Outer
  embed inner_embed: Inner = Inner
  var inner_var: Inner = Inner

actor Main
  new create(env: Env) =>
    env.out.print("Hello")