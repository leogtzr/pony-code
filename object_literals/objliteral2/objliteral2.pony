interface Hashable
  fun hash(): U64

class Foo
  fun foo(str: String): Hashable iso^ =>
    object iso is Hashable
      fun apply(): String => str
      fun hash(): U64 => str.hash64()
    end

actor Main
  new create(env: Env) =>
    env.out.print("Hello ... ")

    var x = object
      fun apply(): String => "alv"
    end

    env.out.print(x())
