actor Main

  fun factorial(x: I32): I32 ? =>
    if x < 0 then error end

    if x == 0 then
      1
    else
      x * factorial(x - 1)?
    end

  new create(env: Env) =>
    try
      var x: I32 = factorial(3)?
      env.out.print(x.string())
    end