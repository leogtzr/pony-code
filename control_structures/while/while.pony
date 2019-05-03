actor Main
  new create(env: Env) =>
    var x: U32 = 0
    while x > 10 do
      env.out.print(x.string())
      x = x + 1
    else          // the following code is executed only if the first try the condition is evaluated to false.
      env.out.print("end ... ")
    end
