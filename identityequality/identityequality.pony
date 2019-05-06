class Foo
  var _s: String
  new create(s: String) =>
    _s = s

actor Main
  new create(env: Env) =>
    if None is None then
      env.out.print("True!")
    end

    let a = Foo("hi")
    let b = Foo("hi")

    if a is b then
      env.out.print("True! a == b")
    end

    let c = a
    if a is c then
      env.out.print("True! a == c")
    end

