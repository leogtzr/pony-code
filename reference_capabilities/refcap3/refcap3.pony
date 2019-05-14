class Foo
  let x: U32

  new val create_val(x': U32) =>
    x = x'

  new ref create_ref(x': U32) =>
    x = x'

  fun getX(): U32 =>
    x

actor Main
  new create(env: Env) =>
    let x: Foo val = Foo.create_val(3)
    env.out.print(x.getX().string())

    let y: Foo ref = Foo.create_ref(3)
    env.out.print(y.getX().string())