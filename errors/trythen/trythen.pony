actor Main
  new create(env: Env) =>

    try
      env.out.print("1)")
      var b: Bool = false
      if not b then error end
      env.out.print("2)")
    else
      env.out.print("3)")
    then
      // This will always be executed:
      env.out.print("4)")
    end

    env.out.print("Ok ... ")

    // The else block is not needed ... 
    try
      env.out.print("#1")
      var b: Bool = false
      if not b then error end
      env.out.print("#2")
    then
      // This will always be executed:
      env.out.print("#3")
    end