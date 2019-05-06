class C
  var _x: U32
  new create(x: U32) =>
    _x = x

  fun getX(): U32 ? =>
    if (_x % 2) != 0 then error end
    _x

  fun dispose() =>
    // 
    var x: U32 = 3

actor Main
  new create(env: Env) =>

    with c = C(3) do
      env.out.print(c.getX()?.string())
      // the else block will be executed if there is an error
    else
      env.out.print("There was an error ... ")
    end
