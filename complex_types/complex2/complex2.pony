trait HasName
  fun name(): String

trait HasAge
  fun age(): U32

trait HasAddress
  fun address(): String

type Person is (HasName & HasAge & HasAddress)

class Leo is Person
  var _x: U32 = 0
  new create(x': U32 = 3) =>
    _x = x'
  fun name(): String => "Leo"
  fun age(): U32 => 28
  fun address(): String => "Paula Aun de Aguirre, 9015"

actor Main
  new create(env: Env) =>
    // var leo: Leo = Leo().create()
    env.out.print(Leo().create().name())
    env.out.print(Leo().name())