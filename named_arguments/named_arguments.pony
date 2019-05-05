class Cord
  var _x: U32
  var _y: U32

  new create(x: U32 = 0, y: U32 = 0) =>
    _x = x
    _y = y

  fun getX() :U32 =>
    _x

  fun getY() :U32 =>
    _y

actor Main
  new create(env: Env) =>
    var a: Cord = Cord.create(where y = 5, x = 4)

    env.out.print(a.getX().string())
    env.out.print(a.getY().string())
    