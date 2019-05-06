class SomeObj
  var _x: U32
  new create(x: U32) =>
    _x = x

  fun get(): U32 ? =>
    if (_x % 2) != 0 then error end
    _x

  fun dispose() =>
    None

actor Main

  fun alv(): U32 =>
    with someObj1 = SomeObj(3) do
      someObj1.get()?
    else
      var y: U32 = 34
      y
    end

  new create(env: Env) =>

    // with someObj1 = SomeObj(2), someObj3 = SomeObj(3) do
    //   env.out.print(someObj1.get()?.string())
    //   env.out.print(someObj3.get()?.string())
    // else
    //   env.out.print("There was an error")
    //   3
    // end

    env.out.print("Using expressions ... ")

    var x: U32 = alv()
    env.out.print(x.string())