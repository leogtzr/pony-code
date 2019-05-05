class C
  fun add(x: U32, y: U32) =>
    // error, parameters are let (constants)
    x = x + 1

actor Main
	new create(env: Env) =>
    env.out.println("Hello ... ")