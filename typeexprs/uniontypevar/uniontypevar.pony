interface HasName
  fun name(): String => "Leo"

class Leo is HasName

actor Main
  new create(env: Env) =>
    //var x: (String | Leo) = "Leo"
    var x: (String | U32) = "Leo"
    // env.out.print(x.name().string())
    env.out.print(x.string())