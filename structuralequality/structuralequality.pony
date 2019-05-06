primitive Red
primitive Blue
primitive Green

// "Union" type ... Colour is either Red, Blue or Green
type Colour is (Red | Blue | Green)

class Foo
  let _a: String

  new create(a: String) =>
    _a = a

  fun eq(that: box->Foo): Bool =>
    this._a == that._a

actor Main
  new create(env: Env) =>
    let a = Foo("hi")
    let b = Foo("bye")
    let c = Foo("hi")

    if a == b then
      // won't print
      env.out.print("1")
    end

    if (a == c) or (c == a) then
      // will print
      env.out.print("2")
    end

    if a is c then
      env.out.print("3")
    end

    let c1: Colour = Red
    let c2: Colour = Red

    if c1 is c2 then
      env.out.print("Ok ... they are equal ... ")
    end