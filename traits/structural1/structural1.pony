interface HasName
  fun name(): String
  // default behaviour. interfaces are more flexible.
  fun hola(): String => "hola putos"

trait Named
  fun name(): String => "Leo"

class Leo is Named    

actor Main
  new create(env: Env) =>
      env.out.print("Hola")
      var leo: Leo = Leo()