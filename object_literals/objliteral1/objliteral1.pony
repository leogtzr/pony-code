interface Hashable
  fun hash(): U64

class Foo
  class Foo
  fun foo(str: String): Hashable iso^ =>
    object iso is Hashable
      fun apply(): String => str
      fun hash(): U64 => str.hash()
    end

actor Main
  new create(env: Env) =>
    env.out.print("Hello ... ")

    var x = object
      fun apply(): Sring => "alv"
    end

    env.out.print(x())

    lala