interface HasName
  fun name(): String
  fun hola(): String => "hola putos"

actor Main
  new create(env: Env) =>
      env.out.print("Hola")