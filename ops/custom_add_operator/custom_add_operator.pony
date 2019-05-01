class Pair
  var _x: U32 = 0
  var _y: U32 = 0

  new create(x: U32, y: U32) =>
    _x = x
    _y = y

  fun add(other: Pair): Pair =>
    Pair(other._x + _x, other._y + _y)

  fun getX(): U32 =>
    _x

  fun getY(): U32 =>
    _y

actor Main
  new create(env: Env) =>
    var p1: Pair = Pair(1, 2)
    var p2 = Pair(4, 3)
    // var p2 = p1.add(p1)
    var p3 = p1.add(p2)
    var p4 = p1 + p2

    env.out.print(p3.getX().string())
    env.out.print(p3.getY().string())

    env.out.print(p4.getX().string())