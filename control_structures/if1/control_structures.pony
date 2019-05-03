actor Main
  new create(env: Env) =>

    var x: U32 = 1
    var y: U32 = 2

    if x < y then
      env.out.print("y is bigger ... ")
    else
      env.out.print("y is NOT bigger ... ")
    end