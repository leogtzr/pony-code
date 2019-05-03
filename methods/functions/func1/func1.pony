class C
  fun add(x: U32, y: U32) :U32 =>
    x + y

  fun nop() =>
    add(1, 2)       // pointless, we ignore the result

actor Main
  new create(env: Env) =>
    var c: C = C.create()
    var x: U32 = c.add(1, 2)