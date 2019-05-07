actor Main
  new create(env: Env) =>
    let x = {(s: String): String => "Hello " + s}
    env.out.print(x("Leo"))
    env.out.print({(s: String): String => "Hello " + s}("World"))